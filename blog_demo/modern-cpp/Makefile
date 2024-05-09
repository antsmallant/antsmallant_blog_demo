.PHONY: build run

build: move_constructor_demo

move_constructor_demo : move_constructor_demo.cpp
	g++ -o $@ $+ -std=c++14 

run : move_constructor_demo
	chmod +x move_constructor_demo && ./move_constructor_demo