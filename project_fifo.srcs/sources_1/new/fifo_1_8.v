`timescale 1ns / 1ps

module fifo_1_8(
        input                   clk     ,
        input                   rst_n   ,
        input           [31:0]  din     ,
        input                   din_vld ,
        input                   din_sop ,
        input                   din_eop ,
        input           [1:0]   din_mty ,

        output  reg     [7:0]   dout    ,
        output  reg             dout_vld,
        output  reg             dout_sop,
        output  reg             dout_eop,
        input                   b_rdy
    );

    reg     [35:0]      data_in     ;
    reg                 wr_en       ;
    wire                rd_en       ;
    wire    [35:0]      data_out    ;
    wire                full        ;
    wire                empty       ;

    fifo_36x128_fwft_sync u_fifo (
        .clk        (clk            ),          // input wire clk
        .srst       (~rst_n         ),          // input wire srst
        .din        (data_in        ),          // input wire [35 : 0] din
        .wr_en      (wr_en          ),          // input wire wr_en
        .rd_en      (rd_en          ),          // input wire rd_en
        .dout       (data_out       ),          // output wire [35 : 0] dout
        .full       (full           ),          // output wire full
        .empty      (empty          )           // output wire empty
    );

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            wr_en <= 0;
        else
            wr_en <= din_vld;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            data_in <= 36'd0;
        else
            data_in <= {din_sop, din_eop, din_mty, din};
    end

    reg     [1:0]       cnt0;
    reg     [2:0]       x;
    wire                add_cnt0;
    wire                end_cnt0;

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

    assign add_cnt0 = b_rdy && empty==0;
    assign end_cnt0 = add_cnt0 && cnt0==x-1;
    assign rd_en = end_cnt0;

    always @(*) begin
        if(data_out[34]==1)
            x = 4-data_out[33:32];
        else
            x = 4;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 8'd0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
        end
        else begin
            dout <= data_out[31-8*cnt0 -: 8];
            dout_vld <= add_cnt0;
            dout_sop <= data_out[35] && add_cnt0 && cnt0==0;
            dout_eop <= data_out[34] && end_cnt0;
        end 
    end

endmodule
