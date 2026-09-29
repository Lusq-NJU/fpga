`timescale 1ns / 1ps

module fifo_3_3(
        input                   rst_n       ,
        input                   clk         ,
        input           [15:0]  din         ,
        input                   din_vld     ,
        input                   din_sop     ,
        input                   din_eop     ,
        input                   din_err     ,

        output  reg     [15:0]  dout        ,
        output  reg             dout_vld    ,
        output  reg             dout_sop    ,
        output  reg             dout_eop    
    );

    wire        [17:0]      w_data_din      ;
    wire                    w_data_wr_en    ;
    wire                    w_data_rd_en    ;
    wire        [17:0]      w_data_dout     ;
    wire                    w_data_empty    ;

    fifo_18x256_fwft_sync u_data_fifo (
        .clk            (clk            ),          // input wire clk
        .srst           (~rst_n         ),          // input wire srst
        .din            (w_data_din     ),          // input wire [17 : 0] din
        .wr_en          (w_data_wr_en   ),          // input wire wr_en
        .rd_en          (w_data_rd_en   ),          // input wire rd_en
        .dout           (w_data_dout    ),          // output wire [17 : 0] dout
        .empty          (w_data_empty   )           // output wire empty
    );

    wire                    w_err_din       ;
    wire                    w_err_wr_en     ;
    wire                    w_err_rd_en     ;
    wire                    w_err_dout      ;
    wire                    w_err_empty     ;

    fifo_1x64_fwft_sync u_err_fifo (
        .clk            (clk            ),          // input wire clk
        .srst           (~rst_n         ),          // input wire srst
        .din            (w_err_din      ),          // input wire [0 : 0] din
        .wr_en          (w_err_wr_en    ),          // input wire wr_en
        .rd_en          (w_err_rd_en    ),          // input wire rd_en
        .dout           (w_err_dout     ),          // output wire [0 : 0] dout
        .empty          (w_err_empty    )           // output wire empty
    );

    assign w_data_din   = {din_sop, din_eop, din}           ;
    assign w_data_wr_en = din_vld                           ;
    assign w_data_rd_en = w_data_empty==0 && w_err_empty==0 ;

    assign w_err_din    = din_err==0                        ;
    assign w_err_wr_en  = din_vld && din_eop                ;
    assign w_err_rd_en  = w_data_rd_en && w_data_dout[16]   ;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout     <= 0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
        end
        else begin
            dout     <= w_data_dout[15:0];
            dout_vld <= w_data_rd_en && w_err_dout;
            dout_sop <= w_data_dout[17]  ;
            dout_eop <= w_data_dout[16]  ;
        end
    end

endmodule
