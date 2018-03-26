`timescale 1ns / 1ps

/*

This is the Verilog implementation of the one-hot encoder ("demux") shown as 
Figure 14 block 504. The contents of this block have been generated using a 
script in order to be as generic as possible and to minimize potential of human 
error.

Unlike in the original figure, this is actually a 5->32 encoder, not a 6->64 
encoder. 64 tags implies a cache block size of only 8 bytes, whereas the 
documentation repeatedly states that the cache has a block size of 16 bytes, 
requiring only 32 tag bits.

*/

module one_hot_5_bit(
	input [4:0] selector,
	output reg [31:0] one_hot_output );

	always @( * )
	begin
		case ( selector )
			5'b00000:
			begin
				one_hot_output = 32'b00000000000000000000000000000001;
			end
			5'b00001:
			begin
				one_hot_output = 32'b00000000000000000000000000000010;
			end
			5'b00010:
			begin
				one_hot_output = 32'b00000000000000000000000000000100;
			end
			5'b00011:
			begin
				one_hot_output = 32'b00000000000000000000000000001000;
			end
			5'b00100:
			begin
				one_hot_output = 32'b00000000000000000000000000010000;
			end
			5'b00101:
			begin
				one_hot_output = 32'b00000000000000000000000000100000;
			end
			5'b00110:
			begin
				one_hot_output = 32'b00000000000000000000000001000000;
			end
			5'b00111:
			begin
				one_hot_output = 32'b00000000000000000000000010000000;
			end
			5'b01000:
			begin
				one_hot_output = 32'b00000000000000000000000100000000;
			end
			5'b01001:
			begin
				one_hot_output = 32'b00000000000000000000001000000000;
			end
			5'b01010:
			begin
				one_hot_output = 32'b00000000000000000000010000000000;
			end
			5'b01011:
			begin
				one_hot_output = 32'b00000000000000000000100000000000;
			end
			5'b01100:
			begin
				one_hot_output = 32'b00000000000000000001000000000000;
			end
			5'b01101:
			begin
				one_hot_output = 32'b00000000000000000010000000000000;
			end
			5'b01110:
			begin
				one_hot_output = 32'b00000000000000000100000000000000;
			end
			5'b01111:
			begin
				one_hot_output = 32'b00000000000000001000000000000000;
			end
			5'b10000:
			begin
				one_hot_output = 32'b00000000000000010000000000000000;
			end
			5'b10001:
			begin
				one_hot_output = 32'b00000000000000100000000000000000;
			end
			5'b10010:
			begin
				one_hot_output = 32'b00000000000001000000000000000000;
			end
			5'b10011:
			begin
				one_hot_output = 32'b00000000000010000000000000000000;
			end
			5'b10100:
			begin
				one_hot_output = 32'b00000000000100000000000000000000;
			end
			5'b10101:
			begin
				one_hot_output = 32'b00000000001000000000000000000000;
			end
			5'b10110:
			begin
				one_hot_output = 32'b00000000010000000000000000000000;
			end
			5'b10111:
			begin
				one_hot_output = 32'b00000000100000000000000000000000;
			end
			5'b11000:
			begin
				one_hot_output = 32'b00000001000000000000000000000000;
			end
			5'b11001:
			begin
				one_hot_output = 32'b00000010000000000000000000000000;
			end
			5'b11010:
			begin
				one_hot_output = 32'b00000100000000000000000000000000;
			end
			5'b11011:
			begin
				one_hot_output = 32'b00001000000000000000000000000000;
			end
			5'b11100:
			begin
				one_hot_output = 32'b00010000000000000000000000000000;
			end
			5'b11101:
			begin
				one_hot_output = 32'b00100000000000000000000000000000;
			end
			5'b11110:
			begin
				one_hot_output = 32'b01000000000000000000000000000000;
			end
			5'b11111:
			begin
				one_hot_output = 32'b10000000000000000000000000000000;
			end
		endcase
	end
endmodule