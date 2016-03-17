`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:57 03/11/2016 
// Design Name: 
// Module Name:    Ciclo_de_Trabajo 
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
module Ciclo_de_Trabajo(CLKin, Cc,Cf, PWMout, rst);

input wire rst;
input CLKin;//clk del contador
reg [26:0] N;
output reg PWMout;
reg signed [26:0] contador;//log(2,f_in)-1
reg signed [26:0] Div;
input [3:0]Cf;
input [3:0]Cc;


always @(Cf,Div)
	case (Cf)
		10'd1: Div = 3332;
		10'd2: Div = 1998;
		10'd3: Div = 1332;
		10'd4: Div = 998;
		10'd5: Div = 798;
		10'd6: Div = 666;
		10'd7: Div = 568;
		10'd8: Div = 498;
		default: Div = 20000;
	endcase
always @(Cc, Div, N)	
	
	case (Cc)
		10'd0:
				if (Div ==3332)
					N<=Div;
				else 
					if (Div ==1998)
						N<=Div;
					else 
						if (Div ==1332)
							N<=Div;
						else 
							if (Div ==998)
								N<=Div;
							else 
								if (Div ==798)
									N<=Div;
								else 
									if (Div ==666)
										N<=Div;
									else 
										if (Div ==568)
											N<=Div;
										else 
											if (Div ==498)
												N<=Div;
											else 
												if (Div ==20000)
													N<=Div;
												else 
													N<=20000;
		10'd1:
				if (Div ==3332)
					N<=3165;
				else 
					if (Div ==1998)
						N<=1898;
					else 
						if (Div ==1332)
							N<=1265;
						else 
							if (Div ==998)
								N<=948;
							else 
								if (Div ==798)
									N<=758;
								else 
									if (Div ==666)
										N<=633;
									else 
										if (Div ==568)
											N<=540;
										else 
											if (Div ==498)
												N<=473;
											else 
												if (Div ==20000)
													N<=19000;
												else 
													N<=19000;
	
		10'd2:
				if (Div ==3332)
					N<=2915;
				else 
					if (Div ==1998)
						N<=1748;
					else 
						if (Div ==1332)
							N<=1165;
						else 
							if (Div ==998)
								N<=873;
							else 
								if (Div ==798)
									N<=698;
								else 
									if (Div ==666)
										N<=583;
									else 
										if (Div ==568)
											N<=497;
										else 
											if (Div ==498)
												N<=436;
											else 
												if (Div ==20000)
													N<=17500;
												else 
													N<=17500;
		10'd3:
				if (Div ==3332)
					N<=2832;
				else 		
					if (Div ==1998)
						N<=1698;
					else	
						if (Div ==1332)
							N<=1132;
						else 
							if (Div ==998)
								N<=848;
							else 
								if (Div ==798)
									N<=678;
								else 
									if (Div ==666)
										N<=566;
									else 	
										if (Div ==568)
											N<=483;
										else 	
											if (Div ==498)
												N<=423;
											else 
												if (Div ==20000)
													N<=17000;
												else
													N<=17000;
		10'd4:
				if (Div ==3332)
					N<=2499;
				else 
					if (Div ==1998)
						N<=1498;
					else 
						if (Div ==1332)
							N<=999;
						else 
							if (Div ==998)
								N<=748;
							else 
								if (Div ==798)
									N<=598;
								else 
									if (Div ==666)
										N<=499;
									else 
										if (Div ==568)
											N<=426;
										else 
											if (Div ==498)
												N<=373;
											else 
												if (Div ==20000)
													N<=15000;
												else 
													N<=15000;
		10'd5:
				if (Div ==3332)
					N<=2332;
				else 
					if (Div ==1998)
						N<=1398;
					else 
						if (Div ==1332)
							N<=932;
						else 
							if (Div ==998)
								N<=698;
							else 
								if (Div ==798)
									N<=558;
								else 
									if (Div ==666)
										N<=466;
									else 
										if (Div ==568)
											N<=397;
										else 
											if (Div ==498)
												N<=348;
											else 
												if (Div ==20000)
													N<=14000;
												else 
													N<=14000;
		10'd6:
				if (Div ==3332)
					N<=2082;
				else 
					if (Div ==1998)
						N<=1249;
					else 
						if (Div ==1332)
							N<=832;
						else
							if (Div ==998)
								N<=624;
							else 
								if (Div ==798)
									N<=499;
								else 
									if (Div ==666)
										N<=416;
									else 
										if (Div ==568)
											N<=355;
										else 
											if (Div ==498)
												N<=311;
											else 
												if (Div ==20000)
													N<=12500;
												else
													N<=12500;
		10'd7:
				if (Div ==3332)
					N<=1916;
				else 
					if (Div ==1998)
						N<=1149;
					else 
						if (Div ==1332)
							N<=766;
						else 
							if (Div ==998)
								N<=574;
							else 
								if (Div ==798)
									N<=459;
								else 
									if (Div ==666)
										N<=383;
									else 
										if (Div ==568)
											N<=326;
										else 
											if (Div ==498)
												N<=286;
											else 
												if (Div ==20000)
													N<=11500;
												else 
													N<=11500;		
		10'd8:
				if (Div ==3332)
					N<=1682;
				else 
					if (Div ==1998)
						N<=1009;
					else 
						if (Div ==1332)
							N<=672;
						else 
							if (Div ==998)
								N<=504;
							else 
								if (Div ==798)
									N<=403;
								else 
									if (Div ==666)
										N<=336;
									else 
										if (Div ==568)
											N<=287;
										else 
											if (Div ==498)
												N<=251;
											else 
												if (Div ==20000)
													N<=10100;
												else 
													N<=10100;	

		default: N<=200000;
	endcase	
always @ (posedge CLKin)
	if (rst)
		begin 
		contador<=0;	
		PWMout<=0;
		end
	else
		if (contador==Div)
			begin
			contador<=0;
			PWMout<=0;
			end
		else 
			if (contador==N)
				begin
				PWMout <=~PWMout;
				contador<=contador +1;
				end
			else
				contador<=contador +1;

endmodule
