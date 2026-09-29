`timescale 1ns / 1ps
// Behaviour probe for fifo_3_2: one short packet, trace every output beat.
// Static reading of the source suggests the counter never reaches its terminal value,
// because end_cnt0 tests r_data_din[17] which is din_sop (the concatenation is
// {din_sop, din_eop, din[15:0]}), so the count is terminated on the packet's first word.
module probe_fifo_3_2;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        $display("  out beat %0d: data=%h sop=%b eop=%b  (t=%0t)", beats, dout, dout_sop, dout_eop, $time);
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*10);
        $display("probe fifo_3_2: sending 1 packet of 3 words: 1111(sop) 2222 3333(eop)");
        din=16'h1111; din_sop=1; din_eop=0; din_vld=1; @(posedge clk); #1;
        din=16'h2222; din_sop=0; din_eop=0; din_vld=1; @(posedge clk); #1;
        din=16'h3333; din_sop=0; din_eop=1; din_vld=1; @(posedge clk); #1;
        din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*400);
        $display("--------------------------------------------------");
        $display("probe fifo_3_2 : sent 3 words, output beats = %0d (expected 3)", beats);
        if (beats==0) $display("RESULT probe fifo_3_2: NOTHING CAME OUT");
        else          $display("RESULT probe fifo_3_2: %0d beat(s) emitted", beats);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
