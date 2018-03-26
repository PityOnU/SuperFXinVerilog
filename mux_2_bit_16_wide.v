`timescale 1ns / 1ps

/*

*/

module mux_2_bit_16_wide (
	input [1:0] selector,
	input [63:0] data_input,
	output [15:0] selected_output );

	mux_2_bit bit_00 (
		.selector(selector),
		.data_input({ data_input[0], data_input[16], data_input[32], data_input[48] }),
		.selected_output(selected_output[0])
	);
	
	mux_2_bit bit_01 (
		.selector(selector),
		.data_input({ data_input[1], data_input[17], data_input[33], data_input[49] }),
		.selected_output(selected_output[1])
	);
	
	mux_2_bit bit_02 (
		.selector(selector),
		.data_input({ data_input[2], data_input[18], data_input[34], data_input[50] }),
		.selected_output(selected_output[2])
	);
	
	mux_2_bit bit_03 (
		.selector(selector),
		.data_input({ data_input[3], data_input[19], data_input[35], data_input[51] }),
		.selected_output(selected_output[3])
	);
	
	mux_2_bit bit_04 (
		.selector(selector),
		.data_input({ data_input[4], data_input[20], data_input[36], data_input[52] }),
		.selected_output(selected_output[4])
	);
	
	mux_2_bit bit_05 (
		.selector(selector),
		.data_input({ data_input[5], data_input[21], data_input[37], data_input[53] }),
		.selected_output(selected_output[5])
	);
	
	mux_2_bit bit_06 (
		.selector(selector),
		.data_input({ data_input[6], data_input[22], data_input[38], data_input[54] }),
		.selected_output(selected_output[6])
	);
	
	mux_2_bit bit_07 (
		.selector(selector),
		.data_input({ data_input[7], data_input[23], data_input[39], data_input[55] }),
		.selected_output(selected_output[7])
	);
	
	mux_2_bit bit_08 (
		.selector(selector),
		.data_input({ data_input[8], data_input[24], data_input[40], data_input[56] }),
		.selected_output(selected_output[8])
	);
	
	mux_2_bit bit_09 (
		.selector(selector),
		.data_input({ data_input[9], data_input[25], data_input[41], data_input[57] }),
		.selected_output(selected_output[9])
	);
	
	mux_2_bit bit_10 (
		.selector(selector),
		.data_input({ data_input[10], data_input[26], data_input[42], data_input[58] }),
		.selected_output(selected_output[10])
	);
	
	mux_2_bit bit_11 (
		.selector(selector),
		.data_input({ data_input[11], data_input[27], data_input[43], data_input[59] }),
		.selected_output(selected_output[11])
	);
	
	mux_2_bit bit_12 (
		.selector(selector),
		.data_input({ data_input[12], data_input[28], data_input[44], data_input[60] }),
		.selected_output(selected_output[12])
	);
	
	mux_2_bit bit_13 (
		.selector(selector),
		.data_input({ data_input[13], data_input[29], data_input[45], data_input[61] }),
		.selected_output(selected_output[13])
	);
	
	mux_2_bit bit_14 (
		.selector(selector),
		.data_input({ data_input[14], data_input[30], data_input[46], data_input[62] }),
		.selected_output(selected_output[14])
	);
	
	mux_2_bit bit_15 (
		.selector(selector),
		.data_input({ data_input[15], data_input[31], data_input[47], data_input[63] }),
		.selected_output(selected_output[15])
	);
	
endmodule
