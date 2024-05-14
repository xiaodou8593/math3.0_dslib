#math:set/_iset_to

data modify storage math:io set set from storage math:io iset
data modify storage math:io set_keys set from storage math:io iset_keys
scoreboard players operation set_n int = iset_n int