add_executable(multicore_runner_queue)

pico_generate_pio_header(multicore_runner_queue ${CMAKE_CURRENT_LIST_DIR}/fast_spi.pio)
        
target_sources(multicore_runner_queue PRIVATE multicore_runner_queue.c)

target_link_libraries(multicore_runner_queue PRIVATE 
        pico_multicore
        pico_stdlib
        hardware_spi
        hardware_dma
        hardware_pio 
        hardware_interp)

# create map/bin/hex file etc.
pico_add_extra_outputs(multicore_runner_queue)

# add url via pico_set_program_url
example_auto_set_url(multicore_runner_queue)
