`timescale 1ns / 1ps

/*

This is the Verilog implementation of the address comparator (subtractor) in 
the instruction cache, which is block 502 in Figure 14.

Unlike what is shown in the figure, the output of this block is the top *five* 
bits of the cache address, not the top *six*. The latter would result in 64x 
blocks of 8 bytes, whereas the cache is continually referred to as having 32x 
16 byte blocks in the documentation.

*/

module fig_14_block_502(
	input [11:0] pc,
	input [11:0] cache_base_addr,
	output reg orange,
	output reg [4:0] cache_addr );
	
	wire [11:0] pc_distance;

	//The actual subtractor
	fig_14_block_502_subtractor subtractor (
		.x(pc),
		.y(cache_base_addr),
		.z(pc_distance)
	);
	
	//Counting to 512 in binary only takes 9 bits
	//The bottom 4 are passed directly through to the cache
	//So we need 5 more to uniquely identify a position in RAM
	//Therefore, if our current relative position needs any
	//bits above the 5th bit, we are out of range
	always @( * )
	begin
		orange = |(pc_distance[11:5]);
	end
	
	//Bottom 5 bits of the distance between PC and cache base
	always @( * )
	begin
		cache_addr = pc_distance[4:0];
	end

endmodule
