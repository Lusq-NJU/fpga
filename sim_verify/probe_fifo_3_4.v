`timescale 1ns / 1ps
// Behaviour probe for fifo_3_4. The error mark written at eop is
//     w_err_din = (r_din_err==0) && (r_check==0)
// with r_check a 20-bit accumulator of the packet's 16-bit words. This probe sends
// packets whose true sums discriminate between the two readings of "check sum == 0":
//   pkt1: 3 words 0x0001 0x0002 0xFFFD  true sum = 65536  ( == 0 mod 2^16, != 0 in 20 bits )
//   pkt2: 64 words of 0x4000             true sum = 2^20   ( != 0 mod 2^16, == 0 in 20 bits )
//   pkt3: 3 words 0x0000 0x0000 0x0000   true sum = 0      ( good under both readings )
//   pkt4: all-zero words, din_err on eop                    ( error bit wins )
//   pkt5: 3 words 0x0010 0x0020 0x0030   true sum != 0     ( bad under both readings )
module probe_fifo_3_4;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, din_err=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_4 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),.din_err(din_err),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0, shown=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (shown < 400) begin
            shown=shown+1;
            $display("  out beat %0d: data=%h sop=%b eop=%b (t=%0t)", beats, dout, dout_sop, dout_eop, $time);
        end
    end

    task W(input [15:0] d, input s, input e, input err);
        begin din=d; din_sop=s; din_eop=e; din_err=err; din_vld=1; @(posedge clk); #1; end
    endtask

    task IDLE(input integer n);
        begin din_vld=0; din_sop=0; din_eop=0; din_err=0; #(CYCLE*n); end
    endtask

    integer k;
    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);

        $display("probe fifo_3_4 pkt1: 0x0001 0x0002 0xFFFD  (mod-2^16 sum = 0, 20-bit sum = 65536)");
        W(16'h0001,1,0,0); W(16'h0002,0,0,0); W(16'hFFFD,0,1,0);   IDLE(40);

        $display("probe fifo_3_4 pkt2: 64 x 0x4000 (mod-2^16 sum != 0, 20-bit sum = 0)");
        for (k=0;k<64;k=k+1)
            W(16'h4000, (k==0), (k==63), 0);
        IDLE(120);

        $display("probe fifo_3_4 pkt3: 0x0000 0x0000 0x0000  (sum = 0 both ways)");
        W(16'h0000,1,0,0); W(16'h0000,0,0,0); W(16'h0000,0,1,0);   IDLE(40);

        $display("probe fifo_3_4 pkt4: 0x0000 0x0000 0x0000 with din_err on eop (sum = 0 but err)");
        W(16'h0000,1,0,0); W(16'h0000,0,0,0); W(16'h0000,0,1,1);   IDLE(40);

        $display("probe fifo_3_4 pkt5: 0x0010 0x0020 0x0030  (sum != 0 both ways)");
        W(16'h0010,1,0,0); W(16'h0020,0,0,0); W(16'h0030,0,1,0);   IDLE(40);

        #(CYCLE*400);
        $display("--------------------------------------------------");
        $display("probe fifo_3_4 : beats seen = %0d", beats);
        $display("  pkt1 visible => 20-bit accumulator reading (2^16 wrap NOT detected)");
        $display("  pkt2 visible => 20-bit accumulator reading; pkt2 hidden => mod-2^16 reading");
        $display("  pkt3 only visible (3 beats) => both non-zero-sum cases dropped");
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
