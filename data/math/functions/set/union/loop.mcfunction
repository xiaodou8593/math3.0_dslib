#math:set/union/loop
# 遍历转动set_keys, 如果key在iset_keys中就删除
# 处理set的第一个key

# 获取键，存入storage math:io key
data modify storage math:io key set from storage math:io set_keys[0].key

# 处理set的第一个key
function math:set/union/process

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:set/union/loop