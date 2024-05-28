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

LUAMOD_API int luaopen_clib(lua_State* L) {
    luaL_Reg funcs[] = {
        {"f1", f1},
        {NULL, NULL}
    };
    luaL_newlib(L, funcs);
    return 1;
}