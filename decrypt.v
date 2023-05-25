`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:16 01/02/2022 
// Design Name: 
// Module Name:    decrypt 
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
module decrypt(
   exit,
	token,
	pattern,
	park_number);
	
	input exit;
	input [2:0] token;
	input [2:0] pattern;
	output reg [2:0] park_number;
   
	always @ (exit or token or pattern)
	   begin 
		
			park_number = pattern ^ token;
			
		end

endmodule
