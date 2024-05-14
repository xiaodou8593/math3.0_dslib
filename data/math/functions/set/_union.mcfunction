#math:set/_union
# 计算set和iset的并集，结果储存在set中，键相同时，iset的值覆盖set的值
# 输入storage math:io iset

# 如果集合无元素则截断
execute unless score set_n int matches 1.. run return run function math:set/union/merge

# 对set_keys和iset_keys计算差集，获取差集长度
scoreboard players operation ssloop int = set_n int
function math:set/union/loop with storage math:io {}
execute store result score set_n int run data get storage math:io set_keys

function math:set/union/merge