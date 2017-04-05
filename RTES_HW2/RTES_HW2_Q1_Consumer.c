
/* The consumer process opens a named semaphore and tries to acquire it */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <semaphore.h>
#include <fcntl.h>

#define SEMA_NAME            "/sema_rtes_hw2_example"
#define SEMA_FLAGS           (O_CREAT | O_EXCL)   /* To ensure that this process is the exclusive creator of the semaphore */
#define SEMA_MODE            (S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP)   /* mode - 660 read and write for user and group but nothing for other */
#define SEMA_INIT_VALUE      0

int main(void)
{
    /* Create a binary semaphore */
    if (sem_open(SEMA_NAME, SEMA_FLAGS) == SEM_FAILED)
    {
	//perror("1: sem_open failed. Removing the semaphore from the system");
	sem_unlink(SEMA_NAME);
    }

    sem_t *sem = sem_open(SEMA_NAME, SEMA_FLAGS, SEMA_MODE, SEMA_INIT_VALUE);

    if (SEM_FAILED == sem)
    {
        perror("sem_open failed");
        exit(EXIT_FAILURE); /* EXIT_FAILURE -- standard value for returning unsuccessful termination*/
    }
    
    /* The consumer process waits on the binary semaphore */
    printf("Trying to acquire semaphore...\n");
    
    if (sem_wait(sem) < 0)
	    perror("sem_wait failed");

    printf("Semaphore acquired by consumer...\n");

    if (sem_close(sem) < 0)
	perror("sem_close failed");
}
