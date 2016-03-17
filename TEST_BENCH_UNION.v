`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:49 03/11/2016
// Design Name:   Union
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Prueba_Displays/TEST_BENCH_UNION.v
// Project Name:  Prueba_Displays
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Union
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_BENCH_UNION;

	// Inputs
	reg S;
	reg B;
	reg clk;
	reg rst;
	reg sw;

	// Outputs
	wire [3:0] anodo;
	wire [7:0] catodo;
	wire pwm;
	wire frecuencia;

	// Instantiate the Unit Under Test (UUT)
	Union uut (
		.S(S), 
		.B(B), 
		.clk(clk), 
		.rst(rst), 
		.sw(sw), 
		.anodo(anodo), 
		.catodo(catodo), 
		.pwm(pwm), 
		.frecuencia(frecuencia)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		B = 0;
		clk = 0;
		rst = 1;
		sw = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
     end   
		// Add stimulus here
	initial begin
		$monitor("S=%b B=%b sw=%b rst=%b frecuencia=%b pwm=%b anodo=%b catodo=%b tiempo=%0dns " ,S,B,sw,rst,frecuencia,pwm,anodo,catodo, $time);
		S = 0;
		B = 0;
		rst = 1;

		#5000;
		rst = 0;
		sw = 0;
		#100;
		B = 0;
		S = 1;
		#100;
		B = 0;
		S = 1;
		#100;
		B = 0;
		S = 1;
		#5000; 
		sw = 1;
		B = 0;
		S = 1;
		#100;
		B = 0;
		S = 1;		
		#35000;
		$finish;
	end

   always #10 clk = ~clk;
      
endmodule

