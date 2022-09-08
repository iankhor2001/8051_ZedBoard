//////////////////////////////////////////////////////////////////////
////                                                              ////
////  8051 fpga top module                                        ////
////                                                              ////
////  This file is part of the 8051 cores project                 ////
////  http://www.opencores.org/cores/8051/                        ////
////                                                              ////
////  Description                                                 ////
////   fpga top module                                            ////
////                                                              ////
////  To Do:                                                      ////
////   Nothing                                                    ////
////                                                              ////
////  Author(s):                                                  ////
////      - Simon Teran, simont@opencores.org                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
////                                                              ////
//// Copyright (C) 2000 Authors and OPENCORES.ORG                 ////
////                                                              ////
//// This source file may be used and distributed without         ////
//// restriction provided that this copyright statement is not    ////
//// removed from the file and that any derivative work contains  ////
//// the original copyright notice and the associated disclaimer. ////
////                                                              ////
//// This source file is free software; you can redistribute it   ////
//// and/or modify it under the terms of the GNU Lesser General   ////
//// Public License as published by the Free Software Foundation; ////
//// either version 2.1 of the License, or (at your option) any   ////
//// later version.                                               ////
////                                                              ////
//// This source is distributed in the hope that it will be       ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
//// PURPOSE.  See the GNU Lesser General Public License for more ////
//// details.                                                     ////
////                                                              ////
//// You should have received a copy of the GNU Lesser General    ////
//// Public License along with this source; if not, download it   ////
//// from http://www.opencores.org/lgpl.shtml                     ////
////                                                              ////
//////////////////////////////////////////////////////////////////////
//
// CVS Revision History
//
// $Log: not supported by cvs2svn $
// Revision 1.3  2002/09/30 17:34:02  simont
// prepared header
//
//

// synopsys translate_off
`include "oc8051_timescale.v"
// synopsys translate_on

`include "oc8051_defines.v"

module oc8051_fpga_top (clk_100M, rst
//
// interrupt interface
//
//   , int0, int1
//
// 2x7 led display output (port 0)
//
//   , SSD_an, SSD_out
//
// ports
//
//   , p0_out, p1_out// , p2_out, p3_out
//
// external instruction rom interface
//
//   , ea, iadr_o, istb_o, iack_i, icyc_o, idat_i
//
// external data ram interface
//
//   , stb_o, cyc_o, dat_i, dat_o, adr_o, ack_i, we_o
//
// serial interface
//
//   , rxd, txd
//
// timer/counter interface
//
//   , t0, t1
//
// button
//
//   , btn_r
//   , rst_o
     , internal_addr
   );

input clk_100M, rst;
wire clk_8051;
wire ea;
wire  iack_i;
wire  ack_i, int0, int1, rxd, t0, t1;
wire  [7:0] dat_i;
wire [31:0] idat_i;

wire istb_o;
wire  icyc_o, stb_o, cyc_o, we_o;
wire txd;
wire [7:0] p0_out, p1_out;
//output wire [7:0] p0_out, p1_out;
wire [7:0] p2_out, p3_out;
wire [7:0] dat_o;
wire [15:0] adr_o;

//wire [15:0] iadr_o;
//output wire [15:0] iadr_o;
wire [15:0] iadr_o;
wire [7:0] SSD_out;
wire [7:0] SSD_an;

//output wire [7:0] SSD_out;
//output wire [7:0] SSD_an;

//input btn_r;
//output wire rst_o;
wire rst_o;
output wire [7:0]internal_addr;
assign internal_addr = iadr_o[15:8];
assign rst_o = rst;

/*wire cstb_o, ccyc_o, cack_i;
wire [15:0] cadr_o;
wire [31:0] cdat_i;*/

assign ea = 0; // 1: internal rom, 0: external rom

oc8051_top oc8051_top_1(.wb_rst_i(rst), .wb_clk_i(clk_8051),
//
// interrupt interface
//
    .int0_i(int0), .int1_i(int1),
//
// external rom interface
//
    .ea_in(ea), .wbi_adr_o(iadr_o),  .wbi_dat_i(idat_i), .wbi_stb_o(istb_o), .wbi_ack_i(iack_i), .wbi_cyc_o(icyc_o), .wbi_err_i(1'b0),
//
// external ram interface
//
    .wbd_dat_i(dat_i), .wbd_dat_o(dat_o), .wbd_adr_o(adr_o), .wbd_we_o(we_o), .wbd_ack_i(ack_i), .wbd_stb_o(stb_o),
    .wbd_cyc_o(cyc_o), .wbd_err_i(1'b0),
//
//  ports interface
//
     .p0_i(8'hb0), .p1_i(8'hb1), .p2_i(8'hb2), .p3_i(8'hb3),
     .p0_o(p0_out), .p1_o(p1_out), .p2_o(p2_out), .p3_o(p3_out),
//
// serial interface
//
     .rxd_i(rxd), .txd_o(txd),
//
// timer/counter interface
//
     .t0_i(t0), .t1_i(t1),
     
     .t2_i(1'b0), .t2ex_i(1'b0)
     
     );


oc8051_xrom oc8051_xrom1(.rst(rst), .clk(clk_8051), .addr(iadr_o), .data(idat_i),
                        .stb_i(istb_o), .cyc_i(icyc_o), .ack_o(iack_i));
defparam oc8051_xrom1.DELAY = 0;
//oc8051_xram oc8051_xram1 (.clk(clk_100M), .rst(rst), .wr(we_o), .addr(adr_o),
//                         .data_in(dat_o), .data_out(dat_i), .ack(ack_i), .stb(stb_o));


  disp disp1(
    .clock_100Mhz(clk_100M), // 100 Mhz clock
    .reset(rst), // reset
    .in0(p0_out),
    .in1(p1_out),
    .in2(iadr_o[7:0]),
    .in3(iadr_o[15:8]),
    .SSD_an(SSD_an), // anode signals of the 7-segment LED display
    .SSD_out(SSD_out)
    );

  /*one_pulse one_pulse1(
    .clk(clk_100M),  
    .rst(rst), 
    .in_trig(btn_r), 
    .out_pulse(clk)
);*/
    clock_divider clock_divider1(
    .clk_100M(clk_100M),
    .rst(rst),
    .clk_o(clk_8051)
    );
    
endmodule
