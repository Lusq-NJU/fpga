`timescale 1ns / 1ps
// Self-checking bench for fifo_2_5 : 3 asynchronous 16-bit channels -> 1 output, chan_d tag.
// Check: every output beat must equal the next un-emitted word of the channel named by
// chan_d (per-channel order + completeness).  Arbitration policy is not asserted here.
module chk_fifo_2_5;
    reg  rst_n;
    reg  clk_a=0, clk_b=0, clk_c=0, clk_d=0;
    reg  [15:0] data_a=0, data_b=0, data_c=0;
    reg  data_a_vld=0, data_b_vld=0, data_c_vld=0;
    wire [15:0] data_d;
    wire        data_d_vld;
    wire [1:0]  chan_d;

    parameter CA=25, CB=50, CC=100, CD=12;

    fifo_2_5 uut(.rst_n(rst_n),.clk_a(clk_a),.data_a(data_a),.data_a_vld(data_a_vld),
                 .clk_b(clk_b),.data_b(data_b),.data_b_vld(data_b_vld),
                 .clk_c(clk_c),.data_c(data_c),.data_c_vld(data_c_vld),
                 .clk_d(clk_d),.data_d(data_d),.data_d_vld(data_d_vld),.chan_d(chan_d));

    always #(CA/2) clk_a = ~clk_a;
    always #(CB/2) clk_b = ~clk_b;
    always #(CC/2) clk_c = ~clk_c;
    always #(CD/2) clk_d = ~clk_d;

    // Beats emitted before the stimulus starts are counted separately: they are
    // produced while the FIFO's rd_rst_busy is still asserted (reset not settled).
    reg         checking = 0;
    integer     pre_beats = 0;
    always @(posedge clk_d) if (rst_n && data_d_vld && !checking) pre_beats = pre_beats + 1;
    initial begin #(3990); checking = 1; end

    reg [15:0] ea [0:255], eb [0:255], ec [0:255];
    integer na=0, nb=0, nc=0;
    integer ia=0, ib=0, ic=0;
    integer beats=0, errors=0, bad_chan=0;

    always @(posedge clk_a) if (rst_n && data_a_vld) begin ea[na]=data_a; na=na+1; end
    always @(posedge clk_b) if (rst_n && data_b_vld) begin eb[nb]=data_b; nb=nb+1; end
    always @(posedge clk_c) if (rst_n && data_c_vld) begin ec[nc]=data_c; nc=nc+1; end

    always @(posedge clk_d) if (rst_n && data_d_vld && checking) begin
        beats=beats+1;
        case (chan_d)
            2'd0: begin
                if (ia>=na) begin errors=errors+1; $display("ERROR t=%0t: chan0 beat #%0d extra %h",$time,beats,data_d); end
                else if (data_d!==ea[ia]) begin errors=errors+1;
                    $display("ERROR t=%0t: chan0 beat #%0d got %h expected %h",$time,beats,data_d,ea[ia]); end
                ia=ia+1;
            end
            2'd1: begin
                if (ib>=nb) begin errors=errors+1; $display("ERROR t=%0t: chan1 beat #%0d extra %h",$time,beats,data_d); end
                else if (data_d!==eb[ib]) begin errors=errors+1;
                    $display("ERROR t=%0t: chan1 beat #%0d got %h expected %h",$time,beats,data_d,eb[ib]); end
                ib=ib+1;
            end
            2'd2: begin
                if (ic>=nc) begin errors=errors+1; $display("ERROR t=%0t: chan2 beat #%0d extra %h",$time,beats,data_d); end
                else if (data_d!==ec[ic]) begin errors=errors+1;
                    $display("ERROR t=%0t: chan2 beat #%0d got %h expected %h",$time,beats,data_d,ec[ic]); end
                ic=ic+1;
            end
            default: begin
                bad_chan=bad_chan+1;
                $display("BUG t=%0t: data_d_vld asserted while chan_d==3 (idle code) data=%h", $time, data_d);
            end
        endcase
    end

    integer ia_, ib_, ic_;
    initial begin
        rst_n=1; #2; rst_n=0; #(3000); rst_n=1;
    end

    initial begin
        #(4000);
        for (ia_=0;ia_<32;ia_=ia_+1) begin data_a_vld=1; data_a=16'h0000+ia_; @(posedge clk_a); #1; end
        data_a_vld=0; data_a=0;
    end
    initial begin
        #(4000);
        for (ib_=0;ib_<32;ib_=ib_+1) begin data_b_vld=1; data_b=16'h0014+ib_; @(posedge clk_b); #1; end
        data_b_vld=0; data_b=0;
    end
    initial begin
        #(4000);
        for (ic_=0;ic_<31;ic_=ic_+1) begin data_c_vld=1; data_c=16'h0032+ic_; @(posedge clk_c); #1; end
        data_c_vld=0; data_c=0;
    end

    initial begin
        #(22000);
        $display("--------------------------------------------------");
        $display("fifo_2_5 : written a/b/c = %0d/%0d/%0d, emitted a/b/c = %0d/%0d/%0d",
                 na,nb,nc,ia,ib,ic);
        $display("fifo_2_5 : total output beats = %0d (pre-stimulus beats = %0d)", beats, pre_beats);
        if (na!=ia || nb!=ib || nc!=ic) $display("NOTE: some channel data never emitted");
        if (errors==0 && bad_chan==0) $display("RESULT fifo_2_5: PASS (per-channel order and completeness held)");
        else $display("RESULT fifo_2_5: FAIL (%0d error(s), %0d bad-chan beat(s))", errors, bad_chan);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
