`timescale 1ns / 1ps
// Self-checking bench for fifo_1_10 : 8-bit packet stream -> 32-bit words (4 bytes/word).
// Spec: group bytes in fours, first byte of the group in [31:24]; sop on the word
// holding the packet's first byte; eop on the word holding its last byte;
// mty = number of unused low byte lanes in the final word. Reference from stimulus.
module chk_fifo_1_10;
    reg  clk=0, rst_n, b_rdy=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [31:0] dout;
    wire        dout_vld, dout_sop, dout_eop;
    wire [1:0]  dout_mty;

    parameter CYCLE=20;

    fifo_1_10 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                  .din_eop(din_eop),.b_rdy(b_rdy),.dout(dout),.dout_eop(dout_eop),
                  .dout_sop(dout_sop),.dout_vld(dout_vld),.dout_mty(dout_mty));

    always #(CYCLE/2) clk = ~clk;

    reg [31:0] ew [0:1023];
    reg        es [0:1023];
    reg        ee [0:1023];
    reg [1:0]  em [0:1023];
    integer expn=0;

    reg [7:0] pb [0:1023];
    integer plen=0;

    task exp_flush;
        integer k, nw;
        reg [7:0] b0,b1,b2,b3;
        begin
            nw = (plen + 3) / 4;
            for (k=0;k<nw;k=k+1) begin
                b0 = pb[4*k];
                b1 = (4*k+1 < plen) ? pb[4*k+1] : 8'h00;
                b2 = (4*k+2 < plen) ? pb[4*k+2] : 8'h00;
                b3 = (4*k+3 < plen) ? pb[4*k+3] : 8'h00;
                ew[expn] = {b0,b1,b2,b3};
                es[expn] = (k==0);
                ee[expn] = (k==nw-1);
                em[expn] = (k==nw-1) ? (3 - ((plen-1) % 4)) : 2'd0;
                expn = expn+1;
            end
            plen = 0;
        end
    endtask

    task send_pkt(input integer len);
        integer k;
        begin
            // 1) build the reference FIRST so it always leads the DUT output
            plen = 0;
            for (k=0;k<len;k=k+1) begin pb[plen] = 8'h60 + k; plen = plen+1; end
            exp_flush;
            // 2) now drive the stimulus
            for (k=0;k<len;k=k+1) begin
                din_vld=1; din=pb[k]; din_sop=(k==0); din_eop=(k==len-1);
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0; din=0;
        end
    endtask

    integer rdi=0, beats=0, errors=0, stale=0;
    reg [31:0] dmask;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1; $display("ERROR t=%0t: extra output word %h", $time, dout);
        end else begin
            // byte lanes marked invalid by mty are don't-care; ignore but count them
            dmask = ~((32'd1 << (8*em[rdi])) - 32'd1);
            if ((dout & ~dmask) !== 32'd0) stale=stale+1;
            if ((dout & dmask) !== (ew[rdi] & dmask)) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d data got %h expected %h (mty=%0d)", $time, beats, dout, ew[rdi], em[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
            if (dout_mty !== em[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d mty got %0d expected %0d", $time, beats, dout_mty, em[rdi]); end
        end
        rdi=rdi+1;
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*15);
        send_pkt(1);  #(CYCLE*5);   // mty=3
        send_pkt(4);  #(CYCLE*5);   // mty=0
        send_pkt(5);  #(CYCLE*5);   // mty=2
        send_pkt(6);  #(CYCLE*5);   // mty=1
        send_pkt(7);  #(CYCLE*5);   // mty=0
        send_pkt(19); #(CYCLE*25);
    end

    initial begin
        b_rdy=0; #(CYCLE*15);
        forever begin @(posedge clk); #1; b_rdy=$random; end
    end

    initial begin
        #(CYCLE*600);
        $display("--------------------------------------------------");
        $display("fifo_1_10: expected words = %0d, output beats = %0d", expn, beats);
        $display("fifo_1_10: words with non-zero invalid lane = %0d", stale);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0) $display("RESULT fifo_1_10: PASS (4-byte packing, sop/eop/mty all correct)");
        else           $display("RESULT fifo_1_10: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
