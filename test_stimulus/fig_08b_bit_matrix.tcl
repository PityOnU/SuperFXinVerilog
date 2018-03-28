#Clear everything and start the simulator from 0
restart

isim force add {/fig_08b_bit_matrix/clk} 1 -radix bin -value 0 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_08b_bit_matrix/reset_n} 0 -radix bin
isim force add {/fig_08b_bit_matrix/bpr} 00 -radix hex
isim force add {/fig_08b_bit_matrix/ldram_n} FF -radix hex
isim force add {/fig_08b_bit_matrix/ramd} 00 -radix hex
isim force add {/fig_08b_bit_matrix/dump} 00 -radix hex
isim force add {/fig_08b_bit_matrix/col} 00 -radix hex
isim force add {/fig_08b_bit_matrix/ldpix_n} 1 -radix bin

run 10 ps
test {/fig_08b_bit_matrix/data} xxxxxxxxxxxxxxxx -radix hex

isim force add {/fig_08b_bit_matrix/reset_n} 1 -radix bin
isim force add {/fig_08b_bit_matrix/ldram_n} FE -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} xxxxxxxxxxxxxx00 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} FD -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} xxxxxxxxxxxx0000 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} FB -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} xxxxxxxxxx000000 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} F7 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} xxxxxxxx00000000 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} EF -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} xxxxxx0000000000 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} DF -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} xxxx000000000000 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} BF -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} xx00000000000000 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} 7F -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 0000000000000000 -radix hex

isim force add {/fig_08b_bit_matrix/ldram_n} FF -radix hex
isim force add {/fig_08b_bit_matrix/col} FF -radix hex
isim force add {/fig_08b_bit_matrix/ldpix_n} 0 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 0000000000000000 -radix hex

isim force add {/fig_08b_bit_matrix/ldpix_n} 1 -radix hex
isim force add {/fig_08b_bit_matrix/dump} 01 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 0101010101010101 -radix hex

isim force add {/fig_08b_bit_matrix/dump} 01 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 0101010101010101 -radix hex


isim force add {/fig_08b_bit_matrix/dump} 02 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 0303030303030303 -radix hex


isim force add {/fig_08b_bit_matrix/dump} 04 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 0707070707070707 -radix hex

isim force add {/fig_08b_bit_matrix/dump} 10 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 1717171717171717 -radix hex

isim force add {/fig_08b_bit_matrix/dump} 20 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 3737373737373737 -radix hex

isim force add {/fig_08b_bit_matrix/dump} 40 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 7777777777777777 -radix hex

isim force add {/fig_08b_bit_matrix/dump} 80 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} f7f7f7f7f7f7f7f7 -radix hex

isim force add {/fig_08b_bit_matrix/dump} 08 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} ffffffffffffffff -radix hex

isim force add {/fig_08b_bit_matrix/dump} 00 -radix hex
isim force add {/fig_08b_bit_matrix/bpr} 03 -radix hex
isim force add {/fig_08b_bit_matrix/ldram_n} 00 -radix hex
isim force add {/fig_08b_bit_matrix/ramd} 00 -radix hex

run 10 ps
test {/fig_08b_bit_matrix/data} 0303030303030303 -radix hex





















