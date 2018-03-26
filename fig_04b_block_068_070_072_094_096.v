`timescale 1ns / 1ps

/*

This is the Verilog code containing the functionality of the SuperFX chip's 
built-in 512B instruction cache. This is modeled after the blocks 68, 70, 72, 
94, and 96 in Figure 4B. These are all combined and shown in more detail in 
Figure 14.

There is actually an error in Figure 14, wherein the figure depicts the cache 
RAM and tag latches as being indexed into using the bottom *three* bits of the 
program counter. In actuality, these are indexed using the bottom *four* bits, 
just like the tag latch set signal. This would make 32x 16-byte blocks, as is 
repeatedly referenced by the text in the patent. The result is a slight 
retooling of Figure 14's blocks 94, 502, 504, 506, and 512.

Additionally, the latches in this part of the design have been replaced by 
flip-flops triggered on the falling edge of the main clock. This change is to 
comply with modern VLSI design techniques and allow for EDA tools to perform 
verifcation, timing estimations, and ATPG. Performance and timing should remain 
similar to the original design. However, compared to the original design, an 
additional clock cycle is needed when reading in the first instruction which 
will be stored in the cache. In the majority of cases, though, this should be 
masked by ROM access time.

In the text, the I/O and behavior for this block is described in 3:36-45, 
17:11-68, 18:1-17, 27:47-52, and 47:9-68. Functions and names of other 
pins/signals are inferred from Fig. 14.

*/

module fig_04b_block_068_070_072_094_096 (
	input clk,
	input [15:0] pc,
	input [7:0] instr_in,
	input cache_start,
	input romrdy,
	output reg fetch_req,
	output [7:0] instr_out );

	reg [11:0] cache_base_addr;
	reg tag_latch_set;
	wire orange;
	wire [4:0] cache_addr_hi;
	wire [31:0] tag_latch_en;
	wire [31:0] dirty_bits;
	wire inst_in_cache;
	//This is an implied signal which controls when an instruction
	//is written to the cache
	reg cache_write_enable;
	
	//Current logic for the cache write enable
	//Citation needed
	always @( * )
	begin
		cache_write_enable = romrdy & ~orange;
	end
	
	//Figure 14 Block 094
	fig_14_block_094 fig_14_block_094 (
		.clk(clk),
		.address({ cache_addr_hi, pc[3:0] }),
		.write_data(instr_in),
		.write_enable(cache_write_enable),
		.read_data(instr_out)
	);
	

	//Figure 14 Block 500
	always @( negedge clk )
	begin
		if ( cache_start )
		begin
			cache_base_addr <= pc[15:4];
		end
	end
	
	//Figure 14 Block 502
	fig_14_block_502 fig_14_block_502 (
		.pc(pc[15:4]),
		.cache_base_addr(cache_base_addr),
		.orange(orange),
		.cache_addr(cache_addr_hi)
	);
	
	//Figure 14 Block 504
	one_hot_5_bit fig_14_block_504 (
		.selector(cache_addr_hi),
		.one_hot_output(tag_latch_en)
	);
	
	//Figure 14 Block 506
	fig_14_block_506 fig_14_block_506 (
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
	mux_5_bit fig_14_block_512 (
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
