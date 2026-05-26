# vending_machine_vhdl
Vending Machine — VHDL Implementation
A hardware-level vending machine controller designed and implemented in VHDL, targeting FPGA synthesis. The design uses a Finite State Machine (FSM) to manage coin insertion, product selection, dispensing logic, and change return.

Table of Contents
Overview
Features
Project Structure
Entity & Port Description
States Description
Getting Started
Simulation
FPGA Synthesis
Tools & Requirements
Contributing
Overview
This project implements a vending machine controller at the register-transfer level using VHDL. The machine accepts coins of different denominations, allows the user to select a product, verifies sufficient funds, dispenses the item, and returns change — all modeled as a synchronous FSM with clearly defined states and transitions.

The design is simulation-verified and synthesizable for common FPGA platforms (Xilinx / Intel).

Features
Accepts multiple coin denominations (e.g.,₹5, ₹10)
Supports multiple product slots with configurable prices
Automatic change calculation and return
FSM-based control logic (Moore/Mealy model)
Reset signal for returning to idle state
Testbench provided for functional simulation
Synthesizable — tested on FPGA toolchains
