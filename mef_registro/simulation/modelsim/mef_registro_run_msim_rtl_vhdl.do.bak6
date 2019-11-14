transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/registro.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/reg_desplazamiento.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/mea_salida.vhd}
vcom -93 -work work {/home/julio/Desktop/FPGA_Proyectos/Laboratorio_5/src/mef_registro.vhd}

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/mef_registro/../../../../Escritorio/FPGA_Proyectos/Laboratorio_5/test_bench/TBmef_registro.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TBmef_registro

add wave *
view structure
view signals
run -all
