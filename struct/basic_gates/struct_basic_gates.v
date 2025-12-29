module and_gate_struct (
    input a,
    input b,
    output y
);
    and (y, a, b);
endmodule

module or_gate_struct (
    input a,
    input b,
    output y
);
    or (y, a, b);
endmodule

module not_gate_struct (
    input a,
    output y
);
    not (y, a);
endmodule
