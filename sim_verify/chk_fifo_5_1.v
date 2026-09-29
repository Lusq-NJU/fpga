`timescale 1ns / 1ps
// Self-checking bench for fifo_5_1.
// Spec (confirmed with the designer):
//   * upstream packets are 1..1000 BYTES, sent as 32-bit words: din_sop on the first word,
//     din_eop on the last, din_mty = number of invalid LOW bytes of the last word (so the
//     valid bytes are its high ones and they come out high byte first);
//   * for each received packet the module emits, in order:
//       start packet : 55 55 55 d5 d5 <id>   (6 bytes; sop on the 1st, eop on the 6th)
//       data  packet : the packet's data bytes (sop on the 1st, eop on the last)
//       end   packet : 55 55 55 fd fd <id>   (6 bytes; sop on the 1st, eop on the 6th)
//     where <id> counts packets from 0 (8-bit, wraps);
//   * nothing may be emitted while no packet is being forwarded.
// The checker compares every beat with dout_vld=1 against the expected queue, so both a
// missing beat and a phantom one fail; the final beat count must match exactly.
//
// Stimulus is driven on the FALLING edge: driving on posedge races the DUT's sampling
// edge and was measured to advance the packet id by an extra count.
module chk_fifo_5_1;
    reg  clk=0, rst_n=0, din_vld=0, din_sop=0, din_eop=0;
    reg  [31:0] din=0;
    reg  [1:0]  din_mty=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_5_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] eq [0:65535]; reg es [0:65535]; reg ee [0:65535];
    integer expn=0, rdi=0, beats=0, errors=0, pkgid=0;

    task E(input [7:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=10) $display("ERROR t=%0t: extra beat data=%h sop=%b eop=%b - no beat belongs here",
                                     $time, dout, dout_sop, dout_eop);
        end else begin
            if (dout     !== eq[rdi]) begin errors=errors+1;
                if (errors<=10) $display("ERROR t=%0t: beat #%0d data got %h expected %h", $time, beats, dout, eq[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                if (errors<=10) $display("ERROR t=%0t: beat #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=10) $display("ERROR t=%0t: beat #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
        end
        rdi=rdi+1;
    end

    // model the three output packets, then drive the input packet: 'len' data bytes with
    // values (base+k) mod 256 packed high byte first into 32-bit words
    task send_pkt(input integer len, input integer base);
        integer k, w, nb, j;
        reg [31:0] wd;
        reg [1:0]  mt;
        begin
            E(8'h55,1'b1,1'b0); E(8'h55,1'b0,1'b0); E(8'h55,1'b0,1'b0);
            E(8'hd5,1'b0,1'b0); E(8'hd5,1'b0,1'b0); E(pkgid[7:0],1'b0,1'b1);
            for (k=0;k<len;k=k+1)
                E((base+k)&8'hFF, (k==0), (k==len-1));
            E(8'h55,1'b1,1'b0); E(8'h55,1'b0,1'b0); E(8'h55,1'b0,1'b0);
            E(8'hfd,1'b0,1'b0); E(8'hfd,1'b0,1'b0); E(pkgid[7:0],1'b0,1'b1);
            pkgid = pkgid+1;

            w = 0;
            while (w*4 < len) begin
                nb = len - w*4; if (nb > 4) nb = 4;
                wd = 32'h0;
                for (j=0;j<nb;j=j+1) wd[31-j*8 -: 8] = (base+w*4+j)&8'hFF;
                mt = (nb==4) ? 2'd0 : (4-nb);
                @(negedge clk);                     // drive off the sampling edge
                din=wd; din_sop=(w==0); din_eop=((w+1)*4>=len); din_mty=mt; din_vld=1;
                @(posedge clk);                     // DUT samples this word
                w = w+1;
            end
            @(negedge clk); din_vld=0;
        end
    endtask

    // let the output drain: everything expected so far must arrive, then a few idle beats
    task wait_idle;
        integer n;
        begin
            n=0;
            while ((rdi < expn || dout_vld) && n < 20000) begin @(posedge clk); n=n+1; end
            if (n>=20000) begin errors=errors+1;
                $display("ERROR t=%0t: timeout draining output (rdi=%0d expn=%0d)", $time, rdi, expn); end
            repeat (4) @(posedge clk);
        end
    endtask

    initial begin
        rst_n=0;
        repeat(10) @(posedge clk);
        @(negedge clk); rst_n=1;
        repeat(3) @(posedge clk);

        // 1-byte minimum, then the mty corner cases (len mod 4 = 1/2/3/0)
        send_pkt(1, 8'h20); wait_idle();
        send_pkt(2, 8'h30); wait_idle();
        send_pkt(3, 8'h40); wait_idle();
        send_pkt(4, 8'h50); wait_idle();
        send_pkt(5, 8'h60); wait_idle();
        send_pkt(7, 8'h70); wait_idle();
        send_pkt(8, 8'h80); wait_idle();
        // mid sizes
        send_pkt(63, 8'h90); wait_idle();
        send_pkt(64, 8'ha0); wait_idle();
        send_pkt(65, 8'hb0); wait_idle();
        send_pkt(255, 8'hc0); wait_idle();
        send_pkt(256, 8'hd0); wait_idle();
        send_pkt(257, 8'he0); wait_idle();
        // top of the stated range
        send_pkt(999, 8'h00); wait_idle();
        send_pkt(1000, 8'h10); wait_idle();

        // trailing check: no beat may be left over
        wait_idle();
        if (rdi < expn) begin errors=errors+1;
            $display("ERROR: %0d expected beats never arrived", expn-rdi); end
        if (errors==0)
            $display("PASS: %0d packets, %0d beats checked against the model, 0 errors", pkgid, beats);
        else
            $display("FAIL: %0d packets, %0d beats, %0d errors", pkgid, beats, errors);
        $finish;
    end
endmodule
