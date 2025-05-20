//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 4 - Full Adder
// Module: gateXor
//
// Description:
// This module implements an XOR gate that operates on two binary 
// inputs (in_a, in_b) and produces an output based on the logical 
// XOR operation.
//================================================================

`timescale 1ns / 1ps

module gateXor(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // XOR Output (in_a ^ in_b)
);

    assign out = in_a ^ in_b;  // Logical XOR operation

endmodule
