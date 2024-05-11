# math:pstring/to_matcher/loop
# math:pstring/_to_matcher调用

$data modify storage math:io result append value {"$(char)":1b, range:[1,1]}

data remove storage math:io temp[0]
execute if data storage math:io temp[0] run function math:pstring/to_matcher/loop with storage math:io temp[0]