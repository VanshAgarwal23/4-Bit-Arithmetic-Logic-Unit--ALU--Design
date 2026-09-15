`timescale 1ns / 1ps

module arithmetic_unit_tb;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg sel;

    // Outputs
    wire [3:0] result;
    wire carry_out;
    wire zero;

    // Instantiate the Unit Under Test (UUT)
    arithmetic_unit uut (
        .a(a),
        .b(b),
        .sel(sel),
        .result(result),
        .carry_out(carry_out),
        .zero(zero)
    );

    integer i, j, k;

    initial begin
        // Initialize inputs
        a = 4'b0000;
        b = 4'b0000;
        sel = 1'b0;
        
        #10;

        // =========================================================
        // PHASE 1: BOUNDARY CONDITION TEST CASES
        // =========================================================
        $display("\n--- STARTING ARITHMETIC BOUNDARY TESTS ---");
        
        // Addition Boundaries (sel = 0)
        sel = 1'b0;
        a = 4'h0; b = 4'h0; #10; // Min + Min: 0 + 0 = 0 (Zero = 1)
        a = 4'hF; b = 4'h0; #10; // Max + Min: 15 + 0 = 15
        a = 4'hF; b = 4'h1; #10; // Overflow edge: 15 + 1 = 16 (Carry = 1)
        a = 4'hF; b = 4'hF; #10; // Max + Max: 15 + 15 = 30 (Carry = 1)

        // Subtraction Boundaries (sel = 1)
        sel = 1'b1;
        a = 4'h0; b = 4'h0; #10; // Min - Min: 0 - 0 = 0 (Zero = 1)
        a = 4'h5; b = 4'h5; #10; // Equal values: 5 - 5 = 0 (Zero = 1)
        a = 4'h0; b = 4'h1; #10; // Underflow edge: 0 - 1 (Borrow active)
        a = 4'hF; b = 4'h0; #10; // Max - Min: 15 - 0 = 15

        // =========================================================
        // PHASE 2: EXHAUSTIVE TEST CASES (512 Cases)
        // =========================================================
        $display("\n--- STARTING EXHAUSTIVE ARITHMETIC TESTS ---");
        
        for (k = 0; k < 2; k = k + 1) begin       // Loop through Add (0) and Sub (1)
            for (i = 0; i < 16; i = i + 1) begin  // Loop through all 16 values of A
                for (j = 0; j < 16; j = j + 1) begin // Loop through all 16 values of B
                    sel = k;
                    a = i;
                    b = j;
                    #10;
                end
            end
        end

        $display("\nAll arithmetic boundary and exhaustive test cases executed successfully!");
        $finish;
    end

    // Monitor output changes in Vivado Tcl Console
    initial begin
        $monitor("Time=%0t ns | Operation=%s | A=%4b (%2d) | B=%4b (%2d) | Result=%4b (%2d) | Carry/Borrow=%b | Zero=%b", 
                 $time, (sel ? "SUB" : "ADD"), a, a, b, b, result, result, carry_out, zero);
    end

endmodule

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
