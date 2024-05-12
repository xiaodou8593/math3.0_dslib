#math:string/test/startswith
# 聊天栏调用

tellraw @a "--- math:string startswith test ---"

data modify storage math:io input set value "test_hi_cber"
function math:string/_from_raw

data modify storage math:io input set value "hi_cber"
function math:pstring/_from_raw

function math:string/_startswith
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 5
function math:string/_next_i

function math:string/_startswith
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]