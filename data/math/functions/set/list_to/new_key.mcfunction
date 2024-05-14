#math:set/list_to/_new_key
# 仅插入值和解析后的键
# 输入键macro storage math:io {key}，键storage math:io key，值storage math:io input

$data modify storage math:io set.'$(key)' set from storage math:io input

data modify storage math:io set_keys append value {key:0b}
data modify storage math:io set_keys[-1].key set from storage math:io key