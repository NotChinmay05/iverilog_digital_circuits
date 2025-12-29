module struct_basic_gates_tb;

    reg a, b;
    wire y_and, y_or, y_not;

    and_gate_struct op1 (.a(a), .b(b), .y(y_and));
    or_gate_struct  op2 (.a(a), .b(b), .y(y_or));
    not_gate_struct op3 (.a(a), .y(y_not));

    initial begin
        $dumpfile("struct_basic_gates.vcd");
        $dumpvars(0, struct_basic_gates_tb);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end

endmodule
