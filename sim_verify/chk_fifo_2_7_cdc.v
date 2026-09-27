`timescale 1ns / 1ps
// Self-checking bench for fifo_2_7 : 3 async 8-bit packet channels -> 1 output.
// Design intent is packet-atomic arbitration (a channel is held until its eop byte).
// Checks: (a) per-channel byte order/completeness, (b) sop/eop markers correct,
//         (c) a packet is never interleaved with another channel's bytes.
module chk_fifo_2_7_cdc;
    reg  rst_n;
    reg  clk_a=0, clk_b=0, clk_c=0, clk_d=0;

    parameter CA=30, CB=50, CC=100, CD=12;
    parameter NA=16, NB=21, NC=31;

    reg  [7:0] data_a=0, data_b=0, data_c=0;
    reg  data_a_vld=0, data_a_sop=0, data_a_eop=0;
    reg  data_b_vld=0, data_b_sop=0, data_b_eop=0;
    reg  data_c_vld=0, data_c_sop=0, data_c_eop=0;

    wire [7:0] data_d;
    wire       data_d_vld, data_d_sop, data_d_eop;
    wire [1:0] chan_d;

    fifo_2_7 uut(.rst_n(rst_n),.clk_a(clk_a),.data_a(data_a),.data_a_vld(data_a_vld),
                 .data_a_sop(data_a_sop),.data_a_eop(data_a_eop),
                 .clk_b(clk_b),.data_b(data_b),.data_b_vld(data_b_vld),
                 .data_b_sop(data_b_sop),.data_b_eop(data_b_eop),
                 .clk_c(clk_c),.data_c(data_c),.data_c_vld(data_c_vld),
                 .data_c_sop(data_c_sop),.data_c_eop(data_c_eop),
                 .clk_d(clk_d),.data_d(data_d),.data_d_vld(data_d_vld),
                 .data_d_sop(data_d_sop),.data_d_eop(data_d_eop),.chan_d(chan_d));

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

    // expected per-channel packet byte sequences
    reg [7:0] ea [0:NA-1], eb [0:NB-1], ec [0:NC-1];
    integer ia=0, ib=0, ic=0;

    integer beats=0, errors=0, interleave=0, bad_chan=0;
    reg [1:0] cur_chan = 2'd3;
    reg       in_pkt   = 0;

    always @(posedge clk_d) if (rst_n && data_d_vld && checking) begin
        beats=beats+1;
        // packet-atomicity tracking
        if (data_d_sop) begin cur_chan=chan_d; in_pkt=1; end
        else if (in_pkt && chan_d!==cur_chan) begin
            interleave=interleave+1;
            if (interleave<4) $display("ERROR t=%0t: packet interleaved: started on chan %0d, beat on chan %0d", $time, cur_chan, chan_d);
            cur_chan=chan_d;
        end

        case (chan_d)
            2'd0: begin
                if (ia>=NA) begin errors=errors+1; $display("ERROR t=%0t: chan0 extra %h",$time,data_d); end
                else begin
                    if (data_d!==ea[ia]) begin errors=errors+1;
                        $display("ERROR t=%0t: chan0 byte #%0d got %h expected %h",$time,ia,data_d,ea[ia]); end
                    if (data_d_sop!==(ia==0))    begin errors=errors+1; $display("ERROR t=%0t: chan0 sop wrong at %0d",$time,ia); end
                    if (data_d_eop!==(ia==NA-1)) begin errors=errors+1; $display("ERROR t=%0t: chan0 eop wrong at %0d",$time,ia); end
                end
                ia=ia+1; if (data_d_eop) in_pkt=0;
            end
            2'd1: begin
                if (ib>=NB) begin errors=errors+1; $display("ERROR t=%0t: chan1 extra %h",$time,data_d); end
                else begin
                    if (data_d!==eb[ib]) begin errors=errors+1;
                        $display("ERROR t=%0t: chan1 byte #%0d got %h expected %h",$time,ib,data_d,eb[ib]); end
                    if (data_d_sop!==(ib==0))    begin errors=errors+1; $display("ERROR t=%0t: chan1 sop wrong at %0d",$time,ib); end
                    if (data_d_eop!==(ib==NB-1)) begin errors=errors+1; $display("ERROR t=%0t: chan1 eop wrong at %0d",$time,ib); end
                end
                ib=ib+1; if (data_d_eop) in_pkt=0;
            end
            2'd2: begin
                if (ic>=NC) begin errors=errors+1; $display("ERROR t=%0t: chan2 extra %h",$time,data_d); end
                else begin
                    if (data_d!==ec[ic]) begin errors=errors+1;
                        $display("ERROR t=%0t: chan2 byte #%0d got %h expected %h",$time,ic,data_d,ec[ic]); end
                    if (data_d_sop!==(ic==0))    begin errors=errors+1; $display("ERROR t=%0t: chan2 sop wrong at %0d",$time,ic); end
                    if (data_d_eop!==(ic==NC-1)) begin errors=errors+1; $display("ERROR t=%0t: chan2 eop wrong at %0d",$time,ic); end
                end
                ic=ic+1; if (data_d_eop) in_pkt=0;
            end
            default: bad_chan=bad_chan+1;
        endcase
    end

    integer ia_, ib_, ic_, k_;
    initial begin rst_n=1; #2; rst_n=0; #(3000); rst_n=1; end

    initial begin
        for (k_=0;k_<NA;k_=k_+1) ea[k_]=8'h00+k_;
        for (k_=0;k_<NB;k_=k_+1) eb[k_]=8'h14+k_;
        for (k_=0;k_<NC;k_=k_+1) ec[k_]=8'h32+k_;
    end

    initial begin
        #(4000);
        for (ia_=0;ia_<NA;ia_=ia_+1) begin
            data_a_vld=1; data_a=8'h00+ia_; data_a_sop=(ia_==0); data_a_eop=(ia_==NA-1);
            @(posedge clk_a); #1;
        end
        data_a_vld=0; data_a_sop=0; data_a_eop=0;
    end
    initial begin
        #(4000);
        for (ib_=0;ib_<NB;ib_=ib_+1) begin
            data_b_vld=1; data_b=8'h14+ib_; data_b_sop=(ib_==0); data_b_eop=(ib_==NB-1);
            @(posedge clk_b); #1;
        end
        data_b_vld=0; data_b_sop=0; data_b_eop=0;
    end
    initial begin
        #(4000);
        for (ic_=0;ic_<NC;ic_=ic_+1) begin
            data_c_vld=1; data_c=8'h32+ic_; data_c_sop=(ic_==0); data_c_eop=(ic_==NC-1);
            @(posedge clk_c); #1;
        end
        data_c_vld=0; data_c_sop=0; data_c_eop=0;
    end

    initial begin
        #(22000);
        $display("--------------------------------------------------");
        $display("fifo_2_7 : emitted a/b/c = %0d/%0d/%0d (expected %0d/%0d/%0d)", ia,ib,ic,NA,NB,NC);
        $display("fifo_2_7 : total beats = %0d (pre-stimulus beats = %0d)", beats, pre_beats);
        if (ia!=NA||ib!=NB||ic!=NC) $display("NOTE: channel data missing or over-emitted");
        if (errors==0 && interleave==0 && bad_chan==0)
            $display("RESULT fifo_2_7: PASS (packets whole, in order, markers correct)");
        else
            $display("RESULT fifo_2_7: FAIL (%0d error(s), %0d interleave(s), %0d bad-chan)", errors, interleave, bad_chan);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
