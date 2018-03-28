`timescale 1ns / 1ps

/*

*/

module fig_08b_bit_matrix(
	input clk,
	input reset_n,
	input [7:0] bpr,
	input [7:0] ldram_n,
	input [7:0] ramd,
	input [7:0] dump,
	input [7:0] col,
	input ldpix_n,
	output [63:0] data );
	 
	fig_08b_bit_plane bit_plane_0 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[0]),
		.ramd(ramd),
		.dump(dump),
		.col(col[0]),
		.ldpix_n(ldpix_n),
		.data(data[7:0])
	);
	
	fig_08b_bit_plane bit_plane_1 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[1]),
		.ramd(ramd),
		.dump(dump),
		.col(col[1]),
		.ldpix_n(ldpix_n),
		.data(data[15:8])
	);
	
	fig_08b_bit_plane bit_plane_2 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[2]),
		.ramd(ramd),
		.dump(dump),
		.col(col[2]),
		.ldpix_n(ldpix_n),
		.data(data[23:16])
	);
	
	fig_08b_bit_plane bit_plane_3 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[3]),
		.ramd(ramd),
		.dump(dump),
		.col(col[3]),
		.ldpix_n(ldpix_n),
		.data(data[31:24])
	);
	
	fig_08b_bit_plane bit_plane_4 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[4]),
		.ramd(ramd),
		.dump(dump),
		.col(col[4]),
		.ldpix_n(ldpix_n),
		.data(data[39:32])
	);
	
	fig_08b_bit_plane bit_plane_5 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[5]),
		.ramd(ramd),
		.dump(dump),
		.col(col[5]),
		.ldpix_n(ldpix_n),
		.data(data[47:40])
	);
	
	fig_08b_bit_plane bit_plane_6 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[6]),
		.ramd(ramd),
		.dump(dump),
		.col(col[6]),
		.ldpix_n(ldpix_n),
		.data(data[55:48])
	);
	
	fig_08b_bit_plane bit_plane_7 (
		.clk(clk),
		.reset_n(reset_n),
		.bpr(bpr),
		.ldram_n(ldram_n[7]),
		.ramd(ramd),
		.dump(dump),
		.col(col[7]),
		.ldpix_n(ldpix_n),
		.data(data[63:56])
	);


endmodule
