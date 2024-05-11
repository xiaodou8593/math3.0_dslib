#math:pstring/test/to_matcher
# 聊天栏调用

tellraw @a "--- math:pstring to_matcher test ---"

data modify storage math:io input set value "cber"
function math:pstring/_from_raw
function math:pstring/_to_matcher
tellraw @a ["result: ", {"nbt":"result","storage":"math:io"}]