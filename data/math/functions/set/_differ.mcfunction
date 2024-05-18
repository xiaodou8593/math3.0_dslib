#math:set/_differ
# 计算set去除iset的差集，结果储存在set中
# 输入storage math:io iset

# 如果集合无元素则截断
execute unless score set_n int matches 1.. run return 0

# 把set_keys的每一项放进iset_keys检查
scoreboard players operation ssloop int = set_n int
function math:set/differ/loop with storage math:io {}

execute store result score set_n int run data get storage math:io set_keys