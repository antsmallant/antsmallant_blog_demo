local co = require "coroutine"
local clib = require "clib"

function lua_func_for_c()
    print("enter lua_func_for_c")
    co.yield()
    print("leave lua_func_for_c")
end

local co2 = co.create(function()
    print("enter co2")
    clib.f3()
    print("leave co2")
end)

local ok, err = co.resume(co2)
print(ok, err)