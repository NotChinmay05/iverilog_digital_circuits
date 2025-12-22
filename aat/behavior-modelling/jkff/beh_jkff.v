module jk_ff_beh (
    input J,
    input K,
    input clk,
    output reg Q,
    output reg Qbar
);
	
   initial begin
        Q = 0;
        Qbar = 1;
    end
	
    always @(posedge clk) begin
	Q = 1;
	Qbar = 0;
        case ({J, K})
            2'b00: begin
                Q    <= Q;        // Hold
                Qbar <= Qbar;
            end
            2'b01: begin
                Q    <= 0;        // Reset
                Qbar <= 1;
            end
            2'b10: begin
                Q    <= 1;        // Set
                Qbar <= 0;
            end
            2'b11: begin
                Q    <= ~Q;       // Toggle
                Qbar <= ~Qbar;
            end
        endcase
    end
endmodule
