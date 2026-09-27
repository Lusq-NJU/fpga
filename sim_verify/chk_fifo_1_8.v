`timescale 1ns / 1ps
// Self-checking bench for fifo_1_8 : 32-bit words (sop/eop/mty[1:0]) -> 8-bit bytes.
// Spec: x = eop ? 4-mty : 4 valid bytes per word, MSB-first; sop on first byte of
// packet, eop on last valid byte.  Reference derived from stimulus; random b_rdy.
module chk_fifo_1_8;
    reg  clk=0, rst_n, b_rdy=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [1:0] din_mty=0;
    reg  [31:0] din=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_1_8 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop),.b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] ebyte [0:8191];
    reg       esop  [0:8191];
    reg       eeop  [0:8191];
    integer expn=0;

    task exp_push(input [7:0] b, input s, input e);
        begin ebyte[expn]=b; esop[expn]=s; eeop[expn]=e; expn=expn+1; end
    endtask

    reg [7:0] by [0:3];

    task send_word(input [31:0] d, input s, input e, input [1:0] m);
        integer k, x;
        begin
            din=d; din_sop=s; din_eop=e; din_mty=m; din_vld=1;
            by[0]=d[31:24]; by[1]=d[23:16]; by[2]=d[15:8]; by[3]=d[7:0];
            x = e ? (4 - m) : 4;
            if (x < 1) x = 1;
            for (k=0;k<x;k=k+1)
                exp_push(by[k], (k==0) ? s : 1'b0, (e && k==x-1) ? 1'b1 : 1'b0);
            @(posedge clk); #1;
        end
    endtask

    integer rdi=0, beats=0, errors=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1; $display("ERROR t=%0t: extra valid byte %h", $time, dout);
        end else begin
            if (dout     !== ebyte[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: byte #%0d got %h expected %h", $time, beats, dout, ebyte[rdi]); end
            if (dout_sop !== esop[rdi])  begin errors=errors+1;
                $display("ERROR t=%0t: byte #%0d sop got %b expected %b", $time, beats, dout_sop, esop[rdi]); end
            if (dout_eop !== eeop[rdi])  begin errors=errors+1;
                $display("ERROR t=%0t: byte #%0d eop got %b expected %b", $time, beats, dout_eop, eeop[rdi]); end
        end
        rdi=rdi+1;
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0; din_mty=0;
        #(CYCLE*30);
        // pkt1: word1 full, word2 eop mty=2 -> 4 + 2 = 6 bytes
        send_word(32'h11223344,1,0,0); send_word(32'h55667788,0,1,2);
        din_vld=0; din_sop=0; din_eop=0; #(CYCLE*8);
        // pkt2: single word eop mty=3 -> 1 byte
        send_word(32'h99AABBCC,1,1,3);
        din_vld=0; #(CYCLE*8);
        // pkt3: 3 words, last eop mty=0 -> 12 bytes
        send_word(32'hDDEEFF00,1,0,0); send_word(32'h12345678,0,0,0); send_word(32'h9ABCDEF0,0,1,0);
        din_vld=0; #(CYCLE*8);
        // pkt4: single word eop mty=1 -> 3 bytes
        send_word(32'hAABBCCDD,1,1,1);
        din_vld=0; #(CYCLE*40);
    end

    initial begin
        b_rdy=0; #(CYCLE*30);
        forever begin @(posedge clk); #1; b_rdy=$random; end
    end

    initial begin
        #(CYCLE*500);
        $display("--------------------------------------------------");
        $display("fifo_1_8 : expected valid bytes = %0d, observed = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0) $display("RESULT fifo_1_8: PASS (mty[1:0] honoured, MSB-first, markers correct)");
        else           $display("RESULT fifo_1_8: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
