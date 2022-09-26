//`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/13 02:44:27
// Design Name: 
// Module Name: oc8051_fpga_top_tb
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

//// synopsys translate_off
`include "oc8051_timescale.v"
//// synopsys translate_on

`include "oc8051_defines.v"

module oc8051_fpga_top_tb();
//    , clk_8051, ea
    reg clk_100M, rst;
    reg rxd;
    oc8051_fpga_top oc8051_fpga_top1(.clk_100M(clk_100M), .rst(rst)
                                    ,.rxd(rxd));
    
    initial
    begin
      clk_100M = 0;
      forever #5 clk_100M <= ~clk_100M;
    end

    initial
    begin
//        ea = 0;
        rxd = 0;
        rst = 1;
        #1000
        rst = 0;
        #10000000
        $display("time ",$time, "\n faulire: end of time\n \n");
        $display("");
        $finish;
    end
    
endmodule
