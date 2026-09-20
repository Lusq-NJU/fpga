`timescale 1ns / 1ps

module fifo_2_1(
        input                   clk     ,
        input                   rst_n   ,
        input           [9:0]   cfg_thd ,
        input           [7:0]   din     ,
        input                   din_vld ,
        output  reg     [7:0]   dout    ,
        output  reg             dout_vld
    );

    wire            wr_en       ;
    wire            rd_en       ;
    wire            full        ;
    wire            empty       ;
    wire    [10:0]  data_count  ;

    fifo_8x2048_standard_sync u_fifo (
        .clk            (clk        ),  // input wire clk
        .srst           (~rst_n     ),  // input wire srst
        .din            (din        ),  // input wire [7 : 0] din
        .wr_en          (wr_en      ),  // input wire wr_en
        .rd_en          (rd_en      ),  // input wire rd_en
        .dout           (dout       ),  // output wire [7 : 0] dout
        .full           (full       ),  // output wire full
        .empty          (empty      ),  // output wire empty
        .data_count     (data_count )   // output wire [10 : 0] data_count
    );

    assign wr_en = din_vld;
    assign rd_en = data_count >= cfg_thd;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_vld <= 0;
        else
            dout_vld <= rd_en;
    end

endmodule
