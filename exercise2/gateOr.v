//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2
// Logic Gates Module - OR Gate
// Development Board: Nexys A7
//
// Description:
// Simple OR gate module. Takes two inputs and produces an output 
// which is the logical OR of the inputs. This module demonstrates 
// how to implement basic binary logic gates in Verilog.
//================================================================

`timescale 1ns / 1ps

module gateOr(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // OR output of in_a and in_b
);

    assign out = in_a | in_b;  // Logical OR operation

endmodule
