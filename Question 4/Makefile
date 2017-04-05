NCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS= 
CFLAGS= -O3 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= -lpthread -lrt
LDFLAGS= -pthread


PRODUCT=vx_works_to_linux_code

HFILES=
CFILES= vx_works_to_linux_code.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:${PRODUCT}

clean:
	-rm -f *.o *.NEW *~ *.d
	-rm -f ${PRODUCT} ${GARBAGE}

posix_clock: posix_clock.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ vx_works_to_linux_code.o $(LIBS)

depend:

.c.o:
	$(CC) -MD $(CFLAGS) -c $<
