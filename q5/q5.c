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

pthread_t writer_thread;
pthread_t reader_thread;

static pthread_mutex_t mutex_nav_state = PTHREAD_MUTEX_INITIALIZER;
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


void *Writer(void *arg)
{
	NAV_STATE nav_state_local;
	nav_state_local.X =(int) arg+1;
	nav_state_local.Y = (int)arg+2;
	nav_state_local.Z = (int)arg+3;
	nav_state_local.roll = (int)arg+4;
	nav_state_local.pitch = (int)arg+5;
	nav_state_local.yaw = (int)arg+6;
	pthread_mutex_lock(&mutex_nav_state);
	nav_state_1 = nav_state_local;
	nav_state_1.sample_time.tv_sec += 60;
	nav_state_1.sample_time.tv_nsec += 500;
	if(clock_settime(CLOCK_REALTIME, &nav_state_1.sample_time) == -1){
		printf("set_clock_error\n");
		perror("setclock");
		printf("set_clock_error\n");
		exit(-1);
	}
	pthread_mutex_unlock(&mutex_nav_state);

}

void *Reader(void *arg){
	NAV_STATE nav_state_local_reader;
	pthread_mutex_lock(&mutex_nav_state);
	nav_state_local_reader = nav_state_1;
	clock_gettime(CLOCK_REALTIME, &(nav_state_1.sample_time));
	pthread_mutex_unlock(&mutex_nav_state);
	printf("Navigational state: X=%d, Y=%d, Z=%d, Roll=%d, Pitch=%d, Yaw=%d.	Time-stamp: %ld seconds, %ld nanoseconds\n", nav_state_1.X, nav_state_1.Y, nav_state_1.Z, nav_state_1.roll, nav_state_1.pitch, nav_state_1.yaw, nav_state_1.sample_time.tv_sec, nav_state_1.sample_time.tv_nsec);
	//pthread_mutex_unlock(&mutex_nav_state);
}

void *Wait_Func(void *arg){
	struct timespec *wait;
	int ret;
	wait = (struct timespec *)(malloc(sizeof(struct timespec)));
	wait->tv_sec=10;
	wait->tv_nsec=0;
	sleep(10);
	ret=pthread_mutex_timedlock(&mutex_nav_state, wait);
	if(ret!=0){
	clock_gettime(CLOCK_REAKTIME, &(nav_state_1.sample_time));
	printf("No new data available at time:%ld seconds   %ld  nanoseconds\n", nav_state_1.sample_time.tv_sec, nav_state_1.sample_time.tv_nsec);
	}

		
}
	
int main(int argc, char *argv[])
{
	int rc, i=0;
//	for(i=0; i<5; i++){
	rc = pthread_create(&writer_thread, NULL, Writer, (void *)i);
	if(rc)
	{
		printf("ERROR: pthread_create()\n");
		perror(NULL);
		exit(-1);
	}
	
	rc = pthread_create(&reader_thread, NULL, Reader, NULL);
	if(rc)
	{
		printf("ERROR: pthread_create() reader_thread\n");
		perror(NULL);
		exit(-1);
	}
//}
//        usleep(20000);
	pthread_join(writer_thread, NULL);
	pthread_join(reader_thread, NULL);
	pthread_mutex_destroy(&mutex_nav_state);
	printf("Test Completed\n");
}









