#math:list/dedup_string_loop

# 调用哈希规则函数
data modify storage math:io input set from storage math:io list[0]
$function $(hash_func)
# 哈希获取是否已经存在
function math:compound/_new_key with storage math:io {}
execute if score res int matches 0 run data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:list/dedup_string_loop with storage math:io {}