`timescale 1ns / 1ps

/*

*/

module fig_14_block_502_subtractor(
	input [12:0] x,
	input [12:0] y,
	output [12:0] z	
    );
//Propogate, generate, and carry signals used internally
	wire [12:0] p;
	wire [12:0] g;
	wire [11:0] c_out;

	//Internal value of y - needed so we can just invert to perform subtraction
	reg [12:0] y_intern;
	
	//Logical operations required to change between add and subtract
	//Black magic related to two's complement
	always @( * )
	begin
		y_intern = ~y;
	end
	
	//Create the 16 1-bit adders we need
	full_adder full_adder_bit_00 (
		.x(x[0]),
		.y(y_intern[0]),
		.c(1'b1),
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
	
	//Create the 4, 4-bit lookahead carry bit generator
	carry_lookahead_logic_4_bit carry_generator_nibble_0 (
		.c_in(1'b1),
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

endmodule
