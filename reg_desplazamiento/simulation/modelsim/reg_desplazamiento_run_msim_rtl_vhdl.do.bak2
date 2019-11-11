transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/laboratorio_5/src/registro.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/laboratorio_5/src/reg_desplazamiento.vhd}

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/laboratorio_5/reg_desplazamiento/../../../../Escritorio/FPGA_Proyectos/laboratorio_5/test_bench/TBreg_desplazamiento.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TBreg_desplazamiento

add wave *
view structure
view signals
run -all
