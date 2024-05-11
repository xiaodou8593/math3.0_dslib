#math:string/find_loop
# math:string/_find调用

function math:string/_match
execute if score res int matches 1.. run return 0

# 字符串转动
scoreboard players add string_phi int 1
data modify storage math:io string_chars append from storage math:io string_chars[0]
data remove storage math:io string_chars[0]

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:string/find_loop