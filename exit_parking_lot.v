`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:28 01/02/2022 
// Design Name: 
// Module Name:    exit_parking_lot 
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
module exit_parking_lot(
     park_number,
    park_location
);
    input [2:0] park_number;
    output reg [7:0] park_location;

  always @(park_number)
	  begin     
            park_location[0] = (~park_number[0] & ~park_number[1] & ~park_number[2]);
            park_location[1] = (~park_number[0] & ~park_number[1] & park_number[2]);
            park_location[2] = (~park_number[0] & park_number[1] & ~park_number[2]);
            park_location[3] = (~park_number[0] & park_number[1] & park_number[2]);
            park_location[4] = (park_number[0] & ~park_number[1] & ~park_number[2]);
            park_location[5] = (park_number[0] & ~park_number[1] & park_number[2]);
            park_location[6] = (park_number[0] & park_number[1] & ~park_number[2]);
            park_location[7] = (park_number[0] & park_number[1] & park_number[2]);
				
    end
	 
endmodule
