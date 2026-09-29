`timescale 1ns / 1ps

module fifo_4_2(
        input                       clk     ,
        input                       rst_n   ,
        input           [15:0]      din     ,
        input                       din_vld ,
        input                       din_sop ,
        input                       din_eop ,
        output  reg     [15:0]      dout    ,
        output  reg                 dout_vld,
        output  reg                 dout_sop,
        output  reg                 dout_eop
    );

    parameter IDLE = 2'd0;
    parameter CNT = 2'd1;
    parameter CHECK = 2'd2;
    parameter DATA = 2'd3;

    reg         [1:0]       state_c             ;
    reg         [1:0]       state_n             ;

    wire                    idle2cnt_start      ;
    wire                    cnt2check_start     ;
    wire                    check2data_start    ;
    wire                    data2idle_start     ;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            state_c <= IDLE;
        else
            state_c <= state_n;
    end

    always @(*) begin
        case (state_c)
            IDLE : begin
                if(idle2cnt_start)
                    state_n = CNT;
                else
                    state_n = state_c;
            end 
            CNT : begin
                if(cnt2check_start)
                    state_n = CHECK;
                else
                    state_n = state_c;
            end 
            CHECK : begin
                if(check2data_start)
                    state_n = DATA;
                else
                    state_n = state_c;
            end 
            DATA : begin
                if(data2idle_start)
                    state_n = IDLE;
                else
                    state_n = state_c;
            end 
            default: state_n = IDLE;
        endcase
    end

    reg         [7:0]       r_cnt0          ;
    wire                    w_add_cnt0      ;
    wire                    w_end_cnt0      ;

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

    assign w_add_cnt0 = din_vld;
    assign w_end_cnt0 = w_add_cnt0 && din_eop;

    reg         [16:0]      r_check         ; 
    reg         [16:0]      r_check_tmp     ;

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)
            r_check <= 0;
        else
            r_check <= r_check_tmp;
    end

    always @(*) begin
        if(din_vld && din_sop)
            r_check_tmp = {1'd0, din};
        else if(din_vld)begin
            r_check_tmp = r_check+din;
            r_check_tmp = r_check_tmp+r_check_tmp[16];
            r_check_tmp[16] = 0;
        end
        else
            r_check_tmp = r_check;
    end


    wire        [17:0]      w_data_din      ;
    wire                    w_data_wr_en    ;
    wire                    w_data_rd_en    ;
    wire        [17:0]      w_data_dout     ;
    wire                    w_data_empty    ;

    fifo_18x256_fwft_sync u_data_fifo (
        .clk                (clk                ),                  // input wire clk
        .srst               (~rst_n             ),                  // input wire srst
        .din                (w_data_din         ),                  // input wire [17 : 0] din
        .wr_en              (w_data_wr_en       ),                  // input wire wr_en
        .rd_en              (w_data_rd_en       ),                  // input wire rd_en
        .dout               (w_data_dout        ),                  // output wire [17 : 0] dout
        .empty              (w_data_empty       )                   // output wire empty
    );

    assign w_data_din = {din_sop, din_eop, din};
    assign w_data_wr_en = din_vld;
    assign w_data_rd_en = state_c==DATA && w_data_empty==0;

    wire        [15:0]      w_check_din         ;
    wire                    w_check_wr_en       ;
    wire                    w_check_rd_en       ;
    wire        [15:0]      w_check_dout        ;
    wire                    w_check_empty       ;

    fifo_16x32_fwft_sync u_check_fifo (
        .clk                (clk                ),                  // input wire clk
        .srst               (~rst_n             ),                  // input wire srst
        .din                (w_check_din        ),                  // input wire [15 : 0] din
        .wr_en              (w_check_wr_en      ),                  // input wire wr_en
        .rd_en              (w_check_rd_en      ),                  // input wire rd_en
        .dout               (w_check_dout       ),                  // output wire [15 : 0] dout
        .empty              (w_check_empty      )                   // output wire empty
    );

    assign w_check_din = r_check_tmp[15:0];
    assign w_check_wr_en = w_end_cnt0;
    assign w_check_rd_en = state_c==CHECK && w_check_empty==0;

    wire        [7:0]       w_cnt_din           ;
    wire                    w_cnt_wr_en         ;
    wire                    w_cnt_rd_en         ;
    wire        [7:0]       w_cnt_dout          ;
    wire                    w_cnt_empty         ;

    fifo_8x32_fwft_sync u_cnt_fifo (
        .clk                (clk                ),                  // input wire clk
        .srst               (~rst_n             ),                  // input wire srst
        .din                (w_cnt_din          ),                  // input wire [7 : 0] din
        .wr_en              (w_cnt_wr_en        ),                  // input wire wr_en
        .rd_en              (w_cnt_rd_en        ),                  // input wire rd_en
        .dout               (w_cnt_dout         ),                  // output wire [7 : 0] dout
        .empty              (w_cnt_empty        )                   // output wire empty
    );

    assign w_cnt_din = (r_cnt0+1)*2;
    assign w_cnt_wr_en = w_end_cnt0;
    assign w_cnt_rd_en = state_c==CNT && w_cnt_empty==0;

    assign idle2cnt_start = state_c==IDLE && w_cnt_empty==0;
    assign cnt2check_start = state_c==CNT && w_check_empty==0;
    assign check2data_start = state_c==CHECK && w_data_empty==0;
    assign data2idle_start = state_c==DATA && w_data_rd_en && w_data_dout[16];

    always @(posedge clk or negedge rst_n) begin
        if(rst_n==0)begin
            dout <= 0;
            dout_vld <= 0;
            dout_sop <= 0;
            dout_eop <= 0;
        end
        else if(w_cnt_rd_en)begin
            dout <= {8'd0, w_cnt_dout};
            dout_vld <= 1;
            dout_sop <= 1;
            dout_eop <= 0;
        end
        else if(w_check_rd_en)begin
            dout <= w_check_dout;
            dout_vld <= 1;
            dout_sop <= 0;
            dout_eop <= 0;
        end
        else if(w_data_rd_en)begin
            dout <= w_data_dout[15:0];
            dout_vld <= 1;
            dout_sop <= 0;
            dout_eop <= w_data_dout[16];
        end
        else begin
            dout_vld <= 1;
        end
    end
endmodule
