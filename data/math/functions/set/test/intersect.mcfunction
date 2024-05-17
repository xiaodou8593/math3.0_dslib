#math:set/test/intersect
# 在聊天栏调用

tellraw @a "--- math:set intersect test ---"

# 非空无交集
scoreboard players set set_n int 3
data modify storage math:io set set value {"abc":"abc", "123":123, "math":"math"}
data modify storage math:io set_keys set value [{key:"abc"}, {key:"123"}, {key:"math"}]

scoreboard players set iset_n int 1
data modify storage math:io iset set value {"something":"something"}
data modify storage math:io iset_keys set value [{key:"something"}]

function math:set/_intersect
function math:set/_print

# 有交集，非子集，set_n元素较少
scoreboard players set set_n int 3
data modify storage math:io set set value {"abc":"abc", "123":123, "math":"math"}
data modify storage math:io set_keys set value [{key:"abc"}, {key:"123"}, {key:"math"}]

scoreboard players set iset_n int 4
data modify storage math:io iset set value {"something":"something", "123":123, "math":"math", "alpha":"alpha"}
data modify storage math:io iset_keys set value [{key:"something"}, {key:"123"}, {key:"math"}, {key:"alpha"}]

function math:set/_intersect
function math:set/_print

# 有交集，非子集，set_n元素较多
scoreboard players set set_n int 4
data modify storage math:io set set value {"something":"something", "123":123, "math":"math", "alpha":"alpha"}
data modify storage math:io set_keys set value [{key:"something"}, {key:"123"}, {key:"math"}, {key:"alpha"}]

scoreboard players set iset_n int 3
data modify storage math:io iset set value {"abc":"abc", "123":123, "math":"math"}
data modify storage math:io iset_keys set value [{key:"abc"}, {key:"123"}, {key:"math"}]

function math:set/_intersect
function math:set/_print

# set为iset子集
scoreboard players set set_n int 1
data modify storage math:io set set value {"math":"math"}
data modify storage math:io set_keys set value [{key:"math"}]

scoreboard players set iset_n int 2
data modify storage math:io iset set value {"math":"math", "alpha":"alpha"}
data modify storage math:io iset_keys set value [{key:"alpha"}, {key:"math"}]

function math:set/_intersect
function math:set/_print

# iset为set子集
scoreboard players set set_n int 2
data modify storage math:io set set value {"math":"math", "alpha":"alpha"}
data modify storage math:io set_keys set value [{key:"alpha"}, {key:"math"}]

scoreboard players set iset_n int 1
data modify storage math:io iset set value {"math":"math"}
data modify storage math:io iset_keys set value [{key:"math"}]

function math:set/_intersect
function math:set/_print

# 完全相同
scoreboard players set set_n int 2
data modify storage math:io set set value {"123":123, "math":"math"}
data modify storage math:io set_keys set value [{key:"123"}, {key:"math"}]

scoreboard players set iset_n int 2
data modify storage math:io iset set value {"123":123, "math":"math"}
data modify storage math:io iset_keys set value [{key:"123"}, {key:"math"}]

function math:set/_intersect
function math:set/_print

# 和空集合运算
scoreboard players set set_n int 4
data modify storage math:io set set value {"something":"something", "123":123, "math":"math", "alpha":"alpha"}
data modify storage math:io set_keys set value [{key:"something"}, {key:"123"}, {key:"math"}, {key:"alpha"}]

scoreboard players set iset_n int 0
data modify storage math:io iset set value {}
data modify storage math:io iset_keys set value []

function math:set/_intersect
function math:set/_print