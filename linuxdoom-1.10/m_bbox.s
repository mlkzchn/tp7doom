	.file	"m_bbox.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_bbox.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_bbox.c,v 1.1 1997/02/03 22:45:10 b1 Exp $"
	.text
	.globl	M_ClearBox
	.type	M_ClearBox, @function
M_ClearBox:
.LFB0:
	.file 1 "m_bbox.c"
	.loc 1 40 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# box, box
# m_bbox.c:41:     box[BOXTOP] = box[BOXRIGHT] = MININT;
	.loc 1 41 22
	movq	-8(%rbp), %rax	# box, tmp87
	addq	$12, %rax	#, _1
# m_bbox.c:41:     box[BOXTOP] = box[BOXRIGHT] = MININT;
	.loc 1 41 33
	movl	$-2147483648, (%rax)	#, *_1
# m_bbox.c:41:     box[BOXTOP] = box[BOXRIGHT] = MININT;
	.loc 1 41 22
	movl	(%rax), %edx	# *_1, _2
# m_bbox.c:41:     box[BOXTOP] = box[BOXRIGHT] = MININT;
	.loc 1 41 17
	movq	-8(%rbp), %rax	# box, tmp88
	movl	%edx, (%rax)	# _2, *box_6(D)
# m_bbox.c:42:     box[BOXBOTTOM] = box[BOXLEFT] = MAXINT;
	.loc 1 42 25
	movq	-8(%rbp), %rax	# box, tmp89
	addq	$8, %rax	#, _3
# m_bbox.c:42:     box[BOXBOTTOM] = box[BOXLEFT] = MAXINT;
	.loc 1 42 35
	movl	$2147483647, (%rax)	#, *_3
# m_bbox.c:42:     box[BOXBOTTOM] = box[BOXLEFT] = MAXINT;
	.loc 1 42 8
	movq	-8(%rbp), %rdx	# box, tmp90
	addq	$4, %rdx	#, _4
# m_bbox.c:42:     box[BOXBOTTOM] = box[BOXLEFT] = MAXINT;
	.loc 1 42 25
	movl	(%rax), %eax	# *_3, _5
# m_bbox.c:42:     box[BOXBOTTOM] = box[BOXLEFT] = MAXINT;
	.loc 1 42 20
	movl	%eax, (%rdx)	# _5, *_4
# m_bbox.c:43: }
	.loc 1 43 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	M_ClearBox, .-M_ClearBox
	.globl	M_AddToBox
	.type	M_AddToBox, @function
M_AddToBox:
.LFB1:
	.loc 1 50 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# box, box
	movl	%esi, -12(%rbp)	# x, x
	movl	%edx, -16(%rbp)	# y, y
# m_bbox.c:51:     if (x<box[BOXLEFT])
	.loc 1 51 14
	movq	-8(%rbp), %rax	# box, tmp92
	addq	$8, %rax	#, _1
	movl	(%rax), %eax	# *_1, _2
# m_bbox.c:51:     if (x<box[BOXLEFT])
	.loc 1 51 8
	cmpl	%eax, -12(%rbp)	# _2, x
	jge	.L3	#,
# m_bbox.c:52: 	box[BOXLEFT] = x;
	.loc 1 52 5
	movq	-8(%rbp), %rax	# box, tmp93
	leaq	8(%rax), %rdx	#, _3
# m_bbox.c:52: 	box[BOXLEFT] = x;
	.loc 1 52 15
	movl	-12(%rbp), %eax	# x, tmp94
	movl	%eax, (%rdx)	# tmp94, *_3
	jmp	.L4	#
.L3:
# m_bbox.c:53:     else if (x>box[BOXRIGHT])
	.loc 1 53 19
	movq	-8(%rbp), %rax	# box, tmp95
	addq	$12, %rax	#, _4
	movl	(%rax), %eax	# *_4, _5
# m_bbox.c:53:     else if (x>box[BOXRIGHT])
	.loc 1 53 13
	cmpl	%eax, -12(%rbp)	# _5, x
	jle	.L4	#,
# m_bbox.c:54: 	box[BOXRIGHT] = x;
	.loc 1 54 5
	movq	-8(%rbp), %rax	# box, tmp96
	leaq	12(%rax), %rdx	#, _6
# m_bbox.c:54: 	box[BOXRIGHT] = x;
	.loc 1 54 16
	movl	-12(%rbp), %eax	# x, tmp97
	movl	%eax, (%rdx)	# tmp97, *_6
.L4:
# m_bbox.c:55:     if (y<box[BOXBOTTOM])
	.loc 1 55 14
	movq	-8(%rbp), %rax	# box, tmp98
	addq	$4, %rax	#, _7
	movl	(%rax), %eax	# *_7, _8
# m_bbox.c:55:     if (y<box[BOXBOTTOM])
	.loc 1 55 8
	cmpl	%eax, -16(%rbp)	# _8, y
	jge	.L5	#,
# m_bbox.c:56: 	box[BOXBOTTOM] = y;
	.loc 1 56 5
	movq	-8(%rbp), %rax	# box, tmp99
	leaq	4(%rax), %rdx	#, _9
# m_bbox.c:56: 	box[BOXBOTTOM] = y;
	.loc 1 56 17
	movl	-16(%rbp), %eax	# y, tmp100
	movl	%eax, (%rdx)	# tmp100, *_9
# m_bbox.c:59: }
	.loc 1 59 1
	jmp	.L7	#
.L5:
# m_bbox.c:57:     else if (y>box[BOXTOP])
	.loc 1 57 19
	movq	-8(%rbp), %rax	# box, tmp101
	movl	(%rax), %eax	# *box_13(D), _10
# m_bbox.c:57:     else if (y>box[BOXTOP])
	.loc 1 57 13
	cmpl	%eax, -16(%rbp)	# _10, y
	jle	.L7	#,
# m_bbox.c:58: 	box[BOXTOP] = y;
	.loc 1 58 14
	movq	-8(%rbp), %rax	# box, tmp102
	movl	-16(%rbp), %edx	# y, tmp103
	movl	%edx, (%rax)	# tmp103, *box_13(D)
.L7:
# m_bbox.c:59: }
	.loc 1 59 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	M_AddToBox, .-M_AddToBox
.Letext0:
	.file 2 "m_fixed.h"
	.file 3 "m_bbox.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x11e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x5
	.long	.LASF9
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
	.uleb128 0x4
	.long	0x2e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	0x4a
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x9
	.long	.LASF11
	.byte	0x2
	.byte	0x26
	.byte	0xd
	.long	0x78
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x7
	.byte	0x4
	.long	0xa6
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.long	0xa6
	.uleb128 0x1
	.long	.LASF4
	.byte	0
	.uleb128 0x1
	.long	.LASF5
	.byte	0x1
	.uleb128 0x1
	.long	.LASF6
	.byte	0x2
	.uleb128 0x1
	.long	.LASF7
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0xc
	.long	.LASF12
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2
	.uleb128 0x2
	.string	"box"
	.byte	0x2f
	.byte	0xc
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"x"
	.byte	0x30
	.byte	0xb
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"y"
	.byte	0x31
	.byte	0xb
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x6c
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.string	"box"
	.byte	0x27
	.byte	0x1b
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF8:
	.string	"unsigned int"
.LASF2:
	.string	"long unsigned int"
.LASF13:
	.string	"M_ClearBox"
.LASF9:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF12:
	.string	"M_AddToBox"
.LASF10:
	.string	"rcsid"
.LASF6:
	.string	"BOXLEFT"
.LASF7:
	.string	"BOXRIGHT"
.LASF5:
	.string	"BOXBOTTOM"
.LASF4:
	.string	"BOXTOP"
.LASF3:
	.string	"char"
.LASF11:
	.string	"fixed_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_bbox.c"
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
