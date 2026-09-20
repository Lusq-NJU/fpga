`timescale 1ns / 1ps

module fifo_1_2(
    input               clk_in          ,
    input               rst_n           ,
    input       [15:0]  data_in         ,
    input               data_in_vld     ,
    input               clk_out         ,
    input               b_rdy           ,
    output  reg [7:0]   data_out        ,
    output  reg         data_out_vld    
    );

    reg                 wr_en;  
    reg                 rd_en;

    wire    [15:0]      dout;
    wire                empty;
    wire    [6:0]       wr_data_count;
    wire                wr_rst_busy;
    wire                rd_rst_busy;

    fifo_16x64 u_fifo_16x64 (
        .rst                (~rst_n         ),                  // input wire rst
        .wr_clk             (clk_in         ),                  // input wire wr_clk
        .rd_clk             (clk_out        ),                  // input wire rd_clk
        .din                (data_in        ),                  // input wire [15 : 0] din
        .wr_en              (wr_en          ),                  // input wire wr_en
        .rd_en              (rd_en          ),                  // input wire rd_en
        .dout               (dout           ),                  // output wire [15 : 0] dout
        .empty              (empty          ),                  // output wire [6 : 0] rd_data_count
        .wr_data_count      (wr_data_count  ),                  // output wire [6 : 0] wr_data_count
        .wr_rst_busy        (wr_rst_busy    ),                  // output wire wr_rst_busy
        .rd_rst_busy        (rd_rst_busy    )                   // output wire rd_rst_busy
    );

    wire                add_cnt ;
    wire                end_cnt ;
    
    reg     [1:0]       cnt     ;

    always @(*) begin
        if(wr_data_count >= 7'd61)
            wr_en = 0;
        else
            wr_en = data_in_vld;
    end

    always @(*) begin
        if(add_cnt && cnt==2-1)
            rd_en = 1;
        else
            rd_en = 0;
    end

    assign add_cnt = b_rdy && empty==1'd0;
    assign end_cnt = add_cnt && cnt==2-1;

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==1'b0)
            cnt <= 2'd0;
        else if(add_cnt)begin
            if(end_cnt)
                cnt <= 2'd0;
            else
                cnt <= cnt+1;
        end
    end

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==1'd0)
            data_out_vld <= 1'd0;
        else
            data_out_vld <= add_cnt;
    end

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==1'd0)
            data_out <= 8'd0;
        else
            data_out <= dout[15-cnt*8 -: 8];
    end

endmodule
