#math:compound/_get_keys
# 获取compound所有键名
# 需要保证键名不出现引号和冒号
# 输入storage math:io compound
# 输出storage math:io result

data modify storage math:io result set value []
execute positioned 0 0 0 summon text_display run function math:compound/get_keys/main