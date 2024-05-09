.PHONY: build runserver runclient

build: epoll_http_server

epoll_http_server : epoll_http_server.cpp
	g++ -o $@ $+

runserver : epoll_http_server
	chmod +x epoll_http_server && ./epoll_http_server

runclient : epoll_http_server
	nc 127.0.0.1 8080