#math:set/_elmof
# 检查一个元素是否在集合内
# 输入哈希规则函数storage math:io hash_func, 值storage math:io input
# 输出<res,int>

function math:set/run_hash with storage math:io {}

execute store result score res int run function math:set/_keyof with storage math:io {}