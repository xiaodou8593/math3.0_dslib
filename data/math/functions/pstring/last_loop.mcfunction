#math:pstring/last_loop
# math:pstring/_last_i调用

data modify storage math:io pstring_chars prepend from storage math:io pstring_chars[-1]
data remove storage math:io pstring_chars[-1]
scoreboard players remove pstring_phi int 1

scoreboard players remove inp int 1
execute if score inp int matches 1.. run function math:pstring/last_loop