`timescale 1ns / 1ps
// Behaviour probe for fifo_3_3: four packets in a row, every output beat traced.
//   pkt1: 3 words, no err                                   -> expected to pass
//   pkt2: 3 words, din_err on the eop beat                  -> expected to be dropped
//   pkt3: 3 words, din_err on a MIDDLE beat only            -> does the DUT drop it?
//   pkt4: 2 words, no err                                   -> expected to pass
// Long idle windows between packets expose any spurious beat emitted from a held
// FWFT dout (the register stage samples w_err_dout even when it is stale).
module probe_fifo_3_3;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, din_err=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_3 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),.din_err(din_err),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0, shown=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (shown < 80) begin
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

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("probe fifo_3_3: pkt1 good(3) | pkt2 err@eop(3) | pkt3 err@middle(3) | pkt4 good(2)");
        W(16'h1000,1,0,0); W(16'h1001,0,0,0); W(16'h1002,0,1,0);   IDLE(40);
        W(16'h2000,1,0,0); W(16'h2001,0,0,0); W(16'h2002,0,1,1);   IDLE(40);
        W(16'h3000,1,0,0); W(16'h3001,0,0,1); W(16'h3002,0,1,0);   IDLE(40);
        W(16'h4000,1,0,0); W(16'h4001,0,1,0);                      IDLE(40);
        #(CYCLE*200);
        $display("--------------------------------------------------");
        $display("probe fifo_3_3 : beats seen = %0d", beats);
        $display("  5 beats = pkt1+pkt4 clean and pkt2+pkt3 dropped (err only sampled at eop)");
        $display("  more   = spurious beats from a held FWFT dout / stale err mark");
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
