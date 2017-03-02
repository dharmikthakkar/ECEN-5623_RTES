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
//char shm_fn[] = "my_shm";
char sem_fn[] = "my_sem";
 
/**** READER ****/
 
main(){
//  caddr_t shmptr;
  int index, sem_value;
  sem_t *semdes;
//  int SHM_SIZE;
 
  /* Open the shared memory object */
 
//  SHM_SIZE = sysconf(_SC_PAGE_SIZE);
 
//  if ( (shmdes = shm_open(shm_fn, O_RDWR, 0)) == -1 ) {
//     perror("shm_open failure");
//     exit();
//   }
 
//  if((shmptr = mmap(0, SHM_SIZE, PROT_WRITE|PROT_READ, MAP_SHARED,
//               shmdes,0)) == (caddr_t) -1){
//     perror("mmap failure");
//    exit();
//  }
 
 /* Open the Semaphore */
 
 semdes = sem_open(sem_fn, O_CREAT, 0644, 0);

 if(semdes == (void*) -1){
   printf("sem_open failure\n");
   perror("sem_open failure");
   exit(-1);
 }
 
   printf("Process ID: %d\n",getpid());
  sem_getvalue(semdes, &sem_value);
 /* Lock the semaphore */
 if(sem_value==0){
   printf("waiting for semaphore...\n");
  }
 while(sem_value<=0){
  sem_getvalue(semdes, &sem_value);
 } 
// if(!sem_wait(semdes)){
 
  /* Access to the shared memory area */
 
//   for(index = 0; index < 10; index++)
        printf("Semaphore acquired..\n");
 
  /* Release the semaphore lock */
 
   sem_post(semdes);
//  }
 
//  munmap(shmptr, SHM_SIZE);
 
  /* Close the shared memory object */
 
//  close(shmdes);
 
  /* Close the Semaphore */
 
  sem_close(semdes);
  sem_unlink(sem_fn);
  printf("exit\n");
}
