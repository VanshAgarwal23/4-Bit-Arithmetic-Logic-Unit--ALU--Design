`timescale 1ns / 1ps

module alu_top (
    input  wire [3:0] a,        // Operand A
    input  wire [3:0] b,        // Operand B
    input  wire [2:0] sel,      // 3-Bit Operation Select Lines
    output reg  [3:0] result,   // 4-Bit Computation Result
    output wire       zero      // Zero Flag Detector Output
);

    // Internal wires connecting Sub-modules to the Top Multiplexer
    wire [3:0] arith_res;
    wire       arith_cout; 
    wire       arith_zero; 

    wire [3:0] logic_res;
    wire       logic_zero; 
    
    // The image implies an 8:1 continuous mapping (2 Arith, 6 Logic)
    // We shift the top-level selector by 2 to correctly map to your logic_unit's internal encoding 
    // (Top sel 3'b010 -> Logic sel 3'b000)
    wire [2:0] logic_sel = sel - 3'b010;

    // 1. Instantiate Arithmetic Unit Subsystem
    arithmetic_unit u_arithmetic (
        .a(a),
        .b(b),
        .sel(sel[0]),         // sel[0] perfectly maps 3'b000 to Add (0) and 3'b001 to Sub (1)
        .result(arith_res),
        .carry_out(arith_cout),
        .zero(arith_zero)
    );

    // 2. Instantiate Bitwise Logic Unit Subsystem
    logic_unit u_logic (
        .a(a),
        .b(b),
        .sel(logic_sel),      // Adjusted selector for logic unit
        .result(logic_res),
        .zero(logic_zero)
    );

    // 3. Top-Level Multiplexer
    // Routes the correct result based on the 3-bit selection, effectively acting as the 8:1 MUX
    always @(*) begin
        if (sel == 3'b000 || sel == 3'b001) begin
            result = arith_res;  // Select Arithmetic operations
        end else begin
            result = logic_res;  // Select Logical operations
        end
    end

    // 4. Zero Flag Detector (4-input NOR)
    assign zero = (result == 4'b0000);

endmodule