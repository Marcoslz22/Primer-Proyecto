`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:05:27 03/14/2016
// Design Name:   Control
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Prueba_Displays/Control_Testbench.v
// Project Name:  Prueba_Displays
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_Testbench;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] in3;
	reg [7:0] in2;
	reg [7:0] in1;
	reg [7:0] in0;

	// Outputs
	wire [3:0] anodo;
	wire [7:0] catodo;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.clk(clk), 
		.rst(rst), 
		.in3(in3), 
		.in2(in2), 
		.in1(in1), 
		.in0(in0), 
		.anodo(anodo), 
		.catodo(catodo)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		in3 = 0;
		in2 = 0;
		in1 = 0;
		in0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial forever begin
	#10clk = ~clk;
	end
	
	initial begin
	in0 = 10101101;
	in1 = 11011101;
	in2 = 11010010;
	in3 = 10011111;
	#10
	in0 = 10000111;
	in1 = 01000101;
	in2 = 00000011;
	in3 = 11111000;
	#10 
	in0 = 10011111;
	in1 = 01011101;
	in2 = 00110000;
	in3 = 11111100;
	#10 
	in0 = 11001100;
	in1 = 01000101;
	in2 = 01010111;
	in3 = 00000100;
	#10 
   in0 = 10000111;
	in1 = 01000101;
	in2 = 00000011;
	in3 = 11111000;
	#10 ;
	
	end
	 
	 
endmodule

