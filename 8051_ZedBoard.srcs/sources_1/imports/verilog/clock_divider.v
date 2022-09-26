`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 02:40:33
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    clk_100M,
    rst,
    clk_o
    );
    input clk_100M, rst;
    output reg clk_o;
//    parameter freq = 5_000; // Hz
    parameter freq = 50_000_000; // Hz
    parameter cmp = 50000000/freq;
    reg [31:0] counter;
    
    always @(posedge clk_100M or posedge rst)
    begin
        if(rst)begin
            clk_o <= 0;
            counter <= 0;
        end
        else begin
            if(counter >= cmp)begin
                 counter <= 0;
                 clk_o <= ~clk_o;
            end
            else
                counter <= counter + 1;
        end
    end
endmodule
