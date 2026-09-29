`timescale 1ns / 1ps

module fifo_4_1(
        input                   clk     ,
        input                   rst_n   ,
        input           [7:0]   din     ,
        input                   din_vld ,
        input                   din_sop ,
        input                   din_eop ,

        output  reg     [7:0]   dout    ,
        output  reg             dout_vld,
        output  reg             dout_sop,
        output  reg             dout_eop
    );

    reg         [7:0]       r_din           ;
    reg                     r_din_vld       ;
    reg                     r_din_sop       ;
    reg                     r_din_eop       ;

    reg                     r_flag_rd_start ;

    wire        [9:0]       w_data_din      ;
    wire                    w_data_wr_en    ;
    wire                    w_data_rd_en    ;
    wire        [9:0]       w_data_dout     ;
    wire                    w_data_empty    ;

    fifo_10x512_fwft_sync u_data_fifo (
        .clk                (clk                    ),              // input wire clk
        .srst               (~rst_n                 ),              // input wire srst
        .din                (w_data_din             ),              // input wire [9 : 0] din
        .wr_en              (w_data_wr_en           ),              // input wire wr_en
        .rd_en              (w_data_rd_en           ),              // input wire rd_en
        .dout               (w_data_dout            ),              // output wire [9 : 0] dout
        .empty              (w_data_empty           )               // output wire empty
    );

    assign w_data_din = {1'd0, r_din_eop, r_din};
    assign w_data_wr_en = r_din_vld;
    assign w_data_rd_en = w_data_empty==0 && r_flag_rd_start;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            r_din <= 0;
            r_din_vld <= 0;
            r_din_sop <= 0;
            r_din_eop <= 0;
        end
        else begin
            r_din <= din;
            r_din_vld <= din_vld;
            r_din_sop <= din_sop;
            r_din_eop <= din_eop;
        end
    end

    reg         [7:0]       cnt0        ;
    wire                    add_cnt0    ;
    wire                    end_cnt0    ;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            cnt0 <= 0;
        else if(add_cnt0)begin
            if(end_cnt0)
                cnt0 <= 0;
            else
                cnt0 <= cnt0+1; 
        end
    end

    assign add_cnt0 = w_data_wr_en;
    assign end_cnt0 = add_cnt0 && r_din_eop;

    wire        [7:0]       w_cnt_din       ;
    wire                    w_cnt_wr_en     ;
    wire                    w_cnt_rd_en     ;
    wire        [7:0]       w_cnt_dout      ;
    wire                    w_cnt_empty     ;

    fifo_8x32_fwft_sync u_cnt_fifo (
        .clk                (clk                ),              // input wire clk
        .srst               (~rst_n             ),              // input wire srst
        .din                (w_cnt_din          ),              // input wire [7 : 0] din
        .wr_en              (w_cnt_wr_en        ),              // input wire wr_en
        .rd_en              (w_cnt_rd_en        ),              // input wire rd_en
        .dout               (w_cnt_dout         ),              // output wire [7 : 0] dout
        .empty              (w_cnt_empty        )               // output wire empty
    );

    assign w_cnt_din = cnt0+1;
    assign w_cnt_wr_en = end_cnt0;
    assign w_cnt_rd_en = w_cnt_empty==0 && r_flag_rd_start==0;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_flag_rd_start <= 0;
        else if(w_cnt_rd_en)
            r_flag_rd_start <= 1;
        else if(w_data_rd_en && w_data_dout[8])
            r_flag_rd_start <= 0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
        end
        else if(w_cnt_rd_en)begin
            dout <= w_cnt_dout;
            dout_vld <= 1;
            dout_sop <= 1;
            dout_eop <= 0;
        end
        else begin
            dout <= w_data_dout[7:0];
            dout_vld <= w_data_rd_en;
            dout_sop <= w_data_dout[9];
            dout_eop <= w_data_dout[8];
        end
    end
endmodule
