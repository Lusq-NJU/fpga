`timescale 1ns / 1ps

module fifo_1_3(
        input                   clk_in          ,
        input                   rst_n           ,
        input       [31:0]      data_in         ,
        input                   data_in_vld     ,
        input                   clk_out         ,
        input                   b_rdy           ,
        output  reg [31:0]      data_out        ,
        output  reg             data_out_vld
    );

    reg                     wr_en           ;
    reg                     rd_en           ;
    reg                     dout_vld_ff0    ;
    wire    [31:0]          dout            ;
    wire                    empty           ;
    wire                    full            ;
    wire    [5:0]           wr_data_count   ;
    wire                    wr_rst_busy     ;
    wire                    rd_rst_busy     ;

    fifo_32x64_standard your_instance_name (
        .rst            (~rst_n         )   ,                       // input wire rst
        .wr_clk         (clk_in         )   ,                       // input wire wr_clk
        .rd_clk         (clk_out        )   ,                       // input wire rd_clk
        .din            (data_in        )   ,                       // input wire [31 : 0] din
        .wr_en          (wr_en          )   ,                       // input wire wr_en
        .rd_en          (rd_en          )   ,                       // input wire rd_en
        .dout           (dout           )   ,                       // output wire [31 : 0] dout
        .full           (full           )   ,
        .empty          (empty          )   ,                       // output wire empty
        .wr_data_count  (wr_data_count  )   ,                       // output wire [5 : 0] wr_data_count
        .wr_rst_busy    (wr_rst_busy    )   ,                       // output wire wr_rst_busy
        .rd_rst_busy    (rd_rst_busy    )                           // output wire rd_rst_busy
    );

    always @(*) begin
        if(wr_data_count>=61)
            wr_en = 0;
        else
            wr_en = data_in_vld;
    end

    always @(*) begin
        if(empty==1)
            rd_en = 0;
        else
            rd_en = b_rdy;
    end

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==1'd0)
            dout_vld_ff0 <= 0;
        else
            dout_vld_ff0 <= rd_en; 
    end

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==1'd0)
            data_out_vld <= 0;
        else
            data_out_vld <= dout_vld_ff0; 
    end

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==1'd0)
            data_out <= 32'd0;
        else
            data_out <= dout; 
    end

endmodule
