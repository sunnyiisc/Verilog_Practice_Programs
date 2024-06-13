//Two Agent Arbiter

module arbiter_ver0 (clk,
		rst,
		req0,
		req1,
		gnt0,
		gnt1);

	input clk, rst, req0, req1;
	output gnt0, gnt1;

	reg gnt0, gnt1;

	always @ (posedge clk or posedge rst) begin
		if (rst) begin
			gnt0 <= 0;
			gnt1 <= 0;
		end 
		else if (req0) begin
			gnt0 <= 1;
			gnt1 <= 0;
		end 
		else if (req1) begin
			gnt0 <= 0;
			gnt1 <= 1;
		end
	end

endmodule		
