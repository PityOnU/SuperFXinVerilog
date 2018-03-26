`timescale 1ns / 1ps

/*



*/

module fig_04b_block_076_078(
	input clk,
	
	input [3:0] instr,
	input resflags,
	input to,
	input from,
	input [3:0] ha,
	input ssel,
	input dsel,
	
	input enable,
	input data_in,
	input disable_l,
	input enable_h,
	input disable_h,
	input cchld,
	input pcen,
	input loopen,
	input reset,
	input rn15,
	output [15:0] x,
	output [15:0] y );

	wire [3:0] ysel;
	wire [3:0] zsel;

	//Figure 04B block 078
	fig_04b_block_078 fig_04b_block_078 (
		.clk(clk),
		.instr(instr),
		.resflags(resflags),
		.to(to),
		.from(from),
		.ha(ha),
		.ssel(ssel),
		.dsel(desl),
		.ysel(ysel),
		.zsel(zsel)
	);

endmodule
