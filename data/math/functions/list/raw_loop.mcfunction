#math:list/raw_loop

# 逐个添加字符
data modify storage math:io list append value {}
data modify storage math:io list[-1].char set string storage math:io input 0 1
data modify storage math:io input set string storage math:io input 1

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:list/raw_loop