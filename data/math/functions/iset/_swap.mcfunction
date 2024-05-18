#math:iset/_swap

data modify storage math:io temp set from storage math:io set
data modify storage math:io set set from storage math:io iset
data modify storage math:io iset set from storage math:io temp

data modify storage math:io temp set from storage math:io set_keys
data modify storage math:io set_keys set from storage math:io iset_keys
data modify storage math:io iset_keys set from storage math:io temp

scoreboard players operation set_n int >< iset_n int