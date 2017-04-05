/**********************************************************
file: 	vx_works_to_linux_code.c
authors:Pavan Dhareshwar & Dharmik Thakkar
brief: 	Using the VxWorks RTOS implementation of
		LCM invariant scheduling as reference,
		the code replicates the Linux version of 
		the same.
credits:The general flow and the thread functions
		(Thread10, Thread20 and readTOD) implemented 
		in the Two tasks angstrom code by Nisheeth Bhat 
		has been used as reference in the implementation 
		of this code.

**********************************************************/

//#define VX_WORKS	/* If defined, VxWorks code is enabled */
#ifdef VX_Works
    #include "vxWorks.h"
    #include "semLib.h"
    #include "sysLib.h"
    #include "wvLib.h"
#else
    #define _GNU_SOURCE
    #include <stdio.h>
    #include <stdlib.h>
    #include <pthread.h>
    #include <semaphore.h>
    #include <sched.h>
    #include <unistd.h>
    #include <time.h>
    #include <syslog.h>
    #include <math.h>
    #include <sys/param.h>
    #include <sys/time.h>
#endif

#define FIB_LIMIT_FOR_32_BIT 47

#ifdef VX_WORKS
    SEM_ID semFib10, semFib20; 
    int abortTest = 0;
    UINT32 seqIterations = FIB_LIMIT_FOR_32_BIT;
    UINT32 idx = 0, jdx = 1;
    UINT32 fib = 0, fib0 = 0, fib1 = 1;
    UINT32 fib10Cnt=0, fib20Cnt=0;
    char ciMarker[]="CI";
#else
    pthread_attr_t main_sched_attr;
    struct sched_param main_sched_sp;
    pthread_t sequencer_thread;

    pthread_attr_t serv10_sched_attr;
    struct sched_param serv10_sched_sp;
    pthread_t serv10_thread;

    pthread_attr_t serv20_sched_attr;
    struct sched_param serv20_sched_sp;
    pthread_t serv20_thread;

    sem_t semFib10,semFib20;
    double start_1 = 0;
    int abortTest_10 = 0, abortTest_20 = 0;
    int seqIterations = FIB_LIMIT_FOR_32_BIT;
    int process2=1;
#endif

#define FIB_TEST(seqCnt, iterCnt)      \
for(idx=0; idx < iterCnt; idx++)    \
{                                   \
    fib = fib0 + fib1;               \
    while(jdx < seqCnt)              \
    {                                \
        fib0 = fib1;                  \
        fib1 = fib;                   \
        fib = fib0 + fib1;            \
        jdx++;                        \
    }                                \
}                                   \


/* Iterations, 2nd arg must be tuned for any given target type
** using windview
       
   170000 <= 10 msecs on Pentium at home
            
   Be very careful of WCET overloading CPU during first period of
   LCM.                     

*/

double readTOD(void)
{
    struct timeval tv;
    double ft=0.0;
    if ( gettimeofday(&tv, NULL) != 0 )
    {
        perror("readTOD");
        return 0.0;
    }
    else
    {
        ft = ((double)(((double)tv.tv_sec) + (((double)tv.tv_usec) /1000000.0)));
    }
    return ft;
}

#ifdef VX_WORKS
void fib10(void)
{
    while(!abortTest)
    {
        semTake(semFib10, WAIT_FOREVER);
        FIB_TEST(seqIterations, 170000);
        fib10Cnt++;
    }
}
#else
void *fib10(void *threadID)
{
    struct sched_param param;
    int policy;
    double stop = 0;
    double duration ;
    int idx = 0, jdx = 1;
    int fib = 0, fib0 = 0, fib1 = 1;
    unsigned long mask = 1; /* processor 0 */
    int thread10_run=0;
    /* bind process to processor 0 */
    while (!abortTest_10)
    {
        sem_wait(&semFib10) ;
        thread10_run++;
	printf("thread10_run=%d\n", thread10_run);
        if ( pthread_setaffinity_np ( pthread_self(), sizeof(mask), &mask ) < 0)
        {
            perror("pthread_setaffinity_np");
            // Estimate CPU clock rate
        }
    FIB_TEST(seqIterations, 702000);
    stop = readTOD();
    pthread_getschedparam(serv10_thread, &policy, &param);
    printf("Thread10 priority = %d and time stamp %lf msec\n",param.sched_priority,(double)(stop-start_1) * 1000);
    if(thread10_run>1) process2=0;
    }
}
#endif

#ifdef VX_WORKS
void fib20(void)
{
    while(!abortTest)
    {
        semTake(semFib20, WAIT_FOREVER);
        FIB_TEST(seqIterations, 340000);
        fib20Cnt++;
    }
}
#else
void *fib20(void *threadID)
{
    struct sched_param param;
    int policy;
    double stop = 0;
    int idx = 0, jdx = 1;
    int fib = 0, fib0 = 0, fib1 = 1;
    double duration ;
    while (!abortTest_20)
    {
        sem_wait(&semFib20) ;
        /* bind process to processor 0 */
        unsigned long mask = 1; /* processor 0 */
        if ( pthread_setaffinity_np(pthread_self(), sizeof(mask), &mask) < 0 )
        {
            perror("pthread_setaffinity_np");
        }
        FIB_TEST(seqIterations, 1404000);
        stop = readTOD();
        pthread_getschedparam(serv20_thread, &policy, &param);
        printf("Thread20 priority = %d and time stamp %lf msec\n", param.sched_priority, (double)(stop-start_1) *1000);
        }
}
#endif

void shutdown(void)
{
    abortTest_10 = 1;
    abortTest_20 = 1;
}

#ifdef VX_WORKS
void Sequencer(void)
{
    /* Just to be sure we have 1 msec tick and TOs */
    sysClkRateSet(1000);

    /* Set up service release semaphores */
    semFib10 = semBCreate(SEM_Q_FIFO, SEM_EMPTY);
    semFib20 = semBCreate(SEM_Q_FIFO, SEM_EMPTY);
    
    if(taskSpawn("serviceFib10", 21, 0, 8192, fib10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) == ERROR)
    {
        printf("Fib10 task spawn failed\n");
    }
    else
        printf("Fib10 task spawned\n");

    if(taskSpawn("serviceFib20", 22, 0, 8192, fib20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) == ERROR) 
    {
        printf("Fib20 task spawn failed\n");
    }
    else
        printf("Fib20 task spawned\n"); 
    
    /* Simulate the C.I. for S1 and S2 and mark on windview and log
    **      wvEvent first because Fib10 and Fib20 can preempt this task!
    **         */
    if(wvEvent(0xC, ciMarker, sizeof(ciMarker)) == ERROR)
        printf("WV EVENT ERROR\n");
    semGive(semFib10); semGive(semFib20);


    /* Sequencing loop for LCM phasing of S1, S2
    **    */
    while(!abortTest)
    {

        /* Basic sequence of releases after CI */
        taskDelay(20); semGive(semFib10);
        taskDelay(20); semGive(semFib10);
        taskDelay(10); semGive(semFib20);
        taskDelay(10); semGive(semFib10);
        taskDelay(20); semGive(semFib10);
        taskDelay(20);

        /* back to C.I.
        ** conditions, log
        ** event first due to
        ** preemption */
        if(wvEvent(0xC, ciMarker, sizeof(ciMarker)) == ERROR)
            printf("WV EVENT ERROR\n");
        semGive(semFib10); semGive(semFib20);
    }  
}
#else
void* Sequencer(void* threadID)
{
    int rc;
    useconds_t t_10,t_20;
    double stop_1 = 0;
    printf("Starting Sequencer\n");
    
    t_10 = 10000;
    t_20 = 20000;
    
    /* Set up service release semaphores */
    sem_init(&semFib10, 0, 1);
    sem_init(&semFib20, 0, 1);
    
    start_1 = readTOD();
    rc = pthread_create(&serv10_thread, &serv10_sched_attr, fib10, (void *)0);
    if (rc)
    {
        printf("ERROR; pthread_create() rc for Fib10 task is %d\n", rc);
        perror("pthread_create");
        exit(-1);
    }
    else
    {
        printf("Fib10 task spawned\n");
    }

    usleep (t_10);
    
    rc = pthread_create(&serv20_thread, &serv20_sched_attr, fib20, (void *)0);
    if (rc)
    {
        printf("ERROR; pthread_create() rc for Fib20 task is %d\n", rc);
        perror("pthread_create");
        exit(-1);
    }
    else
    {
        printf("Fib20 task spawned\n");
    }
    /* Simulation Sequence */
    /* Basic sequence of releases after CI */
    usleep (t_10);
    sem_post (&semFib10);
    usleep (t_10);
//    sem_post (&semFib20);
    usleep (t_10);
//    sem_post (&semFib10);
    usleep (t_10);
//    sem_post (&semFib20);
    usleep (t_10);
//    sem_post (&semFib10);
    usleep (t_10);
    while(process2);
    abortTest_20 = 1;
	sem_post (&semFib20);
    usleep (t_10);
	abortTest_10 = 1;
    sem_post (&semFib10);
    usleep (t_20);
    
    stop_1 = readTOD();
    printf("Test Conducted over %lf msec\n",(double)(stop_1-start_1) * 1000);
    pthread_join(serv10_thread , NULL);
    pthread_join(serv20_thread , NULL);
    
    if(pthread_attr_destroy(&serv10_sched_attr) != 0)
        perror("attr destroy");
    if(pthread_attr_destroy(&serv20_sched_attr) != 0)
        perror("attr destroy");
}
#endif

//void start(void)
void main(void)
{
    int rc;
#ifdef VX_WORKS 
    if(taskSpawn("Sequencer", 20, 0, 8192, Sequencer, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0) == ERROR)
    {
        printf("Sequencer task spawn failed\n");
    }
    else
        printf("Sequencer task spawned\n");
#else

    /* The scheduling priority in VXWorks is a number between 0 and 255
    ** (0 being the highest priority and 255 being the lowest) */
    /* The following priorities are assigned as per VX_Works specification:
    ** Sequencer Thread (Main Thread) - 20 (Highest Priority) 
    ** Service10 Thread - 19 
    ** Service20 Thread - 18
    */

    /* Sequencer Thread */
    pthread_attr_init(&main_sched_attr);
    pthread_attr_setinheritsched(&main_sched_attr, PTHREAD_EXPLICIT_SCHED);
    pthread_attr_setschedpolicy(&main_sched_attr, SCHED_FIFO);
    main_sched_sp.sched_priority = 20; /* Taking the priority as per VX_Works specification */
    rc=sched_setscheduler(getpid(), SCHED_FIFO, &main_sched_sp);
    if (rc)
    {
        printf("ERROR; sched_setscheduler for sequencer rc is %d\n", rc); 
        perror(NULL); 
        exit(-1);
    }
    
    pthread_attr_setschedparam(&main_sched_attr, &main_sched_sp);
    printf("process id: %d\n",getpid());
    rc = pthread_create(&sequencer_thread, &main_sched_attr, Sequencer, (void *)0);

    if (rc)
    {
        printf("ERROR; pthread_create() rc is %d\n", rc);
        perror("pthread_create");
        exit(-1);
    }

    /* Service10 Thread */
    pthread_attr_init(&serv10_sched_attr);
    pthread_attr_setinheritsched(&serv10_sched_attr, PTHREAD_EXPLICIT_SCHED);
    pthread_attr_setschedpolicy(&serv10_sched_attr, SCHED_FIFO);
    serv10_sched_sp.sched_priority = 19; /* Taking the priority as per VX_Works specification */
    pthread_attr_setschedparam(&serv10_sched_attr, &serv10_sched_sp);

    /* Service20 Thread */
    pthread_attr_init(&serv20_sched_attr);
    pthread_attr_setinheritsched(&serv20_sched_attr, PTHREAD_EXPLICIT_SCHED);
    pthread_attr_setschedpolicy(&serv20_sched_attr, SCHED_FIFO);
    serv20_sched_sp.sched_priority = 18; /* Taking the priority as per VX_Works specification */
    pthread_attr_setschedparam(&serv20_sched_attr, &serv20_sched_sp);

    pthread_join(sequencer_thread, NULL); // waits for the thread specified by sequencer_thread to terminate

    if(pthread_attr_destroy(&main_sched_attr) != 0)
        perror("attr destroy");
#endif
}
