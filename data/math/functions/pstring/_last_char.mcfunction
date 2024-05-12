#math:pstring/_last_char
# 字符串反向转动

data modify storage math:io pstring_chars prepend from storage math:io pstring_chars[-1]
data remove storage math:io pstring_chars[-1]
scoreboard players remove pstring_phi int 1
scoreboard players operation pstring_phi int %= pstring_n int