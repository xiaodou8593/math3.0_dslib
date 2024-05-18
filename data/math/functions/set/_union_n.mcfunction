#math:set/_union_n
# 计算set和iset的并集长度
# 输入storage math:io iset

data modify storage math:io temp set from storage math:io set
data modify storage math:io temp merge from storage math:io iset
execute store result score res int run data get storage math:io temp