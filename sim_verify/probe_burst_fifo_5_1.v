`timescale 1ns / 1ps
// Burst probe for fifo_5_1: for each case it resets, sends K back-to-back packets of L
// bytes (GAP idle cycles apart, 0 = abutting) and reports how the output compares with
// the model - beats, packets out, first divergence, stall. Measures the FIFO-capacity
// limit for an upstream that never pauses (the module has no back-pressure port).
// Same reference model as chk_fifo_5_1.v.
module probe_burst_fifo_5_1;
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
    integer first_err_beat=0, first_err_t=0;

    task E(input [7:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) begin
        if (rst_n && dout_vld) begin
            beats=beats+1;
            if (dout_sop) out_pkts=out_pkts+1;
            if (rdi >= expn) begin
                errors=errors+1;
                if (errors==1) begin first_err_beat=beats; first_err_t=$time; end
            end else begin
                if (dout !== eq[rdi] || dout_sop !== es[rdi] || dout_eop !== ee[rdi]) begin
                    errors=errors+1;
                    if (errors==1) begin
                        first_err_beat=beats; first_err_t=$time;
                        $display("  first divergence t=%0t beat #%0d: got data=%h sop=%b eop=%b, expected data=%h sop=%b eop=%b",
                                 $time, beats, dout, dout_sop, dout_eop, eq[rdi], es[rdi], ee[rdi]);
                    end
                end
            end
            rdi=rdi+1;
        end
    end

    // model the three output packets, then drive the input packet
    task send_pkt(input integer len, input integer base, input integer gap);
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
            if (gap>0) begin
                @(negedge clk); din_vld=0;
                repeat (gap) @(posedge clk);
            end
        end
    endtask

    task run_case(input integer kk, input integer ll, input integer gg);
        integer p;
        begin
            // reset DUT and model
            rst_n=0; din_vld=0;
            repeat(10) @(posedge clk);
            @(negedge clk); rst_n=1;
            repeat(3) @(posedge clk);
            expn=0; rdi=0; beats=0; errors=0; pkgid=0; out_pkts=0;
            first_err_beat=0; first_err_t=0;

            for (p=0;p<kk;p=p+1)
                send_pkt(ll, (p*37+8'h11) & 8'hFF, gg);
            @(negedge clk); din_vld=0;

            repeat (kk*(ll+14) + 2000) @(posedge clk);

            // each packet contributes 3 sop beats (start head, data head, end head)
            $display("BURST K=%0d L=%0d GAP=%0d: model beats=%0d, got %0d, packets out %0d/%0d, divergences %0d  %s",
                     kk, ll, gg, expn, beats, out_pkts/3, kk, errors,
                     (errors==0 && beats==expn && out_pkts==3*kk) ? "PASS" : "FAIL");
            @(negedge clk); din_vld=0;
        end
    endtask

    initial begin
        // id-FIFO (32 deep) limit with minimum-size packets
        run_case(36,   1, 0);
        run_case(37,   1, 0);
        // data-FIFO limit with the longest packets
        run_case(2, 1000, 0);
        run_case(3, 1000, 0);
        run_case(20,  100, 0);
        run_case(21,  100, 0);
        // 260 packets with a gap wide enough that no FIFO overflows: exercises the 8-bit
        // packet id wrapping 255 -> 0
        run_case(260,  1, 16);
        $finish;
    end
endmodule
