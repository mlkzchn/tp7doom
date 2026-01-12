	.file	"p_spec.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_spec.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: p_spec.c,v 1.6 1997/02/03 22:45:12 b1 Exp $"
	.globl	animdefs
	.data
	.align 32
	.type	animdefs, @object
	.size	animdefs, 644
animdefs:
# istexture:
	.long	0
# endname:
	.string	"NUKAGE3"
	.zero	1
# startname:
	.string	"NUKAGE1"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"FWATER4"
	.zero	1
# startname:
	.string	"FWATER1"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"SWATER4"
	.zero	1
# startname:
	.string	"SWATER1"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"LAVA4"
	.zero	3
# startname:
	.string	"LAVA1"
	.zero	3
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"BLOOD3"
	.zero	2
# startname:
	.string	"BLOOD1"
	.zero	2
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"RROCK08"
	.zero	1
# startname:
	.string	"RROCK05"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"SLIME04"
	.zero	1
# startname:
	.string	"SLIME01"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"SLIME08"
	.zero	1
# startname:
	.string	"SLIME05"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	0
# endname:
	.string	"SLIME12"
	.zero	1
# startname:
	.string	"SLIME09"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"BLODGR4"
	.zero	1
# startname:
	.string	"BLODGR1"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"SLADRIP3"
# startname:
	.string	"SLADRIP1"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"BLODRIP4"
# startname:
	.string	"BLODRIP1"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"FIREWALL"
# startname:
	.string	"FIREWALA"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"GSTFONT3"
# startname:
	.string	"GSTFONT1"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"FIRELAVA"
# startname:
	.string	"FIRELAV3"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"FIREMAG3"
# startname:
	.string	"FIREMAG1"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"FIREBLU2"
# startname:
	.string	"FIREBLU1"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"ROCKRED3"
# startname:
	.string	"ROCKRED1"
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"BFALL4"
	.zero	2
# startname:
	.string	"BFALL1"
	.zero	2
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"SFALL4"
	.zero	2
# startname:
	.string	"SFALL1"
	.zero	2
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"WFALL4"
	.zero	2
# startname:
	.string	"WFALL1"
	.zero	2
# speed:
	.zero	2
	.long	8
# istexture:
	.long	1
# endname:
	.string	"DBRAIN4"
	.zero	1
# startname:
	.string	"DBRAIN1"
	.zero	1
# speed:
	.zero	2
	.long	8
# istexture:
	.long	-1
	.zero	24
	.globl	anims
	.bss
	.align 32
	.type	anims, @object
	.size	anims, 640
anims:
	.zero	640
	.globl	lastanim
	.align 8
	.type	lastanim, @object
	.size	lastanim, 8
lastanim:
	.zero	8
	.section	.rodata
	.align 8
.LC0:
	.string	"P_InitPicAnims: bad cycle from %s to %s"
	.text
	.globl	P_InitPicAnims
	.type	P_InitPicAnims, @function
P_InitPicAnims:
.LFB6:
	.file 1 "p_spec.c"
	.loc 1 149 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
# p_spec.c:154:     lastanim = anims;
	.loc 1 154 14
	leaq	anims(%rip), %rax	#, tmp117
	movq	%rax, lastanim(%rip)	# tmp117, lastanim
# p_spec.c:155:     for (i=0 ; animdefs[i].istexture != -1 ; i++)
	.loc 1 155 11
	movl	$0, -20(%rbp)	#, i
# p_spec.c:155:     for (i=0 ; animdefs[i].istexture != -1 ; i++)
	.loc 1 155 5
	jmp	.L2	#
.L9:
# p_spec.c:157: 	if (animdefs[i].istexture)
	.loc 1 157 17
	movl	-20(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, tmp118
	movq	%rdx, %rax	# tmp118, tmp121
	salq	$3, %rax	#, tmp122
	subq	%rdx, %rax	# tmp118, tmp121
	salq	$2, %rax	#, tmp123
	movq	%rax, %rdx	# tmp121, tmp120
	leaq	animdefs(%rip), %rax	#, tmp124
	movl	(%rdx,%rax), %eax	# animdefs[i_36].istexture, _1
# p_spec.c:157: 	if (animdefs[i].istexture)
	.loc 1 157 5
	testl	%eax, %eax	# _1
	je	.L3	#,
# p_spec.c:160: 	    if (R_CheckTextureNumForName(animdefs[i].startname) == -1)
	.loc 1 160 46
	movl	-20(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	salq	$3, %rax	#, tmp128
	subq	%rdx, %rax	# tmp125, tmp127
	salq	$2, %rax	#, tmp129
	leaq	animdefs(%rip), %rdx	#, tmp131
	addq	%rdx, %rax	# tmp131, tmp130
	addq	$13, %rax	#, _2
# p_spec.c:160: 	    if (R_CheckTextureNumForName(animdefs[i].startname) == -1)
	.loc 1 160 10
	movq	%rax, %rdi	# _2,
	call	R_CheckTextureNumForName@PLT	#
# p_spec.c:160: 	    if (R_CheckTextureNumForName(animdefs[i].startname) == -1)
	.loc 1 160 9 discriminator 1
	cmpl	$-1, %eax	#, _3
	je	.L10	#,
# p_spec.c:163: 	    lastanim->picnum = R_TextureNumForName (animdefs[i].endname);
	.loc 1 163 57
	movl	-20(%rbp), %eax	# i, tmp133
	movslq	%eax, %rdx	# tmp133, tmp132
	movq	%rdx, %rax	# tmp132, tmp134
	salq	$3, %rax	#, tmp135
	subq	%rdx, %rax	# tmp132, tmp134
	salq	$2, %rax	#, tmp136
	leaq	animdefs(%rip), %rdx	#, tmp138
	addq	%rdx, %rax	# tmp138, tmp137
	addq	$4, %rax	#, _4
# p_spec.c:163: 	    lastanim->picnum = R_TextureNumForName (animdefs[i].endname);
	.loc 1 163 14
	movq	lastanim(%rip), %rbx	# lastanim, lastanim.0_5
# p_spec.c:163: 	    lastanim->picnum = R_TextureNumForName (animdefs[i].endname);
	.loc 1 163 25
	movq	%rax, %rdi	# _4,
	call	R_TextureNumForName@PLT	#
# p_spec.c:163: 	    lastanim->picnum = R_TextureNumForName (animdefs[i].endname);
	.loc 1 163 23 discriminator 1
	movl	%eax, 4(%rbx)	# _6, lastanim.0_5->picnum
# p_spec.c:164: 	    lastanim->basepic = R_TextureNumForName (animdefs[i].startname);
	.loc 1 164 58
	movl	-20(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, tmp139
	movq	%rdx, %rax	# tmp139, tmp141
	salq	$3, %rax	#, tmp142
	subq	%rdx, %rax	# tmp139, tmp141
	salq	$2, %rax	#, tmp143
	leaq	animdefs(%rip), %rdx	#, tmp145
	addq	%rdx, %rax	# tmp145, tmp144
	addq	$13, %rax	#, _7
# p_spec.c:164: 	    lastanim->basepic = R_TextureNumForName (animdefs[i].startname);
	.loc 1 164 14
	movq	lastanim(%rip), %rbx	# lastanim, lastanim.1_8
# p_spec.c:164: 	    lastanim->basepic = R_TextureNumForName (animdefs[i].startname);
	.loc 1 164 26
	movq	%rax, %rdi	# _7,
	call	R_TextureNumForName@PLT	#
# p_spec.c:164: 	    lastanim->basepic = R_TextureNumForName (animdefs[i].startname);
	.loc 1 164 24 discriminator 1
	movl	%eax, 8(%rbx)	# _9, lastanim.1_8->basepic
	jmp	.L6	#
.L3:
# p_spec.c:168: 	    if (W_CheckNumForName(animdefs[i].startname) == -1)
	.loc 1 168 39
	movl	-20(%rbp), %eax	# i, tmp147
	movslq	%eax, %rdx	# tmp147, tmp146
	movq	%rdx, %rax	# tmp146, tmp148
	salq	$3, %rax	#, tmp149
	subq	%rdx, %rax	# tmp146, tmp148
	salq	$2, %rax	#, tmp150
	leaq	animdefs(%rip), %rdx	#, tmp152
	addq	%rdx, %rax	# tmp152, tmp151
	addq	$13, %rax	#, _10
# p_spec.c:168: 	    if (W_CheckNumForName(animdefs[i].startname) == -1)
	.loc 1 168 10
	movq	%rax, %rdi	# _10,
	call	W_CheckNumForName@PLT	#
# p_spec.c:168: 	    if (W_CheckNumForName(animdefs[i].startname) == -1)
	.loc 1 168 9 discriminator 1
	cmpl	$-1, %eax	#, _11
	je	.L11	#,
# p_spec.c:171: 	    lastanim->picnum = R_FlatNumForName (animdefs[i].endname);
	.loc 1 171 54
	movl	-20(%rbp), %eax	# i, tmp154
	movslq	%eax, %rdx	# tmp154, tmp153
	movq	%rdx, %rax	# tmp153, tmp155
	salq	$3, %rax	#, tmp156
	subq	%rdx, %rax	# tmp153, tmp155
	salq	$2, %rax	#, tmp157
	leaq	animdefs(%rip), %rdx	#, tmp159
	addq	%rdx, %rax	# tmp159, tmp158
	addq	$4, %rax	#, _12
# p_spec.c:171: 	    lastanim->picnum = R_FlatNumForName (animdefs[i].endname);
	.loc 1 171 14
	movq	lastanim(%rip), %rbx	# lastanim, lastanim.2_13
# p_spec.c:171: 	    lastanim->picnum = R_FlatNumForName (animdefs[i].endname);
	.loc 1 171 25
	movq	%rax, %rdi	# _12,
	call	R_FlatNumForName@PLT	#
# p_spec.c:171: 	    lastanim->picnum = R_FlatNumForName (animdefs[i].endname);
	.loc 1 171 23 discriminator 1
	movl	%eax, 4(%rbx)	# _14, lastanim.2_13->picnum
# p_spec.c:172: 	    lastanim->basepic = R_FlatNumForName (animdefs[i].startname);
	.loc 1 172 55
	movl	-20(%rbp), %eax	# i, tmp161
	movslq	%eax, %rdx	# tmp161, tmp160
	movq	%rdx, %rax	# tmp160, tmp162
	salq	$3, %rax	#, tmp163
	subq	%rdx, %rax	# tmp160, tmp162
	salq	$2, %rax	#, tmp164
	leaq	animdefs(%rip), %rdx	#, tmp166
	addq	%rdx, %rax	# tmp166, tmp165
	addq	$13, %rax	#, _15
# p_spec.c:172: 	    lastanim->basepic = R_FlatNumForName (animdefs[i].startname);
	.loc 1 172 14
	movq	lastanim(%rip), %rbx	# lastanim, lastanim.3_16
# p_spec.c:172: 	    lastanim->basepic = R_FlatNumForName (animdefs[i].startname);
	.loc 1 172 26
	movq	%rax, %rdi	# _15,
	call	R_FlatNumForName@PLT	#
# p_spec.c:172: 	    lastanim->basepic = R_FlatNumForName (animdefs[i].startname);
	.loc 1 172 24 discriminator 1
	movl	%eax, 8(%rbx)	# _17, lastanim.3_16->basepic
.L6:
# p_spec.c:175: 	lastanim->istexture = animdefs[i].istexture;
	.loc 1 175 10
	movq	lastanim(%rip), %rcx	# lastanim, lastanim.4_18
# p_spec.c:175: 	lastanim->istexture = animdefs[i].istexture;
	.loc 1 175 35
	movl	-20(%rbp), %eax	# i, tmp168
	movslq	%eax, %rdx	# tmp168, tmp167
	movq	%rdx, %rax	# tmp167, tmp170
	salq	$3, %rax	#, tmp171
	subq	%rdx, %rax	# tmp167, tmp170
	salq	$2, %rax	#, tmp172
	movq	%rax, %rdx	# tmp170, tmp169
	leaq	animdefs(%rip), %rax	#, tmp173
	movl	(%rdx,%rax), %eax	# animdefs[i_36].istexture, _19
# p_spec.c:175: 	lastanim->istexture = animdefs[i].istexture;
	.loc 1 175 22
	movl	%eax, (%rcx)	# _19, lastanim.4_18->istexture
# p_spec.c:176: 	lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;
	.loc 1 176 30
	movq	lastanim(%rip), %rax	# lastanim, lastanim.5_20
	movl	4(%rax), %edx	# lastanim.5_20->picnum, _21
# p_spec.c:176: 	lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;
	.loc 1 176 49
	movq	lastanim(%rip), %rax	# lastanim, lastanim.6_22
	movl	8(%rax), %eax	# lastanim.6_22->basepic, _23
# p_spec.c:176: 	lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;
	.loc 1 176 39
	subl	%eax, %edx	# _23, _24
# p_spec.c:176: 	lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;
	.loc 1 176 10
	movq	lastanim(%rip), %rax	# lastanim, lastanim.7_25
# p_spec.c:176: 	lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;
	.loc 1 176 59
	addl	$1, %edx	#, _26
# p_spec.c:176: 	lastanim->numpics = lastanim->picnum - lastanim->basepic + 1;
	.loc 1 176 20
	movl	%edx, 12(%rax)	# _26, lastanim.7_25->numpics
# p_spec.c:178: 	if (lastanim->numpics < 2)
	.loc 1 178 14
	movq	lastanim(%rip), %rax	# lastanim, lastanim.8_27
	movl	12(%rax), %eax	# lastanim.8_27->numpics, _28
# p_spec.c:178: 	if (lastanim->numpics < 2)
	.loc 1 178 5
	cmpl	$1, %eax	#, _28
	jg	.L8	#,
# p_spec.c:181: 		     animdefs[i].endname);
	.loc 1 181 19
	movl	-20(%rbp), %eax	# i, tmp175
	movslq	%eax, %rdx	# tmp175, tmp174
	movq	%rdx, %rax	# tmp174, tmp176
	salq	$3, %rax	#, tmp177
	subq	%rdx, %rax	# tmp174, tmp176
	salq	$2, %rax	#, tmp178
	leaq	animdefs(%rip), %rdx	#, tmp180
	addq	%rdx, %rax	# tmp180, tmp179
	leaq	4(%rax), %rcx	#, _29
# p_spec.c:180: 		     animdefs[i].startname,
	.loc 1 180 19
	movl	-20(%rbp), %eax	# i, tmp182
	movslq	%eax, %rdx	# tmp182, tmp181
	movq	%rdx, %rax	# tmp181, tmp183
	salq	$3, %rax	#, tmp184
	subq	%rdx, %rax	# tmp181, tmp183
	salq	$2, %rax	#, tmp185
	leaq	animdefs(%rip), %rdx	#, tmp187
	addq	%rdx, %rax	# tmp187, tmp186
	addq	$13, %rax	#, _30
# p_spec.c:179: 	    I_Error ("P_InitPicAnims: bad cycle from %s to %s",
	.loc 1 179 6
	movq	%rcx, %rdx	# _29,
	movq	%rax, %rsi	# _30,
	leaq	.LC0(%rip), %rax	#, tmp188
	movq	%rax, %rdi	# tmp188,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L8:
# p_spec.c:183: 	lastanim->speed = animdefs[i].speed;
	.loc 1 183 10
	movq	lastanim(%rip), %rcx	# lastanim, lastanim.9_31
# p_spec.c:183: 	lastanim->speed = animdefs[i].speed;
	.loc 1 183 31
	movl	-20(%rbp), %eax	# i, tmp190
	movslq	%eax, %rdx	# tmp190, tmp189
	movq	%rdx, %rax	# tmp189, tmp192
	salq	$3, %rax	#, tmp193
	subq	%rdx, %rax	# tmp189, tmp192
	salq	$2, %rax	#, tmp194
	movq	%rax, %rdx	# tmp192, tmp191
	leaq	24+animdefs(%rip), %rax	#, tmp195
	movl	(%rdx,%rax), %eax	# animdefs[i_36].speed, _32
# p_spec.c:183: 	lastanim->speed = animdefs[i].speed;
	.loc 1 183 18
	movl	%eax, 16(%rcx)	# _32, lastanim.9_31->speed
# p_spec.c:184: 	lastanim++;
	.loc 1 184 10
	movq	lastanim(%rip), %rax	# lastanim, lastanim.10_33
	addq	$20, %rax	#, _34
	movq	%rax, lastanim(%rip)	# _34, lastanim
	jmp	.L5	#
.L10:
# p_spec.c:161: 		continue;	
	.loc 1 161 3
	nop	
	jmp	.L5	#
.L11:
# p_spec.c:169: 		continue;
	.loc 1 169 3
	nop	
.L5:
# p_spec.c:155:     for (i=0 ; animdefs[i].istexture != -1 ; i++)
	.loc 1 155 47 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L2:
# p_spec.c:155:     for (i=0 ; animdefs[i].istexture != -1 ; i++)
	.loc 1 155 27 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp197
	movslq	%eax, %rdx	# tmp197, tmp196
	movq	%rdx, %rax	# tmp196, tmp199
	salq	$3, %rax	#, tmp200
	subq	%rdx, %rax	# tmp196, tmp199
	salq	$2, %rax	#, tmp201
	movq	%rax, %rdx	# tmp199, tmp198
	leaq	animdefs(%rip), %rax	#, tmp202
	movl	(%rdx,%rax), %eax	# animdefs[i_36].istexture, _35
# p_spec.c:155:     for (i=0 ; animdefs[i].istexture != -1 ; i++)
	.loc 1 155 38 discriminator 1
	cmpl	$-1, %eax	#, _35
	jne	.L9	#,
# p_spec.c:187: }
	.loc 1 187 1
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	P_InitPicAnims, .-P_InitPicAnims
	.globl	getSide
	.type	getSide, @function
getSide:
.LFB7:
	.loc 1 208 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# currentSector, currentSector
	movl	%esi, -8(%rbp)	# line, line
	movl	%edx, -12(%rbp)	# side, side
# p_spec.c:209:     return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
	.loc 1 209 12
	movq	sides(%rip), %rcx	# sides, sides.11_1
# p_spec.c:209:     return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
	.loc 1 209 28
	movq	sectors(%rip), %rax	# sectors, sectors.12_2
	movl	-4(%rbp), %edx	# currentSector, tmp97
	movslq	%edx, %rdx	# tmp97, _3
	salq	$7, %rdx	#, _4
	addq	%rdx, %rax	# _4, _5
# p_spec.c:209:     return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
	.loc 1 209 43
	movq	120(%rax), %rax	# _5->lines, _6
# p_spec.c:209:     return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
	.loc 1 209 49
	movl	-8(%rbp), %edx	# line, tmp98
	movslq	%edx, %rdx	# tmp98, _7
	salq	$3, %rdx	#, _8
	addq	%rdx, %rax	# _8, _9
	movq	(%rax), %rax	# *_9, _10
# p_spec.c:209:     return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
	.loc 1 209 65
	movl	-12(%rbp), %edx	# side, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	addq	$8, %rdx	#, tmp101
	movzwl	14(%rax,%rdx,2), %eax	# _10->sidenum[side_17(D)], _11
	movswq	%ax, %rdx	# _11, _12
# p_spec.c:209:     return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
	.loc 1 209 18
	movq	%rdx, %rax	# _12, tmp102
	addq	%rax, %rax	# tmp102
	addq	%rdx, %rax	# _12, tmp102
	salq	$3, %rax	#, tmp103
# p_spec.c:209:     return &sides[ (sectors[currentSector].lines[line])->sidenum[side] ];
	.loc 1 209 12
	addq	%rcx, %rax	# sides.11_1, _18
# p_spec.c:210: }
	.loc 1 210 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	getSide, .-getSide
	.globl	getSector
	.type	getSector, @function
getSector:
.LFB8:
	.loc 1 224 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# currentSector, currentSector
	movl	%esi, -8(%rbp)	# line, line
	movl	%edx, -12(%rbp)	# side, side
# p_spec.c:225:     return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
	.loc 1 225 17
	movq	sides(%rip), %rcx	# sides, sides.13_1
# p_spec.c:225:     return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
	.loc 1 225 27
	movq	sectors(%rip), %rax	# sectors, sectors.14_2
	movl	-4(%rbp), %edx	# currentSector, tmp98
	movslq	%edx, %rdx	# tmp98, _3
	salq	$7, %rdx	#, _4
	addq	%rdx, %rax	# _4, _5
# p_spec.c:225:     return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
	.loc 1 225 42
	movq	120(%rax), %rax	# _5->lines, _6
# p_spec.c:225:     return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
	.loc 1 225 48
	movl	-8(%rbp), %edx	# line, tmp99
	movslq	%edx, %rdx	# tmp99, _7
	salq	$3, %rdx	#, _8
	addq	%rdx, %rax	# _8, _9
	movq	(%rax), %rax	# *_9, _10
# p_spec.c:225:     return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
	.loc 1 225 64
	movl	-12(%rbp), %edx	# side, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	addq	$8, %rdx	#, tmp102
	movzwl	14(%rax,%rdx,2), %eax	# _10->sidenum[side_18(D)], _11
	movswq	%ax, %rdx	# _11, _12
# p_spec.c:225:     return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
	.loc 1 225 17
	movq	%rdx, %rax	# _12, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# _12, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# sides.13_1, _14
# p_spec.c:225:     return sides[ (sectors[currentSector].lines[line])->sidenum[side] ].sector;
	.loc 1 225 72
	movq	16(%rax), %rax	# _14->sector, _19
# p_spec.c:226: }
	.loc 1 226 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	getSector, .-getSector
	.globl	twoSided
	.type	twoSided, @function
twoSided:
.LFB9:
	.loc 1 238 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# sector, sector
	movl	%esi, -8(%rbp)	# line, line
# p_spec.c:239:     return (sectors[sector].lines[line])->flags & ML_TWOSIDED;
	.loc 1 239 20
	movq	sectors(%rip), %rax	# sectors, sectors.15_1
	movl	-4(%rbp), %edx	# sector, tmp95
	movslq	%edx, %rdx	# tmp95, _2
	salq	$7, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:239:     return (sectors[sector].lines[line])->flags & ML_TWOSIDED;
	.loc 1 239 28
	movq	120(%rax), %rax	# _4->lines, _5
# p_spec.c:239:     return (sectors[sector].lines[line])->flags & ML_TWOSIDED;
	.loc 1 239 34
	movl	-8(%rbp), %edx	# line, tmp96
	movslq	%edx, %rdx	# tmp96, _6
	salq	$3, %rdx	#, _7
	addq	%rdx, %rax	# _7, _8
	movq	(%rax), %rax	# *_8, _9
# p_spec.c:239:     return (sectors[sector].lines[line])->flags & ML_TWOSIDED;
	.loc 1 239 41
	movzwl	24(%rax), %eax	# _9->flags, _10
# p_spec.c:239:     return (sectors[sector].lines[line])->flags & ML_TWOSIDED;
	.loc 1 239 49
	cwtl
	andl	$4, %eax	#, _15
# p_spec.c:240: }
	.loc 1 240 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	twoSided, .-twoSided
	.globl	getNextSector
	.type	getNextSector, @function
getNextSector:
.LFB10:
	.loc 1 254 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# line, line
	movq	%rsi, -16(%rbp)	# sec, sec
# p_spec.c:255:     if (!(line->flags & ML_TWOSIDED))
	.loc 1 255 15
	movq	-8(%rbp), %rax	# line, tmp88
	movzwl	24(%rax), %eax	# line_7(D)->flags, _1
# p_spec.c:255:     if (!(line->flags & ML_TWOSIDED))
	.loc 1 255 23
	cwtl
	andl	$4, %eax	#, _3
# p_spec.c:255:     if (!(line->flags & ML_TWOSIDED))
	.loc 1 255 8
	testl	%eax, %eax	# _3
	jne	.L19	#,
# p_spec.c:256: 	return NULL;
	.loc 1 256 9
	movl	$0, %eax	#, _5
	jmp	.L20	#
.L19:
# p_spec.c:258:     if (line->frontsector == sec)
	.loc 1 258 13
	movq	-8(%rbp), %rax	# line, tmp89
	movq	56(%rax), %rax	# line_7(D)->frontsector, _4
# p_spec.c:258:     if (line->frontsector == sec)
	.loc 1 258 8
	cmpq	%rax, -16(%rbp)	# _4, sec
	jne	.L21	#,
# p_spec.c:259: 	return line->backsector;
	.loc 1 259 13
	movq	-8(%rbp), %rax	# line, tmp90
	movq	64(%rax), %rax	# line_7(D)->backsector, _5
	jmp	.L20	#
.L21:
# p_spec.c:261:     return line->frontsector;
	.loc 1 261 16
	movq	-8(%rbp), %rax	# line, tmp91
	movq	56(%rax), %rax	# line_7(D)->frontsector, _5
.L20:
# p_spec.c:262: }
	.loc 1 262 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	getNextSector, .-getNextSector
	.globl	P_FindLowestFloorSurrounding
	.type	P_FindLowestFloorSurrounding, @function
P_FindLowestFloorSurrounding:
.LFB11:
	.loc 1 271 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# sec, sec
# p_spec.c:275:     fixed_t		floor = sec->floorheight;
	.loc 1 275 14
	movq	-40(%rbp), %rax	# sec, tmp90
	movl	(%rax), %eax	# sec_12(D)->floorheight, tmp91
	movl	%eax, -20(%rbp)	# tmp91, floor
# p_spec.c:277:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 277 11
	movl	$0, -24(%rbp)	#, i
# p_spec.c:277:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 277 5
	jmp	.L23	#
.L26:
# p_spec.c:279: 	check = sec->lines[i];
	.loc 1 279 13
	movq	-40(%rbp), %rax	# sec, tmp92
	movq	120(%rax), %rax	# sec_12(D)->lines, _1
# p_spec.c:279: 	check = sec->lines[i];
	.loc 1 279 20
	movl	-24(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:279: 	check = sec->lines[i];
	.loc 1 279 8
	movq	(%rax), %rax	# *_4, tmp94
	movq	%rax, -16(%rbp)	# tmp94, check
# p_spec.c:280: 	other = getNextSector(check,sec);
	.loc 1 280 10
	movq	-40(%rbp), %rdx	# sec, tmp95
	movq	-16(%rbp), %rax	# check, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	getNextSector	#
	movq	%rax, -8(%rbp)	# tmp97, other
# p_spec.c:282: 	if (!other)
	.loc 1 282 5
	cmpq	$0, -8(%rbp)	#, other
	je	.L28	#,
# p_spec.c:285: 	if (other->floorheight < floor)
	.loc 1 285 11
	movq	-8(%rbp), %rax	# other, tmp98
	movl	(%rax), %eax	# other_18->floorheight, _5
# p_spec.c:285: 	if (other->floorheight < floor)
	.loc 1 285 5
	cmpl	%eax, -20(%rbp)	# _5, floor
	jle	.L25	#,
# p_spec.c:286: 	    floor = other->floorheight;
	.loc 1 286 12
	movq	-8(%rbp), %rax	# other, tmp99
	movl	(%rax), %eax	# other_18->floorheight, tmp100
	movl	%eax, -20(%rbp)	# tmp100, floor
	jmp	.L25	#
.L28:
# p_spec.c:283: 	    continue;
	.loc 1 283 6
	nop	
.L25:
# p_spec.c:277:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 277 37 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L23:
# p_spec.c:277:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 277 22 discriminator 1
	movq	-40(%rbp), %rax	# sec, tmp101
	movl	112(%rax), %eax	# sec_12(D)->linecount, _6
# p_spec.c:277:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 277 17 discriminator 1
	cmpl	%eax, -24(%rbp)	# _6, i
	jl	.L26	#,
# p_spec.c:288:     return floor;
	.loc 1 288 12
	movl	-20(%rbp), %eax	# floor, _15
# p_spec.c:289: }
	.loc 1 289 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	P_FindLowestFloorSurrounding, .-P_FindLowestFloorSurrounding
	.globl	P_FindHighestFloorSurrounding
	.type	P_FindHighestFloorSurrounding, @function
P_FindHighestFloorSurrounding:
.LFB12:
	.loc 1 298 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# sec, sec
# p_spec.c:302:     fixed_t		floor = -500*FRACUNIT;
	.loc 1 302 14
	movl	$-32768000, -20(%rbp)	#, floor
# p_spec.c:304:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 304 11
	movl	$0, -24(%rbp)	#, i
# p_spec.c:304:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 304 5
	jmp	.L30	#
.L33:
# p_spec.c:306: 	check = sec->lines[i];
	.loc 1 306 13
	movq	-40(%rbp), %rax	# sec, tmp90
	movq	120(%rax), %rax	# sec_14(D)->lines, _1
# p_spec.c:306: 	check = sec->lines[i];
	.loc 1 306 20
	movl	-24(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:306: 	check = sec->lines[i];
	.loc 1 306 8
	movq	(%rax), %rax	# *_4, tmp92
	movq	%rax, -16(%rbp)	# tmp92, check
# p_spec.c:307: 	other = getNextSector(check,sec);
	.loc 1 307 10
	movq	-40(%rbp), %rdx	# sec, tmp93
	movq	-16(%rbp), %rax	# check, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	getNextSector	#
	movq	%rax, -8(%rbp)	# tmp95, other
# p_spec.c:309: 	if (!other)
	.loc 1 309 5
	cmpq	$0, -8(%rbp)	#, other
	je	.L35	#,
# p_spec.c:312: 	if (other->floorheight > floor)
	.loc 1 312 11
	movq	-8(%rbp), %rax	# other, tmp96
	movl	(%rax), %eax	# other_18->floorheight, _5
# p_spec.c:312: 	if (other->floorheight > floor)
	.loc 1 312 5
	cmpl	%eax, -20(%rbp)	# _5, floor
	jge	.L32	#,
# p_spec.c:313: 	    floor = other->floorheight;
	.loc 1 313 12
	movq	-8(%rbp), %rax	# other, tmp97
	movl	(%rax), %eax	# other_18->floorheight, tmp98
	movl	%eax, -20(%rbp)	# tmp98, floor
	jmp	.L32	#
.L35:
# p_spec.c:310: 	    continue;
	.loc 1 310 6
	nop	
.L32:
# p_spec.c:304:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 304 37 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L30:
# p_spec.c:304:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 304 22 discriminator 1
	movq	-40(%rbp), %rax	# sec, tmp99
	movl	112(%rax), %eax	# sec_14(D)->linecount, _6
# p_spec.c:304:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 304 17 discriminator 1
	cmpl	%eax, -24(%rbp)	# _6, i
	jl	.L33	#,
# p_spec.c:315:     return floor;
	.loc 1 315 12
	movl	-20(%rbp), %eax	# floor, _15
# p_spec.c:316: }
	.loc 1 316 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	P_FindHighestFloorSurrounding, .-P_FindHighestFloorSurrounding
	.section	.rodata
	.align 8
.LC1:
	.string	"Sector with more than 20 adjoining sectors\n"
	.text
	.globl	P_FindNextHighestFloor
	.type	P_FindNextHighestFloor, @function
P_FindNextHighestFloor:
.LFB13:
	.loc 1 332 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# sec, sec
	movl	%esi, -140(%rbp)	# currentheight, currentheight
# p_spec.c:332: {
	.loc 1 332 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.8533
	xorl	%eax, %eax	# tmp115
# p_spec.c:338:     fixed_t		height = currentheight;
	.loc 1 338 14
	movl	-140(%rbp), %eax	# currentheight, tmp94
	movl	%eax, -116(%rbp)	# tmp94, height
# p_spec.c:343:     for (i=0, h=0 ;i < sec->linecount ; i++)
	.loc 1 343 11
	movl	$0, -128(%rbp)	#, i
# p_spec.c:343:     for (i=0, h=0 ;i < sec->linecount ; i++)
	.loc 1 343 16
	movl	$0, -124(%rbp)	#, h
# p_spec.c:343:     for (i=0, h=0 ;i < sec->linecount ; i++)
	.loc 1 343 5
	jmp	.L37	#
.L42:
# p_spec.c:345: 	check = sec->lines[i];
	.loc 1 345 13
	movq	-136(%rbp), %rax	# sec, tmp95
	movq	120(%rax), %rax	# sec_29(D)->lines, _1
# p_spec.c:345: 	check = sec->lines[i];
	.loc 1 345 20
	movl	-128(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:345: 	check = sec->lines[i];
	.loc 1 345 8
	movq	(%rax), %rax	# *_4, tmp97
	movq	%rax, -112(%rbp)	# tmp97, check
# p_spec.c:346: 	other = getNextSector(check,sec);
	.loc 1 346 10
	movq	-136(%rbp), %rdx	# sec, tmp98
	movq	-112(%rbp), %rax	# check, tmp99
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	getNextSector	#
	movq	%rax, -104(%rbp)	# tmp100, other
# p_spec.c:348: 	if (!other)
	.loc 1 348 5
	cmpq	$0, -104(%rbp)	#, other
	je	.L50	#,
# p_spec.c:351: 	if (other->floorheight > height)
	.loc 1 351 11
	movq	-104(%rbp), %rax	# other, tmp101
	movl	(%rax), %eax	# other_32->floorheight, _5
# p_spec.c:351: 	if (other->floorheight > height)
	.loc 1 351 5
	cmpl	%eax, -116(%rbp)	# _5, height
	jge	.L40	#,
# p_spec.c:352: 	    heightlist[h++] = other->floorheight;
	.loc 1 352 18
	movl	-124(%rbp), %eax	# h, h.16_6
	leal	1(%rax), %edx	#, tmp102
	movl	%edx, -124(%rbp)	# tmp102, h
# p_spec.c:352: 	    heightlist[h++] = other->floorheight;
	.loc 1 352 29
	movq	-104(%rbp), %rdx	# other, tmp103
	movl	(%rdx), %edx	# other_32->floorheight, _7
# p_spec.c:352: 	    heightlist[h++] = other->floorheight;
	.loc 1 352 22
	cltq
	movl	%edx, -96(%rbp,%rax,4)	# _7, heightlist[h.16_6]
.L40:
# p_spec.c:355: 	if ( h >= MAX_ADJOINING_SECTORS )
	.loc 1 355 5
	cmpl	$19, -124(%rbp)	#, h
	jle	.L39	#,
# p_spec.c:357: 	    fprintf( stderr,
	.loc 1 357 6
	movq	stderr(%rip), %rax	# stderr, stderr.17_8
	movq	%rax, %rcx	# stderr.17_8,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC1(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	fwrite@PLT	#
# p_spec.c:359: 	    break;
	.loc 1 359 6
	jmp	.L41	#
.L50:
# p_spec.c:349: 	    continue;
	.loc 1 349 6
	nop	
.L39:
# p_spec.c:343:     for (i=0, h=0 ;i < sec->linecount ; i++)
	.loc 1 343 42 discriminator 2
	addl	$1, -128(%rbp)	#, i
.L37:
# p_spec.c:343:     for (i=0, h=0 ;i < sec->linecount ; i++)
	.loc 1 343 27 discriminator 1
	movq	-136(%rbp), %rax	# sec, tmp106
	movl	112(%rax), %eax	# sec_29(D)->linecount, _9
# p_spec.c:343:     for (i=0, h=0 ;i < sec->linecount ; i++)
	.loc 1 343 22 discriminator 1
	cmpl	%eax, -128(%rbp)	# _9, i
	jl	.L42	#,
.L41:
# p_spec.c:364:     if (!h)
	.loc 1 364 8
	cmpl	$0, -124(%rbp)	#, h
	jne	.L43	#,
# p_spec.c:365: 	return currentheight;
	.loc 1 365 9
	movl	-140(%rbp), %eax	# currentheight, _19
	jmp	.L48	#
.L43:
# p_spec.c:367:     min = heightlist[0];
	.loc 1 367 9
	movl	-96(%rbp), %eax	# heightlist[0], tmp107
	movl	%eax, -120(%rbp)	# tmp107, min
# p_spec.c:370:     for (i = 1;i < h;i++)
	.loc 1 370 12
	movl	$1, -128(%rbp)	#, i
# p_spec.c:370:     for (i = 1;i < h;i++)
	.loc 1 370 5
	jmp	.L45	#
.L47:
# p_spec.c:371: 	if (heightlist[i] < min)
	.loc 1 371 16
	movl	-128(%rbp), %eax	# i, tmp109
	cltq
	movl	-96(%rbp,%rax,4), %eax	# heightlist[i_12], _10
# p_spec.c:371: 	if (heightlist[i] < min)
	.loc 1 371 5
	cmpl	%eax, -120(%rbp)	# _10, min
	jle	.L46	#,
# p_spec.c:372: 	    min = heightlist[i];
	.loc 1 372 10
	movl	-128(%rbp), %eax	# i, tmp111
	cltq
	movl	-96(%rbp,%rax,4), %eax	# heightlist[i_12], tmp112
	movl	%eax, -120(%rbp)	# tmp112, min
.L46:
# p_spec.c:370:     for (i = 1;i < h;i++)
	.loc 1 370 23 discriminator 2
	addl	$1, -128(%rbp)	#, i
.L45:
# p_spec.c:370:     for (i = 1;i < h;i++)
	.loc 1 370 18 discriminator 1
	movl	-128(%rbp), %eax	# i, tmp113
	cmpl	-124(%rbp), %eax	# h, tmp113
	jl	.L47	#,
# p_spec.c:374:     return min;
	.loc 1 374 12
	movl	-120(%rbp), %eax	# min, _19
.L48:
# p_spec.c:375: }
	.loc 1 375 1
	movq	-8(%rbp), %rdx	# D.8533, tmp116
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	je	.L49	#,
	call	__stack_chk_fail@PLT	#
.L49:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	P_FindNextHighestFloor, .-P_FindNextHighestFloor
	.globl	P_FindLowestCeilingSurrounding
	.type	P_FindLowestCeilingSurrounding, @function
P_FindLowestCeilingSurrounding:
.LFB14:
	.loc 1 383 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# sec, sec
# p_spec.c:387:     fixed_t		height = MAXINT;
	.loc 1 387 14
	movl	$2147483647, -20(%rbp)	#, height
# p_spec.c:389:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 389 11
	movl	$0, -24(%rbp)	#, i
# p_spec.c:389:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 389 5
	jmp	.L52	#
.L55:
# p_spec.c:391: 	check = sec->lines[i];
	.loc 1 391 13
	movq	-40(%rbp), %rax	# sec, tmp90
	movq	120(%rax), %rax	# sec_14(D)->lines, _1
# p_spec.c:391: 	check = sec->lines[i];
	.loc 1 391 20
	movl	-24(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:391: 	check = sec->lines[i];
	.loc 1 391 8
	movq	(%rax), %rax	# *_4, tmp92
	movq	%rax, -16(%rbp)	# tmp92, check
# p_spec.c:392: 	other = getNextSector(check,sec);
	.loc 1 392 10
	movq	-40(%rbp), %rdx	# sec, tmp93
	movq	-16(%rbp), %rax	# check, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	getNextSector	#
	movq	%rax, -8(%rbp)	# tmp95, other
# p_spec.c:394: 	if (!other)
	.loc 1 394 5
	cmpq	$0, -8(%rbp)	#, other
	je	.L57	#,
# p_spec.c:397: 	if (other->ceilingheight < height)
	.loc 1 397 11
	movq	-8(%rbp), %rax	# other, tmp96
	movl	4(%rax), %eax	# other_18->ceilingheight, _5
# p_spec.c:397: 	if (other->ceilingheight < height)
	.loc 1 397 5
	cmpl	%eax, -20(%rbp)	# _5, height
	jle	.L54	#,
# p_spec.c:398: 	    height = other->ceilingheight;
	.loc 1 398 13
	movq	-8(%rbp), %rax	# other, tmp97
	movl	4(%rax), %eax	# other_18->ceilingheight, tmp98
	movl	%eax, -20(%rbp)	# tmp98, height
	jmp	.L54	#
.L57:
# p_spec.c:395: 	    continue;
	.loc 1 395 6
	nop	
.L54:
# p_spec.c:389:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 389 37 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L52:
# p_spec.c:389:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 389 22 discriminator 1
	movq	-40(%rbp), %rax	# sec, tmp99
	movl	112(%rax), %eax	# sec_14(D)->linecount, _6
# p_spec.c:389:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 389 17 discriminator 1
	cmpl	%eax, -24(%rbp)	# _6, i
	jl	.L55	#,
# p_spec.c:400:     return height;
	.loc 1 400 12
	movl	-20(%rbp), %eax	# height, _15
# p_spec.c:401: }
	.loc 1 401 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	P_FindLowestCeilingSurrounding, .-P_FindLowestCeilingSurrounding
	.globl	P_FindHighestCeilingSurrounding
	.type	P_FindHighestCeilingSurrounding, @function
P_FindHighestCeilingSurrounding:
.LFB15:
	.loc 1 408 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# sec, sec
# p_spec.c:412:     fixed_t	height = 0;
	.loc 1 412 13
	movl	$0, -20(%rbp)	#, height
# p_spec.c:414:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 414 11
	movl	$0, -24(%rbp)	#, i
# p_spec.c:414:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 414 5
	jmp	.L59	#
.L62:
# p_spec.c:416: 	check = sec->lines[i];
	.loc 1 416 13
	movq	-40(%rbp), %rax	# sec, tmp90
	movq	120(%rax), %rax	# sec_14(D)->lines, _1
# p_spec.c:416: 	check = sec->lines[i];
	.loc 1 416 20
	movl	-24(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:416: 	check = sec->lines[i];
	.loc 1 416 8
	movq	(%rax), %rax	# *_4, tmp92
	movq	%rax, -16(%rbp)	# tmp92, check
# p_spec.c:417: 	other = getNextSector(check,sec);
	.loc 1 417 10
	movq	-40(%rbp), %rdx	# sec, tmp93
	movq	-16(%rbp), %rax	# check, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	getNextSector	#
	movq	%rax, -8(%rbp)	# tmp95, other
# p_spec.c:419: 	if (!other)
	.loc 1 419 5
	cmpq	$0, -8(%rbp)	#, other
	je	.L64	#,
# p_spec.c:422: 	if (other->ceilingheight > height)
	.loc 1 422 11
	movq	-8(%rbp), %rax	# other, tmp96
	movl	4(%rax), %eax	# other_18->ceilingheight, _5
# p_spec.c:422: 	if (other->ceilingheight > height)
	.loc 1 422 5
	cmpl	%eax, -20(%rbp)	# _5, height
	jge	.L61	#,
# p_spec.c:423: 	    height = other->ceilingheight;
	.loc 1 423 13
	movq	-8(%rbp), %rax	# other, tmp97
	movl	4(%rax), %eax	# other_18->ceilingheight, tmp98
	movl	%eax, -20(%rbp)	# tmp98, height
	jmp	.L61	#
.L64:
# p_spec.c:420: 	    continue;
	.loc 1 420 6
	nop	
.L61:
# p_spec.c:414:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 414 37 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L59:
# p_spec.c:414:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 414 22 discriminator 1
	movq	-40(%rbp), %rax	# sec, tmp99
	movl	112(%rax), %eax	# sec_14(D)->linecount, _6
# p_spec.c:414:     for (i=0 ;i < sec->linecount ; i++)
	.loc 1 414 17 discriminator 1
	cmpl	%eax, -24(%rbp)	# _6, i
	jl	.L62	#,
# p_spec.c:425:     return height;
	.loc 1 425 12
	movl	-20(%rbp), %eax	# height, _15
# p_spec.c:426: }
	.loc 1 426 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	P_FindHighestCeilingSurrounding, .-P_FindHighestCeilingSurrounding
	.globl	P_FindSectorFromLineTag
	.type	P_FindSectorFromLineTag, @function
P_FindSectorFromLineTag:
.LFB16:
	.loc 1 437 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# line, line
	movl	%esi, -28(%rbp)	# start, start
# p_spec.c:440:     for (i=start+1;i<numsectors;i++)
	.loc 1 440 11
	movl	-28(%rbp), %eax	# start, tmp94
	addl	$1, %eax	#, tmp93
	movl	%eax, -4(%rbp)	# tmp93, i
# p_spec.c:440:     for (i=start+1;i<numsectors;i++)
	.loc 1 440 5
	jmp	.L66	#
.L69:
# p_spec.c:441: 	if (sectors[i].tag == line->tag)
	.loc 1 441 13
	movq	sectors(%rip), %rax	# sectors, sectors.18_1
	movl	-4(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, _2
	salq	$7, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:441: 	if (sectors[i].tag == line->tag)
	.loc 1 441 16
	movzwl	16(%rax), %edx	# _4->tag, _5
# p_spec.c:441: 	if (sectors[i].tag == line->tag)
	.loc 1 441 28
	movq	-24(%rbp), %rax	# line, tmp96
	movzwl	28(%rax), %eax	# line_14(D)->tag, _6
# p_spec.c:441: 	if (sectors[i].tag == line->tag)
	.loc 1 441 5
	cmpw	%ax, %dx	# _6, _5
	jne	.L67	#,
# p_spec.c:442: 	    return i;
	.loc 1 442 13
	movl	-4(%rbp), %eax	# i, _9
	jmp	.L68	#
.L67:
# p_spec.c:440:     for (i=start+1;i<numsectors;i++)
	.loc 1 440 34 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L66:
# p_spec.c:440:     for (i=start+1;i<numsectors;i++)
	.loc 1 440 21 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.19_7
	cmpl	%eax, -4(%rbp)	# numsectors.19_7, i
	jl	.L69	#,
# p_spec.c:444:     return -1;
	.loc 1 444 12
	movl	$-1, %eax	#, _9
.L68:
# p_spec.c:445: }
	.loc 1 445 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	P_FindSectorFromLineTag, .-P_FindSectorFromLineTag
	.globl	P_FindMinSurroundingLight
	.type	P_FindMinSurroundingLight, @function
P_FindMinSurroundingLight:
.LFB17:
	.loc 1 457 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sector, sector
	movl	%esi, -44(%rbp)	# max, max
# p_spec.c:463:     min = max;
	.loc 1 463 9
	movl	-44(%rbp), %eax	# max, tmp92
	movl	%eax, -20(%rbp)	# tmp92, min
# p_spec.c:464:     for (i=0 ; i < sector->linecount ; i++)
	.loc 1 464 11
	movl	$0, -24(%rbp)	#, i
# p_spec.c:464:     for (i=0 ; i < sector->linecount ; i++)
	.loc 1 464 5
	jmp	.L71	#
.L74:
# p_spec.c:466: 	line = sector->lines[i];
	.loc 1 466 15
	movq	-40(%rbp), %rax	# sector, tmp93
	movq	120(%rax), %rax	# sector_17(D)->lines, _1
# p_spec.c:466: 	line = sector->lines[i];
	.loc 1 466 22
	movl	-24(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_spec.c:466: 	line = sector->lines[i];
	.loc 1 466 7
	movq	(%rax), %rax	# *_4, tmp95
	movq	%rax, -16(%rbp)	# tmp95, line
# p_spec.c:467: 	check = getNextSector(line,sector);
	.loc 1 467 10
	movq	-40(%rbp), %rdx	# sector, tmp96
	movq	-16(%rbp), %rax	# line, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	getNextSector	#
	movq	%rax, -8(%rbp)	# tmp98, check
# p_spec.c:469: 	if (!check)
	.loc 1 469 5
	cmpq	$0, -8(%rbp)	#, check
	je	.L76	#,
# p_spec.c:472: 	if (check->lightlevel < min)
	.loc 1 472 11
	movq	-8(%rbp), %rax	# check, tmp99
	movzwl	12(%rax), %eax	# check_21->lightlevel, _5
	cwtl
# p_spec.c:472: 	if (check->lightlevel < min)
	.loc 1 472 5
	cmpl	%eax, -20(%rbp)	# _6, min
	jle	.L73	#,
# p_spec.c:473: 	    min = check->lightlevel;
	.loc 1 473 17
	movq	-8(%rbp), %rax	# check, tmp100
	movzwl	12(%rax), %eax	# check_21->lightlevel, _7
# p_spec.c:473: 	    min = check->lightlevel;
	.loc 1 473 10
	cwtl
	movl	%eax, -20(%rbp)	# tmp101, min
	jmp	.L73	#
.L76:
# p_spec.c:470: 	    continue;
	.loc 1 470 6
	nop	
.L73:
# p_spec.c:464:     for (i=0 ; i < sector->linecount ; i++)
	.loc 1 464 41 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L71:
# p_spec.c:464:     for (i=0 ; i < sector->linecount ; i++)
	.loc 1 464 26 discriminator 1
	movq	-40(%rbp), %rax	# sector, tmp102
	movl	112(%rax), %eax	# sector_17(D)->linecount, _8
# p_spec.c:464:     for (i=0 ; i < sector->linecount ; i++)
	.loc 1 464 18 discriminator 1
	cmpl	%eax, -24(%rbp)	# _8, i
	jl	.L74	#,
# p_spec.c:475:     return min;
	.loc 1 475 12
	movl	-20(%rbp), %eax	# min, _18
# p_spec.c:476: }
	.loc 1 476 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	P_FindMinSurroundingLight, .-P_FindMinSurroundingLight
	.globl	P_CrossSpecialLine
	.type	P_CrossSpecialLine, @function
P_CrossSpecialLine:
.LFB18:
	.loc 1 496 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# linenum, linenum
	movl	%esi, -24(%rbp)	# side, side
	movq	%rdx, -32(%rbp)	# thing, thing
# p_spec.c:500:     line = &lines[linenum];
	.loc 1 500 12
	movq	lines(%rip), %rcx	# lines, lines.20_1
# p_spec.c:500:     line = &lines[linenum];
	.loc 1 500 18
	movl	-20(%rbp), %eax	# linenum, tmp103
	movslq	%eax, %rdx	# tmp103, _2
	movq	%rdx, %rax	# _2, tmp104
	salq	$2, %rax	#, tmp104
	addq	%rdx, %rax	# _2, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# _2, tmp104
	salq	$3, %rax	#, tmp105
# p_spec.c:500:     line = &lines[linenum];
	.loc 1 500 10
	addq	%rcx, %rax	# lines.20_1, tmp106
	movq	%rax, -8(%rbp)	# tmp106, line
# p_spec.c:503:     if (!thing->player)
	.loc 1 503 15
	movq	-32(%rbp), %rax	# thing, tmp107
	movq	192(%rax), %rax	# thing_19(D)->player, _4
# p_spec.c:503:     if (!thing->player)
	.loc 1 503 8
	testq	%rax, %rax	# _4
	jne	.L78	#,
# p_spec.c:506: 	switch(thing->type)
	.loc 1 506 14
	movq	-32(%rbp), %rax	# thing, tmp108
	movl	128(%rax), %eax	# thing_19(D)->type, _5
# p_spec.c:506: 	switch(thing->type)
	.loc 1 506 2
	cmpl	$16, %eax	#, _5
	je	.L163	#,
	cmpl	$16, %eax	#, _5
	jb	.L164	#,
	subl	$31, %eax	#, _134
	cmpl	$4, %eax	#, _134
	jbe	.L163	#,
.L164:
# p_spec.c:517: 	  default: break;
	.loc 1 517 13
	nop	
# p_spec.c:520: 	ok = 0;
	.loc 1 520 5
	movl	$0, -12(%rbp)	#, ok
# p_spec.c:521: 	switch(line->special)
	.loc 1 521 13
	movq	-8(%rbp), %rax	# line, tmp109
	movzwl	26(%rax), %eax	# line_18->special, _6
	cwtl
# p_spec.c:521: 	switch(line->special)
	.loc 1 521 2
	cmpl	$39, %eax	#, _7
	jg	.L82	#,
	cmpl	$4, %eax	#, _7
	jge	.L83	#,
	jmp	.L84	#
.L86:
	subl	$88, %eax	#, _140
	movabsq	$412316860929, %rdx	#, tmp110
	movl	%eax, %ecx	# _140, tmp241
	shrq	%cl, %rdx	# tmp241, tmp110
	movq	%rdx, %rax	# tmp110, _141
	andl	$1, %eax	#, _142
	testq	%rax, %rax	# _142
	setne	%al	#, _143
	testb	%al, %al	# _143
	jne	.L85	#,
	jmp	.L84	#
.L83:
	movl	%eax, %edx	# _7, _135
	movabsq	$549755814928, %rax	#, tmp111
	movl	%edx, %ecx	# _135, tmp242
	shrq	%cl, %rax	# tmp242, _136
	andl	$1, %eax	#, _137
	testq	%rax, %rax	# _137
	setne	%al	#, _138
	testb	%al, %al	# _138
	jne	.L85	#,
	jmp	.L84	#
.L82:
	cmpl	$126, %eax	#, _7
	jg	.L84	#,
	cmpl	$88, %eax	#, _7
	jge	.L86	#,
	jmp	.L84	#
.L85:
# p_spec.c:530: 	    ok = 1;
	.loc 1 530 9
	movl	$1, -12(%rbp)	#, ok
# p_spec.c:531: 	    break;
	.loc 1 531 6
	nop	
.L84:
# p_spec.c:533: 	if (!ok)
	.loc 1 533 5
	cmpl	$0, -12(%rbp)	#, ok
	je	.L165	#,
.L78:
# p_spec.c:539:     switch (line->special)
	.loc 1 539 17
	movq	-8(%rbp), %rax	# line, tmp112
	movzwl	26(%rax), %eax	# line_18->special, _8
	cwtl
# p_spec.c:539:     switch (line->special)
	.loc 1 539 5
	cmpl	$141, %eax	#, _9
	ja	.L77	#,
	movl	%eax, %eax	# _9, tmp113
	leaq	0(,%rax,4), %rdx	#, tmp114
	leaq	.L88(%rip), %rax	#, tmp115
	movl	(%rdx,%rax), %eax	#, tmp116
	cltq
	leaq	.L88(%rip), %rdx	#, tmp119
	addq	%rdx, %rax	# tmp119, tmp118
	notrack jmp	*%rax	# tmp118
	.section	.rodata
	.align 4
	.align 4
.L88:
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L159-.L88
	.long	.L158-.L88
	.long	.L157-.L88
	.long	.L156-.L88
	.long	.L155-.L88
	.long	.L77-.L88
	.long	.L154-.L88
	.long	.L77-.L88
	.long	.L153-.L88
	.long	.L77-.L88
	.long	.L152-.L88
	.long	.L151-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L150-.L88
	.long	.L149-.L88
	.long	.L77-.L88
	.long	.L148-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L147-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L146-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L145-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L144-.L88
	.long	.L143-.L88
	.long	.L142-.L88
	.long	.L141-.L88
	.long	.L140-.L88
	.long	.L139-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L138-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L137-.L88
	.long	.L136-.L88
	.long	.L135-.L88
	.long	.L77-.L88
	.long	.L134-.L88
	.long	.L133-.L88
	.long	.L132-.L88
	.long	.L131-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L130-.L88
	.long	.L129-.L88
	.long	.L128-.L88
	.long	.L127-.L88
	.long	.L126-.L88
	.long	.L125-.L88
	.long	.L77-.L88
	.long	.L124-.L88
	.long	.L123-.L88
	.long	.L122-.L88
	.long	.L121-.L88
	.long	.L120-.L88
	.long	.L119-.L88
	.long	.L77-.L88
	.long	.L118-.L88
	.long	.L117-.L88
	.long	.L116-.L88
	.long	.L115-.L88
	.long	.L114-.L88
	.long	.L113-.L88
	.long	.L112-.L88
	.long	.L111-.L88
	.long	.L110-.L88
	.long	.L109-.L88
	.long	.L108-.L88
	.long	.L107-.L88
	.long	.L106-.L88
	.long	.L77-.L88
	.long	.L105-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L104-.L88
	.long	.L103-.L88
	.long	.L102-.L88
	.long	.L101-.L88
	.long	.L100-.L88
	.long	.L99-.L88
	.long	.L98-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L97-.L88
	.long	.L96-.L88
	.long	.L95-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L94-.L88
	.long	.L93-.L88
	.long	.L92-.L88
	.long	.L77-.L88
	.long	.L91-.L88
	.long	.L90-.L88
	.long	.L89-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L77-.L88
	.long	.L87-.L88
	.text
.L159:
# p_spec.c:545: 	EV_DoDoor(line,open);
	.loc 1 545 2
	movq	-8(%rbp), %rax	# line, tmp120
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	EV_DoDoor@PLT	#
# p_spec.c:546: 	line->special = 0;
	.loc 1 546 16
	movq	-8(%rbp), %rax	# line, tmp121
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:547: 	break;
	.loc 1 547 2
	jmp	.L77	#
.L158:
# p_spec.c:551: 	EV_DoDoor(line,close);
	.loc 1 551 2
	movq	-8(%rbp), %rax	# line, tmp122
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	EV_DoDoor@PLT	#
# p_spec.c:552: 	line->special = 0;
	.loc 1 552 16
	movq	-8(%rbp), %rax	# line, tmp123
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:553: 	break;
	.loc 1 553 2
	jmp	.L77	#
.L157:
# p_spec.c:557: 	EV_DoDoor(line,normal);
	.loc 1 557 2
	movq	-8(%rbp), %rax	# line, tmp124
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	EV_DoDoor@PLT	#
# p_spec.c:558: 	line->special = 0;
	.loc 1 558 16
	movq	-8(%rbp), %rax	# line, tmp125
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:559: 	break;
	.loc 1 559 2
	jmp	.L77	#
.L156:
# p_spec.c:563: 	EV_DoFloor(line,raiseFloor);
	.loc 1 563 2
	movq	-8(%rbp), %rax	# line, tmp126
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	EV_DoFloor@PLT	#
# p_spec.c:564: 	line->special = 0;
	.loc 1 564 16
	movq	-8(%rbp), %rax	# line, tmp127
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:565: 	break;
	.loc 1 565 2
	jmp	.L77	#
.L155:
# p_spec.c:569: 	EV_DoCeiling(line,fastCrushAndRaise);
	.loc 1 569 2
	movq	-8(%rbp), %rax	# line, tmp128
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	EV_DoCeiling@PLT	#
# p_spec.c:570: 	line->special = 0;
	.loc 1 570 16
	movq	-8(%rbp), %rax	# line, tmp129
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:571: 	break;
	.loc 1 571 2
	jmp	.L77	#
.L154:
# p_spec.c:575: 	EV_BuildStairs(line,build8);
	.loc 1 575 2
	movq	-8(%rbp), %rax	# line, tmp130
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	EV_BuildStairs@PLT	#
# p_spec.c:576: 	line->special = 0;
	.loc 1 576 16
	movq	-8(%rbp), %rax	# line, tmp131
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:577: 	break;
	.loc 1 577 2
	jmp	.L77	#
.L153:
# p_spec.c:581: 	EV_DoPlat(line,downWaitUpStay,0);
	.loc 1 581 2
	movq	-8(%rbp), %rax	# line, tmp132
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	EV_DoPlat@PLT	#
# p_spec.c:582: 	line->special = 0;
	.loc 1 582 16
	movq	-8(%rbp), %rax	# line, tmp133
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:583: 	break;
	.loc 1 583 2
	jmp	.L77	#
.L152:
# p_spec.c:587: 	EV_LightTurnOn(line,0);
	.loc 1 587 2
	movq	-8(%rbp), %rax	# line, tmp134
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	EV_LightTurnOn@PLT	#
# p_spec.c:588: 	line->special = 0;
	.loc 1 588 16
	movq	-8(%rbp), %rax	# line, tmp135
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:589: 	break;
	.loc 1 589 2
	jmp	.L77	#
.L151:
# p_spec.c:593: 	EV_LightTurnOn(line,255);
	.loc 1 593 2
	movq	-8(%rbp), %rax	# line, tmp136
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	EV_LightTurnOn@PLT	#
# p_spec.c:594: 	line->special = 0;
	.loc 1 594 16
	movq	-8(%rbp), %rax	# line, tmp137
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:595: 	break;
	.loc 1 595 2
	jmp	.L77	#
.L150:
# p_spec.c:599: 	EV_DoDoor(line,close30ThenOpen);
	.loc 1 599 2
	movq	-8(%rbp), %rax	# line, tmp138
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	EV_DoDoor@PLT	#
# p_spec.c:600: 	line->special = 0;
	.loc 1 600 16
	movq	-8(%rbp), %rax	# line, tmp139
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:601: 	break;
	.loc 1 601 2
	jmp	.L77	#
.L149:
# p_spec.c:605: 	EV_StartLightStrobing(line);
	.loc 1 605 2
	movq	-8(%rbp), %rax	# line, tmp140
	movq	%rax, %rdi	# tmp140,
	call	EV_StartLightStrobing@PLT	#
# p_spec.c:606: 	line->special = 0;
	.loc 1 606 16
	movq	-8(%rbp), %rax	# line, tmp141
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:607: 	break;
	.loc 1 607 2
	jmp	.L77	#
.L148:
# p_spec.c:611: 	EV_DoFloor(line,lowerFloor);
	.loc 1 611 2
	movq	-8(%rbp), %rax	# line, tmp142
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	EV_DoFloor@PLT	#
# p_spec.c:612: 	line->special = 0;
	.loc 1 612 16
	movq	-8(%rbp), %rax	# line, tmp143
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:613: 	break;
	.loc 1 613 2
	jmp	.L77	#
.L147:
# p_spec.c:617: 	EV_DoPlat(line,raiseToNearestAndChange,0);
	.loc 1 617 2
	movq	-8(%rbp), %rax	# line, tmp144
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	EV_DoPlat@PLT	#
# p_spec.c:618: 	line->special = 0;
	.loc 1 618 16
	movq	-8(%rbp), %rax	# line, tmp145
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:619: 	break;
	.loc 1 619 2
	jmp	.L77	#
.L146:
# p_spec.c:623: 	EV_DoCeiling(line,crushAndRaise);
	.loc 1 623 2
	movq	-8(%rbp), %rax	# line, tmp146
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	EV_DoCeiling@PLT	#
# p_spec.c:624: 	line->special = 0;
	.loc 1 624 16
	movq	-8(%rbp), %rax	# line, tmp147
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:625: 	break;
	.loc 1 625 2
	jmp	.L77	#
.L145:
# p_spec.c:630: 	EV_DoFloor(line,raiseToTexture);
	.loc 1 630 2
	movq	-8(%rbp), %rax	# line, tmp148
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	EV_DoFloor@PLT	#
# p_spec.c:631: 	line->special = 0;
	.loc 1 631 16
	movq	-8(%rbp), %rax	# line, tmp149
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:632: 	break;
	.loc 1 632 2
	jmp	.L77	#
.L144:
# p_spec.c:636: 	EV_LightTurnOn(line,35);
	.loc 1 636 2
	movq	-8(%rbp), %rax	# line, tmp150
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	EV_LightTurnOn@PLT	#
# p_spec.c:637: 	line->special = 0;
	.loc 1 637 16
	movq	-8(%rbp), %rax	# line, tmp151
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:638: 	break;
	.loc 1 638 2
	jmp	.L77	#
.L143:
# p_spec.c:642: 	EV_DoFloor(line,turboLower);
	.loc 1 642 2
	movq	-8(%rbp), %rax	# line, tmp152
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	EV_DoFloor@PLT	#
# p_spec.c:643: 	line->special = 0;
	.loc 1 643 16
	movq	-8(%rbp), %rax	# line, tmp153
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:644: 	break;
	.loc 1 644 2
	jmp	.L77	#
.L142:
# p_spec.c:648: 	EV_DoFloor(line,lowerAndChange);
	.loc 1 648 2
	movq	-8(%rbp), %rax	# line, tmp154
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	EV_DoFloor@PLT	#
# p_spec.c:649: 	line->special = 0;
	.loc 1 649 16
	movq	-8(%rbp), %rax	# line, tmp155
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:650: 	break;
	.loc 1 650 2
	jmp	.L77	#
.L141:
# p_spec.c:654: 	EV_DoFloor( line, lowerFloorToLowest );
	.loc 1 654 2
	movq	-8(%rbp), %rax	# line, tmp156
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	EV_DoFloor@PLT	#
# p_spec.c:655: 	line->special = 0;
	.loc 1 655 16
	movq	-8(%rbp), %rax	# line, tmp157
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:656: 	break;
	.loc 1 656 2
	jmp	.L77	#
.L140:
# p_spec.c:660: 	EV_Teleport( line, side, thing );
	.loc 1 660 2
	movq	-32(%rbp), %rdx	# thing, tmp158
	movl	-24(%rbp), %ecx	# side, tmp159
	movq	-8(%rbp), %rax	# line, tmp160
	movl	%ecx, %esi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	EV_Teleport@PLT	#
# p_spec.c:661: 	line->special = 0;
	.loc 1 661 16
	movq	-8(%rbp), %rax	# line, tmp161
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:662: 	break;
	.loc 1 662 2
	jmp	.L77	#
.L139:
# p_spec.c:666: 	EV_DoCeiling( line, raiseToHighest );
	.loc 1 666 2
	movq	-8(%rbp), %rax	# line, tmp162
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	EV_DoCeiling@PLT	#
# p_spec.c:667: 	EV_DoFloor( line, lowerFloorToLowest );
	.loc 1 667 2
	movq	-8(%rbp), %rax	# line, tmp163
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp163,
	call	EV_DoFloor@PLT	#
# p_spec.c:668: 	line->special = 0;
	.loc 1 668 16
	movq	-8(%rbp), %rax	# line, tmp164
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:669: 	break;
	.loc 1 669 2
	jmp	.L77	#
.L138:
# p_spec.c:673: 	EV_DoCeiling( line, lowerAndCrush );
	.loc 1 673 2
	movq	-8(%rbp), %rax	# line, tmp165
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	EV_DoCeiling@PLT	#
# p_spec.c:674: 	line->special = 0;
	.loc 1 674 16
	movq	-8(%rbp), %rax	# line, tmp166
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:675: 	break;
	.loc 1 675 2
	jmp	.L77	#
.L137:
# p_spec.c:679: 	G_ExitLevel ();
	.loc 1 679 2
	call	G_ExitLevel@PLT	#
# p_spec.c:680: 	break;
	.loc 1 680 2
	jmp	.L77	#
.L136:
# p_spec.c:684: 	EV_DoPlat(line,perpetualRaise,0);
	.loc 1 684 2
	movq	-8(%rbp), %rax	# line, tmp167
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp167,
	call	EV_DoPlat@PLT	#
# p_spec.c:685: 	line->special = 0;
	.loc 1 685 16
	movq	-8(%rbp), %rax	# line, tmp168
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:686: 	break;
	.loc 1 686 2
	jmp	.L77	#
.L135:
# p_spec.c:690: 	EV_StopPlat(line);
	.loc 1 690 2
	movq	-8(%rbp), %rax	# line, tmp169
	movq	%rax, %rdi	# tmp169,
	call	EV_StopPlat@PLT	#
# p_spec.c:691: 	line->special = 0;
	.loc 1 691 16
	movq	-8(%rbp), %rax	# line, tmp170
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:692: 	break;
	.loc 1 692 2
	jmp	.L77	#
.L134:
# p_spec.c:696: 	EV_DoFloor(line,raiseFloorCrush);
	.loc 1 696 2
	movq	-8(%rbp), %rax	# line, tmp171
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp171,
	call	EV_DoFloor@PLT	#
# p_spec.c:697: 	line->special = 0;
	.loc 1 697 16
	movq	-8(%rbp), %rax	# line, tmp172
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:698: 	break;
	.loc 1 698 2
	jmp	.L77	#
.L133:
# p_spec.c:702: 	EV_CeilingCrushStop(line);
	.loc 1 702 2
	movq	-8(%rbp), %rax	# line, tmp173
	movq	%rax, %rdi	# tmp173,
	call	EV_CeilingCrushStop@PLT	#
# p_spec.c:703: 	line->special = 0;
	.loc 1 703 16
	movq	-8(%rbp), %rax	# line, tmp174
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:704: 	break;
	.loc 1 704 2
	jmp	.L77	#
.L132:
# p_spec.c:708: 	EV_DoFloor(line,raiseFloor24);
	.loc 1 708 2
	movq	-8(%rbp), %rax	# line, tmp175
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp175,
	call	EV_DoFloor@PLT	#
# p_spec.c:709: 	line->special = 0;
	.loc 1 709 16
	movq	-8(%rbp), %rax	# line, tmp176
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:710: 	break;
	.loc 1 710 2
	jmp	.L77	#
.L131:
# p_spec.c:714: 	EV_DoFloor(line,raiseFloor24AndChange);
	.loc 1 714 2
	movq	-8(%rbp), %rax	# line, tmp177
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	EV_DoFloor@PLT	#
# p_spec.c:715: 	line->special = 0;
	.loc 1 715 16
	movq	-8(%rbp), %rax	# line, tmp178
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:716: 	break;
	.loc 1 716 2
	jmp	.L77	#
.L104:
# p_spec.c:720: 	EV_TurnTagLightsOff(line);
	.loc 1 720 2
	movq	-8(%rbp), %rax	# line, tmp179
	movq	%rax, %rdi	# tmp179,
	call	EV_TurnTagLightsOff@PLT	#
# p_spec.c:721: 	line->special = 0;
	.loc 1 721 16
	movq	-8(%rbp), %rax	# line, tmp180
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:722: 	break;
	.loc 1 722 2
	jmp	.L77	#
.L100:
# p_spec.c:726: 	EV_DoDoor (line,blazeRaise);
	.loc 1 726 2
	movq	-8(%rbp), %rax	# line, tmp181
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp181,
	call	EV_DoDoor@PLT	#
# p_spec.c:727: 	line->special = 0;
	.loc 1 727 16
	movq	-8(%rbp), %rax	# line, tmp182
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:728: 	break;
	.loc 1 728 2
	jmp	.L77	#
.L99:
# p_spec.c:732: 	EV_DoDoor (line,blazeOpen);
	.loc 1 732 2
	movq	-8(%rbp), %rax	# line, tmp183
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	EV_DoDoor@PLT	#
# p_spec.c:733: 	line->special = 0;
	.loc 1 733 16
	movq	-8(%rbp), %rax	# line, tmp184
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:734: 	break;
	.loc 1 734 2
	jmp	.L77	#
.L105:
# p_spec.c:738: 	EV_BuildStairs(line,turbo16);
	.loc 1 738 2
	movq	-8(%rbp), %rax	# line, tmp185
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	EV_BuildStairs@PLT	#
# p_spec.c:739: 	line->special = 0;
	.loc 1 739 16
	movq	-8(%rbp), %rax	# line, tmp186
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:740: 	break;
	.loc 1 740 2
	jmp	.L77	#
.L98:
# p_spec.c:744: 	EV_DoDoor (line,blazeClose);
	.loc 1 744 2
	movq	-8(%rbp), %rax	# line, tmp187
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp187,
	call	EV_DoDoor@PLT	#
# p_spec.c:745: 	line->special = 0;
	.loc 1 745 16
	movq	-8(%rbp), %rax	# line, tmp188
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:746: 	break;
	.loc 1 746 2
	jmp	.L77	#
.L97:
# p_spec.c:750: 	EV_DoFloor(line,raiseFloorToNearest);
	.loc 1 750 2
	movq	-8(%rbp), %rax	# line, tmp189
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	EV_DoFloor@PLT	#
# p_spec.c:751: 	line->special = 0;
	.loc 1 751 16
	movq	-8(%rbp), %rax	# line, tmp190
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:752: 	break;
	.loc 1 752 2
	jmp	.L77	#
.L95:
# p_spec.c:756: 	EV_DoPlat(line,blazeDWUS,0);
	.loc 1 756 2
	movq	-8(%rbp), %rax	# line, tmp191
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp191,
	call	EV_DoPlat@PLT	#
# p_spec.c:757: 	line->special = 0;
	.loc 1 757 16
	movq	-8(%rbp), %rax	# line, tmp192
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:758: 	break;
	.loc 1 758 2
	jmp	.L77	#
.L94:
# p_spec.c:762: 	G_SecretExitLevel ();
	.loc 1 762 2
	call	G_SecretExitLevel@PLT	#
# p_spec.c:763: 	break;
	.loc 1 763 2
	jmp	.L77	#
.L93:
# p_spec.c:767: 	if (!thing->player)
	.loc 1 767 12
	movq	-32(%rbp), %rax	# thing, tmp193
	movq	192(%rax), %rax	# thing_19(D)->player, _10
# p_spec.c:767: 	if (!thing->player)
	.loc 1 767 5
	testq	%rax, %rax	# _10
	jne	.L166	#,
# p_spec.c:769: 	    EV_Teleport( line, side, thing );
	.loc 1 769 6
	movq	-32(%rbp), %rdx	# thing, tmp194
	movl	-24(%rbp), %ecx	# side, tmp195
	movq	-8(%rbp), %rax	# line, tmp196
	movl	%ecx, %esi	# tmp195,
	movq	%rax, %rdi	# tmp196,
	call	EV_Teleport@PLT	#
# p_spec.c:770: 	    line->special = 0;
	.loc 1 770 20
	movq	-8(%rbp), %rax	# line, tmp197
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:772: 	break;
	.loc 1 772 2
	jmp	.L166	#
.L89:
# p_spec.c:776: 	EV_DoFloor(line,raiseFloorTurbo);
	.loc 1 776 2
	movq	-8(%rbp), %rax	# line, tmp198
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp198,
	call	EV_DoFloor@PLT	#
# p_spec.c:777: 	line->special = 0;
	.loc 1 777 16
	movq	-8(%rbp), %rax	# line, tmp199
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:778: 	break;
	.loc 1 778 2
	jmp	.L77	#
.L87:
# p_spec.c:782: 	EV_DoCeiling(line,silentCrushAndRaise);
	.loc 1 782 2
	movq	-8(%rbp), %rax	# line, tmp200
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp200,
	call	EV_DoCeiling@PLT	#
# p_spec.c:783: 	line->special = 0;
	.loc 1 783 16
	movq	-8(%rbp), %rax	# line, tmp201
	movw	$0, 26(%rax)	#, line_18->special
# p_spec.c:784: 	break;
	.loc 1 784 2
	jmp	.L77	#
.L130:
# p_spec.c:789: 	EV_DoCeiling( line, lowerAndCrush );
	.loc 1 789 2
	movq	-8(%rbp), %rax	# line, tmp202
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp202,
	call	EV_DoCeiling@PLT	#
# p_spec.c:790: 	break;
	.loc 1 790 2
	jmp	.L77	#
.L129:
# p_spec.c:794: 	EV_DoCeiling(line,crushAndRaise);
	.loc 1 794 2
	movq	-8(%rbp), %rax	# line, tmp203
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp203,
	call	EV_DoCeiling@PLT	#
# p_spec.c:795: 	break;
	.loc 1 795 2
	jmp	.L77	#
.L128:
# p_spec.c:799: 	EV_CeilingCrushStop(line);
	.loc 1 799 2
	movq	-8(%rbp), %rax	# line, tmp204
	movq	%rax, %rdi	# tmp204,
	call	EV_CeilingCrushStop@PLT	#
# p_spec.c:800: 	break;
	.loc 1 800 2
	jmp	.L77	#
.L127:
# p_spec.c:804: 	EV_DoDoor(line,close);
	.loc 1 804 2
	movq	-8(%rbp), %rax	# line, tmp205
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	EV_DoDoor@PLT	#
# p_spec.c:805: 	break;
	.loc 1 805 2
	jmp	.L77	#
.L126:
# p_spec.c:809: 	EV_DoDoor(line,close30ThenOpen);
	.loc 1 809 2
	movq	-8(%rbp), %rax	# line, tmp206
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp206,
	call	EV_DoDoor@PLT	#
# p_spec.c:810: 	break;
	.loc 1 810 2
	jmp	.L77	#
.L125:
# p_spec.c:814: 	EV_DoCeiling(line,fastCrushAndRaise);
	.loc 1 814 2
	movq	-8(%rbp), %rax	# line, tmp207
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp207,
	call	EV_DoCeiling@PLT	#
# p_spec.c:815: 	break;
	.loc 1 815 2
	jmp	.L77	#
.L124:
# p_spec.c:819: 	EV_LightTurnOn(line,35);
	.loc 1 819 2
	movq	-8(%rbp), %rax	# line, tmp208
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp208,
	call	EV_LightTurnOn@PLT	#
# p_spec.c:820: 	break;
	.loc 1 820 2
	jmp	.L77	#
.L123:
# p_spec.c:824: 	EV_LightTurnOn(line,0);
	.loc 1 824 2
	movq	-8(%rbp), %rax	# line, tmp209
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	EV_LightTurnOn@PLT	#
# p_spec.c:825: 	break;
	.loc 1 825 2
	jmp	.L77	#
.L122:
# p_spec.c:829: 	EV_LightTurnOn(line,255);
	.loc 1 829 2
	movq	-8(%rbp), %rax	# line, tmp210
	movl	$255, %esi	#,
	movq	%rax, %rdi	# tmp210,
	call	EV_LightTurnOn@PLT	#
# p_spec.c:830: 	break;
	.loc 1 830 2
	jmp	.L77	#
.L121:
# p_spec.c:834: 	EV_DoFloor( line, lowerFloorToLowest );
	.loc 1 834 2
	movq	-8(%rbp), %rax	# line, tmp211
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	EV_DoFloor@PLT	#
# p_spec.c:835: 	break;
	.loc 1 835 2
	jmp	.L77	#
.L120:
# p_spec.c:839: 	EV_DoFloor(line,lowerFloor);
	.loc 1 839 2
	movq	-8(%rbp), %rax	# line, tmp212
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	EV_DoFloor@PLT	#
# p_spec.c:840: 	break;
	.loc 1 840 2
	jmp	.L77	#
.L119:
# p_spec.c:844: 	EV_DoFloor(line,lowerAndChange);
	.loc 1 844 2
	movq	-8(%rbp), %rax	# line, tmp213
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp213,
	call	EV_DoFloor@PLT	#
# p_spec.c:845: 	break;
	.loc 1 845 2
	jmp	.L77	#
.L118:
# p_spec.c:849: 	EV_DoDoor(line,open);
	.loc 1 849 2
	movq	-8(%rbp), %rax	# line, tmp214
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	EV_DoDoor@PLT	#
# p_spec.c:850: 	break;
	.loc 1 850 2
	jmp	.L77	#
.L117:
# p_spec.c:854: 	EV_DoPlat(line,perpetualRaise,0);
	.loc 1 854 2
	movq	-8(%rbp), %rax	# line, tmp215
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	EV_DoPlat@PLT	#
# p_spec.c:855: 	break;
	.loc 1 855 2
	jmp	.L77	#
.L116:
# p_spec.c:859: 	EV_DoPlat(line,downWaitUpStay,0);
	.loc 1 859 2
	movq	-8(%rbp), %rax	# line, tmp216
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	EV_DoPlat@PLT	#
# p_spec.c:860: 	break;
	.loc 1 860 2
	jmp	.L77	#
.L115:
# p_spec.c:864: 	EV_StopPlat(line);
	.loc 1 864 2
	movq	-8(%rbp), %rax	# line, tmp217
	movq	%rax, %rdi	# tmp217,
	call	EV_StopPlat@PLT	#
# p_spec.c:865: 	break;
	.loc 1 865 2
	jmp	.L77	#
.L114:
# p_spec.c:869: 	EV_DoDoor(line,normal);
	.loc 1 869 2
	movq	-8(%rbp), %rax	# line, tmp218
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	EV_DoDoor@PLT	#
# p_spec.c:870: 	break;
	.loc 1 870 2
	jmp	.L77	#
.L113:
# p_spec.c:874: 	EV_DoFloor(line,raiseFloor);
	.loc 1 874 2
	movq	-8(%rbp), %rax	# line, tmp219
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp219,
	call	EV_DoFloor@PLT	#
# p_spec.c:875: 	break;
	.loc 1 875 2
	jmp	.L77	#
.L112:
# p_spec.c:879: 	EV_DoFloor(line,raiseFloor24);
	.loc 1 879 2
	movq	-8(%rbp), %rax	# line, tmp220
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp220,
	call	EV_DoFloor@PLT	#
# p_spec.c:880: 	break;
	.loc 1 880 2
	jmp	.L77	#
.L111:
# p_spec.c:884: 	EV_DoFloor(line,raiseFloor24AndChange);
	.loc 1 884 2
	movq	-8(%rbp), %rax	# line, tmp221
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp221,
	call	EV_DoFloor@PLT	#
# p_spec.c:885: 	break;
	.loc 1 885 2
	jmp	.L77	#
.L110:
# p_spec.c:889: 	EV_DoFloor(line,raiseFloorCrush);
	.loc 1 889 2
	movq	-8(%rbp), %rax	# line, tmp222
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	EV_DoFloor@PLT	#
# p_spec.c:890: 	break;
	.loc 1 890 2
	jmp	.L77	#
.L109:
# p_spec.c:895: 	EV_DoPlat(line,raiseToNearestAndChange,0);
	.loc 1 895 2
	movq	-8(%rbp), %rax	# line, tmp223
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	EV_DoPlat@PLT	#
# p_spec.c:896: 	break;
	.loc 1 896 2
	jmp	.L77	#
.L108:
# p_spec.c:901: 	EV_DoFloor(line,raiseToTexture);
	.loc 1 901 2
	movq	-8(%rbp), %rax	# line, tmp224
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp224,
	call	EV_DoFloor@PLT	#
# p_spec.c:902: 	break;
	.loc 1 902 2
	jmp	.L77	#
.L107:
# p_spec.c:906: 	EV_Teleport( line, side, thing );
	.loc 1 906 2
	movq	-32(%rbp), %rdx	# thing, tmp225
	movl	-24(%rbp), %ecx	# side, tmp226
	movq	-8(%rbp), %rax	# line, tmp227
	movl	%ecx, %esi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	EV_Teleport@PLT	#
# p_spec.c:907: 	break;
	.loc 1 907 2
	jmp	.L77	#
.L106:
# p_spec.c:911: 	EV_DoFloor(line,turboLower);
	.loc 1 911 2
	movq	-8(%rbp), %rax	# line, tmp228
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	EV_DoFloor@PLT	#
# p_spec.c:912: 	break;
	.loc 1 912 2
	jmp	.L77	#
.L103:
# p_spec.c:916: 	EV_DoDoor (line,blazeRaise);
	.loc 1 916 2
	movq	-8(%rbp), %rax	# line, tmp229
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	EV_DoDoor@PLT	#
# p_spec.c:917: 	break;
	.loc 1 917 2
	jmp	.L77	#
.L102:
# p_spec.c:921: 	EV_DoDoor (line,blazeOpen);
	.loc 1 921 2
	movq	-8(%rbp), %rax	# line, tmp230
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	EV_DoDoor@PLT	#
# p_spec.c:922: 	break;
	.loc 1 922 2
	jmp	.L77	#
.L101:
# p_spec.c:926: 	EV_DoDoor (line,blazeClose);
	.loc 1 926 2
	movq	-8(%rbp), %rax	# line, tmp231
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	EV_DoDoor@PLT	#
# p_spec.c:927: 	break;
	.loc 1 927 2
	jmp	.L77	#
.L96:
# p_spec.c:931: 	EV_DoPlat(line,blazeDWUS,0);
	.loc 1 931 2
	movq	-8(%rbp), %rax	# line, tmp232
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	EV_DoPlat@PLT	#
# p_spec.c:932: 	break;
	.loc 1 932 2
	jmp	.L77	#
.L92:
# p_spec.c:936: 	if (!thing->player)
	.loc 1 936 12
	movq	-32(%rbp), %rax	# thing, tmp233
	movq	192(%rax), %rax	# thing_19(D)->player, _11
# p_spec.c:936: 	if (!thing->player)
	.loc 1 936 5
	testq	%rax, %rax	# _11
	jne	.L167	#,
# p_spec.c:937: 	    EV_Teleport( line, side, thing );
	.loc 1 937 6
	movq	-32(%rbp), %rdx	# thing, tmp234
	movl	-24(%rbp), %ecx	# side, tmp235
	movq	-8(%rbp), %rax	# line, tmp236
	movl	%ecx, %esi	# tmp235,
	movq	%rax, %rdi	# tmp236,
	call	EV_Teleport@PLT	#
# p_spec.c:938: 	break;
	.loc 1 938 2
	jmp	.L167	#
.L91:
# p_spec.c:942: 	EV_DoFloor(line,raiseFloorToNearest);
	.loc 1 942 2
	movq	-8(%rbp), %rax	# line, tmp237
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp237,
	call	EV_DoFloor@PLT	#
# p_spec.c:943: 	break;
	.loc 1 943 2
	jmp	.L77	#
.L90:
# p_spec.c:947: 	EV_DoFloor(line,raiseFloorTurbo);
	.loc 1 947 2
	movq	-8(%rbp), %rax	# line, tmp238
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	EV_DoFloor@PLT	#
# p_spec.c:948: 	break;
	.loc 1 948 2
	jmp	.L77	#
.L163:
# p_spec.c:514: 	    return;
	.loc 1 514 6
	nop	
	jmp	.L77	#
.L165:
# p_spec.c:534: 	    return;
	.loc 1 534 6
	nop	
	jmp	.L77	#
.L166:
# p_spec.c:772: 	break;
	.loc 1 772 2
	nop	
	jmp	.L77	#
.L167:
# p_spec.c:938: 	break;
	.loc 1 938 2
	nop	
.L77:
# p_spec.c:950: }
	.loc 1 950 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	P_CrossSpecialLine, .-P_CrossSpecialLine
	.globl	P_ShootSpecialLine
	.type	P_ShootSpecialLine, @function
P_ShootSpecialLine:
.LFB19:
	.loc 1 962 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# thing, thing
	movq	%rsi, -32(%rbp)	# line, line
# p_spec.c:966:     if (!thing->player)
	.loc 1 966 15
	movq	-24(%rbp), %rax	# thing, tmp87
	movq	192(%rax), %rax	# thing_9(D)->player, _1
# p_spec.c:966:     if (!thing->player)
	.loc 1 966 8
	testq	%rax, %rax	# _1
	jne	.L169	#,
# p_spec.c:968: 	ok = 0;
	.loc 1 968 5
	movl	$0, -4(%rbp)	#, ok
# p_spec.c:969: 	switch(line->special)
	.loc 1 969 13
	movq	-32(%rbp), %rax	# line, tmp88
	movzwl	26(%rax), %eax	# line_11(D)->special, _2
	cwtl
# p_spec.c:969: 	switch(line->special)
	.loc 1 969 2
	cmpl	$46, %eax	#, _3
	jne	.L170	#,
# p_spec.c:973: 	    ok = 1;
	.loc 1 973 9
	movl	$1, -4(%rbp)	#, ok
# p_spec.c:974: 	    break;
	.loc 1 974 6
	nop	
.L170:
# p_spec.c:976: 	if (!ok)
	.loc 1 976 5
	cmpl	$0, -4(%rbp)	#, ok
	je	.L175	#,
.L169:
# p_spec.c:980:     switch(line->special)
	.loc 1 980 16
	movq	-32(%rbp), %rax	# line, tmp89
	movzwl	26(%rax), %eax	# line_11(D)->special, _4
	cwtl
# p_spec.c:980:     switch(line->special)
	.loc 1 980 5
	cmpl	$47, %eax	#, _5
	je	.L172	#,
	cmpl	$47, %eax	#, _5
	jg	.L168	#,
	cmpl	$24, %eax	#, _5
	je	.L173	#,
	cmpl	$46, %eax	#, _5
	je	.L174	#,
	jmp	.L168	#
.L173:
# p_spec.c:984: 	EV_DoFloor(line,raiseFloor);
	.loc 1 984 2
	movq	-32(%rbp), %rax	# line, tmp90
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	EV_DoFloor@PLT	#
# p_spec.c:985: 	P_ChangeSwitchTexture(line,0);
	.loc 1 985 2
	movq	-32(%rbp), %rax	# line, tmp91
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	P_ChangeSwitchTexture@PLT	#
# p_spec.c:986: 	break;
	.loc 1 986 2
	jmp	.L168	#
.L174:
# p_spec.c:990: 	EV_DoDoor(line,open);
	.loc 1 990 2
	movq	-32(%rbp), %rax	# line, tmp92
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	EV_DoDoor@PLT	#
# p_spec.c:991: 	P_ChangeSwitchTexture(line,1);
	.loc 1 991 2
	movq	-32(%rbp), %rax	# line, tmp93
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	P_ChangeSwitchTexture@PLT	#
# p_spec.c:992: 	break;
	.loc 1 992 2
	jmp	.L168	#
.L172:
# p_spec.c:996: 	EV_DoPlat(line,raiseToNearestAndChange,0);
	.loc 1 996 2
	movq	-32(%rbp), %rax	# line, tmp94
	movl	$0, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	EV_DoPlat@PLT	#
# p_spec.c:997: 	P_ChangeSwitchTexture(line,0);
	.loc 1 997 2
	movq	-32(%rbp), %rax	# line, tmp95
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	P_ChangeSwitchTexture@PLT	#
# p_spec.c:998: 	break;
	.loc 1 998 2
	jmp	.L168	#
.L175:
# p_spec.c:977: 	    return;
	.loc 1 977 6
	nop	
.L168:
# p_spec.c:1000: }
	.loc 1 1000 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	P_ShootSpecialLine, .-P_ShootSpecialLine
	.section	.rodata
	.align 8
.LC2:
	.string	"P_PlayerInSpecialSector: unknown special %i"
	.text
	.globl	P_PlayerInSpecialSector
	.type	P_PlayerInSpecialSector, @function
P_PlayerInSpecialSector:
.LFB20:
	.loc 1 1010 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_spec.c:1013:     sector = player->mo->subsector->sector;
	.loc 1 1013 20
	movq	-24(%rbp), %rax	# player, tmp112
	movq	(%rax), %rax	# player_39(D)->mo, _1
# p_spec.c:1013:     sector = player->mo->subsector->sector;
	.loc 1 1013 24
	movq	88(%rax), %rax	# _1->subsector, _2
# p_spec.c:1013:     sector = player->mo->subsector->sector;
	.loc 1 1013 12
	movq	(%rax), %rax	# _2->sector, tmp113
	movq	%rax, -8(%rbp)	# tmp113, sector
# p_spec.c:1016:     if (player->mo->z != sector->floorheight)
	.loc 1 1016 15
	movq	-24(%rbp), %rax	# player, tmp114
	movq	(%rax), %rax	# player_39(D)->mo, _3
# p_spec.c:1016:     if (player->mo->z != sector->floorheight)
	.loc 1 1016 19
	movl	32(%rax), %edx	# _3->z, _4
# p_spec.c:1016:     if (player->mo->z != sector->floorheight)
	.loc 1 1016 32
	movq	-8(%rbp), %rax	# sector, tmp115
	movl	(%rax), %eax	# sector_40->floorheight, _5
# p_spec.c:1016:     if (player->mo->z != sector->floorheight)
	.loc 1 1016 8
	cmpl	%eax, %edx	# _5, _4
	jne	.L192	#,
# p_spec.c:1020:     switch (sector->special)
	.loc 1 1020 19
	movq	-8(%rbp), %rax	# sector, tmp116
	movzwl	14(%rax), %eax	# sector_40->special, _6
	cwtl
# p_spec.c:1020:     switch (sector->special)
	.loc 1 1020 5
	subl	$4, %eax	#, tmp117
	cmpl	$12, %eax	#, tmp117
	ja	.L179	#,
	movl	%eax, %eax	# tmp117, tmp118
	leaq	0(,%rax,4), %rdx	#, tmp119
	leaq	.L181(%rip), %rax	#, tmp120
	movl	(%rdx,%rax), %eax	#, tmp121
	cltq
	leaq	.L181(%rip), %rdx	#, tmp124
	addq	%rdx, %rax	# tmp124, tmp123
	notrack jmp	*%rax	# tmp123
	.section	.rodata
	.align 4
	.align 4
.L181:
	.long	.L180-.L181
	.long	.L185-.L181
	.long	.L179-.L181
	.long	.L184-.L181
	.long	.L179-.L181
	.long	.L183-.L181
	.long	.L179-.L181
	.long	.L182-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L179-.L181
	.long	.L180-.L181
	.text
.L185:
# p_spec.c:1024: 	if (!player->powers[pw_ironfeet])
	.loc 1 1024 21
	movq	-24(%rbp), %rax	# player, tmp125
	movl	60(%rax), %eax	# player_39(D)->powers[3], _8
# p_spec.c:1024: 	if (!player->powers[pw_ironfeet])
	.loc 1 1024 5
	testl	%eax, %eax	# _8
	jne	.L193	#,
# p_spec.c:1025: 	    if (!(leveltime&0x1f))
	.loc 1 1025 21
	movl	leveltime(%rip), %eax	# leveltime, leveltime.21_9
	andl	$31, %eax	#, _10
# p_spec.c:1025: 	    if (!(leveltime&0x1f))
	.loc 1 1025 9
	testl	%eax, %eax	# _10
	jne	.L193	#,
# p_spec.c:1026: 		P_DamageMobj (player->mo, NULL, NULL, 10);
	.loc 1 1026 3
	movq	-24(%rbp), %rax	# player, tmp126
	movq	(%rax), %rax	# player_39(D)->mo, _11
	movl	$10, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _11,
	call	P_DamageMobj@PLT	#
# p_spec.c:1027: 	break;
	.loc 1 1027 2
	jmp	.L193	#
.L184:
# p_spec.c:1031: 	if (!player->powers[pw_ironfeet])
	.loc 1 1031 21
	movq	-24(%rbp), %rax	# player, tmp127
	movl	60(%rax), %eax	# player_39(D)->powers[3], _12
# p_spec.c:1031: 	if (!player->powers[pw_ironfeet])
	.loc 1 1031 5
	testl	%eax, %eax	# _12
	jne	.L194	#,
# p_spec.c:1032: 	    if (!(leveltime&0x1f))
	.loc 1 1032 21
	movl	leveltime(%rip), %eax	# leveltime, leveltime.22_13
	andl	$31, %eax	#, _14
# p_spec.c:1032: 	    if (!(leveltime&0x1f))
	.loc 1 1032 9
	testl	%eax, %eax	# _14
	jne	.L194	#,
# p_spec.c:1033: 		P_DamageMobj (player->mo, NULL, NULL, 5);
	.loc 1 1033 3
	movq	-24(%rbp), %rax	# player, tmp128
	movq	(%rax), %rax	# player_39(D)->mo, _15
	movl	$5, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _15,
	call	P_DamageMobj@PLT	#
# p_spec.c:1034: 	break;
	.loc 1 1034 2
	jmp	.L194	#
.L180:
# p_spec.c:1040: 	if (!player->powers[pw_ironfeet]
	.loc 1 1040 21
	movq	-24(%rbp), %rax	# player, tmp129
	movl	60(%rax), %eax	# player_39(D)->powers[3], _16
# p_spec.c:1040: 	if (!player->powers[pw_ironfeet]
	.loc 1 1040 5
	testl	%eax, %eax	# _16
	je	.L188	#,
# p_spec.c:1041: 	    || (P_Random()<5) )
	.loc 1 1041 10
	call	P_Random@PLT	#
# p_spec.c:1041: 	    || (P_Random()<5) )
	.loc 1 1041 6 discriminator 1
	cmpl	$4, %eax	#, _17
	jg	.L195	#,
.L188:
# p_spec.c:1043: 	    if (!(leveltime&0x1f))
	.loc 1 1043 21
	movl	leveltime(%rip), %eax	# leveltime, leveltime.23_18
	andl	$31, %eax	#, _19
# p_spec.c:1043: 	    if (!(leveltime&0x1f))
	.loc 1 1043 9
	testl	%eax, %eax	# _19
	jne	.L195	#,
# p_spec.c:1044: 		P_DamageMobj (player->mo, NULL, NULL, 20);
	.loc 1 1044 3
	movq	-24(%rbp), %rax	# player, tmp130
	movq	(%rax), %rax	# player_39(D)->mo, _20
	movl	$20, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _20,
	call	P_DamageMobj@PLT	#
# p_spec.c:1046: 	break;
	.loc 1 1046 2
	jmp	.L195	#
.L183:
# p_spec.c:1050: 	player->secretcount++;
	.loc 1 1050 8
	movq	-24(%rbp), %rax	# player, tmp131
	movl	216(%rax), %eax	# player_39(D)->secretcount, _21
# p_spec.c:1050: 	player->secretcount++;
	.loc 1 1050 21
	leal	1(%rax), %edx	#, _22
	movq	-24(%rbp), %rax	# player, tmp132
	movl	%edx, 216(%rax)	# _22, player_39(D)->secretcount
# p_spec.c:1051: 	sector->special = 0;
	.loc 1 1051 18
	movq	-8(%rbp), %rax	# sector, tmp133
	movw	$0, 14(%rax)	#, sector_40->special
# p_spec.c:1052: 	break;
	.loc 1 1052 2
	jmp	.L176	#
.L182:
# p_spec.c:1056: 	player->cheats &= ~CF_GODMODE;
	.loc 1 1056 8
	movq	-24(%rbp), %rax	# player, tmp134
	movl	200(%rax), %eax	# player_39(D)->cheats, _23
# p_spec.c:1056: 	player->cheats &= ~CF_GODMODE;
	.loc 1 1056 17
	andl	$-3, %eax	#, _23
	movl	%eax, %edx	# _23, _24
	movq	-24(%rbp), %rax	# player, tmp135
	movl	%edx, 200(%rax)	# _24, player_39(D)->cheats
# p_spec.c:1058: 	if (!(leveltime&0x1f))
	.loc 1 1058 17
	movl	leveltime(%rip), %eax	# leveltime, leveltime.24_25
	andl	$31, %eax	#, _26
# p_spec.c:1058: 	if (!(leveltime&0x1f))
	.loc 1 1058 5
	testl	%eax, %eax	# _26
	jne	.L190	#,
# p_spec.c:1059: 	    P_DamageMobj (player->mo, NULL, NULL, 20);
	.loc 1 1059 6
	movq	-24(%rbp), %rax	# player, tmp136
	movq	(%rax), %rax	# player_39(D)->mo, _27
	movl	$20, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _27,
	call	P_DamageMobj@PLT	#
.L190:
# p_spec.c:1061: 	if (player->health <= 10)
	.loc 1 1061 12
	movq	-24(%rbp), %rax	# player, tmp137
	movl	36(%rax), %eax	# player_39(D)->health, _28
# p_spec.c:1061: 	if (player->health <= 10)
	.loc 1 1061 5
	cmpl	$10, %eax	#, _28
	jg	.L196	#,
# p_spec.c:1062: 	    G_ExitLevel();
	.loc 1 1062 6
	call	G_ExitLevel@PLT	#
# p_spec.c:1063: 	break;
	.loc 1 1063 2
	jmp	.L196	#
.L179:
# p_spec.c:1068: 		 sector->special);
	.loc 1 1068 10
	movq	-8(%rbp), %rax	# sector, tmp138
	movzwl	14(%rax), %eax	# sector_40->special, _29
# p_spec.c:1066: 	I_Error ("P_PlayerInSpecialSector: "
	.loc 1 1066 2
	cwtl
	movl	%eax, %esi	# _30,
	leaq	.LC2(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
# p_spec.c:1069: 	break;
	.loc 1 1069 2
	jmp	.L176	#
.L192:
# p_spec.c:1017: 	return;	
	.loc 1 1017 2
	nop	
	jmp	.L176	#
.L193:
# p_spec.c:1027: 	break;
	.loc 1 1027 2
	nop	
	jmp	.L176	#
.L194:
# p_spec.c:1034: 	break;
	.loc 1 1034 2
	nop	
	jmp	.L176	#
.L195:
# p_spec.c:1046: 	break;
	.loc 1 1046 2
	nop	
	jmp	.L176	#
.L196:
# p_spec.c:1063: 	break;
	.loc 1 1063 2
	nop	
.L176:
# p_spec.c:1071: }
	.loc 1 1071 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	P_PlayerInSpecialSector, .-P_PlayerInSpecialSector
	.globl	levelTimer
	.bss
	.align 4
	.type	levelTimer, @object
	.size	levelTimer, 4
levelTimer:
	.zero	4
	.globl	levelTimeCount
	.align 4
	.type	levelTimeCount, @object
	.size	levelTimeCount, 4
levelTimeCount:
	.zero	4
	.text
	.globl	P_UpdateSpecials
	.type	P_UpdateSpecials, @function
P_UpdateSpecials:
.LFB21:
	.loc 1 1084 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# p_spec.c:1092:     if (levelTimer == true)
	.loc 1 1092 20
	movl	levelTimer(%rip), %eax	# levelTimer, levelTimer.25_1
# p_spec.c:1092:     if (levelTimer == true)
	.loc 1 1092 8
	cmpl	$1, %eax	#, levelTimer.25_1
	jne	.L198	#,
# p_spec.c:1094: 	levelTimeCount--;
	.loc 1 1094 16
	movl	levelTimeCount(%rip), %eax	# levelTimeCount, levelTimeCount.26_2
	subl	$1, %eax	#, _3
	movl	%eax, levelTimeCount(%rip)	# _3, levelTimeCount
# p_spec.c:1095: 	if (!levelTimeCount)
	.loc 1 1095 6
	movl	levelTimeCount(%rip), %eax	# levelTimeCount, levelTimeCount.27_4
# p_spec.c:1095: 	if (!levelTimeCount)
	.loc 1 1095 5
	testl	%eax, %eax	# levelTimeCount.27_4
	jne	.L198	#,
# p_spec.c:1096: 	    G_ExitLevel();
	.loc 1 1096 6
	call	G_ExitLevel@PLT	#
.L198:
# p_spec.c:1100:     for (anim = anims ; anim < lastanim ; anim++)
	.loc 1 1100 15
	leaq	anims(%rip), %rax	#, tmp153
	movq	%rax, -16(%rbp)	# tmp153, anim
# p_spec.c:1100:     for (anim = anims ; anim < lastanim ; anim++)
	.loc 1 1100 5
	jmp	.L199	#
.L204:
# p_spec.c:1102: 	for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
	.loc 1 1102 8
	movq	-16(%rbp), %rax	# anim, tmp154
	movl	8(%rax), %eax	# anim_72->basepic, tmp155
	movl	%eax, -24(%rbp)	# tmp155, i
# p_spec.c:1102: 	for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
	.loc 1 1102 2
	jmp	.L200	#
.L203:
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 16
	movq	-16(%rbp), %rax	# anim, tmp156
	movl	8(%rax), %ecx	# anim_72->basepic, _5
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 40
	movl	leveltime(%rip), %eax	# leveltime, leveltime.28_6
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 45
	movq	-16(%rbp), %rdx	# anim, tmp157
	movl	16(%rdx), %edi	# anim_72->speed, _7
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 40
	cltd
	idivl	%edi	# _7
	movl	%eax, %edx	# tmp158, _8
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 53
	movl	-24(%rbp), %eax	# i, tmp160
	leal	(%rdx,%rax), %esi	#, _9
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 62
	movq	-16(%rbp), %rax	# anim, tmp161
	movl	12(%rax), %edi	# anim_72->numpics, _10
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 57
	movl	%esi, %eax	# _9, _9
	cltd
	idivl	%edi	# _10
	movl	%edx, %esi	# tmp162, tmp162
	movl	%esi, %eax	# tmp162, _11
# p_spec.c:1104: 	    pic = anim->basepic + ( (leveltime/anim->speed + i)%anim->numpics );
	.loc 1 1104 10
	addl	%ecx, %eax	# _5, tmp164
	movl	%eax, -20(%rbp)	# tmp164, pic
# p_spec.c:1105: 	    if (anim->istexture)
	.loc 1 1105 14
	movq	-16(%rbp), %rax	# anim, tmp165
	movl	(%rax), %eax	# anim_72->istexture, _12
# p_spec.c:1105: 	    if (anim->istexture)
	.loc 1 1105 9
	testl	%eax, %eax	# _12
	je	.L201	#,
# p_spec.c:1106: 		texturetranslation[i] = pic;
	.loc 1 1106 21
	movq	texturetranslation(%rip), %rax	# texturetranslation, texturetranslation.29_13
	movl	-24(%rbp), %edx	# i, tmp166
	movslq	%edx, %rdx	# tmp166, _14
	salq	$2, %rdx	#, _15
	addq	%rax, %rdx	# texturetranslation.29_13, _16
# p_spec.c:1106: 		texturetranslation[i] = pic;
	.loc 1 1106 25
	movl	-20(%rbp), %eax	# pic, tmp167
	movl	%eax, (%rdx)	# tmp167, *_16
	jmp	.L202	#
.L201:
# p_spec.c:1108: 		flattranslation[i] = pic;
	.loc 1 1108 18
	movq	flattranslation(%rip), %rax	# flattranslation, flattranslation.30_17
	movl	-24(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, _18
	salq	$2, %rdx	#, _19
	addq	%rax, %rdx	# flattranslation.30_17, _20
# p_spec.c:1108: 		flattranslation[i] = pic;
	.loc 1 1108 22
	movl	-20(%rbp), %eax	# pic, tmp169
	movl	%eax, (%rdx)	# tmp169, *_20
.L202:
# p_spec.c:1102: 	for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
	.loc 1 1102 58 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L200:
# p_spec.c:1102: 	for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
	.loc 1 1102 31 discriminator 1
	movq	-16(%rbp), %rax	# anim, tmp170
	movl	8(%rax), %edx	# anim_72->basepic, _21
# p_spec.c:1102: 	for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
	.loc 1 1102 45 discriminator 1
	movq	-16(%rbp), %rax	# anim, tmp171
	movl	12(%rax), %eax	# anim_72->numpics, _22
# p_spec.c:1102: 	for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
	.loc 1 1102 40 discriminator 1
	addl	%edx, %eax	# _21, _23
# p_spec.c:1102: 	for (i=anim->basepic ; i<anim->basepic+anim->numpics ; i++)
	.loc 1 1102 26 discriminator 1
	cmpl	%eax, -24(%rbp)	# _23, i
	jl	.L203	#,
# p_spec.c:1100:     for (anim = anims ; anim < lastanim ; anim++)
	.loc 1 1100 47 discriminator 2
	addq	$20, -16(%rbp)	#, anim
.L199:
# p_spec.c:1100:     for (anim = anims ; anim < lastanim ; anim++)
	.loc 1 1100 30 discriminator 1
	movq	lastanim(%rip), %rax	# lastanim, lastanim.31_24
	cmpq	%rax, -16(%rbp)	# lastanim.31_24, anim
	jb	.L204	#,
# p_spec.c:1114:     for (i = 0; i < numlinespecials; i++)
	.loc 1 1114 12
	movl	$0, -24(%rbp)	#, i
# p_spec.c:1114:     for (i = 0; i < numlinespecials; i++)
	.loc 1 1114 5
	jmp	.L205	#
.L207:
# p_spec.c:1116: 	line = linespeciallist[i];
	.loc 1 1116 7
	movl	-24(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp174
	leaq	linespeciallist(%rip), %rax	#, tmp175
	movq	(%rdx,%rax), %rax	# linespeciallist[i_74], tmp176
	movq	%rax, -8(%rbp)	# tmp176, line
# p_spec.c:1117: 	switch(line->special)
	.loc 1 1117 13
	movq	-8(%rbp), %rax	# line, tmp177
	movzwl	26(%rax), %eax	# line_98->special, _25
	cwtl
# p_spec.c:1117: 	switch(line->special)
	.loc 1 1117 2
	cmpl	$48, %eax	#, _26
	jne	.L206	#,
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 11
	movq	sides(%rip), %rcx	# sides, sides.32_27
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 25
	movq	-8(%rbp), %rax	# line, tmp178
	movzwl	30(%rax), %eax	# line_98->sidenum[0], _28
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 11
	movswq	%ax, %rdx	# _28, _29
	movq	%rdx, %rax	# _29, tmp179
	addq	%rax, %rax	# tmp179
	addq	%rdx, %rax	# _29, tmp179
	salq	$3, %rax	#, tmp180
	addq	%rcx, %rax	# sides.32_27, _31
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 29
	movl	(%rax), %ecx	# _31->textureoffset, _32
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 11
	movq	sides(%rip), %rsi	# sides, sides.33_33
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 25
	movq	-8(%rbp), %rax	# line, tmp181
	movzwl	30(%rax), %eax	# line_98->sidenum[0], _34
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 11
	movswq	%ax, %rdx	# _34, _35
	movq	%rdx, %rax	# _35, tmp182
	addq	%rax, %rax	# tmp182
	addq	%rdx, %rax	# _35, tmp182
	salq	$3, %rax	#, tmp183
	addq	%rsi, %rax	# sides.33_33, _37
# p_spec.c:1121: 	    sides[line->sidenum[0]].textureoffset += FRACUNIT;
	.loc 1 1121 44
	leal	65536(%rcx), %edx	#, _38
	movl	%edx, (%rax)	# _38, _37->textureoffset
# p_spec.c:1122: 	    break;
	.loc 1 1122 6
	nop	
.L206:
# p_spec.c:1114:     for (i = 0; i < numlinespecials; i++)
	.loc 1 1114 39 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L205:
# p_spec.c:1114:     for (i = 0; i < numlinespecials; i++)
	.loc 1 1114 19 discriminator 1
	movzwl	numlinespecials(%rip), %eax	# numlinespecials, numlinespecials.34_39
	cwtl
	cmpl	%eax, -24(%rbp)	# _40, i
	jl	.L207	#,
# p_spec.c:1128:     for (i = 0; i < MAXBUTTONS; i++)
	.loc 1 1128 12
	movl	$0, -24(%rbp)	#, i
# p_spec.c:1128:     for (i = 0; i < MAXBUTTONS; i++)
	.loc 1 1128 5
	jmp	.L208	#
.L214:
# p_spec.c:1129: 	if (buttonlist[i].btimer)
	.loc 1 1129 19
	movl	-24(%rbp), %eax	# i, tmp185
	cltq
	salq	$5, %rax	#, tmp184
	movq	%rax, %rdx	# tmp184, tmp186
	leaq	16+buttonlist(%rip), %rax	#, tmp187
	movl	(%rdx,%rax), %eax	# buttonlist[i_75].btimer, _41
# p_spec.c:1129: 	if (buttonlist[i].btimer)
	.loc 1 1129 5
	testl	%eax, %eax	# _41
	je	.L209	#,
# p_spec.c:1131: 	    buttonlist[i].btimer--;
	.loc 1 1131 19
	movl	-24(%rbp), %eax	# i, tmp189
	cltq
	salq	$5, %rax	#, tmp188
	movq	%rax, %rdx	# tmp188, tmp190
	leaq	16+buttonlist(%rip), %rax	#, tmp191
	movl	(%rdx,%rax), %eax	# buttonlist[i_75].btimer, _42
# p_spec.c:1131: 	    buttonlist[i].btimer--;
	.loc 1 1131 26
	leal	-1(%rax), %ecx	#, _43
	movl	-24(%rbp), %eax	# i, tmp193
	cltq
	salq	$5, %rax	#, tmp192
	movq	%rax, %rdx	# tmp192, tmp194
	leaq	16+buttonlist(%rip), %rax	#, tmp195
	movl	%ecx, (%rdx,%rax)	# _43, buttonlist[i_75].btimer
# p_spec.c:1132: 	    if (!buttonlist[i].btimer)
	.loc 1 1132 24
	movl	-24(%rbp), %eax	# i, tmp197
	cltq
	salq	$5, %rax	#, tmp196
	movq	%rax, %rdx	# tmp196, tmp198
	leaq	16+buttonlist(%rip), %rax	#, tmp199
	movl	(%rdx,%rax), %eax	# buttonlist[i_75].btimer, _44
# p_spec.c:1132: 	    if (!buttonlist[i].btimer)
	.loc 1 1132 9
	testl	%eax, %eax	# _44
	jne	.L209	#,
# p_spec.c:1134: 		switch(buttonlist[i].where)
	.loc 1 1134 23
	movl	-24(%rbp), %eax	# i, tmp201
	cltq
	salq	$5, %rax	#, tmp200
	movq	%rax, %rdx	# tmp200, tmp202
	leaq	8+buttonlist(%rip), %rax	#, tmp203
	movl	(%rdx,%rax), %eax	# buttonlist[i_75].where, _45
# p_spec.c:1134: 		switch(buttonlist[i].where)
	.loc 1 1134 3
	cmpl	$2, %eax	#, _45
	je	.L210	#,
	cmpl	$2, %eax	#, _45
	ja	.L211	#,
	testl	%eax, %eax	# _45
	je	.L212	#,
	cmpl	$1, %eax	#, _45
	je	.L213	#,
	jmp	.L211	#
.L212:
# p_spec.c:1138: 			buttonlist[i].btexture;
	.loc 1 1138 17
	movl	-24(%rbp), %eax	# i, tmp205
	cltq
	salq	$5, %rax	#, tmp204
	movq	%rax, %rdx	# tmp204, tmp206
	leaq	12+buttonlist(%rip), %rax	#, tmp207
	movl	(%rdx,%rax), %esi	# buttonlist[i_75].btexture, _46
# p_spec.c:1137: 		    sides[buttonlist[i].line->sidenum[0]].toptexture =
	.loc 1 1137 12
	movq	sides(%rip), %rcx	# sides, sides.35_47
# p_spec.c:1137: 		    sides[buttonlist[i].line->sidenum[0]].toptexture =
	.loc 1 1137 26
	movl	-24(%rbp), %eax	# i, tmp209
	cltq
	salq	$5, %rax	#, tmp208
	movq	%rax, %rdx	# tmp208, tmp210
	leaq	buttonlist(%rip), %rax	#, tmp211
	movq	(%rdx,%rax), %rax	# buttonlist[i_75].line, _48
# p_spec.c:1137: 		    sides[buttonlist[i].line->sidenum[0]].toptexture =
	.loc 1 1137 40
	movzwl	30(%rax), %eax	# _48->sidenum[0], _49
	movswq	%ax, %rdx	# _49, _50
# p_spec.c:1137: 		    sides[buttonlist[i].line->sidenum[0]].toptexture =
	.loc 1 1137 12
	movq	%rdx, %rax	# _50, tmp212
	addq	%rax, %rax	# tmp212
	addq	%rdx, %rax	# _50, tmp212
	salq	$3, %rax	#, tmp213
	addq	%rcx, %rax	# sides.35_47, _52
# p_spec.c:1137: 		    sides[buttonlist[i].line->sidenum[0]].toptexture =
	.loc 1 1137 56
	movl	%esi, %edx	# _46, _53
	movw	%dx, 8(%rax)	# _53, _52->toptexture
# p_spec.c:1139: 		    break;
	.loc 1 1139 7
	jmp	.L211	#
.L213:
# p_spec.c:1143: 			buttonlist[i].btexture;
	.loc 1 1143 17
	movl	-24(%rbp), %eax	# i, tmp215
	cltq
	salq	$5, %rax	#, tmp214
	movq	%rax, %rdx	# tmp214, tmp216
	leaq	12+buttonlist(%rip), %rax	#, tmp217
	movl	(%rdx,%rax), %esi	# buttonlist[i_75].btexture, _54
# p_spec.c:1142: 		    sides[buttonlist[i].line->sidenum[0]].midtexture =
	.loc 1 1142 12
	movq	sides(%rip), %rcx	# sides, sides.36_55
# p_spec.c:1142: 		    sides[buttonlist[i].line->sidenum[0]].midtexture =
	.loc 1 1142 26
	movl	-24(%rbp), %eax	# i, tmp219
	cltq
	salq	$5, %rax	#, tmp218
	movq	%rax, %rdx	# tmp218, tmp220
	leaq	buttonlist(%rip), %rax	#, tmp221
	movq	(%rdx,%rax), %rax	# buttonlist[i_75].line, _56
# p_spec.c:1142: 		    sides[buttonlist[i].line->sidenum[0]].midtexture =
	.loc 1 1142 40
	movzwl	30(%rax), %eax	# _56->sidenum[0], _57
	movswq	%ax, %rdx	# _57, _58
# p_spec.c:1142: 		    sides[buttonlist[i].line->sidenum[0]].midtexture =
	.loc 1 1142 12
	movq	%rdx, %rax	# _58, tmp222
	addq	%rax, %rax	# tmp222
	addq	%rdx, %rax	# _58, tmp222
	salq	$3, %rax	#, tmp223
	addq	%rcx, %rax	# sides.36_55, _60
# p_spec.c:1142: 		    sides[buttonlist[i].line->sidenum[0]].midtexture =
	.loc 1 1142 56
	movl	%esi, %edx	# _54, _61
	movw	%dx, 12(%rax)	# _61, _60->midtexture
# p_spec.c:1144: 		    break;
	.loc 1 1144 7
	jmp	.L211	#
.L210:
# p_spec.c:1148: 			buttonlist[i].btexture;
	.loc 1 1148 17
	movl	-24(%rbp), %eax	# i, tmp225
	cltq
	salq	$5, %rax	#, tmp224
	movq	%rax, %rdx	# tmp224, tmp226
	leaq	12+buttonlist(%rip), %rax	#, tmp227
	movl	(%rdx,%rax), %esi	# buttonlist[i_75].btexture, _62
# p_spec.c:1147: 		    sides[buttonlist[i].line->sidenum[0]].bottomtexture =
	.loc 1 1147 12
	movq	sides(%rip), %rcx	# sides, sides.37_63
# p_spec.c:1147: 		    sides[buttonlist[i].line->sidenum[0]].bottomtexture =
	.loc 1 1147 26
	movl	-24(%rbp), %eax	# i, tmp229
	cltq
	salq	$5, %rax	#, tmp228
	movq	%rax, %rdx	# tmp228, tmp230
	leaq	buttonlist(%rip), %rax	#, tmp231
	movq	(%rdx,%rax), %rax	# buttonlist[i_75].line, _64
# p_spec.c:1147: 		    sides[buttonlist[i].line->sidenum[0]].bottomtexture =
	.loc 1 1147 40
	movzwl	30(%rax), %eax	# _64->sidenum[0], _65
	movswq	%ax, %rdx	# _65, _66
# p_spec.c:1147: 		    sides[buttonlist[i].line->sidenum[0]].bottomtexture =
	.loc 1 1147 12
	movq	%rdx, %rax	# _66, tmp232
	addq	%rax, %rax	# tmp232
	addq	%rdx, %rax	# _66, tmp232
	salq	$3, %rax	#, tmp233
	addq	%rcx, %rax	# sides.37_63, _68
# p_spec.c:1147: 		    sides[buttonlist[i].line->sidenum[0]].bottomtexture =
	.loc 1 1147 59
	movl	%esi, %edx	# _62, _69
	movw	%dx, 10(%rax)	# _69, _68->bottomtexture
# p_spec.c:1149: 		    break;
	.loc 1 1149 7
	nop	
.L211:
# p_spec.c:1151: 		S_StartSound((mobj_t *)&buttonlist[i].soundorg,sfx_swtchn);
	.loc 1 1151 26
	movl	-24(%rbp), %eax	# i, tmp235
	cltq
	salq	$5, %rax	#, tmp236
	leaq	16(%rax), %rdx	#, tmp237
	leaq	buttonlist(%rip), %rax	#, tmp239
	addq	%rdx, %rax	# tmp237, tmp238
	addq	$8, %rax	#, _70
# p_spec.c:1151: 		S_StartSound((mobj_t *)&buttonlist[i].soundorg,sfx_swtchn);
	.loc 1 1151 3
	movl	$23, %esi	#,
	movq	%rax, %rdi	# _70,
	call	S_StartSound@PLT	#
# p_spec.c:1152: 		memset(&buttonlist[i],0,sizeof(button_t));
	.loc 1 1152 10
	movl	-24(%rbp), %eax	# i, tmp241
	cltq
	salq	$5, %rax	#, tmp240
	movq	%rax, %rdx	# tmp240, tmp242
	leaq	buttonlist(%rip), %rax	#, tmp243
	addq	%rdx, %rax	# tmp242, _71
# p_spec.c:1152: 		memset(&buttonlist[i],0,sizeof(button_t));
	.loc 1 1152 3
	movl	$32, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _71,
	call	memset@PLT	#
.L209:
# p_spec.c:1128:     for (i = 0; i < MAXBUTTONS; i++)
	.loc 1 1128 34 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L208:
# p_spec.c:1128:     for (i = 0; i < MAXBUTTONS; i++)
	.loc 1 1128 19 discriminator 1
	cmpl	$15, -24(%rbp)	#, i
	jle	.L214	#,
# p_spec.c:1156: }
	.loc 1 1156 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	P_UpdateSpecials, .-P_UpdateSpecials
	.globl	EV_DoDonut
	.type	EV_DoDonut, @function
EV_DoDonut:
.LFB22:
	.loc 1 1164 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# line, line
# p_spec.c:1173:     secnum = -1;
	.loc 1 1173 12
	movl	$-1, -44(%rbp)	#, secnum
# p_spec.c:1174:     rtn = 0;
	.loc 1 1174 9
	movl	$0, -40(%rbp)	#, rtn
# p_spec.c:1175:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 1175 11
	jmp	.L216	#
.L223:
# p_spec.c:1177: 	s1 = &sectors[secnum];
	.loc 1 1177 7
	movq	sectors(%rip), %rax	# sectors, sectors.38_1
# p_spec.c:1177: 	s1 = &sectors[secnum];
	.loc 1 1177 15
	movl	-44(%rbp), %edx	# secnum, tmp107
	movslq	%edx, %rdx	# tmp107, _2
	salq	$7, %rdx	#, _3
# p_spec.c:1177: 	s1 = &sectors[secnum];
	.loc 1 1177 5
	addq	%rdx, %rax	# _3, tmp108
	movq	%rax, -32(%rbp)	# tmp108, s1
# p_spec.c:1180: 	if (s1->specialdata)
	.loc 1 1180 8
	movq	-32(%rbp), %rax	# s1, tmp109
	movq	104(%rax), %rax	# s1_35->specialdata, _4
# p_spec.c:1180: 	if (s1->specialdata)
	.loc 1 1180 5
	testq	%rax, %rax	# _4
	jne	.L226	#,
# p_spec.c:1183: 	rtn = 1;
	.loc 1 1183 6
	movl	$1, -40(%rbp)	#, rtn
# p_spec.c:1184: 	s2 = getNextSector(s1->lines[0],s1);
	.loc 1 1184 23
	movq	-32(%rbp), %rax	# s1, tmp110
	movq	120(%rax), %rax	# s1_35->lines, _5
# p_spec.c:1184: 	s2 = getNextSector(s1->lines[0],s1);
	.loc 1 1184 7
	movq	(%rax), %rax	# *_5, _6
	movq	-32(%rbp), %rdx	# s1, tmp111
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# _6,
	call	getNextSector	#
	movq	%rax, -24(%rbp)	# tmp112, s2
# p_spec.c:1185: 	for (i = 0;i < s2->linecount;i++)
	.loc 1 1185 9
	movl	$0, -36(%rbp)	#, i
# p_spec.c:1185: 	for (i = 0;i < s2->linecount;i++)
	.loc 1 1185 2
	jmp	.L219	#
.L222:
# p_spec.c:1188: 		(s2->lines[i]->backsector == s1))
	.loc 1 1188 6
	movq	-24(%rbp), %rax	# s2, tmp113
	movq	120(%rax), %rax	# s2_38->lines, _7
# p_spec.c:1188: 		(s2->lines[i]->backsector == s1))
	.loc 1 1188 13
	movl	-36(%rbp), %edx	# i, tmp114
	movslq	%edx, %rdx	# tmp114, _8
	salq	$3, %rdx	#, _9
	addq	%rdx, %rax	# _9, _10
	movq	(%rax), %rax	# *_10, _11
# p_spec.c:1188: 		(s2->lines[i]->backsector == s1))
	.loc 1 1188 16
	movq	64(%rax), %rax	# _11->backsector, _12
# p_spec.c:1187: 	    if ((!s2->lines[i]->flags & ML_TWOSIDED) ||
	.loc 1 1187 9
	cmpq	%rax, -32(%rbp)	# _12, s1
	je	.L227	#,
# p_spec.c:1190: 	    s3 = s2->lines[i]->backsector;
	.loc 1 1190 13
	movq	-24(%rbp), %rax	# s2, tmp115
	movq	120(%rax), %rax	# s2_38->lines, _13
# p_spec.c:1190: 	    s3 = s2->lines[i]->backsector;
	.loc 1 1190 20
	movl	-36(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, _14
	salq	$3, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
	movq	(%rax), %rax	# *_16, _17
# p_spec.c:1190: 	    s3 = s2->lines[i]->backsector;
	.loc 1 1190 9
	movq	64(%rax), %rax	# _17->backsector, tmp117
	movq	%rax, -16(%rbp)	# tmp117, s3
# p_spec.c:1193: 	    floor = Z_Malloc (sizeof(*floor), PU_LEVSPEC, 0);
	.loc 1 1193 14
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$64, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp118, floor
# p_spec.c:1194: 	    P_AddThinker (&floor->thinker);
	.loc 1 1194 6
	movq	-8(%rbp), %rax	# floor, _18
	movq	%rax, %rdi	# _18,
	call	P_AddThinker@PLT	#
# p_spec.c:1195: 	    s2->specialdata = floor;
	.loc 1 1195 22
	movq	-24(%rbp), %rax	# s2, tmp119
	movq	-8(%rbp), %rdx	# floor, tmp120
	movq	%rdx, 104(%rax)	# tmp120, s2_38->specialdata
# p_spec.c:1196: 	    floor->thinker.function.acp1 = (actionf_p1) T_MoveFloor;
	.loc 1 1196 35
	movq	-8(%rbp), %rax	# floor, tmp121
	movq	T_MoveFloor@GOTPCREL(%rip), %rdx	#, tmp123
	movq	%rdx, 16(%rax)	# tmp122, floor_42->thinker.function.acp1
# p_spec.c:1197: 	    floor->type = donutRaise;
	.loc 1 1197 18
	movq	-8(%rbp), %rax	# floor, tmp124
	movl	$11, 24(%rax)	#, floor_42->type
# p_spec.c:1198: 	    floor->crush = false;
	.loc 1 1198 19
	movq	-8(%rbp), %rax	# floor, tmp125
	movl	$0, 28(%rax)	#, floor_42->crush
# p_spec.c:1199: 	    floor->direction = 1;
	.loc 1 1199 23
	movq	-8(%rbp), %rax	# floor, tmp126
	movl	$1, 40(%rax)	#, floor_42->direction
# p_spec.c:1200: 	    floor->sector = s2;
	.loc 1 1200 20
	movq	-8(%rbp), %rax	# floor, tmp127
	movq	-24(%rbp), %rdx	# s2, tmp128
	movq	%rdx, 32(%rax)	# tmp128, floor_42->sector
# p_spec.c:1201: 	    floor->speed = FLOORSPEED / 2;
	.loc 1 1201 19
	movq	-8(%rbp), %rax	# floor, tmp129
	movl	$32768, 56(%rax)	#, floor_42->speed
# p_spec.c:1202: 	    floor->texture = s3->floorpic;
	.loc 1 1202 25
	movq	-16(%rbp), %rax	# s3, tmp130
	movzwl	8(%rax), %edx	# s3_40->floorpic, _19
# p_spec.c:1202: 	    floor->texture = s3->floorpic;
	.loc 1 1202 21
	movq	-8(%rbp), %rax	# floor, tmp131
	movw	%dx, 48(%rax)	# _19, floor_42->texture
# p_spec.c:1203: 	    floor->newspecial = 0;
	.loc 1 1203 24
	movq	-8(%rbp), %rax	# floor, tmp132
	movl	$0, 44(%rax)	#, floor_42->newspecial
# p_spec.c:1204: 	    floor->floordestheight = s3->floorheight;
	.loc 1 1204 33
	movq	-16(%rbp), %rax	# s3, tmp133
	movl	(%rax), %edx	# s3_40->floorheight, _20
# p_spec.c:1204: 	    floor->floordestheight = s3->floorheight;
	.loc 1 1204 29
	movq	-8(%rbp), %rax	# floor, tmp134
	movl	%edx, 52(%rax)	# _20, floor_42->floordestheight
# p_spec.c:1207: 	    floor = Z_Malloc (sizeof(*floor), PU_LEVSPEC, 0);
	.loc 1 1207 14
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$64, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp135, floor
# p_spec.c:1208: 	    P_AddThinker (&floor->thinker);
	.loc 1 1208 6
	movq	-8(%rbp), %rax	# floor, _21
	movq	%rax, %rdi	# _21,
	call	P_AddThinker@PLT	#
# p_spec.c:1209: 	    s1->specialdata = floor;
	.loc 1 1209 22
	movq	-32(%rbp), %rax	# s1, tmp136
	movq	-8(%rbp), %rdx	# floor, tmp137
	movq	%rdx, 104(%rax)	# tmp137, s1_35->specialdata
# p_spec.c:1210: 	    floor->thinker.function.acp1 = (actionf_p1) T_MoveFloor;
	.loc 1 1210 35
	movq	-8(%rbp), %rax	# floor, tmp138
	movq	T_MoveFloor@GOTPCREL(%rip), %rdx	#, tmp140
	movq	%rdx, 16(%rax)	# tmp139, floor_55->thinker.function.acp1
# p_spec.c:1211: 	    floor->type = lowerFloor;
	.loc 1 1211 18
	movq	-8(%rbp), %rax	# floor, tmp141
	movl	$0, 24(%rax)	#, floor_55->type
# p_spec.c:1212: 	    floor->crush = false;
	.loc 1 1212 19
	movq	-8(%rbp), %rax	# floor, tmp142
	movl	$0, 28(%rax)	#, floor_55->crush
# p_spec.c:1213: 	    floor->direction = -1;
	.loc 1 1213 23
	movq	-8(%rbp), %rax	# floor, tmp143
	movl	$-1, 40(%rax)	#, floor_55->direction
# p_spec.c:1214: 	    floor->sector = s1;
	.loc 1 1214 20
	movq	-8(%rbp), %rax	# floor, tmp144
	movq	-32(%rbp), %rdx	# s1, tmp145
	movq	%rdx, 32(%rax)	# tmp145, floor_55->sector
# p_spec.c:1215: 	    floor->speed = FLOORSPEED / 2;
	.loc 1 1215 19
	movq	-8(%rbp), %rax	# floor, tmp146
	movl	$32768, 56(%rax)	#, floor_55->speed
# p_spec.c:1216: 	    floor->floordestheight = s3->floorheight;
	.loc 1 1216 33
	movq	-16(%rbp), %rax	# s3, tmp147
	movl	(%rax), %edx	# s3_40->floorheight, _22
# p_spec.c:1216: 	    floor->floordestheight = s3->floorheight;
	.loc 1 1216 29
	movq	-8(%rbp), %rax	# floor, tmp148
	movl	%edx, 52(%rax)	# _22, floor_55->floordestheight
# p_spec.c:1217: 	    break;
	.loc 1 1217 6
	jmp	.L216	#
.L227:
# p_spec.c:1189: 		continue;
	.loc 1 1189 3
	nop	
# p_spec.c:1185: 	for (i = 0;i < s2->linecount;i++)
	.loc 1 1185 32 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L219:
# p_spec.c:1185: 	for (i = 0;i < s2->linecount;i++)
	.loc 1 1185 19 discriminator 1
	movq	-24(%rbp), %rax	# s2, tmp149
	movl	112(%rax), %eax	# s2_38->linecount, _23
# p_spec.c:1185: 	for (i = 0;i < s2->linecount;i++)
	.loc 1 1185 15 discriminator 1
	cmpl	%eax, -36(%rbp)	# _23, i
	jl	.L222	#,
	jmp	.L216	#
.L226:
# p_spec.c:1181: 	    continue;
	.loc 1 1181 6
	nop	
.L216:
# p_spec.c:1175:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 1175 22
	movl	-44(%rbp), %edx	# secnum, tmp150
	movq	-56(%rbp), %rax	# line, tmp151
	movl	%edx, %esi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	P_FindSectorFromLineTag	#
	movl	%eax, -44(%rbp)	# tmp152, secnum
# p_spec.c:1175:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 1175 60 discriminator 1
	cmpl	$0, -44(%rbp)	#, secnum
	jns	.L223	#,
# p_spec.c:1220:     return rtn;
	.loc 1 1220 12
	movl	-40(%rbp), %eax	# rtn, _34
# p_spec.c:1221: }
	.loc 1 1221 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	EV_DoDonut, .-EV_DoDonut
	.globl	numlinespecials
	.bss
	.align 2
	.type	numlinespecials, @object
	.size	numlinespecials, 2
numlinespecials:
	.zero	2
	.globl	linespeciallist
	.align 32
	.type	linespeciallist, @object
	.size	linespeciallist, 512
linespeciallist:
	.zero	512
	.section	.rodata
.LC3:
	.string	"texture2"
.LC4:
	.string	"-avg"
.LC5:
	.string	"-timer"
	.text
	.globl	P_SpawnSpecials
	.type	P_SpawnSpecials, @function
P_SpawnSpecials:
.LFB23:
	.loc 1 1240 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# p_spec.c:1245:     episode = 1;
	.loc 1 1245 13
	movl	$1, -16(%rbp)	#, episode
# p_spec.c:1246:     if (W_CheckNumForName("texture2") >= 0)
	.loc 1 1246 9
	leaq	.LC3(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	W_CheckNumForName@PLT	#
# p_spec.c:1246:     if (W_CheckNumForName("texture2") >= 0)
	.loc 1 1246 8 discriminator 1
	testl	%eax, %eax	# _1
	js	.L229	#,
# p_spec.c:1247: 	episode = 2;
	.loc 1 1247 10
	movl	$2, -16(%rbp)	#, episode
.L229:
# p_spec.c:1251:     levelTimer = false;
	.loc 1 1251 16
	movl	$0, levelTimer(%rip)	#, levelTimer
# p_spec.c:1253:     i = M_CheckParm("-avg");
	.loc 1 1253 9
	leaq	.LC4(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	M_CheckParm@PLT	#
	movl	%eax, -20(%rbp)	# tmp118, i
# p_spec.c:1254:     if (i && deathmatch)
	.loc 1 1254 8
	cmpl	$0, -20(%rbp)	#, i
	je	.L230	#,
# p_spec.c:1254:     if (i && deathmatch)
	.loc 1 1254 11 discriminator 1
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.39_2
	testl	%eax, %eax	# deathmatch.39_2
	je	.L230	#,
# p_spec.c:1256: 	levelTimer = true;
	.loc 1 1256 13
	movl	$1, levelTimer(%rip)	#, levelTimer
# p_spec.c:1257: 	levelTimeCount = 20 * 60 * 35;
	.loc 1 1257 17
	movl	$42000, levelTimeCount(%rip)	#, levelTimeCount
.L230:
# p_spec.c:1260:     i = M_CheckParm("-timer");
	.loc 1 1260 9
	leaq	.LC5(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	M_CheckParm@PLT	#
	movl	%eax, -20(%rbp)	# tmp120, i
# p_spec.c:1261:     if (i && deathmatch)
	.loc 1 1261 8
	cmpl	$0, -20(%rbp)	#, i
	je	.L231	#,
# p_spec.c:1261:     if (i && deathmatch)
	.loc 1 1261 11 discriminator 1
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.40_3
	testl	%eax, %eax	# deathmatch.40_3
	je	.L231	#,
.LBB2:
# p_spec.c:1264: 	time = atoi(myargv[i+1]) * 60 * 35;
	.loc 1 1264 20
	movq	myargv(%rip), %rax	# myargv, myargv.41_4
	movl	-20(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, _5
	addq	$1, %rdx	#, _6
	salq	$3, %rdx	#, _7
	addq	%rdx, %rax	# _7, _8
# p_spec.c:1264: 	time = atoi(myargv[i+1]) * 60 * 35;
	.loc 1 1264 9
	movq	(%rax), %rax	# *_8, _9
	movq	%rax, %rdi	# _9,
	call	atoi@PLT	#
# p_spec.c:1264: 	time = atoi(myargv[i+1]) * 60 * 35;
	.loc 1 1264 7 discriminator 1
	imull	$2100, %eax, %eax	#, _10, tmp122
	movl	%eax, -12(%rbp)	# tmp122, time
# p_spec.c:1265: 	levelTimer = true;
	.loc 1 1265 13
	movl	$1, levelTimer(%rip)	#, levelTimer
# p_spec.c:1266: 	levelTimeCount = time;
	.loc 1 1266 17
	movl	-12(%rbp), %eax	# time, tmp123
	movl	%eax, levelTimeCount(%rip)	# tmp123, levelTimeCount
.L231:
.LBE2:
# p_spec.c:1270:     sector = sectors;
	.loc 1 1270 12
	movq	sectors(%rip), %rax	# sectors, tmp124
	movq	%rax, -8(%rbp)	# tmp124, sector
# p_spec.c:1271:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 1271 11
	movl	$0, -20(%rbp)	#, i
# p_spec.c:1271:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 1271 5
	jmp	.L232	#
.L247:
# p_spec.c:1273: 	if (!sector->special)
	.loc 1 1273 13
	movq	-8(%rbp), %rax	# sector, tmp125
	movzwl	14(%rax), %eax	# sector_36->special, _11
# p_spec.c:1273: 	if (!sector->special)
	.loc 1 1273 5
	testw	%ax, %ax	# _11
	je	.L257	#,
# p_spec.c:1276: 	switch (sector->special)
	.loc 1 1276 16
	movq	-8(%rbp), %rax	# sector, tmp126
	movzwl	14(%rax), %eax	# sector_36->special, _12
	cwtl
# p_spec.c:1276: 	switch (sector->special)
	.loc 1 1276 2
	cmpl	$17, %eax	#, _13
	ja	.L234	#,
	movl	%eax, %eax	# _13, tmp127
	leaq	0(,%rax,4), %rdx	#, tmp128
	leaq	.L236(%rip), %rax	#, tmp129
	movl	(%rdx,%rax), %eax	#, tmp130
	cltq
	leaq	.L236(%rip), %rdx	#, tmp133
	addq	%rdx, %rax	# tmp133, tmp132
	notrack jmp	*%rax	# tmp132
	.section	.rodata
	.align 4
	.align 4
.L236:
	.long	.L234-.L236
	.long	.L246-.L236
	.long	.L245-.L236
	.long	.L244-.L236
	.long	.L243-.L236
	.long	.L234-.L236
	.long	.L234-.L236
	.long	.L234-.L236
	.long	.L242-.L236
	.long	.L241-.L236
	.long	.L240-.L236
	.long	.L234-.L236
	.long	.L239-.L236
	.long	.L238-.L236
	.long	.L237-.L236
	.long	.L234-.L236
	.long	.L234-.L236
	.long	.L235-.L236
	.text
.L246:
# p_spec.c:1280: 	    P_SpawnLightFlash (sector);
	.loc 1 1280 6
	movq	-8(%rbp), %rax	# sector, tmp134
	movq	%rax, %rdi	# tmp134,
	call	P_SpawnLightFlash@PLT	#
# p_spec.c:1281: 	    break;
	.loc 1 1281 6
	jmp	.L234	#
.L245:
# p_spec.c:1285: 	    P_SpawnStrobeFlash(sector,FASTDARK,0);
	.loc 1 1285 6
	movq	-8(%rbp), %rax	# sector, tmp135
	movl	$0, %edx	#,
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	P_SpawnStrobeFlash@PLT	#
# p_spec.c:1286: 	    break;
	.loc 1 1286 6
	jmp	.L234	#
.L244:
# p_spec.c:1290: 	    P_SpawnStrobeFlash(sector,SLOWDARK,0);
	.loc 1 1290 6
	movq	-8(%rbp), %rax	# sector, tmp136
	movl	$0, %edx	#,
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	P_SpawnStrobeFlash@PLT	#
# p_spec.c:1291: 	    break;
	.loc 1 1291 6
	jmp	.L234	#
.L243:
# p_spec.c:1295: 	    P_SpawnStrobeFlash(sector,FASTDARK,0);
	.loc 1 1295 6
	movq	-8(%rbp), %rax	# sector, tmp137
	movl	$0, %edx	#,
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	P_SpawnStrobeFlash@PLT	#
# p_spec.c:1296: 	    sector->special = 4;
	.loc 1 1296 22
	movq	-8(%rbp), %rax	# sector, tmp138
	movw	$4, 14(%rax)	#, sector_36->special
# p_spec.c:1297: 	    break;
	.loc 1 1297 6
	jmp	.L234	#
.L242:
# p_spec.c:1301: 	    P_SpawnGlowingLight(sector);
	.loc 1 1301 6
	movq	-8(%rbp), %rax	# sector, tmp139
	movq	%rax, %rdi	# tmp139,
	call	P_SpawnGlowingLight@PLT	#
# p_spec.c:1302: 	    break;
	.loc 1 1302 6
	jmp	.L234	#
.L241:
# p_spec.c:1305: 	    totalsecret++;
	.loc 1 1305 17
	movl	totalsecret(%rip), %eax	# totalsecret, totalsecret.42_14
	addl	$1, %eax	#, _15
	movl	%eax, totalsecret(%rip)	# _15, totalsecret
# p_spec.c:1306: 	    break;
	.loc 1 1306 6
	jmp	.L234	#
.L240:
# p_spec.c:1310: 	    P_SpawnDoorCloseIn30 (sector);
	.loc 1 1310 6
	movq	-8(%rbp), %rax	# sector, tmp140
	movq	%rax, %rdi	# tmp140,
	call	P_SpawnDoorCloseIn30@PLT	#
# p_spec.c:1311: 	    break;
	.loc 1 1311 6
	jmp	.L234	#
.L239:
# p_spec.c:1315: 	    P_SpawnStrobeFlash (sector, SLOWDARK, 1);
	.loc 1 1315 6
	movq	-8(%rbp), %rax	# sector, tmp141
	movl	$1, %edx	#,
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	P_SpawnStrobeFlash@PLT	#
# p_spec.c:1316: 	    break;
	.loc 1 1316 6
	jmp	.L234	#
.L238:
# p_spec.c:1320: 	    P_SpawnStrobeFlash (sector, FASTDARK, 1);
	.loc 1 1320 6
	movq	-8(%rbp), %rax	# sector, tmp142
	movl	$1, %edx	#,
	movl	$15, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	P_SpawnStrobeFlash@PLT	#
# p_spec.c:1321: 	    break;
	.loc 1 1321 6
	jmp	.L234	#
.L237:
# p_spec.c:1325: 	    P_SpawnDoorRaiseIn5Mins (sector, i);
	.loc 1 1325 6
	movl	-20(%rbp), %edx	# i, tmp143
	movq	-8(%rbp), %rax	# sector, tmp144
	movl	%edx, %esi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	P_SpawnDoorRaiseIn5Mins@PLT	#
# p_spec.c:1326: 	    break;
	.loc 1 1326 6
	jmp	.L234	#
.L235:
# p_spec.c:1329: 	    P_SpawnFireFlicker(sector);
	.loc 1 1329 6
	movq	-8(%rbp), %rax	# sector, tmp145
	movq	%rax, %rdi	# tmp145,
	call	P_SpawnFireFlicker@PLT	#
# p_spec.c:1330: 	    break;
	.loc 1 1330 6
	jmp	.L234	#
.L257:
# p_spec.c:1274: 	    continue;
	.loc 1 1274 6
	nop	
.L234:
# p_spec.c:1271:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 1271 32 discriminator 2
	addl	$1, -20(%rbp)	#, i
# p_spec.c:1271:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 1271 42 discriminator 2
	subq	$-128, -8(%rbp)	#, sector
.L232:
# p_spec.c:1271:     for (i=0 ; i<numsectors ; i++, sector++)
	.loc 1 1271 17 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.43_16
	cmpl	%eax, -20(%rbp)	# numsectors.43_16, i
	jl	.L247	#,
# p_spec.c:1336:     numlinespecials = 0;
	.loc 1 1336 21
	movw	$0, numlinespecials(%rip)	#, numlinespecials
# p_spec.c:1337:     for (i = 0;i < numlines; i++)
	.loc 1 1337 12
	movl	$0, -20(%rbp)	#, i
# p_spec.c:1337:     for (i = 0;i < numlines; i++)
	.loc 1 1337 5
	jmp	.L248	#
.L250:
# p_spec.c:1339: 	switch(lines[i].special)
	.loc 1 1339 14
	movq	lines(%rip), %rcx	# lines, lines.44_17
	movl	-20(%rbp), %eax	# i, tmp146
	movslq	%eax, %rdx	# tmp146, _18
	movq	%rdx, %rax	# _18, tmp147
	salq	$2, %rax	#, tmp147
	addq	%rdx, %rax	# _18, tmp147
	addq	%rax, %rax	# tmp147
	addq	%rdx, %rax	# _18, tmp147
	salq	$3, %rax	#, tmp148
	addq	%rcx, %rax	# lines.44_17, _20
# p_spec.c:1339: 	switch(lines[i].special)
	.loc 1 1339 17
	movzwl	26(%rax), %eax	# _20->special, _21
	cwtl
# p_spec.c:1339: 	switch(lines[i].special)
	.loc 1 1339 2
	cmpl	$48, %eax	#, _22
	jne	.L249	#,
# p_spec.c:1343: 	    linespeciallist[numlinespecials] = &lines[i];
	.loc 1 1343 41
	movq	lines(%rip), %rcx	# lines, lines.45_23
# p_spec.c:1343: 	    linespeciallist[numlinespecials] = &lines[i];
	.loc 1 1343 47
	movl	-20(%rbp), %eax	# i, tmp149
	movslq	%eax, %rdx	# tmp149, _24
	movq	%rdx, %rax	# _24, tmp150
	salq	$2, %rax	#, tmp150
	addq	%rdx, %rax	# _24, tmp150
	addq	%rax, %rax	# tmp150
	addq	%rdx, %rax	# _24, tmp150
	salq	$3, %rax	#, tmp151
	movq	%rax, %rdx	# tmp150, _25
# p_spec.c:1343: 	    linespeciallist[numlinespecials] = &lines[i];
	.loc 1 1343 21
	movzwl	numlinespecials(%rip), %eax	# numlinespecials, numlinespecials.46_26
	cwtl
# p_spec.c:1343: 	    linespeciallist[numlinespecials] = &lines[i];
	.loc 1 1343 41
	addq	%rdx, %rcx	# _25, _28
# p_spec.c:1343: 	    linespeciallist[numlinespecials] = &lines[i];
	.loc 1 1343 39
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp153
	leaq	linespeciallist(%rip), %rax	#, tmp154
	movq	%rcx, (%rdx,%rax)	# _28, linespeciallist[_27]
# p_spec.c:1344: 	    numlinespecials++;
	.loc 1 1344 21
	movzwl	numlinespecials(%rip), %eax	# numlinespecials, numlinespecials.47_29
	addl	$1, %eax	#, _32
	movw	%ax, numlinespecials(%rip)	# _33, numlinespecials
# p_spec.c:1345: 	    break;
	.loc 1 1345 6
	nop	
.L249:
# p_spec.c:1337:     for (i = 0;i < numlines; i++)
	.loc 1 1337 31 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L248:
# p_spec.c:1337:     for (i = 0;i < numlines; i++)
	.loc 1 1337 18 discriminator 1
	movl	numlines(%rip), %eax	# numlines, numlines.50_34
	cmpl	%eax, -20(%rbp)	# numlines.50_34, i
	jl	.L250	#,
# p_spec.c:1351:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 1351 12
	movl	$0, -20(%rbp)	#, i
# p_spec.c:1351:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 1351 5
	jmp	.L251	#
.L252:
# p_spec.c:1352: 	activeceilings[i] = NULL;
	.loc 1 1352 20
	movl	-20(%rbp), %eax	# i, tmp156
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp157
	leaq	activeceilings(%rip), %rax	#, tmp158
	movq	$0, (%rdx,%rax)	#, activeceilings[i_39]
# p_spec.c:1351:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 1351 33 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L251:
# p_spec.c:1351:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 1351 18 discriminator 1
	cmpl	$29, -20(%rbp)	#, i
	jle	.L252	#,
# p_spec.c:1354:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 1354 12
	movl	$0, -20(%rbp)	#, i
# p_spec.c:1354:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 1354 5
	jmp	.L253	#
.L254:
# p_spec.c:1355: 	activeplats[i] = NULL;
	.loc 1 1355 17
	movl	-20(%rbp), %eax	# i, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp161
	leaq	activeplats(%rip), %rax	#, tmp162
	movq	$0, (%rdx,%rax)	#, activeplats[i_40]
# p_spec.c:1354:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 1354 30 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L253:
# p_spec.c:1354:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 1354 18 discriminator 1
	cmpl	$29, -20(%rbp)	#, i
	jle	.L254	#,
# p_spec.c:1357:     for (i = 0;i < MAXBUTTONS;i++)
	.loc 1 1357 12
	movl	$0, -20(%rbp)	#, i
# p_spec.c:1357:     for (i = 0;i < MAXBUTTONS;i++)
	.loc 1 1357 5
	jmp	.L255	#
.L256:
# p_spec.c:1358: 	memset(&buttonlist[i],0,sizeof(button_t));
	.loc 1 1358 9
	movl	-20(%rbp), %eax	# i, tmp164
	cltq
	salq	$5, %rax	#, tmp163
	movq	%rax, %rdx	# tmp163, tmp165
	leaq	buttonlist(%rip), %rax	#, tmp166
	addq	%rdx, %rax	# tmp165, _35
# p_spec.c:1358: 	memset(&buttonlist[i],0,sizeof(button_t));
	.loc 1 1358 2
	movl	$32, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _35,
	call	memset@PLT	#
# p_spec.c:1357:     for (i = 0;i < MAXBUTTONS;i++)
	.loc 1 1357 32 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L255:
# p_spec.c:1357:     for (i = 0;i < MAXBUTTONS;i++)
	.loc 1 1357 18 discriminator 1
	cmpl	$15, -20(%rbp)	#, i
	jle	.L256	#,
# p_spec.c:1362: }
	.loc 1 1362 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	P_SpawnSpecials, .-P_SpawnSpecials
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "doomdef.h"
	.file 7 "doomtype.h"
	.file 8 "doomdata.h"
	.file 9 "m_fixed.h"
	.file 10 "tables.h"
	.file 11 "d_think.h"
	.file 12 "info.h"
	.file 13 "p_pspr.h"
	.file 14 "p_mobj.h"
	.file 15 "r_defs.h"
	.file 16 "d_player.h"
	.file 17 "d_ticcmd.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "doomstat.h"
	.file 20 "m_argv.h"
	.file 21 "r_state.h"
	.file 22 "p_spec.h"
	.file 23 "sounds.h"
	.file 24 "/usr/include/stdlib.h"
	.file 25 "p_local.h"
	.file 26 "z_zone.h"
	.file 27 "/usr/include/string.h"
	.file 28 "s_sound.h"
	.file 29 "g_game.h"
	.file 30 "i_system.h"
	.file 31 "r_data.h"
	.file 32 "w_wad.h"
	.file 33 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x42b0
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2c
	.long	.LASF1770
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xc
	.long	0x51
	.long	0x3e
	.uleb128 0xd
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.long	0x2e
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x22
	.long	0x4a
	.uleb128 0x2d
	.long	.LASF1738
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x2e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x7f
	.uleb128 0x7
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x7f
	.uleb128 0x2f
	.byte	0x8
	.uleb128 0x6
	.long	0x4a
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x1a
	.long	.LASF99
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x25d
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x78
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xca
	.byte	0x8
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xca
	.byte	0x10
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xca
	.byte	0x18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xca
	.byte	0x20
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xca
	.byte	0x28
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xca
	.byte	0x30
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xca
	.byte	0x38
	.uleb128 0x3
	.long	.LASF23
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xca
	.byte	0x40
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xca
	.byte	0x48
	.uleb128 0x3
	.long	.LASF25
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xca
	.byte	0x50
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xca
	.byte	0x58
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x276
	.byte	0x60
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x27b
	.byte	0x68
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x78
	.byte	0x70
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x78
	.byte	0x74
	.uleb128 0x3
	.long	.LASF31
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xb0
	.byte	0x78
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x94
	.byte	0x80
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0xa2
	.byte	0x82
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x280
	.byte	0x83
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x290
	.byte	0x88
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xbc
	.byte	0x90
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x29a
	.byte	0x98
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2a4
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF39
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x27b
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF40
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0xc8
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x6c
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF42
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x78
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF43
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2a9
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.long	.LASF44
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xd6
	.uleb128 0x30
	.long	.LASF1771
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF45
	.uleb128 0x6
	.long	0x271
	.uleb128 0x6
	.long	0xd6
	.uleb128 0xc
	.long	0x4a
	.long	0x290
	.uleb128 0xd
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x269
	.uleb128 0x1f
	.long	.LASF46
	.uleb128 0x6
	.long	0x295
	.uleb128 0x1f
	.long	.LASF47
	.uleb128 0x6
	.long	0x29f
	.uleb128 0xc
	.long	0x4a
	.long	0x2b9
	.uleb128 0xd
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x51
	.uleb128 0x6
	.long	0x25d
	.uleb128 0xb
	.long	.LASF1465
	.byte	0x12
	.byte	0x97
	.byte	0xe
	.long	0x2be
	.uleb128 0xf
	.long	0x9b
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.long	0x306
	.uleb128 0x1
	.long	.LASF48
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x1
	.uleb128 0x1
	.long	.LASF50
	.byte	0x2
	.uleb128 0x1
	.long	.LASF51
	.byte	0x3
	.uleb128 0x1
	.long	.LASF52
	.byte	0x4
	.uleb128 0x1
	.long	.LASF53
	.byte	0x5
	.uleb128 0x1
	.long	.LASF54
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x9b
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.long	0x355
	.uleb128 0x1
	.long	.LASF55
	.byte	0
	.uleb128 0x1
	.long	.LASF56
	.byte	0x1
	.uleb128 0x1
	.long	.LASF57
	.byte	0x2
	.uleb128 0x1
	.long	.LASF58
	.byte	0x3
	.uleb128 0x1
	.long	.LASF59
	.byte	0x4
	.uleb128 0x1
	.long	.LASF60
	.byte	0x5
	.uleb128 0x1
	.long	.LASF61
	.byte	0x6
	.uleb128 0x1
	.long	.LASF62
	.byte	0x7
	.uleb128 0x1
	.long	.LASF63
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x9
	.uleb128 0x1
	.long	.LASF65
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF66
	.byte	0x6
	.byte	0xc5
	.byte	0x3
	.long	0x306
	.uleb128 0xf
	.long	0x9b
	.byte	0x6
	.byte	0xca
	.byte	0x1
	.long	0x392
	.uleb128 0x1
	.long	.LASF67
	.byte	0
	.uleb128 0x1
	.long	.LASF68
	.byte	0x1
	.uleb128 0x1
	.long	.LASF69
	.byte	0x2
	.uleb128 0x1
	.long	.LASF70
	.byte	0x3
	.uleb128 0x1
	.long	.LASF71
	.byte	0x4
	.uleb128 0x1
	.long	.LASF72
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	0x9b
	.byte	0x6
	.byte	0xd7
	.byte	0x1
	.long	0x3c9
	.uleb128 0x1
	.long	.LASF73
	.byte	0
	.uleb128 0x1
	.long	.LASF74
	.byte	0x1
	.uleb128 0x1
	.long	.LASF75
	.byte	0x2
	.uleb128 0x1
	.long	.LASF76
	.byte	0x3
	.uleb128 0x1
	.long	.LASF77
	.byte	0x4
	.uleb128 0x1
	.long	.LASF78
	.byte	0x5
	.uleb128 0x1
	.long	.LASF79
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x9b
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.long	0x3e2
	.uleb128 0x1
	.long	.LASF80
	.byte	0
	.uleb128 0x1
	.long	.LASF81
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF82
	.byte	0x7
	.byte	0x22
	.byte	0x1c
	.long	0x3c9
	.uleb128 0x7
	.long	.LASF83
	.byte	0x7
	.byte	0x24
	.byte	0x17
	.long	0x8d
	.uleb128 0xc
	.long	0xa9
	.long	0x40a
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x450
	.uleb128 0x9
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0xa9
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0xa9
	.byte	0x2
	.uleb128 0x3
	.long	.LASF84
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0xa9
	.byte	0x4
	.uleb128 0x3
	.long	.LASF85
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0xa9
	.byte	0x6
	.uleb128 0x3
	.long	.LASF86
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0xa9
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF87
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x40a
	.uleb128 0x7
	.long	.LASF88
	.byte	0x9
	.byte	0x26
	.byte	0xd
	.long	0x78
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.long	.LASF89
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.long	.LASF90
	.uleb128 0x7
	.long	.LASF91
	.byte	0xa
	.byte	0x4e
	.byte	0x12
	.long	0x9b
	.uleb128 0x7
	.long	.LASF92
	.byte	0xb
	.byte	0x29
	.byte	0x11
	.long	0x48e
	.uleb128 0x6
	.long	0x493
	.uleb128 0x31
	.long	0x49a
	.uleb128 0x23
	.byte	0
	.uleb128 0x7
	.long	.LASF93
	.byte	0xb
	.byte	0x2a
	.byte	0x11
	.long	0x4a6
	.uleb128 0x6
	.long	0x4ab
	.uleb128 0x24
	.long	0x4b6
	.uleb128 0x5
	.long	0xc8
	.byte	0
	.uleb128 0x7
	.long	.LASF94
	.byte	0xb
	.byte	0x2b
	.byte	0x11
	.long	0x4c2
	.uleb128 0x6
	.long	0x4c7
	.uleb128 0x24
	.long	0x4d7
	.uleb128 0x5
	.long	0xc8
	.uleb128 0x5
	.long	0xc8
	.byte	0
	.uleb128 0x32
	.byte	0x8
	.byte	0xb
	.byte	0x2d
	.byte	0x9
	.long	0x501
	.uleb128 0x25
	.long	.LASF95
	.byte	0x2f
	.long	0x49a
	.uleb128 0x33
	.string	"acv"
	.byte	0xb
	.byte	0x30
	.byte	0xd
	.long	0x482
	.uleb128 0x25
	.long	.LASF96
	.byte	0x31
	.long	0x4b6
	.byte	0
	.uleb128 0x7
	.long	.LASF97
	.byte	0xb
	.byte	0x33
	.byte	0x3
	.long	0x4d7
	.uleb128 0x7
	.long	.LASF98
	.byte	0xb
	.byte	0x3c
	.byte	0x14
	.long	0x501
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x18
	.byte	0xb
	.byte	0x40
	.byte	0x10
	.long	0x54e
	.uleb128 0x3
	.long	.LASF101
	.byte	0xb
	.byte	0x42
	.byte	0x17
	.long	0x54e
	.byte	0
	.uleb128 0x3
	.long	.LASF102
	.byte	0xb
	.byte	0x43
	.byte	0x17
	.long	0x54e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF103
	.byte	0xb
	.byte	0x44
	.byte	0xe
	.long	0x50d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x519
	.uleb128 0x7
	.long	.LASF104
	.byte	0xb
	.byte	0x46
	.byte	0x3
	.long	0x519
	.uleb128 0xf
	.long	0x9b
	.byte	0xc
	.byte	0x1f
	.byte	0x1
	.long	0x8ae
	.uleb128 0x1
	.long	.LASF105
	.byte	0
	.uleb128 0x1
	.long	.LASF106
	.byte	0x1
	.uleb128 0x1
	.long	.LASF107
	.byte	0x2
	.uleb128 0x1
	.long	.LASF108
	.byte	0x3
	.uleb128 0x1
	.long	.LASF109
	.byte	0x4
	.uleb128 0x1
	.long	.LASF110
	.byte	0x5
	.uleb128 0x1
	.long	.LASF111
	.byte	0x6
	.uleb128 0x1
	.long	.LASF112
	.byte	0x7
	.uleb128 0x1
	.long	.LASF113
	.byte	0x8
	.uleb128 0x1
	.long	.LASF114
	.byte	0x9
	.uleb128 0x1
	.long	.LASF115
	.byte	0xa
	.uleb128 0x1
	.long	.LASF116
	.byte	0xb
	.uleb128 0x1
	.long	.LASF117
	.byte	0xc
	.uleb128 0x1
	.long	.LASF118
	.byte	0xd
	.uleb128 0x1
	.long	.LASF119
	.byte	0xe
	.uleb128 0x1
	.long	.LASF120
	.byte	0xf
	.uleb128 0x1
	.long	.LASF121
	.byte	0x10
	.uleb128 0x1
	.long	.LASF122
	.byte	0x11
	.uleb128 0x1
	.long	.LASF123
	.byte	0x12
	.uleb128 0x1
	.long	.LASF124
	.byte	0x13
	.uleb128 0x1
	.long	.LASF125
	.byte	0x14
	.uleb128 0x1
	.long	.LASF126
	.byte	0x15
	.uleb128 0x1
	.long	.LASF127
	.byte	0x16
	.uleb128 0x1
	.long	.LASF128
	.byte	0x17
	.uleb128 0x1
	.long	.LASF129
	.byte	0x18
	.uleb128 0x1
	.long	.LASF130
	.byte	0x19
	.uleb128 0x1
	.long	.LASF131
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF132
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF133
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF134
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF135
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF136
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF137
	.byte	0x20
	.uleb128 0x1
	.long	.LASF138
	.byte	0x21
	.uleb128 0x1
	.long	.LASF139
	.byte	0x22
	.uleb128 0x1
	.long	.LASF140
	.byte	0x23
	.uleb128 0x1
	.long	.LASF141
	.byte	0x24
	.uleb128 0x1
	.long	.LASF142
	.byte	0x25
	.uleb128 0x1
	.long	.LASF143
	.byte	0x26
	.uleb128 0x1
	.long	.LASF144
	.byte	0x27
	.uleb128 0x1
	.long	.LASF145
	.byte	0x28
	.uleb128 0x1
	.long	.LASF146
	.byte	0x29
	.uleb128 0x1
	.long	.LASF147
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF148
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF149
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF150
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF151
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF152
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF153
	.byte	0x30
	.uleb128 0x1
	.long	.LASF154
	.byte	0x31
	.uleb128 0x1
	.long	.LASF155
	.byte	0x32
	.uleb128 0x1
	.long	.LASF156
	.byte	0x33
	.uleb128 0x1
	.long	.LASF157
	.byte	0x34
	.uleb128 0x1
	.long	.LASF158
	.byte	0x35
	.uleb128 0x1
	.long	.LASF159
	.byte	0x36
	.uleb128 0x1
	.long	.LASF160
	.byte	0x37
	.uleb128 0x1
	.long	.LASF161
	.byte	0x38
	.uleb128 0x1
	.long	.LASF162
	.byte	0x39
	.uleb128 0x1
	.long	.LASF163
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF164
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF165
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF166
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF167
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF168
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF169
	.byte	0x40
	.uleb128 0x1
	.long	.LASF170
	.byte	0x41
	.uleb128 0x1
	.long	.LASF171
	.byte	0x42
	.uleb128 0x1
	.long	.LASF172
	.byte	0x43
	.uleb128 0x1
	.long	.LASF173
	.byte	0x44
	.uleb128 0x1
	.long	.LASF174
	.byte	0x45
	.uleb128 0x1
	.long	.LASF175
	.byte	0x46
	.uleb128 0x1
	.long	.LASF176
	.byte	0x47
	.uleb128 0x1
	.long	.LASF177
	.byte	0x48
	.uleb128 0x1
	.long	.LASF178
	.byte	0x49
	.uleb128 0x1
	.long	.LASF179
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF180
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF181
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF182
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF183
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF184
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF185
	.byte	0x50
	.uleb128 0x1
	.long	.LASF186
	.byte	0x51
	.uleb128 0x1
	.long	.LASF187
	.byte	0x52
	.uleb128 0x1
	.long	.LASF188
	.byte	0x53
	.uleb128 0x1
	.long	.LASF189
	.byte	0x54
	.uleb128 0x1
	.long	.LASF190
	.byte	0x55
	.uleb128 0x1
	.long	.LASF191
	.byte	0x56
	.uleb128 0x1
	.long	.LASF192
	.byte	0x57
	.uleb128 0x1
	.long	.LASF193
	.byte	0x58
	.uleb128 0x1
	.long	.LASF194
	.byte	0x59
	.uleb128 0x1
	.long	.LASF195
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF196
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF197
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF198
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF199
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF200
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF201
	.byte	0x60
	.uleb128 0x1
	.long	.LASF202
	.byte	0x61
	.uleb128 0x1
	.long	.LASF203
	.byte	0x62
	.uleb128 0x1
	.long	.LASF204
	.byte	0x63
	.uleb128 0x1
	.long	.LASF205
	.byte	0x64
	.uleb128 0x1
	.long	.LASF206
	.byte	0x65
	.uleb128 0x1
	.long	.LASF207
	.byte	0x66
	.uleb128 0x1
	.long	.LASF208
	.byte	0x67
	.uleb128 0x1
	.long	.LASF209
	.byte	0x68
	.uleb128 0x1
	.long	.LASF210
	.byte	0x69
	.uleb128 0x1
	.long	.LASF211
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF212
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF213
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF214
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF215
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF216
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF217
	.byte	0x70
	.uleb128 0x1
	.long	.LASF218
	.byte	0x71
	.uleb128 0x1
	.long	.LASF219
	.byte	0x72
	.uleb128 0x1
	.long	.LASF220
	.byte	0x73
	.uleb128 0x1
	.long	.LASF221
	.byte	0x74
	.uleb128 0x1
	.long	.LASF222
	.byte	0x75
	.uleb128 0x1
	.long	.LASF223
	.byte	0x76
	.uleb128 0x1
	.long	.LASF224
	.byte	0x77
	.uleb128 0x1
	.long	.LASF225
	.byte	0x78
	.uleb128 0x1
	.long	.LASF226
	.byte	0x79
	.uleb128 0x1
	.long	.LASF227
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF228
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF229
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF230
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF231
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF232
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF233
	.byte	0x80
	.uleb128 0x1
	.long	.LASF234
	.byte	0x81
	.uleb128 0x1
	.long	.LASF235
	.byte	0x82
	.uleb128 0x1
	.long	.LASF236
	.byte	0x83
	.uleb128 0x1
	.long	.LASF237
	.byte	0x84
	.uleb128 0x1
	.long	.LASF238
	.byte	0x85
	.uleb128 0x1
	.long	.LASF239
	.byte	0x86
	.uleb128 0x1
	.long	.LASF240
	.byte	0x87
	.uleb128 0x1
	.long	.LASF241
	.byte	0x88
	.uleb128 0x1
	.long	.LASF242
	.byte	0x89
	.uleb128 0x1
	.long	.LASF243
	.byte	0x8a
	.byte	0
	.uleb128 0x7
	.long	.LASF244
	.byte	0xc
	.byte	0xac
	.byte	0x3
	.long	0x55f
	.uleb128 0xf
	.long	0x9b
	.byte	0xc
	.byte	0xaf
	.byte	0x1
	.long	0x223f
	.uleb128 0x1
	.long	.LASF245
	.byte	0
	.uleb128 0x1
	.long	.LASF246
	.byte	0x1
	.uleb128 0x1
	.long	.LASF247
	.byte	0x2
	.uleb128 0x1
	.long	.LASF248
	.byte	0x3
	.uleb128 0x1
	.long	.LASF249
	.byte	0x4
	.uleb128 0x1
	.long	.LASF250
	.byte	0x5
	.uleb128 0x1
	.long	.LASF251
	.byte	0x6
	.uleb128 0x1
	.long	.LASF252
	.byte	0x7
	.uleb128 0x1
	.long	.LASF253
	.byte	0x8
	.uleb128 0x1
	.long	.LASF254
	.byte	0x9
	.uleb128 0x1
	.long	.LASF255
	.byte	0xa
	.uleb128 0x1
	.long	.LASF256
	.byte	0xb
	.uleb128 0x1
	.long	.LASF257
	.byte	0xc
	.uleb128 0x1
	.long	.LASF258
	.byte	0xd
	.uleb128 0x1
	.long	.LASF259
	.byte	0xe
	.uleb128 0x1
	.long	.LASF260
	.byte	0xf
	.uleb128 0x1
	.long	.LASF261
	.byte	0x10
	.uleb128 0x1
	.long	.LASF262
	.byte	0x11
	.uleb128 0x1
	.long	.LASF263
	.byte	0x12
	.uleb128 0x1
	.long	.LASF264
	.byte	0x13
	.uleb128 0x1
	.long	.LASF265
	.byte	0x14
	.uleb128 0x1
	.long	.LASF266
	.byte	0x15
	.uleb128 0x1
	.long	.LASF267
	.byte	0x16
	.uleb128 0x1
	.long	.LASF268
	.byte	0x17
	.uleb128 0x1
	.long	.LASF269
	.byte	0x18
	.uleb128 0x1
	.long	.LASF270
	.byte	0x19
	.uleb128 0x1
	.long	.LASF271
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF272
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF273
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF274
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF275
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF276
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF277
	.byte	0x20
	.uleb128 0x1
	.long	.LASF278
	.byte	0x21
	.uleb128 0x1
	.long	.LASF279
	.byte	0x22
	.uleb128 0x1
	.long	.LASF280
	.byte	0x23
	.uleb128 0x1
	.long	.LASF281
	.byte	0x24
	.uleb128 0x1
	.long	.LASF282
	.byte	0x25
	.uleb128 0x1
	.long	.LASF283
	.byte	0x26
	.uleb128 0x1
	.long	.LASF284
	.byte	0x27
	.uleb128 0x1
	.long	.LASF285
	.byte	0x28
	.uleb128 0x1
	.long	.LASF286
	.byte	0x29
	.uleb128 0x1
	.long	.LASF287
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF288
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF289
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF290
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF291
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF292
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF293
	.byte	0x30
	.uleb128 0x1
	.long	.LASF294
	.byte	0x31
	.uleb128 0x1
	.long	.LASF295
	.byte	0x32
	.uleb128 0x1
	.long	.LASF296
	.byte	0x33
	.uleb128 0x1
	.long	.LASF297
	.byte	0x34
	.uleb128 0x1
	.long	.LASF298
	.byte	0x35
	.uleb128 0x1
	.long	.LASF299
	.byte	0x36
	.uleb128 0x1
	.long	.LASF300
	.byte	0x37
	.uleb128 0x1
	.long	.LASF301
	.byte	0x38
	.uleb128 0x1
	.long	.LASF302
	.byte	0x39
	.uleb128 0x1
	.long	.LASF303
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF304
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF305
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF306
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF307
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF308
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF309
	.byte	0x40
	.uleb128 0x1
	.long	.LASF310
	.byte	0x41
	.uleb128 0x1
	.long	.LASF311
	.byte	0x42
	.uleb128 0x1
	.long	.LASF312
	.byte	0x43
	.uleb128 0x1
	.long	.LASF313
	.byte	0x44
	.uleb128 0x1
	.long	.LASF314
	.byte	0x45
	.uleb128 0x1
	.long	.LASF315
	.byte	0x46
	.uleb128 0x1
	.long	.LASF316
	.byte	0x47
	.uleb128 0x1
	.long	.LASF317
	.byte	0x48
	.uleb128 0x1
	.long	.LASF318
	.byte	0x49
	.uleb128 0x1
	.long	.LASF319
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF320
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF321
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF322
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF323
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF324
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF325
	.byte	0x50
	.uleb128 0x1
	.long	.LASF326
	.byte	0x51
	.uleb128 0x1
	.long	.LASF327
	.byte	0x52
	.uleb128 0x1
	.long	.LASF328
	.byte	0x53
	.uleb128 0x1
	.long	.LASF329
	.byte	0x54
	.uleb128 0x1
	.long	.LASF330
	.byte	0x55
	.uleb128 0x1
	.long	.LASF331
	.byte	0x56
	.uleb128 0x1
	.long	.LASF332
	.byte	0x57
	.uleb128 0x1
	.long	.LASF333
	.byte	0x58
	.uleb128 0x1
	.long	.LASF334
	.byte	0x59
	.uleb128 0x1
	.long	.LASF335
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF336
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF337
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF338
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF339
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF340
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF341
	.byte	0x60
	.uleb128 0x1
	.long	.LASF342
	.byte	0x61
	.uleb128 0x1
	.long	.LASF343
	.byte	0x62
	.uleb128 0x1
	.long	.LASF344
	.byte	0x63
	.uleb128 0x1
	.long	.LASF345
	.byte	0x64
	.uleb128 0x1
	.long	.LASF346
	.byte	0x65
	.uleb128 0x1
	.long	.LASF347
	.byte	0x66
	.uleb128 0x1
	.long	.LASF348
	.byte	0x67
	.uleb128 0x1
	.long	.LASF349
	.byte	0x68
	.uleb128 0x1
	.long	.LASF350
	.byte	0x69
	.uleb128 0x1
	.long	.LASF351
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF352
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF353
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF354
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF355
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF356
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF357
	.byte	0x70
	.uleb128 0x1
	.long	.LASF358
	.byte	0x71
	.uleb128 0x1
	.long	.LASF359
	.byte	0x72
	.uleb128 0x1
	.long	.LASF360
	.byte	0x73
	.uleb128 0x1
	.long	.LASF361
	.byte	0x74
	.uleb128 0x1
	.long	.LASF362
	.byte	0x75
	.uleb128 0x1
	.long	.LASF363
	.byte	0x76
	.uleb128 0x1
	.long	.LASF364
	.byte	0x77
	.uleb128 0x1
	.long	.LASF365
	.byte	0x78
	.uleb128 0x1
	.long	.LASF366
	.byte	0x79
	.uleb128 0x1
	.long	.LASF367
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF368
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF369
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF370
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF371
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF372
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF373
	.byte	0x80
	.uleb128 0x1
	.long	.LASF374
	.byte	0x81
	.uleb128 0x1
	.long	.LASF375
	.byte	0x82
	.uleb128 0x1
	.long	.LASF376
	.byte	0x83
	.uleb128 0x1
	.long	.LASF377
	.byte	0x84
	.uleb128 0x1
	.long	.LASF378
	.byte	0x85
	.uleb128 0x1
	.long	.LASF379
	.byte	0x86
	.uleb128 0x1
	.long	.LASF380
	.byte	0x87
	.uleb128 0x1
	.long	.LASF381
	.byte	0x88
	.uleb128 0x1
	.long	.LASF382
	.byte	0x89
	.uleb128 0x1
	.long	.LASF383
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF384
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF385
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF386
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF387
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF388
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF389
	.byte	0x90
	.uleb128 0x1
	.long	.LASF390
	.byte	0x91
	.uleb128 0x1
	.long	.LASF391
	.byte	0x92
	.uleb128 0x1
	.long	.LASF392
	.byte	0x93
	.uleb128 0x1
	.long	.LASF393
	.byte	0x94
	.uleb128 0x1
	.long	.LASF394
	.byte	0x95
	.uleb128 0x1
	.long	.LASF395
	.byte	0x96
	.uleb128 0x1
	.long	.LASF396
	.byte	0x97
	.uleb128 0x1
	.long	.LASF397
	.byte	0x98
	.uleb128 0x1
	.long	.LASF398
	.byte	0x99
	.uleb128 0x1
	.long	.LASF399
	.byte	0x9a
	.uleb128 0x1
	.long	.LASF400
	.byte	0x9b
	.uleb128 0x1
	.long	.LASF401
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF402
	.byte	0x9d
	.uleb128 0x1
	.long	.LASF403
	.byte	0x9e
	.uleb128 0x1
	.long	.LASF404
	.byte	0x9f
	.uleb128 0x1
	.long	.LASF405
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF406
	.byte	0xa1
	.uleb128 0x1
	.long	.LASF407
	.byte	0xa2
	.uleb128 0x1
	.long	.LASF408
	.byte	0xa3
	.uleb128 0x1
	.long	.LASF409
	.byte	0xa4
	.uleb128 0x1
	.long	.LASF410
	.byte	0xa5
	.uleb128 0x1
	.long	.LASF411
	.byte	0xa6
	.uleb128 0x1
	.long	.LASF412
	.byte	0xa7
	.uleb128 0x1
	.long	.LASF413
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF414
	.byte	0xa9
	.uleb128 0x1
	.long	.LASF415
	.byte	0xaa
	.uleb128 0x1
	.long	.LASF416
	.byte	0xab
	.uleb128 0x1
	.long	.LASF417
	.byte	0xac
	.uleb128 0x1
	.long	.LASF418
	.byte	0xad
	.uleb128 0x1
	.long	.LASF419
	.byte	0xae
	.uleb128 0x1
	.long	.LASF420
	.byte	0xaf
	.uleb128 0x1
	.long	.LASF421
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF422
	.byte	0xb1
	.uleb128 0x1
	.long	.LASF423
	.byte	0xb2
	.uleb128 0x1
	.long	.LASF424
	.byte	0xb3
	.uleb128 0x1
	.long	.LASF425
	.byte	0xb4
	.uleb128 0x1
	.long	.LASF426
	.byte	0xb5
	.uleb128 0x1
	.long	.LASF427
	.byte	0xb6
	.uleb128 0x1
	.long	.LASF428
	.byte	0xb7
	.uleb128 0x1
	.long	.LASF429
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF430
	.byte	0xb9
	.uleb128 0x1
	.long	.LASF431
	.byte	0xba
	.uleb128 0x1
	.long	.LASF432
	.byte	0xbb
	.uleb128 0x1
	.long	.LASF433
	.byte	0xbc
	.uleb128 0x1
	.long	.LASF434
	.byte	0xbd
	.uleb128 0x1
	.long	.LASF435
	.byte	0xbe
	.uleb128 0x1
	.long	.LASF436
	.byte	0xbf
	.uleb128 0x1
	.long	.LASF437
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF438
	.byte	0xc1
	.uleb128 0x1
	.long	.LASF439
	.byte	0xc2
	.uleb128 0x1
	.long	.LASF440
	.byte	0xc3
	.uleb128 0x1
	.long	.LASF441
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF442
	.byte	0xc5
	.uleb128 0x1
	.long	.LASF443
	.byte	0xc6
	.uleb128 0x1
	.long	.LASF444
	.byte	0xc7
	.uleb128 0x1
	.long	.LASF445
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF446
	.byte	0xc9
	.uleb128 0x1
	.long	.LASF447
	.byte	0xca
	.uleb128 0x1
	.long	.LASF448
	.byte	0xcb
	.uleb128 0x1
	.long	.LASF449
	.byte	0xcc
	.uleb128 0x1
	.long	.LASF450
	.byte	0xcd
	.uleb128 0x1
	.long	.LASF451
	.byte	0xce
	.uleb128 0x1
	.long	.LASF452
	.byte	0xcf
	.uleb128 0x1
	.long	.LASF453
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF454
	.byte	0xd1
	.uleb128 0x1
	.long	.LASF455
	.byte	0xd2
	.uleb128 0x1
	.long	.LASF456
	.byte	0xd3
	.uleb128 0x1
	.long	.LASF457
	.byte	0xd4
	.uleb128 0x1
	.long	.LASF458
	.byte	0xd5
	.uleb128 0x1
	.long	.LASF459
	.byte	0xd6
	.uleb128 0x1
	.long	.LASF460
	.byte	0xd7
	.uleb128 0x1
	.long	.LASF461
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF462
	.byte	0xd9
	.uleb128 0x1
	.long	.LASF463
	.byte	0xda
	.uleb128 0x1
	.long	.LASF464
	.byte	0xdb
	.uleb128 0x1
	.long	.LASF465
	.byte	0xdc
	.uleb128 0x1
	.long	.LASF466
	.byte	0xdd
	.uleb128 0x1
	.long	.LASF467
	.byte	0xde
	.uleb128 0x1
	.long	.LASF468
	.byte	0xdf
	.uleb128 0x1
	.long	.LASF469
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF470
	.byte	0xe1
	.uleb128 0x1
	.long	.LASF471
	.byte	0xe2
	.uleb128 0x1
	.long	.LASF472
	.byte	0xe3
	.uleb128 0x1
	.long	.LASF473
	.byte	0xe4
	.uleb128 0x1
	.long	.LASF474
	.byte	0xe5
	.uleb128 0x1
	.long	.LASF475
	.byte	0xe6
	.uleb128 0x1
	.long	.LASF476
	.byte	0xe7
	.uleb128 0x1
	.long	.LASF477
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF478
	.byte	0xe9
	.uleb128 0x1
	.long	.LASF479
	.byte	0xea
	.uleb128 0x1
	.long	.LASF480
	.byte	0xeb
	.uleb128 0x1
	.long	.LASF481
	.byte	0xec
	.uleb128 0x1
	.long	.LASF482
	.byte	0xed
	.uleb128 0x1
	.long	.LASF483
	.byte	0xee
	.uleb128 0x1
	.long	.LASF484
	.byte	0xef
	.uleb128 0x1
	.long	.LASF485
	.byte	0xf0
	.uleb128 0x1
	.long	.LASF486
	.byte	0xf1
	.uleb128 0x1
	.long	.LASF487
	.byte	0xf2
	.uleb128 0x1
	.long	.LASF488
	.byte	0xf3
	.uleb128 0x1
	.long	.LASF489
	.byte	0xf4
	.uleb128 0x1
	.long	.LASF490
	.byte	0xf5
	.uleb128 0x1
	.long	.LASF491
	.byte	0xf6
	.uleb128 0x1
	.long	.LASF492
	.byte	0xf7
	.uleb128 0x1
	.long	.LASF493
	.byte	0xf8
	.uleb128 0x1
	.long	.LASF494
	.byte	0xf9
	.uleb128 0x1
	.long	.LASF495
	.byte	0xfa
	.uleb128 0x1
	.long	.LASF496
	.byte	0xfb
	.uleb128 0x1
	.long	.LASF497
	.byte	0xfc
	.uleb128 0x1
	.long	.LASF498
	.byte	0xfd
	.uleb128 0x1
	.long	.LASF499
	.byte	0xfe
	.uleb128 0x1
	.long	.LASF500
	.byte	0xff
	.uleb128 0x2
	.long	.LASF501
	.value	0x100
	.uleb128 0x2
	.long	.LASF502
	.value	0x101
	.uleb128 0x2
	.long	.LASF503
	.value	0x102
	.uleb128 0x2
	.long	.LASF504
	.value	0x103
	.uleb128 0x2
	.long	.LASF505
	.value	0x104
	.uleb128 0x2
	.long	.LASF506
	.value	0x105
	.uleb128 0x2
	.long	.LASF507
	.value	0x106
	.uleb128 0x2
	.long	.LASF508
	.value	0x107
	.uleb128 0x2
	.long	.LASF509
	.value	0x108
	.uleb128 0x2
	.long	.LASF510
	.value	0x109
	.uleb128 0x2
	.long	.LASF511
	.value	0x10a
	.uleb128 0x2
	.long	.LASF512
	.value	0x10b
	.uleb128 0x2
	.long	.LASF513
	.value	0x10c
	.uleb128 0x2
	.long	.LASF514
	.value	0x10d
	.uleb128 0x2
	.long	.LASF515
	.value	0x10e
	.uleb128 0x2
	.long	.LASF516
	.value	0x10f
	.uleb128 0x2
	.long	.LASF517
	.value	0x110
	.uleb128 0x2
	.long	.LASF518
	.value	0x111
	.uleb128 0x2
	.long	.LASF519
	.value	0x112
	.uleb128 0x2
	.long	.LASF520
	.value	0x113
	.uleb128 0x2
	.long	.LASF521
	.value	0x114
	.uleb128 0x2
	.long	.LASF522
	.value	0x115
	.uleb128 0x2
	.long	.LASF523
	.value	0x116
	.uleb128 0x2
	.long	.LASF524
	.value	0x117
	.uleb128 0x2
	.long	.LASF525
	.value	0x118
	.uleb128 0x2
	.long	.LASF526
	.value	0x119
	.uleb128 0x2
	.long	.LASF527
	.value	0x11a
	.uleb128 0x2
	.long	.LASF528
	.value	0x11b
	.uleb128 0x2
	.long	.LASF529
	.value	0x11c
	.uleb128 0x2
	.long	.LASF530
	.value	0x11d
	.uleb128 0x2
	.long	.LASF531
	.value	0x11e
	.uleb128 0x2
	.long	.LASF532
	.value	0x11f
	.uleb128 0x2
	.long	.LASF533
	.value	0x120
	.uleb128 0x2
	.long	.LASF534
	.value	0x121
	.uleb128 0x2
	.long	.LASF535
	.value	0x122
	.uleb128 0x2
	.long	.LASF536
	.value	0x123
	.uleb128 0x2
	.long	.LASF537
	.value	0x124
	.uleb128 0x2
	.long	.LASF538
	.value	0x125
	.uleb128 0x2
	.long	.LASF539
	.value	0x126
	.uleb128 0x2
	.long	.LASF540
	.value	0x127
	.uleb128 0x2
	.long	.LASF541
	.value	0x128
	.uleb128 0x2
	.long	.LASF542
	.value	0x129
	.uleb128 0x2
	.long	.LASF543
	.value	0x12a
	.uleb128 0x2
	.long	.LASF544
	.value	0x12b
	.uleb128 0x2
	.long	.LASF545
	.value	0x12c
	.uleb128 0x2
	.long	.LASF546
	.value	0x12d
	.uleb128 0x2
	.long	.LASF547
	.value	0x12e
	.uleb128 0x2
	.long	.LASF548
	.value	0x12f
	.uleb128 0x2
	.long	.LASF549
	.value	0x130
	.uleb128 0x2
	.long	.LASF550
	.value	0x131
	.uleb128 0x2
	.long	.LASF551
	.value	0x132
	.uleb128 0x2
	.long	.LASF552
	.value	0x133
	.uleb128 0x2
	.long	.LASF553
	.value	0x134
	.uleb128 0x2
	.long	.LASF554
	.value	0x135
	.uleb128 0x2
	.long	.LASF555
	.value	0x136
	.uleb128 0x2
	.long	.LASF556
	.value	0x137
	.uleb128 0x2
	.long	.LASF557
	.value	0x138
	.uleb128 0x2
	.long	.LASF558
	.value	0x139
	.uleb128 0x2
	.long	.LASF559
	.value	0x13a
	.uleb128 0x2
	.long	.LASF560
	.value	0x13b
	.uleb128 0x2
	.long	.LASF561
	.value	0x13c
	.uleb128 0x2
	.long	.LASF562
	.value	0x13d
	.uleb128 0x2
	.long	.LASF563
	.value	0x13e
	.uleb128 0x2
	.long	.LASF564
	.value	0x13f
	.uleb128 0x2
	.long	.LASF565
	.value	0x140
	.uleb128 0x2
	.long	.LASF566
	.value	0x141
	.uleb128 0x2
	.long	.LASF567
	.value	0x142
	.uleb128 0x2
	.long	.LASF568
	.value	0x143
	.uleb128 0x2
	.long	.LASF569
	.value	0x144
	.uleb128 0x2
	.long	.LASF570
	.value	0x145
	.uleb128 0x2
	.long	.LASF571
	.value	0x146
	.uleb128 0x2
	.long	.LASF572
	.value	0x147
	.uleb128 0x2
	.long	.LASF573
	.value	0x148
	.uleb128 0x2
	.long	.LASF574
	.value	0x149
	.uleb128 0x2
	.long	.LASF575
	.value	0x14a
	.uleb128 0x2
	.long	.LASF576
	.value	0x14b
	.uleb128 0x2
	.long	.LASF577
	.value	0x14c
	.uleb128 0x2
	.long	.LASF578
	.value	0x14d
	.uleb128 0x2
	.long	.LASF579
	.value	0x14e
	.uleb128 0x2
	.long	.LASF580
	.value	0x14f
	.uleb128 0x2
	.long	.LASF581
	.value	0x150
	.uleb128 0x2
	.long	.LASF582
	.value	0x151
	.uleb128 0x2
	.long	.LASF583
	.value	0x152
	.uleb128 0x2
	.long	.LASF584
	.value	0x153
	.uleb128 0x2
	.long	.LASF585
	.value	0x154
	.uleb128 0x2
	.long	.LASF586
	.value	0x155
	.uleb128 0x2
	.long	.LASF587
	.value	0x156
	.uleb128 0x2
	.long	.LASF588
	.value	0x157
	.uleb128 0x2
	.long	.LASF589
	.value	0x158
	.uleb128 0x2
	.long	.LASF590
	.value	0x159
	.uleb128 0x2
	.long	.LASF591
	.value	0x15a
	.uleb128 0x2
	.long	.LASF592
	.value	0x15b
	.uleb128 0x2
	.long	.LASF593
	.value	0x15c
	.uleb128 0x2
	.long	.LASF594
	.value	0x15d
	.uleb128 0x2
	.long	.LASF595
	.value	0x15e
	.uleb128 0x2
	.long	.LASF596
	.value	0x15f
	.uleb128 0x2
	.long	.LASF597
	.value	0x160
	.uleb128 0x2
	.long	.LASF598
	.value	0x161
	.uleb128 0x2
	.long	.LASF599
	.value	0x162
	.uleb128 0x2
	.long	.LASF600
	.value	0x163
	.uleb128 0x2
	.long	.LASF601
	.value	0x164
	.uleb128 0x2
	.long	.LASF602
	.value	0x165
	.uleb128 0x2
	.long	.LASF603
	.value	0x166
	.uleb128 0x2
	.long	.LASF604
	.value	0x167
	.uleb128 0x2
	.long	.LASF605
	.value	0x168
	.uleb128 0x2
	.long	.LASF606
	.value	0x169
	.uleb128 0x2
	.long	.LASF607
	.value	0x16a
	.uleb128 0x2
	.long	.LASF608
	.value	0x16b
	.uleb128 0x2
	.long	.LASF609
	.value	0x16c
	.uleb128 0x2
	.long	.LASF610
	.value	0x16d
	.uleb128 0x2
	.long	.LASF611
	.value	0x16e
	.uleb128 0x2
	.long	.LASF612
	.value	0x16f
	.uleb128 0x2
	.long	.LASF613
	.value	0x170
	.uleb128 0x2
	.long	.LASF614
	.value	0x171
	.uleb128 0x2
	.long	.LASF615
	.value	0x172
	.uleb128 0x2
	.long	.LASF616
	.value	0x173
	.uleb128 0x2
	.long	.LASF617
	.value	0x174
	.uleb128 0x2
	.long	.LASF618
	.value	0x175
	.uleb128 0x2
	.long	.LASF619
	.value	0x176
	.uleb128 0x2
	.long	.LASF620
	.value	0x177
	.uleb128 0x2
	.long	.LASF621
	.value	0x178
	.uleb128 0x2
	.long	.LASF622
	.value	0x179
	.uleb128 0x2
	.long	.LASF623
	.value	0x17a
	.uleb128 0x2
	.long	.LASF624
	.value	0x17b
	.uleb128 0x2
	.long	.LASF625
	.value	0x17c
	.uleb128 0x2
	.long	.LASF626
	.value	0x17d
	.uleb128 0x2
	.long	.LASF627
	.value	0x17e
	.uleb128 0x2
	.long	.LASF628
	.value	0x17f
	.uleb128 0x2
	.long	.LASF629
	.value	0x180
	.uleb128 0x2
	.long	.LASF630
	.value	0x181
	.uleb128 0x2
	.long	.LASF631
	.value	0x182
	.uleb128 0x2
	.long	.LASF632
	.value	0x183
	.uleb128 0x2
	.long	.LASF633
	.value	0x184
	.uleb128 0x2
	.long	.LASF634
	.value	0x185
	.uleb128 0x2
	.long	.LASF635
	.value	0x186
	.uleb128 0x2
	.long	.LASF636
	.value	0x187
	.uleb128 0x2
	.long	.LASF637
	.value	0x188
	.uleb128 0x2
	.long	.LASF638
	.value	0x189
	.uleb128 0x2
	.long	.LASF639
	.value	0x18a
	.uleb128 0x2
	.long	.LASF640
	.value	0x18b
	.uleb128 0x2
	.long	.LASF641
	.value	0x18c
	.uleb128 0x2
	.long	.LASF642
	.value	0x18d
	.uleb128 0x2
	.long	.LASF643
	.value	0x18e
	.uleb128 0x2
	.long	.LASF644
	.value	0x18f
	.uleb128 0x2
	.long	.LASF645
	.value	0x190
	.uleb128 0x2
	.long	.LASF646
	.value	0x191
	.uleb128 0x2
	.long	.LASF647
	.value	0x192
	.uleb128 0x2
	.long	.LASF648
	.value	0x193
	.uleb128 0x2
	.long	.LASF649
	.value	0x194
	.uleb128 0x2
	.long	.LASF650
	.value	0x195
	.uleb128 0x2
	.long	.LASF651
	.value	0x196
	.uleb128 0x2
	.long	.LASF652
	.value	0x197
	.uleb128 0x2
	.long	.LASF653
	.value	0x198
	.uleb128 0x2
	.long	.LASF654
	.value	0x199
	.uleb128 0x2
	.long	.LASF655
	.value	0x19a
	.uleb128 0x2
	.long	.LASF656
	.value	0x19b
	.uleb128 0x2
	.long	.LASF657
	.value	0x19c
	.uleb128 0x2
	.long	.LASF658
	.value	0x19d
	.uleb128 0x2
	.long	.LASF659
	.value	0x19e
	.uleb128 0x2
	.long	.LASF660
	.value	0x19f
	.uleb128 0x2
	.long	.LASF661
	.value	0x1a0
	.uleb128 0x2
	.long	.LASF662
	.value	0x1a1
	.uleb128 0x2
	.long	.LASF663
	.value	0x1a2
	.uleb128 0x2
	.long	.LASF664
	.value	0x1a3
	.uleb128 0x2
	.long	.LASF665
	.value	0x1a4
	.uleb128 0x2
	.long	.LASF666
	.value	0x1a5
	.uleb128 0x2
	.long	.LASF667
	.value	0x1a6
	.uleb128 0x2
	.long	.LASF668
	.value	0x1a7
	.uleb128 0x2
	.long	.LASF669
	.value	0x1a8
	.uleb128 0x2
	.long	.LASF670
	.value	0x1a9
	.uleb128 0x2
	.long	.LASF671
	.value	0x1aa
	.uleb128 0x2
	.long	.LASF672
	.value	0x1ab
	.uleb128 0x2
	.long	.LASF673
	.value	0x1ac
	.uleb128 0x2
	.long	.LASF674
	.value	0x1ad
	.uleb128 0x2
	.long	.LASF675
	.value	0x1ae
	.uleb128 0x2
	.long	.LASF676
	.value	0x1af
	.uleb128 0x2
	.long	.LASF677
	.value	0x1b0
	.uleb128 0x2
	.long	.LASF678
	.value	0x1b1
	.uleb128 0x2
	.long	.LASF679
	.value	0x1b2
	.uleb128 0x2
	.long	.LASF680
	.value	0x1b3
	.uleb128 0x2
	.long	.LASF681
	.value	0x1b4
	.uleb128 0x2
	.long	.LASF682
	.value	0x1b5
	.uleb128 0x2
	.long	.LASF683
	.value	0x1b6
	.uleb128 0x2
	.long	.LASF684
	.value	0x1b7
	.uleb128 0x2
	.long	.LASF685
	.value	0x1b8
	.uleb128 0x2
	.long	.LASF686
	.value	0x1b9
	.uleb128 0x2
	.long	.LASF687
	.value	0x1ba
	.uleb128 0x2
	.long	.LASF688
	.value	0x1bb
	.uleb128 0x2
	.long	.LASF689
	.value	0x1bc
	.uleb128 0x2
	.long	.LASF690
	.value	0x1bd
	.uleb128 0x2
	.long	.LASF691
	.value	0x1be
	.uleb128 0x2
	.long	.LASF692
	.value	0x1bf
	.uleb128 0x2
	.long	.LASF693
	.value	0x1c0
	.uleb128 0x2
	.long	.LASF694
	.value	0x1c1
	.uleb128 0x2
	.long	.LASF695
	.value	0x1c2
	.uleb128 0x2
	.long	.LASF696
	.value	0x1c3
	.uleb128 0x2
	.long	.LASF697
	.value	0x1c4
	.uleb128 0x2
	.long	.LASF698
	.value	0x1c5
	.uleb128 0x2
	.long	.LASF699
	.value	0x1c6
	.uleb128 0x2
	.long	.LASF700
	.value	0x1c7
	.uleb128 0x2
	.long	.LASF701
	.value	0x1c8
	.uleb128 0x2
	.long	.LASF702
	.value	0x1c9
	.uleb128 0x2
	.long	.LASF703
	.value	0x1ca
	.uleb128 0x2
	.long	.LASF704
	.value	0x1cb
	.uleb128 0x2
	.long	.LASF705
	.value	0x1cc
	.uleb128 0x2
	.long	.LASF706
	.value	0x1cd
	.uleb128 0x2
	.long	.LASF707
	.value	0x1ce
	.uleb128 0x2
	.long	.LASF708
	.value	0x1cf
	.uleb128 0x2
	.long	.LASF709
	.value	0x1d0
	.uleb128 0x2
	.long	.LASF710
	.value	0x1d1
	.uleb128 0x2
	.long	.LASF711
	.value	0x1d2
	.uleb128 0x2
	.long	.LASF712
	.value	0x1d3
	.uleb128 0x2
	.long	.LASF713
	.value	0x1d4
	.uleb128 0x2
	.long	.LASF714
	.value	0x1d5
	.uleb128 0x2
	.long	.LASF715
	.value	0x1d6
	.uleb128 0x2
	.long	.LASF716
	.value	0x1d7
	.uleb128 0x2
	.long	.LASF717
	.value	0x1d8
	.uleb128 0x2
	.long	.LASF718
	.value	0x1d9
	.uleb128 0x2
	.long	.LASF719
	.value	0x1da
	.uleb128 0x2
	.long	.LASF720
	.value	0x1db
	.uleb128 0x2
	.long	.LASF721
	.value	0x1dc
	.uleb128 0x2
	.long	.LASF722
	.value	0x1dd
	.uleb128 0x2
	.long	.LASF723
	.value	0x1de
	.uleb128 0x2
	.long	.LASF724
	.value	0x1df
	.uleb128 0x2
	.long	.LASF725
	.value	0x1e0
	.uleb128 0x2
	.long	.LASF726
	.value	0x1e1
	.uleb128 0x2
	.long	.LASF727
	.value	0x1e2
	.uleb128 0x2
	.long	.LASF728
	.value	0x1e3
	.uleb128 0x2
	.long	.LASF729
	.value	0x1e4
	.uleb128 0x2
	.long	.LASF730
	.value	0x1e5
	.uleb128 0x2
	.long	.LASF731
	.value	0x1e6
	.uleb128 0x2
	.long	.LASF732
	.value	0x1e7
	.uleb128 0x2
	.long	.LASF733
	.value	0x1e8
	.uleb128 0x2
	.long	.LASF734
	.value	0x1e9
	.uleb128 0x2
	.long	.LASF735
	.value	0x1ea
	.uleb128 0x2
	.long	.LASF736
	.value	0x1eb
	.uleb128 0x2
	.long	.LASF737
	.value	0x1ec
	.uleb128 0x2
	.long	.LASF738
	.value	0x1ed
	.uleb128 0x2
	.long	.LASF739
	.value	0x1ee
	.uleb128 0x2
	.long	.LASF740
	.value	0x1ef
	.uleb128 0x2
	.long	.LASF741
	.value	0x1f0
	.uleb128 0x2
	.long	.LASF742
	.value	0x1f1
	.uleb128 0x2
	.long	.LASF743
	.value	0x1f2
	.uleb128 0x2
	.long	.LASF744
	.value	0x1f3
	.uleb128 0x2
	.long	.LASF745
	.value	0x1f4
	.uleb128 0x2
	.long	.LASF746
	.value	0x1f5
	.uleb128 0x2
	.long	.LASF747
	.value	0x1f6
	.uleb128 0x2
	.long	.LASF748
	.value	0x1f7
	.uleb128 0x2
	.long	.LASF749
	.value	0x1f8
	.uleb128 0x2
	.long	.LASF750
	.value	0x1f9
	.uleb128 0x2
	.long	.LASF751
	.value	0x1fa
	.uleb128 0x2
	.long	.LASF752
	.value	0x1fb
	.uleb128 0x2
	.long	.LASF753
	.value	0x1fc
	.uleb128 0x2
	.long	.LASF754
	.value	0x1fd
	.uleb128 0x2
	.long	.LASF755
	.value	0x1fe
	.uleb128 0x2
	.long	.LASF756
	.value	0x1ff
	.uleb128 0x2
	.long	.LASF757
	.value	0x200
	.uleb128 0x2
	.long	.LASF758
	.value	0x201
	.uleb128 0x2
	.long	.LASF759
	.value	0x202
	.uleb128 0x2
	.long	.LASF760
	.value	0x203
	.uleb128 0x2
	.long	.LASF761
	.value	0x204
	.uleb128 0x2
	.long	.LASF762
	.value	0x205
	.uleb128 0x2
	.long	.LASF763
	.value	0x206
	.uleb128 0x2
	.long	.LASF764
	.value	0x207
	.uleb128 0x2
	.long	.LASF765
	.value	0x208
	.uleb128 0x2
	.long	.LASF766
	.value	0x209
	.uleb128 0x2
	.long	.LASF767
	.value	0x20a
	.uleb128 0x2
	.long	.LASF768
	.value	0x20b
	.uleb128 0x2
	.long	.LASF769
	.value	0x20c
	.uleb128 0x2
	.long	.LASF770
	.value	0x20d
	.uleb128 0x2
	.long	.LASF771
	.value	0x20e
	.uleb128 0x2
	.long	.LASF772
	.value	0x20f
	.uleb128 0x2
	.long	.LASF773
	.value	0x210
	.uleb128 0x2
	.long	.LASF774
	.value	0x211
	.uleb128 0x2
	.long	.LASF775
	.value	0x212
	.uleb128 0x2
	.long	.LASF776
	.value	0x213
	.uleb128 0x2
	.long	.LASF777
	.value	0x214
	.uleb128 0x2
	.long	.LASF778
	.value	0x215
	.uleb128 0x2
	.long	.LASF779
	.value	0x216
	.uleb128 0x2
	.long	.LASF780
	.value	0x217
	.uleb128 0x2
	.long	.LASF781
	.value	0x218
	.uleb128 0x2
	.long	.LASF782
	.value	0x219
	.uleb128 0x2
	.long	.LASF783
	.value	0x21a
	.uleb128 0x2
	.long	.LASF784
	.value	0x21b
	.uleb128 0x2
	.long	.LASF785
	.value	0x21c
	.uleb128 0x2
	.long	.LASF786
	.value	0x21d
	.uleb128 0x2
	.long	.LASF787
	.value	0x21e
	.uleb128 0x2
	.long	.LASF788
	.value	0x21f
	.uleb128 0x2
	.long	.LASF789
	.value	0x220
	.uleb128 0x2
	.long	.LASF790
	.value	0x221
	.uleb128 0x2
	.long	.LASF791
	.value	0x222
	.uleb128 0x2
	.long	.LASF792
	.value	0x223
	.uleb128 0x2
	.long	.LASF793
	.value	0x224
	.uleb128 0x2
	.long	.LASF794
	.value	0x225
	.uleb128 0x2
	.long	.LASF795
	.value	0x226
	.uleb128 0x2
	.long	.LASF796
	.value	0x227
	.uleb128 0x2
	.long	.LASF797
	.value	0x228
	.uleb128 0x2
	.long	.LASF798
	.value	0x229
	.uleb128 0x2
	.long	.LASF799
	.value	0x22a
	.uleb128 0x2
	.long	.LASF800
	.value	0x22b
	.uleb128 0x2
	.long	.LASF801
	.value	0x22c
	.uleb128 0x2
	.long	.LASF802
	.value	0x22d
	.uleb128 0x2
	.long	.LASF803
	.value	0x22e
	.uleb128 0x2
	.long	.LASF804
	.value	0x22f
	.uleb128 0x2
	.long	.LASF805
	.value	0x230
	.uleb128 0x2
	.long	.LASF806
	.value	0x231
	.uleb128 0x2
	.long	.LASF807
	.value	0x232
	.uleb128 0x2
	.long	.LASF808
	.value	0x233
	.uleb128 0x2
	.long	.LASF809
	.value	0x234
	.uleb128 0x2
	.long	.LASF810
	.value	0x235
	.uleb128 0x2
	.long	.LASF811
	.value	0x236
	.uleb128 0x2
	.long	.LASF812
	.value	0x237
	.uleb128 0x2
	.long	.LASF813
	.value	0x238
	.uleb128 0x2
	.long	.LASF814
	.value	0x239
	.uleb128 0x2
	.long	.LASF815
	.value	0x23a
	.uleb128 0x2
	.long	.LASF816
	.value	0x23b
	.uleb128 0x2
	.long	.LASF817
	.value	0x23c
	.uleb128 0x2
	.long	.LASF818
	.value	0x23d
	.uleb128 0x2
	.long	.LASF819
	.value	0x23e
	.uleb128 0x2
	.long	.LASF820
	.value	0x23f
	.uleb128 0x2
	.long	.LASF821
	.value	0x240
	.uleb128 0x2
	.long	.LASF822
	.value	0x241
	.uleb128 0x2
	.long	.LASF823
	.value	0x242
	.uleb128 0x2
	.long	.LASF824
	.value	0x243
	.uleb128 0x2
	.long	.LASF825
	.value	0x244
	.uleb128 0x2
	.long	.LASF826
	.value	0x245
	.uleb128 0x2
	.long	.LASF827
	.value	0x246
	.uleb128 0x2
	.long	.LASF828
	.value	0x247
	.uleb128 0x2
	.long	.LASF829
	.value	0x248
	.uleb128 0x2
	.long	.LASF830
	.value	0x249
	.uleb128 0x2
	.long	.LASF831
	.value	0x24a
	.uleb128 0x2
	.long	.LASF832
	.value	0x24b
	.uleb128 0x2
	.long	.LASF833
	.value	0x24c
	.uleb128 0x2
	.long	.LASF834
	.value	0x24d
	.uleb128 0x2
	.long	.LASF835
	.value	0x24e
	.uleb128 0x2
	.long	.LASF836
	.value	0x24f
	.uleb128 0x2
	.long	.LASF837
	.value	0x250
	.uleb128 0x2
	.long	.LASF838
	.value	0x251
	.uleb128 0x2
	.long	.LASF839
	.value	0x252
	.uleb128 0x2
	.long	.LASF840
	.value	0x253
	.uleb128 0x2
	.long	.LASF841
	.value	0x254
	.uleb128 0x2
	.long	.LASF842
	.value	0x255
	.uleb128 0x2
	.long	.LASF843
	.value	0x256
	.uleb128 0x2
	.long	.LASF844
	.value	0x257
	.uleb128 0x2
	.long	.LASF845
	.value	0x258
	.uleb128 0x2
	.long	.LASF846
	.value	0x259
	.uleb128 0x2
	.long	.LASF847
	.value	0x25a
	.uleb128 0x2
	.long	.LASF848
	.value	0x25b
	.uleb128 0x2
	.long	.LASF849
	.value	0x25c
	.uleb128 0x2
	.long	.LASF850
	.value	0x25d
	.uleb128 0x2
	.long	.LASF851
	.value	0x25e
	.uleb128 0x2
	.long	.LASF852
	.value	0x25f
	.uleb128 0x2
	.long	.LASF853
	.value	0x260
	.uleb128 0x2
	.long	.LASF854
	.value	0x261
	.uleb128 0x2
	.long	.LASF855
	.value	0x262
	.uleb128 0x2
	.long	.LASF856
	.value	0x263
	.uleb128 0x2
	.long	.LASF857
	.value	0x264
	.uleb128 0x2
	.long	.LASF858
	.value	0x265
	.uleb128 0x2
	.long	.LASF859
	.value	0x266
	.uleb128 0x2
	.long	.LASF860
	.value	0x267
	.uleb128 0x2
	.long	.LASF861
	.value	0x268
	.uleb128 0x2
	.long	.LASF862
	.value	0x269
	.uleb128 0x2
	.long	.LASF863
	.value	0x26a
	.uleb128 0x2
	.long	.LASF864
	.value	0x26b
	.uleb128 0x2
	.long	.LASF865
	.value	0x26c
	.uleb128 0x2
	.long	.LASF866
	.value	0x26d
	.uleb128 0x2
	.long	.LASF867
	.value	0x26e
	.uleb128 0x2
	.long	.LASF868
	.value	0x26f
	.uleb128 0x2
	.long	.LASF869
	.value	0x270
	.uleb128 0x2
	.long	.LASF870
	.value	0x271
	.uleb128 0x2
	.long	.LASF871
	.value	0x272
	.uleb128 0x2
	.long	.LASF872
	.value	0x273
	.uleb128 0x2
	.long	.LASF873
	.value	0x274
	.uleb128 0x2
	.long	.LASF874
	.value	0x275
	.uleb128 0x2
	.long	.LASF875
	.value	0x276
	.uleb128 0x2
	.long	.LASF876
	.value	0x277
	.uleb128 0x2
	.long	.LASF877
	.value	0x278
	.uleb128 0x2
	.long	.LASF878
	.value	0x279
	.uleb128 0x2
	.long	.LASF879
	.value	0x27a
	.uleb128 0x2
	.long	.LASF880
	.value	0x27b
	.uleb128 0x2
	.long	.LASF881
	.value	0x27c
	.uleb128 0x2
	.long	.LASF882
	.value	0x27d
	.uleb128 0x2
	.long	.LASF883
	.value	0x27e
	.uleb128 0x2
	.long	.LASF884
	.value	0x27f
	.uleb128 0x2
	.long	.LASF885
	.value	0x280
	.uleb128 0x2
	.long	.LASF886
	.value	0x281
	.uleb128 0x2
	.long	.LASF887
	.value	0x282
	.uleb128 0x2
	.long	.LASF888
	.value	0x283
	.uleb128 0x2
	.long	.LASF889
	.value	0x284
	.uleb128 0x2
	.long	.LASF890
	.value	0x285
	.uleb128 0x2
	.long	.LASF891
	.value	0x286
	.uleb128 0x2
	.long	.LASF892
	.value	0x287
	.uleb128 0x2
	.long	.LASF893
	.value	0x288
	.uleb128 0x2
	.long	.LASF894
	.value	0x289
	.uleb128 0x2
	.long	.LASF895
	.value	0x28a
	.uleb128 0x2
	.long	.LASF896
	.value	0x28b
	.uleb128 0x2
	.long	.LASF897
	.value	0x28c
	.uleb128 0x2
	.long	.LASF898
	.value	0x28d
	.uleb128 0x2
	.long	.LASF899
	.value	0x28e
	.uleb128 0x2
	.long	.LASF900
	.value	0x28f
	.uleb128 0x2
	.long	.LASF901
	.value	0x290
	.uleb128 0x2
	.long	.LASF902
	.value	0x291
	.uleb128 0x2
	.long	.LASF903
	.value	0x292
	.uleb128 0x2
	.long	.LASF904
	.value	0x293
	.uleb128 0x2
	.long	.LASF905
	.value	0x294
	.uleb128 0x2
	.long	.LASF906
	.value	0x295
	.uleb128 0x2
	.long	.LASF907
	.value	0x296
	.uleb128 0x2
	.long	.LASF908
	.value	0x297
	.uleb128 0x2
	.long	.LASF909
	.value	0x298
	.uleb128 0x2
	.long	.LASF910
	.value	0x299
	.uleb128 0x2
	.long	.LASF911
	.value	0x29a
	.uleb128 0x2
	.long	.LASF912
	.value	0x29b
	.uleb128 0x2
	.long	.LASF913
	.value	0x29c
	.uleb128 0x2
	.long	.LASF914
	.value	0x29d
	.uleb128 0x2
	.long	.LASF915
	.value	0x29e
	.uleb128 0x2
	.long	.LASF916
	.value	0x29f
	.uleb128 0x2
	.long	.LASF917
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF918
	.value	0x2a1
	.uleb128 0x2
	.long	.LASF919
	.value	0x2a2
	.uleb128 0x2
	.long	.LASF920
	.value	0x2a3
	.uleb128 0x2
	.long	.LASF921
	.value	0x2a4
	.uleb128 0x2
	.long	.LASF922
	.value	0x2a5
	.uleb128 0x2
	.long	.LASF923
	.value	0x2a6
	.uleb128 0x2
	.long	.LASF924
	.value	0x2a7
	.uleb128 0x2
	.long	.LASF925
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF926
	.value	0x2a9
	.uleb128 0x2
	.long	.LASF927
	.value	0x2aa
	.uleb128 0x2
	.long	.LASF928
	.value	0x2ab
	.uleb128 0x2
	.long	.LASF929
	.value	0x2ac
	.uleb128 0x2
	.long	.LASF930
	.value	0x2ad
	.uleb128 0x2
	.long	.LASF931
	.value	0x2ae
	.uleb128 0x2
	.long	.LASF932
	.value	0x2af
	.uleb128 0x2
	.long	.LASF933
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF934
	.value	0x2b1
	.uleb128 0x2
	.long	.LASF935
	.value	0x2b2
	.uleb128 0x2
	.long	.LASF936
	.value	0x2b3
	.uleb128 0x2
	.long	.LASF937
	.value	0x2b4
	.uleb128 0x2
	.long	.LASF938
	.value	0x2b5
	.uleb128 0x2
	.long	.LASF939
	.value	0x2b6
	.uleb128 0x2
	.long	.LASF940
	.value	0x2b7
	.uleb128 0x2
	.long	.LASF941
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF942
	.value	0x2b9
	.uleb128 0x2
	.long	.LASF943
	.value	0x2ba
	.uleb128 0x2
	.long	.LASF944
	.value	0x2bb
	.uleb128 0x2
	.long	.LASF945
	.value	0x2bc
	.uleb128 0x2
	.long	.LASF946
	.value	0x2bd
	.uleb128 0x2
	.long	.LASF947
	.value	0x2be
	.uleb128 0x2
	.long	.LASF948
	.value	0x2bf
	.uleb128 0x2
	.long	.LASF949
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF950
	.value	0x2c1
	.uleb128 0x2
	.long	.LASF951
	.value	0x2c2
	.uleb128 0x2
	.long	.LASF952
	.value	0x2c3
	.uleb128 0x2
	.long	.LASF953
	.value	0x2c4
	.uleb128 0x2
	.long	.LASF954
	.value	0x2c5
	.uleb128 0x2
	.long	.LASF955
	.value	0x2c6
	.uleb128 0x2
	.long	.LASF956
	.value	0x2c7
	.uleb128 0x2
	.long	.LASF957
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF958
	.value	0x2c9
	.uleb128 0x2
	.long	.LASF959
	.value	0x2ca
	.uleb128 0x2
	.long	.LASF960
	.value	0x2cb
	.uleb128 0x2
	.long	.LASF961
	.value	0x2cc
	.uleb128 0x2
	.long	.LASF962
	.value	0x2cd
	.uleb128 0x2
	.long	.LASF963
	.value	0x2ce
	.uleb128 0x2
	.long	.LASF964
	.value	0x2cf
	.uleb128 0x2
	.long	.LASF965
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF966
	.value	0x2d1
	.uleb128 0x2
	.long	.LASF967
	.value	0x2d2
	.uleb128 0x2
	.long	.LASF968
	.value	0x2d3
	.uleb128 0x2
	.long	.LASF969
	.value	0x2d4
	.uleb128 0x2
	.long	.LASF970
	.value	0x2d5
	.uleb128 0x2
	.long	.LASF971
	.value	0x2d6
	.uleb128 0x2
	.long	.LASF972
	.value	0x2d7
	.uleb128 0x2
	.long	.LASF973
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF974
	.value	0x2d9
	.uleb128 0x2
	.long	.LASF975
	.value	0x2da
	.uleb128 0x2
	.long	.LASF976
	.value	0x2db
	.uleb128 0x2
	.long	.LASF977
	.value	0x2dc
	.uleb128 0x2
	.long	.LASF978
	.value	0x2dd
	.uleb128 0x2
	.long	.LASF979
	.value	0x2de
	.uleb128 0x2
	.long	.LASF980
	.value	0x2df
	.uleb128 0x2
	.long	.LASF981
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF982
	.value	0x2e1
	.uleb128 0x2
	.long	.LASF983
	.value	0x2e2
	.uleb128 0x2
	.long	.LASF984
	.value	0x2e3
	.uleb128 0x2
	.long	.LASF985
	.value	0x2e4
	.uleb128 0x2
	.long	.LASF986
	.value	0x2e5
	.uleb128 0x2
	.long	.LASF987
	.value	0x2e6
	.uleb128 0x2
	.long	.LASF988
	.value	0x2e7
	.uleb128 0x2
	.long	.LASF989
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF990
	.value	0x2e9
	.uleb128 0x2
	.long	.LASF991
	.value	0x2ea
	.uleb128 0x2
	.long	.LASF992
	.value	0x2eb
	.uleb128 0x2
	.long	.LASF993
	.value	0x2ec
	.uleb128 0x2
	.long	.LASF994
	.value	0x2ed
	.uleb128 0x2
	.long	.LASF995
	.value	0x2ee
	.uleb128 0x2
	.long	.LASF996
	.value	0x2ef
	.uleb128 0x2
	.long	.LASF997
	.value	0x2f0
	.uleb128 0x2
	.long	.LASF998
	.value	0x2f1
	.uleb128 0x2
	.long	.LASF999
	.value	0x2f2
	.uleb128 0x2
	.long	.LASF1000
	.value	0x2f3
	.uleb128 0x2
	.long	.LASF1001
	.value	0x2f4
	.uleb128 0x2
	.long	.LASF1002
	.value	0x2f5
	.uleb128 0x2
	.long	.LASF1003
	.value	0x2f6
	.uleb128 0x2
	.long	.LASF1004
	.value	0x2f7
	.uleb128 0x2
	.long	.LASF1005
	.value	0x2f8
	.uleb128 0x2
	.long	.LASF1006
	.value	0x2f9
	.uleb128 0x2
	.long	.LASF1007
	.value	0x2fa
	.uleb128 0x2
	.long	.LASF1008
	.value	0x2fb
	.uleb128 0x2
	.long	.LASF1009
	.value	0x2fc
	.uleb128 0x2
	.long	.LASF1010
	.value	0x2fd
	.uleb128 0x2
	.long	.LASF1011
	.value	0x2fe
	.uleb128 0x2
	.long	.LASF1012
	.value	0x2ff
	.uleb128 0x2
	.long	.LASF1013
	.value	0x300
	.uleb128 0x2
	.long	.LASF1014
	.value	0x301
	.uleb128 0x2
	.long	.LASF1015
	.value	0x302
	.uleb128 0x2
	.long	.LASF1016
	.value	0x303
	.uleb128 0x2
	.long	.LASF1017
	.value	0x304
	.uleb128 0x2
	.long	.LASF1018
	.value	0x305
	.uleb128 0x2
	.long	.LASF1019
	.value	0x306
	.uleb128 0x2
	.long	.LASF1020
	.value	0x307
	.uleb128 0x2
	.long	.LASF1021
	.value	0x308
	.uleb128 0x2
	.long	.LASF1022
	.value	0x309
	.uleb128 0x2
	.long	.LASF1023
	.value	0x30a
	.uleb128 0x2
	.long	.LASF1024
	.value	0x30b
	.uleb128 0x2
	.long	.LASF1025
	.value	0x30c
	.uleb128 0x2
	.long	.LASF1026
	.value	0x30d
	.uleb128 0x2
	.long	.LASF1027
	.value	0x30e
	.uleb128 0x2
	.long	.LASF1028
	.value	0x30f
	.uleb128 0x2
	.long	.LASF1029
	.value	0x310
	.uleb128 0x2
	.long	.LASF1030
	.value	0x311
	.uleb128 0x2
	.long	.LASF1031
	.value	0x312
	.uleb128 0x2
	.long	.LASF1032
	.value	0x313
	.uleb128 0x2
	.long	.LASF1033
	.value	0x314
	.uleb128 0x2
	.long	.LASF1034
	.value	0x315
	.uleb128 0x2
	.long	.LASF1035
	.value	0x316
	.uleb128 0x2
	.long	.LASF1036
	.value	0x317
	.uleb128 0x2
	.long	.LASF1037
	.value	0x318
	.uleb128 0x2
	.long	.LASF1038
	.value	0x319
	.uleb128 0x2
	.long	.LASF1039
	.value	0x31a
	.uleb128 0x2
	.long	.LASF1040
	.value	0x31b
	.uleb128 0x2
	.long	.LASF1041
	.value	0x31c
	.uleb128 0x2
	.long	.LASF1042
	.value	0x31d
	.uleb128 0x2
	.long	.LASF1043
	.value	0x31e
	.uleb128 0x2
	.long	.LASF1044
	.value	0x31f
	.uleb128 0x2
	.long	.LASF1045
	.value	0x320
	.uleb128 0x2
	.long	.LASF1046
	.value	0x321
	.uleb128 0x2
	.long	.LASF1047
	.value	0x322
	.uleb128 0x2
	.long	.LASF1048
	.value	0x323
	.uleb128 0x2
	.long	.LASF1049
	.value	0x324
	.uleb128 0x2
	.long	.LASF1050
	.value	0x325
	.uleb128 0x2
	.long	.LASF1051
	.value	0x326
	.uleb128 0x2
	.long	.LASF1052
	.value	0x327
	.uleb128 0x2
	.long	.LASF1053
	.value	0x328
	.uleb128 0x2
	.long	.LASF1054
	.value	0x329
	.uleb128 0x2
	.long	.LASF1055
	.value	0x32a
	.uleb128 0x2
	.long	.LASF1056
	.value	0x32b
	.uleb128 0x2
	.long	.LASF1057
	.value	0x32c
	.uleb128 0x2
	.long	.LASF1058
	.value	0x32d
	.uleb128 0x2
	.long	.LASF1059
	.value	0x32e
	.uleb128 0x2
	.long	.LASF1060
	.value	0x32f
	.uleb128 0x2
	.long	.LASF1061
	.value	0x330
	.uleb128 0x2
	.long	.LASF1062
	.value	0x331
	.uleb128 0x2
	.long	.LASF1063
	.value	0x332
	.uleb128 0x2
	.long	.LASF1064
	.value	0x333
	.uleb128 0x2
	.long	.LASF1065
	.value	0x334
	.uleb128 0x2
	.long	.LASF1066
	.value	0x335
	.uleb128 0x2
	.long	.LASF1067
	.value	0x336
	.uleb128 0x2
	.long	.LASF1068
	.value	0x337
	.uleb128 0x2
	.long	.LASF1069
	.value	0x338
	.uleb128 0x2
	.long	.LASF1070
	.value	0x339
	.uleb128 0x2
	.long	.LASF1071
	.value	0x33a
	.uleb128 0x2
	.long	.LASF1072
	.value	0x33b
	.uleb128 0x2
	.long	.LASF1073
	.value	0x33c
	.uleb128 0x2
	.long	.LASF1074
	.value	0x33d
	.uleb128 0x2
	.long	.LASF1075
	.value	0x33e
	.uleb128 0x2
	.long	.LASF1076
	.value	0x33f
	.uleb128 0x2
	.long	.LASF1077
	.value	0x340
	.uleb128 0x2
	.long	.LASF1078
	.value	0x341
	.uleb128 0x2
	.long	.LASF1079
	.value	0x342
	.uleb128 0x2
	.long	.LASF1080
	.value	0x343
	.uleb128 0x2
	.long	.LASF1081
	.value	0x344
	.uleb128 0x2
	.long	.LASF1082
	.value	0x345
	.uleb128 0x2
	.long	.LASF1083
	.value	0x346
	.uleb128 0x2
	.long	.LASF1084
	.value	0x347
	.uleb128 0x2
	.long	.LASF1085
	.value	0x348
	.uleb128 0x2
	.long	.LASF1086
	.value	0x349
	.uleb128 0x2
	.long	.LASF1087
	.value	0x34a
	.uleb128 0x2
	.long	.LASF1088
	.value	0x34b
	.uleb128 0x2
	.long	.LASF1089
	.value	0x34c
	.uleb128 0x2
	.long	.LASF1090
	.value	0x34d
	.uleb128 0x2
	.long	.LASF1091
	.value	0x34e
	.uleb128 0x2
	.long	.LASF1092
	.value	0x34f
	.uleb128 0x2
	.long	.LASF1093
	.value	0x350
	.uleb128 0x2
	.long	.LASF1094
	.value	0x351
	.uleb128 0x2
	.long	.LASF1095
	.value	0x352
	.uleb128 0x2
	.long	.LASF1096
	.value	0x353
	.uleb128 0x2
	.long	.LASF1097
	.value	0x354
	.uleb128 0x2
	.long	.LASF1098
	.value	0x355
	.uleb128 0x2
	.long	.LASF1099
	.value	0x356
	.uleb128 0x2
	.long	.LASF1100
	.value	0x357
	.uleb128 0x2
	.long	.LASF1101
	.value	0x358
	.uleb128 0x2
	.long	.LASF1102
	.value	0x359
	.uleb128 0x2
	.long	.LASF1103
	.value	0x35a
	.uleb128 0x2
	.long	.LASF1104
	.value	0x35b
	.uleb128 0x2
	.long	.LASF1105
	.value	0x35c
	.uleb128 0x2
	.long	.LASF1106
	.value	0x35d
	.uleb128 0x2
	.long	.LASF1107
	.value	0x35e
	.uleb128 0x2
	.long	.LASF1108
	.value	0x35f
	.uleb128 0x2
	.long	.LASF1109
	.value	0x360
	.uleb128 0x2
	.long	.LASF1110
	.value	0x361
	.uleb128 0x2
	.long	.LASF1111
	.value	0x362
	.uleb128 0x2
	.long	.LASF1112
	.value	0x363
	.uleb128 0x2
	.long	.LASF1113
	.value	0x364
	.uleb128 0x2
	.long	.LASF1114
	.value	0x365
	.uleb128 0x2
	.long	.LASF1115
	.value	0x366
	.uleb128 0x2
	.long	.LASF1116
	.value	0x367
	.uleb128 0x2
	.long	.LASF1117
	.value	0x368
	.uleb128 0x2
	.long	.LASF1118
	.value	0x369
	.uleb128 0x2
	.long	.LASF1119
	.value	0x36a
	.uleb128 0x2
	.long	.LASF1120
	.value	0x36b
	.uleb128 0x2
	.long	.LASF1121
	.value	0x36c
	.uleb128 0x2
	.long	.LASF1122
	.value	0x36d
	.uleb128 0x2
	.long	.LASF1123
	.value	0x36e
	.uleb128 0x2
	.long	.LASF1124
	.value	0x36f
	.uleb128 0x2
	.long	.LASF1125
	.value	0x370
	.uleb128 0x2
	.long	.LASF1126
	.value	0x371
	.uleb128 0x2
	.long	.LASF1127
	.value	0x372
	.uleb128 0x2
	.long	.LASF1128
	.value	0x373
	.uleb128 0x2
	.long	.LASF1129
	.value	0x374
	.uleb128 0x2
	.long	.LASF1130
	.value	0x375
	.uleb128 0x2
	.long	.LASF1131
	.value	0x376
	.uleb128 0x2
	.long	.LASF1132
	.value	0x377
	.uleb128 0x2
	.long	.LASF1133
	.value	0x378
	.uleb128 0x2
	.long	.LASF1134
	.value	0x379
	.uleb128 0x2
	.long	.LASF1135
	.value	0x37a
	.uleb128 0x2
	.long	.LASF1136
	.value	0x37b
	.uleb128 0x2
	.long	.LASF1137
	.value	0x37c
	.uleb128 0x2
	.long	.LASF1138
	.value	0x37d
	.uleb128 0x2
	.long	.LASF1139
	.value	0x37e
	.uleb128 0x2
	.long	.LASF1140
	.value	0x37f
	.uleb128 0x2
	.long	.LASF1141
	.value	0x380
	.uleb128 0x2
	.long	.LASF1142
	.value	0x381
	.uleb128 0x2
	.long	.LASF1143
	.value	0x382
	.uleb128 0x2
	.long	.LASF1144
	.value	0x383
	.uleb128 0x2
	.long	.LASF1145
	.value	0x384
	.uleb128 0x2
	.long	.LASF1146
	.value	0x385
	.uleb128 0x2
	.long	.LASF1147
	.value	0x386
	.uleb128 0x2
	.long	.LASF1148
	.value	0x387
	.uleb128 0x2
	.long	.LASF1149
	.value	0x388
	.uleb128 0x2
	.long	.LASF1150
	.value	0x389
	.uleb128 0x2
	.long	.LASF1151
	.value	0x38a
	.uleb128 0x2
	.long	.LASF1152
	.value	0x38b
	.uleb128 0x2
	.long	.LASF1153
	.value	0x38c
	.uleb128 0x2
	.long	.LASF1154
	.value	0x38d
	.uleb128 0x2
	.long	.LASF1155
	.value	0x38e
	.uleb128 0x2
	.long	.LASF1156
	.value	0x38f
	.uleb128 0x2
	.long	.LASF1157
	.value	0x390
	.uleb128 0x2
	.long	.LASF1158
	.value	0x391
	.uleb128 0x2
	.long	.LASF1159
	.value	0x392
	.uleb128 0x2
	.long	.LASF1160
	.value	0x393
	.uleb128 0x2
	.long	.LASF1161
	.value	0x394
	.uleb128 0x2
	.long	.LASF1162
	.value	0x395
	.uleb128 0x2
	.long	.LASF1163
	.value	0x396
	.uleb128 0x2
	.long	.LASF1164
	.value	0x397
	.uleb128 0x2
	.long	.LASF1165
	.value	0x398
	.uleb128 0x2
	.long	.LASF1166
	.value	0x399
	.uleb128 0x2
	.long	.LASF1167
	.value	0x39a
	.uleb128 0x2
	.long	.LASF1168
	.value	0x39b
	.uleb128 0x2
	.long	.LASF1169
	.value	0x39c
	.uleb128 0x2
	.long	.LASF1170
	.value	0x39d
	.uleb128 0x2
	.long	.LASF1171
	.value	0x39e
	.uleb128 0x2
	.long	.LASF1172
	.value	0x39f
	.uleb128 0x2
	.long	.LASF1173
	.value	0x3a0
	.uleb128 0x2
	.long	.LASF1174
	.value	0x3a1
	.uleb128 0x2
	.long	.LASF1175
	.value	0x3a2
	.uleb128 0x2
	.long	.LASF1176
	.value	0x3a3
	.uleb128 0x2
	.long	.LASF1177
	.value	0x3a4
	.uleb128 0x2
	.long	.LASF1178
	.value	0x3a5
	.uleb128 0x2
	.long	.LASF1179
	.value	0x3a6
	.uleb128 0x2
	.long	.LASF1180
	.value	0x3a7
	.uleb128 0x2
	.long	.LASF1181
	.value	0x3a8
	.uleb128 0x2
	.long	.LASF1182
	.value	0x3a9
	.uleb128 0x2
	.long	.LASF1183
	.value	0x3aa
	.uleb128 0x2
	.long	.LASF1184
	.value	0x3ab
	.uleb128 0x2
	.long	.LASF1185
	.value	0x3ac
	.uleb128 0x2
	.long	.LASF1186
	.value	0x3ad
	.uleb128 0x2
	.long	.LASF1187
	.value	0x3ae
	.uleb128 0x2
	.long	.LASF1188
	.value	0x3af
	.uleb128 0x2
	.long	.LASF1189
	.value	0x3b0
	.uleb128 0x2
	.long	.LASF1190
	.value	0x3b1
	.uleb128 0x2
	.long	.LASF1191
	.value	0x3b2
	.uleb128 0x2
	.long	.LASF1192
	.value	0x3b3
	.uleb128 0x2
	.long	.LASF1193
	.value	0x3b4
	.uleb128 0x2
	.long	.LASF1194
	.value	0x3b5
	.uleb128 0x2
	.long	.LASF1195
	.value	0x3b6
	.uleb128 0x2
	.long	.LASF1196
	.value	0x3b7
	.uleb128 0x2
	.long	.LASF1197
	.value	0x3b8
	.uleb128 0x2
	.long	.LASF1198
	.value	0x3b9
	.uleb128 0x2
	.long	.LASF1199
	.value	0x3ba
	.uleb128 0x2
	.long	.LASF1200
	.value	0x3bb
	.uleb128 0x2
	.long	.LASF1201
	.value	0x3bc
	.uleb128 0x2
	.long	.LASF1202
	.value	0x3bd
	.uleb128 0x2
	.long	.LASF1203
	.value	0x3be
	.uleb128 0x2
	.long	.LASF1204
	.value	0x3bf
	.uleb128 0x2
	.long	.LASF1205
	.value	0x3c0
	.uleb128 0x2
	.long	.LASF1206
	.value	0x3c1
	.uleb128 0x2
	.long	.LASF1207
	.value	0x3c2
	.uleb128 0x2
	.long	.LASF1208
	.value	0x3c3
	.uleb128 0x2
	.long	.LASF1209
	.value	0x3c4
	.uleb128 0x2
	.long	.LASF1210
	.value	0x3c5
	.uleb128 0x2
	.long	.LASF1211
	.value	0x3c6
	.uleb128 0x2
	.long	.LASF1212
	.value	0x3c7
	.byte	0
	.uleb128 0xe
	.long	.LASF1213
	.byte	0xc
	.value	0x478
	.long	0x8ba
	.uleb128 0x1b
	.byte	0x38
	.byte	0xc
	.value	0x47b
	.long	0x22b7
	.uleb128 0x4
	.long	.LASF1214
	.byte	0xc
	.value	0x47d
	.byte	0xf
	.long	0x8ae
	.byte	0
	.uleb128 0x4
	.long	.LASF1215
	.byte	0xc
	.value	0x47e
	.byte	0xa
	.long	0x7f
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1216
	.byte	0xc
	.value	0x47f
	.byte	0xa
	.long	0x7f
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1217
	.byte	0xc
	.value	0x481
	.byte	0xf
	.long	0x501
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1218
	.byte	0xc
	.value	0x482
	.byte	0x10
	.long	0x223f
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1219
	.byte	0xc
	.value	0x483
	.byte	0xa
	.long	0x7f
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1220
	.byte	0xc
	.value	0x483
	.byte	0x11
	.long	0x7f
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.long	.LASF1221
	.byte	0xc
	.value	0x484
	.long	0x224b
	.uleb128 0x16
	.long	0x9b
	.byte	0xc
	.value	0x48b
	.byte	0xe
	.long	0x260d
	.uleb128 0x1
	.long	.LASF1222
	.byte	0
	.uleb128 0x1
	.long	.LASF1223
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1224
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1225
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1226
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1227
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1228
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1229
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1230
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1231
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1232
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1233
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1234
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1235
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1236
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1237
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1238
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1239
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1240
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1241
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1242
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1243
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1244
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1245
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1246
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1247
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1248
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1249
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1250
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1251
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1252
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1253
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1254
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1255
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1256
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1257
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1258
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1259
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1260
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1261
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1262
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1263
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1264
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1265
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1266
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1267
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1268
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1269
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1270
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1271
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1272
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1273
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1274
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1275
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1276
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1277
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1278
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1279
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1280
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1281
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1282
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1283
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1284
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1285
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1286
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1287
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1288
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1289
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1290
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1291
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1292
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1293
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1294
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1295
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1296
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1297
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1298
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1299
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1300
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1301
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1302
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1303
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1304
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1305
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1306
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1307
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1308
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1309
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1310
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1311
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1312
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1313
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1314
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1315
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1316
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1317
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1318
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1319
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1320
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1321
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1322
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1323
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1324
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1325
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1326
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1327
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1328
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1329
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1330
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1331
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF1332
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF1333
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF1334
	.byte	0x70
	.uleb128 0x1
	.long	.LASF1335
	.byte	0x71
	.uleb128 0x1
	.long	.LASF1336
	.byte	0x72
	.uleb128 0x1
	.long	.LASF1337
	.byte	0x73
	.uleb128 0x1
	.long	.LASF1338
	.byte	0x74
	.uleb128 0x1
	.long	.LASF1339
	.byte	0x75
	.uleb128 0x1
	.long	.LASF1340
	.byte	0x76
	.uleb128 0x1
	.long	.LASF1341
	.byte	0x77
	.uleb128 0x1
	.long	.LASF1342
	.byte	0x78
	.uleb128 0x1
	.long	.LASF1343
	.byte	0x79
	.uleb128 0x1
	.long	.LASF1344
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF1345
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF1346
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF1347
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF1348
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF1349
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF1350
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1351
	.byte	0x81
	.uleb128 0x1
	.long	.LASF1352
	.byte	0x82
	.uleb128 0x1
	.long	.LASF1353
	.byte	0x83
	.uleb128 0x1
	.long	.LASF1354
	.byte	0x84
	.uleb128 0x1
	.long	.LASF1355
	.byte	0x85
	.uleb128 0x1
	.long	.LASF1356
	.byte	0x86
	.uleb128 0x1
	.long	.LASF1357
	.byte	0x87
	.uleb128 0x1
	.long	.LASF1358
	.byte	0x88
	.uleb128 0x1
	.long	.LASF1359
	.byte	0x89
	.byte	0
	.uleb128 0xe
	.long	.LASF1360
	.byte	0xc
	.value	0x517
	.long	0x22c3
	.uleb128 0x1b
	.byte	0x5c
	.byte	0xc
	.value	0x519
	.long	0x2765
	.uleb128 0x4
	.long	.LASF1361
	.byte	0xc
	.value	0x51b
	.byte	0x9
	.long	0x78
	.byte	0
	.uleb128 0x4
	.long	.LASF1362
	.byte	0xc
	.value	0x51c
	.byte	0x9
	.long	0x78
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1363
	.byte	0xc
	.value	0x51d
	.byte	0x9
	.long	0x78
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1364
	.byte	0xc
	.value	0x51e
	.byte	0x9
	.long	0x78
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1365
	.byte	0xc
	.value	0x51f
	.byte	0x9
	.long	0x78
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1366
	.byte	0xc
	.value	0x520
	.byte	0x9
	.long	0x78
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1367
	.byte	0xc
	.value	0x521
	.byte	0x9
	.long	0x78
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1368
	.byte	0xc
	.value	0x522
	.byte	0x9
	.long	0x78
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1369
	.byte	0xc
	.value	0x523
	.byte	0x9
	.long	0x78
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1370
	.byte	0xc
	.value	0x524
	.byte	0x9
	.long	0x78
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1371
	.byte	0xc
	.value	0x525
	.byte	0x9
	.long	0x78
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1372
	.byte	0xc
	.value	0x526
	.byte	0x9
	.long	0x78
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1373
	.byte	0xc
	.value	0x527
	.byte	0x9
	.long	0x78
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1374
	.byte	0xc
	.value	0x528
	.byte	0x9
	.long	0x78
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1375
	.byte	0xc
	.value	0x529
	.byte	0x9
	.long	0x78
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1376
	.byte	0xc
	.value	0x52a
	.byte	0x9
	.long	0x78
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1377
	.byte	0xc
	.value	0x52b
	.byte	0x9
	.long	0x78
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1378
	.byte	0xc
	.value	0x52c
	.byte	0x9
	.long	0x78
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1379
	.byte	0xc
	.value	0x52d
	.byte	0x9
	.long	0x78
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1380
	.byte	0xc
	.value	0x52e
	.byte	0x9
	.long	0x78
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1381
	.byte	0xc
	.value	0x52f
	.byte	0x9
	.long	0x78
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1382
	.byte	0xc
	.value	0x530
	.byte	0x9
	.long	0x78
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1383
	.byte	0xc
	.value	0x531
	.byte	0x9
	.long	0x78
	.byte	0x58
	.byte	0
	.uleb128 0xe
	.long	.LASF1384
	.byte	0xc
	.value	0x533
	.long	0x2619
	.uleb128 0xf
	.long	0x9b
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.long	0x2790
	.uleb128 0x1
	.long	.LASF1385
	.byte	0
	.uleb128 0x1
	.long	.LASF1386
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1387
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.byte	0x18
	.byte	0xd
	.byte	0x44
	.long	0x27cb
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xd
	.byte	0x46
	.byte	0xe
	.long	0x27cb
	.byte	0
	.uleb128 0x3
	.long	.LASF1216
	.byte	0xd
	.byte	0x47
	.byte	0xa
	.long	0x78
	.byte	0x8
	.uleb128 0x9
	.string	"sx"
	.byte	0xd
	.byte	0x48
	.byte	0xd
	.long	0x45c
	.byte	0xc
	.uleb128 0x9
	.string	"sy"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x45c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x22b7
	.uleb128 0x7
	.long	.LASF1389
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x2790
	.uleb128 0x1a
	.long	.LASF1390
	.byte	0xe0
	.byte	0xe
	.byte	0xcf
	.byte	0x10
	.long	0x29b4
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xe
	.byte	0xd2
	.byte	0x10
	.long	0x553
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xe
	.byte	0xd5
	.byte	0xe
	.long	0x45c
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xe
	.byte	0xd6
	.byte	0xe
	.long	0x45c
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xe
	.byte	0xd7
	.byte	0xe
	.long	0x45c
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xe
	.byte	0xda
	.byte	0x14
	.long	0x29b4
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xe
	.byte	0xdb
	.byte	0x14
	.long	0x29b4
	.byte	0x30
	.uleb128 0x3
	.long	.LASF84
	.byte	0xe
	.byte	0xde
	.byte	0xe
	.long	0x476
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1214
	.byte	0xe
	.byte	0xdf
	.byte	0x12
	.long	0x8ae
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1215
	.byte	0xe
	.byte	0xe0
	.byte	0xb
	.long	0x78
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xe
	.byte	0xe4
	.byte	0x14
	.long	0x29b4
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xe
	.byte	0xe5
	.byte	0x14
	.long	0x29b4
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xe
	.byte	0xe7
	.byte	0x19
	.long	0x29ee
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xe
	.byte	0xea
	.byte	0xe
	.long	0x45c
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xe
	.byte	0xeb
	.byte	0xe
	.long	0x45c
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xe
	.byte	0xee
	.byte	0xe
	.long	0x45c
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xe
	.byte	0xef
	.byte	0xe
	.long	0x45c
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xe
	.byte	0xf2
	.byte	0xe
	.long	0x45c
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xe
	.byte	0xf3
	.byte	0xe
	.long	0x45c
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xe
	.byte	0xf4
	.byte	0xe
	.long	0x45c
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xe
	.byte	0xf7
	.byte	0xb
	.long	0x78
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF85
	.byte	0xe
	.byte	0xf9
	.byte	0x11
	.long	0x260d
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xe
	.byte	0xfa
	.byte	0x12
	.long	0x29f3
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1216
	.byte	0xe
	.byte	0xfc
	.byte	0xb
	.long	0x78
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xe
	.byte	0xfd
	.byte	0xf
	.long	0x27cb
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xe
	.byte	0xfe
	.byte	0xb
	.long	0x78
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xe
	.byte	0xff
	.byte	0xb
	.long	0x78
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1405
	.byte	0xe
	.value	0x102
	.byte	0xb
	.long	0x78
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1406
	.byte	0xe
	.value	0x103
	.byte	0xb
	.long	0x78
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1407
	.byte	0xe
	.value	0x107
	.byte	0x14
	.long	0x29b4
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1366
	.byte	0xe
	.value	0x10b
	.byte	0xb
	.long	0x78
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1408
	.byte	0xe
	.value	0x10f
	.byte	0xb
	.long	0x78
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1409
	.byte	0xe
	.value	0x113
	.byte	0x16
	.long	0x2bcd
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1410
	.byte	0xe
	.value	0x116
	.byte	0xb
	.long	0x78
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1411
	.byte	0xe
	.value	0x119
	.byte	0x11
	.long	0x450
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1412
	.byte	0xe
	.value	0x11c
	.byte	0x14
	.long	0x29b4
	.byte	0xd8
	.byte	0
	.uleb128 0x6
	.long	0x27dc
	.uleb128 0x1a
	.long	.LASF1413
	.byte	0x10
	.byte	0xf
	.byte	0xe3
	.byte	0x10
	.long	0x29ee
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xf
	.byte	0xe5
	.byte	0xf
	.long	0x2f95
	.byte	0
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xf
	.byte	0xe6
	.byte	0xb
	.long	0xa9
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xf
	.byte	0xe7
	.byte	0xb
	.long	0xa9
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	0x29b9
	.uleb128 0x6
	.long	0x2765
	.uleb128 0x34
	.long	.LASF1417
	.value	0x140
	.byte	0x10
	.byte	0x53
	.byte	0x10
	.long	0x2bcd
	.uleb128 0x9
	.string	"mo"
	.byte	0x10
	.byte	0x55
	.byte	0xe
	.long	0x2c8b
	.byte	0
	.uleb128 0x3
	.long	.LASF1418
	.byte	0x10
	.byte	0x56
	.byte	0x13
	.long	0x2c60
	.byte	0x8
	.uleb128 0x9
	.string	"cmd"
	.byte	0x10
	.byte	0x57
	.byte	0xf
	.long	0x2c35
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1419
	.byte	0x10
	.byte	0x5c
	.byte	0xe
	.long	0x45c
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1420
	.byte	0x10
	.byte	0x5e
	.byte	0xe
	.long	0x45c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1421
	.byte	0x10
	.byte	0x60
	.byte	0x16
	.long	0x45c
	.byte	0x1c
	.uleb128 0x9
	.string	"bob"
	.byte	0x10
	.byte	0x62
	.byte	0x16
	.long	0x45c
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1404
	.byte	0x10
	.byte	0x66
	.byte	0xb
	.long	0x78
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1422
	.byte	0x10
	.byte	0x67
	.byte	0xb
	.long	0x78
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1423
	.byte	0x10
	.byte	0x69
	.byte	0xb
	.long	0x78
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1424
	.byte	0x10
	.byte	0x6c
	.byte	0xb
	.long	0x2c90
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1425
	.byte	0x10
	.byte	0x6d
	.byte	0xe
	.long	0x2ca0
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1426
	.byte	0x10
	.byte	0x6e
	.byte	0xe
	.long	0x3e2
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1427
	.byte	0x10
	.byte	0x71
	.byte	0xb
	.long	0x2cb0
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1428
	.byte	0x10
	.byte	0x72
	.byte	0x12
	.long	0x355
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1429
	.byte	0x10
	.byte	0x75
	.byte	0x12
	.long	0x355
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1430
	.byte	0x10
	.byte	0x77
	.byte	0xe
	.long	0x2cc0
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1431
	.byte	0x10
	.byte	0x78
	.byte	0xb
	.long	0x2cb0
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1432
	.byte	0x10
	.byte	0x79
	.byte	0xb
	.long	0x2cb0
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1433
	.byte	0x10
	.byte	0x7c
	.byte	0xb
	.long	0x78
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1434
	.byte	0x10
	.byte	0x7d
	.byte	0xb
	.long	0x78
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1435
	.byte	0x10
	.byte	0x81
	.byte	0xb
	.long	0x78
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1436
	.byte	0x10
	.byte	0x84
	.byte	0xb
	.long	0x78
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1437
	.byte	0x10
	.byte	0x87
	.byte	0xb
	.long	0x78
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0x10
	.byte	0x88
	.byte	0xb
	.long	0x78
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x10
	.byte	0x89
	.byte	0xb
	.long	0x78
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1440
	.byte	0x10
	.byte	0x8c
	.byte	0xc
	.long	0xca
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0x10
	.byte	0x8f
	.byte	0xb
	.long	0x78
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1442
	.byte	0x10
	.byte	0x90
	.byte	0xb
	.long	0x78
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1443
	.byte	0x10
	.byte	0x93
	.byte	0xe
	.long	0x2c8b
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1444
	.byte	0x10
	.byte	0x96
	.byte	0xb
	.long	0x78
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1445
	.byte	0x10
	.byte	0x9a
	.byte	0xb
	.long	0x78
	.byte	0xfc
	.uleb128 0x20
	.long	.LASF1446
	.byte	0x9e
	.byte	0xb
	.long	0x78
	.value	0x100
	.uleb128 0x20
	.long	.LASF1447
	.byte	0xa1
	.byte	0xf
	.long	0x2cd0
	.value	0x108
	.uleb128 0x20
	.long	.LASF1448
	.byte	0xa4
	.byte	0xe
	.long	0x3e2
	.value	0x138
	.byte	0
	.uleb128 0x6
	.long	0x29f8
	.uleb128 0xe
	.long	.LASF1449
	.byte	0xe
	.value	0x11e
	.long	0x27dc
	.uleb128 0x13
	.byte	0x8
	.byte	0x11
	.byte	0x24
	.long	0x2c35
	.uleb128 0x3
	.long	.LASF1450
	.byte	0x11
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1451
	.byte	0x11
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1452
	.byte	0x11
	.byte	0x28
	.byte	0xb
	.long	0xa9
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1453
	.byte	0x11
	.byte	0x29
	.byte	0xb
	.long	0xa9
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1454
	.byte	0x11
	.byte	0x2a
	.byte	0xa
	.long	0x3ee
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1455
	.byte	0x11
	.byte	0x2b
	.byte	0xa
	.long	0x3ee
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF1456
	.byte	0x11
	.byte	0x2c
	.byte	0x3
	.long	0x2bde
	.uleb128 0xf
	.long	0x9b
	.byte	0x10
	.byte	0x36
	.byte	0x1
	.long	0x2c60
	.uleb128 0x1
	.long	.LASF1457
	.byte	0
	.uleb128 0x1
	.long	.LASF1458
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1459
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF1460
	.byte	0x10
	.byte	0x3e
	.byte	0x3
	.long	0x2c41
	.uleb128 0xf
	.long	0x9b
	.byte	0x10
	.byte	0x45
	.byte	0x1
	.long	0x2c8b
	.uleb128 0x1
	.long	.LASF1461
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1462
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1463
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	0x2bd2
	.uleb128 0xc
	.long	0x78
	.long	0x2ca0
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x3e2
	.long	0x2cb0
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x78
	.long	0x2cc0
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x3e2
	.long	0x2cd0
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x27d0
	.long	0x2ce0
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1464
	.byte	0x10
	.byte	0xa6
	.byte	0x3
	.long	0x29f8
	.uleb128 0xb
	.long	.LASF1466
	.byte	0x13
	.byte	0x60
	.byte	0x11
	.long	0x3e2
	.uleb128 0xb
	.long	.LASF1467
	.byte	0x13
	.byte	0xa8
	.byte	0xc
	.long	0x78
	.uleb128 0xb
	.long	.LASF1468
	.byte	0x13
	.byte	0xac
	.byte	0xd
	.long	0x78
	.uleb128 0xb
	.long	.LASF1469
	.byte	0x14
	.byte	0x1e
	.byte	0x10
	.long	0x2d1c
	.uleb128 0x6
	.long	0xca
	.uleb128 0x13
	.byte	0x8
	.byte	0xf
	.byte	0x47
	.long	0x2d40
	.uleb128 0x9
	.string	"x"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0x45c
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0x45c
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF1470
	.byte	0xf
	.byte	0x4c
	.byte	0x3
	.long	0x2d21
	.uleb128 0x13
	.byte	0x28
	.byte	0xf
	.byte	0x58
	.long	0x2d83
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xf
	.byte	0x5a
	.byte	0x10
	.long	0x553
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xf
	.byte	0x5b
	.byte	0xe
	.long	0x45c
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xf
	.byte	0x5c
	.byte	0xe
	.long	0x45c
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xf
	.byte	0x5d
	.byte	0xe
	.long	0x45c
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1471
	.byte	0xf
	.byte	0x5f
	.byte	0x3
	.long	0x2d4c
	.uleb128 0x13
	.byte	0x80
	.byte	0xf
	.byte	0x65
	.long	0x2e68
	.uleb128 0x3
	.long	.LASF1472
	.byte	0xf
	.byte	0x67
	.byte	0xd
	.long	0x45c
	.byte	0
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xf
	.byte	0x68
	.byte	0xd
	.long	0x45c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1474
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0xa9
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1475
	.byte	0xf
	.byte	0x6a
	.byte	0xb
	.long	0xa9
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xf
	.byte	0x6b
	.byte	0xb
	.long	0xa9
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xf
	.byte	0x6c
	.byte	0xb
	.long	0xa9
	.byte	0xe
	.uleb128 0x9
	.string	"tag"
	.byte	0xf
	.byte	0x6d
	.byte	0xb
	.long	0xa9
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1478
	.byte	0xf
	.byte	0x70
	.byte	0xa
	.long	0x78
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1479
	.byte	0xf
	.byte	0x73
	.byte	0xd
	.long	0x2c8b
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1480
	.byte	0xf
	.byte	0x76
	.byte	0xa
	.long	0x2cb0
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1481
	.byte	0xf
	.byte	0x79
	.byte	0x11
	.long	0x2d83
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xf
	.byte	0x7c
	.byte	0xa
	.long	0x78
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1482
	.byte	0xf
	.byte	0x7f
	.byte	0xd
	.long	0x2c8b
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1483
	.byte	0xf
	.byte	0x82
	.byte	0xb
	.long	0xc8
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1484
	.byte	0xf
	.byte	0x84
	.byte	0xb
	.long	0x78
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1485
	.byte	0xf
	.byte	0x85
	.byte	0x15
	.long	0x2f28
	.byte	0x78
	.byte	0
	.uleb128 0x1a
	.long	.LASF1486
	.byte	0x58
	.byte	0xf
	.byte	0xb3
	.byte	0x10
	.long	0x2f28
	.uleb128 0x9
	.string	"v1"
	.byte	0xf
	.byte	0xb6
	.byte	0xf
	.long	0x2fd7
	.byte	0
	.uleb128 0x9
	.string	"v2"
	.byte	0xf
	.byte	0xb7
	.byte	0xf
	.long	0x2fd7
	.byte	0x8
	.uleb128 0x9
	.string	"dx"
	.byte	0xf
	.byte	0xba
	.byte	0xd
	.long	0x45c
	.byte	0x10
	.uleb128 0x9
	.string	"dy"
	.byte	0xf
	.byte	0xbb
	.byte	0xd
	.long	0x45c
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xf
	.byte	0xbe
	.byte	0xb
	.long	0xa9
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xf
	.byte	0xbf
	.byte	0xb
	.long	0xa9
	.byte	0x1a
	.uleb128 0x9
	.string	"tag"
	.byte	0xf
	.byte	0xc0
	.byte	0xb
	.long	0xa9
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1487
	.byte	0xf
	.byte	0xc4
	.byte	0xb
	.long	0x3fa
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1488
	.byte	0xf
	.byte	0xc8
	.byte	0xd
	.long	0x2fdc
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1489
	.byte	0xf
	.byte	0xcb
	.byte	0x11
	.long	0x2fcb
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1490
	.byte	0xf
	.byte	0xcf
	.byte	0xf
	.long	0x2f95
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1491
	.byte	0xf
	.byte	0xd0
	.byte	0xf
	.long	0x2f95
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xf
	.byte	0xd3
	.byte	0xa
	.long	0x78
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1483
	.byte	0xf
	.byte	0xd6
	.byte	0xb
	.long	0xc8
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	0x2f2d
	.uleb128 0x6
	.long	0x2e68
	.uleb128 0x7
	.long	.LASF1492
	.byte	0xf
	.byte	0x87
	.byte	0x3
	.long	0x2d8f
	.uleb128 0x13
	.byte	0x18
	.byte	0xf
	.byte	0x90
	.long	0x2f95
	.uleb128 0x3
	.long	.LASF1493
	.byte	0xf
	.byte	0x93
	.byte	0xd
	.long	0x45c
	.byte	0
	.uleb128 0x3
	.long	.LASF1494
	.byte	0xf
	.byte	0x96
	.byte	0xd
	.long	0x45c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1495
	.byte	0xf
	.byte	0x9a
	.byte	0xb
	.long	0xa9
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1496
	.byte	0xf
	.byte	0x9b
	.byte	0xb
	.long	0xa9
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1497
	.byte	0xf
	.byte	0x9c
	.byte	0xb
	.long	0xa9
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xf
	.byte	0x9f
	.byte	0xf
	.long	0x2f95
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x2f32
	.uleb128 0x7
	.long	.LASF1498
	.byte	0xf
	.byte	0xa1
	.byte	0x3
	.long	0x2f3e
	.uleb128 0xf
	.long	0x9b
	.byte	0xf
	.byte	0xa9
	.byte	0x1
	.long	0x2fcb
	.uleb128 0x1
	.long	.LASF1499
	.byte	0
	.uleb128 0x1
	.long	.LASF1500
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1501
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1502
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1503
	.byte	0xf
	.byte	0xaf
	.byte	0x3
	.long	0x2fa6
	.uleb128 0x6
	.long	0x2d40
	.uleb128 0xc
	.long	0x45c
	.long	0x2fec
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1504
	.byte	0xf
	.byte	0xd7
	.byte	0x3
	.long	0x2e68
	.uleb128 0x6
	.long	0x2f9a
	.uleb128 0x6
	.long	0x2fec
	.uleb128 0xb
	.long	.LASF1505
	.byte	0x15
	.byte	0x3d
	.byte	0xe
	.long	0x300e
	.uleb128 0x6
	.long	0x78
	.uleb128 0xb
	.long	.LASF1506
	.byte	0x15
	.byte	0x3e
	.byte	0xe
	.long	0x300e
	.uleb128 0xb
	.long	.LASF1507
	.byte	0x15
	.byte	0x54
	.byte	0xd
	.long	0x78
	.uleb128 0xb
	.long	.LASF1508
	.byte	0x15
	.byte	0x55
	.byte	0x12
	.long	0x2f95
	.uleb128 0xb
	.long	.LASF1415
	.byte	0x15
	.byte	0x5d
	.byte	0xd
	.long	0x78
	.uleb128 0xb
	.long	.LASF1485
	.byte	0x15
	.byte	0x5e
	.byte	0x11
	.long	0x2ffd
	.uleb128 0xb
	.long	.LASF1509
	.byte	0x15
	.byte	0x61
	.byte	0x11
	.long	0x2ff8
	.uleb128 0x6
	.long	0x2ce0
	.uleb128 0xb
	.long	.LASF1510
	.byte	0x16
	.byte	0x21
	.byte	0x10
	.long	0x3e2
	.uleb128 0xb
	.long	.LASF1511
	.byte	0x16
	.byte	0x22
	.byte	0xc
	.long	0x78
	.uleb128 0xc
	.long	0x4a
	.long	0x3088
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	0x9b
	.byte	0x16
	.byte	0xdb
	.byte	0x1
	.long	0x30a6
	.uleb128 0x26
	.string	"top"
	.uleb128 0x1
	.long	.LASF1512
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1513
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF1514
	.byte	0x16
	.byte	0xe0
	.byte	0x3
	.long	0x3088
	.uleb128 0x13
	.byte	0x20
	.byte	0x16
	.byte	0xe3
	.long	0x30fc
	.uleb128 0x3
	.long	.LASF1515
	.byte	0x16
	.byte	0xe5
	.byte	0xd
	.long	0x2ffd
	.byte	0
	.uleb128 0x3
	.long	.LASF1516
	.byte	0x16
	.byte	0xe6
	.byte	0xe
	.long	0x30a6
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1517
	.byte	0x16
	.byte	0xe7
	.byte	0xa
	.long	0x78
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1518
	.byte	0x16
	.byte	0xe8
	.byte	0xa
	.long	0x78
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x16
	.byte	0xe9
	.byte	0xd
	.long	0x2c8b
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF1519
	.byte	0x16
	.byte	0xeb
	.byte	0x3
	.long	0x30b2
	.uleb128 0xc
	.long	0x30fc
	.long	0x3118
	.uleb128 0xd
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	.LASF1520
	.byte	0x16
	.byte	0xf9
	.byte	0x11
	.long	0x3108
	.uleb128 0x16
	.long	0x9b
	.byte	0x16
	.value	0x107
	.byte	0x1
	.long	0x3148
	.uleb128 0x26
	.string	"up"
	.uleb128 0x1
	.long	.LASF1521
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1522
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1523
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF1524
	.byte	0x16
	.value	0x10d
	.long	0x3124
	.uleb128 0x16
	.long	0x9b
	.byte	0x16
	.value	0x112
	.byte	0x1
	.long	0x3180
	.uleb128 0x1
	.long	.LASF1525
	.byte	0
	.uleb128 0x1
	.long	.LASF1526
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1527
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1528
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1529
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF1530
	.byte	0x16
	.value	0x119
	.long	0x3154
	.uleb128 0x1b
	.byte	0x48
	.byte	0x16
	.value	0x11d
	.long	0x323c
	.uleb128 0x4
	.long	.LASF1391
	.byte	0x16
	.value	0x11f
	.byte	0xf
	.long	0x553
	.byte	0
	.uleb128 0x4
	.long	.LASF1414
	.byte	0x16
	.value	0x120
	.byte	0xf
	.long	0x2f95
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1376
	.byte	0x16
	.value	0x121
	.byte	0xd
	.long	0x45c
	.byte	0x20
	.uleb128 0x21
	.string	"low"
	.value	0x122
	.byte	0xd
	.long	0x45c
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1531
	.byte	0x16
	.value	0x123
	.byte	0xd
	.long	0x45c
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1532
	.byte	0x16
	.value	0x124
	.byte	0xa
	.long	0x78
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1533
	.byte	0x16
	.value	0x125
	.byte	0xa
	.long	0x78
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1534
	.byte	0x16
	.value	0x126
	.byte	0xc
	.long	0x3148
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1535
	.byte	0x16
	.value	0x127
	.byte	0xc
	.long	0x3148
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1536
	.byte	0x16
	.value	0x128
	.byte	0xd
	.long	0x3e2
	.byte	0x3c
	.uleb128 0x21
	.string	"tag"
	.value	0x129
	.byte	0xa
	.long	0x78
	.byte	0x40
	.uleb128 0x4
	.long	.LASF85
	.byte	0x16
	.value	0x12a
	.byte	0x10
	.long	0x3180
	.byte	0x44
	.byte	0
	.uleb128 0xe
	.long	.LASF1537
	.byte	0x16
	.value	0x12c
	.long	0x318c
	.uleb128 0xc
	.long	0x3258
	.long	0x3258
	.uleb128 0xd
	.long	0x43
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.long	0x323c
	.uleb128 0x27
	.long	.LASF1538
	.value	0x135
	.byte	0x10
	.long	0x3248
	.uleb128 0x16
	.long	0x9b
	.byte	0x16
	.value	0x149
	.byte	0x1
	.long	0x32a7
	.uleb128 0x1
	.long	.LASF1539
	.byte	0
	.uleb128 0x1
	.long	.LASF1540
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1541
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1542
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1543
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1544
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1545
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1546
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF1547
	.byte	0x16
	.value	0x153
	.long	0x3269
	.uleb128 0x16
	.long	0x9b
	.byte	0x16
	.value	0x1e1
	.byte	0x1
	.long	0x32e5
	.uleb128 0x1
	.long	.LASF1548
	.byte	0
	.uleb128 0x1
	.long	.LASF1549
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1550
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1551
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1552
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1553
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	.LASF1554
	.byte	0x16
	.value	0x1e9
	.long	0x32b3
	.uleb128 0x1b
	.byte	0x48
	.byte	0x16
	.value	0x1ed
	.long	0x3386
	.uleb128 0x4
	.long	.LASF1391
	.byte	0x16
	.value	0x1ef
	.byte	0xf
	.long	0x553
	.byte	0
	.uleb128 0x4
	.long	.LASF85
	.byte	0x16
	.value	0x1f0
	.byte	0xf
	.long	0x32e5
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1414
	.byte	0x16
	.value	0x1f1
	.byte	0xf
	.long	0x2f95
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1555
	.byte	0x16
	.value	0x1f2
	.byte	0xd
	.long	0x45c
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1556
	.byte	0x16
	.value	0x1f3
	.byte	0xd
	.long	0x45c
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1376
	.byte	0x16
	.value	0x1f4
	.byte	0xd
	.long	0x45c
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1536
	.byte	0x16
	.value	0x1f5
	.byte	0xd
	.long	0x3e2
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1557
	.byte	0x16
	.value	0x1f8
	.byte	0xa
	.long	0x78
	.byte	0x38
	.uleb128 0x21
	.string	"tag"
	.value	0x1fb
	.byte	0xa
	.long	0x78
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1558
	.byte	0x16
	.value	0x1fc
	.byte	0xa
	.long	0x78
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.long	.LASF1559
	.byte	0x16
	.value	0x1fe
	.long	0x32f1
	.uleb128 0xc
	.long	0x33a2
	.long	0x33a2
	.uleb128 0xd
	.long	0x43
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.long	0x3386
	.uleb128 0x27
	.long	.LASF1560
	.value	0x208
	.byte	0x13
	.long	0x3392
	.uleb128 0x16
	.long	0x9b
	.byte	0x16
	.value	0x21a
	.byte	0x1
	.long	0x340f
	.uleb128 0x1
	.long	.LASF1561
	.byte	0
	.uleb128 0x1
	.long	.LASF1562
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1563
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1564
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1565
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1566
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1567
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1568
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1569
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1570
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1571
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1572
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1573
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.long	.LASF1574
	.byte	0x16
	.value	0x23a
	.long	0x33b3
	.uleb128 0x16
	.long	0x9b
	.byte	0x16
	.value	0x240
	.byte	0x1
	.long	0x3435
	.uleb128 0x1
	.long	.LASF1575
	.byte	0
	.uleb128 0x1
	.long	.LASF1576
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF1577
	.byte	0x16
	.value	0x244
	.long	0x341b
	.uleb128 0x1b
	.byte	0x40
	.byte	0x16
	.value	0x248
	.long	0x34c9
	.uleb128 0x4
	.long	.LASF1391
	.byte	0x16
	.value	0x24a
	.byte	0xf
	.long	0x553
	.byte	0
	.uleb128 0x4
	.long	.LASF85
	.byte	0x16
	.value	0x24b
	.byte	0xd
	.long	0x340f
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1536
	.byte	0x16
	.value	0x24c
	.byte	0xd
	.long	0x3e2
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1414
	.byte	0x16
	.value	0x24d
	.byte	0xf
	.long	0x2f95
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1557
	.byte	0x16
	.value	0x24e
	.byte	0xa
	.long	0x78
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1578
	.byte	0x16
	.value	0x24f
	.byte	0xa
	.long	0x78
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1579
	.byte	0x16
	.value	0x250
	.byte	0xb
	.long	0xa9
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1580
	.byte	0x16
	.value	0x251
	.byte	0xd
	.long	0x45c
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1376
	.byte	0x16
	.value	0x252
	.byte	0xd
	.long	0x45c
	.byte	0x38
	.byte	0
	.uleb128 0xe
	.long	.LASF1581
	.byte	0x16
	.value	0x254
	.long	0x3441
	.uleb128 0xf
	.long	0x9b
	.byte	0x17
	.byte	0xb2
	.byte	0x1
	.long	0x3776
	.uleb128 0x1
	.long	.LASF1582
	.byte	0
	.uleb128 0x1
	.long	.LASF1583
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1584
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1585
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1586
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1587
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1588
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1589
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1590
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1591
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1592
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1593
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1594
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1595
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1596
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1597
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1598
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1599
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1600
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1601
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1602
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1603
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1604
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1605
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1606
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1607
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1608
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1609
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1610
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1611
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1612
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1613
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1614
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1615
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1616
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1617
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1618
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1619
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1620
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1621
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1622
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1623
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1624
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1625
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1626
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1627
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1628
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1629
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1630
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1631
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1632
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1633
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1634
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1635
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1636
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1637
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1638
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1639
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1640
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1641
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1642
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1643
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1644
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1645
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1646
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1647
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1648
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1649
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1650
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1651
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1652
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1653
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1654
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1655
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1656
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1657
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1658
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1659
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1660
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1661
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1662
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1663
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1664
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1665
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1666
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1667
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1668
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1669
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1670
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1671
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1672
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1673
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1674
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1675
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1676
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1677
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1678
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1679
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1680
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1681
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1682
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1683
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1684
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1685
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1686
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1687
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1688
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1689
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1690
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1691
	.byte	0x6d
	.byte	0
	.uleb128 0x13
	.byte	0x14
	.byte	0x1
	.byte	0x3c
	.long	0x37c0
	.uleb128 0x3
	.long	.LASF1692
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.long	0x3e2
	.byte	0
	.uleb128 0x3
	.long	.LASF1693
	.byte	0x1
	.byte	0x3f
	.byte	0xa
	.long	0x78
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1694
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.long	0x78
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1695
	.byte	0x1
	.byte	0x41
	.byte	0xa
	.long	0x78
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1376
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.long	0x78
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF1696
	.byte	0x1
	.byte	0x44
	.byte	0x3
	.long	0x3776
	.uleb128 0x13
	.byte	0x1c
	.byte	0x1
	.byte	0x49
	.long	0x3809
	.uleb128 0x3
	.long	.LASF1692
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.long	0x3e2
	.byte	0
	.uleb128 0x3
	.long	.LASF1697
	.byte	0x1
	.byte	0x4c
	.byte	0xa
	.long	0x3078
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1698
	.byte	0x1
	.byte	0x4d
	.byte	0xa
	.long	0x3078
	.byte	0xd
	.uleb128 0x3
	.long	.LASF1376
	.byte	0x1
	.byte	0x4e
	.byte	0xa
	.long	0x78
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF1699
	.byte	0x1
	.byte	0x4f
	.byte	0x3
	.long	0x37cc
	.uleb128 0xc
	.long	0x37c0
	.long	0x3825
	.uleb128 0xd
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.long	.LASF1700
	.byte	0x1
	.byte	0x55
	.byte	0xf
	.long	0x3815
	.uleb128 0xb
	.long	.LASF1701
	.byte	0x1
	.byte	0x56
	.byte	0x10
	.long	0x383d
	.uleb128 0x6
	.long	0x37c0
	.uleb128 0xc
	.long	0x3809
	.long	0x3852
	.uleb128 0xd
	.long	0x43
	.byte	0x16
	.byte	0
	.uleb128 0x35
	.long	.LASF1702
	.byte	0x1
	.byte	0x65
	.byte	0xc
	.long	0x3842
	.uleb128 0x9
	.byte	0x3
	.quad	animdefs
	.uleb128 0x28
	.long	0x3825
	.byte	0x86
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	anims
	.uleb128 0x28
	.long	0x3831
	.byte	0x87
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	lastanim
	.uleb128 0xb
	.long	.LASF1703
	.byte	0x1
	.byte	0x8f
	.byte	0xf
	.long	0xa9
	.uleb128 0xc
	.long	0x2ffd
	.long	0x38a6
	.uleb128 0xd
	.long	0x43
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF1704
	.byte	0x1
	.byte	0x90
	.byte	0x11
	.long	0x3896
	.uleb128 0x29
	.long	0x3060
	.value	0x438
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	levelTimer
	.uleb128 0x29
	.long	0x306c
	.value	0x439
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	levelTimeCount
	.uleb128 0x2a
	.long	0x388a
	.value	0x4d2
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	numlinespecials
	.uleb128 0x2a
	.long	0x38a6
	.value	0x4d3
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	linespeciallist
	.uleb128 0x11
	.long	.LASF1705
	.byte	0x16
	.byte	0xb5
	.byte	0x9
	.long	0x390c
	.uleb128 0x5
	.long	0x2f95
	.byte	0
	.uleb128 0x1c
	.long	.LASF1706
	.byte	0x16
	.value	0x183
	.byte	0x1
	.long	0x3924
	.uleb128 0x5
	.long	0x2f95
	.uleb128 0x5
	.long	0x78
	.byte	0
	.uleb128 0x1c
	.long	.LASF1707
	.byte	0x16
	.value	0x180
	.byte	0x9
	.long	0x3937
	.uleb128 0x5
	.long	0x2f95
	.byte	0
	.uleb128 0x11
	.long	.LASF1708
	.byte	0x16
	.byte	0xc9
	.byte	0x9
	.long	0x3949
	.uleb128 0x5
	.long	0x2f95
	.byte	0
	.uleb128 0x11
	.long	.LASF1709
	.byte	0x16
	.byte	0xbb
	.byte	0x1
	.long	0x3965
	.uleb128 0x5
	.long	0x2f95
	.uleb128 0x5
	.long	0x78
	.uleb128 0x5
	.long	0x78
	.byte	0
	.uleb128 0x11
	.long	.LASF1710
	.byte	0x16
	.byte	0xb7
	.byte	0x9
	.long	0x3977
	.uleb128 0x5
	.long	0x2f95
	.byte	0
	.uleb128 0x15
	.long	.LASF1711
	.byte	0x18
	.byte	0x69
	.byte	0xc
	.long	0x78
	.long	0x398d
	.uleb128 0x5
	.long	0x2b9
	.byte	0
	.uleb128 0x15
	.long	.LASF1712
	.byte	0x14
	.byte	0x22
	.byte	0x5
	.long	0x78
	.long	0x39a3
	.uleb128 0x5
	.long	0xca
	.byte	0
	.uleb128 0x1c
	.long	.LASF1713
	.byte	0x16
	.value	0x275
	.byte	0x6
	.long	0x39b6
	.uleb128 0x5
	.long	0x39b6
	.byte	0
	.uleb128 0x6
	.long	0x34c9
	.uleb128 0x11
	.long	.LASF1714
	.byte	0x19
	.byte	0x4a
	.byte	0x6
	.long	0x39cd
	.uleb128 0x5
	.long	0x39cd
	.byte	0
	.uleb128 0x6
	.long	0x553
	.uleb128 0x15
	.long	.LASF1715
	.byte	0x1a
	.byte	0x30
	.byte	0x7
	.long	0xc8
	.long	0x39f2
	.uleb128 0x5
	.long	0x78
	.uleb128 0x5
	.long	0x78
	.uleb128 0x5
	.long	0xc8
	.byte	0
	.uleb128 0x15
	.long	.LASF1716
	.byte	0x1b
	.byte	0x3d
	.byte	0xe
	.long	0xc8
	.long	0x3a12
	.uleb128 0x5
	.long	0xc8
	.uleb128 0x5
	.long	0x78
	.uleb128 0x5
	.long	0x6c
	.byte	0
	.uleb128 0x11
	.long	.LASF1717
	.byte	0x1c
	.byte	0x3b
	.byte	0x1
	.long	0x3a29
	.uleb128 0x5
	.long	0xc8
	.uleb128 0x5
	.long	0x78
	.byte	0
	.uleb128 0x36
	.long	.LASF1772
	.byte	0x21
	.byte	0x24
	.byte	0x5
	.long	0x78
	.uleb128 0x1c
	.long	.LASF1718
	.byte	0x19
	.value	0x10d
	.byte	0x1
	.long	0x3a57
	.uleb128 0x5
	.long	0x2c8b
	.uleb128 0x5
	.long	0x2c8b
	.uleb128 0x5
	.long	0x2c8b
	.uleb128 0x5
	.long	0x78
	.byte	0
	.uleb128 0x11
	.long	.LASF1719
	.byte	0x16
	.byte	0xfc
	.byte	0x1
	.long	0x3a6e
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x78
	.byte	0
	.uleb128 0x2b
	.long	.LASF1723
	.byte	0x40
	.uleb128 0x11
	.long	.LASF1720
	.byte	0x16
	.byte	0xc1
	.byte	0x9
	.long	0x3a86
	.uleb128 0x5
	.long	0x2ffd
	.byte	0
	.uleb128 0x17
	.long	.LASF1721
	.value	0x212
	.byte	0x5
	.long	0x78
	.long	0x3a9c
	.uleb128 0x5
	.long	0x2ffd
	.byte	0
	.uleb128 0x1c
	.long	.LASF1722
	.byte	0x16
	.value	0x141
	.byte	0x9
	.long	0x3aaf
	.uleb128 0x5
	.long	0x2ffd
	.byte	0
	.uleb128 0x2b
	.long	.LASF1724
	.byte	0x3f
	.uleb128 0x17
	.long	.LASF1725
	.value	0x27b
	.byte	0x1
	.long	0x78
	.long	0x3ad5
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x78
	.uleb128 0x5
	.long	0x2c8b
	.byte	0
	.uleb128 0x11
	.long	.LASF1726
	.byte	0x16
	.byte	0xc0
	.byte	0x9
	.long	0x3ae7
	.uleb128 0x5
	.long	0x2ffd
	.byte	0
	.uleb128 0x11
	.long	.LASF1727
	.byte	0x16
	.byte	0xc4
	.byte	0x1
	.long	0x3afe
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x78
	.byte	0
	.uleb128 0x17
	.long	.LASF1728
	.value	0x13a
	.byte	0x1
	.long	0x78
	.long	0x3b1e
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x3180
	.uleb128 0x5
	.long	0x78
	.byte	0
	.uleb128 0x17
	.long	.LASF1729
	.value	0x26c
	.byte	0x1
	.long	0x78
	.long	0x3b39
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x3435
	.byte	0
	.uleb128 0x17
	.long	.LASF1730
	.value	0x20b
	.byte	0x1
	.long	0x78
	.long	0x3b54
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x32e5
	.byte	0
	.uleb128 0x17
	.long	.LASF1731
	.value	0x271
	.byte	0x1
	.long	0x78
	.long	0x3b6f
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x340f
	.byte	0
	.uleb128 0x17
	.long	.LASF1732
	.value	0x175
	.byte	0x1
	.long	0x78
	.long	0x3b8a
	.uleb128 0x5
	.long	0x2ffd
	.uleb128 0x5
	.long	0x32a7
	.byte	0
	.uleb128 0x11
	.long	.LASF1733
	.byte	0x1e
	.byte	0x59
	.byte	0x6
	.long	0x3b9d
	.uleb128 0x5
	.long	0xca
	.uleb128 0x23
	.byte	0
	.uleb128 0x15
	.long	.LASF1734
	.byte	0x1f
	.byte	0x31
	.byte	0x5
	.long	0x78
	.long	0x3bb3
	.uleb128 0x5
	.long	0xca
	.byte	0
	.uleb128 0x15
	.long	.LASF1735
	.byte	0x20
	.byte	0x48
	.byte	0x5
	.long	0x78
	.long	0x3bc9
	.uleb128 0x5
	.long	0xca
	.byte	0
	.uleb128 0x15
	.long	.LASF1736
	.byte	0x1f
	.byte	0x36
	.byte	0x5
	.long	0x78
	.long	0x3bdf
	.uleb128 0x5
	.long	0xca
	.byte	0
	.uleb128 0x15
	.long	.LASF1737
	.byte	0x1f
	.byte	0x37
	.byte	0x5
	.long	0x78
	.long	0x3bf5
	.uleb128 0x5
	.long	0xca
	.byte	0
	.uleb128 0x1d
	.long	.LASF1743
	.value	0x4d7
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c60
	.uleb128 0x8
	.long	.LASF1414
	.value	0x4d9
	.byte	0xf
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.value	0x4da
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.long	.LASF1739
	.value	0x4db
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x37
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.long	.LASF1740
	.value	0x4ef
	.byte	0x6
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF1752
	.value	0x48b
	.byte	0x5
	.long	0x78
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cf7
	.uleb128 0x12
	.long	.LASF1515
	.value	0x48b
	.byte	0x18
	.long	0x2ffd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.string	"s1"
	.value	0x48d
	.byte	0x10
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"s2"
	.value	0x48e
	.byte	0x10
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"s3"
	.value	0x48f
	.byte	0x10
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1741
	.value	0x490
	.byte	0xb
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"rtn"
	.value	0x491
	.byte	0xb
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"i"
	.value	0x492
	.byte	0xb
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.long	.LASF1742
	.value	0x493
	.byte	0x12
	.long	0x39b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF1744
	.value	0x43b
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d50
	.uleb128 0x8
	.long	.LASF1745
	.value	0x43d
	.byte	0xd
	.long	0x383d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"pic"
	.value	0x43e
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"i"
	.value	0x43f
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1515
	.value	0x440
	.byte	0xd
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF1746
	.value	0x3f1
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d8d
	.uleb128 0x12
	.long	.LASF1409
	.value	0x3f1
	.byte	0x29
	.long	0x305b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1414
	.value	0x3f3
	.byte	0xf
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF1747
	.value	0x3bf
	.byte	0x1
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd8
	.uleb128 0x12
	.long	.LASF1748
	.value	0x3c0
	.byte	0xb
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF1515
	.value	0x3c1
	.byte	0xb
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"ok"
	.value	0x3c3
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF1749
	.value	0x1ec
	.byte	0x1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e41
	.uleb128 0x12
	.long	.LASF1750
	.value	0x1ed
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF1751
	.value	0x1ee
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF1748
	.value	0x1ef
	.byte	0xb
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF1515
	.value	0x1f1
	.byte	0xd
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"ok"
	.value	0x1f2
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.long	.LASF1753
	.value	0x1c6
	.byte	0x1
	.long	0x78
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ebc
	.uleb128 0x12
	.long	.LASF1414
	.value	0x1c7
	.byte	0xd
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"max"
	.value	0x1c8
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"i"
	.value	0x1ca
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"min"
	.value	0x1cb
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.long	.LASF1515
	.value	0x1cc
	.byte	0xd
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1754
	.value	0x1cd
	.byte	0xf
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1755
	.byte	0x1
	.value	0x1b2
	.byte	0x1
	.long	0x78
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f0b
	.uleb128 0x12
	.long	.LASF1515
	.value	0x1b3
	.byte	0xb
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF1756
	.value	0x1b4
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"i"
	.value	0x1b6
	.byte	0x9
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF1757
	.value	0x197
	.byte	0x9
	.long	0x45c
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f77
	.uleb128 0x19
	.string	"sec"
	.value	0x197
	.byte	0x33
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"i"
	.value	0x199
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1754
	.value	0x19a
	.byte	0xd
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1758
	.value	0x19b
	.byte	0xf
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF1378
	.value	0x19c
	.byte	0xd
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF1759
	.value	0x17e
	.byte	0x1
	.long	0x45c
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fe3
	.uleb128 0x19
	.string	"sec"
	.value	0x17e
	.byte	0x2a
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"i"
	.value	0x180
	.byte	0xb
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1754
	.value	0x181
	.byte	0xe
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1758
	.value	0x182
	.byte	0x10
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF1378
	.value	0x183
	.byte	0xe
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF1760
	.value	0x149
	.byte	0x1
	.long	0x45c
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4092
	.uleb128 0x19
	.string	"sec"
	.value	0x14a
	.byte	0xd
	.long	0x2f95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x12
	.long	.LASF1761
	.value	0x14b
	.byte	0x8
	.long	0x78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0xa
	.string	"i"
	.value	0x14d
	.byte	0xb
	.long	0x78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xa
	.string	"h"
	.value	0x14e
	.byte	0xb
	.long	0x78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0xa
	.string	"min"
	.value	0x14f
	.byte	0xb
	.long	0x78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x8
	.long	.LASF1754
	.value	0x150
	.byte	0xe
	.long	0x2ffd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.long	.LASF1758
	.value	0x151
	.byte	0x10
	.long	0x2f95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x8
	.long	.LASF1378
	.value	0x152
	.byte	0xe
	.long	0x45c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x8
	.long	.LASF1762
	.value	0x155
	.byte	0xe
	.long	0x4092
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0xc
	.long	0x45c
	.long	0x40a2
	.uleb128 0xd
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x18
	.long	.LASF1763
	.value	0x129
	.byte	0x9
	.long	0x45c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x410e
	.uleb128 0x19
	.string	"sec"
	.value	0x129
	.byte	0x31
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"i"
	.value	0x12b
	.byte	0xb
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1754
	.value	0x12c
	.byte	0xe
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1758
	.value	0x12d
	.byte	0x10
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF1742
	.value	0x12e
	.byte	0xe
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF1764
	.value	0x10e
	.byte	0x9
	.long	0x45c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x417a
	.uleb128 0x19
	.string	"sec"
	.value	0x10e
	.byte	0x30
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"i"
	.value	0x110
	.byte	0xb
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF1754
	.value	0x111
	.byte	0xe
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.long	.LASF1758
	.value	0x112
	.byte	0x10
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF1742
	.value	0x113
	.byte	0xe
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.long	.LASF1765
	.byte	0xfb
	.long	0x2f95
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x41b8
	.uleb128 0x14
	.long	.LASF1515
	.byte	0xfc
	.byte	0xb
	.long	0x2ffd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x39
	.string	"sec"
	.byte	0x1
	.byte	0xfd
	.byte	0xd
	.long	0x2f95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF1766
	.byte	0xeb
	.long	0x78
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x41f5
	.uleb128 0x14
	.long	.LASF1414
	.byte	0xec
	.byte	0x7
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF1515
	.byte	0xed
	.byte	0x7
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF1767
	.byte	0xdc
	.long	0x2f95
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4240
	.uleb128 0x14
	.long	.LASF1768
	.byte	0xdd
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF1515
	.byte	0xde
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF1751
	.byte	0xdf
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1e
	.long	.LASF1769
	.byte	0xcc
	.long	0x2ff8
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x428b
	.uleb128 0x14
	.long	.LASF1768
	.byte	0xcd
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF1515
	.byte	0xce
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF1751
	.byte	0xcf
	.byte	0x8
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3a
	.long	.LASF1773
	.byte	0x1
	.byte	0x94
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.string	"i"
	.byte	0x1
	.byte	0x96
	.byte	0xa
	.long	0x78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x3c
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
	.uleb128 0x5
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
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 22
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
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 22
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x17
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
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x35
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
.LASF1462:
	.string	"CF_GODMODE"
.LASF882:
	.string	"S_BSPI_RUN3"
.LASF883:
	.string	"S_BSPI_RUN4"
.LASF884:
	.string	"S_BSPI_RUN5"
.LASF885:
	.string	"S_BSPI_RUN6"
.LASF886:
	.string	"S_BSPI_RUN7"
.LASF887:
	.string	"S_BSPI_RUN8"
.LASF888:
	.string	"S_BSPI_RUN9"
.LASF1626:
	.string	"sfx_cybsit"
.LASF172:
	.string	"SPR_YSKU"
.LASF1592:
	.string	"sfx_sawup"
.LASF1443:
	.string	"attacker"
.LASF535:
	.string	"S_FIRE10"
.LASF536:
	.string	"S_FIRE11"
.LASF537:
	.string	"S_FIRE12"
.LASF538:
	.string	"S_FIRE13"
.LASF539:
	.string	"S_FIRE14"
.LASF540:
	.string	"S_FIRE15"
.LASF541:
	.string	"S_FIRE16"
.LASF542:
	.string	"S_FIRE17"
.LASF43:
	.string	"_unused2"
.LASF544:
	.string	"S_FIRE19"
.LASF1356:
	.string	"MT_MISC84"
.LASF1289:
	.string	"MT_MISC20"
.LASF1103:
	.string	"S_MEGA2"
.LASF29:
	.string	"_fileno"
.LASF1105:
	.string	"S_MEGA4"
.LASF1293:
	.string	"MT_MISC24"
.LASF1294:
	.string	"MT_MISC25"
.LASF1296:
	.string	"MT_MISC26"
.LASF1297:
	.string	"MT_MISC27"
.LASF1298:
	.string	"MT_MISC28"
.LASF1301:
	.string	"MT_MISC29"
.LASF734:
	.string	"S_SARG_PAIN2"
.LASF1408:
	.string	"threshold"
.LASF56:
	.string	"wp_pistol"
.LASF213:
	.string	"SPR_COL1"
.LASF214:
	.string	"SPR_COL2"
.LASF215:
	.string	"SPR_COL3"
.LASF216:
	.string	"SPR_COL4"
.LASF225:
	.string	"SPR_COL5"
.LASF219:
	.string	"SPR_COL6"
.LASF1710:
	.string	"P_SpawnLightFlash"
.LASF1712:
	.string	"M_CheckParm"
.LASF1740:
	.string	"time"
.LASF1694:
	.string	"basepic"
.LASF1688:
	.string	"sfx_skesit"
.LASF1669:
	.string	"sfx_tink"
.LASF545:
	.string	"S_FIRE20"
.LASF546:
	.string	"S_FIRE21"
.LASF547:
	.string	"S_FIRE22"
.LASF548:
	.string	"S_FIRE23"
.LASF549:
	.string	"S_FIRE24"
.LASF199:
	.string	"SPR_COLU"
.LASF551:
	.string	"S_FIRE26"
.LASF552:
	.string	"S_FIRE27"
.LASF553:
	.string	"S_FIRE28"
.LASF554:
	.string	"S_FIRE29"
.LASF1450:
	.string	"forwardmove"
.LASF1302:
	.string	"MT_MISC30"
.LASF1217:
	.string	"action"
.LASF1304:
	.string	"MT_MISC32"
.LASF1305:
	.string	"MT_MISC33"
.LASF896:
	.string	"S_BSPI_PAIN"
.LASF1307:
	.string	"MT_MISC35"
.LASF368:
	.string	"S_BFGEXP"
.LASF70:
	.string	"am_misl"
.LASF1310:
	.string	"MT_MISC38"
.LASF1311:
	.string	"MT_MISC39"
.LASF1550:
	.string	"lowerAndCrush"
.LASF1474:
	.string	"floorpic"
.LASF898:
	.string	"S_BSPI_DIE1"
.LASF1387:
	.string	"NUMPSPRITES"
.LASF903:
	.string	"S_BSPI_DIE6"
.LASF1675:
	.string	"sfx_getpow"
.LASF599:
	.string	"S_SKEL_RAISE4"
.LASF1419:
	.string	"viewz"
.LASF1495:
	.string	"toptexture"
.LASF794:
	.string	"S_BOSS_RAISE1"
.LASF795:
	.string	"S_BOSS_RAISE2"
.LASF1236:
	.string	"MT_HEAD"
.LASF796:
	.string	"S_BOSS_RAISE3"
.LASF555:
	.string	"S_FIRE30"
.LASF700:
	.string	"S_TROO_PAIN"
.LASF989:
	.string	"S_SSWV_DIE1"
.LASF799:
	.string	"S_BOSS_RAISE6"
.LASF991:
	.string	"S_SSWV_DIE3"
.LASF992:
	.string	"S_SSWV_DIE4"
.LASF993:
	.string	"S_SSWV_DIE5"
.LASF167:
	.string	"SPR_BKEY"
.LASF811:
	.string	"S_BOS2_ATK1"
.LASF812:
	.string	"S_BOS2_ATK2"
.LASF813:
	.string	"S_BOS2_ATK3"
.LASF201:
	.string	"SPR_GOR1"
.LASF208:
	.string	"SPR_GOR2"
.LASF34:
	.string	"_shortbuf"
.LASF210:
	.string	"SPR_GOR4"
.LASF211:
	.string	"SPR_GOR5"
.LASF1314:
	.string	"MT_MISC42"
.LASF1315:
	.string	"MT_MISC43"
.LASF568:
	.string	"S_SKEL_RUN1"
.LASF569:
	.string	"S_SKEL_RUN2"
.LASF570:
	.string	"S_SKEL_RUN3"
.LASF571:
	.string	"S_SKEL_RUN4"
.LASF572:
	.string	"S_SKEL_RUN5"
.LASF573:
	.string	"S_SKEL_RUN6"
.LASF574:
	.string	"S_SKEL_RUN7"
.LASF575:
	.string	"S_SKEL_RUN8"
.LASF576:
	.string	"S_SKEL_RUN9"
.LASF59:
	.string	"wp_missile"
.LASF1054:
	.string	"S_BEXP2"
.LASF1364:
	.string	"seestate"
.LASF749:
	.string	"S_HEAD_ATK1"
.LASF750:
	.string	"S_HEAD_ATK2"
.LASF751:
	.string	"S_HEAD_ATK3"
.LASF1489:
	.string	"slopetype"
.LASF1003:
	.string	"S_SSWV_RAISE1"
.LASF1004:
	.string	"S_SSWV_RAISE2"
.LASF1005:
	.string	"S_SSWV_RAISE3"
.LASF1006:
	.string	"S_SSWV_RAISE4"
.LASF1007:
	.string	"S_SSWV_RAISE5"
.LASF84:
	.string	"angle"
.LASF1231:
	.string	"MT_FATSHOT"
.LASF187:
	.string	"SPR_CELL"
.LASF1737:
	.string	"R_CheckTextureNumForName"
.LASF188:
	.string	"SPR_CELP"
.LASF1169:
	.string	"S_HEARTCOL"
.LASF1484:
	.string	"linecount"
.LASF1415:
	.string	"numlines"
.LASF1086:
	.string	"S_MEDI"
.LASF1093:
	.string	"S_PINV"
.LASF1280:
	.string	"MT_INS"
.LASF1323:
	.string	"MT_MISC51"
.LASF1324:
	.string	"MT_MISC52"
.LASF1278:
	.string	"MT_INV"
.LASF1326:
	.string	"MT_MISC54"
.LASF1183:
	.string	"S_BTORCHSHRT"
.LASF304:
	.string	"S_MISSILEUP"
.LASF1329:
	.string	"MT_MISC57"
.LASF1330:
	.string	"MT_MISC58"
.LASF1331:
	.string	"MT_MISC59"
.LASF1661:
	.string	"sfx_bspwlk"
.LASF1731:
	.string	"EV_DoFloor"
.LASF1518:
	.string	"btimer"
.LASF481:
	.string	"S_SPOS_RAISE1"
.LASF1512:
	.string	"middle"
.LASF1586:
	.string	"sfx_dshtgn"
.LASF275:
	.string	"S_SGUNFLASH1"
.LASF276:
	.string	"S_SGUNFLASH2"
.LASF823:
	.string	"S_BOS2_RAISE1"
.LASF824:
	.string	"S_BOS2_RAISE2"
.LASF825:
	.string	"S_BOS2_RAISE3"
.LASF826:
	.string	"S_BOS2_RAISE4"
.LASF827:
	.string	"S_BOS2_RAISE5"
.LASF15:
	.string	"_flags"
.LASF829:
	.string	"S_BOS2_RAISE7"
.LASF588:
	.string	"S_SKEL_PAIN"
.LASF1075:
	.string	"S_RKEY"
.LASF102:
	.string	"next"
.LASF1717:
	.string	"S_StartSound"
.LASF1598:
	.string	"sfx_firsht"
.LASF1590:
	.string	"sfx_plasma"
.LASF257:
	.string	"S_PISTOLUP"
.LASF1511:
	.string	"levelTimeCount"
.LASF943:
	.string	"S_CYBER_DIE8"
.LASF1494:
	.string	"rowoffset"
.LASF12:
	.string	"__off_t"
.LASF1332:
	.string	"MT_MISC60"
.LASF1333:
	.string	"MT_MISC61"
.LASF1334:
	.string	"MT_MISC62"
.LASF1335:
	.string	"MT_MISC63"
.LASF1336:
	.string	"MT_MISC64"
.LASF1337:
	.string	"MT_MISC65"
.LASF1338:
	.string	"MT_MISC66"
.LASF1339:
	.string	"MT_MISC67"
.LASF372:
	.string	"S_EXPLODE1"
.LASF373:
	.string	"S_EXPLODE2"
.LASF374:
	.string	"S_EXPLODE3"
.LASF1681:
	.string	"sfx_manatk"
.LASF563:
	.string	"S_TRACEEXP1"
.LASF564:
	.string	"S_TRACEEXP2"
.LASF565:
	.string	"S_TRACEEXP3"
.LASF951:
	.string	"S_PAIN_RUN5"
.LASF1053:
	.string	"S_BEXP"
.LASF952:
	.string	"S_PAIN_RUN6"
.LASF1444:
	.string	"extralight"
.LASF1170:
	.string	"S_HEARTCOL2"
.LASF349:
	.string	"S_RBALLX1"
.LASF1589:
	.string	"sfx_dbload"
.LASF1378:
	.string	"height"
.LASF1263:
	.string	"MT_TELEPORTMAN"
.LASF1698:
	.string	"startname"
.LASF35:
	.string	"_lock"
.LASF1342:
	.string	"MT_MISC70"
.LASF132:
	.string	"SPR_IFOG"
.LASF1344:
	.string	"MT_MISC72"
.LASF1345:
	.string	"MT_MISC73"
.LASF1346:
	.string	"MT_MISC74"
.LASF1347:
	.string	"MT_MISC75"
.LASF1348:
	.string	"MT_MISC76"
.LASF1176:
	.string	"S_GREENTORCH2"
.LASF1177:
	.string	"S_GREENTORCH3"
.LASF1178:
	.string	"S_GREENTORCH4"
.LASF1554:
	.string	"ceiling_e"
.LASF1017:
	.string	"S_COMMKEEN9"
.LASF1544:
	.string	"blazeRaise"
.LASF666:
	.string	"S_CPOS_PAIN2"
.LASF889:
	.string	"S_BSPI_RUN10"
.LASF890:
	.string	"S_BSPI_RUN11"
.LASF891:
	.string	"S_BSPI_RUN12"
.LASF973:
	.string	"S_SSWV_RUN1"
.LASF974:
	.string	"S_SSWV_RUN2"
.LASF975:
	.string	"S_SSWV_RUN3"
.LASF976:
	.string	"S_SSWV_RUN4"
.LASF977:
	.string	"S_SSWV_RUN5"
.LASF978:
	.string	"S_SSWV_RUN6"
.LASF979:
	.string	"S_SSWV_RUN7"
.LASF980:
	.string	"S_SSWV_RUN8"
.LASF1158:
	.string	"S_SKULLCOL"
.LASF1230:
	.string	"MT_FATSO"
.LASF702:
	.string	"S_TROO_DIE1"
.LASF703:
	.string	"S_TROO_DIE2"
.LASF704:
	.string	"S_TROO_DIE3"
.LASF705:
	.string	"S_TROO_DIE4"
.LASF706:
	.string	"S_TROO_DIE5"
.LASF1083:
	.string	"S_YSKULL"
.LASF1084:
	.string	"S_YSKULL2"
.LASF185:
	.string	"SPR_ROCK"
.LASF1255:
	.string	"MT_ROCKET"
.LASF1353:
	.string	"MT_MISC81"
.LASF1354:
	.string	"MT_MISC82"
.LASF1355:
	.string	"MT_MISC83"
.LASF661:
	.string	"S_CPOS_ATK1"
.LASF662:
	.string	"S_CPOS_ATK2"
.LASF663:
	.string	"S_CPOS_ATK3"
.LASF664:
	.string	"S_CPOS_ATK4"
.LASF1222:
	.string	"MT_PLAYER"
.LASF197:
	.string	"SPR_SHOT"
.LASF390:
	.string	"S_IFOG2"
.LASF391:
	.string	"S_IFOG3"
.LASF392:
	.string	"S_IFOG4"
.LASF393:
	.string	"S_IFOG5"
.LASF126:
	.string	"SPR_PLSE"
.LASF118:
	.string	"SPR_PLSF"
.LASF117:
	.string	"SPR_PLSG"
.LASF786:
	.string	"S_BOSS_PAIN2"
.LASF486:
	.string	"S_VILE_STND"
.LASF1014:
	.string	"S_COMMKEEN6"
.LASF1015:
	.string	"S_COMMKEEN7"
.LASF1507:
	.string	"numsectors"
.LASF1016:
	.string	"S_COMMKEEN8"
.LASF125:
	.string	"SPR_PLSS"
.LASF865:
	.string	"S_SPID_PAIN2"
.LASF1616:
	.string	"sfx_oof"
.LASF1379:
	.string	"mass"
.LASF1657:
	.string	"sfx_posact"
.LASF1730:
	.string	"EV_DoCeiling"
.LASF238:
	.string	"SPR_POB1"
.LASF239:
	.string	"SPR_POB2"
.LASF1569:
	.string	"raiseFloor24AndChange"
.LASF1087:
	.string	"S_SOUL"
.LASF1648:
	.string	"sfx_skldth"
.LASF1097:
	.string	"S_PSTR"
.LASF929:
	.string	"S_CYBER_ATK1"
.LASF930:
	.string	"S_CYBER_ATK2"
.LASF931:
	.string	"S_CYBER_ATK3"
.LASF932:
	.string	"S_CYBER_ATK4"
.LASF933:
	.string	"S_CYBER_ATK5"
.LASF934:
	.string	"S_CYBER_ATK6"
.LASF1692:
	.string	"istexture"
.LASF1124:
	.string	"S_BFUG"
.LASF164:
	.string	"SPR_FCAN"
.LASF1504:
	.string	"line_t"
.LASF607:
	.string	"S_FATT_STND"
.LASF1696:
	.string	"anim_t"
.LASF1044:
	.string	"S_BRAINEXPLODE1"
.LASF1045:
	.string	"S_BRAINEXPLODE2"
.LASF1046:
	.string	"S_BRAINEXPLODE3"
.LASF328:
	.string	"S_BFGUP"
.LASF169:
	.string	"SPR_YKEY"
.LASF715:
	.string	"S_TROO_RAISE1"
.LASF716:
	.string	"S_TROO_RAISE2"
.LASF717:
	.string	"S_TROO_RAISE3"
.LASF718:
	.string	"S_TROO_RAISE4"
.LASF719:
	.string	"S_TROO_RAISE5"
.LASF1128:
	.string	"S_PLAS"
.LASF1010:
	.string	"S_COMMKEEN2"
.LASF1011:
	.string	"S_COMMKEEN3"
.LASF1012:
	.string	"S_COMMKEEN4"
.LASF1013:
	.string	"S_COMMKEEN5"
.LASF394:
	.string	"S_PLAY"
.LASF960:
	.string	"S_PAIN_DIE2"
.LASF961:
	.string	"S_PAIN_DIE3"
.LASF962:
	.string	"S_PAIN_DIE4"
.LASF963:
	.string	"S_PAIN_DIE5"
.LASF964:
	.string	"S_PAIN_DIE6"
.LASF1233:
	.string	"MT_TROOP"
.LASF515:
	.string	"S_VILE_PAIN2"
.LASF643:
	.string	"S_FATT_RAISE1"
.LASF60:
	.string	"wp_plasma"
.LASF645:
	.string	"S_FATT_RAISE3"
.LASF646:
	.string	"S_FATT_RAISE4"
.LASF647:
	.string	"S_FATT_RAISE5"
.LASF648:
	.string	"S_FATT_RAISE6"
.LASF21:
	.string	"_IO_write_end"
.LASF650:
	.string	"S_FATT_RAISE8"
.LASF359:
	.string	"S_ROCKET"
.LASF1254:
	.string	"MT_HEADSHOT"
.LASF1487:
	.string	"sidenum"
.LASF912:
	.string	"S_ARACH_PLAZ"
.LASF1151:
	.string	"S_STALAGTITE"
.LASF753:
	.string	"S_HEAD_PAIN2"
.LASF754:
	.string	"S_HEAD_PAIN3"
.LASF83:
	.string	"byte"
.LASF1519:
	.string	"button_t"
.LASF1514:
	.string	"bwhere_e"
.LASF53:
	.string	"it_redskull"
.LASF1658:
	.string	"sfx_bgact"
.LASF1261:
	.string	"MT_TFOG"
.LASF462:
	.string	"S_SPOS_ATK1"
.LASF463:
	.string	"S_SPOS_ATK2"
.LASF464:
	.string	"S_SPOS_ATK3"
.LASF399:
	.string	"S_PLAY_ATK1"
.LASF400:
	.string	"S_PLAY_ATK2"
.LASF152:
	.string	"SPR_APLS"
.LASF1591:
	.string	"sfx_bfg"
.LASF1436:
	.string	"refire"
.LASF1180:
	.string	"S_REDTORCH2"
.LASF1181:
	.string	"S_REDTORCH3"
.LASF1182:
	.string	"S_REDTORCH4"
.LASF689:
	.string	"S_TROO_RUN1"
.LASF690:
	.string	"S_TROO_RUN2"
.LASF691:
	.string	"S_TROO_RUN3"
.LASF692:
	.string	"S_TROO_RUN4"
.LASF693:
	.string	"S_TROO_RUN5"
.LASF694:
	.string	"S_TROO_RUN6"
.LASF695:
	.string	"S_TROO_RUN7"
.LASF696:
	.string	"S_TROO_RUN8"
.LASF1682:
	.string	"sfx_mandth"
.LASF143:
	.string	"SPR_CPOS"
.LASF604:
	.string	"S_FATSHOTX1"
.LASF605:
	.string	"S_FATSHOTX2"
.LASF606:
	.string	"S_FATSHOTX3"
.LASF684:
	.string	"S_CPOS_RAISE5"
.LASF685:
	.string	"S_CPOS_RAISE6"
.LASF686:
	.string	"S_CPOS_RAISE7"
.LASF1530:
	.string	"plattype_e"
.LASF55:
	.string	"wp_fist"
.LASF1555:
	.string	"bottomheight"
.LASF1372:
	.string	"missilestate"
.LASF173:
	.string	"SPR_STIM"
.LASF1543:
	.string	"raiseIn5Mins"
.LASF720:
	.string	"S_SARG_STND"
.LASF945:
	.string	"S_CYBER_DIE10"
.LASF123:
	.string	"SPR_BAL1"
.LASF124:
	.string	"SPR_BAL2"
.LASF146:
	.string	"SPR_BAL7"
.LASF1403:
	.string	"info"
.LASF1652:
	.string	"sfx_bspdth"
.LASF1139:
	.string	"S_HEADSONSTICK"
.LASF1687:
	.string	"sfx_skeact"
.LASF1398:
	.string	"ceilingz"
.LASF1683:
	.string	"sfx_sssit"
.LASF596:
	.string	"S_SKEL_RAISE1"
.LASF111:
	.string	"SPR_SHT2"
.LASF250:
	.string	"S_PUNCH1"
.LASF251:
	.string	"S_PUNCH2"
.LASF252:
	.string	"S_PUNCH3"
.LASF253:
	.string	"S_PUNCH4"
.LASF254:
	.string	"S_PUNCH5"
.LASF613:
	.string	"S_FATT_RUN5"
.LASF249:
	.string	"S_PUNCHUP"
.LASF866:
	.string	"S_SPID_DIE1"
.LASF617:
	.string	"S_FATT_RUN9"
.LASF868:
	.string	"S_SPID_DIE3"
.LASF869:
	.string	"S_SPID_DIE4"
.LASF110:
	.string	"SPR_SHTF"
.LASF106:
	.string	"SPR_SHTG"
.LASF388:
	.string	"S_IFOG01"
.LASF389:
	.string	"S_IFOG02"
.LASF874:
	.string	"S_SPID_DIE9"
.LASF1769:
	.string	"getSide"
.LASF1759:
	.string	"P_FindLowestCeilingSurrounding"
.LASF1116:
	.string	"S_AMMO"
.LASF1744:
	.string	"P_UpdateSpecials"
.LASF71:
	.string	"NUMAMMO"
.LASF947:
	.string	"S_PAIN_RUN1"
.LASF948:
	.string	"S_PAIN_RUN2"
.LASF949:
	.string	"S_PAIN_RUN3"
.LASF950:
	.string	"S_PAIN_RUN4"
.LASF232:
	.string	"SPR_HDB1"
.LASF233:
	.string	"SPR_HDB2"
.LASF234:
	.string	"SPR_HDB3"
.LASF235:
	.string	"SPR_HDB4"
.LASF236:
	.string	"SPR_HDB5"
.LASF237:
	.string	"SPR_HDB6"
.LASF1223:
	.string	"MT_POSSESSED"
.LASF282:
	.string	"S_DSGUN3"
.LASF283:
	.string	"S_DSGUN4"
.LASF1493:
	.string	"textureoffset"
.LASF85:
	.string	"type"
.LASF302:
	.string	"S_MISSILE"
.LASF1130:
	.string	"S_SHOT2"
.LASF1197:
	.string	"S_HANGTLOOKDN"
.LASF1762:
	.string	"heightlist"
.LASF1405:
	.string	"movedir"
.LASF674:
	.string	"S_CPOS_XDIE1"
.LASF1532:
	.string	"wait"
.LASF97:
	.string	"actionf_t"
.LASF92:
	.string	"actionf_v"
.LASF193:
	.string	"SPR_MGUN"
.LASF1235:
	.string	"MT_SHADOWS"
.LASF577:
	.string	"S_SKEL_RUN10"
.LASF578:
	.string	"S_SKEL_RUN11"
.LASF579:
	.string	"S_SKEL_RUN12"
.LASF245:
	.string	"S_NULL"
.LASF787:
	.string	"S_BOSS_DIE1"
.LASF788:
	.string	"S_BOSS_DIE2"
.LASF789:
	.string	"S_BOSS_DIE3"
.LASF790:
	.string	"S_BOSS_DIE4"
.LASF791:
	.string	"S_BOSS_DIE5"
.LASF792:
	.string	"S_BOSS_DIE6"
.LASF793:
	.string	"S_BOSS_DIE7"
.LASF957:
	.string	"S_PAIN_PAIN"
.LASF326:
	.string	"S_BFG"
.LASF1370:
	.string	"painsound"
.LASF1766:
	.string	"twoSided"
.LASF1535:
	.string	"oldstatus"
.LASF1496:
	.string	"bottomtexture"
.LASF1464:
	.string	"player_t"
.LASF1477:
	.string	"special"
.LASF972:
	.string	"S_SSWV_STND2"
.LASF194:
	.string	"SPR_CSAW"
.LASF1107:
	.string	"S_PMAP"
.LASF28:
	.string	"_chain"
.LASF1725:
	.string	"EV_Teleport"
.LASF1113:
	.string	"S_PVIS"
.LASF1741:
	.string	"secnum"
.LASF327:
	.string	"S_BFGDOWN"
.LASF1630:
	.string	"sfx_vilsit"
.LASF1247:
	.string	"MT_BOSSBRAIN"
.LASF140:
	.string	"SPR_SKEL"
.LASF322:
	.string	"S_PLASMA1"
.LASF323:
	.string	"S_PLASMA2"
.LASF1187:
	.string	"S_GTORCHSHRT"
.LASF1531:
	.string	"high"
.LASF1617:
	.string	"sfx_telept"
.LASF1416:
	.string	"firstline"
.LASF1121:
	.string	"S_SHEL"
.LASF1693:
	.string	"picnum"
.LASF878:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF1651:
	.string	"sfx_spidth"
.LASF138:
	.string	"SPR_FATB"
.LASF243:
	.string	"NUMSPRITES"
.LASF361:
	.string	"S_BFGSHOT2"
.LASF142:
	.string	"SPR_FATT"
.LASF1638:
	.string	"sfx_skeswg"
.LASF1088:
	.string	"S_SOUL2"
.LASF1089:
	.string	"S_SOUL3"
.LASF1090:
	.string	"S_SOUL4"
.LASF1091:
	.string	"S_SOUL5"
.LASF1092:
	.string	"S_SOUL6"
.LASF1771:
	.string	"_IO_lock_t"
.LASF848:
	.string	"S_SPID_RUN1"
.LASF849:
	.string	"S_SPID_RUN2"
.LASF850:
	.string	"S_SPID_RUN3"
.LASF851:
	.string	"S_SPID_RUN4"
.LASF852:
	.string	"S_SPID_RUN5"
.LASF853:
	.string	"S_SPID_RUN6"
.LASF854:
	.string	"S_SPID_RUN7"
.LASF855:
	.string	"S_SPID_RUN8"
.LASF89:
	.string	"float"
.LASF1055:
	.string	"S_BEXP3"
.LASF1056:
	.string	"S_BEXP4"
.LASF1596:
	.string	"sfx_rlaunc"
.LASF1144:
	.string	"S_DEADSTICK"
.LASF1445:
	.string	"fixedcolormap"
.LASF1430:
	.string	"weaponowned"
.LASF1264:
	.string	"MT_EXTRABFG"
.LASF434:
	.string	"S_POSS_DIE1"
.LASF435:
	.string	"S_POSS_DIE2"
.LASF436:
	.string	"S_POSS_DIE3"
.LASF437:
	.string	"S_POSS_DIE4"
.LASF438:
	.string	"S_POSS_DIE5"
.LASF264:
	.string	"S_SGUNDOWN"
.LASF1685:
	.string	"sfx_keenpn"
.LASF113:
	.string	"SPR_CHGF"
.LASF112:
	.string	"SPR_CHGG"
.LASF1757:
	.string	"P_FindHighestCeilingSurrounding"
.LASF657:
	.string	"S_CPOS_RUN5"
.LASF916:
	.string	"S_ARACH_PLEX3"
.LASF658:
	.string	"S_CPOS_RUN6"
.LASF918:
	.string	"S_ARACH_PLEX5"
.LASF659:
	.string	"S_CPOS_RUN7"
.LASF1614:
	.string	"sfx_itemup"
.LASF1407:
	.string	"target"
.LASF223:
	.string	"SPR_CEYE"
.LASF1564:
	.string	"raiseFloor"
.LASF1700:
	.string	"anims"
.LASF1499:
	.string	"ST_HORIZONTAL"
.LASF965:
	.string	"S_PAIN_RAISE1"
.LASF966:
	.string	"S_PAIN_RAISE2"
.LASF967:
	.string	"S_PAIN_RAISE3"
.LASF968:
	.string	"S_PAIN_RAISE4"
.LASF969:
	.string	"S_PAIN_RAISE5"
.LASF602:
	.string	"S_FATSHOT1"
.LASF603:
	.string	"S_FATSHOT2"
.LASF1500:
	.string	"ST_VERTICAL"
.LASF180:
	.string	"SPR_SUIT"
.LASF830:
	.string	"S_SKULL_STND"
.LASF1722:
	.string	"EV_StopPlat"
.LASF1582:
	.string	"sfx_None"
.LASF1558:
	.string	"olddirection"
.LASF864:
	.string	"S_SPID_PAIN"
.LASF1359:
	.string	"NUMMOBJTYPES"
.LASF162:
	.string	"SPR_BAR1"
.LASF1498:
	.string	"side_t"
.LASF277:
	.string	"S_DSGUN"
.LASF1156:
	.string	"S_CANDLESTIK"
.LASF77:
	.string	"pw_allmap"
.LASF1212:
	.string	"NUMSTATES"
.LASF856:
	.string	"S_SPID_RUN9"
.LASF342:
	.string	"S_TBALL1"
.LASF343:
	.string	"S_TBALL2"
.LASF556:
	.string	"S_SMOKE1"
.LASF557:
	.string	"S_SMOKE2"
.LASF558:
	.string	"S_SMOKE3"
.LASF559:
	.string	"S_SMOKE4"
.LASF560:
	.string	"S_SMOKE5"
.LASF779:
	.string	"S_BOSS_RUN6"
.LASF780:
	.string	"S_BOSS_RUN7"
.LASF781:
	.string	"S_BOSS_RUN8"
.LASF145:
	.string	"SPR_HEAD"
.LASF1395:
	.string	"bprev"
.LASF206:
	.string	"SPR_POL1"
.LASF202:
	.string	"SPR_POL2"
.LASF205:
	.string	"SPR_POL3"
.LASF204:
	.string	"SPR_POL4"
.LASF203:
	.string	"SPR_POL5"
.LASF207:
	.string	"SPR_POL6"
.LASF1051:
	.string	"S_BAR1"
.LASF1149:
	.string	"S_MEAT4"
.LASF1524:
	.string	"plat_e"
.LASF543:
	.string	"S_FIRE18"
.LASF1265:
	.string	"MT_MISC0"
.LASF1137:
	.string	"S_DEADTORSO"
.LASF1556:
	.string	"topheight"
.LASF1537:
	.string	"plat_t"
.LASF279:
	.string	"S_DSGUNUP"
.LASF1677:
	.string	"sfx_boscub"
.LASF1639:
	.string	"sfx_pldeth"
.LASF1362:
	.string	"spawnstate"
.LASF1545:
	.string	"blazeOpen"
.LASF1510:
	.string	"levelTimer"
.LASF1714:
	.string	"P_AddThinker"
.LASF688:
	.string	"S_TROO_STND2"
.LASF1578:
	.string	"newspecial"
.LASF1208:
	.string	"S_TECH2LAMP"
.LASF1721:
	.string	"EV_CeilingCrushStop"
.LASF1602:
	.string	"sfx_doropn"
.LASF1251:
	.string	"MT_SPAWNFIRE"
.LASF1529:
	.string	"blazeDWUS"
.LASF1226:
	.string	"MT_FIRE"
.LASF1542:
	.string	"open"
.LASF1218:
	.string	"nextstate"
.LASF1742:
	.string	"floor"
.LASF785:
	.string	"S_BOSS_PAIN"
.LASF156:
	.string	"SPR_SSWV"
.LASF20:
	.string	"_IO_write_ptr"
.LASF1755:
	.string	"P_FindSectorFromLineTag"
.LASF1194:
	.string	"S_RTORCHSHRT4"
.LASF347:
	.string	"S_RBALL1"
.LASF348:
	.string	"S_RBALL2"
.LASF1612:
	.string	"sfx_pepain"
.LASF1152:
	.string	"S_TALLGRNCOL"
.LASF1577:
	.string	"stair_e"
.LASF1410:
	.string	"lastlook"
.LASF1649:
	.string	"sfx_brsdth"
.LASF1509:
	.string	"sides"
.LASF1585:
	.string	"sfx_sgcock"
.LASF1460:
	.string	"playerstate_t"
.LASF1758:
	.string	"other"
.LASF1141:
	.string	"S_HEADONASTICK"
.LASF421:
	.string	"S_POSS_RUN1"
.LASF363:
	.string	"S_BFGLAND2"
.LASF364:
	.string	"S_BFGLAND3"
.LASF365:
	.string	"S_BFGLAND4"
.LASF366:
	.string	"S_BFGLAND5"
.LASF367:
	.string	"S_BFGLAND6"
.LASF427:
	.string	"S_POSS_RUN7"
.LASF428:
	.string	"S_POSS_RUN8"
.LASF1538:
	.string	"activeplats"
.LASF410:
	.string	"S_PLAY_XDIE1"
.LASF411:
	.string	"S_PLAY_XDIE2"
.LASF412:
	.string	"S_PLAY_XDIE3"
.LASF413:
	.string	"S_PLAY_XDIE4"
.LASF414:
	.string	"S_PLAY_XDIE5"
.LASF415:
	.string	"S_PLAY_XDIE6"
.LASF416:
	.string	"S_PLAY_XDIE7"
.LASF417:
	.string	"S_PLAY_XDIE8"
.LASF418:
	.string	"S_PLAY_XDIE9"
.LASF816:
	.string	"S_BOS2_DIE1"
.LASF817:
	.string	"S_BOS2_DIE2"
.LASF818:
	.string	"S_BOS2_DIE3"
.LASF819:
	.string	"S_BOS2_DIE4"
.LASF820:
	.string	"S_BOS2_DIE5"
.LASF821:
	.string	"S_BOS2_DIE6"
.LASF822:
	.string	"S_BOS2_DIE7"
.LASF1382:
	.string	"flags"
.LASF742:
	.string	"S_SARG_RAISE2"
.LASF743:
	.string	"S_SARG_RAISE3"
.LASF386:
	.string	"S_TFOG10"
.LASF744:
	.string	"S_SARG_RAISE4"
.LASF1739:
	.string	"episode"
.LASF439:
	.string	"S_POSS_XDIE1"
.LASF440:
	.string	"S_POSS_XDIE2"
.LASF441:
	.string	"S_POSS_XDIE3"
.LASF442:
	.string	"S_POSS_XDIE4"
.LASF443:
	.string	"S_POSS_XDIE5"
.LASF444:
	.string	"S_POSS_XDIE6"
.LASF445:
	.string	"S_POSS_XDIE7"
.LASF67:
	.string	"am_clip"
.LASF447:
	.string	"S_POSS_XDIE9"
.LASF1140:
	.string	"S_GIBS"
.LASF755:
	.string	"S_HEAD_DIE1"
.LASF756:
	.string	"S_HEAD_DIE2"
.LASF757:
	.string	"S_HEAD_DIE3"
.LASF758:
	.string	"S_HEAD_DIE4"
.LASF759:
	.string	"S_HEAD_DIE5"
.LASF760:
	.string	"S_HEAD_DIE6"
.LASF608:
	.string	"S_FATT_STND2"
.LASF1131:
	.string	"S_COLU"
.LASF258:
	.string	"S_PISTOL1"
.LASF259:
	.string	"S_PISTOL2"
.LASF260:
	.string	"S_PISTOL3"
.LASF261:
	.string	"S_PISTOL4"
.LASF597:
	.string	"S_SKEL_RAISE2"
.LASF598:
	.string	"S_SKEL_RAISE3"
.LASF44:
	.string	"FILE"
.LASF600:
	.string	"S_SKEL_RAISE5"
.LASF601:
	.string	"S_SKEL_RAISE6"
.LASF1160:
	.string	"S_BIGTREE"
.LASF1502:
	.string	"ST_NEGATIVE"
.LASF1070:
	.string	"S_BON2C"
.LASF1071:
	.string	"S_BON2D"
.LASF376:
	.string	"S_TFOG01"
.LASF377:
	.string	"S_TFOG02"
.LASF195:
	.string	"SPR_LAUN"
.LASF432:
	.string	"S_POSS_PAIN"
.LASF767:
	.string	"S_BRBALL1"
.LASF768:
	.string	"S_BRBALL2"
.LASF1229:
	.string	"MT_SMOKE"
.LASF1243:
	.string	"MT_CYBORG"
.LASF1380:
	.string	"damage"
.LASF472:
	.string	"S_SPOS_XDIE1"
.LASF473:
	.string	"S_SPOS_XDIE2"
.LASF474:
	.string	"S_SPOS_XDIE3"
.LASF475:
	.string	"S_SPOS_XDIE4"
.LASF476:
	.string	"S_SPOS_XDIE5"
.LASF477:
	.string	"S_SPOS_XDIE6"
.LASF478:
	.string	"S_SPOS_XDIE7"
.LASF479:
	.string	"S_SPOS_XDIE8"
.LASF480:
	.string	"S_SPOS_XDIE9"
.LASF1610:
	.string	"sfx_vipain"
.LASF11:
	.string	"size_t"
.LASF1390:
	.string	"mobj_s"
.LASF1449:
	.string	"mobj_t"
.LASF1073:
	.string	"S_BKEY"
.LASF1553:
	.string	"silentCrushAndRaise"
.LASF75:
	.string	"pw_invisibility"
.LASF160:
	.string	"SPR_ARM1"
.LASF161:
	.string	"SPR_ARM2"
.LASF1225:
	.string	"MT_VILE"
.LASF1601:
	.string	"sfx_pstop"
.LASF51:
	.string	"it_blueskull"
.LASF1481:
	.string	"soundorg"
.LASF1506:
	.string	"texturetranslation"
.LASF320:
	.string	"S_PLASMADOWN"
.LASF632:
	.string	"S_FATT_PAIN2"
.LASF1686:
	.string	"sfx_keendt"
.LASF1030:
	.string	"S_BRAINEYESEE"
.LASF1503:
	.string	"slopetype_t"
.LASF567:
	.string	"S_SKEL_STND2"
.LASF920:
	.string	"S_CYBER_STND2"
.LASF1221:
	.string	"state_t"
.LASF764:
	.string	"S_HEAD_RAISE4"
.LASF990:
	.string	"S_SSWV_DIE2"
.LASF1765:
	.string	"getNextSector"
.LASF1726:
	.string	"EV_StartLightStrobing"
.LASF1559:
	.string	"ceiling_t"
.LASF446:
	.string	"S_POSS_XDIE8"
.LASF1120:
	.string	"S_CELP"
.LASF1162:
	.string	"S_EVILEYE"
.LASF1188:
	.string	"S_GTORCHSHRT2"
.LASF1189:
	.string	"S_GTORCHSHRT3"
.LASF1190:
	.string	"S_GTORCHSHRT4"
.LASF1753:
	.string	"P_FindMinSurroundingLight"
.LASF1420:
	.string	"viewheight"
.LASF1528:
	.string	"raiseToNearestAndChange"
.LASF1394:
	.string	"bnext"
.LASF1549:
	.string	"raiseToHighest"
.LASF1680:
	.string	"sfx_bosdth"
.LASF24:
	.string	"_IO_save_base"
.LASF621:
	.string	"S_FATT_ATK1"
.LASF154:
	.string	"SPR_CYBR"
.LASF622:
	.string	"S_FATT_ATK2"
.LASF525:
	.string	"S_VILE_DIE10"
.LASF115:
	.string	"SPR_MISF"
.LASF114:
	.string	"SPR_MISG"
.LASF1466:
	.string	"deathmatch"
.LASF127:
	.string	"SPR_MISL"
.LASF1079:
	.string	"S_BSKULL"
.LASF158:
	.string	"SPR_BBRN"
.LASF500:
	.string	"S_VILE_ATK1"
.LASF501:
	.string	"S_VILE_ATK2"
.LASF502:
	.string	"S_VILE_ATK3"
.LASF503:
	.string	"S_VILE_ATK4"
.LASF504:
	.string	"S_VILE_ATK5"
.LASF505:
	.string	"S_VILE_ATK6"
.LASF506:
	.string	"S_VILE_ATK7"
.LASF247:
	.string	"S_PUNCH"
.LASF508:
	.string	"S_VILE_ATK9"
.LASF229:
	.string	"SPR_SMBT"
.LASF1666:
	.string	"sfx_hoof"
.LASF1525:
	.string	"perpetualRaise"
.LASF803:
	.string	"S_BOS2_RUN1"
.LASF804:
	.string	"S_BOS2_RUN2"
.LASF805:
	.string	"S_BOS2_RUN3"
.LASF806:
	.string	"S_BOS2_RUN4"
.LASF807:
	.string	"S_BOS2_RUN5"
.LASF808:
	.string	"S_BOS2_RUN6"
.LASF809:
	.string	"S_BOS2_RUN7"
.LASF810:
	.string	"S_BOS2_RUN8"
.LASF1476:
	.string	"lightlevel"
.LASF1521:
	.string	"down"
.LASF220:
	.string	"SPR_TRE1"
.LASF221:
	.string	"SPR_TRE2"
.LASF1520:
	.string	"buttonlist"
.LASF1516:
	.string	"where"
.LASF877:
	.string	"S_BSPI_STND"
.LASF1597:
	.string	"sfx_rxplod"
.LASF1371:
	.string	"meleestate"
.LASF1431:
	.string	"ammo"
.LASF667:
	.string	"S_CPOS_DIE1"
.LASF228:
	.string	"SPR_TRED"
.LASF121:
	.string	"SPR_BLUD"
.LASF623:
	.string	"S_FATT_ATK3"
.LASF624:
	.string	"S_FATT_ATK4"
.LASF625:
	.string	"S_FATT_ATK5"
.LASF626:
	.string	"S_FATT_ATK6"
.LASF627:
	.string	"S_FATT_ATK7"
.LASF628:
	.string	"S_FATT_ATK8"
.LASF629:
	.string	"S_FATT_ATK9"
.LASF131:
	.string	"SPR_TFOG"
.LASF335:
	.string	"S_BLOOD1"
.LASF336:
	.string	"S_BLOOD2"
.LASF337:
	.string	"S_BLOOD3"
.LASF1219:
	.string	"misc1"
.LASF1220:
	.string	"misc2"
.LASF1608:
	.string	"sfx_dmpain"
.LASF1452:
	.string	"angleturn"
.LASF38:
	.string	"_wide_data"
.LASF1127:
	.string	"S_LAUN"
.LASF1749:
	.string	"P_CrossSpecialLine"
.LASF387:
	.string	"S_IFOG"
.LASF134:
	.string	"SPR_POSS"
.LASF139:
	.string	"SPR_FBXP"
.LASF936:
	.string	"S_CYBER_DIE1"
.LASF937:
	.string	"S_CYBER_DIE2"
.LASF938:
	.string	"S_CYBER_DIE3"
.LASF939:
	.string	"S_CYBER_DIE4"
.LASF940:
	.string	"S_CYBER_DIE5"
.LASF941:
	.string	"S_CYBER_DIE6"
.LASF942:
	.string	"S_CYBER_DIE7"
.LASF814:
	.string	"S_BOS2_PAIN"
.LASF944:
	.string	"S_CYBER_DIE9"
.LASF1411:
	.string	"spawnpoint"
.LASF1214:
	.string	"sprite"
.LASF1702:
	.string	"animdefs"
.LASF1292:
	.string	"MT_MISC23"
.LASF1560:
	.string	"activeceilings"
.LASF1747:
	.string	"P_ShootSpecialLine"
.LASF1157:
	.string	"S_CANDELABRA"
.LASF497:
	.string	"S_VILE_RUN10"
.LASF498:
	.string	"S_VILE_RUN11"
.LASF499:
	.string	"S_VILE_RUN12"
.LASF1718:
	.string	"P_DamageMobj"
.LASF1117:
	.string	"S_ROCK"
.LASF266:
	.string	"S_SGUN1"
.LASF267:
	.string	"S_SGUN2"
.LASF268:
	.string	"S_SGUN3"
.LASF269:
	.string	"S_SGUN4"
.LASF270:
	.string	"S_SGUN5"
.LASF271:
	.string	"S_SGUN6"
.LASF272:
	.string	"S_SGUN7"
.LASF273:
	.string	"S_SGUN8"
.LASF274:
	.string	"S_SGUN9"
.LASF1361:
	.string	"doomednum"
.LASF1745:
	.string	"anim"
.LASF263:
	.string	"S_SGUN"
.LASF1153:
	.string	"S_SHRTGRNCOL"
.LASF1684:
	.string	"sfx_ssdth"
.LASF1674:
	.string	"sfx_flamst"
.LASF838:
	.string	"S_SKULL_PAIN"
.LASF1250:
	.string	"MT_SPAWNSHOT"
.LASF562:
	.string	"S_TRACER2"
.LASF1161:
	.string	"S_TECHPILLAR"
.LASF566:
	.string	"S_SKEL_STND"
.LASF721:
	.string	"S_SARG_STND2"
.LASF1667:
	.string	"sfx_metal"
.LASF467:
	.string	"S_SPOS_DIE1"
.LASF468:
	.string	"S_SPOS_DIE2"
.LASF469:
	.string	"S_SPOS_DIE3"
.LASF470:
	.string	"S_SPOS_DIE4"
.LASF471:
	.string	"S_SPOS_DIE5"
.LASF1459:
	.string	"PST_REBORN"
.LASF1634:
	.string	"sfx_sgtatk"
.LASF1522:
	.string	"waiting"
.LASF1196:
	.string	"S_HANGBNOBRAIN"
.LASF1527:
	.string	"raiseAndChange"
.LASF1631:
	.string	"sfx_mansit"
.LASF730:
	.string	"S_SARG_ATK1"
.LASF731:
	.string	"S_SARG_ATK2"
.LASF732:
	.string	"S_SARG_ATK3"
.LASF321:
	.string	"S_PLASMAUP"
.LASF1540:
	.string	"close30ThenOpen"
.LASF1216:
	.string	"tics"
.LASF1754:
	.string	"check"
.LASF1077:
	.string	"S_YKEY"
.LASF1605:
	.string	"sfx_swtchn"
.LASF1376:
	.string	"speed"
.LASF1469:
	.string	"myargv"
.LASF290:
	.string	"S_DSNR1"
.LASF959:
	.string	"S_PAIN_DIE1"
.LASF1606:
	.string	"sfx_swtchx"
.LASF489:
	.string	"S_VILE_RUN2"
.LASF1672:
	.string	"sfx_itmbk"
.LASF1207:
	.string	"S_TECHLAMP4"
.LASF653:
	.string	"S_CPOS_RUN1"
.LASF654:
	.string	"S_CPOS_RUN2"
.LASF655:
	.string	"S_CPOS_RUN3"
.LASF656:
	.string	"S_CPOS_RUN4"
.LASF93:
	.string	"actionf_p1"
.LASF94:
	.string	"actionf_p2"
.LASF191:
	.string	"SPR_BPAK"
.LASF660:
	.string	"S_CPOS_RUN8"
.LASF1057:
	.string	"S_BEXP5"
.LASF1689:
	.string	"sfx_skeatk"
.LASF1547:
	.string	"vldoor_e"
.LASF87:
	.string	"mapthing_t"
.LASF422:
	.string	"S_POSS_RUN2"
.LASF423:
	.string	"S_POSS_RUN3"
.LASF424:
	.string	"S_POSS_RUN4"
.LASF741:
	.string	"S_SARG_RAISE1"
.LASF425:
	.string	"S_POSS_RUN5"
.LASF95:
	.string	"acp1"
.LASF96:
	.string	"acp2"
.LASF745:
	.string	"S_SARG_RAISE5"
.LASF746:
	.string	"S_SARG_RAISE6"
.LASF1641:
	.string	"sfx_podth1"
.LASF1642:
	.string	"sfx_podth2"
.LASF1643:
	.string	"sfx_podth3"
.LASF1325:
	.string	"MT_MISC53"
.LASF1691:
	.string	"NUMSFX"
.LASF230:
	.string	"SPR_SMGT"
.LASF1021:
	.string	"S_KEENPAIN"
.LASF369:
	.string	"S_BFGEXP2"
.LASF370:
	.string	"S_BFGEXP3"
.LASF371:
	.string	"S_BFGEXP4"
.LASF300:
	.string	"S_CHAINFLASH1"
.LASF301:
	.string	"S_CHAINFLASH2"
.LASF256:
	.string	"S_PISTOLDOWN"
.LASF1515:
	.string	"line"
.LASF921:
	.string	"S_CYBER_RUN1"
.LASF922:
	.string	"S_CYBER_RUN2"
.LASF923:
	.string	"S_CYBER_RUN3"
.LASF924:
	.string	"S_CYBER_RUN4"
.LASF925:
	.string	"S_CYBER_RUN5"
.LASF926:
	.string	"S_CYBER_RUN6"
.LASF927:
	.string	"S_CYBER_RUN7"
.LASF928:
	.string	"S_CYBER_RUN8"
.LASF1365:
	.string	"seesound"
.LASF1467:
	.string	"totalsecret"
.LASF1108:
	.string	"S_PMAP2"
.LASF1109:
	.string	"S_PMAP3"
.LASF1110:
	.string	"S_PMAP4"
.LASF1111:
	.string	"S_PMAP5"
.LASF1112:
	.string	"S_PMAP6"
.LASF1442:
	.string	"bonuscount"
.LASF839:
	.string	"S_SKULL_PAIN2"
.LASF1697:
	.string	"endname"
.LASF1369:
	.string	"painchance"
.LASF665:
	.string	"S_CPOS_PAIN"
.LASF1473:
	.string	"ceilingheight"
.LASF144:
	.string	"SPR_SARG"
.LASF1746:
	.string	"P_PlayerInSpecialSector"
.LASF970:
	.string	"S_PAIN_RAISE6"
.LASF1483:
	.string	"specialdata"
.LASF1308:
	.string	"MT_MISC36"
.LASF774:
	.string	"S_BOSS_RUN1"
.LASF775:
	.string	"S_BOSS_RUN2"
.LASF776:
	.string	"S_BOSS_RUN3"
.LASF777:
	.string	"S_BOSS_RUN4"
.LASF778:
	.string	"S_BOSS_RUN5"
.LASF296:
	.string	"S_CHAINUP"
.LASF1770:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1437:
	.string	"killcount"
.LASF915:
	.string	"S_ARACH_PLEX2"
.LASF1159:
	.string	"S_TORCHTREE"
.LASF971:
	.string	"S_SSWV_STND"
.LASF917:
	.string	"S_ARACH_PLEX4"
.LASF1018:
	.string	"S_COMMKEEN10"
.LASF1019:
	.string	"S_COMMKEEN11"
.LASF1020:
	.string	"S_COMMKEEN12"
.LASF1728:
	.string	"EV_DoPlat"
.LASF935:
	.string	"S_CYBER_PAIN"
.LASF1465:
	.string	"stderr"
.LASF454:
	.string	"S_SPOS_RUN1"
.LASF212:
	.string	"SPR_SMIT"
.LASF82:
	.string	"boolean"
.LASF457:
	.string	"S_SPOS_RUN4"
.LASF458:
	.string	"S_SPOS_RUN5"
.LASF149:
	.string	"SPR_SKUL"
.LASF460:
	.string	"S_SPOS_RUN7"
.LASF461:
	.string	"S_SPOS_RUN8"
.LASF1118:
	.string	"S_BROK"
.LASF1363:
	.string	"spawnhealth"
.LASF1650:
	.string	"sfx_cybdth"
.LASF248:
	.string	"S_PUNCHDOWN"
.LASF914:
	.string	"S_ARACH_PLEX"
.LASF1175:
	.string	"S_GREENTORCH"
.LASF63:
	.string	"wp_supershotgun"
.LASF314:
	.string	"S_SAWDOWN"
.LASF26:
	.string	"_IO_save_end"
.LASF1595:
	.string	"sfx_sawhit"
.LASF1594:
	.string	"sfx_sawful"
.LASF1213:
	.string	"statenum_t"
.LASF1253:
	.string	"MT_TROOPSHOT"
.LASF1238:
	.string	"MT_BRUISERSHOT"
.LASF1662:
	.string	"sfx_vilact"
.LASF1456:
	.string	"ticcmd_t"
.LASF1358:
	.string	"MT_MISC86"
.LASF1566:
	.string	"raiseToTexture"
.LASF1385:
	.string	"ps_weapon"
.LASF1627:
	.string	"sfx_spisit"
.LASF402:
	.string	"S_PLAY_PAIN2"
.LASF1593:
	.string	"sfx_sawidl"
.LASF797:
	.string	"S_BOSS_RAISE4"
.LASF798:
	.string	"S_BOSS_RAISE5"
.LASF1215:
	.string	"frame"
.LASF141:
	.string	"SPR_MANF"
.LASF652:
	.string	"S_CPOS_STND2"
.LASF1501:
	.string	"ST_POSITIVE"
.LASF1660:
	.string	"sfx_bspact"
.LASF465:
	.string	"S_SPOS_PAIN"
.LASF57:
	.string	"wp_shotgun"
.LASF433:
	.string	"S_POSS_PAIN2"
.LASF1259:
	.string	"MT_PUFF"
.LASF305:
	.string	"S_MISSILE1"
.LASF306:
	.string	"S_MISSILE2"
.LASF307:
	.string	"S_MISSILE3"
.LASF681:
	.string	"S_CPOS_RAISE2"
.LASF682:
	.string	"S_CPOS_RAISE3"
.LASF683:
	.string	"S_CPOS_RAISE4"
.LASF1447:
	.string	"psprites"
.LASF1125:
	.string	"S_MGUN"
.LASF1237:
	.string	"MT_BRUISER"
.LASF190:
	.string	"SPR_SBOX"
.LASF1439:
	.string	"secretcount"
.LASF1360:
	.string	"mobjtype_t"
.LASF1374:
	.string	"xdeathstate"
.LASF1424:
	.string	"powers"
.LASF834:
	.string	"S_SKULL_ATK1"
.LASF835:
	.string	"S_SKULL_ATK2"
.LASF836:
	.string	"S_SKULL_ATK3"
.LASF837:
	.string	"S_SKULL_ATK4"
.LASF815:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1239:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF1451:
	.string	"sidemove"
.LASF1381:
	.string	"activesound"
.LASF466:
	.string	"S_SPOS_PAIN2"
.LASF1756:
	.string	"start"
.LASF1665:
	.string	"sfx_punch"
.LASF630:
	.string	"S_FATT_ATK10"
.LASF1312:
	.string	"MT_MISC40"
.LASF227:
	.string	"SPR_TGRN"
.LASF1284:
	.string	"MT_MEGA"
.LASF129:
	.string	"SPR_BFE1"
.LASF130:
	.string	"SPR_BFE2"
.LASF1573:
	.string	"raiseFloor512"
.LASF1482:
	.string	"thinglist"
.LASF1318:
	.string	"MT_MISC46"
.LASF1534:
	.string	"status"
.LASF1533:
	.string	"count"
.LASF1561:
	.string	"lowerFloor"
.LASF1246:
	.string	"MT_KEEN"
.LASF1707:
	.string	"P_SpawnDoorCloseIn30"
.LASF1480:
	.string	"blockbox"
.LASF1031:
	.string	"S_BRAINEYE1"
.LASF687:
	.string	"S_TROO_STND"
.LASF634:
	.string	"S_FATT_DIE2"
.LASF325:
	.string	"S_PLASMAFLASH2"
.LASF66:
	.string	"weapontype_t"
.LASF1454:
	.string	"chatchar"
.LASF378:
	.string	"S_TFOG2"
.LASF379:
	.string	"S_TFOG3"
.LASF380:
	.string	"S_TFOG4"
.LASF381:
	.string	"S_TFOG5"
.LASF382:
	.string	"S_TFOG6"
.LASF383:
	.string	"S_TFOG7"
.LASF384:
	.string	"S_TFOG8"
.LASF385:
	.string	"S_TFOG9"
.LASF800:
	.string	"S_BOSS_RAISE7"
.LASF1433:
	.string	"attackdown"
.LASF105:
	.string	"SPR_TROO"
.LASF13:
	.string	"__off64_t"
.LASF116:
	.string	"SPR_SAWG"
.LASF1623:
	.string	"sfx_sgtsit"
.LASF1772:
	.string	"P_Random"
.LASF1568:
	.string	"raiseFloor24"
.LASF165:
	.string	"SPR_BON1"
.LASF18:
	.string	"_IO_read_base"
.LASF36:
	.string	"_offset"
.LASF50:
	.string	"it_redcard"
.LASF1154:
	.string	"S_TALLREDCOL"
.LASF1733:
	.string	"I_Error"
.LASF1729:
	.string	"EV_BuildStairs"
.LASF1388:
	.string	"state"
.LASF23:
	.string	"_IO_buf_end"
.LASF1129:
	.string	"S_SHOT"
.LASF985:
	.string	"S_SSWV_ATK5"
.LASF1719:
	.string	"P_ChangeSwitchTexture"
.LASF1134:
	.string	"S_BLOODYTWITCH2"
.LASF1135:
	.string	"S_BLOODYTWITCH3"
.LASF1136:
	.string	"S_BLOODYTWITCH4"
.LASF875:
	.string	"S_SPID_DIE10"
.LASF876:
	.string	"S_SPID_DIE11"
.LASF1425:
	.string	"cards"
.LASF222:
	.string	"SPR_ELEC"
.LASF1023:
	.string	"S_BRAIN"
.LASF1703:
	.string	"numlinespecials"
.LASF1241:
	.string	"MT_SPIDER"
.LASF1106:
	.string	"S_SUIT"
.LASF1513:
	.string	"bottom"
.LASF120:
	.string	"SPR_BFGF"
.LASF119:
	.string	"SPR_BFGG"
.LASF1551:
	.string	"crushAndRaise"
.LASF42:
	.string	"_mode"
.LASF946:
	.string	"S_PAIN_STND"
.LASF1625:
	.string	"sfx_brssit"
.LASF19:
	.string	"_IO_write_base"
.LASF362:
	.string	"S_BFGLAND"
.LASF1052:
	.string	"S_BAR2"
.LASF1429:
	.string	"pendingweapon"
.LASF103:
	.string	"function"
.LASF1668:
	.string	"sfx_chgun"
.LASF68:
	.string	"am_shell"
.LASF1402:
	.string	"validcount"
.LASF1440:
	.string	"message"
.LASF642:
	.string	"S_FATT_DIE10"
.LASF54:
	.string	"NUMCARDS"
.LASF1179:
	.string	"S_REDTORCH"
.LASF1724:
	.string	"G_ExitLevel"
.LASF1257:
	.string	"MT_BFG"
.LASF426:
	.string	"S_POSS_RUN6"
.LASF1636:
	.string	"sfx_vilatk"
.LASF1463:
	.string	"CF_NOMOMENTUM"
.LASF136:
	.string	"SPR_VILE"
.LASF1541:
	.string	"close"
.LASF1671:
	.string	"sfx_bdcls"
.LASF1260:
	.string	"MT_BLOOD"
.LASF255:
	.string	"S_PISTOL"
.LASF1581:
	.string	"floormove_t"
.LASF81:
	.string	"true"
.LASF487:
	.string	"S_VILE_STND2"
.LASF905:
	.string	"S_BSPI_RAISE1"
.LASF906:
	.string	"S_BSPI_RAISE2"
.LASF907:
	.string	"S_BSPI_RAISE3"
.LASF908:
	.string	"S_BSPI_RAISE4"
.LASF909:
	.string	"S_BSPI_RAISE5"
.LASF910:
	.string	"S_BSPI_RAISE6"
.LASF911:
	.string	"S_BSPI_RAISE7"
.LASF1399:
	.string	"momx"
.LASF1400:
	.string	"momy"
.LASF4:
	.string	"long int"
.LASF994:
	.string	"S_SSWV_XDIE1"
.LASF995:
	.string	"S_SSWV_XDIE2"
.LASF996:
	.string	"S_SSWV_XDIE3"
.LASF997:
	.string	"S_SSWV_XDIE4"
.LASF998:
	.string	"S_SSWV_XDIE5"
.LASF999:
	.string	"S_SSWV_XDIE6"
.LASF1000:
	.string	"S_SSWV_XDIE7"
.LASF1001:
	.string	"S_SSWV_XDIE8"
.LASF1002:
	.string	"S_SSWV_XDIE9"
.LASF292:
	.string	"S_DSGUNFLASH1"
.LASF293:
	.string	"S_DSGUNFLASH2"
.LASF1291:
	.string	"MT_MISC22"
.LASF1448:
	.string	"didsecret"
.LASF550:
	.string	"S_FIRE25"
.LASF644:
	.string	"S_FATT_RAISE2"
.LASF1327:
	.string	"MT_MISC55"
.LASF1421:
	.string	"deltaviewheight"
.LASF52:
	.string	"it_yellowskull"
.LASF1082:
	.string	"S_RSKULL2"
.LASF1412:
	.string	"tracer"
.LASF649:
	.string	"S_FATT_RAISE7"
.LASF857:
	.string	"S_SPID_RUN10"
.LASF858:
	.string	"S_SPID_RUN11"
.LASF859:
	.string	"S_SPID_RUN12"
.LASF45:
	.string	"_IO_marker"
.LASF1738:
	.string	"rcsid"
.LASF1615:
	.string	"sfx_wpnup"
.LASF1713:
	.string	"T_MoveFloor"
.LASF1574:
	.string	"floor_e"
.LASF1383:
	.string	"raisestate"
.LASF308:
	.string	"S_MISSILEFLASH1"
.LASF309:
	.string	"S_MISSILEFLASH2"
.LASF310:
	.string	"S_MISSILEFLASH3"
.LASF311:
	.string	"S_MISSILEFLASH4"
.LASF171:
	.string	"SPR_RSKU"
.LASF1635:
	.string	"sfx_skepch"
.LASF98:
	.string	"think_t"
.LASF668:
	.string	"S_CPOS_DIE2"
.LASF669:
	.string	"S_CPOS_DIE3"
.LASF1711:
	.string	"atoi"
.LASF670:
	.string	"S_CPOS_DIE4"
.LASF1497:
	.string	"midtexture"
.LASF671:
	.string	"S_CPOS_DIE5"
.LASF672:
	.string	"S_CPOS_DIE6"
.LASF673:
	.string	"S_CPOS_DIE7"
.LASF1461:
	.string	"CF_NOCLIP"
.LASF1709:
	.string	"P_SpawnStrobeFlash"
.LASF1114:
	.string	"S_PVIS2"
.LASF1252:
	.string	"MT_BARREL"
.LASF846:
	.string	"S_SPID_STND"
.LASF618:
	.string	"S_FATT_RUN10"
.LASF619:
	.string	"S_FATT_RUN11"
.LASF620:
	.string	"S_FATT_RUN12"
.LASF1244:
	.string	"MT_PAIN"
.LASF46:
	.string	"_IO_codecvt"
.LASF1172:
	.string	"S_BLUETORCH2"
.LASF1384:
	.string	"mobjinfo_t"
.LASF1173:
	.string	"S_BLUETORCH3"
.LASF1618:
	.string	"sfx_posit1"
.LASF1174:
	.string	"S_BLUETORCH4"
.LASF231:
	.string	"SPR_SMRT"
.LASF1620:
	.string	"sfx_posit3"
.LASF333:
	.string	"S_BFGFLASH1"
.LASF334:
	.string	"S_BFGFLASH2"
.LASF867:
	.string	"S_SPID_DIE2"
.LASF148:
	.string	"SPR_BOS2"
.LASF870:
	.string	"S_SPID_DIE5"
.LASF871:
	.string	"S_SPID_DIE6"
.LASF1678:
	.string	"sfx_bossit"
.LASF872:
	.string	"S_SPID_DIE7"
.LASF873:
	.string	"S_SPID_DIE8"
.LASF1163:
	.string	"S_EVILEYE2"
.LASF1164:
	.string	"S_EVILEYE3"
.LASF1165:
	.string	"S_EVILEYE4"
.LASF338:
	.string	"S_PUFF1"
.LASF339:
	.string	"S_PUFF2"
.LASF340:
	.string	"S_PUFF3"
.LASF159:
	.string	"SPR_BOSF"
.LASF1485:
	.string	"lines"
.LASF147:
	.string	"SPR_BOSS"
.LASF1256:
	.string	"MT_PLASMA"
.LASF1690:
	.string	"sfx_radio"
.LASF892:
	.string	"S_BSPI_ATK1"
.LASF893:
	.string	"S_BSPI_ATK2"
.LASF894:
	.string	"S_BSPI_ATK3"
.LASF895:
	.string	"S_BSPI_ATK4"
.LASF1074:
	.string	"S_BKEY2"
.LASF64:
	.string	"NUMWEAPONS"
.LASF879:
	.string	"S_BSPI_SIGHT"
.LASF1607:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF881:
	.string	"S_BSPI_RUN2"
.LASF1025:
	.string	"S_BRAIN_DIE1"
.LASF1026:
	.string	"S_BRAIN_DIE2"
.LASF1027:
	.string	"S_BRAIN_DIE3"
.LASF1028:
	.string	"S_BRAIN_DIE4"
.LASF360:
	.string	"S_BFGSHOT"
.LASF1166:
	.string	"S_FLOATSKULL"
.LASF516:
	.string	"S_VILE_DIE1"
.LASF517:
	.string	"S_VILE_DIE2"
.LASF518:
	.string	"S_VILE_DIE3"
.LASF519:
	.string	"S_VILE_DIE4"
.LASF520:
	.string	"S_VILE_DIE5"
.LASF521:
	.string	"S_VILE_DIE6"
.LASF522:
	.string	"S_VILE_DIE7"
.LASF523:
	.string	"S_VILE_DIE8"
.LASF524:
	.string	"S_VILE_DIE9"
.LASF1441:
	.string	"damagecount"
.LASF1588:
	.string	"sfx_dbcls"
.LASF200:
	.string	"SPR_SMT2"
.LASF1076:
	.string	"S_RKEY2"
.LASF1047:
	.string	"S_ARM1"
.LASF1049:
	.string	"S_ARM2"
.LASF1655:
	.string	"sfx_pedth"
.LASF1142:
	.string	"S_HEADCANDLES"
.LASF178:
	.string	"SPR_PINS"
.LASF772:
	.string	"S_BOSS_STND"
.LASF1659:
	.string	"sfx_dmact"
.LASF1735:
	.string	"W_CheckNumForName"
.LASF1705:
	.string	"P_SpawnFireFlicker"
.LASF752:
	.string	"S_HEAD_PAIN"
.LASF49:
	.string	"it_yellowcard"
.LASF1228:
	.string	"MT_TRACER"
.LASF633:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF635:
	.string	"S_FATT_DIE3"
.LASF636:
	.string	"S_FATT_DIE4"
.LASF637:
	.string	"S_FATT_DIE5"
.LASF638:
	.string	"S_FATT_DIE6"
.LASF639:
	.string	"S_FATT_DIE7"
.LASF640:
	.string	"S_FATT_DIE8"
.LASF641:
	.string	"S_FATT_DIE9"
.LASF708:
	.string	"S_TROO_XDIE2"
.LASF709:
	.string	"S_TROO_XDIE3"
.LASF710:
	.string	"S_TROO_XDIE4"
.LASF711:
	.string	"S_TROO_XDIE5"
.LASF712:
	.string	"S_TROO_XDIE6"
.LASF713:
	.string	"S_TROO_XDIE7"
.LASF714:
	.string	"S_TROO_XDIE8"
.LASF183:
	.string	"SPR_CLIP"
.LASF1155:
	.string	"S_SHRTREDCOL"
.LASF1198:
	.string	"S_HANGTSKULL"
.LASF1562:
	.string	"lowerFloorToLowest"
.LASF22:
	.string	"_IO_buf_base"
.LASF1761:
	.string	"currentheight"
.LASF79:
	.string	"NUMPOWERS"
.LASF1704:
	.string	"linespeciallist"
.LASF983:
	.string	"S_SSWV_ATK3"
.LASF984:
	.string	"S_SSWV_ATK4"
.LASF289:
	.string	"S_DSGUN10"
.LASF1647:
	.string	"sfx_cacdth"
.LASF74:
	.string	"pw_strength"
.LASF217:
	.string	"SPR_CAND"
.LASF1604:
	.string	"sfx_stnmov"
.LASF1234:
	.string	"MT_SERGEANT"
.LASF1599:
	.string	"sfx_firxpl"
.LASF1145:
	.string	"S_LIVESTICK"
.LASF17:
	.string	"_IO_read_end"
.LASF1085:
	.string	"S_STIM"
.LASF69:
	.string	"am_cell"
.LASF48:
	.string	"it_bluecard"
.LASF1397:
	.string	"floorz"
.LASF748:
	.string	"S_HEAD_RUN1"
.LASF403:
	.string	"S_PLAY_DIE1"
.LASF404:
	.string	"S_PLAY_DIE2"
.LASF405:
	.string	"S_PLAY_DIE3"
.LASF406:
	.string	"S_PLAY_DIE4"
.LASF99:
	.string	"_IO_FILE"
.LASF408:
	.string	"S_PLAY_DIE6"
.LASF409:
	.string	"S_PLAY_DIE7"
.LASF419:
	.string	"S_POSS_STND"
.LASF1708:
	.string	"P_SpawnGlowingLight"
.LASF375:
	.string	"S_TFOG"
.LASF47:
	.string	"_IO_wide_data"
.LASF1313:
	.string	"MT_MISC41"
.LASF1413:
	.string	"subsector_s"
.LASF735:
	.string	"S_SARG_DIE1"
.LASF736:
	.string	"S_SARG_DIE2"
.LASF737:
	.string	"S_SARG_DIE3"
.LASF738:
	.string	"S_SARG_DIE4"
.LASF1036:
	.string	"S_SPAWNFIRE1"
.LASF1037:
	.string	"S_SPAWNFIRE2"
.LASF1038:
	.string	"S_SPAWNFIRE3"
.LASF1039:
	.string	"S_SPAWNFIRE4"
.LASF1040:
	.string	"S_SPAWNFIRE5"
.LASF1041:
	.string	"S_SPAWNFIRE6"
.LASF1042:
	.string	"S_SPAWNFIRE7"
.LASF1043:
	.string	"S_SPAWNFIRE8"
.LASF707:
	.string	"S_TROO_XDIE1"
.LASF1453:
	.string	"consistancy"
.LASF1414:
	.string	"sector"
.LASF1200:
	.string	"S_HANGTNOBRAIN"
.LASF355:
	.string	"S_PLASEXP2"
.LASF356:
	.string	"S_PLASEXP3"
.LASF357:
	.string	"S_PLASEXP4"
.LASF358:
	.string	"S_PLASEXP5"
.LASF61:
	.string	"wp_bfg"
.LASF1184:
	.string	"S_BTORCHSHRT2"
.LASF1185:
	.string	"S_BTORCHSHRT3"
.LASF1186:
	.string	"S_BTORCHSHRT4"
.LASF1552:
	.string	"fastCrushAndRaise"
.LASF1654:
	.string	"sfx_kntdth"
.LASF488:
	.string	"S_VILE_RUN1"
.LASF278:
	.string	"S_DSGUNDOWN"
.LASF490:
	.string	"S_VILE_RUN3"
.LASF491:
	.string	"S_VILE_RUN4"
.LASF492:
	.string	"S_VILE_RUN5"
.LASF493:
	.string	"S_VILE_RUN6"
.LASF494:
	.string	"S_VILE_RUN7"
.LASF495:
	.string	"S_VILE_RUN8"
.LASF496:
	.string	"S_VILE_RUN9"
.LASF739:
	.string	"S_SARG_DIE5"
.LASF740:
	.string	"S_SARG_DIE6"
.LASF1646:
	.string	"sfx_sgtdth"
.LASF1391:
	.string	"thinker"
.LASF1676:
	.string	"sfx_bospit"
.LASF580:
	.string	"S_SKEL_FIST1"
.LASF581:
	.string	"S_SKEL_FIST2"
.LASF582:
	.string	"S_SKEL_FIST3"
.LASF583:
	.string	"S_SKEL_FIST4"
.LASF319:
	.string	"S_PLASMA"
.LASF1098:
	.string	"S_PINS"
.LASF1767:
	.string	"getSector"
.LASF1727:
	.string	"EV_LightTurnOn"
.LASF1579:
	.string	"texture"
.LASF1611:
	.string	"sfx_mnpain"
.LASF1508:
	.string	"sectors"
.LASF1171:
	.string	"S_BLUETORCH"
.LASF1773:
	.string	"P_InitPicAnims"
.LASF609:
	.string	"S_FATT_RUN1"
.LASF610:
	.string	"S_FATT_RUN2"
.LASF611:
	.string	"S_FATT_RUN3"
.LASF612:
	.string	"S_FATT_RUN4"
.LASF76:
	.string	"pw_ironfeet"
.LASF614:
	.string	"S_FATT_RUN6"
.LASF615:
	.string	"S_FATT_RUN7"
.LASF616:
	.string	"S_FATT_RUN8"
.LASF1147:
	.string	"S_MEAT2"
.LASF1148:
	.string	"S_MEAT3"
.LASF41:
	.string	"__pad5"
.LASF1150:
	.string	"S_MEAT5"
.LASF1632:
	.string	"sfx_pesit"
.LASF262:
	.string	"S_PISTOLFLASH"
.LASF1472:
	.string	"floorheight"
.LASF482:
	.string	"S_SPOS_RAISE2"
.LASF483:
	.string	"S_SPOS_RAISE3"
.LASF484:
	.string	"S_SPOS_RAISE4"
.LASF485:
	.string	"S_SPOS_RAISE5"
.LASF174:
	.string	"SPR_MEDI"
.LASF176:
	.string	"SPR_PINV"
.LASF1621:
	.string	"sfx_bgsit1"
.LASF1622:
	.string	"sfx_bgsit2"
.LASF1656:
	.string	"sfx_skedth"
.LASF1548:
	.string	"lowerToFloor"
.LASF1024:
	.string	"S_BRAIN_PAIN"
.LASF295:
	.string	"S_CHAINDOWN"
.LASF1706:
	.string	"P_SpawnDoorRaiseIn5Mins"
.LASF1763:
	.string	"P_FindHighestFloorSurrounding"
.LASF514:
	.string	"S_VILE_PAIN"
.LASF1505:
	.string	"flattranslation"
.LASF561:
	.string	"S_TRACER"
.LASF27:
	.string	"_markers"
.LASF981:
	.string	"S_SSWV_ATK1"
.LASF982:
	.string	"S_SSWV_ATK2"
.LASF511:
	.string	"S_VILE_HEAL1"
.LASF512:
	.string	"S_VILE_HEAL2"
.LASF513:
	.string	"S_VILE_HEAL3"
.LASF986:
	.string	"S_SSWV_ATK6"
.LASF1406:
	.string	"movecount"
.LASF168:
	.string	"SPR_RKEY"
.LASF1628:
	.string	"sfx_bspsit"
.LASF1132:
	.string	"S_STALAG"
.LASF1715:
	.string	"Z_Malloc"
.LASF1609:
	.string	"sfx_popain"
.LASF847:
	.string	"S_SPID_STND2"
.LASF1695:
	.string	"numpics"
.LASF91:
	.string	"angle_t"
.LASF37:
	.string	"_codecvt"
.LASF1475:
	.string	"ceilingpic"
.LASF1133:
	.string	"S_BLOODYTWITCH"
.LASF1202:
	.string	"S_SMALLPOOL"
.LASF1389:
	.string	"pspdef_t"
.LASF1328:
	.string	"MT_MISC56"
.LASF631:
	.string	"S_FATT_PAIN"
.LASF1526:
	.string	"downWaitUpStay"
.LASF1570:
	.string	"raiseFloorCrush"
.LASF395:
	.string	"S_PLAY_RUN1"
.LASF396:
	.string	"S_PLAY_RUN2"
.LASF397:
	.string	"S_PLAY_RUN3"
.LASF398:
	.string	"S_PLAY_RUN4"
.LASF1123:
	.string	"S_BPAK"
.LASF90:
	.string	"double"
.LASF163:
	.string	"SPR_BEXP"
.LASF1417:
	.string	"player_s"
.LASF1080:
	.string	"S_BSKULL2"
.LASF122:
	.string	"SPR_PUFF"
.LASF1009:
	.string	"S_COMMKEEN"
.LASF1600:
	.string	"sfx_pstart"
.LASF1434:
	.string	"usedown"
.LASF1748:
	.string	"thing"
.LASF801:
	.string	"S_BOS2_STND"
.LASF128:
	.string	"SPR_BFS1"
.LASF1032:
	.string	"S_SPAWN1"
.LASF1033:
	.string	"S_SPAWN2"
.LASF1034:
	.string	"S_SPAWN3"
.LASF1035:
	.string	"S_SPAWN4"
.LASF1205:
	.string	"S_TECHLAMP2"
.LASF1206:
	.string	"S_TECHLAMP3"
.LASF62:
	.string	"wp_chainsaw"
.LASF1242:
	.string	"MT_BABY"
.LASF1432:
	.string	"maxammo"
.LASF1673:
	.string	"sfx_flame"
.LASF1146:
	.string	"S_LIVESTICK2"
.LASF1191:
	.string	"S_RTORCHSHRT"
.LASF1288:
	.string	"MT_MISC19"
.LASF150:
	.string	"SPR_SPID"
.LASF747:
	.string	"S_HEAD_STND"
.LASF1750:
	.string	"linenum"
.LASF722:
	.string	"S_SARG_RUN1"
.LASF723:
	.string	"S_SARG_RUN2"
.LASF725:
	.string	"S_SARG_RUN4"
.LASF726:
	.string	"S_SARG_RUN5"
.LASF727:
	.string	"S_SARG_RUN6"
.LASF728:
	.string	"S_SARG_RUN7"
.LASF729:
	.string	"S_SARG_RUN8"
.LASF1266:
	.string	"MT_MISC1"
.LASF1267:
	.string	"MT_MISC2"
.LASF1268:
	.string	"MT_MISC3"
.LASF1269:
	.string	"MT_MISC4"
.LASF1270:
	.string	"MT_MISC5"
.LASF1271:
	.string	"MT_MISC6"
.LASF1272:
	.string	"MT_MISC7"
.LASF1273:
	.string	"MT_MISC8"
.LASF1274:
	.string	"MT_MISC9"
.LASF312:
	.string	"S_SAW"
.LASF179:
	.string	"SPR_MEGA"
.LASF401:
	.string	"S_PLAY_PAIN"
.LASF1637:
	.string	"sfx_claw"
.LASF353:
	.string	"S_PLASBALL2"
.LASF1386:
	.string	"ps_flash"
.LASF1418:
	.string	"playerstate"
.LASF157:
	.string	"SPR_KEEN"
.LASF987:
	.string	"S_SSWV_PAIN"
.LASF1368:
	.string	"painstate"
.LASF1022:
	.string	"S_KEENPAIN2"
.LASF78:
	.string	"pw_infrared"
.LASF509:
	.string	"S_VILE_ATK10"
.LASF510:
	.string	"S_VILE_ATK11"
.LASF988:
	.string	"S_SSWV_PAIN2"
.LASF1352:
	.string	"MT_MISC80"
.LASF1375:
	.string	"deathsound"
.LASF1062:
	.string	"S_BON1A"
.LASF1063:
	.string	"S_BON1B"
.LASF1064:
	.string	"S_BON1C"
.LASF1065:
	.string	"S_BON1D"
.LASF1066:
	.string	"S_BON1E"
.LASF1468:
	.string	"leveltime"
.LASF1492:
	.string	"sector_t"
.LASF177:
	.string	"SPR_PSTR"
.LASF1290:
	.string	"MT_MISC21"
.LASF1539:
	.string	"normal"
.LASF733:
	.string	"S_SARG_PAIN"
.LASF166:
	.string	"SPR_BON2"
.LASF1285:
	.string	"MT_CLIP"
.LASF1701:
	.string	"lastanim"
.LASF192:
	.string	"SPR_BFUG"
.LASF1340:
	.string	"MT_MISC68"
.LASF1058:
	.string	"S_BBAR1"
.LASF1059:
	.string	"S_BBAR2"
.LASF1060:
	.string	"S_BBAR3"
.LASF246:
	.string	"S_LIGHTDONE"
.LASF897:
	.string	"S_BSPI_PAIN2"
.LASF1426:
	.string	"backpack"
.LASF697:
	.string	"S_TROO_ATK1"
.LASF698:
	.string	"S_TROO_ATK2"
.LASF699:
	.string	"S_TROO_ATK3"
.LASF841:
	.string	"S_SKULL_DIE2"
.LASF842:
	.string	"S_SKULL_DIE3"
.LASF843:
	.string	"S_SKULL_DIE4"
.LASF844:
	.string	"S_SKULL_DIE5"
.LASF845:
	.string	"S_SKULL_DIE6"
.LASF196:
	.string	"SPR_PLAS"
.LASF1068:
	.string	"S_BON2A"
.LASF1069:
	.string	"S_BON2B"
.LASF109:
	.string	"SPR_PISF"
.LASF108:
	.string	"SPR_PISG"
.LASF1072:
	.string	"S_BON2E"
.LASF1295:
	.string	"MT_CHAINGUN"
.LASF1565:
	.string	"raiseFloorToNearest"
.LASF344:
	.string	"S_TBALLX1"
.LASF345:
	.string	"S_TBALLX2"
.LASF346:
	.string	"S_TBALLX3"
.LASF65:
	.string	"wp_nochange"
.LASF407:
	.string	"S_PLAY_DIE5"
.LASF1232:
	.string	"MT_CHAINGUY"
.LASF1471:
	.string	"degenmobj_t"
.LASF1619:
	.string	"sfx_posit2"
.LASF1104:
	.string	"S_MEGA3"
.LASF1732:
	.string	"EV_DoDoor"
.LASF840:
	.string	"S_SKULL_DIE1"
.LASF1458:
	.string	"PST_DEAD"
.LASF1203:
	.string	"S_BRAINSTEM"
.LASF1008:
	.string	"S_KEENSTND"
.LASF133:
	.string	"SPR_PLAY"
.LASF40:
	.string	"_freeres_buf"
.LASF1428:
	.string	"readyweapon"
.LASF1624:
	.string	"sfx_cacsit"
.LASF1633:
	.string	"sfx_sklatk"
.LASF14:
	.string	"long long unsigned int"
.LASF1143:
	.string	"S_HEADCANDLES2"
.LASF1262:
	.string	"MT_IFOG"
.LASF32:
	.string	"_cur_column"
.LASF1575:
	.string	"build8"
.LASF224:
	.string	"SPR_FSKU"
.LASF1679:
	.string	"sfx_bospn"
.LASF459:
	.string	"S_SPOS_RUN6"
.LASF1576:
	.string	"turbo16"
.LASF315:
	.string	"S_SAWUP"
.LASF1048:
	.string	"S_ARM1A"
.LASF651:
	.string	"S_CPOS_STND"
.LASF1303:
	.string	"MT_MISC31"
.LASF1401:
	.string	"momz"
.LASF1122:
	.string	"S_SBOX"
.LASF1478:
	.string	"soundtraversed"
.LASF1306:
	.string	"MT_MISC34"
.LASF1488:
	.string	"bbox"
.LASF354:
	.string	"S_PLASEXP"
.LASF1309:
	.string	"MT_MISC37"
.LASF1613:
	.string	"sfx_slop"
.LASF1546:
	.string	"blazeClose"
.LASF1138:
	.string	"S_DEADBOTTOM"
.LASF1670:
	.string	"sfx_bdopn"
.LASF1195:
	.string	"S_HANGNOGUTS"
.LASF209:
	.string	"SPR_GOR3"
.LASF1367:
	.string	"attacksound"
.LASF1099:
	.string	"S_PINS2"
.LASF1100:
	.string	"S_PINS3"
.LASF1101:
	.string	"S_PINS4"
.LASF953:
	.string	"S_PAIN_ATK1"
.LASF954:
	.string	"S_PAIN_ATK2"
.LASF955:
	.string	"S_PAIN_ATK3"
.LASF956:
	.string	"S_PAIN_ATK4"
.LASF265:
	.string	"S_SGUNUP"
.LASF1490:
	.string	"frontsector"
.LASF218:
	.string	"SPR_CBRA"
.LASF1373:
	.string	"deathstate"
.LASF1050:
	.string	"S_ARM2A"
.LASF919:
	.string	"S_CYBER_STND"
.LASF1768:
	.string	"currentSector"
.LASF1078:
	.string	"S_YKEY2"
.LASF528:
	.string	"S_FIRE3"
.LASF1366:
	.string	"reactiontime"
.LASF25:
	.string	"_IO_backup_base"
.LASF533:
	.string	"S_FIRE8"
.LASF773:
	.string	"S_BOSS_STND2"
.LASF1663:
	.string	"sfx_noway"
.LASF16:
	.string	"_IO_read_ptr"
.LASF1393:
	.string	"sprev"
.LASF316:
	.string	"S_SAW1"
.LASF317:
	.string	"S_SAW2"
.LASF318:
	.string	"S_SAW3"
.LASF1061:
	.string	"S_BON1"
.LASF1067:
	.string	"S_BON2"
.LASF1409:
	.string	"player"
.LASF313:
	.string	"S_SAWB"
.LASF701:
	.string	"S_TROO_PAIN2"
.LASF39:
	.string	"_freeres_list"
.LASF1248:
	.string	"MT_BOSSSPIT"
.LASF526:
	.string	"S_FIRE1"
.LASF527:
	.string	"S_FIRE2"
.LASF88:
	.string	"fixed_t"
.LASF529:
	.string	"S_FIRE4"
.LASF530:
	.string	"S_FIRE5"
.LASF531:
	.string	"S_FIRE6"
.LASF532:
	.string	"S_FIRE7"
.LASF186:
	.string	"SPR_BROK"
.LASF534:
	.string	"S_FIRE9"
.LASF1316:
	.string	"MT_MISC44"
.LASF1317:
	.string	"MT_MISC45"
.LASF1119:
	.string	"S_CELL"
.LASF1319:
	.string	"MT_MISC47"
.LASF184:
	.string	"SPR_AMMO"
.LASF1320:
	.string	"MT_MISC48"
.LASF1321:
	.string	"MT_MISC49"
.LASF832:
	.string	"S_SKULL_RUN1"
.LASF833:
	.string	"S_SKULL_RUN2"
.LASF1199:
	.string	"S_HANGTLOOKUP"
.LASF1557:
	.string	"direction"
.LASF294:
	.string	"S_CHAIN"
.LASF1752:
	.string	"EV_DoDonut"
.LASF324:
	.string	"S_PLASMAFLASH1"
.LASF280:
	.string	"S_DSGUN1"
.LASF281:
	.string	"S_DSGUN2"
.LASF175:
	.string	"SPR_SOUL"
.LASF135:
	.string	"SPR_SPOS"
.LASF284:
	.string	"S_DSGUN5"
.LASF285:
	.string	"S_DSGUN6"
.LASF286:
	.string	"S_DSGUN7"
.LASF287:
	.string	"S_DSGUN8"
.LASF288:
	.string	"S_DSGUN9"
.LASF452:
	.string	"S_SPOS_STND"
.LASF155:
	.string	"SPR_PAIN"
.LASF680:
	.string	"S_CPOS_RAISE1"
.LASF1427:
	.string	"frags"
.LASF1653:
	.string	"sfx_vildth"
.LASF31:
	.string	"_old_offset"
.LASF1422:
	.string	"armorpoints"
.LASF1455:
	.string	"buttons"
.LASF1517:
	.string	"btexture"
.LASF329:
	.string	"S_BFG1"
.LASF330:
	.string	"S_BFG2"
.LASF331:
	.string	"S_BFG3"
.LASF332:
	.string	"S_BFG4"
.LASF1734:
	.string	"R_FlatNumForName"
.LASF1523:
	.string	"in_stasis"
.LASF244:
	.string	"spritenum_t"
.LASF291:
	.string	"S_DSNR2"
.LASF831:
	.string	"S_SKULL_STND2"
.LASF1094:
	.string	"S_PINV2"
.LASF1095:
	.string	"S_PINV3"
.LASF724:
	.string	"S_SARG_RUN3"
.LASF1209:
	.string	"S_TECH2LAMP2"
.LASF1210:
	.string	"S_TECH2LAMP3"
.LASF1211:
	.string	"S_TECH2LAMP4"
.LASF1486:
	.string	"line_s"
.LASF5:
	.string	"long long int"
.LASF107:
	.string	"SPR_PUNG"
.LASF675:
	.string	"S_CPOS_XDIE2"
.LASF676:
	.string	"S_CPOS_XDIE3"
.LASF677:
	.string	"S_CPOS_XDIE4"
.LASF678:
	.string	"S_CPOS_XDIE5"
.LASF679:
	.string	"S_CPOS_XDIE6"
.LASF860:
	.string	"S_SPID_ATK1"
.LASF861:
	.string	"S_SPID_ATK2"
.LASF862:
	.string	"S_SPID_ATK3"
.LASF30:
	.string	"_flags2"
.LASF584:
	.string	"S_SKEL_MISS1"
.LASF585:
	.string	"S_SKEL_MISS2"
.LASF586:
	.string	"S_SKEL_MISS3"
.LASF587:
	.string	"S_SKEL_MISS4"
.LASF341:
	.string	"S_PUFF4"
.LASF1081:
	.string	"S_RSKULL"
.LASF913:
	.string	"S_ARACH_PLAZ2"
.LASF1322:
	.string	"MT_MISC50"
.LASF761:
	.string	"S_HEAD_RAISE1"
.LASF1357:
	.string	"MT_MISC85"
.LASF762:
	.string	"S_HEAD_RAISE2"
.LASF763:
	.string	"S_HEAD_RAISE3"
.LASF1435:
	.string	"cheats"
.LASF170:
	.string	"SPR_BSKU"
.LASF765:
	.string	"S_HEAD_RAISE5"
.LASF766:
	.string	"S_HEAD_RAISE6"
.LASF1716:
	.string	"memset"
.LASF1563:
	.string	"turboLower"
.LASF1760:
	.string	"P_FindNextHighestFloor"
.LASF1300:
	.string	"MT_SUPERSHOTGUN"
.LASF181:
	.string	"SPR_PMAP"
.LASF1029:
	.string	"S_BRAINEYE"
.LASF1536:
	.string	"crush"
.LASF182:
	.string	"SPR_PVIS"
.LASF1457:
	.string	"PST_LIVE"
.LASF1258:
	.string	"MT_ARACHPLAZ"
.LASF507:
	.string	"S_VILE_ATK8"
.LASF448:
	.string	"S_POSS_RAISE1"
.LASF449:
	.string	"S_POSS_RAISE2"
.LASF450:
	.string	"S_POSS_RAISE3"
.LASF451:
	.string	"S_POSS_RAISE4"
.LASF303:
	.string	"S_MISSILEDOWN"
.LASF1571:
	.string	"raiseFloorTurbo"
.LASF1664:
	.string	"sfx_barexp"
.LASF1167:
	.string	"S_FLOATSKULL2"
.LASF1168:
	.string	"S_FLOATSKULL3"
.LASF1587:
	.string	"sfx_dbopn"
.LASF1580:
	.string	"floordestheight"
.LASF1102:
	.string	"S_MEGA"
.LASF782:
	.string	"S_BOSS_ATK1"
.LASF783:
	.string	"S_BOSS_ATK2"
.LASF784:
	.string	"S_BOSS_ATK3"
.LASF1396:
	.string	"subsector"
.LASF240:
	.string	"SPR_BRS1"
.LASF1743:
	.string	"P_SpawnSpecials"
.LASF1470:
	.string	"vertex_t"
.LASF589:
	.string	"S_SKEL_PAIN2"
.LASF1126:
	.string	"S_CSAW"
.LASF1764:
	.string	"P_FindLowestFloorSurrounding"
.LASF73:
	.string	"pw_invulnerability"
.LASF769:
	.string	"S_BRBALLX1"
.LASF770:
	.string	"S_BRBALLX2"
.LASF771:
	.string	"S_BRBALLX3"
.LASF899:
	.string	"S_BSPI_DIE2"
.LASF900:
	.string	"S_BSPI_DIE3"
.LASF901:
	.string	"S_BSPI_DIE4"
.LASF902:
	.string	"S_BSPI_DIE5"
.LASF58:
	.string	"wp_chaingun"
.LASF904:
	.string	"S_BSPI_DIE7"
.LASF828:
	.string	"S_BOS2_RAISE6"
.LASF455:
	.string	"S_SPOS_RUN2"
.LASF1491:
	.string	"backsector"
.LASF456:
	.string	"S_SPOS_RUN3"
.LASF958:
	.string	"S_PAIN_PAIN2"
.LASF593:
	.string	"S_SKEL_DIE4"
.LASF1583:
	.string	"sfx_pistol"
.LASF189:
	.string	"SPR_SHEL"
.LASF1341:
	.string	"MT_MISC69"
.LASF1423:
	.string	"armortype"
.LASF80:
	.string	"false"
.LASF241:
	.string	"SPR_TLMP"
.LASF420:
	.string	"S_POSS_STND2"
.LASF1299:
	.string	"MT_SHOTGUN"
.LASF1723:
	.string	"G_SecretExitLevel"
.LASF1224:
	.string	"MT_SHOTGUY"
.LASF1438:
	.string	"itemcount"
.LASF1204:
	.string	"S_TECHLAMP"
.LASF1245:
	.string	"MT_WOLFSS"
.LASF1603:
	.string	"sfx_dorcls"
.LASF1736:
	.string	"R_TextureNumForName"
.LASF802:
	.string	"S_BOS2_STND2"
.LASF1479:
	.string	"soundtarget"
.LASF297:
	.string	"S_CHAIN1"
.LASF298:
	.string	"S_CHAIN2"
.LASF299:
	.string	"S_CHAIN3"
.LASF350:
	.string	"S_RBALLX2"
.LASF351:
	.string	"S_RBALLX3"
.LASF226:
	.string	"SPR_TBLU"
.LASF453:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1720:
	.string	"EV_TurnTagLightsOff"
.LASF1584:
	.string	"sfx_shotgn"
.LASF1392:
	.string	"snext"
.LASF72:
	.string	"am_noammo"
.LASF100:
	.string	"thinker_s"
.LASF104:
	.string	"thinker_t"
.LASF1644:
	.string	"sfx_bgdth1"
.LASF1645:
	.string	"sfx_bgdth2"
.LASF429:
	.string	"S_POSS_ATK1"
.LASF430:
	.string	"S_POSS_ATK2"
.LASF431:
	.string	"S_POSS_ATK3"
.LASF1751:
	.string	"side"
.LASF1343:
	.string	"MT_MISC71"
.LASF1192:
	.string	"S_RTORCHSHRT2"
.LASF1193:
	.string	"S_RTORCHSHRT3"
.LASF863:
	.string	"S_SPID_ATK4"
.LASF1096:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF880:
	.string	"S_BSPI_RUN1"
.LASF1572:
	.string	"donutRaise"
.LASF1349:
	.string	"MT_MISC77"
.LASF1350:
	.string	"MT_MISC78"
.LASF1351:
	.string	"MT_MISC79"
.LASF1240:
	.string	"MT_SKULL"
.LASF1227:
	.string	"MT_UNDEAD"
.LASF101:
	.string	"prev"
.LASF33:
	.string	"_vtable_offset"
.LASF590:
	.string	"S_SKEL_DIE1"
.LASF591:
	.string	"S_SKEL_DIE2"
.LASF592:
	.string	"S_SKEL_DIE3"
.LASF137:
	.string	"SPR_FIRE"
.LASF594:
	.string	"S_SKEL_DIE5"
.LASF595:
	.string	"S_SKEL_DIE6"
.LASF1201:
	.string	"S_COLONGIBS"
.LASF1567:
	.string	"lowerAndChange"
.LASF242:
	.string	"SPR_TLP2"
.LASF352:
	.string	"S_PLASBALL"
.LASF1640:
	.string	"sfx_pdiehi"
.LASF198:
	.string	"SPR_SGN2"
.LASF86:
	.string	"options"
.LASF151:
	.string	"SPR_BSPI"
.LASF153:
	.string	"SPR_APBX"
.LASF1446:
	.string	"colormap"
.LASF1275:
	.string	"MT_MISC10"
.LASF1276:
	.string	"MT_MISC11"
.LASF1277:
	.string	"MT_MISC12"
.LASF1279:
	.string	"MT_MISC13"
.LASF1281:
	.string	"MT_MISC14"
.LASF1282:
	.string	"MT_MISC15"
.LASF1283:
	.string	"MT_MISC16"
.LASF1286:
	.string	"MT_MISC17"
.LASF1287:
	.string	"MT_MISC18"
.LASF1115:
	.string	"S_CLIP"
.LASF1377:
	.string	"radius"
.LASF1404:
	.string	"health"
.LASF1249:
	.string	"MT_BOSSTARGET"
.LASF1629:
	.string	"sfx_kntsit"
.LASF1699:
	.string	"animdef_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_spec.c"
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
