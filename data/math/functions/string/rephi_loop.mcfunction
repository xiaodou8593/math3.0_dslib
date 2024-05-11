#math:string/rephi_loop
# math:string/_rephi调用

data modify storage math:io string_chars prepend from storage math:io string_chars[-1]
data remove storage math:io string_chars[-1]

scoreboard players remove string_phi int 1
execute if score string_phi int matches 1.. run function math:string/rephi_loop