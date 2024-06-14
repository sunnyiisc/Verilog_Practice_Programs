//3 bit Up-Counter Testbench

module counter_3bit_tb;

    reg clk, en, rst;
    wire [2:0] count;

    counter_3bit U0 (
                    .clk(clk),
                    .rst(rst),
                    .en(en),
                    .count(count)
                );

    always begin
        #10 clk = !clk;
    end
    
    initial begin
        $dumpvars;
        clk = 0;
        en = 0; 
        rst = 1;

        #25
        en = 1;
        
        #2
        rst = 0;

        #200
        en = 0;
        
        #100
        en = 1;
                                                                                                                

        #500 $finish;
    end

endmodule
