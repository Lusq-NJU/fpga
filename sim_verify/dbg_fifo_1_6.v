`timescale 1ns / 1ps
// Debug probe: dump the raw input stream, the DUT's FIFO writes, and the output beats.
module dbg_fifo_1_6;
    reg  clk=0, rst_n, b_rdy=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;
    integer i;

    fifo_1_6 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),
                 .dout_eop(dout_eop),.b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    integer nin=0, nwr=0, nout=0;
    always @(posedge clk) if (rst_n && din_vld) begin
        if (nin<6) $display("  IN  t=%0t d=%h sop=%b eop=%b", $time, din, din_sop, din_eop);
        nin=nin+1;
    end
    always @(posedge clk) if (rst_n && uut.wr_en) begin
        if (nwr<6) $display("  WR  t=%0t din=%h (sop=%b eop=%b)", $time, uut.data_in[7:0], uut.data_in[9], uut.data_in[8]);
        nwr=nwr+1;
    end
    always @(posedge clk) if (rst_n && dout_vld) begin
        if (nout<8) $display("  OUT t=%0t d=%h sop=%b eop=%b", $time, dout, dout_sop, dout_eop);
        nout=nout+1;
    end

    task send_pkt(input integer len);
        integer k;
        begin
            for (k=0;k<len;k=k+1) begin
                din_vld=1; din=8'h10+k; din_sop=(k==0); din_eop=(k==len-1);
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0; din=0;
        end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end
    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*30);
        send_pkt(4); #(CYCLE*5);
        send_pkt(3); #(CYCLE*20);
    end
    initial begin b_rdy=0; #(CYCLE*30); forever begin @(posedge clk); #1; b_rdy=1; end end

    initial begin
        #(CYCLE*120);
        $display("SUMMARY in=%0d wr=%0d out=%0d", nin, nwr, nout);
        $finish;
    end
endmodule
