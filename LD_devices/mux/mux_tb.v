`timescale 1ns/1ps
`include "mux.v"

module mux2to1_tb;
    reg sel;
    reg [3:0] in0, in1;
    wire [3:0] out;

    mux2to1 uut (.sel(sel), .in0(in0), .in1(in1), .out(out));

    initial begin
        $dumpfile("mux.vcd");
        $dumpvars(0, mux2to1_tb);

        in0 = 4'hA; in1 = 4'h5; sel = 0; #10;
        sel = 1; #10;
        in0 = 4'h3; in1 = 4'hC; sel = 0; #10;
        sel = 1; #10;

        $finish;
    end
endmodule
