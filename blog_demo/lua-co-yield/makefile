.PHONY: default clib lua test1 test2 runlua clean

LUADIR="../../3rd/lua-5.3.6/"
LUAINC="../../3rd/lua-5.3.6/install/include"
LUALIB="../../3rd/lua-5.3.6/install/lib"
LUABIN="../../3rd/lua-5.3.6/install/bin/lua"

default: clib

lua:
	cd $(LUADIR) && make && make local

clib: clib.so

clib.so: clib.c
	gcc -fPIC -shared -g -o $@ $^ -I $(LUAINC) -L $(LUALIB)

test1: clib
	@$(LUABIN) test_co_1.lua

test2: clib
	@$(LUABIN) test_co_2.lua

test3: clib
	@$(LUABIN) test_co_3.lua

runlua:
	@$(LUABIN)

clean:
	rm -f clib.so