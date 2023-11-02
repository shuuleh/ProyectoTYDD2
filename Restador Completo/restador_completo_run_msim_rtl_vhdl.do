transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/giuli/Restador Completo/restador_completo.vhd}

vcom -93 -work work {D:/giuli/Restador Completo/TB_restador_completo.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  TB_restador_completo

add wave *
view structure
view signals
run -all
