INCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS= 
CFLAGS= -O3 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= -lpthread -lrt
LDFLAGS= -pthread


PRODUCT=q5

HFILES=
CFILES= q5.c

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:${PRODUCT}

clean:
	-rm -f *.o *.NEW *~ *.d
	-rm -f ${PRODUCT} ${GARBAGE}
	 find . -type f | xargs -n 5 touch
	 rm -rf $(OBJS)


q5_o: q5_o.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ q5_o.o $(LIBS)

depend:

.c.o:
	$(CC) -MD $(CFLAGS) -c $<
