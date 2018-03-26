`timescale 1ns / 1ps

/*

This is the Verilog implementation of the multiplexer used to select the dirty 
bit of interest from the tag latch. It is represented as block 512 in Figure 14.

This block has been generated using a script and has been kept purposefully 
simple and generic.

As mentioned in other blocks, this is 32->1 instead of the 64->1 depicted in 
the figure. This results in 32x 16 byte blocks in the instruction cache as is 
repeatedly described in the text of the patent.

*/

module mux_5_bit(
	input [4:0] selector,
	input [31:0] data_input,
	output reg selected_output );

	always @( * )
	begin
		case ( selector )
			5'b00000:
			begin
				selected_output = data_input[0];
			end
			5'b00001:
			begin
				selected_output = data_input[1];
			end
			5'b00010:
			begin
				selected_output = data_input[2];
			end
			5'b00011:
			begin
				selected_output = data_input[3];
			end
			5'b00100:
			begin
				selected_output = data_input[4];
			end
			5'b00101:
			begin
				selected_output = data_input[5];
			end
			5'b00110:
			begin
				selected_output = data_input[6];
			end
			5'b00111:
			begin
				selected_output = data_input[7];
			end
			5'b01000:
			begin
				selected_output = data_input[8];
			end
			5'b01001:
			begin
				selected_output = data_input[9];
			end
			5'b01010:
			begin
				selected_output = data_input[10];
			end
			5'b01011:
			begin
				selected_output = data_input[11];
			end
			5'b01100:
			begin
				selected_output = data_input[12];
			end
			5'b01101:
			begin
				selected_output = data_input[13];
			end
			5'b01110:
			begin
				selected_output = data_input[14];
			end
			5'b01111:
			begin
				selected_output = data_input[15];
			end
			5'b10000:
			begin
				selected_output = data_input[16];
			end
			5'b10001:
			begin
				selected_output = data_input[17];
			end
			5'b10010:
			begin
				selected_output = data_input[18];
			end
			5'b10011:
			begin
				selected_output = data_input[19];
			end
			5'b10100:
			begin
				selected_output = data_input[20];
			end
			5'b10101:
			begin
				selected_output = data_input[21];
			end
			5'b10110:
			begin
				selected_output = data_input[22];
			end
			5'b10111:
			begin
				selected_output = data_input[23];
			end
			5'b11000:
			begin
				selected_output = data_input[24];
			end
			5'b11001:
			begin
				selected_output = data_input[25];
			end
			5'b11010:
			begin
				selected_output = data_input[26];
			end
			5'b11011:
			begin
				selected_output = data_input[27];
			end
			5'b11100:
			begin
				selected_output = data_input[28];
			end
			5'b11101:
			begin
				selected_output = data_input[29];
			end
			5'b11110:
			begin
				selected_output = data_input[30];
			end
			5'b11111:
			begin
				selected_output = data_input[31];
			end
		endcase
	end
endmodule
