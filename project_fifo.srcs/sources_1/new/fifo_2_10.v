`timescale 1ns / 1ps

module fifo_2_10(
        input                   rst_n       ,
        input                   clk_a       ,
        input           [7:0]   data_a      ,
        input                   data_a_vld  ,
        input                   clk_b       ,
        input           [15:0]  data_b      ,
        input                   data_b_vld  ,
        input                   clk_c       ,
        input           [31:0]  data_c      ,
        input                   data_c_vld  ,
        input                   clk_d       ,
        output  reg     [15:0]  data_d      ,
        output  reg             data_d_vld  ,
        output  reg     [1:0]   chan_d   
    );

    reg     [1:0]       r_fifo_order;

    reg                 cnt_a       ;
    wire                add_cnt_a   ;
    wire                end_cnt_a   ;

    reg     [15:0]      r_din_a     ;
    wire    [15:0]      w_dout_a    ;
    reg                 r_wr_en_a   ;
    wire                w_rd_en_a   ;
    wire                w_empty_a   ;

    fifo_16x128_fwft_async u_fifo_a (
        .rst            (~rst_n         ),          // input wire rst
        .wr_clk         (clk_a          ),          // input wire wr_clk
        .rd_clk         (clk_d          ),          // input wire rd_clk
        .din            (r_din_a        ),          // input wire [15 : 0] din
        .wr_en          (r_wr_en_a      ),          // input wire wr_en
        .rd_en          (w_rd_en_a      ),          // input wire rd_en
        .dout           (w_dout_a       ),          // output wire [15 : 0] dout
        .empty          (w_empty_a      )           // output wire empty
    );

    assign w_rd_en_a = r_fifo_order==0 && w_empty_a==0;

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            r_din_a <= 0;
        else if(data_a_vld)
            r_din_a[15-cnt_a*8 -: 8] <= data_a;
    end

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            r_wr_en_a <= 0;
        else 
            r_wr_en_a <= end_cnt_a;
    end

    assign add_cnt_a = data_a_vld;
    assign end_cnt_a = add_cnt_a && cnt_a==2-1;

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            cnt_a <= 0;
        else if(add_cnt_a)begin
            if(end_cnt_a)
                cnt_a <= 0;
            else
                cnt_a <= cnt_a+1; 
        end
    end

    wire    [15:0]      w_dout_b    ;
    wire                w_rd_en_b   ;
    wire                w_empty_b   ;

    fifo_16x128_fwft_async u_fifo_b (
        .rst            (~rst_n         ),          // input wire rst
        .wr_clk         (clk_b          ),          // input wire wr_clk
        .rd_clk         (clk_d          ),          // input wire rd_clk
        .din            (data_b         ),          // input wire [15 : 0] din
        .wr_en          (data_b_vld     ),          // input wire wr_en
        .rd_en          (w_rd_en_b      ),          // input wire rd_en
        .dout           (w_dout_b       ),          // output wire [15 : 0] dout
        .empty          (w_empty_b      )           // output wire empty
    );

    assign w_rd_en_b = r_fifo_order==1 && w_empty_b==0;

    reg                 cnt_c       ;
    wire                add_cnt_c   ;
    wire                end_cnt_c   ;

    wire    [31:0]      w_dout_c    ;
    wire                w_rd_en_c   ;
    wire                w_empty_c   ;

    fifo_32x128_fwft_async u_fifo_c (
        .rst            (~rst_n         ),          // input wire rst
        .wr_clk         (clk_c          ),          // input wire wr_clk
        .rd_clk         (clk_d          ),          // input wire rd_clk
        .din            (data_c         ),          // input wire [15 : 0] din
        .wr_en          (data_c_vld     ),          // input wire wr_en
        .rd_en          (w_rd_en_c      ),          // input wire rd_en
        .dout           (w_dout_c       ),          // output wire [15 : 0] dout
        .empty          (w_empty_c      )           // output wire empty
    );

    assign w_rd_en_c = end_cnt_c;

    assign add_cnt_c = r_fifo_order==2 && w_empty_c==0;
    assign end_cnt_c = add_cnt_c && cnt_c==2-1;

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            cnt_c <= 0;
        else if(add_cnt_c)begin
            if(end_cnt_c)
                cnt_c <= 0;
            else 
                cnt_c <= cnt_c+1; 
        end
    end

    always @(*) begin
        if(w_empty_a==0 && cnt_c==0)
            r_fifo_order = 0;
        else if(w_empty_b==0 && cnt_c==0)
            r_fifo_order = 1;
        else if(w_empty_c==0)
            r_fifo_order = 2;
        else
            r_fifo_order = 3;
    end

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)begin
            data_d <= 0;
            data_d_vld <= 0;
            chan_d <= 3;
        end
        else if(r_fifo_order==0)begin
            data_d <= w_dout_a;
            data_d_vld <= w_rd_en_a;
            chan_d <= 0;
        end
        else if(r_fifo_order==1)begin
            data_d <= w_dout_b;
            data_d_vld <= w_rd_en_b;
            chan_d <= 1;
        end
        else if(r_fifo_order==2)begin
            data_d <= w_dout_c[31-cnt_c*16 -: 16];
            data_d_vld <= add_cnt_c;
            chan_d <= 2;
        end
        else begin
            data_d <= 0;
            data_d_vld <= 0;
            chan_d <= 3;
        end
    end

endmodule
