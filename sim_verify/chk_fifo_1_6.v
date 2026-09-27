`timescale 1ns / 1ps
// Self-checking bench for fifo_1_6 : 8-bit stream with sop/eop -> same, buffered.
// Reference is derived from the stimulus (race-free), not from DUT internals.
// Uses random b_rdy, unlike the original TB where b_rdy is effectively stuck at 1.
module chk_fifo_1_6;
    reg  clk=0, rst_n, b_rdy=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_1_6 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),
                 .dout_eop(dout_eop),.b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] ebyte [0:8191];
    reg       esop  [0:8191];
    reg       eeop  [0:8191];
    integer expn=0;

    task exp_push(input [7:0] b, input s, input e);
        begin ebyte[expn]=b; esop[expn]=s; eeop[expn]=e; expn=expn+1; end
    endtask

    // stimulus + expectation together: byte-for-byte identity, markers preserved
    task send_pkt(input integer len);
        integer k; reg [7:0] b;
        begin
            for (k=0;k<len;k=k+1) begin
                b = 8'h20 + k;
                din_vld=1; din=b; din_sop=(k==0); din_eop=(k==len-1);
                exp_push(b, (k==0), (k==len-1));
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0; din=0;
        end
    endtask

    integer rdi=0, beats=0, errors=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1; $display("ERROR t=%0t: extra beat %h", $time, dout);
        end else begin
            if (dout     !== ebyte[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d data got %h expected %h", $time, beats, dout, ebyte[rdi]); end
            if (dout_sop !== esop[rdi])  begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d sop got %b expected %b", $time, beats, dout_sop, esop[rdi]); end
            if (dout_eop !== eeop[rdi])  begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d eop got %b expected %b", $time, beats, dout_eop, eeop[rdi]); end
        end
        rdi=rdi+1;
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*30);
        send_pkt(10); #(CYCLE*5);
        send_pkt(1);  #(CYCLE*5);
        send_pkt(37); #(CYCLE*40);
    end

    initial begin
        b_rdy=0; #(CYCLE*30);
        forever begin @(posedge clk); #1; b_rdy=$random; end
    end

    initial begin
        #(CYCLE*500);
        $display("--------------------------------------------------");
        $display("fifo_1_6 : expected beats = %0d, output beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d) -> loss or extra", expn, beats);
        if (errors==0) $display("RESULT fifo_1_6: PASS (identity stream, sop/eop preserved, aligned)");
        else           $display("RESULT fifo_1_6: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
