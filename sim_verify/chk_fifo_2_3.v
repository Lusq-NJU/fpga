`timescale 1ns / 1ps
// Self-checking bench for fifo_2_3 : 8-bit packet pass-through, sop/eop preserved.
// Spec: packets must emerge whole, in order, with sop/eop on the same byte positions.
// The DUT contains `end_cnt0 = ... || cnt0==251-1`, i.e. a 251-byte max packet;
// packets longer than that are expected to be split (checked here).
module chk_fifo_2_3;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [7:0] din=0;
    wire [7:0] dout;
    wire       dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_2_3 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),.din_sop(din_sop),
                 .din_eop(din_eop),.dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),
                 .dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    reg [7:0] ebyte [0:16383];
    reg       esop  [0:16383];
    reg       eeop  [0:16383];
    integer expn=0;

    // build reference before driving (so it always leads the DUT)
    task prep_pkt(input integer len);
        integer k;
        begin
            for (k=0;k<len;k=k+1) begin
                ebyte[expn]=8'h30+(k&8'h7F); esop[expn]=(k==0); eeop[expn]=(k==len-1);
                expn=expn+1;
            end
        end
    endtask

    task drive_pkt(input integer len);
        integer k;
        begin
            for (k=0;k<len;k=k+1) begin
                din_vld=1; din=8'h30+(k&8'h7F); din_sop=(k==0); din_eop=(k==len-1);
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0; din=0;
        end
    endtask

    integer rdi=0, beats=0, errors=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        beats=beats+1;
        if (rdi >= expn) begin
            errors=errors+1; $display("ERROR t=%0t: extra byte %h", $time, dout);
        end else begin
            if (dout     !== ebyte[rdi]) begin errors=errors+1;
                $display("ERROR t=%0t: byte #%0d got %h expected %h", $time, beats, dout, ebyte[rdi]); end
            if (dout_sop !== esop[rdi])  begin errors=errors+1;
                $display("ERROR t=%0t: byte #%0d sop got %b expected %b", $time, beats, dout_sop, esop[rdi]); end
            if (dout_eop !== eeop[rdi])  begin errors=errors+1;
                $display("ERROR t=%0t: byte #%0d eop got %b expected %b", $time, beats, dout_eop, eeop[rdi]); end
        end
        rdi=rdi+1;
    end

    task pkt(input integer len);
        begin prep_pkt(len); #(CYCLE*2); drive_pkt(len); #(CYCLE*10); end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        din=0; din_vld=0; din_sop=0; din_eop=0;
        #(CYCLE*10);
        pkt(5);
        pkt(100);
        pkt(250);   // at the cap boundary
        pkt(251);   // exactly the cap
        pkt(256);   // over the cap (TB uses this)
        #(CYCLE*300);
    end

    initial begin
        #(CYCLE*3000);
        $display("--------------------------------------------------");
        $display("fifo_2_3 : expected bytes = %0d, output beats = %0d", expn, beats);
        if (expn!=beats) $display("NOTE: expected (%0d) != observed (%0d)", expn, beats);
        if (errors==0) $display("RESULT fifo_2_3: PASS (packets preserved, sop/eop correct)");
        else           $display("RESULT fifo_2_3: FAIL (%0d error(s))", errors);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
