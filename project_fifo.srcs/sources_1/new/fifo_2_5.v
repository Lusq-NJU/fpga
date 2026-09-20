`timescale 1ns / 1ps

module fifo_2_5(
        input                           rst_n       ,
        input                           clk_a       ,
        input               [15:0]      data_a      ,
        input                           data_a_vld  ,
        input                           clk_b       ,
        input               [15:0]      data_b      ,
        input                           data_b_vld  ,
        input                           clk_c       ,
        input               [15:0]      data_c      ,
        input                           data_c_vld  ,
        input                           clk_d       ,
        output      reg     [15:0]      data_d      ,
        output      reg                 data_d_vld  ,
        output      reg     [1:0]       chan_d      
    );

    wire                        rd_en_40Mhz     ;
    wire            [15:0]      dout_40Mhz      ;
    wire                        empty_40Mhz     ;

    wire                        rd_en_20Mhz     ;
    wire            [15:0]      dout_20Mhz      ;
    wire                        empty_20Mhz     ;

    wire                        rd_en_10Mhz     ;
    wire            [15:0]      dout_10Mhz      ;
    wire                        empty_10Mhz     ;

    fifo_16x128_standard_async u_fifo_40Mhz (
        .rst        (~rst_n         ),              // input wire rst
        .wr_clk     (clk_a          ),              // input wire wr_clk
        .rd_clk     (clk_d          ),              // input wire rd_clk
        .din        (data_a         ),              // input wire [15 : 0] din
        .wr_en      (data_a_vld     ),              // input wire wr_en
        .rd_en      (rd_en_40Mhz    ),              // input wire rd_en
        .dout       (dout_40Mhz     ),              // output wire [15 : 0] dout
        .empty      (empty_40Mhz    )               // output wire empty
    );

    fifo_16x128_standard_async u_fifo_20Mhz (
        .rst        (~rst_n         ),              // input wire rst
        .wr_clk     (clk_b          ),              // input wire wr_clk
        .rd_clk     (clk_d          ),              // input wire rd_clk
        .din        (data_b         ),              // input wire [15 : 0] din
        .wr_en      (data_b_vld     ),              // input wire wr_en
        .rd_en      (rd_en_20Mhz    ),              // input wire rd_en
        .dout       (dout_20Mhz     ),              // output wire [15 : 0] dout
        .empty      (empty_20Mhz    )               // output wire empty
    );

    fifo_16x128_standard_async u_fifo_10Mhz (
        .rst        (~rst_n         ),              // input wire rst
        .wr_clk     (clk_c          ),              // input wire wr_clk
        .rd_clk     (clk_d          ),              // input wire rd_clk
        .din        (data_c         ),              // input wire [15 : 0] din
        .wr_en      (data_c_vld     ),              // input wire wr_en
        .rd_en      (rd_en_10Mhz    ),              // input wire rd_en
        .dout       (dout_10Mhz     ),              // output wire [15 : 0] dout
        .empty      (empty_10Mhz    )               // output wire empty
    );

    reg         [1:0]       channel_cnt     ;

    always @(*) begin
        if(empty_40Mhz==0)
            channel_cnt = 0;
        else if(empty_20Mhz==0)
            channel_cnt = 1;
        else if(empty_10Mhz==0)
            channel_cnt = 2;
        else
            channel_cnt = 3;
    end

    assign rd_en_40Mhz = channel_cnt==0;
    assign rd_en_20Mhz = channel_cnt==1;
    assign rd_en_10Mhz = channel_cnt==2;

    reg         [1:0]       channel_cnt_ff0;

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            channel_cnt_ff0 <= 0;
        else
            channel_cnt_ff0 <= channel_cnt;
    end

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            data_d <= 0;
        else if(channel_cnt_ff0==0)
            data_d <= dout_40Mhz;
        else if(channel_cnt_ff0==1)
            data_d <= dout_20Mhz;
        else if(channel_cnt_ff0==2)
            data_d <= dout_10Mhz;
    end

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            data_d_vld <= 0;
        else
            data_d_vld <= channel_cnt_ff0!=3;
    end

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            chan_d <= 0;
        else
            chan_d <= channel_cnt_ff0;
    end

endmodule
