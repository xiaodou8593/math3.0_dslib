#math:set/test/clear
# 在聊天栏调用

tellraw @a "--- math:set clear test ---"

scoreboard players set set_n int 3
data modify storage math:io set set value {"abc":0b, "123":0b, "math":0b}
data modify storage math:io set_keys set value [{key:"abc"}, {key:"123"}, {key:"math"}]

function math:set/_clear
function math:set/_print

scoreboard players set set_n int 0
data modify storage math:io set set value {}
data modify storage math:io set_keys set value []

function math:set/_clear
function math:set/_print