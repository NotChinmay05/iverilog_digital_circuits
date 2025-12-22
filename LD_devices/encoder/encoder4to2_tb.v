`timescale 1 ns / 1 ps
`include "encoder4to2.v"

module encoder4to2_tb;
    reg [3:0] din;
    wire [1:0] dout;

    encoder4to2 uut (.din(din), .dout(dout));

    initial begin
    $dumpfile("encoder4to2.vcd");
    $dumpvars(0, encoder4to2_tb);
        din = 4'b0001; #5;
        din = 4'b0010; #5;
        din = 4'b0100; #5;
        din = 4'b1000; #5;
        din = 4'b0110; #5;  // invalid
        #10 $finish;
    end
endmodule
