#include<stdio.h>
#include<semaphore.h>
#include<sys/types.h>
#include<pthread.h>


void *producer();
void *consumer();

typedef struct
 {
	int buff[10];
	sem_t full,empty;
 }shared;

shared sh;

int main()
 {
	pthread_t ptid,ctid;
	sem_init(&sh.empty,0,1);
	sem_init(&sh.full,0,0);
	
	pthread_create(&ptid,NULL,producer,NULL);
	pthread_create(&ctid,NULL,consumer,NULL);
	
	pthread_join(ptid,NULL);
	pthread_join(ctid,NULL);
	
	return 0;
	//end of main
 }

void *producer()
 {
	int i;
	int item
	for(i=0;i<LIMIT;i++)
	 {
		item=i;
			printf("\n Producer produced items : \t\t %d",item);
		sem_wait(&sh.empty);
		
		sh.buff[i]=item;
		sem_post(&sh.full);
	 }
	 return NULL;
 } // end producer
 
void *consumer()
 {
	int i;
	int item;
	for(i=0;i<LIMIT;i++)
	{
		sem_wait(&sh.full);
		item=sh.buff[i];
		sem_post(&sh.empty);
		printf("\n Consumer has consumed item : \t\t &d \n",item);
		
	}
	return NULL;
	//end consumer
 }