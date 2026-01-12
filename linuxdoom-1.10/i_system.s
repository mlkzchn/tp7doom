	.file	"i_system.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "i_system.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_bbox.c,v 1.1 1997/02/03 22:45:10 b1 Exp $"
	.globl	mb_used
	.data
	.align 4
	.type	mb_used, @object
	.size	mb_used, 4
mb_used:
	.long	6
	.text
	.globl	I_Tactile
	.type	I_Tactile, @function
I_Tactile:
.LFB6:
	.file 1 "i_system.c"
	.loc 1 59 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# on, on
	movl	%esi, -8(%rbp)	# off, off
	movl	%edx, -12(%rbp)	# total, total
# i_system.c:61:   on = off = total = 0;
	.loc 1 61 20
	movl	$0, -12(%rbp)	#, total
# i_system.c:61:   on = off = total = 0;
	.loc 1 61 12
	movl	-12(%rbp), %eax	# total, tmp82
	movl	%eax, -8(%rbp)	# tmp82, off
# i_system.c:61:   on = off = total = 0;
	.loc 1 61 6
	movl	-8(%rbp), %eax	# off, tmp83
	movl	%eax, -4(%rbp)	# tmp83, on
# i_system.c:62: }
	.loc 1 62 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	I_Tactile, .-I_Tactile
	.globl	emptycmd
	.bss
	.align 8
	.type	emptycmd, @object
	.size	emptycmd, 8
emptycmd:
	.zero	8
	.text
	.globl	I_BaseTiccmd
	.type	I_BaseTiccmd, @function
I_BaseTiccmd:
.LFB7:
	.loc 1 66 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_system.c:67:     return &emptycmd;
	.loc 1 67 12
	leaq	emptycmd(%rip), %rax	#, _1
# i_system.c:68: }
	.loc 1 68 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	I_BaseTiccmd, .-I_BaseTiccmd
	.globl	I_GetHeapSize
	.type	I_GetHeapSize, @function
I_GetHeapSize:
.LFB8:
	.loc 1 72 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_system.c:73:     return mb_used*1024*1024;
	.loc 1 73 24
	movl	mb_used(%rip), %eax	# mb_used, mb_used.0_1
	sall	$20, %eax	#, _3
# i_system.c:74: }
	.loc 1 74 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	I_GetHeapSize, .-I_GetHeapSize
	.globl	I_ZoneBase
	.type	I_ZoneBase, @function
I_ZoneBase:
.LFB9:
	.loc 1 77 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# size, size
# i_system.c:78:     *size = mb_used*1024*1024;
	.loc 1 78 25
	movl	mb_used(%rip), %eax	# mb_used, mb_used.1_1
	sall	$20, %eax	#, mb_used.1_1
	movl	%eax, %edx	# mb_used.1_1, _2
# i_system.c:78:     *size = mb_used*1024*1024;
	.loc 1 78 11
	movq	-8(%rbp), %rax	# size, tmp88
	movl	%edx, (%rax)	# _2, *size_6(D)
# i_system.c:79:     return (byte *) malloc (*size);
	.loc 1 79 29
	movq	-8(%rbp), %rax	# size, tmp89
	movl	(%rax), %eax	# *size_6(D), _3
# i_system.c:79:     return (byte *) malloc (*size);
	.loc 1 79 21
	cltq
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
# i_system.c:80: }
	.loc 1 80 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	I_ZoneBase, .-I_ZoneBase
	.globl	I_GetTime
	.type	I_GetTime, @function
I_GetTime:
.LFB10:
	.loc 1 89 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# i_system.c:89: {
	.loc 1 89 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.7838
	xorl	%eax, %eax	# tmp107
# i_system.c:95:     gettimeofday(&tp, &tzp);
	.loc 1 95 5
	leaq	-40(%rbp), %rdx	#, tmp98
	leaq	-32(%rbp), %rax	#, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	gettimeofday@PLT	#
# i_system.c:96:     if (!basetime)
	.loc 1 96 9
	movl	basetime.0(%rip), %eax	# basetime, basetime.2_1
# i_system.c:96:     if (!basetime)
	.loc 1 96 8
	testl	%eax, %eax	# basetime.2_1
	jne	.L9	#,
# i_system.c:97: 	basetime = tp.tv_sec;
	.loc 1 97 15
	movq	-32(%rbp), %rax	# tp.tv_sec, _2
# i_system.c:97: 	basetime = tp.tv_sec;
	.loc 1 97 11
	movl	%eax, basetime.0(%rip)	# _3, basetime
.L9:
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 18
	movq	-32(%rbp), %rdx	# tp.tv_sec, _4
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 25
	movl	basetime.0(%rip), %eax	# basetime, basetime.3_5
	cltq
	subq	%rax, %rdx	# _6, _7
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 44
	movl	%edx, %eax	# _7, _8
	imull	$35, %eax, %esi	#, _8, _9
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 48
	movq	-24(%rbp), %rdx	# tp.tv_usec, _10
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 56
	movq	%rdx, %rax	# _10, tmp100
	salq	$3, %rax	#, tmp100
	addq	%rdx, %rax	# _10, tmp100
	salq	$2, %rax	#, tmp101
	subq	%rdx, %rax	# _10, tmp100
	movq	%rax, %rcx	# tmp100, _11
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 64
	movabsq	$4835703278458516699, %rdx	#, tmp103
	movq	%rcx, %rax	# _11, tmp108
	imulq	%rdx	# tmp103
	sarq	$18, %rdx	#, tmp104
	movq	%rcx, %rax	# _11, _11
	sarq	$63, %rax	#, _11
	subq	%rax, %rdx	# tmp105, _12
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 44
	movl	%edx, %eax	# _12, _13
	addl	%esi, %eax	# _9, _14
# i_system.c:98:     newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
	.loc 1 98 13
	movl	%eax, -44(%rbp)	# _14, newtics
# i_system.c:99:     return newtics;
	.loc 1 99 12
	movl	-44(%rbp), %eax	# newtics, _20
# i_system.c:100: }
	.loc 1 100 1
	movq	-8(%rbp), %rdx	# D.7838, tmp109
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	I_GetTime, .-I_GetTime
	.globl	I_Init
	.type	I_Init, @function
I_Init:
.LFB11:
	.loc 1 108 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_system.c:109:     I_InitSound();
	.loc 1 109 5
	movl	$0, %eax	#,
	call	I_InitSound@PLT	#
# i_system.c:111: }
	.loc 1 111 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	I_Init, .-I_Init
	.globl	I_Quit
	.type	I_Quit, @function
I_Quit:
.LFB12:
	.loc 1 117 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_system.c:118:     D_QuitNetGame ();
	.loc 1 118 5
	call	D_QuitNetGame@PLT	#
# i_system.c:119:     I_ShutdownSound();
	.loc 1 119 5
	call	I_ShutdownSound@PLT	#
# i_system.c:120:     I_ShutdownMusic();
	.loc 1 120 5
	call	I_ShutdownMusic@PLT	#
# i_system.c:121:     M_SaveDefaults ();
	.loc 1 121 5
	call	M_SaveDefaults@PLT	#
# i_system.c:122:     I_ShutdownGraphics();
	.loc 1 122 5
	call	I_ShutdownGraphics@PLT	#
# i_system.c:123:     exit(0);
	.loc 1 123 5
	movl	$0, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE12:
	.size	I_Quit, .-I_Quit
	.globl	I_WaitVBL
	.type	I_WaitVBL, @function
I_WaitVBL:
.LFB13:
	.loc 1 127 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# count, count
# i_system.c:134:     usleep (count * (1000000/70) );                                
	.loc 1 134 19
	movl	-4(%rbp), %eax	# count, tmp84
	imull	$14285, %eax, %eax	#, tmp84, _1
# i_system.c:134:     usleep (count * (1000000/70) );                                
	.loc 1 134 5
	movl	%eax, %edi	# _2,
	call	usleep@PLT	#
# i_system.c:137: }
	.loc 1 137 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	I_WaitVBL, .-I_WaitVBL
	.globl	I_BeginRead
	.type	I_BeginRead, @function
I_BeginRead:
.LFB14:
	.loc 1 140 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_system.c:141: }
	.loc 1 141 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	I_BeginRead, .-I_BeginRead
	.globl	I_EndRead
	.type	I_EndRead, @function
I_EndRead:
.LFB15:
	.loc 1 144 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_system.c:145: }
	.loc 1 145 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	I_EndRead, .-I_EndRead
	.globl	I_AllocLow
	.type	I_AllocLow, @function
I_AllocLow:
.LFB16:
	.loc 1 148 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# length, length
# i_system.c:151:     mem = (byte *)malloc (length);
	.loc 1 151 19
	movl	-20(%rbp), %eax	# length, tmp86
	cltq
	movq	%rax, %rdi	# _1,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp87, mem
# i_system.c:152:     memset (mem,0,length);
	.loc 1 152 5
	movl	-20(%rbp), %eax	# length, tmp88
	movslq	%eax, %rdx	# tmp88, _2
	movq	-8(%rbp), %rax	# mem, tmp89
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	memset@PLT	#
# i_system.c:153:     return mem;
	.loc 1 153 12
	movq	-8(%rbp), %rax	# mem, _8
# i_system.c:154: }
	.loc 1 154 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	I_AllocLow, .-I_AllocLow
	.section	.rodata
.LC0:
	.string	"Error: "
	.text
	.globl	I_Error
	.type	I_Error, @function
I_Error:
.LFB17:
	.loc 1 163 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# error, error
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L20	#,
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L20:
# i_system.c:163: {
	.loc 1 163 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	movq	%rax, -184(%rbp)	# tmp91, D.7840
	xorl	%eax, %eax	# tmp91
# i_system.c:167:     va_start (argptr,error);
	.loc 1 167 5
	movl	$8, -208(%rbp)	#, MEM[(struct [1] *)&argptr].gp_offset
	movl	$48, -204(%rbp)	#, MEM[(struct [1] *)&argptr].fp_offset
	leaq	16(%rbp), %rax	#, tmp93
	movq	%rax, -200(%rbp)	# tmp93, MEM[(struct [1] *)&argptr].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp94
	movq	%rax, -192(%rbp)	# tmp94, MEM[(struct [1] *)&argptr].reg_save_area
# i_system.c:168:     fprintf (stderr, "Error: ");
	.loc 1 168 5
	movq	stderr(%rip), %rax	# stderr, stderr.4_1
	movq	%rax, %rcx	# stderr.4_1,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	call	fwrite@PLT	#
# i_system.c:169:     vfprintf (stderr,error,argptr);
	.loc 1 169 5
	movq	stderr(%rip), %rax	# stderr, stderr.5_2
	leaq	-208(%rbp), %rdx	#, tmp89
	movq	-216(%rbp), %rcx	# error, tmp90
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# stderr.5_2,
	call	vfprintf@PLT	#
# i_system.c:170:     fprintf (stderr, "\n");
	.loc 1 170 5
	movq	stderr(%rip), %rax	# stderr, stderr.6_3
	movq	%rax, %rsi	# stderr.6_3,
	movl	$10, %edi	#,
	call	fputc@PLT	#
# i_system.c:173:     fflush( stderr );
	.loc 1 173 5
	movq	stderr(%rip), %rax	# stderr, stderr.7_4
	movq	%rax, %rdi	# stderr.7_4,
	call	fflush@PLT	#
# i_system.c:176:     if (demorecording)
	.loc 1 176 9
	movl	demorecording(%rip), %eax	# demorecording, demorecording.8_5
# i_system.c:176:     if (demorecording)
	.loc 1 176 8
	testl	%eax, %eax	# demorecording.8_5
	je	.L21	#,
# i_system.c:177: 	G_CheckDemoStatus();
	.loc 1 177 2
	call	G_CheckDemoStatus@PLT	#
.L21:
# i_system.c:179:     D_QuitNetGame ();
	.loc 1 179 5
	call	D_QuitNetGame@PLT	#
# i_system.c:180:     I_ShutdownGraphics();
	.loc 1 180 5
	call	I_ShutdownGraphics@PLT	#
# i_system.c:182:     exit(-1);
	.loc 1 182 5
	movl	$-1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE17:
	.size	I_Error, .-I_Error
	.local	basetime.0
	.comm	basetime.0,4,4
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 11 "doomdef.h"
	.file 12 "doomtype.h"
	.file 13 "info.h"
	.file 14 "p_pspr.h"
	.file 15 "d_ticcmd.h"
	.file 16 "doomstat.h"
	.file 17 "/usr/include/string.h"
	.file 18 "/usr/include/unistd.h"
	.file 19 "/usr/include/stdlib.h"
	.file 20 "i_video.h"
	.file 21 "m_misc.h"
	.file 22 "i_sound.h"
	.file 23 "d_net.h"
	.file 24 "g_game.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x28d6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1f
	.long	.LASF1392
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.long	0x51
	.long	0x3e
	.uleb128 0xc
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	0x2e
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x16
	.long	0x4a
	.uleb128 0xd
	.long	.LASF1372
	.byte	0x18
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x7e
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x7e
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x7e
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0xa1
	.byte	0x1e
	.long	0x9a
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0xa2
	.byte	0x1f
	.long	0x7e
	.uleb128 0x21
	.byte	0x8
	.uleb128 0xe
	.long	0xeb
	.uleb128 0x4
	.long	0x4a
	.uleb128 0x10
	.long	.LASF25
	.byte	0x10
	.byte	0x4
	.byte	0x8
	.long	0x11e
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0xe
	.byte	0xc
	.long	0xc7
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0xf
	.byte	0x11
	.long	0xdf
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF19
	.uleb128 0x6
	.long	.LASF20
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.long	0x131
	.uleb128 0x22
	.long	.LASF1393
	.long	0x13a
	.uleb128 0xb
	.long	0x14a
	.long	0x14a
	.uleb128 0xc
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF1394
	.byte	0x18
	.byte	0x6
	.byte	0
	.long	0x17f
	.uleb128 0xf
	.long	.LASF21
	.long	0x9a
	.byte	0
	.uleb128 0xf
	.long	.LASF22
	.long	0x9a
	.byte	0x4
	.uleb128 0xf
	.long	.LASF23
	.long	0xeb
	.byte	0x8
	.uleb128 0xf
	.long	.LASF24
	.long	0xeb
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF26
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.long	0x305
	.uleb128 0x3
	.long	.LASF27
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0xf2
	.byte	0x8
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0xf2
	.byte	0x10
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0xf2
	.byte	0x18
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0xf2
	.byte	0x20
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0xf2
	.byte	0x28
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0xf2
	.byte	0x30
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0xf2
	.byte	0x38
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0xf2
	.byte	0x40
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0xf2
	.byte	0x48
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0xf2
	.byte	0x50
	.uleb128 0x3
	.long	.LASF38
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0xf2
	.byte	0x58
	.uleb128 0x3
	.long	.LASF39
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x31e
	.byte	0x60
	.uleb128 0x3
	.long	.LASF40
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x323
	.byte	0x68
	.uleb128 0x3
	.long	.LASF41
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x77
	.byte	0x70
	.uleb128 0x3
	.long	.LASF42
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x77
	.byte	0x74
	.uleb128 0x3
	.long	.LASF43
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0xaf
	.byte	0x78
	.uleb128 0x3
	.long	.LASF44
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x93
	.byte	0x80
	.uleb128 0x3
	.long	.LASF45
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0xa1
	.byte	0x82
	.uleb128 0x3
	.long	.LASF46
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x328
	.byte	0x83
	.uleb128 0x3
	.long	.LASF47
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x338
	.byte	0x88
	.uleb128 0x3
	.long	.LASF48
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xbb
	.byte	0x90
	.uleb128 0x3
	.long	.LASF49
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x342
	.byte	0x98
	.uleb128 0x3
	.long	.LASF50
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x34c
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF51
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x323
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF52
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0xeb
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x6b
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF54
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x77
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x351
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF56
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x17f
	.uleb128 0x24
	.long	.LASF1395
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x11
	.long	.LASF57
	.uleb128 0x4
	.long	0x319
	.uleb128 0x4
	.long	0x17f
	.uleb128 0xb
	.long	0x4a
	.long	0x338
	.uleb128 0xc
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x311
	.uleb128 0x11
	.long	.LASF58
	.uleb128 0x4
	.long	0x33d
	.uleb128 0x11
	.long	.LASF59
	.uleb128 0x4
	.long	0x347
	.uleb128 0xb
	.long	0x4a
	.long	0x361
	.uleb128 0xc
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x51
	.uleb128 0xe
	.long	0x361
	.uleb128 0x6
	.long	.LASF60
	.byte	0x9
	.byte	0x35
	.byte	0x18
	.long	0x125
	.uleb128 0x4
	.long	0x305
	.uleb128 0xe
	.long	0x377
	.uleb128 0x17
	.long	.LASF1356
	.byte	0x9
	.byte	0x97
	.byte	0xe
	.long	0x377
	.uleb128 0x10
	.long	.LASF61
	.byte	0x8
	.byte	0xa
	.byte	0x34
	.long	0x3b4
	.uleb128 0x3
	.long	.LASF62
	.byte	0xa
	.byte	0x36
	.byte	0x9
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF63
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.long	0x77
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xb
	.byte	0xa3
	.byte	0x1
	.long	0x3eb
	.uleb128 0x2
	.long	.LASF64
	.byte	0
	.uleb128 0x2
	.long	.LASF65
	.byte	0x1
	.uleb128 0x2
	.long	.LASF66
	.byte	0x2
	.uleb128 0x2
	.long	.LASF67
	.byte	0x3
	.uleb128 0x2
	.long	.LASF68
	.byte	0x4
	.uleb128 0x2
	.long	.LASF69
	.byte	0x5
	.uleb128 0x2
	.long	.LASF70
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xb
	.byte	0xb5
	.byte	0x1
	.long	0x43a
	.uleb128 0x2
	.long	.LASF71
	.byte	0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x1
	.uleb128 0x2
	.long	.LASF73
	.byte	0x2
	.uleb128 0x2
	.long	.LASF74
	.byte	0x3
	.uleb128 0x2
	.long	.LASF75
	.byte	0x4
	.uleb128 0x2
	.long	.LASF76
	.byte	0x5
	.uleb128 0x2
	.long	.LASF77
	.byte	0x6
	.uleb128 0x2
	.long	.LASF78
	.byte	0x7
	.uleb128 0x2
	.long	.LASF79
	.byte	0x8
	.uleb128 0x2
	.long	.LASF80
	.byte	0x9
	.uleb128 0x2
	.long	.LASF81
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xb
	.byte	0xca
	.byte	0x1
	.long	0x46b
	.uleb128 0x2
	.long	.LASF82
	.byte	0
	.uleb128 0x2
	.long	.LASF83
	.byte	0x1
	.uleb128 0x2
	.long	.LASF84
	.byte	0x2
	.uleb128 0x2
	.long	.LASF85
	.byte	0x3
	.uleb128 0x2
	.long	.LASF86
	.byte	0x4
	.uleb128 0x2
	.long	.LASF87
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xb
	.byte	0xd7
	.byte	0x1
	.long	0x4a2
	.uleb128 0x2
	.long	.LASF88
	.byte	0
	.uleb128 0x2
	.long	.LASF89
	.byte	0x1
	.uleb128 0x2
	.long	.LASF90
	.byte	0x2
	.uleb128 0x2
	.long	.LASF91
	.byte	0x3
	.uleb128 0x2
	.long	.LASF92
	.byte	0x4
	.uleb128 0x2
	.long	.LASF93
	.byte	0x5
	.uleb128 0x2
	.long	.LASF94
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xc
	.byte	0x22
	.byte	0xe
	.long	0x4bb
	.uleb128 0x2
	.long	.LASF95
	.byte	0
	.uleb128 0x2
	.long	.LASF96
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF97
	.byte	0xc
	.byte	0x22
	.byte	0x1c
	.long	0x4a2
	.uleb128 0x6
	.long	.LASF98
	.byte	0xc
	.byte	0x24
	.byte	0x17
	.long	0x8c
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF99
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF100
	.uleb128 0x8
	.long	0x9a
	.byte	0xd
	.byte	0x1f
	.byte	0x1
	.long	0x830
	.uleb128 0x2
	.long	.LASF101
	.byte	0
	.uleb128 0x2
	.long	.LASF102
	.byte	0x1
	.uleb128 0x2
	.long	.LASF103
	.byte	0x2
	.uleb128 0x2
	.long	.LASF104
	.byte	0x3
	.uleb128 0x2
	.long	.LASF105
	.byte	0x4
	.uleb128 0x2
	.long	.LASF106
	.byte	0x5
	.uleb128 0x2
	.long	.LASF107
	.byte	0x6
	.uleb128 0x2
	.long	.LASF108
	.byte	0x7
	.uleb128 0x2
	.long	.LASF109
	.byte	0x8
	.uleb128 0x2
	.long	.LASF110
	.byte	0x9
	.uleb128 0x2
	.long	.LASF111
	.byte	0xa
	.uleb128 0x2
	.long	.LASF112
	.byte	0xb
	.uleb128 0x2
	.long	.LASF113
	.byte	0xc
	.uleb128 0x2
	.long	.LASF114
	.byte	0xd
	.uleb128 0x2
	.long	.LASF115
	.byte	0xe
	.uleb128 0x2
	.long	.LASF116
	.byte	0xf
	.uleb128 0x2
	.long	.LASF117
	.byte	0x10
	.uleb128 0x2
	.long	.LASF118
	.byte	0x11
	.uleb128 0x2
	.long	.LASF119
	.byte	0x12
	.uleb128 0x2
	.long	.LASF120
	.byte	0x13
	.uleb128 0x2
	.long	.LASF121
	.byte	0x14
	.uleb128 0x2
	.long	.LASF122
	.byte	0x15
	.uleb128 0x2
	.long	.LASF123
	.byte	0x16
	.uleb128 0x2
	.long	.LASF124
	.byte	0x17
	.uleb128 0x2
	.long	.LASF125
	.byte	0x18
	.uleb128 0x2
	.long	.LASF126
	.byte	0x19
	.uleb128 0x2
	.long	.LASF127
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF128
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF129
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF130
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF131
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF132
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF133
	.byte	0x20
	.uleb128 0x2
	.long	.LASF134
	.byte	0x21
	.uleb128 0x2
	.long	.LASF135
	.byte	0x22
	.uleb128 0x2
	.long	.LASF136
	.byte	0x23
	.uleb128 0x2
	.long	.LASF137
	.byte	0x24
	.uleb128 0x2
	.long	.LASF138
	.byte	0x25
	.uleb128 0x2
	.long	.LASF139
	.byte	0x26
	.uleb128 0x2
	.long	.LASF140
	.byte	0x27
	.uleb128 0x2
	.long	.LASF141
	.byte	0x28
	.uleb128 0x2
	.long	.LASF142
	.byte	0x29
	.uleb128 0x2
	.long	.LASF143
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF144
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF145
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF146
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF147
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF148
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF149
	.byte	0x30
	.uleb128 0x2
	.long	.LASF150
	.byte	0x31
	.uleb128 0x2
	.long	.LASF151
	.byte	0x32
	.uleb128 0x2
	.long	.LASF152
	.byte	0x33
	.uleb128 0x2
	.long	.LASF153
	.byte	0x34
	.uleb128 0x2
	.long	.LASF154
	.byte	0x35
	.uleb128 0x2
	.long	.LASF155
	.byte	0x36
	.uleb128 0x2
	.long	.LASF156
	.byte	0x37
	.uleb128 0x2
	.long	.LASF157
	.byte	0x38
	.uleb128 0x2
	.long	.LASF158
	.byte	0x39
	.uleb128 0x2
	.long	.LASF159
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF160
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF161
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF162
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF163
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF164
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF165
	.byte	0x40
	.uleb128 0x2
	.long	.LASF166
	.byte	0x41
	.uleb128 0x2
	.long	.LASF167
	.byte	0x42
	.uleb128 0x2
	.long	.LASF168
	.byte	0x43
	.uleb128 0x2
	.long	.LASF169
	.byte	0x44
	.uleb128 0x2
	.long	.LASF170
	.byte	0x45
	.uleb128 0x2
	.long	.LASF171
	.byte	0x46
	.uleb128 0x2
	.long	.LASF172
	.byte	0x47
	.uleb128 0x2
	.long	.LASF173
	.byte	0x48
	.uleb128 0x2
	.long	.LASF174
	.byte	0x49
	.uleb128 0x2
	.long	.LASF175
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF176
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF177
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF178
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF179
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF180
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF181
	.byte	0x50
	.uleb128 0x2
	.long	.LASF182
	.byte	0x51
	.uleb128 0x2
	.long	.LASF183
	.byte	0x52
	.uleb128 0x2
	.long	.LASF184
	.byte	0x53
	.uleb128 0x2
	.long	.LASF185
	.byte	0x54
	.uleb128 0x2
	.long	.LASF186
	.byte	0x55
	.uleb128 0x2
	.long	.LASF187
	.byte	0x56
	.uleb128 0x2
	.long	.LASF188
	.byte	0x57
	.uleb128 0x2
	.long	.LASF189
	.byte	0x58
	.uleb128 0x2
	.long	.LASF190
	.byte	0x59
	.uleb128 0x2
	.long	.LASF191
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF192
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF193
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF194
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF195
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF196
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF197
	.byte	0x60
	.uleb128 0x2
	.long	.LASF198
	.byte	0x61
	.uleb128 0x2
	.long	.LASF199
	.byte	0x62
	.uleb128 0x2
	.long	.LASF200
	.byte	0x63
	.uleb128 0x2
	.long	.LASF201
	.byte	0x64
	.uleb128 0x2
	.long	.LASF202
	.byte	0x65
	.uleb128 0x2
	.long	.LASF203
	.byte	0x66
	.uleb128 0x2
	.long	.LASF204
	.byte	0x67
	.uleb128 0x2
	.long	.LASF205
	.byte	0x68
	.uleb128 0x2
	.long	.LASF206
	.byte	0x69
	.uleb128 0x2
	.long	.LASF207
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF208
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF209
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF210
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF211
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF212
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF213
	.byte	0x70
	.uleb128 0x2
	.long	.LASF214
	.byte	0x71
	.uleb128 0x2
	.long	.LASF215
	.byte	0x72
	.uleb128 0x2
	.long	.LASF216
	.byte	0x73
	.uleb128 0x2
	.long	.LASF217
	.byte	0x74
	.uleb128 0x2
	.long	.LASF218
	.byte	0x75
	.uleb128 0x2
	.long	.LASF219
	.byte	0x76
	.uleb128 0x2
	.long	.LASF220
	.byte	0x77
	.uleb128 0x2
	.long	.LASF221
	.byte	0x78
	.uleb128 0x2
	.long	.LASF222
	.byte	0x79
	.uleb128 0x2
	.long	.LASF223
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF224
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF225
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF226
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF227
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF228
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF229
	.byte	0x80
	.uleb128 0x2
	.long	.LASF230
	.byte	0x81
	.uleb128 0x2
	.long	.LASF231
	.byte	0x82
	.uleb128 0x2
	.long	.LASF232
	.byte	0x83
	.uleb128 0x2
	.long	.LASF233
	.byte	0x84
	.uleb128 0x2
	.long	.LASF234
	.byte	0x85
	.uleb128 0x2
	.long	.LASF235
	.byte	0x86
	.uleb128 0x2
	.long	.LASF236
	.byte	0x87
	.uleb128 0x2
	.long	.LASF237
	.byte	0x88
	.uleb128 0x2
	.long	.LASF238
	.byte	0x89
	.uleb128 0x2
	.long	.LASF239
	.byte	0x8a
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xd
	.byte	0xaf
	.byte	0x1
	.long	0x21b5
	.uleb128 0x2
	.long	.LASF240
	.byte	0
	.uleb128 0x2
	.long	.LASF241
	.byte	0x1
	.uleb128 0x2
	.long	.LASF242
	.byte	0x2
	.uleb128 0x2
	.long	.LASF243
	.byte	0x3
	.uleb128 0x2
	.long	.LASF244
	.byte	0x4
	.uleb128 0x2
	.long	.LASF245
	.byte	0x5
	.uleb128 0x2
	.long	.LASF246
	.byte	0x6
	.uleb128 0x2
	.long	.LASF247
	.byte	0x7
	.uleb128 0x2
	.long	.LASF248
	.byte	0x8
	.uleb128 0x2
	.long	.LASF249
	.byte	0x9
	.uleb128 0x2
	.long	.LASF250
	.byte	0xa
	.uleb128 0x2
	.long	.LASF251
	.byte	0xb
	.uleb128 0x2
	.long	.LASF252
	.byte	0xc
	.uleb128 0x2
	.long	.LASF253
	.byte	0xd
	.uleb128 0x2
	.long	.LASF254
	.byte	0xe
	.uleb128 0x2
	.long	.LASF255
	.byte	0xf
	.uleb128 0x2
	.long	.LASF256
	.byte	0x10
	.uleb128 0x2
	.long	.LASF257
	.byte	0x11
	.uleb128 0x2
	.long	.LASF258
	.byte	0x12
	.uleb128 0x2
	.long	.LASF259
	.byte	0x13
	.uleb128 0x2
	.long	.LASF260
	.byte	0x14
	.uleb128 0x2
	.long	.LASF261
	.byte	0x15
	.uleb128 0x2
	.long	.LASF262
	.byte	0x16
	.uleb128 0x2
	.long	.LASF263
	.byte	0x17
	.uleb128 0x2
	.long	.LASF264
	.byte	0x18
	.uleb128 0x2
	.long	.LASF265
	.byte	0x19
	.uleb128 0x2
	.long	.LASF266
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF267
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF268
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF269
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF270
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF271
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF272
	.byte	0x20
	.uleb128 0x2
	.long	.LASF273
	.byte	0x21
	.uleb128 0x2
	.long	.LASF274
	.byte	0x22
	.uleb128 0x2
	.long	.LASF275
	.byte	0x23
	.uleb128 0x2
	.long	.LASF276
	.byte	0x24
	.uleb128 0x2
	.long	.LASF277
	.byte	0x25
	.uleb128 0x2
	.long	.LASF278
	.byte	0x26
	.uleb128 0x2
	.long	.LASF279
	.byte	0x27
	.uleb128 0x2
	.long	.LASF280
	.byte	0x28
	.uleb128 0x2
	.long	.LASF281
	.byte	0x29
	.uleb128 0x2
	.long	.LASF282
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF283
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF284
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF285
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF286
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF287
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF288
	.byte	0x30
	.uleb128 0x2
	.long	.LASF289
	.byte	0x31
	.uleb128 0x2
	.long	.LASF290
	.byte	0x32
	.uleb128 0x2
	.long	.LASF291
	.byte	0x33
	.uleb128 0x2
	.long	.LASF292
	.byte	0x34
	.uleb128 0x2
	.long	.LASF293
	.byte	0x35
	.uleb128 0x2
	.long	.LASF294
	.byte	0x36
	.uleb128 0x2
	.long	.LASF295
	.byte	0x37
	.uleb128 0x2
	.long	.LASF296
	.byte	0x38
	.uleb128 0x2
	.long	.LASF297
	.byte	0x39
	.uleb128 0x2
	.long	.LASF298
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF299
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF300
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF301
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF302
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF303
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF304
	.byte	0x40
	.uleb128 0x2
	.long	.LASF305
	.byte	0x41
	.uleb128 0x2
	.long	.LASF306
	.byte	0x42
	.uleb128 0x2
	.long	.LASF307
	.byte	0x43
	.uleb128 0x2
	.long	.LASF308
	.byte	0x44
	.uleb128 0x2
	.long	.LASF309
	.byte	0x45
	.uleb128 0x2
	.long	.LASF310
	.byte	0x46
	.uleb128 0x2
	.long	.LASF311
	.byte	0x47
	.uleb128 0x2
	.long	.LASF312
	.byte	0x48
	.uleb128 0x2
	.long	.LASF313
	.byte	0x49
	.uleb128 0x2
	.long	.LASF314
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF315
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF316
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF317
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF318
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF319
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF320
	.byte	0x50
	.uleb128 0x2
	.long	.LASF321
	.byte	0x51
	.uleb128 0x2
	.long	.LASF322
	.byte	0x52
	.uleb128 0x2
	.long	.LASF323
	.byte	0x53
	.uleb128 0x2
	.long	.LASF324
	.byte	0x54
	.uleb128 0x2
	.long	.LASF325
	.byte	0x55
	.uleb128 0x2
	.long	.LASF326
	.byte	0x56
	.uleb128 0x2
	.long	.LASF327
	.byte	0x57
	.uleb128 0x2
	.long	.LASF328
	.byte	0x58
	.uleb128 0x2
	.long	.LASF329
	.byte	0x59
	.uleb128 0x2
	.long	.LASF330
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF331
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF332
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF333
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF334
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF335
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF336
	.byte	0x60
	.uleb128 0x2
	.long	.LASF337
	.byte	0x61
	.uleb128 0x2
	.long	.LASF338
	.byte	0x62
	.uleb128 0x2
	.long	.LASF339
	.byte	0x63
	.uleb128 0x2
	.long	.LASF340
	.byte	0x64
	.uleb128 0x2
	.long	.LASF341
	.byte	0x65
	.uleb128 0x2
	.long	.LASF342
	.byte	0x66
	.uleb128 0x2
	.long	.LASF343
	.byte	0x67
	.uleb128 0x2
	.long	.LASF344
	.byte	0x68
	.uleb128 0x2
	.long	.LASF345
	.byte	0x69
	.uleb128 0x2
	.long	.LASF346
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF347
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF348
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF349
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF350
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF351
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF352
	.byte	0x70
	.uleb128 0x2
	.long	.LASF353
	.byte	0x71
	.uleb128 0x2
	.long	.LASF354
	.byte	0x72
	.uleb128 0x2
	.long	.LASF355
	.byte	0x73
	.uleb128 0x2
	.long	.LASF356
	.byte	0x74
	.uleb128 0x2
	.long	.LASF357
	.byte	0x75
	.uleb128 0x2
	.long	.LASF358
	.byte	0x76
	.uleb128 0x2
	.long	.LASF359
	.byte	0x77
	.uleb128 0x2
	.long	.LASF360
	.byte	0x78
	.uleb128 0x2
	.long	.LASF361
	.byte	0x79
	.uleb128 0x2
	.long	.LASF362
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF363
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF364
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF365
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF366
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF367
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF368
	.byte	0x80
	.uleb128 0x2
	.long	.LASF369
	.byte	0x81
	.uleb128 0x2
	.long	.LASF370
	.byte	0x82
	.uleb128 0x2
	.long	.LASF371
	.byte	0x83
	.uleb128 0x2
	.long	.LASF372
	.byte	0x84
	.uleb128 0x2
	.long	.LASF373
	.byte	0x85
	.uleb128 0x2
	.long	.LASF374
	.byte	0x86
	.uleb128 0x2
	.long	.LASF375
	.byte	0x87
	.uleb128 0x2
	.long	.LASF376
	.byte	0x88
	.uleb128 0x2
	.long	.LASF377
	.byte	0x89
	.uleb128 0x2
	.long	.LASF378
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF379
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF380
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF381
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF382
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF383
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF384
	.byte	0x90
	.uleb128 0x2
	.long	.LASF385
	.byte	0x91
	.uleb128 0x2
	.long	.LASF386
	.byte	0x92
	.uleb128 0x2
	.long	.LASF387
	.byte	0x93
	.uleb128 0x2
	.long	.LASF388
	.byte	0x94
	.uleb128 0x2
	.long	.LASF389
	.byte	0x95
	.uleb128 0x2
	.long	.LASF390
	.byte	0x96
	.uleb128 0x2
	.long	.LASF391
	.byte	0x97
	.uleb128 0x2
	.long	.LASF392
	.byte	0x98
	.uleb128 0x2
	.long	.LASF393
	.byte	0x99
	.uleb128 0x2
	.long	.LASF394
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF395
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF396
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF397
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF398
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF399
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF400
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF401
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF402
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF403
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF404
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF405
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF406
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF407
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF408
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF409
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF410
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF411
	.byte	0xab
	.uleb128 0x2
	.long	.LASF412
	.byte	0xac
	.uleb128 0x2
	.long	.LASF413
	.byte	0xad
	.uleb128 0x2
	.long	.LASF414
	.byte	0xae
	.uleb128 0x2
	.long	.LASF415
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF416
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF417
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF418
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF419
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF420
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF421
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF422
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF423
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF424
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF425
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF426
	.byte	0xba
	.uleb128 0x2
	.long	.LASF427
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF428
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF429
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF430
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF431
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF432
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF433
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF434
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF435
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF436
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF437
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF438
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF439
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF440
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF441
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF442
	.byte	0xca
	.uleb128 0x2
	.long	.LASF443
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF444
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF445
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF446
	.byte	0xce
	.uleb128 0x2
	.long	.LASF447
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF448
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF449
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF450
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF451
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF452
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF453
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF454
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF455
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF456
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF457
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF458
	.byte	0xda
	.uleb128 0x2
	.long	.LASF459
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF460
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF461
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF462
	.byte	0xde
	.uleb128 0x2
	.long	.LASF463
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF464
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF465
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF466
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF467
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF468
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF469
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF470
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF471
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF472
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF473
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF474
	.byte	0xea
	.uleb128 0x2
	.long	.LASF475
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF476
	.byte	0xec
	.uleb128 0x2
	.long	.LASF477
	.byte	0xed
	.uleb128 0x2
	.long	.LASF478
	.byte	0xee
	.uleb128 0x2
	.long	.LASF479
	.byte	0xef
	.uleb128 0x2
	.long	.LASF480
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF481
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF482
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF483
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF484
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF485
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF486
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF487
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF488
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF489
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF490
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF491
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF492
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF493
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF494
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF495
	.byte	0xff
	.uleb128 0x1
	.long	.LASF496
	.value	0x100
	.uleb128 0x1
	.long	.LASF497
	.value	0x101
	.uleb128 0x1
	.long	.LASF498
	.value	0x102
	.uleb128 0x1
	.long	.LASF499
	.value	0x103
	.uleb128 0x1
	.long	.LASF500
	.value	0x104
	.uleb128 0x1
	.long	.LASF501
	.value	0x105
	.uleb128 0x1
	.long	.LASF502
	.value	0x106
	.uleb128 0x1
	.long	.LASF503
	.value	0x107
	.uleb128 0x1
	.long	.LASF504
	.value	0x108
	.uleb128 0x1
	.long	.LASF505
	.value	0x109
	.uleb128 0x1
	.long	.LASF506
	.value	0x10a
	.uleb128 0x1
	.long	.LASF507
	.value	0x10b
	.uleb128 0x1
	.long	.LASF508
	.value	0x10c
	.uleb128 0x1
	.long	.LASF509
	.value	0x10d
	.uleb128 0x1
	.long	.LASF510
	.value	0x10e
	.uleb128 0x1
	.long	.LASF511
	.value	0x10f
	.uleb128 0x1
	.long	.LASF512
	.value	0x110
	.uleb128 0x1
	.long	.LASF513
	.value	0x111
	.uleb128 0x1
	.long	.LASF514
	.value	0x112
	.uleb128 0x1
	.long	.LASF515
	.value	0x113
	.uleb128 0x1
	.long	.LASF516
	.value	0x114
	.uleb128 0x1
	.long	.LASF517
	.value	0x115
	.uleb128 0x1
	.long	.LASF518
	.value	0x116
	.uleb128 0x1
	.long	.LASF519
	.value	0x117
	.uleb128 0x1
	.long	.LASF520
	.value	0x118
	.uleb128 0x1
	.long	.LASF521
	.value	0x119
	.uleb128 0x1
	.long	.LASF522
	.value	0x11a
	.uleb128 0x1
	.long	.LASF523
	.value	0x11b
	.uleb128 0x1
	.long	.LASF524
	.value	0x11c
	.uleb128 0x1
	.long	.LASF525
	.value	0x11d
	.uleb128 0x1
	.long	.LASF526
	.value	0x11e
	.uleb128 0x1
	.long	.LASF527
	.value	0x11f
	.uleb128 0x1
	.long	.LASF528
	.value	0x120
	.uleb128 0x1
	.long	.LASF529
	.value	0x121
	.uleb128 0x1
	.long	.LASF530
	.value	0x122
	.uleb128 0x1
	.long	.LASF531
	.value	0x123
	.uleb128 0x1
	.long	.LASF532
	.value	0x124
	.uleb128 0x1
	.long	.LASF533
	.value	0x125
	.uleb128 0x1
	.long	.LASF534
	.value	0x126
	.uleb128 0x1
	.long	.LASF535
	.value	0x127
	.uleb128 0x1
	.long	.LASF536
	.value	0x128
	.uleb128 0x1
	.long	.LASF537
	.value	0x129
	.uleb128 0x1
	.long	.LASF538
	.value	0x12a
	.uleb128 0x1
	.long	.LASF539
	.value	0x12b
	.uleb128 0x1
	.long	.LASF540
	.value	0x12c
	.uleb128 0x1
	.long	.LASF541
	.value	0x12d
	.uleb128 0x1
	.long	.LASF542
	.value	0x12e
	.uleb128 0x1
	.long	.LASF543
	.value	0x12f
	.uleb128 0x1
	.long	.LASF544
	.value	0x130
	.uleb128 0x1
	.long	.LASF545
	.value	0x131
	.uleb128 0x1
	.long	.LASF546
	.value	0x132
	.uleb128 0x1
	.long	.LASF547
	.value	0x133
	.uleb128 0x1
	.long	.LASF548
	.value	0x134
	.uleb128 0x1
	.long	.LASF549
	.value	0x135
	.uleb128 0x1
	.long	.LASF550
	.value	0x136
	.uleb128 0x1
	.long	.LASF551
	.value	0x137
	.uleb128 0x1
	.long	.LASF552
	.value	0x138
	.uleb128 0x1
	.long	.LASF553
	.value	0x139
	.uleb128 0x1
	.long	.LASF554
	.value	0x13a
	.uleb128 0x1
	.long	.LASF555
	.value	0x13b
	.uleb128 0x1
	.long	.LASF556
	.value	0x13c
	.uleb128 0x1
	.long	.LASF557
	.value	0x13d
	.uleb128 0x1
	.long	.LASF558
	.value	0x13e
	.uleb128 0x1
	.long	.LASF559
	.value	0x13f
	.uleb128 0x1
	.long	.LASF560
	.value	0x140
	.uleb128 0x1
	.long	.LASF561
	.value	0x141
	.uleb128 0x1
	.long	.LASF562
	.value	0x142
	.uleb128 0x1
	.long	.LASF563
	.value	0x143
	.uleb128 0x1
	.long	.LASF564
	.value	0x144
	.uleb128 0x1
	.long	.LASF565
	.value	0x145
	.uleb128 0x1
	.long	.LASF566
	.value	0x146
	.uleb128 0x1
	.long	.LASF567
	.value	0x147
	.uleb128 0x1
	.long	.LASF568
	.value	0x148
	.uleb128 0x1
	.long	.LASF569
	.value	0x149
	.uleb128 0x1
	.long	.LASF570
	.value	0x14a
	.uleb128 0x1
	.long	.LASF571
	.value	0x14b
	.uleb128 0x1
	.long	.LASF572
	.value	0x14c
	.uleb128 0x1
	.long	.LASF573
	.value	0x14d
	.uleb128 0x1
	.long	.LASF574
	.value	0x14e
	.uleb128 0x1
	.long	.LASF575
	.value	0x14f
	.uleb128 0x1
	.long	.LASF576
	.value	0x150
	.uleb128 0x1
	.long	.LASF577
	.value	0x151
	.uleb128 0x1
	.long	.LASF578
	.value	0x152
	.uleb128 0x1
	.long	.LASF579
	.value	0x153
	.uleb128 0x1
	.long	.LASF580
	.value	0x154
	.uleb128 0x1
	.long	.LASF581
	.value	0x155
	.uleb128 0x1
	.long	.LASF582
	.value	0x156
	.uleb128 0x1
	.long	.LASF583
	.value	0x157
	.uleb128 0x1
	.long	.LASF584
	.value	0x158
	.uleb128 0x1
	.long	.LASF585
	.value	0x159
	.uleb128 0x1
	.long	.LASF586
	.value	0x15a
	.uleb128 0x1
	.long	.LASF587
	.value	0x15b
	.uleb128 0x1
	.long	.LASF588
	.value	0x15c
	.uleb128 0x1
	.long	.LASF589
	.value	0x15d
	.uleb128 0x1
	.long	.LASF590
	.value	0x15e
	.uleb128 0x1
	.long	.LASF591
	.value	0x15f
	.uleb128 0x1
	.long	.LASF592
	.value	0x160
	.uleb128 0x1
	.long	.LASF593
	.value	0x161
	.uleb128 0x1
	.long	.LASF594
	.value	0x162
	.uleb128 0x1
	.long	.LASF595
	.value	0x163
	.uleb128 0x1
	.long	.LASF596
	.value	0x164
	.uleb128 0x1
	.long	.LASF597
	.value	0x165
	.uleb128 0x1
	.long	.LASF598
	.value	0x166
	.uleb128 0x1
	.long	.LASF599
	.value	0x167
	.uleb128 0x1
	.long	.LASF600
	.value	0x168
	.uleb128 0x1
	.long	.LASF601
	.value	0x169
	.uleb128 0x1
	.long	.LASF602
	.value	0x16a
	.uleb128 0x1
	.long	.LASF603
	.value	0x16b
	.uleb128 0x1
	.long	.LASF604
	.value	0x16c
	.uleb128 0x1
	.long	.LASF605
	.value	0x16d
	.uleb128 0x1
	.long	.LASF606
	.value	0x16e
	.uleb128 0x1
	.long	.LASF607
	.value	0x16f
	.uleb128 0x1
	.long	.LASF608
	.value	0x170
	.uleb128 0x1
	.long	.LASF609
	.value	0x171
	.uleb128 0x1
	.long	.LASF610
	.value	0x172
	.uleb128 0x1
	.long	.LASF611
	.value	0x173
	.uleb128 0x1
	.long	.LASF612
	.value	0x174
	.uleb128 0x1
	.long	.LASF613
	.value	0x175
	.uleb128 0x1
	.long	.LASF614
	.value	0x176
	.uleb128 0x1
	.long	.LASF615
	.value	0x177
	.uleb128 0x1
	.long	.LASF616
	.value	0x178
	.uleb128 0x1
	.long	.LASF617
	.value	0x179
	.uleb128 0x1
	.long	.LASF618
	.value	0x17a
	.uleb128 0x1
	.long	.LASF619
	.value	0x17b
	.uleb128 0x1
	.long	.LASF620
	.value	0x17c
	.uleb128 0x1
	.long	.LASF621
	.value	0x17d
	.uleb128 0x1
	.long	.LASF622
	.value	0x17e
	.uleb128 0x1
	.long	.LASF623
	.value	0x17f
	.uleb128 0x1
	.long	.LASF624
	.value	0x180
	.uleb128 0x1
	.long	.LASF625
	.value	0x181
	.uleb128 0x1
	.long	.LASF626
	.value	0x182
	.uleb128 0x1
	.long	.LASF627
	.value	0x183
	.uleb128 0x1
	.long	.LASF628
	.value	0x184
	.uleb128 0x1
	.long	.LASF629
	.value	0x185
	.uleb128 0x1
	.long	.LASF630
	.value	0x186
	.uleb128 0x1
	.long	.LASF631
	.value	0x187
	.uleb128 0x1
	.long	.LASF632
	.value	0x188
	.uleb128 0x1
	.long	.LASF633
	.value	0x189
	.uleb128 0x1
	.long	.LASF634
	.value	0x18a
	.uleb128 0x1
	.long	.LASF635
	.value	0x18b
	.uleb128 0x1
	.long	.LASF636
	.value	0x18c
	.uleb128 0x1
	.long	.LASF637
	.value	0x18d
	.uleb128 0x1
	.long	.LASF638
	.value	0x18e
	.uleb128 0x1
	.long	.LASF639
	.value	0x18f
	.uleb128 0x1
	.long	.LASF640
	.value	0x190
	.uleb128 0x1
	.long	.LASF641
	.value	0x191
	.uleb128 0x1
	.long	.LASF642
	.value	0x192
	.uleb128 0x1
	.long	.LASF643
	.value	0x193
	.uleb128 0x1
	.long	.LASF644
	.value	0x194
	.uleb128 0x1
	.long	.LASF645
	.value	0x195
	.uleb128 0x1
	.long	.LASF646
	.value	0x196
	.uleb128 0x1
	.long	.LASF647
	.value	0x197
	.uleb128 0x1
	.long	.LASF648
	.value	0x198
	.uleb128 0x1
	.long	.LASF649
	.value	0x199
	.uleb128 0x1
	.long	.LASF650
	.value	0x19a
	.uleb128 0x1
	.long	.LASF651
	.value	0x19b
	.uleb128 0x1
	.long	.LASF652
	.value	0x19c
	.uleb128 0x1
	.long	.LASF653
	.value	0x19d
	.uleb128 0x1
	.long	.LASF654
	.value	0x19e
	.uleb128 0x1
	.long	.LASF655
	.value	0x19f
	.uleb128 0x1
	.long	.LASF656
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF657
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF658
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF659
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF660
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF661
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF662
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF663
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF664
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF665
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF666
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF667
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF668
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF669
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF670
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF671
	.value	0x1af
	.uleb128 0x1
	.long	.LASF672
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF673
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF674
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF675
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF676
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF677
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF678
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF679
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF680
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF681
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF682
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF683
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF684
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF685
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF686
	.value	0x1be
	.uleb128 0x1
	.long	.LASF687
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF688
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF689
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF690
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF691
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF692
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF693
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF694
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF695
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF696
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF697
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF698
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF699
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF700
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF701
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF702
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF703
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF704
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF705
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF706
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF707
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF708
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF709
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF710
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF711
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF712
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF713
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF714
	.value	0x1da
	.uleb128 0x1
	.long	.LASF715
	.value	0x1db
	.uleb128 0x1
	.long	.LASF716
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF717
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF718
	.value	0x1de
	.uleb128 0x1
	.long	.LASF719
	.value	0x1df
	.uleb128 0x1
	.long	.LASF720
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF721
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF722
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF723
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF724
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF725
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF726
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF727
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF728
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF729
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF730
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF731
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF732
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF733
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF734
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF735
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF736
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF737
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF738
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF739
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF740
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF741
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF742
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF743
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF744
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF745
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF746
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF747
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF748
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF749
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF750
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF751
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF752
	.value	0x200
	.uleb128 0x1
	.long	.LASF753
	.value	0x201
	.uleb128 0x1
	.long	.LASF754
	.value	0x202
	.uleb128 0x1
	.long	.LASF755
	.value	0x203
	.uleb128 0x1
	.long	.LASF756
	.value	0x204
	.uleb128 0x1
	.long	.LASF757
	.value	0x205
	.uleb128 0x1
	.long	.LASF758
	.value	0x206
	.uleb128 0x1
	.long	.LASF759
	.value	0x207
	.uleb128 0x1
	.long	.LASF760
	.value	0x208
	.uleb128 0x1
	.long	.LASF761
	.value	0x209
	.uleb128 0x1
	.long	.LASF762
	.value	0x20a
	.uleb128 0x1
	.long	.LASF763
	.value	0x20b
	.uleb128 0x1
	.long	.LASF764
	.value	0x20c
	.uleb128 0x1
	.long	.LASF765
	.value	0x20d
	.uleb128 0x1
	.long	.LASF766
	.value	0x20e
	.uleb128 0x1
	.long	.LASF767
	.value	0x20f
	.uleb128 0x1
	.long	.LASF768
	.value	0x210
	.uleb128 0x1
	.long	.LASF769
	.value	0x211
	.uleb128 0x1
	.long	.LASF770
	.value	0x212
	.uleb128 0x1
	.long	.LASF771
	.value	0x213
	.uleb128 0x1
	.long	.LASF772
	.value	0x214
	.uleb128 0x1
	.long	.LASF773
	.value	0x215
	.uleb128 0x1
	.long	.LASF774
	.value	0x216
	.uleb128 0x1
	.long	.LASF775
	.value	0x217
	.uleb128 0x1
	.long	.LASF776
	.value	0x218
	.uleb128 0x1
	.long	.LASF777
	.value	0x219
	.uleb128 0x1
	.long	.LASF778
	.value	0x21a
	.uleb128 0x1
	.long	.LASF779
	.value	0x21b
	.uleb128 0x1
	.long	.LASF780
	.value	0x21c
	.uleb128 0x1
	.long	.LASF781
	.value	0x21d
	.uleb128 0x1
	.long	.LASF782
	.value	0x21e
	.uleb128 0x1
	.long	.LASF783
	.value	0x21f
	.uleb128 0x1
	.long	.LASF784
	.value	0x220
	.uleb128 0x1
	.long	.LASF785
	.value	0x221
	.uleb128 0x1
	.long	.LASF786
	.value	0x222
	.uleb128 0x1
	.long	.LASF787
	.value	0x223
	.uleb128 0x1
	.long	.LASF788
	.value	0x224
	.uleb128 0x1
	.long	.LASF789
	.value	0x225
	.uleb128 0x1
	.long	.LASF790
	.value	0x226
	.uleb128 0x1
	.long	.LASF791
	.value	0x227
	.uleb128 0x1
	.long	.LASF792
	.value	0x228
	.uleb128 0x1
	.long	.LASF793
	.value	0x229
	.uleb128 0x1
	.long	.LASF794
	.value	0x22a
	.uleb128 0x1
	.long	.LASF795
	.value	0x22b
	.uleb128 0x1
	.long	.LASF796
	.value	0x22c
	.uleb128 0x1
	.long	.LASF797
	.value	0x22d
	.uleb128 0x1
	.long	.LASF798
	.value	0x22e
	.uleb128 0x1
	.long	.LASF799
	.value	0x22f
	.uleb128 0x1
	.long	.LASF800
	.value	0x230
	.uleb128 0x1
	.long	.LASF801
	.value	0x231
	.uleb128 0x1
	.long	.LASF802
	.value	0x232
	.uleb128 0x1
	.long	.LASF803
	.value	0x233
	.uleb128 0x1
	.long	.LASF804
	.value	0x234
	.uleb128 0x1
	.long	.LASF805
	.value	0x235
	.uleb128 0x1
	.long	.LASF806
	.value	0x236
	.uleb128 0x1
	.long	.LASF807
	.value	0x237
	.uleb128 0x1
	.long	.LASF808
	.value	0x238
	.uleb128 0x1
	.long	.LASF809
	.value	0x239
	.uleb128 0x1
	.long	.LASF810
	.value	0x23a
	.uleb128 0x1
	.long	.LASF811
	.value	0x23b
	.uleb128 0x1
	.long	.LASF812
	.value	0x23c
	.uleb128 0x1
	.long	.LASF813
	.value	0x23d
	.uleb128 0x1
	.long	.LASF814
	.value	0x23e
	.uleb128 0x1
	.long	.LASF815
	.value	0x23f
	.uleb128 0x1
	.long	.LASF816
	.value	0x240
	.uleb128 0x1
	.long	.LASF817
	.value	0x241
	.uleb128 0x1
	.long	.LASF818
	.value	0x242
	.uleb128 0x1
	.long	.LASF819
	.value	0x243
	.uleb128 0x1
	.long	.LASF820
	.value	0x244
	.uleb128 0x1
	.long	.LASF821
	.value	0x245
	.uleb128 0x1
	.long	.LASF822
	.value	0x246
	.uleb128 0x1
	.long	.LASF823
	.value	0x247
	.uleb128 0x1
	.long	.LASF824
	.value	0x248
	.uleb128 0x1
	.long	.LASF825
	.value	0x249
	.uleb128 0x1
	.long	.LASF826
	.value	0x24a
	.uleb128 0x1
	.long	.LASF827
	.value	0x24b
	.uleb128 0x1
	.long	.LASF828
	.value	0x24c
	.uleb128 0x1
	.long	.LASF829
	.value	0x24d
	.uleb128 0x1
	.long	.LASF830
	.value	0x24e
	.uleb128 0x1
	.long	.LASF831
	.value	0x24f
	.uleb128 0x1
	.long	.LASF832
	.value	0x250
	.uleb128 0x1
	.long	.LASF833
	.value	0x251
	.uleb128 0x1
	.long	.LASF834
	.value	0x252
	.uleb128 0x1
	.long	.LASF835
	.value	0x253
	.uleb128 0x1
	.long	.LASF836
	.value	0x254
	.uleb128 0x1
	.long	.LASF837
	.value	0x255
	.uleb128 0x1
	.long	.LASF838
	.value	0x256
	.uleb128 0x1
	.long	.LASF839
	.value	0x257
	.uleb128 0x1
	.long	.LASF840
	.value	0x258
	.uleb128 0x1
	.long	.LASF841
	.value	0x259
	.uleb128 0x1
	.long	.LASF842
	.value	0x25a
	.uleb128 0x1
	.long	.LASF843
	.value	0x25b
	.uleb128 0x1
	.long	.LASF844
	.value	0x25c
	.uleb128 0x1
	.long	.LASF845
	.value	0x25d
	.uleb128 0x1
	.long	.LASF846
	.value	0x25e
	.uleb128 0x1
	.long	.LASF847
	.value	0x25f
	.uleb128 0x1
	.long	.LASF848
	.value	0x260
	.uleb128 0x1
	.long	.LASF849
	.value	0x261
	.uleb128 0x1
	.long	.LASF850
	.value	0x262
	.uleb128 0x1
	.long	.LASF851
	.value	0x263
	.uleb128 0x1
	.long	.LASF852
	.value	0x264
	.uleb128 0x1
	.long	.LASF853
	.value	0x265
	.uleb128 0x1
	.long	.LASF854
	.value	0x266
	.uleb128 0x1
	.long	.LASF855
	.value	0x267
	.uleb128 0x1
	.long	.LASF856
	.value	0x268
	.uleb128 0x1
	.long	.LASF857
	.value	0x269
	.uleb128 0x1
	.long	.LASF858
	.value	0x26a
	.uleb128 0x1
	.long	.LASF859
	.value	0x26b
	.uleb128 0x1
	.long	.LASF860
	.value	0x26c
	.uleb128 0x1
	.long	.LASF861
	.value	0x26d
	.uleb128 0x1
	.long	.LASF862
	.value	0x26e
	.uleb128 0x1
	.long	.LASF863
	.value	0x26f
	.uleb128 0x1
	.long	.LASF864
	.value	0x270
	.uleb128 0x1
	.long	.LASF865
	.value	0x271
	.uleb128 0x1
	.long	.LASF866
	.value	0x272
	.uleb128 0x1
	.long	.LASF867
	.value	0x273
	.uleb128 0x1
	.long	.LASF868
	.value	0x274
	.uleb128 0x1
	.long	.LASF869
	.value	0x275
	.uleb128 0x1
	.long	.LASF870
	.value	0x276
	.uleb128 0x1
	.long	.LASF871
	.value	0x277
	.uleb128 0x1
	.long	.LASF872
	.value	0x278
	.uleb128 0x1
	.long	.LASF873
	.value	0x279
	.uleb128 0x1
	.long	.LASF874
	.value	0x27a
	.uleb128 0x1
	.long	.LASF875
	.value	0x27b
	.uleb128 0x1
	.long	.LASF876
	.value	0x27c
	.uleb128 0x1
	.long	.LASF877
	.value	0x27d
	.uleb128 0x1
	.long	.LASF878
	.value	0x27e
	.uleb128 0x1
	.long	.LASF879
	.value	0x27f
	.uleb128 0x1
	.long	.LASF880
	.value	0x280
	.uleb128 0x1
	.long	.LASF881
	.value	0x281
	.uleb128 0x1
	.long	.LASF882
	.value	0x282
	.uleb128 0x1
	.long	.LASF883
	.value	0x283
	.uleb128 0x1
	.long	.LASF884
	.value	0x284
	.uleb128 0x1
	.long	.LASF885
	.value	0x285
	.uleb128 0x1
	.long	.LASF886
	.value	0x286
	.uleb128 0x1
	.long	.LASF887
	.value	0x287
	.uleb128 0x1
	.long	.LASF888
	.value	0x288
	.uleb128 0x1
	.long	.LASF889
	.value	0x289
	.uleb128 0x1
	.long	.LASF890
	.value	0x28a
	.uleb128 0x1
	.long	.LASF891
	.value	0x28b
	.uleb128 0x1
	.long	.LASF892
	.value	0x28c
	.uleb128 0x1
	.long	.LASF893
	.value	0x28d
	.uleb128 0x1
	.long	.LASF894
	.value	0x28e
	.uleb128 0x1
	.long	.LASF895
	.value	0x28f
	.uleb128 0x1
	.long	.LASF896
	.value	0x290
	.uleb128 0x1
	.long	.LASF897
	.value	0x291
	.uleb128 0x1
	.long	.LASF898
	.value	0x292
	.uleb128 0x1
	.long	.LASF899
	.value	0x293
	.uleb128 0x1
	.long	.LASF900
	.value	0x294
	.uleb128 0x1
	.long	.LASF901
	.value	0x295
	.uleb128 0x1
	.long	.LASF902
	.value	0x296
	.uleb128 0x1
	.long	.LASF903
	.value	0x297
	.uleb128 0x1
	.long	.LASF904
	.value	0x298
	.uleb128 0x1
	.long	.LASF905
	.value	0x299
	.uleb128 0x1
	.long	.LASF906
	.value	0x29a
	.uleb128 0x1
	.long	.LASF907
	.value	0x29b
	.uleb128 0x1
	.long	.LASF908
	.value	0x29c
	.uleb128 0x1
	.long	.LASF909
	.value	0x29d
	.uleb128 0x1
	.long	.LASF910
	.value	0x29e
	.uleb128 0x1
	.long	.LASF911
	.value	0x29f
	.uleb128 0x1
	.long	.LASF912
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF913
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF914
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF915
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF916
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF917
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF918
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF919
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF920
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF921
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF922
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF923
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF924
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF925
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF926
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF927
	.value	0x2af
	.uleb128 0x1
	.long	.LASF928
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF929
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF930
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF931
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF932
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF933
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF934
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF935
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF936
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF937
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF938
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF939
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF940
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF941
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF942
	.value	0x2be
	.uleb128 0x1
	.long	.LASF943
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF944
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF945
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF946
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF947
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF948
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF949
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF950
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF951
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF952
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF953
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF954
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF955
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF956
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF957
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF958
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF959
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF960
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF961
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF962
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF963
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF964
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF965
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF966
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF967
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF968
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF969
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF970
	.value	0x2da
	.uleb128 0x1
	.long	.LASF971
	.value	0x2db
	.uleb128 0x1
	.long	.LASF972
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF973
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF974
	.value	0x2de
	.uleb128 0x1
	.long	.LASF975
	.value	0x2df
	.uleb128 0x1
	.long	.LASF976
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF977
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF978
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF979
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF980
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF981
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF982
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF983
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF984
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF985
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF986
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF987
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF988
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF989
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF990
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF991
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF992
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF993
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF994
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF995
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF996
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF997
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF998
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF999
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1008
	.value	0x300
	.uleb128 0x1
	.long	.LASF1009
	.value	0x301
	.uleb128 0x1
	.long	.LASF1010
	.value	0x302
	.uleb128 0x1
	.long	.LASF1011
	.value	0x303
	.uleb128 0x1
	.long	.LASF1012
	.value	0x304
	.uleb128 0x1
	.long	.LASF1013
	.value	0x305
	.uleb128 0x1
	.long	.LASF1014
	.value	0x306
	.uleb128 0x1
	.long	.LASF1015
	.value	0x307
	.uleb128 0x1
	.long	.LASF1016
	.value	0x308
	.uleb128 0x1
	.long	.LASF1017
	.value	0x309
	.uleb128 0x1
	.long	.LASF1018
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1019
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1020
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1021
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1022
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1023
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1024
	.value	0x310
	.uleb128 0x1
	.long	.LASF1025
	.value	0x311
	.uleb128 0x1
	.long	.LASF1026
	.value	0x312
	.uleb128 0x1
	.long	.LASF1027
	.value	0x313
	.uleb128 0x1
	.long	.LASF1028
	.value	0x314
	.uleb128 0x1
	.long	.LASF1029
	.value	0x315
	.uleb128 0x1
	.long	.LASF1030
	.value	0x316
	.uleb128 0x1
	.long	.LASF1031
	.value	0x317
	.uleb128 0x1
	.long	.LASF1032
	.value	0x318
	.uleb128 0x1
	.long	.LASF1033
	.value	0x319
	.uleb128 0x1
	.long	.LASF1034
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1035
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1036
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1037
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1038
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1039
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1040
	.value	0x320
	.uleb128 0x1
	.long	.LASF1041
	.value	0x321
	.uleb128 0x1
	.long	.LASF1042
	.value	0x322
	.uleb128 0x1
	.long	.LASF1043
	.value	0x323
	.uleb128 0x1
	.long	.LASF1044
	.value	0x324
	.uleb128 0x1
	.long	.LASF1045
	.value	0x325
	.uleb128 0x1
	.long	.LASF1046
	.value	0x326
	.uleb128 0x1
	.long	.LASF1047
	.value	0x327
	.uleb128 0x1
	.long	.LASF1048
	.value	0x328
	.uleb128 0x1
	.long	.LASF1049
	.value	0x329
	.uleb128 0x1
	.long	.LASF1050
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1051
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1052
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1053
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1054
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1055
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1056
	.value	0x330
	.uleb128 0x1
	.long	.LASF1057
	.value	0x331
	.uleb128 0x1
	.long	.LASF1058
	.value	0x332
	.uleb128 0x1
	.long	.LASF1059
	.value	0x333
	.uleb128 0x1
	.long	.LASF1060
	.value	0x334
	.uleb128 0x1
	.long	.LASF1061
	.value	0x335
	.uleb128 0x1
	.long	.LASF1062
	.value	0x336
	.uleb128 0x1
	.long	.LASF1063
	.value	0x337
	.uleb128 0x1
	.long	.LASF1064
	.value	0x338
	.uleb128 0x1
	.long	.LASF1065
	.value	0x339
	.uleb128 0x1
	.long	.LASF1066
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1067
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1068
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1069
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1070
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1071
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1072
	.value	0x340
	.uleb128 0x1
	.long	.LASF1073
	.value	0x341
	.uleb128 0x1
	.long	.LASF1074
	.value	0x342
	.uleb128 0x1
	.long	.LASF1075
	.value	0x343
	.uleb128 0x1
	.long	.LASF1076
	.value	0x344
	.uleb128 0x1
	.long	.LASF1077
	.value	0x345
	.uleb128 0x1
	.long	.LASF1078
	.value	0x346
	.uleb128 0x1
	.long	.LASF1079
	.value	0x347
	.uleb128 0x1
	.long	.LASF1080
	.value	0x348
	.uleb128 0x1
	.long	.LASF1081
	.value	0x349
	.uleb128 0x1
	.long	.LASF1082
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1083
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1084
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1085
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1086
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1087
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1088
	.value	0x350
	.uleb128 0x1
	.long	.LASF1089
	.value	0x351
	.uleb128 0x1
	.long	.LASF1090
	.value	0x352
	.uleb128 0x1
	.long	.LASF1091
	.value	0x353
	.uleb128 0x1
	.long	.LASF1092
	.value	0x354
	.uleb128 0x1
	.long	.LASF1093
	.value	0x355
	.uleb128 0x1
	.long	.LASF1094
	.value	0x356
	.uleb128 0x1
	.long	.LASF1095
	.value	0x357
	.uleb128 0x1
	.long	.LASF1096
	.value	0x358
	.uleb128 0x1
	.long	.LASF1097
	.value	0x359
	.uleb128 0x1
	.long	.LASF1098
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1099
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1100
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1101
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1102
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1103
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1104
	.value	0x360
	.uleb128 0x1
	.long	.LASF1105
	.value	0x361
	.uleb128 0x1
	.long	.LASF1106
	.value	0x362
	.uleb128 0x1
	.long	.LASF1107
	.value	0x363
	.uleb128 0x1
	.long	.LASF1108
	.value	0x364
	.uleb128 0x1
	.long	.LASF1109
	.value	0x365
	.uleb128 0x1
	.long	.LASF1110
	.value	0x366
	.uleb128 0x1
	.long	.LASF1111
	.value	0x367
	.uleb128 0x1
	.long	.LASF1112
	.value	0x368
	.uleb128 0x1
	.long	.LASF1113
	.value	0x369
	.uleb128 0x1
	.long	.LASF1114
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1115
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1116
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1117
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1118
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1119
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1120
	.value	0x370
	.uleb128 0x1
	.long	.LASF1121
	.value	0x371
	.uleb128 0x1
	.long	.LASF1122
	.value	0x372
	.uleb128 0x1
	.long	.LASF1123
	.value	0x373
	.uleb128 0x1
	.long	.LASF1124
	.value	0x374
	.uleb128 0x1
	.long	.LASF1125
	.value	0x375
	.uleb128 0x1
	.long	.LASF1126
	.value	0x376
	.uleb128 0x1
	.long	.LASF1127
	.value	0x377
	.uleb128 0x1
	.long	.LASF1128
	.value	0x378
	.uleb128 0x1
	.long	.LASF1129
	.value	0x379
	.uleb128 0x1
	.long	.LASF1130
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1131
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1132
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1133
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1134
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1135
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1136
	.value	0x380
	.uleb128 0x1
	.long	.LASF1137
	.value	0x381
	.uleb128 0x1
	.long	.LASF1138
	.value	0x382
	.uleb128 0x1
	.long	.LASF1139
	.value	0x383
	.uleb128 0x1
	.long	.LASF1140
	.value	0x384
	.uleb128 0x1
	.long	.LASF1141
	.value	0x385
	.uleb128 0x1
	.long	.LASF1142
	.value	0x386
	.uleb128 0x1
	.long	.LASF1143
	.value	0x387
	.uleb128 0x1
	.long	.LASF1144
	.value	0x388
	.uleb128 0x1
	.long	.LASF1145
	.value	0x389
	.uleb128 0x1
	.long	.LASF1146
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1147
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1148
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1149
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1150
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1151
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1152
	.value	0x390
	.uleb128 0x1
	.long	.LASF1153
	.value	0x391
	.uleb128 0x1
	.long	.LASF1154
	.value	0x392
	.uleb128 0x1
	.long	.LASF1155
	.value	0x393
	.uleb128 0x1
	.long	.LASF1156
	.value	0x394
	.uleb128 0x1
	.long	.LASF1157
	.value	0x395
	.uleb128 0x1
	.long	.LASF1158
	.value	0x396
	.uleb128 0x1
	.long	.LASF1159
	.value	0x397
	.uleb128 0x1
	.long	.LASF1160
	.value	0x398
	.uleb128 0x1
	.long	.LASF1161
	.value	0x399
	.uleb128 0x1
	.long	.LASF1162
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1163
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1164
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1165
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1166
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1167
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1189
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1190
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1191
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1192
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1193
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1194
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1195
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1196
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1197
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1198
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1199
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1200
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1201
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1202
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1203
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1204
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1205
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1206
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1207
	.value	0x3c7
	.byte	0
	.uleb128 0x25
	.byte	0x7
	.byte	0x4
	.long	0x9a
	.byte	0xd
	.value	0x48b
	.byte	0xe
	.long	0x2501
	.uleb128 0x2
	.long	.LASF1208
	.byte	0
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1218
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1219
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1220
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1221
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1222
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1223
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x89
	.byte	0
	.uleb128 0x8
	.long	0x9a
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x2520
	.uleb128 0x2
	.long	.LASF1346
	.byte	0
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.byte	0x9
	.long	0x2578
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xf
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1350
	.byte	0xf
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1351
	.byte	0xf
	.byte	0x28
	.byte	0xb
	.long	0xa8
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1352
	.byte	0xf
	.byte	0x29
	.byte	0xb
	.long	0xa8
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1353
	.byte	0xf
	.byte	0x2a
	.byte	0xa
	.long	0x4c7
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xf
	.byte	0x2b
	.byte	0xa
	.long	0x4c7
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF1355
	.byte	0xf
	.byte	0x2c
	.byte	0x3
	.long	0x2520
	.uleb128 0x17
	.long	.LASF1357
	.byte	0x10
	.byte	0xb8
	.byte	0x11
	.long	0x4bb
	.uleb128 0x18
	.long	.LASF1358
	.byte	0x33
	.byte	0x5
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	mb_used
	.uleb128 0x18
	.long	.LASF1359
	.byte	0x40
	.byte	0xa
	.long	0x2578
	.uleb128 0x9
	.byte	0x3
	.quad	emptycmd
	.uleb128 0x27
	.long	.LASF1396
	.byte	0x18
	.byte	0x3d
	.byte	0x9
	.long	0x4bb
	.uleb128 0x12
	.long	.LASF1360
	.byte	0x9
	.byte	0xec
	.byte	0xc
	.long	0x77
	.long	0x25dc
	.uleb128 0x7
	.long	0x377
	.byte	0
	.uleb128 0x13
	.long	.LASF1361
	.byte	0x9
	.value	0x174
	.byte	0xc
	.long	0x77
	.long	0x25fd
	.uleb128 0x7
	.long	0x37c
	.uleb128 0x7
	.long	0x366
	.uleb128 0x7
	.long	0x25fd
	.byte	0
	.uleb128 0x4
	.long	0x14a
	.uleb128 0x12
	.long	.LASF1362
	.byte	0x11
	.byte	0x3d
	.byte	0xe
	.long	0xeb
	.long	0x2622
	.uleb128 0x7
	.long	0xeb
	.uleb128 0x7
	.long	0x77
	.uleb128 0x7
	.long	0x6b
	.byte	0
	.uleb128 0x13
	.long	.LASF1363
	.byte	0x12
	.value	0x1e0
	.byte	0xc
	.long	0x77
	.long	0x2639
	.uleb128 0x7
	.long	0xd3
	.byte	0
	.uleb128 0x28
	.long	.LASF1364
	.byte	0x13
	.value	0x2f4
	.byte	0xd
	.long	0x264c
	.uleb128 0x7
	.long	0x77
	.byte	0
	.uleb128 0x9
	.long	.LASF1365
	.byte	0x14
	.byte	0x28
	.uleb128 0x9
	.long	.LASF1366
	.byte	0x15
	.byte	0x31
	.uleb128 0x9
	.long	.LASF1367
	.byte	0x16
	.byte	0x5e
	.uleb128 0x9
	.long	.LASF1368
	.byte	0x16
	.byte	0x30
	.uleb128 0x9
	.long	.LASF1369
	.byte	0x17
	.byte	0x88
	.uleb128 0x29
	.long	.LASF1397
	.byte	0x16
	.byte	0x29
	.byte	0x6
	.long	0x267d
	.uleb128 0x19
	.byte	0
	.uleb128 0x12
	.long	.LASF1370
	.byte	0xa
	.byte	0x43
	.byte	0xc
	.long	0x77
	.long	0x2698
	.uleb128 0x7
	.long	0x269d
	.uleb128 0x7
	.long	0xed
	.byte	0
	.uleb128 0x4
	.long	0xf7
	.uleb128 0xe
	.long	0x2698
	.uleb128 0x13
	.long	.LASF1371
	.byte	0x13
	.value	0x2a0
	.byte	0xe
	.long	0xeb
	.long	0x26b9
	.uleb128 0x7
	.long	0x6b
	.byte	0
	.uleb128 0x1a
	.long	.LASF1378
	.byte	0xa2
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x26f5
	.uleb128 0xa
	.long	.LASF1374
	.byte	0xa2
	.byte	0x15
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x19
	.uleb128 0xd
	.long	.LASF1373
	.byte	0xa4
	.byte	0xd
	.long	0x36b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x14
	.long	.LASF1383
	.byte	0x93
	.byte	0x7
	.long	0x2733
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2733
	.uleb128 0xa
	.long	.LASF1375
	.byte	0x93
	.byte	0x16
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"mem"
	.byte	0x95
	.byte	0xb
	.long	0x2733
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	0x4c7
	.uleb128 0x1b
	.long	.LASF1376
	.byte	0x8f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF1377
	.byte	0x8b
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF1379
	.byte	0x7e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2793
	.uleb128 0xa
	.long	.LASF1380
	.byte	0x7e
	.byte	0x14
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF1381
	.byte	0x74
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF1382
	.byte	0x6b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF1384
	.byte	0x58
	.byte	0x6
	.long	0x77
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2823
	.uleb128 0x15
	.string	"tp"
	.byte	0x5a
	.byte	0x14
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"tzp"
	.byte	0x5b
	.byte	0x15
	.long	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF1385
	.byte	0x5c
	.byte	0xb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.long	.LASF1386
	.byte	0x5d
	.byte	0x11
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	basetime.0
	.byte	0
	.uleb128 0x14
	.long	.LASF1387
	.byte	0x4c
	.byte	0x7
	.long	0x2733
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2853
	.uleb128 0xa
	.long	.LASF1388
	.byte	0x4c
	.byte	0x18
	.long	0x2853
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.long	0x77
	.uleb128 0x1d
	.long	.LASF1389
	.byte	0x47
	.byte	0x6
	.long	0x77
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF1390
	.byte	0x41
	.byte	0xb
	.long	0x2892
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.long	0x2578
	.uleb128 0x2a
	.long	.LASF1398
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.string	"on"
	.byte	0x38
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.string	"off"
	.byte	0x39
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF1391
	.byte	0x3a
	.byte	0x7
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1397:
	.string	"I_InitSound"
.LASF875:
	.string	"S_BSPI_RUN1"
.LASF876:
	.string	"S_BSPI_RUN2"
.LASF877:
	.string	"S_BSPI_RUN3"
.LASF878:
	.string	"S_BSPI_RUN4"
.LASF879:
	.string	"S_BSPI_RUN5"
.LASF880:
	.string	"S_BSPI_RUN6"
.LASF881:
	.string	"S_BSPI_RUN7"
.LASF882:
	.string	"S_BSPI_RUN8"
.LASF883:
	.string	"S_BSPI_RUN9"
.LASF168:
	.string	"SPR_YSKU"
.LASF530:
	.string	"S_FIRE10"
.LASF531:
	.string	"S_FIRE11"
.LASF532:
	.string	"S_FIRE12"
.LASF533:
	.string	"S_FIRE13"
.LASF534:
	.string	"S_FIRE14"
.LASF535:
	.string	"S_FIRE15"
.LASF536:
	.string	"S_FIRE16"
.LASF537:
	.string	"S_FIRE17"
.LASF55:
	.string	"_unused2"
.LASF539:
	.string	"S_FIRE19"
.LASF1342:
	.string	"MT_MISC84"
.LASF1275:
	.string	"MT_MISC20"
.LASF1098:
	.string	"S_MEGA2"
.LASF41:
	.string	"_fileno"
.LASF1100:
	.string	"S_MEGA4"
.LASF1279:
	.string	"MT_MISC24"
.LASF1280:
	.string	"MT_MISC25"
.LASF1282:
	.string	"MT_MISC26"
.LASF1283:
	.string	"MT_MISC27"
.LASF1284:
	.string	"MT_MISC28"
.LASF1287:
	.string	"MT_MISC29"
.LASF729:
	.string	"S_SARG_PAIN2"
.LASF72:
	.string	"wp_pistol"
.LASF209:
	.string	"SPR_COL1"
.LASF210:
	.string	"SPR_COL2"
.LASF211:
	.string	"SPR_COL3"
.LASF212:
	.string	"SPR_COL4"
.LASF221:
	.string	"SPR_COL5"
.LASF215:
	.string	"SPR_COL6"
.LASF540:
	.string	"S_FIRE20"
.LASF541:
	.string	"S_FIRE21"
.LASF542:
	.string	"S_FIRE22"
.LASF543:
	.string	"S_FIRE23"
.LASF544:
	.string	"S_FIRE24"
.LASF195:
	.string	"SPR_COLU"
.LASF546:
	.string	"S_FIRE26"
.LASF547:
	.string	"S_FIRE27"
.LASF548:
	.string	"S_FIRE28"
.LASF549:
	.string	"S_FIRE29"
.LASF1349:
	.string	"forwardmove"
.LASF1288:
	.string	"MT_MISC30"
.LASF1289:
	.string	"MT_MISC31"
.LASF1290:
	.string	"MT_MISC32"
.LASF1291:
	.string	"MT_MISC33"
.LASF891:
	.string	"S_BSPI_PAIN"
.LASF1293:
	.string	"MT_MISC35"
.LASF363:
	.string	"S_BFGEXP"
.LASF85:
	.string	"am_misl"
.LASF1296:
	.string	"MT_MISC38"
.LASF1297:
	.string	"MT_MISC39"
.LASF893:
	.string	"S_BSPI_DIE1"
.LASF1348:
	.string	"NUMPSPRITES"
.LASF898:
	.string	"S_BSPI_DIE6"
.LASF594:
	.string	"S_SKEL_RAISE4"
.LASF789:
	.string	"S_BOSS_RAISE1"
.LASF790:
	.string	"S_BOSS_RAISE2"
.LASF1222:
	.string	"MT_HEAD"
.LASF791:
	.string	"S_BOSS_RAISE3"
.LASF550:
	.string	"S_FIRE30"
.LASF695:
	.string	"S_TROO_PAIN"
.LASF984:
	.string	"S_SSWV_DIE1"
.LASF794:
	.string	"S_BOSS_RAISE6"
.LASF986:
	.string	"S_SSWV_DIE3"
.LASF987:
	.string	"S_SSWV_DIE4"
.LASF988:
	.string	"S_SSWV_DIE5"
.LASF163:
	.string	"SPR_BKEY"
.LASF806:
	.string	"S_BOS2_ATK1"
.LASF807:
	.string	"S_BOS2_ATK2"
.LASF808:
	.string	"S_BOS2_ATK3"
.LASF197:
	.string	"SPR_GOR1"
.LASF204:
	.string	"SPR_GOR2"
.LASF46:
	.string	"_shortbuf"
.LASF206:
	.string	"SPR_GOR4"
.LASF207:
	.string	"SPR_GOR5"
.LASF1300:
	.string	"MT_MISC42"
.LASF1301:
	.string	"MT_MISC43"
.LASF563:
	.string	"S_SKEL_RUN1"
.LASF564:
	.string	"S_SKEL_RUN2"
.LASF565:
	.string	"S_SKEL_RUN3"
.LASF566:
	.string	"S_SKEL_RUN4"
.LASF567:
	.string	"S_SKEL_RUN5"
.LASF568:
	.string	"S_SKEL_RUN6"
.LASF569:
	.string	"S_SKEL_RUN7"
.LASF570:
	.string	"S_SKEL_RUN8"
.LASF571:
	.string	"S_SKEL_RUN9"
.LASF75:
	.string	"wp_missile"
.LASF1049:
	.string	"S_BEXP2"
.LASF744:
	.string	"S_HEAD_ATK1"
.LASF745:
	.string	"S_HEAD_ATK2"
.LASF746:
	.string	"S_HEAD_ATK3"
.LASF998:
	.string	"S_SSWV_RAISE1"
.LASF999:
	.string	"S_SSWV_RAISE2"
.LASF1000:
	.string	"S_SSWV_RAISE3"
.LASF1001:
	.string	"S_SSWV_RAISE4"
.LASF1002:
	.string	"S_SSWV_RAISE5"
.LASF1217:
	.string	"MT_FATSHOT"
.LASF183:
	.string	"SPR_CELL"
.LASF184:
	.string	"SPR_CELP"
.LASF1164:
	.string	"S_HEARTCOL"
.LASF1358:
	.string	"mb_used"
.LASF1081:
	.string	"S_MEDI"
.LASF1088:
	.string	"S_PINV"
.LASF1266:
	.string	"MT_INS"
.LASF1309:
	.string	"MT_MISC51"
.LASF1310:
	.string	"MT_MISC52"
.LASF1264:
	.string	"MT_INV"
.LASF1312:
	.string	"MT_MISC54"
.LASF1178:
	.string	"S_BTORCHSHRT"
.LASF299:
	.string	"S_MISSILEUP"
.LASF1315:
	.string	"MT_MISC57"
.LASF1316:
	.string	"MT_MISC58"
.LASF1317:
	.string	"MT_MISC59"
.LASF476:
	.string	"S_SPOS_RAISE1"
.LASF23:
	.string	"overflow_arg_area"
.LASF270:
	.string	"S_SGUNFLASH1"
.LASF271:
	.string	"S_SGUNFLASH2"
.LASF818:
	.string	"S_BOS2_RAISE1"
.LASF819:
	.string	"S_BOS2_RAISE2"
.LASF820:
	.string	"S_BOS2_RAISE3"
.LASF821:
	.string	"S_BOS2_RAISE4"
.LASF822:
	.string	"S_BOS2_RAISE5"
.LASF27:
	.string	"_flags"
.LASF824:
	.string	"S_BOS2_RAISE7"
.LASF583:
	.string	"S_SKEL_PAIN"
.LASF1070:
	.string	"S_RKEY"
.LASF1375:
	.string	"length"
.LASF252:
	.string	"S_PISTOLUP"
.LASF938:
	.string	"S_CYBER_DIE8"
.LASF24:
	.string	"reg_save_area"
.LASF12:
	.string	"__off_t"
.LASF1318:
	.string	"MT_MISC60"
.LASF1319:
	.string	"MT_MISC61"
.LASF1320:
	.string	"MT_MISC62"
.LASF1321:
	.string	"MT_MISC63"
.LASF1322:
	.string	"MT_MISC64"
.LASF1323:
	.string	"MT_MISC65"
.LASF1324:
	.string	"MT_MISC66"
.LASF1325:
	.string	"MT_MISC67"
.LASF367:
	.string	"S_EXPLODE1"
.LASF368:
	.string	"S_EXPLODE2"
.LASF369:
	.string	"S_EXPLODE3"
.LASF558:
	.string	"S_TRACEEXP1"
.LASF559:
	.string	"S_TRACEEXP2"
.LASF560:
	.string	"S_TRACEEXP3"
.LASF946:
	.string	"S_PAIN_RUN5"
.LASF1048:
	.string	"S_BEXP"
.LASF947:
	.string	"S_PAIN_RUN6"
.LASF1165:
	.string	"S_HEARTCOL2"
.LASF344:
	.string	"S_RBALLX1"
.LASF1376:
	.string	"I_EndRead"
.LASF1249:
	.string	"MT_TELEPORTMAN"
.LASF47:
	.string	"_lock"
.LASF1328:
	.string	"MT_MISC70"
.LASF128:
	.string	"SPR_IFOG"
.LASF1330:
	.string	"MT_MISC72"
.LASF1331:
	.string	"MT_MISC73"
.LASF1332:
	.string	"MT_MISC74"
.LASF1333:
	.string	"MT_MISC75"
.LASF1334:
	.string	"MT_MISC76"
.LASF1171:
	.string	"S_GREENTORCH2"
.LASF1172:
	.string	"S_GREENTORCH3"
.LASF1173:
	.string	"S_GREENTORCH4"
.LASF1012:
	.string	"S_COMMKEEN9"
.LASF661:
	.string	"S_CPOS_PAIN2"
.LASF884:
	.string	"S_BSPI_RUN10"
.LASF885:
	.string	"S_BSPI_RUN11"
.LASF886:
	.string	"S_BSPI_RUN12"
.LASF968:
	.string	"S_SSWV_RUN1"
.LASF969:
	.string	"S_SSWV_RUN2"
.LASF970:
	.string	"S_SSWV_RUN3"
.LASF971:
	.string	"S_SSWV_RUN4"
.LASF972:
	.string	"S_SSWV_RUN5"
.LASF973:
	.string	"S_SSWV_RUN6"
.LASF974:
	.string	"S_SSWV_RUN7"
.LASF975:
	.string	"S_SSWV_RUN8"
.LASF1153:
	.string	"S_SKULLCOL"
.LASF1216:
	.string	"MT_FATSO"
.LASF697:
	.string	"S_TROO_DIE1"
.LASF698:
	.string	"S_TROO_DIE2"
.LASF699:
	.string	"S_TROO_DIE3"
.LASF700:
	.string	"S_TROO_DIE4"
.LASF701:
	.string	"S_TROO_DIE5"
.LASF1078:
	.string	"S_YSKULL"
.LASF1079:
	.string	"S_YSKULL2"
.LASF181:
	.string	"SPR_ROCK"
.LASF1241:
	.string	"MT_ROCKET"
.LASF1393:
	.string	"__builtin_va_list"
.LASF1340:
	.string	"MT_MISC82"
.LASF1341:
	.string	"MT_MISC83"
.LASF656:
	.string	"S_CPOS_ATK1"
.LASF657:
	.string	"S_CPOS_ATK2"
.LASF658:
	.string	"S_CPOS_ATK3"
.LASF659:
	.string	"S_CPOS_ATK4"
.LASF1208:
	.string	"MT_PLAYER"
.LASF193:
	.string	"SPR_SHOT"
.LASF385:
	.string	"S_IFOG2"
.LASF386:
	.string	"S_IFOG3"
.LASF387:
	.string	"S_IFOG4"
.LASF388:
	.string	"S_IFOG5"
.LASF122:
	.string	"SPR_PLSE"
.LASF114:
	.string	"SPR_PLSF"
.LASF113:
	.string	"SPR_PLSG"
.LASF781:
	.string	"S_BOSS_PAIN2"
.LASF481:
	.string	"S_VILE_STND"
.LASF1364:
	.string	"exit"
.LASF1009:
	.string	"S_COMMKEEN6"
.LASF1010:
	.string	"S_COMMKEEN7"
.LASF1011:
	.string	"S_COMMKEEN8"
.LASF121:
	.string	"SPR_PLSS"
.LASF860:
	.string	"S_SPID_PAIN2"
.LASF234:
	.string	"SPR_POB1"
.LASF235:
	.string	"SPR_POB2"
.LASF1082:
	.string	"S_SOUL"
.LASF1092:
	.string	"S_PSTR"
.LASF924:
	.string	"S_CYBER_ATK1"
.LASF925:
	.string	"S_CYBER_ATK2"
.LASF926:
	.string	"S_CYBER_ATK3"
.LASF927:
	.string	"S_CYBER_ATK4"
.LASF928:
	.string	"S_CYBER_ATK5"
.LASF929:
	.string	"S_CYBER_ATK6"
.LASF1119:
	.string	"S_BFUG"
.LASF160:
	.string	"SPR_FCAN"
.LASF602:
	.string	"S_FATT_STND"
.LASF1039:
	.string	"S_BRAINEXPLODE1"
.LASF1040:
	.string	"S_BRAINEXPLODE2"
.LASF1041:
	.string	"S_BRAINEXPLODE3"
.LASF323:
	.string	"S_BFGUP"
.LASF1370:
	.string	"gettimeofday"
.LASF165:
	.string	"SPR_YKEY"
.LASF710:
	.string	"S_TROO_RAISE1"
.LASF711:
	.string	"S_TROO_RAISE2"
.LASF712:
	.string	"S_TROO_RAISE3"
.LASF713:
	.string	"S_TROO_RAISE4"
.LASF714:
	.string	"S_TROO_RAISE5"
.LASF1123:
	.string	"S_PLAS"
.LASF1005:
	.string	"S_COMMKEEN2"
.LASF1006:
	.string	"S_COMMKEEN3"
.LASF1007:
	.string	"S_COMMKEEN4"
.LASF1008:
	.string	"S_COMMKEEN5"
.LASF389:
	.string	"S_PLAY"
.LASF955:
	.string	"S_PAIN_DIE2"
.LASF956:
	.string	"S_PAIN_DIE3"
.LASF957:
	.string	"S_PAIN_DIE4"
.LASF958:
	.string	"S_PAIN_DIE5"
.LASF959:
	.string	"S_PAIN_DIE6"
.LASF1219:
	.string	"MT_TROOP"
.LASF510:
	.string	"S_VILE_PAIN2"
.LASF638:
	.string	"S_FATT_RAISE1"
.LASF76:
	.string	"wp_plasma"
.LASF640:
	.string	"S_FATT_RAISE3"
.LASF641:
	.string	"S_FATT_RAISE4"
.LASF642:
	.string	"S_FATT_RAISE5"
.LASF643:
	.string	"S_FATT_RAISE6"
.LASF33:
	.string	"_IO_write_end"
.LASF645:
	.string	"S_FATT_RAISE8"
.LASF354:
	.string	"S_ROCKET"
.LASF1240:
	.string	"MT_HEADSHOT"
.LASF907:
	.string	"S_ARACH_PLAZ"
.LASF1146:
	.string	"S_STALAGTITE"
.LASF748:
	.string	"S_HEAD_PAIN2"
.LASF749:
	.string	"S_HEAD_PAIN3"
.LASF1394:
	.string	"__va_list_tag"
.LASF98:
	.string	"byte"
.LASF69:
	.string	"it_redskull"
.LASF1247:
	.string	"MT_TFOG"
.LASF457:
	.string	"S_SPOS_ATK1"
.LASF458:
	.string	"S_SPOS_ATK2"
.LASF459:
	.string	"S_SPOS_ATK3"
.LASF394:
	.string	"S_PLAY_ATK1"
.LASF395:
	.string	"S_PLAY_ATK2"
.LASF1391:
	.string	"total"
.LASF148:
	.string	"SPR_APLS"
.LASF1175:
	.string	"S_REDTORCH2"
.LASF1176:
	.string	"S_REDTORCH3"
.LASF1177:
	.string	"S_REDTORCH4"
.LASF684:
	.string	"S_TROO_RUN1"
.LASF685:
	.string	"S_TROO_RUN2"
.LASF686:
	.string	"S_TROO_RUN3"
.LASF687:
	.string	"S_TROO_RUN4"
.LASF688:
	.string	"S_TROO_RUN5"
.LASF689:
	.string	"S_TROO_RUN6"
.LASF690:
	.string	"S_TROO_RUN7"
.LASF691:
	.string	"S_TROO_RUN8"
.LASF139:
	.string	"SPR_CPOS"
.LASF599:
	.string	"S_FATSHOTX1"
.LASF600:
	.string	"S_FATSHOTX2"
.LASF601:
	.string	"S_FATSHOTX3"
.LASF679:
	.string	"S_CPOS_RAISE5"
.LASF680:
	.string	"S_CPOS_RAISE6"
.LASF681:
	.string	"S_CPOS_RAISE7"
.LASF71:
	.string	"wp_fist"
.LASF169:
	.string	"SPR_STIM"
.LASF715:
	.string	"S_SARG_STND"
.LASF940:
	.string	"S_CYBER_DIE10"
.LASF119:
	.string	"SPR_BAL1"
.LASF120:
	.string	"SPR_BAL2"
.LASF142:
	.string	"SPR_BAL7"
.LASF1134:
	.string	"S_HEADSONSTICK"
.LASF591:
	.string	"S_SKEL_RAISE1"
.LASF107:
	.string	"SPR_SHT2"
.LASF245:
	.string	"S_PUNCH1"
.LASF246:
	.string	"S_PUNCH2"
.LASF247:
	.string	"S_PUNCH3"
.LASF248:
	.string	"S_PUNCH4"
.LASF249:
	.string	"S_PUNCH5"
.LASF608:
	.string	"S_FATT_RUN5"
.LASF244:
	.string	"S_PUNCHUP"
.LASF861:
	.string	"S_SPID_DIE1"
.LASF612:
	.string	"S_FATT_RUN9"
.LASF863:
	.string	"S_SPID_DIE3"
.LASF864:
	.string	"S_SPID_DIE4"
.LASF106:
	.string	"SPR_SHTF"
.LASF102:
	.string	"SPR_SHTG"
.LASF383:
	.string	"S_IFOG01"
.LASF384:
	.string	"S_IFOG02"
.LASF869:
	.string	"S_SPID_DIE9"
.LASF1111:
	.string	"S_AMMO"
.LASF1383:
	.string	"I_AllocLow"
.LASF86:
	.string	"NUMAMMO"
.LASF942:
	.string	"S_PAIN_RUN1"
.LASF943:
	.string	"S_PAIN_RUN2"
.LASF944:
	.string	"S_PAIN_RUN3"
.LASF945:
	.string	"S_PAIN_RUN4"
.LASF228:
	.string	"SPR_HDB1"
.LASF229:
	.string	"SPR_HDB2"
.LASF230:
	.string	"SPR_HDB3"
.LASF231:
	.string	"SPR_HDB4"
.LASF232:
	.string	"SPR_HDB5"
.LASF233:
	.string	"SPR_HDB6"
.LASF1209:
	.string	"MT_POSSESSED"
.LASF277:
	.string	"S_DSGUN3"
.LASF278:
	.string	"S_DSGUN4"
.LASF297:
	.string	"S_MISSILE"
.LASF1125:
	.string	"S_SHOT2"
.LASF1192:
	.string	"S_HANGTLOOKDN"
.LASF669:
	.string	"S_CPOS_XDIE1"
.LASF1396:
	.string	"G_CheckDemoStatus"
.LASF1381:
	.string	"I_Quit"
.LASF189:
	.string	"SPR_MGUN"
.LASF1221:
	.string	"MT_SHADOWS"
.LASF572:
	.string	"S_SKEL_RUN10"
.LASF573:
	.string	"S_SKEL_RUN11"
.LASF574:
	.string	"S_SKEL_RUN12"
.LASF240:
	.string	"S_NULL"
.LASF782:
	.string	"S_BOSS_DIE1"
.LASF783:
	.string	"S_BOSS_DIE2"
.LASF784:
	.string	"S_BOSS_DIE3"
.LASF785:
	.string	"S_BOSS_DIE4"
.LASF786:
	.string	"S_BOSS_DIE5"
.LASF787:
	.string	"S_BOSS_DIE6"
.LASF788:
	.string	"S_BOSS_DIE7"
.LASF952:
	.string	"S_PAIN_PAIN"
.LASF321:
	.string	"S_BFG"
.LASF1366:
	.string	"M_SaveDefaults"
.LASF967:
	.string	"S_SSWV_STND2"
.LASF20:
	.string	"__gnuc_va_list"
.LASF190:
	.string	"SPR_CSAW"
.LASF1102:
	.string	"S_PMAP"
.LASF40:
	.string	"_chain"
.LASF1108:
	.string	"S_PVIS"
.LASF322:
	.string	"S_BFGDOWN"
.LASF1233:
	.string	"MT_BOSSBRAIN"
.LASF136:
	.string	"SPR_SKEL"
.LASF317:
	.string	"S_PLASMA1"
.LASF318:
	.string	"S_PLASMA2"
.LASF1182:
	.string	"S_GTORCHSHRT"
.LASF1116:
	.string	"S_SHEL"
.LASF1371:
	.string	"malloc"
.LASF873:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF134:
	.string	"SPR_FATB"
.LASF239:
	.string	"NUMSPRITES"
.LASF356:
	.string	"S_BFGSHOT2"
.LASF138:
	.string	"SPR_FATT"
.LASF1083:
	.string	"S_SOUL2"
.LASF1084:
	.string	"S_SOUL3"
.LASF1085:
	.string	"S_SOUL4"
.LASF1086:
	.string	"S_SOUL5"
.LASF1087:
	.string	"S_SOUL6"
.LASF1395:
	.string	"_IO_lock_t"
.LASF843:
	.string	"S_SPID_RUN1"
.LASF844:
	.string	"S_SPID_RUN2"
.LASF845:
	.string	"S_SPID_RUN3"
.LASF846:
	.string	"S_SPID_RUN4"
.LASF847:
	.string	"S_SPID_RUN5"
.LASF848:
	.string	"S_SPID_RUN6"
.LASF849:
	.string	"S_SPID_RUN7"
.LASF850:
	.string	"S_SPID_RUN8"
.LASF99:
	.string	"float"
.LASF1050:
	.string	"S_BEXP3"
.LASF1051:
	.string	"S_BEXP4"
.LASF1139:
	.string	"S_DEADSTICK"
.LASF1250:
	.string	"MT_EXTRABFG"
.LASF429:
	.string	"S_POSS_DIE1"
.LASF430:
	.string	"S_POSS_DIE2"
.LASF431:
	.string	"S_POSS_DIE3"
.LASF432:
	.string	"S_POSS_DIE4"
.LASF433:
	.string	"S_POSS_DIE5"
.LASF259:
	.string	"S_SGUNDOWN"
.LASF109:
	.string	"SPR_CHGF"
.LASF108:
	.string	"SPR_CHGG"
.LASF910:
	.string	"S_ARACH_PLEX2"
.LASF911:
	.string	"S_ARACH_PLEX3"
.LASF912:
	.string	"S_ARACH_PLEX4"
.LASF913:
	.string	"S_ARACH_PLEX5"
.LASF654:
	.string	"S_CPOS_RUN7"
.LASF219:
	.string	"SPR_CEYE"
.LASF960:
	.string	"S_PAIN_RAISE1"
.LASF961:
	.string	"S_PAIN_RAISE2"
.LASF962:
	.string	"S_PAIN_RAISE3"
.LASF963:
	.string	"S_PAIN_RAISE4"
.LASF964:
	.string	"S_PAIN_RAISE5"
.LASF597:
	.string	"S_FATSHOT1"
.LASF598:
	.string	"S_FATSHOT2"
.LASF176:
	.string	"SPR_SUIT"
.LASF825:
	.string	"S_SKULL_STND"
.LASF859:
	.string	"S_SPID_PAIN"
.LASF1345:
	.string	"NUMMOBJTYPES"
.LASF158:
	.string	"SPR_BAR1"
.LASF272:
	.string	"S_DSGUN"
.LASF1151:
	.string	"S_CANDLESTIK"
.LASF92:
	.string	"pw_allmap"
.LASF1207:
	.string	"NUMSTATES"
.LASF851:
	.string	"S_SPID_RUN9"
.LASF337:
	.string	"S_TBALL1"
.LASF338:
	.string	"S_TBALL2"
.LASF551:
	.string	"S_SMOKE1"
.LASF552:
	.string	"S_SMOKE2"
.LASF553:
	.string	"S_SMOKE3"
.LASF554:
	.string	"S_SMOKE4"
.LASF555:
	.string	"S_SMOKE5"
.LASF774:
	.string	"S_BOSS_RUN6"
.LASF775:
	.string	"S_BOSS_RUN7"
.LASF776:
	.string	"S_BOSS_RUN8"
.LASF141:
	.string	"SPR_HEAD"
.LASF202:
	.string	"SPR_POL1"
.LASF198:
	.string	"SPR_POL2"
.LASF201:
	.string	"SPR_POL3"
.LASF200:
	.string	"SPR_POL4"
.LASF199:
	.string	"SPR_POL5"
.LASF203:
	.string	"SPR_POL6"
.LASF1046:
	.string	"S_BAR1"
.LASF1144:
	.string	"S_MEAT4"
.LASF538:
	.string	"S_FIRE18"
.LASF18:
	.string	"tv_usec"
.LASF1251:
	.string	"MT_MISC0"
.LASF1132:
	.string	"S_DEADTORSO"
.LASF274:
	.string	"S_DSGUNUP"
.LASF683:
	.string	"S_TROO_STND2"
.LASF1203:
	.string	"S_TECH2LAMP"
.LASF1237:
	.string	"MT_SPAWNFIRE"
.LASF1389:
	.string	"I_GetHeapSize"
.LASF1212:
	.string	"MT_FIRE"
.LASF780:
	.string	"S_BOSS_PAIN"
.LASF152:
	.string	"SPR_SSWV"
.LASF32:
	.string	"_IO_write_ptr"
.LASF1189:
	.string	"S_RTORCHSHRT4"
.LASF342:
	.string	"S_RBALL1"
.LASF343:
	.string	"S_RBALL2"
.LASF1147:
	.string	"S_TALLGRNCOL"
.LASF1136:
	.string	"S_HEADONASTICK"
.LASF416:
	.string	"S_POSS_RUN1"
.LASF358:
	.string	"S_BFGLAND2"
.LASF359:
	.string	"S_BFGLAND3"
.LASF360:
	.string	"S_BFGLAND4"
.LASF361:
	.string	"S_BFGLAND5"
.LASF362:
	.string	"S_BFGLAND6"
.LASF422:
	.string	"S_POSS_RUN7"
.LASF423:
	.string	"S_POSS_RUN8"
.LASF60:
	.string	"va_list"
.LASF16:
	.string	"__suseconds_t"
.LASF405:
	.string	"S_PLAY_XDIE1"
.LASF406:
	.string	"S_PLAY_XDIE2"
.LASF407:
	.string	"S_PLAY_XDIE3"
.LASF408:
	.string	"S_PLAY_XDIE4"
.LASF409:
	.string	"S_PLAY_XDIE5"
.LASF410:
	.string	"S_PLAY_XDIE6"
.LASF411:
	.string	"S_PLAY_XDIE7"
.LASF412:
	.string	"S_PLAY_XDIE8"
.LASF413:
	.string	"S_PLAY_XDIE9"
.LASF811:
	.string	"S_BOS2_DIE1"
.LASF812:
	.string	"S_BOS2_DIE2"
.LASF813:
	.string	"S_BOS2_DIE3"
.LASF814:
	.string	"S_BOS2_DIE4"
.LASF815:
	.string	"S_BOS2_DIE5"
.LASF816:
	.string	"S_BOS2_DIE6"
.LASF817:
	.string	"S_BOS2_DIE7"
.LASF737:
	.string	"S_SARG_RAISE2"
.LASF381:
	.string	"S_TFOG10"
.LASF739:
	.string	"S_SARG_RAISE4"
.LASF434:
	.string	"S_POSS_XDIE1"
.LASF435:
	.string	"S_POSS_XDIE2"
.LASF436:
	.string	"S_POSS_XDIE3"
.LASF437:
	.string	"S_POSS_XDIE4"
.LASF438:
	.string	"S_POSS_XDIE5"
.LASF439:
	.string	"S_POSS_XDIE6"
.LASF440:
	.string	"S_POSS_XDIE7"
.LASF82:
	.string	"am_clip"
.LASF442:
	.string	"S_POSS_XDIE9"
.LASF1135:
	.string	"S_GIBS"
.LASF750:
	.string	"S_HEAD_DIE1"
.LASF751:
	.string	"S_HEAD_DIE2"
.LASF752:
	.string	"S_HEAD_DIE3"
.LASF753:
	.string	"S_HEAD_DIE4"
.LASF754:
	.string	"S_HEAD_DIE5"
.LASF755:
	.string	"S_HEAD_DIE6"
.LASF603:
	.string	"S_FATT_STND2"
.LASF1126:
	.string	"S_COLU"
.LASF253:
	.string	"S_PISTOL1"
.LASF254:
	.string	"S_PISTOL2"
.LASF255:
	.string	"S_PISTOL3"
.LASF256:
	.string	"S_PISTOL4"
.LASF592:
	.string	"S_SKEL_RAISE2"
.LASF593:
	.string	"S_SKEL_RAISE3"
.LASF56:
	.string	"FILE"
.LASF595:
	.string	"S_SKEL_RAISE5"
.LASF596:
	.string	"S_SKEL_RAISE6"
.LASF1155:
	.string	"S_BIGTREE"
.LASF1065:
	.string	"S_BON2C"
.LASF1066:
	.string	"S_BON2D"
.LASF371:
	.string	"S_TFOG01"
.LASF372:
	.string	"S_TFOG02"
.LASF191:
	.string	"SPR_LAUN"
.LASF427:
	.string	"S_POSS_PAIN"
.LASF762:
	.string	"S_BRBALL1"
.LASF763:
	.string	"S_BRBALL2"
.LASF1215:
	.string	"MT_SMOKE"
.LASF1229:
	.string	"MT_CYBORG"
.LASF467:
	.string	"S_SPOS_XDIE1"
.LASF468:
	.string	"S_SPOS_XDIE2"
.LASF469:
	.string	"S_SPOS_XDIE3"
.LASF470:
	.string	"S_SPOS_XDIE4"
.LASF471:
	.string	"S_SPOS_XDIE5"
.LASF472:
	.string	"S_SPOS_XDIE6"
.LASF473:
	.string	"S_SPOS_XDIE7"
.LASF474:
	.string	"S_SPOS_XDIE8"
.LASF475:
	.string	"S_SPOS_XDIE9"
.LASF1374:
	.string	"error"
.LASF11:
	.string	"size_t"
.LASF1068:
	.string	"S_BKEY"
.LASF90:
	.string	"pw_invisibility"
.LASF156:
	.string	"SPR_ARM1"
.LASF157:
	.string	"SPR_ARM2"
.LASF1211:
	.string	"MT_VILE"
.LASF67:
	.string	"it_blueskull"
.LASF315:
	.string	"S_PLASMADOWN"
.LASF627:
	.string	"S_FATT_PAIN2"
.LASF1025:
	.string	"S_BRAINEYESEE"
.LASF562:
	.string	"S_SKEL_STND2"
.LASF915:
	.string	"S_CYBER_STND2"
.LASF759:
	.string	"S_HEAD_RAISE4"
.LASF985:
	.string	"S_SSWV_DIE2"
.LASF441:
	.string	"S_POSS_XDIE8"
.LASF1115:
	.string	"S_CELP"
.LASF1157:
	.string	"S_EVILEYE"
.LASF1377:
	.string	"I_BeginRead"
.LASF1183:
	.string	"S_GTORCHSHRT2"
.LASF1184:
	.string	"S_GTORCHSHRT3"
.LASF1185:
	.string	"S_GTORCHSHRT4"
.LASF36:
	.string	"_IO_save_base"
.LASF616:
	.string	"S_FATT_ATK1"
.LASF150:
	.string	"SPR_CYBR"
.LASF617:
	.string	"S_FATT_ATK2"
.LASF520:
	.string	"S_VILE_DIE10"
.LASF111:
	.string	"SPR_MISF"
.LASF110:
	.string	"SPR_MISG"
.LASF123:
	.string	"SPR_MISL"
.LASF1074:
	.string	"S_BSKULL"
.LASF154:
	.string	"SPR_BBRN"
.LASF495:
	.string	"S_VILE_ATK1"
.LASF496:
	.string	"S_VILE_ATK2"
.LASF497:
	.string	"S_VILE_ATK3"
.LASF498:
	.string	"S_VILE_ATK4"
.LASF499:
	.string	"S_VILE_ATK5"
.LASF500:
	.string	"S_VILE_ATK6"
.LASF501:
	.string	"S_VILE_ATK7"
.LASF242:
	.string	"S_PUNCH"
.LASF503:
	.string	"S_VILE_ATK9"
.LASF225:
	.string	"SPR_SMBT"
.LASF798:
	.string	"S_BOS2_RUN1"
.LASF799:
	.string	"S_BOS2_RUN2"
.LASF800:
	.string	"S_BOS2_RUN3"
.LASF801:
	.string	"S_BOS2_RUN4"
.LASF802:
	.string	"S_BOS2_RUN5"
.LASF803:
	.string	"S_BOS2_RUN6"
.LASF804:
	.string	"S_BOS2_RUN7"
.LASF805:
	.string	"S_BOS2_RUN8"
.LASF216:
	.string	"SPR_TRE1"
.LASF217:
	.string	"SPR_TRE2"
.LASF872:
	.string	"S_BSPI_STND"
.LASF1359:
	.string	"emptycmd"
.LASF662:
	.string	"S_CPOS_DIE1"
.LASF224:
	.string	"SPR_TRED"
.LASF117:
	.string	"SPR_BLUD"
.LASF618:
	.string	"S_FATT_ATK3"
.LASF619:
	.string	"S_FATT_ATK4"
.LASF620:
	.string	"S_FATT_ATK5"
.LASF621:
	.string	"S_FATT_ATK6"
.LASF622:
	.string	"S_FATT_ATK7"
.LASF623:
	.string	"S_FATT_ATK8"
.LASF624:
	.string	"S_FATT_ATK9"
.LASF127:
	.string	"SPR_TFOG"
.LASF330:
	.string	"S_BLOOD1"
.LASF331:
	.string	"S_BLOOD2"
.LASF332:
	.string	"S_BLOOD3"
.LASF1351:
	.string	"angleturn"
.LASF50:
	.string	"_wide_data"
.LASF1122:
	.string	"S_LAUN"
.LASF382:
	.string	"S_IFOG"
.LASF130:
	.string	"SPR_POSS"
.LASF135:
	.string	"SPR_FBXP"
.LASF931:
	.string	"S_CYBER_DIE1"
.LASF932:
	.string	"S_CYBER_DIE2"
.LASF933:
	.string	"S_CYBER_DIE3"
.LASF934:
	.string	"S_CYBER_DIE4"
.LASF935:
	.string	"S_CYBER_DIE5"
.LASF936:
	.string	"S_CYBER_DIE6"
.LASF937:
	.string	"S_CYBER_DIE7"
.LASF809:
	.string	"S_BOS2_PAIN"
.LASF939:
	.string	"S_CYBER_DIE9"
.LASF1278:
	.string	"MT_MISC23"
.LASF1152:
	.string	"S_CANDELABRA"
.LASF492:
	.string	"S_VILE_RUN10"
.LASF493:
	.string	"S_VILE_RUN11"
.LASF494:
	.string	"S_VILE_RUN12"
.LASF1112:
	.string	"S_ROCK"
.LASF261:
	.string	"S_SGUN1"
.LASF262:
	.string	"S_SGUN2"
.LASF263:
	.string	"S_SGUN3"
.LASF264:
	.string	"S_SGUN4"
.LASF265:
	.string	"S_SGUN5"
.LASF266:
	.string	"S_SGUN6"
.LASF267:
	.string	"S_SGUN7"
.LASF268:
	.string	"S_SGUN8"
.LASF269:
	.string	"S_SGUN9"
.LASF258:
	.string	"S_SGUN"
.LASF1148:
	.string	"S_SHRTGRNCOL"
.LASF833:
	.string	"S_SKULL_PAIN"
.LASF1236:
	.string	"MT_SPAWNSHOT"
.LASF557:
	.string	"S_TRACER2"
.LASF1156:
	.string	"S_TECHPILLAR"
.LASF561:
	.string	"S_SKEL_STND"
.LASF716:
	.string	"S_SARG_STND2"
.LASF462:
	.string	"S_SPOS_DIE1"
.LASF463:
	.string	"S_SPOS_DIE2"
.LASF464:
	.string	"S_SPOS_DIE3"
.LASF465:
	.string	"S_SPOS_DIE4"
.LASF466:
	.string	"S_SPOS_DIE5"
.LASF1191:
	.string	"S_HANGBNOBRAIN"
.LASF725:
	.string	"S_SARG_ATK1"
.LASF726:
	.string	"S_SARG_ATK2"
.LASF727:
	.string	"S_SARG_ATK3"
.LASF316:
	.string	"S_PLASMAUP"
.LASF1072:
	.string	"S_YKEY"
.LASF954:
	.string	"S_PAIN_DIE1"
.LASF1387:
	.string	"I_ZoneBase"
.LASF484:
	.string	"S_VILE_RUN2"
.LASF1202:
	.string	"S_TECHLAMP4"
.LASF648:
	.string	"S_CPOS_RUN1"
.LASF649:
	.string	"S_CPOS_RUN2"
.LASF650:
	.string	"S_CPOS_RUN3"
.LASF651:
	.string	"S_CPOS_RUN4"
.LASF652:
	.string	"S_CPOS_RUN5"
.LASF653:
	.string	"S_CPOS_RUN6"
.LASF187:
	.string	"SPR_BPAK"
.LASF655:
	.string	"S_CPOS_RUN8"
.LASF1052:
	.string	"S_BEXP5"
.LASF417:
	.string	"S_POSS_RUN2"
.LASF418:
	.string	"S_POSS_RUN3"
.LASF419:
	.string	"S_POSS_RUN4"
.LASF736:
	.string	"S_SARG_RAISE1"
.LASF420:
	.string	"S_POSS_RUN5"
.LASF738:
	.string	"S_SARG_RAISE3"
.LASF421:
	.string	"S_POSS_RUN6"
.LASF740:
	.string	"S_SARG_RAISE5"
.LASF741:
	.string	"S_SARG_RAISE6"
.LASF226:
	.string	"SPR_SMGT"
.LASF1016:
	.string	"S_KEENPAIN"
.LASF364:
	.string	"S_BFGEXP2"
.LASF365:
	.string	"S_BFGEXP3"
.LASF366:
	.string	"S_BFGEXP4"
.LASF295:
	.string	"S_CHAINFLASH1"
.LASF296:
	.string	"S_CHAINFLASH2"
.LASF251:
	.string	"S_PISTOLDOWN"
.LASF916:
	.string	"S_CYBER_RUN1"
.LASF917:
	.string	"S_CYBER_RUN2"
.LASF918:
	.string	"S_CYBER_RUN3"
.LASF919:
	.string	"S_CYBER_RUN4"
.LASF920:
	.string	"S_CYBER_RUN5"
.LASF921:
	.string	"S_CYBER_RUN6"
.LASF922:
	.string	"S_CYBER_RUN7"
.LASF923:
	.string	"S_CYBER_RUN8"
.LASF1103:
	.string	"S_PMAP2"
.LASF1104:
	.string	"S_PMAP3"
.LASF1105:
	.string	"S_PMAP4"
.LASF1106:
	.string	"S_PMAP5"
.LASF1107:
	.string	"S_PMAP6"
.LASF834:
	.string	"S_SKULL_PAIN2"
.LASF660:
	.string	"S_CPOS_PAIN"
.LASF140:
	.string	"SPR_SARG"
.LASF965:
	.string	"S_PAIN_RAISE6"
.LASF1294:
	.string	"MT_MISC36"
.LASF769:
	.string	"S_BOSS_RUN1"
.LASF770:
	.string	"S_BOSS_RUN2"
.LASF771:
	.string	"S_BOSS_RUN3"
.LASF772:
	.string	"S_BOSS_RUN4"
.LASF773:
	.string	"S_BOSS_RUN5"
.LASF291:
	.string	"S_CHAINUP"
.LASF1392:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1154:
	.string	"S_TORCHTREE"
.LASF966:
	.string	"S_SSWV_STND"
.LASF1013:
	.string	"S_COMMKEEN10"
.LASF1014:
	.string	"S_COMMKEEN11"
.LASF1015:
	.string	"S_COMMKEEN12"
.LASF930:
	.string	"S_CYBER_PAIN"
.LASF1356:
	.string	"stderr"
.LASF449:
	.string	"S_SPOS_RUN1"
.LASF208:
	.string	"SPR_SMIT"
.LASF97:
	.string	"boolean"
.LASF452:
	.string	"S_SPOS_RUN4"
.LASF453:
	.string	"S_SPOS_RUN5"
.LASF145:
	.string	"SPR_SKUL"
.LASF455:
	.string	"S_SPOS_RUN7"
.LASF456:
	.string	"S_SPOS_RUN8"
.LASF1113:
	.string	"S_BROK"
.LASF243:
	.string	"S_PUNCHDOWN"
.LASF909:
	.string	"S_ARACH_PLEX"
.LASF1170:
	.string	"S_GREENTORCH"
.LASF79:
	.string	"wp_supershotgun"
.LASF309:
	.string	"S_SAWDOWN"
.LASF38:
	.string	"_IO_save_end"
.LASF1239:
	.string	"MT_TROOPSHOT"
.LASF1224:
	.string	"MT_BRUISERSHOT"
.LASF1355:
	.string	"ticcmd_t"
.LASF1344:
	.string	"MT_MISC86"
.LASF22:
	.string	"fp_offset"
.LASF1346:
	.string	"ps_weapon"
.LASF14:
	.string	"__time_t"
.LASF397:
	.string	"S_PLAY_PAIN2"
.LASF21:
	.string	"gp_offset"
.LASF792:
	.string	"S_BOSS_RAISE4"
.LASF793:
	.string	"S_BOSS_RAISE5"
.LASF137:
	.string	"SPR_MANF"
.LASF647:
	.string	"S_CPOS_STND2"
.LASF460:
	.string	"S_SPOS_PAIN"
.LASF73:
	.string	"wp_shotgun"
.LASF1368:
	.string	"I_ShutdownSound"
.LASF428:
	.string	"S_POSS_PAIN2"
.LASF1245:
	.string	"MT_PUFF"
.LASF1365:
	.string	"I_ShutdownGraphics"
.LASF300:
	.string	"S_MISSILE1"
.LASF301:
	.string	"S_MISSILE2"
.LASF302:
	.string	"S_MISSILE3"
.LASF676:
	.string	"S_CPOS_RAISE2"
.LASF677:
	.string	"S_CPOS_RAISE3"
.LASF678:
	.string	"S_CPOS_RAISE4"
.LASF1120:
	.string	"S_MGUN"
.LASF1223:
	.string	"MT_BRUISER"
.LASF186:
	.string	"SPR_SBOX"
.LASF829:
	.string	"S_SKULL_ATK1"
.LASF830:
	.string	"S_SKULL_ATK2"
.LASF831:
	.string	"S_SKULL_ATK3"
.LASF832:
	.string	"S_SKULL_ATK4"
.LASF810:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1225:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF1350:
	.string	"sidemove"
.LASF461:
	.string	"S_SPOS_PAIN2"
.LASF625:
	.string	"S_FATT_ATK10"
.LASF1298:
	.string	"MT_MISC40"
.LASF1382:
	.string	"I_Init"
.LASF223:
	.string	"SPR_TGRN"
.LASF1270:
	.string	"MT_MEGA"
.LASF125:
	.string	"SPR_BFE1"
.LASF126:
	.string	"SPR_BFE2"
.LASF1304:
	.string	"MT_MISC46"
.LASF1380:
	.string	"count"
.LASF1232:
	.string	"MT_KEEN"
.LASF1026:
	.string	"S_BRAINEYE1"
.LASF682:
	.string	"S_TROO_STND"
.LASF629:
	.string	"S_FATT_DIE2"
.LASF320:
	.string	"S_PLASMAFLASH2"
.LASF1353:
	.string	"chatchar"
.LASF373:
	.string	"S_TFOG2"
.LASF374:
	.string	"S_TFOG3"
.LASF375:
	.string	"S_TFOG4"
.LASF376:
	.string	"S_TFOG5"
.LASF377:
	.string	"S_TFOG6"
.LASF378:
	.string	"S_TFOG7"
.LASF379:
	.string	"S_TFOG8"
.LASF380:
	.string	"S_TFOG9"
.LASF795:
	.string	"S_BOSS_RAISE7"
.LASF101:
	.string	"SPR_TROO"
.LASF13:
	.string	"__off64_t"
.LASF112:
	.string	"SPR_SAWG"
.LASF161:
	.string	"SPR_BON1"
.LASF30:
	.string	"_IO_read_base"
.LASF48:
	.string	"_offset"
.LASF66:
	.string	"it_redcard"
.LASF1149:
	.string	"S_TALLREDCOL"
.LASF1378:
	.string	"I_Error"
.LASF35:
	.string	"_IO_buf_end"
.LASF1124:
	.string	"S_SHOT"
.LASF980:
	.string	"S_SSWV_ATK5"
.LASF1129:
	.string	"S_BLOODYTWITCH2"
.LASF1130:
	.string	"S_BLOODYTWITCH3"
.LASF1131:
	.string	"S_BLOODYTWITCH4"
.LASF870:
	.string	"S_SPID_DIE10"
.LASF871:
	.string	"S_SPID_DIE11"
.LASF218:
	.string	"SPR_ELEC"
.LASF1018:
	.string	"S_BRAIN"
.LASF1227:
	.string	"MT_SPIDER"
.LASF1101:
	.string	"S_SUIT"
.LASF116:
	.string	"SPR_BFGF"
.LASF115:
	.string	"SPR_BFGG"
.LASF54:
	.string	"_mode"
.LASF941:
	.string	"S_PAIN_STND"
.LASF31:
	.string	"_IO_write_base"
.LASF357:
	.string	"S_BFGLAND"
.LASF1047:
	.string	"S_BAR2"
.LASF83:
	.string	"am_shell"
.LASF63:
	.string	"tz_dsttime"
.LASF637:
	.string	"S_FATT_DIE10"
.LASF70:
	.string	"NUMCARDS"
.LASF1174:
	.string	"S_REDTORCH"
.LASF1243:
	.string	"MT_BFG"
.LASF132:
	.string	"SPR_VILE"
.LASF1246:
	.string	"MT_BLOOD"
.LASF250:
	.string	"S_PISTOL"
.LASF96:
	.string	"true"
.LASF482:
	.string	"S_VILE_STND2"
.LASF900:
	.string	"S_BSPI_RAISE1"
.LASF901:
	.string	"S_BSPI_RAISE2"
.LASF902:
	.string	"S_BSPI_RAISE3"
.LASF903:
	.string	"S_BSPI_RAISE4"
.LASF904:
	.string	"S_BSPI_RAISE5"
.LASF905:
	.string	"S_BSPI_RAISE6"
.LASF906:
	.string	"S_BSPI_RAISE7"
.LASF4:
	.string	"long int"
.LASF989:
	.string	"S_SSWV_XDIE1"
.LASF990:
	.string	"S_SSWV_XDIE2"
.LASF991:
	.string	"S_SSWV_XDIE3"
.LASF992:
	.string	"S_SSWV_XDIE4"
.LASF993:
	.string	"S_SSWV_XDIE5"
.LASF994:
	.string	"S_SSWV_XDIE6"
.LASF995:
	.string	"S_SSWV_XDIE7"
.LASF996:
	.string	"S_SSWV_XDIE8"
.LASF997:
	.string	"S_SSWV_XDIE9"
.LASF287:
	.string	"S_DSGUNFLASH1"
.LASF288:
	.string	"S_DSGUNFLASH2"
.LASF1277:
	.string	"MT_MISC22"
.LASF545:
	.string	"S_FIRE25"
.LASF639:
	.string	"S_FATT_RAISE2"
.LASF1313:
	.string	"MT_MISC55"
.LASF68:
	.string	"it_yellowskull"
.LASF1077:
	.string	"S_RSKULL2"
.LASF644:
	.string	"S_FATT_RAISE7"
.LASF852:
	.string	"S_SPID_RUN10"
.LASF853:
	.string	"S_SPID_RUN11"
.LASF854:
	.string	"S_SPID_RUN12"
.LASF57:
	.string	"_IO_marker"
.LASF1372:
	.string	"rcsid"
.LASF25:
	.string	"timeval"
.LASF303:
	.string	"S_MISSILEFLASH1"
.LASF304:
	.string	"S_MISSILEFLASH2"
.LASF305:
	.string	"S_MISSILEFLASH3"
.LASF306:
	.string	"S_MISSILEFLASH4"
.LASF167:
	.string	"SPR_RSKU"
.LASF663:
	.string	"S_CPOS_DIE2"
.LASF664:
	.string	"S_CPOS_DIE3"
.LASF665:
	.string	"S_CPOS_DIE4"
.LASF666:
	.string	"S_CPOS_DIE5"
.LASF667:
	.string	"S_CPOS_DIE6"
.LASF668:
	.string	"S_CPOS_DIE7"
.LASF1109:
	.string	"S_PVIS2"
.LASF1238:
	.string	"MT_BARREL"
.LASF841:
	.string	"S_SPID_STND"
.LASF613:
	.string	"S_FATT_RUN10"
.LASF614:
	.string	"S_FATT_RUN11"
.LASF615:
	.string	"S_FATT_RUN12"
.LASF1230:
	.string	"MT_PAIN"
.LASF58:
	.string	"_IO_codecvt"
.LASF1167:
	.string	"S_BLUETORCH2"
.LASF1168:
	.string	"S_BLUETORCH3"
.LASF1169:
	.string	"S_BLUETORCH4"
.LASF227:
	.string	"SPR_SMRT"
.LASF328:
	.string	"S_BFGFLASH1"
.LASF329:
	.string	"S_BFGFLASH2"
.LASF862:
	.string	"S_SPID_DIE2"
.LASF144:
	.string	"SPR_BOS2"
.LASF865:
	.string	"S_SPID_DIE5"
.LASF866:
	.string	"S_SPID_DIE6"
.LASF867:
	.string	"S_SPID_DIE7"
.LASF868:
	.string	"S_SPID_DIE8"
.LASF1158:
	.string	"S_EVILEYE2"
.LASF1159:
	.string	"S_EVILEYE3"
.LASF1160:
	.string	"S_EVILEYE4"
.LASF333:
	.string	"S_PUFF1"
.LASF334:
	.string	"S_PUFF2"
.LASF335:
	.string	"S_PUFF3"
.LASF155:
	.string	"SPR_BOSF"
.LASF143:
	.string	"SPR_BOSS"
.LASF1242:
	.string	"MT_PLASMA"
.LASF887:
	.string	"S_BSPI_ATK1"
.LASF888:
	.string	"S_BSPI_ATK2"
.LASF889:
	.string	"S_BSPI_ATK3"
.LASF890:
	.string	"S_BSPI_ATK4"
.LASF1069:
	.string	"S_BKEY2"
.LASF80:
	.string	"NUMWEAPONS"
.LASF874:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF1020:
	.string	"S_BRAIN_DIE1"
.LASF1021:
	.string	"S_BRAIN_DIE2"
.LASF1022:
	.string	"S_BRAIN_DIE3"
.LASF1023:
	.string	"S_BRAIN_DIE4"
.LASF355:
	.string	"S_BFGSHOT"
.LASF1161:
	.string	"S_FLOATSKULL"
.LASF511:
	.string	"S_VILE_DIE1"
.LASF512:
	.string	"S_VILE_DIE2"
.LASF513:
	.string	"S_VILE_DIE3"
.LASF514:
	.string	"S_VILE_DIE4"
.LASF515:
	.string	"S_VILE_DIE5"
.LASF516:
	.string	"S_VILE_DIE6"
.LASF517:
	.string	"S_VILE_DIE7"
.LASF518:
	.string	"S_VILE_DIE8"
.LASF519:
	.string	"S_VILE_DIE9"
.LASF196:
	.string	"SPR_SMT2"
.LASF1071:
	.string	"S_RKEY2"
.LASF1042:
	.string	"S_ARM1"
.LASF1044:
	.string	"S_ARM2"
.LASF1137:
	.string	"S_HEADCANDLES"
.LASF174:
	.string	"SPR_PINS"
.LASF767:
	.string	"S_BOSS_STND"
.LASF15:
	.string	"__useconds_t"
.LASF747:
	.string	"S_HEAD_PAIN"
.LASF65:
	.string	"it_yellowcard"
.LASF1214:
	.string	"MT_TRACER"
.LASF628:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF630:
	.string	"S_FATT_DIE3"
.LASF631:
	.string	"S_FATT_DIE4"
.LASF632:
	.string	"S_FATT_DIE5"
.LASF633:
	.string	"S_FATT_DIE6"
.LASF634:
	.string	"S_FATT_DIE7"
.LASF635:
	.string	"S_FATT_DIE8"
.LASF636:
	.string	"S_FATT_DIE9"
.LASF703:
	.string	"S_TROO_XDIE2"
.LASF704:
	.string	"S_TROO_XDIE3"
.LASF705:
	.string	"S_TROO_XDIE4"
.LASF706:
	.string	"S_TROO_XDIE5"
.LASF707:
	.string	"S_TROO_XDIE6"
.LASF708:
	.string	"S_TROO_XDIE7"
.LASF709:
	.string	"S_TROO_XDIE8"
.LASF179:
	.string	"SPR_CLIP"
.LASF1150:
	.string	"S_SHRTREDCOL"
.LASF1193:
	.string	"S_HANGTSKULL"
.LASF34:
	.string	"_IO_buf_base"
.LASF94:
	.string	"NUMPOWERS"
.LASF978:
	.string	"S_SSWV_ATK3"
.LASF979:
	.string	"S_SSWV_ATK4"
.LASF284:
	.string	"S_DSGUN10"
.LASF89:
	.string	"pw_strength"
.LASF213:
	.string	"SPR_CAND"
.LASF1220:
	.string	"MT_SERGEANT"
.LASF1140:
	.string	"S_LIVESTICK"
.LASF29:
	.string	"_IO_read_end"
.LASF1080:
	.string	"S_STIM"
.LASF84:
	.string	"am_cell"
.LASF64:
	.string	"it_bluecard"
.LASF743:
	.string	"S_HEAD_RUN1"
.LASF398:
	.string	"S_PLAY_DIE1"
.LASF399:
	.string	"S_PLAY_DIE2"
.LASF400:
	.string	"S_PLAY_DIE3"
.LASF401:
	.string	"S_PLAY_DIE4"
.LASF26:
	.string	"_IO_FILE"
.LASF403:
	.string	"S_PLAY_DIE6"
.LASF404:
	.string	"S_PLAY_DIE7"
.LASF414:
	.string	"S_POSS_STND"
.LASF370:
	.string	"S_TFOG"
.LASF59:
	.string	"_IO_wide_data"
.LASF1299:
	.string	"MT_MISC41"
.LASF730:
	.string	"S_SARG_DIE1"
.LASF731:
	.string	"S_SARG_DIE2"
.LASF732:
	.string	"S_SARG_DIE3"
.LASF733:
	.string	"S_SARG_DIE4"
.LASF1031:
	.string	"S_SPAWNFIRE1"
.LASF1032:
	.string	"S_SPAWNFIRE2"
.LASF1033:
	.string	"S_SPAWNFIRE3"
.LASF1034:
	.string	"S_SPAWNFIRE4"
.LASF1035:
	.string	"S_SPAWNFIRE5"
.LASF1036:
	.string	"S_SPAWNFIRE6"
.LASF1037:
	.string	"S_SPAWNFIRE7"
.LASF1038:
	.string	"S_SPAWNFIRE8"
.LASF702:
	.string	"S_TROO_XDIE1"
.LASF1352:
	.string	"consistancy"
.LASF1195:
	.string	"S_HANGTNOBRAIN"
.LASF1369:
	.string	"D_QuitNetGame"
.LASF350:
	.string	"S_PLASEXP2"
.LASF351:
	.string	"S_PLASEXP3"
.LASF352:
	.string	"S_PLASEXP4"
.LASF353:
	.string	"S_PLASEXP5"
.LASF77:
	.string	"wp_bfg"
.LASF1179:
	.string	"S_BTORCHSHRT2"
.LASF1180:
	.string	"S_BTORCHSHRT3"
.LASF1181:
	.string	"S_BTORCHSHRT4"
.LASF483:
	.string	"S_VILE_RUN1"
.LASF273:
	.string	"S_DSGUNDOWN"
.LASF485:
	.string	"S_VILE_RUN3"
.LASF486:
	.string	"S_VILE_RUN4"
.LASF487:
	.string	"S_VILE_RUN5"
.LASF488:
	.string	"S_VILE_RUN6"
.LASF489:
	.string	"S_VILE_RUN7"
.LASF490:
	.string	"S_VILE_RUN8"
.LASF491:
	.string	"S_VILE_RUN9"
.LASF734:
	.string	"S_SARG_DIE5"
.LASF735:
	.string	"S_SARG_DIE6"
.LASF575:
	.string	"S_SKEL_FIST1"
.LASF576:
	.string	"S_SKEL_FIST2"
.LASF577:
	.string	"S_SKEL_FIST3"
.LASF578:
	.string	"S_SKEL_FIST4"
.LASF314:
	.string	"S_PLASMA"
.LASF1093:
	.string	"S_PINS"
.LASF1166:
	.string	"S_BLUETORCH"
.LASF1388:
	.string	"size"
.LASF604:
	.string	"S_FATT_RUN1"
.LASF605:
	.string	"S_FATT_RUN2"
.LASF606:
	.string	"S_FATT_RUN3"
.LASF607:
	.string	"S_FATT_RUN4"
.LASF91:
	.string	"pw_ironfeet"
.LASF609:
	.string	"S_FATT_RUN6"
.LASF610:
	.string	"S_FATT_RUN7"
.LASF611:
	.string	"S_FATT_RUN8"
.LASF1142:
	.string	"S_MEAT2"
.LASF1143:
	.string	"S_MEAT3"
.LASF53:
	.string	"__pad5"
.LASF1145:
	.string	"S_MEAT5"
.LASF257:
	.string	"S_PISTOLFLASH"
.LASF477:
	.string	"S_SPOS_RAISE2"
.LASF478:
	.string	"S_SPOS_RAISE3"
.LASF479:
	.string	"S_SPOS_RAISE4"
.LASF480:
	.string	"S_SPOS_RAISE5"
.LASF170:
	.string	"SPR_MEDI"
.LASF172:
	.string	"SPR_PINV"
.LASF1019:
	.string	"S_BRAIN_PAIN"
.LASF290:
	.string	"S_CHAINDOWN"
.LASF509:
	.string	"S_VILE_PAIN"
.LASF556:
	.string	"S_TRACER"
.LASF39:
	.string	"_markers"
.LASF976:
	.string	"S_SSWV_ATK1"
.LASF977:
	.string	"S_SSWV_ATK2"
.LASF506:
	.string	"S_VILE_HEAL1"
.LASF507:
	.string	"S_VILE_HEAL2"
.LASF508:
	.string	"S_VILE_HEAL3"
.LASF981:
	.string	"S_SSWV_ATK6"
.LASF164:
	.string	"SPR_RKEY"
.LASF1127:
	.string	"S_STALAG"
.LASF1386:
	.string	"basetime"
.LASF842:
	.string	"S_SPID_STND2"
.LASF1311:
	.string	"MT_MISC53"
.LASF49:
	.string	"_codecvt"
.LASF1128:
	.string	"S_BLOODYTWITCH"
.LASF1197:
	.string	"S_SMALLPOOL"
.LASF1314:
	.string	"MT_MISC56"
.LASF626:
	.string	"S_FATT_PAIN"
.LASF390:
	.string	"S_PLAY_RUN1"
.LASF391:
	.string	"S_PLAY_RUN2"
.LASF392:
	.string	"S_PLAY_RUN3"
.LASF393:
	.string	"S_PLAY_RUN4"
.LASF1118:
	.string	"S_BPAK"
.LASF100:
	.string	"double"
.LASF159:
	.string	"SPR_BEXP"
.LASF1075:
	.string	"S_BSKULL2"
.LASF118:
	.string	"SPR_PUFF"
.LASF1004:
	.string	"S_COMMKEEN"
.LASF796:
	.string	"S_BOS2_STND"
.LASF124:
	.string	"SPR_BFS1"
.LASF1027:
	.string	"S_SPAWN1"
.LASF1028:
	.string	"S_SPAWN2"
.LASF1029:
	.string	"S_SPAWN3"
.LASF1030:
	.string	"S_SPAWN4"
.LASF1200:
	.string	"S_TECHLAMP2"
.LASF1201:
	.string	"S_TECHLAMP3"
.LASF78:
	.string	"wp_chainsaw"
.LASF1228:
	.string	"MT_BABY"
.LASF1141:
	.string	"S_LIVESTICK2"
.LASF1269:
	.string	"MT_MISC16"
.LASF1186:
	.string	"S_RTORCHSHRT"
.LASF1274:
	.string	"MT_MISC19"
.LASF146:
	.string	"SPR_SPID"
.LASF742:
	.string	"S_HEAD_STND"
.LASF1390:
	.string	"I_BaseTiccmd"
.LASF717:
	.string	"S_SARG_RUN1"
.LASF718:
	.string	"S_SARG_RUN2"
.LASF719:
	.string	"S_SARG_RUN3"
.LASF720:
	.string	"S_SARG_RUN4"
.LASF721:
	.string	"S_SARG_RUN5"
.LASF722:
	.string	"S_SARG_RUN6"
.LASF723:
	.string	"S_SARG_RUN7"
.LASF724:
	.string	"S_SARG_RUN8"
.LASF1252:
	.string	"MT_MISC1"
.LASF1253:
	.string	"MT_MISC2"
.LASF1254:
	.string	"MT_MISC3"
.LASF1255:
	.string	"MT_MISC4"
.LASF1256:
	.string	"MT_MISC5"
.LASF1257:
	.string	"MT_MISC6"
.LASF1258:
	.string	"MT_MISC7"
.LASF1259:
	.string	"MT_MISC8"
.LASF1260:
	.string	"MT_MISC9"
.LASF307:
	.string	"S_SAW"
.LASF175:
	.string	"SPR_MEGA"
.LASF396:
	.string	"S_PLAY_PAIN"
.LASF348:
	.string	"S_PLASBALL2"
.LASF1347:
	.string	"ps_flash"
.LASF1379:
	.string	"I_WaitVBL"
.LASF153:
	.string	"SPR_KEEN"
.LASF982:
	.string	"S_SSWV_PAIN"
.LASF1017:
	.string	"S_KEENPAIN2"
.LASF93:
	.string	"pw_infrared"
.LASF504:
	.string	"S_VILE_ATK10"
.LASF505:
	.string	"S_VILE_ATK11"
.LASF983:
	.string	"S_SSWV_PAIN2"
.LASF1338:
	.string	"MT_MISC80"
.LASF1057:
	.string	"S_BON1A"
.LASF1058:
	.string	"S_BON1B"
.LASF1059:
	.string	"S_BON1C"
.LASF1060:
	.string	"S_BON1D"
.LASF1061:
	.string	"S_BON1E"
.LASF1398:
	.string	"I_Tactile"
.LASF173:
	.string	"SPR_PSTR"
.LASF1276:
	.string	"MT_MISC21"
.LASF728:
	.string	"S_SARG_PAIN"
.LASF162:
	.string	"SPR_BON2"
.LASF1271:
	.string	"MT_CLIP"
.LASF188:
	.string	"SPR_BFUG"
.LASF1326:
	.string	"MT_MISC68"
.LASF1053:
	.string	"S_BBAR1"
.LASF1054:
	.string	"S_BBAR2"
.LASF1055:
	.string	"S_BBAR3"
.LASF241:
	.string	"S_LIGHTDONE"
.LASF892:
	.string	"S_BSPI_PAIN2"
.LASF692:
	.string	"S_TROO_ATK1"
.LASF693:
	.string	"S_TROO_ATK2"
.LASF694:
	.string	"S_TROO_ATK3"
.LASF836:
	.string	"S_SKULL_DIE2"
.LASF837:
	.string	"S_SKULL_DIE3"
.LASF838:
	.string	"S_SKULL_DIE4"
.LASF839:
	.string	"S_SKULL_DIE5"
.LASF840:
	.string	"S_SKULL_DIE6"
.LASF192:
	.string	"SPR_PLAS"
.LASF1063:
	.string	"S_BON2A"
.LASF1064:
	.string	"S_BON2B"
.LASF105:
	.string	"SPR_PISF"
.LASF104:
	.string	"SPR_PISG"
.LASF1067:
	.string	"S_BON2E"
.LASF1281:
	.string	"MT_CHAINGUN"
.LASF339:
	.string	"S_TBALLX1"
.LASF340:
	.string	"S_TBALLX2"
.LASF341:
	.string	"S_TBALLX3"
.LASF81:
	.string	"wp_nochange"
.LASF402:
	.string	"S_PLAY_DIE5"
.LASF1218:
	.string	"MT_CHAINGUY"
.LASF1099:
	.string	"S_MEGA3"
.LASF835:
	.string	"S_SKULL_DIE1"
.LASF1198:
	.string	"S_BRAINSTEM"
.LASF1003:
	.string	"S_KEENSTND"
.LASF129:
	.string	"SPR_PLAY"
.LASF52:
	.string	"_freeres_buf"
.LASF17:
	.string	"tv_sec"
.LASF19:
	.string	"long long unsigned int"
.LASF1138:
	.string	"S_HEADCANDLES2"
.LASF1248:
	.string	"MT_IFOG"
.LASF44:
	.string	"_cur_column"
.LASF220:
	.string	"SPR_FSKU"
.LASF454:
	.string	"S_SPOS_RUN6"
.LASF310:
	.string	"S_SAWUP"
.LASF1043:
	.string	"S_ARM1A"
.LASF646:
	.string	"S_CPOS_STND"
.LASF1117:
	.string	"S_SBOX"
.LASF1292:
	.string	"MT_MISC34"
.LASF349:
	.string	"S_PLASEXP"
.LASF1295:
	.string	"MT_MISC37"
.LASF1133:
	.string	"S_DEADBOTTOM"
.LASF1190:
	.string	"S_HANGNOGUTS"
.LASF205:
	.string	"SPR_GOR3"
.LASF1094:
	.string	"S_PINS2"
.LASF1095:
	.string	"S_PINS3"
.LASF1096:
	.string	"S_PINS4"
.LASF948:
	.string	"S_PAIN_ATK1"
.LASF949:
	.string	"S_PAIN_ATK2"
.LASF950:
	.string	"S_PAIN_ATK3"
.LASF951:
	.string	"S_PAIN_ATK4"
.LASF260:
	.string	"S_SGUNUP"
.LASF214:
	.string	"SPR_CBRA"
.LASF1045:
	.string	"S_ARM2A"
.LASF914:
	.string	"S_CYBER_STND"
.LASF1073:
	.string	"S_YKEY2"
.LASF37:
	.string	"_IO_backup_base"
.LASF528:
	.string	"S_FIRE8"
.LASF768:
	.string	"S_BOSS_STND2"
.LASF28:
	.string	"_IO_read_ptr"
.LASF311:
	.string	"S_SAW1"
.LASF312:
	.string	"S_SAW2"
.LASF313:
	.string	"S_SAW3"
.LASF1056:
	.string	"S_BON1"
.LASF1062:
	.string	"S_BON2"
.LASF308:
	.string	"S_SAWB"
.LASF696:
	.string	"S_TROO_PAIN2"
.LASF51:
	.string	"_freeres_list"
.LASF1234:
	.string	"MT_BOSSSPIT"
.LASF521:
	.string	"S_FIRE1"
.LASF522:
	.string	"S_FIRE2"
.LASF523:
	.string	"S_FIRE3"
.LASF524:
	.string	"S_FIRE4"
.LASF525:
	.string	"S_FIRE5"
.LASF526:
	.string	"S_FIRE6"
.LASF527:
	.string	"S_FIRE7"
.LASF182:
	.string	"SPR_BROK"
.LASF529:
	.string	"S_FIRE9"
.LASF1302:
	.string	"MT_MISC44"
.LASF1303:
	.string	"MT_MISC45"
.LASF1114:
	.string	"S_CELL"
.LASF1305:
	.string	"MT_MISC47"
.LASF180:
	.string	"SPR_AMMO"
.LASF1306:
	.string	"MT_MISC48"
.LASF1307:
	.string	"MT_MISC49"
.LASF827:
	.string	"S_SKULL_RUN1"
.LASF828:
	.string	"S_SKULL_RUN2"
.LASF1194:
	.string	"S_HANGTLOOKUP"
.LASF289:
	.string	"S_CHAIN"
.LASF61:
	.string	"timezone"
.LASF319:
	.string	"S_PLASMAFLASH1"
.LASF275:
	.string	"S_DSGUN1"
.LASF276:
	.string	"S_DSGUN2"
.LASF171:
	.string	"SPR_SOUL"
.LASF131:
	.string	"SPR_SPOS"
.LASF279:
	.string	"S_DSGUN5"
.LASF280:
	.string	"S_DSGUN6"
.LASF281:
	.string	"S_DSGUN7"
.LASF282:
	.string	"S_DSGUN8"
.LASF283:
	.string	"S_DSGUN9"
.LASF447:
	.string	"S_SPOS_STND"
.LASF151:
	.string	"SPR_PAIN"
.LASF675:
	.string	"S_CPOS_RAISE1"
.LASF1384:
	.string	"I_GetTime"
.LASF43:
	.string	"_old_offset"
.LASF1354:
	.string	"buttons"
.LASF324:
	.string	"S_BFG1"
.LASF325:
	.string	"S_BFG2"
.LASF326:
	.string	"S_BFG3"
.LASF327:
	.string	"S_BFG4"
.LASF285:
	.string	"S_DSNR1"
.LASF286:
	.string	"S_DSNR2"
.LASF826:
	.string	"S_SKULL_STND2"
.LASF1089:
	.string	"S_PINV2"
.LASF1090:
	.string	"S_PINV3"
.LASF1091:
	.string	"S_PINV4"
.LASF1204:
	.string	"S_TECH2LAMP2"
.LASF1205:
	.string	"S_TECH2LAMP3"
.LASF1206:
	.string	"S_TECH2LAMP4"
.LASF5:
	.string	"long long int"
.LASF103:
	.string	"SPR_PUNG"
.LASF670:
	.string	"S_CPOS_XDIE2"
.LASF671:
	.string	"S_CPOS_XDIE3"
.LASF672:
	.string	"S_CPOS_XDIE4"
.LASF673:
	.string	"S_CPOS_XDIE5"
.LASF674:
	.string	"S_CPOS_XDIE6"
.LASF855:
	.string	"S_SPID_ATK1"
.LASF856:
	.string	"S_SPID_ATK2"
.LASF857:
	.string	"S_SPID_ATK3"
.LASF42:
	.string	"_flags2"
.LASF579:
	.string	"S_SKEL_MISS1"
.LASF580:
	.string	"S_SKEL_MISS2"
.LASF581:
	.string	"S_SKEL_MISS3"
.LASF582:
	.string	"S_SKEL_MISS4"
.LASF336:
	.string	"S_PUFF4"
.LASF1339:
	.string	"MT_MISC81"
.LASF1076:
	.string	"S_RSKULL"
.LASF908:
	.string	"S_ARACH_PLAZ2"
.LASF1308:
	.string	"MT_MISC50"
.LASF756:
	.string	"S_HEAD_RAISE1"
.LASF1343:
	.string	"MT_MISC85"
.LASF757:
	.string	"S_HEAD_RAISE2"
.LASF758:
	.string	"S_HEAD_RAISE3"
.LASF166:
	.string	"SPR_BSKU"
.LASF760:
	.string	"S_HEAD_RAISE5"
.LASF761:
	.string	"S_HEAD_RAISE6"
.LASF1362:
	.string	"memset"
.LASF1286:
	.string	"MT_SUPERSHOTGUN"
.LASF177:
	.string	"SPR_PMAP"
.LASF1024:
	.string	"S_BRAINEYE"
.LASF178:
	.string	"SPR_PVIS"
.LASF1244:
	.string	"MT_ARACHPLAZ"
.LASF1361:
	.string	"vfprintf"
.LASF502:
	.string	"S_VILE_ATK8"
.LASF443:
	.string	"S_POSS_RAISE1"
.LASF444:
	.string	"S_POSS_RAISE2"
.LASF445:
	.string	"S_POSS_RAISE3"
.LASF446:
	.string	"S_POSS_RAISE4"
.LASF298:
	.string	"S_MISSILEDOWN"
.LASF1162:
	.string	"S_FLOATSKULL2"
.LASF1163:
	.string	"S_FLOATSKULL3"
.LASF1097:
	.string	"S_MEGA"
.LASF777:
	.string	"S_BOSS_ATK1"
.LASF778:
	.string	"S_BOSS_ATK2"
.LASF779:
	.string	"S_BOSS_ATK3"
.LASF236:
	.string	"SPR_BRS1"
.LASF584:
	.string	"S_SKEL_PAIN2"
.LASF1121:
	.string	"S_CSAW"
.LASF88:
	.string	"pw_invulnerability"
.LASF764:
	.string	"S_BRBALLX1"
.LASF765:
	.string	"S_BRBALLX2"
.LASF766:
	.string	"S_BRBALLX3"
.LASF894:
	.string	"S_BSPI_DIE2"
.LASF895:
	.string	"S_BSPI_DIE3"
.LASF896:
	.string	"S_BSPI_DIE4"
.LASF897:
	.string	"S_BSPI_DIE5"
.LASF74:
	.string	"wp_chaingun"
.LASF899:
	.string	"S_BSPI_DIE7"
.LASF823:
	.string	"S_BOS2_RAISE6"
.LASF450:
	.string	"S_SPOS_RUN2"
.LASF451:
	.string	"S_SPOS_RUN3"
.LASF953:
	.string	"S_PAIN_PAIN2"
.LASF588:
	.string	"S_SKEL_DIE4"
.LASF185:
	.string	"SPR_SHEL"
.LASF1327:
	.string	"MT_MISC69"
.LASF95:
	.string	"false"
.LASF237:
	.string	"SPR_TLMP"
.LASF415:
	.string	"S_POSS_STND2"
.LASF1285:
	.string	"MT_SHOTGUN"
.LASF1210:
	.string	"MT_SHOTGUY"
.LASF1199:
	.string	"S_TECHLAMP"
.LASF1231:
	.string	"MT_WOLFSS"
.LASF797:
	.string	"S_BOS2_STND2"
.LASF1373:
	.string	"argptr"
.LASF292:
	.string	"S_CHAIN1"
.LASF293:
	.string	"S_CHAIN2"
.LASF294:
	.string	"S_CHAIN3"
.LASF345:
	.string	"S_RBALLX2"
.LASF346:
	.string	"S_RBALLX3"
.LASF222:
	.string	"SPR_TBLU"
.LASF448:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF87:
	.string	"am_noammo"
.LASF1360:
	.string	"fflush"
.LASF1363:
	.string	"usleep"
.LASF424:
	.string	"S_POSS_ATK1"
.LASF425:
	.string	"S_POSS_ATK2"
.LASF426:
	.string	"S_POSS_ATK3"
.LASF1329:
	.string	"MT_MISC71"
.LASF1187:
	.string	"S_RTORCHSHRT2"
.LASF1188:
	.string	"S_RTORCHSHRT3"
.LASF858:
	.string	"S_SPID_ATK4"
.LASF10:
	.string	"short int"
.LASF1335:
	.string	"MT_MISC77"
.LASF1336:
	.string	"MT_MISC78"
.LASF1337:
	.string	"MT_MISC79"
.LASF1226:
	.string	"MT_SKULL"
.LASF1367:
	.string	"I_ShutdownMusic"
.LASF1213:
	.string	"MT_UNDEAD"
.LASF45:
	.string	"_vtable_offset"
.LASF585:
	.string	"S_SKEL_DIE1"
.LASF586:
	.string	"S_SKEL_DIE2"
.LASF587:
	.string	"S_SKEL_DIE3"
.LASF133:
	.string	"SPR_FIRE"
.LASF589:
	.string	"S_SKEL_DIE5"
.LASF590:
	.string	"S_SKEL_DIE6"
.LASF1357:
	.string	"demorecording"
.LASF1196:
	.string	"S_COLONGIBS"
.LASF238:
	.string	"SPR_TLP2"
.LASF347:
	.string	"S_PLASBALL"
.LASF194:
	.string	"SPR_SGN2"
.LASF147:
	.string	"SPR_BSPI"
.LASF149:
	.string	"SPR_APBX"
.LASF1261:
	.string	"MT_MISC10"
.LASF1262:
	.string	"MT_MISC11"
.LASF1263:
	.string	"MT_MISC12"
.LASF1265:
	.string	"MT_MISC13"
.LASF1267:
	.string	"MT_MISC14"
.LASF1268:
	.string	"MT_MISC15"
.LASF62:
	.string	"tz_minuteswest"
.LASF1272:
	.string	"MT_MISC17"
.LASF1273:
	.string	"MT_MISC18"
.LASF1110:
	.string	"S_CLIP"
.LASF1235:
	.string	"MT_BOSSTARGET"
.LASF1385:
	.string	"newtics"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"i_system.c"
.LASF1:
	.string	"/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
