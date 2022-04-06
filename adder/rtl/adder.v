`timescale 1ns/1ns

// Simple carry addition module for demonstration purposes

module adder
(
 input  wire       clock,

 input  wire [7:0] a,
 input  wire [7:0] b,

 output wire [7:0] sum,
 output wire carryout
);

   reg [8:0] x = 0;

   // At every positive edge of the clock input
   // add a and b and store the value to x
   always @ (posedge clock) begin
      x <= a + b; // addition,
   end

   assign sum = x[7:0];     // take the lower 8 bits of x
   assign carryout = x[8];  // take the high bit as carry out

   // This is for generating trace files to observe a waveform
   // of the signal values over tiem
   initial begin
      $dumpfile("test.vcd");
      $dumpvars(1, adder);
   end


endmodule
