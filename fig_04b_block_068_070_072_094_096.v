`timescale 1ns / 1ps

/*

*/

module fig_04b_block_068_070_072_094_096(
	input clk,
	input [15:0] pc,
	input [7:0] instr_in,
	input cache_start,
	input romrdy,
	output reg fetch_req,
	output [7:0] instr_out );

	reg [12:0] cache_base_addr;
	reg tag_latch_set;
	wire orange;
	wire [5:0] cache_addr_hi;
	wire [63:0] tag_latch_en;
	wire [63:0] dirty_bits;
	wire inst_in_cache;
	reg cache_write_enable;
	
	always @( * )
	begin
		cache_write_enable = romrdy & ~orange;
	end
	
	//Figure 14 Block 94
	fig_14_block_94 cache_ram(
		.clk(clk),
		.address({ cache_addr_hi, pc[2:0] }),
		.inst(instr_in),
		.write_enable(cache_write_enable),
		.data(instr_out)
	);
	

	//Figure 14 Block 500
	always @( negedge clk )
	begin
		if ( cache_start )
		begin
			cache_base_addr <= pc[15:3];
		end
	end
	
	//Figure 14 Block 502
	fig_14_block_502 subtractor (
		.pc(pc[15:3]),
		.cache_base_addr(cache_base_addr),
		.orange(orange),
		.cache_addr(cache_addr_hi)
	);
	
	//Figure 14 Block 504
	one_hot_6_bit demux (
		.selector(cache_addr_hi),
		.one_hot_output(tag_latch_en)
	);
	
	//Figure 14 Block 506
	fig_14_block_506 tag_latches (
		.clk(clk),
		.clr(cache_start),
		.set(tag_latch_set),
		.selector(tag_latch_en),
		.dirty_bits(dirty_bits)
	);
	
	//Figure 14 Block 510
	always @( * )
	begin
		tag_latch_set = (~orange) & (&pc[3:0]) & romrdy;
	end
	
	//Figure 14 Block 512
	mux_6_bit mux (
		.selector(cache_addr_hi),
		.data_input(dirty_bits),
		.selected_output(inst_in_cache)
	);
	
	//Figure 14 Block 514
	always @( * )
	begin
		fetch_req = ~(inst_in_cache | orange);
	end

endmodule
