`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:01 03/20/2018 
// Design Name: 
// Module Name:    protected_s_r_latch 
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
module protected_s_r_latch(
	input set,
	input reset,
	output q,
	output q_n );

	wire reset_n;
	wire protected_set;

	assign reset_n = ~reset;
	assign protected_set = reset_n & set;
	assign q = ~(reset | q_n);
	assign q_n = ~(protected_set | q);

endmodule
