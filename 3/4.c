#include <pthread.h> 
#include <stdio.h> 
#include <stdlib.h> 

int n=10;

int a[10]={1,2,3,4,9,8,7,6,5,10};

void insertion_sort(int arr[],int start,int end)
{
	int i, key, j; 
   for (i = start+1; i <= end; i++) 
   { 
       key = arr[i]; 
       j = i-1; 
  
       while (j >= start && arr[j] > key) 
       { 
           arr[j+1] = arr[j]; 
           j = j-1; 
       } 
       arr[j+1] = key; 
   } 
}


void* sort(void* arg)
{
	int start,end;
	for(int i=0;i<n-1;i++)
		if(a[i]>a[i+1])
		{
			start=i; 
			while(a[i]>a[i+1])
				i++;
			end=i;
		}
	insertion_sort(a,start,end);
}

int main()
{
	int i=1;

	pthread_t thread;

	for(i=1;i<n;i++)
		if(a[i]>a[i-1])
			{	
				pthread_create(&thread, NULL, sort, (void*)NULL);
				pthread_join(thread,NULL);
				break;
			}

	for(i=0;i<n;i++)
		printf("%d ",a[i]);
	printf("\n");
	return 0;
}
