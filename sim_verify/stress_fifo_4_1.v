`timescale 1ns / 1ps
// Randomized stress for fifo_4_1.
// Same spec as chk_fifo_4_1: one header beat per packet (length in words, sop=1) followed
// by the packet's data words (sop=0, eop on the last), and nothing at all in between.
// Random lengths 1..100 with a few short ones, random data (including all-zero packets so a
// stuck-at-zero output cannot pass), random 0..3 cycle gaps so abutting packets occur too.
module stress_fifo_4_1;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;
    parameter NPKT=20;

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
                if (errors<=8) $display("ERROR t=%0t: beat #%0d sop wrong", $time, beats); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d eop wrong", $time, beats); end
        end
        rdi=rdi+1;
    end

    task send_pkt(input integer len, input [7:0] base, input integer gap);
        integer k;
        begin
            E(len[7:0], 1'b1, 1'b0);
            for (k=0;k<len;k=k+1) begin
                din = base + k;
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                E(din, 1'b0, din_eop);
                @(posedge clk); #1;
            end
            if (gap>0) begin
                din_vld=0; din_sop=0; din_eop=0;
                #(CYCLE*gap);
            end
        end
    endtask

    integer seed=4242;
    integer pkt, len, r, gap;
    reg [7:0] base;

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("stress fifo_4_1: %0d random packets, random lengths, random gaps", NPKT);
        for (pkt=0;pkt<NPKT;pkt=pkt+1) begin
            r    = {$random(seed)} % 100;
            if      (r < 50) len = 1  + ({$random(seed)} % 4);    // 1..4
            else if (r < 90) len = 1  + ({$random(seed)} % 40);   // 1..40
            else             len = 60 + ({$random(seed)} % 41);   // 60..100
            if      (({$random(seed)} % 4) == 0) base = 8'h00;    // all-zero packets
            else                                 base = {$random(seed)} % 8'hE0 + 8'h10;
            gap  = {$random(seed)} % 4;
            if (pkt == NPKT-1) gap = 5;
            send_pkt(len, base, gap);
        end
        #(CYCLE*600);
        $display("--------------------------------------------------");
        $display("stress fifo_4_1 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT stress fifo_4_1: PASS (%0d beats, header+data order/values clean)", beats);
        else
            $display("RESULT stress fifo_4_1: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
