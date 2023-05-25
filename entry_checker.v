`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:40 12/30/2021 
// Design Name: 
// Module Name:    entry_checker 
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
module entry_checker(
	entry,
	parking_capacity,
	enable
    );
	 
	input entry;
	input [7:0] parking_capacity;
	output reg enable;
	
	always @ (entry or parking_capacity)
			if(entry == 0 | parking_capacity == 8'b00000000)
						enable = 1'b0;
			else
						enable = 1'b1;
						
endmodule
