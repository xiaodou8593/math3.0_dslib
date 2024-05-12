#math:pstring/next_loop
# math:pstring/_next_i调用

data modify storage math:io pstring_chars append from storage math:io pstring_chars[0]
data remove storage math:io pstring_chars[0]
scoreboard players add pstring_phi int 1

scoreboard players remove inp int 1
execute if score inp int matches 1.. run function math:pstring/next_loop