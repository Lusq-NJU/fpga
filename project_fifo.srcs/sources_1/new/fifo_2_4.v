`timescale 1ns / 1ps

module fifo_2_4(
        input                       clk         ,
        input                       rst_n       ,
        input           [7:0]       din         ,
        input                       din_sop     ,
        input                       din_eop     ,
        input                       din_vld     ,

        output  reg     [31:0]      dout        ,
        output  reg                 dout_vld    ,
        output  reg                 dout_sop    ,
        output  reg                 dout_eop    ,
        output  reg     [1:0]       dout_mty    
    );

    reg     [31:0]      r_din           ;
    reg                 r_din_sop       ;
    reg                 r_din_eop       ;
    reg     [1:0]       r_din_mty       ;
    reg                 r_data_wr_en    ;
    reg                 r_flag_rd       ;

    wire                w_data_rd_en    ;
    wire    [35:0]      w_data_in       ;
    wire    [35:0]      w_data_out      ;

    reg     [1:0]       cnt0            ;

    wire                add_cnt0        ;
    wire                end_cnt0        ;

    reg     [5:0]       cnt1            ;
    reg                 flag_cnt1       ;

    wire                add_cnt1        ;
    wire                end_cnt1        ;

    reg                 r_eop_wr_en     ;
    wire                w_eop_rd_en     ;

    fifo_36x512_fwft_sync u_data_fifo (
        .clk        (clk                ),              // input wire clk
        .srst       (~rst_n             ),              // input wire srst
        .din        (w_data_in          ),              // input wire [35 : 0] din
        .wr_en      (r_data_wr_en       ),              // input wire wr_en
        .rd_en      (w_data_rd_en       ),              // input wire rd_en
        .dout       (w_data_out         ),              // output wire [35 : 0] dout
        .full       (w_data_full        ),              // output wire full
        .empty      (w_data_empty       )               // output wire empty
    );

    fifo_1x32_standard_sync u_eop_fifo (
        .clk        (clk                ),              // input wire clk
        .srst       (~rst_n             ),              // input wire srst
        .din        (1                  ),              // input wire [0 : 0] din
        .wr_en      (r_eop_wr_en        ),              // input wire wr_en
        .rd_en      (w_eop_rd_en        ),              // input wire rd_en
        .empty      (w_eop_empty        )               // output wire empty
    );

    assign add_cnt0 = din_vld;
    assign end_cnt0 = add_cnt0 && (din_eop || cnt0==4-1);

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

    assign w_data_in = {r_din_sop, r_din_eop, r_din_mty, r_din};

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din <= 32'd0;
        else if(din_vld)
            r_din[31-cnt0*8 -: 8] <= din;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din_sop <= 0;
        else if(din_vld && cnt0==0)
            r_din_sop <= din_sop;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din_eop <= 0;
        else if(din_vld)
            r_din_eop <= din_eop;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din_mty <= 2'd0;
        else if(din_vld)
            r_din_mty <= 3-cnt0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_data_wr_en <= 0;
        else
            r_data_wr_en <= end_cnt0;
    end

    assign w_data_rd_en = r_flag_rd && w_data_empty==0;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_flag_rd <= 0;
        else if(w_data_rd_en && w_data_out[34]==1)
            r_flag_rd <= 0;
        else if(w_eop_empty==0)
            r_flag_rd <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
            dout_mty <= 0;
        end
        else begin
            dout <= w_data_out[31:0];
            dout_vld <= w_data_rd_en;
            dout_sop <= w_data_out[35];
            dout_eop <= w_data_out[34];
            dout_mty <= w_data_out[33:32];
        end
    end

    assign add_cnt1 = r_data_wr_en && flag_cnt1;
    assign end_cnt1 = add_cnt1 && (cnt1==61-1 || w_data_in[34]==1);

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_cnt1 <= 0;
        else if(din_vld && din_sop)
            flag_cnt1 <= 1;
        else if(end_cnt1)
            flag_cnt1 <= 0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            cnt1 <= 0;
        else if(add_cnt1)begin
            if(end_cnt1)
                cnt1 <= 0;
            else
                cnt1 <= cnt1+1;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_eop_wr_en <= 0;
        else
            r_eop_wr_en <= end_cnt1;
    end

    assign w_eop_rd_en = w_data_rd_en && w_data_out[34]==1;

endmodule
