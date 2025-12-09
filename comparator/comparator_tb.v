`timescale 1ns / 1ps
`include "comparator.v"

    module comparator4_tb;
reg [3:0] A;
reg [3:0] B;
wire gt, lt, eq;

comparator4 uut(.A(A), .B(B), .gt(gt), .lt(lt), .eq(eq));

initial begin
    $dumpfile("comparator.vcd");
$dumpvars(0, comparator4_tb);

A = 4'b0000;
B = 4'b0000;
# 10;
A = 4'b0010;
B = 4'b0001;
# 10;
A = 4'b0101;
B = 4'b1010;
# 10;
A = 4'b1111;
B = 4'b1110;
# 10;
A = 4'b1001;
B = 4'b1001;
# 10;

$finish;
end endmodule
