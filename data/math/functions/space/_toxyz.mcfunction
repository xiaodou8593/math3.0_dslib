#math:space/_toxyz
# 由空间索引计算空间位置
# 输入<inp,int>
# 输出{<x,int>, <y,int>, <z,int>}

execute store result score y int run scoreboard players operation z int = inp int
scoreboard players operation z int /= space_lenxy int
execute store result score x int run scoreboard players operation y int %= space_lenxy int
scoreboard players operation y int /= space_lenx int
scoreboard players operation x int %= space_lenx int

scoreboard players operation x int *= space_stepx int
scoreboard players operation y int *= space_stepy int
scoreboard players operation z int *= space_stepz int

scoreboard players operation x int += space_startx int
scoreboard players operation y int += space_starty int
scoreboard players operation z int += space_startz int

scoreboard players operation x int *= 10000 int
scoreboard players operation y int *= 10000 int
scoreboard players operation z int *= 10000 int