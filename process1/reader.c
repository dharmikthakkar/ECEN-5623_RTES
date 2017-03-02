/*******************************************************************
*******************************************************************/
 
/**********  reader.c  ***********/
 
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
#include <sys/fcntl.h> 
char sem_fn[] = "my_sem";
 
/**** READER ****/
 
main(){
 int sem_value;
  sem_t *semdes;

 /* Open the Semaphore */
 
 semdes = sem_open(sem_fn, O_CREAT, 0644, 0);

 if(semdes == (void*) -1){
   perror("sem_open failure");
   exit(-1);
 }
 
 printf("Process ID: %d\n",getpid());
 sem_getvalue(semdes, &sem_value);
 printf("waiting for semaphore...\n");
 sem_wait(semdes);
 
 printf("Semaphore acquired..\n");
 
  /* Release the semaphore lock */
 
 sem_post(semdes);

  /* Close the Semaphore */
 
 sem_close(semdes);
 sem_unlink(sem_fn);
 printf("exit\n");
}
