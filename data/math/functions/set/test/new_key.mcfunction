#math:set/test/new_key
# 在聊天栏调用

tellraw @a "--- math:set new_key test ---"

# 初始化集合
scoreboard players set set_n int 2
data modify storage math:io set set value {"abc":abc, "math":math}
data modify storage math:io set_keys set value [{key:"abc"}, {key:"math"}]

# 将元素添加进集合
data modify storage math:io input set value "0.123"
data modify storage math:io key set value "0.123"
function math:set/_new_key with storage math:io {}

data modify storage math:io input set value "0.123"
data modify storage math:io key set value "0.123"
function math:set/_new_key with storage math:io {}
function math:set/_print_raw

data modify storage math:io input set value 0.123
function math:compound/hash/self
function math:set/_new_key with storage math:io {}
function math:set/_print_raw

data modify storage math:io input set value "test"
function math:compound/hash/self
function math:set/_new_key with storage math:io {}
function math:set/_print_raw

# 将值中的key转义后套一层单引号作为set的compound键
data modify storage math:io input set value {key:233.0d,value:233}
function math:compound/hash/key
function math:set/_new_key with storage math:io {}
function math:set/_print_raw

return 0
# 字符串键中应该避免出现单引号（错误示范）
data modify storage math:io input set value "ma'am"
function math:compound/hash/self
function math:set/_new_key with storage math:io {}

# 可以给这类字符串添加键
data modify storage math:io input set value {key:123456,value:"ma'am"}
function math:compound/hash/key
function math:set/_new_key with storage math:io {}
function math:set/_print_raw