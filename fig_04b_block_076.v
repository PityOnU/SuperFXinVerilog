`timescale 1ns / 1ps

/*



*/

module fig_04b_block_076 (
	input clk,
	input [15:0] z,
	input enable_l,
	input disable_l,
	input enable_h,
	input disable_h,
	input cchld,
	input pcen,
	input loopen,
	input reset,
	input rn15,
	input [3:0] xsel,
	input [3:0] ysel,
	input [3:0] zsel,
	output [15:0] x,
	output reg [15:0] y );
	
	
	
	wire [15:0] selected_first_set;
	wire [15:0] selected_second_set;
	wire [15:0] selected_third_set;
	wire [15:0] selected_fourth_set;
	wire [15:0] selected_y;
	
	reg [15:0] selected_y_buffer;
	
	
	
	
	
	//Figure 17 block 608
	mux_2_bit_16_wide fig_17_block_608 (
		.selector(ysel[1:0]),
		.data_input({ r00, r01, r02, r03 }),
		.selected_output(selected_first_set) 
	);
	
	//Figure 17 block 610
	mux_2_bit_16_wide fig_17_block_610 (
		.selector(ysel[1:0]),
		.data_input({ r04, r05, r06, r07 }),
		.selected_output(selected_second_set) 
	);
	
	//Figure 17 block 612
	mux_2_bit_16_wide fig_17_block_612 (
		.selector(ysel[1:0]),
		.data_input({ r08, r09, r10, r11 }),
		.selected_output(selected_third_set) 
	);
	
	//Figure 17 block 614
	mux_2_bit_16_wide fig_17_block_614 (
		.selector(ysel[1:0]),
		.data_input({ r12, r13, r14, r15 }),
		.selected_output(selected_fourth_set) 
	);
	
	//Figure 17 block 616
	mux_2_bit_16_wide fig_17_block_616 (
		.selector(ysel[3:2]),
		.data_input({ selected_first_set, selected_second_set, selected_third_set, selected_fourth_set }),
		.selected_output(selected_y) 
	);
	
	//Figure 17 block 617
	always @( negedge clk )
	begin
		selected_y_buffer <= selected_y;
	end
	
	//Drive the output
	always @( * )
	begin
		y = selected_y_buffer;
	end
	
	//Figure 17 block 618
	always @( negedge clk )
	begin
		if ( ] )
		begin
			r14 <= z;
		end
	end
	
endmodule
