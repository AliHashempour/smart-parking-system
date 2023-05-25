`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:25 01/03/2022 
// Design Name: 
// Module Name:    fullAdder 
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
module fullAdder(
	input a ,
	input b ,
	input cin,
	input sel ,
	output sum ,
	output cout
    );
	
	wire bAfterSelect;
	
	xor xorIC(bAfterSelect, b, sel);
	
	wire wab0, waci, wbci0;
	
	xor (sum, a, bAfterSelect, cin);
	and (wab0, a, bAfterSelect);
	and (waci, a, cin);
	and (wbci0, bAfterSelect, cin);
	or (cout, wab0, waci, wbci0);

endmodule
