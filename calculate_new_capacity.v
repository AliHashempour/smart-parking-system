`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:31 01/02/2022 
// Design Name: 
// Module Name:    calculate_new_capacity 
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
module calculate_new_capacity(
    park_location,
	 parking_capacity,
    new_capacity);
	 
	input [7:0] park_location;
	input [7:0] parking_capacity;
	output [7:0] new_capacity;
	
	assign new_capacity = park_location ^ parking_capacity;
	
endmodule
