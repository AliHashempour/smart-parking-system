`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:18:42 01/02/2022 
// Design Name: 
// Module Name:    token_production 
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
module token_production(
	park_number,
	pattern,
	token);
 input [2:0] park_number;
 input [2:0] pattern;
 output reg [2:0] token;
 
 always @ (park_number or pattern)
        begin
		   token = park_number ^ pattern;
		  end

endmodule
