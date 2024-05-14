#math:set/_print
# 输出列表

tellraw @a "math:set {"
tellraw @a ["    set_n: ", {"score":{"name":"set_n","objective":"int"}}, ","]
tellraw @a ["    set: ", {"nbt":"set","storage":"math:io"}]
tellraw @a "}"