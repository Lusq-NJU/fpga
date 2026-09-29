`timescale 1ns / 1ps
// Self-checking bench for fifo_4_1.
// Spec (confirmed with the designer):
//   * each packet is forwarded as ONE header beat carrying the packet length in words
//     (dout = word count, dout_sop = 1, dout_eop = 0), followed by the packet's data
//     words with dout_sop = 0 throughout and dout_eop = 1 on the last one;
//   * nothing may appear on the output while no packet is being forwarded - in particular
//     the module must stay silent between reset and the first packet, and between packets.
// The checker compares every beat with dout_vld=1 against the expected queue, so a
// phantom beat (e.g. a bogus header emitted from an empty length FIFO) or a missing beat
// is caught, and the final beat count must match exactly.
module chk_fifo_4_1;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_4_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] eq [0:8191]; reg es [0:8191]; reg ee [0:8191];
    integer expn=0, rdi=0, beats=0, errors=0;

    task E(input [7:0] d, input s, input e);
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

    // One packet of 'len' words (base, base+1, ...) followed by 'gap' idle cycles
    // (0 = the next packet abuts).
    task send_pkt(input integer len, input [7:0] base, input integer gap);
        integer k;
        begin
            E(len[7:0], 1'b1, 1'b0);            // header beat: length in words
            for (k=0;k<len;k=k+1) begin
                din = base + k;
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                E(din, 1'b0, din_eop);          // data beats: sop is always 0
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
        $display("chk fifo_4_1: header beat (length, sop) + data beats per packet, silence when idle");
        send_pkt(  3, 8'h11, 60);   // header 3, then 11 22 33
        send_pkt(  1, 8'hA5, 60);   // header 1, then A5
        send_pkt(  2, 8'h20, 60);   // header 2, then 20 21
        send_pkt(  4, 8'h30,  0);   // two abutting packets
        send_pkt(  2, 8'h40, 60);
        send_pkt( 20, 8'h50, 60);   // longer packet
        send_pkt(255, 8'h01, 60);   // longest length the 8-bit header can carry
        send_pkt(  3, 8'h60, 60);   // must still be intact after the long one
        send_pkt(  1, 8'h70,  0);   // two abutting one-word packets
        send_pkt(  1, 8'h71, 60);
        #(CYCLE*400);
        $display("--------------------------------------------------");
        $display("chk fifo_4_1 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT chk fifo_4_1: PASS (header + data per packet, nothing in between)");
        else
            $display("RESULT chk fifo_4_1: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
