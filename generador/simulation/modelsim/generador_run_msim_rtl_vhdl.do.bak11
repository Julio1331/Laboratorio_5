transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/generador.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/selFrecuencias.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/DivFrecuencias.vhd}

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/../test_bench/TBgenerador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TBgenerador

add wave *
view structure
view signals
run -all
