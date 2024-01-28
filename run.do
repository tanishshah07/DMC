# Compilation.....
vlog tb.v
//vsim -novopt dmc_tb -suppress 12110
add wave -position insertpoint sim:/dmc_tb/dut/*
run -all
