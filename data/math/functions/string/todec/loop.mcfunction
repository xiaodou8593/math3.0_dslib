#math:string/todec/loop
# math:string/_todec调用

$function math:string/todec/chars/$(char)

data remove storage math:io temp[0]
execute if data storage math:io temp[0] run function math:string/todec/loop with storage math:io temp[0]