`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:30:38 03/27/2018 
// Design Name: 
// Module Name:    mux_3_bit_8_wide 
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
module mux_3_bit_8_wide(
	input [2:0] selector,
	input [63:0] data_input,
	output [7:0] selected_output );

	mux_3_bit bit_0 (
		.selector(selector),
		.data_input({ data_input[0], data_input[8], data_input[16], data_input[24], data_input[32], data_input[40], data_input[48], data_input[56] }),
		.selected_output(selected_output[0])
	);

	mux_3_bit bit_1 (
		.selector(selector),
		.data_input({ data_input[1], data_input[9], data_input[17], data_input[25], data_input[33], data_input[41], data_input[49], data_input[57] }),
		.selected_output(selected_output[1])
	);

	mux_3_bit bit_2 (
		.selector(selector),
		.data_input({ data_input[2], data_input[10], data_input[18], data_input[26], data_input[34], data_input[42], data_input[50], data_input[58] }),
		.selected_output(selected_output[2])
	);

	mux_3_bit bit_3 (
		.selector(selector),
		.data_input({ data_input[3], data_input[11], data_input[19], data_input[27], data_input[35], data_input[43], data_input[51], data_input[59] }),
		.selected_output(selected_output[3])
	);

	mux_3_bit bit_4 (
		.selector(selector),
		.data_input({ data_input[4], data_input[12], data_input[20], data_input[28], data_input[36], data_input[44], data_input[52], data_input[60] }),
		.selected_output(selected_output[4])
	);

	mux_3_bit bit_5 (
		.selector(selector),
		.data_input({ data_input[5], data_input[13], data_input[21], data_input[29], data_input[37], data_input[45], data_input[53], data_input[61] }),
		.selected_output(selected_output[5])
	);

	mux_3_bit bit_6 (
		.selector(selector),
		.data_input({ data_input[6], data_input[14], data_input[22], data_input[30], data_input[38], data_input[46], data_input[54], data_input[62] }),
		.selected_output(selected_output[6])
	);

	mux_3_bit bit_7 (
		.selector(selector),
		.data_input({ data_input[7], data_input[15], data_input[23], data_input[31], data_input[39], data_input[47], data_input[55], data_input[63] }),
		.selected_output(selected_output[7])
	);

endmodule
