`timescale 1ns / 1ps

/*

This is the Verilog code representing the adder/subtractor unit wihtin the ALU, 
which is identified as block 152 in Figure 6.

This block is constructed using 4, 4-bit carry lookahead adders in an attempt 
to reduce timing overhead while still maintaining reasonable gate count.

In addition to what is shown in Figure 6, this block recieves a control signal 
from the instruction decoder in order to identify whether addition or 
subtraction is to be performed.

The non-result output of this block (shown as the inverted output in the top 
right of block 152 in Figure 6) is assumed as being the carry and overflow 
flags generated during the addition/subtraction operation. These are also 
assumed as being independently generated, and relate to unsigned and signed 
operations, respectively.

In the text, the functionality of this block is briefly described in 34:41-54. 
Assumptions made regarding flag generation are based on information in "Super 
Nintendo Entertainment System Development Manual Book II."

*/

module fig_6_block_152(
	input [15:0] x,
	input [15:0] y,
	input add_sub_sel,
	output [15:0] z,
	output reg cy,
	output reg ov );

	//Propogate, generate, and carry signals used internally
	wire [15:0] p;
	wire [15:0] g;
	wire [15:0] c_out;

	//Internal value of y - needed so we can just invert to perform subtraction
	reg [15:0] y_intern;
	
	//Logical operations required to change between add and subtract
	//Black magic related to two's complement
	always @( * )
	begin
		y_intern = y ^ {16{add_sub_sel}};
		cy = c_out[15] ^ add_sub_sel;
		ov = c_out[15] ^ c_out[14];
	end
	
	//Create the 16 1-bit adders we need
	full_adder full_adder_bit_00 (
		.x(x[0]),
		.y(y_intern[0]),
		.c(add_sub_sel),
		.p(p[0]),
		.g(g[0]),
		.z(z[0])
	);	
	full_adder full_adder_bit_01 (
		.x(x[1]),
		.y(y_intern[1]),
		.c(c_out[0]),
		.p(p[1]),
		.g(g[1]),
		.z(z[1])
	);	
	full_adder full_adder_bit_02 (
		.x(x[2]),
		.y(y_intern[2]),
		.c(c_out[1]),
		.p(p[2]),
		.g(g[2]),
		.z(z[2])
	);	
	full_adder full_adder_bit_03 (
		.x(x[3]),
		.y(y_intern[3]),
		.c(c_out[2]),
		.p(p[3]),
		.g(g[3]),
		.z(z[3])
	);
	full_adder full_adder_bit_04 (
		.x(x[4]),
		.y(y_intern[4]),
		.c(c_out[3]),
		.p(p[4]),
		.g(g[4]),
		.z(z[4])
	);	
	full_adder full_adder_bit_05 (
		.x(x[5]),
		.y(y_intern[5]),
		.c(c_out[4]),
		.p(p[5]),
		.g(g[5]),
		.z(z[5])
	);	
	full_adder full_adder_bit_06 (
		.x(x[6]),
		.y(y_intern[6]),
		.c(c_out[5]),
		.p(p[6]),
		.g(g[6]),
		.z(z[6])
	);	
	full_adder full_adder_bit_07 (
		.x(x[7]),
		.y(y_intern[7]),
		.c(c_out[6]),
		.p(p[7]),
		.g(g[7]),
		.z(z[7])
	);
	full_adder full_adder_bit_08 (
		.x(x[8]),
		.y(y_intern[8]),
		.c(c_out[7]),
		.p(p[8]),
		.g(g[8]),
		.z(z[8])
	);	
	full_adder full_adder_bit_09 (
		.x(x[9]),
		.y(y_intern[9]),
		.c(c_out[8]),
		.p(p[9]),
		.g(g[9]),
		.z(z[9])
	);	
	full_adder full_adder_bit_10 (
		.x(x[10]),
		.y(y_intern[10]),
		.c(c_out[9]),
		.p(p[10]),
		.g(g[10]),
		.z(z[10])
	);	
	full_adder full_adder_bit_11 (
		.x(x[11]),
		.y(y_intern[11]),
		.c(c_out[10]),
		.p(p[11]),
		.g(g[11]),
		.z(z[11])
	);
	full_adder full_adder_bit_12 (
		.x(x[12]),
		.y(y_intern[12]),
		.c(c_out[11]),
		.p(p[12]),
		.g(g[12]),
		.z(z[12])
	);	
	full_adder full_adder_bit_13 (
		.x(x[13]),
		.y(y_intern[13]),
		.c(c_out[12]),
		.p(p[13]),
		.g(g[13]),
		.z(z[13])
	);	
	full_adder full_adder_bit_14 (
		.x(x[14]),
		.y(y_intern[14]),
		.c(c_out[13]),
		.p(p[14]),
		.g(g[14]),
		.z(z[14])
	);	
	full_adder full_adder_bit_15 (
		.x(x[15]),
		.y(y_intern[15]),
		.c(c_out[14]),
		.p(p[15]),
		.g(g[15]),
		.z(z[15])
	);
	
	//Create the 4, 4-bit lookahead carry bit generator
	carry_lookahead_logic_4_bit carry_generator_nibble_0 (
		.c_in(add_sub_sel),
		.p(p[3:0]),
		.g(g[3:0]),
		.c_out(c_out[3:0])
	);
	carry_lookahead_logic_4_bit carry_generator_nibble_1 (
		.c_in(c_out[3]),
		.p(p[7:4]),
		.g(g[7:4]),
		.c_out(c_out[7:4])
	);
	carry_lookahead_logic_4_bit carry_generator_nibble_2 (
		.c_in(c_out[7]),
		.p(p[11:8]),
		.g(g[11:8]),
		.c_out(c_out[11:8])
	);
	carry_lookahead_logic_4_bit carry_generator_nibble_3 (
		.c_in(c_out[11]),
		.p(p[15:12]),
		.g(g[15:12]),
		.c_out(c_out[15:12])
	);


endmodule
