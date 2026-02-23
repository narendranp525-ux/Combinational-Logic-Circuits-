📚 Overview

Combinational circuits are digital circuits whose outputs depend only on the current inputs (no memory elements involved).

This repository includes VHDL implementations of commonly used combinational circuits such as:

Half Adder

Full Adder

Ripple Carry Adder

Subtractor

Multiplexer (MUX)

Demultiplexer (DEMUX)

Encoder

Decoder

Comparator
ALU (Arithmetic Logic Unit)
Logic Gates (AND, OR, NOT, NAND, NOR, XOR, XNOR)

🛠 Tools Used
VHDL
ModelSim (Simulation)
Intel Quartus Prime (Synthesis)

📂 Repository Structure
├── half_adder.vhd
├── full_adder.vhd
├── mux_4to1.vhd
├── decoder_3to8.vhd
├── alu_4bit.vhd
└── testbenches/
    ├── tb_half_adder.vhd
    ├── tb_full_adder.vhd


▶️ How to Simulate (ModelSim)

Open ModelSim
Create a new project
Add the .vhd files
Compile all files
Run the testbench
View waveform
Example commands:
vlib work
vcom half_adder.vhd
vcom tb_half_adder.vhd
vsim work.tb_half_adder
add wave *
run 100ns

🎯 Learning Objectives

This repository helps in understanding:

Dataflow modeling
Behavioral modeling
Structural modeling
Signal vs Variable usage
std_logic_vector and numeric_std
Basic digital logic design concepts

🚀 Future Additions

Sequential circuits (Flip-Flops, Counters, Registers)
FSM (Finite State Machine)
8-bit ALU
Pipelined designs

📖 Requirements

Basic knowledge of Digital Electronics
Understanding of VHDL syntax
ModelSim / Quartus installed

🤝 Contributing

Contributions are welcome!
Feel free to fork the repository and submit pull requests.

📜 License

This project is open-source and available under the MIT License.


