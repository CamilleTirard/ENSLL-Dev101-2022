local maVariable = 23
maVariable = 12
maVariable = "Hello World!" -- en Lua, il est possible de changer de type pour une même variable

local a = 3+2
local b = 2*5
local c = "Hello,"..."World!"

print(c) 

local foo = tostring(3)
print(foo)

local bar = tonumber("3")
print(bar)

local myType = type(foo)
print(foo)