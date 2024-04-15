#math:compound/get_keys/main

execute store result score ssloop int run data get storage math:io compound
execute if score ssloop int matches 1.. run function math:compound/get_keys/loop
kill @s