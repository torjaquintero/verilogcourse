//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 4 - Full Adder
// Testbench for the module fullAdder with outputs by logic gates
// and outputs by behavioral description
//
// Description:
// All input combinations are tested and compared between
// sumGates / sumBeha and coutGates / coutBeha
//================================================================

`timescale 1ns / 1ps

module tbfullAdder;

    // Declaration of input (reg) and output (wire) signals
    reg in_a, in_b, cin;
    wire sumGates, coutGates;
    wire sumBeha, coutBeha;

    // Instantiation of the fullAdder module (Unit Under Test)
    fullAdder uut (
        .in_a(in_a),
        .in_b(in_b),
        .cin(cin),
        .sumGates(sumGates),
        .coutGates(coutGates),
        .sumBeha(sumBeha),
        .coutBeha(coutBeha)
    );

    // Test sequence
    initial begin
        // Test all possible input combinations
        in_a = 0; in_b = 0; cin = 0; #10;
        in_a = 0; in_b = 0; cin = 1; #10;
        in_a = 0; in_b = 1; cin = 0; #10;
        in_a = 0; in_b = 1; cin = 1; #10;
        in_a = 1; in_b = 0; cin = 0; #10;
        in_a = 1; in_b = 0; cin = 1; #10;
        in_a = 1; in_b = 1; cin = 0; #10;
        in_a = 1; in_b = 1; cin = 1; #10;

        // End of simulation
        $finish;
    end

    // Display results in the console
    initial begin
        $display("Time | in_a in_b cin || sumGates coutGates || sumBeha coutBeha");
        $monitor("%4t    |   %b    %b   %b  ||     %b         %b     ||   %b      %b", 
                  $time, in_a, in_b, cin, sumGates, coutGates, sumBeha, coutBeha);
    end

endmodule
