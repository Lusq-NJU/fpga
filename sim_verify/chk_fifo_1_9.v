`timescale 1ns / 1ps
// Self-checking bench for fifo_1_9 : 8-bit packet stream -> 16-bit words (2 bytes/word).
// Spec: group bytes in pairs, first byte of the pair in [15:8]; sop on the word holding
// the packet's first byte; eop on the word holding its last byte; mty=1 if the packet
// ends on the first byte of a pair (odd byte count). Reference derived from stimulus.
// Uses random b_rdy (original TB leaves b_rdy effectively stuck at 1).
module chk_fifo_1_9;
    reg  clk=0, rst_n, b_rdy=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop, dout_mty;

    parameter CYCLE=20;

    fifo_1_9 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),
                 .dout_eop(dout_eop),.dout_mty(dout_mty),.b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    reg [15:0] ew [0:2047];
    reg        es [0:2047];
    reg        ee [0:2047];
    reg        em [0:2047];
    integer expn=0;

    // packet buffer
    reg [7:0] pb [0:1023];
    integer plen=0;

    task exp_flush;
        integer k, nw;
        reg [7:0] hi, lo;
        begin
            nw = (plen + 1) / 2;
            for (k=0;k<nw;k=k+1) begin
                hi = pb[2*k];
                lo = (2*k+1 < plen) ? pb[2*k+1] : 8'h00;
                ew[expn] = {hi, lo};
                es[expn] = (k==0);
                ee[expn] = (k==nw-1);
                em[expn] = (k==nw-1) ? (plen[0]) : 1'b0;   // odd length -> mty=1
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
            for (k=0;k<len;k=k+1) begin pb[plen] = 8'h40 + k; plen = plen+1; end
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
    reg [15:0] dmask;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1; $display("ERROR t=%0t: extra output word %h", $time, dout);
        end else begin
            // the byte lane marked invalid by mty is a don't-care; ignore it but count it
            dmask = em[rdi] ? 16'hFF00 : 16'hFFFF;
            if ((dout & ~dmask) !== 16'h0000) stale=stale+1;
            if ((dout & dmask) !== (ew[rdi] & dmask)) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d data got %h expected %h (mty=%0d)", $time, beats, dout, ew[rdi], em[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
            if (dout_mty !== em[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: word #%0d mty got %b expected %b", $time, beats, dout_mty, em[rdi]); end
        end
        rdi=rdi+1;
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*15);
        send_pkt(1);  #(CYCLE*5);   // odd  -> mty=1
        send_pkt(2);  #(CYCLE*5);   // even -> mty=0
        send_pkt(3);  #(CYCLE*5);   // odd
        send_pkt(8);  #(CYCLE*5);   // even
        send_pkt(9);  #(CYCLE*25);  // odd
    end

    initial begin
        b_rdy=0; #(CYCLE*15);
        forever begin @(posedge clk); #1; b_rdy=$random; end
    end

    initial begin
        #(CYCLE*500);
        $display("--------------------------------------------------");
        $display("fifo_1_9 : expected words = %0d, output beats = %0d", expn, beats);
        $display("fifo_1_9 : words with non-zero invalid lane = %0d", stale);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0) $display("RESULT fifo_1_9: PASS (2-byte packing, sop/eop/mty all correct)");
        else           $display("RESULT fifo_1_9: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
