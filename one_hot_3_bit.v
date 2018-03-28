`timescale 1ns / 1ps

/*

*/

module one_hot_3_bit(
	input [2:0] selector,
	output reg [7:0] one_hot_output);

	always @( * )
	begin
		case ( selector )
			3'b000:
			begin
				one_hot_output = 8'b00000001;
			end
			3'b001:
			begin
				one_hot_output = 8'b00000010;
			end
			3'b010:
			begin
				one_hot_output = 8'b00000100;
			end
			3'b011:
			begin
				one_hot_output = 8'b00001000;
			end
			3'b100:
			begin
				one_hot_output = 8'b00010000;
			end
			3'b101:
			begin
				one_hot_output = 8'b00100000;
			end
			3'b110:
			begin
				one_hot_output = 8'b01000000;
			end
			3'b111:
			begin
				one_hot_output = 8'b10000000;
			end
		endcase
	end
endmodule
