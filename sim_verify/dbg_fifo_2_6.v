`timescale 1ns / 1ps
module dbg_fifo_2_6;
    reg  rst_n;
    reg  clk_a=0, clk_b=0, clk_c=0, clk_d=0;
    parameter NA=6, NB=6, NC=31;

    reg  [7:0] data_a=0, data_b=0, data_c=0;
    reg  data_a_vld=0, data_a_sop=0, data_a_eop=0;
    reg  data_b_vld=0, data_b_sop=0, data_b_eop=0;
    reg  data_c_vld=0, data_c_sop=0, data_c_eop=0;

    wire [7:0] data_d;
    wire       data_d_vld, data_d_sop, data_d_eop;
    wire [1:0] chan_d;

    fifo_2_6 uut(.rst_n(rst_n),.clk_a(clk_a),.data_a(data_a),.data_a_vld(data_a_vld),
                 .data_a_sop(data_a_sop),.data_a_eop(data_a_eop),
                 .clk_b(clk_b),.data_b(data_b),.data_b_vld(data_b_vld),
                 .data_b_sop(data_b_sop),.data_b_eop(data_b_eop),
                 .clk_c(clk_c),.data_c(data_c),.data_c_vld(data_c_vld),
                 .data_c_sop(data_c_sop),.data_c_eop(data_c_eop),
                 .clk_d(clk_d),.data_d(data_d),.data_d_vld(data_d_vld),
                 .data_d_sop(data_d_sop),.data_d_eop(data_d_eop),.chan_d(chan_d));

    always #12 clk_a = ~clk_a;
    always #24 clk_b = ~clk_b;
    always #48 clk_c = ~clk_c;
    always #6  clk_d = ~clk_d;

    integer n=0, m=0;
    reg [15:0] last_b=16'hFFFF;

    initial begin rst_n=1; #2; rst_n=0; #(100); rst_n=1; end

    // log B writes
    always @(posedge clk_b) if (rst_n && data_b_vld && n<10) begin
        $display("  BWR t=%0t b=%h sop=%b eop=%b", $time, data_b, data_b_sop, data_b_eop);
        n=n+1;
    end
    // log output beats
    always @(posedge clk_d) if (rst_n && data_d_vld && m<28) begin
        $display("  OUT t=%0t d=%h chan=%0d sop=%b eop=%b", $time, data_d, chan_d, data_d_sop, data_d_eop);
        m=m+1;
    end

    integer i_a, i_b, i_c;
    initial begin
        #(400);
        for (i_a=0;i_a<NA;i_a=i_a+1) begin
            data_a_vld=1; data_a=8'h00+i_a; data_a_sop=(i_a==0); data_a_eop=(i_a==NA-1);
            @(posedge clk_a); #1;
        end
        data_a_vld=0; data_a_sop=0; data_a_eop=0;
    end
    initial begin
        #(400);
        for (i_b=0;i_b<NB;i_b=i_b+1) begin
            data_b_vld=1; data_b=8'h14+i_b; data_b_sop=(i_b==0); data_b_eop=(i_b==NB-1);
            @(posedge clk_b); #1;
        end
        data_b_vld=0; data_b_sop=0; data_b_eop=0;
    end
    initial begin
        #(400);
        for (i_c=0;i_c<NC;i_c=i_c+1) begin
            data_c_vld=1; data_c=8'h32+i_c; data_c_sop=(i_c==0); data_c_eop=(i_c==NC-1);
            @(posedge clk_c); #1;
        end
        data_c_vld=0; data_c_sop=0; data_c_eop=0;
    end

    initial begin #(3000); $finish; end
endmodule
