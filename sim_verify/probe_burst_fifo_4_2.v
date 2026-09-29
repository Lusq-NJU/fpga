`timescale 1ns / 1ps
// Burst probe for fifo_4_2.  The module has no back-pressure: the output needs L+2 cycles
// per packet while the input can hand over L words in L cycles, so a perfectly back-to-back
// stream makes the input outrun the output.  Two things can then overflow:
//   * short packets (< ~1.5 words average) fill the 32-deep header/checksum FIFOs first;
//   * big packets fill the 258-word data FIFO first (occupancy grows by ~2 words per packet).
// Each group is sent as abutting packets with gap 0, reset before, and scored like chk.
module probe_burst_fifo_4_2;
    reg  clk=0, rst_n=1, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_4_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    reg [15:0] eq [0:65535]; reg es [0:65535]; reg ee [0:65535];
    integer expn=0, rdi=0, beats=0, errors=0;

    task E(input [15:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=3) $display("   ERROR t=%0t: extra beat data=%h sop=%b eop=%b", $time, dout, dout_sop, dout_eop);
        end else begin
            if (dout     !== eq[rdi]) begin errors=errors+1;
                if (errors<=3) $display("   ERROR t=%0t: beat #%0d data got %h expected %h", $time, beats, dout, eq[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                if (errors<=3) $display("   ERROR t=%0t: beat #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=3) $display("   ERROR t=%0t: beat #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
        end
        rdi=rdi+1;
    end

    function [15:0] fold(input [15:0] a, input [15:0] b);
        reg [16:0] s;
        begin
            s = {1'b0,a} + {1'b0,b};
            if (s[16]) s = s - 17'h0FFFF;
            fold = s[15:0];
        end
    endfunction

    function [15:0] wgen(input integer p, input integer i);
        begin wgen = 16'h1000 + (p % 8)*16'h100 + i; end
    endfunction

    // K abutting packets of L words each, gap 0, reset before, drain after
    task run_group(input integer K, input integer L, input integer G);
        integer i, p;
        reg [15:0] r;
        begin
            din_vld=0; din_sop=0; din_eop=0;
            rst_n=0; #(CYCLE); rst_n=1; #(CYCLE*4);
            expn=0; rdi=0; beats=0; errors=0;
            for (p=0;p<K;p=p+1) begin
                r = wgen(p,0);
                for (i=1;i<L;i=i+1) r = fold(r, wgen(p,i));
                E({8'd0,(L*2)%256}, 1'b1, 1'b0);      // header: length in bytes
                E(r,                1'b0, 1'b0);      // checksum
                for (i=0;i<L;i=i+1) begin
                    din = wgen(p,i);
                    din_sop = (i==0); din_eop = (i==L-1); din_vld = 1;
                    E(din, 1'b0, din_eop);
                    @(posedge clk); #1;
                end
                din_vld=0; din_sop=0; din_eop=0;
                if (G>0) #(CYCLE*G);
            end
            din_vld=0; din_sop=0; din_eop=0;
            #(CYCLE*(2*K+300));      // generous drain: the backlog is ~2 words per packet
            $display("burst of %0d packets of %0d words (%0d bytes, gap %0d cycles): expected %0d beats, observed %0d, errors %0d -> %s",
                     K, L, L*2, G, expn, beats, errors, (errors==0 && expn==beats) ? "PASS" : "FAIL");
        end
    endtask

    initial begin
        #(CYCLE*5);
        $display("probe_burst fifo_4_2: back-to-back bursts, gap 0 (no back-pressure anywhere)");
        $display("--- short packets: who fills up first, header/checksum FIFOs or data FIFO");
        run_group(20, 1, 0);
        run_group(44, 1, 0);
        run_group(48, 1, 0);
        run_group(64, 1, 0);
        $display("--- packets at the use-case maximum, 125 words = 250 bytes");
        run_group(20, 125, 0);
        run_group(30, 125, 0);
        run_group(40, 125, 0);
        run_group(44, 125, 0);
        run_group(48, 125, 0);
        run_group(56, 125, 0);
        run_group(64, 125, 0);
        $display("--- same traffic with a few idle cycles between packets");
        run_group(100, 125, 4);
        run_group(100, 1, 4);
        $display("--------------------------------------------------");
        $display("probe_burst fifo_4_2: done");
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
