#include <pthread.h>
#include <semaphore.h>
#include <stdlib.h>
#include <stdio.h>
#include <sched.h>
#include <unistd.h>
#include <time.h>
#include <syslog.h>
#include <math.h>
#include <sys/param.h>

/*
* writer_therad: updates the structure consisting of navigational state and timestamp
* reader_thread: reads the data from the structure and prints it
*/
pthread_t writer_thread;
pthread_t reader_thread;

/* initialization of the mutex */
static pthread_mutex_t mutex_nav_state = PTHREAD_MUTEX_INITIALIZER;

/*
* global structure to demonstrate use of mutex.
*/
typedef struct{
	int X;
	int Y;
	int Z;
	int roll;
	int pitch;
	int yaw;
	struct timespec sample_time;

}NAV_STATE;

NAV_STATE nav_state_1;

/*
* current_time is used to mark the time at the start of program.
* All the other timestamps displayed in the output are with respect to this time.
*/
struct timespec current_time;

/*
* Write thread function updates the structure. 
* In this function, the elements of the structures are updated one after the other, for 10 iterations.
* A delay of 1ms is deliberaltely inserted in between the structure update do analyse the possible corruption of the data when mutex is not used to lock the global resource.
*/
void *Writer(void *arg)
{
int temp=0, i=0;
	for(i=0;i<10;i++)
	{
		NAV_STATE nav_state_local;
#ifndef NO_MUTEX
		pthread_mutex_lock(&mutex_nav_state);
#endif	
		nav_state_1.X =(int) arg+1;
		nav_state_1.Y = (int)arg+2;
		usleep(1000);
		nav_state_1.Z = (int)arg+3;
		nav_state_1.roll = (int)arg+4;
		nav_state_1.pitch = (int)arg+5;
		nav_state_1.yaw = (int)arg+6;
		if(clock_gettime(CLOCK_REALTIME, &(nav_state_local.sample_time))==-1)
		{
			printf("get_clock_error\n");
			perror("getclock");
			exit(-1);
		}
		if(temp==0)
		{
		current_time.tv_sec=nav_state_local.sample_time.tv_sec;
		current_time.tv_nsec=nav_state_local.sample_time.tv_nsec;
		temp=1;
	        printf("Start time:%ld seconds   %ld  nanoseconds\n", nav_state_local.sample_time.tv_sec-current_time.tv_sec, nav_state_local.sample_time.tv_nsec-current_time.tv_nsec);
		}	
		
		nav_state_1.sample_time = nav_state_local.sample_time;
		printf("Time navigational_state_%d assigned:%ld seconds   %ld  nanoseconds\n",(int)arg, nav_state_1.sample_time.tv_sec-current_time.tv_sec, nav_state_1.sample_time.tv_nsec-current_time.tv_nsec);		
#ifndef NO_MUTEX
		pthread_mutex_unlock(&mutex_nav_state);
#endif
		arg++;
		usleep(120);
	}
}


/* Reader thread function reads the global structure and prints it. */ 
void *Reader(void *arg){
	int j=0;
	for(j=0;j<10;j++)
	{
		printf("Reader thread begins execution\n");
#ifndef NO_MUTEX
		pthread_mutex_lock(&mutex_nav_state);
#endif
		printf("Navigational state: X=%d, Y=%d, Z=%d, Roll=%d, Pitch=%d, Yaw=%d.	Time-stamp: %ld seconds, %ld nanoseconds\n", nav_state_1.X, nav_state_1.Y, nav_state_1.Z, nav_state_1.roll, nav_state_1.pitch, nav_state_1.yaw, nav_state_1.sample_time.tv_sec-current_time.tv_sec, nav_state_1.sample_time.tv_nsec-current_time.tv_nsec);
#ifndef NO_MUTEX
		pthread_mutex_unlock(&mutex_nav_state);
#endif
		usleep(120);
	}
}

/* Main function */	
int main(int argc, char *argv[])
{
	int rc, i=0;
#ifndef NO_MUTEX
	printf("Using MUTEX\n\n");
#else
	printf("Without MUTEX\n\n");
#endif

/* create writer_thread */
	rc = pthread_create(&writer_thread, NULL, Writer, (void *)i);
	if(rc)
	{
		printf("ERROR: pthread_create() writer_thread\n");
		perror(NULL);
		exit(-1);
	}

/* create reader_thread */
	rc = pthread_create(&reader_thread, NULL, Reader, NULL);
	if(rc)
	{
		printf("ERROR: pthread_create() reader_thread\n");
		perror(NULL);
		exit(-1);
	}

/* wait for the threads to finish and cleans up any resources associated with the threads */
	pthread_join(writer_thread, NULL);
	pthread_join(reader_thread, NULL);

/* destroys mutex */
	pthread_mutex_destroy(&mutex_nav_state);
	printf("Test Completed\n");
}









