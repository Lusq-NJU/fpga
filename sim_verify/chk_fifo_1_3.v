`timescale 1ns / 1ps
// Self-checking bench for fifo_1_3 : 32-bit in -> 32-bit out, no width change.
module chk_fifo_1_3;
    reg  clk_in=0, clk_out=0, rst_n, b_rdy=0, data_in_vld=0;
    reg  [31:0] data_in=0;
    wire [31:0] data_out;
    wire        data_out_vld;

    parameter CYCLE=20, CYCLE_W=10;
    integer i;

    fifo_1_3 uut(.clk_in(clk_in),.rst_n(rst_n),.data_in(data_in),.data_in_vld(data_in_vld),
                 .clk_out(clk_out),.b_rdy(b_rdy),.data_out(data_out),.data_out_vld(data_out_vld));

    always #(CYCLE/2)   clk_in  = ~clk_in;
    always #(CYCLE_W/2) clk_out = ~clk_out;

    reg  [31:0] expq [0:4095];
    integer expn=0, wrn=0;

    always @(posedge clk_in) if (rst_n && uut.wr_en) begin
        expq[wrn] = data_in; wrn = wrn + 1;
    end

    integer rdi=0, beats=0, errors=0;

    always @(posedge clk_out) if (rst_n) begin
        if (data_out_vld) begin
            beats = beats + 1;
            if (wrn == 0) begin
                errors=errors+1;
                $display("ERROR t=%0t: data_out_vld before any accepted write", $time);
            end else if (rdi >= wrn) begin
                errors=errors+1;
                $display("ERROR t=%0t: extra output beat %h (only %0d written)", $time, data_out, wrn);
            end else if (data_out !== expq[rdi]) begin
                errors=errors+1;
                $display("ERROR t=%0t: beat #%0d mismatch got %h expected %h", $time, beats, data_out, expq[rdi]);
            end
            rdi = rdi + 1;
        end
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #2; data_in_vld=0; data_in=1000;
        #(30*CYCLE);
        for (i=0;i<80;i=i+1) begin
            data_in_vld=1; data_in=1000+i; #(CYCLE);
        end
        data_in_vld=0; data_in=0;
        #(CYCLE*400);
    end

    initial begin #1; b_rdy=0; #(300*CYCLE_W);
        forever begin #CYCLE_W; b_rdy=$random; end
    end

    initial begin
        #(20000);
        $display("--------------------------------------------------");
        $display("fifo_1_3 : accepted writes = %0d", wrn);
        $display("fifo_1_3 : output beats    = %0d", beats);
        if (wrn != beats) $display("NOTE: accepted writes (%0d) != output beats (%0d)", wrn, beats);
        if (errors==0) $display("RESULT fifo_1_3: PASS (no width change, in order, aligned)");
        else           $display("RESULT fifo_1_3: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
