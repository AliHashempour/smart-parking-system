`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:31 12/30/2021 
// Design Name: 
// Module Name:    park_space_number 
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
module park_space_number(
    enable,
    parking_capacity,
    park_number);
 
	input enable;
	input [7:0] parking_capacity;
	output reg [2:0] park_number;
	// write your code here, please.
	
	always @(enable or parking_capacity) begin
	if(enable) begin
		park_number =(parking_capacity[7] == 1'b1 ) ? 3'b111:
		(parking_capacity[6] ==1'b1 ) ? 3'b110:
		(parking_capacity[5] ==1'b1 ) ? 3'b101:
		(parking_capacity[4] ==1'b1) ? 3'b100:
		(parking_capacity[3] ==1'b1) ? 3'b011:
		(parking_capacity[2] ==1'b1) ? 3'b010:
		(parking_capacity[1] ==1'b1) ? 3'b001:
	   (parking_capacity[0] ==1'b1) ? 3'b000: 3'bXXX;
	end
	else
		park_number = 3'bZZZ;
		
  end
  
endmodule
