`timescale 1ns / 1ps

/*



*/

module fig_04b_block_078 (
	input clk,
	input [3:0] instr,
	input resflags,
	input to,
	input from,
	input [3:0] ha,
	input [1:0] ssel,
	input [1:0] dsel,
	output [3:0] ysel,
	output [3:0] zsel );
	
	reg [3:0] dreg;
	reg [3:0] sreg;
	
	//Figure 16 block 600
	always @( negedge clk )
	begin
		if ( resflags )
		begin
			dreg <= {4{1'b0}};
		end
		else
		begin
			if ( to )
			begin
				dreg <= instr;
			end
		end
	end
	
	//Figure 16 block 602
	always @( negedge clk )
	begin
		if ( resflags )
		begin
			sreg <= {4{1'b0}};
		end
		else
		begin
			if ( from )
			begin
				sreg <= instr;
			end
		end
	end

	//Figure 16 block 604
	mux_2_bit_4_wide fig_16_block_604 (
		.selector(dsel),
		.data_input({ dreg, {4{1'b0}}, instr, ha }),
		.selected_output(zsel)
	);
	
	//Figure 16 block 606
	mux_2_bit_4_wide fig_16_block_606 (
		.selector(ssel),
		.data_input({ sreg, {4{1'b0}}, instr, ha }),
		.selected_output(ysel)
	);

endmodule
