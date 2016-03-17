`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:05:49 03/14/2016
// Design Name:   Flip_Flop_D1
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Prueba_Displays/Flip_Flop_Testbench.v
// Project Name:  Prueba_Displays
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Flip_Flop_D1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Flip_Flop_Testbench;

	// Inputs
	reg clk;
	reg d;
	reg rst;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	Flip_Flop_D1 uut (
		.clk(clk), 
		.d(d), 
		.rst(rst), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d = 0;
		rst = 0;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial forever begin
	#5clk = ~clk;
	end
	
	initial begin
	d = 1;
	#20
	d = 0;
	#20
	d = 1;
	#20
	rst = 1;
	#20 $stop;
	end
      
endmodule

