`timescale 1ns / 1ps
// Diagnostic probe for fifo_5_1 (no checker): feeds three packets (1, 5 and 8 data
// bytes) and prints every output beat plus a heartbeat, so whatever the module emits
// - including X bytes and a stalled state machine - is visible.
module probe_fifo_5_1;
    reg  clk=0, rst_n=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [31:0] din=0;
    reg  [1:0]  din_mty=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    integer nbeats=0, cyc=0;

    fifo_5_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop));

    always #10 clk = ~clk;

    always @(posedge clk) if (rst_n) begin
        cyc = cyc+1;
        if (dout_vld) begin
            nbeats = nbeats+1;
            $display("t=%0t  BEAT %0d: dout=%h sop=%b eop=%b", $time, nbeats, dout, dout_sop, dout_eop);
        end
        else if (cyc % 100 == 0)
            $display("t=%0t  (idle heartbeat, beats so far %0d)", $time, nbeats);
    end

    // one 32-bit word; driven on the FALLING edge so the stimulus never races the DUT's
    // sampling edge, and din_vld is dropped half a cycle later so the next word is a
    // fresh beat (driving on posedge here re-samples the word twice - measured: it made
    // r_pkg_id advance an extra time and every packet id came out +1)
    task send_word(input [31:0] d, input s, input e, input [1:0] m);
        begin
            @(negedge clk);
            din=d; din_sop=s; din_eop=e; din_mty=m; din_vld=1;
            @(posedge clk);
            @(negedge clk);
            din_vld=0;
        end
    endtask

    initial begin
        rst_n=0;
        repeat(10) @(posedge clk);
        @(negedge clk); rst_n=1;
        repeat(3) @(posedge clk);

        $display("--- pkt1: 1 byte  (word 44332211, mty=3) ---");
        send_word(32'h44332211, 1'b1, 1'b1, 2'd3);
        repeat(20) @(posedge clk);

        $display("--- pkt2: 5 bytes (word0 44332211 mty=0, word1 88776655 mty=3) ---");
        send_word(32'h44332211, 1'b1, 1'b0, 2'd0);
        send_word(32'h88776655, 1'b0, 1'b1, 2'd3);
        repeat(30) @(posedge clk);

        $display("--- pkt3: 8 bytes (two full words) ---");
        send_word(32'h44332211, 1'b1, 1'b0, 2'd0);
        send_word(32'h88776655, 1'b0, 1'b1, 2'd0);
        repeat(60) @(posedge clk);

        $display("TOTAL beats=%0d  (expected: 3x(6 start + 6 end) + 14 data = 50 if both heads are 6 bytes)",
                 nbeats);
        $finish;
    end
endmodule
