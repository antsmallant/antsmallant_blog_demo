.PHONY: default clean run1 run2 runlua

LUADIR="../../3rd/lua-5.3.6/"
LUAINC="../../3rd/lua-5.3.6/install/include"
LUALIB="../../3rd/lua-5.3.6/install/lib"
LUABIN="../../3rd/lua-5.3.6/install/bin/lua"

default: clib.so

lua:
	cd $(LUADIR) && make && make local

clib.so: clib.c
	gcc -fPIC -shared -g -o $@ $^ -I $(LUAINC) -L $(LUALIB)

run1: clib.so
	$(LUABIN) test_co_1.lua

run2: clib.so
	$(LUABIN) test_co_2.lua

runlua:
	$(LUABIN)

clean:
	rm -f clib.so