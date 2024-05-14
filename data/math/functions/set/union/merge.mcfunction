#math:set/union/merge

data modify storage math:io set_keys append from storage math:io iset_keys[]
data modify storage math:io set merge from storage math:io iset
scoreboard players operation set_n int += iset_n int