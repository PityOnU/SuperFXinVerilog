#Clear everything and start the simulator from 0
restart

 isim force add {/fig_14_block_506/clk} 1 -radix bin -value 0 -radix bin -time 5ps -repeat 10 ps
isim force add {/fig_14_block_506/clr} 1 -radix bin
isim force add {/fig_14_block_506/set} 0 -radix bin 
isim force add {/fig_14_block_506/selector} 0000000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000000000 -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 00000000F0000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000000000 -radix hex
run 5ps

isim force add {/fig_14_block_506/clr} 0 -radix bin
isim force add {/fig_14_block_506/set} 1 -radix bin 
isim force add {/fig_14_block_506/selector} 0000000000000001 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000000001 -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000002 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000000003 -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000004 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000000007 -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000008 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000000000F -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000010 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000000001F -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000020 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000000003F -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000040 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000000007F -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000080 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000000000FF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000100 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000000001FF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000200 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000000003FF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000400 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000000007FF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000800 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000000FFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000001000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000001FFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000002000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000003FFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000004000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000007FFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000008000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000000FFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000010000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000001FFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000020000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000003FFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000040000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000007FFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000080000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000000FFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000100000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000001FFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000200000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000003FFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000400000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000007FFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000800000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000FFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000001000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000001FFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000002000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000003FFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000004000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000007FFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000008000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000000FFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000010000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000001FFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000020000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000003FFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000040000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000007FFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000080000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000000FFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000100000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000001FFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000200000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000003FFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000400000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000007FFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000800000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000FFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000001000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000001FFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000002000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000003FFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000004000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000007FFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000008000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000000FFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000010000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000001FFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000020000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000003FFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000040000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000007FFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000080000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00000FFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000100000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00001FFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000200000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00003FFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000400000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00007FFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000800000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0000FFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0001000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0001FFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0002000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0003FFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0004000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0007FFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0008000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 000FFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0010000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 001FFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0020000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 003FFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0040000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 007FFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0080000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 00FFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0100000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 01FFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0200000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 03FFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0400000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 07FFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0800000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 0FFFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 1000000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 1FFFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 2000000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 3FFFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 4000000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} 7FFFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 8000000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} FFFFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/set} 0 -radix bin 

run 5ps
test {/fig_14_block_506/dirty_bits} FFFFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/selector} 0000000000000000 -radix hex

run 5ps
test {/fig_14_block_506/dirty_bits} FFFFFFFFFFFFFFFF -radix hex
run 5ps

isim force add {/fig_14_block_506/clr} 1 -radix bin

run 5ps
test {/fig_14_block_506/dirty_bits} 0000000000000000 -radix hex
run 5ps










