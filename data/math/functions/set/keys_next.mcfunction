#math:set/keys_next
# 让key列表向右转动一次

data modify storage math:io set_keys append from storage math:io set_keys[0]
data remove storage math:io set_keys[0]