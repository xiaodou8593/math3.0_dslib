#math:space/_add_y
# 沿着y轴拼接空间
# 输入执行者空间对象

scoreboard players operation stempy int = @s space_leny
scoreboard players operation stempy int *= @s space_stepy
scoreboard players operation stempy int /= space_leny int
scoreboard players operation space_leny int += stempy int

#更新面积参数
scoreboard players operation space_lenxy int = space_lenx int
scoreboard players operation space_lenxy int *= space_leny int