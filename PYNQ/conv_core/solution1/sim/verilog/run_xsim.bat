
call D:/Xilinx/Vivado/2018.1/bin/xelab xil_defaultlib.apatb_Conv_top glbl -prj Conv.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver --initfile "D:/Xilinx/Vivado/2018.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s Conv -debug wave
call D:/Xilinx/Vivado/2018.1/bin/xsim --noieeewarnings Conv -tclbatch Conv.tcl
