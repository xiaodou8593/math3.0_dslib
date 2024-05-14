#math:set/_new_key
# 插入值和解析后的键，并返回该键是否存在
# 输入键macro storage math:io {key}，键storage math:io key，值storage math:io input
# 输出<res,int>

execute store result score res int run function math:set/_keyof with storage math:io {}
$data modify storage math:io set.'$(key)' set from storage math:io input

execute if score res int matches 1 run return 0
data modify storage math:io set_keys append value {key:0b}
data modify storage math:io set_keys[-1].key set from storage math:io key
scoreboard players add set_n int 1