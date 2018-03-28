`timescale 1ns / 1ps

/*

*/

module fig_08b(
	input clk,
	input reset_n,
	input bpr,
	input ldram_n,
	input ramd,
	input dump,
	input col,
	input ldpix_n,
	output reg data );

	reg ramrdy;
	reg keepcurrent;
	reg drawcolor;
	reg newcolor;
	
	//Figure 8B block 222
	always @( * )
	begin
		ramrdy = (~bpr) & (~ldram_n);
	end
	
	//Figure 8B block 224
	always @( * )
	begin
		keepcurrent = (~ramrdy) & (~dump);
	end
	
	//Figure 8B block 220
	always @( negedge clk, reset_n )
	begin
		if (~reset_n)
		begin
			drawcolor <= 1'b0;
		end
		else
		begin
			if (~ldpix_n)
			begin
				drawcolor <= col;
			end
		end
	end
	
	//Figure 8B block 226
	always @( * )
	begin
		newcolor = (keepcurrent & data) | (ramrdy & ramd) | (dump & drawcolor);
	end
	
	//Figure 8B block 228
	always @( negedge clk )
	begin
		data <= newcolor;
	end

endmodule
