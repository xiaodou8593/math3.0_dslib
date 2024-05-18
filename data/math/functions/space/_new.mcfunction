#math:space/_new
# 生成空间实体对象
# 输入storage math:io input

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["math_space","result"],CustomName:'{"text":"math_space"}'}

execute as @e[tag=result,limit=1] run function math:space/_be