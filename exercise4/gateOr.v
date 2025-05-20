//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 4 - Full Adder
// Module: gateOr
//
// Description:
// This module implements a basic OR gate that operates on two 
// binary inputs (in_a, in_b) and produces an output based on the 
// logical OR operation.
//================================================================

`timescale 1ns / 1ps

module gateOr(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // OR Output (in_a | in_b)
);

    assign out = in_a | in_b;  // Logical OR operation

endmodule
