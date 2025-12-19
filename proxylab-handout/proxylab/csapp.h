#ifndef CSAPP_H
#define CSAPP_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <pthread.h>

#define MAXLINE 1024
#define MAXBUF 8192
#define LISTENQ 1024

typedef struct sockaddr SA;

void unix_error(char *msg);
void app_error(char *msg);
void *Malloc(size_t size);
int Open(const char *filename, int flags, mode_t mode);
void Close(int fd);
void Pthread_create(pthread_t *tid, const pthread_attr_t *attr, void *(*routine)(void *), void *arg);
void Pthread_join(pthread_t tid, void **retval);
void Pthread_mutex_lock(pthread_mutex_t *mptr);
void Pthread_mutex_unlock(pthread_mutex_t *mptr);
int Rio_readn(int fd, void *ptr, size_t n);
int Rio_writen(int fd, void *ptr, size_t n);
void Rio_readinitb(rio_t *rp, int fd);
ssize_t Rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen);
ssize_t Rio_readnb(rio_t *rp, void *usrbuf, size_t n);
ssize_t Rio_writen(int fd, void *usrbuf, size_t n);

#endif /* CSAPP_H */