`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:34:16 03/20/2018 
// Design Name: 
// Module Name:    fig_14_block_506 
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
module fig_14_block_506(
	input clk,
	input clr,
	input set,
	input [63:0] selector,
	output [63:0] dirty_bits );

	reg [63:0] selected_set;
	
	always @( * )
	begin
		selected_set = selector & {64{set}};
	end

	protected_s_r_latch dirty_bit_00 (
		.set(selected_set[0]),
		.reset(clr),
		.q(dirty_bits[0])
	);
	
	protected_s_r_latch dirty_bit_01 (
		.set(selected_set[1]),
		.reset(clr),
		.q(dirty_bits[1])
	);
	
	protected_s_r_latch dirty_bit_02 (
		.set(selected_set[2]),
		.reset(clr),
		.q(dirty_bits[2])
	);
	
	protected_s_r_latch dirty_bit_03 (
		.set(selected_set[3]),
		.reset(clr),
		.q(dirty_bits[3])
	);
	
	protected_s_r_latch dirty_bit_04 (
		.set(selected_set[4]),
		.reset(clr),
		.q(dirty_bits[4])
	);
	
	protected_s_r_latch dirty_bit_05 (
		.set(selected_set[5]),
		.reset(clr),
		.q(dirty_bits[5])
	);
	
	protected_s_r_latch dirty_bit_06 (
		.set(selected_set[6]),
		.reset(clr),
		.q(dirty_bits[6])
	);
	
	protected_s_r_latch dirty_bit_07 (
		.set(selected_set[7]),
		.reset(clr),
		.q(dirty_bits[7])
	);
	
	protected_s_r_latch dirty_bit_08 (
		.set(selected_set[8]),
		.reset(clr),
		.q(dirty_bits[8])
	);
	
	protected_s_r_latch dirty_bit_09 (
		.set(selected_set[9]),
		.reset(clr),
		.q(dirty_bits[9])
	);
	
	protected_s_r_latch dirty_bit_10 (
		.set(selected_set[10]),
		.reset(clr),
		.q(dirty_bits[10])
	);
	
	protected_s_r_latch dirty_bit_11 (
		.set(selected_set[11]),
		.reset(clr),
		.q(dirty_bits[11])
	);
	
	protected_s_r_latch dirty_bit_12 (
		.set(selected_set[12]),
		.reset(clr),
		.q(dirty_bits[12])
	);
	
	protected_s_r_latch dirty_bit_13 (
		.set(selected_set[13]),
		.reset(clr),
		.q(dirty_bits[13])
	);
	
	protected_s_r_latch dirty_bit_14 (
		.set(selected_set[14]),
		.reset(clr),
		.q(dirty_bits[14])
	);
	
	protected_s_r_latch dirty_bit_15 (
		.set(selected_set[15]),
		.reset(clr),
		.q(dirty_bits[15])
	);
	
	protected_s_r_latch dirty_bit_16 (
		.set(selected_set[16]),
		.reset(clr),
		.q(dirty_bits[16])
	);
	
	protected_s_r_latch dirty_bit_17 (
		.set(selected_set[17]),
		.reset(clr),
		.q(dirty_bits[17])
	);
	
	protected_s_r_latch dirty_bit_18 (
		.set(selected_set[18]),
		.reset(clr),
		.q(dirty_bits[18])
	);
	
	protected_s_r_latch dirty_bit_19 (
		.set(selected_set[19]),
		.reset(clr),
		.q(dirty_bits[19])
	);
	
	protected_s_r_latch dirty_bit_20 (
		.set(selected_set[20]),
		.reset(clr),
		.q(dirty_bits[20])
	);
	
	protected_s_r_latch dirty_bit_21 (
		.set(selected_set[21]),
		.reset(clr),
		.q(dirty_bits[21])
	);
	
	protected_s_r_latch dirty_bit_22 (
		.set(selected_set[22]),
		.reset(clr),
		.q(dirty_bits[22])
	);
	
	protected_s_r_latch dirty_bit_23 (
		.set(selected_set[23]),
		.reset(clr),
		.q(dirty_bits[23])
	);
	
	protected_s_r_latch dirty_bit_24 (
		.set(selected_set[24]),
		.reset(clr),
		.q(dirty_bits[24])
	);
	
	protected_s_r_latch dirty_bit_25 (
		.set(selected_set[25]),
		.reset(clr),
		.q(dirty_bits[25])
	);
	
	protected_s_r_latch dirty_bit_26 (
		.set(selected_set[26]),
		.reset(clr),
		.q(dirty_bits[26])
	);
	
	protected_s_r_latch dirty_bit_27 (
		.set(selected_set[27]),
		.reset(clr),
		.q(dirty_bits[27])
	);
	
	protected_s_r_latch dirty_bit_28 (
		.set(selected_set[28]),
		.reset(clr),
		.q(dirty_bits[28])
	);
	
	protected_s_r_latch dirty_bit_29 (
		.set(selected_set[29]),
		.reset(clr),
		.q(dirty_bits[29])
	);
	
	protected_s_r_latch dirty_bit_30 (
		.set(selected_set[30]),
		.reset(clr),
		.q(dirty_bits[30])
	);
	
	protected_s_r_latch dirty_bit_31 (
		.set(selected_set[31]),
		.reset(clr),
		.q(dirty_bits[31])
	);
	
	protected_s_r_latch dirty_bit_32 (
		.set(selected_set[32]),
		.reset(clr),
		.q(dirty_bits[32])
	);
	
	protected_s_r_latch dirty_bit_33 (
		.set(selected_set[33]),
		.reset(clr),
		.q(dirty_bits[33])
	);
	
	protected_s_r_latch dirty_bit_34 (
		.set(selected_set[34]),
		.reset(clr),
		.q(dirty_bits[34])
	);
	
	protected_s_r_latch dirty_bit_35 (
		.set(selected_set[35]),
		.reset(clr),
		.q(dirty_bits[35])
	);
	
	protected_s_r_latch dirty_bit_36 (
		.set(selected_set[36]),
		.reset(clr),
		.q(dirty_bits[36])
	);
	
	protected_s_r_latch dirty_bit_37 (
		.set(selected_set[37]),
		.reset(clr),
		.q(dirty_bits[37])
	);
	
	protected_s_r_latch dirty_bit_38 (
		.set(selected_set[38]),
		.reset(clr),
		.q(dirty_bits[38])
	);
	
	protected_s_r_latch dirty_bit_39 (
		.set(selected_set[39]),
		.reset(clr),
		.q(dirty_bits[39])
	);
	
	protected_s_r_latch dirty_bit_40 (
		.set(selected_set[40]),
		.reset(clr),
		.q(dirty_bits[40])
	);
	
	protected_s_r_latch dirty_bit_41 (
		.set(selected_set[41]),
		.reset(clr),
		.q(dirty_bits[41])
	);
	
	protected_s_r_latch dirty_bit_42 (
		.set(selected_set[42]),
		.reset(clr),
		.q(dirty_bits[42])
	);
	
	protected_s_r_latch dirty_bit_43 (
		.set(selected_set[43]),
		.reset(clr),
		.q(dirty_bits[43])
	);
	
	protected_s_r_latch dirty_bit_44 (
		.set(selected_set[44]),
		.reset(clr),
		.q(dirty_bits[44])
	);
	
	protected_s_r_latch dirty_bit_45 (
		.set(selected_set[45]),
		.reset(clr),
		.q(dirty_bits[45])
	);
	
	protected_s_r_latch dirty_bit_46 (
		.set(selected_set[46]),
		.reset(clr),
		.q(dirty_bits[46])
	);
	
	protected_s_r_latch dirty_bit_47 (
		.set(selected_set[47]),
		.reset(clr),
		.q(dirty_bits[47])
	);
	
	protected_s_r_latch dirty_bit_48 (
		.set(selected_set[48]),
		.reset(clr),
		.q(dirty_bits[48])
	);
	
	protected_s_r_latch dirty_bit_49 (
		.set(selected_set[49]),
		.reset(clr),
		.q(dirty_bits[49])
	);
	
	protected_s_r_latch dirty_bit_50 (
		.set(selected_set[50]),
		.reset(clr),
		.q(dirty_bits[50])
	);
	
	protected_s_r_latch dirty_bit_51 (
		.set(selected_set[51]),
		.reset(clr),
		.q(dirty_bits[51])
	);
	
	protected_s_r_latch dirty_bit_52 (
		.set(selected_set[52]),
		.reset(clr),
		.q(dirty_bits[52])
	);
	
	protected_s_r_latch dirty_bit_53 (
		.set(selected_set[53]),
		.reset(clr),
		.q(dirty_bits[53])
	);
	
	protected_s_r_latch dirty_bit_54 (
		.set(selected_set[54]),
		.reset(clr),
		.q(dirty_bits[54])
	);
	
	protected_s_r_latch dirty_bit_55 (
		.set(selected_set[55]),
		.reset(clr),
		.q(dirty_bits[55])
	);
	
	protected_s_r_latch dirty_bit_56 (
		.set(selected_set[56]),
		.reset(clr),
		.q(dirty_bits[56])
	);
	
	protected_s_r_latch dirty_bit_57 (
		.set(selected_set[57]),
		.reset(clr),
		.q(dirty_bits[57])
	);
	
	protected_s_r_latch dirty_bit_58 (
		.set(selected_set[58]),
		.reset(clr),
		.q(dirty_bits[58])
	);
	
	protected_s_r_latch dirty_bit_59 (
		.set(selected_set[59]),
		.reset(clr),
		.q(dirty_bits[59])
	);
	
	protected_s_r_latch dirty_bit_60 (
		.set(selected_set[60]),
		.reset(clr),
		.q(dirty_bits[60])
	);
	
	protected_s_r_latch dirty_bit_61 (
		.set(selected_set[61]),
		.reset(clr),
		.q(dirty_bits[61])
	);
	
	protected_s_r_latch dirty_bit_62 (
		.set(selected_set[62]),
		.reset(clr),
		.q(dirty_bits[62])
	);
	
	protected_s_r_latch dirty_bit_63 (
		.set(selected_set[63]),
		.reset(clr),
		.q(dirty_bits[63])
	);

endmodule
