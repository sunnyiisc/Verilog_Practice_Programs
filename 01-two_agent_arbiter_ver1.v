//Two Agent Arbter

module arbiter (clk,
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
		else begin
            gnt0 = req0;
            gnt1 = !(req0) && (req1);
        end
	end

endmodule	
