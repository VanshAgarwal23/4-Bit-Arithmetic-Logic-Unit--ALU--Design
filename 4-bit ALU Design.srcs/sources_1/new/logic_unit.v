module logic_unit (
    input [3:0] a,           // Operand A
    input [3:0] b,           // Operand B
    input [2:0] sel,         // 3-bit Operation Select Lines
    output reg [3:0] result, // Logic Gate Result
    output zero              // Zero Flag
);

    always @(*) begin
        result = 4'b0000;
        
        case (sel)
            3'b000: result = a & b;      // Bitwise AND
            3'b001: result = a | b;      // Bitwise OR
            3'b010: result = ~(a & b);   // Bitwise NAND
            3'b011: result = ~(a | b);   // Bitwise NOR
            3'b100: result = a ^ b;      // Bitwise XOR
            3'b101: result = ~(a ^ b);   // Bitwise XNOR
            default: result = 4'b0000;
        endcase
    end

    // Zero flag goes high when the output result is exactly 4'b0000
    assign zero = (result == 4'b0000);

endmodule