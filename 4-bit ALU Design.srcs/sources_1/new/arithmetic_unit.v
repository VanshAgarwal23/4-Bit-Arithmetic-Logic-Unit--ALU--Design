module arithmetic_unit (
    input [3:0] a,           // Operand A
    input [3:0] b,           // Operand B
    input sel,               // 0 for Addition, 1 for Subtraction
    output reg [3:0] result, // Arithmetic Result
    output reg carry_out,    // Carry-out (Addition) / Borrow (Subtraction)
    output zero              // Zero Flag
);

    always @(*) begin
        carry_out = 1'b0;
        result = 4'b0000;
        
        case (sel)
            1'b0: {carry_out, result} = a + b; // Addition
            1'b1: {carry_out, result} = a - b; // Subtraction
            default: begin
                result = 4'b0000;
                carry_out = 1'b0;
            end
        endcase
    end

    // Zero flag goes high when the output result is exactly 4'b0000
    assign zero = (result == 4'b0000);

endmodule
