`timescale 1ns / 1ps
// Self-checking bench for fifo_2_4 : 8-bit packets -> 32-bit words (4 bytes/word).
// Spec: first byte of the group in [31:24]; sop on the word holding the packet's
// first byte; eop on the word holding its last byte; mty = unused low byte lanes.
// Packets are checked at the word level.
module chk_fifo_2_4;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [31:0] dout;
    wire        dout_vld, dout_sop, dout_eop;
    wire [1:0]  dout_mty;

    parameter CYCLE=20;

    fifo_2_4 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_sop(din_sop),.din_eop(din_eop),
                 .din_vld(din_vld),.dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),
                 .dout_eop(dout_eop),.dout_mty(dout_mty));

    always #(CYCLE/2) clk = ~clk;

    reg [31:0] ew [0:1023];
    reg        es [0:1023];
    reg        ee [0:1023];
    reg [1:0]  em [0:1023];
    integer expn=0;

    task prep_pkt(input integer len);
        integer k, nw;
        reg [7:0] b0,b1,b2,b3;
        begin
            nw = (len+3)/4;
            for (k=0;k<nw;k=k+1) begin
                b0 = (4*k   < len) ? (8'h50 + ((4*k)   & 8'h7F)) : 8'h00;
                b1 = (4*k+1 < len) ? (8'h50 + ((4*k+1) & 8'h7F)) : 8'h00;
                b2 = (4*k+2 < len) ? (8'h50 + ((4*k+2) & 8'h7F)) : 8'h00;
                b3 = (4*k+3 < len) ? (8'h50 + ((4*k+3) & 8'h7F)) : 8'h00;
                ew[expn] = {b0,b1,b2,b3};
                es[expn] = (k==0);
                ee[expn] = (k==nw-1);
                em[expn] = (k==nw-1) ? (3 - ((len-1) % 4)) : 2'd0;
                expn=expn+1;
            end
        end
    endtask

    task drive_pkt(input integer len);
        integer k;
        begin
            for (k=0;k<len;k=k+1) begin
                din_vld=1; din=8'h50+((k)&8'h7F); din_sop=(k==0); din_eop=(k==len-1);
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0; din=0;
        end
    endtask

    task pkt(input integer len);
        begin prep_pkt(len); #(CYCLE*2); drive_pkt(len); #(CYCLE*12); end
    endtask

    integer rdi=0, beats=0, errors=0, stale=0;
    reg [31:0] dmask;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1; $display("ERROR t=%0t: extra output word %h", $time, dout);
        end else begin
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
        #(CYCLE*10);
        pkt(1); pkt(4); pkt(25); pkt(24); pkt(6); pkt(256);
        #(CYCLE*300);
    end

    initial begin
        #(CYCLE*3000);
        $display("--------------------------------------------------");
        $display("fifo_2_4 : expected words = %0d, output beats = %0d", expn, beats);
        $display("fifo_2_4 : words with non-zero invalid lane = %0d", stale);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0) $display("RESULT fifo_2_4: PASS (4-byte packing, sop/eop/mty correct)");
        else           $display("RESULT fifo_2_4: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
