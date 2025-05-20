//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 5 - 4-bit Ripple Carry Adder
// Description:
// This module implements a 4-bit ripple carry adder using
// four full adders connected in cascade. It performs the sum 
// of two 4-bit numbers with an optional carry-in input.
//================================================================

module rippleCarryAdder (
    input [3:0] in_a, in_b, // 4-bit input numbers
    input cin,              // Initial carry-in
    output [3:0] sum,       // 4-bit sum output
    output cout             // Final carry-out
);
    wire [2:0] carry; // Intermediate carries

    // First Full Adder
    fullAdder fa_0 (.in_a(in_a[0]), .in_b(in_b[0]), .cin(cin),     .sum(sum[0]), .cout(carry[0]));

    // Second Full Adder
    fullAdder fa_1 (.in_a(in_a[1]), .in_b(in_b[1]), .cin(carry[0]), .sum(sum[1]), .cout(carry[1]));

    // Third Full Adder
    fullAdder fa_2 (.in_a(in_a[2]), .in_b(in_b[2]), .cin(carry[1]), .sum(sum[2]), .cout(carry[2]));

    // Fourth Full Adder
    fullAdder fa_3 (.in_a(in_a[3]), .in_b(in_b[3]), .cin(carry[2]), .sum(sum[3]), .cout(cout));
endmodule
