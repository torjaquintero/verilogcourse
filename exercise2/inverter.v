//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2
// Logic Gates Module - Inverter
// Development Board: Nexys A7
//
// Description:
// This is a simple inverter (NOT gate) module. It receives a 
// single input and outputs its logical complement. This module 
// is intended to demonstrate how to create and instantiate basic 
// logic functions in Verilog.
//================================================================

`timescale 1ns / 1ps

module inverter(
    input wire in,       // Input signal
    output wire out      // Output signal (inverted input)
);

    assign out = ~in;    // Logic inversion (NOT gate)

endmodule
