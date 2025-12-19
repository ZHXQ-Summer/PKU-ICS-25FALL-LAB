# Makefile for Proxy Lab

CC = gcc
CFLAGS = -Wall -Wextra -Werror -O2 -g
LDFLAGS = -lpthread

OBJS = proxy.o cache.o csapp.o

TARGET = proxy

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS)

proxy.o: proxy.c csapp.h cache.h
	$(CC) $(CFLAGS) -c proxy.c

cache.o: cache.c cache.h csapp.h
	$(CC) $(CFLAGS) -c cache.c

csapp.o: csapp.c csapp.h
	$(CC) $(CFLAGS) -c csapp.c

clean:
	rm -f $(TARGET) $(OBJS) core *.tar.gz

handin: clean
	tar cvzf ../proxylab-handin.tar.gz ./*

.PHONY: all clean handin