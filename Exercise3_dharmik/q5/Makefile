INCLUDE_DIRS = 
LIB_DIRS = 
CC=gcc

CDEFS= 
CFLAGS= -O3 -g $(INCLUDE_DIRS) $(CDEFS)
LIBS= -lpthread -lrt
LDFLAGS= -pthread


<<<<<<< HEAD:Exercise3_dharmik/q5/Makefile
PRODUCT=q5

HFILES=
CFILES= q5.c
=======
PRODUCT=q2

HFILES=
CFILES= q2.c
>>>>>>> 0dc240ad766ffb0dd0b52ecfb32d0635e126c057:Exercise3/q2/Makefile

SRCS= ${HFILES} ${CFILES}
OBJS= ${CFILES:.c=.o}

all:${PRODUCT}

clean:
	-rm -f *.o *.NEW *~ *.d
	-rm -f ${PRODUCT} ${GARBAGE}
	 find . -type f | xargs -n 5 touch
	 rm -rf $(OBJS)


<<<<<<< HEAD:Exercise3_dharmik/q5/Makefile
q3_o: q5_o.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ q5_o.o $(LIBS)
=======
q2_o: q2_o.o
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ q2_o.o $(LIBS)
>>>>>>> 0dc240ad766ffb0dd0b52ecfb32d0635e126c057:Exercise3/q2/Makefile

depend:

.c.o:
	$(CC) -MD $(CFLAGS) -c $<
