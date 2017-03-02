/*
** These examples use semaphores to ensure that writer and reader
** processes have exclusive, alternating access to the shared-memory region.
*/
 
/**********  writer.c  ***********/
 
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
 
/**** WRITER ****/
 
void main(){
  sem_t *sem_des;
 /* Create a semaphore in locked state */
 
 sem_des = sem_open(sem_fn, 0, 0644, 0);
 
 if(sem_des == (void*)-1){
   perror("sem_open failure");
   exit(-1);
 }
 
  /* Release the semaphore lock */
  printf("Releasing semaphore..\n");
  sem_post(sem_des);
 /* Close the Semaphore */
 
  sem_close(sem_des);
 
}
