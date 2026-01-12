	.file	"m_cheat.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_cheat.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: m_cheat.c,v 1.1 1997/02/03 21:24:34 b1 Exp $"
	.data
	.align 4
	.type	firsttime, @object
	.size	firsttime, 4
firsttime:
	.long	1
	.local	cheat_xlate_table
	.comm	cheat_xlate_table,256,32
	.text
	.globl	cht_CheckCheat
	.type	cht_CheckCheat, @function
cht_CheckCheat:
.LFB0:
	.file 1 "m_cheat.c"
	.loc 1 46 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# cht, cht
	movl	%esi, %eax	# key, tmp135
	movb	%al, -28(%rbp)	# tmp136, key
# m_cheat.c:48:     int rc = 0;
	.loc 1 48 9
	movl	$0, -4(%rbp)	#, rc
# m_cheat.c:50:     if (firsttime)
	.loc 1 50 9
	movl	firsttime(%rip), %eax	# firsttime, firsttime.0_1
# m_cheat.c:50:     if (firsttime)
	.loc 1 50 8
	testl	%eax, %eax	# firsttime.0_1
	je	.L2	#,
# m_cheat.c:52: 	firsttime = 0;
	.loc 1 52 12
	movl	$0, firsttime(%rip)	#, firsttime
# m_cheat.c:53: 	for (i=0;i<256;i++) cheat_xlate_table[i] = SCRAMBLE(i);
	.loc 1 53 8
	movl	$0, -8(%rbp)	#, i
# m_cheat.c:53: 	for (i=0;i<256;i++) cheat_xlate_table[i] = SCRAMBLE(i);
	.loc 1 53 2
	jmp	.L3	#
.L4:
# m_cheat.c:53: 	for (i=0;i<256;i++) cheat_xlate_table[i] = SCRAMBLE(i);
	.loc 1 53 45 discriminator 3
	movl	-8(%rbp), %eax	# i, tmp137
	sall	$7, %eax	#, _2
	movl	%eax, %edx	# _2, _3
	movl	-8(%rbp), %eax	# i, tmp138
	sall	$5, %eax	#, _5
	andl	$64, %eax	#, _6
	addl	%eax, %edx	# _6, _7
	movl	-8(%rbp), %eax	# i, tmp139
	andl	$4, %eax	#, _9
	addl	%eax, %edx	# _9, _10
	movl	-8(%rbp), %eax	# i, tmp140
	addl	%eax, %eax	# _12
	andl	$16, %eax	#, _13
	addl	%eax, %edx	# _13, _14
	movl	-8(%rbp), %eax	# i, tmp141
	sarl	%eax	# _15
	andl	$8, %eax	#, _17
	addl	%eax, %edx	# _17, _18
	movl	-8(%rbp), %eax	# i, tmp142
	andl	$32, %eax	#, _20
	addl	%eax, %edx	# _20, _21
	movl	-8(%rbp), %eax	# i, tmp143
	sarl	$5, %eax	#, _22
	andl	$2, %eax	#, _24
	addl	%eax, %edx	# _24, _25
	movl	-8(%rbp), %eax	# i, tmp144
	sarl	$7, %eax	#, _26
	andl	$1, %eax	#, _28
	leal	(%rdx,%rax), %ecx	#, _29
# m_cheat.c:53: 	for (i=0;i<256;i++) cheat_xlate_table[i] = SCRAMBLE(i);
	.loc 1 53 43 discriminator 3
	movl	-8(%rbp), %eax	# i, tmp146
	cltq
	leaq	cheat_xlate_table(%rip), %rdx	#, tmp147
	movb	%cl, (%rax,%rdx)	# _29, cheat_xlate_table[i_53]
# m_cheat.c:53: 	for (i=0;i<256;i++) cheat_xlate_table[i] = SCRAMBLE(i);
	.loc 1 53 18 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L3:
# m_cheat.c:53: 	for (i=0;i<256;i++) cheat_xlate_table[i] = SCRAMBLE(i);
	.loc 1 53 12 discriminator 1
	cmpl	$255, -8(%rbp)	#, i
	jle	.L4	#,
.L2:
# m_cheat.c:56:     if (!cht->p)
	.loc 1 56 13
	movq	-24(%rbp), %rax	# cht, tmp148
	movq	8(%rax), %rax	# cht_66(D)->p, _30
# m_cheat.c:56:     if (!cht->p)
	.loc 1 56 8
	testq	%rax, %rax	# _30
	jne	.L5	#,
# m_cheat.c:57: 	cht->p = cht->sequence; // initialize if first time
	.loc 1 57 14
	movq	-24(%rbp), %rax	# cht, tmp149
	movq	(%rax), %rdx	# cht_66(D)->sequence, _31
# m_cheat.c:57: 	cht->p = cht->sequence; // initialize if first time
	.loc 1 57 9
	movq	-24(%rbp), %rax	# cht, tmp150
	movq	%rdx, 8(%rax)	# _31, cht_66(D)->p
.L5:
# m_cheat.c:59:     if (*cht->p == 0)
	.loc 1 59 13
	movq	-24(%rbp), %rax	# cht, tmp151
	movq	8(%rax), %rax	# cht_66(D)->p, _32
# m_cheat.c:59:     if (*cht->p == 0)
	.loc 1 59 9
	movzbl	(%rax), %eax	# *_32, _33
# m_cheat.c:59:     if (*cht->p == 0)
	.loc 1 59 8
	testb	%al, %al	# _33
	jne	.L6	#,
# m_cheat.c:60: 	*(cht->p++) = key;
	.loc 1 60 7
	movq	-24(%rbp), %rax	# cht, tmp152
	movq	8(%rax), %rax	# cht_66(D)->p, _34
# m_cheat.c:60: 	*(cht->p++) = key;
	.loc 1 60 10
	leaq	1(%rax), %rcx	#, _36
	movq	-24(%rbp), %rdx	# cht, tmp153
	movq	%rcx, 8(%rdx)	# _36, cht_66(D)->p
# m_cheat.c:60: 	*(cht->p++) = key;
	.loc 1 60 14
	movzbl	-28(%rbp), %edx	# key, key.1_37
	movb	%dl, (%rax)	# key.1_37, *_35
	jmp	.L7	#
.L6:
# m_cheat.c:62: 	(cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
	.loc 1 62 21
	movzbl	-28(%rbp), %eax	# key, key.2_38
	movzbl	%al, %eax	# key.2_38, _39
# m_cheat.c:62: 	(cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
	.loc 1 62 20
	cltq
	leaq	cheat_xlate_table(%rip), %rdx	#, tmp155
	movzbl	(%rax,%rdx), %edx	# cheat_xlate_table[_39], _40
# m_cheat.c:62: 	(cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
	.loc 1 62 48
	movq	-24(%rbp), %rax	# cht, tmp156
	movq	8(%rax), %rax	# cht_66(D)->p, _41
# m_cheat.c:62: 	(cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
	.loc 1 62 44
	movzbl	(%rax), %eax	# *_41, _42
# m_cheat.c:62: 	(cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
	.loc 1 62 2
	cmpb	%al, %dl	# _42, _40
	jne	.L8	#,
# m_cheat.c:62: 	(cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
	.loc 1 62 56 discriminator 1
	movq	-24(%rbp), %rax	# cht, tmp157
	movq	8(%rax), %rax	# cht_66(D)->p, _43
# m_cheat.c:62: 	(cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
	.loc 1 62 59 discriminator 1
	leaq	1(%rax), %rdx	#, _44
	movq	-24(%rbp), %rax	# cht, tmp158
	movq	%rdx, 8(%rax)	# _44, cht_66(D)->p
	jmp	.L7	#
.L8:
# m_cheat.c:64: 	cht->p = cht->sequence;
	.loc 1 64 14
	movq	-24(%rbp), %rax	# cht, tmp159
	movq	(%rax), %rdx	# cht_66(D)->sequence, _45
# m_cheat.c:64: 	cht->p = cht->sequence;
	.loc 1 64 9
	movq	-24(%rbp), %rax	# cht, tmp160
	movq	%rdx, 8(%rax)	# _45, cht_66(D)->p
.L7:
# m_cheat.c:66:     if (*cht->p == 1)
	.loc 1 66 13
	movq	-24(%rbp), %rax	# cht, tmp161
	movq	8(%rax), %rax	# cht_66(D)->p, _46
# m_cheat.c:66:     if (*cht->p == 1)
	.loc 1 66 9
	movzbl	(%rax), %eax	# *_46, _47
# m_cheat.c:66:     if (*cht->p == 1)
	.loc 1 66 8
	cmpb	$1, %al	#, _47
	jne	.L9	#,
# m_cheat.c:67: 	cht->p++;
	.loc 1 67 5
	movq	-24(%rbp), %rax	# cht, tmp162
	movq	8(%rax), %rax	# cht_66(D)->p, _48
# m_cheat.c:67: 	cht->p++;
	.loc 1 67 8
	leaq	1(%rax), %rdx	#, _49
	movq	-24(%rbp), %rax	# cht, tmp163
	movq	%rdx, 8(%rax)	# _49, cht_66(D)->p
	jmp	.L10	#
.L9:
# m_cheat.c:68:     else if (*cht->p == 0xff) // end of sequence character
	.loc 1 68 18
	movq	-24(%rbp), %rax	# cht, tmp164
	movq	8(%rax), %rax	# cht_66(D)->p, _50
# m_cheat.c:68:     else if (*cht->p == 0xff) // end of sequence character
	.loc 1 68 14
	movzbl	(%rax), %eax	# *_50, _51
# m_cheat.c:68:     else if (*cht->p == 0xff) // end of sequence character
	.loc 1 68 13
	cmpb	$-1, %al	#, _51
	jne	.L10	#,
# m_cheat.c:70: 	cht->p = cht->sequence;
	.loc 1 70 14
	movq	-24(%rbp), %rax	# cht, tmp165
	movq	(%rax), %rdx	# cht_66(D)->sequence, _52
# m_cheat.c:70: 	cht->p = cht->sequence;
	.loc 1 70 9
	movq	-24(%rbp), %rax	# cht, tmp166
	movq	%rdx, 8(%rax)	# _52, cht_66(D)->p
# m_cheat.c:71: 	rc = 1;
	.loc 1 71 5
	movl	$1, -4(%rbp)	#, rc
.L10:
# m_cheat.c:74:     return rc;
	.loc 1 74 12
	movl	-4(%rbp), %eax	# rc, _76
# m_cheat.c:75: }
	.loc 1 75 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	cht_CheckCheat, .-cht_CheckCheat
	.globl	cht_GetParam
	.type	cht_GetParam, @function
cht_GetParam:
.LFB1:
	.loc 1 81 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# cht, cht
	movq	%rsi, -32(%rbp)	# buffer, buffer
# m_cheat.c:85:     p = cht->sequence;
	.loc 1 85 7
	movq	-24(%rbp), %rax	# cht, tmp89
	movq	(%rax), %rax	# cht_14(D)->sequence, tmp90
	movq	%rax, -8(%rbp)	# tmp90, p
# m_cheat.c:86:     while (*(p++) != 1);
	.loc 1 86 11
	nop	
.L13:
# m_cheat.c:86:     while (*(p++) != 1);
	.loc 1 86 15 discriminator 1
	movq	-8(%rbp), %rax	# p, p.3_1
	leaq	1(%rax), %rdx	#, tmp91
	movq	%rdx, -8(%rbp)	# tmp91, p
# m_cheat.c:86:     while (*(p++) != 1);
	.loc 1 86 12 discriminator 1
	movzbl	(%rax), %eax	# *p.3_1, _2
# m_cheat.c:86:     while (*(p++) != 1);
	.loc 1 86 19 discriminator 1
	cmpb	$1, %al	#, _2
	jne	.L13	#,
.L15:
# m_cheat.c:90: 	c = *p;
	.loc 1 90 4
	movq	-8(%rbp), %rax	# p, tmp92
	movzbl	(%rax), %eax	# *p_10, tmp93
	movb	%al, -9(%rbp)	# tmp93, c
# m_cheat.c:91: 	*(buffer++) = c;
	.loc 1 91 10
	movq	-32(%rbp), %rax	# buffer, buffer.4_3
	leaq	1(%rax), %rdx	#, tmp94
	movq	%rdx, -32(%rbp)	# tmp94, buffer
# m_cheat.c:91: 	*(buffer++) = c;
	.loc 1 91 14
	movzbl	-9(%rbp), %edx	# c, c.5_4
	movb	%dl, (%rax)	# c.5_4, *buffer.4_3
# m_cheat.c:92: 	*(p++) = 0;
	.loc 1 92 5
	movq	-8(%rbp), %rax	# p, p.6_5
	leaq	1(%rax), %rdx	#, tmp95
	movq	%rdx, -8(%rbp)	# tmp95, p
# m_cheat.c:92: 	*(p++) = 0;
	.loc 1 92 9
	movb	$0, (%rax)	#, *p.6_5
# m_cheat.c:94:     while (c && *p!=0xff );
	.loc 1 94 14 discriminator 2
	cmpb	$0, -9(%rbp)	#, c
	je	.L14	#,
# m_cheat.c:94:     while (c && *p!=0xff );
	.loc 1 94 17 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp96
	movzbl	(%rax), %eax	# *p_21, _6
# m_cheat.c:94:     while (c && *p!=0xff );
	.loc 1 94 14 discriminator 1
	cmpb	$-1, %al	#, _6
	jne	.L15	#,
.L14:
# m_cheat.c:96:     if (*p==0xff)
	.loc 1 96 9
	movq	-8(%rbp), %rax	# p, tmp97
	movzbl	(%rax), %eax	# *p_21, _7
# m_cheat.c:96:     if (*p==0xff)
	.loc 1 96 8
	cmpb	$-1, %al	#, _7
	jne	.L17	#,
# m_cheat.c:97: 	*buffer = 0;
	.loc 1 97 10
	movq	-32(%rbp), %rax	# buffer, tmp98
	movb	$0, (%rax)	#, *buffer_19
.L17:
# m_cheat.c:99: }
	.loc 1 99 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	cht_GetParam, .-cht_GetParam
.Letext0:
	.file 2 "m_cheat.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x195
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.long	0x51
	.long	0x3e
	.uleb128 0x7
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x8
	.long	0x2e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xa
	.byte	0x10
	.byte	0x2
	.byte	0x22
	.byte	0x9
	.long	0x8d
	.uleb128 0xb
	.long	.LASF4
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.long	0x8d
	.byte	0
	.uleb128 0xc
	.string	"p"
	.byte	0x2
	.byte	0x25
	.byte	0x14
	.long	0x8d
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x92
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xd
	.long	.LASF13
	.byte	0x2
	.byte	0x27
	.byte	0x3
	.long	0x6b
	.uleb128 0x3
	.long	.LASF7
	.byte	0x22
	.byte	0xd
	.long	0xba
	.uleb128 0x9
	.byte	0x3
	.quad	firsttime
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	0x92
	.long	0xd1
	.uleb128 0x7
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.long	.LASF8
	.byte	0x23
	.byte	0x16
	.long	0xc1
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_xlate_table
	.uleb128 0xf
	.long	.LASF10
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a
	.uleb128 0x5
	.string	"cht"
	.byte	0x4f
	.byte	0xf
	.long	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF9
	.byte	0x1
	.byte	0x50
	.byte	0xa
	.long	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"p"
	.byte	0x53
	.byte	0x14
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"c"
	.byte	0x53
	.byte	0x17
	.long	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x4
	.long	0x99
	.uleb128 0x4
	.long	0x4a
	.uleb128 0x11
	.long	.LASF11
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0xba
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"cht"
	.byte	0x2c
	.byte	0xf
	.long	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"key"
	.byte	0x2d
	.byte	0x9
	.long	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"i"
	.byte	0x2f
	.byte	0x9
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"rc"
	.byte	0x30
	.byte	0x9
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF10:
	.string	"cht_GetParam"
.LASF9:
	.string	"buffer"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"firsttime"
.LASF12:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF6:
	.string	"rcsid"
.LASF4:
	.string	"sequence"
.LASF13:
	.string	"cheatseq_t"
.LASF8:
	.string	"cheat_xlate_table"
.LASF3:
	.string	"char"
.LASF11:
	.string	"cht_CheckCheat"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_cheat.c"
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
