#math:string/matcher/check
# math:string/matcher/loop调用

execute if score sstemp_cur int >= sstemp_min int run return run function math:string/matcher/next

# 匹配失败
scoreboard players set sssloop int 0
scoreboard players set res int 0