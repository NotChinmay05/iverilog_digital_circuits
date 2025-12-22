`timescale 1 ns/1 ps
`include "half_adder.v"

module half_adder_tb;

    reg A, B;
    wire Sum, Carry;

    half_adder uut (.A(A), .B(B), .Sum(Sum), .Carry(Carry));

    initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
        #20 $finish;
    end

endmodule
