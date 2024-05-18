#math:space/_add_x
# 沿着x轴拼接空间
# 输入执行者空间对象

scoreboard players operation stempx int = @s space_lenx
scoreboard players operation stempx int *= @s space_stepx
scoreboard players operation stempx int /= space_lenx int
scoreboard players operation space_lenx int += stempx int

#更新面积参数
scoreboard players operation space_lenxy int = space_lenx int
scoreboard players operation space_lenxy int *= space_leny int