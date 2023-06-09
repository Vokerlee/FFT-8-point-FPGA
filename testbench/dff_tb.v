`timescale 1 ns / 100 ps

module test_dff;

    reg d = 1'b1;
    reg clk = 1'b0;
    reg rst = 1'b0;

    always begin
        #1.32 d = ~d;
    end

    always begin
        #2 clk = ~clk; // clk
    end

    wire q;

    dff dff_test(.d(d), .clk(clk), .rst(rst), .q(q));

    initial begin
        $dumpfile("dff_tb.vcd");
        $dumpvars;
        #100 $finish;
    end

endmodule
