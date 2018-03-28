`timescale 1ns / 1ps

/*

*/

module fig_04b_block_052(
	//x register
	input [15:0] r01,
	//y register
	input [15:0] r02,
	input [7:0] color,
	input ram_done,
	input ldpnd,
	input clrpnd,
	input dump,
	input scr_ht;
		
	output [7:0] pixel_data,
	output [15:0] plot_addr,
	output pleq );


endmodule
