//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 3 - Half Adder
//
// Description:
// Implementation of a half adder that takes two input bits (in_a, in_b)
// and generates two outputs: sum and carry. Two implementations are
// provided: a structural version using XOR and AND gate modules,
// and a behavioral version using direct Verilog expressions.
// This module is useful to compare both digital design approaches.
//================================================================

`timescale 1ns / 1ps

// XOR Module
module gateXor(
    input in_a, in_b,
    output out
    );
    
    assign out = in_a ^ in_b;
endmodule

// AND Module
module gateAnd(
    input in_a, in_b,
    output out
    );
    
    assign out = in_a & in_b;
endmodule

// Half Adder Module
module halfAdder (
    input in_a,
    input in_b,
    output sumGates,     // Sum via logic gates
    output carryGates,   // Carry via logic gates
    output sumBehav,        // Sum via behavioral description
    output carryBehav       // Carry via behavioral description
);
    // Internal signals
    wire xor_out;
    wire and_out;

    // Structural implementation
    gateXor xor_inst (
        .in_a(in_a),
        .in_b(in_b),
        .out(xor_out)
    );

    gateAnd and_inst (
        .in_a(in_a),
        .in_b(in_b),
        .out(and_out)
    );

    // Output assignments (structural)
    assign sumGates = xor_out;
    assign carryGates = and_out;

    // Behavioral implementation
    assign sumBehav = in_a ^ in_b;
    assign carryBehav = in_a & in_b;
endmodule
