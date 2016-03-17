`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:26 03/10/2016 
// Design Name: 
// Module Name:    Contador 
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
module Contador(

    input [1:0] sb,
    input clk,
    input en,
	 input rst,
    output reg [3:0] cuenta
    );
   
	reg estado,estado2 = 0;
	
   always @(posedge clk)
      if (rst)
         cuenta <= 4'd0;
      else if (en)
		        begin
				  if (sb[1] == 1)
				  begin
						
						  if (estado == 0)
						
						  begin
						   estado <= 1;
				         if (cuenta == 4'd8)
						   cuenta <= 4'd0;
						   else 
						   cuenta <= cuenta + 1;
				        end
						
						else  cuenta <= cuenta;
						
				  end
				  else 
				  begin
				  estado <=0;
				  if (sb [0] == 1)
		                begin
							 
							 if (estado2 == 0)
							 
							   begin
							   estado2 <=1;
							   if (cuenta == 4'd0)
							   cuenta <= 4'd8;
							   else
                        cuenta <= cuenta - 1;	
							   end
							 
							 else
							 
							   begin
						      cuenta <= cuenta;						 
							   end
							 
							 end
					else estado2 <= 0;
        	end
			end

endmodule
