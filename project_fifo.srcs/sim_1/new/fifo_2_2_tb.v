`timescale 1ns / 1ps

module fifo_2_2_tb(

    );

    reg clk;
    reg rst_n;

    reg [8-1:0]  din        ;
    reg          din_vld    ;
    reg [10-1:0] cfg_thd_0  ;
    reg [10-1:0] cfg_thd_1  ;

    wire[8-1:0]  dout       ;
    wire         dout_vld   ;

    parameter CYCLE    = 20;
    parameter RST_TIME = 3 ;

    fifo_2_2 uut(        
        .clk        (clk      )  ,
        .rst_n      (rst_n    )  ,
        .din        (din      )  ,
        .din_vld    (din_vld  )  ,
        .cfg_thd_0  (cfg_thd_0)  ,
        .cfg_thd_1  (cfg_thd_1)  ,
        .dout       (dout     )  ,
        .dout_vld   (dout_vld )    
    );

    initial begin
        clk = 0  ;
        forever
        #(CYCLE/2)
        clk =~clk;
    end
    initial begin
        rst_n = 1;
        #2;
        rst_n = 0;
        #(CYCLE);
        rst_n = 1;
    end

    initial begin
        #1;
        din     =0;
        din_vld =0;
        cfg_thd_0 = 20 ;
        cfg_thd_1 = 30 ;
        #(CYCLE*RST_TIME);
        #(10*CYCLE);

        forever begin
        din     = $random ;
        din_vld = $random ;
        #(CYCLE);
        end        
    end

endmodule
