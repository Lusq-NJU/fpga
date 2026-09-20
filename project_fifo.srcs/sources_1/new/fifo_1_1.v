`timescale 1ns / 1ps

module fifo_1_1(
        input               rst_n           ,
        input               clk_in          ,
        input   [15:0]      data_in         ,
        input               data_in_vld     ,
        input               clk_out         ,
        output  [15:0]      data_out        ,
        output              data_out_vld    ,
        input               b_rdy
    );

    wire        wr_en           ;
    wire        rd_en           ;

    wire    [15:0]      dout            ;
    wire                full            ;
    wire                empty           ;
    wire    [6:0]       rd_data_count   ;  
    wire    [6:0]       wr_data_count   ;  
    
    reg     [15:0]      r_data_out      ;
    reg                 r_data_out_vld  ;   

    fifo_16x64 u_fifo_16x64 (
        .rst            (~rst_n          ),                      // input wire rst
        .wr_clk         (clk_in         ),                      // input wire wr_clk
        .rd_clk         (clk_out        ),                      // input wire rd_clk
        .din            (data_in        ),                      // input wire [15 : 0] din
        .wr_en          (wr_en          ),                      // input wire wr_en
        .rd_en          (rd_en          ),                      // input wire rd_en
        .dout           (dout           ),                      // output wire [15 : 0] dout
        .full           (full           ),                      // output wire full
        .wr_ack         (               ),                      // output wire wr_ack
        .empty          (empty          ),                      // output wire empty
        .valid          (               ),                      // output wire valid
        .rd_data_count  (rd_data_count  ),                      // output wire [6 : 0] rd_data_count
        .wr_data_count  (wr_data_count  ),                      // output wire [6 : 0] wr_data_count
        .wr_rst_busy    (               ),                      // output wire wr_rst_busy
        .rd_rst_busy    (               )                       // output wire rd_rst_busy
    );

    assign wr_en = data_in_vld && wr_data_count<61;
    assign rd_en = b_rdy==1 && empty==0;

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==1'd0)
            r_data_out <= 16'd0;
        else
            r_data_out <= dout;
    end

    always @(posedge clk_out or negedge rst_n ) begin
        if(rst_n==1'd0)
            r_data_out_vld <= 0;
        else
            r_data_out_vld <= rd_en;
    end

    assign data_out = r_data_out;
    assign data_out_vld = r_data_out_vld;

endmodule
