#Clear everything and start the simulator from 0
restart

isim force add {/fig_04b_block_078/clk} 1 -radix bin -value 0 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_04b_block_078/instr} 1111 -radix bin
isim force add {/fig_04b_block_078/resflags} 1 -radix bin
isim force add {/fig_04b_block_078/to} 0 -radix bin
isim force add {/fig_04b_block_078/from} 0 -radix bin
isim force add {/fig_04b_block_078/ha} 0101 -radix bin
isim force add {/fig_04b_block_078/ssel} 00 -radix bin
isim force add {/fig_04b_block_078/dsel} 00 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 0000 -radix bin
test {/fig_04b_block_078/zsel} 0000 -radix bin

isim force add {/fig_04b_block_078/resflags} 0 -radix bin
isim force add {/fig_04b_block_078/to} 1 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 0000 -radix bin
test {/fig_04b_block_078/zsel} 1111 -radix bin

isim force add {/fig_04b_block_078/to} 0 -radix bin
isim force add {/fig_04b_block_078/instr} 0000 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 0000 -radix bin
test {/fig_04b_block_078/zsel} 1111 -radix bin

isim force add {/fig_04b_block_078/from} 1 -radix bin
isim force add {/fig_04b_block_078/instr} 1111 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 1111 -radix bin
test {/fig_04b_block_078/zsel} 1111 -radix bin

isim force add {/fig_04b_block_078/from} 0 -radix bin
isim force add {/fig_04b_block_078/instr} 0000 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 1111 -radix bin
test {/fig_04b_block_078/zsel} 1111 -radix bin

isim force add {/fig_04b_block_078/resflags} 1 -radix bin
isim force add {/fig_04b_block_078/instr} 1111 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 0000 -radix bin
test {/fig_04b_block_078/zsel} 0000 -radix bin

isim force add {/fig_04b_block_078/resflags} 0 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 0000 -radix bin
test {/fig_04b_block_078/zsel} 0000 -radix bin

isim force add {/fig_04b_block_078/ssel} 01 -radix bin
isim force add {/fig_04b_block_078/dsel} 10 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 0000 -radix bin
test {/fig_04b_block_078/zsel} 1111 -radix bin

isim force add {/fig_04b_block_078/ssel} 10 -radix bin
isim force add {/fig_04b_block_078/dsel} 11 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 1111 -radix bin
test {/fig_04b_block_078/zsel} 0101 -radix bin

isim force add {/fig_04b_block_078/ssel} 11 -radix bin
isim force add {/fig_04b_block_078/dsel} 01 -radix bin

run 10 ps
test {/fig_04b_block_078/ysel} 0101 -radix bin
test {/fig_04b_block_078/zsel} 0000 -radix bin














