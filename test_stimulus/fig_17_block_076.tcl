#Clear everything and start the simulator from 0
restart

isim force add {/fig_04b_block_076/clk} 0 -radix bin -value 1 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_04b_block_076/y} AAAA -radix hex
isim force add {/fig_04b_block_076/z} 5555 -radix hex
isim force add {/fig_04b_block_076/enable} 0 -radix bin
isim force add {/fig_04b_block_076/enable_l} 0 -radix bin
isim force add {/fig_04b_block_076/disable_l} 0 -radix bin
isim force add {/fig_04b_block_076/enable_h} 0 -radix bin
isim force add {/fig_04b_block_076/disable_h} 0 -radix bin
isim force add {/fig_04b_block_076/cchld} 0 -radix bin
isim force add {/fig_04b_block_076/pcen} 0 -radix bin
isim force add {/fig_04b_block_076/loopen} 0 -radix bin
isim force add {/fig_04b_block_076/fromset} 0 -radix bin
isim force add {/fig_04b_block_076/reset} 0 -radix bin
isim force add {/fig_04b_block_076/xsel} 0 -radix unsigned
isim force add {/fig_04b_block_076/ysel} 0 -radix unsigned
isim force add {/fig_04b_block_076/zsel} 0 -radix unsigned

run 10 ps
test {/fig_04b_block_076/xbus} xxxx -radix hex
test {/fig_04b_block_076/ybus} xxxx -radix hex

isim force add {/fig_04b_block_076/reset} 1 -radix bin

run 10 ps
test {/fig_04b_block_076/xbus} xxxx -radix hex
test {/fig_04b_block_076/ybus} xxxx -radix hex

isim force add {/fig_04b_block_076/reset} 0 -radix bin
isim force add {/fig_04b_block_076/pcen} 1 -radix bin

run 50 ps
test {/fig_04b_block_076/xbus} xxxx -radix hex
test {/fig_04b_block_076/ybus} xxxx -radix hex

isim force add {/fig_04b_block_076/enable} 1 -radix bin
isim force add {/fig_04b_block_076/z} 0000 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 1 -radix unsigned
isim force add {/fig_04b_block_076/z} 1111 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 2 -radix unsigned
isim force add {/fig_04b_block_076/z} 2222 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 3 -radix unsigned
isim force add {/fig_04b_block_076/z} 3333 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 4 -radix unsigned
isim force add {/fig_04b_block_076/z} 4444 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 5 -radix unsigned
isim force add {/fig_04b_block_076/z} 5555 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 6 -radix unsigned
isim force add {/fig_04b_block_076/z} 6666 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 7 -radix unsigned
isim force add {/fig_04b_block_076/z} 7777 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 8 -radix unsigned
isim force add {/fig_04b_block_076/z} 8888 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 9 -radix unsigned
isim force add {/fig_04b_block_076/z} 9999 -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 10 -radix unsigned
isim force add {/fig_04b_block_076/z} AAAA -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 11 -radix unsigned
isim force add {/fig_04b_block_076/z} BBBB -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 12 -radix unsigned
isim force add {/fig_04b_block_076/z} CCCC -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 13 -radix unsigned
isim force add {/fig_04b_block_076/z} DDDD -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 14 -radix unsigned
isim force add {/fig_04b_block_076/z} EEEE -radix hex
run 10 ps
isim force add {/fig_04b_block_076/zsel} 15 -radix unsigned
isim force add {/fig_04b_block_076/z} FFFF -radix hex
run 10 ps

isim force add {/fig_04b_block_076/enable} 0 -radix bin
isim force add {/fig_04b_block_076/xsel} 0000 -radix bin
isim force add {/fig_04b_block_076/ysel} 0001 -radix bin
run 10 ps
test {/fig_04b_block_076/xbus} 0000 -radix hex
test {/fig_04b_block_076/ybus} 1111 -radix hex

isim force add {/fig_04b_block_076/xsel} 0001 -radix bin
isim force add {/fig_04b_block_076/ysel} 0110 -radix bin
run 10 ps
test {/fig_04b_block_076/xbus} FFFF -radix hex
test {/fig_04b_block_076/ybus} 6666 -radix hex

isim force add {/fig_04b_block_076/xsel} 1101 -radix bin
isim force add {/fig_04b_block_076/ysel} 1100 -radix bin
run 10 ps
test {/fig_04b_block_076/xbus} 1111 -radix hex
test {/fig_04b_block_076/ybus} CCCC -radix hex
































