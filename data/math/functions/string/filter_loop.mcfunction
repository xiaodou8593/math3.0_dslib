#math:string/filter_loop
# math:string/_filter调用

$data remove storage math:io string_chars[{char:"$(char)"}]

data remove storage math:io input[0]
data modify storage math:io char set from storage math:io input[0]
execute if data storage math:io input[0] run function math:string/filter_loop with storage math:io {}