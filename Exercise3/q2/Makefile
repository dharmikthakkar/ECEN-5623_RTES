NCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS= 
CFLAGS= -O3 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= -lpthread -lrt
LDFLAGS= -pthread


PRODUCT=q2

HFILES=
CFILES= q2.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:${PRODUCT}

clean:
	-rm -f *.o *.NEW *~ *.d
	-rm -f ${PRODUCT} ${GARBAGE}
	 find . -type f | xargs -n 5 touch
	 rm -rf $(OBJS)


q2_o: q2_o.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ q2_o.o $(LIBS)

depend:

.c.o:
	$(CC) -MD $(CFLAGS) -c $<
