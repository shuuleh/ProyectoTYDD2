transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/giuli/proyecto prueba/JK_FF.vhd}

vcom -93 -work work {D:/giuli/proyecto prueba/TB_JK_FF.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  TB_JK_FF

add wave *
view structure
view signals
run -all
