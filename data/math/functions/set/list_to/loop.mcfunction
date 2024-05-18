#math:set/list_to/loop

data modify storage math:io input set from storage math:io temp[0]

function math:set/run_hash with storage math:io {}
function math:set/list_to/new_key with storage math:io {}

data remove storage math:io temp[0]

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:set/list_to/loop