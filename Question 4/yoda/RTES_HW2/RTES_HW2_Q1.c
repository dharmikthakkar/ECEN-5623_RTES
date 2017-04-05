#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <semaphore.h>

int main(void)
{
    pid_t pid = 0;
    
    unsigned int i = 0, j = 0;
    sem_t sem;

    sem_init(&sem, 0, 1); /* Binary Semaphore */
    
    pid = fork();

    if (pid < 0)
    {
        printf("Error\n");
        if (errno == EAGAIN)
        {
            printf("fork() cannot allocate sufficient memory to copy the parent’s page tables and allocate a task structure for the child\n");
        }
        else if (errno == ENOMEM)
        {
            printf("fork() failed to allocate the necessary kernel structures because memory is tight\n");
        }
        else
        {
            printf("Error unknown\n");
        }
    }
    if (pid == 0)
    {
        /* Child process */
        printf("In the child process with pid: %d\n", pid);
        
	//for (i = 0; i < 10; i++)
	//	printf("In Child Process: count = %d\n", i);
        
	printf("Trying to access a critical resource...\n");
            
        sem_wait(&sem);

        printf("Critical Section Acquired\n");

        sem_post(&sem);
    }
    else
    {
        /* Parent Process */
        printf("In the parent process. Child's PID is %d, Parent's PID is %d\n", pid, getppid());
        
	sem_wait(&sem);
	for (j = 0; j < 10; j++)
		printf("In Parent Process: count = %d\n", j);

        sem_post(&sem);
    }
}
