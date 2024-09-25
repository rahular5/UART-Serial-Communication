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


![Uploading 4.jpg…]()
![3](https://github.com/user-attachments/assets/ec3afd8f-9509-4ff0-aee2-58822b11d3c6)
![2](https://github.com/user-attachments/assets/b74aa534-3784-413c-bddb-3dff11fcdac1)
![1](https://github.com/user-attachments/assets/6a91e1fd-82a3-46cc-bec3-af38137d60aa)


