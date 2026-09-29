`timescale 1ns / 1ps
// Packet-length limit probe for fifo_3_3 (fifo_3_4 has the same structure).
// A packet can only be read out once its eop mark has been written, so the whole packet
// has to fit in the 256-deep data FIFO. This probe measures what an over-long packet does.
//   pkt1: 256 words, no err   -> exactly at the limit
//   pkt2: 300 words, no err   -> over the limit
//   pkt3: 3 words,   no err   -> is the following packet still intact?
// NOTE: din_vld must be deasserted between packets - leaving it high re-writes the last
// word (and its eop) every cycle, which is a bench bug, not a DUT behaviour.
module probe_long_fifo_3_3;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, din_err=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_3 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),.din_err(din_err),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0, eops=0, sops=0;
    reg [15:0] first_d=0, last_d=0;

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (beats==1) first_d=dout;
        last_d=dout;
        if (dout_sop) sops=sops+1;
        if (dout_eop) eops=eops+1;
    end

    task W(input [15:0] d, input s, input e);
        begin din=d; din_sop=s; din_eop=e; din_err=0; din_vld=1; @(posedge clk); #1; end
    endtask

    task IDLE(input integer n);
        begin din_vld=0; din_sop=0; din_eop=0; din_err=0; #(CYCLE*n); end
    endtask

    task REPORT(input [8*24:1] tag, input integer n);
        begin
            $display("  %0s: sent %0d words -> beats=%0d sop=%0d eop=%0d first=%h last=%h",
                     tag, n, beats, sops, eops, first_d, last_d);
            beats=0; sops=0; eops=0;
        end
    endtask

    integer k;
    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("probe long fifo_3_3 : data FIFO is 256 words deep");

        for (k=0;k<256;k=k+1) W(16'h1000 + k, (k==0), (k==255));
        IDLE(400);  REPORT("pkt1  256 words", 256);

        for (k=0;k<300;k=k+1) W(16'h2000 + k, (k==0), (k==299));
        IDLE(600);  REPORT("pkt2  300 words", 300);

        W(16'h3000,1,0); W(16'h3001,0,0); W(16'h3002,0,1);
        IDLE(400);  REPORT("pkt3    3 words", 3);

        $display("--------------------------------------------------");
        $display("probe long fifo_3_3 : expected 256/1/1, 300/1/1, 3/1/1");
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
