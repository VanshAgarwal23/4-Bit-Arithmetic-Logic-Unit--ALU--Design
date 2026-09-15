
`timescale 1ns / 1ps

module logic_unit_tb;

    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] sel;

    // Outputs
    wire [3:0] result;
    wire zero;

    // Instantiate the Unit Under Test (UUT)
    logic_unit uut (
        .a(a),
        .b(b),
        .sel(sel),
        .result(result),
        .zero(zero)
    );

    integer i, j, k;

    initial begin
        // Initialize inputs
        a = 4'b0000;
        b = 4'b0000;
        sel = 3'b000;
        
        #10;

        // =========================================================
        // PHASE 1: BOUNDARY & PATTERN TEST CASES
        // =========================================================
        $display("\n--- STARTING LOGIC GATE BOUNDARY TESTS ---");
        
        // Zero tests
        a = 4'h0; b = 4'h0; sel = 3'b000; #10; // AND: 0 & 0 = 0 (Zero = 1)
        a = 4'h0; b = 4'h0; sel = 3'b011; #10; // NOR: ~(0 | 0) = F (1111)

        // Max value tests (All 1s)
        a = 4'hF; b = 4'hF; sel = 3'b000; #10; // AND: F & F = F
        a = 4'hF; b = 4'hF; sel = 3'b001; #10; // OR:  F | F = F
        a = 4'hF; b = 4'hF; sel = 3'b010; #10; // NAND: ~(F & F) = 0 (Zero = 1)
        a = 4'hF; b = 4'hF; sel = 3'b011; #10; // NOR: ~(F | F) = 0 (Zero = 1)
        a = 4'hF; b = 4'hF; sel = 3'b100; #10; // XOR: F ^ F = 0 (Zero = 1)
        a = 4'hF; b = 4'hF; sel = 3'b101; #10; // XNOR: ~(F ^ F) = F

        // Alternating bit patterns
        a = 4'b1010; b = 4'b0101; sel = 3'b000; #10; // AND
        a = 4'b1010; b = 4'b0101; sel = 3'b001; #10; // OR
        a = 4'b1010; b = 4'b0101; sel = 3'b100; #10; // XOR

        // =========================================================
        // PHASE 2: EXHAUSTIVE TEST CASES (1536 Cases)
        // =========================================================
        $display("\n--- STARTING EXHAUSTIVE LOGIC GATE TESTS ---");
        
        for (k = 0; k < 6; k = k + 1) begin       // Loop through all 6 logic operations (0 to 5)
            for (i = 0; i < 16; i = i + 1) begin  // Loop through all 16 values of A
                for (j = 0; j < 16; j = j + 1) begin // Loop through all 16 values of B
                    sel = k;
                    a = i;
                    b = j;
                    #10;
                end
            end
        end

        $display("\nAll logic gate boundary and exhaustive test cases executed successfully!");
        $finish;
    end

    // Monitor output changes in Vivado Tcl Console
    initial begin
        $monitor("Time=%0t ns | OpCode=%3b | A=%4b (%2d) | B=%4b (%2d) | Result=%4b (%2d) | Zero=%b", 
                 $time, sel, a, a, b, b, result, result, zero);
    end

endmodule
