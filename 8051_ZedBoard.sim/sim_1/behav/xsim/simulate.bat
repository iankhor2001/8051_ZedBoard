@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Mon Oct 24 00:41:13 -0700 2022
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim oc8051_tb_behav -key {Behavioral:sim_1:Functional:oc8051_tb} -tclbatch oc8051_tb.tcl -view C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/oc8051_fpga_top_tb_behav_GENERAL.wcfg -log simulate.log"
call xsim  oc8051_tb_behav -key {Behavioral:sim_1:Functional:oc8051_tb} -tclbatch oc8051_tb.tcl -view C:/Users/iankh/Documents/NTHU/8051/Project/8051_ZedBoard/oc8051_fpga_top_tb_behav_GENERAL.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
