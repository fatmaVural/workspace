transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/fvura/Desktop/programs\ quartus/fullAd8bit {C:/Users/fvura/Desktop/programs quartus/fullAd8bit/fullAd8bit_main.v}

vlog -vlog01compat -work work +incdir+C:/Users/fvura/Desktop/programs\ quartus/fullAd8bit {C:/Users/fvura/Desktop/programs quartus/fullAd8bit/fullAd8bit_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  fullAd8bit_tb

add wave *
view structure
view signals
run -all
