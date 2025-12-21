module strcut_up_counter_tb;

    reg clk;
    wire [2:0] Q;

    up_counter_3bit_struct op (.clk(clk), .Q(Q));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("struct_up_counter.vcd");
        $dumpvars(0, strcut_up_counter_tb);
        clk = 0;
        #80 $finish;
    end

endmodule
