#math:set/test/elmof
# 在聊天栏调用

tellraw @a "--- math:set elmof test ---"

scoreboard players set set_n int 3
data modify storage math:io set set value {"abc":"abc", "123":"123", "math":"math"}
data modify storage math:io set_keys set value [{key:"abc"}, {key:"123"}, {key:"math"}]

data modify storage math:io input set value "123"
function math:set/_elmof
tellraw @a ["result: ",{"score":{"name":"res","objective": "int"}}]

data modify storage math:io input set value "none"
function math:set/_elmof
tellraw @a ["result: ",{"score":{"name":"res","objective": "int"}}]