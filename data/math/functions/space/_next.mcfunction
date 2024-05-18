#math:space/_next
# 把执行者实体迭代到空间的下一个位置
# 输入执行者实体
# 输出<res,int>表示是否迭代到头

scoreboard players set res int 0
execute store result score stempx int run data get entity @s Pos[0]
execute store result entity @s Pos[0] double 1 run scoreboard players operation stempx int += space_stepx int
scoreboard players operation stempx int -= space_startx int
scoreboard players operation stempx int /= space_stepx int
execute if score stempx int >= space_lenx int run function math:space/next/up_y