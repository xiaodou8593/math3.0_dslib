#math:set/test/list_to
# 在聊天栏调用

tellraw @a "--- math:set list_to test ---"

data modify storage math:io hash_func set value "math:compound/hash/self"
data modify storage math:io list set value ["123","456","789"]
scoreboard players set list_n int 3
function math:set/_list_to
function math:set/_print_raw

data modify storage math:io hash_func set value "math:compound/hash/self"
data modify storage math:io list set value [["abc"],[123]]
scoreboard players set list_n int 2
function math:set/_list_to
function math:set/_print_raw

data modify storage math:io hash_func set value "math:compound/hash/key_string"
data modify storage math:io list set value [{key:"123"},{key:"123"},{key:123b}]
scoreboard players set list_n int 3
function math:set/_list_to
function math:set/_print_raw

data modify storage math:io hash_func set value "math:compound/hash/key"
data modify storage math:io list set value [{key:[I;1343231,-342938,72345456,928194],value:"Hello"},{key:[I;3401223,-948283108,-2139443334,-23789429],value:"World"}]
scoreboard players set list_n int 2
function math:set/_list_to
function math:set/_print_raw


data modify storage math:io list set value []
scoreboard players set list_n int 0
function math:set/_list_to
function math:set/_print_raw