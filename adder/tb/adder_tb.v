`timescale 1ns/1ns

// Testbench file
// This is used to simulate the design
// It handles actually stepping through simulation time,
// driving the inputs to the design, and reading the state of the outputs

module adder_tb ();

   reg clk = 0;
   reg [7:0] stim_a = 0;
   reg [7:0] stim_b = 0;
   wire [7:0] sum_out;
   wire carryout_out;

   // Instantiate my adder module
   // and connect the inputs and outputs to my testbench nets
   adder
   adder (
      .clock (clk),            // need trailing commas on all but last
      .a (stim_a),
      .b(stim_b),
      .sum(sum_out),
      .carryout(carryout_out)) // don't put a comma on the last one
    ;

   // every two time increments, do bitwise negation of the clock signal
   // this makes the clock tick
   always #2 begin
      clk <= ~clk;
    end

   // Initial blocks run at the start of simulation time
   initial begin
      // $display is verilog's print statement
      $display("time is %03d, sum is: %d", $time, sum_out);

      // This is a simulation delay
      #4 // it says to wait four time steps before proceeding

      // give some values to my stimulus nets
      stim_a = 7;
      stim_b = 9;
      $display("time is %03d, sum is: %d", $time, sum_out);

      #8 // wait 8 time steps
      $display("time is %03d, sum is: %d", $time, sum_out);

      #8 // wait another 8 time steps
      $display("time is %03d, sum is: %d", $time, sum_out);

      #100 $finish; // $finish stops simulation time
   end

endmodule
