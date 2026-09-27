`timescale 1ns / 1ps
// Self-checking bench for fifo_2_10 : 3-channel width-converting merge to 16-bit.
//   chan0 = A 8-bit  -> 16-bit, 2 bytes/word, first byte in [15:8]
//   chan1 = B 16-bit -> 16-bit pass-through
//   chan2 = C 32-bit -> two 16-bit beats, high half first
module chk_fifo_2_10;
    reg  rst_n, clk_a=0, clk_b=0, clk_c=0, clk_d=0;
    reg  [7:0]  data_a=0;  reg data_a_vld=0;
    reg  [15:0] data_b=0;  reg data_b_vld=0;
    reg  [31:0] data_c=0;  reg data_c_vld=0;
    wire [15:0] data_d;
    wire        data_d_vld;
    wire [1:0]  chan_d;

    parameter CA=20, CB=40, CC=80, CD=10;
    parameter NBYTES=16, NB=21, NC=31;

    fifo_2_10 uut(.rst_n(rst_n),.clk_a(clk_a),.data_a(data_a),.data_a_vld(data_a_vld),
                  .clk_b(clk_b),.data_b(data_b),.data_b_vld(data_b_vld),
                  .clk_c(clk_c),.data_c(data_c),.data_c_vld(data_c_vld),
                  .clk_d(clk_d),.data_d(data_d),.data_d_vld(data_d_vld),.chan_d(chan_d));

    always #(CA/2) clk_a = ~clk_a;
    always #(CB/2) clk_b = ~clk_b;
    always #(CC/2) clk_c = ~clk_c;
    always #(CD/2) clk_d = ~clk_d;

    // expected per-channel 16-bit outputs
    reg [15:0] ea [0:255], eb [0:255], ec [0:255];
    integer na=0, nb=0, nc=0;
    integer ia=0, ib=0, ic=0;
    integer beats=0, errors=0, bad=0;

    task exp_a(input [7:0] b0, input [7:0] b1);
        begin ea[na] = {b0,b1}; na=na+1; end
    endtask
    task exp_b(input [15:0] d);
        begin eb[nb] = d; nb=nb+1; end
    endtask
    task exp_c(input [31:0] d);
        begin ec[nc] = d[31:16]; nc=nc+1; ec[nc] = d[15:0]; nc=nc+1; end
    endtask

    always @(posedge clk_d) if (rst_n && data_d_vld) begin
        beats=beats+1;
        case (chan_d)
            2'd0: begin
                if (ia>=na) begin errors=errors+1; $display("ERROR t=%0t: chan0 extra %h",$time,data_d); end
                else if (data_d!==ea[ia]) begin errors=errors+1;
                    $display("ERROR t=%0t: chan0 #%0d got %h expected %h",$time,ia,data_d,ea[ia]); end
                ia=ia+1; end
            2'd1: begin
                if (ib>=nb) begin errors=errors+1; $display("ERROR t=%0t: chan1 extra %h",$time,data_d); end
                else if (data_d!==eb[ib]) begin errors=errors+1;
                    $display("ERROR t=%0t: chan1 #%0d got %h expected %h",$time,ib,data_d,eb[ib]); end
                ib=ib+1; end
            2'd2: begin
                if (ic>=nc) begin errors=errors+1; $display("ERROR t=%0t: chan2 extra %h",$time,data_d); end
                else if (data_d!==ec[ic]) begin errors=errors+1;
                    $display("ERROR t=%0t: chan2 #%0d got %h expected %h",$time,ic,data_d,ec[ic]); end
                ic=ic+1; end
            default: begin bad=bad+1;
                $display("BUG t=%0t: data_d_vld with chan_d==3 (idle) data=%h", $time, data_d); end
        endcase
    end

    integer k, ka, kb, kc;
    initial begin rst_n=1; #2; rst_n=0; #(8000); rst_n=1; end

    initial begin
        for (k=0;k<8;k=k+1) exp_a(8'h00+2*k, 8'h01+2*k);          // 0x00..0x0F
        for (k=0;k<NB;k=k+1) exp_b(16'h7F00+k);
        for (k=0;k<NC;k=k+1) exp_c(32'hFFFEFD00+k);
    end

    initial begin
        #(14000);
        for (ka=0;ka<NBYTES;ka=ka+1) begin data_a_vld=1; data_a=8'h00+ka; @(posedge clk_a); #1; end
        data_a_vld=0; data_a=0;
    end
    initial begin
        #(14000);
        for (kb=0;kb<NB;kb=kb+1) begin data_b_vld=1; data_b=16'h7F00+kb; @(posedge clk_b); #1; end
        data_b_vld=0; data_b=0;
    end
    initial begin
        #(14000);
        for (kc=0;kc<NC;kc=kc+1) begin data_c_vld=1; data_c=32'hFFFEFD00+kc; @(posedge clk_c); #1; end
        data_c_vld=0; data_c=0;
    end

    initial begin
        #(70000);
        $display("--------------------------------------------------");
        $display("fifo_2_10: expected a/b/c = %0d/%0d/%0d beats", na,nb,nc);
        $display("fifo_2_10: emitted  a/b/c = %0d/%0d/%0d beats, total %0d", ia,ib,ic,beats);
        if (ia!=na||ib!=nb||ic!=nc) $display("NOTE: a channel is missing or has extra beats");
        if (errors==0 && bad==0) $display("RESULT fifo_2_10: PASS (per-channel width conversion correct)");
        else $display("RESULT fifo_2_10: FAIL (%0d error(s), %0d idle-tag beat(s))", errors, bad);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
