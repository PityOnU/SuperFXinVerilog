`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:32 03/21/2018 
// Design Name: 
// Module Name:    fig_14_block_94 
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
module fig_14_block_94(
	input clk,
	input [8:0] address,
	input [7:0] inst,
	input write_enable,
	output [7:0] data );

	reg [7:0] cache_entry [511:0];
	reg [8:0] address_passthrough;
	
	assign data = cache_entry[address_passthrough];
	
	always @(posedge clk)
	begin
		if (write_enable)
		begin
			cache_entry[address] <= inst;
		end
		address_passthrough <= address;
	end

endmodule
