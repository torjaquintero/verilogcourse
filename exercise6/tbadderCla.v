//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 6 - Carry Lookahead Adder (CLA)
// Testbench for the sumCla module
//
// Description:
// This testbench simulates the 4-bit Carry Lookahead Adder (CLA).
// It tests different input combinations with and without initial carry
// to verify the correctness of the module under multiple scenarios.
//================================================================

`timescale 1ns / 1ps

module tbadderCla;
    // Signal declarations
    reg [3:0] A, B;     // 4-bit inputs
    reg cin;            // Initial carry input
    wire [3:0] sum;     // Sum output
    wire cout;          // Final carry output

    // Instantiate the CLA module under test
    adderCla uut (
        .A(A),
        .B(B),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Test stimulus
    initial begin
        // Test cases without carry-in
        A = 4'b0000; B = 4'b0000; cin = 0; #10;
        A = 4'b0001; B = 4'b0010; cin = 0; #10;
        A = 4'b0101; B = 4'b0101; cin = 0; #10;
        A = 4'b1111; B = 4'b0001; cin = 0; #10;

        // Test cases with carry-in
        A = 4'b0000; B = 4'b0000; cin = 1; #10;
        A = 4'b0011; B = 4'b0101; cin = 1; #10;
        A = 4'b1111; B = 4'b1111; cin = 1; #10;

        // End of simulation
        $finish;
    end

    // Output monitoring
    initial begin
        $monitor("Time: %0t | A=%b, B=%b, cin=%b | sum=%b, cout=%b",
                 $time, A, B, cin, sum, cout);
    end
endmodule
