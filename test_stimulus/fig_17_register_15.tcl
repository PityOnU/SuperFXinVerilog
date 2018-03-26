#Clear everything and start the simulator from 0
restart

isim force add {/fig_17_register_15/clk} 0 -radix bin -value 1 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_17_register_15/cchld} 0 -radix bin
isim force add {/fig_17_register_15/pcen} 0 -radix bin
isim force add {/fig_17_register_15/loopen} 0 -radix bin
isim force add {/fig_17_register_15/reset} 0 -radix bin
isim force add {/fig_17_register_15/enable} 0 -radix bin
isim force add {/fig_17_register_15/rn} 0000 -radix hex
isim force add {/fig_17_register_15/incoming_data} 0000 -radix hex

run 10 ps
test {/fig_17_register_15/pc} xxxx -radix hex

isim force add {/fig_17_register_15/reset} 1 -radix bin

run 10 ps
test {/fig_17_register_15/pc} 0000 -radix hex

isim force add {/fig_17_register_15/reset} 0 -radix bin

run 10 ps
test {/fig_17_register_15/pc} 0000 -radix hex

isim force add {/fig_17_register_15/pcen} 1 -radix bin
isim force add {/fig_17_register_15/incoming_data} F0F0 -radix hex
isim force add {/fig_17_register_15/rn} 0F0F -radix hex

run 30ps
test {/fig_17_register_15/pc} 0003 -radix hex

isim force add {/fig_17_register_15/cchld} 1 -radix bin

run 30ps
test {/fig_17_register_15/pc} 0003 -radix hex

isim force add {/fig_17_register_15/cchld} 0 -radix bin

run 30ps
test {/fig_17_register_15/pc} 0006 -radix hex

isim force add {/fig_17_register_15/loopen} 1 -radix bin

run 10ps
test {/fig_17_register_15/pc} 0F0F -radix hex

run 30ps
test {/fig_17_register_15/pc} 0F0F -radix hex

isim force add {/fig_17_register_15/cchld} 1 -radix bin
isim force add {/fig_17_register_15/rn} 0ABC -radix hex

run 10ps
test {/fig_17_register_15/pc} 0F0F -radix hex

run 30ps
test {/fig_17_register_15/pc} 0F0F -radix hex

isim force add {/fig_17_register_15/cchld} 0 -radix bin
isim force add {/fig_17_register_15/enable} 1 -radix bin

run 10ps
test {/fig_17_register_15/pc} F0F0 -radix hex

run 30ps
test {/fig_17_register_15/pc} F0F0 -radix hex

isim force add {/fig_17_register_15/cchld} 1 -radix bin
isim force add {/fig_17_register_15/incoming_data} 3D28 -radix hex

run 10ps
test {/fig_17_register_15/pc} F0F0 -radix hex

run 30ps
test {/fig_17_register_15/pc} F0F0 -radix hex

isim force add {/fig_17_register_15/cchld} 0 -radix bin

run 10ps
test {/fig_17_register_15/pc} 3D28 -radix hex

isim force add {/fig_17_register_15/enable} 0 -radix bin

run 10ps
test {/fig_17_register_15/pc} 0ABC -radix hex

isim force add {/fig_17_register_15/loopen} 0 -radix bin

run 10ps
test {/fig_17_register_15/pc} 0ABD -radix hex

run 30ps
test {/fig_17_register_15/pc} 0AC0 -radix hex

isim force add {/fig_17_register_15/reset} 1 -radix bin

run 10ps
test {/fig_17_register_15/pc} 0000 -radix hex





























