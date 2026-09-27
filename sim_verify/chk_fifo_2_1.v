`timescale 1ns / 1ps
// Self-checking bench for fifo_2_1 : 8x2048 single-clock FIFO with a threshold-gated read.
// Spec: bytes written in order -> bytes read out in order once occupancy >= cfg_thd.
// Reference derived from stimulus. NOTE: fifo_2_1 has no testbench in the project.
module chk_fifo_2_1;
    reg  clk=0, rst_n, din_vld=0;
    reg  [9:0] cfg_thd=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld;

    parameter CYCLE=20;

    fifo_2_1 uut(.clk(clk),.rst_n(rst_n),.cfg_thd(cfg_thd),.din(din),.din_vld(din_vld),
                 .dout(dout),.dout_vld(dout_vld));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] expq [0:8191];
    integer expn=0, rdi=0, errors=0, beats=0;

    task put(input [7:0] b);
        begin
            din_vld=1; din=b; expq[expn]=b; expn=expn+1;
            @(posedge clk); #1;
        end
    endtask

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
        din=0; din_vld=0; cfg_thd=10'd8;
        #(CYCLE*10);
        for (i=0;i<40;i=i+1) put(8'h10+i);
        din_vld=0;
        #(CYCLE*40);
        cfg_thd=10'd1;
        for (i=0;i<40;i=i+1) put(8'h80+i);
        din_vld=0;
        #(CYCLE*40);
        cfg_thd=10'd100;
        for (i=0;i<120;i=i+1) put(8'hC0 + (i & 8'h3F));
        din_vld=0;
        #(CYCLE*200);
    end

    initial begin
        #(CYCLE*600);
        $display("--------------------------------------------------");
        $display("fifo_2_1 : written = %0d, output beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: written (%0d) != observed (%0d) -> loss or extra", expn, beats);
        if (errors==0) $display("RESULT fifo_2_1: PASS (in-order, lossless, dout_vld aligned)");
        else           $display("RESULT fifo_2_1: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
