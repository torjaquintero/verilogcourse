//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2
// Logic Gates Module - XNOR Gate
// Development Board: Nexys A7
//
// Description:
// XNOR gate module. Produces a high output only when 
// the inputs are equal.
//================================================================

`timescale 1ns / 1ps

module xnor_gate(
    input wire in_a,       // Input A
    input wire in_b,       // Input B
    output wire out        // XNOR output (in_a ~^ in_b)
);

    assign out = ~(in_a ^ in_b);  // Logical XNOR operation

endmodule
