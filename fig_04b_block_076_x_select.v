`timescale 1ns / 1ps

/*

*/

module fig_04b_block_076_x_select(
	input clk,
	input [3:0] xsel,
	input [15:0] r00,
	input [15:0] r01,
	input [15:0] r07,
	input [15:0] r08,
	input [15:0] r15,
	input fromset,
	input [15:0] y,
	output [15:0] xbus );
	
	reg [15:0] from;
	wire [15:0] selected_first_set;
	
	//Figure 17 block 618
	always @( negedge clk )
	begin
		if (fromset)
		begin
			from <= y;
		end
	end
	
	//Figure 17 block 620
	mux_2_bit_16_wide fig_17_block_620 (
		.selector(xsel[3:2]),
		.data_input({ r15, r07, r08, r01 }),
		.selected_output(selected_first_set) 
	);
	
	//Figure 17 block 622
	mux_2_bit_16_wide fig_17_block_622 (
		.selector(xsel[1:0]),
		.data_input({ r00, selected_first_set, y, from }),
		.selected_output(xbus) 
	);

endmodule
