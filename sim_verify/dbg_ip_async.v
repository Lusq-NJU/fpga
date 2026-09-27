`timescale 1ns / 1ps
// Isolate the IP used for channel B in fifo_2_6.
// Vary the reset pulse width and observe wr_rst_busy/rd_rst_busy vs. accepted writes.
`define RSTW 100
module dbg_ip_async;
    reg  rst_n;
    reg  clk_b=0, clk_d=0;
    reg  [9:0] din=0;
    reg        wr_en=0;
    reg        rd_en=0;
    wire [9:0] dout;
    wire       empty, wrb, rdb;

    fifo_10x256_fwft_async u_fifo (
        .rst         (~rst_n ),
        .wr_clk      (clk_b  ),
        .rd_clk      (clk_d  ),
        .din         (din    ),
        .wr_en       (wr_en  ),
        .rd_en       (rd_en  ),
        .dout        (dout   ),
        .empty       (empty  ),
        .wr_rst_busy (wrb    ),
        .rd_rst_busy (rdb    )
    );

    always #24 clk_b = ~clk_b;
    always #6  clk_d = ~clk_d;

    integer i, k=0;
    reg [9:0] expq [0:15];
    integer errors=0, beats=0;

    always @(posedge clk_b) if ($time<=1200)
        $display("  B t=%0t rstn=%b wr_en=%b wrb=%b din=%h", $time, rst_n, wr_en, wrb, din);

    always @(posedge clk_d) if ($time>=300 && $time<=900)
        $display("  D t=%0t empty=%b rdb=%b dout=%h rd_en=%b", $time, empty, rdb, dout, rd_en);

    initial begin rst_n=1; #2; rst_n=0; #(`RSTW); rst_n=1; end

    initial begin
        for (i=0;i<6;i=i+1) expq[i] = 10'h100 + i;
    end

    initial begin
        #(400);
        for (i=0;i<6;i=i+1) begin
            din = 10'h100 + i; wr_en=1;
            @(posedge clk_b); #1;
        end
        wr_en=0;
    end

    initial begin
        #(400);
        forever begin
            @(posedge clk_d); #1;
            if (!empty) rd_en=1; else rd_en=0;
        end
    end

    always @(posedge clk_d) if (rst_n && rd_en) begin
        beats=beats+1;
        if (k>=6) begin errors=errors+1; $display("ERROR t=%0t extra %h",$time,dout); end
        else if (dout!==expq[k]) begin errors=errors+1;
            $display("ERROR t=%0t: beat #%0d got %h expected %h", $time, k, dout, expq[k]); end
        k=k+1;
    end

    initial begin
        #(2000);
        $display("--------------------------------------------------");
        $display("dbg_ip_async: reset pulse = %0d ns, expected 6 words, read %0d", `RSTW, beats);
        if (errors==0 && beats==6) $display("RESULT dbg_ip_async: PASS (bare IP preserves all 6 words)");
        else $display("RESULT dbg_ip_async: FAIL (%0d error(s), %0d beats)", errors, beats);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
