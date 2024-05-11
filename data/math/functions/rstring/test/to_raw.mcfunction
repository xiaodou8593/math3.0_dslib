#math:rstring/test/to_raw
# 聊天栏调用

tellraw @a "--- math:rstring to_raw test ---"

data modify storage math:io rstring_chars set value [{char:"a"},{char:"b"},{char:"c"}]
scoreboard players set rstring_n int 3
scoreboard players set rstring_phi int 0
function math:rstring/_print
function math:rstring/_to_raw
tellraw @a ["result: ", {"nbt":"result","storage":"math:io"}]