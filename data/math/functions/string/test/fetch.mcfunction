#math:string/test/fetch
# 聊天栏调用

tellraw @a "--- math:string fetch test ---"

data modify storage math:io input set value "test_hi_cber"
function math:string/_from_raw

scoreboard players set inp int 4
function math:string/_fetch
function math:rstring/_print

function math:string/_next_char

scoreboard players set inp int 2
function math:string/_fetch
function math:rstring/_print

function math:string/_next_char

scoreboard players set inp int 4
function math:string/_fetch
function math:rstring/_print

function math:string/_print