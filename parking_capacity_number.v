`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:36 01/05/2022 
// Design Name: 
// Module Name:    parking_capacity_number 
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
module parking_capacity_number(
	new_capacity,
	parked,
	empty
    );
	
	input [7:0] new_capacity;
	output [3:0] parked;
	output [3:0] empty; 
	
   wire [3:0] wire1;
	wire [3:0] wire2;
	wire [3:0] wire3;
	wire [3:0] wire4;
	wire [3:0] wire5;
	wire [3:0] wire6;
	wire [3:0] wire7;

	wire carry_out;
	wire carry_out1;
	wire carry_out2;
	wire carry_out3;
	wire carry_out4;
	wire carry_out5;
	wire carry_out6;
	wire carry_out7;
   wire carry_out8;
	
	adder_subtractor4bit as1({3'b000, new_capacity[0]}, 4'b0000,1'b0, wire1, carry_out);
	adder_subtractor4bit as2({3'b000, new_capacity[1]}, wire1, 1'b0, wire2, carry_out1);
	adder_subtractor4bit as3({3'b000, new_capacity[2]}, wire2, 1'b0, wire3, carry_out2);
	adder_subtractor4bit as4({3'b000, new_capacity[3]}, wire3, 1'b0, wire4, carry_out3);
	adder_subtractor4bit as5({3'b000, new_capacity[4]}, wire4, 1'b0, wire5, carry_out4);
	adder_subtractor4bit as6({3'b000, new_capacity[5]}, wire5, 1'b0, wire6, carry_out5);
	adder_subtractor4bit as7({3'b000, new_capacity[6]}, wire6, 1'b0, wire7, carry_out6);
	adder_subtractor4bit as8({3'b000, new_capacity[7]}, wire7, 1'b0, empty, carry_out7);
    
   adder_subtractor4bit as9(4'b1000, empty, 1'b1, parked, carry_out8);
	 

endmodule
