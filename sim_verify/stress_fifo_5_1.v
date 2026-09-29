`timescale 1ns / 1ps
// Random stress for fifo_5_1.
// 20 packets with random lengths in 1..1000 (biased towards the range ends and the
// len%4 corners), random data, random gaps. Each packet is driven fully and then drained
// before the next one is sent, so the module's FIFO capacity is deliberately not the
// subject here - this checks length / mty / data-path handling and the packet id
// sequence across many packets. Same reference model as chk_fifo_5_1.v, and the same
// falling-edge stimulus rule (driving on posedge races the DUT's sampling edge).
module stress_fifo_5_1;
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

    reg [7:0] eq [0:131071]; reg es [0:131071]; reg ee [0:131071];
    integer expn=0, rdi=0, beats=0, errors=0, pkgid=0, bytes=0;

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
            bytes = bytes+len;

            w = 0;
            while (w*4 < len) begin
                nb = len - w*4; if (nb > 4) nb = 4;
                wd = 32'h0;
                for (j=0;j<nb;j=j+1) wd[31-j*8 -: 8] = (base+w*4+j)&8'hFF;
                mt = (nb==4) ? 2'd0 : (4-nb);
                @(negedge clk);
                din=wd; din_sop=(w==0); din_eop=((w+1)*4>=len); din_mty=mt; din_vld=1;
                @(posedge clk);
                w = w+1;
            end
            @(negedge clk); din_vld=0;
        end
    endtask

    task wait_idle;
        integer n;
        begin
            n=0;
            while ((rdi < expn || dout_vld) && n < 40000) begin @(posedge clk); n=n+1; end
            if (n>=40000) begin errors=errors+1;
                $display("ERROR t=%0t: timeout draining output (rdi=%0d expn=%0d)", $time, rdi, expn); end
            repeat (4) @(posedge clk);
        end
    endtask

    integer p, len, base, r, gap, seed=32'h12345678;
    initial begin
        rst_n=0;
        repeat(10) @(posedge clk);
        @(negedge clk); rst_n=1;
        repeat(3) @(posedge clk);

        for (p=0;p<20;p=p+1) begin
            r = ({$random(seed)} % 100); if (r<0) r=-r;
            if (r < 25)      len = 1   + ({$random(seed)} % 4);       // 1..4
            else if (r < 50) len = 997 + ({$random(seed)} % 4);       // 997..1000
            else begin len = 1 + ({$random(seed)} % 1000); if (len>1000) len=1000; end
            base = ({$random(seed)} % 256); if (base<0) base=-base;
            gap  = ({$random(seed)} % 30);  if (gap<0)  gap=-gap;
            $display("packet %0d: len=%0d base=%h", p, len, base);
            send_pkt(len, base);
            wait_idle();
            repeat (gap) @(posedge clk);
        end

        wait_idle();
        if (rdi < expn) begin errors=errors+1;
            $display("ERROR: %0d expected beats never arrived", expn-rdi); end
        if (errors==0)
            $display("PASS: %0d packets, %0d data bytes, %0d beats checked against the model, 0 errors",
                     pkgid, bytes, beats);
        else
            $display("FAIL: %0d packets, %0d beats, %0d errors", pkgid, beats, errors);
        $finish;
    end
endmodule
