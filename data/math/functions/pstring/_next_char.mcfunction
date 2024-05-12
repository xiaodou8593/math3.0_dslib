#math:pstring/_next_char
# 字符串正向转动

data modify storage math:io pstring_chars append from storage math:io pstring_chars[0]
data remove storage math:io pstring_chars[0]
scoreboard players add pstring_phi int 1
scoreboard players operation pstring_phi int %= pstring_n int