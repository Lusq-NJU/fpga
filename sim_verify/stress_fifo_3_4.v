`timescale 1ns / 1ps
// Randomized stress for fifo_3_4.
// Same spec as chk_fifo_3_4: forwarded iff the packet's 16-bit words wrap-sum to 0 and
// din_err is 0 on the eop beat; dropped entirely otherwise; no beat between packets.
// Random lengths 1..40, random bases, ~40% of the packets are made sum-1 (bad), random
// din_err placement and random 0..3 cycle gaps.
module stress_fifo_3_4;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0, din_err=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;
    parameter NPKT=30;

    fifo_3_4 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),.din_err(din_err),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    reg [15:0] eq [0:8191]; reg es [0:8191]; reg ee [0:8191];
    integer expn=0, rdi=0, beats=0, errors=0;

    task E(input [15:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: extra beat data=%h sop=%b eop=%b - no packet word belongs here",
                                    $time, dout, dout_sop, dout_eop);
        end else begin
            if (dout     !== eq[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d data got %h expected %h", $time, beats, dout, eq[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d sop wrong", $time, beats); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d eop wrong", $time, beats); end
        end
        rdi=rdi+1;
    end

    task send_pkt(input integer len, input [15:0] base, input integer err_pos, input integer badsum, input integer gap);
        integer k, s;
        reg [15:0] w;
        begin
            s = 0;
            for (k=0;k<len-1;k=k+1) s = s + (base + k);
            for (k=0;k<len;k=k+1) begin
                if (k==len-1) w = (16'h0000 - s) + badsum;
                else          w = base + k;
                din = w;
                din_sop = (k==0); din_eop = (k==len-1); din_err = (k==err_pos); din_vld = 1;
                if (err_pos != len-1 && badsum == 0) E(din, din_sop, din_eop);
                @(posedge clk); #1;
            end
            if (gap>0) begin
                din_vld=0; din_sop=0; din_eop=0; din_err=0;
                #(CYCLE*gap);
            end
        end
    endtask

    integer seed=9876;
    integer pkt, len, r, err_pos, badsum, gap;
    reg [15:0] base;

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("stress fifo_3_4: %0d random packets, random sum/err, random gaps", NPKT);
        for (pkt=0;pkt<NPKT;pkt=pkt+1) begin
            len  = 1 + ({$random(seed)} % 40);
            base = ((pkt+1) << 8) + ({$random(seed)} % 64);
            badsum = (({$random(seed)} % 100) < 40) ? 1 : 0;
            r    = {$random(seed)} % 100;
            if (r < 40)                  err_pos = len-1;
            else if (r < 55 && len > 1)  err_pos = {$random(seed)} % (len-1);
            else                         err_pos = -1;
            gap  = {$random(seed)} % 4;
            if (pkt == NPKT-1) gap = 5;
            send_pkt(len, base, err_pos, badsum, gap);
        end
        #(CYCLE*400);
        $display("--------------------------------------------------");
        $display("stress fifo_3_4 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT stress fifo_3_4: PASS (%0d beats, order/sop/eop/no-extra all clean)", beats);
        else
            $display("RESULT stress fifo_3_4: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
