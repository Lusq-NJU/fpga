`timescale 1ns / 1ps

module fifo_1_9(
        input                       clk     ,
        input                       rst_n   ,
        input           [7:0]       din     ,
        input                       din_vld ,
        input                       din_sop ,
        input                       din_eop ,
        
        output  reg     [15:0]      dout    ,
        output  reg                 dout_vld,
        output  reg                 dout_sop,
        output  reg                 dout_eop,
        output  reg                 dout_mty,
        input                       b_rdy
    );

    reg     [18:0]      r_din       ;
    reg                 wr_en       ;
    wire                rd_en       ;
    wire    [18:0]      w_dout      ;
    wire                full        ;
    wire                empty       ;

    fifo_19x256_standard_sync u_fifo (
        .clk        (clk        ),          // input wire clk
        .srst       (~rst_n     ),          // input wire srst
        .din        (r_din      ),          // input wire [18 : 0] din
        .wr_en      (wr_en      ),          // input wire wr_en
        .rd_en      (rd_en      ),          // input wire rd_en
        .dout       (w_dout     ),          // output wire [18 : 0] dout
        .full       (full       ),          // output wire full
        .empty      (empty      )           // output wire empty
    );

    reg     [1:0]       cnt0    ;
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

    assign add_cnt0 = din_vld;
    assign end_cnt0 = add_cnt0 && (cnt0==2-1 || din_eop==1);

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            wr_en <= 0;
        else
            wr_en <= end_cnt0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din[15:0] <= 16'd0;
        else if(add_cnt0)
            r_din[15-8*cnt0 -: 8] <= din;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din[18] <= 1'd0;
        else if(add_cnt0 && cnt0==0)begin
            r_din[18] <= din_sop;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            r_din[17] <= 0;
            r_din[16] <= 0;
        end
        else if(end_cnt0)begin
            if(din_eop==1)begin
                r_din[17] <= 1;
                r_din[16] <= cnt0==0 ? 1 : 0;
            end
            else begin
                r_din[17] <= 0;
                r_din[16] <= 0;
            end
        end
    end

    assign rd_en = b_rdy && empty==0;

    reg         dout_vld_ff0;

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
            dout <= 0;
        else
            dout <= w_dout[15:0];
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_sop <= 0;
        else
            dout_sop <= w_dout[18];
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_eop <= 0;
        else
            dout_eop <= w_dout[17];
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            dout_mty <= 0;
        else
            dout_mty <= w_dout[16];
    end

endmodule
