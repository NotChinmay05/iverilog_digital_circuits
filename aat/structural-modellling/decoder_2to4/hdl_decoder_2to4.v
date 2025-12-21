module hdl_decoder_2to4 (
    input  D0,
    input  D1,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3
);

    always @(*) begin
        // DEFAULT: all outputs LOW
        Y0 = 0;
        Y1 = 0;
        Y2 = 0;
        Y3 = 0;

        case ({D0, D1})
            2'b00: Y0 = 1;
            2'b01: Y1 = 1;
            2'b10: Y2 = 1;
            2'b11: Y3 = 1;
        endcase
    end

endmodule
