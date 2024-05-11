#math:string/test/insert
# 聊天栏调用

tellraw @a "--- math:string insert test ---"

data modify storage math:io input set value "test_hi_cber"
function math:string/_from_raw

scoreboard players set inp int 5
function math:string/_next_i

scoreboard players set inp int 2
function math:string/_slice
function math:rstring/_print

data modify storage math:io input set value "hello"
function math:pstring/_from_raw
function math:string/_insert

function math:string/_rephi
function math:string/_print