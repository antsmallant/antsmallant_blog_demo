## 简介
本 demo 对应的文章是：[lua: attempt to yield across a C-call boundary 的原因分析](https://blog.antsmallant.top/2023/10/08/lua-coroutine-yield-across-a-c-call-boundary)  


## 运行说明
* 执行 `make lua` 编译本仓库 3rd/lua-5.3.6 的源码
* 执行 `make` 编译 clib
* 执行 `make test1` 运行 test_co_1.lua
* 执行 `make test2` 运行 test_co_2.lua