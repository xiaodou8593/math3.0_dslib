#math:pstring/rephi_loop
# math:pstring/_rephi调用

data modify storage math:io pstring_chars prepend from storage math:io pstring_chars[-1]
data remove storage math:io pstring_chars[-1]

scoreboard players remove pstring_phi int 1
execute if score pstring_phi int matches 1.. run function math:pstring/rephi_loop