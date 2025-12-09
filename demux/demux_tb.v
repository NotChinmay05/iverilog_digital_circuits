`timescale 1ns/1ps
`include "demux.v"

module demux1to2_tb;
    reg sel;
    reg [3:0] in;
    wire [3:0] out0, out1;

    demux1to2 uut (.sel(sel), .in(in), .out0(out0), .out1(out1));

    initial begin
        $dumpfile("demux.vcd");
        $dumpvars(0, demux1to2_tb);

        in = 4'hF; sel = 0; #10;
        sel = 1; #10;
        in = 4'h3; sel = 0; #10;
        sel = 1; #10;

        $finish;
    end
endmodule
