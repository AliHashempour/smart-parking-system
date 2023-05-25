`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:55:34 01/02/2022 
// Design Name: 
// Module Name:    exit_park 
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
module exit_park(
  exit,
  token,
  pattern,
  park_location);
  
 input exit;
 input [2:0] token;
 input [2:0] pattern;
 output [7:0] park_location;
   
 wire [2:0]wire1;
 
 decrypt dec(exit,token,pattern,wire1);
 exit_parking_lot epl(wire1,park_location);
   
endmodule
