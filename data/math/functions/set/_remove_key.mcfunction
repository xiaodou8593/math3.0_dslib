#math:set/remove_key
# 删除集合compound中的键以及键对应的值
# 输入键macro storage math:io {key}

$data remove storage math:io set_keys[{key:'$(key)'}]
$data remove storage math:io set.'$(key)'
execute store result score set_n int run data get storage math:io set_keys