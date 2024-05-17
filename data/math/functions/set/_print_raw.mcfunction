#math:set/_print_raw
# 打印原始数据结构

tellraw @a "math:set {"
tellraw @a ["    set: ", {"nbt":"set","storage":"math:io"}, ","]
tellraw @a ["    set_keys: ", {"nbt":"set_keys","storage":"math:io"}]
tellraw @a ["    set_n: ", {"score":{"name":"set_n","objective":"int"}}, ","]
tellraw @a "}"