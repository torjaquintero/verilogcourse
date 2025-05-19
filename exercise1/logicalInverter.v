`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Verilog HDL Programming Course
// Exercise No. 1
// Logical Inverter
// Development board: Nexys A7
//
// Description:
// Module that implements a logical inverter, assigning the output 
// as the negation of the input value.
//
//================================================================

module logicalInverter(
    input in,
    output out
    );

    assign out = ~in;

endmodule

//================================================================
// End of module logicalInverter - Exercise 1
//================================================================
