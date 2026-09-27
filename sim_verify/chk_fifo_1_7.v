`timescale 1ns / 1ps
// Self-checking bench for fifo_1_7 : 16-bit word stream (sop/eop/mty) -> 8-bit bytes.
// Spec: per word emit MSB byte then LSB byte (first byte -> [15:8]).
//   eop=0        -> both bytes valid
//   eop=1,mty=0  -> both bytes valid, eop on the LSB byte
//   eop=1,mty=1  -> only the MSB byte valid, eop on it
// Reference derived from stimulus; random b_rdy (original TB leaves it stuck at 1
// and hardwires din_mty=1, so the mty=0 path was never exercised).
module chk_fifo_1_7;
    reg  clk=0, rst_n, b_rdy=0, din_vld=0, din_sop=0, din_eop=0, din_mty=0;
    reg  [15:0] din=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_1_7 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
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

    task send_word(input [15:0] d, input s, input e, input m);
        begin
            din=d; din_sop=s; din_eop=e; din_mty=m; din_vld=1;
            if (e && m) begin
                exp_push(d[15:8], s, 1'b1);            // only MSB byte valid
            end else if (e) begin
                exp_push(d[15:8], s,    1'b0);
                exp_push(d[7:0],  1'b0, 1'b1);
            end else begin
                exp_push(d[15:8], s,    1'b0);
                exp_push(d[7:0],  1'b0, 1'b0);
            end
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

    // dout_eop has no `else` branch in the DUT -> it latches. Detect unqualified eop.
    integer eop_stuck=0;
    always @(posedge clk) if (rst_n && !dout_vld && dout_eop) begin
        eop_stuck=eop_stuck+1;
        if (eop_stuck<4) $display("BUG t=%0t: dout_eop==1 while dout_vld==0 (sticky/unqualified eop)", $time);
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0; din_mty=0;
        #(CYCLE*30);
        // pkt1: 3 words, last mty=1 -> 5 bytes
        send_word(16'h1122,1,0,0); send_word(16'h3344,0,0,0); send_word(16'h5566,0,1,1);
        din_vld=0; din_sop=0; din_eop=0; #(CYCLE*8);
        // pkt2: 2 words, last mty=0 -> 4 bytes
        send_word(16'h7788,1,0,0); send_word(16'h99AA,0,1,0);
        din_vld=0; din_sop=0; din_eop=0; #(CYCLE*8);
        // pkt3: 4 words, last mty=1 -> 7 bytes
        send_word(16'hBBCC,1,0,0); send_word(16'hDDEE,0,0,0);
        send_word(16'hF0F1,0,0,0); send_word(16'hF2F3,0,1,1);
        din_vld=0; din_sop=0; din_eop=0; #(CYCLE*40);
    end

    initial begin
        b_rdy=0; #(CYCLE*30);
        forever begin @(posedge clk); #1; b_rdy=$random; end
    end

    initial begin
        #(CYCLE*500);
        $display("--------------------------------------------------");
        $display("fifo_1_7 : expected valid bytes = %0d, observed = %0d", expn, beats);
        $display("fifo_1_7 : unqualified-eop cycles = %0d", eop_stuck);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0 && eop_stuck==0) $display("RESULT fifo_1_7: PASS (mty honoured both ways, MSB-first)");
        else $display("RESULT fifo_1_7: FAIL (%0d error(s), %0d sticky-eop cycle(s))", errors, eop_stuck);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
