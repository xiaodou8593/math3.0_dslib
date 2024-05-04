#math:list/iter_loop

data modify storage math:io input set from storage math:io list[0]
$function $(callback)

data modify storage math:io list append from storage math:io list[0]
data remove storage math:io list[0]
scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:list/iter_loop with storage math:io {}