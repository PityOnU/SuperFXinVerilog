#Clear everything and start the simulator from 0
restart

#Set addition mode
isim force add {/fig_6_block_152/add_sub_sel} 0 -radix bin

#Load values x=5 and y=5, unsigned
isim force add {/fig_6_block_152/x} 5 -radix unsigned
isim force add {/fig_6_block_152/y} 5 -radix unsigned

#Run the simulator and verify the output
run 5ps
#z should be 10
test {/fig_6_block_152/z} 10 -radix unsigned
#There should be no carry bit
test {/fig_6_block_152/cy} 0 -radix bin
run 5ps

#Load values x=15 and y=15
isim force add {/fig_6_block_152/x} 65535 -radix unsigned
isim force add {/fig_6_block_152/y} 65535 -radix unsigned

run 5ps
#Verifty that z=14 and cy=1
test {/fig_6_block_152/z} 65534 -radix unsigned
test {/fig_6_block_152/cy} 1 -radix bin
run 5ps

#Test signed addition functionality (i.e. overflow)
#Load values x=3 and y=3
isim force add {/fig_6_block_152/x} 3 -radix dec
isim force add {/fig_6_block_152/y} 3 -radix dec

run 5ps
#Verifty that z=6 and ov=0
test {/fig_6_block_152/z} 6 -radix dec
test {/fig_6_block_152/ov} 0 -radix bin
run 5ps

#Load values x=7 and y=1
isim force add {/fig_6_block_152/x} 32767 -radix dec
isim force add {/fig_6_block_152/y} 1 -radix dec

run 5ps
#Verifty that z=-8 and ov=1
test {/fig_6_block_152/z} -32768 -radix dec
test {/fig_6_block_152/ov} 1 -radix bin
run 5ps

#Load values x=-4 and y=3
#ISim doesn't like negative values in the force command, need to specify in binary
isim force add {/fig_6_block_152/x} 1111111111111100 -radix bin
isim force add {/fig_6_block_152/y} 3 -radix dec

run 5ps
#Verifty that z=-1 and ov=0
test {/fig_6_block_152/z} -1 -radix dec
test {/fig_6_block_152/ov} 0 -radix bin
run 5ps

#Load values x=-8 and y=-1
isim force add {/fig_6_block_152/x} 1000000000000000 -radix bin
isim force add {/fig_6_block_152/y} 1111111111111111 -radix bin

run 5ps
#Verifty that z=7 and ov=1
test {/fig_6_block_152/z} 32767 -radix dec
test {/fig_6_block_152/ov} 1 -radix bin
run 5ps

#Set subtraction mode
isim force add {/fig_6_block_152/add_sub_sel} 1 -radix bin

#Load values x=4 and y=4, unsigned
isim force add {/fig_6_block_152/x} 4 -radix unsigned
isim force add {/fig_6_block_152/y} 4 -radix unsigned

#Run the simulator and verify the output
run 5ps
#z should be 0
test {/fig_6_block_152/z} 0 -radix unsigned
#There should be no carry bit
test {/fig_6_block_152/cy} 0 -radix bin
run 5ps

#Load values x=4 and y=5, unsigned
isim force add {/fig_6_block_152/x} 4 -radix unsigned
isim force add {/fig_6_block_152/y} 5 -radix unsigned

#Run the simulator and verify the output
run 5ps
#z should be 0
test {/fig_6_block_152/z} 65535 -radix unsigned
#There should be no carry bit
test {/fig_6_block_152/cy} 1 -radix bin
run 5ps

#Test signed subtraction functionality (i.e. overflow)
#Load values x=3 and y=3
isim force add {/fig_6_block_152/x} 3 -radix dec
isim force add {/fig_6_block_152/y} 3 -radix dec

run 5ps
#Verifty that z=0 and ov=0
test {/fig_6_block_152/z} 0 -radix dec
test {/fig_6_block_152/ov} 0 -radix bin
run 5ps

#Load values x=7 and y=1
isim force add {/fig_6_block_152/x} 1 -radix dec
isim force add {/fig_6_block_152/y} 7 -radix dec

run 5ps
#Verifty that z=6 and ov=0
test {/fig_6_block_152/z} -6 -radix dec
test {/fig_6_block_152/ov} 0 -radix bin
run 5ps

#Load values x=-4 and y=5
#ISim doesn't like negative values in the force command, need to specify in binary
isim force add {/fig_6_block_152/x} 1000000000000000 -radix bin
isim force add {/fig_6_block_152/y} 5 -radix dec

run 5ps
#Verifty that z=7 and ov=1
test {/fig_6_block_152/z} 32763 -radix dec
test {/fig_6_block_152/ov} 1 -radix bin
run 5ps

#Load values x=-8 and y=-1
isim force add {/fig_6_block_152/x} 1000000000000000 -radix bin
isim force add {/fig_6_block_152/y} 1111111111111111 -radix bin

run 5ps
#Verifty that z=-7 and ov=0
test {/fig_6_block_152/z} -32767 -radix dec
test {/fig_6_block_152/ov} 0 -radix bin
run 5ps
