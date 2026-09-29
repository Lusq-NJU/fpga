`timescale 1ns / 1ps
// Trace probe for fifo_5_1: one packet, prints the id-FIFO interface every cycle so the
// exact packet-id value written/read can be seen.
module probe2_fifo_5_1;
    reg  clk=0, rst_n=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [31:0] din=0;
    reg  [1:0]  din_mty=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    fifo_5_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop));

    always #10 clk = ~clk;

    always @(posedge clk) if (rst_n)
        $display("t=%0t IN[vld=%b sop=%b eop=%b mty=%b din=%h] r_pkg_id=%h id_wr=%b id_din=%h id_rd=%b id_dout=%h id_empty=%b | OUT[vld=%b sop=%b eop=%b dout=%h]",
                 $time, din_vld,din_sop,din_eop,din_mty,din,
                 uut.r_pkg_id, uut.w_id_wr_en, uut.w_id_din, uut.w_id_rd_en, uut.w_id_dout, uut.w_id_empty,
                 dout_vld, dout_sop, dout_eop, dout);

    initial begin
        rst_n=0;
        repeat(10) @(posedge clk);
        rst_n=1;
        repeat(4) @(posedge clk);
        // one packet, 1 byte
        din=32'h44332211; din_sop=1; din_eop=1; din_mty=2'd3; din_vld=1;
        @(posedge clk); #1; din_vld=0;
        repeat(30) @(posedge clk);
        $finish;
    end
endmodule
