#include<stdio.h>

#include<stdlib.h>

int mutex = 1;

int full=0;

int empty=10,x=0;

void producer()

{

--mutex;

++full;

--empty;

x++;

printf("\n producer producer item %d",x);

++mutex;

}

void consumer()

{

--mutex;

--full;

--empty;

printf("\n consumer consumer item %d",x);

x--;

++mutex;

}

int main()

{

int n ,i;

printf("\n press 1 for producer \n press 2 for consumer \n press 3 for end");

for(i=1;i>0;i++)

{

printf("\n enter your choice");

scanf("%d",&n);

switch(n)

{

case 1: if((mutex==1)&&(empty!=0))

{

producer();

}

else

{

printf("buffer is full");

}

break;

case 2:if((mutex==1 )&& (full!=0))

{

consumer();

}

else

{

printf("buffer is empty");

}

break;

case 3:exit(0);

break;

default:printf("\n invalid choice");

}

}

}
