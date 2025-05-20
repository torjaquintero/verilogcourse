//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2
// Logic Gates Module - NAND Gate
// Development Board: Nexys A7
//
// Description:
// Simple NAND gate module. Takes two inputs and produces an output 
// which is the logical complement of the AND operation on the inputs. 
// This module demonstrates how to implement a NAND gate in Verilog.
//================================================================

`timescale 1ns / 1ps

module gateNand(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // NAND output (NOT AND) of in_a and in_b
);

    assign out = ~(in_a & in_b);  // Logical NAND operation

endmodule
