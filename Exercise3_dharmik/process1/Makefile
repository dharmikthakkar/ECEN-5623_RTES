NCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS= 
CFLAGS= -O3 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= -lpthread -lrt
LDFLAGS= -pthread


PRODUCT=reader

HFILES=
CFILES= reader.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:${PRODUCT}

clean:
	-rm -f *.o *.NEW *~ *.d
	-rm -f ${PRODUCT} ${GARBAGE}

reader_o: reader_o.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ reader.o $(LIBS)

depend:

.c.o:
	$(CC) -MD $(CFLAGS) -c $<
