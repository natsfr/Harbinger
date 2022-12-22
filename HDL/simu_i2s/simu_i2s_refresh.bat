iverilog -DSIMULATION -o i2s_sim ../i2s.v simu_i2s.v
vvp i2s_sim
