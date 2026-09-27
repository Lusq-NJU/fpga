`timescale 1ns / 1ps
// Multi-packet CDC probe for fifo_2_7.
// Only channel B is driven, so the arbiter must cycle idle -> B -> idle exactly once per
// packet. clk_a and clk_b are in a non-integer ratio (30/50 ns) so their relative phase
// drifts continuously and every alignment gets exercised over the run.
//
// The current source registers wr_en_eop_b on clk_a while u_fifo_eop_b writes on clk_b,
// so the eop marker can be captured twice or missed. Either corrupts arbitration:
//   * captured twice -> the FSM enters state 1 again with an empty data FIFO and stalls
//   * missed         -> the arbiter never selects B and its data never comes out
// Both show up here as packets that never complete.
module cdc_fifo_2_7_slowA;
    reg  rst_n;
    reg  clk_a=0, clk_b=0, clk_c=0, clk_d=0;

    parameter CA=80, CB=50, CC=100, CD=12;   // CA:CB non-integer -> drifting phase
    parameter NPKT=20, PLEN=4;

    reg  [7:0] data_b=0;
    reg  data_b_vld=0, data_b_sop=0, data_b_eop=0;

    wire [7:0] data_d;
    wire       data_d_vld, data_d_sop, data_d_eop;
    wire [1:0] chan_d;

    fifo_2_7 uut(.rst_n(rst_n),
                 .clk_a(clk_a),.data_a(8'hAA),.data_a_vld(1'b0),.data_a_sop(1'b0),.data_a_eop(1'b0),
                 .clk_b(clk_b),.data_b(data_b),.data_b_vld(data_b_vld),
                 .data_b_sop(data_b_sop),.data_b_eop(data_b_eop),
                 .clk_c(clk_c),.data_c(8'hCC),.data_c_vld(1'b0),.data_c_sop(1'b0),.data_c_eop(1'b0),
                 .clk_d(clk_d),.data_d(data_d),.data_d_vld(data_d_vld),
                 .data_d_sop(data_d_sop),.data_d_eop(data_d_eop),.chan_d(chan_d));

    always #(CA/2) clk_a = ~clk_a;
    always #(CB/2) clk_b = ~clk_b;
    always #(CC/2) clk_c = ~clk_c;
    always #(CD/2) clk_d = ~clk_d;

    integer pkt=0, bidx=0, errors=0, beats=0, pkts_done=0;

    always @(posedge clk_d) if (rst_n && data_d_vld) begin
        beats=beats+1;
        if (chan_d!==2'd1) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: beat on chan %0d but only B is driven, data=%h", $time, chan_d, data_d);
        end else if (pkt>=NPKT) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: extra packet beyond %0d", $time, NPKT);
        end else begin
            if (data_d !== (8'h20 + pkt*PLEN + bidx)) begin
                errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: pkt %0d byte %0d got %h expected %h",
                                        $time, pkt, bidx, data_d, 8'h20+pkt*PLEN+bidx);
            end
            if (data_d_sop !== (bidx==0)) begin
                errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: pkt %0d byte %0d sop=%b", $time, pkt, bidx, data_d_sop);
            end
            if (data_d_eop !== (bidx==PLEN-1)) begin
                errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: pkt %0d byte %0d eop=%b expected=%b",
                                        $time, pkt, bidx, data_d_eop, (bidx==PLEN-1));
            end
        end
        bidx=bidx+1;
        if (data_d_eop) begin pkt=pkt+1; bidx=0; pkts_done=pkts_done+1; end
    end

    integer p, k;
    initial begin rst_n=1; #2; rst_n=0; #(3000); rst_n=1; end

    initial begin
        data_b_vld=0; data_b_sop=0; data_b_eop=0; data_b=0;
        #(4000);
        for (p=0; p<NPKT; p=p+1)
            for (k=0; k<PLEN; k=k+1) begin
                data_b_vld=1; data_b=8'h20 + p*PLEN + k;
                data_b_sop=(k==0); data_b_eop=(k==PLEN-1);
                @(posedge clk_b); #1;
            end
        data_b_vld=0; data_b_sop=0; data_b_eop=0;
    end

    initial begin
        #(60000);
        $display("--------------------------------------------------");
        $display("cdc fifo_2_7 : packets completed = %0d/%0d, beats = %0d (expected %0d), errors = %0d",
                 pkts_done, NPKT, beats, NPKT*PLEN, errors);
        if (errors==0 && pkts_done==NPKT)
            $display("RESULT cdc_fifo_2_7: PASS");
        else
            $display("RESULT cdc_fifo_2_7: FAIL (%0d/%0d packets, %0d error(s))", pkts_done, NPKT, errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
