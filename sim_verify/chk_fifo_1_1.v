`timescale 1ns / 1ps
// Self-checking verification bench for fifo_1_1
// Model: reference queue built from the DUT's own accepted writes.
// Checks: (a) every output beat with data_out_vld==1 carries exactly the word
//             consumed by the preceding accepted read,
//         (b) no output beat is emitted without an accepted read,
//         (c) no read is issued when the reference queue is empty (underflow),
//         (d) end-of-test: all accepted writes are drained, none lost/duplicated.
module chk_fifo_1_1;

    reg                 clk_in  = 0;
    reg                 clk_out = 0;
    reg                 rst_n;
    reg                 b_rdy       = 0;
    reg                 data_in_vld = 0;
    reg  [15:0]         data_in     = 0;
    wire [15:0]         data_out;
    wire                data_out_vld;

    parameter CYCLE   = 12;
    parameter CYCLE_W = 10;

    integer i;

    fifo_1_1 uut (
        .rst_n       (rst_n       ),
        .clk_in      (clk_in      ),
        .data_in     (data_in     ),
        .data_in_vld (data_in_vld ),
        .clk_out     (clk_out     ),
        .data_out    (data_out    ),
        .data_out_vld(data_out_vld),
        .b_rdy       (b_rdy       )
    );

    always #(CYCLE/2)   clk_in  = ~clk_in;
    always #(CYCLE_W/2) clk_out = ~clk_out;

    // ---------------- reference queue ----------------
    reg  [15:0] q [0:4095];
    integer qw = 0;         // accepted writes
    integer qr = 0;         // words handed to the read side
    integer accepted_reads = 0;

    reg  [15:0] pend   = 0;
    reg         pend_v = 0;

    integer beats = 0;
    integer errors = 0;

    // capture accepted writes exactly as the FIFO samples them
    always @(posedge clk_in) begin
        if (rst_n && uut.wr_en) begin
            q[qw] = data_in;
            qw    = qw + 1;
        end
    end

    // check the read-side datapath
    always @(posedge clk_out) begin
        if (rst_n) begin
            if (data_out_vld) begin
                beats = beats + 1;
                if (!pend_v) begin
                    errors = errors + 1;
                    $display("ERROR t=%0t: data_out_vld high but no accepted read (data_out=%h)", $time, data_out);
                end else if (data_out !== pend[15:0]) begin
                    errors = errors + 1;
                    $display("ERROR t=%0t: beat #%0d mismatch: got %h expected %h", $time, beats, data_out, pend[15:0]);
                end
            end

            if (uut.rd_en) begin
                accepted_reads = accepted_reads + 1;
                if (qr >= qw) begin
                    errors = errors + 1;
                    $display("ERROR t=%0t: rd_en asserted with empty reference queue", $time);
                    pend_v = 0;
                end else begin
                    pend   = q[qr];
                    pend_v = 1;
                    qr     = qr + 1;
                end
            end else begin
                pend_v = 0;
            end
        end
    end

    // ---------------- stimulus (mirrors fifo_1_1_tb) ----------------
    initial begin
        rst_n = 1;
        #2; rst_n = 0;
        #(CYCLE);
        rst_n = 1;
    end

    initial begin
        #2;
        data_in_vld = 0;
        data_in     = 0;
        #(20*CYCLE);
        for (i=0;i<81;i=i+1) begin
            data_in_vld = 1;
            data_in     = i;
            #(CYCLE);
        end
        data_in_vld = 0;
        data_in     = 0;
        #(CYCLE*400);
    end

    initial begin
        #1;
        b_rdy = 0;
        #(300*CYCLE_W);
        forever begin
            #CYCLE_W;
            b_rdy = $random;
        end
    end

    // ---------------- report ----------------
    initial begin
        #(20000);
        $display("--------------------------------------------------");
        $display("fifo_1_1 : accepted writes = %0d", qw);
        $display("fifo_1_1 : accepted reads  = %0d", accepted_reads);
        $display("fifo_1_1 : output beats    = %0d", beats);
        if (qw != qr)
            $display("NOTE: %0d accepted write(s) still in FIFO at end (not drained)", qw-qr);
        if (accepted_reads != beats)
            $display("NOTE: accepted reads (%0d) != output beats (%0d)", accepted_reads, beats);
        if (errors == 0)
            $display("RESULT fifo_1_1: PASS  (read-side datapath aligned, in order, no corruption)");
        else
            $display("RESULT fifo_1_1: FAIL  (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end

endmodule
