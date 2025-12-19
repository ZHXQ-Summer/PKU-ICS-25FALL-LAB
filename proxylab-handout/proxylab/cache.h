/*
 * name:    王泽恺
 * id:      2400013155
 */
#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CACHE_NUM 10  // 修正拼写错误

typedef char string[MAXLINE];

typedef struct {
    string url;                  // 缓存的 URL
    char content[MAX_OBJECT_SIZE]; // 缓存的内容
    int content_size;            // 内容大小
    int timestamp;               // 时间戳，用于 LRU 替换
} cache_file_t;

typedef struct {
    int using_cache_num;         // 当前缓存数量
    cache_file_t cache_files[MAX_CACHE_NUM]; // 缓存文件数组
} cache_t;

// 初始化缓存
void init_cache();
// 查询缓存
int query_cache(rio_t* rio_p, string url);
// 添加缓存
int add_cache(string url, char* content, int content_size);