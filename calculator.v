module calculator (
    input  wire [7:0] A,
    input  wire [7:0] B,
    input  wire [1:0] op,
    output reg  [15:0] result
);

always @(*) begin
    case (op)
        2'b00: result = A + B;  // Addition
        2'b01: result = A - B;  // Subtraction
        2'b10: result = A * B;  // Multiplication
        2'b11: begin            // Division
            if (B != 0)
                result = A / B;
            else
                result = 16'h0000;
        end
        default: result = 16'h0000;
    endcase
end

endmodule