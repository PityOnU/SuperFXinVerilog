#Clear everything and start the simulator from 0
restart

isim force add {/mux_2_bit_16_wide/selector} 00 -radix bin
isim force add {/mux_2_bit_16_wide/data_input} FFFF000099995555 -radix hex

run 10 ps
test {/mux_2_bit_16_wide/selected_output} FFFF -radix hex

isim force add {/mux_2_bit_16_wide/selector} 01 -radix bin

run 10 ps
test {/mux_2_bit_16_wide/selected_output} 0000 -radix hex

isim force add {/mux_2_bit_16_wide/selector} 10 -radix bin

run 10 ps
test {/mux_2_bit_16_wide/selected_output} 9999 -radix hex

isim force add {/mux_2_bit_16_wide/selector} 11 -radix bin

run 10 ps
test {/mux_2_bit_16_wide/selected_output} 5555 -radix hex


























