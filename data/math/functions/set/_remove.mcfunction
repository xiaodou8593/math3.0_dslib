#math:set/_remove
# 删除指定的元素
# 输入哈希规则函数storage math:io hash_func, 值storage math:io input

execute unless score set_n int matches 1.. run return 0

function math:set/run_hash with storage math:io {}

function math:set/remove/process with storage math:io {}

execute store result score set_n int run data get storage math:io set_keys