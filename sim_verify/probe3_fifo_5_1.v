`timescale 1ns / 1ps
// Stable-value trace: samples at negedge (mid-cycle), so every printed value is settled
// and free of active/NBA-region read races.
module probe3_fifo_5_1;
    reg  clk=0, rst_n=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [31:0] din=0;
    reg  [1:0]  din_mty=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    fifo_5_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop));

    always #10 clk = ~clk;

    always @(negedge clk) if (rst_n)
        $display("t=%0t NEG: in[vld=%b sop=%b eop=%b] r_pkg_id=%h id_wr=%b id_din=%h id_rd=%b id_dout=%h id_empty=%b | out[vld=%b sop=%b eop=%b dout=%h]",
                 $time, din_vld,din_sop,din_eop,
                 uut.r_pkg_id, uut.w_id_wr_en, uut.w_id_din, uut.w_id_rd_en, uut.w_id_dout, uut.w_id_empty,
                 dout_vld, dout_sop, dout_eop, dout);

    initial begin
        rst_n=0;
        repeat(10) @(posedge clk);
        rst_n=1;
        repeat(4) @(posedge clk);
        din=32'h44332211; din_sop=1; din_eop=1; din_mty=2'd3; din_vld=1;
        @(posedge clk); #1; din_vld=0;
        repeat(20) @(posedge clk);
        $finish;
    end
endmodule
