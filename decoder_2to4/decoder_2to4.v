module decoder_2to4 (
    input  D0, input  D1,
    output Y0, output Y1,
    output Y2, output Y3
);

    wire D0_bar, D1_bar;

    not (D0_bar, D0);
    not (D1_bar, D1);

    and (Y0, D0_bar, D1_bar);
    and (Y1, D0_bar, D1);
    and (Y2, D0, D1_bar);
    and (Y3, D0, D1);

endmodule
