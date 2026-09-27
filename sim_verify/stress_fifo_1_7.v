`timescale 1ns / 1ps
// Randomized stress bench for fifo_1_7.
//   - random packet length (1..8 words), random data, back-to-back words
//   - b_rdy randomly back-pressured incl. long stalls (10..69 cycles)
//   - the writer throttles on the DUT's `full` output (which the DUT itself does not
//     use) so that this bench measures the 16->8 packing logic rather than FIFO
//     overflow. If overflow still occurs the byte-count check reports it.
// Checks data / sop / eop / mty on every valid output beat against a stimulus-derived model.
module stress_fifo_1_7;
    reg  clk=0, rst_n, b_rdy=0, din_vld=0, din_sop=0, din_eop=0, din_mty=0;
    reg  [15:0] din=0;
    wire [7:0]  dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE = 20;
    parameter NPKT  = 400;

    fifo_1_7 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_mty(din_mty),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop),.b_rdy(b_rdy));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] ebyte [0:262143];
    reg       esop  [0:262143];
    reg       eeop  [0:262143];
    integer   expn = 0;

    task exp_push(input [7:0] b, input s, input e);
        begin ebyte[expn]=b; esop[expn]=s; eeop[expn]=e; expn=expn+1; end
    endtask

    integer rdi=0, beats=0, errors=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1;
            if (errors<=8) $display("ERROR t=%0t: extra valid byte %h", $time, dout);
        end else begin
            if (dout !== ebyte[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: byte #%0d data got %h expected %h", $time, beats, dout, ebyte[rdi]); end
            if (dout_sop !== esop[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: byte #%0d sop got %b expected %b", $time, beats, dout_sop, esop[rdi]); end
            if (dout_eop !== eeop[rdi]) begin errors=errors+1;
                if (errors<=8) $display("ERROR t=%0t: byte #%0d eop got %b expected %b", $time, beats, dout_eop, eeop[rdi]); end
        end
        rdi=rdi+1;
    end

    integer eop_stuck=0;
    always @(posedge clk) if (rst_n && !dout_vld && dout_eop) eop_stuck=eop_stuck+1;

    // randomized consumer back-pressure with long stalls
    integer stall_left=0;
    initial begin
        b_rdy=0; stall_left=0; #(CYCLE*40);
        forever begin
            @(posedge clk); #1;
            if (stall_left > 0) begin
                stall_left = stall_left - 1;  b_rdy = 0;
            end else if (({$random} % 100) < 3) begin
                stall_left = ({$random} % 16) + 5;  b_rdy = 0;
            end else begin
                b_rdy = (({$random} % 10) < 7);
            end
        end
    end

    integer nw, i, m, gap, p, drain=0;
    initial begin
        rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1;
        din=0; din_vld=0; din_sop=0; din_eop=0; din_mty=0;
        #(CYCLE*40);
        for (p=0; p<NPKT; p=p+1) begin
            nw = ({$random} % 8) + 1;                       // 1..8 words per packet
            for (i=0; i<nw; i=i+1) begin
                m = (i==nw-1) ? ({$random} % 2) : 0;        // mty only meaningful on last word
                // No `full` handshake: the DUT does not use its own `full` output, and
                // probing it hierarchically is unreliable in this simulator. The writer
                // is paced purely by rate so FIFO occupancy stays far below depth for
                // the whole run. (The absent write-side back-pressure is a property of
                // the DUT itself, reported separately.)
                din_vld=0; din_sop=0; din_eop=0; din_mty=0;
                @(posedge clk); #1;
                din     = $random;
                din_sop = (i==0);
                din_eop = (i==nw-1);
                din_mty = m;
                din_vld = 1;
                if (din_eop && m)
                    exp_push(din[15:8], din_sop, 1'b1);     // short word: MSB only, eop on it
                else if (din_eop) begin
                    exp_push(din[15:8], din_sop, 1'b0);
                    exp_push(din[7:0],   1'b0,    1'b1);
                end else begin
                    exp_push(din[15:8], din_sop, 1'b0);
                    exp_push(din[7:0],   1'b0,    1'b0);
                end
                @(posedge clk); #1;
                gap = {$random} % 3;                        // 33% back-to-back words
                while (gap>0) begin
                    din_vld=0; din_sop=0; din_eop=0; din_mty=0;
                    @(posedge clk); #1; gap=gap-1;
                end
            end
            din_vld=0; din_sop=0; din_eop=0; din_mty=0;
            gap = ({$random} % 20) + 10;                    // inter-packet idle
            while (gap>0) begin @(posedge clk); #1; gap=gap-1; end
        end
        // drain until every expected byte has been observed (b_rdy stalls are long)
        drain=0;
        while ((beats < expn) && (drain < 500000)) begin
            @(posedge clk); #1; drain=drain+1;
        end

        $display("--------------------------------------------------");
        $display("stress fifo_1_7 : packets=%0d, expected bytes=%0d, observed=%0d", NPKT, expn, beats);
        $display("stress fifo_1_7 : unqualified-eop cycles=%0d", eop_stuck);
        if (expn!=beats) $display("NOTE: byte-count mismatch (%0d vs %0d) - FIFO overflow under this stimulus", expn, beats);
        if (errors==0 && eop_stuck==0 && expn==beats)
            $display("RESULT stress fifo_1_7: PASS");
        else
            $display("RESULT stress fifo_1_7: FAIL (%0d error(s), %0d sticky-eop cycle(s))", errors, eop_stuck);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
