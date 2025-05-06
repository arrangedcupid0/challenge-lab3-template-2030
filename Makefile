CC=g++
CFLAGS=

all: main

clean:
	rm player.o main

player.o: player.h player.cpp
	$(CC) $(CFLAGS) -c player.cpp

main: player.o
	$(CC) $(CFLAGS) -o main driver.o player.o
