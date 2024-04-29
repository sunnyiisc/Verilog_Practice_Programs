//Two Agent Arbiter Testbench

module arbiter_tb;

	reg clk, rst, req0, req1;
	wire gnt0, gnt1;

	arbiter U0 (
		.clk(clk),
		.rst(rst),
		.req0(req0),
		.req1(req1),
		.gnt0(gnt0),
		.gnt1(gnt1)
	);

	always begin
		#5 clk = !clk;
	end

	initial begin
		clk = 0;
		rst = 0;
		req0 = 0;
		req1 = 0;

		#5 rst = 1;
		#15 rst = 0;

		#10 req0 = 1;
		#10 req0 = 0;
		#10 req1 = 1;
		#10 req1 = 0;

		#10 {req0, req1} = 2'b11;
		#10 {req0, req1} = 2'b00;

		#10 $finish;

	end

endmodule
