`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:52:49 03/11/2016 
// Design Name: 
// Module Name:    Divisor_100M_N 
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
module Divisor_100M_N(CLKin, Clkout, Rst, S1);
input CLKin;
input [3:0] S1;
output reg Clkout;
input wire Rst;
reg signed [26:0] contador;//log(2,f_in)-1
reg signed [26:0] Div;

always @(S1,Div)
	case (S1)
		10'd1: Div = 1666;
		10'd2: Div = 999;
		10'd3: Div = 666;
		10'd4: Div = 499;
		10'd5: Div = 399;
		10'd6: Div = 333;
		10'd7: Div = 284;
		10'd8: Div = 249;
		default: Div = 10000;
	endcase


always @ (posedge CLKin)
	if (Rst)
		begin 
		contador<=10'd0;
		Clkout<=0;
		end
	else
		if (contador==Div)
			begin
			contador<=10'd0;
			Clkout <=~Clkout;
			end
		else
			contador<=contador + 10'd1;
		
endmodule

