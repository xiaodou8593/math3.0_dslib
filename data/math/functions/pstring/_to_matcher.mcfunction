#math:pstring/_to_matcher
# 临时对象转换成一组字符匹配器
# 输出storage math:io result

data modify storage math:io result set value []
data modify storage math:io temp set from storage math:io pstring_chars
execute if data storage math:io temp[0] run function math:pstring/to_matcher/loop with storage math:io temp[0]