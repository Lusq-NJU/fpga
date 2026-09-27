`timescale 1ns / 1ps

module fifo_2_12(
        input                   rst_n       ,

        input                   clk_a       ,
        input           [7:0]   data_a      ,
        input                   data_a_sop  ,
        input                   data_a_eop  ,
        input                   data_a_vld  ,

        input                   clk_b       ,
        input           [15:0]  data_b      ,
        input                   data_b_sop  ,
        input                   data_b_eop  ,
        input                   data_b_vld  ,
        input                   data_b_mty  ,

        input                   clk_c       ,
        input           [31:0]  data_c      ,
        input                   data_c_sop  ,
        input                   data_c_eop  ,
        input                   data_c_vld  ,
        input           [1:0]   data_c_mty  ,

        input                   clk_d       ,
        output  reg     [15:0]  data_d      ,
        output  reg             data_d_sop  ,
        output  reg             data_d_eop  ,
        output  reg             data_d_vld  ,
        output  reg             data_d_mty  ,
        output  reg     [1:0]   chan_d  
    );

    reg     [1:0]       r_order         ;

    // FIFO_A
    reg                 cnt_a           ;
    wire                add_cnt_a       ;
    wire                end_cnt_a       ;

    reg     [15:0]      r_data_a        ;
    reg                 r_data_a_sop    ;
    reg                 r_data_a_eop    ;
    reg                 r_data_a_mty    ;

    reg                 r_wr_en_a       ;
    wire    [18:0]      w_din_a         ;
    wire                w_rd_en_a       ;
    wire    [18:0]      w_dout_a        ;
    wire                w_empty_a       ;

    fifo_19x256_fwft_async u_fifo_data_a (
        .rst            (~rst_n             ),          // input wire rst
        .wr_clk         (clk_a              ),          // input wire wr_clk
        .rd_clk         (clk_d              ),          // input wire rd_clk
        .din            (w_din_a            ),          // input wire [18 : 0] din
        .wr_en          (r_wr_en_a          ),          // input wire wr_en
        .rd_en          (w_rd_en_a          ),          // input wire rd_en
        .dout           (w_dout_a           ),          // output wire [18 : 0] dout
        .empty          (w_empty_a          )           // output wire empty
    );

    assign add_cnt_a = data_a_vld;
    assign end_cnt_a = add_cnt_a && (cnt_a==2-1 || data_a_eop);

    assign w_din_a = {r_data_a_sop, r_data_a_eop, r_data_a_mty, r_data_a};
    assign w_rd_en_a = r_order==0 && w_empty_a==0;

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            cnt_a <= 0;
        else if(add_cnt_a)begin
            if(end_cnt_a)
                cnt_a <= 0;
            else
                cnt_a <= cnt_a+1;
        end
    end

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            r_data_a <= 0;
        else if(add_cnt_a)
            r_data_a[15-8*cnt_a -: 8] <= data_a;
    end

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)begin
            r_data_a_sop <= 0;
        end
        else if(add_cnt_a && cnt_a==0)begin
            r_data_a_sop <= data_a_sop;
        end
    end

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            r_data_a_eop <= 0;
        else if(add_cnt_a)
            r_data_a_eop <= data_a_eop;
    end

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            r_data_a_mty <= 0;
        else 
            r_data_a_mty <= end_cnt_a && cnt_a==1-1;
    end

    always @(posedge clk_a or negedge rst_n) begin
        if(rst_n==0)
            r_wr_en_a <= 0;
        else
            r_wr_en_a <= end_cnt_a;
    end

    wire                w_wr_en_eop_a   ;
    wire                w_rd_en_eop_a   ;
    wire                w_empty_eop_a   ;

    assign w_wr_en_eop_a = r_wr_en_a && r_data_a_eop;
    assign w_rd_en_eop_a = w_rd_en_a && w_dout_a[17];

    fifo_1x32_standard_async u_fifo_eop_a (
        .rst            (~rst_n             ),          // input wire rst
        .wr_clk         (clk_a              ),          // input wire wr_clk
        .rd_clk         (clk_d              ),          // input wire rd_clk
        .din            (1                  ),          // input wire [0 : 0] din
        .wr_en          (w_wr_en_eop_a      ),          // input wire wr_en
        .rd_en          (w_rd_en_eop_a      ),          // input wire rd_en
        .empty          (w_empty_eop_a      )           // output wire empty
    );  

    // FIFO_B

    wire    [18:0]      w_din_b         ;
    wire                w_wr_en_b       ;
    wire                w_rd_en_b       ;
    wire    [18:0]      w_dout_b        ;
    wire                w_empty_b       ;

    fifo_19x256_fwft_async u_fifo_data_b (
        .rst            (~rst_n             ),          // input wire rst
        .wr_clk         (clk_b              ),          // input wire wr_clk
        .rd_clk         (clk_d              ),          // input wire rd_clk
        .din            (w_din_b            ),          // input wire [18 : 0] din
        .wr_en          (w_wr_en_b          ),          // input wire wr_en
        .rd_en          (w_rd_en_b          ),          // input wire rd_en
        .dout           (w_dout_b           ),          // output wire [18 : 0] dout
        .empty          (w_empty_b          )           // output wire empty
    );

    assign w_din_b = {data_b_sop, data_b_eop, data_b_mty, data_b};
    assign w_wr_en_b = data_b_vld;
    assign w_rd_en_b = r_order==1 && w_empty_b==0;

    wire                w_wr_en_eop_b   ;
    wire                w_rd_en_eop_b   ;
    wire                w_empty_eop_b   ;

    fifo_1x32_standard_async u_fifo_eop_b (
        .rst            (~rst_n             ),          // input wire rst
        .wr_clk         (clk_b              ),          // input wire wr_clk
        .rd_clk         (clk_d              ),          // input wire rd_clk
        .din            (1                  ),          // input wire [0 : 0] din
        .wr_en          (w_wr_en_eop_b      ),          // input wire wr_en
        .rd_en          (w_rd_en_eop_b      ),          // input wire rd_en
        .empty          (w_empty_eop_b      )           // output wire empty
    );  

    assign w_wr_en_eop_b = data_b_vld && data_b_eop;
    assign w_rd_en_eop_b = w_rd_en_b && w_dout_b[17];

    // FIFO_C
    reg                 cnt_c           ;
    reg     [1:0]       x               ;
    wire                add_cnt_c       ;
    wire                end_cnt_c       ;

    wire    [35:0]      w_din_c         ;
    wire    [35:0]      w_dout_c        ;
    wire                w_wr_en_c       ;
    wire                w_rd_en_c       ;
    wire                w_empty_c       ;

    fifo_36x256_fwft_async u_fifo_data_c (
        .rst            (~rst_n             ),          // input wire rst
        .wr_clk         (clk_c              ),          // input wire wr_clk
        .rd_clk         (clk_d              ),          // input wire rd_clk
        .din            (w_din_c            ),          // input wire [35 : 0] din
        .wr_en          (w_wr_en_c          ),          // input wire wr_en
        .rd_en          (w_rd_en_c          ),          // input wire rd_en
        .dout           (w_dout_c           ),          // output wire [35 : 0] dout
        .empty          (w_empty_c          )           // output wire empty
    );

    assign w_din_c = {data_c_sop, data_c_eop, data_c_mty, data_c};
    assign w_wr_en_c = data_c_vld;
    assign w_rd_en_c = end_cnt_c;

    assign add_cnt_c = r_order==2 && w_empty_c==0;
    assign end_cnt_c = add_cnt_c && cnt_c==x-1;

    always @(*) begin
        if(w_dout_c[33]==1)
            x = 1;
        else
            x = 2;
    end

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            cnt_c <= 0;
        else if(add_cnt_c)begin
            if(end_cnt_c)
                cnt_c <= 0;
            else
                cnt_c <= cnt_c+1; 
        end
    end

    wire                w_wr_en_eop_c   ;
    wire                w_rd_en_eop_c   ;
    wire                w_empty_eop_c   ;

    fifo_1x32_standard_async u_fifo_eop_c (
        .rst            (~rst_n             ),          // input wire rst
        .wr_clk         (clk_c              ),          // input wire wr_clk
        .rd_clk         (clk_d              ),          // input wire rd_clk
        .din            (1                  ),          // input wire [0 : 0] din
        .wr_en          (w_wr_en_eop_c      ),          // input wire wr_en
        .rd_en          (w_rd_en_eop_c      ),          // input wire rd_en
        .empty          (w_empty_eop_c      )           // output wire empty
    );  

    assign w_wr_en_eop_c = data_c_vld && data_c_eop;
    assign w_rd_en_eop_c = w_rd_en_c && w_dout_c[34];

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)
            r_order <= 3;
        // else if((w_rd_en_a && w_dout_a[17]) || (w_rd_en_b && w_dout_b[17]) || (w_rd_en_c && w_dout_c[34]))
        else if(w_rd_en_eop_a || w_rd_en_eop_b || w_rd_en_eop_c)
            r_order <= 3;
        else if(r_order==3 && w_empty_eop_a==0)
            r_order <= 0;
        else if(r_order==3 && w_empty_eop_b==0)
            r_order <= 1;
        else if(r_order==3 && w_empty_eop_c==0)
            r_order <= 2;
    end

    always @(posedge clk_d or negedge rst_n) begin
        if(rst_n==0)begin
            data_d <= 0;
            data_d_sop <= 0;
            data_d_eop <= 0;
            data_d_vld <= 0;
            data_d_mty <= 0;
            chan_d <= 0;
        end
        else if(r_order==0)begin
            data_d <= w_dout_a[15:0];
            data_d_sop <= w_dout_a[18];
            data_d_eop <= w_dout_a[17];
            data_d_mty <= w_dout_a[16];
            data_d_vld <= w_rd_en_a;
            chan_d <= 0;
        end
        else if(r_order==1)begin
            data_d <= w_dout_b[15:0];
            data_d_sop <= w_dout_b[18];
            data_d_eop <= w_dout_b[17];
            data_d_mty <= w_dout_b[16];
            data_d_vld <= w_rd_en_b;
            chan_d <= 1;
        end
        else if(r_order==2)begin
            data_d <= w_dout_c[31-cnt_c*16 -: 16];
            data_d_sop <= w_dout_c[35] && cnt_c==0;
            data_d_eop <= w_dout_c[34] && w_rd_en_eop_c;
            data_d_mty <= w_dout_c[32] && w_rd_en_eop_c;
            data_d_vld <= add_cnt_c;
            chan_d <= 2;
        end
        else begin
            data_d <= 0;
            data_d_sop <= 0;
            data_d_eop <= 0;
            data_d_vld <= 0;
            data_d_mty <= 0;
            chan_d <= 0;
        end
    end

endmodule

