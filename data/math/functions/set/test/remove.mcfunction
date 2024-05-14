#math:set/test/remove
# 在聊天栏调用

tellraw @a "--- math:set remove test ---"

scoreboard players set set_n int 2
data modify storage math:io set set value {"0.123d":0.123d, "math":math}
data modify storage math:io set_keys set value [{key:"123"}, {key:"math"}]
data modify storage math:io hash_func set value "math:compound/hash/self_string"

data modify storage math:io input set value 123
function math:set/_remove
function math:set/_print

data modify storage math:io input set value 0.123d
function math:set/_remove
function math:set/_print

data modify storage math:io input set value math
function math:set/_remove
function math:set/_print

function math:set/_remove
function math:set/_print