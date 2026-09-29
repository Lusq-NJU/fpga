`timescale 1ns / 1ps
// Boundary probe for fifo_4_2: what happens at and beyond the 256-word data FIFO / the
// 8-bit header count.  Each packet is sent isolated (gap) and, in the last group,
// back-to-back (gap 0), so the store-and-forward headroom of the 18x256 data FIFO is
// exercised too.  Not a pass/fail bench - it prints one summary line per output packet.
module probe_len_fifo_4_2;
    reg  clk=0, rst_n, din_vld=0, din_sop=0, din_eop=0;
    reg  [15:0] din=0;
    wire [15:0] dout;
    wire        dout_vld, dout_sop, dout_eop;

    parameter CYCLE=20;

    fifo_4_2 uut(.clk(clk),.rst_n(rst_n),.din(din),.din_vld(din_vld),
                 .din_sop(din_sop),.din_eop(din_eop),
                 .dout(dout),.dout_vld(dout_vld),.dout_sop(dout_sop),.dout_eop(dout_eop));

    always #(CYCLE/2) clk = ~clk;

    // output side monitor: header -> checksum -> data
    integer o_beats=0, o_pkt=0, o_ndata=0;
    reg     o_hdr=0, o_cs=0;
    reg [15:0] o_hdrval=0, o_csval=0;
    always @(posedge clk) if (rst_n && dout_vld) begin
        o_beats = o_beats+1;
        if (dout_sop) begin
            if (o_hdr) $display("  !! new header while packet %0d never got its eop", o_pkt);
            o_pkt=o_pkt+1; o_hdr=1; o_cs=0; o_ndata=0; o_hdrval=dout;
            $display("t=%0t  pkt%0d header=%h", $time, o_pkt, dout);
        end else if (!o_cs) begin
            o_cs=1; o_csval=dout;
            $display("t=%0t  pkt%0d checksum=%h", $time, o_pkt, dout);
        end else begin
            o_ndata=o_ndata+1;
            if (dout_eop) begin
                $display("t=%0t  pkt%0d eop after %0d data beats (header=%h checksum=%h)",
                         $time, o_pkt, o_ndata, o_hdrval, o_csval);
                o_hdr=0;
            end
        end
    end

    task send_pkt(input integer len, input [15:0] base, input integer gap);
        integer k;
        begin
            $display("t=%0t  -- send pkt len=%0d gap=%0d", $time, len, gap);
            for (k=0;k<len;k=k+1) begin
                din = base + k;
                din_sop = (k==0); din_eop = (k==len-1); din_vld = 1;
                @(posedge clk); #1;
            end
            din_vld=0; din_sop=0; din_eop=0;
            if (gap>0) #(CYCLE*gap);
        end
    endtask

    initial begin rst_n=1; #2; rst_n=0; #(CYCLE); rst_n=1; end

    initial begin
        #(CYCLE*10);
        $display("probe_len fifo_4_2: byte-count header wrap / data FIFO 258 limit");
        $display("--- inside the use case (<=250 bytes = 125 words) + just beyond, gap 8");
        send_pkt(124, 16'h1000, 8);   // 248 bytes
        send_pkt(125, 16'h2000, 8);   // 250 bytes: use-case maximum, header must be FA
        send_pkt(126, 16'h3000, 8);   // 252 bytes: just outside
        send_pkt(127, 16'h4000, 8);   // 254 bytes: last header value before the wrap
        send_pkt(128, 16'h5000, 8);   // 256 bytes: header byte wraps to 00
        send_pkt(200, 16'h6000, 8);   // 400 bytes -> 144
        send_pkt(250, 16'h6800, 8);   // 500 bytes -> F4
        #(CYCLE*400);
        $display("--- abutting packets at the use-case maximum, gap 0");
        send_pkt(125, 16'h7000, 0);
        send_pkt(125, 16'h7200, 0);
        send_pkt(125, 16'h7400, 0);
        send_pkt(125, 16'h7600, 8);
        #(CYCLE*800);
        $display("--------------------------------------------------");
        $display("probe_len fifo_4_2: %0d output beats, %0d packets seen", o_beats, o_pkt);
        $display("--------------------------------------------------");
        $finish;
    end
endmodule
