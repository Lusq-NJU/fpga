`timescale 1ns / 1ps
// Self-checking bench for fifo_3_1 : 8-bit packet stream buffered through a 10x1024 sync
// FIFO, with a water-mark write gate (a packet is only accepted when data_count<=800 at
// its sop) and a b_rdy read handshake.
//
// Traffic is paced so occupancy stays far below the 800 mark and nothing gets gated off,
// which lets us check the datapath: byte order, sop/eop placement, and the two-cycle
// output latency that compensates the standard (non-FWFT) FIFO's read delay.
module stress_fifo_3_1;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    reg  b_rdy=1;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE = 20;
    parameter NPKT  = 10;

    fifo_3_1 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop),
                 .b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] eq [0:8191]; reg es [0:8191]; reg ee [0:8191];
    integer expn=0, rdi=0, beats=0, errors=0;

    task E(input [7:0] d, input s, input e);
        begin eq[expn]=d; es[expn]=s; ee[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: extra byte %h", $time, dout);
        end else begin
            if (dout     !== eq[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: byte #%0d got %h expected %h", $time, beats, dout, eq[rdi]); end
            if (dout_sop !== es[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: byte #%0d sop got %b expected %b", $time, beats, dout_sop, es[rdi]); end
            if (dout_eop !== ee[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: byte #%0d eop got %b expected %b", $time, beats, dout_eop, ee[rdi]); end
        end
        rdi=rdi+1;
    end

    // b_rdy: mostly ready, with occasional stalls - enough to exercise the handshake
    // without letting occupancy build toward the 800 write gate.
    integer stall=0;
    initial begin
        b_rdy=1;
        forever begin
            @(posedge clk); #1;
            if (stall>0) begin stall=stall-1; b_rdy=0; end
            else if (({$random}%100) < 10) begin
                stall = ({$random}%10) + 2;
                b_rdy = 0;
            end
            else b_rdy = 1;
        end
    end

    integer p, k, len, nv=8'h10;
    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*10);
        for (p=0;p<NPKT;p=p+1) begin
            len = ({$random} % 32) + 1;              // 1..32 bytes
            for (k=0;k<len;k=k+1) begin
                din = nv; nv = nv + 1;
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                E(din, din_sop, din_eop);
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0;
            #(CYCLE*20);                             // let the FIFO drain between packets
        end
        #(CYCLE*200);
        $display("--------------------------------------------------");
        $display("stress fifo_3_1 : packets=%0d, expected bytes=%0d, observed=%0d", NPKT, expn, beats);
        if (expn!=beats) $display("NOTE: byte-count mismatch (%0d vs %0d)", expn, beats);
        if (errors==0 && expn==beats)
            $display("RESULT stress fifo_3_1: PASS (order, sop/eop, handshake all correct)");
        else
            $display("RESULT stress fifo_3_1: FAIL (%0d error(s), %0d/%0d bytes)", errors, beats, expn);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
