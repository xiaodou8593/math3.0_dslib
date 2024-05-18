#math:space/_randnew
# 随机参数生成空间实体对象
# 输入执行坐标
# 输出storage math:io result
# 需要传入世界实体为执行者

data modify storage math:io result set value {step:[1,1,1],len:[0,0,0]}

execute align xyz run tp @s ~ ~ ~
data modify storage math:io result.start set from entity @s Pos

scoreboard players set min int 16
scoreboard players set max int 128
function math:_random
execute store result storage math:io result.len[0] int 1 run scoreboard players get random int
function math:_random
execute store result storage math:io result.len[1] int 1 run scoreboard players get random int
function math:_random
execute store result storage math:io result.len[2] int 1 run scoreboard players get random int

data modify storage math:io input set from storage math:io result
function math:space/_new