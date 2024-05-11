#math:list/rephi_loop
# math:list/_rephi调用

data modify storage math:io list prepend from storage math:io list[-1]
data remove storage math:io list[-1]

scoreboard players remove list_phi int 1
execute if score list_phi int matches 1.. run function math:list/rephi_loop