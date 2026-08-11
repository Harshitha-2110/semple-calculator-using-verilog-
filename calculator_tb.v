`timescale 1ns/1ps

module calculator_tb;

reg  [7:0] A;
reg  [7:0] B;
reg  [1:0] op;
wire [15:0] result;

calculator uut (
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);

initial begin

    // Addition: 20 + 10 = 30
    A = 8'd20;
    B = 8'd10;
    op = 2'b00;
    #10;
    $display("Addition:       %d + %d = %d", A, B, result);

    // Subtraction: 20 - 10 = 10
    A = 8'd20;
    B = 8'd10;
    op = 2'b01;
    #10;
    $display("Subtraction:    %d - %d = %d", A, B, result);

    // Multiplication: 20 * 10 = 200
    A = 8'd20;
    B = 8'd10;
    op = 2'b10;
    #10;
    $display("Multiplication: %d * %d = %d", A, B, result);

    // Division: 20 / 10 = 2
    A = 8'd20;
    B = 8'd10;
    op = 2'b11;
    #10;
    $display("Division:       %d / %d = %d", A, B, result);

    // Division by zero
    A = 8'd20;
    B = 8'd0;
    op = 2'b11;
    #10;
    $display("Division by 0:  Result = %d", result);

    #10;
    $finish;
end

endmodule