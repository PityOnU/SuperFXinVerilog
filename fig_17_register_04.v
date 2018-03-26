`timescale 1ns / 1ps

/*

*/

module fig_17_register_04(
	input clk,
	input enable,
	input enable_low,
	input enable_high,
	input disable_low,
	input disable_high,
	input [15:0] incoming_data,
	output reg [15:0] stored_data );

	reg write_low;
	reg write_high;

	always @( * )
	begin
		write_low = enable_low & ~disable_low;
		write_high = enable_high & ~disable_high;
	end

	always @( posedge clk )
	begin
		if ( enable | write_low | write_high )
		begin
			stored_data <= incoming_data;
		end
	end

endmodule
