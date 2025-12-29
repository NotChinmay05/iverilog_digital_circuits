module nand_struct (
    input A,
    input B,
    output Y
);
    nand (Y, A, B);
endmodule

module nor_struct (
    input A,
    input B,
    output Y
);
    nor (Y, A, B);
endmodule
