#math:compound/get_keys/loop

data modify entity @s text set value '{"nbt":"compound","storage":"math:io"}'
data modify storage math:io temp set from entity @s text
scoreboard players set sres int 1
scoreboard players set res int 0
function math:compound/get_keys/sloop
execute store result storage math:io temp int 1 run scoreboard players remove res int 1
function math:compound/get_keys/first with storage math:io {}
data modify storage math:io stemp set string storage math:io stemp 2
data modify storage math:io result append from storage math:io stemp
function math:compound/get_keys/remove with storage math:io {}

scoreboard players remove ssloop int 1
execute if score ssloop int matches 1.. run function math:compound/get_keys/loop