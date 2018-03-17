#Clear everything and start the simulator from 0
restart

isim force add {/fig_14_block_502/pc} 2653 -radix unsigned
isim force add {/fig_14_block_502/cache_base_addr} 2653 -radix unsigned 

run 5ps
test {/fig_14_block_502/orange} 0 -radix unsigned
test {/fig_14_block_502/cache_addr} 0 -radix unsigned
run 5ps

isim force add {/fig_14_block_502/pc} 2654 -radix unsigned

run 5ps
test {/fig_14_block_502/orange} 0 -radix unsigned
test {/fig_14_block_502/cache_addr} 1 -radix unsigned
run 5ps

isim force add {/fig_14_block_502/pc} 2953 -radix unsigned

run 5ps
test {/fig_14_block_502/orange} 1 -radix unsigned
test {/fig_14_block_502/cache_addr} 44 -radix unsigned
run 5ps

isim force add {/fig_14_block_502/pc} 2716 -radix unsigned

run 5ps
test {/fig_14_block_502/orange} 0 -radix unsigned
test {/fig_14_block_502/cache_addr} 63 -radix unsigned
run 5ps

isim force add {/fig_14_block_502/pc} 2717 -radix unsigned

run 5ps
test {/fig_14_block_502/orange} 1 -radix unsigned
test {/fig_14_block_502/cache_addr} 0 -radix unsigned
run 5ps
