#Clear everything and start the simulator from 0
restart

isim force add {/mux_2_bit_4_wide/data_input} 1010010111110000 -radix bin
isim force add {/mux_2_bit_4_wide/selector} 00 -radix bin

run 5 ps
test {/mux_2_bit_4_wide/selected_output} 1010 -radix bin
run 5ps

isim force add {/mux_2_bit_4_wide/selector} 01 -radix bin

run 5 ps
test {/mux_2_bit_4_wide/selected_output} 0101 -radix bin
run 5ps

isim force add {/mux_2_bit_4_wide/selector} 10 -radix bin

run 5 ps
test {/mux_2_bit_4_wide/selected_output} 1111 -radix bin
run 5ps

isim force add {/mux_2_bit_4_wide/selector} 11 -radix bin

run 5 ps
test {/mux_2_bit_4_wide/selected_output} 0000 -radix bin
run 5ps


