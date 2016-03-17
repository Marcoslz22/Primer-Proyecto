`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:51 03/10/2016 
// Design Name: 
// Module Name:    Union 
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
module Union(
    input S,
	 input B,
	 input clk,rst,sw,
	 output [3:0] anodo,
	 output [7:0] catodo,
	 output pwm, frecuencia
    );
	 wire [1:0] sb;
	 wire [7:0] catodo1,catodo2,catodo3,catodo4;
	 wire [3:0] cuenta1,cuenta2;
	 wire q1,q2,q3,q4,q5,q6,q7,q8;

	 
	 Flip_Flop_D1 F1 (clk,S,rst,q1);
	 Flip_Flop_D2 F2 (clk,q1,rst,q2);
	 Flip_Flop_D3 F3 (clk,q2,rst,q3);
	 Flip_Flop_D4 F4 (clk,q3,rst,q4);
	 
	 Flip_Flop_D5 F5 (clk,B,rst,q5);
	 Flip_Flop_D6 F6 (clk,q5,rst,q6);
	 Flip_Flop_D7 F7 (clk,q6,rst,q7);
	 Flip_Flop_D8 F8 (clk,q7,rst,q8);
	 
	 assign sb [1] = q4;
	 assign sb [0] = q8;
	 assign sw2 = ~sw;
	 
	 
	 Contador F9 (sb,clk,sw,rst,cuenta1);
	 Contador2 F10 (sb,clk,sw2,rst,cuenta2);
	 Decodificador F11 (sw,cuenta1,cuenta2,catodo1,catodo2,catodo3,catodo4);
	 Control F12 (clk,rst,catodo4,catodo3,catodo2,catodo1,anodo,catodo);
	 Ciclo_de_Trabajo F13(clk, cuenta2,cuenta1, pwm, rst);
	 Divisor_100M_N F14 (clk, frecuencia, rst, cuenta1);



endmodule
