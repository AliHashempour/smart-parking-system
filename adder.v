`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:26 01/05/2022 
// Design Name: 
// Module Name:    adder 
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
module adder(
	a,
	b,
	cin,
	sum,
	cout
    );
	 
	input [3:0] a,b;
	input cin;
	output wire [3:0]sum;
	output cout;
	
	fulader FA1(a[0],b[0],cin,sum[0],cout1);
	fulader FA2(a[1],b[1],cout1,sum[1],cout2);
	fulader FA3(a[2],b[2],cout2,sum[2],cout3);
	fulader FA4(a[3],b[3],cout3,sum[3],cout);

endmodule
