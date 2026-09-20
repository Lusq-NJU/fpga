`timescale 1ns / 1ps

module fifo_1_4(
        input               clk_in          ,
        input               clk_out         ,
        input               rst_n           ,
        input       [7:0]   data_in         ,
        input               data_in_vld     ,
        input               b_rdy           ,
        output  reg [15:0]  data_out        ,
        output  reg         data_out_vld    
    );

    reg     [15:0]      din             ;
    reg                 wr_en           ;
    reg                 rd_en           ;
    reg                 dout_vld_ff0    ;

    wire    [15:0]      dout            ;
    wire                full            ;
    wire                empty           ;
    wire    [5:0]       rd_data_count   ;
    wire    [5:0]       wr_data_count   ;
    wire                wr_rst_busy     ;
    wire                rd_rst_busy     ;

    fifo_16x64_standard your_instance_name (
        .rst                (~rst_n         )   ,           // input wire rst
        .wr_clk             (clk_in         )   ,           // input wire wr_clk
        .rd_clk             (clk_out        )   ,           // input wire rd_clk
        .din                (din            )   ,           // input wire [15 : 0] din
        .wr_en              (wr_en          )   ,           // input wire wr_en
        .rd_en              (rd_en          )   ,           // input wire rd_en
        .dout               (dout           )   ,           // output wire [15 : 0] dout
        .full               (full           )   ,           // output wire full
        .empty              (empty          )   ,           // output wire empty
        .rd_data_count      (rd_data_count  )   ,           // output wire [5 : 0] rd_data_count
        .wr_data_count      (wr_data_count  )   ,           // output wire [5 : 0] wr_data_count
        .wr_rst_busy        (wr_rst_busy    )   ,           // output wire wr_rst_busy
        .rd_rst_busy        (rd_rst_busy    )               // output wire rd_rst_busy
    );

    reg     [1:0]       cnt0        ;
    wire                add_cnt0    ;    
    wire                end_cnt0    ;

    assign add_cnt0 = data_in_vld;
    assign end_cnt0 = add_cnt0 && cnt0==2-1;

    always @(posedge clk_in or negedge rst_n) begin
        if(rst_n==1'd0)
            cnt0 <= 2'd0;
        else if(add_cnt0)begin
            if(end_cnt0)
                cnt0 <= 2'd0;
            else
                cnt0 <= cnt0 + 1;
        end
    end

    always @(posedge clk_in or negedge rst_n) begin
        if(rst_n==0)
            din <= 16'd0;
        else
            din[15-8*cnt0 -: 8] <= data_in;
    end

    always @(posedge clk_in or negedge rst_n) begin
        if(rst_n==0)
            wr_en <= 0;
        else if(wr_data_count>=61)
            wr_en <= 0;
        else
            wr_en <= end_cnt0;
    end

    always @(*) begin
        if(empty==1)
            rd_en = 0;
        else
            rd_en = b_rdy;
    end

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==0)
            dout_vld_ff0 <= 0;
        else
            dout_vld_ff0 <= rd_en;
    end

    always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==0)
            data_out_vld <= 0;
        else
            data_out_vld <= dout_vld_ff0;
    end

     always @(posedge clk_out or negedge rst_n) begin
        if(rst_n==0)
            data_out <= 0;
        else
            data_out <= dout;
    end

endmodule
