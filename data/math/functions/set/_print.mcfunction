#math:set/_print
# 打印集合

# 获取键，存入storage math:io key
data modify storage math:io temp set value []
data modify storage math:io key set from storage math:io set_keys[0].key
scoreboard players operation ssloop int = set_n int
execute if score ssloop int matches 1.. run function math:set/print_loop with storage math:io {}

tellraw @a "math:set {"
execute unless score set_n int matches 0 run tellraw @a ["    ",{"nbt":"temp[].value","storage":"math:io"}]
tellraw @a ["    set_n: ", {"score":{"name":"set_n","objective":"int"}}, ","]
tellraw @a "}"