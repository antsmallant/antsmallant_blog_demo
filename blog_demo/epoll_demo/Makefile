.PHONY: build runserver runclient

build: a.out

a.out : epoll_server.cpp
	g++ -o $@ $+

runserver : build
	chmod +x a.out && ./a.out 127.0.0.1 9934

runclient : build
	nc 127.0.0.1 9934

