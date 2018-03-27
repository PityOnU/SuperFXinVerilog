`timescale 1ns / 1ps

/*



*/

module fig_04b_block_076 (
	input clk,
	input [15:0] y,
	input [15:0] z,
	input enable,
	input enable_l,
	input disable_l,
	input enable_h,
	input disable_h,
	input cchld,
	input pcen,
	input loopen,
	input fromset,
	input reset,
	//Pretty sure this is just r13, but I may be wrong
	//The documentation is very vague here
	//input rn15,
	input [3:0] xsel,
	input [3:0] ysel,
	input [3:0] zsel,
	output [15:0] xbus,
	output [15:0] ybus );
	
	wire [15:0] r00;
	wire [15:0] r01;
	wire [15:0] r02;
	wire [15:0] r03;
	wire [15:0] r04;
	wire [15:0] r05;
	wire [15:0] r06;
	wire [15:0] r07;
	wire [15:0] r08;
	wire [15:0] r09;
	wire [15:0] r10;
	wire [15:0] r11;
	wire [15:0] r12;
	wire [15:0] r13;
	wire [15:0] r14;
	wire [15:0] r15;
	
	fig_04b_block_076_registers fig_04b_block_076_registers (
		.clk(clk),
		.z(z),
		.enable(enable),
		.enable_l(enable_l),
		.disable_l(disable_l),
		.enable_h(enable_h),
		.disable_h(disable_h),
		.cchld(cchld),
		.pcen(pcen),
		.loopen(loopen),
		.reset(reset),
		.zsel(zsel),
		.r00(r00),
		.r01(r01),
		.r02(r02),
		.r03(r03),
		.r04(r04),
		.r05(r05),
		.r06(r06),
		.r07(r07),
		.r08(r08),
		.r09(r09),
		.r10(r10),
		.r11(r11),
		.r12(r12),
		.r13(r13),
		.r14(r14),
		.r15(r15)
	);
	
	fig_04b_block_076_x_select fig_04b_block_076_x_select (
		.clk(clk),
		.xsel(xsel),
		.r00(r00),
		.r01(r01),
		.r07(r07),
		.r08(r08),
		.r15(r15),
		.fromset(fromset),
		.y(y),
		.xbus(xbus)
	);
	
	fig_04b_block_076_y_select fig_04b_block_076_y_select (
		.clk(clk),
		.ysel(ysel),
		.r00(r00),
		.r01(r01),
		.r02(r02),
		.r03(r03),
		.r04(r04),
		.r05(r05),
		.r06(r06),
		.r07(r07),
		.r08(r08),
		.r09(r09),
		.r10(r10),
		.r11(r11),
		.r12(r12),
		.r13(r13),
		.r14(r14),
		.r15(r15),
		.ybus(ybus)
	);
	
endmodule
