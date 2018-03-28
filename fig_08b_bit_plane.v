`timescale 1ns / 1ps

/*

*/

module fig_08b_bit_plane(
	input clk,
	input reset_n,
	input [7:0] bpr,
	input ldram_n,
	input [7:0] ramd,
	input [7:0] dump,
	input col,
	input ldpix_n,
	output [7:0] data );

	fig_08b pixel_0 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[7]),
		.ldram_n(ldram_n),
		.ramd(ramd[7]),
		.dump(dump[7]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[7])
	);
	
	fig_08b pixel_1 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[6]),
		.ldram_n(ldram_n),
		.ramd(ramd[6]),
		.dump(dump[6]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[6])
	);
	
	fig_08b pixel_2 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[5]),
		.ldram_n(ldram_n),
		.ramd(ramd[5]),
		.dump(dump[5]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[5])
	);
	
	fig_08b pixel_3 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[4]),
		.ldram_n(ldram_n),
		.ramd(ramd[4]),
		.dump(dump[4]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[4])
	);
	
	fig_08b pixel_4 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[3]),
		.ldram_n(ldram_n),
		.ramd(ramd[3]),
		.dump(dump[3]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[3])
	);
	
	fig_08b pixel_5 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[2]),
		.ldram_n(ldram_n),
		.ramd(ramd[2]),
		.dump(dump[2]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[2])
	);
	
	fig_08b pixel_6 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[1]),
		.ldram_n(ldram_n),
		.ramd(ramd[1]),
		.dump(dump[1]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[1])
	);
	
	fig_08b pixel_7 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr[0]),
		.ldram_n(ldram_n),
		.ramd(ramd[0]),
		.dump(dump[0]),
		.col(col),
		.ldpix_n(ldpix_n),
		.data(data[0])
	);
	
endmodule
