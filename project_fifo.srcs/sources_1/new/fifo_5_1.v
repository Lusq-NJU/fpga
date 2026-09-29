`timescale 1ns / 1ps

module fifo_5_1(
        input                       clk         ,
        input                       rst_n       ,
        input           [31:0]      din         ,
        input                       din_vld     ,
        input                       din_sop     ,
        input                       din_eop     ,
        input           [1:0]       din_mty     ,
        output  reg     [7:0]       dout        ,
        output  reg                 dout_vld    ,
        output  reg                 dout_sop    ,
        output  reg                 dout_eop    
    );

    reg         [7:0]       r_pkg_id        ;

    reg                     r_flag_start_rd ;
    reg                     r_flag_data_rd  ;
    reg                     r_flag_end_rd   ;

    reg         [2:0]       r_cnt0          ;
    wire                    w_add_cnt0      ;
    wire                    w_end_cnt0      ;

    reg         [2:0]       r_cnt1          ;
    wire        [2:0]       x               ;
    wire                    w_add_cnt1      ;
    wire                    w_end_cnt1      ;


    reg         [2:0]       r_cnt2          ;
    wire                    w_add_cnt2      ;
    wire                    w_end_cnt2      ;

    wire        [35:0]      w_data_din      ;
    wire                    w_data_wr_en    ;
    wire                    w_data_rd_en    ;
    wire        [35:0]      w_data_dout     ;
    wire                    w_data_empty    ;

    wire        [7:0]       w_id_din        ;
    wire                    w_id_wr_en      ;
    wire                    w_id_rd_en      ;
    wire        [7:0]       w_id_dout       ;
    wire                    w_id_empty      ;

    wire        [47:0]      w_start_data    ;
    wire        [47:0]      w_end_data      ;

    fifo_36x512_fwft_sync u_data_fifo (
        .clk                (clk                    ),                  // input wire clk
        .srst               (~rst_n                 ),                  // input wire srst
        .din                (w_data_din             ),                  // input wire [35 : 0] din
        .wr_en              (w_data_wr_en           ),                  // input wire wr_en
        .rd_en              (w_data_rd_en           ),                  // input wire rd_en
        .dout               (w_data_dout            ),                  // output wire [35 : 0] dout
        .empty              (w_data_empty           )                   // output wire empty
    );

    fifo_8x32_fwft_sync u_id_fifo (
        .clk                (clk                    ),                  // input wire clk
        .srst               (~rst_n                 ),                  // input wire srst
        .din                (w_id_din               ),                  // input wire [7 : 0] din
        .wr_en              (w_id_wr_en             ),                  // input wire wr_en
        .rd_en              (w_id_rd_en             ),                  // input wire rd_en
        .dout               (w_id_dout              ),                  // output wire [7 : 0] dout
        .empty              (w_id_empty             )                   // output wire empty
    );

    assign w_add_cnt0   =       r_flag_start_rd && w_id_empty==0        ;
    assign w_end_cnt0   =       w_add_cnt0 && r_cnt0==6-1               ;

    assign x            =       4-w_data_dout[33:32]                    ;
    assign w_add_cnt1   =       r_flag_data_rd && w_data_empty==0       ;
    assign w_end_cnt1   =       w_add_cnt1 && r_cnt1==x-1               ;

    assign w_add_cnt2   =       r_flag_end_rd && w_id_empty==0          ;
    assign w_end_cnt2   =       w_add_cnt2 && r_cnt2==6-1               ;

    assign w_data_din   =       {din_sop, din_eop, din_mty, din}        ;
    assign w_data_wr_en =       din_vld                                 ;
    assign w_data_rd_en =       w_data_empty==0 && w_end_cnt1           ;

    assign w_id_din     =       r_pkg_id                                ;
    assign w_id_wr_en   =       din_vld && din_eop                      ;
    assign w_id_rd_en   =       w_end_cnt2                              ;

    assign w_start_data =       {8'h55, 8'h55, 8'h55, 8'hd5, 8'hd5, w_id_dout};
    assign w_end_data   =       {8'h55, 8'h55, 8'h55, 8'hfd, 8'hfd, w_id_dout};

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_cnt0 <= 0;
        else if(w_add_cnt0)begin
            if(w_end_cnt0)
                r_cnt0 <= 0;
            else
                r_cnt0 <= r_cnt0+1;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_cnt1 <= 0;
        else if(w_add_cnt1)begin
            if(w_end_cnt1)
                r_cnt1 <= 0;
            else
                r_cnt1 <= r_cnt1+1;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_cnt2 <= 0;
        else if(w_add_cnt2)begin
            if(w_end_cnt2)
                r_cnt2 <= 0;
            else
                r_cnt2 <= r_cnt2+1;
        end
    end
    
    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_pkg_id <= 0;
        else if(din_vld && din_eop)
            r_pkg_id <= r_pkg_id+1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_flag_start_rd <= 0;
        else if(w_end_cnt0)
            r_flag_start_rd <= 0;
        else if(w_id_empty==0 && r_flag_data_rd==0 && r_flag_end_rd==0)
            r_flag_start_rd <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_flag_data_rd <= 0;
        else if(w_end_cnt1 && w_data_dout[34])
            r_flag_data_rd <= 0;
        else if(w_end_cnt0)
            r_flag_data_rd <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_flag_end_rd <= 0;
        else if(w_end_cnt2)
            r_flag_end_rd <= 0;
        else if(w_end_cnt1 && w_data_dout[34])
            r_flag_end_rd <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
        end
        else if(r_flag_start_rd)begin
            dout <= w_start_data[47-r_cnt0*8 -: 8];
            dout_vld <= w_add_cnt0;
            dout_sop <= r_cnt0==0;
            dout_eop <= r_cnt0==6-1;
        end
        else if(r_flag_end_rd)begin
            dout <= w_end_data[47-r_cnt2*8 -: 8];
            dout_vld <= w_add_cnt2;
            dout_sop <= r_cnt2==0;
            dout_eop <= r_cnt2==6-1;
        end
        else if(r_flag_data_rd)begin
            dout <= w_data_dout[31-r_cnt1*8 -: 8];
            dout_vld <= w_add_cnt1;
            dout_sop <= w_data_dout[35] && r_cnt1==0;
            dout_eop <= w_data_dout[34] && w_end_cnt1;
        end
        else
            dout_vld <= 0;
    end

endmodule
