`timescale 1ns / 1ps
// Minimal directed trace for fifo_1_7 : no back-pressure, two hand-built cases.
//   Case A: W0=mty0/mid, W1=mty1/eop   -> expect 3 bytes: 11(1,0) 22(0,0) 33(0,1)
//   Case B: W0=mty0/mid, W1=mty0/eop   -> expect 4 bytes: aa(1,0) aa(0,0) bb(0,0) bb(0,1)
// Only port signals are traced (hierarchical probes are unreliable in this simulator).
module dbg2_fifo_1_7;
    reg  clk=0, rst_n, b_rdy=1, din_vld=0, din_sop=0, din_eop=0, din_mty=0;
    reg  [15:0] din=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE = 20;

    fifo_1_7 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop),.b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    integer cyc=0;
    always @(posedge clk) begin
        cyc = cyc+1;
        if (rst_n) $display("cyc=%0d | in vld=%b d=%h s=%b e=%b m=%b | out vld=%b d=%h s=%b e=%b",
                            cyc, din_vld, din, din_sop, din_eop, din_mty,
                            dout_vld, dout, dout_sop, dout_eop);
    end

    task send_word(input [15:0] d, input s, input e, input m);
        begin
            din=d; din_sop=s; din_eop=e; din_mty=m; din_vld=1;
            @(posedge clk); #1;
            din_vld=0; din_sop=0; din_eop=0; din_mty=0;
        end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        b_rdy=1;
        #(CYCLE*10);
        $display("=== Case A: 1122(mty0,mid) 3344(mty1,eop) -> expect 11(1,0) 22(0,0) 33(0,1) ===");
        send_word(16'h1122,1,0,0);
        send_word(16'h3344,0,1,1);
        #(CYCLE*10);

        $display("=== Case B: aaaa(mty0,mid) bbbb(mty0,eop) -> expect aa(1,0) aa(0,0) bb(0,0) bb(0,1) ===");
        send_word(16'hAAAA,1,0,0);
        send_word(16'hBBBB,0,1,0);
        #(CYCLE*10);

        $display("=== Case C: cccc(mty1,eop) alone -> expect cc(1,1) ===");
        send_word(16'hCCCC,1,1,1);
        #(CYCLE*10);

        $finish;
    end
endmodule
