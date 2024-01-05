local co = require "coroutine"
local clib = require "clib"

local co_b = co.create(function()
    print("enter co_b")
    clib.f1_v2()
    print("leave co_b")
end)

local ok, err = co.resume(co_b)
print(ok, err)

local ok, err = co.resume(co_b)
print(ok, err)