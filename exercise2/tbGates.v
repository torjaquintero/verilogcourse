//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2 - Testbench
// Unit under test: top_puertas
//
// Description:
// Testbench to verify the functionality of the top-level module 
// `top_puertas`, which integrates all basic logic gates: 
// NOT, AND, OR, NAND, NOR, XOR and XNOR.
// Tests all 4 possible input combinations.
//================================================================

`timescale 1ns / 1ps

module tbGates;

// Input signals
reg in_a_tb;
reg in_b_tb;

// Output signals
wire out_inversor_tb;
wire out_and_tb;
wire out_or_tb;
wire out_nand_tb;
wire out_nor_tb;
wire out_xor_tb;
wire out_xnor_tb;

// Instantiate the Unit Under Test
topGates uut (
    .in_a(in_a_tb),
    .in_b(in_b_tb),
    .out_inversor(out_inversor_tb),
    .out_and(out_and_tb),
    .out_or(out_or_tb),
    .out_nand(out_nand_tb),
    .out_nor(out_nor_tb),
    .out_xor(out_xor_tb),
    .out_xnor(out_xnor_tb)
);

initial begin
    $display("Testing top_puertas module");
    $display("A B | INV AND OR NAND NOR XOR XNOR");

    // Test 1: A = 0, B = 0
    in_a_tb = 0; in_b_tb = 0;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    // Test 2: A = 0, B = 1
    in_a_tb = 0; in_b_tb = 1;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    // Test 3: A = 1, B = 0
    in_a_tb = 1; in_b_tb = 0;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    // Test 4: A = 1, B = 1
    in_a_tb = 1; in_b_tb = 1;
    #10 $display("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
        in_a_tb, in_b_tb, out_inversor_tb, out_and_tb, out_or_tb, 
        out_nand_tb, out_nor_tb, out_xor_tb, out_xnor_tb);

    $finish;
end

endmodule
