#math:compound/_new_key
# 插入新键，并返回这个键是否已经存在
# 输入macro storage math:io {key}
# 输出<res,int>

$execute store result score res int if data storage math:io compound.$(key)
execute if score res int matches 1 run return 0
$data modify storage math:io compound.$(key) set value 0b