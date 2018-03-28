#Clear everything and start the simulator from 0
restart

isim force add {/fig_07_block_206/clk} 1 -radix bin -value 0 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_07_block_206/reset} 1 -radix bin
isim force add {/fig_07_block_206/bpr} 00 -radix hex
isim force add {/fig_07_block_206/ramd} 00 -radix hex
isim force add {/fig_07_block_206/ramdone} 0 -radix bin
isim force add {/fig_07_block_206/dump} 0 -radix bin
isim force add {/fig_07_block_206/col} AA -radix hex
isim force add {/fig_07_block_206/ldpix} 0 -radix bin
isim force add {/fig_07_block_206/pixel_sel} 0 -radix unsigned
isim force add {/fig_07_block_206/plane_sel} 0 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} xx -radix hex

isim force add {/fig_07_block_206/reset} 0 -radix bin
isim force add {/fig_07_block_206/ldpix} 1 -radix bin

run 10 ps
test {/fig_07_block_206/planed} xxxxxxxx -radix bin

isim force add {/fig_07_block_206/ldpix} 0 -radix bin
isim force add {/fig_07_block_206/dump} 1 -radix bin

run 10 ps
test {/fig_07_block_206/planed} xxxxxxx0 -radix bin

isim force add {/fig_07_block_206/pixel_sel} 2 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} xxxxx0x0 -radix bin

isim force add {/fig_07_block_206/pixel_sel} 4 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} xxx0x0x0 -radix bin

isim force add {/fig_07_block_206/pixel_sel} 6 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} x0x0x0x0 -radix bin

isim force add {/fig_07_block_206/col} 55 -radix hex
isim force add {/fig_07_block_206/dump} 0 -radix bin
isim force add {/fig_07_block_206/ldpix} 1 -radix bin

run 10 ps
test {/fig_07_block_206/planed} x0x0x0x0 -radix bin

isim force add {/fig_07_block_206/ldpix} 0 -radix bin
isim force add {/fig_07_block_206/dump} 1 -radix bin
isim force add {/fig_07_block_206/pixel_sel} 1 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} x0x0x010 -radix bin

isim force add {/fig_07_block_206/pixel_sel} 3 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} x0x01010 -radix bin

isim force add {/fig_07_block_206/pixel_sel} 5 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} x0101010 -radix bin

isim force add {/fig_07_block_206/pixel_sel} 7 -radix unsigned

run 10 ps
test {/fig_07_block_206/planed} 10101010 -radix bin



































