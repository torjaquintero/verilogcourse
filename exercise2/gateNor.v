//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2
// Logic Gates Module - NOR Gate
// Development Board: Nexys A7
//
// Description:
// Simple NOR gate module. Takes two inputs and produces an output 
// which is the logical complement of the OR operation on the inputs. 
// This module demonstrates how to implement a NOR gate in Verilog.
//================================================================

`timescale 1ns / 1ps

module gateNor(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // NOR output (NOT OR) of in_a and in_b
);

    assign out = ~(in_a | in_b);  // Logical NOR operation

endmodule
