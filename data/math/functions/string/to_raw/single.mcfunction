#math:string/to_raw/single
# math:string/to_raw/loop调用

data modify storage math:io stemp[0].char_next set from storage math:io stemp[0].char
data modify storage math:io stemp[0].char set from storage math:io temp[-1].char
data remove storage math:io temp[-1]
function math:string/to_raw/merge with storage math:io stemp[0]