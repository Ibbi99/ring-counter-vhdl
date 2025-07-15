# ring-counter-vhdl
# Ring Counter in VHDL

This project implements a **Ring Counter** using VHDL and includes a testbench for simulation. It is suitable for use in digital design labs, FPGA development, and hardware description language practice.

---

## Project Structure

```text
ring-counter-vhdl/
├── RingCounter.vhd # VHDL implementation of the ring counter
├── RingCounter_tb1.vhd # Testbench for simulating the design
└── README.md # Project documentation
```


---

## What is a Ring Counter?

A **Ring Counter** is a type of circular shift register in which the output of the last flip-flop is fed back to the input of the first. It’s commonly used in digital systems for control sequencing, LED chasers, and finite state machines.

---

## Features

- Synchronous ring counter design using VHDL  
- Reset and clock-based operation  
- Easily synthesizable on most FPGAs  
- Testbench included for behavioral simulation  
- Suitable for learning, labs, or FPGA experiments  

---

## Getting Started

1. Clone or download the repository.
2. Open the project in your preferred VHDL simulator or FPGA tool (e.g., **ModelSim**, **Vivado**, or **Quartus**).
3. Compile both `RingCounter.vhd` and `RingCounter_tb1.vhd`.
4. Run the simulation to observe counter behavior.
5. Optional: Synthesize and implement on an FPGA board.


---

## Simulation

The included testbench (`RingCounter_tb1.vhd`) allows you to verify the functionality of the ring counter by applying clock and reset stimuli. Waveforms can be observed to confirm correct operation and state transitions.


<img width="822" height="592" alt="Simulation2" src="https://github.com/user-attachments/assets/2e528154-61eb-48d6-9d02-e4643ebb6e18" />
<img width="784" height="550" alt="Simulation1" src="https://github.com/user-attachments/assets/107bb74d-697d-48ee-890c-ff130aeb9a34" />
