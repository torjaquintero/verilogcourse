//================================================================
//                          Sys On Chip 
//                      www.sysonchip.tech
//
// Author: torjaquintero
//
// Exercise No. 2
// Logic Gates Module
// Development Board: Nexys A7
//
// Description:
// Top-level module that instantiates different logic gates: 
// inverter, AND, OR, NAND, NOR, XOR, and XNOR. It uses two inputs 
// (in_a, in_b) and generates one output for each type of gate. 
// This design introduces the concept of hierarchy in Verilog by 
// interconnecting multiple submodules.
//================================================================

module top_gates (
    input wire in_a,         // Logic input A
    input wire in_b,         // Logic input B

    output wire out_inverter, // Output of the inverter (NOT gate)
    output wire out_and,      // Output of the AND gate
    output wire out_or,       // Output of the OR gate
    output wire out_nand,     // Output of the NAND gate
    output wire out_nor,      // Output of the NOR gate
    output wire out_xor,      // Output of the XOR gate
    output wire out_xnor      // Output of the XNOR gate
);

// Instance of the inverter module
// Uses only input A to produce the inverted output
inverter inv_inst(
    .in(in_a),              // Input connected to in_a
    .out(out_inverter)      // Output connected to out_inverter
);

// Instance of the AND gate module
gateAnd and_inst (
    .in_a(in_a),            // Input A
    .in_b(in_b),            // Input B
    .out(out_and)           // AND output
);

// Instance of the OR gate module
gateOr or_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_or)
);

// Instance of the NAND gate module
gateNand nand_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_nand)
);

// Instance of the NOR gate module
gateNor nor_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_nor)
);

// Instance of the XOR gate module
gateXor xor_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_xor)
);

// Instance of the XNOR gate module
gateXnor xnor_inst (
    .in_a(in_a),
    .in_b(in_b),
    .out(out_xnor)
);

endmodule
