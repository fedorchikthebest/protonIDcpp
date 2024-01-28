CC = g++
COMPILE = ./src/main.cpp ./src/include/gost/*.cpp
OBJECT = ./build/main.out

all:
	mkdir -p build
	$(CC) $(COMPILE) -o $(OBJECT)