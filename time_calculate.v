`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:23 01/02/2022 
// Design Name: 
// Module Name:    time_calculate 
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
module time_calculate(
	time_out,
	time_in,
	time_total);
 
	input [7:0] time_out;
	input [7:0] time_in;
	output [7:0] time_total;
	
	wire cout;
	
	adderSubtractor as(time_out, time_in , {1'b1} , time_total, cout);
   


endmodule
