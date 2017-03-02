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
//char shm_fn[] = "my_shm";
char sem_fn[] = "my_sem";
 
/**** WRITER ****/
 
void main(){
//  caddr_t shmptr;
  unsigned int mode;
  int shmdes, index;
  sem_t *semdes;
//  int SHM_SIZE;
 
//  mode = S_IRWXU|S_IRWXG;
 
  /* Open the shared memory object */
 
//  if ( (shmdes = shm_open(shm_fn,O_CREAT|O_RDWR|O_TRUNC, mode)) == -1 ) {
//     perror("shm_open failure");
//     exit();
//   }
 
  /* Preallocate a shared memory area */
 
//  SHM_SIZE = sysconf(_SC_PAGE_SIZE);
 
//  if(ftruncate(shmdes, SHM_SIZE) == -1){
//    perror("ftruncate failure");
//    exit();
//  }
 
//  if((shmptr = mmap(0, SHM_SIZE, PROT_WRITE|PROT_READ, MAP_SHARED,
//                shmdes,0)) == (caddr_t) -1){
//    perror("mmap failure");
//    exit();
//  }
 
  /* Create a semaphore in locked state */
 
 semdes = sem_open(sem_fn, 0, 0644, 0);
 
 if(semdes == (void*)-1){
   perror("sem_open failure");
   exit(-1);
 }
 
    /* Access to the shared memory area */
 
//    for(index = 0; index < 100; index++){
//       printf("write %d into the shared memory shmptr[%d]\n", index*2, index);
//       shmptr[index]=index*2;
//       }
 
  /* Release the semaphore lock */
  printf("Releasing semaphore..\n");
  sem_post(semdes);
//  munmap(shmptr, SHM_SIZE);
 
  /* Close the shared memory object */
 
//  close(shmdes);
 
  /* Close the Semaphore */
 
  sem_close(semdes);
 
  /* Delete the shared memory object */
 
//  shm_unlink(shm_fn);
}
