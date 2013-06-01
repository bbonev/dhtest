# Makefile to generate dhtest

all: dhtest

CC=gcc
CFLAGS=-Wall -Wextra

dhtest: dhtest.o functions.o
	$(CC) dhtest.o functions.o -o dhtest

dhtest.o: dhtest.c headers.h
functions.o: dhtest.c headers.h

clean:
	rm -f dhtest functions.o dhtest.o
