NCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS= 
CFLAGS= -O3 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= -lpthread -lrt
LDFLAGS= -pthread


PRODUCT=clock_gettime

HFILES=
CFILES= clock_gettime.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:${PRODUCT}

clean:
	-rm -f *.o *.NEW *~ *.d
	-rm -f ${PRODUCT} ${GARBAGE}

clock_gettime_o: clock_gettime_o.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ clock_gettime_o.o $(LIBS)

depend:

.c.o:
	$(CC) -MD $(CFLAGS) -c $<
