`timescale 1ns/1ps
`include "nor.v"

module nor_gate_tb;
reg a,b;
wire y;

nor_gate uut(a,b,y);

initial begin
$dumpfile("nor.vcd");
$dumpvars(0, nor_gate_tb);
a = 0; b = 0;
#10
b = 0; b = 1;
#10
a = 1; b = 0;
#10
b = 1; b = 1;
#10
$finish();
end
                
endmodule