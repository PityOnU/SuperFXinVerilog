`timescale 1ns / 1ps

/*

*/

module fig_07_block_206(
	input clk,
	input reset,
	input [7:0] bpr,
	input [7:0] ramd,
	input ramdone,
	input dump,
	input [7:0] col,
	input ldpix,
	input [2:0] pixel_sel,
	input [2:0] plane_sel,
	output [7:0] planed );
	
	wire [63:0] matrix_buffer;
	wire [7:0] pixel_sel_one_hot;
	wire [7:0] plane_sel_one_hot;
	reg [7:0] dump_one_hot;
	reg [7:0] ldram_one_hot;
	
	mux_3_bit_8_wide planed_selector (
		.selector(plane_sel),
		.data_input(matrix_buffer),
		.selected_output(planed)
	);
	
	one_hot_3_bit pixel_sel_expander (
		.selector(pixel_sel),
		.one_hot_output(pixel_sel_one_hot)
	);
	
	one_hot_3_bit plane_sel_expander (
		.selector(plane_sel),
		.one_hot_output(plane_sel_one_hot)
	);
	
	always @( * )
	begin
		dump_one_hot = pixel_sel_one_hot & {8{dump}};
	end
	
	always @( * )
	begin
		ldram_one_hot = plane_sel_one_hot & {8{ramdone}};
	end
	 
	fig_08b_bit_matrix fig_08b_bit_matrix (
		.clk(clk),
		.reset_n(~reset),
		.bpr(bpr),
		.ldram_n(~ldram_one_hot),
		.ramd(ramd),
		.dump(dump_one_hot),
		.col(col),
		.ldpix_n(~ldpix),
		.data(matrix_buffer)
	);


endmodule
