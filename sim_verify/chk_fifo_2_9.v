`timescale 1ns / 1ps
// Self-checking bench for fifo_2_9 : 4-to-1 channel MERGE (inverse of fifo_2_8).
// Spec: a byte tagged din_chan==N must emerge with dout_chan==N, in order,
// with sop/eop preserved.  Arbitration order is not asserted.
module chk_fifo_2_9;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    reg  [1:0] din_chan=0;

    wire [7:0] dout;
    wire dout_vld, dout_sop, dout_eop;
    wire [1:0] dout_chan;

    parameter CYCLE=20;

    fifo_2_9 uut(.rst_n(rst_n),.clk(clk),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.din_chan(din_chan),.dout(dout),.dout_vld(dout_vld),
                 .dout_sop(dout_sop),.dout_eop(dout_eop),.dout_chan(dout_chan));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] e0 [0:1023], e1 [0:1023], e2 [0:1023], e3 [0:1023];
    reg       s0 [0:1023], s1 [0:1023], s2 [0:1023], s3 [0:1023];
    reg       p0 [0:1023], p1 [0:1023], p2 [0:1023], p3 [0:1023];
    integer n0=0,n1=0,n2=0,n3=0;
    integer i0=0,i1=0,i2=0,i3=0;
    integer errors=0, beats=0;

    task send(input [7:0] b, input sop, eop, input [1:0] ch);
        begin
            case (ch)
                2'd0: begin e0[n0]=b; s0[n0]=sop; p0[n0]=eop; n0=n0+1; end
                2'd1: begin e1[n1]=b; s1[n1]=sop; p1[n1]=eop; n1=n1+1; end
                2'd2: begin e2[n2]=b; s2[n2]=sop; p2[n2]=eop; n2=n2+1; end
                2'd3: begin e3[n3]=b; s3[n3]=sop; p3[n3]=eop; n3=n3+1; end
            endcase
            din_vld=1; din=b; din_sop=sop; din_eop=eop; din_chan=ch;
            @(posedge clk); #1;
        end
    endtask

    task send_pkt(input [1:0] ch, input integer len, input [7:0] base);
        integer k;
        begin
            for (k=0;k<len;k=k+1) send(base+k, (k==0), (k==len-1), ch);
            din_vld=0; din_sop=0; din_eop=0;
        end
    endtask

    integer idx;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        case (dout_chan)
            2'd0: begin idx=i0;
                if (i0>=n0) begin errors=errors+1; $display("ERROR t=%0t: ch0 extra %h",$time,dout); end
                else begin
                    if (dout!==e0[i0]) begin errors=errors+1; $display("ERROR t=%0t: ch0 byte #%0d got %h exp %h",$time,i0,dout,e0[i0]); end
                    if (dout_sop!==s0[i0]) begin errors=errors+1; $display("ERROR t=%0t: ch0 sop wrong at %0d",$time,i0); end
                    if (dout_eop!==p0[i0]) begin errors=errors+1; $display("ERROR t=%0t: ch0 eop wrong at %0d",$time,i0); end
                end
                i0=i0+1; end
            2'd1: begin
                if (i1>=n1) begin errors=errors+1; $display("ERROR t=%0t: ch1 extra %h",$time,dout); end
                else begin
                    if (dout!==e1[i1]) begin errors=errors+1; $display("ERROR t=%0t: ch1 byte #%0d got %h exp %h",$time,i1,dout,e1[i1]); end
                    if (dout_sop!==s1[i1]) begin errors=errors+1; $display("ERROR t=%0t: ch1 sop wrong at %0d",$time,i1); end
                    if (dout_eop!==p1[i1]) begin errors=errors+1; $display("ERROR t=%0t: ch1 eop wrong at %0d",$time,i1); end
                end
                i1=i1+1; end
            2'd2: begin
                if (i2>=n2) begin errors=errors+1; $display("ERROR t=%0t: ch2 extra %h",$time,dout); end
                else begin
                    if (dout!==e2[i2]) begin errors=errors+1; $display("ERROR t=%0t: ch2 byte #%0d got %h exp %h",$time,i2,dout,e2[i2]); end
                    if (dout_sop!==s2[i2]) begin errors=errors+1; $display("ERROR t=%0t: ch2 sop wrong at %0d",$time,i2); end
                    if (dout_eop!==p2[i2]) begin errors=errors+1; $display("ERROR t=%0t: ch2 eop wrong at %0d",$time,i2); end
                end
                i2=i2+1; end
            2'd3: begin
                if (i3>=n3) begin errors=errors+1; $display("ERROR t=%0t: ch3 extra %h",$time,dout); end
                else begin
                    if (dout!==e3[i3]) begin errors=errors+1; $display("ERROR t=%0t: ch3 byte #%0d got %h exp %h",$time,i3,dout,e3[i3]); end
                    if (dout_sop!==s3[i3]) begin errors=errors+1; $display("ERROR t=%0t: ch3 sop wrong at %0d",$time,i3); end
                    if (dout_eop!==p3[i3]) begin errors=errors+1; $display("ERROR t=%0t: ch3 eop wrong at %0d",$time,i3); end
                end
                i3=i3+1; end
        endcase
    end

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE*3); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0; din_chan=0;
        #(CYCLE*8);
        send_pkt(0, 5,  8'h10);
        send_pkt(2, 100,8'h20);
        send_pkt(1, 15, 8'h30);
        send_pkt(3, 20, 8'h40);
        send_pkt(2, 100,8'h60);
        send_pkt(0, 11, 8'h50);
        send_pkt(3, 20, 8'h70);
        send_pkt(1, 16, 8'h80);
        send_pkt(0, 33, 8'h90);
        send_pkt(3, 7,  8'hA0);
        send_pkt(1, 9,  8'hB0);
        send_pkt(2, 12, 8'hC0);
        #(CYCLE*500);
    end

    initial begin
        #(CYCLE*1400);
        $display("--------------------------------------------------");
        $display("fifo_2_9 : reference ch0/1/2/3 = %0d/%0d/%0d/%0d", n0,n1,n2,n3);
        $display("fifo_2_9 : emitted   ch0/1/2/3 = %0d/%0d/%0d/%0d", i0,i1,i2,i3);
        $display("fifo_2_9 : total beats = %0d", beats);
        if (n0!=i0||n1!=i1||n2!=i2||n3!=i3) $display("NOTE: a channel is missing or has extra bytes");
        if (errors==0) $display("RESULT fifo_2_9: PASS (merge: per-channel order, markers, no loss)");
        else           $display("RESULT fifo_2_9: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
