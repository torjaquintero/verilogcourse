`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Verilog HDL Programming Course
// Exercise No. 0
// Switch and LED status
// Development board: Nexys A7
//
// Description:
// Circuit that assigns the state of switches to the LEDs
//
//================================================================

module led_state(
    input [15:0] SW,
    output [15:0] LED
    );

    assign LED = SW; // Each LED reflects the state of its corresponding switch

endmodule

//================================================================
// End of module led_state - Exercise 0
//================================================================
