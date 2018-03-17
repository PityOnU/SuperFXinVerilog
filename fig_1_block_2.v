`timescale 1ns / 1ps

/*

This is the actual main block of the SuperFX chip. It is largely a structural 
block, functioning mostly to connect the functional sub-blocks together.

As you may have noticed from this module's name, from here on in, blocks will 
be named based on their location and designation within the MARIO chip patent 
(#5388841), which can be found online. This will make it easy for anyone to 
find the specific block they are interested in working on, and should hopefully 
result in a structure similar to that used in the original chip.

I will also attempt to include reference to the column and line numbers within 
the patent which discuss the current block. However, this may prove laborious 
over time, so they may not always be included.

In the text, the I/O for this block is described in 7:42-68; 8:1-68. Functions
and names of other pins/signals is inferred from Fig. 1.

*/

module fig_1_block_2(
	output [23:0] rom_a, //P26-2
	input [7:0] rom_d, //P35-28
	input [23:0] ha, //P62-37
	input [7:0] hd_in, //P72-65
	output [7:0] hd_out, //Split into two for easier logic/synthesis
	output [15:0] ram_a, //P89-74 <- This is a typo in the patent. They say the address goes to 91, which would be 18 bits.
//	output ras, //P90
//	output cas, //P91

	input [7:0] ram_d_in, //P100-93
	output [7:0] ram_d_out, //Split into two for easier logic/synthesis
	input r, //P104
	input w, //P105
	input romsel, //P106
//	output we, //P107
	input exclk, //P110
	input clk_21mhz, //P112
	input systemck, //P117
	input reset, //P118
	input rfsh, //P119
	output irq //P120

//	input ramcs //Unknown pin designation
    );

	wire [7:0] instr;
	wire [15:0] x;
	wire [15:0] y;
	wire [15:0] z;
	wire ov;
	wire cy;
	
	fig_4a_block_50 alu (
		.x(x),
		.y(y),
		.instr(instr),
		.zero(zero),
		.ov(ov),
		.sgn(sgn),
		.cy(cy),
		.z(z)
	);
	

endmodule
