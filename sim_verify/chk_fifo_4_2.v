`timescale 1ns / 1ps
// Self-checking bench for fifo_4_2.
// Spec (confirmed with the designer; header unit changed to BYTES on 2026-09-29):
//   a packet of L 16-bit words (= 2L bytes) is forwarded as three parts, one beat per cycle:
//     beat 1 : header    dout = {8'd0, 2*L}     dout_sop = 1, dout_eop = 0
//     beat 2 : checksum  dout = packet checksum dout_sop = 0, dout_eop = 0
//     beat 3+: the L data words                 dout_sop = 0, dout_eop = 1 on the last
//   The header carries the packet length in BYTES (2 per 16-bit word), so the 8-bit field is
//   good up to 127 words (254 bytes).  Use case under verification: input packets are at most
//   250 bytes = 125 words, so the header tops out at 250 and never wraps.  Lengths >127 words
//   wrap the field (128 words -> 0x00) and are characterised by probe_len*.v instead.
//   checksum = running fold over every din_vld beat, the sop and eop words included:
//     r = w0 ;  r = fold(r + wk)   with fold(S) = (S >= 0x10000) ? S - 0xFFFF : S
//     (a one's-complement style sum, i.e. sum mod 65535).
//     NOTE: the residue 65535 is carried as 0xFFFF, not folded again to 0x0000 - the
//     "0xFFFF then zeros" packet below pins that behaviour down on purpose.
//   nothing may appear on the output between packets, nor before the first packet.
// The checker compares every beat with dout_vld=1 against the expected queue, so both a
// phantom beat and a missing beat are caught, and the final beat count must match exactly.
module chk_fifo_4_2;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;
    parameter LMAX = 125;        // use case: 250 bytes / 2 bytes per word

    fifo_4_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    reg [15:0] eq [0:8191]; reg es [0:8191]; reg ee [0:8191];
    integer expn=0, rdi=0, beats=0, errors=0;

    task E(input [15:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: extra beat data=%h sop=%b eop=%b - no beat belongs here",
                                    $time, dout, dout_sop, dout_eop);
        end else begin
            if (dout     !== eq[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d data got %h expected %h", $time, beats, dout, eq[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
        end
        rdi=rdi+1;
    end

    // header field: packet length in bytes, low 8 bits
    function [15:0] hdr(input integer len);
        begin hdr = {8'd0, (len*2) % 256}; end
    endfunction

    // one's-complement style fold used by the spec
    function [15:0] fold(input [15:0] a, input [15:0] b);
        reg [16:0] s;
        begin
            s = {1'b0,a} + {1'b0,b};
            if (s[16]) s = s - 17'h0FFFF;
            fold = s[15:0];
        end
    endfunction

    // word k of a packet.  mode 0: base+k (counter)  1: all FFFF   2: FFFF then zeros
    //                           3: 8000/FFFF/0001 cycle   4: all zeros
    function [15:0] wgen(input integer mode, input integer k, input [15:0] base);
        begin
            case (mode)
                1: wgen = 16'hFFFF;
                2: wgen = (k==0) ? 16'hFFFF : 16'h0000;
                3: wgen = (k%3==0) ? 16'h8000 : ((k%3==1) ? 16'hFFFF : 16'h0001);
                4: wgen = 16'h0000;
                default: wgen = base + k;
            endcase
        end
    endfunction

    // One packet of 'len' words followed by 'gap' idle cycles (0 = next packet abuts).
    // Expected beats are derived from the stimulus only.
    task send_pkt(input integer len, input integer mode, input [15:0] base, input integer gap);
        integer k;
        reg [15:0] r;
        begin
            r = wgen(mode,0,base);
            for (k=1;k<len;k=k+1) r = fold(r, wgen(mode,k,base));
            E(hdr(len),          1'b1, 1'b0);           // header beat: length in bytes
            E(r,                 1'b0, 1'b0);           // checksum beat
            for (k=0;k<len;k=k+1) begin
                din = wgen(mode,k,base);
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                E(din, 1'b0, din_eop);                  // data beats: sop always 0
                @(posedge clk); #1;
            end
            if (gap>0) begin
                din_vld=0; din_sop=0; din_eop=0;
                #(CYCLE*gap);
            end
        end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("chk fifo_4_2: per packet header(bytes,sop) + checksum + data(eop), silence when idle");
        $display("  use case: packet <= 250 bytes = %0d words", LMAX);
        send_pkt(  1, 0, 16'h0011, 60);   // hdr 2 (2 bytes), sum 0011, one data beat
        send_pkt(  2, 0, 16'h0020, 60);   // hdr 4
        send_pkt(  3, 0, 16'h0030, 60);   // hdr 6
        send_pkt(  5, 0, 16'h0100, 60);   // hdr 10
        send_pkt(  4, 4, 16'h0000, 60);   // all-zero packet: sum 0000
        send_pkt(  4, 1, 16'hFFFF, 60);   // all-FFFF packet: exercises the carry fold
        send_pkt(  4, 2, 16'hFFFF, 60);   // FFFF then zeros -> sum stays FFFF (residue case)
        send_pkt(  6, 3, 16'h8000, 60);   // 8000/FFFF/0001 pattern: many carries
        send_pkt( 20, 0, 16'h0400, 60);   // longer counter packet
        send_pkt( 62, 0, 16'h0600, 60);   // 124 bytes
        send_pkt( 63, 0, 16'h0700, 60);   // 126 bytes: last length with an odd byte count
        send_pkt(LMAX, 0, 16'h0800, 80);  // 250 bytes: the use-case maximum
        send_pkt(  3, 0, 16'h0060,  0);   // abutting packets
        send_pkt(  2, 0, 16'h0090,  0);
        send_pkt(  1, 0, 16'h0070,  0);   // abutting single-word packets
        send_pkt(  1, 0, 16'h0071,  0);
        send_pkt(  1, 0, 16'h0072, 60);
        send_pkt(LMAX, 1, 16'h0A00, 60);  // 250 bytes, all-FFFF: worst case at the use-case max
        send_pkt(  9, 0, 16'h0B00, 60);   // must still be intact at the end
        #(CYCLE*1200);
        $display("--------------------------------------------------");
        $display("chk fifo_4_2 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT chk fifo_4_2: PASS (header in bytes + checksum + data per packet, nothing in between)");
        else
            $display("RESULT chk fifo_4_2: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
