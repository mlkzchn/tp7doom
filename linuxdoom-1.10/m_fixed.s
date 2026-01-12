	.file	"m_fixed.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_fixed.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_bbox.c,v 1.1 1997/02/03 22:45:10 b1 Exp $"
	.text
	.globl	FixedMul
	.type	FixedMul, @function
FixedMul:
.LFB6:
	.file 1 "m_fixed.c"
	.loc 1 47 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b, b
# m_fixed.c:48:     return ((long long) a * (long long) b) >> FRACBITS;
	.loc 1 48 13
	movl	-4(%rbp), %eax	# a, tmp88
	movslq	%eax, %rdx	# tmp88, _1
# m_fixed.c:48:     return ((long long) a * (long long) b) >> FRACBITS;
	.loc 1 48 29
	movl	-8(%rbp), %eax	# b, tmp89
	cltq
# m_fixed.c:48:     return ((long long) a * (long long) b) >> FRACBITS;
	.loc 1 48 27
	imulq	%rdx, %rax	# _1, _3
# m_fixed.c:48:     return ((long long) a * (long long) b) >> FRACBITS;
	.loc 1 48 44
	sarq	$16, %rax	#, _4
# m_fixed.c:49: }
	.loc 1 49 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	FixedMul, .-FixedMul
	.globl	FixedDiv
	.type	FixedDiv, @function
FixedDiv:
.LFB7:
	.loc 1 61 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b, b
# m_fixed.c:62:     if ( (abs(a)>>14) >= abs(b))
	.loc 1 62 11
	movl	-4(%rbp), %eax	# a, tmp92
	movl	%eax, %edx	# tmp92, tmp93
	negl	%edx	# tmp93
	cmovns	%edx, %eax	# tmp93,, _1
# m_fixed.c:62:     if ( (abs(a)>>14) >= abs(b))
	.loc 1 62 17
	sarl	$14, %eax	#, _1
	movl	%eax, %edx	# _1, _2
# m_fixed.c:62:     if ( (abs(a)>>14) >= abs(b))
	.loc 1 62 26
	movl	-8(%rbp), %eax	# b, tmp94
	movl	%eax, %ecx	# tmp94, tmp95
	negl	%ecx	# tmp95
	cmovns	%ecx, %eax	# tmp95,, _3
# m_fixed.c:62:     if ( (abs(a)>>14) >= abs(b))
	.loc 1 62 8
	cmpl	%eax, %edx	# _3, _2
	jl	.L4	#,
# m_fixed.c:63: 	return (a^b)<0 ? MININT : MAXINT;
	.loc 1 63 11
	movl	-4(%rbp), %eax	# a, tmp88
	xorl	-8(%rbp), %eax	# b, _4
# m_fixed.c:63: 	return (a^b)<0 ? MININT : MAXINT;
	.loc 1 63 26
	testl	%eax, %eax	# _4
	jns	.L5	#,
# m_fixed.c:63: 	return (a^b)<0 ? MININT : MAXINT;
	.loc 1 63 26 is_stmt 0 discriminator 1
	movl	$-2147483648, %eax	#, iftmp.0_6
# m_fixed.c:63: 	return (a^b)<0 ? MININT : MAXINT;
	.loc 1 63 26
	jmp	.L7	#
.L5:
# m_fixed.c:63: 	return (a^b)<0 ? MININT : MAXINT;
	.loc 1 63 26 discriminator 2
	movl	$2147483647, %eax	#, iftmp.0_6
# m_fixed.c:63: 	return (a^b)<0 ? MININT : MAXINT;
	.loc 1 63 26
	jmp	.L7	#
.L4:
# m_fixed.c:64:     return FixedDiv2 (a,b);
	.loc 1 64 12 is_stmt 1
	movl	-8(%rbp), %edx	# b, tmp89
	movl	-4(%rbp), %eax	# a, tmp90
	movl	%edx, %esi	# tmp89,
	movl	%eax, %edi	# tmp90,
	call	FixedDiv2	#
.L7:
# m_fixed.c:65: }
	.loc 1 65 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	FixedDiv, .-FixedDiv
	.section	.rodata
.LC3:
	.string	"FixedDiv: divide by zero"
	.text
	.globl	FixedDiv2
	.type	FixedDiv2, @function
FixedDiv2:
.LFB8:
	.loc 1 73 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
# m_fixed.c:82:     c = ((double)a) / ((double)b) * FRACUNIT;
	.loc 1 82 10
	pxor	%xmm0, %xmm0	# _1
	cvtsi2sdl	-20(%rbp), %xmm0	# a, _1
# m_fixed.c:82:     c = ((double)a) / ((double)b) * FRACUNIT;
	.loc 1 82 24
	pxor	%xmm2, %xmm2	# _2
	cvtsi2sdl	-24(%rbp), %xmm2	# b, _2
# m_fixed.c:82:     c = ((double)a) / ((double)b) * FRACUNIT;
	.loc 1 82 21
	movapd	%xmm0, %xmm1	# _1, _1
	divsd	%xmm2, %xmm1	# _2, _1
# m_fixed.c:82:     c = ((double)a) / ((double)b) * FRACUNIT;
	.loc 1 82 7
	movsd	.LC0(%rip), %xmm0	#, tmp88
	mulsd	%xmm1, %xmm0	# _3, tmp87
	movsd	%xmm0, -8(%rbp)	# tmp87, c
# m_fixed.c:84:     if (c >= 2147483648.0 || c < -2147483648.0)
	.loc 1 84 8
	movsd	-8(%rbp), %xmm0	# c, tmp89
	comisd	.LC1(%rip), %xmm0	#, tmp89
	jnb	.L9	#,
# m_fixed.c:84:     if (c >= 2147483648.0 || c < -2147483648.0)
	.loc 1 84 27 discriminator 1
	movsd	.LC2(%rip), %xmm0	#, tmp90
	comisd	-8(%rbp), %xmm0	# c, tmp90
	jbe	.L10	#,
.L9:
# m_fixed.c:85: 	I_Error("FixedDiv: divide by zero");
	.loc 1 85 2
	leaq	.LC3(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L10:
# m_fixed.c:86:     return (fixed_t) c;
	.loc 1 86 12
	movsd	-8(%rbp), %xmm0	# c, tmp92
	cvttsd2sil	%xmm0, %eax	# tmp92, _10
# m_fixed.c:87: }
	.loc 1 87 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	FixedDiv2, .-FixedDiv2
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1089470464
	.align 8
.LC1:
	.long	0
	.long	1105199104
	.align 8
.LC2:
	.long	0
	.long	-1042284544
	.text
.Letext0:
	.file 2 "m_fixed.h"
	.file 3 "i_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x184
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x5
	.long	.LASF16
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
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	0x2e
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.long	0x4a
	.uleb128 0x8
	.long	.LASF12
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0xa
	.byte	0x8
	.long	0x4a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.byte	0x26
	.byte	0xd
	.long	0x6c
	.uleb128 0xc
	.long	.LASF18
	.byte	0x3
	.byte	0x59
	.byte	0x6
	.long	0xd0
	.uleb128 0xd
	.long	0xa4
	.uleb128 0xe
	.byte	0
	.uleb128 0x4
	.long	.LASF14
	.byte	0x46
	.long	0xb1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x114
	.uleb128 0x2
	.string	"a"
	.byte	0x47
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2
	.string	"b"
	.byte	0x48
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x50
	.byte	0xc
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3a
	.long	0xb1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x152
	.uleb128 0x2
	.string	"a"
	.byte	0x3b
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"b"
	.byte	0x3c
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF19
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.long	0xb1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"a"
	.byte	0x2d
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.string	"b"
	.byte	0x2e
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.sleb128 1
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
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
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
	.uleb128 0x10
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
.LASF5:
	.string	"long long int"
.LASF8:
	.string	"unsigned int"
.LASF14:
	.string	"FixedDiv2"
.LASF17:
	.string	"fixed_t"
.LASF2:
	.string	"long unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned char"
.LASF15:
	.string	"FixedDiv"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"double"
.LASF12:
	.string	"rcsid"
.LASF7:
	.string	"short unsigned int"
.LASF9:
	.string	"signed char"
.LASF18:
	.string	"I_Error"
.LASF19:
	.string	"FixedMul"
.LASF16:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF10:
	.string	"short int"
.LASF3:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_fixed.c"
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
