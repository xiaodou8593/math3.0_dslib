#math:set/_remove_key
# 直接删除集合compound中的键和值，可能误删
# 输入键macro storage math:io {key}

$data remove storage math:io set_keys[{key:$(key)}]
$data remove storage math:io set.'$(key)'