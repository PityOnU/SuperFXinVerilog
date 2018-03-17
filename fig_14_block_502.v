`timescale 1ns / 1ps

/*

*/

module fig_14_block_502(
	input [12:0] pc,
	input [12:0] cache_base_addr,
	output reg orange,
	output reg [5:0] cache_addr );
	
	wire [12:0] pc_distance;

	//The actual subtractor
	fig_14_block_502_subtractor subtractor (
		.x(pc),
		.y(cache_base_addr),
		.z(pc_distance)
	);
	
	//Counting to 512 in binary only takes 9 bits
	//The bottom 3 are passed directly through to the cache
	//So we need 6 more to uniquely identify a position in RAM
	//Therefore, if our current relative position needs any
	//bits above the 6th bit, we are out of range
	always @( * )
	begin
		orange = |(pc_distance[12:6]);
	end
	
	//Bottom 6 bits of the distance between PC and cache base
	always @( * )
	begin
		cache_addr = pc_distance[5:0];
	end

endmodule
