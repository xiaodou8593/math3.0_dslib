#math:set/test/append
# 在聊天栏调用

tellraw @a "--- math:set append test ---"

# 初始化集合
scoreboard players set set_n int 2
data modify storage math:io set set value {"abc":def, ".1234":123}
data modify storage math:io set_keys set value [{key:"abc"}, {key:".1234"}]

# 将带有key的compound添加进集合
data modify storage math:io hash_func set value "math:compound/hash/key"
data modify storage math:io input set value {key:"something",value:123}
function math:set/_append
function math:set/_print

# 覆盖集合元素
#data modify storage math:io hash_func set value "math:compound/hash/key"
data modify storage math:io input set value {key:"something",value:456}
function math:set/_append
function math:set/_print

# 将数字字符串化后添加进集合
function math:set/_clear
data modify storage math:io hash_func set value "math:compound/hash/self_string"
data modify storage math:io input set value 0.1234d
function math:set/_append
function math:set/_print

# 将数字宏转义后添加进集合
function math:set/_clear
data modify storage math:io hash_func set value "math:compound/hash/self"
data modify storage math:io input set value 0.1234d
function math:set/_append
function math:set/_print

# 添加字符串
function math:set/_clear
data modify storage math:io hash_func set value "math:compound/hash/self"
data modify storage math:io input set value "aaa"
function math:set/_append
function math:set/_print

# 将compound宏转义添加进集合
function math:set/_clear
#data modify storage math:io hash_func set value "math:compound/hash/self"
data modify storage math:io input set value {key:"something",value:456}
function math:set/_append
function math:set/_print

return 0
# 加入集合的字符串中应该避免出现单引号（错误示范）
#data modify storage math:io hash_func set value "math:compound/hash/self"
data modify storage math:io input set value "ma'am"
function math:set/_append

# 可以给这类字符串添加键
data modify storage math:io hash_func set value "math:compound/hash/key"
data modify storage math:io input set value {key:123456,value:"ma'am"}
function math:set/_append
function math:set/_print