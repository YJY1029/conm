`include "defines.v"

module csregfile(
	//input wire clk, 
	input wire rst, 
	
	//csr from executrol
	input wire csr_we, 
	input wire csr_waddr, 
	input wire csr_wdata, 
	
	//csr from id
	input wire csr_raddr, 
	
	//csr to executrol
	output wire csr_
	
	//regfile from executrol
	input wire reg_we, 
	input wire waddr, 
	input wire wdata, 
	
	//regfile from id
	input wire rs1_raddr, 
	input wire rs2_raddr, 
	
	//regfile to executrol
	output wire rs1_rdata, 
	output wire rs2_rdata
);
	