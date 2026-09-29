`timescale 1ns / 1ps

module fifo_3_1(
        input                   rst_n       ,
        input                   clk         ,
        input           [7:0]   din         ,
        input                   din_vld     ,
        input                   din_sop     ,
        input                   din_eop     ,
        output  reg     [7:0]   dout        ,
        output  reg             dout_vld    ,
        output  reg             dout_sop    ,
        output  reg             dout_eop    ,
        input                   b_rdy       
    );

    reg                 r_start_wr   ;       

    wire    [9:0]       w_din           ;
    wire    [9:0]       w_dout          ;
    wire                w_wr_en         ;
    wire                w_rd_en         ;
    wire                w_empty         ;
    wire    [9:0]       w_data_count    ;

    fifo_10x1024_standard_sync u_fifo (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (w_din          ),              // input wire [9 : 0] din
        .wr_en          (w_wr_en        ),              // input wire wr_en
        .rd_en          (w_rd_en        ),              // input wire rd_en
        .dout           (w_dout         ),              // output wire [9 : 0] dout
        .empty          (w_empty        ),              // output wire empty
        .data_count     (w_data_count   )               // output wire [9 : 0] data_count
    );

    assign w_din    = {din_sop, din_eop, din}                                   ;
    assign w_wr_en  = din_vld && (r_start_wr || (din_sop && w_data_count<=800)) ;
    assign w_rd_en  = b_rdy && w_empty==0                                       ;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_start_wr <= 0;
        else if(din_vld && din_sop && w_data_count<=800)
            r_start_wr <= 1;
        else if(din_vld && din_eop)
            r_start_wr <= 0;
    end

    reg                 dout_vld_ff0;
    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
            dout_vld_ff0 <= 0;
        end
        else begin
            dout <= w_dout[7:0];
            dout_vld <= dout_vld_ff0;
            dout_sop <= w_dout[9];
            dout_eop <= w_dout[8];
            dout_vld_ff0 <= w_rd_en;
        end
    end

endmodule
