#math:string/test/todec
# 聊天栏调用

tellraw @a "--- math:string todec test ---"

data modify storage math:io input set value "test_00214748_hi_3648_cber_-"
function math:string/_from_raw
function math:string/_todec

tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]