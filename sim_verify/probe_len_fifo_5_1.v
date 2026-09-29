`timescale 1ns / 1ps
// Packet-length sweep for fifo_5_1: one packet per case (reset between cases), so the
// only limit exercised is the data FIFO's 512-word capacity. The stated spec tops out at
// 1000 bytes = 250 words; this finds where the module actually stops forwarding.
module probe_len_fifo_5_1;
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
    integer expn=0, rdi=0, beats=0, errors=0, pkgid=0, out_pkts=0;

    task E(input [7:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (dout_sop) out_pkts=out_pkts+1;
        if (rdi >= expn) errors=errors+1;
        else if (dout !== eq[rdi] || dout_sop !== es[rdi] || dout_eop !== ee[rdi]) begin
            errors=errors+1;
            if (errors==1) $display("    first divergence t=%0t beat #%0d: got data=%h sop=%b eop=%b, expected data=%h sop=%b eop=%b",
                                    $time, beats, dout, dout_sop, dout_eop, eq[rdi], es[rdi], ee[rdi]);
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

    task run_len(input integer len);
        begin
            rst_n=0; din_vld=0;
            repeat(10) @(posedge clk);
            @(negedge clk); rst_n=1;
            repeat(3) @(posedge clk);
            expn=0; rdi=0; beats=0; errors=0; pkgid=0; out_pkts=0;

            send_pkt(len, 8'h40);
            repeat (len + 3*14 + 2000) @(posedge clk);

            $display("LEN %0d bytes (%0d words): model beats=%0d, got %0d, packets out %0d, divergences %0d  %s",
                     len, (len+3)/4, expn, beats, out_pkts/3, errors,
                     (errors==0 && beats==expn && out_pkts==3) ? "PASS" : "FAIL");
            @(negedge clk); din_vld=0;
        end
    endtask

    initial begin
        run_len(1000);
        run_len(1001);
        run_len(1500);
        run_len(2048);
        run_len(2049);
        run_len(3000);
        $finish;
    end
endmodule
