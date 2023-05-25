`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:38 01/23/2022 
// Design Name: 
// Module Name:    smart_parking 
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
module smart_parking(
	input entry,
	input [7:0] parking_capacity,
	input exit,
	input [2:0] pattern,
	input [7:0] time_out,
	input [7:0] time_in,
	output [7:0] new_capacity,
	output [7:0] time_total,
	output [3:0] parked,
	output [3:0] empty
    );
    
	 wire [2:0] park_number, token;
	 wire [7:0] park_location, parking_capacity_new;

 // write your code here, please.
	entry_park ep(entry, parking_capacity, park_number);
	token_production tp(park_number, pattern, token);
	exit_park eep(exit, token, pattern, park_location);
	calculate_new_capacity cp(park_location, parking_capacity_new, new_capacity);
	update_capacity uc(entry, parking_capacity, parking_capacity_new);
	time_calculate tc(time_out, time_in, time_total);
	parking_capacity_number pn(new_capacity, parked, empty);


endmodule
