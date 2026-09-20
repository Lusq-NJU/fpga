`timescale 1ns / 1ps

module fifo_1_10(
        input               clk     ,
        input               rst_n   ,
        input   [7:0]       din     ,
        input               din_vld ,
        input               din_sop ,
        input               din_eop ,

        input               b_rdy   ,
        output  reg [31:0]  dout    ,
        output  reg         dout_eop,
        output  reg         dout_sop,
        output  reg         dout_vld,
        output  reg [1:0]   dout_mty
    );

    reg     [35:0]      r_din   ;
    reg                 wr_en   ;
    wire                rd_en   ;
    wire    [35:0]      w_dout  ;
    wire                full    ;
    wire                empty   ;

    fifo_36x256_standard_sync i_fifo (
        .clk    (clk    ),  // input wire clk
        .srst   (~rst_n ),  // input wire srst
        .din    (r_din  ),  // input wire [35 : 0] din
        .wr_en  (wr_en  ),  // input wire wr_en
        .rd_en  (rd_en  ),  // input wire rd_en
        .dout   (w_dout ),  // output wire [35 : 0] dout
        .full   (full   ),  // output wire full
        .empty  (empty  )   // output wire empty
    );

    reg     [2:0]   cnt0    ;
    wire            add_cnt0;
    wire            end_cnt0;

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
    assign end_cnt0 = add_cnt0 && (cnt0==4-1 || din_eop);

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din[31:0] <= 32'd0;
        else 
            r_din[31-cnt0*8 -: 8] <= din; 
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_din[35] <= 0;
        else if(add_cnt0 && cnt0==0)
            r_din[35] <= din_sop;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            r_din[34] <= 0;
            r_din[33:32] <= 2'd0;
        end
        else if(add_cnt0 && din_eop)begin
            r_din[34] <= 1;
            r_din[33:32] <= 3-cnt0;
        end
        else begin
            r_din[34] <= 0;
            r_din[33:32] <= 2'd0;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            wr_en <= 0;
        else
            wr_en <= end_cnt0;
    end

    assign rd_en = b_rdy && empty==0;

    reg             dout_vld_ff0;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout_vld_ff0 <= 0;
            dout_vld <= 0;
        end
        else begin
            dout_vld_ff0 <= rd_en;
            dout_vld <= dout_vld_ff0;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 32'd0;
            dout_sop <= 1'd0;
            dout_eop <= 1'd0;
            dout_mty <= 2'd0;
        end
        else begin
            dout <= w_dout[31:0];
            dout_sop <= w_dout[35];
            dout_eop <= w_dout[34];
            dout_mty <= w_dout[33:32];
        end
    end

endmodule
