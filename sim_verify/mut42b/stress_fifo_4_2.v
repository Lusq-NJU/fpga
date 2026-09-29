`timescale 1ns / 1ps
// Randomized stress for fifo_4_2.
// Same spec as chk_fifo_4_2: per packet one header beat ({8'd0, 2*word count} = length in
// BYTES, sop=1), one checksum beat (folded sum over all din_vld beats of the packet), then
// the data words (sop=0, eop on the last), and nothing at all in between.
// Lengths stay inside the use case (<= 250 bytes = 125 words), skewed to the short and to
// the maximum end (125 words appears often), random data patterns (all-zero, all-FFFF,
// FFFF+zeros and a 8000/FFFF/0001 cycle so carries and the 65535 residue get hit), random
// 0..3 cycle gaps (abutting packets occur) and random 0..2 cycle bubbles inside a packet.
module stress_fifo_4_2;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;
    parameter NPKT=30;

    fifo_4_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
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
            if (errors<=8) $display("ERROR t=%0t: extra beat data=%h sop=%b eop=%b - no beat belongs here",
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

    function [15:0] fold(input [15:0] a, input [15:0] b);
        reg [16:0] s;
        begin
            s = {1'b0,a} + {1'b0,b};
            if (s[16]) s = s - 17'h0FFFF;
            fold = s[15:0];
        end
    endfunction

    // header field: packet length in bytes, low 8 bits
    function [15:0] hdr(input integer len);
        begin hdr = {8'd0, (len*2) % 256}; end
    endfunction

    function [15:0] wgen(input integer mode, input integer k, input [15:0] base);
        begin
            case (mode)
                1: wgen = 16'hFFFF;
                2: wgen = (k==0) ? 16'hFFFF : 16'h0000;
                3: wgen = (k%3==0) ? 16'h8000 : ((k%3==1) ? 16'hFFFF : 16'h0001);
                4: wgen = 16'h0000;
                default: wgen = base + k;
            endcase
        end
    endfunction

    task send_pkt(input integer len, input integer mode, input [15:0] base,
                  input integer gap, input integer bub);
        integer k, b;
        reg [15:0] r;
        begin
            r = wgen(mode,0,base);
            for (k=1;k<len;k=k+1) r = fold(r, wgen(mode,k,base));
            E(hdr(len),         1'b1, 1'b0);
            E(r,                1'b0, 1'b0);
            for (k=0;k<len;k=k+1) begin
                din = wgen(mode,k,base);
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                E(din, 1'b0, din_eop);
                @(posedge clk); #1;
                din_vld=0; din_sop=0; din_eop=0;      // deassert BEFORE the bubble wait
                for (b=0;b<bub;b=b+1) begin @(posedge clk); #1; end
            end
            if (gap>0) #(CYCLE*gap);
        end
    endtask

    integer seed=4242;
    integer pkt, len, r, gap, bub, mode;
    reg [15:0] base;

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("stress fifo_4_2: %0d random packets, random lengths/patterns/gaps/bubbles", NPKT);
        for (pkt=0;pkt<NPKT;pkt=pkt+1) begin
            r    = {$random(seed)} % 100;
            if      (r < 50) len = 1  + ({$random(seed)} % 4);    // 1..4
            else if (r < 80) len = 1  + ({$random(seed)} % 40);   // 1..40
            else if (r < 90) len = 125;                           // use-case maximum (250 bytes)
            else             len = 60 + ({$random(seed)} % 66);   // 60..125
            mode = {$random(seed)} % 6;                           // 5 special patterns + counter
            base = {$random(seed)} % 16'hE000 + 16'h1000;
            gap  = {$random(seed)} % 4;
            bub  = {$random(seed)} % 3;
            if (pkt == NPKT-1) begin gap = 5; bub = 0; end
            $display("  pkt %0d: len=%0d mode=%0d base=%h gap=%0d bubbles=%0d", pkt, len, mode, base, gap, bub);
            send_pkt(len, mode, base, gap, bub);
        end
        #(CYCLE*900);
        $display("--------------------------------------------------");
        $display("stress fifo_4_2 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT stress fifo_4_2: PASS (%0d beats, header+checksum+data clean)", beats);
        else
            $display("RESULT stress fifo_4_2: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
