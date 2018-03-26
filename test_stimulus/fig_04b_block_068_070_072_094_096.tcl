#Clear everything and start the simulator from 0
restart

isim force add {/fig_04b_block_068_070_072_094_096/clk} 1 -radix bin -value 0 -radix bin -time 5ps -repeat 10 ps
isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00 -radix hex
isim force add {/fig_04b_block_068_070_072_094_096/cache_start} 0 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/cache_start} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00010001 -radix bin

run 10 ps
test {/fig_04b_block_068_070_072_094_096/cache_base_addr} 1110001110100 -radix bin
test {/fig_04b_block_068_070_072_094_096/dirty_bits} 0000000000000000 -radix hex

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/cache_start} 0 -radix bin

run 10 ps
test {/fig_04b_block_068_070_072_094_096/cache_base_addr} 1110001110100 -radix bin
test {/fig_04b_block_068_070_072_094_096/dirty_bits} 0000000000000000 -radix hex

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10010010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10100111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10011101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00011001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10010001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10011010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10101010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11111001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00110101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00000100 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00000010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01111111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01001010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11101001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10010101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00000101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11001100 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11000011 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00000101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11111110 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00100111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00110110 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01111011 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11110010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01110101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00000111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01010001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11000000 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10111101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11110001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11010010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01001111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10011001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01101111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01101001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00101010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00001001 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00010011 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00100100 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00111111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00010111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00100110 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10111110 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01100010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00001111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01010011 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01100111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11011100 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00010110 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01101100 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11011010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00111101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10100010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01010110 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00101111 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00011000 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011010 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01011101 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011011 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10000000 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011100 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 11011000 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011101 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00011010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011110 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01110010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011111 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 10101010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111100000 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 01101010 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111100001 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin

run 20 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 1 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/instr_in} 00001011 -radix bin

run 10 ps

isim force add {/fig_04b_block_068_070_072_094_096/romrdy} 0 -radix bin
isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110100111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110101111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110110111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001110111111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111000111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111001111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111010111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011000 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011001 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011010 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011011 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011100 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011101 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011110 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111011111 -radix bin

run 30 ps

isim force add {/fig_04b_block_068_070_072_094_096/pc} 1110001111100000 -radix bin

run 30 ps

