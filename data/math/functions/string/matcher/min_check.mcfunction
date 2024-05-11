#math:string/matcher/min_check
# math:string/matcher/next_char调用

execute if score sstemp_min int matches 1.. run scoreboard players set res int 0

function math:string/matcher/next
execute if score sssloop int matches 1.. run function math:string/matcher/min_check