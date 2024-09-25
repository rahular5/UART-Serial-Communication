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
![2](https://github.com/user-attachments/assets/21594ab9-8fdb-4e9a-a18b-5c1fdc129c56)
![1](https://github.com/user-attachments/assets/6b9aba5e-1526-4661-be26-0e22a016171d)
![4](https://github.com/user-attachments/assets/0782e4e1-3e8d-4101-8919-ab96b09606b0)
![3](https://github.com/user-attachments/assets/5d78db7a-8b9e-45ba-87ac-6d085f84b437)


