`timescale 1ns / 1ps
//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Testbench for Exercise No. 1
// Logical Inverter
// Development board: Nexys A7
//
// Description:
// Testbench to verify the behavior of the logicalInverter module.
// The input signal is toggled and outputs are monitored.
//
//================================================================

module tblogicalInverter();
    reg in;
    wire out;
    
    logicalInverter ic1(in, out);
    
    initial begin
        $monitor("Time = %t, in = %b, out = %b", $time, in, out);
        
        repeat(10) begin
            in = 0;
            #10;
            
            in = 1;
            #10;
        end
        
        $finish;
    end
    
endmodule

//================================================================
// End of testbench tblogicalInverter - Exercise 1
//================================================================
