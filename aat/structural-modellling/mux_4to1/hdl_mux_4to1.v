module hdl_mux_4to1(
    input I0, I1, I2, I3,
    input S1, S0,
    output reg Y
);

    always @(*) begin
        case ({S1, S0})
            2'b00: Y = I0;
            2'b01: Y = I1;
            2'b10: Y = I2;
            2'b11: Y = I3;
            default: Y = 1'b0;
        endcase
    end

endmodule
