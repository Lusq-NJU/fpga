`timescale 1ns / 1ps

module fifo_3_2(
        input                   clk         ,
        input                   rst_n       ,
        input           [15:0]  din         ,
        input                   din_vld     ,
        input                   din_sop     ,
        input                   din_eop     ,
        output  reg     [15:0]  dout        ,
        output  reg             dout_vld    ,
        output  reg             dout_sop    ,
        output  reg             dout_eop    
    );

    reg     [17:0]      r_data_din      ;
    reg                 r_data_wr_en    ;
    wire                w_data_rd_en    ;
    wire    [17:0]      w_data_dout     ;
    wire                w_data_empty    ;

    fifo_18x256_fwft_sync u_fifo (
        .clk        (clk                ),              // input wire clk
        .srst       (~rst_n             ),              // input wire srst
        .din        (r_data_din         ),              // input wire [17 : 0] din
        .wr_en      (r_data_wr_en       ),              // input wire wr_en
        .rd_en      (w_data_rd_en       ),              // input wire rd_en
        .dout       (w_data_dout        ),              // output wire [17 : 0] dout
        .empty      (w_data_empty       )               // output wire empty
    );

    wire                w_vld_din       ;
    wire                w_vld_wr_en     ;
    wire                w_vld_rd_en     ;
    wire                w_vld_dout      ;
    wire                w_vld_empty     ;

    fifo_1x64_fwft_sync u_vld_fifo (
        .clk        (clk                ),              // input wire clk
        .srst       (~rst_n             ),              // input wire srst
        .din        (w_vld_din          ),              // input wire [0 : 0] din
        .wr_en      (w_vld_wr_en        ),              // input wire wr_en
        .rd_en      (w_vld_rd_en        ),              // input wire rd_en
        .dout       (w_vld_dout         ),              // output wire [0 : 0] dout
        .empty      (w_vld_empty        )               // output wire empty
    );

    reg     [4:0]       cnt0        ;
    reg                 flag_add    ;
    wire                add_cnt0    ;
    wire                end_cnt0    ;

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

    assign add_cnt0 = flag_add && r_data_wr_en;
    assign end_cnt0 = add_cnt0 && (cnt0==20-1 || r_data_din[16]);

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            r_data_din <= 0;
            r_data_wr_en <= 0;
        end
        else begin
            r_data_din <= {din_sop, din_eop, din};
            r_data_wr_en <= din_vld;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_add <= 0;
        else if(din_sop && din_vld)
            flag_add <= 1;
        else if(end_cnt0)
            flag_add <= 0;
    end

    assign w_data_rd_en = w_vld_empty==0 && w_data_empty==0;

    assign w_vld_din = cnt0==20-1 && r_data_din[15:0]==16'h01;
    assign w_vld_wr_en = end_cnt0;
    assign w_vld_rd_en = w_data_rd_en && w_data_dout[16];

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
        end
        else begin
            dout <= w_data_dout[15:0];
            dout_vld <= w_data_rd_en && w_vld_dout;
            dout_sop <= w_data_dout[17];
            dout_eop <= w_data_dout[16];
        end
    end


endmodule
