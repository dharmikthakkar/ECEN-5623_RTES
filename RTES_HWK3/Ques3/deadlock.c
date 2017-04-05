#include <pthread.h>
#include <stdio.h>
#include <sched.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>

#define NUM_THREADS 2
#define THREAD_1 1
#define THREAD_2 2

#define RSRC_A_RETRY_COUNT 6
#define RSRC_B_RETRY_COUNT 5

pthread_t threads[NUM_THREADS];
struct sched_param nrt_param;

struct timespec mutex_timeout;

pthread_mutex_t rsrcA, rsrcB;

volatile int rsrcACnt=0, rsrcBCnt=0, noWait=0;
volatile int use_timed_mutex = 0;

void *grabRsrcs(void *threadid)
{
    int ret;
    int retry_cnt_rsrcA = RSRC_A_RETRY_COUNT;
    int retry_cnt_rsrcB = RSRC_B_RETRY_COUNT;
    int r;
    time_t curr_time_in_secs;

    srand(time(NULL));
    
    if((int)threadid == THREAD_1)
    {
        printf("THREAD 1 grabbing resources\n");
        pthread_mutex_lock(&rsrcA);

        rsrcACnt++;

        if(!noWait) usleep(1000000);
        printf("THREAD 1 got A, trying for B\n\n");

        if (use_timed_mutex == 1)
        {
            printf("Thread A will retry to acquire rsrc B for %d times\n\n", retry_cnt_rsrcA);
            while (retry_cnt_rsrcA != 0)
            {
                //printf("Thread A trying to acquire rsrc B, retries remaining %d\n", retry_cnt_rsrcA);
                r = rand() % 10; /* generating a random number between 0 and 9 */

                curr_time_in_secs = time(NULL);

                mutex_timeout.tv_sec = curr_time_in_secs + r; /* Waiting for the desired resource for r seconds */
                mutex_timeout.tv_nsec = 0;

                printf("Thread A will wait for %d secs to acquire resource B\n", r);
                ret = pthread_mutex_timedlock(&rsrcB, &mutex_timeout);
                if (0 != ret)
                {
                    //perror("Mutex Lock Acquire Wait for rsrc B timedout");
                    printf("Mutex Lock Acquire Wait for rsrc B timedout\n");
                    retry_cnt_rsrcA -= 1;
                }
                else
                {
                    printf("Thread A acquired resource B\n");
                    break;
                }
            }
            if ((retry_cnt_rsrcA == 0) && (ret != 0))
            {
                /* Process tried to acquire resource for retry_cnt number of times and failed,
                ** so releasing resource A */
                /* We should ideally reach this path when thread A tries to acquire rsrc B for a
                ** certain pre-defined number of times and fails */
                printf("Thread A failed to acquire rsrc B. So freeing up rsrc A and exiting\n");
                pthread_mutex_unlock(&rsrcA);
                pthread_exit(NULL);
                return;
            }
        }
        else
            pthread_mutex_lock(&rsrcB);

        rsrcBCnt++;
        printf("THREAD 1 got A and B\n");
        pthread_mutex_unlock(&rsrcB);
        pthread_mutex_unlock(&rsrcA);
        printf("THREAD 1 done\n");
    }
    else
    {
        printf("THREAD 2 grabbing resources\n");
        pthread_mutex_lock(&rsrcB);

        rsrcBCnt++;

        if(!noWait) usleep(1000000);
        printf("THREAD 2 got B, trying for A\n");
        if (use_timed_mutex == 1)
        {
            printf("Thread B will retry to acquire rsrc A for %d times\n", retry_cnt_rsrcB);
            while (retry_cnt_rsrcB != 0)
            {
                //printf("Thread B trying to acquire rsrc A, retries remaining %d\n", retry_cnt_rsrcB);
                r = rand() % 10; /* generating a random number between 0 and 9 */

                curr_time_in_secs = time(NULL);

                mutex_timeout.tv_sec = curr_time_in_secs + r; /* Waiting for the desired resource for r seconds */
                mutex_timeout.tv_nsec = 0;
                
                printf("Thread B will wait for %d secs to acquire resource A\n", r);
                ret = pthread_mutex_timedlock(&rsrcA, &mutex_timeout);
                if (0 != ret)
                {
                    //perror("Mutex Lock Acquire Wait for rsrc A timedout");
                    printf("Mutex Lock Acquire Wait for rsrc A timedout\n");
                    retry_cnt_rsrcB -= 1;
                }
                else
                {
                    printf("Thread B acquired resource A\n");
                    break;
                }
            }
            if ((retry_cnt_rsrcB == 0) && (ret != 0))
            {
                /* Process tried to acquire resource for retry_cnt_rsrcB number of times and failed,
                ** so releasing resource A */
                /* We should ideally reach this path when thread B tries to acquire rsrc A for a
                ** certain pre-defined number of times and fails */
                printf("Thread B failed to acquire rsrc A. So freeing up rsrc B and exiting\n");
                pthread_mutex_unlock(&rsrcB);
                pthread_exit(NULL);
                return;
            }
        }
        else
            pthread_mutex_lock(&rsrcA);
        
        rsrcACnt++;

        printf("THREAD 2 got B and A\n");
        pthread_mutex_unlock(&rsrcA);
        pthread_mutex_unlock(&rsrcB);
        printf("THREAD 2 done\n");
    }
    pthread_exit(NULL);
}

int main (int argc, char *argv[])
{
    int rc, safe=0;

    /* Resource Count */
    rsrcACnt=0, rsrcBCnt=0, noWait=0;

    if(argc < 2)
    {
        printf("Will set up unsafe deadlock scenario\n");
    }
    else if(argc == 2)
    {
        if(strncmp("safe", argv[1], 4) == 0)
            safe=1;
        else if(strncmp("race", argv[1], 4) == 0)
            noWait=1;
        else if(strncmp("timed", argv[1], strlen("timed")) == 0)
            use_timed_mutex = 1;
        else
            printf("Will set up unsafe deadlock scenario\n");
    }
    else
    {
        printf("Usage: deadlock [safe|race|unsafe]\n");
    }

    // Set default protocol for mutex
    // Lock for resource A and B
    pthread_mutex_init(&rsrcA, NULL);
    pthread_mutex_init(&rsrcB, NULL);

    printf("Creating thread %d\n", THREAD_1);
    rc = pthread_create(&threads[0], NULL, grabRsrcs, (void *)THREAD_1); /* Thread created with default attributes */
    if (rc) {printf("ERROR; pthread_create() rc is %d\n", rc); perror(NULL); exit(-1);}
    printf("Thread 1 spawned\n");

    if(safe) // Make sure Thread 1 finishes with both resources first
    {
        if(pthread_join(threads[0], NULL) == 0)
        {
            //printf("Thread 1: %d done\n", (int)threads[0]);
            printf("Thread 1: done\n");
        }
        else
            perror("Thread 1");
    }

    printf("Creating thread %d\n", THREAD_2);
    rc = pthread_create(&threads[1], NULL, grabRsrcs, (void *)THREAD_2);
    if (rc) {printf("ERROR; pthread_create() rc is %d\n", rc); perror(NULL); exit(-1);}
    printf("Thread 2 spawned\n");

    printf("rsrcACnt=%d, rsrcBCnt=%d\n", rsrcACnt, rsrcBCnt);
    printf("will try to join CS threads unless they deadlock\n");

    if(!safe)
    {
        if(pthread_join(threads[0], NULL) == 0)
        {
            //printf("Thread 1: %d done\n", (int)threads[0]);
            printf("Thread 1: done\n");
        }
        else
            perror("Thread 1");
    }

    if(pthread_join(threads[1], NULL) == 0)
    {
        //printf("Thread 2: %d done\n", (int)threads[1]);
        printf("Thread 2: done\n");
    }
    else
        perror("Thread 2");

    if(pthread_mutex_destroy(&rsrcA) != 0)
        perror("mutex A destroy");

    if(pthread_mutex_destroy(&rsrcB) != 0)
        perror("mutex B destroy");

    printf("All done\n");

    exit(0);
}
