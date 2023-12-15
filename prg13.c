#include<unistd.h>
#include<sys/types.h>
#include<stdio.h>
#include<sys/wait.h>
int main()
{
  pid_t q;
  printf("before fork\n");
  q=fork();
  if(q==0)
  {
    printf("I AM A CHILD HAVING ID %d\n",getpid());
    printf("MY PARENT'S ID IS %d\n",getppid());
  }
  else
  { 
     wait(NULL);
     printf("MY CHILD'S ID IS %d\n",q);
     printf("I AM A PARENT HAVING ID %d\n",getpid());
   }
 }
