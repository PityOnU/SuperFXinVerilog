`timescale 1ns / 1ps

/*

This is the Verilog implementation of the tag latches (or dirty bits) for the 
SuperFX instruction cache. This is represented in FIgure 14 as block 506.

Instead of using latches for storing dirty bits, flip-flops are used which are 
triggered from the falling edge of the main clock signal. The set and reset 
signals are both syncronous, with the reset signal being given higher priority. 
This change was made to more closely comply with modern VLSI design standards, 
and should result in largely unchanged functionality from the system's point of 
view.

Size-wise, 32 dirty bits are implemented instead of the 64 shown in the figure. 
This is done to allow for 32x 16 byte blocks in the cache as referenced by the 
text.

*/

module fig_14_block_506 (
	input clk,
	input clr,
	input set,
	input [31:0] selector,
	output reg [31:0] dirty_bits );

	reg [31:0] selected_set;
	
	always @( * )
	begin
		selected_set = selector & {32{set}};
	end
	
	always @( negedge clk )
	begin
		if ( clr )
		begin
			dirty_bits <= {32{1'b0}};
		end
		else
		begin
			dirty_bits <= dirty_bits | selected_set;
		end
	end

endmodule
