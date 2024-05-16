.PHONY: build runserver runclient

build: a.out

a.out : epoll_blocking_demo.cpp
	g++ -o $@ $+

runserver : build
	chmod +x a.out && ./a.out 127.0.0.1 9944

runclient : build
	nc 127.0.0.1 9944

