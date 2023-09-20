transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {alu_4bits.vho}

vcom -93 -work work {D:/proyectosQuartus/alu_4bits/tb_alu_4bits.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_alu_4bits

add wave *
view structure
view signals
run -all
