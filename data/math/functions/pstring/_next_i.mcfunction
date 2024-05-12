#math:pstring/_next_i
# 字符串正向转动n个字符
# 输入<inp,int>

execute if score inp int matches 1.. run function math:pstring/next_loop
scoreboard players operation pstring_phi int %= pstring_n int