`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 12:45:34
// Design Name: 
// Module Name: tb_counter_3bit_up
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_counter_3bit_up();

    reg clk, en, rst;
    wire [2:0] count;

    counter_3bit_up U0 (
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
