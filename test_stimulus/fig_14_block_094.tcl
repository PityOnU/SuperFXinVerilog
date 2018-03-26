#Clear everything and start the simulator from 0
restart

isim force add {/fig_14_block_94/clk} 1 -radix bin -value 0 -radix bin -time 5ps -repeat 10 ps
isim force add {/fig_14_block_94/write_enable} 0 -radix bin 
isim force add {/fig_14_block_94/address} 0 -radix unsigned
isim force add {/fig_14_block_94/write_data} 00 -radix hex

run 10 ps

isim force add {/fig_14_block_94/write_enable} 1 -radix bin 
isim force add {/fig_14_block_94/write_data} 00 -radix hex

run 10 ps
test {/fig_14_block_94/read_data} xx -radix hex

run 10 ps
test {/fig_14_block_94/read_data} 00 -radix hex

isim force add {/fig_14_block_94/address} 1 -radix unsigned
isim force add {/fig_14_block_94/write_data} 01 -radix hex

run 10 ps
test {/fig_14_block_94/read_data} xx -radix hex

run 10 ps
test {/fig_14_block_94/read_data} 01 -radix hex

isim force add {/fig_14_block_94/write_enable} 0 -radix bin
isim force add {/fig_14_block_94/address} 0 -radix unsigned
isim force add {/fig_14_block_94/write_data} FF -radix hex

run 10 ps
test {/fig_14_block_94/read_data} 00 -radix hex

isim force add {/fig_14_block_94/address} 1 -radix unsigned

run 10 ps
test {/fig_14_block_94/read_data} 01 -radix hex
