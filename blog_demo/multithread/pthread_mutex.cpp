#include <stdio.h>
#include <pthread.h>

int g_data = 0;
pthread_mutex_t mutex;
 
void *func1(void *arg)
{
    pthread_mutex_lock(&mutex);
    g_data = 1;
    pthread_mutex_unlock(&mutex);
}
 
void *func2(void *arg)
{
    pthread_mutex_lock(&mutex);
    g_data = 2;
    pthread_mutex_unlock(&mutex);
}
 
int main()
{
    int ret;
    int param = 100;
    pthread_t t1;
    pthread_t t2;
 
    pthread_mutex_init(&mutex, NULL);
    
    pthread_create(&t1, NULL, func1,(void *)&param);
    pthread_create(&t2, NULL, func2,(void *)&param);

    pthread_join(t1,NULL);
    pthread_join(t2,NULL);

    printf("%d\n", g_data);

    pthread_mutex_destroy(&mutex);
 
    return 0;
}