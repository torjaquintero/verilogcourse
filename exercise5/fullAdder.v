//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 5 - 4-bit Ripple Carry Adder
// Full Adder Module
//
// Description:
// This module implements a single-bit full adder. It computes
// the sum and carry-out for one bit of addition, including carry-in.
//================================================================

module fullAdder (
    input in_a, in_b, cin,
    output sum, cout
);
    assign sum  = in_a ^ in_b ^ cin;
    assign cout = (in_a & in_b) | (cin & (in_a ^ in_b));
endmodule
