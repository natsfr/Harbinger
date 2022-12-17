iverilog -DSIMULATION -o operator_sim ../operator.v simu_operator.v
vvp operator_sim
