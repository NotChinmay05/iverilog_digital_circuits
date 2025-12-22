`timescale 1 ns/1 ps
`include "xor.v"

module xor_gate_tb;
reg a,b;
wire y;

xor_gate uut(a,b,y);

initial begin
$dumpfile("xor.vcd");
$dumpvars(0, xor_gate_tb);
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