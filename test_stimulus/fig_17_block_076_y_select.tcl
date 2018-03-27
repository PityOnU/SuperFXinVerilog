#Clear everything and start the simulator from 0
restart

isim force add {/fig_04b_block_076_y_select/clk} 0 -radix bin -value 1 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_04b_block_076_y_select/r00} 0001 -radix hex
isim force add {/fig_04b_block_076_y_select/r01} 0002 -radix hex
isim force add {/fig_04b_block_076_y_select/r02} 0004 -radix hex
isim force add {/fig_04b_block_076_y_select/r03} 0008 -radix hex
isim force add {/fig_04b_block_076_y_select/r04} 0010 -radix hex
isim force add {/fig_04b_block_076_y_select/r05} 0020 -radix hex
isim force add {/fig_04b_block_076_y_select/r06} 0040 -radix hex
isim force add {/fig_04b_block_076_y_select/r07} 0080 -radix hex
isim force add {/fig_04b_block_076_y_select/r08} 0100 -radix hex
isim force add {/fig_04b_block_076_y_select/r09} 0200 -radix hex
isim force add {/fig_04b_block_076_y_select/r10} 0400 -radix hex
isim force add {/fig_04b_block_076_y_select/r11} 0800 -radix hex
isim force add {/fig_04b_block_076_y_select/r12} 1000 -radix hex
isim force add {/fig_04b_block_076_y_select/r13} 2000 -radix hex
isim force add {/fig_04b_block_076_y_select/r14} 4000 -radix hex
isim force add {/fig_04b_block_076_y_select/r15} 8000 -radix hex
isim force add {/fig_04b_block_076_y_select/ysel} 0 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0001 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 1 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0002 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 2 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0004 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 3 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0008 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 4 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0010 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 5 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0020 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 6 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0040 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 7 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0080 -radix hex


isim force add {/fig_04b_block_076_y_select/ysel} 8 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0100 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 9 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0200 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 10 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0400 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 11 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 0800 -radix hex


isim force add {/fig_04b_block_076_y_select/ysel} 12 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 1000 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 13 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 2000 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 14 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 4000 -radix hex

isim force add {/fig_04b_block_076_y_select/ysel} 15 -radix unsigned

run 10 ps
test {/fig_04b_block_076_y_select/ybus} 8000 -radix hex






















