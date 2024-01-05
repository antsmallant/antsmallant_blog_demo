local co = require "coroutine"
local clib = require "clib"

function lua_yield()
    print("enter lua_yield")
    co.yield()
    print("leave lua_yield")
end

local co_b = co.create(function()
    print("enter co_b")
    clib.f1()
    print("leave co_b")
end)

local ok, err = co.resume(co_b)
print(ok, err)