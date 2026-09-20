`timescale 1ns / 1ps

module fifo_2_6(
        input                               rst_n       ,
        input                               clk_a       ,
        input                   [7:0]       data_a      ,
        input                               data_a_vld  ,
        input                               data_a_sop  ,
        input                               data_a_eop  ,
        input                               clk_b       ,
        input                   [7:0]       data_b      ,
        input                               data_b_vld  ,
        input                               data_b_sop  ,
        input                               data_b_eop  ,
        input                               clk_c       ,
        input                   [7:0]       data_c      ,
        input                               data_c_vld  ,
        input                               data_c_sop  ,
        input                               data_c_eop  ,

        input                               clk_d       ,
        output          reg     [7:0]       data_d      ,
        output          reg                 data_d_vld  ,
        output          reg                 data_d_sop  ,
        output          reg                 data_d_eop  ,
        output          reg     [1:0]       chan_d  
    );

    wire        [9:0]       din_a       ;
    wire        [9:0]       dout_a      ;
    wire                    rd_en_a     ;
    wire                    empty_a     ;

    wire        [9:0]       din_b       ;
    wire        [9:0]       dout_b      ;
    wire                    rd_en_b     ;
    wire                    empty_b     ;

    wire        [9:0]       din_c       ;
    wire        [9:0]       dout_c      ;
    wire                    rd_en_c     ;
    wire                    empty_c     ;

    reg         [1:0]       flag_rd     ;

    assign din_a = {data_a_sop, data_a_eop, data_a};
    assign din_b = {data_b_sop, data_b_eop, data_b};
    assign din_c = {data_c_sop, data_c_eop, data_c};

    assign rd_en_a = flag_rd==0 && empty_a==0;
    assign rd_en_b = flag_rd==1 && empty_b==0;
    assign rd_en_c = flag_rd==2 && empty_c==0;

    fifo_10x256_fwft_async u_fifo_40Mhz (
        .rst            (~rst_n         ),          // input wire rst
        .wr_clk         (clk_a          ),          // input wire wr_clk
        .rd_clk         (clk_d          ),          // input wire rd_clk
        .din            (din_a          ),          // input wire [9 : 0] din
        .wr_en          (data_a_vld     ),          // input wire wr_en
        .rd_en          (rd_en_a        ),          // input wire rd_en
        .dout           (dout_a         ),          // output wire [9 : 0] dout
        .empty          (empty_a        )           // output wire empty
    );

    fifo_10x256_fwft_async u_fifo_20Mhz (
        .rst            (~rst_n         ),          // input wire rst
        .wr_clk         (clk_b          ),          // input wire wr_clk
        .rd_clk         (clk_d          ),          // input wire rd_clk
        .din            (din_b          ),          // input wire [9 : 0] din
        .wr_en          (data_b_vld     ),          // input wire wr_en
        .rd_en          (rd_en_b        ),          // input wire rd_en
        .dout           (dout_b         ),          // output wire [9 : 0] dout
        .empty          (empty_b        )           // output wire empty
    );

    fifo_10x256_fwft_async u_fifo_10Mhz (
        .rst            (~rst_n         ),          // input wire rst
        .wr_clk         (clk_c          ),          // input wire wr_clk
        .rd_clk         (clk_d          ),          // input wire rd_clk
        .din            (din_c          ),          // input wire [9 : 0] din
        .wr_en          (data_c_vld     ),          // input wire wr_en
        .rd_en          (rd_en_c        ),          // input wire rd_en
        .dout           (dout_c         ),          // output wire [9 : 0] dout
        .empty          (empty_c        )           // output wire empty
    );

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            flag_rd <= 3;
        else if((rd_en_a && dout_a[8]) || (rd_en_b && dout_b[8]) || (rd_en_c && dout_c[8]))
            flag_rd <= 3;
        else if(flag_rd==3 && empty_a==0)
            flag_rd <= 0;
        else if(flag_rd==3 && empty_b==0)
            flag_rd <= 1;
        else if(flag_rd==3 && empty_c==0)
            flag_rd <= 2; 
    end

    always @(posedge clk_d or negedge rst_n ) begin
        if(rst_n==0)begin
            data_d <= 0;
            data_d_vld <= 0;
            data_d_sop <= 0;
            data_d_eop <= 0;
        end
        else if(flag_rd==0)begin
            data_d <= dout_a[7:0];
            data_d_vld <= rd_en_a;
            data_d_sop <= dout_a[9];
            data_d_eop <= dout_a[8];
        end
        else if(flag_rd==1)begin
            data_d <= dout_b[7:0];
            data_d_vld <= rd_en_b;
            data_d_sop <= dout_b[9];
            data_d_eop <= dout_b[8];
        end
        else if(flag_rd==2)begin
            data_d <= dout_c[7:0];
            data_d_vld <= rd_en_c;
            data_d_sop <= dout_c[9];
            data_d_eop <= dout_c[8];     
        end
        else begin
            data_d <= 0;
            data_d_vld <= 0;
            data_d_sop <= 0;
            data_d_eop <= 0;
        end
    end
    
    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            chan_d <= 3;
        else
            chan_d <= flag_rd;
    end

endmodule
