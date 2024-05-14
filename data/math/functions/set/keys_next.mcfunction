#math:set/intersect/next
# 让key列表向右转动一次

data modify storage math:io set_keys append value {key:0b}
data modify storage math:io set_keys[-1].key set from storage math:io key
data remove storage math:io set_keys[0]