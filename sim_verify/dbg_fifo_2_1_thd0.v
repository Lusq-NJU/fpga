`timescale 1ns / 1ps
// Edge-case probe for fifo_2_1: with cfg_thd=0 the read enable data_count>=cfg_thd is
// unconditionally true. Nothing is ever written here, so the FIFO stays empty; any
// dout_vld beat is a phantom (valid with no data behind it).
module dbg_fifo_2_1_thd0;
    reg  clk=0, rst_n, din_vld=0;
    reg  [7:0] din=0;
    reg  [9:0] cfg_thd=0;
    wire [7:0] dout;
    wire       dout_vld;

    parameter CYCLE = 20;

    fifo_2_1 uut(.clk(clk),.rst_n(rst_n),.cfg_thd(cfg_thd),.din(din),.din_vld(din_vld),
                 .dout(dout),.dout_vld(dout_vld));

    always #(CYCLE/2) clk = ~clk;

    integer cyc_vld=0;
    always @(posedge clk) if (rst_n && dout_vld) cyc_vld=cyc_vld+1;

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; cfg_thd=0;      // never write anything
        #(CYCLE*40);
        $display("cfg_thd=0, nothing ever written: dout_vld beats = %0d, last dout = %h", cyc_vld, dout);
        if (cyc_vld == 0) $display("RESULT thd0: OK (no phantom valid)");
        else $display("RESULT thd0: PHANTOM VALID - %0d dout_vld beats with an empty FIFO", cyc_vld);
        $finish;
    end
endmodule
