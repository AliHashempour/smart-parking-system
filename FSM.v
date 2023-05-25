`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:12:33 01/23/2022 
// Design Name: 
// Module Name:    FSM 
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
module FSM(
	input [2:0] system_token,
   input request,
   input [7:0] TimeData,
   input reset,
   input clock,
   input confirm,
   input [2:0] user_token,
   output reg RegP,
   output reg RegQ
    );
	 
 reg [2:0] Prstate, Nxtstate;
	 
	 parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b101, S3 = 3'b111, S4 = 3'b110;
	 always @(posedge clock or negedge request)
	   begin
      if (~request) Prstate = S0;
      else Prstate = Nxtstate;
	  end
	  
	  always @ (Prstate or confirm or request or TimeData)
	   case (Prstate)
            S0: if (request) Nxtstate = S1;
                  else Nxtstate = S0;
            S1: if (~request) Nxtstate = S0; 
                else if(request & ~confirm) Nxtstate = S1;
					 else if(request & confirm & system_token == user_token) Nxtstate = S2;
					 else if(request & confirm & system_token != user_token) Nxtstate = S4;
            S2: if (~request)Nxtstate = S0;
                else if(request & ~confirm) Nxtstate = S2;
					 else if(request & confirm) Nxtstate = S3;
			   S3: if(~request) Nxtstate = S0;
				    else if(request & confirm)
					 begin
					  if(TimeData[0] == 1'b1 & TimeData[1] == 1'b1 & TimeData[2] == 1'b1 & TimeData[3] == 1'b1 & TimeData[4] == 1'b1)
					   begin
						 RegP = 1'b1;
						 RegQ = 1'b0;
						end
					 else
					  begin
					   RegQ = 1'b1;
						RegP = 1'b0;
					  end
				   end
				S4: if(~request) Nxtstate = S0;
				    else Nxtstate = S4;
		endcase
		
		

endmodule
