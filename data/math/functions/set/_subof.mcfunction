#math:set/_subof
# 检查一个iset是否为set子集
# 输出<res,int>

data modify storage math:io temp set from storage math:io set
data modify storage math:io temp merge from storage math:io iset
execute store result score res int run data get storage math:io temp
execute store result score res int if score res int = set_n int