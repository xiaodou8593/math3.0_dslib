#math:string/_next_i
# 字符串正向转动n个字符
# 输入<inp,int>

execute if score inp int matches 1.. run function math:string/next_loop
scoreboard players operation string_phi int %= string_n int