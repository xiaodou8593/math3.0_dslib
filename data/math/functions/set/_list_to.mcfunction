#math:set/_list_to
# 将列表转化为集合
# 输入storage math:io list，哈希规则函数storage math:io hash_func

execute unless score list_n int matches 1.. run return run function math:set/_clear

data modify storage math:io set set value {}
data modify storage math:io set_keys set value []

data modify storage math:io temp set from storage math:io list
execute store result score ssloop int run scoreboard players operation set_n int = list_n int
function math:set/list_to/loop

