#function math:string/matcher/rephi
# function math:string/_match调用

data modify storage math:io input prepend from storage math:io input[-1]
data remove storage math:io input[-1]

scoreboard players remove sstemp_phi int 1
execute if score sstemp_phi int matches 1.. run function math:string/matcher/rephi