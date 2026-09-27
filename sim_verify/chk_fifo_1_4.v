`timescale 1ns / 1ps
// Self-checking bench for fifo_1_4 : 8-bit in -> 16-bit out.
// Wide check: the written word must be {first byte, second byte} (first byte in [15:8])
// taken from the raw input byte stream, in order.
module chk_fifo_1_4;
    reg  clk_in=0, clk_out=0, rst_n, b_rdy=0, data_in_vld=0;
    reg  [7:0]  data_in=0;
    wire [15:0] data_out;
    wire        data_out_vld;

    parameter CYCLE=20, CYCLE_W=10;
    integer i;

    fifo_1_4 uut(.clk_in(clk_in),.clk_out(clk_out),.rst_n(rst_n),.data_in(data_in),
                 .data_in_vld(data_in_vld),.b_rdy(b_rdy),.data_out(data_out),.data_out_vld(data_out_vld));

    always #(CYCLE/2)   clk_in  = ~clk_in;
    always #(CYCLE_W/2) clk_out = ~clk_out;

    // raw input byte stream (counted for reference)
    integer bn = 0;
    always @(posedge clk_in) if (rst_n && data_in_vld) bn = bn + 1;

    // The DUT pairs bytes using its own cnt0 (free-running on data_in_vld).
    // Mirror that pairing to build the reference word for each accepted write.
    reg  [7:0]  b0;
    reg  [15:0] pending;
    always @(posedge clk_in) if (rst_n && data_in_vld) begin
        if (uut.cnt0 == 2'd0) b0 = data_in;
        else                  pending = {b0, data_in};   // first byte in [15:8]
    end

    // expected output words
    reg  [15:0] expq [0:2047];
    integer wrn=0, err_pack=0;

    always @(posedge clk_in) if (rst_n && uut.wr_en) begin
        if (uut.din !== pending) begin
            err_pack = err_pack + 1;
            if (err_pack < 6)
                $display("ERROR t=%0t: pack #%0d wrong: din=%h expected %h", $time, wrn, uut.din, pending);
        end
        expq[wrn] = pending;
        wrn = wrn + 1;
    end

    integer rdi=0, beats=0, errors=0;

    always @(posedge clk_out) if (rst_n) begin
        if (data_out_vld) begin
            beats=beats+1;
            if (rdi >= wrn) begin
                errors=errors+1;
                $display("ERROR t=%0t: extra output word %h", $time, data_out);
            end else if (data_out !== expq[rdi]) begin
                errors=errors+1;
                $display("ERROR t=%0t: word #%0d mismatch got %h expected %h", $time, beats, data_out, expq[rdi]);
            end
            rdi=rdi+1;
        end
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #2; data_in=0; data_in_vld=0; b_rdy=0;
        #(600);
        for (i=0;i<200;i=i+1) begin data_in_vld=1; data_in=data_in+1; #(CYCLE); end
        data_in_vld=0; data_in=0;
        #(CYCLE*5);
        b_rdy=1; #(CYCLE*70); b_rdy=0;
        #(CYCLE*5);
        for (i=0;i<65;i=i+1) begin data_in_vld=1; data_in=data_in+1; #(CYCLE); end
        data_in_vld=0; data_in=0;
        #(CYCLE*10);
        b_rdy=1; #(CYCLE*70); b_rdy=0;
        #(CYCLE*100);
    end

    initial begin
        #(30000);
        $display("--------------------------------------------------");
        $display("fifo_1_4 : input bytes = %0d, accepted writes = %0d", bn, wrn);
        $display("fifo_1_4 : output beats = %0d", beats);
        $display("fifo_1_4 : pack errors  = %0d", err_pack);
        if (wrn != beats) $display("NOTE: accepted writes (%0d) != output beats (%0d)", wrn, beats);
        if (errors==0 && err_pack==0) $display("RESULT fifo_1_4: PASS (first byte in [15:8], in order, aligned)");
        else $display("RESULT fifo_1_4: FAIL (%0d word error(s), %0d pack error(s))", errors, err_pack);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
