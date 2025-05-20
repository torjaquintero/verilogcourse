# verilogcourse
Repository with Verilog HDL exercises to learn digital design with FPGAs. Each folder includes source code and a testbench. Difficulty increases progressively. Ideal for students, self-learners, and engineers using Vivado and the Nexys A7 board.

## Exercise No. 0
This introductory exercise consists of a simple Verilog module that directly connects the state of 16 switches to 16 LEDs on the Nexys A7 board. Its purpose is to familiarize the user with basic Verilog syntax, port definitions, and direct signal assignment, serving as a foundation for understanding the digital design flow.

## Exercise No. 1
This first exercise implements a logic inverter in Verilog. We use a switch (`sw[0]`) as the input and show the inverted output on an LED (`led[0]`). It’s a basic example to introduce the digital design flow in Vivado, including module description, simulation with a testbench, and pin assignment using the `.xdc` file for the Nexys A7-100T FPGA.

## Exercise No. 2
In this exercise, we design a top-level module called top_puertas, which instantiates several logic gate submodules: NOT, AND, OR, NAND, NOR, XOR, and XNOR. The system takes two inputs (in_a and in_b) and produces one output for each type of gate. This design helps students understand the concept of hierarchy in Verilog, module reuse, and the integration of multiple logic components in a single system. The outputs are displayed on the Nexys A7-100T board LEDs, allowing physical verification of each gate’s behavior.

## Exercise No. 3
This exercise covers the design of a half adder, a combinational circuit that adds two bits and produces a sum and a carry output. It is implemented in two versions: a structural version using previously created XOR and AND modules, and a behavioral version using direct logic operations. Both implementations are validated with a testbench that compares their outputs across all possible input combinations. This exercise is fundamental to understanding the difference between structural and behavioral design in Verilog and serves as a stepping stone toward more complex adders like the full adder.

## Exercise No. 4
This exercise implements and verifies the functionality of a 1-bit full adder using two approaches: one based on the interconnection of basic logic gates (AND, OR, XOR), and the other using a behavioral description in Verilog. Both designs are integrated into a top-level module called sumTotal, which allows parallel comparison of their outputs. The accompanying testbench tests all possible input combinations (in_a, in_b, cin) and displays the results on the console, facilitating functional validation of the design. This exercise aims to reinforce fundamental concepts of structural and behavioral digital design.

## Exercise No. 5
This exercise implements a 4-bit ripple carry adder using a structural design composed of four full adders connected in series. The circuit adds two 4-bit input numbers and accounts for an input carry (cin), producing a final carry-out (cout). A one-bit full adder module (fullAdder) is designed first, followed by a higher-level module (rippleCarryAdder) that instantiates four of them in cascade. A comprehensive testbench is also included to simulate different input combinations with and without initial carry. This exercise reinforces key concepts in structural Verilog design, modular hierarchy, and simulation with testbenches.

## Exercise No. 6
In this exercise, we implement a 4-bit Carry Lookahead Adder (CLA). Unlike the ripple carry adder, the CLA improves performance by computing carry bits in parallel using generate and propagate signals. This approach significantly reduces delay, making it an efficient solution for high-speed arithmetic operations in digital circuits. The sumCla module represents this logic, and its functionality is verified through a testbench that evaluates multiple input combinations, both with and without initial carry.
