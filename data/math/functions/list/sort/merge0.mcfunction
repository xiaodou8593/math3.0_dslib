#math:list/sort/merge0
scoreboard players operation stemp int /= 2 int
data modify storage math:io rec[0].input set value []
execute if score stemp int matches 1.. run function math:list/sort/loop0
function math:list/sort/rec0
data modify storage math:io rec[0].temp set from storage math:io rec[0].result

data modify storage math:io rec[0].input set from storage math:io rec[1].input
function math:list/sort/rec0

data modify storage math:io rec[1].result set value []
execute store result score stemp0 int run data get storage math:io rec[0].temp
execute store result score stemp1 int run data get storage math:io rec[0].result
data modify storage math:io cmp.a set from storage math:io rec[0].temp[0]
data modify storage math:io cmp.b set from storage math:io rec[0].result[0]
execute if score stemp0 int matches 1.. if score stemp1 int matches 1.. run function math:list/sort/mloop0 with storage math:io {}
execute if score stemp0 int matches 1.. run function math:list/sort/c0loop
execute if score stemp1 int matches 1.. run function math:list/sort/c1loop