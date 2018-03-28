`timescale 1ns / 1ps

/*

*/

module mux_3_bit(
	input [2:0] selector,
	input [7:0] data_input,
	output reg selected_output );

	always @( * )
	begin
		case ( selector )
			3'b000:
			begin
				selected_output = data_input[0];
			end
			3'b001:
			begin
				selected_output = data_input[1];
			end
			3'b010:
			begin
				selected_output = data_input[2];
			end
			3'b011:
			begin
				selected_output = data_input[3];
			end
			3'b100:
			begin
				selected_output = data_input[4];
			end
			3'b101:
			begin
				selected_output = data_input[5];
			end
			3'b110:
			begin
				selected_output = data_input[6];
			end
			3'b111:
			begin
				selected_output = data_input[7];
			end
		endcase
	end
endmodule
