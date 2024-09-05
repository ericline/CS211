
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ba 3e 00 00    	push   0x3eba(%rip)        # 4ee0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 bb 3e 00 00 	bnd jmp *0x3ebb(%rip)        # 4ee8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	68 1b 00 00 00       	push   $0x1b
    11e9:	f2 e9 31 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ef:	90                   	nop
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	68 1c 00 00 00       	push   $0x1c
    11f9:	f2 e9 21 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11ff:	90                   	nop

Disassembly of section .plt.got:

0000000000001200 <__cxa_finalize@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 ed 3d 00 00 	bnd jmp *0x3ded(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001210 <getenv@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4ef0 <getenv@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <strcasecmp@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4ef8 <strcasecmp@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <__errno_location@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f00 <__errno_location@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <strcpy@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f08 <strcpy@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <puts@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f10 <puts@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <write@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f18 <write@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <strlen@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f20 <strlen@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <__stack_chk_fail@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f28 <__stack_chk_fail@GLIBC_2.4>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <alarm@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f30 <alarm@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <close@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f38 <close@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <read@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4f40 <read@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <fgets@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4f48 <fgets@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <strcmp@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4f50 <strcmp@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <signal@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4f58 <signal@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <gethostbyname@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4f60 <gethostbyname@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__memmove_chk@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4f68 <__memmove_chk@GLIBC_2.3.4>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <strtol@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4f70 <strtol@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fflush@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 4d 3c 00 00 	bnd jmp *0x3c4d(%rip)        # 4f78 <fflush@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__isoc99_sscanf@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 45 3c 00 00 	bnd jmp *0x3c45(%rip)        # 4f80 <__isoc99_sscanf@GLIBC_2.7>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <__printf_chk@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 3d 3c 00 00 	bnd jmp *0x3c3d(%rip)        # 4f88 <__printf_chk@GLIBC_2.3.4>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <fopen@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 35 3c 00 00 	bnd jmp *0x3c35(%rip)        # 4f90 <fopen@GLIBC_2.2.5>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <gethostname@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 2d 3c 00 00 	bnd jmp *0x3c2d(%rip)        # 4f98 <gethostname@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <exit@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 25 3c 00 00 	bnd jmp *0x3c25(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <connect@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 1d 3c 00 00 	bnd jmp *0x3c1d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <__fprintf_chk@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 15 3c 00 00 	bnd jmp *0x3c15(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <sleep@plt>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	f2 ff 25 0d 3c 00 00 	bnd jmp *0x3c0d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    13ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013b0 <__ctype_b_loc@plt>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	f2 ff 25 05 3c 00 00 	bnd jmp *0x3c05(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013c0 <__sprintf_chk@plt>:
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	f2 ff 25 fd 3b 00 00 	bnd jmp *0x3bfd(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013d0 <socket@plt>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	f2 ff 25 f5 3b 00 00 	bnd jmp *0x3bf5(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013e0 <_start>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	31 ed                	xor    %ebp,%ebp
    13e6:	49 89 d1             	mov    %rdx,%r9
    13e9:	5e                   	pop    %rsi
    13ea:	48 89 e2             	mov    %rsp,%rdx
    13ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13f1:	50                   	push   %rax
    13f2:	54                   	push   %rsp
    13f3:	45 31 c0             	xor    %r8d,%r8d
    13f6:	31 c9                	xor    %ecx,%ecx
    13f8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 14c9 <main>
    13ff:	ff 15 d3 3b 00 00    	call   *0x3bd3(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    1405:	f4                   	hlt    
    1406:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    140d:	00 00 00 

0000000000001410 <deregister_tm_clones>:
    1410:	48 8d 3d 69 42 00 00 	lea    0x4269(%rip),%rdi        # 5680 <stdout@GLIBC_2.2.5>
    1417:	48 8d 05 62 42 00 00 	lea    0x4262(%rip),%rax        # 5680 <stdout@GLIBC_2.2.5>
    141e:	48 39 f8             	cmp    %rdi,%rax
    1421:	74 15                	je     1438 <deregister_tm_clones+0x28>
    1423:	48 8b 05 b6 3b 00 00 	mov    0x3bb6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    142a:	48 85 c0             	test   %rax,%rax
    142d:	74 09                	je     1438 <deregister_tm_clones+0x28>
    142f:	ff e0                	jmp    *%rax
    1431:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <register_tm_clones>:
    1440:	48 8d 3d 39 42 00 00 	lea    0x4239(%rip),%rdi        # 5680 <stdout@GLIBC_2.2.5>
    1447:	48 8d 35 32 42 00 00 	lea    0x4232(%rip),%rsi        # 5680 <stdout@GLIBC_2.2.5>
    144e:	48 29 fe             	sub    %rdi,%rsi
    1451:	48 89 f0             	mov    %rsi,%rax
    1454:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1458:	48 c1 f8 03          	sar    $0x3,%rax
    145c:	48 01 c6             	add    %rax,%rsi
    145f:	48 d1 fe             	sar    %rsi
    1462:	74 14                	je     1478 <register_tm_clones+0x38>
    1464:	48 8b 05 85 3b 00 00 	mov    0x3b85(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    146b:	48 85 c0             	test   %rax,%rax
    146e:	74 08                	je     1478 <register_tm_clones+0x38>
    1470:	ff e0                	jmp    *%rax
    1472:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <__do_global_dtors_aux>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	80 3d 1d 42 00 00 00 	cmpb   $0x0,0x421d(%rip)        # 56a8 <completed.0>
    148b:	75 2b                	jne    14b8 <__do_global_dtors_aux+0x38>
    148d:	55                   	push   %rbp
    148e:	48 83 3d 62 3b 00 00 	cmpq   $0x0,0x3b62(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1495:	00 
    1496:	48 89 e5             	mov    %rsp,%rbp
    1499:	74 0c                	je     14a7 <__do_global_dtors_aux+0x27>
    149b:	48 8b 3d 66 3b 00 00 	mov    0x3b66(%rip),%rdi        # 5008 <__dso_handle>
    14a2:	e8 59 fd ff ff       	call   1200 <__cxa_finalize@plt>
    14a7:	e8 64 ff ff ff       	call   1410 <deregister_tm_clones>
    14ac:	c6 05 f5 41 00 00 01 	movb   $0x1,0x41f5(%rip)        # 56a8 <completed.0>
    14b3:	5d                   	pop    %rbp
    14b4:	c3                   	ret    
    14b5:	0f 1f 00             	nopl   (%rax)
    14b8:	c3                   	ret    
    14b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014c0 <frame_dummy>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	e9 77 ff ff ff       	jmp    1440 <register_tm_clones>

00000000000014c9 <main>:
    14c9:	f3 0f 1e fa          	endbr64 
    14cd:	53                   	push   %rbx
    14ce:	83 ff 01             	cmp    $0x1,%edi
    14d1:	0f 84 f8 00 00 00    	je     15cf <main+0x106>
    14d7:	48 89 f3             	mov    %rsi,%rbx
    14da:	83 ff 02             	cmp    $0x2,%edi
    14dd:	0f 85 21 01 00 00    	jne    1604 <main+0x13b>
    14e3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14e7:	48 8d 35 16 1b 00 00 	lea    0x1b16(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ee:	e8 5d fe ff ff       	call   1350 <fopen@plt>
    14f3:	48 89 05 b6 41 00 00 	mov    %rax,0x41b6(%rip)        # 56b0 <infile>
    14fa:	48 85 c0             	test   %rax,%rax
    14fd:	0f 84 df 00 00 00    	je     15e2 <main+0x119>
    1503:	e8 a2 07 00 00       	call   1caa <initialize_bomb>
    1508:	48 8d 3d 79 1b 00 00 	lea    0x1b79(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    150f:	e8 3c fd ff ff       	call   1250 <puts@plt>
    1514:	48 8d 3d ad 1b 00 00 	lea    0x1bad(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    151b:	e8 30 fd ff ff       	call   1250 <puts@plt>
    1520:	e8 9b 0a 00 00       	call   1fc0 <read_line>
    1525:	48 89 c7             	mov    %rax,%rdi
    1528:	e8 fa 00 00 00       	call   1627 <phase_1>
    152d:	e8 c6 0b 00 00       	call   20f8 <phase_defused>
    1532:	48 8d 3d bf 1b 00 00 	lea    0x1bbf(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    1539:	e8 12 fd ff ff       	call   1250 <puts@plt>
    153e:	e8 7d 0a 00 00       	call   1fc0 <read_line>
    1543:	48 89 c7             	mov    %rax,%rdi
    1546:	e8 00 01 00 00       	call   164b <phase_2>
    154b:	e8 a8 0b 00 00       	call   20f8 <phase_defused>
    1550:	48 8d 3d e6 1a 00 00 	lea    0x1ae6(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1557:	e8 f4 fc ff ff       	call   1250 <puts@plt>
    155c:	e8 5f 0a 00 00       	call   1fc0 <read_line>
    1561:	48 89 c7             	mov    %rax,%rdi
    1564:	e8 55 01 00 00       	call   16be <phase_3>
    1569:	e8 8a 0b 00 00       	call   20f8 <phase_defused>
    156e:	48 8d 3d e6 1a 00 00 	lea    0x1ae6(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1575:	e8 d6 fc ff ff       	call   1250 <puts@plt>
    157a:	e8 41 0a 00 00       	call   1fc0 <read_line>
    157f:	48 89 c7             	mov    %rax,%rdi
    1582:	e8 ff 02 00 00       	call   1886 <phase_4>
    1587:	e8 6c 0b 00 00       	call   20f8 <phase_defused>
    158c:	48 8d 3d 95 1b 00 00 	lea    0x1b95(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1593:	e8 b8 fc ff ff       	call   1250 <puts@plt>
    1598:	e8 23 0a 00 00       	call   1fc0 <read_line>
    159d:	48 89 c7             	mov    %rax,%rdi
    15a0:	e8 56 03 00 00       	call   18fb <phase_5>
    15a5:	e8 4e 0b 00 00       	call   20f8 <phase_defused>
    15aa:	48 8d 3d b9 1a 00 00 	lea    0x1ab9(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    15b1:	e8 9a fc ff ff       	call   1250 <puts@plt>
    15b6:	e8 05 0a 00 00       	call   1fc0 <read_line>
    15bb:	48 89 c7             	mov    %rax,%rdi
    15be:	e8 cf 03 00 00       	call   1992 <phase_6>
    15c3:	e8 30 0b 00 00       	call   20f8 <phase_defused>
    15c8:	b8 00 00 00 00       	mov    $0x0,%eax
    15cd:	5b                   	pop    %rbx
    15ce:	c3                   	ret    
    15cf:	48 8b 05 ba 40 00 00 	mov    0x40ba(%rip),%rax        # 5690 <stdin@GLIBC_2.2.5>
    15d6:	48 89 05 d3 40 00 00 	mov    %rax,0x40d3(%rip)        # 56b0 <infile>
    15dd:	e9 21 ff ff ff       	jmp    1503 <main+0x3a>
    15e2:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    15e6:	48 8b 13             	mov    (%rbx),%rdx
    15e9:	48 8d 35 16 1a 00 00 	lea    0x1a16(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    15f0:	bf 01 00 00 00       	mov    $0x1,%edi
    15f5:	e8 46 fd ff ff       	call   1340 <__printf_chk@plt>
    15fa:	bf 08 00 00 00       	mov    $0x8,%edi
    15ff:	e8 6c fd ff ff       	call   1370 <exit@plt>
    1604:	48 8b 16             	mov    (%rsi),%rdx
    1607:	48 8d 35 15 1a 00 00 	lea    0x1a15(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    160e:	bf 01 00 00 00       	mov    $0x1,%edi
    1613:	b8 00 00 00 00       	mov    $0x0,%eax
    1618:	e8 23 fd ff ff       	call   1340 <__printf_chk@plt>
    161d:	bf 08 00 00 00       	mov    $0x8,%edi
    1622:	e8 49 fd ff ff       	call   1370 <exit@plt>

0000000000001627 <phase_1>:
    1627:	f3 0f 1e fa          	endbr64 
    162b:	48 83 ec 08          	sub    $0x8,%rsp
    162f:	48 8d 35 1a 1b 00 00 	lea    0x1b1a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    1636:	e8 0f 06 00 00       	call   1c4a <strings_not_equal>
    163b:	85 c0                	test   %eax,%eax
    163d:	75 05                	jne    1644 <phase_1+0x1d>
    163f:	48 83 c4 08          	add    $0x8,%rsp
    1643:	c3                   	ret    
    1644:	e8 f0 08 00 00       	call   1f39 <explode_bomb>
    1649:	eb f4                	jmp    163f <phase_1+0x18>

000000000000164b <phase_2>:
    164b:	f3 0f 1e fa          	endbr64 
    164f:	55                   	push   %rbp
    1650:	53                   	push   %rbx
    1651:	48 83 ec 28          	sub    $0x28,%rsp
    1655:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    165c:	00 00 
    165e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1663:	31 c0                	xor    %eax,%eax
    1665:	48 89 e6             	mov    %rsp,%rsi
    1668:	e8 0e 09 00 00       	call   1f7b <read_six_numbers>
    166d:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    1671:	75 0a                	jne    167d <phase_2+0x32>
    1673:	48 89 e5             	mov    %rsp,%rbp
    1676:	bb 02 00 00 00       	mov    $0x2,%ebx
    167b:	eb 13                	jmp    1690 <phase_2+0x45>
    167d:	e8 b7 08 00 00       	call   1f39 <explode_bomb>
    1682:	eb ef                	jmp    1673 <phase_2+0x28>
    1684:	83 c3 01             	add    $0x1,%ebx
    1687:	48 83 c5 04          	add    $0x4,%rbp
    168b:	83 fb 07             	cmp    $0x7,%ebx
    168e:	74 12                	je     16a2 <phase_2+0x57>
    1690:	89 d8                	mov    %ebx,%eax
    1692:	0f af 45 00          	imul   0x0(%rbp),%eax
    1696:	39 45 04             	cmp    %eax,0x4(%rbp)
    1699:	74 e9                	je     1684 <phase_2+0x39>
    169b:	e8 99 08 00 00       	call   1f39 <explode_bomb>
    16a0:	eb e2                	jmp    1684 <phase_2+0x39>
    16a2:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    16a7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16ae:	00 00 
    16b0:	75 07                	jne    16b9 <phase_2+0x6e>
    16b2:	48 83 c4 28          	add    $0x28,%rsp
    16b6:	5b                   	pop    %rbx
    16b7:	5d                   	pop    %rbp
    16b8:	c3                   	ret    
    16b9:	e8 c2 fb ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000016be <phase_3>:
    16be:	f3 0f 1e fa          	endbr64 
    16c2:	48 83 ec 28          	sub    $0x28,%rsp
    16c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16cd:	00 00 
    16cf:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    16d4:	31 c0                	xor    %eax,%eax
    16d6:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    16db:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    16e0:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    16e5:	48 8d 35 ba 1a 00 00 	lea    0x1aba(%rip),%rsi        # 31a6 <_IO_stdin_used+0x1a6>
    16ec:	e8 3f fc ff ff       	call   1330 <__isoc99_sscanf@plt>
    16f1:	83 f8 02             	cmp    $0x2,%eax
    16f4:	7e 20                	jle    1716 <phase_3+0x58>
    16f6:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    16fb:	0f 87 0a 01 00 00    	ja     180b <phase_3+0x14d>
    1701:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1705:	48 8d 15 b4 1a 00 00 	lea    0x1ab4(%rip),%rdx        # 31c0 <_IO_stdin_used+0x1c0>
    170c:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1710:	48 01 d0             	add    %rdx,%rax
    1713:	3e ff e0             	notrack jmp *%rax
    1716:	e8 1e 08 00 00       	call   1f39 <explode_bomb>
    171b:	eb d9                	jmp    16f6 <phase_3+0x38>
    171d:	b8 6b 00 00 00       	mov    $0x6b,%eax
    1722:	83 7c 24 14 56       	cmpl   $0x56,0x14(%rsp)
    1727:	0f 84 e8 00 00 00    	je     1815 <phase_3+0x157>
    172d:	e8 07 08 00 00       	call   1f39 <explode_bomb>
    1732:	b8 6b 00 00 00       	mov    $0x6b,%eax
    1737:	e9 d9 00 00 00       	jmp    1815 <phase_3+0x157>
    173c:	b8 79 00 00 00       	mov    $0x79,%eax
    1741:	81 7c 24 14 db 00 00 	cmpl   $0xdb,0x14(%rsp)
    1748:	00 
    1749:	0f 84 c6 00 00 00    	je     1815 <phase_3+0x157>
    174f:	e8 e5 07 00 00       	call   1f39 <explode_bomb>
    1754:	b8 79 00 00 00       	mov    $0x79,%eax
    1759:	e9 b7 00 00 00       	jmp    1815 <phase_3+0x157>
    175e:	b8 65 00 00 00       	mov    $0x65,%eax
    1763:	81 7c 24 14 b0 01 00 	cmpl   $0x1b0,0x14(%rsp)
    176a:	00 
    176b:	0f 84 a4 00 00 00    	je     1815 <phase_3+0x157>
    1771:	e8 c3 07 00 00       	call   1f39 <explode_bomb>
    1776:	b8 65 00 00 00       	mov    $0x65,%eax
    177b:	e9 95 00 00 00       	jmp    1815 <phase_3+0x157>
    1780:	b8 62 00 00 00       	mov    $0x62,%eax
    1785:	81 7c 24 14 10 02 00 	cmpl   $0x210,0x14(%rsp)
    178c:	00 
    178d:	0f 84 82 00 00 00    	je     1815 <phase_3+0x157>
    1793:	e8 a1 07 00 00       	call   1f39 <explode_bomb>
    1798:	b8 62 00 00 00       	mov    $0x62,%eax
    179d:	eb 76                	jmp    1815 <phase_3+0x157>
    179f:	b8 64 00 00 00       	mov    $0x64,%eax
    17a4:	81 7c 24 14 00 03 00 	cmpl   $0x300,0x14(%rsp)
    17ab:	00 
    17ac:	74 67                	je     1815 <phase_3+0x157>
    17ae:	e8 86 07 00 00       	call   1f39 <explode_bomb>
    17b3:	b8 64 00 00 00       	mov    $0x64,%eax
    17b8:	eb 5b                	jmp    1815 <phase_3+0x157>
    17ba:	b8 63 00 00 00       	mov    $0x63,%eax
    17bf:	81 7c 24 14 e7 01 00 	cmpl   $0x1e7,0x14(%rsp)
    17c6:	00 
    17c7:	74 4c                	je     1815 <phase_3+0x157>
    17c9:	e8 6b 07 00 00       	call   1f39 <explode_bomb>
    17ce:	b8 63 00 00 00       	mov    $0x63,%eax
    17d3:	eb 40                	jmp    1815 <phase_3+0x157>
    17d5:	b8 70 00 00 00       	mov    $0x70,%eax
    17da:	81 7c 24 14 07 03 00 	cmpl   $0x307,0x14(%rsp)
    17e1:	00 
    17e2:	74 31                	je     1815 <phase_3+0x157>
    17e4:	e8 50 07 00 00       	call   1f39 <explode_bomb>
    17e9:	b8 70 00 00 00       	mov    $0x70,%eax
    17ee:	eb 25                	jmp    1815 <phase_3+0x157>
    17f0:	b8 6c 00 00 00       	mov    $0x6c,%eax
    17f5:	81 7c 24 14 b1 03 00 	cmpl   $0x3b1,0x14(%rsp)
    17fc:	00 
    17fd:	74 16                	je     1815 <phase_3+0x157>
    17ff:	e8 35 07 00 00       	call   1f39 <explode_bomb>
    1804:	b8 6c 00 00 00       	mov    $0x6c,%eax
    1809:	eb 0a                	jmp    1815 <phase_3+0x157>
    180b:	e8 29 07 00 00       	call   1f39 <explode_bomb>
    1810:	b8 75 00 00 00       	mov    $0x75,%eax
    1815:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    1819:	75 15                	jne    1830 <phase_3+0x172>
    181b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1820:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1827:	00 00 
    1829:	75 0c                	jne    1837 <phase_3+0x179>
    182b:	48 83 c4 28          	add    $0x28,%rsp
    182f:	c3                   	ret    
    1830:	e8 04 07 00 00       	call   1f39 <explode_bomb>
    1835:	eb e4                	jmp    181b <phase_3+0x15d>
    1837:	e8 44 fa ff ff       	call   1280 <__stack_chk_fail@plt>

000000000000183c <func4>:
    183c:	f3 0f 1e fa          	endbr64 
    1840:	b8 00 00 00 00       	mov    $0x0,%eax
    1845:	83 ff 01             	cmp    $0x1,%edi
    1848:	7e 3b                	jle    1885 <func4+0x49>
    184a:	41 54                	push   %r12
    184c:	55                   	push   %rbp
    184d:	53                   	push   %rbx
    184e:	89 fb                	mov    %edi,%ebx
    1850:	41 89 f4             	mov    %esi,%r12d
    1853:	89 f0                	mov    %esi,%eax
    1855:	83 ff 02             	cmp    $0x2,%edi
    1858:	74 26                	je     1880 <func4+0x44>
    185a:	8d 7f ff             	lea    -0x1(%rdi),%edi
    185d:	e8 da ff ff ff       	call   183c <func4>
    1862:	42 8d 2c 20          	lea    (%rax,%r12,1),%ebp
    1866:	8d 7b fe             	lea    -0x2(%rbx),%edi
    1869:	44 89 e6             	mov    %r12d,%esi
    186c:	e8 cb ff ff ff       	call   183c <func4>
    1871:	01 c5                	add    %eax,%ebp
    1873:	8d 7b fd             	lea    -0x3(%rbx),%edi
    1876:	44 89 e6             	mov    %r12d,%esi
    1879:	e8 be ff ff ff       	call   183c <func4>
    187e:	01 e8                	add    %ebp,%eax
    1880:	5b                   	pop    %rbx
    1881:	5d                   	pop    %rbp
    1882:	41 5c                	pop    %r12
    1884:	c3                   	ret    
    1885:	c3                   	ret    

0000000000001886 <phase_4>:
    1886:	f3 0f 1e fa          	endbr64 
    188a:	48 83 ec 18          	sub    $0x18,%rsp
    188e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1895:	00 00 
    1897:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    189c:	31 c0                	xor    %eax,%eax
    189e:	48 89 e1             	mov    %rsp,%rcx
    18a1:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    18a6:	48 8d 35 98 1b 00 00 	lea    0x1b98(%rip),%rsi        # 3445 <array.0+0x265>
    18ad:	e8 7e fa ff ff       	call   1330 <__isoc99_sscanf@plt>
    18b2:	83 f8 02             	cmp    $0x2,%eax
    18b5:	75 0b                	jne    18c2 <phase_4+0x3c>
    18b7:	8b 04 24             	mov    (%rsp),%eax
    18ba:	83 e8 02             	sub    $0x2,%eax
    18bd:	83 f8 02             	cmp    $0x2,%eax
    18c0:	76 05                	jbe    18c7 <phase_4+0x41>
    18c2:	e8 72 06 00 00       	call   1f39 <explode_bomb>
    18c7:	8b 34 24             	mov    (%rsp),%esi
    18ca:	bf 05 00 00 00       	mov    $0x5,%edi
    18cf:	e8 68 ff ff ff       	call   183c <func4>
    18d4:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    18d8:	75 15                	jne    18ef <phase_4+0x69>
    18da:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    18df:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    18e6:	00 00 
    18e8:	75 0c                	jne    18f6 <phase_4+0x70>
    18ea:	48 83 c4 18          	add    $0x18,%rsp
    18ee:	c3                   	ret    
    18ef:	e8 45 06 00 00       	call   1f39 <explode_bomb>
    18f4:	eb e4                	jmp    18da <phase_4+0x54>
    18f6:	e8 85 f9 ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000018fb <phase_5>:
    18fb:	f3 0f 1e fa          	endbr64 
    18ff:	48 83 ec 18          	sub    $0x18,%rsp
    1903:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    190a:	00 00 
    190c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1911:	31 c0                	xor    %eax,%eax
    1913:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1918:	48 89 e2             	mov    %rsp,%rdx
    191b:	48 8d 35 23 1b 00 00 	lea    0x1b23(%rip),%rsi        # 3445 <array.0+0x265>
    1922:	e8 09 fa ff ff       	call   1330 <__isoc99_sscanf@plt>
    1927:	83 f8 01             	cmp    $0x1,%eax
    192a:	7e 5a                	jle    1986 <phase_5+0x8b>
    192c:	8b 04 24             	mov    (%rsp),%eax
    192f:	83 e0 0f             	and    $0xf,%eax
    1932:	89 04 24             	mov    %eax,(%rsp)
    1935:	83 f8 0f             	cmp    $0xf,%eax
    1938:	74 32                	je     196c <phase_5+0x71>
    193a:	b9 00 00 00 00       	mov    $0x0,%ecx
    193f:	ba 00 00 00 00       	mov    $0x0,%edx
    1944:	48 8d 35 95 18 00 00 	lea    0x1895(%rip),%rsi        # 31e0 <array.0>
    194b:	83 c2 01             	add    $0x1,%edx
    194e:	48 98                	cltq   
    1950:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    1953:	01 c1                	add    %eax,%ecx
    1955:	83 f8 0f             	cmp    $0xf,%eax
    1958:	75 f1                	jne    194b <phase_5+0x50>
    195a:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    1961:	83 fa 0f             	cmp    $0xf,%edx
    1964:	75 06                	jne    196c <phase_5+0x71>
    1966:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    196a:	74 05                	je     1971 <phase_5+0x76>
    196c:	e8 c8 05 00 00       	call   1f39 <explode_bomb>
    1971:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1976:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    197d:	00 00 
    197f:	75 0c                	jne    198d <phase_5+0x92>
    1981:	48 83 c4 18          	add    $0x18,%rsp
    1985:	c3                   	ret    
    1986:	e8 ae 05 00 00       	call   1f39 <explode_bomb>
    198b:	eb 9f                	jmp    192c <phase_5+0x31>
    198d:	e8 ee f8 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001992 <phase_6>:
    1992:	f3 0f 1e fa          	endbr64 
    1996:	41 57                	push   %r15
    1998:	41 56                	push   %r14
    199a:	41 55                	push   %r13
    199c:	41 54                	push   %r12
    199e:	55                   	push   %rbp
    199f:	53                   	push   %rbx
    19a0:	48 83 ec 78          	sub    $0x78,%rsp
    19a4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    19ab:	00 00 
    19ad:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    19b2:	31 c0                	xor    %eax,%eax
    19b4:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    19b9:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
    19be:	4c 89 f6             	mov    %r14,%rsi
    19c1:	e8 b5 05 00 00       	call   1f7b <read_six_numbers>
    19c6:	4d 89 f4             	mov    %r14,%r12
    19c9:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    19cf:	4d 89 f5             	mov    %r14,%r13
    19d2:	e9 c6 00 00 00       	jmp    1a9d <phase_6+0x10b>
    19d7:	e8 5d 05 00 00       	call   1f39 <explode_bomb>
    19dc:	e9 ce 00 00 00       	jmp    1aaf <phase_6+0x11d>
    19e1:	48 83 c3 01          	add    $0x1,%rbx
    19e5:	83 fb 05             	cmp    $0x5,%ebx
    19e8:	0f 8f a7 00 00 00    	jg     1a95 <phase_6+0x103>
    19ee:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    19f3:	39 45 00             	cmp    %eax,0x0(%rbp)
    19f6:	75 e9                	jne    19e1 <phase_6+0x4f>
    19f8:	e8 3c 05 00 00       	call   1f39 <explode_bomb>
    19fd:	eb e2                	jmp    19e1 <phase_6+0x4f>
    19ff:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    1a04:	48 83 c2 18          	add    $0x18,%rdx
    1a08:	b9 07 00 00 00       	mov    $0x7,%ecx
    1a0d:	89 c8                	mov    %ecx,%eax
    1a0f:	41 2b 04 24          	sub    (%r12),%eax
    1a13:	41 89 04 24          	mov    %eax,(%r12)
    1a17:	49 83 c4 04          	add    $0x4,%r12
    1a1b:	4c 39 e2             	cmp    %r12,%rdx
    1a1e:	75 ed                	jne    1a0d <phase_6+0x7b>
    1a20:	be 00 00 00 00       	mov    $0x0,%esi
    1a25:	8b 4c b4 10          	mov    0x10(%rsp,%rsi,4),%ecx
    1a29:	b8 01 00 00 00       	mov    $0x1,%eax
    1a2e:	48 8d 15 eb 37 00 00 	lea    0x37eb(%rip),%rdx        # 5220 <node1>
    1a35:	83 f9 01             	cmp    $0x1,%ecx
    1a38:	7e 0b                	jle    1a45 <phase_6+0xb3>
    1a3a:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1a3e:	83 c0 01             	add    $0x1,%eax
    1a41:	39 c8                	cmp    %ecx,%eax
    1a43:	75 f5                	jne    1a3a <phase_6+0xa8>
    1a45:	48 89 54 f4 30       	mov    %rdx,0x30(%rsp,%rsi,8)
    1a4a:	48 83 c6 01          	add    $0x1,%rsi
    1a4e:	48 83 fe 06          	cmp    $0x6,%rsi
    1a52:	75 d1                	jne    1a25 <phase_6+0x93>
    1a54:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    1a59:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1a5e:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1a62:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1a67:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1a6b:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1a70:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1a74:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
    1a79:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1a7d:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1a82:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1a86:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1a8d:	00 
    1a8e:	bd 05 00 00 00       	mov    $0x5,%ebp
    1a93:	eb 35                	jmp    1aca <phase_6+0x138>
    1a95:	49 83 c7 01          	add    $0x1,%r15
    1a99:	49 83 c6 04          	add    $0x4,%r14
    1a9d:	4c 89 f5             	mov    %r14,%rbp
    1aa0:	41 8b 06             	mov    (%r14),%eax
    1aa3:	83 e8 01             	sub    $0x1,%eax
    1aa6:	83 f8 05             	cmp    $0x5,%eax
    1aa9:	0f 87 28 ff ff ff    	ja     19d7 <phase_6+0x45>
    1aaf:	41 83 ff 05          	cmp    $0x5,%r15d
    1ab3:	0f 8f 46 ff ff ff    	jg     19ff <phase_6+0x6d>
    1ab9:	4c 89 fb             	mov    %r15,%rbx
    1abc:	e9 2d ff ff ff       	jmp    19ee <phase_6+0x5c>
    1ac1:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1ac5:	83 ed 01             	sub    $0x1,%ebp
    1ac8:	74 11                	je     1adb <phase_6+0x149>
    1aca:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1ace:	8b 00                	mov    (%rax),%eax
    1ad0:	39 03                	cmp    %eax,(%rbx)
    1ad2:	7d ed                	jge    1ac1 <phase_6+0x12f>
    1ad4:	e8 60 04 00 00       	call   1f39 <explode_bomb>
    1ad9:	eb e6                	jmp    1ac1 <phase_6+0x12f>
    1adb:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1ae0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ae7:	00 00 
    1ae9:	75 0f                	jne    1afa <phase_6+0x168>
    1aeb:	48 83 c4 78          	add    $0x78,%rsp
    1aef:	5b                   	pop    %rbx
    1af0:	5d                   	pop    %rbp
    1af1:	41 5c                	pop    %r12
    1af3:	41 5d                	pop    %r13
    1af5:	41 5e                	pop    %r14
    1af7:	41 5f                	pop    %r15
    1af9:	c3                   	ret    
    1afa:	e8 81 f7 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001aff <fun7>:
    1aff:	f3 0f 1e fa          	endbr64 
    1b03:	48 85 ff             	test   %rdi,%rdi
    1b06:	74 32                	je     1b3a <fun7+0x3b>
    1b08:	48 83 ec 08          	sub    $0x8,%rsp
    1b0c:	8b 17                	mov    (%rdi),%edx
    1b0e:	39 f2                	cmp    %esi,%edx
    1b10:	7f 0c                	jg     1b1e <fun7+0x1f>
    1b12:	b8 00 00 00 00       	mov    $0x0,%eax
    1b17:	75 12                	jne    1b2b <fun7+0x2c>
    1b19:	48 83 c4 08          	add    $0x8,%rsp
    1b1d:	c3                   	ret    
    1b1e:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1b22:	e8 d8 ff ff ff       	call   1aff <fun7>
    1b27:	01 c0                	add    %eax,%eax
    1b29:	eb ee                	jmp    1b19 <fun7+0x1a>
    1b2b:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1b2f:	e8 cb ff ff ff       	call   1aff <fun7>
    1b34:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1b38:	eb df                	jmp    1b19 <fun7+0x1a>
    1b3a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1b3f:	c3                   	ret    

0000000000001b40 <secret_phase>:
    1b40:	f3 0f 1e fa          	endbr64 
    1b44:	53                   	push   %rbx
    1b45:	e8 76 04 00 00       	call   1fc0 <read_line>
    1b4a:	48 89 c7             	mov    %rax,%rdi
    1b4d:	ba 0a 00 00 00       	mov    $0xa,%edx
    1b52:	be 00 00 00 00       	mov    $0x0,%esi
    1b57:	e8 b4 f7 ff ff       	call   1310 <strtol@plt>
    1b5c:	89 c3                	mov    %eax,%ebx
    1b5e:	83 e8 20             	sub    $0x20,%eax
    1b61:	83 f8 36             	cmp    $0x36,%eax
    1b64:	77 26                	ja     1b8c <secret_phase+0x4c>
    1b66:	89 de                	mov    %ebx,%esi
    1b68:	48 8d 3d d1 35 00 00 	lea    0x35d1(%rip),%rdi        # 5140 <n1>
    1b6f:	e8 8b ff ff ff       	call   1aff <fun7>
    1b74:	83 f8 07             	cmp    $0x7,%eax
    1b77:	75 1a                	jne    1b93 <secret_phase+0x53>
    1b79:	48 8d 3d 00 16 00 00 	lea    0x1600(%rip),%rdi        # 3180 <_IO_stdin_used+0x180>
    1b80:	e8 cb f6 ff ff       	call   1250 <puts@plt>
    1b85:	e8 6e 05 00 00       	call   20f8 <phase_defused>
    1b8a:	5b                   	pop    %rbx
    1b8b:	c3                   	ret    
    1b8c:	e8 a8 03 00 00       	call   1f39 <explode_bomb>
    1b91:	eb d3                	jmp    1b66 <secret_phase+0x26>
    1b93:	e8 a1 03 00 00       	call   1f39 <explode_bomb>
    1b98:	eb df                	jmp    1b79 <secret_phase+0x39>

0000000000001b9a <sig_handler>:
    1b9a:	f3 0f 1e fa          	endbr64 
    1b9e:	50                   	push   %rax
    1b9f:	58                   	pop    %rax
    1ba0:	48 83 ec 08          	sub    $0x8,%rsp
    1ba4:	48 8d 3d 75 16 00 00 	lea    0x1675(%rip),%rdi        # 3220 <array.0+0x40>
    1bab:	e8 a0 f6 ff ff       	call   1250 <puts@plt>
    1bb0:	bf 03 00 00 00       	mov    $0x3,%edi
    1bb5:	e8 e6 f7 ff ff       	call   13a0 <sleep@plt>
    1bba:	48 8d 35 00 18 00 00 	lea    0x1800(%rip),%rsi        # 33c1 <array.0+0x1e1>
    1bc1:	bf 01 00 00 00       	mov    $0x1,%edi
    1bc6:	b8 00 00 00 00       	mov    $0x0,%eax
    1bcb:	e8 70 f7 ff ff       	call   1340 <__printf_chk@plt>
    1bd0:	48 8b 3d a9 3a 00 00 	mov    0x3aa9(%rip),%rdi        # 5680 <stdout@GLIBC_2.2.5>
    1bd7:	e8 44 f7 ff ff       	call   1320 <fflush@plt>
    1bdc:	bf 01 00 00 00       	mov    $0x1,%edi
    1be1:	e8 ba f7 ff ff       	call   13a0 <sleep@plt>
    1be6:	48 8d 3d dc 17 00 00 	lea    0x17dc(%rip),%rdi        # 33c9 <array.0+0x1e9>
    1bed:	e8 5e f6 ff ff       	call   1250 <puts@plt>
    1bf2:	bf 10 00 00 00       	mov    $0x10,%edi
    1bf7:	e8 74 f7 ff ff       	call   1370 <exit@plt>

0000000000001bfc <invalid_phase>:
    1bfc:	f3 0f 1e fa          	endbr64 
    1c00:	50                   	push   %rax
    1c01:	58                   	pop    %rax
    1c02:	48 83 ec 08          	sub    $0x8,%rsp
    1c06:	48 89 fa             	mov    %rdi,%rdx
    1c09:	48 8d 35 c1 17 00 00 	lea    0x17c1(%rip),%rsi        # 33d1 <array.0+0x1f1>
    1c10:	bf 01 00 00 00       	mov    $0x1,%edi
    1c15:	b8 00 00 00 00       	mov    $0x0,%eax
    1c1a:	e8 21 f7 ff ff       	call   1340 <__printf_chk@plt>
    1c1f:	bf 08 00 00 00       	mov    $0x8,%edi
    1c24:	e8 47 f7 ff ff       	call   1370 <exit@plt>

0000000000001c29 <string_length>:
    1c29:	f3 0f 1e fa          	endbr64 
    1c2d:	80 3f 00             	cmpb   $0x0,(%rdi)
    1c30:	74 12                	je     1c44 <string_length+0x1b>
    1c32:	b8 00 00 00 00       	mov    $0x0,%eax
    1c37:	48 83 c7 01          	add    $0x1,%rdi
    1c3b:	83 c0 01             	add    $0x1,%eax
    1c3e:	80 3f 00             	cmpb   $0x0,(%rdi)
    1c41:	75 f4                	jne    1c37 <string_length+0xe>
    1c43:	c3                   	ret    
    1c44:	b8 00 00 00 00       	mov    $0x0,%eax
    1c49:	c3                   	ret    

0000000000001c4a <strings_not_equal>:
    1c4a:	f3 0f 1e fa          	endbr64 
    1c4e:	41 54                	push   %r12
    1c50:	55                   	push   %rbp
    1c51:	53                   	push   %rbx
    1c52:	48 89 fb             	mov    %rdi,%rbx
    1c55:	48 89 f5             	mov    %rsi,%rbp
    1c58:	e8 cc ff ff ff       	call   1c29 <string_length>
    1c5d:	41 89 c4             	mov    %eax,%r12d
    1c60:	48 89 ef             	mov    %rbp,%rdi
    1c63:	e8 c1 ff ff ff       	call   1c29 <string_length>
    1c68:	89 c2                	mov    %eax,%edx
    1c6a:	b8 01 00 00 00       	mov    $0x1,%eax
    1c6f:	41 39 d4             	cmp    %edx,%r12d
    1c72:	75 31                	jne    1ca5 <strings_not_equal+0x5b>
    1c74:	0f b6 13             	movzbl (%rbx),%edx
    1c77:	84 d2                	test   %dl,%dl
    1c79:	74 1e                	je     1c99 <strings_not_equal+0x4f>
    1c7b:	b8 00 00 00 00       	mov    $0x0,%eax
    1c80:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1c84:	75 1a                	jne    1ca0 <strings_not_equal+0x56>
    1c86:	48 83 c0 01          	add    $0x1,%rax
    1c8a:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1c8e:	84 d2                	test   %dl,%dl
    1c90:	75 ee                	jne    1c80 <strings_not_equal+0x36>
    1c92:	b8 00 00 00 00       	mov    $0x0,%eax
    1c97:	eb 0c                	jmp    1ca5 <strings_not_equal+0x5b>
    1c99:	b8 00 00 00 00       	mov    $0x0,%eax
    1c9e:	eb 05                	jmp    1ca5 <strings_not_equal+0x5b>
    1ca0:	b8 01 00 00 00       	mov    $0x1,%eax
    1ca5:	5b                   	pop    %rbx
    1ca6:	5d                   	pop    %rbp
    1ca7:	41 5c                	pop    %r12
    1ca9:	c3                   	ret    

0000000000001caa <initialize_bomb>:
    1caa:	f3 0f 1e fa          	endbr64 
    1cae:	55                   	push   %rbp
    1caf:	53                   	push   %rbx
    1cb0:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1cb7:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1cbc:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1cc3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1cc8:	48 83 ec 58          	sub    $0x58,%rsp
    1ccc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1cd3:	00 00 
    1cd5:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1cdc:	00 
    1cdd:	31 c0                	xor    %eax,%eax
    1cdf:	48 8d 35 b4 fe ff ff 	lea    -0x14c(%rip),%rsi        # 1b9a <sig_handler>
    1ce6:	bf 02 00 00 00       	mov    $0x2,%edi
    1ceb:	e8 f0 f5 ff ff       	call   12e0 <signal@plt>
    1cf0:	48 89 e7             	mov    %rsp,%rdi
    1cf3:	be 40 00 00 00       	mov    $0x40,%esi
    1cf8:	e8 63 f6 ff ff       	call   1360 <gethostname@plt>
    1cfd:	85 c0                	test   %eax,%eax
    1cff:	75 45                	jne    1d46 <initialize_bomb+0x9c>
    1d01:	48 8b 3d 78 35 00 00 	mov    0x3578(%rip),%rdi        # 5280 <host_table>
    1d08:	48 8d 1d 79 35 00 00 	lea    0x3579(%rip),%rbx        # 5288 <host_table+0x8>
    1d0f:	48 89 e5             	mov    %rsp,%rbp
    1d12:	48 85 ff             	test   %rdi,%rdi
    1d15:	74 19                	je     1d30 <initialize_bomb+0x86>
    1d17:	48 89 ee             	mov    %rbp,%rsi
    1d1a:	e8 01 f5 ff ff       	call   1220 <strcasecmp@plt>
    1d1f:	85 c0                	test   %eax,%eax
    1d21:	74 5e                	je     1d81 <initialize_bomb+0xd7>
    1d23:	48 83 c3 08          	add    $0x8,%rbx
    1d27:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1d2b:	48 85 ff             	test   %rdi,%rdi
    1d2e:	75 e7                	jne    1d17 <initialize_bomb+0x6d>
    1d30:	48 8d 3d 59 15 00 00 	lea    0x1559(%rip),%rdi        # 3290 <array.0+0xb0>
    1d37:	e8 14 f5 ff ff       	call   1250 <puts@plt>
    1d3c:	bf 08 00 00 00       	mov    $0x8,%edi
    1d41:	e8 2a f6 ff ff       	call   1370 <exit@plt>
    1d46:	48 8d 3d 0b 15 00 00 	lea    0x150b(%rip),%rdi        # 3258 <array.0+0x78>
    1d4d:	e8 fe f4 ff ff       	call   1250 <puts@plt>
    1d52:	bf 08 00 00 00       	mov    $0x8,%edi
    1d57:	e8 14 f6 ff ff       	call   1370 <exit@plt>
    1d5c:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    1d61:	48 8d 35 7a 16 00 00 	lea    0x167a(%rip),%rsi        # 33e2 <array.0+0x202>
    1d68:	bf 01 00 00 00       	mov    $0x1,%edi
    1d6d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d72:	e8 c9 f5 ff ff       	call   1340 <__printf_chk@plt>
    1d77:	bf 08 00 00 00       	mov    $0x8,%edi
    1d7c:	e8 ef f5 ff ff       	call   1370 <exit@plt>
    1d81:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1d86:	e8 6b 0d 00 00       	call   2af6 <init_driver>
    1d8b:	85 c0                	test   %eax,%eax
    1d8d:	78 cd                	js     1d5c <initialize_bomb+0xb2>
    1d8f:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1d96:	00 
    1d97:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1d9e:	00 00 
    1da0:	75 0a                	jne    1dac <initialize_bomb+0x102>
    1da2:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1da9:	5b                   	pop    %rbx
    1daa:	5d                   	pop    %rbp
    1dab:	c3                   	ret    
    1dac:	e8 cf f4 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001db1 <initialize_bomb_solve>:
    1db1:	f3 0f 1e fa          	endbr64 
    1db5:	c3                   	ret    

0000000000001db6 <blank_line>:
    1db6:	f3 0f 1e fa          	endbr64 
    1dba:	55                   	push   %rbp
    1dbb:	53                   	push   %rbx
    1dbc:	48 83 ec 08          	sub    $0x8,%rsp
    1dc0:	48 89 fd             	mov    %rdi,%rbp
    1dc3:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1dc7:	84 db                	test   %bl,%bl
    1dc9:	74 1e                	je     1de9 <blank_line+0x33>
    1dcb:	e8 e0 f5 ff ff       	call   13b0 <__ctype_b_loc@plt>
    1dd0:	48 83 c5 01          	add    $0x1,%rbp
    1dd4:	48 0f be db          	movsbq %bl,%rbx
    1dd8:	48 8b 00             	mov    (%rax),%rax
    1ddb:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1de0:	75 e1                	jne    1dc3 <blank_line+0xd>
    1de2:	b8 00 00 00 00       	mov    $0x0,%eax
    1de7:	eb 05                	jmp    1dee <blank_line+0x38>
    1de9:	b8 01 00 00 00       	mov    $0x1,%eax
    1dee:	48 83 c4 08          	add    $0x8,%rsp
    1df2:	5b                   	pop    %rbx
    1df3:	5d                   	pop    %rbp
    1df4:	c3                   	ret    

0000000000001df5 <skip>:
    1df5:	f3 0f 1e fa          	endbr64 
    1df9:	55                   	push   %rbp
    1dfa:	53                   	push   %rbx
    1dfb:	48 83 ec 08          	sub    $0x8,%rsp
    1dff:	48 8d 2d 1a 39 00 00 	lea    0x391a(%rip),%rbp        # 5720 <input_strings>
    1e06:	48 63 05 03 39 00 00 	movslq 0x3903(%rip),%rax        # 5710 <num_input_strings>
    1e0d:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1e11:	48 c1 e7 04          	shl    $0x4,%rdi
    1e15:	48 01 ef             	add    %rbp,%rdi
    1e18:	48 8b 15 91 38 00 00 	mov    0x3891(%rip),%rdx        # 56b0 <infile>
    1e1f:	be 50 00 00 00       	mov    $0x50,%esi
    1e24:	e8 97 f4 ff ff       	call   12c0 <fgets@plt>
    1e29:	48 89 c3             	mov    %rax,%rbx
    1e2c:	48 85 c0             	test   %rax,%rax
    1e2f:	74 0c                	je     1e3d <skip+0x48>
    1e31:	48 89 c7             	mov    %rax,%rdi
    1e34:	e8 7d ff ff ff       	call   1db6 <blank_line>
    1e39:	85 c0                	test   %eax,%eax
    1e3b:	75 c9                	jne    1e06 <skip+0x11>
    1e3d:	48 89 d8             	mov    %rbx,%rax
    1e40:	48 83 c4 08          	add    $0x8,%rsp
    1e44:	5b                   	pop    %rbx
    1e45:	5d                   	pop    %rbp
    1e46:	c3                   	ret    

0000000000001e47 <send_msg>:
    1e47:	f3 0f 1e fa          	endbr64 
    1e4b:	53                   	push   %rbx
    1e4c:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    1e53:	ff 
    1e54:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1e5b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1e60:	4c 39 dc             	cmp    %r11,%rsp
    1e63:	75 ef                	jne    1e54 <send_msg+0xd>
    1e65:	48 83 ec 10          	sub    $0x10,%rsp
    1e69:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e70:	00 00 
    1e72:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1e79:	00 
    1e7a:	31 c0                	xor    %eax,%eax
    1e7c:	8b 15 8e 38 00 00    	mov    0x388e(%rip),%edx        # 5710 <num_input_strings>
    1e82:	8d 42 ff             	lea    -0x1(%rdx),%eax
    1e85:	48 98                	cltq   
    1e87:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1e8b:	48 c1 e0 04          	shl    $0x4,%rax
    1e8f:	48 8d 0d 8a 38 00 00 	lea    0x388a(%rip),%rcx        # 5720 <input_strings>
    1e96:	48 01 c8             	add    %rcx,%rax
    1e99:	85 ff                	test   %edi,%edi
    1e9b:	4c 8d 0d 5a 15 00 00 	lea    0x155a(%rip),%r9        # 33fc <array.0+0x21c>
    1ea2:	48 8d 0d 5b 15 00 00 	lea    0x155b(%rip),%rcx        # 3404 <array.0+0x224>
    1ea9:	4c 0f 44 c9          	cmove  %rcx,%r9
    1ead:	48 89 e3             	mov    %rsp,%rbx
    1eb0:	50                   	push   %rax
    1eb1:	52                   	push   %rdx
    1eb2:	44 8b 05 83 32 00 00 	mov    0x3283(%rip),%r8d        # 513c <bomb_id>
    1eb9:	48 8d 0d 4d 15 00 00 	lea    0x154d(%rip),%rcx        # 340d <array.0+0x22d>
    1ec0:	ba 00 20 00 00       	mov    $0x2000,%edx
    1ec5:	be 01 00 00 00       	mov    $0x1,%esi
    1eca:	48 89 df             	mov    %rbx,%rdi
    1ecd:	b8 00 00 00 00       	mov    $0x0,%eax
    1ed2:	e8 e9 f4 ff ff       	call   13c0 <__sprintf_chk@plt>
    1ed7:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1ede:	00 
    1edf:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ee4:	48 89 da             	mov    %rbx,%rdx
    1ee7:	48 8d 35 32 32 00 00 	lea    0x3232(%rip),%rsi        # 5120 <user_password>
    1eee:	48 8d 3d 40 32 00 00 	lea    0x3240(%rip),%rdi        # 5135 <userid>
    1ef5:	e8 f1 0d 00 00       	call   2ceb <driver_post>
    1efa:	48 89 dc             	mov    %rbx,%rsp
    1efd:	85 c0                	test   %eax,%eax
    1eff:	78 1c                	js     1f1d <send_msg+0xd6>
    1f01:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1f08:	00 
    1f09:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1f10:	00 00 
    1f12:	75 20                	jne    1f34 <send_msg+0xed>
    1f14:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1f1b:	5b                   	pop    %rbx
    1f1c:	c3                   	ret    
    1f1d:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1f24:	00 
    1f25:	e8 26 f3 ff ff       	call   1250 <puts@plt>
    1f2a:	bf 00 00 00 00       	mov    $0x0,%edi
    1f2f:	e8 3c f4 ff ff       	call   1370 <exit@plt>
    1f34:	e8 47 f3 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000001f39 <explode_bomb>:
    1f39:	f3 0f 1e fa          	endbr64 
    1f3d:	50                   	push   %rax
    1f3e:	58                   	pop    %rax
    1f3f:	48 83 ec 08          	sub    $0x8,%rsp
    1f43:	48 8d 3d cf 14 00 00 	lea    0x14cf(%rip),%rdi        # 3419 <array.0+0x239>
    1f4a:	e8 01 f3 ff ff       	call   1250 <puts@plt>
    1f4f:	48 8d 3d cc 14 00 00 	lea    0x14cc(%rip),%rdi        # 3422 <array.0+0x242>
    1f56:	e8 f5 f2 ff ff       	call   1250 <puts@plt>
    1f5b:	bf 00 00 00 00       	mov    $0x0,%edi
    1f60:	e8 e2 fe ff ff       	call   1e47 <send_msg>
    1f65:	48 8d 3d 5c 13 00 00 	lea    0x135c(%rip),%rdi        # 32c8 <array.0+0xe8>
    1f6c:	e8 df f2 ff ff       	call   1250 <puts@plt>
    1f71:	bf 08 00 00 00       	mov    $0x8,%edi
    1f76:	e8 f5 f3 ff ff       	call   1370 <exit@plt>

0000000000001f7b <read_six_numbers>:
    1f7b:	f3 0f 1e fa          	endbr64 
    1f7f:	48 83 ec 08          	sub    $0x8,%rsp
    1f83:	48 89 f2             	mov    %rsi,%rdx
    1f86:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1f8a:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1f8e:	50                   	push   %rax
    1f8f:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1f93:	50                   	push   %rax
    1f94:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1f98:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1f9c:	48 8d 35 96 14 00 00 	lea    0x1496(%rip),%rsi        # 3439 <array.0+0x259>
    1fa3:	b8 00 00 00 00       	mov    $0x0,%eax
    1fa8:	e8 83 f3 ff ff       	call   1330 <__isoc99_sscanf@plt>
    1fad:	48 83 c4 10          	add    $0x10,%rsp
    1fb1:	83 f8 05             	cmp    $0x5,%eax
    1fb4:	7e 05                	jle    1fbb <read_six_numbers+0x40>
    1fb6:	48 83 c4 08          	add    $0x8,%rsp
    1fba:	c3                   	ret    
    1fbb:	e8 79 ff ff ff       	call   1f39 <explode_bomb>

0000000000001fc0 <read_line>:
    1fc0:	f3 0f 1e fa          	endbr64 
    1fc4:	55                   	push   %rbp
    1fc5:	53                   	push   %rbx
    1fc6:	48 83 ec 08          	sub    $0x8,%rsp
    1fca:	b8 00 00 00 00       	mov    $0x0,%eax
    1fcf:	e8 21 fe ff ff       	call   1df5 <skip>
    1fd4:	48 85 c0             	test   %rax,%rax
    1fd7:	74 5d                	je     2036 <read_line+0x76>
    1fd9:	8b 2d 31 37 00 00    	mov    0x3731(%rip),%ebp        # 5710 <num_input_strings>
    1fdf:	48 63 c5             	movslq %ebp,%rax
    1fe2:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1fe6:	48 c1 e3 04          	shl    $0x4,%rbx
    1fea:	48 8d 05 2f 37 00 00 	lea    0x372f(%rip),%rax        # 5720 <input_strings>
    1ff1:	48 01 c3             	add    %rax,%rbx
    1ff4:	48 89 df             	mov    %rbx,%rdi
    1ff7:	e8 74 f2 ff ff       	call   1270 <strlen@plt>
    1ffc:	83 f8 4e             	cmp    $0x4e,%eax
    1fff:	0f 8f a9 00 00 00    	jg     20ae <read_line+0xee>
    2005:	83 e8 01             	sub    $0x1,%eax
    2008:	48 98                	cltq   
    200a:	48 63 d5             	movslq %ebp,%rdx
    200d:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    2011:	48 c1 e1 04          	shl    $0x4,%rcx
    2015:	48 8d 15 04 37 00 00 	lea    0x3704(%rip),%rdx        # 5720 <input_strings>
    201c:	48 01 ca             	add    %rcx,%rdx
    201f:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    2023:	83 c5 01             	add    $0x1,%ebp
    2026:	89 2d e4 36 00 00    	mov    %ebp,0x36e4(%rip)        # 5710 <num_input_strings>
    202c:	48 89 d8             	mov    %rbx,%rax
    202f:	48 83 c4 08          	add    $0x8,%rsp
    2033:	5b                   	pop    %rbx
    2034:	5d                   	pop    %rbp
    2035:	c3                   	ret    
    2036:	48 8b 05 53 36 00 00 	mov    0x3653(%rip),%rax        # 5690 <stdin@GLIBC_2.2.5>
    203d:	48 39 05 6c 36 00 00 	cmp    %rax,0x366c(%rip)        # 56b0 <infile>
    2044:	74 1b                	je     2061 <read_line+0xa1>
    2046:	48 8d 3d 1c 14 00 00 	lea    0x141c(%rip),%rdi        # 3469 <array.0+0x289>
    204d:	e8 be f1 ff ff       	call   1210 <getenv@plt>
    2052:	48 85 c0             	test   %rax,%rax
    2055:	74 20                	je     2077 <read_line+0xb7>
    2057:	bf 00 00 00 00       	mov    $0x0,%edi
    205c:	e8 0f f3 ff ff       	call   1370 <exit@plt>
    2061:	48 8d 3d e3 13 00 00 	lea    0x13e3(%rip),%rdi        # 344b <array.0+0x26b>
    2068:	e8 e3 f1 ff ff       	call   1250 <puts@plt>
    206d:	bf 08 00 00 00       	mov    $0x8,%edi
    2072:	e8 f9 f2 ff ff       	call   1370 <exit@plt>
    2077:	48 8b 05 12 36 00 00 	mov    0x3612(%rip),%rax        # 5690 <stdin@GLIBC_2.2.5>
    207e:	48 89 05 2b 36 00 00 	mov    %rax,0x362b(%rip)        # 56b0 <infile>
    2085:	b8 00 00 00 00       	mov    $0x0,%eax
    208a:	e8 66 fd ff ff       	call   1df5 <skip>
    208f:	48 85 c0             	test   %rax,%rax
    2092:	0f 85 41 ff ff ff    	jne    1fd9 <read_line+0x19>
    2098:	48 8d 3d ac 13 00 00 	lea    0x13ac(%rip),%rdi        # 344b <array.0+0x26b>
    209f:	e8 ac f1 ff ff       	call   1250 <puts@plt>
    20a4:	bf 00 00 00 00       	mov    $0x0,%edi
    20a9:	e8 c2 f2 ff ff       	call   1370 <exit@plt>
    20ae:	48 8d 3d bf 13 00 00 	lea    0x13bf(%rip),%rdi        # 3474 <array.0+0x294>
    20b5:	e8 96 f1 ff ff       	call   1250 <puts@plt>
    20ba:	8b 05 50 36 00 00    	mov    0x3650(%rip),%eax        # 5710 <num_input_strings>
    20c0:	8d 50 01             	lea    0x1(%rax),%edx
    20c3:	89 15 47 36 00 00    	mov    %edx,0x3647(%rip)        # 5710 <num_input_strings>
    20c9:	48 98                	cltq   
    20cb:	48 6b c0 50          	imul   $0x50,%rax,%rax
    20cf:	48 8d 15 4a 36 00 00 	lea    0x364a(%rip),%rdx        # 5720 <input_strings>
    20d6:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    20dd:	75 6e 63 
    20e0:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    20e7:	2a 2a 00 
    20ea:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    20ee:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    20f3:	e8 41 fe ff ff       	call   1f39 <explode_bomb>

00000000000020f8 <phase_defused>:
    20f8:	f3 0f 1e fa          	endbr64 
    20fc:	48 83 ec 78          	sub    $0x78,%rsp
    2100:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2107:	00 00 
    2109:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    210e:	31 c0                	xor    %eax,%eax
    2110:	bf 01 00 00 00       	mov    $0x1,%edi
    2115:	e8 2d fd ff ff       	call   1e47 <send_msg>
    211a:	83 3d ef 35 00 00 06 	cmpl   $0x6,0x35ef(%rip)        # 5710 <num_input_strings>
    2121:	74 19                	je     213c <phase_defused+0x44>
    2123:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    2128:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    212f:	00 00 
    2131:	0f 85 84 00 00 00    	jne    21bb <phase_defused+0xc3>
    2137:	48 83 c4 78          	add    $0x78,%rsp
    213b:	c3                   	ret    
    213c:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    2141:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    2146:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    214b:	48 8d 35 3d 13 00 00 	lea    0x133d(%rip),%rsi        # 348f <array.0+0x2af>
    2152:	48 8d 3d b7 36 00 00 	lea    0x36b7(%rip),%rdi        # 5810 <input_strings+0xf0>
    2159:	b8 00 00 00 00       	mov    $0x0,%eax
    215e:	e8 cd f1 ff ff       	call   1330 <__isoc99_sscanf@plt>
    2163:	83 f8 03             	cmp    $0x3,%eax
    2166:	74 1a                	je     2182 <phase_defused+0x8a>
    2168:	48 8d 3d e1 11 00 00 	lea    0x11e1(%rip),%rdi        # 3350 <array.0+0x170>
    216f:	e8 dc f0 ff ff       	call   1250 <puts@plt>
    2174:	48 8d 3d 05 12 00 00 	lea    0x1205(%rip),%rdi        # 3380 <array.0+0x1a0>
    217b:	e8 d0 f0 ff ff       	call   1250 <puts@plt>
    2180:	eb a1                	jmp    2123 <phase_defused+0x2b>
    2182:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2187:	48 8d 35 0a 13 00 00 	lea    0x130a(%rip),%rsi        # 3498 <array.0+0x2b8>
    218e:	e8 b7 fa ff ff       	call   1c4a <strings_not_equal>
    2193:	85 c0                	test   %eax,%eax
    2195:	75 d1                	jne    2168 <phase_defused+0x70>
    2197:	48 8d 3d 52 11 00 00 	lea    0x1152(%rip),%rdi        # 32f0 <array.0+0x110>
    219e:	e8 ad f0 ff ff       	call   1250 <puts@plt>
    21a3:	48 8d 3d 6e 11 00 00 	lea    0x116e(%rip),%rdi        # 3318 <array.0+0x138>
    21aa:	e8 a1 f0 ff ff       	call   1250 <puts@plt>
    21af:	b8 00 00 00 00       	mov    $0x0,%eax
    21b4:	e8 87 f9 ff ff       	call   1b40 <secret_phase>
    21b9:	eb ad                	jmp    2168 <phase_defused+0x70>
    21bb:	e8 c0 f0 ff ff       	call   1280 <__stack_chk_fail@plt>

00000000000021c0 <sigalrm_handler>:
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	50                   	push   %rax
    21c5:	58                   	pop    %rax
    21c6:	48 83 ec 08          	sub    $0x8,%rsp
    21ca:	b9 00 00 00 00       	mov    $0x0,%ecx
    21cf:	48 8d 15 22 13 00 00 	lea    0x1322(%rip),%rdx        # 34f8 <array.0+0x318>
    21d6:	be 01 00 00 00       	mov    $0x1,%esi
    21db:	48 8b 3d be 34 00 00 	mov    0x34be(%rip),%rdi        # 56a0 <stderr@GLIBC_2.2.5>
    21e2:	b8 00 00 00 00       	mov    $0x0,%eax
    21e7:	e8 a4 f1 ff ff       	call   1390 <__fprintf_chk@plt>
    21ec:	bf 01 00 00 00       	mov    $0x1,%edi
    21f1:	e8 7a f1 ff ff       	call   1370 <exit@plt>

00000000000021f6 <rio_readlineb>:
    21f6:	41 56                	push   %r14
    21f8:	41 55                	push   %r13
    21fa:	41 54                	push   %r12
    21fc:	55                   	push   %rbp
    21fd:	53                   	push   %rbx
    21fe:	49 89 f4             	mov    %rsi,%r12
    2201:	48 83 fa 01          	cmp    $0x1,%rdx
    2205:	0f 86 92 00 00 00    	jbe    229d <rio_readlineb+0xa7>
    220b:	48 89 fb             	mov    %rdi,%rbx
    220e:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    2213:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2219:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    221d:	eb 56                	jmp    2275 <rio_readlineb+0x7f>
    221f:	e8 0c f0 ff ff       	call   1230 <__errno_location@plt>
    2224:	83 38 04             	cmpl   $0x4,(%rax)
    2227:	75 55                	jne    227e <rio_readlineb+0x88>
    2229:	ba 00 20 00 00       	mov    $0x2000,%edx
    222e:	48 89 ee             	mov    %rbp,%rsi
    2231:	8b 3b                	mov    (%rbx),%edi
    2233:	e8 78 f0 ff ff       	call   12b0 <read@plt>
    2238:	89 c2                	mov    %eax,%edx
    223a:	89 43 04             	mov    %eax,0x4(%rbx)
    223d:	85 c0                	test   %eax,%eax
    223f:	78 de                	js     221f <rio_readlineb+0x29>
    2241:	85 c0                	test   %eax,%eax
    2243:	74 42                	je     2287 <rio_readlineb+0x91>
    2245:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2249:	48 8b 43 08          	mov    0x8(%rbx),%rax
    224d:	0f b6 08             	movzbl (%rax),%ecx
    2250:	48 83 c0 01          	add    $0x1,%rax
    2254:	48 89 43 08          	mov    %rax,0x8(%rbx)
    2258:	83 ea 01             	sub    $0x1,%edx
    225b:	89 53 04             	mov    %edx,0x4(%rbx)
    225e:	49 83 c4 01          	add    $0x1,%r12
    2262:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    2267:	80 f9 0a             	cmp    $0xa,%cl
    226a:	74 3c                	je     22a8 <rio_readlineb+0xb2>
    226c:	41 83 c5 01          	add    $0x1,%r13d
    2270:	4d 39 f4             	cmp    %r14,%r12
    2273:	74 30                	je     22a5 <rio_readlineb+0xaf>
    2275:	8b 53 04             	mov    0x4(%rbx),%edx
    2278:	85 d2                	test   %edx,%edx
    227a:	7e ad                	jle    2229 <rio_readlineb+0x33>
    227c:	eb cb                	jmp    2249 <rio_readlineb+0x53>
    227e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2285:	eb 05                	jmp    228c <rio_readlineb+0x96>
    2287:	b8 00 00 00 00       	mov    $0x0,%eax
    228c:	85 c0                	test   %eax,%eax
    228e:	75 29                	jne    22b9 <rio_readlineb+0xc3>
    2290:	b8 00 00 00 00       	mov    $0x0,%eax
    2295:	41 83 fd 01          	cmp    $0x1,%r13d
    2299:	75 0d                	jne    22a8 <rio_readlineb+0xb2>
    229b:	eb 13                	jmp    22b0 <rio_readlineb+0xba>
    229d:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    22a3:	eb 03                	jmp    22a8 <rio_readlineb+0xb2>
    22a5:	4d 89 f4             	mov    %r14,%r12
    22a8:	41 c6 04 24 00       	movb   $0x0,(%r12)
    22ad:	49 63 c5             	movslq %r13d,%rax
    22b0:	5b                   	pop    %rbx
    22b1:	5d                   	pop    %rbp
    22b2:	41 5c                	pop    %r12
    22b4:	41 5d                	pop    %r13
    22b6:	41 5e                	pop    %r14
    22b8:	c3                   	ret    
    22b9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    22c0:	eb ee                	jmp    22b0 <rio_readlineb+0xba>

00000000000022c2 <submitr>:
    22c2:	f3 0f 1e fa          	endbr64 
    22c6:	41 57                	push   %r15
    22c8:	41 56                	push   %r14
    22ca:	41 55                	push   %r13
    22cc:	41 54                	push   %r12
    22ce:	55                   	push   %rbp
    22cf:	53                   	push   %rbx
    22d0:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    22d7:	ff 
    22d8:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    22df:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    22e4:	4c 39 dc             	cmp    %r11,%rsp
    22e7:	75 ef                	jne    22d8 <submitr+0x16>
    22e9:	48 83 ec 78          	sub    $0x78,%rsp
    22ed:	49 89 fd             	mov    %rdi,%r13
    22f0:	89 f5                	mov    %esi,%ebp
    22f2:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    22f7:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    22fc:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    2301:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    2306:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    230d:	00 
    230e:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    2315:	00 
    2316:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    231d:	00 00 
    231f:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    2326:	00 
    2327:	31 c0                	xor    %eax,%eax
    2329:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    2330:	00 
    2331:	ba 00 00 00 00       	mov    $0x0,%edx
    2336:	be 01 00 00 00       	mov    $0x1,%esi
    233b:	bf 02 00 00 00       	mov    $0x2,%edi
    2340:	e8 8b f0 ff ff       	call   13d0 <socket@plt>
    2345:	85 c0                	test   %eax,%eax
    2347:	0f 88 12 01 00 00    	js     245f <submitr+0x19d>
    234d:	41 89 c4             	mov    %eax,%r12d
    2350:	4c 89 ef             	mov    %r13,%rdi
    2353:	e8 98 ef ff ff       	call   12f0 <gethostbyname@plt>
    2358:	48 85 c0             	test   %rax,%rax
    235b:	0f 84 4e 01 00 00    	je     24af <submitr+0x1ed>
    2361:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    2366:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    236d:	00 00 
    236f:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    2376:	00 00 
    2378:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    237f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2383:	48 8b 40 18          	mov    0x18(%rax),%rax
    2387:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    238c:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2391:	48 8b 30             	mov    (%rax),%rsi
    2394:	e8 67 ef ff ff       	call   1300 <__memmove_chk@plt>
    2399:	66 c1 c5 08          	rol    $0x8,%bp
    239d:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    23a2:	ba 10 00 00 00       	mov    $0x10,%edx
    23a7:	4c 89 ee             	mov    %r13,%rsi
    23aa:	44 89 e7             	mov    %r12d,%edi
    23ad:	e8 ce ef ff ff       	call   1380 <connect@plt>
    23b2:	85 c0                	test   %eax,%eax
    23b4:	0f 88 60 01 00 00    	js     251a <submitr+0x258>
    23ba:	48 89 df             	mov    %rbx,%rdi
    23bd:	e8 ae ee ff ff       	call   1270 <strlen@plt>
    23c2:	48 89 c5             	mov    %rax,%rbp
    23c5:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    23ca:	e8 a1 ee ff ff       	call   1270 <strlen@plt>
    23cf:	49 89 c6             	mov    %rax,%r14
    23d2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    23d7:	e8 94 ee ff ff       	call   1270 <strlen@plt>
    23dc:	49 89 c5             	mov    %rax,%r13
    23df:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    23e4:	e8 87 ee ff ff       	call   1270 <strlen@plt>
    23e9:	48 89 c2             	mov    %rax,%rdx
    23ec:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    23f3:	00 
    23f4:	48 01 d0             	add    %rdx,%rax
    23f7:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    23fc:	48 01 d0             	add    %rdx,%rax
    23ff:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2405:	0f 87 6c 01 00 00    	ja     2577 <submitr+0x2b5>
    240b:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    2412:	00 
    2413:	b9 00 04 00 00       	mov    $0x400,%ecx
    2418:	b8 00 00 00 00       	mov    $0x0,%eax
    241d:	48 89 d7             	mov    %rdx,%rdi
    2420:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2423:	48 89 df             	mov    %rbx,%rdi
    2426:	e8 45 ee ff ff       	call   1270 <strlen@plt>
    242b:	85 c0                	test   %eax,%eax
    242d:	0f 84 07 05 00 00    	je     293a <submitr+0x678>
    2433:	8d 40 ff             	lea    -0x1(%rax),%eax
    2436:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    243b:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2442:	00 
    2443:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    244a:	00 
    244b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2450:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    2457:	00 20 00 
    245a:	e9 a6 01 00 00       	jmp    2605 <submitr+0x343>
    245f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2466:	3a 20 43 
    2469:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2470:	20 75 6e 
    2473:	49 89 07             	mov    %rax,(%r15)
    2476:	49 89 57 08          	mov    %rdx,0x8(%r15)
    247a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2481:	74 6f 20 
    2484:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    248b:	65 20 73 
    248e:	49 89 47 10          	mov    %rax,0x10(%r15)
    2492:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2496:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    249d:	65 
    249e:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    24a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24aa:	e9 03 03 00 00       	jmp    27b2 <submitr+0x4f0>
    24af:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    24b6:	3a 20 44 
    24b9:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    24c0:	20 75 6e 
    24c3:	49 89 07             	mov    %rax,(%r15)
    24c6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24ca:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24d1:	74 6f 20 
    24d4:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    24db:	76 65 20 
    24de:	49 89 47 10          	mov    %rax,0x10(%r15)
    24e2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24e6:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    24ed:	72 20 61 
    24f0:	49 89 47 20          	mov    %rax,0x20(%r15)
    24f4:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    24fb:	65 
    24fc:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2503:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2508:	44 89 e7             	mov    %r12d,%edi
    250b:	e8 90 ed ff ff       	call   12a0 <close@plt>
    2510:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2515:	e9 98 02 00 00       	jmp    27b2 <submitr+0x4f0>
    251a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2521:	3a 20 55 
    2524:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    252b:	20 74 6f 
    252e:	49 89 07             	mov    %rax,(%r15)
    2531:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2535:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    253c:	65 63 74 
    253f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2546:	68 65 20 
    2549:	49 89 47 10          	mov    %rax,0x10(%r15)
    254d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2551:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2558:	76 
    2559:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2560:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2565:	44 89 e7             	mov    %r12d,%edi
    2568:	e8 33 ed ff ff       	call   12a0 <close@plt>
    256d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2572:	e9 3b 02 00 00       	jmp    27b2 <submitr+0x4f0>
    2577:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    257e:	3a 20 52 
    2581:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2588:	20 73 74 
    258b:	49 89 07             	mov    %rax,(%r15)
    258e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2592:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2599:	74 6f 6f 
    259c:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    25a3:	65 2e 20 
    25a6:	49 89 47 10          	mov    %rax,0x10(%r15)
    25aa:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25ae:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    25b5:	61 73 65 
    25b8:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    25bf:	49 54 52 
    25c2:	49 89 47 20          	mov    %rax,0x20(%r15)
    25c6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25ca:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    25d1:	55 46 00 
    25d4:	49 89 47 30          	mov    %rax,0x30(%r15)
    25d8:	44 89 e7             	mov    %r12d,%edi
    25db:	e8 c0 ec ff ff       	call   12a0 <close@plt>
    25e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25e5:	e9 c8 01 00 00       	jmp    27b2 <submitr+0x4f0>
    25ea:	49 0f a3 c6          	bt     %rax,%r14
    25ee:	73 21                	jae    2611 <submitr+0x34f>
    25f0:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    25f4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    25f8:	48 83 c3 01          	add    $0x1,%rbx
    25fc:	4c 39 eb             	cmp    %r13,%rbx
    25ff:	0f 84 35 03 00 00    	je     293a <submitr+0x678>
    2605:	44 0f b6 03          	movzbl (%rbx),%r8d
    2609:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    260d:	3c 35                	cmp    $0x35,%al
    260f:	76 d9                	jbe    25ea <submitr+0x328>
    2611:	44 89 c0             	mov    %r8d,%eax
    2614:	83 e0 df             	and    $0xffffffdf,%eax
    2617:	83 e8 41             	sub    $0x41,%eax
    261a:	3c 19                	cmp    $0x19,%al
    261c:	76 d2                	jbe    25f0 <submitr+0x32e>
    261e:	41 80 f8 20          	cmp    $0x20,%r8b
    2622:	74 60                	je     2684 <submitr+0x3c2>
    2624:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2628:	3c 5f                	cmp    $0x5f,%al
    262a:	76 0a                	jbe    2636 <submitr+0x374>
    262c:	41 80 f8 09          	cmp    $0x9,%r8b
    2630:	0f 85 77 02 00 00    	jne    28ad <submitr+0x5eb>
    2636:	45 0f b6 c0          	movzbl %r8b,%r8d
    263a:	48 8d 0d 8d 0f 00 00 	lea    0xf8d(%rip),%rcx        # 35ce <array.0+0x3ee>
    2641:	ba 08 00 00 00       	mov    $0x8,%edx
    2646:	be 01 00 00 00       	mov    $0x1,%esi
    264b:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    2650:	b8 00 00 00 00       	mov    $0x0,%eax
    2655:	e8 66 ed ff ff       	call   13c0 <__sprintf_chk@plt>
    265a:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2661:	00 
    2662:	88 45 00             	mov    %al,0x0(%rbp)
    2665:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    266c:	00 
    266d:	88 45 01             	mov    %al,0x1(%rbp)
    2670:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2677:	00 
    2678:	88 45 02             	mov    %al,0x2(%rbp)
    267b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    267f:	e9 74 ff ff ff       	jmp    25f8 <submitr+0x336>
    2684:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2688:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    268c:	e9 67 ff ff ff       	jmp    25f8 <submitr+0x336>
    2691:	48 01 c5             	add    %rax,%rbp
    2694:	48 29 c3             	sub    %rax,%rbx
    2697:	0f 84 08 03 00 00    	je     29a5 <submitr+0x6e3>
    269d:	48 89 da             	mov    %rbx,%rdx
    26a0:	48 89 ee             	mov    %rbp,%rsi
    26a3:	44 89 e7             	mov    %r12d,%edi
    26a6:	e8 b5 eb ff ff       	call   1260 <write@plt>
    26ab:	48 85 c0             	test   %rax,%rax
    26ae:	7f e1                	jg     2691 <submitr+0x3cf>
    26b0:	e8 7b eb ff ff       	call   1230 <__errno_location@plt>
    26b5:	83 38 04             	cmpl   $0x4,(%rax)
    26b8:	0f 85 90 01 00 00    	jne    284e <submitr+0x58c>
    26be:	4c 89 e8             	mov    %r13,%rax
    26c1:	eb ce                	jmp    2691 <submitr+0x3cf>
    26c3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26ca:	3a 20 43 
    26cd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    26d4:	20 75 6e 
    26d7:	49 89 07             	mov    %rax,(%r15)
    26da:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26de:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    26e5:	74 6f 20 
    26e8:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    26ef:	66 69 72 
    26f2:	49 89 47 10          	mov    %rax,0x10(%r15)
    26f6:	49 89 57 18          	mov    %rdx,0x18(%r15)
    26fa:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2701:	61 64 65 
    2704:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    270b:	6d 20 73 
    270e:	49 89 47 20          	mov    %rax,0x20(%r15)
    2712:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2716:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    271d:	65 
    271e:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2725:	44 89 e7             	mov    %r12d,%edi
    2728:	e8 73 eb ff ff       	call   12a0 <close@plt>
    272d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2732:	eb 7e                	jmp    27b2 <submitr+0x4f0>
    2734:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    273b:	00 
    273c:	48 8d 0d dd 0d 00 00 	lea    0xddd(%rip),%rcx        # 3520 <array.0+0x340>
    2743:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    274a:	be 01 00 00 00       	mov    $0x1,%esi
    274f:	4c 89 ff             	mov    %r15,%rdi
    2752:	b8 00 00 00 00       	mov    $0x0,%eax
    2757:	e8 64 ec ff ff       	call   13c0 <__sprintf_chk@plt>
    275c:	44 89 e7             	mov    %r12d,%edi
    275f:	e8 3c eb ff ff       	call   12a0 <close@plt>
    2764:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2769:	eb 47                	jmp    27b2 <submitr+0x4f0>
    276b:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2772:	00 
    2773:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2778:	ba 00 20 00 00       	mov    $0x2000,%edx
    277d:	e8 74 fa ff ff       	call   21f6 <rio_readlineb>
    2782:	48 85 c0             	test   %rax,%rax
    2785:	7e 54                	jle    27db <submitr+0x519>
    2787:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    278e:	00 
    278f:	4c 89 ff             	mov    %r15,%rdi
    2792:	e8 a9 ea ff ff       	call   1240 <strcpy@plt>
    2797:	44 89 e7             	mov    %r12d,%edi
    279a:	e8 01 eb ff ff       	call   12a0 <close@plt>
    279f:	48 8d 35 43 0e 00 00 	lea    0xe43(%rip),%rsi        # 35e9 <array.0+0x409>
    27a6:	4c 89 ff             	mov    %r15,%rdi
    27a9:	e8 22 eb ff ff       	call   12d0 <strcmp@plt>
    27ae:	f7 d8                	neg    %eax
    27b0:	19 c0                	sbb    %eax,%eax
    27b2:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    27b9:	00 
    27ba:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    27c1:	00 00 
    27c3:	0f 85 f8 02 00 00    	jne    2ac1 <submitr+0x7ff>
    27c9:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    27d0:	5b                   	pop    %rbx
    27d1:	5d                   	pop    %rbp
    27d2:	41 5c                	pop    %r12
    27d4:	41 5d                	pop    %r13
    27d6:	41 5e                	pop    %r14
    27d8:	41 5f                	pop    %r15
    27da:	c3                   	ret    
    27db:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27e2:	3a 20 43 
    27e5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27ec:	20 75 6e 
    27ef:	49 89 07             	mov    %rax,(%r15)
    27f2:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27f6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27fd:	74 6f 20 
    2800:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2807:	73 74 61 
    280a:	49 89 47 10          	mov    %rax,0x10(%r15)
    280e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2812:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2819:	65 73 73 
    281c:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2823:	72 6f 6d 
    2826:	49 89 47 20          	mov    %rax,0x20(%r15)
    282a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    282e:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2835:	65 72 00 
    2838:	49 89 47 30          	mov    %rax,0x30(%r15)
    283c:	44 89 e7             	mov    %r12d,%edi
    283f:	e8 5c ea ff ff       	call   12a0 <close@plt>
    2844:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2849:	e9 64 ff ff ff       	jmp    27b2 <submitr+0x4f0>
    284e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2855:	3a 20 43 
    2858:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    285f:	20 75 6e 
    2862:	49 89 07             	mov    %rax,(%r15)
    2865:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2869:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2870:	74 6f 20 
    2873:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    287a:	20 74 6f 
    287d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2881:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2885:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    288c:	73 65 72 
    288f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2893:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    289a:	00 
    289b:	44 89 e7             	mov    %r12d,%edi
    289e:	e8 fd e9 ff ff       	call   12a0 <close@plt>
    28a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28a8:	e9 05 ff ff ff       	jmp    27b2 <submitr+0x4f0>
    28ad:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    28b4:	3a 20 52 
    28b7:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    28be:	20 73 74 
    28c1:	49 89 07             	mov    %rax,(%r15)
    28c4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    28c8:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    28cf:	63 6f 6e 
    28d2:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    28d9:	20 61 6e 
    28dc:	49 89 47 10          	mov    %rax,0x10(%r15)
    28e0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    28e4:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    28eb:	67 61 6c 
    28ee:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    28f5:	6e 70 72 
    28f8:	49 89 47 20          	mov    %rax,0x20(%r15)
    28fc:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2900:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2907:	6c 65 20 
    290a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2911:	63 74 65 
    2914:	49 89 47 30          	mov    %rax,0x30(%r15)
    2918:	49 89 57 38          	mov    %rdx,0x38(%r15)
    291c:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2923:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2928:	44 89 e7             	mov    %r12d,%edi
    292b:	e8 70 e9 ff ff       	call   12a0 <close@plt>
    2930:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2935:	e9 78 fe ff ff       	jmp    27b2 <submitr+0x4f0>
    293a:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2941:	00 
    2942:	48 83 ec 08          	sub    $0x8,%rsp
    2946:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    294d:	00 
    294e:	50                   	push   %rax
    294f:	ff 74 24 28          	push   0x28(%rsp)
    2953:	ff 74 24 38          	push   0x38(%rsp)
    2957:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    295c:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2961:	48 8d 0d e8 0b 00 00 	lea    0xbe8(%rip),%rcx        # 3550 <array.0+0x370>
    2968:	ba 00 20 00 00       	mov    $0x2000,%edx
    296d:	be 01 00 00 00       	mov    $0x1,%esi
    2972:	48 89 df             	mov    %rbx,%rdi
    2975:	b8 00 00 00 00       	mov    $0x0,%eax
    297a:	e8 41 ea ff ff       	call   13c0 <__sprintf_chk@plt>
    297f:	48 83 c4 20          	add    $0x20,%rsp
    2983:	48 89 df             	mov    %rbx,%rdi
    2986:	e8 e5 e8 ff ff       	call   1270 <strlen@plt>
    298b:	48 89 c3             	mov    %rax,%rbx
    298e:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    2995:	00 
    2996:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    299c:	48 85 c0             	test   %rax,%rax
    299f:	0f 85 f8 fc ff ff    	jne    269d <submitr+0x3db>
    29a5:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    29aa:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    29b1:	00 
    29b2:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    29b7:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    29bc:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    29c1:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    29c8:	00 
    29c9:	ba 00 20 00 00       	mov    $0x2000,%edx
    29ce:	e8 23 f8 ff ff       	call   21f6 <rio_readlineb>
    29d3:	48 85 c0             	test   %rax,%rax
    29d6:	0f 8e e7 fc ff ff    	jle    26c3 <submitr+0x401>
    29dc:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    29e1:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    29e8:	00 
    29e9:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    29f0:	00 
    29f1:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    29f8:	00 
    29f9:	48 8d 35 d5 0b 00 00 	lea    0xbd5(%rip),%rsi        # 35d5 <array.0+0x3f5>
    2a00:	b8 00 00 00 00       	mov    $0x0,%eax
    2a05:	e8 26 e9 ff ff       	call   1330 <__isoc99_sscanf@plt>
    2a0a:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    2a0f:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2a16:	0f 85 18 fd ff ff    	jne    2734 <submitr+0x472>
    2a1c:	48 8d 1d c3 0b 00 00 	lea    0xbc3(%rip),%rbx        # 35e6 <array.0+0x406>
    2a23:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2a2a:	00 
    2a2b:	48 89 de             	mov    %rbx,%rsi
    2a2e:	e8 9d e8 ff ff       	call   12d0 <strcmp@plt>
    2a33:	85 c0                	test   %eax,%eax
    2a35:	0f 84 30 fd ff ff    	je     276b <submitr+0x4a9>
    2a3b:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2a42:	00 
    2a43:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2a48:	ba 00 20 00 00       	mov    $0x2000,%edx
    2a4d:	e8 a4 f7 ff ff       	call   21f6 <rio_readlineb>
    2a52:	48 85 c0             	test   %rax,%rax
    2a55:	7f cc                	jg     2a23 <submitr+0x761>
    2a57:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a5e:	3a 20 43 
    2a61:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a68:	20 75 6e 
    2a6b:	49 89 07             	mov    %rax,(%r15)
    2a6e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2a72:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a79:	74 6f 20 
    2a7c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2a83:	68 65 61 
    2a86:	49 89 47 10          	mov    %rax,0x10(%r15)
    2a8a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2a8e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2a95:	66 72 6f 
    2a98:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2a9f:	76 65 72 
    2aa2:	49 89 47 20          	mov    %rax,0x20(%r15)
    2aa6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2aaa:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2aaf:	44 89 e7             	mov    %r12d,%edi
    2ab2:	e8 e9 e7 ff ff       	call   12a0 <close@plt>
    2ab7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2abc:	e9 f1 fc ff ff       	jmp    27b2 <submitr+0x4f0>
    2ac1:	e8 ba e7 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002ac6 <init_timeout>:
    2ac6:	f3 0f 1e fa          	endbr64 
    2aca:	85 ff                	test   %edi,%edi
    2acc:	75 01                	jne    2acf <init_timeout+0x9>
    2ace:	c3                   	ret    
    2acf:	53                   	push   %rbx
    2ad0:	89 fb                	mov    %edi,%ebx
    2ad2:	48 8d 35 e7 f6 ff ff 	lea    -0x919(%rip),%rsi        # 21c0 <sigalrm_handler>
    2ad9:	bf 0e 00 00 00       	mov    $0xe,%edi
    2ade:	e8 fd e7 ff ff       	call   12e0 <signal@plt>
    2ae3:	85 db                	test   %ebx,%ebx
    2ae5:	b8 00 00 00 00       	mov    $0x0,%eax
    2aea:	0f 49 c3             	cmovns %ebx,%eax
    2aed:	89 c7                	mov    %eax,%edi
    2aef:	e8 9c e7 ff ff       	call   1290 <alarm@plt>
    2af4:	5b                   	pop    %rbx
    2af5:	c3                   	ret    

0000000000002af6 <init_driver>:
    2af6:	f3 0f 1e fa          	endbr64 
    2afa:	41 54                	push   %r12
    2afc:	55                   	push   %rbp
    2afd:	53                   	push   %rbx
    2afe:	48 83 ec 20          	sub    $0x20,%rsp
    2b02:	48 89 fd             	mov    %rdi,%rbp
    2b05:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2b0c:	00 00 
    2b0e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2b13:	31 c0                	xor    %eax,%eax
    2b15:	be 01 00 00 00       	mov    $0x1,%esi
    2b1a:	bf 0d 00 00 00       	mov    $0xd,%edi
    2b1f:	e8 bc e7 ff ff       	call   12e0 <signal@plt>
    2b24:	be 01 00 00 00       	mov    $0x1,%esi
    2b29:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2b2e:	e8 ad e7 ff ff       	call   12e0 <signal@plt>
    2b33:	be 01 00 00 00       	mov    $0x1,%esi
    2b38:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2b3d:	e8 9e e7 ff ff       	call   12e0 <signal@plt>
    2b42:	ba 00 00 00 00       	mov    $0x0,%edx
    2b47:	be 01 00 00 00       	mov    $0x1,%esi
    2b4c:	bf 02 00 00 00       	mov    $0x2,%edi
    2b51:	e8 7a e8 ff ff       	call   13d0 <socket@plt>
    2b56:	85 c0                	test   %eax,%eax
    2b58:	0f 88 9c 00 00 00    	js     2bfa <init_driver+0x104>
    2b5e:	89 c3                	mov    %eax,%ebx
    2b60:	48 8d 3d 77 09 00 00 	lea    0x977(%rip),%rdi        # 34de <array.0+0x2fe>
    2b67:	e8 84 e7 ff ff       	call   12f0 <gethostbyname@plt>
    2b6c:	48 85 c0             	test   %rax,%rax
    2b6f:	0f 84 d1 00 00 00    	je     2c46 <init_driver+0x150>
    2b75:	49 89 e4             	mov    %rsp,%r12
    2b78:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2b7f:	00 
    2b80:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2b87:	00 00 
    2b89:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2b8f:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2b93:	48 8b 40 18          	mov    0x18(%rax),%rax
    2b97:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2b9c:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2ba1:	48 8b 30             	mov    (%rax),%rsi
    2ba4:	e8 57 e7 ff ff       	call   1300 <__memmove_chk@plt>
    2ba9:	66 c7 44 24 02 5e 94 	movw   $0x945e,0x2(%rsp)
    2bb0:	ba 10 00 00 00       	mov    $0x10,%edx
    2bb5:	4c 89 e6             	mov    %r12,%rsi
    2bb8:	89 df                	mov    %ebx,%edi
    2bba:	e8 c1 e7 ff ff       	call   1380 <connect@plt>
    2bbf:	85 c0                	test   %eax,%eax
    2bc1:	0f 88 e7 00 00 00    	js     2cae <init_driver+0x1b8>
    2bc7:	89 df                	mov    %ebx,%edi
    2bc9:	e8 d2 e6 ff ff       	call   12a0 <close@plt>
    2bce:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2bd4:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2bd8:	b8 00 00 00 00       	mov    $0x0,%eax
    2bdd:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2be2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2be9:	00 00 
    2beb:	0f 85 f5 00 00 00    	jne    2ce6 <init_driver+0x1f0>
    2bf1:	48 83 c4 20          	add    $0x20,%rsp
    2bf5:	5b                   	pop    %rbx
    2bf6:	5d                   	pop    %rbp
    2bf7:	41 5c                	pop    %r12
    2bf9:	c3                   	ret    
    2bfa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c01:	3a 20 43 
    2c04:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c0b:	20 75 6e 
    2c0e:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c12:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c16:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c1d:	74 6f 20 
    2c20:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2c27:	65 20 73 
    2c2a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c2e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c32:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2c39:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2c3f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2c44:	eb 97                	jmp    2bdd <init_driver+0xe7>
    2c46:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2c4d:	3a 20 44 
    2c50:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2c57:	20 75 6e 
    2c5a:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2c5e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2c62:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2c69:	74 6f 20 
    2c6c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2c73:	76 65 20 
    2c76:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2c7a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2c7e:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2c85:	72 20 61 
    2c88:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2c8c:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2c93:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2c99:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2c9d:	89 df                	mov    %ebx,%edi
    2c9f:	e8 fc e5 ff ff       	call   12a0 <close@plt>
    2ca4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ca9:	e9 2f ff ff ff       	jmp    2bdd <init_driver+0xe7>
    2cae:	4c 8d 05 29 08 00 00 	lea    0x829(%rip),%r8        # 34de <array.0+0x2fe>
    2cb5:	48 8d 0d ec 08 00 00 	lea    0x8ec(%rip),%rcx        # 35a8 <array.0+0x3c8>
    2cbc:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2cc3:	be 01 00 00 00       	mov    $0x1,%esi
    2cc8:	48 89 ef             	mov    %rbp,%rdi
    2ccb:	b8 00 00 00 00       	mov    $0x0,%eax
    2cd0:	e8 eb e6 ff ff       	call   13c0 <__sprintf_chk@plt>
    2cd5:	89 df                	mov    %ebx,%edi
    2cd7:	e8 c4 e5 ff ff       	call   12a0 <close@plt>
    2cdc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ce1:	e9 f7 fe ff ff       	jmp    2bdd <init_driver+0xe7>
    2ce6:	e8 95 e5 ff ff       	call   1280 <__stack_chk_fail@plt>

0000000000002ceb <driver_post>:
    2ceb:	f3 0f 1e fa          	endbr64 
    2cef:	53                   	push   %rbx
    2cf0:	4c 89 c3             	mov    %r8,%rbx
    2cf3:	85 c9                	test   %ecx,%ecx
    2cf5:	75 17                	jne    2d0e <driver_post+0x23>
    2cf7:	48 85 ff             	test   %rdi,%rdi
    2cfa:	74 05                	je     2d01 <driver_post+0x16>
    2cfc:	80 3f 00             	cmpb   $0x0,(%rdi)
    2cff:	75 33                	jne    2d34 <driver_post+0x49>
    2d01:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2d06:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2d0a:	89 c8                	mov    %ecx,%eax
    2d0c:	5b                   	pop    %rbx
    2d0d:	c3                   	ret    
    2d0e:	48 8d 35 d7 08 00 00 	lea    0x8d7(%rip),%rsi        # 35ec <array.0+0x40c>
    2d15:	bf 01 00 00 00       	mov    $0x1,%edi
    2d1a:	b8 00 00 00 00       	mov    $0x0,%eax
    2d1f:	e8 1c e6 ff ff       	call   1340 <__printf_chk@plt>
    2d24:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2d29:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2d2d:	b8 00 00 00 00       	mov    $0x0,%eax
    2d32:	eb d8                	jmp    2d0c <driver_post+0x21>
    2d34:	41 50                	push   %r8
    2d36:	52                   	push   %rdx
    2d37:	4c 8d 0d c5 08 00 00 	lea    0x8c5(%rip),%r9        # 3603 <array.0+0x423>
    2d3e:	49 89 f0             	mov    %rsi,%r8
    2d41:	48 89 f9             	mov    %rdi,%rcx
    2d44:	48 8d 15 c2 08 00 00 	lea    0x8c2(%rip),%rdx        # 360d <array.0+0x42d>
    2d4b:	be 94 5e 00 00       	mov    $0x5e94,%esi
    2d50:	48 8d 3d 87 07 00 00 	lea    0x787(%rip),%rdi        # 34de <array.0+0x2fe>
    2d57:	e8 66 f5 ff ff       	call   22c2 <submitr>
    2d5c:	48 83 c4 10          	add    $0x10,%rsp
    2d60:	eb aa                	jmp    2d0c <driver_post+0x21>

Disassembly of section .fini:

0000000000002d64 <_fini>:
    2d64:	f3 0f 1e fa          	endbr64 
    2d68:	48 83 ec 08          	sub    $0x8,%rsp
    2d6c:	48 83 c4 08          	add    $0x8,%rsp
    2d70:	c3                   	ret    
