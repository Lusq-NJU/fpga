`timescale 1ns / 1ps
// Behaviour probe for fifo_4_1: three packets, every output beat traced with its time.
//   pkt1: 3 words 11 22 33        pkt2: 2 words 44 55        pkt3: 1 word 66
// Long idle windows after each packet show whether anything appears when the input is quiet.
module probe_fifo_4_1;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_4_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0, shown=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (shown < 60) begin
            shown=shown+1;
            $display("  out beat %0d: data=%h sop=%b eop=%b (t=%0t)", beats, dout, dout_sop, dout_eop, $time);
        end
    end

    task W(input [7:0] d, input s, input e);
        begin din=d; din_sop=s; din_eop=e; din_vld=1; @(posedge clk); #1; end
    endtask

    task IDLE(input integer n);
        begin din_vld=0; din_sop=0; din_eop=0; #(CYCLE*n); end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("probe fifo_4_1: idle window before any packet (watch for a beat here)");
        IDLE(60);
        $display("  beats so far = %0d (should be 0)", beats);

        $display("probe fifo_4_1 pkt1: 11 22 33");
        W(8'h11,1,0); W(8'h22,0,0); W(8'h33,0,1);   IDLE(200);
        $display("  total beats so far = %0d", beats);

        $display("probe fifo_4_1 pkt2: 44 55");
        W(8'h44,1,0); W(8'h55,0,1);                 IDLE(200);
        $display("  total beats so far = %0d", beats);

        $display("probe fifo_4_1 pkt3: 66");
        W(8'h66,1,1);                               IDLE(200);
        $display("  total beats so far = %0d", beats);

        $display("--------------------------------------------------");
        $display("probe fifo_4_1 : sent 3+2+1 = 6 data words in 3 packets, beats seen = %0d", beats);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
