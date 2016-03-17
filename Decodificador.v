`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:18 03/10/2016 
// Design Name: 
// Module Name:    Decodificador 
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
module Decodificador(
   input sw,
   input [3:0] cuenta1, cuenta2,
	output reg [7:0] catodo1,catodo2,catodo3,catodo4
    );
    
	 always @(*)
	    begin
		  if (sw)
		  begin
	      case (cuenta1)
			  0: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b00000011;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b00000011;
			     end 
			  1: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b00001101;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b00000011; 
			     end 
			  2: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b01001001;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b00000011;
			     end 
			  3: begin
			       catodo1 <= 8'b01001001;
					 catodo2 <= 8'b00011111;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b00000011;
			     end 
			  4: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b00000011;
					 catodo3 <= 8'b10011111;
					 catodo4 <= 8'b00000011;
			     end 
			  5: begin
			       catodo1 <= 8'b01001001;
					 catodo2 <= 8'b00100101;
					 catodo3 <= 8'b10011111;
					 catodo4 <= 8'b00000011;
			     end 
			  6: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b01001001;
					 catodo3 <= 8'b10011111;
					 catodo4 <= 8'b00000011;
			     end 
			  7: begin
			       catodo1 <= 8'b01001001;
					 catodo2 <= 8'b00011111;
					 catodo3 <= 8'b10011111;
					 catodo4 <= 8'b00000011;
			     end 
			  8: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b00000011;
					 catodo3 <= 8'b00100101; 
					 catodo4 <= 8'b00000011;
			     end 
				default: begin
			              catodo1 <= 8'b11111111;
					        catodo2 <= 8'b11111111;
					        catodo3 <= 8'b11111111; 
					        catodo4 <= 8'b11111111;
                     end 	
       endcase		
		 end
       else 
		 begin
		 case (cuenta2)
			  0: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b00000011;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b00000011;
			     end 
			  1: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b10011110;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b10011111; 
			     end 
			  2: begin
			       catodo1 <= 8'b01001001;
					 catodo2 <= 8'b00100100;
					 catodo3 <= 8'b01001001;
					 catodo4 <= 8'b00100101;
			     end 
			  3: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b00001100;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b00001101;
			     end 
			  4: begin
			       catodo1 <= 8'b10011111;
					 catodo2 <= 8'b01001000;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b01001001;
			     end 
			  5: begin
			       catodo1 <= 8'b10011111;
					 catodo2 <= 8'b01000000;
					 catodo3 <= 8'b00000011;
					 catodo4 <= 8'b01000001;
			     end 
			  6: begin
			       catodo1 <= 8'b01000001;
					 catodo2 <= 8'b00011110;
					 catodo3 <= 8'b01001001;
					 catodo4 <= 8'b00011111;
			     end 
			  7: begin
			       catodo1 <= 8'b01000001;
					 catodo2 <= 8'b00000000;
					 catodo3 <= 8'b01001001;
					 catodo4 <= 8'b00000001;
			     end 
			  8: begin
			       catodo1 <= 8'b00000011;
					 catodo2 <= 8'b00000011;
					 catodo3 <= 8'b00000011; 
					 catodo4 <= 8'b10011111;
			     end 
				default: begin
			              catodo1 <= 8'b11111111;
					        catodo2 <= 8'b11111111;
					        catodo3 <= 8'b11111111; 
					        catodo4 <= 8'b11111111;
                     end 	
       endcase		
		 end 
     		 
	    end 
		 
		 
endmodule
