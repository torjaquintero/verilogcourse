//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 4 - Full Adder
// Module: gateAnd
//
// Description:
// This module implements a basic AND gate that operates on two 
// binary inputs (in_a, in_b) and produces an output based on the 
// logical AND operation.
//================================================================

`timescale 1ns / 1ps

module gateAnd(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // AND Output (in_a & in_b)
);

    assign out = in_a & in_b;  // Logical AND operation

endmodule
