VER=0.8
DIST=delta$(VER)
PROGS=delta
SRCS=delta.c
OBJS=$(SRCS:.c=.o) 
CC=gcc

LDFLAGS=-static -lm
CFLAGS=-O3 -Wall -std=c99 -I. -DVER=$(VER)

all: $(PROGS)

${PROGS}: $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

.o:
	$(CC) $(CFLAGS) $< -o $@ 

clean:
	rm -f $(PROGS)
	rm -f *.o
	rm -f *.rules
	rm -f *.chars
	rm -f *.blocks
	rm -f *.expansion

dist:
	$(MAKE) clean
	cd .. && tar czvf $(DIST).tar.gz $(DIST)/

test: 
	$(MAKE)
	./${PROGS} -i example 
