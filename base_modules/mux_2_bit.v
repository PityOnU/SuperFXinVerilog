`timescale 1ns / 1ps

/*

*/

module mux_2_bit(
	input [1:0] selector,
	input [3:0] data_input,
	output reg selected_output );

	always @( * )
	begin
		case ( selector )
			2'b00:
			begin
				selected_output = data_input[0];
			end
			2'b01:
			begin
				selected_output = data_input[1];
			end
			2'b10:
			begin
				selected_output = data_input[2];
			end
			2'b11:
			begin
				selected_output = data_input[3];
			end
		endcase
	end
endmodule
