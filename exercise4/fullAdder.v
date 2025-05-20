//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 4 - Full Adder
//
// Description:
// This exercise implements a full adder using two approaches:
// one structural using logic gates, and one behavioral using 
// Boolean expressions.
//================================================================

module fullAdderGates(input in_a, input in_b, input cin, output sumGates, output coutGates);
    wire xor1_out, xor2_out, and1_out, and2_out, or_out;

    // First XOR: A ^ B
    puertaXor xor1(.in_a(in_a), .in_b(in_b), .out(xor1_out));

    // Second XOR: (A ^ B) ^ Cin
    puertaXor xor2(.in_a(xor1_out), .in_b(cin), .out(sumGates));

    // First AND: A & B
    puertaAnd and1(.in_a(in_a), .in_b(in_b), .out(and1_out));

    // Second AND: (A ^ B) & Cin
    puertaAnd and2(.in_a(xor1_out), .in_b(cin), .out(and2_out));

    // Final OR: Carry = (A & B) | ((A ^ B) & Cin)
    puertaOr or1(.in_a(and1_out), .in_b(and2_out), .out(coutGates));
endmodule


module fullAdderBeha(input in_a, input in_b, input cin, output sumBeha, output coutBeha);
    // Behavioral implementation of the full adder
    assign sumBeha = in_a ^ in_b ^ cin;
    assign coutBeha = (in_a & in_b) | ((in_a ^ in_b) & cin);
endmodule


module fullAdder(input in_a, input in_b, input cin, output sumGates, output coutGates, output sumBeha, output coutBeha);
    // Instantiating both full adder designs
    fullAdderGates adderStructural (.in_a(in_a), .in_b(in_b), .cin(cin), .sumGates(sumGates), .coutGates(coutGates));
    fullAdderBeha adderBehavioral (.in_a(in_a), .in_b(in_b), .cin(cin), .sumBeha(sumBeha), .coutBeha(coutBeha));
endmodule
