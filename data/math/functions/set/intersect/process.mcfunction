#math:set/intersect/process
# 处理set_keys[0]

# 检查set的第一个key是否在iset中
execute store result score sstemp int run function math:iset/_keyof with storage math:io {}

# key在，则把set_keys往后移动一项
execute if score sstemp int matches 1 run return run function math:set/keys_next

# key不在，则删除set的第一个key
data remove storage math:io set_keys[0]
$data remove storage math:io set.$(key)