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
    wire [7:0] SSD_an;
    wire [7:0] SSD_out;
    wire [7:0] p0, p1;
    
    //external rom
    wire [15:0] iadr_o;
//    wire [31:0] idat_i;
//    wire istb_o;
    
//    wire [15:0] pc_out, pc_buf;
//    wire istb_t;
//    wire inc_pc;
//    wire [2:0] op_pos;
//    wire rd;
//    wire[3:0] alu_op;
//    wire iack_i;
//    wire [31:0] idat_cur;
//    wire pc_wr_r2;
//    wire ea_rom_sel;
    oc8051_fpga_top oc8051_fpga_top1(.clk_100M(clk_100M), .rst(rst), .SSD_an(SSD_an), .SSD_out(SSD_out)// .clk_8051(clk_8051), .ea(ea), 
//                                    , .idat_i(idat_i), .istb_o(istb_o)
                                    ,.p0_out(p0), .p1_out(p1),.iadr_o(iadr_o)
//                                    ,.pc_out(pc_out), .istb_t(istb_t), .inc_pc(inc_pc), .pc_buf(pc_buf), .op_pos(op_pos), .rd(rd), .alu_op(alu_op)
//                                    ,.iack_i(iack_i), .idat_cur(idat_cur), .pc_wr_r2(pc_wr_r2), .ea_rom_sel(ea_rom_sel)
                                    );
    
    initial
    begin
      clk_100M = 0;
      forever #5 clk_100M <= ~clk_100M;
    end
    
//    initial
//    begin
//      clk_8051 = 0;
//      forever #5000 clk_8051 <= ~clk_8051;
//    end
    
    /*initial
    begin
      btn_r = 0;
      forever #100 btn_r <= ~btn_r;
    end*/
    
    initial
    begin
//        ea = 0;
        rst = 1;
        #1000
        rst = 0;
//        #500000
//        rst = 1;
//        #1000
//        rst = 0;
        /*#80000000
        $display("time ",$time, "\n faulire: end of time\n \n");
        $display("");
        $finish;*/
    end
    
endmodule
