`timescale 1ns / 1ps
// Self-checking bench for fifo_2_1 : 8x2048 single-clock FIFO with a threshold-gated read.
// Writes ~900 bytes across phases with different cfg_thd values, so occupancy builds up
// to different depths, then drops cfg_thd to 1 and requires the queue to drain fully:
// every written byte must come back, in order, with dout_vld aligned to dout.
// The original chk_fifo_2_1 only checks ordering of whatever happens to come out, so it
// cannot detect loss; this one requires beats == written at the end.
module stress_fifo_2_1;
    reg  clk=0, rst_n, din_vld=0;
    reg  [7:0] din=0;
    reg  [9:0] cfg_thd=1;
    wire [7:0] dout;
    wire       dout_vld;

    parameter CYCLE = 20;

    fifo_2_1 uut(.clk(clk),.rst_n(rst_n),.cfg_thd(cfg_thd),.din(din),.din_vld(din_vld),
                 .dout(dout),.dout_vld(dout_vld));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] expq [0:16383];
    integer   expn=0, rdi=0, beats=0, errors=0;

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: extra valid beat, dout=%h", $time, dout);
        end else if (dout !== expq[rdi]) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: byte #%0d got %h expected %h", $time, beats, dout, expq[rdi]);
        end
        rdi=rdi+1;
    end

    task put(input [7:0] b);
        begin
            din_vld=1; din=b; expq[expn]=b; expn=expn+1;
            @(posedge clk); #1;
        end
    endtask

    integer i, gap, drain=0;
    initial begin
        rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1;
        din=0; din_vld=0; cfg_thd=1;
        #(CYCLE*10);

        // phase 1: threshold 1 -> FIFO stays near empty, byte-by-byte flow-through
        cfg_thd = 1;
        for (i=0;i<300;i=i+1) begin
            put(8'h10 + (i & 8'h7F));
            din_vld=0;
            gap = {$random} % 3;
            while (gap>0) begin @(posedge clk); #1; gap=gap-1; end
        end

        // phase 2: threshold 64, back-to-back writes -> occupancy settles around 64
        cfg_thd = 64;
        for (i=0;i<300;i=i+1) put(8'h80 + (i & 8'h7F));
        din_vld=0;
        #(CYCLE*20);

        // phase 3: threshold 200 -> deeper occupancy
        cfg_thd = 200;
        for (i=0;i<300;i=i+1) put(8'h40 + (i & 8'h7F));
        din_vld=0;
        #(CYCLE*20);

        // phase 3b: maximum threshold (1023) -> occupancy climbs to ~1023 of the 2048
        // entries and holds there; exercises the deep-occupancy path
        cfg_thd = 1023;
        for (i=0;i<1500;i=i+1) put(8'hC0 + (i & 8'h3F));
        din_vld=0;
        #(CYCLE*20);

        // phase 4: drop the threshold to 1 -> the queue must drain completely
        cfg_thd = 1;
        drain=0;
        while ((beats < expn) && (drain < 200000)) begin
            @(posedge clk); #1; drain=drain+1;
        end
        din_vld=0;
        #(CYCLE*50);

        $display("--------------------------------------------------");
        $display("stress fifo_2_1 : written=%0d, observed=%0d", expn, beats);
        if (expn!=beats) $display("NOTE: %0d byte(s) never came back (loss or stuck below threshold)", expn-beats);
        if (errors==0 && expn==beats)
            $display("RESULT stress fifo_2_1: PASS (in-order, lossless, dout_vld aligned)");
        else
            $display("RESULT stress fifo_2_1: FAIL (%0d error(s), %0d/%0d bytes)", errors, beats, expn);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
