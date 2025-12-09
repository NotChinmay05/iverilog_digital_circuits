module comparator4 (
    input  [3:0] A,
    input  [3:0] B,
    output       gt,
    output       lt,
    output       eq
);
    assign gt = (A > B);
    assign lt = (A == B);
    assign eq = (A == B);
endmodule
