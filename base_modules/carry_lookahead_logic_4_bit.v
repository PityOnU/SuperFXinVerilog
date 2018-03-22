`timescale 1ns / 1ps

/*

Block to perform lookahead carry bit generation for a 4-bit adder.

*/

module carry_lookahead_logic_4_bit(
	input c_in,
	input [3:0] p,
	input [3:0] g,
	output reg [3:0] c_out );

	// Calculate all of our carry bits
	always @( * )
	begin
		c_out[0] = g[0] | ( p[0] & c_in );
		c_out[1] = g[1] | ( p[1] & g[0] ) | ( p[1] & p[0] & c_in );
		c_out[2] = g[2] | ( p[2] & g[1] ) | ( p[2] & p[1] & g[0] ) | ( p[2] & p[1] & p[0] & c_in );
		c_out[3] = g[3] | ( p[3] & g[2] ) | ( p[3] & p[2] & g[1] ) | ( p[3] & p[2] & p[1] & g[0] ) | ( p[3] & p[2] & p[1] & p[0] & c_in);		
	end

endmodule
