#math:space/_mult
# 空间乘法：空间的每个格子扩大到输入空间
# 输入执行者空间对象

scoreboard players operation space_stepx int = @s space_lenx
scoreboard players operation space_stepx int *= @s space_stepx
scoreboard players operation space_stepy int = @s space_leny
scoreboard players operation space_stepy int *= @s space_stepy
scoreboard players operation space_stepz int = @s space_lenz
scoreboard players operation space_stepz int *= @s space_stepz