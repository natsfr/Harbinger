iverilog -DSIMULATION -o uart_sim ../uart_rx.v simu_uart.v
vvp uart_sim
