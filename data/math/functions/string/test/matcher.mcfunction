#math:string/test/matcher
# 聊天栏调用

tellraw @a "--- math:string matcher test ---"

data modify storage math:io input set value "8593testcber"
function math:string/_from_raw

# 匹配器列表
data modify storage math:io input set value []
data modify storage math:io input append from storage math:class string_matchers.num
data modify storage math:io input append from storage math:class string_matchers.lowercase
data modify storage math:io input append from storage math:class string_matchers.num_
data modify storage math:io input append from storage math:class string_matchers.lowercase_
function math:string/_match
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

data modify storage math:io input set value "test_hi_cber"
function math:string/_from_raw

# 匹配器列表
data modify storage math:io input set value []
data modify storage math:io input append from storage math:class string_matchers.lowercase
function math:string/_match
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

scoreboard players set inp int 5
function math:string/_next_i
function math:string/_match
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]

data modify storage math:io input set value "test8593"
function math:string/_from_raw

# 匹配器列表
data modify storage math:io input set value []
data modify storage math:io input append from storage math:class string_matchers.num
data modify storage math:io input append from storage math:class string_matchers.lowercase
function math:string/_match
tellraw @a ["res: ", {"score":{"name":"res","objective":"int"}}]