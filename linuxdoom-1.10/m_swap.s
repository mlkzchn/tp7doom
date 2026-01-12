	.file	"m_swap.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_swap.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_bbox.c,v 1.1 1997/02/03 22:45:10 b1 Exp $"
	.text
	.globl	SwapSHORT
	.type	SwapSHORT, @function
SwapSHORT:
.LFB0:
	.file 1 "m_swap.c"
	.loc 1 39 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# x, tmp89
	movw	%ax, -4(%rbp)	# tmp90, x
# m_swap.c:41:     return (x>>8) | (x<<8);
	.loc 1 41 19
	movzwl	-4(%rbp), %eax	# x, tmp91
	shrw	$8, %ax	#, _1
	movl	%eax, %edx	# _1, _2
	movzwl	-4(%rbp), %eax	# x, x.0_3
	sall	$8, %eax	#, _4
	orl	%edx, %eax	# _2, _5
# m_swap.c:42: }
	.loc 1 42 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	SwapSHORT, .-SwapSHORT
	.globl	SwapLONG
	.type	SwapLONG, @function
SwapLONG:
.LFB1:
	.loc 1 46 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
# m_swap.c:48: 	(x>>24)
	.loc 1 48 4
	movq	-8(%rbp), %rax	# x, tmp92
	shrq	$24, %rax	#, tmp92
	movq	%rax, %rdx	# tmp92, _1
# m_swap.c:49: 	| ((x>>8) & 0xff00)
	.loc 1 49 7
	movq	-8(%rbp), %rax	# x, tmp93
	shrq	$8, %rax	#, _2
# m_swap.c:49: 	| ((x>>8) & 0xff00)
	.loc 1 49 12
	andl	$65280, %eax	#, _3
# m_swap.c:49: 	| ((x>>8) & 0xff00)
	.loc 1 49 2
	orq	%rax, %rdx	# _3, _4
# m_swap.c:50: 	| ((x<<8) & 0xff0000)
	.loc 1 50 7
	movq	-8(%rbp), %rax	# x, tmp94
	salq	$8, %rax	#, _5
# m_swap.c:50: 	| ((x<<8) & 0xff0000)
	.loc 1 50 12
	andl	$16711680, %eax	#, _6
# m_swap.c:50: 	| ((x<<8) & 0xff0000)
	.loc 1 50 2
	orq	%rax, %rdx	# _6, _7
# m_swap.c:51: 	| (x<<24);
	.loc 1 51 6
	movq	-8(%rbp), %rax	# x, tmp95
	salq	$24, %rax	#, _8
# m_swap.c:51: 	| (x<<24);
	.loc 1 51 2
	orq	%rdx, %rax	# _7, _10
# m_swap.c:52: }
	.loc 1 52 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	SwapLONG, .-SwapLONG
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcc
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x5
	.long	.LASF7
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
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x2
	.long	0x4a
	.uleb128 0x8
	.long	.LASF8
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2d
	.byte	0xf
	.long	0x43
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a
	.uleb128 0x4
	.string	"x"
	.byte	0x2d
	.byte	0x27
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.long	.LASF5
	.byte	0x26
	.byte	0x10
	.long	0xc8
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xc8
	.uleb128 0x4
	.string	"x"
	.byte	0x26
	.byte	0x29
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF6
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
.LASF8:
	.string	"rcsid"
.LASF7:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"SwapLONG"
.LASF6:
	.string	"short unsigned int"
.LASF5:
	.string	"SwapSHORT"
.LASF2:
	.string	"long unsigned int"
.LASF3:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_swap.c"
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
