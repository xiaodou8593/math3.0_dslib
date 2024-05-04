#math:list/test/dedup

tellraw @a "--- list dedup test ---"

data modify storage math:io list set value []
data modify storage math:io list append value {name:"alice",key:5}
data modify storage math:io list append value {name:"bob",key:5}
data modify storage math:io list append value {name:"carl",key:8}
data modify storage math:io list append value {name:"doge",key:3}
data modify storage math:io list append value {name:"ethan",key:4}
data modify storage math:io list append value {name:"france",key:4}
data modify storage math:io list append value {name:"france",key:4}
execute store result score list_n int if data storage math:io list[]

# 根据元素本身哈希
data modify storage math:io hash_func set value "math:compound/hash/self"
function math:list/_dedup
function math:list/_print

# 根据元素key值哈希
data modify storage math:io hash_func set value "math:compound/hash/key"
function math:list/_dedup
function math:list/_print