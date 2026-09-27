`timescale 1ns / 1ps
// Randomized stress for fifo_2_12 : 3-channel packet merge to a 16-bit output.
//   chan0 = A 8-bit  -> 2 bytes/word (first byte in [15:8]), mty=1 on an odd tail
//   chan1 = B 16-bit -> pass-through with sop/eop/mty
//   chan2 = C 32-bit -> 2x16-bit beats, high half first; mty[1] selects a 1-beat packet
// Several packets per channel with random lengths and random C mty, sent strictly
// serialized so the output order is deterministic and the ordered checker stays valid.
module stress_fifo_2_12;
    reg  rst_n, clk_a=0, clk_b=0, clk_c=0, clk_d=0;
    reg  [7:0]  data_a=0;  reg data_a_sop=0, data_a_eop=0, data_a_vld=0;
    reg  [15:0] data_b=0;  reg data_b_sop=0, data_b_eop=0, data_b_mty=0, data_b_vld=0;
    reg  [31:0] data_c=0;  reg data_c_sop=0, data_c_eop=0, data_c_vld=0;
    reg  [1:0]  data_c_mty=0;
    wire [15:0] data_d;
    wire data_d_sop, data_d_eop, data_d_vld, data_d_mty;
    wire [1:0]  chan_d;

    parameter CA=20, CB=40, CC=80, CD=10;
    parameter NPKT=8;

    fifo_2_12 uut(.rst_n(rst_n),.clk_a(clk_a),.data_a(data_a),.data_a_sop(data_a_sop),
        .data_a_eop(data_a_eop),.data_a_vld(data_a_vld),
        .clk_b(clk_b),.data_b(data_b),.data_b_sop(data_b_sop),.data_b_eop(data_b_eop),
        .data_b_vld(data_b_vld),.data_b_mty(data_b_mty),
        .clk_c(clk_c),.data_c(data_c),.data_c_sop(data_c_sop),.data_c_eop(data_c_eop),
        .data_c_vld(data_c_vld),.data_c_mty(data_c_mty),
        .clk_d(clk_d),.data_d(data_d),.data_d_sop(data_d_sop),.data_d_eop(data_d_eop),
        .data_d_vld(data_d_vld),.data_d_mty(data_d_mty),.chan_d(chan_d));

    always #(CA/2) clk_a = ~clk_a;
    always #(CB/2) clk_b = ~clk_b;
    always #(CC/2) clk_c = ~clk_c;
    always #(CD/2) clk_d = ~clk_d;

    reg [15:0] eq [0:511]; reg es [0:511], ee [0:511], em [0:511]; reg [1:0] ech [0:511];
    integer expn=0;
    integer beats=0, errors=0, bad=0;

    task E(input [15:0] d, input s, input e, input m, input [1:0] ch);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; em[expn]=m; ech[expn]=ch; expn=expn+1; end
    endtask

    always @(posedge clk_d) if (rst_n && data_d_vld) begin
        beats=beats+1;
        if (chan_d==2'd3) begin bad=bad+1;
            if (bad<4) $display("BUG t=%0t: data_d_vld with idle tag, data=%h", $time, data_d);
        end
        if (beats-1 < expn) begin
            if (ech[beats-1]==2'd0 && em[beats-1]==1'b1) begin
                // low byte lane flagged invalid by mty on an odd A tail: compare high lane only
                if ((data_d & 16'hFF00) !== (eq[beats-1] & 16'hFF00)) begin errors=errors+1;
                    $display("ERROR t=%0t: beat #%0d data(hi) got %h expected %h",$time,beats-1,data_d,eq[beats-1]); end
            end else
            if (data_d     !== eq[beats-1]) begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d data got %h expected %h",$time,beats-1,data_d,eq[beats-1]); end
            if (data_d_sop !== es[beats-1]) begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d sop got %b expected %b",$time,beats-1,data_d_sop,es[beats-1]); end
            if (data_d_eop !== ee[beats-1]) begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d eop got %b expected %b",$time,beats-1,data_d_eop,ee[beats-1]); end
            if (data_d_mty !== em[beats-1]) begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d mty got %b expected %b",$time,beats-1,data_d_mty,em[beats-1]); end
            if (chan_d    !== ech[beats-1]) begin errors=errors+1;
                $display("ERROR t=%0t: beat #%0d chan got %0d expected %0d",$time,beats-1,chan_d,ech[beats-1]); end
        end
    end

    // ---- A: 8-bit packet -> 16-bit words, first byte in [15:8] ----
    task drive_a(input integer len, input [7:0] base);
        integer j, w, nw;
        reg [7:0] b0,b1;
        begin
            nw = (len+1)/2;
            for (w=0;w<nw;w=w+1) begin
                b0 = base + 2*w;
                b1 = (2*w+1 < len) ? (base + 2*w + 1) : 8'h00;
                if (w==nw-1 && (len%2)==1)
                    E({b0,8'h00}, (w==0), 1'b1, 1'b1, 2'd0);
                else
                    E({b0,b1}, (w==0), (w==nw-1), 1'b0, 2'd0);
            end
            for (j=0;j<len;j=j+1) begin
                data_a=base+j; data_a_sop=(j==0); data_a_eop=(j==len-1); data_a_vld=1;
                @(posedge clk_a); #1;
            end
            data_a_vld=0; data_a_sop=0; data_a_eop=0;
        end
    endtask

    // ---- B: 16-bit pass-through ----
    task drive_b(input integer len, input [15:0] base);
        integer j;
        begin
            for (j=0;j<len;j=j+1) begin
                data_b=base+j; data_b_sop=(j==0); data_b_eop=(j==len-1); data_b_mty=1'b0; data_b_vld=1;
                E(base+j, (j==0), (j==len-1), 1'b0, 2'd1);
                @(posedge clk_b); #1;
            end
            data_b_vld=0; data_b_sop=0; data_b_eop=0;
        end
    endtask

    // ---- C: 32-bit -> 1 or 2 16-bit beats, high half first ----
    task drive_c(input [31:0] d, input s, input e, input [1:0] m);
        begin
            if (m[1]) begin
                E(d[31:16], s, e, m[0], 2'd2);
            end else begin
                E(d[31:16], s,  1'b0, 1'b0, 2'd2);
                E(d[15:0],  1'b0, e, m[0], 2'd2);
            end
            data_c=d; data_c_sop=s; data_c_eop=e; data_c_mty=m; data_c_vld=1;
            @(posedge clk_c); #1;
            data_c_vld=0;
        end
    endtask

    integer alen [0:15], blen [0:15];
    reg [1:0] cmty [0:15]; reg [31:0] cval [0:15];
    integer p;

    initial begin
        for (p=0;p<NPKT;p=p+1) begin
            alen[p] = ({$random} % 16) + 1;      // 1..16 bytes, odd and even
            blen[p] = ({$random} % 8) + 1;       // 1..8 words
            cmty[p] = {$random} % 4;             // 0..3 -> both mty[1] cases, both mty[0]
            cval[p] = $random;
        end
    end

    initial begin rst_n=1; #2; rst_n=0; #(8000); rst_n=1; end

    initial begin
        data_a=0; data_a_vld=0; data_a_sop=0; data_a_eop=0;
        data_b=0; data_b_vld=0; data_b_sop=0; data_b_eop=0; data_b_mty=0;
        data_c=0; data_c_vld=0; data_c_sop=0; data_c_eop=0; data_c_mty=0;
    end

    initial begin
        #(14000);
        // Each channel's packets are sent back-to-back (no gap between packets), so the
        // eop markers land in the marker FIFO consecutively and the arbiter has to hand
        // the channel back and forth with no idle time in between.
        for (p=0;p<NPKT;p=p+1) drive_a(alen[p], 8'h10 + p*16);
        #(CC*4);
        for (p=0;p<NPKT;p=p+1) drive_b(blen[p], 16'h9000 + p*8);
        #(CC*4);
        for (p=0;p<NPKT;p=p+1) drive_c(cval[p], 1'b1, 1'b1, cmty[p]);
        #(CC*60);
        #(CC*60);
    end

    initial begin
        #(120000);
        $display("--------------------------------------------------");
        $display("stress fifo_2_12 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && bad==0 && expn==beats)
            $display("RESULT stress fifo_2_12: PASS (3-channel merge correct over %0d packets/channel)", NPKT);
        else
            $display("RESULT stress fifo_2_12: FAIL (%0d error(s), %0d idle-tag beat(s))", errors, bad);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
