module encoder_4to2 (
    input D0, D1, D2, D3,
    output Y0, Y1
);

    or (Y0, D1, D3);
    or (Y1, D2, D3);

endmodule
