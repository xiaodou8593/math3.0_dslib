#math:set/_differ_n
# 计算set去除iset的差集长度
# 输入storage math:io iset

# 计算并集长度
data modify storage math:io temp set from storage math:io set
data modify storage math:io temp merge from storage math:io iset
execute store result score res int run data get storage math:io temp

scoreboard players operation res int -= iset_n int