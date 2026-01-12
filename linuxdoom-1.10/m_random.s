	.file	"m_random.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_random.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: m_random.c,v 1.1 1997/02/03 22:45:11 b1 Exp $"
	.globl	rndtable
	.data
	.align 32
	.type	rndtable, @object
	.size	rndtable, 256
rndtable:
	.string	""
	.string	"\bm\334\336\361\225kK\370\376\214\020BJ\025\323/P\362\232\033\315\200\241YM$_nU0\324\214\323\371\026O\3102\034\2744\214\312xD\221>F\270\276[\305\230\340\225h\031\262\374\266\312\266\215\305\004Q\265\362\221*'\343\234\306\341\301\333]z\257\371"
	.ascii	"\257\217F\357.\366\2435\243m\250\207\002\353\031\\\024\221\212"
	.ascii	"ME\246N\260\255\324\246q^\241)2\3571o\244F<\002%\253K\210\234"
	.ascii	"\0138*\222\212\345I\222M=b\304\207j?\305\303V`\313qe\252\367"
	.ascii	"\265qP\372l\007\377\355\201\342Okp\246g\361\030\337\357x\306"
	.ascii	":<R\200\003\270B\217\340\221\340Q\316\243-?Z\250r;!\237_\034"
	.ascii	"\213{b}\304\017F\302\3756\016m\342G\021\241]\272W\364\212\024"
	.ascii	"4{\373\032$\021.4\347\350L\037\335T%\330\245\324j\305\362b+'"
	.ascii	"\257\376\221\276Tv\336\273\210x\243\354\371"
	.globl	rndindex
	.bss
	.align 4
	.type	rndindex, @object
	.size	rndindex, 4
rndindex:
	.zero	4
	.globl	prndindex
	.align 4
	.type	prndindex, @object
	.size	prndindex, 4
prndindex:
	.zero	4
	.text
	.globl	P_Random
	.type	P_Random, @function
P_Random:
.LFB0:
	.file 1 "m_random.c"
	.loc 1 58 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_random.c:59:     prndindex = (prndindex+1)&0xff;
	.loc 1 59 27
	movl	prndindex(%rip), %eax	# prndindex, prndindex.0_1
	addl	$1, %eax	#, _2
# m_random.c:59:     prndindex = (prndindex+1)&0xff;
	.loc 1 59 30
	movzbl	%al, %eax	# _2, _3
# m_random.c:59:     prndindex = (prndindex+1)&0xff;
	.loc 1 59 15
	movl	%eax, prndindex(%rip)	# _3, prndindex
# m_random.c:60:     return rndtable[prndindex];
	.loc 1 60 20
	movl	prndindex(%rip), %eax	# prndindex, prndindex.1_4
	cltq
	leaq	rndtable(%rip), %rdx	#, tmp90
	movzbl	(%rax,%rdx), %eax	# rndtable[prndindex.1_4], _5
	movzbl	%al, %eax	# _5, _8
# m_random.c:61: }
	.loc 1 61 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_Random, .-P_Random
	.globl	M_Random
	.type	M_Random, @function
M_Random:
.LFB1:
	.loc 1 64 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_random.c:65:     rndindex = (rndindex+1)&0xff;
	.loc 1 65 25
	movl	rndindex(%rip), %eax	# rndindex, rndindex.2_1
	addl	$1, %eax	#, _2
# m_random.c:65:     rndindex = (rndindex+1)&0xff;
	.loc 1 65 28
	movzbl	%al, %eax	# _2, _3
# m_random.c:65:     rndindex = (rndindex+1)&0xff;
	.loc 1 65 14
	movl	%eax, rndindex(%rip)	# _3, rndindex
# m_random.c:66:     return rndtable[rndindex];
	.loc 1 66 20
	movl	rndindex(%rip), %eax	# rndindex, rndindex.3_4
	cltq
	leaq	rndtable(%rip), %rdx	#, tmp90
	movzbl	(%rax,%rdx), %eax	# rndtable[rndindex.3_4], _5
	movzbl	%al, %eax	# _5, _8
# m_random.c:67: }
	.loc 1 67 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	M_Random, .-M_Random
	.globl	M_ClearRandom
	.type	M_ClearRandom, @function
M_ClearRandom:
.LFB2:
	.loc 1 70 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# m_random.c:71:     rndindex = prndindex = 0;
	.loc 1 71 26
	movl	$0, prndindex(%rip)	#, prndindex
# m_random.c:71:     rndindex = prndindex = 0;
	.loc 1 71 14
	movl	prndindex(%rip), %eax	# prndindex, prndindex.4_1
	movl	%eax, rndindex(%rip)	# prndindex.4_1, rndindex
# m_random.c:72: }
	.loc 1 72 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	M_ClearRandom, .-M_ClearRandom
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x118
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x3
	.long	0x51
	.long	0x3e
	.uleb128 0x4
	.long	0x43
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.long	0x2e
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x5
	.long	0x4a
	.uleb128 0x8
	.long	.LASF11
	.byte	0x1
	.byte	0x18
	.byte	0x13
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x3
	.long	0x7c
	.long	0x7c
	.uleb128 0x4
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1f
	.byte	0xf
	.long	0x6c
	.uleb128 0x9
	.byte	0x3
	.quad	rndtable
	.uleb128 0x2
	.long	.LASF6
	.byte	0x35
	.byte	0x5
	.long	0xad
	.uleb128 0x9
	.byte	0x3
	.quad	rndindex
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF7
	.byte	0x36
	.byte	0x5
	.long	0xad
	.uleb128 0x9
	.byte	0x3
	.quad	prndindex
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x45
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.long	.LASF8
	.byte	0x3f
	.long	0xad
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.long	.LASF9
	.byte	0x39
	.long	0xad
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.sleb128 5
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
	.uleb128 0x7
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
.LASF2:
	.string	"long unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF7:
	.string	"prndindex"
.LASF9:
	.string	"P_Random"
.LASF10:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF8:
	.string	"M_Random"
.LASF11:
	.string	"rcsid"
.LASF12:
	.string	"M_ClearRandom"
.LASF6:
	.string	"rndindex"
.LASF3:
	.string	"char"
.LASF5:
	.string	"rndtable"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_random.c"
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
