module comb_struct (
    input A,
    input B,
    input C,
    input D,
    output Y
);

    wire Y1, Y2;

    and (Y1, A, B);
    and (Y2, C, D);
    or  (Y, Y1, Y2);

endmodule