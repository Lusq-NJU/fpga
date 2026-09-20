`timescale 1ns / 1ps

module fifo_2_8(
        input                   rst_n       ,
        input                   clk         ,
        input           [7:0]   din         ,
        input                   din_vld     ,
        input                   din_sop     ,
        input                   din_eop     ,
        input           [1:0]   din_chan    ,

        output  reg     [7:0]   dout0       ,
        output  reg             dout0_sop   ,
        output  reg             dout0_eop   ,
        output  reg             dout0_vld   ,

        output  reg     [7:0]   dout1       ,
        output  reg             dout1_sop   ,
        output  reg             dout1_eop   ,
        output  reg             dout1_vld   ,

        output  reg     [7:0]   dout2       ,
        output  reg             dout2_sop   ,
        output  reg             dout2_eop   ,
        output  reg             dout2_vld   ,

        output  reg     [7:0]   dout3       ,
        output  reg             dout3_sop   ,
        output  reg             dout3_eop   ,
        output  reg             dout3_vld   
    );

    wire    [9:0]   data_din    ;

    assign data_din = {din_sop, din_eop, din};

    reg             flag_rd0    ;

    wire            data_wr_en0 ;
    wire            data_rd_en0 ;
    wire    [9:0]   data_dout0  ;
    wire            data_empty0 ;
    wire    [9:0]   data_count0 ;

    fifo_10x512_fwft_sync u_fifo_0 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (data_din       ),              // input wire [9 : 0] din
        .wr_en          (data_wr_en0    ),              // input wire wr_en
        .rd_en          (data_rd_en0    ),              // input wire rd_en
        .dout           (data_dout0     ),              // output wire [9 : 0] dout
        .empty          (data_empty0    ),              // output wire empty
        .data_count     (data_count0    )               // output wire [9 : 0] data_count
    );

    wire            eop_wr_en0  ;
    wire            eop_rd_en0  ;
    wire            eop_empty0  ;

    fifo_1x32_standard_sync u_eop_fifo_0 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (1              ),              // input wire [0 : 0] din
        .wr_en          (eop_wr_en0     ),              // input wire wr_en
        .rd_en          (eop_rd_en0     ),              // input wire rd_en
        .empty          (eop_empty0     )               // output wire empty
    );

    assign data_wr_en0 = din_vld && din_chan==0;
    assign data_rd_en0 = flag_rd0 && data_empty0==0;

    assign eop_wr_en0 = data_wr_en0 && din_eop;
    assign eop_rd_en0 = data_rd_en0 && data_dout0[8];

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_rd0 <= 0;
        else if(data_rd_en0 && data_dout0[8])
            flag_rd0 <= 0;
        else if(data_count0>240 || eop_empty0==0)
            flag_rd0 <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout0 <= 0;
            dout0_sop <= 0;
            dout0_eop <= 0;
            dout0_vld <= 0;
        end
        else begin
            dout0 <= data_dout0[7:0];
            dout0_sop <= data_dout0[9];
            dout0_eop <= data_dout0[8];
            dout0_vld <= data_rd_en0;
        end
    end

    reg             flag_rd1    ;

    wire            data_wr_en1 ;
    wire            data_rd_en1 ;
    wire    [9:0]   data_dout1  ;
    wire            data_empty1 ;
    wire    [9:0]   data_count1 ;

    fifo_10x512_fwft_sync u_fifo_1 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (data_din       ),              // input wire [9 : 0] din
        .wr_en          (data_wr_en1    ),              // input wire wr_en
        .rd_en          (data_rd_en1    ),              // input wire rd_en
        .dout           (data_dout1     ),              // output wire [9 : 0] dout
        .empty          (data_empty1    ),              // output wire empty
        .data_count     (data_count1    )               // output wire [9 : 0] data_count
    );

    wire            eop_wr_en1  ;
    wire            eop_rd_en1  ;
    wire            eop_empty1  ;

    fifo_1x32_standard_sync u_eop_fifo_1 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (1              ),              // input wire [0 : 0] din
        .wr_en          (eop_wr_en1     ),              // input wire wr_en
        .rd_en          (eop_rd_en1     ),              // input wire rd_en
        .empty          (eop_empty1     )               // output wire empty
    );

    assign data_wr_en1 = din_vld && din_chan==1;
    assign data_rd_en1 = flag_rd1 && data_empty1==0;

    assign eop_wr_en1 = data_wr_en1 && din_eop;
    assign eop_rd_en1 = data_rd_en1 && data_dout1[8];

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_rd1 <= 0;
        else if(data_rd_en1 && data_dout1[8])
            flag_rd1 <= 0;
        else if(data_count1>240 || eop_empty1==0)
            flag_rd1 <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout1 <= 0;
            dout1_sop <= 0;
            dout1_eop <= 0;
            dout1_vld <= 0;
        end
        else begin
            dout1 <= data_dout1[7:0];
            dout1_sop <= data_dout1[9];
            dout1_eop <= data_dout1[8];
            dout1_vld <= data_rd_en1;
        end
    end

    reg             flag_rd2    ;

    wire            data_wr_en2 ;
    wire            data_rd_en2 ;
    wire    [9:0]   data_dout2  ;
    wire            data_empty2 ;
    wire    [9:0]   data_count2 ;

    fifo_10x512_fwft_sync u_fifo_2 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (data_din       ),              // input wire [9 : 0] din
        .wr_en          (data_wr_en2    ),              // input wire wr_en
        .rd_en          (data_rd_en2    ),              // input wire rd_en
        .dout           (data_dout2     ),              // output wire [9 : 0] dout
        .empty          (data_empty2    ),              // output wire empty
        .data_count     (data_count2    )               // output wire [9 : 0] data_count
    );

    wire            eop_wr_en2  ;
    wire            eop_rd_en2  ;
    wire            eop_empty2  ;

    fifo_1x32_standard_sync u_eop_fifo_2 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (1              ),              // input wire [0 : 0] din
        .wr_en          (eop_wr_en2     ),              // input wire wr_en
        .rd_en          (eop_rd_en2     ),              // input wire rd_en
        .empty          (eop_empty2     )               // output wire empty
    );

    assign data_wr_en2 = din_vld && din_chan==2;
    assign data_rd_en2 = flag_rd2 && data_empty2==0;

    assign eop_wr_en2 = data_wr_en2 && din_eop;
    assign eop_rd_en2 = data_rd_en2 && data_dout2[8];

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_rd2 <= 0;
        else if(data_rd_en2 && data_dout2[8])
            flag_rd2 <= 0;
        else if(data_count2>240 || eop_empty2==0)
            flag_rd2 <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout2 <= 0;
            dout2_sop <= 0;
            dout2_eop <= 0;
            dout2_vld <= 0;
        end
        else begin
            dout2 <= data_dout2[7:0];
            dout2_sop <= data_dout2[9];
            dout2_eop <= data_dout2[8];
            dout2_vld <= data_rd_en2;
        end
    end

    reg             flag_rd3    ;

    wire            data_wr_en3 ;
    wire            data_rd_en3 ;
    wire    [9:0]   data_dout3  ;
    wire            data_empty3 ;
    wire    [9:0]   data_count3 ;

    fifo_10x512_fwft_sync u_fifo_3 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (data_din       ),              // input wire [9 : 0] din
        .wr_en          (data_wr_en3    ),              // input wire wr_en
        .rd_en          (data_rd_en3    ),              // input wire rd_en
        .dout           (data_dout3     ),              // output wire [9 : 0] dout
        .empty          (data_empty3    ),              // output wire empty
        .data_count     (data_count3    )               // output wire [9 : 0] data_count
    );

    wire            eop_wr_en3  ;
    wire            eop_rd_en3  ;
    wire            eop_empty3  ;

    fifo_1x32_standard_sync u_eop_fifo_3 (
        .clk            (clk            ),              // input wire clk
        .srst           (~rst_n         ),              // input wire srst
        .din            (1              ),              // input wire [0 : 0] din
        .wr_en          (eop_wr_en3     ),              // input wire wr_en
        .rd_en          (eop_rd_en3     ),              // input wire rd_en
        .empty          (eop_empty3     )               // output wire empty
    );

    assign data_wr_en3 = din_vld && din_chan==3;
    assign data_rd_en3 = flag_rd3 && data_empty3==0;

    assign eop_wr_en3 = data_wr_en3 && din_eop;
    assign eop_rd_en3 = data_rd_en3 && data_dout3[8];

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            flag_rd3 <= 0;
        else if(data_rd_en3 && data_dout3[8])
            flag_rd3 <= 0;
        else if(data_count3>240 || eop_empty3==0)
            flag_rd3 <= 1;
    end

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout3 <= 0;
            dout3_sop <= 0;
            dout3_eop <= 0;
            dout3_vld <= 0;
        end
        else begin
            dout3 <= data_dout3[7:0];
            dout3_sop <= data_dout3[9];
            dout3_eop <= data_dout3[8];
            dout3_vld <= data_rd_en3;
        end
    end

endmodule
