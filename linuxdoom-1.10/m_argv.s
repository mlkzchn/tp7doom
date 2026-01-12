	.file	"m_argv.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_argv.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_argv.c,v 1.1 1997/02/03 22:45:10 b1 Exp $"
	.globl	myargc
	.bss
	.align 4
	.type	myargc, @object
	.size	myargc, 4
myargc:
	.zero	4
	.globl	myargv
	.align 8
	.type	myargv, @object
	.size	myargv, 8
myargv:
	.zero	8
	.text
	.globl	M_CheckParm
	.type	M_CheckParm, @function
M_CheckParm:
.LFB0:
	.file 1 "m_argv.c"
	.loc 1 42 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# check, check
# m_argv.c:45:     for (i = 1;i<myargc;i++)
	.loc 1 45 12
	movl	$1, -4(%rbp)	#, i
# m_argv.c:45:     for (i = 1;i<myargc;i++)
	.loc 1 45 5
	jmp	.L2	#
.L5:
# m_argv.c:47: 	if ( !strcasecmp(check, myargv[i]) )
	.loc 1 47 32
	movq	myargv(%rip), %rax	# myargv, myargv.0_1
	movl	-4(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# m_argv.c:47: 	if ( !strcasecmp(check, myargv[i]) )
	.loc 1 47 8
	movq	(%rax), %rdx	# *_4, _5
	movq	-24(%rbp), %rax	# check, tmp92
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# tmp92,
	call	strcasecmp@PLT	#
# m_argv.c:47: 	if ( !strcasecmp(check, myargv[i]) )
	.loc 1 47 5 discriminator 1
	testl	%eax, %eax	# _6
	jne	.L3	#,
# m_argv.c:48: 	    return i;
	.loc 1 48 13
	movl	-4(%rbp), %eax	# i, _9
	jmp	.L4	#
.L3:
# m_argv.c:45:     for (i = 1;i<myargc;i++)
	.loc 1 45 26 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L2:
# m_argv.c:45:     for (i = 1;i<myargc;i++)
	.loc 1 45 17 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.1_7
	cmpl	%eax, -4(%rbp)	# myargc.1_7, i
	jl	.L5	#,
# m_argv.c:51:     return 0;
	.loc 1 51 12
	movl	$0, %eax	#, _9
.L4:
# m_argv.c:52: }
	.loc 1 52 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	M_CheckParm, .-M_CheckParm
.Letext0:
	.file 2 "/usr/include/strings.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x106
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x6
	.long	.LASF8
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.long	0x51
	.long	0x3e
	.uleb128 0x8
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
	.uleb128 0x9
	.long	.LASF7
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	0x51
	.uleb128 0x4
	.long	.LASF5
	.byte	0x1d
	.byte	0x6
	.long	0x73
	.uleb128 0x9
	.byte	0x3
	.quad	myargc
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1e
	.byte	0x9
	.long	0xa9
	.uleb128 0x9
	.byte	0x3
	.quad	myargv
	.uleb128 0x2
	.long	0xae
	.uleb128 0x2
	.long	0x4a
	.uleb128 0xb
	.long	.LASF9
	.byte	0x2
	.byte	0x74
	.byte	0xc
	.long	0x73
	.long	0xce
	.uleb128 0x5
	.long	0x7a
	.uleb128 0x5
	.long	0x7a
	.byte	0
	.uleb128 0xc
	.long	.LASF10
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.long	0x73
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF11
	.byte	0x1
	.byte	0x29
	.byte	0x18
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.byte	0xa
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
.LASF2:
	.string	"long unsigned int"
.LASF6:
	.string	"myargv"
.LASF4:
	.string	"short unsigned int"
.LASF10:
	.string	"M_CheckParm"
.LASF11:
	.string	"check"
.LASF8:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF5:
	.string	"myargc"
.LASF7:
	.string	"rcsid"
.LASF9:
	.string	"strcasecmp"
.LASF3:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_argv.c"
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
