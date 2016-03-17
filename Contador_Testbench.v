`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:01:13 03/14/2016
// Design Name:   Contador
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Prueba_Displays/Contador_Testbench.v
// Project Name:  Prueba_Displays
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Contador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Contador_Testbench;

	// Inputs
	reg [1:0] sb;
	reg clk;
	reg en;
	reg rst;

	// Outputs
	wire [3:0] cuenta;

	// Instantiate the Unit Under Test (UUT)
	Contador uut (
		.sb(sb), 
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.cuenta(cuenta)
	);

	initial begin
		// Initialize Inputs
		sb = 0;
		clk = 0;
		en = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
   initial forever begin
	#5clk = ~clk;
	end
	 
	initial begin
	rst = 1;
	#10
	rst = 0;
	#10
	en = 1;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 0;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10
	en = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 1;
	sb[0] = 0;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10
	sb[1] = 0;
	sb[0] = 1;
	#10 $stop;
	end
      
endmodule

