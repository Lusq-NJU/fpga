`timescale 1ns / 1ps
// Behaviour probe for fifo_3_1: one short packet, b_rdy held high, trace every output beat.
module probe_fifo_3_1;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, b_rdy=1;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop),
                 .b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        $display("  out beat %0d: data=%h sop=%b eop=%b  (t=%0t)", beats, dout, dout_sop, dout_eop, $time);
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0; b_rdy=1;
        #(CYCLE*10);
        $display("probe fifo_3_1: sending 1 packet of 3 bytes: 11(sop) 22 33(eop)");
        din=8'h11; din_sop=1; din_eop=0; din_vld=1; @(posedge clk); #1;
        din=8'h22; din_sop=0; din_eop=0; din_vld=1; @(posedge clk); #1;
        din=8'h33; din_sop=0; din_eop=1; din_vld=1; @(posedge clk); #1;
        din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*200);
        $display("--------------------------------------------------");
        $display("probe fifo_3_1 : sent 3 bytes, output beats = %0d (expected 3)", beats);
        if (beats==3) $display("RESULT probe fifo_3_1: all 3 bytes emitted");
        else          $display("RESULT probe fifo_3_1: %0d beat(s) emitted", beats);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
