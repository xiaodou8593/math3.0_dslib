#math:string/test/find
# 聊天栏调用

tellraw @a "--- math:string find test ---"

data modify storage math:io input set value "test_8593_hi_3528_cber"
function math:string/_from_raw

# 数字匹配器
data modify storage math:io input set value []
data modify storage math:io input append from storage math:class string_matchers.num

function math:string/_find
scoreboard players operation inp int = res int
function math:string/_slice
function math:rstring/_todec
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]

function math:string/_find
scoreboard players operation inp int = res int
function math:string/_slice
function math:rstring/_todec
tellraw @a ["dec: ", {"score":{"name":"dec","objective":"int"}}]

function math:string/_find
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]