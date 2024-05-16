.PHONY: build runserver runclient

build: epoll_server

epoll_server : epoll_server.cpp
	g++ -o $@ $+

runserver : build
	chmod +x epoll_server && ./epoll_server 127.0.0.1 9933

runclient : build
	nc 127.0.0.1 9933

