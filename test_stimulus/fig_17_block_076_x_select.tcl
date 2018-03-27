#Clear everything and start the simulator from 0
restart

isim force add {/fig_04b_block_076_x_select/clk} 1 -radix bin -value 0 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_04b_block_076_x_select/r00} 0001 -radix hex
isim force add {/fig_04b_block_076_x_select/r01} 0002 -radix hex
isim force add {/fig_04b_block_076_x_select/r07} 0080 -radix hex
isim force add {/fig_04b_block_076_x_select/r08} 0100 -radix hex
isim force add {/fig_04b_block_076_x_select/r15} 8000 -radix hex
isim force add {/fig_04b_block_076_x_select/fromset} 0 -radix bin
isim force add {/fig_04b_block_076_x_select/y} 5555 -radix hex
isim force add {/fig_04b_block_076_x_select/xsel} 0000 -radix bin

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 0001 -radix hex

isim force add {/fig_04b_block_076_x_select/xsel} 0001 -radix bin

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 8000 -radix hex

isim force add {/fig_04b_block_076_x_select/xsel} 0101 -radix bin

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 0080 -radix hex

isim force add {/fig_04b_block_076_x_select/xsel} 1001 -radix bin

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 0100 -radix hex

isim force add {/fig_04b_block_076_x_select/xsel} 1101 -radix bin

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 0002 -radix hex

isim force add {/fig_04b_block_076_x_select/xsel} 1110 -radix bin

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 5555 -radix hex

isim force add {/fig_04b_block_076_x_select/xsel} 1111 -radix bin

run 10 ps
test {/fig_04b_block_076_x_select/xbus} xxxx -radix hex

isim force add {/fig_04b_block_076_x_select/fromset} 1 -radix bin
isim force add {/fig_04b_block_076_x_select/y} 8888 -radix hex

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 8888 -radix hex

isim force add {/fig_04b_block_076_x_select/fromset} 0 -radix bin
isim force add {/fig_04b_block_076_x_select/y} ABC5 -radix hex

run 10 ps
test {/fig_04b_block_076_x_select/xbus} 8888 -radix hex


























