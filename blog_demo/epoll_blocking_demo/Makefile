.PHONY: build runserver runclient

build: epoll_blocking_demo

epoll_blocking_demo : epoll_blocking_demo.cpp
	g++ -o $@ $+

runserver : build
	chmod +x epoll_blocking_demo && ./epoll_blocking_demo 127.0.0.1 9944

runclient : build
	nc 127.0.0.1 9944

