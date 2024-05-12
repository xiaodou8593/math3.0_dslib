#math:string/rephi_loop_neg
# math:string/_rephi调用

data modify storage math:io string_chars append from storage math:io string_chars[0]
data remove storage math:io string_chars[0]

scoreboard players add string_phi int 1
execute if score string_phi int matches ..-1 run function math:string/rephi_loop_neg