#include <stdlib.h>
#include <stdio.h>
#include <lua.h>
#include <lauxlib.h>

static int f1(lua_State* L) {
    printf("clib.f1: before yield\n");

    lua_pushstring(L, "yield from clib.f1");
    lua_yield(L, 1);
    
    printf("clib.f1: after yield\n");

    return 0;
}

int f2_after_yield(lua_State* L, int status, lua_KContext ctx) {
    printf("clib.f2: after yield\n");
    return 0;
}

static int f2(lua_State* L) {
    printf("clib.f2: before yield\n");

    lua_pushstring(L, "yield from clib.f2");
    lua_yieldk(L, 1, 0, f2_after_yield);
    
    return 0;
}

static int f3(lua_State* L) {
    printf("enter f3\n");
    lua_getglobal(L, "lua_func_for_c");
    lua_call(L, 0, 0); // 调用 lua 脚本里定义的 lua 函数： lua_func_for_c
    printf("leave f3\n");
    return 0;
}

LUAMOD_API int luaopen_clib(lua_State* L) {
    luaL_Reg funcs[] = {
        {"f1", f1},
        {"f2", f2},
        {"f3", f3},
        {NULL, NULL}
    };
    luaL_newlib(L, funcs);
    return 1;
}