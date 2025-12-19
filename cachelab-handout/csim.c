//王泽恺 2400013155
#include <stdlib.h>
#include <stdio.h>
#include<getopt.h>
#include"cachelab.h"
int s,E,b,verbose=0,time_stamp=0;
int hit_count=0,miss_count=0,eviction_count=0;
FILE* trace_file;
//打印使用帮助信息
void printUsage() {
    puts("Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>");
    puts("Options:");
    puts("  -h         Print this help message.");
    puts("  -v         Optional verbose flag.");
    puts("  -s <num>   Number of set index bits.");
    puts("  -E <num>   Number of lines per set.");
    puts("  -b <num>   Number of block offset bits.");
    puts("  -t <file>  Trace file.");
    puts("");
    puts("Examples:");
    puts("  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace");
    puts("  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace");
}
struct CacheLine{
    int valid;
    unsigned long long tag;
    int lru;
};
struct cacheset{
    struct CacheLine* lines;
};
struct cache{
    struct cacheset* sets;
};
//初始化cache
void init_cache(struct cache* c){
    int S=1<<s;
    c->sets=(struct cacheset*)malloc(S*sizeof(struct cacheset));
    for(int i=0;i<S;i++){
        c->sets[i].lines=(struct CacheLine*)malloc(E*sizeof(struct CacheLine));
        for (int j = 0; j < E; j++) {
            c->sets[i].lines[j].valid = -1;
            c->sets[i].lines[j].tag = -1;
            c->sets[i].lines[j].lru= -1;
        }
    }
}
//模拟cache
//参数是cache，地址和是否是保存操作
void simulate_cache(struct cache* c,unsigned long long adr,int M){
    unsigned long long tag=adr>>(s+b);
    int set_index=(adr>>b)&((1<<s)-1);
    struct cacheset* set=&c->sets[set_index];
    int lru_counter=set->lines[0].lru, lru_index=0;
    for(int i=0;i<E;i++){
        if(set->lines[i].valid==1&&set->lines[i].tag==tag){
            hit_count++;
            set->lines[i].lru=time_stamp;
            hit_count+=M;
            if(verbose){
                printf("hit\n");
            }
            return;
        }
        if(set->lines[i].lru<lru_counter){
            lru_counter=set->lines[i].lru;
            lru_index=i;
        }
    }
    miss_count++;
    hit_count+=M;
    eviction_count+=(lru_counter!=-1);
    if(verbose){
        if(lru_counter!=-1){
            if(!M){
            printf("miss eviction\n");
            }
            else{
            printf("miss evication hit\n");
            }
        }
        else{
            printf("miss\n");
        }
    }
    set->lines[lru_index].valid = 1;
    set->lines[lru_index].lru=time_stamp;
    set->lines[lru_index].tag=tag;
    return;
};
int main(int argc,char* argv[]){
    int c;
    while((c=getopt(argc,argv,"hvs:E:b:t:"))!=-1){
        switch(c){
            case 'h':
                printUsage();
                exit(0);
            case 'v':
                verbose=1;
                break;
            case 's':
                s=atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                trace_file = fopen(optarg, "r");
                break;
            default:
                printUsage();
                exit(0);

        }
    }
    if(s<=0||E<=0||b<=0||trace_file==NULL){
        printUsage();
        exit(0);
    }
    struct cache *ca=malloc(sizeof(struct cache));
    init_cache(ca);
    size_t adr;
    int size;
    char op;
    while(fscanf(trace_file, "%s %lx,%d\n", &op, &adr, &size) == 3){
        time_stamp+=1;
        if(verbose){
            printf("%c %lx,%d ", op, adr, size);
        }
        switch (op) {
        case 'I':
            continue;
        case 'M': 
            simulate_cache(ca,adr, 1);
            break;
        case 'L': 
        case 'S': 
            simulate_cache(ca,adr, 0);
        }
    }
    int S = 1 << s;
    for (int i = 0; i < S; i++) {
        free(ca->sets[i].lines); 
    }
    free(ca->sets);  
    free(ca);  
    printSummary(hit_count, miss_count, eviction_count);
}