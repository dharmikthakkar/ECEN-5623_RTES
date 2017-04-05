/* The producer process creates a named semaphore and initializes it */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <semaphore.h>
#include <fcntl.h>

#define SEMA_NAME            "/sema_rtes_hw2_example"
#define SEMA_FLAGS           (O_RDWR)

int main(void)
{
    sem_t *sem = sem_open(SEMA_NAME, SEMA_FLAGS);

    if (SEM_FAILED == sem)
    {
        perror("sem_open failed");
        exit(EXIT_FAILURE);
    }
    
    if (sem_post(sem) < 0 )
        perror("sem_post failed");

    printf("Semaphore Released\n");

    return 0;
}
