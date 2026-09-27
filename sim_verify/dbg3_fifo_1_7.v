`timescale 1ns / 1ps
// Sequence-comparison diagnostic for fifo_1_7.
// Runs a small random stimulus and prints expected vs observed byte streams side by side
// so the first divergence is directly visible.
//   USE_RDY = 0 : b_rdy held high
//   USE_RDY = 1 : b_rdy randomly back-pressured with long stalls
module dbg3_fifo_1_7;
    parameter CYCLE   = 20;
    parameter NPKT    = 25;
    parameter USE_RDY = 1;

    reg  clk=0, rst_n, b_rdy=1, din_vld=0, din_sop=0, din_eop=0, din_mty=0;
    reg  [15:0] din=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    fifo_1_7 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop),.b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] ebyte [0:8191];  reg esop [0:8191];  reg eeop [0:8191];
    reg [7:0] obyte [0:8191];  reg osop [0:8191];  reg oeop [0:8191];
    integer   expn=0, obsn=0;

    task exp_push(input [7:0] b, input s, input e);
        begin ebyte[expn]=b; esop[expn]=s; eeop[expn]=e; expn=expn+1; end
    endtask

    always @(posedge clk) if (rst_n && dout_vld) begin
        obyte[obsn]=dout; osop[obsn]=dout_sop; oeop[obsn]=dout_eop; obsn=obsn+1;
    end

    integer stall_left=0;
    initial begin
        b_rdy = (USE_RDY==0) ? 1'b1 : 1'b0;
        if (USE_RDY!=0) begin
            #(CYCLE*20);
            forever begin
                @(posedge clk); #1;
                if (stall_left > 0) begin
                    stall_left = stall_left - 1;  b_rdy = 0;
                end else if (({$random} % 100) < 8) begin
                    stall_left = ({$random} % 60) + 10;  b_rdy = 0;
                end else begin
                    b_rdy = (({$random} % 10) < 7);
                end
            end
        end
    end

    integer nw, i, m, gap, p, throttle=0, j, mism=0, drain=0;
    initial begin
        rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1;
        din=0; din_vld=0; din_sop=0; din_eop=0; din_mty=0;
        #(CYCLE*20);
        for (p=0; p<NPKT; p=p+1) begin
            nw = ({$random} % 8) + 1;
            for (i=0; i<nw; i=i+1) begin
                m = (i==nw-1) ? ({$random} % 2) : 0;
                while (uut.full) begin
                    din_vld=0; din_sop=0; din_eop=0; din_mty=0;
                    @(posedge clk); #1; throttle=throttle+1;
                end
                din_vld=0; din_sop=0; din_eop=0; din_mty=0;
                @(posedge clk); #1;                 // margin cycle, din_vld low
                din = $random; din_sop=(i==0); din_eop=(i==nw-1); din_mty=m; din_vld=1;
                if (din_eop && m)
                    exp_push(din[15:8], din_sop, 1'b1);
                else if (din_eop) begin
                    exp_push(din[15:8], din_sop, 1'b0);
                    exp_push(din[7:0],   1'b0,    1'b1);
                end else begin
                    exp_push(din[15:8], din_sop, 1'b0);
                    exp_push(din[7:0],   1'b0,    1'b0);
                end
                @(posedge clk); #1;                 // DUT samples the word on this edge
                din_vld=0; din_sop=0; din_eop=0; din_mty=0;
                gap = {$random} % 3;
                while (gap>0) begin
                    @(posedge clk); #1; gap=gap-1;
                end
            end
            din_vld=0; din_sop=0; din_eop=0; din_mty=0;
            gap = ({$random} % 12) + 2;
            while (gap>0) begin @(posedge clk); #1; gap=gap-1; end
        end
        // drain until every expected byte has been observed (b_rdy stalls are long)
        drain=0;
        while ((obsn < expn) && (drain < 200000)) begin
            @(posedge clk); #1; drain=drain+1;
        end

        $display("=== USE_RDY=%0d  packets=%0d  expected=%0d observed=%0d  throttle=%0d ===",
                 USE_RDY, NPKT, expn, obsn, throttle);
        for (j=0; j<((expn>24)?24:expn); j=j+1) begin
            if (j < obsn) begin
                if ((obyte[j]!==ebyte[j]) || (osop[j]!==esop[j]) || (oeop[j]!==eeop[j])) begin
                    mism=mism+1;
                    $display("  [%0d] exp d=%h s=%b e=%b | got d=%h s=%b e=%b   <== MISMATCH",
                             j, ebyte[j], esop[j], eeop[j], obyte[j], osop[j], oeop[j]);
                end else begin
                    $display("  [%0d] exp d=%h s=%b e=%b | got d=%h s=%b e=%b",
                             j, ebyte[j], esop[j], eeop[j], obyte[j], osop[j], oeop[j]);
                end
            end else begin
                $display("  [%0d] exp d=%h s=%b e=%b | got <none>", j, ebyte[j], esop[j], eeop[j]);
            end
        end
        if (mism==0 && expn==obsn) $display("RESULT dbg3 (USE_RDY=%0d): CLEAN", USE_RDY);
        else $display("RESULT dbg3 (USE_RDY=%0d): %0d mismatch(es) in first 24, counts %0d/%0d",
                      USE_RDY, mism, expn, obsn);
        $finish;
    end
endmodule
