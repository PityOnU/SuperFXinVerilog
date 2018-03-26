#Clear everything and start the simulator from 0
restart

isim force add {/fig_14_block_502_subtractor/x} 2834 -radix unsigned
isim force add {/fig_14_block_502_subtractor/y} 2834 -radix unsigned

run 5ps
test {/fig_14_block_502_subtractor/z} 0 -radix unsigned
run 5ps

isim force add {/fig_14_block_502_subtractor/y} 1417 -radix unsigned

run 5ps
test {/fig_14_block_502_subtractor/z} 1417 -radix unsigned
run 5ps

isim force add {/fig_14_block_502_subtractor/x} 1416 -radix unsigned

run 5ps
test {/fig_14_block_502_subtractor/z} -1 -radix dec
run 5ps

isim force add {/fig_14_block_502_subtractor/y} 1418 -radix unsigned

run 5ps
test {/fig_14_block_502_subtractor/z} -1 -radix dec
run 5ps
