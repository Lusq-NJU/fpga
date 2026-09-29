`timescale 1ns / 1ps
// Trace probe for fifo_4_2: is the output really silent before the first packet and
// between packets?  Sends three short packets and prints every output beat.
module probe_fifo_4_2;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_4_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0, beats_before_first=0, sent_any=0;
    integer idle_se=0, idle_se_first=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats = beats+1;
        if (!sent_any) beats_before_first = beats_before_first+1;
        $display("t=%0t  beat %0d: dout=%h vld=%b sop=%b eop=%b", $time, beats, dout, dout_vld, dout_sop, dout_eop);
    end
    // sop/eop left asserted while dout_vld is low (downstream must gate on vld)
    always @(posedge clk) if (rst_n && !dout_vld && (dout_sop || dout_eop)) begin
        idle_se = idle_se+1;
        if (idle_se==1)
            $display("t=%0t  first idle cycle with vld=0 but sop=%b eop=%b (dout=%h)", $time, dout_sop, dout_eop, dout);
    end

    task send_pkt(input integer len, input [15:0] base, input integer gap);
        integer k;
        begin
            sent_any = 1;
            $display("t=%0t  -- send pkt len=%0d base=%h", $time, len, base);
            for (k=0;k<len;k=k+1) begin
                din = base + k;
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0;
            if (gap>0) #(CYCLE*gap);
        end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("probe fifo_4_2: trace of every output beat");
        send_pkt(3, 16'h0011, 10);   // header 3, checksum 0036, 0011 0012 0013
        send_pkt(1, 16'hA5A5, 10);   // header 1, checksum A5A5
        send_pkt(5, 16'h0020, 10);   // header 5
        #(CYCLE*200);
        $display("--------------------------------------------------");
        $display("probe fifo_4_2: %0d beats total, %0d of them before the first packet was sent",
                 beats, beats_before_first);
        $display("probe fifo_4_2: %0d idle cycles (vld=0) with sop or eop still asserted", idle_se);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
