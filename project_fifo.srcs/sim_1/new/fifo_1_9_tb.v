`timescale 1ns / 1ps

module fifo_1_9_tb(

    );

    reg             clk         ;
    reg             rst_n       ;

    reg     [7:0]   din         ;
    reg             din_vld     ;
    reg             din_sop     ;
    reg             din_eop     ;
    reg             b_rdy       ;
    wire    [15:0]  dout        ;
    wire            dout_vld    ;
    wire            dout_sop    ;
    wire            dout_eop    ;

    parameter CYCLE    = 20;

    parameter RST_TIME = 3 ;

    fifo_1_9 uut(        
        .clk        (clk        )   ,
        .rst_n      (rst_n      )   ,
        .din        (din        )   ,
        .din_vld    (din_vld    )   ,
        .din_sop    (din_sop    )   ,
        .din_eop    (din_eop    )   , 
        .b_rdy      (b_rdy      )   ,
        .dout       (dout       )   ,
        .dout_vld   (dout_vld   )   ,
        .dout_sop   (dout_sop   )   ,
        .dout_eop   (dout_eop   )     
    );

    initial begin
        clk = 0;
        forever
        #(CYCLE/2)
        clk=~clk;
    end

    initial begin
        rst_n = 1;
        #2;
        rst_n = 0;
        #(CYCLE);
        rst_n = 1;
    end

    integer         i;
    reg     [8-1:0] len ;
    reg     [2-1:0] len1;
    initial begin
        #1;
        din     =0;
        din_sop =0;
        din_eop =0;
        din_vld =0;
        b_rdy   =0;
        #(CYCLE*RST_TIME);
        #(10*CYCLE);
        //a
        forever begin
            len =   $random;
            len =   len%141;
            for(i=60;i<(len+60);i=i+1)begin
                din     = $random           ;
                din_sop = (i==60)?1:0       ;
                din_eop = (i>=len+60-1)?1:0 ;
                din_vld = 1          ;
                b_rdy   = $random && din_vld;
                #(1*CYCLE);
            end
            din     =1;
            din_sop =0;
            din_eop =0;
            din_vld =0;
            
            len1    =$random;
            #(len1*CYCLE);
        end
            
    end
endmodule
