`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:29 03/10/2016 
// Design Name: 
// Module Name:    Divisor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Divisor(
     input clk_1M,
	  input reset,
     output reg clk_1k
     );
	 
	  reg [15:0]q;
	 
	  always @ (negedge clk_1M)
	 
	   if (reset)
		begin
		q <= 0;
		clk_1k <= 0;
		end
		else if (q == 49999 )
		begin
		q <= 0;
		clk_1k <= ~clk_1k;
		end
		else
		q <= q + 1;

endmodule
