#math:list/_dedup
# 给列表去重
# 输入哈希规则函数storage math:io hash_func

data modify storage math:io compound set value {}
scoreboard players operation ssloop int = list_n int
execute if score ssloop int matches 1.. run function math:list/dedup_loop with storage math:io {}

execute store result score list_n int run data get storage math:io list