/*
 * name: 王泽恺
 * student-id: <2400013155>
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <pthread.h>
#include <errno.h>

#include "csapp.h"
#include "cache.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

typedef char string[MAXLINE];

typedef struct {
    string host;
    string port;
    string path;
} url_t;

void* thread(void* vargp);
void handle_request(rio_t* client_rio, string url);
int parse_url(string url, url_t* url_info);
int parse_headers(rio_t* client_rio, string headers, string host);

int main(int argc, char** argv) {
    signal(SIGPIPE, SIG_IGN);

    if (argc != 2) {
        fprintf(stderr, "Usage: %s <port>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    int listenfd = Open_listenfd(argv[1]);
    init_cache();

    while (1) {
        struct sockaddr_storage clientaddr;
        socklen_t clientlen = sizeof(clientaddr);
        int* connfd = malloc(sizeof(int));
        if (!connfd) {
            fprintf(stderr, "Malloc error\n");
            continue;
        }

        *connfd = accept(listenfd, (SA*)&clientaddr, &clientlen);
        if (*connfd < 0) {
            fprintf(stderr, "Accept error: %s\n", strerror(errno));
            free(connfd);
            continue;
        }

        pthread_t tid;
        pthread_create(&tid, NULL, thread, connfd);
    }

    close(listenfd);
    return 0;
}

void* thread(void* vargp) {
    pthread_detach(pthread_self());

    int client_fd = *((int*)vargp);
    free(vargp);

    rio_t client_rio;
    rio_readinitb(&client_rio, client_fd);

    string buf;
    if (rio_readlineb(&client_rio, buf, MAXLINE) <= 0) {
        fprintf(stderr, "Failed to read request line\n");
        close(client_fd);
        return NULL;
    }

    string method, url, version;
    if (sscanf(buf, "%s %s %s", method, url, version) != 3) {
        fprintf(stderr, "Invalid request line\n");
        close(client_fd);
        return NULL;
    }

    if (!strcasecmp(method, "GET")) {
        handle_request(&client_rio, url);
    }

    close(client_fd);
    return NULL;
}

int parse_url(string url, url_t* url_info) {
    const char* http_prefix = "http://";
    size_t prefix_len = strlen(http_prefix);

    if (strncasecmp(url, http_prefix, prefix_len)) {
        fprintf(stderr, "Unsupported protocol: %s\n", url);
        return -1;
    }

    char* host_start = url + prefix_len;
    char* port_start = strchr(host_start, ':');
    char* path_start = strchr(host_start, '/');

    if (!path_start) return -1;

    if (!port_start) {
        *path_start = '\0';
        strcpy(url_info->host, host_start);
        strcpy(url_info->port, "80");
        *path_start = '/';
    } else {
        *port_start = '\0';
        strcpy(url_info->host, host_start);
        *port_start = ':';
        *path_start = '\0';
        strcpy(url_info->port, port_start + 1);
        *path_start = '/';
    }

    strcpy(url_info->path, path_start);
    return 0;
}

int parse_headers(rio_t* client_rio, string headers, string host) {
    string buf;
    int has_host = 0;

    while (rio_readlineb(client_rio, buf, MAXLINE) > 0) {
        if (!strcmp(buf, "\r\n")) break;

        if (!strncasecmp(buf, "Host:", 5)) has_host = 1;
        if (strncasecmp(buf, "Connection:", 11) &&
            strncasecmp(buf, "Proxy-Connection:", 17) &&
            strncasecmp(buf, "User-Agent:", 11)) {
            strcat(headers, buf);
        }
    }

    if (!has_host) {
        sprintf(buf, "Host: %s\r\n", host);
        strcat(headers, buf);
    }

    strcat(headers, "Connection: close\r\n");
    strcat(headers, "Proxy-Connection: close\r\n");
    strcat(headers, user_agent_hdr);
    strcat(headers, "\r\n");

    return 0;
}

void handle_request(rio_t* client_rio, string url) {
    if (query_cache(client_rio, url)) return;

    url_t url_info;
    if (parse_url(url, &url_info) < 0) {
        fprintf(stderr, "Failed to parse URL\n");
        return;
    }

    string headers;
    parse_headers(client_rio, headers, url_info.host);

    int server_fd = open_clientfd(url_info.host, url_info.port);
    if (server_fd < 0) {
        fprintf(stderr, "Failed to connect to %s:%s\n", url_info.host, url_info.port);
        return;
    }

    rio_t server_rio;
    rio_readinitb(&server_rio, server_fd);

    string buf;
    snprintf(buf, sizeof(buf), "GET %s HTTP/1.0\r\n%s", url_info.path, headers);
    if (rio_writen(server_fd, buf, strlen(buf)) != strlen(buf)) {
        fprintf(stderr, "Failed to send request\n");
        close(server_fd);
        return;
    }

    char cache_buf[MAX_OBJECT_SIZE];
    int total_size = 0, n;

    while ((n = rio_readnb(&server_rio, buf, MAXLINE)) > 0) {
        if (total_size + n < MAX_OBJECT_SIZE) {
            memcpy(cache_buf + total_size, buf, n);
        }
        total_size += n;
        if (rio_writen(client_rio->rio_fd, buf, n) != n) {
            fprintf(stderr, "Failed to forward response\n");
            close(server_fd);
            return;
        }
    }

    if (total_size < MAX_OBJECT_SIZE) {
        add_cache(url, cache_buf, total_size);
    }

    close(server_fd);
}