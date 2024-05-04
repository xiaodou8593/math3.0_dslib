#math:list/_iter
# 遍历list的每个元素并执行回调函数
# 输入回调函数storage math:io callback

scoreboard players operation ssloop int = list_n int
execute if score ssloop int matches 1.. run function math:list/iter_loop with storage math:io {}