`timescale 1ns / 1ps
// Self-checking bench for fifo_3_4.
// Spec (confirmed with the designer):
//   * a packet is forwarded whole when its din_err is 0 on the eop beat AND the sum of its
//     16-bit words, wrapped to 16 bits, is 0 (i.e. the packet's data sums to 0 mod 2^16);
//   * otherwise the packet is dropped ENTIRELY - not a single beat may appear for it;
//   * din_err on a beat other than eop is ignored;
//   * between packets dout_vld must stay low.
// The two marked cases below discriminate a 16-bit wrap-around check from a wider
// accumulator that can only reach zero on an exact 2^20 multiple.
module chk_fifo_3_4;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, din_err=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_4 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),.din_err(din_err),
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
            if (errors<=8) $display("ERROR t=%0t: extra beat data=%h sop=%b eop=%b - no packet word belongs here",
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

    // One packet of 'len' words: base, base+1, ... for all but the last word; the last word
    // is picked so the packet's 16-bit wrapped sum is 0 (badsum=0) or 1 (badsum=1).
    // Beat 'err_pos' carries din_err=1 (-1 = none). 'gap' idle cycles follow (0 = abutting).
    task send_pkt(input integer len, input [15:0] base, input integer err_pos, input integer badsum, input integer gap);
        integer k, s;
        reg [15:0] w;
        begin
            s = 0;
            for (k=0;k<len-1;k=k+1) s = s + (base + k);
            for (k=0;k<len;k=k+1) begin
                if (k==len-1) w = (16'h0000 - s) + badsum;
                else          w = base + k;
                din = w;
                din_sop = (k==0); din_eop = (k==len-1); din_err = (k==err_pos); din_vld = 1;
                if (err_pos != len-1 && badsum == 0) E(din, din_sop, din_eop);
                @(posedge clk); #1;
            end
            if (gap>0) begin
                din_vld=0; din_sop=0; din_eop=0; din_err=0;
                #(CYCLE*gap);
            end
        end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("chk fifo_3_4: forwarded iff 16-bit wrap sum is 0 and no err on eop");
        send_pkt( 3, 16'h0001, -1, 0, 40);  // 0001 0002 FFFD, sum 0x10000 -> wrap 0        : PASS
        send_pkt( 3, 16'h1000, -1, 0, 40);  // 1000 1001 DFFF, sum 0x20000 -> wrap 0        : PASS
        send_pkt( 3, 16'h2000, -1, 1, 40);  // same shape but sum = 1                      : drop
        send_pkt( 3, 16'h3000,  0, 0, 40);  // sum 0, din_err on the FIRST beat            : err ignored -> PASS
        send_pkt( 3, 16'h4000,  2, 0, 40);  // sum 0, din_err on eop                       : drop
        send_pkt( 1, 16'h0000, -1, 0, 40);  // one word 0000, sum 0                        : PASS
        send_pkt( 1, 16'h0000,  0, 0, 40);  // one word, sum 0, din_err on eop             : drop
        send_pkt( 5, 16'h5000, -1, 0,  0);  // three abutting packets: PASS
        send_pkt( 5, 16'h6000, -1, 1,  0);  //                        drop
        send_pkt( 4, 16'h7000, -1, 0, 40);  //                        PASS
        send_pkt(20, 16'h8000, -1, 0, 40);  // longer packet, sum 0                        : PASS
        send_pkt(20, 16'h9000, -1, 1, 40);  // longer packet, sum 1                        : drop
        send_pkt( 2, 16'hA000, -1, 0, 40);  // two-word packet, sum 0                      : PASS
        send_pkt( 3, 16'hB000, -1, 0, 40);  // must still be intact after all the drops    : PASS
        #(CYCLE*300);
        $display("--------------------------------------------------");
        $display("chk fifo_3_4 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT chk fifo_3_4: PASS (sum-0 err-free packets whole, others dropped)");
        else
            $display("RESULT chk fifo_3_4: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
