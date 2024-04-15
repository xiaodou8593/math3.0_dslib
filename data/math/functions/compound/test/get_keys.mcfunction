#math:compound/test/get_keys

tellraw @a "--- compound get_keys test ---"

data modify storage test:io test set value "abc"
data modify storage test:io key set value "123"
data modify storage test:io balabala set value "hi"
data modify storage test:io hi set value "hello"

data modify storage math:io compound set from storage test:io {}
function math:compound/_get_keys
tellraw @a ["result: ", {"nbt":"result","storage":"math:io"}]