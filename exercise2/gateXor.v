//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2
// Logic Gates Module - XOR Gate
// Development Board: Nexys A7
//
// Description:
// XOR (exclusive OR) gate module. Produces a high output only when 
// the inputs are different.
//================================================================

`timescale 1ns / 1ps

module gateXor(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // XOR output (in_a ^ in_b)
);

    assign out = in_a ^ in_b;  // Logical XOR operation

endmodule
