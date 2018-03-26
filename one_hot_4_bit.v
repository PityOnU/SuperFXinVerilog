`timescale 1ns / 1ps

/*

*/

module one_hot_4_bit(
	input [3:0] selector,
	output reg [15:0] one_hot_output );

	always @( * )
	begin
		case ( selector )
			4'b0000:
			begin
				one_hot_output = 16'b0000000000000001;
			end
			4'b0001:
			begin
				one_hot_output = 16'b0000000000000010;
			end
			4'b0010:
			begin
				one_hot_output = 16'b0000000000000100;
			end
			4'b0011:
			begin
				one_hot_output = 16'b0000000000001000;
			end
			4'b0100:
			begin
				one_hot_output = 16'b0000000000010000;
			end
			4'b0101:
			begin
				one_hot_output = 16'b0000000000100000;
			end
			4'b0110:
			begin
				one_hot_output = 16'b0000000001000000;
			end
			4'b0111:
			begin
				one_hot_output = 16'b0000000010000000;
			end
			4'b1000:
			begin
				one_hot_output = 16'b0000000100000000;
			end
			4'b1001:
			begin
				one_hot_output = 16'b0000001000000000;
			end
			4'b1010:
			begin
				one_hot_output = 16'b0000010000000000;
			end
			4'b1011:
			begin
				one_hot_output = 16'b0000100000000000;
			end
			4'b1100:
			begin
				one_hot_output = 16'b0001000000000000;
			end
			4'b1101:
			begin
				one_hot_output = 16'b0010000000000000;
			end
			4'b1110:
			begin
				one_hot_output = 16'b0100000000000000;
			end
			4'b1111:
			begin
				one_hot_output = 16'b1000000000000000;
			end
		endcase
	end
	
endmodule
