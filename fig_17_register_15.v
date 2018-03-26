`timescale 1ns / 1ps

/*

*/

module fig_17_register_15(
	input clk,
	input cchld,
	input pcen,
	input loopen,
	input reset,
	input enable,
	//This is assumed as being the value stored in R13, although this may be incorrect
	//Seems to make logical sense, though
	input [15:0] rn,
	input [15:0] incoming_data,
	output reg [15:0] pc );

	always @( posedge clk )
	begin
		if (reset)
		begin
			pc <= {16{1'b0}};
		end
		else if (~cchld)
		begin
			if (enable)
			begin
				pc <= incoming_data;
			end
			else if (loopen)
			begin
				pc <= rn;
			end
			else if (pcen)
			begin
				pc <= pc + 1;
			end
			else
			begin
				pc <= pc;
			end
		end
		else
		begin
			pc <= pc;
		end
	end

endmodule
