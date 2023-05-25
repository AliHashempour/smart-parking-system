`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:08 01/23/2022 
// Design Name: 
// Module Name:    controller 
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
module controller(
	input [2:0] system_token,
	input request,
	input [7:0] TimeData,
	input reset,
	input clock,
	input confirm,
	input [2:0] user_token,
	output [7:0] data_Q,
	output [7:0] data_P
    );
	 
     wire RegP,RegQ;
	 
	 FSM fsm(system_token,request,TimeData,reset,clock,confirm,user_token,RegP,RegQ);
	 register reg1(TimeData,clock,reset,RegP,data_P);
	 register reg2(TimeData,clock,reset,RegQ,data_Q);
	
endmodule
