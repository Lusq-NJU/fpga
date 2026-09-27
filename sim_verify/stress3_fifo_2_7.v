`timescale 1ns / 1ps
// Three-channel concurrent stress for fifo_2_7.
// All three channels send several packets of varying length at once, so the arbiter has to
// switch between channels repeatedly. Checks per channel: byte order, completeness, sop/eop
// placement, and that a packet is never interleaved with another channel's bytes.
// Clock ratios are non-integer (30/70/110 ns) so the relative phases drift.
module stress3_fifo_2_7;
    reg  rst_n;
    reg  clk_a=0, clk_b=0, clk_c=0, clk_d=0;

    parameter CA=30, CB=70, CC=110, CD=12;
    parameter NPKT=4;

    reg  [7:0] data_a=0, data_b=0, data_c=0;
    reg  data_a_vld=0, data_a_sop=0, data_a_eop=0;
    reg  data_b_vld=0, data_b_sop=0, data_b_eop=0;
    reg  data_c_vld=0, data_c_sop=0, data_c_eop=0;

    wire [7:0] data_d;
    wire       data_d_vld, data_d_sop, data_d_eop;
    wire [1:0] chan_d;

    fifo_2_7 uut(.rst_n(rst_n),
                 .clk_a(clk_a),.data_a(data_a),.data_a_vld(data_a_vld),
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

    // per-channel expected streams, filled as the stimulus is generated
    reg [7:0] qa [0:255];  reg sa [0:255];  reg ea [0:255];  integer na=0;
    reg [7:0] qb [0:255];  reg sb [0:255];  reg eb [0:255];  integer nb=0;
    reg [7:0] qc [0:255];  reg sc [0:255];  reg ec [0:255];  integer nc=0;

    integer ra=0, rb=0, rc=0, beats=0, errors=0, interleave=0, pre=0;
    reg [1:0] cur_chan=2'd3;
    reg       in_pkt=0;
    reg       checking=0;

    always @(posedge clk_d) if (rst_n && data_d_vld) begin
        if (!checking) pre=pre+1;
        else begin
            beats=beats+1;
            if (data_d_sop) begin cur_chan=chan_d; in_pkt=1; end
            else if (in_pkt && chan_d!==cur_chan) begin
                interleave=interleave+1;
                if (interleave<4) $display("ERROR t=%0t: packet interleaved: chan %0d -> %0d", $time, cur_chan, chan_d);
                cur_chan=chan_d;
            end
            case (chan_d)
                2'd0: begin
                    if (ra>=na) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanA extra byte %h",$time,data_d); end
                    else begin
                        if (data_d!==qa[ra]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanA #%0d got %h exp %h",$time,ra,data_d,qa[ra]); end
                        if (data_d_sop!==sa[ra]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanA #%0d sop wrong",$time,ra); end
                        if (data_d_eop!==ea[ra]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanA #%0d eop wrong",$time,ra); end
                    end
                    ra=ra+1;
                end
                2'd1: begin
                    if (rb>=nb) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanB extra byte %h",$time,data_d); end
                    else begin
                        if (data_d!==qb[rb]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanB #%0d got %h exp %h",$time,rb,data_d,qb[rb]); end
                        if (data_d_sop!==sb[rb]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanB #%0d sop wrong",$time,rb); end
                        if (data_d_eop!==eb[rb]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanB #%0d eop wrong",$time,rb); end
                    end
                    rb=rb+1;
                end
                2'd2: begin
                    if (rc>=nc) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanC extra byte %h",$time,data_d); end
                    else begin
                        if (data_d!==qc[rc]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanC #%0d got %h exp %h",$time,rc,data_d,qc[rc]); end
                        if (data_d_sop!==sc[rc]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanC #%0d sop wrong",$time,rc); end
                        if (data_d_eop!==ec[rc]) begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: chanC #%0d eop wrong",$time,rc); end
                    end
                    rc=rc+1;
                end
                default: begin errors=errors+1; if (errors<6) $display("ERROR t=%0t: beat on idle chan tag 3",$time); end
            endcase
            if (data_d_eop) in_pkt=0;
        end
    end

    initial begin rst_n=1; #2; rst_n=0; #(3000); rst_n=1; end
    initial begin #(5000); checking=1; end

    // Each channel's stimulus runs in its own initial block, so each needs its OWN
    // loop variables - module-level integers are shared and the three blocks would
    // otherwise clobber each other's p/k/plen.
    integer pa, ka, plena;
    integer pb, kb, plenb;
    integer pc, kc, plenc;
    initial begin
        data_a_vld=0; data_a_sop=0; data_a_eop=0; data_a=0;
        #(6000);
        for (pa=0; pa<NPKT; pa=pa+1) begin
            plena = (pa % 4) + 1;                     // 1..4, varies per packet
            for (ka=0; ka<plena; ka=ka+1) begin
                data_a_vld=1; data_a = 8'h10 + pa*4 + ka;
                data_a_sop=(ka==0); data_a_eop=(ka==plena-1);
                qa[na]=data_a; sa[na]=data_a_sop; ea[na]=data_a_eop; na=na+1;
                @(posedge clk_a); #1;
            end
        end
        data_a_vld=0; data_a_sop=0; data_a_eop=0;
    end

    initial begin
        data_b_vld=0; data_b_sop=0; data_b_eop=0; data_b=0;
        #(6000);
        for (pb=0; pb<NPKT; pb=pb+1) begin
            plenb = ((pb+1) % 4) + 1;
            for (kb=0; kb<plenb; kb=kb+1) begin
                data_b_vld=1; data_b = 8'h50 + pb*4 + kb;
                data_b_sop=(kb==0); data_b_eop=(kb==plenb-1);
                qb[nb]=data_b; sb[nb]=data_b_sop; eb[nb]=data_b_eop; nb=nb+1;
                @(posedge clk_b); #1;
            end
        end
        data_b_vld=0; data_b_sop=0; data_b_eop=0;
    end

    initial begin
        data_c_vld=0; data_c_sop=0; data_c_eop=0; data_c=0;
        #(6000);
        for (pc=0; pc<NPKT; pc=pc+1) begin
            plenc = ((pc+2) % 4) + 1;
            for (kc=0; kc<plenc; kc=kc+1) begin
                data_c_vld=1; data_c = 8'h90 + pc*4 + kc;
                data_c_sop=(kc==0); data_c_eop=(kc==plenc-1);
                qc[nc]=data_c; sc[nc]=data_c_sop; ec[nc]=data_c_eop; nc=nc+1;
                @(posedge clk_c); #1;
            end
        end
        data_c_vld=0; data_c_sop=0; data_c_eop=0;
    end

    initial begin
        #(60000);
        $display("--------------------------------------------------");
        $display("stress3 fifo_2_7 : emitted a/b/c = %0d/%0d/%0d (generated %0d/%0d/%0d)",
                 ra, rb, rc, na, nb, nc);
        $display("stress3 fifo_2_7 : beats = %0d, pre-stimulus = %0d, interleave = %0d",
                 beats, pre, interleave);
        if (errors==0 && interleave==0 && ra==na && rb==nb && rc==nc)
            $display("RESULT stress3 fifo_2_7: PASS (all channels whole, in order, never interleaved)");
        else
            $display("RESULT stress3 fifo_2_7: FAIL (%0d error(s), %0d interleave(s), %0d/%0d %0d/%0d %0d/%0d bytes)",
                     errors, interleave, ra,na, rb,nb, rc,nc);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
