//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 3 - Testbench
// Unit under test: halfAdder
//
// Description:
// Testbench to verify the functionality of the halfAdder module,
// which implements a half adder using both structural and 
// behavioral approaches. All 4 possible input combinations are tested.
//================================================================

`timescale 1ns / 1ps

module tbhalfAdder;

    // Inputs
    reg in_a;
    reg in_b;

    // Outputs
    wire sumGates;
    wire carryGates;
    wire sumBeha;
    wire carryBeha;

    // Instantiate the Unit Under Test (UUT)
    halfAdder uut (
        .in_a(in_a),
        .in_b(in_b),
        .sumGates(sumGates),
        .carryGates(carryGates),
        .sumBeha(sumBeha),
        .carryBeha(carryBeha)
    );

    // Test procedure
    initial begin
        $display("Time | A B | SumP CarryP | SumC CarryC");
        $display("======================================");

        // Test all input combinations
        in_a = 0; in_b = 0; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumGates, carryGates, sumBeha, carryBeha);

        in_a = 0; in_b = 1; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumGates, carryGates, sumBeha, carryBeha);

        in_a = 1; in_b = 0; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumGates, carryGates, sumBeha, carryBeha);

        in_a = 1; in_b = 1; #10;
        $display(" %0dns  | %b %b |   %b     %b   |  %b     %b", 
                  $time, in_a, in_b, sumGates, carryGates, sumBeha, carryBeha);

        $display("======================================");
        $finish;
    end

endmodule
