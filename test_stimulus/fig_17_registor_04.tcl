#Clear everything and start the simulator from 0
restart

isim force add {/fig_17_register_04/clk} 0 -radix bin -value 1 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_17_register_04/enable} 0 -radix bin
isim force add {/fig_17_register_04/enable_low} 0 -radix bin
isim force add {/fig_17_register_04/enable_high} 0 -radix bin
isim force add {/fig_17_register_04/disable_low} 0 -radix bin
isim force add {/fig_17_register_04/disable_high} 0 -radix bin
isim force add {/fig_17_register_04/incoming_data} 0000 -radix hex

run 10 ps
test {/fig_17_register_04/stored_data} xxxx -radix hex

isim force add {/fig_17_register_04/enable} 1 -radix bin

run 10 ps
test {/fig_17_register_04/stored_data} 0000 -radix hex

isim force add {/fig_17_register_04/incoming_data} 5555 -radix hex

run 10 ps
test {/fig_17_register_04/stored_data} 5555 -radix hex

isim force add {/fig_17_register_04/enable} 0 -radix bin
isim force add {/fig_17_register_04/incoming_data} 9999 -radix hex

run 10 ps
test {/fig_17_register_04/stored_data} 5555 -radix hex

isim force add {/fig_17_register_04/enable_low} 1 -radix bin

run 10 ps
test {/fig_17_register_04/stored_data} 9999 -radix hex

isim force add {/fig_17_register_04/disable_low} 1 -radix bin
isim force add {/fig_17_register_04/incoming_data} FFFF -radix hex

run 10 ps
test {/fig_17_register_04/stored_data} 9999 -radix hex

isim force add {/fig_17_register_04/disable_low} 0 -radix bin

run 10 ps
test {/fig_17_register_04/stored_data} FFFF -radix hex

isim force add {/fig_17_register_04/enable_low} 0 -radix bin
isim force add {/fig_17_register_04/enable_high} 1 -radix bin
isim force add {/fig_17_register_04/incoming_data} 0000 -radix hex

run 10 ps
test {/fig_17_register_04/stored_data} 0000 -radix hex

isim force add {/fig_17_register_04/disable_high} 1 -radix bin
isim force add {/fig_17_register_04/incoming_data} 1234 -radix hex

run 10 ps
test {/fig_17_register_04/stored_data} 0000 -radix hex

isim force add {/fig_17_register_04/disable_high} 0 -radix bin

run 10 ps
test {/fig_17_register_04/stored_data} 1234 -radix hex

























