//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 5 - 4-bit Ripple Carry Adder
// Testbench for rippleCarryAdder module
//
// Description:
// This testbench simulates the ripple carry adder module
// using various input combinations, both with and without
// carry-in.
//================================================================

`timescale 1ns / 1ps

module tbrippleCarryAdder;

    // Signal declarations
    reg [3:0] in_a, in_b; // 4-bit inputs
    reg cin;              // Initial carry-in
    wire [3:0] sum;       // Sum output
    wire cout;            // Carry-out

    // Instantiate the Unit Under Test (UUT)
    rippleCarryAdder uut (
        .in_a(in_a),
        .in_b(in_b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test vector stimulus
    initial begin
        // Test 1: No carry-in
        in_a = 4'b0000; in_b = 4'b0000; cin = 0; #10;
        in_a = 4'b0001; in_b = 4'b0001; cin = 0; #10;
        in_a = 4'b0010; in_b = 4'b0011; cin = 0; #10;
        in_a = 4'b0101; in_b = 4'b1010; cin = 0; #10;
        in_a = 4'b1111; in_b = 4'b0001; cin = 0; #10;

        // Test 2: With carry-in
        in_a = 4'b0000; in_b = 4'b0000; cin = 1; #10;
        in_a = 4'b0001; in_b = 4'b0001; cin = 1; #10;
        in_a = 4'b0010; in_b = 4'b0011; cin = 1; #10;
        in_a = 4'b0101; in_b = 4'b1010; cin = 1; #10;
        in_a = 4'b1111; in_b = 4'b0001; cin = 1; #10;

        // Test 3: Edge cases
        in_a = 4'b1111; in_b = 4'b1111; cin = 0; #10;
        in_a = 4'b1111; in_b = 4'b1111; cin = 1; #10;

        $finish;
    end

    // Output monitor
    initial begin
        $display("Time | in_a   in_b   cin || sum    cout");
        $monitor("%4t  | %b  %b    %b   || %b   %b", 
                 $time, in_a, in_b, cin, sum, cout);
    end

endmodule
