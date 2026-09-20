`timescale 1ns / 1ps

module fifo_2_3_tb(

    );

    reg                 clk         ;
    reg                 rst_n       ;   
    
    reg     [7:0]       din         ;
    reg                 din_vld     ;
    reg                 din_sop     ;
    reg                 din_eop     ;

    
    wire    [7:0]       dout        ;
    wire                dout_vld    ;
    wire                dout_sop    ;
    wire                dout_eop    ;
  
    
    parameter CYCLE     = 20;
    
    parameter RST_TIME  = 3 ;

    integer     i ;
    
    fifo_2_3 uut(
    .clk             ( clk        ), 
    .rst_n           ( rst_n      ),
    .din             ( din        ),
    .din_vld         ( din_vld    ),
    .din_sop         ( din_sop    ),
    .din_eop         ( din_eop    ),
    .dout            ( dout       ),
    .dout_vld        ( dout_vld   ),
    .dout_sop        ( dout_sop   ),
    .dout_eop        ( dout_eop   )  
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

    initial begin
        #1;   
        din     =  0;
        din_vld =  0; 
        din_sop =  0;
        din_eop =  0;
        #(3*CYCLE);
        din     = 8'h00;
        #(2*CYCLE);
        for(i=0;i<256;i=i+1) begin
            din=(i==0)? 00:din+1;
            din_vld   = 1;
            din_sop=(i==0)?  1:0 ;
            din_eop=(i==255)? 1:0 ;       
            #(1*CYCLE)  ;
        end

        din         = 0;
        din_vld     = 0;
        din_sop     = 0;
        din_eop     = 0;


        #(2*CYCLE);
        for(i=0;i<25;i=i+1) begin
            din=(i==0)? 00:din+1;
            din_vld   = 1;
            din_sop=(i==0)?  1:0 ;
            din_eop=(i==24)? 1:0 ;       
            #(1*CYCLE)  ;
        end

        din         = 0;
        din_vld     = 0;
        din_sop     = 0;
        din_eop     = 0;
    end
endmodule
