/*
 * mm.c
 * name: 王泽恺
 * ID: 2400013155
 * 使用分离空闲链表 + 分离适配
 * 1. 分离适配，分离空闲链表设置多个桶，每个桶内存储相近大小的空闲块，插入节点到头部
 * 2. 首次适配，从头部开始搜索空闲链表，找到第一个合适的空闲块即返回
 * 3. 改进元数据结构，引入前一个块分配标志位，从而移除分配块的脚部，增加空间利用率
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */
/*
 * If NEXT_FIT defined use next fit search, else use first-fit search 
 */
#define NEXT_FITx

/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */  

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) 
#define PACK_A(size, prev_all,alloc)  ((size) | (alloc)|(prev_all)) 
/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))            
#define PUT(p, val)  (*(unsigned int *)(p) = (val))    

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                   
#define GET_ALLOC(p) (GET(p) & 0x1)                    
#define GET_PA(p) (GET(p) & 0x2)    
#define SET_A(p)  (GET(p) |= 0x1)
#define SET_F(p)   (GET(p) &= ~0x1)
#define SET_PA(p)   (GET(p) |= 0x2)
#define SET_PF(p)    (GET(p) &= ~0x2)
/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE))) 
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE))) 
//链表查询
#define PREV_NODE(bp)       ((char *)(mem_heap_lo() + *(unsigned*)(bp)))
#define NEXT_NODE(bp)       ((char *)(mem_heap_lo() + *(unsigned*)(bp + WSIZE)))
#define SET_NODE_PREV(bp,val)   (*(unsigned*)(bp) = ((unsigned)(long)val))
#define SET_NODE_NEXT(bp,val)   (*(unsigned*)((char *)bp + WSIZE) = ((unsigned)(long)val))
#define ln 15
static char** fl;
static char* heap_listp = 0;
/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)
#define CHECK_ALIGN(p)      (ALIGN(p) == (size_t)p)
static inline void insert(void* bp, size_t size);
static inline void delete(void* bp);
static inline void *extend_heap(size_t words);
static inline void place(void *bp, size_t asize);
static inline void *find_fit(size_t asize);
static inline void *coalesce(void *bp,size_t size);
static inline size_t adjust_size(size_t size);
static inline size_t toindex(size_t size);
/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void) {
   int i = 0;
    // 初始化空闲链表
    fl = mem_heap_lo();
    while (i < ln) {
        if ((heap_listp = mem_sbrk(DSIZE)) == (void*)-1) {
            return -1;
        }
        fl[i] = mem_heap_lo();
        i++;
    }
    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void *)-1){
        return -1;
    }
    PUT(heap_listp, 0);                          /* Alignment padding */
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (3*WSIZE), PACK(0, 3));     /* Epilogue header */
    heap_listp += (2*WSIZE);         
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) 
        return -1;
    return 0;
}

/*
 * malloc
 */
void *malloc (size_t size) {
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      

    if (heap_listp == 0){
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;
    size=adjust_size(size);
    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)                                          
        asize = 2*DSIZE;                                        
    else
        asize = DSIZE * ((size + (WSIZE)+(DSIZE - 1)) / DSIZE);

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {  
        place(bp, asize);                  
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE);                 
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)  
        return NULL;                                  
    place(bp, asize);                                 
    return bp;
}

/*
 * free
 */
void free (void *ptr) {
    if (ptr == NULL) 
        return;

    size_t size = GET_SIZE(HDRP(ptr));
    if (heap_listp == 0){
        mm_init();
        return;
    }

    PUT(HDRP(ptr), PACK_A(size,GET_PA(HDRP(ptr)),0));
    PUT(FTRP(ptr),PACK_A(size,GET_PA(HDRP(ptr)),0));
    coalesce(ptr,size);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size) {
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        free(oldptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if(oldptr == NULL) {
        return malloc(size);
    }

    newptr = malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(oldptr));
    if(size < oldsize) oldsize = size;
    memcpy(newptr, oldptr, oldsize);

    /* Free the old block. */
    free(oldptr);

    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc (size_t nmemb, size_t size) {
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p) {
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * mm_checkheap
 */
void mm_checkheap(int lineno) {
    char* bp=mem_heap_lo();
    bp+=ln*DSIZE;
    if(GET(bp)!=0){
        dbg_printf("[%d]Error: word before prologue error at %p\n", lineno, bp);
    }
    bp+=WSIZE;
    if(GET(bp)!=PACK(DSIZE, 1)){
        dbg_printf("[%d]Error: prologue header error at %p\n", lineno, bp);
    }
    bp+=WSIZE;
    if(GET(bp)!=PACK(DSIZE, 1)){
        dbg_printf("[%d]Error: prologue footer error at %p\n", lineno, bp);
    }
    size_t PA = 1;
    size_t PF = 0;
    while ((void*)bp < mem_heap_hi()) {
        if (GET_SIZE(HDRP(bp)) == 0) {
            dbg_printf("[%d]Error: block size invalid at %p\n", lineno, bp);
        }
        if (!CHECK_ALIGN(bp)) {
            dbg_printf("[%d]Error: block not aligned at %p\n", lineno, bp);
        }
        if (PA != 1) {
            if (GET_PA(HDRP(bp)) != PA) {
                dbg_printf("[%d]Error: prev alloc bit is incorrect at %p\n", lineno, bp);
            }
        }
        PA = GET_ALLOC(HDRP(bp));
        if (!GET_ALLOC(HDRP(bp))) {
            if (PF) {
                dbg_printf("[%d]Error: two consecutive free blocks at %p\n", lineno, bp);
            }
            PF = 1;
            if (GET(HDRP(bp)) != GET(FTRP(bp))) {
                dbg_printf("[%d]Error: header not match footer at %p\n", lineno, bp);
            }
        }
        else {
            PF = 0;
        }
            bp=NEXT_BLKP(bp);
    }
    if (GET_SIZE(HDRP(bp)) != 0) {
        dbg_printf("[%d]EError: epilogue block size invalid at %p\n", lineno, bp);
    }
    if (GET_ALLOC(HDRP(bp)) != 1) {
        dbg_printf("[%d]Error: epilogue block is not allocated at %p\n", lineno, bp);
    }
    if (!CHECK_ALIGN(bp)) {
        dbg_printf("[%d]Error: heap top not aligned at %p\n", lineno, bp);
    }
}

/* 
 * The remaining routines are internal helper routines 
 */

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static inline void *extend_heap(size_t words) 
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;                                        

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK_A(size,GET_PA(HDRP(bp)), 0));         /* Free block header */   
    PUT(FTRP(bp), PACK_A(size,GET_PA(HDRP(bp)), 0));         /* Free block footer */   
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */ 

    /* Coalesce if the previous block was free */
    return coalesce(bp,size);                                          
}

static inline size_t adjust_size(size_t size) {
    //调整size以获得更好的性能
    if (size >= 120 && size < 128) {
        return 128;
    }
    if (size >= 448 && size < 512) {
        return 512;
    }
    if (size >= 1016 && size < 1024) {
        return 1024;
    }
    if (size >= 2040 && size < 2048) {
        return 2048;
    }
    return size;
}
/* 
 * find_fit - Find a fit for a block with asize bytes 
 */
static inline void *find_fit(size_t asize)
{
    /* First-fit search */
    int idx=toindex(asize);
    char *bp;
    for(;idx<ln;idx++){
        for(bp=fl[idx];bp != mem_heap_lo(); bp = NEXT_NODE(bp)){
            if (GET_SIZE(HDRP(bp)) >= asize) {
                return bp;
            }
        }
    }
    return NULL; /* No fit */
}
static inline size_t toindex(size_t size){
    //根据size分组
    if (size <= 24)
        return 0;
    if (size <= 32)
        return 1;
    if (size <= 64)
        return 2;
    if (size <= 80)
        return 3;
    if (size <= 128)
        return 4;
    if (size <= 248)
        return 5;
    if (size <= 480)
        return 6;
    if (size <= 960)
        return 7;
    if (size <= 1920)
        return 8;
    if (size <= 3840)
        return 9;
    if (size <= 7680)
        return 10;
    if (size <= 15360)
        return 11;
    if (size <= 30720)
        return 12;
    if (size <= 61440)
        return 13;
    else
        return 14;
}
/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
static inline void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));   
    delete(bp);
    if ((csize - asize) >= (2*DSIZE)) { 
        PUT(HDRP(bp), PACK_A(asize,GET_PA(HDRP(bp)), 1));
        PUT(HDRP(NEXT_BLKP(bp)), PACK_A(csize-asize,2, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK_A(csize-asize,2, 0));
        insert(NEXT_BLKP(bp),csize-asize);
    }
    else { 
        SET_A(HDRP(bp));
        SET_PA(HDRP(NEXT_BLKP(bp)));
        if(!GET_ALLOC(HDRP(NEXT_BLKP(bp)))){
            SET_PA(FTRP(NEXT_BLKP(bp)));
        }
    }
}
static inline void insert(void* bp, size_t size){
    size_t idx=toindex(size);
    char* p=fl[idx];
    if(p==mem_heap_lo()){
        fl[idx]=bp;
        SET_NODE_PREV(bp,NULL);
        SET_NODE_NEXT(bp,NULL);
    }
    else{
        fl[idx]=bp;
        SET_NODE_PREV(bp,NULL);
        SET_NODE_NEXT(bp,p);
        SET_NODE_PREV(p,bp);
    }
}
static inline void delete(void* bp){
    char* p = PREV_NODE(bp);
    char* n = NEXT_NODE(bp);
    size_t size = GET_SIZE(HDRP(bp));
    size_t idx = toindex(size);
    if (p== mem_heap_lo()) {
        fl[idx] = n;
        if (n != mem_heap_lo()) {
            SET_NODE_PREV(n, NULL);
        }
    }
    else {
        SET_NODE_NEXT(p, n);
        if (n != mem_heap_lo()) {
            SET_NODE_PREV(n, p);
        }
    }
}
/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */
static inline void *coalesce(void *bp,size_t size) 
{
    size_t prev_alloc = GET_PA(HDRP(bp));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));


    if (prev_alloc && next_alloc) {  
        SET_PF(HDRP(NEXT_BLKP(bp)));          /* Case 1 前后均分配*/
    }

    else if (prev_alloc && !next_alloc) {      /* Case 2 前分后未分*/
        delete(NEXT_BLKP(bp));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK_A(size,2, 0));
        PUT(FTRP(bp), PACK_A(size,2, 0));
    }

    else if (!prev_alloc && next_alloc) {      /* Case 3 前未分后分*/
        delete(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        SET_PF(HDRP(NEXT_BLKP(bp)));
        PUT(FTRP(bp), PACK_A(size,GET_PA(HDRP(PREV_BLKP(bp))), 0));
        PUT(HDRP(PREV_BLKP(bp)),PACK_A(size,GET_PA(HDRP(PREV_BLKP(bp))), 0));
        bp = PREV_BLKP(bp);
    }

    else {                                     /* Case 4 都未分*/
        delete(NEXT_BLKP(bp));
        delete(PREV_BLKP(bp));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK_A(size,GET_PA(HDRP(PREV_BLKP(bp))), 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK_A(size,GET_PA(HDRP(PREV_BLKP(bp))), 0));
        bp = PREV_BLKP(bp);
    }
    insert(bp,size);
    return bp;
}