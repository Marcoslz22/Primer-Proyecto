`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:04:51 03/14/2016
// Design Name:   Decodificador
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Prueba_Displays/Decodificador_Testbench.v
// Project Name:  Prueba_Displays
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decodificador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decodificador_Testbench;

	// Inputs
	reg sw;
	reg [3:0] cuenta1;
	reg [3:0] cuenta2;

	// Outputs
	wire [7:0] catodo1;
	wire [7:0] catodo2;
	wire [7:0] catodo3;
	wire [7:0] catodo4;

	// Instantiate the Unit Under Test (UUT)
	Decodificador uut (
		.sw(sw), 
		.cuenta1(cuenta1), 
		.cuenta2(cuenta2), 
		.catodo1(catodo1), 
		.catodo2(catodo2), 
		.catodo3(catodo3), 
		.catodo4(catodo4)
	);

	initial begin
		// Initialize Inputs
		sw = 0;
		cuenta1 = 0;
		cuenta2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin

	sw = 1;
	cuenta1 = 1;
	cuenta2 = 0;
	#10
	cuenta1 = 2;
	cuenta2 = 0;
	#10
	cuenta1 = 3;
	cuenta2 = 0;
	#10
	cuenta1 = 4;
	cuenta2 = 0;
	#10
	cuenta1 = 5;
	cuenta2 = 0;
	#10
	sw = 0;
	cuenta1 = 5;
	cuenta2 = 1;
	#10
	cuenta1 = 5;
	cuenta2 = 2;
	#10
	cuenta1 = 5;
	cuenta2 = 3;
	#10
	cuenta1 = 5;
	cuenta2 = 4;
	#10 $stop;
	end
      
endmodule

