`timescale 1ns / 1ps

module fifo_2_8_tb(

    );

    //时钟和复位
    reg         clk         ;
    reg         rst_n       ;

    //uut(被测模块例化之后的模块)的输入信号(注意：被测模块输入信号定义成reg)

    reg         din_vld     ;
    reg         din_sop     ;
    reg         din_eop     ;
    reg [7:0]   din         ;
    reg [1:0]   din_chan    ;

    //uut(被测模块例化之后的模块)的输出信号(注意：被测模块输出信号定义成wire)
    wire        dout0_vld   ;
    wire        dout0_sop   ;
    wire        dout0_eop   ;
    wire[7:0]   dout0       ;
    wire        dout1_vld   ;
    wire        dout1_sop   ;
    wire        dout1_eop   ;
    wire[7:0]   dout1       ;
    wire        dout2_vld   ;
    wire        dout2_sop   ;
    wire        dout2_eop   ;
    wire[7:0]   dout2       ;
    wire        dout3_vld   ;
    wire        dout3_sop   ;
    wire        dout3_eop   ;
    wire[7:0]   dout3       ;


    //时钟周期，单位为ns，可在此修改时钟周期。
    parameter CYCLE_A    = 20;

    //复位时间，此时表示复位3个时钟周期的时间。
    parameter RST_TIME = 3 ;

    integer i,j,k,y;

    //待测试的模块例化(.clk为模块信号，clk为测试文件定义的信号)
    fifo_2_8 uut(
        .clk               ( clk        ),  
        .rst_n             ( rst_n      ),
        .din_vld           ( din_vld    ),
        .din_sop           ( din_sop    ),
        .din_eop           ( din_eop    ),
        .din               ( din        ),
        .din_chan          ( din_chan   ),
        .dout0             ( dout0      ),
        .dout0_sop         ( dout0_sop  ),
        .dout0_eop         ( dout0_eop  ),
        .dout0_vld         ( dout0_vld  ),
        .dout1             ( dout1      ),
        .dout1_sop         ( dout1_sop  ),
        .dout1_eop         ( dout1_eop  ),
        .dout1_vld         ( dout1_vld  ),
        .dout2             ( dout2      ),
        .dout2_sop         ( dout2_sop  ),
        .dout2_eop         ( dout2_eop  ),
        .dout2_vld         ( dout2_vld  ),
        .dout3             ( dout3      ),
        .dout3_sop         ( dout3_sop  ),
        .dout3_eop         ( dout3_eop  ),
        .dout3_vld         ( dout3_vld  ) 
        );

    //时钟和复位模块驱动的写法均为固定写法
    //生成本地时钟50M
    initial begin
        clk = 0;
        forever
        #(CYCLE_A/2)
        clk = ~clk;
    end

    //产生复位信号
    initial begin
        rst_n = 1;
        #2;
        rst_n = 0;
        #(CYCLE_A);
        rst_n = 1;
    end

    initial begin
        //输入参数初始化
        #1;
        din_vld=0;
        din_sop=0;
        din_eop=0;
        din    =0;
        din_chan = 0;


        #(10*CYCLE_A);
        //给dout0输入报文
        for(i=0;i<5;i=i+1) begin
            din=(i==0)? 0:din+1;
            din_sop=(i==0)? 1:0;
            din_eop=0;
            din_vld=1;
            din_chan=0;
            #(1*CYCLE_A);
        end

        //给dout2输入报文
        for(j=0;j<100;j=j+1) begin
            din =(j==0)? 0:din+1;
            din_sop=(j==0)? 1:0;
            din_eop=0;
            din_vld=1;
            din_chan=2;
            #(1*CYCLE_A);
        end

        //给dout1输入报文
        for(k=0;k<15;k=k+1) begin
            din =(k==0)? 50:din+1;
            din_sop=(k==0)? 1:0;
            din_eop=0;
            din_vld=1;
            din_chan=1;
            #(1*CYCLE_A);
        end

        //给dout3输入报文
        for(y=0;y<20;y=y+1) begin
            din=(y==0)? 20:din+1;
            din_sop=(y==0)? 1:0;
            din_eop=0;
            din_vld=1;
            din_chan=3;
            #(1*CYCLE_A);
        end

        //给dout2输入报文
        for(j=100;j<200;j=j+1) begin
            din =(j==100)? 100:din+1;
            din_sop=0;
            din_eop=0;
            din_vld=1;
            din_chan=2;
            #(1*CYCLE_A);
        end

        //给dout0输入报文
        for(i=5;i<16;i=i+1) begin
            din=(i==5)? 5:din+1;
            din_sop=0;
            din_eop=(i==15)?  1:0 ;
            din_vld=1;
            din_chan=0;
            #(1*CYCLE_A);
        end

        //给dout2输入报文
        for(j=200;j<230;j=j+1) begin
            din =(j==200)? 200:din+1;
            din_sop=0;
            din_eop=0;
            din_vld=1;
            din_chan=2;
            #(1*CYCLE_A);
        end

        //给dout3输入报文
        for(y=20;y<40;y=y+1) begin
            din=(y==20)? 40:din+1;
            din_sop=0;
            din_eop=(y==39)?  1:0;
            din_vld=1;
            din_chan=3;
            #(1*CYCLE_A);
        end

        //给dout2输入报文
        for(j=230;j<256;j=j+1) begin
            din =(j==230)? 230:din+1;
            din_sop=0;
            din_eop=(j==255)? 1:0;
            din_vld=1;
            din_chan=2;
            #(1*CYCLE_A);
        end

        //给dout1输入报文
        for(k=15;k<31;k=k+1) begin
            din =(k==15)? 65:din+1;
            din_sop=0;
            din_eop=(k==30)?  1:0;
            din_vld=1;
            din_chan=1;
            #(1*CYCLE_A);
        end

        din_vld=0;
        din_sop=0;
        din_eop=0;
        din    =0;
        din_chan = 0;
        #(10*CYCLE_A);
        din_vld=0;
        din_sop=0;
        din_eop=0;
        din    =0;
        din_chan = 0;
    end

endmodule
