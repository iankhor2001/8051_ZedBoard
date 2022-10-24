// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Oct 13 16:47:15 2022
// Host        : Ian-s-Zenbook-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/8051_ZedBoard.sim/sim_1/synth/func/xsim/oc8051_tb_func_synth.v
// Design      : oc8051_fpga_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_divider
   (clk_8051,
    clk_100M_IBUF_BUFG,
    rst_IBUF);
  output clk_8051;
  input clk_100M_IBUF_BUFG;
  input rst_IBUF;

  wire clk_100M_IBUF_BUFG;
  wire clk_8051;
  wire clk_o_i_1_n_0;
  wire \counter[0]_i_1_n_0 ;
  wire load;
  wire rst_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    clk_o_i_1
       (.I0(load),
        .I1(clk_8051),
        .O(clk_o_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_o_reg
       (.C(clk_100M_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(clk_o_i_1_n_0),
        .Q(clk_8051));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(load),
        .O(\counter[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_100M_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(load));
endmodule

module oc8051_acc
   (\data_out_reg[1]_0 ,
    \data_out_reg[7]_0 ,
    \data_out_reg[7]_1 ,
    clk_8051_BUFG,
    rst_IBUF);
  output \data_out_reg[1]_0 ;
  output [7:0]\data_out_reg[7]_0 ;
  input [7:0]\data_out_reg[7]_1 ;
  input clk_8051_BUFG;
  input rst_IBUF;

  wire clk_8051_BUFG;
  wire \data_out_reg[1]_0 ;
  wire [7:0]\data_out_reg[7]_0 ;
  wire [7:0]\data_out_reg[7]_1 ;
  wire pc_wr_r_i_35_n_0;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [0]),
        .Q(\data_out_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [1]),
        .Q(\data_out_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [2]),
        .Q(\data_out_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [3]),
        .Q(\data_out_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [4]),
        .Q(\data_out_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [5]),
        .Q(\data_out_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [6]),
        .Q(\data_out_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_1 [7]),
        .Q(\data_out_reg[7]_0 [7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_wr_r_i_32
       (.I0(\data_out_reg[7]_0 [1]),
        .I1(\data_out_reg[7]_0 [7]),
        .I2(\data_out_reg[7]_0 [0]),
        .I3(\data_out_reg[7]_0 [2]),
        .I4(pc_wr_r_i_35_n_0),
        .O(\data_out_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_wr_r_i_35
       (.I0(\data_out_reg[7]_0 [6]),
        .I1(\data_out_reg[7]_0 [5]),
        .I2(\data_out_reg[7]_0 [4]),
        .I3(\data_out_reg[7]_0 [3]),
        .O(pc_wr_r_i_35_n_0));
endmodule

module oc8051_alu
   (O,
    D,
    \cycle_reg[1] ,
    \cycle_reg[0] ,
    cycle,
    Q,
    \tmp_rem_reg[7] ,
    \cycle_reg[1]_0 ,
    CO,
    \tmp_mul_reg[13] ,
    \tmp_div_reg[5] ,
    DI,
    S,
    \tmp_div_reg[1] ,
    \tmp_div_reg[1]_0 ,
    \tmp_rem_reg[7]_0 ,
    \tmp_mul_reg[0] ,
    \tmp_mul_reg[0]_0 ,
    \tmp_mul_reg[8] ,
    \tmp_mul_reg[8]_0 ,
    \tmp_mul_reg[12] ,
    \cycle_reg[1]_1 ,
    clk_8051_BUFG,
    rst_IBUF,
    \cycle_reg[0]_0 ,
    \cycle_reg[1]_2 ,
    \cycle_reg[0]_1 ,
    sub1_carry__0,
    src1,
    divsrc2,
    sub0_carry__0,
    sub0_carry__0_0,
    sub1_carry,
    sub1_carry__0_0,
    sub1_carry__0_1,
    sub0_carry,
    sub1_carry_0,
    sub0_carry_0,
    sub0_carry_1,
    sub0_carry__0_1,
    sub0_carry__0_2);
  output [1:0]O;
  output [13:0]D;
  output \cycle_reg[1] ;
  output \cycle_reg[0] ;
  output [1:0]cycle;
  output [3:0]Q;
  output [7:0]\tmp_rem_reg[7] ;
  output \cycle_reg[1]_0 ;
  output [0:0]CO;
  output [1:0]\tmp_mul_reg[13] ;
  output [5:0]\tmp_div_reg[5] ;
  input [0:0]DI;
  input [0:0]S;
  input [0:0]\tmp_div_reg[1] ;
  input [0:0]\tmp_div_reg[1]_0 ;
  input [0:0]\tmp_rem_reg[7]_0 ;
  input [2:0]\tmp_mul_reg[0] ;
  input [3:0]\tmp_mul_reg[0]_0 ;
  input [3:0]\tmp_mul_reg[8] ;
  input [3:0]\tmp_mul_reg[8]_0 ;
  input [0:0]\tmp_mul_reg[12] ;
  input \cycle_reg[1]_1 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \cycle_reg[0]_0 ;
  input \cycle_reg[1]_2 ;
  input \cycle_reg[0]_1 ;
  input sub1_carry__0;
  input [7:0]src1;
  input [1:0]divsrc2;
  input sub0_carry__0;
  input sub0_carry__0_0;
  input sub1_carry;
  input sub1_carry__0_0;
  input sub1_carry__0_1;
  input sub0_carry;
  input sub1_carry_0;
  input sub0_carry_0;
  input sub0_carry_1;
  input sub0_carry__0_1;
  input sub0_carry__0_2;

  wire [0:0]CO;
  wire [13:0]D;
  wire [0:0]DI;
  wire [1:0]O;
  wire [3:0]Q;
  wire [0:0]S;
  wire clk_8051_BUFG;
  wire [1:0]cycle;
  wire \cycle_reg[0] ;
  wire \cycle_reg[0]_0 ;
  wire \cycle_reg[0]_1 ;
  wire \cycle_reg[1] ;
  wire \cycle_reg[1]_0 ;
  wire \cycle_reg[1]_1 ;
  wire \cycle_reg[1]_2 ;
  wire [1:0]divsrc2;
  wire rst_IBUF;
  wire [7:0]src1;
  wire sub0_carry;
  wire sub0_carry_0;
  wire sub0_carry_1;
  wire sub0_carry__0;
  wire sub0_carry__0_0;
  wire sub0_carry__0_1;
  wire sub0_carry__0_2;
  wire sub1_carry;
  wire sub1_carry_0;
  wire sub1_carry__0;
  wire sub1_carry__0_0;
  wire sub1_carry__0_1;
  wire [0:0]\tmp_div_reg[1] ;
  wire [0:0]\tmp_div_reg[1]_0 ;
  wire [5:0]\tmp_div_reg[5] ;
  wire [2:0]\tmp_mul_reg[0] ;
  wire [3:0]\tmp_mul_reg[0]_0 ;
  wire [0:0]\tmp_mul_reg[12] ;
  wire [1:0]\tmp_mul_reg[13] ;
  wire [3:0]\tmp_mul_reg[8] ;
  wire [3:0]\tmp_mul_reg[8]_0 ;
  wire [7:0]\tmp_rem_reg[7] ;
  wire [0:0]\tmp_rem_reg[7]_0 ;

  oc8051_divide oc8051_div1
       (.CO(CO),
        .DI(DI),
        .O(O),
        .Q(Q),
        .S(S),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\cycle_reg[0]_0 (\cycle_reg[0] ),
        .\cycle_reg[0]_1 (\cycle_reg[0]_0 ),
        .\cycle_reg[1]_0 (\cycle_reg[1] ),
        .\cycle_reg[1]_1 (\cycle_reg[1]_0 ),
        .\cycle_reg[1]_2 (\cycle_reg[1]_1 ),
        .divsrc2(divsrc2),
        .rst_IBUF(rst_IBUF),
        .src1(src1),
        .sub0_carry_0(sub0_carry),
        .sub0_carry_1(sub0_carry_0),
        .sub0_carry_2(sub0_carry_1),
        .sub0_carry__0_0(sub0_carry__0),
        .sub0_carry__0_1(sub0_carry__0_0),
        .sub0_carry__0_2(sub0_carry__0_1),
        .sub0_carry__0_3(sub0_carry__0_2),
        .sub1_carry_0(sub1_carry),
        .sub1_carry_1(sub1_carry_0),
        .sub1_carry__0_0(sub1_carry__0),
        .sub1_carry__0_1(sub1_carry__0_0),
        .sub1_carry__0_2(sub1_carry__0_1),
        .\tmp_div_reg[1]_0 (\tmp_div_reg[1] ),
        .\tmp_div_reg[1]_1 (\tmp_div_reg[1]_0 ),
        .\tmp_div_reg[5]_0 (\tmp_div_reg[5] ),
        .\tmp_rem_reg[7]_0 (\tmp_rem_reg[7] ),
        .\tmp_rem_reg[7]_1 (\tmp_rem_reg[7]_0 ));
  oc8051_multiply oc8051_mul1
       (.D(D),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\cycle_reg[0]_0 (cycle[0]),
        .\cycle_reg[0]_1 (\cycle_reg[0]_1 ),
        .\cycle_reg[1]_0 (cycle[1]),
        .\cycle_reg[1]_1 (\cycle_reg[1]_2 ),
        .rst_IBUF(rst_IBUF),
        .\tmp_mul_reg[0]_0 (\tmp_mul_reg[0] ),
        .\tmp_mul_reg[0]_1 (\tmp_mul_reg[0]_0 ),
        .\tmp_mul_reg[12]_0 (\tmp_mul_reg[12] ),
        .\tmp_mul_reg[13]_0 (\tmp_mul_reg[13] ),
        .\tmp_mul_reg[8]_0 (\tmp_mul_reg[8] ),
        .\tmp_mul_reg[8]_1 (\tmp_mul_reg[8]_0 ));
endmodule

module oc8051_alu_src_sel
   (op3_r,
    op2_r,
    \op2_r_reg[0]_0 ,
    \op1_r_reg[7]_0 ,
    op3_n,
    clk_8051_BUFG,
    rst_IBUF,
    \op3_r_reg[7]_0 ,
    op2_n,
    \iadr_t[8]_i_12 ,
    Q,
    \iadr_t[8]_i_12_0 ,
    op1_n);
  output [7:0]op3_r;
  output [7:0]op2_r;
  output \op2_r_reg[0]_0 ;
  output [7:0]\op1_r_reg[7]_0 ;
  input [6:0]op3_n;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \op3_r_reg[7]_0 ;
  input [7:0]op2_n;
  input \iadr_t[8]_i_12 ;
  input [1:0]Q;
  input [0:0]\iadr_t[8]_i_12_0 ;
  input [7:0]op1_n;

  wire [1:0]Q;
  wire clk_8051_BUFG;
  wire \iadr_t[8]_i_12 ;
  wire [0:0]\iadr_t[8]_i_12_0 ;
  wire [7:0]op1_n;
  wire [7:0]\op1_r_reg[7]_0 ;
  wire [7:0]op2_n;
  wire [7:0]op2_r;
  wire \op2_r_reg[0]_0 ;
  wire [6:0]op3_n;
  wire [7:0]op3_r;
  wire \op3_r_reg[7]_0 ;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[0]),
        .Q(\op1_r_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[1]),
        .Q(\op1_r_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[2]),
        .Q(\op1_r_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[3]),
        .Q(\op1_r_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[4]),
        .Q(\op1_r_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[5]),
        .Q(\op1_r_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[6]),
        .Q(\op1_r_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \op1_r_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_n[7]),
        .Q(\op1_r_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[0]),
        .Q(op2_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[1]),
        .Q(op2_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[2]),
        .Q(op2_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[3]),
        .Q(op2_r[3]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[4]),
        .Q(op2_r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[5]),
        .Q(op2_r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[6]),
        .Q(op2_r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \op2_r_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op2_n[7]),
        .Q(op2_r[7]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op3_n[0]),
        .Q(op3_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op3_n[1]),
        .Q(op3_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op3_n[2]),
        .Q(op3_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op3_n[3]),
        .Q(op3_r[3]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op3_n[4]),
        .Q(op3_r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op3_n[5]),
        .Q(op3_r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op3_n[6]),
        .Q(op3_r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \op3_r_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\op3_r_reg[7]_0 ),
        .Q(op3_r[7]));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \tmp_rem[0]_i_4 
       (.I0(op2_r[0]),
        .I1(\iadr_t[8]_i_12 ),
        .I2(Q[1]),
        .I3(\iadr_t[8]_i_12_0 ),
        .I4(Q[0]),
        .I5(op3_r[0]),
        .O(\op2_r_reg[0]_0 ));
endmodule

module oc8051_b_register
   (b_reg,
    \data_out_reg[7]_0 ,
    clk_8051_BUFG,
    rst_IBUF,
    \data_out_reg[6]_0 ,
    \data_out_reg[5]_0 ,
    \data_out_reg[4]_0 ,
    \data_out_reg[3]_0 ,
    \data_out_reg[2]_0 ,
    \data_out_reg[1]_0 ,
    \data_out_reg[0]_0 );
  output [7:0]b_reg;
  input \data_out_reg[7]_0 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \data_out_reg[6]_0 ;
  input \data_out_reg[5]_0 ;
  input \data_out_reg[4]_0 ;
  input \data_out_reg[3]_0 ;
  input \data_out_reg[2]_0 ;
  input \data_out_reg[1]_0 ;
  input \data_out_reg[0]_0 ;

  wire [7:0]b_reg;
  wire clk_8051_BUFG;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[1]_0 ;
  wire \data_out_reg[2]_0 ;
  wire \data_out_reg[3]_0 ;
  wire \data_out_reg[4]_0 ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[6]_0 ;
  wire \data_out_reg[7]_0 ;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[0]_0 ),
        .Q(b_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[1]_0 ),
        .Q(b_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[2]_0 ),
        .Q(b_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[3]_0 ),
        .Q(b_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[4]_0 ),
        .Q(b_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[5]_0 ),
        .Q(b_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[6]_0 ),
        .Q(b_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_out_reg[7]_0 ),
        .Q(b_reg[7]));
endmodule

module oc8051_decoder
   (wr_reg_0,
    src_sel3,
    p_0_in,
    \state_reg[0]_0 ,
    \src_sel2_reg[0]_0 ,
    src1,
    \src_sel2_reg[0]_1 ,
    \src_sel2_reg[0]_2 ,
    \src_sel2_reg[0]_3 ,
    \src_sel2_reg[0]_4 ,
    \wr_sfr_reg[1]_0 ,
    \wr_sfr_reg[1]_1 ,
    \data_reg[4] ,
    \dat0[7]_i_8 ,
    \scon_reg[6] ,
    \scon_reg[5] ,
    \scon_reg[4] ,
    \scon_reg[3] ,
    \scon_reg[2] ,
    D,
    \data_reg[4]_0 ,
    \ram_rd_sel_r_reg[0]_0 ,
    rd_ind0,
    bit_out_i_38_0,
    \alu_op_reg[3]_0 ,
    \alu_op_reg[3]_1 ,
    \alu_op_reg[3]_2 ,
    \alu_op_reg[3]_3 ,
    \alu_op_reg[1]_0 ,
    \alu_op_reg[3]_4 ,
    des1,
    \alu_op_reg[1]_1 ,
    \ram_rd_sel_r_reg[0]_1 ,
    \ram_rd_sel_r_reg[0]_2 ,
    Q,
    \state_reg[1]_0 ,
    \src_sel2_reg[0]_5 ,
    \src_sel2_reg[0]_6 ,
    \state_reg[1]_1 ,
    \state_reg[0]_1 ,
    \wr_sfr_reg[0]_0 ,
    \wr_sfr_reg[0]_1 ,
    des2,
    \alu_op_reg[0]_0 ,
    \wr_sfr_reg[1]_2 ,
    \wr_sfr_reg[1]_3 ,
    \wr_sfr_reg[1]_4 ,
    des_acc,
    \alu_op_reg[0]_1 ,
    \sbuf_txd_reg[8] ,
    \src_sel1_reg[0]_0 ,
    \cycle_reg[1] ,
    \src_sel2_reg[0]_7 ,
    \cycle_reg[0] ,
    \alu_op_reg[0]_2 ,
    \data_out_reg[4] ,
    \alu_op_reg[3]_5 ,
    \alu_op_reg[3]_6 ,
    \alu_op_reg[1]_2 ,
    wait_data_reg_inv,
    \src_sel1_reg[0]_1 ,
    \alu_op_reg[2]_0 ,
    \alu_op_reg[2]_1 ,
    divsrc2,
    \cycle_reg[1]_0 ,
    \cycle_reg[1]_1 ,
    \src_sel1_reg[0]_2 ,
    wr_bit_r_reg,
    \src_sel2_reg[0]_8 ,
    \src_sel1_reg[0]_3 ,
    bank_sel,
    \th0_reg[7] ,
    \tmod_reg[1] ,
    \tmod_reg[5] ,
    \cycle_reg[1]_2 ,
    \src_sel1_reg[0]_4 ,
    \cycle_reg[0]_0 ,
    \src_sel1_reg[0]_5 ,
    \cycle_reg[1]_3 ,
    DI,
    \alu_op_reg[3]_7 ,
    \src_sel1_reg[2]_0 ,
    \cy_sel_reg[0]_0 ,
    \state_reg[1]_2 ,
    \state_reg[0]_2 ,
    \state_reg[0]_3 ,
    \state_reg[1]_3 ,
    wait_data_reg_inv_0,
    \ram_wr_sel_reg[2]_0 ,
    \ram_wr_sel_reg[2]_1 ,
    wr0,
    \ram_wr_sel_reg[2]_2 ,
    \ram_wr_sel_reg[1]_0 ,
    \ram_wr_sel_reg[0]_0 ,
    \ram_wr_sel_reg[1]_1 ,
    \ram_wr_sel_reg[2]_3 ,
    \ram_wr_sel_reg[0]_1 ,
    E,
    \wr_sfr_reg[1]_5 ,
    \wr_sfr_reg[0]_2 ,
    \psw_set_reg[1]_0 ,
    \mem_act_reg[0]_0 ,
    \mem_act_reg[2]_0 ,
    \ram_wr_sel_reg[2]_4 ,
    S,
    \tmp_rem_reg[5] ,
    \tmp_rem_reg[6] ,
    \cycle_reg[0]_1 ,
    \cycle_reg[0]_2 ,
    \mem_act_reg[1]_0 ,
    \wr_sfr_reg[1]_6 ,
    \bit_select[0]_i_2 ,
    \state_reg[0]_4 ,
    \sp_reg[3] ,
    \cycle_reg[0]_3 ,
    wait_data_reg_inv_1,
    \mem_act_reg[1]_1 ,
    wr_bit_r_reg_0,
    wr_bit_r_reg_1,
    \sp_reg[7] ,
    \sp[7]_i_2 ,
    \data_reg[7] ,
    \data_reg[6] ,
    \alu_op_reg[3]_8 ,
    wr_bit_r_reg_2,
    wr_bit_r_reg_3,
    wr_bit_r_reg_4,
    wr_bit_r_reg_5,
    wr_bit_r_reg_6,
    wr_bit_r_reg_7,
    wr_bit_r_reg_8,
    wr_bit_r_reg_9,
    wr_bit_r_reg_10,
    wr_reg_1,
    \ram_wr_sel_reg[2]_5 ,
    wr_bit_r_reg_11,
    wr_bit_r_reg_12,
    wr_bit_r_reg_13,
    wr_bit_r_reg_14,
    wr_bit_r_reg_15,
    wr_bit_r_reg_16,
    \p2_out_reg[7] ,
    wr_bit_r_reg_17,
    \scon_reg[0] ,
    \t2con_reg[0] ,
    \cycle_reg[0]_4 ,
    \alu_op_reg[0]_3 ,
    \cycle_reg[0]_5 ,
    \alu_op_reg[2]_2 ,
    \op_reg[7]_0 ,
    state1,
    wr0_0,
    clk_8051_BUFG,
    rst_IBUF,
    src_sel30,
    \state_reg[1]_4 ,
    \state_reg[0]_5 ,
    pc_wr_r_i_9,
    \pc_buf[4]_i_38_0 ,
    \dat0[7]_i_10 ,
    bit_out_i_3,
    wait_data_inv_i_2,
    \dat0[6]_i_2 ,
    \dat0[6]_i_2_0 ,
    \dat0[5]_i_2 ,
    \dat0[5]_i_2_0 ,
    \dat0[4]_i_2 ,
    \dat0[4]_i_2_0 ,
    \dat0[3]_i_2 ,
    \dat0[3]_i_2_0 ,
    \dat0[2]_i_2 ,
    \dat0[2]_i_2_0 ,
    buff_reg_0_63_0_2_i_9,
    rd_ind_reg,
    rd_addr,
    bit_out_reg_i_19_0,
    \bit_select_reg[2] ,
    \ri_r_reg[1] ,
    \bit_select_reg[2]_0 ,
    bit_out_i_56,
    bit_out_i_56_0,
    \ram_rd_sel_r_reg[0]_3 ,
    \psw_set[1]_i_2 ,
    pc_wr_r_i_31_0,
    \pcon_reg[0] ,
    src_sel3_reg_0,
    \data_out_reg[1] ,
    \data_out_reg[1]_0 ,
    \data_out[5]_i_3_0 ,
    \sbuf_txd_reg[7] ,
    \sbuf_txd_reg[1] ,
    \sbuf_txd_reg[1]_0 ,
    wr_sbuf,
    \iadr_t_reg[8] ,
    \iadr_t_reg[9] ,
    \cycle_reg[1]_4 ,
    \cycle_reg[1]_5 ,
    sub0_carry__0,
    bit_out_i_11_0,
    bit_out_i_11_1,
    \data_out_reg[7] ,
    \data_out_reg[7]_0 ,
    \data_out_reg[7]_1 ,
    \data_lo_reg[7] ,
    bit_out_i_11_2,
    bit_out_i_11_3,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[5]_0 ,
    \dat0[0]_i_11_0 ,
    \data_out_reg[4]_0 ,
    bit_out_i_26_0,
    \dat0[0]_i_10_0 ,
    \data_out_reg[3] ,
    \data_out_reg[2] ,
    \data_out_reg[2]_0 ,
    \data_lo_reg[1] ,
    O,
    cycle,
    \data_reg[6]_0 ,
    srcAc,
    wr_bit_r,
    \data_out_reg[0] ,
    \dat0[0]_i_18_0 ,
    \data_out_reg[7]_2 ,
    \data_out_reg[7]_3 ,
    \data_out_reg[7]_4 ,
    \iadr_t_reg[13] ,
    \iadr_t_reg[13]_0 ,
    \data_out_reg[4]_1 ,
    \data_out_reg[4]_2 ,
    \data_out_reg[3]_0 ,
    \iadr_t_reg[10] ,
    \data_lo_reg[7]_0 ,
    \data[2]_i_4_0 ,
    \iadr_t_reg[9]_i_10_0 ,
    op2_r,
    \rn_r_reg[3] ,
    psw,
    \th0_reg[3] ,
    \th0_reg[3]_0 ,
    \tl0_reg[3] ,
    \tl0_reg[3]_0 ,
    \tl1_reg[3] ,
    \tl1_reg[3]_0 ,
    CO,
    \pcon_reg[3] ,
    \iadr_t[15]_i_3_0 ,
    \iadr_t_reg[13]_i_17_0 ,
    \iadr_t_reg[13]_1 ,
    \iadr_t_reg[13]_i_17_1 ,
    \iadr_t_reg[9]_i_10_1 ,
    \iadr_t_reg[9]_i_10_2 ,
    \th0_reg[0] ,
    \iadr_t[8]_i_8_0 ,
    \iadr_t[8]_i_8_1 ,
    \iadr_t[8]_i_8_2 ,
    \iadr_t_reg[8]_0 ,
    \dat0[0]_i_24_0 ,
    cy,
    sfr_bit,
    pc_wr_r_i_34_0,
    pc_wr_r_i_34_1,
    sub1_carry__0_i_12_0,
    sub1_carry__0_i_12_1,
    op3_r,
    rd_en_r_i_5,
    \wr_addr_reg[7] ,
    \wr_addr_reg[6] ,
    \wr_addr_reg[5] ,
    \wr_addr_reg[4]_i_1_0 ,
    \wr_addr_reg[4]_i_1_1 ,
    \wr_addr_reg[4]_i_1_2 ,
    \wr_addr_reg[3]_i_1_0 ,
    \wr_addr_reg[2] ,
    \wr_addr_reg[1] ,
    sp_out0_carry__0,
    sub0_carry__0_0,
    istb_t_reg,
    istb_t_reg_0,
    bit_out_i_5,
    bit_out_i_5_0,
    \pc_buf[15]_i_18 ,
    \sp_reg[7]_0 ,
    \data_out[1]_i_2__0 ,
    \data_out[1]_i_2__0_0 ,
    pop,
    ack_o,
    \tl1_reg[1] ,
    \th0_reg[1] ,
    \ri_r_reg[1]_0 ,
    \ri_r_reg[1]_1 ,
    \data_out_reg[6]_0 ,
    b_reg,
    \data_out_reg[5]_1 ,
    \th0_reg[7]_0 ,
    \sp_reg[7]_1 ,
    \data_reg[7]_0 ,
    \th0_reg[5] ,
    \th0_reg[6] ,
    \data_reg[6]_1 ,
    \data_reg[6]_2 ,
    \tl1_reg[2] ,
    \th0_reg[2] ,
    \sp_reg[2] ,
    \tl1_reg[4] ,
    \th0_reg[4] ,
    \ri_r_reg[4] ,
    \ri_r_reg[4]_0 ,
    buff_reg_0_63_0_2_i_26_0,
    \wr_data_r_reg[2] ,
    \wr_data_r_reg[2]_0 ,
    \wr_data_r_reg[3] ,
    \wr_data_r_reg[3]_0 ,
    buff_reg_192_255_7_7,
    \data_out_reg[7]_5 ,
    \data_out_reg[4]_3 ,
    \data_out_reg[3]_1 ,
    \data_out_reg[2]_1 ,
    \data_out_reg[1]_1 ,
    \data_out_reg[0]_0 ,
    \p2_out_reg[7]_0 ,
    \p2_out_reg[7]_1 ,
    \p3_out_reg[7] ,
    \p3_out_reg[7]_0 ,
    \p3_out_reg[7]_1 ,
    \scon_reg[0]_0 ,
    \scon_reg[0]_1 ,
    \scon_reg[0]_2 ,
    scon,
    \t2con_reg[0]_0 ,
    \t2con_reg[0]_1 ,
    t2con,
    op1_n,
    \ram_rd_sel_r_reg[2]_0 ,
    \ram_wr_sel_reg[2]_6 ,
    \wr_sfr_reg[1]_7 ,
    \src_sel1_reg[2]_1 ,
    \src_sel2_reg[1]_0 ,
    \alu_op_reg[3]_9 ,
    \psw_set_reg[1]_1 ,
    \cy_sel_reg[1]_0 ,
    \mem_act_reg[2]_1 );
  output wr_reg_0;
  output src_sel3;
  output p_0_in;
  output \state_reg[0]_0 ;
  output \src_sel2_reg[0]_0 ;
  output [6:0]src1;
  output \src_sel2_reg[0]_1 ;
  output \src_sel2_reg[0]_2 ;
  output \src_sel2_reg[0]_3 ;
  output \src_sel2_reg[0]_4 ;
  output \wr_sfr_reg[1]_0 ;
  output \wr_sfr_reg[1]_1 ;
  output \data_reg[4] ;
  output \dat0[7]_i_8 ;
  output \scon_reg[6] ;
  output \scon_reg[5] ;
  output \scon_reg[4] ;
  output \scon_reg[3] ;
  output \scon_reg[2] ;
  output [1:0]D;
  output \data_reg[4]_0 ;
  output \ram_rd_sel_r_reg[0]_0 ;
  output rd_ind0;
  output bit_out_i_38_0;
  output \alu_op_reg[3]_0 ;
  output \alu_op_reg[3]_1 ;
  output \alu_op_reg[3]_2 ;
  output \alu_op_reg[3]_3 ;
  output \alu_op_reg[1]_0 ;
  output \alu_op_reg[3]_4 ;
  output [7:0]des1;
  output \alu_op_reg[1]_1 ;
  output \ram_rd_sel_r_reg[0]_1 ;
  output \ram_rd_sel_r_reg[0]_2 ;
  output [2:0]Q;
  output \state_reg[1]_0 ;
  output \src_sel2_reg[0]_5 ;
  output \src_sel2_reg[0]_6 ;
  output \state_reg[1]_1 ;
  output \state_reg[0]_1 ;
  output \wr_sfr_reg[0]_0 ;
  output [7:0]\wr_sfr_reg[0]_1 ;
  output [7:0]des2;
  output \alu_op_reg[0]_0 ;
  output \wr_sfr_reg[1]_2 ;
  output [7:0]\wr_sfr_reg[1]_3 ;
  output [0:0]\wr_sfr_reg[1]_4 ;
  output [7:0]des_acc;
  output \alu_op_reg[0]_1 ;
  output [6:0]\sbuf_txd_reg[8] ;
  output \src_sel1_reg[0]_0 ;
  output \cycle_reg[1] ;
  output \src_sel2_reg[0]_7 ;
  output [0:0]\cycle_reg[0] ;
  output \alu_op_reg[0]_2 ;
  output \data_out_reg[4] ;
  output \alu_op_reg[3]_5 ;
  output \alu_op_reg[3]_6 ;
  output \alu_op_reg[1]_2 ;
  output wait_data_reg_inv;
  output \src_sel1_reg[0]_1 ;
  output \alu_op_reg[2]_0 ;
  output \alu_op_reg[2]_1 ;
  output [1:0]divsrc2;
  output \cycle_reg[1]_0 ;
  output \cycle_reg[1]_1 ;
  output [0:0]\src_sel1_reg[0]_2 ;
  output wr_bit_r_reg;
  output \src_sel2_reg[0]_8 ;
  output \src_sel1_reg[0]_3 ;
  output [1:0]bank_sel;
  output [7:0]\th0_reg[7] ;
  output [0:0]\tmod_reg[1] ;
  output [3:0]\tmod_reg[5] ;
  output \cycle_reg[1]_2 ;
  output [3:0]\src_sel1_reg[0]_4 ;
  output \cycle_reg[0]_0 ;
  output [2:0]\src_sel1_reg[0]_5 ;
  output \cycle_reg[1]_3 ;
  output [0:0]DI;
  output \alu_op_reg[3]_7 ;
  output [2:0]\src_sel1_reg[2]_0 ;
  output [0:0]\cy_sel_reg[0]_0 ;
  output \state_reg[1]_2 ;
  output \state_reg[0]_2 ;
  output \state_reg[0]_3 ;
  output \state_reg[1]_3 ;
  output wait_data_reg_inv_0;
  output [2:0]\ram_wr_sel_reg[2]_0 ;
  output \ram_wr_sel_reg[2]_1 ;
  output wr0;
  output \ram_wr_sel_reg[2]_2 ;
  output [7:0]\ram_wr_sel_reg[1]_0 ;
  output \ram_wr_sel_reg[0]_0 ;
  output \ram_wr_sel_reg[1]_1 ;
  output [0:0]\ram_wr_sel_reg[2]_3 ;
  output \ram_wr_sel_reg[0]_1 ;
  output [0:0]E;
  output \wr_sfr_reg[1]_5 ;
  output \wr_sfr_reg[0]_2 ;
  output [1:0]\psw_set_reg[1]_0 ;
  output [0:0]\mem_act_reg[0]_0 ;
  output [0:0]\mem_act_reg[2]_0 ;
  output [0:0]\ram_wr_sel_reg[2]_4 ;
  output [0:0]S;
  output [0:0]\tmp_rem_reg[5] ;
  output [0:0]\tmp_rem_reg[6] ;
  output [2:0]\cycle_reg[0]_1 ;
  output [3:0]\cycle_reg[0]_2 ;
  output \mem_act_reg[1]_0 ;
  output \wr_sfr_reg[1]_6 ;
  output \bit_select[0]_i_2 ;
  output \state_reg[0]_4 ;
  output [3:0]\sp_reg[3] ;
  output \cycle_reg[0]_3 ;
  output wait_data_reg_inv_1;
  output \mem_act_reg[1]_1 ;
  output wr_bit_r_reg_0;
  output wr_bit_r_reg_1;
  output [3:0]\sp_reg[7] ;
  output [3:0]\sp[7]_i_2 ;
  output \data_reg[7] ;
  output \data_reg[6] ;
  output \alu_op_reg[3]_8 ;
  output wr_bit_r_reg_2;
  output wr_bit_r_reg_3;
  output wr_bit_r_reg_4;
  output wr_bit_r_reg_5;
  output wr_bit_r_reg_6;
  output wr_bit_r_reg_7;
  output wr_bit_r_reg_8;
  output wr_bit_r_reg_9;
  output wr_bit_r_reg_10;
  output wr_reg_1;
  output \ram_wr_sel_reg[2]_5 ;
  output wr_bit_r_reg_11;
  output wr_bit_r_reg_12;
  output wr_bit_r_reg_13;
  output wr_bit_r_reg_14;
  output wr_bit_r_reg_15;
  output wr_bit_r_reg_16;
  output \p2_out_reg[7] ;
  output wr_bit_r_reg_17;
  output \scon_reg[0] ;
  output \t2con_reg[0] ;
  output \cycle_reg[0]_4 ;
  output \alu_op_reg[0]_3 ;
  output \cycle_reg[0]_5 ;
  output \alu_op_reg[2]_2 ;
  output [7:0]\op_reg[7]_0 ;
  input state1;
  input wr0_0;
  input clk_8051_BUFG;
  input rst_IBUF;
  input src_sel30;
  input \state_reg[1]_4 ;
  input \state_reg[0]_5 ;
  input pc_wr_r_i_9;
  input \pc_buf[4]_i_38_0 ;
  input \dat0[7]_i_10 ;
  input bit_out_i_3;
  input wait_data_inv_i_2;
  input \dat0[6]_i_2 ;
  input \dat0[6]_i_2_0 ;
  input \dat0[5]_i_2 ;
  input \dat0[5]_i_2_0 ;
  input \dat0[4]_i_2 ;
  input \dat0[4]_i_2_0 ;
  input \dat0[3]_i_2 ;
  input \dat0[3]_i_2_0 ;
  input \dat0[2]_i_2 ;
  input \dat0[2]_i_2_0 ;
  input buff_reg_0_63_0_2_i_9;
  input rd_ind_reg;
  input [0:0]rd_addr;
  input bit_out_reg_i_19_0;
  input \bit_select_reg[2] ;
  input \ri_r_reg[1] ;
  input \bit_select_reg[2]_0 ;
  input bit_out_i_56;
  input bit_out_i_56_0;
  input \ram_rd_sel_r_reg[0]_3 ;
  input \psw_set[1]_i_2 ;
  input pc_wr_r_i_31_0;
  input [0:0]\pcon_reg[0] ;
  input src_sel3_reg_0;
  input \data_out_reg[1] ;
  input \data_out_reg[1]_0 ;
  input [13:0]\data_out[5]_i_3_0 ;
  input [6:0]\sbuf_txd_reg[7] ;
  input \sbuf_txd_reg[1] ;
  input \sbuf_txd_reg[1]_0 ;
  input wr_sbuf;
  input \iadr_t_reg[8] ;
  input \iadr_t_reg[9] ;
  input \cycle_reg[1]_4 ;
  input \cycle_reg[1]_5 ;
  input [3:0]sub0_carry__0;
  input bit_out_i_11_0;
  input bit_out_i_11_1;
  input \data_out_reg[7] ;
  input \data_out_reg[7]_0 ;
  input [7:0]\data_out_reg[7]_1 ;
  input [7:0]\data_lo_reg[7] ;
  input bit_out_i_11_2;
  input bit_out_i_11_3;
  input \data_out_reg[6] ;
  input \data_out_reg[5] ;
  input \data_out_reg[5]_0 ;
  input \dat0[0]_i_11_0 ;
  input \data_out_reg[4]_0 ;
  input bit_out_i_26_0;
  input \dat0[0]_i_10_0 ;
  input \data_out_reg[3] ;
  input \data_out_reg[2] ;
  input \data_out_reg[2]_0 ;
  input \data_lo_reg[1] ;
  input [1:0]O;
  input [1:0]cycle;
  input \data_reg[6]_0 ;
  input srcAc;
  input wr_bit_r;
  input \data_out_reg[0] ;
  input \dat0[0]_i_18_0 ;
  input \data_out_reg[7]_2 ;
  input \data_out_reg[7]_3 ;
  input \data_out_reg[7]_4 ;
  input \iadr_t_reg[13] ;
  input \iadr_t_reg[13]_0 ;
  input \data_out_reg[4]_1 ;
  input \data_out_reg[4]_2 ;
  input \data_out_reg[3]_0 ;
  input \iadr_t_reg[10] ;
  input [1:0]\data_lo_reg[7]_0 ;
  input \data[2]_i_4_0 ;
  input \iadr_t_reg[9]_i_10_0 ;
  input [7:0]op2_r;
  input \rn_r_reg[3] ;
  input [1:0]psw;
  input \th0_reg[3] ;
  input \th0_reg[3]_0 ;
  input \tl0_reg[3] ;
  input \tl0_reg[3]_0 ;
  input \tl1_reg[3] ;
  input \tl1_reg[3]_0 ;
  input [0:0]CO;
  input \pcon_reg[3] ;
  input [5:0]\iadr_t[15]_i_3_0 ;
  input \iadr_t_reg[13]_i_17_0 ;
  input \iadr_t_reg[13]_1 ;
  input \iadr_t_reg[13]_i_17_1 ;
  input \iadr_t_reg[9]_i_10_1 ;
  input \iadr_t_reg[9]_i_10_2 ;
  input \th0_reg[0] ;
  input \iadr_t[8]_i_8_0 ;
  input \iadr_t[8]_i_8_1 ;
  input \iadr_t[8]_i_8_2 ;
  input \iadr_t_reg[8]_0 ;
  input \dat0[0]_i_24_0 ;
  input cy;
  input sfr_bit;
  input pc_wr_r_i_34_0;
  input pc_wr_r_i_34_1;
  input [13:0]sub1_carry__0_i_12_0;
  input [6:0]sub1_carry__0_i_12_1;
  input [7:0]op3_r;
  input [1:0]rd_en_r_i_5;
  input \wr_addr_reg[7] ;
  input \wr_addr_reg[6] ;
  input \wr_addr_reg[5] ;
  input \wr_addr_reg[4]_i_1_0 ;
  input [2:0]\wr_addr_reg[4]_i_1_1 ;
  input [2:0]\wr_addr_reg[4]_i_1_2 ;
  input \wr_addr_reg[3]_i_1_0 ;
  input \wr_addr_reg[2] ;
  input \wr_addr_reg[1] ;
  input [7:0]sp_out0_carry__0;
  input sub0_carry__0_0;
  input istb_t_reg;
  input [0:0]istb_t_reg_0;
  input bit_out_i_5;
  input bit_out_i_5_0;
  input \pc_buf[15]_i_18 ;
  input \sp_reg[7]_0 ;
  input \data_out[1]_i_2__0 ;
  input \data_out[1]_i_2__0_0 ;
  input pop;
  input ack_o;
  input \tl1_reg[1] ;
  input \th0_reg[1] ;
  input \ri_r_reg[1]_0 ;
  input \ri_r_reg[1]_1 ;
  input \data_out_reg[6]_0 ;
  input [7:0]b_reg;
  input \data_out_reg[5]_1 ;
  input \th0_reg[7]_0 ;
  input [3:0]\sp_reg[7]_1 ;
  input \data_reg[7]_0 ;
  input \th0_reg[5] ;
  input \th0_reg[6] ;
  input \data_reg[6]_1 ;
  input \data_reg[6]_2 ;
  input \tl1_reg[2] ;
  input \th0_reg[2] ;
  input [0:0]\sp_reg[2] ;
  input \tl1_reg[4] ;
  input \th0_reg[4] ;
  input \ri_r_reg[4] ;
  input \ri_r_reg[4]_0 ;
  input buff_reg_0_63_0_2_i_26_0;
  input \wr_data_r_reg[2] ;
  input \wr_data_r_reg[2]_0 ;
  input \wr_data_r_reg[3] ;
  input \wr_data_r_reg[3]_0 ;
  input buff_reg_192_255_7_7;
  input \data_out_reg[7]_5 ;
  input \data_out_reg[4]_3 ;
  input \data_out_reg[3]_1 ;
  input \data_out_reg[2]_1 ;
  input \data_out_reg[1]_1 ;
  input \data_out_reg[0]_0 ;
  input \p2_out_reg[7]_0 ;
  input \p2_out_reg[7]_1 ;
  input \p3_out_reg[7] ;
  input \p3_out_reg[7]_0 ;
  input \p3_out_reg[7]_1 ;
  input \scon_reg[0]_0 ;
  input \scon_reg[0]_1 ;
  input \scon_reg[0]_2 ;
  input [0:0]scon;
  input \t2con_reg[0]_0 ;
  input \t2con_reg[0]_1 ;
  input [0:0]t2con;
  input [7:0]op1_n;
  input [1:0]\ram_rd_sel_r_reg[2]_0 ;
  input [2:0]\ram_wr_sel_reg[2]_6 ;
  input [1:0]\wr_sfr_reg[1]_7 ;
  input [2:0]\src_sel1_reg[2]_1 ;
  input [1:0]\src_sel2_reg[1]_0 ;
  input [3:0]\alu_op_reg[3]_9 ;
  input [1:0]\psw_set_reg[1]_1 ;
  input [1:0]\cy_sel_reg[1]_0 ;
  input [2:0]\mem_act_reg[2]_1 ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [1:0]O;
  wire [2:0]Q;
  wire [0:0]S;
  wire ack_o;
  wire \alu_op_reg[0]_0 ;
  wire \alu_op_reg[0]_1 ;
  wire \alu_op_reg[0]_2 ;
  wire \alu_op_reg[0]_3 ;
  wire \alu_op_reg[1]_0 ;
  wire \alu_op_reg[1]_1 ;
  wire \alu_op_reg[1]_2 ;
  wire \alu_op_reg[2]_0 ;
  wire \alu_op_reg[2]_1 ;
  wire \alu_op_reg[2]_2 ;
  wire \alu_op_reg[3]_0 ;
  wire \alu_op_reg[3]_1 ;
  wire \alu_op_reg[3]_2 ;
  wire \alu_op_reg[3]_3 ;
  wire \alu_op_reg[3]_4 ;
  wire \alu_op_reg[3]_5 ;
  wire \alu_op_reg[3]_6 ;
  wire \alu_op_reg[3]_7 ;
  wire \alu_op_reg[3]_8 ;
  wire [3:0]\alu_op_reg[3]_9 ;
  wire \alu_op_reg_n_0_[0] ;
  wire \alu_op_reg_n_0_[1] ;
  wire \alu_op_reg_n_0_[2] ;
  wire \alu_op_reg_n_0_[3] ;
  wire [7:0]b_reg;
  wire [1:0]bank_sel;
  wire bit_out_i_110_n_0;
  wire bit_out_i_11_0;
  wire bit_out_i_11_1;
  wire bit_out_i_11_2;
  wire bit_out_i_11_3;
  wire bit_out_i_25_n_0;
  wire bit_out_i_26_0;
  wire bit_out_i_26_n_0;
  wire bit_out_i_27_n_0;
  wire bit_out_i_28_n_0;
  wire bit_out_i_29_n_0;
  wire bit_out_i_3;
  wire bit_out_i_37_n_0;
  wire bit_out_i_38_0;
  wire bit_out_i_38_n_0;
  wire bit_out_i_41_n_0;
  wire bit_out_i_42_n_0;
  wire bit_out_i_43_n_0;
  wire bit_out_i_44_n_0;
  wire bit_out_i_47_n_0;
  wire bit_out_i_48_n_0;
  wire bit_out_i_49_n_0;
  wire bit_out_i_5;
  wire bit_out_i_50_n_0;
  wire bit_out_i_51_n_0;
  wire bit_out_i_52_n_0;
  wire bit_out_i_56;
  wire bit_out_i_56_0;
  wire bit_out_i_5_0;
  wire bit_out_i_70_n_0;
  wire bit_out_i_71_n_0;
  wire bit_out_i_72_n_0;
  wire bit_out_reg_i_19_0;
  wire bit_out_reg_i_69_n_0;
  wire bit_out_reg_i_74_n_0;
  wire \bit_select[0]_i_2 ;
  wire \bit_select_reg[2] ;
  wire \bit_select_reg[2]_0 ;
  wire \buff[0][1]_i_3_n_0 ;
  wire \buff[0][3]_i_10_n_0 ;
  wire \buff[0][3]_i_12_n_0 ;
  wire \buff[0][3]_i_15_n_0 ;
  wire \buff[0][3]_i_16_n_0 ;
  wire \buff[0][3]_i_17_n_0 ;
  wire \buff[0][3]_i_20_n_0 ;
  wire \buff[0][3]_i_21_n_0 ;
  wire \buff[0][3]_i_22_n_0 ;
  wire \buff[0][3]_i_23_n_0 ;
  wire \buff[0][3]_i_4_n_0 ;
  wire \buff[0][3]_i_5_n_0 ;
  wire \buff[0][3]_i_6_n_0 ;
  wire \buff[0][3]_i_7_n_0 ;
  wire \buff[0][3]_i_8_n_0 ;
  wire \buff[0][4]_i_3_n_0 ;
  wire \buff[0][4]_i_4_n_0 ;
  wire \buff[0][4]_i_5_n_0 ;
  wire \buff[0][5]_i_3_n_0 ;
  wire \buff[0][5]_i_4_n_0 ;
  wire \buff[0][5]_i_5_n_0 ;
  wire \buff[0][6]_i_3_n_0 ;
  wire \buff[0][6]_i_4_n_0 ;
  wire \buff[0][6]_i_5_n_0 ;
  wire \buff[0][7]_i_5_n_0 ;
  wire \buff[0][7]_i_6_n_0 ;
  wire \buff_reg[0][3]_i_11_n_0 ;
  wire \buff_reg[0][3]_i_11_n_1 ;
  wire \buff_reg[0][3]_i_11_n_2 ;
  wire \buff_reg[0][3]_i_11_n_3 ;
  wire \buff_reg[0][3]_i_11_n_4 ;
  wire \buff_reg[0][3]_i_11_n_5 ;
  wire \buff_reg[0][3]_i_11_n_6 ;
  wire \buff_reg[0][3]_i_11_n_7 ;
  wire \buff_reg[0][3]_i_13_n_0 ;
  wire \buff_reg[0][3]_i_13_n_1 ;
  wire \buff_reg[0][3]_i_13_n_2 ;
  wire \buff_reg[0][3]_i_13_n_3 ;
  wire \buff_reg[0][3]_i_13_n_4 ;
  wire \buff_reg[0][3]_i_13_n_5 ;
  wire \buff_reg[0][3]_i_13_n_6 ;
  wire \buff_reg[0][3]_i_13_n_7 ;
  wire buff_reg_0_63_0_2_i_26_0;
  wire buff_reg_0_63_0_2_i_29_n_0;
  wire buff_reg_0_63_0_2_i_30_n_0;
  wire buff_reg_0_63_0_2_i_31_n_0;
  wire buff_reg_0_63_0_2_i_32_n_0;
  wire buff_reg_0_63_0_2_i_35_n_0;
  wire buff_reg_0_63_0_2_i_38_n_0;
  wire buff_reg_0_63_0_2_i_39_n_0;
  wire buff_reg_0_63_0_2_i_41_n_0;
  wire buff_reg_0_63_0_2_i_42_n_0;
  wire buff_reg_0_63_0_2_i_43_n_0;
  wire buff_reg_0_63_0_2_i_44_n_0;
  wire buff_reg_0_63_0_2_i_47_n_0;
  wire buff_reg_0_63_0_2_i_48_n_0;
  wire buff_reg_0_63_0_2_i_9;
  wire buff_reg_192_255_7_7;
  wire clk_8051_BUFG;
  wire cy;
  wire [1:1]cy_sel;
  wire [0:0]\cy_sel_reg[0]_0 ;
  wire [1:0]\cy_sel_reg[1]_0 ;
  wire [1:0]cycle;
  wire \cycle[1]_i_2_n_0 ;
  wire \cycle[1]_i_3_n_0 ;
  wire [0:0]\cycle_reg[0] ;
  wire \cycle_reg[0]_0 ;
  wire [2:0]\cycle_reg[0]_1 ;
  wire [3:0]\cycle_reg[0]_2 ;
  wire \cycle_reg[0]_3 ;
  wire \cycle_reg[0]_4 ;
  wire \cycle_reg[0]_5 ;
  wire \cycle_reg[1] ;
  wire \cycle_reg[1]_0 ;
  wire \cycle_reg[1]_1 ;
  wire \cycle_reg[1]_2 ;
  wire \cycle_reg[1]_3 ;
  wire \cycle_reg[1]_4 ;
  wire \cycle_reg[1]_5 ;
  wire \dat0[0]_i_10_0 ;
  wire \dat0[0]_i_11_0 ;
  wire \dat0[0]_i_18_0 ;
  wire \dat0[0]_i_18_n_0 ;
  wire \dat0[0]_i_19_n_0 ;
  wire \dat0[0]_i_20_n_0 ;
  wire \dat0[0]_i_24_0 ;
  wire \dat0[0]_i_24_n_0 ;
  wire \dat0[2]_i_2 ;
  wire \dat0[2]_i_2_0 ;
  wire \dat0[3]_i_2 ;
  wire \dat0[3]_i_2_0 ;
  wire \dat0[4]_i_2 ;
  wire \dat0[4]_i_2_0 ;
  wire \dat0[5]_i_2 ;
  wire \dat0[5]_i_2_0 ;
  wire \dat0[6]_i_2 ;
  wire \dat0[6]_i_2_0 ;
  wire \dat0[7]_i_10 ;
  wire \dat0[7]_i_26_n_0 ;
  wire \dat0[7]_i_8 ;
  wire \data[2]_i_3_n_0 ;
  wire \data[2]_i_4_0 ;
  wire \data[2]_i_4_n_0 ;
  wire \data[2]_i_5_n_0 ;
  wire \data[2]_i_6_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[6]_i_5_n_0 ;
  wire \data[6]_i_8_n_0 ;
  wire \data[6]_i_9_n_0 ;
  wire \data_lo_reg[1] ;
  wire [7:0]\data_lo_reg[7] ;
  wire [1:0]\data_lo_reg[7]_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[1]_i_2__0 ;
  wire \data_out[1]_i_2__0_0 ;
  wire \data_out[1]_i_4_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_3_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[5]_i_2__0_n_0 ;
  wire [13:0]\data_out[5]_i_3_0 ;
  wire \data_out[5]_i_3_n_0 ;
  wire \data_out[5]_i_6_n_0 ;
  wire \data_out[5]_i_7_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out_reg[0] ;
  wire \data_out_reg[0]_0 ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[1]_0 ;
  wire \data_out_reg[1]_1 ;
  wire \data_out_reg[1]_i_5_n_0 ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[2]_0 ;
  wire \data_out_reg[2]_1 ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[3]_0 ;
  wire \data_out_reg[3]_1 ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[4]_0 ;
  wire \data_out_reg[4]_1 ;
  wire \data_out_reg[4]_2 ;
  wire \data_out_reg[4]_3 ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[5]_1 ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[6]_0 ;
  wire \data_out_reg[7] ;
  wire \data_out_reg[7]_0 ;
  wire [7:0]\data_out_reg[7]_1 ;
  wire \data_out_reg[7]_2 ;
  wire \data_out_reg[7]_3 ;
  wire \data_out_reg[7]_4 ;
  wire \data_out_reg[7]_5 ;
  wire \data_reg[4] ;
  wire \data_reg[4]_0 ;
  wire \data_reg[6] ;
  wire \data_reg[6]_0 ;
  wire \data_reg[6]_1 ;
  wire \data_reg[6]_2 ;
  wire \data_reg[7] ;
  wire \data_reg[7]_0 ;
  wire [7:0]des1;
  wire [7:0]des2;
  wire [7:0]des_acc;
  wire [1:0]divsrc2;
  wire \iadr_t[0]_i_2_n_0 ;
  wire \iadr_t[0]_i_3_n_0 ;
  wire \iadr_t[0]_i_4_n_0 ;
  wire \iadr_t[0]_i_5_n_0 ;
  wire \iadr_t[0]_i_6_n_0 ;
  wire \iadr_t[0]_i_7_n_0 ;
  wire \iadr_t[0]_i_8_n_0 ;
  wire \iadr_t[10]_i_4_n_0 ;
  wire \iadr_t[10]_i_5_n_0 ;
  wire \iadr_t[11]_i_4_n_0 ;
  wire \iadr_t[11]_i_5_n_0 ;
  wire \iadr_t[11]_i_6_n_0 ;
  wire \iadr_t[11]_i_7_n_0 ;
  wire \iadr_t[12]_i_4_n_0 ;
  wire \iadr_t[12]_i_5_n_0 ;
  wire \iadr_t[12]_i_6_n_0 ;
  wire \iadr_t[13]_i_12_n_0 ;
  wire \iadr_t[13]_i_14_n_0 ;
  wire \iadr_t[13]_i_15_n_0 ;
  wire \iadr_t[13]_i_19_n_0 ;
  wire \iadr_t[13]_i_20_n_0 ;
  wire \iadr_t[13]_i_23_n_0 ;
  wire \iadr_t[13]_i_24_n_0 ;
  wire \iadr_t[13]_i_25_n_0 ;
  wire \iadr_t[13]_i_5_n_0 ;
  wire \iadr_t[13]_i_6_n_0 ;
  wire \iadr_t[14]_i_3_n_0 ;
  wire \iadr_t[14]_i_4_n_0 ;
  wire \iadr_t[14]_i_5_n_0 ;
  wire \iadr_t[15]_i_10_n_0 ;
  wire \iadr_t[15]_i_11_n_0 ;
  wire [5:0]\iadr_t[15]_i_3_0 ;
  wire \iadr_t[15]_i_4_n_0 ;
  wire \iadr_t[15]_i_8_n_0 ;
  wire \iadr_t[1]_i_2_n_0 ;
  wire \iadr_t[1]_i_3_n_0 ;
  wire \iadr_t[1]_i_4_n_0 ;
  wire \iadr_t[1]_i_7_n_0 ;
  wire \iadr_t[1]_i_8_n_0 ;
  wire \iadr_t[1]_i_9_n_0 ;
  wire \iadr_t[2]_i_10_n_0 ;
  wire \iadr_t[2]_i_11_n_0 ;
  wire \iadr_t[2]_i_4_n_0 ;
  wire \iadr_t[2]_i_5_n_0 ;
  wire \iadr_t[2]_i_6_n_0 ;
  wire \iadr_t[2]_i_7_n_0 ;
  wire \iadr_t[2]_i_8_n_0 ;
  wire \iadr_t[2]_i_9_n_0 ;
  wire \iadr_t[3]_i_10_n_0 ;
  wire \iadr_t[3]_i_2_n_0 ;
  wire \iadr_t[3]_i_3_n_0 ;
  wire \iadr_t[3]_i_4_n_0 ;
  wire \iadr_t[3]_i_5_n_0 ;
  wire \iadr_t[3]_i_6_n_0 ;
  wire \iadr_t[3]_i_7_n_0 ;
  wire \iadr_t[3]_i_8_n_0 ;
  wire \iadr_t[3]_i_9_n_0 ;
  wire \iadr_t[4]_i_10_n_0 ;
  wire \iadr_t[4]_i_4_n_0 ;
  wire \iadr_t[4]_i_5_n_0 ;
  wire \iadr_t[4]_i_6_n_0 ;
  wire \iadr_t[4]_i_7_n_0 ;
  wire \iadr_t[4]_i_8_n_0 ;
  wire \iadr_t[4]_i_9_n_0 ;
  wire \iadr_t[5]_i_10_n_0 ;
  wire \iadr_t[5]_i_11_n_0 ;
  wire \iadr_t[5]_i_12_n_0 ;
  wire \iadr_t[5]_i_13_n_0 ;
  wire \iadr_t[5]_i_3_n_0 ;
  wire \iadr_t[5]_i_4_n_0 ;
  wire \iadr_t[5]_i_5_n_0 ;
  wire \iadr_t[5]_i_7_n_0 ;
  wire \iadr_t[5]_i_8_n_0 ;
  wire \iadr_t[5]_i_9_n_0 ;
  wire \iadr_t[6]_i_10_n_0 ;
  wire \iadr_t[6]_i_11_n_0 ;
  wire \iadr_t[6]_i_3_n_0 ;
  wire \iadr_t[6]_i_4_n_0 ;
  wire \iadr_t[6]_i_5_n_0 ;
  wire \iadr_t[6]_i_6_n_0 ;
  wire \iadr_t[6]_i_7_n_0 ;
  wire \iadr_t[6]_i_8_n_0 ;
  wire \iadr_t[6]_i_9_n_0 ;
  wire \iadr_t[7]_i_10_n_0 ;
  wire \iadr_t[7]_i_14_n_0 ;
  wire \iadr_t[7]_i_15_n_0 ;
  wire \iadr_t[7]_i_16_n_0 ;
  wire \iadr_t[7]_i_17_n_0 ;
  wire \iadr_t[7]_i_18_n_0 ;
  wire \iadr_t[7]_i_19_n_0 ;
  wire \iadr_t[7]_i_20_n_0 ;
  wire \iadr_t[7]_i_22_n_0 ;
  wire \iadr_t[7]_i_24_n_0 ;
  wire \iadr_t[7]_i_26_n_0 ;
  wire \iadr_t[7]_i_27_n_0 ;
  wire \iadr_t[7]_i_28_n_0 ;
  wire \iadr_t[7]_i_29_n_0 ;
  wire \iadr_t[7]_i_2_n_0 ;
  wire \iadr_t[7]_i_30_n_0 ;
  wire \iadr_t[7]_i_31_n_0 ;
  wire \iadr_t[7]_i_3_n_0 ;
  wire \iadr_t[7]_i_4_n_0 ;
  wire \iadr_t[7]_i_5_n_0 ;
  wire \iadr_t[7]_i_6_n_0 ;
  wire \iadr_t[7]_i_7_n_0 ;
  wire \iadr_t[7]_i_8_n_0 ;
  wire \iadr_t[8]_i_10_n_0 ;
  wire \iadr_t[8]_i_11_n_0 ;
  wire \iadr_t[8]_i_12_n_0 ;
  wire \iadr_t[8]_i_5_n_0 ;
  wire \iadr_t[8]_i_6_n_0 ;
  wire \iadr_t[8]_i_7_n_0 ;
  wire \iadr_t[8]_i_8_0 ;
  wire \iadr_t[8]_i_8_1 ;
  wire \iadr_t[8]_i_8_2 ;
  wire \iadr_t[8]_i_8_n_0 ;
  wire \iadr_t[8]_i_9_n_0 ;
  wire \iadr_t[9]_i_16_n_0 ;
  wire \iadr_t[9]_i_17_n_0 ;
  wire \iadr_t[9]_i_18_n_0 ;
  wire \iadr_t[9]_i_19_n_0 ;
  wire \iadr_t[9]_i_20_n_0 ;
  wire \iadr_t[9]_i_21_n_0 ;
  wire \iadr_t[9]_i_22_n_0 ;
  wire \iadr_t[9]_i_23_n_0 ;
  wire \iadr_t[9]_i_2_n_0 ;
  wire \iadr_t[9]_i_3_n_0 ;
  wire \iadr_t[9]_i_4_n_0 ;
  wire \iadr_t[9]_i_5_n_0 ;
  wire \iadr_t[9]_i_6_n_0 ;
  wire \iadr_t[9]_i_7_n_0 ;
  wire \iadr_t[9]_i_8_n_0 ;
  wire \iadr_t[9]_i_9_n_0 ;
  wire \iadr_t_reg[10] ;
  wire \iadr_t_reg[13] ;
  wire \iadr_t_reg[13]_0 ;
  wire \iadr_t_reg[13]_1 ;
  wire \iadr_t_reg[13]_i_16_n_2 ;
  wire \iadr_t_reg[13]_i_16_n_3 ;
  wire \iadr_t_reg[13]_i_16_n_5 ;
  wire \iadr_t_reg[13]_i_16_n_6 ;
  wire \iadr_t_reg[13]_i_16_n_7 ;
  wire \iadr_t_reg[13]_i_17_0 ;
  wire \iadr_t_reg[13]_i_17_1 ;
  wire \iadr_t_reg[13]_i_17_n_2 ;
  wire \iadr_t_reg[13]_i_17_n_3 ;
  wire \iadr_t_reg[13]_i_17_n_5 ;
  wire \iadr_t_reg[13]_i_17_n_6 ;
  wire \iadr_t_reg[13]_i_17_n_7 ;
  wire \iadr_t_reg[1]_i_5_n_0 ;
  wire \iadr_t_reg[2]_i_2_n_0 ;
  wire \iadr_t_reg[2]_i_3_n_0 ;
  wire \iadr_t_reg[4]_i_2_n_0 ;
  wire \iadr_t_reg[4]_i_3_n_0 ;
  wire \iadr_t_reg[5]_i_6_n_0 ;
  wire \iadr_t_reg[7]_i_11_n_0 ;
  wire \iadr_t_reg[7]_i_11_n_1 ;
  wire \iadr_t_reg[7]_i_11_n_2 ;
  wire \iadr_t_reg[7]_i_11_n_3 ;
  wire \iadr_t_reg[7]_i_11_n_4 ;
  wire \iadr_t_reg[7]_i_11_n_5 ;
  wire \iadr_t_reg[7]_i_11_n_6 ;
  wire \iadr_t_reg[7]_i_11_n_7 ;
  wire \iadr_t_reg[7]_i_12_n_0 ;
  wire \iadr_t_reg[7]_i_12_n_1 ;
  wire \iadr_t_reg[7]_i_12_n_2 ;
  wire \iadr_t_reg[7]_i_12_n_3 ;
  wire \iadr_t_reg[7]_i_12_n_4 ;
  wire \iadr_t_reg[7]_i_12_n_5 ;
  wire \iadr_t_reg[7]_i_12_n_6 ;
  wire \iadr_t_reg[7]_i_12_n_7 ;
  wire \iadr_t_reg[8] ;
  wire \iadr_t_reg[8]_0 ;
  wire \iadr_t_reg[8]_i_4_n_0 ;
  wire \iadr_t_reg[9] ;
  wire \iadr_t_reg[9]_i_10_0 ;
  wire \iadr_t_reg[9]_i_10_1 ;
  wire \iadr_t_reg[9]_i_10_2 ;
  wire \iadr_t_reg[9]_i_10_n_0 ;
  wire \iadr_t_reg[9]_i_10_n_1 ;
  wire \iadr_t_reg[9]_i_10_n_2 ;
  wire \iadr_t_reg[9]_i_10_n_3 ;
  wire \iadr_t_reg[9]_i_10_n_4 ;
  wire \iadr_t_reg[9]_i_10_n_5 ;
  wire \iadr_t_reg[9]_i_10_n_6 ;
  wire \iadr_t_reg[9]_i_10_n_7 ;
  wire \iadr_t_reg[9]_i_11_n_0 ;
  wire \iadr_t_reg[9]_i_11_n_1 ;
  wire \iadr_t_reg[9]_i_11_n_2 ;
  wire \iadr_t_reg[9]_i_11_n_3 ;
  wire \iadr_t_reg[9]_i_11_n_4 ;
  wire \iadr_t_reg[9]_i_11_n_5 ;
  wire \iadr_t_reg[9]_i_11_n_6 ;
  wire \iadr_t_reg[9]_i_11_n_7 ;
  wire istb_t_reg;
  wire [0:0]istb_t_reg_0;
  wire [1:0]mem_act;
  wire [0:0]\mem_act_reg[0]_0 ;
  wire \mem_act_reg[1]_0 ;
  wire \mem_act_reg[1]_1 ;
  wire [0:0]\mem_act_reg[2]_0 ;
  wire [2:0]\mem_act_reg[2]_1 ;
  wire mul_result1_carry_i_9_n_0;
  wire [7:4]\oc8051_alu1/data5 ;
  wire \oc8051_alu1/enable_mul ;
  wire [7:0]op1_n;
  wire [7:0]op2_r;
  wire [7:0]op3_r;
  wire \op[7]_i_1_n_0 ;
  wire [7:0]\op_reg[7]_0 ;
  wire \p2_out_reg[7] ;
  wire \p2_out_reg[7]_0 ;
  wire \p2_out_reg[7]_1 ;
  wire \p3_out_reg[7] ;
  wire \p3_out_reg[7]_0 ;
  wire \p3_out_reg[7]_1 ;
  wire p_0_in;
  wire \pc_buf[15]_i_18 ;
  wire \pc_buf[4]_i_38_0 ;
  wire \pc_buf[4]_i_40_n_0 ;
  wire pc_wr_r_i_27_n_0;
  wire pc_wr_r_i_28_n_0;
  wire pc_wr_r_i_31_0;
  wire pc_wr_r_i_31_n_0;
  wire pc_wr_r_i_33_n_0;
  wire pc_wr_r_i_34_0;
  wire pc_wr_r_i_34_1;
  wire pc_wr_r_i_34_n_0;
  wire pc_wr_r_i_9;
  wire [0:0]\pcon_reg[0] ;
  wire \pcon_reg[3] ;
  wire pop;
  wire [1:0]psw;
  wire \psw_set[1]_i_2 ;
  wire [1:0]\psw_set_reg[1]_0 ;
  wire [1:0]\psw_set_reg[1]_1 ;
  wire \ram_rd_sel_r_reg[0]_0 ;
  wire \ram_rd_sel_r_reg[0]_1 ;
  wire \ram_rd_sel_r_reg[0]_2 ;
  wire \ram_rd_sel_r_reg[0]_3 ;
  wire [1:0]\ram_rd_sel_r_reg[2]_0 ;
  wire \ram_wr_sel_reg[0]_0 ;
  wire \ram_wr_sel_reg[0]_1 ;
  wire [7:0]\ram_wr_sel_reg[1]_0 ;
  wire \ram_wr_sel_reg[1]_1 ;
  wire [2:0]\ram_wr_sel_reg[2]_0 ;
  wire \ram_wr_sel_reg[2]_1 ;
  wire \ram_wr_sel_reg[2]_2 ;
  wire [0:0]\ram_wr_sel_reg[2]_3 ;
  wire [0:0]\ram_wr_sel_reg[2]_4 ;
  wire \ram_wr_sel_reg[2]_5 ;
  wire [2:0]\ram_wr_sel_reg[2]_6 ;
  wire [0:0]rd_addr;
  wire [1:0]rd_en_r_i_5;
  wire rd_ind0;
  wire rd_ind_reg;
  wire \ri_r[4]_i_8_n_0 ;
  wire \ri_r[4]_i_9_n_0 ;
  wire \ri_r_reg[1] ;
  wire \ri_r_reg[1]_0 ;
  wire \ri_r_reg[1]_1 ;
  wire \ri_r_reg[4] ;
  wire \ri_r_reg[4]_0 ;
  wire \rn_r[3]_i_3_n_0 ;
  wire \rn_r[3]_i_5_n_0 ;
  wire \rn_r[3]_i_6_n_0 ;
  wire \rn_r_reg[3] ;
  wire \rn_r_reg[3]_i_2_n_0 ;
  wire rst_IBUF;
  wire \sbuf_txd_reg[1] ;
  wire \sbuf_txd_reg[1]_0 ;
  wire [6:0]\sbuf_txd_reg[7] ;
  wire [6:0]\sbuf_txd_reg[8] ;
  wire [0:0]scon;
  wire \scon_reg[0] ;
  wire \scon_reg[0]_0 ;
  wire \scon_reg[0]_1 ;
  wire \scon_reg[0]_2 ;
  wire \scon_reg[2] ;
  wire \scon_reg[3] ;
  wire \scon_reg[4] ;
  wire \scon_reg[5] ;
  wire \scon_reg[6] ;
  wire sfr_bit;
  wire [3:0]\sp[7]_i_2 ;
  wire [7:0]sp_out0_carry__0;
  wire [0:0]\sp_reg[2] ;
  wire [3:0]\sp_reg[3] ;
  wire [3:0]\sp_reg[7] ;
  wire \sp_reg[7]_0 ;
  wire [3:0]\sp_reg[7]_1 ;
  wire [6:0]src1;
  wire [7:0]src2;
  wire srcAc;
  wire \src_sel1_reg[0]_0 ;
  wire \src_sel1_reg[0]_1 ;
  wire [0:0]\src_sel1_reg[0]_2 ;
  wire \src_sel1_reg[0]_3 ;
  wire [3:0]\src_sel1_reg[0]_4 ;
  wire [2:0]\src_sel1_reg[0]_5 ;
  wire [2:0]\src_sel1_reg[2]_0 ;
  wire [2:0]\src_sel1_reg[2]_1 ;
  wire [1:0]src_sel2;
  wire \src_sel2_reg[0]_0 ;
  wire \src_sel2_reg[0]_1 ;
  wire \src_sel2_reg[0]_2 ;
  wire \src_sel2_reg[0]_3 ;
  wire \src_sel2_reg[0]_4 ;
  wire \src_sel2_reg[0]_5 ;
  wire \src_sel2_reg[0]_6 ;
  wire \src_sel2_reg[0]_7 ;
  wire \src_sel2_reg[0]_8 ;
  wire [1:0]\src_sel2_reg[1]_0 ;
  wire src_sel3;
  wire src_sel30;
  wire src_sel3_reg_0;
  wire state1;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[0]_2 ;
  wire \state_reg[0]_3 ;
  wire \state_reg[0]_4 ;
  wire \state_reg[0]_5 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[1]_4 ;
  wire [3:0]sub0_carry__0;
  wire sub0_carry__0_0;
  wire [13:0]sub1_carry__0_i_12_0;
  wire [6:0]sub1_carry__0_i_12_1;
  wire sub1_carry__0_i_14_n_0;
  wire sub1_carry__0_i_16_n_0;
  wire sub1_carry__0_i_17_n_0;
  wire sub1_carry__0_i_18_n_0;
  wire sub1_carry__0_i_19_n_0;
  wire sub1_carry__0_i_21_n_0;
  wire sub1_carry_i_12_n_0;
  wire sub1_carry_i_17_n_0;
  wire sub1_carry_i_18_n_0;
  wire sub1_carry_i_19_n_0;
  wire sub1_carry_i_21_n_0;
  wire sub1_carry_i_22_n_0;
  wire sub1_carry_i_23_n_0;
  wire [0:0]t2con;
  wire \t2con_reg[0] ;
  wire \t2con_reg[0]_0 ;
  wire \t2con_reg[0]_1 ;
  wire \th0_reg[0] ;
  wire \th0_reg[1] ;
  wire \th0_reg[2] ;
  wire \th0_reg[3] ;
  wire \th0_reg[3]_0 ;
  wire \th0_reg[4] ;
  wire \th0_reg[5] ;
  wire \th0_reg[6] ;
  wire [7:0]\th0_reg[7] ;
  wire \th0_reg[7]_0 ;
  wire \tl0_reg[3] ;
  wire \tl0_reg[3]_0 ;
  wire \tl1_reg[1] ;
  wire \tl1_reg[2] ;
  wire \tl1_reg[3] ;
  wire \tl1_reg[3]_0 ;
  wire \tl1_reg[4] ;
  wire [0:0]\tmod_reg[1] ;
  wire [3:0]\tmod_reg[5] ;
  wire \tmp_div[1]_i_4_n_0 ;
  wire \tmp_div[1]_i_5_n_0 ;
  wire \tmp_div[1]_i_6_n_0 ;
  wire \tmp_div[1]_i_7_n_0 ;
  wire [0:0]\tmp_rem_reg[5] ;
  wire [0:0]\tmp_rem_reg[6] ;
  wire wait_data_inv_i_2;
  wire wait_data_reg_inv;
  wire wait_data_reg_inv_0;
  wire wait_data_reg_inv_1;
  wire wr0;
  wire wr0_0;
  wire \wr_addr_reg[0]_i_2_n_0 ;
  wire \wr_addr_reg[0]_i_3_n_0 ;
  wire \wr_addr_reg[1] ;
  wire \wr_addr_reg[2] ;
  wire \wr_addr_reg[3]_i_1_0 ;
  wire \wr_addr_reg[3]_i_2_n_0 ;
  wire \wr_addr_reg[4]_i_1_0 ;
  wire [2:0]\wr_addr_reg[4]_i_1_1 ;
  wire [2:0]\wr_addr_reg[4]_i_1_2 ;
  wire \wr_addr_reg[4]_i_2_n_0 ;
  wire \wr_addr_reg[5] ;
  wire \wr_addr_reg[6] ;
  wire \wr_addr_reg[7] ;
  wire wr_bit_r;
  wire wr_bit_r_reg;
  wire wr_bit_r_reg_0;
  wire wr_bit_r_reg_1;
  wire wr_bit_r_reg_10;
  wire wr_bit_r_reg_11;
  wire wr_bit_r_reg_12;
  wire wr_bit_r_reg_13;
  wire wr_bit_r_reg_14;
  wire wr_bit_r_reg_15;
  wire wr_bit_r_reg_16;
  wire wr_bit_r_reg_17;
  wire wr_bit_r_reg_2;
  wire wr_bit_r_reg_3;
  wire wr_bit_r_reg_4;
  wire wr_bit_r_reg_5;
  wire wr_bit_r_reg_6;
  wire wr_bit_r_reg_7;
  wire wr_bit_r_reg_8;
  wire wr_bit_r_reg_9;
  wire \wr_data_r_reg[2] ;
  wire \wr_data_r_reg[2]_0 ;
  wire \wr_data_r_reg[3] ;
  wire \wr_data_r_reg[3]_0 ;
  wire wr_reg_0;
  wire wr_reg_1;
  wire wr_sbuf;
  wire \wr_sfr_reg[0]_0 ;
  wire [7:0]\wr_sfr_reg[0]_1 ;
  wire \wr_sfr_reg[0]_2 ;
  wire \wr_sfr_reg[1]_0 ;
  wire \wr_sfr_reg[1]_1 ;
  wire \wr_sfr_reg[1]_2 ;
  wire [7:0]\wr_sfr_reg[1]_3 ;
  wire [0:0]\wr_sfr_reg[1]_4 ;
  wire \wr_sfr_reg[1]_5 ;
  wire \wr_sfr_reg[1]_6 ;
  wire [1:0]\wr_sfr_reg[1]_7 ;
  wire \wr_sfr_reg_n_0_[0] ;
  wire [3:2]\NLW_iadr_t_reg[13]_i_16_CO_UNCONNECTED ;
  wire [3:3]\NLW_iadr_t_reg[13]_i_16_O_UNCONNECTED ;
  wire [3:2]\NLW_iadr_t_reg[13]_i_17_CO_UNCONNECTED ;
  wire [3:3]\NLW_iadr_t_reg[13]_i_17_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \alu_op_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\alu_op_reg[3]_9 [0]),
        .Q(\alu_op_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \alu_op_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\alu_op_reg[3]_9 [1]),
        .Q(\alu_op_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \alu_op_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\alu_op_reg[3]_9 [2]),
        .Q(\alu_op_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \alu_op_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\alu_op_reg[3]_9 [3]),
        .Q(\alu_op_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'h96696996FFFFFFFF)) 
    bit_out_i_11
       (.I0(bit_out_i_25_n_0),
        .I1(bit_out_i_26_n_0),
        .I2(bit_out_i_27_n_0),
        .I3(bit_out_i_28_n_0),
        .I4(bit_out_i_29_n_0),
        .I5(bit_out_i_3),
        .O(\bit_select[0]_i_2 ));
  LUT6 #(
    .INIT(64'h20AA20AA20AAEFAA)) 
    bit_out_i_110
       (.I0(\pcon_reg[0] ),
        .I1(\iadr_t[9]_i_2_n_0 ),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\cycle[1]_i_3_n_0 ),
        .I4(\dat0[0]_i_24_0 ),
        .I5(\buff[0][3]_i_12_n_0 ),
        .O(bit_out_i_110_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    bit_out_i_18
       (.I0(\wr_sfr_reg[1]_4 ),
        .I1(\wr_sfr_reg_n_0_[0] ),
        .I2(state1),
        .I3(bit_out_i_5),
        .I4(\data_reg[4] ),
        .I5(bit_out_i_5_0),
        .O(\wr_sfr_reg[1]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bit_out_i_22
       (.I0(\wr_sfr_reg_n_0_[0] ),
        .I1(state1),
        .O(\wr_sfr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h88888888B8B8BBB8)) 
    bit_out_i_25
       (.I0(\alu_op_reg[3]_6 ),
        .I1(\data_out[5]_i_2__0_n_0 ),
        .I2(bit_out_i_11_2),
        .I3(bit_out_i_11_3),
        .I4(\alu_op_reg[0]_0 ),
        .I5(bit_out_i_41_n_0),
        .O(bit_out_i_25_n_0));
  LUT6 #(
    .INIT(64'h0F11F0110FEEF0EE)) 
    bit_out_i_26
       (.I0(bit_out_i_42_n_0),
        .I1(\data_out[5]_i_3_n_0 ),
        .I2(des2[5]),
        .I3(\data_out[5]_i_2__0_n_0 ),
        .I4(\alu_op_reg[3]_5 ),
        .I5(bit_out_i_43_n_0),
        .O(bit_out_i_26_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B888B888)) 
    bit_out_i_27
       (.I0(\alu_op_reg[0]_2 ),
        .I1(\data_out[5]_i_2__0_n_0 ),
        .I2(bit_out_i_44_n_0),
        .I3(bit_out_i_11_0),
        .I4(\alu_op_reg[0]_0 ),
        .I5(bit_out_i_11_1),
        .O(bit_out_i_27_n_0));
  LUT6 #(
    .INIT(64'h0F0FEE11F0F0EE11)) 
    bit_out_i_28
       (.I0(bit_out_i_47_n_0),
        .I1(bit_out_i_48_n_0),
        .I2(\alu_op_reg[2]_0 ),
        .I3(bit_out_i_49_n_0),
        .I4(\data_out[5]_i_2__0_n_0 ),
        .I5(\alu_op_reg[2]_1 ),
        .O(bit_out_i_28_n_0));
  LUT6 #(
    .INIT(64'hCA3ACA3A3535CA3A)) 
    bit_out_i_29
       (.I0(bit_out_i_50_n_0),
        .I1(des2[1]),
        .I2(\data_out[5]_i_2__0_n_0 ),
        .I3(des2[0]),
        .I4(bit_out_i_51_n_0),
        .I5(bit_out_i_52_n_0),
        .O(bit_out_i_29_n_0));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    bit_out_i_37
       (.I0(\alu_op_reg[1]_0 ),
        .I1(\alu_op_reg[3]_4 ),
        .I2(bit_out_reg_i_19_0),
        .I3(des1[0]),
        .I4(bit_out_i_3),
        .I5(\alu_op_reg[1]_1 ),
        .O(bit_out_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_38
       (.I0(\alu_op_reg[3]_0 ),
        .I1(\alu_op_reg[3]_1 ),
        .I2(bit_out_reg_i_19_0),
        .I3(\alu_op_reg[3]_2 ),
        .I4(bit_out_i_3),
        .I5(\alu_op_reg[3]_3 ),
        .O(bit_out_i_38_n_0));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    bit_out_i_41
       (.I0(\wr_sfr_reg[1]_2 ),
        .I1(\iadr_t[6]_i_6_n_0 ),
        .I2(\cycle[1]_i_3_n_0 ),
        .I3(\iadr_t[6]_i_5_n_0 ),
        .I4(\cycle[1]_i_2_n_0 ),
        .I5(bit_out_reg_i_69_n_0),
        .O(bit_out_i_41_n_0));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    bit_out_i_42
       (.I0(bit_out_i_70_n_0),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(bit_out_i_71_n_0),
        .I3(\wr_sfr_reg[1]_2 ),
        .I4(\data_out_reg[7]_1 [5]),
        .I5(\data_out_reg[5]_0 ),
        .O(bit_out_i_42_n_0));
  LUT6 #(
    .INIT(64'h4445554544444444)) 
    bit_out_i_43
       (.I0(bit_out_i_72_n_0),
        .I1(bit_out_i_26_0),
        .I2(bit_out_i_71_n_0),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(bit_out_i_70_n_0),
        .I5(\data_out_reg[4]_0 ),
        .O(bit_out_i_43_n_0));
  LUT6 #(
    .INIT(64'hAAAAABFBFFFFABFB)) 
    bit_out_i_44
       (.I0(\wr_sfr_reg[1]_2 ),
        .I1(\iadr_t[7]_i_5_n_0 ),
        .I2(\cycle[1]_i_3_n_0 ),
        .I3(\iadr_t[7]_i_4_n_0 ),
        .I4(\cycle[1]_i_2_n_0 ),
        .I5(bit_out_reg_i_74_n_0),
        .O(bit_out_i_44_n_0));
  LUT6 #(
    .INIT(64'hB800B800FF000000)) 
    bit_out_i_47
       (.I0(bit_out_i_70_n_0),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(bit_out_i_71_n_0),
        .I3(\wr_sfr_reg[1]_2 ),
        .I4(\data_out_reg[7]_1 [3]),
        .I5(\dat0[0]_i_18_0 ),
        .O(bit_out_i_47_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    bit_out_i_48
       (.I0(des_acc[3]),
        .I1(\wr_sfr_reg[1]_2 ),
        .O(bit_out_i_48_n_0));
  LUT6 #(
    .INIT(64'h4445554544444444)) 
    bit_out_i_49
       (.I0(\data_out[2]_i_3_n_0 ),
        .I1(\data_out_reg[2] ),
        .I2(bit_out_i_71_n_0),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(bit_out_i_70_n_0),
        .I5(\data_out_reg[2]_0 ),
        .O(bit_out_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF54045555)) 
    bit_out_i_50
       (.I0(\data_out_reg[1] ),
        .I1(bit_out_i_71_n_0),
        .I2(\cycle[1]_i_2_n_0 ),
        .I3(bit_out_i_70_n_0),
        .I4(\data_out_reg[1]_0 ),
        .I5(\data_out[1]_i_4_n_0 ),
        .O(bit_out_i_50_n_0));
  LUT6 #(
    .INIT(64'h47FF47FF00FFFFFF)) 
    bit_out_i_51
       (.I0(bit_out_i_70_n_0),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(bit_out_i_71_n_0),
        .I3(\wr_sfr_reg[1]_2 ),
        .I4(\data_out_reg[7]_1 [0]),
        .I5(\data_out_reg[0] ),
        .O(bit_out_i_51_n_0));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    bit_out_i_52
       (.I0(\wr_sfr_reg_n_0_[0] ),
        .I1(state1),
        .I2(\wr_sfr_reg[1]_4 ),
        .I3(\wr_sfr_reg[1]_2 ),
        .I4(des_acc[0]),
        .O(bit_out_i_52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h440F0F0F)) 
    bit_out_i_70
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(bit_out_i_110_n_0),
        .I2(buff_reg_0_63_0_2_i_30_n_0),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(state1),
        .O(bit_out_i_70_n_0));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    bit_out_i_71
       (.I0(buff_reg_0_63_0_2_i_31_n_0),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(state1),
        .I3(buff_reg_0_63_0_2_i_44_n_0),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(buff_reg_0_63_0_2_i_43_n_0),
        .O(bit_out_i_71_n_0));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    bit_out_i_72
       (.I0(\iadr_t[4]_i_4_n_0 ),
        .I1(\cycle[1]_i_3_n_0 ),
        .I2(\iadr_t[4]_i_5_n_0 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(\iadr_t_reg[4]_i_3_n_0 ),
        .I5(\wr_sfr_reg[1]_2 ),
        .O(bit_out_i_72_n_0));
  LUT5 #(
    .INIT(32'hC500C5FF)) 
    bit_out_i_76
       (.I0(bit_out_i_56),
        .I1(des1[0]),
        .I2(\ri_r_reg[1] ),
        .I3(\ram_rd_sel_r_reg[0]_0 ),
        .I4(bit_out_i_56_0),
        .O(\ram_rd_sel_r_reg[0]_2 ));
  MUXF7 bit_out_reg_i_19
       (.I0(bit_out_i_37_n_0),
        .I1(bit_out_i_38_n_0),
        .O(bit_out_i_38_0),
        .S(rd_addr));
  MUXF7 bit_out_reg_i_69
       (.I0(\iadr_t[6]_i_4_n_0 ),
        .I1(\iadr_t[6]_i_3_n_0 ),
        .O(bit_out_reg_i_69_n_0),
        .S(\cycle[1]_i_3_n_0 ));
  MUXF7 bit_out_reg_i_74
       (.I0(\iadr_t[7]_i_3_n_0 ),
        .I1(\iadr_t[7]_i_2_n_0 ),
        .O(bit_out_reg_i_74_n_0),
        .S(\cycle[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \bit_select[2]_i_3 
       (.I0(\bit_select_reg[2] ),
        .I1(\alu_op_reg[1]_0 ),
        .I2(\ri_r_reg[1] ),
        .I3(\ram_rd_sel_r_reg[0]_0 ),
        .I4(\bit_select_reg[2]_0 ),
        .O(\ram_rd_sel_r_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \bit_select[2]_i_6 
       (.I0(Q[0]),
        .I1(state1),
        .I2(\ram_rd_sel_r_reg[0]_3 ),
        .O(\ram_rd_sel_r_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB42B151A)) 
    \buff[0][0]_i_1 
       (.I0(\buff[0][3]_i_5_n_0 ),
        .I1(\src_sel2_reg[0]_5 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(\pcon_reg[0] ),
        .I4(\buff[0][3]_i_7_n_0 ),
        .O(des1[0]));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \buff[0][0]_i_2 
       (.I0(\iadr_t_reg[8]_0 ),
        .I1(src_sel2[0]),
        .I2(op2_r[0]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [0]),
        .O(\src_sel2_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][1]_i_1 
       (.I0(\alu_op_reg[1]_1 ),
        .O(des1[1]));
  LUT6 #(
    .INIT(64'h34F70734FCF3CCC3)) 
    \buff[0][1]_i_2 
       (.I0(\buff[0][1]_i_3_n_0 ),
        .I1(\buff[0][3]_i_5_n_0 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(src1[0]),
        .I4(\src_sel2_reg[0]_6 ),
        .I5(\buff[0][3]_i_7_n_0 ),
        .O(\alu_op_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buff[0][1]_i_3 
       (.I0(\buff_reg[0][3]_i_13_n_7 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff_reg[0][3]_i_11_n_7 ),
        .O(\buff[0][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][2]_i_1 
       (.I0(\alu_op_reg[1]_0 ),
        .O(des1[2]));
  LUT6 #(
    .INIT(64'hB029BF29053A053A)) 
    \buff[0][3]_i_1 
       (.I0(src1[2]),
        .I1(\src_sel2_reg[0]_7 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(\buff[0][3]_i_5_n_0 ),
        .I4(\buff[0][3]_i_6_n_0 ),
        .I5(\buff[0][3]_i_7_n_0 ),
        .O(des1[3]));
  LUT6 #(
    .INIT(64'h00F0F0F050503030)) 
    \buff[0][3]_i_10 
       (.I0(sub1_carry__0_i_12_0[2]),
        .I1(sub1_carry__0_i_12_0[9]),
        .I2(\src_sel1_reg[2]_0 [2]),
        .I3(sub1_carry__0_i_12_1[2]),
        .I4(\src_sel1_reg[2]_0 [0]),
        .I5(\src_sel1_reg[2]_0 [1]),
        .O(\buff[0][3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h111111115F555FFF)) 
    \buff[0][3]_i_12 
       (.I0(cy_sel),
        .I1(cy),
        .I2(sfr_bit),
        .I3(pc_wr_r_i_34_0),
        .I4(pc_wr_r_i_34_1),
        .I5(\cy_sel_reg[0]_0 ),
        .O(\buff[0][3]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][3]_i_14 
       (.I0(src1[3]),
        .O(\oc8051_alu1/data5 [4]));
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][3]_i_15 
       (.I0(src1[2]),
        .O(\buff[0][3]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][3]_i_16 
       (.I0(src1[1]),
        .O(\buff[0][3]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][3]_i_17 
       (.I0(src1[0]),
        .O(\buff[0][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \buff[0][3]_i_2 
       (.I0(\buff[0][3]_i_8_n_0 ),
        .I1(\pcon_reg[3] ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[3]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(\buff[0][3]_i_10_n_0 ),
        .O(src1[2]));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \buff[0][3]_i_20 
       (.I0(sub1_carry_i_19_n_0),
        .I1(\iadr_t_reg[9]_i_10_2 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[4]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry_i_21_n_0),
        .O(\buff[0][3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \buff[0][3]_i_21 
       (.I0(\buff[0][3]_i_8_n_0 ),
        .I1(\pcon_reg[3] ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[3]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(\buff[0][3]_i_10_n_0 ),
        .O(\buff[0][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \buff[0][3]_i_22 
       (.I0(sub1_carry_i_17_n_0),
        .I1(\iadr_t_reg[9]_i_10_1 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[2]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry_i_18_n_0),
        .O(\buff[0][3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \buff[0][3]_i_23 
       (.I0(sub1_carry_i_22_n_0),
        .I1(\iadr_t_reg[9]_i_10_0 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[1]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry_i_23_n_0),
        .O(\buff[0][3]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \buff[0][3]_i_3 
       (.I0(\pcon_reg[3] ),
        .I1(src_sel2[0]),
        .I2(op2_r[3]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [3]),
        .O(\src_sel2_reg[0]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hC0080040)) 
    \buff[0][3]_i_4 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(state1),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[0] ),
        .O(\buff[0][3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10008A00)) 
    \buff[0][3]_i_5 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[0] ),
        .O(\buff[0][3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \buff[0][3]_i_6 
       (.I0(\buff_reg[0][3]_i_11_n_5 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff_reg[0][3]_i_13_n_5 ),
        .O(\buff[0][3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h600000A0)) 
    \buff[0][3]_i_7 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .O(\buff[0][3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \buff[0][3]_i_8 
       (.I0(\src_sel1_reg[2]_0 [2]),
        .I1(\src_sel1_reg[2]_0 [1]),
        .I2(\data_out_reg[7]_1 [3]),
        .I3(\src_sel1_reg[2]_0 [0]),
        .I4(op3_r[3]),
        .O(\buff[0][3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][4]_i_1 
       (.I0(\alu_op_reg[3]_2 ),
        .O(des1[4]));
  LUT5 #(
    .INIT(32'hF2F0FE0F)) 
    \buff[0][4]_i_3 
       (.I0(\src_sel2_reg[0]_2 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff[0][3]_i_5_n_0 ),
        .I3(\buff[0][3]_i_4_n_0 ),
        .I4(src1[3]),
        .O(\buff[0][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3407F734)) 
    \buff[0][4]_i_4 
       (.I0(\buff[0][4]_i_5_n_0 ),
        .I1(\buff[0][3]_i_5_n_0 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(\src_sel2_reg[0]_2 ),
        .I4(src1[3]),
        .O(\buff[0][4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \buff[0][4]_i_5 
       (.I0(\buff_reg[0][3]_i_13_n_4 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff_reg[0][3]_i_11_n_4 ),
        .O(\buff[0][4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][5]_i_1 
       (.I0(\alu_op_reg[3]_3 ),
        .O(des1[5]));
  LUT5 #(
    .INIT(32'hF2F0FE0F)) 
    \buff[0][5]_i_3 
       (.I0(\src_sel2_reg[0]_3 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff[0][3]_i_5_n_0 ),
        .I3(\buff[0][3]_i_4_n_0 ),
        .I4(src1[4]),
        .O(\buff[0][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h34F70734)) 
    \buff[0][5]_i_4 
       (.I0(\buff[0][5]_i_5_n_0 ),
        .I1(\buff[0][3]_i_5_n_0 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(src1[4]),
        .I4(\src_sel2_reg[0]_3 ),
        .O(\buff[0][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buff[0][5]_i_5 
       (.I0(\iadr_t_reg[7]_i_11_n_7 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\iadr_t_reg[7]_i_12_n_7 ),
        .O(\buff[0][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][6]_i_1 
       (.I0(\alu_op_reg[3]_0 ),
        .O(des1[6]));
  LUT5 #(
    .INIT(32'hF2F0FE0F)) 
    \buff[0][6]_i_3 
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff[0][3]_i_5_n_0 ),
        .I3(\buff[0][3]_i_4_n_0 ),
        .I4(src1[5]),
        .O(\buff[0][6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h34F70734)) 
    \buff[0][6]_i_4 
       (.I0(\buff[0][6]_i_5_n_0 ),
        .I1(\buff[0][3]_i_5_n_0 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(src1[5]),
        .I4(\tmp_div[1]_i_6_n_0 ),
        .O(\buff[0][6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \buff[0][6]_i_5 
       (.I0(\iadr_t_reg[7]_i_11_n_6 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\iadr_t_reg[7]_i_12_n_6 ),
        .O(\buff[0][6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buff[0][7]_i_2 
       (.I0(\alu_op_reg[3]_1 ),
        .O(des1[7]));
  LUT5 #(
    .INIT(32'hF2F0FE0F)) 
    \buff[0][7]_i_5 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff[0][3]_i_5_n_0 ),
        .I3(\buff[0][3]_i_4_n_0 ),
        .I4(src1[6]),
        .O(\buff[0][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h3407F734)) 
    \buff[0][7]_i_6 
       (.I0(\iadr_t[7]_i_7_n_0 ),
        .I1(\buff[0][3]_i_5_n_0 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(\tmp_div[1]_i_7_n_0 ),
        .I4(src1[6]),
        .O(\buff[0][7]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff_reg[0][3]_i_11 
       (.CI(1'b0),
        .CO({\buff_reg[0][3]_i_11_n_0 ,\buff_reg[0][3]_i_11_n_1 ,\buff_reg[0][3]_i_11_n_2 ,\buff_reg[0][3]_i_11_n_3 }),
        .CYINIT(\pcon_reg[0] ),
        .DI(src1[3:0]),
        .O({\buff_reg[0][3]_i_11_n_4 ,\buff_reg[0][3]_i_11_n_5 ,\buff_reg[0][3]_i_11_n_6 ,\buff_reg[0][3]_i_11_n_7 }),
        .S({\oc8051_alu1/data5 [4],\buff[0][3]_i_15_n_0 ,\buff[0][3]_i_16_n_0 ,\buff[0][3]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \buff_reg[0][3]_i_13 
       (.CI(1'b0),
        .CO({\buff_reg[0][3]_i_13_n_0 ,\buff_reg[0][3]_i_13_n_1 ,\buff_reg[0][3]_i_13_n_2 ,\buff_reg[0][3]_i_13_n_3 }),
        .CYINIT(\pcon_reg[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buff_reg[0][3]_i_13_n_4 ,\buff_reg[0][3]_i_13_n_5 ,\buff_reg[0][3]_i_13_n_6 ,\buff_reg[0][3]_i_13_n_7 }),
        .S({\buff[0][3]_i_20_n_0 ,\buff[0][3]_i_21_n_0 ,\buff[0][3]_i_22_n_0 ,\buff[0][3]_i_23_n_0 }));
  MUXF7 \buff_reg[0][4]_i_2 
       (.I0(\buff[0][4]_i_3_n_0 ),
        .I1(\buff[0][4]_i_4_n_0 ),
        .O(\alu_op_reg[3]_2 ),
        .S(\buff[0][3]_i_7_n_0 ));
  MUXF7 \buff_reg[0][5]_i_2 
       (.I0(\buff[0][5]_i_3_n_0 ),
        .I1(\buff[0][5]_i_4_n_0 ),
        .O(\alu_op_reg[3]_3 ),
        .S(\buff[0][3]_i_7_n_0 ));
  MUXF7 \buff_reg[0][6]_i_2 
       (.I0(\buff[0][6]_i_3_n_0 ),
        .I1(\buff[0][6]_i_4_n_0 ),
        .O(\alu_op_reg[3]_0 ),
        .S(\buff[0][3]_i_7_n_0 ));
  MUXF7 \buff_reg[0][7]_i_4 
       (.I0(\buff[0][7]_i_5_n_0 ),
        .I1(\buff[0][7]_i_6_n_0 ),
        .O(\alu_op_reg[3]_1 ),
        .S(\buff[0][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0BFBFAFA0B0B0)) 
    buff_reg_0_63_0_2_i_17
       (.I0(buff_reg_0_63_0_2_i_29_n_0),
        .I1(buff_reg_0_63_0_2_i_30_n_0),
        .I2(\cycle[1]_i_2_n_0 ),
        .I3(buff_reg_0_63_0_2_i_31_n_0),
        .I4(\cycle[1]_i_3_n_0 ),
        .I5(buff_reg_0_63_0_2_i_32_n_0),
        .O(\alu_op_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h34F70734FCF3CCC3)) 
    buff_reg_0_63_0_2_i_22
       (.I0(buff_reg_0_63_0_2_i_35_n_0),
        .I1(\buff[0][3]_i_5_n_0 ),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(src1[1]),
        .I4(\src_sel2_reg[0]_4 ),
        .I5(\buff[0][3]_i_7_n_0 ),
        .O(\alu_op_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F055F0CC)) 
    buff_reg_0_63_0_2_i_26
       (.I0(D[1]),
        .I1(\data_reg[4]_0 ),
        .I2(buff_reg_0_63_0_2_i_38_n_0),
        .I3(buff_reg_0_63_0_2_i_9),
        .I4(\ram_rd_sel_r_reg[0]_0 ),
        .I5(rd_ind_reg),
        .O(\data_reg[4] ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    buff_reg_0_63_0_2_i_29
       (.I0(buff_reg_0_63_0_2_i_39_n_0),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\pcon_reg[0] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(state1),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(buff_reg_0_63_0_2_i_29_n_0));
  LUT5 #(
    .INIT(32'h8C80BFB3)) 
    buff_reg_0_63_0_2_i_3
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(\wr_data_r_reg[2] ),
        .I3(\wr_data_r_reg[2]_0 ),
        .I4(\alu_op_reg[1]_0 ),
        .O(wr_bit_r_reg_8));
  LUT6 #(
    .INIT(64'h4C7343404C734373)) 
    buff_reg_0_63_0_2_i_30
       (.I0(src1[6]),
        .I1(\iadr_t[9]_i_2_n_0 ),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\dat0[0]_i_24_0 ),
        .I4(buff_reg_0_63_0_2_i_41_n_0),
        .I5(\cy_sel_reg[0]_0 ),
        .O(buff_reg_0_63_0_2_i_30_n_0));
  LUT6 #(
    .INIT(64'h2F002000C000C000)) 
    buff_reg_0_63_0_2_i_31
       (.I0(\dat0[0]_i_24_0 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(state1),
        .I4(buff_reg_0_63_0_2_i_42_n_0),
        .I5(\alu_op_reg_n_0_[0] ),
        .O(buff_reg_0_63_0_2_i_31_n_0));
  MUXF7 buff_reg_0_63_0_2_i_32
       (.I0(buff_reg_0_63_0_2_i_43_n_0),
        .I1(buff_reg_0_63_0_2_i_44_n_0),
        .O(buff_reg_0_63_0_2_i_32_n_0),
        .S(\iadr_t[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_0_2_i_35
       (.I0(\buff_reg[0][3]_i_13_n_6 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff_reg[0][3]_i_11_n_6 ),
        .O(buff_reg_0_63_0_2_i_35_n_0));
  LUT5 #(
    .INIT(32'h2EFF2E00)) 
    buff_reg_0_63_0_2_i_38
       (.I0(\alu_op_reg[3]_2 ),
        .I1(\sp_reg[7]_0 ),
        .I2(\sp_reg[7]_1 [0]),
        .I3(\ram_rd_sel_r_reg[0]_0 ),
        .I4(buff_reg_0_63_0_2_i_26_0),
        .O(buff_reg_0_63_0_2_i_38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    buff_reg_0_63_0_2_i_39
       (.I0(\cy_sel_reg[0]_0 ),
        .I1(\dat0[0]_i_24_0 ),
        .I2(cy),
        .I3(cy_sel),
        .O(buff_reg_0_63_0_2_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h07)) 
    buff_reg_0_63_0_2_i_41
       (.I0(\cy_sel_reg[0]_0 ),
        .I1(cy),
        .I2(cy_sel),
        .O(buff_reg_0_63_0_2_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFAF8F5F7)) 
    buff_reg_0_63_0_2_i_42
       (.I0(src1[6]),
        .I1(src1[4]),
        .I2(\src_sel1_reg[0]_1 ),
        .I3(src1[5]),
        .I4(\buff[0][3]_i_12_n_0 ),
        .O(buff_reg_0_63_0_2_i_42_n_0));
  LUT6 #(
    .INIT(64'h8E0000008EFFFFFF)) 
    buff_reg_0_63_0_2_i_43
       (.I0(buff_reg_0_63_0_2_i_47_n_0),
        .I1(src1[6]),
        .I2(\tmp_div[1]_i_7_n_0 ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(state1),
        .I5(\buff[0][3]_i_12_n_0 ),
        .O(buff_reg_0_63_0_2_i_43_n_0));
  LUT5 #(
    .INIT(32'h00070777)) 
    buff_reg_0_63_0_2_i_44
       (.I0(state1),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\tmp_div[1]_i_7_n_0 ),
        .I3(src1[6]),
        .I4(buff_reg_0_63_0_2_i_48_n_0),
        .O(buff_reg_0_63_0_2_i_44_n_0));
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    buff_reg_0_63_0_2_i_47
       (.I0(\iadr_t[7]_i_16_n_0 ),
        .I1(src1[4]),
        .I2(\src_sel2_reg[0]_3 ),
        .I3(src1[5]),
        .I4(\tmp_div[1]_i_6_n_0 ),
        .O(buff_reg_0_63_0_2_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    buff_reg_0_63_0_2_i_48
       (.I0(\iadr_t[7]_i_15_n_0 ),
        .I1(\src_sel2_reg[0]_3 ),
        .I2(src1[4]),
        .I3(\tmp_div[1]_i_6_n_0 ),
        .I4(src1[5]),
        .O(buff_reg_0_63_0_2_i_48_n_0));
  LUT5 #(
    .INIT(32'hB8FCB830)) 
    buff_reg_0_63_3_5_i_1
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des1[3]),
        .I3(\wr_data_r_reg[3] ),
        .I4(\wr_data_r_reg[3]_0 ),
        .O(wr_bit_r_reg_9));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    buff_reg_128_191_0_2_i_1
       (.I0(buff_reg_192_255_7_7),
        .I1(rd_en_r_i_5[1]),
        .I2(wr_reg_0),
        .I3(state1),
        .I4(\ram_wr_sel_reg[2]_0 [1]),
        .I5(\ram_wr_sel_reg[2]_0 [2]),
        .O(wr_reg_1));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    buff_reg_192_255_0_2_i_1
       (.I0(\ram_wr_sel_reg[2]_0 [2]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(state1),
        .I3(wr_reg_0),
        .I4(buff_reg_192_255_7_7),
        .I5(rd_en_r_i_5[1]),
        .O(\ram_wr_sel_reg[2]_5 ));
  FDCE #(
    .INIT(1'b0)) 
    \cy_sel_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\cy_sel_reg[1]_0 [0]),
        .Q(\cy_sel_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cy_sel_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\cy_sel_reg[1]_0 [1]),
        .Q(cy_sel));
  LUT2 #(
    .INIT(4'h8)) 
    \cycle[1]_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(state1),
        .O(\cycle[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cycle[1]_i_2__0 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(state1),
        .O(\alu_op_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cycle[1]_i_3 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(state1),
        .O(\cycle[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9669966996696996)) 
    \dat0[0]_i_10 
       (.I0(bit_out_i_27_n_0),
        .I1(\dat0[0]_i_18_n_0 ),
        .I2(\data_out[2]_i_2_n_0 ),
        .I3(\wr_sfr_reg[0]_1 [1]),
        .I4(\dat0[0]_i_19_n_0 ),
        .I5(\data_out[0]_i_2_n_0 ),
        .O(\wr_sfr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h65669A6665999A99)) 
    \dat0[0]_i_11 
       (.I0(bit_out_i_25_n_0),
        .I1(\data_out[4]_i_2_n_0 ),
        .I2(\alu_op_reg[3]_5 ),
        .I3(\data_out[5]_i_2__0_n_0 ),
        .I4(des2[5]),
        .I5(\dat0[0]_i_20_n_0 ),
        .O(\data_out_reg[4] ));
  LUT6 #(
    .INIT(64'hBB888B8BBBBB8B8B)) 
    \dat0[0]_i_18 
       (.I0(\alu_op_reg[2]_0 ),
        .I1(\data_out[5]_i_2__0_n_0 ),
        .I2(des_acc[3]),
        .I3(\dat0[0]_i_10_0 ),
        .I4(\wr_sfr_reg[1]_2 ),
        .I5(\dat0[0]_i_24_n_0 ),
        .O(\dat0[0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \dat0[0]_i_19 
       (.I0(\wr_sfr_reg_n_0_[0] ),
        .I1(state1),
        .I2(\wr_sfr_reg[1]_4 ),
        .I3(des2[0]),
        .O(\dat0[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFC055553F005555)) 
    \dat0[0]_i_20 
       (.I0(wait_data_reg_inv),
        .I1(\data_out_reg[7] ),
        .I2(\dat0[0]_i_11_0 ),
        .I3(\data_out_reg[7]_1 [5]),
        .I4(\wr_sfr_reg[1]_2 ),
        .I5(\alu_op_reg[0]_0 ),
        .O(\dat0[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E2FFFFFFFF)) 
    \dat0[0]_i_24 
       (.I0(buff_reg_0_63_0_2_i_32_n_0),
        .I1(\cycle[1]_i_3_n_0 ),
        .I2(buff_reg_0_63_0_2_i_31_n_0),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(bit_out_i_70_n_0),
        .I5(\dat0[0]_i_18_0 ),
        .O(\dat0[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dat0[7]_i_15 
       (.I0(\data_reg[4] ),
        .I1(\dat0[7]_i_10 ),
        .O(\dat0[7]_i_8 ));
  LUT6 #(
    .INIT(64'h0000000003A00000)) 
    \dat0[7]_i_17 
       (.I0(\wr_sfr_reg[1]_1 ),
        .I1(\dat0[7]_i_26_n_0 ),
        .I2(\data_reg[4] ),
        .I3(\dat0[7]_i_10 ),
        .I4(bit_out_i_3),
        .I5(wait_data_inv_i_2),
        .O(\wr_sfr_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dat0[7]_i_26 
       (.I0(\psw_set_reg[1]_0 [1]),
        .I1(\psw_set_reg[1]_0 [0]),
        .O(\dat0[7]_i_26_n_0 ));
  MUXF7 \dat0_reg[2]_i_4 
       (.I0(\dat0[2]_i_2 ),
        .I1(\dat0[2]_i_2_0 ),
        .O(\scon_reg[2] ),
        .S(\data_reg[4] ));
  MUXF7 \dat0_reg[3]_i_4 
       (.I0(\dat0[3]_i_2 ),
        .I1(\dat0[3]_i_2_0 ),
        .O(\scon_reg[3] ),
        .S(\data_reg[4] ));
  MUXF7 \dat0_reg[4]_i_4 
       (.I0(\dat0[4]_i_2 ),
        .I1(\dat0[4]_i_2_0 ),
        .O(\scon_reg[4] ),
        .S(\data_reg[4] ));
  MUXF7 \dat0_reg[5]_i_4 
       (.I0(\dat0[5]_i_2 ),
        .I1(\dat0[5]_i_2_0 ),
        .O(\scon_reg[5] ),
        .S(\data_reg[4] ));
  MUXF7 \dat0_reg[6]_i_4 
       (.I0(\dat0[6]_i_2 ),
        .I1(\dat0[6]_i_2_0 ),
        .O(\scon_reg[6] ),
        .S(\data_reg[4] ));
  LUT6 #(
    .INIT(64'h7444744474777444)) 
    \data[2]_i_2 
       (.I0(\alu_op_reg[1]_0 ),
        .I1(\rn_r_reg[3] ),
        .I2(\alu_op_reg[0]_0 ),
        .I3(\data_reg[6]_0 ),
        .I4(\data[2]_i_3_n_0 ),
        .I5(\cycle[1]_i_2_n_0 ),
        .O(\alu_op_reg[3]_8 ));
  LUT6 #(
    .INIT(64'h1F11111111111111)) 
    \data[2]_i_3 
       (.I0(\data[2]_i_4_n_0 ),
        .I1(\cycle[1]_i_3_n_0 ),
        .I2(\data[2]_i_5_n_0 ),
        .I3(\src_sel2_reg[0]_5 ),
        .I4(\src_sel2_reg[0]_6 ),
        .I5(\src_sel2_reg[0]_2 ),
        .O(\data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB8BBBBB8BBBBB)) 
    \data[2]_i_4 
       (.I0(\data[2]_i_6_n_0 ),
        .I1(\iadr_t[9]_i_2_n_0 ),
        .I2(\alu_op_reg[0]_1 ),
        .I3(buff_reg_0_63_0_2_i_47_n_0),
        .I4(src1[6]),
        .I5(\tmp_div[1]_i_7_n_0 ),
        .O(\data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \data[2]_i_5 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(\tmp_div[1]_i_6_n_0 ),
        .I2(\src_sel2_reg[0]_4 ),
        .I3(\src_sel2_reg[0]_3 ),
        .I4(\iadr_t[9]_i_8_n_0 ),
        .I5(\src_sel2_reg[0]_7 ),
        .O(\data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBF80BFBFBFBF80BF)) 
    \data[2]_i_6 
       (.I0(\data[2]_i_4_0 ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(state1),
        .I3(buff_reg_0_63_0_2_i_48_n_0),
        .I4(src1[6]),
        .I5(\tmp_div[1]_i_7_n_0 ),
        .O(\data[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h88080000)) 
    \data[5]_i_4 
       (.I0(state1),
        .I1(wr_reg_0),
        .I2(\ram_wr_sel_reg[2]_0 [1]),
        .I3(\ram_wr_sel_reg[2]_0 [2]),
        .I4(wr_bit_r),
        .O(wait_data_reg_inv_1));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h5C5F5C50)) 
    \data[6]_i_1 
       (.I0(\alu_op_reg[3]_0 ),
        .I1(\data[6]_i_2_n_0 ),
        .I2(\data_reg[6]_1 ),
        .I3(\data_reg[6]_2 ),
        .I4(srcAc),
        .O(\data_reg[6] ));
  LUT6 #(
    .INIT(64'h8888B8B888B8B8B8)) 
    \data[6]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(\data_reg[6]_0 ),
        .I2(\data[6]_i_5_n_0 ),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(state1),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3F0FBFBF30008080)) 
    \data[6]_i_5 
       (.I0(\data[6]_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\data[6]_i_9_n_0 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(srcAc),
        .O(\data[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    \data[6]_i_8 
       (.I0(\iadr_t[3]_i_9_n_0 ),
        .I1(\src_sel2_reg[0]_4 ),
        .I2(src1[1]),
        .I3(\src_sel2_reg[0]_7 ),
        .I4(src1[2]),
        .O(\data[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \data[6]_i_9 
       (.I0(\iadr_t[3]_i_10_n_0 ),
        .I1(src1[1]),
        .I2(\src_sel2_reg[0]_4 ),
        .I3(src1[2]),
        .I4(\src_sel2_reg[0]_7 ),
        .O(\data[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \data[7]_i_1 
       (.I0(\alu_op_reg[3]_1 ),
        .I1(\rn_r_reg[3] ),
        .I2(\alu_op_reg[0]_0 ),
        .I3(\data_reg[7]_0 ),
        .I4(cy),
        .O(\data_reg[7] ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_hi[0]_i_1 
       (.I0(des2[0]),
        .I1(\wr_sfr_reg[1]_4 ),
        .I2(state1),
        .I3(\wr_sfr_reg_n_0_[0] ),
        .I4(des_acc[0]),
        .O(\wr_sfr_reg[1]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_hi[1]_i_1 
       (.I0(des2[1]),
        .I1(\wr_sfr_reg[1]_4 ),
        .I2(state1),
        .I3(\wr_sfr_reg_n_0_[0] ),
        .I4(des_acc[1]),
        .O(\wr_sfr_reg[1]_3 [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF4000)) 
    \data_hi[2]_i_1 
       (.I0(\alu_op_reg[2]_1 ),
        .I1(\wr_sfr_reg[1]_4 ),
        .I2(state1),
        .I3(\wr_sfr_reg_n_0_[0] ),
        .I4(des_acc[2]),
        .O(\wr_sfr_reg[1]_3 [2]));
  LUT5 #(
    .INIT(32'h7FFF4000)) 
    \data_hi[3]_i_1 
       (.I0(\alu_op_reg[2]_0 ),
        .I1(\wr_sfr_reg[1]_4 ),
        .I2(state1),
        .I3(\wr_sfr_reg_n_0_[0] ),
        .I4(des_acc[3]),
        .O(\wr_sfr_reg[1]_3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF4000)) 
    \data_hi[4]_i_1 
       (.I0(\alu_op_reg[3]_5 ),
        .I1(\wr_sfr_reg[1]_4 ),
        .I2(state1),
        .I3(\wr_sfr_reg_n_0_[0] ),
        .I4(des_acc[4]),
        .O(\wr_sfr_reg[1]_3 [4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hC5555555)) 
    \data_hi[5]_i_1 
       (.I0(wait_data_reg_inv),
        .I1(des2[5]),
        .I2(\wr_sfr_reg[1]_4 ),
        .I3(state1),
        .I4(\wr_sfr_reg_n_0_[0] ),
        .O(\wr_sfr_reg[1]_3 [5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h53333333)) 
    \data_hi[6]_i_1 
       (.I0(\alu_op_reg[3]_6 ),
        .I1(\alu_op_reg[1]_2 ),
        .I2(\wr_sfr_reg[1]_4 ),
        .I3(state1),
        .I4(\wr_sfr_reg_n_0_[0] ),
        .O(\wr_sfr_reg[1]_3 [6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF4000)) 
    \data_hi[7]_i_2 
       (.I0(\alu_op_reg[0]_2 ),
        .I1(\wr_sfr_reg[1]_4 ),
        .I2(state1),
        .I3(\wr_sfr_reg_n_0_[0] ),
        .I4(des_acc[7]),
        .O(\wr_sfr_reg[1]_3 [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_hi[7]_i_3 
       (.I0(\wr_sfr_reg[1]_4 ),
        .I1(state1),
        .I2(\wr_sfr_reg_n_0_[0] ),
        .O(\wr_sfr_reg[1]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000B000)) 
    \data_hi[7]_i_6 
       (.I0(\ram_wr_sel_reg[2]_0 [2]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(state1),
        .I3(wr_reg_0),
        .I4(wr_bit_r),
        .O(\ram_wr_sel_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \data_out[0]_i_1 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des_acc[0]),
        .I3(\ram_wr_sel_reg[2]_1 ),
        .I4(\data_out_reg[0]_0 ),
        .I5(b_reg[0]),
        .O(wr_bit_r_reg_16));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \data_out[0]_i_1__0 
       (.I0(\wr_sfr_reg_n_0_[0] ),
        .I1(state1),
        .I2(\wr_sfr_reg[1]_4 ),
        .I3(des2[0]),
        .I4(\data_out[0]_i_2_n_0 ),
        .O(\wr_sfr_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'h000000001B1B00FF)) 
    \data_out[0]_i_2 
       (.I0(\data_out_reg[0] ),
        .I1(\data_out_reg[7]_1 [0]),
        .I2(\alu_op_reg[0]_0 ),
        .I3(des_acc[0]),
        .I4(\wr_sfr_reg[1]_2 ),
        .I5(\data_out[5]_i_2__0_n_0 ),
        .O(\data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hB000)) 
    \data_out[0]_i_2__0 
       (.I0(\ram_wr_sel_reg[2]_0 [2]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(wr_reg_0),
        .I3(state1),
        .O(\ram_wr_sel_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[1]_i_1 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des_acc[1]),
        .I3(\data_out_reg[1]_1 ),
        .I4(b_reg[1]),
        .O(wr_bit_r_reg_15));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B888B8B)) 
    \data_out[1]_i_1__0 
       (.I0(des2[1]),
        .I1(\data_out[5]_i_2__0_n_0 ),
        .I2(\data_out_reg[1] ),
        .I3(\alu_op_reg[0]_0 ),
        .I4(\data_out_reg[1]_0 ),
        .I5(\data_out[1]_i_4_n_0 ),
        .O(\wr_sfr_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \data_out[1]_i_4 
       (.I0(\iadr_t_reg[1]_i_5_n_0 ),
        .I1(\cycle[1]_i_3_n_0 ),
        .I2(\iadr_t[1]_i_4_n_0 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(\data_out_reg[1]_i_5_n_0 ),
        .I5(\wr_sfr_reg[1]_2 ),
        .O(\data_out[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[2]_i_1 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des_acc[2]),
        .I3(\data_out_reg[2]_1 ),
        .I4(b_reg[2]),
        .O(wr_bit_r_reg_14));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[2]_i_1__0 
       (.I0(\data_out[2]_i_2_n_0 ),
        .O(\wr_sfr_reg[0]_1 [2]));
  LUT6 #(
    .INIT(64'h8B888B8B8B888B88)) 
    \data_out[2]_i_2 
       (.I0(\alu_op_reg[2]_1 ),
        .I1(\data_out[5]_i_2__0_n_0 ),
        .I2(\data_out[2]_i_3_n_0 ),
        .I3(\data_out_reg[2] ),
        .I4(\alu_op_reg[0]_0 ),
        .I5(\data_out_reg[2]_0 ),
        .O(\data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \data_out[2]_i_3 
       (.I0(\iadr_t[2]_i_4_n_0 ),
        .I1(\cycle[1]_i_3_n_0 ),
        .I2(\iadr_t[2]_i_5_n_0 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(\iadr_t_reg[2]_i_3_n_0 ),
        .I5(\wr_sfr_reg[1]_2 ),
        .O(\data_out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[3]_i_1 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des_acc[3]),
        .I3(\data_out_reg[3]_1 ),
        .I4(b_reg[3]),
        .O(wr_bit_r_reg_13));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h45557555)) 
    \data_out[3]_i_1__0 
       (.I0(\data_out[3]_i_2_n_0 ),
        .I1(\wr_sfr_reg_n_0_[0] ),
        .I2(state1),
        .I3(\wr_sfr_reg[1]_4 ),
        .I4(\alu_op_reg[2]_0 ),
        .O(\wr_sfr_reg[0]_1 [3]));
  LUT6 #(
    .INIT(64'h003F5555C0FF5555)) 
    \data_out[3]_i_2 
       (.I0(des_acc[3]),
        .I1(\data_out_reg[7] ),
        .I2(\data_out_reg[3] ),
        .I3(\data_out_reg[7]_1 [3]),
        .I4(\wr_sfr_reg[1]_2 ),
        .I5(\alu_op_reg[0]_0 ),
        .O(\data_out[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[4]_i_1 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des_acc[4]),
        .I3(\data_out_reg[4]_3 ),
        .I4(b_reg[4]),
        .O(wr_bit_r_reg_12));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF0040)) 
    \data_out[4]_i_1__0 
       (.I0(\wr_sfr_reg_n_0_[0] ),
        .I1(state1),
        .I2(\wr_sfr_reg[1]_4 ),
        .I3(\alu_op_reg[3]_5 ),
        .I4(\data_out[4]_i_2_n_0 ),
        .O(\wr_sfr_reg[0]_1 [4]));
  LUT6 #(
    .INIT(64'h4545550540405000)) 
    \data_out[4]_i_2 
       (.I0(\data_out[5]_i_2__0_n_0 ),
        .I1(\alu_op_reg[0]_0 ),
        .I2(\wr_sfr_reg[1]_2 ),
        .I3(\data_out_reg[7]_1 [4]),
        .I4(\data_out_reg[4]_0 ),
        .I5(des_acc[4]),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8B8B8BBB8BB)) 
    \data_out[5]_i_1 
       (.I0(des2[5]),
        .I1(\data_out[5]_i_2__0_n_0 ),
        .I2(\data_out[5]_i_3_n_0 ),
        .I3(\data_out_reg[5] ),
        .I4(\alu_op_reg[0]_0 ),
        .I5(\data_out_reg[5]_0 ),
        .O(\wr_sfr_reg[0]_1 [5]));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \data_out[5]_i_1__0 
       (.I0(wait_data_reg_inv),
        .I1(\alu_op_reg[0]_0 ),
        .I2(wr_bit_r),
        .I3(\data_out_reg[5]_1 ),
        .I4(b_reg[5]),
        .O(wr_bit_r_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_out[5]_i_2__0 
       (.I0(\wr_sfr_reg[1]_4 ),
        .I1(state1),
        .I2(\wr_sfr_reg_n_0_[0] ),
        .O(\data_out[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0404041515150415)) 
    \data_out[5]_i_3 
       (.I0(\wr_sfr_reg[1]_2 ),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(\iadr_t_reg[5]_i_6_n_0 ),
        .I3(\iadr_t[5]_i_5_n_0 ),
        .I4(\cycle[1]_i_3_n_0 ),
        .I5(\data_out[5]_i_6_n_0 ),
        .O(\data_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80A080808AAAAAAA)) 
    \data_out[5]_i_6 
       (.I0(\iadr_t[5]_i_3_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\data_out[5]_i_7_n_0 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\data_lo_reg[7] [5]),
        .O(\data_out[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF300030008FFF8F)) 
    \data_out[5]_i_7 
       (.I0(src1[5]),
        .I1(src1[6]),
        .I2(\buff[0][3]_i_12_n_0 ),
        .I3(\src_sel1_reg[0]_1 ),
        .I4(src1[3]),
        .I5(src1[4]),
        .O(\data_out[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h45557555)) 
    \data_out[6]_i_1 
       (.I0(\data_out[6]_i_2_n_0 ),
        .I1(\wr_sfr_reg_n_0_[0] ),
        .I2(state1),
        .I3(\wr_sfr_reg[1]_4 ),
        .I4(\alu_op_reg[3]_6 ),
        .O(\wr_sfr_reg[0]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \data_out[6]_i_1__0 
       (.I0(\alu_op_reg[1]_2 ),
        .I1(\alu_op_reg[0]_0 ),
        .I2(wr_bit_r),
        .I3(\data_out_reg[6]_0 ),
        .I4(b_reg[6]),
        .O(wr_bit_r_reg_0));
  LUT6 #(
    .INIT(64'h078F078FFFFF0000)) 
    \data_out[6]_i_2 
       (.I0(\data_out_reg[7] ),
        .I1(\data_out_reg[6] ),
        .I2(\data_out_reg[7]_1 [6]),
        .I3(\alu_op_reg[0]_0 ),
        .I4(\alu_op_reg[1]_2 ),
        .I5(\wr_sfr_reg[1]_2 ),
        .O(\data_out[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_out[7]_i_1 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des_acc[7]),
        .I3(\data_out_reg[7]_5 ),
        .I4(b_reg[7]),
        .O(wr_bit_r_reg_11));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h45557555)) 
    \data_out[7]_i_1__0 
       (.I0(\data_out[7]_i_2_n_0 ),
        .I1(\wr_sfr_reg_n_0_[0] ),
        .I2(state1),
        .I3(\wr_sfr_reg[1]_4 ),
        .I4(\alu_op_reg[0]_2 ),
        .O(\wr_sfr_reg[0]_1 [7]));
  LUT6 #(
    .INIT(64'h003F5555C0FF5555)) 
    \data_out[7]_i_2 
       (.I0(des_acc[7]),
        .I1(\data_out_reg[7] ),
        .I2(\data_out_reg[7]_0 ),
        .I3(\data_out_reg[7]_1 [7]),
        .I4(\wr_sfr_reg[1]_2 ),
        .I5(\alu_op_reg[0]_0 ),
        .O(\data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBF00BFBFBFBFBFBF)) 
    \data_out[7]_i_3__0 
       (.I0(\wr_sfr_reg[1]_4 ),
        .I1(\wr_sfr_reg_n_0_[0] ),
        .I2(state1),
        .I3(\data_out[1]_i_2__0 ),
        .I4(\ram_wr_sel_reg[2]_2 ),
        .I5(\data_out[1]_i_2__0_0 ),
        .O(\wr_sfr_reg[1]_2 ));
  MUXF7 \data_out_reg[1]_i_5 
       (.I0(\iadr_t[1]_i_3_n_0 ),
        .I1(\iadr_t[1]_i_2_n_0 ),
        .O(\data_out_reg[1]_i_5_n_0 ),
        .S(\cycle[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAFBFEAEAEFFF)) 
    \iadr_t[0]_i_1 
       (.I0(\iadr_t[0]_i_2_n_0 ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\iadr_t[0]_i_3_n_0 ),
        .I5(\iadr_t[0]_i_4_n_0 ),
        .O(des_acc[0]));
  LUT6 #(
    .INIT(64'h0333030000223322)) 
    \iadr_t[0]_i_2 
       (.I0(\data_lo_reg[7] [0]),
        .I1(\iadr_t[0]_i_5_n_0 ),
        .I2(\src_sel2_reg[0]_5 ),
        .I3(\iadr_t[9]_i_2_n_0 ),
        .I4(\pcon_reg[0] ),
        .I5(\alu_op_reg[0]_1 ),
        .O(\iadr_t[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h407C7F437C40437F)) 
    \iadr_t[0]_i_3 
       (.I0(\data_out[5]_i_3_0 [8]),
        .I1(\iadr_t[9]_i_2_n_0 ),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(\pcon_reg[0] ),
        .I5(\src_sel2_reg[0]_5 ),
        .O(\iadr_t[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF3F7F)) 
    \iadr_t[0]_i_4 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(state1),
        .I3(src1[0]),
        .I4(\iadr_t[0]_i_6_n_0 ),
        .I5(\iadr_t[0]_i_7_n_0 ),
        .O(\iadr_t[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40FFFFFF)) 
    \iadr_t[0]_i_5 
       (.I0(\pcon_reg[0] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(state1),
        .I5(\alu_op_reg_n_0_[3] ),
        .O(\iadr_t[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h88C00000)) 
    \iadr_t[0]_i_6 
       (.I0(\src_sel2_reg[0]_5 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(\pcon_reg[0] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(state1),
        .O(\iadr_t[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F5FFFDF)) 
    \iadr_t[0]_i_7 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(state1),
        .I3(src1[6]),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(\iadr_t[0]_i_8_n_0 ),
        .O(\iadr_t[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAA00BBFFABFFAA00)) 
    \iadr_t[0]_i_8 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(state1),
        .I4(\pcon_reg[0] ),
        .I5(\src_sel2_reg[0]_5 ),
        .O(\iadr_t[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[10]_i_1 
       (.I0(\alu_op_reg[2]_1 ),
        .O(des2[2]));
  LUT6 #(
    .INIT(64'h000000007FFF7F55)) 
    \iadr_t[10]_i_2 
       (.I0(\iadr_t[9]_i_4_n_0 ),
        .I1(\data_out[5]_i_3_0 [2]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\iadr_t[9]_i_2_n_0 ),
        .I4(\iadr_t_reg[10] ),
        .I5(\iadr_t[10]_i_4_n_0 ),
        .O(\alu_op_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hAE00AE00AEFFAE00)) 
    \iadr_t[10]_i_4 
       (.I0(\iadr_t[10]_i_5_n_0 ),
        .I1(src1[5]),
        .I2(\iadr_t[9]_i_7_n_0 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(\iadr_t[15]_i_3_0 [0]),
        .I5(\iadr_t[9]_i_8_n_0 ),
        .O(\iadr_t[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A80808A8080)) 
    \iadr_t[10]_i_5 
       (.I0(\iadr_t[9]_i_9_n_0 ),
        .I1(src1[1]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(\iadr_t_reg[9]_i_10_n_6 ),
        .I5(\iadr_t_reg[9]_i_11_n_6 ),
        .O(\iadr_t[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[11]_i_1 
       (.I0(\alu_op_reg[2]_0 ),
        .O(des2[3]));
  LUT6 #(
    .INIT(64'h000000007FFF7F55)) 
    \iadr_t[11]_i_2 
       (.I0(\iadr_t[9]_i_4_n_0 ),
        .I1(\data_out[5]_i_3_0 [3]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\iadr_t[9]_i_2_n_0 ),
        .I4(\data_out_reg[3]_0 ),
        .I5(\iadr_t[11]_i_4_n_0 ),
        .O(\alu_op_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hEA00EA00EAFFEA00)) 
    \iadr_t[11]_i_4 
       (.I0(\iadr_t[11]_i_5_n_0 ),
        .I1(\iadr_t[11]_i_6_n_0 ),
        .I2(\iadr_t[11]_i_7_n_0 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(\iadr_t[15]_i_3_0 [1]),
        .I5(\iadr_t[9]_i_8_n_0 ),
        .O(\iadr_t[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88AA880A88A08800)) 
    \iadr_t[11]_i_5 
       (.I0(\iadr_t[9]_i_9_n_0 ),
        .I1(src1[2]),
        .I2(\buff[0][3]_i_12_n_0 ),
        .I3(\alu_op_reg[0]_1 ),
        .I4(\iadr_t_reg[9]_i_11_n_5 ),
        .I5(\iadr_t_reg[9]_i_10_n_5 ),
        .O(\iadr_t[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \iadr_t[11]_i_6 
       (.I0(src1[6]),
        .I1(state1),
        .I2(\alu_op_reg_n_0_[0] ),
        .O(\iadr_t[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \iadr_t[11]_i_7 
       (.I0(state1),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .O(\iadr_t[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[12]_i_1 
       (.I0(\alu_op_reg[3]_5 ),
        .O(des2[4]));
  LUT6 #(
    .INIT(64'h000000007DFF7D55)) 
    \iadr_t[12]_i_2 
       (.I0(\iadr_t[13]_i_5_n_0 ),
        .I1(\data_out_reg[4]_1 ),
        .I2(\data_out_reg[4]_2 ),
        .I3(\alu_op_reg[0]_1 ),
        .I4(\src_sel2_reg[0]_2 ),
        .I5(\iadr_t[12]_i_4_n_0 ),
        .O(\alu_op_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \iadr_t[12]_i_4 
       (.I0(\iadr_t[12]_i_5_n_0 ),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(\iadr_t[15]_i_3_0 [2]),
        .I3(\iadr_t[13]_i_14_n_0 ),
        .I4(\data_out[5]_i_3_0 [4]),
        .I5(\oc8051_alu1/enable_mul ),
        .O(\iadr_t[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFF77FFFFFF)) 
    \iadr_t[12]_i_5 
       (.I0(\pcon_reg[0] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\iadr_t[12]_i_6_n_0 ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\iadr_t[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \iadr_t[12]_i_6 
       (.I0(\src_sel2_reg[0]_2 ),
        .I1(src1[3]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\iadr_t_reg[9]_i_11_n_4 ),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(\iadr_t_reg[9]_i_10_n_4 ),
        .O(\iadr_t[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF909F0000)) 
    \iadr_t[13]_i_1 
       (.I0(\iadr_t_reg[13] ),
        .I1(\iadr_t_reg[13]_0 ),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\src_sel2_reg[0]_3 ),
        .I4(\iadr_t[13]_i_5_n_0 ),
        .I5(\iadr_t[13]_i_6_n_0 ),
        .O(des2[5]));
  LUT6 #(
    .INIT(64'hF0FFFFFF77FFFFFF)) 
    \iadr_t[13]_i_12 
       (.I0(src1[0]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\iadr_t[13]_i_15_n_0 ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\iadr_t[13]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \iadr_t[13]_i_13 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\oc8051_alu1/enable_mul ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \iadr_t[13]_i_14 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[0] ),
        .O(\iadr_t[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \iadr_t[13]_i_15 
       (.I0(\src_sel2_reg[0]_3 ),
        .I1(src1[4]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\iadr_t_reg[13]_i_16_n_7 ),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(\iadr_t_reg[13]_i_17_n_7 ),
        .O(\iadr_t[13]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[13]_i_18 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .O(src2[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[13]_i_19 
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .O(\iadr_t[13]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[13]_i_20 
       (.I0(\src_sel2_reg[0]_3 ),
        .O(\iadr_t[13]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[13]_i_21 
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .O(src2[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[13]_i_22 
       (.I0(\src_sel2_reg[0]_3 ),
        .O(src2[5]));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[13]_i_23 
       (.I0(\iadr_t_reg[13]_i_17_0 ),
        .I1(src_sel2[0]),
        .I2(op2_r[7]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [7]),
        .O(\iadr_t[13]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[13]_i_24 
       (.I0(\iadr_t_reg[13]_i_17_1 ),
        .I1(src_sel2[0]),
        .I2(op2_r[6]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [6]),
        .O(\iadr_t[13]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[13]_i_25 
       (.I0(\iadr_t_reg[13]_1 ),
        .I1(src_sel2[0]),
        .I2(op2_r[5]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [5]),
        .O(\iadr_t[13]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[13]_i_4 
       (.I0(\iadr_t_reg[13]_1 ),
        .I1(src_sel2[0]),
        .I2(op2_r[5]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [5]),
        .O(\src_sel2_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0F1F)) 
    \iadr_t[13]_i_5 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[1] ),
        .O(\iadr_t[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \iadr_t[13]_i_6 
       (.I0(\iadr_t[13]_i_12_n_0 ),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(\data_out[5]_i_3_0 [5]),
        .I3(\oc8051_alu1/enable_mul ),
        .I4(\iadr_t[15]_i_3_0 [3]),
        .I5(\iadr_t[13]_i_14_n_0 ),
        .O(\iadr_t[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[14]_i_1 
       (.I0(\alu_op_reg[3]_6 ),
        .O(des2[6]));
  LUT6 #(
    .INIT(64'h000000007DFF7D55)) 
    \iadr_t[14]_i_2 
       (.I0(\iadr_t[13]_i_5_n_0 ),
        .I1(\data_out_reg[7]_4 ),
        .I2(\data_out_reg[7]_3 ),
        .I3(\alu_op_reg[0]_1 ),
        .I4(\tmp_div[1]_i_6_n_0 ),
        .I5(\iadr_t[14]_i_3_n_0 ),
        .O(\alu_op_reg[3]_6 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \iadr_t[14]_i_3 
       (.I0(\iadr_t[14]_i_4_n_0 ),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(\data_out[5]_i_3_0 [6]),
        .I3(\oc8051_alu1/enable_mul ),
        .I4(\iadr_t[15]_i_3_0 [4]),
        .I5(\iadr_t[13]_i_14_n_0 ),
        .O(\iadr_t[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFF77FFFFFF)) 
    \iadr_t[14]_i_4 
       (.I0(src1[1]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\iadr_t[14]_i_5_n_0 ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\iadr_t[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \iadr_t[14]_i_5 
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .I1(src1[5]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\iadr_t_reg[13]_i_16_n_6 ),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(\iadr_t_reg[13]_i_17_n_6 ),
        .O(\iadr_t[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \iadr_t[15]_i_1 
       (.I0(mem_act[0]),
        .I1(\mem_act_reg[2]_0 ),
        .I2(mem_act[1]),
        .O(\mem_act_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF0FFFFFF77FFFFFF)) 
    \iadr_t[15]_i_10 
       (.I0(src1[2]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\iadr_t[15]_i_11_n_0 ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\iadr_t[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \iadr_t[15]_i_11 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(src1[6]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\iadr_t_reg[13]_i_16_n_5 ),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(\iadr_t_reg[13]_i_17_n_5 ),
        .O(\iadr_t[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[15]_i_2 
       (.I0(\alu_op_reg[0]_2 ),
        .O(des2[7]));
  LUT6 #(
    .INIT(64'h00000000AEAEEAAE)) 
    \iadr_t[15]_i_3 
       (.I0(\iadr_t[15]_i_4_n_0 ),
        .I1(\alu_op_reg[0]_1 ),
        .I2(\data_out_reg[7]_2 ),
        .I3(\data_out_reg[7]_3 ),
        .I4(\data_out_reg[7]_4 ),
        .I5(\iadr_t[15]_i_8_n_0 ),
        .O(\alu_op_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hFFCCFFCCFFCCF4CC)) 
    \iadr_t[15]_i_4 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\tmp_div[1]_i_7_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[2] ),
        .I5(\alu_op_reg_n_0_[3] ),
        .O(\iadr_t[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \iadr_t[15]_i_8 
       (.I0(\iadr_t[15]_i_10_n_0 ),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(\data_out[5]_i_3_0 [7]),
        .I3(\oc8051_alu1/enable_mul ),
        .I4(\iadr_t[15]_i_3_0 [5]),
        .I5(\iadr_t[13]_i_14_n_0 ),
        .O(\iadr_t[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h22B2B2BBFFFFFFFF)) 
    \iadr_t[15]_i_9 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(src1[6]),
        .I2(\tmp_div[1]_i_6_n_0 ),
        .I3(src1[5]),
        .I4(\iadr_t[8]_i_5_n_0 ),
        .I5(\iadr_t_reg[8] ),
        .O(\src_sel2_reg[0]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iadr_t[1]_i_1 
       (.I0(\iadr_t[1]_i_2_n_0 ),
        .I1(\iadr_t[1]_i_3_n_0 ),
        .I2(\cycle[1]_i_2_n_0 ),
        .I3(\iadr_t[1]_i_4_n_0 ),
        .I4(\cycle[1]_i_3_n_0 ),
        .I5(\iadr_t_reg[1]_i_5_n_0 ),
        .O(des_acc[1]));
  LUT6 #(
    .INIT(64'h74FFFFFF74000000)) 
    \iadr_t[1]_i_2 
       (.I0(\src_sel2_reg[0]_6 ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\buff[0][1]_i_3_n_0 ),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(state1),
        .I5(src1[1]),
        .O(\iadr_t[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BF8080BF80BF)) 
    \iadr_t[1]_i_3 
       (.I0(\pcon_reg[0] ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\src_sel2_reg[0]_6 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(src1[0]),
        .O(\iadr_t[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0000FFAACC55CC)) 
    \iadr_t[1]_i_4 
       (.I0(\data_lo_reg[1] ),
        .I1(\data_lo_reg[7] [1]),
        .I2(\src_sel2_reg[0]_6 ),
        .I3(\alu_op_reg[0]_1 ),
        .I4(src1[0]),
        .I5(\iadr_t[9]_i_2_n_0 ),
        .O(\iadr_t[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h95A9FFFF6A560000)) 
    \iadr_t[1]_i_7 
       (.I0(\src_sel2_reg[0]_6 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\src_sel2_reg[0]_5 ),
        .I3(\pcon_reg[0] ),
        .I4(\alu_op_reg[0]_1 ),
        .I5(src1[0]),
        .O(\iadr_t[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88BB88B8B8B)) 
    \iadr_t[1]_i_8 
       (.I0(\data_out[5]_i_3_0 [9]),
        .I1(\alu_op_reg[0]_1 ),
        .I2(\iadr_t[1]_i_9_n_0 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(\pcon_reg[0] ),
        .I5(\src_sel2_reg[0]_5 ),
        .O(\iadr_t[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \iadr_t[1]_i_9 
       (.I0(\src_sel2_reg[0]_6 ),
        .I1(src1[0]),
        .O(\iadr_t[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hC2D2)) 
    \iadr_t[2]_i_10 
       (.I0(srcAc),
        .I1(src1[0]),
        .I2(src1[1]),
        .I3(src1[2]),
        .O(\iadr_t[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \iadr_t[2]_i_11 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(src1[1]),
        .O(\iadr_t[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \iadr_t[2]_i_4 
       (.I0(\data_out[5]_i_3_0 [10]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\iadr_t[2]_i_8_n_0 ),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(state1),
        .I5(\iadr_t[2]_i_9_n_0 ),
        .O(\iadr_t[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44334433F0FFF000)) 
    \iadr_t[2]_i_5 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(src1[1]),
        .I2(\iadr_t[2]_i_10_n_0 ),
        .I3(\alu_op_reg[0]_1 ),
        .I4(\data_lo_reg[7] [2]),
        .I5(\iadr_t[9]_i_2_n_0 ),
        .O(\iadr_t[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BF8080BF80BF)) 
    \iadr_t[2]_i_6 
       (.I0(src1[0]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\src_sel2_reg[0]_4 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(src1[1]),
        .O(\iadr_t[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h74FFFFFF74000000)) 
    \iadr_t[2]_i_7 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(buff_reg_0_63_0_2_i_35_n_0),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(state1),
        .I5(src1[2]),
        .O(\iadr_t[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A995A9959595)) 
    \iadr_t[2]_i_8 
       (.I0(\iadr_t[2]_i_11_n_0 ),
        .I1(src1[0]),
        .I2(\src_sel2_reg[0]_6 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(\pcon_reg[0] ),
        .I5(\src_sel2_reg[0]_5 ),
        .O(\iadr_t[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6FFF9000)) 
    \iadr_t[2]_i_9 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(\iadr_t[3]_i_10_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(state1),
        .I4(src1[1]),
        .O(\iadr_t[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0AFA0C0C0CFCF)) 
    \iadr_t[3]_i_1 
       (.I0(\iadr_t[3]_i_2_n_0 ),
        .I1(\iadr_t[3]_i_3_n_0 ),
        .I2(\cycle[1]_i_2_n_0 ),
        .I3(\iadr_t[3]_i_4_n_0 ),
        .I4(\iadr_t[3]_i_5_n_0 ),
        .I5(\cycle[1]_i_3_n_0 ),
        .O(des_acc[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2B00FF2B)) 
    \iadr_t[3]_i_10 
       (.I0(\pcon_reg[0] ),
        .I1(\src_sel2_reg[0]_5 ),
        .I2(\buff[0][3]_i_12_n_0 ),
        .I3(src1[0]),
        .I4(\src_sel2_reg[0]_6 ),
        .O(\iadr_t[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h30AAAAAA3FAAAAAA)) 
    \iadr_t[3]_i_2 
       (.I0(src1[3]),
        .I1(\src_sel2_reg[0]_7 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\buff[0][3]_i_6_n_0 ),
        .O(\iadr_t[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0BF8080BF80BF)) 
    \iadr_t[3]_i_3 
       (.I0(src1[1]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\src_sel2_reg[0]_7 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(src1[2]),
        .O(\iadr_t[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F403F3F4F403030)) 
    \iadr_t[3]_i_4 
       (.I0(\src_sel2_reg[0]_7 ),
        .I1(src1[2]),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(\iadr_t[3]_i_6_n_0 ),
        .I4(\alu_op_reg[0]_1 ),
        .I5(\data_lo_reg[7] [3]),
        .O(\iadr_t[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5CFFFFFF5C000000)) 
    \iadr_t[3]_i_5 
       (.I0(\data_out[5]_i_3_0 [11]),
        .I1(\iadr_t[3]_i_7_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(state1),
        .I5(\iadr_t[3]_i_8_n_0 ),
        .O(\iadr_t[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h03A8)) 
    \iadr_t[3]_i_6 
       (.I0(srcAc),
        .I1(src1[0]),
        .I2(src1[1]),
        .I3(src1[2]),
        .O(\iadr_t[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \iadr_t[3]_i_7 
       (.I0(\iadr_t[3]_i_9_n_0 ),
        .I1(\src_sel2_reg[0]_4 ),
        .I2(src1[1]),
        .I3(src1[2]),
        .I4(\src_sel2_reg[0]_7 ),
        .O(\iadr_t[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA6650000599AFFFF)) 
    \iadr_t[3]_i_8 
       (.I0(\src_sel2_reg[0]_7 ),
        .I1(\src_sel2_reg[0]_4 ),
        .I2(src1[1]),
        .I3(\iadr_t[3]_i_10_n_0 ),
        .I4(\alu_op_reg[0]_1 ),
        .I5(src1[2]),
        .O(\iadr_t[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \iadr_t[3]_i_9 
       (.I0(\src_sel2_reg[0]_5 ),
        .I1(\pcon_reg[0] ),
        .I2(\buff[0][3]_i_12_n_0 ),
        .I3(\src_sel2_reg[0]_6 ),
        .I4(src1[0]),
        .O(\iadr_t[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \iadr_t[4]_i_10 
       (.I0(src1[3]),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\src_sel2_reg[0]_2 ),
        .O(\iadr_t[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \iadr_t[4]_i_4 
       (.I0(\data_out[5]_i_3_0 [12]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\iadr_t[4]_i_8_n_0 ),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(state1),
        .I5(\iadr_t[4]_i_9_n_0 ),
        .O(\iadr_t[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h43703F3F43700C0C)) 
    \iadr_t[4]_i_5 
       (.I0(\src_sel2_reg[0]_2 ),
        .I1(\iadr_t[9]_i_2_n_0 ),
        .I2(src1[3]),
        .I3(\src_sel1_reg[0]_1 ),
        .I4(\alu_op_reg[0]_1 ),
        .I5(\data_lo_reg[7] [4]),
        .O(\iadr_t[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFBF8080B080BFBF)) 
    \iadr_t[4]_i_6 
       (.I0(src1[2]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(src1[3]),
        .I5(\src_sel2_reg[0]_2 ),
        .O(\iadr_t[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3AFFFFFF3A000000)) 
    \iadr_t[4]_i_7 
       (.I0(\buff[0][4]_i_5_n_0 ),
        .I1(\iadr_t[4]_i_10_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(state1),
        .I5(src1[4]),
        .O(\iadr_t[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \iadr_t[4]_i_8 
       (.I0(src1[3]),
        .I1(\src_sel2_reg[0]_2 ),
        .I2(\data[6]_i_8_n_0 ),
        .O(\iadr_t[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h6FFF9000)) 
    \iadr_t[4]_i_9 
       (.I0(\src_sel2_reg[0]_2 ),
        .I1(\data[6]_i_9_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(state1),
        .I4(src1[3]),
        .O(\iadr_t[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[5]_i_1 
       (.I0(wait_data_reg_inv),
        .O(des_acc[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h96669996)) 
    \iadr_t[5]_i_10 
       (.I0(src1[4]),
        .I1(\src_sel2_reg[0]_3 ),
        .I2(src1[3]),
        .I3(\src_sel2_reg[0]_2 ),
        .I4(\data[6]_i_8_n_0 ),
        .O(\iadr_t[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h40407F7F4F7F4040)) 
    \iadr_t[5]_i_11 
       (.I0(src1[3]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(src1[4]),
        .I5(\src_sel2_reg[0]_3 ),
        .O(\iadr_t[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA0003000AFFF3FFF)) 
    \iadr_t[5]_i_12 
       (.I0(\iadr_t[5]_i_13_n_0 ),
        .I1(\buff[0][5]_i_5_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(state1),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(src1[5]),
        .O(\iadr_t[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \iadr_t[5]_i_13 
       (.I0(src1[4]),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\src_sel2_reg[0]_3 ),
        .O(\iadr_t[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00002F202F20)) 
    \iadr_t[5]_i_2 
       (.I0(\iadr_t[5]_i_3_n_0 ),
        .I1(\iadr_t[5]_i_4_n_0 ),
        .I2(\cycle[1]_i_3_n_0 ),
        .I3(\iadr_t[5]_i_5_n_0 ),
        .I4(\iadr_t_reg[5]_i_6_n_0 ),
        .I5(\cycle[1]_i_2_n_0 ),
        .O(wait_data_reg_inv));
  LUT5 #(
    .INIT(32'hBFCFFFFF)) 
    \iadr_t[5]_i_3 
       (.I0(\src_sel2_reg[0]_3 ),
        .I1(src1[4]),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .O(\iadr_t[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000002EE2E22E)) 
    \iadr_t[5]_i_4 
       (.I0(\data_lo_reg[7] [5]),
        .I1(\alu_op_reg[0]_1 ),
        .I2(src1[4]),
        .I3(\iadr_t[5]_i_7_n_0 ),
        .I4(\iadr_t[5]_i_8_n_0 ),
        .I5(\iadr_t[9]_i_2_n_0 ),
        .O(\iadr_t[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AEA2A2A2AEAEAEA)) 
    \iadr_t[5]_i_5 
       (.I0(\iadr_t[5]_i_9_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\data_out[5]_i_3_0 [13]),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\iadr_t[5]_i_10_n_0 ),
        .O(\iadr_t[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \iadr_t[5]_i_7 
       (.I0(\src_sel1_reg[0]_1 ),
        .I1(src1[3]),
        .O(\iadr_t[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0000222A)) 
    \iadr_t[5]_i_8 
       (.I0(\buff[0][3]_i_12_n_0 ),
        .I1(src1[6]),
        .I2(src1[5]),
        .I3(src1[4]),
        .I4(\src_sel1_reg[0]_1 ),
        .O(\iadr_t[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9A59000065A6FFFF)) 
    \iadr_t[5]_i_9 
       (.I0(\src_sel2_reg[0]_3 ),
        .I1(src1[3]),
        .I2(\src_sel2_reg[0]_2 ),
        .I3(\data[6]_i_9_n_0 ),
        .I4(\alu_op_reg[0]_1 ),
        .I5(src1[4]),
        .O(\iadr_t[5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[6]_i_1 
       (.I0(\alu_op_reg[1]_2 ),
        .O(des_acc[6]));
  LUT6 #(
    .INIT(64'hA9959595A9A9A995)) 
    \iadr_t[6]_i_10 
       (.I0(\iadr_t[6]_i_11_n_0 ),
        .I1(src1[4]),
        .I2(\src_sel2_reg[0]_3 ),
        .I3(src1[3]),
        .I4(\src_sel2_reg[0]_2 ),
        .I5(\data[6]_i_8_n_0 ),
        .O(\iadr_t[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \iadr_t[6]_i_11 
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .I1(src1[5]),
        .O(\iadr_t[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \iadr_t[6]_i_2 
       (.I0(\iadr_t[6]_i_3_n_0 ),
        .I1(\iadr_t[6]_i_4_n_0 ),
        .I2(\cycle[1]_i_2_n_0 ),
        .I3(\iadr_t[6]_i_5_n_0 ),
        .I4(\cycle[1]_i_3_n_0 ),
        .I5(\iadr_t[6]_i_6_n_0 ),
        .O(\alu_op_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hCAFAAAAACA0AAAAA)) 
    \iadr_t[6]_i_3 
       (.I0(src1[6]),
        .I1(\iadr_t[6]_i_7_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(state1),
        .I5(\buff[0][6]_i_5_n_0 ),
        .O(\iadr_t[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFB0808080BFBF)) 
    \iadr_t[6]_i_4 
       (.I0(src1[4]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(\tmp_div[1]_i_6_n_0 ),
        .I5(src1[5]),
        .O(\iadr_t[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F403F3F4F403030)) 
    \iadr_t[6]_i_5 
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .I1(src1[5]),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(\iadr_t[6]_i_8_n_0 ),
        .I4(\alu_op_reg[0]_1 ),
        .I5(\data_lo_reg[7] [6]),
        .O(\iadr_t[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF505FCFCF5050C0C)) 
    \iadr_t[6]_i_6 
       (.I0(\iadr_t[6]_i_9_n_0 ),
        .I1(src1[5]),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(\data_lo_reg[7]_0 [0]),
        .I4(\alu_op_reg[0]_1 ),
        .I5(\iadr_t[6]_i_10_n_0 ),
        .O(\iadr_t[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \iadr_t[6]_i_7 
       (.I0(src1[5]),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\tmp_div[1]_i_6_n_0 ),
        .O(\iadr_t[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEFEA10151015)) 
    \iadr_t[6]_i_8 
       (.I0(src1[4]),
        .I1(src1[3]),
        .I2(\src_sel1_reg[0]_1 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(src1[6]),
        .I5(src1[5]),
        .O(\iadr_t[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA665A6A66565A665)) 
    \iadr_t[6]_i_9 
       (.I0(\iadr_t[6]_i_11_n_0 ),
        .I1(\src_sel2_reg[0]_3 ),
        .I2(src1[4]),
        .I3(src1[3]),
        .I4(\src_sel2_reg[0]_2 ),
        .I5(\data[6]_i_9_n_0 ),
        .O(\iadr_t[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \iadr_t[7]_i_1 
       (.I0(\iadr_t[7]_i_2_n_0 ),
        .I1(\iadr_t[7]_i_3_n_0 ),
        .I2(\cycle[1]_i_2_n_0 ),
        .I3(\iadr_t[7]_i_4_n_0 ),
        .I4(\cycle[1]_i_3_n_0 ),
        .I5(\iadr_t[7]_i_5_n_0 ),
        .O(des_acc[7]));
  LUT6 #(
    .INIT(64'h59599A599A599A9A)) 
    \iadr_t[7]_i_10 
       (.I0(\iadr_t[7]_i_14_n_0 ),
        .I1(\tmp_div[1]_i_6_n_0 ),
        .I2(src1[5]),
        .I3(\src_sel2_reg[0]_3 ),
        .I4(src1[4]),
        .I5(\iadr_t[7]_i_16_n_0 ),
        .O(\iadr_t[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \iadr_t[7]_i_13 
       (.I0(src1[2]),
        .I1(src1[1]),
        .I2(src1[0]),
        .O(\src_sel1_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \iadr_t[7]_i_14 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(src1[6]),
        .O(\iadr_t[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF220F2200000)) 
    \iadr_t[7]_i_15 
       (.I0(\iadr_t[7]_i_26_n_0 ),
        .I1(\iadr_t[7]_i_27_n_0 ),
        .I2(\src_sel2_reg[0]_7 ),
        .I3(src1[2]),
        .I4(\src_sel2_reg[0]_2 ),
        .I5(src1[3]),
        .O(\iadr_t[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h20F2FFFF000020F2)) 
    \iadr_t[7]_i_16 
       (.I0(\iadr_t[7]_i_28_n_0 ),
        .I1(\iadr_t[7]_i_29_n_0 ),
        .I2(src1[2]),
        .I3(\src_sel2_reg[0]_7 ),
        .I4(\src_sel2_reg[0]_2 ),
        .I5(src1[3]),
        .O(\iadr_t[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[7]_i_17 
       (.I0(\src_sel2_reg[0]_5 ),
        .O(\iadr_t[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \iadr_t[7]_i_18 
       (.I0(sub1_carry__0_i_19_n_0),
        .I1(\iadr_t_reg[13]_i_17_0 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[7]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry__0_i_21_n_0),
        .O(\iadr_t[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \iadr_t[7]_i_19 
       (.I0(sub1_carry__0_i_14_n_0),
        .I1(\iadr_t_reg[13]_i_17_1 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[6]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry__0_i_16_n_0),
        .O(\iadr_t[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFA0AFCFCFC0C0)) 
    \iadr_t[7]_i_2 
       (.I0(\iadr_t[7]_i_6_n_0 ),
        .I1(\iadr_t[7]_i_7_n_0 ),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(\pcon_reg[0] ),
        .I5(\alu_op_reg[0]_1 ),
        .O(\iadr_t[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \iadr_t[7]_i_20 
       (.I0(sub1_carry__0_i_17_n_0),
        .I1(\iadr_t_reg[13]_1 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[5]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry__0_i_18_n_0),
        .O(\iadr_t[7]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[7]_i_21 
       (.I0(\src_sel2_reg[0]_5 ),
        .O(src2[0]));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[7]_i_22 
       (.I0(\iadr_t_reg[8]_0 ),
        .I1(src_sel2[0]),
        .I2(op2_r[0]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [0]),
        .O(\iadr_t[7]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[7]_i_23 
       (.I0(src1[6]),
        .O(\oc8051_alu1/data5 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[7]_i_24 
       (.I0(src1[5]),
        .O(\iadr_t[7]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[7]_i_25 
       (.I0(src1[4]),
        .O(\oc8051_alu1/data5 [5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \iadr_t[7]_i_26 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(src1[1]),
        .O(\iadr_t[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0202022A022A2A2A)) 
    \iadr_t[7]_i_27 
       (.I0(\iadr_t[7]_i_30_n_0 ),
        .I1(src1[0]),
        .I2(\src_sel2_reg[0]_6 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(\pcon_reg[0] ),
        .I5(\src_sel2_reg[0]_5 ),
        .O(\iadr_t[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4DDD444DFFFFFFFF)) 
    \iadr_t[7]_i_28 
       (.I0(\src_sel2_reg[0]_6 ),
        .I1(src1[0]),
        .I2(\buff[0][3]_i_12_n_0 ),
        .I3(\src_sel2_reg[0]_5 ),
        .I4(\pcon_reg[0] ),
        .I5(\iadr_t[7]_i_31_n_0 ),
        .O(\iadr_t[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \iadr_t[7]_i_29 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(src1[1]),
        .O(\iadr_t[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hBFBF8080B080BFBF)) 
    \iadr_t[7]_i_3 
       (.I0(src1[5]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(src1[6]),
        .I5(\tmp_div[1]_i_7_n_0 ),
        .O(\iadr_t[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \iadr_t[7]_i_30 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(src1[1]),
        .O(\iadr_t[7]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \iadr_t[7]_i_31 
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(src1[1]),
        .O(\iadr_t[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h4F403F3F4F403030)) 
    \iadr_t[7]_i_4 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(src1[6]),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(\iadr_t[7]_i_8_n_0 ),
        .I4(\alu_op_reg[0]_1 ),
        .I5(\data_lo_reg[7] [7]),
        .O(\iadr_t[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFCFC0CFC0)) 
    \iadr_t[7]_i_5 
       (.I0(\data_lo_reg[7]_0 [1]),
        .I1(\src_sel1_reg[0]_3 ),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(src1[6]),
        .I4(\iadr_t[7]_i_10_n_0 ),
        .I5(\alu_op_reg[0]_1 ),
        .O(\iadr_t[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \iadr_t[7]_i_6 
       (.I0(src1[6]),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\tmp_div[1]_i_7_n_0 ),
        .O(\iadr_t[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[7]_i_7 
       (.I0(\iadr_t_reg[7]_i_11_n_5 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\iadr_t_reg[7]_i_12_n_5 ),
        .O(\iadr_t[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00150015CCC8FFEA)) 
    \iadr_t[7]_i_8 
       (.I0(src1[5]),
        .I1(\src_sel1_reg[0]_1 ),
        .I2(src1[3]),
        .I3(src1[4]),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(src1[6]),
        .O(\iadr_t[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5656566A566A6A6A)) 
    \iadr_t[7]_i_9 
       (.I0(\iadr_t[7]_i_14_n_0 ),
        .I1(src1[5]),
        .I2(\tmp_div[1]_i_6_n_0 ),
        .I3(src1[4]),
        .I4(\src_sel2_reg[0]_3 ),
        .I5(\iadr_t[7]_i_15_n_0 ),
        .O(\src_sel1_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10B0B010)) 
    \iadr_t[8]_i_1 
       (.I0(\alu_op_reg[0]_1 ),
        .I1(\src_sel2_reg[0]_5 ),
        .I2(\iadr_t[13]_i_5_n_0 ),
        .I3(\iadr_t_reg[8] ),
        .I4(\src_sel1_reg[0]_0 ),
        .I5(\iadr_t_reg[8]_i_4_n_0 ),
        .O(des2[0]));
  LUT6 #(
    .INIT(64'hBF80BFBFBF808080)) 
    \iadr_t[8]_i_10 
       (.I0(\pcon_reg[0] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(state1),
        .I3(\iadr_t_reg[7]_i_11_n_4 ),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(\iadr_t_reg[7]_i_12_n_4 ),
        .O(\iadr_t[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \iadr_t[8]_i_11 
       (.I0(src1[2]),
        .I1(\src_sel2_reg[0]_7 ),
        .O(\iadr_t[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00E200E200E2E2FF)) 
    \iadr_t[8]_i_12 
       (.I0(\iadr_t[8]_i_8_0 ),
        .I1(\src_sel1_reg[2]_0 [2]),
        .I2(\iadr_t[8]_i_8_1 ),
        .I3(\src_sel2_reg[0]_5 ),
        .I4(buff_reg_0_63_0_2_i_41_n_0),
        .I5(\iadr_t[8]_i_8_2 ),
        .O(\iadr_t[8]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h8E00FF8E)) 
    \iadr_t[8]_i_3 
       (.I0(\iadr_t[8]_i_5_n_0 ),
        .I1(src1[5]),
        .I2(\tmp_div[1]_i_6_n_0 ),
        .I3(src1[6]),
        .I4(\tmp_div[1]_i_7_n_0 ),
        .O(\src_sel1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h2F020000FFFF2F02)) 
    \iadr_t[8]_i_5 
       (.I0(\iadr_t[8]_i_8_n_0 ),
        .I1(\iadr_t[8]_i_9_n_0 ),
        .I2(\src_sel2_reg[0]_2 ),
        .I3(src1[3]),
        .I4(src1[4]),
        .I5(\src_sel2_reg[0]_3 ),
        .O(\iadr_t[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0C20000000200000)) 
    \iadr_t[8]_i_6 
       (.I0(divsrc2[0]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(state1),
        .I5(\data_out[5]_i_3_0 [0]),
        .O(\iadr_t[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAC0000000000000)) 
    \iadr_t[8]_i_7 
       (.I0(\iadr_t[8]_i_10_n_0 ),
        .I1(src1[3]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(state1),
        .O(\iadr_t[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBBAFBBAFBBABA)) 
    \iadr_t[8]_i_8 
       (.I0(\iadr_t[8]_i_11_n_0 ),
        .I1(\src_sel2_reg[0]_4 ),
        .I2(src1[1]),
        .I3(\src_sel2_reg[0]_6 ),
        .I4(src1[0]),
        .I5(\iadr_t[8]_i_12_n_0 ),
        .O(\iadr_t[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \iadr_t[8]_i_9 
       (.I0(\src_sel2_reg[0]_7 ),
        .I1(src1[2]),
        .O(\iadr_t[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF808F0000)) 
    \iadr_t[9]_i_1 
       (.I0(\data_out[5]_i_3_0 [1]),
        .I1(\alu_op_reg[0]_1 ),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(\iadr_t[9]_i_3_n_0 ),
        .I4(\iadr_t[9]_i_4_n_0 ),
        .I5(\iadr_t[9]_i_5_n_0 ),
        .O(des2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_12 
       (.I0(\src_sel2_reg[0]_2 ),
        .O(src2[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_13 
       (.I0(\src_sel2_reg[0]_7 ),
        .O(src2[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_14 
       (.I0(\src_sel2_reg[0]_4 ),
        .O(src2[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_15 
       (.I0(\src_sel2_reg[0]_6 ),
        .O(src2[1]));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[9]_i_16 
       (.I0(\iadr_t_reg[9]_i_10_2 ),
        .I1(src_sel2[0]),
        .I2(op2_r[4]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [4]),
        .O(\iadr_t[9]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[9]_i_17 
       (.I0(\pcon_reg[3] ),
        .I1(src_sel2[0]),
        .I2(op2_r[3]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [3]),
        .O(\iadr_t[9]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[9]_i_18 
       (.I0(\iadr_t_reg[9]_i_10_1 ),
        .I1(src_sel2[0]),
        .I2(op2_r[2]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [2]),
        .O(\iadr_t[9]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \iadr_t[9]_i_19 
       (.I0(\iadr_t_reg[9]_i_10_0 ),
        .I1(src_sel2[0]),
        .I2(op2_r[1]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [1]),
        .O(\iadr_t[9]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \iadr_t[9]_i_2 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(state1),
        .O(\iadr_t[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_20 
       (.I0(\src_sel2_reg[0]_2 ),
        .O(\iadr_t[9]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_21 
       (.I0(\src_sel2_reg[0]_7 ),
        .O(\iadr_t[9]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_22 
       (.I0(\src_sel2_reg[0]_4 ),
        .O(\iadr_t[9]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \iadr_t[9]_i_23 
       (.I0(\src_sel2_reg[0]_6 ),
        .O(\iadr_t[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h87FFFFFF87000000)) 
    \iadr_t[9]_i_3 
       (.I0(\iadr_t_reg[8] ),
        .I1(\src_sel1_reg[0]_0 ),
        .I2(\iadr_t_reg[9] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(state1),
        .I5(\src_sel2_reg[0]_6 ),
        .O(\iadr_t[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \iadr_t[9]_i_4 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(state1),
        .I2(\alu_op_reg_n_0_[3] ),
        .O(\iadr_t[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AE00AEFFAE00)) 
    \iadr_t[9]_i_5 
       (.I0(\iadr_t[9]_i_6_n_0 ),
        .I1(src1[4]),
        .I2(\iadr_t[9]_i_7_n_0 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(divsrc2[1]),
        .I5(\iadr_t[9]_i_8_n_0 ),
        .O(\iadr_t[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A8A80808A8080)) 
    \iadr_t[9]_i_6 
       (.I0(\iadr_t[9]_i_9_n_0 ),
        .I1(src1[0]),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\buff[0][3]_i_12_n_0 ),
        .I4(\iadr_t_reg[9]_i_10_n_7 ),
        .I5(\iadr_t_reg[9]_i_11_n_7 ),
        .O(\iadr_t[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \iadr_t[9]_i_7 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(state1),
        .O(\iadr_t[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \iadr_t[9]_i_8 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[1] ),
        .O(\iadr_t[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \iadr_t[9]_i_9 
       (.I0(state1),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .O(\iadr_t[9]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \iadr_t_reg[13]_i_16 
       (.CI(\iadr_t_reg[9]_i_11_n_0 ),
        .CO({\NLW_iadr_t_reg[13]_i_16_CO_UNCONNECTED [3:2],\iadr_t_reg[13]_i_16_n_2 ,\iadr_t_reg[13]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_iadr_t_reg[13]_i_16_O_UNCONNECTED [3],\iadr_t_reg[13]_i_16_n_5 ,\iadr_t_reg[13]_i_16_n_6 ,\iadr_t_reg[13]_i_16_n_7 }),
        .S({1'b0,src2[7],\iadr_t[13]_i_19_n_0 ,\iadr_t[13]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \iadr_t_reg[13]_i_17 
       (.CI(\iadr_t_reg[9]_i_10_n_0 ),
        .CO({\NLW_iadr_t_reg[13]_i_17_CO_UNCONNECTED [3:2],\iadr_t_reg[13]_i_17_n_2 ,\iadr_t_reg[13]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,src2[6:5]}),
        .O({\NLW_iadr_t_reg[13]_i_17_O_UNCONNECTED [3],\iadr_t_reg[13]_i_17_n_5 ,\iadr_t_reg[13]_i_17_n_6 ,\iadr_t_reg[13]_i_17_n_7 }),
        .S({1'b0,\iadr_t[13]_i_23_n_0 ,\iadr_t[13]_i_24_n_0 ,\iadr_t[13]_i_25_n_0 }));
  MUXF7 \iadr_t_reg[1]_i_5 
       (.I0(\iadr_t[1]_i_7_n_0 ),
        .I1(\iadr_t[1]_i_8_n_0 ),
        .O(\iadr_t_reg[1]_i_5_n_0 ),
        .S(\iadr_t[9]_i_2_n_0 ));
  MUXF8 \iadr_t_reg[2]_i_1 
       (.I0(\iadr_t_reg[2]_i_2_n_0 ),
        .I1(\iadr_t_reg[2]_i_3_n_0 ),
        .O(des_acc[2]),
        .S(\cycle[1]_i_2_n_0 ));
  MUXF7 \iadr_t_reg[2]_i_2 
       (.I0(\iadr_t[2]_i_4_n_0 ),
        .I1(\iadr_t[2]_i_5_n_0 ),
        .O(\iadr_t_reg[2]_i_2_n_0 ),
        .S(\cycle[1]_i_3_n_0 ));
  MUXF7 \iadr_t_reg[2]_i_3 
       (.I0(\iadr_t[2]_i_6_n_0 ),
        .I1(\iadr_t[2]_i_7_n_0 ),
        .O(\iadr_t_reg[2]_i_3_n_0 ),
        .S(\cycle[1]_i_3_n_0 ));
  MUXF8 \iadr_t_reg[4]_i_1 
       (.I0(\iadr_t_reg[4]_i_2_n_0 ),
        .I1(\iadr_t_reg[4]_i_3_n_0 ),
        .O(des_acc[4]),
        .S(\cycle[1]_i_2_n_0 ));
  MUXF7 \iadr_t_reg[4]_i_2 
       (.I0(\iadr_t[4]_i_4_n_0 ),
        .I1(\iadr_t[4]_i_5_n_0 ),
        .O(\iadr_t_reg[4]_i_2_n_0 ),
        .S(\cycle[1]_i_3_n_0 ));
  MUXF7 \iadr_t_reg[4]_i_3 
       (.I0(\iadr_t[4]_i_6_n_0 ),
        .I1(\iadr_t[4]_i_7_n_0 ),
        .O(\iadr_t_reg[4]_i_3_n_0 ),
        .S(\cycle[1]_i_3_n_0 ));
  MUXF7 \iadr_t_reg[5]_i_6 
       (.I0(\iadr_t[5]_i_11_n_0 ),
        .I1(\iadr_t[5]_i_12_n_0 ),
        .O(\iadr_t_reg[5]_i_6_n_0 ),
        .S(\cycle[1]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \iadr_t_reg[7]_i_11 
       (.CI(\buff_reg[0][3]_i_13_n_0 ),
        .CO({\iadr_t_reg[7]_i_11_n_0 ,\iadr_t_reg[7]_i_11_n_1 ,\iadr_t_reg[7]_i_11_n_2 ,\iadr_t_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iadr_t_reg[7]_i_11_n_4 ,\iadr_t_reg[7]_i_11_n_5 ,\iadr_t_reg[7]_i_11_n_6 ,\iadr_t_reg[7]_i_11_n_7 }),
        .S({\iadr_t[7]_i_17_n_0 ,\iadr_t[7]_i_18_n_0 ,\iadr_t[7]_i_19_n_0 ,\iadr_t[7]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \iadr_t_reg[7]_i_12 
       (.CI(\buff_reg[0][3]_i_11_n_0 ),
        .CO({\iadr_t_reg[7]_i_12_n_0 ,\iadr_t_reg[7]_i_12_n_1 ,\iadr_t_reg[7]_i_12_n_2 ,\iadr_t_reg[7]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({src2[0],src1[6:4]}),
        .O({\iadr_t_reg[7]_i_12_n_4 ,\iadr_t_reg[7]_i_12_n_5 ,\iadr_t_reg[7]_i_12_n_6 ,\iadr_t_reg[7]_i_12_n_7 }),
        .S({\iadr_t[7]_i_22_n_0 ,\oc8051_alu1/data5 [7],\iadr_t[7]_i_24_n_0 ,\oc8051_alu1/data5 [5]}));
  MUXF7 \iadr_t_reg[8]_i_4 
       (.I0(\iadr_t[8]_i_6_n_0 ),
        .I1(\iadr_t[8]_i_7_n_0 ),
        .O(\iadr_t_reg[8]_i_4_n_0 ),
        .S(\cycle[1]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \iadr_t_reg[9]_i_10 
       (.CI(\iadr_t_reg[7]_i_12_n_0 ),
        .CO({\iadr_t_reg[9]_i_10_n_0 ,\iadr_t_reg[9]_i_10_n_1 ,\iadr_t_reg[9]_i_10_n_2 ,\iadr_t_reg[9]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(src2[4:1]),
        .O({\iadr_t_reg[9]_i_10_n_4 ,\iadr_t_reg[9]_i_10_n_5 ,\iadr_t_reg[9]_i_10_n_6 ,\iadr_t_reg[9]_i_10_n_7 }),
        .S({\iadr_t[9]_i_16_n_0 ,\iadr_t[9]_i_17_n_0 ,\iadr_t[9]_i_18_n_0 ,\iadr_t[9]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \iadr_t_reg[9]_i_11 
       (.CI(\iadr_t_reg[7]_i_11_n_0 ),
        .CO({\iadr_t_reg[9]_i_11_n_0 ,\iadr_t_reg[9]_i_11_n_1 ,\iadr_t_reg[9]_i_11_n_2 ,\iadr_t_reg[9]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\iadr_t_reg[9]_i_11_n_4 ,\iadr_t_reg[9]_i_11_n_5 ,\iadr_t_reg[9]_i_11_n_6 ,\iadr_t_reg[9]_i_11_n_7 }),
        .S({\iadr_t[9]_i_20_n_0 ,\iadr_t[9]_i_21_n_0 ,\iadr_t[9]_i_22_n_0 ,\iadr_t[9]_i_23_n_0 }));
  LUT5 #(
    .INIT(32'h0404FF04)) 
    imem_wait_i_1
       (.I0(mem_act[1]),
        .I1(\mem_act_reg[2]_0 ),
        .I2(mem_act[0]),
        .I3(istb_t_reg),
        .I4(ack_o),
        .O(\mem_act_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFF040404)) 
    istb_t_i_1
       (.I0(mem_act[1]),
        .I1(\mem_act_reg[2]_0 ),
        .I2(mem_act[0]),
        .I3(istb_t_reg),
        .I4(istb_t_reg_0),
        .O(\mem_act_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \mem_act[1]_i_3 
       (.I0(\state_reg[0]_0 ),
        .I1(p_0_in),
        .I2(state1),
        .O(\state_reg[0]_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \mem_act_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\mem_act_reg[2]_1 [0]),
        .PRE(rst_IBUF),
        .Q(mem_act[0]));
  FDPE #(
    .INIT(1'b1)) 
    \mem_act_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\mem_act_reg[2]_1 [1]),
        .PRE(rst_IBUF),
        .Q(mem_act[1]));
  FDPE #(
    .INIT(1'b1)) 
    \mem_act_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\mem_act_reg[2]_1 [2]),
        .PRE(rst_IBUF),
        .Q(\mem_act_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry__0_i_1
       (.I0(src1[6]),
        .I1(\cycle_reg[0]_0 ),
        .O(\src_sel1_reg[0]_4 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry__0_i_2
       (.I0(src1[5]),
        .I1(\cycle_reg[0]_0 ),
        .O(\src_sel1_reg[0]_4 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry__0_i_3
       (.I0(src1[4]),
        .I1(\cycle_reg[0]_0 ),
        .O(\src_sel1_reg[0]_4 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry__0_i_4
       (.I0(src1[3]),
        .I1(\cycle_reg[0]_0 ),
        .O(\src_sel1_reg[0]_4 [0]));
  LUT4 #(
    .INIT(16'h4B44)) 
    mul_result1_carry__0_i_5
       (.I0(\cycle_reg[0]_0 ),
        .I1(src1[6]),
        .I2(mul_result1_carry_i_9_n_0),
        .I3(src1[5]),
        .O(\cycle_reg[0]_2 [3]));
  LUT4 #(
    .INIT(16'h4B44)) 
    mul_result1_carry__0_i_6
       (.I0(\cycle_reg[0]_0 ),
        .I1(src1[5]),
        .I2(mul_result1_carry_i_9_n_0),
        .I3(src1[4]),
        .O(\cycle_reg[0]_2 [2]));
  LUT4 #(
    .INIT(16'h4B44)) 
    mul_result1_carry__0_i_7
       (.I0(\cycle_reg[0]_0 ),
        .I1(src1[4]),
        .I2(mul_result1_carry_i_9_n_0),
        .I3(src1[3]),
        .O(\cycle_reg[0]_2 [1]));
  LUT4 #(
    .INIT(16'h4B44)) 
    mul_result1_carry__0_i_8
       (.I0(\cycle_reg[0]_0 ),
        .I1(src1[3]),
        .I2(mul_result1_carry_i_9_n_0),
        .I3(src1[2]),
        .O(\cycle_reg[0]_2 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry__1_i_1
       (.I0(src1[6]),
        .I1(mul_result1_carry_i_9_n_0),
        .O(\src_sel1_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry_i_1
       (.I0(src1[2]),
        .I1(\cycle_reg[0]_0 ),
        .O(\src_sel1_reg[0]_5 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry_i_2
       (.I0(src1[1]),
        .I1(\cycle_reg[0]_0 ),
        .O(\src_sel1_reg[0]_5 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry_i_3
       (.I0(src1[0]),
        .I1(\cycle_reg[0]_0 ),
        .O(\src_sel1_reg[0]_5 [0]));
  LUT4 #(
    .INIT(16'h4B44)) 
    mul_result1_carry_i_4
       (.I0(\cycle_reg[0]_0 ),
        .I1(src1[2]),
        .I2(mul_result1_carry_i_9_n_0),
        .I3(src1[1]),
        .O(\cycle_reg[0]_1 [2]));
  LUT4 #(
    .INIT(16'h4B44)) 
    mul_result1_carry_i_5
       (.I0(\cycle_reg[0]_0 ),
        .I1(src1[1]),
        .I2(mul_result1_carry_i_9_n_0),
        .I3(src1[0]),
        .O(\cycle_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'h4B44)) 
    mul_result1_carry_i_6
       (.I0(\cycle_reg[0]_0 ),
        .I1(src1[0]),
        .I2(mul_result1_carry_i_9_n_0),
        .I3(\pcon_reg[0] ),
        .O(\cycle_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'hACFFACF0AC0FAC00)) 
    mul_result1_carry_i_8
       (.I0(\src_sel2_reg[0]_5 ),
        .I1(\src_sel2_reg[0]_4 ),
        .I2(cycle[0]),
        .I3(cycle[1]),
        .I4(\tmp_div[1]_i_6_n_0 ),
        .I5(\src_sel2_reg[0]_2 ),
        .O(\cycle_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hACFFACF0AC0FAC00)) 
    mul_result1_carry_i_9
       (.I0(\src_sel2_reg[0]_6 ),
        .I1(\src_sel2_reg[0]_7 ),
        .I2(cycle[0]),
        .I3(cycle[1]),
        .I4(\tmp_div[1]_i_7_n_0 ),
        .I5(\src_sel2_reg[0]_3 ),
        .O(mul_result1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    \oc8051_div1/cycle[0]_i_1 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(state1),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(\cycle_reg[1]_5 ),
        .O(\alu_op_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFDFF00000200)) 
    \oc8051_div1/cycle[1]_i_1 
       (.I0(\cycle_reg[1]_5 ),
        .I1(\cycle[1]_i_2_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\cycle[1]_i_3_n_0 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\cycle_reg[1]_4 ),
        .O(\cycle_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF04000000)) 
    \oc8051_mul1/cycle[0]_i_1 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(state1),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(cycle[0]),
        .O(\alu_op_reg[2]_2 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    \oc8051_mul1/cycle[1]_i_1 
       (.I0(cycle[0]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(\alu_op_reg[0]_1 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(\cycle[1]_i_3_n_0 ),
        .I5(cycle[1]),
        .O(\cycle_reg[0]_5 ));
  LUT2 #(
    .INIT(4'h1)) 
    \op[7]_i_1 
       (.I0(p_0_in),
        .I1(\state_reg[0]_0 ),
        .O(\op[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[0]),
        .Q(\op_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[1]),
        .Q(\op_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[2]),
        .Q(\op_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[3]),
        .Q(\op_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[4]),
        .Q(\op_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[5]),
        .Q(\op_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[6]),
        .Q(\op_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \op_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\op[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(op1_n[7]),
        .Q(\op_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p0_out[0]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des1[0]),
        .O(wr_bit_r_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \p0_out[1]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(\alu_op_reg[1]_1 ),
        .O(wr_bit_r_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \p0_out[2]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(\alu_op_reg[1]_0 ),
        .O(wr_bit_r_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p0_out[3]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(des1[3]),
        .O(wr_bit_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \p0_out[4]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(\alu_op_reg[3]_2 ),
        .O(wr_bit_r_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \p0_out[5]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(\alu_op_reg[3]_3 ),
        .O(wr_bit_r_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \p0_out[6]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(\alu_op_reg[3]_0 ),
        .O(wr_bit_r_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \p0_out[7]_i_2 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(wr_bit_r),
        .I2(\alu_op_reg[3]_1 ),
        .O(wr_bit_r_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7F7FFF7F)) 
    \p2_out[6]_i_3 
       (.I0(rd_en_r_i_5[0]),
        .I1(state1),
        .I2(wr_reg_0),
        .I3(\ram_wr_sel_reg[2]_0 [1]),
        .I4(\ram_wr_sel_reg[2]_0 [2]),
        .O(wait_data_reg_inv_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \p2_out[7]_i_1 
       (.I0(wr_bit_r_reg_7),
        .I1(\ram_wr_sel_reg[2]_1 ),
        .I2(\p2_out_reg[7]_0 ),
        .I3(\p2_out_reg[7]_1 ),
        .O(\p2_out_reg[7] ));
  LUT6 #(
    .INIT(64'hBABBBBBB8A888888)) 
    \p3_out[7]_i_1 
       (.I0(wr_bit_r_reg_7),
        .I1(\p3_out_reg[7] ),
        .I2(\p3_out_reg[7]_0 ),
        .I3(\ram_wr_sel_reg[2]_1 ),
        .I4(wr_bit_r),
        .I5(\p3_out_reg[7]_1 ),
        .O(wr_bit_r_reg_17));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \pc_buf[15]_i_28 
       (.I0(\pc_buf[15]_i_18 ),
        .I1(\state_reg[0]_0 ),
        .I2(state1),
        .I3(p_0_in),
        .O(\state_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFBEEF)) 
    \pc_buf[4]_i_38 
       (.I0(\iadr_t[6]_i_10_n_0 ),
        .I1(\data[6]_i_8_n_0 ),
        .I2(\src_sel2_reg[0]_2 ),
        .I3(src1[3]),
        .I4(pc_wr_r_i_31_n_0),
        .I5(\pc_buf[4]_i_40_n_0 ),
        .O(\src_sel2_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pc_buf[4]_i_40 
       (.I0(\src_sel2_reg[0]_3 ),
        .I1(src1[4]),
        .O(\pc_buf[4]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h48)) 
    pc_wr_r_i_16
       (.I0(\wr_sfr_reg[1]_4 ),
        .I1(state1),
        .I2(\wr_sfr_reg_n_0_[0] ),
        .O(\wr_sfr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h00000000FF97FFFE)) 
    pc_wr_r_i_19
       (.I0(pc_wr_r_i_27_n_0),
        .I1(\tmp_div[1]_i_6_n_0 ),
        .I2(src1[5]),
        .I3(pc_wr_r_i_28_n_0),
        .I4(\iadr_t[7]_i_14_n_0 ),
        .I5(pc_wr_r_i_9),
        .O(\src_sel2_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFD4D400)) 
    pc_wr_r_i_27
       (.I0(\data[6]_i_8_n_0 ),
        .I1(\src_sel2_reg[0]_2 ),
        .I2(src1[3]),
        .I3(\src_sel2_reg[0]_3 ),
        .I4(src1[4]),
        .O(pc_wr_r_i_27_n_0));
  LUT6 #(
    .INIT(64'hF9FFFFF6FFF9F9FF)) 
    pc_wr_r_i_28
       (.I0(\src_sel2_reg[0]_3 ),
        .I1(src1[4]),
        .I2(pc_wr_r_i_31_n_0),
        .I3(src1[3]),
        .I4(\src_sel2_reg[0]_2 ),
        .I5(\data[6]_i_8_n_0 ),
        .O(pc_wr_r_i_28_n_0));
  LUT6 #(
    .INIT(64'hFEEFEFFDFFFFFFFF)) 
    pc_wr_r_i_31
       (.I0(pc_wr_r_i_33_n_0),
        .I1(pc_wr_r_i_34_n_0),
        .I2(\iadr_t[3]_i_9_n_0 ),
        .I3(\src_sel2_reg[0]_4 ),
        .I4(src1[1]),
        .I5(\pc_buf[4]_i_38_0 ),
        .O(pc_wr_r_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h9)) 
    pc_wr_r_i_33
       (.I0(\src_sel2_reg[0]_7 ),
        .I1(src1[2]),
        .O(pc_wr_r_i_33_n_0));
  LUT6 #(
    .INIT(64'hFFFEEBBFEBBFFFFE)) 
    pc_wr_r_i_34
       (.I0(pc_wr_r_i_31_0),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\pcon_reg[0] ),
        .I3(\src_sel2_reg[0]_5 ),
        .I4(src1[0]),
        .I5(\src_sel2_reg[0]_6 ),
        .O(pc_wr_r_i_34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0A2A)) 
    \psw_set[1]_i_3 
       (.I0(\psw_set[1]_i_2 ),
        .I1(p_0_in),
        .I2(state1),
        .I3(\state_reg[0]_0 ),
        .O(\state_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \psw_set_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\psw_set_reg[1]_1 [0]),
        .Q(\psw_set_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \psw_set_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\psw_set_reg[1]_1 [1]),
        .Q(\psw_set_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_rd_sel_r[1]_i_5 
       (.I0(p_0_in),
        .I1(state1),
        .O(\state_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ram_rd_sel_r[2]_i_12 
       (.I0(p_0_in),
        .I1(state1),
        .I2(\state_reg[0]_0 ),
        .O(\state_reg[1]_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \ram_rd_sel_r_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ram_rd_sel_r_reg[0]_3 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_rd_sel_r_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ram_rd_sel_r_reg[2]_0 [0]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_rd_sel_r_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ram_rd_sel_r_reg[2]_0 [1]),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_wr_sel[1]_i_4 
       (.I0(\state_reg[0]_0 ),
        .I1(state1),
        .O(\state_reg[0]_3 ));
  FDCE #(
    .INIT(1'b0)) 
    \ram_wr_sel_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\ram_wr_sel_reg[2]_6 [0]),
        .Q(\ram_wr_sel_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_wr_sel_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\ram_wr_sel_reg[2]_6 [1]),
        .Q(\ram_wr_sel_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ram_wr_sel_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\ram_wr_sel_reg[2]_6 [2]),
        .Q(\ram_wr_sel_reg[2]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00808888)) 
    rd_en_r_i_10
       (.I0(wr_reg_0),
        .I1(state1),
        .I2(\ram_wr_sel_reg[2]_0 [1]),
        .I3(\ram_wr_sel_reg[2]_0 [2]),
        .I4(rd_en_r_i_5[1]),
        .O(wr0));
  LUT2 #(
    .INIT(4'h2)) 
    rd_ind_i_1
       (.I0(\ram_rd_sel_r_reg[0]_0 ),
        .I1(rd_ind_reg),
        .O(rd_ind0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h74777444)) 
    \ri_r[1]_i_1 
       (.I0(\alu_op_reg[1]_1 ),
        .I1(\ri_r_reg[1] ),
        .I2(\ri_r_reg[1]_0 ),
        .I3(\data_reg[4]_0 ),
        .I4(\ri_r_reg[1]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5FD050DAFF8F5A85)) 
    \ri_r[3]_i_4 
       (.I0(\buff[0][3]_i_7_n_0 ),
        .I1(\buff[0][3]_i_6_n_0 ),
        .I2(\buff[0][3]_i_5_n_0 ),
        .I3(\buff[0][3]_i_4_n_0 ),
        .I4(\src_sel2_reg[0]_7 ),
        .I5(src1[2]),
        .O(\alu_op_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h74777444)) 
    \ri_r[4]_i_1 
       (.I0(\alu_op_reg[3]_2 ),
        .I1(\ri_r_reg[1] ),
        .I2(\ri_r_reg[4] ),
        .I3(\data_reg[4]_0 ),
        .I4(\ri_r_reg[4]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \ri_r[4]_i_6 
       (.I0(\rn_r_reg[3] ),
        .I1(\buff[0][4]_i_3_n_0 ),
        .I2(\buff[0][3]_i_7_n_0 ),
        .I3(\ri_r[4]_i_8_n_0 ),
        .I4(\buff[0][3]_i_5_n_0 ),
        .I5(\ri_r[4]_i_9_n_0 ),
        .O(\alu_op_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h9E)) 
    \ri_r[4]_i_8 
       (.I0(\buff[0][3]_i_4_n_0 ),
        .I1(\src_sel2_reg[0]_2 ),
        .I2(src1[3]),
        .O(\ri_r[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h202F2020202F2F2F)) 
    \ri_r[4]_i_9 
       (.I0(\src_sel2_reg[0]_2 ),
        .I1(src1[3]),
        .I2(\buff[0][3]_i_4_n_0 ),
        .I3(\buff_reg[0][3]_i_13_n_4 ),
        .I4(\buff[0][3]_i_12_n_0 ),
        .I5(\buff_reg[0][3]_i_11_n_4 ),
        .O(\ri_r[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \rn_r[3]_i_1 
       (.I0(\rn_r_reg[3]_i_2_n_0 ),
        .I1(\buff[0][3]_i_7_n_0 ),
        .I2(\rn_r[3]_i_3_n_0 ),
        .I3(\rn_r_reg[3] ),
        .I4(psw[0]),
        .O(bank_sel[0]));
  LUT6 #(
    .INIT(64'hC2D0BFBF42503F3F)) 
    \rn_r[3]_i_3 
       (.I0(\alu_op_reg[0]_1 ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\iadr_t[9]_i_2_n_0 ),
        .I3(\cycle[1]_i_2_n_0 ),
        .I4(src1[2]),
        .I5(\src_sel2_reg[0]_7 ),
        .O(\rn_r[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h61)) 
    \rn_r[3]_i_5 
       (.I0(\buff[0][3]_i_4_n_0 ),
        .I1(\src_sel2_reg[0]_7 ),
        .I2(src1[2]),
        .O(\rn_r[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00FFE2E2E2E2)) 
    \rn_r[3]_i_6 
       (.I0(\buff_reg[0][3]_i_11_n_5 ),
        .I1(\buff[0][3]_i_12_n_0 ),
        .I2(\buff_reg[0][3]_i_13_n_5 ),
        .I3(\src_sel2_reg[0]_7 ),
        .I4(src1[2]),
        .I5(\buff[0][3]_i_4_n_0 ),
        .O(\rn_r[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rn_r[4]_i_1 
       (.I0(\data_reg[4]_0 ),
        .O(bank_sel[1]));
  LUT5 #(
    .INIT(32'hCFC05555)) 
    \rn_r[4]_i_2 
       (.I0(psw[1]),
        .I1(\buff[0][4]_i_4_n_0 ),
        .I2(\buff[0][3]_i_7_n_0 ),
        .I3(\buff[0][4]_i_3_n_0 ),
        .I4(\rn_r_reg[3] ),
        .O(\data_reg[4]_0 ));
  MUXF7 \rn_r_reg[3]_i_2 
       (.I0(\rn_r[3]_i_5_n_0 ),
        .I1(\rn_r[3]_i_6_n_0 ),
        .O(\rn_r_reg[3]_i_2_n_0 ),
        .S(\buff[0][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC0EAC0C0FFEAC0C0)) 
    \sbuf_txd[1]_i_1 
       (.I0(des1[0]),
        .I1(\sbuf_txd_reg[7] [0]),
        .I2(\sbuf_txd_reg[1] ),
        .I3(\sbuf_txd_reg[1]_0 ),
        .I4(wr_sbuf),
        .I5(\alu_op_reg[1]_1 ),
        .O(\sbuf_txd_reg[8] [0]));
  LUT6 #(
    .INIT(64'hFFFF503050305030)) 
    \sbuf_txd[2]_i_1 
       (.I0(\alu_op_reg[1]_0 ),
        .I1(\alu_op_reg[1]_1 ),
        .I2(wr_sbuf),
        .I3(\sbuf_txd_reg[1]_0 ),
        .I4(\sbuf_txd_reg[7] [1]),
        .I5(\sbuf_txd_reg[1] ),
        .O(\sbuf_txd_reg[8] [1]));
  LUT6 #(
    .INIT(64'hFFFF503050305030)) 
    \sbuf_txd[3]_i_1 
       (.I0(\alu_op_reg[3]_4 ),
        .I1(\alu_op_reg[1]_0 ),
        .I2(wr_sbuf),
        .I3(\sbuf_txd_reg[1]_0 ),
        .I4(\sbuf_txd_reg[7] [2]),
        .I5(\sbuf_txd_reg[1] ),
        .O(\sbuf_txd_reg[8] [2]));
  LUT6 #(
    .INIT(64'hFFFF503050305030)) 
    \sbuf_txd[4]_i_1 
       (.I0(\alu_op_reg[3]_2 ),
        .I1(\alu_op_reg[3]_4 ),
        .I2(wr_sbuf),
        .I3(\sbuf_txd_reg[1]_0 ),
        .I4(\sbuf_txd_reg[7] [3]),
        .I5(\sbuf_txd_reg[1] ),
        .O(\sbuf_txd_reg[8] [3]));
  LUT6 #(
    .INIT(64'hFFFF503050305030)) 
    \sbuf_txd[5]_i_1 
       (.I0(\alu_op_reg[3]_3 ),
        .I1(\alu_op_reg[3]_2 ),
        .I2(wr_sbuf),
        .I3(\sbuf_txd_reg[1]_0 ),
        .I4(\sbuf_txd_reg[7] [4]),
        .I5(\sbuf_txd_reg[1] ),
        .O(\sbuf_txd_reg[8] [4]));
  LUT6 #(
    .INIT(64'hD5C0C0C0D5FFC0C0)) 
    \sbuf_txd[6]_i_1 
       (.I0(\alu_op_reg[3]_0 ),
        .I1(\sbuf_txd_reg[7] [5]),
        .I2(\sbuf_txd_reg[1] ),
        .I3(\sbuf_txd_reg[1]_0 ),
        .I4(wr_sbuf),
        .I5(\alu_op_reg[3]_3 ),
        .O(\sbuf_txd_reg[8] [5]));
  LUT6 #(
    .INIT(64'hFFFF503050305030)) 
    \sbuf_txd[7]_i_1 
       (.I0(\alu_op_reg[3]_1 ),
        .I1(\alu_op_reg[3]_0 ),
        .I2(wr_sbuf),
        .I3(\sbuf_txd_reg[1]_0 ),
        .I4(\sbuf_txd_reg[7] [6]),
        .I5(\sbuf_txd_reg[1] ),
        .O(\sbuf_txd_reg[8] [6]));
  LUT6 #(
    .INIT(64'hF0BBF0FFF0BBF000)) 
    \scon[0]_i_1 
       (.I0(\alu_op_reg[0]_0 ),
        .I1(\scon_reg[0]_0 ),
        .I2(des1[0]),
        .I3(\scon_reg[0]_1 ),
        .I4(\scon_reg[0]_2 ),
        .I5(scon),
        .O(\scon_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \sp[2]_i_1 
       (.I0(\alu_op_reg[1]_0 ),
        .I1(\sp_reg[2] ),
        .I2(\sp_reg[7]_0 ),
        .O(\sp[7]_i_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \sp[5]_i_1 
       (.I0(\alu_op_reg[3]_3 ),
        .I1(\sp_reg[7]_1 [1]),
        .I2(\sp_reg[7]_0 ),
        .O(\sp[7]_i_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \sp[6]_i_1 
       (.I0(\alu_op_reg[3]_0 ),
        .I1(\sp_reg[7]_1 [2]),
        .I2(\sp_reg[7]_0 ),
        .O(\sp[7]_i_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \sp[7]_i_1 
       (.I0(\alu_op_reg[3]_1 ),
        .I1(\sp_reg[7]_1 [3]),
        .I2(\sp_reg[7]_0 ),
        .O(\sp[7]_i_2 [3]));
  LUT4 #(
    .INIT(16'hC636)) 
    sp_out0_carry__0_i_1
       (.I0(\alu_op_reg[3]_1 ),
        .I1(\ram_wr_sel_reg[0]_1 ),
        .I2(\sp_reg[7]_0 ),
        .I3(sp_out0_carry__0[7]),
        .O(\sp_reg[7] [3]));
  LUT4 #(
    .INIT(16'hC636)) 
    sp_out0_carry__0_i_2
       (.I0(\alu_op_reg[3]_0 ),
        .I1(\ram_wr_sel_reg[0]_1 ),
        .I2(\sp_reg[7]_0 ),
        .I3(sp_out0_carry__0[6]),
        .O(\sp_reg[7] [2]));
  LUT4 #(
    .INIT(16'hC636)) 
    sp_out0_carry__0_i_3
       (.I0(\alu_op_reg[3]_3 ),
        .I1(\ram_wr_sel_reg[0]_1 ),
        .I2(\sp_reg[7]_0 ),
        .I3(sp_out0_carry__0[5]),
        .O(\sp_reg[7] [1]));
  LUT4 #(
    .INIT(16'hC636)) 
    sp_out0_carry__0_i_4
       (.I0(\alu_op_reg[3]_2 ),
        .I1(\ram_wr_sel_reg[0]_1 ),
        .I2(\sp_reg[7]_0 ),
        .I3(sp_out0_carry__0[4]),
        .O(\sp_reg[7] [0]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    sp_out0_carry_i_2
       (.I0(\ram_wr_sel_reg[2]_0 [2]),
        .I1(state1),
        .I2(\ram_wr_sel_reg[2]_0 [1]),
        .I3(\ram_wr_sel_reg[2]_0 [0]),
        .O(\ram_wr_sel_reg[2]_3 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    sp_out0_carry_i_3
       (.I0(\ram_wr_sel_reg[2]_0 [2]),
        .I1(state1),
        .I2(\ram_wr_sel_reg[2]_0 [1]),
        .I3(\ram_wr_sel_reg[2]_0 [0]),
        .O(\ram_wr_sel_reg[2]_4 ));
  LUT4 #(
    .INIT(16'hA959)) 
    sp_out0_carry_i_4
       (.I0(\ram_wr_sel_reg[0]_1 ),
        .I1(des1[3]),
        .I2(\sp_reg[7]_0 ),
        .I3(sp_out0_carry__0[3]),
        .O(\sp_reg[3] [3]));
  LUT4 #(
    .INIT(16'hC636)) 
    sp_out0_carry_i_5
       (.I0(\alu_op_reg[1]_0 ),
        .I1(\ram_wr_sel_reg[0]_1 ),
        .I2(\sp_reg[7]_0 ),
        .I3(sp_out0_carry__0[2]),
        .O(\sp_reg[3] [2]));
  LUT4 #(
    .INIT(16'hC636)) 
    sp_out0_carry_i_6
       (.I0(\alu_op_reg[1]_1 ),
        .I1(\ram_wr_sel_reg[0]_1 ),
        .I2(\sp_reg[7]_0 ),
        .I3(sp_out0_carry__0[1]),
        .O(\sp_reg[3] [1]));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    sp_out0_carry_i_7
       (.I0(pop),
        .I1(\ram_wr_sel_reg[2]_0 [0]),
        .I2(\ram_wr_sel_reg[2]_0 [1]),
        .I3(state1),
        .I4(\ram_wr_sel_reg[2]_0 [2]),
        .O(\sp_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sp_out0_carry_i_8
       (.I0(\ram_wr_sel_reg[2]_0 [0]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(state1),
        .I3(\ram_wr_sel_reg[2]_0 [2]),
        .O(\ram_wr_sel_reg[0]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \src_sel1_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\src_sel1_reg[2]_1 [0]),
        .Q(\src_sel1_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_sel1_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\src_sel1_reg[2]_1 [1]),
        .Q(\src_sel1_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \src_sel1_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\src_sel1_reg[2]_1 [2]),
        .Q(\src_sel1_reg[2]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \src_sel2_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\src_sel2_reg[1]_0 [0]),
        .Q(src_sel2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \src_sel2_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\src_sel2_reg[1]_0 [1]),
        .Q(src_sel2[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0A2A)) 
    src_sel3_i_2
       (.I0(src_sel3_reg_0),
        .I1(p_0_in),
        .I2(state1),
        .I3(\state_reg[0]_0 ),
        .O(\state_reg[1]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    src_sel3_reg
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(src_sel30),
        .Q(src_sel3));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\state_reg[0]_5 ),
        .PRE(rst_IBUF),
        .Q(\state_reg[0]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\state_reg[1]_4 ),
        .PRE(rst_IBUF),
        .Q(p_0_in));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    sub0_carry__0_i_10
       (.I0(\iadr_t_reg[9]_i_10_2 ),
        .I1(src_sel2[0]),
        .I2(op2_r[4]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [4]),
        .O(\src_sel2_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    sub0_carry__0_i_6
       (.I0(src1[5]),
        .I1(sub0_carry__0_0),
        .I2(sub0_carry__0[3]),
        .I3(divsrc2[1]),
        .I4(O[0]),
        .I5(\cycle_reg[1]_2 ),
        .O(\tmp_rem_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    sub1_carry__0_i_10
       (.I0(\src_sel2_reg[0]_2 ),
        .I1(\src_sel2_reg[0]_4 ),
        .I2(\cycle_reg[1]_4 ),
        .I3(\src_sel2_reg[0]_5 ),
        .I4(\cycle_reg[1]_5 ),
        .O(\cycle_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    sub1_carry__0_i_11
       (.I0(sub1_carry__0_i_17_n_0),
        .I1(\iadr_t_reg[13]_1 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[5]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry__0_i_18_n_0),
        .O(src1[4]));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    sub1_carry__0_i_12
       (.I0(sub1_carry__0_i_19_n_0),
        .I1(\iadr_t_reg[13]_i_17_0 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[7]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry__0_i_21_n_0),
        .O(src1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sub1_carry__0_i_13
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .I1(\src_sel2_reg[0]_2 ),
        .I2(\cycle_reg[1]_4 ),
        .I3(\src_sel2_reg[0]_4 ),
        .I4(\cycle_reg[1]_5 ),
        .I5(\src_sel2_reg[0]_5 ),
        .O(\cycle_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    sub1_carry__0_i_14
       (.I0(\src_sel1_reg[2]_0 [2]),
        .I1(\src_sel1_reg[2]_0 [1]),
        .I2(\data_out_reg[7]_1 [6]),
        .I3(\src_sel1_reg[2]_0 [0]),
        .I4(op3_r[6]),
        .O(sub1_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h00F0F0F050503030)) 
    sub1_carry__0_i_16
       (.I0(sub1_carry__0_i_12_0[5]),
        .I1(sub1_carry__0_i_12_0[12]),
        .I2(\src_sel1_reg[2]_0 [2]),
        .I3(sub1_carry__0_i_12_1[5]),
        .I4(\src_sel1_reg[2]_0 [0]),
        .I5(\src_sel1_reg[2]_0 [1]),
        .O(sub1_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    sub1_carry__0_i_17
       (.I0(\src_sel1_reg[2]_0 [2]),
        .I1(\src_sel1_reg[2]_0 [1]),
        .I2(\data_out_reg[7]_1 [5]),
        .I3(\src_sel1_reg[2]_0 [0]),
        .I4(op3_r[5]),
        .O(sub1_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'h00F0F0F050503030)) 
    sub1_carry__0_i_18
       (.I0(sub1_carry__0_i_12_0[4]),
        .I1(sub1_carry__0_i_12_0[11]),
        .I2(\src_sel1_reg[2]_0 [2]),
        .I3(sub1_carry__0_i_12_1[4]),
        .I4(\src_sel1_reg[2]_0 [0]),
        .I5(\src_sel1_reg[2]_0 [1]),
        .O(sub1_carry__0_i_18_n_0));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    sub1_carry__0_i_19
       (.I0(\src_sel1_reg[2]_0 [2]),
        .I1(\src_sel1_reg[2]_0 [1]),
        .I2(\data_out_reg[7]_1 [7]),
        .I3(\src_sel1_reg[2]_0 [0]),
        .I4(op3_r[7]),
        .O(sub1_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h00F0F0F050503030)) 
    sub1_carry__0_i_21
       (.I0(sub1_carry__0_i_12_0[6]),
        .I1(sub1_carry__0_i_12_0[13]),
        .I2(\src_sel1_reg[2]_0 [2]),
        .I3(sub1_carry__0_i_12_1[6]),
        .I4(\src_sel1_reg[2]_0 [0]),
        .I5(\src_sel1_reg[2]_0 [1]),
        .O(sub1_carry__0_i_21_n_0));
  LUT6 #(
    .INIT(64'hAACCFFF0000000F0)) 
    sub1_carry__0_i_3
       (.I0(\src_sel2_reg[0]_7 ),
        .I1(\src_sel2_reg[0]_6 ),
        .I2(src1[3]),
        .I3(\cycle_reg[1]_5 ),
        .I4(\cycle_reg[1]_4 ),
        .I5(sub0_carry__0[1]),
        .O(\cycle_reg[0] ));
  LUT6 #(
    .INIT(64'h999A99956665666A)) 
    sub1_carry__0_i_7
       (.I0(\cycle_reg[0] ),
        .I1(sub0_carry__0[2]),
        .I2(\cycle_reg[1]_4 ),
        .I3(\cycle_reg[1]_5 ),
        .I4(src1[4]),
        .I5(\cycle_reg[1]_3 ),
        .O(\tmp_rem_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    sub1_carry__0_i_8
       (.I0(\src_sel2_reg[0]_3 ),
        .I1(\src_sel2_reg[0]_7 ),
        .I2(\cycle_reg[1]_4 ),
        .I3(\src_sel2_reg[0]_6 ),
        .I4(\cycle_reg[1]_5 ),
        .O(\cycle_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    sub1_carry__0_i_9
       (.I0(sub1_carry__0_i_14_n_0),
        .I1(\iadr_t_reg[13]_i_17_1 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[6]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry__0_i_16_n_0),
        .O(src1[5]));
  LUT6 #(
    .INIT(64'hAACCFFF0000000F0)) 
    sub1_carry_i_1
       (.I0(\src_sel2_reg[0]_4 ),
        .I1(\src_sel2_reg[0]_5 ),
        .I2(src1[2]),
        .I3(\cycle_reg[1]_5 ),
        .I4(\cycle_reg[1]_4 ),
        .I5(sub0_carry__0[0]),
        .O(DI));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    sub1_carry_i_10
       (.I0(sub1_carry_i_17_n_0),
        .I1(\iadr_t_reg[9]_i_10_1 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[2]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry_i_18_n_0),
        .O(src1[1]));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    sub1_carry_i_11
       (.I0(sub1_carry_i_19_n_0),
        .I1(\iadr_t_reg[9]_i_10_2 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[4]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry_i_21_n_0),
        .O(src1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    sub1_carry_i_12
       (.I0(\src_sel2_reg[0]_6 ),
        .I1(\cycle_reg[1]_5 ),
        .I2(\src_sel2_reg[0]_7 ),
        .I3(\cycle_reg[1]_4 ),
        .O(sub1_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    sub1_carry_i_13
       (.I0(\src_sel2_reg[0]_5 ),
        .I1(\cycle_reg[1]_5 ),
        .I2(\src_sel2_reg[0]_4 ),
        .I3(\cycle_reg[1]_4 ),
        .O(\cycle_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    sub1_carry_i_14
       (.I0(sub1_carry_i_22_n_0),
        .I1(\iadr_t_reg[9]_i_10_0 ),
        .I2(\src_sel1_reg[2]_0 [0]),
        .I3(op2_r[1]),
        .I4(\src_sel1_reg[2]_0 [1]),
        .I5(sub1_carry_i_23_n_0),
        .O(src1[0]));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    sub1_carry_i_17
       (.I0(\src_sel1_reg[2]_0 [2]),
        .I1(\src_sel1_reg[2]_0 [1]),
        .I2(\data_out_reg[7]_1 [2]),
        .I3(\src_sel1_reg[2]_0 [0]),
        .I4(op3_r[2]),
        .O(sub1_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h00F0F0F050503030)) 
    sub1_carry_i_18
       (.I0(sub1_carry__0_i_12_0[1]),
        .I1(sub1_carry__0_i_12_0[8]),
        .I2(\src_sel1_reg[2]_0 [2]),
        .I3(sub1_carry__0_i_12_1[1]),
        .I4(\src_sel1_reg[2]_0 [0]),
        .I5(\src_sel1_reg[2]_0 [1]),
        .O(sub1_carry_i_18_n_0));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    sub1_carry_i_19
       (.I0(\src_sel1_reg[2]_0 [2]),
        .I1(\src_sel1_reg[2]_0 [1]),
        .I2(\data_out_reg[7]_1 [4]),
        .I3(\src_sel1_reg[2]_0 [0]),
        .I4(op3_r[4]),
        .O(sub1_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h00F0F0F050503030)) 
    sub1_carry_i_21
       (.I0(sub1_carry__0_i_12_0[3]),
        .I1(sub1_carry__0_i_12_0[10]),
        .I2(\src_sel1_reg[2]_0 [2]),
        .I3(sub1_carry__0_i_12_1[3]),
        .I4(\src_sel1_reg[2]_0 [0]),
        .I5(\src_sel1_reg[2]_0 [1]),
        .O(sub1_carry_i_21_n_0));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    sub1_carry_i_22
       (.I0(\src_sel1_reg[2]_0 [2]),
        .I1(\src_sel1_reg[2]_0 [1]),
        .I2(\data_out_reg[7]_1 [1]),
        .I3(\src_sel1_reg[2]_0 [0]),
        .I4(op3_r[1]),
        .O(sub1_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h00F0F0F050503030)) 
    sub1_carry_i_23
       (.I0(sub1_carry__0_i_12_0[0]),
        .I1(sub1_carry__0_i_12_0[7]),
        .I2(\src_sel1_reg[2]_0 [2]),
        .I3(sub1_carry__0_i_12_1[0]),
        .I4(\src_sel1_reg[2]_0 [0]),
        .I5(\src_sel1_reg[2]_0 [1]),
        .O(sub1_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h999A99956665666A)) 
    sub1_carry_i_4
       (.I0(DI),
        .I1(sub0_carry__0[1]),
        .I2(\cycle_reg[1]_4 ),
        .I3(\cycle_reg[1]_5 ),
        .I4(src1[3]),
        .I5(sub1_carry_i_12_n_0),
        .O(S));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    sub1_carry_i_8
       (.I0(\iadr_t_reg[9]_i_10_1 ),
        .I1(src_sel2[0]),
        .I2(op2_r[2]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [2]),
        .O(\src_sel2_reg[0]_4 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    sub1_carry_i_9
       (.I0(\iadr_t_reg[9]_i_10_0 ),
        .I1(src_sel2[0]),
        .I2(op2_r[1]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [1]),
        .O(\src_sel2_reg[0]_6 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \t2con[0]_i_1 
       (.I0(des1[0]),
        .I1(\t2con_reg[0]_0 ),
        .I2(\alu_op_reg[0]_0 ),
        .I3(\t2con_reg[0]_1 ),
        .I4(t2con),
        .O(\t2con_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \th0[0]_i_1 
       (.I0(des1[0]),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[0] ),
        .O(\th0_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \th0[1]_i_1 
       (.I0(\alu_op_reg[1]_1 ),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[1] ),
        .O(\th0_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \th0[2]_i_1 
       (.I0(\alu_op_reg[1]_0 ),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[2] ),
        .O(\th0_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \th0[3]_i_1 
       (.I0(des1[3]),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[3]_0 ),
        .O(\th0_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \th0[4]_i_1 
       (.I0(\alu_op_reg[3]_2 ),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[4] ),
        .O(\th0_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \th0[5]_i_1 
       (.I0(\alu_op_reg[3]_3 ),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[5] ),
        .O(\th0_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \th0[6]_i_1 
       (.I0(\alu_op_reg[3]_0 ),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[6] ),
        .O(\th0_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \th0[7]_i_2 
       (.I0(\alu_op_reg[3]_1 ),
        .I1(\th0_reg[3] ),
        .I2(\th0_reg[7]_0 ),
        .O(\th0_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tl0[3]_i_1 
       (.I0(des1[3]),
        .I1(\tl0_reg[3] ),
        .I2(\tl0_reg[3]_0 ),
        .O(\tmod_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \tl1[1]_i_1 
       (.I0(\alu_op_reg[1]_1 ),
        .I1(\tl1_reg[3] ),
        .I2(\tl1_reg[1] ),
        .O(\tmod_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \tl1[2]_i_1 
       (.I0(\alu_op_reg[1]_0 ),
        .I1(\tl1_reg[3] ),
        .I2(\tl1_reg[2] ),
        .O(\tmod_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tl1[3]_i_1 
       (.I0(des1[3]),
        .I1(\tl1_reg[3] ),
        .I2(\tl1_reg[3]_0 ),
        .O(\tmod_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \tl1[4]_i_2 
       (.I0(\alu_op_reg[3]_2 ),
        .I1(\tl1_reg[3] ),
        .I2(\tl1_reg[4] ),
        .O(\tmod_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_div[0]_i_1 
       (.I0(CO),
        .I1(\cycle_reg[1]_0 ),
        .O(divsrc2[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \tmp_div[1]_i_1 
       (.I0(\cycle_reg[1]_0 ),
        .I1(\cycle_reg[1]_1 ),
        .I2(O[1]),
        .O(divsrc2[1]));
  LUT6 #(
    .INIT(64'hF2F2F2F2F2000000)) 
    \tmp_div[1]_i_2 
       (.I0(\tmp_div[1]_i_4_n_0 ),
        .I1(\tmp_div[1]_i_5_n_0 ),
        .I2(\cycle_reg[1]_4 ),
        .I3(\tmp_div[1]_i_6_n_0 ),
        .I4(\tmp_div[1]_i_7_n_0 ),
        .I5(\cycle_reg[1]_5 ),
        .O(\cycle_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tmp_div[1]_i_3 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(\src_sel2_reg[0]_3 ),
        .I2(\cycle_reg[1]_4 ),
        .I3(\src_sel2_reg[0]_7 ),
        .I4(\cycle_reg[1]_5 ),
        .I5(\src_sel2_reg[0]_6 ),
        .O(\cycle_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hAC00)) 
    \tmp_div[1]_i_4 
       (.I0(\tmp_div[1]_i_6_n_0 ),
        .I1(\src_sel2_reg[0]_4 ),
        .I2(\cycle_reg[1]_5 ),
        .I3(\src_sel2_reg[0]_2 ),
        .O(\tmp_div[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h53FF)) 
    \tmp_div[1]_i_5 
       (.I0(\tmp_div[1]_i_7_n_0 ),
        .I1(\src_sel2_reg[0]_7 ),
        .I2(\cycle_reg[1]_5 ),
        .I3(\src_sel2_reg[0]_3 ),
        .O(\tmp_div[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \tmp_div[1]_i_6 
       (.I0(\iadr_t_reg[13]_i_17_1 ),
        .I1(src_sel2[0]),
        .I2(op2_r[6]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [6]),
        .O(\tmp_div[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h3F113FDD)) 
    \tmp_div[1]_i_7 
       (.I0(\iadr_t_reg[13]_i_17_0 ),
        .I1(src_sel2[0]),
        .I2(op2_r[7]),
        .I3(src_sel2[1]),
        .I4(\data_out_reg[7]_1 [7]),
        .O(\tmp_div[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \wr_addr_reg[0]_i_1 
       (.I0(op3_r[0]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[0]_i_2_n_0 ),
        .O(\ram_wr_sel_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \wr_addr_reg[0]_i_2 
       (.I0(\wr_addr_reg[0]_i_3_n_0 ),
        .I1(\ram_wr_sel_reg[2]_0 [0]),
        .I2(state1),
        .I3(\wr_addr_reg[4]_i_1_1 [0]),
        .I4(\ram_wr_sel_reg[2]_0 [1]),
        .I5(\wr_addr_reg[4]_i_1_2 [0]),
        .O(\wr_addr_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AFFFFFF9A000000)) 
    \wr_addr_reg[0]_i_3 
       (.I0(sp_out0_carry__0[0]),
        .I1(\ram_wr_sel_reg[2]_0 [2]),
        .I2(\ram_wr_sel_reg[2]_0 [0]),
        .I3(\ram_wr_sel_reg[2]_0 [1]),
        .I4(state1),
        .I5(op2_r[0]),
        .O(\wr_addr_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \wr_addr_reg[1]_i_1 
       (.I0(op3_r[1]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[1] ),
        .O(\ram_wr_sel_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \wr_addr_reg[2]_i_1 
       (.I0(op3_r[2]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[2] ),
        .O(\ram_wr_sel_reg[1]_0 [2]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \wr_addr_reg[3]_i_1 
       (.I0(op3_r[3]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[3]_i_2_n_0 ),
        .O(\ram_wr_sel_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_addr_reg[3]_i_2 
       (.I0(\wr_addr_reg[3]_i_1_0 ),
        .I1(op2_r[3]),
        .I2(\ram_wr_sel_reg[0]_0 ),
        .I3(\wr_addr_reg[4]_i_1_1 [1]),
        .I4(\ram_wr_sel_reg[1]_1 ),
        .I5(\wr_addr_reg[4]_i_1_2 [1]),
        .O(\wr_addr_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFE000)) 
    \wr_addr_reg[4]_i_1 
       (.I0(\ram_wr_sel_reg[2]_0 [1]),
        .I1(op3_r[4]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[4]_i_2_n_0 ),
        .O(\ram_wr_sel_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_addr_reg[4]_i_2 
       (.I0(\wr_addr_reg[4]_i_1_0 ),
        .I1(op2_r[4]),
        .I2(\ram_wr_sel_reg[0]_0 ),
        .I3(\wr_addr_reg[4]_i_1_1 [2]),
        .I4(\ram_wr_sel_reg[1]_1 ),
        .I5(\wr_addr_reg[4]_i_1_2 [2]),
        .O(\wr_addr_reg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFE000)) 
    \wr_addr_reg[5]_i_1 
       (.I0(op3_r[5]),
        .I1(\ram_wr_sel_reg[2]_0 [1]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[5] ),
        .O(\ram_wr_sel_reg[1]_0 [5]));
  LUT5 #(
    .INIT(32'hEFFFE000)) 
    \wr_addr_reg[6]_i_1 
       (.I0(\ram_wr_sel_reg[2]_0 [1]),
        .I1(op3_r[6]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[6] ),
        .O(\ram_wr_sel_reg[1]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_reg[6]_i_4 
       (.I0(\ram_wr_sel_reg[2]_0 [0]),
        .I1(state1),
        .O(\ram_wr_sel_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_addr_reg[6]_i_5 
       (.I0(\ram_wr_sel_reg[2]_0 [1]),
        .I1(state1),
        .O(\ram_wr_sel_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hEFFFE000)) 
    \wr_addr_reg[7]_i_1 
       (.I0(\ram_wr_sel_reg[2]_0 [1]),
        .I1(op3_r[7]),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .I3(state1),
        .I4(\wr_addr_reg[7] ),
        .O(\ram_wr_sel_reg[1]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \wr_addr_reg[7]_i_2 
       (.I0(\ram_wr_sel_reg[2]_0 [0]),
        .I1(state1),
        .I2(\ram_wr_sel_reg[2]_0 [2]),
        .O(E));
  FDCE #(
    .INIT(1'b0)) 
    wr_reg
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(wr0_0),
        .Q(wr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \wr_sfr[0]_i_7 
       (.I0(\state_reg[0]_0 ),
        .I1(state1),
        .I2(p_0_in),
        .O(\state_reg[0]_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_sfr_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\wr_sfr_reg[1]_7 [0]),
        .Q(\wr_sfr_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \wr_sfr_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(state1),
        .CLR(rst_IBUF),
        .D(\wr_sfr_reg[1]_7 [1]),
        .Q(\wr_sfr_reg[1]_4 ));
endmodule

module oc8051_divide
   (O,
    \cycle_reg[1]_0 ,
    \cycle_reg[0]_0 ,
    Q,
    \tmp_rem_reg[7]_0 ,
    \cycle_reg[1]_1 ,
    CO,
    \tmp_div_reg[5]_0 ,
    DI,
    S,
    \tmp_div_reg[1]_0 ,
    \tmp_div_reg[1]_1 ,
    \tmp_rem_reg[7]_1 ,
    \cycle_reg[1]_2 ,
    clk_8051_BUFG,
    rst_IBUF,
    \cycle_reg[0]_1 ,
    sub1_carry__0_0,
    src1,
    divsrc2,
    sub0_carry__0_0,
    sub0_carry__0_1,
    sub1_carry_0,
    sub1_carry__0_1,
    sub1_carry__0_2,
    sub0_carry_0,
    sub1_carry_1,
    sub0_carry_1,
    sub0_carry_2,
    sub0_carry__0_2,
    sub0_carry__0_3);
  output [1:0]O;
  output \cycle_reg[1]_0 ;
  output \cycle_reg[0]_0 ;
  output [3:0]Q;
  output [7:0]\tmp_rem_reg[7]_0 ;
  output \cycle_reg[1]_1 ;
  output [0:0]CO;
  output [5:0]\tmp_div_reg[5]_0 ;
  input [0:0]DI;
  input [0:0]S;
  input [0:0]\tmp_div_reg[1]_0 ;
  input [0:0]\tmp_div_reg[1]_1 ;
  input [0:0]\tmp_rem_reg[7]_1 ;
  input \cycle_reg[1]_2 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \cycle_reg[0]_1 ;
  input sub1_carry__0_0;
  input [7:0]src1;
  input [1:0]divsrc2;
  input sub0_carry__0_0;
  input sub0_carry__0_1;
  input sub1_carry_0;
  input sub1_carry__0_1;
  input sub1_carry__0_2;
  input sub0_carry_0;
  input sub1_carry_1;
  input sub0_carry_1;
  input sub0_carry_2;
  input sub0_carry__0_2;
  input sub0_carry__0_3;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [1:0]O;
  wire [3:0]Q;
  wire [0:0]S;
  wire clk_8051_BUFG;
  wire \cycle_reg[0]_0 ;
  wire \cycle_reg[0]_1 ;
  wire \cycle_reg[1]_0 ;
  wire \cycle_reg[1]_1 ;
  wire \cycle_reg[1]_2 ;
  wire [1:0]divsrc2;
  wire [7:1]p_1_in;
  wire rst_IBUF;
  wire [7:0]src1;
  wire sub0_carry_0;
  wire sub0_carry_1;
  wire sub0_carry_2;
  wire sub0_carry__0_0;
  wire sub0_carry__0_1;
  wire sub0_carry__0_2;
  wire sub0_carry__0_3;
  wire sub0_carry__0_i_5_n_0;
  wire sub0_carry__0_i_7_n_0;
  wire sub0_carry__0_i_8_n_0;
  wire sub0_carry__0_n_0;
  wire sub0_carry__0_n_1;
  wire sub0_carry__0_n_2;
  wire sub0_carry__0_n_3;
  wire sub0_carry__0_n_4;
  wire sub0_carry__0_n_5;
  wire sub0_carry__0_n_6;
  wire sub0_carry__0_n_7;
  wire sub0_carry_i_4_n_0;
  wire sub0_carry_i_5_n_0;
  wire sub0_carry_i_6_n_0;
  wire sub0_carry_i_7_n_0;
  wire sub0_carry_i_8_n_0;
  wire sub0_carry_n_0;
  wire sub0_carry_n_1;
  wire sub0_carry_n_2;
  wire sub0_carry_n_3;
  wire sub0_carry_n_4;
  wire sub0_carry_n_5;
  wire sub0_carry_n_6;
  wire sub0_carry_n_7;
  wire sub1_carry_0;
  wire sub1_carry_1;
  wire sub1_carry__0_0;
  wire sub1_carry__0_1;
  wire sub1_carry__0_2;
  wire sub1_carry__0_i_1_n_0;
  wire sub1_carry__0_i_2_n_0;
  wire sub1_carry__0_i_4_n_0;
  wire sub1_carry__0_i_5_n_0;
  wire sub1_carry__0_i_6_n_0;
  wire sub1_carry__0_n_1;
  wire sub1_carry__0_n_2;
  wire sub1_carry__0_n_3;
  wire sub1_carry__0_n_5;
  wire sub1_carry__0_n_7;
  wire sub1_carry_i_2_n_0;
  wire sub1_carry_i_3_n_0;
  wire sub1_carry_i_5_n_0;
  wire sub1_carry_i_6_n_0;
  wire sub1_carry_i_7_n_0;
  wire sub1_carry_n_0;
  wire sub1_carry_n_1;
  wire sub1_carry_n_2;
  wire sub1_carry_n_3;
  wire sub1_carry_n_4;
  wire sub1_carry_n_5;
  wire sub1_carry_n_6;
  wire sub1_carry_n_7;
  wire [0:0]\tmp_div_reg[1]_0 ;
  wire [0:0]\tmp_div_reg[1]_1 ;
  wire [5:0]\tmp_div_reg[5]_0 ;
  wire [7:0]tmp_rem;
  wire \tmp_rem[1]_i_2_n_0 ;
  wire \tmp_rem[2]_i_2_n_0 ;
  wire \tmp_rem[3]_i_2_n_0 ;
  wire \tmp_rem[4]_i_2_n_0 ;
  wire \tmp_rem[5]_i_2_n_0 ;
  wire \tmp_rem[6]_i_2_n_0 ;
  wire \tmp_rem[7]_i_2_n_0 ;
  wire [7:0]\tmp_rem_reg[7]_0 ;
  wire [0:0]\tmp_rem_reg[7]_1 ;
  wire [3:3]NLW_sub1_carry__0_CO_UNCONNECTED;
  wire [3:1]\NLW_tmp_div_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_div_reg[0]_i_2_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \cycle_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\cycle_reg[0]_1 ),
        .Q(\cycle_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\cycle_reg[1]_2 ),
        .Q(\cycle_reg[1]_0 ));
  CARRY4 sub0_carry
       (.CI(1'b0),
        .CO({sub0_carry_n_0,sub0_carry_n_1,sub0_carry_n_2,sub0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({p_1_in[3:1],sub0_carry_i_4_n_0}),
        .O({sub0_carry_n_4,sub0_carry_n_5,sub0_carry_n_6,sub0_carry_n_7}),
        .S({sub0_carry_i_5_n_0,sub0_carry_i_6_n_0,sub0_carry_i_7_n_0,sub0_carry_i_8_n_0}));
  CARRY4 sub0_carry__0
       (.CI(sub0_carry_n_0),
        .CO({sub0_carry__0_n_0,sub0_carry__0_n_1,sub0_carry__0_n_2,sub0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p_1_in[7:4]),
        .O({sub0_carry__0_n_4,sub0_carry__0_n_5,sub0_carry__0_n_6,sub0_carry__0_n_7}),
        .S({sub0_carry__0_i_5_n_0,\tmp_rem_reg[7]_1 ,sub0_carry__0_i_7_n_0,sub0_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    sub0_carry__0_i_1
       (.I0(sub1_carry__0_n_5),
        .I1(divsrc2[1]),
        .I2(tmp_rem[7]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    sub0_carry__0_i_2
       (.I0(O[0]),
        .I1(sub0_carry__0_0),
        .I2(sub0_carry__0_1),
        .I3(O[1]),
        .I4(\tmp_rem[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    sub0_carry__0_i_3
       (.I0(sub1_carry__0_n_7),
        .I1(divsrc2[1]),
        .I2(Q[2]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    sub0_carry__0_i_4
       (.I0(sub1_carry_n_4),
        .I1(divsrc2[1]),
        .I2(Q[1]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[4]),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h6)) 
    sub0_carry__0_i_5
       (.I0(p_1_in[7]),
        .I1(sub0_carry__0_1),
        .O(sub0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h555966599959AA59)) 
    sub0_carry__0_i_7
       (.I0(p_1_in[5]),
        .I1(\cycle_reg[0]_0 ),
        .I2(sub1_carry_0),
        .I3(\cycle_reg[1]_0 ),
        .I4(sub0_carry_2),
        .I5(sub0_carry__0_3),
        .O(sub0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h555966599959AA59)) 
    sub0_carry__0_i_8
       (.I0(p_1_in[4]),
        .I1(\cycle_reg[0]_0 ),
        .I2(sub0_carry_0),
        .I3(\cycle_reg[1]_0 ),
        .I4(sub0_carry_1),
        .I5(sub0_carry__0_2),
        .O(sub0_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sub0_carry__0_i_9
       (.I0(\cycle_reg[1]_0 ),
        .I1(\cycle_reg[0]_0 ),
        .O(\cycle_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    sub0_carry_i_1
       (.I0(sub1_carry_n_5),
        .I1(divsrc2[1]),
        .I2(Q[0]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    sub0_carry_i_2
       (.I0(sub1_carry_n_6),
        .I1(divsrc2[1]),
        .I2(tmp_rem[2]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    sub0_carry_i_3
       (.I0(sub1_carry_n_7),
        .I1(divsrc2[1]),
        .I2(tmp_rem[1]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    sub0_carry_i_4
       (.I0(tmp_rem[0]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[0]),
        .O(sub0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h59555999)) 
    sub0_carry_i_5
       (.I0(p_1_in[3]),
        .I1(\cycle_reg[1]_0 ),
        .I2(sub0_carry_2),
        .I3(\cycle_reg[0]_0 ),
        .I4(sub1_carry_0),
        .O(sub0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h59555999)) 
    sub0_carry_i_6
       (.I0(p_1_in[2]),
        .I1(\cycle_reg[1]_0 ),
        .I2(sub0_carry_1),
        .I3(\cycle_reg[0]_0 ),
        .I4(sub0_carry_0),
        .O(sub0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h5595)) 
    sub0_carry_i_7
       (.I0(p_1_in[1]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(sub1_carry_0),
        .O(sub0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h3C333355)) 
    sub0_carry_i_8
       (.I0(src1[0]),
        .I1(tmp_rem[0]),
        .I2(sub0_carry_0),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .O(sub0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub1_carry
       (.CI(1'b0),
        .CO({sub1_carry_n_0,sub1_carry_n_1,sub1_carry_n_2,sub1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,sub1_carry_i_2_n_0,sub1_carry_i_3_n_0,1'b0}),
        .O({sub1_carry_n_4,sub1_carry_n_5,sub1_carry_n_6,sub1_carry_n_7}),
        .S({S,sub1_carry_i_5_n_0,sub1_carry_i_6_n_0,sub1_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub1_carry__0
       (.CI(sub1_carry_n_0),
        .CO({NLW_sub1_carry__0_CO_UNCONNECTED[3],sub1_carry__0_n_1,sub1_carry__0_n_2,sub1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sub1_carry__0_i_1_n_0,sub1_carry__0_i_2_n_0,\tmp_div_reg[1]_0 }),
        .O({O[1],sub1_carry__0_n_5,O[0],sub1_carry__0_n_7}),
        .S({sub1_carry__0_i_4_n_0,sub1_carry__0_i_5_n_0,sub1_carry__0_i_6_n_0,\tmp_div_reg[1]_1 }));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    sub1_carry__0_i_1
       (.I0(sub1_carry__0_0),
        .I1(src1[6]),
        .I2(\cycle_reg[0]_0 ),
        .I3(\cycle_reg[1]_0 ),
        .I4(Q[3]),
        .O(sub1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    sub1_carry__0_i_2
       (.I0(sub1_carry__0_2),
        .I1(src1[5]),
        .I2(\cycle_reg[0]_0 ),
        .I3(\cycle_reg[1]_0 ),
        .I4(Q[2]),
        .O(sub1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h01FDFFFF)) 
    sub1_carry__0_i_4
       (.I0(src1[7]),
        .I1(\cycle_reg[0]_0 ),
        .I2(\cycle_reg[1]_0 ),
        .I3(tmp_rem[7]),
        .I4(sub1_carry__0_1),
        .O(sub1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9696969996969666)) 
    sub1_carry__0_i_5
       (.I0(sub1_carry__0_i_1_n_0),
        .I1(sub1_carry__0_1),
        .I2(tmp_rem[7]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[7]),
        .O(sub1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h999A99956665666A)) 
    sub1_carry__0_i_6
       (.I0(sub1_carry__0_i_2_n_0),
        .I1(Q[3]),
        .I2(\cycle_reg[1]_0 ),
        .I3(\cycle_reg[0]_0 ),
        .I4(src1[6]),
        .I5(sub1_carry__0_0),
        .O(sub1_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hAFFC000C)) 
    sub1_carry_i_2
       (.I0(sub1_carry_0),
        .I1(src1[2]),
        .I2(\cycle_reg[0]_0 ),
        .I3(\cycle_reg[1]_0 ),
        .I4(tmp_rem[2]),
        .O(sub1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    sub1_carry_i_3
       (.I0(tmp_rem[1]),
        .I1(sub0_carry_0),
        .I2(\cycle_reg[1]_0 ),
        .I3(\cycle_reg[0]_0 ),
        .O(sub1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h999A99956665666A)) 
    sub1_carry_i_5
       (.I0(sub1_carry_i_2_n_0),
        .I1(Q[0]),
        .I2(\cycle_reg[1]_0 ),
        .I3(\cycle_reg[0]_0 ),
        .I4(src1[3]),
        .I5(sub1_carry_1),
        .O(sub1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h999A9995699A6995)) 
    sub1_carry_i_6
       (.I0(sub1_carry_i_3_n_0),
        .I1(tmp_rem[2]),
        .I2(\cycle_reg[1]_0 ),
        .I3(\cycle_reg[0]_0 ),
        .I4(src1[2]),
        .I5(sub1_carry_0),
        .O(sub1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hAFFC500C)) 
    sub1_carry_i_7
       (.I0(sub0_carry_0),
        .I1(src1[1]),
        .I2(\cycle_reg[0]_0 ),
        .I3(\cycle_reg[1]_0 ),
        .I4(tmp_rem[1]),
        .O(sub1_carry_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_div_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(divsrc2[0]),
        .Q(\tmp_div_reg[5]_0 [0]));
  CARRY4 \tmp_div_reg[0]_i_2 
       (.CI(sub0_carry__0_n_0),
        .CO({\NLW_tmp_div_reg[0]_i_2_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_div_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_div_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(divsrc2[1]),
        .Q(\tmp_div_reg[5]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_div_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_div_reg[5]_0 [0]),
        .Q(\tmp_div_reg[5]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_div_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_div_reg[5]_0 [1]),
        .Q(\tmp_div_reg[5]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_div_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_div_reg[5]_0 [2]),
        .Q(\tmp_div_reg[5]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_div_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_div_reg[5]_0 [3]),
        .Q(\tmp_div_reg[5]_0 [5]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    \tmp_rem[0]_i_1 
       (.I0(sub0_carry_n_7),
        .I1(divsrc2[0]),
        .I2(tmp_rem[0]),
        .I3(\cycle_reg[1]_0 ),
        .I4(\cycle_reg[0]_0 ),
        .I5(src1[0]),
        .O(\tmp_rem_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_rem[1]_i_1 
       (.I0(sub0_carry_n_6),
        .I1(divsrc2[0]),
        .I2(sub1_carry_n_7),
        .I3(divsrc2[1]),
        .I4(\tmp_rem[1]_i_2_n_0 ),
        .O(\tmp_rem_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \tmp_rem[1]_i_2 
       (.I0(tmp_rem[1]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[1]),
        .O(\tmp_rem[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_rem[2]_i_1 
       (.I0(sub0_carry_n_5),
        .I1(divsrc2[0]),
        .I2(sub1_carry_n_6),
        .I3(divsrc2[1]),
        .I4(\tmp_rem[2]_i_2_n_0 ),
        .O(\tmp_rem_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \tmp_rem[2]_i_2 
       (.I0(tmp_rem[2]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[2]),
        .O(\tmp_rem[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_rem[3]_i_1 
       (.I0(sub0_carry_n_4),
        .I1(divsrc2[0]),
        .I2(sub1_carry_n_5),
        .I3(divsrc2[1]),
        .I4(\tmp_rem[3]_i_2_n_0 ),
        .O(\tmp_rem_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \tmp_rem[3]_i_2 
       (.I0(Q[0]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[3]),
        .O(\tmp_rem[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_rem[4]_i_1 
       (.I0(sub0_carry__0_n_7),
        .I1(divsrc2[0]),
        .I2(sub1_carry_n_4),
        .I3(divsrc2[1]),
        .I4(\tmp_rem[4]_i_2_n_0 ),
        .O(\tmp_rem_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \tmp_rem[4]_i_2 
       (.I0(Q[1]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[4]),
        .O(\tmp_rem[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_rem[5]_i_1 
       (.I0(sub0_carry__0_n_6),
        .I1(divsrc2[0]),
        .I2(sub1_carry__0_n_7),
        .I3(divsrc2[1]),
        .I4(\tmp_rem[5]_i_2_n_0 ),
        .O(\tmp_rem_reg[7]_0 [5]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \tmp_rem[5]_i_2 
       (.I0(Q[2]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[5]),
        .O(\tmp_rem[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_rem[6]_i_1 
       (.I0(sub0_carry__0_n_5),
        .I1(divsrc2[0]),
        .I2(O[0]),
        .I3(divsrc2[1]),
        .I4(\tmp_rem[6]_i_2_n_0 ),
        .O(\tmp_rem_reg[7]_0 [6]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \tmp_rem[6]_i_2 
       (.I0(Q[3]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[6]),
        .O(\tmp_rem[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_rem[7]_i_1 
       (.I0(sub0_carry__0_n_4),
        .I1(divsrc2[0]),
        .I2(sub1_carry__0_n_5),
        .I3(divsrc2[1]),
        .I4(\tmp_rem[7]_i_2_n_0 ),
        .O(\tmp_rem_reg[7]_0 [7]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \tmp_rem[7]_i_2 
       (.I0(tmp_rem[7]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(src1[7]),
        .O(\tmp_rem[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [0]),
        .Q(tmp_rem[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [1]),
        .Q(tmp_rem[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [2]),
        .Q(tmp_rem[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [3]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [4]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [5]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [6]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_rem_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tmp_rem_reg[7]_0 [7]),
        .Q(tmp_rem[7]));
endmodule

module oc8051_dptr
   (\data_hi_reg[7]_0 ,
    Q,
    E,
    \data_hi_reg[7]_1 ,
    clk_8051_BUFG,
    rst_IBUF,
    \data_lo_reg[0]_0 ,
    \data_lo_reg[7]_0 );
  output [7:0]\data_hi_reg[7]_0 ;
  output [7:0]Q;
  input [0:0]E;
  input [7:0]\data_hi_reg[7]_1 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input [0:0]\data_lo_reg[0]_0 ;
  input [7:0]\data_lo_reg[7]_0 ;

  wire [0:0]E;
  wire [7:0]Q;
  wire clk_8051_BUFG;
  wire [7:0]\data_hi_reg[7]_0 ;
  wire [7:0]\data_hi_reg[7]_1 ;
  wire [0:0]\data_lo_reg[0]_0 ;
  wire [7:0]\data_lo_reg[7]_0 ;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [0]),
        .Q(\data_hi_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [1]),
        .Q(\data_hi_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [2]),
        .Q(\data_hi_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [3]),
        .Q(\data_hi_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [4]),
        .Q(\data_hi_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [5]),
        .Q(\data_hi_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [6]),
        .Q(\data_hi_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_hi_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\data_hi_reg[7]_1 [7]),
        .Q(\data_hi_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_lo_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\data_lo_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(\data_lo_reg[7]_0 [7]),
        .Q(Q[7]));
endmodule

(* NotValidForBitStream *)
module oc8051_fpga_top
   (clk_100M,
    rst,
    internal_addr,
    rxd,
    txd);
  input clk_100M;
  input rst;
  output [7:0]internal_addr;
  input rxd;
  output txd;

  wire clk_100M;
  wire clk_100M_IBUF;
  wire clk_100M_IBUF_BUFG;
  wire clk_8051;
  wire clk_8051_BUFG;
  wire iack_i;
  wire [7:0]iadr_o;
  wire [31:0]idat_i;
  wire [7:0]internal_addr;
  wire [7:0]internal_addr_OBUF;
  wire [15:2]\oc8051_memory_interface1/iadr_t ;
  wire \oc8051_memory_interface1/int_ack_t ;
  wire [15:2]\oc8051_memory_interface1/pc_out ;
  wire oc8051_top_1_n_0;
  wire oc8051_top_1_n_26;
  wire oc8051_top_1_n_3;
  wire oc8051_top_1_n_35;
  wire oc8051_top_1_n_36;
  wire oc8051_xrom1_n_0;
  wire rst;
  wire rst_IBUF;
  wire rxd;
  wire rxd_IBUF;
  wire txd;
  wire txd_OBUF;

  BUFG clk_100M_IBUF_BUFG_inst
       (.I(clk_100M_IBUF),
        .O(clk_100M_IBUF_BUFG));
  IBUF clk_100M_IBUF_inst
       (.I(clk_100M),
        .O(clk_100M_IBUF));
  BUFG clk_8051_BUFG_inst
       (.I(clk_8051),
        .O(clk_8051_BUFG));
  clock_divider clock_divider1
       (.clk_100M_IBUF_BUFG(clk_100M_IBUF_BUFG),
        .clk_8051(clk_8051),
        .rst_IBUF(rst_IBUF));
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
       (.D(idat_i),
        .Q({\oc8051_memory_interface1/iadr_t [15:14],\oc8051_memory_interface1/iadr_t [9],\oc8051_memory_interface1/iadr_t [7:5],\oc8051_memory_interface1/iadr_t [2]}),
        .ack_o(iack_i),
        .clk_8051_BUFG(clk_8051_BUFG),
        .iadr_o(iadr_o),
        .\iadr_t_reg[5] (oc8051_top_1_n_26),
        .\iadr_t_reg[5]_0 (oc8051_top_1_n_35),
        .int_ack_t(\oc8051_memory_interface1/int_ack_t ),
        .internal_addr_OBUF(internal_addr_OBUF),
        .istb_t_reg(oc8051_top_1_n_0),
        .istb_t_reg_0(oc8051_top_1_n_3),
        .istb_t_reg_1(oc8051_top_1_n_36),
        .\pc_buf_reg[15] ({\oc8051_memory_interface1/pc_out [15:14],\oc8051_memory_interface1/pc_out [9],\oc8051_memory_interface1/pc_out [7:5],\oc8051_memory_interface1/pc_out [2]}),
        .reti_reg(oc8051_xrom1_n_0),
        .rst_IBUF(rst_IBUF),
        .rxd_IBUF(rxd_IBUF),
        .txd_OBUF(txd_OBUF));
  oc8051_xrom oc8051_xrom1
       (.D(idat_i),
        .Q({\oc8051_memory_interface1/iadr_t [15:14],\oc8051_memory_interface1/iadr_t [9],\oc8051_memory_interface1/iadr_t [7:5],\oc8051_memory_interface1/iadr_t [2]}),
        .ack_o(iack_i),
        .ack_o_reg_0(oc8051_xrom1_n_0),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\data[21]_i_4_0 (oc8051_top_1_n_26),
        .\data[3]_i_2_0 (oc8051_top_1_n_35),
        .\data_reg[25]_0 ({\oc8051_memory_interface1/pc_out [15:14],\oc8051_memory_interface1/pc_out [9],\oc8051_memory_interface1/pc_out [7:5],\oc8051_memory_interface1/pc_out [2]}),
        .\data_reg[25]_1 (oc8051_top_1_n_0),
        .iadr_o(iadr_o),
        .int_ack_t(\oc8051_memory_interface1/int_ack_t ),
        .internal_addr_OBUF(internal_addr_OBUF),
        .\p_0_out_inferred__0/data[24]_i_2_0 (oc8051_top_1_n_3),
        .\p_0_out_inferred__0/data[30]_i_2_0 (oc8051_top_1_n_36),
        .rst_IBUF(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF rxd_IBUF_inst
       (.I(rxd),
        .O(rxd_IBUF));
  OBUF txd_OBUF_inst
       (.I(txd_OBUF),
        .O(txd));
endmodule

module oc8051_indi_addr
   (D,
    \buff_reg[0][5]_0 ,
    \buff_reg[2][6]_0 ,
    \buff_reg[0][7]_0 ,
    \buff_reg[2][1]_0 ,
    Q,
    \buff_reg[3][0]_0 ,
    \buff_reg[0][0]_0 ,
    \buff_reg[1][0]_0 ,
    \buff_reg[6][1]_0 ,
    \buff_reg[2][4]_0 ,
    \buff_reg[6][4]_0 ,
    \buff_reg[2][2]_0 ,
    \buff_reg[0][0]_1 ,
    \data_reg[3] ,
    \ri_r_reg[3] ,
    \ri_r_reg[5] ,
    \ri_r_reg[3]_0 ,
    \ri_r_reg[6] ,
    \ri_r_reg[7] ,
    \ri_r_reg[3]_1 ,
    bank_sel,
    \ri_r_reg[1] ,
    \buff_reg[0][7]_1 ,
    \ri_r_reg[0] ,
    psw,
    \ri_r_reg[2] ,
    E,
    clk_8051_BUFG,
    rst_IBUF,
    \buff_reg[1][7]_0 ,
    \buff_reg[2][0]_0 ,
    \buff_reg[3][7]_0 ,
    \buff_reg[4][0]_0 ,
    \buff_reg[5][7]_0 ,
    \buff_reg[6][7]_0 ,
    \buff_reg[7][7]_0 );
  output [4:0]D;
  output \buff_reg[0][5]_0 ;
  output \buff_reg[2][6]_0 ;
  output \buff_reg[0][7]_0 ;
  output \buff_reg[2][1]_0 ;
  output [0:0]Q;
  output [0:0]\buff_reg[3][0]_0 ;
  output [0:0]\buff_reg[0][0]_0 ;
  output [0:0]\buff_reg[1][0]_0 ;
  output \buff_reg[6][1]_0 ;
  output \buff_reg[2][4]_0 ;
  output \buff_reg[6][4]_0 ;
  output \buff_reg[2][2]_0 ;
  output \buff_reg[0][0]_1 ;
  output \data_reg[3] ;
  input \ri_r_reg[3] ;
  input \ri_r_reg[5] ;
  input \ri_r_reg[3]_0 ;
  input \ri_r_reg[6] ;
  input \ri_r_reg[7] ;
  input \ri_r_reg[3]_1 ;
  input [0:0]bank_sel;
  input \ri_r_reg[1] ;
  input [7:0]\buff_reg[0][7]_1 ;
  input \ri_r_reg[0] ;
  input [0:0]psw;
  input \ri_r_reg[2] ;
  input [0:0]E;
  input clk_8051_BUFG;
  input rst_IBUF;
  input [0:0]\buff_reg[1][7]_0 ;
  input [0:0]\buff_reg[2][0]_0 ;
  input [0:0]\buff_reg[3][7]_0 ;
  input [0:0]\buff_reg[4][0]_0 ;
  input [0:0]\buff_reg[5][7]_0 ;
  input [0:0]\buff_reg[6][7]_0 ;
  input [0:0]\buff_reg[7][7]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]bank_sel;
  wire bit_out_i_112_n_0;
  wire bit_out_i_113_n_0;
  wire [0:0]\buff_reg[0][0]_0 ;
  wire \buff_reg[0][0]_1 ;
  wire \buff_reg[0][5]_0 ;
  wire \buff_reg[0][7]_0 ;
  wire [7:0]\buff_reg[0][7]_1 ;
  wire [7:1]\buff_reg[0]_0 ;
  wire [0:0]\buff_reg[1][0]_0 ;
  wire [0:0]\buff_reg[1][7]_0 ;
  wire [7:1]\buff_reg[1]_1 ;
  wire [0:0]\buff_reg[2][0]_0 ;
  wire \buff_reg[2][1]_0 ;
  wire \buff_reg[2][2]_0 ;
  wire \buff_reg[2][4]_0 ;
  wire \buff_reg[2][6]_0 ;
  wire [7:1]\buff_reg[2]_2 ;
  wire [0:0]\buff_reg[3][0]_0 ;
  wire [0:0]\buff_reg[3][7]_0 ;
  wire [7:1]\buff_reg[3]_3 ;
  wire [0:0]\buff_reg[4][0]_0 ;
  wire [7:0]\buff_reg[4]_4 ;
  wire [0:0]\buff_reg[5][7]_0 ;
  wire [7:0]\buff_reg[5]_5 ;
  wire \buff_reg[6][1]_0 ;
  wire \buff_reg[6][4]_0 ;
  wire [0:0]\buff_reg[6][7]_0 ;
  wire [7:0]\buff_reg[6]_6 ;
  wire [0:0]\buff_reg[7][7]_0 ;
  wire [7:0]\buff_reg[7]_7 ;
  wire clk_8051_BUFG;
  wire \data_reg[3] ;
  wire [0:0]psw;
  wire \ri_r[0]_i_5_n_0 ;
  wire \ri_r[0]_i_6_n_0 ;
  wire \ri_r[2]_i_3_n_0 ;
  wire \ri_r[2]_i_4_n_0 ;
  wire \ri_r[2]_i_5_n_0 ;
  wire \ri_r[2]_i_6_n_0 ;
  wire \ri_r[3]_i_2_n_0 ;
  wire \ri_r[3]_i_3_n_0 ;
  wire \ri_r[5]_i_3_n_0 ;
  wire \ri_r[5]_i_4_n_0 ;
  wire \ri_r[6]_i_3_n_0 ;
  wire \ri_r[6]_i_4_n_0 ;
  wire \ri_r[7]_i_3_n_0 ;
  wire \ri_r[7]_i_4_n_0 ;
  wire \ri_r_reg[0] ;
  wire \ri_r_reg[1] ;
  wire \ri_r_reg[2] ;
  wire \ri_r_reg[3] ;
  wire \ri_r_reg[3]_0 ;
  wire \ri_r_reg[3]_1 ;
  wire \ri_r_reg[5] ;
  wire \ri_r_reg[6] ;
  wire \ri_r_reg[7] ;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    bit_out_i_111
       (.I0(bit_out_i_112_n_0),
        .I1(bit_out_i_113_n_0),
        .I2(\ri_r_reg[3] ),
        .I3(\ri_r[0]_i_5_n_0 ),
        .I4(bank_sel),
        .I5(\ri_r[0]_i_6_n_0 ),
        .O(\buff_reg[0][0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    bit_out_i_112
       (.I0(\buff_reg[0][0]_0 ),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[1][0]_0 ),
        .O(bit_out_i_112_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    bit_out_i_113
       (.I0(Q),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[3][0]_0 ),
        .O(bit_out_i_113_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][0] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(\buff_reg[0][0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][1] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][2] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][3] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][4] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][5] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][6] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[0][7] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][0] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(\buff_reg[1][0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][1] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[1]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][2] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[1]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][3] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[1]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][4] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[1]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][5] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[1]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][6] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[1]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[1][7] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[1][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[1]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][0] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][1] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[2]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][2] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[2]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][3] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[2]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][4] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[2]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][5] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[2]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][6] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[2]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[2][7] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[2][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[2]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][0] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(\buff_reg[3][0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][1] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[3]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][2] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[3]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][3] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[3]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][4] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[3]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][5] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[3]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][6] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[3]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[3][7] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[3][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[3]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][0] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(\buff_reg[4]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][1] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[4]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][2] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[4]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][3] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[4]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][4] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[4]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][5] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[4]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][6] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[4]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[4][7] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[4][0]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[4]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][0] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(\buff_reg[5]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][1] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[5]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][2] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[5]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][3] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[5]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][4] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[5]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][5] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[5]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][6] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[5]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[5][7] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[5][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[5]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][0] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(\buff_reg[6]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][1] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[6]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][2] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[6]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][3] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[6]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][4] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[6]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][5] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[6]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][6] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[6]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[6][7] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[6][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[6]_6 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][0] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [0]),
        .Q(\buff_reg[7]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][1] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [1]),
        .Q(\buff_reg[7]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][2] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [2]),
        .Q(\buff_reg[7]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][3] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [3]),
        .Q(\buff_reg[7]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][4] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [4]),
        .Q(\buff_reg[7]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][5] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [5]),
        .Q(\buff_reg[7]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][6] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [6]),
        .Q(\buff_reg[7]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buff_reg[7][7] 
       (.C(clk_8051_BUFG),
        .CE(\buff_reg[7][7]_0 ),
        .CLR(rst_IBUF),
        .D(\buff_reg[0][7]_1 [7]),
        .Q(\buff_reg[7]_7 [7]));
  LUT5 #(
    .INIT(32'h4540757F)) 
    \ri_r[0]_i_4 
       (.I0(\ri_r[0]_i_5_n_0 ),
        .I1(\buff_reg[0][7]_1 [3]),
        .I2(\ri_r_reg[0] ),
        .I3(psw),
        .I4(\ri_r[0]_i_6_n_0 ),
        .O(\data_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ri_r[0]_i_5 
       (.I0(\buff_reg[6]_6 [0]),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[7]_7 [0]),
        .O(\ri_r[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ri_r[0]_i_6 
       (.I0(\buff_reg[4]_4 [0]),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[5]_5 [0]),
        .O(\ri_r[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ri_r[1]_i_2 
       (.I0(\buff_reg[2]_2 [1]),
        .I1(\buff_reg[3]_3 [1]),
        .I2(bank_sel),
        .I3(\buff_reg[0]_0 [1]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[1]_1 [1]),
        .O(\buff_reg[2][1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ri_r[1]_i_3 
       (.I0(\buff_reg[6]_6 [1]),
        .I1(\buff_reg[7]_7 [1]),
        .I2(bank_sel),
        .I3(\buff_reg[4]_4 [1]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[5]_5 [1]),
        .O(\buff_reg[6][1]_0 ));
  LUT3 #(
    .INIT(8'h35)) 
    \ri_r[2]_i_1 
       (.I0(\buff_reg[2][2]_0 ),
        .I1(\ri_r_reg[2] ),
        .I2(\ri_r_reg[3]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \ri_r[2]_i_2 
       (.I0(\ri_r[2]_i_3_n_0 ),
        .I1(\ri_r[2]_i_4_n_0 ),
        .I2(\ri_r_reg[3] ),
        .I3(\ri_r[2]_i_5_n_0 ),
        .I4(bank_sel),
        .I5(\ri_r[2]_i_6_n_0 ),
        .O(\buff_reg[2][2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ri_r[2]_i_3 
       (.I0(\buff_reg[2]_2 [2]),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[3]_3 [2]),
        .O(\ri_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ri_r[2]_i_4 
       (.I0(\buff_reg[0]_0 [2]),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[1]_1 [2]),
        .O(\ri_r[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ri_r[2]_i_5 
       (.I0(\buff_reg[6]_6 [2]),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[7]_7 [2]),
        .O(\ri_r[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ri_r[2]_i_6 
       (.I0(\buff_reg[4]_4 [2]),
        .I1(\ri_r_reg[1] ),
        .I2(\buff_reg[5]_5 [2]),
        .O(\ri_r[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FF4747)) 
    \ri_r[3]_i_1 
       (.I0(\ri_r[3]_i_2_n_0 ),
        .I1(\ri_r_reg[3] ),
        .I2(\ri_r[3]_i_3_n_0 ),
        .I3(\ri_r_reg[3]_1 ),
        .I4(\ri_r_reg[3]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \ri_r[3]_i_2 
       (.I0(\buff_reg[0]_0 [3]),
        .I1(\buff_reg[1]_1 [3]),
        .I2(\buff_reg[2]_2 [3]),
        .I3(\ri_r_reg[1] ),
        .I4(\buff_reg[3]_3 [3]),
        .I5(bank_sel),
        .O(\ri_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \ri_r[3]_i_3 
       (.I0(\buff_reg[6]_6 [3]),
        .I1(\buff_reg[7]_7 [3]),
        .I2(bank_sel),
        .I3(\buff_reg[4]_4 [3]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[5]_5 [3]),
        .O(\ri_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ri_r[4]_i_3 
       (.I0(\buff_reg[2]_2 [4]),
        .I1(\buff_reg[3]_3 [4]),
        .I2(bank_sel),
        .I3(\buff_reg[0]_0 [4]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[1]_1 [4]),
        .O(\buff_reg[2][4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ri_r[4]_i_4 
       (.I0(\buff_reg[6]_6 [4]),
        .I1(\buff_reg[7]_7 [4]),
        .I2(bank_sel),
        .I3(\buff_reg[4]_4 [4]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[5]_5 [4]),
        .O(\buff_reg[6][4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ri_r[5]_i_1 
       (.I0(\buff_reg[0][5]_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ri_r[5]_i_2 
       (.I0(\ri_r[5]_i_3_n_0 ),
        .I1(\ri_r_reg[3] ),
        .I2(\ri_r[5]_i_4_n_0 ),
        .I3(\ri_r_reg[5] ),
        .I4(\ri_r_reg[3]_0 ),
        .O(\buff_reg[0][5]_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \ri_r[5]_i_3 
       (.I0(\buff_reg[0]_0 [5]),
        .I1(\buff_reg[1]_1 [5]),
        .I2(\buff_reg[2]_2 [5]),
        .I3(\ri_r_reg[1] ),
        .I4(\buff_reg[3]_3 [5]),
        .I5(bank_sel),
        .O(\ri_r[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \ri_r[5]_i_4 
       (.I0(\buff_reg[4]_4 [5]),
        .I1(\buff_reg[5]_5 [5]),
        .I2(\buff_reg[6]_6 [5]),
        .I3(\ri_r_reg[1] ),
        .I4(\buff_reg[7]_7 [5]),
        .I5(bank_sel),
        .O(\ri_r[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ri_r[6]_i_1 
       (.I0(\buff_reg[2][6]_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ri_r[6]_i_2 
       (.I0(\ri_r[6]_i_3_n_0 ),
        .I1(\ri_r_reg[3] ),
        .I2(\ri_r[6]_i_4_n_0 ),
        .I3(\ri_r_reg[6] ),
        .I4(\ri_r_reg[3]_0 ),
        .O(\buff_reg[2][6]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \ri_r[6]_i_3 
       (.I0(\buff_reg[2]_2 [6]),
        .I1(\buff_reg[3]_3 [6]),
        .I2(bank_sel),
        .I3(\buff_reg[0]_0 [6]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[1]_1 [6]),
        .O(\ri_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \ri_r[6]_i_4 
       (.I0(\buff_reg[6]_6 [6]),
        .I1(\buff_reg[7]_7 [6]),
        .I2(bank_sel),
        .I3(\buff_reg[4]_4 [6]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[5]_5 [6]),
        .O(\ri_r[6]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ri_r[7]_i_1 
       (.I0(\buff_reg[0][7]_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ri_r[7]_i_2 
       (.I0(\ri_r[7]_i_3_n_0 ),
        .I1(\ri_r_reg[3] ),
        .I2(\ri_r[7]_i_4_n_0 ),
        .I3(\ri_r_reg[7] ),
        .I4(\ri_r_reg[3]_0 ),
        .O(\buff_reg[0][7]_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \ri_r[7]_i_3 
       (.I0(\buff_reg[0]_0 [7]),
        .I1(\buff_reg[1]_1 [7]),
        .I2(\buff_reg[2]_2 [7]),
        .I3(\ri_r_reg[1] ),
        .I4(\buff_reg[3]_3 [7]),
        .I5(bank_sel),
        .O(\ri_r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \ri_r[7]_i_4 
       (.I0(\buff_reg[6]_6 [7]),
        .I1(\buff_reg[7]_7 [7]),
        .I2(bank_sel),
        .I3(\buff_reg[4]_4 [7]),
        .I4(\ri_r_reg[1] ),
        .I5(\buff_reg[5]_5 [7]),
        .O(\ri_r[7]_i_4_n_0 ));
endmodule

module oc8051_int
   (tf0_buff,
    tcon_ie0_reg_0,
    tcon_ie1_reg_0,
    int_proc_reg_0,
    \tcon_s_reg[3]_0 ,
    \tcon_s_reg[2]_0 ,
    \tcon_s_reg[1]_0 ,
    ip,
    \ie_reg[7]_0 ,
    ie,
    bit_out_reg_i_36,
    \ip_reg[7]_0 ,
    \ip_reg[0]_0 ,
    \ip_reg[1]_0 ,
    \ip_reg[2]_0 ,
    \ip_reg[3]_0 ,
    \ip_reg[4]_0 ,
    \ip_reg[5]_0 ,
    \ip_reg[6]_0 ,
    \tcon_s_reg[3]_1 ,
    tcon_ie0_reg_1,
    tcon_ie1_reg_1,
    tcon_tf0_reg_0,
    tcon_tf1_reg_0,
    \tcon_s_reg[0]_0 ,
    \tcon_s_reg[2]_1 ,
    \tcon_s_reg[2]_2 ,
    \int_vec_reg[1]_0 ,
    \int_vec_reg[5]_0 ,
    \tcon_s_reg[3]_2 ,
    \tcon_s_reg[2]_3 ,
    int_ack_reg,
    \isrc_reg[1][1]_0 ,
    tf0_buff_reg_0,
    clk_8051_BUFG,
    rst_IBUF,
    tcon_ie0_reg_2,
    tcon_ie1_reg_2,
    \tcon_s_reg[3]_3 ,
    \tcon_s_reg[2]_4 ,
    \tcon_s_reg[1]_1 ,
    \tcon_s_reg[0]_1 ,
    \ip_reg[7]_1 ,
    \ip_reg[6]_1 ,
    \ip_reg[5]_1 ,
    \ip_reg[4]_1 ,
    \ip_reg[3]_1 ,
    \ip_reg[2]_1 ,
    \ip_reg[1]_1 ,
    \ip_reg[0]_1 ,
    \ie_reg[7]_1 ,
    \ie_reg[6]_0 ,
    \ie_reg[5]_0 ,
    \ie_reg[4]_0 ,
    \ie_reg[3]_0 ,
    \ie_reg[2]_0 ,
    \ie_reg[1]_0 ,
    \ie_reg[0]_0 ,
    bit_out_i_4,
    bit_out_i_4_0,
    \dat0_reg[6] ,
    \dat0_reg[7] ,
    \dat0_reg[6]_0 ,
    \dat0_reg[0] ,
    \dat0_reg[1] ,
    \dat0_reg[2] ,
    \dat0_reg[3] ,
    \dat0_reg[4] ,
    \dat0_reg[5] ,
    \dat0_reg[6]_1 ,
    bit_out_reg_i_35_0,
    \dat0[7]_i_9_0 ,
    \dat0[7]_i_9_1 ,
    \dat0[7]_i_9_2 ,
    \dat0[7]_i_9_3 ,
    \dat0[7]_i_9_4 ,
    \dat0[6]_i_3_0 ,
    \dat0[5]_i_3_0 ,
    \dat0[4]_i_3_0 ,
    \dat0[3]_i_3_0 ,
    \dat0[2]_i_3_0 ,
    \dat0[1]_i_3_0 ,
    \dat0[0]_i_3_0 ,
    \dat0[1]_i_5 ,
    \dat0[1]_i_5_0 ,
    Q,
    D,
    \dat0[3]_i_9 ,
    \dat0[5]_i_9 ,
    \dat0[7]_i_20 ,
    \dat0[0]_i_8 ,
    \dat0[4]_i_9 ,
    \tl0_reg[0] ,
    \tl0_reg[0]_0 ,
    pres_ow__0,
    \int_lev_reg[0][0]_0 ,
    \int_lev_reg[0][0]_1 ,
    \int_lev_reg[1][0]_0 ,
    \isrc_reg[1][1]_1 ,
    \isrc_reg[1][1]_2 ,
    int_ack,
    tcon_tf0_reg_1,
    tcon_tf0_reg_2,
    tcon_tf1_reg_1,
    tcon_tf1_reg_2,
    tcon_tf1_reg_3,
    tcon_tf1_reg_4,
    reti,
    \int_vec_reg[1]_1 );
  output tf0_buff;
  output tcon_ie0_reg_0;
  output tcon_ie1_reg_0;
  output int_proc_reg_0;
  output \tcon_s_reg[3]_0 ;
  output \tcon_s_reg[2]_0 ;
  output [1:0]\tcon_s_reg[1]_0 ;
  output [7:0]ip;
  output \ie_reg[7]_0 ;
  output [6:0]ie;
  output bit_out_reg_i_36;
  output \ip_reg[7]_0 ;
  output \ip_reg[0]_0 ;
  output \ip_reg[1]_0 ;
  output \ip_reg[2]_0 ;
  output \ip_reg[3]_0 ;
  output \ip_reg[4]_0 ;
  output \ip_reg[5]_0 ;
  output \ip_reg[6]_0 ;
  output \tcon_s_reg[3]_1 ;
  output tcon_ie0_reg_1;
  output tcon_ie1_reg_1;
  output tcon_tf0_reg_0;
  output tcon_tf1_reg_0;
  output \tcon_s_reg[0]_0 ;
  output \tcon_s_reg[2]_1 ;
  output \tcon_s_reg[2]_2 ;
  output [0:0]\int_vec_reg[1]_0 ;
  output [3:0]\int_vec_reg[5]_0 ;
  output \tcon_s_reg[3]_2 ;
  output \tcon_s_reg[2]_3 ;
  output int_ack_reg;
  output \isrc_reg[1][1]_0 ;
  input tf0_buff_reg_0;
  input clk_8051_BUFG;
  input rst_IBUF;
  input tcon_ie0_reg_2;
  input tcon_ie1_reg_2;
  input \tcon_s_reg[3]_3 ;
  input \tcon_s_reg[2]_4 ;
  input \tcon_s_reg[1]_1 ;
  input \tcon_s_reg[0]_1 ;
  input \ip_reg[7]_1 ;
  input \ip_reg[6]_1 ;
  input \ip_reg[5]_1 ;
  input \ip_reg[4]_1 ;
  input \ip_reg[3]_1 ;
  input \ip_reg[2]_1 ;
  input \ip_reg[1]_1 ;
  input \ip_reg[0]_1 ;
  input \ie_reg[7]_1 ;
  input \ie_reg[6]_0 ;
  input \ie_reg[5]_0 ;
  input \ie_reg[4]_0 ;
  input \ie_reg[3]_0 ;
  input \ie_reg[2]_0 ;
  input \ie_reg[1]_0 ;
  input \ie_reg[0]_0 ;
  input bit_out_i_4;
  input bit_out_i_4_0;
  input \dat0_reg[6] ;
  input \dat0_reg[7] ;
  input [0:0]\dat0_reg[6]_0 ;
  input \dat0_reg[0] ;
  input \dat0_reg[1] ;
  input \dat0_reg[2] ;
  input \dat0_reg[3] ;
  input \dat0_reg[4] ;
  input \dat0_reg[5] ;
  input \dat0_reg[6]_1 ;
  input bit_out_reg_i_35_0;
  input \dat0[7]_i_9_0 ;
  input \dat0[7]_i_9_1 ;
  input \dat0[7]_i_9_2 ;
  input \dat0[7]_i_9_3 ;
  input [7:0]\dat0[7]_i_9_4 ;
  input \dat0[6]_i_3_0 ;
  input \dat0[5]_i_3_0 ;
  input \dat0[4]_i_3_0 ;
  input \dat0[3]_i_3_0 ;
  input \dat0[2]_i_3_0 ;
  input \dat0[1]_i_3_0 ;
  input \dat0[0]_i_3_0 ;
  input \dat0[1]_i_5 ;
  input \dat0[1]_i_5_0 ;
  input [6:0]Q;
  input [5:0]D;
  input \dat0[3]_i_9 ;
  input \dat0[5]_i_9 ;
  input \dat0[7]_i_20 ;
  input \dat0[0]_i_8 ;
  input \dat0[4]_i_9 ;
  input \tl0_reg[0] ;
  input \tl0_reg[0]_0 ;
  input pres_ow__0;
  input \int_lev_reg[0][0]_0 ;
  input \int_lev_reg[0][0]_1 ;
  input \int_lev_reg[1][0]_0 ;
  input \isrc_reg[1][1]_1 ;
  input \isrc_reg[1][1]_2 ;
  input int_ack;
  input tcon_tf0_reg_1;
  input tcon_tf0_reg_2;
  input tcon_tf1_reg_1;
  input tcon_tf1_reg_2;
  input tcon_tf1_reg_3;
  input tcon_tf1_reg_4;
  input reti;
  input [0:0]\int_vec_reg[1]_1 ;

  wire [5:0]D;
  wire [6:0]Q;
  wire bit_out_i_100_n_0;
  wire bit_out_i_101_n_0;
  wire bit_out_i_106_n_0;
  wire bit_out_i_107_n_0;
  wire bit_out_i_108_n_0;
  wire bit_out_i_109_n_0;
  wire bit_out_i_4;
  wire bit_out_i_4_0;
  wire bit_out_i_65_n_0;
  wire bit_out_i_66_n_0;
  wire bit_out_i_94_n_0;
  wire bit_out_i_95_n_0;
  wire bit_out_i_96_n_0;
  wire bit_out_i_97_n_0;
  wire bit_out_i_98_n_0;
  wire bit_out_i_99_n_0;
  wire bit_out_reg_i_35_0;
  wire bit_out_reg_i_35_n_0;
  wire bit_out_reg_i_36;
  wire clk_8051_BUFG;
  wire \dat0[0]_i_3_0 ;
  wire \dat0[0]_i_6_n_0 ;
  wire \dat0[0]_i_8 ;
  wire \dat0[1]_i_3_0 ;
  wire \dat0[1]_i_5 ;
  wire \dat0[1]_i_5_0 ;
  wire \dat0[1]_i_7_n_0 ;
  wire \dat0[2]_i_3_0 ;
  wire \dat0[2]_i_6_n_0 ;
  wire \dat0[3]_i_3_0 ;
  wire \dat0[3]_i_6_n_0 ;
  wire \dat0[3]_i_9 ;
  wire \dat0[4]_i_3_0 ;
  wire \dat0[4]_i_6_n_0 ;
  wire \dat0[4]_i_9 ;
  wire \dat0[5]_i_3_0 ;
  wire \dat0[5]_i_6_n_0 ;
  wire \dat0[5]_i_9 ;
  wire \dat0[6]_i_3_0 ;
  wire \dat0[6]_i_6_n_0 ;
  wire \dat0[7]_i_20 ;
  wire \dat0[7]_i_23_n_0 ;
  wire \dat0[7]_i_9_0 ;
  wire \dat0[7]_i_9_1 ;
  wire \dat0[7]_i_9_2 ;
  wire \dat0[7]_i_9_3 ;
  wire [7:0]\dat0[7]_i_9_4 ;
  wire \dat0_reg[0] ;
  wire \dat0_reg[1] ;
  wire \dat0_reg[2] ;
  wire \dat0_reg[3] ;
  wire \dat0_reg[4] ;
  wire \dat0_reg[5] ;
  wire \dat0_reg[6] ;
  wire [0:0]\dat0_reg[6]_0 ;
  wire \dat0_reg[6]_1 ;
  wire \dat0_reg[7] ;
  wire [6:0]ie;
  wire \ie_reg[0]_0 ;
  wire \ie_reg[1]_0 ;
  wire \ie_reg[2]_0 ;
  wire \ie_reg[3]_0 ;
  wire \ie_reg[4]_0 ;
  wire \ie_reg[5]_0 ;
  wire \ie_reg[6]_0 ;
  wire \ie_reg[7]_0 ;
  wire \ie_reg[7]_1 ;
  wire int_ack;
  wire int_ack_reg;
  wire [1:0]int_dept;
  wire \int_dept[0]_i_1_n_0 ;
  wire \int_dept[1]_i_1_n_0 ;
  wire \int_dept[1]_i_2_n_0 ;
  wire int_lev;
  wire \int_lev[0][0]_i_1_n_0 ;
  wire \int_lev[0][0]_i_2_n_0 ;
  wire \int_lev_reg[0][0]_0 ;
  wire \int_lev_reg[0][0]_1 ;
  wire \int_lev_reg[1][0]_0 ;
  wire \int_lev_reg_n_0_[0][0] ;
  wire \int_lev_reg_n_0_[1][0] ;
  wire int_proc_i_1_n_0;
  wire int_proc_reg_0;
  wire \int_vec[1]_i_1_n_0 ;
  wire \int_vec[3]_i_1_n_0 ;
  wire \int_vec[3]_i_2_n_0 ;
  wire \int_vec[4]_i_1_n_0 ;
  wire \int_vec[4]_i_2_n_0 ;
  wire \int_vec[5]_i_2_n_0 ;
  wire \int_vec[5]_i_3_n_0 ;
  wire \int_vec[5]_i_4_n_0 ;
  wire \int_vec[5]_i_5_n_0 ;
  wire [0:0]\int_vec_reg[1]_0 ;
  wire [0:0]\int_vec_reg[1]_1 ;
  wire [3:0]\int_vec_reg[5]_0 ;
  wire [7:0]ip;
  wire \ip_reg[0]_0 ;
  wire \ip_reg[0]_1 ;
  wire \ip_reg[1]_0 ;
  wire \ip_reg[1]_1 ;
  wire \ip_reg[2]_0 ;
  wire \ip_reg[2]_1 ;
  wire \ip_reg[3]_0 ;
  wire \ip_reg[3]_1 ;
  wire \ip_reg[4]_0 ;
  wire \ip_reg[4]_1 ;
  wire \ip_reg[5]_0 ;
  wire \ip_reg[5]_1 ;
  wire \ip_reg[6]_0 ;
  wire \ip_reg[6]_1 ;
  wire \ip_reg[7]_0 ;
  wire \ip_reg[7]_1 ;
  wire \isrc[0][0]_i_1_n_0 ;
  wire \isrc[0][0]_i_2_n_0 ;
  wire \isrc[0][0]_i_3_n_0 ;
  wire \isrc[0][0]_i_4_n_0 ;
  wire \isrc[0][0]_i_5_n_0 ;
  wire \isrc[0][0]_i_6_n_0 ;
  wire \isrc[0][0]_i_7_n_0 ;
  wire \isrc[0][1]_i_1_n_0 ;
  wire \isrc[0][1]_i_2_n_0 ;
  wire \isrc[0][1]_i_3_n_0 ;
  wire \isrc[0][1]_i_4_n_0 ;
  wire \isrc[0][1]_i_5_n_0 ;
  wire \isrc[0][1]_i_6_n_0 ;
  wire \isrc[0][1]_i_7_n_0 ;
  wire \isrc[0][1]_i_8_n_0 ;
  wire \isrc[0][1]_i_9_n_0 ;
  wire \isrc[0][2]_i_1_n_0 ;
  wire \isrc[0][2]_i_2_n_0 ;
  wire \isrc[0][2]_i_3_n_0 ;
  wire \isrc[0][2]_i_4_n_0 ;
  wire [2:0]\isrc_reg[0]_8 ;
  wire \isrc_reg[1][1]_0 ;
  wire \isrc_reg[1][1]_1 ;
  wire \isrc_reg[1][1]_2 ;
  wire [2:0]\isrc_reg[1]_9 ;
  wire pres_ow__0;
  wire reti;
  wire rst_IBUF;
  wire [7:5]tcon;
  wire tcon_ie0_i_8_n_0;
  wire tcon_ie0_reg_0;
  wire tcon_ie0_reg_1;
  wire tcon_ie0_reg_2;
  wire tcon_ie1_reg_0;
  wire tcon_ie1_reg_1;
  wire tcon_ie1_reg_2;
  wire \tcon_s_reg[0]_0 ;
  wire \tcon_s_reg[0]_1 ;
  wire [1:0]\tcon_s_reg[1]_0 ;
  wire \tcon_s_reg[1]_1 ;
  wire \tcon_s_reg[2]_0 ;
  wire \tcon_s_reg[2]_1 ;
  wire \tcon_s_reg[2]_2 ;
  wire \tcon_s_reg[2]_3 ;
  wire \tcon_s_reg[2]_4 ;
  wire \tcon_s_reg[3]_0 ;
  wire \tcon_s_reg[3]_1 ;
  wire \tcon_s_reg[3]_2 ;
  wire \tcon_s_reg[3]_3 ;
  wire tcon_tf0_i_1_n_0;
  wire tcon_tf0_i_4_n_0;
  wire tcon_tf0_i_5_n_0;
  wire tcon_tf0_reg_0;
  wire tcon_tf0_reg_1;
  wire tcon_tf0_reg_2;
  wire tcon_tf1_i_1_n_0;
  wire tcon_tf1_i_4_n_0;
  wire tcon_tf1_i_6_n_0;
  wire tcon_tf1_reg_0;
  wire tcon_tf1_reg_1;
  wire tcon_tf1_reg_2;
  wire tcon_tf1_reg_3;
  wire tcon_tf1_reg_4;
  wire tf0_buff;
  wire tf0_buff_reg_0;
  wire \tl0_reg[0] ;
  wire \tl0_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_100
       (.I0(ie[2]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(ie[3]),
        .O(bit_out_i_100_n_0));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_101
       (.I0(ie[0]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(ie[1]),
        .O(bit_out_i_101_n_0));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_106
       (.I0(\tcon_s_reg[3]_0 ),
        .I1(\dat0[1]_i_5_0 ),
        .I2(tcon[7]),
        .O(bit_out_i_106_n_0));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_107
       (.I0(\tcon_s_reg[2]_0 ),
        .I1(\dat0[1]_i_5_0 ),
        .I2(tcon[5]),
        .O(bit_out_i_107_n_0));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_108
       (.I0(\tcon_s_reg[1]_0 [1]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(tcon_ie1_reg_0),
        .O(bit_out_i_108_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_109
       (.I0(\tcon_s_reg[1]_0 [0]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(tcon_ie0_reg_0),
        .O(bit_out_i_109_n_0));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    bit_out_i_65
       (.I0(bit_out_i_94_n_0),
        .I1(bit_out_i_95_n_0),
        .I2(\dat0_reg[6]_0 ),
        .I3(bit_out_i_96_n_0),
        .I4(bit_out_reg_i_35_0),
        .I5(bit_out_i_97_n_0),
        .O(bit_out_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_66
       (.I0(bit_out_i_98_n_0),
        .I1(bit_out_i_99_n_0),
        .I2(\dat0_reg[6]_0 ),
        .I3(bit_out_i_100_n_0),
        .I4(bit_out_reg_i_35_0),
        .I5(bit_out_i_101_n_0),
        .O(bit_out_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_68
       (.I0(bit_out_i_106_n_0),
        .I1(bit_out_i_107_n_0),
        .I2(\dat0_reg[6]_0 ),
        .I3(bit_out_i_108_n_0),
        .I4(bit_out_reg_i_35_0),
        .I5(bit_out_i_109_n_0),
        .O(\tcon_s_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    bit_out_i_94
       (.I0(ip[6]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(ip[7]),
        .O(bit_out_i_94_n_0));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    bit_out_i_95
       (.I0(ip[4]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(ip[5]),
        .O(bit_out_i_95_n_0));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_96
       (.I0(ip[2]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(ip[3]),
        .O(bit_out_i_96_n_0));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_97
       (.I0(ip[0]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(ip[1]),
        .O(bit_out_i_97_n_0));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_98
       (.I0(ie[6]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(\ie_reg[7]_0 ),
        .O(bit_out_i_98_n_0));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_99
       (.I0(ie[4]),
        .I1(\dat0[1]_i_5_0 ),
        .I2(ie[5]),
        .O(bit_out_i_99_n_0));
  MUXF8 bit_out_reg_i_16
       (.I0(bit_out_reg_i_35_n_0),
        .I1(bit_out_i_4_0),
        .O(bit_out_reg_i_36),
        .S(bit_out_i_4));
  MUXF7 bit_out_reg_i_35
       (.I0(bit_out_i_65_n_0),
        .I1(bit_out_i_66_n_0),
        .O(bit_out_reg_i_35_n_0),
        .S(\dat0_reg[6] ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[0]_i_15 
       (.I0(\tcon_s_reg[1]_0 [0]),
        .I1(\dat0[0]_i_8 ),
        .I2(\dat0[1]_i_5_0 ),
        .I3(Q[0]),
        .I4(\dat0[7]_i_9_0 ),
        .I5(D[0]),
        .O(\tcon_s_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \dat0[0]_i_3 
       (.I0(ip[0]),
        .I1(\dat0_reg[6]_0 ),
        .I2(\dat0[0]_i_6_n_0 ),
        .I3(\dat0_reg[6] ),
        .I4(\dat0_reg[0] ),
        .O(\ip_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h747700007477FFFF)) 
    \dat0[0]_i_6 
       (.I0(ie[0]),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[7]_i_9_2 ),
        .I3(\dat0[0]_i_3_0 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [0]),
        .O(\dat0[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[1]_i_12 
       (.I0(tcon_ie0_reg_0),
        .I1(\dat0[1]_i_5 ),
        .I2(\dat0[1]_i_5_0 ),
        .I3(Q[1]),
        .I4(\dat0[7]_i_9_0 ),
        .I5(D[1]),
        .O(tcon_ie0_reg_1));
  LUT5 #(
    .INIT(32'hFF004747)) 
    \dat0[1]_i_3 
       (.I0(\dat0[1]_i_7_n_0 ),
        .I1(\dat0_reg[6] ),
        .I2(\dat0_reg[1] ),
        .I3(ip[1]),
        .I4(\dat0_reg[6]_0 ),
        .O(\ip_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h444700004447FFFF)) 
    \dat0[1]_i_7 
       (.I0(ie[1]),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[1]_i_3_0 ),
        .I3(\dat0[7]_i_9_2 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [1]),
        .O(\dat0[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF004747)) 
    \dat0[2]_i_3 
       (.I0(\dat0[2]_i_6_n_0 ),
        .I1(\dat0_reg[6] ),
        .I2(\dat0_reg[2] ),
        .I3(ip[2]),
        .I4(\dat0_reg[6]_0 ),
        .O(\ip_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h747700007477FFFF)) 
    \dat0[2]_i_6 
       (.I0(ie[2]),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[7]_i_9_2 ),
        .I3(\dat0[2]_i_3_0 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [2]),
        .O(\dat0[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[3]_i_13 
       (.I0(tcon_ie1_reg_0),
        .I1(\dat0[3]_i_9 ),
        .I2(\dat0[1]_i_5_0 ),
        .I3(Q[3]),
        .I4(\dat0[7]_i_9_0 ),
        .I5(D[2]),
        .O(tcon_ie1_reg_1));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \dat0[3]_i_3 
       (.I0(ip[3]),
        .I1(\dat0_reg[6]_0 ),
        .I2(\dat0[3]_i_6_n_0 ),
        .I3(\dat0_reg[6] ),
        .I4(\dat0_reg[3] ),
        .O(\ip_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h747700007477FFFF)) 
    \dat0[3]_i_6 
       (.I0(ie[3]),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[7]_i_9_2 ),
        .I3(\dat0[3]_i_3_0 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [3]),
        .O(\dat0[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[4]_i_13 
       (.I0(\tcon_s_reg[2]_0 ),
        .I1(\dat0[4]_i_9 ),
        .I2(\dat0[1]_i_5_0 ),
        .I3(Q[4]),
        .I4(\dat0[7]_i_9_0 ),
        .I5(D[3]),
        .O(\tcon_s_reg[2]_1 ));
  LUT5 #(
    .INIT(32'hFF004747)) 
    \dat0[4]_i_3 
       (.I0(\dat0[4]_i_6_n_0 ),
        .I1(\dat0_reg[6] ),
        .I2(\dat0_reg[4] ),
        .I3(ip[4]),
        .I4(\dat0_reg[6]_0 ),
        .O(\ip_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h444700004447FFFF)) 
    \dat0[4]_i_6 
       (.I0(ie[4]),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[4]_i_3_0 ),
        .I3(\dat0[7]_i_9_2 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [4]),
        .O(\dat0[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[5]_i_14 
       (.I0(tcon[5]),
        .I1(\dat0[5]_i_9 ),
        .I2(\dat0[1]_i_5_0 ),
        .I3(Q[5]),
        .I4(\dat0[7]_i_9_0 ),
        .I5(D[4]),
        .O(tcon_tf0_reg_0));
  LUT5 #(
    .INIT(32'h8B8B88BB)) 
    \dat0[5]_i_3 
       (.I0(ip[5]),
        .I1(\dat0_reg[6]_0 ),
        .I2(\dat0[5]_i_6_n_0 ),
        .I3(\dat0_reg[5] ),
        .I4(\dat0_reg[6] ),
        .O(\ip_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h444700004447FFFF)) 
    \dat0[5]_i_6 
       (.I0(ie[5]),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[5]_i_3_0 ),
        .I3(\dat0[7]_i_9_2 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [5]),
        .O(\dat0[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8B8B88BB)) 
    \dat0[6]_i_3 
       (.I0(ip[6]),
        .I1(\dat0_reg[6]_0 ),
        .I2(\dat0[6]_i_6_n_0 ),
        .I3(\dat0_reg[6]_1 ),
        .I4(\dat0_reg[6] ),
        .O(\ip_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h747700007477FFFF)) 
    \dat0[6]_i_6 
       (.I0(ie[6]),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[7]_i_9_2 ),
        .I3(\dat0[6]_i_3_0 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [6]),
        .O(\dat0[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h444700004447FFFF)) 
    \dat0[7]_i_23 
       (.I0(\ie_reg[7]_0 ),
        .I1(\dat0[7]_i_9_0 ),
        .I2(\dat0[7]_i_9_1 ),
        .I3(\dat0[7]_i_9_2 ),
        .I4(\dat0[7]_i_9_3 ),
        .I5(\dat0[7]_i_9_4 [7]),
        .O(\dat0[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[7]_i_31 
       (.I0(tcon[7]),
        .I1(\dat0[7]_i_20 ),
        .I2(\dat0[1]_i_5_0 ),
        .I3(Q[6]),
        .I4(\dat0[7]_i_9_0 ),
        .I5(D[5]),
        .O(tcon_tf1_reg_0));
  LUT5 #(
    .INIT(32'hFF001D1D)) 
    \dat0[7]_i_9 
       (.I0(\dat0_reg[7] ),
        .I1(\dat0_reg[6] ),
        .I2(\dat0[7]_i_23_n_0 ),
        .I3(ip[7]),
        .I4(\dat0_reg[6]_0 ),
        .O(\ip_reg[7]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[0]_0 ),
        .Q(ie[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[1]_0 ),
        .Q(ie[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[2]_0 ),
        .Q(ie[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[3]_0 ),
        .Q(ie[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[4]_0 ),
        .Q(ie[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[5]_0 ),
        .Q(ie[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[6]_0 ),
        .Q(ie[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ie_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ie_reg[7]_1 ),
        .Q(\ie_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0333FEEE)) 
    \int_dept[0]_i_1 
       (.I0(\int_dept[1]_i_2_n_0 ),
        .I1(\int_lev[0][0]_i_1_n_0 ),
        .I2(int_proc_reg_0),
        .I3(reti),
        .I4(int_dept[0]),
        .O(\int_dept[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA53535355A0A0A0)) 
    \int_dept[1]_i_1 
       (.I0(int_dept[0]),
        .I1(\int_dept[1]_i_2_n_0 ),
        .I2(\int_lev[0][0]_i_1_n_0 ),
        .I3(int_proc_reg_0),
        .I4(reti),
        .I5(int_dept[1]),
        .O(\int_dept[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF1F0000)) 
    \int_dept[1]_i_2 
       (.I0(\int_lev_reg[1][0]_0 ),
        .I1(ip[5]),
        .I2(\isrc[0][2]_i_4_n_0 ),
        .I3(\isrc[0][1]_i_5_n_0 ),
        .I4(\ie_reg[7]_0 ),
        .I5(int_proc_reg_0),
        .O(\int_dept[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \int_dept_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\int_dept[0]_i_1_n_0 ),
        .Q(int_dept[0]));
  FDCE #(
    .INIT(1'b0)) 
    \int_dept_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\int_dept[1]_i_1_n_0 ),
        .Q(int_dept[1]));
  LUT6 #(
    .INIT(64'h0000000002A2FFFF)) 
    \int_lev[0][0]_i_1 
       (.I0(\ie_reg[7]_0 ),
        .I1(\int_lev_reg_n_0_[1][0] ),
        .I2(int_dept[0]),
        .I3(\int_lev_reg_n_0_[0][0] ),
        .I4(int_proc_reg_0),
        .I5(\int_lev[0][0]_i_2_n_0 ),
        .O(\int_lev[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000222AAAAA)) 
    \int_lev[0][0]_i_2 
       (.I0(\int_vec[5]_i_3_n_0 ),
        .I1(ie[5]),
        .I2(\int_lev_reg[0][0]_0 ),
        .I3(\int_lev_reg[0][0]_1 ),
        .I4(ip[5]),
        .I5(\isrc[0][1]_i_8_n_0 ),
        .O(\int_lev[0][0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \int_lev_reg[0][0] 
       (.C(clk_8051_BUFG),
        .CE(\isrc[0][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\int_lev[0][0]_i_1_n_0 ),
        .Q(\int_lev_reg_n_0_[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \int_lev_reg[1][0] 
       (.C(clk_8051_BUFG),
        .CE(int_lev),
        .CLR(rst_IBUF),
        .D(\int_lev[0][0]_i_1_n_0 ),
        .Q(\int_lev_reg_n_0_[1][0] ));
  LUT6 #(
    .INIT(64'hFF0FEEEEFFFFEEEE)) 
    int_proc_i_1
       (.I0(\int_lev[0][0]_i_1_n_0 ),
        .I1(\int_dept[1]_i_2_n_0 ),
        .I2(int_dept[0]),
        .I3(int_dept[1]),
        .I4(int_proc_reg_0),
        .I5(reti),
        .O(int_proc_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    int_proc_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(int_proc_i_1_n_0),
        .Q(int_proc_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \int_vec[1]_i_1 
       (.I0(\int_dept[1]_i_2_n_0 ),
        .I1(\int_lev[0][0]_i_1_n_0 ),
        .O(\int_vec[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT5 #(
    .INIT(32'h008F8888)) 
    \int_vec[3]_i_1 
       (.I0(\int_dept[1]_i_2_n_0 ),
        .I1(\isrc[0][0]_i_3_n_0 ),
        .I2(\int_vec[3]_i_2_n_0 ),
        .I3(\isrc[0][0]_i_2_n_0 ),
        .I4(\int_lev[0][0]_i_1_n_0 ),
        .O(\int_vec[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_vec[3]_i_2 
       (.I0(ip[0]),
        .I1(ie[0]),
        .I2(tcon_ie0_reg_0),
        .O(\int_vec[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h202020202F202020)) 
    \int_vec[4]_i_1 
       (.I0(\isrc[0][2]_i_3_n_0 ),
        .I1(\int_vec[4]_i_2_n_0 ),
        .I2(\int_lev[0][0]_i_1_n_0 ),
        .I3(\int_vec[5]_i_4_n_0 ),
        .I4(\int_dept[1]_i_2_n_0 ),
        .I5(\int_vec[5]_i_5_n_0 ),
        .O(\int_vec[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F7F7F7F7F7F7F)) 
    \int_vec[4]_i_2 
       (.I0(tcon_ie1_reg_0),
        .I1(ie[2]),
        .I2(ip[2]),
        .I3(tcon[7]),
        .I4(ie[3]),
        .I5(ip[3]),
        .O(\int_vec[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h888888B8)) 
    \int_vec[5]_i_2 
       (.I0(\int_vec[5]_i_3_n_0 ),
        .I1(\int_lev[0][0]_i_1_n_0 ),
        .I2(\int_dept[1]_i_2_n_0 ),
        .I3(\int_vec[5]_i_4_n_0 ),
        .I4(\int_vec[5]_i_5_n_0 ),
        .O(\int_vec[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT5 #(
    .INIT(32'h00002AAA)) 
    \int_vec[5]_i_3 
       (.I0(\isrc[0][2]_i_3_n_0 ),
        .I1(ip[3]),
        .I2(ie[3]),
        .I3(tcon[7]),
        .I4(\isrc[0][1]_i_6_n_0 ),
        .O(\int_vec[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \int_vec[5]_i_4 
       (.I0(tcon[7]),
        .I1(ie[3]),
        .I2(ip[3]),
        .I3(tcon_ie1_reg_0),
        .I4(ie[2]),
        .I5(ip[2]),
        .O(\int_vec[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \int_vec[5]_i_5 
       (.I0(tcon_ie0_reg_0),
        .I1(ie[0]),
        .I2(ip[0]),
        .I3(tcon[5]),
        .I4(ie[1]),
        .I5(ip[1]),
        .O(\int_vec[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_vec_buff[5]_i_1 
       (.I0(\int_vec_reg[5]_0 [0]),
        .I1(\int_vec_reg[5]_0 [3]),
        .I2(\int_vec_reg[5]_0 [1]),
        .I3(\int_vec_reg[5]_0 [2]),
        .O(\int_vec_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\int_vec[1]_i_1_n_0 ),
        .Q(\int_vec_reg[5]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\int_vec[3]_i_1_n_0 ),
        .Q(\int_vec_reg[5]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\int_vec[4]_i_1_n_0 ),
        .Q(\int_vec_reg[5]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_reg[1]_1 ),
        .CLR(rst_IBUF),
        .D(\int_vec[5]_i_2_n_0 ),
        .Q(\int_vec_reg[5]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[0]_1 ),
        .Q(ip[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[1]_1 ),
        .Q(ip[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[2]_1 ),
        .Q(ip[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[3]_1 ),
        .Q(ip[3]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[4]_1 ),
        .Q(ip[4]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[5]_1 ),
        .Q(ip[5]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[6]_1 ),
        .Q(ip[6]));
  FDCE #(
    .INIT(1'b0)) 
    \ip_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ip_reg[7]_1 ),
        .Q(ip[7]));
  LUT6 #(
    .INIT(64'h00000000FFFFD555)) 
    \isrc[0][0]_i_1 
       (.I0(\int_lev[0][0]_i_1_n_0 ),
        .I1(tcon_ie0_reg_0),
        .I2(ie[0]),
        .I3(ip[0]),
        .I4(\isrc[0][0]_i_2_n_0 ),
        .I5(\isrc[0][0]_i_3_n_0 ),
        .O(\isrc[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F007F7F7F007F00)) 
    \isrc[0][0]_i_2 
       (.I0(tcon[5]),
        .I1(ie[1]),
        .I2(ip[1]),
        .I3(\isrc[0][1]_i_6_n_0 ),
        .I4(\isrc[0][1]_i_7_n_0 ),
        .I5(\isrc[0][1]_i_8_n_0 ),
        .O(\isrc[0][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1011101010111011)) 
    \isrc[0][0]_i_3 
       (.I0(\int_lev[0][0]_i_1_n_0 ),
        .I1(\isrc[0][0]_i_4_n_0 ),
        .I2(\isrc[0][0]_i_5_n_0 ),
        .I3(\isrc[0][0]_i_6_n_0 ),
        .I4(\isrc[0][1]_i_9_n_0 ),
        .I5(\isrc[0][0]_i_7_n_0 ),
        .O(\isrc[0][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \isrc[0][0]_i_4 
       (.I0(ip[0]),
        .I1(ie[0]),
        .I2(tcon_ie0_reg_0),
        .O(\isrc[0][0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \isrc[0][0]_i_5 
       (.I0(ip[1]),
        .I1(ie[1]),
        .I2(tcon[5]),
        .O(\isrc[0][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \isrc[0][0]_i_6 
       (.I0(ip[2]),
        .I1(ie[2]),
        .I2(tcon_ie1_reg_0),
        .O(\isrc[0][0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \isrc[0][0]_i_7 
       (.I0(ip[4]),
        .I1(ie[4]),
        .I2(\isrc_reg[1][1]_2 ),
        .I3(\isrc_reg[1][1]_1 ),
        .O(\isrc[0][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB3B88088B3B8B3B8)) 
    \isrc[0][1]_i_1 
       (.I0(\isrc[0][1]_i_2_n_0 ),
        .I1(\int_lev[0][0]_i_1_n_0 ),
        .I2(\isrc[0][1]_i_3_n_0 ),
        .I3(ip[0]),
        .I4(\isrc[0][1]_i_4_n_0 ),
        .I5(\isrc[0][1]_i_5_n_0 ),
        .O(\isrc[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAEAAAFFFF)) 
    \isrc[0][1]_i_2 
       (.I0(\isrc[0][1]_i_6_n_0 ),
        .I1(ip[1]),
        .I2(ie[1]),
        .I3(tcon[5]),
        .I4(\isrc[0][1]_i_7_n_0 ),
        .I5(\isrc[0][1]_i_8_n_0 ),
        .O(\isrc[0][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \isrc[0][1]_i_3 
       (.I0(tcon_ie0_reg_0),
        .I1(ie[0]),
        .O(\isrc[0][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \isrc[0][1]_i_4 
       (.I0(tcon_ie1_reg_0),
        .I1(ie[2]),
        .I2(ip[2]),
        .I3(tcon[5]),
        .I4(ie[1]),
        .I5(ip[1]),
        .O(\isrc[0][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    \isrc[0][1]_i_5 
       (.I0(\isrc_reg[1][1]_1 ),
        .I1(\isrc_reg[1][1]_2 ),
        .I2(ie[4]),
        .I3(ip[4]),
        .I4(\isrc[0][1]_i_9_n_0 ),
        .O(\isrc[0][1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \isrc[0][1]_i_6 
       (.I0(ip[2]),
        .I1(ie[2]),
        .I2(tcon_ie1_reg_0),
        .O(\isrc[0][1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \isrc[0][1]_i_7 
       (.I0(ip[3]),
        .I1(ie[3]),
        .I2(tcon[7]),
        .O(\isrc[0][1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \isrc[0][1]_i_8 
       (.I0(ip[4]),
        .I1(ie[4]),
        .I2(\isrc_reg[1][1]_2 ),
        .I3(\isrc_reg[1][1]_1 ),
        .O(\isrc[0][1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \isrc[0][1]_i_9 
       (.I0(ip[3]),
        .I1(ie[3]),
        .I2(tcon[7]),
        .O(\isrc[0][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007770)) 
    \isrc[0][2]_i_1 
       (.I0(reti),
        .I1(int_proc_reg_0),
        .I2(\int_dept[1]_i_2_n_0 ),
        .I3(\int_lev[0][0]_i_1_n_0 ),
        .I4(int_dept[0]),
        .I5(int_dept[1]),
        .O(\isrc[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAFFFF2AAA0000)) 
    \isrc[0][2]_i_2 
       (.I0(\isrc[0][2]_i_3_n_0 ),
        .I1(tcon_ie1_reg_0),
        .I2(ie[2]),
        .I3(ip[2]),
        .I4(\int_lev[0][0]_i_1_n_0 ),
        .I5(\isrc[0][2]_i_4_n_0 ),
        .O(\isrc[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h007F7F7F7F7F7F7F)) 
    \isrc[0][2]_i_3 
       (.I0(tcon[5]),
        .I1(ie[1]),
        .I2(ip[1]),
        .I3(tcon_ie0_reg_0),
        .I4(ie[0]),
        .I5(ip[0]),
        .O(\isrc[0][2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \isrc[0][2]_i_4 
       (.I0(tcon_ie0_reg_0),
        .I1(ie[0]),
        .I2(ip[0]),
        .I3(\isrc[0][1]_i_4_n_0 ),
        .O(\isrc[0][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000777000000000)) 
    \isrc[1][2]_i_1 
       (.I0(reti),
        .I1(int_proc_reg_0),
        .I2(\int_dept[1]_i_2_n_0 ),
        .I3(\int_lev[0][0]_i_1_n_0 ),
        .I4(int_dept[1]),
        .I5(int_dept[0]),
        .O(int_lev));
  FDCE #(
    .INIT(1'b0)) 
    \isrc_reg[0][0] 
       (.C(clk_8051_BUFG),
        .CE(\isrc[0][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\isrc[0][0]_i_1_n_0 ),
        .Q(\isrc_reg[0]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \isrc_reg[0][1] 
       (.C(clk_8051_BUFG),
        .CE(\isrc[0][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\isrc[0][1]_i_1_n_0 ),
        .Q(\isrc_reg[0]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \isrc_reg[0][2] 
       (.C(clk_8051_BUFG),
        .CE(\isrc[0][2]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\isrc[0][2]_i_2_n_0 ),
        .Q(\isrc_reg[0]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \isrc_reg[1][0] 
       (.C(clk_8051_BUFG),
        .CE(int_lev),
        .CLR(rst_IBUF),
        .D(\isrc[0][0]_i_1_n_0 ),
        .Q(\isrc_reg[1]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \isrc_reg[1][1] 
       (.C(clk_8051_BUFG),
        .CE(int_lev),
        .CLR(rst_IBUF),
        .D(\isrc[0][1]_i_1_n_0 ),
        .Q(\isrc_reg[1]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \isrc_reg[1][2] 
       (.C(clk_8051_BUFG),
        .CE(int_lev),
        .CLR(rst_IBUF),
        .D(\isrc[0][2]_i_2_n_0 ),
        .Q(\isrc_reg[1]_9 [2]));
  LUT4 #(
    .INIT(16'hE200)) 
    tcon_ie0_i_4
       (.I0(\isrc_reg[1]_9 [1]),
        .I1(int_dept[0]),
        .I2(\isrc_reg[0]_8 [1]),
        .I3(int_proc_reg_0),
        .O(\isrc_reg[1][1]_0 ));
  LUT6 #(
    .INIT(64'hFD5D5555FFFFFFFF)) 
    tcon_ie0_i_5
       (.I0(int_ack),
        .I1(\isrc_reg[1]_9 [2]),
        .I2(int_dept[0]),
        .I3(\isrc_reg[0]_8 [2]),
        .I4(int_proc_reg_0),
        .I5(tcon_ie0_i_8_n_0),
        .O(int_ack_reg));
  LUT4 #(
    .INIT(16'hE200)) 
    tcon_ie0_i_8
       (.I0(\isrc_reg[1]_9 [0]),
        .I1(int_dept[0]),
        .I2(\isrc_reg[0]_8 [0]),
        .I3(int_proc_reg_0),
        .O(tcon_ie0_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tcon_ie0_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tcon_ie0_reg_2),
        .Q(tcon_ie0_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    tcon_ie1_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tcon_ie1_reg_2),
        .Q(tcon_ie1_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    \tcon_s_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tcon_s_reg[0]_1 ),
        .Q(\tcon_s_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \tcon_s_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tcon_s_reg[1]_1 ),
        .Q(\tcon_s_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \tcon_s_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tcon_s_reg[2]_4 ),
        .Q(\tcon_s_reg[2]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tcon_s_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tcon_s_reg[3]_3 ),
        .Q(\tcon_s_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEAEAAAA22A2)) 
    tcon_tf0_i_1
       (.I0(tcon_tf0_reg_1),
        .I1(tcon_tf0_reg_2),
        .I2(tcon_tf0_i_4_n_0),
        .I3(tcon_tf0_i_5_n_0),
        .I4(tcon_tf1_reg_1),
        .I5(tcon[5]),
        .O(tcon_tf0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00A0000000A0C0C0)) 
    tcon_tf0_i_4
       (.I0(\isrc_reg[0]_8 [1]),
        .I1(\isrc_reg[1]_9 [1]),
        .I2(int_proc_reg_0),
        .I3(\isrc_reg[0]_8 [0]),
        .I4(int_dept[0]),
        .I5(\isrc_reg[1]_9 [0]),
        .O(tcon_tf0_i_4_n_0));
  LUT5 #(
    .INIT(32'h8A80FFFF)) 
    tcon_tf0_i_5
       (.I0(int_proc_reg_0),
        .I1(\isrc_reg[0]_8 [2]),
        .I2(int_dept[0]),
        .I3(\isrc_reg[1]_9 [2]),
        .I4(int_ack),
        .O(tcon_tf0_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tcon_tf0_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tcon_tf0_i_1_n_0),
        .Q(tcon[5]));
  LUT6 #(
    .INIT(64'h33330AFA33330A0A)) 
    tcon_tf1_i_1
       (.I0(tcon_tf1_reg_2),
        .I1(tcon_tf1_reg_3),
        .I2(tcon_tf1_reg_4),
        .I3(tcon_tf1_i_4_n_0),
        .I4(tcon_tf1_reg_1),
        .I5(tcon[7]),
        .O(tcon_tf1_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    tcon_tf1_i_4
       (.I0(int_ack),
        .I1(\isrc_reg[1]_9 [2]),
        .I2(int_dept[0]),
        .I3(\isrc_reg[0]_8 [2]),
        .I4(int_proc_reg_0),
        .I5(tcon_tf1_i_6_n_0),
        .O(tcon_tf1_i_4_n_0));
  LUT6 #(
    .INIT(64'hF0A0F0F0F0A0C0C0)) 
    tcon_tf1_i_6
       (.I0(\isrc_reg[0]_8 [1]),
        .I1(\isrc_reg[1]_9 [1]),
        .I2(int_proc_reg_0),
        .I3(\isrc_reg[0]_8 [0]),
        .I4(int_dept[0]),
        .I5(\isrc_reg[1]_9 [0]),
        .O(tcon_tf1_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tcon_tf1_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tcon_tf1_i_1_n_0),
        .Q(tcon[7]));
  FDCE #(
    .INIT(1'b0)) 
    tf0_buff_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tf0_buff_reg_0),
        .Q(tf0_buff));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \th0[7]_i_3 
       (.I0(\tcon_s_reg[3]_0 ),
        .I1(pres_ow__0),
        .O(\tcon_s_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \th0[7]_i_4 
       (.I0(\tcon_s_reg[2]_0 ),
        .I1(pres_ow__0),
        .I2(Q[2]),
        .O(\tcon_s_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    \tl0[4]_i_1 
       (.I0(\tl0_reg[0] ),
        .I1(\tl0_reg[0]_0 ),
        .I2(\tcon_s_reg[2]_0 ),
        .I3(pres_ow__0),
        .I4(Q[2]),
        .O(\tcon_s_reg[2]_2 ));
endmodule

module oc8051_memory_interface
   (E,
    rd_ind_reg_0,
    rd_addr_r,
    \ram_rd_sel_r_reg[2] ,
    int_ack_t_reg_0,
    int_ack,
    reti,
    imem_wait_reg_0,
    istb_t_reg_0,
    O,
    Q,
    iadr_o,
    \iadr_t_reg[5]_0 ,
    \pc_buf_reg[2]_0 ,
    op2_n,
    \cdata_reg[6]_0 ,
    wait_data_reg_inv,
    \state_reg[0] ,
    \cdata_reg[7]_0 ,
    \ram_wr_sel_reg[1] ,
    \cdata_reg[7]_1 ,
    \cdata_reg[0]_0 ,
    \ram_rd_sel_r_reg[2]_0 ,
    \ram_rd_sel_r_reg[2]_1 ,
    \wr_addr_reg[1]_0 ,
    wait_data_reg_inv_0,
    \ram_rd_sel_r_reg[2]_2 ,
    wait_data1_out,
    \ram_rd_sel_r_reg[2]_3 ,
    \ram_rd_sel_r_reg[0] ,
    D,
    \dat0[7]_i_25_0 ,
    \ram_rd_sel_r_reg[2]_4 ,
    ADDRA,
    wr_bit_r_reg,
    rd_en,
    rd_en_r_i_11_0,
    wr_bit_r_reg_0,
    ADDRD,
    \ram_rd_sel_r_reg[1] ,
    \ram_rd_sel_r_reg[2]_5 ,
    rd_en_r_i_12_0,
    \bit_select[0]_i_2_0 ,
    \state_reg[0]_0 ,
    \bit_select[2]_i_1_0 ,
    \cdata_reg[1]_0 ,
    \ram_rd_sel_r_reg[0]_0 ,
    \dat0[7]_i_38_0 ,
    \state_reg[1] ,
    \p3_out_reg[6] ,
    \ram_rd_sel_r_reg[2]_6 ,
    \cdata_reg[2]_0 ,
    op1_n,
    op3_n,
    \op2_r_reg[4] ,
    \pc_reg[15]_0 ,
    \cdata_reg[3]_0 ,
    \state_reg[1]_0 ,
    \state_reg[0]_1 ,
    \ram_wr_sel_reg[2] ,
    \state_reg[0]_2 ,
    \state_reg[1]_1 ,
    \p0_out_reg[3] ,
    \p0_out_reg[0] ,
    \p0_out_reg[1] ,
    \op3_r_reg[7] ,
    src_sel30,
    \state_reg[0]_3 ,
    bit_addr,
    \cdata_reg[2]_1 ,
    \data_reg[3] ,
    \wr_addr_reg[5]_0 ,
    \ram_wr_sel_reg[2]_0 ,
    wr_bit_r_reg_1,
    wait_data_reg_inv_1,
    \ram_wr_sel_reg[2]_1 ,
    \pc_reg[12]_0 ,
    \pc_reg[12]_1 ,
    \pc_reg[9]_0 ,
    \pc_reg[13]_0 ,
    \pc_reg[11]_0 ,
    \pc_reg[8]_0 ,
    \pc_reg[10]_0 ,
    \pc_reg[10]_1 ,
    \pc_reg[9]_1 ,
    \src_sel1_reg[2] ,
    \src_sel1_reg[2]_0 ,
    \op1_r_reg[0] ,
    rd_addr_r_reg_0,
    \psw_set_reg[0] ,
    wait_data_reg_inv_2,
    \psw_set_reg[1] ,
    \ram_wr_sel_reg[2]_2 ,
    \ram_wr_sel_reg[2]_3 ,
    \ram_wr_sel_reg[2]_4 ,
    \ram_wr_sel_reg[2]_5 ,
    \ram_wr_sel_reg[2]_6 ,
    \ram_wr_sel_reg[2]_7 ,
    \ram_wr_sel_reg[2]_8 ,
    \wr_addr_reg[5]_1 ,
    \wr_addr_reg[1]_1 ,
    wait_data_reg_inv_3,
    wait_data_reg_inv_4,
    \ram_wr_sel_reg[2]_9 ,
    \ram_wr_sel_reg[2]_10 ,
    wr_bit_r_reg_2,
    wr_sbuf,
    \ram_wr_sel_reg[2]_11 ,
    wr_bit_r_reg_3,
    wr_bit_r_reg_4,
    tf0_buff_reg,
    wait_data_reg_inv_5,
    pc_wr_r_i_15_0,
    wr_bit_r_reg_5,
    wait_data_reg_inv_6,
    wait_data_reg_inv_7,
    \th0[7]_i_6_0 ,
    \ram_wr_sel_reg[2]_12 ,
    \ram_wr_sel_reg[2]_13 ,
    \ram_wr_sel_reg[2]_14 ,
    \ram_wr_sel_reg[2]_15 ,
    \ram_wr_sel_reg[2]_16 ,
    \wr_sfr_reg[1] ,
    \wr_sfr_reg[1]_0 ,
    tf2_set9_out,
    \ram_wr_sel_reg[2]_17 ,
    \ram_wr_sel_reg[2]_18 ,
    \tcon_s_reg[3] ,
    \ram_wr_sel_reg[2]_19 ,
    \ram_wr_sel_reg[2]_20 ,
    \ram_wr_sel_reg[2]_21 ,
    \tr_count_reg[0] ,
    \ram_wr_sel_reg[2]_22 ,
    \wr_addr_reg[0]_0 ,
    \p0_out[0]_i_4_0 ,
    reti_reg_0,
    \wr_addr_reg[2]_0 ,
    \pc_reg[14]_0 ,
    \pc_reg[15]_1 ,
    internal_addr_OBUF,
    \pc_buf_reg[15]_0 ,
    wr0_0,
    tcon_ie0_reg,
    tcon_ie1_reg,
    bit_out_reg,
    \state_reg[0]_4 ,
    \ram_rd_sel_r_reg[2]_7 ,
    wr_bit_r_reg_6,
    \data_out_reg[7] ,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[4] ,
    \data_out_reg[2] ,
    \data_out_reg[1] ,
    \wr_addr_reg[0]_1 ,
    wait_data_reg_inv_8,
    wait_data_reg_inv_9,
    \wr_addr_reg[0]_2 ,
    \wr_addr_reg[0]_3 ,
    \data_out_reg[3] ,
    \wr_addr_reg[0]_4 ,
    \wr_addr_reg[1]_2 ,
    \wr_addr_reg[0]_5 ,
    \wr_addr_reg[0]_6 ,
    \wr_addr_reg[4]_0 ,
    \p0_out[7]_i_3_0 ,
    \wr_addr_reg[1]_3 ,
    \iadr_t_reg[5]_1 ,
    istb_t_reg_1,
    \wr_addr_reg[0]_7 ,
    \state_reg[1]_2 ,
    \rcap2h_reg[6] ,
    \t2con_reg[5] ,
    \t2con_reg[4] ,
    \t2con_reg[3] ,
    \rcap2h_reg[2] ,
    \cdata_reg[0]_1 ,
    \t2con_reg[1] ,
    \ie_reg[1] ,
    \ip_reg[1] ,
    \data_reg[1] ,
    \ie_reg[7] ,
    \ip_reg[7] ,
    \scon_reg[7] ,
    \t2con_reg[5]_0 ,
    \ie_reg[5] ,
    \ip_reg[5] ,
    \scon_reg[5] ,
    \data_reg[5] ,
    \tl1_reg[6] ,
    \ie_reg[6] ,
    \ip_reg[6] ,
    \tcon_s_reg[3]_0 ,
    \scon_reg[6] ,
    \t2con_reg[2] ,
    \ie_reg[2] ,
    \ip_reg[2] ,
    \tcon_s_reg[1] ,
    \t2con_reg[4]_0 ,
    \ie_reg[4] ,
    \ip_reg[4] ,
    \tcon_s_reg[2] ,
    \scon_reg[4] ,
    \data_reg[4] ,
    \state_reg[0]_5 ,
    \state_reg[1]_3 ,
    wait_data_reg_inv_10,
    wr_reg,
    \data_reg[3]_0 ,
    \psw_set_reg[1]_0 ,
    \p0_out_reg[7] ,
    \p0_out_reg[6] ,
    \p0_out_reg[5] ,
    \p0_out_reg[4] ,
    \p0_out_reg[3]_0 ,
    \p0_out_reg[2] ,
    \p0_out_reg[1]_0 ,
    \p0_out_reg[0]_0 ,
    \p1_out_reg[7] ,
    \p1_out_reg[6] ,
    \p1_out_reg[5] ,
    \p1_out_reg[4] ,
    \p1_out_reg[3] ,
    \p1_out_reg[2] ,
    \p1_out_reg[1] ,
    \p1_out_reg[0] ,
    \p2_out_reg[6] ,
    \p2_out_reg[5] ,
    \p2_out_reg[4] ,
    \p2_out_reg[3] ,
    \p2_out_reg[2] ,
    \p2_out_reg[1] ,
    \p2_out_reg[0] ,
    \p3_out_reg[6]_0 ,
    \p3_out_reg[5] ,
    \p3_out_reg[4] ,
    \p3_out_reg[3] ,
    \p3_out_reg[2] ,
    \p3_out_reg[1] ,
    \p3_out_reg[0] ,
    \scon_reg[3] ,
    \scon_reg[2] ,
    \scon_reg[1] ,
    \tcon_s_reg[0] ,
    \ip_reg[3] ,
    \ip_reg[0] ,
    \ie_reg[3] ,
    \ie_reg[0] ,
    \t2con_reg[7] ,
    \t2con_reg[6] ,
    \t2con_reg[3]_0 ,
    \rn_r_reg[4]_0 ,
    \ri_r_reg[7]_0 ,
    clk_8051_BUFG,
    rst_IBUF,
    rd_ind0,
    imem_wait_reg_1,
    istb_t_reg_2,
    des_acc,
    \pc_buf_reg[1]_0 ,
    pc_wr_r_i_2_0,
    \pc_buf[4]_i_18_0 ,
    \pc_buf[4]_i_18_1 ,
    \pc_buf[4]_i_18_2 ,
    \pc_buf_reg[1]_1 ,
    \tmod_reg[0] ,
    \cy_sel_reg[0] ,
    \state_reg[1]_4 ,
    state1,
    bit_out_reg_0,
    bit_out_reg_1,
    \data_reg[3]_1 ,
    bit_out_reg_2,
    bit_out_reg_3,
    wr_bit_r,
    \p0_out_reg[7]_0 ,
    wait_data_reg_inv_11,
    \buff_reg[7][7] ,
    \dat0_reg[1] ,
    \dat0_reg[7] ,
    \dat0_reg[0] ,
    \dat0_reg[1]_0 ,
    \dat0_reg[2] ,
    \dat0_reg[3] ,
    \dat0_reg[4] ,
    \dat0_reg[7]_0 ,
    bit_out_reg_4,
    bit_out_i_3_0,
    bit_out_i_3_1,
    bit_out_i_6_0,
    bit_out_i_6_1,
    bit_out_i_3_2,
    \data_lo_reg[0] ,
    wait_data_reg_inv_12,
    wr0,
    \dat0_reg[0]_0 ,
    rd_addr_r_reg_1,
    pop_reg,
    \dat0_reg[0]_1 ,
    \dat0_reg[0]_i_2_0 ,
    \dat0_reg[0]_i_2_1 ,
    \dat0_reg[0]_i_2_2 ,
    scon,
    p1_out,
    \dat0_reg[1]_1 ,
    \dat0_reg[1]_2 ,
    \dat0_reg[7]_1 ,
    \dat0_reg[7]_2 ,
    \dat0[6]_i_9_0 ,
    \dat0[6]_i_9_1 ,
    t2con,
    psw,
    \dat0[1]_i_2_0 ,
    \dat0_reg[7]_i_19_0 ,
    \dat0_reg[7]_i_19_1 ,
    \dat0[7]_i_7_0 ,
    \ri_r_reg[7]_1 ,
    pop_reg_0,
    \bit_select_reg[2] ,
    \dat0[0]_i_4_0 ,
    \p3_out_reg[6]_1 ,
    b_reg,
    \dat0[1]_i_10 ,
    tcon,
    \dat0[6]_i_9_2 ,
    bit_out_i_31_0,
    bit_out_i_27,
    \dat0_reg[7]_3 ,
    rd_addr_r_reg_2,
    bank_sel,
    \dat0[7]_i_23 ,
    src_sel3_reg,
    \iadr_t_reg[15]_0 ,
    \dat0_reg[5] ,
    \pc_buf[15]_i_5_0 ,
    \pc_buf[12]_i_2_0 ,
    \ram_wr_sel_reg[1]_0 ,
    \ram_wr_sel_reg[1]_1 ,
    des1,
    bit_out_i_59_0,
    p_0_in,
    p0_out,
    \psw_set_reg[1]_1 ,
    \op_pos_reg[1]_0 ,
    \pc_buf[15]_i_10_0 ,
    \wr_sfr[1]_i_2_0 ,
    reti_reg_1,
    \ri_r_reg[0]_0 ,
    \ri_r_reg[0]_1 ,
    \ri_r_reg[0]_2 ,
    \ri_r_reg[0]_3 ,
    \ri_r_reg[0]_4 ,
    \ri_r_reg[0]_5 ,
    \ri_r_reg[0]_6 ,
    \ri_r_reg[0]_7 ,
    ack_o,
    op3_r,
    op2_r,
    \scon_reg[1]_0 ,
    tcon_ie1_reg_0,
    \scon_reg[2]_0 ,
    \t2con_reg[2]_0 ,
    \iadr_t[11]_i_2 ,
    \iadr_t_reg[13]_0 ,
    \iadr_t[10]_i_2 ,
    \iadr_t[11]_i_2_0 ,
    \iadr_t[10]_i_2_0 ,
    \tmp_mul_reg[0] ,
    \pcon_reg[0] ,
    \pcon_reg[0]_0 ,
    \iadr_t[8]_i_12 ,
    \data_reg[2] ,
    tx_done,
    \t2con_reg[7]_0 ,
    \data_reg[3]_2 ,
    tf0_buff,
    tf0,
    \p2_out_reg[6]_0 ,
    \buff_reg[1][7] ,
    \tl1_reg[4] ,
    \tr_count_reg[0]_0 ,
    \int_vec_reg[1] ,
    src_sel3,
    \iadr_t[15]_i_3 ,
    \dat0_reg[6] ,
    \dat0_reg[6]_0 ,
    \dat0_reg[5]_0 ,
    \dat0_reg[5]_1 ,
    \dat0_reg[4]_0 ,
    \dat0_reg[4]_1 ,
    \dat0_reg[3]_0 ,
    \dat0_reg[3]_1 ,
    \dat0_reg[2]_0 ,
    \dat0_reg[2]_1 ,
    \int_vec_buff_reg[5]_0 ,
    tcon_ie0_reg_0,
    tcon_ie0_reg_1,
    sfr_bit,
    \data_out_reg[5]_0 ,
    dmem_wait_reg_0,
    \dat0_reg[6]_i_4 ,
    \dat0_reg[5]_i_4 ,
    \dat0_reg[5]_i_4_0 ,
    \dat0_reg[4]_i_4 ,
    \dat0_reg[4]_i_4_0 ,
    \dat0_reg[3]_i_4 ,
    \dat0_reg[3]_i_4_0 ,
    \dat0_reg[2]_i_4 ,
    \pc_buf[15]_i_4_0 ,
    ie,
    ip,
    \dat0_reg[6]_1 ,
    \dat0_reg[6]_2 ,
    \dat0_reg[5]_2 ,
    \pc_buf[12]_i_3_0 ,
    \pc_buf[12]_i_8_0 ,
    \t2con_reg[7]_1 ,
    \t2con_reg[5]_1 ,
    \t2con_reg[6]_0 ,
    \tl1_reg[6]_0 ,
    tl1,
    \t2con_reg[4]_1 ,
    \data_reg[2]_0 ,
    \p0_out_reg[7]_1 ,
    \p0_out_reg[6]_0 ,
    \p0_out_reg[5]_0 ,
    \p0_out_reg[4]_0 ,
    \p0_out_reg[3]_1 ,
    \p0_out_reg[2]_0 ,
    \p0_out_reg[1]_1 ,
    \p0_out_reg[0]_1 ,
    \p2_out_reg[6]_1 ,
    \p2_out_reg[5]_0 ,
    \p2_out_reg[4]_0 ,
    \p2_out_reg[3]_0 ,
    \p2_out_reg[2]_0 ,
    \p2_out_reg[1]_0 ,
    \p2_out_reg[0]_0 ,
    \p3_out_reg[5]_0 ,
    \p3_out_reg[4]_0 ,
    \p3_out_reg[3]_0 ,
    \p3_out_reg[2]_0 ,
    \p3_out_reg[1]_0 ,
    \p3_out_reg[0]_0 ,
    \scon_reg[2]_1 ,
    rd_en_r_i_10,
    \data_lo_reg[0]_0 ,
    \idat_cur_reg[31]_0 ,
    \int_vec_buff_reg[5]_1 ,
    \iadr_t_reg[15]_1 );
  output [0:0]E;
  output rd_ind_reg_0;
  output rd_addr_r;
  output [1:0]\ram_rd_sel_r_reg[2] ;
  output int_ack_t_reg_0;
  output int_ack;
  output reti;
  output imem_wait_reg_0;
  output istb_t_reg_0;
  output [2:0]O;
  output [6:0]Q;
  output [7:0]iadr_o;
  output \iadr_t_reg[5]_0 ;
  output [0:0]\pc_buf_reg[2]_0 ;
  output [7:0]op2_n;
  output \cdata_reg[6]_0 ;
  output wait_data_reg_inv;
  output \state_reg[0] ;
  output \cdata_reg[7]_0 ;
  output [3:0]\ram_wr_sel_reg[1] ;
  output \cdata_reg[7]_1 ;
  output \cdata_reg[0]_0 ;
  output \ram_rd_sel_r_reg[2]_0 ;
  output \ram_rd_sel_r_reg[2]_1 ;
  output \wr_addr_reg[1]_0 ;
  output [0:0]wait_data_reg_inv_0;
  output \ram_rd_sel_r_reg[2]_2 ;
  output wait_data1_out;
  output \ram_rd_sel_r_reg[2]_3 ;
  output \ram_rd_sel_r_reg[0] ;
  output [7:0]D;
  output \dat0[7]_i_25_0 ;
  output \ram_rd_sel_r_reg[2]_4 ;
  output [5:0]ADDRA;
  output [0:0]wr_bit_r_reg;
  output rd_en;
  output rd_en_r_i_11_0;
  output wr_bit_r_reg_0;
  output [5:0]ADDRD;
  output \ram_rd_sel_r_reg[1] ;
  output \ram_rd_sel_r_reg[2]_5 ;
  output rd_en_r_i_12_0;
  output \bit_select[0]_i_2_0 ;
  output \state_reg[0]_0 ;
  output \bit_select[2]_i_1_0 ;
  output \cdata_reg[1]_0 ;
  output \ram_rd_sel_r_reg[0]_0 ;
  output \dat0[7]_i_38_0 ;
  output \state_reg[1] ;
  output \p3_out_reg[6] ;
  output \ram_rd_sel_r_reg[2]_6 ;
  output \cdata_reg[2]_0 ;
  output [7:0]op1_n;
  output [6:0]op3_n;
  output \op2_r_reg[4] ;
  output [13:0]\pc_reg[15]_0 ;
  output \cdata_reg[3]_0 ;
  output [2:0]\state_reg[1]_0 ;
  output [3:0]\state_reg[0]_1 ;
  output \ram_wr_sel_reg[2] ;
  output [1:0]\state_reg[0]_2 ;
  output [1:0]\state_reg[1]_1 ;
  output \p0_out_reg[3] ;
  output \p0_out_reg[0] ;
  output \p0_out_reg[1] ;
  output \op3_r_reg[7] ;
  output src_sel30;
  output [2:0]\state_reg[0]_3 ;
  output bit_addr;
  output [2:0]\cdata_reg[2]_1 ;
  output \data_reg[3] ;
  output \wr_addr_reg[5]_0 ;
  output \ram_wr_sel_reg[2]_0 ;
  output wr_bit_r_reg_1;
  output wait_data_reg_inv_1;
  output \ram_wr_sel_reg[2]_1 ;
  output \pc_reg[12]_0 ;
  output \pc_reg[12]_1 ;
  output \pc_reg[9]_0 ;
  output \pc_reg[13]_0 ;
  output \pc_reg[11]_0 ;
  output \pc_reg[8]_0 ;
  output \pc_reg[10]_0 ;
  output \pc_reg[10]_1 ;
  output \pc_reg[9]_1 ;
  output [0:0]\src_sel1_reg[2] ;
  output [0:0]\src_sel1_reg[2]_0 ;
  output \op1_r_reg[0] ;
  output rd_addr_r_reg_0;
  output \psw_set_reg[0] ;
  output wait_data_reg_inv_2;
  output \psw_set_reg[1] ;
  output \ram_wr_sel_reg[2]_2 ;
  output \ram_wr_sel_reg[2]_3 ;
  output \ram_wr_sel_reg[2]_4 ;
  output \ram_wr_sel_reg[2]_5 ;
  output \ram_wr_sel_reg[2]_6 ;
  output \ram_wr_sel_reg[2]_7 ;
  output \ram_wr_sel_reg[2]_8 ;
  output \wr_addr_reg[5]_1 ;
  output \wr_addr_reg[1]_1 ;
  output [0:0]wait_data_reg_inv_3;
  output [0:0]wait_data_reg_inv_4;
  output \ram_wr_sel_reg[2]_9 ;
  output \ram_wr_sel_reg[2]_10 ;
  output wr_bit_r_reg_2;
  output wr_sbuf;
  output [0:0]\ram_wr_sel_reg[2]_11 ;
  output [0:0]wr_bit_r_reg_3;
  output [0:0]wr_bit_r_reg_4;
  output tf0_buff_reg;
  output wait_data_reg_inv_5;
  output pc_wr_r_i_15_0;
  output wr_bit_r_reg_5;
  output [0:0]wait_data_reg_inv_6;
  output [0:0]wait_data_reg_inv_7;
  output \th0[7]_i_6_0 ;
  output \ram_wr_sel_reg[2]_12 ;
  output \ram_wr_sel_reg[2]_13 ;
  output [0:0]\ram_wr_sel_reg[2]_14 ;
  output \ram_wr_sel_reg[2]_15 ;
  output \ram_wr_sel_reg[2]_16 ;
  output [0:0]\wr_sfr_reg[1] ;
  output [0:0]\wr_sfr_reg[1]_0 ;
  output tf2_set9_out;
  output [0:0]\ram_wr_sel_reg[2]_17 ;
  output [0:0]\ram_wr_sel_reg[2]_18 ;
  output \tcon_s_reg[3] ;
  output \ram_wr_sel_reg[2]_19 ;
  output \ram_wr_sel_reg[2]_20 ;
  output \ram_wr_sel_reg[2]_21 ;
  output [0:0]\tr_count_reg[0] ;
  output \ram_wr_sel_reg[2]_22 ;
  output \wr_addr_reg[0]_0 ;
  output \p0_out[0]_i_4_0 ;
  output [0:0]reti_reg_0;
  output \wr_addr_reg[2]_0 ;
  output \pc_reg[14]_0 ;
  output \pc_reg[15]_1 ;
  output [7:0]internal_addr_OBUF;
  output [2:0]\pc_buf_reg[15]_0 ;
  output wr0_0;
  output tcon_ie0_reg;
  output tcon_ie1_reg;
  output bit_out_reg;
  output [1:0]\state_reg[0]_4 ;
  output \ram_rd_sel_r_reg[2]_7 ;
  output wr_bit_r_reg_6;
  output \data_out_reg[7] ;
  output \data_out_reg[6] ;
  output \data_out_reg[5] ;
  output \data_out_reg[4] ;
  output \data_out_reg[2] ;
  output \data_out_reg[1] ;
  output \wr_addr_reg[0]_1 ;
  output [0:0]wait_data_reg_inv_8;
  output [0:0]wait_data_reg_inv_9;
  output \wr_addr_reg[0]_2 ;
  output \wr_addr_reg[0]_3 ;
  output \data_out_reg[3] ;
  output \wr_addr_reg[0]_4 ;
  output \wr_addr_reg[1]_2 ;
  output \wr_addr_reg[0]_5 ;
  output \wr_addr_reg[0]_6 ;
  output \wr_addr_reg[4]_0 ;
  output \p0_out[7]_i_3_0 ;
  output \wr_addr_reg[1]_3 ;
  output \iadr_t_reg[5]_1 ;
  output istb_t_reg_1;
  output \wr_addr_reg[0]_7 ;
  output [1:0]\state_reg[1]_2 ;
  output \rcap2h_reg[6] ;
  output \t2con_reg[5] ;
  output \t2con_reg[4] ;
  output \t2con_reg[3] ;
  output \rcap2h_reg[2] ;
  output [1:0]\cdata_reg[0]_1 ;
  output \t2con_reg[1] ;
  output \ie_reg[1] ;
  output \ip_reg[1] ;
  output \data_reg[1] ;
  output \ie_reg[7] ;
  output \ip_reg[7] ;
  output \scon_reg[7] ;
  output \t2con_reg[5]_0 ;
  output \ie_reg[5] ;
  output \ip_reg[5] ;
  output \scon_reg[5] ;
  output \data_reg[5] ;
  output \tl1_reg[6] ;
  output \ie_reg[6] ;
  output \ip_reg[6] ;
  output \tcon_s_reg[3]_0 ;
  output \scon_reg[6] ;
  output \t2con_reg[2] ;
  output \ie_reg[2] ;
  output \ip_reg[2] ;
  output \tcon_s_reg[1] ;
  output \t2con_reg[4]_0 ;
  output \ie_reg[4] ;
  output \ip_reg[4] ;
  output \tcon_s_reg[2] ;
  output \scon_reg[4] ;
  output \data_reg[4] ;
  output \state_reg[0]_5 ;
  output \state_reg[1]_3 ;
  output wait_data_reg_inv_10;
  output wr_reg;
  output \data_reg[3]_0 ;
  output \psw_set_reg[1]_0 ;
  output \p0_out_reg[7] ;
  output \p0_out_reg[6] ;
  output \p0_out_reg[5] ;
  output \p0_out_reg[4] ;
  output \p0_out_reg[3]_0 ;
  output \p0_out_reg[2] ;
  output \p0_out_reg[1]_0 ;
  output \p0_out_reg[0]_0 ;
  output \p1_out_reg[7] ;
  output \p1_out_reg[6] ;
  output \p1_out_reg[5] ;
  output \p1_out_reg[4] ;
  output \p1_out_reg[3] ;
  output \p1_out_reg[2] ;
  output \p1_out_reg[1] ;
  output \p1_out_reg[0] ;
  output \p2_out_reg[6] ;
  output \p2_out_reg[5] ;
  output \p2_out_reg[4] ;
  output \p2_out_reg[3] ;
  output \p2_out_reg[2] ;
  output \p2_out_reg[1] ;
  output \p2_out_reg[0] ;
  output \p3_out_reg[6]_0 ;
  output \p3_out_reg[5] ;
  output \p3_out_reg[4] ;
  output \p3_out_reg[3] ;
  output \p3_out_reg[2] ;
  output \p3_out_reg[1] ;
  output \p3_out_reg[0] ;
  output \scon_reg[3] ;
  output \scon_reg[2] ;
  output \scon_reg[1] ;
  output \tcon_s_reg[0] ;
  output \ip_reg[3] ;
  output \ip_reg[0] ;
  output \ie_reg[3] ;
  output \ie_reg[0] ;
  output \t2con_reg[7] ;
  output \t2con_reg[6] ;
  output \t2con_reg[3]_0 ;
  output [4:0]\rn_r_reg[4]_0 ;
  output [7:0]\ri_r_reg[7]_0 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input rd_ind0;
  input imem_wait_reg_1;
  input istb_t_reg_2;
  input [7:0]des_acc;
  input \pc_buf_reg[1]_0 ;
  input pc_wr_r_i_2_0;
  input \pc_buf[4]_i_18_0 ;
  input \pc_buf[4]_i_18_1 ;
  input \pc_buf[4]_i_18_2 ;
  input \pc_buf_reg[1]_1 ;
  input \tmod_reg[0] ;
  input \cy_sel_reg[0] ;
  input \state_reg[1]_4 ;
  input state1;
  input bit_out_reg_0;
  input bit_out_reg_1;
  input \data_reg[3]_1 ;
  input bit_out_reg_2;
  input bit_out_reg_3;
  input wr_bit_r;
  input \p0_out_reg[7]_0 ;
  input [1:0]wait_data_reg_inv_11;
  input \buff_reg[7][7] ;
  input \dat0_reg[1] ;
  input \dat0_reg[7] ;
  input \dat0_reg[0] ;
  input \dat0_reg[1]_0 ;
  input \dat0_reg[2] ;
  input \dat0_reg[3] ;
  input \dat0_reg[4] ;
  input \dat0_reg[7]_0 ;
  input bit_out_reg_4;
  input bit_out_i_3_0;
  input bit_out_i_3_1;
  input bit_out_i_6_0;
  input [0:0]bit_out_i_6_1;
  input bit_out_i_3_2;
  input \data_lo_reg[0] ;
  input wait_data_reg_inv_12;
  input wr0;
  input \dat0_reg[0]_0 ;
  input [6:0]rd_addr_r_reg_1;
  input pop_reg;
  input \dat0_reg[0]_1 ;
  input \dat0_reg[0]_i_2_0 ;
  input \dat0_reg[0]_i_2_1 ;
  input \dat0_reg[0]_i_2_2 ;
  input [7:0]scon;
  input [7:0]p1_out;
  input \dat0_reg[1]_1 ;
  input \dat0_reg[1]_2 ;
  input \dat0_reg[7]_1 ;
  input \dat0_reg[7]_2 ;
  input [4:0]\dat0[6]_i_9_0 ;
  input [4:0]\dat0[6]_i_9_1 ;
  input [6:0]t2con;
  input [4:0]psw;
  input \dat0[1]_i_2_0 ;
  input [1:0]\dat0_reg[7]_i_19_0 ;
  input [1:0]\dat0_reg[7]_i_19_1 ;
  input \dat0[7]_i_7_0 ;
  input [6:0]\ri_r_reg[7]_1 ;
  input [2:0]pop_reg_0;
  input \bit_select_reg[2] ;
  input [0:0]\dat0[0]_i_4_0 ;
  input \p3_out_reg[6]_1 ;
  input [7:0]b_reg;
  input \dat0[1]_i_10 ;
  input [5:0]tcon;
  input [3:0]\dat0[6]_i_9_2 ;
  input bit_out_i_31_0;
  input [7:0]bit_out_i_27;
  input \dat0_reg[7]_3 ;
  input rd_addr_r_reg_2;
  input [1:0]bank_sel;
  input \dat0[7]_i_23 ;
  input src_sel3_reg;
  input [7:0]\iadr_t_reg[15]_0 ;
  input \dat0_reg[5] ;
  input \pc_buf[15]_i_5_0 ;
  input \pc_buf[12]_i_2_0 ;
  input \ram_wr_sel_reg[1]_0 ;
  input \ram_wr_sel_reg[1]_1 ;
  input [1:0]des1;
  input [0:0]bit_out_i_59_0;
  input p_0_in;
  input [7:0]p0_out;
  input \psw_set_reg[1]_1 ;
  input \op_pos_reg[1]_0 ;
  input \pc_buf[15]_i_10_0 ;
  input [7:0]\wr_sfr[1]_i_2_0 ;
  input reti_reg_1;
  input \ri_r_reg[0]_0 ;
  input \ri_r_reg[0]_1 ;
  input \ri_r_reg[0]_2 ;
  input \ri_r_reg[0]_3 ;
  input [0:0]\ri_r_reg[0]_4 ;
  input [0:0]\ri_r_reg[0]_5 ;
  input [0:0]\ri_r_reg[0]_6 ;
  input [0:0]\ri_r_reg[0]_7 ;
  input ack_o;
  input [7:0]op3_r;
  input [7:0]op2_r;
  input \scon_reg[1]_0 ;
  input tcon_ie1_reg_0;
  input [0:0]\scon_reg[2]_0 ;
  input \t2con_reg[2]_0 ;
  input \iadr_t[11]_i_2 ;
  input \iadr_t_reg[13]_0 ;
  input \iadr_t[10]_i_2 ;
  input \iadr_t[11]_i_2_0 ;
  input \iadr_t[10]_i_2_0 ;
  input \tmp_mul_reg[0] ;
  input [2:0]\pcon_reg[0] ;
  input \pcon_reg[0]_0 ;
  input [0:0]\iadr_t[8]_i_12 ;
  input [1:0]\data_reg[2] ;
  input tx_done;
  input \t2con_reg[7]_0 ;
  input \data_reg[3]_2 ;
  input tf0_buff;
  input tf0;
  input \p2_out_reg[6]_0 ;
  input \buff_reg[1][7] ;
  input \tl1_reg[4] ;
  input [0:0]\tr_count_reg[0]_0 ;
  input \int_vec_reg[1] ;
  input src_sel3;
  input [7:0]\iadr_t[15]_i_3 ;
  input \dat0_reg[6] ;
  input \dat0_reg[6]_0 ;
  input \dat0_reg[5]_0 ;
  input \dat0_reg[5]_1 ;
  input \dat0_reg[4]_0 ;
  input \dat0_reg[4]_1 ;
  input \dat0_reg[3]_0 ;
  input \dat0_reg[3]_1 ;
  input \dat0_reg[2]_0 ;
  input \dat0_reg[2]_1 ;
  input [0:0]\int_vec_buff_reg[5]_0 ;
  input tcon_ie0_reg_0;
  input tcon_ie0_reg_1;
  input sfr_bit;
  input \data_out_reg[5]_0 ;
  input [0:0]dmem_wait_reg_0;
  input \dat0_reg[6]_i_4 ;
  input \dat0_reg[5]_i_4 ;
  input \dat0_reg[5]_i_4_0 ;
  input \dat0_reg[4]_i_4 ;
  input \dat0_reg[4]_i_4_0 ;
  input \dat0_reg[3]_i_4 ;
  input \dat0_reg[3]_i_4_0 ;
  input \dat0_reg[2]_i_4 ;
  input \pc_buf[15]_i_4_0 ;
  input [7:0]ie;
  input [7:0]ip;
  input \dat0_reg[6]_1 ;
  input \dat0_reg[6]_2 ;
  input \dat0_reg[5]_2 ;
  input \pc_buf[12]_i_3_0 ;
  input \pc_buf[12]_i_8_0 ;
  input \t2con_reg[7]_1 ;
  input \t2con_reg[5]_1 ;
  input \t2con_reg[6]_0 ;
  input \tl1_reg[6]_0 ;
  input [0:0]tl1;
  input \t2con_reg[4]_1 ;
  input \data_reg[2]_0 ;
  input \p0_out_reg[7]_1 ;
  input \p0_out_reg[6]_0 ;
  input \p0_out_reg[5]_0 ;
  input \p0_out_reg[4]_0 ;
  input \p0_out_reg[3]_1 ;
  input \p0_out_reg[2]_0 ;
  input \p0_out_reg[1]_1 ;
  input \p0_out_reg[0]_1 ;
  input \p2_out_reg[6]_1 ;
  input \p2_out_reg[5]_0 ;
  input \p2_out_reg[4]_0 ;
  input \p2_out_reg[3]_0 ;
  input \p2_out_reg[2]_0 ;
  input \p2_out_reg[1]_0 ;
  input \p2_out_reg[0]_0 ;
  input \p3_out_reg[5]_0 ;
  input \p3_out_reg[4]_0 ;
  input \p3_out_reg[3]_0 ;
  input \p3_out_reg[2]_0 ;
  input \p3_out_reg[1]_0 ;
  input \p3_out_reg[0]_0 ;
  input \scon_reg[2]_1 ;
  input [7:0]rd_en_r_i_10;
  input [0:0]\data_lo_reg[0]_0 ;
  input [31:0]\idat_cur_reg[31]_0 ;
  input [3:0]\int_vec_buff_reg[5]_1 ;
  input [0:0]\iadr_t_reg[15]_1 ;

  wire [5:0]ADDRA;
  wire [5:0]ADDRD;
  wire [7:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [6:0]Q;
  wire ack_o;
  wire \alu_op[0]_i_2_n_0 ;
  wire \alu_op[0]_i_3_n_0 ;
  wire \alu_op[0]_i_4_n_0 ;
  wire \alu_op[0]_i_5_n_0 ;
  wire \alu_op[0]_i_6_n_0 ;
  wire \alu_op[0]_i_7_n_0 ;
  wire \alu_op[0]_i_8_n_0 ;
  wire \alu_op[0]_i_9_n_0 ;
  wire \alu_op[1]_i_2_n_0 ;
  wire \alu_op[1]_i_3_n_0 ;
  wire \alu_op[1]_i_4_n_0 ;
  wire \alu_op[1]_i_5_n_0 ;
  wire \alu_op[1]_i_6_n_0 ;
  wire \alu_op[1]_i_7_n_0 ;
  wire \alu_op[1]_i_8_n_0 ;
  wire \alu_op[2]_i_10_n_0 ;
  wire \alu_op[2]_i_11_n_0 ;
  wire \alu_op[2]_i_2_n_0 ;
  wire \alu_op[2]_i_3_n_0 ;
  wire \alu_op[2]_i_4_n_0 ;
  wire \alu_op[2]_i_5_n_0 ;
  wire \alu_op[2]_i_6_n_0 ;
  wire \alu_op[2]_i_7_n_0 ;
  wire \alu_op[2]_i_8_n_0 ;
  wire \alu_op[2]_i_9_n_0 ;
  wire \alu_op[3]_i_10_n_0 ;
  wire \alu_op[3]_i_2_n_0 ;
  wire \alu_op[3]_i_3_n_0 ;
  wire \alu_op[3]_i_5_n_0 ;
  wire \alu_op[3]_i_6_n_0 ;
  wire \alu_op[3]_i_7_n_0 ;
  wire \alu_op[3]_i_8_n_0 ;
  wire \alu_op[3]_i_9_n_0 ;
  wire [7:0]b_reg;
  wire [1:0]bank_sel;
  wire bit_addr;
  wire bit_out_i_10_n_0;
  wire bit_out_i_12_n_0;
  wire bit_out_i_13_n_0;
  wire bit_out_i_14_n_0;
  wire bit_out_i_17_n_0;
  wire bit_out_i_20_n_0;
  wire bit_out_i_21_n_0;
  wire [7:0]bit_out_i_27;
  wire bit_out_i_2_n_0;
  wire bit_out_i_31_0;
  wire bit_out_i_31_n_0;
  wire bit_out_i_32_n_0;
  wire bit_out_i_3_0;
  wire bit_out_i_3_1;
  wire bit_out_i_3_2;
  wire bit_out_i_3_n_0;
  wire bit_out_i_4_n_0;
  wire bit_out_i_53_n_0;
  wire bit_out_i_54_n_0;
  wire bit_out_i_55_n_0;
  wire bit_out_i_56_n_0;
  wire bit_out_i_57_n_0;
  wire bit_out_i_58_n_0;
  wire [0:0]bit_out_i_59_0;
  wire bit_out_i_59_n_0;
  wire bit_out_i_5_n_0;
  wire bit_out_i_60_n_0;
  wire bit_out_i_6_0;
  wire [0:0]bit_out_i_6_1;
  wire bit_out_i_77_n_0;
  wire bit_out_i_7_n_0;
  wire bit_out_i_8_n_0;
  wire bit_out_i_9_n_0;
  wire bit_out_reg;
  wire bit_out_reg_0;
  wire bit_out_reg_1;
  wire bit_out_reg_2;
  wire bit_out_reg_3;
  wire bit_out_reg_4;
  wire \bit_select[0]_i_2_0 ;
  wire \bit_select[1]_i_2_n_0 ;
  wire \bit_select[2]_i_10_n_0 ;
  wire \bit_select[2]_i_11_n_0 ;
  wire \bit_select[2]_i_12_n_0 ;
  wire \bit_select[2]_i_1_0 ;
  wire \bit_select[2]_i_4_n_0 ;
  wire \bit_select[2]_i_7_n_0 ;
  wire \bit_select[2]_i_8_n_0 ;
  wire \bit_select[2]_i_9_n_0 ;
  wire \bit_select_reg[2] ;
  wire \buff[0][7]_i_3_n_0 ;
  wire \buff[3][7]_i_2_n_0 ;
  wire \buff_reg[1][7] ;
  wire \buff_reg[7][7] ;
  wire buff_reg_0_63_0_2_i_24_n_0;
  wire buff_reg_0_63_0_2_i_25_n_0;
  wire buff_reg_0_63_0_2_i_27_n_0;
  wire buff_reg_0_63_0_2_i_28_n_0;
  wire buff_reg_0_63_0_2_i_36_n_0;
  wire buff_reg_0_63_0_2_i_37_n_0;
  wire [7:0]cdata;
  wire \cdata_reg[0]_0 ;
  wire [1:0]\cdata_reg[0]_1 ;
  wire \cdata_reg[1]_0 ;
  wire \cdata_reg[2]_0 ;
  wire [2:0]\cdata_reg[2]_1 ;
  wire \cdata_reg[3]_0 ;
  wire \cdata_reg[6]_0 ;
  wire \cdata_reg[7]_0 ;
  wire \cdata_reg[7]_1 ;
  wire cdone;
  wire clk_8051_BUFG;
  wire \cy_sel[0]_i_2_n_0 ;
  wire \cy_sel[0]_i_3_n_0 ;
  wire \cy_sel[0]_i_4_n_0 ;
  wire \cy_sel[0]_i_5_n_0 ;
  wire \cy_sel[0]_i_6_n_0 ;
  wire \cy_sel[1]_i_2_n_0 ;
  wire \cy_sel[1]_i_3_n_0 ;
  wire \cy_sel[1]_i_4_n_0 ;
  wire \cy_sel[1]_i_5_n_0 ;
  wire \cy_sel[1]_i_6_n_0 ;
  wire \cy_sel_reg[0] ;
  wire \dat0[0]_i_12_n_0 ;
  wire \dat0[0]_i_17_n_0 ;
  wire [0:0]\dat0[0]_i_4_0 ;
  wire \dat0[0]_i_4_n_0 ;
  wire \dat0[0]_i_9_n_0 ;
  wire \dat0[1]_i_10 ;
  wire \dat0[1]_i_2_0 ;
  wire \dat0[1]_i_2_n_0 ;
  wire \dat0[1]_i_9_n_0 ;
  wire \dat0[2]_i_12_n_0 ;
  wire \dat0[2]_i_13_n_0 ;
  wire \dat0[2]_i_15_n_0 ;
  wire \dat0[2]_i_2_n_0 ;
  wire \dat0[3]_i_12_n_0 ;
  wire \dat0[3]_i_2_n_0 ;
  wire \dat0[4]_i_12_n_0 ;
  wire \dat0[4]_i_2_n_0 ;
  wire \dat0[5]_i_12_n_0 ;
  wire \dat0[5]_i_2_n_0 ;
  wire \dat0[6]_i_13_n_0 ;
  wire \dat0[6]_i_15_n_0 ;
  wire \dat0[6]_i_16_n_0 ;
  wire \dat0[6]_i_2_n_0 ;
  wire [4:0]\dat0[6]_i_9_0 ;
  wire [4:0]\dat0[6]_i_9_1 ;
  wire [3:0]\dat0[6]_i_9_2 ;
  wire \dat0[7]_i_10_n_0 ;
  wire \dat0[7]_i_11_n_0 ;
  wire \dat0[7]_i_12_n_0 ;
  wire \dat0[7]_i_13_n_0 ;
  wire \dat0[7]_i_16_n_0 ;
  wire \dat0[7]_i_18_n_0 ;
  wire \dat0[7]_i_23 ;
  wire \dat0[7]_i_24_n_0 ;
  wire \dat0[7]_i_25_0 ;
  wire \dat0[7]_i_28_n_0 ;
  wire \dat0[7]_i_37_n_0 ;
  wire \dat0[7]_i_38_0 ;
  wire \dat0[7]_i_3_n_0 ;
  wire \dat0[7]_i_40_n_0 ;
  wire \dat0[7]_i_41_n_0 ;
  wire \dat0[7]_i_42_n_0 ;
  wire \dat0[7]_i_43_n_0 ;
  wire \dat0[7]_i_44_n_0 ;
  wire \dat0[7]_i_45_n_0 ;
  wire \dat0[7]_i_4_n_0 ;
  wire \dat0[7]_i_5_n_0 ;
  wire \dat0[7]_i_6_n_0 ;
  wire \dat0[7]_i_7_0 ;
  wire \dat0[7]_i_7_n_0 ;
  wire \dat0_reg[0] ;
  wire \dat0_reg[0]_0 ;
  wire \dat0_reg[0]_1 ;
  wire \dat0_reg[0]_i_2_0 ;
  wire \dat0_reg[0]_i_2_1 ;
  wire \dat0_reg[0]_i_2_2 ;
  wire \dat0_reg[0]_i_2_n_0 ;
  wire \dat0_reg[1] ;
  wire \dat0_reg[1]_0 ;
  wire \dat0_reg[1]_1 ;
  wire \dat0_reg[1]_2 ;
  wire \dat0_reg[1]_i_4_n_0 ;
  wire \dat0_reg[2] ;
  wire \dat0_reg[2]_0 ;
  wire \dat0_reg[2]_1 ;
  wire \dat0_reg[2]_i_4 ;
  wire \dat0_reg[3] ;
  wire \dat0_reg[3]_0 ;
  wire \dat0_reg[3]_1 ;
  wire \dat0_reg[3]_i_4 ;
  wire \dat0_reg[3]_i_4_0 ;
  wire \dat0_reg[4] ;
  wire \dat0_reg[4]_0 ;
  wire \dat0_reg[4]_1 ;
  wire \dat0_reg[4]_i_4 ;
  wire \dat0_reg[4]_i_4_0 ;
  wire \dat0_reg[5] ;
  wire \dat0_reg[5]_0 ;
  wire \dat0_reg[5]_1 ;
  wire \dat0_reg[5]_2 ;
  wire \dat0_reg[5]_i_4 ;
  wire \dat0_reg[5]_i_4_0 ;
  wire \dat0_reg[6] ;
  wire \dat0_reg[6]_0 ;
  wire \dat0_reg[6]_1 ;
  wire \dat0_reg[6]_2 ;
  wire \dat0_reg[6]_i_4 ;
  wire \dat0_reg[7] ;
  wire \dat0_reg[7]_0 ;
  wire \dat0_reg[7]_1 ;
  wire \dat0_reg[7]_2 ;
  wire \dat0_reg[7]_3 ;
  wire [1:0]\dat0_reg[7]_i_19_0 ;
  wire [1:0]\dat0_reg[7]_i_19_1 ;
  wire \dat0_reg[7]_i_19_n_0 ;
  wire [7:0]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data4;
  wire [7:0]data5;
  wire \data[1]_i_2_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[6]_i_6_n_0 ;
  wire \data[6]_i_7_n_0 ;
  wire \data_hi[7]_i_4_n_0 ;
  wire \data_hi[7]_i_5_n_0 ;
  wire \data_lo[7]_i_2_n_0 ;
  wire \data_lo_reg[0] ;
  wire [0:0]\data_lo_reg[0]_0 ;
  wire \data_out[7]_i_3_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[5]_0 ;
  wire \data_out_reg[6] ;
  wire \data_out_reg[7] ;
  wire \data_reg[1] ;
  wire [1:0]\data_reg[2] ;
  wire \data_reg[2]_0 ;
  wire \data_reg[3] ;
  wire \data_reg[3]_0 ;
  wire \data_reg[3]_1 ;
  wire \data_reg[3]_2 ;
  wire \data_reg[4] ;
  wire \data_reg[5] ;
  wire [1:0]des1;
  wire [7:0]des_acc;
  wire dmem_wait_i_1_n_0;
  wire [0:0]dmem_wait_reg_0;
  wire dmem_wait_reg_n_0;
  wire i___1_carry__0_i_1_n_0;
  wire i___1_carry__0_i_2_n_0;
  wire i___1_carry__0_i_3_n_0;
  wire i___1_carry__0_i_4_n_0;
  wire i___1_carry__0_i_5_n_0;
  wire i___1_carry__1_i_1_n_0;
  wire i___1_carry__1_i_2_n_0;
  wire i___1_carry__1_i_3_n_0;
  wire i___1_carry__1_i_4_n_0;
  wire i___1_carry__2_i_1_n_0;
  wire i___1_carry__2_i_2_n_0;
  wire i___1_carry__2_i_3_n_0;
  wire i___1_carry__2_i_4_n_0;
  wire i___1_carry_i_10_n_0;
  wire i___1_carry_i_11_n_0;
  wire i___1_carry_i_12_n_0;
  wire i___1_carry_i_13_n_0;
  wire i___1_carry_i_14_n_0;
  wire i___1_carry_i_1_n_0;
  wire i___1_carry_i_2_n_0;
  wire i___1_carry_i_3_n_0;
  wire i___1_carry_i_4_n_0;
  wire i___1_carry_i_5_n_0;
  wire i___1_carry_i_6_n_0;
  wire i___1_carry_i_7_n_0;
  wire i___1_carry_i_8_n_0;
  wire i___1_carry_i_9_n_0;
  wire [7:0]iadr_o;
  wire [13:0]iadr_t;
  wire \iadr_t[10]_i_2 ;
  wire \iadr_t[10]_i_2_0 ;
  wire \iadr_t[11]_i_2 ;
  wire \iadr_t[11]_i_2_0 ;
  wire \iadr_t[13]_i_7_n_0 ;
  wire \iadr_t[13]_i_9_n_0 ;
  wire [7:0]\iadr_t[15]_i_3 ;
  wire [0:0]\iadr_t[8]_i_12 ;
  wire \iadr_t_reg[13]_0 ;
  wire [7:0]\iadr_t_reg[15]_0 ;
  wire [0:0]\iadr_t_reg[15]_1 ;
  wire \iadr_t_reg[5]_0 ;
  wire \iadr_t_reg[5]_1 ;
  wire idat_cur0;
  wire [31:0]\idat_cur_reg[31]_0 ;
  wire \idat_cur_reg_n_0_[0] ;
  wire \idat_cur_reg_n_0_[1] ;
  wire \idat_cur_reg_n_0_[24] ;
  wire \idat_cur_reg_n_0_[25] ;
  wire \idat_cur_reg_n_0_[26] ;
  wire \idat_cur_reg_n_0_[27] ;
  wire \idat_cur_reg_n_0_[28] ;
  wire \idat_cur_reg_n_0_[29] ;
  wire \idat_cur_reg_n_0_[2] ;
  wire \idat_cur_reg_n_0_[30] ;
  wire \idat_cur_reg_n_0_[31] ;
  wire \idat_cur_reg_n_0_[3] ;
  wire \idat_cur_reg_n_0_[4] ;
  wire \idat_cur_reg_n_0_[5] ;
  wire \idat_cur_reg_n_0_[6] ;
  wire \idat_cur_reg_n_0_[7] ;
  wire \idat_old_reg_n_0_[0] ;
  wire \idat_old_reg_n_0_[1] ;
  wire \idat_old_reg_n_0_[2] ;
  wire \idat_old_reg_n_0_[3] ;
  wire \idat_old_reg_n_0_[4] ;
  wire \idat_old_reg_n_0_[5] ;
  wire \idat_old_reg_n_0_[6] ;
  wire \idat_old_reg_n_0_[7] ;
  wire [7:0]ie;
  wire \ie[2]_i_2_n_0 ;
  wire \ie[3]_i_2_n_0 ;
  wire \ie[3]_i_3_n_0 ;
  wire \ie[7]_i_2_n_0 ;
  wire \ie[7]_i_3_n_0 ;
  wire \ie_reg[0] ;
  wire \ie_reg[1] ;
  wire \ie_reg[2] ;
  wire \ie_reg[3] ;
  wire \ie_reg[4] ;
  wire \ie_reg[5] ;
  wire \ie_reg[6] ;
  wire \ie_reg[7] ;
  wire imem_wait_reg_0;
  wire imem_wait_reg_1;
  wire inc_pc;
  wire int_ack;
  wire int_ack0;
  wire int_ack_buff;
  wire int_ack_t_i_1_n_0;
  wire int_ack_t_reg_0;
  wire [5:1]int_vec_buff;
  wire [0:0]\int_vec_buff_reg[5]_0 ;
  wire [3:0]\int_vec_buff_reg[5]_1 ;
  wire \int_vec_reg[1] ;
  wire [7:0]internal_addr_OBUF;
  wire \internal_addr_OBUF[0]_inst_i_2_n_0 ;
  wire \internal_addr_OBUF[0]_inst_i_2_n_1 ;
  wire \internal_addr_OBUF[0]_inst_i_2_n_2 ;
  wire \internal_addr_OBUF[0]_inst_i_2_n_3 ;
  wire \internal_addr_OBUF[0]_inst_i_3_n_0 ;
  wire \internal_addr_OBUF[0]_inst_i_3_n_1 ;
  wire \internal_addr_OBUF[0]_inst_i_3_n_2 ;
  wire \internal_addr_OBUF[0]_inst_i_3_n_3 ;
  wire \internal_addr_OBUF[0]_inst_i_4_n_0 ;
  wire \internal_addr_OBUF[4]_inst_i_2_n_0 ;
  wire \internal_addr_OBUF[4]_inst_i_2_n_1 ;
  wire \internal_addr_OBUF[4]_inst_i_2_n_2 ;
  wire \internal_addr_OBUF[4]_inst_i_2_n_3 ;
  wire \internal_addr_OBUF[7]_inst_i_2_n_2 ;
  wire \internal_addr_OBUF[7]_inst_i_2_n_3 ;
  wire [7:0]ip;
  wire \ip[7]_i_2_n_0 ;
  wire \ip[7]_i_3_n_0 ;
  wire \ip_reg[0] ;
  wire \ip_reg[1] ;
  wire \ip_reg[2] ;
  wire \ip_reg[3] ;
  wire \ip_reg[4] ;
  wire \ip_reg[5] ;
  wire \ip_reg[6] ;
  wire \ip_reg[7] ;
  wire istb_t_reg_0;
  wire istb_t_reg_1;
  wire istb_t_reg_2;
  wire \mem_act[0]_i_2_n_0 ;
  wire \mem_act[0]_i_3_n_0 ;
  wire \mem_act[0]_i_4_n_0 ;
  wire \mem_act[1]_i_2_n_0 ;
  wire \mem_act[2]_i_2_n_0 ;
  wire \mem_act[2]_i_3_n_0 ;
  wire \mem_act[2]_i_4_n_0 ;
  wire \oc8051_decoder1/state0 ;
  wire \oc8051_sfr1/bit_out0 ;
  wire [2:0]op1_cur;
  wire [7:0]op1_n;
  wire \op1_r_reg[0] ;
  wire [7:0]op2_n;
  wire [7:0]op2_r;
  wire \op2_r[0]_i_2_n_0 ;
  wire \op2_r[0]_i_3_n_0 ;
  wire \op2_r[1]_i_2_n_0 ;
  wire \op2_r[1]_i_3_n_0 ;
  wire \op2_r[3]_i_2_n_0 ;
  wire \op2_r[3]_i_3_n_0 ;
  wire \op2_r[4]_i_3_n_0 ;
  wire \op2_r[4]_i_4_n_0 ;
  wire \op2_r[5]_i_2_n_0 ;
  wire \op2_r[5]_i_3_n_0 ;
  wire \op2_r[5]_i_4_n_0 ;
  wire \op2_r[5]_i_5_n_0 ;
  wire \op2_r[6]_i_2_n_0 ;
  wire \op2_r[6]_i_3_n_0 ;
  wire \op2_r[7]_i_2_n_0 ;
  wire \op2_r[7]_i_3_n_0 ;
  wire \op2_r[7]_i_4_n_0 ;
  wire \op2_r[7]_i_5_n_0 ;
  wire \op2_r_reg[4] ;
  wire [6:0]op3_n;
  wire [7:0]op3_r;
  wire \op3_r[0]_i_2_n_0 ;
  wire \op3_r[0]_i_3_n_0 ;
  wire \op3_r[0]_i_4_n_0 ;
  wire \op3_r[1]_i_2_n_0 ;
  wire \op3_r[1]_i_3_n_0 ;
  wire \op3_r[1]_i_4_n_0 ;
  wire \op3_r[2]_i_2_n_0 ;
  wire \op3_r[2]_i_3_n_0 ;
  wire \op3_r[3]_i_2_n_0 ;
  wire \op3_r[3]_i_3_n_0 ;
  wire \op3_r[4]_i_2_n_0 ;
  wire \op3_r[4]_i_3_n_0 ;
  wire \op3_r[5]_i_2_n_0 ;
  wire \op3_r[5]_i_3_n_0 ;
  wire \op3_r[6]_i_2_n_0 ;
  wire \op3_r[6]_i_3_n_0 ;
  wire \op3_r[7]_i_2_n_0 ;
  wire \op3_r[7]_i_3_n_0 ;
  wire \op3_r_reg[7] ;
  wire \op[0]_i_2_n_0 ;
  wire \op[0]_i_3_n_0 ;
  wire \op[1]_i_2_n_0 ;
  wire \op[1]_i_3_n_0 ;
  wire \op[2]_i_2_n_0 ;
  wire \op[2]_i_3_n_0 ;
  wire \op[3]_i_2_n_0 ;
  wire \op[3]_i_3_n_0 ;
  wire \op[4]_i_2_n_0 ;
  wire \op[4]_i_3_n_0 ;
  wire \op[5]_i_2_n_0 ;
  wire \op[5]_i_3_n_0 ;
  wire \op[5]_i_4_n_0 ;
  wire \op[5]_i_5_n_0 ;
  wire \op[6]_i_2_n_0 ;
  wire \op[7]_i_3_n_0 ;
  wire \op[7]_i_4_n_0 ;
  wire \op_pos[0]_i_1_n_0 ;
  wire \op_pos[0]_i_2_n_0 ;
  wire \op_pos[1]_i_1_n_0 ;
  wire \op_pos[1]_i_2_n_0 ;
  wire \op_pos[1]_i_3_n_0 ;
  wire \op_pos[2]_i_10_n_0 ;
  wire \op_pos[2]_i_11_n_0 ;
  wire \op_pos[2]_i_1_n_0 ;
  wire \op_pos[2]_i_2_n_0 ;
  wire \op_pos[2]_i_3_n_0 ;
  wire \op_pos[2]_i_4_n_0 ;
  wire \op_pos[2]_i_5_n_0 ;
  wire \op_pos[2]_i_6_n_0 ;
  wire \op_pos[2]_i_7_n_0 ;
  wire \op_pos[2]_i_8_n_0 ;
  wire \op_pos[2]_i_9_n_0 ;
  wire \op_pos_reg[1]_0 ;
  wire \op_pos_reg_n_0_[0] ;
  wire \op_pos_reg_n_0_[1] ;
  wire [7:0]p0_out;
  wire \p0_out[0]_i_3_n_0 ;
  wire \p0_out[0]_i_4_0 ;
  wire \p0_out[0]_i_4_n_0 ;
  wire \p0_out[2]_i_3_n_0 ;
  wire \p0_out[2]_i_4_n_0 ;
  wire \p0_out[7]_i_3_0 ;
  wire \p0_out[7]_i_4_n_0 ;
  wire \p0_out[7]_i_5_n_0 ;
  wire \p0_out[7]_i_6_n_0 ;
  wire \p0_out_reg[0] ;
  wire \p0_out_reg[0]_0 ;
  wire \p0_out_reg[0]_1 ;
  wire \p0_out_reg[1] ;
  wire \p0_out_reg[1]_0 ;
  wire \p0_out_reg[1]_1 ;
  wire \p0_out_reg[2] ;
  wire \p0_out_reg[2]_0 ;
  wire \p0_out_reg[3] ;
  wire \p0_out_reg[3]_0 ;
  wire \p0_out_reg[3]_1 ;
  wire \p0_out_reg[4] ;
  wire \p0_out_reg[4]_0 ;
  wire \p0_out_reg[5] ;
  wire \p0_out_reg[5]_0 ;
  wire \p0_out_reg[6] ;
  wire \p0_out_reg[6]_0 ;
  wire \p0_out_reg[7] ;
  wire \p0_out_reg[7]_0 ;
  wire \p0_out_reg[7]_1 ;
  wire [7:0]p1_out;
  wire \p1_out[7]_i_2_n_0 ;
  wire \p1_out[7]_i_3_n_0 ;
  wire \p1_out_reg[0] ;
  wire \p1_out_reg[1] ;
  wire \p1_out_reg[2] ;
  wire \p1_out_reg[3] ;
  wire \p1_out_reg[4] ;
  wire \p1_out_reg[5] ;
  wire \p1_out_reg[6] ;
  wire \p1_out_reg[7] ;
  wire \p2_out[6]_i_2_n_0 ;
  wire \p2_out[6]_i_4_n_0 ;
  wire \p2_out[7]_i_3_n_0 ;
  wire \p2_out_reg[0] ;
  wire \p2_out_reg[0]_0 ;
  wire \p2_out_reg[1] ;
  wire \p2_out_reg[1]_0 ;
  wire \p2_out_reg[2] ;
  wire \p2_out_reg[2]_0 ;
  wire \p2_out_reg[3] ;
  wire \p2_out_reg[3]_0 ;
  wire \p2_out_reg[4] ;
  wire \p2_out_reg[4]_0 ;
  wire \p2_out_reg[5] ;
  wire \p2_out_reg[5]_0 ;
  wire \p2_out_reg[6] ;
  wire \p2_out_reg[6]_0 ;
  wire \p2_out_reg[6]_1 ;
  wire \p3_out[6]_i_2_n_0 ;
  wire \p3_out[7]_i_4_n_0 ;
  wire \p3_out_reg[0] ;
  wire \p3_out_reg[0]_0 ;
  wire \p3_out_reg[1] ;
  wire \p3_out_reg[1]_0 ;
  wire \p3_out_reg[2] ;
  wire \p3_out_reg[2]_0 ;
  wire \p3_out_reg[3] ;
  wire \p3_out_reg[3]_0 ;
  wire \p3_out_reg[4] ;
  wire \p3_out_reg[4]_0 ;
  wire \p3_out_reg[5] ;
  wire \p3_out_reg[5]_0 ;
  wire \p3_out_reg[6] ;
  wire \p3_out_reg[6]_0 ;
  wire \p3_out_reg[6]_1 ;
  wire p_0_in;
  wire p_0_in5_in;
  wire [7:7]p_0_in_0;
  wire [8:0]pc;
  wire \pc0_inferred__0/i___1_carry__0_n_0 ;
  wire \pc0_inferred__0/i___1_carry__0_n_1 ;
  wire \pc0_inferred__0/i___1_carry__0_n_2 ;
  wire \pc0_inferred__0/i___1_carry__0_n_3 ;
  wire \pc0_inferred__0/i___1_carry__0_n_4 ;
  wire \pc0_inferred__0/i___1_carry__0_n_5 ;
  wire \pc0_inferred__0/i___1_carry__0_n_6 ;
  wire \pc0_inferred__0/i___1_carry__0_n_7 ;
  wire \pc0_inferred__0/i___1_carry__1_n_0 ;
  wire \pc0_inferred__0/i___1_carry__1_n_1 ;
  wire \pc0_inferred__0/i___1_carry__1_n_2 ;
  wire \pc0_inferred__0/i___1_carry__1_n_3 ;
  wire \pc0_inferred__0/i___1_carry__1_n_4 ;
  wire \pc0_inferred__0/i___1_carry__1_n_5 ;
  wire \pc0_inferred__0/i___1_carry__1_n_6 ;
  wire \pc0_inferred__0/i___1_carry__1_n_7 ;
  wire \pc0_inferred__0/i___1_carry__2_n_1 ;
  wire \pc0_inferred__0/i___1_carry__2_n_2 ;
  wire \pc0_inferred__0/i___1_carry__2_n_3 ;
  wire \pc0_inferred__0/i___1_carry__2_n_4 ;
  wire \pc0_inferred__0/i___1_carry__2_n_5 ;
  wire \pc0_inferred__0/i___1_carry__2_n_6 ;
  wire \pc0_inferred__0/i___1_carry__2_n_7 ;
  wire \pc0_inferred__0/i___1_carry_n_0 ;
  wire \pc0_inferred__0/i___1_carry_n_1 ;
  wire \pc0_inferred__0/i___1_carry_n_2 ;
  wire \pc0_inferred__0/i___1_carry_n_3 ;
  wire \pc0_inferred__0/i___1_carry_n_4 ;
  wire \pc0_inferred__0/i___1_carry_n_5 ;
  wire \pc0_inferred__0/i___1_carry_n_6 ;
  wire \pc0_inferred__0/i___1_carry_n_7 ;
  wire \pc[15]_i_1_n_0 ;
  wire [15:7]pc_buf;
  wire \pc_buf[0]_i_10_n_0 ;
  wire \pc_buf[0]_i_11_n_0 ;
  wire \pc_buf[0]_i_12_n_0 ;
  wire \pc_buf[0]_i_13_n_0 ;
  wire \pc_buf[0]_i_14_n_0 ;
  wire \pc_buf[0]_i_15_n_0 ;
  wire \pc_buf[0]_i_16_n_0 ;
  wire \pc_buf[0]_i_1_n_0 ;
  wire \pc_buf[0]_i_2_n_0 ;
  wire \pc_buf[0]_i_3_n_0 ;
  wire \pc_buf[0]_i_4_n_0 ;
  wire \pc_buf[0]_i_5_n_0 ;
  wire \pc_buf[0]_i_6_n_0 ;
  wire \pc_buf[10]_i_2_n_0 ;
  wire \pc_buf[10]_i_3_n_0 ;
  wire \pc_buf[12]_i_10_n_0 ;
  wire \pc_buf[12]_i_11_n_0 ;
  wire \pc_buf[12]_i_12_n_0 ;
  wire \pc_buf[12]_i_13_n_0 ;
  wire \pc_buf[12]_i_14_n_0 ;
  wire \pc_buf[12]_i_15_n_0 ;
  wire \pc_buf[12]_i_16_n_0 ;
  wire \pc_buf[12]_i_17_n_0 ;
  wire \pc_buf[12]_i_18_n_0 ;
  wire \pc_buf[12]_i_19_n_0 ;
  wire \pc_buf[12]_i_2_0 ;
  wire \pc_buf[12]_i_2_n_0 ;
  wire \pc_buf[12]_i_3_0 ;
  wire \pc_buf[12]_i_3_n_0 ;
  wire \pc_buf[12]_i_4_n_0 ;
  wire \pc_buf[12]_i_5_n_0 ;
  wire \pc_buf[12]_i_6_n_0 ;
  wire \pc_buf[12]_i_7_n_0 ;
  wire \pc_buf[12]_i_8_0 ;
  wire \pc_buf[12]_i_8_n_0 ;
  wire \pc_buf[12]_i_9_n_0 ;
  wire \pc_buf[15]_i_10_0 ;
  wire \pc_buf[15]_i_10_n_0 ;
  wire \pc_buf[15]_i_11_n_0 ;
  wire \pc_buf[15]_i_12_n_0 ;
  wire \pc_buf[15]_i_13_n_0 ;
  wire \pc_buf[15]_i_14_n_0 ;
  wire \pc_buf[15]_i_15_n_0 ;
  wire \pc_buf[15]_i_17_n_0 ;
  wire \pc_buf[15]_i_18_n_0 ;
  wire \pc_buf[15]_i_19_n_0 ;
  wire \pc_buf[15]_i_20_n_0 ;
  wire \pc_buf[15]_i_21_n_0 ;
  wire \pc_buf[15]_i_22_n_0 ;
  wire \pc_buf[15]_i_23_n_0 ;
  wire \pc_buf[15]_i_24_n_0 ;
  wire \pc_buf[15]_i_25_n_0 ;
  wire \pc_buf[15]_i_26_n_0 ;
  wire \pc_buf[15]_i_3_n_0 ;
  wire \pc_buf[15]_i_4_0 ;
  wire \pc_buf[15]_i_4_n_0 ;
  wire \pc_buf[15]_i_5_0 ;
  wire \pc_buf[15]_i_5_n_0 ;
  wire \pc_buf[15]_i_6_n_0 ;
  wire \pc_buf[15]_i_7_n_0 ;
  wire \pc_buf[15]_i_8_n_0 ;
  wire \pc_buf[15]_i_9_n_0 ;
  wire \pc_buf[4]_i_10_n_0 ;
  wire \pc_buf[4]_i_13_n_0 ;
  wire \pc_buf[4]_i_14_n_0 ;
  wire \pc_buf[4]_i_15_n_0 ;
  wire \pc_buf[4]_i_16_n_0 ;
  wire \pc_buf[4]_i_17_n_0 ;
  wire \pc_buf[4]_i_18_0 ;
  wire \pc_buf[4]_i_18_1 ;
  wire \pc_buf[4]_i_18_2 ;
  wire \pc_buf[4]_i_18_n_0 ;
  wire \pc_buf[4]_i_19_n_0 ;
  wire \pc_buf[4]_i_20_n_0 ;
  wire \pc_buf[4]_i_21_n_0 ;
  wire \pc_buf[4]_i_22_n_0 ;
  wire \pc_buf[4]_i_23_n_0 ;
  wire \pc_buf[4]_i_24_n_0 ;
  wire \pc_buf[4]_i_25_n_0 ;
  wire \pc_buf[4]_i_27_n_0 ;
  wire \pc_buf[4]_i_28_n_0 ;
  wire \pc_buf[4]_i_29_n_0 ;
  wire \pc_buf[4]_i_2_n_0 ;
  wire \pc_buf[4]_i_30_n_0 ;
  wire \pc_buf[4]_i_31_n_0 ;
  wire \pc_buf[4]_i_32_n_0 ;
  wire \pc_buf[4]_i_33_n_0 ;
  wire \pc_buf[4]_i_34_n_0 ;
  wire \pc_buf[4]_i_35_n_0 ;
  wire \pc_buf[4]_i_36_n_0 ;
  wire \pc_buf[4]_i_37_n_0 ;
  wire \pc_buf[4]_i_39_n_0 ;
  wire \pc_buf[4]_i_3_n_0 ;
  wire \pc_buf[4]_i_4_n_0 ;
  wire \pc_buf[4]_i_5_n_0 ;
  wire \pc_buf[4]_i_6_n_0 ;
  wire \pc_buf[8]_i_10_n_0 ;
  wire \pc_buf[8]_i_11_n_0 ;
  wire \pc_buf[8]_i_12_n_0 ;
  wire \pc_buf[8]_i_13_n_0 ;
  wire \pc_buf[8]_i_14_n_0 ;
  wire \pc_buf[8]_i_15_n_0 ;
  wire \pc_buf[8]_i_16_n_0 ;
  wire \pc_buf[8]_i_17_n_0 ;
  wire \pc_buf[8]_i_18_n_0 ;
  wire \pc_buf[8]_i_21_n_0 ;
  wire \pc_buf[8]_i_22_n_0 ;
  wire \pc_buf[8]_i_23_n_0 ;
  wire \pc_buf[8]_i_24_n_0 ;
  wire \pc_buf[8]_i_25_n_0 ;
  wire \pc_buf[8]_i_26_n_0 ;
  wire \pc_buf[8]_i_27_n_0 ;
  wire \pc_buf[8]_i_28_n_0 ;
  wire \pc_buf[8]_i_29_n_0 ;
  wire \pc_buf[8]_i_2_n_0 ;
  wire \pc_buf[8]_i_3_n_0 ;
  wire \pc_buf[8]_i_4_n_0 ;
  wire \pc_buf[8]_i_5_n_0 ;
  wire \pc_buf[8]_i_6_n_0 ;
  wire \pc_buf[8]_i_8_n_0 ;
  wire \pc_buf_reg[0]_i_7_n_0 ;
  wire \pc_buf_reg[0]_i_7_n_1 ;
  wire \pc_buf_reg[0]_i_7_n_2 ;
  wire \pc_buf_reg[0]_i_7_n_3 ;
  wire \pc_buf_reg[12]_i_1_n_0 ;
  wire \pc_buf_reg[12]_i_1_n_1 ;
  wire \pc_buf_reg[12]_i_1_n_2 ;
  wire \pc_buf_reg[12]_i_1_n_3 ;
  wire \pc_buf_reg[12]_i_1_n_4 ;
  wire \pc_buf_reg[12]_i_1_n_5 ;
  wire \pc_buf_reg[12]_i_1_n_6 ;
  wire \pc_buf_reg[12]_i_1_n_7 ;
  wire \pc_buf_reg[12]_i_20_n_0 ;
  wire \pc_buf_reg[12]_i_20_n_1 ;
  wire \pc_buf_reg[12]_i_20_n_2 ;
  wire \pc_buf_reg[12]_i_20_n_3 ;
  wire [2:0]\pc_buf_reg[15]_0 ;
  wire \pc_buf_reg[15]_i_16_n_0 ;
  wire \pc_buf_reg[15]_i_27_n_1 ;
  wire \pc_buf_reg[15]_i_27_n_2 ;
  wire \pc_buf_reg[15]_i_27_n_3 ;
  wire \pc_buf_reg[15]_i_2_n_2 ;
  wire \pc_buf_reg[15]_i_2_n_3 ;
  wire \pc_buf_reg[15]_i_2_n_5 ;
  wire \pc_buf_reg[15]_i_2_n_6 ;
  wire \pc_buf_reg[15]_i_2_n_7 ;
  wire \pc_buf_reg[1]_0 ;
  wire \pc_buf_reg[1]_1 ;
  wire [0:0]\pc_buf_reg[2]_0 ;
  wire \pc_buf_reg[4]_i_11_n_0 ;
  wire \pc_buf_reg[4]_i_12_n_0 ;
  wire \pc_buf_reg[4]_i_1_n_0 ;
  wire \pc_buf_reg[4]_i_1_n_1 ;
  wire \pc_buf_reg[4]_i_1_n_2 ;
  wire \pc_buf_reg[4]_i_1_n_3 ;
  wire \pc_buf_reg[4]_i_1_n_4 ;
  wire \pc_buf_reg[4]_i_1_n_5 ;
  wire \pc_buf_reg[4]_i_1_n_6 ;
  wire \pc_buf_reg[4]_i_1_n_7 ;
  wire \pc_buf_reg[4]_i_26_n_0 ;
  wire \pc_buf_reg[4]_i_26_n_1 ;
  wire \pc_buf_reg[4]_i_26_n_2 ;
  wire \pc_buf_reg[4]_i_26_n_3 ;
  wire \pc_buf_reg[4]_i_8_n_0 ;
  wire \pc_buf_reg[4]_i_9_n_0 ;
  wire \pc_buf_reg[8]_i_19_n_0 ;
  wire \pc_buf_reg[8]_i_19_n_1 ;
  wire \pc_buf_reg[8]_i_19_n_2 ;
  wire \pc_buf_reg[8]_i_19_n_3 ;
  wire \pc_buf_reg[8]_i_1_n_0 ;
  wire \pc_buf_reg[8]_i_1_n_1 ;
  wire \pc_buf_reg[8]_i_1_n_2 ;
  wire \pc_buf_reg[8]_i_1_n_3 ;
  wire \pc_buf_reg[8]_i_1_n_4 ;
  wire \pc_buf_reg[8]_i_1_n_5 ;
  wire \pc_buf_reg[8]_i_1_n_6 ;
  wire \pc_buf_reg[8]_i_1_n_7 ;
  wire \pc_buf_reg[8]_i_20_n_0 ;
  wire \pc_buf_reg[8]_i_20_n_1 ;
  wire \pc_buf_reg[8]_i_20_n_2 ;
  wire \pc_buf_reg[8]_i_20_n_3 ;
  wire \pc_buf_reg[8]_i_7_n_0 ;
  wire \pc_buf_reg[8]_i_9_n_0 ;
  wire \pc_buf_reg_n_0_[0] ;
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
  wire [13:1]pc_out;
  wire \pc_reg[10]_0 ;
  wire \pc_reg[10]_1 ;
  wire \pc_reg[11]_0 ;
  wire \pc_reg[12]_0 ;
  wire \pc_reg[12]_1 ;
  wire \pc_reg[13]_0 ;
  wire \pc_reg[14]_0 ;
  wire [13:0]\pc_reg[15]_0 ;
  wire \pc_reg[15]_1 ;
  wire \pc_reg[8]_0 ;
  wire \pc_reg[9]_0 ;
  wire \pc_reg[9]_1 ;
  wire pc_wr_r;
  wire pc_wr_r0;
  wire pc_wr_r2;
  wire pc_wr_r_i_10_n_0;
  wire pc_wr_r_i_13_n_0;
  wire pc_wr_r_i_14_n_0;
  wire pc_wr_r_i_15_0;
  wire pc_wr_r_i_17_n_0;
  wire pc_wr_r_i_18_n_0;
  wire pc_wr_r_i_20_n_0;
  wire pc_wr_r_i_21_n_0;
  wire pc_wr_r_i_22_n_0;
  wire pc_wr_r_i_23_n_0;
  wire pc_wr_r_i_24_n_0;
  wire pc_wr_r_i_25_n_0;
  wire pc_wr_r_i_26_n_0;
  wire pc_wr_r_i_2_0;
  wire pc_wr_r_i_2_n_0;
  wire pc_wr_r_i_30_n_0;
  wire pc_wr_r_i_3_n_0;
  wire pc_wr_r_i_4_n_0;
  wire pc_wr_r_i_5_n_0;
  wire pc_wr_r_i_6_n_0;
  wire pc_wr_r_i_7_n_0;
  wire pc_wr_r_i_8_n_0;
  wire pc_wr_r_i_9_n_0;
  wire [2:0]\pcon_reg[0] ;
  wire \pcon_reg[0]_0 ;
  wire [15:0]pcs_result0;
  wire [8:0]pcs_result2__0;
  wire pop_reg;
  wire [2:0]pop_reg_0;
  wire [4:0]psw;
  wire \psw_set[0]_i_2_n_0 ;
  wire \psw_set[0]_i_3_n_0 ;
  wire \psw_set[0]_i_4_n_0 ;
  wire \psw_set[0]_i_5_n_0 ;
  wire \psw_set[0]_i_6_n_0 ;
  wire \psw_set[1]_i_2_n_0 ;
  wire \psw_set_reg[0] ;
  wire \psw_set_reg[1] ;
  wire \psw_set_reg[1]_0 ;
  wire \psw_set_reg[1]_1 ;
  wire \ram_rd_sel_r[0]_i_2_n_0 ;
  wire \ram_rd_sel_r[0]_i_3_n_0 ;
  wire \ram_rd_sel_r[0]_i_4_n_0 ;
  wire \ram_rd_sel_r[0]_i_5_n_0 ;
  wire \ram_rd_sel_r[0]_i_6_n_0 ;
  wire \ram_rd_sel_r[0]_i_7_n_0 ;
  wire \ram_rd_sel_r[1]_i_10_n_0 ;
  wire \ram_rd_sel_r[1]_i_11_n_0 ;
  wire \ram_rd_sel_r[1]_i_12_n_0 ;
  wire \ram_rd_sel_r[1]_i_13_n_0 ;
  wire \ram_rd_sel_r[1]_i_14_n_0 ;
  wire \ram_rd_sel_r[1]_i_15_n_0 ;
  wire \ram_rd_sel_r[1]_i_2_n_0 ;
  wire \ram_rd_sel_r[1]_i_3_n_0 ;
  wire \ram_rd_sel_r[1]_i_4_n_0 ;
  wire \ram_rd_sel_r[1]_i_6_n_0 ;
  wire \ram_rd_sel_r[1]_i_7_n_0 ;
  wire \ram_rd_sel_r[1]_i_8_n_0 ;
  wire \ram_rd_sel_r[1]_i_9_n_0 ;
  wire \ram_rd_sel_r[2]_i_10_n_0 ;
  wire \ram_rd_sel_r[2]_i_11_n_0 ;
  wire \ram_rd_sel_r[2]_i_2_n_0 ;
  wire \ram_rd_sel_r[2]_i_5_n_0 ;
  wire \ram_rd_sel_r[2]_i_6_n_0 ;
  wire \ram_rd_sel_r[2]_i_7_n_0 ;
  wire \ram_rd_sel_r[2]_i_8_n_0 ;
  wire \ram_rd_sel_r[2]_i_9_n_0 ;
  wire \ram_rd_sel_r_reg[0] ;
  wire \ram_rd_sel_r_reg[0]_0 ;
  wire \ram_rd_sel_r_reg[1] ;
  wire [1:0]\ram_rd_sel_r_reg[2] ;
  wire \ram_rd_sel_r_reg[2]_0 ;
  wire \ram_rd_sel_r_reg[2]_1 ;
  wire \ram_rd_sel_r_reg[2]_2 ;
  wire \ram_rd_sel_r_reg[2]_3 ;
  wire \ram_rd_sel_r_reg[2]_4 ;
  wire \ram_rd_sel_r_reg[2]_5 ;
  wire \ram_rd_sel_r_reg[2]_6 ;
  wire \ram_rd_sel_r_reg[2]_7 ;
  wire \ram_wr_sel[0]_i_2_n_0 ;
  wire \ram_wr_sel[0]_i_3_n_0 ;
  wire \ram_wr_sel[0]_i_4_n_0 ;
  wire \ram_wr_sel[0]_i_5_n_0 ;
  wire \ram_wr_sel[0]_i_6_n_0 ;
  wire \ram_wr_sel[0]_i_7_n_0 ;
  wire \ram_wr_sel[0]_i_8_n_0 ;
  wire \ram_wr_sel[0]_i_9_n_0 ;
  wire \ram_wr_sel[1]_i_10_n_0 ;
  wire \ram_wr_sel[1]_i_2_n_0 ;
  wire \ram_wr_sel[1]_i_5_n_0 ;
  wire \ram_wr_sel[1]_i_6_n_0 ;
  wire \ram_wr_sel[1]_i_7_n_0 ;
  wire \ram_wr_sel[1]_i_8_n_0 ;
  wire \ram_wr_sel[1]_i_9_n_0 ;
  wire \ram_wr_sel[2]_i_2_n_0 ;
  wire \ram_wr_sel[2]_i_3_n_0 ;
  wire \ram_wr_sel[2]_i_4_n_0 ;
  wire \ram_wr_sel[2]_i_5_n_0 ;
  wire [3:0]\ram_wr_sel_reg[1] ;
  wire \ram_wr_sel_reg[1]_0 ;
  wire \ram_wr_sel_reg[1]_1 ;
  wire \ram_wr_sel_reg[2] ;
  wire \ram_wr_sel_reg[2]_0 ;
  wire \ram_wr_sel_reg[2]_1 ;
  wire \ram_wr_sel_reg[2]_10 ;
  wire [0:0]\ram_wr_sel_reg[2]_11 ;
  wire \ram_wr_sel_reg[2]_12 ;
  wire \ram_wr_sel_reg[2]_13 ;
  wire [0:0]\ram_wr_sel_reg[2]_14 ;
  wire \ram_wr_sel_reg[2]_15 ;
  wire \ram_wr_sel_reg[2]_16 ;
  wire [0:0]\ram_wr_sel_reg[2]_17 ;
  wire [0:0]\ram_wr_sel_reg[2]_18 ;
  wire \ram_wr_sel_reg[2]_19 ;
  wire \ram_wr_sel_reg[2]_2 ;
  wire \ram_wr_sel_reg[2]_20 ;
  wire \ram_wr_sel_reg[2]_21 ;
  wire \ram_wr_sel_reg[2]_22 ;
  wire \ram_wr_sel_reg[2]_3 ;
  wire \ram_wr_sel_reg[2]_4 ;
  wire \ram_wr_sel_reg[2]_5 ;
  wire \ram_wr_sel_reg[2]_6 ;
  wire \ram_wr_sel_reg[2]_7 ;
  wire \ram_wr_sel_reg[2]_8 ;
  wire \ram_wr_sel_reg[2]_9 ;
  wire \rcap2h_reg[2] ;
  wire \rcap2h_reg[6] ;
  wire \rcap2l[7]_i_2_n_0 ;
  wire [7:7]rd_addr;
  wire rd_addr_r;
  wire rd_addr_r_reg_0;
  wire [6:0]rd_addr_r_reg_1;
  wire rd_addr_r_reg_2;
  wire rd_en;
  wire [7:0]rd_en_r_i_10;
  wire rd_en_r_i_11_0;
  wire rd_en_r_i_12_0;
  wire rd_en_r_i_2_n_0;
  wire rd_en_r_i_3_n_0;
  wire rd_en_r_i_4_n_0;
  wire rd_en_r_i_5_n_0;
  wire rd_en_r_i_6_n_0;
  wire rd_en_r_i_7_n_0;
  wire rd_en_r_i_8_n_0;
  wire rd_en_r_i_9_n_0;
  wire rd_ind0;
  wire rd_ind_reg_0;
  wire reti;
  wire reti0;
  wire reti_i_2_n_0;
  wire reti_i_3_n_0;
  wire reti_i_4_n_0;
  wire [0:0]reti_reg_0;
  wire reti_reg_1;
  wire [0:0]ri;
  wire \ri_r[0]_i_2_n_0 ;
  wire \ri_r[0]_i_3_n_0 ;
  wire \ri_r[4]_i_5_n_0 ;
  wire \ri_r_reg[0]_0 ;
  wire \ri_r_reg[0]_1 ;
  wire \ri_r_reg[0]_2 ;
  wire \ri_r_reg[0]_3 ;
  wire [0:0]\ri_r_reg[0]_4 ;
  wire [0:0]\ri_r_reg[0]_5 ;
  wire [0:0]\ri_r_reg[0]_6 ;
  wire [0:0]\ri_r_reg[0]_7 ;
  wire [7:0]\ri_r_reg[7]_0 ;
  wire [6:0]\ri_r_reg[7]_1 ;
  wire \rn_r[3]_i_7_n_0 ;
  wire [4:0]\rn_r_reg[4]_0 ;
  wire rst_IBUF;
  wire \sbuf_txd[9]_i_3_n_0 ;
  wire [7:0]scon;
  wire \scon[1]_i_2_n_0 ;
  wire \scon[2]_i_2_n_0 ;
  wire \scon_reg[1] ;
  wire \scon_reg[1]_0 ;
  wire \scon_reg[2] ;
  wire [0:0]\scon_reg[2]_0 ;
  wire \scon_reg[2]_1 ;
  wire \scon_reg[3] ;
  wire \scon_reg[4] ;
  wire \scon_reg[5] ;
  wire \scon_reg[6] ;
  wire \scon_reg[7] ;
  wire sfr_bit;
  wire \src_sel1[0]_i_2_n_0 ;
  wire \src_sel1[0]_i_3_n_0 ;
  wire \src_sel1[0]_i_4_n_0 ;
  wire \src_sel1[0]_i_5_n_0 ;
  wire \src_sel1[0]_i_6_n_0 ;
  wire \src_sel1[0]_i_7_n_0 ;
  wire \src_sel1[1]_i_10_n_0 ;
  wire \src_sel1[1]_i_11_n_0 ;
  wire \src_sel1[1]_i_2_n_0 ;
  wire \src_sel1[1]_i_3_n_0 ;
  wire \src_sel1[1]_i_4_n_0 ;
  wire \src_sel1[1]_i_5_n_0 ;
  wire \src_sel1[1]_i_6_n_0 ;
  wire \src_sel1[1]_i_7_n_0 ;
  wire \src_sel1[1]_i_8_n_0 ;
  wire \src_sel1[1]_i_9_n_0 ;
  wire \src_sel1[2]_i_2_n_0 ;
  wire [0:0]\src_sel1_reg[2] ;
  wire [0:0]\src_sel1_reg[2]_0 ;
  wire \src_sel2[0]_i_2_n_0 ;
  wire \src_sel2[0]_i_3_n_0 ;
  wire \src_sel2[0]_i_4_n_0 ;
  wire \src_sel2[0]_i_5_n_0 ;
  wire \src_sel2[0]_i_6_n_0 ;
  wire \src_sel2[0]_i_7_n_0 ;
  wire \src_sel2[1]_i_2_n_0 ;
  wire \src_sel2[1]_i_3_n_0 ;
  wire \src_sel2[1]_i_4_n_0 ;
  wire \src_sel2[1]_i_5_n_0 ;
  wire src_sel3;
  wire src_sel30;
  wire src_sel3_i_3_n_0;
  wire src_sel3_i_4_n_0;
  wire src_sel3_i_5_n_0;
  wire src_sel3_i_6_n_0;
  wire src_sel3_reg;
  wire state1;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[1]_i_10_n_0 ;
  wire \state[1]_i_11_n_0 ;
  wire \state[1]_i_12_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[1]_i_7_n_0 ;
  wire \state[1]_i_8_n_0 ;
  wire \state[1]_i_9_n_0 ;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [3:0]\state_reg[0]_1 ;
  wire [1:0]\state_reg[0]_2 ;
  wire [2:0]\state_reg[0]_3 ;
  wire [1:0]\state_reg[0]_4 ;
  wire \state_reg[0]_5 ;
  wire \state_reg[1] ;
  wire [2:0]\state_reg[1]_0 ;
  wire [1:0]\state_reg[1]_1 ;
  wire [1:0]\state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[1]_4 ;
  wire [6:0]t2con;
  wire \t2con[7]_i_2_n_0 ;
  wire \t2con[7]_i_4_n_0 ;
  wire \t2con_reg[1] ;
  wire \t2con_reg[2] ;
  wire \t2con_reg[2]_0 ;
  wire \t2con_reg[3] ;
  wire \t2con_reg[3]_0 ;
  wire \t2con_reg[4] ;
  wire \t2con_reg[4]_0 ;
  wire \t2con_reg[4]_1 ;
  wire \t2con_reg[5] ;
  wire \t2con_reg[5]_0 ;
  wire \t2con_reg[5]_1 ;
  wire \t2con_reg[6] ;
  wire \t2con_reg[6]_0 ;
  wire \t2con_reg[7] ;
  wire \t2con_reg[7]_0 ;
  wire \t2con_reg[7]_1 ;
  wire [5:0]tcon;
  wire tcon_ie0_i_2_n_0;
  wire tcon_ie0_i_3_n_0;
  wire tcon_ie0_i_6_n_0;
  wire tcon_ie0_i_7_n_0;
  wire tcon_ie0_reg;
  wire tcon_ie0_reg_0;
  wire tcon_ie0_reg_1;
  wire tcon_ie1_i_2_n_0;
  wire tcon_ie1_i_3_n_0;
  wire tcon_ie1_i_4_n_0;
  wire tcon_ie1_reg;
  wire tcon_ie1_reg_0;
  wire \tcon_s[3]_i_2_n_0 ;
  wire \tcon_s[3]_i_4_n_0 ;
  wire \tcon_s_reg[0] ;
  wire \tcon_s_reg[1] ;
  wire \tcon_s_reg[2] ;
  wire \tcon_s_reg[3] ;
  wire \tcon_s_reg[3]_0 ;
  wire tf0;
  wire tf0_buff;
  wire tf0_buff_reg;
  wire tf2_set9_out;
  wire \th0[7]_i_6_0 ;
  wire [0:0]tl1;
  wire \tl1[6]_i_3_n_0 ;
  wire \tl1_reg[4] ;
  wire \tl1_reg[6] ;
  wire \tl1_reg[6]_0 ;
  wire \tmod[7]_i_2_n_0 ;
  wire \tmod_reg[0] ;
  wire \tmp_mul_reg[0] ;
  wire [0:0]\tr_count_reg[0] ;
  wire [0:0]\tr_count_reg[0]_0 ;
  wire tx_done;
  wire wait_data1_out;
  wire wait_data_inv_i_2_n_0;
  wire wait_data_inv_i_3_n_0;
  wire wait_data_inv_i_4_n_0;
  wire wait_data_inv_i_5_n_0;
  wire wait_data_reg_inv;
  wire [0:0]wait_data_reg_inv_0;
  wire wait_data_reg_inv_1;
  wire wait_data_reg_inv_10;
  wire [1:0]wait_data_reg_inv_11;
  wire wait_data_reg_inv_12;
  wire wait_data_reg_inv_2;
  wire [0:0]wait_data_reg_inv_3;
  wire [0:0]wait_data_reg_inv_4;
  wire wait_data_reg_inv_5;
  wire [0:0]wait_data_reg_inv_6;
  wire [0:0]wait_data_reg_inv_7;
  wire [0:0]wait_data_reg_inv_8;
  wire [0:0]wait_data_reg_inv_9;
  wire wr0;
  wire wr0_0;
  wire [6:2]wr_addr;
  wire \wr_addr_reg[0]_0 ;
  wire \wr_addr_reg[0]_1 ;
  wire \wr_addr_reg[0]_2 ;
  wire \wr_addr_reg[0]_3 ;
  wire \wr_addr_reg[0]_4 ;
  wire \wr_addr_reg[0]_5 ;
  wire \wr_addr_reg[0]_6 ;
  wire \wr_addr_reg[0]_7 ;
  wire \wr_addr_reg[1]_0 ;
  wire \wr_addr_reg[1]_1 ;
  wire \wr_addr_reg[1]_2 ;
  wire \wr_addr_reg[1]_3 ;
  wire \wr_addr_reg[2]_0 ;
  wire \wr_addr_reg[4]_0 ;
  wire \wr_addr_reg[5]_0 ;
  wire \wr_addr_reg[5]_1 ;
  wire wr_bit_r;
  wire [0:0]wr_bit_r_reg;
  wire wr_bit_r_reg_0;
  wire wr_bit_r_reg_1;
  wire wr_bit_r_reg_2;
  wire [0:0]wr_bit_r_reg_3;
  wire [0:0]wr_bit_r_reg_4;
  wire wr_bit_r_reg_5;
  wire wr_bit_r_reg_6;
  wire wr_i_2_n_0;
  wire wr_i_3_n_0;
  wire wr_i_4_n_0;
  wire wr_i_5_n_0;
  wire wr_i_6_n_0;
  wire wr_i_7_n_0;
  wire wr_i_8_n_0;
  wire wr_reg;
  wire wr_sbuf;
  wire \wr_sfr[0]_i_2_n_0 ;
  wire \wr_sfr[0]_i_3_n_0 ;
  wire \wr_sfr[0]_i_4_n_0 ;
  wire \wr_sfr[0]_i_5_n_0 ;
  wire \wr_sfr[0]_i_6_n_0 ;
  wire \wr_sfr[0]_i_8_n_0 ;
  wire [7:0]\wr_sfr[1]_i_2_0 ;
  wire \wr_sfr[1]_i_3_n_0 ;
  wire \wr_sfr[1]_i_4_n_0 ;
  wire \wr_sfr[1]_i_5_n_0 ;
  wire \wr_sfr[1]_i_6_n_0 ;
  wire [0:0]\wr_sfr_reg[1] ;
  wire [0:0]\wr_sfr_reg[1]_0 ;
  wire [3:2]\NLW_internal_addr_OBUF[7]_inst_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_internal_addr_OBUF[7]_inst_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_pc0_inferred__0/i___1_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_pc_buf_reg[12]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_pc_buf_reg[12]_i_21_O_UNCONNECTED ;
  wire [3:2]\NLW_pc_buf_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_buf_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_pc_buf_reg[15]_i_27_CO_UNCONNECTED ;
  wire [0:0]\NLW_pc_buf_reg[4]_i_26_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00D0)) 
    \alu_op[0]_i_1 
       (.I0(\alu_op[0]_i_2_n_0 ),
        .I1(\alu_op[0]_i_3_n_0 ),
        .I2(\cdata_reg[3]_0 ),
        .I3(\cy_sel_reg[0] ),
        .I4(\alu_op[0]_i_4_n_0 ),
        .I5(\alu_op[0]_i_5_n_0 ),
        .O(\state_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'hFDFFFFFFDFCFDFCF)) 
    \alu_op[0]_i_2 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\alu_op[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8011B91100000000)) 
    \alu_op[0]_i_3 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[0]_0 ),
        .I5(\alu_op[0]_i_6_n_0 ),
        .O(\alu_op[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0D000D0D00000000)) 
    \alu_op[0]_i_4 
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\alu_op[0]_i_7_n_0 ),
        .I2(\cy_sel_reg[0] ),
        .I3(\alu_op[0]_i_8_n_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\alu_op[0]_i_9_n_0 ),
        .O(\alu_op[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00005040)) 
    \alu_op[0]_i_5 
       (.I0(\src_sel1[1]_i_3_n_0 ),
        .I1(\state_reg[1]_4 ),
        .I2(state1),
        .I3(p_0_in),
        .I4(\alu_op[3]_i_5_n_0 ),
        .O(\alu_op[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alu_op[0]_i_6 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\alu_op[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_op[0]_i_7 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\alu_op[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alu_op[0]_i_8 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .O(\alu_op[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_op[0]_i_9 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .O(\alu_op[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44404040)) 
    \alu_op[1]_i_1 
       (.I0(\cy_sel_reg[0] ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\alu_op[1]_i_2_n_0 ),
        .I3(\alu_op[1]_i_3_n_0 ),
        .I4(\alu_op[1]_i_4_n_0 ),
        .I5(\alu_op[1]_i_5_n_0 ),
        .O(\state_reg[0]_1 [1]));
  LUT6 #(
    .INIT(64'h0555015555075107)) 
    \alu_op[1]_i_2 
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\alu_op[1]_i_6_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\alu_op[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \alu_op[1]_i_3 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\wr_sfr[0]_i_5_n_0 ),
        .O(\alu_op[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[1]_i_4 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\alu_op[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEFEEEEEEEEEE)) 
    \alu_op[1]_i_5 
       (.I0(\alu_op[0]_i_5_n_0 ),
        .I1(\alu_op[1]_i_7_n_0 ),
        .I2(\cy_sel_reg[0] ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .I5(\src_sel2[1]_i_2_n_0 ),
        .O(\alu_op[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \alu_op[1]_i_6 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\cdata_reg[0]_0 ),
        .O(\alu_op[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0200020000000200)) 
    \alu_op[1]_i_7 
       (.I0(\alu_op[1]_i_8_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cy_sel_reg[0] ),
        .I3(\cdata_reg[3]_0 ),
        .I4(\cdata_reg[2]_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\alu_op[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC000C0C0028A028A)) 
    \alu_op[1]_i_8 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\alu_op[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0DD00DD00DD00DD)) 
    \alu_op[2]_i_1 
       (.I0(\alu_op[2]_i_2_n_0 ),
        .I1(\alu_op[2]_i_3_n_0 ),
        .I2(\alu_op[2]_i_4_n_0 ),
        .I3(\cy_sel_reg[0] ),
        .I4(\alu_op[2]_i_5_n_0 ),
        .I5(\alu_op[2]_i_6_n_0 ),
        .O(\state_reg[0]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h777FF77F)) 
    \alu_op[2]_i_10 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[3]_0 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .O(\alu_op[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h7CFFFF0F)) 
    \alu_op[2]_i_11 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\wr_sfr[0]_i_5_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .O(\alu_op[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hC8FFC8FFFFFFC0FF)) 
    \alu_op[2]_i_2 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\wr_sfr[0]_i_5_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\alu_op[2]_i_7_n_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\alu_op[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000002AAAA0002)) 
    \alu_op[2]_i_3 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\alu_op[2]_i_8_n_0 ),
        .I3(\alu_op[2]_i_9_n_0 ),
        .I4(\alu_op[2]_i_10_n_0 ),
        .I5(\alu_op[2]_i_11_n_0 ),
        .O(\alu_op[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[2]_i_4 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .O(\alu_op[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \alu_op[2]_i_5 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\alu_op[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \alu_op[2]_i_6 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[3]_0 ),
        .O(\alu_op[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alu_op[2]_i_7 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .O(\alu_op[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alu_op[2]_i_8 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .O(\alu_op[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_op[2]_i_9 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\alu_op[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4445454444444444)) 
    \alu_op[3]_i_1 
       (.I0(\cy_sel_reg[0] ),
        .I1(\alu_op[3]_i_2_n_0 ),
        .I2(\alu_op[3]_i_3_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\state_reg[0]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alu_op[3]_i_10 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .O(\alu_op[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEFEEE)) 
    \alu_op[3]_i_2 
       (.I0(\alu_op[3]_i_6_n_0 ),
        .I1(\alu_op[3]_i_7_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\cdata_reg[2]_0 ),
        .O(\alu_op[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hF8F03FFF)) 
    \alu_op[3]_i_3 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\wr_sfr[0]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .O(\alu_op[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5FDD00005FDD5FDD)) 
    \alu_op[3]_i_4 
       (.I0(\mem_act[2]_i_2_n_0 ),
        .I1(reti_i_3_n_0),
        .I2(cdata[6]),
        .I3(cdone),
        .I4(\alu_op[3]_i_8_n_0 ),
        .I5(\wr_sfr[1]_i_2_0 [6]),
        .O(\cdata_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h5F7700005F775F77)) 
    \alu_op[3]_i_5 
       (.I0(\mem_act[2]_i_2_n_0 ),
        .I1(\op[5]_i_2_n_0 ),
        .I2(cdata[5]),
        .I3(cdone),
        .I4(\alu_op[3]_i_8_n_0 ),
        .I5(\wr_sfr[1]_i_2_0 [5]),
        .O(\alu_op[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h000C8888)) 
    \alu_op[3]_i_6 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[1]_i_9_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .O(\alu_op[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DCD0)) 
    \alu_op[3]_i_7 
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\alu_op[3]_i_9_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\alu_op[3]_i_10_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\alu_op[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF02)) 
    \alu_op[3]_i_8 
       (.I0(state1),
        .I1(p_0_in),
        .I2(\state_reg[1]_4 ),
        .I3(pc_wr_r2),
        .I4(imem_wait_reg_0),
        .I5(dmem_wait_reg_n_0),
        .O(\alu_op[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \alu_op[3]_i_9 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[2]_0 ),
        .O(\alu_op[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF54FFFFFF540000)) 
    bit_out_i_1
       (.I0(bit_out_i_2_n_0),
        .I1(bit_out_i_3_n_0),
        .I2(bit_out_i_4_n_0),
        .I3(bit_out_i_5_n_0),
        .I4(\oc8051_sfr1/bit_out0 ),
        .I5(sfr_bit),
        .O(bit_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hEFEAAAAA)) 
    bit_out_i_10
       (.I0(\ram_rd_sel_r_reg[2] [1]),
        .I1(psw[1]),
        .I2(\ram_rd_sel_r_reg[2]_2 ),
        .I3(psw[2]),
        .I4(\ram_rd_sel_r_reg[2]_4 ),
        .O(bit_out_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    bit_out_i_12
       (.I0(\ram_rd_sel_r_reg[2]_4 ),
        .I1(\ram_rd_sel_r_reg[2]_2 ),
        .I2(psw[0]),
        .O(bit_out_i_12_n_0));
  LUT5 #(
    .INIT(32'hF1FFF1F1)) 
    bit_out_i_13
       (.I0(\dat0_reg[1] ),
        .I1(\ram_rd_sel_r_reg[0] ),
        .I2(\ram_rd_sel_r_reg[2]_0 ),
        .I3(bit_out_i_3_2),
        .I4(\ram_rd_sel_r_reg[2] [1]),
        .O(bit_out_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00070002)) 
    bit_out_i_14
       (.I0(\dat0_reg[1] ),
        .I1(bit_out_i_31_n_0),
        .I2(\ram_rd_sel_r_reg[0] ),
        .I3(\ram_rd_sel_r_reg[2]_0 ),
        .I4(bit_out_i_32_n_0),
        .I5(\ram_rd_sel_r_reg[2]_1 ),
        .O(bit_out_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h1)) 
    bit_out_i_17
       (.I0(\ram_rd_sel_r_reg[2]_0 ),
        .I1(\ram_rd_sel_r_reg[0] ),
        .O(bit_out_i_17_n_0));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    bit_out_i_2
       (.I0(\data_reg[3]_1 ),
        .I1(bit_out_i_7_n_0),
        .I2(bit_out_i_8_n_0),
        .I3(pc_wr_r_i_10_n_0),
        .I4(\tmod_reg[0] ),
        .I5(\wr_addr_reg[1]_0 ),
        .O(bit_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h00EB)) 
    bit_out_i_20
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(\ram_rd_sel_r_reg[2]_0 ),
        .I2(wait_data_reg_inv_12),
        .I3(\ram_rd_sel_r_reg[2]_3 ),
        .O(bit_out_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    bit_out_i_21
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(wr_addr[6]),
        .I2(\dat0_reg[1] ),
        .I3(wr_addr[4]),
        .O(bit_out_i_21_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFE)) 
    bit_out_i_3
       (.I0(bit_out_i_9_n_0),
        .I1(bit_out_i_10_n_0),
        .I2(bit_out_reg_4),
        .I3(bit_out_i_12_n_0),
        .I4(bit_out_i_13_n_0),
        .I5(bit_out_i_14_n_0),
        .O(bit_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_31
       (.I0(bit_out_i_53_n_0),
        .I1(bit_out_i_54_n_0),
        .I2(\ram_rd_sel_r_reg[2] [1]),
        .I3(bit_out_i_55_n_0),
        .I4(\ram_rd_sel_r_reg[2]_4 ),
        .I5(bit_out_i_56_n_0),
        .O(bit_out_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_32
       (.I0(bit_out_i_57_n_0),
        .I1(bit_out_i_58_n_0),
        .I2(\ram_rd_sel_r_reg[2] [1]),
        .I3(bit_out_i_59_n_0),
        .I4(\ram_rd_sel_r_reg[2]_4 ),
        .I5(bit_out_i_60_n_0),
        .O(bit_out_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000FF7FFFFFFFFF)) 
    bit_out_i_39
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(bit_out_i_27[6]),
        .I5(\data_out_reg[5]_0 ),
        .O(\data_out_reg[6] ));
  LUT5 #(
    .INIT(32'hAFEEAAAA)) 
    bit_out_i_4
       (.I0(bit_out_i_7_n_0),
        .I1(bit_out_reg_0),
        .I2(bit_out_reg_1),
        .I3(\ram_rd_sel_r_reg[2]_0 ),
        .I4(\ram_rd_sel_r_reg[2]_1 ),
        .O(bit_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    bit_out_i_40
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h00007FFFFFFFFFFF)) 
    bit_out_i_45
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(bit_out_i_27[7]),
        .I5(\data_out_reg[5]_0 ),
        .O(\data_out_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    bit_out_i_46
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h000000002222F222)) 
    bit_out_i_5
       (.I0(bit_out_i_17_n_0),
        .I1(bit_out_reg_2),
        .I2(pc_wr_r_i_10_n_0),
        .I3(\tmod_reg[0] ),
        .I4(\wr_addr_reg[1]_0 ),
        .I5(bit_out_reg_3),
        .O(bit_out_i_5_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    bit_out_i_53
       (.I0(bit_out_i_27[6]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(bit_out_i_27[7]),
        .O(bit_out_i_53_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    bit_out_i_54
       (.I0(bit_out_i_27[4]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(bit_out_i_27[5]),
        .O(bit_out_i_54_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    bit_out_i_55
       (.I0(bit_out_i_27[2]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(bit_out_i_27[3]),
        .O(bit_out_i_55_n_0));
  LUT6 #(
    .INIT(64'hAABABBBBAA8A8888)) 
    bit_out_i_56
       (.I0(bit_out_i_27[0]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(bit_out_i_27[1]),
        .O(bit_out_i_56_n_0));
  LUT6 #(
    .INIT(64'h5545444455757777)) 
    bit_out_i_57
       (.I0(b_reg[6]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(b_reg[7]),
        .O(bit_out_i_57_n_0));
  LUT6 #(
    .INIT(64'h5545444455757777)) 
    bit_out_i_58
       (.I0(b_reg[4]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(b_reg[5]),
        .O(bit_out_i_58_n_0));
  LUT6 #(
    .INIT(64'h5545444455757777)) 
    bit_out_i_59
       (.I0(b_reg[2]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(b_reg[3]),
        .O(bit_out_i_59_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAEA)) 
    bit_out_i_6
       (.I0(bit_out_i_8_n_0),
        .I1(pc_wr_r_i_10_n_0),
        .I2(\tmod_reg[0] ),
        .I3(\wr_addr_reg[1]_0 ),
        .I4(bit_out_i_20_n_0),
        .I5(bit_out_i_7_n_0),
        .O(\oc8051_sfr1/bit_out0 ));
  LUT6 #(
    .INIT(64'h5545444455757777)) 
    bit_out_i_60
       (.I0(b_reg[0]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(bit_out_i_31_0),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(bit_out_i_77_n_0),
        .I5(b_reg[1]),
        .O(bit_out_i_60_n_0));
  LUT5 #(
    .INIT(32'h04000000)) 
    bit_out_i_7
       (.I0(pc_wr_r_i_26_n_0),
        .I1(pc_wr_r_i_23_n_0),
        .I2(bit_out_i_21_n_0),
        .I3(wr_bit_r),
        .I4(\p0_out_reg[7]_0 ),
        .O(bit_out_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000EFFFFFFFFFFF)) 
    bit_out_i_73
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(wait_data_reg_inv),
        .I4(bit_out_i_27[4]),
        .I5(\data_out_reg[5]_0 ),
        .O(\data_out_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    bit_out_i_75
       (.I0(wait_data_reg_inv),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h575757F7F7F757F7)) 
    bit_out_i_77
       (.I0(\ram_rd_sel_r_reg[1] ),
        .I1(op2_n[0]),
        .I2(pop_reg),
        .I3(des1[0]),
        .I4(\ram_wr_sel_reg[2] ),
        .I5(bit_out_i_59_0),
        .O(bit_out_i_77_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    bit_out_i_8
       (.I0(bit_out_i_17_n_0),
        .I1(\ram_rd_sel_r_reg[2]_1 ),
        .I2(\dat0_reg[1] ),
        .I3(\ram_rd_sel_r_reg[2]_3 ),
        .I4(bit_out_i_6_0),
        .I5(bit_out_i_6_1),
        .O(bit_out_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    bit_out_i_9
       (.I0(bit_out_i_3_0),
        .I1(\ram_rd_sel_r_reg[2] [1]),
        .I2(bit_out_i_3_1),
        .I3(\ram_rd_sel_r_reg[2]_0 ),
        .I4(\ram_rd_sel_r_reg[0] ),
        .O(bit_out_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_select[0]_i_1 
       (.I0(\ram_rd_sel_r_reg[2]_2 ),
        .O(\ram_rd_sel_r_reg[2] [0]));
  LUT6 #(
    .INIT(64'hAAAAAEFEFFFFAEFE)) 
    \bit_select[0]_i_2 
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(pop_reg),
        .I3(ri),
        .I4(\ram_rd_sel_r_reg[1] ),
        .I5(\dat0_reg[7]_3 ),
        .O(\ram_rd_sel_r_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h4F4F44454C4C4445)) 
    \bit_select[1]_i_1 
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(\bit_select[1]_i_2_n_0 ),
        .I2(\ram_rd_sel_r_reg[1] ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(pop_reg),
        .I5(\ri_r_reg[7]_1 [0]),
        .O(\ram_rd_sel_r_reg[2]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFFFFC808)) 
    \bit_select[1]_i_2 
       (.I0(op2_n[1]),
        .I1(\ram_rd_sel_r_reg[1] ),
        .I2(pop_reg),
        .I3(rd_addr_r_reg_1[1]),
        .I4(\ram_rd_sel_r_reg[2]_5 ),
        .O(\bit_select[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5511051100110511)) 
    \bit_select[2]_i_1 
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(\bit_select_reg[2] ),
        .I2(\bit_select[2]_i_4_n_0 ),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(pop_reg),
        .I5(rd_addr_r_reg_1[2]),
        .O(\ram_rd_sel_r_reg[2] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bit_select[2]_i_10 
       (.I0(\idat_cur_reg_n_0_[2] ),
        .I1(data2[2]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[2]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[2]),
        .O(\bit_select[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h80D5FFFF)) 
    \bit_select[2]_i_11 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\cdata_reg[2]_0 ),
        .O(\bit_select[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \bit_select[2]_i_12 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\bit_select[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFF0000)) 
    \bit_select[2]_i_2 
       (.I0(\ram_rd_sel_r[2]_i_2_n_0 ),
        .I1(\bit_select[2]_i_7_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_6_n_0 ),
        .I3(\ram_rd_sel_r[2]_i_7_n_0 ),
        .I4(pop_reg_0[2]),
        .I5(state1),
        .O(\ram_rd_sel_r_reg[2]_5 ));
  LUT5 #(
    .INIT(32'hD111DDDD)) 
    \bit_select[2]_i_4 
       (.I0(op2_r[2]),
        .I1(\op_pos_reg[1]_0 ),
        .I2(int_ack_t_reg_0),
        .I3(ack_o),
        .I4(\bit_select[2]_i_8_n_0 ),
        .O(\bit_select[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBAFFFF0000)) 
    \bit_select[2]_i_5 
       (.I0(\ram_rd_sel_r[1]_i_2_n_0 ),
        .I1(\ram_rd_sel_r[1]_i_3_n_0 ),
        .I2(\ram_rd_sel_r[1]_i_4_n_0 ),
        .I3(\bit_select[2]_i_9_n_0 ),
        .I4(pop_reg_0[1]),
        .I5(state1),
        .O(\ram_rd_sel_r_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \bit_select[2]_i_7 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\bit_select[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \bit_select[2]_i_8 
       (.I0(data4[2]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data5[2]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\bit_select[2]_i_10_n_0 ),
        .O(\bit_select[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \bit_select[2]_i_9 
       (.I0(\ram_rd_sel_r[1]_i_7_n_0 ),
        .I1(\bit_select[2]_i_11_n_0 ),
        .I2(\ram_rd_sel_r[1]_i_15_n_0 ),
        .I3(\mem_act[2]_i_4_n_0 ),
        .I4(\bit_select[2]_i_12_n_0 ),
        .I5(\ram_wr_sel_reg[1]_0 ),
        .O(\bit_select[2]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \buff[0][3]_i_18 
       (.I0(rd_addr_r),
        .I1(rd_ind_reg_0),
        .O(rd_addr_r_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \buff[0][7]_i_1 
       (.I0(\buff[0][7]_i_3_n_0 ),
        .I1(wr_addr[4]),
        .I2(wr_addr[3]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(wr_addr[2]),
        .I5(\ram_wr_sel_reg[1] [1]),
        .O(wait_data_reg_inv_3));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \buff[0][7]_i_3 
       (.I0(state1),
        .I1(\buff_reg[1][7] ),
        .I2(wr_bit_r),
        .I3(wr_addr[6]),
        .I4(\ram_wr_sel_reg[1] [2]),
        .I5(\ram_wr_sel_reg[1] [3]),
        .O(\buff[0][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \buff[1][7]_i_1 
       (.I0(wr_addr[3]),
        .I1(wr_addr[4]),
        .I2(wr_addr[2]),
        .I3(\buff[0][7]_i_3_n_0 ),
        .I4(\ram_wr_sel_reg[1] [1]),
        .I5(\ram_wr_sel_reg[1] [0]),
        .O(wait_data_reg_inv_7));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \buff[2][7]_i_1 
       (.I0(\buff[0][7]_i_3_n_0 ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(wr_addr[4]),
        .I5(wr_addr[3]),
        .O(wait_data_reg_inv_9));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \buff[3][7]_i_1 
       (.I0(\buff[3][7]_i_2_n_0 ),
        .I1(\buff_reg[7][7] ),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(wr_addr[3]),
        .I4(wr_addr[4]),
        .O(wr_bit_r_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \buff[3][7]_i_2 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[6]),
        .I3(\ram_wr_sel_reg[1] [2]),
        .I4(\ram_wr_sel_reg[1] [3]),
        .O(\buff[3][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \buff[4][7]_i_1 
       (.I0(\buff[0][7]_i_3_n_0 ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(wr_addr[3]),
        .I5(wr_addr[4]),
        .O(wait_data_reg_inv_8));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \buff[5][7]_i_1 
       (.I0(wr_addr[3]),
        .I1(wr_addr[4]),
        .I2(wr_addr[2]),
        .I3(\buff[0][7]_i_3_n_0 ),
        .I4(\ram_wr_sel_reg[1] [1]),
        .I5(\ram_wr_sel_reg[1] [0]),
        .O(wait_data_reg_inv_6));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \buff[6][7]_i_1 
       (.I0(\buff[0][7]_i_3_n_0 ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(wr_addr[3]),
        .I5(wr_addr[4]),
        .O(wait_data_reg_inv_4));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \buff[7][7]_i_1 
       (.I0(\buff[3][7]_i_2_n_0 ),
        .I1(wr_addr[4]),
        .I2(\buff_reg[7][7] ),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(wr_addr[3]),
        .O(wr_bit_r_reg_3));
  LUT1 #(
    .INIT(2'h1)) 
    buff_reg_0_63_0_2_i_10
       (.I0(buff_reg_0_63_0_2_i_28_n_0),
        .O(ADDRA[0]));
  LUT3 #(
    .INIT(8'hF2)) 
    buff_reg_0_63_0_2_i_11
       (.I0(wr_bit_r),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .O(ADDRD[5]));
  LUT3 #(
    .INIT(8'hA2)) 
    buff_reg_0_63_0_2_i_12
       (.I0(wr_addr[4]),
        .I1(wr_bit_r),
        .I2(\ram_wr_sel_reg[1] [3]),
        .O(ADDRD[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    buff_reg_0_63_0_2_i_13
       (.I0(wr_addr[3]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_bit_r),
        .I3(wr_addr[6]),
        .O(ADDRD[3]));
  LUT4 #(
    .INIT(16'h2F20)) 
    buff_reg_0_63_0_2_i_14
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_bit_r),
        .I3(wr_addr[2]),
        .O(ADDRD[2]));
  LUT4 #(
    .INIT(16'h2F20)) 
    buff_reg_0_63_0_2_i_15
       (.I0(wr_addr[4]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_bit_r),
        .I3(\ram_wr_sel_reg[1] [1]),
        .O(ADDRD[1]));
  LUT4 #(
    .INIT(16'h2F20)) 
    buff_reg_0_63_0_2_i_16
       (.I0(wr_addr[3]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_bit_r),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(ADDRD[0]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    buff_reg_0_63_0_2_i_23
       (.I0(wr_addr[6]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_bit_r),
        .O(wr_bit_r_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    buff_reg_0_63_0_2_i_24
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(buff_reg_0_63_0_2_i_25_n_0),
        .I2(\ram_rd_sel_r_reg[0] ),
        .O(buff_reg_0_63_0_2_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFE0FFEFFFEFFFEF)) 
    buff_reg_0_63_0_2_i_25
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(buff_reg_0_63_0_2_i_36_n_0),
        .I2(\ram_wr_sel_reg[1]_0 ),
        .I3(\ram_wr_sel_reg[1]_1 ),
        .I4(\ram_rd_sel_r[1]_i_11_n_0 ),
        .I5(buff_reg_0_63_0_2_i_37_n_0),
        .O(buff_reg_0_63_0_2_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h3F1D)) 
    buff_reg_0_63_0_2_i_27
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(buff_reg_0_63_0_2_i_25_n_0),
        .I2(\ram_rd_sel_r_reg[2] [1]),
        .I3(\ram_rd_sel_r_reg[0] ),
        .O(buff_reg_0_63_0_2_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'hD1F3)) 
    buff_reg_0_63_0_2_i_28
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(buff_reg_0_63_0_2_i_25_n_0),
        .I2(\ram_rd_sel_r_reg[2]_2 ),
        .I3(\ram_rd_sel_r_reg[2]_0 ),
        .O(buff_reg_0_63_0_2_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    buff_reg_0_63_0_2_i_36
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\ram_rd_sel_r[1]_i_9_n_0 ),
        .O(buff_reg_0_63_0_2_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h3A3A0889)) 
    buff_reg_0_63_0_2_i_37
       (.I0(\cdata_reg[6]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[7]_1 ),
        .O(buff_reg_0_63_0_2_i_37_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    buff_reg_0_63_0_2_i_4
       (.I0(state1),
        .I1(\buff_reg[1][7] ),
        .I2(wr_bit_r_reg_0),
        .I3(\ram_wr_sel_reg[1] [3]),
        .O(wait_data_reg_inv_10));
  LUT1 #(
    .INIT(2'h1)) 
    buff_reg_0_63_0_2_i_5
       (.I0(buff_reg_0_63_0_2_i_24_n_0),
        .O(ADDRA[5]));
  LUT3 #(
    .INIT(8'h0D)) 
    buff_reg_0_63_0_2_i_6
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(buff_reg_0_63_0_2_i_25_n_0),
        .I2(\dat0_reg[1] ),
        .O(ADDRA[4]));
  LUT1 #(
    .INIT(2'h1)) 
    buff_reg_0_63_0_2_i_7
       (.I0(rd_en_r_i_6_n_0),
        .O(ADDRA[3]));
  LUT1 #(
    .INIT(2'h1)) 
    buff_reg_0_63_0_2_i_8
       (.I0(buff_reg_0_63_0_2_i_27_n_0),
        .O(ADDRA[2]));
  LUT4 #(
    .INIT(16'hC0E2)) 
    buff_reg_0_63_0_2_i_9
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(buff_reg_0_63_0_2_i_25_n_0),
        .I2(\ram_rd_sel_r_reg[2]_4 ),
        .I3(\dat0_reg[1] ),
        .O(ADDRA[1]));
  LUT4 #(
    .INIT(16'h0080)) 
    buff_reg_64_127_0_2_i_1
       (.I0(wr_bit_r_reg_0),
        .I1(\buff_reg[1][7] ),
        .I2(state1),
        .I3(\ram_wr_sel_reg[1] [3]),
        .O(wr_reg));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [0]),
        .Q(cdata[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [1]),
        .Q(cdata[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [2]),
        .Q(cdata[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [3]),
        .Q(cdata[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [4]),
        .Q(cdata[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [5]),
        .Q(cdata[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [6]),
        .Q(cdata[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cdata_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [7]),
        .Q(cdata[7]));
  FDCE #(
    .INIT(1'b0)) 
    cdone_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(E),
        .Q(cdone));
  LUT6 #(
    .INIT(64'h5555515555555100)) 
    \cy_sel[0]_i_1 
       (.I0(\cy_sel_reg[0] ),
        .I1(\cy_sel[0]_i_2_n_0 ),
        .I2(\cy_sel[0]_i_3_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cy_sel[0]_i_4_n_0 ),
        .I5(\cy_sel[0]_i_5_n_0 ),
        .O(\state_reg[0]_4 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F4C4)) 
    \cy_sel[0]_i_2 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\wr_sfr[0]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\cy_sel[1]_i_5_n_0 ),
        .O(\cy_sel[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800080000080)) 
    \cy_sel[0]_i_3 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cdata_reg[3]_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\cy_sel[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h60000000)) 
    \cy_sel[0]_i_4 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\src_sel2[1]_i_2_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .O(\cy_sel[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA000A000A001A000)) 
    \cy_sel[0]_i_5 
       (.I0(\cy_sel[0]_i_6_n_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .I4(\cdata_reg[2]_0 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\cy_sel[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h0236FFFF)) 
    \cy_sel[0]_i_6 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\cdata_reg[3]_0 ),
        .O(\cy_sel[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0101510151015101)) 
    \cy_sel[1]_i_1 
       (.I0(\cy_sel_reg[0] ),
        .I1(\cy_sel[1]_i_2_n_0 ),
        .I2(\cy_sel[1]_i_3_n_0 ),
        .I3(\cy_sel[1]_i_4_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\cy_sel[1]_i_5_n_0 ),
        .O(\state_reg[0]_4 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBFFFFF)) 
    \cy_sel[1]_i_2 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\cy_sel[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50FF56FF55FF56FF)) 
    \cy_sel[1]_i_3 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\cdata_reg[3]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\cdata_reg[0]_0 ),
        .O(\cy_sel[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cy_sel[1]_i_4 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cdata_reg[6]_0 ),
        .O(\cy_sel[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F11FFFF)) 
    \cy_sel[1]_i_5 
       (.I0(reti_reg_1),
        .I1(\op[4]_i_2_n_0 ),
        .I2(cdata[4]),
        .I3(cdone),
        .I4(\mem_act[2]_i_2_n_0 ),
        .I5(\cy_sel[1]_i_6_n_0 ),
        .O(\cy_sel[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \cy_sel[1]_i_6 
       (.I0(\wr_sfr[1]_i_2_0 [4]),
        .I1(dmem_wait_reg_n_0),
        .I2(imem_wait_reg_0),
        .I3(pc_wr_r2),
        .I4(\op_pos_reg[1]_0 ),
        .O(\cy_sel[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF004747)) 
    \dat0[0]_i_1 
       (.I0(\dat0_reg[0]_i_2_n_0 ),
        .I1(\ram_rd_sel_r_reg[0] ),
        .I2(\dat0_reg[0] ),
        .I3(des_acc[0]),
        .I4(\dat0[7]_i_6_n_0 ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    \dat0[0]_i_12 
       (.I0(\bit_select[0]_i_2_0 ),
        .I1(\dat0[0]_i_4_0 ),
        .I2(rd_en_r_i_12_0),
        .O(\dat0[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dat0[0]_i_17 
       (.I0(\ram_rd_sel_r_reg[2]_0 ),
        .I1(wait_data_inv_i_5_n_0),
        .O(\dat0[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \dat0[0]_i_21 
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(\ram_rd_sel_r_reg[1] ),
        .I2(pop_reg),
        .O(\ram_rd_sel_r_reg[2]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dat0[0]_i_22 
       (.I0(\state_reg[0]_0 ),
        .I1(p0_out[0]),
        .O(\p0_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h55155555)) 
    \dat0[0]_i_23 
       (.I0(bit_out_i_27[3]),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(wr_addr[2]),
        .I4(wait_data_reg_inv),
        .O(\data_out_reg[3] ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABAAAAAB)) 
    \dat0[0]_i_4 
       (.I0(\dat0_reg[0]_i_2_0 ),
        .I1(\dat0[0]_i_9_n_0 ),
        .I2(rd_en_r_i_12_0),
        .I3(\dat0_reg[0]_i_2_1 ),
        .I4(\dat0_reg[0]_i_2_2 ),
        .I5(\dat0[0]_i_12_n_0 ),
        .O(\dat0[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEEEAEEEAEEAAA)) 
    \dat0[0]_i_9 
       (.I0(\dat0_reg[1] ),
        .I1(\bit_select[0]_i_2_0 ),
        .I2(\dat0[0]_i_17_n_0 ),
        .I3(scon[0]),
        .I4(\state_reg[0]_0 ),
        .I5(p1_out[0]),
        .O(\dat0[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dat0[1]_i_1 
       (.I0(des_acc[1]),
        .I1(\dat0[7]_i_6_n_0 ),
        .I2(\dat0[1]_i_2_n_0 ),
        .I3(\ram_rd_sel_r_reg[0] ),
        .I4(\dat0_reg[1]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dat0[1]_i_15 
       (.I0(\state_reg[0]_0 ),
        .I1(p0_out[1]),
        .O(\p0_out_reg[1] ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \dat0[1]_i_2 
       (.I0(\dat0_reg[1]_i_4_n_0 ),
        .I1(\ram_rd_sel_r_reg[2] [1]),
        .I2(\dat0_reg[1]_1 ),
        .I3(\dat0_reg[1] ),
        .I4(\dat0_reg[1]_2 ),
        .O(\dat0[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \dat0[1]_i_9 
       (.I0(\dat0_reg[7]_i_19_0 [0]),
        .I1(\dat0[7]_i_25_0 ),
        .I2(\ram_rd_sel_r_reg[2]_2 ),
        .I3(\ram_rd_sel_r_reg[0]_0 ),
        .I4(\dat0_reg[7]_i_19_1 [0]),
        .O(\dat0[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dat0[2]_i_1 
       (.I0(des_acc[2]),
        .I1(\dat0[7]_i_6_n_0 ),
        .I2(\dat0[2]_i_2_n_0 ),
        .I3(\ram_rd_sel_r_reg[0] ),
        .I4(\dat0_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000000E4E4FF00)) 
    \dat0[2]_i_12 
       (.I0(\ram_rd_sel_r_reg[2]_2 ),
        .I1(\dat0[6]_i_9_0 [0]),
        .I2(\dat0[6]_i_9_1 [0]),
        .I3(t2con[1]),
        .I4(\ram_rd_sel_r_reg[2]_4 ),
        .I5(\ram_rd_sel_r_reg[2]_1 ),
        .O(\dat0[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[2]_i_13 
       (.I0(tcon[2]),
        .I1(\dat0[2]_i_15_n_0 ),
        .I2(\ram_rd_sel_r_reg[2]_2 ),
        .I3(\dat0[6]_i_9_2 [0]),
        .I4(\ram_rd_sel_r_reg[2]_0 ),
        .I5(rd_addr_r_reg_1[2]),
        .O(\dat0[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dat0[2]_i_15 
       (.I0(\state_reg[0]_0 ),
        .I1(p0_out[2]),
        .O(\dat0[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \dat0[2]_i_2 
       (.I0(\ram_rd_sel_r_reg[2] [1]),
        .I1(\dat0_reg[2]_0 ),
        .I2(\dat0_reg[2]_1 ),
        .O(\dat0[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F8F0F8FFFFF0F8)) 
    \dat0[2]_i_9 
       (.I0(\cdata_reg[1]_0 ),
        .I1(\ram_rd_sel_r_reg[2]_1 ),
        .I2(\dat0[2]_i_12_n_0 ),
        .I3(\dat0[2]_i_13_n_0 ),
        .I4(\dat0[7]_i_25_0 ),
        .I5(\dat0_reg[2]_i_4 ),
        .O(\rcap2h_reg[2] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dat0[3]_i_1 
       (.I0(des_acc[3]),
        .I1(\dat0[7]_i_6_n_0 ),
        .I2(\dat0[3]_i_2_n_0 ),
        .I3(\ram_rd_sel_r_reg[0] ),
        .I4(\dat0_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h5404545454040404)) 
    \dat0[3]_i_12 
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(t2con[2]),
        .I2(\ram_rd_sel_r_reg[2]_4 ),
        .I3(\dat0[6]_i_9_1 [1]),
        .I4(\ram_rd_sel_r_reg[2]_2 ),
        .I5(\dat0[6]_i_9_0 [1]),
        .O(\dat0[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dat0[3]_i_15 
       (.I0(\state_reg[0]_0 ),
        .I1(p0_out[3]),
        .O(\p0_out_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \dat0[3]_i_2 
       (.I0(\ram_rd_sel_r_reg[2] [1]),
        .I1(\dat0_reg[3]_0 ),
        .I2(\dat0_reg[3]_1 ),
        .O(\dat0[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F8F0F8FFFFF0F8)) 
    \dat0[3]_i_9 
       (.I0(\cdata_reg[1]_0 ),
        .I1(\ram_rd_sel_r_reg[2]_1 ),
        .I2(\dat0[3]_i_12_n_0 ),
        .I3(\dat0_reg[3]_i_4 ),
        .I4(\dat0[7]_i_25_0 ),
        .I5(\dat0_reg[3]_i_4_0 ),
        .O(\t2con_reg[3] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dat0[4]_i_1 
       (.I0(des_acc[4]),
        .I1(\dat0[7]_i_6_n_0 ),
        .I2(\dat0[4]_i_2_n_0 ),
        .I3(\ram_rd_sel_r_reg[0] ),
        .I4(\dat0_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \dat0[4]_i_12 
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(t2con[3]),
        .I2(\ram_rd_sel_r_reg[2]_4 ),
        .I3(\dat0[6]_i_9_0 [2]),
        .I4(\ram_rd_sel_r_reg[2]_2 ),
        .I5(\dat0[6]_i_9_1 [2]),
        .O(\dat0[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \dat0[4]_i_2 
       (.I0(\ram_rd_sel_r_reg[2] [1]),
        .I1(\dat0_reg[4]_0 ),
        .I2(\dat0_reg[4]_1 ),
        .O(\dat0[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F8F0F8FFFFF0F8)) 
    \dat0[4]_i_9 
       (.I0(\cdata_reg[1]_0 ),
        .I1(\ram_rd_sel_r_reg[2]_1 ),
        .I2(\dat0[4]_i_12_n_0 ),
        .I3(\dat0_reg[4]_i_4 ),
        .I4(\dat0[7]_i_25_0 ),
        .I5(\dat0_reg[4]_i_4_0 ),
        .O(\t2con_reg[4] ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \dat0[5]_i_1 
       (.I0(\dat0_reg[5] ),
        .I1(\dat0[7]_i_6_n_0 ),
        .I2(\dat0[5]_i_2_n_0 ),
        .I3(\ram_rd_sel_r_reg[0] ),
        .I4(\dat0_reg[5]_2 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h5454540404045404)) 
    \dat0[5]_i_12 
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(t2con[4]),
        .I2(\ram_rd_sel_r_reg[2]_4 ),
        .I3(\dat0[6]_i_9_0 [3]),
        .I4(\ram_rd_sel_r_reg[2]_2 ),
        .I5(\dat0[6]_i_9_1 [3]),
        .O(\dat0[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \dat0[5]_i_2 
       (.I0(\ram_rd_sel_r_reg[2] [1]),
        .I1(\dat0_reg[5]_0 ),
        .I2(\dat0_reg[5]_1 ),
        .O(\dat0[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFF0F8F8FFF8)) 
    \dat0[5]_i_9 
       (.I0(\cdata_reg[1]_0 ),
        .I1(\ram_rd_sel_r_reg[2]_1 ),
        .I2(\dat0[5]_i_12_n_0 ),
        .I3(\dat0[7]_i_25_0 ),
        .I4(\dat0_reg[5]_i_4 ),
        .I5(\dat0_reg[5]_i_4_0 ),
        .O(\t2con_reg[5] ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \dat0[6]_i_1 
       (.I0(\dat0_reg[6]_1 ),
        .I1(\dat0[7]_i_6_n_0 ),
        .I2(\dat0[6]_i_2_n_0 ),
        .I3(\ram_rd_sel_r_reg[0] ),
        .I4(\dat0_reg[6]_2 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \dat0[6]_i_11 
       (.I0(\dat0[7]_i_25_0 ),
        .I1(\ram_rd_sel_r_reg[2]_2 ),
        .I2(\ram_rd_sel_r_reg[0]_0 ),
        .O(\dat0[7]_i_38_0 ));
  LUT6 #(
    .INIT(64'h00000000E4E4FF00)) 
    \dat0[6]_i_13 
       (.I0(\ram_rd_sel_r_reg[2]_2 ),
        .I1(\dat0[6]_i_9_0 [4]),
        .I2(\dat0[6]_i_9_1 [4]),
        .I3(t2con[5]),
        .I4(\ram_rd_sel_r_reg[2]_4 ),
        .I5(\ram_rd_sel_r_reg[2]_1 ),
        .O(\dat0[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \dat0[6]_i_15 
       (.I0(tcon[5]),
        .I1(\dat0[6]_i_16_n_0 ),
        .I2(\ram_rd_sel_r_reg[2]_2 ),
        .I3(\dat0[6]_i_9_2 [3]),
        .I4(\ram_rd_sel_r_reg[2]_0 ),
        .I5(rd_addr_r_reg_1[5]),
        .O(\dat0[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dat0[6]_i_16 
       (.I0(\state_reg[0]_0 ),
        .I1(p0_out[6]),
        .O(\dat0[6]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \dat0[6]_i_2 
       (.I0(\ram_rd_sel_r_reg[2] [1]),
        .I1(\dat0_reg[6] ),
        .I2(\dat0_reg[6]_0 ),
        .O(\dat0[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hB0BF)) 
    \dat0[6]_i_7 
       (.I0(\state_reg[0]_0 ),
        .I1(\p3_out_reg[6]_1 ),
        .I2(\ram_rd_sel_r_reg[2]_1 ),
        .I3(b_reg[6]),
        .O(\p3_out_reg[6] ));
  LUT6 #(
    .INIT(64'hF0F0FFF0F8F8FFF8)) 
    \dat0[6]_i_9 
       (.I0(\cdata_reg[1]_0 ),
        .I1(\ram_rd_sel_r_reg[2]_1 ),
        .I2(\dat0[6]_i_13_n_0 ),
        .I3(\dat0[7]_i_25_0 ),
        .I4(\dat0_reg[6]_i_4 ),
        .I5(\dat0[6]_i_15_n_0 ),
        .O(\rcap2h_reg[6] ));
  LUT6 #(
    .INIT(64'h2A222A222A22AAAA)) 
    \dat0[7]_i_1 
       (.I0(\dat0[7]_i_3_n_0 ),
        .I1(state1),
        .I2(\dat0[7]_i_4_n_0 ),
        .I3(\ram_rd_sel_r_reg[2]_2 ),
        .I4(pc_wr_r_i_5_n_0),
        .I5(\dat0[7]_i_5_n_0 ),
        .O(wait_data_reg_inv_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7776777F)) 
    \dat0[7]_i_10 
       (.I0(wait_data_reg_inv_12),
        .I1(\ram_rd_sel_r_reg[2]_0 ),
        .I2(\ram_rd_sel_r_reg[2]_4 ),
        .I3(\ram_rd_sel_r_reg[2] [1]),
        .I4(\ram_rd_sel_r_reg[2]_2 ),
        .I5(wait_data_inv_i_4_n_0),
        .O(\dat0[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000980000000000)) 
    \dat0[7]_i_11 
       (.I0(\ram_rd_sel_r_reg[0] ),
        .I1(\dat0_reg[1] ),
        .I2(\ram_rd_sel_r_reg[2] [1]),
        .I3(\dat0[7]_i_24_n_0 ),
        .I4(\ram_rd_sel_r_reg[2]_2 ),
        .I5(\dat0[7]_i_25_0 ),
        .O(\dat0[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h070F7F7F)) 
    \dat0[7]_i_12 
       (.I0(\cdata_reg[1]_0 ),
        .I1(\ram_rd_sel_r_reg[2]_0 ),
        .I2(\ram_rd_sel_r_reg[0] ),
        .I3(\ram_rd_sel_r_reg[2]_2 ),
        .I4(\dat0_reg[1] ),
        .O(\dat0[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dat0[7]_i_13 
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(\ram_rd_sel_r_reg[2]_0 ),
        .O(\dat0[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dat0[7]_i_14 
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(\cdata_reg[1]_0 ),
        .O(\dat0[7]_i_25_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \dat0[7]_i_16 
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(\dat0[7]_i_13_n_0 ),
        .O(\dat0[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h4FFFFFFF)) 
    \dat0[7]_i_18 
       (.I0(wait_data_inv_i_5_n_0),
        .I1(wait_data_inv_i_4_n_0),
        .I2(\p0_out_reg[7]_0 ),
        .I3(wr_bit_r),
        .I4(\ram_wr_sel_reg[1] [3]),
        .O(\dat0[7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dat0[7]_i_2 
       (.I0(des_acc[7]),
        .I1(\dat0[7]_i_6_n_0 ),
        .I2(\dat0[7]_i_7_n_0 ),
        .I3(\ram_rd_sel_r_reg[0] ),
        .I4(\dat0_reg[7]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[7]_i_24 
       (.I0(rd_addr_r_reg_1[3]),
        .I1(op2_n[3]),
        .I2(\ram_rd_sel_r_reg[1] ),
        .I3(\ri_r_reg[7]_1 [2]),
        .I4(pop_reg),
        .I5(bank_sel[0]),
        .O(\dat0[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F000F05050C0C)) 
    \dat0[7]_i_25 
       (.I0(\ri_r_reg[7]_1 [0]),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\dat0[7]_i_37_n_0 ),
        .I3(op2_n[1]),
        .I4(pop_reg),
        .I5(\ram_rd_sel_r_reg[1] ),
        .O(\cdata_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dat0[7]_i_27 
       (.I0(\ram_rd_sel_r_reg[2]_4 ),
        .I1(\ram_rd_sel_r_reg[2] [1]),
        .O(\bit_select[2]_i_1_0 ));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \dat0[7]_i_28 
       (.I0(\dat0_reg[7]_i_19_0 [1]),
        .I1(\dat0[7]_i_25_0 ),
        .I2(\ram_rd_sel_r_reg[2]_2 ),
        .I3(\ram_rd_sel_r_reg[0]_0 ),
        .I4(\dat0_reg[7]_i_19_1 [1]),
        .O(\dat0[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00DD00DD00DF00DD)) 
    \dat0[7]_i_3 
       (.I0(\dat0[7]_i_10_n_0 ),
        .I1(\dat0[7]_i_11_n_0 ),
        .I2(\ram_rd_sel_r_reg[2] [1]),
        .I3(\ram_rd_sel_r_reg[2]_3 ),
        .I4(\ram_rd_sel_r_reg[2]_1 ),
        .I5(\dat0[7]_i_12_n_0 ),
        .O(\dat0[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dat0[7]_i_34 
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(\ram_rd_sel_r_reg[2]_2 ),
        .O(\bit_select[0]_i_2_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \dat0[7]_i_35 
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(wait_data_inv_i_5_n_0),
        .I2(\ram_rd_sel_r_reg[2]_0 ),
        .O(rd_en_r_i_12_0));
  LUT6 #(
    .INIT(64'hFFFF5C5CFF5C5C5C)) 
    \dat0[7]_i_36 
       (.I0(\dat0[7]_i_40_n_0 ),
        .I1(\dat0[7]_i_41_n_0 ),
        .I2(\dat0[7]_i_42_n_0 ),
        .I3(\state_reg[1]_4 ),
        .I4(state1),
        .I5(p_0_in),
        .O(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hEAEEEAAAAAAAAAAA)) 
    \dat0[7]_i_37 
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(rd_addr_r_reg_1[1]),
        .I2(\state_reg[1] ),
        .I3(state1),
        .I4(pop_reg_0[0]),
        .I5(\ram_rd_sel_r_reg[1] ),
        .O(\dat0[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4C43404)) 
    \dat0[7]_i_38 
       (.I0(\dat0[1]_i_10 ),
        .I1(pop_reg),
        .I2(\ram_rd_sel_r_reg[1] ),
        .I3(op2_n[6]),
        .I4(rd_addr_r_reg_1[5]),
        .I5(\ram_rd_sel_r_reg[2]_5 ),
        .O(\ram_rd_sel_r_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \dat0[7]_i_4 
       (.I0(\dat0[7]_i_13_n_0 ),
        .I1(\ram_rd_sel_r_reg[2] [1]),
        .I2(\data_lo_reg[0] ),
        .I3(\dat0[7]_i_25_0 ),
        .I4(wait_data_reg_inv_12),
        .O(\dat0[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00115757)) 
    \dat0[7]_i_40 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\cdata_reg[3]_0 ),
        .I5(\dat0[7]_i_43_n_0 ),
        .O(\dat0[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h2FFFFFFFFFFFFFFF)) 
    \dat0[7]_i_41 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\dat0[7]_i_44_n_0 ),
        .I5(\cdata_reg[3]_0 ),
        .O(\dat0[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454F00)) 
    \dat0[7]_i_42 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\ram_rd_sel_r[1]_i_11_n_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(\dat0[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h80880000FFFFFFFF)) 
    \dat0[7]_i_43 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\alu_op[3]_i_9_n_0 ),
        .I5(\dat0[7]_i_45_n_0 ),
        .O(\dat0[7]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dat0[7]_i_44 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .O(\dat0[7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDA800)) 
    \dat0[7]_i_45 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\cdata_reg[2]_0 ),
        .O(\dat0[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h444F444FFFFF444F)) 
    \dat0[7]_i_5 
       (.I0(\dat0[7]_i_16_n_0 ),
        .I1(\dat0_reg[7] ),
        .I2(\ram_rd_sel_r_reg[2]_2 ),
        .I3(\dat0[7]_i_4_n_0 ),
        .I4(pc_wr_r_i_10_n_0),
        .I5(\dat0[7]_i_18_n_0 ),
        .O(\dat0[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \dat0[7]_i_6 
       (.I0(\data_lo_reg[0] ),
        .I1(\ram_rd_sel_r_reg[2]_2 ),
        .I2(\dat0[7]_i_13_n_0 ),
        .I3(\ram_rd_sel_r_reg[2] [1]),
        .I4(\dat0[7]_i_25_0 ),
        .I5(wait_data_reg_inv_12),
        .O(\dat0[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \dat0[7]_i_7 
       (.I0(\dat0_reg[7]_i_19_n_0 ),
        .I1(\ram_rd_sel_r_reg[2] [1]),
        .I2(\dat0_reg[7]_1 ),
        .I3(\dat0_reg[1] ),
        .I4(\dat0_reg[7]_2 ),
        .O(\dat0[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FF0F03F30AFAF)) 
    \dat0[7]_i_8 
       (.I0(\dat0_reg[0]_0 ),
        .I1(rd_addr_r_reg_1[4]),
        .I2(pop_reg),
        .I3(\op2_r[5]_i_2_n_0 ),
        .I4(\ram_rd_sel_r_reg[1] ),
        .I5(\ram_rd_sel_r_reg[2]_5 ),
        .O(\ram_rd_sel_r_reg[0] ));
  MUXF7 \dat0_reg[0]_i_2 
       (.I0(\dat0[0]_i_4_n_0 ),
        .I1(\dat0_reg[0]_1 ),
        .O(\dat0_reg[0]_i_2_n_0 ),
        .S(\ram_rd_sel_r_reg[2] [1]));
  MUXF7 \dat0_reg[1]_i_4 
       (.I0(\dat0[1]_i_9_n_0 ),
        .I1(\dat0[1]_i_2_0 ),
        .O(\dat0_reg[1]_i_4_n_0 ),
        .S(\ram_rd_sel_r_reg[2]_1 ));
  MUXF7 \dat0_reg[7]_i_19 
       (.I0(\dat0[7]_i_28_n_0 ),
        .I1(\dat0[7]_i_7_0 ),
        .O(\dat0_reg[7]_i_19_n_0 ),
        .S(\ram_rd_sel_r_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[13]_i_7 
       (.I0(Q[1]),
        .I1(E),
        .I2(O[0]),
        .O(iadr_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[16]_i_6 
       (.I0(iadr_t[4]),
        .I1(E),
        .I2(pc_out[4]),
        .O(iadr_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \data[16]_i_7 
       (.I0(O[0]),
        .I1(Q[1]),
        .I2(\pc_buf_reg[2]_0 ),
        .I3(E),
        .I4(Q[0]),
        .O(\iadr_t_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \data[1]_i_1 
       (.I0(\scon_reg[1]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\wr_addr_reg[5]_0 ),
        .I3(\data[1]_i_2_n_0 ),
        .I4(wait_data_reg_inv_2),
        .I5(psw[0]),
        .O(\data_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data[1]_i_2 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .O(\data[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \data[24]_i_6 
       (.I0(O[0]),
        .I1(E),
        .I2(Q[1]),
        .I3(iadr_o[4]),
        .O(istb_t_reg_0));
  LUT6 #(
    .INIT(64'hAAABBBABAAA888A8)) 
    \data[2]_i_1 
       (.I0(\data_reg[2]_0 ),
        .I1(wr_bit_r_reg_6),
        .I2(\data_reg[2] [1]),
        .I3(wait_data_reg_inv_2),
        .I4(\data_lo[7]_i_2_n_0 ),
        .I5(psw[1]),
        .O(\psw_set_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h001D)) 
    \data[31]_i_10 
       (.I0(O[0]),
        .I1(E),
        .I2(Q[1]),
        .I3(iadr_o[4]),
        .O(istb_t_reg_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[31]_i_11 
       (.I0(iadr_t[1]),
        .I1(E),
        .I2(pc_out[1]),
        .O(iadr_o[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[31]_i_12 
       (.I0(iadr_t[0]),
        .I1(E),
        .I2(\pc_buf_reg_n_0_[0] ),
        .O(iadr_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[31]_i_13 
       (.I0(iadr_t[3]),
        .I1(E),
        .I2(pc_out[3]),
        .O(iadr_o[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[31]_i_4 
       (.I0(Q[3]),
        .I1(E),
        .I2(O[2]),
        .O(iadr_o[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \data[31]_i_6 
       (.I0(Q[2]),
        .I1(E),
        .I2(O[1]),
        .O(iadr_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[31]_i_9 
       (.I0(Q[0]),
        .I1(E),
        .I2(\pc_buf_reg[2]_0 ),
        .O(iadr_o[2]));
  LUT6 #(
    .INIT(64'hACAFAFAFACA0A0A0)) 
    \data[3]_i_1 
       (.I0(des1[1]),
        .I1(\data_reg[3]_1 ),
        .I2(\wr_addr_reg[5]_0 ),
        .I3(\wr_addr_reg[2]_0 ),
        .I4(wait_data_reg_inv_2),
        .I5(psw[2]),
        .O(\data_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data[3]_i_2 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .O(\wr_addr_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \data[3]_i_7 
       (.I0(O[0]),
        .I1(Q[1]),
        .I2(\pc_buf_reg[2]_0 ),
        .I3(E),
        .I4(Q[0]),
        .O(\iadr_t_reg[5]_1 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \data[4]_i_1 
       (.I0(\t2con_reg[4]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\wr_addr_reg[5]_0 ),
        .I3(wait_data_reg_inv_2),
        .I4(\data[4]_i_2_n_0 ),
        .I5(psw[3]),
        .O(\data_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data[4]_i_2 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .O(\data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \data[5]_i_1 
       (.I0(\t2con_reg[5]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\wr_addr_reg[5]_0 ),
        .I3(\wr_addr_reg[0]_7 ),
        .I4(wait_data_reg_inv_2),
        .I5(psw[4]),
        .O(\data_reg[5] ));
  LUT3 #(
    .INIT(8'h40)) 
    \data[5]_i_2 
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \data[5]_i_3 
       (.I0(\data_reg[3]_2 ),
        .I1(wr_addr[4]),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[3]),
        .I4(wr_addr[6]),
        .I5(\ram_wr_sel_reg[1] [2]),
        .O(wait_data_reg_inv_2));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \data[6]_i_3 
       (.I0(wr_bit_r),
        .I1(wr_addr[6]),
        .I2(wr_addr[3]),
        .I3(\data[6]_i_6_n_0 ),
        .I4(\data[6]_i_7_n_0 ),
        .I5(\p0_out_reg[7]_0 ),
        .O(wr_bit_r_reg_6));
  LUT6 #(
    .INIT(64'h40FF400040004000)) 
    \data[6]_i_4 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(wait_data_reg_inv_2),
        .I4(\data_reg[2] [1]),
        .I5(\data_reg[2] [0]),
        .O(\psw_set_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[6]_i_6 
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_addr[4]),
        .O(\data[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data[6]_i_7 
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\data[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hAAAAFFFC)) 
    \data[7]_i_2 
       (.I0(\wr_addr_reg[1]_0 ),
        .I1(\wr_addr_reg[5]_0 ),
        .I2(\data_reg[2] [0]),
        .I3(\data_reg[2] [1]),
        .I4(wait_data_reg_inv_2),
        .O(\psw_set_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \data_hi[7]_i_1 
       (.I0(\data_lo_reg[0] ),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(\data_hi[7]_i_4_n_0 ),
        .I4(\data_hi[7]_i_5_n_0 ),
        .I5(\tmod_reg[0] ),
        .O(\wr_sfr_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \data_hi[7]_i_4 
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_addr[6]),
        .I2(wr_addr[3]),
        .I3(wr_addr[4]),
        .O(\data_hi[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_hi[7]_i_5 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .O(\data_hi[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \data_lo[7]_i_1 
       (.I0(\data_lo_reg[0] ),
        .I1(\data_lo[7]_i_2_n_0 ),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(\data_hi[7]_i_4_n_0 ),
        .I5(\tmod_reg[0] ),
        .O(\wr_sfr_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_lo[7]_i_2 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .O(\data_lo[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \data_out[0]_i_3 
       (.I0(\wr_addr_reg[1]_1 ),
        .I1(wr_addr[3]),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[4]),
        .I4(wr_addr[6]),
        .I5(\ram_wr_sel_reg[1] [2]),
        .O(\wr_addr_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \data_out[0]_i_3__0 
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00000200AAAAAAAA)) 
    \data_out[1]_i_2 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h0000FDFFFFFFFFFF)) 
    \data_out[1]_i_2__0 
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(bit_out_i_27[1]),
        .I5(\data_out_reg[5]_0 ),
        .O(\data_out_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \data_out[1]_i_3 
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \data_out[2]_i_2__0 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h0000FFDFFFFFFFFF)) 
    \data_out[2]_i_4 
       (.I0(wait_data_reg_inv),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(bit_out_i_27[2]),
        .I5(\data_out_reg[5]_0 ),
        .O(\data_out_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \data_out[2]_i_5 
       (.I0(wait_data_reg_inv),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h00002000AAAAAAAA)) 
    \data_out[3]_i_2__0 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h00000200AAAAAAAA)) 
    \data_out[4]_i_2__0 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(wr_addr[2]),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \data_out[4]_i_3 
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(wait_data_reg_inv),
        .O(pc_wr_r_i_15_0));
  LUT6 #(
    .INIT(64'h00000080AAAAAAAA)) 
    \data_out[5]_i_2 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_6 ));
  LUT6 #(
    .INIT(64'h0000FF7FFFFFFFFF)) 
    \data_out[5]_i_4 
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(bit_out_i_27[5]),
        .I5(\data_out_reg[5]_0 ),
        .O(\data_out_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \data_out[5]_i_5 
       (.I0(wait_data_reg_inv),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .O(\wr_addr_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h00000080AAAAAAAA)) 
    \data_out[6]_i_2__0 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h00008000AAAAAAAA)) 
    \data_out[7]_i_2__0 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(\data_out[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_8 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \data_out[7]_i_3 
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_addr[6]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(wr_addr[4]),
        .I4(wr_addr[3]),
        .I5(wr_bit_r),
        .O(\data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \data_out[7]_i_4 
       (.I0(wr_bit_r),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(wr_addr[6]),
        .I3(wr_addr[4]),
        .I4(\ram_wr_sel_reg[1] [3]),
        .I5(\p0_out[0]_i_3_n_0 ),
        .O(\data_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \data_out[7]_i_4__0 
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_addr[6]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(wr_addr[3]),
        .I4(wr_addr[4]),
        .O(\wr_addr_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dmem_wait_i_1
       (.I0(dmem_wait_reg_n_0),
        .I1(dmem_wait_reg_0),
        .O(dmem_wait_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dmem_wait_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(dmem_wait_i_1_n_0),
        .Q(dmem_wait_reg_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i___1_carry__0_i_1
       (.I0(pc_wr_r2),
        .I1(\pc_buf_reg_n_0_[3] ),
        .O(i___1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__0_i_2
       (.I0(\pc_buf_reg_n_0_[6] ),
        .I1(\pc_buf_reg_n_0_[7] ),
        .O(i___1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__0_i_3
       (.I0(\pc_buf_reg_n_0_[5] ),
        .I1(\pc_buf_reg_n_0_[6] ),
        .O(i___1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__0_i_4
       (.I0(\pc_buf_reg_n_0_[4] ),
        .I1(\pc_buf_reg_n_0_[5] ),
        .O(i___1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___1_carry__0_i_5
       (.I0(\pc_buf_reg_n_0_[3] ),
        .I1(pc_wr_r2),
        .I2(\pc_buf_reg_n_0_[4] ),
        .O(i___1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__1_i_1
       (.I0(\pc_buf_reg_n_0_[10] ),
        .I1(\pc_buf_reg_n_0_[11] ),
        .O(i___1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__1_i_2
       (.I0(\pc_buf_reg_n_0_[9] ),
        .I1(\pc_buf_reg_n_0_[10] ),
        .O(i___1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__1_i_3
       (.I0(\pc_buf_reg_n_0_[8] ),
        .I1(\pc_buf_reg_n_0_[9] ),
        .O(i___1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__1_i_4
       (.I0(\pc_buf_reg_n_0_[7] ),
        .I1(\pc_buf_reg_n_0_[8] ),
        .O(i___1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__2_i_1
       (.I0(\pc_buf_reg_n_0_[14] ),
        .I1(\pc_buf_reg_n_0_[15] ),
        .O(i___1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__2_i_2
       (.I0(\pc_buf_reg_n_0_[13] ),
        .I1(\pc_buf_reg_n_0_[14] ),
        .O(i___1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__2_i_3
       (.I0(\pc_buf_reg_n_0_[12] ),
        .I1(\pc_buf_reg_n_0_[13] ),
        .O(i___1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry__2_i_4
       (.I0(\pc_buf_reg_n_0_[11] ),
        .I1(\pc_buf_reg_n_0_[12] ),
        .O(i___1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i___1_carry_i_1
       (.I0(\pc_buf_reg_n_0_[3] ),
        .I1(pc_wr_r2),
        .O(i___1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h6B77FFFF6B770000)) 
    i___1_carry_i_10
       (.I0(\op[6]_i_2_n_0 ),
        .I1(op1_n[7]),
        .I2(op1_n[5]),
        .I3(op1_n[4]),
        .I4(op1_n[3]),
        .I5(i___1_carry_i_12_n_0),
        .O(i___1_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hD008)) 
    i___1_carry_i_11
       (.I0(op1_n[4]),
        .I1(op1_n[5]),
        .I2(op1_n[7]),
        .I3(\op[6]_i_2_n_0 ),
        .O(i___1_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h0000FFEA)) 
    i___1_carry_i_12
       (.I0(op1_n[2]),
        .I1(op1_n[5]),
        .I2(op1_n[4]),
        .I3(i___1_carry_i_13_n_0),
        .I4(i___1_carry_i_14_n_0),
        .O(i___1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hDED0DED000009A90)) 
    i___1_carry_i_13
       (.I0(op1_n[5]),
        .I1(op1_n[1]),
        .I2(\op[6]_i_2_n_0 ),
        .I3(op1_n[7]),
        .I4(op1_n[4]),
        .I5(op1_n[0]),
        .O(i___1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h00000000FC70FBFB)) 
    i___1_carry_i_14
       (.I0(op1_n[5]),
        .I1(\op[6]_i_2_n_0 ),
        .I2(op1_n[0]),
        .I3(op1_n[4]),
        .I4(op1_n[7]),
        .I5(op1_n[1]),
        .O(i___1_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h4504)) 
    i___1_carry_i_2
       (.I0(pc_wr_r2),
        .I1(\op_pos_reg_n_0_[1] ),
        .I2(i___1_carry_i_8_n_0),
        .I3(\pc_buf_reg_n_0_[1] ),
        .O(i___1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    i___1_carry_i_3
       (.I0(i___1_carry_i_9_n_0),
        .I1(\op_pos[1]_i_3_n_0 ),
        .I2(\pc_buf_reg_n_0_[0] ),
        .O(i___1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hA9A5)) 
    i___1_carry_i_4
       (.I0(\pc_buf_reg_n_0_[3] ),
        .I1(p_0_in5_in),
        .I2(pc_wr_r2),
        .I3(\pc_buf_reg_n_0_[2] ),
        .O(i___1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hEFAEBAFB10514504)) 
    i___1_carry_i_5
       (.I0(pc_wr_r2),
        .I1(\op_pos_reg_n_0_[1] ),
        .I2(i___1_carry_i_8_n_0),
        .I3(\pc_buf_reg_n_0_[1] ),
        .I4(p_0_in5_in),
        .I5(\pc_buf_reg_n_0_[2] ),
        .O(i___1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h5757A857A8A857A8)) 
    i___1_carry_i_6
       (.I0(i___1_carry_i_9_n_0),
        .I1(\op_pos[1]_i_3_n_0 ),
        .I2(\pc_buf_reg_n_0_[0] ),
        .I3(\op_pos[1]_i_2_n_0 ),
        .I4(pc_wr_r2),
        .I5(\pc_buf_reg_n_0_[1] ),
        .O(i___1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___1_carry_i_7
       (.I0(\pc_buf_reg_n_0_[0] ),
        .I1(\op_pos[0]_i_2_n_0 ),
        .O(i___1_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h2280AAAA)) 
    i___1_carry_i_8
       (.I0(i___1_carry_i_10_n_0),
        .I1(op1_n[1]),
        .I2(op1_n[0]),
        .I3(op1_n[2]),
        .I4(i___1_carry_i_11_n_0),
        .O(i___1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h45)) 
    i___1_carry_i_9
       (.I0(pc_wr_r2),
        .I1(\op_pos_reg_n_0_[0] ),
        .I2(\op_pos[2]_i_4_n_0 ),
        .O(i___1_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h807FFFFF807F0000)) 
    \iadr_t[10]_i_3 
       (.I0(\pc_reg[9]_0 ),
        .I1(\iadr_t_reg[13]_0 ),
        .I2(\pc_reg[8]_0 ),
        .I3(\iadr_t[13]_i_9_n_0 ),
        .I4(\iadr_t[10]_i_2 ),
        .I5(\iadr_t[10]_i_2_0 ),
        .O(\pc_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h20DFFFFF20DF0000)) 
    \iadr_t[11]_i_3 
       (.I0(\iadr_t[13]_i_9_n_0 ),
        .I1(\iadr_t[11]_i_2 ),
        .I2(\pc_reg[9]_0 ),
        .I3(\iadr_t[13]_i_7_n_0 ),
        .I4(\iadr_t[10]_i_2 ),
        .I5(\iadr_t[11]_i_2_0 ),
        .O(\pc_reg[10]_1 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \iadr_t[12]_i_3 
       (.I0(\iadr_t[13]_i_9_n_0 ),
        .I1(\pc_reg[8]_0 ),
        .I2(\iadr_t_reg[13]_0 ),
        .I3(\pc_reg[9]_0 ),
        .I4(\iadr_t[13]_i_7_n_0 ),
        .O(\pc_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[13]_i_10 
       (.I0(\pc_reg[15]_0 [10]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [4]),
        .O(\pc_reg[12]_1 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \iadr_t[13]_i_2 
       (.I0(\iadr_t[13]_i_7_n_0 ),
        .I1(\pc_reg[9]_0 ),
        .I2(\iadr_t_reg[13]_0 ),
        .I3(\pc_reg[8]_0 ),
        .I4(\iadr_t[13]_i_9_n_0 ),
        .I5(\pc_reg[12]_1 ),
        .O(\pc_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[13]_i_3 
       (.I0(\pc_reg[15]_0 [11]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [5]),
        .O(\pc_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[13]_i_7 
       (.I0(\pc_reg[15]_0 [9]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [3]),
        .O(\iadr_t[13]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[13]_i_8 
       (.I0(\pc_reg[15]_0 [7]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [1]),
        .O(\pc_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[13]_i_9 
       (.I0(\pc_reg[15]_0 [8]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [2]),
        .O(\iadr_t[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[15]_i_5 
       (.I0(\pc_reg[15]_0 [13]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [7]),
        .O(\pc_reg[15]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[15]_i_6 
       (.I0(\pc_reg[15]_0 [12]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [6]),
        .O(\pc_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \iadr_t[15]_i_7 
       (.I0(\pc_reg[12]_1 ),
        .I1(\iadr_t[13]_i_9_n_0 ),
        .I2(\iadr_t[11]_i_2 ),
        .I3(\pc_reg[9]_0 ),
        .I4(\iadr_t[13]_i_7_n_0 ),
        .I5(\pc_reg[13]_0 ),
        .O(\pc_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iadr_t[8]_i_2 
       (.I0(pc[8]),
        .I1(src_sel3),
        .I2(\iadr_t[15]_i_3 [0]),
        .O(\pc_reg[8]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[0]),
        .Q(iadr_t[0]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [2]),
        .Q(iadr_t[10]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [3]),
        .Q(iadr_t[11]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[12] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [4]),
        .Q(iadr_t[12]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[13] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [5]),
        .Q(iadr_t[13]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[14] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [6]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[15] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [7]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[1]),
        .Q(iadr_t[1]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[2]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[3]),
        .Q(iadr_t[3]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[4]),
        .Q(iadr_t[4]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[5]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[6]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(des_acc[7]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [0]),
        .Q(iadr_t[8]));
  FDCE #(
    .INIT(1'b0)) 
    \iadr_t_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(\iadr_t_reg[15]_1 ),
        .CLR(rst_IBUF),
        .D(\iadr_t_reg[15]_0 [1]),
        .Q(Q[4]));
  LUT6 #(
    .INIT(64'hAAAAAA80AAAA0000)) 
    \idat_cur[31]_i_1 
       (.I0(ack_o),
        .I1(\op_pos_reg_n_0_[0] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(p_0_in5_in),
        .I4(pc_wr_r2),
        .I5(\op_pos_reg[1]_0 ),
        .O(idat_cur0));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [0]),
        .Q(\idat_cur_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [10]),
        .Q(data4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [11]),
        .Q(data4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[12] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [12]),
        .Q(data4[4]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[13] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [13]),
        .Q(data4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[14] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [14]),
        .Q(data4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[15] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [15]),
        .Q(data4[7]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[16] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [16]),
        .Q(data5[0]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[17] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [17]),
        .Q(data5[1]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[18] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [18]),
        .Q(data5[2]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[19] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [19]),
        .Q(data5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [1]),
        .Q(\idat_cur_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[20] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [20]),
        .Q(data5[4]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[21] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [21]),
        .Q(data5[5]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[22] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [22]),
        .Q(data5[6]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[23] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [23]),
        .Q(data5[7]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[24] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [24]),
        .Q(\idat_cur_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[25] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [25]),
        .Q(\idat_cur_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[26] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [26]),
        .Q(\idat_cur_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[27] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [27]),
        .Q(\idat_cur_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[28] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [28]),
        .Q(\idat_cur_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[29] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [29]),
        .Q(\idat_cur_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [2]),
        .Q(\idat_cur_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[30] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [30]),
        .Q(\idat_cur_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[31] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [31]),
        .Q(\idat_cur_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [3]),
        .Q(\idat_cur_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [4]),
        .Q(\idat_cur_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [5]),
        .Q(\idat_cur_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [6]),
        .Q(\idat_cur_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [7]),
        .Q(\idat_cur_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [8]),
        .Q(data4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_cur_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg[31]_0 [9]),
        .Q(data4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[0] ),
        .Q(\idat_old_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[2]),
        .Q(data0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[3]),
        .Q(data0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[12] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[4]),
        .Q(data0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[13] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[5]),
        .Q(data0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[14] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[6]),
        .Q(data0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[15] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[7]),
        .Q(data0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[16] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[0]),
        .Q(data1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[17] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[1]),
        .Q(data1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[18] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[2]),
        .Q(data1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[19] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[3]),
        .Q(data1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[1] ),
        .Q(\idat_old_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[20] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[4]),
        .Q(data1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[21] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[5]),
        .Q(data1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[22] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[6]),
        .Q(data1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[23] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data5[7]),
        .Q(data1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[24] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[24] ),
        .Q(data2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[25] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[25] ),
        .Q(data2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[26] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[26] ),
        .Q(data2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[27] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[27] ),
        .Q(data2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[28] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[28] ),
        .Q(data2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[29] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[29] ),
        .Q(data2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[2] ),
        .Q(\idat_old_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[30] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[30] ),
        .Q(data2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[31] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[31] ),
        .Q(data2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[3] ),
        .Q(\idat_old_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[4] ),
        .Q(\idat_old_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[5] ),
        .Q(\idat_old_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[6] ),
        .Q(\idat_old_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(\idat_cur_reg_n_0_[7] ),
        .Q(\idat_old_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[0]),
        .Q(data0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \idat_old_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(idat_cur0),
        .CLR(rst_IBUF),
        .D(data4[1]),
        .Q(data0[1]));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \ie[0]_i_1 
       (.I0(des1[0]),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_3_n_0 ),
        .I3(\ie[7]_i_2_n_0 ),
        .I4(\wr_addr_reg[1]_1 ),
        .I5(ie[0]),
        .O(\ie_reg[0] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ie[1]_i_1 
       (.I0(\scon_reg[1]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_3_n_0 ),
        .I3(\ie[7]_i_2_n_0 ),
        .I4(\data[1]_i_2_n_0 ),
        .I5(ie[1]),
        .O(\ie_reg[1] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ie[2]_i_1 
       (.I0(\t2con_reg[2]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_3_n_0 ),
        .I3(\ie[3]_i_2_n_0 ),
        .I4(\ie[2]_i_2_n_0 ),
        .I5(ie[2]),
        .O(\ie_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \ie[2]_i_2 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(\p0_out_reg[7]_0 ),
        .I4(\ram_wr_sel_reg[1] [2]),
        .O(\ie[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \ie[3]_i_1 
       (.I0(des1[1]),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_3_n_0 ),
        .I3(\ie[3]_i_2_n_0 ),
        .I4(\ie[3]_i_3_n_0 ),
        .I5(ie[3]),
        .O(\ie_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \ie[3]_i_2 
       (.I0(wr_addr[3]),
        .I1(wr_addr[4]),
        .I2(wr_addr[6]),
        .I3(\ram_wr_sel_reg[1] [3]),
        .I4(wr_bit_r),
        .O(\ie[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \ie[3]_i_3 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(\p0_out_reg[7]_0 ),
        .I4(\ram_wr_sel_reg[1] [2]),
        .O(\ie[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ie[4]_i_1 
       (.I0(\t2con_reg[4]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_3_n_0 ),
        .I3(\ie[7]_i_2_n_0 ),
        .I4(\data[4]_i_2_n_0 ),
        .I5(ie[4]),
        .O(\ie_reg[4] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ie[5]_i_1 
       (.I0(\t2con_reg[5]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_3_n_0 ),
        .I3(\ie[7]_i_2_n_0 ),
        .I4(\wr_addr_reg[0]_7 ),
        .I5(ie[5]),
        .O(\ie_reg[5] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ie[6]_i_1 
       (.I0(\t2con_reg[6]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_3_n_0 ),
        .I3(\ie[7]_i_2_n_0 ),
        .I4(\wr_addr_reg[1]_3 ),
        .I5(ie[6]),
        .O(\ie_reg[6] ));
  LUT6 #(
    .INIT(64'h5555FCFF55550C00)) 
    \ie[7]_i_1 
       (.I0(\t2con_reg[7]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ie[7]_i_2_n_0 ),
        .I3(\wr_addr_reg[1]_0 ),
        .I4(\ie[7]_i_3_n_0 ),
        .I5(ie[7]),
        .O(\ie_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    \ie[7]_i_2 
       (.I0(\p2_out_reg[6]_0 ),
        .I1(wr_bit_r),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[6]),
        .I4(wr_addr[4]),
        .I5(wr_addr[3]),
        .O(\ie[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \ie[7]_i_3 
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(wr_addr[2]),
        .I4(\tmod_reg[0] ),
        .I5(\tcon_s[3]_i_4_n_0 ),
        .O(\ie[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    imem_wait_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(imem_wait_reg_1),
        .Q(imem_wait_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    int_ack_buff_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(int_ack_t_reg_0),
        .Q(int_ack_buff));
  LUT2 #(
    .INIT(4'h2)) 
    int_ack_i_1
       (.I0(int_ack_buff),
        .I1(int_ack_t_reg_0),
        .O(int_ack0));
  FDCE #(
    .INIT(1'b0)) 
    int_ack_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(int_ack0),
        .Q(int_ack));
  LUT5 #(
    .INIT(32'hEFFFAAAA)) 
    int_ack_t_i_1
       (.I0(\int_vec_buff_reg[5]_0 ),
        .I1(pc_wr_r2),
        .I2(ack_o),
        .I3(\op_pos_reg[1]_0 ),
        .I4(int_ack_t_reg_0),
        .O(int_ack_t_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    int_ack_t_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(int_ack_t_i_1_n_0),
        .Q(int_ack_t_reg_0));
  LUT2 #(
    .INIT(4'h7)) 
    \int_vec[5]_i_1 
       (.I0(reti),
        .I1(\int_vec_reg[1] ),
        .O(reti_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_buff_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_buff_reg[5]_0 ),
        .CLR(rst_IBUF),
        .D(\int_vec_buff_reg[5]_1 [0]),
        .Q(int_vec_buff[1]));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_buff_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_buff_reg[5]_0 ),
        .CLR(rst_IBUF),
        .D(\int_vec_buff_reg[5]_1 [1]),
        .Q(int_vec_buff[3]));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_buff_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_buff_reg[5]_0 ),
        .CLR(rst_IBUF),
        .D(\int_vec_buff_reg[5]_1 [2]),
        .Q(int_vec_buff[4]));
  FDCE #(
    .INIT(1'b0)) 
    \int_vec_buff_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\int_vec_buff_reg[5]_0 ),
        .CLR(rst_IBUF),
        .D(\int_vec_buff_reg[5]_1 [3]),
        .Q(int_vec_buff[5]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[0]_inst_i_1 
       (.I0(iadr_t[8]),
        .I1(E),
        .I2(pc_out[8]),
        .O(internal_addr_OBUF[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[0]_inst_i_2 
       (.CI(\internal_addr_OBUF[0]_inst_i_3_n_0 ),
        .CO({\internal_addr_OBUF[0]_inst_i_2_n_0 ,\internal_addr_OBUF[0]_inst_i_2_n_1 ,\internal_addr_OBUF[0]_inst_i_2_n_2 ,\internal_addr_OBUF[0]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pc_out[8],O}),
        .S({\pc_buf_reg_n_0_[8] ,\pc_buf_reg_n_0_[7] ,\pc_buf_reg_n_0_[6] ,\pc_buf_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[0]_inst_i_3 
       (.CI(1'b0),
        .CO({\internal_addr_OBUF[0]_inst_i_3_n_0 ,\internal_addr_OBUF[0]_inst_i_3_n_1 ,\internal_addr_OBUF[0]_inst_i_3_n_2 ,\internal_addr_OBUF[0]_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pc_buf_reg_n_0_[2] ,1'b0}),
        .O({pc_out[4:3],\pc_buf_reg[2]_0 ,pc_out[1]}),
        .S({\pc_buf_reg_n_0_[4] ,\pc_buf_reg_n_0_[3] ,\internal_addr_OBUF[0]_inst_i_4_n_0 ,\pc_buf_reg_n_0_[1] }));
  LUT6 #(
    .INIT(64'h5555556A5555AAAA)) 
    \internal_addr_OBUF[0]_inst_i_4 
       (.I0(\pc_buf_reg_n_0_[2] ),
        .I1(\op_pos_reg_n_0_[0] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(p_0_in5_in),
        .I4(pc_wr_r2),
        .I5(\op_pos_reg[1]_0 ),
        .O(\internal_addr_OBUF[0]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[1]_inst_i_1 
       (.I0(Q[4]),
        .I1(E),
        .I2(\pc_buf_reg[15]_0 [0]),
        .O(internal_addr_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[2]_inst_i_1 
       (.I0(iadr_t[10]),
        .I1(E),
        .I2(pc_out[10]),
        .O(internal_addr_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[3]_inst_i_1 
       (.I0(iadr_t[11]),
        .I1(E),
        .I2(pc_out[11]),
        .O(internal_addr_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[4]_inst_i_1 
       (.I0(iadr_t[12]),
        .I1(E),
        .I2(pc_out[12]),
        .O(internal_addr_OBUF[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[4]_inst_i_2 
       (.CI(\internal_addr_OBUF[0]_inst_i_2_n_0 ),
        .CO({\internal_addr_OBUF[4]_inst_i_2_n_0 ,\internal_addr_OBUF[4]_inst_i_2_n_1 ,\internal_addr_OBUF[4]_inst_i_2_n_2 ,\internal_addr_OBUF[4]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({pc_out[12:10],\pc_buf_reg[15]_0 [0]}),
        .S({\pc_buf_reg_n_0_[12] ,\pc_buf_reg_n_0_[11] ,\pc_buf_reg_n_0_[10] ,\pc_buf_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[5]_inst_i_1 
       (.I0(iadr_t[13]),
        .I1(E),
        .I2(pc_out[13]),
        .O(internal_addr_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[6]_inst_i_1 
       (.I0(Q[5]),
        .I1(E),
        .I2(\pc_buf_reg[15]_0 [1]),
        .O(internal_addr_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internal_addr_OBUF[7]_inst_i_1 
       (.I0(Q[6]),
        .I1(E),
        .I2(\pc_buf_reg[15]_0 [2]),
        .O(internal_addr_OBUF[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \internal_addr_OBUF[7]_inst_i_2 
       (.CI(\internal_addr_OBUF[4]_inst_i_2_n_0 ),
        .CO({\NLW_internal_addr_OBUF[7]_inst_i_2_CO_UNCONNECTED [3:2],\internal_addr_OBUF[7]_inst_i_2_n_2 ,\internal_addr_OBUF[7]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_internal_addr_OBUF[7]_inst_i_2_O_UNCONNECTED [3],\pc_buf_reg[15]_0 [2:1],pc_out[13]}),
        .S({1'b0,\pc_buf_reg_n_0_[15] ,\pc_buf_reg_n_0_[14] ,\pc_buf_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \ip[0]_i_1 
       (.I0(des1[0]),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[1]_1 ),
        .I5(ip[0]),
        .O(\ip_reg[0] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ip[1]_i_1 
       (.I0(\scon_reg[1]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\data[1]_i_2_n_0 ),
        .I5(ip[1]),
        .O(\ip_reg[1] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ip[2]_i_1 
       (.I0(\t2con_reg[2]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\data_lo[7]_i_2_n_0 ),
        .I5(ip[2]),
        .O(\ip_reg[2] ));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \ip[3]_i_1 
       (.I0(des1[1]),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[2]_0 ),
        .I5(ip[3]),
        .O(\ip_reg[3] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ip[4]_i_1 
       (.I0(\t2con_reg[4]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\data[4]_i_2_n_0 ),
        .I5(ip[4]),
        .O(\ip_reg[4] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ip[5]_i_1 
       (.I0(\t2con_reg[5]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[0]_7 ),
        .I5(ip[5]),
        .O(\ip_reg[5] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ip[6]_i_1 
       (.I0(\t2con_reg[6]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[1]_3 ),
        .I5(ip[6]),
        .O(\ip_reg[6] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \ip[7]_i_1 
       (.I0(\t2con_reg[7]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ip[7]_i_2_n_0 ),
        .I3(\ip[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[1]_0 ),
        .I5(ip[7]),
        .O(\ip_reg[7] ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ip[7]_i_2 
       (.I0(\tmod_reg[0] ),
        .I1(\wr_addr_reg[1]_0 ),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(\p0_out[7]_i_6_n_0 ),
        .I4(wr_addr[3]),
        .I5(wr_addr[4]),
        .O(\ip[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \ip[7]_i_3 
       (.I0(\data_reg[3]_2 ),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_addr[6]),
        .I3(\ram_wr_sel_reg[1] [2]),
        .I4(wr_addr[4]),
        .I5(wr_addr[3]),
        .O(\ip[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    istb_t_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(istb_t_reg_2),
        .Q(E));
  LUT6 #(
    .INIT(64'hFF00FFFDFFFDFFFD)) 
    \mem_act[0]_i_1 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\mem_act[0]_i_2_n_0 ),
        .I2(\mem_act[2]_i_4_n_0 ),
        .I3(\mem_act[0]_i_3_n_0 ),
        .I4(\mem_act[0]_i_4_n_0 ),
        .I5(\wr_sfr[0]_i_5_n_0 ),
        .O(\cdata_reg[2]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_act[0]_i_2 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[2]_0 ),
        .O(\mem_act[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \mem_act[0]_i_3 
       (.I0(op1_n[7]),
        .I1(pc_wr_r2),
        .I2(imem_wait_reg_0),
        .I3(dmem_wait_reg_n_0),
        .I4(\op_pos_reg[1]_0 ),
        .I5(\mem_act[2]_i_3_n_0 ),
        .O(\mem_act[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \mem_act[0]_i_4 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cdata_reg[0]_0 ),
        .O(\mem_act[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFF7FFF)) 
    \mem_act[1]_i_1 
       (.I0(\mem_act[1]_i_2_n_0 ),
        .I1(\op_pos_reg[1]_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[0]_0 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\cdata_reg[2]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mem_act[1]_i_2 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cdata_reg[2]_0 ),
        .O(\mem_act[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \mem_act[2]_i_1 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(op1_n[7]),
        .I3(\mem_act[2]_i_2_n_0 ),
        .I4(\mem_act[2]_i_3_n_0 ),
        .I5(\mem_act[2]_i_4_n_0 ),
        .O(\cdata_reg[2]_1 [2]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \mem_act[2]_i_2 
       (.I0(pc_wr_r2),
        .I1(imem_wait_reg_0),
        .I2(dmem_wait_reg_n_0),
        .I3(state1),
        .I4(p_0_in),
        .I5(\state_reg[1]_4 ),
        .O(\mem_act[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mem_act[2]_i_3 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .O(\mem_act[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_act[2]_i_4 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cdata_reg[3]_0 ),
        .O(\mem_act[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    mul_result1_carry_i_7
       (.I0(\src_sel1_reg[2]_0 ),
        .I1(\tmp_mul_reg[0] ),
        .O(\src_sel1_reg[2] ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \op2_r[0]_i_1 
       (.I0(\op2_r[0]_i_2_n_0 ),
        .I1(int_ack_t_reg_0),
        .I2(ack_o),
        .I3(\op_pos_reg[1]_0 ),
        .I4(op2_r[0]),
        .O(op2_n[0]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op2_r[0]_i_2 
       (.I0(data4[0]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data5[0]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op2_r[0]_i_3_n_0 ),
        .O(\op2_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op2_r[0]_i_3 
       (.I0(\idat_cur_reg_n_0_[0] ),
        .I1(data2[0]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[0]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[0]),
        .O(\op2_r[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \op2_r[1]_i_1 
       (.I0(\op2_r[1]_i_2_n_0 ),
        .I1(int_ack_t_reg_0),
        .I2(ack_o),
        .I3(\op_pos_reg[1]_0 ),
        .I4(op2_r[1]),
        .O(op2_n[1]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op2_r[1]_i_2 
       (.I0(data4[1]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data5[1]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op2_r[1]_i_3_n_0 ),
        .O(\op2_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op2_r[1]_i_3 
       (.I0(\idat_cur_reg_n_0_[1] ),
        .I1(data2[1]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[1]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[1]),
        .O(\op2_r[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \op2_r[2]_i_1 
       (.I0(\bit_select[2]_i_4_n_0 ),
        .O(op2_n[2]));
  LUT5 #(
    .INIT(32'h2EEE2222)) 
    \op2_r[3]_i_1 
       (.I0(op2_r[3]),
        .I1(\op_pos_reg[1]_0 ),
        .I2(int_ack_t_reg_0),
        .I3(ack_o),
        .I4(\op2_r[3]_i_2_n_0 ),
        .O(op2_n[3]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op2_r[3]_i_2 
       (.I0(data4[3]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data5[3]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op2_r[3]_i_3_n_0 ),
        .O(\op2_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op2_r[3]_i_3 
       (.I0(\idat_cur_reg_n_0_[3] ),
        .I1(data2[3]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[3]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[3]),
        .O(\op2_r[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \op2_r[4]_i_1 
       (.I0(\op2_r_reg[4] ),
        .O(op2_n[4]));
  LUT5 #(
    .INIT(32'hD111DDDD)) 
    \op2_r[4]_i_2 
       (.I0(op2_r[4]),
        .I1(\op_pos_reg[1]_0 ),
        .I2(int_ack_t_reg_0),
        .I3(ack_o),
        .I4(\op2_r[4]_i_3_n_0 ),
        .O(\op2_r_reg[4] ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op2_r[4]_i_3 
       (.I0(data4[4]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data5[4]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op2_r[4]_i_4_n_0 ),
        .O(\op2_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op2_r[4]_i_4 
       (.I0(\idat_cur_reg_n_0_[4] ),
        .I1(data2[4]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[4]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[4]),
        .O(\op2_r[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \op2_r[5]_i_1 
       (.I0(\op2_r[5]_i_2_n_0 ),
        .O(op2_n[5]));
  LUT6 #(
    .INIT(64'hFCCC5555FFFF5555)) 
    \op2_r[5]_i_2 
       (.I0(op2_r[5]),
        .I1(\op2_r[5]_i_3_n_0 ),
        .I2(ack_o),
        .I3(int_ack_t_reg_0),
        .I4(\op_pos_reg[1]_0 ),
        .I5(\op2_r[5]_i_4_n_0 ),
        .O(\op2_r[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h0400040C)) 
    \op2_r[5]_i_3 
       (.I0(data5[5]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\op_pos_reg_n_0_[0] ),
        .I4(data4[5]),
        .O(\op2_r[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hCFAA)) 
    \op2_r[5]_i_4 
       (.I0(\op2_r[5]_i_5_n_0 ),
        .I1(data5[5]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(p_0_in5_in),
        .O(\op2_r[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op2_r[5]_i_5 
       (.I0(\idat_cur_reg_n_0_[5] ),
        .I1(data2[5]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[5]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[5]),
        .O(\op2_r[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \op2_r[6]_i_1 
       (.I0(\op2_r[6]_i_2_n_0 ),
        .I1(int_ack_t_reg_0),
        .I2(ack_o),
        .I3(\op_pos_reg[1]_0 ),
        .I4(op2_r[6]),
        .O(op2_n[6]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op2_r[6]_i_2 
       (.I0(data4[6]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data5[6]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op2_r[6]_i_3_n_0 ),
        .O(\op2_r[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op2_r[6]_i_3 
       (.I0(\idat_cur_reg_n_0_[6] ),
        .I1(data2[6]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[6]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[6]),
        .O(\op2_r[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \op2_r[7]_i_1 
       (.I0(\op2_r[7]_i_2_n_0 ),
        .O(op2_n[7]));
  LUT6 #(
    .INIT(64'hFCCC5555FFFF5555)) 
    \op2_r[7]_i_2 
       (.I0(op2_r[7]),
        .I1(\op2_r[7]_i_3_n_0 ),
        .I2(ack_o),
        .I3(int_ack_t_reg_0),
        .I4(\op_pos_reg[1]_0 ),
        .I5(\op2_r[7]_i_4_n_0 ),
        .O(\op2_r[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h0400040C)) 
    \op2_r[7]_i_3 
       (.I0(data5[7]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\op_pos_reg_n_0_[0] ),
        .I4(data4[7]),
        .O(\op2_r[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hCFAA)) 
    \op2_r[7]_i_4 
       (.I0(\op2_r[7]_i_5_n_0 ),
        .I1(data5[7]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(p_0_in5_in),
        .O(\op2_r[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op2_r[7]_i_5 
       (.I0(\idat_cur_reg_n_0_[7] ),
        .I1(data2[7]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data1[7]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data0[7]),
        .O(\op2_r[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \op3_r[0]_i_1 
       (.I0(\op3_r[0]_i_2_n_0 ),
        .O(op3_n[0]));
  LUT6 #(
    .INIT(64'h03535353F3535353)) 
    \op3_r[0]_i_2 
       (.I0(\op3_r[0]_i_3_n_0 ),
        .I1(op3_r[0]),
        .I2(\op_pos_reg[1]_0 ),
        .I3(ack_o),
        .I4(int_ack_t_reg_0),
        .I5(int_vec_buff[1]),
        .O(\op3_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[0]_i_3 
       (.I0(data5[0]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[24] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[0]_i_4_n_0 ),
        .O(\op3_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[0]_i_4 
       (.I0(data4[0]),
        .I1(\idat_cur_reg_n_0_[0] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[0]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[0]),
        .O(\op3_r[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \op3_r[1]_i_1 
       (.I0(\op3_r[1]_i_2_n_0 ),
        .O(op3_n[1]));
  LUT6 #(
    .INIT(64'h03535353F3535353)) 
    \op3_r[1]_i_2 
       (.I0(\op3_r[1]_i_3_n_0 ),
        .I1(op3_r[1]),
        .I2(\op_pos_reg[1]_0 ),
        .I3(ack_o),
        .I4(int_ack_t_reg_0),
        .I5(int_vec_buff[1]),
        .O(\op3_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[1]_i_3 
       (.I0(data5[1]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[25] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[1]_i_4_n_0 ),
        .O(\op3_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[1]_i_4 
       (.I0(data4[1]),
        .I1(\idat_cur_reg_n_0_[1] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[1]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[1]),
        .O(\op3_r[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \op3_r[2]_i_1 
       (.I0(\op3_r[2]_i_2_n_0 ),
        .I1(int_ack_t_reg_0),
        .I2(ack_o),
        .I3(\op_pos_reg[1]_0 ),
        .I4(op3_r[2]),
        .O(op3_n[2]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[2]_i_2 
       (.I0(data5[2]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[26] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[2]_i_3_n_0 ),
        .O(\op3_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[2]_i_3 
       (.I0(data4[2]),
        .I1(\idat_cur_reg_n_0_[2] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[2]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[2]),
        .O(\op3_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \op3_r[3]_i_1 
       (.I0(int_vec_buff[3]),
        .I1(ack_o),
        .I2(int_ack_t_reg_0),
        .I3(\op3_r[3]_i_2_n_0 ),
        .I4(\op_pos_reg[1]_0 ),
        .I5(op3_r[3]),
        .O(op3_n[3]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[3]_i_2 
       (.I0(data5[3]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[27] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[3]_i_3_n_0 ),
        .O(\op3_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[3]_i_3 
       (.I0(data4[3]),
        .I1(\idat_cur_reg_n_0_[3] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[3]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[3]),
        .O(\op3_r[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \op3_r[4]_i_1 
       (.I0(int_vec_buff[4]),
        .I1(ack_o),
        .I2(int_ack_t_reg_0),
        .I3(\op3_r[4]_i_2_n_0 ),
        .I4(\op_pos_reg[1]_0 ),
        .I5(op3_r[4]),
        .O(op3_n[4]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[4]_i_2 
       (.I0(data5[4]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[28] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[4]_i_3_n_0 ),
        .O(\op3_r[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[4]_i_3 
       (.I0(data4[4]),
        .I1(\idat_cur_reg_n_0_[4] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[4]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[4]),
        .O(\op3_r[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF80FFFFBF800000)) 
    \op3_r[5]_i_1 
       (.I0(int_vec_buff[5]),
        .I1(ack_o),
        .I2(int_ack_t_reg_0),
        .I3(\op3_r[5]_i_2_n_0 ),
        .I4(\op_pos_reg[1]_0 ),
        .I5(op3_r[5]),
        .O(op3_n[5]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[5]_i_2 
       (.I0(data5[5]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[29] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[5]_i_3_n_0 ),
        .O(\op3_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[5]_i_3 
       (.I0(data4[5]),
        .I1(\idat_cur_reg_n_0_[5] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[5]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[5]),
        .O(\op3_r[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2EEE2222)) 
    \op3_r[6]_i_1 
       (.I0(op3_r[6]),
        .I1(\op_pos_reg[1]_0 ),
        .I2(int_ack_t_reg_0),
        .I3(ack_o),
        .I4(\op3_r[6]_i_2_n_0 ),
        .O(op3_n[6]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[6]_i_2 
       (.I0(data5[6]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[30] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[6]_i_3_n_0 ),
        .O(\op3_r[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[6]_i_3 
       (.I0(data4[6]),
        .I1(\idat_cur_reg_n_0_[6] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[6]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[6]),
        .O(\op3_r[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2EEE2222)) 
    \op3_r[7]_i_1 
       (.I0(op3_r[7]),
        .I1(\op_pos_reg[1]_0 ),
        .I2(int_ack_t_reg_0),
        .I3(ack_o),
        .I4(\op3_r[7]_i_2_n_0 ),
        .O(\op3_r_reg[7] ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op3_r[7]_i_2 
       (.I0(data5[7]),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\idat_cur_reg_n_0_[31] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op3_r[7]_i_3_n_0 ),
        .O(\op3_r[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op3_r[7]_i_3 
       (.I0(data4[7]),
        .I1(\idat_cur_reg_n_0_[7] ),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data2[7]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data1[7]),
        .O(\op3_r[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88888BBB)) 
    \op[0]_i_1 
       (.I0(cdata[0]),
        .I1(cdone),
        .I2(int_ack_t_reg_0),
        .I3(ack_o),
        .I4(\op[0]_i_2_n_0 ),
        .O(op1_n[0]));
  LUT6 #(
    .INIT(64'h00330437CCFFC4F7)) 
    \op[0]_i_2 
       (.I0(\idat_cur_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\op[0]_i_3_n_0 ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data4[0]),
        .O(\op[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op[0]_i_3 
       (.I0(data2[0]),
        .I1(data1[0]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[0]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[0] ),
        .O(\op[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00EAEA)) 
    \op[1]_i_1 
       (.I0(\op[1]_i_2_n_0 ),
        .I1(int_ack_t_reg_0),
        .I2(ack_o),
        .I3(cdata[1]),
        .I4(cdone),
        .O(op1_n[1]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op[1]_i_2 
       (.I0(\idat_cur_reg_n_0_[1] ),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data4[1]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op[1]_i_3_n_0 ),
        .O(\op[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op[1]_i_3 
       (.I0(data2[1]),
        .I1(data1[1]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[1]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[1] ),
        .O(\op[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88B8B8B8)) 
    \op[2]_i_1 
       (.I0(cdata[2]),
        .I1(cdone),
        .I2(\op[2]_i_2_n_0 ),
        .I3(int_ack_t_reg_0),
        .I4(ack_o),
        .O(op1_n[2]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op[2]_i_2 
       (.I0(\idat_cur_reg_n_0_[2] ),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data4[2]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op[2]_i_3_n_0 ),
        .O(\op[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op[2]_i_3 
       (.I0(data2[2]),
        .I1(data1[2]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[2]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[2] ),
        .O(\op[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88888BBB)) 
    \op[3]_i_1 
       (.I0(cdata[3]),
        .I1(cdone),
        .I2(int_ack_t_reg_0),
        .I3(ack_o),
        .I4(\op[3]_i_2_n_0 ),
        .O(op1_n[3]));
  LUT6 #(
    .INIT(64'h00330437CCFFC4F7)) 
    \op[3]_i_2 
       (.I0(\idat_cur_reg_n_0_[3] ),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\op[3]_i_3_n_0 ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data4[3]),
        .O(\op[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op[3]_i_3 
       (.I0(data2[3]),
        .I1(data1[3]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[3]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[3] ),
        .O(\op[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00F8F8)) 
    \op[4]_i_1 
       (.I0(int_ack_t_reg_0),
        .I1(ack_o),
        .I2(\op[4]_i_2_n_0 ),
        .I3(cdata[4]),
        .I4(cdone),
        .O(op1_n[4]));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \op[4]_i_2 
       (.I0(\idat_cur_reg_n_0_[4] ),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data4[4]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\op[4]_i_3_n_0 ),
        .O(\op[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op[4]_i_3 
       (.I0(data2[4]),
        .I1(data1[4]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[4]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[4] ),
        .O(\op[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \op[5]_i_1 
       (.I0(\op[5]_i_2_n_0 ),
        .I1(cdata[5]),
        .I2(cdone),
        .O(op1_n[5]));
  LUT6 #(
    .INIT(64'h00000000EEB822B8)) 
    \op[5]_i_2 
       (.I0(data4[5]),
        .I1(\op[5]_i_3_n_0 ),
        .I2(\op[5]_i_4_n_0 ),
        .I3(\op[5]_i_5_n_0 ),
        .I4(\idat_cur_reg_n_0_[5] ),
        .I5(reti_reg_1),
        .O(\op[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \op[5]_i_3 
       (.I0(p_0_in5_in),
        .I1(\op_pos_reg_n_0_[1] ),
        .I2(\op_pos_reg_n_0_[0] ),
        .O(\op[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op[5]_i_4 
       (.I0(data2[5]),
        .I1(data1[5]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[5]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[5] ),
        .O(\op[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op[5]_i_5 
       (.I0(p_0_in5_in),
        .I1(\op_pos_reg_n_0_[1] ),
        .O(\op[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \op[6]_i_1 
       (.I0(\op[6]_i_2_n_0 ),
        .O(op1_n[6]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \op[6]_i_2 
       (.I0(reti_i_3_n_0),
        .I1(cdata[6]),
        .I2(cdone),
        .O(\op[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF001515)) 
    \op[7]_i_2 
       (.I0(\op[7]_i_3_n_0 ),
        .I1(int_ack_t_reg_0),
        .I2(ack_o),
        .I3(cdata[7]),
        .I4(cdone),
        .O(op1_n[7]));
  LUT6 #(
    .INIT(64'h00330437CCFFC4F7)) 
    \op[7]_i_3 
       (.I0(\idat_cur_reg_n_0_[7] ),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\op[7]_i_4_n_0 ),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(data4[7]),
        .O(\op[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \op[7]_i_4 
       (.I0(data2[7]),
        .I1(data1[7]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[7]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[7] ),
        .O(\op[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBAB888888A8)) 
    \op_pos[0]_i_1 
       (.I0(\op_pos[0]_i_2_n_0 ),
        .I1(pc_wr_r2),
        .I2(state1),
        .I3(p_0_in),
        .I4(\state_reg[1]_4 ),
        .I5(\op_pos_reg_n_0_[0] ),
        .O(\op_pos[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \op_pos[0]_i_2 
       (.I0(i___1_carry_i_9_n_0),
        .I1(\op_pos[1]_i_3_n_0 ),
        .O(\op_pos[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h060F0600)) 
    \op_pos[1]_i_1 
       (.I0(\op_pos[1]_i_2_n_0 ),
        .I1(\op_pos[1]_i_3_n_0 ),
        .I2(pc_wr_r2),
        .I3(\op_pos_reg[1]_0 ),
        .I4(\op_pos_reg_n_0_[1] ),
        .O(\op_pos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \op_pos[1]_i_2 
       (.I0(\op_pos_reg_n_0_[1] ),
        .I1(i___1_carry_i_8_n_0),
        .O(\op_pos[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_pos[1]_i_3 
       (.I0(\op_pos_reg_n_0_[0] ),
        .I1(\op_pos[2]_i_4_n_0 ),
        .O(\op_pos[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFCCCCCCDC)) 
    \op_pos[2]_i_1 
       (.I0(\op_pos[2]_i_2_n_0 ),
        .I1(pc_wr_r2),
        .I2(state1),
        .I3(p_0_in),
        .I4(\state_reg[1]_4 ),
        .I5(p_0_in5_in),
        .O(\op_pos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \op_pos[2]_i_10 
       (.I0(op1_n[2]),
        .I1(op1_n[0]),
        .I2(op1_n[1]),
        .O(\op_pos[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \op_pos[2]_i_11 
       (.I0(op1_n[2]),
        .I1(op1_n[1]),
        .O(\op_pos[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h55D5DDEDFF7F7757)) 
    \op_pos[2]_i_2 
       (.I0(\op_pos[2]_i_3_n_0 ),
        .I1(\op_pos_reg_n_0_[1] ),
        .I2(\op_pos_reg_n_0_[0] ),
        .I3(\op_pos[2]_i_4_n_0 ),
        .I4(i___1_carry_i_8_n_0),
        .I5(p_0_in5_in),
        .O(\op_pos[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    \op_pos[2]_i_3 
       (.I0(pc_wr_r2),
        .I1(p_0_in5_in),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(\op_pos_reg_n_0_[0] ),
        .I4(\op_pos_reg[1]_0 ),
        .O(\op_pos[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000FE)) 
    \op_pos[2]_i_4 
       (.I0(\op_pos[2]_i_5_n_0 ),
        .I1(op1_n[1]),
        .I2(op1_n[0]),
        .I3(\op_pos[2]_i_6_n_0 ),
        .I4(\op_pos[2]_i_7_n_0 ),
        .O(\op_pos[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hE8EA5F57)) 
    \op_pos[2]_i_5 
       (.I0(op1_n[7]),
        .I1(op1_n[2]),
        .I2(op1_n[5]),
        .I3(op1_n[4]),
        .I4(\op[6]_i_2_n_0 ),
        .O(\op_pos[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF59FFFFFF59F0000)) 
    \op_pos[2]_i_6 
       (.I0(op1_n[7]),
        .I1(op1_n[5]),
        .I2(op1_n[4]),
        .I3(\op[6]_i_2_n_0 ),
        .I4(op1_n[3]),
        .I5(\op_pos[2]_i_8_n_0 ),
        .O(\op_pos[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE84CC44C48484040)) 
    \op_pos[2]_i_7 
       (.I0(op1_n[7]),
        .I1(op1_n[1]),
        .I2(\op[6]_i_2_n_0 ),
        .I3(op1_n[4]),
        .I4(op1_n[5]),
        .I5(op1_n[2]),
        .O(\op_pos[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEEEEEEE)) 
    \op_pos[2]_i_8 
       (.I0(\op_pos[2]_i_9_n_0 ),
        .I1(\op_pos[2]_i_10_n_0 ),
        .I2(op1_n[4]),
        .I3(op1_n[2]),
        .I4(\state[1]_i_9_n_0 ),
        .I5(\op[6]_i_2_n_0 ),
        .O(\op_pos[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8480008000800080)) 
    \op_pos[2]_i_9 
       (.I0(op1_n[7]),
        .I1(\op_pos[2]_i_11_n_0 ),
        .I2(\op[6]_i_2_n_0 ),
        .I3(op1_n[4]),
        .I4(op1_n[0]),
        .I5(op1_n[5]),
        .O(\op_pos[2]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \op_pos_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\op_pos[0]_i_1_n_0 ),
        .Q(\op_pos_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_pos_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\op_pos[1]_i_1_n_0 ),
        .Q(\op_pos_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \op_pos_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\op_pos[2]_i_1_n_0 ),
        .Q(p_0_in5_in));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \p0_out[0]_i_1 
       (.I0(\p0_out_reg[0]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p0_out[0]_i_3_n_0 ),
        .I3(wr_addr[4]),
        .I4(\p0_out[0]_i_4_n_0 ),
        .I5(p0_out[0]),
        .O(\p0_out_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \p0_out[0]_i_3 
       (.I0(wr_addr[3]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\p0_out[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \p0_out[0]_i_4 
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_addr[6]),
        .O(\p0_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \p0_out[1]_i_1 
       (.I0(\p0_out_reg[1]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\data[1]_i_2_n_0 ),
        .I3(\p0_out[7]_i_4_n_0 ),
        .I4(\p0_out[7]_i_5_n_0 ),
        .I5(p0_out[1]),
        .O(\p0_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \p0_out[2]_i_1 
       (.I0(\p0_out_reg[2]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p0_out[2]_i_3_n_0 ),
        .I3(\p0_out[2]_i_4_n_0 ),
        .I4(\p0_out[7]_i_5_n_0 ),
        .I5(p0_out[2]),
        .O(\p0_out_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \p0_out[2]_i_3 
       (.I0(wr_bit_r),
        .I1(wr_addr[4]),
        .I2(wr_addr[3]),
        .I3(wr_addr[6]),
        .I4(\ram_wr_sel_reg[1] [3]),
        .O(\p0_out[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \p0_out[2]_i_4 
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\p0_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \p0_out[3]_i_1 
       (.I0(\p0_out_reg[3]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\wr_addr_reg[2]_0 ),
        .I3(\p0_out[7]_i_4_n_0 ),
        .I4(\p0_out[7]_i_5_n_0 ),
        .I5(p0_out[3]),
        .O(\p0_out_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \p0_out[4]_i_1 
       (.I0(\p0_out_reg[4]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\data[4]_i_2_n_0 ),
        .I3(\p0_out[7]_i_4_n_0 ),
        .I4(\p0_out[7]_i_5_n_0 ),
        .I5(p0_out[4]),
        .O(\p0_out_reg[4] ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \p0_out[5]_i_1 
       (.I0(\p0_out_reg[5]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\wr_addr_reg[0]_7 ),
        .I3(\p0_out[7]_i_4_n_0 ),
        .I4(\p0_out[7]_i_5_n_0 ),
        .I5(p0_out[5]),
        .O(\p0_out_reg[5] ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \p0_out[6]_i_1 
       (.I0(\p0_out_reg[6]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\wr_addr_reg[1]_3 ),
        .I3(\p0_out[7]_i_4_n_0 ),
        .I4(\p0_out[7]_i_5_n_0 ),
        .I5(p0_out[6]),
        .O(\p0_out_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \p0_out[6]_i_3 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .O(\wr_addr_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \p0_out[7]_i_1 
       (.I0(\p0_out_reg[7]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\wr_addr_reg[1]_0 ),
        .I3(\p0_out[7]_i_4_n_0 ),
        .I4(\p0_out[7]_i_5_n_0 ),
        .I5(p0_out[7]),
        .O(\p0_out_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \p0_out[7]_i_3 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .O(\wr_addr_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \p0_out[7]_i_4 
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_addr[6]),
        .I3(wr_addr[3]),
        .I4(wr_addr[4]),
        .I5(wr_bit_r),
        .O(\p0_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \p0_out[7]_i_5 
       (.I0(\wr_addr_reg[1]_1 ),
        .I1(wr_bit_r),
        .I2(\p0_out[7]_i_6_n_0 ),
        .I3(wr_addr[3]),
        .I4(wr_addr[4]),
        .I5(\ram_wr_sel_reg[1] [2]),
        .O(\p0_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \p0_out[7]_i_6 
       (.I0(wr_addr[6]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .O(\p0_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \p1_out[0]_i_1 
       (.I0(\p0_out_reg[0]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p0_out[0]_i_4_n_0 ),
        .I3(wr_addr[4]),
        .I4(\p0_out[0]_i_3_n_0 ),
        .I5(p1_out[0]),
        .O(\p1_out_reg[0] ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \p1_out[1]_i_1 
       (.I0(\p0_out_reg[1]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p1_out[7]_i_2_n_0 ),
        .I3(\p1_out[7]_i_3_n_0 ),
        .I4(\data[1]_i_2_n_0 ),
        .I5(p1_out[1]),
        .O(\p1_out_reg[1] ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \p1_out[2]_i_1 
       (.I0(\p0_out_reg[2]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p1_out[7]_i_2_n_0 ),
        .I3(\p1_out[7]_i_3_n_0 ),
        .I4(\data_lo[7]_i_2_n_0 ),
        .I5(p1_out[2]),
        .O(\p1_out_reg[2] ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \p1_out[3]_i_1 
       (.I0(\p0_out_reg[3]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p1_out[7]_i_2_n_0 ),
        .I3(\p1_out[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[2]_0 ),
        .I5(p1_out[3]),
        .O(\p1_out_reg[3] ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \p1_out[4]_i_1 
       (.I0(\p0_out_reg[4]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p1_out[7]_i_2_n_0 ),
        .I3(\p1_out[7]_i_3_n_0 ),
        .I4(\data[4]_i_2_n_0 ),
        .I5(p1_out[4]),
        .O(\p1_out_reg[4] ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \p1_out[5]_i_1 
       (.I0(\p0_out_reg[5]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p1_out[7]_i_2_n_0 ),
        .I3(\p1_out[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[0]_7 ),
        .I5(p1_out[5]),
        .O(\p1_out_reg[5] ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \p1_out[6]_i_1 
       (.I0(\p0_out_reg[6]_0 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p1_out[7]_i_2_n_0 ),
        .I3(\p1_out[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[1]_3 ),
        .I5(p1_out[6]),
        .O(\p1_out_reg[6] ));
  LUT6 #(
    .INIT(64'hBFBBBFBF80888080)) 
    \p1_out[7]_i_1 
       (.I0(\p0_out_reg[7]_1 ),
        .I1(\p0_out_reg[7]_0 ),
        .I2(\p1_out[7]_i_2_n_0 ),
        .I3(\p1_out[7]_i_3_n_0 ),
        .I4(\wr_addr_reg[1]_0 ),
        .I5(p1_out[7]),
        .O(\p1_out_reg[7] ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \p1_out[7]_i_2 
       (.I0(\wr_addr_reg[1]_1 ),
        .I1(wr_addr[3]),
        .I2(wr_bit_r),
        .I3(wr_addr[4]),
        .I4(\p0_out[0]_i_4_n_0 ),
        .O(\p1_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \p1_out[7]_i_3 
       (.I0(wr_addr[6]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(wr_addr[4]),
        .I4(wr_addr[3]),
        .I5(wr_bit_r),
        .O(\p1_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBABBBBB88A88888)) 
    \p2_out[0]_i_1 
       (.I0(\p0_out_reg[0]_1 ),
        .I1(\p2_out[6]_i_2_n_0 ),
        .I2(\wr_addr_reg[1]_1 ),
        .I3(\p2_out_reg[6]_0 ),
        .I4(\p0_out[2]_i_3_n_0 ),
        .I5(\p2_out_reg[0]_0 ),
        .O(\p2_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \p2_out[0]_i_2 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .O(\wr_addr_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hBBABBBBB88A88888)) 
    \p2_out[1]_i_1 
       (.I0(\p0_out_reg[1]_1 ),
        .I1(\p2_out[6]_i_2_n_0 ),
        .I2(\data[1]_i_2_n_0 ),
        .I3(\p2_out_reg[6]_0 ),
        .I4(\p0_out[2]_i_3_n_0 ),
        .I5(\p2_out_reg[1]_0 ),
        .O(\p2_out_reg[1] ));
  LUT6 #(
    .INIT(64'hBBABBBBB88A88888)) 
    \p2_out[2]_i_1 
       (.I0(\p0_out_reg[2]_0 ),
        .I1(\p2_out[6]_i_2_n_0 ),
        .I2(\data_lo[7]_i_2_n_0 ),
        .I3(\p2_out_reg[6]_0 ),
        .I4(\p0_out[2]_i_3_n_0 ),
        .I5(\p2_out_reg[2]_0 ),
        .O(\p2_out_reg[2] ));
  LUT6 #(
    .INIT(64'hBBABBBBB88A88888)) 
    \p2_out[3]_i_1 
       (.I0(\p0_out_reg[3]_1 ),
        .I1(\p2_out[6]_i_2_n_0 ),
        .I2(\wr_addr_reg[2]_0 ),
        .I3(\p2_out_reg[6]_0 ),
        .I4(\p0_out[2]_i_3_n_0 ),
        .I5(\p2_out_reg[3]_0 ),
        .O(\p2_out_reg[3] ));
  LUT6 #(
    .INIT(64'hBBABBBBB88A88888)) 
    \p2_out[4]_i_1 
       (.I0(\p0_out_reg[4]_0 ),
        .I1(\p2_out[6]_i_2_n_0 ),
        .I2(\data[4]_i_2_n_0 ),
        .I3(\p2_out_reg[6]_0 ),
        .I4(\p0_out[2]_i_3_n_0 ),
        .I5(\p2_out_reg[4]_0 ),
        .O(\p2_out_reg[4] ));
  LUT6 #(
    .INIT(64'hBBABBBBB88A88888)) 
    \p2_out[5]_i_1 
       (.I0(\p0_out_reg[5]_0 ),
        .I1(\p2_out[6]_i_2_n_0 ),
        .I2(\wr_addr_reg[0]_7 ),
        .I3(\p2_out_reg[6]_0 ),
        .I4(\p0_out[2]_i_3_n_0 ),
        .I5(\p2_out_reg[5]_0 ),
        .O(\p2_out_reg[5] ));
  LUT6 #(
    .INIT(64'hBBABBBBB88A88888)) 
    \p2_out[6]_i_1 
       (.I0(\p0_out_reg[6]_0 ),
        .I1(\p2_out[6]_i_2_n_0 ),
        .I2(\wr_addr_reg[1]_3 ),
        .I3(\p2_out_reg[6]_0 ),
        .I4(\p0_out[2]_i_3_n_0 ),
        .I5(\p2_out_reg[6]_1 ),
        .O(\p2_out_reg[6] ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \p2_out[6]_i_2 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(\p2_out[6]_i_4_n_0 ),
        .I2(wr_addr[3]),
        .I3(wr_addr[4]),
        .I4(wr_bit_r),
        .I5(\wr_addr_reg[1]_1 ),
        .O(\p2_out[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \p2_out[6]_i_4 
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_addr[6]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .O(\p2_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3F77FFFF)) 
    \p2_out[7]_i_2 
       (.I0(\wr_addr_reg[1]_1 ),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(\wr_addr_reg[1]_0 ),
        .I3(wr_bit_r),
        .I4(\p2_out[7]_i_3_n_0 ),
        .I5(\p0_out[7]_i_6_n_0 ),
        .O(wr_bit_r_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \p2_out[7]_i_3 
       (.I0(wr_addr[4]),
        .I1(wr_addr[3]),
        .O(\p2_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \p3_out[0]_i_1 
       (.I0(\p0_out_reg[0]_1 ),
        .I1(wr_bit_r_reg_5),
        .I2(\p3_out[6]_i_2_n_0 ),
        .I3(\wr_addr_reg[1]_1 ),
        .I4(\p2_out_reg[6]_0 ),
        .I5(\p3_out_reg[0]_0 ),
        .O(\p3_out_reg[0] ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \p3_out[1]_i_1 
       (.I0(\p0_out_reg[1]_1 ),
        .I1(wr_bit_r_reg_5),
        .I2(\p3_out[6]_i_2_n_0 ),
        .I3(\data[1]_i_2_n_0 ),
        .I4(\p2_out_reg[6]_0 ),
        .I5(\p3_out_reg[1]_0 ),
        .O(\p3_out_reg[1] ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \p3_out[2]_i_1 
       (.I0(\p0_out_reg[2]_0 ),
        .I1(wr_bit_r_reg_5),
        .I2(\p3_out[6]_i_2_n_0 ),
        .I3(\data_lo[7]_i_2_n_0 ),
        .I4(\p2_out_reg[6]_0 ),
        .I5(\p3_out_reg[2]_0 ),
        .O(\p3_out_reg[2] ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \p3_out[3]_i_1 
       (.I0(\p0_out_reg[3]_1 ),
        .I1(wr_bit_r_reg_5),
        .I2(\p3_out[6]_i_2_n_0 ),
        .I3(\wr_addr_reg[2]_0 ),
        .I4(\p2_out_reg[6]_0 ),
        .I5(\p3_out_reg[3]_0 ),
        .O(\p3_out_reg[3] ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \p3_out[4]_i_1 
       (.I0(\p0_out_reg[4]_0 ),
        .I1(wr_bit_r_reg_5),
        .I2(\p3_out[6]_i_2_n_0 ),
        .I3(\data[4]_i_2_n_0 ),
        .I4(\p2_out_reg[6]_0 ),
        .I5(\p3_out_reg[4]_0 ),
        .O(\p3_out_reg[4] ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \p3_out[5]_i_1 
       (.I0(\p0_out_reg[5]_0 ),
        .I1(wr_bit_r_reg_5),
        .I2(\p3_out[6]_i_2_n_0 ),
        .I3(\wr_addr_reg[0]_7 ),
        .I4(\p2_out_reg[6]_0 ),
        .I5(\p3_out_reg[5]_0 ),
        .O(\p3_out_reg[5] ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \p3_out[6]_i_1 
       (.I0(\p0_out_reg[6]_0 ),
        .I1(wr_bit_r_reg_5),
        .I2(\p3_out[6]_i_2_n_0 ),
        .I3(\wr_addr_reg[1]_3 ),
        .I4(\p2_out_reg[6]_0 ),
        .I5(\p3_out_reg[6]_1 ),
        .O(\p3_out_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \p3_out[6]_i_2 
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_addr[6]),
        .I2(wr_addr[4]),
        .I3(wr_addr[3]),
        .I4(wr_bit_r),
        .O(\p3_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \p3_out[7]_i_2 
       (.I0(\p0_out_reg[7]_0 ),
        .I1(\p0_out[7]_i_6_n_0 ),
        .I2(\p3_out[7]_i_4_n_0 ),
        .I3(wr_addr[3]),
        .I4(wr_bit_r),
        .I5(wr_addr[4]),
        .O(wr_bit_r_reg_5));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \p3_out[7]_i_3 
       (.I0(wr_addr[4]),
        .I1(wr_addr[3]),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[6]),
        .I4(\ram_wr_sel_reg[1] [2]),
        .I5(\wr_addr_reg[1]_0 ),
        .O(\p0_out[7]_i_3_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \p3_out[7]_i_4 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .O(\p3_out[7]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc0_inferred__0/i___1_carry 
       (.CI(1'b0),
        .CO({\pc0_inferred__0/i___1_carry_n_0 ,\pc0_inferred__0/i___1_carry_n_1 ,\pc0_inferred__0/i___1_carry_n_2 ,\pc0_inferred__0/i___1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___1_carry_i_1_n_0,i___1_carry_i_2_n_0,i___1_carry_i_3_n_0,1'b0}),
        .O({\pc0_inferred__0/i___1_carry_n_4 ,\pc0_inferred__0/i___1_carry_n_5 ,\pc0_inferred__0/i___1_carry_n_6 ,\pc0_inferred__0/i___1_carry_n_7 }),
        .S({i___1_carry_i_4_n_0,i___1_carry_i_5_n_0,i___1_carry_i_6_n_0,i___1_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc0_inferred__0/i___1_carry__0 
       (.CI(\pc0_inferred__0/i___1_carry_n_0 ),
        .CO({\pc0_inferred__0/i___1_carry__0_n_0 ,\pc0_inferred__0/i___1_carry__0_n_1 ,\pc0_inferred__0/i___1_carry__0_n_2 ,\pc0_inferred__0/i___1_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\pc_buf_reg_n_0_[6] ,\pc_buf_reg_n_0_[5] ,\pc_buf_reg_n_0_[4] ,i___1_carry__0_i_1_n_0}),
        .O({\pc0_inferred__0/i___1_carry__0_n_4 ,\pc0_inferred__0/i___1_carry__0_n_5 ,\pc0_inferred__0/i___1_carry__0_n_6 ,\pc0_inferred__0/i___1_carry__0_n_7 }),
        .S({i___1_carry__0_i_2_n_0,i___1_carry__0_i_3_n_0,i___1_carry__0_i_4_n_0,i___1_carry__0_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc0_inferred__0/i___1_carry__1 
       (.CI(\pc0_inferred__0/i___1_carry__0_n_0 ),
        .CO({\pc0_inferred__0/i___1_carry__1_n_0 ,\pc0_inferred__0/i___1_carry__1_n_1 ,\pc0_inferred__0/i___1_carry__1_n_2 ,\pc0_inferred__0/i___1_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pc_buf_reg_n_0_[10] ,\pc_buf_reg_n_0_[9] ,\pc_buf_reg_n_0_[8] ,\pc_buf_reg_n_0_[7] }),
        .O({\pc0_inferred__0/i___1_carry__1_n_4 ,\pc0_inferred__0/i___1_carry__1_n_5 ,\pc0_inferred__0/i___1_carry__1_n_6 ,\pc0_inferred__0/i___1_carry__1_n_7 }),
        .S({i___1_carry__1_i_1_n_0,i___1_carry__1_i_2_n_0,i___1_carry__1_i_3_n_0,i___1_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc0_inferred__0/i___1_carry__2 
       (.CI(\pc0_inferred__0/i___1_carry__1_n_0 ),
        .CO({\NLW_pc0_inferred__0/i___1_carry__2_CO_UNCONNECTED [3],\pc0_inferred__0/i___1_carry__2_n_1 ,\pc0_inferred__0/i___1_carry__2_n_2 ,\pc0_inferred__0/i___1_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\pc_buf_reg_n_0_[13] ,\pc_buf_reg_n_0_[12] ,\pc_buf_reg_n_0_[11] }),
        .O({\pc0_inferred__0/i___1_carry__2_n_4 ,\pc0_inferred__0/i___1_carry__2_n_5 ,\pc0_inferred__0/i___1_carry__2_n_6 ,\pc0_inferred__0/i___1_carry__2_n_7 }),
        .S({i___1_carry__2_i_1_n_0,i___1_carry__2_i_2_n_0,i___1_carry__2_i_3_n_0,i___1_carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \pc[15]_i_1 
       (.I0(pc_wr_r2),
        .I1(int_ack_t_reg_0),
        .I2(\state_reg[1]_4 ),
        .I3(p_0_in),
        .I4(state1),
        .O(\pc[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[0]_i_1 
       (.I0(\pc_buf[0]_i_2_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[0] ),
        .O(\pc_buf[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \pc_buf[0]_i_10 
       (.I0(\ram_rd_sel_r[1]_i_8_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\ram_rd_sel_r[1]_i_9_n_0 ),
        .I3(\ram_wr_sel_reg[1]_0 ),
        .I4(\ram_wr_sel_reg[1]_1 ),
        .I5(\pc_buf[0]_i_15_n_0 ),
        .O(\pc_buf[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \pc_buf[0]_i_11 
       (.I0(\pc_reg[15]_0 [2]),
        .I1(op3_n[3]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[3]),
        .O(\pc_buf[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h993C)) 
    \pc_buf[0]_i_12 
       (.I0(\bit_select[2]_i_4_n_0 ),
        .I1(\pc_reg[15]_0 [1]),
        .I2(op3_n[2]),
        .I3(\pc_buf[15]_i_7_n_0 ),
        .O(\pc_buf[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h39C9)) 
    \pc_buf[0]_i_13 
       (.I0(\op3_r[1]_i_2_n_0 ),
        .I1(\pc_reg[15]_0 [0]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[1]),
        .O(\pc_buf[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h39C9)) 
    \pc_buf[0]_i_14 
       (.I0(\op3_r[0]_i_2_n_0 ),
        .I1(pc[0]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[0]),
        .O(\pc_buf[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0A00000C000)) 
    \pc_buf[0]_i_15 
       (.I0(\pc_buf[0]_i_16_n_0 ),
        .I1(\ram_rd_sel_r[1]_i_9_n_0 ),
        .I2(\wr_sfr[0]_i_5_n_0 ),
        .I3(\pc_buf[15]_i_23_n_0 ),
        .I4(\ram_wr_sel_reg[1]_1 ),
        .I5(\ram_wr_sel_reg[1]_0 ),
        .O(\pc_buf[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00808080)) 
    \pc_buf[0]_i_16 
       (.I0(\ram_rd_sel_r[1]_i_9_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .O(\pc_buf[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \pc_buf[0]_i_2 
       (.I0(\pc_buf[0]_i_3_n_0 ),
        .I1(\pc_buf[0]_i_4_n_0 ),
        .I2(\op3_r[0]_i_2_n_0 ),
        .I3(\pc_buf[0]_i_5_n_0 ),
        .I4(\pc_buf[0]_i_6_n_0 ),
        .O(\pc_buf[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \pc_buf[0]_i_3 
       (.I0(\pc_buf[0]_i_4_n_0 ),
        .I1(pcs_result0[0]),
        .I2(p_0_in_0),
        .I3(pcs_result2__0[0]),
        .O(\pc_buf[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pc_buf[0]_i_4 
       (.I0(\pc_buf[15]_i_18_n_0 ),
        .I1(\pc_buf[10]_i_2_n_0 ),
        .O(\pc_buf[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000400)) 
    \pc_buf[0]_i_5 
       (.I0(\ram_wr_sel_reg[1]_1 ),
        .I1(\ram_wr_sel_reg[1]_0 ),
        .I2(\wr_sfr[0]_i_5_n_0 ),
        .I3(\src_sel2[1]_i_2_n_0 ),
        .I4(\pc_buf[15]_i_13_n_0 ),
        .I5(\pc_buf[0]_i_10_n_0 ),
        .O(\pc_buf[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FBB8C8)) 
    \pc_buf[0]_i_6 
       (.I0(\pc_buf[0]_i_3_n_0 ),
        .I1(\pc_buf[15]_i_8_n_0 ),
        .I2(des_acc[0]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(op2_n[0]),
        .O(\pc_buf[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \pc_buf[0]_i_8 
       (.I0(\op2_r[7]_i_2_n_0 ),
        .I1(\pc_buf[15]_i_7_n_0 ),
        .I2(\op3_r_reg[7] ),
        .O(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h39C9)) 
    \pc_buf[0]_i_9 
       (.I0(\op3_r[0]_i_2_n_0 ),
        .I1(pc[0]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[0]),
        .O(pcs_result2__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \pc_buf[10]_i_1 
       (.I0(\pc_buf[10]_i_2_n_0 ),
        .I1(\pc_buf[15]_i_3_n_0 ),
        .I2(pc_wr_r_i_6_n_0),
        .I3(pc_wr_r_i_5_n_0),
        .I4(\pc_buf[10]_i_3_n_0 ),
        .I5(pc_wr_r_i_2_n_0),
        .O(pc_buf[10]));
  LUT6 #(
    .INIT(64'h0000000033800000)) 
    \pc_buf[10]_i_2 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\ram_rd_sel_r[1]_i_9_n_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .I5(\cy_sel_reg[0] ),
        .O(\pc_buf[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA000000000000)) 
    \pc_buf[10]_i_3 
       (.I0(pc_wr_r_i_4_n_0),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .I4(\tmod_reg[0] ),
        .I5(pc_wr_r_i_10_n_0),
        .O(\pc_buf[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080888088800080)) 
    \pc_buf[12]_i_10 
       (.I0(\pc_buf[0]_i_4_n_0 ),
        .I1(\pc_buf[15]_i_8_n_0 ),
        .I2(pcs_result0[12]),
        .I3(p_0_in_0),
        .I4(\pc_buf[12]_i_18_n_0 ),
        .I5(\pc_reg[15]_0 [10]),
        .O(\pc_buf[12]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h4F440F00)) 
    \pc_buf[12]_i_11 
       (.I0(\pc_buf[15]_i_8_n_0 ),
        .I1(\pc_buf[0]_i_4_n_0 ),
        .I2(\op2_r_reg[4] ),
        .I3(\pc_buf[10]_i_2_n_0 ),
        .I4(des_acc[4]),
        .O(\pc_buf[12]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF444F000)) 
    \pc_buf[12]_i_12 
       (.I0(\pc_buf[15]_i_8_n_0 ),
        .I1(\pc_buf[0]_i_4_n_0 ),
        .I2(\pc_buf[10]_i_2_n_0 ),
        .I3(op2_n[3]),
        .I4(des_acc[3]),
        .O(\pc_buf[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \pc_buf[12]_i_13 
       (.I0(\pc_reg[15]_0 [9]),
        .I1(\pc_buf[12]_i_19_n_0 ),
        .I2(p_0_in_0),
        .I3(pcs_result0[11]),
        .O(\pc_buf[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \pc_buf[12]_i_14 
       (.I0(\pc_reg[15]_0 [8]),
        .I1(\pc_reg[15]_0 [7]),
        .I2(pc[8]),
        .I3(pcs_result2__0[8]),
        .I4(p_0_in_0),
        .I5(pcs_result0[10]),
        .O(\pc_buf[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCC55F0FFCC55F000)) 
    \pc_buf[12]_i_15 
       (.I0(\pc_buf[12]_i_8_0 ),
        .I1(\pc_buf[12]_i_14_n_0 ),
        .I2(des_acc[2]),
        .I3(\pc_buf[0]_i_5_n_0 ),
        .I4(\pc_buf[15]_i_8_n_0 ),
        .I5(op1_n[7]),
        .O(\pc_buf[12]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \pc_buf[12]_i_16 
       (.I0(\pc_reg[15]_0 [7]),
        .I1(pcs_result2__0[8]),
        .I2(pc[8]),
        .I3(p_0_in_0),
        .I4(pcs_result0[9]),
        .O(\pc_buf[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \pc_buf[12]_i_17 
       (.I0(\pc_buf[12]_i_16_n_0 ),
        .I1(des_acc[1]),
        .I2(\pc_buf[0]_i_5_n_0 ),
        .I3(\iadr_t_reg[15]_0 [1]),
        .I4(\pc_buf[15]_i_8_n_0 ),
        .I5(\op[6]_i_2_n_0 ),
        .O(\pc_buf[12]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \pc_buf[12]_i_18 
       (.I0(\pc_reg[15]_0 [8]),
        .I1(pcs_result2__0[8]),
        .I2(pc[8]),
        .I3(\pc_reg[15]_0 [7]),
        .I4(\pc_reg[15]_0 [9]),
        .O(\pc_buf[12]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pc_buf[12]_i_19 
       (.I0(\pc_reg[15]_0 [7]),
        .I1(pc[8]),
        .I2(pcs_result2__0[8]),
        .I3(\pc_reg[15]_0 [8]),
        .O(\pc_buf[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[12]_i_2 
       (.I0(\pc_buf[12]_i_6_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[12] ),
        .O(\pc_buf[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[12]_i_3 
       (.I0(\pc_buf[12]_i_7_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[11] ),
        .O(\pc_buf[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[12]_i_4 
       (.I0(\pc_buf[12]_i_8_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[10] ),
        .O(\pc_buf[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[12]_i_5 
       (.I0(\pc_buf[12]_i_9_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[9] ),
        .O(\pc_buf[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \pc_buf[12]_i_6 
       (.I0(\pc_buf[15]_i_18_n_0 ),
        .I1(\pc_buf[12]_i_2_0 ),
        .I2(\pc_buf[12]_i_10_n_0 ),
        .I3(\pc_buf[12]_i_11_n_0 ),
        .O(\pc_buf[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFCCCDCDC)) 
    \pc_buf[12]_i_7 
       (.I0(\pc_buf[12]_i_3_0 ),
        .I1(\pc_buf[12]_i_12_n_0 ),
        .I2(\pc_buf[15]_i_8_n_0 ),
        .I3(\pc_buf[12]_i_13_n_0 ),
        .I4(\pc_buf[0]_i_4_n_0 ),
        .O(\pc_buf[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'hFC5F0C50)) 
    \pc_buf[12]_i_8 
       (.I0(\bit_select[2]_i_4_n_0 ),
        .I1(\pc_buf[12]_i_14_n_0 ),
        .I2(\pc_buf[0]_i_5_n_0 ),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(\pc_buf[12]_i_15_n_0 ),
        .O(\pc_buf[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFCAF0CA0)) 
    \pc_buf[12]_i_9 
       (.I0(op2_n[1]),
        .I1(\pc_buf[12]_i_16_n_0 ),
        .I2(\pc_buf[0]_i_5_n_0 ),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(\pc_buf[12]_i_17_n_0 ),
        .O(\pc_buf[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFFFFFFF)) 
    \pc_buf[15]_i_1 
       (.I0(pc_wr_r_i_2_n_0),
        .I1(pc_wr_r_i_3_n_0),
        .I2(pc_wr_r_i_4_n_0),
        .I3(pc_wr_r_i_5_n_0),
        .I4(pc_wr_r_i_6_n_0),
        .I5(\pc_buf[15]_i_3_n_0 ),
        .O(pc_buf[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFF1111F111)) 
    \pc_buf[15]_i_10 
       (.I0(\pc_buf[15]_i_18_n_0 ),
        .I1(\pc_buf[15]_i_5_0 ),
        .I2(\pc_buf[0]_i_4_n_0 ),
        .I3(\pc_buf[15]_i_8_n_0 ),
        .I4(\pc_buf[15]_i_19_n_0 ),
        .I5(\pc_buf[15]_i_20_n_0 ),
        .O(\pc_buf[15]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \pc_buf[15]_i_11 
       (.I0(\pc_buf[15]_i_18_n_0 ),
        .I1(\iadr_t_reg[15]_0 [5]),
        .I2(\pc_buf[15]_i_21_n_0 ),
        .I3(\pc_buf[15]_i_22_n_0 ),
        .O(\pc_buf[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF7FFF)) 
    \pc_buf[15]_i_12 
       (.I0(\ram_rd_sel_r[1]_i_9_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\wr_sfr[0]_i_5_n_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(\pc_buf[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFF00BFFF)) 
    \pc_buf[15]_i_13 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[3]_0 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .O(\pc_buf[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \pc_buf[15]_i_14 
       (.I0(\ram_rd_sel_r[1]_i_2_n_0 ),
        .I1(\cy_sel_reg[0] ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .I5(\pc_buf[15]_i_23_n_0 ),
        .O(\pc_buf[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h800000B000800080)) 
    \pc_buf[15]_i_15 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\ram_wr_sel_reg[1]_0 ),
        .I2(pc_wr_r_i_24_n_0),
        .I3(\cdata_reg[7]_1 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\pc_buf[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h555900005559FFFF)) 
    \pc_buf[15]_i_17 
       (.I0(\pc_reg[15]_0 [13]),
        .I1(\pc_buf[15]_i_26_n_0 ),
        .I2(\pc_reg[15]_0 [11]),
        .I3(\pc_reg[15]_0 [12]),
        .I4(p_0_in_0),
        .I5(pcs_result0[15]),
        .O(\pc_buf[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \pc_buf[15]_i_18 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\mem_act[2]_i_4_n_0 ),
        .I4(wr_i_6_n_0),
        .I5(\pc_buf[15]_i_10_0 ),
        .O(\pc_buf[15]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h650065FF)) 
    \pc_buf[15]_i_19 
       (.I0(\pc_reg[15]_0 [12]),
        .I1(\pc_reg[15]_0 [11]),
        .I2(\pc_buf[15]_i_26_n_0 ),
        .I3(p_0_in_0),
        .I4(pcs_result0[14]),
        .O(\pc_buf[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hF000F444)) 
    \pc_buf[15]_i_20 
       (.I0(\pc_buf[15]_i_8_n_0 ),
        .I1(\pc_buf[0]_i_4_n_0 ),
        .I2(\pc_buf[10]_i_2_n_0 ),
        .I3(op2_n[6]),
        .I4(\dat0_reg[6]_1 ),
        .O(\pc_buf[15]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'hFB00FBFB)) 
    \pc_buf[15]_i_21 
       (.I0(\pc_buf[15]_i_8_n_0 ),
        .I1(\pc_buf[0]_i_4_n_0 ),
        .I2(\dat0_reg[5] ),
        .I3(\op2_r[5]_i_2_n_0 ),
        .I4(\pc_buf[10]_i_2_n_0 ),
        .O(\pc_buf[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0080888088800080)) 
    \pc_buf[15]_i_22 
       (.I0(\pc_buf[0]_i_4_n_0 ),
        .I1(\pc_buf[15]_i_8_n_0 ),
        .I2(pcs_result0[13]),
        .I3(p_0_in_0),
        .I4(\pc_buf[15]_i_26_n_0 ),
        .I5(\pc_reg[15]_0 [11]),
        .O(\pc_buf[15]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \pc_buf[15]_i_23 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\pc_buf[15]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h33FEFFFF)) 
    \pc_buf[15]_i_24 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .O(\pc_buf[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFB00F000FFFF)) 
    \pc_buf[15]_i_25 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\cdata_reg[3]_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(\pc_buf[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pc_buf[15]_i_26 
       (.I0(\pc_reg[15]_0 [9]),
        .I1(\pc_reg[15]_0 [7]),
        .I2(pc[8]),
        .I3(pcs_result2__0[8]),
        .I4(\pc_reg[15]_0 [8]),
        .I5(\pc_reg[15]_0 [10]),
        .O(\pc_buf[15]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pc_buf[15]_i_3 
       (.I0(\pc_buf[15]_i_7_n_0 ),
        .I1(\pc_buf[15]_i_8_n_0 ),
        .O(\pc_buf[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[15]_i_4 
       (.I0(\pc_buf[15]_i_9_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[15] ),
        .O(\pc_buf[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[15]_i_5 
       (.I0(\pc_buf[15]_i_10_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[14] ),
        .O(\pc_buf[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[15]_i_6 
       (.I0(\pc_buf[15]_i_11_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[13] ),
        .O(\pc_buf[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA8AFFFF)) 
    \pc_buf[15]_i_7 
       (.I0(\pc_buf[15]_i_12_n_0 ),
        .I1(\pc_buf[15]_i_13_n_0 ),
        .I2(\src_sel2[1]_i_2_n_0 ),
        .I3(\wr_sfr[0]_i_5_n_0 ),
        .I4(\pc_buf_reg[1]_0 ),
        .I5(\pc_buf[15]_i_14_n_0 ),
        .O(\pc_buf[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44454444CCCCCCCC)) 
    \pc_buf[15]_i_8 
       (.I0(\state_reg[1]_4 ),
        .I1(\pc_buf[15]_i_15_n_0 ),
        .I2(\pc_buf_reg[15]_i_16_n_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(p_0_in),
        .I5(state1),
        .O(\pc_buf[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00F00FFFC5C5C5C5)) 
    \pc_buf[15]_i_9 
       (.I0(\op2_r[7]_i_2_n_0 ),
        .I1(des_acc[7]),
        .I2(\pc_buf[0]_i_4_n_0 ),
        .I3(\pc_buf[15]_i_17_n_0 ),
        .I4(\pc_buf[15]_i_4_0 ),
        .I5(\pc_buf[15]_i_8_n_0 ),
        .O(\pc_buf[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4545FF4545454545)) 
    \pc_buf[4]_i_10 
       (.I0(\pc_buf[4]_i_17_n_0 ),
        .I1(\pc_buf[4]_i_18_n_0 ),
        .I2(\pc_buf_reg[1]_0 ),
        .I3(pc_wr_r_i_10_n_0),
        .I4(\pc_buf[4]_i_19_n_0 ),
        .I5(pc_wr_r_i_4_n_0),
        .O(\pc_buf[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF2FF2F2F2222222)) 
    \pc_buf[4]_i_13 
       (.I0(\pc_buf[10]_i_2_n_0 ),
        .I1(\op2_r_reg[4] ),
        .I2(\pc_buf[15]_i_8_n_0 ),
        .I3(\pc_buf[4]_i_24_n_0 ),
        .I4(\pc_buf[0]_i_4_n_0 ),
        .I5(des_acc[4]),
        .O(\pc_buf[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc_buf[4]_i_14 
       (.I0(pcs_result2__0[4]),
        .I1(p_0_in_0),
        .I2(pcs_result0[4]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(op3_n[4]),
        .O(\pc_buf[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF8FF8F8F8888888)) 
    \pc_buf[4]_i_15 
       (.I0(op2_n[3]),
        .I1(\pc_buf[10]_i_2_n_0 ),
        .I2(\pc_buf[15]_i_8_n_0 ),
        .I3(\pc_buf[4]_i_25_n_0 ),
        .I4(\pc_buf[0]_i_4_n_0 ),
        .I5(des_acc[3]),
        .O(\pc_buf[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc_buf[4]_i_16 
       (.I0(pcs_result2__0[3]),
        .I1(p_0_in_0),
        .I2(pcs_result0[3]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(op3_n[3]),
        .O(\pc_buf[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_buf[4]_i_17 
       (.I0(\ram_rd_sel_r[1]_i_2_n_0 ),
        .I1(\pc_buf[10]_i_2_n_0 ),
        .O(\pc_buf[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h004F004F0000004F)) 
    \pc_buf[4]_i_18 
       (.I0(\pc_buf[4]_i_27_n_0 ),
        .I1(\pc_buf[4]_i_28_n_0 ),
        .I2(pc_wr_r_i_8_n_0),
        .I3(\pc_buf[4]_i_29_n_0 ),
        .I4(pc_wr_r_i_2_0),
        .I5(\pc_buf[4]_i_30_n_0 ),
        .O(\pc_buf[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \pc_buf[4]_i_19 
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(\tmod_reg[0] ),
        .O(\pc_buf[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA888)) 
    \pc_buf[4]_i_2 
       (.I0(inc_pc),
        .I1(pc_wr_r_i_2_n_0),
        .I2(pc_wr_r_i_3_n_0),
        .I3(pc_wr_r_i_4_n_0),
        .I4(pc_wr_r_i_5_n_0),
        .I5(pc_wr_r_i_6_n_0),
        .O(\pc_buf[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCFC0F505)) 
    \pc_buf[4]_i_20 
       (.I0(\bit_select[2]_i_4_n_0 ),
        .I1(\pc_buf[4]_i_31_n_0 ),
        .I2(\pc_buf[15]_i_8_n_0 ),
        .I3(des_acc[2]),
        .I4(\pc_buf[0]_i_4_n_0 ),
        .O(\pc_buf[4]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc_buf[4]_i_21 
       (.I0(pcs_result2__0[2]),
        .I1(p_0_in_0),
        .I2(pcs_result0[2]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(op3_n[2]),
        .O(\pc_buf[4]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8FBB8C8)) 
    \pc_buf[4]_i_22 
       (.I0(\pc_buf[4]_i_32_n_0 ),
        .I1(\pc_buf[15]_i_8_n_0 ),
        .I2(des_acc[1]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(op2_n[1]),
        .O(\pc_buf[4]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \pc_buf[4]_i_23 
       (.I0(pcs_result2__0[1]),
        .I1(p_0_in_0),
        .I2(pcs_result0[1]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(\op3_r[1]_i_2_n_0 ),
        .O(\pc_buf[4]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pc_buf[4]_i_24 
       (.I0(pcs_result2__0[4]),
        .I1(p_0_in_0),
        .I2(pcs_result0[4]),
        .O(\pc_buf[4]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pc_buf[4]_i_25 
       (.I0(pcs_result2__0[3]),
        .I1(p_0_in_0),
        .I2(pcs_result0[3]),
        .O(\pc_buf[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000000001111EEE1)) 
    \pc_buf[4]_i_27 
       (.I0(\ram_rd_sel_r[1]_i_15_n_0 ),
        .I1(\pc_buf[4]_i_37_n_0 ),
        .I2(\pc_buf[4]_i_18_0 ),
        .I3(\pc_buf[4]_i_18_1 ),
        .I4(\pc_buf[4]_i_18_2 ),
        .I5(\pc_buf[4]_i_39_n_0 ),
        .O(\pc_buf[4]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \pc_buf[4]_i_28 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\cdata_reg[3]_0 ),
        .O(\pc_buf[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00100010)) 
    \pc_buf[4]_i_29 
       (.I0(\ram_wr_sel[1]_i_10_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\src_sel2[1]_i_5_n_0 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .I4(pc_wr_r_i_21_n_0),
        .I5(\cdata_reg[6]_0 ),
        .O(\pc_buf[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[4]_i_3 
       (.I0(\pc_buf_reg[4]_i_8_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[4] ),
        .O(\pc_buf[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAAAA)) 
    \pc_buf[4]_i_30 
       (.I0(pc_wr_r_i_21_n_0),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\wr_sfr[0]_i_5_n_0 ),
        .O(\pc_buf[4]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pc_buf[4]_i_31 
       (.I0(pcs_result2__0[2]),
        .I1(p_0_in_0),
        .I2(pcs_result0[2]),
        .O(\pc_buf[4]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \pc_buf[4]_i_32 
       (.I0(\pc_buf[0]_i_4_n_0 ),
        .I1(pcs_result0[1]),
        .I2(p_0_in_0),
        .I3(pcs_result2__0[1]),
        .O(\pc_buf[4]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \pc_buf[4]_i_33 
       (.I0(\pc_reg[15]_0 [2]),
        .I1(op3_n[3]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[3]),
        .O(\pc_buf[4]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h993C)) 
    \pc_buf[4]_i_34 
       (.I0(\bit_select[2]_i_4_n_0 ),
        .I1(\pc_reg[15]_0 [1]),
        .I2(op3_n[2]),
        .I3(\pc_buf[15]_i_7_n_0 ),
        .O(\pc_buf[4]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h39C9)) 
    \pc_buf[4]_i_35 
       (.I0(\op3_r[1]_i_2_n_0 ),
        .I1(\pc_reg[15]_0 [0]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[1]),
        .O(\pc_buf[4]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h39C9)) 
    \pc_buf[4]_i_36 
       (.I0(\op3_r[0]_i_2_n_0 ),
        .I1(pc[0]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[0]),
        .O(\pc_buf[4]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pc_buf[4]_i_37 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .O(\pc_buf[4]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h80FFFFFF)) 
    \pc_buf[4]_i_39 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\wr_sfr[0]_i_5_n_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\pc_buf[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[4]_i_4 
       (.I0(\pc_buf_reg[4]_i_9_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[3] ),
        .O(\pc_buf[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6666666F66666660)) 
    \pc_buf[4]_i_5 
       (.I0(inc_pc),
        .I1(\pc_buf_reg_n_0_[2] ),
        .I2(\pc_buf[4]_i_10_n_0 ),
        .I3(pc_wr_r_i_5_n_0),
        .I4(pc_wr_r_i_6_n_0),
        .I5(\pc_buf_reg[4]_i_11_n_0 ),
        .O(\pc_buf[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[4]_i_6 
       (.I0(\pc_buf_reg[4]_i_12_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[1] ),
        .O(\pc_buf[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hEEECECEC)) 
    \pc_buf[4]_i_7 
       (.I0(\op_pos_reg[1]_0 ),
        .I1(pc_wr_r2),
        .I2(p_0_in5_in),
        .I3(\op_pos_reg_n_0_[1] ),
        .I4(\op_pos_reg_n_0_[0] ),
        .O(inc_pc));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDDD)) 
    \pc_buf[7]_i_1 
       (.I0(\ram_rd_sel_r[1]_i_2_n_0 ),
        .I1(pc_wr_r_i_2_n_0),
        .I2(pc_wr_r_i_3_n_0),
        .I3(pc_wr_r_i_4_n_0),
        .I4(pc_wr_r_i_5_n_0),
        .I5(pc_wr_r_i_6_n_0),
        .O(pc_buf[7]));
  LUT4 #(
    .INIT(16'h3C55)) 
    \pc_buf[8]_i_10 
       (.I0(pcs_result0[8]),
        .I1(pc[8]),
        .I2(pcs_result2__0[8]),
        .I3(p_0_in_0),
        .O(\pc_buf[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3F30AFAF3F30A0A0)) 
    \pc_buf[8]_i_11 
       (.I0(des_acc[0]),
        .I1(\pc_buf[8]_i_10_n_0 ),
        .I2(\pc_buf[0]_i_5_n_0 ),
        .I3(\iadr_t_reg[15]_0 [0]),
        .I4(\pc_buf[15]_i_8_n_0 ),
        .I5(op1_n[5]),
        .O(\pc_buf[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCFC0F505)) 
    \pc_buf[8]_i_12 
       (.I0(\op2_r[7]_i_2_n_0 ),
        .I1(\pc_buf[8]_i_18_n_0 ),
        .I2(\pc_buf[15]_i_8_n_0 ),
        .I3(des_acc[7]),
        .I4(\pc_buf[0]_i_4_n_0 ),
        .O(\pc_buf[8]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \pc_buf[8]_i_13 
       (.I0(pcs_result2__0[7]),
        .I1(p_0_in_0),
        .I2(pcs_result0[7]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(\op3_r_reg[7] ),
        .O(\pc_buf[8]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pc_buf[8]_i_14 
       (.I0(pcs_result2__0[6]),
        .I1(p_0_in_0),
        .I2(pcs_result0[6]),
        .O(\pc_buf[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hDDD111D100000000)) 
    \pc_buf[8]_i_15 
       (.I0(\dat0_reg[6]_1 ),
        .I1(\pc_buf[0]_i_4_n_0 ),
        .I2(pcs_result0[6]),
        .I3(p_0_in_0),
        .I4(pcs_result2__0[6]),
        .I5(\pc_buf[15]_i_8_n_0 ),
        .O(\pc_buf[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h22F222222FFFF2F2)) 
    \pc_buf[8]_i_16 
       (.I0(\pc_buf[10]_i_2_n_0 ),
        .I1(\op2_r[5]_i_2_n_0 ),
        .I2(\pc_buf[15]_i_8_n_0 ),
        .I3(\pc_buf[8]_i_21_n_0 ),
        .I4(\pc_buf[0]_i_4_n_0 ),
        .I5(\dat0_reg[5] ),
        .O(\pc_buf[8]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \pc_buf[8]_i_17 
       (.I0(pcs_result0[5]),
        .I1(p_0_in_0),
        .I2(pcs_result2__0[5]),
        .I3(\pc_buf[0]_i_4_n_0 ),
        .I4(op3_n[5]),
        .O(\pc_buf[8]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pc_buf[8]_i_18 
       (.I0(pcs_result2__0[7]),
        .I1(p_0_in_0),
        .I2(pcs_result0[7]),
        .O(\pc_buf[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[8]_i_2 
       (.I0(\pc_buf[8]_i_6_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[8] ),
        .O(\pc_buf[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \pc_buf[8]_i_21 
       (.I0(pcs_result2__0[5]),
        .I1(p_0_in_0),
        .I2(pcs_result0[5]),
        .O(\pc_buf[8]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc_buf[8]_i_22 
       (.I0(\pc_reg[15]_0 [6]),
        .I1(p_0_in_0),
        .O(\pc_buf[8]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \pc_buf[8]_i_23 
       (.I0(\pc_reg[15]_0 [5]),
        .I1(op3_n[6]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[6]),
        .O(\pc_buf[8]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h993C)) 
    \pc_buf[8]_i_24 
       (.I0(\op2_r[5]_i_2_n_0 ),
        .I1(\pc_reg[15]_0 [4]),
        .I2(op3_n[5]),
        .I3(\pc_buf[15]_i_7_n_0 ),
        .O(\pc_buf[8]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h993C)) 
    \pc_buf[8]_i_25 
       (.I0(\op2_r_reg[4] ),
        .I1(\pc_reg[15]_0 [3]),
        .I2(op3_n[4]),
        .I3(\pc_buf[15]_i_7_n_0 ),
        .O(\pc_buf[8]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pc_buf[8]_i_26 
       (.I0(\pc_reg[15]_0 [6]),
        .I1(p_0_in_0),
        .O(\pc_buf[8]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \pc_buf[8]_i_27 
       (.I0(\pc_reg[15]_0 [5]),
        .I1(op3_n[6]),
        .I2(\pc_buf[15]_i_7_n_0 ),
        .I3(op2_n[6]),
        .O(\pc_buf[8]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h993C)) 
    \pc_buf[8]_i_28 
       (.I0(\op2_r[5]_i_2_n_0 ),
        .I1(\pc_reg[15]_0 [4]),
        .I2(op3_n[5]),
        .I3(\pc_buf[15]_i_7_n_0 ),
        .O(\pc_buf[8]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h993C)) 
    \pc_buf[8]_i_29 
       (.I0(\op2_r_reg[4] ),
        .I1(\pc_reg[15]_0 [3]),
        .I2(op3_n[4]),
        .I3(\pc_buf[15]_i_7_n_0 ),
        .O(\pc_buf[8]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[8]_i_3 
       (.I0(\pc_buf_reg[8]_i_7_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[7] ),
        .O(\pc_buf[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[8]_i_4 
       (.I0(\pc_buf[8]_i_8_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[6] ),
        .O(\pc_buf[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pc_buf[8]_i_5 
       (.I0(\pc_buf_reg[8]_i_9_n_0 ),
        .I1(pc_wr_r_i_6_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\pc_buf[10]_i_3_n_0 ),
        .I4(pc_wr_r_i_2_n_0),
        .I5(\pc_buf_reg_n_0_[5] ),
        .O(\pc_buf[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF44F4FF0044F400)) 
    \pc_buf[8]_i_6 
       (.I0(\pc_buf[8]_i_10_n_0 ),
        .I1(\pc_buf[15]_i_7_n_0 ),
        .I2(op2_n[0]),
        .I3(\pc_buf[0]_i_5_n_0 ),
        .I4(\pc_buf[0]_i_4_n_0 ),
        .I5(\pc_buf[8]_i_11_n_0 ),
        .O(\pc_buf[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \pc_buf[8]_i_8 
       (.I0(\pc_buf[8]_i_14_n_0 ),
        .I1(\pc_buf[0]_i_4_n_0 ),
        .I2(op3_n[6]),
        .I3(\pc_buf[0]_i_5_n_0 ),
        .I4(\pc_buf[15]_i_20_n_0 ),
        .I5(\pc_buf[8]_i_15_n_0 ),
        .O(\pc_buf[8]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf[0]_i_1_n_0 ),
        .Q(\pc_buf_reg_n_0_[0] ));
  CARRY4 \pc_buf_reg[0]_i_7 
       (.CI(1'b0),
        .CO({\pc_buf_reg[0]_i_7_n_0 ,\pc_buf_reg[0]_i_7_n_1 ,\pc_buf_reg[0]_i_7_n_2 ,\pc_buf_reg[0]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\pc_reg[15]_0 [2:0],pc[0]}),
        .O({pcs_result2__0[3:1],pcs_result0[0]}),
        .S({\pc_buf[0]_i_11_n_0 ,\pc_buf[0]_i_12_n_0 ,\pc_buf[0]_i_13_n_0 ,\pc_buf[0]_i_14_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[10]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[12]_i_1_n_6 ),
        .Q(\pc_buf_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[15]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[12]_i_1_n_5 ),
        .Q(\pc_buf_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[12] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[15]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[12]_i_1_n_4 ),
        .Q(\pc_buf_reg_n_0_[12] ));
  CARRY4 \pc_buf_reg[12]_i_1 
       (.CI(\pc_buf_reg[8]_i_1_n_0 ),
        .CO({\pc_buf_reg[12]_i_1_n_0 ,\pc_buf_reg[12]_i_1_n_1 ,\pc_buf_reg[12]_i_1_n_2 ,\pc_buf_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_buf_reg[12]_i_1_n_4 ,\pc_buf_reg[12]_i_1_n_5 ,\pc_buf_reg[12]_i_1_n_6 ,\pc_buf_reg[12]_i_1_n_7 }),
        .S({\pc_buf[12]_i_2_n_0 ,\pc_buf[12]_i_3_n_0 ,\pc_buf[12]_i_4_n_0 ,\pc_buf[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_buf_reg[12]_i_20 
       (.CI(\pc_buf_reg[8]_i_20_n_0 ),
        .CO({\pc_buf_reg[12]_i_20_n_0 ,\pc_buf_reg[12]_i_20_n_1 ,\pc_buf_reg[12]_i_20_n_2 ,\pc_buf_reg[12]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcs_result0[11:8]),
        .S({\pc_reg[15]_0 [9:7],pc[8]}));
  CARRY4 \pc_buf_reg[12]_i_21 
       (.CI(\pc_buf_reg[8]_i_19_n_0 ),
        .CO({\NLW_pc_buf_reg[12]_i_21_CO_UNCONNECTED [3:1],pcs_result2__0[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_pc_buf_reg[12]_i_21_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[13] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[15]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[15]_i_2_n_7 ),
        .Q(\pc_buf_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[14] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[15]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[15]_i_2_n_6 ),
        .Q(\pc_buf_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[15] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[15]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[15]_i_2_n_5 ),
        .Q(\pc_buf_reg_n_0_[15] ));
  MUXF7 \pc_buf_reg[15]_i_16 
       (.I0(\pc_buf[15]_i_24_n_0 ),
        .I1(\pc_buf[15]_i_25_n_0 ),
        .O(\pc_buf_reg[15]_i_16_n_0 ),
        .S(\cdata_reg[7]_1 ));
  CARRY4 \pc_buf_reg[15]_i_2 
       (.CI(\pc_buf_reg[12]_i_1_n_0 ),
        .CO({\NLW_pc_buf_reg[15]_i_2_CO_UNCONNECTED [3:2],\pc_buf_reg[15]_i_2_n_2 ,\pc_buf_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_buf_reg[15]_i_2_O_UNCONNECTED [3],\pc_buf_reg[15]_i_2_n_5 ,\pc_buf_reg[15]_i_2_n_6 ,\pc_buf_reg[15]_i_2_n_7 }),
        .S({1'b0,\pc_buf[15]_i_4_n_0 ,\pc_buf[15]_i_5_n_0 ,\pc_buf[15]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_buf_reg[15]_i_27 
       (.CI(\pc_buf_reg[12]_i_20_n_0 ),
        .CO({\NLW_pc_buf_reg[15]_i_27_CO_UNCONNECTED [3],\pc_buf_reg[15]_i_27_n_1 ,\pc_buf_reg[15]_i_27_n_2 ,\pc_buf_reg[15]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcs_result0[15:12]),
        .S(\pc_reg[15]_0 [13:10]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[4]_i_1_n_7 ),
        .Q(\pc_buf_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[4]_i_1_n_6 ),
        .Q(\pc_buf_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[4]_i_1_n_5 ),
        .Q(\pc_buf_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[4]_i_1_n_4 ),
        .Q(\pc_buf_reg_n_0_[4] ));
  CARRY4 \pc_buf_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\pc_buf_reg[4]_i_1_n_0 ,\pc_buf_reg[4]_i_1_n_1 ,\pc_buf_reg[4]_i_1_n_2 ,\pc_buf_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pc_buf[4]_i_2_n_0 ,1'b0}),
        .O({\pc_buf_reg[4]_i_1_n_4 ,\pc_buf_reg[4]_i_1_n_5 ,\pc_buf_reg[4]_i_1_n_6 ,\pc_buf_reg[4]_i_1_n_7 }),
        .S({\pc_buf[4]_i_3_n_0 ,\pc_buf[4]_i_4_n_0 ,\pc_buf[4]_i_5_n_0 ,\pc_buf[4]_i_6_n_0 }));
  MUXF7 \pc_buf_reg[4]_i_11 
       (.I0(\pc_buf[4]_i_20_n_0 ),
        .I1(\pc_buf[4]_i_21_n_0 ),
        .O(\pc_buf_reg[4]_i_11_n_0 ),
        .S(\pc_buf[0]_i_5_n_0 ));
  MUXF7 \pc_buf_reg[4]_i_12 
       (.I0(\pc_buf[4]_i_22_n_0 ),
        .I1(\pc_buf[4]_i_23_n_0 ),
        .O(\pc_buf_reg[4]_i_12_n_0 ),
        .S(\pc_buf[0]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_buf_reg[4]_i_26 
       (.CI(1'b0),
        .CO({\pc_buf_reg[4]_i_26_n_0 ,\pc_buf_reg[4]_i_26_n_1 ,\pc_buf_reg[4]_i_26_n_2 ,\pc_buf_reg[4]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\pc_reg[15]_0 [2:0],pc[0]}),
        .O({pcs_result0[3:1],\NLW_pc_buf_reg[4]_i_26_O_UNCONNECTED [0]}),
        .S({\pc_buf[4]_i_33_n_0 ,\pc_buf[4]_i_34_n_0 ,\pc_buf[4]_i_35_n_0 ,\pc_buf[4]_i_36_n_0 }));
  MUXF7 \pc_buf_reg[4]_i_8 
       (.I0(\pc_buf[4]_i_13_n_0 ),
        .I1(\pc_buf[4]_i_14_n_0 ),
        .O(\pc_buf_reg[4]_i_8_n_0 ),
        .S(\pc_buf[0]_i_5_n_0 ));
  MUXF7 \pc_buf_reg[4]_i_9 
       (.I0(\pc_buf[4]_i_15_n_0 ),
        .I1(\pc_buf[4]_i_16_n_0 ),
        .O(\pc_buf_reg[4]_i_9_n_0 ),
        .S(\pc_buf[0]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[8]_i_1_n_7 ),
        .Q(\pc_buf_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[8]_i_1_n_6 ),
        .Q(\pc_buf_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[7]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[8]_i_1_n_5 ),
        .Q(\pc_buf_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[10]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[8]_i_1_n_4 ),
        .Q(\pc_buf_reg_n_0_[8] ));
  CARRY4 \pc_buf_reg[8]_i_1 
       (.CI(\pc_buf_reg[4]_i_1_n_0 ),
        .CO({\pc_buf_reg[8]_i_1_n_0 ,\pc_buf_reg[8]_i_1_n_1 ,\pc_buf_reg[8]_i_1_n_2 ,\pc_buf_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_buf_reg[8]_i_1_n_4 ,\pc_buf_reg[8]_i_1_n_5 ,\pc_buf_reg[8]_i_1_n_6 ,\pc_buf_reg[8]_i_1_n_7 }),
        .S({\pc_buf[8]_i_2_n_0 ,\pc_buf[8]_i_3_n_0 ,\pc_buf[8]_i_4_n_0 ,\pc_buf[8]_i_5_n_0 }));
  CARRY4 \pc_buf_reg[8]_i_19 
       (.CI(\pc_buf_reg[0]_i_7_n_0 ),
        .CO({\pc_buf_reg[8]_i_19_n_0 ,\pc_buf_reg[8]_i_19_n_1 ,\pc_buf_reg[8]_i_19_n_2 ,\pc_buf_reg[8]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI(\pc_reg[15]_0 [6:3]),
        .O(pcs_result2__0[7:4]),
        .S({\pc_buf[8]_i_22_n_0 ,\pc_buf[8]_i_23_n_0 ,\pc_buf[8]_i_24_n_0 ,\pc_buf[8]_i_25_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_buf_reg[8]_i_20 
       (.CI(\pc_buf_reg[4]_i_26_n_0 ),
        .CO({\pc_buf_reg[8]_i_20_n_0 ,\pc_buf_reg[8]_i_20_n_1 ,\pc_buf_reg[8]_i_20_n_2 ,\pc_buf_reg[8]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI(\pc_reg[15]_0 [6:3]),
        .O(pcs_result0[7:4]),
        .S({\pc_buf[8]_i_26_n_0 ,\pc_buf[8]_i_27_n_0 ,\pc_buf[8]_i_28_n_0 ,\pc_buf[8]_i_29_n_0 }));
  MUXF7 \pc_buf_reg[8]_i_7 
       (.I0(\pc_buf[8]_i_12_n_0 ),
        .I1(\pc_buf[8]_i_13_n_0 ),
        .O(\pc_buf_reg[8]_i_7_n_0 ),
        .S(\pc_buf[0]_i_5_n_0 ));
  MUXF7 \pc_buf_reg[8]_i_9 
       (.I0(\pc_buf[8]_i_16_n_0 ),
        .I1(\pc_buf[8]_i_17_n_0 ),
        .O(\pc_buf_reg[8]_i_9_n_0 ),
        .S(\pc_buf[0]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_buf_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(pc_buf[10]),
        .CLR(rst_IBUF),
        .D(\pc_buf_reg[12]_i_1_n_7 ),
        .Q(\pc_buf_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry_n_7 ),
        .Q(pc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__1_n_5 ),
        .Q(\pc_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__1_n_4 ),
        .Q(\pc_reg[15]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[12] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__2_n_7 ),
        .Q(\pc_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[13] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__2_n_6 ),
        .Q(\pc_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[14] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__2_n_5 ),
        .Q(\pc_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[15] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__2_n_4 ),
        .Q(\pc_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry_n_6 ),
        .Q(\pc_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry_n_5 ),
        .Q(\pc_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry_n_4 ),
        .Q(\pc_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__0_n_7 ),
        .Q(\pc_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__0_n_6 ),
        .Q(\pc_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__0_n_5 ),
        .Q(\pc_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__0_n_4 ),
        .Q(\pc_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__1_n_7 ),
        .Q(pc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \pc_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(\pc[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\pc0_inferred__0/i___1_carry__1_n_6 ),
        .Q(\pc_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    pc_wr_r2_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(pc_wr_r),
        .Q(pc_wr_r2));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    pc_wr_r_i_1
       (.I0(pc_wr_r_i_2_n_0),
        .I1(pc_wr_r_i_3_n_0),
        .I2(pc_wr_r_i_4_n_0),
        .I3(pc_wr_r_i_5_n_0),
        .I4(pc_wr_r_i_6_n_0),
        .I5(\ram_rd_sel_r[1]_i_2_n_0 ),
        .O(pc_wr_r0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00282800)) 
    pc_wr_r_i_10
       (.I0(pc_wr_r_i_23_n_0),
        .I1(wr_addr[4]),
        .I2(\dat0_reg[1] ),
        .I3(wr_addr[6]),
        .I4(\ram_rd_sel_r_reg[2]_1 ),
        .O(pc_wr_r_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    pc_wr_r_i_11
       (.I0(pc_wr_r_i_24_n_0),
        .I1(\cdata_reg[7]_1 ),
        .I2(\state_reg[1]_4 ),
        .I3(state1),
        .I4(p_0_in),
        .I5(\cdata_reg[6]_0 ),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFEFF000FFFFFFFF)) 
    pc_wr_r_i_12
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cy_sel_reg[0] ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\alu_op[2]_i_5_n_0 ),
        .I4(pc_wr_r_i_25_n_0),
        .I5(pc_wr_r_i_24_n_0),
        .O(\cdata_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000000006600000)) 
    pc_wr_r_i_13
       (.I0(\ram_rd_sel_r_reg[2]_1 ),
        .I1(wr_addr[6]),
        .I2(\dat0_reg[1] ),
        .I3(wr_addr[4]),
        .I4(pc_wr_r_i_23_n_0),
        .I5(pc_wr_r_i_26_n_0),
        .O(pc_wr_r_i_13_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    pc_wr_r_i_14
       (.I0(\wr_addr_reg[1]_1 ),
        .I1(\tmod_reg[0] ),
        .I2(\p2_out[7]_i_3_n_0 ),
        .I3(\ram_wr_sel_reg[1] [2]),
        .I4(wr_addr[6]),
        .I5(\ram_wr_sel_reg[1] [3]),
        .O(pc_wr_r_i_14_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    pc_wr_r_i_15
       (.I0(\data_reg[3]_2 ),
        .I1(wr_addr[4]),
        .I2(wr_addr[3]),
        .I3(\ram_wr_sel_reg[1] [2]),
        .I4(wr_addr[6]),
        .I5(\ram_wr_sel_reg[1] [3]),
        .O(wait_data_reg_inv));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    pc_wr_r_i_17
       (.I0(wait_data_reg_inv_2),
        .I1(\data_reg[2] [1]),
        .I2(\data_reg[2] [0]),
        .I3(\wr_addr_reg[5]_0 ),
        .O(pc_wr_r_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pc_wr_r_i_18
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\wr_sfr[0]_i_5_n_0 ),
        .O(pc_wr_r_i_18_n_0));
  LUT6 #(
    .INIT(64'h000000000000557F)) 
    pc_wr_r_i_2
       (.I0(\pc_buf_reg[1]_0 ),
        .I1(pc_wr_r_i_7_n_0),
        .I2(pc_wr_r_i_8_n_0),
        .I3(pc_wr_r_i_9_n_0),
        .I4(\pc_buf[10]_i_2_n_0 ),
        .I5(\ram_rd_sel_r[1]_i_2_n_0 ),
        .O(pc_wr_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    pc_wr_r_i_20
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .O(pc_wr_r_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FE0FFFF7FF0)) 
    pc_wr_r_i_21
       (.I0(\cdata_reg[0]_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\cdata_reg[3]_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(pc_wr_r_i_30_n_0),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(pc_wr_r_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pc_wr_r_i_22
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\ram_wr_sel[1]_i_10_n_0 ),
        .O(pc_wr_r_i_22_n_0));
  LUT6 #(
    .INIT(64'h0000099009900000)) 
    pc_wr_r_i_23
       (.I0(wr_addr[3]),
        .I1(\ram_rd_sel_r_reg[2]_0 ),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(\ram_rd_sel_r_reg[2]_3 ),
        .I4(\ram_rd_sel_r_reg[0] ),
        .I5(\ram_wr_sel_reg[1] [2]),
        .O(pc_wr_r_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h80)) 
    pc_wr_r_i_24
       (.I0(\cdata_reg[0]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\wr_sfr[0]_i_5_n_0 ),
        .O(pc_wr_r_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1FFF)) 
    pc_wr_r_i_25
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(p_0_in),
        .I3(state1),
        .I4(\state_reg[1]_4 ),
        .I5(\cdata_reg[7]_1 ),
        .O(pc_wr_r_i_25_n_0));
  LUT6 #(
    .INIT(64'hFFFF6FF66FF6FFFF)) 
    pc_wr_r_i_26
       (.I0(\ram_rd_sel_r_reg[2]_4 ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_rd_sel_r_reg[2] [1]),
        .I4(\ram_wr_sel_reg[1] [0]),
        .I5(\ram_rd_sel_r_reg[2]_2 ),
        .O(pc_wr_r_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h08888888)) 
    pc_wr_r_i_3
       (.I0(pc_wr_r_i_10_n_0),
        .I1(\tmod_reg[0] ),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(wr_addr[2]),
        .I4(\ram_wr_sel_reg[1] [1]),
        .O(pc_wr_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7FBFFFBF)) 
    pc_wr_r_i_30
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(pc_wr_r_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pc_wr_r_i_4
       (.I0(\state_reg[0] ),
        .I1(\cdata_reg[7]_0 ),
        .O(pc_wr_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000080888888)) 
    pc_wr_r_i_5
       (.I0(pc_wr_r_i_13_n_0),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wait_data_reg_inv_11[1]),
        .I3(wait_data_reg_inv_11[0]),
        .I4(state1),
        .I5(\buff_reg[7][7] ),
        .O(pc_wr_r_i_5_n_0));
  LUT6 #(
    .INIT(64'hFEFE000000FF0000)) 
    pc_wr_r_i_6
       (.I0(pc_wr_r_i_14_n_0),
        .I1(wait_data_reg_inv),
        .I2(\pc_buf_reg[1]_1 ),
        .I3(pc_wr_r_i_17_n_0),
        .I4(\state_reg[0] ),
        .I5(\cdata_reg[7]_0 ),
        .O(pc_wr_r_i_6_n_0));
  LUT6 #(
    .INIT(64'h04044848FF484848)) 
    pc_wr_r_i_7
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(pc_wr_r_i_18_n_0),
        .I2(pc_wr_r_i_2_0),
        .I3(\alu_op[3]_i_9_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(pc_wr_r_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pc_wr_r_i_8
       (.I0(\cdata_reg[0]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .O(pc_wr_r_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF1010FFF0)) 
    pc_wr_r_i_9
       (.I0(pc_wr_r_i_20_n_0),
        .I1(\wr_sfr[0]_i_5_n_0 ),
        .I2(pc_wr_r_i_2_0),
        .I3(\cdata_reg[6]_0 ),
        .I4(pc_wr_r_i_21_n_0),
        .I5(pc_wr_r_i_22_n_0),
        .O(pc_wr_r_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pc_wr_r_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(pc_wr_r0),
        .Q(pc_wr_r));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \pcon[7]_i_1 
       (.I0(\tmod_reg[0] ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(\data_hi[7]_i_4_n_0 ),
        .I4(\ram_wr_sel_reg[1] [1]),
        .I5(wr_addr[2]),
        .O(\ram_wr_sel_reg[2]_17 ));
  LUT3 #(
    .INIT(8'h40)) 
    pop_i_1
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(pop_reg),
        .I2(\ram_rd_sel_r_reg[1] ),
        .O(\ram_rd_sel_r_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h00000000FFEE0FEE)) 
    \psw_set[0]_i_1 
       (.I0(\psw_set[0]_i_2_n_0 ),
        .I1(\psw_set[0]_i_3_n_0 ),
        .I2(\psw_set[0]_i_4_n_0 ),
        .I3(\psw_set[0]_i_5_n_0 ),
        .I4(\psw_set[0]_i_6_n_0 ),
        .I5(\cy_sel_reg[0] ),
        .O(\state_reg[0]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h20000010)) 
    \psw_set[0]_i_2 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[7]_1 ),
        .O(\psw_set[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2200000000004403)) 
    \psw_set[0]_i_3 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\psw_set[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h575F)) 
    \psw_set[0]_i_4 
       (.I0(\src_sel2[1]_i_2_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\ram_rd_sel_r[2]_i_11_n_0 ),
        .O(\psw_set[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \psw_set[0]_i_5 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .O(\psw_set[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \psw_set[0]_i_6 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .O(\psw_set[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF54)) 
    \psw_set[1]_i_1 
       (.I0(\src_sel1[1]_i_3_n_0 ),
        .I1(\state_reg[1]_4 ),
        .I2(p_0_in),
        .I3(\psw_set[1]_i_2_n_0 ),
        .O(\state_reg[0]_2 [1]));
  LUT6 #(
    .INIT(64'hCC04400400044004)) 
    \psw_set[1]_i_2 
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\psw_set_reg[1]_1 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\alu_op[2]_i_6_n_0 ),
        .O(\psw_set[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAFFBAAABFFF)) 
    \ram_rd_sel_r[0]_i_1 
       (.I0(\ram_rd_sel_r[1]_i_2_n_0 ),
        .I1(\ram_rd_sel_r[0]_i_2_n_0 ),
        .I2(p_0_in),
        .I3(state1),
        .I4(\ram_rd_sel_r[0]_i_3_n_0 ),
        .I5(\state_reg[1]_4 ),
        .O(\state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \ram_rd_sel_r[0]_i_2 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\mem_act[2]_i_4_n_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(\ram_rd_sel_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0DDD088FFFFFFFF)) 
    \ram_rd_sel_r[0]_i_3 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[0]_i_4_n_0 ),
        .I2(\ram_rd_sel_r[0]_i_5_n_0 ),
        .I3(\ram_rd_sel_r[0]_i_6_n_0 ),
        .I4(\ram_rd_sel_r[0]_i_7_n_0 ),
        .I5(\cdata_reg[3]_0 ),
        .O(\ram_rd_sel_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \ram_rd_sel_r[0]_i_4 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[0]_0 ),
        .I5(\cdata_reg[2]_0 ),
        .O(\ram_rd_sel_r[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFE)) 
    \ram_rd_sel_r[0]_i_5 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[7]_1 ),
        .O(\ram_rd_sel_r[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAA2AA8AAA8A8A)) 
    \ram_rd_sel_r[0]_i_6 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\ram_rd_sel_r[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h4101)) 
    \ram_rd_sel_r[0]_i_7 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[7]_1 ),
        .O(\ram_rd_sel_r[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBBA)) 
    \ram_rd_sel_r[1]_i_1 
       (.I0(\ram_rd_sel_r[1]_i_2_n_0 ),
        .I1(\ram_rd_sel_r[1]_i_3_n_0 ),
        .I2(\ram_rd_sel_r[1]_i_4_n_0 ),
        .I3(\ram_wr_sel_reg[1]_0 ),
        .I4(\ram_rd_sel_r[1]_i_6_n_0 ),
        .I5(\ram_rd_sel_r[1]_i_7_n_0 ),
        .O(\cdata_reg[0]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_rd_sel_r[1]_i_10 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .O(\ram_rd_sel_r[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ram_rd_sel_r[1]_i_11 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cdata_reg[3]_0 ),
        .O(\ram_rd_sel_r[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \ram_rd_sel_r[1]_i_12 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[2]_0 ),
        .O(\ram_rd_sel_r[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDFDBFB7BFFFFFFFF)) 
    \ram_rd_sel_r[1]_i_13 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\cdata_reg[3]_0 ),
        .O(\ram_rd_sel_r[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \ram_rd_sel_r[1]_i_14 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .O(\ram_rd_sel_r[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ram_rd_sel_r[1]_i_15 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .O(\ram_rd_sel_r[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \ram_rd_sel_r[1]_i_2 
       (.I0(\ram_rd_sel_r[1]_i_8_n_0 ),
        .I1(\state_reg[1]_4 ),
        .I2(state1),
        .I3(p_0_in),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\ram_rd_sel_r[1]_i_9_n_0 ),
        .O(\ram_rd_sel_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFA20000FFAA0000)) 
    \ram_rd_sel_r[1]_i_3 
       (.I0(p_0_in),
        .I1(\ram_rd_sel_r[1]_i_10_n_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\state_reg[1]_4 ),
        .I4(state1),
        .I5(\ram_rd_sel_r[1]_i_11_n_0 ),
        .O(\ram_rd_sel_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A888888AAAAAAAA)) 
    \ram_rd_sel_r[1]_i_4 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\ram_rd_sel_r[1]_i_8_n_0 ),
        .I2(\ram_rd_sel_r[1]_i_12_n_0 ),
        .I3(src_sel3_i_4_n_0),
        .I4(\cdata_reg[7]_1 ),
        .I5(\ram_rd_sel_r[1]_i_13_n_0 ),
        .O(\ram_rd_sel_r[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000F00010000)) 
    \ram_rd_sel_r[1]_i_6 
       (.I0(\ram_rd_sel_r[1]_i_10_n_0 ),
        .I1(\ram_rd_sel_r[1]_i_14_n_0 ),
        .I2(\ram_rd_sel_r[1]_i_15_n_0 ),
        .I3(\mem_act[2]_i_4_n_0 ),
        .I4(\cdata_reg[2]_0 ),
        .I5(\mem_act[2]_i_3_n_0 ),
        .O(\ram_rd_sel_r[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0202000000000080)) 
    \ram_rd_sel_r[1]_i_7 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\ram_rd_sel_r[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ram_rd_sel_r[1]_i_8 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\cdata_reg[3]_0 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .O(\ram_rd_sel_r[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_rd_sel_r[1]_i_9 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .O(\ram_rd_sel_r[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0410)) 
    \ram_rd_sel_r[2]_i_1 
       (.I0(\ram_rd_sel_r[2]_i_2_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\ram_rd_sel_r[2]_i_6_n_0 ),
        .I5(\ram_rd_sel_r[2]_i_7_n_0 ),
        .O(\cdata_reg[0]_1 [1]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ram_rd_sel_r[2]_i_10 
       (.I0(\wr_sfr[1]_i_2_0 [1]),
        .I1(dmem_wait_reg_n_0),
        .I2(imem_wait_reg_0),
        .I3(pc_wr_r2),
        .I4(\op_pos_reg[1]_0 ),
        .O(\ram_rd_sel_r[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ram_rd_sel_r[2]_i_11 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cdata_reg[3]_0 ),
        .O(\ram_rd_sel_r[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h95FFFFFFFFFFFBFF)) 
    \ram_rd_sel_r[2]_i_2 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(src_sel3_reg),
        .I4(\cdata_reg[6]_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\ram_rd_sel_r[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F7F75)) 
    \ram_rd_sel_r[2]_i_3 
       (.I0(\mem_act[2]_i_2_n_0 ),
        .I1(cdata[0]),
        .I2(cdone),
        .I3(reti_reg_1),
        .I4(\op[0]_i_2_n_0 ),
        .I5(\ram_rd_sel_r[2]_i_8_n_0 ),
        .O(\cdata_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F757F)) 
    \ram_rd_sel_r[2]_i_4 
       (.I0(\mem_act[2]_i_2_n_0 ),
        .I1(cdata[2]),
        .I2(cdone),
        .I3(\op[2]_i_2_n_0 ),
        .I4(reti_reg_1),
        .I5(\ram_rd_sel_r[2]_i_9_n_0 ),
        .O(\cdata_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000000055FF5757)) 
    \ram_rd_sel_r[2]_i_5 
       (.I0(\mem_act[2]_i_2_n_0 ),
        .I1(\op[1]_i_2_n_0 ),
        .I2(reti_reg_1),
        .I3(cdata[1]),
        .I4(cdone),
        .I5(\ram_rd_sel_r[2]_i_10_n_0 ),
        .O(\ram_rd_sel_r[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800050000000)) 
    \ram_rd_sel_r[2]_i_6 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_11_n_0 ),
        .I3(\pc_buf_reg[1]_0 ),
        .I4(\cdata_reg[2]_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\ram_rd_sel_r[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ram_rd_sel_r[2]_i_7 
       (.I0(state1),
        .I1(\state_reg[1]_4 ),
        .I2(\alu_op[2]_i_6_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\alu_op[1]_i_4_n_0 ),
        .O(\ram_rd_sel_r[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ram_rd_sel_r[2]_i_8 
       (.I0(\wr_sfr[1]_i_2_0 [0]),
        .I1(dmem_wait_reg_n_0),
        .I2(imem_wait_reg_0),
        .I3(pc_wr_r2),
        .I4(\op_pos_reg[1]_0 ),
        .O(\ram_rd_sel_r[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ram_rd_sel_r[2]_i_9 
       (.I0(\wr_sfr[1]_i_2_0 [2]),
        .I1(dmem_wait_reg_n_0),
        .I2(imem_wait_reg_0),
        .I3(pc_wr_r2),
        .I4(\op_pos_reg[1]_0 ),
        .O(\ram_rd_sel_r[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4445)) 
    \ram_wr_sel[0]_i_1 
       (.I0(p_0_in),
        .I1(\ram_rd_sel_r[2]_i_7_n_0 ),
        .I2(\ram_wr_sel[0]_i_2_n_0 ),
        .I3(\state_reg[1]_4 ),
        .I4(\ram_wr_sel[0]_i_3_n_0 ),
        .O(\state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000070777F7F)) 
    \ram_wr_sel[0]_i_2 
       (.I0(\ram_wr_sel[0]_i_4_n_0 ),
        .I1(\wr_sfr[0]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[3]_0 ),
        .I4(\ram_wr_sel[0]_i_5_n_0 ),
        .I5(\ram_wr_sel[0]_i_6_n_0 ),
        .O(\ram_wr_sel[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08080808A8080808)) 
    \ram_wr_sel[0]_i_3 
       (.I0(\ram_wr_sel[0]_i_7_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\ram_wr_sel[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \ram_wr_sel[0]_i_4 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cdata_reg[6]_0 ),
        .O(\ram_wr_sel[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3C002C003C000C0C)) 
    \ram_wr_sel[0]_i_5 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[2]_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\ram_wr_sel[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h444F000044440000)) 
    \ram_wr_sel[0]_i_6 
       (.I0(\ram_wr_sel[0]_i_8_n_0 ),
        .I1(\cdata_reg[3]_0 ),
        .I2(\ram_rd_sel_r[2]_i_11_n_0 ),
        .I3(\wr_sfr[0]_i_5_n_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\ram_wr_sel[0]_i_9_n_0 ),
        .O(\ram_wr_sel[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \ram_wr_sel[0]_i_7 
       (.I0(\state_reg[1]_4 ),
        .I1(state1),
        .I2(p_0_in),
        .I3(\cdata_reg[3]_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\cdata_reg[2]_0 ),
        .O(\ram_wr_sel[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFFFD3ADF)) 
    \ram_wr_sel[0]_i_8 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\cdata_reg[2]_0 ),
        .I4(\cdata_reg[6]_0 ),
        .O(\ram_wr_sel[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_wr_sel[0]_i_9 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\alu_op[1]_i_4_n_0 ),
        .O(\ram_wr_sel[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000AABA)) 
    \ram_wr_sel[1]_i_1 
       (.I0(\ram_rd_sel_r[2]_i_7_n_0 ),
        .I1(\ram_wr_sel[1]_i_2_n_0 ),
        .I2(\cdata_reg[3]_0 ),
        .I3(\ram_wr_sel_reg[1]_1 ),
        .I4(\ram_wr_sel_reg[1]_0 ),
        .I5(\ram_wr_sel[1]_i_5_n_0 ),
        .O(\state_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \ram_wr_sel[1]_i_10 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\cdata_reg[3]_0 ),
        .O(\ram_wr_sel[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB0CCCBBBBFFFF)) 
    \ram_wr_sel[1]_i_2 
       (.I0(\ram_wr_sel[1]_i_6_n_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\ram_wr_sel[1]_i_7_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\ram_wr_sel[1]_i_8_n_0 ),
        .O(\ram_wr_sel[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F7F7F75)) 
    \ram_wr_sel[1]_i_3 
       (.I0(\mem_act[2]_i_2_n_0 ),
        .I1(cdata[3]),
        .I2(cdone),
        .I3(reti_reg_1),
        .I4(\op[3]_i_2_n_0 ),
        .I5(\ram_wr_sel[1]_i_9_n_0 ),
        .O(\cdata_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000338000000000)) 
    \ram_wr_sel[1]_i_5 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\ram_rd_sel_r[1]_i_9_n_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\ram_wr_sel[1]_i_10_n_0 ),
        .I5(\pc_buf_reg[1]_0 ),
        .O(\ram_wr_sel[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hDFFFFF00)) 
    \ram_wr_sel[1]_i_6 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .O(\ram_wr_sel[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ram_wr_sel[1]_i_7 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\ram_wr_sel[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h3C91)) 
    \ram_wr_sel[1]_i_8 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .O(\ram_wr_sel[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ram_wr_sel[1]_i_9 
       (.I0(\wr_sfr[1]_i_2_0 [3]),
        .I1(dmem_wait_reg_n_0),
        .I2(imem_wait_reg_0),
        .I3(pc_wr_r2),
        .I4(\op_pos_reg[1]_0 ),
        .O(\ram_wr_sel[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4444444454444444)) 
    \ram_wr_sel[2]_i_1 
       (.I0(\ram_wr_sel_reg[1]_0 ),
        .I1(\ram_rd_sel_r[2]_i_7_n_0 ),
        .I2(\ram_wr_sel[2]_i_2_n_0 ),
        .I3(\ram_wr_sel[2]_i_3_n_0 ),
        .I4(\ram_wr_sel[2]_i_4_n_0 ),
        .I5(\ram_wr_sel[2]_i_5_n_0 ),
        .O(\state_reg[1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ram_wr_sel[2]_i_2 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .O(\ram_wr_sel[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ram_wr_sel[2]_i_3 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\ram_wr_sel[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \ram_wr_sel[2]_i_4 
       (.I0(\cdata_reg[7]_1 ),
        .I1(state1),
        .I2(\state_reg[1]_4 ),
        .O(\ram_wr_sel[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ram_wr_sel[2]_i_5 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .O(\ram_wr_sel[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rcap2h[7]_i_1 
       (.I0(\tmod_reg[0] ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(\rcap2l[7]_i_2_n_0 ),
        .I3(wr_addr[2]),
        .I4(\ram_wr_sel_reg[1] [1]),
        .O(\ram_wr_sel_reg[2]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \rcap2l[7]_i_1 
       (.I0(\tmod_reg[0] ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(\rcap2l[7]_i_2_n_0 ),
        .I3(wr_addr[2]),
        .I4(\ram_wr_sel_reg[1] [1]),
        .O(\ram_wr_sel_reg[2]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rcap2l[7]_i_2 
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(wr_addr[6]),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[4]),
        .I4(wr_addr[3]),
        .O(\rcap2l[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT1 #(
    .INIT(2'h1)) 
    rd_addr_r_i_1
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .O(rd_addr));
  FDCE #(
    .INIT(1'b0)) 
    rd_addr_r_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(rd_addr),
        .Q(rd_addr_r));
  LUT6 #(
    .INIT(64'hFFFFFFF4FFFFFFFF)) 
    \rd_data[7]_i_1 
       (.I0(rd_en_r_i_7_n_0),
        .I1(rd_en_r_i_6_n_0),
        .I2(rd_en_r_i_5_n_0),
        .I3(rd_en_r_i_4_n_0),
        .I4(rd_en_r_i_3_n_0),
        .I5(rd_en_r_i_2_n_0),
        .O(wr_bit_r_reg));
  LUT6 #(
    .INIT(64'h1333103313031003)) 
    \rd_data[7]_i_3 
       (.I0(rd_addr_r_reg_1[6]),
        .I1(\ram_rd_sel_r_reg[2]_5 ),
        .I2(\ram_rd_sel_r_reg[1] ),
        .I3(pop_reg),
        .I4(rd_addr_r_reg_2),
        .I5(\op2_r[7]_i_2_n_0 ),
        .O(\ram_rd_sel_r_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \rd_data[7]_i_4 
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(buff_reg_0_63_0_2_i_25_n_0),
        .I2(\ram_rd_sel_r_reg[2]_1 ),
        .O(rd_en_r_i_11_0));
  LUT6 #(
    .INIT(64'h0002000200000002)) 
    rd_en_r_i_1
       (.I0(rd_en_r_i_2_n_0),
        .I1(rd_en_r_i_3_n_0),
        .I2(rd_en_r_i_4_n_0),
        .I3(rd_en_r_i_5_n_0),
        .I4(rd_en_r_i_6_n_0),
        .I5(rd_en_r_i_7_n_0),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h11FF055511AA0555)) 
    rd_en_r_i_11
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(rd_addr_r_reg_1[5]),
        .I2(op2_n[6]),
        .I3(\ram_rd_sel_r_reg[1] ),
        .I4(pop_reg),
        .I5(\dat0[1]_i_10 ),
        .O(\ram_rd_sel_r_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    rd_en_r_i_12
       (.I0(\ram_rd_sel_r_reg[2]_5 ),
        .I1(bank_sel[0]),
        .I2(pop_reg),
        .I3(\ri_r_reg[7]_1 [2]),
        .I4(\ram_rd_sel_r_reg[1] ),
        .I5(\dat0[7]_i_23 ),
        .O(\ram_rd_sel_r_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hD00D)) 
    rd_en_r_i_2
       (.I0(rd_en_r_i_7_n_0),
        .I1(rd_en_r_i_6_n_0),
        .I2(ADDRA[1]),
        .I3(ADDRD[1]),
        .O(rd_en_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hF99FFFFFF99FF99F)) 
    rd_en_r_i_3
       (.I0(buff_reg_0_63_0_2_i_27_n_0),
        .I1(ADDRD[2]),
        .I2(buff_reg_0_63_0_2_i_28_n_0),
        .I3(ADDRD[0]),
        .I4(rd_en_r_i_11_0),
        .I5(wr_bit_r_reg_0),
        .O(rd_en_r_i_3_n_0));
  LUT6 #(
    .INIT(64'hF22FF22FFFFFF22F)) 
    rd_en_r_i_4
       (.I0(rd_en_r_i_11_0),
        .I1(wr_bit_r_reg_0),
        .I2(rd_en_r_i_8_n_0),
        .I3(ADDRA[4]),
        .I4(buff_reg_0_63_0_2_i_24_n_0),
        .I5(rd_en_r_i_9_n_0),
        .O(rd_en_r_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF01FF11FFFFFF)) 
    rd_en_r_i_5
       (.I0(buff_reg_0_63_0_2_i_24_n_0),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(wr_bit_r),
        .I3(wr0),
        .I4(\ram_wr_sel_reg[1] [3]),
        .I5(\ram_rd_sel_r_reg[2]_3 ),
        .O(rd_en_r_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h20FD)) 
    rd_en_r_i_6
       (.I0(\ram_rd_sel_r_reg[2]_3 ),
        .I1(buff_reg_0_63_0_2_i_25_n_0),
        .I2(\ram_rd_sel_r_reg[2]_1 ),
        .I3(\ram_rd_sel_r_reg[2]_0 ),
        .O(rd_en_r_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h04F7)) 
    rd_en_r_i_7
       (.I0(wr_addr[6]),
        .I1(wr_bit_r),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[3]),
        .O(rd_en_r_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    rd_en_r_i_8
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_bit_r),
        .I2(wr_addr[4]),
        .O(rd_en_r_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h45)) 
    rd_en_r_i_9
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_bit_r),
        .O(rd_en_r_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rd_ind_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(rd_ind0),
        .Q(rd_ind_reg_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    reti_i_1
       (.I0(reti_i_2_n_0),
        .I1(reti_i_3_n_0),
        .I2(\op[5]_i_2_n_0 ),
        .I3(\mem_act[2]_i_2_n_0 ),
        .I4(\op[7]_i_3_n_0 ),
        .O(reti0));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    reti_i_2
       (.I0(reti_reg_1),
        .I1(\op[2]_i_2_n_0 ),
        .I2(\op[4]_i_2_n_0 ),
        .I3(\op[1]_i_2_n_0 ),
        .I4(\op[0]_i_2_n_0 ),
        .I5(\op[3]_i_2_n_0 ),
        .O(reti_i_2_n_0));
  LUT6 #(
    .INIT(64'hABABBABFFBFBBABF)) 
    reti_i_3
       (.I0(reti_reg_1),
        .I1(data4[6]),
        .I2(\op[5]_i_3_n_0 ),
        .I3(reti_i_4_n_0),
        .I4(\op[5]_i_5_n_0 ),
        .I5(\idat_cur_reg_n_0_[6] ),
        .O(reti_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reti_i_4
       (.I0(data2[6]),
        .I1(data1[6]),
        .I2(\op_pos_reg_n_0_[1] ),
        .I3(data0[6]),
        .I4(\op_pos_reg_n_0_[0] ),
        .I5(\idat_old_reg_n_0_[6] ),
        .O(reti_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    reti_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(reti0),
        .Q(reti));
  LUT6 #(
    .INIT(64'hFFFF0000D0DFD0DF)) 
    \ri_r[0]_i_1 
       (.I0(\ri_r[0]_i_2_n_0 ),
        .I1(\ri_r[0]_i_3_n_0 ),
        .I2(\ri_r_reg[0]_0 ),
        .I3(\ri_r_reg[0]_1 ),
        .I4(des1[0]),
        .I5(\data_reg[3] ),
        .O(ri));
  LUT6 #(
    .INIT(64'hE2E2E2FFFFFFE2FF)) 
    \ri_r[0]_i_2 
       (.I0(psw[2]),
        .I1(\wr_addr_reg[5]_0 ),
        .I2(des1[1]),
        .I3(\ri_r_reg[0]_4 ),
        .I4(\cdata_reg[0]_0 ),
        .I5(\ri_r_reg[0]_5 ),
        .O(\ri_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \ri_r[0]_i_3 
       (.I0(psw[2]),
        .I1(\wr_addr_reg[5]_0 ),
        .I2(des1[1]),
        .I3(\ri_r_reg[0]_6 ),
        .I4(\cdata_reg[0]_0 ),
        .I5(\ri_r_reg[0]_7 ),
        .O(\ri_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4100410041000041)) 
    \ri_r[4]_i_2 
       (.I0(\ri_r[4]_i_5_n_0 ),
        .I1(wr_addr[3]),
        .I2(bank_sel[0]),
        .I3(wr_addr[4]),
        .I4(\ri_r_reg[0]_2 ),
        .I5(\ri_r_reg[0]_3 ),
        .O(\data_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF9)) 
    \ri_r[4]_i_5 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\buff[0][7]_i_3_n_0 ),
        .I4(\ram_wr_sel_reg[1] [1]),
        .O(\ri_r[4]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(ri),
        .Q(\ri_r_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ri_r_reg[7]_1 [0]),
        .Q(\ri_r_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ri_r_reg[7]_1 [1]),
        .Q(\ri_r_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ri_r_reg[7]_1 [2]),
        .Q(\ri_r_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ri_r_reg[7]_1 [3]),
        .Q(\ri_r_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ri_r_reg[7]_1 [4]),
        .Q(\ri_r_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ri_r_reg[7]_1 [5]),
        .Q(\ri_r_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \ri_r_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\ri_r_reg[7]_1 [6]),
        .Q(\ri_r_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rn_r[0]_i_1 
       (.I0(\cdata_reg[0]_0 ),
        .O(op1_cur[0]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rn_r[1]_i_1 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(op1_cur[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \rn_r[2]_i_1 
       (.I0(\cdata_reg[2]_0 ),
        .O(op1_cur[2]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \rn_r[3]_i_4 
       (.I0(\rn_r[3]_i_7_n_0 ),
        .I1(wr_addr[4]),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[3]),
        .I4(wr_addr[6]),
        .I5(\ram_wr_sel_reg[1] [2]),
        .O(\wr_addr_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \rn_r[3]_i_7 
       (.I0(\tmod_reg[0] ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [0]),
        .O(\rn_r[3]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rn_r_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_cur[0]),
        .Q(\rn_r_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rn_r_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_cur[1]),
        .Q(\rn_r_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rn_r_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(op1_cur[2]),
        .Q(\rn_r_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rn_r_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(bank_sel[0]),
        .Q(\rn_r_reg[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rn_r_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(bank_sel[1]),
        .Q(\rn_r_reg[4]_0 [4]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \sbuf_txd[10]_i_3 
       (.I0(\data[1]_i_2_n_0 ),
        .I1(\tmod_reg[0] ),
        .I2(\p0_out[0]_i_4_n_0 ),
        .I3(wr_addr[4]),
        .I4(wr_addr[3]),
        .O(wr_sbuf));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \sbuf_txd[9]_i_2 
       (.I0(\tmod_reg[0] ),
        .I1(\sbuf_txd[9]_i_3_n_0 ),
        .I2(wr_addr[3]),
        .I3(\ram_wr_sel_reg[1] [3]),
        .I4(\ram_wr_sel_reg[1] [0]),
        .I5(wr_addr[4]),
        .O(\ram_wr_sel_reg[2]_22 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sbuf_txd[9]_i_3 
       (.I0(\ram_wr_sel_reg[1] [2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(wr_addr[6]),
        .O(\sbuf_txd[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0BFBFFFF0BFB0000)) 
    \scon[1]_i_1 
       (.I0(\data_reg[3]_1 ),
        .I1(wait_data_reg_inv_1),
        .I2(\ram_wr_sel_reg[2]_1 ),
        .I3(\scon_reg[1]_0 ),
        .I4(\scon[1]_i_2_n_0 ),
        .I5(scon[1]),
        .O(\scon_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0202FF00)) 
    \scon[1]_i_2 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(tx_done),
        .I4(wait_data_reg_inv_1),
        .I5(\ram_wr_sel_reg[2]_1 ),
        .O(\scon[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFBAAAAA808)) 
    \scon[2]_i_1 
       (.I0(\scon[2]_i_2_n_0 ),
        .I1(\scon_reg[2]_1 ),
        .I2(wait_data_reg_inv_1),
        .I3(\data_lo[7]_i_2_n_0 ),
        .I4(\ram_wr_sel_reg[2]_1 ),
        .I5(scon[2]),
        .O(\scon_reg[2] ));
  LUT5 #(
    .INIT(32'h00FFD8D8)) 
    \scon[2]_i_2 
       (.I0(wait_data_reg_inv_1),
        .I1(\data_reg[3]_1 ),
        .I2(\scon_reg[2]_0 ),
        .I3(\t2con_reg[2]_0 ),
        .I4(\ram_wr_sel_reg[2]_1 ),
        .O(\scon[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACAFAFAFACA0A0A0)) 
    \scon[3]_i_1 
       (.I0(des1[1]),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_1 ),
        .I3(\wr_addr_reg[2]_0 ),
        .I4(wait_data_reg_inv_1),
        .I5(scon[3]),
        .O(\scon_reg[3] ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \scon[4]_i_1 
       (.I0(\t2con_reg[4]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_1 ),
        .I3(wait_data_reg_inv_1),
        .I4(\data[4]_i_2_n_0 ),
        .I5(scon[4]),
        .O(\scon_reg[4] ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \scon[5]_i_1 
       (.I0(\t2con_reg[5]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_1 ),
        .I3(\wr_addr_reg[0]_7 ),
        .I4(wait_data_reg_inv_1),
        .I5(scon[5]),
        .O(\scon_reg[5] ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \scon[6]_i_1 
       (.I0(\t2con_reg[6]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_1 ),
        .I3(\wr_addr_reg[1]_3 ),
        .I4(wait_data_reg_inv_1),
        .I5(scon[6]),
        .O(\scon_reg[6] ));
  LUT6 #(
    .INIT(64'h55CF55FF55C05500)) 
    \scon[7]_i_1 
       (.I0(\t2con_reg[7]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\wr_addr_reg[1]_0 ),
        .I3(\ram_wr_sel_reg[2]_1 ),
        .I4(wait_data_reg_inv_1),
        .I5(scon[7]),
        .O(\scon_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \scon[7]_i_2 
       (.I0(\wr_addr_reg[1]_1 ),
        .I1(\tmod_reg[0] ),
        .I2(\p0_out[0]_i_4_n_0 ),
        .I3(wr_addr[4]),
        .I4(wr_addr[3]),
        .O(\ram_wr_sel_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \scon[7]_i_3 
       (.I0(\data_reg[3]_2 ),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[6]),
        .I4(wr_addr[4]),
        .I5(wr_addr[3]),
        .O(wait_data_reg_inv_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \sp[7]_i_2 
       (.I0(\tmod_reg[0] ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [2]),
        .I4(\ram_wr_sel_reg[1] [0]),
        .I5(\data_hi[7]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2] ));
  LUT5 #(
    .INIT(32'hF0F1FFF1)) 
    \src_sel1[0]_i_1 
       (.I0(\src_sel1[0]_i_2_n_0 ),
        .I1(\state_reg[1]_4 ),
        .I2(\src_sel1[1]_i_4_n_0 ),
        .I3(p_0_in),
        .I4(\src_sel1[1]_i_3_n_0 ),
        .O(\state_reg[0]_3 [0]));
  LUT6 #(
    .INIT(64'h00000000DDDCD0DC)) 
    \src_sel1[0]_i_2 
       (.I0(\src_sel1[0]_i_3_n_0 ),
        .I1(\src_sel1[0]_i_4_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[3]_0 ),
        .I4(\src_sel1[0]_i_5_n_0 ),
        .I5(\src_sel1[0]_i_6_n_0 ),
        .O(\src_sel1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC00C0CECE)) 
    \src_sel1[0]_i_3 
       (.I0(wr_i_6_n_0),
        .I1(\src_sel1[0]_i_7_n_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\src_sel1[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \src_sel1[0]_i_4 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .O(\src_sel1[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F1F1FF3FFFFF)) 
    \src_sel1[0]_i_5 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\src_sel1[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAABABAAAAAAAA)) 
    \src_sel1[0]_i_6 
       (.I0(\alu_op[2]_i_6_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\src_sel2[1]_i_5_n_0 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\src_sel1[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \src_sel1[0]_i_7 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\src_sel1[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3035)) 
    \src_sel1[1]_i_1 
       (.I0(\src_sel1[1]_i_2_n_0 ),
        .I1(\src_sel1[1]_i_3_n_0 ),
        .I2(p_0_in),
        .I3(\state_reg[1]_4 ),
        .I4(\src_sel1[1]_i_4_n_0 ),
        .O(\state_reg[0]_3 [1]));
  LUT6 #(
    .INIT(64'hF77F000020000000)) 
    \src_sel1[1]_i_10 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\cdata_reg[2]_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\src_sel1[1]_i_11_n_0 ),
        .I5(\src_sel2[1]_i_2_n_0 ),
        .O(\src_sel1[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \src_sel1[1]_i_11 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .O(\src_sel1[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00FE)) 
    \src_sel1[1]_i_2 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\src_sel1[1]_i_5_n_0 ),
        .I3(\src_sel1[1]_i_6_n_0 ),
        .I4(\ram_rd_sel_r[2]_i_11_n_0 ),
        .I5(\src_sel1[1]_i_7_n_0 ),
        .O(\src_sel1[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \src_sel1[1]_i_3 
       (.I0(\alu_op[1]_i_4_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\alu_op[2]_i_6_n_0 ),
        .O(\src_sel1[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0F8F000)) 
    \src_sel1[1]_i_4 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\src_sel1[1]_i_8_n_0 ),
        .I2(\wr_sfr[0]_i_8_n_0 ),
        .I3(\cdata_reg[2]_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\src_sel1[1]_i_9_n_0 ),
        .O(\src_sel1[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hF8FF)) 
    \src_sel1[1]_i_5 
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .O(\src_sel1[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000045F4)) 
    \src_sel1[1]_i_6 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(wr_i_8_n_0),
        .I2(\cdata_reg[6]_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(\src_sel1[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000020)) 
    \src_sel1[1]_i_7 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\src_sel1[1]_i_10_n_0 ),
        .O(\src_sel1[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \src_sel1[1]_i_8 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\src_sel1[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \src_sel1[1]_i_9 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cdata_reg[3]_0 ),
        .I2(p_0_in),
        .I3(\state_reg[1]_4 ),
        .I4(state1),
        .O(\src_sel1[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF10)) 
    \src_sel1[2]_i_1 
       (.I0(\src_sel1[2]_i_2_n_0 ),
        .I1(\cy_sel_reg[0] ),
        .I2(\wr_sfr[0]_i_5_n_0 ),
        .I3(\wr_sfr[0]_i_2_n_0 ),
        .I4(\ram_wr_sel[1]_i_5_n_0 ),
        .O(\state_reg[0]_3 [2]));
  LUT6 #(
    .INIT(64'hFAFAFAFAF7FFBFFF)) 
    \src_sel1[2]_i_2 
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\src_sel1[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11111011)) 
    \src_sel2[0]_i_1 
       (.I0(p_0_in),
        .I1(\state_reg[1]_4 ),
        .I2(\src_sel2[0]_i_2_n_0 ),
        .I3(\src_sel2[0]_i_3_n_0 ),
        .I4(\src_sel2[0]_i_4_n_0 ),
        .O(\state_reg[1]_2 [0]));
  LUT6 #(
    .INIT(64'h0080000002A02A28)) 
    \src_sel2[0]_i_2 
       (.I0(\ram_rd_sel_r[2]_i_11_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\cdata_reg[2]_0 ),
        .O(\src_sel2[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFFFFBDBB)) 
    \src_sel2[0]_i_3 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\src_sel2[0]_i_5_n_0 ),
        .O(\src_sel2[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004080000040)) 
    \src_sel2[0]_i_4 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\src_sel2[0]_i_6_n_0 ),
        .I2(\src_sel2[0]_i_7_n_0 ),
        .I3(\cdata_reg[2]_0 ),
        .I4(\cy_sel[1]_i_5_n_0 ),
        .I5(\cdata_reg[0]_0 ),
        .O(\src_sel2[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA002200)) 
    \src_sel2[0]_i_5 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[2]_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\src_sel2[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \src_sel2[0]_i_6 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(\src_sel2[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \src_sel2[0]_i_7 
       (.I0(\cdata_reg[3]_0 ),
        .I1(\cdata_reg[7]_1 ),
        .O(\src_sel2[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00101111)) 
    \src_sel2[1]_i_1 
       (.I0(p_0_in),
        .I1(\state_reg[1]_4 ),
        .I2(\src_sel2[1]_i_2_n_0 ),
        .I3(\src_sel2[1]_i_3_n_0 ),
        .I4(\src_sel2[1]_i_4_n_0 ),
        .O(\state_reg[1]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \src_sel2[1]_i_2 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .O(\src_sel2[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h77FFFD00F200FFFF)) 
    \src_sel2[1]_i_3 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cdata_reg[2]_0 ),
        .I3(\cdata_reg[3]_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(\src_sel2[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFF33FFFFFFFF)) 
    \src_sel2[1]_i_4 
       (.I0(\src_sel2[1]_i_5_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(\wr_sfr[0]_i_5_n_0 ),
        .I5(\cdata_reg[6]_0 ),
        .O(\src_sel2[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \src_sel2[1]_i_5 
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .O(\src_sel2[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888888888AA888A8)) 
    src_sel3_i_1
       (.I0(src_sel3_reg),
        .I1(src_sel3_i_3_n_0),
        .I2(\cdata_reg[2]_0 ),
        .I3(\cdata_reg[7]_1 ),
        .I4(src_sel3_i_4_n_0),
        .I5(src_sel3_i_5_n_0),
        .O(src_sel30));
  LUT6 #(
    .INIT(64'h8000700000000000)) 
    src_sel3_i_3
       (.I0(\cdata_reg[6]_0 ),
        .I1(src_sel3_i_6_n_0),
        .I2(\alu_op[3]_i_5_n_0 ),
        .I3(\cdata_reg[2]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(src_sel3_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    src_sel3_i_4
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .O(src_sel3_i_4_n_0));
  LUT6 #(
    .INIT(64'hD000FFFFFFFFFFFF)) 
    src_sel3_i_5
       (.I0(\cdata_reg[2]_0 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[0]_0 ),
        .I5(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(src_sel3_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    src_sel3_i_6
       (.I0(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .O(src_sel3_i_6_n_0));
  LUT6 #(
    .INIT(64'h00FFFFFFF2000000)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(p_0_in),
        .I3(\state[0]_i_4_n_0 ),
        .I4(state1),
        .I5(\state_reg[1]_4 ),
        .O(\state_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h02324202)) 
    \state[0]_i_2 
       (.I0(op1_n[2]),
        .I1(op1_n[0]),
        .I2(op1_n[1]),
        .I3(op1_n[7]),
        .I4(op1_n[5]),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFFFFD0FF)) 
    \state[0]_i_3 
       (.I0(op1_n[7]),
        .I1(op1_n[4]),
        .I2(op1_n[2]),
        .I3(\op[6]_i_2_n_0 ),
        .I4(op1_n[3]),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[0]_i_4 
       (.I0(dmem_wait_reg_n_0),
        .I1(imem_wait_reg_0),
        .I2(pc_wr_r2),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFF51400000)) 
    \state[1]_i_1 
       (.I0(\state_reg[1]_4 ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\state[1]_i_4_n_0 ),
        .I4(\oc8051_decoder1/state0 ),
        .I5(p_0_in),
        .O(\state_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA22A220A2)) 
    \state[1]_i_10 
       (.I0(\state[1]_i_12_n_0 ),
        .I1(op1_n[7]),
        .I2(op1_n[5]),
        .I3(\op[6]_i_2_n_0 ),
        .I4(op1_n[4]),
        .I5(op1_n[0]),
        .O(\state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_11 
       (.I0(\op[6]_i_2_n_0 ),
        .I1(op1_n[5]),
        .O(\state[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_12 
       (.I0(op1_n[2]),
        .I1(op1_n[3]),
        .O(\state[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \state[1]_i_2 
       (.I0(\state[1]_i_6_n_0 ),
        .I1(op1_n[1]),
        .I2(op1_n[3]),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEBAAAAA)) 
    \state[1]_i_3 
       (.I0(\state[1]_i_7_n_0 ),
        .I1(\state[1]_i_8_n_0 ),
        .I2(op1_n[4]),
        .I3(\op[6]_i_2_n_0 ),
        .I4(\state[1]_i_9_n_0 ),
        .I5(\state[1]_i_10_n_0 ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \state[1]_i_4 
       (.I0(op1_n[2]),
        .I1(\op[6]_i_2_n_0 ),
        .I2(op1_n[7]),
        .I3(op1_n[0]),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \state[1]_i_5 
       (.I0(pc_wr_r2),
        .I1(imem_wait_reg_0),
        .I2(dmem_wait_reg_n_0),
        .I3(state1),
        .O(\oc8051_decoder1/state0 ));
  LUT6 #(
    .INIT(64'hACF0F8C004C050C0)) 
    \state[1]_i_6 
       (.I0(op1_n[2]),
        .I1(op1_n[7]),
        .I2(op1_n[5]),
        .I3(\op[6]_i_2_n_0 ),
        .I4(op1_n[0]),
        .I5(op1_n[4]),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080C08000)) 
    \state[1]_i_7 
       (.I0(op1_n[4]),
        .I1(op1_n[7]),
        .I2(\state[1]_i_11_n_0 ),
        .I3(op1_n[3]),
        .I4(op1_n[2]),
        .I5(op1_n[0]),
        .O(\state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[1]_i_8 
       (.I0(op1_n[3]),
        .I1(op1_n[0]),
        .O(\state[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_9 
       (.I0(op1_n[7]),
        .I1(op1_n[5]),
        .O(\state[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \t2con[0]_i_2 
       (.I0(\rcap2l[7]_i_2_n_0 ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(\p0_out_reg[7]_0 ),
        .O(\ram_wr_sel_reg[2]_10 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \t2con[1]_i_1 
       (.I0(\scon_reg[1]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_9 ),
        .I3(\data[1]_i_2_n_0 ),
        .I4(\t2con[7]_i_2_n_0 ),
        .I5(t2con[0]),
        .O(\t2con_reg[1] ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \t2con[2]_i_1 
       (.I0(\t2con_reg[2]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_9 ),
        .I3(\data_lo[7]_i_2_n_0 ),
        .I4(\t2con[7]_i_2_n_0 ),
        .I5(t2con[1]),
        .O(\t2con_reg[2] ));
  LUT6 #(
    .INIT(64'hACAFAFAFACA0A0A0)) 
    \t2con[3]_i_1 
       (.I0(des1[1]),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_9 ),
        .I3(\wr_addr_reg[2]_0 ),
        .I4(\t2con[7]_i_2_n_0 ),
        .I5(t2con[2]),
        .O(\t2con_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \t2con[4]_i_1 
       (.I0(\t2con_reg[4]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_9 ),
        .I3(\t2con[7]_i_2_n_0 ),
        .I4(\data[4]_i_2_n_0 ),
        .I5(t2con[3]),
        .O(\t2con_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \t2con[5]_i_1 
       (.I0(\t2con_reg[5]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_9 ),
        .I3(\wr_addr_reg[0]_7 ),
        .I4(\t2con[7]_i_2_n_0 ),
        .I5(t2con[4]),
        .O(\t2con_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h5C5F5F5F5C505050)) 
    \t2con[6]_i_1 
       (.I0(\t2con_reg[6]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_9 ),
        .I3(\wr_addr_reg[1]_3 ),
        .I4(\t2con[7]_i_2_n_0 ),
        .I5(t2con[5]),
        .O(\t2con_reg[6] ));
  LUT6 #(
    .INIT(64'h03BBFFFF03BB0000)) 
    \t2con[7]_i_1 
       (.I0(\data_reg[3]_1 ),
        .I1(\t2con[7]_i_2_n_0 ),
        .I2(\t2con_reg[7]_1 ),
        .I3(\ram_wr_sel_reg[2]_9 ),
        .I4(\t2con[7]_i_4_n_0 ),
        .I5(t2con[6]),
        .O(\t2con_reg[7] ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \t2con[7]_i_2 
       (.I0(wr_addr[3]),
        .I1(wr_addr[4]),
        .I2(\ram_wr_sel_reg[1] [3]),
        .I3(wr_addr[6]),
        .I4(\ram_wr_sel_reg[1] [2]),
        .I5(\data_reg[3]_2 ),
        .O(\t2con[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \t2con[7]_i_3 
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(\rcap2l[7]_i_2_n_0 ),
        .I4(\tmod_reg[0] ),
        .O(\ram_wr_sel_reg[2]_9 ));
  LUT6 #(
    .INIT(64'hFF80FF80FFFFFF00)) 
    \t2con[7]_i_4 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[2]_9 ),
        .I4(\t2con_reg[7]_0 ),
        .I5(\t2con[7]_i_2_n_0 ),
        .O(\t2con[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEEEAAAAA222A)) 
    tcon_ie0_i_1
       (.I0(tcon_ie0_i_2_n_0),
        .I1(tcon_ie0_i_3_n_0),
        .I2(tcon_ie0_reg_0),
        .I3(tcon_ie0_reg_1),
        .I4(\ram_wr_sel_reg[2]_0 ),
        .I5(tcon[1]),
        .O(tcon_ie0_reg));
  LUT5 #(
    .INIT(32'h00FFB1B1)) 
    tcon_ie0_i_2
       (.I0(tcon_ie0_i_6_n_0),
        .I1(tcon[0]),
        .I2(\data_reg[3]_1 ),
        .I3(\scon_reg[1]_0 ),
        .I4(\ram_wr_sel_reg[2]_0 ),
        .O(tcon_ie0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAAAAAAA)) 
    tcon_ie0_i_3
       (.I0(tcon[0]),
        .I1(wr_addr[2]),
        .I2(tcon_ie0_i_7_n_0),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(wr_bit_r),
        .I5(\p0_out_reg[7]_0 ),
        .O(tcon_ie0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    tcon_ie0_i_6
       (.I0(\data_reg[3]_2 ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(\ram_wr_sel_reg[1] [0]),
        .I3(\ram_wr_sel_reg[1] [2]),
        .I4(\tcon_s[3]_i_4_n_0 ),
        .I5(wr_addr[2]),
        .O(tcon_ie0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    tcon_ie0_i_7
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(wr_addr[3]),
        .I3(wr_addr[4]),
        .I4(wr_addr[6]),
        .I5(\ram_wr_sel_reg[1] [3]),
        .O(tcon_ie0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAAEEAEAAAA22A2)) 
    tcon_ie1_i_1
       (.I0(tcon_ie1_i_2_n_0),
        .I1(tcon_ie1_i_3_n_0),
        .I2(tcon_ie0_reg_0),
        .I3(tcon_ie0_reg_1),
        .I4(\ram_wr_sel_reg[2]_0 ),
        .I5(tcon[3]),
        .O(tcon_ie1_reg));
  LUT5 #(
    .INIT(32'h00FF8D8D)) 
    tcon_ie1_i_2
       (.I0(tcon_ie1_i_4_n_0),
        .I1(\data_reg[3]_1 ),
        .I2(tcon[2]),
        .I3(tcon_ie1_reg_0),
        .I4(\ram_wr_sel_reg[2]_0 ),
        .O(tcon_ie1_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2AAA)) 
    tcon_ie1_i_3
       (.I0(tcon[2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_bit_r),
        .I3(\p0_out_reg[7]_0 ),
        .I4(wr_addr[2]),
        .I5(tcon_ie0_i_7_n_0),
        .O(tcon_ie1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    tcon_ie1_i_4
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(\tcon_s[3]_i_4_n_0 ),
        .I3(wr_addr[2]),
        .I4(\data_reg[3]_2 ),
        .I5(\ram_wr_sel_reg[1] [1]),
        .O(tcon_ie1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \tcon_s[0]_i_1 
       (.I0(des1[0]),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_0 ),
        .I3(\tcon_s[3]_i_2_n_0 ),
        .I4(\wr_addr_reg[1]_1 ),
        .I5(tcon[0]),
        .O(\tcon_s_reg[0] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \tcon_s[1]_i_1 
       (.I0(\t2con_reg[2]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_0 ),
        .I3(\tcon_s[3]_i_2_n_0 ),
        .I4(\data_lo[7]_i_2_n_0 ),
        .I5(tcon[2]),
        .O(\tcon_s_reg[1] ));
  LUT6 #(
    .INIT(64'h5F5C5F5F505C5050)) 
    \tcon_s[2]_i_1 
       (.I0(\t2con_reg[4]_1 ),
        .I1(\data_reg[3]_1 ),
        .I2(\ram_wr_sel_reg[2]_0 ),
        .I3(\tcon_s[3]_i_2_n_0 ),
        .I4(\data[4]_i_2_n_0 ),
        .I5(tcon[4]),
        .O(\tcon_s_reg[2] ));
  LUT6 #(
    .INIT(64'h5555FCFF55550C00)) 
    \tcon_s[3]_i_1 
       (.I0(\t2con_reg[6]_0 ),
        .I1(\data_reg[3]_1 ),
        .I2(\tcon_s[3]_i_2_n_0 ),
        .I3(\wr_addr_reg[1]_3 ),
        .I4(\ram_wr_sel_reg[2]_0 ),
        .I5(tcon[5]),
        .O(\tcon_s_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \tcon_s[3]_i_2 
       (.I0(wr_addr[3]),
        .I1(wr_addr[4]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(\ram_wr_sel_reg[1] [3]),
        .I4(wr_addr[6]),
        .I5(\data_reg[3]_2 ),
        .O(\tcon_s[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \tcon_s[3]_i_3 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\ram_wr_sel_reg[1] [2]),
        .I4(\tmod_reg[0] ),
        .I5(\tcon_s[3]_i_4_n_0 ),
        .O(\ram_wr_sel_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \tcon_s[3]_i_4 
       (.I0(\ram_wr_sel_reg[1] [3]),
        .I1(wr_addr[6]),
        .I2(wr_addr[4]),
        .I3(wr_addr[3]),
        .O(\tcon_s[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF0000FFBFFFBF)) 
    tcon_tf0_i_3
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(\data_reg[3]_2 ),
        .I2(wr_addr[2]),
        .I3(tcon_ie0_i_7_n_0),
        .I4(tf0_buff),
        .I5(tf0),
        .O(tf0_buff_reg));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    tcon_tf0_i_6
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(\ram_wr_sel_reg[1] [2]),
        .I2(\tcon_s[3]_i_4_n_0 ),
        .I3(wr_addr[2]),
        .I4(\data_reg[3]_2 ),
        .I5(\ram_wr_sel_reg[1] [1]),
        .O(wait_data_reg_inv_5));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    tcon_tf1_i_2
       (.I0(\data_reg[3]_1 ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_bit_r),
        .I3(\p0_out_reg[7]_0 ),
        .I4(wr_addr[2]),
        .I5(tcon_ie0_i_7_n_0),
        .O(wr_bit_r_reg_1));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    tcon_tf1_i_5
       (.I0(wr_addr[2]),
        .I1(\p0_out[7]_i_6_n_0 ),
        .I2(wr_addr[4]),
        .I3(wr_addr[3]),
        .I4(\ram_wr_sel_reg[1] [2]),
        .I5(\ram_wr_sel_reg[1] [0]),
        .O(\wr_addr_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    tf0_i_3
       (.I0(\ram_wr_sel_reg[2]_12 ),
        .I1(\ram_wr_sel_reg[2]_13 ),
        .O(\th0[7]_i_6_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00080800)) 
    tf1_1_i_3
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(\tmod_reg[0] ),
        .I2(\tmod[7]_i_2_n_0 ),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(wr_addr[2]),
        .O(\ram_wr_sel_reg[2]_20 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \th0[7]_i_5 
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(wr_addr[2]),
        .I2(\tmod[7]_i_2_n_0 ),
        .I3(\tmod_reg[0] ),
        .I4(\ram_wr_sel_reg[1] [0]),
        .O(\ram_wr_sel_reg[2]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \th0[7]_i_6 
       (.I0(\tmod_reg[0] ),
        .I1(\ram_wr_sel_reg[1] [0]),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(\tmod[7]_i_2_n_0 ),
        .O(\ram_wr_sel_reg[2]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \th1[7]_i_3 
       (.I0(\ram_wr_sel_reg[1] [1]),
        .I1(wr_addr[2]),
        .I2(\tmod[7]_i_2_n_0 ),
        .I3(\tmod_reg[0] ),
        .I4(\ram_wr_sel_reg[1] [0]),
        .O(\ram_wr_sel_reg[2]_21 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \th1[7]_i_4 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(\tmod[7]_i_2_n_0 ),
        .I3(\tmod_reg[0] ),
        .I4(\ram_wr_sel_reg[1] [0]),
        .O(\ram_wr_sel_reg[2]_19 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \th1[7]_i_5 
       (.I0(\tmod_reg[0] ),
        .I1(\tmod[7]_i_2_n_0 ),
        .I2(wr_addr[2]),
        .I3(\ram_wr_sel_reg[1] [1]),
        .I4(\ram_wr_sel_reg[1] [0]),
        .O(\ram_wr_sel_reg[2]_16 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \tl0[7]_i_2 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(wr_addr[3]),
        .I4(wr_addr[4]),
        .I5(\p0_out[0]_i_4_n_0 ),
        .O(\p0_out[0]_i_4_0 ));
  LUT6 #(
    .INIT(64'h554D555555555555)) 
    \tl1[4]_i_1 
       (.I0(\tl1_reg[4] ),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(wr_addr[2]),
        .I3(\tmod[7]_i_2_n_0 ),
        .I4(\tmod_reg[0] ),
        .I5(\ram_wr_sel_reg[1] [0]),
        .O(\tcon_s_reg[3] ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \tl1[6]_i_1 
       (.I0(\t2con_reg[6]_0 ),
        .I1(\ram_wr_sel_reg[2]_19 ),
        .I2(\tl1_reg[6]_0 ),
        .I3(\tl1[6]_i_3_n_0 ),
        .I4(tl1),
        .O(\tl1_reg[6] ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \tl1[6]_i_3 
       (.I0(\tcon_s_reg[3] ),
        .I1(\ram_wr_sel_reg[2]_19 ),
        .I2(\dat0[6]_i_9_2 [2]),
        .I3(\dat0[6]_i_9_2 [1]),
        .O(\tl1[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \tl2[7]_i_3 
       (.I0(wr_addr[2]),
        .I1(\ram_wr_sel_reg[1] [1]),
        .I2(\rcap2l[7]_i_2_n_0 ),
        .I3(\tmod_reg[0] ),
        .O(tf2_set9_out));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \tl2[7]_i_4 
       (.I0(\tmod_reg[0] ),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\rcap2l[7]_i_2_n_0 ),
        .I4(\ram_wr_sel_reg[1] [0]),
        .O(\ram_wr_sel_reg[2]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \tmod[7]_i_1 
       (.I0(\ram_wr_sel_reg[1] [0]),
        .I1(wr_addr[2]),
        .I2(\ram_wr_sel_reg[1] [1]),
        .I3(\tmod_reg[0] ),
        .I4(\tmod[7]_i_2_n_0 ),
        .O(\ram_wr_sel_reg[2]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \tmod[7]_i_2 
       (.I0(wr_addr[6]),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(\ram_wr_sel_reg[1] [2]),
        .I3(wr_addr[4]),
        .I4(wr_addr[3]),
        .O(\tmod[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_rem[0]_i_2 
       (.I0(\op1_r_reg[0] ),
        .I1(\pcon_reg[0] [2]),
        .I2(\pcon_reg[0]_0 ),
        .O(\src_sel1_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \tmp_rem[0]_i_3 
       (.I0(\iadr_t[8]_i_12 ),
        .I1(pc[0]),
        .I2(\pcon_reg[0] [0]),
        .I3(pc[8]),
        .I4(\pcon_reg[0] [1]),
        .O(\op1_r_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \tr_count[0]_i_1 
       (.I0(\ram_wr_sel_reg[2]_22 ),
        .I1(\tr_count_reg[0]_0 ),
        .O(\tr_count_reg[0] ));
  LUT6 #(
    .INIT(64'h0101FF00FFFFFFFF)) 
    wait_data_inv_i_1
       (.I0(wait_data_inv_i_2_n_0),
        .I1(wait_data_inv_i_3_n_0),
        .I2(pc_wr_r_i_5_n_0),
        .I3(\ram_rd_sel_r_reg[2]_2 ),
        .I4(\dat0[7]_i_4_n_0 ),
        .I5(state1),
        .O(wait_data1_out));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h08)) 
    wait_data_inv_i_2
       (.I0(\dat0_reg[7] ),
        .I1(\dat0[7]_i_13_n_0 ),
        .I2(\ram_rd_sel_r_reg[2]_1 ),
        .O(wait_data_inv_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000800000008000)) 
    wait_data_inv_i_3
       (.I0(pc_wr_r_i_10_n_0),
        .I1(\ram_wr_sel_reg[1] [3]),
        .I2(wr_bit_r),
        .I3(\p0_out_reg[7]_0 ),
        .I4(wait_data_inv_i_4_n_0),
        .I5(wait_data_inv_i_5_n_0),
        .O(wait_data_inv_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wait_data_inv_i_4
       (.I0(\ram_rd_sel_r_reg[2] [1]),
        .I1(\cdata_reg[1]_0 ),
        .O(wait_data_inv_i_4_n_0));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    wait_data_inv_i_5
       (.I0(rd_addr_r_reg_1[0]),
        .I1(op2_n[0]),
        .I2(\ram_rd_sel_r_reg[1] ),
        .I3(ri),
        .I4(pop_reg),
        .I5(\cdata_reg[0]_0 ),
        .O(wait_data_inv_i_5_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[0] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[0]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(\ram_wr_sel_reg[1] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[1] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[1]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(\ram_wr_sel_reg[1] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[2] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[2]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(wr_addr[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[3] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[3]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(wr_addr[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[4] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[4]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(wr_addr[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[5] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[5]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(\ram_wr_sel_reg[1] [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[6] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[6]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(wr_addr[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \wr_addr_reg[7] 
       (.CLR(1'b0),
        .D(rd_en_r_i_10[7]),
        .G(\data_lo_reg[0]_0 ),
        .GE(1'b1),
        .Q(\ram_wr_sel_reg[1] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    wr_bit_r_i_1
       (.I0(buff_reg_0_63_0_2_i_25_n_0),
        .O(bit_addr));
  LUT4 #(
    .INIT(16'hAAFE)) 
    wr_i_1
       (.I0(\ram_wr_sel[0]_i_3_n_0 ),
        .I1(\ram_rd_sel_r[2]_i_7_n_0 ),
        .I2(wr_i_2_n_0),
        .I3(p_0_in),
        .O(wr0_0));
  LUT6 #(
    .INIT(64'h0000FE0EFE0EFE0E)) 
    wr_i_2
       (.I0(wr_i_3_n_0),
        .I1(wr_i_4_n_0),
        .I2(wr_i_5_n_0),
        .I3(wr_i_6_n_0),
        .I4(\state_reg[1]_4 ),
        .I5(state1),
        .O(wr_i_2_n_0));
  LUT6 #(
    .INIT(64'h2A0020000A0A0808)) 
    wr_i_3
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\cdata_reg[6]_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(wr_i_3_n_0));
  LUT6 #(
    .INIT(64'hBBBABAAAABAABABB)) 
    wr_i_4
       (.I0(wr_i_7_n_0),
        .I1(\wr_sfr[0]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\alu_op[3]_i_5_n_0 ),
        .I4(\cdata_reg[6]_0 ),
        .I5(\cy_sel[1]_i_5_n_0 ),
        .O(wr_i_4_n_0));
  LUT6 #(
    .INIT(64'hFF3FFAFA00000000)) 
    wr_i_5
       (.I0(src_sel3_i_4_n_0),
        .I1(\cdata_reg[7]_1 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\cdata_reg[2]_0 ),
        .I5(wr_i_8_n_0),
        .O(wr_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h1)) 
    wr_i_6
       (.I0(\cy_sel[1]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .O(wr_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    wr_i_7
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[0]_0 ),
        .I2(\cdata_reg[3]_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[2]_0 ),
        .O(wr_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wr_i_8
       (.I0(\cdata_reg[3]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .O(wr_i_8_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAABABBBFBB)) 
    \wr_sfr[0]_i_1 
       (.I0(\wr_sfr[0]_i_2_n_0 ),
        .I1(\wr_sfr[0]_i_3_n_0 ),
        .I2(\wr_sfr[0]_i_4_n_0 ),
        .I3(\wr_sfr[0]_i_5_n_0 ),
        .I4(\wr_sfr[0]_i_6_n_0 ),
        .I5(\cy_sel_reg[0] ),
        .O(\state_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \wr_sfr[0]_i_2 
       (.I0(\wr_sfr[0]_i_8_n_0 ),
        .I1(state1),
        .I2(\state_reg[1]_4 ),
        .I3(p_0_in),
        .I4(\cdata_reg[3]_0 ),
        .I5(\cdata_reg[7]_1 ),
        .O(\wr_sfr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hA280E68B)) 
    \wr_sfr[0]_i_3 
       (.I0(\cdata_reg[7]_1 ),
        .I1(\alu_op[3]_i_5_n_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[6]_0 ),
        .I4(\ram_rd_sel_r[2]_i_11_n_0 ),
        .O(\wr_sfr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_sfr[0]_i_4 
       (.I0(\cdata_reg[0]_0 ),
        .I1(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\cdata_reg[6]_0 ),
        .O(\wr_sfr[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wr_sfr[0]_i_5 
       (.I0(\cdata_reg[2]_0 ),
        .I1(\cdata_reg[3]_0 ),
        .O(\wr_sfr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF5FFF7FFF5)) 
    \wr_sfr[0]_i_6 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\cy_sel[1]_i_5_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\cdata_reg[0]_0 ),
        .I4(\cdata_reg[7]_1 ),
        .I5(\alu_op[3]_i_5_n_0 ),
        .O(\wr_sfr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1000100000009800)) 
    \wr_sfr[0]_i_8 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .I2(\cy_sel[1]_i_5_n_0 ),
        .I3(\cdata_reg[2]_0 ),
        .I4(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I5(\cdata_reg[0]_0 ),
        .O(\wr_sfr[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h55550010)) 
    \wr_sfr[1]_i_1 
       (.I0(p_0_in),
        .I1(\state_reg[1]_4 ),
        .I2(\cdata_reg[7]_1 ),
        .I3(\wr_sfr[1]_i_3_n_0 ),
        .I4(\ram_rd_sel_r[2]_i_7_n_0 ),
        .O(\state_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'hFFAAABABAAAAAAAA)) 
    \wr_sfr[1]_i_2 
       (.I0(\wr_sfr[1]_i_4_n_0 ),
        .I1(\op[7]_i_3_n_0 ),
        .I2(reti_reg_1),
        .I3(cdata[7]),
        .I4(cdone),
        .I5(\mem_act[2]_i_2_n_0 ),
        .O(\cdata_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h00000000BBFBBBFF)) 
    \wr_sfr[1]_i_3 
       (.I0(\wr_sfr[0]_i_5_n_0 ),
        .I1(\wr_sfr[1]_i_5_n_0 ),
        .I2(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I3(\cy_sel[1]_i_5_n_0 ),
        .I4(\cdata_reg[3]_0 ),
        .I5(\wr_sfr[1]_i_6_n_0 ),
        .O(\wr_sfr[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \wr_sfr[1]_i_4 
       (.I0(\wr_sfr[1]_i_2_0 [7]),
        .I1(dmem_wait_reg_n_0),
        .I2(imem_wait_reg_0),
        .I3(pc_wr_r2),
        .I4(\op_pos_reg[1]_0 ),
        .O(\wr_sfr[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_sfr[1]_i_5 
       (.I0(\alu_op[3]_i_5_n_0 ),
        .I1(\cdata_reg[6]_0 ),
        .O(\wr_sfr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000880000000)) 
    \wr_sfr[1]_i_6 
       (.I0(\cdata_reg[6]_0 ),
        .I1(\wr_sfr[0]_i_5_n_0 ),
        .I2(\cdata_reg[0]_0 ),
        .I3(\ram_rd_sel_r[2]_i_5_n_0 ),
        .I4(\alu_op[3]_i_5_n_0 ),
        .I5(\cy_sel[1]_i_5_n_0 ),
        .O(\wr_sfr[1]_i_6_n_0 ));
endmodule

module oc8051_multiply
   (D,
    \cycle_reg[1]_0 ,
    \cycle_reg[0]_0 ,
    \tmp_mul_reg[13]_0 ,
    \tmp_mul_reg[0]_0 ,
    \tmp_mul_reg[0]_1 ,
    \tmp_mul_reg[8]_0 ,
    \tmp_mul_reg[8]_1 ,
    \tmp_mul_reg[12]_0 ,
    \cycle_reg[1]_1 ,
    clk_8051_BUFG,
    rst_IBUF,
    \cycle_reg[0]_1 );
  output [13:0]D;
  output \cycle_reg[1]_0 ;
  output \cycle_reg[0]_0 ;
  output [1:0]\tmp_mul_reg[13]_0 ;
  input [2:0]\tmp_mul_reg[0]_0 ;
  input [3:0]\tmp_mul_reg[0]_1 ;
  input [3:0]\tmp_mul_reg[8]_0 ;
  input [3:0]\tmp_mul_reg[8]_1 ;
  input [0:0]\tmp_mul_reg[12]_0 ;
  input \cycle_reg[1]_1 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \cycle_reg[0]_1 ;

  wire [15:10]C;
  wire [13:0]D;
  wire clk_8051_BUFG;
  wire \cycle_reg[0]_0 ;
  wire \cycle_reg[0]_1 ;
  wire \cycle_reg[1]_0 ;
  wire \cycle_reg[1]_1 ;
  wire [9:1]mul_result1__0;
  wire mul_result1_carry__0_n_0;
  wire mul_result1_carry__0_n_1;
  wire mul_result1_carry__0_n_2;
  wire mul_result1_carry__0_n_3;
  wire mul_result1_carry_n_0;
  wire mul_result1_carry_n_1;
  wire mul_result1_carry_n_2;
  wire mul_result1_carry_n_3;
  wire rst_IBUF;
  wire [13:0]tmp_mul;
  wire \tmp_mul[12]_i_5_n_0 ;
  wire \tmp_mul[4]_i_2_n_0 ;
  wire \tmp_mul[4]_i_3_n_0 ;
  wire \tmp_mul[4]_i_4_n_0 ;
  wire \tmp_mul[8]_i_2_n_0 ;
  wire \tmp_mul[8]_i_3_n_0 ;
  wire \tmp_mul[8]_i_4_n_0 ;
  wire \tmp_mul[8]_i_5_n_0 ;
  wire [2:0]\tmp_mul_reg[0]_0 ;
  wire [3:0]\tmp_mul_reg[0]_1 ;
  wire [0:0]\tmp_mul_reg[12]_0 ;
  wire \tmp_mul_reg[12]_i_1_n_0 ;
  wire \tmp_mul_reg[12]_i_1_n_1 ;
  wire \tmp_mul_reg[12]_i_1_n_2 ;
  wire \tmp_mul_reg[12]_i_1_n_3 ;
  wire [1:0]\tmp_mul_reg[13]_0 ;
  wire \tmp_mul_reg[13]_i_1_n_2 ;
  wire \tmp_mul_reg[13]_i_1_n_3 ;
  wire \tmp_mul_reg[4]_i_1_n_0 ;
  wire \tmp_mul_reg[4]_i_1_n_1 ;
  wire \tmp_mul_reg[4]_i_1_n_2 ;
  wire \tmp_mul_reg[4]_i_1_n_3 ;
  wire [3:0]\tmp_mul_reg[8]_0 ;
  wire [3:0]\tmp_mul_reg[8]_1 ;
  wire \tmp_mul_reg[8]_i_1_n_0 ;
  wire \tmp_mul_reg[8]_i_1_n_1 ;
  wire \tmp_mul_reg[8]_i_1_n_2 ;
  wire \tmp_mul_reg[8]_i_1_n_3 ;
  wire [3:0]NLW_mul_result1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_mul_result1_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_tmp_mul_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp_mul_reg[13]_i_1_O_UNCONNECTED ;

  FDCE #(
    .INIT(1'b0)) 
    \cycle_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\cycle_reg[0]_1 ),
        .Q(\cycle_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\cycle_reg[1]_1 ),
        .Q(\cycle_reg[1]_0 ));
  CARRY4 mul_result1_carry
       (.CI(1'b0),
        .CO({mul_result1_carry_n_0,mul_result1_carry_n_1,mul_result1_carry_n_2,mul_result1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\tmp_mul_reg[0]_0 ,1'b0}),
        .O({mul_result1__0[3:1],D[0]}),
        .S(\tmp_mul_reg[0]_1 ));
  CARRY4 mul_result1_carry__0
       (.CI(mul_result1_carry_n_0),
        .CO({mul_result1_carry__0_n_0,mul_result1_carry__0_n_1,mul_result1_carry__0_n_2,mul_result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\tmp_mul_reg[8]_0 ),
        .O(mul_result1__0[7:4]),
        .S(\tmp_mul_reg[8]_1 ));
  CARRY4 mul_result1_carry__1
       (.CI(mul_result1_carry__0_n_0),
        .CO({NLW_mul_result1_carry__1_CO_UNCONNECTED[3:2],mul_result1__0[9],NLW_mul_result1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_mul_result1_carry__1_O_UNCONNECTED[3:1],mul_result1__0[8]}),
        .S({1'b0,1'b0,1'b1,\tmp_mul_reg[12]_0 }));
  LUT3 #(
    .INIT(8'hA8)) 
    \tmp_mul[12]_i_2 
       (.I0(tmp_mul[10]),
        .I1(\cycle_reg[0]_0 ),
        .I2(\cycle_reg[1]_0 ),
        .O(C[12]));
  LUT3 #(
    .INIT(8'hA8)) 
    \tmp_mul[12]_i_3 
       (.I0(tmp_mul[9]),
        .I1(\cycle_reg[0]_0 ),
        .I2(\cycle_reg[1]_0 ),
        .O(C[11]));
  LUT3 #(
    .INIT(8'hA8)) 
    \tmp_mul[12]_i_4 
       (.I0(tmp_mul[8]),
        .I1(\cycle_reg[0]_0 ),
        .I2(\cycle_reg[1]_0 ),
        .O(C[10]));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[12]_i_5 
       (.I0(mul_result1__0[9]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[7]),
        .O(\tmp_mul[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \tmp_mul[13]_i_2 
       (.I0(tmp_mul[13]),
        .I1(\cycle_reg[0]_0 ),
        .I2(\cycle_reg[1]_0 ),
        .O(C[15]));
  LUT3 #(
    .INIT(8'hA8)) 
    \tmp_mul[13]_i_3 
       (.I0(tmp_mul[12]),
        .I1(\cycle_reg[0]_0 ),
        .I2(\cycle_reg[1]_0 ),
        .O(C[14]));
  LUT3 #(
    .INIT(8'hA8)) 
    \tmp_mul[13]_i_4 
       (.I0(tmp_mul[11]),
        .I1(\cycle_reg[0]_0 ),
        .I2(\cycle_reg[1]_0 ),
        .O(C[13]));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[4]_i_2 
       (.I0(mul_result1__0[4]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[2]),
        .O(\tmp_mul[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[4]_i_3 
       (.I0(mul_result1__0[3]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[1]),
        .O(\tmp_mul[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[4]_i_4 
       (.I0(mul_result1__0[2]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[0]),
        .O(\tmp_mul[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[8]_i_2 
       (.I0(mul_result1__0[8]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[6]),
        .O(\tmp_mul[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[8]_i_3 
       (.I0(mul_result1__0[7]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[5]),
        .O(\tmp_mul[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[8]_i_4 
       (.I0(mul_result1__0[6]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[4]),
        .O(\tmp_mul[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h56AA)) 
    \tmp_mul[8]_i_5 
       (.I0(mul_result1__0[5]),
        .I1(\cycle_reg[1]_0 ),
        .I2(\cycle_reg[0]_0 ),
        .I3(tmp_mul[3]),
        .O(\tmp_mul[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(tmp_mul[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[10]),
        .Q(tmp_mul[10]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[11]),
        .Q(tmp_mul[11]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[12] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[12]),
        .Q(tmp_mul[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_mul_reg[12]_i_1 
       (.CI(\tmp_mul_reg[8]_i_1_n_0 ),
        .CO({\tmp_mul_reg[12]_i_1_n_0 ,\tmp_mul_reg[12]_i_1_n_1 ,\tmp_mul_reg[12]_i_1_n_2 ,\tmp_mul_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mul_result1__0[9]}),
        .O(D[12:9]),
        .S({C[12:10],\tmp_mul[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[13] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[13]),
        .Q(tmp_mul[13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_mul_reg[13]_i_1 
       (.CI(\tmp_mul_reg[12]_i_1_n_0 ),
        .CO({\NLW_tmp_mul_reg[13]_i_1_CO_UNCONNECTED [3:2],\tmp_mul_reg[13]_i_1_n_2 ,\tmp_mul_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp_mul_reg[13]_i_1_O_UNCONNECTED [3],\tmp_mul_reg[13]_0 ,D[13]}),
        .S({1'b0,C[15:13]}));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(tmp_mul[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(tmp_mul[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(tmp_mul[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[4]),
        .Q(tmp_mul[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_mul_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\tmp_mul_reg[4]_i_1_n_0 ,\tmp_mul_reg[4]_i_1_n_1 ,\tmp_mul_reg[4]_i_1_n_2 ,\tmp_mul_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({mul_result1__0[4:2],1'b0}),
        .O(D[4:1]),
        .S({\tmp_mul[4]_i_2_n_0 ,\tmp_mul[4]_i_3_n_0 ,\tmp_mul[4]_i_4_n_0 ,mul_result1__0[1]}));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[5]),
        .Q(tmp_mul[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[6]),
        .Q(tmp_mul[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[7]),
        .Q(tmp_mul[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[8]),
        .Q(tmp_mul[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tmp_mul_reg[8]_i_1 
       (.CI(\tmp_mul_reg[4]_i_1_n_0 ),
        .CO({\tmp_mul_reg[8]_i_1_n_0 ,\tmp_mul_reg[8]_i_1_n_1 ,\tmp_mul_reg[8]_i_1_n_2 ,\tmp_mul_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mul_result1__0[8:5]),
        .O(D[8:5]),
        .S({\tmp_mul[8]_i_2_n_0 ,\tmp_mul[8]_i_3_n_0 ,\tmp_mul[8]_i_4_n_0 ,\tmp_mul[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_mul_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[9]),
        .Q(tmp_mul[9]));
endmodule

module oc8051_ports
   (p0_out,
    p1_out,
    \p2_out_reg[7]_0 ,
    \p2_out_reg[6]_0 ,
    \p2_out_reg[5]_0 ,
    \p2_out_reg[4]_0 ,
    \p2_out_reg[3]_0 ,
    \p2_out_reg[2]_0 ,
    \p2_out_reg[1]_0 ,
    \p2_out_reg[0]_0 ,
    \p3_out_reg[7]_0 ,
    \p3_out_reg[6]_0 ,
    \p3_out_reg[5]_0 ,
    \p3_out_reg[4]_0 ,
    \p3_out_reg[3]_0 ,
    \p3_out_reg[2]_0 ,
    \p3_out_reg[1]_0 ,
    \p3_out_reg[0]_0 ,
    bit_out_reg_i_34_0,
    \p3_out_reg[7]_1 ,
    \p3_out_reg[5]_1 ,
    \p3_out_reg[4]_1 ,
    \p3_out_reg[3]_1 ,
    \p3_out_reg[2]_1 ,
    \p3_out_reg[1]_1 ,
    \p3_out_reg[0]_1 ,
    \p1_out_reg[6]_0 ,
    \p1_out_reg[7]_0 ,
    \p1_out_reg[4]_0 ,
    \p1_out_reg[5]_0 ,
    \p1_out_reg[2]_0 ,
    \p1_out_reg[3]_0 ,
    \p1_out_reg[1]_0 ,
    \p0_out_reg[4]_0 ,
    \p0_out_reg[5]_0 ,
    \p0_out_reg[7]_0 ,
    \p0_out_reg[7]_1 ,
    clk_8051_BUFG,
    rst_IBUF,
    \p0_out_reg[6]_0 ,
    \p0_out_reg[5]_1 ,
    \p0_out_reg[4]_1 ,
    \p0_out_reg[3]_0 ,
    \p0_out_reg[2]_0 ,
    \p0_out_reg[1]_0 ,
    \p0_out_reg[0]_0 ,
    \p1_out_reg[7]_1 ,
    \p1_out_reg[6]_1 ,
    \p1_out_reg[5]_1 ,
    \p1_out_reg[4]_1 ,
    \p1_out_reg[3]_1 ,
    \p1_out_reg[2]_1 ,
    \p1_out_reg[1]_1 ,
    \p1_out_reg[0]_0 ,
    \p2_out_reg[7]_1 ,
    \p2_out_reg[6]_1 ,
    \p2_out_reg[5]_1 ,
    \p2_out_reg[4]_1 ,
    \p2_out_reg[3]_1 ,
    \p2_out_reg[2]_1 ,
    \p2_out_reg[1]_1 ,
    \p2_out_reg[0]_1 ,
    \p3_out_reg[7]_2 ,
    \p3_out_reg[6]_1 ,
    \p3_out_reg[5]_2 ,
    \p3_out_reg[4]_2 ,
    \p3_out_reg[3]_2 ,
    \p3_out_reg[2]_2 ,
    \p3_out_reg[1]_2 ,
    \p3_out_reg[0]_2 ,
    bit_out_i_4,
    bit_out_reg_i_15_0,
    bit_out_reg_i_33_0,
    bit_out_reg_i_33_1,
    \dat0[7]_i_9 ,
    \dat0[7]_i_9_0 ,
    b_reg,
    bit_out_i_62_0);
  output [7:0]p0_out;
  output [7:0]p1_out;
  output \p2_out_reg[7]_0 ;
  output \p2_out_reg[6]_0 ;
  output \p2_out_reg[5]_0 ;
  output \p2_out_reg[4]_0 ;
  output \p2_out_reg[3]_0 ;
  output \p2_out_reg[2]_0 ;
  output \p2_out_reg[1]_0 ;
  output \p2_out_reg[0]_0 ;
  output \p3_out_reg[7]_0 ;
  output \p3_out_reg[6]_0 ;
  output \p3_out_reg[5]_0 ;
  output \p3_out_reg[4]_0 ;
  output \p3_out_reg[3]_0 ;
  output \p3_out_reg[2]_0 ;
  output \p3_out_reg[1]_0 ;
  output \p3_out_reg[0]_0 ;
  output bit_out_reg_i_34_0;
  output \p3_out_reg[7]_1 ;
  output \p3_out_reg[5]_1 ;
  output \p3_out_reg[4]_1 ;
  output \p3_out_reg[3]_1 ;
  output \p3_out_reg[2]_1 ;
  output \p3_out_reg[1]_1 ;
  output \p3_out_reg[0]_1 ;
  output \p1_out_reg[6]_0 ;
  output \p1_out_reg[7]_0 ;
  output \p1_out_reg[4]_0 ;
  output \p1_out_reg[5]_0 ;
  output \p1_out_reg[2]_0 ;
  output \p1_out_reg[3]_0 ;
  output \p1_out_reg[1]_0 ;
  output \p0_out_reg[4]_0 ;
  output \p0_out_reg[5]_0 ;
  output \p0_out_reg[7]_0 ;
  input \p0_out_reg[7]_1 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \p0_out_reg[6]_0 ;
  input \p0_out_reg[5]_1 ;
  input \p0_out_reg[4]_1 ;
  input \p0_out_reg[3]_0 ;
  input \p0_out_reg[2]_0 ;
  input \p0_out_reg[1]_0 ;
  input \p0_out_reg[0]_0 ;
  input \p1_out_reg[7]_1 ;
  input \p1_out_reg[6]_1 ;
  input \p1_out_reg[5]_1 ;
  input \p1_out_reg[4]_1 ;
  input \p1_out_reg[3]_1 ;
  input \p1_out_reg[2]_1 ;
  input \p1_out_reg[1]_1 ;
  input \p1_out_reg[0]_0 ;
  input \p2_out_reg[7]_1 ;
  input \p2_out_reg[6]_1 ;
  input \p2_out_reg[5]_1 ;
  input \p2_out_reg[4]_1 ;
  input \p2_out_reg[3]_1 ;
  input \p2_out_reg[2]_1 ;
  input \p2_out_reg[1]_1 ;
  input \p2_out_reg[0]_1 ;
  input \p3_out_reg[7]_2 ;
  input \p3_out_reg[6]_1 ;
  input \p3_out_reg[5]_2 ;
  input \p3_out_reg[4]_2 ;
  input \p3_out_reg[3]_2 ;
  input \p3_out_reg[2]_2 ;
  input \p3_out_reg[1]_2 ;
  input \p3_out_reg[0]_2 ;
  input bit_out_i_4;
  input bit_out_reg_i_15_0;
  input [0:0]bit_out_reg_i_33_0;
  input bit_out_reg_i_33_1;
  input \dat0[7]_i_9 ;
  input \dat0[7]_i_9_0 ;
  input [6:0]b_reg;
  input bit_out_i_62_0;

  wire [6:0]b_reg;
  wire bit_out_i_4;
  wire bit_out_i_61_n_0;
  wire bit_out_i_62_0;
  wire bit_out_i_62_n_0;
  wire bit_out_i_63_n_0;
  wire bit_out_i_64_n_0;
  wire bit_out_i_78_n_0;
  wire bit_out_i_79_n_0;
  wire bit_out_i_80_n_0;
  wire bit_out_i_81_n_0;
  wire bit_out_i_82_n_0;
  wire bit_out_i_83_n_0;
  wire bit_out_i_84_n_0;
  wire bit_out_i_85_n_0;
  wire bit_out_i_86_n_0;
  wire bit_out_i_87_n_0;
  wire bit_out_i_88_n_0;
  wire bit_out_i_89_n_0;
  wire bit_out_i_90_n_0;
  wire bit_out_i_91_n_0;
  wire bit_out_i_92_n_0;
  wire bit_out_i_93_n_0;
  wire bit_out_reg_i_15_0;
  wire [0:0]bit_out_reg_i_33_0;
  wire bit_out_reg_i_33_1;
  wire bit_out_reg_i_33_n_0;
  wire bit_out_reg_i_34_0;
  wire bit_out_reg_i_34_n_0;
  wire clk_8051_BUFG;
  wire \dat0[7]_i_9 ;
  wire \dat0[7]_i_9_0 ;
  wire [7:0]p0_out;
  wire \p0_out_reg[0]_0 ;
  wire \p0_out_reg[1]_0 ;
  wire \p0_out_reg[2]_0 ;
  wire \p0_out_reg[3]_0 ;
  wire \p0_out_reg[4]_0 ;
  wire \p0_out_reg[4]_1 ;
  wire \p0_out_reg[5]_0 ;
  wire \p0_out_reg[5]_1 ;
  wire \p0_out_reg[6]_0 ;
  wire \p0_out_reg[7]_0 ;
  wire \p0_out_reg[7]_1 ;
  wire [7:0]p1_out;
  wire \p1_out_reg[0]_0 ;
  wire \p1_out_reg[1]_0 ;
  wire \p1_out_reg[1]_1 ;
  wire \p1_out_reg[2]_0 ;
  wire \p1_out_reg[2]_1 ;
  wire \p1_out_reg[3]_0 ;
  wire \p1_out_reg[3]_1 ;
  wire \p1_out_reg[4]_0 ;
  wire \p1_out_reg[4]_1 ;
  wire \p1_out_reg[5]_0 ;
  wire \p1_out_reg[5]_1 ;
  wire \p1_out_reg[6]_0 ;
  wire \p1_out_reg[6]_1 ;
  wire \p1_out_reg[7]_0 ;
  wire \p1_out_reg[7]_1 ;
  wire \p2_out_reg[0]_0 ;
  wire \p2_out_reg[0]_1 ;
  wire \p2_out_reg[1]_0 ;
  wire \p2_out_reg[1]_1 ;
  wire \p2_out_reg[2]_0 ;
  wire \p2_out_reg[2]_1 ;
  wire \p2_out_reg[3]_0 ;
  wire \p2_out_reg[3]_1 ;
  wire \p2_out_reg[4]_0 ;
  wire \p2_out_reg[4]_1 ;
  wire \p2_out_reg[5]_0 ;
  wire \p2_out_reg[5]_1 ;
  wire \p2_out_reg[6]_0 ;
  wire \p2_out_reg[6]_1 ;
  wire \p2_out_reg[7]_0 ;
  wire \p2_out_reg[7]_1 ;
  wire \p3_out_reg[0]_0 ;
  wire \p3_out_reg[0]_1 ;
  wire \p3_out_reg[0]_2 ;
  wire \p3_out_reg[1]_0 ;
  wire \p3_out_reg[1]_1 ;
  wire \p3_out_reg[1]_2 ;
  wire \p3_out_reg[2]_0 ;
  wire \p3_out_reg[2]_1 ;
  wire \p3_out_reg[2]_2 ;
  wire \p3_out_reg[3]_0 ;
  wire \p3_out_reg[3]_1 ;
  wire \p3_out_reg[3]_2 ;
  wire \p3_out_reg[4]_0 ;
  wire \p3_out_reg[4]_1 ;
  wire \p3_out_reg[4]_2 ;
  wire \p3_out_reg[5]_0 ;
  wire \p3_out_reg[5]_1 ;
  wire \p3_out_reg[5]_2 ;
  wire \p3_out_reg[6]_0 ;
  wire \p3_out_reg[6]_1 ;
  wire \p3_out_reg[7]_0 ;
  wire \p3_out_reg[7]_1 ;
  wire \p3_out_reg[7]_2 ;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'h5F5F5050303F303F)) 
    bit_out_i_61
       (.I0(bit_out_i_78_n_0),
        .I1(bit_out_i_79_n_0),
        .I2(bit_out_reg_i_33_0),
        .I3(bit_out_i_80_n_0),
        .I4(bit_out_i_81_n_0),
        .I5(bit_out_reg_i_33_1),
        .O(bit_out_i_61_n_0));
  LUT6 #(
    .INIT(64'h303F303F50505F5F)) 
    bit_out_i_62
       (.I0(bit_out_i_82_n_0),
        .I1(bit_out_i_83_n_0),
        .I2(bit_out_reg_i_33_0),
        .I3(bit_out_i_84_n_0),
        .I4(bit_out_i_85_n_0),
        .I5(bit_out_reg_i_33_1),
        .O(bit_out_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_63
       (.I0(bit_out_i_86_n_0),
        .I1(bit_out_i_87_n_0),
        .I2(bit_out_reg_i_33_0),
        .I3(bit_out_i_88_n_0),
        .I4(bit_out_reg_i_33_1),
        .I5(bit_out_i_89_n_0),
        .O(bit_out_i_63_n_0));
  LUT6 #(
    .INIT(64'h303F303F50505F5F)) 
    bit_out_i_64
       (.I0(bit_out_i_90_n_0),
        .I1(bit_out_i_91_n_0),
        .I2(bit_out_reg_i_33_0),
        .I3(bit_out_i_92_n_0),
        .I4(bit_out_i_93_n_0),
        .I5(bit_out_reg_i_33_1),
        .O(bit_out_i_64_n_0));
  LUT4 #(
    .INIT(16'hCC47)) 
    bit_out_i_78
       (.I0(\p3_out_reg[6]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\p3_out_reg[7]_0 ),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_78_n_0));
  LUT4 #(
    .INIT(16'h0047)) 
    bit_out_i_79
       (.I0(\p3_out_reg[4]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\p3_out_reg[5]_0 ),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_79_n_0));
  LUT4 #(
    .INIT(16'h0047)) 
    bit_out_i_80
       (.I0(\p3_out_reg[0]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\p3_out_reg[1]_0 ),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_80_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    bit_out_i_81
       (.I0(\p3_out_reg[2]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\p3_out_reg[3]_0 ),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_81_n_0));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    bit_out_i_82
       (.I0(\p2_out_reg[4]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\p2_out_reg[5]_0 ),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_82_n_0));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT4 #(
    .INIT(16'hCC47)) 
    bit_out_i_83
       (.I0(\p2_out_reg[6]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\p2_out_reg[7]_0 ),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_83_n_0));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    bit_out_i_84
       (.I0(\p2_out_reg[2]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\dat0[7]_i_9 ),
        .I3(\p2_out_reg[3]_0 ),
        .O(bit_out_i_84_n_0));
  LUT4 #(
    .INIT(16'hCC47)) 
    bit_out_i_85
       (.I0(\p2_out_reg[0]_0 ),
        .I1(bit_out_i_62_0),
        .I2(\p2_out_reg[1]_0 ),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_85_n_0));
  LUT4 #(
    .INIT(16'h33B8)) 
    bit_out_i_86
       (.I0(p1_out[6]),
        .I1(bit_out_i_62_0),
        .I2(p1_out[7]),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_86_n_0));
  LUT4 #(
    .INIT(16'hFFB8)) 
    bit_out_i_87
       (.I0(p1_out[4]),
        .I1(bit_out_i_62_0),
        .I2(p1_out[5]),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_87_n_0));
  LUT4 #(
    .INIT(16'h00B8)) 
    bit_out_i_88
       (.I0(p1_out[2]),
        .I1(bit_out_i_62_0),
        .I2(p1_out[3]),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_88_n_0));
  LUT4 #(
    .INIT(16'hFA0C)) 
    bit_out_i_89
       (.I0(p1_out[0]),
        .I1(p1_out[1]),
        .I2(\dat0[7]_i_9 ),
        .I3(bit_out_i_62_0),
        .O(bit_out_i_89_n_0));
  LUT4 #(
    .INIT(16'h0047)) 
    bit_out_i_90
       (.I0(p0_out[4]),
        .I1(bit_out_i_62_0),
        .I2(p0_out[5]),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_90_n_0));
  LUT4 #(
    .INIT(16'hCC47)) 
    bit_out_i_91
       (.I0(p0_out[6]),
        .I1(bit_out_i_62_0),
        .I2(p0_out[7]),
        .I3(\dat0[7]_i_9 ),
        .O(bit_out_i_91_n_0));
  LUT4 #(
    .INIT(16'hF4F7)) 
    bit_out_i_92
       (.I0(p0_out[2]),
        .I1(bit_out_i_62_0),
        .I2(\dat0[7]_i_9 ),
        .I3(p0_out[3]),
        .O(bit_out_i_92_n_0));
  LUT4 #(
    .INIT(16'hF4F7)) 
    bit_out_i_93
       (.I0(p0_out[0]),
        .I1(bit_out_i_62_0),
        .I2(\dat0[7]_i_9 ),
        .I3(p0_out[1]),
        .O(bit_out_i_93_n_0));
  MUXF8 bit_out_reg_i_15
       (.I0(bit_out_reg_i_33_n_0),
        .I1(bit_out_reg_i_34_n_0),
        .O(bit_out_reg_i_34_0),
        .S(bit_out_i_4));
  MUXF7 bit_out_reg_i_33
       (.I0(bit_out_i_61_n_0),
        .I1(bit_out_i_62_n_0),
        .O(bit_out_reg_i_33_n_0),
        .S(bit_out_reg_i_15_0));
  MUXF7 bit_out_reg_i_34
       (.I0(bit_out_i_63_n_0),
        .I1(bit_out_i_64_n_0),
        .O(bit_out_reg_i_34_n_0),
        .S(bit_out_reg_i_15_0));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \dat0[0]_i_7 
       (.I0(\p3_out_reg[0]_0 ),
        .I1(\dat0[7]_i_9 ),
        .I2(\dat0[7]_i_9_0 ),
        .I3(b_reg[0]),
        .O(\p3_out_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dat0[1]_i_14 
       (.I0(p1_out[1]),
        .I1(\dat0[7]_i_9 ),
        .O(\p1_out_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \dat0[1]_i_8 
       (.I0(\p3_out_reg[1]_0 ),
        .I1(\dat0[7]_i_9 ),
        .I2(\dat0[7]_i_9_0 ),
        .I3(b_reg[1]),
        .O(\p3_out_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dat0[2]_i_11 
       (.I0(p1_out[2]),
        .I1(\dat0[7]_i_9 ),
        .O(\p1_out_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT4 #(
    .INIT(16'hD0DF)) 
    \dat0[2]_i_7 
       (.I0(\p3_out_reg[2]_0 ),
        .I1(\dat0[7]_i_9 ),
        .I2(\dat0[7]_i_9_0 ),
        .I3(b_reg[2]),
        .O(\p3_out_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dat0[3]_i_11 
       (.I0(p1_out[3]),
        .I1(\dat0[7]_i_9 ),
        .O(\p1_out_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \dat0[3]_i_7 
       (.I0(\p3_out_reg[3]_0 ),
        .I1(\dat0[7]_i_9 ),
        .I2(\dat0[7]_i_9_0 ),
        .I3(b_reg[3]),
        .O(\p3_out_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dat0[4]_i_11 
       (.I0(p1_out[4]),
        .I1(\dat0[7]_i_9 ),
        .O(\p1_out_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dat0[4]_i_15 
       (.I0(p0_out[4]),
        .I1(\dat0[7]_i_9 ),
        .O(\p0_out_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \dat0[4]_i_7 
       (.I0(\p3_out_reg[4]_0 ),
        .I1(\dat0[7]_i_9 ),
        .I2(\dat0[7]_i_9_0 ),
        .I3(b_reg[4]),
        .O(\p3_out_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dat0[5]_i_11 
       (.I0(p1_out[5]),
        .I1(\dat0[7]_i_9 ),
        .O(\p1_out_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dat0[5]_i_15 
       (.I0(p0_out[5]),
        .I1(\dat0[7]_i_9 ),
        .O(\p0_out_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \dat0[5]_i_7 
       (.I0(\p3_out_reg[5]_0 ),
        .I1(\dat0[7]_i_9 ),
        .I2(\dat0[7]_i_9_0 ),
        .I3(b_reg[5]),
        .O(\p3_out_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dat0[6]_i_12 
       (.I0(p1_out[6]),
        .I1(\dat0[7]_i_9 ),
        .O(\p1_out_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT4 #(
    .INIT(16'h101F)) 
    \dat0[7]_i_22 
       (.I0(\p3_out_reg[7]_0 ),
        .I1(\dat0[7]_i_9 ),
        .I2(\dat0[7]_i_9_0 ),
        .I3(b_reg[6]),
        .O(\p3_out_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dat0[7]_i_33 
       (.I0(p1_out[7]),
        .I1(\dat0[7]_i_9 ),
        .O(\p1_out_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dat0[7]_i_39 
       (.I0(p0_out[7]),
        .I1(\dat0[7]_i_9 ),
        .O(\p0_out_reg[7]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[0]_0 ),
        .PRE(rst_IBUF),
        .Q(p0_out[0]));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[1]_0 ),
        .PRE(rst_IBUF),
        .Q(p0_out[1]));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[2]_0 ),
        .PRE(rst_IBUF),
        .Q(p0_out[2]));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[3]_0 ),
        .PRE(rst_IBUF),
        .Q(p0_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[4]_1 ),
        .PRE(rst_IBUF),
        .Q(p0_out[4]));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[5]_1 ),
        .PRE(rst_IBUF),
        .Q(p0_out[5]));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[6]_0 ),
        .PRE(rst_IBUF),
        .Q(p0_out[6]));
  FDPE #(
    .INIT(1'b1)) 
    \p0_out_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p0_out_reg[7]_1 ),
        .PRE(rst_IBUF),
        .Q(p0_out[7]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[0]_0 ),
        .PRE(rst_IBUF),
        .Q(p1_out[0]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[1]_1 ),
        .PRE(rst_IBUF),
        .Q(p1_out[1]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[2]_1 ),
        .PRE(rst_IBUF),
        .Q(p1_out[2]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[3]_1 ),
        .PRE(rst_IBUF),
        .Q(p1_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[4]_1 ),
        .PRE(rst_IBUF),
        .Q(p1_out[4]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[5]_1 ),
        .PRE(rst_IBUF),
        .Q(p1_out[5]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[6]_1 ),
        .PRE(rst_IBUF),
        .Q(p1_out[6]));
  FDPE #(
    .INIT(1'b1)) 
    \p1_out_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p1_out_reg[7]_1 ),
        .PRE(rst_IBUF),
        .Q(p1_out[7]));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[0]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[0]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[1]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[2]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[3]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[3]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[4]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[4]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[5]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[5]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[6]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[6]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p2_out_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p2_out_reg[7]_1 ),
        .PRE(rst_IBUF),
        .Q(\p2_out_reg[7]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[0]_2 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[0]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[1]_2 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[1]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[2]_2 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[3]_2 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[3]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[4]_2 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[4]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[5]_2 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[5]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[6]_1 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[6]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \p3_out_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\p3_out_reg[7]_2 ),
        .PRE(rst_IBUF),
        .Q(\p3_out_reg[7]_0 ));
endmodule

module oc8051_psw
   (\data_reg[7]_0 ,
    \data_reg[6]_0 ,
    psw,
    \data_reg[7]_1 ,
    \data_reg[6]_1 ,
    \data_reg[6]_2 ,
    \data_reg[4]_0 ,
    \data[2]_i_8_0 ,
    \data_reg[7]_2 ,
    clk_8051_BUFG,
    rst_IBUF,
    \data_reg[6]_3 ,
    \data_reg[5]_0 ,
    \data_reg[4]_1 ,
    \data_reg[3]_0 ,
    \data_reg[2]_0 ,
    \data_reg[1]_0 ,
    pc_wr_r_i_19,
    pc_wr_r_i_19_0,
    pc_wr_r_i_19_1,
    pc_wr_r_i_19_2,
    bit_out_i_13,
    bit_out_i_13_0,
    \iadr_t[1]_i_4 ,
    \ri_r[4]_i_2 ,
    \data[2]_i_6 ,
    \data[2]_i_6_0 );
  output \data_reg[7]_0 ;
  output \data_reg[6]_0 ;
  output [4:0]psw;
  output \data_reg[7]_1 ;
  output \data_reg[6]_1 ;
  output \data_reg[6]_2 ;
  output \data_reg[4]_0 ;
  output \data[2]_i_8_0 ;
  input \data_reg[7]_2 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \data_reg[6]_3 ;
  input \data_reg[5]_0 ;
  input \data_reg[4]_1 ;
  input \data_reg[3]_0 ;
  input \data_reg[2]_0 ;
  input \data_reg[1]_0 ;
  input pc_wr_r_i_19;
  input pc_wr_r_i_19_0;
  input pc_wr_r_i_19_1;
  input pc_wr_r_i_19_2;
  input bit_out_i_13;
  input bit_out_i_13_0;
  input \iadr_t[1]_i_4 ;
  input \ri_r[4]_i_2 ;
  input [1:0]\data[2]_i_6 ;
  input [5:0]\data[2]_i_6_0 ;

  wire bit_out_i_13;
  wire bit_out_i_13_0;
  wire clk_8051_BUFG;
  wire [1:0]\data[2]_i_6 ;
  wire [5:0]\data[2]_i_6_0 ;
  wire \data[2]_i_8_0 ;
  wire \data[2]_i_8_n_0 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[2]_0 ;
  wire \data_reg[3]_0 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[4]_1 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[6]_1 ;
  wire \data_reg[6]_2 ;
  wire \data_reg[6]_3 ;
  wire \data_reg[7]_0 ;
  wire \data_reg[7]_1 ;
  wire \data_reg[7]_2 ;
  wire \iadr_t[1]_i_4 ;
  wire pc_wr_r_i_19;
  wire pc_wr_r_i_19_0;
  wire pc_wr_r_i_19_1;
  wire pc_wr_r_i_19_2;
  wire [4:0]psw;
  wire \ri_r[4]_i_2 ;
  wire rst_IBUF;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_30
       (.I0(\data_reg[6]_0 ),
        .I1(\data_reg[7]_0 ),
        .I2(bit_out_i_13),
        .I3(psw[3]),
        .I4(bit_out_i_13_0),
        .I5(psw[4]),
        .O(\data_reg[6]_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data[2]_i_7 
       (.I0(\data[2]_i_6 [0]),
        .I1(\data[2]_i_6 [1]),
        .I2(\data[2]_i_6_0 [4]),
        .I3(\data[2]_i_6_0 [5]),
        .I4(\data[2]_i_8_n_0 ),
        .O(\data[2]_i_8_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data[2]_i_8 
       (.I0(\data[2]_i_6_0 [1]),
        .I1(\data[2]_i_6_0 [0]),
        .I2(\data[2]_i_6_0 [3]),
        .I3(\data[2]_i_6_0 [2]),
        .O(\data[2]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_reg[1]_0 ),
        .Q(psw[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_reg[2]_0 ),
        .Q(psw[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_reg[3]_0 ),
        .Q(psw[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_reg[4]_1 ),
        .Q(psw[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_reg[5]_0 ),
        .Q(psw[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_reg[6]_3 ),
        .Q(\data_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data_reg[7]_2 ),
        .Q(\data_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \iadr_t[1]_i_6 
       (.I0(\data_reg[6]_0 ),
        .I1(\iadr_t[1]_i_4 ),
        .O(\data_reg[6]_2 ));
  LUT5 #(
    .INIT(32'h23E320E0)) 
    pc_wr_r_i_29
       (.I0(\data_reg[7]_0 ),
        .I1(pc_wr_r_i_19),
        .I2(pc_wr_r_i_19_0),
        .I3(pc_wr_r_i_19_1),
        .I4(pc_wr_r_i_19_2),
        .O(\data_reg[7]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ri_r[4]_i_7 
       (.I0(psw[3]),
        .I1(\ri_r[4]_i_2 ),
        .O(\data_reg[4]_0 ));
endmodule

module oc8051_ram_256x8_two_bist
   (\bit_select_reg[1] ,
    \bit_select_reg[0] ,
    \bit_select_reg[1]_0 ,
    \bit_select_reg[0]_0 ,
    \bit_select_reg[1]_1 ,
    \bit_select_reg[1]_2 ,
    \cy_sel_reg[0] ,
    bit_out_reg,
    \dat0_reg[0] ,
    \dat0_reg[4] ,
    \dat0_reg[2] ,
    \dat0_reg[6] ,
    \dat0_reg[5] ,
    \dat0_reg[7] ,
    \dat0_reg[3] ,
    \dat0_reg[1] ,
    \bit_select_reg[2] ,
    \wr_data_r_reg[3] ,
    \wr_data_r_reg[2] ,
    \bit_select_reg[2]_0 ,
    \bit_select_reg[2]_1 ,
    clk_8051_BUFG,
    D,
    \rd_data_reg[0]_0 ,
    ADDRA,
    ADDRD,
    \rd_data_reg[0]_1 ,
    \rd_data_reg[0]_2 ,
    \rd_data_reg[0]_3 ,
    Q,
    wr_bit_r,
    \wr_data_r_reg[7] ,
    \wr_data_r_reg[1] ,
    \wr_data_r_reg[7]_0 ,
    \wr_data_r_reg[5] ,
    \wr_data_r_reg[6] ,
    \wr_data_r_reg[4] ,
    des1,
    \iadr_t[8]_i_12 ,
    \iadr_t[8]_i_12_0 ,
    sfr_bit,
    rd_addr_r,
    buff_reg_0_63_0_2_i_31,
    \iadr_t[13]_i_23 ,
    buff_reg_0_63_7_7_i_2_0,
    rd_en_r,
    \rd_data_reg[7]_0 ,
    \rd_data_reg[7]_1 ,
    E,
    rst_IBUF);
  output \bit_select_reg[1] ;
  output \bit_select_reg[0] ;
  output \bit_select_reg[1]_0 ;
  output \bit_select_reg[0]_0 ;
  output \bit_select_reg[1]_1 ;
  output \bit_select_reg[1]_2 ;
  output \cy_sel_reg[0] ;
  output bit_out_reg;
  output \dat0_reg[0] ;
  output \dat0_reg[4] ;
  output \dat0_reg[2] ;
  output \dat0_reg[6] ;
  output \dat0_reg[5] ;
  output \dat0_reg[7] ;
  output \dat0_reg[3] ;
  output \dat0_reg[1] ;
  output \bit_select_reg[2] ;
  output \wr_data_r_reg[3] ;
  output \wr_data_r_reg[2] ;
  output \bit_select_reg[2]_0 ;
  output \bit_select_reg[2]_1 ;
  input clk_8051_BUFG;
  input [1:0]D;
  input \rd_data_reg[0]_0 ;
  input [5:0]ADDRA;
  input [5:0]ADDRD;
  input \rd_data_reg[0]_1 ;
  input \rd_data_reg[0]_2 ;
  input \rd_data_reg[0]_3 ;
  input [2:0]Q;
  input wr_bit_r;
  input \wr_data_r_reg[7] ;
  input \wr_data_r_reg[1] ;
  input \wr_data_r_reg[7]_0 ;
  input \wr_data_r_reg[5] ;
  input \wr_data_r_reg[6] ;
  input \wr_data_r_reg[4] ;
  input [0:0]des1;
  input [0:0]\iadr_t[8]_i_12 ;
  input \iadr_t[8]_i_12_0 ;
  input sfr_bit;
  input rd_addr_r;
  input buff_reg_0_63_0_2_i_31;
  input [7:0]\iadr_t[13]_i_23 ;
  input [7:0]buff_reg_0_63_7_7_i_2_0;
  input rd_en_r;
  input \rd_data_reg[7]_0 ;
  input \rd_data_reg[7]_1 ;
  input [0:0]E;
  input rst_IBUF;

  wire [5:0]ADDRA;
  wire [5:0]ADDRD;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire bit_out_reg;
  wire \bit_select_reg[0] ;
  wire \bit_select_reg[0]_0 ;
  wire \bit_select_reg[1] ;
  wire \bit_select_reg[1]_0 ;
  wire \bit_select_reg[1]_1 ;
  wire \bit_select_reg[1]_2 ;
  wire \bit_select_reg[2] ;
  wire \bit_select_reg[2]_0 ;
  wire \bit_select_reg[2]_1 ;
  wire buff_reg_0_63_0_2_i_18_n_0;
  wire buff_reg_0_63_0_2_i_19_n_0;
  wire buff_reg_0_63_0_2_i_31;
  wire buff_reg_0_63_0_2_i_33_n_0;
  wire buff_reg_0_63_0_2_i_34_n_0;
  wire buff_reg_0_63_0_2_i_45_n_0;
  wire buff_reg_0_63_0_2_i_46_n_0;
  wire buff_reg_0_63_0_2_i_49_n_0;
  wire buff_reg_0_63_0_2_i_50_n_0;
  wire buff_reg_0_63_0_2_i_51_n_0;
  wire buff_reg_0_63_0_2_i_52_n_0;
  wire buff_reg_0_63_0_2_n_0;
  wire buff_reg_0_63_0_2_n_1;
  wire buff_reg_0_63_0_2_n_2;
  wire buff_reg_0_63_3_5_i_6_n_0;
  wire buff_reg_0_63_3_5_i_7_n_0;
  wire buff_reg_0_63_3_5_i_8_n_0;
  wire buff_reg_0_63_3_5_i_9_n_0;
  wire buff_reg_0_63_3_5_n_0;
  wire buff_reg_0_63_3_5_n_1;
  wire buff_reg_0_63_3_5_n_2;
  wire buff_reg_0_63_6_6_i_2_n_0;
  wire buff_reg_0_63_6_6_i_3_n_0;
  wire buff_reg_0_63_6_6_n_0;
  wire [7:0]buff_reg_0_63_7_7_i_2_0;
  wire buff_reg_0_63_7_7_i_2_n_0;
  wire buff_reg_0_63_7_7_i_3_n_0;
  wire buff_reg_0_63_7_7_n_0;
  wire buff_reg_128_191_0_2_n_0;
  wire buff_reg_128_191_0_2_n_1;
  wire buff_reg_128_191_0_2_n_2;
  wire buff_reg_128_191_3_5_n_0;
  wire buff_reg_128_191_3_5_n_1;
  wire buff_reg_128_191_3_5_n_2;
  wire buff_reg_128_191_6_6_n_0;
  wire buff_reg_128_191_7_7_n_0;
  wire buff_reg_192_255_0_2_n_0;
  wire buff_reg_192_255_0_2_n_1;
  wire buff_reg_192_255_0_2_n_2;
  wire buff_reg_192_255_3_5_n_0;
  wire buff_reg_192_255_3_5_n_1;
  wire buff_reg_192_255_3_5_n_2;
  wire buff_reg_192_255_6_6_n_0;
  wire buff_reg_192_255_7_7_n_0;
  wire buff_reg_64_127_0_2_n_0;
  wire buff_reg_64_127_0_2_n_1;
  wire buff_reg_64_127_0_2_n_2;
  wire buff_reg_64_127_3_5_n_0;
  wire buff_reg_64_127_3_5_n_1;
  wire buff_reg_64_127_3_5_n_2;
  wire buff_reg_64_127_6_6_n_0;
  wire buff_reg_64_127_7_7_n_0;
  wire clk_8051_BUFG;
  wire \cy_sel_reg[0] ;
  wire \dat0_reg[0] ;
  wire \dat0_reg[1] ;
  wire \dat0_reg[2] ;
  wire \dat0_reg[3] ;
  wire \dat0_reg[4] ;
  wire \dat0_reg[5] ;
  wire \dat0_reg[6] ;
  wire \dat0_reg[7] ;
  wire [0:0]des1;
  wire [7:0]\iadr_t[13]_i_23 ;
  wire [0:0]\iadr_t[8]_i_12 ;
  wire \iadr_t[8]_i_12_0 ;
  wire rd_addr_r;
  wire [7:0]rd_data0;
  wire \rd_data_reg[0]_0 ;
  wire \rd_data_reg[0]_1 ;
  wire \rd_data_reg[0]_2 ;
  wire \rd_data_reg[0]_3 ;
  wire \rd_data_reg[7]_0 ;
  wire \rd_data_reg[7]_1 ;
  wire \rd_data_reg_n_0_[0] ;
  wire \rd_data_reg_n_0_[1] ;
  wire \rd_data_reg_n_0_[2] ;
  wire \rd_data_reg_n_0_[3] ;
  wire \rd_data_reg_n_0_[4] ;
  wire \rd_data_reg_n_0_[5] ;
  wire \rd_data_reg_n_0_[6] ;
  wire \rd_data_reg_n_0_[7] ;
  wire rd_en_r;
  wire rst_IBUF;
  wire sfr_bit;
  wire wr_bit_r;
  wire \wr_data_r_reg[1] ;
  wire \wr_data_r_reg[2] ;
  wire \wr_data_r_reg[3] ;
  wire \wr_data_r_reg[4] ;
  wire \wr_data_r_reg[5] ;
  wire \wr_data_r_reg[6] ;
  wire \wr_data_r_reg[7] ;
  wire \wr_data_r_reg[7]_0 ;
  wire NLW_buff_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_buff_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_buff_reg_0_63_6_6_SPO_UNCONNECTED;
  wire NLW_buff_reg_0_63_7_7_SPO_UNCONNECTED;
  wire NLW_buff_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_buff_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_buff_reg_128_191_6_6_SPO_UNCONNECTED;
  wire NLW_buff_reg_128_191_7_7_SPO_UNCONNECTED;
  wire NLW_buff_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_buff_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_buff_reg_192_255_6_6_SPO_UNCONNECTED;
  wire NLW_buff_reg_192_255_7_7_SPO_UNCONNECTED;
  wire NLW_buff_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_buff_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_buff_reg_64_127_6_6_SPO_UNCONNECTED;
  wire NLW_buff_reg_64_127_7_7_SPO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \buff[0][0]_i_3 
       (.I0(\iadr_t[13]_i_23 [0]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[0]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[0] ),
        .O(\dat0_reg[0] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \buff[0][3]_i_9 
       (.I0(\iadr_t[13]_i_23 [3]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[3]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[3] ),
        .O(\dat0_reg[3] ));
  MUXF8 \buff_reg[0][3]_i_19 
       (.I0(buff_reg_0_63_0_2_i_46_n_0),
        .I1(buff_reg_0_63_0_2_i_45_n_0),
        .O(\bit_select_reg[2] ),
        .S(Q[2]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_0_63_0_2
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(\bit_select_reg[1] ),
        .DIB(\bit_select_reg[0] ),
        .DIC(D[0]),
        .DID(1'b0),
        .DOA(buff_reg_0_63_0_2_n_0),
        .DOB(buff_reg_0_63_0_2_n_1),
        .DOC(buff_reg_0_63_0_2_n_2),
        .DOD(NLW_buff_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    buff_reg_0_63_0_2_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(wr_bit_r),
        .I4(\wr_data_r_reg[7] ),
        .I5(buff_reg_0_63_0_2_i_18_n_0),
        .O(\bit_select_reg[1] ));
  LUT6 #(
    .INIT(64'hFAFAFACA0A0A0A0A)) 
    buff_reg_0_63_0_2_i_18
       (.I0(des1),
        .I1(Q[0]),
        .I2(wr_bit_r),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(buff_reg_0_63_0_2_i_33_n_0),
        .O(buff_reg_0_63_0_2_i_18_n_0));
  LUT6 #(
    .INIT(64'hF5F5F53505050505)) 
    buff_reg_0_63_0_2_i_19
       (.I0(\wr_data_r_reg[1] ),
        .I1(Q[0]),
        .I2(wr_bit_r),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(buff_reg_0_63_0_2_i_34_n_0),
        .O(buff_reg_0_63_0_2_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    buff_reg_0_63_0_2_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(wr_bit_r),
        .I4(\wr_data_r_reg[7] ),
        .I5(buff_reg_0_63_0_2_i_19_n_0),
        .O(\bit_select_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h04)) 
    buff_reg_0_63_0_2_i_20
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\bit_select_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_0_2_i_21
       (.I0(buff_reg_0_63_7_7_i_2_0[2]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[2] ),
        .O(\wr_data_r_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_0_2_i_33
       (.I0(buff_reg_0_63_7_7_i_2_0[0]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[0] ),
        .O(buff_reg_0_63_0_2_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_0_2_i_34
       (.I0(buff_reg_0_63_7_7_i_2_0[1]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[1] ),
        .O(buff_reg_0_63_0_2_i_34_n_0));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    buff_reg_0_63_0_2_i_40
       (.I0(sfr_bit),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_0_2_i_45_n_0),
        .I4(Q[2]),
        .I5(buff_reg_0_63_0_2_i_46_n_0),
        .O(bit_out_reg));
  MUXF7 buff_reg_0_63_0_2_i_45
       (.I0(buff_reg_0_63_0_2_i_49_n_0),
        .I1(buff_reg_0_63_0_2_i_50_n_0),
        .O(buff_reg_0_63_0_2_i_45_n_0),
        .S(Q[1]));
  MUXF7 buff_reg_0_63_0_2_i_46
       (.I0(buff_reg_0_63_0_2_i_51_n_0),
        .I1(buff_reg_0_63_0_2_i_52_n_0),
        .O(buff_reg_0_63_0_2_i_46_n_0),
        .S(Q[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    buff_reg_0_63_0_2_i_49
       (.I0(buff_reg_0_63_7_7_i_2_0[5]),
        .I1(\rd_data_reg_n_0_[5] ),
        .I2(Q[0]),
        .I3(buff_reg_0_63_7_7_i_2_0[4]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[4] ),
        .O(buff_reg_0_63_0_2_i_49_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    buff_reg_0_63_0_2_i_50
       (.I0(buff_reg_0_63_7_7_i_2_0[7]),
        .I1(\rd_data_reg_n_0_[7] ),
        .I2(Q[0]),
        .I3(buff_reg_0_63_7_7_i_2_0[6]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[6] ),
        .O(buff_reg_0_63_0_2_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    buff_reg_0_63_0_2_i_51
       (.I0(buff_reg_0_63_7_7_i_2_0[1]),
        .I1(\rd_data_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(buff_reg_0_63_7_7_i_2_0[0]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[0] ),
        .O(buff_reg_0_63_0_2_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    buff_reg_0_63_0_2_i_52
       (.I0(buff_reg_0_63_7_7_i_2_0[3]),
        .I1(\rd_data_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(buff_reg_0_63_7_7_i_2_0[2]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[2] ),
        .O(buff_reg_0_63_0_2_i_52_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_0_63_3_5
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(D[1]),
        .DIB(\bit_select_reg[1]_0 ),
        .DIC(\bit_select_reg[0]_0 ),
        .DID(1'b0),
        .DOA(buff_reg_0_63_3_5_n_0),
        .DOB(buff_reg_0_63_3_5_n_1),
        .DOC(buff_reg_0_63_3_5_n_2),
        .DOD(NLW_buff_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    buff_reg_0_63_3_5_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(wr_bit_r),
        .I4(\wr_data_r_reg[7] ),
        .I5(buff_reg_0_63_3_5_i_6_n_0),
        .O(\bit_select_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    buff_reg_0_63_3_5_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(wr_bit_r),
        .I4(\wr_data_r_reg[7] ),
        .I5(buff_reg_0_63_3_5_i_7_n_0),
        .O(\bit_select_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h40)) 
    buff_reg_0_63_3_5_i_4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\bit_select_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_3_5_i_5
       (.I0(buff_reg_0_63_7_7_i_2_0[3]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[3] ),
        .O(\wr_data_r_reg[3] ));
  LUT6 #(
    .INIT(64'hF5F5C5F505050505)) 
    buff_reg_0_63_3_5_i_6
       (.I0(\wr_data_r_reg[4] ),
        .I1(Q[0]),
        .I2(wr_bit_r),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(buff_reg_0_63_3_5_i_8_n_0),
        .O(buff_reg_0_63_3_5_i_6_n_0));
  LUT6 #(
    .INIT(64'hF700F7000000FFFF)) 
    buff_reg_0_63_3_5_i_7
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(buff_reg_0_63_3_5_i_9_n_0),
        .I4(\wr_data_r_reg[5] ),
        .I5(wr_bit_r),
        .O(buff_reg_0_63_3_5_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_3_5_i_8
       (.I0(buff_reg_0_63_7_7_i_2_0[4]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[4] ),
        .O(buff_reg_0_63_3_5_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_3_5_i_9
       (.I0(buff_reg_0_63_7_7_i_2_0[5]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[5] ),
        .O(buff_reg_0_63_3_5_i_9_n_0));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_0_63_6_6
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_1 ),
        .DPO(buff_reg_0_63_6_6_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_0_63_6_6_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    buff_reg_0_63_6_6_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(wr_bit_r),
        .I4(\wr_data_r_reg[7] ),
        .I5(buff_reg_0_63_6_6_i_2_n_0),
        .O(\bit_select_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hCFFF555500005555)) 
    buff_reg_0_63_6_6_i_2
       (.I0(\wr_data_r_reg[6] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(wr_bit_r),
        .I5(buff_reg_0_63_6_6_i_3_n_0),
        .O(buff_reg_0_63_6_6_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_6_6_i_3
       (.I0(buff_reg_0_63_7_7_i_2_0[6]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[6] ),
        .O(buff_reg_0_63_6_6_i_3_n_0));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_0_63_7_7
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_2 ),
        .DPO(buff_reg_0_63_7_7_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_0_63_7_7_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    buff_reg_0_63_7_7_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(wr_bit_r),
        .I4(\wr_data_r_reg[7] ),
        .I5(buff_reg_0_63_7_7_i_2_n_0),
        .O(\bit_select_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h3FFF555500005555)) 
    buff_reg_0_63_7_7_i_2
       (.I0(\wr_data_r_reg[7]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(wr_bit_r),
        .I5(buff_reg_0_63_7_7_i_3_n_0),
        .O(buff_reg_0_63_7_7_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    buff_reg_0_63_7_7_i_3
       (.I0(buff_reg_0_63_7_7_i_2_0[7]),
        .I1(rd_en_r),
        .I2(\rd_data_reg_n_0_[7] ),
        .O(buff_reg_0_63_7_7_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_128_191_0_2
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(\bit_select_reg[1] ),
        .DIB(\bit_select_reg[0] ),
        .DIC(D[0]),
        .DID(1'b0),
        .DOA(buff_reg_128_191_0_2_n_0),
        .DOB(buff_reg_128_191_0_2_n_1),
        .DOC(buff_reg_128_191_0_2_n_2),
        .DOD(NLW_buff_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_128_191_3_5
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(D[1]),
        .DIB(\bit_select_reg[1]_0 ),
        .DIC(\bit_select_reg[0]_0 ),
        .DID(1'b0),
        .DOA(buff_reg_128_191_3_5_n_0),
        .DOB(buff_reg_128_191_3_5_n_1),
        .DOC(buff_reg_128_191_3_5_n_2),
        .DOD(NLW_buff_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_2 ));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_128_191_6_6
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_1 ),
        .DPO(buff_reg_128_191_6_6_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_128_191_6_6_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_2 ));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_128_191_7_7
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_2 ),
        .DPO(buff_reg_128_191_7_7_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_128_191_7_7_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_192_255_0_2
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(\bit_select_reg[1] ),
        .DIB(\bit_select_reg[0] ),
        .DIC(D[0]),
        .DID(1'b0),
        .DOA(buff_reg_192_255_0_2_n_0),
        .DOB(buff_reg_192_255_0_2_n_1),
        .DOC(buff_reg_192_255_0_2_n_2),
        .DOD(NLW_buff_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_192_255_3_5
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(D[1]),
        .DIB(\bit_select_reg[1]_0 ),
        .DIC(\bit_select_reg[0]_0 ),
        .DID(1'b0),
        .DOA(buff_reg_192_255_3_5_n_0),
        .DOB(buff_reg_192_255_3_5_n_1),
        .DOC(buff_reg_192_255_3_5_n_2),
        .DOD(NLW_buff_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_3 ));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_192_255_6_6
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_1 ),
        .DPO(buff_reg_192_255_6_6_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_192_255_6_6_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_3 ));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_192_255_7_7
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_2 ),
        .DPO(buff_reg_192_255_7_7_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_192_255_7_7_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_64_127_0_2
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(\bit_select_reg[1] ),
        .DIB(\bit_select_reg[0] ),
        .DIC(D[0]),
        .DID(1'b0),
        .DOA(buff_reg_64_127_0_2_n_0),
        .DOB(buff_reg_64_127_0_2_n_1),
        .DOC(buff_reg_64_127_0_2_n_2),
        .DOD(NLW_buff_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    buff_reg_64_127_3_5
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRD),
        .DIA(D[1]),
        .DIB(\bit_select_reg[1]_0 ),
        .DIC(\bit_select_reg[0]_0 ),
        .DID(1'b0),
        .DOA(buff_reg_64_127_3_5_n_0),
        .DOB(buff_reg_64_127_3_5_n_1),
        .DOC(buff_reg_64_127_3_5_n_2),
        .DOD(NLW_buff_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_1 ));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_64_127_6_6
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_1 ),
        .DPO(buff_reg_64_127_6_6_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_64_127_6_6_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_1 ));
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "oc8051_top_1/oc8051_ram_top1/oc8051_idata/buff" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    buff_reg_64_127_7_7
       (.A0(ADDRD[0]),
        .A1(ADDRD[1]),
        .A2(ADDRD[2]),
        .A3(ADDRD[3]),
        .A4(ADDRD[4]),
        .A5(ADDRD[5]),
        .D(\bit_select_reg[1]_2 ),
        .DPO(buff_reg_64_127_7_7_n_0),
        .DPRA0(ADDRA[0]),
        .DPRA1(ADDRA[1]),
        .DPRA2(ADDRA[2]),
        .DPRA3(ADDRA[3]),
        .DPRA4(ADDRA[4]),
        .DPRA5(ADDRA[5]),
        .SPO(NLW_buff_reg_64_127_7_7_SPO_UNCONNECTED),
        .WCLK(clk_8051_BUFG),
        .WE(\rd_data_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \iadr_t[13]_i_11 
       (.I0(\iadr_t[13]_i_23 [5]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[5]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[5] ),
        .O(\dat0_reg[5] ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \iadr_t[8]_i_13 
       (.I0(\iadr_t[8]_i_12 ),
        .I1(buff_reg_0_63_0_2_i_46_n_0),
        .I2(Q[2]),
        .I3(buff_reg_0_63_0_2_i_45_n_0),
        .I4(\iadr_t[8]_i_12_0 ),
        .I5(sfr_bit),
        .O(\cy_sel_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[0]_i_1 
       (.I0(buff_reg_64_127_0_2_n_0),
        .I1(buff_reg_0_63_0_2_n_0),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_0_2_n_0),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_0_2_n_0),
        .O(rd_data0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[1]_i_1 
       (.I0(buff_reg_64_127_0_2_n_1),
        .I1(buff_reg_0_63_0_2_n_1),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_0_2_n_1),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_0_2_n_1),
        .O(rd_data0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[2]_i_1 
       (.I0(buff_reg_64_127_0_2_n_2),
        .I1(buff_reg_0_63_0_2_n_2),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_0_2_n_2),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_0_2_n_2),
        .O(rd_data0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[3]_i_1 
       (.I0(buff_reg_64_127_3_5_n_0),
        .I1(buff_reg_0_63_3_5_n_0),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_3_5_n_0),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_3_5_n_0),
        .O(rd_data0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[4]_i_1 
       (.I0(buff_reg_64_127_3_5_n_1),
        .I1(buff_reg_0_63_3_5_n_1),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_3_5_n_1),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_3_5_n_1),
        .O(rd_data0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[5]_i_1 
       (.I0(buff_reg_64_127_3_5_n_2),
        .I1(buff_reg_0_63_3_5_n_2),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_3_5_n_2),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_3_5_n_2),
        .O(rd_data0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[6]_i_1 
       (.I0(buff_reg_64_127_6_6_n_0),
        .I1(buff_reg_0_63_6_6_n_0),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_6_6_n_0),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_6_6_n_0),
        .O(rd_data0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data[7]_i_2 
       (.I0(buff_reg_64_127_7_7_n_0),
        .I1(buff_reg_0_63_7_7_n_0),
        .I2(\rd_data_reg[7]_0 ),
        .I3(buff_reg_192_255_7_7_n_0),
        .I4(\rd_data_reg[7]_1 ),
        .I5(buff_reg_128_191_7_7_n_0),
        .O(rd_data0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[0]),
        .Q(\rd_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[1]),
        .Q(\rd_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[2]),
        .Q(\rd_data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[3]),
        .Q(\rd_data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[4]),
        .Q(\rd_data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[5]),
        .Q(\rd_data_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[6]),
        .Q(\rd_data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(rd_data0[7]),
        .Q(\rd_data_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    sub1_carry__0_i_15
       (.I0(\iadr_t[13]_i_23 [6]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[6]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[6] ),
        .O(\dat0_reg[6] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    sub1_carry__0_i_20
       (.I0(\iadr_t[13]_i_23 [7]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[7]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[7] ),
        .O(\dat0_reg[7] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    sub1_carry_i_15
       (.I0(\iadr_t[13]_i_23 [2]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[2]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[2] ),
        .O(\dat0_reg[2] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    sub1_carry_i_16
       (.I0(\iadr_t[13]_i_23 [1]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[1]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[1] ),
        .O(\dat0_reg[1] ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    sub1_carry_i_20
       (.I0(\iadr_t[13]_i_23 [4]),
        .I1(rd_addr_r),
        .I2(buff_reg_0_63_0_2_i_31),
        .I3(buff_reg_0_63_7_7_i_2_0[4]),
        .I4(rd_en_r),
        .I5(\rd_data_reg_n_0_[4] ),
        .O(\dat0_reg[4] ));
endmodule

module oc8051_ram_top
   (\cy_sel_reg[0] ,
    bit_out_reg,
    \dat0_reg[0] ,
    \dat0_reg[4] ,
    \dat0_reg[2] ,
    \dat0_reg[6] ,
    \dat0_reg[5] ,
    \dat0_reg[7] ,
    \dat0_reg[3] ,
    \dat0_reg[1] ,
    \bit_select_reg[2]_0 ,
    \wr_data_r_reg[3]_0 ,
    \wr_data_r_reg[2]_0 ,
    \bit_select_reg[2]_1 ,
    \bit_select_reg[2]_2 ,
    rd_en,
    clk_8051_BUFG,
    rst_IBUF,
    \wr_data_r_reg[2]_1 ,
    \rd_data_reg[0] ,
    ADDRA,
    ADDRD,
    \rd_data_reg[0]_0 ,
    \rd_data_reg[0]_1 ,
    \rd_data_reg[0]_2 ,
    \wr_data_r_reg[3]_1 ,
    wr_bit_r,
    \wr_data_r_reg[7]_0 ,
    \wr_data_r_reg[1]_0 ,
    \wr_data_r_reg[7]_1 ,
    \wr_data_r_reg[5]_0 ,
    \wr_data_r_reg[6]_0 ,
    \wr_data_r_reg[4]_0 ,
    des1,
    \iadr_t[8]_i_12 ,
    \iadr_t[8]_i_12_0 ,
    sfr_bit,
    rd_addr_r,
    buff_reg_0_63_0_2_i_31,
    Q,
    \rd_data_reg[7] ,
    \rd_data_reg[7]_0 ,
    \bit_select_reg[2]_3 ,
    \bit_select_reg[1]_0 ,
    E);
  output \cy_sel_reg[0] ;
  output bit_out_reg;
  output \dat0_reg[0] ;
  output \dat0_reg[4] ;
  output \dat0_reg[2] ;
  output \dat0_reg[6] ;
  output \dat0_reg[5] ;
  output \dat0_reg[7] ;
  output \dat0_reg[3] ;
  output \dat0_reg[1] ;
  output \bit_select_reg[2]_0 ;
  output \wr_data_r_reg[3]_0 ;
  output \wr_data_r_reg[2]_0 ;
  output \bit_select_reg[2]_1 ;
  output \bit_select_reg[2]_2 ;
  input rd_en;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \wr_data_r_reg[2]_1 ;
  input \rd_data_reg[0] ;
  input [5:0]ADDRA;
  input [5:0]ADDRD;
  input \rd_data_reg[0]_0 ;
  input \rd_data_reg[0]_1 ;
  input \rd_data_reg[0]_2 ;
  input \wr_data_r_reg[3]_1 ;
  input wr_bit_r;
  input \wr_data_r_reg[7]_0 ;
  input \wr_data_r_reg[1]_0 ;
  input \wr_data_r_reg[7]_1 ;
  input \wr_data_r_reg[5]_0 ;
  input \wr_data_r_reg[6]_0 ;
  input \wr_data_r_reg[4]_0 ;
  input [0:0]des1;
  input [0:0]\iadr_t[8]_i_12 ;
  input \iadr_t[8]_i_12_0 ;
  input sfr_bit;
  input rd_addr_r;
  input buff_reg_0_63_0_2_i_31;
  input [7:0]Q;
  input \rd_data_reg[7] ;
  input \rd_data_reg[7]_0 ;
  input [1:0]\bit_select_reg[2]_3 ;
  input \bit_select_reg[1]_0 ;
  input [0:0]E;

  wire [5:0]ADDRA;
  wire [5:0]ADDRD;
  wire [0:0]E;
  wire [7:0]Q;
  wire bit_out_reg;
  wire \bit_select_reg[1]_0 ;
  wire \bit_select_reg[2]_0 ;
  wire \bit_select_reg[2]_1 ;
  wire \bit_select_reg[2]_2 ;
  wire [1:0]\bit_select_reg[2]_3 ;
  wire buff_reg_0_63_0_2_i_31;
  wire clk_8051_BUFG;
  wire \cy_sel_reg[0] ;
  wire \dat0_reg[0] ;
  wire \dat0_reg[1] ;
  wire \dat0_reg[2] ;
  wire \dat0_reg[3] ;
  wire \dat0_reg[4] ;
  wire \dat0_reg[5] ;
  wire \dat0_reg[6] ;
  wire \dat0_reg[7] ;
  wire [0:0]des1;
  wire [0:0]\iadr_t[8]_i_12 ;
  wire \iadr_t[8]_i_12_0 ;
  wire oc8051_idata_n_0;
  wire oc8051_idata_n_1;
  wire oc8051_idata_n_2;
  wire oc8051_idata_n_3;
  wire oc8051_idata_n_4;
  wire oc8051_idata_n_5;
  wire [2:0]p_0_in;
  wire rd_addr_r;
  wire \rd_data_reg[0] ;
  wire \rd_data_reg[0]_0 ;
  wire \rd_data_reg[0]_1 ;
  wire \rd_data_reg[0]_2 ;
  wire \rd_data_reg[7] ;
  wire \rd_data_reg[7]_0 ;
  wire rd_en;
  wire rd_en_r;
  wire rst_IBUF;
  wire sfr_bit;
  wire wr_bit_r;
  wire [7:0]wr_data_r;
  wire \wr_data_r_reg[1]_0 ;
  wire \wr_data_r_reg[2]_0 ;
  wire \wr_data_r_reg[2]_1 ;
  wire \wr_data_r_reg[3]_0 ;
  wire \wr_data_r_reg[3]_1 ;
  wire \wr_data_r_reg[4]_0 ;
  wire \wr_data_r_reg[5]_0 ;
  wire \wr_data_r_reg[6]_0 ;
  wire \wr_data_r_reg[7]_0 ;
  wire \wr_data_r_reg[7]_1 ;

  FDCE #(
    .INIT(1'b0)) 
    \bit_select_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\bit_select_reg[2]_3 [0]),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_select_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\bit_select_reg[1]_0 ),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_select_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\bit_select_reg[2]_3 [1]),
        .Q(p_0_in[2]));
  oc8051_ram_256x8_two_bist oc8051_idata
       (.ADDRA(ADDRA),
        .ADDRD(ADDRD),
        .D({\wr_data_r_reg[3]_1 ,\wr_data_r_reg[2]_1 }),
        .E(E),
        .Q(p_0_in),
        .bit_out_reg(bit_out_reg),
        .\bit_select_reg[0] (oc8051_idata_n_1),
        .\bit_select_reg[0]_0 (oc8051_idata_n_3),
        .\bit_select_reg[1] (oc8051_idata_n_0),
        .\bit_select_reg[1]_0 (oc8051_idata_n_2),
        .\bit_select_reg[1]_1 (oc8051_idata_n_4),
        .\bit_select_reg[1]_2 (oc8051_idata_n_5),
        .\bit_select_reg[2] (\bit_select_reg[2]_0 ),
        .\bit_select_reg[2]_0 (\bit_select_reg[2]_1 ),
        .\bit_select_reg[2]_1 (\bit_select_reg[2]_2 ),
        .buff_reg_0_63_0_2_i_31(buff_reg_0_63_0_2_i_31),
        .buff_reg_0_63_7_7_i_2_0(wr_data_r),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\cy_sel_reg[0] (\cy_sel_reg[0] ),
        .\dat0_reg[0] (\dat0_reg[0] ),
        .\dat0_reg[1] (\dat0_reg[1] ),
        .\dat0_reg[2] (\dat0_reg[2] ),
        .\dat0_reg[3] (\dat0_reg[3] ),
        .\dat0_reg[4] (\dat0_reg[4] ),
        .\dat0_reg[5] (\dat0_reg[5] ),
        .\dat0_reg[6] (\dat0_reg[6] ),
        .\dat0_reg[7] (\dat0_reg[7] ),
        .des1(des1),
        .\iadr_t[13]_i_23 (Q),
        .\iadr_t[8]_i_12 (\iadr_t[8]_i_12 ),
        .\iadr_t[8]_i_12_0 (\iadr_t[8]_i_12_0 ),
        .rd_addr_r(rd_addr_r),
        .\rd_data_reg[0]_0 (\rd_data_reg[0] ),
        .\rd_data_reg[0]_1 (\rd_data_reg[0]_0 ),
        .\rd_data_reg[0]_2 (\rd_data_reg[0]_1 ),
        .\rd_data_reg[0]_3 (\rd_data_reg[0]_2 ),
        .\rd_data_reg[7]_0 (\rd_data_reg[7] ),
        .\rd_data_reg[7]_1 (\rd_data_reg[7]_0 ),
        .rd_en_r(rd_en_r),
        .rst_IBUF(rst_IBUF),
        .sfr_bit(sfr_bit),
        .wr_bit_r(wr_bit_r),
        .\wr_data_r_reg[1] (\wr_data_r_reg[1]_0 ),
        .\wr_data_r_reg[2] (\wr_data_r_reg[2]_0 ),
        .\wr_data_r_reg[3] (\wr_data_r_reg[3]_0 ),
        .\wr_data_r_reg[4] (\wr_data_r_reg[4]_0 ),
        .\wr_data_r_reg[5] (\wr_data_r_reg[5]_0 ),
        .\wr_data_r_reg[6] (\wr_data_r_reg[6]_0 ),
        .\wr_data_r_reg[7] (\wr_data_r_reg[7]_0 ),
        .\wr_data_r_reg[7]_0 (\wr_data_r_reg[7]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_r_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(rd_en),
        .Q(rd_en_r));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(oc8051_idata_n_0),
        .Q(wr_data_r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(oc8051_idata_n_1),
        .Q(wr_data_r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\wr_data_r_reg[2]_1 ),
        .Q(wr_data_r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\wr_data_r_reg[3]_1 ),
        .Q(wr_data_r[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(oc8051_idata_n_2),
        .Q(wr_data_r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(oc8051_idata_n_3),
        .Q(wr_data_r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(oc8051_idata_n_4),
        .Q(wr_data_r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_r_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(oc8051_idata_n_5),
        .Q(wr_data_r[7]));
endmodule

module oc8051_sfr
   (pop,
    txd_OBUF,
    tf0_buff,
    tf0,
    wr_bit_r,
    O,
    \ram_wr_sel_reg[2] ,
    \tl1_reg[6] ,
    Q,
    \th2_reg[7] ,
    tx_done,
    \tcon_s_reg[3] ,
    int_proc_reg,
    tf2_set_reg,
    sfr_bit,
    state1,
    b_reg,
    cy,
    srcAc,
    psw,
    p0_out,
    p1_out,
    \p2_out_reg[7] ,
    \p2_out_reg[6] ,
    \p2_out_reg[5] ,
    \p2_out_reg[4] ,
    \p2_out_reg[3] ,
    \p2_out_reg[2] ,
    \p2_out_reg[1] ,
    \p2_out_reg[0] ,
    \p3_out_reg[7] ,
    \p3_out_reg[6] ,
    \p3_out_reg[5] ,
    \p3_out_reg[4] ,
    \p3_out_reg[3] ,
    \p3_out_reg[2] ,
    \p3_out_reg[1] ,
    \p3_out_reg[0] ,
    scon,
    ip,
    ie,
    t2con,
    \data_reg[7] ,
    bit_out_reg_i_36,
    bit_out_reg_i_34,
    \ip_reg[7] ,
    \ip_reg[0] ,
    \ip_reg[1] ,
    \ip_reg[2] ,
    \ip_reg[3] ,
    \ip_reg[4] ,
    \ip_reg[5] ,
    \ip_reg[6] ,
    \t2con_reg[7] ,
    \rcap2l_reg[6] ,
    \rcap2h_reg[6] ,
    \t2con_reg[1] ,
    \data_reg[6] ,
    \t2con_reg[6] ,
    \t2con_reg[2] ,
    \pcon_reg[0] ,
    \pcon_reg[1] ,
    \pcon_reg[2] ,
    \pcon_reg[3] ,
    \pcon_reg[4] ,
    \pcon_reg[5] ,
    \pcon_reg[6] ,
    \pcon_reg[7] ,
    \data_out_reg[7] ,
    \scon_reg[7] ,
    \sbuf_rxd_reg[0] ,
    \scon_reg[6] ,
    \scon_reg[3] ,
    \scon_reg[1] ,
    \scon_reg[2] ,
    \scon_reg[4] ,
    \scon_reg[5] ,
    \tmod_reg[6] ,
    D,
    tcon_ie1_reg,
    tcon_tf0_reg,
    \data_hi_reg[7] ,
    \tl0_reg[2] ,
    \tl0_reg[3] ,
    \tl0_reg[4] ,
    \tcon_s_reg[2] ,
    \tl0_reg[5] ,
    \tl0_reg[6] ,
    \ram_rd_sel_r_reg[0] ,
    \ram_rd_sel_r_reg[0]_0 ,
    \sp_reg[7] ,
    \data_reg[6]_0 ,
    \data_reg[4] ,
    \scon_reg[5]_0 ,
    \scon_reg[7]_0 ,
    \sbuf_rxd_tmp_reg[11] ,
    \tr_count_reg[0] ,
    wr_bit_r_reg_0,
    \op2_r_reg[7] ,
    \sp_reg[6] ,
    \sp_reg[5] ,
    \ram_wr_sel_reg[0] ,
    \ram_wr_sel_reg[0]_0 ,
    \sp_reg[3] ,
    \sp_reg[4] ,
    \int_vec_reg[1] ,
    \int_vec_reg[5] ,
    tx_done_reg,
    \sbuf_txd_reg[8] ,
    \tcon_s_reg[3]_0 ,
    \tmod_reg[1] ,
    \th0_reg[2] ,
    \th0_reg[7] ,
    \th0_reg[6] ,
    \th0_reg[5] ,
    \th0_reg[4] ,
    \th0_reg[3] ,
    \data[2]_i_8 ,
    int_ack_reg,
    \tmod_reg[5] ,
    \tmod_reg[5]_0 ,
    \tl1_reg[6]_0 ,
    \tmod_reg[5]_1 ,
    \tmod_reg[5]_2 ,
    \th0_reg[0] ,
    \tmod_reg[0] ,
    \rcap2l_reg[0] ,
    \isrc_reg[1][1] ,
    \dat0_reg[7]_0 ,
    pop_reg,
    clk_8051_BUFG,
    rst_IBUF,
    bit_addr,
    \sp_reg[7]_0 ,
    \sp_reg[3]_0 ,
    \sp_reg[3]_1 ,
    \sp_reg[7]_1 ,
    tcon_ie0_reg,
    tcon_ie1_reg_0,
    bit_out_reg_0,
    wait_data1_out,
    \data_out_reg[7]_0 ,
    \data_out_reg[6] ,
    \data_out_reg[5] ,
    \data_out_reg[4] ,
    \data_out_reg[3] ,
    \data_out_reg[2] ,
    \data_out_reg[1] ,
    \data_out_reg[0] ,
    \data_reg[7]_0 ,
    \data_reg[6]_1 ,
    \data_reg[5] ,
    \data_reg[4]_0 ,
    \data_reg[3] ,
    \data_reg[2] ,
    \data_reg[1] ,
    \p0_out_reg[7] ,
    \p0_out_reg[6] ,
    \p0_out_reg[5] ,
    \p0_out_reg[4] ,
    \p0_out_reg[3] ,
    \p0_out_reg[2] ,
    \p0_out_reg[1] ,
    \p0_out_reg[0] ,
    \p1_out_reg[7] ,
    \p1_out_reg[6] ,
    \p1_out_reg[5] ,
    \p1_out_reg[4] ,
    \p1_out_reg[3] ,
    \p1_out_reg[2] ,
    \p1_out_reg[1] ,
    \p1_out_reg[0] ,
    \p2_out_reg[7]_0 ,
    \p2_out_reg[6]_0 ,
    \p2_out_reg[5]_0 ,
    \p2_out_reg[4]_0 ,
    \p2_out_reg[3]_0 ,
    \p2_out_reg[2]_0 ,
    \p2_out_reg[1]_0 ,
    \p2_out_reg[0]_0 ,
    \p3_out_reg[7]_0 ,
    \p3_out_reg[6]_0 ,
    \p3_out_reg[5]_0 ,
    \p3_out_reg[4]_0 ,
    \p3_out_reg[3]_0 ,
    \p3_out_reg[2]_0 ,
    \p3_out_reg[1]_0 ,
    \p3_out_reg[0]_0 ,
    \scon_reg[7]_1 ,
    \scon_reg[6]_0 ,
    \scon_reg[5]_1 ,
    \scon_reg[4]_0 ,
    \scon_reg[3]_0 ,
    \scon_reg[2]_0 ,
    \scon_reg[1]_0 ,
    \scon_reg[0] ,
    \tcon_s_reg[3]_1 ,
    \tcon_s_reg[2]_0 ,
    \tcon_s_reg[1] ,
    \tcon_s_reg[0] ,
    \ip_reg[7]_0 ,
    \ip_reg[6]_0 ,
    \ip_reg[5]_0 ,
    \ip_reg[4]_0 ,
    \ip_reg[3]_0 ,
    \ip_reg[2]_0 ,
    \ip_reg[1]_0 ,
    \ip_reg[0]_0 ,
    \ie_reg[7] ,
    \ie_reg[6] ,
    \ie_reg[5] ,
    \ie_reg[4] ,
    \ie_reg[3] ,
    \ie_reg[2] ,
    \ie_reg[1] ,
    \ie_reg[0] ,
    \t2con_reg[7]_0 ,
    \t2con_reg[6]_0 ,
    \t2con_reg[5] ,
    \t2con_reg[4] ,
    \t2con_reg[3] ,
    \t2con_reg[2]_0 ,
    \t2con_reg[1]_0 ,
    \t2con_reg[0] ,
    pc_wr_r_i_19,
    pc_wr_r_i_19_0,
    pc_wr_r_i_19_1,
    bit_out_i_4,
    \dat0_reg[6]_0 ,
    \dat0_reg[6]_1 ,
    \dat0_reg[6]_2 ,
    \dat0[7]_i_9 ,
    bit_out_reg_i_35,
    \dat0[1]_i_5 ,
    \dat0[0]_i_8 ,
    \dat0[0]_i_8_0 ,
    \dat0_reg[0]_i_2 ,
    \dat0_reg[1]_i_4 ,
    \dat0_reg[1]_i_4_0 ,
    \dat0[7]_i_9_0 ,
    \dat0[7]_i_9_1 ,
    \dat0[7]_i_7 ,
    \dat0[7]_i_7_0 ,
    \dat0[1]_i_5_0 ,
    \dat0[3]_i_9 ,
    \sp_reg[7]_2 ,
    \dat0[0]_i_8_1 ,
    \bit_select[0]_i_2 ,
    \bit_select[0]_i_2_0 ,
    op2_n,
    \sp_reg[0] ,
    \th2_reg[1] ,
    tcon_tf0_reg_0,
    tcon_tf0_reg_1,
    \th2_reg[5] ,
    tcon_tf1_reg,
    des1,
    \th1_reg[4] ,
    \sbuf_txd_reg[8]_0 ,
    \th1_reg[0] ,
    wr_sbuf,
    \tl2_reg[4] ,
    \tl0_reg[3]_0 ,
    \tl0_reg[4]_0 ,
    \iadr_t[1]_i_4 ,
    \ri_r[4]_i_2 ,
    \scon_reg[0]_0 ,
    \scon_reg[0]_1 ,
    tf2_set9_out,
    tcon_tf1_reg_0,
    tcon_tf1_reg_1,
    tcon_tf1_reg_2,
    \th0_reg[0]_0 ,
    \th1_reg[0]_0 ,
    \sbuf_txd_reg[0] ,
    \buff_reg[7][7] ,
    op2_r,
    \wr_addr_reg[6]_i_3 ,
    \wr_addr_reg[7]_i_1 ,
    \wr_addr_reg[6]_i_1 ,
    \wr_addr_reg[6]_i_1_0 ,
    \wr_addr_reg[2]_i_1 ,
    \wr_addr_reg[2]_i_2 ,
    rxd_IBUF,
    \data[2]_i_6 ,
    \data[2]_i_6_0 ,
    int_ack,
    tcon_tf0_reg_2,
    tcon_tf1_reg_3,
    reti,
    tf0_reg,
    tf1_1_reg,
    \tl2_reg[6] ,
    \tl0_reg[7] ,
    \tl0_reg[7]_0 ,
    \th2_reg[6] ,
    \tl2_reg[2] ,
    \tl2_reg[3] ,
    \data_out_reg[7]_1 ,
    E,
    \data_hi_reg[7]_0 ,
    \data_lo_reg[0] ,
    \data_lo_reg[7] ,
    \pcon_reg[0]_0 ,
    \sbuf_txd_reg[7] ,
    \tr_count_reg[0]_0 ,
    \int_vec_reg[1]_0 ,
    \tmod_reg[0]_0 ,
    \th0_reg[7]_0 ,
    \tl1_reg[4] ,
    \tl1_reg[4]_0 ,
    \tl1_reg[6]_1 ,
    \rcap2l_reg[0]_0 ,
    \rcap2h_reg[0] ,
    \dat0_reg[7]_1 ,
    \dat0_reg[7]_2 );
  output pop;
  output txd_OBUF;
  output tf0_buff;
  output tf0;
  output wr_bit_r;
  output [1:0]O;
  output [3:0]\ram_wr_sel_reg[2] ;
  output [0:0]\tl1_reg[6] ;
  output [1:0]Q;
  output [1:0]\th2_reg[7] ;
  output tx_done;
  output [5:0]\tcon_s_reg[3] ;
  output int_proc_reg;
  output tf2_set_reg;
  output sfr_bit;
  output state1;
  output [7:0]b_reg;
  output cy;
  output srcAc;
  output [4:0]psw;
  output [7:0]p0_out;
  output [7:0]p1_out;
  output \p2_out_reg[7] ;
  output \p2_out_reg[6] ;
  output \p2_out_reg[5] ;
  output \p2_out_reg[4] ;
  output \p2_out_reg[3] ;
  output \p2_out_reg[2] ;
  output \p2_out_reg[1] ;
  output \p2_out_reg[0] ;
  output \p3_out_reg[7] ;
  output \p3_out_reg[6] ;
  output \p3_out_reg[5] ;
  output \p3_out_reg[4] ;
  output \p3_out_reg[3] ;
  output \p3_out_reg[2] ;
  output \p3_out_reg[1] ;
  output \p3_out_reg[0] ;
  output [7:0]scon;
  output [7:0]ip;
  output [7:0]ie;
  output [7:0]t2con;
  output \data_reg[7] ;
  output bit_out_reg_i_36;
  output bit_out_reg_i_34;
  output \ip_reg[7] ;
  output \ip_reg[0] ;
  output \ip_reg[1] ;
  output \ip_reg[2] ;
  output \ip_reg[3] ;
  output \ip_reg[4] ;
  output \ip_reg[5] ;
  output \ip_reg[6] ;
  output \t2con_reg[7] ;
  output [4:0]\rcap2l_reg[6] ;
  output [4:0]\rcap2h_reg[6] ;
  output \t2con_reg[1] ;
  output \data_reg[6] ;
  output \t2con_reg[6] ;
  output \t2con_reg[2] ;
  output \pcon_reg[0] ;
  output \pcon_reg[1] ;
  output \pcon_reg[2] ;
  output \pcon_reg[3] ;
  output \pcon_reg[4] ;
  output \pcon_reg[5] ;
  output \pcon_reg[6] ;
  output \pcon_reg[7] ;
  output [7:0]\data_out_reg[7] ;
  output \scon_reg[7] ;
  output [0:0]\sbuf_rxd_reg[0] ;
  output \scon_reg[6] ;
  output \scon_reg[3] ;
  output \scon_reg[1] ;
  output \scon_reg[2] ;
  output \scon_reg[4] ;
  output \scon_reg[5] ;
  output [3:0]\tmod_reg[6] ;
  output [2:0]D;
  output tcon_ie1_reg;
  output tcon_tf0_reg;
  output [7:0]\data_hi_reg[7] ;
  output \tl0_reg[2] ;
  output \tl0_reg[3] ;
  output \tl0_reg[4] ;
  output \tcon_s_reg[2] ;
  output \tl0_reg[5] ;
  output \tl0_reg[6] ;
  output \ram_rd_sel_r_reg[0] ;
  output \ram_rd_sel_r_reg[0]_0 ;
  output [7:0]\sp_reg[7] ;
  output \data_reg[6]_0 ;
  output \data_reg[4] ;
  output \scon_reg[5]_0 ;
  output \scon_reg[7]_0 ;
  output [0:0]\sbuf_rxd_tmp_reg[11] ;
  output [0:0]\tr_count_reg[0] ;
  output wr_bit_r_reg_0;
  output \op2_r_reg[7] ;
  output \sp_reg[6] ;
  output \sp_reg[5] ;
  output \ram_wr_sel_reg[0] ;
  output \ram_wr_sel_reg[0]_0 ;
  output \sp_reg[3] ;
  output \sp_reg[4] ;
  output [0:0]\int_vec_reg[1] ;
  output [3:0]\int_vec_reg[5] ;
  output tx_done_reg;
  output [6:0]\sbuf_txd_reg[8] ;
  output \tcon_s_reg[3]_0 ;
  output \tmod_reg[1] ;
  output \th0_reg[2] ;
  output \th0_reg[7] ;
  output \th0_reg[6] ;
  output \th0_reg[5] ;
  output \th0_reg[4] ;
  output \th0_reg[3] ;
  output \data[2]_i_8 ;
  output int_ack_reg;
  output \tmod_reg[5] ;
  output \tmod_reg[5]_0 ;
  output \tl1_reg[6]_0 ;
  output \tmod_reg[5]_1 ;
  output \tmod_reg[5]_2 ;
  output \th0_reg[0] ;
  output \tmod_reg[0] ;
  output \rcap2l_reg[0] ;
  output \isrc_reg[1][1] ;
  output [7:0]\dat0_reg[7]_0 ;
  input pop_reg;
  input clk_8051_BUFG;
  input rst_IBUF;
  input bit_addr;
  input [0:0]\sp_reg[7]_0 ;
  input [0:0]\sp_reg[3]_0 ;
  input [3:0]\sp_reg[3]_1 ;
  input [3:0]\sp_reg[7]_1 ;
  input tcon_ie0_reg;
  input tcon_ie1_reg_0;
  input bit_out_reg_0;
  input wait_data1_out;
  input \data_out_reg[7]_0 ;
  input \data_out_reg[6] ;
  input \data_out_reg[5] ;
  input \data_out_reg[4] ;
  input \data_out_reg[3] ;
  input \data_out_reg[2] ;
  input \data_out_reg[1] ;
  input \data_out_reg[0] ;
  input \data_reg[7]_0 ;
  input \data_reg[6]_1 ;
  input \data_reg[5] ;
  input \data_reg[4]_0 ;
  input \data_reg[3] ;
  input \data_reg[2] ;
  input \data_reg[1] ;
  input \p0_out_reg[7] ;
  input \p0_out_reg[6] ;
  input \p0_out_reg[5] ;
  input \p0_out_reg[4] ;
  input \p0_out_reg[3] ;
  input \p0_out_reg[2] ;
  input \p0_out_reg[1] ;
  input \p0_out_reg[0] ;
  input \p1_out_reg[7] ;
  input \p1_out_reg[6] ;
  input \p1_out_reg[5] ;
  input \p1_out_reg[4] ;
  input \p1_out_reg[3] ;
  input \p1_out_reg[2] ;
  input \p1_out_reg[1] ;
  input \p1_out_reg[0] ;
  input \p2_out_reg[7]_0 ;
  input \p2_out_reg[6]_0 ;
  input \p2_out_reg[5]_0 ;
  input \p2_out_reg[4]_0 ;
  input \p2_out_reg[3]_0 ;
  input \p2_out_reg[2]_0 ;
  input \p2_out_reg[1]_0 ;
  input \p2_out_reg[0]_0 ;
  input \p3_out_reg[7]_0 ;
  input \p3_out_reg[6]_0 ;
  input \p3_out_reg[5]_0 ;
  input \p3_out_reg[4]_0 ;
  input \p3_out_reg[3]_0 ;
  input \p3_out_reg[2]_0 ;
  input \p3_out_reg[1]_0 ;
  input \p3_out_reg[0]_0 ;
  input \scon_reg[7]_1 ;
  input \scon_reg[6]_0 ;
  input \scon_reg[5]_1 ;
  input \scon_reg[4]_0 ;
  input \scon_reg[3]_0 ;
  input \scon_reg[2]_0 ;
  input \scon_reg[1]_0 ;
  input \scon_reg[0] ;
  input \tcon_s_reg[3]_1 ;
  input \tcon_s_reg[2]_0 ;
  input \tcon_s_reg[1] ;
  input \tcon_s_reg[0] ;
  input \ip_reg[7]_0 ;
  input \ip_reg[6]_0 ;
  input \ip_reg[5]_0 ;
  input \ip_reg[4]_0 ;
  input \ip_reg[3]_0 ;
  input \ip_reg[2]_0 ;
  input \ip_reg[1]_0 ;
  input \ip_reg[0]_0 ;
  input \ie_reg[7] ;
  input \ie_reg[6] ;
  input \ie_reg[5] ;
  input \ie_reg[4] ;
  input \ie_reg[3] ;
  input \ie_reg[2] ;
  input \ie_reg[1] ;
  input \ie_reg[0] ;
  input \t2con_reg[7]_0 ;
  input \t2con_reg[6]_0 ;
  input \t2con_reg[5] ;
  input \t2con_reg[4] ;
  input \t2con_reg[3] ;
  input \t2con_reg[2]_0 ;
  input \t2con_reg[1]_0 ;
  input \t2con_reg[0] ;
  input pc_wr_r_i_19;
  input pc_wr_r_i_19_0;
  input pc_wr_r_i_19_1;
  input bit_out_i_4;
  input \dat0_reg[6]_0 ;
  input [0:0]\dat0_reg[6]_1 ;
  input \dat0_reg[6]_2 ;
  input \dat0[7]_i_9 ;
  input bit_out_reg_i_35;
  input \dat0[1]_i_5 ;
  input \dat0[0]_i_8 ;
  input \dat0[0]_i_8_0 ;
  input \dat0_reg[0]_i_2 ;
  input \dat0_reg[1]_i_4 ;
  input \dat0_reg[1]_i_4_0 ;
  input \dat0[7]_i_9_0 ;
  input \dat0[7]_i_9_1 ;
  input \dat0[7]_i_7 ;
  input \dat0[7]_i_7_0 ;
  input \dat0[1]_i_5_0 ;
  input \dat0[3]_i_9 ;
  input [3:0]\sp_reg[7]_2 ;
  input \dat0[0]_i_8_1 ;
  input [0:0]\bit_select[0]_i_2 ;
  input \bit_select[0]_i_2_0 ;
  input [1:0]op2_n;
  input \sp_reg[0] ;
  input \th2_reg[1] ;
  input tcon_tf0_reg_0;
  input tcon_tf0_reg_1;
  input \th2_reg[5] ;
  input tcon_tf1_reg;
  input [7:0]des1;
  input \th1_reg[4] ;
  input \sbuf_txd_reg[8]_0 ;
  input \th1_reg[0] ;
  input wr_sbuf;
  input \tl2_reg[4] ;
  input [0:0]\tl0_reg[3]_0 ;
  input \tl0_reg[4]_0 ;
  input \iadr_t[1]_i_4 ;
  input \ri_r[4]_i_2 ;
  input \scon_reg[0]_0 ;
  input \scon_reg[0]_1 ;
  input tf2_set9_out;
  input [1:0]tcon_tf1_reg_0;
  input tcon_tf1_reg_1;
  input tcon_tf1_reg_2;
  input \th0_reg[0]_0 ;
  input \th1_reg[0]_0 ;
  input \sbuf_txd_reg[0] ;
  input \buff_reg[7][7] ;
  input [4:0]op2_r;
  input [2:0]\wr_addr_reg[6]_i_3 ;
  input [4:0]\wr_addr_reg[7]_i_1 ;
  input \wr_addr_reg[6]_i_1 ;
  input \wr_addr_reg[6]_i_1_0 ;
  input [1:0]\wr_addr_reg[2]_i_1 ;
  input \wr_addr_reg[2]_i_2 ;
  input rxd_IBUF;
  input [1:0]\data[2]_i_6 ;
  input [5:0]\data[2]_i_6_0 ;
  input int_ack;
  input tcon_tf0_reg_2;
  input tcon_tf1_reg_3;
  input reti;
  input tf0_reg;
  input tf1_1_reg;
  input \tl2_reg[6] ;
  input \tl0_reg[7] ;
  input \tl0_reg[7]_0 ;
  input \th2_reg[6] ;
  input \tl2_reg[2] ;
  input \tl2_reg[3] ;
  input [7:0]\data_out_reg[7]_1 ;
  input [0:0]E;
  input [7:0]\data_hi_reg[7]_0 ;
  input [0:0]\data_lo_reg[0] ;
  input [7:0]\data_lo_reg[7] ;
  input [0:0]\pcon_reg[0]_0 ;
  input [6:0]\sbuf_txd_reg[7] ;
  input [0:0]\tr_count_reg[0]_0 ;
  input [0:0]\int_vec_reg[1]_0 ;
  input [0:0]\tmod_reg[0]_0 ;
  input [7:0]\th0_reg[7]_0 ;
  input [0:0]\tl1_reg[4] ;
  input [3:0]\tl1_reg[4]_0 ;
  input \tl1_reg[6]_1 ;
  input [0:0]\rcap2l_reg[0]_0 ;
  input [0:0]\rcap2h_reg[0] ;
  input [0:0]\dat0_reg[7]_1 ;
  input [7:0]\dat0_reg[7]_2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [1:0]O;
  wire [1:0]Q;
  wire [7:0]b_reg;
  wire bit_addr;
  wire bit_out_i_4;
  wire bit_out_reg_0;
  wire bit_out_reg_i_34;
  wire bit_out_reg_i_35;
  wire bit_out_reg_i_36;
  wire [0:0]\bit_select[0]_i_2 ;
  wire \bit_select[0]_i_2_0 ;
  wire brate2;
  wire \buff_reg[7][7] ;
  wire clk_8051_BUFG;
  wire cy;
  wire \dat0[0]_i_8 ;
  wire \dat0[0]_i_8_0 ;
  wire \dat0[0]_i_8_1 ;
  wire \dat0[1]_i_5 ;
  wire \dat0[1]_i_5_0 ;
  wire \dat0[3]_i_9 ;
  wire \dat0[7]_i_7 ;
  wire \dat0[7]_i_7_0 ;
  wire \dat0[7]_i_9 ;
  wire \dat0[7]_i_9_0 ;
  wire \dat0[7]_i_9_1 ;
  wire \dat0_reg[0]_i_2 ;
  wire \dat0_reg[1]_i_4 ;
  wire \dat0_reg[1]_i_4_0 ;
  wire \dat0_reg[6]_0 ;
  wire [0:0]\dat0_reg[6]_1 ;
  wire \dat0_reg[6]_2 ;
  wire [7:0]\dat0_reg[7]_0 ;
  wire [0:0]\dat0_reg[7]_1 ;
  wire [7:0]\dat0_reg[7]_2 ;
  wire [1:0]\data[2]_i_6 ;
  wire [5:0]\data[2]_i_6_0 ;
  wire \data[2]_i_8 ;
  wire [7:0]\data_hi_reg[7] ;
  wire [7:0]\data_hi_reg[7]_0 ;
  wire [0:0]\data_lo_reg[0] ;
  wire [7:0]\data_lo_reg[7] ;
  wire \data_out_reg[0] ;
  wire \data_out_reg[1] ;
  wire \data_out_reg[2] ;
  wire \data_out_reg[3] ;
  wire \data_out_reg[4] ;
  wire \data_out_reg[5] ;
  wire \data_out_reg[6] ;
  wire [7:0]\data_out_reg[7] ;
  wire \data_out_reg[7]_0 ;
  wire [7:0]\data_out_reg[7]_1 ;
  wire \data_reg[1] ;
  wire \data_reg[2] ;
  wire \data_reg[3] ;
  wire \data_reg[4] ;
  wire \data_reg[4]_0 ;
  wire \data_reg[5] ;
  wire \data_reg[6] ;
  wire \data_reg[6]_0 ;
  wire \data_reg[6]_1 ;
  wire \data_reg[7] ;
  wire \data_reg[7]_0 ;
  wire [7:0]des1;
  wire [7:0]dptr_lo;
  wire \iadr_t[1]_i_4 ;
  wire [7:0]ie;
  wire \ie_reg[0] ;
  wire \ie_reg[1] ;
  wire \ie_reg[2] ;
  wire \ie_reg[3] ;
  wire \ie_reg[4] ;
  wire \ie_reg[5] ;
  wire \ie_reg[6] ;
  wire \ie_reg[7] ;
  wire int_ack;
  wire int_ack_reg;
  wire int_proc_reg;
  wire [0:0]\int_vec_reg[1] ;
  wire [0:0]\int_vec_reg[1]_0 ;
  wire [3:0]\int_vec_reg[5] ;
  wire [7:0]ip;
  wire \ip_reg[0] ;
  wire \ip_reg[0]_0 ;
  wire \ip_reg[1] ;
  wire \ip_reg[1]_0 ;
  wire \ip_reg[2] ;
  wire \ip_reg[2]_0 ;
  wire \ip_reg[3] ;
  wire \ip_reg[3]_0 ;
  wire \ip_reg[4] ;
  wire \ip_reg[4]_0 ;
  wire \ip_reg[5] ;
  wire \ip_reg[5]_0 ;
  wire \ip_reg[6] ;
  wire \ip_reg[6]_0 ;
  wire \ip_reg[7] ;
  wire \ip_reg[7]_0 ;
  wire \isrc_reg[1][1] ;
  wire oc8051_acc1_n_0;
  wire oc8051_int1_n_33;
  wire oc8051_int1_n_34;
  wire oc8051_int1_n_37;
  wire oc8051_int1_n_38;
  wire oc8051_int1_n_40;
  wire oc8051_int1_n_46;
  wire oc8051_int1_n_47;
  wire oc8051_ports1_n_33;
  wire oc8051_ports1_n_34;
  wire oc8051_ports1_n_35;
  wire oc8051_ports1_n_36;
  wire oc8051_ports1_n_37;
  wire oc8051_ports1_n_38;
  wire oc8051_ports1_n_39;
  wire oc8051_ports1_n_40;
  wire oc8051_ports1_n_41;
  wire oc8051_ports1_n_42;
  wire oc8051_ports1_n_43;
  wire oc8051_ports1_n_44;
  wire oc8051_ports1_n_45;
  wire oc8051_ports1_n_46;
  wire oc8051_ports1_n_47;
  wire oc8051_ports1_n_48;
  wire oc8051_ports1_n_49;
  wire oc8051_tc1_n_10;
  wire oc8051_tc1_n_11;
  wire oc8051_tc1_n_14;
  wire oc8051_tc1_n_16;
  wire oc8051_tc1_n_17;
  wire oc8051_tc1_n_18;
  wire oc8051_tc1_n_27;
  wire oc8051_tc1_n_28;
  wire oc8051_tc1_n_4;
  wire oc8051_tc1_n_5;
  wire oc8051_tc1_n_6;
  wire oc8051_tc1_n_7;
  wire oc8051_tc21_n_24;
  wire oc8051_tc21_n_26;
  wire oc8051_uatr1_n_11;
  wire [1:0]op2_n;
  wire [4:0]op2_r;
  wire \op2_r_reg[7] ;
  wire [7:0]p0_out;
  wire \p0_out_reg[0] ;
  wire \p0_out_reg[1] ;
  wire \p0_out_reg[2] ;
  wire \p0_out_reg[3] ;
  wire \p0_out_reg[4] ;
  wire \p0_out_reg[5] ;
  wire \p0_out_reg[6] ;
  wire \p0_out_reg[7] ;
  wire [7:0]p1_out;
  wire \p1_out_reg[0] ;
  wire \p1_out_reg[1] ;
  wire \p1_out_reg[2] ;
  wire \p1_out_reg[3] ;
  wire \p1_out_reg[4] ;
  wire \p1_out_reg[5] ;
  wire \p1_out_reg[6] ;
  wire \p1_out_reg[7] ;
  wire \p2_out_reg[0] ;
  wire \p2_out_reg[0]_0 ;
  wire \p2_out_reg[1] ;
  wire \p2_out_reg[1]_0 ;
  wire \p2_out_reg[2] ;
  wire \p2_out_reg[2]_0 ;
  wire \p2_out_reg[3] ;
  wire \p2_out_reg[3]_0 ;
  wire \p2_out_reg[4] ;
  wire \p2_out_reg[4]_0 ;
  wire \p2_out_reg[5] ;
  wire \p2_out_reg[5]_0 ;
  wire \p2_out_reg[6] ;
  wire \p2_out_reg[6]_0 ;
  wire \p2_out_reg[7] ;
  wire \p2_out_reg[7]_0 ;
  wire \p3_out_reg[0] ;
  wire \p3_out_reg[0]_0 ;
  wire \p3_out_reg[1] ;
  wire \p3_out_reg[1]_0 ;
  wire \p3_out_reg[2] ;
  wire \p3_out_reg[2]_0 ;
  wire \p3_out_reg[3] ;
  wire \p3_out_reg[3]_0 ;
  wire \p3_out_reg[4] ;
  wire \p3_out_reg[4]_0 ;
  wire \p3_out_reg[5] ;
  wire \p3_out_reg[5]_0 ;
  wire \p3_out_reg[6] ;
  wire \p3_out_reg[6]_0 ;
  wire \p3_out_reg[7] ;
  wire \p3_out_reg[7]_0 ;
  wire p_0_in_0;
  wire pc_wr_r_i_19;
  wire pc_wr_r_i_19_0;
  wire pc_wr_r_i_19_1;
  wire [7:0]pcon;
  wire \pcon_reg[0] ;
  wire [0:0]\pcon_reg[0]_0 ;
  wire \pcon_reg[1] ;
  wire \pcon_reg[2] ;
  wire \pcon_reg[3] ;
  wire \pcon_reg[4] ;
  wire \pcon_reg[5] ;
  wire \pcon_reg[6] ;
  wire \pcon_reg[7] ;
  wire pop;
  wire pop_reg;
  wire pres_ow__0;
  wire [3:0]prescaler;
  wire \prescaler[0]_i_1_n_0 ;
  wire \prescaler[1]_i_1_n_0 ;
  wire \prescaler[2]_i_1_n_0 ;
  wire \prescaler[3]_i_1_n_0 ;
  wire [4:0]psw;
  wire \ram_rd_sel_r_reg[0] ;
  wire \ram_rd_sel_r_reg[0]_0 ;
  wire \ram_wr_sel_reg[0] ;
  wire \ram_wr_sel_reg[0]_0 ;
  wire [3:0]\ram_wr_sel_reg[2] ;
  wire [0:0]\rcap2h_reg[0] ;
  wire [4:0]\rcap2h_reg[6] ;
  wire \rcap2l_reg[0] ;
  wire [0:0]\rcap2l_reg[0]_0 ;
  wire [4:0]\rcap2l_reg[6] ;
  wire reti;
  wire \ri_r[4]_i_2 ;
  wire rst_IBUF;
  wire rxd_IBUF;
  wire [0:0]\sbuf_rxd_reg[0] ;
  wire [0:0]\sbuf_rxd_tmp_reg[11] ;
  wire \sbuf_txd_reg[0] ;
  wire [6:0]\sbuf_txd_reg[7] ;
  wire [6:0]\sbuf_txd_reg[8] ;
  wire \sbuf_txd_reg[8]_0 ;
  wire [7:0]scon;
  wire \scon_reg[0] ;
  wire \scon_reg[0]_0 ;
  wire \scon_reg[0]_1 ;
  wire \scon_reg[1] ;
  wire \scon_reg[1]_0 ;
  wire \scon_reg[2] ;
  wire \scon_reg[2]_0 ;
  wire \scon_reg[3] ;
  wire \scon_reg[3]_0 ;
  wire \scon_reg[4] ;
  wire \scon_reg[4]_0 ;
  wire \scon_reg[5] ;
  wire \scon_reg[5]_0 ;
  wire \scon_reg[5]_1 ;
  wire \scon_reg[6] ;
  wire \scon_reg[6]_0 ;
  wire \scon_reg[7] ;
  wire \scon_reg[7]_0 ;
  wire \scon_reg[7]_1 ;
  wire sfr_bit;
  wire [4:4]sp;
  wire \sp_reg[0] ;
  wire \sp_reg[3] ;
  wire [0:0]\sp_reg[3]_0 ;
  wire [3:0]\sp_reg[3]_1 ;
  wire \sp_reg[4] ;
  wire \sp_reg[5] ;
  wire \sp_reg[6] ;
  wire [7:0]\sp_reg[7] ;
  wire [0:0]\sp_reg[7]_0 ;
  wire [3:0]\sp_reg[7]_1 ;
  wire [3:0]\sp_reg[7]_2 ;
  wire srcAc;
  wire state1;
  wire t1_ow_buf;
  wire [7:0]t2con;
  wire \t2con_reg[0] ;
  wire \t2con_reg[1] ;
  wire \t2con_reg[1]_0 ;
  wire \t2con_reg[2] ;
  wire \t2con_reg[2]_0 ;
  wire \t2con_reg[3] ;
  wire \t2con_reg[4] ;
  wire \t2con_reg[5] ;
  wire \t2con_reg[6] ;
  wire \t2con_reg[6]_0 ;
  wire \t2con_reg[7] ;
  wire \t2con_reg[7]_0 ;
  wire tcon_ie0_reg;
  wire tcon_ie1_reg;
  wire tcon_ie1_reg_0;
  wire \tcon_s_reg[0] ;
  wire \tcon_s_reg[1] ;
  wire \tcon_s_reg[2] ;
  wire \tcon_s_reg[2]_0 ;
  wire [5:0]\tcon_s_reg[3] ;
  wire \tcon_s_reg[3]_0 ;
  wire \tcon_s_reg[3]_1 ;
  wire tcon_tf0_reg;
  wire tcon_tf0_reg_0;
  wire tcon_tf0_reg_1;
  wire tcon_tf0_reg_2;
  wire tcon_tf1_reg;
  wire [1:0]tcon_tf1_reg_0;
  wire tcon_tf1_reg_1;
  wire tcon_tf1_reg_2;
  wire tcon_tf1_reg_3;
  wire tf0;
  wire tf0_buff;
  wire tf0_reg;
  wire tf1;
  wire tf1_1_reg;
  wire tf2_set9_out;
  wire tf2_set_reg;
  wire \th0_reg[0] ;
  wire \th0_reg[0]_0 ;
  wire \th0_reg[2] ;
  wire \th0_reg[3] ;
  wire \th0_reg[4] ;
  wire \th0_reg[5] ;
  wire \th0_reg[6] ;
  wire \th0_reg[7] ;
  wire [7:0]\th0_reg[7]_0 ;
  wire \th1_reg[0] ;
  wire \th1_reg[0]_0 ;
  wire \th1_reg[4] ;
  wire \th2_reg[1] ;
  wire \th2_reg[5] ;
  wire \th2_reg[6] ;
  wire [1:0]\th2_reg[7] ;
  wire \tl0_reg[2] ;
  wire \tl0_reg[3] ;
  wire [0:0]\tl0_reg[3]_0 ;
  wire \tl0_reg[4] ;
  wire \tl0_reg[4]_0 ;
  wire \tl0_reg[5] ;
  wire \tl0_reg[6] ;
  wire \tl0_reg[7] ;
  wire \tl0_reg[7]_0 ;
  wire [0:0]\tl1_reg[4] ;
  wire [3:0]\tl1_reg[4]_0 ;
  wire [0:0]\tl1_reg[6] ;
  wire \tl1_reg[6]_0 ;
  wire \tl1_reg[6]_1 ;
  wire \tl2_reg[2] ;
  wire \tl2_reg[3] ;
  wire \tl2_reg[4] ;
  wire \tl2_reg[6] ;
  wire [7:0]tmod;
  wire \tmod_reg[0] ;
  wire [0:0]\tmod_reg[0]_0 ;
  wire \tmod_reg[1] ;
  wire \tmod_reg[5] ;
  wire \tmod_reg[5]_0 ;
  wire \tmod_reg[5]_1 ;
  wire \tmod_reg[5]_2 ;
  wire [3:0]\tmod_reg[6] ;
  wire [0:0]\tr_count_reg[0] ;
  wire [0:0]\tr_count_reg[0]_0 ;
  wire tx_done;
  wire tx_done_reg;
  wire txd_OBUF;
  wire wait_data1_out;
  wire [1:0]\wr_addr_reg[2]_i_1 ;
  wire \wr_addr_reg[2]_i_2 ;
  wire \wr_addr_reg[6]_i_1 ;
  wire \wr_addr_reg[6]_i_1_0 ;
  wire [2:0]\wr_addr_reg[6]_i_3 ;
  wire [4:0]\wr_addr_reg[7]_i_1 ;
  wire wr_bit_r;
  wire wr_bit_r_reg_0;
  wire wr_sbuf;

  FDCE #(
    .INIT(1'b0)) 
    bit_out_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(bit_out_reg_0),
        .Q(sfr_bit));
  LUT3 #(
    .INIT(8'hBF)) 
    \buff[3][7]_i_3 
       (.I0(wr_bit_r),
        .I1(\buff_reg[7][7] ),
        .I2(state1),
        .O(wr_bit_r_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [0]),
        .Q(\dat0_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [1]),
        .Q(\dat0_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [2]),
        .Q(\dat0_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [3]),
        .Q(\dat0_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [4]),
        .Q(\dat0_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [5]),
        .Q(\dat0_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [6]),
        .Q(\dat0_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \dat0_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\dat0_reg[7]_1 ),
        .CLR(rst_IBUF),
        .D(\dat0_reg[7]_2 [7]),
        .Q(\dat0_reg[7]_0 [7]));
  oc8051_acc oc8051_acc1
       (.clk_8051_BUFG(clk_8051_BUFG),
        .\data_out_reg[1]_0 (oc8051_acc1_n_0),
        .\data_out_reg[7]_0 (\data_out_reg[7] ),
        .\data_out_reg[7]_1 (\data_out_reg[7]_1 ),
        .rst_IBUF(rst_IBUF));
  oc8051_b_register oc8051_b_register
       (.b_reg(b_reg),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\data_out_reg[0]_0 (\data_out_reg[0] ),
        .\data_out_reg[1]_0 (\data_out_reg[1] ),
        .\data_out_reg[2]_0 (\data_out_reg[2] ),
        .\data_out_reg[3]_0 (\data_out_reg[3] ),
        .\data_out_reg[4]_0 (\data_out_reg[4] ),
        .\data_out_reg[5]_0 (\data_out_reg[5] ),
        .\data_out_reg[6]_0 (\data_out_reg[6] ),
        .\data_out_reg[7]_0 (\data_out_reg[7]_0 ),
        .rst_IBUF(rst_IBUF));
  oc8051_dptr oc8051_dptr1
       (.E(E),
        .Q(dptr_lo),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\data_hi_reg[7]_0 (\data_hi_reg[7] ),
        .\data_hi_reg[7]_1 (\data_hi_reg[7]_0 ),
        .\data_lo_reg[0]_0 (\data_lo_reg[0] ),
        .\data_lo_reg[7]_0 (\data_lo_reg[7] ),
        .rst_IBUF(rst_IBUF));
  oc8051_int oc8051_int1
       (.D({\sp_reg[7]_2 [3],\sp_reg[7]_2 [1],sp,D}),
        .Q({tmod[7],\tmod_reg[6] [2:1],tmod[3],\tmod_reg[6] [0],tmod[1:0]}),
        .bit_out_i_4(bit_out_i_4),
        .bit_out_i_4_0(oc8051_uatr1_n_11),
        .bit_out_reg_i_35_0(bit_out_reg_i_35),
        .bit_out_reg_i_36(bit_out_reg_i_36),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\dat0[0]_i_3_0 (\p2_out_reg[0] ),
        .\dat0[0]_i_8 (\dat0[0]_i_8_1 ),
        .\dat0[1]_i_3_0 (\p2_out_reg[1] ),
        .\dat0[1]_i_5 (\dat0[1]_i_5_0 ),
        .\dat0[1]_i_5_0 (\dat0[1]_i_5 ),
        .\dat0[2]_i_3_0 (\p2_out_reg[2] ),
        .\dat0[3]_i_3_0 (\p2_out_reg[3] ),
        .\dat0[3]_i_9 (\dat0[3]_i_9 ),
        .\dat0[4]_i_3_0 (\p2_out_reg[4] ),
        .\dat0[4]_i_9 (oc8051_ports1_n_47),
        .\dat0[5]_i_3_0 (\p2_out_reg[5] ),
        .\dat0[5]_i_9 (oc8051_ports1_n_48),
        .\dat0[6]_i_3_0 (\p2_out_reg[6] ),
        .\dat0[7]_i_20 (oc8051_ports1_n_49),
        .\dat0[7]_i_9_0 (\dat0[7]_i_9_0 ),
        .\dat0[7]_i_9_1 (\p2_out_reg[7] ),
        .\dat0[7]_i_9_2 (\dat0[7]_i_9_1 ),
        .\dat0[7]_i_9_3 (\dat0[7]_i_9 ),
        .\dat0[7]_i_9_4 (\data_out_reg[7] ),
        .\dat0_reg[0] (oc8051_ports1_n_39),
        .\dat0_reg[1] (oc8051_ports1_n_38),
        .\dat0_reg[2] (oc8051_ports1_n_37),
        .\dat0_reg[3] (oc8051_ports1_n_36),
        .\dat0_reg[4] (oc8051_ports1_n_35),
        .\dat0_reg[5] (oc8051_ports1_n_34),
        .\dat0_reg[6] (\dat0_reg[6]_0 ),
        .\dat0_reg[6]_0 (\dat0_reg[6]_1 ),
        .\dat0_reg[6]_1 (\dat0_reg[6]_2 ),
        .\dat0_reg[7] (oc8051_ports1_n_33),
        .ie(ie[6:0]),
        .\ie_reg[0]_0 (\ie_reg[0] ),
        .\ie_reg[1]_0 (\ie_reg[1] ),
        .\ie_reg[2]_0 (\ie_reg[2] ),
        .\ie_reg[3]_0 (\ie_reg[3] ),
        .\ie_reg[4]_0 (\ie_reg[4] ),
        .\ie_reg[5]_0 (\ie_reg[5] ),
        .\ie_reg[6]_0 (\ie_reg[6] ),
        .\ie_reg[7]_0 (ie[7]),
        .\ie_reg[7]_1 (\ie_reg[7] ),
        .int_ack(int_ack),
        .int_ack_reg(int_ack_reg),
        .\int_lev_reg[0][0]_0 (t2con[6]),
        .\int_lev_reg[0][0]_1 (t2con[7]),
        .\int_lev_reg[1][0]_0 (oc8051_tc21_n_26),
        .int_proc_reg_0(int_proc_reg),
        .\int_vec_reg[1]_0 (\int_vec_reg[1] ),
        .\int_vec_reg[1]_1 (\int_vec_reg[1]_0 ),
        .\int_vec_reg[5]_0 (\int_vec_reg[5] ),
        .ip(ip),
        .\ip_reg[0]_0 (\ip_reg[0] ),
        .\ip_reg[0]_1 (\ip_reg[0]_0 ),
        .\ip_reg[1]_0 (\ip_reg[1] ),
        .\ip_reg[1]_1 (\ip_reg[1]_0 ),
        .\ip_reg[2]_0 (\ip_reg[2] ),
        .\ip_reg[2]_1 (\ip_reg[2]_0 ),
        .\ip_reg[3]_0 (\ip_reg[3] ),
        .\ip_reg[3]_1 (\ip_reg[3]_0 ),
        .\ip_reg[4]_0 (\ip_reg[4] ),
        .\ip_reg[4]_1 (\ip_reg[4]_0 ),
        .\ip_reg[5]_0 (\ip_reg[5] ),
        .\ip_reg[5]_1 (\ip_reg[5]_0 ),
        .\ip_reg[6]_0 (\ip_reg[6] ),
        .\ip_reg[6]_1 (\ip_reg[6]_0 ),
        .\ip_reg[7]_0 (\ip_reg[7] ),
        .\ip_reg[7]_1 (\ip_reg[7]_0 ),
        .\isrc_reg[1][1]_0 (\isrc_reg[1][1] ),
        .\isrc_reg[1][1]_1 (scon[1]),
        .\isrc_reg[1][1]_2 (scon[0]),
        .pres_ow__0(pres_ow__0),
        .reti(reti),
        .rst_IBUF(rst_IBUF),
        .tcon_ie0_reg_0(\tcon_s_reg[3] [1]),
        .tcon_ie0_reg_1(oc8051_int1_n_34),
        .tcon_ie0_reg_2(tcon_ie0_reg),
        .tcon_ie1_reg_0(\tcon_s_reg[3] [3]),
        .tcon_ie1_reg_1(tcon_ie1_reg),
        .tcon_ie1_reg_2(tcon_ie1_reg_0),
        .\tcon_s_reg[0]_0 (oc8051_int1_n_38),
        .\tcon_s_reg[0]_1 (\tcon_s_reg[0] ),
        .\tcon_s_reg[1]_0 ({\tcon_s_reg[3] [2],\tcon_s_reg[3] [0]}),
        .\tcon_s_reg[1]_1 (\tcon_s_reg[1] ),
        .\tcon_s_reg[2]_0 (\tcon_s_reg[3] [4]),
        .\tcon_s_reg[2]_1 (\tcon_s_reg[2] ),
        .\tcon_s_reg[2]_2 (oc8051_int1_n_40),
        .\tcon_s_reg[2]_3 (oc8051_int1_n_47),
        .\tcon_s_reg[2]_4 (\tcon_s_reg[2]_0 ),
        .\tcon_s_reg[3]_0 (\tcon_s_reg[3] [5]),
        .\tcon_s_reg[3]_1 (oc8051_int1_n_33),
        .\tcon_s_reg[3]_2 (oc8051_int1_n_46),
        .\tcon_s_reg[3]_3 (\tcon_s_reg[3]_1 ),
        .tcon_tf0_reg_0(tcon_tf0_reg),
        .tcon_tf0_reg_1(oc8051_tc1_n_18),
        .tcon_tf0_reg_2(tcon_tf0_reg_2),
        .tcon_tf1_reg_0(oc8051_int1_n_37),
        .tcon_tf1_reg_1(tcon_tf1_reg),
        .tcon_tf1_reg_2(tcon_tf1_reg_3),
        .tcon_tf1_reg_3(\sbuf_txd_reg[8]_0 ),
        .tcon_tf1_reg_4(oc8051_tc1_n_27),
        .tf0_buff(tf0_buff),
        .tf0_buff_reg_0(tf0),
        .\tl0_reg[0] (\tl0_reg[4]_0 ),
        .\tl0_reg[0]_0 (\th0_reg[0]_0 ));
  oc8051_ports oc8051_ports1
       (.b_reg({b_reg[7],b_reg[5:0]}),
        .bit_out_i_4(bit_out_i_4),
        .bit_out_i_62_0(\dat0[1]_i_5 ),
        .bit_out_reg_i_15_0(\dat0_reg[6]_0 ),
        .bit_out_reg_i_33_0(\dat0_reg[6]_1 ),
        .bit_out_reg_i_33_1(bit_out_reg_i_35),
        .bit_out_reg_i_34_0(bit_out_reg_i_34),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\dat0[7]_i_9 (\dat0[7]_i_9_1 ),
        .\dat0[7]_i_9_0 (\dat0[7]_i_9 ),
        .p0_out(p0_out),
        .\p0_out_reg[0]_0 (\p0_out_reg[0] ),
        .\p0_out_reg[1]_0 (\p0_out_reg[1] ),
        .\p0_out_reg[2]_0 (\p0_out_reg[2] ),
        .\p0_out_reg[3]_0 (\p0_out_reg[3] ),
        .\p0_out_reg[4]_0 (oc8051_ports1_n_47),
        .\p0_out_reg[4]_1 (\p0_out_reg[4] ),
        .\p0_out_reg[5]_0 (oc8051_ports1_n_48),
        .\p0_out_reg[5]_1 (\p0_out_reg[5] ),
        .\p0_out_reg[6]_0 (\p0_out_reg[6] ),
        .\p0_out_reg[7]_0 (oc8051_ports1_n_49),
        .\p0_out_reg[7]_1 (\p0_out_reg[7] ),
        .p1_out(p1_out),
        .\p1_out_reg[0]_0 (\p1_out_reg[0] ),
        .\p1_out_reg[1]_0 (oc8051_ports1_n_46),
        .\p1_out_reg[1]_1 (\p1_out_reg[1] ),
        .\p1_out_reg[2]_0 (oc8051_ports1_n_44),
        .\p1_out_reg[2]_1 (\p1_out_reg[2] ),
        .\p1_out_reg[3]_0 (oc8051_ports1_n_45),
        .\p1_out_reg[3]_1 (\p1_out_reg[3] ),
        .\p1_out_reg[4]_0 (oc8051_ports1_n_42),
        .\p1_out_reg[4]_1 (\p1_out_reg[4] ),
        .\p1_out_reg[5]_0 (oc8051_ports1_n_43),
        .\p1_out_reg[5]_1 (\p1_out_reg[5] ),
        .\p1_out_reg[6]_0 (oc8051_ports1_n_40),
        .\p1_out_reg[6]_1 (\p1_out_reg[6] ),
        .\p1_out_reg[7]_0 (oc8051_ports1_n_41),
        .\p1_out_reg[7]_1 (\p1_out_reg[7] ),
        .\p2_out_reg[0]_0 (\p2_out_reg[0] ),
        .\p2_out_reg[0]_1 (\p2_out_reg[0]_0 ),
        .\p2_out_reg[1]_0 (\p2_out_reg[1] ),
        .\p2_out_reg[1]_1 (\p2_out_reg[1]_0 ),
        .\p2_out_reg[2]_0 (\p2_out_reg[2] ),
        .\p2_out_reg[2]_1 (\p2_out_reg[2]_0 ),
        .\p2_out_reg[3]_0 (\p2_out_reg[3] ),
        .\p2_out_reg[3]_1 (\p2_out_reg[3]_0 ),
        .\p2_out_reg[4]_0 (\p2_out_reg[4] ),
        .\p2_out_reg[4]_1 (\p2_out_reg[4]_0 ),
        .\p2_out_reg[5]_0 (\p2_out_reg[5] ),
        .\p2_out_reg[5]_1 (\p2_out_reg[5]_0 ),
        .\p2_out_reg[6]_0 (\p2_out_reg[6] ),
        .\p2_out_reg[6]_1 (\p2_out_reg[6]_0 ),
        .\p2_out_reg[7]_0 (\p2_out_reg[7] ),
        .\p2_out_reg[7]_1 (\p2_out_reg[7]_0 ),
        .\p3_out_reg[0]_0 (\p3_out_reg[0] ),
        .\p3_out_reg[0]_1 (oc8051_ports1_n_39),
        .\p3_out_reg[0]_2 (\p3_out_reg[0]_0 ),
        .\p3_out_reg[1]_0 (\p3_out_reg[1] ),
        .\p3_out_reg[1]_1 (oc8051_ports1_n_38),
        .\p3_out_reg[1]_2 (\p3_out_reg[1]_0 ),
        .\p3_out_reg[2]_0 (\p3_out_reg[2] ),
        .\p3_out_reg[2]_1 (oc8051_ports1_n_37),
        .\p3_out_reg[2]_2 (\p3_out_reg[2]_0 ),
        .\p3_out_reg[3]_0 (\p3_out_reg[3] ),
        .\p3_out_reg[3]_1 (oc8051_ports1_n_36),
        .\p3_out_reg[3]_2 (\p3_out_reg[3]_0 ),
        .\p3_out_reg[4]_0 (\p3_out_reg[4] ),
        .\p3_out_reg[4]_1 (oc8051_ports1_n_35),
        .\p3_out_reg[4]_2 (\p3_out_reg[4]_0 ),
        .\p3_out_reg[5]_0 (\p3_out_reg[5] ),
        .\p3_out_reg[5]_1 (oc8051_ports1_n_34),
        .\p3_out_reg[5]_2 (\p3_out_reg[5]_0 ),
        .\p3_out_reg[6]_0 (\p3_out_reg[6] ),
        .\p3_out_reg[6]_1 (\p3_out_reg[6]_0 ),
        .\p3_out_reg[7]_0 (\p3_out_reg[7] ),
        .\p3_out_reg[7]_1 (oc8051_ports1_n_33),
        .\p3_out_reg[7]_2 (\p3_out_reg[7]_0 ),
        .rst_IBUF(rst_IBUF));
  oc8051_psw oc8051_psw1
       (.bit_out_i_13(bit_out_reg_i_35),
        .bit_out_i_13_0(\dat0[1]_i_5 ),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\data[2]_i_6 (\data[2]_i_6 ),
        .\data[2]_i_6_0 (\data[2]_i_6_0 ),
        .\data[2]_i_8_0 (\data[2]_i_8 ),
        .\data_reg[1]_0 (\data_reg[1] ),
        .\data_reg[2]_0 (\data_reg[2] ),
        .\data_reg[3]_0 (\data_reg[3] ),
        .\data_reg[4]_0 (\data_reg[4] ),
        .\data_reg[4]_1 (\data_reg[4]_0 ),
        .\data_reg[5]_0 (\data_reg[5] ),
        .\data_reg[6]_0 (srcAc),
        .\data_reg[6]_1 (\data_reg[6] ),
        .\data_reg[6]_2 (\data_reg[6]_0 ),
        .\data_reg[6]_3 (\data_reg[6]_1 ),
        .\data_reg[7]_0 (cy),
        .\data_reg[7]_1 (\data_reg[7] ),
        .\data_reg[7]_2 (\data_reg[7]_0 ),
        .\iadr_t[1]_i_4 (\iadr_t[1]_i_4 ),
        .pc_wr_r_i_19(pc_wr_r_i_19),
        .pc_wr_r_i_19_0(pc_wr_r_i_19_0),
        .pc_wr_r_i_19_1(oc8051_acc1_n_0),
        .pc_wr_r_i_19_2(pc_wr_r_i_19_1),
        .psw(psw),
        .\ri_r[4]_i_2 (\ri_r[4]_i_2 ),
        .rst_IBUF(rst_IBUF));
  oc8051_sp oc8051_sp1
       (.D({sp,D}),
        .DI({\sp_reg[7]_0 ,\sp_reg[3]_0 }),
        .O(O),
        .Q(\sp_reg[7] ),
        .\bit_select[0]_i_2 (\bit_select[0]_i_2 ),
        .\bit_select[0]_i_2_0 (\bit_select[0]_i_2_0 ),
        .clk_8051_BUFG(clk_8051_BUFG),
        .des1({des1[3],des1[0]}),
        .op2_n(op2_n),
        .op2_r(op2_r),
        .\op2_r_reg[7] (\op2_r_reg[7] ),
        .pop(pop),
        .pop_reg_0(pop_reg),
        .\ram_rd_sel_r_reg[0] (\ram_rd_sel_r_reg[0] ),
        .\ram_rd_sel_r_reg[0]_0 (\ram_rd_sel_r_reg[0]_0 ),
        .\ram_wr_sel_reg[0] (\ram_wr_sel_reg[0] ),
        .\ram_wr_sel_reg[0]_0 (\ram_wr_sel_reg[0]_0 ),
        .\ram_wr_sel_reg[2] (\ram_wr_sel_reg[2] ),
        .rst_IBUF(rst_IBUF),
        .\sp_reg[0]_0 (\sp_reg[0] ),
        .\sp_reg[1]_0 (\th2_reg[1] ),
        .\sp_reg[3]_0 (\sp_reg[3] ),
        .\sp_reg[3]_1 (\sp_reg[3]_1 ),
        .\sp_reg[4]_0 (\sp_reg[4] ),
        .\sp_reg[4]_1 (\tl2_reg[4] ),
        .\sp_reg[5]_0 (\sp_reg[5] ),
        .\sp_reg[6]_0 (\sp_reg[6] ),
        .\sp_reg[7]_0 (\sp_reg[7]_1 ),
        .\sp_reg[7]_1 (\sp_reg[7]_2 ),
        .\wr_addr_reg[2]_i_1 (\wr_addr_reg[2]_i_1 ),
        .\wr_addr_reg[2]_i_2_0 (\wr_addr_reg[2]_i_2 ),
        .\wr_addr_reg[6]_i_1 (\wr_addr_reg[6]_i_1 ),
        .\wr_addr_reg[6]_i_1_0 (\wr_addr_reg[6]_i_1_0 ),
        .\wr_addr_reg[6]_i_3_0 (state1),
        .\wr_addr_reg[6]_i_3_1 (\wr_addr_reg[6]_i_3 ),
        .\wr_addr_reg[7]_i_1 (\wr_addr_reg[7]_i_1 ));
  oc8051_tc oc8051_tc1
       (.Q({pcon[7],pcon[1]}),
        .S(\tl1_reg[6] ),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\dat0[0]_i_8 (\dat0[7]_i_9_0 ),
        .\dat0[7]_i_20 (dptr_lo),
        .\dat0[7]_i_20_0 (\data_hi_reg[7] ),
        .\dat0_reg[1]_i_4 (\dat0_reg[1]_i_4 ),
        .\dat0_reg[1]_i_4_0 (\dat0[1]_i_5 ),
        .\dat0_reg[1]_i_4_1 (\dat0_reg[1]_i_4_0 ),
        .des1(des1),
        .\pcon_reg[1] (\pcon_reg[1] ),
        .\pcon_reg[7] (\pcon_reg[7] ),
        .pres_ow__0(pres_ow__0),
        .rst_IBUF(rst_IBUF),
        .t1_ow_buf(t1_ow_buf),
        .t1_ow_buf_reg(oc8051_tc1_n_28),
        .\tcon_s_reg[3] (\tcon_s_reg[3]_0 ),
        .tcon_tf0_reg(tcon_tf0_reg_0),
        .tcon_tf0_reg_0(tcon_tf0_reg_1),
        .tcon_tf0_reg_1(tcon_tf1_reg),
        .tcon_tf1_reg(tcon_tf1_reg_0[1]),
        .tcon_tf1_reg_0(tcon_tf1_reg_1),
        .tcon_tf1_reg_1(tcon_tf1_reg_2),
        .tf0_buff(tf0_buff),
        .tf0_reg_0(tf0),
        .tf0_reg_1(oc8051_tc1_n_18),
        .tf0_reg_2(\tcon_s_reg[3] [4]),
        .tf0_reg_3(tf0_reg),
        .tf1(tf1),
        .tf1_1_reg_0(oc8051_tc1_n_27),
        .tf1_1_reg_1(tf1_1_reg),
        .\th0_reg[0]_0 (\th0_reg[0] ),
        .\th0_reg[0]_1 (\th0_reg[0]_0 ),
        .\th0_reg[0]_2 (oc8051_int1_n_46),
        .\th0_reg[0]_3 (oc8051_int1_n_47),
        .\th0_reg[2]_0 (oc8051_tc1_n_7),
        .\th0_reg[2]_1 (\th0_reg[2] ),
        .\th0_reg[3]_0 (oc8051_tc1_n_10),
        .\th0_reg[3]_1 (\th0_reg[3] ),
        .\th0_reg[4]_0 (oc8051_tc1_n_11),
        .\th0_reg[4]_1 (\th0_reg[4] ),
        .\th0_reg[5]_0 (oc8051_tc1_n_14),
        .\th0_reg[5]_1 (\th0_reg[5] ),
        .\th0_reg[6]_0 (oc8051_tc1_n_16),
        .\th0_reg[6]_1 (\th0_reg[6] ),
        .\th0_reg[7]_0 (\th0_reg[7] ),
        .\th0_reg[7]_1 (\th0_reg[7]_0 ),
        .\th1_reg[0]_0 (oc8051_tc1_n_5),
        .\th1_reg[0]_1 (\th1_reg[0] ),
        .\th1_reg[0]_2 (\th1_reg[0]_0 ),
        .\th1_reg[0]_3 (\tcon_s_reg[3] [5]),
        .\th1_reg[4]_0 (\th1_reg[4] ),
        .\th1_reg[5]_0 (\th2_reg[5] ),
        .\tl0_reg[0]_0 (oc8051_tc1_n_4),
        .\tl0_reg[0]_1 (oc8051_int1_n_40),
        .\tl0_reg[1]_0 (oc8051_tc1_n_6),
        .\tl0_reg[1]_1 (\th2_reg[1] ),
        .\tl0_reg[2]_0 (\tl0_reg[2] ),
        .\tl0_reg[2]_1 (\tl2_reg[2] ),
        .\tl0_reg[3]_0 (\tl0_reg[3] ),
        .\tl0_reg[3]_1 (\tl0_reg[3]_0 ),
        .\tl0_reg[4]_0 (\tl0_reg[4] ),
        .\tl0_reg[4]_1 (\tl0_reg[4]_0 ),
        .\tl0_reg[4]_2 (\tl2_reg[4] ),
        .\tl0_reg[5]_0 (\tl0_reg[5] ),
        .\tl0_reg[6]_0 (\tl0_reg[6] ),
        .\tl0_reg[6]_1 (\th2_reg[6] ),
        .\tl0_reg[7]_0 (oc8051_tc1_n_17),
        .\tl0_reg[7]_1 (\sbuf_txd_reg[8]_0 ),
        .\tl0_reg[7]_2 (\tl0_reg[7] ),
        .\tl0_reg[7]_3 (\tl0_reg[7]_0 ),
        .\tl1_reg[4]_0 (\tl1_reg[4] ),
        .\tl1_reg[4]_1 (\tl1_reg[4]_0 ),
        .\tl1_reg[6]_0 (\tl1_reg[6]_0 ),
        .\tl1_reg[6]_1 (\tl1_reg[6]_1 ),
        .\tmod_reg[0]_0 (\tmod_reg[0] ),
        .\tmod_reg[0]_1 (\tmod_reg[0]_0 ),
        .\tmod_reg[1]_0 (\tmod_reg[1] ),
        .\tmod_reg[5]_0 (\tmod_reg[5] ),
        .\tmod_reg[5]_1 (\tmod_reg[5]_0 ),
        .\tmod_reg[5]_2 (\tmod_reg[5]_1 ),
        .\tmod_reg[5]_3 (\tmod_reg[5]_2 ),
        .\tmod_reg[7]_0 ({tmod[7],\tmod_reg[6] [3:1],tmod[3],\tmod_reg[6] [0],tmod[1:0]}));
  oc8051_tc2 oc8051_tc21
       (.Q(Q),
        .brate2(brate2),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\dat0[0]_i_4 (\dat0[7]_i_9 ),
        .\dat0[0]_i_4_0 (bit_out_reg_i_35),
        .\dat0[0]_i_4_1 (oc8051_int1_n_38),
        .\dat0[0]_i_4_2 (oc8051_tc1_n_4),
        .\dat0[0]_i_4_3 (\dat0_reg[6]_0 ),
        .\dat0[0]_i_8_0 (\dat0[1]_i_5 ),
        .\dat0[0]_i_8_1 (\dat0[0]_i_8 ),
        .\dat0[0]_i_8_2 (\dat0[0]_i_8_0 ),
        .\dat0[1]_i_2 (oc8051_tc1_n_6),
        .\dat0[1]_i_2_0 (oc8051_int1_n_34),
        .\dat0[2]_i_2 (oc8051_tc1_n_7),
        .\dat0[3]_i_2 (oc8051_tc1_n_10),
        .\dat0[4]_i_2 (oc8051_tc1_n_11),
        .\dat0[5]_i_2 (oc8051_tc1_n_14),
        .\dat0[6]_i_2 ({pcon[6:2],pcon[0]}),
        .\dat0[6]_i_2_0 (oc8051_tc1_n_16),
        .\dat0[7]_i_7 (oc8051_tc1_n_17),
        .\dat0[7]_i_7_0 (oc8051_int1_n_37),
        .\dat0_reg[0]_i_2 (oc8051_tc1_n_5),
        .\dat0_reg[0]_i_2_0 (\dat0_reg[0]_i_2 ),
        .des1(des1),
        .ie(ie[5]),
        .\pcon_reg[0] (\pcon_reg[0] ),
        .\pcon_reg[2] (\pcon_reg[2] ),
        .\pcon_reg[3] (\pcon_reg[3] ),
        .\pcon_reg[4] (\pcon_reg[4] ),
        .\pcon_reg[5] (\pcon_reg[5] ),
        .\pcon_reg[6] (\pcon_reg[6] ),
        .pres_ow__0(pres_ow__0),
        .\rcap2h_reg[0]_0 (\rcap2h_reg[0] ),
        .\rcap2h_reg[6]_0 (\rcap2h_reg[6] ),
        .\rcap2l_reg[0]_0 (\rcap2l_reg[0] ),
        .\rcap2l_reg[0]_1 (\rcap2l_reg[0]_0 ),
        .\rcap2l_reg[6]_0 (\rcap2l_reg[6] ),
        .rst_IBUF(rst_IBUF),
        .smod_clk_tr_reg(oc8051_tc1_n_28),
        .smod_clk_tr_reg_0(scon[7]),
        .smod_clk_tr_reg_1(scon[6]),
        .t2con(t2con[3:0]),
        .\t2con_reg[0]_0 (\t2con_reg[0] ),
        .\t2con_reg[1]_0 (\t2con_reg[1] ),
        .\t2con_reg[1]_1 (\t2con_reg[1]_0 ),
        .\t2con_reg[2]_0 (\t2con_reg[2] ),
        .\t2con_reg[2]_1 (\t2con_reg[2]_0 ),
        .\t2con_reg[3]_0 (\t2con_reg[3] ),
        .\t2con_reg[4]_0 (t2con[4]),
        .\t2con_reg[4]_1 (oc8051_tc21_n_24),
        .\t2con_reg[4]_2 (\t2con_reg[4] ),
        .\t2con_reg[5]_0 (t2con[5]),
        .\t2con_reg[5]_1 (\t2con_reg[5] ),
        .\t2con_reg[6]_0 (t2con[6]),
        .\t2con_reg[6]_1 (\t2con_reg[6] ),
        .\t2con_reg[6]_2 (\t2con_reg[6]_0 ),
        .\t2con_reg[7]_0 (t2con[7]),
        .\t2con_reg[7]_1 (\t2con_reg[7] ),
        .\t2con_reg[7]_2 (oc8051_tc21_n_26),
        .\t2con_reg[7]_3 (\t2con_reg[7]_0 ),
        .tf2_set9_out(tf2_set9_out),
        .tf2_set_reg_0(tf2_set_reg),
        .\th2_reg[1]_0 (\th2_reg[1] ),
        .\th2_reg[5]_0 (\th2_reg[5] ),
        .\th2_reg[6]_0 (\th2_reg[6] ),
        .\th2_reg[7]_0 (\th2_reg[7] ),
        .\th2_reg[7]_1 (\sbuf_txd_reg[8]_0 ),
        .\tl2_reg[2]_0 (\tl2_reg[2] ),
        .\tl2_reg[3]_0 (tcon_tf1_reg_0[0]),
        .\tl2_reg[3]_1 (\tl2_reg[3] ),
        .\tl2_reg[4]_0 (\tl2_reg[4] ),
        .\tl2_reg[6]_0 (\tl2_reg[6] ));
  oc8051_uart oc8051_uatr1
       (.Q(\tr_count_reg[0] ),
        .bit_out_i_67_0(\dat0[1]_i_5 ),
        .bit_out_i_68(oc8051_uatr1_n_11),
        .bit_out_reg_i_16(\dat0_reg[6]_0 ),
        .bit_out_reg_i_16_0(oc8051_int1_n_33),
        .bit_out_reg_i_36_0(\dat0_reg[6]_1 ),
        .bit_out_reg_i_36_1(bit_out_reg_i_35),
        .brate2(brate2),
        .clk_8051_BUFG(clk_8051_BUFG),
        .cy(cy),
        .\dat0[1]_i_2 (oc8051_ports1_n_46),
        .\dat0[7]_i_7 (oc8051_ports1_n_41),
        .\dat0[7]_i_7_0 (\dat0[7]_i_7 ),
        .\dat0[7]_i_7_1 (\dat0[7]_i_7_0 ),
        .\dat0_reg[2]_i_4 (oc8051_ports1_n_44),
        .\dat0_reg[3]_i_4 (oc8051_ports1_n_45),
        .\dat0_reg[4]_i_4 (oc8051_ports1_n_42),
        .\dat0_reg[5]_i_4 (oc8051_ports1_n_43),
        .\dat0_reg[6]_i_4 (oc8051_ports1_n_40),
        .des1(des1),
        .\pcon_reg[0]_0 (\pcon_reg[0]_0 ),
        .\pcon_reg[7]_0 (pcon),
        .pres_ow__0(pres_ow__0),
        .psw(psw),
        .rst_IBUF(rst_IBUF),
        .rxd_IBUF(rxd_IBUF),
        .\sbuf_rxd_reg[0]_0 (\sbuf_rxd_reg[0] ),
        .\sbuf_rxd_tmp_reg[11]_0 (\sbuf_rxd_tmp_reg[11] ),
        .\sbuf_txd_reg[0]_0 (\sbuf_txd_reg[0] ),
        .\sbuf_txd_reg[7]_0 (\sbuf_txd_reg[7] ),
        .\sbuf_txd_reg[8]_0 (\sbuf_txd_reg[8] ),
        .\sbuf_txd_reg[8]_1 (\sbuf_txd_reg[8]_0 ),
        .scon(scon[2:0]),
        .\scon_reg[0]_0 (\scon_reg[0] ),
        .\scon_reg[0]_1 (\scon_reg[0]_0 ),
        .\scon_reg[0]_2 (\scon_reg[0]_1 ),
        .\scon_reg[1]_0 (\scon_reg[1] ),
        .\scon_reg[1]_1 (\scon_reg[1]_0 ),
        .\scon_reg[2]_0 (\scon_reg[2] ),
        .\scon_reg[2]_1 (\scon_reg[2]_0 ),
        .\scon_reg[3]_0 (scon[3]),
        .\scon_reg[3]_1 (\scon_reg[3] ),
        .\scon_reg[3]_2 (\scon_reg[3]_0 ),
        .\scon_reg[4]_0 (scon[4]),
        .\scon_reg[4]_1 (\scon_reg[4] ),
        .\scon_reg[4]_2 (\scon_reg[4]_0 ),
        .\scon_reg[5]_0 (scon[5]),
        .\scon_reg[5]_1 (\scon_reg[5] ),
        .\scon_reg[5]_2 (\scon_reg[5]_0 ),
        .\scon_reg[5]_3 (\scon_reg[5]_1 ),
        .\scon_reg[6]_0 (scon[6]),
        .\scon_reg[6]_1 (\scon_reg[6] ),
        .\scon_reg[6]_2 (\scon_reg[6]_0 ),
        .\scon_reg[7]_0 (scon[7]),
        .\scon_reg[7]_1 (\scon_reg[7] ),
        .\scon_reg[7]_2 (\scon_reg[7]_0 ),
        .\scon_reg[7]_3 (\scon_reg[7]_1 ),
        .shift_re_reg_0(oc8051_tc1_n_28),
        .smod_clk_tr_reg_0(oc8051_tc21_n_24),
        .srcAc(srcAc),
        .t1_ow_buf(t1_ow_buf),
        .t2con(t2con[5]),
        .tf1(tf1),
        .\tr_count_reg[0]_0 (\tr_count_reg[0]_0 ),
        .tx_done_reg_0(tx_done),
        .tx_done_reg_1(tx_done_reg),
        .txd_OBUF(txd_OBUF),
        .wr_sbuf(wr_sbuf));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    pres_ow
       (.I0(prescaler[2]),
        .I1(prescaler[3]),
        .I2(prescaler[1]),
        .I3(prescaler[0]),
        .O(p_0_in_0));
  FDCE #(
    .INIT(1'b0)) 
    pres_ow_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_in_0),
        .Q(pres_ow__0));
  LUT1 #(
    .INIT(2'h1)) 
    \prescaler[0]_i_1 
       (.I0(prescaler[0]),
        .O(\prescaler[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prescaler[1]_i_1 
       (.I0(prescaler[1]),
        .I1(prescaler[0]),
        .O(\prescaler[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'h2A6A)) 
    \prescaler[2]_i_1 
       (.I0(prescaler[2]),
        .I1(prescaler[1]),
        .I2(prescaler[0]),
        .I3(prescaler[3]),
        .O(\prescaler[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \prescaler[3]_i_1 
       (.I0(prescaler[2]),
        .I1(prescaler[1]),
        .I2(prescaler[0]),
        .I3(prescaler[3]),
        .O(\prescaler[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \prescaler_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\prescaler[0]_i_1_n_0 ),
        .Q(prescaler[0]));
  FDCE #(
    .INIT(1'b0)) 
    \prescaler_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\prescaler[1]_i_1_n_0 ),
        .Q(prescaler[1]));
  FDCE #(
    .INIT(1'b0)) 
    \prescaler_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\prescaler[2]_i_1_n_0 ),
        .Q(prescaler[2]));
  FDCE #(
    .INIT(1'b0)) 
    \prescaler_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\prescaler[3]_i_1_n_0 ),
        .Q(prescaler[3]));
  FDPE #(
    .INIT(1'b1)) 
    wait_data_reg_inv
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(wait_data1_out),
        .PRE(rst_IBUF),
        .Q(state1));
  FDCE #(
    .INIT(1'b0)) 
    wr_bit_r_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(bit_addr),
        .Q(wr_bit_r));
endmodule

module oc8051_sp
   (pop,
    O,
    \ram_wr_sel_reg[2] ,
    \ram_rd_sel_r_reg[0] ,
    D,
    \ram_rd_sel_r_reg[0]_0 ,
    Q,
    \op2_r_reg[7] ,
    \sp_reg[6]_0 ,
    \sp_reg[5]_0 ,
    \ram_wr_sel_reg[0] ,
    \ram_wr_sel_reg[0]_0 ,
    \sp_reg[3]_0 ,
    \sp_reg[4]_0 ,
    pop_reg_0,
    clk_8051_BUFG,
    rst_IBUF,
    DI,
    \sp_reg[3]_1 ,
    \sp_reg[7]_0 ,
    \bit_select[0]_i_2 ,
    \wr_addr_reg[6]_i_3_0 ,
    \bit_select[0]_i_2_0 ,
    op2_n,
    \sp_reg[0]_0 ,
    \sp_reg[1]_0 ,
    des1,
    \sp_reg[4]_1 ,
    op2_r,
    \wr_addr_reg[6]_i_3_1 ,
    \wr_addr_reg[7]_i_1 ,
    \wr_addr_reg[6]_i_1 ,
    \wr_addr_reg[6]_i_1_0 ,
    \wr_addr_reg[2]_i_1 ,
    \wr_addr_reg[2]_i_2_0 ,
    \sp_reg[7]_1 );
  output pop;
  output [1:0]O;
  output [3:0]\ram_wr_sel_reg[2] ;
  output \ram_rd_sel_r_reg[0] ;
  output [3:0]D;
  output \ram_rd_sel_r_reg[0]_0 ;
  output [7:0]Q;
  output \op2_r_reg[7] ;
  output \sp_reg[6]_0 ;
  output \sp_reg[5]_0 ;
  output \ram_wr_sel_reg[0] ;
  output \ram_wr_sel_reg[0]_0 ;
  output \sp_reg[3]_0 ;
  output \sp_reg[4]_0 ;
  input pop_reg_0;
  input clk_8051_BUFG;
  input rst_IBUF;
  input [1:0]DI;
  input [3:0]\sp_reg[3]_1 ;
  input [3:0]\sp_reg[7]_0 ;
  input [0:0]\bit_select[0]_i_2 ;
  input \wr_addr_reg[6]_i_3_0 ;
  input \bit_select[0]_i_2_0 ;
  input [1:0]op2_n;
  input \sp_reg[0]_0 ;
  input \sp_reg[1]_0 ;
  input [1:0]des1;
  input \sp_reg[4]_1 ;
  input [4:0]op2_r;
  input [2:0]\wr_addr_reg[6]_i_3_1 ;
  input [4:0]\wr_addr_reg[7]_i_1 ;
  input \wr_addr_reg[6]_i_1 ;
  input \wr_addr_reg[6]_i_1_0 ;
  input [1:0]\wr_addr_reg[2]_i_1 ;
  input \wr_addr_reg[2]_i_2_0 ;
  input [3:0]\sp_reg[7]_1 ;

  wire [3:0]D;
  wire [1:0]DI;
  wire [1:0]O;
  wire [7:0]Q;
  wire [0:0]\bit_select[0]_i_2 ;
  wire \bit_select[0]_i_2_0 ;
  wire clk_8051_BUFG;
  wire [1:0]des1;
  wire [1:0]op2_n;
  wire [4:0]op2_r;
  wire \op2_r_reg[7] ;
  wire pop;
  wire pop_reg_0;
  wire \ram_rd_sel_r_reg[0] ;
  wire \ram_rd_sel_r_reg[0]_0 ;
  wire \ram_wr_sel_reg[0] ;
  wire \ram_wr_sel_reg[0]_0 ;
  wire [3:0]\ram_wr_sel_reg[2] ;
  wire rst_IBUF;
  wire sp_out0_carry__0_n_1;
  wire sp_out0_carry__0_n_2;
  wire sp_out0_carry__0_n_3;
  wire sp_out0_carry_n_0;
  wire sp_out0_carry_n_1;
  wire sp_out0_carry_n_2;
  wire sp_out0_carry_n_3;
  wire sp_out0_carry_n_4;
  wire sp_out0_carry_n_6;
  wire \sp_reg[0]_0 ;
  wire \sp_reg[1]_0 ;
  wire \sp_reg[3]_0 ;
  wire [3:0]\sp_reg[3]_1 ;
  wire \sp_reg[4]_0 ;
  wire \sp_reg[4]_1 ;
  wire \sp_reg[5]_0 ;
  wire \sp_reg[6]_0 ;
  wire [3:0]\sp_reg[7]_0 ;
  wire [3:0]\sp_reg[7]_1 ;
  wire [0:0]sp_t;
  wire \wr_addr_reg[1]_i_3_n_0 ;
  wire [1:0]\wr_addr_reg[2]_i_1 ;
  wire \wr_addr_reg[2]_i_2_0 ;
  wire \wr_addr_reg[2]_i_3_n_0 ;
  wire \wr_addr_reg[5]_i_3_n_0 ;
  wire \wr_addr_reg[6]_i_1 ;
  wire \wr_addr_reg[6]_i_1_0 ;
  wire \wr_addr_reg[6]_i_3_0 ;
  wire [2:0]\wr_addr_reg[6]_i_3_1 ;
  wire \wr_addr_reg[6]_i_3_n_0 ;
  wire \wr_addr_reg[6]_i_6_n_0 ;
  wire [4:0]\wr_addr_reg[7]_i_1 ;
  wire \wr_addr_reg[7]_i_4_n_0 ;
  wire [3:3]NLW_sp_out0_carry__0_CO_UNCONNECTED;

  LUT5 #(
    .INIT(32'hABFBA808)) 
    \bit_select[0]_i_3 
       (.I0(D[0]),
        .I1(\bit_select[0]_i_2 ),
        .I2(\wr_addr_reg[6]_i_3_0 ),
        .I3(\bit_select[0]_i_2_0 ),
        .I4(op2_n[0]),
        .O(\ram_rd_sel_r_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    pop_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(pop_reg_0),
        .Q(pop));
  LUT5 #(
    .INIT(32'hABFBA808)) 
    rd_en_r_i_13
       (.I0(D[2]),
        .I1(\bit_select[0]_i_2 ),
        .I2(\wr_addr_reg[6]_i_3_0 ),
        .I3(\bit_select[0]_i_2_0 ),
        .I4(op2_n[1]),
        .O(\ram_rd_sel_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[0]_i_1 
       (.I0(O[0]),
        .I1(\sp_reg[0]_0 ),
        .I2(des1[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sp[1]_i_1 
       (.I0(sp_out0_carry_n_6),
        .I1(\sp_reg[0]_0 ),
        .I2(\sp_reg[1]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sp[3]_i_1 
       (.I0(sp_out0_carry_n_4),
        .I1(\sp_reg[0]_0 ),
        .I2(des1[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \sp[4]_i_1 
       (.I0(\ram_wr_sel_reg[2] [0]),
        .I1(\sp_reg[0]_0 ),
        .I2(\sp_reg[4]_1 ),
        .O(D[3]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_out0_carry
       (.CI(1'b0),
        .CO({sp_out0_carry_n_0,sp_out0_carry_n_1,sp_out0_carry_n_2,sp_out0_carry_n_3}),
        .CYINIT(sp_t),
        .DI({DI[1],DI[1],DI}),
        .O({sp_out0_carry_n_4,O[1],sp_out0_carry_n_6,O[0]}),
        .S(\sp_reg[3]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 sp_out0_carry__0
       (.CI(sp_out0_carry_n_0),
        .CO({NLW_sp_out0_carry__0_CO_UNCONNECTED[3],sp_out0_carry__0_n_1,sp_out0_carry__0_n_2,sp_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,DI[1],DI[1],DI[1]}),
        .O(\ram_wr_sel_reg[2] ),
        .S(\sp_reg[7]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    sp_out0_carry_i_1
       (.I0(Q[0]),
        .I1(\sp_reg[0]_0 ),
        .I2(des1[0]),
        .O(sp_t));
  FDPE #(
    .INIT(1'b1)) 
    \sp_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .PRE(rst_IBUF),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \sp_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .PRE(rst_IBUF),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \sp_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(\sp_reg[7]_1 [0]),
        .PRE(rst_IBUF),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sp_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sp_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \sp_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\sp_reg[7]_1 [1]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sp_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\sp_reg[7]_1 [2]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sp_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\sp_reg[7]_1 [3]),
        .Q(Q[7]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \wr_addr_reg[1]_i_2 
       (.I0(\wr_addr_reg[1]_i_3_n_0 ),
        .I1(\wr_addr_reg[6]_i_3_1 [0]),
        .I2(\wr_addr_reg[6]_i_3_0 ),
        .I3(\wr_addr_reg[7]_i_1 [0]),
        .I4(\wr_addr_reg[6]_i_3_1 [1]),
        .I5(\wr_addr_reg[2]_i_1 [0]),
        .O(\ram_wr_sel_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6AFFFFFF6A000000)) 
    \wr_addr_reg[1]_i_3 
       (.I0(Q[1]),
        .I1(\wr_addr_reg[2]_i_2_0 ),
        .I2(Q[0]),
        .I3(\wr_addr_reg[6]_i_3_1 [1]),
        .I4(\wr_addr_reg[6]_i_3_0 ),
        .I5(op2_r[0]),
        .O(\wr_addr_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \wr_addr_reg[2]_i_2 
       (.I0(\wr_addr_reg[2]_i_3_n_0 ),
        .I1(\wr_addr_reg[6]_i_3_1 [0]),
        .I2(\wr_addr_reg[6]_i_3_0 ),
        .I3(\wr_addr_reg[7]_i_1 [1]),
        .I4(\wr_addr_reg[6]_i_3_1 [1]),
        .I5(\wr_addr_reg[2]_i_1 [1]),
        .O(\ram_wr_sel_reg[0] ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \wr_addr_reg[2]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\wr_addr_reg[2]_i_2_0 ),
        .I3(Q[1]),
        .I4(\wr_addr_reg[6]_i_1_0 ),
        .I5(op2_r[1]),
        .O(\wr_addr_reg[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_addr_reg[3]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\wr_addr_reg[2]_i_2_0 ),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\sp_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_addr_reg[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\wr_addr_reg[2]_i_2_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\sp_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h66FF6600F000F000)) 
    \wr_addr_reg[5]_i_2 
       (.I0(Q[5]),
        .I1(\wr_addr_reg[5]_i_3_n_0 ),
        .I2(op2_r[2]),
        .I3(\wr_addr_reg[6]_i_1 ),
        .I4(\wr_addr_reg[7]_i_1 [2]),
        .I5(\wr_addr_reg[6]_i_1_0 ),
        .O(\sp_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wr_addr_reg[5]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\wr_addr_reg[2]_i_2_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\wr_addr_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h66FF6600F000F000)) 
    \wr_addr_reg[6]_i_2 
       (.I0(Q[6]),
        .I1(\wr_addr_reg[6]_i_3_n_0 ),
        .I2(op2_r[3]),
        .I3(\wr_addr_reg[6]_i_1 ),
        .I4(\wr_addr_reg[7]_i_1 [3]),
        .I5(\wr_addr_reg[6]_i_1_0 ),
        .O(\sp_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \wr_addr_reg[6]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\wr_addr_reg[6]_i_6_n_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\wr_addr_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \wr_addr_reg[6]_i_6 
       (.I0(Q[1]),
        .I1(\wr_addr_reg[6]_i_3_1 [0]),
        .I2(\wr_addr_reg[6]_i_3_1 [1]),
        .I3(\wr_addr_reg[6]_i_3_0 ),
        .I4(\wr_addr_reg[6]_i_3_1 [2]),
        .I5(Q[0]),
        .O(\wr_addr_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAF00A000C000C000)) 
    \wr_addr_reg[7]_i_3 
       (.I0(\wr_addr_reg[7]_i_4_n_0 ),
        .I1(op2_r[4]),
        .I2(\wr_addr_reg[6]_i_3_1 [0]),
        .I3(\wr_addr_reg[6]_i_3_0 ),
        .I4(\wr_addr_reg[7]_i_1 [4]),
        .I5(\wr_addr_reg[6]_i_3_1 [1]),
        .O(\op2_r_reg[7] ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_addr_reg[7]_i_4 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\wr_addr_reg[5]_i_3_n_0 ),
        .I3(Q[6]),
        .O(\wr_addr_reg[7]_i_4_n_0 ));
endmodule

module oc8051_tc
   (S,
    tf0_reg_0,
    \pcon_reg[1] ,
    \pcon_reg[7] ,
    \tl0_reg[0]_0 ,
    \th1_reg[0]_0 ,
    \tl0_reg[1]_0 ,
    \th0_reg[2]_0 ,
    \tl0_reg[2]_0 ,
    \tl0_reg[3]_0 ,
    \th0_reg[3]_0 ,
    \th0_reg[4]_0 ,
    \tl0_reg[4]_0 ,
    \tl0_reg[5]_0 ,
    \th0_reg[5]_0 ,
    \tl0_reg[6]_0 ,
    \th0_reg[6]_0 ,
    \tl0_reg[7]_0 ,
    tf0_reg_1,
    \tmod_reg[7]_0 ,
    tf1_1_reg_0,
    t1_ow_buf_reg,
    tf1,
    \tcon_s_reg[3] ,
    \tmod_reg[1]_0 ,
    \th0_reg[2]_1 ,
    \th0_reg[7]_0 ,
    \th0_reg[6]_1 ,
    \th0_reg[5]_1 ,
    \th0_reg[4]_1 ,
    \th0_reg[3]_1 ,
    \tmod_reg[5]_0 ,
    \tmod_reg[5]_1 ,
    \tl1_reg[6]_0 ,
    \tmod_reg[5]_2 ,
    \tmod_reg[5]_3 ,
    \th0_reg[0]_0 ,
    \tmod_reg[0]_0 ,
    clk_8051_BUFG,
    rst_IBUF,
    Q,
    \dat0_reg[1]_i_4 ,
    \dat0_reg[1]_i_4_0 ,
    \dat0_reg[1]_i_4_1 ,
    \dat0[7]_i_20 ,
    \dat0[0]_i_8 ,
    \dat0[7]_i_20_0 ,
    tf0_buff,
    tcon_tf0_reg,
    tcon_tf0_reg_0,
    \th1_reg[5]_0 ,
    tcon_tf0_reg_1,
    des1,
    \th1_reg[4]_0 ,
    \tl0_reg[7]_1 ,
    \th1_reg[0]_1 ,
    \tl0_reg[4]_1 ,
    t1_ow_buf,
    tcon_tf1_reg,
    tcon_tf1_reg_0,
    tcon_tf1_reg_1,
    \tl0_reg[0]_1 ,
    \th0_reg[0]_1 ,
    \th0_reg[0]_2 ,
    \th0_reg[0]_3 ,
    \th1_reg[0]_2 ,
    \th1_reg[0]_3 ,
    pres_ow__0,
    tf0_reg_2,
    tf0_reg_3,
    tf1_1_reg_1,
    \tl0_reg[1]_1 ,
    \tl0_reg[7]_2 ,
    \tl0_reg[7]_3 ,
    \tl0_reg[6]_1 ,
    \tl0_reg[2]_1 ,
    \tl0_reg[4]_2 ,
    \tmod_reg[0]_1 ,
    \th0_reg[7]_1 ,
    \tl0_reg[3]_1 ,
    \tl1_reg[4]_0 ,
    \tl1_reg[4]_1 ,
    \tl1_reg[6]_1 );
  output [0:0]S;
  output tf0_reg_0;
  output \pcon_reg[1] ;
  output \pcon_reg[7] ;
  output \tl0_reg[0]_0 ;
  output \th1_reg[0]_0 ;
  output \tl0_reg[1]_0 ;
  output \th0_reg[2]_0 ;
  output \tl0_reg[2]_0 ;
  output \tl0_reg[3]_0 ;
  output \th0_reg[3]_0 ;
  output \th0_reg[4]_0 ;
  output \tl0_reg[4]_0 ;
  output \tl0_reg[5]_0 ;
  output \th0_reg[5]_0 ;
  output \tl0_reg[6]_0 ;
  output \th0_reg[6]_0 ;
  output \tl0_reg[7]_0 ;
  output tf0_reg_1;
  output [7:0]\tmod_reg[7]_0 ;
  output tf1_1_reg_0;
  output t1_ow_buf_reg;
  output tf1;
  output \tcon_s_reg[3] ;
  output \tmod_reg[1]_0 ;
  output \th0_reg[2]_1 ;
  output \th0_reg[7]_0 ;
  output \th0_reg[6]_1 ;
  output \th0_reg[5]_1 ;
  output \th0_reg[4]_1 ;
  output \th0_reg[3]_1 ;
  output \tmod_reg[5]_0 ;
  output \tmod_reg[5]_1 ;
  output \tl1_reg[6]_0 ;
  output \tmod_reg[5]_2 ;
  output \tmod_reg[5]_3 ;
  output \th0_reg[0]_0 ;
  output \tmod_reg[0]_0 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input [1:0]Q;
  input \dat0_reg[1]_i_4 ;
  input \dat0_reg[1]_i_4_0 ;
  input \dat0_reg[1]_i_4_1 ;
  input [7:0]\dat0[7]_i_20 ;
  input \dat0[0]_i_8 ;
  input [7:0]\dat0[7]_i_20_0 ;
  input tf0_buff;
  input tcon_tf0_reg;
  input tcon_tf0_reg_0;
  input \th1_reg[5]_0 ;
  input tcon_tf0_reg_1;
  input [7:0]des1;
  input \th1_reg[4]_0 ;
  input \tl0_reg[7]_1 ;
  input \th1_reg[0]_1 ;
  input \tl0_reg[4]_1 ;
  input t1_ow_buf;
  input [0:0]tcon_tf1_reg;
  input tcon_tf1_reg_0;
  input tcon_tf1_reg_1;
  input \tl0_reg[0]_1 ;
  input \th0_reg[0]_1 ;
  input \th0_reg[0]_2 ;
  input \th0_reg[0]_3 ;
  input \th1_reg[0]_2 ;
  input \th1_reg[0]_3 ;
  input pres_ow__0;
  input [0:0]tf0_reg_2;
  input tf0_reg_3;
  input tf1_1_reg_1;
  input \tl0_reg[1]_1 ;
  input \tl0_reg[7]_2 ;
  input \tl0_reg[7]_3 ;
  input \tl0_reg[6]_1 ;
  input \tl0_reg[2]_1 ;
  input \tl0_reg[4]_2 ;
  input [0:0]\tmod_reg[0]_1 ;
  input [7:0]\th0_reg[7]_1 ;
  input [0:0]\tl0_reg[3]_1 ;
  input [0:0]\tl1_reg[4]_0 ;
  input [3:0]\tl1_reg[4]_1 ;
  input \tl1_reg[6]_1 ;

  wire [1:0]Q;
  wire [0:0]S;
  wire clk_8051_BUFG;
  wire \dat0[0]_i_8 ;
  wire [7:0]\dat0[7]_i_20 ;
  wire [7:0]\dat0[7]_i_20_0 ;
  wire \dat0_reg[1]_i_4 ;
  wire \dat0_reg[1]_i_4_0 ;
  wire \dat0_reg[1]_i_4_1 ;
  wire data0;
  wire data1;
  wire [7:0]des1;
  wire [5:0]p_1_in;
  wire \pcon_reg[1] ;
  wire \pcon_reg[7] ;
  wire pres_ow__0;
  wire rst_IBUF;
  wire t1_ow_buf;
  wire t1_ow_buf_reg;
  wire \tcon_s_reg[3] ;
  wire tcon_tf0_reg;
  wire tcon_tf0_reg_0;
  wire tcon_tf0_reg_1;
  wire [0:0]tcon_tf1_reg;
  wire tcon_tf1_reg_0;
  wire tcon_tf1_reg_1;
  wire tf0_buff;
  wire tf0_i_1_n_0;
  wire tf0_i_2_n_0;
  wire tf0_reg_0;
  wire tf0_reg_1;
  wire [0:0]tf0_reg_2;
  wire tf0_reg_3;
  wire tf1;
  wire tf1_0_i_1_n_0;
  wire tf1_0_i_2_n_0;
  wire tf1_0_i_3_n_0;
  wire tf1_0_reg_n_0;
  wire tf1_1;
  wire tf1_1_i_1_n_0;
  wire tf1_1_i_2_n_0;
  wire tf1_1_i_5_n_0;
  wire tf1_1_reg_0;
  wire tf1_1_reg_1;
  wire [7:0]th0;
  wire \th0[2]_i_3_n_0 ;
  wire \th0[3]_i_3_n_0 ;
  wire \th0[4]_i_3_n_0 ;
  wire \th0[5]_i_3_n_0 ;
  wire \th0[6]_i_3_n_0 ;
  wire \th0[7]_i_1_n_0 ;
  wire \th0_reg[0]_0 ;
  wire \th0_reg[0]_1 ;
  wire \th0_reg[0]_2 ;
  wire \th0_reg[0]_3 ;
  wire \th0_reg[2]_0 ;
  wire \th0_reg[2]_1 ;
  wire \th0_reg[3]_0 ;
  wire \th0_reg[3]_1 ;
  wire \th0_reg[4]_0 ;
  wire \th0_reg[4]_1 ;
  wire \th0_reg[5]_0 ;
  wire \th0_reg[5]_1 ;
  wire \th0_reg[6]_0 ;
  wire \th0_reg[6]_1 ;
  wire \th0_reg[7]_0 ;
  wire [7:0]\th0_reg[7]_1 ;
  wire [7:0]th1;
  wire \th1[0]_i_1_n_0 ;
  wire \th1[1]_i_1_n_0 ;
  wire \th1[2]_i_1_n_0 ;
  wire \th1[3]_i_1_n_0 ;
  wire \th1[4]_i_1_n_0 ;
  wire \th1[5]_i_1_n_0 ;
  wire \th1[6]_i_1_n_0 ;
  wire \th1[7]_i_1_n_0 ;
  wire \th1[7]_i_2_n_0 ;
  wire \th1_reg[0]_0 ;
  wire \th1_reg[0]_1 ;
  wire \th1_reg[0]_2 ;
  wire \th1_reg[0]_3 ;
  wire \th1_reg[4]_0 ;
  wire \th1_reg[5]_0 ;
  wire [7:0]tl0;
  wire \tl00_inferred__0/i___0_carry__0_n_0 ;
  wire \tl00_inferred__0/i___0_carry__0_n_1 ;
  wire \tl00_inferred__0/i___0_carry__0_n_2 ;
  wire \tl00_inferred__0/i___0_carry__0_n_3 ;
  wire \tl00_inferred__0/i___0_carry__0_n_4 ;
  wire \tl00_inferred__0/i___0_carry__0_n_5 ;
  wire \tl00_inferred__0/i___0_carry__0_n_6 ;
  wire \tl00_inferred__0/i___0_carry__0_n_7 ;
  wire \tl00_inferred__0/i___0_carry__1_n_0 ;
  wire \tl00_inferred__0/i___0_carry__1_n_1 ;
  wire \tl00_inferred__0/i___0_carry__1_n_2 ;
  wire \tl00_inferred__0/i___0_carry__1_n_3 ;
  wire \tl00_inferred__0/i___0_carry__1_n_4 ;
  wire \tl00_inferred__0/i___0_carry__1_n_5 ;
  wire \tl00_inferred__0/i___0_carry__1_n_6 ;
  wire \tl00_inferred__0/i___0_carry__1_n_7 ;
  wire \tl00_inferred__0/i___0_carry__2_n_2 ;
  wire \tl00_inferred__0/i___0_carry__2_n_3 ;
  wire \tl00_inferred__0/i___0_carry__2_n_5 ;
  wire \tl00_inferred__0/i___0_carry__2_n_6 ;
  wire \tl00_inferred__0/i___0_carry__2_n_7 ;
  wire \tl00_inferred__0/i___0_carry_n_0 ;
  wire \tl00_inferred__0/i___0_carry_n_1 ;
  wire \tl00_inferred__0/i___0_carry_n_2 ;
  wire \tl00_inferred__0/i___0_carry_n_3 ;
  wire \tl00_inferred__0/i___0_carry_n_4 ;
  wire \tl00_inferred__0/i___0_carry_n_5 ;
  wire \tl00_inferred__0/i___0_carry_n_6 ;
  wire \tl00_inferred__0/i___0_carry_n_7 ;
  wire \tl00_inferred__0/i__carry__0_n_0 ;
  wire \tl00_inferred__0/i__carry__0_n_1 ;
  wire \tl00_inferred__0/i__carry__0_n_2 ;
  wire \tl00_inferred__0/i__carry__0_n_3 ;
  wire \tl00_inferred__0/i__carry__0_n_4 ;
  wire \tl00_inferred__0/i__carry__0_n_5 ;
  wire \tl00_inferred__0/i__carry__0_n_6 ;
  wire \tl00_inferred__0/i__carry__0_n_7 ;
  wire \tl00_inferred__0/i__carry__1_n_0 ;
  wire \tl00_inferred__0/i__carry__1_n_1 ;
  wire \tl00_inferred__0/i__carry__1_n_2 ;
  wire \tl00_inferred__0/i__carry__1_n_3 ;
  wire \tl00_inferred__0/i__carry__1_n_4 ;
  wire \tl00_inferred__0/i__carry__1_n_5 ;
  wire \tl00_inferred__0/i__carry__1_n_6 ;
  wire \tl00_inferred__0/i__carry__1_n_7 ;
  wire \tl00_inferred__0/i__carry_n_0 ;
  wire \tl00_inferred__0/i__carry_n_1 ;
  wire \tl00_inferred__0/i__carry_n_2 ;
  wire \tl00_inferred__0/i__carry_n_3 ;
  wire \tl00_inferred__0/i__carry_n_4 ;
  wire \tl00_inferred__0/i__carry_n_5 ;
  wire \tl00_inferred__0/i__carry_n_6 ;
  wire \tl0[0]_i_2_n_0 ;
  wire \tl0[0]_i_3_n_0 ;
  wire \tl0[1]_i_2_n_0 ;
  wire \tl0[1]_i_3_n_0 ;
  wire \tl0[1]_i_4_n_0 ;
  wire \tl0[2]_i_2_n_0 ;
  wire \tl0[2]_i_3_n_0 ;
  wire \tl0[3]_i_3_n_0 ;
  wire \tl0[3]_i_4_n_0 ;
  wire \tl0[4]_i_3_n_0 ;
  wire \tl0[4]_i_4_n_0 ;
  wire \tl0[4]_i_5_n_0 ;
  wire \tl0[4]_i_6_n_0 ;
  wire \tl0[5]_i_1_n_0 ;
  wire \tl0[5]_i_3_n_0 ;
  wire \tl0[5]_i_4_n_0 ;
  wire \tl0[5]_i_5_n_0 ;
  wire \tl0[6]_i_1_n_0 ;
  wire \tl0[6]_i_2_n_0 ;
  wire \tl0[6]_i_3_n_0 ;
  wire \tl0[6]_i_4_n_0 ;
  wire \tl0[6]_i_5_n_0 ;
  wire \tl0[7]_i_1_n_0 ;
  wire \tl0[7]_i_3_n_0 ;
  wire \tl0[7]_i_4_n_0 ;
  wire \tl0[7]_i_5_n_0 ;
  wire \tl0_reg[0]_0 ;
  wire \tl0_reg[0]_1 ;
  wire \tl0_reg[1]_0 ;
  wire \tl0_reg[1]_1 ;
  wire \tl0_reg[2]_0 ;
  wire \tl0_reg[2]_1 ;
  wire \tl0_reg[3]_0 ;
  wire [0:0]\tl0_reg[3]_1 ;
  wire \tl0_reg[4]_0 ;
  wire \tl0_reg[4]_1 ;
  wire \tl0_reg[4]_2 ;
  wire \tl0_reg[5]_0 ;
  wire \tl0_reg[6]_0 ;
  wire \tl0_reg[6]_1 ;
  wire \tl0_reg[7]_0 ;
  wire \tl0_reg[7]_1 ;
  wire \tl0_reg[7]_2 ;
  wire \tl0_reg[7]_3 ;
  wire [7:0]tl1;
  wire [13:1]tl10;
  wire tl10__0_carry__0_n_0;
  wire tl10__0_carry__0_n_1;
  wire tl10__0_carry__0_n_2;
  wire tl10__0_carry__0_n_3;
  wire tl10__0_carry__0_n_4;
  wire tl10__0_carry__0_n_5;
  wire tl10__0_carry__0_n_6;
  wire tl10__0_carry__0_n_7;
  wire tl10__0_carry__1_n_0;
  wire tl10__0_carry__1_n_1;
  wire tl10__0_carry__1_n_2;
  wire tl10__0_carry__1_n_3;
  wire tl10__0_carry__1_n_4;
  wire tl10__0_carry__1_n_5;
  wire tl10__0_carry__1_n_6;
  wire tl10__0_carry__1_n_7;
  wire tl10__0_carry__2_n_0;
  wire tl10__0_carry__2_n_2;
  wire tl10__0_carry__2_n_3;
  wire tl10__0_carry__2_n_5;
  wire tl10__0_carry__2_n_6;
  wire tl10__0_carry__2_n_7;
  wire tl10__0_carry_n_0;
  wire tl10__0_carry_n_1;
  wire tl10__0_carry_n_2;
  wire tl10__0_carry_n_3;
  wire tl10__0_carry_n_4;
  wire tl10__0_carry_n_5;
  wire tl10__0_carry_n_6;
  wire tl10_carry__0_n_0;
  wire tl10_carry__0_n_1;
  wire tl10_carry__0_n_2;
  wire tl10_carry__0_n_3;
  wire tl10_carry__1_n_0;
  wire tl10_carry__1_n_1;
  wire tl10_carry__1_n_2;
  wire tl10_carry__1_n_3;
  wire tl10_carry_n_0;
  wire tl10_carry_n_1;
  wire tl10_carry_n_2;
  wire tl10_carry_n_3;
  wire \tl1[0]_i_1_n_0 ;
  wire \tl1[0]_i_2_n_0 ;
  wire \tl1[0]_i_3_n_0 ;
  wire \tl1[1]_i_3_n_0 ;
  wire \tl1[2]_i_3_n_0 ;
  wire \tl1[2]_i_4_n_0 ;
  wire \tl1[3]_i_3_n_0 ;
  wire \tl1[3]_i_4_n_0 ;
  wire \tl1[4]_i_5_n_0 ;
  wire \tl1[4]_i_6_n_0 ;
  wire \tl1[5]_i_1_n_0 ;
  wire \tl1[5]_i_2_n_0 ;
  wire \tl1[5]_i_3_n_0 ;
  wire \tl1[5]_i_4_n_0 ;
  wire \tl1[6]_i_4_n_0 ;
  wire \tl1[6]_i_5_n_0 ;
  wire \tl1[6]_i_6_n_0 ;
  wire \tl1[7]_i_1_n_0 ;
  wire \tl1[7]_i_2_n_0 ;
  wire \tl1[7]_i_3_n_0 ;
  wire [0:0]\tl1_reg[4]_0 ;
  wire [3:0]\tl1_reg[4]_1 ;
  wire \tl1_reg[6]_0 ;
  wire \tl1_reg[6]_1 ;
  wire \tmod_reg[0]_0 ;
  wire [0:0]\tmod_reg[0]_1 ;
  wire \tmod_reg[1]_0 ;
  wire \tmod_reg[5]_0 ;
  wire \tmod_reg[5]_1 ;
  wire \tmod_reg[5]_2 ;
  wire \tmod_reg[5]_3 ;
  wire [7:0]\tmod_reg[7]_0 ;
  wire [3:1]NLW_tf0_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_tf0_reg_i_4_O_UNCONNECTED;
  wire [3:1]NLW_tf1_1_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_tf1_1_reg_i_4_O_UNCONNECTED;
  wire [2:2]\NLW_tl00_inferred__0/i___0_carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_tl00_inferred__0/i___0_carry__2_O_UNCONNECTED ;
  wire [0:0]\NLW_tl00_inferred__0/i__carry_O_UNCONNECTED ;
  wire [0:0]NLW_tl10__0_carry_O_UNCONNECTED;
  wire [2:2]NLW_tl10__0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_tl10__0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \dat0[0]_i_13 
       (.I0(th1[0]),
        .I1(\dat0_reg[1]_i_4_0 ),
        .I2(th0[0]),
        .O(\th1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[0]_i_16 
       (.I0(tl0[0]),
        .I1(\dat0[7]_i_20 [0]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(tl1[0]),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [0]),
        .O(\tl0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBABB8A8BBAB88A88)) 
    \dat0[1]_i_10 
       (.I0(Q[0]),
        .I1(\dat0_reg[1]_i_4 ),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(\dat0_reg[1]_i_4_1 ),
        .I4(th0[1]),
        .I5(th1[1]),
        .O(\pcon_reg[1] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[1]_i_11 
       (.I0(tl0[1]),
        .I1(\dat0[7]_i_20 [1]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(tl1[1]),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [1]),
        .O(\tl0_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dat0[2]_i_10 
       (.I0(th0[2]),
        .I1(\dat0_reg[1]_i_4_0 ),
        .I2(th1[2]),
        .O(\th0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[2]_i_14 
       (.I0(tl0[2]),
        .I1(\dat0[7]_i_20 [2]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(tl1[2]),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [2]),
        .O(\tl0_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dat0[3]_i_10 
       (.I0(th0[3]),
        .I1(\dat0_reg[1]_i_4_0 ),
        .I2(th1[3]),
        .O(\th0_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[3]_i_14 
       (.I0(tl0[3]),
        .I1(\dat0[7]_i_20 [3]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(tl1[3]),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [3]),
        .O(\tl0_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dat0[4]_i_10 
       (.I0(th0[4]),
        .I1(\dat0_reg[1]_i_4_0 ),
        .I2(th1[4]),
        .O(\th0_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[4]_i_14 
       (.I0(tl0[4]),
        .I1(\dat0[7]_i_20 [4]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(tl1[4]),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [4]),
        .O(\tl0_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dat0[5]_i_10 
       (.I0(th0[5]),
        .I1(\dat0_reg[1]_i_4_0 ),
        .I2(th1[5]),
        .O(\th0_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[5]_i_13 
       (.I0(tl0[5]),
        .I1(\dat0[7]_i_20 [5]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(tl1[5]),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [5]),
        .O(\tl0_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dat0[6]_i_10 
       (.I0(th0[6]),
        .I1(\dat0_reg[1]_i_4_0 ),
        .I2(th1[6]),
        .O(\th0_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[6]_i_14 
       (.I0(tl0[6]),
        .I1(\dat0[7]_i_20 [6]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(S),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [6]),
        .O(\tl0_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hBABB8A8BBAB88A88)) 
    \dat0[7]_i_29 
       (.I0(Q[1]),
        .I1(\dat0_reg[1]_i_4 ),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(\dat0_reg[1]_i_4_1 ),
        .I4(th0[7]),
        .I5(th1[7]),
        .O(\pcon_reg[7] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[7]_i_30 
       (.I0(tl0[7]),
        .I1(\dat0[7]_i_20 [7]),
        .I2(\dat0_reg[1]_i_4_0 ),
        .I3(tl1[7]),
        .I4(\dat0[0]_i_8 ),
        .I5(\dat0[7]_i_20_0 [7]),
        .O(\tl0_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    shift_re_i_3
       (.I0(t1_ow_buf),
        .I1(tf1_0_reg_n_0),
        .I2(tf1_1),
        .O(t1_ow_buf_reg));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'hE)) 
    t1_ow_buf_i_1
       (.I0(tf1_0_reg_n_0),
        .I1(tf1_1),
        .O(tf1));
  LUT6 #(
    .INIT(64'h0000FFFFF202F202)) 
    tcon_tf0_i_2
       (.I0(tf0_reg_0),
        .I1(tf0_buff),
        .I2(tcon_tf0_reg),
        .I3(tcon_tf0_reg_0),
        .I4(\th1_reg[5]_0 ),
        .I5(tcon_tf0_reg_1),
        .O(tf0_reg_1));
  LUT6 #(
    .INIT(64'h00F1F1F1F1F1F1F1)) 
    tcon_tf1_i_3
       (.I0(tf1_1),
        .I1(tf1_0_reg_n_0),
        .I2(t1_ow_buf),
        .I3(tcon_tf1_reg),
        .I4(tcon_tf1_reg_0),
        .I5(tcon_tf1_reg_1),
        .O(tf1_1_reg_0));
  LUT6 #(
    .INIT(64'hDFFF000010000000)) 
    tf0_i_1
       (.I0(tf0_i_2_n_0),
        .I1(\tmod_reg[7]_0 [2]),
        .I2(pres_ow__0),
        .I3(tf0_reg_2),
        .I4(tf0_reg_3),
        .I5(tf0_reg_0),
        .O(tf0_i_1_n_0));
  LUT6 #(
    .INIT(64'h70707F7F707F707F)) 
    tf0_i_2
       (.I0(tl0[7]),
        .I1(\tl0[7]_i_5_n_0 ),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(data0),
        .I4(data1),
        .I5(\tmod_reg[7]_0 [0]),
        .O(tf0_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tf0_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tf0_i_1_n_0),
        .Q(tf0_reg_0));
  CARRY4 tf0_reg_i_4
       (.CI(\tl00_inferred__0/i__carry__1_n_0 ),
        .CO({NLW_tf0_reg_i_4_CO_UNCONNECTED[3:1],data0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tf0_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h00008FFF00008000)) 
    tf1_0_i_1
       (.I0(th0[7]),
        .I1(tf1_0_i_2_n_0),
        .I2(pres_ow__0),
        .I3(\th1_reg[0]_3 ),
        .I4(tf1_0_i_3_n_0),
        .I5(tf1_0_reg_n_0),
        .O(tf1_0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    tf1_0_i_2
       (.I0(th0[6]),
        .I1(\th0[6]_i_3_n_0 ),
        .O(tf1_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    tf1_0_i_3
       (.I0(\tmod_reg[7]_0 [1]),
        .I1(\tmod_reg[7]_0 [0]),
        .I2(\tl0_reg[4]_1 ),
        .I3(\th0_reg[0]_1 ),
        .O(tf1_0_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tf1_0_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tf1_0_i_1_n_0),
        .Q(tf1_0_reg_n_0));
  LUT6 #(
    .INIT(64'h00FF00A2000000A2)) 
    tf1_1_i_1
       (.I0(tf1_1_i_2_n_0),
        .I1(\tmod_reg[7]_0 [4]),
        .I2(tl10__0_carry__2_n_0),
        .I3(tf1_1_reg_1),
        .I4(\tcon_s_reg[3] ),
        .I5(tf1_1),
        .O(tf1_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEAE)) 
    tf1_1_i_2
       (.I0(\tmod_reg[7]_0 [4]),
        .I1(tl10[13]),
        .I2(\tmod_reg[7]_0 [5]),
        .I3(tf1_1_i_5_n_0),
        .O(tf1_1_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tf1_1_i_5
       (.I0(tl1[5]),
        .I1(tl1[4]),
        .I2(S),
        .I3(tl1[3]),
        .I4(\tl1[3]_i_4_n_0 ),
        .I5(tl1[7]),
        .O(tf1_1_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tf1_1_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tf1_1_i_1_n_0),
        .Q(tf1_1));
  CARRY4 tf1_1_reg_i_4
       (.CI(tl10_carry__1_n_0),
        .CO({NLW_tf1_1_reg_i_4_CO_UNCONNECTED[3:1],tl10[13]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tf1_1_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT5 #(
    .INIT(32'h00FFB8B8)) 
    \th0[0]_i_2 
       (.I0(\tl00_inferred__0/i___0_carry__0_n_4 ),
        .I1(\tmod_reg[7]_0 [0]),
        .I2(\tl00_inferred__0/i__carry__0_n_7 ),
        .I3(th0[0]),
        .I4(\tmod_reg[7]_0 [1]),
        .O(\tmod_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \th0[1]_i_2 
       (.I0(th0[0]),
        .I1(th0[1]),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\tl00_inferred__0/i___0_carry__1_n_7 ),
        .I4(\tmod_reg[7]_0 [0]),
        .I5(\tl00_inferred__0/i__carry__0_n_6 ),
        .O(\th0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \th0[2]_i_2 
       (.I0(th0[2]),
        .I1(\th0[2]_i_3_n_0 ),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\tl00_inferred__0/i___0_carry__1_n_6 ),
        .I4(\tmod_reg[7]_0 [0]),
        .I5(\tl00_inferred__0/i__carry__0_n_5 ),
        .O(\th0_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \th0[2]_i_3 
       (.I0(th0[0]),
        .I1(th0[1]),
        .O(\th0[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \th0[3]_i_2 
       (.I0(th0[3]),
        .I1(\th0[3]_i_3_n_0 ),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\tl00_inferred__0/i___0_carry__1_n_5 ),
        .I4(\tmod_reg[7]_0 [0]),
        .I5(\tl00_inferred__0/i__carry__0_n_4 ),
        .O(\th0_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \th0[3]_i_3 
       (.I0(th0[2]),
        .I1(th0[1]),
        .I2(th0[0]),
        .O(\th0[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \th0[4]_i_2 
       (.I0(th0[4]),
        .I1(\th0[4]_i_3_n_0 ),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\tl00_inferred__0/i___0_carry__1_n_4 ),
        .I4(\tmod_reg[7]_0 [0]),
        .I5(\tl00_inferred__0/i__carry__1_n_7 ),
        .O(\th0_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \th0[4]_i_3 
       (.I0(th0[0]),
        .I1(th0[1]),
        .I2(th0[2]),
        .I3(th0[3]),
        .O(\th0[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \th0[5]_i_2 
       (.I0(th0[5]),
        .I1(\th0[5]_i_3_n_0 ),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\tl00_inferred__0/i___0_carry__2_n_7 ),
        .I4(\tmod_reg[7]_0 [0]),
        .I5(\tl00_inferred__0/i__carry__1_n_6 ),
        .O(\th0_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \th0[5]_i_3 
       (.I0(th0[4]),
        .I1(th0[3]),
        .I2(th0[2]),
        .I3(th0[1]),
        .I4(th0[0]),
        .O(\th0[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \th0[6]_i_2 
       (.I0(th0[6]),
        .I1(\th0[6]_i_3_n_0 ),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\tl00_inferred__0/i___0_carry__2_n_6 ),
        .I4(\tmod_reg[7]_0 [0]),
        .I5(\tl00_inferred__0/i__carry__1_n_5 ),
        .O(\th0_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \th0[6]_i_3 
       (.I0(th0[0]),
        .I1(th0[1]),
        .I2(th0[2]),
        .I3(th0[3]),
        .I4(th0[4]),
        .I5(th0[5]),
        .O(\th0[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8F80)) 
    \th0[7]_i_1 
       (.I0(\tmod_reg[7]_0 [0]),
        .I1(\th0_reg[0]_2 ),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\th0_reg[0]_3 ),
        .I4(\th0_reg[0]_1 ),
        .I5(\tl0_reg[4]_1 ),
        .O(\th0[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \th0[7]_i_7 
       (.I0(th0[7]),
        .I1(tf1_0_i_2_n_0),
        .I2(\tmod_reg[7]_0 [1]),
        .I3(\tl00_inferred__0/i___0_carry__2_n_5 ),
        .I4(\tmod_reg[7]_0 [0]),
        .I5(\tl00_inferred__0/i__carry__1_n_4 ),
        .O(\th0_reg[7]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [0]),
        .Q(th0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [1]),
        .Q(th0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [2]),
        .Q(th0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [3]),
        .Q(th0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [4]),
        .Q(th0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [5]),
        .Q(th0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [6]),
        .Q(th0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \th0_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\th0[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th0_reg[7]_1 [7]),
        .Q(th0[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \th1[0]_i_1 
       (.I0(des1[0]),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__0_n_4),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[5]),
        .O(\th1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \th1[1]_i_1 
       (.I0(\tl0_reg[1]_1 ),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__1_n_7),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[6]),
        .O(\th1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \th1[2]_i_1 
       (.I0(\tl0_reg[2]_1 ),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__1_n_6),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[7]),
        .O(\th1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \th1[3]_i_1 
       (.I0(des1[3]),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__1_n_5),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[8]),
        .O(\th1[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \th1[4]_i_1 
       (.I0(\tl0_reg[4]_2 ),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__1_n_4),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[9]),
        .O(\th1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \th1[5]_i_1 
       (.I0(\th1_reg[5]_0 ),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__2_n_7),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[10]),
        .O(\th1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \th1[6]_i_1 
       (.I0(\tl0_reg[6]_1 ),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__2_n_6),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[11]),
        .O(\th1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAABAAA)) 
    \th1[7]_i_1 
       (.I0(\th1_reg[0]_2 ),
        .I1(\tmod_reg[7]_0 [5]),
        .I2(\th1_reg[0]_3 ),
        .I3(pres_ow__0),
        .I4(\tmod_reg[7]_0 [6]),
        .I5(\th1_reg[0]_1 ),
        .O(\th1[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \th1[7]_i_2 
       (.I0(\tl0_reg[7]_1 ),
        .I1(\th1_reg[4]_0 ),
        .I2(tl10__0_carry__2_n_5),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[12]),
        .O(\th1[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[0]_i_1_n_0 ),
        .Q(th1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[1]_i_1_n_0 ),
        .Q(th1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[2]_i_1_n_0 ),
        .Q(th1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[3]_i_1_n_0 ),
        .Q(th1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[4]_i_1_n_0 ),
        .Q(th1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[5]_i_1_n_0 ),
        .Q(th1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[6]_i_1_n_0 ),
        .Q(th1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \th1_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\th1[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th1[7]_i_2_n_0 ),
        .Q(th1[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tl00_inferred__0/i___0_carry 
       (.CI(1'b0),
        .CO({\tl00_inferred__0/i___0_carry_n_0 ,\tl00_inferred__0/i___0_carry_n_1 ,\tl00_inferred__0/i___0_carry_n_2 ,\tl00_inferred__0/i___0_carry_n_3 }),
        .CYINIT(tl0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tl00_inferred__0/i___0_carry_n_4 ,\tl00_inferred__0/i___0_carry_n_5 ,\tl00_inferred__0/i___0_carry_n_6 ,\tl00_inferred__0/i___0_carry_n_7 }),
        .S(tl0[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tl00_inferred__0/i___0_carry__0 
       (.CI(\tl00_inferred__0/i___0_carry_n_0 ),
        .CO({\tl00_inferred__0/i___0_carry__0_n_0 ,\tl00_inferred__0/i___0_carry__0_n_1 ,\tl00_inferred__0/i___0_carry__0_n_2 ,\tl00_inferred__0/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tl00_inferred__0/i___0_carry__0_n_4 ,\tl00_inferred__0/i___0_carry__0_n_5 ,\tl00_inferred__0/i___0_carry__0_n_6 ,\tl00_inferred__0/i___0_carry__0_n_7 }),
        .S({th0[0],tl0[7:5]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tl00_inferred__0/i___0_carry__1 
       (.CI(\tl00_inferred__0/i___0_carry__0_n_0 ),
        .CO({\tl00_inferred__0/i___0_carry__1_n_0 ,\tl00_inferred__0/i___0_carry__1_n_1 ,\tl00_inferred__0/i___0_carry__1_n_2 ,\tl00_inferred__0/i___0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tl00_inferred__0/i___0_carry__1_n_4 ,\tl00_inferred__0/i___0_carry__1_n_5 ,\tl00_inferred__0/i___0_carry__1_n_6 ,\tl00_inferred__0/i___0_carry__1_n_7 }),
        .S(th0[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tl00_inferred__0/i___0_carry__2 
       (.CI(\tl00_inferred__0/i___0_carry__1_n_0 ),
        .CO({data1,\NLW_tl00_inferred__0/i___0_carry__2_CO_UNCONNECTED [2],\tl00_inferred__0/i___0_carry__2_n_2 ,\tl00_inferred__0/i___0_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tl00_inferred__0/i___0_carry__2_O_UNCONNECTED [3],\tl00_inferred__0/i___0_carry__2_n_5 ,\tl00_inferred__0/i___0_carry__2_n_6 ,\tl00_inferred__0/i___0_carry__2_n_7 }),
        .S({1'b1,th0[7:5]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tl00_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\tl00_inferred__0/i__carry_n_0 ,\tl00_inferred__0/i__carry_n_1 ,\tl00_inferred__0/i__carry_n_2 ,\tl00_inferred__0/i__carry_n_3 }),
        .CYINIT(tl0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tl00_inferred__0/i__carry_n_4 ,\tl00_inferred__0/i__carry_n_5 ,\tl00_inferred__0/i__carry_n_6 ,\NLW_tl00_inferred__0/i__carry_O_UNCONNECTED [0]}),
        .S(tl0[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tl00_inferred__0/i__carry__0 
       (.CI(\tl00_inferred__0/i__carry_n_0 ),
        .CO({\tl00_inferred__0/i__carry__0_n_0 ,\tl00_inferred__0/i__carry__0_n_1 ,\tl00_inferred__0/i__carry__0_n_2 ,\tl00_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tl00_inferred__0/i__carry__0_n_4 ,\tl00_inferred__0/i__carry__0_n_5 ,\tl00_inferred__0/i__carry__0_n_6 ,\tl00_inferred__0/i__carry__0_n_7 }),
        .S(th0[3:0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tl00_inferred__0/i__carry__1 
       (.CI(\tl00_inferred__0/i__carry__0_n_0 ),
        .CO({\tl00_inferred__0/i__carry__1_n_0 ,\tl00_inferred__0/i__carry__1_n_1 ,\tl00_inferred__0/i__carry__1_n_2 ,\tl00_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tl00_inferred__0/i__carry__1_n_4 ,\tl00_inferred__0/i__carry__1_n_5 ,\tl00_inferred__0/i__carry__1_n_6 ,\tl00_inferred__0/i__carry__1_n_7 }),
        .S(th0[7:4]));
  LUT6 #(
    .INIT(64'hBB8B8B8B8B8B8B8B)) 
    \tl0[0]_i_1 
       (.I0(des1[0]),
        .I1(\tl0_reg[4]_1 ),
        .I2(tl0[0]),
        .I3(\tl0[0]_i_2_n_0 ),
        .I4(\tmod_reg[7]_0 [1]),
        .I5(th0[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \tl0[0]_i_2 
       (.I0(\tl0[0]_i_3_n_0 ),
        .I1(tl0[1]),
        .I2(tl0[2]),
        .I3(tl0[3]),
        .O(\tl0[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \tl0[0]_i_3 
       (.I0(tl0[5]),
        .I1(tl0[4]),
        .I2(tl0[6]),
        .I3(tl0[7]),
        .I4(\tmod_reg[7]_0 [0]),
        .O(\tl0[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7474747774747474)) 
    \tl0[1]_i_1 
       (.I0(\tl0_reg[1]_1 ),
        .I1(\tl0_reg[4]_1 ),
        .I2(\tl0[1]_i_2_n_0 ),
        .I3(\tmod_reg[7]_0 [0]),
        .I4(\tmod_reg[7]_0 [1]),
        .I5(\tl00_inferred__0/i___0_carry_n_7 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFAC0FAC00000FAC0)) 
    \tl0[1]_i_2 
       (.I0(\tl0[1]_i_3_n_0 ),
        .I1(\tmod_reg[7]_0 [0]),
        .I2(\tl0[1]_i_4_n_0 ),
        .I3(\tmod_reg[7]_0 [1]),
        .I4(\tl0[4]_i_5_n_0 ),
        .I5(th0[1]),
        .O(\tl0[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \tl0[1]_i_3 
       (.I0(tl0[3]),
        .I1(tl0[2]),
        .I2(tl0[1]),
        .I3(\tl0[0]_i_3_n_0 ),
        .I4(\tmod_reg[7]_0 [1]),
        .O(\tl0[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tl0[1]_i_4 
       (.I0(tl0[0]),
        .I1(tl0[1]),
        .O(\tl0[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7474747774747474)) 
    \tl0[2]_i_1 
       (.I0(\tl0_reg[2]_1 ),
        .I1(\tl0_reg[4]_1 ),
        .I2(\tl0[2]_i_2_n_0 ),
        .I3(\tmod_reg[7]_0 [0]),
        .I4(\tmod_reg[7]_0 [1]),
        .I5(\tl00_inferred__0/i__carry_n_6 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAA80AA800000AA80)) 
    \tl0[2]_i_2 
       (.I0(\tl0[2]_i_3_n_0 ),
        .I1(\tmod_reg[7]_0 [0]),
        .I2(\tl00_inferred__0/i___0_carry_n_6 ),
        .I3(\tmod_reg[7]_0 [1]),
        .I4(\tl0[4]_i_5_n_0 ),
        .I5(th0[2]),
        .O(\tl0[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFBB3377FFBB33)) 
    \tl0[2]_i_3 
       (.I0(tl0[0]),
        .I1(\tmod_reg[7]_0 [1]),
        .I2(\tl0[0]_i_3_n_0 ),
        .I3(tl0[1]),
        .I4(tl0[2]),
        .I5(tl0[3]),
        .O(\tl0[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000F3AAF3AA)) 
    \tl0[3]_i_2 
       (.I0(\tl00_inferred__0/i__carry_n_5 ),
        .I1(\tl0[3]_i_3_n_0 ),
        .I2(\tl0[3]_i_4_n_0 ),
        .I3(\tmod_reg[7]_0 [1]),
        .I4(\tl00_inferred__0/i___0_carry_n_5 ),
        .I5(\tmod_reg[7]_0 [0]),
        .O(\tmod_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \tl0[3]_i_3 
       (.I0(\tl0[4]_i_6_n_0 ),
        .I1(tl0[4]),
        .I2(tl0[5]),
        .I3(tl0[6]),
        .I4(tl0[7]),
        .I5(th0[3]),
        .O(\tl0[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \tl0[3]_i_4 
       (.I0(tl0[3]),
        .I1(tl0[1]),
        .I2(tl0[2]),
        .I3(tl0[0]),
        .O(\tl0[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7474747774747474)) 
    \tl0[4]_i_2 
       (.I0(\tl0_reg[4]_2 ),
        .I1(\tl0_reg[4]_1 ),
        .I2(\tl0[4]_i_3_n_0 ),
        .I3(\tmod_reg[7]_0 [0]),
        .I4(\tmod_reg[7]_0 [1]),
        .I5(\tl00_inferred__0/i__carry_n_4 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFCCCB8880000B888)) 
    \tl0[4]_i_3 
       (.I0(\tl0[4]_i_4_n_0 ),
        .I1(\tmod_reg[7]_0 [1]),
        .I2(\tl00_inferred__0/i___0_carry_n_4 ),
        .I3(\tmod_reg[7]_0 [0]),
        .I4(\tl0[4]_i_5_n_0 ),
        .I5(th0[4]),
        .O(\tl0[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \tl0[4]_i_4 
       (.I0(tl0[4]),
        .I1(tl0[0]),
        .I2(tl0[1]),
        .I3(tl0[2]),
        .I4(tl0[3]),
        .O(\tl0[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \tl0[4]_i_5 
       (.I0(\tl0[4]_i_6_n_0 ),
        .I1(\tmod_reg[7]_0 [0]),
        .I2(tl0[7]),
        .I3(tl0[6]),
        .I4(tl0[4]),
        .I5(tl0[5]),
        .O(\tl0[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tl0[4]_i_6 
       (.I0(tl0[3]),
        .I1(tl0[2]),
        .I2(tl0[1]),
        .I3(tl0[0]),
        .O(\tl0[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \tl0[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(\tl0_reg[0]_1 ),
        .I2(\tl0_reg[4]_1 ),
        .I3(\tmod_reg[7]_0 [0]),
        .I4(\tmod_reg[7]_0 [1]),
        .I5(tl0[5]),
        .O(\tl0[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \tl0[5]_i_2 
       (.I0(\th1_reg[5]_0 ),
        .I1(\tl0_reg[4]_1 ),
        .I2(\tl0[5]_i_3_n_0 ),
        .I3(\tmod_reg[7]_0 [1]),
        .I4(\tl00_inferred__0/i___0_carry__0_n_7 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hCF305555CF30DF75)) 
    \tl0[5]_i_3 
       (.I0(\tl0[5]_i_4_n_0 ),
        .I1(\tl0[4]_i_6_n_0 ),
        .I2(tl0[4]),
        .I3(tl0[5]),
        .I4(\tl0[0]_i_3_n_0 ),
        .I5(\tl0[5]_i_5_n_0 ),
        .O(\tl0[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \tl0[5]_i_4 
       (.I0(tl0[3]),
        .I1(th0[5]),
        .I2(tl0[0]),
        .I3(tl0[2]),
        .I4(tl0[1]),
        .O(\tl0[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tl0[5]_i_5 
       (.I0(tl0[0]),
        .I1(tl0[2]),
        .I2(tl0[1]),
        .O(\tl0[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5FFF5FCF500050C0)) 
    \tl0[6]_i_1 
       (.I0(\tl0_reg[6]_1 ),
        .I1(\tl0[6]_i_2_n_0 ),
        .I2(\tl0_reg[0]_1 ),
        .I3(\tl0_reg[4]_1 ),
        .I4(\tl0[6]_i_3_n_0 ),
        .I5(tl0[6]),
        .O(\tl0[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6EFF6E00)) 
    \tl0[6]_i_2 
       (.I0(\tl0[6]_i_4_n_0 ),
        .I1(tl0[6]),
        .I2(\tl0[6]_i_5_n_0 ),
        .I3(\tmod_reg[7]_0 [1]),
        .I4(\tl00_inferred__0/i___0_carry__0_n_6 ),
        .O(\tl0[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \tl0[6]_i_3 
       (.I0(\tmod_reg[7]_0 [0]),
        .I1(\tmod_reg[7]_0 [1]),
        .O(\tl0[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tl0[6]_i_4 
       (.I0(tl0[5]),
        .I1(tl0[4]),
        .I2(tl0[0]),
        .I3(tl0[1]),
        .I4(tl0[2]),
        .I5(tl0[3]),
        .O(\tl0[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBFBBBBBBBFBBB)) 
    \tl0[6]_i_5 
       (.I0(\tmod_reg[7]_0 [0]),
        .I1(tl0[7]),
        .I2(tl0[4]),
        .I3(tl0[5]),
        .I4(th0[6]),
        .I5(\tl0[4]_i_6_n_0 ),
        .O(\tl0[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF704FFFFF7040000)) 
    \tl0[7]_i_1 
       (.I0(\tl0_reg[7]_1 ),
        .I1(\tl0_reg[7]_2 ),
        .I2(\tl0_reg[7]_3 ),
        .I3(\tl0[7]_i_3_n_0 ),
        .I4(\tl0[7]_i_4_n_0 ),
        .I5(tl0[7]),
        .O(\tl0[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3BCC3BCCFFFF0000)) 
    \tl0[7]_i_3 
       (.I0(th0[7]),
        .I1(tl0[7]),
        .I2(\tmod_reg[7]_0 [0]),
        .I3(\tl0[7]_i_5_n_0 ),
        .I4(\tl00_inferred__0/i___0_carry__0_n_5 ),
        .I5(\tmod_reg[7]_0 [1]),
        .O(\tl0[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \tl0[7]_i_4 
       (.I0(\tl0_reg[0]_1 ),
        .I1(\tl0_reg[4]_1 ),
        .I2(\tmod_reg[7]_0 [0]),
        .I3(\tmod_reg[7]_0 [1]),
        .O(\tl0[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \tl0[7]_i_5 
       (.I0(\tl0[4]_i_6_n_0 ),
        .I1(tl0[4]),
        .I2(tl0[5]),
        .I3(tl0[6]),
        .O(\tl0[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\tl0_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(p_1_in[0]),
        .Q(tl0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\tl0_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(p_1_in[1]),
        .Q(tl0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\tl0_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(p_1_in[2]),
        .Q(tl0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\tl0_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(\tl0_reg[3]_1 ),
        .Q(tl0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\tl0_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(p_1_in[4]),
        .Q(tl0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tl0[5]_i_1_n_0 ),
        .Q(tl0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tl0[6]_i_1_n_0 ),
        .Q(tl0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tl0_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tl0[7]_i_1_n_0 ),
        .Q(tl0[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl10__0_carry
       (.CI(1'b0),
        .CO({tl10__0_carry_n_0,tl10__0_carry_n_1,tl10__0_carry_n_2,tl10__0_carry_n_3}),
        .CYINIT(tl1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tl10__0_carry_n_4,tl10__0_carry_n_5,tl10__0_carry_n_6,NLW_tl10__0_carry_O_UNCONNECTED[0]}),
        .S(tl1[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl10__0_carry__0
       (.CI(tl10__0_carry_n_0),
        .CO({tl10__0_carry__0_n_0,tl10__0_carry__0_n_1,tl10__0_carry__0_n_2,tl10__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tl10__0_carry__0_n_4,tl10__0_carry__0_n_5,tl10__0_carry__0_n_6,tl10__0_carry__0_n_7}),
        .S({th1[0],tl1[7],S,tl1[5]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl10__0_carry__1
       (.CI(tl10__0_carry__0_n_0),
        .CO({tl10__0_carry__1_n_0,tl10__0_carry__1_n_1,tl10__0_carry__1_n_2,tl10__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tl10__0_carry__1_n_4,tl10__0_carry__1_n_5,tl10__0_carry__1_n_6,tl10__0_carry__1_n_7}),
        .S(th1[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl10__0_carry__2
       (.CI(tl10__0_carry__1_n_0),
        .CO({tl10__0_carry__2_n_0,NLW_tl10__0_carry__2_CO_UNCONNECTED[2],tl10__0_carry__2_n_2,tl10__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tl10__0_carry__2_O_UNCONNECTED[3],tl10__0_carry__2_n_5,tl10__0_carry__2_n_6,tl10__0_carry__2_n_7}),
        .S({1'b1,th1[7:5]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl10_carry
       (.CI(1'b0),
        .CO({tl10_carry_n_0,tl10_carry_n_1,tl10_carry_n_2,tl10_carry_n_3}),
        .CYINIT(tl1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tl10[4:1]),
        .S(tl1[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl10_carry__0
       (.CI(tl10_carry_n_0),
        .CO({tl10_carry__0_n_0,tl10_carry__0_n_1,tl10_carry__0_n_2,tl10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tl10[8:5]),
        .S(th1[3:0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl10_carry__1
       (.CI(tl10_carry__0_n_0),
        .CO({tl10_carry__1_n_0,tl10_carry__1_n_1,tl10_carry__1_n_2,tl10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tl10[12:9]),
        .S(th1[7:4]));
  LUT6 #(
    .INIT(64'hB8888888BBBBBBBB)) 
    \tl1[0]_i_1 
       (.I0(des1[0]),
        .I1(\th1_reg[0]_1 ),
        .I2(\tmod_reg[7]_0 [5]),
        .I3(th1[0]),
        .I4(\tl1[0]_i_2_n_0 ),
        .I5(tl1[0]),
        .O(\tl1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \tl1[0]_i_2 
       (.I0(tl1[2]),
        .I1(tl1[1]),
        .I2(tl1[3]),
        .I3(\tl1[0]_i_3_n_0 ),
        .I4(tl1[7]),
        .O(\tl1[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \tl1[0]_i_3 
       (.I0(tl1[5]),
        .I1(tl1[4]),
        .I2(S),
        .O(\tl1[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABBABBBBABBAAAAA)) 
    \tl1[1]_i_2 
       (.I0(\tl1[1]_i_3_n_0 ),
        .I1(\tmod_reg[7]_0 [5]),
        .I2(tl1[0]),
        .I3(tl1[1]),
        .I4(\tmod_reg[7]_0 [4]),
        .I5(tl10[1]),
        .O(\tmod_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hBE00BE000000BE00)) 
    \tl1[1]_i_3 
       (.I0(\tl1[0]_i_2_n_0 ),
        .I1(tl1[0]),
        .I2(tl1[1]),
        .I3(\tmod_reg[7]_0 [5]),
        .I4(tf1_1_i_5_n_0),
        .I5(th1[1]),
        .O(\tl1[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tl1[2]_i_2 
       (.I0(\tl1[2]_i_3_n_0 ),
        .I1(\tmod_reg[7]_0 [5]),
        .I2(tl10__0_carry_n_6),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[2]),
        .O(\tmod_reg[5]_3 ));
  LUT6 #(
    .INIT(64'h08FFFF00FF00FF00)) 
    \tl1[2]_i_3 
       (.I0(th1[2]),
        .I1(tl1[3]),
        .I2(\tl1[2]_i_4_n_0 ),
        .I3(tl1[2]),
        .I4(tl1[1]),
        .I5(tl1[0]),
        .O(\tl1[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tl1[2]_i_4 
       (.I0(S),
        .I1(tl1[4]),
        .I2(tl1[5]),
        .I3(tl1[7]),
        .O(\tl1[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \tl1[3]_i_2 
       (.I0(\tl1[3]_i_3_n_0 ),
        .I1(\tmod_reg[7]_0 [5]),
        .I2(tl10__0_carry_n_5),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[3]),
        .O(\tmod_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hF0600060)) 
    \tl1[3]_i_3 
       (.I0(tl1[3]),
        .I1(\tl1[3]_i_4_n_0 ),
        .I2(\tmod_reg[7]_0 [5]),
        .I3(\tl1[4]_i_6_n_0 ),
        .I4(th1[3]),
        .O(\tl1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tl1[3]_i_4 
       (.I0(tl1[2]),
        .I1(tl1[1]),
        .I2(tl1[0]),
        .O(\tl1[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF7F7F7)) 
    \tl1[4]_i_3 
       (.I0(\th1_reg[0]_3 ),
        .I1(pres_ow__0),
        .I2(\tmod_reg[7]_0 [6]),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(\tmod_reg[7]_0 [5]),
        .O(\tcon_s_reg[3] ));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \tl1[4]_i_4 
       (.I0(\tl1[4]_i_5_n_0 ),
        .I1(\tmod_reg[7]_0 [5]),
        .I2(tl10__0_carry_n_4),
        .I3(\tmod_reg[7]_0 [4]),
        .I4(tl10[4]),
        .O(\tmod_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hF900F9000000F900)) 
    \tl1[4]_i_5 
       (.I0(tl1[4]),
        .I1(\tl1[6]_i_5_n_0 ),
        .I2(\tl1[4]_i_6_n_0 ),
        .I3(\tmod_reg[7]_0 [5]),
        .I4(tf1_1_i_5_n_0),
        .I5(th1[4]),
        .O(\tl1[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \tl1[4]_i_6 
       (.I0(S),
        .I1(tl1[5]),
        .I2(tl1[4]),
        .I3(tl1[3]),
        .I4(tl1[7]),
        .I5(\tl1[3]_i_4_n_0 ),
        .O(\tl1[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \tl1[5]_i_1 
       (.I0(\tl1[5]_i_2_n_0 ),
        .I1(\tl1_reg[4]_0 ),
        .I2(\th1_reg[0]_1 ),
        .I3(\tmod_reg[7]_0 [5]),
        .I4(\tmod_reg[7]_0 [4]),
        .I5(tl1[5]),
        .O(\tl1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFEEE2EEE2)) 
    \tl1[5]_i_2 
       (.I0(tl10__0_carry__0_n_7),
        .I1(\tmod_reg[7]_0 [5]),
        .I2(\tl1[5]_i_3_n_0 ),
        .I3(\tl1[5]_i_4_n_0 ),
        .I4(\th1_reg[5]_0 ),
        .I5(\th1_reg[0]_1 ),
        .O(\tl1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h07FFFFFFF0000000)) 
    \tl1[5]_i_3 
       (.I0(tl1[7]),
        .I1(S),
        .I2(tl1[3]),
        .I3(\tl1[3]_i_4_n_0 ),
        .I4(tl1[4]),
        .I5(tl1[5]),
        .O(\tl1[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555044404440444)) 
    \tl1[5]_i_4 
       (.I0(\tl1[2]_i_4_n_0 ),
        .I1(tl1[5]),
        .I2(tl1[4]),
        .I3(tl1[3]),
        .I4(th1[5]),
        .I5(\tl1[3]_i_4_n_0 ),
        .O(\tl1[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE1F1FFFFE1F10000)) 
    \tl1[6]_i_2 
       (.I0(\tl1[6]_i_4_n_0 ),
        .I1(\tl1[6]_i_5_n_0 ),
        .I2(S),
        .I3(\tl1[6]_i_6_n_0 ),
        .I4(\tmod_reg[7]_0 [5]),
        .I5(tl10__0_carry__0_n_6),
        .O(\tl1_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \tl1[6]_i_4 
       (.I0(tl1[4]),
        .I1(tl1[5]),
        .O(\tl1[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tl1[6]_i_5 
       (.I0(tl1[3]),
        .I1(tl1[0]),
        .I2(tl1[1]),
        .I3(tl1[2]),
        .O(\tl1[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AFFFFFFFFFFFFFF)) 
    \tl1[6]_i_6 
       (.I0(tl1[5]),
        .I1(tl1[4]),
        .I2(tl1[3]),
        .I3(tl1[7]),
        .I4(\tl1[3]_i_4_n_0 ),
        .I5(th1[6]),
        .O(\tl1[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBF88888880)) 
    \tl1[7]_i_1 
       (.I0(\tl1[7]_i_2_n_0 ),
        .I1(\tl1_reg[4]_0 ),
        .I2(\th1_reg[0]_1 ),
        .I3(\tmod_reg[7]_0 [5]),
        .I4(\tmod_reg[7]_0 [4]),
        .I5(tl1[7]),
        .O(\tl1[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FFE0E0)) 
    \tl1[7]_i_2 
       (.I0(tl10__0_carry__0_n_5),
        .I1(\tmod_reg[7]_0 [5]),
        .I2(\tl1[7]_i_3_n_0 ),
        .I3(\tl0_reg[7]_1 ),
        .I4(\th1_reg[0]_1 ),
        .O(\tl1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAA6AFFFFFFFF)) 
    \tl1[7]_i_3 
       (.I0(tl1[7]),
        .I1(tl1[3]),
        .I2(\tl1[3]_i_4_n_0 ),
        .I3(\tl1[0]_i_3_n_0 ),
        .I4(th1[7]),
        .I5(\tmod_reg[7]_0 [5]),
        .O(\tl1[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\tl1_reg[4]_0 ),
        .CLR(rst_IBUF),
        .D(\tl1[0]_i_1_n_0 ),
        .Q(tl1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\tl1_reg[4]_0 ),
        .CLR(rst_IBUF),
        .D(\tl1_reg[4]_1 [0]),
        .Q(tl1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\tl1_reg[4]_0 ),
        .CLR(rst_IBUF),
        .D(\tl1_reg[4]_1 [1]),
        .Q(tl1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\tl1_reg[4]_0 ),
        .CLR(rst_IBUF),
        .D(\tl1_reg[4]_1 [2]),
        .Q(tl1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\tl1_reg[4]_0 ),
        .CLR(rst_IBUF),
        .D(\tl1_reg[4]_1 [3]),
        .Q(tl1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tl1[5]_i_1_n_0 ),
        .Q(tl1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tl1_reg[6]_1 ),
        .Q(S));
  FDCE #(
    .INIT(1'b0)) 
    \tl1_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\tl1[7]_i_1_n_0 ),
        .Q(tl1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[0]),
        .Q(\tmod_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[1]),
        .Q(\tmod_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[2]),
        .Q(\tmod_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[3]),
        .Q(\tmod_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[4]),
        .Q(\tmod_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[5]),
        .Q(\tmod_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[6]),
        .Q(\tmod_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \tmod_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\tmod_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[7]),
        .Q(\tmod_reg[7]_0 [7]));
endmodule

module oc8051_tc2
   (Q,
    \th2_reg[7]_0 ,
    tf2_set_reg_0,
    brate2,
    \t2con_reg[7]_0 ,
    \t2con_reg[6]_0 ,
    \t2con_reg[5]_0 ,
    \t2con_reg[4]_0 ,
    t2con,
    \t2con_reg[7]_1 ,
    \t2con_reg[1]_0 ,
    \t2con_reg[6]_1 ,
    \t2con_reg[2]_0 ,
    \pcon_reg[0] ,
    \pcon_reg[2] ,
    \pcon_reg[3] ,
    \pcon_reg[4] ,
    \pcon_reg[5] ,
    \pcon_reg[6] ,
    \t2con_reg[4]_1 ,
    \rcap2l_reg[0]_0 ,
    \t2con_reg[7]_2 ,
    \rcap2l_reg[6]_0 ,
    \rcap2h_reg[6]_0 ,
    clk_8051_BUFG,
    rst_IBUF,
    \t2con_reg[7]_3 ,
    \t2con_reg[6]_2 ,
    \t2con_reg[5]_1 ,
    \t2con_reg[4]_2 ,
    \t2con_reg[3]_0 ,
    \t2con_reg[2]_1 ,
    \t2con_reg[1]_1 ,
    \t2con_reg[0]_0 ,
    \dat0[7]_i_7 ,
    \dat0[7]_i_7_0 ,
    \dat0[0]_i_4 ,
    \dat0[0]_i_4_0 ,
    \dat0[0]_i_8_0 ,
    \dat0[0]_i_8_1 ,
    \dat0[0]_i_8_2 ,
    \dat0[1]_i_2 ,
    \dat0[1]_i_2_0 ,
    \dat0[6]_i_2 ,
    \dat0_reg[0]_i_2 ,
    \dat0_reg[0]_i_2_0 ,
    \dat0[2]_i_2 ,
    \dat0[3]_i_2 ,
    \dat0[4]_i_2 ,
    \dat0[5]_i_2 ,
    \dat0[6]_i_2_0 ,
    pres_ow__0,
    tf2_set9_out,
    \tl2_reg[3]_0 ,
    smod_clk_tr_reg,
    smod_clk_tr_reg_0,
    smod_clk_tr_reg_1,
    \dat0[0]_i_4_1 ,
    \dat0[0]_i_4_2 ,
    \dat0[0]_i_4_3 ,
    ie,
    \th2_reg[1]_0 ,
    \tl2_reg[6]_0 ,
    \th2_reg[7]_1 ,
    \th2_reg[5]_0 ,
    \th2_reg[6]_0 ,
    \tl2_reg[4]_0 ,
    \tl2_reg[2]_0 ,
    des1,
    \tl2_reg[3]_1 ,
    \rcap2l_reg[0]_1 ,
    \rcap2h_reg[0]_0 );
  output [1:0]Q;
  output [1:0]\th2_reg[7]_0 ;
  output tf2_set_reg_0;
  output brate2;
  output \t2con_reg[7]_0 ;
  output \t2con_reg[6]_0 ;
  output \t2con_reg[5]_0 ;
  output \t2con_reg[4]_0 ;
  output [3:0]t2con;
  output \t2con_reg[7]_1 ;
  output \t2con_reg[1]_0 ;
  output \t2con_reg[6]_1 ;
  output \t2con_reg[2]_0 ;
  output \pcon_reg[0] ;
  output \pcon_reg[2] ;
  output \pcon_reg[3] ;
  output \pcon_reg[4] ;
  output \pcon_reg[5] ;
  output \pcon_reg[6] ;
  output \t2con_reg[4]_1 ;
  output \rcap2l_reg[0]_0 ;
  output \t2con_reg[7]_2 ;
  output [4:0]\rcap2l_reg[6]_0 ;
  output [4:0]\rcap2h_reg[6]_0 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \t2con_reg[7]_3 ;
  input \t2con_reg[6]_2 ;
  input \t2con_reg[5]_1 ;
  input \t2con_reg[4]_2 ;
  input \t2con_reg[3]_0 ;
  input \t2con_reg[2]_1 ;
  input \t2con_reg[1]_1 ;
  input \t2con_reg[0]_0 ;
  input \dat0[7]_i_7 ;
  input \dat0[7]_i_7_0 ;
  input \dat0[0]_i_4 ;
  input \dat0[0]_i_4_0 ;
  input \dat0[0]_i_8_0 ;
  input \dat0[0]_i_8_1 ;
  input \dat0[0]_i_8_2 ;
  input \dat0[1]_i_2 ;
  input \dat0[1]_i_2_0 ;
  input [5:0]\dat0[6]_i_2 ;
  input \dat0_reg[0]_i_2 ;
  input \dat0_reg[0]_i_2_0 ;
  input \dat0[2]_i_2 ;
  input \dat0[3]_i_2 ;
  input \dat0[4]_i_2 ;
  input \dat0[5]_i_2 ;
  input \dat0[6]_i_2_0 ;
  input pres_ow__0;
  input tf2_set9_out;
  input [0:0]\tl2_reg[3]_0 ;
  input smod_clk_tr_reg;
  input smod_clk_tr_reg_0;
  input smod_clk_tr_reg_1;
  input \dat0[0]_i_4_1 ;
  input \dat0[0]_i_4_2 ;
  input \dat0[0]_i_4_3 ;
  input [0:0]ie;
  input \th2_reg[1]_0 ;
  input \tl2_reg[6]_0 ;
  input \th2_reg[7]_1 ;
  input \th2_reg[5]_0 ;
  input \th2_reg[6]_0 ;
  input \tl2_reg[4]_0 ;
  input \tl2_reg[2]_0 ;
  input [7:0]des1;
  input \tl2_reg[3]_1 ;
  input [0:0]\rcap2l_reg[0]_1 ;
  input [0:0]\rcap2h_reg[0]_0 ;

  wire [1:0]Q;
  wire brate2;
  wire brate2_i_1_n_0;
  wire brate2_i_2_n_0;
  wire clk_8051_BUFG;
  wire \dat0[0]_i_14_n_0 ;
  wire \dat0[0]_i_4 ;
  wire \dat0[0]_i_4_0 ;
  wire \dat0[0]_i_4_1 ;
  wire \dat0[0]_i_4_2 ;
  wire \dat0[0]_i_4_3 ;
  wire \dat0[0]_i_8_0 ;
  wire \dat0[0]_i_8_1 ;
  wire \dat0[0]_i_8_2 ;
  wire \dat0[1]_i_13_n_0 ;
  wire \dat0[1]_i_2 ;
  wire \dat0[1]_i_2_0 ;
  wire \dat0[2]_i_2 ;
  wire \dat0[3]_i_2 ;
  wire \dat0[4]_i_2 ;
  wire \dat0[5]_i_2 ;
  wire [5:0]\dat0[6]_i_2 ;
  wire \dat0[6]_i_2_0 ;
  wire \dat0[7]_i_32_n_0 ;
  wire \dat0[7]_i_7 ;
  wire \dat0[7]_i_7_0 ;
  wire \dat0_reg[0]_i_2 ;
  wire \dat0_reg[0]_i_2_0 ;
  wire [7:0]data3;
  wire [7:0]des1;
  wire [0:0]ie;
  wire \pcon_reg[0] ;
  wire \pcon_reg[2] ;
  wire \pcon_reg[3] ;
  wire \pcon_reg[4] ;
  wire \pcon_reg[5] ;
  wire \pcon_reg[6] ;
  wire pres_ow__0;
  wire [7:0]rcap2h;
  wire [0:0]\rcap2h_reg[0]_0 ;
  wire [4:0]\rcap2h_reg[6]_0 ;
  wire [7:0]rcap2l;
  wire \rcap2l_reg[0]_0 ;
  wire [0:0]\rcap2l_reg[0]_1 ;
  wire [4:0]\rcap2l_reg[6]_0 ;
  wire rst_IBUF;
  wire smod_clk_tr_reg;
  wire smod_clk_tr_reg_0;
  wire smod_clk_tr_reg_1;
  wire [3:0]t2con;
  wire \t2con_reg[0]_0 ;
  wire \t2con_reg[1]_0 ;
  wire \t2con_reg[1]_1 ;
  wire \t2con_reg[2]_0 ;
  wire \t2con_reg[2]_1 ;
  wire \t2con_reg[3]_0 ;
  wire \t2con_reg[4]_0 ;
  wire \t2con_reg[4]_1 ;
  wire \t2con_reg[4]_2 ;
  wire \t2con_reg[5]_0 ;
  wire \t2con_reg[5]_1 ;
  wire \t2con_reg[6]_0 ;
  wire \t2con_reg[6]_1 ;
  wire \t2con_reg[6]_2 ;
  wire \t2con_reg[7]_0 ;
  wire \t2con_reg[7]_1 ;
  wire \t2con_reg[7]_2 ;
  wire \t2con_reg[7]_3 ;
  wire tf2_set;
  wire tf2_set9_out;
  wire tf2_set_i_1_n_0;
  wire tf2_set_i_3_n_0;
  wire tf2_set_reg_0;
  wire [6:0]th2;
  wire \th2[0]_i_1_n_0 ;
  wire \th2[1]_i_1_n_0 ;
  wire \th2[2]_i_1_n_0 ;
  wire \th2[3]_i_1_n_0 ;
  wire \th2[4]_i_1_n_0 ;
  wire \th2[5]_i_1_n_0 ;
  wire \th2[6]_i_1_n_0 ;
  wire \th2[7]_i_1_n_0 ;
  wire \th2[7]_i_2_n_0 ;
  wire \th2_reg[1]_0 ;
  wire \th2_reg[5]_0 ;
  wire \th2_reg[6]_0 ;
  wire [1:0]\th2_reg[7]_0 ;
  wire \th2_reg[7]_1 ;
  wire [6:0]tl2;
  wire tl20_carry__0_n_0;
  wire tl20_carry__0_n_1;
  wire tl20_carry__0_n_2;
  wire tl20_carry__0_n_3;
  wire tl20_carry__0_n_5;
  wire tl20_carry__0_n_6;
  wire tl20_carry__0_n_7;
  wire tl20_carry__1_n_0;
  wire tl20_carry__1_n_1;
  wire tl20_carry__1_n_2;
  wire tl20_carry__1_n_3;
  wire tl20_carry__2_n_0;
  wire tl20_carry__2_n_2;
  wire tl20_carry__2_n_3;
  wire tl20_carry_n_0;
  wire tl20_carry_n_1;
  wire tl20_carry_n_2;
  wire tl20_carry_n_3;
  wire tl20_carry_n_4;
  wire tl20_carry_n_5;
  wire tl20_carry_n_6;
  wire tl20_carry_n_7;
  wire \tl2[0]_i_1_n_0 ;
  wire \tl2[1]_i_1_n_0 ;
  wire \tl2[2]_i_1_n_0 ;
  wire \tl2[3]_i_1_n_0 ;
  wire \tl2[4]_i_1_n_0 ;
  wire \tl2[4]_i_2_n_0 ;
  wire \tl2[4]_i_3_n_0 ;
  wire \tl2[4]_i_4_n_0 ;
  wire \tl2[4]_i_5_n_0 ;
  wire \tl2[4]_i_6_n_0 ;
  wire \tl2[5]_i_1_n_0 ;
  wire \tl2[6]_i_1_n_0 ;
  wire \tl2[7]_i_1_n_0 ;
  wire \tl2[7]_i_2_n_0 ;
  wire \tl2[7]_i_5_n_0 ;
  wire \tl2[7]_i_6_n_0 ;
  wire \tl2[7]_i_7_n_0 ;
  wire \tl2[7]_i_8_n_0 ;
  wire \tl2_reg[2]_0 ;
  wire [0:0]\tl2_reg[3]_0 ;
  wire \tl2_reg[3]_1 ;
  wire \tl2_reg[4]_0 ;
  wire \tl2_reg[6]_0 ;
  wire [2:2]NLW_tl20_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_tl20_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_23
       (.I0(\t2con_reg[6]_0 ),
        .I1(\t2con_reg[7]_0 ),
        .I2(\dat0[0]_i_4_0 ),
        .I3(\t2con_reg[4]_0 ),
        .I4(\dat0[0]_i_8_0 ),
        .I5(\t2con_reg[5]_0 ),
        .O(\t2con_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_24
       (.I0(t2con[2]),
        .I1(t2con[3]),
        .I2(\dat0[0]_i_4_0 ),
        .I3(t2con[0]),
        .I4(\dat0[0]_i_8_0 ),
        .I5(t2con[1]),
        .O(\t2con_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFF80808000)) 
    brate2_i_1
       (.I0(tf2_set),
        .I1(tf2_set9_out),
        .I2(brate2_i_2_n_0),
        .I3(\t2con_reg[4]_0 ),
        .I4(\t2con_reg[5]_0 ),
        .I5(brate2),
        .O(brate2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    brate2_i_2
       (.I0(t2con[2]),
        .I1(pres_ow__0),
        .I2(t2con[1]),
        .O(brate2_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    brate2_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(brate2_i_1_n_0),
        .Q(brate2));
  LUT6 #(
    .INIT(64'h00000047FFFFFF47)) 
    \dat0[0]_i_14 
       (.I0(rcap2l[0]),
        .I1(\dat0[0]_i_8_0 ),
        .I2(rcap2h[0]),
        .I3(\dat0[0]_i_8_1 ),
        .I4(\dat0[0]_i_8_2 ),
        .I5(t2con[0]),
        .O(\dat0[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \dat0[0]_i_5 
       (.I0(\dat0[6]_i_2 [0]),
        .I1(\dat0_reg[0]_i_2 ),
        .I2(\dat0[0]_i_4 ),
        .I3(th2[0]),
        .I4(\dat0_reg[0]_i_2_0 ),
        .I5(tl2[0]),
        .O(\pcon_reg[0] ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \dat0[0]_i_8 
       (.I0(\dat0[0]_i_14_n_0 ),
        .I1(\dat0[0]_i_4 ),
        .I2(\dat0[0]_i_4_1 ),
        .I3(\dat0[0]_i_4_0 ),
        .I4(\dat0[0]_i_4_2 ),
        .I5(\dat0[0]_i_4_3 ),
        .O(\rcap2l_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \dat0[1]_i_13 
       (.I0(rcap2l[1]),
        .I1(\dat0[0]_i_8_0 ),
        .I2(rcap2h[1]),
        .O(\dat0[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \dat0[1]_i_5 
       (.I0(\dat0[1]_i_2 ),
        .I1(\dat0[1]_i_2_0 ),
        .I2(\dat0[0]_i_4 ),
        .I3(\dat0[1]_i_13_n_0 ),
        .I4(\dat0[0]_i_4_0 ),
        .I5(t2con[1]),
        .O(\t2con_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[2]_i_5 
       (.I0(\dat0[6]_i_2 [1]),
        .I1(\dat0[2]_i_2 ),
        .I2(\dat0[0]_i_4 ),
        .I3(th2[2]),
        .I4(\dat0_reg[0]_i_2_0 ),
        .I5(tl2[2]),
        .O(\pcon_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[3]_i_5 
       (.I0(\dat0[6]_i_2 [2]),
        .I1(\dat0[3]_i_2 ),
        .I2(\dat0[0]_i_4 ),
        .I3(th2[3]),
        .I4(\dat0_reg[0]_i_2_0 ),
        .I5(tl2[3]),
        .O(\pcon_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[4]_i_5 
       (.I0(\dat0[6]_i_2 [3]),
        .I1(\dat0[4]_i_2 ),
        .I2(\dat0[0]_i_4 ),
        .I3(th2[4]),
        .I4(\dat0_reg[0]_i_2_0 ),
        .I5(tl2[4]),
        .O(\pcon_reg[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[5]_i_5 
       (.I0(\dat0[6]_i_2 [4]),
        .I1(\dat0[5]_i_2 ),
        .I2(\dat0[0]_i_4 ),
        .I3(th2[5]),
        .I4(\dat0_reg[0]_i_2_0 ),
        .I5(tl2[5]),
        .O(\pcon_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[6]_i_5 
       (.I0(\dat0[6]_i_2 [5]),
        .I1(\dat0[6]_i_2_0 ),
        .I2(\dat0[0]_i_4 ),
        .I3(th2[6]),
        .I4(\dat0_reg[0]_i_2_0 ),
        .I5(tl2[6]),
        .O(\pcon_reg[6] ));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \dat0[7]_i_20 
       (.I0(\dat0[7]_i_7 ),
        .I1(\dat0[7]_i_7_0 ),
        .I2(\dat0[0]_i_4 ),
        .I3(\dat0[7]_i_32_n_0 ),
        .I4(\dat0[0]_i_4_0 ),
        .I5(\t2con_reg[7]_0 ),
        .O(\t2con_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \dat0[7]_i_32 
       (.I0(rcap2h[7]),
        .I1(\dat0[0]_i_8_0 ),
        .I2(rcap2l[7]),
        .O(\dat0[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \int_dept[1]_i_3 
       (.I0(\t2con_reg[7]_0 ),
        .I1(\t2con_reg[6]_0 ),
        .I2(ie),
        .O(\t2con_reg[7]_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[0]),
        .Q(rcap2h[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[1]),
        .Q(rcap2h[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[2]),
        .Q(\rcap2h_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[3]),
        .Q(\rcap2h_reg[6]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[4]),
        .Q(\rcap2h_reg[6]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[5]),
        .Q(\rcap2h_reg[6]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[6]),
        .Q(\rcap2h_reg[6]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2h_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2h_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[7]),
        .Q(rcap2h[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[0]),
        .Q(rcap2l[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[1]),
        .Q(rcap2l[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[2]),
        .Q(\rcap2l_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[3]),
        .Q(\rcap2l_reg[6]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[4]),
        .Q(\rcap2l_reg[6]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[5]),
        .Q(\rcap2l_reg[6]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[6]),
        .Q(\rcap2l_reg[6]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rcap2l_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\rcap2l_reg[0]_1 ),
        .CLR(rst_IBUF),
        .D(des1[7]),
        .Q(rcap2l[7]));
  LUT5 #(
    .INIT(32'h2E2E002E)) 
    shift_tr_i_2
       (.I0(smod_clk_tr_reg),
        .I1(\t2con_reg[4]_0 ),
        .I2(brate2),
        .I3(smod_clk_tr_reg_0),
        .I4(smod_clk_tr_reg_1),
        .O(\t2con_reg[4]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[0]_0 ),
        .Q(t2con[0]));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[1]_1 ),
        .Q(t2con[1]));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[2]_1 ),
        .Q(t2con[2]));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[3]_0 ),
        .Q(t2con[3]));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[4]_2 ),
        .Q(\t2con_reg[4]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[5]_1 ),
        .Q(\t2con_reg[5]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[6]_2 ),
        .Q(\t2con_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \t2con_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\t2con_reg[7]_3 ),
        .Q(\t2con_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    tf2_set_i_1
       (.I0(tf2_set),
        .I1(tf2_set_i_3_n_0),
        .I2(tf2_set9_out),
        .I3(tf2_set_reg_0),
        .O(tf2_set_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'hE)) 
    tf2_set_i_2
       (.I0(tl20_carry__2_n_0),
        .I1(\tl2[4]_i_3_n_0 ),
        .O(tf2_set));
  LUT5 #(
    .INIT(32'hFFFFFF75)) 
    tf2_set_i_3
       (.I0(brate2_i_2_n_0),
        .I1(tl20_carry__2_n_0),
        .I2(t2con[0]),
        .I3(\t2con_reg[4]_0 ),
        .I4(\t2con_reg[5]_0 ),
        .O(tf2_set_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tf2_set_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tf2_set_i_1_n_0),
        .Q(tf2_set_reg_0));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \th2[0]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(des1[0]),
        .I3(rcap2h[0]),
        .I4(\tl2[4]_i_2_n_0 ),
        .I5(data3[0]),
        .O(\th2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DD000FF2FF222)) 
    \th2[1]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\tl2[4]_i_2_n_0 ),
        .I3(rcap2h[1]),
        .I4(data3[1]),
        .I5(\th2_reg[1]_0 ),
        .O(\th2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF02DFDFDF020202)) 
    \th2[2]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\tl2_reg[2]_0 ),
        .I3(data3[2]),
        .I4(\tl2[7]_i_5_n_0 ),
        .I5(\rcap2h_reg[6]_0 [0]),
        .O(\th2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFD20FDFDFD202020)) 
    \th2[3]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(des1[3]),
        .I3(data3[3]),
        .I4(\tl2[7]_i_5_n_0 ),
        .I5(\rcap2h_reg[6]_0 [1]),
        .O(\th2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF02DFDFDF020202)) 
    \th2[4]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\tl2_reg[4]_0 ),
        .I3(data3[4]),
        .I4(\tl2[7]_i_5_n_0 ),
        .I5(\rcap2h_reg[6]_0 [2]),
        .O(\th2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF02DFDFDF020202)) 
    \th2[5]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\th2_reg[5]_0 ),
        .I3(data3[5]),
        .I4(\tl2[7]_i_5_n_0 ),
        .I5(\rcap2h_reg[6]_0 [3]),
        .O(\th2[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF02DFDFDF020202)) 
    \th2[6]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\th2_reg[6]_0 ),
        .I3(data3[6]),
        .I4(\tl2[7]_i_5_n_0 ),
        .I5(\rcap2h_reg[6]_0 [4]),
        .O(\th2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \th2[7]_i_1 
       (.I0(t2con[2]),
        .I1(pres_ow__0),
        .I2(t2con[1]),
        .I3(tf2_set9_out),
        .I4(\tl2_reg[3]_0 ),
        .O(\th2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF02DFDFDF020202)) 
    \th2[7]_i_2 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\th2_reg[7]_1 ),
        .I3(data3[7]),
        .I4(\tl2[7]_i_5_n_0 ),
        .I5(rcap2h[7]),
        .O(\th2[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[0]_i_1_n_0 ),
        .Q(th2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[1]_i_1_n_0 ),
        .Q(\th2_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[2]_i_1_n_0 ),
        .Q(th2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[3]_i_1_n_0 ),
        .Q(th2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[4]_i_1_n_0 ),
        .Q(th2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[5]_i_1_n_0 ),
        .Q(th2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[6]_i_1_n_0 ),
        .Q(th2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \th2_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\th2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\th2[7]_i_2_n_0 ),
        .Q(\th2_reg[7]_0 [1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl20_carry
       (.CI(1'b0),
        .CO({tl20_carry_n_0,tl20_carry_n_1,tl20_carry_n_2,tl20_carry_n_3}),
        .CYINIT(tl2[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tl20_carry_n_4,tl20_carry_n_5,tl20_carry_n_6,tl20_carry_n_7}),
        .S({tl2[4:2],Q[0]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl20_carry__0
       (.CI(tl20_carry_n_0),
        .CO({tl20_carry__0_n_0,tl20_carry__0_n_1,tl20_carry__0_n_2,tl20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({data3[0],tl20_carry__0_n_5,tl20_carry__0_n_6,tl20_carry__0_n_7}),
        .S({th2[0],Q[1],tl2[6:5]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl20_carry__1
       (.CI(tl20_carry__0_n_0),
        .CO({tl20_carry__1_n_0,tl20_carry__1_n_1,tl20_carry__1_n_2,tl20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data3[4:1]),
        .S({th2[4:2],\th2_reg[7]_0 [0]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 tl20_carry__2
       (.CI(tl20_carry__1_n_0),
        .CO({tl20_carry__2_n_0,NLW_tl20_carry__2_CO_UNCONNECTED[2],tl20_carry__2_n_2,tl20_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tl20_carry__2_O_UNCONNECTED[3],data3[7:5]}),
        .S({1'b1,\th2_reg[7]_0 [1],th2[6:5]}));
  LUT6 #(
    .INIT(64'hFEFE10FE10FE10FE)) 
    \tl2[0]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(des1[0]),
        .I3(tl2[0]),
        .I4(\tl2[4]_i_2_n_0 ),
        .I5(rcap2l[0]),
        .O(\tl2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \tl2[1]_i_1 
       (.I0(\th2_reg[1]_0 ),
        .I1(\tl2_reg[6]_0 ),
        .I2(tl20_carry_n_7),
        .I3(\tl2[7]_i_5_n_0 ),
        .I4(rcap2l[1]),
        .O(\tl2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE0EE000FF1FF111)) 
    \tl2[2]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\tl2[4]_i_2_n_0 ),
        .I3(\rcap2l_reg[6]_0 [0]),
        .I4(tl20_carry_n_6),
        .I5(\tl2_reg[2]_0 ),
        .O(\tl2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE0EE000FF1FF111)) 
    \tl2[3]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\tl2[4]_i_2_n_0 ),
        .I3(\rcap2l_reg[6]_0 [1]),
        .I4(tl20_carry_n_5),
        .I5(\tl2_reg[3]_1 ),
        .O(\tl2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEE0EE000FF1FF111)) 
    \tl2[4]_i_1 
       (.I0(\tl2_reg[3]_0 ),
        .I1(tf2_set9_out),
        .I2(\tl2[4]_i_2_n_0 ),
        .I3(\rcap2l_reg[6]_0 [2]),
        .I4(tl20_carry_n_4),
        .I5(\tl2_reg[4]_0 ),
        .O(\tl2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT4 #(
    .INIT(16'hAAA2)) 
    \tl2[4]_i_2 
       (.I0(\tl2[4]_i_3_n_0 ),
        .I1(t2con[0]),
        .I2(\t2con_reg[4]_0 ),
        .I3(\t2con_reg[5]_0 ),
        .O(\tl2[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \tl2[4]_i_3 
       (.I0(\tl2[4]_i_4_n_0 ),
        .I1(th2[2]),
        .I2(tl2[4]),
        .I3(\th2_reg[7]_0 [0]),
        .I4(Q[1]),
        .I5(\tl2[4]_i_5_n_0 ),
        .O(\tl2[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tl2[4]_i_4 
       (.I0(th2[5]),
        .I1(tl2[5]),
        .I2(tl2[2]),
        .I3(tl2[0]),
        .O(\tl2[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \tl2[4]_i_5 
       (.I0(th2[6]),
        .I1(th2[4]),
        .I2(\th2_reg[7]_0 [1]),
        .I3(th2[0]),
        .I4(\tl2[4]_i_6_n_0 ),
        .O(\tl2[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tl2[4]_i_6 
       (.I0(tl2[6]),
        .I1(Q[0]),
        .I2(th2[3]),
        .I3(tl2[3]),
        .O(\tl2[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \tl2[5]_i_1 
       (.I0(\th2_reg[5]_0 ),
        .I1(\tl2_reg[6]_0 ),
        .I2(tl20_carry__0_n_7),
        .I3(\tl2[7]_i_5_n_0 ),
        .I4(\rcap2l_reg[6]_0 [3]),
        .O(\tl2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \tl2[6]_i_1 
       (.I0(\th2_reg[6]_0 ),
        .I1(\tl2_reg[6]_0 ),
        .I2(tl20_carry__0_n_6),
        .I3(\tl2[7]_i_5_n_0 ),
        .I4(\rcap2l_reg[6]_0 [4]),
        .O(\tl2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h080008FF)) 
    \tl2[7]_i_1 
       (.I0(t2con[2]),
        .I1(pres_ow__0),
        .I2(t2con[1]),
        .I3(tf2_set9_out),
        .I4(\tl2_reg[3]_0 ),
        .O(\tl2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \tl2[7]_i_2 
       (.I0(\th2_reg[7]_1 ),
        .I1(\tl2_reg[6]_0 ),
        .I2(tl20_carry__0_n_5),
        .I3(\tl2[7]_i_5_n_0 ),
        .I4(rcap2l[7]),
        .O(\tl2[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF02)) 
    \tl2[7]_i_5 
       (.I0(t2con[0]),
        .I1(\t2con_reg[4]_0 ),
        .I2(\t2con_reg[5]_0 ),
        .I3(\tl2[7]_i_6_n_0 ),
        .I4(\tl2[7]_i_7_n_0 ),
        .I5(\tl2[7]_i_8_n_0 ),
        .O(\tl2[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \tl2[7]_i_6 
       (.I0(\th2_reg[7]_0 [0]),
        .I1(th2[2]),
        .I2(tl2[2]),
        .I3(Q[0]),
        .O(\tl2[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tl2[7]_i_7 
       (.I0(tl2[4]),
        .I1(Q[1]),
        .I2(tl2[5]),
        .I3(tl2[6]),
        .I4(tl2[3]),
        .I5(tl2[0]),
        .O(\tl2[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tl2[7]_i_8 
       (.I0(\th2_reg[7]_0 [1]),
        .I1(th2[4]),
        .I2(th2[6]),
        .I3(th2[5]),
        .I4(th2[0]),
        .I5(th2[3]),
        .O(\tl2[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[0]_i_1_n_0 ),
        .Q(tl2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[1]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[2]_i_1_n_0 ),
        .Q(tl2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[3]_i_1_n_0 ),
        .Q(tl2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[4]_i_1_n_0 ),
        .Q(tl2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[5]_i_1_n_0 ),
        .Q(tl2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[6]_i_1_n_0 ),
        .Q(tl2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tl2_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\tl2[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tl2[7]_i_2_n_0 ),
        .Q(Q[1]));
endmodule

module oc8051_top
   (istb_t_reg,
    int_ack_t,
    txd_OBUF,
    istb_t_reg_0,
    \pc_buf_reg[15] ,
    Q,
    iadr_o,
    \iadr_t_reg[5] ,
    internal_addr_OBUF,
    \iadr_t_reg[5]_0 ,
    istb_t_reg_1,
    clk_8051_BUFG,
    rst_IBUF,
    reti_reg,
    ack_o,
    rxd_IBUF,
    D);
  output istb_t_reg;
  output int_ack_t;
  output txd_OBUF;
  output istb_t_reg_0;
  output [6:0]\pc_buf_reg[15] ;
  output [6:0]Q;
  output [7:0]iadr_o;
  output \iadr_t_reg[5] ;
  output [7:0]internal_addr_OBUF;
  output \iadr_t_reg[5]_0 ;
  output istb_t_reg_1;
  input clk_8051_BUFG;
  input rst_IBUF;
  input reti_reg;
  input ack_o;
  input rxd_IBUF;
  input [31:0]D;

  wire [31:0]D;
  wire [6:0]Q;
  wire [7:0]acc;
  wire ack_o;
  wire [7:0]b_reg;
  wire [1:0]bank_sel;
  wire bit_addr;
  wire [0:0]\buff_reg[0]_0 ;
  wire [0:0]\buff_reg[1]_1 ;
  wire [0:0]\buff_reg[2]_2 ;
  wire [0:0]\buff_reg[3]_3 ;
  wire clk_8051_BUFG;
  wire cy;
  wire [0:0]cy_sel;
  wire [1:0]cycle;
  wire [5:0]data2;
  wire [7:6]data2__0;
  wire [7:0]data3;
  wire [7:0]des1;
  wire [7:0]des2;
  wire [7:0]des_acc;
  wire [1:0]divsrc2;
  wire [7:0]dptr_hi;
  wire [7:0]iadr_o;
  wire \iadr_t_reg[5] ;
  wire \iadr_t_reg[5]_0 ;
  wire [7:0]ie;
  wire imem_wait;
  wire int_ack;
  wire int_ack_t;
  wire [5:1]int_src;
  wire [7:0]internal_addr_OBUF;
  wire intr;
  wire [7:0]ip;
  wire istb_t_reg;
  wire istb_t_reg_0;
  wire istb_t_reg_1;
  wire [2:2]mem_act;
  wire [0:0]mul_result1;
  wire oc8051_alu1_n_1;
  wire oc8051_alu1_n_10;
  wire oc8051_alu1_n_11;
  wire oc8051_alu1_n_12;
  wire oc8051_alu1_n_13;
  wire oc8051_alu1_n_14;
  wire oc8051_alu1_n_16;
  wire oc8051_alu1_n_17;
  wire oc8051_alu1_n_32;
  wire oc8051_alu1_n_33;
  wire oc8051_alu1_n_8;
  wire oc8051_alu1_n_9;
  wire oc8051_alu_src_sel1_n_16;
  wire oc8051_decoder1_n_0;
  wire oc8051_decoder1_n_100;
  wire oc8051_decoder1_n_101;
  wire oc8051_decoder1_n_102;
  wire oc8051_decoder1_n_103;
  wire oc8051_decoder1_n_104;
  wire oc8051_decoder1_n_105;
  wire oc8051_decoder1_n_106;
  wire oc8051_decoder1_n_107;
  wire oc8051_decoder1_n_108;
  wire oc8051_decoder1_n_109;
  wire oc8051_decoder1_n_110;
  wire oc8051_decoder1_n_111;
  wire oc8051_decoder1_n_112;
  wire oc8051_decoder1_n_115;
  wire oc8051_decoder1_n_116;
  wire oc8051_decoder1_n_117;
  wire oc8051_decoder1_n_118;
  wire oc8051_decoder1_n_119;
  wire oc8051_decoder1_n_12;
  wire oc8051_decoder1_n_120;
  wire oc8051_decoder1_n_123;
  wire oc8051_decoder1_n_124;
  wire oc8051_decoder1_n_125;
  wire oc8051_decoder1_n_126;
  wire oc8051_decoder1_n_127;
  wire oc8051_decoder1_n_128;
  wire oc8051_decoder1_n_129;
  wire oc8051_decoder1_n_13;
  wire oc8051_decoder1_n_130;
  wire oc8051_decoder1_n_132;
  wire oc8051_decoder1_n_133;
  wire oc8051_decoder1_n_134;
  wire oc8051_decoder1_n_135;
  wire oc8051_decoder1_n_136;
  wire oc8051_decoder1_n_137;
  wire oc8051_decoder1_n_138;
  wire oc8051_decoder1_n_139;
  wire oc8051_decoder1_n_14;
  wire oc8051_decoder1_n_140;
  wire oc8051_decoder1_n_141;
  wire oc8051_decoder1_n_142;
  wire oc8051_decoder1_n_143;
  wire oc8051_decoder1_n_144;
  wire oc8051_decoder1_n_145;
  wire oc8051_decoder1_n_146;
  wire oc8051_decoder1_n_147;
  wire oc8051_decoder1_n_15;
  wire oc8051_decoder1_n_152;
  wire oc8051_decoder1_n_153;
  wire oc8051_decoder1_n_154;
  wire oc8051_decoder1_n_155;
  wire oc8051_decoder1_n_156;
  wire oc8051_decoder1_n_157;
  wire oc8051_decoder1_n_158;
  wire oc8051_decoder1_n_159;
  wire oc8051_decoder1_n_16;
  wire oc8051_decoder1_n_160;
  wire oc8051_decoder1_n_162;
  wire oc8051_decoder1_n_163;
  wire oc8051_decoder1_n_164;
  wire oc8051_decoder1_n_165;
  wire oc8051_decoder1_n_166;
  wire oc8051_decoder1_n_167;
  wire oc8051_decoder1_n_168;
  wire oc8051_decoder1_n_169;
  wire oc8051_decoder1_n_17;
  wire oc8051_decoder1_n_170;
  wire oc8051_decoder1_n_171;
  wire oc8051_decoder1_n_172;
  wire oc8051_decoder1_n_174;
  wire oc8051_decoder1_n_175;
  wire oc8051_decoder1_n_176;
  wire oc8051_decoder1_n_177;
  wire oc8051_decoder1_n_18;
  wire oc8051_decoder1_n_182;
  wire oc8051_decoder1_n_183;
  wire oc8051_decoder1_n_184;
  wire oc8051_decoder1_n_185;
  wire oc8051_decoder1_n_186;
  wire oc8051_decoder1_n_187;
  wire oc8051_decoder1_n_188;
  wire oc8051_decoder1_n_189;
  wire oc8051_decoder1_n_19;
  wire oc8051_decoder1_n_190;
  wire oc8051_decoder1_n_191;
  wire oc8051_decoder1_n_192;
  wire oc8051_decoder1_n_193;
  wire oc8051_decoder1_n_194;
  wire oc8051_decoder1_n_195;
  wire oc8051_decoder1_n_196;
  wire oc8051_decoder1_n_197;
  wire oc8051_decoder1_n_198;
  wire oc8051_decoder1_n_199;
  wire oc8051_decoder1_n_20;
  wire oc8051_decoder1_n_200;
  wire oc8051_decoder1_n_201;
  wire oc8051_decoder1_n_202;
  wire oc8051_decoder1_n_203;
  wire oc8051_decoder1_n_204;
  wire oc8051_decoder1_n_205;
  wire oc8051_decoder1_n_206;
  wire oc8051_decoder1_n_207;
  wire oc8051_decoder1_n_208;
  wire oc8051_decoder1_n_209;
  wire oc8051_decoder1_n_21;
  wire oc8051_decoder1_n_214;
  wire oc8051_decoder1_n_215;
  wire oc8051_decoder1_n_216;
  wire oc8051_decoder1_n_217;
  wire oc8051_decoder1_n_218;
  wire oc8051_decoder1_n_219;
  wire oc8051_decoder1_n_22;
  wire oc8051_decoder1_n_220;
  wire oc8051_decoder1_n_221;
  wire oc8051_decoder1_n_222;
  wire oc8051_decoder1_n_223;
  wire oc8051_decoder1_n_224;
  wire oc8051_decoder1_n_225;
  wire oc8051_decoder1_n_226;
  wire oc8051_decoder1_n_227;
  wire oc8051_decoder1_n_228;
  wire oc8051_decoder1_n_229;
  wire oc8051_decoder1_n_23;
  wire oc8051_decoder1_n_230;
  wire oc8051_decoder1_n_231;
  wire oc8051_decoder1_n_232;
  wire oc8051_decoder1_n_233;
  wire oc8051_decoder1_n_234;
  wire oc8051_decoder1_n_235;
  wire oc8051_decoder1_n_236;
  wire oc8051_decoder1_n_237;
  wire oc8051_decoder1_n_238;
  wire oc8051_decoder1_n_239;
  wire oc8051_decoder1_n_24;
  wire oc8051_decoder1_n_240;
  wire oc8051_decoder1_n_241;
  wire oc8051_decoder1_n_27;
  wire oc8051_decoder1_n_28;
  wire oc8051_decoder1_n_3;
  wire oc8051_decoder1_n_30;
  wire oc8051_decoder1_n_31;
  wire oc8051_decoder1_n_32;
  wire oc8051_decoder1_n_33;
  wire oc8051_decoder1_n_34;
  wire oc8051_decoder1_n_35;
  wire oc8051_decoder1_n_36;
  wire oc8051_decoder1_n_4;
  wire oc8051_decoder1_n_45;
  wire oc8051_decoder1_n_46;
  wire oc8051_decoder1_n_47;
  wire oc8051_decoder1_n_51;
  wire oc8051_decoder1_n_52;
  wire oc8051_decoder1_n_53;
  wire oc8051_decoder1_n_54;
  wire oc8051_decoder1_n_55;
  wire oc8051_decoder1_n_56;
  wire oc8051_decoder1_n_57;
  wire oc8051_decoder1_n_58;
  wire oc8051_decoder1_n_59;
  wire oc8051_decoder1_n_60;
  wire oc8051_decoder1_n_61;
  wire oc8051_decoder1_n_62;
  wire oc8051_decoder1_n_63;
  wire oc8051_decoder1_n_64;
  wire oc8051_decoder1_n_73;
  wire oc8051_decoder1_n_74;
  wire oc8051_decoder1_n_83;
  wire oc8051_decoder1_n_92;
  wire oc8051_decoder1_n_93;
  wire oc8051_decoder1_n_94;
  wire oc8051_decoder1_n_95;
  wire oc8051_decoder1_n_96;
  wire oc8051_decoder1_n_97;
  wire oc8051_decoder1_n_98;
  wire oc8051_decoder1_n_99;
  wire [8:8]\oc8051_div1/sub1 ;
  wire [7:0]\oc8051_dptr1/p_1_in ;
  wire oc8051_indi_addr1_n_13;
  wire oc8051_indi_addr1_n_14;
  wire oc8051_indi_addr1_n_15;
  wire oc8051_indi_addr1_n_16;
  wire oc8051_indi_addr1_n_17;
  wire oc8051_indi_addr1_n_18;
  wire oc8051_indi_addr1_n_5;
  wire oc8051_indi_addr1_n_6;
  wire oc8051_indi_addr1_n_7;
  wire oc8051_indi_addr1_n_8;
  wire \oc8051_int1/tf0_buff ;
  wire oc8051_memory_interface1_n_1;
  wire oc8051_memory_interface1_n_110;
  wire oc8051_memory_interface1_n_125;
  wire oc8051_memory_interface1_n_126;
  wire oc8051_memory_interface1_n_127;
  wire oc8051_memory_interface1_n_128;
  wire oc8051_memory_interface1_n_129;
  wire oc8051_memory_interface1_n_130;
  wire oc8051_memory_interface1_n_131;
  wire oc8051_memory_interface1_n_132;
  wire oc8051_memory_interface1_n_133;
  wire oc8051_memory_interface1_n_134;
  wire oc8051_memory_interface1_n_135;
  wire oc8051_memory_interface1_n_136;
  wire oc8051_memory_interface1_n_137;
  wire oc8051_memory_interface1_n_138;
  wire oc8051_memory_interface1_n_139;
  wire oc8051_memory_interface1_n_140;
  wire oc8051_memory_interface1_n_141;
  wire oc8051_memory_interface1_n_143;
  wire oc8051_memory_interface1_n_144;
  wire oc8051_memory_interface1_n_145;
  wire oc8051_memory_interface1_n_147;
  wire oc8051_memory_interface1_n_148;
  wire oc8051_memory_interface1_n_149;
  wire oc8051_memory_interface1_n_150;
  wire oc8051_memory_interface1_n_151;
  wire oc8051_memory_interface1_n_152;
  wire oc8051_memory_interface1_n_153;
  wire oc8051_memory_interface1_n_154;
  wire oc8051_memory_interface1_n_155;
  wire oc8051_memory_interface1_n_156;
  wire oc8051_memory_interface1_n_157;
  wire oc8051_memory_interface1_n_158;
  wire oc8051_memory_interface1_n_159;
  wire oc8051_memory_interface1_n_160;
  wire oc8051_memory_interface1_n_161;
  wire oc8051_memory_interface1_n_162;
  wire oc8051_memory_interface1_n_163;
  wire oc8051_memory_interface1_n_164;
  wire oc8051_memory_interface1_n_165;
  wire oc8051_memory_interface1_n_167;
  wire oc8051_memory_interface1_n_168;
  wire oc8051_memory_interface1_n_169;
  wire oc8051_memory_interface1_n_170;
  wire oc8051_memory_interface1_n_171;
  wire oc8051_memory_interface1_n_172;
  wire oc8051_memory_interface1_n_173;
  wire oc8051_memory_interface1_n_174;
  wire oc8051_memory_interface1_n_175;
  wire oc8051_memory_interface1_n_176;
  wire oc8051_memory_interface1_n_177;
  wire oc8051_memory_interface1_n_178;
  wire oc8051_memory_interface1_n_179;
  wire oc8051_memory_interface1_n_180;
  wire oc8051_memory_interface1_n_181;
  wire oc8051_memory_interface1_n_182;
  wire oc8051_memory_interface1_n_183;
  wire oc8051_memory_interface1_n_184;
  wire oc8051_memory_interface1_n_185;
  wire oc8051_memory_interface1_n_188;
  wire oc8051_memory_interface1_n_189;
  wire oc8051_memory_interface1_n_190;
  wire oc8051_memory_interface1_n_191;
  wire oc8051_memory_interface1_n_192;
  wire oc8051_memory_interface1_n_193;
  wire oc8051_memory_interface1_n_194;
  wire oc8051_memory_interface1_n_195;
  wire oc8051_memory_interface1_n_196;
  wire oc8051_memory_interface1_n_197;
  wire oc8051_memory_interface1_n_198;
  wire oc8051_memory_interface1_n_199;
  wire oc8051_memory_interface1_n_200;
  wire oc8051_memory_interface1_n_201;
  wire oc8051_memory_interface1_n_202;
  wire oc8051_memory_interface1_n_203;
  wire oc8051_memory_interface1_n_207;
  wire oc8051_memory_interface1_n_208;
  wire oc8051_memory_interface1_n_209;
  wire oc8051_memory_interface1_n_210;
  wire oc8051_memory_interface1_n_211;
  wire oc8051_memory_interface1_n_212;
  wire oc8051_memory_interface1_n_213;
  wire oc8051_memory_interface1_n_214;
  wire oc8051_memory_interface1_n_215;
  wire oc8051_memory_interface1_n_216;
  wire oc8051_memory_interface1_n_217;
  wire oc8051_memory_interface1_n_218;
  wire oc8051_memory_interface1_n_231;
  wire oc8051_memory_interface1_n_232;
  wire oc8051_memory_interface1_n_233;
  wire oc8051_memory_interface1_n_234;
  wire oc8051_memory_interface1_n_235;
  wire oc8051_memory_interface1_n_236;
  wire oc8051_memory_interface1_n_237;
  wire oc8051_memory_interface1_n_238;
  wire oc8051_memory_interface1_n_239;
  wire oc8051_memory_interface1_n_240;
  wire oc8051_memory_interface1_n_241;
  wire oc8051_memory_interface1_n_242;
  wire oc8051_memory_interface1_n_243;
  wire oc8051_memory_interface1_n_244;
  wire oc8051_memory_interface1_n_245;
  wire oc8051_memory_interface1_n_246;
  wire oc8051_memory_interface1_n_247;
  wire oc8051_memory_interface1_n_248;
  wire oc8051_memory_interface1_n_249;
  wire oc8051_memory_interface1_n_250;
  wire oc8051_memory_interface1_n_251;
  wire oc8051_memory_interface1_n_252;
  wire oc8051_memory_interface1_n_253;
  wire oc8051_memory_interface1_n_254;
  wire oc8051_memory_interface1_n_255;
  wire oc8051_memory_interface1_n_256;
  wire oc8051_memory_interface1_n_259;
  wire oc8051_memory_interface1_n_260;
  wire oc8051_memory_interface1_n_261;
  wire oc8051_memory_interface1_n_262;
  wire oc8051_memory_interface1_n_263;
  wire oc8051_memory_interface1_n_264;
  wire oc8051_memory_interface1_n_265;
  wire oc8051_memory_interface1_n_266;
  wire oc8051_memory_interface1_n_267;
  wire oc8051_memory_interface1_n_268;
  wire oc8051_memory_interface1_n_269;
  wire oc8051_memory_interface1_n_270;
  wire oc8051_memory_interface1_n_271;
  wire oc8051_memory_interface1_n_272;
  wire oc8051_memory_interface1_n_273;
  wire oc8051_memory_interface1_n_274;
  wire oc8051_memory_interface1_n_275;
  wire oc8051_memory_interface1_n_276;
  wire oc8051_memory_interface1_n_277;
  wire oc8051_memory_interface1_n_278;
  wire oc8051_memory_interface1_n_279;
  wire oc8051_memory_interface1_n_280;
  wire oc8051_memory_interface1_n_281;
  wire oc8051_memory_interface1_n_282;
  wire oc8051_memory_interface1_n_283;
  wire oc8051_memory_interface1_n_284;
  wire oc8051_memory_interface1_n_285;
  wire oc8051_memory_interface1_n_286;
  wire oc8051_memory_interface1_n_287;
  wire oc8051_memory_interface1_n_288;
  wire oc8051_memory_interface1_n_289;
  wire oc8051_memory_interface1_n_290;
  wire oc8051_memory_interface1_n_291;
  wire oc8051_memory_interface1_n_292;
  wire oc8051_memory_interface1_n_293;
  wire oc8051_memory_interface1_n_294;
  wire oc8051_memory_interface1_n_295;
  wire oc8051_memory_interface1_n_296;
  wire oc8051_memory_interface1_n_297;
  wire oc8051_memory_interface1_n_298;
  wire oc8051_memory_interface1_n_299;
  wire oc8051_memory_interface1_n_300;
  wire oc8051_memory_interface1_n_301;
  wire oc8051_memory_interface1_n_302;
  wire oc8051_memory_interface1_n_303;
  wire oc8051_memory_interface1_n_304;
  wire oc8051_memory_interface1_n_305;
  wire oc8051_memory_interface1_n_306;
  wire oc8051_memory_interface1_n_307;
  wire oc8051_memory_interface1_n_308;
  wire oc8051_memory_interface1_n_309;
  wire oc8051_memory_interface1_n_310;
  wire oc8051_memory_interface1_n_311;
  wire oc8051_memory_interface1_n_312;
  wire oc8051_memory_interface1_n_313;
  wire oc8051_memory_interface1_n_314;
  wire oc8051_memory_interface1_n_315;
  wire oc8051_memory_interface1_n_316;
  wire oc8051_memory_interface1_n_317;
  wire oc8051_memory_interface1_n_318;
  wire oc8051_memory_interface1_n_319;
  wire oc8051_memory_interface1_n_320;
  wire oc8051_memory_interface1_n_321;
  wire oc8051_memory_interface1_n_322;
  wire oc8051_memory_interface1_n_323;
  wire oc8051_memory_interface1_n_324;
  wire oc8051_memory_interface1_n_325;
  wire oc8051_memory_interface1_n_326;
  wire oc8051_memory_interface1_n_327;
  wire oc8051_memory_interface1_n_328;
  wire oc8051_memory_interface1_n_329;
  wire oc8051_memory_interface1_n_330;
  wire oc8051_memory_interface1_n_331;
  wire oc8051_memory_interface1_n_332;
  wire oc8051_memory_interface1_n_333;
  wire oc8051_memory_interface1_n_334;
  wire oc8051_memory_interface1_n_335;
  wire oc8051_memory_interface1_n_336;
  wire oc8051_memory_interface1_n_337;
  wire oc8051_memory_interface1_n_338;
  wire oc8051_memory_interface1_n_339;
  wire oc8051_memory_interface1_n_340;
  wire oc8051_memory_interface1_n_341;
  wire oc8051_memory_interface1_n_342;
  wire oc8051_memory_interface1_n_38;
  wire oc8051_memory_interface1_n_39;
  wire oc8051_memory_interface1_n_40;
  wire oc8051_memory_interface1_n_41;
  wire oc8051_memory_interface1_n_46;
  wire oc8051_memory_interface1_n_47;
  wire oc8051_memory_interface1_n_48;
  wire oc8051_memory_interface1_n_49;
  wire oc8051_memory_interface1_n_50;
  wire oc8051_memory_interface1_n_51;
  wire oc8051_memory_interface1_n_52;
  wire oc8051_memory_interface1_n_54;
  wire oc8051_memory_interface1_n_55;
  wire oc8051_memory_interface1_n_64;
  wire oc8051_memory_interface1_n_65;
  wire oc8051_memory_interface1_n_66;
  wire oc8051_memory_interface1_n_67;
  wire oc8051_memory_interface1_n_68;
  wire oc8051_memory_interface1_n_69;
  wire oc8051_memory_interface1_n_70;
  wire oc8051_memory_interface1_n_71;
  wire oc8051_memory_interface1_n_72;
  wire oc8051_memory_interface1_n_74;
  wire oc8051_memory_interface1_n_75;
  wire oc8051_memory_interface1_n_76;
  wire oc8051_memory_interface1_n_77;
  wire oc8051_memory_interface1_n_78;
  wire oc8051_memory_interface1_n_79;
  wire oc8051_memory_interface1_n_8;
  wire oc8051_memory_interface1_n_80;
  wire oc8051_memory_interface1_n_81;
  wire oc8051_memory_interface1_n_82;
  wire oc8051_memory_interface1_n_83;
  wire oc8051_memory_interface1_n_84;
  wire oc8051_memory_interface1_n_85;
  wire oc8051_memory_interface1_n_86;
  wire oc8051_memory_interface1_n_87;
  wire oc8051_memory_interface1_n_88;
  wire oc8051_memory_interface1_n_89;
  wire oc8051_memory_interface1_n_90;
  wire oc8051_memory_interface1_n_91;
  wire oc8051_memory_interface1_n_92;
  wire oc8051_memory_interface1_n_93;
  wire oc8051_memory_interface1_n_94;
  wire oc8051_ram_top1_n_0;
  wire oc8051_ram_top1_n_1;
  wire oc8051_ram_top1_n_10;
  wire oc8051_ram_top1_n_11;
  wire oc8051_ram_top1_n_12;
  wire oc8051_ram_top1_n_13;
  wire oc8051_ram_top1_n_14;
  wire oc8051_ram_top1_n_2;
  wire oc8051_ram_top1_n_3;
  wire oc8051_ram_top1_n_4;
  wire oc8051_ram_top1_n_5;
  wire oc8051_ram_top1_n_6;
  wire oc8051_ram_top1_n_7;
  wire oc8051_ram_top1_n_8;
  wire oc8051_ram_top1_n_9;
  wire oc8051_sfr1_n_10;
  wire oc8051_sfr1_n_106;
  wire oc8051_sfr1_n_107;
  wire oc8051_sfr1_n_108;
  wire oc8051_sfr1_n_109;
  wire oc8051_sfr1_n_110;
  wire oc8051_sfr1_n_111;
  wire oc8051_sfr1_n_112;
  wire oc8051_sfr1_n_113;
  wire oc8051_sfr1_n_114;
  wire oc8051_sfr1_n_115;
  wire oc8051_sfr1_n_116;
  wire oc8051_sfr1_n_117;
  wire oc8051_sfr1_n_128;
  wire oc8051_sfr1_n_129;
  wire oc8051_sfr1_n_130;
  wire oc8051_sfr1_n_131;
  wire oc8051_sfr1_n_132;
  wire oc8051_sfr1_n_133;
  wire oc8051_sfr1_n_134;
  wire oc8051_sfr1_n_135;
  wire oc8051_sfr1_n_136;
  wire oc8051_sfr1_n_137;
  wire oc8051_sfr1_n_138;
  wire oc8051_sfr1_n_139;
  wire oc8051_sfr1_n_148;
  wire oc8051_sfr1_n_150;
  wire oc8051_sfr1_n_151;
  wire oc8051_sfr1_n_152;
  wire oc8051_sfr1_n_153;
  wire oc8051_sfr1_n_154;
  wire oc8051_sfr1_n_155;
  wire oc8051_sfr1_n_163;
  wire oc8051_sfr1_n_164;
  wire oc8051_sfr1_n_173;
  wire oc8051_sfr1_n_174;
  wire oc8051_sfr1_n_175;
  wire oc8051_sfr1_n_176;
  wire oc8051_sfr1_n_177;
  wire oc8051_sfr1_n_178;
  wire oc8051_sfr1_n_179;
  wire oc8051_sfr1_n_180;
  wire oc8051_sfr1_n_189;
  wire oc8051_sfr1_n_190;
  wire oc8051_sfr1_n_191;
  wire oc8051_sfr1_n_192;
  wire oc8051_sfr1_n_194;
  wire oc8051_sfr1_n_195;
  wire oc8051_sfr1_n_196;
  wire oc8051_sfr1_n_197;
  wire oc8051_sfr1_n_198;
  wire oc8051_sfr1_n_199;
  wire oc8051_sfr1_n_200;
  wire oc8051_sfr1_n_201;
  wire oc8051_sfr1_n_202;
  wire oc8051_sfr1_n_208;
  wire oc8051_sfr1_n_209;
  wire oc8051_sfr1_n_210;
  wire oc8051_sfr1_n_211;
  wire oc8051_sfr1_n_212;
  wire oc8051_sfr1_n_213;
  wire oc8051_sfr1_n_214;
  wire oc8051_sfr1_n_215;
  wire oc8051_sfr1_n_216;
  wire oc8051_sfr1_n_217;
  wire oc8051_sfr1_n_218;
  wire oc8051_sfr1_n_219;
  wire oc8051_sfr1_n_220;
  wire oc8051_sfr1_n_221;
  wire oc8051_sfr1_n_222;
  wire oc8051_sfr1_n_223;
  wire oc8051_sfr1_n_224;
  wire oc8051_sfr1_n_225;
  wire oc8051_sfr1_n_226;
  wire oc8051_sfr1_n_227;
  wire oc8051_sfr1_n_228;
  wire oc8051_sfr1_n_229;
  wire oc8051_sfr1_n_23;
  wire oc8051_sfr1_n_230;
  wire oc8051_sfr1_n_231;
  wire oc8051_sfr1_n_232;
  wire oc8051_sfr1_n_233;
  wire oc8051_sfr1_n_234;
  wire oc8051_sfr1_n_24;
  wire oc8051_sfr1_n_5;
  wire oc8051_sfr1_n_58;
  wire oc8051_sfr1_n_59;
  wire oc8051_sfr1_n_6;
  wire oc8051_sfr1_n_60;
  wire oc8051_sfr1_n_61;
  wire oc8051_sfr1_n_62;
  wire oc8051_sfr1_n_63;
  wire oc8051_sfr1_n_64;
  wire oc8051_sfr1_n_65;
  wire oc8051_sfr1_n_66;
  wire oc8051_sfr1_n_67;
  wire oc8051_sfr1_n_68;
  wire oc8051_sfr1_n_69;
  wire oc8051_sfr1_n_7;
  wire oc8051_sfr1_n_70;
  wire oc8051_sfr1_n_71;
  wire oc8051_sfr1_n_72;
  wire oc8051_sfr1_n_73;
  wire oc8051_sfr1_n_8;
  wire oc8051_sfr1_n_9;
  wire [5:5]\oc8051_sp1/p_0_in ;
  wire \oc8051_sp1/pop ;
  wire [7:0]\oc8051_sp1/sp ;
  wire [3:3]\oc8051_tc1/p_1_in ;
  wire \oc8051_tc1/tmod0 ;
  wire \oc8051_tc21/rcap2l1 ;
  wire \oc8051_tc21/tf2_set9_out ;
  wire \oc8051_uatr1/p_1_in ;
  wire \oc8051_uatr1/pcon0 ;
  wire \oc8051_uatr1/tx_done ;
  wire \oc8051_uatr1/wr_sbuf ;
  wire [7:0]op;
  wire [7:0]op1_n;
  wire [7:0]op1_r;
  wire [7:0]op2_n;
  wire [7:0]op2_r;
  wire [6:0]op3_n;
  wire [7:0]op3_r;
  wire [7:0]p0_out;
  wire [7:0]p1_out;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire [15:1]pc;
  wire [6:0]\pc_buf_reg[15] ;
  wire [5:1]psw;
  wire [1:0]psw_set;
  wire [2:0]ram_rd_sel_r;
  wire [6:2]rcap2h;
  wire [6:2]rcap2l;
  wire [2:0]rd_addr;
  wire rd_addr_r;
  wire rd_en;
  wire rd_ind0;
  wire reti;
  wire reti_reg;
  wire [7:1]ri;
  wire [7:0]ri_r;
  wire [4:0]rn_r;
  wire rst_IBUF;
  wire rxd_IBUF;
  wire [0:0]sbuf;
  wire [7:0]scon;
  wire sfr_bit;
  wire [7:0]sfr_out;
  wire [7:0]sp;
  wire [7:0]src1;
  wire srcAc;
  wire [2:0]src_sel1;
  wire src_sel3;
  wire src_sel30;
  wire state1;
  wire [7:0]t2con;
  wire [6:0]tcon;
  wire tf0;
  wire [7:1]th2;
  wire [6:6]tl1;
  wire [7:1]tl2;
  wire [6:2]tmod;
  wire [5:0]tmp_div;
  wire [6:3]tmp_rem;
  wire txd_OBUF;
  wire wait_data1_out;
  wire wr0;
  wire wr0_0;
  wire [7:0]wr_addr;
  wire wr_bit_r;

  oc8051_alu oc8051_alu1
       (.CO(oc8051_alu1_n_33),
        .D({data2,oc8051_alu1_n_8,oc8051_alu1_n_9,oc8051_alu1_n_10,oc8051_alu1_n_11,oc8051_alu1_n_12,oc8051_alu1_n_13,oc8051_alu1_n_14,mul_result1}),
        .DI(oc8051_decoder1_n_146),
        .O({\oc8051_div1/sub1 ,oc8051_alu1_n_1}),
        .Q(tmp_rem),
        .S(oc8051_decoder1_n_183),
        .clk_8051_BUFG(clk_8051_BUFG),
        .cycle(cycle),
        .\cycle_reg[0] (oc8051_alu1_n_17),
        .\cycle_reg[0]_0 (oc8051_decoder1_n_239),
        .\cycle_reg[0]_1 (oc8051_decoder1_n_241),
        .\cycle_reg[1] (oc8051_alu1_n_16),
        .\cycle_reg[1]_0 (oc8051_alu1_n_32),
        .\cycle_reg[1]_1 (oc8051_decoder1_n_238),
        .\cycle_reg[1]_2 (oc8051_decoder1_n_240),
        .divsrc2(divsrc2),
        .rst_IBUF(rst_IBUF),
        .src1(src1),
        .sub0_carry(oc8051_decoder1_n_52),
        .sub0_carry_0(oc8051_decoder1_n_15),
        .sub0_carry_1(oc8051_decoder1_n_102),
        .sub0_carry__0(oc8051_decoder1_n_115),
        .sub0_carry__0_0(oc8051_decoder1_n_116),
        .sub0_carry__0_1(oc8051_decoder1_n_13),
        .sub0_carry__0_2(oc8051_decoder1_n_14),
        .sub1_carry(oc8051_decoder1_n_53),
        .sub1_carry_0(oc8051_decoder1_n_201),
        .sub1_carry__0(oc8051_decoder1_n_101),
        .sub1_carry__0_0(oc8051_decoder1_n_136),
        .sub1_carry__0_1(oc8051_decoder1_n_145),
        .\tmp_div_reg[1] (oc8051_decoder1_n_103),
        .\tmp_div_reg[1]_0 (oc8051_decoder1_n_184),
        .\tmp_div_reg[5] (tmp_div),
        .\tmp_mul_reg[0] ({oc8051_decoder1_n_142,oc8051_decoder1_n_143,oc8051_decoder1_n_144}),
        .\tmp_mul_reg[0]_0 ({oc8051_decoder1_n_186,oc8051_decoder1_n_187,oc8051_decoder1_n_188,oc8051_memory_interface1_n_165}),
        .\tmp_mul_reg[12] (oc8051_decoder1_n_117),
        .\tmp_mul_reg[13] (data2__0),
        .\tmp_mul_reg[8] ({oc8051_decoder1_n_137,oc8051_decoder1_n_138,oc8051_decoder1_n_139,oc8051_decoder1_n_140}),
        .\tmp_mul_reg[8]_0 ({oc8051_decoder1_n_189,oc8051_decoder1_n_190,oc8051_decoder1_n_191,oc8051_decoder1_n_192}),
        .\tmp_rem_reg[7] (data3),
        .\tmp_rem_reg[7]_0 (oc8051_decoder1_n_185));
  oc8051_alu_src_sel oc8051_alu_src_sel1
       (.Q(src_sel1[1:0]),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\iadr_t[8]_i_12 (oc8051_ram_top1_n_2),
        .\iadr_t[8]_i_12_0 (acc[0]),
        .op1_n(op1_n),
        .\op1_r_reg[7]_0 (op1_r),
        .op2_n(op2_n),
        .op2_r(op2_r),
        .\op2_r_reg[0]_0 (oc8051_alu_src_sel1_n_16),
        .op3_n(op3_n),
        .op3_r(op3_r),
        .\op3_r_reg[7]_0 (oc8051_memory_interface1_n_141),
        .rst_IBUF(rst_IBUF));
  oc8051_decoder oc8051_decoder1
       (.CO(oc8051_alu1_n_33),
        .D({ri[4],ri[1]}),
        .DI(oc8051_decoder1_n_146),
        .E(oc8051_decoder1_n_175),
        .O({\oc8051_div1/sub1 ,oc8051_alu1_n_1}),
        .Q(ram_rd_sel_r),
        .S(oc8051_decoder1_n_183),
        .ack_o(ack_o),
        .\alu_op_reg[0]_0 (oc8051_decoder1_n_73),
        .\alu_op_reg[0]_1 (oc8051_decoder1_n_92),
        .\alu_op_reg[0]_2 (oc8051_decoder1_n_104),
        .\alu_op_reg[0]_3 (oc8051_decoder1_n_239),
        .\alu_op_reg[1]_0 (oc8051_decoder1_n_35),
        .\alu_op_reg[1]_1 (oc8051_decoder1_n_45),
        .\alu_op_reg[1]_2 (oc8051_decoder1_n_108),
        .\alu_op_reg[2]_0 (oc8051_decoder1_n_111),
        .\alu_op_reg[2]_1 (oc8051_decoder1_n_112),
        .\alu_op_reg[2]_2 (oc8051_decoder1_n_241),
        .\alu_op_reg[3]_0 (oc8051_decoder1_n_31),
        .\alu_op_reg[3]_1 (oc8051_decoder1_n_32),
        .\alu_op_reg[3]_2 (oc8051_decoder1_n_33),
        .\alu_op_reg[3]_3 (oc8051_decoder1_n_34),
        .\alu_op_reg[3]_4 (oc8051_decoder1_n_36),
        .\alu_op_reg[3]_5 (oc8051_decoder1_n_106),
        .\alu_op_reg[3]_6 (oc8051_decoder1_n_107),
        .\alu_op_reg[3]_7 (oc8051_decoder1_n_147),
        .\alu_op_reg[3]_8 (oc8051_decoder1_n_216),
        .\alu_op_reg[3]_9 ({oc8051_memory_interface1_n_129,oc8051_memory_interface1_n_130,oc8051_memory_interface1_n_131,oc8051_memory_interface1_n_132}),
        .b_reg(b_reg),
        .bank_sel(bank_sel),
        .bit_out_i_11_0(oc8051_memory_interface1_n_238),
        .bit_out_i_11_1(oc8051_memory_interface1_n_253),
        .bit_out_i_11_2(oc8051_memory_interface1_n_239),
        .bit_out_i_11_3(oc8051_memory_interface1_n_252),
        .bit_out_i_26_0(oc8051_memory_interface1_n_241),
        .bit_out_i_3(oc8051_memory_interface1_n_52),
        .bit_out_i_38_0(oc8051_decoder1_n_30),
        .bit_out_i_5(oc8051_memory_interface1_n_54),
        .bit_out_i_56(oc8051_indi_addr1_n_17),
        .bit_out_i_56_0(oc8051_memory_interface1_n_47),
        .bit_out_i_5_0(oc8051_memory_interface1_n_49),
        .bit_out_reg_i_19_0(oc8051_memory_interface1_n_65),
        .\bit_select[0]_i_2 (oc8051_decoder1_n_195),
        .\bit_select_reg[2] (oc8051_indi_addr1_n_16),
        .\bit_select_reg[2]_0 (oc8051_memory_interface1_n_94),
        .buff_reg_0_63_0_2_i_26_0(oc8051_memory_interface1_n_110),
        .buff_reg_0_63_0_2_i_9(oc8051_memory_interface1_n_82),
        .buff_reg_192_255_7_7(oc8051_memory_interface1_n_75),
        .clk_8051_BUFG(clk_8051_BUFG),
        .cy(cy),
        .\cy_sel_reg[0]_0 (cy_sel),
        .\cy_sel_reg[1]_0 ({oc8051_memory_interface1_n_234,oc8051_memory_interface1_n_235}),
        .cycle(cycle),
        .\cycle_reg[0] (oc8051_decoder1_n_103),
        .\cycle_reg[0]_0 (oc8051_decoder1_n_141),
        .\cycle_reg[0]_1 ({oc8051_decoder1_n_186,oc8051_decoder1_n_187,oc8051_decoder1_n_188}),
        .\cycle_reg[0]_2 ({oc8051_decoder1_n_189,oc8051_decoder1_n_190,oc8051_decoder1_n_191,oc8051_decoder1_n_192}),
        .\cycle_reg[0]_3 (oc8051_decoder1_n_201),
        .\cycle_reg[0]_4 (oc8051_decoder1_n_238),
        .\cycle_reg[0]_5 (oc8051_decoder1_n_240),
        .\cycle_reg[1] (oc8051_decoder1_n_101),
        .\cycle_reg[1]_0 (oc8051_decoder1_n_115),
        .\cycle_reg[1]_1 (oc8051_decoder1_n_116),
        .\cycle_reg[1]_2 (oc8051_decoder1_n_136),
        .\cycle_reg[1]_3 (oc8051_decoder1_n_145),
        .\cycle_reg[1]_4 (oc8051_alu1_n_16),
        .\cycle_reg[1]_5 (oc8051_alu1_n_17),
        .\dat0[0]_i_10_0 (oc8051_memory_interface1_n_249),
        .\dat0[0]_i_11_0 (oc8051_memory_interface1_n_259),
        .\dat0[0]_i_18_0 (oc8051_memory_interface1_n_250),
        .\dat0[0]_i_24_0 (oc8051_ram_top1_n_1),
        .\dat0[2]_i_2 (oc8051_sfr1_n_153),
        .\dat0[2]_i_2_0 (oc8051_memory_interface1_n_266),
        .\dat0[3]_i_2 (oc8051_sfr1_n_151),
        .\dat0[3]_i_2_0 (oc8051_memory_interface1_n_265),
        .\dat0[4]_i_2 (oc8051_sfr1_n_154),
        .\dat0[4]_i_2_0 (oc8051_memory_interface1_n_264),
        .\dat0[5]_i_2 (oc8051_sfr1_n_155),
        .\dat0[5]_i_2_0 (oc8051_memory_interface1_n_263),
        .\dat0[6]_i_2 (oc8051_sfr1_n_150),
        .\dat0[6]_i_2_0 (oc8051_memory_interface1_n_262),
        .\dat0[7]_i_10 (oc8051_memory_interface1_n_55),
        .\dat0[7]_i_8 (oc8051_decoder1_n_19),
        .\data[2]_i_4_0 (oc8051_sfr1_n_224),
        .\data_lo_reg[1] (oc8051_sfr1_n_189),
        .\data_lo_reg[7] (data3),
        .\data_lo_reg[7]_0 (data2__0),
        .\data_out[1]_i_2__0 (oc8051_memory_interface1_n_254),
        .\data_out[1]_i_2__0_0 (oc8051_memory_interface1_n_180),
        .\data_out[5]_i_3_0 ({data2,oc8051_alu1_n_8,oc8051_alu1_n_9,oc8051_alu1_n_10,oc8051_alu1_n_11,oc8051_alu1_n_12,oc8051_alu1_n_13,oc8051_alu1_n_14,mul_result1}),
        .\data_out_reg[0] (oc8051_memory_interface1_n_244),
        .\data_out_reg[0]_0 (oc8051_memory_interface1_n_179),
        .\data_out_reg[1] (oc8051_memory_interface1_n_243),
        .\data_out_reg[1]_0 (oc8051_memory_interface1_n_247),
        .\data_out_reg[1]_1 (oc8051_memory_interface1_n_172),
        .\data_out_reg[2] (oc8051_memory_interface1_n_242),
        .\data_out_reg[2]_0 (oc8051_memory_interface1_n_248),
        .\data_out_reg[2]_1 (oc8051_memory_interface1_n_173),
        .\data_out_reg[3] (oc8051_memory_interface1_n_216),
        .\data_out_reg[3]_0 (oc8051_memory_interface1_n_163),
        .\data_out_reg[3]_1 (oc8051_memory_interface1_n_174),
        .\data_out_reg[4] (oc8051_decoder1_n_105),
        .\data_out_reg[4]_0 (oc8051_memory_interface1_n_192),
        .\data_out_reg[4]_1 (oc8051_memory_interface1_n_162),
        .\data_out_reg[4]_2 (oc8051_memory_interface1_n_157),
        .\data_out_reg[4]_3 (oc8051_memory_interface1_n_175),
        .\data_out_reg[5] (oc8051_memory_interface1_n_240),
        .\data_out_reg[5]_0 (oc8051_memory_interface1_n_251),
        .\data_out_reg[5]_1 (oc8051_memory_interface1_n_176),
        .\data_out_reg[6] (oc8051_memory_interface1_n_256),
        .\data_out_reg[6]_0 (oc8051_memory_interface1_n_177),
        .\data_out_reg[7] (oc8051_memory_interface1_n_39),
        .\data_out_reg[7]_0 (oc8051_memory_interface1_n_50),
        .\data_out_reg[7]_1 (acc),
        .\data_out_reg[7]_2 (oc8051_memory_interface1_n_218),
        .\data_out_reg[7]_3 (oc8051_memory_interface1_n_217),
        .\data_out_reg[7]_4 (oc8051_memory_interface1_n_156),
        .\data_out_reg[7]_5 (oc8051_memory_interface1_n_178),
        .\data_reg[4] (oc8051_decoder1_n_18),
        .\data_reg[4]_0 (oc8051_decoder1_n_27),
        .\data_reg[6] (oc8051_decoder1_n_215),
        .\data_reg[6]_0 (oc8051_memory_interface1_n_170),
        .\data_reg[6]_1 (oc8051_memory_interface1_n_237),
        .\data_reg[6]_2 (oc8051_memory_interface1_n_171),
        .\data_reg[7] (oc8051_decoder1_n_214),
        .\data_reg[7]_0 (oc8051_memory_interface1_n_169),
        .des1(des1),
        .des2(des2),
        .des_acc(des_acc),
        .divsrc2(divsrc2),
        .\iadr_t[15]_i_3_0 (tmp_div),
        .\iadr_t[8]_i_8_0 (oc8051_alu_src_sel1_n_16),
        .\iadr_t[8]_i_8_1 (oc8051_memory_interface1_n_167),
        .\iadr_t[8]_i_8_2 (oc8051_ram_top1_n_0),
        .\iadr_t_reg[10] (oc8051_memory_interface1_n_164),
        .\iadr_t_reg[13] (oc8051_memory_interface1_n_160),
        .\iadr_t_reg[13]_0 (oc8051_memory_interface1_n_159),
        .\iadr_t_reg[13]_1 (oc8051_ram_top1_n_6),
        .\iadr_t_reg[13]_i_17_0 (oc8051_ram_top1_n_7),
        .\iadr_t_reg[13]_i_17_1 (oc8051_ram_top1_n_5),
        .\iadr_t_reg[8] (oc8051_memory_interface1_n_161),
        .\iadr_t_reg[8]_0 (oc8051_ram_top1_n_2),
        .\iadr_t_reg[9] (oc8051_memory_interface1_n_158),
        .\iadr_t_reg[9]_i_10_0 (oc8051_ram_top1_n_9),
        .\iadr_t_reg[9]_i_10_1 (oc8051_ram_top1_n_4),
        .\iadr_t_reg[9]_i_10_2 (oc8051_ram_top1_n_3),
        .istb_t_reg(oc8051_memory_interface1_n_8),
        .istb_t_reg_0(istb_t_reg),
        .\mem_act_reg[0]_0 (imem_wait),
        .\mem_act_reg[1]_0 (oc8051_decoder1_n_193),
        .\mem_act_reg[1]_1 (oc8051_decoder1_n_203),
        .\mem_act_reg[2]_0 (mem_act),
        .\mem_act_reg[2]_1 ({oc8051_memory_interface1_n_147,oc8051_memory_interface1_n_148,oc8051_memory_interface1_n_149}),
        .op1_n(op1_n),
        .op2_r(op2_r),
        .op3_r(op3_r),
        .\op_reg[7]_0 (op),
        .\p2_out_reg[7] (oc8051_decoder1_n_234),
        .\p2_out_reg[7]_0 (oc8051_memory_interface1_n_185),
        .\p2_out_reg[7]_1 (oc8051_sfr1_n_58),
        .\p3_out_reg[7] (oc8051_memory_interface1_n_193),
        .\p3_out_reg[7]_0 (oc8051_memory_interface1_n_255),
        .\p3_out_reg[7]_1 (oc8051_sfr1_n_66),
        .p_0_in(p_0_in),
        .\pc_buf[15]_i_18 (oc8051_memory_interface1_n_46),
        .\pc_buf[4]_i_38_0 (oc8051_memory_interface1_n_41),
        .pc_wr_r_i_31_0(oc8051_memory_interface1_n_40),
        .pc_wr_r_i_34_0(oc8051_memory_interface1_n_168),
        .pc_wr_r_i_34_1(oc8051_ram_top1_n_10),
        .pc_wr_r_i_9(oc8051_sfr1_n_106),
        .\pcon_reg[0] (src1[0]),
        .\pcon_reg[3] (oc8051_ram_top1_n_8),
        .pop(\oc8051_sp1/pop ),
        .psw(psw[4:3]),
        .\psw_set[1]_i_2 (oc8051_memory_interface1_n_38),
        .\psw_set_reg[1]_0 (psw_set),
        .\psw_set_reg[1]_1 ({oc8051_memory_interface1_n_134,oc8051_memory_interface1_n_135}),
        .\ram_rd_sel_r_reg[0]_0 (oc8051_decoder1_n_28),
        .\ram_rd_sel_r_reg[0]_1 (oc8051_decoder1_n_46),
        .\ram_rd_sel_r_reg[0]_2 (oc8051_decoder1_n_47),
        .\ram_rd_sel_r_reg[0]_3 (oc8051_memory_interface1_n_91),
        .\ram_rd_sel_r_reg[2]_0 ({oc8051_memory_interface1_n_267,oc8051_memory_interface1_n_268}),
        .\ram_wr_sel_reg[0]_0 (oc8051_decoder1_n_171),
        .\ram_wr_sel_reg[0]_1 (oc8051_decoder1_n_174),
        .\ram_wr_sel_reg[1]_0 ({oc8051_decoder1_n_163,oc8051_decoder1_n_164,oc8051_decoder1_n_165,oc8051_decoder1_n_166,oc8051_decoder1_n_167,oc8051_decoder1_n_168,oc8051_decoder1_n_169,oc8051_decoder1_n_170}),
        .\ram_wr_sel_reg[1]_1 (oc8051_decoder1_n_172),
        .\ram_wr_sel_reg[2]_0 ({oc8051_decoder1_n_157,oc8051_decoder1_n_158,oc8051_decoder1_n_159}),
        .\ram_wr_sel_reg[2]_1 (oc8051_decoder1_n_160),
        .\ram_wr_sel_reg[2]_2 (oc8051_decoder1_n_162),
        .\ram_wr_sel_reg[2]_3 (\oc8051_sp1/p_0_in ),
        .\ram_wr_sel_reg[2]_4 (oc8051_decoder1_n_182),
        .\ram_wr_sel_reg[2]_5 (oc8051_decoder1_n_227),
        .\ram_wr_sel_reg[2]_6 ({oc8051_memory_interface1_n_126,oc8051_memory_interface1_n_127,oc8051_memory_interface1_n_128}),
        .rd_addr(rd_addr[2]),
        .rd_en_r_i_5({wr_addr[7],wr_addr[5]}),
        .rd_ind0(rd_ind0),
        .rd_ind_reg(oc8051_memory_interface1_n_83),
        .\ri_r_reg[1] (oc8051_memory_interface1_n_150),
        .\ri_r_reg[1]_0 (oc8051_indi_addr1_n_8),
        .\ri_r_reg[1]_1 (oc8051_indi_addr1_n_13),
        .\ri_r_reg[4] (oc8051_indi_addr1_n_14),
        .\ri_r_reg[4]_0 (oc8051_indi_addr1_n_15),
        .\rn_r_reg[3] (oc8051_memory_interface1_n_151),
        .rst_IBUF(rst_IBUF),
        .\sbuf_txd_reg[1] (oc8051_memory_interface1_n_212),
        .\sbuf_txd_reg[1]_0 (oc8051_sfr1_n_192),
        .\sbuf_txd_reg[7] ({oc8051_sfr1_n_209,oc8051_sfr1_n_210,oc8051_sfr1_n_211,oc8051_sfr1_n_212,oc8051_sfr1_n_213,oc8051_sfr1_n_214,oc8051_sfr1_n_215}),
        .\sbuf_txd_reg[8] ({oc8051_decoder1_n_93,oc8051_decoder1_n_94,oc8051_decoder1_n_95,oc8051_decoder1_n_96,oc8051_decoder1_n_97,oc8051_decoder1_n_98,oc8051_decoder1_n_99}),
        .scon(scon[0]),
        .\scon_reg[0] (oc8051_decoder1_n_236),
        .\scon_reg[0]_0 (oc8051_memory_interface1_n_154),
        .\scon_reg[0]_1 (oc8051_memory_interface1_n_155),
        .\scon_reg[0]_2 (oc8051_sfr1_n_191),
        .\scon_reg[2] (oc8051_decoder1_n_24),
        .\scon_reg[3] (oc8051_decoder1_n_23),
        .\scon_reg[4] (oc8051_decoder1_n_22),
        .\scon_reg[5] (oc8051_decoder1_n_21),
        .\scon_reg[6] (oc8051_decoder1_n_20),
        .sfr_bit(sfr_bit),
        .\sp[7]_i_2 ({sp[7:5],sp[2]}),
        .sp_out0_carry__0(\oc8051_sp1/sp ),
        .\sp_reg[2] (oc8051_sfr1_n_5),
        .\sp_reg[3] ({oc8051_decoder1_n_197,oc8051_decoder1_n_198,oc8051_decoder1_n_199,oc8051_decoder1_n_200}),
        .\sp_reg[7] ({oc8051_decoder1_n_206,oc8051_decoder1_n_207,oc8051_decoder1_n_208,oc8051_decoder1_n_209}),
        .\sp_reg[7]_0 (oc8051_memory_interface1_n_133),
        .\sp_reg[7]_1 ({oc8051_sfr1_n_7,oc8051_sfr1_n_8,oc8051_sfr1_n_9,oc8051_sfr1_n_10}),
        .src1(src1[7:1]),
        .srcAc(srcAc),
        .\src_sel1_reg[0]_0 (oc8051_decoder1_n_100),
        .\src_sel1_reg[0]_1 (oc8051_decoder1_n_110),
        .\src_sel1_reg[0]_2 (oc8051_decoder1_n_117),
        .\src_sel1_reg[0]_3 (oc8051_decoder1_n_120),
        .\src_sel1_reg[0]_4 ({oc8051_decoder1_n_137,oc8051_decoder1_n_138,oc8051_decoder1_n_139,oc8051_decoder1_n_140}),
        .\src_sel1_reg[0]_5 ({oc8051_decoder1_n_142,oc8051_decoder1_n_143,oc8051_decoder1_n_144}),
        .\src_sel1_reg[2]_0 (src_sel1),
        .\src_sel1_reg[2]_1 ({oc8051_memory_interface1_n_143,oc8051_memory_interface1_n_144,oc8051_memory_interface1_n_145}),
        .\src_sel2_reg[0]_0 (oc8051_decoder1_n_4),
        .\src_sel2_reg[0]_1 (oc8051_decoder1_n_12),
        .\src_sel2_reg[0]_2 (oc8051_decoder1_n_13),
        .\src_sel2_reg[0]_3 (oc8051_decoder1_n_14),
        .\src_sel2_reg[0]_4 (oc8051_decoder1_n_15),
        .\src_sel2_reg[0]_5 (oc8051_decoder1_n_52),
        .\src_sel2_reg[0]_6 (oc8051_decoder1_n_53),
        .\src_sel2_reg[0]_7 (oc8051_decoder1_n_102),
        .\src_sel2_reg[0]_8 (oc8051_decoder1_n_119),
        .\src_sel2_reg[1]_0 ({oc8051_memory_interface1_n_260,oc8051_memory_interface1_n_261}),
        .src_sel3(src_sel3),
        .src_sel30(src_sel30),
        .src_sel3_reg_0(oc8051_memory_interface1_n_125),
        .state1(state1),
        .\state_reg[0]_0 (oc8051_decoder1_n_3),
        .\state_reg[0]_1 (oc8051_decoder1_n_55),
        .\state_reg[0]_2 (oc8051_decoder1_n_153),
        .\state_reg[0]_3 (oc8051_decoder1_n_154),
        .\state_reg[0]_4 (oc8051_decoder1_n_196),
        .\state_reg[0]_5 (oc8051_memory_interface1_n_297),
        .\state_reg[1]_0 (oc8051_decoder1_n_51),
        .\state_reg[1]_1 (oc8051_decoder1_n_54),
        .\state_reg[1]_2 (oc8051_decoder1_n_152),
        .\state_reg[1]_3 (oc8051_decoder1_n_155),
        .\state_reg[1]_4 (oc8051_memory_interface1_n_296),
        .sub0_carry__0(tmp_rem),
        .sub0_carry__0_0(oc8051_alu1_n_32),
        .sub1_carry__0_i_12_0({pc[15:9],pc[7:1]}),
        .sub1_carry__0_i_12_1(op1_r[7:1]),
        .t2con(t2con[0]),
        .\t2con_reg[0] (oc8051_decoder1_n_237),
        .\t2con_reg[0]_0 (oc8051_memory_interface1_n_183),
        .\t2con_reg[0]_1 (oc8051_memory_interface1_n_184),
        .\th0_reg[0] (oc8051_sfr1_n_232),
        .\th0_reg[1] (oc8051_sfr1_n_231),
        .\th0_reg[2] (oc8051_sfr1_n_218),
        .\th0_reg[3] (oc8051_memory_interface1_n_197),
        .\th0_reg[3]_0 (oc8051_sfr1_n_223),
        .\th0_reg[4] (oc8051_sfr1_n_222),
        .\th0_reg[5] (oc8051_sfr1_n_221),
        .\th0_reg[6] (oc8051_sfr1_n_220),
        .\th0_reg[7] ({oc8051_decoder1_n_123,oc8051_decoder1_n_124,oc8051_decoder1_n_125,oc8051_decoder1_n_126,oc8051_decoder1_n_127,oc8051_decoder1_n_128,oc8051_decoder1_n_129,oc8051_decoder1_n_130}),
        .\th0_reg[7]_0 (oc8051_sfr1_n_219),
        .\tl0_reg[3] (oc8051_memory_interface1_n_198),
        .\tl0_reg[3]_0 (oc8051_sfr1_n_217),
        .\tl1_reg[1] (oc8051_sfr1_n_229),
        .\tl1_reg[2] (oc8051_sfr1_n_230),
        .\tl1_reg[3] (oc8051_memory_interface1_n_208),
        .\tl1_reg[3]_0 (oc8051_sfr1_n_226),
        .\tl1_reg[4] (oc8051_sfr1_n_227),
        .\tmod_reg[1] (\oc8051_tc1/p_1_in ),
        .\tmod_reg[5] ({oc8051_decoder1_n_132,oc8051_decoder1_n_133,oc8051_decoder1_n_134,oc8051_decoder1_n_135}),
        .\tmp_rem_reg[5] (oc8051_decoder1_n_184),
        .\tmp_rem_reg[6] (oc8051_decoder1_n_185),
        .wait_data_inv_i_2(oc8051_memory_interface1_n_87),
        .wait_data_reg_inv(oc8051_decoder1_n_109),
        .wait_data_reg_inv_0(oc8051_decoder1_n_156),
        .wait_data_reg_inv_1(oc8051_decoder1_n_202),
        .wr0(wr0),
        .wr0_0(wr0_0),
        .\wr_addr_reg[1] (oc8051_sfr1_n_200),
        .\wr_addr_reg[2] (oc8051_sfr1_n_199),
        .\wr_addr_reg[3]_i_1_0 (oc8051_sfr1_n_201),
        .\wr_addr_reg[4]_i_1_0 (oc8051_sfr1_n_202),
        .\wr_addr_reg[4]_i_1_1 ({ri_r[4:3],ri_r[0]}),
        .\wr_addr_reg[4]_i_1_2 ({rn_r[4:3],rn_r[0]}),
        .\wr_addr_reg[5] (oc8051_sfr1_n_198),
        .\wr_addr_reg[6] (oc8051_sfr1_n_197),
        .\wr_addr_reg[7] (oc8051_sfr1_n_196),
        .wr_bit_r(wr_bit_r),
        .wr_bit_r_reg(oc8051_decoder1_n_118),
        .wr_bit_r_reg_0(oc8051_decoder1_n_204),
        .wr_bit_r_reg_1(oc8051_decoder1_n_205),
        .wr_bit_r_reg_10(oc8051_decoder1_n_225),
        .wr_bit_r_reg_11(oc8051_decoder1_n_228),
        .wr_bit_r_reg_12(oc8051_decoder1_n_229),
        .wr_bit_r_reg_13(oc8051_decoder1_n_230),
        .wr_bit_r_reg_14(oc8051_decoder1_n_231),
        .wr_bit_r_reg_15(oc8051_decoder1_n_232),
        .wr_bit_r_reg_16(oc8051_decoder1_n_233),
        .wr_bit_r_reg_17(oc8051_decoder1_n_235),
        .wr_bit_r_reg_2(oc8051_decoder1_n_217),
        .wr_bit_r_reg_3(oc8051_decoder1_n_218),
        .wr_bit_r_reg_4(oc8051_decoder1_n_219),
        .wr_bit_r_reg_5(oc8051_decoder1_n_220),
        .wr_bit_r_reg_6(oc8051_decoder1_n_221),
        .wr_bit_r_reg_7(oc8051_decoder1_n_222),
        .wr_bit_r_reg_8(oc8051_decoder1_n_223),
        .wr_bit_r_reg_9(oc8051_decoder1_n_224),
        .\wr_data_r_reg[2] (oc8051_ram_top1_n_13),
        .\wr_data_r_reg[2]_0 (oc8051_ram_top1_n_12),
        .\wr_data_r_reg[3] (oc8051_ram_top1_n_14),
        .\wr_data_r_reg[3]_0 (oc8051_ram_top1_n_11),
        .wr_reg_0(oc8051_decoder1_n_0),
        .wr_reg_1(oc8051_decoder1_n_226),
        .wr_sbuf(\oc8051_uatr1/wr_sbuf ),
        .\wr_sfr_reg[0]_0 (oc8051_decoder1_n_56),
        .\wr_sfr_reg[0]_1 ({oc8051_decoder1_n_57,oc8051_decoder1_n_58,oc8051_decoder1_n_59,oc8051_decoder1_n_60,oc8051_decoder1_n_61,oc8051_decoder1_n_62,oc8051_decoder1_n_63,oc8051_decoder1_n_64}),
        .\wr_sfr_reg[0]_2 (oc8051_decoder1_n_177),
        .\wr_sfr_reg[1]_0 (oc8051_decoder1_n_16),
        .\wr_sfr_reg[1]_1 (oc8051_decoder1_n_17),
        .\wr_sfr_reg[1]_2 (oc8051_decoder1_n_74),
        .\wr_sfr_reg[1]_3 (\oc8051_dptr1/p_1_in ),
        .\wr_sfr_reg[1]_4 (oc8051_decoder1_n_83),
        .\wr_sfr_reg[1]_5 (oc8051_decoder1_n_176),
        .\wr_sfr_reg[1]_6 (oc8051_decoder1_n_194),
        .\wr_sfr_reg[1]_7 ({oc8051_memory_interface1_n_136,oc8051_memory_interface1_n_137}));
  oc8051_indi_addr oc8051_indi_addr1
       (.D({ri[7:5],ri[3:2]}),
        .E(oc8051_memory_interface1_n_181),
        .Q(\buff_reg[2]_2 ),
        .bank_sel(bank_sel[0]),
        .\buff_reg[0][0]_0 (\buff_reg[0]_0 ),
        .\buff_reg[0][0]_1 (oc8051_indi_addr1_n_17),
        .\buff_reg[0][5]_0 (oc8051_indi_addr1_n_5),
        .\buff_reg[0][7]_0 (oc8051_indi_addr1_n_7),
        .\buff_reg[0][7]_1 (des1),
        .\buff_reg[1][0]_0 (\buff_reg[1]_1 ),
        .\buff_reg[1][7]_0 (oc8051_memory_interface1_n_195),
        .\buff_reg[2][0]_0 (oc8051_memory_interface1_n_246),
        .\buff_reg[2][1]_0 (oc8051_indi_addr1_n_8),
        .\buff_reg[2][2]_0 (oc8051_indi_addr1_n_16),
        .\buff_reg[2][4]_0 (oc8051_indi_addr1_n_14),
        .\buff_reg[2][6]_0 (oc8051_indi_addr1_n_6),
        .\buff_reg[3][0]_0 (\buff_reg[3]_3 ),
        .\buff_reg[3][7]_0 (oc8051_memory_interface1_n_189),
        .\buff_reg[4][0]_0 (oc8051_memory_interface1_n_245),
        .\buff_reg[5][7]_0 (oc8051_memory_interface1_n_194),
        .\buff_reg[6][1]_0 (oc8051_indi_addr1_n_13),
        .\buff_reg[6][4]_0 (oc8051_indi_addr1_n_15),
        .\buff_reg[6][7]_0 (oc8051_memory_interface1_n_182),
        .\buff_reg[7][7]_0 (oc8051_memory_interface1_n_188),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\data_reg[3] (oc8051_indi_addr1_n_18),
        .psw(psw[3]),
        .\ri_r_reg[0] (oc8051_memory_interface1_n_151),
        .\ri_r_reg[1] (oc8051_memory_interface1_n_47),
        .\ri_r_reg[2] (oc8051_decoder1_n_35),
        .\ri_r_reg[3] (oc8051_decoder1_n_27),
        .\ri_r_reg[3]_0 (oc8051_memory_interface1_n_150),
        .\ri_r_reg[3]_1 (oc8051_decoder1_n_36),
        .\ri_r_reg[5] (oc8051_decoder1_n_34),
        .\ri_r_reg[6] (oc8051_decoder1_n_31),
        .\ri_r_reg[7] (oc8051_decoder1_n_32),
        .rst_IBUF(rst_IBUF));
  oc8051_memory_interface oc8051_memory_interface1
       (.ADDRA({oc8051_memory_interface1_n_66,oc8051_memory_interface1_n_67,oc8051_memory_interface1_n_68,oc8051_memory_interface1_n_69,oc8051_memory_interface1_n_70,oc8051_memory_interface1_n_71}),
        .ADDRD({oc8051_memory_interface1_n_76,oc8051_memory_interface1_n_77,oc8051_memory_interface1_n_78,oc8051_memory_interface1_n_79,oc8051_memory_interface1_n_80,oc8051_memory_interface1_n_81}),
        .D(p_1_in),
        .E(istb_t_reg),
        .O(\pc_buf_reg[15] [3:1]),
        .Q(Q),
        .ack_o(ack_o),
        .b_reg(b_reg),
        .bank_sel(bank_sel),
        .bit_addr(bit_addr),
        .bit_out_i_27(acc),
        .bit_out_i_31_0(oc8051_decoder1_n_47),
        .bit_out_i_3_0(oc8051_sfr1_n_130),
        .bit_out_i_3_1(oc8051_sfr1_n_131),
        .bit_out_i_3_2(oc8051_sfr1_n_129),
        .bit_out_i_59_0(oc8051_sfr1_n_6),
        .bit_out_i_6_0(oc8051_decoder1_n_177),
        .bit_out_i_6_1(oc8051_decoder1_n_83),
        .bit_out_reg(oc8051_memory_interface1_n_233),
        .bit_out_reg_0(oc8051_sfr1_n_108),
        .bit_out_reg_1(oc8051_sfr1_n_107),
        .bit_out_reg_2(oc8051_decoder1_n_194),
        .bit_out_reg_3(oc8051_decoder1_n_30),
        .bit_out_reg_4(oc8051_decoder1_n_195),
        .\bit_select[0]_i_2_0 (oc8051_memory_interface1_n_85),
        .\bit_select[2]_i_1_0 (oc8051_memory_interface1_n_87),
        .\bit_select_reg[2] (oc8051_decoder1_n_46),
        .\buff_reg[1][7] (oc8051_decoder1_n_0),
        .\buff_reg[7][7] (oc8051_sfr1_n_195),
        .\cdata_reg[0]_0 (oc8051_memory_interface1_n_47),
        .\cdata_reg[0]_1 ({oc8051_memory_interface1_n_267,oc8051_memory_interface1_n_268}),
        .\cdata_reg[1]_0 (oc8051_memory_interface1_n_88),
        .\cdata_reg[2]_0 (oc8051_memory_interface1_n_94),
        .\cdata_reg[2]_1 ({oc8051_memory_interface1_n_147,oc8051_memory_interface1_n_148,oc8051_memory_interface1_n_149}),
        .\cdata_reg[3]_0 (oc8051_memory_interface1_n_125),
        .\cdata_reg[6]_0 (oc8051_memory_interface1_n_38),
        .\cdata_reg[7]_0 (oc8051_memory_interface1_n_41),
        .\cdata_reg[7]_1 (oc8051_memory_interface1_n_46),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\cy_sel_reg[0] (oc8051_decoder1_n_153),
        .\dat0[0]_i_4_0 (sbuf),
        .\dat0[1]_i_10 (oc8051_indi_addr1_n_6),
        .\dat0[1]_i_2_0 (oc8051_sfr1_n_133),
        .\dat0[6]_i_9_0 (rcap2h),
        .\dat0[6]_i_9_1 (rcap2l),
        .\dat0[6]_i_9_2 ({tmod[6:4],tmod[2]}),
        .\dat0[7]_i_23 (oc8051_sfr1_n_180),
        .\dat0[7]_i_25_0 (oc8051_memory_interface1_n_64),
        .\dat0[7]_i_38_0 (oc8051_memory_interface1_n_90),
        .\dat0[7]_i_7_0 (oc8051_sfr1_n_139),
        .\dat0_reg[0] (oc8051_sfr1_n_110),
        .\dat0_reg[0]_0 (oc8051_indi_addr1_n_5),
        .\dat0_reg[0]_1 (oc8051_sfr1_n_132),
        .\dat0_reg[0]_i_2_0 (oc8051_sfr1_n_233),
        .\dat0_reg[0]_i_2_1 (oc8051_decoder1_n_56),
        .\dat0_reg[0]_i_2_2 (oc8051_decoder1_n_105),
        .\dat0_reg[1] (oc8051_decoder1_n_18),
        .\dat0_reg[1]_0 (oc8051_sfr1_n_111),
        .\dat0_reg[1]_1 (oc8051_sfr1_n_128),
        .\dat0_reg[1]_2 (oc8051_sfr1_n_152),
        .\dat0_reg[2] (oc8051_sfr1_n_112),
        .\dat0_reg[2]_0 (oc8051_decoder1_n_24),
        .\dat0_reg[2]_1 (oc8051_sfr1_n_134),
        .\dat0_reg[2]_i_4 (oc8051_sfr1_n_173),
        .\dat0_reg[3] (oc8051_sfr1_n_113),
        .\dat0_reg[3]_0 (oc8051_decoder1_n_23),
        .\dat0_reg[3]_1 (oc8051_sfr1_n_135),
        .\dat0_reg[3]_i_4 (oc8051_sfr1_n_163),
        .\dat0_reg[3]_i_4_0 (oc8051_sfr1_n_174),
        .\dat0_reg[4] (oc8051_sfr1_n_114),
        .\dat0_reg[4]_0 (oc8051_decoder1_n_22),
        .\dat0_reg[4]_1 (oc8051_sfr1_n_136),
        .\dat0_reg[4]_i_4 (oc8051_sfr1_n_176),
        .\dat0_reg[4]_i_4_0 (oc8051_sfr1_n_175),
        .\dat0_reg[5] (oc8051_decoder1_n_109),
        .\dat0_reg[5]_0 (oc8051_decoder1_n_21),
        .\dat0_reg[5]_1 (oc8051_sfr1_n_137),
        .\dat0_reg[5]_2 (oc8051_sfr1_n_115),
        .\dat0_reg[5]_i_4 (oc8051_sfr1_n_177),
        .\dat0_reg[5]_i_4_0 (oc8051_sfr1_n_164),
        .\dat0_reg[6] (oc8051_decoder1_n_20),
        .\dat0_reg[6]_0 (oc8051_sfr1_n_138),
        .\dat0_reg[6]_1 (oc8051_decoder1_n_108),
        .\dat0_reg[6]_2 (oc8051_sfr1_n_116),
        .\dat0_reg[6]_i_4 (oc8051_sfr1_n_178),
        .\dat0_reg[7] (oc8051_decoder1_n_16),
        .\dat0_reg[7]_0 (oc8051_sfr1_n_109),
        .\dat0_reg[7]_1 (oc8051_sfr1_n_117),
        .\dat0_reg[7]_2 (oc8051_sfr1_n_148),
        .\dat0_reg[7]_3 (oc8051_sfr1_n_179),
        .\dat0_reg[7]_i_19_0 ({th2[7],th2[1]}),
        .\dat0_reg[7]_i_19_1 ({tl2[7],tl2[1]}),
        .\data_lo_reg[0] (oc8051_decoder1_n_176),
        .\data_lo_reg[0]_0 (oc8051_decoder1_n_175),
        .\data_out_reg[1] (oc8051_memory_interface1_n_243),
        .\data_out_reg[2] (oc8051_memory_interface1_n_242),
        .\data_out_reg[3] (oc8051_memory_interface1_n_249),
        .\data_out_reg[4] (oc8051_memory_interface1_n_241),
        .\data_out_reg[5] (oc8051_memory_interface1_n_240),
        .\data_out_reg[5]_0 (oc8051_decoder1_n_74),
        .\data_out_reg[6] (oc8051_memory_interface1_n_239),
        .\data_out_reg[7] (oc8051_memory_interface1_n_238),
        .\data_reg[1] (oc8051_memory_interface1_n_272),
        .\data_reg[2] (psw_set),
        .\data_reg[2]_0 (oc8051_decoder1_n_216),
        .\data_reg[3] (oc8051_memory_interface1_n_150),
        .\data_reg[3]_0 (oc8051_memory_interface1_n_300),
        .\data_reg[3]_1 (oc8051_decoder1_n_73),
        .\data_reg[3]_2 (oc8051_decoder1_n_202),
        .\data_reg[4] (oc8051_memory_interface1_n_295),
        .\data_reg[5] (oc8051_memory_interface1_n_280),
        .des1({des1[3],des1[0]}),
        .des_acc(des_acc),
        .dmem_wait_reg_0(mem_act),
        .iadr_o(iadr_o),
        .\iadr_t[10]_i_2 (oc8051_decoder1_n_92),
        .\iadr_t[10]_i_2_0 (oc8051_decoder1_n_15),
        .\iadr_t[11]_i_2 (oc8051_decoder1_n_119),
        .\iadr_t[11]_i_2_0 (oc8051_decoder1_n_102),
        .\iadr_t[15]_i_3 (dptr_hi),
        .\iadr_t[8]_i_12 (op1_r[0]),
        .\iadr_t_reg[13]_0 (oc8051_decoder1_n_100),
        .\iadr_t_reg[15]_0 (des2),
        .\iadr_t_reg[15]_1 (imem_wait),
        .\iadr_t_reg[5]_0 (\iadr_t_reg[5] ),
        .\iadr_t_reg[5]_1 (\iadr_t_reg[5]_0 ),
        .\idat_cur_reg[31]_0 (D),
        .ie(ie),
        .\ie_reg[0] (oc8051_memory_interface1_n_339),
        .\ie_reg[1] (oc8051_memory_interface1_n_270),
        .\ie_reg[2] (oc8051_memory_interface1_n_287),
        .\ie_reg[3] (oc8051_memory_interface1_n_338),
        .\ie_reg[4] (oc8051_memory_interface1_n_291),
        .\ie_reg[5] (oc8051_memory_interface1_n_277),
        .\ie_reg[6] (oc8051_memory_interface1_n_282),
        .\ie_reg[7] (oc8051_memory_interface1_n_273),
        .imem_wait_reg_0(oc8051_memory_interface1_n_8),
        .imem_wait_reg_1(oc8051_decoder1_n_203),
        .int_ack(int_ack),
        .int_ack_t_reg_0(int_ack_t),
        .\int_vec_buff_reg[5]_0 (intr),
        .\int_vec_buff_reg[5]_1 ({int_src[5:3],int_src[1]}),
        .\int_vec_reg[1] (oc8051_sfr1_n_23),
        .internal_addr_OBUF(internal_addr_OBUF),
        .ip(ip),
        .\ip_reg[0] (oc8051_memory_interface1_n_337),
        .\ip_reg[1] (oc8051_memory_interface1_n_271),
        .\ip_reg[2] (oc8051_memory_interface1_n_288),
        .\ip_reg[3] (oc8051_memory_interface1_n_336),
        .\ip_reg[4] (oc8051_memory_interface1_n_292),
        .\ip_reg[5] (oc8051_memory_interface1_n_278),
        .\ip_reg[6] (oc8051_memory_interface1_n_283),
        .\ip_reg[7] (oc8051_memory_interface1_n_274),
        .istb_t_reg_0(istb_t_reg_0),
        .istb_t_reg_1(istb_t_reg_1),
        .istb_t_reg_2(oc8051_decoder1_n_193),
        .op1_n(op1_n),
        .\op1_r_reg[0] (oc8051_memory_interface1_n_167),
        .op2_n(op2_n),
        .op2_r(op2_r),
        .\op2_r_reg[4] (oc8051_memory_interface1_n_110),
        .op3_n(op3_n),
        .op3_r(op3_r),
        .\op3_r_reg[7] (oc8051_memory_interface1_n_141),
        .\op_pos_reg[1]_0 (oc8051_decoder1_n_55),
        .p0_out(p0_out),
        .\p0_out[0]_i_4_0 (oc8051_memory_interface1_n_214),
        .\p0_out[7]_i_3_0 (oc8051_memory_interface1_n_255),
        .\p0_out_reg[0] (oc8051_memory_interface1_n_139),
        .\p0_out_reg[0]_0 (oc8051_memory_interface1_n_309),
        .\p0_out_reg[0]_1 (oc8051_decoder1_n_217),
        .\p0_out_reg[1] (oc8051_memory_interface1_n_140),
        .\p0_out_reg[1]_0 (oc8051_memory_interface1_n_308),
        .\p0_out_reg[1]_1 (oc8051_decoder1_n_225),
        .\p0_out_reg[2] (oc8051_memory_interface1_n_307),
        .\p0_out_reg[2]_0 (oc8051_decoder1_n_218),
        .\p0_out_reg[3] (oc8051_memory_interface1_n_138),
        .\p0_out_reg[3]_0 (oc8051_memory_interface1_n_306),
        .\p0_out_reg[3]_1 (oc8051_decoder1_n_118),
        .\p0_out_reg[4] (oc8051_memory_interface1_n_305),
        .\p0_out_reg[4]_0 (oc8051_decoder1_n_219),
        .\p0_out_reg[5] (oc8051_memory_interface1_n_304),
        .\p0_out_reg[5]_0 (oc8051_decoder1_n_220),
        .\p0_out_reg[6] (oc8051_memory_interface1_n_303),
        .\p0_out_reg[6]_0 (oc8051_decoder1_n_221),
        .\p0_out_reg[7] (oc8051_memory_interface1_n_302),
        .\p0_out_reg[7]_0 (oc8051_decoder1_n_160),
        .\p0_out_reg[7]_1 (oc8051_decoder1_n_222),
        .p1_out(p1_out),
        .\p1_out_reg[0] (oc8051_memory_interface1_n_317),
        .\p1_out_reg[1] (oc8051_memory_interface1_n_316),
        .\p1_out_reg[2] (oc8051_memory_interface1_n_315),
        .\p1_out_reg[3] (oc8051_memory_interface1_n_314),
        .\p1_out_reg[4] (oc8051_memory_interface1_n_313),
        .\p1_out_reg[5] (oc8051_memory_interface1_n_312),
        .\p1_out_reg[6] (oc8051_memory_interface1_n_311),
        .\p1_out_reg[7] (oc8051_memory_interface1_n_310),
        .\p2_out_reg[0] (oc8051_memory_interface1_n_324),
        .\p2_out_reg[0]_0 (oc8051_sfr1_n_65),
        .\p2_out_reg[1] (oc8051_memory_interface1_n_323),
        .\p2_out_reg[1]_0 (oc8051_sfr1_n_64),
        .\p2_out_reg[2] (oc8051_memory_interface1_n_322),
        .\p2_out_reg[2]_0 (oc8051_sfr1_n_63),
        .\p2_out_reg[3] (oc8051_memory_interface1_n_321),
        .\p2_out_reg[3]_0 (oc8051_sfr1_n_62),
        .\p2_out_reg[4] (oc8051_memory_interface1_n_320),
        .\p2_out_reg[4]_0 (oc8051_sfr1_n_61),
        .\p2_out_reg[5] (oc8051_memory_interface1_n_319),
        .\p2_out_reg[5]_0 (oc8051_sfr1_n_60),
        .\p2_out_reg[6] (oc8051_memory_interface1_n_318),
        .\p2_out_reg[6]_0 (oc8051_decoder1_n_156),
        .\p2_out_reg[6]_1 (oc8051_sfr1_n_59),
        .\p3_out_reg[0] (oc8051_memory_interface1_n_331),
        .\p3_out_reg[0]_0 (oc8051_sfr1_n_73),
        .\p3_out_reg[1] (oc8051_memory_interface1_n_330),
        .\p3_out_reg[1]_0 (oc8051_sfr1_n_72),
        .\p3_out_reg[2] (oc8051_memory_interface1_n_329),
        .\p3_out_reg[2]_0 (oc8051_sfr1_n_71),
        .\p3_out_reg[3] (oc8051_memory_interface1_n_328),
        .\p3_out_reg[3]_0 (oc8051_sfr1_n_70),
        .\p3_out_reg[4] (oc8051_memory_interface1_n_327),
        .\p3_out_reg[4]_0 (oc8051_sfr1_n_69),
        .\p3_out_reg[5] (oc8051_memory_interface1_n_326),
        .\p3_out_reg[5]_0 (oc8051_sfr1_n_68),
        .\p3_out_reg[6] (oc8051_memory_interface1_n_92),
        .\p3_out_reg[6]_0 (oc8051_memory_interface1_n_325),
        .\p3_out_reg[6]_1 (oc8051_sfr1_n_67),
        .p_0_in(p_0_in),
        .\pc_buf[12]_i_2_0 (oc8051_decoder1_n_106),
        .\pc_buf[12]_i_3_0 (oc8051_decoder1_n_111),
        .\pc_buf[12]_i_8_0 (oc8051_decoder1_n_112),
        .\pc_buf[15]_i_10_0 (oc8051_decoder1_n_196),
        .\pc_buf[15]_i_4_0 (oc8051_decoder1_n_104),
        .\pc_buf[15]_i_5_0 (oc8051_decoder1_n_107),
        .\pc_buf[4]_i_18_0 (oc8051_decoder1_n_12),
        .\pc_buf[4]_i_18_1 (oc8051_decoder1_n_120),
        .\pc_buf[4]_i_18_2 (oc8051_sfr1_n_106),
        .\pc_buf_reg[15]_0 (\pc_buf_reg[15] [6:4]),
        .\pc_buf_reg[1]_0 (oc8051_decoder1_n_152),
        .\pc_buf_reg[1]_1 (oc8051_decoder1_n_17),
        .\pc_buf_reg[2]_0 (\pc_buf_reg[15] [0]),
        .\pc_reg[10]_0 (oc8051_memory_interface1_n_162),
        .\pc_reg[10]_1 (oc8051_memory_interface1_n_163),
        .\pc_reg[11]_0 (oc8051_memory_interface1_n_160),
        .\pc_reg[12]_0 (oc8051_memory_interface1_n_156),
        .\pc_reg[12]_1 (oc8051_memory_interface1_n_157),
        .\pc_reg[13]_0 (oc8051_memory_interface1_n_159),
        .\pc_reg[14]_0 (oc8051_memory_interface1_n_217),
        .\pc_reg[15]_0 ({pc[15:9],pc[7:1]}),
        .\pc_reg[15]_1 (oc8051_memory_interface1_n_218),
        .\pc_reg[8]_0 (oc8051_memory_interface1_n_161),
        .\pc_reg[9]_0 (oc8051_memory_interface1_n_158),
        .\pc_reg[9]_1 (oc8051_memory_interface1_n_164),
        .pc_wr_r_i_15_0(oc8051_memory_interface1_n_192),
        .pc_wr_r_i_2_0(oc8051_decoder1_n_4),
        .\pcon_reg[0] (src_sel1),
        .\pcon_reg[0]_0 (oc8051_alu_src_sel1_n_16),
        .pop_reg(oc8051_decoder1_n_28),
        .pop_reg_0(ram_rd_sel_r),
        .psw(psw),
        .\psw_set_reg[0] (oc8051_memory_interface1_n_169),
        .\psw_set_reg[1] (oc8051_memory_interface1_n_171),
        .\psw_set_reg[1]_0 (oc8051_memory_interface1_n_301),
        .\psw_set_reg[1]_1 (oc8051_decoder1_n_51),
        .\ram_rd_sel_r_reg[0] (oc8051_memory_interface1_n_55),
        .\ram_rd_sel_r_reg[0]_0 (oc8051_memory_interface1_n_89),
        .\ram_rd_sel_r_reg[1] (oc8051_memory_interface1_n_82),
        .\ram_rd_sel_r_reg[2] ({rd_addr[2],rd_addr[0]}),
        .\ram_rd_sel_r_reg[2]_0 (oc8051_memory_interface1_n_48),
        .\ram_rd_sel_r_reg[2]_1 (oc8051_memory_interface1_n_49),
        .\ram_rd_sel_r_reg[2]_2 (oc8051_memory_interface1_n_52),
        .\ram_rd_sel_r_reg[2]_3 (oc8051_memory_interface1_n_54),
        .\ram_rd_sel_r_reg[2]_4 (oc8051_memory_interface1_n_65),
        .\ram_rd_sel_r_reg[2]_5 (oc8051_memory_interface1_n_83),
        .\ram_rd_sel_r_reg[2]_6 (oc8051_memory_interface1_n_93),
        .\ram_rd_sel_r_reg[2]_7 (oc8051_memory_interface1_n_236),
        .\ram_wr_sel_reg[1] ({wr_addr[7],wr_addr[5],wr_addr[1:0]}),
        .\ram_wr_sel_reg[1]_0 (oc8051_decoder1_n_155),
        .\ram_wr_sel_reg[1]_1 (oc8051_decoder1_n_154),
        .\ram_wr_sel_reg[2] (oc8051_memory_interface1_n_133),
        .\ram_wr_sel_reg[2]_0 (oc8051_memory_interface1_n_152),
        .\ram_wr_sel_reg[2]_1 (oc8051_memory_interface1_n_155),
        .\ram_wr_sel_reg[2]_10 (oc8051_memory_interface1_n_184),
        .\ram_wr_sel_reg[2]_11 (\oc8051_tc1/tmod0 ),
        .\ram_wr_sel_reg[2]_12 (oc8051_memory_interface1_n_197),
        .\ram_wr_sel_reg[2]_13 (oc8051_memory_interface1_n_198),
        .\ram_wr_sel_reg[2]_14 (oc8051_memory_interface1_n_199),
        .\ram_wr_sel_reg[2]_15 (oc8051_memory_interface1_n_200),
        .\ram_wr_sel_reg[2]_16 (oc8051_memory_interface1_n_201),
        .\ram_wr_sel_reg[2]_17 (\oc8051_uatr1/pcon0 ),
        .\ram_wr_sel_reg[2]_18 (\oc8051_tc21/rcap2l1 ),
        .\ram_wr_sel_reg[2]_19 (oc8051_memory_interface1_n_208),
        .\ram_wr_sel_reg[2]_2 (oc8051_memory_interface1_n_172),
        .\ram_wr_sel_reg[2]_20 (oc8051_memory_interface1_n_209),
        .\ram_wr_sel_reg[2]_21 (oc8051_memory_interface1_n_210),
        .\ram_wr_sel_reg[2]_22 (oc8051_memory_interface1_n_212),
        .\ram_wr_sel_reg[2]_3 (oc8051_memory_interface1_n_173),
        .\ram_wr_sel_reg[2]_4 (oc8051_memory_interface1_n_174),
        .\ram_wr_sel_reg[2]_5 (oc8051_memory_interface1_n_175),
        .\ram_wr_sel_reg[2]_6 (oc8051_memory_interface1_n_176),
        .\ram_wr_sel_reg[2]_7 (oc8051_memory_interface1_n_177),
        .\ram_wr_sel_reg[2]_8 (oc8051_memory_interface1_n_178),
        .\ram_wr_sel_reg[2]_9 (oc8051_memory_interface1_n_183),
        .\rcap2h_reg[2] (oc8051_memory_interface1_n_266),
        .\rcap2h_reg[6] (oc8051_memory_interface1_n_262),
        .rd_addr_r(rd_addr_r),
        .rd_addr_r_reg_0(oc8051_memory_interface1_n_168),
        .rd_addr_r_reg_1({sp[7:5],sp[3:0]}),
        .rd_addr_r_reg_2(oc8051_indi_addr1_n_7),
        .rd_en(rd_en),
        .rd_en_r_i_10({oc8051_decoder1_n_163,oc8051_decoder1_n_164,oc8051_decoder1_n_165,oc8051_decoder1_n_166,oc8051_decoder1_n_167,oc8051_decoder1_n_168,oc8051_decoder1_n_169,oc8051_decoder1_n_170}),
        .rd_en_r_i_11_0(oc8051_memory_interface1_n_74),
        .rd_en_r_i_12_0(oc8051_memory_interface1_n_84),
        .rd_ind0(rd_ind0),
        .rd_ind_reg_0(oc8051_memory_interface1_n_1),
        .reti(reti),
        .reti_reg_0(oc8051_memory_interface1_n_215),
        .reti_reg_1(reti_reg),
        .\ri_r_reg[0]_0 (oc8051_decoder1_n_27),
        .\ri_r_reg[0]_1 (oc8051_indi_addr1_n_18),
        .\ri_r_reg[0]_2 (oc8051_decoder1_n_147),
        .\ri_r_reg[0]_3 (oc8051_sfr1_n_190),
        .\ri_r_reg[0]_4 (\buff_reg[1]_1 ),
        .\ri_r_reg[0]_5 (\buff_reg[0]_0 ),
        .\ri_r_reg[0]_6 (\buff_reg[3]_3 ),
        .\ri_r_reg[0]_7 (\buff_reg[2]_2 ),
        .\ri_r_reg[7]_0 (ri_r),
        .\ri_r_reg[7]_1 (ri),
        .\rn_r_reg[4]_0 (rn_r),
        .rst_IBUF(rst_IBUF),
        .scon(scon),
        .\scon_reg[1] (oc8051_memory_interface1_n_334),
        .\scon_reg[1]_0 (oc8051_decoder1_n_45),
        .\scon_reg[2] (oc8051_memory_interface1_n_333),
        .\scon_reg[2]_0 (\oc8051_uatr1/p_1_in ),
        .\scon_reg[2]_1 (oc8051_sfr1_n_208),
        .\scon_reg[3] (oc8051_memory_interface1_n_332),
        .\scon_reg[4] (oc8051_memory_interface1_n_294),
        .\scon_reg[5] (oc8051_memory_interface1_n_279),
        .\scon_reg[6] (oc8051_memory_interface1_n_285),
        .\scon_reg[7] (oc8051_memory_interface1_n_275),
        .sfr_bit(sfr_bit),
        .\src_sel1_reg[2] (oc8051_memory_interface1_n_165),
        .\src_sel1_reg[2]_0 (src1[0]),
        .src_sel3(src_sel3),
        .src_sel30(src_sel30),
        .src_sel3_reg(oc8051_decoder1_n_54),
        .state1(state1),
        .\state_reg[0] (oc8051_memory_interface1_n_40),
        .\state_reg[0]_0 (oc8051_memory_interface1_n_86),
        .\state_reg[0]_1 ({oc8051_memory_interface1_n_129,oc8051_memory_interface1_n_130,oc8051_memory_interface1_n_131,oc8051_memory_interface1_n_132}),
        .\state_reg[0]_2 ({oc8051_memory_interface1_n_134,oc8051_memory_interface1_n_135}),
        .\state_reg[0]_3 ({oc8051_memory_interface1_n_143,oc8051_memory_interface1_n_144,oc8051_memory_interface1_n_145}),
        .\state_reg[0]_4 ({oc8051_memory_interface1_n_234,oc8051_memory_interface1_n_235}),
        .\state_reg[0]_5 (oc8051_memory_interface1_n_296),
        .\state_reg[1] (oc8051_memory_interface1_n_91),
        .\state_reg[1]_0 ({oc8051_memory_interface1_n_126,oc8051_memory_interface1_n_127,oc8051_memory_interface1_n_128}),
        .\state_reg[1]_1 ({oc8051_memory_interface1_n_136,oc8051_memory_interface1_n_137}),
        .\state_reg[1]_2 ({oc8051_memory_interface1_n_260,oc8051_memory_interface1_n_261}),
        .\state_reg[1]_3 (oc8051_memory_interface1_n_297),
        .\state_reg[1]_4 (oc8051_decoder1_n_3),
        .t2con(t2con[7:1]),
        .\t2con_reg[1] (oc8051_memory_interface1_n_269),
        .\t2con_reg[2] (oc8051_memory_interface1_n_286),
        .\t2con_reg[2]_0 (oc8051_decoder1_n_35),
        .\t2con_reg[3] (oc8051_memory_interface1_n_265),
        .\t2con_reg[3]_0 (oc8051_memory_interface1_n_342),
        .\t2con_reg[4] (oc8051_memory_interface1_n_264),
        .\t2con_reg[4]_0 (oc8051_memory_interface1_n_290),
        .\t2con_reg[4]_1 (oc8051_decoder1_n_33),
        .\t2con_reg[5] (oc8051_memory_interface1_n_263),
        .\t2con_reg[5]_0 (oc8051_memory_interface1_n_276),
        .\t2con_reg[5]_1 (oc8051_decoder1_n_34),
        .\t2con_reg[6] (oc8051_memory_interface1_n_341),
        .\t2con_reg[6]_0 (oc8051_decoder1_n_31),
        .\t2con_reg[7] (oc8051_memory_interface1_n_340),
        .\t2con_reg[7]_0 (oc8051_sfr1_n_24),
        .\t2con_reg[7]_1 (oc8051_decoder1_n_32),
        .tcon({tcon[6],tcon[4:0]}),
        .tcon_ie0_reg(oc8051_memory_interface1_n_231),
        .tcon_ie0_reg_0(oc8051_sfr1_n_234),
        .tcon_ie0_reg_1(oc8051_sfr1_n_225),
        .tcon_ie1_reg(oc8051_memory_interface1_n_232),
        .tcon_ie1_reg_0(oc8051_decoder1_n_36),
        .\tcon_s_reg[0] (oc8051_memory_interface1_n_335),
        .\tcon_s_reg[1] (oc8051_memory_interface1_n_289),
        .\tcon_s_reg[2] (oc8051_memory_interface1_n_293),
        .\tcon_s_reg[3] (oc8051_memory_interface1_n_207),
        .\tcon_s_reg[3]_0 (oc8051_memory_interface1_n_284),
        .tf0(tf0),
        .tf0_buff(\oc8051_int1/tf0_buff ),
        .tf0_buff_reg(oc8051_memory_interface1_n_190),
        .tf2_set9_out(\oc8051_tc21/tf2_set9_out ),
        .\th0[7]_i_6_0 (oc8051_memory_interface1_n_196),
        .tl1(tl1),
        .\tl1_reg[4] (oc8051_sfr1_n_216),
        .\tl1_reg[6] (oc8051_memory_interface1_n_281),
        .\tl1_reg[6]_0 (oc8051_sfr1_n_228),
        .\tmod_reg[0] (oc8051_decoder1_n_162),
        .\tmp_mul_reg[0] (oc8051_decoder1_n_141),
        .\tr_count_reg[0] (oc8051_memory_interface1_n_211),
        .\tr_count_reg[0]_0 (oc8051_sfr1_n_194),
        .tx_done(\oc8051_uatr1/tx_done ),
        .wait_data1_out(wait_data1_out),
        .wait_data_reg_inv(oc8051_memory_interface1_n_39),
        .wait_data_reg_inv_0(oc8051_memory_interface1_n_51),
        .wait_data_reg_inv_1(oc8051_memory_interface1_n_154),
        .wait_data_reg_inv_10(oc8051_memory_interface1_n_298),
        .wait_data_reg_inv_11({oc8051_decoder1_n_157,oc8051_decoder1_n_158}),
        .wait_data_reg_inv_12(oc8051_decoder1_n_19),
        .wait_data_reg_inv_2(oc8051_memory_interface1_n_170),
        .wait_data_reg_inv_3(oc8051_memory_interface1_n_181),
        .wait_data_reg_inv_4(oc8051_memory_interface1_n_182),
        .wait_data_reg_inv_5(oc8051_memory_interface1_n_191),
        .wait_data_reg_inv_6(oc8051_memory_interface1_n_194),
        .wait_data_reg_inv_7(oc8051_memory_interface1_n_195),
        .wait_data_reg_inv_8(oc8051_memory_interface1_n_245),
        .wait_data_reg_inv_9(oc8051_memory_interface1_n_246),
        .wr0(wr0),
        .wr0_0(wr0_0),
        .\wr_addr_reg[0]_0 (oc8051_memory_interface1_n_213),
        .\wr_addr_reg[0]_1 (oc8051_memory_interface1_n_244),
        .\wr_addr_reg[0]_2 (oc8051_memory_interface1_n_247),
        .\wr_addr_reg[0]_3 (oc8051_memory_interface1_n_248),
        .\wr_addr_reg[0]_4 (oc8051_memory_interface1_n_250),
        .\wr_addr_reg[0]_5 (oc8051_memory_interface1_n_252),
        .\wr_addr_reg[0]_6 (oc8051_memory_interface1_n_253),
        .\wr_addr_reg[0]_7 (oc8051_memory_interface1_n_259),
        .\wr_addr_reg[1]_0 (oc8051_memory_interface1_n_50),
        .\wr_addr_reg[1]_1 (oc8051_memory_interface1_n_180),
        .\wr_addr_reg[1]_2 (oc8051_memory_interface1_n_251),
        .\wr_addr_reg[1]_3 (oc8051_memory_interface1_n_256),
        .\wr_addr_reg[2]_0 (oc8051_memory_interface1_n_216),
        .\wr_addr_reg[4]_0 (oc8051_memory_interface1_n_254),
        .\wr_addr_reg[5]_0 (oc8051_memory_interface1_n_151),
        .\wr_addr_reg[5]_1 (oc8051_memory_interface1_n_179),
        .wr_bit_r(wr_bit_r),
        .wr_bit_r_reg(oc8051_memory_interface1_n_72),
        .wr_bit_r_reg_0(oc8051_memory_interface1_n_75),
        .wr_bit_r_reg_1(oc8051_memory_interface1_n_153),
        .wr_bit_r_reg_2(oc8051_memory_interface1_n_185),
        .wr_bit_r_reg_3(oc8051_memory_interface1_n_188),
        .wr_bit_r_reg_4(oc8051_memory_interface1_n_189),
        .wr_bit_r_reg_5(oc8051_memory_interface1_n_193),
        .wr_bit_r_reg_6(oc8051_memory_interface1_n_237),
        .wr_reg(oc8051_memory_interface1_n_299),
        .wr_sbuf(\oc8051_uatr1/wr_sbuf ),
        .\wr_sfr[1]_i_2_0 (op),
        .\wr_sfr_reg[1] (oc8051_memory_interface1_n_202),
        .\wr_sfr_reg[1]_0 (oc8051_memory_interface1_n_203));
  oc8051_ram_top oc8051_ram_top1
       (.ADDRA({oc8051_memory_interface1_n_66,oc8051_memory_interface1_n_67,oc8051_memory_interface1_n_68,oc8051_memory_interface1_n_69,oc8051_memory_interface1_n_70,oc8051_memory_interface1_n_71}),
        .ADDRD({oc8051_memory_interface1_n_76,oc8051_memory_interface1_n_77,oc8051_memory_interface1_n_78,oc8051_memory_interface1_n_79,oc8051_memory_interface1_n_80,oc8051_memory_interface1_n_81}),
        .E(oc8051_memory_interface1_n_72),
        .Q(sfr_out),
        .bit_out_reg(oc8051_ram_top1_n_1),
        .\bit_select_reg[1]_0 (oc8051_memory_interface1_n_65),
        .\bit_select_reg[2]_0 (oc8051_ram_top1_n_10),
        .\bit_select_reg[2]_1 (oc8051_ram_top1_n_13),
        .\bit_select_reg[2]_2 (oc8051_ram_top1_n_14),
        .\bit_select_reg[2]_3 ({rd_addr[2],rd_addr[0]}),
        .buff_reg_0_63_0_2_i_31(oc8051_memory_interface1_n_1),
        .clk_8051_BUFG(clk_8051_BUFG),
        .\cy_sel_reg[0] (oc8051_ram_top1_n_0),
        .\dat0_reg[0] (oc8051_ram_top1_n_2),
        .\dat0_reg[1] (oc8051_ram_top1_n_9),
        .\dat0_reg[2] (oc8051_ram_top1_n_4),
        .\dat0_reg[3] (oc8051_ram_top1_n_8),
        .\dat0_reg[4] (oc8051_ram_top1_n_3),
        .\dat0_reg[5] (oc8051_ram_top1_n_6),
        .\dat0_reg[6] (oc8051_ram_top1_n_5),
        .\dat0_reg[7] (oc8051_ram_top1_n_7),
        .des1(des1[0]),
        .\iadr_t[8]_i_12 (cy_sel),
        .\iadr_t[8]_i_12_0 (oc8051_memory_interface1_n_168),
        .rd_addr_r(rd_addr_r),
        .\rd_data_reg[0] (oc8051_memory_interface1_n_298),
        .\rd_data_reg[0]_0 (oc8051_memory_interface1_n_299),
        .\rd_data_reg[0]_1 (oc8051_decoder1_n_226),
        .\rd_data_reg[0]_2 (oc8051_decoder1_n_227),
        .\rd_data_reg[7] (oc8051_memory_interface1_n_54),
        .\rd_data_reg[7]_0 (oc8051_memory_interface1_n_74),
        .rd_en(rd_en),
        .rst_IBUF(rst_IBUF),
        .sfr_bit(sfr_bit),
        .wr_bit_r(wr_bit_r),
        .\wr_data_r_reg[1]_0 (oc8051_decoder1_n_45),
        .\wr_data_r_reg[2]_0 (oc8051_ram_top1_n_12),
        .\wr_data_r_reg[2]_1 (oc8051_decoder1_n_223),
        .\wr_data_r_reg[3]_0 (oc8051_ram_top1_n_11),
        .\wr_data_r_reg[3]_1 (oc8051_decoder1_n_224),
        .\wr_data_r_reg[4]_0 (oc8051_decoder1_n_33),
        .\wr_data_r_reg[5]_0 (oc8051_decoder1_n_34),
        .\wr_data_r_reg[6]_0 (oc8051_decoder1_n_31),
        .\wr_data_r_reg[7]_0 (oc8051_decoder1_n_73),
        .\wr_data_r_reg[7]_1 (oc8051_decoder1_n_32));
  oc8051_sfr oc8051_sfr1
       (.D({sp[3],sp[1:0]}),
        .E(oc8051_memory_interface1_n_203),
        .O({oc8051_sfr1_n_5,oc8051_sfr1_n_6}),
        .Q({tl2[7],tl2[1]}),
        .b_reg(b_reg),
        .bit_addr(bit_addr),
        .bit_out_i_4(oc8051_memory_interface1_n_55),
        .bit_out_reg_0(oc8051_memory_interface1_n_233),
        .bit_out_reg_i_34(oc8051_sfr1_n_108),
        .bit_out_reg_i_35(oc8051_memory_interface1_n_65),
        .bit_out_reg_i_36(oc8051_sfr1_n_107),
        .\bit_select[0]_i_2 (ram_rd_sel_r[0]),
        .\bit_select[0]_i_2_0 (oc8051_memory_interface1_n_91),
        .\buff_reg[7][7] (oc8051_decoder1_n_0),
        .clk_8051_BUFG(clk_8051_BUFG),
        .cy(cy),
        .\dat0[0]_i_8 (oc8051_memory_interface1_n_93),
        .\dat0[0]_i_8_0 (oc8051_memory_interface1_n_88),
        .\dat0[0]_i_8_1 (oc8051_memory_interface1_n_139),
        .\dat0[1]_i_5 (oc8051_memory_interface1_n_52),
        .\dat0[1]_i_5_0 (oc8051_memory_interface1_n_140),
        .\dat0[3]_i_9 (oc8051_memory_interface1_n_138),
        .\dat0[7]_i_7 (oc8051_memory_interface1_n_85),
        .\dat0[7]_i_7_0 (oc8051_memory_interface1_n_84),
        .\dat0[7]_i_9 (oc8051_memory_interface1_n_49),
        .\dat0[7]_i_9_0 (oc8051_memory_interface1_n_48),
        .\dat0[7]_i_9_1 (oc8051_memory_interface1_n_86),
        .\dat0_reg[0]_i_2 (oc8051_memory_interface1_n_90),
        .\dat0_reg[1]_i_4 (oc8051_memory_interface1_n_64),
        .\dat0_reg[1]_i_4_0 (oc8051_memory_interface1_n_89),
        .\dat0_reg[6]_0 (oc8051_decoder1_n_18),
        .\dat0_reg[6]_1 (rd_addr[2]),
        .\dat0_reg[6]_2 (oc8051_memory_interface1_n_92),
        .\dat0_reg[7]_0 (sfr_out),
        .\dat0_reg[7]_1 (oc8051_memory_interface1_n_51),
        .\dat0_reg[7]_2 (p_1_in),
        .\data[2]_i_6 (data2__0),
        .\data[2]_i_6_0 (data2),
        .\data[2]_i_8 (oc8051_sfr1_n_224),
        .\data_hi_reg[7] (dptr_hi),
        .\data_hi_reg[7]_0 (\oc8051_dptr1/p_1_in ),
        .\data_lo_reg[0] (oc8051_memory_interface1_n_202),
        .\data_lo_reg[7] (des_acc),
        .\data_out_reg[0] (oc8051_decoder1_n_233),
        .\data_out_reg[1] (oc8051_decoder1_n_232),
        .\data_out_reg[2] (oc8051_decoder1_n_231),
        .\data_out_reg[3] (oc8051_decoder1_n_230),
        .\data_out_reg[4] (oc8051_decoder1_n_229),
        .\data_out_reg[5] (oc8051_decoder1_n_205),
        .\data_out_reg[6] (oc8051_decoder1_n_204),
        .\data_out_reg[7] (acc),
        .\data_out_reg[7]_0 (oc8051_decoder1_n_228),
        .\data_out_reg[7]_1 ({oc8051_decoder1_n_57,oc8051_decoder1_n_58,oc8051_decoder1_n_59,oc8051_decoder1_n_60,oc8051_decoder1_n_61,oc8051_decoder1_n_62,oc8051_decoder1_n_63,oc8051_decoder1_n_64}),
        .\data_reg[1] (oc8051_memory_interface1_n_272),
        .\data_reg[2] (oc8051_memory_interface1_n_301),
        .\data_reg[3] (oc8051_memory_interface1_n_300),
        .\data_reg[4] (oc8051_sfr1_n_190),
        .\data_reg[4]_0 (oc8051_memory_interface1_n_295),
        .\data_reg[5] (oc8051_memory_interface1_n_280),
        .\data_reg[6] (oc8051_sfr1_n_129),
        .\data_reg[6]_0 (oc8051_sfr1_n_189),
        .\data_reg[6]_1 (oc8051_decoder1_n_215),
        .\data_reg[7] (oc8051_sfr1_n_106),
        .\data_reg[7]_0 (oc8051_decoder1_n_214),
        .des1(des1),
        .\iadr_t[1]_i_4 (oc8051_decoder1_n_110),
        .ie(ie),
        .\ie_reg[0] (oc8051_memory_interface1_n_339),
        .\ie_reg[1] (oc8051_memory_interface1_n_270),
        .\ie_reg[2] (oc8051_memory_interface1_n_287),
        .\ie_reg[3] (oc8051_memory_interface1_n_338),
        .\ie_reg[4] (oc8051_memory_interface1_n_291),
        .\ie_reg[5] (oc8051_memory_interface1_n_277),
        .\ie_reg[6] (oc8051_memory_interface1_n_282),
        .\ie_reg[7] (oc8051_memory_interface1_n_273),
        .int_ack(int_ack),
        .int_ack_reg(oc8051_sfr1_n_225),
        .int_proc_reg(oc8051_sfr1_n_23),
        .\int_vec_reg[1] (intr),
        .\int_vec_reg[1]_0 (oc8051_memory_interface1_n_215),
        .\int_vec_reg[5] ({int_src[5:3],int_src[1]}),
        .ip(ip),
        .\ip_reg[0] (oc8051_sfr1_n_110),
        .\ip_reg[0]_0 (oc8051_memory_interface1_n_337),
        .\ip_reg[1] (oc8051_sfr1_n_111),
        .\ip_reg[1]_0 (oc8051_memory_interface1_n_271),
        .\ip_reg[2] (oc8051_sfr1_n_112),
        .\ip_reg[2]_0 (oc8051_memory_interface1_n_288),
        .\ip_reg[3] (oc8051_sfr1_n_113),
        .\ip_reg[3]_0 (oc8051_memory_interface1_n_336),
        .\ip_reg[4] (oc8051_sfr1_n_114),
        .\ip_reg[4]_0 (oc8051_memory_interface1_n_292),
        .\ip_reg[5] (oc8051_sfr1_n_115),
        .\ip_reg[5]_0 (oc8051_memory_interface1_n_278),
        .\ip_reg[6] (oc8051_sfr1_n_116),
        .\ip_reg[6]_0 (oc8051_memory_interface1_n_283),
        .\ip_reg[7] (oc8051_sfr1_n_109),
        .\ip_reg[7]_0 (oc8051_memory_interface1_n_274),
        .\isrc_reg[1][1] (oc8051_sfr1_n_234),
        .op2_n({op2_n[3],op2_n[0]}),
        .op2_r({op2_r[7:5],op2_r[2:1]}),
        .\op2_r_reg[7] (oc8051_sfr1_n_196),
        .p0_out(p0_out),
        .\p0_out_reg[0] (oc8051_memory_interface1_n_309),
        .\p0_out_reg[1] (oc8051_memory_interface1_n_308),
        .\p0_out_reg[2] (oc8051_memory_interface1_n_307),
        .\p0_out_reg[3] (oc8051_memory_interface1_n_306),
        .\p0_out_reg[4] (oc8051_memory_interface1_n_305),
        .\p0_out_reg[5] (oc8051_memory_interface1_n_304),
        .\p0_out_reg[6] (oc8051_memory_interface1_n_303),
        .\p0_out_reg[7] (oc8051_memory_interface1_n_302),
        .p1_out(p1_out),
        .\p1_out_reg[0] (oc8051_memory_interface1_n_317),
        .\p1_out_reg[1] (oc8051_memory_interface1_n_316),
        .\p1_out_reg[2] (oc8051_memory_interface1_n_315),
        .\p1_out_reg[3] (oc8051_memory_interface1_n_314),
        .\p1_out_reg[4] (oc8051_memory_interface1_n_313),
        .\p1_out_reg[5] (oc8051_memory_interface1_n_312),
        .\p1_out_reg[6] (oc8051_memory_interface1_n_311),
        .\p1_out_reg[7] (oc8051_memory_interface1_n_310),
        .\p2_out_reg[0] (oc8051_sfr1_n_65),
        .\p2_out_reg[0]_0 (oc8051_memory_interface1_n_324),
        .\p2_out_reg[1] (oc8051_sfr1_n_64),
        .\p2_out_reg[1]_0 (oc8051_memory_interface1_n_323),
        .\p2_out_reg[2] (oc8051_sfr1_n_63),
        .\p2_out_reg[2]_0 (oc8051_memory_interface1_n_322),
        .\p2_out_reg[3] (oc8051_sfr1_n_62),
        .\p2_out_reg[3]_0 (oc8051_memory_interface1_n_321),
        .\p2_out_reg[4] (oc8051_sfr1_n_61),
        .\p2_out_reg[4]_0 (oc8051_memory_interface1_n_320),
        .\p2_out_reg[5] (oc8051_sfr1_n_60),
        .\p2_out_reg[5]_0 (oc8051_memory_interface1_n_319),
        .\p2_out_reg[6] (oc8051_sfr1_n_59),
        .\p2_out_reg[6]_0 (oc8051_memory_interface1_n_318),
        .\p2_out_reg[7] (oc8051_sfr1_n_58),
        .\p2_out_reg[7]_0 (oc8051_decoder1_n_234),
        .\p3_out_reg[0] (oc8051_sfr1_n_73),
        .\p3_out_reg[0]_0 (oc8051_memory_interface1_n_331),
        .\p3_out_reg[1] (oc8051_sfr1_n_72),
        .\p3_out_reg[1]_0 (oc8051_memory_interface1_n_330),
        .\p3_out_reg[2] (oc8051_sfr1_n_71),
        .\p3_out_reg[2]_0 (oc8051_memory_interface1_n_329),
        .\p3_out_reg[3] (oc8051_sfr1_n_70),
        .\p3_out_reg[3]_0 (oc8051_memory_interface1_n_328),
        .\p3_out_reg[4] (oc8051_sfr1_n_69),
        .\p3_out_reg[4]_0 (oc8051_memory_interface1_n_327),
        .\p3_out_reg[5] (oc8051_sfr1_n_68),
        .\p3_out_reg[5]_0 (oc8051_memory_interface1_n_326),
        .\p3_out_reg[6] (oc8051_sfr1_n_67),
        .\p3_out_reg[6]_0 (oc8051_memory_interface1_n_325),
        .\p3_out_reg[7] (oc8051_sfr1_n_66),
        .\p3_out_reg[7]_0 (oc8051_decoder1_n_235),
        .pc_wr_r_i_19(oc8051_memory_interface1_n_41),
        .pc_wr_r_i_19_0(oc8051_memory_interface1_n_40),
        .pc_wr_r_i_19_1(oc8051_ram_top1_n_1),
        .\pcon_reg[0] (oc8051_sfr1_n_132),
        .\pcon_reg[0]_0 (\oc8051_uatr1/pcon0 ),
        .\pcon_reg[1] (oc8051_sfr1_n_133),
        .\pcon_reg[2] (oc8051_sfr1_n_134),
        .\pcon_reg[3] (oc8051_sfr1_n_135),
        .\pcon_reg[4] (oc8051_sfr1_n_136),
        .\pcon_reg[5] (oc8051_sfr1_n_137),
        .\pcon_reg[6] (oc8051_sfr1_n_138),
        .\pcon_reg[7] (oc8051_sfr1_n_139),
        .pop(\oc8051_sp1/pop ),
        .pop_reg(oc8051_memory_interface1_n_236),
        .psw(psw),
        .\ram_rd_sel_r_reg[0] (oc8051_sfr1_n_179),
        .\ram_rd_sel_r_reg[0]_0 (oc8051_sfr1_n_180),
        .\ram_wr_sel_reg[0] (oc8051_sfr1_n_199),
        .\ram_wr_sel_reg[0]_0 (oc8051_sfr1_n_200),
        .\ram_wr_sel_reg[2] ({oc8051_sfr1_n_7,oc8051_sfr1_n_8,oc8051_sfr1_n_9,oc8051_sfr1_n_10}),
        .\rcap2h_reg[0] (\oc8051_tc21/rcap2l1 ),
        .\rcap2h_reg[6] (rcap2h),
        .\rcap2l_reg[0] (oc8051_sfr1_n_233),
        .\rcap2l_reg[0]_0 (oc8051_memory_interface1_n_199),
        .\rcap2l_reg[6] (rcap2l),
        .reti(reti),
        .\ri_r[4]_i_2 (oc8051_memory_interface1_n_151),
        .rst_IBUF(rst_IBUF),
        .rxd_IBUF(rxd_IBUF),
        .\sbuf_rxd_reg[0] (sbuf),
        .\sbuf_rxd_tmp_reg[11] (\oc8051_uatr1/p_1_in ),
        .\sbuf_txd_reg[0] (oc8051_memory_interface1_n_212),
        .\sbuf_txd_reg[7] ({oc8051_decoder1_n_93,oc8051_decoder1_n_94,oc8051_decoder1_n_95,oc8051_decoder1_n_96,oc8051_decoder1_n_97,oc8051_decoder1_n_98,oc8051_decoder1_n_99}),
        .\sbuf_txd_reg[8] ({oc8051_sfr1_n_209,oc8051_sfr1_n_210,oc8051_sfr1_n_211,oc8051_sfr1_n_212,oc8051_sfr1_n_213,oc8051_sfr1_n_214,oc8051_sfr1_n_215}),
        .\sbuf_txd_reg[8]_0 (oc8051_decoder1_n_32),
        .scon(scon),
        .\scon_reg[0] (oc8051_decoder1_n_236),
        .\scon_reg[0]_0 (oc8051_memory_interface1_n_180),
        .\scon_reg[0]_1 (oc8051_memory_interface1_n_154),
        .\scon_reg[1] (oc8051_sfr1_n_152),
        .\scon_reg[1]_0 (oc8051_memory_interface1_n_334),
        .\scon_reg[2] (oc8051_sfr1_n_153),
        .\scon_reg[2]_0 (oc8051_memory_interface1_n_333),
        .\scon_reg[3] (oc8051_sfr1_n_151),
        .\scon_reg[3]_0 (oc8051_memory_interface1_n_332),
        .\scon_reg[4] (oc8051_sfr1_n_154),
        .\scon_reg[4]_0 (oc8051_memory_interface1_n_294),
        .\scon_reg[5] (oc8051_sfr1_n_155),
        .\scon_reg[5]_0 (oc8051_sfr1_n_191),
        .\scon_reg[5]_1 (oc8051_memory_interface1_n_279),
        .\scon_reg[6] (oc8051_sfr1_n_150),
        .\scon_reg[6]_0 (oc8051_memory_interface1_n_285),
        .\scon_reg[7] (oc8051_sfr1_n_148),
        .\scon_reg[7]_0 (oc8051_sfr1_n_192),
        .\scon_reg[7]_1 (oc8051_memory_interface1_n_275),
        .sfr_bit(sfr_bit),
        .\sp_reg[0] (oc8051_memory_interface1_n_133),
        .\sp_reg[3] (oc8051_sfr1_n_201),
        .\sp_reg[3]_0 (oc8051_decoder1_n_182),
        .\sp_reg[3]_1 ({oc8051_decoder1_n_197,oc8051_decoder1_n_198,oc8051_decoder1_n_199,oc8051_decoder1_n_200}),
        .\sp_reg[4] (oc8051_sfr1_n_202),
        .\sp_reg[5] (oc8051_sfr1_n_198),
        .\sp_reg[6] (oc8051_sfr1_n_197),
        .\sp_reg[7] (\oc8051_sp1/sp ),
        .\sp_reg[7]_0 (\oc8051_sp1/p_0_in ),
        .\sp_reg[7]_1 ({oc8051_decoder1_n_206,oc8051_decoder1_n_207,oc8051_decoder1_n_208,oc8051_decoder1_n_209}),
        .\sp_reg[7]_2 ({sp[7:5],sp[2]}),
        .srcAc(srcAc),
        .state1(state1),
        .t2con(t2con),
        .\t2con_reg[0] (oc8051_decoder1_n_237),
        .\t2con_reg[1] (oc8051_sfr1_n_128),
        .\t2con_reg[1]_0 (oc8051_memory_interface1_n_269),
        .\t2con_reg[2] (oc8051_sfr1_n_131),
        .\t2con_reg[2]_0 (oc8051_memory_interface1_n_286),
        .\t2con_reg[3] (oc8051_memory_interface1_n_342),
        .\t2con_reg[4] (oc8051_memory_interface1_n_290),
        .\t2con_reg[5] (oc8051_memory_interface1_n_276),
        .\t2con_reg[6] (oc8051_sfr1_n_130),
        .\t2con_reg[6]_0 (oc8051_memory_interface1_n_341),
        .\t2con_reg[7] (oc8051_sfr1_n_117),
        .\t2con_reg[7]_0 (oc8051_memory_interface1_n_340),
        .tcon_ie0_reg(oc8051_memory_interface1_n_231),
        .tcon_ie1_reg(oc8051_sfr1_n_163),
        .tcon_ie1_reg_0(oc8051_memory_interface1_n_232),
        .\tcon_s_reg[0] (oc8051_memory_interface1_n_335),
        .\tcon_s_reg[1] (oc8051_memory_interface1_n_289),
        .\tcon_s_reg[2] (oc8051_sfr1_n_176),
        .\tcon_s_reg[2]_0 (oc8051_memory_interface1_n_293),
        .\tcon_s_reg[3] ({tcon[6],tcon[4:0]}),
        .\tcon_s_reg[3]_0 (oc8051_sfr1_n_216),
        .\tcon_s_reg[3]_1 (oc8051_memory_interface1_n_284),
        .tcon_tf0_reg(oc8051_sfr1_n_164),
        .tcon_tf0_reg_0(oc8051_memory_interface1_n_191),
        .tcon_tf0_reg_1(oc8051_decoder1_n_73),
        .tcon_tf0_reg_2(oc8051_memory_interface1_n_190),
        .tcon_tf1_reg(oc8051_memory_interface1_n_152),
        .tcon_tf1_reg_0(wr_addr[1:0]),
        .tcon_tf1_reg_1(oc8051_decoder1_n_202),
        .tcon_tf1_reg_2(oc8051_memory_interface1_n_213),
        .tcon_tf1_reg_3(oc8051_memory_interface1_n_153),
        .tf0(tf0),
        .tf0_buff(\oc8051_int1/tf0_buff ),
        .tf0_reg(oc8051_memory_interface1_n_196),
        .tf1_1_reg(oc8051_memory_interface1_n_209),
        .tf2_set9_out(\oc8051_tc21/tf2_set9_out ),
        .tf2_set_reg(oc8051_sfr1_n_24),
        .\th0_reg[0] (oc8051_sfr1_n_231),
        .\th0_reg[0]_0 (oc8051_memory_interface1_n_197),
        .\th0_reg[2] (oc8051_sfr1_n_218),
        .\th0_reg[3] (oc8051_sfr1_n_223),
        .\th0_reg[4] (oc8051_sfr1_n_222),
        .\th0_reg[5] (oc8051_sfr1_n_221),
        .\th0_reg[6] (oc8051_sfr1_n_220),
        .\th0_reg[7] (oc8051_sfr1_n_219),
        .\th0_reg[7]_0 ({oc8051_decoder1_n_123,oc8051_decoder1_n_124,oc8051_decoder1_n_125,oc8051_decoder1_n_126,oc8051_decoder1_n_127,oc8051_decoder1_n_128,oc8051_decoder1_n_129,oc8051_decoder1_n_130}),
        .\th1_reg[0] (oc8051_memory_interface1_n_208),
        .\th1_reg[0]_0 (oc8051_memory_interface1_n_210),
        .\th1_reg[4] (oc8051_memory_interface1_n_201),
        .\th2_reg[1] (oc8051_decoder1_n_45),
        .\th2_reg[5] (oc8051_decoder1_n_34),
        .\th2_reg[6] (oc8051_decoder1_n_31),
        .\th2_reg[7] ({th2[7],th2[1]}),
        .\tl0_reg[2] (oc8051_sfr1_n_173),
        .\tl0_reg[3] (oc8051_sfr1_n_174),
        .\tl0_reg[3]_0 (\oc8051_tc1/p_1_in ),
        .\tl0_reg[4] (oc8051_sfr1_n_175),
        .\tl0_reg[4]_0 (oc8051_memory_interface1_n_198),
        .\tl0_reg[5] (oc8051_sfr1_n_177),
        .\tl0_reg[6] (oc8051_sfr1_n_178),
        .\tl0_reg[7] (oc8051_decoder1_n_162),
        .\tl0_reg[7]_0 (oc8051_memory_interface1_n_214),
        .\tl1_reg[4] (oc8051_memory_interface1_n_207),
        .\tl1_reg[4]_0 ({oc8051_decoder1_n_132,oc8051_decoder1_n_133,oc8051_decoder1_n_134,oc8051_decoder1_n_135}),
        .\tl1_reg[6] (tl1),
        .\tl1_reg[6]_0 (oc8051_sfr1_n_228),
        .\tl1_reg[6]_1 (oc8051_memory_interface1_n_281),
        .\tl2_reg[2] (oc8051_decoder1_n_35),
        .\tl2_reg[3] (oc8051_decoder1_n_36),
        .\tl2_reg[4] (oc8051_decoder1_n_33),
        .\tl2_reg[6] (oc8051_memory_interface1_n_200),
        .\tmod_reg[0] (oc8051_sfr1_n_232),
        .\tmod_reg[0]_0 (\oc8051_tc1/tmod0 ),
        .\tmod_reg[1] (oc8051_sfr1_n_217),
        .\tmod_reg[5] (oc8051_sfr1_n_226),
        .\tmod_reg[5]_0 (oc8051_sfr1_n_227),
        .\tmod_reg[5]_1 (oc8051_sfr1_n_229),
        .\tmod_reg[5]_2 (oc8051_sfr1_n_230),
        .\tmod_reg[6] ({tmod[6:4],tmod[2]}),
        .\tr_count_reg[0] (oc8051_sfr1_n_194),
        .\tr_count_reg[0]_0 (oc8051_memory_interface1_n_211),
        .tx_done(\oc8051_uatr1/tx_done ),
        .tx_done_reg(oc8051_sfr1_n_208),
        .txd_OBUF(txd_OBUF),
        .wait_data1_out(wait_data1_out),
        .\wr_addr_reg[2]_i_1 (rn_r[2:1]),
        .\wr_addr_reg[2]_i_2 (oc8051_decoder1_n_174),
        .\wr_addr_reg[6]_i_1 (oc8051_decoder1_n_171),
        .\wr_addr_reg[6]_i_1_0 (oc8051_decoder1_n_172),
        .\wr_addr_reg[6]_i_3 ({oc8051_decoder1_n_157,oc8051_decoder1_n_158,oc8051_decoder1_n_159}),
        .\wr_addr_reg[7]_i_1 ({ri_r[7:5],ri_r[2:1]}),
        .wr_bit_r(wr_bit_r),
        .wr_bit_r_reg_0(oc8051_sfr1_n_195),
        .wr_sbuf(\oc8051_uatr1/wr_sbuf ));
endmodule

module oc8051_uart
   (txd_OBUF,
    t1_ow_buf,
    tx_done_reg_0,
    \scon_reg[7]_0 ,
    \scon_reg[6]_0 ,
    \scon_reg[5]_0 ,
    \scon_reg[4]_0 ,
    \scon_reg[3]_0 ,
    scon,
    bit_out_i_68,
    \scon_reg[7]_1 ,
    \scon_reg[6]_1 ,
    \scon_reg[3]_1 ,
    \scon_reg[1]_0 ,
    \scon_reg[2]_0 ,
    \scon_reg[4]_1 ,
    \scon_reg[5]_1 ,
    \scon_reg[5]_2 ,
    \scon_reg[7]_2 ,
    \sbuf_rxd_tmp_reg[11]_0 ,
    Q,
    \pcon_reg[7]_0 ,
    tx_done_reg_1,
    \sbuf_txd_reg[8]_0 ,
    \sbuf_rxd_reg[0]_0 ,
    clk_8051_BUFG,
    rst_IBUF,
    tf1,
    \scon_reg[7]_3 ,
    \scon_reg[6]_2 ,
    \scon_reg[5]_3 ,
    \scon_reg[4]_2 ,
    \scon_reg[3]_2 ,
    \scon_reg[2]_1 ,
    \scon_reg[1]_1 ,
    \scon_reg[0]_0 ,
    bit_out_reg_i_16,
    bit_out_reg_i_16_0,
    bit_out_reg_i_36_0,
    bit_out_reg_i_36_1,
    \dat0[7]_i_7 ,
    \dat0[7]_i_7_0 ,
    \dat0[7]_i_7_1 ,
    cy,
    \dat0_reg[6]_i_4 ,
    srcAc,
    \dat0_reg[3]_i_4 ,
    psw,
    \dat0[1]_i_2 ,
    \dat0_reg[2]_i_4 ,
    \dat0_reg[4]_i_4 ,
    \dat0_reg[5]_i_4 ,
    bit_out_i_67_0,
    \sbuf_txd_reg[8]_1 ,
    wr_sbuf,
    \scon_reg[0]_1 ,
    \scon_reg[0]_2 ,
    pres_ow__0,
    \sbuf_txd_reg[0]_0 ,
    smod_clk_tr_reg_0,
    shift_re_reg_0,
    t2con,
    brate2,
    rxd_IBUF,
    des1,
    \pcon_reg[0]_0 ,
    \sbuf_txd_reg[7]_0 ,
    \tr_count_reg[0]_0 );
  output txd_OBUF;
  output t1_ow_buf;
  output tx_done_reg_0;
  output \scon_reg[7]_0 ;
  output \scon_reg[6]_0 ;
  output \scon_reg[5]_0 ;
  output \scon_reg[4]_0 ;
  output \scon_reg[3]_0 ;
  output [2:0]scon;
  output bit_out_i_68;
  output \scon_reg[7]_1 ;
  output \scon_reg[6]_1 ;
  output \scon_reg[3]_1 ;
  output \scon_reg[1]_0 ;
  output \scon_reg[2]_0 ;
  output \scon_reg[4]_1 ;
  output \scon_reg[5]_1 ;
  output \scon_reg[5]_2 ;
  output \scon_reg[7]_2 ;
  output [0:0]\sbuf_rxd_tmp_reg[11]_0 ;
  output [0:0]Q;
  output [7:0]\pcon_reg[7]_0 ;
  output tx_done_reg_1;
  output [6:0]\sbuf_txd_reg[8]_0 ;
  output [0:0]\sbuf_rxd_reg[0]_0 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input tf1;
  input \scon_reg[7]_3 ;
  input \scon_reg[6]_2 ;
  input \scon_reg[5]_3 ;
  input \scon_reg[4]_2 ;
  input \scon_reg[3]_2 ;
  input \scon_reg[2]_1 ;
  input \scon_reg[1]_1 ;
  input \scon_reg[0]_0 ;
  input bit_out_reg_i_16;
  input bit_out_reg_i_16_0;
  input [0:0]bit_out_reg_i_36_0;
  input bit_out_reg_i_36_1;
  input \dat0[7]_i_7 ;
  input \dat0[7]_i_7_0 ;
  input \dat0[7]_i_7_1 ;
  input cy;
  input \dat0_reg[6]_i_4 ;
  input srcAc;
  input \dat0_reg[3]_i_4 ;
  input [4:0]psw;
  input \dat0[1]_i_2 ;
  input \dat0_reg[2]_i_4 ;
  input \dat0_reg[4]_i_4 ;
  input \dat0_reg[5]_i_4 ;
  input bit_out_i_67_0;
  input \sbuf_txd_reg[8]_1 ;
  input wr_sbuf;
  input \scon_reg[0]_1 ;
  input \scon_reg[0]_2 ;
  input pres_ow__0;
  input \sbuf_txd_reg[0]_0 ;
  input smod_clk_tr_reg_0;
  input shift_re_reg_0;
  input [0:0]t2con;
  input brate2;
  input rxd_IBUF;
  input [7:0]des1;
  input [0:0]\pcon_reg[0]_0 ;
  input [6:0]\sbuf_txd_reg[7]_0 ;
  input [0:0]\tr_count_reg[0]_0 ;

  wire [0:0]Q;
  wire bit_out_i_102_n_0;
  wire bit_out_i_103_n_0;
  wire bit_out_i_104_n_0;
  wire bit_out_i_105_n_0;
  wire bit_out_i_67_0;
  wire bit_out_i_67_n_0;
  wire bit_out_i_68;
  wire bit_out_reg_i_16;
  wire bit_out_reg_i_16_0;
  wire [0:0]bit_out_reg_i_36_0;
  wire bit_out_reg_i_36_1;
  wire brate2;
  wire clk_8051_BUFG;
  wire cy;
  wire \dat0[1]_i_2 ;
  wire \dat0[7]_i_7 ;
  wire \dat0[7]_i_7_0 ;
  wire \dat0[7]_i_7_1 ;
  wire \dat0_reg[2]_i_4 ;
  wire \dat0_reg[3]_i_4 ;
  wire \dat0_reg[4]_i_4 ;
  wire \dat0_reg[5]_i_4 ;
  wire \dat0_reg[6]_i_4 ;
  wire [7:0]des1;
  wire [2:0]p_0_in;
  wire [7:0]p_1_in__0;
  wire [0:0]\pcon_reg[0]_0 ;
  wire [7:0]\pcon_reg[7]_0 ;
  wire pres_ow__0;
  wire [4:0]psw;
  wire re_count;
  wire \re_count[3]_i_2_n_0 ;
  wire [3:0]re_count_reg;
  wire receive_i_1_n_0;
  wire receive_i_2_n_0;
  wire receive_reg_n_0;
  wire rst_IBUF;
  wire rx_done_inv_i_1_n_0;
  wire rx_done_inv_i_2_n_0;
  wire rx_done_inv_i_3_n_0;
  wire rx_done_reg_inv_n_0;
  wire \rx_sam[0]_i_1_n_0 ;
  wire \rx_sam[0]_i_2_n_0 ;
  wire \rx_sam[0]_i_3_n_0 ;
  wire \rx_sam[1]_i_1_n_0 ;
  wire \rx_sam[1]_i_2_n_0 ;
  wire \rx_sam_reg_n_0_[0] ;
  wire \rx_sam_reg_n_0_[1] ;
  wire rxd_IBUF;
  wire rxd_r9_out;
  wire rxd_r_i_1_n_0;
  wire rxd_r_reg_n_0;
  wire [7:1]sbuf;
  wire [0:0]\sbuf_rxd_reg[0]_0 ;
  wire sbuf_rxd_tmp;
  wire \sbuf_rxd_tmp[0]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[10]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[11]_i_2_n_0 ;
  wire \sbuf_rxd_tmp[11]_i_3_n_0 ;
  wire \sbuf_rxd_tmp[11]_i_5_n_0 ;
  wire \sbuf_rxd_tmp[11]_i_6_n_0 ;
  wire \sbuf_rxd_tmp[1]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[2]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[3]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[4]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[5]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[6]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[7]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[8]_i_1_n_0 ;
  wire \sbuf_rxd_tmp[9]_i_1_n_0 ;
  wire [0:0]\sbuf_rxd_tmp_reg[11]_0 ;
  wire \sbuf_rxd_tmp_reg_n_0_[0] ;
  wire \sbuf_rxd_tmp_reg_n_0_[1] ;
  wire \sbuf_rxd_tmp_reg_n_0_[2] ;
  wire \sbuf_txd[0]_i_1_n_0 ;
  wire \sbuf_txd[10]_i_1_n_0 ;
  wire \sbuf_txd[10]_i_2_n_0 ;
  wire \sbuf_txd[10]_i_4_n_0 ;
  wire \sbuf_txd[10]_i_5_n_0 ;
  wire \sbuf_txd[10]_i_6_n_0 ;
  wire \sbuf_txd[10]_i_7_n_0 ;
  wire \sbuf_txd[10]_i_8_n_0 ;
  wire \sbuf_txd[10]_i_9_n_0 ;
  wire \sbuf_txd[8]_i_1_n_0 ;
  wire \sbuf_txd[9]_i_1_n_0 ;
  wire \sbuf_txd_reg[0]_0 ;
  wire [6:0]\sbuf_txd_reg[7]_0 ;
  wire [6:0]\sbuf_txd_reg[8]_0 ;
  wire \sbuf_txd_reg[8]_1 ;
  wire \sbuf_txd_reg_n_0_[0] ;
  wire \sbuf_txd_reg_n_0_[10] ;
  wire \sbuf_txd_reg_n_0_[1] ;
  wire \sbuf_txd_reg_n_0_[9] ;
  wire [2:0]scon;
  wire \scon[0]_i_3_n_0 ;
  wire \scon_reg[0]_0 ;
  wire \scon_reg[0]_1 ;
  wire \scon_reg[0]_2 ;
  wire \scon_reg[1]_0 ;
  wire \scon_reg[1]_1 ;
  wire \scon_reg[2]_0 ;
  wire \scon_reg[2]_1 ;
  wire \scon_reg[3]_0 ;
  wire \scon_reg[3]_1 ;
  wire \scon_reg[3]_2 ;
  wire \scon_reg[4]_0 ;
  wire \scon_reg[4]_1 ;
  wire \scon_reg[4]_2 ;
  wire \scon_reg[5]_0 ;
  wire \scon_reg[5]_1 ;
  wire \scon_reg[5]_2 ;
  wire \scon_reg[5]_3 ;
  wire \scon_reg[6]_0 ;
  wire \scon_reg[6]_1 ;
  wire \scon_reg[6]_2 ;
  wire \scon_reg[7]_0 ;
  wire \scon_reg[7]_1 ;
  wire \scon_reg[7]_2 ;
  wire \scon_reg[7]_3 ;
  wire shift_re12_out;
  wire shift_re_i_2_n_0;
  wire shift_re_reg_0;
  wire shift_re_reg_n_0;
  wire shift_tr3_out;
  wire shift_tr_reg_n_0;
  wire smod_clk_re_i_1_n_0;
  wire smod_clk_re_reg_n_0;
  wire smod_clk_tr_i_1_n_0;
  wire smod_clk_tr_reg_0;
  wire smod_clk_tr_reg_n_0;
  wire srcAc;
  wire t1_ow_buf;
  wire [0:0]t2con;
  wire tf1;
  wire \tr_count[1]_i_1_n_0 ;
  wire \tr_count[2]_i_1_n_0 ;
  wire \tr_count[3]_i_1_n_0 ;
  wire \tr_count[3]_i_2_n_0 ;
  wire [0:0]\tr_count_reg[0]_0 ;
  wire \tr_count_reg_n_0_[1] ;
  wire \tr_count_reg_n_0_[2] ;
  wire \tr_count_reg_n_0_[3] ;
  wire trans_i_1_n_0;
  wire trans_reg_n_0;
  wire tx_done_i_1_n_0;
  wire tx_done_i_2_n_0;
  wire tx_done_i_3_n_0;
  wire tx_done_reg_0;
  wire tx_done_reg_1;
  wire txd1_out;
  wire txd_OBUF;
  wire txd_i_2_n_0;
  wire txd_i_3_n_0;
  wire wr_sbuf;

  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_102
       (.I0(\scon_reg[6]_0 ),
        .I1(bit_out_i_67_0),
        .I2(\scon_reg[7]_0 ),
        .O(bit_out_i_102_n_0));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_103
       (.I0(\scon_reg[4]_0 ),
        .I1(bit_out_i_67_0),
        .I2(\scon_reg[5]_0 ),
        .O(bit_out_i_103_n_0));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_104
       (.I0(scon[2]),
        .I1(bit_out_i_67_0),
        .I2(\scon_reg[3]_0 ),
        .O(bit_out_i_104_n_0));
  LUT3 #(
    .INIT(8'h47)) 
    bit_out_i_105
       (.I0(scon[0]),
        .I1(bit_out_i_67_0),
        .I2(scon[1]),
        .O(bit_out_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    bit_out_i_67
       (.I0(bit_out_i_102_n_0),
        .I1(bit_out_i_103_n_0),
        .I2(bit_out_reg_i_36_0),
        .I3(bit_out_i_104_n_0),
        .I4(bit_out_reg_i_36_1),
        .I5(bit_out_i_105_n_0),
        .O(bit_out_i_67_n_0));
  MUXF7 bit_out_reg_i_36
       (.I0(bit_out_i_67_n_0),
        .I1(bit_out_reg_i_16_0),
        .O(bit_out_i_68),
        .S(bit_out_reg_i_16));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[1]_i_6 
       (.I0(\dat0[1]_i_2 ),
        .I1(scon[1]),
        .I2(\dat0[7]_i_7_0 ),
        .I3(sbuf[1]),
        .I4(\dat0[7]_i_7_1 ),
        .I5(psw[0]),
        .O(\scon_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[2]_i_8 
       (.I0(\dat0_reg[2]_i_4 ),
        .I1(scon[2]),
        .I2(\dat0[7]_i_7_0 ),
        .I3(sbuf[2]),
        .I4(\dat0[7]_i_7_1 ),
        .I5(psw[1]),
        .O(\scon_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[3]_i_8 
       (.I0(\dat0_reg[3]_i_4 ),
        .I1(\scon_reg[3]_0 ),
        .I2(\dat0[7]_i_7_0 ),
        .I3(sbuf[3]),
        .I4(\dat0[7]_i_7_1 ),
        .I5(psw[2]),
        .O(\scon_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[4]_i_8 
       (.I0(\dat0_reg[4]_i_4 ),
        .I1(\scon_reg[4]_0 ),
        .I2(\dat0[7]_i_7_0 ),
        .I3(sbuf[4]),
        .I4(\dat0[7]_i_7_1 ),
        .I5(psw[3]),
        .O(\scon_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[5]_i_8 
       (.I0(\dat0_reg[5]_i_4 ),
        .I1(\scon_reg[5]_0 ),
        .I2(\dat0[7]_i_7_0 ),
        .I3(sbuf[5]),
        .I4(\dat0[7]_i_7_1 ),
        .I5(psw[4]),
        .O(\scon_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[6]_i_8 
       (.I0(\dat0_reg[6]_i_4 ),
        .I1(\scon_reg[6]_0 ),
        .I2(\dat0[7]_i_7_0 ),
        .I3(sbuf[6]),
        .I4(\dat0[7]_i_7_1 ),
        .I5(srcAc),
        .O(\scon_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dat0[7]_i_21 
       (.I0(\dat0[7]_i_7 ),
        .I1(\scon_reg[7]_0 ),
        .I2(\dat0[7]_i_7_0 ),
        .I3(sbuf[7]),
        .I4(\dat0[7]_i_7_1 ),
        .I5(cy),
        .O(\scon_reg[7]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[0]),
        .Q(\pcon_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[1]),
        .Q(\pcon_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[2]),
        .Q(\pcon_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[3]),
        .Q(\pcon_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[4]),
        .Q(\pcon_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[5]),
        .Q(\pcon_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[6]),
        .Q(\pcon_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \pcon_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\pcon_reg[0]_0 ),
        .CLR(rst_IBUF),
        .D(des1[7]),
        .Q(\pcon_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \re_count[0]_i_1 
       (.I0(receive_reg_n_0),
        .I1(\scon_reg[7]_0 ),
        .I2(\scon_reg[6]_0 ),
        .I3(re_count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT5 #(
    .INIT(32'h00A8A800)) 
    \re_count[1]_i_1 
       (.I0(receive_reg_n_0),
        .I1(\scon_reg[7]_0 ),
        .I2(\scon_reg[6]_0 ),
        .I3(re_count_reg[1]),
        .I4(re_count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \re_count[2]_i_1 
       (.I0(receive_reg_n_0),
        .I1(\scon_reg[7]_2 ),
        .I2(re_count_reg[0]),
        .I3(re_count_reg[1]),
        .I4(re_count_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h5454000054000000)) 
    \re_count[3]_i_1 
       (.I0(rx_done_reg_inv_n_0),
        .I1(\scon_reg[6]_0 ),
        .I2(\scon_reg[7]_0 ),
        .I3(receive_reg_n_0),
        .I4(shift_re_reg_n_0),
        .I5(\scon_reg[4]_0 ),
        .O(re_count));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \re_count[3]_i_2 
       (.I0(re_count_reg[1]),
        .I1(re_count_reg[0]),
        .I2(re_count_reg[2]),
        .I3(re_count_reg[3]),
        .I4(\rx_sam[0]_i_3_n_0 ),
        .O(\re_count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \re_count_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(re_count),
        .CLR(rst_IBUF),
        .D(p_0_in[0]),
        .Q(re_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \re_count_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(re_count),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(re_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \re_count_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(re_count),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(re_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \re_count_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(re_count),
        .CLR(rst_IBUF),
        .D(\re_count[3]_i_2_n_0 ),
        .Q(re_count_reg[3]));
  LUT4 #(
    .INIT(16'h0704)) 
    receive_i_1
       (.I0(receive_i_2_n_0),
        .I1(\sbuf_rxd_tmp[11]_i_3_n_0 ),
        .I2(rx_done_reg_inv_n_0),
        .I3(receive_reg_n_0),
        .O(receive_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFB00FBFFFBFF)) 
    receive_i_2
       (.I0(scon[0]),
        .I1(\scon_reg[4]_0 ),
        .I2(receive_reg_n_0),
        .I3(\scon_reg[7]_2 ),
        .I4(rxd_IBUF),
        .I5(rxd_r_reg_n_0),
        .O(receive_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    receive_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(receive_i_1_n_0),
        .Q(receive_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000010101110)) 
    rx_done_inv_i_1
       (.I0(rx_done_inv_i_2_n_0),
        .I1(\sbuf_rxd_tmp_reg_n_0_[0] ),
        .I2(rx_done_inv_i_3_n_0),
        .I3(re_count_reg[0]),
        .I4(\rx_sam[1]_i_2_n_0 ),
        .I5(rx_done_reg_inv_n_0),
        .O(rx_done_inv_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT5 #(
    .INIT(32'h5553FFFF)) 
    rx_done_inv_i_2
       (.I0(shift_re_reg_n_0),
        .I1(pres_ow__0),
        .I2(\scon_reg[6]_0 ),
        .I3(\scon_reg[7]_0 ),
        .I4(receive_reg_n_0),
        .O(rx_done_inv_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT5 #(
    .INIT(32'h2A2A2AFF)) 
    rx_done_inv_i_3
       (.I0(\scon_reg[4]_0 ),
        .I1(shift_re_reg_n_0),
        .I2(receive_reg_n_0),
        .I3(\scon_reg[7]_0 ),
        .I4(\scon_reg[6]_0 ),
        .O(rx_done_inv_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_done_reg_inv
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(rx_done_inv_i_1_n_0),
        .Q(rx_done_reg_inv_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \rx_sam[0]_i_1 
       (.I0(rxd_IBUF),
        .I1(re_count_reg[3]),
        .I2(\rx_sam[0]_i_2_n_0 ),
        .I3(\rx_sam[0]_i_3_n_0 ),
        .I4(rx_done_reg_inv_n_0),
        .I5(\rx_sam_reg_n_0_[0] ),
        .O(\rx_sam[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rx_sam[0]_i_2 
       (.I0(re_count_reg[1]),
        .I1(re_count_reg[0]),
        .I2(re_count_reg[2]),
        .O(\rx_sam[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \rx_sam[0]_i_3 
       (.I0(\scon_reg[6]_0 ),
        .I1(\scon_reg[7]_0 ),
        .I2(receive_reg_n_0),
        .I3(shift_re_reg_n_0),
        .O(\rx_sam[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \rx_sam[1]_i_1 
       (.I0(rxd_IBUF),
        .I1(rx_done_reg_inv_n_0),
        .I2(\rx_sam[1]_i_2_n_0 ),
        .I3(re_count_reg[0]),
        .I4(\rx_sam_reg_n_0_[1] ),
        .O(\rx_sam[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \rx_sam[1]_i_2 
       (.I0(shift_re_reg_n_0),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_2 ),
        .I3(re_count_reg[1]),
        .I4(re_count_reg[3]),
        .I5(re_count_reg[2]),
        .O(\rx_sam[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_sam_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\rx_sam[0]_i_1_n_0 ),
        .Q(\rx_sam_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_sam_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\rx_sam[1]_i_1_n_0 ),
        .Q(\rx_sam_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'hB8)) 
    rxd_r_i_1
       (.I0(rxd_IBUF),
        .I1(rxd_r9_out),
        .I2(rxd_r_reg_n_0),
        .O(rxd_r_i_1_n_0));
  LUT5 #(
    .INIT(32'h01000103)) 
    rxd_r_i_2
       (.I0(receive_reg_n_0),
        .I1(rx_done_reg_inv_n_0),
        .I2(\scon_reg[7]_2 ),
        .I3(shift_re_reg_n_0),
        .I4(\scon_reg[4]_0 ),
        .O(rxd_r9_out));
  FDPE #(
    .INIT(1'b1)) 
    rxd_r_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .D(rxd_r_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(rxd_r_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[0]),
        .Q(\sbuf_rxd_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[1]),
        .Q(sbuf[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[2]),
        .Q(sbuf[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[3]),
        .Q(sbuf[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[4]),
        .Q(sbuf[4]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[5]),
        .Q(sbuf[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[6]),
        .Q(sbuf[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(rx_done_reg_inv_n_0),
        .CLR(rst_IBUF),
        .D(p_1_in__0[7]),
        .Q(sbuf[7]));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[0]_i_1 
       (.I0(\sbuf_rxd_tmp_reg_n_0_[1] ),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888000080000)) 
    \sbuf_rxd_tmp[10]_i_1 
       (.I0(\sbuf_rxd_tmp_reg[11]_0 ),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555554444444)) 
    \sbuf_rxd_tmp[11]_i_1 
       (.I0(rx_done_reg_inv_n_0),
        .I1(\sbuf_rxd_tmp[11]_i_3_n_0 ),
        .I2(pres_ow__0),
        .I3(\scon_reg[7]_2 ),
        .I4(receive_reg_n_0),
        .I5(\sbuf_rxd_tmp[11]_i_5_n_0 ),
        .O(sbuf_rxd_tmp));
  LUT5 #(
    .INIT(32'hFFE08080)) 
    \sbuf_rxd_tmp[11]_i_2 
       (.I0(\rx_sam_reg_n_0_[0] ),
        .I1(\rx_sam_reg_n_0_[1] ),
        .I2(\rx_sam[0]_i_3_n_0 ),
        .I3(\sbuf_rxd_tmp[11]_i_6_n_0 ),
        .I4(rxd_IBUF),
        .O(\sbuf_rxd_tmp[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000088800000888A)) 
    \sbuf_rxd_tmp[11]_i_3 
       (.I0(\scon_reg[4]_0 ),
        .I1(shift_re_reg_n_0),
        .I2(\scon_reg[6]_0 ),
        .I3(\scon_reg[7]_0 ),
        .I4(receive_reg_n_0),
        .I5(scon[0]),
        .O(\sbuf_rxd_tmp[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \sbuf_rxd_tmp[11]_i_4 
       (.I0(\scon_reg[7]_0 ),
        .I1(\scon_reg[6]_0 ),
        .O(\scon_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \sbuf_rxd_tmp[11]_i_5 
       (.I0(re_count_reg[0]),
        .I1(re_count_reg[2]),
        .I2(re_count_reg[3]),
        .I3(re_count_reg[1]),
        .I4(\rx_sam[0]_i_3_n_0 ),
        .O(\sbuf_rxd_tmp[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \sbuf_rxd_tmp[11]_i_6 
       (.I0(receive_reg_n_0),
        .I1(\scon_reg[7]_0 ),
        .I2(\scon_reg[6]_0 ),
        .I3(pres_ow__0),
        .O(\sbuf_rxd_tmp[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[1]_i_1 
       (.I0(\sbuf_rxd_tmp_reg_n_0_[2] ),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[2]_i_1 
       (.I0(p_1_in__0[0]),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[3]_i_1 
       (.I0(p_1_in__0[1]),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[4]_i_1 
       (.I0(p_1_in__0[2]),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[5]_i_1 
       (.I0(p_1_in__0[3]),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[6]_i_1 
       (.I0(p_1_in__0[4]),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBFFFFBFFFF)) 
    \sbuf_rxd_tmp[7]_i_1 
       (.I0(p_1_in__0[5]),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFF077707770)) 
    \sbuf_rxd_tmp[8]_i_1 
       (.I0(shift_re_reg_n_0),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(p_1_in__0[6]),
        .O(\sbuf_rxd_tmp[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888000080000)) 
    \sbuf_rxd_tmp[9]_i_1 
       (.I0(p_1_in__0[7]),
        .I1(receive_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(shift_re_reg_n_0),
        .O(\sbuf_rxd_tmp[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[0]_i_1_n_0 ),
        .Q(\sbuf_rxd_tmp_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[10]_i_1_n_0 ),
        .Q(p_1_in__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[11]_i_2_n_0 ),
        .Q(\sbuf_rxd_tmp_reg[11]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[1]_i_1_n_0 ),
        .Q(\sbuf_rxd_tmp_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[2]_i_1_n_0 ),
        .Q(\sbuf_rxd_tmp_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[3]_i_1_n_0 ),
        .Q(p_1_in__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[4]_i_1_n_0 ),
        .Q(p_1_in__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[5]_i_1_n_0 ),
        .Q(p_1_in__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[6]_i_1_n_0 ),
        .Q(p_1_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[7]_i_1_n_0 ),
        .Q(p_1_in__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[8]_i_1_n_0 ),
        .Q(p_1_in__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_rxd_tmp_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(sbuf_rxd_tmp),
        .CLR(rst_IBUF),
        .D(\sbuf_rxd_tmp[9]_i_1_n_0 ),
        .Q(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'hFF101010FF000000)) 
    \sbuf_txd[0]_i_1 
       (.I0(\scon_reg[6]_0 ),
        .I1(\scon_reg[7]_0 ),
        .I2(wr_sbuf),
        .I3(\sbuf_txd_reg[0]_0 ),
        .I4(\sbuf_txd_reg_n_0_[1] ),
        .I5(des1[0]),
        .O(\sbuf_txd[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBABBBA)) 
    \sbuf_txd[10]_i_1 
       (.I0(wr_sbuf),
        .I1(\sbuf_txd[10]_i_4_n_0 ),
        .I2(\sbuf_txd[10]_i_5_n_0 ),
        .I3(\sbuf_txd[10]_i_6_n_0 ),
        .I4(\sbuf_txd_reg_n_0_[0] ),
        .O(\sbuf_txd[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sbuf_txd[10]_i_2 
       (.I0(\scon_reg[7]_0 ),
        .I1(wr_sbuf),
        .O(\sbuf_txd[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \sbuf_txd[10]_i_4 
       (.I0(\sbuf_txd[10]_i_7_n_0 ),
        .I1(\sbuf_txd[10]_i_8_n_0 ),
        .I2(\sbuf_txd_reg_n_0_[1] ),
        .I3(\sbuf_txd_reg[8]_0 [0]),
        .O(\sbuf_txd[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \sbuf_txd[10]_i_5 
       (.I0(trans_reg_n_0),
        .I1(\scon_reg[7]_0 ),
        .I2(\scon_reg[6]_0 ),
        .I3(pres_ow__0),
        .O(\sbuf_txd[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sbuf_txd[10]_i_6 
       (.I0(\sbuf_txd[10]_i_9_n_0 ),
        .I1(\tr_count_reg_n_0_[2] ),
        .I2(\tr_count_reg_n_0_[3] ),
        .I3(Q),
        .I4(\tr_count_reg_n_0_[1] ),
        .O(\sbuf_txd[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sbuf_txd[10]_i_7 
       (.I0(\sbuf_txd_reg[8]_0 [3]),
        .I1(\sbuf_txd_reg[8]_0 [4]),
        .I2(\sbuf_txd_reg[8]_0 [1]),
        .I3(\sbuf_txd_reg[8]_0 [2]),
        .O(\sbuf_txd[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sbuf_txd[10]_i_8 
       (.I0(\sbuf_txd_reg[8]_0 [5]),
        .I1(\sbuf_txd_reg_n_0_[10] ),
        .I2(\sbuf_txd_reg[8]_0 [6]),
        .I3(\sbuf_txd_reg_n_0_[9] ),
        .O(\sbuf_txd[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \sbuf_txd[10]_i_9 
       (.I0(\scon_reg[6]_0 ),
        .I1(\scon_reg[7]_0 ),
        .I2(shift_tr_reg_n_0),
        .I3(trans_reg_n_0),
        .O(\sbuf_txd[10]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT5 #(
    .INIT(32'h57FF5700)) 
    \sbuf_txd[8]_i_1 
       (.I0(\sbuf_txd_reg[8]_1 ),
        .I1(\scon_reg[6]_0 ),
        .I2(\scon_reg[7]_0 ),
        .I3(wr_sbuf),
        .I4(\sbuf_txd_reg_n_0_[9] ),
        .O(\sbuf_txd[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8BB88)) 
    \sbuf_txd[9]_i_1 
       (.I0(\sbuf_txd_reg_n_0_[10] ),
        .I1(\sbuf_txd_reg[0]_0 ),
        .I2(\scon_reg[3]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(\scon_reg[7]_0 ),
        .O(\sbuf_txd[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd[0]_i_1_n_0 ),
        .Q(\sbuf_txd_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd[10]_i_2_n_0 ),
        .Q(\sbuf_txd_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd_reg[7]_0 [0]),
        .Q(\sbuf_txd_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd_reg[7]_0 [1]),
        .Q(\sbuf_txd_reg[8]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd_reg[7]_0 [2]),
        .Q(\sbuf_txd_reg[8]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd_reg[7]_0 [3]),
        .Q(\sbuf_txd_reg[8]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd_reg[7]_0 [4]),
        .Q(\sbuf_txd_reg[8]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd_reg[7]_0 [5]),
        .Q(\sbuf_txd_reg[8]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd_reg[7]_0 [6]),
        .Q(\sbuf_txd_reg[8]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd[8]_i_1_n_0 ),
        .Q(\sbuf_txd_reg[8]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \sbuf_txd_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(\sbuf_txd[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\sbuf_txd[9]_i_1_n_0 ),
        .Q(\sbuf_txd_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B888B8B8)) 
    \scon[0]_i_2 
       (.I0(\scon_reg[0]_1 ),
        .I1(\scon_reg[0]_2 ),
        .I2(\scon[0]_i_3_n_0 ),
        .I3(\scon_reg[7]_2 ),
        .I4(\scon_reg[5]_0 ),
        .I5(\sbuf_rxd_tmp_reg[11]_0 ),
        .O(\scon_reg[5]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \scon[0]_i_3 
       (.I0(rx_done_reg_inv_n_0),
        .I1(tx_done_reg_0),
        .O(\scon[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \scon[2]_i_3 
       (.I0(tx_done_reg_0),
        .I1(rx_done_reg_inv_n_0),
        .I2(\scon_reg[6]_0 ),
        .I3(\scon_reg[7]_0 ),
        .O(tx_done_reg_1));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[0]_0 ),
        .Q(scon[0]));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[1]_1 ),
        .Q(scon[1]));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[2]_1 ),
        .Q(scon[2]));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[3]_2 ),
        .Q(\scon_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[4]_2 ),
        .Q(\scon_reg[4]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[5]_3 ),
        .Q(\scon_reg[5]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[6]_2 ),
        .Q(\scon_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \scon_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\scon_reg[7]_3 ),
        .Q(\scon_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    shift_re_i_1
       (.I0(\pcon_reg[7]_0 [7]),
        .I1(smod_clk_re_reg_n_0),
        .I2(shift_re_i_2_n_0),
        .O(shift_re12_out));
  LUT5 #(
    .INIT(32'h00A2F3A2)) 
    shift_re_i_2
       (.I0(shift_re_reg_0),
        .I1(\scon_reg[7]_0 ),
        .I2(\scon_reg[6]_0 ),
        .I3(t2con),
        .I4(brate2),
        .O(shift_re_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    shift_re_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(shift_re12_out),
        .Q(shift_re_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    shift_tr_i_1
       (.I0(smod_clk_tr_reg_n_0),
        .I1(\pcon_reg[7]_0 [7]),
        .I2(smod_clk_tr_reg_0),
        .O(shift_tr3_out));
  FDCE #(
    .INIT(1'b0)) 
    shift_tr_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(shift_tr3_out),
        .Q(shift_tr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    smod_clk_re_i_1
       (.I0(shift_re_i_2_n_0),
        .I1(\pcon_reg[7]_0 [7]),
        .I2(smod_clk_re_reg_n_0),
        .O(smod_clk_re_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    smod_clk_re_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(smod_clk_re_i_1_n_0),
        .Q(smod_clk_re_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    smod_clk_tr_i_1
       (.I0(smod_clk_tr_reg_0),
        .I1(\pcon_reg[7]_0 [7]),
        .I2(smod_clk_tr_reg_n_0),
        .O(smod_clk_tr_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    smod_clk_tr_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(smod_clk_tr_i_1_n_0),
        .Q(smod_clk_tr_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    t1_ow_buf_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tf1),
        .Q(t1_ow_buf));
  LUT3 #(
    .INIT(8'h28)) 
    \tr_count[1]_i_1 
       (.I0(\sbuf_txd_reg[0]_0 ),
        .I1(Q),
        .I2(\tr_count_reg_n_0_[1] ),
        .O(\tr_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \tr_count[2]_i_1 
       (.I0(\sbuf_txd_reg[0]_0 ),
        .I1(Q),
        .I2(\tr_count_reg_n_0_[1] ),
        .I3(\tr_count_reg_n_0_[2] ),
        .O(\tr_count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8880FFFF)) 
    \tr_count[3]_i_1 
       (.I0(trans_reg_n_0),
        .I1(shift_tr_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(\sbuf_txd_reg[0]_0 ),
        .O(\tr_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \tr_count[3]_i_2 
       (.I0(\sbuf_txd_reg[0]_0 ),
        .I1(\tr_count_reg_n_0_[2] ),
        .I2(\tr_count_reg_n_0_[1] ),
        .I3(Q),
        .I4(\tr_count_reg_n_0_[3] ),
        .O(\tr_count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tr_count_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(\tr_count[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tr_count_reg[0]_0 ),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \tr_count_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(\tr_count[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tr_count[1]_i_1_n_0 ),
        .Q(\tr_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \tr_count_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(\tr_count[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tr_count[2]_i_1_n_0 ),
        .Q(\tr_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \tr_count_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(\tr_count[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\tr_count[3]_i_2_n_0 ),
        .Q(\tr_count_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hBBFFABFFAAAAAAAA)) 
    trans_i_1
       (.I0(wr_sbuf),
        .I1(\sbuf_txd[10]_i_5_n_0 ),
        .I2(\sbuf_txd[10]_i_6_n_0 ),
        .I3(\sbuf_txd[10]_i_4_n_0 ),
        .I4(\sbuf_txd_reg_n_0_[0] ),
        .I5(trans_reg_n_0),
        .O(trans_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    trans_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(trans_i_1_n_0),
        .Q(trans_reg_n_0));
  LUT5 #(
    .INIT(32'h2F222022)) 
    tx_done_i_1
       (.I0(tx_done_i_2_n_0),
        .I1(wr_sbuf),
        .I2(tx_done_i_3_n_0),
        .I3(\sbuf_txd_reg[0]_0 ),
        .I4(tx_done_reg_0),
        .O(tx_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hF070F0700030F030)) 
    tx_done_i_2
       (.I0(\sbuf_txd_reg_n_0_[0] ),
        .I1(shift_tr_reg_n_0),
        .I2(trans_reg_n_0),
        .I3(\scon_reg[7]_2 ),
        .I4(pres_ow__0),
        .I5(\sbuf_txd[10]_i_4_n_0 ),
        .O(tx_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT5 #(
    .INIT(32'hFFFF02FF)) 
    tx_done_i_3
       (.I0(pres_ow__0),
        .I1(\scon_reg[6]_0 ),
        .I2(\scon_reg[7]_0 ),
        .I3(trans_reg_n_0),
        .I4(\sbuf_txd[10]_i_6_n_0 ),
        .O(tx_done_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_0));
  LUT6 #(
    .INIT(64'h00000000BBBFBBBB)) 
    txd_i_1
       (.I0(\sbuf_txd[10]_i_6_n_0 ),
        .I1(trans_reg_n_0),
        .I2(\scon_reg[7]_0 ),
        .I3(\scon_reg[6]_0 ),
        .I4(pres_ow__0),
        .I5(txd_i_3_n_0),
        .O(txd1_out));
  LUT6 #(
    .INIT(64'hCFEFFFEFCFFFFFFF)) 
    txd_i_2
       (.I0(\sbuf_txd[10]_i_4_n_0 ),
        .I1(\sbuf_txd_reg_n_0_[0] ),
        .I2(trans_reg_n_0),
        .I3(\scon_reg[7]_2 ),
        .I4(pres_ow__0),
        .I5(shift_tr_reg_n_0),
        .O(txd_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    txd_i_3
       (.I0(trans_reg_n_0),
        .I1(\scon_reg[7]_0 ),
        .I2(\scon_reg[6]_0 ),
        .I3(pres_ow__0),
        .I4(\sbuf_txd[10]_i_4_n_0 ),
        .I5(wr_sbuf),
        .O(txd_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    txd_reg
       (.C(clk_8051_BUFG),
        .CE(txd1_out),
        .D(txd_i_2_n_0),
        .PRE(rst_IBUF),
        .Q(txd_OBUF));
endmodule

module oc8051_xrom
   (ack_o_reg_0,
    ack_o,
    D,
    int_ack_t,
    Q,
    \data_reg[25]_0 ,
    \data_reg[25]_1 ,
    internal_addr_OBUF,
    iadr_o,
    \data[21]_i_4_0 ,
    \p_0_out_inferred__0/data[30]_i_2_0 ,
    \p_0_out_inferred__0/data[24]_i_2_0 ,
    clk_8051_BUFG,
    rst_IBUF,
    \data[3]_i_2_0 );
  output ack_o_reg_0;
  output ack_o;
  output [31:0]D;
  input int_ack_t;
  input [6:0]Q;
  input [6:0]\data_reg[25]_0 ;
  input \data_reg[25]_1 ;
  input [7:0]internal_addr_OBUF;
  input [7:0]iadr_o;
  input \data[21]_i_4_0 ;
  input \p_0_out_inferred__0/data[30]_i_2_0 ;
  input \p_0_out_inferred__0/data[24]_i_2_0 ;
  input clk_8051_BUFG;
  input rst_IBUF;
  input \data[3]_i_2_0 ;

  wire [31:0]D;
  wire [6:0]Q;
  wire ack_o;
  wire ack_o_reg_0;
  wire clk_8051_BUFG;
  wire [7:0]data0;
  wire \data[0]_i_2_n_0 ;
  wire \data[0]_i_3_n_0 ;
  wire \data[0]_i_4_n_0 ;
  wire \data[0]_i_5_n_0 ;
  wire \data[0]_i_6_n_0 ;
  wire \data[16]_i_10_n_0 ;
  wire \data[16]_i_1_n_0 ;
  wire \data[16]_i_2_n_0 ;
  wire \data[16]_i_3_n_0 ;
  wire \data[16]_i_4_n_0 ;
  wire \data[16]_i_5_n_0 ;
  wire \data[16]_i_8_n_0 ;
  wire \data[16]_i_9_n_0 ;
  wire \data[17]_i_1_n_0 ;
  wire \data[17]_i_2_n_0 ;
  wire \data[17]_i_3_n_0 ;
  wire \data[17]_i_4_n_0 ;
  wire \data[17]_i_5_n_0 ;
  wire \data[17]_i_6_n_0 ;
  wire \data[18]_i_1_n_0 ;
  wire \data[18]_i_2_n_0 ;
  wire \data[18]_i_3_n_0 ;
  wire \data[18]_i_4_n_0 ;
  wire \data[18]_i_5_n_0 ;
  wire \data[18]_i_6_n_0 ;
  wire \data[19]_i_1_n_0 ;
  wire \data[19]_i_2_n_0 ;
  wire \data[19]_i_3_n_0 ;
  wire \data[19]_i_4_n_0 ;
  wire \data[19]_i_5_n_0 ;
  wire \data[19]_i_6_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[1]_i_4_n_0 ;
  wire \data[1]_i_5_n_0 ;
  wire \data[1]_i_6_n_0 ;
  wire \data[1]_i_7_n_0 ;
  wire \data[1]_i_8_n_0 ;
  wire \data[20]_i_1_n_0 ;
  wire \data[20]_i_2_n_0 ;
  wire \data[20]_i_3_n_0 ;
  wire \data[20]_i_4_n_0 ;
  wire \data[20]_i_5_n_0 ;
  wire \data[20]_i_6_n_0 ;
  wire \data[21]_i_1_n_0 ;
  wire \data[21]_i_2_n_0 ;
  wire \data[21]_i_3_n_0 ;
  wire \data[21]_i_4_0 ;
  wire \data[21]_i_4_n_0 ;
  wire \data[21]_i_5_n_0 ;
  wire \data[21]_i_6_n_0 ;
  wire \data[21]_i_7_n_0 ;
  wire \data[21]_i_8_n_0 ;
  wire \data[21]_i_9_n_0 ;
  wire \data[22]_i_1_n_0 ;
  wire \data[22]_i_2_n_0 ;
  wire \data[22]_i_4_n_0 ;
  wire \data[22]_i_5_n_0 ;
  wire \data[22]_i_6_n_0 ;
  wire \data[22]_i_7_n_0 ;
  wire \data[22]_i_8_n_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[23]_i_2_n_0 ;
  wire \data[23]_i_3_n_0 ;
  wire \data[23]_i_4_n_0 ;
  wire \data[23]_i_5_n_0 ;
  wire \data[23]_i_6_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[2]_i_3_n_0 ;
  wire \data[2]_i_4_n_0 ;
  wire \data[2]_i_5_n_0 ;
  wire \data[2]_i_6_n_0 ;
  wire \data[3]_i_2_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[3]_i_4_n_0 ;
  wire \data[3]_i_5_n_0 ;
  wire \data[3]_i_6_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[4]_i_3_n_0 ;
  wire \data[4]_i_4_n_0 ;
  wire \data[4]_i_5_n_0 ;
  wire \data[4]_i_6_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[5]_i_3_n_0 ;
  wire \data[5]_i_4_n_0 ;
  wire \data[5]_i_5_n_0 ;
  wire \data[5]_i_6_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[6]_i_3_n_0 ;
  wire \data[6]_i_4_n_0 ;
  wire \data[6]_i_5_n_0 ;
  wire \data[6]_i_6_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[7]_i_3_n_0 ;
  wire \data[7]_i_4_n_0 ;
  wire \data[7]_i_5_n_0 ;
  wire \data[7]_i_6_n_0 ;
  wire \data_reg[1]_i_3_n_0 ;
  wire \data_reg[22]_i_3_n_0 ;
  wire [6:0]\data_reg[25]_0 ;
  wire \data_reg[25]_1 ;
  wire \data_reg[3]_i_3_n_0 ;
  wire [7:0]iadr_o;
  wire int_ack_t;
  wire [7:0]internal_addr_OBUF;
  wire [7:0]p_0_out;
  wire \p_0_out_inferred__0/data[10]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[10]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[10]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[10]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[10]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[10]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[11]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[11]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[11]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[11]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[11]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[11]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data[12]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[12]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[12]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[12]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[12]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[12]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data[13]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[13]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[13]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[13]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[13]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[14]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[14]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[14]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[14]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[14]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[14]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[15]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[15]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[15]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[15]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[15]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[15]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data[24]_i_2_0 ;
  wire \p_0_out_inferred__0/data[24]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[24]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[24]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[24]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[24]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[24]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data[24]_i_9_n_0 ;
  wire \p_0_out_inferred__0/data[25]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[25]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[25]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[25]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[25]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[26]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[26]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[26]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[26]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[27]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[27]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[27]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[27]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[27]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[28]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[28]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[28]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[28]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[28]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_10_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[29]_i_9_n_0 ;
  wire \p_0_out_inferred__0/data[30]_i_2_0 ;
  wire \p_0_out_inferred__0/data[30]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[30]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[30]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[30]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[31]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[31]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[31]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[31]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_10_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_11_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_12_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[8]_i_9_n_0 ;
  wire \p_0_out_inferred__0/data[9]_i_1_n_0 ;
  wire \p_0_out_inferred__0/data[9]_i_2_n_0 ;
  wire \p_0_out_inferred__0/data[9]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data[9]_i_6_n_0 ;
  wire \p_0_out_inferred__0/data[9]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data[9]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data_reg[11]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[11]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data_reg[12]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[12]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data_reg[13]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[14]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data_reg[15]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[15]_i_4_n_0 ;
  wire \p_0_out_inferred__0/data_reg[26]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[29]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data_reg[30]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[31]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[8]_i_5_n_0 ;
  wire \p_0_out_inferred__0/data_reg[8]_i_7_n_0 ;
  wire \p_0_out_inferred__0/data_reg[8]_i_8_n_0 ;
  wire \p_0_out_inferred__0/data_reg[9]_i_3_n_0 ;
  wire \p_0_out_inferred__0/data_reg[9]_i_4_n_0 ;
  wire rst_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    ack_o_reg
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(1'b1),
        .Q(ack_o));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[0]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[0]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[0]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[0]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[0]_i_3 
       (.I0(\data[0]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[0]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[0]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202000048022201)) 
    \data[0]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[0]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h94E3A53C7E474565)) 
    \data[0]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[0]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\data[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001062371)) 
    \data[0]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[0]),
        .I5(iadr_o[5]),
        .O(\data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \data[16]_i_1 
       (.I0(\data[16]_i_2_n_0 ),
        .I1(internal_addr_OBUF[7]),
        .I2(internal_addr_OBUF[5]),
        .I3(\data[16]_i_3_n_0 ),
        .I4(internal_addr_OBUF[4]),
        .I5(internal_addr_OBUF[6]),
        .O(\data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000C200000173)) 
    \data[16]_i_10 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[4]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \data[16]_i_2 
       (.I0(internal_addr_OBUF[2]),
        .I1(internal_addr_OBUF[0]),
        .I2(\data[16]_i_4_n_0 ),
        .I3(iadr_o[7]),
        .I4(internal_addr_OBUF[1]),
        .I5(internal_addr_OBUF[3]),
        .O(\data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044404)) 
    \data[16]_i_3 
       (.I0(internal_addr_OBUF[2]),
        .I1(\data[16]_i_5_n_0 ),
        .I2(\data_reg[25]_0 [4]),
        .I3(\data_reg[25]_1 ),
        .I4(Q[4]),
        .I5(internal_addr_OBUF[3]),
        .O(\data[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \data[16]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(\data[21]_i_4_0 ),
        .I3(iadr_o[1]),
        .I4(iadr_o[0]),
        .I5(iadr_o[6]),
        .O(\data[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[16]_i_5 
       (.I0(\data[16]_i_8_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[16]_i_9_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[16]_i_10_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA000600052020020)) 
    \data[16]_i_8 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[4]),
        .O(\data[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3AB68A5C438BDB52)) 
    \data[16]_i_9 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A80BABF8A80)) 
    \data[17]_i_1 
       (.I0(\data[21]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data[17]_i_2_n_0 ),
        .I5(internal_addr_OBUF[6]),
        .O(\data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[17]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[17]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[17]_i_3 
       (.I0(\data[17]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[17]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[17]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h26000D0C04084C8C)) 
    \data[17]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[4]),
        .O(\data[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8050183060032484)) 
    \data[17]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\data[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200010204)) 
    \data[17]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[1]),
        .I2(iadr_o[5]),
        .I3(iadr_o[2]),
        .I4(iadr_o[4]),
        .I5(iadr_o[0]),
        .O(\data[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[18]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[18]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(\data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[18]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[18]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[18]_i_3 
       (.I0(\data[18]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[18]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[18]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8C81000012800000)) 
    \data[18]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[2]),
        .I4(iadr_o[5]),
        .I5(iadr_o[1]),
        .O(\data[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h98460A140984A96B)) 
    \data[18]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000619)) 
    \data[18]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A80BABF8A80)) 
    \data[19]_i_1 
       (.I0(\data[21]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data[19]_i_2_n_0 ),
        .I5(internal_addr_OBUF[6]),
        .O(\data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[19]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[19]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[19]_i_3 
       (.I0(\data[19]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[19]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[19]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A08000A0E05040)) 
    \data[19]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[2]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[4]),
        .I5(iadr_o[0]),
        .O(\data[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80E0A94A580E763D)) 
    \data[19]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0005000000000018)) 
    \data[19]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\data[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[1]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\data[1]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data[1]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\data_reg[1]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\data[1]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000808A404)) 
    \data[1]_i_4 
       (.I0(iadr_o[1]),
        .I1(\data[1]_i_7_n_0 ),
        .I2(iadr_o[4]),
        .I3(\data[1]_i_8_n_0 ),
        .I4(iadr_o[3]),
        .I5(iadr_o[6]),
        .O(\data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5122F0F180004000)) 
    \data[1]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[0]),
        .O(\data[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4210009884803C09)) 
    \data[1]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[5]),
        .I5(iadr_o[0]),
        .O(\data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000665A5A0066)) 
    \data[1]_i_7 
       (.I0(iadr_o[0]),
        .I1(\data_reg[25]_0 [0]),
        .I2(Q[0]),
        .I3(\data_reg[25]_0 [1]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[1]),
        .O(\data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \data[1]_i_8 
       (.I0(Q[0]),
        .I1(\data_reg[25]_1 ),
        .I2(\data_reg[25]_0 [0]),
        .I3(Q[1]),
        .I4(\data_reg[25]_0 [1]),
        .I5(iadr_o[0]),
        .O(\data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A80BABF8A80)) 
    \data[20]_i_1 
       (.I0(\data[21]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data[20]_i_2_n_0 ),
        .I5(internal_addr_OBUF[6]),
        .O(\data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[20]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[20]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[20]_i_3 
       (.I0(\data[20]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[20]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[20]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA939000AB12A02CC)) 
    \data[20]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h79C367CB9E3D99D3)) 
    \data[20]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\data[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007217)) 
    \data[20]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[2]),
        .I2(iadr_o[0]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[4]),
        .O(\data[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A80BABF8A80)) 
    \data[21]_i_1 
       (.I0(\data[21]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data[21]_i_3_n_0 ),
        .I5(internal_addr_OBUF[6]),
        .O(\data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \data[21]_i_2 
       (.I0(internal_addr_OBUF[5]),
        .I1(internal_addr_OBUF[3]),
        .I2(\data[21]_i_4_n_0 ),
        .I3(internal_addr_OBUF[2]),
        .I4(internal_addr_OBUF[4]),
        .I5(internal_addr_OBUF[6]),
        .O(\data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[21]_i_3 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[21]_i_5_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \data[21]_i_4 
       (.I0(internal_addr_OBUF[0]),
        .I1(\data[21]_i_6_n_0 ),
        .I2(\data_reg[25]_0 [3]),
        .I3(\data_reg[25]_1 ),
        .I4(Q[3]),
        .I5(internal_addr_OBUF[1]),
        .O(\data[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[21]_i_5 
       (.I0(\data[21]_i_7_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[21]_i_8_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[21]_i_9_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \data[21]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(\data[21]_i_4_0 ),
        .I3(iadr_o[1]),
        .I4(iadr_o[0]),
        .I5(iadr_o[6]),
        .O(\data[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2070707CA0AA02A4)) 
    \data[21]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[2]),
        .I5(iadr_o[4]),
        .O(\data[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9946123C2994CF53)) 
    \data[21]_i_8 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001225)) 
    \data[21]_i_9 
       (.I0(iadr_o[3]),
        .I1(iadr_o[2]),
        .I2(iadr_o[0]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[4]),
        .O(\data[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[22]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\data[22]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(\data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data[22]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\data_reg[22]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\data[22]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\data[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000030E2)) 
    \data[22]_i_4 
       (.I0(\data[22]_i_7_n_0 ),
        .I1(iadr_o[0]),
        .I2(\data[22]_i_8_n_0 ),
        .I3(iadr_o[3]),
        .I4(iadr_o[6]),
        .O(\data[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAB00EE00AE004688)) 
    \data[22]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[4]),
        .O(\data[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1906463C2190CBD3)) 
    \data[22]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[22]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00001015)) 
    \data[22]_i_7 
       (.I0(iadr_o[1]),
        .I1(Q[1]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [1]),
        .I4(iadr_o[4]),
        .O(\data[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000022202)) 
    \data[22]_i_8 
       (.I0(iadr_o[1]),
        .I1(iadr_o[5]),
        .I2(\data_reg[25]_0 [0]),
        .I3(\data_reg[25]_1 ),
        .I4(Q[0]),
        .I5(iadr_o[4]),
        .O(\data[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[23]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[23]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(\data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[23]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[23]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[23]_i_3 
       (.I0(\data[23]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[23]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[23]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h091F000245460A08)) 
    \data[23]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h41A8741AE96B76B8)) 
    \data[23]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\data[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000510184)) 
    \data[23]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[4]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\data[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[2]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[2]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[2]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[2]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[2]_i_3 
       (.I0(\data[2]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[2]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[2]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0600800081006000)) 
    \data[2]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[0]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\data[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h521A2149946508B4)) 
    \data[2]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[0]),
        .I5(iadr_o[2]),
        .O(\data[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002110522)) 
    \data[2]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[2]),
        .I3(iadr_o[1]),
        .I4(iadr_o[0]),
        .I5(iadr_o[5]),
        .O(\data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[3]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\data[3]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \data[3]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\data_reg[3]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\data[3]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000C40840)) 
    \data[3]_i_4 
       (.I0(iadr_o[1]),
        .I1(\data[3]_i_2_0 ),
        .I2(iadr_o[0]),
        .I3(iadr_o[4]),
        .I4(iadr_o[3]),
        .I5(iadr_o[6]),
        .O(\data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80D9000084820100)) 
    \data[3]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[0]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC665842E313421D3)) 
    \data[3]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[0]),
        .I5(iadr_o[2]),
        .O(\data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[4]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[4]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[4]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[4]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[4]_i_3 
       (.I0(\data[4]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[4]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[4]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h28F5080A188ACD00)) 
    \data[4]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[1]),
        .I2(iadr_o[4]),
        .I3(iadr_o[0]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB56BAD5A3ED3C977)) 
    \data[4]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[0]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001070E09)) 
    \data[4]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[2]),
        .I2(iadr_o[5]),
        .I3(iadr_o[0]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[5]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[5]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[5]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[5]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[5]_i_3 
       (.I0(\data[5]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[5]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[5]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h585808C5F8D80A00)) 
    \data[5]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[1]),
        .I2(iadr_o[4]),
        .I3(iadr_o[2]),
        .I4(iadr_o[5]),
        .I5(iadr_o[0]),
        .O(\data[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5229944A3FC3407D)) 
    \data[5]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[0]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004030308)) 
    \data[5]_i_6 
       (.I0(iadr_o[2]),
        .I1(iadr_o[3]),
        .I2(iadr_o[5]),
        .I3(iadr_o[0]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[6]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[6]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[6]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[6]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[6]_i_3 
       (.I0(\data[6]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[6]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[6]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBDD40220E8A40000)) 
    \data[6]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[5]),
        .I5(iadr_o[0]),
        .O(\data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1029844A3EC3CB75)) 
    \data[6]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[0]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000110060)) 
    \data[6]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[2]),
        .I3(iadr_o[5]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \data[7]_i_1 
       (.I0(Q[5]),
        .I1(\data_reg[25]_0 [5]),
        .I2(\data[7]_i_2_n_0 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data[7]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\data[7]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \data[7]_i_3 
       (.I0(\data[7]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\data[7]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\data[7]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3751022252422000)) 
    \data[7]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[0]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA58C65BE2963ACC2)) 
    \data[7]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[0]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001010402020002)) 
    \data[7]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[2]),
        .I4(iadr_o[0]),
        .I5(iadr_o[1]),
        .O(\data[7]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[0]),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[10]_i_1_n_0 ),
        .Q(D[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[11]_i_1_n_0 ),
        .Q(D[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[12]_i_1_n_0 ),
        .Q(D[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[13]_i_1_n_0 ),
        .Q(D[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[14]_i_1_n_0 ),
        .Q(D[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[15]_i_1_n_0 ),
        .Q(D[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[16]_i_1_n_0 ),
        .Q(D[16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[17]_i_1_n_0 ),
        .Q(D[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[18]_i_1_n_0 ),
        .Q(D[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[19]_i_1_n_0 ),
        .Q(D[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[1]),
        .Q(D[1]));
  MUXF7 \data_reg[1]_i_3 
       (.I0(\data[1]_i_5_n_0 ),
        .I1(\data[1]_i_6_n_0 ),
        .O(\data_reg[1]_i_3_n_0 ),
        .S(iadr_o[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[20] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[20]_i_1_n_0 ),
        .Q(D[20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[21] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[21]_i_1_n_0 ),
        .Q(D[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[22] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[22]_i_1_n_0 ),
        .Q(D[22]));
  MUXF7 \data_reg[22]_i_3 
       (.I0(\data[22]_i_5_n_0 ),
        .I1(\data[22]_i_6_n_0 ),
        .O(\data_reg[22]_i_3_n_0 ),
        .S(iadr_o[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[23] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\data[23]_i_1_n_0 ),
        .Q(D[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[24] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[0]),
        .Q(D[24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[25] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[1]),
        .Q(D[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[26] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[2]),
        .Q(D[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[27] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[3]),
        .Q(D[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[4]),
        .Q(D[28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[5]),
        .Q(D[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[2]),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[6]),
        .Q(D[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(data0[7]),
        .Q(D[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[3]),
        .Q(D[3]));
  MUXF7 \data_reg[3]_i_3 
       (.I0(\data[3]_i_5_n_0 ),
        .I1(\data[3]_i_6_n_0 ),
        .O(\data_reg[3]_i_3_n_0 ),
        .S(iadr_o[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[4]),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[5]),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[6]),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_0_out[7]),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[8]_i_1_n_0 ),
        .Q(D[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(clk_8051_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\p_0_out_inferred__0/data[9]_i_1_n_0 ),
        .Q(D[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \op[5]_i_6 
       (.I0(ack_o),
        .I1(int_ack_t),
        .O(ack_o_reg_0));
  LUT6 #(
    .INIT(64'h0000000404040004)) 
    \p_0_out_inferred__0/data[10]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(\p_0_out_inferred__0/data[10]_i_2_n_0 ),
        .I2(internal_addr_OBUF[5]),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(\p_0_out_inferred__0/data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[10]_i_2 
       (.I0(internal_addr_OBUF[3]),
        .I1(internal_addr_OBUF[1]),
        .I2(\p_0_out_inferred__0/data[10]_i_3_n_0 ),
        .I3(internal_addr_OBUF[0]),
        .I4(internal_addr_OBUF[2]),
        .I5(internal_addr_OBUF[4]),
        .O(\p_0_out_inferred__0/data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \p_0_out_inferred__0/data[10]_i_3 
       (.I0(\p_0_out_inferred__0/data[10]_i_4_n_0 ),
        .I1(\p_0_out_inferred__0/data[13]_i_4_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data[10]_i_5_n_0 ),
        .I4(iadr_o[0]),
        .I5(\p_0_out_inferred__0/data[10]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000120005)) 
    \p_0_out_inferred__0/data[10]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[2]),
        .I3(iadr_o[6]),
        .I4(iadr_o[1]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h42240600109B1000)) 
    \p_0_out_inferred__0/data[10]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h512A008096458060)) 
    \p_0_out_inferred__0/data[10]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[11]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[11]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(\p_0_out_inferred__0/data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[11]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[11]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data_reg[11]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC665800033148041)) 
    \p_0_out_inferred__0/data[11]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h098290D04E2D9080)) 
    \p_0_out_inferred__0/data[11]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020003)) 
    \p_0_out_inferred__0/data[11]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[5]),
        .I2(iadr_o[2]),
        .I3(iadr_o[6]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000011000)) 
    \p_0_out_inferred__0/data[11]_i_8 
       (.I0(iadr_o[5]),
        .I1(iadr_o[6]),
        .I2(iadr_o[2]),
        .I3(iadr_o[1]),
        .I4(iadr_o[4]),
        .I5(iadr_o[3]),
        .O(\p_0_out_inferred__0/data[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[12]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[12]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(\p_0_out_inferred__0/data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[12]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[12]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data_reg[12]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB3225E80AC2FD941)) 
    \p_0_out_inferred__0/data[12]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[6]),
        .I4(iadr_o[1]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDB6533D79DDA0220)) 
    \p_0_out_inferred__0/data[12]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[2]),
        .I3(iadr_o[1]),
        .I4(iadr_o[5]),
        .I5(iadr_o[6]),
        .O(\p_0_out_inferred__0/data[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000312)) 
    \p_0_out_inferred__0/data[12]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[5]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[6]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040007)) 
    \p_0_out_inferred__0/data[12]_i_8 
       (.I0(iadr_o[2]),
        .I1(iadr_o[3]),
        .I2(iadr_o[5]),
        .I3(iadr_o[6]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[13]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[13]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(\p_0_out_inferred__0/data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[13]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[13]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data[13]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040003)) 
    \p_0_out_inferred__0/data[13]_i_4 
       (.I0(iadr_o[2]),
        .I1(iadr_o[3]),
        .I2(iadr_o[5]),
        .I3(iadr_o[6]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h523F6420944064D1)) 
    \p_0_out_inferred__0/data[13]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h526CAE029437CE20)) 
    \p_0_out_inferred__0/data[13]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000404040004)) 
    \p_0_out_inferred__0/data[14]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(\p_0_out_inferred__0/data[14]_i_2_n_0 ),
        .I2(internal_addr_OBUF[5]),
        .I3(\data_reg[25]_0 [6]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[6]),
        .O(\p_0_out_inferred__0/data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[14]_i_2 
       (.I0(internal_addr_OBUF[3]),
        .I1(internal_addr_OBUF[1]),
        .I2(\p_0_out_inferred__0/data[14]_i_3_n_0 ),
        .I3(internal_addr_OBUF[0]),
        .I4(internal_addr_OBUF[2]),
        .I5(internal_addr_OBUF[4]),
        .O(\p_0_out_inferred__0/data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \p_0_out_inferred__0/data[14]_i_3 
       (.I0(\p_0_out_inferred__0/data[13]_i_4_n_0 ),
        .I1(iadr_o[0]),
        .I2(\p_0_out_inferred__0/data[14]_i_4_n_0 ),
        .I3(iadr_o[3]),
        .I4(iadr_o[7]),
        .I5(\p_0_out_inferred__0/data_reg[14]_i_5_n_0 ),
        .O(\p_0_out_inferred__0/data[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \p_0_out_inferred__0/data[14]_i_4 
       (.I0(iadr_o[5]),
        .I1(iadr_o[6]),
        .I2(iadr_o[2]),
        .I3(iadr_o[1]),
        .I4(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h130EB0D28C4BD240)) 
    \p_0_out_inferred__0/data[14]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h522CAE0094378A00)) 
    \p_0_out_inferred__0/data[14]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[15]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[15]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(\p_0_out_inferred__0/data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[15]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[15]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data_reg[15]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA6302A5255529C40)) 
    \p_0_out_inferred__0/data[15]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[6]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h189BC6EC17021220)) 
    \p_0_out_inferred__0/data[15]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[6]),
        .O(\p_0_out_inferred__0/data[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010022)) 
    \p_0_out_inferred__0/data[15]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[5]),
        .I2(iadr_o[2]),
        .I3(iadr_o[6]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040104)) 
    \p_0_out_inferred__0/data[15]_i_8 
       (.I0(iadr_o[5]),
        .I1(iadr_o[2]),
        .I2(iadr_o[6]),
        .I3(iadr_o[4]),
        .I4(iadr_o[1]),
        .I5(iadr_o[3]),
        .O(\p_0_out_inferred__0/data[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \p_0_out_inferred__0/data[24]_i_1 
       (.I0(\p_0_out_inferred__0/data[24]_i_2_n_0 ),
        .I1(internal_addr_OBUF[7]),
        .I2(internal_addr_OBUF[5]),
        .I3(\p_0_out_inferred__0/data[24]_i_3_n_0 ),
        .I4(internal_addr_OBUF[4]),
        .I5(internal_addr_OBUF[6]),
        .O(data0[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_0_out_inferred__0/data[24]_i_2 
       (.I0(internal_addr_OBUF[2]),
        .I1(internal_addr_OBUF[0]),
        .I2(\p_0_out_inferred__0/data[24]_i_4_n_0 ),
        .I3(iadr_o[7]),
        .I4(internal_addr_OBUF[1]),
        .I5(internal_addr_OBUF[3]),
        .O(\p_0_out_inferred__0/data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044404)) 
    \p_0_out_inferred__0/data[24]_i_3 
       (.I0(internal_addr_OBUF[2]),
        .I1(\p_0_out_inferred__0/data[24]_i_5_n_0 ),
        .I2(\data_reg[25]_0 [4]),
        .I3(\data_reg[25]_1 ),
        .I4(Q[4]),
        .I5(internal_addr_OBUF[3]),
        .O(\p_0_out_inferred__0/data[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \p_0_out_inferred__0/data[24]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[1]),
        .I2(\p_0_out_inferred__0/data[24]_i_2_0 ),
        .I3(iadr_o[2]),
        .I4(iadr_o[0]),
        .I5(iadr_o[6]),
        .O(\p_0_out_inferred__0/data[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \p_0_out_inferred__0/data[24]_i_5 
       (.I0(\p_0_out_inferred__0/data[24]_i_7_n_0 ),
        .I1(iadr_o[6]),
        .I2(\p_0_out_inferred__0/data[24]_i_8_n_0 ),
        .I3(iadr_o[7]),
        .I4(\p_0_out_inferred__0/data[24]_i_9_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\p_0_out_inferred__0/data[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2100180884008008)) 
    \p_0_out_inferred__0/data[24]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[4]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8ED2698EA175EB2C)) 
    \p_0_out_inferred__0/data[24]_i_8 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[4]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000ED00000030)) 
    \p_0_out_inferred__0/data[24]_i_9 
       (.I0(iadr_o[3]),
        .I1(iadr_o[2]),
        .I2(iadr_o[0]),
        .I3(iadr_o[4]),
        .I4(iadr_o[5]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A80BABF8A80)) 
    \p_0_out_inferred__0/data[25]_i_1 
       (.I0(\p_0_out_inferred__0/data[29]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\p_0_out_inferred__0/data[25]_i_2_n_0 ),
        .I5(internal_addr_OBUF[6]),
        .O(data0[1]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[25]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\p_0_out_inferred__0/data[25]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\p_0_out_inferred__0/data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \p_0_out_inferred__0/data[25]_i_3 
       (.I0(\p_0_out_inferred__0/data[25]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\p_0_out_inferred__0/data[25]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\p_0_out_inferred__0/data[25]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\p_0_out_inferred__0/data[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h208080000073127B)) 
    \p_0_out_inferred__0/data[25]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[2]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[4]),
        .I5(iadr_o[0]),
        .O(\p_0_out_inferred__0/data[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6114840E000021C1)) 
    \p_0_out_inferred__0/data[25]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0008000900000002)) 
    \p_0_out_inferred__0/data[25]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[1]),
        .I2(iadr_o[4]),
        .I3(iadr_o[5]),
        .I4(iadr_o[2]),
        .I5(iadr_o[0]),
        .O(\p_0_out_inferred__0/data[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[26]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[26]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(data0[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[26]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[26]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data[26]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000084044008)) 
    \p_0_out_inferred__0/data[26]_i_4 
       (.I0(iadr_o[1]),
        .I1(\p_0_out_inferred__0/data[30]_i_2_0 ),
        .I2(iadr_o[2]),
        .I3(iadr_o[0]),
        .I4(iadr_o[3]),
        .I5(iadr_o[6]),
        .O(\p_0_out_inferred__0/data[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA600380002000400)) 
    \p_0_out_inferred__0/data[26]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[2]),
        .I3(iadr_o[5]),
        .I4(iadr_o[4]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA42606A250192956)) 
    \p_0_out_inferred__0/data[26]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[5]),
        .I3(iadr_o[4]),
        .I4(iadr_o[2]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A80BABF8A80)) 
    \p_0_out_inferred__0/data[27]_i_1 
       (.I0(\p_0_out_inferred__0/data[29]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\p_0_out_inferred__0/data[27]_i_2_n_0 ),
        .I5(internal_addr_OBUF[6]),
        .O(data0[3]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[27]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\p_0_out_inferred__0/data[27]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\p_0_out_inferred__0/data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \p_0_out_inferred__0/data[27]_i_3 
       (.I0(\p_0_out_inferred__0/data[27]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\p_0_out_inferred__0/data[27]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\p_0_out_inferred__0/data[27]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\p_0_out_inferred__0/data[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC090D09020800080)) 
    \p_0_out_inferred__0/data[27]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[2]),
        .I5(iadr_o[0]),
        .O(\p_0_out_inferred__0/data[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2639914C4A06293B)) 
    \p_0_out_inferred__0/data[27]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[2]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000009000000042)) 
    \p_0_out_inferred__0/data[27]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[2]),
        .I3(iadr_o[5]),
        .I4(iadr_o[4]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A80BABF8A80)) 
    \p_0_out_inferred__0/data[28]_i_1 
       (.I0(\p_0_out_inferred__0/data[29]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(\data_reg[25]_1 ),
        .I3(\data_reg[25]_0 [6]),
        .I4(\p_0_out_inferred__0/data[28]_i_2_n_0 ),
        .I5(internal_addr_OBUF[6]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[28]_i_2 
       (.I0(internal_addr_OBUF[4]),
        .I1(internal_addr_OBUF[2]),
        .I2(\p_0_out_inferred__0/data[28]_i_3_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .I5(internal_addr_OBUF[5]),
        .O(\p_0_out_inferred__0/data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \p_0_out_inferred__0/data[28]_i_3 
       (.I0(\p_0_out_inferred__0/data[28]_i_4_n_0 ),
        .I1(iadr_o[6]),
        .I2(\p_0_out_inferred__0/data[28]_i_5_n_0 ),
        .I3(iadr_o[7]),
        .I4(\p_0_out_inferred__0/data[28]_i_6_n_0 ),
        .I5(internal_addr_OBUF[0]),
        .O(\p_0_out_inferred__0/data[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDAD8002092D2022F)) 
    \p_0_out_inferred__0/data[28]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[0]),
        .I3(iadr_o[2]),
        .I4(iadr_o[5]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9E5AA79EB0F3CF6C)) 
    \p_0_out_inferred__0/data[28]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[4]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000005000000079)) 
    \p_0_out_inferred__0/data[28]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[4]),
        .I4(iadr_o[5]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[28]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h88888B88)) 
    \p_0_out_inferred__0/data[29]_i_1 
       (.I0(\p_0_out_inferred__0/data[29]_i_2_n_0 ),
        .I1(internal_addr_OBUF[7]),
        .I2(internal_addr_OBUF[5]),
        .I3(\p_0_out_inferred__0/data[29]_i_3_n_0 ),
        .I4(internal_addr_OBUF[6]),
        .O(data0[5]));
  LUT6 #(
    .INIT(64'hA50AA5A504F1CB3C)) 
    \p_0_out_inferred__0/data[29]_i_10 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[4]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[29]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \p_0_out_inferred__0/data[29]_i_2 
       (.I0(internal_addr_OBUF[5]),
        .I1(internal_addr_OBUF[3]),
        .I2(\p_0_out_inferred__0/data[29]_i_4_n_0 ),
        .I3(internal_addr_OBUF[4]),
        .I4(internal_addr_OBUF[6]),
        .O(\p_0_out_inferred__0/data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[29]_i_3 
       (.I0(internal_addr_OBUF[3]),
        .I1(internal_addr_OBUF[1]),
        .I2(\p_0_out_inferred__0/data[29]_i_5_n_0 ),
        .I3(internal_addr_OBUF[0]),
        .I4(internal_addr_OBUF[2]),
        .I5(internal_addr_OBUF[4]),
        .O(\p_0_out_inferred__0/data[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_0_out_inferred__0/data[29]_i_4 
       (.I0(internal_addr_OBUF[1]),
        .I1(iadr_o[7]),
        .I2(\p_0_out_inferred__0/data[29]_i_6_n_0 ),
        .I3(iadr_o[6]),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0048FFFF00480000)) 
    \p_0_out_inferred__0/data[29]_i_5 
       (.I0(iadr_o[1]),
        .I1(\p_0_out_inferred__0/data[29]_i_7_n_0 ),
        .I2(iadr_o[3]),
        .I3(iadr_o[6]),
        .I4(iadr_o[7]),
        .I5(\p_0_out_inferred__0/data_reg[29]_i_8_n_0 ),
        .O(\p_0_out_inferred__0/data[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \p_0_out_inferred__0/data[29]_i_6 
       (.I0(iadr_o[0]),
        .I1(iadr_o[2]),
        .I2(iadr_o[5]),
        .I3(iadr_o[4]),
        .I4(iadr_o[1]),
        .I5(iadr_o[3]),
        .O(\p_0_out_inferred__0/data[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000511110005)) 
    \p_0_out_inferred__0/data[29]_i_7 
       (.I0(iadr_o[4]),
        .I1(Q[1]),
        .I2(\data_reg[25]_0 [1]),
        .I3(\data_reg[25]_0 [0]),
        .I4(\data_reg[25]_1 ),
        .I5(Q[0]),
        .O(\p_0_out_inferred__0/data[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hC9DDEA8200030289)) 
    \p_0_out_inferred__0/data[29]_i_9 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[4]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[30]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[30]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(data0[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[30]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[30]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data[30]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004080008)) 
    \p_0_out_inferred__0/data[30]_i_4 
       (.I0(iadr_o[1]),
        .I1(\p_0_out_inferred__0/data[30]_i_2_0 ),
        .I2(iadr_o[2]),
        .I3(iadr_o[3]),
        .I4(iadr_o[0]),
        .I5(iadr_o[6]),
        .O(\p_0_out_inferred__0/data[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEA6BFB9100000022)) 
    \p_0_out_inferred__0/data[30]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[4]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h840AA58410F3DB2C)) 
    \p_0_out_inferred__0/data[30]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[4]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[31]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[31]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(data0[7]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[31]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[31]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data[31]_i_5_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080404884)) 
    \p_0_out_inferred__0/data[31]_i_5 
       (.I0(iadr_o[2]),
        .I1(\p_0_out_inferred__0/data[30]_i_2_0 ),
        .I2(iadr_o[1]),
        .I3(iadr_o[0]),
        .I4(iadr_o[3]),
        .I5(iadr_o[6]),
        .O(\p_0_out_inferred__0/data[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h006751D5000000AA)) 
    \p_0_out_inferred__0/data[31]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[4]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1279C6A69C9E12DA)) 
    \p_0_out_inferred__0/data[31]_i_8 
       (.I0(iadr_o[3]),
        .I1(iadr_o[0]),
        .I2(iadr_o[1]),
        .I3(iadr_o[5]),
        .I4(iadr_o[4]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \p_0_out_inferred__0/data[8]_i_1 
       (.I0(\p_0_out_inferred__0/data[8]_i_2_n_0 ),
        .I1(internal_addr_OBUF[7]),
        .I2(internal_addr_OBUF[5]),
        .I3(\p_0_out_inferred__0/data[8]_i_3_n_0 ),
        .I4(internal_addr_OBUF[4]),
        .I5(internal_addr_OBUF[6]),
        .O(\p_0_out_inferred__0/data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2379082E4362200)) 
    \p_0_out_inferred__0/data[8]_i_10 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[2]),
        .I4(iadr_o[6]),
        .I5(iadr_o[1]),
        .O(\p_0_out_inferred__0/data[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000106)) 
    \p_0_out_inferred__0/data[8]_i_11 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[6]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000021F)) 
    \p_0_out_inferred__0/data[8]_i_12 
       (.I0(iadr_o[3]),
        .I1(iadr_o[1]),
        .I2(iadr_o[4]),
        .I3(iadr_o[2]),
        .I4(iadr_o[6]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_0_out_inferred__0/data[8]_i_2 
       (.I0(internal_addr_OBUF[2]),
        .I1(internal_addr_OBUF[0]),
        .I2(\p_0_out_inferred__0/data[8]_i_4_n_0 ),
        .I3(iadr_o[7]),
        .I4(internal_addr_OBUF[1]),
        .I5(internal_addr_OBUF[3]),
        .O(\p_0_out_inferred__0/data[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \p_0_out_inferred__0/data[8]_i_3 
       (.I0(internal_addr_OBUF[2]),
        .I1(internal_addr_OBUF[0]),
        .I2(\p_0_out_inferred__0/data_reg[8]_i_5_n_0 ),
        .I3(internal_addr_OBUF[1]),
        .I4(internal_addr_OBUF[3]),
        .O(\p_0_out_inferred__0/data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \p_0_out_inferred__0/data[8]_i_4 
       (.I0(iadr_o[3]),
        .I1(iadr_o[5]),
        .I2(\p_0_out_inferred__0/data[8]_i_6_n_0 ),
        .I3(iadr_o[1]),
        .I4(iadr_o[4]),
        .I5(iadr_o[0]),
        .O(\p_0_out_inferred__0/data[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \p_0_out_inferred__0/data[8]_i_6 
       (.I0(\data_reg[25]_0 [0]),
        .I1(Q[0]),
        .I2(\data_reg[25]_0 [2]),
        .I3(\data_reg[25]_1 ),
        .I4(Q[2]),
        .O(\p_0_out_inferred__0/data[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9772004098550008)) 
    \p_0_out_inferred__0/data[8]_i_9 
       (.I0(iadr_o[3]),
        .I1(iadr_o[5]),
        .I2(iadr_o[4]),
        .I3(iadr_o[1]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \p_0_out_inferred__0/data[9]_i_1 
       (.I0(internal_addr_OBUF[6]),
        .I1(internal_addr_OBUF[4]),
        .I2(\p_0_out_inferred__0/data[9]_i_2_n_0 ),
        .I3(internal_addr_OBUF[3]),
        .I4(internal_addr_OBUF[5]),
        .I5(internal_addr_OBUF[7]),
        .O(\p_0_out_inferred__0/data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \p_0_out_inferred__0/data[9]_i_2 
       (.I0(internal_addr_OBUF[1]),
        .I1(\p_0_out_inferred__0/data_reg[9]_i_3_n_0 ),
        .I2(iadr_o[7]),
        .I3(\p_0_out_inferred__0/data_reg[9]_i_4_n_0 ),
        .I4(internal_addr_OBUF[0]),
        .I5(internal_addr_OBUF[2]),
        .O(\p_0_out_inferred__0/data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h402052121908FF01)) 
    \p_0_out_inferred__0/data[9]_i_5 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[5]),
        .I3(iadr_o[1]),
        .I4(iadr_o[6]),
        .I5(iadr_o[2]),
        .O(\p_0_out_inferred__0/data[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0848880443C00000)) 
    \p_0_out_inferred__0/data[9]_i_6 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[2]),
        .I4(iadr_o[6]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020001)) 
    \p_0_out_inferred__0/data[9]_i_7 
       (.I0(iadr_o[3]),
        .I1(iadr_o[5]),
        .I2(iadr_o[2]),
        .I3(iadr_o[6]),
        .I4(iadr_o[1]),
        .I5(iadr_o[4]),
        .O(\p_0_out_inferred__0/data[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020014)) 
    \p_0_out_inferred__0/data[9]_i_8 
       (.I0(iadr_o[3]),
        .I1(iadr_o[4]),
        .I2(iadr_o[1]),
        .I3(iadr_o[6]),
        .I4(iadr_o[2]),
        .I5(iadr_o[5]),
        .O(\p_0_out_inferred__0/data[9]_i_8_n_0 ));
  MUXF7 \p_0_out_inferred__0/data_reg[11]_i_3 
       (.I0(\p_0_out_inferred__0/data[11]_i_5_n_0 ),
        .I1(\p_0_out_inferred__0/data[11]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[11]_i_3_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[11]_i_4 
       (.I0(\p_0_out_inferred__0/data[11]_i_7_n_0 ),
        .I1(\p_0_out_inferred__0/data[11]_i_8_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[11]_i_4_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[12]_i_3 
       (.I0(\p_0_out_inferred__0/data[12]_i_5_n_0 ),
        .I1(\p_0_out_inferred__0/data[12]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[12]_i_3_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[12]_i_4 
       (.I0(\p_0_out_inferred__0/data[12]_i_7_n_0 ),
        .I1(\p_0_out_inferred__0/data[12]_i_8_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[12]_i_4_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[13]_i_3 
       (.I0(\p_0_out_inferred__0/data[13]_i_5_n_0 ),
        .I1(\p_0_out_inferred__0/data[13]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[13]_i_3_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[14]_i_5 
       (.I0(\p_0_out_inferred__0/data[14]_i_6_n_0 ),
        .I1(\p_0_out_inferred__0/data[14]_i_7_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[14]_i_5_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[15]_i_3 
       (.I0(\p_0_out_inferred__0/data[15]_i_5_n_0 ),
        .I1(\p_0_out_inferred__0/data[15]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[15]_i_3_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[15]_i_4 
       (.I0(\p_0_out_inferred__0/data[15]_i_7_n_0 ),
        .I1(\p_0_out_inferred__0/data[15]_i_8_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[15]_i_4_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[26]_i_3 
       (.I0(\p_0_out_inferred__0/data[26]_i_5_n_0 ),
        .I1(\p_0_out_inferred__0/data[26]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[26]_i_3_n_0 ),
        .S(iadr_o[6]));
  MUXF7 \p_0_out_inferred__0/data_reg[29]_i_8 
       (.I0(\p_0_out_inferred__0/data[29]_i_9_n_0 ),
        .I1(\p_0_out_inferred__0/data[29]_i_10_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[29]_i_8_n_0 ),
        .S(iadr_o[6]));
  MUXF7 \p_0_out_inferred__0/data_reg[30]_i_3 
       (.I0(\p_0_out_inferred__0/data[30]_i_5_n_0 ),
        .I1(\p_0_out_inferred__0/data[30]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[30]_i_3_n_0 ),
        .S(iadr_o[6]));
  MUXF7 \p_0_out_inferred__0/data_reg[31]_i_3 
       (.I0(\p_0_out_inferred__0/data[31]_i_7_n_0 ),
        .I1(\p_0_out_inferred__0/data[31]_i_8_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[31]_i_3_n_0 ),
        .S(iadr_o[6]));
  MUXF8 \p_0_out_inferred__0/data_reg[8]_i_5 
       (.I0(\p_0_out_inferred__0/data_reg[8]_i_7_n_0 ),
        .I1(\p_0_out_inferred__0/data_reg[8]_i_8_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[8]_i_5_n_0 ),
        .S(iadr_o[7]));
  MUXF7 \p_0_out_inferred__0/data_reg[8]_i_7 
       (.I0(\p_0_out_inferred__0/data[8]_i_9_n_0 ),
        .I1(\p_0_out_inferred__0/data[8]_i_10_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[8]_i_7_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[8]_i_8 
       (.I0(\p_0_out_inferred__0/data[8]_i_11_n_0 ),
        .I1(\p_0_out_inferred__0/data[8]_i_12_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[8]_i_8_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[9]_i_3 
       (.I0(\p_0_out_inferred__0/data[9]_i_5_n_0 ),
        .I1(\p_0_out_inferred__0/data[9]_i_6_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[9]_i_3_n_0 ),
        .S(iadr_o[0]));
  MUXF7 \p_0_out_inferred__0/data_reg[9]_i_4 
       (.I0(\p_0_out_inferred__0/data[9]_i_7_n_0 ),
        .I1(\p_0_out_inferred__0/data[9]_i_8_n_0 ),
        .O(\p_0_out_inferred__0/data_reg[9]_i_4_n_0 ),
        .S(iadr_o[0]));
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
