`timescale 1ns / 1ps

/*

This is a quick and dirty implementation of the actual 512B SRAM for storing 
instructions in the instruction cache. Specifically, it is Figure 14 block 94. 
I has been left as generic as possible in hopes that whatever synthesizer/FPGA 
combination it is used with will make intelligent optimizations for that 
specific platform.

Write and reads are syncronized to the falling edge of the clock. It should 
take two cycles for a new instruction to appear on the output of the cache - 
one cycle to write the new information in, one cycle to read it out.

*/

module fig_14_block_094(
	input clk,
	input [8:0] address,
	input [7:0] write_data,
	input write_enable,
	output reg [7:0] read_data );

	reg [7:0] cache_entry [511:0];
	
	always @( negedge clk )
	begin
		if ( write_enable )
		begin
			cache_entry[address] <= write_data;
		end
		read_data <= cache_entry[address];
	end

endmodule
