`timescale 1ns / 1ps

module fifo_3_4(
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

    reg         [15:0]      r_check         ;     
    reg         [15:0]      r_din           ;
    reg                     r_din_vld       ;
    reg                     r_din_sop       ;
    reg                     r_din_eop       ;
    reg                     r_din_err       ;

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

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            r_din <= 0;
            r_din_vld <= 0;
            r_din_sop <= 0;
            r_din_eop <= 0;
            r_din_err <= 0;
        end
        else begin
            r_din <= din;
            r_din_vld <= din_vld;
            r_din_sop <= din_sop;
            r_din_eop <= din_eop;
            r_din_err <= din_err;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_check <= 0;
        else if(din_vld && din_sop)
            r_check <= din;
        else if(din_vld)
            r_check <= r_check+din;
    end

    assign w_data_din   = {r_din_sop, r_din_eop, r_din}     ;
    assign w_data_wr_en = r_din_vld                         ;
    assign w_data_rd_en = w_data_empty==0 && w_err_empty==0 ;

    assign w_err_din    = r_din_err==0 && r_check==0        ;
    assign w_err_wr_en  = r_din_vld && r_din_eop            ;
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
