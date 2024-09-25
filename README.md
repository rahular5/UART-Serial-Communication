# UART Project with GDS3D Integration

## Overview

This project implements a **Universal Asynchronous Receiver-Transmitter (UART)** module using **Verilog**. The design has been verified using **OpenLane** and **GDS3D** for generating and visualizing the layout. The project includes all design files, configuration scripts, and instructions to synthesize and simulate the UART module for an ASIC design flow.

## Features

- UART module design in Verilog.
- Functional verification using **Xcelium** and **Yosys** for synthesis.
- OpenLane ASIC flow for physical design.
- GDSII visualization using **GDS3D**.
- Support for SkyWater 130nm PDK.

## Project Structure

```bash
uart_project/
├── docs/                   # Documentation for the project
├── designs/                # Verilog design files
│   └── uart.v              # UART module
├── scripts/                # Helper scripts for simulation, synthesis, etc.
├── runs/                   # Output from OpenLane runs
├── results/                # GDSII, signoff, and timing results
└── README.md               # Project documentation
# UART-Serial-Communication
"Implementation of a UART (Universal Asynchronous Receiver/Transmitter) module in Verilog, designed for serial communication between devices. The project includes a testbench for simulation and verification of the UART functionality, with support for 9600 baud rate and transmission/reception of 8-bit data."
# UART Project with GDS3D Integration

## Project Overview

This project implements a **Universal Asynchronous Receiver-Transmitter (UART)** module.

![UART Block Diagram]("wave 1.png")

The diagram above shows the block-level architecture of the UART module.
