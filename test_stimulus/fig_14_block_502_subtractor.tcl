#Clear everything and start the simulator from 0
restart

isim force add {/fig_14_block_502_subtractor/x} 5542 -radix unsigned
isim force add {/fig_14_block_502_subtractor/y} 5542 -radix unsigned

run 5ps
test {/fig_14_block_502_subtractor/z} 0 -radix unsigned
run 5ps

isim force add {/fig_14_block_502_subtractor/x} 5552 -radix unsigned

run 5ps
test {/fig_14_block_502_subtractor/z} 10 -radix unsigned
run 5ps

isim force add {/fig_14_block_502_subtractor/x} 0 -radix unsigned

run 5ps
test {/fig_14_block_502_subtractor/z} 2650 -radix dec
run 5ps
