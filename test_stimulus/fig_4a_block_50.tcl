#Clear everything and start the simulator from 0
restart

#Set addition mode
isim force add {/fig_4a_block_50/add_sub_sel} 0 -radix bin
isim force add {/fig_4a_block_50/z_src_sel} 000 -radix bin
isim force add {/fig_4a_block_50/y_src_sel} 0 -radix bin

isim force add {/fig_4a_block_50/instr} 11010011 -radix bin
isim force add {/fig_4a_block_50/x} 15 -radix dec
isim force add {/fig_4a_block_50/y} 726 -radix dec

run 5ps
test {/fig_4a_block_50/z} 741 -radix dec
test {/fig_4a_block_50/cy} 0 -radix bin
test {/fig_4a_block_50/ov} 0 -radix bin
run 5ps

isim force add {/fig_4a_block_50/add_sub_sel} 1 -radix bin

run 5ps
test {/fig_4a_block_50/z} -711 -radix dec
test {/fig_4a_block_50/cy} 1 -radix bin
test {/fig_4a_block_50/ov} 0 -radix bin
run 5ps

isim force add {/fig_4a_block_50/y_src_sel} 1 -radix bin

run 5ps
test {/fig_4a_block_50/z} -196 -radix dec
test {/fig_4a_block_50/cy} 1 -radix bin
test {/fig_4a_block_50/ov} 0 -radix bin
run 5ps


isim force add {/fig_4a_block_50/y_src_sel} 0 -radix bin
isim force add {/fig_4a_block_50/z_src_sel} 001 -radix bin

run 5ps
test {/fig_4a_block_50/z} 6 -radix dec
run 5ps

isim force add {/fig_4a_block_50/z_src_sel} 010 -radix bin

run 5ps
test {/fig_4a_block_50/z} 735 -radix dec
run 5ps

isim force add {/fig_4a_block_50/z_src_sel} 011 -radix bin

run 5ps
test {/fig_4a_block_50/z} 729 -radix dec
run 5ps

isim force add {/fig_4a_block_50/z_src_sel} 100 -radix bin

run 5ps
test {/fig_4a_block_50/z} -32761 -radix dec
run 5ps

isim force add {/fig_4a_block_50/z_src_sel} 101 -radix bin

run 5ps
test {/fig_4a_block_50/z} 3840 -radix dec
run 5ps
