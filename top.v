`timescale 1ns / 1ps

/*

This is the top-level module for the SuperFX in Verilog project. It is 
essentially a wrapper around the SuperFX chip that details the connections from 
the cartridge slot to the actual SuperFX chip. Cartridge slot pins are numbered 
from the front-left of the cartridge slot to the front-right, and then from the 
rear-left to the rear-right. Numbering starts at 0, as is standard, and ends at
61.

Signal designations and locations taken from "SNES Cartridge Slot Pinout" by
Jonathon W. Donaldson (jwdonal). When comparing the two, note that their
numbering begins at 1.

*/

module top(
	input pin_00,
	input pin_01,
	input pin_02,
	input pin_03,
	input pin_04,
	input pin_05,
	input pin_06,
	input pin_07,
	input pin_08,
	input pin_09,
	input pin_10,
	input pin_11,
	input pin_12,
	output pin_13,
	input pin_14,
	input pin_15,
	input pin_16,
	output pin_17,
	inout pin_18,
	inout pin_19,
	inout pin_20,
	inout pin_21,
	input pin_22,
	inout pin_23,
	input pin_24,
	input pin_25,
	input pin_26,
	input pin_27,
	input pin_28,
	input pin_29,
	output pin_30,
	input pin_31,
	input pin_32,
	input pin_33,
	input pin_34,
	input pin_35,
	input pin_36,
	input pin_37,
	input pin_38,
	input pin_39,
	input pin_40,
	input pin_41,
	input pin_42,
	input pin_43,
	input pin_44,
	input pin_45,
	input pin_46,
	input pin_47,
	input pin_48,
	inout pin_49,
	inout pin_50,
	inout pin_51,
	inout pin_52,
	input pin_53,
	inout pin_54,
	output pin_55,
	input pin_56,
	input pin_57,
	input pin_58,
	input pin_59,
	input pin_60,
	output pin_61	
    );

	wire mck;
	wire expand;
	wire [7:0] pa;
	wire pard_n;
	wire [1:0] local_gnd;
	wire [23:0] ca;
	wire irq_n;
	wire [7:0] d;
	wire cpurd_n;
	wire [1:0] cic_data_out;
	wire [3:0] cic;
	wire [1:0] local_5v;
	wire [1:0] sound;  // [L,R]
	wire ramsel_n;
	wire refresh;
	wire pawr_n;
	wire romsel_n;
	wire cpuwr_n;
	wire sysck;

	always @( * )
	begin
		mck = pin_00;
		expand = pin_01;
		pa = { pin_33, pin_02, pin_60, pin_29, pin_59, pin_28, pin_58, pin_27 };
		pard_n = pin_03;
		local_gnd = { pin_04, pin_35 };
		ca = { pin_47, pin_46, pin_45, pin_44, pin_43, pin_42, pin_41, pin_40, pin_39, pin_38, pin_37, pin_36, pin_05, pin_06, pin_07, pin_08, pin_09, pin_10, pin_11, pin_12, pin_13, pin_14, pin_15, pin_16 };
		irq_n = pin_17;
		d = { pin_52, pin_51, pin_50, pin_49, pin_21, pin_20, pin_19, pin_18 };
		cpurd_n = pin_22;
		cic = { pin_23, pin_24, pin_54, pin_55 };
		reset_n = pin_25;
		local_5v = { pin_26, pin_57 };
		sound = { pin_30, pin_61 };
		ramsel_n = pin_31;
		refresh = pin_32;
		pawr_n = pin_33;
		romsel_n = pin_48;
		cpuwr_n = pin_49;
		sysck = pin_56;
	end

endmodule
