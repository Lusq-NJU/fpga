`timescale 1ns / 1ps
// Self-checking bench for fifo_2_2 : FIFO with watermark hysteresis burst readout.
// Spec: din_vld bytes in order -> same bytes out in order; reads start when
// occupancy > cfg_thd_1 and stop when occupancy < cfg_thd_0.
module chk_fifo_2_2;
    reg  clk=0, rst_n, din_vld=0;
    reg  [9:0] cfg_thd_0=20, cfg_thd_1=30;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld;

    parameter CYCLE=20;

    fifo_2_2 uut(.clk(clk),.rst_n(rst_n),.cfg_thd_0(cfg_thd_0),.cfg_thd_1(cfg_thd_1),
                 .din(din),.din_vld(din_vld),.dout(dout),.dout_vld(dout_vld));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] expq [0:8191];
    integer expn=0, rdi=0, errors=0, beats=0;

    always @(posedge clk) if (rst_n && din_vld) begin expq[expn]=din; expn=expn+1; end

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1; $display("ERROR t=%0t: extra byte %h", $time, dout);
        end else if (dout !== expq[rdi]) begin
            errors=errors+1;
            $display("ERROR t=%0t: byte #%0d got %h expected %h", $time, beats, dout, expq[rdi]);
        end
        rdi=rdi+1;
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    integer i;
    initial begin
        din=0; din_vld=0;
        #(CYCLE*10);
        // burst 1: 100 bytes contiguous, then idle (drains via hysteresis)
        for (i=0;i<100;i=i+1) begin din_vld=1; din=8'h10+(i&8'h7F); @(posedge clk); #1; end
        din_vld=0; din=0;
        #(CYCLE*200);
        // burst 2: patchy valid (50% random), forces partial fills
        for (i=0;i<300;i=i+1) begin
            din_vld=$random; din=$random; @(posedge clk); #1;
        end
        din_vld=0; din=0;
        #(CYCLE*300);
    end

    initial begin
        #(CYCLE*1200);
        $display("--------------------------------------------------");
        $display("fifo_2_2 : written = %0d, output beats = %0d", expn, beats);
        $display("fifo_2_2 : occupancy still inside FIFO at end = %0d", uut.data_count);
        $display("fifo_2_2 : cfg_thd_0=%0d cfg_thd_1=%0d", cfg_thd_0, cfg_thd_1);
        if (expn!=beats) $display("NOTE: written (%0d) != observed (%0d) -> bytes stranded below the high watermark", expn, beats);
        if (errors==0) $display("RESULT fifo_2_2: PASS (in-order, lossless, hysteresis readout)");
        else           $display("RESULT fifo_2_2: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
