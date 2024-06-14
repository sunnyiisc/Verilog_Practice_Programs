//3bit Up-Counter

module counter_3bit(
                    clk,
                    rst,
                    en,
                    count
                    );

    input clk, rst, en;
    output [2:0] count;

    reg [2:0] count;

    always @ (posedge clk) begin
        if (rst) begin
            count <= 3'b000;
        end
        else if (en) begin
            count <= count + 1;
        end
    end    
    
endmodule
