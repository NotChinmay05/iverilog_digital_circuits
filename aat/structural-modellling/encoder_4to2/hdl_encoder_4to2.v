module hdl_encoder_4to2 (
    input D0, D1, D2, D3,
    output reg Y0, Y1
);

    always @(*) begin
        case ({D3, D2, D1, D0})
            4'b0001: begin Y1 = 0; Y0 = 0; end
            4'b0010: begin Y1 = 0; Y0 = 1; end
            4'b0100: begin Y1 = 1; Y0 = 0; end
            4'b1000: begin Y1 = 1; Y0 = 1; end
            default: begin Y1 = 0; Y0 = 0; end
        endcase
    end

endmodule
