#math:set/remove/process
# 输入键macro storage math:io {key}, 要移除的键storage math:io input

# 删除compound中的key
$data remove storage math:io set.'$(key)'

# 删除set_keys列表中的key
scoreboard players operation ssloop int = set_n int
function math:set/remove/loop
