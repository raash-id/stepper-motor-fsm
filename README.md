# Stepper Motor FSM
- A synthesizable Verilog module that mimicks the functionality of a stepper motor.
- The Finite State Machine (FSM) has 7 states through which it cycles according to the directional signals, Clockwise (`CW`) and Counter Clockwise (`CCW`). The states coded in binary are as follows and represent an angle of rotation:
    - State 0 = `0101` (initial and reset stage)
    - State 1 = `0001`
    - State 2 = `1001`
    - State 3 = `1000`
    - State 4 = `1010`
    - State 5 = `0010`
    - State 6 = `0110`
    - State 7 = `0100`
> Gray code followed while coding the states

- The directional signals control the rotation direction of the FSM as follows:
    - `{CW,CCW}` = Operation
    - `{0,0}` = Stay in same state
    - `{1,0}` = Move clockwise
    - `{0,1}` = Move anti-clockwise
    - `{1,1}` = Warning state
> Better handling of warning state is needed
- Synchronous design
- Asynchronous reset
## Language used
- ___Verilog:___ C like HDL is easier to comprehend and saves design time since the syntax is more concise that VHDL

## Tools used
- ___Cadence NCSim:___ To compile and check logic design
- ___Synopsys Design Compiler:___ To obtain the synthesized netlist from the design

## Group Members
1. Raashid Ansari - Designer/Team Lead
2. William Nitsch - Source Coder
3. Jonathan Frey - Testbench Coder

___NOTE:___ Refer to [report](group report stepper motor fsm.pdf "group report stepper motor fsm.pdf") for detailed explanation of the project.
