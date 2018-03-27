`timescale 1ns / 1ps

/*

*/

module fig_04b_block_076_registers(
	input clk,
	input [15:0] z,
	input enable,
	input enable_l,
	input disable_l,
	input enable_h,
	input disable_h,
	input cchld,
	input pcen,
	input loopen,
	input reset,
	input [3:0] zsel,
	//input rn15,
	output reg [15:0] r00,
	output reg [15:0] r01,
	output reg [15:0] r02,
	output reg [15:0] r03,
	output [15:0] r04,
	output reg [15:0] r05,
	output reg [15:0] r06,
	output reg [15:0] r07,
	output reg [15:0] r08,
	output reg [15:0] r09,
	output reg [15:0] r10,
	output reg [15:0] r11,
	output reg [15:0] r12,
	output reg [15:0] r13,
	output reg [15:0] r14,
	output [15:0] r15 );
	
	wire [15:0] zsel_one_hot;
	reg [15:0] enable_one_hot;
	
	one_hot_4_bit enable_generator (
		.selector(zsel),
		.one_hot_output(zsel_one_hot)
	);
	
	always @( * )
	begin
		enable_one_hot = zsel_one_hot & {16{enable}};
	end

	//Register 0
	always @( posedge clk )
	begin
		if ( enable_one_hot[0] )
		begin
			r00 <= z;
		end
	end
	
	//Register 1
	always @( posedge clk )
	begin
		if ( enable_one_hot[1] )
		begin
			r01 <= z;
		end
	end
	
	//Register 2
	always @( posedge clk )
	begin
		if ( enable_one_hot[2] )
		begin
			r02 <= z;
		end
	end
	
	//Register 3
	always @( posedge clk )
	begin
		if ( enable_one_hot[3] )
		begin
			r03 <= z;
		end
	end
	
	//Register 4
	fig_17_register_04 fig_17_register_04 (
		.clk(clk),
		.enable(enable_one_hot[4]),
		.enable_low(enable_l),
		.enable_high(enable_h),
		.disable_low(disable_l),
		.disable_high(disable_h),
		.incoming_data(z),
		.stored_data(r04)
	);
	
	//Register 5
	always @( posedge clk )
	begin
		if ( enable_one_hot[5] )
		begin
			r05 <= z;
		end
	end
	
	//Register 6
	always @( posedge clk )
	begin
		if ( enable_one_hot[6] )
		begin
			r06 <= z;
		end
	end
	
	//Register 7
	always @( posedge clk )
	begin
		if ( enable_one_hot[7] )
		begin
			r07 <= z;
		end
	end
	
	//Register 8
	always @( posedge clk )
	begin
		if ( enable_one_hot[8] )
		begin
			r08 <= z;
		end
	end
	
	//Register 9
	always @( posedge clk )
	begin
		if ( enable_one_hot[9] )
		begin
			r09 <= z;
		end
	end
	
	//Register 10
	always @( posedge clk )
	begin
		if ( enable_one_hot[10] )
		begin
			r10 <= z;
		end
	end
	
	//Register 11
	always @( posedge clk )
	begin
		if ( enable_one_hot[11] )
		begin
			r11 <= z;
		end
	end
	
	//Register 12
	always @( posedge clk )
	begin
		if ( enable_one_hot[12] )
		begin
			r12 <= z;
		end
	end
	
	//Register 13
	always @( posedge clk )
	begin
		if ( enable_one_hot[13] )
		begin
			r13 <= z;
		end
	end
	
	//Register 14
	always @( posedge clk )
	begin
		if ( enable_one_hot[14] )
		begin
			r14 <= z;
		end
	end

	//Register 15
	fig_17_register_15 fig_17_register_15 (
		.clk(clk),
		.cchld(cchld),
		.pcen(pcen),
		.loopen(loopen),
		.reset(reset),
		.enable(enable_one_hot[15]),
		.rn(r13),
		.incoming_data(z),
		.pc(r15)
	);

endmodule
