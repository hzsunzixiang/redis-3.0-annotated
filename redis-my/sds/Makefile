.PHONY:clean all
CC=gcc
CFLAGS=-Wall -g
BIN=  sds
all:$(BIN)
%:%.c 
	$(CC) $(CFLAGS)  $< zmalloc.c -o $@
clean:
	rm -f *.o $(BIN)


