`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:15:39 01/05/2022 
// Design Name: 
// Module Name:    adder_subtractor4bit 
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
module adder_subtractor4bit(
	input [3:0] A ,
	input [3:0] B ,
	input sel , //1 -> - , 0 -> +
	output [3:0] S ,
	output cout
    );
	 
	wire cout1, cout2, cout3;
	
	fullAdder f0(
		.a(A[0]) ,
		.b(B[0]) ,
		.cin(sel) ,
		.sel(sel) ,
		.sum(S[0]) ,
		.cout(cout1)
		);
		
	fullAdder f1(
		.a(A[1]) ,
		.b(B[1]) ,
		.cin(cout1) ,
		.sel(sel) ,
		.sum(S[1]) ,
		.cout(cout2)
		);
		
	fullAdder f2(
		.a(A[2]) ,
		.b(B[2]) ,
		.cin(cout2) ,
		.sel(sel) ,
		.sum(S[2]) ,
		.cout(cout3)
		);	
		
	fullAdder f3(
		.a(A[3]) ,
		.b(B[3]) ,
		.cin(cout3) ,
		.sel(sel) ,
		.sum(S[3]) ,
		.cout(cout)
		);


endmodule
