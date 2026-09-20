`timescale 1ns / 1ps

module fifo_2_3(
        input                       clk         ,
        input                       rst_n       ,
        input               [7:0]   din         ,
        input                       din_vld     ,
        input                       din_sop     ,
        input                       din_eop     ,
        output      reg     [7:0]   dout        ,
        output      reg             dout_vld    ,
        output      reg             dout_sop    ,
        output      reg             dout_eop
    );

    reg         [9:0]       data_din        ;
    reg                     data_wr_en      ;
    reg                     eop_wr_en       ;
    reg                     flag_data_rd    ;
    reg         [7:0]       cnt0            ;
    reg                     flag_add        ;

    wire                    data_rd_en      ;
    wire        [9:0]       data_dout       ;
    wire                    data_full       ;
    wire                    data_empty      ;
    wire                    eop_rd_en       ;
    wire                    eop_empty       ;
    wire                    add_cnt0        ;
    wire                    end_cnt0        ;

    fifo_10x512_fwft_sync u_data_fifo (
        .clk            (clk                ),              // input wire clk
        .srst           (~rst_n             ),              // input wire srst
        .din            (data_din           ),              // input wire [9 : 0] din
        .wr_en          (data_wr_en         ),              // input wire wr_en
        .rd_en          (data_rd_en         ),              // input wire rd_en
        .dout           (data_dout          ),              // output wire [9 : 0] dout
        .full           (data_full          ),              // output wire full
        .empty          (data_empty         )               // output wire empty
    );    

    fifo_10x512_standard_sync u_eop_fifo (
        .clk            (clk                ),              // input wire clk
        .srst           (~rst_n             ),              // input wire srst
        .din            (10'd0              ),              // input wire [9 : 0] din
        .wr_en          (eop_wr_en          ),              // input wire wr_en
        .rd_en          (eop_rd_en          ),              // input wire rd_en
        .empty          (eop_empty          )               // output wire empty
    );  

    assign data_rd_en = flag_data_rd==1 && data_empty==0;
    assign add_cnt0 = data_wr_en && flag_add;
    assign end_cnt0 = add_cnt0 && (cnt0==251-1 || data_din[8]);
    assign eop_rd_en = data_dout[8] && data_rd_en==1;

    //fifo写使能
    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            data_wr_en <= 0;
        else
            data_wr_en <= din_vld;
    end

    //fifo写入数据
    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            data_din <= 10'd0;
        else
            data_din <= {din_sop, din_eop, din};
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout_vld <= 0;
        end
        else begin
            dout_vld <= data_rd_en;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 8'd0;
            dout_sop <= 1'd0;
            dout_eop <= 1'd0;
        end
        else begin
            dout <= data_dout[7:0];
            dout_sop <= data_dout[9];
            dout_eop <= data_dout[8];
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_add <= 0;
        else if(din_vld && din_sop)
            flag_add <= 1;
        else if(end_cnt0)
            flag_add <= 0;
    end

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

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            eop_wr_en <= 0;
        else
            eop_wr_en <= end_cnt0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_data_rd <= 0;
        else if(data_rd_en && data_dout[8]==1)
            flag_data_rd <= 0;
        else 
            flag_data_rd <= eop_empty==0;
    end

endmodule
