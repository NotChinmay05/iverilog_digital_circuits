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


