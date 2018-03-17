`timescale 1ns / 1ps

/*

*/

module fig_4b_block_68_70_72_94_96(
	input [15:0] pc,
	input [7:0] instr_in,
	input cache_start,
	input romrdy,
	output reg fetch_req,
	output [7:0] instr_out );

	reg [12:0] cache_base_addr;
	wire orange;
	wire [5:0] cache_addr_hi;
	wire [63:0] tag_latch_en;

	//Block 500
	always @(cache_start)
	begin
		cache_base_addr <= pc[12:0];
	end
	
	//Block 502
	fig_14_block_502 subtractor (
		.pc(pc[15:3]),
		.cache_base_addr(cache_base_addr),
		.orange(orange),
		.cache_addr(cache_addr_hi)
	);
	
	//Block 504
	one_hot_6_bit demux (
		.selector(cache_addr_hi),
		.one_hot_output(tag_latch_en)
	);

endmodule
