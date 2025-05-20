//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 6 - Carry Lookahead Adder (CLA)
// 4-bit CLA module
//
// Description:
// This module implements a 4-bit Carry Lookahead Adder (CLA).
// It uses carry generate and propagate logic to compute the
// sum and carry-out with reduced delay compared to ripple-carry.
//================================================================

module adderCla(
    input [3:0] A, B,
    input cin,
    output [3:0] sum,
    output cout
);
    wire [3:0] G, P, C;

    // Generate and Propagate calculation
    assign G = A & B;  // Carry generation
    assign P = A ^ B;  // Carry propagation

    // Carry lookahead logic
    assign C[0] = cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign cout = G[3] | (P[3] & C[3]);

    // Sum calculation
    assign sum = P ^ C[3:0];
endmodule
