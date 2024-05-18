#math:space/_tounit
# 由空间索引计算单位空间位置(step为1)
# 输入<inp,int>
# 输入执行者实体
# 输出执行者实体坐标

execute store result score stempy int run scoreboard players operation stempz int = inp int
scoreboard players operation stempz int /= space_lenxy int
execute store result score stempx int run scoreboard players operation stempy int %= space_lenxy int
scoreboard players operation stempy int /= space_lenx int
scoreboard players operation stempx int %= space_lenx int

execute store result storage math:io xyz[0] double 1 run scoreboard players operation stempx int += space_startx int
execute store result storage math:io xyz[1] double 1 run scoreboard players operation stempy int += space_starty int
execute store result storage math:io xyz[2] double 1 run scoreboard players operation stempz int += space_startz int
data modify entity @s Pos set from storage math:io xyz