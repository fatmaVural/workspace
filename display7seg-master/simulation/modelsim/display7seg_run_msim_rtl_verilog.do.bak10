transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/fvura/Desktop/programs\ quartus/display7seg {C:/Users/fvura/Desktop/programs quartus/display7seg/display7seg_main.v}

vlog -vlog01compat -work work +incdir+C:/Users/fvura/Desktop/programs\ quartus/display7seg {C:/Users/fvura/Desktop/programs quartus/display7seg/display7seg_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  display7seg_testbench

add wave *
view structure
view signals
run -all
