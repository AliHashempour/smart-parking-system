`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:15 01/01/2022 
// Design Name: 
// Module Name:    entry_park 
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
module entry_park(
    entry,
	 parking_capacity,
	 park_number);

	input entry;
	input [7:0] parking_capacity;
	output [2:0] park_number;
	wire out;
	
   entry_checker check(entry, parking_capacity,out);
	
	park_space_number park(out,parking_capacity,park_number);

endmodule
