#math:string/_insert
# 在前面插入字符串
# 输入pstring

data modify storage math:io temp set from storage math:io pstring_chars
execute if data storage math:io temp[0] run function math:string/insert_loop

execute store result score string_n int run data get storage math:io string_chars[]