`timescale 1ns/1ps
module dmc(
	input clk,
	input mem_select,
	input write_enable,
	input [7:0] data_ex,
	input [7:0] add_ex,
	output reg [7:0] data_out

);
parameter A=0;
parameter B=1;

reg [7:0] mem_A [7:0];
reg [7:0] mem_B [7:0];

reg dmc_select;
reg [7:0] add_dmc;
reg [7:0] data_dmc;

always@(posedge clk) begin

	if (write_enable==1'b1) begin
		dmc_select<=mem_select; //tb se aa raha hai
		data_dmc<=data_ex;
		add_dmc<=add_ex;
	
		if(dmc_select==A) begin

		mem_A[add_dmc]<=data_dmc;
		$display(" data is written in A at time %t  %d ",$time,mem_A[add_dmc]);
		
		end
	
		else if(dmc_select==B) begin
		
			mem_B[add_dmc]<=data_dmc;
		
			$display(" data is written in B at %t %d",$time,mem_B[add_dmc]);
		
		end
	end


	else if (write_enable==1'b0) begin
		dmc_select<=mem_select;
		add_dmc<=add_ex;
		
		if(dmc_select==A) begin

			data_out<=mem_A[add_dmc];

		end
	
		else if(dmc_select==B) begin
		
			data_out<=mem_B[add_dmc];
		end
	
	
	end

end

endmodule





