`timescale 1ns / 1ps
// Length-byte limit probe for fifo_4_1 (run against the fix candidate).
// The header carries cnt0+1, and cnt0 is 8 bits, so a 255-word packet is the longest one
// whose length byte is meaningful. This sends a 256-word packet and prints what the header
// beat carries.
module probe_len_fifo_4_1;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_4_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0, hdr_seen=0, data_beats=0, eops=0;
    reg [7:0] hdr=0;

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (dout_sop) begin hdr_seen=hdr_seen+1; hdr=dout; end
        else          data_beats=data_beats+1;
        if (dout_eop) eops=eops+1;
    end

    task W(input [7:0] d, input s, input e);
        begin din=d; din_sop=s; din_eop=e; din_vld=1; @(posedge clk); #1; end
    endtask

    integer k;
    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("probe len fifo_4_1: 255-word packet (header must be 255) then 256-word packet");
        for (k=0;k<255;k=k+1) W(8'h40 + k, (k==0), (k==254));
        din_vld=0; din_sop=0; din_eop=0; #(CYCLE*400);
        $display("  255 words -> header=%0d(%h) data_beats=%0d eops=%0d beats=%0d",
                 hdr, hdr, data_beats, eops, beats);
        beats=0; hdr_seen=0; data_beats=0; eops=0;

        for (k=0;k<256;k=k+1) W(8'h40 + k, (k==0), (k==255));
        din_vld=0; din_sop=0; din_eop=0; #(CYCLE*400);
        $display("  256 words -> header=%0d(%h) data_beats=%0d eops=%0d beats=%0d",
                 hdr, hdr, data_beats, eops, beats);

        $display("--------------------------------------------------");
        $finish;
    end
endmodule
