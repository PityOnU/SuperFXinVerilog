`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:55 03/21/2018 
// Design Name: 
// Module Name:    mux_6_bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module mux_6_bit(
	input [5:0] selector,
	input [63:0] data_input,
	output reg selected_output);

	always @( * )
	begin
		case ( selector )
			6'b000000:
			begin
				selected_output = data_input[0];
			end
			6'b000001:
			begin
				selected_output = data_input[1];
			end
			6'b000010:
			begin
				selected_output = data_input[2];
			end
			6'b000011:
			begin
				selected_output = data_input[3];
			end
			6'b000100:
			begin
				selected_output = data_input[4];
			end
			6'b000101:
			begin
				selected_output = data_input[5];
			end
			6'b000110:
			begin
				selected_output = data_input[6];
			end
			6'b000111:
			begin
				selected_output = data_input[7];
			end
			6'b001000:
			begin
				selected_output = data_input[8];
			end
			6'b001001:
			begin
				selected_output = data_input[9];
			end
			6'b001010:
			begin
				selected_output = data_input[10];
			end
			6'b001011:
			begin
				selected_output = data_input[11];
			end
			6'b001100:
			begin
				selected_output = data_input[12];
			end
			6'b001101:
			begin
				selected_output = data_input[13];
			end
			6'b001110:
			begin
				selected_output = data_input[14];
			end
			6'b001111:
			begin
				selected_output = data_input[15];
			end
			6'b010000:
			begin
				selected_output = data_input[16];
			end
			6'b010001:
			begin
				selected_output = data_input[17];
			end
			6'b010010:
			begin
				selected_output = data_input[18];
			end
			6'b010011:
			begin
				selected_output = data_input[19];
			end
			6'b010100:
			begin
				selected_output = data_input[20];
			end
			6'b010101:
			begin
				selected_output = data_input[21];
			end
			6'b010110:
			begin
				selected_output = data_input[22];
			end
			6'b010111:
			begin
				selected_output = data_input[23];
			end
			6'b011000:
			begin
				selected_output = data_input[24];
			end
			6'b011001:
			begin
				selected_output = data_input[25];
			end
			6'b011010:
			begin
				selected_output = data_input[26];
			end
			6'b011011:
			begin
				selected_output = data_input[27];
			end
			6'b011100:
			begin
				selected_output = data_input[28];
			end
			6'b011101:
			begin
				selected_output = data_input[29];
			end
			6'b011110:
			begin
				selected_output = data_input[30];
			end
			6'b011111:
			begin
				selected_output = data_input[31];
			end
			6'b100000:
			begin
				selected_output = data_input[32];
			end
			6'b100001:
			begin
				selected_output = data_input[33];
			end
			6'b100010:
			begin
				selected_output = data_input[34];
			end
			6'b100011:
			begin
				selected_output = data_input[35];
			end
			6'b100100:
			begin
				selected_output = data_input[36];
			end
			6'b100101:
			begin
				selected_output = data_input[37];
			end
			6'b100110:
			begin
				selected_output = data_input[38];
			end
			6'b100111:
			begin
				selected_output = data_input[39];
			end
			6'b101000:
			begin
				selected_output = data_input[40];
			end
			6'b101001:
			begin
				selected_output = data_input[41];
			end
			6'b101010:
			begin
				selected_output = data_input[42];
			end
			6'b101011:
			begin
				selected_output = data_input[43];
			end
			6'b101100:
			begin
				selected_output = data_input[44];
			end
			6'b101101:
			begin
				selected_output = data_input[45];
			end
			6'b101110:
			begin
				selected_output = data_input[46];
			end
			6'b101111:
			begin
				selected_output = data_input[47];
			end
			6'b110000:
			begin
				selected_output = data_input[48];
			end
			6'b110001:
			begin
				selected_output = data_input[49];
			end
			6'b110010:
			begin
				selected_output = data_input[50];
			end
			6'b110011:
			begin
				selected_output = data_input[51];
			end
			6'b110100:
			begin
				selected_output = data_input[52];
			end
			6'b110101:
			begin
				selected_output = data_input[53];
			end
			6'b110110:
			begin
				selected_output = data_input[54];
			end
			6'b110111:
			begin
				selected_output = data_input[55];
			end
			6'b111000:
			begin
				selected_output = data_input[56];
			end
			6'b111001:
			begin
				selected_output = data_input[57];
			end
			6'b111010:
			begin
				selected_output = data_input[58];
			end
			6'b111011:
			begin
				selected_output = data_input[59];
			end
			6'b111100:
			begin
				selected_output = data_input[60];
			end
			6'b111101:
			begin
				selected_output = data_input[61];
			end
			6'b111110:
			begin
				selected_output = data_input[62];
			end
			6'b111111:
			begin
				selected_output = data_input[63];
			end
		endcase
	end
endmodule
