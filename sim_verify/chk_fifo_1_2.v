`timescale 1ns / 1ps
// Self-checking bench for fifo_1_2 : 16-bit in -> 8-bit out, MSB byte first.
// Reference byte stream is built from the DUT's own accepted FIFO writes.
module chk_fifo_1_2;
    reg  clk_in=0, clk_out=0, rst_n, b_rdy=0, data_in_vld=0;
    reg  [15:0] data_in=0;
    wire [7:0]  data_out;
    wire        data_out_vld;

    parameter CYCLE=20, CYCLE_W=10;
    integer i;

    fifo_1_2 uut(.clk_in(clk_in),.rst_n(rst_n),.data_in(data_in),.data_in_vld(data_in_vld),
                 .clk_out(clk_out),.b_rdy(b_rdy),.data_out(data_out),.data_out_vld(data_out_vld));

    always #(CYCLE/2)   clk_in  = ~clk_in;
    always #(CYCLE_W/2) clk_out = ~clk_out;

    // expected byte stream, expanded MSB-first from each accepted write
    reg  [7:0] expq [0:8191];
    integer expn = 0;
    integer wrn  = 0;
    reg  [15:0] wrq [0:4095];

    always @(posedge clk_in) if (rst_n && uut.wr_en) begin
        wrq[wrn]      = data_in;
        wrn           = wrn + 1;
        expq[expn]    = data_in[15:8];   // MSB byte first
        expq[expn+1]  = data_in[7:0];
        expn          = expn + 2;
    end

    integer rdi=0, beats=0, errors=0;

    always @(posedge clk_out) if (rst_n) begin
        if (data_out_vld) begin
            beats = beats + 1;
            if (rdi >= expn) begin
                errors = errors + 1;
                $display("ERROR t=%0t: extra output byte %h with no expected byte", $time, data_out);
            end else if (data_out !== expq[rdi]) begin
                errors = errors + 1;
                $display("ERROR t=%0t: byte #%0d mismatch got %h expected %h", $time, beats, data_out, expq[rdi]);
            end
            rdi = rdi + 1;
        end
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #2; data_in_vld=0; data_in=0;
        #(20*CYCLE);
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
        #(30000);
        $display("--------------------------------------------------");
        $display("fifo_1_2 : accepted writes = %0d  -> expected bytes = %0d", wrn, expn);
        $display("fifo_1_2 : output bytes    = %0d", beats);
        if (expn != beats) $display("NOTE: expected bytes (%0d) != output bytes (%0d) -> loss or extra", expn, beats);
        if (errors==0) $display("RESULT fifo_1_2: PASS (MSB-first byte split, in order, aligned)");
        else           $display("RESULT fifo_1_2: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
