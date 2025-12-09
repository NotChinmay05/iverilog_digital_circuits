`timescale 1 ns / 1 ps
`include "decoder2to4.v"

module decoder2to4_tb;
    reg [1:0] din;
    wire [3:0] dout;

    decoder2to4 uut (.din(din), .dout(dout));

    initial begin
    $dumpfile("decoder2to4.vcd");
    $dumpvars(0, decoder2to4_tb);
        din = 2'b00; #5;
        din = 2'b01; #5;
        din = 2'b10; #5;
        din = 2'b11; #5;
        #10 $finish;
    end
endmodule
