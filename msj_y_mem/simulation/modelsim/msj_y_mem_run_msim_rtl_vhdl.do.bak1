transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/msj_y_mem.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/ROM.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/mux_entradas.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/mea_mem.vhd}

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/msj_y_mem/../../../../Escritorio/FPGA_Proyectos/Laboratorio_5/test_bench/TBmsj_y_mem.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TBmsj_y_mem

add wave *
view structure
view signals
run -all
