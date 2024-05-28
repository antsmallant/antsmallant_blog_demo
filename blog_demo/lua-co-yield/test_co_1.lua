local co = require "coroutine"
local clib = require "clib"

local co2 = co.create(function()
    clib.f1()
end)

-- 第一次 resume
local ok1, ret1 = co.resume(co2)
print("in lua:", ok1, ret1)

-- 第二次 resume
local ok2, ret2 = co.resume(co2)
print("in lua:", ok2, ret2)