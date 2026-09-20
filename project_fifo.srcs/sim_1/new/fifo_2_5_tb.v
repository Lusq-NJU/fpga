`timescale 1ns / 1ps

module fifo_2_5_tb(

    );

    reg                     clk_a       ;
    reg                     clk_b       ;
    reg                     clk_c       ;                    
    reg                     clk_d       ;
    reg                     rst_n       ;

    reg                     data_a_vld  ;
    reg     [15:0]          data_a      ;

    reg                     data_b_vld  ;
    reg     [15:0]          data_b      ;

    reg                     data_c_vld  ;
    reg     [15:0]          data_c      ;


    wire                    data_d_vld  ;
    wire    [15:0]          data_d      ;   
    wire    [1:0]           chan_d      ;

    parameter CYCLE_A    = 25;
    parameter CYCLE_B    = 50;
    parameter CYCLE_C    = 100;
    parameter CYCLE_D    = 12.5;

    parameter RST_TIME = 3 ;

    integer i,j,k;

    fifo_2_5 uut(
        .clk_a              ( clk_a         ), 
        .clk_b              ( clk_b         ), 
        .clk_c              ( clk_c         ), 
        .clk_d              ( clk_d         ), 
        .rst_n              ( rst_n         ),
        .data_a_vld         ( data_a_vld    ),
        .data_a             ( data_a        ),
        .data_b_vld         ( data_b_vld    ),
        .data_b             ( data_b        ),
        .data_c_vld         ( data_c_vld    ),
        .data_c             ( data_c        ),
        .data_d_vld         ( data_d_vld    ),
        .data_d             ( data_d        ),
        .chan_d             ( chan_d        )
    );

    initial begin
        clk_a = 0;
        forever
        #(CYCLE_A/2)
        clk_a=~clk_a;
    end

    initial begin
        clk_b = 0;
        forever
        #(CYCLE_B/2)
        clk_b=~clk_b;
    end

    initial begin
        clk_c = 0;
        forever
        #(CYCLE_C/2)
        clk_c=~clk_c;
    end

    initial begin
        clk_d = 0;
        forever
        #(CYCLE_D/2)
        clk_d=~clk_d;
    end

    //产生复位信号
    initial begin
        rst_n = 1;
        #2;
        rst_n = 0;
        #(CYCLE_C);
        rst_n = 1;
    end

    initial begin
        //报文A初始化
        #1;
        data_a_vld=0;
        data_a =0;
        //报文A输入
        #(10*CYCLE_C);
        for(i=0;i<32;i=i+1) begin
            data_a=(i==0)? 0:data_a+1;
            data_a_vld=1;
            #(1*CYCLE_A);
        end
        data_a_vld=0;
        data_a =0;
    end

    initial begin
        //报文B初始化
        #1;    
        data_b_vld=0;
        data_b =0;
        //报文B输入
        #(10*CYCLE_C);
        for(j=0;j<32;j=j+1) begin
            data_b=(j==0)? 20:data_b+1;
            data_b_vld=1;
            #(1*CYCLE_B);
        end
        data_b_vld=0;
        data_b =0;
    end

    initial begin
        //报文C初始化
        #1;
        data_c_vld=0;
        data_c =0;
        //报文C输入
        #(10*CYCLE_C);
        for(k=0;k<31;k=k+1) begin
            data_c=(k==0)? 50:data_c+1;
            data_c_vld=1;
            #(1*CYCLE_C);
        end
        data_c_vld=0;
        data_c =0;
    end

endmodule
