`timescale 1ns / 1ps
// Self-checking bench for fifo_3_2.
// Spec (from the designer): a packet is VALID iff its length is AT LEAST 20 words AND
// its 20th word equals 0x0001. Valid packets pass through whole (all words, sop on the
// first, eop on the last); invalid packets are dropped entirely - nothing appears.
// The reference model below implements exactly that rule, so a packet of exactly 20
// words IS valid when its 20th word is 0x0001.
module chk_fifo_3_2;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_3_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
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
            if (errors<=8) $display("ERROR t=%0t: extra beat %h - packet should have been dropped", $time, dout);
        end else begin
            if (dout     !== eq[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d got %h expected %h", $time, beats, dout, eq[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: beat #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
        end
        rdi=rdi+1;
    end

    // send one packet of 'len' words; the 20th word carries 'mark'
    task send_pkt(input integer len, input [15:0] mark, input [15:0] base);
        integer k;
        begin
            for (k=0;k<len;k=k+1) begin
                din = (k==19) ? mark : (base + k);
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                if (len >= 20 && mark == 16'h0001)     // reference: the spec
                    E(din, din_sop, din_eop);
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0;
            #(CYCLE*40);
        end
    endtask

    integer np;
    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*10);
        $display("chk fifo_3_2: valid iff len>=20 AND word[19]==0x0001");
        send_pkt( 5, 16'h0001, 16'h1000);   // too short          -> drop
        send_pkt(20, 16'h0001, 16'h2000);   // exactly 20 + mark  -> PASS
        send_pkt(21, 16'h0001, 16'h3000);   // 21 + mark          -> PASS
        send_pkt(25, 16'h0002, 16'h4000);   // >20, mark wrong    -> drop
        send_pkt(25, 16'h0001, 16'h5000);   // >20 + mark         -> PASS
        send_pkt(19, 16'h0001, 16'h6000);   // 19                 -> drop
        send_pkt(30, 16'h0001, 16'h7000);   // >20 + mark         -> PASS
        send_pkt(21, 16'h0000, 16'h8000);   // 21, mark 0         -> drop
        #(CYCLE*400);
        $display("--------------------------------------------------");
        $display("chk fifo_3_2 : expected beats = %0d, observed beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT chk fifo_3_2: PASS (valid packets whole, invalid dropped)");
        else
            $display("RESULT chk fifo_3_2: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
