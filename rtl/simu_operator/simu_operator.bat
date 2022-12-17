rm -f operator_sim
rm -f operator_sim.vcd
iverilog -DSIMULATION -o operator_sim ../operator.v simu_operator.v
vvp operator_sim
gtkwave -g operator_sim.vcd
