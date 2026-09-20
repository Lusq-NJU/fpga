`timescale 1ns / 1ps

module fifo_1_6(
        input                   clk         ,
        input                   rst_n       ,
        input       [7:0]       din         ,
        input                   din_vld     ,
        input                   din_sop     ,
        input                   din_eop     ,
        output  reg [7:0]       dout        ,
        output  reg             dout_vld    ,
        output  reg             dout_sop    ,
        output  reg             dout_eop    ,
        input                   b_rdy
    );

    reg     [9:0]       data_in     ;
    reg                 wr_en       ;
    wire                rd_en       ;

    wire    [9:0]       data_out    ;
    wire                full        ;
    wire                empty       ;

    fifo_10x512_standard_sync u_fifo (
        .clk    (clk        ),      // input wire clk
        .srst   (~rst_n     ),      // input wire srst
        .din    (data_in    ),      // input wire [9 : 0] din
        .wr_en  (wr_en      ),      // input wire wr_en
        .rd_en  (rd_en      ),      // input wire rd_en
        .dout   (data_out   ),      // output wire [9 : 0] dout
        .full   (full       ),      // output wire full
        .empty  (empty      )       // output wire empty
    );

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            data_in <= 10'd0;
        else
            data_in <= {din, din_sop, din_eop};
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            wr_en <= 1'd0;
        else
            wr_en <= din_vld;
    end

    assign rd_en = b_rdy && empty==0;

    reg             dout_vld_ff0    ;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_vld_ff0 <= 0;
        else
            dout_vld_ff0 <= rd_en;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_vld <= 0;
        else
            dout_vld <= dout_vld_ff0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout <= 8'd0;
        else
            dout <= data_out[9:2];
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout <= 8'd0;
        else
            dout <= data_out[9:2];
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_sop <= 1'd0;
        else
            dout_sop <= data_out[1:1];
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_eop <= 1'd0;
        else
            dout_eop <= data_out[0:0];
    end
endmodule
