`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:18 01/03/2022 
// Design Name: 
// Module Name:    adderSubtractor 
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
module adderSubtractor(
   input [7:0] A ,
	input [7:0] B ,
	input sel , // 1
	output [7:0] S ,
	output cout
	
    );
	 
	wire cout1, cout2, cout3, cout4, cout5, cout6, cout7;
	 
	fullAdder ASD0(
		.a(A[0]) ,
		.b(B[0]) ,
		.cin(sel) ,
		.sel(sel) ,
		.sum(S[0]) ,
		.cout(cout1)
		);
	fullAdder ASD1(
		.a(A[1]) ,
		.b(B[1]) ,
		.cin(cout1) ,
		.sel(sel) ,
		.sum(S[1]) ,
		.cout(cout2)
		);
	fullAdder ASD2(
		.a(A[2]) ,
		.b(B[2]) ,
		.cin(cout2) ,
		.sel(sel) ,
		.sum(S[2]) ,
		.cout(cout3)
		);	
	fullAdder ASD3(
		.a(A[3]) ,
		.b(B[3]) ,
		.cin(cout3) ,
		.sel(sel) ,
		.sum(S[3]) ,
		.cout(cout4)
		);
		
		fullAdder ASD4(
		.a(A[4]) ,
		.b(B[4]) ,
		.cin(cout4) ,
		.sel(sel) ,
		.sum(S[4]) ,
		.cout(cout5)
		);
		
		fullAdder ASD5(
		.a(A[5]) ,
		.b(B[5]) ,
		.cin(cout5) ,
		.sel(sel) ,
		.sum(S[5]) ,
		.cout(cout6)
		);
		
		fullAdder ASD6(
		.a(A[6]) ,
		.b(B[6]) ,
		.cin(cout6) ,
		.sel(sel) ,
		.sum(S[6]) ,
		.cout(cout7)
		);
		
		fullAdder ASD7(
		.a(A[7]) ,
		.b(B[7]) ,
		.cin(cout7) ,
		.sel(sel) ,
		.sum(S[7]) ,
		.cout(cout)
		);


endmodule
