#math:string/matcher/next
# math:string/matcher/loop调用
# math:string/matcher/check调用
# math:string/matcher/next_char调用
# math:string/matcher/min_check调用

data modify storage math:io input append from storage math:io input[0]
data remove storage math:io input[0]

execute store result score sstemp_min int run data get storage math:io input[0].range[0]
execute store result score sstemp_max int run data get storage math:io input[0].range[1]
scoreboard players set sstemp_cur int 0
scoreboard players remove sssloop int 1
scoreboard players add sstemp_phi int 1