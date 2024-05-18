#math:space/_add_z
# 沿着z轴拼接空间
# 输入执行者空间对象

scoreboard players operation stempz int = @s space_lenz
scoreboard players operation stempz int *= @s space_stepz
scoreboard players operation stempz int /= space_lenz int
scoreboard players operation space_lenz int += stempz int