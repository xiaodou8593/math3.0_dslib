#math:list/_from_raw
# 原生字符串转换为临时对象
# 输入storage math:io input

scoreboard players set list_phi int 0
data modify storage math:io list set value []
execute store result score list_n int run data get storage math:io input

# 进入循环
scoreboard players operation ssloop int = list_n int
execute if score ssloop int matches 1.. run function math:list/raw_loop