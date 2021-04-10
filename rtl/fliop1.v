`include "defines.v"

module fliop1(
	input clk, 
	input rst, 
	
	input [`INST_WIDTH] inst, 
	input [`INST_ADDR_WIDTH] inst_addr, 
	
	input hold, 
	
	output [`INST_WIDTH] inst_o, 
	output [`INST_ADDR_WIDTH] inst_addr_o
	);
	
	reg [`INST_WIDTH] inst_r; 
	reg [`INST_ADDR_WIDTH] inst_addr_r; 
	
	always @ (posedge clk) begin
		if (!rst | hold) begin 
			inst_r <= `NOP; 
			inst_addr_r <= `INI_INST_ADDR; 
		end else begin
			inst_r <= inst; 
			inst_addr_r <= inst_addr; 
		end
	end
		
	assign inst_o = inst_r; 
	assign inst_addr_o = inst_addr_r; 
	
endmodule