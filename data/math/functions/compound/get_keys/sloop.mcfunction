#math:compound/get_keys/sloop

data modify storage math:io stemp set string storage math:io temp 0 1
data modify storage math:io temp set string storage math:io temp 1
execute if data storage math:io {stemp:":"} run scoreboard players set sres int 0

scoreboard players add res int 1
execute if score sres int matches 1 run function math:compound/get_keys/sloop