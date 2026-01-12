	.file	"w_wad.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "w_wad.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 48
rcsid:
	.string	"$Id: w_wad.c,v 1.5 1997/02/03 16:47:57 b1 Exp $"
	.globl	lumpinfo
	.bss
	.align 8
	.type	lumpinfo, @object
	.size	lumpinfo, 8
lumpinfo:
	.zero	8
	.globl	numlumps
	.align 4
	.type	numlumps, @object
	.size	numlumps, 4
numlumps:
	.zero	4
	.globl	lumpcache
	.align 8
	.type	lumpcache, @object
	.size	lumpcache, 8
lumpcache:
	.zero	8
	.text
	.globl	strupr
	.type	strupr, @function
strupr:
.LFB6:
	.file 1 "w_wad.c"
	.loc 1 70 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
# w_wad.c:71:     while (*s) { *s = toupper(*s); s++; }
	.loc 1 71 11
	jmp	.L2	#
.L3:
# w_wad.c:71:     while (*s) { *s = toupper(*s); s++; }
	.loc 1 71 31 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp87
	movzbl	(%rax), %eax	# *s_6, _1
# w_wad.c:71:     while (*s) { *s = toupper(*s); s++; }
	.loc 1 71 23 discriminator 2
	movsbl	%al, %eax	# _1, _2
	movl	%eax, %edi	# _2,
	call	toupper@PLT	#
# w_wad.c:71:     while (*s) { *s = toupper(*s); s++; }
	.loc 1 71 21 discriminator 2
	movl	%eax, %edx	# _3, _4
	movq	-8(%rbp), %rax	# s, tmp88
	movb	%dl, (%rax)	# _4, *s_6
# w_wad.c:71:     while (*s) { *s = toupper(*s); s++; }
	.loc 1 71 37 discriminator 2
	addq	$1, -8(%rbp)	#, s
.L2:
# w_wad.c:71:     while (*s) { *s = toupper(*s); s++; }
	.loc 1 71 12 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp89
	movzbl	(%rax), %eax	# *s_6, _5
	testb	%al, %al	# _5
	jne	.L3	#,
# w_wad.c:72: }
	.loc 1 72 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	strupr, .-strupr
	.section	.rodata
.LC0:
	.string	"Error fstating"
	.text
	.globl	filelength
	.type	filelength, @function
filelength:
.LFB7:
	.loc 1 75 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movl	%edi, -164(%rbp)	# handle, handle
# w_wad.c:75: { 
	.loc 1 75 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp90
	movq	%rax, -8(%rbp)	# tmp90, D.4857
	xorl	%eax, %eax	# tmp90
# w_wad.c:78:     if (fstat (handle,&fileinfo) == -1)
	.loc 1 78 9
	leaq	-160(%rbp), %rdx	#, tmp86
	movl	-164(%rbp), %eax	# handle, tmp87
	movq	%rdx, %rsi	# tmp86,
	movl	%eax, %edi	# tmp87,
	call	fstat@PLT	#
# w_wad.c:78:     if (fstat (handle,&fileinfo) == -1)
	.loc 1 78 8 discriminator 1
	cmpl	$-1, %eax	#, _1
	jne	.L5	#,
# w_wad.c:79: 	I_Error ("Error fstating");
	.loc 1 79 2
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L5:
# w_wad.c:81:     return fileinfo.st_size;
	.loc 1 81 20
	movq	-112(%rbp), %rax	# fileinfo.st_size, _2
# w_wad.c:82: }
	.loc 1 82 1
	movq	-8(%rbp), %rdx	# D.4857, tmp91
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	je	.L7	#,
	call	__stack_chk_fail@PLT	#
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	filelength, .-filelength
	.section	.rodata
.LC1:
	.string	"Filename base of %s >8 chars"
	.text
	.globl	ExtractFileBase
	.type	ExtractFileBase, @function
ExtractFileBase:
.LFB8:
	.loc 1 89 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# path, path
	movq	%rsi, -32(%rbp)	# dest, dest
# w_wad.c:93:     src = path + strlen(path) - 1;
	.loc 1 93 18
	movq	-24(%rbp), %rax	# path, tmp96
	movq	%rax, %rdi	# tmp96,
	call	strlen@PLT	#
# w_wad.c:93:     src = path + strlen(path) - 1;
	.loc 1 93 31 discriminator 1
	leaq	-1(%rax), %rdx	#, _2
# w_wad.c:93:     src = path + strlen(path) - 1;
	.loc 1 93 9 discriminator 1
	movq	-24(%rbp), %rax	# path, tmp100
	addq	%rdx, %rax	# _2, tmp99
	movq	%rax, -8(%rbp)	# tmp99, src
# w_wad.c:96:     while (src != path
	.loc 1 96 11
	jmp	.L9	#
.L11:
# w_wad.c:100: 	src--;
	.loc 1 100 5
	subq	$1, -8(%rbp)	#, src
.L9:
# w_wad.c:98: 	   && *(src-1) != '/')
	.loc 1 98 5
	movq	-8(%rbp), %rax	# src, tmp101
	cmpq	-24(%rbp), %rax	# path, tmp101
	je	.L10	#,
# w_wad.c:97: 	   && *(src-1) != '\\'
	.loc 1 97 13
	movq	-8(%rbp), %rax	# src, tmp102
	subq	$1, %rax	#, _3
# w_wad.c:97: 	   && *(src-1) != '\\'
	.loc 1 97 8
	movzbl	(%rax), %eax	# *_3, _4
# w_wad.c:97: 	   && *(src-1) != '\\'
	.loc 1 97 5
	cmpb	$92, %al	#, _4
	je	.L10	#,
# w_wad.c:98: 	   && *(src-1) != '/')
	.loc 1 98 13
	movq	-8(%rbp), %rax	# src, tmp103
	subq	$1, %rax	#, _5
# w_wad.c:98: 	   && *(src-1) != '/')
	.loc 1 98 8
	movzbl	(%rax), %eax	# *_5, _6
# w_wad.c:98: 	   && *(src-1) != '/')
	.loc 1 98 5
	cmpb	$47, %al	#, _6
	jne	.L11	#,
.L10:
# w_wad.c:104:     memset (dest,0,8);
	.loc 1 104 5
	movq	-32(%rbp), %rax	# dest, tmp104
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	memset@PLT	#
# w_wad.c:105:     length = 0;
	.loc 1 105 12
	movl	$0, -12(%rbp)	#, length
# w_wad.c:107:     while (*src && *src != '.')
	.loc 1 107 11
	jmp	.L12	#
.L15:
# w_wad.c:109: 	if (++length == 9)
	.loc 1 109 5
	addl	$1, -12(%rbp)	#, length
	cmpl	$9, -12(%rbp)	#, length
	jne	.L13	#,
# w_wad.c:110: 	    I_Error ("Filename base of %s >8 chars",path);
	.loc 1 110 6
	movq	-24(%rbp), %rax	# path, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L13:
# w_wad.c:112: 	*dest++ = toupper((int)*src++);
	.loc 1 112 29
	movq	-8(%rbp), %rax	# src, src.0_7
	leaq	1(%rax), %rdx	#, tmp107
	movq	%rdx, -8(%rbp)	# tmp107, src
# w_wad.c:112: 	*dest++ = toupper((int)*src++);
	.loc 1 112 25
	movzbl	(%rax), %eax	# *src.0_7, _8
# w_wad.c:112: 	*dest++ = toupper((int)*src++);
	.loc 1 112 12
	movsbl	%al, %eax	# _8, _9
	movl	%eax, %edi	# _9,
	call	toupper@PLT	#
	movl	%eax, %ecx	#, _10
# w_wad.c:112: 	*dest++ = toupper((int)*src++);
	.loc 1 112 7 discriminator 1
	movq	-32(%rbp), %rax	# dest, dest.1_11
	leaq	1(%rax), %rdx	#, tmp108
	movq	%rdx, -32(%rbp)	# tmp108, dest
# w_wad.c:112: 	*dest++ = toupper((int)*src++);
	.loc 1 112 10 discriminator 1
	movl	%ecx, %edx	# _10, _12
	movb	%dl, (%rax)	# _12, *dest.1_11
.L12:
# w_wad.c:107:     while (*src && *src != '.')
	.loc 1 107 12
	movq	-8(%rbp), %rax	# src, tmp109
	movzbl	(%rax), %eax	# *src_17, _13
# w_wad.c:107:     while (*src && *src != '.')
	.loc 1 107 17
	testb	%al, %al	# _13
	je	.L16	#,
# w_wad.c:107:     while (*src && *src != '.')
	.loc 1 107 20 discriminator 1
	movq	-8(%rbp), %rax	# src, tmp110
	movzbl	(%rax), %eax	# *src_17, _14
# w_wad.c:107:     while (*src && *src != '.')
	.loc 1 107 17 discriminator 1
	cmpb	$46, %al	#, _14
	jne	.L15	#,
.L16:
# w_wad.c:114: }
	.loc 1 114 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	ExtractFileBase, .-ExtractFileBase
	.globl	reloadlump
	.bss
	.align 4
	.type	reloadlump, @object
	.size	reloadlump, 4
reloadlump:
	.zero	4
	.globl	reloadname
	.align 8
	.type	reloadname, @object
	.size	reloadname, 8
reloadname:
	.zero	8
	.section	.rodata
.LC2:
	.string	" couldn't open %s\n"
.LC3:
	.string	" adding %s\n"
.LC4:
	.string	"wad"
.LC5:
	.string	"IWAD"
.LC6:
	.string	"PWAD"
	.align 8
.LC7:
	.string	"Wad file %s doesn't have IWAD or PWAD id\n"
.LC8:
	.string	"Couldn't realloc lumpinfo"
	.text
	.globl	W_AddFile
	.type	W_AddFile, @function
W_AddFile:
.LFB9:
	.loc 1 142 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# filename, filename
# w_wad.c:142: {
	.loc 1 142 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp189
	movq	%rax, -8(%rbp)	# tmp189, D.4861
	xorl	%eax, %eax	# tmp189
# w_wad.c:156:     if (filename[0] == '~')
	.loc 1 156 17
	movq	-104(%rbp), %rax	# filename, tmp124
	movzbl	(%rax), %eax	# *filename_56(D), _1
# w_wad.c:156:     if (filename[0] == '~')
	.loc 1 156 8
	cmpb	$126, %al	#, _1
	jne	.L18	#,
# w_wad.c:158: 	filename++;
	.loc 1 158 10
	addq	$1, -104(%rbp)	#, filename
# w_wad.c:159: 	reloadname = filename;
	.loc 1 159 13
	movq	-104(%rbp), %rax	# filename, tmp125
	movq	%rax, reloadname(%rip)	# tmp125, reloadname
# w_wad.c:160: 	reloadlump = numlumps;
	.loc 1 160 13
	movl	numlumps(%rip), %eax	# numlumps, numlumps.2_2
	movl	%eax, reloadlump(%rip)	# numlumps.2_2, reloadlump
.L18:
# w_wad.c:163:     if ( (handle = open (filename,O_RDONLY | O_BINARY)) == -1)
	.loc 1 163 20
	movq	-104(%rbp), %rax	# filename, tmp126
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp126,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -80(%rbp)	# tmp127, handle
# w_wad.c:163:     if ( (handle = open (filename,O_RDONLY | O_BINARY)) == -1)
	.loc 1 163 8 discriminator 1
	cmpl	$-1, -80(%rbp)	#, handle
	jne	.L19	#,
# w_wad.c:165: 	printf (" couldn't open %s\n",filename);
	.loc 1 165 2
	movq	-104(%rbp), %rax	# filename, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC2(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	printf@PLT	#
	jmp	.L17	#
.L19:
# w_wad.c:169:     printf (" adding %s\n",filename);
	.loc 1 169 5
	movq	-104(%rbp), %rax	# filename, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC3(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	printf@PLT	#
# w_wad.c:170:     startlump = numlumps;
	.loc 1 170 15
	movl	numlumps(%rip), %eax	# numlumps, tmp132
	movl	%eax, -76(%rbp)	# tmp132, startlump
# w_wad.c:172:     if (strcmpi (filename+strlen(filename)-3 , "wad" ) )
	.loc 1 172 27
	movq	-104(%rbp), %rax	# filename, tmp133
	movq	%rax, %rdi	# tmp133,
	call	strlen@PLT	#
# w_wad.c:172:     if (strcmpi (filename+strlen(filename)-3 , "wad" ) )
	.loc 1 172 43 discriminator 1
	leaq	-3(%rax), %rdx	#, _4
	movq	-104(%rbp), %rax	# filename, tmp134
	addq	%rdx, %rax	# _4, _5
# w_wad.c:172:     if (strcmpi (filename+strlen(filename)-3 , "wad" ) )
	.loc 1 172 9 discriminator 1
	leaq	.LC4(%rip), %rdx	#, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# _5,
	call	strcasecmp@PLT	#
# w_wad.c:172:     if (strcmpi (filename+strlen(filename)-3 , "wad" ) )
	.loc 1 172 8 discriminator 2
	testl	%eax, %eax	# _6
	je	.L21	#,
# w_wad.c:175: 	fileinfo = &singleinfo;
	.loc 1 175 11
	leaq	-32(%rbp), %rax	#, tmp136
	movq	%rax, -56(%rbp)	# tmp136, fileinfo
# w_wad.c:176: 	singleinfo.filepos = 0;
	.loc 1 176 21
	movl	$0, -32(%rbp)	#, singleinfo.filepos
# w_wad.c:177: 	singleinfo.size = LONG(filelength(handle));
	.loc 1 177 20
	movl	-80(%rbp), %eax	# handle, tmp137
	movl	%eax, %edi	# tmp137,
	call	filelength	#
# w_wad.c:177: 	singleinfo.size = LONG(filelength(handle));
	.loc 1 177 18 discriminator 1
	movl	%eax, -28(%rbp)	# _7, singleinfo.size
# w_wad.c:178: 	ExtractFileBase (filename, singleinfo.name);
	.loc 1 178 2
	leaq	-32(%rbp), %rax	#, tmp138
	leaq	8(%rax), %rdx	#, tmp139
	movq	-104(%rbp), %rax	# filename, tmp140
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	ExtractFileBase	#
# w_wad.c:179: 	numlumps++;
	.loc 1 179 10
	movl	numlumps(%rip), %eax	# numlumps, numlumps.3_8
	addl	$1, %eax	#, _9
	movl	%eax, numlumps(%rip)	# _9, numlumps
	jmp	.L22	#
.L21:
# w_wad.c:184: 	read (handle, &header, sizeof(header));
	.loc 1 184 2
	leaq	-44(%rbp), %rcx	#, tmp141
	movl	-80(%rbp), %eax	# handle, tmp142
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp141,
	movl	%eax, %edi	# tmp142,
	call	read@PLT	#
# w_wad.c:185: 	if (strncmp(header.identification,"IWAD",4))
	.loc 1 185 6
	leaq	-44(%rbp), %rax	#, tmp143
	movl	$4, %edx	#,
	leaq	.LC5(%rip), %rcx	#, tmp144
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp143,
	call	strncmp@PLT	#
# w_wad.c:185: 	if (strncmp(header.identification,"IWAD",4))
	.loc 1 185 5 discriminator 1
	testl	%eax, %eax	# _10
	je	.L23	#,
# w_wad.c:188: 	    if (strncmp(header.identification,"PWAD",4))
	.loc 1 188 10
	leaq	-44(%rbp), %rax	#, tmp145
	movl	$4, %edx	#,
	leaq	.LC6(%rip), %rcx	#, tmp146
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp145,
	call	strncmp@PLT	#
# w_wad.c:188: 	    if (strncmp(header.identification,"PWAD",4))
	.loc 1 188 9 discriminator 1
	testl	%eax, %eax	# _11
	je	.L23	#,
# w_wad.c:190: 		I_Error ("Wad file %s doesn't have IWAD "
	.loc 1 190 3
	movq	-104(%rbp), %rax	# filename, tmp147
	movq	%rax, %rsi	# tmp147,
	leaq	.LC7(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L23:
# w_wad.c:196: 	header.numlumps = LONG(header.numlumps);
	.loc 1 196 20
	movl	-40(%rbp), %eax	# header.numlumps, _12
# w_wad.c:196: 	header.numlumps = LONG(header.numlumps);
	.loc 1 196 18
	movl	%eax, -40(%rbp)	# _12, header.numlumps
# w_wad.c:197: 	header.infotableofs = LONG(header.infotableofs);
	.loc 1 197 24
	movl	-36(%rbp), %eax	# header.infotableofs, _13
# w_wad.c:197: 	header.infotableofs = LONG(header.infotableofs);
	.loc 1 197 22
	movl	%eax, -36(%rbp)	# _13, header.infotableofs
# w_wad.c:198: 	length = header.numlumps*sizeof(filelump_t);
	.loc 1 198 17
	movl	-40(%rbp), %eax	# header.numlumps, _14
	cltq
# w_wad.c:198: 	length = header.numlumps*sizeof(filelump_t);
	.loc 1 198 9
	sall	$4, %eax	#, _17
	movl	%eax, -72(%rbp)	# _17, length
# w_wad.c:199: 	fileinfo = alloca (length);
	.loc 1 199 13
	movl	-72(%rbp), %eax	# length, tmp149
	cltq
	leaq	8(%rax), %rdx	#, tmp150
	movl	$16, %eax	#, tmp187
	subq	$1, %rax	#, tmp151
	addq	%rdx, %rax	# tmp150, tmp152
	movl	$16, %esi	#, tmp188
	movl	$0, %edx	#, tmp155
	divq	%rsi	# tmp188
	imulq	$16, %rax, %rax	#, tmp154, tmp156
	movq	%rax, %rcx	# tmp156, tmp158
	andq	$-4096, %rcx	#, tmp158
	movq	%rsp, %rdx	#, tmp159
	subq	%rcx, %rdx	# tmp158, tmp159
.L24:
	cmpq	%rdx, %rsp	# tmp159,
	je	.L25	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L24	#
.L25:
	movq	%rax, %rdx	# tmp156, tmp160
	andl	$4095, %edx	#, tmp160
	subq	%rdx, %rsp	# tmp160,
	movq	%rax, %rdx	# tmp156, tmp161
	andl	$4095, %edx	#, tmp161
	testq	%rdx, %rdx	# tmp161
	je	.L26	#,
	andl	$4095, %eax	#, tmp162
	subq	$8, %rax	#, tmp162
	addq	%rsp, %rax	#, tmp163
	orq	$0, (%rax)	#,
.L26:
	movq	%rsp, %rax	#, tmp157
	addq	$15, %rax	#, tmp164
	shrq	$4, %rax	#, tmp165
	salq	$4, %rax	#, tmp166
	movq	%rax, -56(%rbp)	# tmp166, fileinfo
# w_wad.c:200: 	lseek (handle, header.infotableofs, SEEK_SET);
	.loc 1 200 23
	movl	-36(%rbp), %eax	# header.infotableofs, _19
# w_wad.c:200: 	lseek (handle, header.infotableofs, SEEK_SET);
	.loc 1 200 2
	movslq	%eax, %rcx	# _19, _20
	movl	-80(%rbp), %eax	# handle, tmp167
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# _20,
	movl	%eax, %edi	# tmp167,
	call	lseek@PLT	#
# w_wad.c:201: 	read (handle, fileinfo, length);
	.loc 1 201 2
	movl	-72(%rbp), %eax	# length, tmp168
	movslq	%eax, %rdx	# tmp168, _21
	movq	-56(%rbp), %rcx	# fileinfo, tmp169
	movl	-80(%rbp), %eax	# handle, tmp170
	movq	%rcx, %rsi	# tmp169,
	movl	%eax, %edi	# tmp170,
	call	read@PLT	#
# w_wad.c:202: 	numlumps += header.numlumps;
	.loc 1 202 20
	movl	-40(%rbp), %edx	# header.numlumps, _22
# w_wad.c:202: 	numlumps += header.numlumps;
	.loc 1 202 11
	movl	numlumps(%rip), %eax	# numlumps, numlumps.4_23
	addl	%edx, %eax	# _22, _24
	movl	%eax, numlumps(%rip)	# _24, numlumps
.L22:
# w_wad.c:207:     lumpinfo = realloc (lumpinfo, numlumps*sizeof(lumpinfo_t));
	.loc 1 207 16
	movl	numlumps(%rip), %eax	# numlumps, numlumps.5_25
	movslq	%eax, %rdx	# numlumps.5_25, _26
	movq	%rdx, %rax	# _26, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# _26, tmp171
	salq	$2, %rax	#, tmp172
	movq	%rax, %rdx	# tmp171, _27
	movq	lumpinfo(%rip), %rax	# lumpinfo, lumpinfo.6_28
	movq	%rdx, %rsi	# _27,
	movq	%rax, %rdi	# lumpinfo.6_28,
	call	realloc@PLT	#
# w_wad.c:207:     lumpinfo = realloc (lumpinfo, numlumps*sizeof(lumpinfo_t));
	.loc 1 207 14 discriminator 1
	movq	%rax, lumpinfo(%rip)	# _29, lumpinfo
# w_wad.c:209:     if (!lumpinfo)
	.loc 1 209 9
	movq	lumpinfo(%rip), %rax	# lumpinfo, lumpinfo.7_30
# w_wad.c:209:     if (!lumpinfo)
	.loc 1 209 8
	testq	%rax, %rax	# lumpinfo.7_30
	jne	.L27	#,
# w_wad.c:210: 	I_Error ("Couldn't realloc lumpinfo");
	.loc 1 210 2
	leaq	.LC8(%rip), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L27:
# w_wad.c:212:     lump_p = &lumpinfo[startlump];
	.loc 1 212 14
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.8_31
# w_wad.c:212:     lump_p = &lumpinfo[startlump];
	.loc 1 212 23
	movl	-76(%rbp), %eax	# startlump, tmp174
	movslq	%eax, %rdx	# tmp174, _32
	movq	%rdx, %rax	# _32, tmp175
	salq	$2, %rax	#, tmp175
	addq	%rdx, %rax	# _32, tmp175
	salq	$2, %rax	#, tmp176
# w_wad.c:212:     lump_p = &lumpinfo[startlump];
	.loc 1 212 12
	addq	%rcx, %rax	# lumpinfo.8_31, tmp177
	movq	%rax, -64(%rbp)	# tmp177, lump_p
# w_wad.c:214:     storehandle = reloadname ? -1 : handle;
	.loc 1 214 30
	movq	reloadname(%rip), %rax	# reloadname, reloadname.10_34
# w_wad.c:214:     storehandle = reloadname ? -1 : handle;
	.loc 1 214 35
	testq	%rax, %rax	# reloadname.10_34
	jne	.L28	#,
# w_wad.c:214:     storehandle = reloadname ? -1 : handle;
	.loc 1 214 35 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# handle, iftmp.9_47
	jmp	.L29	#
.L28:
# w_wad.c:214:     storehandle = reloadname ? -1 : handle;
	.loc 1 214 35 discriminator 2
	movl	$-1, %eax	#, iftmp.9_47
.L29:
# w_wad.c:214:     storehandle = reloadname ? -1 : handle;
	.loc 1 214 17 is_stmt 1 discriminator 4
	movl	%eax, -68(%rbp)	# iftmp.9_47, storehandle
# w_wad.c:216:     for (i=startlump ; i<numlumps ; i++,lump_p++, fileinfo++)
	.loc 1 216 11
	movl	-76(%rbp), %eax	# startlump, tmp178
	movl	%eax, -84(%rbp)	# tmp178, i
# w_wad.c:216:     for (i=startlump ; i<numlumps ; i++,lump_p++, fileinfo++)
	.loc 1 216 5
	jmp	.L30	#
.L31:
# w_wad.c:218: 	lump_p->handle = storehandle;
	.loc 1 218 17
	movq	-64(%rbp), %rax	# lump_p, tmp179
	movl	-68(%rbp), %edx	# storehandle, tmp180
	movl	%edx, 8(%rax)	# tmp180, lump_p_43->handle
# w_wad.c:219: 	lump_p->position = LONG(fileinfo->filepos);
	.loc 1 219 21
	movq	-56(%rbp), %rax	# fileinfo, tmp181
	movl	(%rax), %edx	# fileinfo_46->filepos, _35
# w_wad.c:219: 	lump_p->position = LONG(fileinfo->filepos);
	.loc 1 219 19
	movq	-64(%rbp), %rax	# lump_p, tmp182
	movl	%edx, 12(%rax)	# _35, lump_p_43->position
# w_wad.c:220: 	lump_p->size = LONG(fileinfo->size);
	.loc 1 220 17
	movq	-56(%rbp), %rax	# fileinfo, tmp183
	movl	4(%rax), %edx	# fileinfo_46->size, _36
# w_wad.c:220: 	lump_p->size = LONG(fileinfo->size);
	.loc 1 220 15
	movq	-64(%rbp), %rax	# lump_p, tmp184
	movl	%edx, 16(%rax)	# _36, lump_p_43->size
# w_wad.c:221: 	strncpy (lump_p->name, fileinfo->name, 8);
	.loc 1 221 33
	movq	-56(%rbp), %rax	# fileinfo, tmp185
	leaq	8(%rax), %rcx	#, _37
# w_wad.c:221: 	strncpy (lump_p->name, fileinfo->name, 8);
	.loc 1 221 17
	movq	-64(%rbp), %rax	# lump_p, _38
# w_wad.c:221: 	strncpy (lump_p->name, fileinfo->name, 8);
	.loc 1 221 2
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# _37,
	movq	%rax, %rdi	# _38,
	call	strncpy@PLT	#
# w_wad.c:216:     for (i=startlump ; i<numlumps ; i++,lump_p++, fileinfo++)
	.loc 1 216 38 discriminator 3
	addl	$1, -84(%rbp)	#, i
# w_wad.c:216:     for (i=startlump ; i<numlumps ; i++,lump_p++, fileinfo++)
	.loc 1 216 47 discriminator 3
	addq	$20, -64(%rbp)	#, lump_p
# w_wad.c:216:     for (i=startlump ; i<numlumps ; i++,lump_p++, fileinfo++)
	.loc 1 216 59 discriminator 3
	addq	$16, -56(%rbp)	#, fileinfo
.L30:
# w_wad.c:216:     for (i=startlump ; i<numlumps ; i++,lump_p++, fileinfo++)
	.loc 1 216 25 discriminator 1
	movl	numlumps(%rip), %eax	# numlumps, numlumps.11_39
	cmpl	%eax, -84(%rbp)	# numlumps.12_40, i
	jb	.L31	#,
# w_wad.c:224:     if (reloadname)
	.loc 1 224 9
	movq	reloadname(%rip), %rax	# reloadname, reloadname.13_41
# w_wad.c:224:     if (reloadname)
	.loc 1 224 8
	testq	%rax, %rax	# reloadname.13_41
	je	.L17	#,
# w_wad.c:225: 	close (handle);
	.loc 1 225 2
	movl	-80(%rbp), %eax	# handle, tmp186
	movl	%eax, %edi	# tmp186,
	call	close@PLT	#
.L17:
# w_wad.c:226: }
	.loc 1 226 1
	movq	-8(%rbp), %rax	# D.4861, tmp190
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp190
	je	.L33	#,
	call	__stack_chk_fail@PLT	#
.L33:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	W_AddFile, .-W_AddFile
	.section	.rodata
.LC9:
	.string	"W_Reload: couldn't open %s"
	.text
	.globl	W_Reload
	.type	W_Reload, @function
W_Reload:
.LFB10:
	.loc 1 237 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# w_wad.c:237: {
	.loc 1 237 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp152
	movq	%rax, -8(%rbp)	# tmp152, D.4870
	xorl	%eax, %eax	# tmp152
# w_wad.c:246:     if (!reloadname)
	.loc 1 246 9
	movq	reloadname(%rip), %rax	# reloadname, reloadname.14_1
# w_wad.c:246:     if (!reloadname)
	.loc 1 246 8
	testq	%rax, %rax	# reloadname.14_1
	je	.L45	#,
# w_wad.c:249:     if ( (handle = open (reloadname,O_RDONLY | O_BINARY)) == -1)
	.loc 1 249 20
	movq	reloadname(%rip), %rax	# reloadname, reloadname.15_2
	movl	$0, %esi	#,
	movq	%rax, %rdi	# reloadname.15_2,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -52(%rbp)	# tmp113, handle
# w_wad.c:249:     if ( (handle = open (reloadname,O_RDONLY | O_BINARY)) == -1)
	.loc 1 249 8 discriminator 1
	cmpl	$-1, -52(%rbp)	#, handle
	jne	.L37	#,
# w_wad.c:250: 	I_Error ("W_Reload: couldn't open %s",reloadname);
	.loc 1 250 2
	movq	reloadname(%rip), %rax	# reloadname, reloadname.16_3
	movq	%rax, %rsi	# reloadname.16_3,
	leaq	.LC9(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L37:
# w_wad.c:252:     read (handle, &header, sizeof(header));
	.loc 1 252 5
	leaq	-20(%rbp), %rcx	#, tmp115
	movl	-52(%rbp), %eax	# handle, tmp116
	movl	$12, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movl	%eax, %edi	# tmp116,
	call	read@PLT	#
# w_wad.c:253:     lumpcount = LONG(header.numlumps);
	.loc 1 253 15
	movl	-16(%rbp), %eax	# header.numlumps, tmp117
	movl	%eax, -48(%rbp)	# tmp117, lumpcount
# w_wad.c:254:     header.infotableofs = LONG(header.infotableofs);
	.loc 1 254 27
	movl	-12(%rbp), %eax	# header.infotableofs, _4
# w_wad.c:254:     header.infotableofs = LONG(header.infotableofs);
	.loc 1 254 25
	movl	%eax, -12(%rbp)	# _4, header.infotableofs
# w_wad.c:255:     length = lumpcount*sizeof(filelump_t);
	.loc 1 255 12
	movl	-48(%rbp), %eax	# lumpcount, tmp118
	cltq
	sall	$4, %eax	#, _7
	movl	%eax, -44(%rbp)	# _7, length
# w_wad.c:256:     fileinfo = alloca (length);
	.loc 1 256 16
	movl	-44(%rbp), %eax	# length, tmp119
	cltq
	leaq	8(%rax), %rdx	#, tmp120
	movl	$16, %eax	#, tmp150
	subq	$1, %rax	#, tmp121
	addq	%rdx, %rax	# tmp120, tmp122
	movl	$16, %esi	#, tmp151
	movl	$0, %edx	#, tmp125
	divq	%rsi	# tmp151
	imulq	$16, %rax, %rax	#, tmp124, tmp126
	movq	%rax, %rcx	# tmp126, tmp128
	andq	$-4096, %rcx	#, tmp128
	movq	%rsp, %rdx	#, tmp129
	subq	%rcx, %rdx	# tmp128, tmp129
.L38:
	cmpq	%rdx, %rsp	# tmp129,
	je	.L39	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L38	#
.L39:
	movq	%rax, %rdx	# tmp126, tmp130
	andl	$4095, %edx	#, tmp130
	subq	%rdx, %rsp	# tmp130,
	movq	%rax, %rdx	# tmp126, tmp131
	andl	$4095, %edx	#, tmp131
	testq	%rdx, %rdx	# tmp131
	je	.L40	#,
	andl	$4095, %eax	#, tmp132
	subq	$8, %rax	#, tmp132
	addq	%rsp, %rax	#, tmp133
	orq	$0, (%rax)	#,
.L40:
	movq	%rsp, %rax	#, tmp127
	addq	$15, %rax	#, tmp134
	shrq	$4, %rax	#, tmp135
	salq	$4, %rax	#, tmp136
	movq	%rax, -32(%rbp)	# tmp136, fileinfo
# w_wad.c:257:     lseek (handle, header.infotableofs, SEEK_SET);
	.loc 1 257 26
	movl	-12(%rbp), %eax	# header.infotableofs, _9
# w_wad.c:257:     lseek (handle, header.infotableofs, SEEK_SET);
	.loc 1 257 5
	movslq	%eax, %rcx	# _9, _10
	movl	-52(%rbp), %eax	# handle, tmp137
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# _10,
	movl	%eax, %edi	# tmp137,
	call	lseek@PLT	#
# w_wad.c:258:     read (handle, fileinfo, length);
	.loc 1 258 5
	movl	-44(%rbp), %eax	# length, tmp138
	movslq	%eax, %rdx	# tmp138, _11
	movq	-32(%rbp), %rcx	# fileinfo, tmp139
	movl	-52(%rbp), %eax	# handle, tmp140
	movq	%rcx, %rsi	# tmp139,
	movl	%eax, %edi	# tmp140,
	call	read@PLT	#
# w_wad.c:261:     lump_p = &lumpinfo[reloadlump];
	.loc 1 261 14
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.17_12
# w_wad.c:261:     lump_p = &lumpinfo[reloadlump];
	.loc 1 261 23
	movl	reloadlump(%rip), %eax	# reloadlump, reloadlump.18_13
	movslq	%eax, %rdx	# reloadlump.18_13, _14
	movq	%rdx, %rax	# _14, tmp141
	salq	$2, %rax	#, tmp141
	addq	%rdx, %rax	# _14, tmp141
	salq	$2, %rax	#, tmp142
# w_wad.c:261:     lump_p = &lumpinfo[reloadlump];
	.loc 1 261 12
	addq	%rcx, %rax	# lumpinfo.17_12, tmp143
	movq	%rax, -40(%rbp)	# tmp143, lump_p
# w_wad.c:263:     for (i=reloadlump ;
	.loc 1 263 11
	movl	reloadlump(%rip), %eax	# reloadlump, reloadlump.19_16
	movl	%eax, -56(%rbp)	# reloadlump.19_16, i
# w_wad.c:263:     for (i=reloadlump ;
	.loc 1 263 5
	jmp	.L41	#
.L43:
# w_wad.c:267: 	if (lumpcache[i])
	.loc 1 267 15
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.20_17
	movl	-56(%rbp), %edx	# i, _18
	salq	$3, %rdx	#, _19
	addq	%rdx, %rax	# _19, _20
	movq	(%rax), %rax	# *_20, _21
# w_wad.c:267: 	if (lumpcache[i])
	.loc 1 267 5
	testq	%rax, %rax	# _21
	je	.L42	#,
# w_wad.c:268: 	    Z_Free (lumpcache[i]);
	.loc 1 268 23
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.21_22
	movl	-56(%rbp), %edx	# i, _23
	salq	$3, %rdx	#, _24
	addq	%rdx, %rax	# _24, _25
# w_wad.c:268: 	    Z_Free (lumpcache[i]);
	.loc 1 268 6
	movq	(%rax), %rax	# *_25, _26
	movq	%rax, %rdi	# _26,
	call	Z_Free@PLT	#
.L42:
# w_wad.c:270: 	lump_p->position = LONG(fileinfo->filepos);
	.loc 1 270 21
	movq	-32(%rbp), %rax	# fileinfo, tmp144
	movl	(%rax), %edx	# fileinfo_34->filepos, _27
# w_wad.c:270: 	lump_p->position = LONG(fileinfo->filepos);
	.loc 1 270 19
	movq	-40(%rbp), %rax	# lump_p, tmp145
	movl	%edx, 12(%rax)	# _27, lump_p_32->position
# w_wad.c:271: 	lump_p->size = LONG(fileinfo->size);
	.loc 1 271 17
	movq	-32(%rbp), %rax	# fileinfo, tmp146
	movl	4(%rax), %edx	# fileinfo_34->size, _28
# w_wad.c:271: 	lump_p->size = LONG(fileinfo->size);
	.loc 1 271 15
	movq	-40(%rbp), %rax	# lump_p, tmp147
	movl	%edx, 16(%rax)	# _28, lump_p_32->size
# w_wad.c:265: 	 i++,lump_p++, fileinfo++)
	.loc 1 265 4
	addl	$1, -56(%rbp)	#, i
# w_wad.c:265: 	 i++,lump_p++, fileinfo++)
	.loc 1 265 13
	addq	$20, -40(%rbp)	#, lump_p
# w_wad.c:265: 	 i++,lump_p++, fileinfo++)
	.loc 1 265 25
	addq	$16, -32(%rbp)	#, fileinfo
.L41:
# w_wad.c:264: 	 i<reloadlump+lumpcount ;
	.loc 1 264 15
	movl	reloadlump(%rip), %edx	# reloadlump, reloadlump.22_29
	movl	-48(%rbp), %eax	# lumpcount, tmp148
	addl	%edx, %eax	# reloadlump.22_29, _30
# w_wad.c:264: 	 i<reloadlump+lumpcount ;
	.loc 1 264 4
	cmpl	%eax, -56(%rbp)	# _31, i
	jb	.L43	#,
# w_wad.c:274:     close (handle);
	.loc 1 274 5
	movl	-52(%rbp), %eax	# handle, tmp149
	movl	%eax, %edi	# tmp149,
	call	close@PLT	#
	jmp	.L34	#
.L45:
# w_wad.c:247: 	return;
	.loc 1 247 2 discriminator 1
	nop	
.L34:
# w_wad.c:275: }
	.loc 1 275 1
	movq	-8(%rbp), %rax	# D.4870, tmp153
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp153
	je	.L44	#,
	call	__stack_chk_fail@PLT	#
.L44:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	W_Reload, .-W_Reload
	.section	.rodata
.LC10:
	.string	"W_InitFiles: no files found"
.LC11:
	.string	"Couldn't allocate lumpcache"
	.text
	.globl	W_InitMultipleFiles
	.type	W_InitMultipleFiles, @function
W_InitMultipleFiles:
.LFB11:
	.loc 1 293 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filenames, filenames
# w_wad.c:297:     numlumps = 0;
	.loc 1 297 14
	movl	$0, numlumps(%rip)	#, numlumps
# w_wad.c:300:     lumpinfo = malloc(1);	
	.loc 1 300 16
	movl	$1, %edi	#,
	call	malloc@PLT	#
# w_wad.c:300:     lumpinfo = malloc(1);	
	.loc 1 300 14 discriminator 1
	movq	%rax, lumpinfo(%rip)	# _1, lumpinfo
# w_wad.c:302:     for ( ; *filenames ; filenames++)
	.loc 1 302 5
	jmp	.L47	#
.L48:
# w_wad.c:303: 	W_AddFile (*filenames);
	.loc 1 303 2
	movq	-24(%rbp), %rax	# filenames, tmp96
	movq	(%rax), %rax	# *filenames_14, _2
	movq	%rax, %rdi	# _2,
	call	W_AddFile	#
# w_wad.c:302:     for ( ; *filenames ; filenames++)
	.loc 1 302 35 discriminator 2
	addq	$8, -24(%rbp)	#, filenames
.L47:
# w_wad.c:302:     for ( ; *filenames ; filenames++)
	.loc 1 302 13 discriminator 1
	movq	-24(%rbp), %rax	# filenames, tmp97
	movq	(%rax), %rax	# *filenames_14, _3
	testq	%rax, %rax	# _3
	jne	.L48	#,
# w_wad.c:305:     if (!numlumps)
	.loc 1 305 9
	movl	numlumps(%rip), %eax	# numlumps, numlumps.23_4
# w_wad.c:305:     if (!numlumps)
	.loc 1 305 8
	testl	%eax, %eax	# numlumps.23_4
	jne	.L49	#,
# w_wad.c:306: 	I_Error ("W_InitFiles: no files found");
	.loc 1 306 2
	leaq	.LC10(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L49:
# w_wad.c:309:     size = numlumps * sizeof(*lumpcache);
	.loc 1 309 10
	movl	numlumps(%rip), %eax	# numlumps, numlumps.24_5
	cltq
	sall	$3, %eax	#, _8
	movl	%eax, -4(%rbp)	# _8, size
# w_wad.c:310:     lumpcache = malloc (size);
	.loc 1 310 17
	movl	-4(%rbp), %eax	# size, tmp99
	cltq
	movq	%rax, %rdi	# _9,
	call	malloc@PLT	#
# w_wad.c:310:     lumpcache = malloc (size);
	.loc 1 310 15 discriminator 1
	movq	%rax, lumpcache(%rip)	# _10, lumpcache
# w_wad.c:312:     if (!lumpcache)
	.loc 1 312 9
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.25_11
# w_wad.c:312:     if (!lumpcache)
	.loc 1 312 8
	testq	%rax, %rax	# lumpcache.25_11
	jne	.L50	#,
# w_wad.c:313: 	I_Error ("Couldn't allocate lumpcache");
	.loc 1 313 2
	leaq	.LC11(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L50:
# w_wad.c:315:     memset (lumpcache,0, size);
	.loc 1 315 5
	movl	-4(%rbp), %eax	# size, tmp102
	movslq	%eax, %rdx	# tmp102, _12
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.26_13
	movl	$0, %esi	#,
	movq	%rax, %rdi	# lumpcache.26_13,
	call	memset@PLT	#
# w_wad.c:316: }
	.loc 1 316 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	W_InitMultipleFiles, .-W_InitMultipleFiles
	.globl	W_InitFile
	.type	W_InitFile, @function
W_InitFile:
.LFB12:
	.loc 1 326 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# filename, filename
# w_wad.c:326: {
	.loc 1 326 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp84
	movq	%rax, -8(%rbp)	# tmp84, D.4874
	xorl	%eax, %eax	# tmp84
# w_wad.c:329:     names[0] = filename;
	.loc 1 329 14
	movq	-40(%rbp), %rax	# filename, tmp82
	movq	%rax, -32(%rbp)	# tmp82, names[0]
# w_wad.c:330:     names[1] = NULL;
	.loc 1 330 14
	movq	$0, -24(%rbp)	#, names[1]
# w_wad.c:331:     W_InitMultipleFiles (names);
	.loc 1 331 5
	leaq	-32(%rbp), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	W_InitMultipleFiles	#
# w_wad.c:332: }
	.loc 1 332 1
	nop	
	movq	-8(%rbp), %rax	# D.4874, tmp85
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp85
	je	.L52	#,
	call	__stack_chk_fail@PLT	#
.L52:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	W_InitFile, .-W_InitFile
	.globl	W_NumLumps
	.type	W_NumLumps, @function
W_NumLumps:
.LFB13:
	.loc 1 340 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# w_wad.c:341:     return numlumps;
	.loc 1 341 12
	movl	numlumps(%rip), %eax	# numlumps, _2
# w_wad.c:342: }
	.loc 1 342 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	W_NumLumps, .-W_NumLumps
	.globl	W_CheckNumForName
	.type	W_CheckNumForName, @function
W_CheckNumForName:
.LFB14:
	.loc 1 352 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# name, name
# w_wad.c:352: {
	.loc 1 352 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	movq	%rax, -8(%rbp)	# tmp112, D.4875
	xorl	%eax, %eax	# tmp112
# w_wad.c:364:     strncpy (name8.s,name,8);
	.loc 1 364 5
	movq	-56(%rbp), %rcx	# name, tmp97
	leaq	-20(%rbp), %rax	#, tmp98
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	strncpy@PLT	#
# w_wad.c:367:     name8.s[8] = 0;
	.loc 1 367 16
	movb	$0, -12(%rbp)	#, name8.s[8]
# w_wad.c:370:     strupr (name8.s);		
	.loc 1 370 5
	leaq	-20(%rbp), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strupr	#
# w_wad.c:372:     v1 = name8.x[0];
	.loc 1 372 8
	movl	-20(%rbp), %eax	# name8.x[0], tmp100
	movl	%eax, -40(%rbp)	# tmp100, v1
# w_wad.c:373:     v2 = name8.x[1];
	.loc 1 373 8
	movl	-16(%rbp), %eax	# name8.x[1], tmp101
	movl	%eax, -36(%rbp)	# tmp101, v2
# w_wad.c:377:     lump_p = lumpinfo + numlumps;
	.loc 1 377 23
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.27_1
	movl	numlumps(%rip), %eax	# numlumps, numlumps.28_2
	movslq	%eax, %rdx	# numlumps.28_2, _3
	movq	%rdx, %rax	# _3, tmp102
	salq	$2, %rax	#, tmp102
	addq	%rdx, %rax	# _3, tmp102
	salq	$2, %rax	#, tmp103
# w_wad.c:377:     lump_p = lumpinfo + numlumps;
	.loc 1 377 12
	addq	%rcx, %rax	# lumpinfo.27_1, tmp104
	movq	%rax, -32(%rbp)	# tmp104, lump_p
# w_wad.c:379:     while (lump_p-- != lumpinfo)
	.loc 1 379 11
	jmp	.L56	#
.L59:
# w_wad.c:381: 	if ( *(int *)lump_p->name == v1
	.loc 1 381 15
	movq	-32(%rbp), %rax	# lump_p, _5
# w_wad.c:381: 	if ( *(int *)lump_p->name == v1
	.loc 1 381 7
	movl	(%rax), %eax	# MEM[(int *)_5], _6
# w_wad.c:381: 	if ( *(int *)lump_p->name == v1
	.loc 1 381 5
	cmpl	%eax, -40(%rbp)	# _6, v1
	jne	.L56	#,
# w_wad.c:382: 	     && *(int *)&lump_p->name[4] == v2)
	.loc 1 382 18
	movq	-32(%rbp), %rax	# lump_p, tmp105
	addq	$4, %rax	#, _7
# w_wad.c:382: 	     && *(int *)&lump_p->name[4] == v2)
	.loc 1 382 10
	movl	(%rax), %eax	# MEM[(int *)_7], _8
# w_wad.c:382: 	     && *(int *)&lump_p->name[4] == v2)
	.loc 1 382 7
	cmpl	%eax, -36(%rbp)	# _8, v2
	jne	.L56	#,
# w_wad.c:384: 	    return lump_p - lumpinfo;
	.loc 1 384 20
	movq	lumpinfo(%rip), %rax	# lumpinfo, lumpinfo.29_9
	movq	-32(%rbp), %rdx	# lump_p, tmp106
	subq	%rax, %rdx	# lumpinfo.29_9, _10
	sarq	$2, %rdx	#, tmp107
	movabsq	$-3689348814741910323, %rax	#, tmp109
	imulq	%rdx, %rax	# tmp107, tmp108
	jmp	.L60	#
.L56:
# w_wad.c:379:     while (lump_p-- != lumpinfo)
	.loc 1 379 18
	movq	-32(%rbp), %rax	# lump_p, lump_p.30_12
	leaq	-20(%rax), %rdx	#, tmp110
	movq	%rdx, -32(%rbp)	# tmp110, lump_p
# w_wad.c:379:     while (lump_p-- != lumpinfo)
	.loc 1 379 21
	movq	lumpinfo(%rip), %rdx	# lumpinfo, lumpinfo.31_13
	cmpq	%rdx, %rax	# lumpinfo.31_13, lump_p.30_12
	jne	.L59	#,
# w_wad.c:389:     return -1;
	.loc 1 389 12
	movl	$-1, %eax	#, _15
.L60:
# w_wad.c:390: }
	.loc 1 390 1
	movq	-8(%rbp), %rdx	# D.4875, tmp113
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp113
	je	.L61	#,
	call	__stack_chk_fail@PLT	#
.L61:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	W_CheckNumForName, .-W_CheckNumForName
	.section	.rodata
	.align 8
.LC12:
	.string	"W_GetNumForName: %s not found!"
	.text
	.globl	W_GetNumForName
	.type	W_GetNumForName, @function
W_GetNumForName:
.LFB15:
	.loc 1 400 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
# w_wad.c:403:     i = W_CheckNumForName (name);
	.loc 1 403 9
	movq	-24(%rbp), %rax	# name, tmp84
	movq	%rax, %rdi	# tmp84,
	call	W_CheckNumForName	#
	movl	%eax, -4(%rbp)	# tmp85, i
# w_wad.c:405:     if (i == -1)
	.loc 1 405 8
	cmpl	$-1, -4(%rbp)	#, i
	jne	.L63	#,
# w_wad.c:406:       I_Error ("W_GetNumForName: %s not found!", name);
	.loc 1 406 7
	movq	-24(%rbp), %rax	# name, tmp86
	movq	%rax, %rsi	# tmp86,
	leaq	.LC12(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L63:
# w_wad.c:408:     return i;
	.loc 1 408 12
	movl	-4(%rbp), %eax	# i, _7
# w_wad.c:409: }
	.loc 1 409 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	W_GetNumForName, .-W_GetNumForName
	.section	.rodata
.LC13:
	.string	"W_LumpLength: %i >= numlumps"
	.text
	.globl	W_LumpLength
	.type	W_LumpLength, @function
W_LumpLength:
.LFB16:
	.loc 1 417 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# lump, lump
# w_wad.c:418:     if (lump >= numlumps)
	.loc 1 418 14
	movl	numlumps(%rip), %eax	# numlumps, numlumps.32_1
# w_wad.c:418:     if (lump >= numlumps)
	.loc 1 418 8
	cmpl	%eax, -4(%rbp)	# numlumps.32_1, lump
	jl	.L66	#,
# w_wad.c:419: 	I_Error ("W_LumpLength: %i >= numlumps",lump);
	.loc 1 419 2
	movl	-4(%rbp), %eax	# lump, tmp89
	movl	%eax, %esi	# tmp89,
	leaq	.LC13(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L66:
# w_wad.c:421:     return lumpinfo[lump].size;
	.loc 1 421 20
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.33_2
	movl	-4(%rbp), %eax	# lump, tmp91
	movslq	%eax, %rdx	# tmp91, _3
	movq	%rdx, %rax	# _3, tmp92
	salq	$2, %rax	#, tmp92
	addq	%rdx, %rax	# _3, tmp92
	salq	$2, %rax	#, tmp93
	addq	%rcx, %rax	# lumpinfo.33_2, _5
# w_wad.c:421:     return lumpinfo[lump].size;
	.loc 1 421 26
	movl	16(%rax), %eax	# _5->size, _10
# w_wad.c:422: }
	.loc 1 422 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	W_LumpLength, .-W_LumpLength
	.section	.rodata
.LC14:
	.string	"W_ReadLump: %i >= numlumps"
.LC15:
	.string	"W_ReadLump: couldn't open %s"
	.align 8
.LC16:
	.string	"W_ReadLump: only read %i of %i on lump %i"
	.text
	.globl	W_ReadLump
	.type	W_ReadLump, @function
W_ReadLump:
.LFB17:
	.loc 1 435 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# lump, lump
	movq	%rsi, -32(%rbp)	# dest, dest
# w_wad.c:440:     if (lump >= numlumps)
	.loc 1 440 14
	movl	numlumps(%rip), %eax	# numlumps, numlumps.34_1
# w_wad.c:440:     if (lump >= numlumps)
	.loc 1 440 8
	cmpl	%eax, -20(%rbp)	# numlumps.34_1, lump
	jl	.L69	#,
# w_wad.c:441: 	I_Error ("W_ReadLump: %i >= numlumps",lump);
	.loc 1 441 2
	movl	-20(%rbp), %eax	# lump, tmp97
	movl	%eax, %esi	# tmp97,
	leaq	.LC14(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L69:
# w_wad.c:443:     l = lumpinfo+lump;
	.loc 1 443 17
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.35_2
	movl	-20(%rbp), %eax	# lump, tmp99
	movslq	%eax, %rdx	# tmp99, _3
	movq	%rdx, %rax	# _3, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# _3, tmp100
	salq	$2, %rax	#, tmp101
# w_wad.c:443:     l = lumpinfo+lump;
	.loc 1 443 7
	addq	%rcx, %rax	# lumpinfo.35_2, tmp102
	movq	%rax, -8(%rbp)	# tmp102, l
# w_wad.c:447:     if (l->handle == -1)
	.loc 1 447 10
	movq	-8(%rbp), %rax	# l, tmp103
	movl	8(%rax), %eax	# l_24->handle, _5
# w_wad.c:447:     if (l->handle == -1)
	.loc 1 447 8
	cmpl	$-1, %eax	#, _5
	jne	.L70	#,
# w_wad.c:450: 	if ( (handle = open (reloadname,O_RDONLY | O_BINARY)) == -1)
	.loc 1 450 17
	movq	reloadname(%rip), %rax	# reloadname, reloadname.36_6
	movl	$0, %esi	#,
	movq	%rax, %rdi	# reloadname.36_6,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -16(%rbp)	# tmp104, handle
# w_wad.c:450: 	if ( (handle = open (reloadname,O_RDONLY | O_BINARY)) == -1)
	.loc 1 450 5 discriminator 1
	cmpl	$-1, -16(%rbp)	#, handle
	jne	.L71	#,
# w_wad.c:451: 	    I_Error ("W_ReadLump: couldn't open %s",reloadname);
	.loc 1 451 6
	movq	reloadname(%rip), %rax	# reloadname, reloadname.37_7
	movq	%rax, %rsi	# reloadname.37_7,
	leaq	.LC15(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
	jmp	.L71	#
.L70:
# w_wad.c:454: 	handle = l->handle;
	.loc 1 454 9
	movq	-8(%rbp), %rax	# l, tmp106
	movl	8(%rax), %eax	# l_24->handle, tmp107
	movl	%eax, -16(%rbp)	# tmp107, handle
.L71:
# w_wad.c:456:     lseek (handle, l->position, SEEK_SET);
	.loc 1 456 21
	movq	-8(%rbp), %rax	# l, tmp108
	movl	12(%rax), %eax	# l_24->position, _8
# w_wad.c:456:     lseek (handle, l->position, SEEK_SET);
	.loc 1 456 5
	movslq	%eax, %rcx	# _8, _9
	movl	-16(%rbp), %eax	# handle, tmp109
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# _9,
	movl	%eax, %edi	# tmp109,
	call	lseek@PLT	#
# w_wad.c:457:     c = read (handle, dest, l->size);
	.loc 1 457 30
	movq	-8(%rbp), %rax	# l, tmp110
	movl	16(%rax), %eax	# l_24->size, _10
# w_wad.c:457:     c = read (handle, dest, l->size);
	.loc 1 457 9
	movslq	%eax, %rdx	# _10, _11
	movq	-32(%rbp), %rcx	# dest, tmp111
	movl	-16(%rbp), %eax	# handle, tmp112
	movq	%rcx, %rsi	# tmp111,
	movl	%eax, %edi	# tmp112,
	call	read@PLT	#
# w_wad.c:457:     c = read (handle, dest, l->size);
	.loc 1 457 7 discriminator 1
	movl	%eax, -12(%rbp)	# _12, c
# w_wad.c:459:     if (c < l->size)
	.loc 1 459 14
	movq	-8(%rbp), %rax	# l, tmp113
	movl	16(%rax), %eax	# l_24->size, _13
# w_wad.c:459:     if (c < l->size)
	.loc 1 459 8
	cmpl	%eax, -12(%rbp)	# _13, c
	jge	.L72	#,
# w_wad.c:460: 	I_Error ("W_ReadLump: only read %i of %i on lump %i",
	.loc 1 460 2
	movq	-8(%rbp), %rax	# l, tmp114
	movl	16(%rax), %edx	# l_24->size, _14
	movl	-20(%rbp), %ecx	# lump, tmp115
	movl	-12(%rbp), %eax	# c, tmp116
	movl	%eax, %esi	# tmp116,
	leaq	.LC16(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L72:
# w_wad.c:463:     if (l->handle == -1)
	.loc 1 463 10
	movq	-8(%rbp), %rax	# l, tmp118
	movl	8(%rax), %eax	# l_24->handle, _15
# w_wad.c:463:     if (l->handle == -1)
	.loc 1 463 8
	cmpl	$-1, %eax	#, _15
	jne	.L74	#,
# w_wad.c:464: 	close (handle);
	.loc 1 464 2
	movl	-16(%rbp), %eax	# handle, tmp119
	movl	%eax, %edi	# tmp119,
	call	close@PLT	#
.L74:
# w_wad.c:467: }
	.loc 1 467 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	W_ReadLump, .-W_ReadLump
	.section	.rodata
	.align 8
.LC17:
	.string	"W_CacheLumpNum: %i >= numlumps"
.LC18:
	.string	"Z_CT at w_wad.c:%i"
	.text
	.globl	W_CacheLumpNum
	.type	W_CacheLumpNum, @function
W_CacheLumpNum:
.LFB18:
	.loc 1 479 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# lump, lump
	movl	%esi, -40(%rbp)	# tag, tag
# w_wad.c:482:     if ((unsigned)lump >= numlumps)
	.loc 1 482 9
	movl	-36(%rbp), %eax	# lump, lump.38_1
# w_wad.c:482:     if ((unsigned)lump >= numlumps)
	.loc 1 482 24
	movl	numlumps(%rip), %edx	# numlumps, numlumps.39_2
# w_wad.c:482:     if ((unsigned)lump >= numlumps)
	.loc 1 482 8
	cmpl	%edx, %eax	# numlumps.40_3, lump.38_1
	jb	.L76	#,
# w_wad.c:483: 	I_Error ("W_CacheLumpNum: %i >= numlumps",lump);
	.loc 1 483 2
	movl	-36(%rbp), %eax	# lump, tmp118
	movl	%eax, %esi	# tmp118,
	leaq	.LC17(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L76:
# w_wad.c:485:     if (!lumpcache[lump])
	.loc 1 485 19
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.41_4
	movl	-36(%rbp), %edx	# lump, tmp120
	movslq	%edx, %rdx	# tmp120, _5
	salq	$3, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
	movq	(%rax), %rax	# *_7, _8
# w_wad.c:485:     if (!lumpcache[lump])
	.loc 1 485 8
	testq	%rax, %rax	# _8
	jne	.L77	#,
# w_wad.c:490: 	ptr = Z_Malloc (W_LumpLength (lump), tag, &lumpcache[lump]);
	.loc 1 490 8
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.42_9
# w_wad.c:490: 	ptr = Z_Malloc (W_LumpLength (lump), tag, &lumpcache[lump]);
	.loc 1 490 54
	movl	-36(%rbp), %edx	# lump, tmp121
	movslq	%edx, %rdx	# tmp121, _10
	salq	$3, %rdx	#, _11
# w_wad.c:490: 	ptr = Z_Malloc (W_LumpLength (lump), tag, &lumpcache[lump]);
	.loc 1 490 44
	leaq	(%rax,%rdx), %rbx	#, _12
# w_wad.c:490: 	ptr = Z_Malloc (W_LumpLength (lump), tag, &lumpcache[lump]);
	.loc 1 490 8
	movl	-36(%rbp), %eax	# lump, tmp122
	movl	%eax, %edi	# tmp122,
	call	W_LumpLength	#
	movl	%eax, %ecx	#, _13
# w_wad.c:490: 	ptr = Z_Malloc (W_LumpLength (lump), tag, &lumpcache[lump]);
	.loc 1 490 8 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# tag, tmp123
	movq	%rbx, %rdx	# _12,
	movl	%eax, %esi	# tmp123,
	movl	%ecx, %edi	# _13,
	call	Z_Malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp124, ptr
# w_wad.c:491: 	W_ReadLump (lump, lumpcache[lump]);
	.loc 1 491 29 is_stmt 1
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.43_14
	movl	-36(%rbp), %edx	# lump, tmp125
	movslq	%edx, %rdx	# tmp125, _15
	salq	$3, %rdx	#, _16
	addq	%rdx, %rax	# _16, _17
# w_wad.c:491: 	W_ReadLump (lump, lumpcache[lump]);
	.loc 1 491 2
	movq	(%rax), %rdx	# *_17, _18
	movl	-36(%rbp), %eax	# lump, tmp126
	movq	%rdx, %rsi	# _18,
	movl	%eax, %edi	# tmp126,
	call	W_ReadLump	#
	jmp	.L78	#
.L77:
# w_wad.c:496: 	Z_ChangeTag (lumpcache[lump],tag);
	.loc 1 496 2
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.44_19
	movl	-36(%rbp), %edx	# lump, tmp127
	movslq	%edx, %rdx	# tmp127, _20
	salq	$3, %rdx	#, _21
	addq	%rdx, %rax	# _21, _22
	movq	(%rax), %rax	# *_22, _23
	subq	$40, %rax	#, _24
	movl	20(%rax), %eax	# _24->id, _25
	cmpl	$1919505, %eax	#, _25
	je	.L79	#,
# w_wad.c:496: 	Z_ChangeTag (lumpcache[lump],tag);
	.loc 1 496 2 is_stmt 0 discriminator 1
	movl	$496, %esi	#,
	leaq	.LC18(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L79:
# w_wad.c:496: 	Z_ChangeTag (lumpcache[lump],tag);
	.loc 1 496 2 discriminator 3
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.45_26
	movl	-36(%rbp), %edx	# lump, tmp129
	movslq	%edx, %rdx	# tmp129, _27
	salq	$3, %rdx	#, _28
	addq	%rdx, %rax	# _28, _29
	movq	(%rax), %rax	# *_29, _30
	movl	-40(%rbp), %edx	# tag, tmp130
	movl	%edx, %esi	# tmp130,
	movq	%rax, %rdi	# _30,
	call	Z_ChangeTag2@PLT	#
.L78:
# w_wad.c:499:     return lumpcache[lump];
	.loc 1 499 21 is_stmt 1
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.46_31
	movl	-36(%rbp), %edx	# lump, tmp131
	movslq	%edx, %rdx	# tmp131, _32
	salq	$3, %rdx	#, _33
	addq	%rdx, %rax	# _33, _34
	movq	(%rax), %rax	# *_34, _48
# w_wad.c:500: }
	.loc 1 500 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	W_CacheLumpNum, .-W_CacheLumpNum
	.globl	W_CacheLumpName
	.type	W_CacheLumpName, @function
W_CacheLumpName:
.LFB19:
	.loc 1 511 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movl	%esi, -12(%rbp)	# tag, tag
# w_wad.c:512:     return W_CacheLumpNum (W_GetNumForName(name), tag);
	.loc 1 512 12
	movq	-8(%rbp), %rax	# name, tmp85
	movq	%rax, %rdi	# tmp85,
	call	W_GetNumForName	#
	movl	%eax, %edx	#, _1
# w_wad.c:512:     return W_CacheLumpNum (W_GetNumForName(name), tag);
	.loc 1 512 12 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# tag, tmp86
	movl	%eax, %esi	# tmp86,
	movl	%edx, %edi	# _1,
	call	W_CacheLumpNum	#
# w_wad.c:513: }
	.loc 1 513 1 is_stmt 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	W_CacheLumpName, .-W_CacheLumpName
	.globl	info
	.bss
	.align 32
	.type	info, @object
	.size	info, 100000
info:
	.zero	100000
	.globl	profilecount
	.align 4
	.type	profilecount, @object
	.size	profilecount, 4
profilecount:
	.zero	4
	.section	.rodata
.LC19:
	.string	"w"
.LC20:
	.string	"waddump.txt"
.LC21:
	.string	"%s "
.LC22:
	.string	"    %c"
	.text
	.globl	W_Profile
	.type	W_Profile, @function
W_Profile:
.LFB20:
	.loc 1 523 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# w_wad.c:523: {
	.loc 1 523 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp143
	movq	%rax, -8(%rbp)	# tmp143, D.4883
	xorl	%eax, %eax	# tmp143
# w_wad.c:533:     for (i=0 ; i<numlumps ; i++)
	.loc 1 533 11
	movl	$0, -56(%rbp)	#, i
# w_wad.c:533:     for (i=0 ; i<numlumps ; i++)
	.loc 1 533 5
	jmp	.L84	#
.L89:
# w_wad.c:535: 	ptr = lumpcache[i];
	.loc 1 535 17
	movq	lumpcache(%rip), %rax	# lumpcache, lumpcache.47_1
	movl	-56(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# w_wad.c:535: 	ptr = lumpcache[i];
	.loc 1 535 6
	movq	(%rax), %rax	# *_4, tmp103
	movq	%rax, -40(%rbp)	# tmp103, ptr
# w_wad.c:536: 	if (!ptr)
	.loc 1 536 5
	cmpq	$0, -40(%rbp)	#, ptr
	jne	.L85	#,
# w_wad.c:538: 	    ch = ' ';
	.loc 1 538 9
	movb	$32, -57(%rbp)	#, ch
# w_wad.c:539: 	    continue;
	.loc 1 539 6
	jmp	.L86	#
.L85:
# w_wad.c:543: 	    block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));
	.loc 1 543 12
	movq	-40(%rbp), %rax	# ptr, tmp107
	subq	$40, %rax	#, tmp106
	movq	%rax, -32(%rbp)	# tmp106, block
# w_wad.c:544: 	    if (block->tag < PU_PURGELEVEL)
	.loc 1 544 15
	movq	-32(%rbp), %rax	# block, tmp108
	movl	16(%rax), %eax	# block_53->tag, _5
# w_wad.c:544: 	    if (block->tag < PU_PURGELEVEL)
	.loc 1 544 9
	cmpl	$99, %eax	#, _5
	jg	.L87	#,
# w_wad.c:545: 		ch = 'S';
	.loc 1 545 6
	movb	$83, -57(%rbp)	#, ch
	jmp	.L88	#
.L87:
# w_wad.c:547: 		ch = 'P';
	.loc 1 547 6
	movb	$80, -57(%rbp)	#, ch
.L88:
# w_wad.c:549: 	info[i][profilecount] = ch;
	.loc 1 549 9
	movl	profilecount(%rip), %eax	# profilecount, profilecount.48_6
# w_wad.c:549: 	info[i][profilecount] = ch;
	.loc 1 549 24
	movsbl	-57(%rbp), %ecx	# ch, _7
	movslq	%eax, %rsi	# profilecount.48_6, tmp109
	movl	-56(%rbp), %eax	# i, tmp111
	movslq	%eax, %rdx	# tmp111, tmp110
	movq	%rdx, %rax	# tmp110, tmp112
	salq	$2, %rax	#, tmp112
	addq	%rdx, %rax	# tmp110, tmp112
	addq	%rax, %rax	# tmp113
	addq	%rsi, %rax	# tmp109, tmp114
	leaq	0(,%rax,4), %rdx	#, tmp115
	leaq	info(%rip), %rax	#, tmp116
	movl	%ecx, (%rdx,%rax)	# _7, info[i_20][profilecount.48_6]
.L86:
# w_wad.c:533:     for (i=0 ; i<numlumps ; i++)
	.loc 1 533 30 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L84:
# w_wad.c:533:     for (i=0 ; i<numlumps ; i++)
	.loc 1 533 17 discriminator 1
	movl	numlumps(%rip), %eax	# numlumps, numlumps.49_8
	cmpl	%eax, -56(%rbp)	# numlumps.49_8, i
	jl	.L89	#,
# w_wad.c:551:     profilecount++;
	.loc 1 551 17
	movl	profilecount(%rip), %eax	# profilecount, profilecount.50_9
	addl	$1, %eax	#, _10
	movl	%eax, profilecount(%rip)	# _10, profilecount
# w_wad.c:553:     f = fopen ("waddump.txt","w");
	.loc 1 553 9
	leaq	.LC19(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC20(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	fopen@PLT	#
	movq	%rax, -48(%rbp)	# tmp119, f
# w_wad.c:554:     name[8] = 0;
	.loc 1 554 13
	movb	$0, -9(%rbp)	#, name[8]
# w_wad.c:556:     for (i=0 ; i<numlumps ; i++)
	.loc 1 556 11
	movl	$0, -56(%rbp)	#, i
# w_wad.c:556:     for (i=0 ; i<numlumps ; i++)
	.loc 1 556 5
	jmp	.L90	#
.L99:
# w_wad.c:558: 	memcpy (name,lumpinfo[i].name,8);
	.loc 1 558 23
	movq	lumpinfo(%rip), %rcx	# lumpinfo, lumpinfo.51_11
	movl	-56(%rbp), %eax	# i, tmp120
	movslq	%eax, %rdx	# tmp120, _12
	movq	%rdx, %rax	# _12, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# _12, tmp121
	salq	$2, %rax	#, tmp122
	addq	%rcx, %rax	# lumpinfo.51_11, _14
# w_wad.c:558: 	memcpy (name,lumpinfo[i].name,8);
	.loc 1 558 2
	movq	(%rax), %rax	# MEM <unsigned long> [(char * {ref-all})_15], _40
	movq	%rax, -17(%rbp)	# _40, MEM <unsigned long> [(char * {ref-all})&name]
# w_wad.c:560: 	for (j=0 ; j<8 ; j++)
	.loc 1 560 8
	movl	$0, -52(%rbp)	#, j
# w_wad.c:560: 	for (j=0 ; j<8 ; j++)
	.loc 1 560 2
	jmp	.L91	#
.L94:
# w_wad.c:561: 	    if (!name[j])
	.loc 1 561 15
	movl	-52(%rbp), %eax	# j, tmp124
	cltq
	movzbl	-17(%rbp,%rax), %eax	# name[j_23], _16
# w_wad.c:561: 	    if (!name[j])
	.loc 1 561 9
	testb	%al, %al	# _16
	je	.L101	#,
# w_wad.c:560: 	for (j=0 ; j<8 ; j++)
	.loc 1 560 20 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L91:
# w_wad.c:560: 	for (j=0 ; j<8 ; j++)
	.loc 1 560 14 discriminator 1
	cmpl	$7, -52(%rbp)	#, j
	jle	.L94	#,
	jmp	.L95	#
.L101:
# w_wad.c:562: 		break;
	.loc 1 562 3
	nop	
# w_wad.c:564: 	for ( ; j<8 ; j++)
	.loc 1 564 2
	jmp	.L95	#
.L96:
# w_wad.c:565: 	    name[j] = ' ';
	.loc 1 565 14
	movl	-52(%rbp), %eax	# j, tmp126
	cltq
	movb	$32, -17(%rbp,%rax)	#, name[j_24]
# w_wad.c:564: 	for ( ; j<8 ; j++)
	.loc 1 564 17 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L95:
# w_wad.c:564: 	for ( ; j<8 ; j++)
	.loc 1 564 11 discriminator 1
	cmpl	$7, -52(%rbp)	#, j
	jle	.L96	#,
# w_wad.c:567: 	fprintf (f,"%s ",name);
	.loc 1 567 2
	leaq	-17(%rbp), %rdx	#, tmp127
	movq	-48(%rbp), %rax	# f, tmp128
	leaq	.LC21(%rip), %rcx	#, tmp129
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# w_wad.c:569: 	for (j=0 ; j<profilecount ; j++)
	.loc 1 569 8
	movl	$0, -52(%rbp)	#, j
# w_wad.c:569: 	for (j=0 ; j<profilecount ; j++)
	.loc 1 569 2
	jmp	.L97	#
.L98:
# w_wad.c:570: 	    fprintf (f,"    %c",info[i][j]);
	.loc 1 570 6
	movl	-52(%rbp), %eax	# j, tmp131
	movslq	%eax, %rcx	# tmp131, tmp130
	movl	-56(%rbp), %eax	# i, tmp133
	movslq	%eax, %rdx	# tmp133, tmp132
	movq	%rdx, %rax	# tmp132, tmp134
	salq	$2, %rax	#, tmp134
	addq	%rdx, %rax	# tmp132, tmp134
	addq	%rax, %rax	# tmp135
	addq	%rcx, %rax	# tmp130, tmp136
	leaq	0(,%rax,4), %rdx	#, tmp137
	leaq	info(%rip), %rax	#, tmp138
	movl	(%rdx,%rax), %edx	# info[i_21][j_25], _17
	movq	-48(%rbp), %rax	# f, tmp139
	leaq	.LC22(%rip), %rcx	#, tmp140
	movq	%rcx, %rsi	# tmp140,
	movq	%rax, %rdi	# tmp139,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# w_wad.c:569: 	for (j=0 ; j<profilecount ; j++)
	.loc 1 569 31 discriminator 3
	addl	$1, -52(%rbp)	#, j
.L97:
# w_wad.c:569: 	for (j=0 ; j<profilecount ; j++)
	.loc 1 569 14 discriminator 1
	movl	profilecount(%rip), %eax	# profilecount, profilecount.52_18
	cmpl	%eax, -52(%rbp)	# profilecount.52_18, j
	jl	.L98	#,
# w_wad.c:572: 	fprintf (f,"\n");
	.loc 1 572 2
	movq	-48(%rbp), %rax	# f, tmp141
	movq	%rax, %rsi	# tmp141,
	movl	$10, %edi	#,
	call	fputc@PLT	#
# w_wad.c:556:     for (i=0 ; i<numlumps ; i++)
	.loc 1 556 30 discriminator 2
	addl	$1, -56(%rbp)	#, i
.L90:
# w_wad.c:556:     for (i=0 ; i<numlumps ; i++)
	.loc 1 556 17 discriminator 1
	movl	numlumps(%rip), %eax	# numlumps, numlumps.53_19
	cmpl	%eax, -56(%rbp)	# numlumps.53_19, i
	jl	.L99	#,
# w_wad.c:574:     fclose (f);
	.loc 1 574 5
	movq	-48(%rbp), %rax	# f, tmp142
	movq	%rax, %rdi	# tmp142,
	call	fclose@PLT	#
# w_wad.c:575: }
	.loc 1 575 1
	nop	
	movq	-8(%rbp), %rax	# D.4883, tmp144
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	je	.L100	#,
	call	__stack_chk_fail@PLT	#
.L100:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	W_Profile, .-W_Profile
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/struct_stat.h"
	.file 9 "doomtype.h"
	.file 10 "z_zone.h"
	.file 11 "w_wad.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/malloc.h"
	.file 14 "/usr/include/unistd.h"
	.file 15 "/usr/include/string.h"
	.file 16 "/usr/include/strings.h"
	.file 17 "/usr/include/fcntl.h"
	.file 18 "i_system.h"
	.file 19 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 20 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdf7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x21
	.long	.LASF155
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x9
	.long	0x51
	.long	0x3e
	.uleb128 0xa
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x1a
	.long	0x2e
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1a
	.long	0x4a
	.uleb128 0x4
	.long	.LASF125
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0x91
	.byte	0x19
	.long	0x43
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0x92
	.byte	0x19
	.long	0x79
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x93
	.byte	0x19
	.long	0x79
	.uleb128 0x3
	.long	.LASF13
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x43
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x79
	.uleb128 0x3
	.long	.LASF15
	.byte	0x2
	.byte	0x97
	.byte	0x1b
	.long	0x43
	.uleb128 0x3
	.long	.LASF16
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x95
	.uleb128 0x3
	.long	.LASF17
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x95
	.uleb128 0x9
	.long	0x8e
	.long	0x10c
	.uleb128 0xa
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x95
	.uleb128 0x23
	.byte	0x8
	.uleb128 0x3
	.long	.LASF19
	.byte	0x2
	.byte	0xaf
	.byte	0x1d
	.long	0x95
	.uleb128 0x3
	.long	.LASF20
	.byte	0x2
	.byte	0xb4
	.byte	0x1c
	.long	0x95
	.uleb128 0x3
	.long	.LASF21
	.byte	0x2
	.byte	0xc2
	.byte	0x1b
	.long	0x95
	.uleb128 0x3
	.long	.LASF22
	.byte	0x2
	.byte	0xc5
	.byte	0x21
	.long	0x95
	.uleb128 0x5
	.long	0x4a
	.uleb128 0x5
	.long	0x51
	.uleb128 0x1b
	.long	0x14f
	.uleb128 0x3
	.long	.LASF23
	.byte	0x3
	.byte	0x6c
	.byte	0x13
	.long	0x132
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0xf
	.long	.LASF30
	.byte	0x10
	.byte	0x5
	.byte	0xb
	.byte	0x8
	.long	0x199
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x10
	.byte	0xc
	.long	0x10c
	.byte	0
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x15
	.byte	0x15
	.long	0x13e
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0x9
	.long	0x4a
	.long	0x1b0
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF28
	.uleb128 0x9
	.long	0x4a
	.long	0x1c7
	.uleb128 0xa
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x14a
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF29
	.uleb128 0xf
	.long	.LASF31
	.byte	0xd8
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.long	0x35a
	.uleb128 0x1
	.long	.LASF32
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.long	0x8e
	.byte	0
	.uleb128 0x1
	.long	.LASF33
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x14a
	.byte	0x8
	.uleb128 0x1
	.long	.LASF34
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.long	0x14a
	.byte	0x10
	.uleb128 0x1
	.long	.LASF35
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.long	0x14a
	.byte	0x18
	.uleb128 0x1
	.long	.LASF36
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.long	0x14a
	.byte	0x20
	.uleb128 0x1
	.long	.LASF37
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.long	0x14a
	.byte	0x28
	.uleb128 0x1
	.long	.LASF38
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.long	0x14a
	.byte	0x30
	.uleb128 0x1
	.long	.LASF39
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.long	0x14a
	.byte	0x38
	.uleb128 0x1
	.long	.LASF40
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x14a
	.byte	0x40
	.uleb128 0x1
	.long	.LASF41
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.long	0x14a
	.byte	0x48
	.uleb128 0x1
	.long	.LASF42
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.long	0x14a
	.byte	0x50
	.uleb128 0x1
	.long	.LASF43
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.long	0x14a
	.byte	0x58
	.uleb128 0x1
	.long	.LASF44
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.long	0x373
	.byte	0x60
	.uleb128 0x1
	.long	.LASF45
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.long	0x378
	.byte	0x68
	.uleb128 0x1
	.long	.LASF46
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.long	0x8e
	.byte	0x70
	.uleb128 0x1
	.long	.LASF47
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.long	0x8e
	.byte	0x74
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.long	0xe4
	.byte	0x78
	.uleb128 0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.long	0x72
	.byte	0x80
	.uleb128 0x1
	.long	.LASF50
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.long	0x80
	.byte	0x82
	.uleb128 0x1
	.long	.LASF51
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.long	0x37d
	.byte	0x83
	.uleb128 0x1
	.long	.LASF52
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.long	0x38d
	.byte	0x88
	.uleb128 0x1
	.long	.LASF53
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.long	0xf0
	.byte	0x90
	.uleb128 0x1
	.long	.LASF54
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.long	0x397
	.byte	0x98
	.uleb128 0x1
	.long	.LASF55
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.long	0x3a1
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF56
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.long	0x378
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF57
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.long	0x118
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF58
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.long	0x165
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF59
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.long	0x8e
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF60
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.long	0x3a6
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF61
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.long	0x1d3
	.uleb128 0x24
	.long	.LASF156
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0x13
	.long	.LASF62
	.uleb128 0x5
	.long	0x36e
	.uleb128 0x5
	.long	0x1d3
	.uleb128 0x9
	.long	0x4a
	.long	0x38d
	.uleb128 0xa
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x366
	.uleb128 0x13
	.long	.LASF63
	.uleb128 0x5
	.long	0x392
	.uleb128 0x13
	.long	.LASF64
	.uleb128 0x5
	.long	0x39c
	.uleb128 0x9
	.long	0x4a
	.long	0x3b6
	.uleb128 0xa
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	0x35a
	.uleb128 0x1b
	.long	0x3b6
	.uleb128 0xf
	.long	.LASF65
	.byte	0x90
	.byte	0x8
	.byte	0x1a
	.byte	0x8
	.long	0x491
	.uleb128 0x1
	.long	.LASF66
	.byte	0x8
	.byte	0x1f
	.byte	0xd
	.long	0x9c
	.byte	0
	.uleb128 0x1
	.long	.LASF67
	.byte	0x8
	.byte	0x24
	.byte	0xd
	.long	0xc0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF68
	.byte	0x8
	.byte	0x2c
	.byte	0xf
	.long	0xd8
	.byte	0x10
	.uleb128 0x1
	.long	.LASF69
	.byte	0x8
	.byte	0x2d
	.byte	0xe
	.long	0xcc
	.byte	0x18
	.uleb128 0x1
	.long	.LASF70
	.byte	0x8
	.byte	0x2f
	.byte	0xd
	.long	0xa8
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF71
	.byte	0x8
	.byte	0x30
	.byte	0xd
	.long	0xb4
	.byte	0x20
	.uleb128 0x1
	.long	.LASF72
	.byte	0x8
	.byte	0x32
	.byte	0x9
	.long	0x8e
	.byte	0x24
	.uleb128 0x1
	.long	.LASF73
	.byte	0x8
	.byte	0x34
	.byte	0xd
	.long	0x9c
	.byte	0x28
	.uleb128 0x1
	.long	.LASF74
	.byte	0x8
	.byte	0x39
	.byte	0xd
	.long	0xe4
	.byte	0x30
	.uleb128 0x1
	.long	.LASF75
	.byte	0x8
	.byte	0x3d
	.byte	0x11
	.long	0x11a
	.byte	0x38
	.uleb128 0x1
	.long	.LASF76
	.byte	0x8
	.byte	0x3f
	.byte	0x10
	.long	0x126
	.byte	0x40
	.uleb128 0x1
	.long	.LASF77
	.byte	0x8
	.byte	0x4a
	.byte	0x15
	.long	0x171
	.byte	0x48
	.uleb128 0x1
	.long	.LASF78
	.byte	0x8
	.byte	0x4b
	.byte	0x15
	.long	0x171
	.byte	0x58
	.uleb128 0x1
	.long	.LASF79
	.byte	0x8
	.byte	0x4c
	.byte	0x15
	.long	0x171
	.byte	0x68
	.uleb128 0x1
	.long	.LASF80
	.byte	0x8
	.byte	0x59
	.byte	0x17
	.long	0x491
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0x13e
	.long	0x4a1
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF81
	.byte	0x9
	.byte	0x24
	.byte	0x17
	.long	0x6b
	.uleb128 0xf
	.long	.LASF82
	.byte	0x28
	.byte	0xa
	.byte	0x3a
	.byte	0x10
	.long	0x504
	.uleb128 0x1
	.long	.LASF83
	.byte	0xa
	.byte	0x3c
	.byte	0xb
	.long	0x8e
	.byte	0
	.uleb128 0x1
	.long	.LASF84
	.byte	0xa
	.byte	0x3d
	.byte	0xd
	.long	0x504
	.byte	0x8
	.uleb128 0x1c
	.string	"tag"
	.byte	0x3e
	.long	0x8e
	.byte	0x10
	.uleb128 0x1c
	.string	"id"
	.byte	0x3f
	.long	0x8e
	.byte	0x14
	.uleb128 0x1
	.long	.LASF85
	.byte	0xa
	.byte	0x40
	.byte	0x18
	.long	0x509
	.byte	0x18
	.uleb128 0x1
	.long	.LASF86
	.byte	0xa
	.byte	0x41
	.byte	0x18
	.long	0x509
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	0x118
	.uleb128 0x5
	.long	0x4ad
	.uleb128 0x3
	.long	.LASF87
	.byte	0xa
	.byte	0x42
	.byte	0x3
	.long	0x4ad
	.uleb128 0x14
	.byte	0xc
	.byte	0x23
	.long	0x549
	.uleb128 0x1
	.long	.LASF88
	.byte	0xb
	.byte	0x26
	.byte	0xb
	.long	0x1a0
	.byte	0
	.uleb128 0x1
	.long	.LASF89
	.byte	0xb
	.byte	0x27
	.byte	0xb
	.long	0x8e
	.byte	0x4
	.uleb128 0x1
	.long	.LASF90
	.byte	0xb
	.byte	0x28
	.byte	0xb
	.long	0x8e
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF91
	.byte	0xb
	.byte	0x2a
	.byte	0x3
	.long	0x51a
	.uleb128 0x14
	.byte	0x10
	.byte	0x2d
	.long	0x584
	.uleb128 0x1
	.long	.LASF92
	.byte	0xb
	.byte	0x2f
	.byte	0xb
	.long	0x8e
	.byte	0
	.uleb128 0x1
	.long	.LASF83
	.byte	0xb
	.byte	0x30
	.byte	0xb
	.long	0x8e
	.byte	0x4
	.uleb128 0x1
	.long	.LASF93
	.byte	0xb
	.byte	0x31
	.byte	0xb
	.long	0x1b7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF94
	.byte	0xb
	.byte	0x33
	.byte	0x3
	.long	0x555
	.uleb128 0x14
	.byte	0x14
	.byte	0x38
	.long	0x5cc
	.uleb128 0x1
	.long	.LASF93
	.byte	0xb
	.byte	0x3a
	.byte	0xa
	.long	0x1b7
	.byte	0
	.uleb128 0x1
	.long	.LASF95
	.byte	0xb
	.byte	0x3b
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x1
	.long	.LASF96
	.byte	0xb
	.byte	0x3c
	.byte	0xa
	.long	0x8e
	.byte	0xc
	.uleb128 0x1
	.long	.LASF83
	.byte	0xb
	.byte	0x3d
	.byte	0xa
	.long	0x8e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF97
	.byte	0xb
	.byte	0x3e
	.byte	0x3
	.long	0x590
	.uleb128 0x15
	.long	.LASF98
	.byte	0x41
	.byte	0x10
	.long	0x504
	.uleb128 0x15
	.long	.LASF99
	.byte	0x42
	.byte	0x14
	.long	0x5ee
	.uleb128 0x5
	.long	0x5cc
	.uleb128 0x15
	.long	.LASF89
	.byte	0x43
	.byte	0xd
	.long	0x8e
	.uleb128 0x16
	.long	0x5e3
	.byte	0x3d
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	lumpinfo
	.uleb128 0x16
	.long	0x5f3
	.byte	0x3e
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	numlumps
	.uleb128 0x16
	.long	0x5d8
	.byte	0x40
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	lumpcache
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x89
	.byte	0x7
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	reloadlump
	.uleb128 0x1d
	.long	.LASF101
	.byte	0x8a
	.byte	0x9
	.long	0x14a
	.uleb128 0x9
	.byte	0x3
	.quad	reloadname
	.uleb128 0x9
	.long	0x8e
	.long	0x672
	.uleb128 0x25
	.long	0x43
	.value	0x9c3
	.uleb128 0xa
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x1e
	.long	.LASF102
	.value	0x207
	.long	0x65b
	.uleb128 0x9
	.byte	0x3
	.quad	info
	.uleb128 0x1e
	.long	.LASF103
	.value	0x208
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	profilecount
	.uleb128 0x7
	.long	.LASF104
	.byte	0xc
	.byte	0xb8
	.byte	0xc
	.long	0x8e
	.long	0x6b2
	.uleb128 0x2
	.long	0x3b6
	.byte	0
	.uleb128 0xc
	.long	.LASF105
	.byte	0xc
	.value	0x165
	.byte	0xc
	.long	0x8e
	.long	0x6cf
	.uleb128 0x2
	.long	0x3bb
	.uleb128 0x2
	.long	0x154
	.uleb128 0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF106
	.byte	0xc
	.value	0x108
	.byte	0xe
	.long	0x3b6
	.long	0x6eb
	.uleb128 0x2
	.long	0x154
	.uleb128 0x2
	.long	0x154
	.byte	0
	.uleb128 0x17
	.long	.LASF109
	.byte	0xa
	.byte	0x36
	.byte	0x9
	.long	0x702
	.uleb128 0x2
	.long	0x118
	.uleb128 0x2
	.long	0x8e
	.byte	0
	.uleb128 0x7
	.long	.LASF107
	.byte	0xa
	.byte	0x30
	.byte	0x7
	.long	0x118
	.long	0x722
	.uleb128 0x2
	.long	0x8e
	.uleb128 0x2
	.long	0x8e
	.uleb128 0x2
	.long	0x118
	.byte	0
	.uleb128 0x7
	.long	.LASF108
	.byte	0xd
	.byte	0x27
	.byte	0xe
	.long	0x118
	.long	0x738
	.uleb128 0x2
	.long	0x165
	.byte	0
	.uleb128 0x17
	.long	.LASF110
	.byte	0xa
	.byte	0x31
	.byte	0x9
	.long	0x74a
	.uleb128 0x2
	.long	0x118
	.byte	0
	.uleb128 0xc
	.long	.LASF111
	.byte	0xe
	.value	0x166
	.byte	0xc
	.long	0x8e
	.long	0x761
	.uleb128 0x2
	.long	0x8e
	.byte	0
	.uleb128 0x7
	.long	.LASF112
	.byte	0xf
	.byte	0x90
	.byte	0xe
	.long	0x14a
	.long	0x781
	.uleb128 0x2
	.long	0x14a
	.uleb128 0x2
	.long	0x14f
	.uleb128 0x2
	.long	0x165
	.byte	0
	.uleb128 0x7
	.long	.LASF113
	.byte	0xd
	.byte	0x33
	.byte	0xe
	.long	0x118
	.long	0x79c
	.uleb128 0x2
	.long	0x118
	.uleb128 0x2
	.long	0x165
	.byte	0
	.uleb128 0xc
	.long	.LASF114
	.byte	0xe
	.value	0x153
	.byte	0x10
	.long	0xe4
	.long	0x7bd
	.uleb128 0x2
	.long	0x8e
	.uleb128 0x2
	.long	0xe4
	.uleb128 0x2
	.long	0x8e
	.byte	0
	.uleb128 0x7
	.long	.LASF115
	.byte	0xf
	.byte	0x9f
	.byte	0xc
	.long	0x8e
	.long	0x7dd
	.uleb128 0x2
	.long	0x14f
	.uleb128 0x2
	.long	0x14f
	.uleb128 0x2
	.long	0x165
	.byte	0
	.uleb128 0xc
	.long	.LASF116
	.byte	0xe
	.value	0x173
	.byte	0x10
	.long	0x159
	.long	0x7fe
	.uleb128 0x2
	.long	0x8e
	.uleb128 0x2
	.long	0x118
	.uleb128 0x2
	.long	0x165
	.byte	0
	.uleb128 0x7
	.long	.LASF117
	.byte	0x10
	.byte	0x74
	.byte	0xc
	.long	0x8e
	.long	0x819
	.uleb128 0x2
	.long	0x14f
	.uleb128 0x2
	.long	0x14f
	.byte	0
	.uleb128 0xc
	.long	.LASF118
	.byte	0xc
	.value	0x16b
	.byte	0xc
	.long	0x8e
	.long	0x831
	.uleb128 0x2
	.long	0x14f
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF119
	.byte	0x11
	.byte	0xd1
	.byte	0xc
	.long	0x8e
	.long	0x84d
	.uleb128 0x2
	.long	0x14f
	.uleb128 0x2
	.long	0x8e
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF120
	.byte	0xf
	.byte	0x3d
	.byte	0xe
	.long	0x118
	.long	0x86d
	.uleb128 0x2
	.long	0x118
	.uleb128 0x2
	.long	0x8e
	.uleb128 0x2
	.long	0x165
	.byte	0
	.uleb128 0xc
	.long	.LASF121
	.byte	0xf
	.value	0x197
	.byte	0xf
	.long	0x165
	.long	0x884
	.uleb128 0x2
	.long	0x14f
	.byte	0
	.uleb128 0x17
	.long	.LASF122
	.byte	0x12
	.byte	0x59
	.byte	0x6
	.long	0x897
	.uleb128 0x2
	.long	0x14a
	.uleb128 0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF123
	.byte	0x13
	.byte	0xd2
	.byte	0xc
	.long	0x8e
	.long	0x8b2
	.uleb128 0x2
	.long	0x8e
	.uleb128 0x2
	.long	0x8b2
	.byte	0
	.uleb128 0x5
	.long	0x3c0
	.uleb128 0x7
	.long	.LASF124
	.byte	0x14
	.byte	0x7d
	.byte	0xc
	.long	0x8e
	.long	0x8cd
	.uleb128 0x2
	.long	0x8e
	.byte	0
	.uleb128 0x11
	.long	.LASF130
	.value	0x20a
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x951
	.uleb128 0x8
	.string	"i"
	.value	0x20c
	.byte	0xa
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.long	.LASF126
	.value	0x20d
	.byte	0x11
	.long	0x951
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"ptr"
	.value	0x20e
	.byte	0xb
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"ch"
	.value	0x20f
	.byte	0xa
	.long	0x4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x8
	.string	"f"
	.value	0x210
	.byte	0xb
	.long	0x3b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"j"
	.value	0x211
	.byte	0xa
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.long	.LASF93
	.value	0x212
	.byte	0xa
	.long	0x956
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x5
	.long	0x50e
	.uleb128 0x9
	.long	0x4a
	.long	0x966
	.uleb128 0xa
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF127
	.value	0x1fc
	.byte	0x1
	.long	0x118
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a6
	.uleb128 0xb
	.long	.LASF93
	.value	0x1fd
	.byte	0xa
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"tag"
	.value	0x1fe
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.long	.LASF128
	.value	0x1dc
	.byte	0x1
	.long	0x118
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f5
	.uleb128 0xb
	.long	.LASF129
	.value	0x1dd
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"tag"
	.value	0x1de
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"ptr"
	.value	0x1e0
	.byte	0xb
	.long	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5
	.long	0x4a1
	.uleb128 0x11
	.long	.LASF131
	.value	0x1b0
	.byte	0x1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa60
	.uleb128 0xb
	.long	.LASF129
	.value	0x1b1
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF132
	.value	0x1b2
	.byte	0xa
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"c"
	.value	0x1b4
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"l"
	.value	0x1b5
	.byte	0x11
	.long	0x5ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF95
	.value	0x1b6
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.long	.LASF133
	.value	0x1a0
	.byte	0x5
	.long	0x8e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xa92
	.uleb128 0xb
	.long	.LASF129
	.value	0x1a0
	.byte	0x17
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF134
	.value	0x18f
	.byte	0x5
	.long	0x8e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xad1
	.uleb128 0xb
	.long	.LASF93
	.value	0x18f
	.byte	0x1c
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"i"
	.value	0x191
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF135
	.value	0x15f
	.byte	0x5
	.long	0x8e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb5d
	.uleb128 0xb
	.long	.LASF93
	.value	0x15f
	.byte	0x1e
	.long	0x14a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.byte	0xc
	.byte	0x1
	.value	0x161
	.byte	0x5
	.long	0xb22
	.uleb128 0x20
	.string	"s"
	.value	0x162
	.byte	0x7
	.long	0x956
	.uleb128 0x20
	.string	"x"
	.value	0x163
	.byte	0x6
	.long	0xfc
	.byte	0
	.uleb128 0xd
	.long	.LASF136
	.value	0x165
	.byte	0x7
	.long	0xb03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"v1"
	.value	0x167
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"v2"
	.value	0x168
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.long	.LASF137
	.value	0x169
	.byte	0x11
	.long	0x5ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.long	.LASF157
	.byte	0x1
	.value	0x153
	.byte	0x5
	.long	0x8e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF138
	.value	0x145
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb9
	.uleb128 0xb
	.long	.LASF139
	.value	0x145
	.byte	0x18
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF140
	.value	0x147
	.byte	0xb
	.long	0xbb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	0x14a
	.long	0xbc9
	.uleb128 0xa
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	.LASF141
	.value	0x124
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xc06
	.uleb128 0xb
	.long	.LASF142
	.value	0x124
	.byte	0x22
	.long	0x1c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF83
	.value	0x126
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF143
	.byte	0xec
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc86
	.uleb128 0x4
	.long	.LASF144
	.byte	0xee
	.byte	0x10
	.long	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF145
	.byte	0xef
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF137
	.byte	0xf0
	.byte	0x12
	.long	0x5ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"i"
	.byte	0xf1
	.byte	0xf
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.long	.LASF95
	.byte	0xf2
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.long	.LASF146
	.byte	0xf3
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.long	.LASF147
	.byte	0xf4
	.byte	0x12
	.long	0xc86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5
	.long	0x584
	.uleb128 0x18
	.long	.LASF148
	.byte	0x8d
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xd3b
	.uleb128 0x12
	.long	.LASF139
	.byte	0x8d
	.byte	0x17
	.long	0x14a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.long	.LASF144
	.byte	0x8f
	.byte	0x10
	.long	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4
	.long	.LASF137
	.byte	0x90
	.byte	0x12
	.long	0x5ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"i"
	.byte	0x91
	.byte	0xf
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x4
	.long	.LASF95
	.byte	0x92
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.long	.LASF146
	.byte	0x93
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.long	.LASF149
	.byte	0x94
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x4
	.long	.LASF147
	.byte	0x95
	.byte	0x12
	.long	0xc86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.long	.LASF150
	.byte	0x96
	.byte	0x11
	.long	0x584
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF151
	.byte	0x97
	.byte	0xb
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x18
	.long	.LASF152
	.byte	0x56
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xd91
	.uleb128 0x12
	.long	.LASF153
	.byte	0x57
	.byte	0xa
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF132
	.byte	0x58
	.byte	0xa
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"src"
	.byte	0x5a
	.byte	0xb
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF146
	.byte	0x5b
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.long	.LASF154
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.long	0x8e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd2
	.uleb128 0x12
	.long	.LASF95
	.byte	0x4a
	.byte	0x15
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x4
	.long	.LASF147
	.byte	0x4c
	.byte	0x11
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x29
	.long	.LASF158
	.byte	0x1
	.byte	0x45
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.byte	0x45
	.byte	0x14
	.long	0x14a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
.LASF51:
	.string	"_shortbuf"
.LASF156:
	.string	"_IO_lock_t"
.LASF121:
	.string	"strlen"
.LASF115:
	.string	"strncmp"
.LASF40:
	.string	"_IO_buf_end"
.LASF130:
	.string	"W_Profile"
.LASF38:
	.string	"_IO_write_end"
.LASF6:
	.string	"unsigned int"
.LASF122:
	.string	"I_Error"
.LASF85:
	.string	"next"
.LASF56:
	.string	"_freeres_list"
.LASF75:
	.string	"st_blksize"
.LASF32:
	.string	"_flags"
.LASF44:
	.string	"_markers"
.LASF15:
	.string	"__nlink_t"
.LASF86:
	.string	"prev"
.LASF141:
	.string	"W_InitMultipleFiles"
.LASF100:
	.string	"reloadlump"
.LASF150:
	.string	"singleinfo"
.LASF13:
	.string	"__ino_t"
.LASF155:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF89:
	.string	"numlumps"
.LASF135:
	.string	"W_CheckNumForName"
.LASF43:
	.string	"_IO_save_end"
.LASF63:
	.string	"_IO_codecvt"
.LASF108:
	.string	"malloc"
.LASF110:
	.string	"Z_Free"
.LASF123:
	.string	"fstat"
.LASF27:
	.string	"long long unsigned int"
.LASF76:
	.string	"st_blocks"
.LASF147:
	.string	"fileinfo"
.LASF112:
	.string	"strncpy"
.LASF42:
	.string	"_IO_backup_base"
.LASF53:
	.string	"_offset"
.LASF105:
	.string	"fprintf"
.LASF46:
	.string	"_fileno"
.LASF65:
	.string	"stat"
.LASF94:
	.string	"filelump_t"
.LASF84:
	.string	"user"
.LASF26:
	.string	"tv_nsec"
.LASF24:
	.string	"size_t"
.LASF143:
	.string	"W_Reload"
.LASF14:
	.string	"__mode_t"
.LASF158:
	.string	"strupr"
.LASF152:
	.string	"ExtractFileBase"
.LASF35:
	.string	"_IO_read_base"
.LASF71:
	.string	"st_gid"
.LASF69:
	.string	"st_mode"
.LASF154:
	.string	"filelength"
.LASF124:
	.string	"toupper"
.LASF68:
	.string	"st_nlink"
.LASF153:
	.string	"path"
.LASF101:
	.string	"reloadname"
.LASF127:
	.string	"W_CacheLumpName"
.LASF138:
	.string	"W_InitFile"
.LASF145:
	.string	"lumpcount"
.LASF92:
	.string	"filepos"
.LASF30:
	.string	"timespec"
.LASF3:
	.string	"char"
.LASF59:
	.string	"_mode"
.LASF139:
	.string	"filename"
.LASF62:
	.string	"_IO_marker"
.LASF111:
	.string	"close"
.LASF33:
	.string	"_IO_read_ptr"
.LASF142:
	.string	"filenames"
.LASF23:
	.string	"ssize_t"
.LASF114:
	.string	"lseek"
.LASF151:
	.string	"storehandle"
.LASF67:
	.string	"st_ino"
.LASF157:
	.string	"W_NumLumps"
.LASF36:
	.string	"_IO_write_base"
.LASF107:
	.string	"Z_Malloc"
.LASF134:
	.string	"W_GetNumForName"
.LASF136:
	.string	"name8"
.LASF28:
	.string	"long long int"
.LASF118:
	.string	"printf"
.LASF41:
	.string	"_IO_save_base"
.LASF10:
	.string	"__dev_t"
.LASF144:
	.string	"header"
.LASF22:
	.string	"__syscall_slong_t"
.LASF120:
	.string	"memset"
.LASF129:
	.string	"lump"
.LASF140:
	.string	"names"
.LASF83:
	.string	"size"
.LASF57:
	.string	"_freeres_buf"
.LASF109:
	.string	"Z_ChangeTag2"
.LASF128:
	.string	"W_CacheLumpNum"
.LASF72:
	.string	"__pad0"
.LASF102:
	.string	"info"
.LASF58:
	.string	"__pad5"
.LASF80:
	.string	"__glibc_reserved"
.LASF106:
	.string	"fopen"
.LASF50:
	.string	"_vtable_offset"
.LASF29:
	.string	"long double"
.LASF12:
	.string	"__gid_t"
.LASF91:
	.string	"wadinfo_t"
.LASF88:
	.string	"identification"
.LASF4:
	.string	"unsigned char"
.LASF34:
	.string	"_IO_read_end"
.LASF131:
	.string	"W_ReadLump"
.LASF8:
	.string	"short int"
.LASF78:
	.string	"st_mtim"
.LASF148:
	.string	"W_AddFile"
.LASF9:
	.string	"long int"
.LASF146:
	.string	"length"
.LASF64:
	.string	"_IO_wide_data"
.LASF104:
	.string	"fclose"
.LASF19:
	.string	"__blksize_t"
.LASF126:
	.string	"block"
.LASF137:
	.string	"lump_p"
.LASF21:
	.string	"__ssize_t"
.LASF11:
	.string	"__uid_t"
.LASF77:
	.string	"st_atim"
.LASF93:
	.string	"name"
.LASF133:
	.string	"W_LumpLength"
.LASF119:
	.string	"open"
.LASF98:
	.string	"lumpcache"
.LASF117:
	.string	"strcasecmp"
.LASF55:
	.string	"_wide_data"
.LASF52:
	.string	"_lock"
.LASF25:
	.string	"tv_sec"
.LASF2:
	.string	"long unsigned int"
.LASF48:
	.string	"_old_offset"
.LASF31:
	.string	"_IO_FILE"
.LASF103:
	.string	"profilecount"
.LASF149:
	.string	"startlump"
.LASF81:
	.string	"byte"
.LASF125:
	.string	"rcsid"
.LASF37:
	.string	"_IO_write_ptr"
.LASF99:
	.string	"lumpinfo"
.LASF18:
	.string	"__time_t"
.LASF82:
	.string	"memblock_s"
.LASF87:
	.string	"memblock_t"
.LASF74:
	.string	"st_size"
.LASF54:
	.string	"_codecvt"
.LASF97:
	.string	"lumpinfo_t"
.LASF113:
	.string	"realloc"
.LASF70:
	.string	"st_uid"
.LASF16:
	.string	"__off_t"
.LASF79:
	.string	"st_ctim"
.LASF66:
	.string	"st_dev"
.LASF7:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF95:
	.string	"handle"
.LASF20:
	.string	"__blkcnt_t"
.LASF45:
	.string	"_chain"
.LASF73:
	.string	"st_rdev"
.LASF61:
	.string	"FILE"
.LASF47:
	.string	"_flags2"
.LASF90:
	.string	"infotableofs"
.LASF49:
	.string	"_cur_column"
.LASF132:
	.string	"dest"
.LASF116:
	.string	"read"
.LASF96:
	.string	"position"
.LASF17:
	.string	"__off64_t"
.LASF60:
	.string	"_unused2"
.LASF39:
	.string	"_IO_buf_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"w_wad.c"
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
