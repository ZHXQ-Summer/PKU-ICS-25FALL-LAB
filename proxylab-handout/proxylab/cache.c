#include "csapp.h"
#include "cache.h"

// 全局变量
static cache_t cache;           // 缓存结构
static sem_t mutex, w;          // 信号量：读写锁
static int readcnt = 0;         // 读者计数器
static int timestamp = 0;       // 全局时间戳

// 初始化缓存
void init_cache() {
    timestamp = 0;
    readcnt = 0;
    cache.using_cache_num = 0;
    sem_init(&mutex, 0, 1);     // 初始化互斥锁
    sem_init(&w, 0, 1);         // 初始化写锁
}

// 查询缓存
int query_cache(rio_t* rio_p, string url) {
    P(&mutex);
    if (++readcnt == 1) P(&w);  // 第一个读者加写锁
    V(&mutex);

    int hit_flag = 0;
    for (int i = 0; i < MAX_CACHE_NUM; i++) {
        if (!strcmp(cache.cache_files[i].url, url)) { // 缓存命中
            P(&mutex);
            cache.cache_files[i].timestamp = timestamp++; // 更新时间戳
            V(&mutex);

            rio_writen(rio_p->rio_fd, cache.cache_files[i].content, cache.cache_files[i].content_size);
            hit_flag = 1;
            break;
        }
    }

    P(&mutex);
    if (--readcnt == 0) V(&w);  // 最后一个读者释放写锁
    V(&mutex);

    return hit_flag;
}

// 添加缓存
int add_cache(string url, char* content, int content_size) {
    P(&w); // 写操作加写锁

    if (cache.using_cache_num == MAX_CACHE_NUM) { // 缓存已满
        int oldest_index = 0;
        int oldest_timestamp = cache.cache_files[0].timestamp;

        for (int i = 1; i < MAX_CACHE_NUM; i++) { // 找到最旧的缓存
            if (cache.cache_files[i].timestamp < oldest_timestamp) {
                oldest_timestamp = cache.cache_files[i].timestamp;
                oldest_index = i;
            }
        }

        // 替换最旧的缓存
        strcpy(cache.cache_files[oldest_index].url, url);
        memcpy(cache.cache_files[oldest_index].content, content, content_size);
        cache.cache_files[oldest_index].content_size = content_size;
        cache.cache_files[oldest_index].timestamp = timestamp++;
    } else { // 缓存未满
        int idx = cache.using_cache_num++;
        strcpy(cache.cache_files[idx].url, url);
        memcpy(cache.cache_files[idx].content, content, content_size);
        cache.cache_files[idx].content_size = content_size;
        cache.cache_files[idx].timestamp = timestamp++;
    }

    V(&w); // 释放写锁
    return 0;
}