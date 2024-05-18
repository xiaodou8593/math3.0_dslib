#math:space/_repos
# 回到空间开始位置
# 输入执行者实体

execute store result storage math:io xyz[0] double 1 run scoreboard players get space_startx int
execute store result storage math:io xyz[1] double 1 run scoreboard players get space_starty int
execute store result storage math:io xyz[2] double 1 run scoreboard players get space_startz int
data modify entity @s Pos set from storage math:io xyz