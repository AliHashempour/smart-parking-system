`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:21 01/23/2022 
// Design Name: 
// Module Name:    register 
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
module register(
	input [7:0] D,
	input CLK, 
	input RST,
	input en,
	output [7:0] Q
    );
	 
	 reg [7:0] Q;
	 
	 always @ (posedge CLK or negedge RST)
	     begin
				if(RST == 0)
					Q <= 8'b00000000;
				else if (en)
					Q <= D;
		
		  end
    

endmodule
