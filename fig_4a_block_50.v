`timescale 1ns / 1ps

/*

This is the Verilog code representing the ALU, which is identified in Figure 4A 
as block 50. The internal structure and behavior of this block is modeled after 
the contents of Figure 6.

Different from Figure 6, the CPU flag circuit (block 166) has be relocated to 
the register control block (Figure 4B block 78). This seemed like a more 
logical location for that functionality. However, the Verilog module retains 
its fig_6_block_166 name.

In the text, the I/O and behavior for this block is described in 33:43-68 and 
34:36-54. Functions and names of other pins/signals is inferred from Fig. 6.

*/

module fig_4a_block_50(
	//Signals from the main buses
	input [15:0] x,
	input [15:0] y,
	input [7:0] instr,
	
	//Control signals from the instruction decoder
	//Selector signal for block 150
	input y_src_sel,
	//Selector signal for block 164
	input [2:0] z_src_sel,
	//Control signal for ALU to perform addition or subtraction
	input add_sub_sel,
	
	//Result output to the main bus
	output reg [15:0] z,
	output cy,
	output ov );
	
	reg [15:0] selected_y;
	reg [15:0] and_fn;
	reg [15:0] or_fn;
	reg [15:0] xor_fn;
	reg [15:0] shift_fn;
	reg [15:0] swap_fn;
	wire [15:0] alu_result;

	//Block 154
	always @( * )
	begin
		and_fn = x & y;
	end
	
	//Block 156
	always @( * )
	begin
		or_fn = x | y;
	end
	
	//Block 158
	always @( * )
	begin
		xor_fn = x ^ y;
	end
	
	//Block 160
	always @( * )
	begin
		shift_fn = { cy, x[15:1] };
	end
	
	//Block 162
	always @( * )
	begin
		swap_fn = { x[7:0], x[15:8] };
	end
	
	//Logic for block 150
	always @( * )
	begin
		case ( y_src_sel )
			1'b0:
			begin
				selected_y = y;
			end
			1'b1:
			begin
				selected_y = { 8'b00000000, instr };
			end
		endcase
	end
	
	//Logic for block 164
	always @( * )
	begin
		case ( z_src_sel )
			3'b000:
			begin
				z = alu_result;
			end
			3'b001:
			begin
				z = and_fn;
			end
			3'b010:
			begin
				z = or_fn;
			end
			3'b011:
			begin
				z = xor_fn;
			end
			3'b100:
			begin
				z = shift_fn;
			end
			3'b101, 3'b110, 3'b111:
			begin
				z = swap_fn;
			end
		endcase
	end
	
	//Module representing block 152
	fig_6_block_152 adder_subtractor (
		.x(x),
		.y(selected_y),
		.add_sub_sel(add_sub_sel),
		.z(alu_result),
		.cy(cy),
		.ov(ov)
	);

endmodule
