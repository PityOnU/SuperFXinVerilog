`timescale 1ns / 1ps

/*

Code for an adder block which also generates the propogate and generate signals
required by the lookahead logic.

*/

module full_adder(
	input x,
	input y,
	input c,
	output reg p,
	output reg g,
	output reg z
    );

	always @( * )
	begin
		g = x & y;
		p = x ^ y;
		z = x ^ y ^ c;
	end

endmodule
