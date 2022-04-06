# FPGA Example Projects

I'll be posting some simple example projects here to demonstrate a few different methods of writing testbenches for a design, and to show simple project setups. Hopefully these will be useful as templates for starting projects of your own! For now it's just a simple adder, but more is coming soon.

### Directory structure of examples

* rtl - contains design files
* tb - contains testbench related files

### Examples

* Adder
  * A simple module that performs addition. 
  * Demonstrates clocked logic
  * Testbench is written in verilog
  * ! Requires [icarus verilog](https://github.com/steveicarus/iverilog) to use Makefile simulation workflow.
