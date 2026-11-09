`timescale 1ns/1ps

module adder_tb;
    logic [7:0] a, b;
    logic [8:0] sum;

    adder test(.a(a), .b(b), .sum(sum));

    task test_add(input logic [7:0] x, input logic[7:0] y);
        a = x; b = y;
        #10;
        $display("%0d + %0d = %0d", a, b, sum);


    endtask

    initial begin
        test_add(1, 1);
        $finish;
    end
endmodule