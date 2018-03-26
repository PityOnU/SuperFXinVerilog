`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:47:13 03/26/2018 
// Design Name: 
// Module Name:    mux_2_bit_4_wide 
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
module mux_2_bit_4_wide(
	input [1:0] selector,
	input [15:0] data_input,
	output [3:0] selected_output );

	mux_2_bit bit_0 (
		.selector(selector),
		.data_input({ data_input[0], data_input[4], data_input[8], data_input[12] }),
		.selected_output(selected_output[0])
	);
	
	mux_2_bit bit_1 (
		.selector(selector),
		.data_input({ data_input[1], data_input[5], data_input[9], data_input[13] }),
		.selected_output(selected_output[1])
	);
	
	mux_2_bit bit_2 (
		.selector(selector),
		.data_input({ data_input[2], data_input[6], data_input[10], data_input[14] }),
		.selected_output(selected_output[2])
	);
	
	mux_2_bit bit_3 (
		.selector(selector),
		.data_input({ data_input[3], data_input[7], data_input[11], data_input[15] }),
		.selected_output(selected_output[3])
	);

endmodule
