`timescale 1ns / 1ps
// Self-checking bench for fifo_1_5 : 8-bit in -> 32-bit out, 4 bytes per word,
// first byte received in bits [31:24].
module chk_fifo_1_5;
    reg  clk_in=0, clk_out=0, rst_n, b_rdy=0, data_in_vld=0;
    reg  [7:0]  data_in=0;
    wire [31:0] data_out;
    wire        data_out_vld;

    parameter CYCLE=20, CYCLE_W=10;
    integer i;

    fifo_1_5 uut(.clk_in(clk_in),.clk_out(clk_out),.rst_n(rst_n),.data_in(data_in),
                 .data_in_vld(data_in_vld),.b_rdy(b_rdy),.data_out(data_out),.data_out_vld(data_out_vld));

    always #(CYCLE/2)   clk_in  = ~clk_in;
    always #(CYCLE_W/2) clk_out = ~clk_out;

    reg  [7:0] bq [0:4095];
    integer bn=0;
    always @(posedge clk_in) if (rst_n && data_in_vld) begin bq[bn]=data_in; bn=bn+1; end

    reg  [31:0] expq [0:1023];
    integer expn=0, wrn=0, err_pack=0;

    always @(posedge clk_in) if (rst_n && uut.wr_en) begin
        if (4*wrn+3 < bn) begin
            if (uut.din !== {bq[4*wrn],bq[4*wrn+1],bq[4*wrn+2],bq[4*wrn+3]}) begin
                err_pack=err_pack+1;
                if (err_pack<6) $display("ERROR t=%0t: pack #%0d wrong: din=%h expected %h", $time, wrn,
                    uut.din, {bq[4*wrn],bq[4*wrn+1],bq[4*wrn+2],bq[4*wrn+3]});
            end
            expq[wrn] = {bq[4*wrn],bq[4*wrn+1],bq[4*wrn+2],bq[4*wrn+3]};
        end
        wrn=wrn+1;
    end

    integer rdi=0, beats=0, errors=0;
    always @(posedge clk_out) if (rst_n && data_out_vld) begin
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

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #2; data_in=0; data_in_vld=0; b_rdy=0;
        #(400);
        for (i=0;i<65;i=i+1) begin data_in_vld=1; data_in=data_in+1; #(CYCLE); end
        data_in_vld=0; data_in=0;
        #(CYCLE*5); b_rdy=1; #(CYCLE*70); b_rdy=0;
        #(CYCLE*5);
        for (i=0;i<65;i=i+1) begin data_in_vld=1; data_in=data_in+1; #(CYCLE); end
        data_in_vld=0; data_in=0;
        #(CYCLE*10); b_rdy=1; #(CYCLE*70); b_rdy=0;
        #(CYCLE*100);
    end

    initial begin
        #(20000);
        $display("--------------------------------------------------");
        $display("fifo_1_5 : input bytes = %0d, accepted writes = %0d", bn, wrn);
        $display("fifo_1_5 : output beats = %0d", beats);
        $display("fifo_1_5 : pack errors  = %0d", err_pack);
        if (wrn != beats) $display("NOTE: accepted writes (%0d) != output beats (%0d)", wrn, beats);
        if (errors==0 && err_pack==0) $display("RESULT fifo_1_5: PASS (first byte in [31:24], in order, aligned)");
        else $display("RESULT fifo_1_5: FAIL (%0d word error(s), %0d pack error(s))", errors, err_pack);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
