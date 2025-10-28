onerror {exit -code 1}
vlib work
vcom -work work lab3.vho
vcom -work work lab3.vwf.vht
vsim  -c -t 1ps -L cyclonev -L altera -L altera_mf -voptargs=+acc -L sgate -L altera_lnsim work.lab3_vhd_vec_tst
vcd file -direction lab3.msim.vcd
vcd add -internal lab3_vhd_vec_tst/*
vcd add -internal lab3_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

