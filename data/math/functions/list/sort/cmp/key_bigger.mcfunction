#math:list/sort/cmp/key_bigger

execute store result score sstemp0 int run data get storage math:io cmp.a.key
execute store result score sstemp1 int run data get storage math:io cmp.b.key
execute store result score sres int if score sstemp0 int >= sstemp1 int