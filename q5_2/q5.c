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
* writer_thread: updates the structure consisting of navigational state and timestamp
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
* In this function, the elements of the structures are updated all at once using a local structure nav_state_local.
* Two delays of 8 seconds (which is between locking the mutex and updating the global structure) and 2 seconds (which is between unlocking the mutex and locking it again for the next sequence)
* are deliberately inserted to demonstrate the functionality of mutex_timedlock.
*/
void *Writer(void *arg)
{
int temp=0, i=0;
	while(1)
	{
		NAV_STATE nav_state_local;
		nav_state_local.X =(int) arg+1;
		nav_state_local.Y = (int)arg+2;
		nav_state_local.Z = (int)arg+3;
		nav_state_local.roll = (int)arg+4;
		nav_state_local.pitch = (int)arg+5;
		nav_state_local.yaw = (int)arg+6;
		if(temp==0)
		{
		if(clock_gettime(CLOCK_REALTIME, &(nav_state_local.sample_time))==-1)
		{
			printf("get_clock_error\n");
			perror("getclock");
			exit(-1);
		}
		current_time.tv_sec=nav_state_local.sample_time.tv_sec;
		current_time.tv_nsec=nav_state_local.sample_time.tv_nsec;
		temp=1;
	        printf("Start time:%ld seconds   %ld  nanoseconds\n", nav_state_local.sample_time.tv_sec-current_time.tv_sec, nav_state_local.sample_time.tv_nsec-current_time.tv_nsec);
		}	
		
		pthread_mutex_lock(&mutex_nav_state);
		sleep(8);
		clock_gettime(CLOCK_REALTIME, &(nav_state_local.sample_time));
		nav_state_1.sample_time = nav_state_local.sample_time;
		printf("Time navigational_state_%d assigned:%ld seconds   %ld  nanoseconds\n",(int)arg, nav_state_1.sample_time.tv_sec-current_time.tv_sec, nav_state_1.sample_time.tv_nsec-current_time.tv_nsec);		
		pthread_mutex_unlock(&mutex_nav_state);
		arg++;
		sleep(2);
	}
}


/* Reader thread function reads the global structure and prints it.
*  It uses mutex_timedlock to avoid a possible deadlock condition.
*  It waits for a maximum of 5 seconds until other thread (writer thread) unblocks the mutex or its wait time expires.
*/ 
void *Reader(void *arg){
	struct timespec *wait;
	struct timespec wait_time;
	int ret;
	wait = (struct timespec *)(malloc(sizeof(struct timespec)));
	while(1){
		clock_gettime(CLOCK_REALTIME, &wait_time);
		wait->tv_sec=wait_time.tv_sec+5;
		wait->tv_nsec=wait_time.tv_nsec;
		printf("Entering mutex_timed_lock at time:%ld seconds   %ld  nanoseconds\n", wait_time.tv_sec-current_time.tv_sec, wait_time.tv_nsec-current_time.tv_nsec);
		ret=pthread_mutex_timedlock(&mutex_nav_state, wait);
		clock_gettime(CLOCK_REALTIME, &wait_time);
		printf("Exiting mutex_timed_lock at time:%ld seconds   %ld  nanoseconds\n", wait_time.tv_sec-current_time.tv_sec, wait_time.tv_nsec-current_time.tv_nsec);
		if(ret!=0){
		clock_gettime(CLOCK_REALTIME, &wait_time);
		printf("No new data available at time:%ld seconds   %ld  nanoseconds\n", wait_time.tv_sec-current_time.tv_sec, wait_time.tv_nsec-current_time.tv_nsec);
		}
		else
		{
		printf("Navigational state: X=%d, Y=%d, Z=%d, Roll=%d, Pitch=%d, Yaw=%d.        Time-stamp: %ld seconds, %ld nanoseconds\n", nav_state_1.X, nav_state_1.Y, nav_state_1.Z, nav_state_1.roll, 
	nav_state_1.pitch, nav_state_1.yaw, nav_state_1.sample_time.tv_sec-current_time.tv_sec, nav_state_1.sample_time.tv_nsec-current_time.tv_nsec);
			pthread_mutex_unlock(&mutex_nav_state);
		}
		sleep(2);
	}
}

/* Main function */	
int main(int argc, char *argv[])
{
	int rc, i=0;
	printf("Using MUTEX_TIMED_LOCK\n\n");
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









