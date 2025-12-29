module and_gate_df (
    input a,
    input b,
    output y
);
    assign y = a & b;
endmodule

module or_gate_df (
    input a,
    input b,
    output y
);
    assign y = a | b;
endmodule

module not_gate_df (
    input a,
    output y
);
    assign y = ~a;
endmodule

module df_basic_gates_tb;

    reg a, b;
    wire y_and, y_or, y_not;

    // Instantiate structural models
    and_gate_df op1 (.a(a), .b(b), .y(y_and));
    or_gate_df op2 (.a(a), .b(b), .y(y_or));
    not_gate_df op3 (.a(a), .y(y_not));

    initial begin
        $dumpfile("df_basic_gates.vcd");
        $dumpvars(0, df_basic_gates_tb);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end

endmodule

