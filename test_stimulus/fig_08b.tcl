#Clear everything and start the simulator from 0
restart

isim force add {/fig_08b/clk} 1 -radix bin -value 0 -radix bin -time 5 ps -repeat 10 ps
isim force add {/fig_08b/reset_n} 0 -radix bin
isim force add {/fig_08b/bpr} 0 -radix bin
isim force add {/fig_08b/ldram_n} 1 -radix bin
isim force add {/fig_08b/ramd} 0 -radix bin
isim force add {/fig_08b/dump} 0 -radix bin
isim force add {/fig_08b/col} 0 -radix bin
isim force add {/fig_08b/ldpix_n} 1 -radix bin

run 10 ps
test {/fig_08b/data} x -radix bin

isim force add {/fig_08b/reset_n} 1 -radix bin

run 10 ps
test {/fig_08b/data} x -radix bin

isim force add {/fig_08b/dump} 1 -radix bin

run 10 ps
test {/fig_08b/data} 0 -radix bin

isim force add {/fig_08b/dump} 0 -radix bin

run 10 ps
test {/fig_08b/data} 0 -radix bin

isim force add {/fig_08b/col} 1 -radix bin
isim force add {/fig_08b/ldpix_n} 0 -radix bin

run 10 ps
test {/fig_08b/data} 0 -radix bin
test {/fig_08b/drawcolor} 1 -radix bin

isim force add {/fig_08b/ldpix_n} 1 -radix bin
isim force add {/fig_08b/dump} 1 -radix bin

run 10 ps
test {/fig_08b/data} 1 -radix bin
test {/fig_08b/drawcolor} 1 -radix bin

isim force add {/fig_08b/ldpix_n} 1 -radix bin
isim force add {/fig_08b/dump} 0 -radix bin
isim force add {/fig_08b/ldram_n} 0 -radix bin

run 10 ps
test {/fig_08b/data} 0 -radix bin

isim force add {/fig_08b/ldram_n} 1 -radix bin
isim force add {/fig_08b/ramd} 1 -radix bin

run 10 ps
test {/fig_08b/data} 0 -radix bin

































