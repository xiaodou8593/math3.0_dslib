#math:marker_pool/_print

execute store result score stmp_cnt int if entity @e[tag=stmp_marker]
execute store result score stmp_pure_cnt int if entity @e[tag=stmp_marker_temp]
tellraw @a "math:marker_pool {"
tellraw @a ["    stmp_cnt: ", {"score":{"name":"stmp_cnt","objective":"int"}}, ","]
tellraw @a ["    stmp_pure_cnt: ", {"score":{"name":"stmp_pure_cnt","objective":"int"}}]
tellraw @a "}"