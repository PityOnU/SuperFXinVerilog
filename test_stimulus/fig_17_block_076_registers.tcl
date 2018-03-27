#Clear everything and start the simulator from 0
restart

isim force add {/fig_04b_block_076_registers/clk} 0 -radix bin -value 1 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_04b_block_076_registers/z} 5555 -radix hex
isim force add {/fig_04b_block_076_registers/enable} 0 -radix bin
isim force add {/fig_04b_block_076_registers/enable_l} 0 -radix bin
isim force add {/fig_04b_block_076_registers/disable_l} 0 -radix bin
isim force add {/fig_04b_block_076_registers/enable_h} 0 -radix bin
isim force add {/fig_04b_block_076_registers/disable_h} 0 -radix bin
isim force add {/fig_04b_block_076_registers/cchld} 0 -radix bin
isim force add {/fig_04b_block_076_registers/pcen} 0 -radix bin
isim force add {/fig_04b_block_076_registers/loopen} 0 -radix bin
isim force add {/fig_04b_block_076_registers/reset} 0 -radix bin
isim force add {/fig_04b_block_076_registers/zsel} 0 -radix unsigned

run 10 ps
test {/fig_04b_block_076_registers/r15} xxxx -radix hex

isim force add {/fig_04b_block_076_registers/reset} 1 -radix bin

run 10 ps
test {/fig_04b_block_076_registers/r15} 0000 -radix hex

isim force add {/fig_04b_block_076_registers/reset} 0 -radix bin
isim force add {/fig_04b_block_076_registers/pcen} 1 -radix bin

run 50 ps
test {/fig_04b_block_076_registers/r15} 0005 -radix hex

isim force add {/fig_04b_block_076_registers/enable} 1 -radix bin
isim force add {/fig_04b_block_076_registers/z} 0000 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r00} 0000 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 1 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 1111 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r01} 1111 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 2 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 2222 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r02} 2222 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 3 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 3333 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r03} 3333 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 4 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 4444 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r04} 4444 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 5 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 5555 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r05} 5555 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 6 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 6666 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r06} 6666 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 7 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 7777 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r07} 7777 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 8 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 8888 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r08} 8888 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 9 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} 9999 -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r09} 9999 -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 10 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} AAAA -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r10} AAAA -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 11 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} BBBB -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r11} BBBB -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 12 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} CCCC -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r12} CCCC -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 13 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} DDDD -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r13} DDDD -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 14 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} EEEE -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r14} EEEE -radix hex

isim force add {/fig_04b_block_076_registers/zsel} 15 -radix unsigned
isim force add {/fig_04b_block_076_registers/z} FFFF -radix hex
run 10 ps
test {/fig_04b_block_076_registers/r15} FFFF -radix hex





























