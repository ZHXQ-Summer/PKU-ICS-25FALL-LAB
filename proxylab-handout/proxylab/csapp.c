#include "csapp.h"

// Function prototypes
void *thread(void *vargp);
void doit(int fd);
void read_requesthdrs(rio_t *rp);
int parse_uri(char *uri, char *hostname, char *port, char *path);
void forward_request(int clientfd, char *hostname, char *port, char *path);
void serve_static(int fd, char *filename, int filesize);
void get_filetype(char *filename, char *filetype);
void clienterror(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg);

// Main function for the proxy server
int main(int argc, char **argv) {
    int listenfd, *connfd;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    // Check command line arguments
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <port>\n", argv[0]);
        exit(0);
    }

    // Open listening socket
    listenfd = Open_listenfd(argv[1]);

    while (1) {
        clientlen = sizeof(clientaddr);
        connfd = Malloc(sizeof(int));
        *connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        // Create a new thread for each client connection
        pthread_t tid;
        Pthread_create(&tid, NULL, thread, connfd);
    }
}

// Thread routine
void *thread(void *vargp) {
    int connfd = *((int *)vargp);
    Free(vargp);
    doit(connfd);
    Close(connfd);
    return NULL;
}

// Handle client request
void doit(int fd) {
    int is_static;
    struct stat sbuf;
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char hostname[MAXLINE], port[MAXLINE], path[MAXLINE];
    rio_t rio;

    Rio_readinitb(&rio, fd);
    Rio_readlineb(&rio, buf, MAXLINE);
    sscanf(buf, "%s %s %s", method, uri, version);

    if (strcasecmp(method, "GET")) {
        clienterror(fd, method, "501", "Not Implemented", "Proxy does not implement this method");
        return;
    }

    read_requesthdrs(&rio);
    is_static = parse_uri(uri, hostname, port, path);
    if (is_static) {
        // Serve static content
        serve_static(fd, path, sbuf.st_size);
    } else {
        // Forward request to the target server
        forward_request(fd, hostname, port, path);
    }
}

// Read request headers
void read_requesthdrs(rio_t *rp) {
    char buf[MAXLINE];
    Rio_readlineb(rp, buf, MAXLINE);
    while (strcmp(buf, "\r\n")) {
        Rio_readlineb(rp, buf, MAXLINE);
    }
}

// Parse URI to extract hostname, port, and path
int parse_uri(char *uri, char *hostname, char *port, char *path) {
    char *ptr;
    if (!strstr(uri, "http://")) {
        return 0; // Not a valid URI
    }
    ptr = uri + strlen("http://");
    char *end = strchr(ptr, '/');
    if (end) {
        *end = '\0';
        strcpy(path, end + 1);
    } else {
        strcpy(path, "");
    }
    if (sscanf(ptr, "%[^:]:%s", hostname, port) == 2) {
        return 0; // Valid hostname and port
    } else {
        strcpy(port, "80"); // Default port
        strcpy(hostname, ptr);
    }
    return 0; // Valid hostname
}

// Forward request to the target server
void forward_request(int clientfd, char *hostname, char *port, char *path) {
    // Implementation for forwarding request to the server
}

// Serve static content
void serve_static(int fd, char *filename, int filesize) {
    // Implementation for serving static files
}

// Get file type
void get_filetype(char *filename, char *filetype) {
    // Implementation for determining file type
}

// Handle client errors
void clienterror(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg) {
    // Implementation for sending error response to client
}