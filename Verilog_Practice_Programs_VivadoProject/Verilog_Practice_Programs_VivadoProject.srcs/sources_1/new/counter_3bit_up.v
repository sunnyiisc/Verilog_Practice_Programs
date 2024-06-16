`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Supantha Sen
// 
// Create Date: 15.06.2024 12:36:39
// Design Name: 3-bit Up Counter
// Module Name: counter_3bit_up
// Project Name: Verilog Practice Programs
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


module counter_3bit_up(
    input clk,
    input rst,
    input en,
    output [2:0] count
    );

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
