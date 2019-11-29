transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/sincX3.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/sincronizador.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/selFrecuencias.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/ffd.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/divisorx2.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/generador/DivFrecuencias.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/data_11/partity.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/trama_y_reg.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/ROM.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/registro.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/reg_desplazamiento.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/mux_entradas.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/msj_y_mem.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/mef_registro.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/mea_salida.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/mea_mem.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/generador.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/msj_y_salida_apart/msj_y_salida_apart.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/transm_completo_2/transm_completo_2.vhd}
vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/src/data_11.vhd}

vcom -93 -work work {/home/julio/Escritorio/FPGA_Proyectos/Laboratorio_5/transm_completo_2/../../../../Escritorio/FPGA_Proyectos/Laboratorio_5/transm_completo_2/sim/TBtransm_completo_2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TBtransm_completo_2

add wave *
view structure
view signals
run -all
