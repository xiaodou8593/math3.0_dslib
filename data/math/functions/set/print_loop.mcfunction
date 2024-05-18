#math:set/print_loop
# 遍历转动set_keys, 把key对应的值添加进temp列表
# 需要输入macro storage math:io key处理set的第一个key

# 获取set的第一个值
data modify storage math:io temp append value {value:""}
$data modify storage math:io temp[-1].value set from storage math:io set.'$(key)'

# 转动keys列表
function math:set/keys_next

# 如果只有一个值，则跳出循环
execute if score ssloop int matches ..1 run return 0
scoreboard players remove ssloop int 1

# 获取键，存入storage math:io key
data modify storage math:io key set from storage math:io set_keys[0].key
function math:set/print_loop with storage math:io {}