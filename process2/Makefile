NCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS= 
CFLAGS= -O3 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= -lpthread -lrt
LDFLAGS= -pthread


PRODUCT=writer

HFILES=
CFILES= writer.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:${PRODUCT}

clean:
	-rm -f *.o *.NEW *~ *.d
	-rm -f ${PRODUCT} ${GARBAGE}

writer_o: writer_o.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ writer_o.o $(LIBS)

depend:

.c.o:
	$(CC) -MD $(CFLAGS) -c $<
