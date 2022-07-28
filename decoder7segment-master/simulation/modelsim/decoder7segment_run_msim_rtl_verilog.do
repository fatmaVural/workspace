transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/fvura/Desktop/programs\ quartus/decoder7segment {C:/Users/fvura/Desktop/programs quartus/decoder7segment/decoder7segment_main.v}

vlog -vlog01compat -work work +incdir+C:/Users/fvura/Desktop/programs\ quartus/decoder7segment {C:/Users/fvura/Desktop/programs quartus/decoder7segment/decoder7segment_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  decoder7segment_testbench

add wave *
view structure
view signals
run -all
