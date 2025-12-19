
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 5f 00 00 	mov    0x5fd9(%rip),%rax        # 7fe8 <__gmon_start__@Base>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	ret

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 aa 5e 00 00    	push   0x5eaa(%rip)        # 7ed0 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 ab 5e 00 00 	bnd jmp *0x5eab(%rip)        # 7ed8 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64
    2034:	68 00 00 00 00       	push   $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64
    2044:	68 01 00 00 00       	push   $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64
    2054:	68 02 00 00 00       	push   $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64
    2064:	68 03 00 00 00       	push   $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64
    2074:	68 04 00 00 00       	push   $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64
    2084:	68 05 00 00 00       	push   $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmp 2020 <_init+0x20>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64
    2094:	68 06 00 00 00       	push   $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmp 2020 <_init+0x20>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64
    20a4:	68 07 00 00 00       	push   $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64
    20b4:	68 08 00 00 00       	push   $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64
    20c4:	68 09 00 00 00       	push   $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64
    20d4:	68 0a 00 00 00       	push   $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64
    20e4:	68 0b 00 00 00       	push   $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64
    20f4:	68 0c 00 00 00       	push   $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64
    2104:	68 0d 00 00 00       	push   $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmp 2020 <_init+0x20>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64
    2114:	68 0e 00 00 00       	push   $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmp 2020 <_init+0x20>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64
    2124:	68 0f 00 00 00       	push   $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64
    2134:	68 10 00 00 00       	push   $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64
    2144:	68 11 00 00 00       	push   $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    214f:	90                   	nop
    2150:	f3 0f 1e fa          	endbr64
    2154:	68 12 00 00 00       	push   $0x12
    2159:	f2 e9 c1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    215f:	90                   	nop
    2160:	f3 0f 1e fa          	endbr64
    2164:	68 13 00 00 00       	push   $0x13
    2169:	f2 e9 b1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    216f:	90                   	nop
    2170:	f3 0f 1e fa          	endbr64
    2174:	68 14 00 00 00       	push   $0x14
    2179:	f2 e9 a1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    217f:	90                   	nop
    2180:	f3 0f 1e fa          	endbr64
    2184:	68 15 00 00 00       	push   $0x15
    2189:	f2 e9 91 fe ff ff    	bnd jmp 2020 <_init+0x20>
    218f:	90                   	nop
    2190:	f3 0f 1e fa          	endbr64
    2194:	68 16 00 00 00       	push   $0x16
    2199:	f2 e9 81 fe ff ff    	bnd jmp 2020 <_init+0x20>
    219f:	90                   	nop
    21a0:	f3 0f 1e fa          	endbr64
    21a4:	68 17 00 00 00       	push   $0x17
    21a9:	f2 e9 71 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21af:	90                   	nop
    21b0:	f3 0f 1e fa          	endbr64
    21b4:	68 18 00 00 00       	push   $0x18
    21b9:	f2 e9 61 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21bf:	90                   	nop
    21c0:	f3 0f 1e fa          	endbr64
    21c4:	68 19 00 00 00       	push   $0x19
    21c9:	f2 e9 51 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21cf:	90                   	nop
    21d0:	f3 0f 1e fa          	endbr64
    21d4:	68 1a 00 00 00       	push   $0x1a
    21d9:	f2 e9 41 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21df:	90                   	nop
    21e0:	f3 0f 1e fa          	endbr64
    21e4:	68 1b 00 00 00       	push   $0x1b
    21e9:	f2 e9 31 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21ef:	90                   	nop
    21f0:	f3 0f 1e fa          	endbr64
    21f4:	68 1c 00 00 00       	push   $0x1c
    21f9:	f2 e9 21 fe ff ff    	bnd jmp 2020 <_init+0x20>
    21ff:	90                   	nop
    2200:	f3 0f 1e fa          	endbr64
    2204:	68 1d 00 00 00       	push   $0x1d
    2209:	f2 e9 11 fe ff ff    	bnd jmp 2020 <_init+0x20>
    220f:	90                   	nop
    2210:	f3 0f 1e fa          	endbr64
    2214:	68 1e 00 00 00       	push   $0x1e
    2219:	f2 e9 01 fe ff ff    	bnd jmp 2020 <_init+0x20>
    221f:	90                   	nop

Disassembly of section .plt.got:

0000000000002220 <__cxa_finalize@plt>:
    2220:	f3 0f 1e fa          	endbr64
    2224:	f2 ff 25 cd 5d 00 00 	bnd jmp *0x5dcd(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    222b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002230 <getenv@plt>:
    2230:	f3 0f 1e fa          	endbr64
    2234:	f2 ff 25 a5 5c 00 00 	bnd jmp *0x5ca5(%rip)        # 7ee0 <getenv@GLIBC_2.2.5>
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <free@plt>:
    2240:	f3 0f 1e fa          	endbr64
    2244:	f2 ff 25 9d 5c 00 00 	bnd jmp *0x5c9d(%rip)        # 7ee8 <free@GLIBC_2.2.5>
    224b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002250 <__errno_location@plt>:
    2250:	f3 0f 1e fa          	endbr64
    2254:	f2 ff 25 95 5c 00 00 	bnd jmp *0x5c95(%rip)        # 7ef0 <__errno_location@GLIBC_2.2.5>
    225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002260 <strcpy@plt>:
    2260:	f3 0f 1e fa          	endbr64
    2264:	f2 ff 25 8d 5c 00 00 	bnd jmp *0x5c8d(%rip)        # 7ef8 <strcpy@GLIBC_2.2.5>
    226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002270 <__read_chk@plt>:
    2270:	f3 0f 1e fa          	endbr64
    2274:	f2 ff 25 85 5c 00 00 	bnd jmp *0x5c85(%rip)        # 7f00 <__read_chk@GLIBC_2.4>
    227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002280 <puts@plt>:
    2280:	f3 0f 1e fa          	endbr64
    2284:	f2 ff 25 7d 5c 00 00 	bnd jmp *0x5c7d(%rip)        # 7f08 <puts@GLIBC_2.2.5>
    228b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002290 <write@plt>:
    2290:	f3 0f 1e fa          	endbr64
    2294:	f2 ff 25 75 5c 00 00 	bnd jmp *0x5c75(%rip)        # 7f10 <write@GLIBC_2.2.5>
    229b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022a0 <strlen@plt>:
    22a0:	f3 0f 1e fa          	endbr64
    22a4:	f2 ff 25 6d 5c 00 00 	bnd jmp *0x5c6d(%rip)        # 7f18 <strlen@GLIBC_2.2.5>
    22ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022b0 <__stack_chk_fail@plt>:
    22b0:	f3 0f 1e fa          	endbr64
    22b4:	f2 ff 25 65 5c 00 00 	bnd jmp *0x5c65(%rip)        # 7f20 <__stack_chk_fail@GLIBC_2.4>
    22bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022c0 <alarm@plt>:
    22c0:	f3 0f 1e fa          	endbr64
    22c4:	f2 ff 25 5d 5c 00 00 	bnd jmp *0x5c5d(%rip)        # 7f28 <alarm@GLIBC_2.2.5>
    22cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022d0 <close@plt>:
    22d0:	f3 0f 1e fa          	endbr64
    22d4:	f2 ff 25 55 5c 00 00 	bnd jmp *0x5c55(%rip)        # 7f30 <close@GLIBC_2.2.5>
    22db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022e0 <strcmp@plt>:
    22e0:	f3 0f 1e fa          	endbr64
    22e4:	f2 ff 25 4d 5c 00 00 	bnd jmp *0x5c4d(%rip)        # 7f38 <strcmp@GLIBC_2.2.5>
    22eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000022f0 <signal@plt>:
    22f0:	f3 0f 1e fa          	endbr64
    22f4:	f2 ff 25 45 5c 00 00 	bnd jmp *0x5c45(%rip)        # 7f40 <signal@GLIBC_2.2.5>
    22fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002300 <gethostbyname@plt>:
    2300:	f3 0f 1e fa          	endbr64
    2304:	f2 ff 25 3d 5c 00 00 	bnd jmp *0x5c3d(%rip)        # 7f48 <gethostbyname@GLIBC_2.2.5>
    230b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002310 <__memmove_chk@plt>:
    2310:	f3 0f 1e fa          	endbr64
    2314:	f2 ff 25 35 5c 00 00 	bnd jmp *0x5c35(%rip)        # 7f50 <__memmove_chk@GLIBC_2.3.4>
    231b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002320 <strtol@plt>:
    2320:	f3 0f 1e fa          	endbr64
    2324:	f2 ff 25 2d 5c 00 00 	bnd jmp *0x5c2d(%rip)        # 7f58 <strtol@GLIBC_2.2.5>
    232b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002330 <memcpy@plt>:
    2330:	f3 0f 1e fa          	endbr64
    2334:	f2 ff 25 25 5c 00 00 	bnd jmp *0x5c25(%rip)        # 7f60 <memcpy@GLIBC_2.14>
    233b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002340 <malloc@plt>:
    2340:	f3 0f 1e fa          	endbr64
    2344:	f2 ff 25 1d 5c 00 00 	bnd jmp *0x5c1d(%rip)        # 7f68 <malloc@GLIBC_2.2.5>
    234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002350 <fflush@plt>:
    2350:	f3 0f 1e fa          	endbr64
    2354:	f2 ff 25 15 5c 00 00 	bnd jmp *0x5c15(%rip)        # 7f70 <fflush@GLIBC_2.2.5>
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002360 <__isoc99_sscanf@plt>:
    2360:	f3 0f 1e fa          	endbr64
    2364:	f2 ff 25 0d 5c 00 00 	bnd jmp *0x5c0d(%rip)        # 7f78 <__isoc99_sscanf@GLIBC_2.7>
    236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002370 <__fgets_chk@plt>:
    2370:	f3 0f 1e fa          	endbr64
    2374:	f2 ff 25 05 5c 00 00 	bnd jmp *0x5c05(%rip)        # 7f80 <__fgets_chk@GLIBC_2.4>
    237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002380 <__printf_chk@plt>:
    2380:	f3 0f 1e fa          	endbr64
    2384:	f2 ff 25 fd 5b 00 00 	bnd jmp *0x5bfd(%rip)        # 7f88 <__printf_chk@GLIBC_2.3.4>
    238b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002390 <fopen@plt>:
    2390:	f3 0f 1e fa          	endbr64
    2394:	f2 ff 25 f5 5b 00 00 	bnd jmp *0x5bf5(%rip)        # 7f90 <fopen@GLIBC_2.2.5>
    239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023a0 <gethostname@plt>:
    23a0:	f3 0f 1e fa          	endbr64
    23a4:	f2 ff 25 ed 5b 00 00 	bnd jmp *0x5bed(%rip)        # 7f98 <gethostname@GLIBC_2.2.5>
    23ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023b0 <exit@plt>:
    23b0:	f3 0f 1e fa          	endbr64
    23b4:	f2 ff 25 e5 5b 00 00 	bnd jmp *0x5be5(%rip)        # 7fa0 <exit@GLIBC_2.2.5>
    23bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023c0 <connect@plt>:
    23c0:	f3 0f 1e fa          	endbr64
    23c4:	f2 ff 25 dd 5b 00 00 	bnd jmp *0x5bdd(%rip)        # 7fa8 <connect@GLIBC_2.2.5>
    23cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023d0 <__fprintf_chk@plt>:
    23d0:	f3 0f 1e fa          	endbr64
    23d4:	f2 ff 25 d5 5b 00 00 	bnd jmp *0x5bd5(%rip)        # 7fb0 <__fprintf_chk@GLIBC_2.3.4>
    23db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023e0 <sleep@plt>:
    23e0:	f3 0f 1e fa          	endbr64
    23e4:	f2 ff 25 cd 5b 00 00 	bnd jmp *0x5bcd(%rip)        # 7fb8 <sleep@GLIBC_2.2.5>
    23eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000023f0 <__ctype_b_loc@plt>:
    23f0:	f3 0f 1e fa          	endbr64
    23f4:	f2 ff 25 c5 5b 00 00 	bnd jmp *0x5bc5(%rip)        # 7fc0 <__ctype_b_loc@GLIBC_2.3>
    23fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002400 <__sprintf_chk@plt>:
    2400:	f3 0f 1e fa          	endbr64
    2404:	f2 ff 25 bd 5b 00 00 	bnd jmp *0x5bbd(%rip)        # 7fc8 <__sprintf_chk@GLIBC_2.3.4>
    240b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002410 <socket@plt>:
    2410:	f3 0f 1e fa          	endbr64
    2414:	f2 ff 25 b5 5b 00 00 	bnd jmp *0x5bb5(%rip)        # 7fd0 <socket@GLIBC_2.2.5>
    241b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000002420 <_start>:
    2420:	f3 0f 1e fa          	endbr64
    2424:	31 ed                	xor    %ebp,%ebp
    2426:	49 89 d1             	mov    %rdx,%r9
    2429:	5e                   	pop    %rsi
    242a:	48 89 e2             	mov    %rsp,%rdx
    242d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2431:	50                   	push   %rax
    2432:	54                   	push   %rsp
    2433:	45 31 c0             	xor    %r8d,%r8d
    2436:	31 c9                	xor    %ecx,%ecx
    2438:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 2509 <main>
    243f:	ff 15 93 5b 00 00    	call   *0x5b93(%rip)        # 7fd8 <__libc_start_main@GLIBC_2.34>
    2445:	f4                   	hlt
    2446:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    244d:	00 00 00 

0000000000002450 <deregister_tm_clones>:
    2450:	48 8d 3d e9 71 00 00 	lea    0x71e9(%rip),%rdi        # 9640 <stdout@GLIBC_2.2.5>
    2457:	48 8d 05 e2 71 00 00 	lea    0x71e2(%rip),%rax        # 9640 <stdout@GLIBC_2.2.5>
    245e:	48 39 f8             	cmp    %rdi,%rax
    2461:	74 15                	je     2478 <deregister_tm_clones+0x28>
    2463:	48 8b 05 76 5b 00 00 	mov    0x5b76(%rip),%rax        # 7fe0 <_ITM_deregisterTMCloneTable@Base>
    246a:	48 85 c0             	test   %rax,%rax
    246d:	74 09                	je     2478 <deregister_tm_clones+0x28>
    246f:	ff e0                	jmp    *%rax
    2471:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2478:	c3                   	ret
    2479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002480 <register_tm_clones>:
    2480:	48 8d 3d b9 71 00 00 	lea    0x71b9(%rip),%rdi        # 9640 <stdout@GLIBC_2.2.5>
    2487:	48 8d 35 b2 71 00 00 	lea    0x71b2(%rip),%rsi        # 9640 <stdout@GLIBC_2.2.5>
    248e:	48 29 fe             	sub    %rdi,%rsi
    2491:	48 89 f0             	mov    %rsi,%rax
    2494:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2498:	48 c1 f8 03          	sar    $0x3,%rax
    249c:	48 01 c6             	add    %rax,%rsi
    249f:	48 d1 fe             	sar    $1,%rsi
    24a2:	74 14                	je     24b8 <register_tm_clones+0x38>
    24a4:	48 8b 05 45 5b 00 00 	mov    0x5b45(%rip),%rax        # 7ff0 <_ITM_registerTMCloneTable@Base>
    24ab:	48 85 c0             	test   %rax,%rax
    24ae:	74 08                	je     24b8 <register_tm_clones+0x38>
    24b0:	ff e0                	jmp    *%rax
    24b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    24b8:	c3                   	ret
    24b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000024c0 <__do_global_dtors_aux>:
    24c0:	f3 0f 1e fa          	endbr64
    24c4:	80 3d 9d 71 00 00 00 	cmpb   $0x0,0x719d(%rip)        # 9668 <completed.0>
    24cb:	75 2b                	jne    24f8 <__do_global_dtors_aux+0x38>
    24cd:	55                   	push   %rbp
    24ce:	48 83 3d 22 5b 00 00 	cmpq   $0x0,0x5b22(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    24d5:	00 
    24d6:	48 89 e5             	mov    %rsp,%rbp
    24d9:	74 0c                	je     24e7 <__do_global_dtors_aux+0x27>
    24db:	48 8b 3d 26 5b 00 00 	mov    0x5b26(%rip),%rdi        # 8008 <__dso_handle>
    24e2:	e8 39 fd ff ff       	call   2220 <__cxa_finalize@plt>
    24e7:	e8 64 ff ff ff       	call   2450 <deregister_tm_clones>
    24ec:	c6 05 75 71 00 00 01 	movb   $0x1,0x7175(%rip)        # 9668 <completed.0>
    24f3:	5d                   	pop    %rbp
    24f4:	c3                   	ret
    24f5:	0f 1f 00             	nopl   (%rax)
    24f8:	c3                   	ret
    24f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002500 <frame_dummy>:
    2500:	f3 0f 1e fa          	endbr64
    2504:	e9 77 ff ff ff       	jmp    2480 <register_tm_clones>

0000000000002509 <main>:
    2509:	f3 0f 1e fa          	endbr64
    250d:	53                   	push   %rbx
    250e:	83 ff 01             	cmp    $0x1,%edi
    2511:	0f 84 15 01 00 00    	je     262c <main+0x123>
    2517:	48 89 f3             	mov    %rsi,%rbx
    251a:	83 ff 02             	cmp    $0x2,%edi
    251d:	0f 85 3e 01 00 00    	jne    2661 <main+0x158>
    2523:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    2527:	48 8d 35 88 31 00 00 	lea    0x3188(%rip),%rsi        # 56b6 <array.0+0x3b6>
    252e:	e8 5d fe ff ff       	call   2390 <fopen@plt>
    2533:	48 89 05 36 71 00 00 	mov    %rax,0x7136(%rip)        # 9670 <infile>
    253a:	48 85 c0             	test   %rax,%rax
    253d:	0f 84 fc 00 00 00    	je     263f <main+0x136>
    2543:	e8 08 08 00 00       	call   2d50 <initialize_bomb>
    2548:	48 89 c3             	mov    %rax,%rbx
    254b:	48 8d 3d 3e 2b 00 00 	lea    0x2b3e(%rip),%rdi        # 5090 <_IO_stdin_used+0x90>
    2552:	e8 29 fd ff ff       	call   2280 <puts@plt>
    2557:	48 8d 3d 6a 2b 00 00 	lea    0x2b6a(%rip),%rdi        # 50c8 <_IO_stdin_used+0xc8>
    255e:	e8 1d fd ff ff       	call   2280 <puts@plt>
    2563:	e8 79 0b 00 00       	call   30e1 <read_line>
    2568:	48 89 c7             	mov    %rax,%rdi
    256b:	e8 34 02 00 00       	call   27a4 <phase_1>
    2570:	48 89 df             	mov    %rbx,%rdi
    2573:	e8 a7 0c 00 00       	call   321f <phase_defused>
    2578:	48 8d 3d 89 2b 00 00 	lea    0x2b89(%rip),%rdi        # 5108 <_IO_stdin_used+0x108>
    257f:	e8 fc fc ff ff       	call   2280 <puts@plt>
    2584:	e8 58 0b 00 00       	call   30e1 <read_line>
    2589:	48 89 c7             	mov    %rax,%rdi
    258c:	e8 37 02 00 00       	call   27c8 <phase_2>
    2591:	48 89 df             	mov    %rbx,%rdi
    2594:	e8 86 0c 00 00       	call   321f <phase_defused>
    2599:	48 8d 3d 9b 2a 00 00 	lea    0x2a9b(%rip),%rdi        # 503b <_IO_stdin_used+0x3b>
    25a0:	e8 db fc ff ff       	call   2280 <puts@plt>
    25a5:	e8 37 0b 00 00       	call   30e1 <read_line>
    25aa:	48 89 c7             	mov    %rax,%rdi
    25ad:	e8 88 02 00 00       	call   283a <phase_3>
    25b2:	48 89 df             	mov    %rbx,%rdi
    25b5:	e8 65 0c 00 00       	call   321f <phase_defused>
    25ba:	48 8d 3d 97 2a 00 00 	lea    0x2a97(%rip),%rdi        # 5058 <_IO_stdin_used+0x58>
    25c1:	e8 ba fc ff ff       	call   2280 <puts@plt>
    25c6:	e8 16 0b 00 00       	call   30e1 <read_line>
    25cb:	48 89 c7             	mov    %rax,%rdi
    25ce:	e8 58 03 00 00       	call   292b <phase_4>
    25d3:	48 89 df             	mov    %rbx,%rdi
    25d6:	e8 44 0c 00 00       	call   321f <phase_defused>
    25db:	48 8d 3d 56 2b 00 00 	lea    0x2b56(%rip),%rdi        # 5138 <_IO_stdin_used+0x138>
    25e2:	e8 99 fc ff ff       	call   2280 <puts@plt>
    25e7:	e8 f5 0a 00 00       	call   30e1 <read_line>
    25ec:	48 89 c7             	mov    %rax,%rdi
    25ef:	e8 b6 03 00 00       	call   29aa <phase_5>
    25f4:	48 89 df             	mov    %rbx,%rdi
    25f7:	e8 23 0c 00 00       	call   321f <phase_defused>
    25fc:	48 8d 3d 6e 2a 00 00 	lea    0x2a6e(%rip),%rdi        # 5071 <_IO_stdin_used+0x71>
    2603:	e8 78 fc ff ff       	call   2280 <puts@plt>
    2608:	e8 d4 0a 00 00       	call   30e1 <read_line>
    260d:	48 89 c7             	mov    %rax,%rdi
    2610:	e8 26 04 00 00       	call   2a3b <phase_6>
    2615:	48 89 df             	mov    %rbx,%rdi
    2618:	e8 02 0c 00 00       	call   321f <phase_defused>
    261d:	48 89 df             	mov    %rbx,%rdi
    2620:	e8 1b fc ff ff       	call   2240 <free@plt>
    2625:	b8 00 00 00 00       	mov    $0x0,%eax
    262a:	5b                   	pop    %rbx
    262b:	c3                   	ret
    262c:	48 8b 05 1d 70 00 00 	mov    0x701d(%rip),%rax        # 9650 <stdin@GLIBC_2.2.5>
    2633:	48 89 05 36 70 00 00 	mov    %rax,0x7036(%rip)        # 9670 <infile>
    263a:	e9 04 ff ff ff       	jmp    2543 <main+0x3a>
    263f:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    2643:	48 8b 13             	mov    (%rbx),%rdx
    2646:	48 8d 35 b7 29 00 00 	lea    0x29b7(%rip),%rsi        # 5004 <_IO_stdin_used+0x4>
    264d:	bf 01 00 00 00       	mov    $0x1,%edi
    2652:	e8 29 fd ff ff       	call   2380 <__printf_chk@plt>
    2657:	bf 08 00 00 00       	mov    $0x8,%edi
    265c:	e8 4f fd ff ff       	call   23b0 <exit@plt>
    2661:	48 8b 16             	mov    (%rsi),%rdx
    2664:	48 8d 35 b6 29 00 00 	lea    0x29b6(%rip),%rsi        # 5021 <_IO_stdin_used+0x21>
    266b:	bf 01 00 00 00       	mov    $0x1,%edi
    2670:	b8 00 00 00 00       	mov    $0x0,%eax
    2675:	e8 06 fd ff ff       	call   2380 <__printf_chk@plt>
    267a:	bf 08 00 00 00       	mov    $0x8,%edi
    267f:	e8 2c fd ff ff       	call   23b0 <exit@plt>

0000000000002684 <abracadabra>:
    2684:	f3 0f 1e fa          	endbr64
    2688:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    268f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2696:	00 00 num_input_strings
    2698:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    269f:	00 
    26a0:	31 c0                	xor    %eax,%eax
    26a2:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    26a7:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    26ac:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    26b1:	48 8d 35 a3 2a 00 00 	lea    0x2aa3(%rip),%rsi        # 515b <_IO_stdin_used+0x15b>
    26b8:	48 8d 3d a9 71 00 00 	lea    0x71a9(%rip),%rdi        # 9868 <input_strings+0x168>
    26bf:	e8 9c fc ff ff       	call   2360 <__isoc99_sscanf@plt>
    26c4:	83 f8 03             	cmp    $0x3,%eax
    26c7:	74 20                	je     26e9 <abracadabra+0x65>
    26c9:	b8 00 00 00 00       	mov    $0x0,%eax
    26ce:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
    26d5:	00 
    26d6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    26dd:	00 00 
    26df:	75 2b                	jne    270c <abracadabra+0x88>
    26e1:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    26e8:	c3                   	ret
    26e9:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    26ee:	48 8d 35 7b 2a 00 00 	lea    0x2a7b(%rip),%rsi        # 5170 <_IO_stdin_used+0x170>
    26f5:	e8 07 06 00 00       	call   2d01 <strings_not_equal>
    26fa:	85 c0                	test   %eax,%eax
    26fc:	74 07                	je     2705 <abracadabra+0x81>
    26fe:	b8 00 00 00 00       	mov    $0x0,%eax
    2703:	eb c9                	jmp    26ce <abracadabra+0x4a>
    2705:	b8 01 00 00 00       	mov    $0x1,%eax
    270a:	eb c2                	jmp    26ce <abracadabra+0x4a>
    270c:	e8 9f fb ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000002711 <alohomora>:
    2711:	f3 0f 1e fa          	endbr64
    2715:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    271c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2723:	00 00 
    2725:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    272a:	31 c0                	xor    %eax,%eax
    272c:	48 8d 05 45 70 00 00 	lea    0x7045(%rip),%rax        # 9778 <input_strings+0x78>
    2733:	eb 04                	jmp    2739 <alohomora+0x28>
    2735:	48 83 c0 01          	add    $0x1,%rax
    2739:	80 38 00             	cmpb   $0x0,(%rax)
    273c:	75 f7                	jne    2735 <alohomora+0x24>
    273e:	48 83 e8 01          	sub    $0x1,%rax
    2742:	48 89 e2             	mov    %rsp,%rdx
    2745:	eb 0a                	jmp    2751 <alohomora+0x40>
    2747:	88 0a                	mov    %cl,(%rdx)
    2749:	48 83 c2 01          	add    $0x1,%rdx
    274d:	48 83 e8 01          	sub    $0x1,%rax
    2751:	0f b6 08             	movzbl (%rax),%ecx
    2754:	80 f9 20             	cmp    $0x20,%cl
    2757:	74 0c                	je     2765 <alohomora+0x54>
    2759:	48 8d 35 18 70 00 00 	lea    0x7018(%rip),%rsi        # 9778 <input_strings+0x78>
    2760:	48 39 f0             	cmp    %rsi,%rax
    2763:	75 e2                	jne    2747 <alohomora+0x36>
    2765:	c6 02 00             	movb   $0x0,(%rdx)
    2768:	48 89 e7             	mov    %rsp,%rdi
    276b:	48 8d 35 26 2a 00 00 	lea    0x2a26(%rip),%rsi        # 5198 <_IO_stdin_used+0x198>
    2772:	e8 8a 05 00 00       	call   2d01 <strings_not_equal>
    2777:	85 c0                	test   %eax,%eax
    2779:	74 1d                	je     2798 <alohomora+0x87>
    277b:	b8 00 00 00 00       	mov    $0x0,%eax
    2780:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    2785:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    278c:	00 00 
    278e:	75 0f                	jne    279f <alohomora+0x8e>
    2790:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    2797:	c3                   	ret
    2798:	b8 01 00 00 00       	mov    $0x1,%eax
    279d:	eb e1                	jmp    2780 <alohomora+0x6f>
    279f:	e8 0c fb ff ff       	call   22b0 <__stack_chk_fail@plt>

00000000000027a4 <phase_1>:
    27a4:	f3 0f 1e fa          	endbr64
    27a8:	48 83 ec 08          	sub    $0x8,%rsp
    27ac:	48 8d 35 0d 2a 00 00 	lea    0x2a0d(%rip),%rsi        # 51c0 <_IO_stdin_used+0x1c0>
    27b3:	e8 49 05 00 00       	call   2d01 <strings_not_equal>
    27b8:	85 c0                	test   %eax,%eax
    27c1 <phase_1+0x1d>
    27bc:	48 83 c4 08          	add    $0x8,%rsp
    27c0:	c3                   	ret
    27c1:	e8 50 08 00 00       	call   3016 <explode_bomb>
    27c6:	eb f4                	jmp    27bc <phase_1+0x18>

00000000000027c8 <phase_2>:
    27c8:	f3 0f 1e fa          	endbr64
    27cc:	53                   	push   %rbx
    27cd:	48 83 ec 20          	sub    $0x20,%rsp
    27d1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    27d8:	00 00 
    27da:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    27df:	31 c0                	xor    %eax,%eax
    27e1:	48 89 e6             	mov    %rsp,%rsi
    27e4:	e8 b3 08 00 00       	call   309c <read_six_numbers>
    27e9:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    27ed:	78 07                	js     27f6 <phase_2+0x2e>
    27ef:	bb 01 00 00 00       	mov    $0x1,%ebx
    27f4:	eb 0a                	jmp    2800 <phase_2+0x38>
    27f6:	e8 1b 08 00 00       	call   3016 <explode_bomb>
    27fb:	eb f2                	jmp    27ef <phase_2+0x27>
    27fd:	83 c3 01             	add    $0x1,%ebx
    2800:	83 fb 05             	cmp    $0x5,%ebx
    2803:	7f 1a                	jg     281f <phase_2+0x57>
    2805:	48 63 c3             	movslq %ebx,%rax
    2808:	8d 53 ff             	lea    -0x1(%rbx),%edx
    280b:	48 63 d2             	movslq %edx,%rdx
    280e:	89 d9                	mov    %ebx,%ecx
    2810:	03 0c 94             	add    (%rsp,%rdx,4),%ecx
    2813:	39 0c 84             	cmp    %ecx,(%rsp,%rax,4)
    2816:	74 e5                	je     27fd <phase_2+0x35>
    2818:	e8 f9 07 00 00       	call   3016 <explode_bomb>
    281d:	eb de                	jmp    27fd <phase_2+0x35>
    281f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2824:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    282b:	00 00 
    282d:	75 06                	jne    2835 <phase_2+0x6d>
    282f:	48 83 c4 20          	add    $0x20,%rsp
    2833:	5b                   	pop    %rbx
    2834:	c3                   	ret
    2835:	e8 76 fa ff ff       	call   22b0 <__stack_chk_fail@plt>

000000000000283a <phase_3>:
    283a:	f3 0f 1e fa          	endbr64
    283e:	48 83 ec 18          	sub    $0x18,%rsp
    2842:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2849:	00 00 
    284b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2850:	31 c0                	xor    %eax,%eax
    2852:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    2857:	48 89 e2             	mov    %rsp,%rdx
    285a:	48 8d 35 b7 2d 00 00 	lea    0x2db7(%rip),%rsi        # 5618 <array.0+0x318>
    2861:	e8 fa fa ff ff       	call   2360 <__isoc99_sscanf@plt>
    2866:	83 f8 01             	cmp    $0x1,%eax
    2869:	7e 1a                	jle    2885 <phase_3+0x4b>
    286b:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    286f:	77 65                	ja     28d6 <phase_3+0x9c>
    2871:	8b 04 24             	mov    (%rsp),%eax
    2874:	48 8d 15 65 2a 00 00 	lea    0x2a65(%rip),%rdx        # 52e0 <_IO_stdin_used+0x2e0>
    287b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    287f:	48 01 d0             	add    %rdx,%rax
    2882:	3e ff e0             	notrack jmp *%rax
    2885:	e8 8c 07 00 00       	call   3016 <explode_bomb>
    288a:	eb df                	jmp    286b <phase_3+0x31>
    288c:	b8 15 02 00 00       	mov    $0x215,%eax
    2891:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    2895:	75 52                	jne    28e9 <phase_3+0xaf>
    2897:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    289c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    28a3:	00 00 
    28a5:	75 49                	jne    28f0 <phase_3+0xb6>
    28a7:	48 83 c4 18          	add    $0x18,%rsp
    28ab:	c3                   	ret
    28ac:	b8 43 01 00 00       	mov    $0x143,%eax
    28b1:	eb de                	jmp    2891 <phase_3+0x57>
    28b3:	b8 8a 02 00 00       	mov    $0x28a,%eax
    28b8:	eb d7                	jmp    2891 <phase_3+0x57>
    28ba:	b8 29 03 00 00       	mov    $0x329,%eax
    28bf:	eb d0                	jmp    2891 <phase_3+0x57>
    28c1:	b8 2a 03 00 00       	mov    $0x32a,%eax
    28c6:	eb c9                	jmp    2891 <phase_3+0x57>
    28c8:	b8 93 02 00 00       	mov    $0x293,%eax
    28cd:	eb c2                	jmp    2891 <phase_3+0x57>
    28cf:	b8 50 01 00 00       	mov    $0x150,%eax
    28d4:	eb bb                	jmp    2891 <phase_3+0x57>
    28d6:	e8 3b 07 00 00       	call   3016 <explode_bomb>
    28db:	b8 00 00 00 00       	mov    $0x0,%eax
    28e0:	eb af                	jmp    2891 <phase_3+0x57>
    28e2:	b8 7f 02 00 00       	mov    $0x27f,%eax
    28e7:	eb a8                	jmp    2891 <phase_3+0x57>
    28e9:	e8 28 07 00 00       	call   3016 <explode_bomb>
    28ee:	eb a7                	jmp    2897 <phase_3+0x5d>
    28f0:	e8 bb f9 ff ff       	call   22b0 <__stack_chk_fail@plt>

00000000000028f5 <func4>:
    28f5:	f3 0f 1e fa          	endbr64
    28f9:	53                   	push   %rbx
    28fa:	89 d0                	mov    %edx,%eax
    28fc:	29 f0                	sub    %esi,%eax
    28fe:	89 c3                	mov    %eax,%ebx
    2900:	c1 eb 1f             	shr    $0x1f,%ebx
    2903:	01 c3                	add    %eax,%ebx
    2905:	d1 fb                	sar    $1,%ebx
    2907:	01 f3                	add    %esi,%ebx
    2909:	39 fb                	cmp    %edi,%ebx
    290b:	7f 06                	jg     2913 <func4+0x1e>
    290d:	7c 10                	jl     291f <func4+0x2a>
    290f:	89 d8                	mov    %ebx,%eax
    2911:	5b                   	pop    %rbx
    2912:	c3                   	ret
    2913:	8d 53 ff             	lea    -0x1(%rbx),%edx
    2916:	e8 da ff ff ff       	call   28f5 <func4>
    291b:	01 c3                	add    %eax,%ebx
    291d:	eb f0                	jmp    290f <func4+0x1a>
    291f:	8d 73 01             	lea    0x1(%rbx),%esi
    2922:	e8 ce ff ff ff       	call   28f5 <func4>
    2927:	01 c3                	add    %eax,%ebx
    2929:	eb e4                	jmp    290f <func4+0x1a>

000000000000292b <phase_4>:
    292b:	f3 0f 1e fa          	endbr64
    292f:	48 83 ec 18          	sub    $0x18,%rsp
    2933:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    293a:	00 00 
    293c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2941:	31 c0                	xor    %eax,%eax
    2943:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    2948:	48 89 e2             	mov    %rsp,%rdx
    294b:	48 8d 35 c6 2c 00 00 	lea    0x2cc6(%rip),%rsi        # 5618 <array.0+0x318>
    2952:	e8 09 fa ff ff       	call   2360 <__isoc99_sscanf@plt>
    2957:	83 f8 02             	cmp    $0x2,%eax
    295a:	75 0c                	jne    2968 <phase_4+0x3d>
    295c:	8b 04 24             	mov    (%rsp),%eax
    295f:	85 c0                	test   %eax,%eax
    2961:	78 05                	js     2968 <phase_4+0x3d>
    2963:	83 f8 0e             	cmp    $0xe,%eax
    2966:	7e 05                	jle    296d <phase_4+0x42>
    2968:	e8 a9 06 00 00       	call   3016 <explode_bomb>
    296d:	ba 0e 00 00 00       	mov    $0xe,%edx
    2972:	be 00 00 00 00       	mov    $0x0,%esi
    2977:	8b 3c 24             	mov    (%rsp),%edi
    297a:	e8 76 ff ff ff       	call   28f5 <func4>
    297f:	83 f8 2d             	cmp    $0x2d,%eax
    2982:	75 07                	jne    298b <phase_4+0x60>
    2984:	83 7c 24 04 2d       	cmpl   $0x2d,0x4(%rsp)
    2989:	74 05                	je     2990 <phase_4+0x65>
    298b:	e8 86 06 00 00       	call   3016 <explode_bomb>
    2990:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2995:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    299c:	00 00 
    299e:	75 05                	jne    29a5 <phase_4+0x7a>
    29a0:	48 83 c4 18          	add    $0x18,%rsp
    29a4:	c3                   	ret
    29a5:	e8 06 f9 ff ff       	call   22b0 <__stack_chk_fail@plt>

00000000000029aa <phase_5>:
    29aa:	f3 0f 1e fa          	endbr64
    29ae:	53                   	push   %rbx
    29af:	48 83 ec 10          	sub    $0x10,%rsp
    29b3:	48 89 fb             	mov    %rdi,%rbx
    29b6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    29bd:	00 00 
    29bf:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    29c4:	31 c0                	xor    %eax,%eax
    29c6:	e8 1e 03 00 00       	call   2ce9 <string_length>
    29cb:	83 f8 06             	cmp    $0x6,%eax
    29ce:	75 07                	jne    29d7 <phase_5+0x2d>
    29d0:	b8 00 00 00 00       	mov    $0x0,%eax
    29d5:	eb 23                	jmp    29fa <phase_5+0x50>
    29d7:	e8 3a 06 00 00       	call   3016 <explode_bomb>
    29dc:	eb f2                	jmp    29d0 <phase_5+0x26>
    29de:	48 63 c8             	movslq %eax,%rcx
    29e1:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
    29e5:	83 e2 0f             	and    $0xf,%edx
    29e8:	48 8d 35 11 29 00 00 	lea    0x2911(%rip),%rsi        # 5300 <array.0>
    29ef:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
    29f3:	88 54 0c 01          	mov    %dl,0x1(%rsp,%rcx,1)
    29f7:	83 c0 01             	add    $0x1,%eax
    29fa:	83 f8 05             	cmp    $0x5,%eax
    29fd:	7e df                	jle    29de <phase_5+0x34>
    29ff:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    2a04:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    2a09:	48 8d 35 54 27 00 00 	lea    0x2754(%rip),%rsi        # 5164 <_IO_stdin_used+0x164>
    2a10:	e8 ec 02 00 00       	call   2d01 <strings_not_equal>
    2a15:	85 c0                	test   %eax,%eax
    2a17:	75 16                	jne    2a2f <phase_5+0x85>
    2a19:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2a1e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2a25:	00 00 
    2a27:	75 0d                	jne    2a36 <phase_5+0x8c>
    2a29:	48 83 c4 10          	add    $0x10,%rsp
    2a2d:	5b                   	pop    %rbx
    2a2e:	c3                   	ret
    2a2f:	e8 e2 05 00 00       	call   3016 <explode_bomb>
    2a34:	eb e3                	jmp    2a19 <phase_5+0x6f>
    2a36:	e8 75 f8 ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000002a3b <phase_6>:
    2a3b:	f3 0f 1e fa          	endbr64
    2a3f:	41 54                	push   %r12
    2a41:	55                   	push   %rbp
    2a42:	53                   	push   %rbx
    2a43:	48 83 ec 60          	sub    $0x60,%rsp
    2a47:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2a4e:	00 00 
    2a50:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2a55:	31 c0                	xor    %eax,%eax
    2a57:	48 89 e6             	mov    %rsp,%rsi
    2a5a:	e8 3d 06 00 00       	call   309c <read_six_numbers>
    2a5f:	bd 00 00 00 00       	mov    $0x0,%ebp
    2a64:	eb 27                	jmp    2a8d <phase_6+0x52>
    2a66:	e8 ab 05 00 00       	call   3016 <explode_bomb>
    2a6b:	eb 33                	jmp    2aa0 <phase_6+0x65>
    2a6d:	83 c3 01             	add    $0x1,%ebx
    2a70:	83 fb 05             	cmp    $0x5,%ebx
    2a73:	7f 15                	jg     2a8a <phase_6+0x4f>
    2a75:	48 63 c5             	movslq %ebp,%rax
    2a78:	48 63 d3             	movslq %ebx,%rdx
    2a7b:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
    2a7e:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
    2a81:	75 ea                	jne    2a6d <phase_6+0x32>
    2a83:	e8 8e 05 00 00       	call   3016 <explode_bomb>
    2a88:	eb e3                	jmp    2a6d <phase_6+0x32>
    2a8a:	44 89 e5             	mov    %r12d,%ebp
    2a8d:	83 fd 05             	cmp    $0x5,%ebp
    2a90:	7f 17                	jg     2aa9 <phase_6+0x6e>
    2a92:	48 63 c5             	movslq %ebp,%rax
    2a95:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    2a98:	83 e8 01             	sub    $0x1,%eax
    2a9b:	83 f8 05             	cmp    $0x5,%eax
    2a9e:	77 c6                	ja     2a66 <phase_6+0x2b>
    2aa0:	44 8d 65 01          	lea    0x1(%rbp),%r12d
    2aa4:	44 89 e3             	mov    %r12d,%ebx
    2aa7:	eb c7                	jmp    2a70 <phase_6+0x35>
    2aa9:	b8 00 00 00 00       	mov    $0x0,%eax
    2aae:	eb 11                	jmp    2ac1 <phase_6+0x86>
    2ab0:	48 63 c8             	movslq %eax,%rcx
    2ab3:	ba 07 00 00 00       	mov    $0x7,%edx
    2ab8:	2b 14 8c             	sub    (%rsp,%rcx,4),%edx
    2abb:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
    2abe:	83 c0 01             	add    $0x1,%eax
    2ac1:	83 f8 05             	cmp    $0x5,%eax
    2ac4:	7e ea                	jle    2ab0 <phase_6+0x75>
    2ac6:	be 00 00 00 00       	mov    $0x0,%esi
    2acb:	eb 17                	jmp    2ae4 <phase_6+0xa9>
    2acd:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    2ad1:	83 c0 01             	add    $0x1,%eax
    2ad4:	48 63 ce             	movslq %esi,%rcx
    2ad7:	39 04 8c             	cmp    %eax,(%rsp,%rcx,4)
    2ada:	7f f1                	jg     2acd <phase_6+0x92>
    2adc:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
    2ae1:	83 c6 01             	add    $0x1,%esi
    2ae4:	83 fe 05             	cmp    $0x5,%esi
    2ae7:	7f 0e                	jg     2af7 <phase_6+0xbc>
    2ae9:	b8 01 00 00 00       	mov    $0x1,%eax
    2aee:	48 8d 15 3b 67 00 00 	lea    0x673b(%rip),%rdx     # 9230 <node1>
    2af5:	eb dd                	jmp    2ad4 <phase_6+0x99>
    2af7:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    2afc:	48 89 d9             	mov    %rbx,%rcx
    2aff:	b8 01 00 00 00       	mov    $0x1,%eax
    2b04:	eb 12                	jmp    2b18 <phase_6+0xdd>
    2b06:	48 63 d0             	movslq %eax,%rdx
    2b09:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
    2b0e:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    2b12:	83 c0 01             	add    $0x1,%eax
    2b15:	48 89 d1             	mov    %rdx,%rcx
    2b18:	83 f8 05             	cmp    $0x5,%eax
    2b1b:	7e e9                	jle    2b06 <phase_6+0xcb>
    2b1d:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
    2b24:	00 
    2b25:	bd 00 00 00 00       	mov    $0x0,%ebp
    2b2a:	eb 07                	jmp    2b33 <phase_6+0xf8>
    2b2c:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    2b30:	83 c5 01             	add    $0x1,%ebp
    2b33:	83 fd 04             	cmp    $0x4,%ebp
    2b36:	7f 11                	jg     2b49 <phase_6+0x10e>
    2b38:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2b3c:	8b 00                	mov    (%rax),%eax
    2b3e:	39 03                	cmp    %eax,(%rbx)
    2b40:	7d ea                	jge    2b2c <phase_6+0xf1>
    2b42:	e8 cf 04 00 00       	call   3016 <explode_bomb>
    2b47:	eb e3                	jmp    2b2c <phase_6+0xf1>
    2b49:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    2b4e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2b55:	00 00 
    2b57:	75 09                	jne    2b62 <phase_6+0x127>
    2b59:	48 83 c4 60          	add    $0x60,%rsp
    2b5d:	5b                   	pop    %rbx
    2b5e:	5d                   	pop    %rbp
    2b5f:	41 5c                	pop    %r12
    2b61:	c3                   	ret
    2b62:	e8 49 f7 ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000002b67 <fun7>:
    2b67:	f3 0f 1e fa          	endbr64
    2b6b:	48 85 ff             	test   %rdi,%rdi
    2b6e:	74 32                	je     2ba2 <fun7+0x3b>
    2b70:	48 83 ec 08          	sub    $0x8,%rsp
    2b74:	8b 07                	mov    (%rdi),%eax
    2b76:	39 f0                	cmp    %esi,%eax
    2b78:	7f 0c                	jg     2b86 <fun7+0x1f>
    2b7a:	75 17                	jne    2b93 <fun7+0x2c>
    2b7c:	b8 00 00 00 00       	mov    $0x0,%eax
    2b81:	48 83 c4 08          	add    $0x8,%rsp
    2b85:	c3                   	ret
    2b86:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    2b8a:	e8 d8 ff ff ff       	call   2b67 <fun7>
    2b8f:	01 c0                	add    %eax,%eax
    2b91:	eb ee                	jmp    2b81 <fun7+0x1a>
    2b93:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    2b97:	e8 cb ff ff ff       	call   2b67 <fun7>
    2b9c:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    2ba0:	eb df                	jmp    2b81 <fun7+0x1a>
    2ba2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ba7:	c3                   	ret

0000000000002ba8 <secret_phase>:
    2ba8:	f3 0f 1e fa          	endbr64
    2bac:	53                   	push   %rbx
    2bad:	48 83 ec 10          	sub    $0x10,%rsp
    2bb1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2bb8:	00 00 
    2bba:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2bbf:	31 c0                	xor    %eax,%eax
    2bc1:	e8 1b 05 00 00       	call   30e1 <read_line>
    2bc6:	48 89 c7             	mov    %rax,%rdi
    2bc9:	ba 0a 00 00 00       	mov    $0xa,%edx
    2bce:	be 00 00 00 00       	mov    $0x0,%esi
    2bd3:	e8 48 f7 ff ff       	call   2320 <strtol@plt>
    2bd8:	89 c3                	mov    %eax,%ebx
    2bda:	83 e8 01             	sub    $0x1,%eax
    2bdd:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    2be2:	77 63                	ja     2c47 <secret_phase+0x9f>
    2be4:	89 de                	mov    %ebx,%esi
    2be6:	48 8d 3d 63 65 00 00 	lea    0x6563(%rip),%rdi        # 9150 <n1>
    2bed:	e8 75 ff ff ff       	call   2b67 <fun7>
    2bf2:	83 f8 03             	cmp    $0x3,%eax
    2bf5:	75 57                	jne    2c4e <secret_phase+0xa6>
    2bf7:	48 8d 3d ea 25 00 00 	lea    0x25ea(%rip),%rdi        # 51e8 <_IO_stdin_used+0x1e8>
    2bfe:	e8 7d f6 ff ff       	call   2280 <puts@plt>
    2c03:	48 8d 3d 06 26 00 00 	lea    0x2606(%rip),%rdi        # 5210 <_IO_stdin_used+0x210>
    2c0a:	e8 71 f6 ff ff       	call   2280 <puts@plt>
    2c0f:	48 8d 3d 42 26 00 00 	lea    0x2642(%rip),%rdi        # 5258 <_IO_stdin_used+0x258>
    2c16:	e8 65 f6 ff ff       	call   2280 <puts@plt>
    2c1b:	48 8d 3d 6e 26 00 00 	lea    0x266e(%rip),%rdi        # 5290 <_IO_stdin_used+0x290>
    2c22:	e8 59 f6 ff ff       	call   2280 <puts@plt>
    2c27:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2c2c:	e8 ee 05 00 00       	call   321f <phase_defused>
    2c31:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2c36:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2c3d:	00 00 
    2c3f:	75 14                	jne    2c55 <secret_phase+0xad>
    2c41:	48 83 c4 10          	add    $0x10,%rsp
    2c45:	5b                   	pop    %rbx
    2c46:	c3                   	ret
    2c47:	e8 ca 03 00 00       	call   3016 <explode_bomb>
    2c4c:	eb 96                	jmp    2be4 <secret_phase+0x3c>
    2c4e:	e8 c3 03 00 00       	call   3016 <explode_bomb>
    2c53:	eb a2                	jmp    2bf7 <secret_phase+0x4f>
    2c55:	e8 56 f6 ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000002c5a <sig_handler>:
    2c5a:	f3 0f 1e fa          	endbr64
    2c5e:	50                   	push   %rax
    2c5f:	58                   	pop    %rax
    2c60:	48 83 ec 08          	sub    $0x8,%rsp
    2c64:	48 8d 3d a5 26 00 00 	lea    0x26a5(%rip),%rdi        # 5310 <array.0+0x10>
    2c6b:	e8 10 f6 ff ff       	call   2280 <puts@plt>
    2c70:	bf 03 00 00 00       	mov    $0x3,%edi
    2c75:	e8 66 f7 ff ff       	call   23e0 <sleep@plt>
    2c7a:	48 8d 35 10 29 00 00 	lea    0x2910(%rip),%rsi        # 5591 <array.0+0x291>
    2c81:	bf 01 00 00 00       	mov    $0x1,%edi
    2c86:	b8 00 00 00 00       	mov    $0x0,%eax
    2c8b:	e8 f0 f6 ff ff       	call   2380 <__printf_chk@plt>
    2c90:	48 8b 3d a9 69 00 00 	mov    0x69a9(%rip),%rdi        # 9640 <stdout@GLIBC_2.2.5>
    2c97:	e8 b4 f6 ff ff       	call   2350 <fflush@plt>
    2c9c:	bf 01 00 00 00       	mov    $0x1,%edi
    2ca1:	e8 3a f7 ff ff       	call   23e0 <sleep@plt>
    2ca6:	48 8d 3d ec 28 00 00 	lea    0x28ec(%rip),%rdi        # 5599 <array.0+0x299>
    2cad:	e8 ce f5 ff ff       	call   2280 <puts@plt>
    2cb2:	bf 10 00 00 00       	mov    $0x10,%edi
    2cb7:	e8 f4 f6 ff ff       	call   23b0 <exit@plt>

0000000000002cbc <invalid_phase>:
    2cbc:	f3 0f 1e fa          	endbr64
    2cc0:	50                   	push   %rax
    2cc1:	58                   	pop    %rax
    2cc2:	48 83 ec 08          	sub    $0x8,%rsp
    2cc6:	48 89 fa             	mov    %rdi,%rdx
    2cc9:	48 8d 35 d1 28 00 00 	lea    0x28d1(%rip),%rsi        # 55a1 <array.0+0x2a1>
    2cd0:	bf 01 00 00 00       	mov    $0x1,%edi
    2cd5:	b8 00 00 00 00       	mov    $0x0,%eax
    2cda:	e8 a1 f6 ff ff       	call   2380 <__printf_chk@plt>
    2cdf:	bf 08 00 00 00       	mov    $0x8,%edi
    2ce4:	e8 c7 f6 ff ff       	call   23b0 <exit@plt>

0000000000002ce9 <string_length>:
    2ce9:	f3 0f 1e fa          	endbr64
    2ced:	b8 00 00 00 00       	mov    $0x0,%eax
    2cf2:	eb 07                	jmp    2cfb <string_length+0x12>
    2cf4:	48 83 c7 01          	add    $0x1,%rdi
    2cf8:	83 c0 01             	add    $0x1,%eax
    2cfb:	80 3f 00             	cmpb   $0x0,(%rdi)
    2cfe:	75 f4                	jne    2cf4 <string_length+0xb>
    2d00:	c3                   	ret

0000000000002d01 <strings_not_equal>:
    2d01:	f3 0f 1e fa          	endbr64
    2d05:	41 54                	push   %r12
    2d07:	55                   	push   %rbp
    2d08:	53                   	push   %rbx
    2d09:	48 89 fb             	mov    %rdi,%rbx
    2d0c:	48 89 f5             	mov    %rsi,%rbp
    2d0f:	e8 d5 ff ff ff       	call   2ce9 <string_length>
    2d14:	41 89 c4             	mov    %eax,%r12d
    2d17:	48 89 ef             	mov    %rbp,%rdi
    2d1a:	e8 ca ff ff ff       	call   2ce9 <string_length>
    2d1f:	41 39 c4             	cmp    %eax,%r12d
    2d22:	74 12                	je     2d36 <strings_not_equal+0x35>
    2d24:	b8 01 00 00 00       	mov    $0x1,%eax
    2d29:	5b                   	pop    %rbx
    2d2a:	5d                   	pop    %rbp
    2d2b:	41 5c                	pop    %r12
    2d2d:	c3                   	ret
    2d2e:	48 83 c3 01          	add    $0x1,%rbx
    2d32:	48 83 c5 01          	add    $0x1,%rbp
    2d36:	0f b6 03             	movzbl (%rbx),%eax
    2d39:	84 c0                	test   %al,%al
    2d3b:	74 0c                	je     2d49 <strings_not_equal+0x48>
    2d3d:	38 45 00             	cmp    %al,0x0(%rbp)
    2d40:	74 ec                	je     2d2e <strings_not_equal+0x2d>
    2d42:	b8 01 00 00 00       	mov    $0x1,%eax
    2d47:	eb e0                	jmp    2d29 <strings_not_equal+0x28>
    2d49:	b8 00 00 00 00       	mov    $0x0,%eax
    2d4e:	eb d9                	jmp    2d29 <strings_not_equal+0x28>

0000000000002d50 <initialize_bomb>:
    2d50:	f3 0f 1e fa          	endbr64
    2d54:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2d5b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2d60:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2d67:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2d6c:	48 83 ec 58          	sub    $0x58,%rsp
    2d70:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2d77:	00 00 
    2d79:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    2d80:	00 
    2d81:	31 c0                	xor    %eax,%eax
    2d83:	48 8d 35 d0 fe ff ff 	lea    -0x130(%rip),%rsi        # 2c5a <sig_handler>
    2d8a:	bf 02 00 00 00       	mov    $0x2,%edi
    2d8f:	e8 5c f5 ff ff       	call   22f0 <signal@plt>
    2d94:	48 89 e7             	mov    %rsp,%rdi
    2d97:	be 40 00 00 00       	mov    $0x40,%esi
    2d9c:	e8 ff f5 ff ff       	call   23a0 <gethostname@plt>
    2da1:	85 c0                	test   %eax,%eax
    2da3:	75 39                	jne    2dde <initialize_bomb+0x8e>
    2da5:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2daa:	e8 5b 10 00 00       	call   3e0a <init_driver>
    2daf:	85 c0                	test   %eax,%eax
    2db1:	78 41                	js     2df4 <initialize_bomb+0xa4>
    2db3:	bf 04 00 00 00       	mov    $0x4,%edi
    2db8:	e8 83 f5 ff ff       	call   2340 <malloc@plt>
    2dbd:	c7 00 11 fa 25 20    	movl   $0x2025fa11,(%rax)
    2dc3:	48 8b 94 24 48 20 00 	mov    0x2048(%rsp),%rdx
    2dca:	00 
    2dcb:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2dd2:	00 00 
    2dd4:	75 43                	jne    2e19 <initialize_bomb+0xc9>
    2dd6:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    2ddd:	c3                   	ret
    2dde:	48 8d 3d 63 25 00 00 	lea    0x2563(%rip),%rdi        # 5348 <array.0+0x48>
    2de5:	e8 96 f4 ff ff       	call   2280 <puts@plt>
    2dea:	bf 08 00 00 00       	mov    $0x8,%edi
    2def:	e8 bc f5 ff ff       	call   23b0 <exit@plt>
    2df4:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    2df9:	48 8d 35 b2 27 00 00 	lea    0x27b2(%rip),%rsi        # 55b2 <array.0+0x2b2>
    2e00:	bf 01 00 00 00       	mov    $0x1,%edi
    2e05:	b8 00 00 00 00       	mov    $0x0,%eax
    2e0a:	e8 71 f5 ff ff       	call   2380 <__printf_chk@plt>
    2e0f:	bf 08 00 00 00       	mov    $0x8,%edi
    2e14:	e8 97 f5 ff ff       	call   23b0 <exit@plt>
    2e19:	e8 92 f4 ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000002e1e <initialize_bomb_solve>:
    2e1e:	f3 0f 1e fa          	endbr64
    2e22:	c3                   	ret

0000000000002e23 <blank_line>:
    2e23:	f3 0f 1e fa          	endbr64
    2e27:	55                   	push   %rbp
    2e28:	53                   	push   %rbx
    2e29:	48 83 ec 08          	sub    $0x8,%rsp
    2e2d:	48 89 fd             	mov    %rdi,%rbp
    2e30:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    2e34:	84 db                	test   %bl,%bl
    2e36:	74 1e                	je     2e56 <blank_line+0x33>
    2e38:	e8 b3 f5 ff ff       	call   23f0 <__ctype_b_loc@plt>
    2e3d:	48 8b 00             	mov    (%rax),%rax
    2e40:	48 83 c5 01          	add    $0x1,%rbp
    2e44:	48 0f be db          	movsbq %bl,%rbx
    2e48:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    2e4d:	75 e1                	jne    2e30 <blank_line+0xd>
    2e4f:	b8 00 00 00 00       	mov    $0x0,%eax
    2e54:	eb 05                	jmp    2e5b <blank_line+0x38>
    2e56:	b8 01 00 00 00       	mov    $0x1,%eax
    2e5b:	48 83 c4 08          	add    $0x8,%rsp
    2e5f:	5b                   	pop    %rbx
    2e60:	5d                   	pop    %rbp
    2e61:	c3                   	ret

0000000000002e62 <skip>:
    2e62:	f3 0f 1e fa          	endbr64
    2e66:	53                   	push   %rbx
    2e67:	48 63 15 8a 68 00 00 	movslq 0x688a(%rip),%rdx        # 96f8 <num_input_strings>
    2e6e:	48 89 d0             	mov    %rdx,%rax
    2e71:	48 c1 e0 04          	shl    $0x4,%rax
    2e75:	48 29 d0             	sub    %rdx,%rax
    2e78:	48 8d 15 81 68 00 00 	lea    0x6881(%rip),%rdx        # 9700 <input_strings>
    2e7f:	48 8d 3c c2          	lea    (%rdx,%rax,8),%rdi
    2e83:	48 8b 0d e6 67 00 00 	mov    0x67e6(%rip),%rcx        # 9670 <infile>
    2e8a:	ba 78 00 00 00       	mov    $0x78,%edx
    2e8f:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    2e96:	e8 d5 f4 ff ff       	call   2370 <__fgets_chk@plt>
    2e9b:	48 89 c3             	mov    %rax,%rbx
    2e9e:	48 85 c0             	test   %rax,%rax
    2ea1:	74 0c                	je     2eaf <skip+0x4d>
    2ea3:	48 89 c7             	mov    %rax,%rdi
    2ea6:	e8 78 ff ff ff       	call   2e23 <blank_line>
    2eab:	85 c0                	test   %eax,%eax
    2ead:	75 b8                	jne    2e67 <skip+0x5>
    2eaf:	48 89 d8             	mov    %rbx,%rax
    2eb2:	5b                   	pop    %rbx
    2eb3:	c3                   	ret

0000000000002eb4 <send_msg>:
    2eb4:	f3 0f 1e fa          	endbr64
    2eb8:	41 55                	push   %r13
    2eba:	41 54                	push   %r12
    2ebc:	55                   	push   %rbp
    2ebd:	53                   	push   %rbx
    2ebe:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    2ec5:	ff 
    2ec6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2ecd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2ed2:	4c 39 dc             	cmp    %r11,%rsp
    2ed5:	75 ef                	jne    2ec6 <send_msg+0x12>
    2ed7:	48 83 ec 18          	sub    $0x18,%rsp
    2edb:	89 fd                	mov    %edi,%ebp
    2edd:	48 89 f3             	mov    %rsi,%rbx
    2ee0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ee7:	00 00 
    2ee9:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    2ef0:	00 
    2ef1:	31 c0                	xor    %eax,%eax
    2ef3:	44 8b 25 fe 67 00 00 	mov    0x67fe(%rip),%r12d        # 96f8 <num_input_strings>
    2efa:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
    2eff:	48 98                	cltq
    2f01:	48 89 c2             	mov    %rax,%rdx
    2f04:	48 c1 e2 04          	shl    $0x4,%rdx
    2f08:	48 29 c2             	sub    %rax,%rdx
    2f0b:	48 8d 05 ee 67 00 00 	lea    0x67ee(%rip),%rax        # 9700 <input_strings>
    2f12:	4c 8d 2c d0          	lea    (%rax,%rdx,8),%r13
    2f16:	4c 89 ef             	mov    %r13,%rdi
    2f19:	e8 82 f3 ff ff       	call   22a0 <strlen@plt>
    2f1e:	48 83 c0 64          	add    $0x64,%rax
    2f22:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2f28:	0f 87 a0 00 00 00    	ja     2fce <send_msg+0x11a>
    2f2e:	85 ed                	test   %ebp,%ebp
    2f30:	0f 84 b8 00 00 00    	je     2fee <send_msg+0x13a>
    2f36:	48 8d 05 8f 26 00 00 	lea    0x268f(%rip),%rax        # 55cc <array.0+0x2cc>
    2f3d:	48 89 e5             	mov    %rsp,%rbp
    2f40:	48 83 ec 08          	sub    $0x8,%rsp
    2f44:	41 55                	push   %r13
    2f46:	41 54                	push   %r12
    2f48:	50                   	push   %rax
    2f49:	4c 8d 0d f0 59 00 00 	lea    0x59f0(%rip),%r9        # 8940 <authkey>
    2f50:	44 8b 05 e9 61 00 00 	mov    0x61e9(%rip),%r8d        # 9140 <bomb_id>
    2f57:	48 8d 0d 7f 26 00 00 	lea    0x267f(%rip),%rcx        # 55dd <array.0+0x2dd>
    2f5e:	ba 00 20 00 00       	mov    $0x2000,%edx
    2f63:	be 01 00 00 00       	mov    $0x1,%esi
    2f68:	48 89 ef             	mov    %rbp,%rdi
    2f6b:	b8 00 00 00 00       	mov    $0x0,%eax
    2f70:	e8 8b f4 ff ff       	call   2400 <__sprintf_chk@plt>
    2f75:	48 89 ec             	mov    %rbp,%rsp
    2f78:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
    2f7f:	00 
    2f80:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    2f86:	48 89 e9             	mov    %rbp,%rcx
    2f89:	48 8d 15 b0 51 00 00 	lea    0x51b0(%rip),%rdx        # 8140 <lab>
    2f90:	48 8d 35 a9 55 00 00 	lea    0x55a9(%rip),%rsi        # 8540 <course>
    2f97:	48 8d 3d a2 5d 00 00 	lea    0x5da2(%rip),%rdi        # 8d40 <userid>
    2f9e:	e8 96 10 00 00       	call   4039 <driver_post>
    2fa3:	c7 03 01 00 00 00    	movl   $0x1,(%rbx)
    2fa9:	85 c0                	test   %eax,%eax
    2fab:	78 4d                	js     2ffa <send_msg+0x146>
    2fad:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    2fb4:	00 
    2fb5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2fbc:	00 00 
    2fbe:	75 51                	jne    3011 <send_msg+0x15d>
    2fc0:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
    2fc7:	5b                   	pop    %rbx
    2fc8:	5d                   	pop    %rbp
    2fc9:	41 5c                	pop    %r12
    2fcb:	41 5d                	pop    %r13
    2fcd:	c3                   	ret
    2fce:	48 8d 35 ab 23 00 00 	lea    0x23ab(%rip),%rsi        # 5380 <array.0+0x80>
    2fd5:	bf 01 00 00 00       	mov    $0x1,%edi
    2fda:	b8 00 00 00 00       	mov    $0x0,%eax
    2fdf:	e8 9c f3 ff ff       	call   2380 <__printf_chk@plt>
    2fe4:	bf 08 00 00 00       	mov    $0x8,%edi
    2fe9:	e8 c2 f3 ff ff       	call   23b0 <exit@plt>
    2fee:	48 8d 05 df 25 00 00 	lea    0x25df(%rip),%rax        # 55d4 <array.0+0x2d4>
    2ff5:	e9 43 ff ff ff       	jmp    2f3d <send_msg+0x89>
    2ffa:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    3001:	00 
    3002:	e8 79 f2 ff ff       	call   2280 <puts@plt>
    3007:	bf 00 00 00 00       	mov    $0x0,%edi
    300c:	e8 9f f3 ff ff       	call   23b0 <exit@plt>
    3011:	e8 9a f2 ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000003016 <explode_bomb>:
    3016:	f3 0f 1e fa          	endbr64
    301a:	50                   	push   %rax
    301b:	58                   	pop    %rax
    301c:	48 83 ec 18          	sub    $0x18,%rsp
    3020:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3027:	00 00 
    3029:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    302e:	31 c0                	xor    %eax,%eax
    3030:	48 8d 3d b5 25 00 00 	lea    0x25b5(%rip),%rdi        # 55ec <array.0+0x2ec>
    3037:	e8 44 f2 ff ff       	call   2280 <puts@plt>
    303c:	48 8d 3d b2 25 00 00 	lea    0x25b2(%rip),%rdi        # 55f5 <array.0+0x2f5>
    3043:	e8 38 f2 ff ff       	call   2280 <puts@plt>
    3048:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    304f:	00 
    3050:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    3055:	bf 00 00 00 00       	mov    $0x0,%edi
    305a:	e8 55 fe ff ff       	call   2eb4 <send_msg>
    305f:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    3064:	74 20                	je     3086 <explode_bomb+0x70>
    3066:	48 8d 35 3b 23 00 00 	lea    0x233b(%rip),%rsi        # 53a8 <array.0+0xa8>
    306d:	bf 01 00 00 00       	mov    $0x1,%edi
    3072:	b8 00 00 00 00       	mov    $0x0,%eax
    3077:	e8 04 f3 ff ff       	call   2380 <__printf_chk@plt>
    307c:	bf 08 00 00 00       	mov    $0x8,%edi
    3081:	e8 2a f3 ff ff       	call   23b0 <exit@plt>
    3086:	48 8d 3d 63 23 00 00 	lea    0x2363(%rip),%rdi        # 53f0 <array.0+0xf0>
    308d:	e8 ee f1 ff ff       	call   2280 <puts@plt>
    3092:	bf 08 00 00 00       	mov    $0x8,%edi
    3097:	e8 14 f3 ff ff       	call   23b0 <exit@plt>

000000000000309c <read_six_numbers>:
    309c:	f3 0f 1e fa          	endbr64
    30a0:	48 83 ec 08          	sub    $0x8,%rsp
    30a4:	48 89 f2             	mov    %rsi,%rdx
    30a7:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    30ab:	48 8d 46 14          	lea    0x14(%rsi),%rax
    30af:	50                   	push   %rax
    30b0:	48 8d 46 10          	lea    0x10(%rsi),%rax
    30b4:	50                   	push   %rax
    30b5:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    30b9:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    30bd:	48 8d 35 48 25 00 00 	lea    0x2548(%rip),%rsi        # 560c <array.0+0x30c>
    30c4:	b8 00 00 00 00       	mov    $0x0,%eax
    30c9:	e8 92 f2 ff ff       	call   2360 <__isoc99_sscanf@plt>
    30ce:	48 83 c4 10          	add    $0x10,%rsp
    30d2:	83 f8 05             	cmp    $0x5,%eax
    30d5:	7e 05                	jle    30dc <read_six_numbers+0x40>
    30d7:	48 83 c4 08          	add    $0x8,%rsp
    30db:	c3                   	ret
    30dc:	e8 35 ff ff ff       	call   3016 <explode_bomb>

00000000000030e1 <read_line>:
    30e1:	f3 0f 1e fa          	endbr64
    30e5:	55                   	push   %rbp
    30e6:	53                   	push   %rbx
    30e7:	48 83 ec 08          	sub    $0x8,%rsp
    30eb:	b8 00 00 00 00       	mov    $0x0,%eax
    30f0:	e8 6d fd ff ff       	call   2e62 <skip>
    30f5:	48 85 c0             	test   %rax,%rax
    30f8:	74 63                	je     315d <read_line+0x7c>
    30fa:	8b 1d f8 65 00 00    	mov    0x65f8(%rip),%ebx        # 96f8 <num_input_strings>
    3100:	48 63 d3             	movslq %ebx,%rdx
    3103:	48 89 d0             	mov    %rdx,%rax
    3106:	48 c1 e0 04          	shl    $0x4,%rax
    310a:	48 29 d0             	sub    %rdx,%rax
    310d:	48 8d 15 ec 65 00 00 	lea    0x65ec(%rip),%rdx        # 9700 <input_strings>
    3114:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    3118:	48 89 ef             	mov    %rbp,%rdi
    311b:	e8 80 f1 ff ff       	call   22a0 <strlen@plt>
    3120:	83 f8 76             	cmp    $0x76,%eax
    3123:	0f 8f ac 00 00 00    	jg     31d5 <read_line+0xf4>
    3129:	83 e8 01             	sub    $0x1,%eax
    312c:	48 98                	cltq
    312e:	48 63 cb             	movslq %ebx,%rcx
    3131:	48 89 ca             	mov    %rcx,%rdx
    3134:	48 c1 e2 04          	shl    $0x4,%rdx
    3138:	48 29 ca             	sub    %rcx,%rdx
    313b:	48 8d 0d be 65 00 00 	lea    0x65be(%rip),%rcx        # 9700 <input_strings>
    3142:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    3146:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    314a:	83 c3 01             	add    $0x1,%ebx
    314d:	89 1d a5 65 00 00    	mov    %ebx,0x65a5(%rip)        # 96f8 <num_input_strings>
    3153:	48 89 e8             	mov    %rbp,%rax
    3156:	48 83 c4 08          	add    $0x8,%rsp
    315a:	5b                   	pop    %rbx
    315b:	5d                   	pop    %rbp
    315c:	c3                   	ret
    315d:	48 8b 05 ec 64 00 00 	mov    0x64ec(%rip),%rax        # 9650 <stdin@GLIBC_2.2.5>
    3164:	48 39 05 05 65 00 00 	cmp    %rax,0x6505(%rip)        # 9670 <infile>
    316b:	74 1b                	je     3188 <read_line+0xa7>
    316d:	48 8d 3d c8 24 00 00 	lea    0x24c8(%rip),%rdi        # 563c <array.0+0x33c>
    3174:	e8 b7 f0 ff ff       	call   2230 <getenv@plt>
    3179:	48 85 c0             	test   %rax,%rax
    317c:	74 20                	je     319e <read_line+0xbd>
    317e:	bf 00 00 00 00       	mov    $0x0,%edi
    3183:	e8 28 f2 ff ff       	call   23b0 <exit@plt>
    3188:	48 8d 3d 8f 24 00 00 	lea    0x248f(%rip),%rdi        # 561e <array.0+0x31e>
    318f:	e8 ec f0 ff ff       	call   2280 <puts@plt>
    3194:	bf 08 00 00 00       	mov    $0x8,%edi
    3199:	e8 12 f2 ff ff       	call   23b0 <exit@plt>
    319e:	48 8b 05 ab 64 00 00 	mov    0x64ab(%rip),%rax        # 9650 <stdin@GLIBC_2.2.5>
    31a5:	48 89 05 c4 64 00 00 	mov    %rax,0x64c4(%rip)        # 9670 <infile>
    31ac:	b8 00 00 00 00       	mov    $0x0,%eax
    31b1:	e8 ac fc ff ff       	call   2e62 <skip>
    31b6:	48 85 c0             	test   %rax,%rax
    31b9:	0f 85 3b ff ff ff    	jne    30fa <read_line+0x19>
    31bf:	48 8d 3d 58 24 00 00 	lea    0x2458(%rip),%rdi        # 561e <array.0+0x31e>
    31c6:	e8 b5 f0 ff ff       	call   2280 <puts@plt>
    31cb:	bf 00 00 00 00       	mov    $0x0,%edi
    31d0:	e8 db f1 ff ff       	call   23b0 <exit@plt>
    31d5:	48 8d 3d 6b 24 00 00 	lea    0x246b(%rip),%rdi        # 5647 <array.0+0x347>
    31dc:	e8 9f f0 ff ff       	call   2280 <puts@plt>
    31e1:	8b 05 11 65 00 00    	mov    0x6511(%rip),%eax        # 96f8 <num_input_strings>
    31e7:	8d 50 01             	lea    0x1(%rax),%edx
    31ea:	89 15 08 65 00 00    	mov    %edx,0x6508(%rip)        # 96f8 <num_input_strings>
    31f0:	48 98                	cltq
    31f2:	48 6b c0 78          	imul   $0x78,%rax,%rax
    31f6:	48 8d 15 03 65 00 00 	lea    0x6503(%rip),%rdx        # 9700 <input_strings>
    31fd:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    3204:	75 6e 63 
    3207:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    320e:	2a 2a 00 
    3211:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    3215:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    321a:	e8 f7 fd ff ff       	call   3016 <explode_bomb>

000000000000321f <phase_defused>:
    321f:	f3 0f 1e fa          	endbr64
    3223:	53                   	push   %rbx
    3224:	48 89 fb             	mov    %rdi,%rbx
    3227:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    322d:	48 89 fe             	mov    %rdi,%rsi
    3230:	bf 01 00 00 00       	mov    $0x1,%edi
    3235:	e8 7a fc ff ff       	call   2eb4 <send_msg>
    323a:	83 3b 01             	cmpl   $0x1,(%rbx)
    323d:	75 0b                	jne    324a <phase_defused+0x2b>
    323f:	83 3d b2 64 00 00 06 	cmpl   $0x6,0x64b2(%rip)        # 96f8 <num_input_strings>
    3246:	74 22                	je     326a <phase_defused+0x4b>
    3248:	5b                   	pop    %rbx
    3249:	c3                   	ret
    324a:	48 8d 35 57 21 00 00 	lea    0x2157(%rip),%rsi        # 53a8 <array.0+0xa8>
    3251:	bf 01 00 00 00       	mov    $0x1,%edi
    3256:	b8 00 00 00 00       	mov    $0x0,%eax
    325b:	e8 20 f1 ff ff       	call   2380 <__printf_chk@plt>
    3260:	bf 08 00 00 00       	mov    $0x8,%edi
    3265:	e8 46 f1 ff ff       	call   23b0 <exit@plt>
    326a:	e8 15 f4 ff ff       	call   2684 <abracadabra>
    326f:	85 c0                	test   %eax,%eax
    3271:	75 1a                	jne    328d <phase_defused+0x6e>
    3273:	48 8d 3d 8e 22 00 00 	lea    0x228e(%rip),%rdi        # 5508 <array.0+0x208>
    327a:	e8 01 f0 ff ff       	call   2280 <puts@plt>
    327f:	48 8d 3d ca 22 00 00 	lea    0x22ca(%rip),%rdi        # 5550 <array.0+0x250>
    3286:	e8 f5 ef ff ff       	call   2280 <puts@plt>
    328b:	eb bb                	jmp    3248 <phase_defused+0x29>
    328d:	e8 7f f4 ff ff       	call   2711 <alohomora>
    3292:	85 c0                	test   %eax,%eax
    3294:	74 30                	je     32c6 <phase_defused+0xa7>
    3296:	48 8d 3d 7b 21 00 00 	lea    0x217b(%rip),%rdi        # 5418 <array.0+0x118>
    329d:	e8 de ef ff ff       	call   2280 <puts@plt>
    32a2:	48 8d 3d 97 21 00 00 	lea    0x2197(%rip),%rdi        # 5440 <array.0+0x140>
    32a9:	e8 d2 ef ff ff       	call   2280 <puts@plt>
    32ae:	48 8d 3d c3 21 00 00 	lea    0x21c3(%rip),%rdi        # 5478 <array.0+0x178>
    32b5:	e8 c6 ef ff ff       	call   2280 <puts@plt>
    32ba:	b8 00 00 00 00       	mov    $0x0,%eax
    32bf:	e8 e4 f8 ff ff       	call   2ba8 <secret_phase>
    32c4:	eb ad                	jmp    3273 <phase_defused+0x54>
    32c6:	48 8d 3d fb 21 00 00 	lea    0x21fb(%rip),%rdi        # 54c8 <array.0+0x1c8>
    32cd:	e8 ae ef ff ff       	call   2280 <puts@plt>
    32d2:	48 8d 3d 9f 21 00 00 	lea    0x219f(%rip),%rdi        # 5478 <array.0+0x178>
    32d9:	e8 a2 ef ff ff       	call   2280 <puts@plt>
    32de:	eb 93                	jmp    3273 <phase_defused+0x54>

00000000000032e0 <rio_readinitb>:
    32e0:	89 37                	mov    %esi,(%rdi)
    32e2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
    32e9:	48 8d 47 10          	lea    0x10(%rdi),%rax
    32ed:	48 89 47 08          	mov    %rax,0x8(%rdi)
    32f1:	c3                   	ret

00000000000032f2 <sigalrm_handler>:
    32f2:	f3 0f 1e fa          	endbr64
    32f6:	50                   	push   %rax
    32f7:	58                   	pop    %rax
    32f8:	48 83 ec 08          	sub    $0x8,%rsp
    32fc:	b9 00 00 00 00       	mov    $0x0,%ecx
    3301:	48 8d 15 b0 23 00 00 	lea    0x23b0(%rip),%rdx        # 56b8 <array.0+0x3b8>
    3308:	be 01 00 00 00       	mov    $0x1,%esi
    330d:	48 8b 3d 4c 63 00 00 	mov    0x634c(%rip),%rdi        # 9660 <stderr@GLIBC_2.2.5>
    3314:	b8 00 00 00 00       	mov    $0x0,%eax
    3319:	e8 b2 f0 ff ff       	call   23d0 <__fprintf_chk@plt>
    331e:	bf 01 00 00 00       	mov    $0x1,%edi
    3323:	e8 88 f0 ff ff       	call   23b0 <exit@plt>

0000000000003328 <rio_writen>:
    3328:	41 55                	push   %r13
    332a:	41 54                	push   %r12
    332c:	55                   	push   %rbp
    332d:	53                   	push   %rbx
    332e:	48 83 ec 08          	sub    $0x8,%rsp
    3332:	41 89 fc             	mov    %edi,%r12d
    3335:	48 89 f5             	mov    %rsi,%rbp
    3338:	49 89 d5             	mov    %rdx,%r13
    333b:	48 89 d3             	mov    %rdx,%rbx
    333e:	eb 06                	jmp    3346 <rio_writen+0x1e>
    3340:	48 29 c3             	sub    %rax,%rbx
    3343:	48 01 c5             	add    %rax,%rbp
    3346:	48 85 db             	test   %rbx,%rbx
    3349:	74 24                	je     336f <rio_writen+0x47>
    334b:	48 89 da             	mov    %rbx,%rdx
    334e:	48 89 ee             	mov    %rbp,%rsi
    3351:	44 89 e7             	mov    %r12d,%edi
    3354:	e8 37 ef ff ff       	call   2290 <write@plt>
    3359:	48 85 c0             	test   %rax,%rax
    335c:	7f e2                	jg     3340 <rio_writen+0x18>
    335e:	e8 ed ee ff ff       	call   2250 <__errno_location@plt>
    3363:	83 38 04             	cmpl   $0x4,(%rax)
    3366:	75 15                	jne    337d <rio_writen+0x55>
    3368:	b8 00 00 00 00       	mov    $0x0,%eax
    336d:	eb d1                	jmp    3340 <rio_writen+0x18>
    336f:	4c 89 e8             	mov    %r13,%rax
    3372:	48 83 c4 08          	add    $0x8,%rsp
    3376:	5b                   	pop    %rbx
    3377:	5d                   	pop    %rbp
    3378:	41 5c                	pop    %r12
    337a:	41 5d                	pop    %r13
    337c:	c3                   	ret
    337d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    3384:	eb ec                	jmp    3372 <rio_writen+0x4a>

0000000000003386 <rio_read>:
    3386:	41 55                	push   %r13
    3388:	41 54                	push   %r12
    338a:	55                   	push   %rbp
    338b:	53                   	push   %rbx
    338c:	48 83 ec 08          	sub    $0x8,%rsp
    3390:	48 89 fb             	mov    %rdi,%rbx
    3393:	49 89 f5             	mov    %rsi,%r13
    3396:	49 89 d4             	mov    %rdx,%r12
    3399:	eb 0a                	jmp    33a5 <rio_read+0x1f>
    339b:	e8 b0 ee ff ff       	call   2250 <__errno_location@plt>
    33a0:	83 38 04             	cmpl   $0x4,(%rax)
    33a3:	75 61                	jne    3406 <rio_read+0x80>
    33a5:	8b 6b 04             	mov    0x4(%rbx),%ebp
    33a8:	85 ed                	test   %ebp,%ebp
    33aa:	7f 29                	jg     33d5 <rio_read+0x4f>
    33ac:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    33b0:	8b 3b                	mov    (%rbx),%edi
    33b2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    33b9:	ba 00 20 00 00       	mov    $0x2000,%edx
    33be:	48 89 ee             	mov    %rbp,%rsi
    33c1:	e8 aa ee ff ff       	call   2270 <__read_chk@plt>
    33c6:	89 43 04             	mov    %eax,0x4(%rbx)
    33c9:	85 c0                	test   %eax,%eax
    33cb:	78 ce                	js     339b <rio_read+0x15>
    33cd:	74 40                	je     340f <rio_read+0x89>
    33cf:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    33d3:	eb d0                	jmp    33a5 <rio_read+0x1f>
    33d5:	89 e8                	mov    %ebp,%eax
    33d7:	4c 39 e0             	cmp    %r12,%rax
    33da:	72 03                	jb     33df <rio_read+0x59>
    33dc:	44 89 e5             	mov    %r12d,%ebp
    33df:	4c 63 e5             	movslq %ebp,%r12
    33e2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    33e6:	4c 89 e2             	mov    %r12,%rdx
    33e9:	4c 89 ef             	mov    %r13,%rdi
    33ec:	e8 3f ef ff ff       	call   2330 <memcpy@plt>
    33f1:	4c 01 63 08          	add    %r12,0x8(%rbx)
    33f5:	29 6b 04             	sub    %ebp,0x4(%rbx)
    33f8:	4c 89 e0             	mov    %r12,%rax
    33fb:	48 83 c4 08          	add    $0x8,%rsp
    33ff:	5b                   	pop    %rbx
    3400:	5d                   	pop    %rbp
    3401:	41 5c                	pop    %r12
    3403:	41 5d                	pop    %r13
    3405:	c3                   	ret
    3406:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    340d:	eb ec                	jmp    33fb <rio_read+0x75>
    340f:	b8 00 00 00 00       	mov    $0x0,%eax
    3414:	eb e5                	jmp    33fb <rio_read+0x75>

0000000000003416 <rio_readlineb>:
    3416:	41 55                	push   %r13
    3418:	41 54                	push   %r12
    341a:	55                   	push   %rbp
    341b:	53                   	push   %rbx
    341c:	48 83 ec 18          	sub    $0x18,%rsp
    3420:	49 89 fd             	mov    %rdi,%r13
    3423:	48 89 f5             	mov    %rsi,%rbp
    3426:	49 89 d4             	mov    %rdx,%r12
    3429:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3430:	00 00 
    3432:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3437:	31 c0                	xor    %eax,%eax
    3439:	bb 01 00 00 00       	mov    $0x1,%ebx
    343e:	eb 18                	jmp    3458 <rio_readlineb+0x42>
    3440:	85 c0                	test   %eax,%eax
    3442:	75 65                	jne    34a9 <rio_readlineb+0x93>
    3444:	48 83 fb 01          	cmp    $0x1,%rbx
    3448:	75 3d                	jne    3487 <rio_readlineb+0x71>
    344a:	b8 00 00 00 00       	mov    $0x0,%eax
    344f:	eb 3d                	jmp    348e <rio_readlineb+0x78>
    3451:	48 83 c3 01          	add    $0x1,%rbx
    3455:	48 89 d5             	mov    %rdx,%rbp
    3458:	4c 39 e3             	cmp    %r12,%rbx
    345b:	73 2a                	jae    3487 <rio_readlineb+0x71>
    345d:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
    3462:	ba 01 00 00 00       	mov    $0x1,%edx
    3467:	4c 89 ef             	mov    %r13,%rdi
    346a:	e8 17 ff ff ff       	call   3386 <rio_read>
    346f:	83 f8 01             	cmp    $0x1,%eax
    3472:	75 cc                	jne    3440 <rio_readlineb+0x2a>
    3474:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    3478:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
    347d:	88 45 00             	mov    %al,0x0(%rbp)
    3480:	3c 0a                	cmp    $0xa,%al
    3482:	75 cd                	jne    3451 <rio_readlineb+0x3b>
    3484:	48 89 d5             	mov    %rdx,%rbp
    3487:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    348b:	48 89 d8             	mov    %rbx,%rax
    348e:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    3493:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    349a:	00 00 
    349c:	75 14                	jne    34b2 <rio_readlineb+0x9c>
    349e:	48 83 c4 18          	add    $0x18,%rsp
    34a2:	5b                   	pop    %rbx
    34a3:	5d                   	pop    %rbp
    34a4:	41 5c                	pop    %r12
    34a6:	41 5d                	pop    %r13
    34a8:	c3                   	ret
    34a9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    34b0:	eb dc                	jmp    348e <rio_readlineb+0x78>
    34b2:	e8 f9 ed ff ff       	call   22b0 <__stack_chk_fail@plt>

00000000000034b7 <urlencode>:
    34b7:	41 54                	push   %r12
    34b9:	55                   	push   %rbp
    34ba:	53                   	push   %rbx
    34bb:	48 83 ec 10          	sub    $0x10,%rsp
    34bf:	48 89 fb             	mov    %rdi,%rbx
    34c2:	48 89 f5             	mov    %rsi,%rbp
    34c5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    34cc:	00 00 
    34ce:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    34d3:	31 c0                	xor    %eax,%eax
    34d5:	e8 c6 ed ff ff       	call   22a0 <strlen@plt>
    34da:	eb 0f                	jmp    34eb <urlencode+0x34>
    34dc:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    34e0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    34e4:	48 83 c3 01          	add    $0x1,%rbx
    34e8:	44 89 e0             	mov    %r12d,%eax
    34eb:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
    34ef:	85 c0                	test   %eax,%eax
    34f1:	0f 84 a8 00 00 00    	je     359f <urlencode+0xe8>
    34f7:	44 0f b6 03          	movzbl (%rbx),%r8d
    34fb:	41 80 f8 2a          	cmp    $0x2a,%r8b
    34ff:	0f 94 c0             	sete   %al
    3502:	41 80 f8 2d          	cmp    $0x2d,%r8b
    3506:	0f 94 c2             	sete   %dl
    3509:	08 d0                	or     %dl,%al
    350b:	75 cf                	jne    34dc <urlencode+0x25>
    350d:	41 80 f8 2e          	cmp    $0x2e,%r8b
    3511:	74 c9                	je     34dc <urlencode+0x25>
    3513:	41 80 f8 5f          	cmp    $0x5f,%r8b
    3517:	74 c3                	je     34dc <urlencode+0x25>
    3519:	41 8d 40 d0          	lea    -0x30(%r8),%eax
    351d:	3c 09                	cmp    $0x9,%al
    351f:	76 bb                	jbe    34dc <urlencode+0x25>
    3521:	41 8d 40 bf          	lea    -0x41(%r8),%eax
    3525:	3c 19                	cmp    $0x19,%al
    3527:	76 b3                	jbe    34dc <urlencode+0x25>
    3529:	41 8d 40 9f          	lea    -0x61(%r8),%eax
    352d:	3c 19                	cmp    $0x19,%al
    352f:	76 ab                	jbe    34dc <urlencode+0x25>
    3531:	41 80 f8 20          	cmp    $0x20,%r8b
    3535:	74 56                	je     358d <urlencode+0xd6>
    3537:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    353b:	3c 5f                	cmp    $0x5f,%al
    353d:	0f 96 c0             	setbe  %al
    3540:	41 80 f8 09          	cmp    $0x9,%r8b
    3544:	0f 94 c2             	sete   %dl
    3547:	08 d0                	or     %dl,%al
    3549:	74 4f                	je     359a <urlencode+0xe3>
    354b:	48 89 e7             	mov    %rsp,%rdi
    354e:	45 0f b6 c0          	movzbl %r8b,%r8d
    3552:	48 8d 0d 14 22 00 00 	lea    0x2214(%rip),%rcx        # 576d <array.0+0x46d>
    3559:	ba 08 00 00 00       	mov    $0x8,%edx
    355e:	be 01 00 00 00       	mov    $0x1,%esi
    3563:	b8 00 00 00 00       	mov    $0x0,%eax
    3568:	e8 93 ee ff ff       	call   2400 <__sprintf_chk@plt>
    356d:	0f b6 04 24          	movzbl (%rsp),%eax
    3571:	88 45 00             	mov    %al,0x0(%rbp)
    3574:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
    3579:	88 45 01             	mov    %al,0x1(%rbp)
    357c:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
    3581:	88 45 02             	mov    %al,0x2(%rbp)
    3584:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    3588:	e9 57 ff ff ff       	jmp    34e4 <urlencode+0x2d>
    358d:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    3591:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    3595:	e9 4a ff ff ff       	jmp    34e4 <urlencode+0x2d>
    359a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    359f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    35a4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    35ab:	00 00 
    35ad:	75 09                	jne    35b8 <urlencode+0x101>
    35af:	48 83 c4 10          	add    $0x10,%rsp
    35b3:	5b                   	pop    %rbx
    35b4:	5d                   	pop    %rbp
    35b5:	41 5c                	pop    %r12
    35b7:	c3                   	ret
    35b8:	e8 f3 ec ff ff       	call   22b0 <__stack_chk_fail@plt>

00000000000035bd <submitr>:
    35bd:	f3 0f 1e fa          	endbr64
    35c1:	41 57                	push   %r15
    35c3:	41 56                	push   %r14
    35c5:	41 55                	push   %r13
    35c7:	41 54                	push   %r12
    35c9:	55                   	push   %rbp
    35ca:	53                   	push   %rbx
    35cb:	4c 8d 9c 24 00 40 ff 	lea    -0xc000(%rsp),%r11
    35d2:	ff 
    35d3:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    35da:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    35df:	4c 39 dc             	cmp    %r11,%rsp
    35e2:	75 ef                	jne    35d3 <submitr+0x16>
    35e4:	48 83 ec 68          	sub    $0x68,%rsp
    35e8:	49 89 fc             	mov    %rdi,%r12
    35eb:	89 74 24 18          	mov    %esi,0x18(%rsp)
    35ef:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    35f4:	49 89 cd             	mov    %rcx,%r13
    35f7:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    35fc:	4d 89 ce             	mov    %r9,%r14
    35ff:	48 8b ac 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbp
    3606:	00 
    3607:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    360e:	00 00 
    3610:	48 89 84 24 58 c0 00 	mov    %rax,0xc058(%rsp)
    3617:	00 
    3618:	31 c0                	xor    %eax,%eax
    361a:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    3621:	00 
    3622:	ba 00 00 00 00       	mov    $0x0,%edx
    3627:	be 01 00 00 00       	mov    $0x1,%esi
    362c:	bf 02 00 00 00       	mov    $0x2,%edi
    3631:	e8 da ed ff ff       	call   2410 <socket@plt>
    3636:	85 c0                	test   %eax,%eax
    3638:	0f 88 ab 02 00 00    	js     38e9 <submitr+0x32c>
    363e:	89 c3                	mov    %eax,%ebx
    3640:	4c 89 e7             	mov    %r12,%rdi
    3643:	e8 b8 ec ff ff       	call   2300 <gethostbyname@plt>
    3648:	48 85 c0             	test   %rax,%rax
    364b:	0f 84 e4 02 00 00    	je     3935 <submitr+0x378>
    3651:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
    3656:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    365d:	00 00 
    365f:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    3666:	00 00 
    3668:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    366f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    3673:	48 8b 40 18          	mov    0x18(%rax),%rax
    3677:	48 8b 30             	mov    (%rax),%rsi
    367a:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    367f:	b9 0c 00 00 00       	mov    $0xc,%ecx
    3684:	e8 87 ec ff ff       	call   2310 <__memmove_chk@plt>
    3689:	0f b7 44 24 18       	movzwl 0x18(%rsp),%eax
    368e:	66 c1 c0 08          	rol    $0x8,%ax
    3692:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
    3697:	ba 10 00 00 00       	mov    $0x10,%edx
    369c:	4c 89 fe             	mov    %r15,%rsi
    369f:	89 df                	mov    %ebx,%edi
    36a1:	e8 1a ed ff ff       	call   23c0 <connect@plt>
    36a6:	85 c0                	test   %eax,%eax
    36a8:	0f 88 fd 02 00 00    	js     39ab <submitr+0x3ee>
    36ae:	4c 89 f7             	mov    %r14,%rdi
    36b1:	e8 ea eb ff ff       	call   22a0 <strlen@plt>
    36b6:	49 89 c7             	mov    %rax,%r15
    36b9:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    36be:	e8 dd eb ff ff       	call   22a0 <strlen@plt>
    36c3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    36c8:	4c 89 ef             	mov    %r13,%rdi
    36cb:	e8 d0 eb ff ff       	call   22a0 <strlen@plt>
    36d0:	48 03 44 24 18       	add    0x18(%rsp),%rax
    36d5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    36da:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    36df:	e8 bc eb ff ff       	call   22a0 <strlen@plt>
    36e4:	48 03 44 24 18       	add    0x18(%rsp),%rax
    36e9:	4b 8d 14 7f          	lea    (%r15,%r15,2),%rdx
    36ed:	48 8d 84 10 80 00 00 	lea    0x80(%rax,%rdx,1),%rax
    36f4:	00 
    36f5:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    36fb:	0f 87 12 03 00 00    	ja     3a13 <submitr+0x456>
    3701:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
    3708:	00 
    3709:	b9 00 04 00 00       	mov    $0x400,%ecx
    370e:	b8 00 00 00 00       	mov    $0x0,%eax
    3713:	48 89 f7             	mov    %rsi,%rdi
    3716:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    3719:	4c 89 f7             	mov    %r14,%rdi
    371c:	e8 96 fd ff ff       	call   34b7 <urlencode>
    3721:	85 c0                	test   %eax,%eax
    3723:	0f 88 5d 03 00 00    	js     3a86 <submitr+0x4c9>
    3729:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
    3730:	00 
    3731:	b9 00 04 00 00       	mov    $0x400,%ecx
    3736:	b8 00 00 00 00       	mov    $0x0,%eax
    373b:	48 89 f7             	mov    %rsi,%rdi
    373e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    3741:	4c 89 ef             	mov    %r13,%rdi
    3744:	e8 6e fd ff ff       	call   34b7 <urlencode>
    3749:	85 c0                	test   %eax,%eax
    374b:	0f 88 c0 03 00 00    	js     3b11 <submitr+0x554>
    3751:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
    3758:	00 
    3759:	48 83 ec 08          	sub    $0x8,%rsp
    375d:	41 54                	push   %r12
    375f:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
    3766:	00 
    3767:	50                   	push   %rax
    3768:	48 8d 84 24 68 60 00 	lea    0x6068(%rsp),%rax
    376f:	00 
    3770:	50                   	push   %rax
    3771:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    3776:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    377b:	48 8d 0d 5e 1f 00 00 	lea    0x1f5e(%rip),%rcx        # 56e0 <array.0+0x3e0>
    3782:	ba 00 20 00 00       	mov    $0x2000,%edx
    3787:	be 01 00 00 00       	mov    $0x1,%esi
    378c:	4c 89 ff             	mov    %r15,%rdi
    378f:	b8 00 00 00 00       	mov    $0x0,%eax
    3794:	e8 67 ec ff ff       	call   2400 <__sprintf_chk@plt>
    3799:	48 83 c4 20          	add    $0x20,%rsp
    379d:	4c 89 ff             	mov    %r15,%rdi
    37a0:	e8 fb ea ff ff       	call   22a0 <strlen@plt>
    37a5:	48 89 c2             	mov    %rax,%rdx
    37a8:	4c 89 fe             	mov    %r15,%rsi
    37ab:	89 df                	mov    %ebx,%edi
    37ad:	e8 76 fb ff ff       	call   3328 <rio_writen>
    37b2:	48 85 c0             	test   %rax,%rax
    37b5:	0f 88 e1 03 00 00    	js     3b9c <submitr+0x5df>
    37bb:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
    37c0:	89 de                	mov    %ebx,%esi
    37c2:	4c 89 e7             	mov    %r12,%rdi
    37c5:	e8 16 fb ff ff       	call   32e0 <rio_readinitb>
    37ca:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    37d1:	00 
    37d2:	ba 00 20 00 00       	mov    $0x2000,%edx
    37d7:	4c 89 e7             	mov    %r12,%rdi
    37da:	e8 37 fc ff ff       	call   3416 <rio_readlineb>
    37df:	48 85 c0             	test   %rax,%rax
    37e2:	0f 8e 20 04 00 00    	jle    3c08 <submitr+0x64b>
    37e8:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    37ed:	48 8d 94 24 50 80 00 	lea    0x8050(%rsp),%rdx
    37f4:	00 
    37f5:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    37fc:	00 
    37fd:	4c 8d 84 24 50 a0 00 	lea    0xa050(%rsp),%r8
    3804:	00 
    3805:	48 8d 35 68 1f 00 00 	lea    0x1f68(%rip),%rsi        # 5774 <array.0+0x474>
    380c:	b8 00 00 00 00       	mov    $0x0,%eax
    3811:	e8 4a eb ff ff       	call   2360 <__isoc99_sscanf@plt>
    3816:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    381d:	00 
    381e:	48 8d 35 66 1f 00 00 	lea    0x1f66(%rip),%rsi        # 578b <array.0+0x48b>
    3825:	e8 b6 ea ff ff       	call   22e0 <strcmp@plt>
    382a:	85 c0                	test   %eax,%eax
    382c:	0f 84 56 04 00 00    	je     3c88 <submitr+0x6cb>
    3832:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3839:	00 
    383a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    383f:	ba 00 20 00 00       	mov    $0x2000,%edx
    3844:	e8 cd fb ff ff       	call   3416 <rio_readlineb>
    3849:	48 85 c0             	test   %rax,%rax
    384c:	7f c8                	jg     3816 <submitr+0x259>
    384e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3855:	3a 20 43 
    3858:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    385f:	20 75 6e 
    3862:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3866:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    386a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3871:	74 6f 20 
    3874:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    387b:	68 65 61 
    387e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3882:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3886:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    388d:	66 72 6f 
    3890:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
    3897:	6f 6c 61 
    389a:	48 89 45 20          	mov    %rax,0x20(%rbp)
    389e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    38a2:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
    38a9:	76 65 72 
    38ac:	48 89 45 30          	mov    %rax,0x30(%rbp)
    38b0:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
    38b4:	89 df                	mov    %ebx,%edi
    38b6:	e8 15 ea ff ff       	call   22d0 <close@plt>
    38bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    38c0:	48 8b 94 24 58 c0 00 	mov    0xc058(%rsp),%rdx
    38c7:	00 
    38c8:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    38cf:	00 00 
    38d1:	0f 85 ff 04 00 00    	jne    3dd6 <submitr+0x819>
    38d7:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
    38de:	5b                   	pop    %rbx
    38df:	5d                   	pop    %rbp
    38e0:	41 5c                	pop    %r12
    38e2:	41 5d                	pop    %r13
    38e4:	41 5e                	pop    %r14
    38e6:	41 5f                	pop    %r15
    38e8:	c3                   	ret
    38e9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    38f0:	3a 20 43 
    38f3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    38fa:	20 75 6e 
    38fd:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3901:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3905:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    390c:	74 6f 20 
    390f:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3916:	65 20 73 
    3919:	48 89 45 10          	mov    %rax,0x10(%rbp)
    391d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3921:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3928:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    392e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3933:	eb 8b                	jmp    38c0 <submitr+0x303>
    3935:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    393c:	3a 20 44 
    393f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3946:	20 75 6e 
    3949:	48 89 45 00          	mov    %rax,0x0(%rbp)
    394d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3951:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3958:	74 6f 20 
    395b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3962:	76 65 20 
    3965:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3969:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    396d:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    3974:	61 62 20 
    3977:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
    397e:	72 20 61 
    3981:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3985:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3989:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
    3990:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
    3996:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
    399a:	89 df                	mov    %ebx,%edi
    399c:	e8 2f e9 ff ff       	call   22d0 <close@plt>
    39a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    39a6:	e9 15 ff ff ff       	jmp    38c0 <submitr+0x303>
    39ab:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    39b2:	3a 20 55 
    39b5:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    39bc:	20 74 6f 
    39bf:	48 89 45 00          	mov    %rax,0x0(%rbp)
    39c3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    39c7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    39ce:	65 63 74 
    39d1:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    39d8:	68 65 20 
    39db:	48 89 45 10          	mov    %rax,0x10(%rbp)
    39df:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    39e3:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
    39ea:	61 62 20 
    39ed:	48 89 45 20          	mov    %rax,0x20(%rbp)
    39f1:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
    39f8:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
    39fe:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    3a02:	89 df                	mov    %ebx,%edi
    3a04:	e8 c7 e8 ff ff       	call   22d0 <close@plt>
    3a09:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a0e:	e9 ad fe ff ff       	jmp    38c0 <submitr+0x303>
    3a13:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3a1a:	3a 20 52 
    3a1d:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3a24:	20 73 74 
    3a27:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3a2b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3a2f:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    3a36:	74 6f 6f 
    3a39:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    3a40:	65 2e 20 
    3a43:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3a47:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3a4b:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    3a52:	61 73 65 
    3a55:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    3a5c:	49 54 52 
    3a5f:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3a63:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3a67:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    3a6e:	55 46 00 
    3a71:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3a75:	89 df                	mov    %ebx,%edi
    3a77:	e8 54 e8 ff ff       	call   22d0 <close@plt>
    3a7c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a81:	e9 3a fe ff ff       	jmp    38c0 <submitr+0x303>
    3a86:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    3a8d:	3a 20 52 
    3a90:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3a97:	20 73 74 
    3a9a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3a9e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3aa2:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    3aa9:	63 6f 6e 
    3aac:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    3ab3:	20 61 6e 
    3ab6:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3aba:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3abe:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    3ac5:	67 61 6c 
    3ac8:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    3acf:	6e 70 72 
    3ad2:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3ad6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3ada:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    3ae1:	6c 65 20 
    3ae4:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    3aeb:	63 74 65 
    3aee:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3af2:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3af6:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    3afc:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    3b00:	89 df                	mov    %ebx,%edi
    3b02:	e8 c9 e7 ff ff       	call   22d0 <close@plt>
    3b07:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3b0c:	e9 af fd ff ff       	jmp    38c0 <submitr+0x303>
    3b11:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3b18:	3a 20 55 
    3b1b:	48 ba 73 65 72 69 64 	movabs $0x7473206469726573,%rdx
    3b22:	20 73 74 
    3b25:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3b29:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3b2d:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    3b34:	63 6f 6e 
    3b37:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    3b3e:	20 61 6e 
    3b41:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3b45:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3b49:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    3b50:	67 61 6c 
    3b53:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    3b5a:	6e 70 72 
    3b5d:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3b61:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3b65:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    3b6c:	6c 65 20 
    3b6f:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    3b76:	63 74 65 
    3b79:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3b7d:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3b81:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
    3b87:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
    3b8b:	89 df                	mov    %ebx,%edi
    3b8d:	e8 3e e7 ff ff       	call   22d0 <close@plt>
    3b92:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3b97:	e9 24 fd ff ff       	jmp    38c0 <submitr+0x303>
    3b9c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3ba3:	3a 20 43 
    3ba6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3bad:	20 75 6e 
    3bb0:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3bb4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3bb8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3bbf:	74 6f 20 
    3bc2:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    3bc9:	20 74 6f 
    3bcc:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3bd0:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3bd4:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
    3bdb:	41 75 74 
    3bde:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
    3be5:	73 65 72 
    3be8:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3bec:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3bf0:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
    3bf7:	89 df                	mov    %ebx,%edi
    3bf9:	e8 d2 e6 ff ff       	call   22d0 <close@plt>
    3bfe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3c03:	e9 b8 fc ff ff       	jmp    38c0 <submitr+0x303>
    3c08:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3c0f:	3a 20 43 
    3c12:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3c19:	20 75 6e 
    3c1c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3c20:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3c24:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3c2b:	74 6f 20 
    3c2e:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    3c35:	66 69 72 
    3c38:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3c3c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3c40:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    3c47:	61 64 65 
    3c4a:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
    3c51:	6d 20 41 
    3c54:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3c58:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3c5c:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
    3c63:	62 20 73 
    3c66:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3c6a:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
    3c71:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
    3c77:	89 df                	mov    %ebx,%edi
    3c79:	e8 52 e6 ff ff       	call   22d0 <close@plt>
    3c7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3c83:	e9 38 fc ff ff       	jmp    38c0 <submitr+0x303>
    3c88:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3c8f:	00 
    3c90:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3c95:	ba 00 20 00 00       	mov    $0x2000,%edx
    3c9a:	e8 77 f7 ff ff       	call   3416 <rio_readlineb>
    3c9f:	48 85 c0             	test   %rax,%rax
    3ca2:	7e 78                	jle    3d1c <submitr+0x75f>
    3ca4:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    3ca9:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    3cb0:	0f 85 e7 00 00 00    	jne    3d9d <submitr+0x7e0>
    3cb6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    3cbd:	00 
    3cbe:	48 89 ef             	mov    %rbp,%rdi
    3cc1:	e8 9a e5 ff ff       	call   2260 <strcpy@plt>
    3cc6:	89 df                	mov    %ebx,%edi
    3cc8:	e8 03 e6 ff ff       	call   22d0 <close@plt>
    3ccd:	48 8d 35 b1 1a 00 00 	lea    0x1ab1(%rip),%rsi        # 5785 <array.0+0x485>
    3cd4:	48 89 ef             	mov    %rbp,%rdi
    3cd7:	e8 04 e6 ff ff       	call   22e0 <strcmp@plt>
    3cdc:	85 c0                	test   %eax,%eax
    3cde:	0f 84 dc fb ff ff    	je     38c0 <submitr+0x303>
    3ce4:	48 8d 35 9e 1a 00 00 	lea    0x1a9e(%rip),%rsi        # 5789 <array.0+0x489>
    3ceb:	48 89 ef             	mov    %rbp,%rdi
    3cee:	e8 ed e5 ff ff       	call   22e0 <strcmp@plt>
    3cf3:	85 c0                	test   %eax,%eax
    3cf5:	0f 84 c5 fb ff ff    	je     38c0 <submitr+0x303>
    3cfb:	48 8d 35 8c 1a 00 00 	lea    0x1a8c(%rip),%rsi        # 578e <array.0+0x48e>
    3d02:	48 89 ef             	mov    %rbp,%rdi
    3d05:	e8 d6 e5 ff ff       	call   22e0 <strcmp@plt>
    3d0a:	85 c0                	test   %eax,%eax
    3d0c:	0f 84 ae fb ff ff    	je     38c0 <submitr+0x303>
    3d12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3d17:	e9 a4 fb ff ff       	jmp    38c0 <submitr+0x303>
    3d1c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3d23:	3a 20 43 
    3d26:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3d2d:	20 75 6e 
    3d30:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3d34:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3d38:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3d3f:	74 6f 20 
    3d42:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    3d49:	73 74 61 
    3d4c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3d50:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3d54:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    3d5b:	65 73 73 
    3d5e:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    3d65:	72 6f 6d 
    3d68:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3d6c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
    3d70:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
    3d77:	6c 61 62 
    3d7a:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    3d81:	65 72 00 
    3d84:	48 89 45 30          	mov    %rax,0x30(%rbp)
    3d88:	48 89 55 38          	mov    %rdx,0x38(%rbp)
    3d8c:	89 df                	mov    %ebx,%edi
    3d8e:	e8 3d e5 ff ff       	call   22d0 <close@plt>
    3d93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3d98:	e9 23 fb ff ff       	jmp    38c0 <submitr+0x303>
    3d9d:	4c 8d 8c 24 50 a0 00 	lea    0xa050(%rsp),%r9
    3da4:	00 
    3da5:	48 8d 0d 94 19 00 00 	lea    0x1994(%rip),%rcx        # 5740 <array.0+0x440>
    3dac:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    3db3:	be 01 00 00 00       	mov    $0x1,%esi
    3db8:	48 89 ef             	mov    %rbp,%rdi
    3dbb:	b8 00 00 00 00       	mov    $0x0,%eax
    3dc0:	e8 3b e6 ff ff       	call   2400 <__sprintf_chk@plt>
    3dc5:	89 df                	mov    %ebx,%edi
    3dc7:	e8 04 e5 ff ff       	call   22d0 <close@plt>
    3dcc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3dd1:	e9 ea fa ff ff       	jmp    38c0 <submitr+0x303>
    3dd6:	e8 d5 e4 ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000003ddb <init_timeout>:
    3ddb:	f3 0f 1e fa          	endbr64
    3ddf:	85 ff                	test   %edi,%edi
    3de1:	74 26                	je     3e09 <init_timeout+0x2e>
    3de3:	53                   	push   %rbx
    3de4:	89 fb                	mov    %edi,%ebx
    3de6:	78 1a                	js     3e02 <init_timeout+0x27>
    3de8:	48 8d 35 03 f5 ff ff 	lea    -0xafd(%rip),%rsi        # 32f2 <sigalrm_handler>
    3def:	bf 0e 00 00 00       	mov    $0xe,%edi
    3df4:	e8 f7 e4 ff ff       	call   22f0 <signal@plt>
    3df9:	89 df                	mov    %ebx,%edi
    3dfb:	e8 c0 e4 ff ff       	call   22c0 <alarm@plt>
    3e00:	5b                   	pop    %rbx
    3e01:	c3                   	ret
    3e02:	bb 00 00 00 00       	mov    $0x0,%ebx
    3e07:	eb df                	jmp    3de8 <init_timeout+0xd>
    3e09:	c3                   	ret

0000000000003e0a <init_driver>:
    3e0a:	f3 0f 1e fa          	endbr64
    3e0e:	41 54                	push   %r12
    3e10:	55                   	push   %rbp
    3e11:	53                   	push   %rbx
    3e12:	48 83 ec 20          	sub    $0x20,%rsp
    3e16:	48 89 fd             	mov    %rdi,%rbp
    3e19:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3e20:	00 00 
    3e22:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3e27:	31 c0                	xor    %eax,%eax
    3e29:	be 01 00 00 00       	mov    $0x1,%esi
    3e2e:	bf 0d 00 00 00       	mov    $0xd,%edi
    3e33:	e8 b8 e4 ff ff       	call   22f0 <signal@plt>
    3e38:	be 01 00 00 00       	mov    $0x1,%esi
    3e3d:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3e42:	e8 a9 e4 ff ff       	call   22f0 <signal@plt>
    3e47:	be 01 00 00 00       	mov    $0x1,%esi
    3e4c:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3e51:	e8 9a e4 ff ff       	call   22f0 <signal@plt>
    3e56:	ba 00 00 00 00       	mov    $0x0,%edx
    3e5b:	be 01 00 00 00       	mov    $0x1,%esi
    3e60:	bf 02 00 00 00       	mov    $0x2,%edi
    3e65:	e8 a6 e5 ff ff       	call   2410 <socket@plt>
    3e6a:	85 c0                	test   %eax,%eax
    3e6c:	0f 88 9c 00 00 00    	js     3f0e <init_driver+0x104>
    3e72:	89 c3                	mov    %eax,%ebx
    3e74:	48 8d 3d 16 19 00 00 	lea    0x1916(%rip),%rdi        # 5791 <array.0+0x491>
    3e7b:	e8 80 e4 ff ff       	call   2300 <gethostbyname@plt>
    3e80:	48 85 c0             	test   %rax,%rax
    3e83:	0f 84 d1 00 00 00    	je     3f5a <init_driver+0x150>
    3e89:	49 89 e4             	mov    %rsp,%r12
    3e8c:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    3e93:	00 
    3e94:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    3e9b:	00 00 
    3e9d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    3ea3:	48 63 50 14          	movslq 0x14(%rax),%rdx
    3ea7:	48 8b 40 18          	mov    0x18(%rax),%rax
    3eab:	48 8b 30             	mov    (%rax),%rsi
    3eae:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    3eb3:	b9 0c 00 00 00       	mov    $0xc,%ecx
    3eb8:	e8 53 e4 ff ff       	call   2310 <__memmove_chk@plt>
    3ebd:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    3ec4:	ba 10 00 00 00       	mov    $0x10,%edx
    3ec9:	4c 89 e6             	mov    %r12,%rsi
    3ecc:	89 df                	mov    %ebx,%edi
    3ece:	e8 ed e4 ff ff       	call   23c0 <connect@plt>
    3ed3:	85 c0                	test   %eax,%eax
    3ed5:	0f 88 e7 00 00 00    	js     3fc2 <init_driver+0x1b8>
    3edb:	89 df                	mov    %ebx,%edi
    3edd:	e8 ee e3 ff ff       	call   22d0 <close@plt>
    3ee2:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    3ee8:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    3eec:	b8 00 00 00 00       	mov    $0x0,%eax
    3ef1:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    3ef6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3efd:	00 00 
    3eff:	0f 85 2f 01 00 00    	jne    4034 <init_driver+0x22a>
    3f05:	48 83 c4 20          	add    $0x20,%rsp
    3f09:	5b                   	pop    %rbx
    3f0a:	5d                   	pop    %rbp
    3f0b:	41 5c                	pop    %r12
    3f0d:	c3                   	ret
    3f0e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3f15:	3a 20 43 
    3f18:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3f1f:	20 75 6e 
    3f22:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3f26:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3f2a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3f31:	74 6f 20 
    3f34:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3f3b:	65 20 73 
    3f3e:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3f42:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3f46:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3f4d:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    3f53:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f58:	eb 97                	jmp    3ef1 <init_driver+0xe7>
    3f5a:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3f61:	3a 20 44 
    3f64:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3f6b:	20 75 6e 
    3f6e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3f72:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3f76:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3f7d:	74 6f 20 
    3f80:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3f87:	76 65 20 
    3f8a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3f8e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3f92:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    3f99:	72 20 61 
    3f9c:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3fa0:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    3fa7:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    3fad:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    3fb1:	89 df                	mov    %ebx,%edi
    3fb3:	e8 18 e3 ff ff       	call   22d0 <close@plt>
    3fb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3fbd:	e9 2f ff ff ff       	jmp    3ef1 <init_driver+0xe7>
    3fc2:	48 b8 31 36 32 2e 31 	movabs $0x2e3530312e323631,%rax
    3fc9:	30 35 2e 
    3fcc:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3fd0:	c7 45 08 33 31 2e 32 	movl   $0x322e3133,0x8(%rbp)
    3fd7:	66 c7 45 0c 33 32    	movw   $0x3233,0xc(%rbp)
    3fdd:	c6 45 0e 00          	movb   $0x0,0xe(%rbp)
    3fe1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3fe8:	3a 20 55 
    3feb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    3ff2:	20 74 6f 
    3ff5:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3ff9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3ffd:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    4004:	65 63 74 
    4007:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
    400e:	65 72 76 
    4011:	48 89 45 10          	mov    %rax,0x10(%rbp)
    4015:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    4019:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
    401f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
    4023:	89 df                	mov    %ebx,%edi
    4025:	e8 a6 e2 ff ff       	call   22d0 <close@plt>
    402a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    402f:	e9 bd fe ff ff       	jmp    3ef1 <init_driver+0xe7>
    4034:	e8 77 e2 ff ff       	call   22b0 <__stack_chk_fail@plt>

0000000000004039 <driver_post>:
    4039:	f3 0f 1e fa          	endbr64
    403d:	53                   	push   %rbx
    403e:	4c 89 cb             	mov    %r9,%rbx
    4041:	45 85 c0             	test   %r8d,%r8d
    4044:	75 18                	jne    405e <driver_post+0x25>
    4046:	48 85 ff             	test   %rdi,%rdi
    4049:	74 05                	je     4050 <driver_post+0x17>
    404b:	80 3f 00             	cmpb   $0x0,(%rdi)
    404e:	75 37                	jne    4087 <driver_post+0x4e>
    4050:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    4055:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    4059:	44 89 c0             	mov    %r8d,%eax
    405c:	5b                   	pop    %rbx
    405d:	c3                   	ret
    405e:	48 89 ca             	mov    %rcx,%rdx
    4061:	48 8d 35 38 17 00 00 	lea    0x1738(%rip),%rsi        # 57a0 <array.0+0x4a0>
    4068:	bf 01 00 00 00       	mov    $0x1,%edi
    406d:	b8 00 00 00 00       	mov    $0x0,%eax
    4072:	e8 09 e3 ff ff       	call   2380 <__printf_chk@plt>
    4077:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    407c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    4080:	b8 00 00 00 00       	mov    $0x0,%eax
    4085:	eb d5                	jmp    405c <driver_post+0x23>
    4087:	48 83 ec 08          	sub    $0x8,%rsp
    408b:	41 51                	push   %r9
    408d:	49 89 c9             	mov    %rcx,%r9
    4090:	49 89 d0             	mov    %rdx,%r8
    4093:	48 89 f9             	mov    %rdi,%rcx
    4096:	48 89 f2             	mov    %rsi,%rdx
    4099:	be 50 00 00 00       	mov    $0x50,%esi
    409e:	48 8d 3d ec 16 00 00 	lea    0x16ec(%rip),%rdi        # 5791 <array.0+0x491>
    40a5:	e8 13 f5 ff ff       	call   35bd <submitr>
    40aa:	48 83 c4 10          	add    $0x10,%rsp
    40ae:	eb ac                	jmp    405c <driver_post+0x23>

Disassembly of section .fini:

00000000000040b0 <_fini>:
    40b0:	f3 0f 1e fa          	endbr64
    40b4:	48 83 ec 08          	sub    $0x8,%rsp
    40b8:	48 83 c4 08          	add    $0x8,%rsp
    40bc:	c3                   	ret
