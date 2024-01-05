#include <stdlib.h>
#include <stdio.h>
#include <lua.h>
#include <lauxlib.h>

static int f1(lua_State* L) {
    printf("enter f1\n");
    lua_getglobal(L, "lua_yield");
    lua_call(L, 0, 0);
    printf("leave f1\n");
    return 0;
}

static int f1_v2(lua_State* L) {
    printf("enter f1_v2\n");
    lua_yield(L, 0);
    printf("leave f1_v2\n");
    return 0;
}

LUAMOD_API int luaopen_clib(lua_State* L) {
    luaL_Reg funcs[] = {
        {"f1", f1},
        {"f1_v2", f1_v2},
        {NULL, NULL}
    };
    luaL_newlib(L, funcs);
    return 1;
}