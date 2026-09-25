`timescale 1ns / 1ps

module alu_top_tb;

    // ------------------------------------------------------------------------
    // 1. Testbench Signals
    // ------------------------------------------------------------------------
    reg  [3:0] a;
    reg  [3:0] b;
    reg  [2:0] sel;
    wire [3:0] result;
    wire       zero;

    // File handler for exporting text reports
    integer file_handle;

    // ------------------------------------------------------------------------
    // 2. Unit Under Test (UUT) Instantiation
    // ------------------------------------------------------------------------
    alu_top uut (
        .a(a),
        .b(b),
        .sel(sel),
        .result(result),
        .zero(zero)
    );

    // ------------------------------------------------------------------------
    // 3. File Logging Setup
    // ------------------------------------------------------------------------
    initial begin
        // Open file in write mode. Make sure the 'reports' folder exists!
        file_handle = $fopen("C:/Users/Test/Vivado_projects/4-bit ALU Design/reports/simulation_output.txt", "w");
        
        if (file_handle) begin
            $fdisplay(file_handle, "--- ALU SIMULATION REPORT ---");
            $fdisplay(file_handle, "Time(ns) | SEL |  A   |  B   || RES  | Z");
            $fdisplay(file_handle, "------------------------------------------");
            
            // Monitor will write to the file every time a signal changes
            $fmonitor(file_handle, "%0t       | %b | %b | %b || %b | %b", 
                      $time, sel, a, b, result, zero);
        end else begin
            $display("ERROR: Could not open output file. Check directory path.");
        end
    end

    // ------------------------------------------------------------------------
    // 4. Test Stimulus
    // ------------------------------------------------------------------------
    initial begin
        // Initialize Inputs
        a = 4'b0000;
        b = 4'b0000;
        sel = 3'b000;

        #10; // Wait 10ns for global reset
        
        // --- ARITHMETIC OPERATIONS ---
        $display("Testing ADD (sel = 000)");
        sel = 3'b000; 
        a = 4'b0011; b = 4'b0010; #10; // 3 + 2 = 5
        a = 4'b0111; b = 4'b0001; #10; // 7 + 1 = 8
        a = 4'b0000; b = 4'b0000; #10; // 0 + 0 = 0 (Zero flag should be 1)

        $display("Testing SUB (sel = 001)");
        sel = 3'b001;
        a = 4'b0101; b = 4'b0011; #10; // 5 - 3 = 2
        a = 4'b1010; b = 4'b1010; #10; // 10 - 10 = 0 (Zero flag should be 1)
        
        // --- LOGICAL OPERATIONS ---
        $display("Testing AND (sel = 010)");
        sel = 3'b010;
        a = 4'b1100; b = 4'b1010; #10; // Result: 1000

        $display("Testing OR (sel = 011)");
        sel = 3'b011;
        a = 4'b1100; b = 4'b1010; #10; // Result: 1110

        $display("Testing NAND (sel = 100)");
        sel = 3'b100;
        a = 4'b1100; b = 4'b1010; #10; // Result: 0111

        $display("Testing NOR (sel = 101)");
        sel = 3'b101;
        a = 4'b1100; b = 4'b1010; #10; // Result: 0001

        $display("Testing XOR (sel = 110)");
        sel = 3'b110;
        a = 4'b1100; b = 4'b1010; #10; // Result: 0110

        $display("Testing XNOR (sel = 111)");
        sel = 3'b111;
        a = 4'b1100; b = 4'b1010; #10; // Result: 1001

        // End Simulation
        #10;
        if (file_handle) $fclose(file_handle);
        $display("Simulation Complete.");
        $finish;
    end

endmodule