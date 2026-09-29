`timescale 1ns / 1ps
// Beat-by-beat trace for a single 256-word packet on fifo_3_3 (fixed candidate).
// Words are sent as din=k, sop on k=0, eop on k=255, so every beat's data identifies the
// word it came from: a correct run is 0,1,2,...,255 with one sop and one eop.
module probe_trace_fifo_3_3;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, din_err=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_3 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),.din_err(din_err),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    integer beats=0, eops=0, sops=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (beats<=420)
            $display("  beat %0d: data=%0d sop=%b eop=%b t=%0t", beats, dout, dout_sop, dout_eop, $time);
        if (dout_sop) sops=sops+1;
        if (dout_eop) eops=eops+1;
    end

    task W(input [15:0] d, input s, input e);
        begin din=d; din_sop=s; din_eop=e; din_err=0; din_vld=1; @(posedge clk); #1; end
    endtask

    integer k;
    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("probe trace fifo_3_3: one 256-word packet, din = 0..255, sop@0 eop@255");
        for (k=0;k<256;k=k+1) W(k[15:0], (k==0), (k==255));
        din_vld=0; din_sop=0; din_eop=0; din_err=0;
        #(CYCLE*600);
        $display("--------------------------------------------------");
        $display("probe trace fifo_3_3: beats=%0d sop=%0d eop=%0d (correct = 256 / 1 / 1)", beats, sops, eops);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
