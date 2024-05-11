#math:pstring/_print
# 聊天栏输出字符串

data modify storage math:io temp set value []
data modify storage math:io temp append from storage math:io pstring_chars[].char
tellraw @a "math:pstring {"
tellraw @a ["    ",{"nbt":"temp","storage":"math:io","interpret":true},","]
tellraw @a ["    length: ",{"score":{"name":"pstring_n","objective":"int"}},","]
tellraw @a ["    phi: ",{"score":{"name":"pstring_phi","objective":"int"}}]
tellraw @a "}"