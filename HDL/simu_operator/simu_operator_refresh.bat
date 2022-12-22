iverilog -DSIMULATION -o operator_sim ../src/operator.v simu_operator.v
vvp operator_sim
