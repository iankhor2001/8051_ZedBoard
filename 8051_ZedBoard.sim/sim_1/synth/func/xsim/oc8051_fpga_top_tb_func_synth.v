// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Sep  8 14:26:47 2022
// Host        : Ian-s-Zenbook-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/8051_ZedBoard.sim/sim_1/synth/func/xsim/oc8051_fpga_top_tb_func_synth.v
// Design      : oc8051_fpga_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_divider
   (clk_8051,
    clk_100M,
    rst_o_OBUF);
  output clk_8051;
  input clk_100M;
  input rst_o_OBUF;

  wire clk_100M;
  wire clk_8051;
  wire clk_o_i_1_n_0;
  wire clk_o_i_2_n_0;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire [6:1]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire rst_o_OBUF;
  wire [3:1]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[4]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0A0A0A0BF5F5F5F4)) 
    clk_o_i_1
       (.I0(clk_o_i_2_n_0),
        .I1(counter_reg[3]),
        .I2(counter_reg[6]),
        .I3(counter_reg[1]),
        .I4(counter_reg[2]),
        .I5(clk_8051),
        .O(clk_o_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    clk_o_i_2
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(clk_o_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_o_reg
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(clk_o_i_1_n_0),
        .Q(clk_8051));
  LUT6 #(
    .INIT(64'h00000000AAAA0002)) 
    \counter[0]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(clk_o_i_2_n_0),
        .I5(counter_reg[6]),
        .O(\counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .O(\counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .O(\counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111100000001)) 
    \counter[0]_i_6 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(counter_reg[6]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(counter_reg[3]),
        .I5(clk_o_i_2_n_0),
        .O(\counter[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000002AAAA)) 
    \counter[4]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(counter_reg[6]),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000002AAAA)) 
    \counter[4]_i_3 
       (.I0(counter_reg[4]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(counter_reg[5]),
        .I5(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[0] ));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [3],\counter_reg[4]_i_1_n_1 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [1],\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[4]_i_1_O_UNCONNECTED [3:2],\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({1'b0,1'b1,\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_100M),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\counter_reg[4]_i_1_n_1 ),
        .Q(counter_reg[6]));
endmodule

module oc8051_decoder
   (p_0_in,
    \state_reg[0]_0 ,
    \op_pos_reg[2] ,
    \state_reg[0]_1 ,
    p_0_in5_in,
    \op_pos_reg[0] ,
    clk_8051,
    rst_o_OBUF);
  output p_0_in;
  output \state_reg[0]_0 ;
  output \op_pos_reg[2] ;
  output \state_reg[0]_1 ;
  input p_0_in5_in;
  input \op_pos_reg[0] ;
  input clk_8051;
  input rst_o_OBUF;

  wire clk_8051;
  wire \op_pos_reg[0] ;
  wire \op_pos_reg[2] ;
  wire p_0_in;
  wire p_0_in5_in;
  wire rst_o_OBUF;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \op_pos[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(p_0_in),
        .I2(\op_pos_reg[0] ),
        .O(\state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \op_pos[2]_i_1 
       (.I0(p_0_in5_in),
        .I1(p_0_in),
        .I2(\state_reg[0]_0 ),
        .O(\op_pos_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[0]_i_1 
       (.I0(p_0_in),
        .I1(\state_reg[0]_0 ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(p_0_in),
        .O(\state[1]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_8051),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .PRE(rst_o_OBUF),
        .Q(\state_reg[0]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_8051),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .PRE(rst_o_OBUF),
        .Q(p_0_in));
endmodule

(* NotValidForBitStream *)
module oc8051_fpga_top
   (clk_100M,
    rst,
    rst_o,
    internal_addr);
  input clk_100M;
  input rst;
  output rst_o;
  output [7:0]internal_addr;

  wire clk_100M;
  wire clk_100M_IBUF;
  wire clk_100M_IBUF_BUFG;
  wire clk_8051;
  wire [7:0]internal_addr;
  wire [7:0]internal_addr_OBUF;
  wire rst;
  wire rst_o;
  wire rst_o_OBUF;

  BUFG clk_100M_IBUF_BUFG_inst
       (.I(clk_100M_IBUF),
        .O(clk_100M_IBUF_BUFG));
  IBUF clk_100M_IBUF_inst
       (.I(clk_100M),
        .O(clk_100M_IBUF));
  clock_divider clock_divider1
       (.clk_100M(clk_100M_IBUF_BUFG),
        .clk_8051(clk_8051),
        .rst_o_OBUF(rst_o_OBUF));
  OBUF \internal_addr_OBUF[0]_inst 
       (.I(internal_addr_OBUF[0]),
        .O(internal_addr[0]));
  OBUF \internal_addr_OBUF[1]_inst 
       (.I(internal_addr_OBUF[1]),
        .O(internal_addr[1]));
  OBUF \internal_addr_OBUF[2]_inst 
       (.I(internal_addr_OBUF[2]),
        .O(internal_addr[2]));
  OBUF \internal_addr_OBUF[3]_inst 
       (.I(internal_addr_OBUF[3]),
        .O(internal_addr[3]));
  OBUF \internal_addr_OBUF[4]_inst 
       (.I(internal_addr_OBUF[4]),
        .O(internal_addr[4]));
  OBUF \internal_addr_OBUF[5]_inst 
       (.I(internal_addr_OBUF[5]),
        .O(internal_addr[5]));
  OBUF \internal_addr_OBUF[6]_inst 
       (.I(internal_addr_OBUF[6]),
        .O(internal_addr[6]));
  OBUF \internal_addr_OBUF[7]_inst 
       (.I(internal_addr_OBUF[7]),
        .O(internal_addr[7]));
  oc8051_top oc8051_top_1
       (.clk_8051(clk_8051),
        .iadr_o(internal_addr_OBUF),
        .rst_o_OBUF(rst_o_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_o_OBUF));
  OBUF rst_o_OBUF_inst
       (.I(rst_o_OBUF),
        .O(rst_o));
endmodule

module oc8051_memory_interface
   (p_0_in5_in,
    \op_pos_reg[0]_0 ,
    iadr_o,
    \op_pos_reg[2]_0 ,
    clk_8051,
    rst_o_OBUF,
    \op_pos_reg[0]_1 ,
    p_0_in,
    \op_pos_reg[1]_0 );
  output p_0_in5_in;
  output \op_pos_reg[0]_0 ;
  output [7:0]iadr_o;
  input \op_pos_reg[2]_0 ;
  input clk_8051;
  input rst_o_OBUF;
  input \op_pos_reg[0]_1 ;
  input p_0_in;
  input \op_pos_reg[1]_0 ;

  wire clk_8051;
  wire [7:0]iadr_o;
  wire inc_pc;
  wire \internal_addr_OBUF[0]_inst_i_1_n_0 ;
  wire \internal_addr_OBUF[0]_inst_i_1_n_1 ;
  wire \internal_addr_OBUF[0]_inst_i_1_n_2 ;
  wire \internal_addr_OBUF[0]_inst_i_1_n_3 ;
  wire \internal_addr_OBUF[0]_inst_i_2_n_0 ;
  wire \internal_addr_OBUF[0]_inst_i_2_n_1 ;
  wire \internal_addr_OBUF[0]_inst_i_2_n_2 ;
  wire \internal_addr_OBUF[0]_inst_i_2_n_3 ;
  wire \internal_addr_OBUF[0]_inst_i_3_n_0 ;
  wire \internal_addr_OBUF[4]_inst_i_1_n_0 ;
  wire \internal_addr_OBUF[4]_inst_i_1_n_1 ;
  wire \internal_addr_OBUF[4]_inst_i_1_n_2 ;
  wire \internal_addr_OBUF[4]_inst_i_1_n_3 ;
  wire \internal_addr_OBUF[7]_inst_i_1_n_2 ;
  wire \internal_addr_OBUF[7]_inst_i_1_n_3 ;
  wire \op_pos[1]_i_1_n_0 ;
  wire \op_pos_reg[0]_0 ;
  wire \op_pos_reg[0]_1 ;
  wire \op_pos_reg[1]_0 ;
  wire \op_pos_reg[2]_0 ;
  wire \op_pos_reg_n_0_[1] ;
  wire p_0_in;
  wire p_0_in5_in;
  wire \pc_buf[4]_i_3_n_0 ;
  wire \pc_buf_reg[12]_i_1_n_0 ;
  wire \pc_buf_reg[12]_i_1_n_1 ;
  wire \pc_buf_reg[12]_i_1_n_2 ;
  wire \pc_buf_reg[12]_i_1_n_3 ;
  wire \pc_buf_reg[12]_i_1_n_4 ;
  wire \pc_buf_reg[12]_i_1_n_5 ;
  wire \pc_buf_reg[12]_i_1_n_6 ;
  wire \pc_buf_reg[12]_i_1_n_7 ;
  wire \pc_buf_reg[15]_i_1_n_2 ;
  wire \pc_buf_reg[15]_i_1_n_3 ;
  wire \pc_buf_reg[15]_i_1_n_5 ;
  wire \pc_buf_reg[15]_i_1_n_6 ;
  wire \pc_buf_reg[15]_i_1_n_7 ;
  wire \pc_buf_reg[4]_i_1_n_0 ;
  wire \pc_buf_reg[4]_i_1_n_1 ;
  wire \pc_buf_reg[4]_i_1_n_2 ;
  wire \pc_buf_reg[4]_i_1_n_3 ;
  wire \pc_buf_reg[4]_i_1_n_4 ;
  wire \pc_buf_reg[4]_i_1_n_5 ;
  wire \pc_buf_reg[4]_i_1_n_6 ;
  wire \pc_buf_reg[4]_i_1_n_7 ;
  wire \pc_buf_reg[8]_i_1_n_0 ;
  wire \pc_buf_reg[8]_i_1_n_1 ;
  wire \pc_buf_reg[8]_i_1_n_2 ;
  wire \pc_buf_reg[8]_i_1_n_3 ;
  wire \pc_buf_reg[8]_i_1_n_4 ;
  wire \pc_buf_reg[8]_i_1_n_5 ;
  wire \pc_buf_reg[8]_i_1_n_6 ;
  wire \pc_buf_reg[8]_i_1_n_7 ;
  wire \pc_buf_reg_n_0_[10] ;
  wire \pc_buf_reg_n_0_[11] ;
  wire \pc_buf_reg_n_0_[12] ;
  wire \pc_buf_reg_n_0_[13] ;
  wire \pc_buf_reg_n_0_[14] ;
  wire \pc_buf_reg_n_0_[15] ;
  wire \pc_buf_reg_n_0_[1] ;
  wire \pc_buf_reg_n_0_[2] ;
  wire \pc_buf_reg_n_0_[3] ;
  wire \pc_buf_reg_n_0_[4] ;
  wire \pc_buf_reg_n_0_[5] ;
  wire \pc_buf_reg_n_0_[6] ;
  wire \pc_buf_reg_n_0_[7] ;
  wire \pc_buf_reg_n_0_[8] ;
  wire \pc_buf_reg_n_0_[9] ;
  wire rst_o_OBUF;
  wire [2:0]\NLW_internal_addr_OBUF[0]_inst_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_internal_addr_OBUF[0]_inst_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_internal_addr_OBUF[7]_inst_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_internal_addr_OBUF[7]_inst_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_pc_buf_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_buf_reg[15]_i_1_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[0]_inst_i_1 
       (.CI(\internal_addr_OBUF[0]_inst_i_2_n_0 ),
        .CO({\internal_addr_OBUF[0]_inst_i_1_n_0 ,\internal_addr_OBUF[0]_inst_i_1_n_1 ,\internal_addr_OBUF[0]_inst_i_1_n_2 ,\internal_addr_OBUF[0]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({iadr_o[0],\NLW_internal_addr_OBUF[0]_inst_i_1_O_UNCONNECTED [2:0]}),
        .S({\pc_buf_reg_n_0_[8] ,\pc_buf_reg_n_0_[7] ,\pc_buf_reg_n_0_[6] ,\pc_buf_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[0]_inst_i_2 
       (.CI(1'b0),
        .CO({\internal_addr_OBUF[0]_inst_i_2_n_0 ,\internal_addr_OBUF[0]_inst_i_2_n_1 ,\internal_addr_OBUF[0]_inst_i_2_n_2 ,\internal_addr_OBUF[0]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pc_buf_reg_n_0_[2] ,1'b0}),
        .O(\NLW_internal_addr_OBUF[0]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({\pc_buf_reg_n_0_[4] ,\pc_buf_reg_n_0_[3] ,\internal_addr_OBUF[0]_inst_i_3_n_0 ,\pc_buf_reg_n_0_[1] }));
  LUT6 #(
    .INIT(64'hA9A9A9AAA9AAA9AA)) 
    \internal_addr_OBUF[0]_inst_i_3 
       (.I0(\pc_buf_reg_n_0_[2] ),
        .I1(\op_pos_reg[1]_0 ),
        .I2(p_0_in),
        .I3(p_0_in5_in),
        .I4(\op_pos_reg_n_0_[1] ),
        .I5(\op_pos_reg[0]_0 ),
        .O(\internal_addr_OBUF[0]_inst_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[4]_inst_i_1 
       (.CI(\internal_addr_OBUF[0]_inst_i_1_n_0 ),
        .CO({\internal_addr_OBUF[4]_inst_i_1_n_0 ,\internal_addr_OBUF[4]_inst_i_1_n_1 ,\internal_addr_OBUF[4]_inst_i_1_n_2 ,\internal_addr_OBUF[4]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(iadr_o[4:1]),
        .S({\pc_buf_reg_n_0_[12] ,\pc_buf_reg_n_0_[11] ,\pc_buf_reg_n_0_[10] ,\pc_buf_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[7]_inst_i_1 
       (.CI(\internal_addr_OBUF[4]_inst_i_1_n_0 ),
        .CO({\NLW_internal_addr_OBUF[7]_inst_i_1_CO_UNCONNECTED [3:2],\internal_addr_OBUF[7]_inst_i_1_n_2 ,\internal_addr_OBUF[7]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_internal_addr_OBUF[7]_inst_i_1_O_UNCONNECTED [3],iadr_o[7:5]}),
        .S({1'b0,\pc_buf_reg_n_0_[15] ,\pc_buf_reg_n_0_[14] ,\pc_buf_reg_n_0_[13] }));
  LUT4 #(
    .INIT(16'hCCC6)) 
    \op_pos[1]_i_1 
       (.I0(\op_pos_reg[0]_0 ),
        .I1(\op_pos_reg_n_0_[1] ),
        .I2(p_0_in),
        .I3(\op_pos_reg[1]_0 ),
        .O(\op_pos[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_pos_reg[0] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\op_pos_reg[0]_1 ),
        .Q(\op_pos_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_pos_reg[1] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\op_pos[1]_i_1_n_0 ),
        .Q(\op_pos_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_pos_reg[2] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\op_pos_reg[2]_0 ),
        .Q(p_0_in5_in));
  LUT5 #(
    .INIT(32'h000000F8)) 
    \pc_buf[4]_i_2 
       (.I0(\op_pos_reg[0]_0 ),
        .I1(\op_pos_reg_n_0_[1] ),
        .I2(p_0_in5_in),
        .I3(p_0_in),
        .I4(\op_pos_reg[1]_0 ),
        .O(inc_pc));
  LUT6 #(
    .INIT(64'hEEEFEFEF11101010)) 
    \pc_buf[4]_i_3 
       (.I0(\op_pos_reg[1]_0 ),
        .I1(p_0_in),
        .I2(p_0_in5_in),
        .I3(\op_pos_reg_n_0_[1] ),
        .I4(\op_pos_reg[0]_0 ),
        .I5(\pc_buf_reg_n_0_[2] ),
        .O(\pc_buf[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[10] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[12]_i_1_n_6 ),
        .Q(\pc_buf_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[11] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[12]_i_1_n_5 ),
        .Q(\pc_buf_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[12] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[12]_i_1_n_4 ),
        .Q(\pc_buf_reg_n_0_[12] ));
  CARRY4 \pc_buf_reg[12]_i_1 
       (.CI(\pc_buf_reg[8]_i_1_n_0 ),
        .CO({\pc_buf_reg[12]_i_1_n_0 ,\pc_buf_reg[12]_i_1_n_1 ,\pc_buf_reg[12]_i_1_n_2 ,\pc_buf_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_buf_reg[12]_i_1_n_4 ,\pc_buf_reg[12]_i_1_n_5 ,\pc_buf_reg[12]_i_1_n_6 ,\pc_buf_reg[12]_i_1_n_7 }),
        .S({\pc_buf_reg_n_0_[12] ,\pc_buf_reg_n_0_[11] ,\pc_buf_reg_n_0_[10] ,\pc_buf_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[13] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[15]_i_1_n_7 ),
        .Q(\pc_buf_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[14] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[15]_i_1_n_6 ),
        .Q(\pc_buf_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[15] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[15]_i_1_n_5 ),
        .Q(\pc_buf_reg_n_0_[15] ));
  CARRY4 \pc_buf_reg[15]_i_1 
       (.CI(\pc_buf_reg[12]_i_1_n_0 ),
        .CO({\NLW_pc_buf_reg[15]_i_1_CO_UNCONNECTED [3:2],\pc_buf_reg[15]_i_1_n_2 ,\pc_buf_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_buf_reg[15]_i_1_O_UNCONNECTED [3],\pc_buf_reg[15]_i_1_n_5 ,\pc_buf_reg[15]_i_1_n_6 ,\pc_buf_reg[15]_i_1_n_7 }),
        .S({1'b0,\pc_buf_reg_n_0_[15] ,\pc_buf_reg_n_0_[14] ,\pc_buf_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[1] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[4]_i_1_n_7 ),
        .Q(\pc_buf_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[2] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[4]_i_1_n_6 ),
        .Q(\pc_buf_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[3] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[4]_i_1_n_5 ),
        .Q(\pc_buf_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[4] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[4]_i_1_n_4 ),
        .Q(\pc_buf_reg_n_0_[4] ));
  CARRY4 \pc_buf_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\pc_buf_reg[4]_i_1_n_0 ,\pc_buf_reg[4]_i_1_n_1 ,\pc_buf_reg[4]_i_1_n_2 ,\pc_buf_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,inc_pc,1'b0}),
        .O({\pc_buf_reg[4]_i_1_n_4 ,\pc_buf_reg[4]_i_1_n_5 ,\pc_buf_reg[4]_i_1_n_6 ,\pc_buf_reg[4]_i_1_n_7 }),
        .S({\pc_buf_reg_n_0_[4] ,\pc_buf_reg_n_0_[3] ,\pc_buf[4]_i_3_n_0 ,\pc_buf_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[5] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[8]_i_1_n_7 ),
        .Q(\pc_buf_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[6] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[8]_i_1_n_6 ),
        .Q(\pc_buf_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[7] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[8]_i_1_n_5 ),
        .Q(\pc_buf_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[8] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[8]_i_1_n_4 ),
        .Q(\pc_buf_reg_n_0_[8] ));
  CARRY4 \pc_buf_reg[8]_i_1 
       (.CI(\pc_buf_reg[4]_i_1_n_0 ),
        .CO({\pc_buf_reg[8]_i_1_n_0 ,\pc_buf_reg[8]_i_1_n_1 ,\pc_buf_reg[8]_i_1_n_2 ,\pc_buf_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_buf_reg[8]_i_1_n_4 ,\pc_buf_reg[8]_i_1_n_5 ,\pc_buf_reg[8]_i_1_n_6 ,\pc_buf_reg[8]_i_1_n_7 }),
        .S({\pc_buf_reg_n_0_[8] ,\pc_buf_reg_n_0_[7] ,\pc_buf_reg_n_0_[6] ,\pc_buf_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[9] 
       (.C(clk_8051),
        .CE(1'b1),
        .CLR(rst_o_OBUF),
        .D(\pc_buf_reg[12]_i_1_n_7 ),
        .Q(\pc_buf_reg_n_0_[9] ));
endmodule

module oc8051_top
   (iadr_o,
    clk_8051,
    rst_o_OBUF);
  output [7:0]iadr_o;
  input clk_8051;
  input rst_o_OBUF;

  wire clk_8051;
  wire [7:0]iadr_o;
  wire oc8051_decoder1_n_1;
  wire oc8051_decoder1_n_2;
  wire oc8051_decoder1_n_3;
  wire oc8051_memory_interface1_n_1;
  wire p_0_in;
  wire p_0_in5_in;
  wire rst_o_OBUF;

  oc8051_decoder oc8051_decoder1
       (.clk_8051(clk_8051),
        .\op_pos_reg[0] (oc8051_memory_interface1_n_1),
        .\op_pos_reg[2] (oc8051_decoder1_n_2),
        .p_0_in(p_0_in),
        .p_0_in5_in(p_0_in5_in),
        .rst_o_OBUF(rst_o_OBUF),
        .\state_reg[0]_0 (oc8051_decoder1_n_1),
        .\state_reg[0]_1 (oc8051_decoder1_n_3));
  oc8051_memory_interface oc8051_memory_interface1
       (.clk_8051(clk_8051),
        .iadr_o(iadr_o),
        .\op_pos_reg[0]_0 (oc8051_memory_interface1_n_1),
        .\op_pos_reg[0]_1 (oc8051_decoder1_n_3),
        .\op_pos_reg[1]_0 (oc8051_decoder1_n_1),
        .\op_pos_reg[2]_0 (oc8051_decoder1_n_2),
        .p_0_in(p_0_in),
        .p_0_in5_in(p_0_in5_in),
        .rst_o_OBUF(rst_o_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
