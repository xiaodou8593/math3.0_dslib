#> math:set/remove/loop
# 遍历temp列表，删除完全匹配的元素，留下误删除元素

# 扫描每一项，如果完全匹配，则删除并跳出循环，如果不完全匹配就转动一次
data modify storage math:io temp set from storage math:io key
execute store success score sstemp int run data modify storage math:io temp set from storage math:io set_keys[0].key
execute if score sstemp int matches 0 run return run data remove storage math:io set_keys[0]

function math:set/keys_next

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:set/remove/loop