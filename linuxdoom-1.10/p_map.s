	.file	"p_map.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_map.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 48
rcsid:
	.string	"$Id: p_map.c,v 1.5 1997/02/03 22:45:11 b1 Exp $"
	.globl	tmbbox
	.bss
	.align 16
	.type	tmbbox, @object
	.size	tmbbox, 16
tmbbox:
	.zero	16
	.globl	tmthing
	.align 8
	.type	tmthing, @object
	.size	tmthing, 8
tmthing:
	.zero	8
	.globl	tmflags
	.align 4
	.type	tmflags, @object
	.size	tmflags, 4
tmflags:
	.zero	4
	.globl	tmx
	.align 4
	.type	tmx, @object
	.size	tmx, 4
tmx:
	.zero	4
	.globl	tmy
	.align 4
	.type	tmy, @object
	.size	tmy, 4
tmy:
	.zero	4
	.globl	floatok
	.align 4
	.type	floatok, @object
	.size	floatok, 4
floatok:
	.zero	4
	.globl	tmfloorz
	.align 4
	.type	tmfloorz, @object
	.size	tmfloorz, 4
tmfloorz:
	.zero	4
	.globl	tmceilingz
	.align 4
	.type	tmceilingz, @object
	.size	tmceilingz, 4
tmceilingz:
	.zero	4
	.globl	tmdropoffz
	.align 4
	.type	tmdropoffz, @object
	.size	tmdropoffz, 4
tmdropoffz:
	.zero	4
	.globl	ceilingline
	.align 8
	.type	ceilingline, @object
	.size	ceilingline, 8
ceilingline:
	.zero	8
	.globl	spechit
	.align 32
	.type	spechit, @object
	.size	spechit, 64
spechit:
	.zero	64
	.globl	numspechit
	.align 4
	.type	numspechit, @object
	.size	numspechit, 4
numspechit:
	.zero	4
	.text
	.globl	PIT_StompThing
	.type	PIT_StompThing, @function
PIT_StompThing:
.LFB6:
	.file 1 "p_map.c"
	.loc 1 82 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# thing, thing
# p_map.c:85:     if (!(thing->flags & MF_SHOOTABLE) )
	.loc 1 85 16
	movq	-24(%rbp), %rax	# thing, tmp103
	movl	160(%rax), %eax	# thing_23(D)->flags, _1
# p_map.c:85:     if (!(thing->flags & MF_SHOOTABLE) )
	.loc 1 85 24
	andl	$4, %eax	#, _2
# p_map.c:85:     if (!(thing->flags & MF_SHOOTABLE) )
	.loc 1 85 8
	testl	%eax, %eax	# _2
	jne	.L2	#,
# p_map.c:86: 	return true;
	.loc 1 86 9
	movl	$1, %eax	#, _20
	jmp	.L3	#
.L2:
# p_map.c:88:     blockdist = thing->radius + tmthing->radius;
	.loc 1 88 22
	movq	-24(%rbp), %rax	# thing, tmp104
	movl	104(%rax), %edx	# thing_23(D)->radius, _3
# p_map.c:88:     blockdist = thing->radius + tmthing->radius;
	.loc 1 88 40
	movq	tmthing(%rip), %rax	# tmthing, tmthing.0_4
	movl	104(%rax), %eax	# tmthing.0_4->radius, _5
# p_map.c:88:     blockdist = thing->radius + tmthing->radius;
	.loc 1 88 15
	addl	%edx, %eax	# _3, tmp105
	movl	%eax, -4(%rbp)	# tmp105, blockdist
# p_map.c:90:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 90 19
	movq	-24(%rbp), %rax	# thing, tmp106
	movl	24(%rax), %eax	# thing_23(D)->x, _6
# p_map.c:90:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 90 10
	movl	tmx(%rip), %edx	# tmx, tmx.1_7
# p_map.c:90:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 90 23
	subl	%edx, %eax	# tmx.1_7, _8
# p_map.c:90:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 90 10
	movl	%eax, %edx	# _8, tmp111
	negl	%edx	# tmp111
	cmovns	%edx, %eax	# tmp111,, _9
# p_map.c:90:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 90 8
	cmpl	%eax, -4(%rbp)	# _9, blockdist
	jle	.L4	#,
# p_map.c:91: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 91 15
	movq	-24(%rbp), %rax	# thing, tmp107
	movl	28(%rax), %eax	# thing_23(D)->y, _10
# p_map.c:91: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 91 6
	movl	tmy(%rip), %edx	# tmy, tmy.2_11
# p_map.c:91: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 91 19
	subl	%edx, %eax	# tmy.2_11, _12
# p_map.c:91: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 91 6
	movl	%eax, %edx	# _12, tmp110
	negl	%edx	# tmp110
	cmovns	%edx, %eax	# tmp110,, _13
# p_map.c:91: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 91 3
	cmpl	%eax, -4(%rbp)	# _13, blockdist
	jg	.L5	#,
.L4:
# p_map.c:94: 	return true;
	.loc 1 94 9
	movl	$1, %eax	#, _20
	jmp	.L3	#
.L5:
# p_map.c:98:     if (thing == tmthing)
	.loc 1 98 15
	movq	tmthing(%rip), %rax	# tmthing, tmthing.3_14
# p_map.c:98:     if (thing == tmthing)
	.loc 1 98 8
	cmpq	%rax, -24(%rbp)	# tmthing.3_14, thing
	jne	.L6	#,
# p_map.c:99: 	return true;
	.loc 1 99 9
	movl	$1, %eax	#, _20
	jmp	.L3	#
.L6:
# p_map.c:102:     if ( !tmthing->player && gamemap != 30)
	.loc 1 102 18
	movq	tmthing(%rip), %rax	# tmthing, tmthing.4_15
	movq	192(%rax), %rax	# tmthing.4_15->player, _16
# p_map.c:102:     if ( !tmthing->player && gamemap != 30)
	.loc 1 102 8
	testq	%rax, %rax	# _16
	jne	.L7	#,
# p_map.c:102:     if ( !tmthing->player && gamemap != 30)
	.loc 1 102 38 discriminator 1
	movl	gamemap(%rip), %eax	# gamemap, gamemap.5_17
# p_map.c:102:     if ( !tmthing->player && gamemap != 30)
	.loc 1 102 27 discriminator 1
	cmpl	$30, %eax	#, gamemap.5_17
	je	.L7	#,
# p_map.c:103: 	return false;	
	.loc 1 103 9
	movl	$0, %eax	#, _20
	jmp	.L3	#
.L7:
# p_map.c:105:     P_DamageMobj (thing, tmthing, tmthing, 10000);
	.loc 1 105 5
	movq	tmthing(%rip), %rdx	# tmthing, tmthing.6_18
	movq	tmthing(%rip), %rsi	# tmthing, tmthing.7_19
	movq	-24(%rbp), %rax	# thing, tmp108
	movl	$10000, %ecx	#,
	movq	%rax, %rdi	# tmp108,
	call	P_DamageMobj@PLT	#
# p_map.c:107:     return true;
	.loc 1 107 12
	movl	$1, %eax	#, _20
.L3:
# p_map.c:108: }
	.loc 1 108 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	PIT_StompThing, .-PIT_StompThing
	.globl	P_TeleportMove
	.type	P_TeleportMove, @function
P_TeleportMove:
.LFB7:
	.loc 1 119 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# thing, thing
	movl	%esi, -44(%rbp)	# x, x
	movl	%edx, -48(%rbp)	# y, y
# p_map.c:130:     tmthing = thing;
	.loc 1 130 13
	movq	-40(%rbp), %rax	# thing, tmp123
	movq	%rax, tmthing(%rip)	# tmp123, tmthing
# p_map.c:131:     tmflags = thing->flags;
	.loc 1 131 20
	movq	-40(%rbp), %rax	# thing, tmp124
	movl	160(%rax), %eax	# thing_47(D)->flags, _1
# p_map.c:131:     tmflags = thing->flags;
	.loc 1 131 13
	movl	%eax, tmflags(%rip)	# _1, tmflags
# p_map.c:133:     tmx = x;
	.loc 1 133 9
	movl	-44(%rbp), %eax	# x, tmp125
	movl	%eax, tmx(%rip)	# tmp125, tmx
# p_map.c:134:     tmy = y;
	.loc 1 134 9
	movl	-48(%rbp), %eax	# y, tmp126
	movl	%eax, tmy(%rip)	# tmp126, tmy
# p_map.c:136:     tmbbox[BOXTOP] = y + tmthing->radius;
	.loc 1 136 33
	movq	tmthing(%rip), %rax	# tmthing, tmthing.8_2
	movl	104(%rax), %edx	# tmthing.8_2->radius, _3
# p_map.c:136:     tmbbox[BOXTOP] = y + tmthing->radius;
	.loc 1 136 24
	movl	-48(%rbp), %eax	# y, tmp127
	addl	%edx, %eax	# _3, _4
# p_map.c:136:     tmbbox[BOXTOP] = y + tmthing->radius;
	.loc 1 136 20
	movl	%eax, tmbbox(%rip)	# _4, tmbbox[0]
# p_map.c:137:     tmbbox[BOXBOTTOM] = y - tmthing->radius;
	.loc 1 137 36
	movq	tmthing(%rip), %rax	# tmthing, tmthing.9_5
	movl	104(%rax), %eax	# tmthing.9_5->radius, _6
# p_map.c:137:     tmbbox[BOXBOTTOM] = y - tmthing->radius;
	.loc 1 137 27
	movl	-48(%rbp), %edx	# y, tmp128
	subl	%eax, %edx	# _6, _7
# p_map.c:137:     tmbbox[BOXBOTTOM] = y - tmthing->radius;
	.loc 1 137 23
	movl	%edx, 4+tmbbox(%rip)	# _7, tmbbox[1]
# p_map.c:138:     tmbbox[BOXRIGHT] = x + tmthing->radius;
	.loc 1 138 35
	movq	tmthing(%rip), %rax	# tmthing, tmthing.10_8
	movl	104(%rax), %edx	# tmthing.10_8->radius, _9
# p_map.c:138:     tmbbox[BOXRIGHT] = x + tmthing->radius;
	.loc 1 138 26
	movl	-44(%rbp), %eax	# x, tmp129
	addl	%edx, %eax	# _9, _10
# p_map.c:138:     tmbbox[BOXRIGHT] = x + tmthing->radius;
	.loc 1 138 22
	movl	%eax, 12+tmbbox(%rip)	# _10, tmbbox[3]
# p_map.c:139:     tmbbox[BOXLEFT] = x - tmthing->radius;
	.loc 1 139 34
	movq	tmthing(%rip), %rax	# tmthing, tmthing.11_11
	movl	104(%rax), %eax	# tmthing.11_11->radius, _12
# p_map.c:139:     tmbbox[BOXLEFT] = x - tmthing->radius;
	.loc 1 139 25
	movl	-44(%rbp), %edx	# x, tmp130
	subl	%eax, %edx	# _12, _13
# p_map.c:139:     tmbbox[BOXLEFT] = x - tmthing->radius;
	.loc 1 139 21
	movl	%edx, 8+tmbbox(%rip)	# _13, tmbbox[2]
# p_map.c:141:     newsubsec = R_PointInSubsector (x,y);
	.loc 1 141 17
	movl	-48(%rbp), %edx	# y, tmp131
	movl	-44(%rbp), %eax	# x, tmp132
	movl	%edx, %esi	# tmp131,
	movl	%eax, %edi	# tmp132,
	call	R_PointInSubsector@PLT	#
	movq	%rax, -8(%rbp)	# tmp133, newsubsec
# p_map.c:142:     ceilingline = NULL;
	.loc 1 142 17
	movq	$0, ceilingline(%rip)	#, ceilingline
# p_map.c:148:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 148 38
	movq	-8(%rbp), %rax	# newsubsec, tmp134
	movq	(%rax), %rax	# newsubsec_59->sector, _14
# p_map.c:148:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 148 46
	movl	(%rax), %eax	# _14->floorheight, _15
# p_map.c:148:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 148 27
	movl	%eax, tmdropoffz(%rip)	# _15, tmdropoffz
# p_map.c:148:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 148 14
	movl	tmdropoffz(%rip), %eax	# tmdropoffz, tmdropoffz.12_16
	movl	%eax, tmfloorz(%rip)	# tmdropoffz.12_16, tmfloorz
# p_map.c:149:     tmceilingz = newsubsec->sector->ceilingheight;
	.loc 1 149 27
	movq	-8(%rbp), %rax	# newsubsec, tmp135
	movq	(%rax), %rax	# newsubsec_59->sector, _17
# p_map.c:149:     tmceilingz = newsubsec->sector->ceilingheight;
	.loc 1 149 35
	movl	4(%rax), %eax	# _17->ceilingheight, _18
# p_map.c:149:     tmceilingz = newsubsec->sector->ceilingheight;
	.loc 1 149 16
	movl	%eax, tmceilingz(%rip)	# _18, tmceilingz
# p_map.c:151:     validcount++;
	.loc 1 151 15
	movl	validcount(%rip), %eax	# validcount, validcount.13_19
	addl	$1, %eax	#, _20
	movl	%eax, validcount(%rip)	# _20, validcount
# p_map.c:152:     numspechit = 0;
	.loc 1 152 16
	movl	$0, numspechit(%rip)	#, numspechit
# p_map.c:155:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 155 17
	movl	8+tmbbox(%rip), %edx	# tmbbox[2], _21
# p_map.c:155:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 155 27
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.14_22
	subl	%eax, %edx	# bmaporgx.14_22, _23
# p_map.c:155:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 155 38
	leal	-2097152(%rdx), %eax	#, _24
# p_map.c:155:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 155 8
	sarl	$23, %eax	#, tmp136
	movl	%eax, -24(%rbp)	# tmp136, xl
# p_map.c:156:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 156 17
	movl	12+tmbbox(%rip), %edx	# tmbbox[3], _25
# p_map.c:156:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 156 28
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.15_26
	subl	%eax, %edx	# bmaporgx.15_26, _27
# p_map.c:156:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 156 39
	leal	2097152(%rdx), %eax	#, _28
# p_map.c:156:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 156 8
	sarl	$23, %eax	#, tmp137
	movl	%eax, -20(%rbp)	# tmp137, xh
# p_map.c:157:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 157 17
	movl	4+tmbbox(%rip), %edx	# tmbbox[1], _29
# p_map.c:157:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 157 29
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.16_30
	subl	%eax, %edx	# bmaporgy.16_30, _31
# p_map.c:157:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 157 40
	leal	-2097152(%rdx), %eax	#, _32
# p_map.c:157:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 157 8
	sarl	$23, %eax	#, tmp138
	movl	%eax, -16(%rbp)	# tmp138, yl
# p_map.c:158:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 158 17
	movl	tmbbox(%rip), %edx	# tmbbox[0], _33
# p_map.c:158:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 158 26
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.17_34
	subl	%eax, %edx	# bmaporgy.17_34, _35
# p_map.c:158:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 158 37
	leal	2097152(%rdx), %eax	#, _36
# p_map.c:158:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 158 8
	sarl	$23, %eax	#, tmp139
	movl	%eax, -12(%rbp)	# tmp139, yh
# p_map.c:160:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 160 12
	movl	-24(%rbp), %eax	# xl, tmp140
	movl	%eax, -32(%rbp)	# tmp140, bx
# p_map.c:160:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 160 5
	jmp	.L9	#
.L14:
# p_map.c:161: 	for (by=yl ; by<=yh ; by++)
	.loc 1 161 9
	movl	-16(%rbp), %eax	# yl, tmp141
	movl	%eax, -28(%rbp)	# tmp141, by
# p_map.c:161: 	for (by=yl ; by<=yh ; by++)
	.loc 1 161 2
	jmp	.L10	#
.L13:
# p_map.c:162: 	    if (!P_BlockThingsIterator(bx,by,PIT_StompThing))
	.loc 1 162 11
	movl	-28(%rbp), %ecx	# by, tmp142
	movl	-32(%rbp), %eax	# bx, tmp143
	leaq	PIT_StompThing(%rip), %rdx	#, tmp144
	movl	%ecx, %esi	# tmp142,
	movl	%eax, %edi	# tmp143,
	call	P_BlockThingsIterator@PLT	#
# p_map.c:162: 	    if (!P_BlockThingsIterator(bx,by,PIT_StompThing))
	.loc 1 162 9 discriminator 1
	testl	%eax, %eax	# _37
	jne	.L11	#,
# p_map.c:163: 		return false;
	.loc 1 163 10
	movl	$0, %eax	#, _42
	jmp	.L12	#
.L11:
# p_map.c:161: 	for (by=yl ; by<=yh ; by++)
	.loc 1 161 26 discriminator 2
	addl	$1, -28(%rbp)	#, by
.L10:
# p_map.c:161: 	for (by=yl ; by<=yh ; by++)
	.loc 1 161 17 discriminator 1
	movl	-28(%rbp), %eax	# by, tmp145
	cmpl	-12(%rbp), %eax	# yh, tmp145
	jle	.L13	#,
# p_map.c:160:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 160 29 discriminator 2
	addl	$1, -32(%rbp)	#, bx
.L9:
# p_map.c:160:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 160 20 discriminator 1
	movl	-32(%rbp), %eax	# bx, tmp146
	cmpl	-20(%rbp), %eax	# xh, tmp146
	jle	.L14	#,
# p_map.c:167:     P_UnsetThingPosition (thing);
	.loc 1 167 5
	movq	-40(%rbp), %rax	# thing, tmp147
	movq	%rax, %rdi	# tmp147,
	call	P_UnsetThingPosition@PLT	#
# p_map.c:169:     thing->floorz = tmfloorz;
	.loc 1 169 19
	movl	tmfloorz(%rip), %edx	# tmfloorz, tmfloorz.18_38
	movq	-40(%rbp), %rax	# thing, tmp148
	movl	%edx, 96(%rax)	# tmfloorz.18_38, thing_47(D)->floorz
# p_map.c:170:     thing->ceilingz = tmceilingz;	
	.loc 1 170 21
	movl	tmceilingz(%rip), %edx	# tmceilingz, tmceilingz.19_39
	movq	-40(%rbp), %rax	# thing, tmp149
	movl	%edx, 100(%rax)	# tmceilingz.19_39, thing_47(D)->ceilingz
# p_map.c:171:     thing->x = x;
	.loc 1 171 14
	movq	-40(%rbp), %rax	# thing, tmp150
	movl	-44(%rbp), %edx	# x, tmp151
	movl	%edx, 24(%rax)	# tmp151, thing_47(D)->x
# p_map.c:172:     thing->y = y;
	.loc 1 172 14
	movq	-40(%rbp), %rax	# thing, tmp152
	movl	-48(%rbp), %edx	# y, tmp153
	movl	%edx, 28(%rax)	# tmp153, thing_47(D)->y
# p_map.c:174:     P_SetThingPosition (thing);
	.loc 1 174 5
	movq	-40(%rbp), %rax	# thing, tmp154
	movq	%rax, %rdi	# tmp154,
	call	P_SetThingPosition@PLT	#
# p_map.c:176:     return true;
	.loc 1 176 12
	movl	$1, %eax	#, _42
.L12:
# p_map.c:177: }
	.loc 1 177 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	P_TeleportMove, .-P_TeleportMove
	.globl	PIT_CheckLine
	.type	PIT_CheckLine, @function
PIT_CheckLine:
.LFB8:
	.loc 1 190 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ld, ld
# p_map.c:191:     if (tmbbox[BOXRIGHT] <= ld->bbox[BOXLEFT]
	.loc 1 191 15
	movl	12+tmbbox(%rip), %edx	# tmbbox[3], _1
# p_map.c:191:     if (tmbbox[BOXRIGHT] <= ld->bbox[BOXLEFT]
	.loc 1 191 37
	movq	-8(%rbp), %rax	# ld, tmp118
	movl	44(%rax), %eax	# ld_42(D)->bbox[2], _2
# p_map.c:191:     if (tmbbox[BOXRIGHT] <= ld->bbox[BOXLEFT]
	.loc 1 191 8
	cmpl	%eax, %edx	# _2, _1
	jle	.L16	#,
# p_map.c:192: 	|| tmbbox[BOXLEFT] >= ld->bbox[BOXRIGHT]
	.loc 1 192 11
	movl	8+tmbbox(%rip), %edx	# tmbbox[2], _3
# p_map.c:192: 	|| tmbbox[BOXLEFT] >= ld->bbox[BOXRIGHT]
	.loc 1 192 32
	movq	-8(%rbp), %rax	# ld, tmp119
	movl	48(%rax), %eax	# ld_42(D)->bbox[3], _4
# p_map.c:192: 	|| tmbbox[BOXLEFT] >= ld->bbox[BOXRIGHT]
	.loc 1 192 2
	cmpl	%eax, %edx	# _4, _3
	jge	.L16	#,
# p_map.c:193: 	|| tmbbox[BOXTOP] <= ld->bbox[BOXBOTTOM]
	.loc 1 193 11
	movl	tmbbox(%rip), %edx	# tmbbox[0], _5
# p_map.c:193: 	|| tmbbox[BOXTOP] <= ld->bbox[BOXBOTTOM]
	.loc 1 193 31
	movq	-8(%rbp), %rax	# ld, tmp120
	movl	40(%rax), %eax	# ld_42(D)->bbox[1], _6
# p_map.c:193: 	|| tmbbox[BOXTOP] <= ld->bbox[BOXBOTTOM]
	.loc 1 193 2
	cmpl	%eax, %edx	# _6, _5
	jle	.L16	#,
# p_map.c:194: 	|| tmbbox[BOXBOTTOM] >= ld->bbox[BOXTOP] )
	.loc 1 194 11
	movl	4+tmbbox(%rip), %edx	# tmbbox[1], _7
# p_map.c:194: 	|| tmbbox[BOXBOTTOM] >= ld->bbox[BOXTOP] )
	.loc 1 194 34
	movq	-8(%rbp), %rax	# ld, tmp121
	movl	36(%rax), %eax	# ld_42(D)->bbox[0], _8
# p_map.c:194: 	|| tmbbox[BOXBOTTOM] >= ld->bbox[BOXTOP] )
	.loc 1 194 2
	cmpl	%eax, %edx	# _8, _7
	jl	.L17	#,
.L16:
# p_map.c:195: 	return true;
	.loc 1 195 9
	movl	$1, %eax	#, _35
	jmp	.L18	#
.L17:
# p_map.c:197:     if (P_BoxOnLineSide (tmbbox, ld) != -1)
	.loc 1 197 9
	movq	-8(%rbp), %rax	# ld, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	tmbbox(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	P_BoxOnLineSide@PLT	#
# p_map.c:197:     if (P_BoxOnLineSide (tmbbox, ld) != -1)
	.loc 1 197 8 discriminator 1
	cmpl	$-1, %eax	#, _9
	je	.L19	#,
# p_map.c:198: 	return true;
	.loc 1 198 9
	movl	$1, %eax	#, _35
	jmp	.L18	#
.L19:
# p_map.c:211:     if (!ld->backsector)
	.loc 1 211 12
	movq	-8(%rbp), %rax	# ld, tmp124
	movq	64(%rax), %rax	# ld_42(D)->backsector, _10
# p_map.c:211:     if (!ld->backsector)
	.loc 1 211 8
	testq	%rax, %rax	# _10
	jne	.L20	#,
# p_map.c:212: 	return false;		// one sided line
	.loc 1 212 9
	movl	$0, %eax	#, _35
	jmp	.L18	#
.L20:
# p_map.c:214:     if (!(tmthing->flags & MF_MISSILE) )
	.loc 1 214 18
	movq	tmthing(%rip), %rax	# tmthing, tmthing.20_11
	movl	160(%rax), %eax	# tmthing.20_11->flags, _12
# p_map.c:214:     if (!(tmthing->flags & MF_MISSILE) )
	.loc 1 214 26
	andl	$65536, %eax	#, _13
# p_map.c:214:     if (!(tmthing->flags & MF_MISSILE) )
	.loc 1 214 8
	testl	%eax, %eax	# _13
	jne	.L21	#,
# p_map.c:216: 	if ( ld->flags & ML_BLOCKING )
	.loc 1 216 9
	movq	-8(%rbp), %rax	# ld, tmp125
	movzwl	24(%rax), %eax	# ld_42(D)->flags, _14
# p_map.c:216: 	if ( ld->flags & ML_BLOCKING )
	.loc 1 216 17
	cwtl
	andl	$1, %eax	#, _16
# p_map.c:216: 	if ( ld->flags & ML_BLOCKING )
	.loc 1 216 5
	testl	%eax, %eax	# _16
	je	.L22	#,
# p_map.c:217: 	    return false;	// explicitly blocking everything
	.loc 1 217 13
	movl	$0, %eax	#, _35
	jmp	.L18	#
.L22:
# p_map.c:219: 	if ( !tmthing->player && ld->flags & ML_BLOCKMONSTERS )
	.loc 1 219 15
	movq	tmthing(%rip), %rax	# tmthing, tmthing.21_17
	movq	192(%rax), %rax	# tmthing.21_17->player, _18
# p_map.c:219: 	if ( !tmthing->player && ld->flags & ML_BLOCKMONSTERS )
	.loc 1 219 5
	testq	%rax, %rax	# _18
	jne	.L21	#,
# p_map.c:219: 	if ( !tmthing->player && ld->flags & ML_BLOCKMONSTERS )
	.loc 1 219 29 discriminator 1
	movq	-8(%rbp), %rax	# ld, tmp126
	movzwl	24(%rax), %eax	# ld_42(D)->flags, _19
# p_map.c:219: 	if ( !tmthing->player && ld->flags & ML_BLOCKMONSTERS )
	.loc 1 219 37 discriminator 1
	cwtl
	andl	$2, %eax	#, _21
# p_map.c:219: 	if ( !tmthing->player && ld->flags & ML_BLOCKMONSTERS )
	.loc 1 219 24 discriminator 1
	testl	%eax, %eax	# _21
	je	.L21	#,
# p_map.c:220: 	    return false;	// block monsters only
	.loc 1 220 13
	movl	$0, %eax	#, _35
	jmp	.L18	#
.L21:
# p_map.c:224:     P_LineOpening (ld);	
	.loc 1 224 5
	movq	-8(%rbp), %rax	# ld, tmp127
	movq	%rax, %rdi	# tmp127,
	call	P_LineOpening@PLT	#
# p_map.c:227:     if (opentop < tmceilingz)
	.loc 1 227 17
	movl	opentop(%rip), %edx	# opentop, opentop.22_22
	movl	tmceilingz(%rip), %eax	# tmceilingz, tmceilingz.23_23
# p_map.c:227:     if (opentop < tmceilingz)
	.loc 1 227 8
	cmpl	%eax, %edx	# tmceilingz.23_23, opentop.22_22
	jge	.L23	#,
# p_map.c:229: 	tmceilingz = opentop;
	.loc 1 229 13
	movl	opentop(%rip), %eax	# opentop, opentop.24_24
	movl	%eax, tmceilingz(%rip)	# opentop.24_24, tmceilingz
# p_map.c:230: 	ceilingline = ld;
	.loc 1 230 14
	movq	-8(%rbp), %rax	# ld, tmp128
	movq	%rax, ceilingline(%rip)	# tmp128, ceilingline
.L23:
# p_map.c:233:     if (openbottom > tmfloorz)
	.loc 1 233 20
	movl	openbottom(%rip), %edx	# openbottom, openbottom.25_25
	movl	tmfloorz(%rip), %eax	# tmfloorz, tmfloorz.26_26
# p_map.c:233:     if (openbottom > tmfloorz)
	.loc 1 233 8
	cmpl	%eax, %edx	# tmfloorz.26_26, openbottom.25_25
	jle	.L24	#,
# p_map.c:234: 	tmfloorz = openbottom;	
	.loc 1 234 11
	movl	openbottom(%rip), %eax	# openbottom, openbottom.27_27
	movl	%eax, tmfloorz(%rip)	# openbottom.27_27, tmfloorz
.L24:
# p_map.c:236:     if (lowfloor < tmdropoffz)
	.loc 1 236 18
	movl	lowfloor(%rip), %edx	# lowfloor, lowfloor.28_28
	movl	tmdropoffz(%rip), %eax	# tmdropoffz, tmdropoffz.29_29
# p_map.c:236:     if (lowfloor < tmdropoffz)
	.loc 1 236 8
	cmpl	%eax, %edx	# tmdropoffz.29_29, lowfloor.28_28
	jge	.L25	#,
# p_map.c:237: 	tmdropoffz = lowfloor;
	.loc 1 237 13
	movl	lowfloor(%rip), %eax	# lowfloor, lowfloor.30_30
	movl	%eax, tmdropoffz(%rip)	# lowfloor.30_30, tmdropoffz
.L25:
# p_map.c:240:     if (ld->special)
	.loc 1 240 11
	movq	-8(%rbp), %rax	# ld, tmp129
	movzwl	26(%rax), %eax	# ld_42(D)->special, _31
# p_map.c:240:     if (ld->special)
	.loc 1 240 8
	testw	%ax, %ax	# _31
	je	.L26	#,
# p_map.c:242: 	spechit[numspechit] = ld;
	.loc 1 242 9
	movl	numspechit(%rip), %eax	# numspechit, numspechit.31_32
# p_map.c:242: 	spechit[numspechit] = ld;
	.loc 1 242 22
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp131
	leaq	spechit(%rip), %rdx	#, tmp132
	movq	-8(%rbp), %rax	# ld, tmp133
	movq	%rax, (%rcx,%rdx)	# tmp133, spechit[numspechit.31_32]
# p_map.c:243: 	numspechit++;
	.loc 1 243 12
	movl	numspechit(%rip), %eax	# numspechit, numspechit.32_33
	addl	$1, %eax	#, _34
	movl	%eax, numspechit(%rip)	# _34, numspechit
.L26:
# p_map.c:246:     return true;
	.loc 1 246 12
	movl	$1, %eax	#, _35
.L18:
# p_map.c:247: }
	.loc 1 247 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	PIT_CheckLine, .-PIT_CheckLine
	.globl	PIT_CheckThing
	.type	PIT_CheckThing, @function
PIT_CheckThing:
.LFB9:
	.loc 1 253 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# thing, thing
# p_map.c:258:     if (!(thing->flags & (MF_SOLID|MF_SPECIAL|MF_SHOOTABLE) ))
	.loc 1 258 16
	movq	-24(%rbp), %rax	# thing, tmp179
	movl	160(%rax), %eax	# thing_100(D)->flags, _1
# p_map.c:258:     if (!(thing->flags & (MF_SOLID|MF_SPECIAL|MF_SHOOTABLE) ))
	.loc 1 258 24
	andl	$7, %eax	#, _2
# p_map.c:258:     if (!(thing->flags & (MF_SOLID|MF_SPECIAL|MF_SHOOTABLE) ))
	.loc 1 258 8
	testl	%eax, %eax	# _2
	jne	.L28	#,
# p_map.c:259: 	return true;
	.loc 1 259 9
	movl	$1, %eax	#, _96
	jmp	.L29	#
.L28:
# p_map.c:261:     blockdist = thing->radius + tmthing->radius;
	.loc 1 261 22
	movq	-24(%rbp), %rax	# thing, tmp180
	movl	104(%rax), %edx	# thing_100(D)->radius, _3
# p_map.c:261:     blockdist = thing->radius + tmthing->radius;
	.loc 1 261 40
	movq	tmthing(%rip), %rax	# tmthing, tmthing.33_4
	movl	104(%rax), %eax	# tmthing.33_4->radius, _5
# p_map.c:261:     blockdist = thing->radius + tmthing->radius;
	.loc 1 261 15
	addl	%edx, %eax	# _3, tmp181
	movl	%eax, -12(%rbp)	# tmp181, blockdist
# p_map.c:263:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 263 19
	movq	-24(%rbp), %rax	# thing, tmp182
	movl	24(%rax), %eax	# thing_100(D)->x, _6
# p_map.c:263:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 263 10
	movl	tmx(%rip), %edx	# tmx, tmx.34_7
# p_map.c:263:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 263 23
	subl	%edx, %eax	# tmx.34_7, _8
# p_map.c:263:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 263 10
	movl	%eax, %edx	# _8, tmp215
	negl	%edx	# tmp215
	cmovns	%edx, %eax	# tmp215,, _9
# p_map.c:263:     if ( abs(thing->x - tmx) >= blockdist
	.loc 1 263 8
	cmpl	%eax, -12(%rbp)	# _9, blockdist
	jle	.L30	#,
# p_map.c:264: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 264 15
	movq	-24(%rbp), %rax	# thing, tmp183
	movl	28(%rax), %eax	# thing_100(D)->y, _10
# p_map.c:264: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 264 6
	movl	tmy(%rip), %edx	# tmy, tmy.35_11
# p_map.c:264: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 264 19
	subl	%edx, %eax	# tmy.35_11, _12
# p_map.c:264: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 264 6
	movl	%eax, %edx	# _12, tmp214
	negl	%edx	# tmp214
	cmovns	%edx, %eax	# tmp214,, _13
# p_map.c:264: 	 || abs(thing->y - tmy) >= blockdist )
	.loc 1 264 3
	cmpl	%eax, -12(%rbp)	# _13, blockdist
	jg	.L31	#,
.L30:
# p_map.c:267: 	return true;	
	.loc 1 267 9
	movl	$1, %eax	#, _96
	jmp	.L29	#
.L31:
# p_map.c:271:     if (thing == tmthing)
	.loc 1 271 15
	movq	tmthing(%rip), %rax	# tmthing, tmthing.36_14
# p_map.c:271:     if (thing == tmthing)
	.loc 1 271 8
	cmpq	%rax, -24(%rbp)	# tmthing.36_14, thing
	jne	.L32	#,
# p_map.c:272: 	return true;
	.loc 1 272 9
	movl	$1, %eax	#, _96
	jmp	.L29	#
.L32:
# p_map.c:275:     if (tmthing->flags & MF_SKULLFLY)
	.loc 1 275 16
	movq	tmthing(%rip), %rax	# tmthing, tmthing.37_15
	movl	160(%rax), %eax	# tmthing.37_15->flags, _16
# p_map.c:275:     if (tmthing->flags & MF_SKULLFLY)
	.loc 1 275 24
	andl	$16777216, %eax	#, _17
# p_map.c:275:     if (tmthing->flags & MF_SKULLFLY)
	.loc 1 275 8
	testl	%eax, %eax	# _17
	je	.L33	#,
# p_map.c:277: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 277 13
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _18
# p_map.c:277: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 277 23 discriminator 1
	movl	%edx, %eax	# _18, tmp184
	sarl	$31, %eax	#, tmp184
	shrl	$29, %eax	#, tmp185
	addl	%eax, %edx	# tmp185, tmp186
	andl	$7, %edx	#, tmp187
	subl	%eax, %edx	# tmp185, tmp188
	movl	%edx, %eax	# tmp188, _19
# p_map.c:277: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 277 26 discriminator 1
	leal	1(%rax), %edx	#, _20
# p_map.c:277: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 277 37 discriminator 1
	movq	tmthing(%rip), %rax	# tmthing, tmthing.38_21
	movq	136(%rax), %rax	# tmthing.38_21->info, _22
# p_map.c:277: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 277 43 discriminator 1
	movl	76(%rax), %eax	# _22->damage, _23
# p_map.c:277: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 277 9 discriminator 1
	imull	%edx, %eax	# _20, tmp189
	movl	%eax, -4(%rbp)	# tmp189, damage
# p_map.c:279: 	P_DamageMobj (thing, tmthing, tmthing, damage);
	.loc 1 279 2
	movq	tmthing(%rip), %rdx	# tmthing, tmthing.39_24
	movq	tmthing(%rip), %rsi	# tmthing, tmthing.40_25
	movl	-4(%rbp), %ecx	# damage, tmp190
	movq	-24(%rbp), %rax	# thing, tmp191
	movq	%rax, %rdi	# tmp191,
	call	P_DamageMobj@PLT	#
# p_map.c:281: 	tmthing->flags &= ~MF_SKULLFLY;
	.loc 1 281 9
	movq	tmthing(%rip), %rax	# tmthing, tmthing.41_26
	movl	160(%rax), %edx	# tmthing.41_26->flags, _27
	movq	tmthing(%rip), %rax	# tmthing, tmthing.42_28
# p_map.c:281: 	tmthing->flags &= ~MF_SKULLFLY;
	.loc 1 281 17
	andl	$-16777217, %edx	#, _29
	movl	%edx, 160(%rax)	# _29, tmthing.42_28->flags
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 41
	movq	tmthing(%rip), %rdx	# tmthing, tmthing.43_30
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 48
	movl	$0, 120(%rdx)	#, tmthing.43_30->momz
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 25
	movq	tmthing(%rip), %rax	# tmthing, tmthing.44_31
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 41
	movl	120(%rdx), %edx	# tmthing.43_30->momz, _32
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 32
	movl	%edx, 116(%rax)	# _32, tmthing.44_31->momy
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 9
	movq	tmthing(%rip), %rdx	# tmthing, tmthing.45_33
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 25
	movl	116(%rax), %eax	# tmthing.44_31->momy, _34
# p_map.c:282: 	tmthing->momx = tmthing->momy = tmthing->momz = 0;
	.loc 1 282 16
	movl	%eax, 112(%rdx)	# _34, tmthing.45_33->momx
# p_map.c:284: 	P_SetMobjState (tmthing, tmthing->info->spawnstate);
	.loc 1 284 34
	movq	tmthing(%rip), %rax	# tmthing, tmthing.46_35
	movq	136(%rax), %rax	# tmthing.46_35->info, _36
# p_map.c:284: 	P_SetMobjState (tmthing, tmthing->info->spawnstate);
	.loc 1 284 40
	movl	4(%rax), %eax	# _36->spawnstate, _37
# p_map.c:284: 	P_SetMobjState (tmthing, tmthing->info->spawnstate);
	.loc 1 284 2
	movl	%eax, %edx	# _37, _38
	movq	tmthing(%rip), %rax	# tmthing, tmthing.47_39
	movl	%edx, %esi	# _38,
	movq	%rax, %rdi	# tmthing.47_39,
	call	P_SetMobjState@PLT	#
# p_map.c:286: 	return false;		// stop moving
	.loc 1 286 9
	movl	$0, %eax	#, _96
	jmp	.L29	#
.L33:
# p_map.c:291:     if (tmthing->flags & MF_MISSILE)
	.loc 1 291 16
	movq	tmthing(%rip), %rax	# tmthing, tmthing.48_40
	movl	160(%rax), %eax	# tmthing.48_40->flags, _41
# p_map.c:291:     if (tmthing->flags & MF_MISSILE)
	.loc 1 291 24
	andl	$65536, %eax	#, _42
# p_map.c:291:     if (tmthing->flags & MF_MISSILE)
	.loc 1 291 8
	testl	%eax, %eax	# _42
	je	.L34	#,
# p_map.c:294: 	if (tmthing->z > thing->z + thing->height)
	.loc 1 294 13
	movq	tmthing(%rip), %rax	# tmthing, tmthing.49_43
	movl	32(%rax), %edx	# tmthing.49_43->z, _44
# p_map.c:294: 	if (tmthing->z > thing->z + thing->height)
	.loc 1 294 24
	movq	-24(%rbp), %rax	# thing, tmp192
	movl	32(%rax), %ecx	# thing_100(D)->z, _45
# p_map.c:294: 	if (tmthing->z > thing->z + thing->height)
	.loc 1 294 35
	movq	-24(%rbp), %rax	# thing, tmp193
	movl	108(%rax), %eax	# thing_100(D)->height, _46
# p_map.c:294: 	if (tmthing->z > thing->z + thing->height)
	.loc 1 294 28
	addl	%ecx, %eax	# _45, _47
# p_map.c:294: 	if (tmthing->z > thing->z + thing->height)
	.loc 1 294 5
	cmpl	%eax, %edx	# _47, _44
	jle	.L35	#,
# p_map.c:295: 	    return true;		// overhead
	.loc 1 295 13
	movl	$1, %eax	#, _96
	jmp	.L29	#
.L35:
# p_map.c:296: 	if (tmthing->z+tmthing->height < thing->z)
	.loc 1 296 13
	movq	tmthing(%rip), %rax	# tmthing, tmthing.50_48
	movl	32(%rax), %edx	# tmthing.50_48->z, _49
# p_map.c:296: 	if (tmthing->z+tmthing->height < thing->z)
	.loc 1 296 24
	movq	tmthing(%rip), %rax	# tmthing, tmthing.51_50
	movl	108(%rax), %eax	# tmthing.51_50->height, _51
# p_map.c:296: 	if (tmthing->z+tmthing->height < thing->z)
	.loc 1 296 16
	addl	%eax, %edx	# _51, _52
# p_map.c:296: 	if (tmthing->z+tmthing->height < thing->z)
	.loc 1 296 40
	movq	-24(%rbp), %rax	# thing, tmp194
	movl	32(%rax), %eax	# thing_100(D)->z, _53
# p_map.c:296: 	if (tmthing->z+tmthing->height < thing->z)
	.loc 1 296 5
	cmpl	%eax, %edx	# _53, _52
	jge	.L36	#,
# p_map.c:297: 	    return true;		// underneath
	.loc 1 297 13
	movl	$1, %eax	#, _96
	jmp	.L29	#
.L36:
# p_map.c:299: 	if (tmthing->target && (
	.loc 1 299 13
	movq	tmthing(%rip), %rax	# tmthing, tmthing.52_54
	movq	176(%rax), %rax	# tmthing.52_54->target, _55
# p_map.c:299: 	if (tmthing->target && (
	.loc 1 299 5
	testq	%rax, %rax	# _55
	je	.L37	#,
# p_map.c:300: 	    tmthing->target->type == thing->type || 
	.loc 1 300 13
	movq	tmthing(%rip), %rax	# tmthing, tmthing.53_56
	movq	176(%rax), %rax	# tmthing.53_56->target, _57
# p_map.c:300: 	    tmthing->target->type == thing->type || 
	.loc 1 300 21
	movl	128(%rax), %edx	# _57->type, _58
# p_map.c:300: 	    tmthing->target->type == thing->type || 
	.loc 1 300 36
	movq	-24(%rbp), %rax	# thing, tmp195
	movl	128(%rax), %eax	# thing_100(D)->type, _59
# p_map.c:299: 	if (tmthing->target && (
	.loc 1 299 22 discriminator 1
	cmpl	%eax, %edx	# _59, _58
	je	.L38	#,
# p_map.c:301: 	    (tmthing->target->type == MT_KNIGHT && thing->type == MT_BRUISER)||
	.loc 1 301 14
	movq	tmthing(%rip), %rax	# tmthing, tmthing.54_60
	movq	176(%rax), %rax	# tmthing.54_60->target, _61
# p_map.c:301: 	    (tmthing->target->type == MT_KNIGHT && thing->type == MT_BRUISER)||
	.loc 1 301 22
	movl	128(%rax), %eax	# _61->type, _62
# p_map.c:300: 	    tmthing->target->type == thing->type || 
	.loc 1 300 43
	cmpl	$17, %eax	#, _62
	jne	.L39	#,
# p_map.c:301: 	    (tmthing->target->type == MT_KNIGHT && thing->type == MT_BRUISER)||
	.loc 1 301 50
	movq	-24(%rbp), %rax	# thing, tmp196
	movl	128(%rax), %eax	# thing_100(D)->type, _63
# p_map.c:301: 	    (tmthing->target->type == MT_KNIGHT && thing->type == MT_BRUISER)||
	.loc 1 301 42
	cmpl	$15, %eax	#, _63
	je	.L38	#,
.L39:
# p_map.c:302: 	    (tmthing->target->type == MT_BRUISER && thing->type == MT_KNIGHT) ) )
	.loc 1 302 14
	movq	tmthing(%rip), %rax	# tmthing, tmthing.55_64
	movq	176(%rax), %rax	# tmthing.55_64->target, _65
# p_map.c:302: 	    (tmthing->target->type == MT_BRUISER && thing->type == MT_KNIGHT) ) )
	.loc 1 302 22
	movl	128(%rax), %eax	# _65->type, _66
# p_map.c:301: 	    (tmthing->target->type == MT_KNIGHT && thing->type == MT_BRUISER)||
	.loc 1 301 71 discriminator 1
	cmpl	$15, %eax	#, _66
	jne	.L37	#,
# p_map.c:302: 	    (tmthing->target->type == MT_BRUISER && thing->type == MT_KNIGHT) ) )
	.loc 1 302 51
	movq	-24(%rbp), %rax	# thing, tmp197
	movl	128(%rax), %eax	# thing_100(D)->type, _67
# p_map.c:302: 	    (tmthing->target->type == MT_BRUISER && thing->type == MT_KNIGHT) ) )
	.loc 1 302 43
	cmpl	$17, %eax	#, _67
	jne	.L37	#,
.L38:
# p_map.c:305: 	    if (thing == tmthing->target)
	.loc 1 305 26
	movq	tmthing(%rip), %rax	# tmthing, tmthing.56_68
	movq	176(%rax), %rax	# tmthing.56_68->target, _69
# p_map.c:305: 	    if (thing == tmthing->target)
	.loc 1 305 9
	cmpq	%rax, -24(%rbp)	# _69, thing
	jne	.L40	#,
# p_map.c:306: 		return true;
	.loc 1 306 10
	movl	$1, %eax	#, _96
	jmp	.L29	#
.L40:
# p_map.c:308: 	    if (thing->type != MT_PLAYER)
	.loc 1 308 15
	movq	-24(%rbp), %rax	# thing, tmp198
	movl	128(%rax), %eax	# thing_100(D)->type, _70
# p_map.c:308: 	    if (thing->type != MT_PLAYER)
	.loc 1 308 9
	testl	%eax, %eax	# _70
	je	.L37	#,
# p_map.c:312: 		return false;
	.loc 1 312 10
	movl	$0, %eax	#, _96
	jmp	.L29	#
.L37:
# p_map.c:316: 	if (! (thing->flags & MF_SHOOTABLE) )
	.loc 1 316 14
	movq	-24(%rbp), %rax	# thing, tmp199
	movl	160(%rax), %eax	# thing_100(D)->flags, _71
# p_map.c:316: 	if (! (thing->flags & MF_SHOOTABLE) )
	.loc 1 316 22
	andl	$4, %eax	#, _72
# p_map.c:316: 	if (! (thing->flags & MF_SHOOTABLE) )
	.loc 1 316 5
	testl	%eax, %eax	# _72
	jne	.L41	#,
# p_map.c:319: 	    return !(thing->flags & MF_SOLID);	
	.loc 1 319 20
	movq	-24(%rbp), %rax	# thing, tmp200
	movl	160(%rax), %eax	# thing_100(D)->flags, _73
# p_map.c:319: 	    return !(thing->flags & MF_SOLID);	
	.loc 1 319 28
	andl	$2, %eax	#, _74
# p_map.c:319: 	    return !(thing->flags & MF_SOLID);	
	.loc 1 319 13
	testl	%eax, %eax	# _74
	sete	%al	#, _75
	movzbl	%al, %eax	# _75, _96
	jmp	.L29	#
.L41:
# p_map.c:323: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 323 13
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _76
# p_map.c:323: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 323 23 discriminator 1
	movl	%edx, %eax	# _76, tmp201
	sarl	$31, %eax	#, tmp201
	shrl	$29, %eax	#, tmp202
	addl	%eax, %edx	# tmp202, tmp203
	andl	$7, %edx	#, tmp204
	subl	%eax, %edx	# tmp202, tmp205
	movl	%edx, %eax	# tmp205, _77
# p_map.c:323: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 323 26 discriminator 1
	leal	1(%rax), %edx	#, _78
# p_map.c:323: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 323 37 discriminator 1
	movq	tmthing(%rip), %rax	# tmthing, tmthing.57_79
	movq	136(%rax), %rax	# tmthing.57_79->info, _80
# p_map.c:323: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 323 43 discriminator 1
	movl	76(%rax), %eax	# _80->damage, _81
# p_map.c:323: 	damage = ((P_Random()%8)+1)*tmthing->info->damage;
	.loc 1 323 9 discriminator 1
	imull	%edx, %eax	# _78, tmp206
	movl	%eax, -4(%rbp)	# tmp206, damage
# p_map.c:324: 	P_DamageMobj (thing, tmthing, tmthing->target, damage);
	.loc 1 324 39
	movq	tmthing(%rip), %rax	# tmthing, tmthing.58_82
	movq	176(%rax), %rdx	# tmthing.58_82->target, _83
# p_map.c:324: 	P_DamageMobj (thing, tmthing, tmthing->target, damage);
	.loc 1 324 2
	movq	tmthing(%rip), %rsi	# tmthing, tmthing.59_84
	movl	-4(%rbp), %ecx	# damage, tmp207
	movq	-24(%rbp), %rax	# thing, tmp208
	movq	%rax, %rdi	# tmp208,
	call	P_DamageMobj@PLT	#
# p_map.c:327: 	return false;				
	.loc 1 327 9
	movl	$0, %eax	#, _96
	jmp	.L29	#
.L34:
# p_map.c:331:     if (thing->flags & MF_SPECIAL)
	.loc 1 331 14
	movq	-24(%rbp), %rax	# thing, tmp209
	movl	160(%rax), %eax	# thing_100(D)->flags, _85
# p_map.c:331:     if (thing->flags & MF_SPECIAL)
	.loc 1 331 22
	andl	$1, %eax	#, _86
# p_map.c:331:     if (thing->flags & MF_SPECIAL)
	.loc 1 331 8
	testl	%eax, %eax	# _86
	je	.L42	#,
# p_map.c:333: 	solid = thing->flags&MF_SOLID;
	.loc 1 333 15
	movq	-24(%rbp), %rax	# thing, tmp210
	movl	160(%rax), %eax	# thing_100(D)->flags, _87
# p_map.c:333: 	solid = thing->flags&MF_SOLID;
	.loc 1 333 22
	andl	$2, %eax	#, _88
# p_map.c:333: 	solid = thing->flags&MF_SOLID;
	.loc 1 333 8
	movl	%eax, -8(%rbp)	# _88, solid
# p_map.c:334: 	if (tmflags&MF_PICKUP)
	.loc 1 334 13
	movl	tmflags(%rip), %eax	# tmflags, tmflags.60_89
	andl	$2048, %eax	#, _90
# p_map.c:334: 	if (tmflags&MF_PICKUP)
	.loc 1 334 5
	testl	%eax, %eax	# _90
	je	.L43	#,
# p_map.c:337: 	    P_TouchSpecialThing (thing, tmthing);
	.loc 1 337 6
	movq	tmthing(%rip), %rdx	# tmthing, tmthing.61_91
	movq	-24(%rbp), %rax	# thing, tmp211
	movq	%rdx, %rsi	# tmthing.61_91,
	movq	%rax, %rdi	# tmp211,
	call	P_TouchSpecialThing@PLT	#
.L43:
# p_map.c:339: 	return !solid;
	.loc 1 339 9
	cmpl	$0, -8(%rbp)	#, solid
	sete	%al	#, _92
	movzbl	%al, %eax	# _92, _96
	jmp	.L29	#
.L42:
# p_map.c:342:     return !(thing->flags & MF_SOLID);
	.loc 1 342 19
	movq	-24(%rbp), %rax	# thing, tmp212
	movl	160(%rax), %eax	# thing_100(D)->flags, _93
# p_map.c:342:     return !(thing->flags & MF_SOLID);
	.loc 1 342 27
	andl	$2, %eax	#, _94
# p_map.c:342:     return !(thing->flags & MF_SOLID);
	.loc 1 342 12
	testl	%eax, %eax	# _94
	sete	%al	#, _95
	movzbl	%al, %eax	# _95, _96
.L29:
# p_map.c:343: }
	.loc 1 343 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	PIT_CheckThing, .-PIT_CheckThing
	.globl	P_CheckPosition
	.type	P_CheckPosition, @function
P_CheckPosition:
.LFB10:
	.loc 1 379 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# thing, thing
	movl	%esi, -44(%rbp)	# x, x
	movl	%edx, -48(%rbp)	# y, y
# p_map.c:388:     tmthing = thing;
	.loc 1 388 13
	movq	-40(%rbp), %rax	# thing, tmp136
	movq	%rax, tmthing(%rip)	# tmp136, tmthing
# p_map.c:389:     tmflags = thing->flags;
	.loc 1 389 20
	movq	-40(%rbp), %rax	# thing, tmp137
	movl	160(%rax), %eax	# thing_64(D)->flags, _1
# p_map.c:389:     tmflags = thing->flags;
	.loc 1 389 13
	movl	%eax, tmflags(%rip)	# _1, tmflags
# p_map.c:391:     tmx = x;
	.loc 1 391 9
	movl	-44(%rbp), %eax	# x, tmp138
	movl	%eax, tmx(%rip)	# tmp138, tmx
# p_map.c:392:     tmy = y;
	.loc 1 392 9
	movl	-48(%rbp), %eax	# y, tmp139
	movl	%eax, tmy(%rip)	# tmp139, tmy
# p_map.c:394:     tmbbox[BOXTOP] = y + tmthing->radius;
	.loc 1 394 33
	movq	tmthing(%rip), %rax	# tmthing, tmthing.62_2
	movl	104(%rax), %edx	# tmthing.62_2->radius, _3
# p_map.c:394:     tmbbox[BOXTOP] = y + tmthing->radius;
	.loc 1 394 24
	movl	-48(%rbp), %eax	# y, tmp140
	addl	%edx, %eax	# _3, _4
# p_map.c:394:     tmbbox[BOXTOP] = y + tmthing->radius;
	.loc 1 394 20
	movl	%eax, tmbbox(%rip)	# _4, tmbbox[0]
# p_map.c:395:     tmbbox[BOXBOTTOM] = y - tmthing->radius;
	.loc 1 395 36
	movq	tmthing(%rip), %rax	# tmthing, tmthing.63_5
	movl	104(%rax), %eax	# tmthing.63_5->radius, _6
# p_map.c:395:     tmbbox[BOXBOTTOM] = y - tmthing->radius;
	.loc 1 395 27
	movl	-48(%rbp), %edx	# y, tmp141
	subl	%eax, %edx	# _6, _7
# p_map.c:395:     tmbbox[BOXBOTTOM] = y - tmthing->radius;
	.loc 1 395 23
	movl	%edx, 4+tmbbox(%rip)	# _7, tmbbox[1]
# p_map.c:396:     tmbbox[BOXRIGHT] = x + tmthing->radius;
	.loc 1 396 35
	movq	tmthing(%rip), %rax	# tmthing, tmthing.64_8
	movl	104(%rax), %edx	# tmthing.64_8->radius, _9
# p_map.c:396:     tmbbox[BOXRIGHT] = x + tmthing->radius;
	.loc 1 396 26
	movl	-44(%rbp), %eax	# x, tmp142
	addl	%edx, %eax	# _9, _10
# p_map.c:396:     tmbbox[BOXRIGHT] = x + tmthing->radius;
	.loc 1 396 22
	movl	%eax, 12+tmbbox(%rip)	# _10, tmbbox[3]
# p_map.c:397:     tmbbox[BOXLEFT] = x - tmthing->radius;
	.loc 1 397 34
	movq	tmthing(%rip), %rax	# tmthing, tmthing.65_11
	movl	104(%rax), %eax	# tmthing.65_11->radius, _12
# p_map.c:397:     tmbbox[BOXLEFT] = x - tmthing->radius;
	.loc 1 397 25
	movl	-44(%rbp), %edx	# x, tmp143
	subl	%eax, %edx	# _12, _13
# p_map.c:397:     tmbbox[BOXLEFT] = x - tmthing->radius;
	.loc 1 397 21
	movl	%edx, 8+tmbbox(%rip)	# _13, tmbbox[2]
# p_map.c:399:     newsubsec = R_PointInSubsector (x,y);
	.loc 1 399 17
	movl	-48(%rbp), %edx	# y, tmp144
	movl	-44(%rbp), %eax	# x, tmp145
	movl	%edx, %esi	# tmp144,
	movl	%eax, %edi	# tmp145,
	call	R_PointInSubsector@PLT	#
	movq	%rax, -8(%rbp)	# tmp146, newsubsec
# p_map.c:400:     ceilingline = NULL;
	.loc 1 400 17
	movq	$0, ceilingline(%rip)	#, ceilingline
# p_map.c:406:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 406 38
	movq	-8(%rbp), %rax	# newsubsec, tmp147
	movq	(%rax), %rax	# newsubsec_76->sector, _14
# p_map.c:406:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 406 46
	movl	(%rax), %eax	# _14->floorheight, _15
# p_map.c:406:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 406 27
	movl	%eax, tmdropoffz(%rip)	# _15, tmdropoffz
# p_map.c:406:     tmfloorz = tmdropoffz = newsubsec->sector->floorheight;
	.loc 1 406 14
	movl	tmdropoffz(%rip), %eax	# tmdropoffz, tmdropoffz.66_16
	movl	%eax, tmfloorz(%rip)	# tmdropoffz.66_16, tmfloorz
# p_map.c:407:     tmceilingz = newsubsec->sector->ceilingheight;
	.loc 1 407 27
	movq	-8(%rbp), %rax	# newsubsec, tmp148
	movq	(%rax), %rax	# newsubsec_76->sector, _17
# p_map.c:407:     tmceilingz = newsubsec->sector->ceilingheight;
	.loc 1 407 35
	movl	4(%rax), %eax	# _17->ceilingheight, _18
# p_map.c:407:     tmceilingz = newsubsec->sector->ceilingheight;
	.loc 1 407 16
	movl	%eax, tmceilingz(%rip)	# _18, tmceilingz
# p_map.c:409:     validcount++;
	.loc 1 409 15
	movl	validcount(%rip), %eax	# validcount, validcount.67_19
	addl	$1, %eax	#, _20
	movl	%eax, validcount(%rip)	# _20, validcount
# p_map.c:410:     numspechit = 0;
	.loc 1 410 16
	movl	$0, numspechit(%rip)	#, numspechit
# p_map.c:412:     if ( tmflags & MF_NOCLIP )
	.loc 1 412 18
	movl	tmflags(%rip), %eax	# tmflags, tmflags.68_21
	andl	$4096, %eax	#, _22
# p_map.c:412:     if ( tmflags & MF_NOCLIP )
	.loc 1 412 8
	testl	%eax, %eax	# _22
	je	.L45	#,
# p_map.c:413: 	return true;
	.loc 1 413 9
	movl	$1, %eax	#, _57
	jmp	.L46	#
.L45:
# p_map.c:420:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 420 17
	movl	8+tmbbox(%rip), %edx	# tmbbox[2], _23
# p_map.c:420:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 420 27
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.69_24
	subl	%eax, %edx	# bmaporgx.69_24, _25
# p_map.c:420:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 420 38
	leal	-2097152(%rdx), %eax	#, _26
# p_map.c:420:     xl = (tmbbox[BOXLEFT] - bmaporgx - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 420 8
	sarl	$23, %eax	#, tmp149
	movl	%eax, -24(%rbp)	# tmp149, xl
# p_map.c:421:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 421 17
	movl	12+tmbbox(%rip), %edx	# tmbbox[3], _27
# p_map.c:421:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 421 28
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.70_28
	subl	%eax, %edx	# bmaporgx.70_28, _29
# p_map.c:421:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 421 39
	leal	2097152(%rdx), %eax	#, _30
# p_map.c:421:     xh = (tmbbox[BOXRIGHT] - bmaporgx + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 421 8
	sarl	$23, %eax	#, tmp150
	movl	%eax, -20(%rbp)	# tmp150, xh
# p_map.c:422:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 422 17
	movl	4+tmbbox(%rip), %edx	# tmbbox[1], _31
# p_map.c:422:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 422 29
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.71_32
	subl	%eax, %edx	# bmaporgy.71_32, _33
# p_map.c:422:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 422 40
	leal	-2097152(%rdx), %eax	#, _34
# p_map.c:422:     yl = (tmbbox[BOXBOTTOM] - bmaporgy - MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 422 8
	sarl	$23, %eax	#, tmp151
	movl	%eax, -16(%rbp)	# tmp151, yl
# p_map.c:423:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 423 17
	movl	tmbbox(%rip), %edx	# tmbbox[0], _35
# p_map.c:423:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 423 26
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.72_36
	subl	%eax, %edx	# bmaporgy.72_36, _37
# p_map.c:423:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 423 37
	leal	2097152(%rdx), %eax	#, _38
# p_map.c:423:     yh = (tmbbox[BOXTOP] - bmaporgy + MAXRADIUS)>>MAPBLOCKSHIFT;
	.loc 1 423 8
	sarl	$23, %eax	#, tmp152
	movl	%eax, -12(%rbp)	# tmp152, yh
# p_map.c:425:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 425 12
	movl	-24(%rbp), %eax	# xl, tmp153
	movl	%eax, -32(%rbp)	# tmp153, bx
# p_map.c:425:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 425 5
	jmp	.L47	#
.L51:
# p_map.c:426: 	for (by=yl ; by<=yh ; by++)
	.loc 1 426 9
	movl	-16(%rbp), %eax	# yl, tmp154
	movl	%eax, -28(%rbp)	# tmp154, by
# p_map.c:426: 	for (by=yl ; by<=yh ; by++)
	.loc 1 426 2
	jmp	.L48	#
.L50:
# p_map.c:427: 	    if (!P_BlockThingsIterator(bx,by,PIT_CheckThing))
	.loc 1 427 11
	movl	-28(%rbp), %ecx	# by, tmp155
	movl	-32(%rbp), %eax	# bx, tmp156
	leaq	PIT_CheckThing(%rip), %rdx	#, tmp157
	movl	%ecx, %esi	# tmp155,
	movl	%eax, %edi	# tmp156,
	call	P_BlockThingsIterator@PLT	#
# p_map.c:427: 	    if (!P_BlockThingsIterator(bx,by,PIT_CheckThing))
	.loc 1 427 9 discriminator 1
	testl	%eax, %eax	# _39
	jne	.L49	#,
# p_map.c:428: 		return false;
	.loc 1 428 10
	movl	$0, %eax	#, _57
	jmp	.L46	#
.L49:
# p_map.c:426: 	for (by=yl ; by<=yh ; by++)
	.loc 1 426 26 discriminator 2
	addl	$1, -28(%rbp)	#, by
.L48:
# p_map.c:426: 	for (by=yl ; by<=yh ; by++)
	.loc 1 426 17 discriminator 1
	movl	-28(%rbp), %eax	# by, tmp158
	cmpl	-12(%rbp), %eax	# yh, tmp158
	jle	.L50	#,
# p_map.c:425:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 425 29 discriminator 2
	addl	$1, -32(%rbp)	#, bx
.L47:
# p_map.c:425:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 425 20 discriminator 1
	movl	-32(%rbp), %eax	# bx, tmp159
	cmpl	-20(%rbp), %eax	# xh, tmp159
	jle	.L51	#,
# p_map.c:431:     xl = (tmbbox[BOXLEFT] - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 431 17
	movl	8+tmbbox(%rip), %edx	# tmbbox[2], _40
# p_map.c:431:     xl = (tmbbox[BOXLEFT] - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 431 27
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.73_41
	subl	%eax, %edx	# bmaporgx.73_41, _42
# p_map.c:431:     xl = (tmbbox[BOXLEFT] - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 431 8
	movl	%edx, %eax	# _42, _42
	sarl	$23, %eax	#, _42
	movl	%eax, -24(%rbp)	# tmp160, xl
# p_map.c:432:     xh = (tmbbox[BOXRIGHT] - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 432 17
	movl	12+tmbbox(%rip), %edx	# tmbbox[3], _43
# p_map.c:432:     xh = (tmbbox[BOXRIGHT] - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 432 28
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.74_44
	subl	%eax, %edx	# bmaporgx.74_44, _45
# p_map.c:432:     xh = (tmbbox[BOXRIGHT] - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 432 8
	movl	%edx, %eax	# _45, _45
	sarl	$23, %eax	#, _45
	movl	%eax, -20(%rbp)	# tmp161, xh
# p_map.c:433:     yl = (tmbbox[BOXBOTTOM] - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 433 17
	movl	4+tmbbox(%rip), %edx	# tmbbox[1], _46
# p_map.c:433:     yl = (tmbbox[BOXBOTTOM] - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 433 29
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.75_47
	subl	%eax, %edx	# bmaporgy.75_47, _48
# p_map.c:433:     yl = (tmbbox[BOXBOTTOM] - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 433 8
	movl	%edx, %eax	# _48, _48
	sarl	$23, %eax	#, _48
	movl	%eax, -16(%rbp)	# tmp162, yl
# p_map.c:434:     yh = (tmbbox[BOXTOP] - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 434 17
	movl	tmbbox(%rip), %edx	# tmbbox[0], _49
# p_map.c:434:     yh = (tmbbox[BOXTOP] - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 434 26
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.76_50
	subl	%eax, %edx	# bmaporgy.76_50, _51
# p_map.c:434:     yh = (tmbbox[BOXTOP] - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 434 8
	movl	%edx, %eax	# _51, _51
	sarl	$23, %eax	#, _51
	movl	%eax, -12(%rbp)	# tmp163, yh
# p_map.c:436:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 436 12
	movl	-24(%rbp), %eax	# xl, tmp164
	movl	%eax, -32(%rbp)	# tmp164, bx
# p_map.c:436:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 436 5
	jmp	.L52	#
.L56:
# p_map.c:437: 	for (by=yl ; by<=yh ; by++)
	.loc 1 437 9
	movl	-16(%rbp), %eax	# yl, tmp165
	movl	%eax, -28(%rbp)	# tmp165, by
# p_map.c:437: 	for (by=yl ; by<=yh ; by++)
	.loc 1 437 2
	jmp	.L53	#
.L55:
# p_map.c:438: 	    if (!P_BlockLinesIterator (bx,by,PIT_CheckLine))
	.loc 1 438 11
	movl	-28(%rbp), %ecx	# by, tmp166
	movl	-32(%rbp), %eax	# bx, tmp167
	leaq	PIT_CheckLine(%rip), %rdx	#, tmp168
	movl	%ecx, %esi	# tmp166,
	movl	%eax, %edi	# tmp167,
	call	P_BlockLinesIterator@PLT	#
# p_map.c:438: 	    if (!P_BlockLinesIterator (bx,by,PIT_CheckLine))
	.loc 1 438 9 discriminator 1
	testl	%eax, %eax	# _52
	jne	.L54	#,
# p_map.c:439: 		return false;
	.loc 1 439 10
	movl	$0, %eax	#, _57
	jmp	.L46	#
.L54:
# p_map.c:437: 	for (by=yl ; by<=yh ; by++)
	.loc 1 437 26 discriminator 2
	addl	$1, -28(%rbp)	#, by
.L53:
# p_map.c:437: 	for (by=yl ; by<=yh ; by++)
	.loc 1 437 17 discriminator 1
	movl	-28(%rbp), %eax	# by, tmp169
	cmpl	-12(%rbp), %eax	# yh, tmp169
	jle	.L55	#,
# p_map.c:436:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 436 29 discriminator 2
	addl	$1, -32(%rbp)	#, bx
.L52:
# p_map.c:436:     for (bx=xl ; bx<=xh ; bx++)
	.loc 1 436 20 discriminator 1
	movl	-32(%rbp), %eax	# bx, tmp170
	cmpl	-20(%rbp), %eax	# xh, tmp170
	jle	.L56	#,
# p_map.c:441:     return true;
	.loc 1 441 12
	movl	$1, %eax	#, _57
.L46:
# p_map.c:442: }
	.loc 1 442 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	P_CheckPosition, .-P_CheckPosition
	.globl	P_TryMove
	.type	P_TryMove, @function
P_TryMove:
.LFB11:
	.loc 1 455 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# thing, thing
	movl	%esi, -44(%rbp)	# x, x
	movl	%edx, -48(%rbp)	# y, y
# p_map.c:462:     floatok = false;
	.loc 1 462 13
	movl	$0, floatok(%rip)	#, floatok
# p_map.c:463:     if (!P_CheckPosition (thing, x, y))
	.loc 1 463 10
	movl	-48(%rbp), %edx	# y, tmp121
	movl	-44(%rbp), %ecx	# x, tmp122
	movq	-40(%rbp), %rax	# thing, tmp123
	movl	%ecx, %esi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	P_CheckPosition	#
# p_map.c:463:     if (!P_CheckPosition (thing, x, y))
	.loc 1 463 8 discriminator 1
	testl	%eax, %eax	# _1
	jne	.L58	#,
# p_map.c:464: 	return false;		// solid wall or thing
	.loc 1 464 9
	movl	$0, %eax	#, _39
	jmp	.L59	#
.L58:
# p_map.c:466:     if ( !(thing->flags & MF_NOCLIP) )
	.loc 1 466 17
	movq	-40(%rbp), %rax	# thing, tmp124
	movl	160(%rax), %eax	# thing_46(D)->flags, _2
# p_map.c:466:     if ( !(thing->flags & MF_NOCLIP) )
	.loc 1 466 25
	andl	$4096, %eax	#, _3
# p_map.c:466:     if ( !(thing->flags & MF_NOCLIP) )
	.loc 1 466 8
	testl	%eax, %eax	# _3
	jne	.L60	#,
# p_map.c:468: 	if (tmceilingz - tmfloorz < thing->height)
	.loc 1 468 17
	movl	tmceilingz(%rip), %edx	# tmceilingz, tmceilingz.77_4
	movl	tmfloorz(%rip), %eax	# tmfloorz, tmfloorz.78_5
	subl	%eax, %edx	# tmfloorz.78_5, _6
# p_map.c:468: 	if (tmceilingz - tmfloorz < thing->height)
	.loc 1 468 35
	movq	-40(%rbp), %rax	# thing, tmp125
	movl	108(%rax), %eax	# thing_46(D)->height, _7
# p_map.c:468: 	if (tmceilingz - tmfloorz < thing->height)
	.loc 1 468 5
	cmpl	%eax, %edx	# _7, _6
	jge	.L61	#,
# p_map.c:469: 	    return false;	// doesn't fit
	.loc 1 469 13
	movl	$0, %eax	#, _39
	jmp	.L59	#
.L61:
# p_map.c:471: 	floatok = true;
	.loc 1 471 10
	movl	$1, floatok(%rip)	#, floatok
# p_map.c:473: 	if ( !(thing->flags&MF_TELEPORT) 
	.loc 1 473 14
	movq	-40(%rbp), %rax	# thing, tmp126
	movl	160(%rax), %eax	# thing_46(D)->flags, _8
# p_map.c:473: 	if ( !(thing->flags&MF_TELEPORT) 
	.loc 1 473 21
	andl	$32768, %eax	#, _9
# p_map.c:473: 	if ( !(thing->flags&MF_TELEPORT) 
	.loc 1 473 5
	testl	%eax, %eax	# _9
	jne	.L62	#,
# p_map.c:474: 	     &&tmceilingz - thing->z < thing->height)
	.loc 1 474 20
	movl	tmceilingz(%rip), %edx	# tmceilingz, tmceilingz.79_10
# p_map.c:474: 	     &&tmceilingz - thing->z < thing->height)
	.loc 1 474 27
	movq	-40(%rbp), %rax	# thing, tmp127
	movl	32(%rax), %eax	# thing_46(D)->z, _11
# p_map.c:474: 	     &&tmceilingz - thing->z < thing->height)
	.loc 1 474 20
	subl	%eax, %edx	# _11, _12
# p_map.c:474: 	     &&tmceilingz - thing->z < thing->height)
	.loc 1 474 38
	movq	-40(%rbp), %rax	# thing, tmp128
	movl	108(%rax), %eax	# thing_46(D)->height, _13
# p_map.c:474: 	     &&tmceilingz - thing->z < thing->height)
	.loc 1 474 7
	cmpl	%eax, %edx	# _13, _12
	jge	.L62	#,
# p_map.c:475: 	    return false;	// mobj must lower itself to fit
	.loc 1 475 13
	movl	$0, %eax	#, _39
	jmp	.L59	#
.L62:
# p_map.c:477: 	if ( !(thing->flags&MF_TELEPORT)
	.loc 1 477 14
	movq	-40(%rbp), %rax	# thing, tmp129
	movl	160(%rax), %eax	# thing_46(D)->flags, _14
# p_map.c:477: 	if ( !(thing->flags&MF_TELEPORT)
	.loc 1 477 21
	andl	$32768, %eax	#, _15
# p_map.c:477: 	if ( !(thing->flags&MF_TELEPORT)
	.loc 1 477 5
	testl	%eax, %eax	# _15
	jne	.L63	#,
# p_map.c:478: 	     && tmfloorz - thing->z > 24*FRACUNIT )
	.loc 1 478 19
	movl	tmfloorz(%rip), %edx	# tmfloorz, tmfloorz.80_16
# p_map.c:478: 	     && tmfloorz - thing->z > 24*FRACUNIT )
	.loc 1 478 26
	movq	-40(%rbp), %rax	# thing, tmp130
	movl	32(%rax), %eax	# thing_46(D)->z, _17
# p_map.c:478: 	     && tmfloorz - thing->z > 24*FRACUNIT )
	.loc 1 478 19
	subl	%eax, %edx	# _17, _18
# p_map.c:478: 	     && tmfloorz - thing->z > 24*FRACUNIT )
	.loc 1 478 7
	cmpl	$1572864, %edx	#, _18
	jle	.L63	#,
# p_map.c:479: 	    return false;	// too big a step up
	.loc 1 479 13
	movl	$0, %eax	#, _39
	jmp	.L59	#
.L63:
# p_map.c:481: 	if ( !(thing->flags&(MF_DROPOFF|MF_FLOAT))
	.loc 1 481 14
	movq	-40(%rbp), %rax	# thing, tmp131
	movl	160(%rax), %eax	# thing_46(D)->flags, _19
# p_map.c:481: 	if ( !(thing->flags&(MF_DROPOFF|MF_FLOAT))
	.loc 1 481 21
	andl	$17408, %eax	#, _20
# p_map.c:481: 	if ( !(thing->flags&(MF_DROPOFF|MF_FLOAT))
	.loc 1 481 5
	testl	%eax, %eax	# _20
	jne	.L60	#,
# p_map.c:482: 	     && tmfloorz - tmdropoffz > 24*FRACUNIT )
	.loc 1 482 19
	movl	tmfloorz(%rip), %edx	# tmfloorz, tmfloorz.81_21
	movl	tmdropoffz(%rip), %eax	# tmdropoffz, tmdropoffz.82_22
	subl	%eax, %edx	# tmdropoffz.82_22, _23
# p_map.c:482: 	     && tmfloorz - tmdropoffz > 24*FRACUNIT )
	.loc 1 482 7
	cmpl	$1572864, %edx	#, _23
	jle	.L60	#,
# p_map.c:483: 	    return false;	// don't stand over a dropoff
	.loc 1 483 13
	movl	$0, %eax	#, _39
	jmp	.L59	#
.L60:
# p_map.c:488:     P_UnsetThingPosition (thing);
	.loc 1 488 5
	movq	-40(%rbp), %rax	# thing, tmp132
	movq	%rax, %rdi	# tmp132,
	call	P_UnsetThingPosition@PLT	#
# p_map.c:490:     oldx = thing->x;
	.loc 1 490 10
	movq	-40(%rbp), %rax	# thing, tmp133
	movl	24(%rax), %eax	# thing_46(D)->x, tmp134
	movl	%eax, -24(%rbp)	# tmp134, oldx
# p_map.c:491:     oldy = thing->y;
	.loc 1 491 10
	movq	-40(%rbp), %rax	# thing, tmp135
	movl	28(%rax), %eax	# thing_46(D)->y, tmp136
	movl	%eax, -20(%rbp)	# tmp136, oldy
# p_map.c:492:     thing->floorz = tmfloorz;
	.loc 1 492 19
	movl	tmfloorz(%rip), %edx	# tmfloorz, tmfloorz.83_24
	movq	-40(%rbp), %rax	# thing, tmp137
	movl	%edx, 96(%rax)	# tmfloorz.83_24, thing_46(D)->floorz
# p_map.c:493:     thing->ceilingz = tmceilingz;	
	.loc 1 493 21
	movl	tmceilingz(%rip), %edx	# tmceilingz, tmceilingz.84_25
	movq	-40(%rbp), %rax	# thing, tmp138
	movl	%edx, 100(%rax)	# tmceilingz.84_25, thing_46(D)->ceilingz
# p_map.c:494:     thing->x = x;
	.loc 1 494 14
	movq	-40(%rbp), %rax	# thing, tmp139
	movl	-44(%rbp), %edx	# x, tmp140
	movl	%edx, 24(%rax)	# tmp140, thing_46(D)->x
# p_map.c:495:     thing->y = y;
	.loc 1 495 14
	movq	-40(%rbp), %rax	# thing, tmp141
	movl	-48(%rbp), %edx	# y, tmp142
	movl	%edx, 28(%rax)	# tmp142, thing_46(D)->y
# p_map.c:497:     P_SetThingPosition (thing);
	.loc 1 497 5
	movq	-40(%rbp), %rax	# thing, tmp143
	movq	%rax, %rdi	# tmp143,
	call	P_SetThingPosition@PLT	#
# p_map.c:500:     if (! (thing->flags&(MF_TELEPORT|MF_NOCLIP)) )
	.loc 1 500 17
	movq	-40(%rbp), %rax	# thing, tmp144
	movl	160(%rax), %eax	# thing_46(D)->flags, _26
# p_map.c:500:     if (! (thing->flags&(MF_TELEPORT|MF_NOCLIP)) )
	.loc 1 500 24
	andl	$36864, %eax	#, _27
# p_map.c:500:     if (! (thing->flags&(MF_TELEPORT|MF_NOCLIP)) )
	.loc 1 500 8
	testl	%eax, %eax	# _27
	jne	.L64	#,
# p_map.c:502: 	while (numspechit--)
	.loc 1 502 8
	jmp	.L65	#
.L67:
# p_map.c:505: 	    ld = spechit[numspechit];
	.loc 1 505 18
	movl	numspechit(%rip), %eax	# numspechit, numspechit.85_28
# p_map.c:505: 	    ld = spechit[numspechit];
	.loc 1 505 9
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp146
	leaq	spechit(%rip), %rax	#, tmp147
	movq	(%rdx,%rax), %rax	# spechit[numspechit.85_28], tmp148
	movq	%rax, -8(%rbp)	# tmp148, ld
# p_map.c:506: 	    side = P_PointOnLineSide (thing->x, thing->y, ld);
	.loc 1 506 13
	movq	-40(%rbp), %rax	# thing, tmp149
	movl	28(%rax), %ecx	# thing_46(D)->y, _29
	movq	-40(%rbp), %rax	# thing, tmp150
	movl	24(%rax), %eax	# thing_46(D)->x, _30
	movq	-8(%rbp), %rdx	# ld, tmp151
	movl	%ecx, %esi	# _29,
	movl	%eax, %edi	# _30,
	call	P_PointOnLineSide@PLT	#
	movl	%eax, -16(%rbp)	# tmp152, side
# p_map.c:507: 	    oldside = P_PointOnLineSide (oldx, oldy, ld);
	.loc 1 507 16
	movq	-8(%rbp), %rdx	# ld, tmp153
	movl	-20(%rbp), %ecx	# oldy, tmp154
	movl	-24(%rbp), %eax	# oldx, tmp155
	movl	%ecx, %esi	# tmp154,
	movl	%eax, %edi	# tmp155,
	call	P_PointOnLineSide@PLT	#
	movl	%eax, -12(%rbp)	# tmp156, oldside
# p_map.c:508: 	    if (side != oldside)
	.loc 1 508 9
	movl	-16(%rbp), %eax	# side, tmp157
	cmpl	-12(%rbp), %eax	# oldside, tmp157
	je	.L65	#,
# p_map.c:510: 		if (ld->special)
	.loc 1 510 9
	movq	-8(%rbp), %rax	# ld, tmp158
	movzwl	26(%rax), %eax	# ld_64->special, _31
# p_map.c:510: 		if (ld->special)
	.loc 1 510 6
	testw	%ax, %ax	# _31
	je	.L65	#,
# p_map.c:511: 		    P_CrossSpecialLine (ld-lines, oldside, thing);
	.loc 1 511 29
	movq	lines(%rip), %rax	# lines, lines.86_32
	movq	-8(%rbp), %rdx	# ld, tmp159
	subq	%rax, %rdx	# lines.86_32, _33
	sarq	$3, %rdx	#, tmp160
	movabsq	$3353953467947191203, %rax	#, tmp162
	imulq	%rdx, %rax	# tmp160, tmp161
# p_map.c:511: 		    P_CrossSpecialLine (ld-lines, oldside, thing);
	.loc 1 511 7
	movl	%eax, %ecx	# _34, _35
	movq	-40(%rbp), %rdx	# thing, tmp163
	movl	-12(%rbp), %eax	# oldside, tmp164
	movl	%eax, %esi	# tmp164,
	movl	%ecx, %edi	# _35,
	call	P_CrossSpecialLine@PLT	#
.L65:
# p_map.c:502: 	while (numspechit--)
	.loc 1 502 19
	movl	numspechit(%rip), %eax	# numspechit, numspechit.87_36
	leal	-1(%rax), %edx	#, _38
	movl	%edx, numspechit(%rip)	# _38, numspechit
# p_map.c:502: 	while (numspechit--)
	.loc 1 502 9
	testl	%eax, %eax	# numspechit.87_36
	jne	.L67	#,
.L64:
# p_map.c:516:     return true;
	.loc 1 516 12
	movl	$1, %eax	#, _39
.L59:
# p_map.c:517: }
	.loc 1 517 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	P_TryMove, .-P_TryMove
	.globl	P_ThingHeightClip
	.type	P_ThingHeightClip, @function
P_ThingHeightClip:
.LFB12:
	.loc 1 531 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# thing, thing
# p_map.c:534:     onfloor = (thing->z == thing->floorz);
	.loc 1 534 21
	movq	-24(%rbp), %rax	# thing, tmp103
	movl	32(%rax), %edx	# thing_23(D)->z, _1
# p_map.c:534:     onfloor = (thing->z == thing->floorz);
	.loc 1 534 33
	movq	-24(%rbp), %rax	# thing, tmp104
	movl	96(%rax), %eax	# thing_23(D)->floorz, _2
# p_map.c:534:     onfloor = (thing->z == thing->floorz);
	.loc 1 534 25
	cmpl	%eax, %edx	# _2, _1
	sete	%al	#, _3
# p_map.c:534:     onfloor = (thing->z == thing->floorz);
	.loc 1 534 13
	movzbl	%al, %eax	# _3, tmp105
	movl	%eax, -4(%rbp)	# tmp105, onfloor
# p_map.c:536:     P_CheckPosition (thing, thing->x, thing->y);	
	.loc 1 536 5
	movq	-24(%rbp), %rax	# thing, tmp106
	movl	28(%rax), %edx	# thing_23(D)->y, _4
	movq	-24(%rbp), %rax	# thing, tmp107
	movl	24(%rax), %ecx	# thing_23(D)->x, _5
	movq	-24(%rbp), %rax	# thing, tmp108
	movl	%ecx, %esi	# _5,
	movq	%rax, %rdi	# tmp108,
	call	P_CheckPosition	#
# p_map.c:539:     thing->floorz = tmfloorz;
	.loc 1 539 19
	movl	tmfloorz(%rip), %edx	# tmfloorz, tmfloorz.89_6
	movq	-24(%rbp), %rax	# thing, tmp109
	movl	%edx, 96(%rax)	# tmfloorz.89_6, thing_23(D)->floorz
# p_map.c:540:     thing->ceilingz = tmceilingz;
	.loc 1 540 21
	movl	tmceilingz(%rip), %edx	# tmceilingz, tmceilingz.90_7
	movq	-24(%rbp), %rax	# thing, tmp110
	movl	%edx, 100(%rax)	# tmceilingz.90_7, thing_23(D)->ceilingz
# p_map.c:542:     if (onfloor)
	.loc 1 542 8
	cmpl	$0, -4(%rbp)	#, onfloor
	je	.L69	#,
# p_map.c:545: 	thing->z = thing->floorz;
	.loc 1 545 18
	movq	-24(%rbp), %rax	# thing, tmp111
	movl	96(%rax), %edx	# thing_23(D)->floorz, _8
# p_map.c:545: 	thing->z = thing->floorz;
	.loc 1 545 11
	movq	-24(%rbp), %rax	# thing, tmp112
	movl	%edx, 32(%rax)	# _8, thing_23(D)->z
	jmp	.L70	#
.L69:
# p_map.c:550: 	if (thing->z+thing->height > thing->ceilingz)
	.loc 1 550 11
	movq	-24(%rbp), %rax	# thing, tmp113
	movl	32(%rax), %edx	# thing_23(D)->z, _9
# p_map.c:550: 	if (thing->z+thing->height > thing->ceilingz)
	.loc 1 550 20
	movq	-24(%rbp), %rax	# thing, tmp114
	movl	108(%rax), %eax	# thing_23(D)->height, _10
# p_map.c:550: 	if (thing->z+thing->height > thing->ceilingz)
	.loc 1 550 14
	addl	%eax, %edx	# _10, _11
# p_map.c:550: 	if (thing->z+thing->height > thing->ceilingz)
	.loc 1 550 36
	movq	-24(%rbp), %rax	# thing, tmp115
	movl	100(%rax), %eax	# thing_23(D)->ceilingz, _12
# p_map.c:550: 	if (thing->z+thing->height > thing->ceilingz)
	.loc 1 550 5
	cmpl	%eax, %edx	# _12, _11
	jle	.L70	#,
# p_map.c:551: 	    thing->z = thing->ceilingz - thing->height;
	.loc 1 551 22
	movq	-24(%rbp), %rax	# thing, tmp116
	movl	100(%rax), %edx	# thing_23(D)->ceilingz, _13
# p_map.c:551: 	    thing->z = thing->ceilingz - thing->height;
	.loc 1 551 40
	movq	-24(%rbp), %rax	# thing, tmp117
	movl	108(%rax), %eax	# thing_23(D)->height, _14
# p_map.c:551: 	    thing->z = thing->ceilingz - thing->height;
	.loc 1 551 33
	subl	%eax, %edx	# _14, _15
# p_map.c:551: 	    thing->z = thing->ceilingz - thing->height;
	.loc 1 551 15
	movq	-24(%rbp), %rax	# thing, tmp118
	movl	%edx, 32(%rax)	# _15, thing_23(D)->z
.L70:
# p_map.c:554:     if (thing->ceilingz - thing->floorz < thing->height)
	.loc 1 554 14
	movq	-24(%rbp), %rax	# thing, tmp119
	movl	100(%rax), %edx	# thing_23(D)->ceilingz, _16
# p_map.c:554:     if (thing->ceilingz - thing->floorz < thing->height)
	.loc 1 554 32
	movq	-24(%rbp), %rax	# thing, tmp120
	movl	96(%rax), %eax	# thing_23(D)->floorz, _17
# p_map.c:554:     if (thing->ceilingz - thing->floorz < thing->height)
	.loc 1 554 25
	subl	%eax, %edx	# _17, _18
# p_map.c:554:     if (thing->ceilingz - thing->floorz < thing->height)
	.loc 1 554 48
	movq	-24(%rbp), %rax	# thing, tmp121
	movl	108(%rax), %eax	# thing_23(D)->height, _19
# p_map.c:554:     if (thing->ceilingz - thing->floorz < thing->height)
	.loc 1 554 8
	cmpl	%eax, %edx	# _19, _18
	jge	.L71	#,
# p_map.c:555: 	return false;
	.loc 1 555 9
	movl	$0, %eax	#, _20
	jmp	.L72	#
.L71:
# p_map.c:557:     return true;
	.loc 1 557 12
	movl	$1, %eax	#, _20
.L72:
# p_map.c:558: }
	.loc 1 558 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	P_ThingHeightClip, .-P_ThingHeightClip
	.globl	bestslidefrac
	.bss
	.align 4
	.type	bestslidefrac, @object
	.size	bestslidefrac, 4
bestslidefrac:
	.zero	4
	.globl	secondslidefrac
	.align 4
	.type	secondslidefrac, @object
	.size	secondslidefrac, 4
secondslidefrac:
	.zero	4
	.globl	bestslideline
	.align 8
	.type	bestslideline, @object
	.size	bestslideline, 8
bestslideline:
	.zero	8
	.globl	secondslideline
	.align 8
	.type	secondslideline, @object
	.size	secondslideline, 8
secondslideline:
	.zero	8
	.globl	slidemo
	.align 8
	.type	slidemo, @object
	.size	slidemo, 8
slidemo:
	.zero	8
	.globl	tmxmove
	.align 4
	.type	tmxmove, @object
	.size	tmxmove, 4
tmxmove:
	.zero	4
	.globl	tmymove
	.align 4
	.type	tmymove, @object
	.size	tmymove, 4
tmymove:
	.zero	4
	.text
	.globl	P_HitSlideLine
	.type	P_HitSlideLine, @function
P_HitSlideLine:
.LFB13:
	.loc 1 585 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ld, ld
# p_map.c:596:     if (ld->slopetype == ST_HORIZONTAL)
	.loc 1 596 11
	movq	-40(%rbp), %rax	# ld, tmp107
	movl	52(%rax), %eax	# ld_30(D)->slopetype, _1
# p_map.c:596:     if (ld->slopetype == ST_HORIZONTAL)
	.loc 1 596 8
	testl	%eax, %eax	# _1
	jne	.L74	#,
# p_map.c:598: 	tmymove = 0;
	.loc 1 598 10
	movl	$0, tmymove(%rip)	#, tmymove
# p_map.c:599: 	return;
	.loc 1 599 2
	jmp	.L73	#
.L74:
# p_map.c:602:     if (ld->slopetype == ST_VERTICAL)
	.loc 1 602 11
	movq	-40(%rbp), %rax	# ld, tmp108
	movl	52(%rax), %eax	# ld_30(D)->slopetype, _2
# p_map.c:602:     if (ld->slopetype == ST_VERTICAL)
	.loc 1 602 8
	cmpl	$1, %eax	#, _2
	jne	.L76	#,
# p_map.c:604: 	tmxmove = 0;
	.loc 1 604 10
	movl	$0, tmxmove(%rip)	#, tmxmove
# p_map.c:605: 	return;
	.loc 1 605 2
	jmp	.L73	#
.L76:
# p_map.c:608:     side = P_PointOnLineSide (slidemo->x, slidemo->y, ld);
	.loc 1 608 50
	movq	slidemo(%rip), %rax	# slidemo, slidemo.91_3
# p_map.c:608:     side = P_PointOnLineSide (slidemo->x, slidemo->y, ld);
	.loc 1 608 12
	movl	28(%rax), %ecx	# slidemo.91_3->y, _4
# p_map.c:608:     side = P_PointOnLineSide (slidemo->x, slidemo->y, ld);
	.loc 1 608 38
	movq	slidemo(%rip), %rax	# slidemo, slidemo.92_5
# p_map.c:608:     side = P_PointOnLineSide (slidemo->x, slidemo->y, ld);
	.loc 1 608 12
	movl	24(%rax), %eax	# slidemo.92_5->x, _6
	movq	-40(%rbp), %rdx	# ld, tmp109
	movl	%ecx, %esi	# _4,
	movl	%eax, %edi	# _6,
	call	P_PointOnLineSide@PLT	#
	movl	%eax, -16(%rbp)	# tmp110, side
# p_map.c:610:     lineangle = R_PointToAngle2 (0,0, ld->dx, ld->dy);
	.loc 1 610 17
	movq	-40(%rbp), %rax	# ld, tmp111
	movl	20(%rax), %edx	# ld_30(D)->dy, _7
	movq	-40(%rbp), %rax	# ld, tmp112
	movl	16(%rax), %eax	# ld_30(D)->dx, _8
	movl	%edx, %ecx	# _7,
	movl	%eax, %edx	# _8,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -24(%rbp)	# tmp113, lineangle
# p_map.c:612:     if (side == 1)
	.loc 1 612 8
	cmpl	$1, -16(%rbp)	#, side
	jne	.L77	#,
# p_map.c:613: 	lineangle += ANG180;
	.loc 1 613 12
	addl	$-2147483648, -24(%rbp)	#, lineangle
.L77:
# p_map.c:615:     moveangle = R_PointToAngle2 (0,0, tmxmove, tmymove);
	.loc 1 615 17
	movl	tmymove(%rip), %edx	# tmymove, tmymove.93_9
	movl	tmxmove(%rip), %eax	# tmxmove, tmxmove.94_10
	movl	%edx, %ecx	# tmymove.93_9,
	movl	%eax, %edx	# tmxmove.94_10,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -12(%rbp)	# tmp114, moveangle
# p_map.c:616:     deltaangle = moveangle-lineangle;
	.loc 1 616 16
	movl	-12(%rbp), %eax	# moveangle, tmp118
	subl	-24(%rbp), %eax	# lineangle, tmp117
	movl	%eax, -20(%rbp)	# tmp117, deltaangle
# p_map.c:618:     if (deltaangle > ANG180)
	.loc 1 618 8
	cmpl	$-2147483648, -20(%rbp)	#, deltaangle
	jbe	.L78	#,
# p_map.c:619: 	deltaangle += ANG180;
	.loc 1 619 13
	addl	$-2147483648, -20(%rbp)	#, deltaangle
.L78:
# p_map.c:622:     lineangle >>= ANGLETOFINESHIFT;
	.loc 1 622 15
	shrl	$19, -24(%rbp)	#, lineangle
# p_map.c:623:     deltaangle >>= ANGLETOFINESHIFT;
	.loc 1 623 16
	shrl	$19, -20(%rbp)	#, deltaangle
# p_map.c:625:     movelen = P_AproxDistance (tmxmove, tmymove);
	.loc 1 625 15
	movl	tmymove(%rip), %edx	# tmymove, tmymove.95_11
	movl	tmxmove(%rip), %eax	# tmxmove, tmxmove.96_12
	movl	%edx, %esi	# tmymove.95_11,
	movl	%eax, %edi	# tmxmove.96_12,
	call	P_AproxDistance@PLT	#
	movl	%eax, -8(%rbp)	# tmp119, movelen
# p_map.c:626:     newlen = FixedMul (movelen, finecosine[deltaangle]);
	.loc 1 626 43
	movq	finecosine(%rip), %rax	# finecosine, finecosine.97_13
	movl	-20(%rbp), %edx	# deltaangle, _14
	salq	$2, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
# p_map.c:626:     newlen = FixedMul (movelen, finecosine[deltaangle]);
	.loc 1 626 14
	movl	(%rax), %edx	# *_16, _17
	movl	-8(%rbp), %eax	# movelen, tmp120
	movl	%edx, %esi	# _17,
	movl	%eax, %edi	# tmp120,
	call	FixedMul@PLT	#
	movl	%eax, -4(%rbp)	# tmp121, newlen
# p_map.c:628:     tmxmove = FixedMul (newlen, finecosine[lineangle]);	
	.loc 1 628 43
	movq	finecosine(%rip), %rax	# finecosine, finecosine.98_18
	movl	-24(%rbp), %edx	# lineangle, _19
	salq	$2, %rdx	#, _20
	addq	%rdx, %rax	# _20, _21
# p_map.c:628:     tmxmove = FixedMul (newlen, finecosine[lineangle]);	
	.loc 1 628 15
	movl	(%rax), %edx	# *_21, _22
	movl	-4(%rbp), %eax	# newlen, tmp122
	movl	%edx, %esi	# _22,
	movl	%eax, %edi	# tmp122,
	call	FixedMul@PLT	#
# p_map.c:628:     tmxmove = FixedMul (newlen, finecosine[lineangle]);	
	.loc 1 628 13 discriminator 1
	movl	%eax, tmxmove(%rip)	# _23, tmxmove
# p_map.c:629:     tmymove = FixedMul (newlen, finesine[lineangle]);	
	.loc 1 629 15
	movl	-24(%rbp), %eax	# lineangle, tmp123
	leaq	0(,%rax,4), %rdx	#, tmp124
	leaq	finesine(%rip), %rax	#, tmp125
	movl	(%rdx,%rax), %edx	# finesine[lineangle_40], _24
	movl	-4(%rbp), %eax	# newlen, tmp126
	movl	%edx, %esi	# _24,
	movl	%eax, %edi	# tmp126,
	call	FixedMul@PLT	#
# p_map.c:629:     tmymove = FixedMul (newlen, finesine[lineangle]);	
	.loc 1 629 13 discriminator 1
	movl	%eax, tmymove(%rip)	# _25, tmymove
.L73:
# p_map.c:630: }
	.loc 1 630 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	P_HitSlideLine, .-P_HitSlideLine
	.section	.rodata
	.align 8
.LC0:
	.string	"PTR_SlideTraverse: not a line?"
	.text
	.globl	PTR_SlideTraverse
	.type	PTR_SlideTraverse, @function
PTR_SlideTraverse:
.LFB14:
	.loc 1 637 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# in, in
# p_map.c:640:     if (!in->isaline)
	.loc 1 640 12
	movq	-24(%rbp), %rax	# in, tmp111
	movl	4(%rax), %eax	# in_34(D)->isaline, _1
# p_map.c:640:     if (!in->isaline)
	.loc 1 640 8
	testl	%eax, %eax	# _1
	jne	.L80	#,
# p_map.c:641: 	I_Error ("PTR_SlideTraverse: not a line?");
	.loc 1 641 2
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L80:
# p_map.c:643:     li = in->d.line;
	.loc 1 643 8
	movq	-24(%rbp), %rax	# in, tmp113
	movq	8(%rax), %rax	# in_34(D)->d.line, tmp114
	movq	%rax, -8(%rbp)	# tmp114, li
# p_map.c:645:     if ( ! (li->flags & ML_TWOSIDED) )
	.loc 1 645 15
	movq	-8(%rbp), %rax	# li, tmp115
	movzwl	24(%rax), %eax	# li_36->flags, _2
# p_map.c:645:     if ( ! (li->flags & ML_TWOSIDED) )
	.loc 1 645 23
	cwtl
	andl	$4, %eax	#, _4
# p_map.c:645:     if ( ! (li->flags & ML_TWOSIDED) )
	.loc 1 645 8
	testl	%eax, %eax	# _4
	jne	.L81	#,
# p_map.c:647: 	if (P_PointOnLineSide (slidemo->x, slidemo->y, li))
	.loc 1 647 44
	movq	slidemo(%rip), %rax	# slidemo, slidemo.99_5
# p_map.c:647: 	if (P_PointOnLineSide (slidemo->x, slidemo->y, li))
	.loc 1 647 6
	movl	28(%rax), %ecx	# slidemo.99_5->y, _6
# p_map.c:647: 	if (P_PointOnLineSide (slidemo->x, slidemo->y, li))
	.loc 1 647 32
	movq	slidemo(%rip), %rax	# slidemo, slidemo.100_7
# p_map.c:647: 	if (P_PointOnLineSide (slidemo->x, slidemo->y, li))
	.loc 1 647 6
	movl	24(%rax), %eax	# slidemo.100_7->x, _8
	movq	-8(%rbp), %rdx	# li, tmp116
	movl	%ecx, %esi	# _6,
	movl	%eax, %edi	# _8,
	call	P_PointOnLineSide@PLT	#
# p_map.c:647: 	if (P_PointOnLineSide (slidemo->x, slidemo->y, li))
	.loc 1 647 5 discriminator 1
	testl	%eax, %eax	# _9
	je	.L89	#,
# p_map.c:650: 	    return true;		
	.loc 1 650 13
	movl	$1, %eax	#, _28
	jmp	.L83	#
.L81:
# p_map.c:656:     P_LineOpening (li);
	.loc 1 656 5
	movq	-8(%rbp), %rax	# li, tmp117
	movq	%rax, %rdi	# tmp117,
	call	P_LineOpening@PLT	#
# p_map.c:658:     if (openrange < slidemo->height)
	.loc 1 658 28
	movq	slidemo(%rip), %rax	# slidemo, slidemo.101_10
	movl	108(%rax), %edx	# slidemo.101_10->height, _11
# p_map.c:658:     if (openrange < slidemo->height)
	.loc 1 658 19
	movl	openrange(%rip), %eax	# openrange, openrange.102_12
# p_map.c:658:     if (openrange < slidemo->height)
	.loc 1 658 8
	cmpl	%eax, %edx	# openrange.102_12, _11
	jg	.L90	#,
# p_map.c:661:     if (opentop - slidemo->z < slidemo->height)
	.loc 1 661 17
	movl	opentop(%rip), %edx	# opentop, opentop.103_13
# p_map.c:661:     if (opentop - slidemo->z < slidemo->height)
	.loc 1 661 26
	movq	slidemo(%rip), %rax	# slidemo, slidemo.104_14
	movl	32(%rax), %eax	# slidemo.104_14->z, _15
# p_map.c:661:     if (opentop - slidemo->z < slidemo->height)
	.loc 1 661 17
	subl	%eax, %edx	# _15, _16
# p_map.c:661:     if (opentop - slidemo->z < slidemo->height)
	.loc 1 661 39
	movq	slidemo(%rip), %rax	# slidemo, slidemo.105_17
	movl	108(%rax), %eax	# slidemo.105_17->height, _18
# p_map.c:661:     if (opentop - slidemo->z < slidemo->height)
	.loc 1 661 8
	cmpl	%eax, %edx	# _18, _16
	jl	.L91	#,
# p_map.c:664:     if (openbottom - slidemo->z > 24*FRACUNIT )
	.loc 1 664 20
	movl	openbottom(%rip), %edx	# openbottom, openbottom.106_19
# p_map.c:664:     if (openbottom - slidemo->z > 24*FRACUNIT )
	.loc 1 664 29
	movq	slidemo(%rip), %rax	# slidemo, slidemo.107_20
	movl	32(%rax), %eax	# slidemo.107_20->z, _21
# p_map.c:664:     if (openbottom - slidemo->z > 24*FRACUNIT )
	.loc 1 664 20
	subl	%eax, %edx	# _21, _22
# p_map.c:664:     if (openbottom - slidemo->z > 24*FRACUNIT )
	.loc 1 664 8
	cmpl	$1572864, %edx	#, _22
	jg	.L92	#,
# p_map.c:668:     return true;		
	.loc 1 668 12
	movl	$1, %eax	#, _28
	jmp	.L83	#
.L89:
# p_map.c:652: 	goto isblocking;
	.loc 1 652 2
	nop	
	jmp	.L84	#
.L90:
# p_map.c:659: 	goto isblocking;		// doesn't fit
	.loc 1 659 2
	nop	
	jmp	.L84	#
.L91:
# p_map.c:662: 	goto isblocking;		// mobj is too high
	.loc 1 662 2
	nop	
	jmp	.L84	#
.L92:
# p_map.c:665: 	goto isblocking;		// too big a step up
	.loc 1 665 2
	nop	
.L84:
# p_map.c:673:     if (in->frac < bestslidefrac)
	.loc 1 673 11
	movq	-24(%rbp), %rax	# in, tmp118
	movl	(%rax), %edx	# in_34(D)->frac, _23
# p_map.c:673:     if (in->frac < bestslidefrac)
	.loc 1 673 18
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.108_24
# p_map.c:673:     if (in->frac < bestslidefrac)
	.loc 1 673 8
	cmpl	%eax, %edx	# bestslidefrac.108_24, _23
	jge	.L88	#,
# p_map.c:675: 	secondslidefrac = bestslidefrac;
	.loc 1 675 18
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.109_25
	movl	%eax, secondslidefrac(%rip)	# bestslidefrac.109_25, secondslidefrac
# p_map.c:676: 	secondslideline = bestslideline;
	.loc 1 676 18
	movq	bestslideline(%rip), %rax	# bestslideline, bestslideline.110_26
	movq	%rax, secondslideline(%rip)	# bestslideline.110_26, secondslideline
# p_map.c:677: 	bestslidefrac = in->frac;
	.loc 1 677 20
	movq	-24(%rbp), %rax	# in, tmp119
	movl	(%rax), %eax	# in_34(D)->frac, _27
# p_map.c:677: 	bestslidefrac = in->frac;
	.loc 1 677 16
	movl	%eax, bestslidefrac(%rip)	# _27, bestslidefrac
# p_map.c:678: 	bestslideline = li;
	.loc 1 678 16
	movq	-8(%rbp), %rax	# li, tmp120
	movq	%rax, bestslideline(%rip)	# tmp120, bestslideline
.L88:
# p_map.c:681:     return false;	// stop
	.loc 1 681 12
	movl	$0, %eax	#, _28
.L83:
# p_map.c:682: }
	.loc 1 682 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	PTR_SlideTraverse, .-PTR_SlideTraverse
	.globl	P_SlideMove
	.type	P_SlideMove, @function
P_SlideMove:
.LFB15:
	.loc 1 696 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mo, mo
# p_map.c:705:     slidemo = mo;
	.loc 1 705 13
	movq	-40(%rbp), %rax	# mo, tmp154
	movq	%rax, slidemo(%rip)	# tmp154, slidemo
# p_map.c:706:     hitcount = 0;
	.loc 1 706 14
	movl	$0, -12(%rbp)	#, hitcount
.L94:
# p_map.c:709:     if (++hitcount == 3)
	.loc 1 709 8
	addl	$1, -12(%rbp)	#, hitcount
	cmpl	$3, -12(%rbp)	#, hitcount
	je	.L107	#,
# p_map.c:714:     if (mo->momx > 0)
	.loc 1 714 11
	movq	-40(%rbp), %rax	# mo, tmp155
	movl	112(%rax), %eax	# mo_85(D)->momx, _1
# p_map.c:714:     if (mo->momx > 0)
	.loc 1 714 8
	testl	%eax, %eax	# _1
	jle	.L97	#,
# p_map.c:716: 	leadx = mo->x + mo->radius;
	.loc 1 716 12
	movq	-40(%rbp), %rax	# mo, tmp156
	movl	24(%rax), %edx	# mo_85(D)->x, _2
# p_map.c:716: 	leadx = mo->x + mo->radius;
	.loc 1 716 20
	movq	-40(%rbp), %rax	# mo, tmp157
	movl	104(%rax), %eax	# mo_85(D)->radius, _3
# p_map.c:716: 	leadx = mo->x + mo->radius;
	.loc 1 716 8
	addl	%edx, %eax	# _2, tmp158
	movl	%eax, -28(%rbp)	# tmp158, leadx
# p_map.c:717: 	trailx = mo->x - mo->radius;
	.loc 1 717 13
	movq	-40(%rbp), %rax	# mo, tmp159
	movl	24(%rax), %edx	# mo_85(D)->x, _4
# p_map.c:717: 	trailx = mo->x - mo->radius;
	.loc 1 717 21
	movq	-40(%rbp), %rax	# mo, tmp160
	movl	104(%rax), %eax	# mo_85(D)->radius, _5
# p_map.c:717: 	trailx = mo->x - mo->radius;
	.loc 1 717 9
	subl	%eax, %edx	# _5, tmp161
	movl	%edx, -20(%rbp)	# tmp161, trailx
	jmp	.L98	#
.L97:
# p_map.c:721: 	leadx = mo->x - mo->radius;
	.loc 1 721 12
	movq	-40(%rbp), %rax	# mo, tmp162
	movl	24(%rax), %edx	# mo_85(D)->x, _6
# p_map.c:721: 	leadx = mo->x - mo->radius;
	.loc 1 721 20
	movq	-40(%rbp), %rax	# mo, tmp163
	movl	104(%rax), %eax	# mo_85(D)->radius, _7
# p_map.c:721: 	leadx = mo->x - mo->radius;
	.loc 1 721 8
	subl	%eax, %edx	# _7, tmp164
	movl	%edx, -28(%rbp)	# tmp164, leadx
# p_map.c:722: 	trailx = mo->x + mo->radius;
	.loc 1 722 13
	movq	-40(%rbp), %rax	# mo, tmp165
	movl	24(%rax), %edx	# mo_85(D)->x, _8
# p_map.c:722: 	trailx = mo->x + mo->radius;
	.loc 1 722 21
	movq	-40(%rbp), %rax	# mo, tmp166
	movl	104(%rax), %eax	# mo_85(D)->radius, _9
# p_map.c:722: 	trailx = mo->x + mo->radius;
	.loc 1 722 9
	addl	%edx, %eax	# _8, tmp167
	movl	%eax, -20(%rbp)	# tmp167, trailx
.L98:
# p_map.c:725:     if (mo->momy > 0)
	.loc 1 725 11
	movq	-40(%rbp), %rax	# mo, tmp168
	movl	116(%rax), %eax	# mo_85(D)->momy, _10
# p_map.c:725:     if (mo->momy > 0)
	.loc 1 725 8
	testl	%eax, %eax	# _10
	jle	.L99	#,
# p_map.c:727: 	leady = mo->y + mo->radius;
	.loc 1 727 12
	movq	-40(%rbp), %rax	# mo, tmp169
	movl	28(%rax), %edx	# mo_85(D)->y, _11
# p_map.c:727: 	leady = mo->y + mo->radius;
	.loc 1 727 20
	movq	-40(%rbp), %rax	# mo, tmp170
	movl	104(%rax), %eax	# mo_85(D)->radius, _12
# p_map.c:727: 	leady = mo->y + mo->radius;
	.loc 1 727 8
	addl	%edx, %eax	# _11, tmp171
	movl	%eax, -24(%rbp)	# tmp171, leady
# p_map.c:728: 	traily = mo->y - mo->radius;
	.loc 1 728 13
	movq	-40(%rbp), %rax	# mo, tmp172
	movl	28(%rax), %edx	# mo_85(D)->y, _13
# p_map.c:728: 	traily = mo->y - mo->radius;
	.loc 1 728 21
	movq	-40(%rbp), %rax	# mo, tmp173
	movl	104(%rax), %eax	# mo_85(D)->radius, _14
# p_map.c:728: 	traily = mo->y - mo->radius;
	.loc 1 728 9
	subl	%eax, %edx	# _14, tmp174
	movl	%edx, -16(%rbp)	# tmp174, traily
	jmp	.L100	#
.L99:
# p_map.c:732: 	leady = mo->y - mo->radius;
	.loc 1 732 12
	movq	-40(%rbp), %rax	# mo, tmp175
	movl	28(%rax), %edx	# mo_85(D)->y, _15
# p_map.c:732: 	leady = mo->y - mo->radius;
	.loc 1 732 20
	movq	-40(%rbp), %rax	# mo, tmp176
	movl	104(%rax), %eax	# mo_85(D)->radius, _16
# p_map.c:732: 	leady = mo->y - mo->radius;
	.loc 1 732 8
	subl	%eax, %edx	# _16, tmp177
	movl	%edx, -24(%rbp)	# tmp177, leady
# p_map.c:733: 	traily = mo->y + mo->radius;
	.loc 1 733 13
	movq	-40(%rbp), %rax	# mo, tmp178
	movl	28(%rax), %edx	# mo_85(D)->y, _17
# p_map.c:733: 	traily = mo->y + mo->radius;
	.loc 1 733 21
	movq	-40(%rbp), %rax	# mo, tmp179
	movl	104(%rax), %eax	# mo_85(D)->radius, _18
# p_map.c:733: 	traily = mo->y + mo->radius;
	.loc 1 733 9
	addl	%edx, %eax	# _17, tmp180
	movl	%eax, -16(%rbp)	# tmp180, traily
.L100:
# p_map.c:736:     bestslidefrac = FRACUNIT+1;
	.loc 1 736 19
	movl	$65537, bestslidefrac(%rip)	#, bestslidefrac
# p_map.c:738:     P_PathTraverse ( leadx, leady, leadx+mo->momx, leady+mo->momy,
	.loc 1 738 60
	movq	-40(%rbp), %rax	# mo, tmp181
	movl	116(%rax), %edx	# mo_85(D)->momy, _19
# p_map.c:738:     P_PathTraverse ( leadx, leady, leadx+mo->momx, leady+mo->momy,
	.loc 1 738 5
	movl	-24(%rbp), %eax	# leady, tmp182
	leal	(%rdx,%rax), %ecx	#, _20
# p_map.c:738:     P_PathTraverse ( leadx, leady, leadx+mo->momx, leady+mo->momy,
	.loc 1 738 44
	movq	-40(%rbp), %rax	# mo, tmp183
	movl	112(%rax), %edx	# mo_85(D)->momx, _21
# p_map.c:738:     P_PathTraverse ( leadx, leady, leadx+mo->momx, leady+mo->momy,
	.loc 1 738 5
	movl	-28(%rbp), %eax	# leadx, tmp184
	addl	%eax, %edx	# tmp184, _22
	movl	-24(%rbp), %esi	# leady, tmp185
	movl	-28(%rbp), %eax	# leadx, tmp186
	leaq	PTR_SlideTraverse(%rip), %r9	#,
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp186,
	call	P_PathTraverse@PLT	#
# p_map.c:740:     P_PathTraverse ( trailx, leady, trailx+mo->momx, leady+mo->momy,
	.loc 1 740 62
	movq	-40(%rbp), %rax	# mo, tmp187
	movl	116(%rax), %edx	# mo_85(D)->momy, _23
# p_map.c:740:     P_PathTraverse ( trailx, leady, trailx+mo->momx, leady+mo->momy,
	.loc 1 740 5
	movl	-24(%rbp), %eax	# leady, tmp188
	leal	(%rdx,%rax), %ecx	#, _24
# p_map.c:740:     P_PathTraverse ( trailx, leady, trailx+mo->momx, leady+mo->momy,
	.loc 1 740 46
	movq	-40(%rbp), %rax	# mo, tmp189
	movl	112(%rax), %edx	# mo_85(D)->momx, _25
# p_map.c:740:     P_PathTraverse ( trailx, leady, trailx+mo->momx, leady+mo->momy,
	.loc 1 740 5
	movl	-20(%rbp), %eax	# trailx, tmp190
	addl	%eax, %edx	# tmp190, _26
	movl	-24(%rbp), %esi	# leady, tmp191
	movl	-20(%rbp), %eax	# trailx, tmp192
	leaq	PTR_SlideTraverse(%rip), %r9	#,
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp192,
	call	P_PathTraverse@PLT	#
# p_map.c:742:     P_PathTraverse ( leadx, traily, leadx+mo->momx, traily+mo->momy,
	.loc 1 742 62
	movq	-40(%rbp), %rax	# mo, tmp193
	movl	116(%rax), %edx	# mo_85(D)->momy, _27
# p_map.c:742:     P_PathTraverse ( leadx, traily, leadx+mo->momx, traily+mo->momy,
	.loc 1 742 5
	movl	-16(%rbp), %eax	# traily, tmp194
	leal	(%rdx,%rax), %ecx	#, _28
# p_map.c:742:     P_PathTraverse ( leadx, traily, leadx+mo->momx, traily+mo->momy,
	.loc 1 742 45
	movq	-40(%rbp), %rax	# mo, tmp195
	movl	112(%rax), %edx	# mo_85(D)->momx, _29
# p_map.c:742:     P_PathTraverse ( leadx, traily, leadx+mo->momx, traily+mo->momy,
	.loc 1 742 5
	movl	-28(%rbp), %eax	# leadx, tmp196
	addl	%eax, %edx	# tmp196, _30
	movl	-16(%rbp), %esi	# traily, tmp197
	movl	-28(%rbp), %eax	# leadx, tmp198
	leaq	PTR_SlideTraverse(%rip), %r9	#,
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp198,
	call	P_PathTraverse@PLT	#
# p_map.c:746:     if (bestslidefrac == FRACUNIT+1)
	.loc 1 746 23
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.111_31
# p_map.c:746:     if (bestslidefrac == FRACUNIT+1)
	.loc 1 746 8
	cmpl	$65537, %eax	#, bestslidefrac.111_31
	jne	.L101	#,
# p_map.c:749:       stairstep:
	.loc 1 749 7
	jmp	.L96	#
.L107:
# p_map.c:710: 	goto stairstep;		// don't loop forever
	.loc 1 710 2
	nop	
	jmp	.L96	#
.L109:
# p_map.c:763: 	    goto stairstep;
	.loc 1 763 6
	nop	
.L96:
# p_map.c:750: 	if (!P_TryMove (mo, mo->x, mo->y + mo->momy))
	.loc 1 750 31
	movq	-40(%rbp), %rax	# mo, tmp199
	movl	28(%rax), %edx	# mo_85(D)->y, _32
# p_map.c:750: 	if (!P_TryMove (mo, mo->x, mo->y + mo->momy))
	.loc 1 750 39
	movq	-40(%rbp), %rax	# mo, tmp200
	movl	116(%rax), %eax	# mo_85(D)->momy, _33
# p_map.c:750: 	if (!P_TryMove (mo, mo->x, mo->y + mo->momy))
	.loc 1 750 7
	addl	%eax, %edx	# _33, _34
	movq	-40(%rbp), %rax	# mo, tmp201
	movl	24(%rax), %ecx	# mo_85(D)->x, _35
	movq	-40(%rbp), %rax	# mo, tmp202
	movl	%ecx, %esi	# _35,
	movq	%rax, %rdi	# tmp202,
	call	P_TryMove	#
# p_map.c:750: 	if (!P_TryMove (mo, mo->x, mo->y + mo->momy))
	.loc 1 750 5 discriminator 1
	testl	%eax, %eax	# _36
	jne	.L108	#,
# p_map.c:751: 	    P_TryMove (mo, mo->x + mo->momx, mo->y);
	.loc 1 751 6
	movq	-40(%rbp), %rax	# mo, tmp203
	movl	28(%rax), %edx	# mo_85(D)->y, _37
# p_map.c:751: 	    P_TryMove (mo, mo->x + mo->momx, mo->y);
	.loc 1 751 23
	movq	-40(%rbp), %rax	# mo, tmp204
	movl	24(%rax), %ecx	# mo_85(D)->x, _38
# p_map.c:751: 	    P_TryMove (mo, mo->x + mo->momx, mo->y);
	.loc 1 751 31
	movq	-40(%rbp), %rax	# mo, tmp205
	movl	112(%rax), %eax	# mo_85(D)->momx, _39
# p_map.c:751: 	    P_TryMove (mo, mo->x + mo->momx, mo->y);
	.loc 1 751 6
	addl	%eax, %ecx	# _39, _40
	movq	-40(%rbp), %rax	# mo, tmp206
	movl	%ecx, %esi	# _40,
	movq	%rax, %rdi	# tmp206,
	call	P_TryMove	#
# p_map.c:752: 	return;
	.loc 1 752 2
	jmp	.L108	#
.L101:
# p_map.c:756:     bestslidefrac -= 0x800;	
	.loc 1 756 19
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.112_41
	subl	$2048, %eax	#, _42
	movl	%eax, bestslidefrac(%rip)	# _42, bestslidefrac
# p_map.c:757:     if (bestslidefrac > 0)
	.loc 1 757 23
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.113_43
# p_map.c:757:     if (bestslidefrac > 0)
	.loc 1 757 8
	testl	%eax, %eax	# bestslidefrac.113_43
	jle	.L104	#,
# p_map.c:759: 	newx = FixedMul (mo->momx, bestslidefrac);
	.loc 1 759 9
	movl	bestslidefrac(%rip), %edx	# bestslidefrac, bestslidefrac.114_44
	movq	-40(%rbp), %rax	# mo, tmp207
	movl	112(%rax), %eax	# mo_85(D)->momx, _45
	movl	%edx, %esi	# bestslidefrac.114_44,
	movl	%eax, %edi	# _45,
	call	FixedMul@PLT	#
	movl	%eax, -8(%rbp)	# tmp208, newx
# p_map.c:760: 	newy = FixedMul (mo->momy, bestslidefrac);
	.loc 1 760 9
	movl	bestslidefrac(%rip), %edx	# bestslidefrac, bestslidefrac.115_46
	movq	-40(%rbp), %rax	# mo, tmp209
	movl	116(%rax), %eax	# mo_85(D)->momy, _47
	movl	%edx, %esi	# bestslidefrac.115_46,
	movl	%eax, %edi	# _47,
	call	FixedMul@PLT	#
	movl	%eax, -4(%rbp)	# tmp210, newy
# p_map.c:762: 	if (!P_TryMove (mo, mo->x+newx, mo->y+newy))
	.loc 1 762 36
	movq	-40(%rbp), %rax	# mo, tmp211
	movl	28(%rax), %edx	# mo_85(D)->y, _48
# p_map.c:762: 	if (!P_TryMove (mo, mo->x+newx, mo->y+newy))
	.loc 1 762 7
	movl	-4(%rbp), %eax	# newy, tmp212
	addl	%eax, %edx	# tmp212, _49
# p_map.c:762: 	if (!P_TryMove (mo, mo->x+newx, mo->y+newy))
	.loc 1 762 24
	movq	-40(%rbp), %rax	# mo, tmp213
	movl	24(%rax), %ecx	# mo_85(D)->x, _50
# p_map.c:762: 	if (!P_TryMove (mo, mo->x+newx, mo->y+newy))
	.loc 1 762 7
	movl	-8(%rbp), %eax	# newx, tmp214
	addl	%eax, %ecx	# tmp214, _51
	movq	-40(%rbp), %rax	# mo, tmp215
	movl	%ecx, %esi	# _51,
	movq	%rax, %rdi	# tmp215,
	call	P_TryMove	#
# p_map.c:762: 	if (!P_TryMove (mo, mo->x+newx, mo->y+newy))
	.loc 1 762 5 discriminator 1
	testl	%eax, %eax	# _52
	je	.L109	#,
.L104:
# p_map.c:768:     bestslidefrac = FRACUNIT-(bestslidefrac+0x800);
	.loc 1 768 29
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.116_53
	movl	$63488, %edx	#, tmp216
	subl	%eax, %edx	# bestslidefrac.116_53, _54
# p_map.c:768:     bestslidefrac = FRACUNIT-(bestslidefrac+0x800);
	.loc 1 768 19
	movl	%edx, bestslidefrac(%rip)	# _54, bestslidefrac
# p_map.c:770:     if (bestslidefrac > FRACUNIT)
	.loc 1 770 23
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.117_55
# p_map.c:770:     if (bestslidefrac > FRACUNIT)
	.loc 1 770 8
	cmpl	$65536, %eax	#, bestslidefrac.117_55
	jle	.L105	#,
# p_map.c:771: 	bestslidefrac = FRACUNIT;
	.loc 1 771 16
	movl	$65536, bestslidefrac(%rip)	#, bestslidefrac
.L105:
# p_map.c:773:     if (bestslidefrac <= 0)
	.loc 1 773 23
	movl	bestslidefrac(%rip), %eax	# bestslidefrac, bestslidefrac.118_56
# p_map.c:773:     if (bestslidefrac <= 0)
	.loc 1 773 8
	testl	%eax, %eax	# bestslidefrac.118_56
	jle	.L110	#,
# p_map.c:776:     tmxmove = FixedMul (mo->momx, bestslidefrac);
	.loc 1 776 15
	movl	bestslidefrac(%rip), %edx	# bestslidefrac, bestslidefrac.119_57
	movq	-40(%rbp), %rax	# mo, tmp217
	movl	112(%rax), %eax	# mo_85(D)->momx, _58
	movl	%edx, %esi	# bestslidefrac.119_57,
	movl	%eax, %edi	# _58,
	call	FixedMul@PLT	#
# p_map.c:776:     tmxmove = FixedMul (mo->momx, bestslidefrac);
	.loc 1 776 13 discriminator 1
	movl	%eax, tmxmove(%rip)	# _59, tmxmove
# p_map.c:777:     tmymove = FixedMul (mo->momy, bestslidefrac);
	.loc 1 777 15
	movl	bestslidefrac(%rip), %edx	# bestslidefrac, bestslidefrac.120_60
	movq	-40(%rbp), %rax	# mo, tmp218
	movl	116(%rax), %eax	# mo_85(D)->momy, _61
	movl	%edx, %esi	# bestslidefrac.120_60,
	movl	%eax, %edi	# _61,
	call	FixedMul@PLT	#
# p_map.c:777:     tmymove = FixedMul (mo->momy, bestslidefrac);
	.loc 1 777 13 discriminator 1
	movl	%eax, tmymove(%rip)	# _62, tmymove
# p_map.c:779:     P_HitSlideLine (bestslideline);	// clip the moves
	.loc 1 779 5
	movq	bestslideline(%rip), %rax	# bestslideline, bestslideline.121_63
	movq	%rax, %rdi	# bestslideline.121_63,
	call	P_HitSlideLine	#
# p_map.c:781:     mo->momx = tmxmove;
	.loc 1 781 14
	movl	tmxmove(%rip), %edx	# tmxmove, tmxmove.122_64
	movq	-40(%rbp), %rax	# mo, tmp219
	movl	%edx, 112(%rax)	# tmxmove.122_64, mo_85(D)->momx
# p_map.c:782:     mo->momy = tmymove;
	.loc 1 782 14
	movl	tmymove(%rip), %edx	# tmymove, tmymove.123_65
	movq	-40(%rbp), %rax	# mo, tmp220
	movl	%edx, 116(%rax)	# tmymove.123_65, mo_85(D)->momy
# p_map.c:784:     if (!P_TryMove (mo, mo->x+tmxmove, mo->y+tmymove))
	.loc 1 784 42
	movq	-40(%rbp), %rax	# mo, tmp221
	movl	28(%rax), %edx	# mo_85(D)->y, _66
# p_map.c:784:     if (!P_TryMove (mo, mo->x+tmxmove, mo->y+tmymove))
	.loc 1 784 10
	movl	tmymove(%rip), %eax	# tmymove, tmymove.124_67
	addl	%eax, %edx	# tmymove.124_67, _68
# p_map.c:784:     if (!P_TryMove (mo, mo->x+tmxmove, mo->y+tmymove))
	.loc 1 784 27
	movq	-40(%rbp), %rax	# mo, tmp222
	movl	24(%rax), %ecx	# mo_85(D)->x, _69
# p_map.c:784:     if (!P_TryMove (mo, mo->x+tmxmove, mo->y+tmymove))
	.loc 1 784 10
	movl	tmxmove(%rip), %eax	# tmxmove, tmxmove.125_70
	addl	%eax, %ecx	# tmxmove.125_70, _71
	movq	-40(%rbp), %rax	# mo, tmp223
	movl	%ecx, %esi	# _71,
	movq	%rax, %rdi	# tmp223,
	call	P_TryMove	#
# p_map.c:784:     if (!P_TryMove (mo, mo->x+tmxmove, mo->y+tmymove))
	.loc 1 784 8 discriminator 1
	testl	%eax, %eax	# _72
	jne	.L93	#,
# p_map.c:786: 	goto retry;
	.loc 1 786 2
	jmp	.L94	#
.L108:
# p_map.c:752: 	return;
	.loc 1 752 2
	nop	
	jmp	.L93	#
.L110:
# p_map.c:774: 	return;
	.loc 1 774 2
	nop	
.L93:
# p_map.c:788: }
	.loc 1 788 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	P_SlideMove, .-P_SlideMove
	.globl	linetarget
	.bss
	.align 8
	.type	linetarget, @object
	.size	linetarget, 8
linetarget:
	.zero	8
	.globl	shootthing
	.align 8
	.type	shootthing, @object
	.size	shootthing, 8
shootthing:
	.zero	8
	.globl	shootz
	.align 4
	.type	shootz, @object
	.size	shootz, 4
shootz:
	.zero	4
	.globl	la_damage
	.align 4
	.type	la_damage, @object
	.size	la_damage, 4
la_damage:
	.zero	4
	.globl	attackrange
	.align 4
	.type	attackrange, @object
	.size	attackrange, 4
attackrange:
	.zero	4
	.globl	aimslope
	.align 4
	.type	aimslope, @object
	.size	aimslope, 4
aimslope:
	.zero	4
	.text
	.globl	PTR_AimTraverse
	.type	PTR_AimTraverse, @function
PTR_AimTraverse:
.LFB16:
	.loc 1 817 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# in, in
# p_map.c:825:     if (in->isaline)
	.loc 1 825 11
	movq	-40(%rbp), %rax	# in, tmp129
	movl	4(%rax), %eax	# in_53(D)->isaline, _1
# p_map.c:825:     if (in->isaline)
	.loc 1 825 8
	testl	%eax, %eax	# _1
	je	.L112	#,
# p_map.c:827: 	li = in->d.line;
	.loc 1 827 5
	movq	-40(%rbp), %rax	# in, tmp130
	movq	8(%rax), %rax	# in_53(D)->d.line, tmp131
	movq	%rax, -8(%rbp)	# tmp131, li
# p_map.c:829: 	if ( !(li->flags & ML_TWOSIDED) )
	.loc 1 829 11
	movq	-8(%rbp), %rax	# li, tmp132
	movzwl	24(%rax), %eax	# li_70->flags, _2
# p_map.c:829: 	if ( !(li->flags & ML_TWOSIDED) )
	.loc 1 829 19
	cwtl
	andl	$4, %eax	#, _4
# p_map.c:829: 	if ( !(li->flags & ML_TWOSIDED) )
	.loc 1 829 5
	testl	%eax, %eax	# _4
	jne	.L113	#,
# p_map.c:830: 	    return false;		// stop
	.loc 1 830 13
	movl	$0, %eax	#, _48
	jmp	.L114	#
.L113:
# p_map.c:835: 	P_LineOpening (li);
	.loc 1 835 2
	movq	-8(%rbp), %rax	# li, tmp133
	movq	%rax, %rdi	# tmp133,
	call	P_LineOpening@PLT	#
# p_map.c:837: 	if (openbottom >= opentop)
	.loc 1 837 17
	movl	openbottom(%rip), %edx	# openbottom, openbottom.126_5
	movl	opentop(%rip), %eax	# opentop, opentop.127_6
# p_map.c:837: 	if (openbottom >= opentop)
	.loc 1 837 5
	cmpl	%eax, %edx	# opentop.127_6, openbottom.126_5
	jl	.L115	#,
# p_map.c:838: 	    return false;		// stop
	.loc 1 838 13
	movl	$0, %eax	#, _48
	jmp	.L114	#
.L115:
# p_map.c:840: 	dist = FixedMul (attackrange, in->frac);
	.loc 1 840 9
	movq	-40(%rbp), %rax	# in, tmp134
	movl	(%rax), %edx	# in_53(D)->frac, _7
	movl	attackrange(%rip), %eax	# attackrange, attackrange.128_8
	movl	%edx, %esi	# _7,
	movl	%eax, %edi	# attackrange.128_8,
	call	FixedMul@PLT	#
	movl	%eax, -24(%rbp)	# tmp135, dist
# p_map.c:842: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 842 8
	movq	-8(%rbp), %rax	# li, tmp136
	movq	56(%rax), %rax	# li_70->frontsector, _9
# p_map.c:842: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 842 21
	movl	(%rax), %edx	# _9->floorheight, _10
# p_map.c:842: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 842 40
	movq	-8(%rbp), %rax	# li, tmp137
	movq	64(%rax), %rax	# li_70->backsector, _11
# p_map.c:842: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 842 52
	movl	(%rax), %eax	# _11->floorheight, _12
# p_map.c:842: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 842 5
	cmpl	%eax, %edx	# _12, _10
	je	.L116	#,
# p_map.c:844: 	    slope = FixedDiv (openbottom - shootz , dist);
	.loc 1 844 14
	movl	openbottom(%rip), %edx	# openbottom, openbottom.129_13
	movl	shootz(%rip), %eax	# shootz, shootz.130_14
	subl	%eax, %edx	# shootz.130_14, _15
	movl	-24(%rbp), %eax	# dist, tmp138
	movl	%eax, %esi	# tmp138,
	movl	%edx, %edi	# _15,
	call	FixedDiv@PLT	#
	movl	%eax, -20(%rbp)	# tmp139, slope
# p_map.c:845: 	    if (slope > bottomslope)
	.loc 1 845 16
	movl	bottomslope(%rip), %eax	# bottomslope, bottomslope.131_16
# p_map.c:845: 	    if (slope > bottomslope)
	.loc 1 845 9
	cmpl	%eax, -20(%rbp)	# bottomslope.131_16, slope
	jle	.L116	#,
# p_map.c:846: 		bottomslope = slope;
	.loc 1 846 15
	movl	-20(%rbp), %eax	# slope, tmp140
	movl	%eax, bottomslope(%rip)	# tmp140, bottomslope
.L116:
# p_map.c:849: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 849 8
	movq	-8(%rbp), %rax	# li, tmp141
	movq	56(%rax), %rax	# li_70->frontsector, _17
# p_map.c:849: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 849 21
	movl	4(%rax), %edx	# _17->ceilingheight, _18
# p_map.c:849: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 849 42
	movq	-8(%rbp), %rax	# li, tmp142
	movq	64(%rax), %rax	# li_70->backsector, _19
# p_map.c:849: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 849 54
	movl	4(%rax), %eax	# _19->ceilingheight, _20
# p_map.c:849: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 849 5
	cmpl	%eax, %edx	# _20, _18
	je	.L117	#,
# p_map.c:851: 	    slope = FixedDiv (opentop - shootz , dist);
	.loc 1 851 14
	movl	opentop(%rip), %edx	# opentop, opentop.132_21
	movl	shootz(%rip), %eax	# shootz, shootz.133_22
	subl	%eax, %edx	# shootz.133_22, _23
	movl	-24(%rbp), %eax	# dist, tmp143
	movl	%eax, %esi	# tmp143,
	movl	%edx, %edi	# _23,
	call	FixedDiv@PLT	#
	movl	%eax, -20(%rbp)	# tmp144, slope
# p_map.c:852: 	    if (slope < topslope)
	.loc 1 852 16
	movl	topslope(%rip), %eax	# topslope, topslope.134_24
# p_map.c:852: 	    if (slope < topslope)
	.loc 1 852 9
	cmpl	%eax, -20(%rbp)	# topslope.134_24, slope
	jge	.L117	#,
# p_map.c:853: 		topslope = slope;
	.loc 1 853 12
	movl	-20(%rbp), %eax	# slope, tmp145
	movl	%eax, topslope(%rip)	# tmp145, topslope
.L117:
# p_map.c:856: 	if (topslope <= bottomslope)
	.loc 1 856 15
	movl	topslope(%rip), %edx	# topslope, topslope.135_25
	movl	bottomslope(%rip), %eax	# bottomslope, bottomslope.136_26
# p_map.c:856: 	if (topslope <= bottomslope)
	.loc 1 856 5
	cmpl	%eax, %edx	# bottomslope.136_26, topslope.135_25
	jg	.L118	#,
# p_map.c:857: 	    return false;		// stop
	.loc 1 857 13
	movl	$0, %eax	#, _48
	jmp	.L114	#
.L118:
# p_map.c:859: 	return true;			// shot continues
	.loc 1 859 9
	movl	$1, %eax	#, _48
	jmp	.L114	#
.L112:
# p_map.c:863:     th = in->d.thing;
	.loc 1 863 8
	movq	-40(%rbp), %rax	# in, tmp146
	movq	8(%rax), %rax	# in_53(D)->d.thing, tmp147
	movq	%rax, -16(%rbp)	# tmp147, th
# p_map.c:864:     if (th == shootthing)
	.loc 1 864 12
	movq	shootthing(%rip), %rax	# shootthing, shootthing.137_27
# p_map.c:864:     if (th == shootthing)
	.loc 1 864 8
	cmpq	%rax, -16(%rbp)	# shootthing.137_27, th
	jne	.L119	#,
# p_map.c:865: 	return true;			// can't shoot self
	.loc 1 865 9
	movl	$1, %eax	#, _48
	jmp	.L114	#
.L119:
# p_map.c:867:     if (!(th->flags&MF_SHOOTABLE))
	.loc 1 867 13
	movq	-16(%rbp), %rax	# th, tmp148
	movl	160(%rax), %eax	# th_54->flags, _28
# p_map.c:867:     if (!(th->flags&MF_SHOOTABLE))
	.loc 1 867 20
	andl	$4, %eax	#, _29
# p_map.c:867:     if (!(th->flags&MF_SHOOTABLE))
	.loc 1 867 8
	testl	%eax, %eax	# _29
	jne	.L120	#,
# p_map.c:868: 	return true;			// corpse or something
	.loc 1 868 9
	movl	$1, %eax	#, _48
	jmp	.L114	#
.L120:
# p_map.c:871:     dist = FixedMul (attackrange, in->frac);
	.loc 1 871 12
	movq	-40(%rbp), %rax	# in, tmp149
	movl	(%rax), %edx	# in_53(D)->frac, _30
	movl	attackrange(%rip), %eax	# attackrange, attackrange.138_31
	movl	%edx, %esi	# _30,
	movl	%eax, %edi	# attackrange.138_31,
	call	FixedMul@PLT	#
	movl	%eax, -24(%rbp)	# tmp150, dist
# p_map.c:872:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 872 33
	movq	-16(%rbp), %rax	# th, tmp151
	movl	32(%rax), %edx	# th_54->z, _32
# p_map.c:872:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 872 39
	movq	-16(%rbp), %rax	# th, tmp152
	movl	108(%rax), %eax	# th_54->height, _33
# p_map.c:872:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 872 36
	addl	%eax, %edx	# _33, _34
# p_map.c:872:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 872 21
	movl	shootz(%rip), %eax	# shootz, shootz.139_35
	subl	%eax, %edx	# shootz.139_35, _36
	movl	-24(%rbp), %eax	# dist, tmp153
	movl	%eax, %esi	# tmp153,
	movl	%edx, %edi	# _36,
	call	FixedDiv@PLT	#
	movl	%eax, -32(%rbp)	# tmp154, thingtopslope
# p_map.c:874:     if (thingtopslope < bottomslope)
	.loc 1 874 23
	movl	bottomslope(%rip), %eax	# bottomslope, bottomslope.140_37
# p_map.c:874:     if (thingtopslope < bottomslope)
	.loc 1 874 8
	cmpl	%eax, -32(%rbp)	# bottomslope.140_37, thingtopslope
	jge	.L121	#,
# p_map.c:875: 	return true;			// shot over the thing
	.loc 1 875 9
	movl	$1, %eax	#, _48
	jmp	.L114	#
.L121:
# p_map.c:877:     thingbottomslope = FixedDiv (th->z - shootz, dist);
	.loc 1 877 36
	movq	-16(%rbp), %rax	# th, tmp155
	movl	32(%rax), %edx	# th_54->z, _38
# p_map.c:877:     thingbottomslope = FixedDiv (th->z - shootz, dist);
	.loc 1 877 24
	movl	shootz(%rip), %eax	# shootz, shootz.141_39
	subl	%eax, %edx	# shootz.141_39, _40
	movl	-24(%rbp), %eax	# dist, tmp156
	movl	%eax, %esi	# tmp156,
	movl	%edx, %edi	# _40,
	call	FixedDiv@PLT	#
	movl	%eax, -28(%rbp)	# tmp157, thingbottomslope
# p_map.c:879:     if (thingbottomslope > topslope)
	.loc 1 879 26
	movl	topslope(%rip), %eax	# topslope, topslope.142_41
# p_map.c:879:     if (thingbottomslope > topslope)
	.loc 1 879 8
	cmpl	%eax, -28(%rbp)	# topslope.142_41, thingbottomslope
	jle	.L122	#,
# p_map.c:880: 	return true;			// shot under the thing
	.loc 1 880 9
	movl	$1, %eax	#, _48
	jmp	.L114	#
.L122:
# p_map.c:883:     if (thingtopslope > topslope)
	.loc 1 883 23
	movl	topslope(%rip), %eax	# topslope, topslope.143_42
# p_map.c:883:     if (thingtopslope > topslope)
	.loc 1 883 8
	cmpl	%eax, -32(%rbp)	# topslope.143_42, thingtopslope
	jle	.L123	#,
# p_map.c:884: 	thingtopslope = topslope;
	.loc 1 884 16
	movl	topslope(%rip), %eax	# topslope, tmp158
	movl	%eax, -32(%rbp)	# tmp158, thingtopslope
.L123:
# p_map.c:886:     if (thingbottomslope < bottomslope)
	.loc 1 886 26
	movl	bottomslope(%rip), %eax	# bottomslope, bottomslope.144_43
# p_map.c:886:     if (thingbottomslope < bottomslope)
	.loc 1 886 8
	cmpl	%eax, -28(%rbp)	# bottomslope.144_43, thingbottomslope
	jge	.L124	#,
# p_map.c:887: 	thingbottomslope = bottomslope;
	.loc 1 887 19
	movl	bottomslope(%rip), %eax	# bottomslope, tmp159
	movl	%eax, -28(%rbp)	# tmp159, thingbottomslope
.L124:
# p_map.c:889:     aimslope = (thingtopslope+thingbottomslope)/2;
	.loc 1 889 30
	movl	-32(%rbp), %edx	# thingtopslope, tmp160
	movl	-28(%rbp), %eax	# thingbottomslope, tmp161
	addl	%edx, %eax	# tmp160, _44
# p_map.c:889:     aimslope = (thingtopslope+thingbottomslope)/2;
	.loc 1 889 48
	movl	%eax, %edx	# _44, tmp162
	shrl	$31, %edx	#, tmp162
	addl	%edx, %eax	# tmp162, tmp163
	sarl	%eax	# tmp164
# p_map.c:889:     aimslope = (thingtopslope+thingbottomslope)/2;
	.loc 1 889 14
	movl	%eax, aimslope(%rip)	# _45, aimslope
# p_map.c:890:     linetarget = th;
	.loc 1 890 16
	movq	-16(%rbp), %rax	# th, tmp165
	movq	%rax, linetarget(%rip)	# tmp165, linetarget
# p_map.c:892:     return false;			// don't go any farther
	.loc 1 892 12
	movl	$0, %eax	#, _48
.L114:
# p_map.c:893: }
	.loc 1 893 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	PTR_AimTraverse, .-PTR_AimTraverse
	.globl	PTR_ShootTraverse
	.type	PTR_ShootTraverse, @function
PTR_ShootTraverse:
.LFB17:
	.loc 1 900 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# in, in
# p_map.c:915:     if (in->isaline)
	.loc 1 915 11
	movq	-72(%rbp), %rax	# in, tmp170
	movl	4(%rax), %eax	# in_96(D)->isaline, _1
# p_map.c:915:     if (in->isaline)
	.loc 1 915 8
	testl	%eax, %eax	# _1
	je	.L126	#,
# p_map.c:917: 	li = in->d.line;
	.loc 1 917 5
	movq	-72(%rbp), %rax	# in, tmp171
	movq	8(%rax), %rax	# in_96(D)->d.line, tmp172
	movq	%rax, -24(%rbp)	# tmp172, li
# p_map.c:919: 	if (li->special)
	.loc 1 919 8
	movq	-24(%rbp), %rax	# li, tmp173
	movzwl	26(%rax), %eax	# li_121->special, _2
# p_map.c:919: 	if (li->special)
	.loc 1 919 5
	testw	%ax, %ax	# _2
	je	.L127	#,
# p_map.c:920: 	    P_ShootSpecialLine (shootthing, li);
	.loc 1 920 6
	movq	shootthing(%rip), %rax	# shootthing, shootthing.145_3
	movq	-24(%rbp), %rdx	# li, tmp174
	movq	%rdx, %rsi	# tmp174,
	movq	%rax, %rdi	# shootthing.145_3,
	call	P_ShootSpecialLine@PLT	#
.L127:
# p_map.c:922: 	if ( !(li->flags & ML_TWOSIDED) )
	.loc 1 922 11
	movq	-24(%rbp), %rax	# li, tmp175
	movzwl	24(%rax), %eax	# li_121->flags, _4
# p_map.c:922: 	if ( !(li->flags & ML_TWOSIDED) )
	.loc 1 922 19
	cwtl
	andl	$4, %eax	#, _6
# p_map.c:922: 	if ( !(li->flags & ML_TWOSIDED) )
	.loc 1 922 5
	testl	%eax, %eax	# _6
	je	.L142	#,
# p_map.c:926: 	P_LineOpening (li);
	.loc 1 926 2
	movq	-24(%rbp), %rax	# li, tmp176
	movq	%rax, %rdi	# tmp176,
	call	P_LineOpening@PLT	#
# p_map.c:928: 	dist = FixedMul (attackrange, in->frac);
	.loc 1 928 9
	movq	-72(%rbp), %rax	# in, tmp177
	movl	(%rax), %edx	# in_96(D)->frac, _7
	movl	attackrange(%rip), %eax	# attackrange, attackrange.146_8
	movl	%edx, %esi	# _7,
	movl	%eax, %edi	# attackrange.146_8,
	call	FixedMul@PLT	#
	movl	%eax, -64(%rbp)	# tmp178, dist
# p_map.c:930: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 930 8
	movq	-24(%rbp), %rax	# li, tmp179
	movq	56(%rax), %rax	# li_121->frontsector, _9
# p_map.c:930: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 930 21
	movl	(%rax), %edx	# _9->floorheight, _10
# p_map.c:930: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 930 40
	movq	-24(%rbp), %rax	# li, tmp180
	movq	64(%rax), %rax	# li_121->backsector, _11
# p_map.c:930: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 930 52
	movl	(%rax), %eax	# _11->floorheight, _12
# p_map.c:930: 	if (li->frontsector->floorheight != li->backsector->floorheight)
	.loc 1 930 5
	cmpl	%eax, %edx	# _12, _10
	je	.L130	#,
# p_map.c:932: 	    slope = FixedDiv (openbottom - shootz , dist);
	.loc 1 932 14
	movl	openbottom(%rip), %edx	# openbottom, openbottom.147_13
	movl	shootz(%rip), %eax	# shootz, shootz.148_14
	subl	%eax, %edx	# shootz.148_14, _15
	movl	-64(%rbp), %eax	# dist, tmp181
	movl	%eax, %esi	# tmp181,
	movl	%edx, %edi	# _15,
	call	FixedDiv@PLT	#
	movl	%eax, -36(%rbp)	# tmp182, slope
# p_map.c:933: 	    if (slope > aimslope)
	.loc 1 933 16
	movl	aimslope(%rip), %eax	# aimslope, aimslope.149_16
# p_map.c:933: 	    if (slope > aimslope)
	.loc 1 933 9
	cmpl	%eax, -36(%rbp)	# aimslope.149_16, slope
	jg	.L143	#,
.L130:
# p_map.c:937: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 937 8
	movq	-24(%rbp), %rax	# li, tmp183
	movq	56(%rax), %rax	# li_121->frontsector, _17
# p_map.c:937: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 937 21
	movl	4(%rax), %edx	# _17->ceilingheight, _18
# p_map.c:937: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 937 42
	movq	-24(%rbp), %rax	# li, tmp184
	movq	64(%rax), %rax	# li_121->backsector, _19
# p_map.c:937: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 937 54
	movl	4(%rax), %eax	# _19->ceilingheight, _20
# p_map.c:937: 	if (li->frontsector->ceilingheight != li->backsector->ceilingheight)
	.loc 1 937 5
	cmpl	%eax, %edx	# _20, _18
	je	.L131	#,
# p_map.c:939: 	    slope = FixedDiv (opentop - shootz , dist);
	.loc 1 939 14
	movl	opentop(%rip), %edx	# opentop, opentop.150_21
	movl	shootz(%rip), %eax	# shootz, shootz.151_22
	subl	%eax, %edx	# shootz.151_22, _23
	movl	-64(%rbp), %eax	# dist, tmp185
	movl	%eax, %esi	# tmp185,
	movl	%edx, %edi	# _23,
	call	FixedDiv@PLT	#
	movl	%eax, -36(%rbp)	# tmp186, slope
# p_map.c:940: 	    if (slope < aimslope)
	.loc 1 940 16
	movl	aimslope(%rip), %eax	# aimslope, aimslope.152_24
# p_map.c:940: 	    if (slope < aimslope)
	.loc 1 940 9
	cmpl	%eax, -36(%rbp)	# aimslope.152_24, slope
	jl	.L144	#,
.L131:
# p_map.c:945: 	return true;
	.loc 1 945 9
	movl	$1, %eax	#, _87
	jmp	.L132	#
.L142:
# p_map.c:923: 	    goto hitline;
	.loc 1 923 6
	nop	
	jmp	.L129	#
.L143:
# p_map.c:934: 		goto hitline;
	.loc 1 934 3
	nop	
	jmp	.L129	#
.L144:
# p_map.c:941: 		goto hitline;
	.loc 1 941 3
	nop	
.L129:
# p_map.c:951: 	frac = in->frac - FixedDiv (4*FRACUNIT,attackrange);
	.loc 1 951 11
	movq	-72(%rbp), %rax	# in, tmp187
	movl	(%rax), %ebx	# in_96(D)->frac, _25
# p_map.c:951: 	frac = in->frac - FixedDiv (4*FRACUNIT,attackrange);
	.loc 1 951 20
	movl	attackrange(%rip), %eax	# attackrange, attackrange.153_26
	movl	%eax, %esi	# attackrange.153_26,
	movl	$262144, %edi	#,
	call	FixedDiv@PLT	#
# p_map.c:951: 	frac = in->frac - FixedDiv (4*FRACUNIT,attackrange);
	.loc 1 951 7 discriminator 1
	subl	%eax, %ebx	# _27, _25
	movl	%ebx, %edx	# _25, tmp188
	movl	%edx, -52(%rbp)	# tmp188, frac
# p_map.c:952: 	x = trace.x + FixedMul (trace.dx, frac);
	.loc 1 952 11
	movl	trace(%rip), %ebx	# trace.x, _28
# p_map.c:952: 	x = trace.x + FixedMul (trace.dx, frac);
	.loc 1 952 16
	movl	8+trace(%rip), %eax	# trace.dx, _29
	movl	-52(%rbp), %edx	# frac, tmp189
	movl	%edx, %esi	# tmp189,
	movl	%eax, %edi	# _29,
	call	FixedMul@PLT	#
# p_map.c:952: 	x = trace.x + FixedMul (trace.dx, frac);
	.loc 1 952 4 discriminator 1
	addl	%ebx, %eax	# _28, tmp190
	movl	%eax, -48(%rbp)	# tmp190, x
# p_map.c:953: 	y = trace.y + FixedMul (trace.dy, frac);
	.loc 1 953 11
	movl	4+trace(%rip), %ebx	# trace.y, _31
# p_map.c:953: 	y = trace.y + FixedMul (trace.dy, frac);
	.loc 1 953 16
	movl	12+trace(%rip), %eax	# trace.dy, _32
	movl	-52(%rbp), %edx	# frac, tmp191
	movl	%edx, %esi	# tmp191,
	movl	%eax, %edi	# _32,
	call	FixedMul@PLT	#
# p_map.c:953: 	y = trace.y + FixedMul (trace.dy, frac);
	.loc 1 953 4 discriminator 1
	addl	%ebx, %eax	# _31, tmp192
	movl	%eax, -44(%rbp)	# tmp192, y
# p_map.c:954: 	z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 954 15
	movl	attackrange(%rip), %edx	# attackrange, attackrange.154_34
	movl	-52(%rbp), %eax	# frac, tmp193
	movl	%edx, %esi	# attackrange.154_34,
	movl	%eax, %edi	# tmp193,
	call	FixedMul@PLT	#
	movl	%eax, %edx	#, _35
# p_map.c:954: 	z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 954 15 is_stmt 0 discriminator 1
	movl	aimslope(%rip), %eax	# aimslope, aimslope.155_36
	movl	%edx, %esi	# _35,
	movl	%eax, %edi	# aimslope.155_36,
	call	FixedMul@PLT	#
# p_map.c:954: 	z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 954 13 is_stmt 1 discriminator 2
	movl	shootz(%rip), %edx	# shootz, shootz.156_38
# p_map.c:954: 	z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 954 4 discriminator 2
	addl	%edx, %eax	# shootz.156_38, tmp194
	movl	%eax, -40(%rbp)	# tmp194, z
# p_map.c:956: 	if (li->frontsector->ceilingpic == skyflatnum)
	.loc 1 956 8
	movq	-24(%rbp), %rax	# li, tmp195
	movq	56(%rax), %rax	# li_121->frontsector, _39
# p_map.c:956: 	if (li->frontsector->ceilingpic == skyflatnum)
	.loc 1 956 21
	movzwl	10(%rax), %eax	# _39->ceilingpic, _40
	movswl	%ax, %edx	# _40, _41
# p_map.c:956: 	if (li->frontsector->ceilingpic == skyflatnum)
	.loc 1 956 34
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.157_42
# p_map.c:956: 	if (li->frontsector->ceilingpic == skyflatnum)
	.loc 1 956 5
	cmpl	%eax, %edx	# skyflatnum.157_42, _41
	jne	.L133	#,
# p_map.c:959: 	    if (z > li->frontsector->ceilingheight)
	.loc 1 959 16
	movq	-24(%rbp), %rax	# li, tmp196
	movq	56(%rax), %rax	# li_121->frontsector, _43
# p_map.c:959: 	    if (z > li->frontsector->ceilingheight)
	.loc 1 959 29
	movl	4(%rax), %eax	# _43->ceilingheight, _44
# p_map.c:959: 	    if (z > li->frontsector->ceilingheight)
	.loc 1 959 9
	cmpl	%eax, -40(%rbp)	# _44, z
	jle	.L134	#,
# p_map.c:960: 		return false;
	.loc 1 960 10
	movl	$0, %eax	#, _87
	jmp	.L132	#
.L134:
# p_map.c:963: 	    if	(li->backsector && li->backsector->ceilingpic == skyflatnum)
	.loc 1 963 12
	movq	-24(%rbp), %rax	# li, tmp197
	movq	64(%rax), %rax	# li_121->backsector, _45
# p_map.c:963: 	    if	(li->backsector && li->backsector->ceilingpic == skyflatnum)
	.loc 1 963 9
	testq	%rax, %rax	# _45
	je	.L133	#,
# p_map.c:963: 	    if	(li->backsector && li->backsector->ceilingpic == skyflatnum)
	.loc 1 963 30 discriminator 1
	movq	-24(%rbp), %rax	# li, tmp198
	movq	64(%rax), %rax	# li_121->backsector, _46
# p_map.c:963: 	    if	(li->backsector && li->backsector->ceilingpic == skyflatnum)
	.loc 1 963 42 discriminator 1
	movzwl	10(%rax), %eax	# _46->ceilingpic, _47
	movswl	%ax, %edx	# _47, _48
# p_map.c:963: 	    if	(li->backsector && li->backsector->ceilingpic == skyflatnum)
	.loc 1 963 55 discriminator 1
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.158_49
# p_map.c:963: 	    if	(li->backsector && li->backsector->ceilingpic == skyflatnum)
	.loc 1 963 25 discriminator 1
	cmpl	%eax, %edx	# skyflatnum.158_49, _48
	jne	.L133	#,
# p_map.c:964: 		return false;		
	.loc 1 964 10
	movl	$0, %eax	#, _87
	jmp	.L132	#
.L133:
# p_map.c:968: 	P_SpawnPuff (x,y,z);
	.loc 1 968 2
	movl	-40(%rbp), %edx	# z, tmp199
	movl	-44(%rbp), %ecx	# y, tmp200
	movl	-48(%rbp), %eax	# x, tmp201
	movl	%ecx, %esi	# tmp200,
	movl	%eax, %edi	# tmp201,
	call	P_SpawnPuff@PLT	#
# p_map.c:971: 	return false;	
	.loc 1 971 9
	movl	$0, %eax	#, _87
	jmp	.L132	#
.L126:
# p_map.c:975:     th = in->d.thing;
	.loc 1 975 8
	movq	-72(%rbp), %rax	# in, tmp202
	movq	8(%rax), %rax	# in_96(D)->d.thing, tmp203
	movq	%rax, -32(%rbp)	# tmp203, th
# p_map.c:976:     if (th == shootthing)
	.loc 1 976 12
	movq	shootthing(%rip), %rax	# shootthing, shootthing.159_50
# p_map.c:976:     if (th == shootthing)
	.loc 1 976 8
	cmpq	%rax, -32(%rbp)	# shootthing.159_50, th
	jne	.L135	#,
# p_map.c:977: 	return true;		// can't shoot self
	.loc 1 977 9
	movl	$1, %eax	#, _87
	jmp	.L132	#
.L135:
# p_map.c:979:     if (!(th->flags&MF_SHOOTABLE))
	.loc 1 979 13
	movq	-32(%rbp), %rax	# th, tmp204
	movl	160(%rax), %eax	# th_97->flags, _51
# p_map.c:979:     if (!(th->flags&MF_SHOOTABLE))
	.loc 1 979 20
	andl	$4, %eax	#, _52
# p_map.c:979:     if (!(th->flags&MF_SHOOTABLE))
	.loc 1 979 8
	testl	%eax, %eax	# _52
	jne	.L136	#,
# p_map.c:980: 	return true;		// corpse or something
	.loc 1 980 9
	movl	$1, %eax	#, _87
	jmp	.L132	#
.L136:
# p_map.c:983:     dist = FixedMul (attackrange, in->frac);
	.loc 1 983 12
	movq	-72(%rbp), %rax	# in, tmp205
	movl	(%rax), %edx	# in_96(D)->frac, _53
	movl	attackrange(%rip), %eax	# attackrange, attackrange.160_54
	movl	%edx, %esi	# _53,
	movl	%eax, %edi	# attackrange.160_54,
	call	FixedMul@PLT	#
	movl	%eax, -64(%rbp)	# tmp206, dist
# p_map.c:984:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 984 33
	movq	-32(%rbp), %rax	# th, tmp207
	movl	32(%rax), %edx	# th_97->z, _55
# p_map.c:984:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 984 39
	movq	-32(%rbp), %rax	# th, tmp208
	movl	108(%rax), %eax	# th_97->height, _56
# p_map.c:984:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 984 36
	addl	%eax, %edx	# _56, _57
# p_map.c:984:     thingtopslope = FixedDiv (th->z+th->height - shootz , dist);
	.loc 1 984 21
	movl	shootz(%rip), %eax	# shootz, shootz.161_58
	subl	%eax, %edx	# shootz.161_58, _59
	movl	-64(%rbp), %eax	# dist, tmp209
	movl	%eax, %esi	# tmp209,
	movl	%edx, %edi	# _59,
	call	FixedDiv@PLT	#
	movl	%eax, -60(%rbp)	# tmp210, thingtopslope
# p_map.c:986:     if (thingtopslope < aimslope)
	.loc 1 986 23
	movl	aimslope(%rip), %eax	# aimslope, aimslope.162_60
# p_map.c:986:     if (thingtopslope < aimslope)
	.loc 1 986 8
	cmpl	%eax, -60(%rbp)	# aimslope.162_60, thingtopslope
	jge	.L137	#,
# p_map.c:987: 	return true;		// shot over the thing
	.loc 1 987 9
	movl	$1, %eax	#, _87
	jmp	.L132	#
.L137:
# p_map.c:989:     thingbottomslope = FixedDiv (th->z - shootz, dist);
	.loc 1 989 36
	movq	-32(%rbp), %rax	# th, tmp211
	movl	32(%rax), %edx	# th_97->z, _61
# p_map.c:989:     thingbottomslope = FixedDiv (th->z - shootz, dist);
	.loc 1 989 24
	movl	shootz(%rip), %eax	# shootz, shootz.163_62
	subl	%eax, %edx	# shootz.163_62, _63
	movl	-64(%rbp), %eax	# dist, tmp212
	movl	%eax, %esi	# tmp212,
	movl	%edx, %edi	# _63,
	call	FixedDiv@PLT	#
	movl	%eax, -56(%rbp)	# tmp213, thingbottomslope
# p_map.c:991:     if (thingbottomslope > aimslope)
	.loc 1 991 26
	movl	aimslope(%rip), %eax	# aimslope, aimslope.164_64
# p_map.c:991:     if (thingbottomslope > aimslope)
	.loc 1 991 8
	cmpl	%eax, -56(%rbp)	# aimslope.164_64, thingbottomslope
	jle	.L138	#,
# p_map.c:992: 	return true;		// shot under the thing
	.loc 1 992 9
	movl	$1, %eax	#, _87
	jmp	.L132	#
.L138:
# p_map.c:997:     frac = in->frac - FixedDiv (10*FRACUNIT,attackrange);
	.loc 1 997 14
	movq	-72(%rbp), %rax	# in, tmp214
	movl	(%rax), %ebx	# in_96(D)->frac, _65
# p_map.c:997:     frac = in->frac - FixedDiv (10*FRACUNIT,attackrange);
	.loc 1 997 23
	movl	attackrange(%rip), %eax	# attackrange, attackrange.165_66
	movl	%eax, %esi	# attackrange.165_66,
	movl	$655360, %edi	#,
	call	FixedDiv@PLT	#
# p_map.c:997:     frac = in->frac - FixedDiv (10*FRACUNIT,attackrange);
	.loc 1 997 10 discriminator 1
	subl	%eax, %ebx	# _67, _65
	movl	%ebx, %edx	# _65, tmp215
	movl	%edx, -52(%rbp)	# tmp215, frac
# p_map.c:999:     x = trace.x + FixedMul (trace.dx, frac);
	.loc 1 999 14
	movl	trace(%rip), %ebx	# trace.x, _68
# p_map.c:999:     x = trace.x + FixedMul (trace.dx, frac);
	.loc 1 999 19
	movl	8+trace(%rip), %eax	# trace.dx, _69
	movl	-52(%rbp), %edx	# frac, tmp216
	movl	%edx, %esi	# tmp216,
	movl	%eax, %edi	# _69,
	call	FixedMul@PLT	#
# p_map.c:999:     x = trace.x + FixedMul (trace.dx, frac);
	.loc 1 999 7 discriminator 1
	addl	%ebx, %eax	# _68, tmp217
	movl	%eax, -48(%rbp)	# tmp217, x
# p_map.c:1000:     y = trace.y + FixedMul (trace.dy, frac);
	.loc 1 1000 14
	movl	4+trace(%rip), %ebx	# trace.y, _71
# p_map.c:1000:     y = trace.y + FixedMul (trace.dy, frac);
	.loc 1 1000 19
	movl	12+trace(%rip), %eax	# trace.dy, _72
	movl	-52(%rbp), %edx	# frac, tmp218
	movl	%edx, %esi	# tmp218,
	movl	%eax, %edi	# _72,
	call	FixedMul@PLT	#
# p_map.c:1000:     y = trace.y + FixedMul (trace.dy, frac);
	.loc 1 1000 7 discriminator 1
	addl	%ebx, %eax	# _71, tmp219
	movl	%eax, -44(%rbp)	# tmp219, y
# p_map.c:1001:     z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 1001 18
	movl	attackrange(%rip), %edx	# attackrange, attackrange.166_74
	movl	-52(%rbp), %eax	# frac, tmp220
	movl	%edx, %esi	# attackrange.166_74,
	movl	%eax, %edi	# tmp220,
	call	FixedMul@PLT	#
	movl	%eax, %edx	#, _75
# p_map.c:1001:     z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 1001 18 is_stmt 0 discriminator 1
	movl	aimslope(%rip), %eax	# aimslope, aimslope.167_76
	movl	%edx, %esi	# _75,
	movl	%eax, %edi	# aimslope.167_76,
	call	FixedMul@PLT	#
# p_map.c:1001:     z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 1001 16 is_stmt 1 discriminator 2
	movl	shootz(%rip), %edx	# shootz, shootz.168_78
# p_map.c:1001:     z = shootz + FixedMul (aimslope, FixedMul(frac, attackrange));
	.loc 1 1001 7 discriminator 2
	addl	%edx, %eax	# shootz.168_78, tmp221
	movl	%eax, -40(%rbp)	# tmp221, z
# p_map.c:1005:     if (in->d.thing->flags & MF_NOBLOOD)
	.loc 1 1005 14
	movq	-72(%rbp), %rax	# in, tmp222
	movq	8(%rax), %rax	# in_96(D)->d.thing, _79
# p_map.c:1005:     if (in->d.thing->flags & MF_NOBLOOD)
	.loc 1 1005 20
	movl	160(%rax), %eax	# _79->flags, _80
# p_map.c:1005:     if (in->d.thing->flags & MF_NOBLOOD)
	.loc 1 1005 28
	andl	$524288, %eax	#, _81
# p_map.c:1005:     if (in->d.thing->flags & MF_NOBLOOD)
	.loc 1 1005 8
	testl	%eax, %eax	# _81
	je	.L139	#,
# p_map.c:1006: 	P_SpawnPuff (x,y,z);
	.loc 1 1006 2
	movl	-40(%rbp), %edx	# z, tmp223
	movl	-44(%rbp), %ecx	# y, tmp224
	movl	-48(%rbp), %eax	# x, tmp225
	movl	%ecx, %esi	# tmp224,
	movl	%eax, %edi	# tmp225,
	call	P_SpawnPuff@PLT	#
	jmp	.L140	#
.L139:
# p_map.c:1008: 	P_SpawnBlood (x,y,z, la_damage);
	.loc 1 1008 2
	movl	la_damage(%rip), %ecx	# la_damage, la_damage.169_82
	movl	-40(%rbp), %edx	# z, tmp226
	movl	-44(%rbp), %esi	# y, tmp227
	movl	-48(%rbp), %eax	# x, tmp228
	movl	%eax, %edi	# tmp228,
	call	P_SpawnBlood@PLT	#
.L140:
# p_map.c:1010:     if (la_damage)
	.loc 1 1010 9
	movl	la_damage(%rip), %eax	# la_damage, la_damage.170_83
# p_map.c:1010:     if (la_damage)
	.loc 1 1010 8
	testl	%eax, %eax	# la_damage.170_83
	je	.L141	#,
# p_map.c:1011: 	P_DamageMobj (th, shootthing, shootthing, la_damage);
	.loc 1 1011 2
	movl	la_damage(%rip), %ecx	# la_damage, la_damage.171_84
	movq	shootthing(%rip), %rdx	# shootthing, shootthing.172_85
	movq	shootthing(%rip), %rsi	# shootthing, shootthing.173_86
	movq	-32(%rbp), %rax	# th, tmp229
	movq	%rax, %rdi	# tmp229,
	call	P_DamageMobj@PLT	#
.L141:
# p_map.c:1014:     return false;
	.loc 1 1014 12
	movl	$0, %eax	#, _87
.L132:
# p_map.c:1016: }
	.loc 1 1016 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	PTR_ShootTraverse, .-PTR_ShootTraverse
	.globl	P_AimLineAttack
	.type	P_AimLineAttack, @function
P_AimLineAttack:
.LFB18:
	.loc 1 1027 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# t1, t1
	movl	%esi, -28(%rbp)	# angle, angle
	movl	%edx, -32(%rbp)	# distance, distance
# p_map.c:1031:     angle >>= ANGLETOFINESHIFT;
	.loc 1 1031 11
	shrl	$19, -28(%rbp)	#, angle
# p_map.c:1032:     shootthing = t1;
	.loc 1 1032 16
	movq	-24(%rbp), %rax	# t1, tmp104
	movq	%rax, shootthing(%rip)	# tmp104, shootthing
# p_map.c:1034:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1034 12
	movq	-24(%rbp), %rax	# t1, tmp105
	movl	24(%rax), %edx	# t1_25(D)->x, _1
# p_map.c:1034:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1034 27
	movl	-32(%rbp), %eax	# distance, tmp106
	sarl	$16, %eax	#, tmp106
	movl	%eax, %ecx	# tmp106, _2
# p_map.c:1034:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1034 49
	movq	finecosine(%rip), %rax	# finecosine, finecosine.174_3
	movl	-28(%rbp), %esi	# angle, _4
	salq	$2, %rsi	#, _5
	addq	%rsi, %rax	# _5, _6
	movl	(%rax), %eax	# *_6, _7
# p_map.c:1034:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1034 38
	imull	%ecx, %eax	# _2, _8
# p_map.c:1034:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1034 8
	addl	%edx, %eax	# _1, tmp107
	movl	%eax, -8(%rbp)	# tmp107, x2
# p_map.c:1035:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1035 12
	movq	-24(%rbp), %rax	# t1, tmp108
	movl	28(%rax), %edx	# t1_25(D)->y, _9
# p_map.c:1035:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1035 27
	movl	-32(%rbp), %eax	# distance, tmp109
	sarl	$16, %eax	#, tmp109
	movl	%eax, %ecx	# tmp109, _10
# p_map.c:1035:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1035 47
	movl	-28(%rbp), %eax	# angle, tmp110
	leaq	0(,%rax,4), %rsi	#, tmp111
	leaq	finesine(%rip), %rax	#, tmp112
	movl	(%rsi,%rax), %eax	# finesine[angle_23], _11
# p_map.c:1035:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1035 38
	imull	%ecx, %eax	# _10, _12
# p_map.c:1035:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1035 8
	addl	%edx, %eax	# _9, tmp113
	movl	%eax, -4(%rbp)	# tmp113, y2
# p_map.c:1036:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1036 16
	movq	-24(%rbp), %rax	# t1, tmp114
	movl	32(%rax), %edx	# t1_25(D)->z, _13
# p_map.c:1036:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1036 25
	movq	-24(%rbp), %rax	# t1, tmp115
	movl	108(%rax), %eax	# t1_25(D)->height, _14
# p_map.c:1036:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1036 33
	sarl	%eax	# _15
# p_map.c:1036:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1036 20
	addl	%edx, %eax	# _13, _16
# p_map.c:1036:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1036 38
	addl	$524288, %eax	#, _17
# p_map.c:1036:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1036 12
	movl	%eax, shootz(%rip)	# _17, shootz
# p_map.c:1039:     topslope = 100*FRACUNIT/160;	
	.loc 1 1039 14
	movl	$40960, topslope(%rip)	#, topslope
# p_map.c:1040:     bottomslope = -100*FRACUNIT/160;
	.loc 1 1040 17
	movl	$-40960, bottomslope(%rip)	#, bottomslope
# p_map.c:1042:     attackrange = distance;
	.loc 1 1042 17
	movl	-32(%rbp), %eax	# distance, tmp116
	movl	%eax, attackrange(%rip)	# tmp116, attackrange
# p_map.c:1043:     linetarget = NULL;
	.loc 1 1043 16
	movq	$0, linetarget(%rip)	#, linetarget
# p_map.c:1045:     P_PathTraverse ( t1->x, t1->y,
	.loc 1 1045 5
	movq	-24(%rbp), %rax	# t1, tmp117
	movl	28(%rax), %esi	# t1_25(D)->y, _18
	movq	-24(%rbp), %rax	# t1, tmp118
	movl	24(%rax), %eax	# t1_25(D)->x, _19
	movl	-4(%rbp), %ecx	# y2, tmp119
	movl	-8(%rbp), %edx	# x2, tmp120
	leaq	PTR_AimTraverse(%rip), %r9	#,
	movl	$3, %r8d	#,
	movl	%eax, %edi	# _19,
	call	P_PathTraverse@PLT	#
# p_map.c:1050:     if (linetarget)
	.loc 1 1050 9
	movq	linetarget(%rip), %rax	# linetarget, linetarget.175_20
# p_map.c:1050:     if (linetarget)
	.loc 1 1050 8
	testq	%rax, %rax	# linetarget.175_20
	je	.L146	#,
# p_map.c:1051: 	return aimslope;
	.loc 1 1051 9
	movl	aimslope(%rip), %eax	# aimslope, _21
	jmp	.L147	#
.L146:
# p_map.c:1053:     return 0;
	.loc 1 1053 12
	movl	$0, %eax	#, _21
.L147:
# p_map.c:1054: }
	.loc 1 1054 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	P_AimLineAttack, .-P_AimLineAttack
	.globl	P_LineAttack
	.type	P_LineAttack, @function
P_LineAttack:
.LFB19:
	.loc 1 1069 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# t1, t1
	movl	%esi, -28(%rbp)	# angle, angle
	movl	%edx, -32(%rbp)	# distance, distance
	movl	%ecx, -36(%rbp)	# slope, slope
	movl	%r8d, -40(%rbp)	# damage, damage
# p_map.c:1073:     angle >>= ANGLETOFINESHIFT;
	.loc 1 1073 11
	shrl	$19, -28(%rbp)	#, angle
# p_map.c:1074:     shootthing = t1;
	.loc 1 1074 16
	movq	-24(%rbp), %rax	# t1, tmp101
	movq	%rax, shootthing(%rip)	# tmp101, shootthing
# p_map.c:1075:     la_damage = damage;
	.loc 1 1075 15
	movl	-40(%rbp), %eax	# damage, tmp102
	movl	%eax, la_damage(%rip)	# tmp102, la_damage
# p_map.c:1076:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1076 12
	movq	-24(%rbp), %rax	# t1, tmp103
	movl	24(%rax), %edx	# t1_23(D)->x, _1
# p_map.c:1076:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1076 27
	movl	-32(%rbp), %eax	# distance, tmp104
	sarl	$16, %eax	#, tmp104
	movl	%eax, %ecx	# tmp104, _2
# p_map.c:1076:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1076 49
	movq	finecosine(%rip), %rax	# finecosine, finecosine.176_3
	movl	-28(%rbp), %esi	# angle, _4
	salq	$2, %rsi	#, _5
	addq	%rsi, %rax	# _5, _6
	movl	(%rax), %eax	# *_6, _7
# p_map.c:1076:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1076 38
	imull	%ecx, %eax	# _2, _8
# p_map.c:1076:     x2 = t1->x + (distance>>FRACBITS)*finecosine[angle];
	.loc 1 1076 8
	addl	%edx, %eax	# _1, tmp105
	movl	%eax, -8(%rbp)	# tmp105, x2
# p_map.c:1077:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1077 12
	movq	-24(%rbp), %rax	# t1, tmp106
	movl	28(%rax), %edx	# t1_23(D)->y, _9
# p_map.c:1077:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1077 27
	movl	-32(%rbp), %eax	# distance, tmp107
	sarl	$16, %eax	#, tmp107
	movl	%eax, %ecx	# tmp107, _10
# p_map.c:1077:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1077 47
	movl	-28(%rbp), %eax	# angle, tmp108
	leaq	0(,%rax,4), %rsi	#, tmp109
	leaq	finesine(%rip), %rax	#, tmp110
	movl	(%rsi,%rax), %eax	# finesine[angle_21], _11
# p_map.c:1077:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1077 38
	imull	%ecx, %eax	# _10, _12
# p_map.c:1077:     y2 = t1->y + (distance>>FRACBITS)*finesine[angle];
	.loc 1 1077 8
	addl	%edx, %eax	# _9, tmp111
	movl	%eax, -4(%rbp)	# tmp111, y2
# p_map.c:1078:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1078 16
	movq	-24(%rbp), %rax	# t1, tmp112
	movl	32(%rax), %edx	# t1_23(D)->z, _13
# p_map.c:1078:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1078 25
	movq	-24(%rbp), %rax	# t1, tmp113
	movl	108(%rax), %eax	# t1_23(D)->height, _14
# p_map.c:1078:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1078 33
	sarl	%eax	# _15
# p_map.c:1078:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1078 20
	addl	%edx, %eax	# _13, _16
# p_map.c:1078:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1078 38
	addl	$524288, %eax	#, _17
# p_map.c:1078:     shootz = t1->z + (t1->height>>1) + 8*FRACUNIT;
	.loc 1 1078 12
	movl	%eax, shootz(%rip)	# _17, shootz
# p_map.c:1079:     attackrange = distance;
	.loc 1 1079 17
	movl	-32(%rbp), %eax	# distance, tmp114
	movl	%eax, attackrange(%rip)	# tmp114, attackrange
# p_map.c:1080:     aimslope = slope;
	.loc 1 1080 14
	movl	-36(%rbp), %eax	# slope, tmp115
	movl	%eax, aimslope(%rip)	# tmp115, aimslope
# p_map.c:1082:     P_PathTraverse ( t1->x, t1->y,
	.loc 1 1082 5
	movq	-24(%rbp), %rax	# t1, tmp116
	movl	28(%rax), %esi	# t1_23(D)->y, _18
	movq	-24(%rbp), %rax	# t1, tmp117
	movl	24(%rax), %eax	# t1_23(D)->x, _19
	movl	-4(%rbp), %ecx	# y2, tmp118
	movl	-8(%rbp), %edx	# x2, tmp119
	leaq	PTR_ShootTraverse(%rip), %r9	#,
	movl	$3, %r8d	#,
	movl	%eax, %edi	# _19,
	call	P_PathTraverse@PLT	#
# p_map.c:1086: }
	.loc 1 1086 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	P_LineAttack, .-P_LineAttack
	.globl	usething
	.bss
	.align 8
	.type	usething, @object
	.size	usething, 8
usething:
	.zero	8
	.text
	.globl	PTR_UseTraverse
	.type	PTR_UseTraverse, @function
PTR_UseTraverse:
.LFB20:
	.loc 1 1096 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# in, in
# p_map.c:1099:     if (!in->d.line->special)
	.loc 1 1099 15
	movq	-24(%rbp), %rax	# in, tmp97
	movq	8(%rax), %rax	# in_18(D)->d.line, _1
# p_map.c:1099:     if (!in->d.line->special)
	.loc 1 1099 20
	movzwl	26(%rax), %eax	# _1->special, _2
# p_map.c:1099:     if (!in->d.line->special)
	.loc 1 1099 8
	testw	%ax, %ax	# _2
	jne	.L150	#,
# p_map.c:1101: 	P_LineOpening (in->d.line);
	.loc 1 1101 2
	movq	-24(%rbp), %rax	# in, tmp98
	movq	8(%rax), %rax	# in_18(D)->d.line, _3
	movq	%rax, %rdi	# _3,
	call	P_LineOpening@PLT	#
# p_map.c:1102: 	if (openrange <= 0)
	.loc 1 1102 16
	movl	openrange(%rip), %eax	# openrange, openrange.177_4
# p_map.c:1102: 	if (openrange <= 0)
	.loc 1 1102 5
	testl	%eax, %eax	# openrange.177_4
	jg	.L151	#,
# p_map.c:1104: 	    S_StartSound (usething, sfx_noway);
	.loc 1 1104 6
	movq	usething(%rip), %rax	# usething, usething.178_5
	movl	$81, %esi	#,
	movq	%rax, %rdi	# usething.178_5,
	call	S_StartSound@PLT	#
# p_map.c:1107: 	    return false;	
	.loc 1 1107 13
	movl	$0, %eax	#, _15
	jmp	.L152	#
.L151:
# p_map.c:1110: 	return true ;		
	.loc 1 1110 9
	movl	$1, %eax	#, _15
	jmp	.L152	#
.L150:
# p_map.c:1113:     side = 0;
	.loc 1 1113 10
	movl	$0, -4(%rbp)	#, side
# p_map.c:1114:     if (P_PointOnLineSide (usething->x, usething->y, in->d.line) == 1)
	.loc 1 1114 9
	movq	-24(%rbp), %rax	# in, tmp99
	movq	8(%rax), %rdx	# in_18(D)->d.line, _6
# p_map.c:1114:     if (P_PointOnLineSide (usething->x, usething->y, in->d.line) == 1)
	.loc 1 1114 49
	movq	usething(%rip), %rax	# usething, usething.179_7
# p_map.c:1114:     if (P_PointOnLineSide (usething->x, usething->y, in->d.line) == 1)
	.loc 1 1114 9
	movl	28(%rax), %ecx	# usething.179_7->y, _8
# p_map.c:1114:     if (P_PointOnLineSide (usething->x, usething->y, in->d.line) == 1)
	.loc 1 1114 36
	movq	usething(%rip), %rax	# usething, usething.180_9
# p_map.c:1114:     if (P_PointOnLineSide (usething->x, usething->y, in->d.line) == 1)
	.loc 1 1114 9
	movl	24(%rax), %eax	# usething.180_9->x, _10
	movl	%ecx, %esi	# _8,
	movl	%eax, %edi	# _10,
	call	P_PointOnLineSide@PLT	#
# p_map.c:1114:     if (P_PointOnLineSide (usething->x, usething->y, in->d.line) == 1)
	.loc 1 1114 8 discriminator 1
	cmpl	$1, %eax	#, _11
	jne	.L153	#,
# p_map.c:1115: 	side = 1;
	.loc 1 1115 7
	movl	$1, -4(%rbp)	#, side
.L153:
# p_map.c:1119:     P_UseSpecialLine (usething, in->d.line, side);
	.loc 1 1119 5
	movq	-24(%rbp), %rax	# in, tmp100
	movq	8(%rax), %rcx	# in_18(D)->d.line, _12
	movq	usething(%rip), %rax	# usething, usething.181_13
	movl	-4(%rbp), %edx	# side, tmp101
	movq	%rcx, %rsi	# _12,
	movq	%rax, %rdi	# usething.181_13,
	call	P_UseSpecialLine@PLT	#
# p_map.c:1122:     return false;
	.loc 1 1122 12
	movl	$0, %eax	#, _15
.L152:
# p_map.c:1123: }
	.loc 1 1123 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	PTR_UseTraverse, .-PTR_UseTraverse
	.globl	P_UseLines
	.type	P_UseLines, @function
P_UseLines:
.LFB21:
	.loc 1 1131 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# player, player
# p_map.c:1138:     usething = player->mo;
	.loc 1 1138 22
	movq	-40(%rbp), %rax	# player, tmp96
	movq	(%rax), %rax	# player_16(D)->mo, _1
# p_map.c:1138:     usething = player->mo;
	.loc 1 1138 14
	movq	%rax, usething(%rip)	# _1, usething
# p_map.c:1140:     angle = player->mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1140 19
	movq	-40(%rbp), %rax	# player, tmp97
	movq	(%rax), %rax	# player_16(D)->mo, _2
# p_map.c:1140:     angle = player->mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1140 23
	movl	56(%rax), %eax	# _2->angle, _3
# p_map.c:1140:     angle = player->mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1140 31
	shrl	$19, %eax	#, _4
# p_map.c:1140:     angle = player->mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1140 11
	movl	%eax, -20(%rbp)	# _4, angle
# p_map.c:1142:     x1 = player->mo->x;
	.loc 1 1142 16
	movq	-40(%rbp), %rax	# player, tmp98
	movq	(%rax), %rax	# player_16(D)->mo, _5
# p_map.c:1142:     x1 = player->mo->x;
	.loc 1 1142 8
	movl	24(%rax), %eax	# _5->x, tmp99
	movl	%eax, -16(%rbp)	# tmp99, x1
# p_map.c:1143:     y1 = player->mo->y;
	.loc 1 1143 16
	movq	-40(%rbp), %rax	# player, tmp100
	movq	(%rax), %rax	# player_16(D)->mo, _6
# p_map.c:1143:     y1 = player->mo->y;
	.loc 1 1143 8
	movl	28(%rax), %eax	# _6->y, tmp101
	movl	%eax, -12(%rbp)	# tmp101, y1
# p_map.c:1144:     x2 = x1 + (USERANGE>>FRACBITS)*finecosine[angle];
	.loc 1 1144 46
	movq	finecosine(%rip), %rax	# finecosine, finecosine.182_7
	movl	-20(%rbp), %edx	# angle, tmp102
	movslq	%edx, %rdx	# tmp102, _8
	salq	$2, %rdx	#, _9
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# p_map.c:1144:     x2 = x1 + (USERANGE>>FRACBITS)*finecosine[angle];
	.loc 1 1144 35
	sall	$6, %eax	#, _11
	movl	%eax, %edx	# _11, _12
# p_map.c:1144:     x2 = x1 + (USERANGE>>FRACBITS)*finecosine[angle];
	.loc 1 1144 8
	movl	-16(%rbp), %eax	# x1, tmp106
	addl	%edx, %eax	# _12, tmp105
	movl	%eax, -8(%rbp)	# tmp105, x2
# p_map.c:1145:     y2 = y1 + (USERANGE>>FRACBITS)*finesine[angle];
	.loc 1 1145 44
	movl	-20(%rbp), %eax	# angle, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp109
	leaq	finesine(%rip), %rax	#, tmp110
	movl	(%rdx,%rax), %eax	# finesine[angle_18], _13
# p_map.c:1145:     y2 = y1 + (USERANGE>>FRACBITS)*finesine[angle];
	.loc 1 1145 35
	sall	$6, %eax	#, _13
	movl	%eax, %edx	# _13, _14
# p_map.c:1145:     y2 = y1 + (USERANGE>>FRACBITS)*finesine[angle];
	.loc 1 1145 8
	movl	-12(%rbp), %eax	# y1, tmp114
	addl	%edx, %eax	# _14, tmp113
	movl	%eax, -4(%rbp)	# tmp113, y2
# p_map.c:1147:     P_PathTraverse ( x1, y1, x2, y2, PT_ADDLINES, PTR_UseTraverse );
	.loc 1 1147 5
	movl	-4(%rbp), %ecx	# y2, tmp115
	movl	-8(%rbp), %edx	# x2, tmp116
	movl	-12(%rbp), %esi	# y1, tmp117
	movl	-16(%rbp), %eax	# x1, tmp118
	leaq	PTR_UseTraverse(%rip), %r9	#,
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp118,
	call	P_PathTraverse@PLT	#
# p_map.c:1148: }
	.loc 1 1148 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	P_UseLines, .-P_UseLines
	.globl	bombsource
	.bss
	.align 8
	.type	bombsource, @object
	.size	bombsource, 8
bombsource:
	.zero	8
	.globl	bombspot
	.align 8
	.type	bombspot, @object
	.size	bombspot, 8
bombspot:
	.zero	8
	.globl	bombdamage
	.align 4
	.type	bombdamage, @object
	.size	bombdamage, 4
bombdamage:
	.zero	4
	.text
	.globl	PIT_RadiusAttack
	.type	PIT_RadiusAttack, @function
PIT_RadiusAttack:
.LFB22:
	.loc 1 1165 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# thing, thing
# p_map.c:1170:     if (!(thing->flags & MF_SHOOTABLE) )
	.loc 1 1170 16
	movq	-24(%rbp), %rax	# thing, tmp105
	movl	160(%rax), %eax	# thing_27(D)->flags, _1
# p_map.c:1170:     if (!(thing->flags & MF_SHOOTABLE) )
	.loc 1 1170 24
	andl	$4, %eax	#, _2
# p_map.c:1170:     if (!(thing->flags & MF_SHOOTABLE) )
	.loc 1 1170 8
	testl	%eax, %eax	# _2
	jne	.L156	#,
# p_map.c:1171: 	return true;
	.loc 1 1171 9
	movl	$1, %eax	#, _23
	jmp	.L157	#
.L156:
# p_map.c:1175:     if (thing->type == MT_CYBORG
	.loc 1 1175 14
	movq	-24(%rbp), %rax	# thing, tmp106
	movl	128(%rax), %eax	# thing_27(D)->type, _3
# p_map.c:1175:     if (thing->type == MT_CYBORG
	.loc 1 1175 8
	cmpl	$21, %eax	#, _3
	je	.L158	#,
# p_map.c:1176: 	|| thing->type == MT_SPIDER)
	.loc 1 1176 10
	movq	-24(%rbp), %rax	# thing, tmp107
	movl	128(%rax), %eax	# thing_27(D)->type, _4
# p_map.c:1176: 	|| thing->type == MT_SPIDER)
	.loc 1 1176 2
	cmpl	$19, %eax	#, _4
	jne	.L159	#,
.L158:
# p_map.c:1177: 	return true;	
	.loc 1 1177 9
	movl	$1, %eax	#, _23
	jmp	.L157	#
.L159:
# p_map.c:1179:     dx = abs(thing->x - bombspot->x);
	.loc 1 1179 19
	movq	-24(%rbp), %rax	# thing, tmp108
	movl	24(%rax), %ecx	# thing_27(D)->x, _5
# p_map.c:1179:     dx = abs(thing->x - bombspot->x);
	.loc 1 1179 33
	movq	bombspot(%rip), %rax	# bombspot, bombspot.183_6
	movl	24(%rax), %edx	# bombspot.183_6->x, _7
# p_map.c:1179:     dx = abs(thing->x - bombspot->x);
	.loc 1 1179 23
	movl	%ecx, %eax	# _5, _5
	subl	%edx, %eax	# _7, _5
# p_map.c:1179:     dx = abs(thing->x - bombspot->x);
	.loc 1 1179 8
	movl	%eax, %edx	# _8, tmp120
	negl	%edx	# tmp120
	cmovns	%edx, %eax	# tmp120,, tmp109
	movl	%eax, -8(%rbp)	# tmp109, dx
# p_map.c:1180:     dy = abs(thing->y - bombspot->y);
	.loc 1 1180 19
	movq	-24(%rbp), %rax	# thing, tmp110
	movl	28(%rax), %ecx	# thing_27(D)->y, _9
# p_map.c:1180:     dy = abs(thing->y - bombspot->y);
	.loc 1 1180 33
	movq	bombspot(%rip), %rax	# bombspot, bombspot.184_10
	movl	28(%rax), %edx	# bombspot.184_10->y, _11
# p_map.c:1180:     dy = abs(thing->y - bombspot->y);
	.loc 1 1180 23
	movl	%ecx, %eax	# _9, _9
	subl	%edx, %eax	# _11, _9
# p_map.c:1180:     dy = abs(thing->y - bombspot->y);
	.loc 1 1180 8
	movl	%eax, %edx	# _12, tmp121
	negl	%edx	# tmp121
	cmovns	%edx, %eax	# tmp121,, tmp111
	movl	%eax, -4(%rbp)	# tmp111, dy
# p_map.c:1182:     dist = dx>dy ? dx : dy;
	.loc 1 1182 10
	movl	-4(%rbp), %edx	# dy, tmp113
	movl	-8(%rbp), %eax	# dx, tmp122
	cmpl	%eax, %edx	# tmp122, tmp113
	cmovge	%edx, %eax	# tmp113,, tmp112
	movl	%eax, -12(%rbp)	# tmp112, dist
# p_map.c:1183:     dist = (dist - thing->radius) >> FRACBITS;
	.loc 1 1183 25
	movq	-24(%rbp), %rax	# thing, tmp114
	movl	104(%rax), %eax	# thing_27(D)->radius, _13
# p_map.c:1183:     dist = (dist - thing->radius) >> FRACBITS;
	.loc 1 1183 18
	movl	-12(%rbp), %edx	# dist, tmp115
	subl	%eax, %edx	# _13, _14
# p_map.c:1183:     dist = (dist - thing->radius) >> FRACBITS;
	.loc 1 1183 10
	movl	%edx, %eax	# _14, _14
	sarl	$16, %eax	#, _14
	movl	%eax, -12(%rbp)	# tmp116, dist
# p_map.c:1185:     if (dist < 0)
	.loc 1 1185 8
	cmpl	$0, -12(%rbp)	#, dist
	jns	.L160	#,
# p_map.c:1186: 	dist = 0;
	.loc 1 1186 7
	movl	$0, -12(%rbp)	#, dist
.L160:
# p_map.c:1188:     if (dist >= bombdamage)
	.loc 1 1188 14
	movl	bombdamage(%rip), %eax	# bombdamage, bombdamage.185_15
# p_map.c:1188:     if (dist >= bombdamage)
	.loc 1 1188 8
	cmpl	%eax, -12(%rbp)	# bombdamage.185_15, dist
	jl	.L161	#,
# p_map.c:1189: 	return true;	// out of range
	.loc 1 1189 9
	movl	$1, %eax	#, _23
	jmp	.L157	#
.L161:
# p_map.c:1191:     if ( P_CheckSight (thing, bombspot) )
	.loc 1 1191 10
	movq	bombspot(%rip), %rdx	# bombspot, bombspot.186_16
	movq	-24(%rbp), %rax	# thing, tmp117
	movq	%rdx, %rsi	# bombspot.186_16,
	movq	%rax, %rdi	# tmp117,
	call	P_CheckSight@PLT	#
# p_map.c:1191:     if ( P_CheckSight (thing, bombspot) )
	.loc 1 1191 8 discriminator 1
	testl	%eax, %eax	# _17
	je	.L162	#,
# p_map.c:1194: 	P_DamageMobj (thing, bombspot, bombsource, bombdamage - dist);
	.loc 1 1194 2
	movl	bombdamage(%rip), %eax	# bombdamage, bombdamage.187_18
	subl	-12(%rbp), %eax	# dist, bombdamage.187_18
	movl	%eax, %ecx	# bombdamage.187_18, _19
	movq	bombsource(%rip), %rdx	# bombsource, bombsource.188_20
	movq	bombspot(%rip), %rsi	# bombspot, bombspot.189_21
	movq	-24(%rbp), %rax	# thing, tmp118
	movq	%rax, %rdi	# tmp118,
	call	P_DamageMobj@PLT	#
.L162:
# p_map.c:1197:     return true;
	.loc 1 1197 12
	movl	$1, %eax	#, _23
.L157:
# p_map.c:1198: }
	.loc 1 1198 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	PIT_RadiusAttack, .-PIT_RadiusAttack
	.globl	P_RadiusAttack
	.type	P_RadiusAttack, @function
P_RadiusAttack:
.LFB23:
	.loc 1 1210 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# spot, spot
	movq	%rsi, -48(%rbp)	# source, source
	movl	%edx, -52(%rbp)	# damage, damage
# p_map.c:1221:     dist = (damage+MAXRADIUS)<<FRACBITS;
	.loc 1 1221 19
	movl	-52(%rbp), %eax	# damage, tmp99
	addl	$2097152, %eax	#, _1
# p_map.c:1221:     dist = (damage+MAXRADIUS)<<FRACBITS;
	.loc 1 1221 10
	sall	$16, %eax	#, tmp100
	movl	%eax, -20(%rbp)	# tmp100, dist
# p_map.c:1222:     yh = (spot->y + dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1222 15
	movq	-40(%rbp), %rax	# spot, tmp101
	movl	28(%rax), %edx	# spot_25(D)->y, _2
# p_map.c:1222:     yh = (spot->y + dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1222 19
	movl	-20(%rbp), %eax	# dist, tmp102
	addl	%eax, %edx	# tmp102, _3
# p_map.c:1222:     yh = (spot->y + dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1222 26
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.190_4
	subl	%eax, %edx	# bmaporgy.190_4, _5
# p_map.c:1222:     yh = (spot->y + dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1222 8
	movl	%edx, %eax	# _5, _5
	sarl	$23, %eax	#, _5
	movl	%eax, -16(%rbp)	# tmp103, yh
# p_map.c:1223:     yl = (spot->y - dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1223 15
	movq	-40(%rbp), %rax	# spot, tmp104
	movl	28(%rax), %eax	# spot_25(D)->y, _6
# p_map.c:1223:     yl = (spot->y - dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1223 19
	subl	-20(%rbp), %eax	# dist, _6
	movl	%eax, %edx	# _6, _7
# p_map.c:1223:     yl = (spot->y - dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1223 26
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.191_8
	subl	%eax, %edx	# bmaporgy.191_8, _9
# p_map.c:1223:     yl = (spot->y - dist - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 1223 8
	movl	%edx, %eax	# _9, _9
	sarl	$23, %eax	#, _9
	movl	%eax, -12(%rbp)	# tmp105, yl
# p_map.c:1224:     xh = (spot->x + dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1224 15
	movq	-40(%rbp), %rax	# spot, tmp106
	movl	24(%rax), %edx	# spot_25(D)->x, _10
# p_map.c:1224:     xh = (spot->x + dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1224 19
	movl	-20(%rbp), %eax	# dist, tmp107
	addl	%eax, %edx	# tmp107, _11
# p_map.c:1224:     xh = (spot->x + dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1224 26
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.192_12
	subl	%eax, %edx	# bmaporgx.192_12, _13
# p_map.c:1224:     xh = (spot->x + dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1224 8
	movl	%edx, %eax	# _13, _13
	sarl	$23, %eax	#, _13
	movl	%eax, -8(%rbp)	# tmp108, xh
# p_map.c:1225:     xl = (spot->x - dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1225 15
	movq	-40(%rbp), %rax	# spot, tmp109
	movl	24(%rax), %eax	# spot_25(D)->x, _14
# p_map.c:1225:     xl = (spot->x - dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1225 19
	subl	-20(%rbp), %eax	# dist, _14
	movl	%eax, %edx	# _14, _15
# p_map.c:1225:     xl = (spot->x - dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1225 26
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.193_16
	subl	%eax, %edx	# bmaporgx.193_16, _17
# p_map.c:1225:     xl = (spot->x - dist - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 1225 8
	movl	%edx, %eax	# _17, _17
	sarl	$23, %eax	#, _17
	movl	%eax, -4(%rbp)	# tmp110, xl
# p_map.c:1226:     bombspot = spot;
	.loc 1 1226 14
	movq	-40(%rbp), %rax	# spot, tmp111
	movq	%rax, bombspot(%rip)	# tmp111, bombspot
# p_map.c:1227:     bombsource = source;
	.loc 1 1227 16
	movq	-48(%rbp), %rax	# source, tmp112
	movq	%rax, bombsource(%rip)	# tmp112, bombsource
# p_map.c:1228:     bombdamage = damage;
	.loc 1 1228 16
	movl	-52(%rbp), %eax	# damage, tmp113
	movl	%eax, bombdamage(%rip)	# tmp113, bombdamage
# p_map.c:1230:     for (y=yl ; y<=yh ; y++)
	.loc 1 1230 11
	movl	-12(%rbp), %eax	# yl, tmp114
	movl	%eax, -24(%rbp)	# tmp114, y
# p_map.c:1230:     for (y=yl ; y<=yh ; y++)
	.loc 1 1230 5
	jmp	.L164	#
.L167:
# p_map.c:1231: 	for (x=xl ; x<=xh ; x++)
	.loc 1 1231 8
	movl	-4(%rbp), %eax	# xl, tmp115
	movl	%eax, -28(%rbp)	# tmp115, x
# p_map.c:1231: 	for (x=xl ; x<=xh ; x++)
	.loc 1 1231 2
	jmp	.L165	#
.L166:
# p_map.c:1232: 	    P_BlockThingsIterator (x, y, PIT_RadiusAttack );
	.loc 1 1232 6
	movl	-24(%rbp), %ecx	# y, tmp116
	movl	-28(%rbp), %eax	# x, tmp117
	leaq	PIT_RadiusAttack(%rip), %rdx	#, tmp118
	movl	%ecx, %esi	# tmp116,
	movl	%eax, %edi	# tmp117,
	call	P_BlockThingsIterator@PLT	#
# p_map.c:1231: 	for (x=xl ; x<=xh ; x++)
	.loc 1 1231 23 discriminator 3
	addl	$1, -28(%rbp)	#, x
.L165:
# p_map.c:1231: 	for (x=xl ; x<=xh ; x++)
	.loc 1 1231 15 discriminator 1
	movl	-28(%rbp), %eax	# x, tmp119
	cmpl	-8(%rbp), %eax	# xh, tmp119
	jle	.L166	#,
# p_map.c:1230:     for (y=yl ; y<=yh ; y++)
	.loc 1 1230 26 discriminator 2
	addl	$1, -24(%rbp)	#, y
.L164:
# p_map.c:1230:     for (y=yl ; y<=yh ; y++)
	.loc 1 1230 18 discriminator 1
	movl	-24(%rbp), %eax	# y, tmp120
	cmpl	-16(%rbp), %eax	# yh, tmp120
	jle	.L167	#,
# p_map.c:1233: }
	.loc 1 1233 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	P_RadiusAttack, .-P_RadiusAttack
	.globl	crushchange
	.bss
	.align 4
	.type	crushchange, @object
	.size	crushchange, 4
crushchange:
	.zero	4
	.globl	nofit
	.align 4
	.type	nofit, @object
	.size	nofit, 4
nofit:
	.zero	4
	.text
	.globl	PIT_ChangeSector
	.type	PIT_ChangeSector, @function
PIT_ChangeSector:
.LFB24:
	.loc 1 1258 1
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
	movq	%rdi, -40(%rbp)	# thing, thing
# p_map.c:1261:     if (P_ThingHeightClip (thing))
	.loc 1 1261 9
	movq	-40(%rbp), %rax	# thing, tmp109
	movq	%rax, %rdi	# tmp109,
	call	P_ThingHeightClip	#
# p_map.c:1261:     if (P_ThingHeightClip (thing))
	.loc 1 1261 8 discriminator 1
	testl	%eax, %eax	# _1
	je	.L169	#,
# p_map.c:1264: 	return true;
	.loc 1 1264 9
	movl	$1, %eax	#, _26
	jmp	.L170	#
.L169:
# p_map.c:1269:     if (thing->health <= 0)
	.loc 1 1269 14
	movq	-40(%rbp), %rax	# thing, tmp110
	movl	164(%rax), %eax	# thing_30(D)->health, _2
# p_map.c:1269:     if (thing->health <= 0)
	.loc 1 1269 8
	testl	%eax, %eax	# _2
	jg	.L171	#,
# p_map.c:1271: 	P_SetMobjState (thing, S_GIBS);
	.loc 1 1271 2
	movq	-40(%rbp), %rax	# thing, tmp111
	movl	$895, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	P_SetMobjState@PLT	#
# p_map.c:1273: 	thing->flags &= ~MF_SOLID;
	.loc 1 1273 7
	movq	-40(%rbp), %rax	# thing, tmp112
	movl	160(%rax), %eax	# thing_30(D)->flags, _3
# p_map.c:1273: 	thing->flags &= ~MF_SOLID;
	.loc 1 1273 15
	andl	$-3, %eax	#, _3
	movl	%eax, %edx	# _3, _4
	movq	-40(%rbp), %rax	# thing, tmp113
	movl	%edx, 160(%rax)	# _4, thing_30(D)->flags
# p_map.c:1274: 	thing->height = 0;
	.loc 1 1274 16
	movq	-40(%rbp), %rax	# thing, tmp114
	movl	$0, 108(%rax)	#, thing_30(D)->height
# p_map.c:1275: 	thing->radius = 0;
	.loc 1 1275 16
	movq	-40(%rbp), %rax	# thing, tmp115
	movl	$0, 104(%rax)	#, thing_30(D)->radius
# p_map.c:1278: 	return true;		
	.loc 1 1278 9
	movl	$1, %eax	#, _26
	jmp	.L170	#
.L171:
# p_map.c:1282:     if (thing->flags & MF_DROPPED)
	.loc 1 1282 14
	movq	-40(%rbp), %rax	# thing, tmp116
	movl	160(%rax), %eax	# thing_30(D)->flags, _5
# p_map.c:1282:     if (thing->flags & MF_DROPPED)
	.loc 1 1282 22
	andl	$131072, %eax	#, _6
# p_map.c:1282:     if (thing->flags & MF_DROPPED)
	.loc 1 1282 8
	testl	%eax, %eax	# _6
	je	.L172	#,
# p_map.c:1284: 	P_RemoveMobj (thing);
	.loc 1 1284 2
	movq	-40(%rbp), %rax	# thing, tmp117
	movq	%rax, %rdi	# tmp117,
	call	P_RemoveMobj@PLT	#
# p_map.c:1287: 	return true;		
	.loc 1 1287 9
	movl	$1, %eax	#, _26
	jmp	.L170	#
.L172:
# p_map.c:1290:     if (! (thing->flags & MF_SHOOTABLE) )
	.loc 1 1290 17
	movq	-40(%rbp), %rax	# thing, tmp118
	movl	160(%rax), %eax	# thing_30(D)->flags, _7
# p_map.c:1290:     if (! (thing->flags & MF_SHOOTABLE) )
	.loc 1 1290 25
	andl	$4, %eax	#, _8
# p_map.c:1290:     if (! (thing->flags & MF_SHOOTABLE) )
	.loc 1 1290 8
	testl	%eax, %eax	# _8
	jne	.L173	#,
# p_map.c:1293: 	return true;			
	.loc 1 1293 9
	movl	$1, %eax	#, _26
	jmp	.L170	#
.L173:
# p_map.c:1296:     nofit = true;
	.loc 1 1296 11
	movl	$1, nofit(%rip)	#, nofit
# p_map.c:1298:     if (crushchange && !(leveltime&3) )
	.loc 1 1298 9
	movl	crushchange(%rip), %eax	# crushchange, crushchange.194_9
# p_map.c:1298:     if (crushchange && !(leveltime&3) )
	.loc 1 1298 8
	testl	%eax, %eax	# crushchange.194_9
	je	.L174	#,
# p_map.c:1298:     if (crushchange && !(leveltime&3) )
	.loc 1 1298 35 discriminator 1
	movl	leveltime(%rip), %eax	# leveltime, leveltime.195_10
	andl	$3, %eax	#, _11
# p_map.c:1298:     if (crushchange && !(leveltime&3) )
	.loc 1 1298 21 discriminator 1
	testl	%eax, %eax	# _11
	jne	.L174	#,
# p_map.c:1300: 	P_DamageMobj(thing,NULL,NULL,10);
	.loc 1 1300 2
	movq	-40(%rbp), %rax	# thing, tmp119
	movl	$10, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	P_DamageMobj@PLT	#
# p_map.c:1305: 			  thing->z + thing->height/2, MT_BLOOD);
	.loc 1 1305 11
	movq	-40(%rbp), %rax	# thing, tmp120
	movl	32(%rax), %edx	# thing_30(D)->z, _12
# p_map.c:1305: 			  thing->z + thing->height/2, MT_BLOOD);
	.loc 1 1305 22
	movq	-40(%rbp), %rax	# thing, tmp121
	movl	108(%rax), %eax	# thing_30(D)->height, _13
# p_map.c:1305: 			  thing->z + thing->height/2, MT_BLOOD);
	.loc 1 1305 30
	movl	%eax, %ecx	# _13, tmp122
	shrl	$31, %ecx	#, tmp122
	addl	%ecx, %eax	# tmp122, tmp123
	sarl	%eax	# tmp124
# p_map.c:1303: 	mo = P_SpawnMobj (thing->x,
	.loc 1 1303 7
	addl	%eax, %edx	# _14, _15
	movq	-40(%rbp), %rax	# thing, tmp125
	movl	28(%rax), %esi	# thing_30(D)->y, _16
	movq	-40(%rbp), %rax	# thing, tmp126
	movl	24(%rax), %eax	# thing_30(D)->x, _17
	movl	$38, %ecx	#,
	movl	%eax, %edi	# _17,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -24(%rbp)	# tmp127, mo
# p_map.c:1307: 	mo->momx = (P_Random() - P_Random ())<<12;
	.loc 1 1307 14
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _18
# p_map.c:1307: 	mo->momx = (P_Random() - P_Random ())<<12;
	.loc 1 1307 27 discriminator 1
	call	P_Random@PLT	#
# p_map.c:1307: 	mo->momx = (P_Random() - P_Random ())<<12;
	.loc 1 1307 25 discriminator 2
	subl	%eax, %ebx	# _19, _18
	movl	%ebx, %edx	# _18, _20
# p_map.c:1307: 	mo->momx = (P_Random() - P_Random ())<<12;
	.loc 1 1307 39 discriminator 2
	sall	$12, %edx	#, _21
# p_map.c:1307: 	mo->momx = (P_Random() - P_Random ())<<12;
	.loc 1 1307 11 discriminator 2
	movq	-24(%rbp), %rax	# mo, tmp128
	movl	%edx, 112(%rax)	# _21, mo_35->momx
# p_map.c:1308: 	mo->momy = (P_Random() - P_Random ())<<12;
	.loc 1 1308 14
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _22
# p_map.c:1308: 	mo->momy = (P_Random() - P_Random ())<<12;
	.loc 1 1308 27 discriminator 1
	call	P_Random@PLT	#
# p_map.c:1308: 	mo->momy = (P_Random() - P_Random ())<<12;
	.loc 1 1308 25 discriminator 2
	subl	%eax, %ebx	# _23, _22
	movl	%ebx, %edx	# _22, _24
# p_map.c:1308: 	mo->momy = (P_Random() - P_Random ())<<12;
	.loc 1 1308 39 discriminator 2
	sall	$12, %edx	#, _25
# p_map.c:1308: 	mo->momy = (P_Random() - P_Random ())<<12;
	.loc 1 1308 11 discriminator 2
	movq	-24(%rbp), %rax	# mo, tmp129
	movl	%edx, 116(%rax)	# _25, mo_35->momy
.L174:
# p_map.c:1312:     return true;	
	.loc 1 1312 12
	movl	$1, %eax	#, _26
.L170:
# p_map.c:1313: }
	.loc 1 1313 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	PIT_ChangeSector, .-PIT_ChangeSector
	.globl	P_ChangeSector
	.type	P_ChangeSector, @function
P_ChangeSector:
.LFB25:
	.loc 1 1324 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sector, sector
	movl	%esi, -28(%rbp)	# crunch, crunch
# p_map.c:1328:     nofit = false;
	.loc 1 1328 11
	movl	$0, nofit(%rip)	#, nofit
# p_map.c:1329:     crushchange = crunch;
	.loc 1 1329 17
	movl	-28(%rbp), %eax	# crunch, tmp86
	movl	%eax, crushchange(%rip)	# tmp86, crushchange
# p_map.c:1332:     for (x=sector->blockbox[BOXLEFT] ; x<= sector->blockbox[BOXRIGHT] ; x++)
	.loc 1 1332 11
	movq	-24(%rbp), %rax	# sector, tmp87
	movl	40(%rax), %eax	# sector_11(D)->blockbox[2], tmp88
	movl	%eax, -8(%rbp)	# tmp88, x
# p_map.c:1332:     for (x=sector->blockbox[BOXLEFT] ; x<= sector->blockbox[BOXRIGHT] ; x++)
	.loc 1 1332 5
	jmp	.L176	#
.L179:
# p_map.c:1333: 	for (y=sector->blockbox[BOXBOTTOM];y<= sector->blockbox[BOXTOP] ; y++)
	.loc 1 1333 8
	movq	-24(%rbp), %rax	# sector, tmp89
	movl	36(%rax), %eax	# sector_11(D)->blockbox[1], tmp90
	movl	%eax, -4(%rbp)	# tmp90, y
# p_map.c:1333: 	for (y=sector->blockbox[BOXBOTTOM];y<= sector->blockbox[BOXTOP] ; y++)
	.loc 1 1333 2
	jmp	.L177	#
.L178:
# p_map.c:1334: 	    P_BlockThingsIterator (x, y, PIT_ChangeSector);
	.loc 1 1334 6
	movl	-4(%rbp), %ecx	# y, tmp91
	movl	-8(%rbp), %eax	# x, tmp92
	leaq	PIT_ChangeSector(%rip), %rdx	#, tmp93
	movl	%ecx, %esi	# tmp91,
	movl	%eax, %edi	# tmp92,
	call	P_BlockThingsIterator@PLT	#
# p_map.c:1333: 	for (y=sector->blockbox[BOXBOTTOM];y<= sector->blockbox[BOXTOP] ; y++)
	.loc 1 1333 69 discriminator 3
	addl	$1, -4(%rbp)	#, y
.L177:
# p_map.c:1333: 	for (y=sector->blockbox[BOXBOTTOM];y<= sector->blockbox[BOXTOP] ; y++)
	.loc 1 1333 57 discriminator 1
	movq	-24(%rbp), %rax	# sector, tmp94
	movl	32(%rax), %eax	# sector_11(D)->blockbox[0], _1
# p_map.c:1333: 	for (y=sector->blockbox[BOXBOTTOM];y<= sector->blockbox[BOXTOP] ; y++)
	.loc 1 1333 38 discriminator 1
	cmpl	%eax, -4(%rbp)	# _1, y
	jle	.L178	#,
# p_map.c:1332:     for (x=sector->blockbox[BOXLEFT] ; x<= sector->blockbox[BOXRIGHT] ; x++)
	.loc 1 1332 74 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L176:
# p_map.c:1332:     for (x=sector->blockbox[BOXLEFT] ; x<= sector->blockbox[BOXRIGHT] ; x++)
	.loc 1 1332 60 discriminator 1
	movq	-24(%rbp), %rax	# sector, tmp95
	movl	44(%rax), %eax	# sector_11(D)->blockbox[3], _2
# p_map.c:1332:     for (x=sector->blockbox[BOXLEFT] ; x<= sector->blockbox[BOXRIGHT] ; x++)
	.loc 1 1332 41 discriminator 1
	cmpl	%eax, -8(%rbp)	# _2, x
	jle	.L179	#,
# p_map.c:1337:     return nofit;
	.loc 1 1337 12
	movl	nofit(%rip), %eax	# nofit, _13
# p_map.c:1338: }
	.loc 1 1338 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	P_ChangeSector, .-P_ChangeSector
.Letext0:
	.file 2 "m_bbox.h"
	.file 3 "doomtype.h"
	.file 4 "m_fixed.h"
	.file 5 "d_ticcmd.h"
	.file 6 "doomdef.h"
	.file 7 "tables.h"
	.file 8 "d_think.h"
	.file 9 "doomdata.h"
	.file 10 "info.h"
	.file 11 "p_mobj.h"
	.file 12 "r_defs.h"
	.file 13 "d_player.h"
	.file 14 "p_pspr.h"
	.file 15 "r_state.h"
	.file 16 "r_main.h"
	.file 17 "p_local.h"
	.file 18 "doomstat.h"
	.file 19 "sounds.h"
	.file 20 "p_spec.h"
	.file 21 "s_sound.h"
	.file 22 "i_system.h"
	.file 23 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x415e
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2e
	.long	.LASF1725
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x14
	.long	0x51
	.long	0x3e
	.uleb128 0x16
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x27
	.long	0x2e
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x27
	.long	0x4a
	.uleb128 0x1a
	.long	.LASF1673
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x2f
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
	.uleb128 0x30
	.byte	0x8
	.uleb128 0xa
	.long	0x4a
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x26
	.byte	0xd
	.long	0x6b
	.uleb128 0xf
	.long	0x8e
	.byte	0x2
	.byte	0x21
	.byte	0x1
	.long	0xe2
	.uleb128 0x2
	.long	.LASF12
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x1
	.uleb128 0x2
	.long	.LASF14
	.byte	0x2
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	0x8e
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0xfb
	.uleb128 0x2
	.long	.LASF16
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0xe2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x80
	.uleb128 0x17
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.long	0x16a
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x28
	.byte	0xb
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x29
	.byte	0xb
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0x2a
	.byte	0xa
	.long	0x107
	.byte	0x6
	.uleb128 0x3
	.long	.LASF26
	.byte	0x5
	.byte	0x2b
	.byte	0xa
	.long	0x107
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x2c
	.byte	0x3
	.long	0x113
	.uleb128 0xf
	.long	0x8e
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.long	0x1ad
	.uleb128 0x2
	.long	.LASF28
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x1
	.uleb128 0x2
	.long	.LASF30
	.byte	0x2
	.uleb128 0x2
	.long	.LASF31
	.byte	0x3
	.uleb128 0x2
	.long	.LASF32
	.byte	0x4
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.uleb128 0x2
	.long	.LASF34
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x8e
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.long	0x1fc
	.uleb128 0x2
	.long	.LASF35
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x1
	.uleb128 0x2
	.long	.LASF37
	.byte	0x2
	.uleb128 0x2
	.long	.LASF38
	.byte	0x3
	.uleb128 0x2
	.long	.LASF39
	.byte	0x4
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.uleb128 0x2
	.long	.LASF42
	.byte	0x7
	.uleb128 0x2
	.long	.LASF43
	.byte	0x8
	.uleb128 0x2
	.long	.LASF44
	.byte	0x9
	.uleb128 0x2
	.long	.LASF45
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x6
	.byte	0xc5
	.byte	0x3
	.long	0x1ad
	.uleb128 0xf
	.long	0x8e
	.byte	0x6
	.byte	0xca
	.byte	0x1
	.long	0x239
	.uleb128 0x2
	.long	.LASF47
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x1
	.uleb128 0x2
	.long	.LASF49
	.byte	0x2
	.uleb128 0x2
	.long	.LASF50
	.byte	0x3
	.uleb128 0x2
	.long	.LASF51
	.byte	0x4
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	0x8e
	.byte	0x6
	.byte	0xd7
	.byte	0x1
	.long	0x270
	.uleb128 0x2
	.long	.LASF53
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x1
	.uleb128 0x2
	.long	.LASF55
	.byte	0x2
	.uleb128 0x2
	.long	.LASF56
	.byte	0x3
	.uleb128 0x2
	.long	.LASF57
	.byte	0x4
	.uleb128 0x2
	.long	.LASF58
	.byte	0x5
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.long	.LASF60
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.long	.LASF61
	.uleb128 0x14
	.long	0xb1
	.long	0x28f
	.uleb128 0x31
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0xb
	.long	.LASF62
	.byte	0x7
	.byte	0x3a
	.byte	0x12
	.long	0x27e
	.uleb128 0xb
	.long	.LASF63
	.byte	0x7
	.byte	0x3d
	.byte	0x12
	.long	0x2a7
	.uleb128 0xa
	.long	0xb1
	.uleb128 0x9
	.long	.LASF64
	.byte	0x7
	.byte	0x4e
	.byte	0x12
	.long	0x8e
	.uleb128 0x9
	.long	.LASF65
	.byte	0x8
	.byte	0x29
	.byte	0x11
	.long	0x2c4
	.uleb128 0xa
	.long	0x2c9
	.uleb128 0x32
	.long	0x2d0
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x8
	.byte	0x2a
	.byte	0x11
	.long	0x2dc
	.uleb128 0xa
	.long	0x2e1
	.uleb128 0x29
	.long	0x2ec
	.uleb128 0x4
	.long	0xa3
	.byte	0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.byte	0x2b
	.byte	0x11
	.long	0x2f8
	.uleb128 0xa
	.long	0x2fd
	.uleb128 0x29
	.long	0x30d
	.uleb128 0x4
	.long	0xa3
	.uleb128 0x4
	.long	0xa3
	.byte	0
	.uleb128 0x2a
	.byte	0x8
	.byte	0x2d
	.byte	0x9
	.long	0x33a
	.uleb128 0x1d
	.long	.LASF68
	.byte	0x8
	.byte	0x2f
	.byte	0xe
	.long	0x2d0
	.uleb128 0x33
	.string	"acv"
	.byte	0x8
	.byte	0x30
	.byte	0xd
	.long	0x2b8
	.uleb128 0x1d
	.long	.LASF69
	.byte	0x8
	.byte	0x31
	.byte	0xe
	.long	0x2ec
	.byte	0
	.uleb128 0x9
	.long	.LASF70
	.byte	0x8
	.byte	0x33
	.byte	0x3
	.long	0x30d
	.uleb128 0x9
	.long	.LASF71
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.long	0x33a
	.uleb128 0x1e
	.long	.LASF1388
	.byte	0x18
	.byte	0x8
	.byte	0x40
	.long	0x386
	.uleb128 0x3
	.long	.LASF72
	.byte	0x8
	.byte	0x42
	.byte	0x17
	.long	0x386
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0x8
	.byte	0x43
	.byte	0x17
	.long	0x386
	.byte	0x8
	.uleb128 0x3
	.long	.LASF74
	.byte	0x8
	.byte	0x44
	.byte	0xe
	.long	0x346
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x352
	.uleb128 0x9
	.long	.LASF75
	.byte	0x8
	.byte	0x46
	.byte	0x3
	.long	0x352
	.uleb128 0x14
	.long	0x9c
	.long	0x3a7
	.uleb128 0x16
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0xa
	.byte	0x9
	.byte	0xcb
	.long	0x3ed
	.uleb128 0x8
	.string	"x"
	.byte	0x9
	.byte	0xcd
	.byte	0xc
	.long	0x9c
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x9
	.byte	0xce
	.byte	0xc
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF76
	.byte	0x9
	.byte	0xcf
	.byte	0xc
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF77
	.byte	0x9
	.byte	0xd0
	.byte	0xc
	.long	0x9c
	.byte	0x6
	.uleb128 0x3
	.long	.LASF78
	.byte	0x9
	.byte	0xd1
	.byte	0xc
	.long	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.byte	0x9
	.byte	0xd2
	.byte	0x3
	.long	0x3a7
	.uleb128 0xf
	.long	0x8e
	.byte	0xa
	.byte	0x1f
	.byte	0x1
	.long	0x748
	.uleb128 0x2
	.long	.LASF80
	.byte	0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x1
	.uleb128 0x2
	.long	.LASF82
	.byte	0x2
	.uleb128 0x2
	.long	.LASF83
	.byte	0x3
	.uleb128 0x2
	.long	.LASF84
	.byte	0x4
	.uleb128 0x2
	.long	.LASF85
	.byte	0x5
	.uleb128 0x2
	.long	.LASF86
	.byte	0x6
	.uleb128 0x2
	.long	.LASF87
	.byte	0x7
	.uleb128 0x2
	.long	.LASF88
	.byte	0x8
	.uleb128 0x2
	.long	.LASF89
	.byte	0x9
	.uleb128 0x2
	.long	.LASF90
	.byte	0xa
	.uleb128 0x2
	.long	.LASF91
	.byte	0xb
	.uleb128 0x2
	.long	.LASF92
	.byte	0xc
	.uleb128 0x2
	.long	.LASF93
	.byte	0xd
	.uleb128 0x2
	.long	.LASF94
	.byte	0xe
	.uleb128 0x2
	.long	.LASF95
	.byte	0xf
	.uleb128 0x2
	.long	.LASF96
	.byte	0x10
	.uleb128 0x2
	.long	.LASF97
	.byte	0x11
	.uleb128 0x2
	.long	.LASF98
	.byte	0x12
	.uleb128 0x2
	.long	.LASF99
	.byte	0x13
	.uleb128 0x2
	.long	.LASF100
	.byte	0x14
	.uleb128 0x2
	.long	.LASF101
	.byte	0x15
	.uleb128 0x2
	.long	.LASF102
	.byte	0x16
	.uleb128 0x2
	.long	.LASF103
	.byte	0x17
	.uleb128 0x2
	.long	.LASF104
	.byte	0x18
	.uleb128 0x2
	.long	.LASF105
	.byte	0x19
	.uleb128 0x2
	.long	.LASF106
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF107
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF109
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF112
	.byte	0x20
	.uleb128 0x2
	.long	.LASF113
	.byte	0x21
	.uleb128 0x2
	.long	.LASF114
	.byte	0x22
	.uleb128 0x2
	.long	.LASF115
	.byte	0x23
	.uleb128 0x2
	.long	.LASF116
	.byte	0x24
	.uleb128 0x2
	.long	.LASF117
	.byte	0x25
	.uleb128 0x2
	.long	.LASF118
	.byte	0x26
	.uleb128 0x2
	.long	.LASF119
	.byte	0x27
	.uleb128 0x2
	.long	.LASF120
	.byte	0x28
	.uleb128 0x2
	.long	.LASF121
	.byte	0x29
	.uleb128 0x2
	.long	.LASF122
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF123
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF125
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF128
	.byte	0x30
	.uleb128 0x2
	.long	.LASF129
	.byte	0x31
	.uleb128 0x2
	.long	.LASF130
	.byte	0x32
	.uleb128 0x2
	.long	.LASF131
	.byte	0x33
	.uleb128 0x2
	.long	.LASF132
	.byte	0x34
	.uleb128 0x2
	.long	.LASF133
	.byte	0x35
	.uleb128 0x2
	.long	.LASF134
	.byte	0x36
	.uleb128 0x2
	.long	.LASF135
	.byte	0x37
	.uleb128 0x2
	.long	.LASF136
	.byte	0x38
	.uleb128 0x2
	.long	.LASF137
	.byte	0x39
	.uleb128 0x2
	.long	.LASF138
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF139
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF140
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF141
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF144
	.byte	0x40
	.uleb128 0x2
	.long	.LASF145
	.byte	0x41
	.uleb128 0x2
	.long	.LASF146
	.byte	0x42
	.uleb128 0x2
	.long	.LASF147
	.byte	0x43
	.uleb128 0x2
	.long	.LASF148
	.byte	0x44
	.uleb128 0x2
	.long	.LASF149
	.byte	0x45
	.uleb128 0x2
	.long	.LASF150
	.byte	0x46
	.uleb128 0x2
	.long	.LASF151
	.byte	0x47
	.uleb128 0x2
	.long	.LASF152
	.byte	0x48
	.uleb128 0x2
	.long	.LASF153
	.byte	0x49
	.uleb128 0x2
	.long	.LASF154
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF155
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF156
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF157
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF160
	.byte	0x50
	.uleb128 0x2
	.long	.LASF161
	.byte	0x51
	.uleb128 0x2
	.long	.LASF162
	.byte	0x52
	.uleb128 0x2
	.long	.LASF163
	.byte	0x53
	.uleb128 0x2
	.long	.LASF164
	.byte	0x54
	.uleb128 0x2
	.long	.LASF165
	.byte	0x55
	.uleb128 0x2
	.long	.LASF166
	.byte	0x56
	.uleb128 0x2
	.long	.LASF167
	.byte	0x57
	.uleb128 0x2
	.long	.LASF168
	.byte	0x58
	.uleb128 0x2
	.long	.LASF169
	.byte	0x59
	.uleb128 0x2
	.long	.LASF170
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF171
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF172
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF173
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF176
	.byte	0x60
	.uleb128 0x2
	.long	.LASF177
	.byte	0x61
	.uleb128 0x2
	.long	.LASF178
	.byte	0x62
	.uleb128 0x2
	.long	.LASF179
	.byte	0x63
	.uleb128 0x2
	.long	.LASF180
	.byte	0x64
	.uleb128 0x2
	.long	.LASF181
	.byte	0x65
	.uleb128 0x2
	.long	.LASF182
	.byte	0x66
	.uleb128 0x2
	.long	.LASF183
	.byte	0x67
	.uleb128 0x2
	.long	.LASF184
	.byte	0x68
	.uleb128 0x2
	.long	.LASF185
	.byte	0x69
	.uleb128 0x2
	.long	.LASF186
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF187
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF188
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF189
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF192
	.byte	0x70
	.uleb128 0x2
	.long	.LASF193
	.byte	0x71
	.uleb128 0x2
	.long	.LASF194
	.byte	0x72
	.uleb128 0x2
	.long	.LASF195
	.byte	0x73
	.uleb128 0x2
	.long	.LASF196
	.byte	0x74
	.uleb128 0x2
	.long	.LASF197
	.byte	0x75
	.uleb128 0x2
	.long	.LASF198
	.byte	0x76
	.uleb128 0x2
	.long	.LASF199
	.byte	0x77
	.uleb128 0x2
	.long	.LASF200
	.byte	0x78
	.uleb128 0x2
	.long	.LASF201
	.byte	0x79
	.uleb128 0x2
	.long	.LASF202
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF203
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF204
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF205
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF208
	.byte	0x80
	.uleb128 0x2
	.long	.LASF209
	.byte	0x81
	.uleb128 0x2
	.long	.LASF210
	.byte	0x82
	.uleb128 0x2
	.long	.LASF211
	.byte	0x83
	.uleb128 0x2
	.long	.LASF212
	.byte	0x84
	.uleb128 0x2
	.long	.LASF213
	.byte	0x85
	.uleb128 0x2
	.long	.LASF214
	.byte	0x86
	.uleb128 0x2
	.long	.LASF215
	.byte	0x87
	.uleb128 0x2
	.long	.LASF216
	.byte	0x88
	.uleb128 0x2
	.long	.LASF217
	.byte	0x89
	.uleb128 0x2
	.long	.LASF218
	.byte	0x8a
	.byte	0
	.uleb128 0x9
	.long	.LASF219
	.byte	0xa
	.byte	0xac
	.byte	0x3
	.long	0x3f9
	.uleb128 0xf
	.long	0x8e
	.byte	0xa
	.byte	0xaf
	.byte	0x1
	.long	0x20d9
	.uleb128 0x2
	.long	.LASF220
	.byte	0
	.uleb128 0x2
	.long	.LASF221
	.byte	0x1
	.uleb128 0x2
	.long	.LASF222
	.byte	0x2
	.uleb128 0x2
	.long	.LASF223
	.byte	0x3
	.uleb128 0x2
	.long	.LASF224
	.byte	0x4
	.uleb128 0x2
	.long	.LASF225
	.byte	0x5
	.uleb128 0x2
	.long	.LASF226
	.byte	0x6
	.uleb128 0x2
	.long	.LASF227
	.byte	0x7
	.uleb128 0x2
	.long	.LASF228
	.byte	0x8
	.uleb128 0x2
	.long	.LASF229
	.byte	0x9
	.uleb128 0x2
	.long	.LASF230
	.byte	0xa
	.uleb128 0x2
	.long	.LASF231
	.byte	0xb
	.uleb128 0x2
	.long	.LASF232
	.byte	0xc
	.uleb128 0x2
	.long	.LASF233
	.byte	0xd
	.uleb128 0x2
	.long	.LASF234
	.byte	0xe
	.uleb128 0x2
	.long	.LASF235
	.byte	0xf
	.uleb128 0x2
	.long	.LASF236
	.byte	0x10
	.uleb128 0x2
	.long	.LASF237
	.byte	0x11
	.uleb128 0x2
	.long	.LASF238
	.byte	0x12
	.uleb128 0x2
	.long	.LASF239
	.byte	0x13
	.uleb128 0x2
	.long	.LASF240
	.byte	0x14
	.uleb128 0x2
	.long	.LASF241
	.byte	0x15
	.uleb128 0x2
	.long	.LASF242
	.byte	0x16
	.uleb128 0x2
	.long	.LASF243
	.byte	0x17
	.uleb128 0x2
	.long	.LASF244
	.byte	0x18
	.uleb128 0x2
	.long	.LASF245
	.byte	0x19
	.uleb128 0x2
	.long	.LASF246
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF247
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF248
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF249
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF250
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF252
	.byte	0x20
	.uleb128 0x2
	.long	.LASF253
	.byte	0x21
	.uleb128 0x2
	.long	.LASF254
	.byte	0x22
	.uleb128 0x2
	.long	.LASF255
	.byte	0x23
	.uleb128 0x2
	.long	.LASF256
	.byte	0x24
	.uleb128 0x2
	.long	.LASF257
	.byte	0x25
	.uleb128 0x2
	.long	.LASF258
	.byte	0x26
	.uleb128 0x2
	.long	.LASF259
	.byte	0x27
	.uleb128 0x2
	.long	.LASF260
	.byte	0x28
	.uleb128 0x2
	.long	.LASF261
	.byte	0x29
	.uleb128 0x2
	.long	.LASF262
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF263
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF264
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF265
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF266
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF268
	.byte	0x30
	.uleb128 0x2
	.long	.LASF269
	.byte	0x31
	.uleb128 0x2
	.long	.LASF270
	.byte	0x32
	.uleb128 0x2
	.long	.LASF271
	.byte	0x33
	.uleb128 0x2
	.long	.LASF272
	.byte	0x34
	.uleb128 0x2
	.long	.LASF273
	.byte	0x35
	.uleb128 0x2
	.long	.LASF274
	.byte	0x36
	.uleb128 0x2
	.long	.LASF275
	.byte	0x37
	.uleb128 0x2
	.long	.LASF276
	.byte	0x38
	.uleb128 0x2
	.long	.LASF277
	.byte	0x39
	.uleb128 0x2
	.long	.LASF278
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF279
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF280
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF281
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF282
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF284
	.byte	0x40
	.uleb128 0x2
	.long	.LASF285
	.byte	0x41
	.uleb128 0x2
	.long	.LASF286
	.byte	0x42
	.uleb128 0x2
	.long	.LASF287
	.byte	0x43
	.uleb128 0x2
	.long	.LASF288
	.byte	0x44
	.uleb128 0x2
	.long	.LASF289
	.byte	0x45
	.uleb128 0x2
	.long	.LASF290
	.byte	0x46
	.uleb128 0x2
	.long	.LASF291
	.byte	0x47
	.uleb128 0x2
	.long	.LASF292
	.byte	0x48
	.uleb128 0x2
	.long	.LASF293
	.byte	0x49
	.uleb128 0x2
	.long	.LASF294
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF295
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF296
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF297
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF298
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF300
	.byte	0x50
	.uleb128 0x2
	.long	.LASF301
	.byte	0x51
	.uleb128 0x2
	.long	.LASF302
	.byte	0x52
	.uleb128 0x2
	.long	.LASF303
	.byte	0x53
	.uleb128 0x2
	.long	.LASF304
	.byte	0x54
	.uleb128 0x2
	.long	.LASF305
	.byte	0x55
	.uleb128 0x2
	.long	.LASF306
	.byte	0x56
	.uleb128 0x2
	.long	.LASF307
	.byte	0x57
	.uleb128 0x2
	.long	.LASF308
	.byte	0x58
	.uleb128 0x2
	.long	.LASF309
	.byte	0x59
	.uleb128 0x2
	.long	.LASF310
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF311
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF312
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF313
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF314
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF316
	.byte	0x60
	.uleb128 0x2
	.long	.LASF317
	.byte	0x61
	.uleb128 0x2
	.long	.LASF318
	.byte	0x62
	.uleb128 0x2
	.long	.LASF319
	.byte	0x63
	.uleb128 0x2
	.long	.LASF320
	.byte	0x64
	.uleb128 0x2
	.long	.LASF321
	.byte	0x65
	.uleb128 0x2
	.long	.LASF322
	.byte	0x66
	.uleb128 0x2
	.long	.LASF323
	.byte	0x67
	.uleb128 0x2
	.long	.LASF324
	.byte	0x68
	.uleb128 0x2
	.long	.LASF325
	.byte	0x69
	.uleb128 0x2
	.long	.LASF326
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF327
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF328
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF329
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF330
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF332
	.byte	0x70
	.uleb128 0x2
	.long	.LASF333
	.byte	0x71
	.uleb128 0x2
	.long	.LASF334
	.byte	0x72
	.uleb128 0x2
	.long	.LASF335
	.byte	0x73
	.uleb128 0x2
	.long	.LASF336
	.byte	0x74
	.uleb128 0x2
	.long	.LASF337
	.byte	0x75
	.uleb128 0x2
	.long	.LASF338
	.byte	0x76
	.uleb128 0x2
	.long	.LASF339
	.byte	0x77
	.uleb128 0x2
	.long	.LASF340
	.byte	0x78
	.uleb128 0x2
	.long	.LASF341
	.byte	0x79
	.uleb128 0x2
	.long	.LASF342
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF343
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF344
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF345
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF346
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF348
	.byte	0x80
	.uleb128 0x2
	.long	.LASF349
	.byte	0x81
	.uleb128 0x2
	.long	.LASF350
	.byte	0x82
	.uleb128 0x2
	.long	.LASF351
	.byte	0x83
	.uleb128 0x2
	.long	.LASF352
	.byte	0x84
	.uleb128 0x2
	.long	.LASF353
	.byte	0x85
	.uleb128 0x2
	.long	.LASF354
	.byte	0x86
	.uleb128 0x2
	.long	.LASF355
	.byte	0x87
	.uleb128 0x2
	.long	.LASF356
	.byte	0x88
	.uleb128 0x2
	.long	.LASF357
	.byte	0x89
	.uleb128 0x2
	.long	.LASF358
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF359
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF360
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF361
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF362
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF364
	.byte	0x90
	.uleb128 0x2
	.long	.LASF365
	.byte	0x91
	.uleb128 0x2
	.long	.LASF366
	.byte	0x92
	.uleb128 0x2
	.long	.LASF367
	.byte	0x93
	.uleb128 0x2
	.long	.LASF368
	.byte	0x94
	.uleb128 0x2
	.long	.LASF369
	.byte	0x95
	.uleb128 0x2
	.long	.LASF370
	.byte	0x96
	.uleb128 0x2
	.long	.LASF371
	.byte	0x97
	.uleb128 0x2
	.long	.LASF372
	.byte	0x98
	.uleb128 0x2
	.long	.LASF373
	.byte	0x99
	.uleb128 0x2
	.long	.LASF374
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF375
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF376
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF377
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF378
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF380
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF381
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF382
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF383
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF390
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF391
	.byte	0xab
	.uleb128 0x2
	.long	.LASF392
	.byte	0xac
	.uleb128 0x2
	.long	.LASF393
	.byte	0xad
	.uleb128 0x2
	.long	.LASF394
	.byte	0xae
	.uleb128 0x2
	.long	.LASF395
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF396
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF397
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF398
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF399
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF406
	.byte	0xba
	.uleb128 0x2
	.long	.LASF407
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF408
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF409
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF410
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF411
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF412
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF413
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF414
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF415
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF422
	.byte	0xca
	.uleb128 0x2
	.long	.LASF423
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF424
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF425
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF426
	.byte	0xce
	.uleb128 0x2
	.long	.LASF427
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF428
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF429
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF430
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF431
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF438
	.byte	0xda
	.uleb128 0x2
	.long	.LASF439
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF440
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF441
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF442
	.byte	0xde
	.uleb128 0x2
	.long	.LASF443
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF444
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF445
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF446
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF447
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF454
	.byte	0xea
	.uleb128 0x2
	.long	.LASF455
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF456
	.byte	0xec
	.uleb128 0x2
	.long	.LASF457
	.byte	0xed
	.uleb128 0x2
	.long	.LASF458
	.byte	0xee
	.uleb128 0x2
	.long	.LASF459
	.byte	0xef
	.uleb128 0x2
	.long	.LASF460
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF462
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF463
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF470
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF471
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF472
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF473
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF474
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF475
	.byte	0xff
	.uleb128 0x1
	.long	.LASF476
	.value	0x100
	.uleb128 0x1
	.long	.LASF477
	.value	0x101
	.uleb128 0x1
	.long	.LASF478
	.value	0x102
	.uleb128 0x1
	.long	.LASF479
	.value	0x103
	.uleb128 0x1
	.long	.LASF480
	.value	0x104
	.uleb128 0x1
	.long	.LASF481
	.value	0x105
	.uleb128 0x1
	.long	.LASF482
	.value	0x106
	.uleb128 0x1
	.long	.LASF483
	.value	0x107
	.uleb128 0x1
	.long	.LASF484
	.value	0x108
	.uleb128 0x1
	.long	.LASF485
	.value	0x109
	.uleb128 0x1
	.long	.LASF486
	.value	0x10a
	.uleb128 0x1
	.long	.LASF487
	.value	0x10b
	.uleb128 0x1
	.long	.LASF488
	.value	0x10c
	.uleb128 0x1
	.long	.LASF489
	.value	0x10d
	.uleb128 0x1
	.long	.LASF490
	.value	0x10e
	.uleb128 0x1
	.long	.LASF491
	.value	0x10f
	.uleb128 0x1
	.long	.LASF492
	.value	0x110
	.uleb128 0x1
	.long	.LASF493
	.value	0x111
	.uleb128 0x1
	.long	.LASF494
	.value	0x112
	.uleb128 0x1
	.long	.LASF495
	.value	0x113
	.uleb128 0x1
	.long	.LASF496
	.value	0x114
	.uleb128 0x1
	.long	.LASF497
	.value	0x115
	.uleb128 0x1
	.long	.LASF498
	.value	0x116
	.uleb128 0x1
	.long	.LASF499
	.value	0x117
	.uleb128 0x1
	.long	.LASF500
	.value	0x118
	.uleb128 0x1
	.long	.LASF501
	.value	0x119
	.uleb128 0x1
	.long	.LASF502
	.value	0x11a
	.uleb128 0x1
	.long	.LASF503
	.value	0x11b
	.uleb128 0x1
	.long	.LASF504
	.value	0x11c
	.uleb128 0x1
	.long	.LASF505
	.value	0x11d
	.uleb128 0x1
	.long	.LASF506
	.value	0x11e
	.uleb128 0x1
	.long	.LASF507
	.value	0x11f
	.uleb128 0x1
	.long	.LASF508
	.value	0x120
	.uleb128 0x1
	.long	.LASF509
	.value	0x121
	.uleb128 0x1
	.long	.LASF510
	.value	0x122
	.uleb128 0x1
	.long	.LASF511
	.value	0x123
	.uleb128 0x1
	.long	.LASF512
	.value	0x124
	.uleb128 0x1
	.long	.LASF513
	.value	0x125
	.uleb128 0x1
	.long	.LASF514
	.value	0x126
	.uleb128 0x1
	.long	.LASF515
	.value	0x127
	.uleb128 0x1
	.long	.LASF516
	.value	0x128
	.uleb128 0x1
	.long	.LASF517
	.value	0x129
	.uleb128 0x1
	.long	.LASF518
	.value	0x12a
	.uleb128 0x1
	.long	.LASF519
	.value	0x12b
	.uleb128 0x1
	.long	.LASF520
	.value	0x12c
	.uleb128 0x1
	.long	.LASF521
	.value	0x12d
	.uleb128 0x1
	.long	.LASF522
	.value	0x12e
	.uleb128 0x1
	.long	.LASF523
	.value	0x12f
	.uleb128 0x1
	.long	.LASF524
	.value	0x130
	.uleb128 0x1
	.long	.LASF525
	.value	0x131
	.uleb128 0x1
	.long	.LASF526
	.value	0x132
	.uleb128 0x1
	.long	.LASF527
	.value	0x133
	.uleb128 0x1
	.long	.LASF528
	.value	0x134
	.uleb128 0x1
	.long	.LASF529
	.value	0x135
	.uleb128 0x1
	.long	.LASF530
	.value	0x136
	.uleb128 0x1
	.long	.LASF531
	.value	0x137
	.uleb128 0x1
	.long	.LASF532
	.value	0x138
	.uleb128 0x1
	.long	.LASF533
	.value	0x139
	.uleb128 0x1
	.long	.LASF534
	.value	0x13a
	.uleb128 0x1
	.long	.LASF535
	.value	0x13b
	.uleb128 0x1
	.long	.LASF536
	.value	0x13c
	.uleb128 0x1
	.long	.LASF537
	.value	0x13d
	.uleb128 0x1
	.long	.LASF538
	.value	0x13e
	.uleb128 0x1
	.long	.LASF539
	.value	0x13f
	.uleb128 0x1
	.long	.LASF540
	.value	0x140
	.uleb128 0x1
	.long	.LASF541
	.value	0x141
	.uleb128 0x1
	.long	.LASF542
	.value	0x142
	.uleb128 0x1
	.long	.LASF543
	.value	0x143
	.uleb128 0x1
	.long	.LASF544
	.value	0x144
	.uleb128 0x1
	.long	.LASF545
	.value	0x145
	.uleb128 0x1
	.long	.LASF546
	.value	0x146
	.uleb128 0x1
	.long	.LASF547
	.value	0x147
	.uleb128 0x1
	.long	.LASF548
	.value	0x148
	.uleb128 0x1
	.long	.LASF549
	.value	0x149
	.uleb128 0x1
	.long	.LASF550
	.value	0x14a
	.uleb128 0x1
	.long	.LASF551
	.value	0x14b
	.uleb128 0x1
	.long	.LASF552
	.value	0x14c
	.uleb128 0x1
	.long	.LASF553
	.value	0x14d
	.uleb128 0x1
	.long	.LASF554
	.value	0x14e
	.uleb128 0x1
	.long	.LASF555
	.value	0x14f
	.uleb128 0x1
	.long	.LASF556
	.value	0x150
	.uleb128 0x1
	.long	.LASF557
	.value	0x151
	.uleb128 0x1
	.long	.LASF558
	.value	0x152
	.uleb128 0x1
	.long	.LASF559
	.value	0x153
	.uleb128 0x1
	.long	.LASF560
	.value	0x154
	.uleb128 0x1
	.long	.LASF561
	.value	0x155
	.uleb128 0x1
	.long	.LASF562
	.value	0x156
	.uleb128 0x1
	.long	.LASF563
	.value	0x157
	.uleb128 0x1
	.long	.LASF564
	.value	0x158
	.uleb128 0x1
	.long	.LASF565
	.value	0x159
	.uleb128 0x1
	.long	.LASF566
	.value	0x15a
	.uleb128 0x1
	.long	.LASF567
	.value	0x15b
	.uleb128 0x1
	.long	.LASF568
	.value	0x15c
	.uleb128 0x1
	.long	.LASF569
	.value	0x15d
	.uleb128 0x1
	.long	.LASF570
	.value	0x15e
	.uleb128 0x1
	.long	.LASF571
	.value	0x15f
	.uleb128 0x1
	.long	.LASF572
	.value	0x160
	.uleb128 0x1
	.long	.LASF573
	.value	0x161
	.uleb128 0x1
	.long	.LASF574
	.value	0x162
	.uleb128 0x1
	.long	.LASF575
	.value	0x163
	.uleb128 0x1
	.long	.LASF576
	.value	0x164
	.uleb128 0x1
	.long	.LASF577
	.value	0x165
	.uleb128 0x1
	.long	.LASF578
	.value	0x166
	.uleb128 0x1
	.long	.LASF579
	.value	0x167
	.uleb128 0x1
	.long	.LASF580
	.value	0x168
	.uleb128 0x1
	.long	.LASF581
	.value	0x169
	.uleb128 0x1
	.long	.LASF582
	.value	0x16a
	.uleb128 0x1
	.long	.LASF583
	.value	0x16b
	.uleb128 0x1
	.long	.LASF584
	.value	0x16c
	.uleb128 0x1
	.long	.LASF585
	.value	0x16d
	.uleb128 0x1
	.long	.LASF586
	.value	0x16e
	.uleb128 0x1
	.long	.LASF587
	.value	0x16f
	.uleb128 0x1
	.long	.LASF588
	.value	0x170
	.uleb128 0x1
	.long	.LASF589
	.value	0x171
	.uleb128 0x1
	.long	.LASF590
	.value	0x172
	.uleb128 0x1
	.long	.LASF591
	.value	0x173
	.uleb128 0x1
	.long	.LASF592
	.value	0x174
	.uleb128 0x1
	.long	.LASF593
	.value	0x175
	.uleb128 0x1
	.long	.LASF594
	.value	0x176
	.uleb128 0x1
	.long	.LASF595
	.value	0x177
	.uleb128 0x1
	.long	.LASF596
	.value	0x178
	.uleb128 0x1
	.long	.LASF597
	.value	0x179
	.uleb128 0x1
	.long	.LASF598
	.value	0x17a
	.uleb128 0x1
	.long	.LASF599
	.value	0x17b
	.uleb128 0x1
	.long	.LASF600
	.value	0x17c
	.uleb128 0x1
	.long	.LASF601
	.value	0x17d
	.uleb128 0x1
	.long	.LASF602
	.value	0x17e
	.uleb128 0x1
	.long	.LASF603
	.value	0x17f
	.uleb128 0x1
	.long	.LASF604
	.value	0x180
	.uleb128 0x1
	.long	.LASF605
	.value	0x181
	.uleb128 0x1
	.long	.LASF606
	.value	0x182
	.uleb128 0x1
	.long	.LASF607
	.value	0x183
	.uleb128 0x1
	.long	.LASF608
	.value	0x184
	.uleb128 0x1
	.long	.LASF609
	.value	0x185
	.uleb128 0x1
	.long	.LASF610
	.value	0x186
	.uleb128 0x1
	.long	.LASF611
	.value	0x187
	.uleb128 0x1
	.long	.LASF612
	.value	0x188
	.uleb128 0x1
	.long	.LASF613
	.value	0x189
	.uleb128 0x1
	.long	.LASF614
	.value	0x18a
	.uleb128 0x1
	.long	.LASF615
	.value	0x18b
	.uleb128 0x1
	.long	.LASF616
	.value	0x18c
	.uleb128 0x1
	.long	.LASF617
	.value	0x18d
	.uleb128 0x1
	.long	.LASF618
	.value	0x18e
	.uleb128 0x1
	.long	.LASF619
	.value	0x18f
	.uleb128 0x1
	.long	.LASF620
	.value	0x190
	.uleb128 0x1
	.long	.LASF621
	.value	0x191
	.uleb128 0x1
	.long	.LASF622
	.value	0x192
	.uleb128 0x1
	.long	.LASF623
	.value	0x193
	.uleb128 0x1
	.long	.LASF624
	.value	0x194
	.uleb128 0x1
	.long	.LASF625
	.value	0x195
	.uleb128 0x1
	.long	.LASF626
	.value	0x196
	.uleb128 0x1
	.long	.LASF627
	.value	0x197
	.uleb128 0x1
	.long	.LASF628
	.value	0x198
	.uleb128 0x1
	.long	.LASF629
	.value	0x199
	.uleb128 0x1
	.long	.LASF630
	.value	0x19a
	.uleb128 0x1
	.long	.LASF631
	.value	0x19b
	.uleb128 0x1
	.long	.LASF632
	.value	0x19c
	.uleb128 0x1
	.long	.LASF633
	.value	0x19d
	.uleb128 0x1
	.long	.LASF634
	.value	0x19e
	.uleb128 0x1
	.long	.LASF635
	.value	0x19f
	.uleb128 0x1
	.long	.LASF636
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF637
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF638
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF639
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF646
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF647
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF648
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF649
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF650
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF651
	.value	0x1af
	.uleb128 0x1
	.long	.LASF652
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF653
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF654
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF655
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF662
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF663
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF664
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF665
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF666
	.value	0x1be
	.uleb128 0x1
	.long	.LASF667
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF668
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF669
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF670
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF671
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF678
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF679
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF680
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF681
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF682
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF683
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF684
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF685
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF686
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF687
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF694
	.value	0x1da
	.uleb128 0x1
	.long	.LASF695
	.value	0x1db
	.uleb128 0x1
	.long	.LASF696
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF697
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF698
	.value	0x1de
	.uleb128 0x1
	.long	.LASF699
	.value	0x1df
	.uleb128 0x1
	.long	.LASF700
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF701
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF702
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF703
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF710
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF711
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF712
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF713
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF716
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF717
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF718
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF719
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF726
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF727
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF728
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF729
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF730
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF731
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF732
	.value	0x200
	.uleb128 0x1
	.long	.LASF733
	.value	0x201
	.uleb128 0x1
	.long	.LASF734
	.value	0x202
	.uleb128 0x1
	.long	.LASF735
	.value	0x203
	.uleb128 0x1
	.long	.LASF736
	.value	0x204
	.uleb128 0x1
	.long	.LASF737
	.value	0x205
	.uleb128 0x1
	.long	.LASF738
	.value	0x206
	.uleb128 0x1
	.long	.LASF739
	.value	0x207
	.uleb128 0x1
	.long	.LASF740
	.value	0x208
	.uleb128 0x1
	.long	.LASF741
	.value	0x209
	.uleb128 0x1
	.long	.LASF742
	.value	0x20a
	.uleb128 0x1
	.long	.LASF743
	.value	0x20b
	.uleb128 0x1
	.long	.LASF744
	.value	0x20c
	.uleb128 0x1
	.long	.LASF745
	.value	0x20d
	.uleb128 0x1
	.long	.LASF746
	.value	0x20e
	.uleb128 0x1
	.long	.LASF747
	.value	0x20f
	.uleb128 0x1
	.long	.LASF748
	.value	0x210
	.uleb128 0x1
	.long	.LASF749
	.value	0x211
	.uleb128 0x1
	.long	.LASF750
	.value	0x212
	.uleb128 0x1
	.long	.LASF751
	.value	0x213
	.uleb128 0x1
	.long	.LASF752
	.value	0x214
	.uleb128 0x1
	.long	.LASF753
	.value	0x215
	.uleb128 0x1
	.long	.LASF754
	.value	0x216
	.uleb128 0x1
	.long	.LASF755
	.value	0x217
	.uleb128 0x1
	.long	.LASF756
	.value	0x218
	.uleb128 0x1
	.long	.LASF757
	.value	0x219
	.uleb128 0x1
	.long	.LASF758
	.value	0x21a
	.uleb128 0x1
	.long	.LASF759
	.value	0x21b
	.uleb128 0x1
	.long	.LASF760
	.value	0x21c
	.uleb128 0x1
	.long	.LASF761
	.value	0x21d
	.uleb128 0x1
	.long	.LASF762
	.value	0x21e
	.uleb128 0x1
	.long	.LASF763
	.value	0x21f
	.uleb128 0x1
	.long	.LASF764
	.value	0x220
	.uleb128 0x1
	.long	.LASF765
	.value	0x221
	.uleb128 0x1
	.long	.LASF766
	.value	0x222
	.uleb128 0x1
	.long	.LASF767
	.value	0x223
	.uleb128 0x1
	.long	.LASF768
	.value	0x224
	.uleb128 0x1
	.long	.LASF769
	.value	0x225
	.uleb128 0x1
	.long	.LASF770
	.value	0x226
	.uleb128 0x1
	.long	.LASF771
	.value	0x227
	.uleb128 0x1
	.long	.LASF772
	.value	0x228
	.uleb128 0x1
	.long	.LASF773
	.value	0x229
	.uleb128 0x1
	.long	.LASF774
	.value	0x22a
	.uleb128 0x1
	.long	.LASF775
	.value	0x22b
	.uleb128 0x1
	.long	.LASF776
	.value	0x22c
	.uleb128 0x1
	.long	.LASF777
	.value	0x22d
	.uleb128 0x1
	.long	.LASF778
	.value	0x22e
	.uleb128 0x1
	.long	.LASF779
	.value	0x22f
	.uleb128 0x1
	.long	.LASF780
	.value	0x230
	.uleb128 0x1
	.long	.LASF781
	.value	0x231
	.uleb128 0x1
	.long	.LASF782
	.value	0x232
	.uleb128 0x1
	.long	.LASF783
	.value	0x233
	.uleb128 0x1
	.long	.LASF784
	.value	0x234
	.uleb128 0x1
	.long	.LASF785
	.value	0x235
	.uleb128 0x1
	.long	.LASF786
	.value	0x236
	.uleb128 0x1
	.long	.LASF787
	.value	0x237
	.uleb128 0x1
	.long	.LASF788
	.value	0x238
	.uleb128 0x1
	.long	.LASF789
	.value	0x239
	.uleb128 0x1
	.long	.LASF790
	.value	0x23a
	.uleb128 0x1
	.long	.LASF791
	.value	0x23b
	.uleb128 0x1
	.long	.LASF792
	.value	0x23c
	.uleb128 0x1
	.long	.LASF793
	.value	0x23d
	.uleb128 0x1
	.long	.LASF794
	.value	0x23e
	.uleb128 0x1
	.long	.LASF795
	.value	0x23f
	.uleb128 0x1
	.long	.LASF796
	.value	0x240
	.uleb128 0x1
	.long	.LASF797
	.value	0x241
	.uleb128 0x1
	.long	.LASF798
	.value	0x242
	.uleb128 0x1
	.long	.LASF799
	.value	0x243
	.uleb128 0x1
	.long	.LASF800
	.value	0x244
	.uleb128 0x1
	.long	.LASF801
	.value	0x245
	.uleb128 0x1
	.long	.LASF802
	.value	0x246
	.uleb128 0x1
	.long	.LASF803
	.value	0x247
	.uleb128 0x1
	.long	.LASF804
	.value	0x248
	.uleb128 0x1
	.long	.LASF805
	.value	0x249
	.uleb128 0x1
	.long	.LASF806
	.value	0x24a
	.uleb128 0x1
	.long	.LASF807
	.value	0x24b
	.uleb128 0x1
	.long	.LASF808
	.value	0x24c
	.uleb128 0x1
	.long	.LASF809
	.value	0x24d
	.uleb128 0x1
	.long	.LASF810
	.value	0x24e
	.uleb128 0x1
	.long	.LASF811
	.value	0x24f
	.uleb128 0x1
	.long	.LASF812
	.value	0x250
	.uleb128 0x1
	.long	.LASF813
	.value	0x251
	.uleb128 0x1
	.long	.LASF814
	.value	0x252
	.uleb128 0x1
	.long	.LASF815
	.value	0x253
	.uleb128 0x1
	.long	.LASF816
	.value	0x254
	.uleb128 0x1
	.long	.LASF817
	.value	0x255
	.uleb128 0x1
	.long	.LASF818
	.value	0x256
	.uleb128 0x1
	.long	.LASF819
	.value	0x257
	.uleb128 0x1
	.long	.LASF820
	.value	0x258
	.uleb128 0x1
	.long	.LASF821
	.value	0x259
	.uleb128 0x1
	.long	.LASF822
	.value	0x25a
	.uleb128 0x1
	.long	.LASF823
	.value	0x25b
	.uleb128 0x1
	.long	.LASF824
	.value	0x25c
	.uleb128 0x1
	.long	.LASF825
	.value	0x25d
	.uleb128 0x1
	.long	.LASF826
	.value	0x25e
	.uleb128 0x1
	.long	.LASF827
	.value	0x25f
	.uleb128 0x1
	.long	.LASF828
	.value	0x260
	.uleb128 0x1
	.long	.LASF829
	.value	0x261
	.uleb128 0x1
	.long	.LASF830
	.value	0x262
	.uleb128 0x1
	.long	.LASF831
	.value	0x263
	.uleb128 0x1
	.long	.LASF832
	.value	0x264
	.uleb128 0x1
	.long	.LASF833
	.value	0x265
	.uleb128 0x1
	.long	.LASF834
	.value	0x266
	.uleb128 0x1
	.long	.LASF835
	.value	0x267
	.uleb128 0x1
	.long	.LASF836
	.value	0x268
	.uleb128 0x1
	.long	.LASF837
	.value	0x269
	.uleb128 0x1
	.long	.LASF838
	.value	0x26a
	.uleb128 0x1
	.long	.LASF839
	.value	0x26b
	.uleb128 0x1
	.long	.LASF840
	.value	0x26c
	.uleb128 0x1
	.long	.LASF841
	.value	0x26d
	.uleb128 0x1
	.long	.LASF842
	.value	0x26e
	.uleb128 0x1
	.long	.LASF843
	.value	0x26f
	.uleb128 0x1
	.long	.LASF844
	.value	0x270
	.uleb128 0x1
	.long	.LASF845
	.value	0x271
	.uleb128 0x1
	.long	.LASF846
	.value	0x272
	.uleb128 0x1
	.long	.LASF847
	.value	0x273
	.uleb128 0x1
	.long	.LASF848
	.value	0x274
	.uleb128 0x1
	.long	.LASF849
	.value	0x275
	.uleb128 0x1
	.long	.LASF850
	.value	0x276
	.uleb128 0x1
	.long	.LASF851
	.value	0x277
	.uleb128 0x1
	.long	.LASF852
	.value	0x278
	.uleb128 0x1
	.long	.LASF853
	.value	0x279
	.uleb128 0x1
	.long	.LASF854
	.value	0x27a
	.uleb128 0x1
	.long	.LASF855
	.value	0x27b
	.uleb128 0x1
	.long	.LASF856
	.value	0x27c
	.uleb128 0x1
	.long	.LASF857
	.value	0x27d
	.uleb128 0x1
	.long	.LASF858
	.value	0x27e
	.uleb128 0x1
	.long	.LASF859
	.value	0x27f
	.uleb128 0x1
	.long	.LASF860
	.value	0x280
	.uleb128 0x1
	.long	.LASF861
	.value	0x281
	.uleb128 0x1
	.long	.LASF862
	.value	0x282
	.uleb128 0x1
	.long	.LASF863
	.value	0x283
	.uleb128 0x1
	.long	.LASF864
	.value	0x284
	.uleb128 0x1
	.long	.LASF865
	.value	0x285
	.uleb128 0x1
	.long	.LASF866
	.value	0x286
	.uleb128 0x1
	.long	.LASF867
	.value	0x287
	.uleb128 0x1
	.long	.LASF868
	.value	0x288
	.uleb128 0x1
	.long	.LASF869
	.value	0x289
	.uleb128 0x1
	.long	.LASF870
	.value	0x28a
	.uleb128 0x1
	.long	.LASF871
	.value	0x28b
	.uleb128 0x1
	.long	.LASF872
	.value	0x28c
	.uleb128 0x1
	.long	.LASF873
	.value	0x28d
	.uleb128 0x1
	.long	.LASF874
	.value	0x28e
	.uleb128 0x1
	.long	.LASF875
	.value	0x28f
	.uleb128 0x1
	.long	.LASF876
	.value	0x290
	.uleb128 0x1
	.long	.LASF877
	.value	0x291
	.uleb128 0x1
	.long	.LASF878
	.value	0x292
	.uleb128 0x1
	.long	.LASF879
	.value	0x293
	.uleb128 0x1
	.long	.LASF880
	.value	0x294
	.uleb128 0x1
	.long	.LASF881
	.value	0x295
	.uleb128 0x1
	.long	.LASF882
	.value	0x296
	.uleb128 0x1
	.long	.LASF883
	.value	0x297
	.uleb128 0x1
	.long	.LASF884
	.value	0x298
	.uleb128 0x1
	.long	.LASF885
	.value	0x299
	.uleb128 0x1
	.long	.LASF886
	.value	0x29a
	.uleb128 0x1
	.long	.LASF887
	.value	0x29b
	.uleb128 0x1
	.long	.LASF888
	.value	0x29c
	.uleb128 0x1
	.long	.LASF889
	.value	0x29d
	.uleb128 0x1
	.long	.LASF890
	.value	0x29e
	.uleb128 0x1
	.long	.LASF891
	.value	0x29f
	.uleb128 0x1
	.long	.LASF892
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF893
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF894
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF895
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF902
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF903
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF904
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF905
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF906
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF907
	.value	0x2af
	.uleb128 0x1
	.long	.LASF908
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF909
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF910
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF911
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF918
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF919
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF920
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF921
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF922
	.value	0x2be
	.uleb128 0x1
	.long	.LASF923
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF924
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF925
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF926
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF927
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF934
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF935
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF936
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF937
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF938
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF939
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF940
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF941
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF942
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF943
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF950
	.value	0x2da
	.uleb128 0x1
	.long	.LASF951
	.value	0x2db
	.uleb128 0x1
	.long	.LASF952
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF953
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF954
	.value	0x2de
	.uleb128 0x1
	.long	.LASF955
	.value	0x2df
	.uleb128 0x1
	.long	.LASF956
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF957
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF958
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF959
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF966
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF967
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF968
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF969
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF972
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF973
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF974
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF975
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF982
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF983
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF984
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF985
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF986
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF987
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF988
	.value	0x300
	.uleb128 0x1
	.long	.LASF989
	.value	0x301
	.uleb128 0x1
	.long	.LASF990
	.value	0x302
	.uleb128 0x1
	.long	.LASF991
	.value	0x303
	.uleb128 0x1
	.long	.LASF992
	.value	0x304
	.uleb128 0x1
	.long	.LASF993
	.value	0x305
	.uleb128 0x1
	.long	.LASF994
	.value	0x306
	.uleb128 0x1
	.long	.LASF995
	.value	0x307
	.uleb128 0x1
	.long	.LASF996
	.value	0x308
	.uleb128 0x1
	.long	.LASF997
	.value	0x309
	.uleb128 0x1
	.long	.LASF998
	.value	0x30a
	.uleb128 0x1
	.long	.LASF999
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1000
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1001
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1002
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1004
	.value	0x310
	.uleb128 0x1
	.long	.LASF1005
	.value	0x311
	.uleb128 0x1
	.long	.LASF1006
	.value	0x312
	.uleb128 0x1
	.long	.LASF1007
	.value	0x313
	.uleb128 0x1
	.long	.LASF1008
	.value	0x314
	.uleb128 0x1
	.long	.LASF1009
	.value	0x315
	.uleb128 0x1
	.long	.LASF1010
	.value	0x316
	.uleb128 0x1
	.long	.LASF1011
	.value	0x317
	.uleb128 0x1
	.long	.LASF1012
	.value	0x318
	.uleb128 0x1
	.long	.LASF1013
	.value	0x319
	.uleb128 0x1
	.long	.LASF1014
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1015
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1016
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1017
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1018
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1020
	.value	0x320
	.uleb128 0x1
	.long	.LASF1021
	.value	0x321
	.uleb128 0x1
	.long	.LASF1022
	.value	0x322
	.uleb128 0x1
	.long	.LASF1023
	.value	0x323
	.uleb128 0x1
	.long	.LASF1024
	.value	0x324
	.uleb128 0x1
	.long	.LASF1025
	.value	0x325
	.uleb128 0x1
	.long	.LASF1026
	.value	0x326
	.uleb128 0x1
	.long	.LASF1027
	.value	0x327
	.uleb128 0x1
	.long	.LASF1028
	.value	0x328
	.uleb128 0x1
	.long	.LASF1029
	.value	0x329
	.uleb128 0x1
	.long	.LASF1030
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1031
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1032
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1033
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1034
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1036
	.value	0x330
	.uleb128 0x1
	.long	.LASF1037
	.value	0x331
	.uleb128 0x1
	.long	.LASF1038
	.value	0x332
	.uleb128 0x1
	.long	.LASF1039
	.value	0x333
	.uleb128 0x1
	.long	.LASF1040
	.value	0x334
	.uleb128 0x1
	.long	.LASF1041
	.value	0x335
	.uleb128 0x1
	.long	.LASF1042
	.value	0x336
	.uleb128 0x1
	.long	.LASF1043
	.value	0x337
	.uleb128 0x1
	.long	.LASF1044
	.value	0x338
	.uleb128 0x1
	.long	.LASF1045
	.value	0x339
	.uleb128 0x1
	.long	.LASF1046
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1047
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1048
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1049
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1050
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1052
	.value	0x340
	.uleb128 0x1
	.long	.LASF1053
	.value	0x341
	.uleb128 0x1
	.long	.LASF1054
	.value	0x342
	.uleb128 0x1
	.long	.LASF1055
	.value	0x343
	.uleb128 0x1
	.long	.LASF1056
	.value	0x344
	.uleb128 0x1
	.long	.LASF1057
	.value	0x345
	.uleb128 0x1
	.long	.LASF1058
	.value	0x346
	.uleb128 0x1
	.long	.LASF1059
	.value	0x347
	.uleb128 0x1
	.long	.LASF1060
	.value	0x348
	.uleb128 0x1
	.long	.LASF1061
	.value	0x349
	.uleb128 0x1
	.long	.LASF1062
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1063
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1064
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1065
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1066
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1068
	.value	0x350
	.uleb128 0x1
	.long	.LASF1069
	.value	0x351
	.uleb128 0x1
	.long	.LASF1070
	.value	0x352
	.uleb128 0x1
	.long	.LASF1071
	.value	0x353
	.uleb128 0x1
	.long	.LASF1072
	.value	0x354
	.uleb128 0x1
	.long	.LASF1073
	.value	0x355
	.uleb128 0x1
	.long	.LASF1074
	.value	0x356
	.uleb128 0x1
	.long	.LASF1075
	.value	0x357
	.uleb128 0x1
	.long	.LASF1076
	.value	0x358
	.uleb128 0x1
	.long	.LASF1077
	.value	0x359
	.uleb128 0x1
	.long	.LASF1078
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1079
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1080
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1081
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1082
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1084
	.value	0x360
	.uleb128 0x1
	.long	.LASF1085
	.value	0x361
	.uleb128 0x1
	.long	.LASF1086
	.value	0x362
	.uleb128 0x1
	.long	.LASF1087
	.value	0x363
	.uleb128 0x1
	.long	.LASF1088
	.value	0x364
	.uleb128 0x1
	.long	.LASF1089
	.value	0x365
	.uleb128 0x1
	.long	.LASF1090
	.value	0x366
	.uleb128 0x1
	.long	.LASF1091
	.value	0x367
	.uleb128 0x1
	.long	.LASF1092
	.value	0x368
	.uleb128 0x1
	.long	.LASF1093
	.value	0x369
	.uleb128 0x1
	.long	.LASF1094
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1095
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1096
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1097
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1098
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1100
	.value	0x370
	.uleb128 0x1
	.long	.LASF1101
	.value	0x371
	.uleb128 0x1
	.long	.LASF1102
	.value	0x372
	.uleb128 0x1
	.long	.LASF1103
	.value	0x373
	.uleb128 0x1
	.long	.LASF1104
	.value	0x374
	.uleb128 0x1
	.long	.LASF1105
	.value	0x375
	.uleb128 0x1
	.long	.LASF1106
	.value	0x376
	.uleb128 0x1
	.long	.LASF1107
	.value	0x377
	.uleb128 0x1
	.long	.LASF1108
	.value	0x378
	.uleb128 0x1
	.long	.LASF1109
	.value	0x379
	.uleb128 0x1
	.long	.LASF1110
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1111
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1112
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1113
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1114
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1116
	.value	0x380
	.uleb128 0x1
	.long	.LASF1117
	.value	0x381
	.uleb128 0x1
	.long	.LASF1118
	.value	0x382
	.uleb128 0x1
	.long	.LASF1119
	.value	0x383
	.uleb128 0x1
	.long	.LASF1120
	.value	0x384
	.uleb128 0x1
	.long	.LASF1121
	.value	0x385
	.uleb128 0x1
	.long	.LASF1122
	.value	0x386
	.uleb128 0x1
	.long	.LASF1123
	.value	0x387
	.uleb128 0x1
	.long	.LASF1124
	.value	0x388
	.uleb128 0x1
	.long	.LASF1125
	.value	0x389
	.uleb128 0x1
	.long	.LASF1126
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1127
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1128
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1129
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1130
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1132
	.value	0x390
	.uleb128 0x1
	.long	.LASF1133
	.value	0x391
	.uleb128 0x1
	.long	.LASF1134
	.value	0x392
	.uleb128 0x1
	.long	.LASF1135
	.value	0x393
	.uleb128 0x1
	.long	.LASF1136
	.value	0x394
	.uleb128 0x1
	.long	.LASF1137
	.value	0x395
	.uleb128 0x1
	.long	.LASF1138
	.value	0x396
	.uleb128 0x1
	.long	.LASF1139
	.value	0x397
	.uleb128 0x1
	.long	.LASF1140
	.value	0x398
	.uleb128 0x1
	.long	.LASF1141
	.value	0x399
	.uleb128 0x1
	.long	.LASF1142
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1143
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1144
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1145
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1146
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c7
	.byte	0
	.uleb128 0x1b
	.long	.LASF1188
	.byte	0xa
	.value	0x478
	.long	0x754
	.uleb128 0x2b
	.byte	0x38
	.value	0x47b
	.long	0x2150
	.uleb128 0x5
	.long	.LASF1189
	.byte	0xa
	.value	0x47d
	.byte	0xf
	.long	0x748
	.byte	0
	.uleb128 0x5
	.long	.LASF1190
	.byte	0xa
	.value	0x47e
	.byte	0xa
	.long	0x72
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1191
	.byte	0xa
	.value	0x47f
	.byte	0xa
	.long	0x72
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1192
	.byte	0xa
	.value	0x481
	.byte	0xf
	.long	0x33a
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1193
	.byte	0xa
	.value	0x482
	.byte	0x10
	.long	0x20d9
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1194
	.byte	0xa
	.value	0x483
	.byte	0xa
	.long	0x72
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1195
	.byte	0xa
	.value	0x483
	.byte	0x11
	.long	0x72
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LASF1196
	.byte	0xa
	.value	0x484
	.long	0x20e5
	.uleb128 0x34
	.byte	0x7
	.byte	0x4
	.long	0x8e
	.byte	0xa
	.value	0x48b
	.byte	0xe
	.long	0x24a8
	.uleb128 0x2
	.long	.LASF1197
	.byte	0
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1207
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1208
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1209
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1210
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1211
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1212
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x89
	.byte	0
	.uleb128 0x1b
	.long	.LASF1335
	.byte	0xa
	.value	0x517
	.long	0x215c
	.uleb128 0x2b
	.byte	0x5c
	.value	0x519
	.long	0x25ff
	.uleb128 0x5
	.long	.LASF1336
	.byte	0xa
	.value	0x51b
	.byte	0x9
	.long	0x6b
	.byte	0
	.uleb128 0x5
	.long	.LASF1337
	.byte	0xa
	.value	0x51c
	.byte	0x9
	.long	0x6b
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1338
	.byte	0xa
	.value	0x51d
	.byte	0x9
	.long	0x6b
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1339
	.byte	0xa
	.value	0x51e
	.byte	0x9
	.long	0x6b
	.byte	0xc
	.uleb128 0x5
	.long	.LASF1340
	.byte	0xa
	.value	0x51f
	.byte	0x9
	.long	0x6b
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1341
	.byte	0xa
	.value	0x520
	.byte	0x9
	.long	0x6b
	.byte	0x14
	.uleb128 0x5
	.long	.LASF1342
	.byte	0xa
	.value	0x521
	.byte	0x9
	.long	0x6b
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1343
	.byte	0xa
	.value	0x522
	.byte	0x9
	.long	0x6b
	.byte	0x1c
	.uleb128 0x5
	.long	.LASF1344
	.byte	0xa
	.value	0x523
	.byte	0x9
	.long	0x6b
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1345
	.byte	0xa
	.value	0x524
	.byte	0x9
	.long	0x6b
	.byte	0x24
	.uleb128 0x5
	.long	.LASF1346
	.byte	0xa
	.value	0x525
	.byte	0x9
	.long	0x6b
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1347
	.byte	0xa
	.value	0x526
	.byte	0x9
	.long	0x6b
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF1348
	.byte	0xa
	.value	0x527
	.byte	0x9
	.long	0x6b
	.byte	0x30
	.uleb128 0x5
	.long	.LASF1349
	.byte	0xa
	.value	0x528
	.byte	0x9
	.long	0x6b
	.byte	0x34
	.uleb128 0x5
	.long	.LASF1350
	.byte	0xa
	.value	0x529
	.byte	0x9
	.long	0x6b
	.byte	0x38
	.uleb128 0x5
	.long	.LASF1351
	.byte	0xa
	.value	0x52a
	.byte	0x9
	.long	0x6b
	.byte	0x3c
	.uleb128 0x5
	.long	.LASF1352
	.byte	0xa
	.value	0x52b
	.byte	0x9
	.long	0x6b
	.byte	0x40
	.uleb128 0x5
	.long	.LASF1353
	.byte	0xa
	.value	0x52c
	.byte	0x9
	.long	0x6b
	.byte	0x44
	.uleb128 0x5
	.long	.LASF1354
	.byte	0xa
	.value	0x52d
	.byte	0x9
	.long	0x6b
	.byte	0x48
	.uleb128 0x5
	.long	.LASF1355
	.byte	0xa
	.value	0x52e
	.byte	0x9
	.long	0x6b
	.byte	0x4c
	.uleb128 0x5
	.long	.LASF1356
	.byte	0xa
	.value	0x52f
	.byte	0x9
	.long	0x6b
	.byte	0x50
	.uleb128 0x5
	.long	.LASF1357
	.byte	0xa
	.value	0x530
	.byte	0x9
	.long	0x6b
	.byte	0x54
	.uleb128 0x5
	.long	.LASF1358
	.byte	0xa
	.value	0x531
	.byte	0x9
	.long	0x6b
	.byte	0x58
	.byte	0
	.uleb128 0x1b
	.long	.LASF1359
	.byte	0xa
	.value	0x533
	.long	0x24b4
	.uleb128 0xf
	.long	0x8e
	.byte	0xb
	.byte	0x76
	.byte	0x1
	.long	0x26e9
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1368
	.value	0x100
	.uleb128 0x1
	.long	.LASF1369
	.value	0x200
	.uleb128 0x1
	.long	.LASF1370
	.value	0x400
	.uleb128 0x1
	.long	.LASF1371
	.value	0x800
	.uleb128 0x1
	.long	.LASF1372
	.value	0x1000
	.uleb128 0x1
	.long	.LASF1373
	.value	0x2000
	.uleb128 0x1
	.long	.LASF1374
	.value	0x4000
	.uleb128 0x1
	.long	.LASF1375
	.value	0x8000
	.uleb128 0x12
	.long	.LASF1376
	.long	0x10000
	.uleb128 0x12
	.long	.LASF1377
	.long	0x20000
	.uleb128 0x12
	.long	.LASF1378
	.long	0x40000
	.uleb128 0x12
	.long	.LASF1379
	.long	0x80000
	.uleb128 0x12
	.long	.LASF1380
	.long	0x100000
	.uleb128 0x12
	.long	.LASF1381
	.long	0x200000
	.uleb128 0x12
	.long	.LASF1382
	.long	0x400000
	.uleb128 0x12
	.long	.LASF1383
	.long	0x800000
	.uleb128 0x12
	.long	.LASF1384
	.long	0x1000000
	.uleb128 0x12
	.long	.LASF1385
	.long	0x2000000
	.uleb128 0x12
	.long	.LASF1386
	.long	0xc000000
	.uleb128 0x2
	.long	.LASF1387
	.byte	0x1a
	.byte	0
	.uleb128 0x1e
	.long	.LASF1389
	.byte	0xe0
	.byte	0xb
	.byte	0xcf
	.long	0x28c0
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xb
	.byte	0xd2
	.byte	0x10
	.long	0x38b
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0xb
	.byte	0xd5
	.byte	0xe
	.long	0xb1
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0xb
	.byte	0xd6
	.byte	0xe
	.long	0xb1
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0xb
	.byte	0xd7
	.byte	0xe
	.long	0xb1
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xb
	.byte	0xda
	.byte	0x14
	.long	0x28c0
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xb
	.byte	0xdb
	.byte	0x14
	.long	0x28c0
	.byte	0x30
	.uleb128 0x3
	.long	.LASF76
	.byte	0xb
	.byte	0xde
	.byte	0xe
	.long	0x2ac
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1189
	.byte	0xb
	.byte	0xdf
	.byte	0x12
	.long	0x748
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1190
	.byte	0xb
	.byte	0xe0
	.byte	0xb
	.long	0x6b
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xb
	.byte	0xe4
	.byte	0x14
	.long	0x28c0
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xb
	.byte	0xe5
	.byte	0x14
	.long	0x28c0
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xb
	.byte	0xe7
	.byte	0x19
	.long	0x28f9
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xb
	.byte	0xea
	.byte	0xe
	.long	0xb1
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xb
	.byte	0xeb
	.byte	0xe
	.long	0xb1
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1352
	.byte	0xb
	.byte	0xee
	.byte	0xe
	.long	0xb1
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1353
	.byte	0xb
	.byte	0xef
	.byte	0xe
	.long	0xb1
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xb
	.byte	0xf2
	.byte	0xe
	.long	0xb1
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xb
	.byte	0xf3
	.byte	0xe
	.long	0xb1
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xb
	.byte	0xf4
	.byte	0xe
	.long	0xb1
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xb
	.byte	0xf7
	.byte	0xb
	.long	0x6b
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF77
	.byte	0xb
	.byte	0xf9
	.byte	0x11
	.long	0x24a8
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xb
	.byte	0xfa
	.byte	0x12
	.long	0x28fe
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1191
	.byte	0xb
	.byte	0xfc
	.byte	0xb
	.long	0x6b
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xb
	.byte	0xfd
	.byte	0xf
	.long	0x2903
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xb
	.byte	0xfe
	.byte	0xb
	.long	0x6b
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xb
	.byte	0xff
	.byte	0xb
	.long	0x6b
	.byte	0xa4
	.uleb128 0x5
	.long	.LASF1405
	.byte	0xb
	.value	0x102
	.byte	0xb
	.long	0x6b
	.byte	0xa8
	.uleb128 0x5
	.long	.LASF1406
	.byte	0xb
	.value	0x103
	.byte	0xb
	.long	0x6b
	.byte	0xac
	.uleb128 0x5
	.long	.LASF1407
	.byte	0xb
	.value	0x107
	.byte	0x14
	.long	0x28c0
	.byte	0xb0
	.uleb128 0x5
	.long	.LASF1341
	.byte	0xb
	.value	0x10b
	.byte	0xb
	.long	0x6b
	.byte	0xb8
	.uleb128 0x5
	.long	.LASF1408
	.byte	0xb
	.value	0x10f
	.byte	0xb
	.long	0x6b
	.byte	0xbc
	.uleb128 0x5
	.long	.LASF1409
	.byte	0xb
	.value	0x113
	.byte	0x16
	.long	0x2add
	.byte	0xc0
	.uleb128 0x5
	.long	.LASF1410
	.byte	0xb
	.value	0x116
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x5
	.long	.LASF1411
	.byte	0xb
	.value	0x119
	.byte	0x11
	.long	0x3ed
	.byte	0xcc
	.uleb128 0x5
	.long	.LASF1412
	.byte	0xb
	.value	0x11c
	.byte	0x14
	.long	0x28c0
	.byte	0xd8
	.byte	0
	.uleb128 0xa
	.long	0x26e9
	.uleb128 0x1e
	.long	.LASF1413
	.byte	0x10
	.byte	0xc
	.byte	0xe3
	.long	0x28f9
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xc
	.byte	0xe5
	.byte	0xf
	.long	0x2d1f
	.byte	0
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xc
	.byte	0xe6
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xc
	.byte	0xe7
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	0x28c5
	.uleb128 0xa
	.long	0x25ff
	.uleb128 0xa
	.long	0x2150
	.uleb128 0x35
	.long	.LASF1417
	.value	0x140
	.byte	0xd
	.byte	0x53
	.byte	0x10
	.long	0x2add
	.uleb128 0x8
	.string	"mo"
	.byte	0xd
	.byte	0x55
	.byte	0xe
	.long	0x2c35
	.byte	0
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xd
	.byte	0x56
	.byte	0x13
	.long	0x2e0c
	.byte	0x8
	.uleb128 0x8
	.string	"cmd"
	.byte	0xd
	.byte	0x57
	.byte	0xf
	.long	0x16a
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0xb1
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xd
	.byte	0x5e
	.byte	0xe
	.long	0xb1
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xd
	.byte	0x60
	.byte	0x16
	.long	0xb1
	.byte	0x1c
	.uleb128 0x8
	.string	"bob"
	.byte	0xd
	.byte	0x62
	.byte	0x16
	.long	0xb1
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xd
	.byte	0x66
	.byte	0xb
	.long	0x6b
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xd
	.byte	0x67
	.byte	0xb
	.long	0x6b
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x6b
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x2e18
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xd
	.byte	0x6d
	.byte	0xe
	.long	0x2e28
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xd
	.byte	0x6e
	.byte	0xe
	.long	0xfb
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xd
	.byte	0x71
	.byte	0xb
	.long	0x2c3a
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xd
	.byte	0x72
	.byte	0x12
	.long	0x1fc
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xd
	.byte	0x75
	.byte	0x12
	.long	0x1fc
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xd
	.byte	0x77
	.byte	0xe
	.long	0x2e38
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xd
	.byte	0x78
	.byte	0xb
	.long	0x2c3a
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xd
	.byte	0x79
	.byte	0xb
	.long	0x2c3a
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xd
	.byte	0x7c
	.byte	0xb
	.long	0x6b
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xd
	.byte	0x7d
	.byte	0xb
	.long	0x6b
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xd
	.byte	0x81
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xd
	.byte	0x87
	.byte	0xb
	.long	0x6b
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xd
	.byte	0x88
	.byte	0xb
	.long	0x6b
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xd
	.byte	0x89
	.byte	0xb
	.long	0x6b
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xd
	.byte	0x8c
	.byte	0xc
	.long	0xa5
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xd
	.byte	0x8f
	.byte	0xb
	.long	0x6b
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xd
	.byte	0x90
	.byte	0xb
	.long	0x6b
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xd
	.byte	0x93
	.byte	0xe
	.long	0x2c35
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xd
	.byte	0x96
	.byte	0xb
	.long	0x6b
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0x6b
	.byte	0xfc
	.uleb128 0x21
	.long	.LASF1446
	.byte	0x9e
	.byte	0xb
	.long	0x6b
	.value	0x100
	.uleb128 0x21
	.long	.LASF1447
	.byte	0xa1
	.byte	0xf
	.long	0x2e48
	.value	0x108
	.uleb128 0x21
	.long	.LASF1448
	.byte	0xa4
	.byte	0xe
	.long	0xfb
	.value	0x138
	.byte	0
	.uleb128 0xa
	.long	0x2908
	.uleb128 0x1b
	.long	.LASF1449
	.byte	0xb
	.value	0x11e
	.long	0x26e9
	.uleb128 0x17
	.byte	0x8
	.byte	0xc
	.byte	0x47
	.long	0x2b0d
	.uleb128 0x8
	.string	"x"
	.byte	0xc
	.byte	0x49
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0xc
	.byte	0x4a
	.byte	0xd
	.long	0xb1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF1450
	.byte	0xc
	.byte	0x4c
	.byte	0x3
	.long	0x2aee
	.uleb128 0x17
	.byte	0x28
	.byte	0xc
	.byte	0x58
	.long	0x2b50
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xc
	.byte	0x5a
	.byte	0x10
	.long	0x38b
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0xc
	.byte	0x5b
	.byte	0xe
	.long	0xb1
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0xb1
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0xc
	.byte	0x5d
	.byte	0xe
	.long	0xb1
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.long	.LASF1451
	.byte	0xc
	.byte	0x5f
	.byte	0x3
	.long	0x2b19
	.uleb128 0x17
	.byte	0x80
	.byte	0xc
	.byte	0x65
	.long	0x2c35
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xc
	.byte	0x67
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xc
	.byte	0x68
	.byte	0xd
	.long	0xb1
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xc
	.byte	0x6a
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xc
	.byte	0x6b
	.byte	0xb
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x9c
	.byte	0xe
	.uleb128 0x8
	.string	"tag"
	.byte	0xc
	.byte	0x6d
	.byte	0xb
	.long	0x9c
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xc
	.byte	0x70
	.byte	0xa
	.long	0x6b
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xc
	.byte	0x73
	.byte	0xd
	.long	0x2c35
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xc
	.byte	0x76
	.byte	0xa
	.long	0x2c3a
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xc
	.byte	0x79
	.byte	0x11
	.long	0x2b50
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0x7c
	.byte	0xa
	.long	0x6b
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xc
	.byte	0x7f
	.byte	0xd
	.long	0x2c35
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xc
	.byte	0x82
	.byte	0xb
	.long	0xa3
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xc
	.byte	0x85
	.byte	0x15
	.long	0x2d09
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0x2ae2
	.uleb128 0x14
	.long	0x6b
	.long	0x2c4a
	.uleb128 0x16
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.long	.LASF1466
	.byte	0x58
	.byte	0xc
	.byte	0xb3
	.long	0x2d09
	.uleb128 0x8
	.string	"v1"
	.byte	0xc
	.byte	0xb6
	.byte	0xf
	.long	0x2d55
	.byte	0
	.uleb128 0x8
	.string	"v2"
	.byte	0xc
	.byte	0xb7
	.byte	0xf
	.long	0x2d55
	.byte	0x8
	.uleb128 0x8
	.string	"dx"
	.byte	0xc
	.byte	0xba
	.byte	0xd
	.long	0xb1
	.byte	0x10
	.uleb128 0x8
	.string	"dy"
	.byte	0xc
	.byte	0xbb
	.byte	0xd
	.long	0xb1
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xc
	.byte	0xbe
	.byte	0xb
	.long	0x9c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xc
	.byte	0xbf
	.byte	0xb
	.long	0x9c
	.byte	0x1a
	.uleb128 0x8
	.string	"tag"
	.byte	0xc
	.byte	0xc0
	.byte	0xb
	.long	0x9c
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xc
	.byte	0xc4
	.byte	0xb
	.long	0x397
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xc
	.byte	0xc8
	.byte	0xd
	.long	0x2d5a
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xc
	.byte	0xcb
	.byte	0x11
	.long	0x2d49
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xc
	.byte	0xcf
	.byte	0xf
	.long	0x2d1f
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xc
	.byte	0xd0
	.byte	0xf
	.long	0x2d1f
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0xd3
	.byte	0xa
	.long	0x6b
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xc
	.byte	0xd6
	.byte	0xb
	.long	0xa3
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.long	0x2d0e
	.uleb128 0xa
	.long	0x2c4a
	.uleb128 0x9
	.long	.LASF1472
	.byte	0xc
	.byte	0x87
	.byte	0x3
	.long	0x2b5c
	.uleb128 0xa
	.long	0x2d13
	.uleb128 0xf
	.long	0x8e
	.byte	0xc
	.byte	0xa9
	.byte	0x1
	.long	0x2d49
	.uleb128 0x2
	.long	.LASF1473
	.byte	0
	.uleb128 0x2
	.long	.LASF1474
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1475
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1476
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1477
	.byte	0xc
	.byte	0xaf
	.byte	0x3
	.long	0x2d24
	.uleb128 0xa
	.long	0x2b0d
	.uleb128 0x14
	.long	0xb1
	.long	0x2d6a
	.uleb128 0x16
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1478
	.byte	0xc
	.byte	0xd7
	.byte	0x3
	.long	0x2c4a
	.uleb128 0x9
	.long	.LASF1479
	.byte	0xc
	.byte	0xe9
	.byte	0x3
	.long	0x28c5
	.uleb128 0xa
	.long	0x2d6a
	.uleb128 0xf
	.long	0x8e
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x2da6
	.uleb128 0x2
	.long	.LASF1480
	.byte	0
	.uleb128 0x2
	.long	.LASF1481
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1482
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.byte	0x18
	.byte	0xe
	.byte	0x44
	.long	0x2de1
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xe
	.byte	0x46
	.byte	0xe
	.long	0x2903
	.byte	0
	.uleb128 0x3
	.long	.LASF1191
	.byte	0xe
	.byte	0x47
	.byte	0xa
	.long	0x6b
	.byte	0x8
	.uleb128 0x8
	.string	"sx"
	.byte	0xe
	.byte	0x48
	.byte	0xd
	.long	0xb1
	.byte	0xc
	.uleb128 0x8
	.string	"sy"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF1483
	.byte	0xe
	.byte	0x4b
	.byte	0x3
	.long	0x2da6
	.uleb128 0xf
	.long	0x8e
	.byte	0xd
	.byte	0x36
	.byte	0x1
	.long	0x2e0c
	.uleb128 0x2
	.long	.LASF1484
	.byte	0
	.uleb128 0x2
	.long	.LASF1485
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1486
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF1487
	.byte	0xd
	.byte	0x3e
	.byte	0x3
	.long	0x2ded
	.uleb128 0x14
	.long	0x6b
	.long	0x2e28
	.uleb128 0x16
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	0xfb
	.long	0x2e38
	.uleb128 0x16
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	0xfb
	.long	0x2e48
	.uleb128 0x16
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x2de1
	.long	0x2e58
	.uleb128 0x16
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF1488
	.byte	0xd
	.byte	0xa6
	.byte	0x3
	.long	0x2908
	.uleb128 0xa
	.long	0x2d76
	.uleb128 0xb
	.long	.LASF1465
	.byte	0xf
	.byte	0x5e
	.byte	0x11
	.long	0x2d82
	.uleb128 0xa
	.long	0x2e58
	.uleb128 0xb
	.long	.LASF1401
	.byte	0x10
	.byte	0x37
	.byte	0xd
	.long	0x6b
	.uleb128 0x17
	.byte	0x10
	.byte	0x11
	.byte	0x87
	.long	0x2ebd
	.uleb128 0x8
	.string	"x"
	.byte	0x11
	.byte	0x89
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x11
	.byte	0x8a
	.byte	0xd
	.long	0xb1
	.byte	0x4
	.uleb128 0x8
	.string	"dx"
	.byte	0x11
	.byte	0x8b
	.byte	0xd
	.long	0xb1
	.byte	0x8
	.uleb128 0x8
	.string	"dy"
	.byte	0x11
	.byte	0x8c
	.byte	0xd
	.long	0xb1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	.LASF1489
	.byte	0x11
	.byte	0x8e
	.byte	0x3
	.long	0x2e86
	.uleb128 0x2a
	.byte	0x11
	.byte	0x94
	.byte	0x5
	.long	0x2eea
	.uleb128 0x1d
	.long	.LASF1490
	.byte	0x11
	.byte	0x95
	.byte	0xa
	.long	0x2c35
	.uleb128 0x1d
	.long	.LASF1491
	.byte	0x11
	.byte	0x96
	.byte	0xa
	.long	0x2d82
	.byte	0
	.uleb128 0x17
	.byte	0x10
	.byte	0x11
	.byte	0x90
	.long	0x2f18
	.uleb128 0x3
	.long	.LASF1492
	.byte	0x11
	.byte	0x92
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x3
	.long	.LASF1493
	.byte	0x11
	.byte	0x93
	.byte	0xd
	.long	0xfb
	.byte	0x4
	.uleb128 0x8
	.string	"d"
	.byte	0x11
	.byte	0x97
	.byte	0x9
	.long	0x2ec9
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF1494
	.byte	0x11
	.byte	0x98
	.byte	0x3
	.long	0x2eea
	.uleb128 0xa
	.long	0x2f18
	.uleb128 0xa
	.long	0x2f2e
	.uleb128 0x22
	.long	0xfb
	.long	0x2f3d
	.uleb128 0x4
	.long	0x2f24
	.byte	0
	.uleb128 0xb
	.long	.LASF1495
	.byte	0x11
	.byte	0xa8
	.byte	0x11
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1496
	.byte	0x11
	.byte	0xa9
	.byte	0x12
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1497
	.byte	0x11
	.byte	0xaa
	.byte	0x11
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1498
	.byte	0x11
	.byte	0xab
	.byte	0x11
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1499
	.byte	0x11
	.byte	0xb6
	.byte	0x12
	.long	0x2ebd
	.uleb128 0xb
	.long	.LASF1500
	.byte	0x11
	.byte	0xcb
	.byte	0x11
	.long	0xfb
	.uleb128 0xb
	.long	.LASF1501
	.byte	0x11
	.byte	0xcc
	.byte	0x11
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1502
	.byte	0x11
	.byte	0xcd
	.byte	0x11
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1503
	.byte	0x11
	.byte	0xd0
	.byte	0x11
	.long	0x2d82
	.uleb128 0xb
	.long	.LASF1504
	.byte	0x11
	.byte	0xdb
	.byte	0x10
	.long	0x2c35
	.uleb128 0xb
	.long	.LASF1505
	.byte	0x11
	.byte	0xfb
	.byte	0x11
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1506
	.byte	0x11
	.byte	0xfc
	.byte	0x11
	.long	0xb1
	.uleb128 0xb
	.long	.LASF1507
	.byte	0x12
	.byte	0x56
	.byte	0xe
	.long	0x6b
	.uleb128 0xb
	.long	.LASF1508
	.byte	0x12
	.byte	0xac
	.byte	0xd
	.long	0x6b
	.uleb128 0x23
	.long	.LASF1509
	.byte	0x12
	.value	0x10b
	.byte	0xd
	.long	0x6b
	.uleb128 0xf
	.long	0x8e
	.byte	0x13
	.byte	0xb2
	.byte	0x1
	.long	0x3293
	.uleb128 0x2
	.long	.LASF1510
	.byte	0
	.uleb128 0x2
	.long	.LASF1511
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1512
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1513
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1514
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1516
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1520
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1521
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1522
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1523
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1524
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1525
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1529
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1530
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1533
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1534
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1535
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1536
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1537
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1539
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1580
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1581
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1582
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1583
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1584
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1587
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1588
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1589
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1590
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1591
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1592
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1593
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1594
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1595
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1596
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1597
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1598
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1599
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1600
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1601
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1602
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1603
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1604
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1605
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1606
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1607
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1608
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1609
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1610
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1611
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1612
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1613
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1614
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1615
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1616
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1617
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1618
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1619
	.byte	0x6d
	.byte	0
	.uleb128 0x18
	.long	.LASF1620
	.byte	0x2e
	.byte	0xa
	.long	0x2d5a
	.uleb128 0x9
	.byte	0x3
	.quad	tmbbox
	.uleb128 0x18
	.long	.LASF1621
	.byte	0x2f
	.byte	0xa
	.long	0x2c35
	.uleb128 0x9
	.byte	0x3
	.quad	tmthing
	.uleb128 0x18
	.long	.LASF1622
	.byte	0x30
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	tmflags
	.uleb128 0x2c
	.string	"tmx"
	.byte	0x31
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	tmx
	.uleb128 0x2c
	.string	"tmy"
	.byte	0x32
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	tmy
	.uleb128 0x1f
	.long	0x2f79
	.byte	0x37
	.uleb128 0x9
	.byte	0x3
	.quad	floatok
	.uleb128 0x1f
	.long	0x2f85
	.byte	0x39
	.uleb128 0x9
	.byte	0x3
	.quad	tmfloorz
	.uleb128 0x1f
	.long	0x2f91
	.byte	0x3a
	.uleb128 0x9
	.byte	0x3
	.quad	tmceilingz
	.uleb128 0x18
	.long	.LASF1623
	.byte	0x3b
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	tmdropoffz
	.uleb128 0x1f
	.long	0x2f9d
	.byte	0x3f
	.uleb128 0x9
	.byte	0x3
	.quad	ceilingline
	.uleb128 0x14
	.long	0x2d82
	.long	0x335f
	.uleb128 0x16
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.long	.LASF1624
	.byte	0x45
	.byte	0xa
	.long	0x334f
	.uleb128 0x9
	.byte	0x3
	.quad	spechit
	.uleb128 0x18
	.long	.LASF1625
	.byte	0x46
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	numspechit
	.uleb128 0xc
	.long	.LASF1626
	.value	0x236
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	bestslidefrac
	.uleb128 0xc
	.long	.LASF1627
	.value	0x237
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	secondslidefrac
	.uleb128 0xc
	.long	.LASF1628
	.value	0x239
	.byte	0xa
	.long	0x2d82
	.uleb128 0x9
	.byte	0x3
	.quad	bestslideline
	.uleb128 0xc
	.long	.LASF1629
	.value	0x23a
	.byte	0xa
	.long	0x2d82
	.uleb128 0x9
	.byte	0x3
	.quad	secondslideline
	.uleb128 0xc
	.long	.LASF1630
	.value	0x23c
	.byte	0xa
	.long	0x2c35
	.uleb128 0x9
	.byte	0x3
	.quad	slidemo
	.uleb128 0xc
	.long	.LASF1631
	.value	0x23e
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	tmxmove
	.uleb128 0xc
	.long	.LASF1632
	.value	0x23f
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	tmymove
	.uleb128 0x36
	.long	0x2fa9
	.byte	0x1
	.value	0x31a
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	linetarget
	.uleb128 0xc
	.long	.LASF1633
	.value	0x31b
	.byte	0xa
	.long	0x2c35
	.uleb128 0x9
	.byte	0x3
	.quad	shootthing
	.uleb128 0xc
	.long	.LASF1634
	.value	0x31f
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	shootz
	.uleb128 0xc
	.long	.LASF1635
	.value	0x321
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	la_damage
	.uleb128 0xc
	.long	.LASF1636
	.value	0x322
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	attackrange
	.uleb128 0xc
	.long	.LASF1637
	.value	0x324
	.byte	0xa
	.long	0xb1
	.uleb128 0x9
	.byte	0x3
	.quad	aimslope
	.uleb128 0x23
	.long	.LASF1638
	.byte	0x1
	.value	0x327
	.byte	0x10
	.long	0xb1
	.uleb128 0x23
	.long	.LASF1639
	.byte	0x1
	.value	0x328
	.byte	0x10
	.long	0xb1
	.uleb128 0xc
	.long	.LASF1640
	.value	0x445
	.byte	0xa
	.long	0x2c35
	.uleb128 0x9
	.byte	0x3
	.quad	usething
	.uleb128 0xc
	.long	.LASF1641
	.value	0x482
	.byte	0xa
	.long	0x2c35
	.uleb128 0x9
	.byte	0x3
	.quad	bombsource
	.uleb128 0xc
	.long	.LASF1642
	.value	0x483
	.byte	0xa
	.long	0x2c35
	.uleb128 0x9
	.byte	0x3
	.quad	bombspot
	.uleb128 0xc
	.long	.LASF1643
	.value	0x484
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	bombdamage
	.uleb128 0xc
	.long	.LASF1644
	.value	0x4e2
	.byte	0xa
	.long	0xfb
	.uleb128 0x9
	.byte	0x3
	.quad	crushchange
	.uleb128 0xc
	.long	.LASF1645
	.value	0x4e3
	.byte	0xa
	.long	0xfb
	.uleb128 0x9
	.byte	0x3
	.quad	nofit
	.uleb128 0xe
	.long	.LASF1646
	.byte	0x11
	.byte	0x6e
	.byte	0x1
	.long	0x2c35
	.long	0x3567
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x24a8
	.byte	0
	.uleb128 0x15
	.long	.LASF1649
	.byte	0x11
	.byte	0x74
	.byte	0x7
	.long	0x3579
	.uleb128 0x4
	.long	0x2c35
	.byte	0
	.uleb128 0xe
	.long	.LASF1647
	.byte	0x11
	.byte	0xd6
	.byte	0x9
	.long	0xfb
	.long	0x3594
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x2c35
	.byte	0
	.uleb128 0xe
	.long	.LASF1648
	.byte	0x14
	.byte	0x34
	.byte	0x1
	.long	0xfb
	.long	0x35b4
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x2d82
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x15
	.long	.LASF1650
	.byte	0x15
	.byte	0x3b
	.byte	0x1
	.long	0x35cb
	.uleb128 0x4
	.long	0xa3
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x15
	.long	.LASF1651
	.byte	0x11
	.byte	0x79
	.byte	0x7
	.long	0x35ec
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x15
	.long	.LASF1652
	.byte	0x11
	.byte	0x78
	.byte	0x6
	.long	0x3608
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.byte	0
	.uleb128 0x15
	.long	.LASF1653
	.byte	0x14
	.byte	0x3a
	.byte	0x1
	.long	0x361f
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x2d82
	.byte	0
	.uleb128 0xe
	.long	.LASF1654
	.byte	0x4
	.byte	0x29
	.byte	0x9
	.long	0xb1
	.long	0x363a
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.byte	0
	.uleb128 0xe
	.long	.LASF1655
	.byte	0x11
	.byte	0xb9
	.byte	0x1
	.long	0xfb
	.long	0x3669
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x2f29
	.byte	0
	.uleb128 0x15
	.long	.LASF1656
	.byte	0x16
	.byte	0x59
	.byte	0x6
	.long	0x367c
	.uleb128 0x4
	.long	0xa5
	.uleb128 0x28
	.byte	0
	.uleb128 0xe
	.long	.LASF1657
	.byte	0x4
	.byte	0x28
	.byte	0x9
	.long	0xb1
	.long	0x3697
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.byte	0
	.uleb128 0xe
	.long	.LASF1658
	.byte	0x11
	.byte	0xa1
	.byte	0x9
	.long	0xb1
	.long	0x36b2
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.byte	0
	.uleb128 0xe
	.long	.LASF1659
	.byte	0x10
	.byte	0x7f
	.byte	0x1
	.long	0x2ac
	.long	0x36d7
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.byte	0
	.uleb128 0x15
	.long	.LASF1660
	.byte	0x14
	.byte	0x3f
	.byte	0x1
	.long	0x36f3
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x2c35
	.byte	0
	.uleb128 0xe
	.long	.LASF1661
	.byte	0x11
	.byte	0xa2
	.byte	0x6
	.long	0x6b
	.long	0x3713
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0x2d82
	.byte	0
	.uleb128 0xe
	.long	.LASF1662
	.byte	0x11
	.byte	0xaf
	.byte	0x9
	.long	0xfb
	.long	0x3733
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x3733
	.byte	0
	.uleb128 0xa
	.long	0x3738
	.uleb128 0x22
	.long	0xfb
	.long	0x3747
	.uleb128 0x4
	.long	0x2d82
	.byte	0
	.uleb128 0x2d
	.long	.LASF1663
	.value	0x108
	.long	0x375d
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x2c35
	.byte	0
	.uleb128 0xe
	.long	.LASF1664
	.byte	0x11
	.byte	0x75
	.byte	0x9
	.long	0xfb
	.long	0x3778
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x20d9
	.byte	0
	.uleb128 0x37
	.long	.LASF1726
	.byte	0x17
	.byte	0x24
	.byte	0x5
	.long	0x6b
	.uleb128 0x15
	.long	.LASF1665
	.byte	0x11
	.byte	0xad
	.byte	0x7
	.long	0x3796
	.uleb128 0x4
	.long	0x2d82
	.byte	0
	.uleb128 0xe
	.long	.LASF1666
	.byte	0x11
	.byte	0xa6
	.byte	0x6
	.long	0x6b
	.long	0x37b1
	.uleb128 0x4
	.long	0x2a7
	.uleb128 0x4
	.long	0x2d82
	.byte	0
	.uleb128 0x15
	.long	.LASF1667
	.byte	0x11
	.byte	0xc2
	.byte	0x6
	.long	0x37c3
	.uleb128 0x4
	.long	0x2c35
	.byte	0
	.uleb128 0x15
	.long	.LASF1668
	.byte	0x11
	.byte	0xc1
	.byte	0x6
	.long	0x37d5
	.uleb128 0x4
	.long	0x2c35
	.byte	0
	.uleb128 0xe
	.long	.LASF1669
	.byte	0x11
	.byte	0xb0
	.byte	0x9
	.long	0xfb
	.long	0x37f5
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x37f5
	.byte	0
	.uleb128 0xa
	.long	0x37fa
	.uleb128 0x22
	.long	0xfb
	.long	0x3809
	.uleb128 0x4
	.long	0x2c35
	.byte	0
	.uleb128 0xe
	.long	.LASF1670
	.byte	0x10
	.byte	0x8e
	.byte	0x1
	.long	0x2e64
	.long	0x3824
	.uleb128 0x4
	.long	0xb1
	.uleb128 0x4
	.long	0xb1
	.byte	0
	.uleb128 0x2d
	.long	.LASF1671
	.value	0x10d
	.long	0x3844
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x2c35
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x13
	.long	.LASF1674
	.value	0x529
	.byte	0x1
	.long	0xfb
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x389f
	.uleb128 0xd
	.long	.LASF1414
	.value	0x52a
	.byte	0xd
	.long	0x2d1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF1672
	.value	0x52b
	.byte	0xb
	.long	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"x"
	.value	0x52d
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"y"
	.value	0x52e
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1675
	.value	0x4e9
	.byte	0x9
	.long	0xfb
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x38df
	.uleb128 0xd
	.long	.LASF1490
	.value	0x4e9
	.byte	0x23
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"mo"
	.value	0x4eb
	.byte	0xd
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF1680
	.value	0x4b6
	.byte	0x1
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x398d
	.uleb128 0xd
	.long	.LASF1676
	.value	0x4b7
	.byte	0xb
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF1677
	.value	0x4b8
	.byte	0xb
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.long	.LASF1355
	.value	0x4b9
	.byte	0x8
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"x"
	.value	0x4bb
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"y"
	.value	0x4bc
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"xl"
	.value	0x4be
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x6
	.string	"xh"
	.value	0x4bf
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"yl"
	.value	0x4c0
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"yh"
	.value	0x4c1
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1678
	.value	0x4c3
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x13
	.long	.LASF1679
	.value	0x48c
	.byte	0x9
	.long	0xfb
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x39ea
	.uleb128 0xd
	.long	.LASF1490
	.value	0x48c
	.byte	0x23
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"dx"
	.value	0x48e
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"dy"
	.value	0x48f
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.long	.LASF1678
	.value	0x490
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.long	.LASF1681
	.value	0x46a
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a5f
	.uleb128 0xd
	.long	.LASF1409
	.value	0x46a
	.byte	0x1c
	.long	0x2e75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF76
	.value	0x46c
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"x1"
	.value	0x46d
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"y1"
	.value	0x46e
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"x2"
	.value	0x46f
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"y2"
	.value	0x470
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1682
	.value	0x447
	.byte	0x9
	.long	0xfb
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a9f
	.uleb128 0x11
	.string	"in"
	.value	0x447
	.byte	0x27
	.long	0x2f24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1683
	.value	0x449
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF1684
	.value	0x427
	.byte	0x1
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b24
	.uleb128 0x11
	.string	"t1"
	.value	0x428
	.byte	0xb
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF76
	.value	0x429
	.byte	0xb
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.long	.LASF1685
	.value	0x42a
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF1686
	.value	0x42b
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.long	.LASF1355
	.value	0x42c
	.byte	0x8
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"x2"
	.value	0x42e
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"y2"
	.value	0x42f
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1687
	.value	0x3ff
	.byte	0x1
	.long	0xb1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b8f
	.uleb128 0x11
	.string	"t1"
	.value	0x400
	.byte	0xb
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.long	.LASF76
	.value	0x401
	.byte	0xb
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.long	.LASF1685
	.value	0x402
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"x2"
	.value	0x404
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"y2"
	.value	0x405
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1688
	.value	0x383
	.byte	0x9
	.long	0xfb
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c63
	.uleb128 0x11
	.string	"in"
	.value	0x383
	.byte	0x29
	.long	0x2f24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.string	"x"
	.value	0x385
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"y"
	.value	0x386
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"z"
	.value	0x387
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1492
	.value	0x388
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"li"
	.value	0x38a
	.byte	0xe
	.long	0x2d82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"th"
	.value	0x38c
	.byte	0xe
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF1686
	.value	0x38e
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x7
	.long	.LASF1678
	.value	0x38f
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x7
	.long	.LASF1689
	.value	0x390
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x7
	.long	.LASF1690
	.value	0x391
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF1700
	.value	0x3b5
	.byte	0x7
	.quad	.L129
	.byte	0
	.uleb128 0x13
	.long	.LASF1691
	.value	0x330
	.byte	0x1
	.long	0xfb
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cec
	.uleb128 0x11
	.string	"in"
	.value	0x330
	.byte	0x1f
	.long	0x2f24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"li"
	.value	0x332
	.byte	0xe
	.long	0x2d82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"th"
	.value	0x333
	.byte	0xe
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1686
	.value	0x334
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF1689
	.value	0x335
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF1690
	.value	0x336
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF1678
	.value	0x337
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF1692
	.value	0x2b7
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da2
	.uleb128 0x11
	.string	"mo"
	.value	0x2b7
	.byte	0x1b
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1693
	.value	0x2b9
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF1694
	.value	0x2ba
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1695
	.value	0x2bb
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF1696
	.value	0x2bc
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1697
	.value	0x2bd
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1698
	.value	0x2be
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.long	.LASF1699
	.value	0x2bf
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF1701
	.value	0x2c4
	.byte	0x3
	.quad	.L94
	.uleb128 0x20
	.long	.LASF1702
	.value	0x2ed
	.byte	0x7
	.quad	.L96
	.byte	0
	.uleb128 0x13
	.long	.LASF1703
	.value	0x27c
	.byte	0x9
	.long	0xfb
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df1
	.uleb128 0x11
	.string	"in"
	.value	0x27c
	.byte	0x29
	.long	0x2f24
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"li"
	.value	0x27e
	.byte	0xd
	.long	0x2d82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF1704
	.value	0x2a0
	.byte	0x3
	.quad	.L84
	.byte	0
	.uleb128 0x1c
	.long	.LASF1705
	.value	0x248
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e78
	.uleb128 0x11
	.string	"ld"
	.value	0x248
	.byte	0x1e
	.long	0x2d82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1683
	.value	0x24a
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1706
	.value	0x24c
	.byte	0xe
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1707
	.value	0x24d
	.byte	0xe
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF1708
	.value	0x24e
	.byte	0xe
	.long	0x2ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF1709
	.value	0x250
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1710
	.value	0x251
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1711
	.value	0x212
	.byte	0x9
	.long	0xfb
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3eb9
	.uleb128 0xd
	.long	.LASF1490
	.value	0x212
	.byte	0x24
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1712
	.value	0x214
	.byte	0xe
	.long	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1713
	.value	0x1c3
	.byte	0x1
	.long	0xfb
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f4f
	.uleb128 0xd
	.long	.LASF1490
	.value	0x1c4
	.byte	0xb
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"x"
	.value	0x1c5
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"y"
	.value	0x1c6
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF1714
	.value	0x1c8
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF1715
	.value	0x1c9
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.long	.LASF1683
	.value	0x1ca
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.long	.LASF1716
	.value	0x1cb
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"ld"
	.value	0x1cc
	.byte	0xd
	.long	0x2d82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF1717
	.value	0x177
	.byte	0x1
	.long	0xfb
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ffe
	.uleb128 0xd
	.long	.LASF1490
	.value	0x178
	.byte	0xb
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"x"
	.value	0x179
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"y"
	.value	0x17a
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"xl"
	.value	0x17c
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"xh"
	.value	0x17d
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"yl"
	.value	0x17e
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"yh"
	.value	0x17f
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"bx"
	.value	0x180
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"by"
	.value	0x181
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF1718
	.value	0x182
	.byte	0x12
	.long	0x2e64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF1719
	.byte	0xfc
	.byte	0x9
	.long	0xfb
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4059
	.uleb128 0x25
	.long	.LASF1490
	.byte	0xfc
	.byte	0x21
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF1720
	.byte	0xfe
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF1721
	.byte	0xff
	.byte	0xe
	.long	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF1355
	.value	0x100
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF1722
	.byte	0xbd
	.byte	0x9
	.long	0xfb
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4088
	.uleb128 0x26
	.string	"ld"
	.byte	0xbd
	.byte	0x20
	.long	0x2d82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF1723
	.byte	0x73
	.byte	0x1
	.long	0xfb
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4126
	.uleb128 0x25
	.long	.LASF1490
	.byte	0x74
	.byte	0xb
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"x"
	.byte	0x75
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.string	"y"
	.byte	0x76
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"xl"
	.byte	0x78
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"xh"
	.byte	0x79
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.string	"yl"
	.byte	0x7a
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"yh"
	.byte	0x7b
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"bx"
	.byte	0x7c
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"by"
	.byte	0x7d
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.long	.LASF1718
	.byte	0x7f
	.byte	0x12
	.long	0x2e64
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1724
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.long	0xfb
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.long	.LASF1490
	.byte	0x51
	.byte	0x21
	.long	0x2c35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF1720
	.byte	0x53
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x15
	.byte	0x1
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
.LASF857:
	.string	"S_BSPI_RUN3"
.LASF858:
	.string	"S_BSPI_RUN4"
.LASF859:
	.string	"S_BSPI_RUN5"
.LASF860:
	.string	"S_BSPI_RUN6"
.LASF861:
	.string	"S_BSPI_RUN7"
.LASF862:
	.string	"S_BSPI_RUN8"
.LASF863:
	.string	"S_BSPI_RUN9"
.LASF1554:
	.string	"sfx_cybsit"
.LASF147:
	.string	"SPR_YSKU"
.LASF1520:
	.string	"sfx_sawup"
.LASF1443:
	.string	"attacker"
.LASF510:
	.string	"S_FIRE10"
.LASF511:
	.string	"S_FIRE11"
.LASF512:
	.string	"S_FIRE12"
.LASF513:
	.string	"S_FIRE13"
.LASF514:
	.string	"S_FIRE14"
.LASF515:
	.string	"S_FIRE15"
.LASF516:
	.string	"S_FIRE16"
.LASF517:
	.string	"S_FIRE17"
.LASF518:
	.string	"S_FIRE18"
.LASF519:
	.string	"S_FIRE19"
.LASF1331:
	.string	"MT_MISC84"
.LASF1264:
	.string	"MT_MISC20"
.LASF1078:
	.string	"S_MEGA2"
.LASF1079:
	.string	"S_MEGA3"
.LASF1080:
	.string	"S_MEGA4"
.LASF1268:
	.string	"MT_MISC24"
.LASF1269:
	.string	"MT_MISC25"
.LASF1271:
	.string	"MT_MISC26"
.LASF1272:
	.string	"MT_MISC27"
.LASF1273:
	.string	"MT_MISC28"
.LASF1276:
	.string	"MT_MISC29"
.LASF709:
	.string	"S_SARG_PAIN2"
.LASF1408:
	.string	"threshold"
.LASF36:
	.string	"wp_pistol"
.LASF1382:
	.string	"MF_COUNTKILL"
.LASF188:
	.string	"SPR_COL1"
.LASF189:
	.string	"SPR_COL2"
.LASF190:
	.string	"SPR_COL3"
.LASF191:
	.string	"SPR_COL4"
.LASF200:
	.string	"SPR_COL5"
.LASF194:
	.string	"SPR_COL6"
.LASF1493:
	.string	"isaline"
.LASF1381:
	.string	"MF_INFLOAT"
.LASF1616:
	.string	"sfx_skesit"
.LASF1597:
	.string	"sfx_tink"
.LASF520:
	.string	"S_FIRE20"
.LASF521:
	.string	"S_FIRE21"
.LASF522:
	.string	"S_FIRE22"
.LASF523:
	.string	"S_FIRE23"
.LASF524:
	.string	"S_FIRE24"
.LASF174:
	.string	"SPR_COLU"
.LASF526:
	.string	"S_FIRE26"
.LASF527:
	.string	"S_FIRE27"
.LASF528:
	.string	"S_FIRE28"
.LASF529:
	.string	"S_FIRE29"
.LASF1277:
	.string	"MT_MISC30"
.LASF1192:
	.string	"action"
.LASF1279:
	.string	"MT_MISC32"
.LASF1280:
	.string	"MT_MISC33"
.LASF871:
	.string	"S_BSPI_PAIN"
.LASF1282:
	.string	"MT_MISC35"
.LASF343:
	.string	"S_BFGEXP"
.LASF50:
	.string	"am_misl"
.LASF1285:
	.string	"MT_MISC38"
.LASF1286:
	.string	"MT_MISC39"
.LASF1454:
	.string	"floorpic"
.LASF873:
	.string	"S_BSPI_DIE1"
.LASF1482:
	.string	"NUMPSPRITES"
.LASF1657:
	.string	"FixedMul"
.LASF878:
	.string	"S_BSPI_DIE6"
.LASF1603:
	.string	"sfx_getpow"
.LASF1475:
	.string	"ST_POSITIVE"
.LASF1419:
	.string	"viewz"
.LASF769:
	.string	"S_BOSS_RAISE1"
.LASF770:
	.string	"S_BOSS_RAISE2"
.LASF1211:
	.string	"MT_HEAD"
.LASF771:
	.string	"S_BOSS_RAISE3"
.LASF530:
	.string	"S_FIRE30"
.LASF675:
	.string	"S_TROO_PAIN"
.LASF964:
	.string	"S_SSWV_DIE1"
.LASF774:
	.string	"S_BOSS_RAISE6"
.LASF966:
	.string	"S_SSWV_DIE3"
.LASF967:
	.string	"S_SSWV_DIE4"
.LASF968:
	.string	"S_SSWV_DIE5"
.LASF142:
	.string	"SPR_BKEY"
.LASF786:
	.string	"S_BOS2_ATK1"
.LASF787:
	.string	"S_BOS2_ATK2"
.LASF788:
	.string	"S_BOS2_ATK3"
.LASF176:
	.string	"SPR_GOR1"
.LASF183:
	.string	"SPR_GOR2"
.LASF184:
	.string	"SPR_GOR3"
.LASF185:
	.string	"SPR_GOR4"
.LASF186:
	.string	"SPR_GOR5"
.LASF1289:
	.string	"MT_MISC42"
.LASF1290:
	.string	"MT_MISC43"
.LASF543:
	.string	"S_SKEL_RUN1"
.LASF544:
	.string	"S_SKEL_RUN2"
.LASF12:
	.string	"BOXTOP"
.LASF546:
	.string	"S_SKEL_RUN4"
.LASF547:
	.string	"S_SKEL_RUN5"
.LASF548:
	.string	"S_SKEL_RUN6"
.LASF549:
	.string	"S_SKEL_RUN7"
.LASF550:
	.string	"S_SKEL_RUN8"
.LASF551:
	.string	"S_SKEL_RUN9"
.LASF39:
	.string	"wp_missile"
.LASF1029:
	.string	"S_BEXP2"
.LASF1339:
	.string	"seestate"
.LASF724:
	.string	"S_HEAD_ATK1"
.LASF725:
	.string	"S_HEAD_ATK2"
.LASF726:
	.string	"S_HEAD_ATK3"
.LASF1469:
	.string	"slopetype"
.LASF978:
	.string	"S_SSWV_RAISE1"
.LASF979:
	.string	"S_SSWV_RAISE2"
.LASF980:
	.string	"S_SSWV_RAISE3"
.LASF981:
	.string	"S_SSWV_RAISE4"
.LASF982:
	.string	"S_SSWV_RAISE5"
.LASF76:
	.string	"angle"
.LASF1206:
	.string	"MT_FATSHOT"
.LASF162:
	.string	"SPR_CELL"
.LASF163:
	.string	"SPR_CELP"
.LASF1144:
	.string	"S_HEARTCOL"
.LASF1698:
	.string	"newy"
.LASF1464:
	.string	"linecount"
.LASF1415:
	.string	"numlines"
.LASF1061:
	.string	"S_MEDI"
.LASF1068:
	.string	"S_PINV"
.LASF1255:
	.string	"MT_INS"
.LASF1298:
	.string	"MT_MISC51"
.LASF1299:
	.string	"MT_MISC52"
.LASF1253:
	.string	"MT_INV"
.LASF1301:
	.string	"MT_MISC54"
.LASF1158:
	.string	"S_BTORCHSHRT"
.LASF279:
	.string	"S_MISSILEUP"
.LASF1304:
	.string	"MT_MISC57"
.LASF1305:
	.string	"MT_MISC58"
.LASF1306:
	.string	"MT_MISC59"
.LASF456:
	.string	"S_SPOS_RAISE1"
.LASF1514:
	.string	"sfx_dshtgn"
.LASF250:
	.string	"S_SGUNFLASH1"
.LASF251:
	.string	"S_SGUNFLASH2"
.LASF798:
	.string	"S_BOS2_RAISE1"
.LASF799:
	.string	"S_BOS2_RAISE2"
.LASF800:
	.string	"S_BOS2_RAISE3"
.LASF801:
	.string	"S_BOS2_RAISE4"
.LASF802:
	.string	"S_BOS2_RAISE5"
.LASF803:
	.string	"S_BOS2_RAISE6"
.LASF804:
	.string	"S_BOS2_RAISE7"
.LASF563:
	.string	"S_SKEL_PAIN"
.LASF1050:
	.string	"S_RKEY"
.LASF73:
	.string	"next"
.LASF1650:
	.string	"S_StartSound"
.LASF1526:
	.string	"sfx_firsht"
.LASF1518:
	.string	"sfx_plasma"
.LASF232:
	.string	"S_PISTOLUP"
.LASF918:
	.string	"S_CYBER_DIE8"
.LASF1531:
	.string	"sfx_dorcls"
.LASF1307:
	.string	"MT_MISC60"
.LASF1308:
	.string	"MT_MISC61"
.LASF1309:
	.string	"MT_MISC62"
.LASF1310:
	.string	"MT_MISC63"
.LASF1311:
	.string	"MT_MISC64"
.LASF1312:
	.string	"MT_MISC65"
.LASF1313:
	.string	"MT_MISC66"
.LASF1314:
	.string	"MT_MISC67"
.LASF347:
	.string	"S_EXPLODE1"
.LASF348:
	.string	"S_EXPLODE2"
.LASF349:
	.string	"S_EXPLODE3"
.LASF1609:
	.string	"sfx_manatk"
.LASF538:
	.string	"S_TRACEEXP1"
.LASF539:
	.string	"S_TRACEEXP2"
.LASF540:
	.string	"S_TRACEEXP3"
.LASF926:
	.string	"S_PAIN_RUN5"
.LASF1028:
	.string	"S_BEXP"
.LASF927:
	.string	"S_PAIN_RUN6"
.LASF1444:
	.string	"extralight"
.LASF1145:
	.string	"S_HEARTCOL2"
.LASF324:
	.string	"S_RBALLX1"
.LASF1517:
	.string	"sfx_dbload"
.LASF1353:
	.string	"height"
.LASF1238:
	.string	"MT_TELEPORTMAN"
.LASF1492:
	.string	"frac"
.LASF1317:
	.string	"MT_MISC70"
.LASF107:
	.string	"SPR_IFOG"
.LASF1319:
	.string	"MT_MISC72"
.LASF1320:
	.string	"MT_MISC73"
.LASF1321:
	.string	"MT_MISC74"
.LASF1322:
	.string	"MT_MISC75"
.LASF1323:
	.string	"MT_MISC76"
.LASF1151:
	.string	"S_GREENTORCH2"
.LASF1152:
	.string	"S_GREENTORCH3"
.LASF1153:
	.string	"S_GREENTORCH4"
.LASF992:
	.string	"S_COMMKEEN9"
.LASF641:
	.string	"S_CPOS_PAIN2"
.LASF864:
	.string	"S_BSPI_RUN10"
.LASF865:
	.string	"S_BSPI_RUN11"
.LASF866:
	.string	"S_BSPI_RUN12"
.LASF948:
	.string	"S_SSWV_RUN1"
.LASF949:
	.string	"S_SSWV_RUN2"
.LASF950:
	.string	"S_SSWV_RUN3"
.LASF951:
	.string	"S_SSWV_RUN4"
.LASF952:
	.string	"S_SSWV_RUN5"
.LASF953:
	.string	"S_SSWV_RUN6"
.LASF954:
	.string	"S_SSWV_RUN7"
.LASF955:
	.string	"S_SSWV_RUN8"
.LASF1133:
	.string	"S_SKULLCOL"
.LASF1205:
	.string	"MT_FATSO"
.LASF677:
	.string	"S_TROO_DIE1"
.LASF678:
	.string	"S_TROO_DIE2"
.LASF679:
	.string	"S_TROO_DIE3"
.LASF680:
	.string	"S_TROO_DIE4"
.LASF681:
	.string	"S_TROO_DIE5"
.LASF1692:
	.string	"P_SlideMove"
.LASF1058:
	.string	"S_YSKULL"
.LASF1059:
	.string	"S_YSKULL2"
.LASF160:
	.string	"SPR_ROCK"
.LASF1230:
	.string	"MT_ROCKET"
.LASF1328:
	.string	"MT_MISC81"
.LASF1329:
	.string	"MT_MISC82"
.LASF1330:
	.string	"MT_MISC83"
.LASF636:
	.string	"S_CPOS_ATK1"
.LASF637:
	.string	"S_CPOS_ATK2"
.LASF638:
	.string	"S_CPOS_ATK3"
.LASF639:
	.string	"S_CPOS_ATK4"
.LASF1197:
	.string	"MT_PLAYER"
.LASF1720:
	.string	"blockdist"
.LASF172:
	.string	"SPR_SHOT"
.LASF365:
	.string	"S_IFOG2"
.LASF366:
	.string	"S_IFOG3"
.LASF367:
	.string	"S_IFOG4"
.LASF368:
	.string	"S_IFOG5"
.LASF101:
	.string	"SPR_PLSE"
.LASF93:
	.string	"SPR_PLSF"
.LASF92:
	.string	"SPR_PLSG"
.LASF761:
	.string	"S_BOSS_PAIN2"
.LASF461:
	.string	"S_VILE_STND"
.LASF989:
	.string	"S_COMMKEEN6"
.LASF990:
	.string	"S_COMMKEEN7"
.LASF1675:
	.string	"PIT_ChangeSector"
.LASF991:
	.string	"S_COMMKEEN8"
.LASF100:
	.string	"SPR_PLSS"
.LASF840:
	.string	"S_SPID_PAIN2"
.LASF1544:
	.string	"sfx_oof"
.LASF1354:
	.string	"mass"
.LASF1585:
	.string	"sfx_posact"
.LASF213:
	.string	"SPR_POB1"
.LASF214:
	.string	"SPR_POB2"
.LASF1062:
	.string	"S_SOUL"
.LASF1576:
	.string	"sfx_skldth"
.LASF1072:
	.string	"S_PSTR"
.LASF904:
	.string	"S_CYBER_ATK1"
.LASF905:
	.string	"S_CYBER_ATK2"
.LASF906:
	.string	"S_CYBER_ATK3"
.LASF907:
	.string	"S_CYBER_ATK4"
.LASF908:
	.string	"S_CYBER_ATK5"
.LASF909:
	.string	"S_CYBER_ATK6"
.LASF1099:
	.string	"S_BFUG"
.LASF139:
	.string	"SPR_FCAN"
.LASF1629:
	.string	"secondslideline"
.LASF1478:
	.string	"line_t"
.LASF582:
	.string	"S_FATT_STND"
.LASF1019:
	.string	"S_BRAINEXPLODE1"
.LASF1020:
	.string	"S_BRAINEXPLODE2"
.LASF1021:
	.string	"S_BRAINEXPLODE3"
.LASF303:
	.string	"S_BFGUP"
.LASF1677:
	.string	"source"
.LASF1674:
	.string	"P_ChangeSector"
.LASF144:
	.string	"SPR_YKEY"
.LASF690:
	.string	"S_TROO_RAISE1"
.LASF691:
	.string	"S_TROO_RAISE2"
.LASF692:
	.string	"S_TROO_RAISE3"
.LASF693:
	.string	"S_TROO_RAISE4"
.LASF694:
	.string	"S_TROO_RAISE5"
.LASF1103:
	.string	"S_PLAS"
.LASF985:
	.string	"S_COMMKEEN2"
.LASF986:
	.string	"S_COMMKEEN3"
.LASF987:
	.string	"S_COMMKEEN4"
.LASF988:
	.string	"S_COMMKEEN5"
.LASF369:
	.string	"S_PLAY"
.LASF935:
	.string	"S_PAIN_DIE2"
.LASF936:
	.string	"S_PAIN_DIE3"
.LASF937:
	.string	"S_PAIN_DIE4"
.LASF938:
	.string	"S_PAIN_DIE5"
.LASF939:
	.string	"S_PAIN_DIE6"
.LASF1208:
	.string	"MT_TROOP"
.LASF490:
	.string	"S_VILE_PAIN2"
.LASF1639:
	.string	"bottomslope"
.LASF618:
	.string	"S_FATT_RAISE1"
.LASF40:
	.string	"wp_plasma"
.LASF620:
	.string	"S_FATT_RAISE3"
.LASF621:
	.string	"S_FATT_RAISE4"
.LASF622:
	.string	"S_FATT_RAISE5"
.LASF623:
	.string	"S_FATT_RAISE6"
.LASF624:
	.string	"S_FATT_RAISE7"
.LASF625:
	.string	"S_FATT_RAISE8"
.LASF1364:
	.string	"MF_NOBLOCKMAP"
.LASF334:
	.string	"S_ROCKET"
.LASF1229:
	.string	"MT_HEADSHOT"
.LASF1386:
	.string	"MF_TRANSLATION"
.LASF1467:
	.string	"sidenum"
.LASF887:
	.string	"S_ARACH_PLAZ"
.LASF1126:
	.string	"S_STALAGTITE"
.LASF728:
	.string	"S_HEAD_PAIN2"
.LASF729:
	.string	"S_HEAD_PAIN3"
.LASF20:
	.string	"byte"
.LASF33:
	.string	"it_redskull"
.LASF1586:
	.string	"sfx_bgact"
.LASF1236:
	.string	"MT_TFOG"
.LASF437:
	.string	"S_SPOS_ATK1"
.LASF438:
	.string	"S_SPOS_ATK2"
.LASF439:
	.string	"S_SPOS_ATK3"
.LASF391:
	.string	"S_PLAY_XDIE7"
.LASF374:
	.string	"S_PLAY_ATK1"
.LASF375:
	.string	"S_PLAY_ATK2"
.LASF127:
	.string	"SPR_APLS"
.LASF62:
	.string	"finesine"
.LASF1436:
	.string	"refire"
.LASF1663:
	.string	"P_TouchSpecialThing"
.LASF1155:
	.string	"S_REDTORCH2"
.LASF1156:
	.string	"S_REDTORCH3"
.LASF1157:
	.string	"S_REDTORCH4"
.LASF664:
	.string	"S_TROO_RUN1"
.LASF665:
	.string	"S_TROO_RUN2"
.LASF666:
	.string	"S_TROO_RUN3"
.LASF667:
	.string	"S_TROO_RUN4"
.LASF668:
	.string	"S_TROO_RUN5"
.LASF669:
	.string	"S_TROO_RUN6"
.LASF670:
	.string	"S_TROO_RUN7"
.LASF671:
	.string	"S_TROO_RUN8"
.LASF1610:
	.string	"sfx_mandth"
.LASF118:
	.string	"SPR_CPOS"
.LASF579:
	.string	"S_FATSHOTX1"
.LASF580:
	.string	"S_FATSHOTX2"
.LASF581:
	.string	"S_FATSHOTX3"
.LASF659:
	.string	"S_CPOS_RAISE5"
.LASF660:
	.string	"S_CPOS_RAISE6"
.LASF661:
	.string	"S_CPOS_RAISE7"
.LASF35:
	.string	"wp_fist"
.LASF1347:
	.string	"missilestate"
.LASF148:
	.string	"SPR_STIM"
.LASF1367:
	.string	"MF_JUSTATTACKED"
.LASF695:
	.string	"S_SARG_STND"
.LASF920:
	.string	"S_CYBER_DIE10"
.LASF98:
	.string	"SPR_BAL1"
.LASF99:
	.string	"SPR_BAL2"
.LASF121:
	.string	"SPR_BAL7"
.LASF1402:
	.string	"info"
.LASF1580:
	.string	"sfx_bspdth"
.LASF1114:
	.string	"S_HEADSONSTICK"
.LASF1615:
	.string	"sfx_skeact"
.LASF1397:
	.string	"ceilingz"
.LASF1611:
	.string	"sfx_sssit"
.LASF571:
	.string	"S_SKEL_RAISE1"
.LASF86:
	.string	"SPR_SHT2"
.LASF225:
	.string	"S_PUNCH1"
.LASF226:
	.string	"S_PUNCH2"
.LASF227:
	.string	"S_PUNCH3"
.LASF228:
	.string	"S_PUNCH4"
.LASF229:
	.string	"S_PUNCH5"
.LASF588:
	.string	"S_FATT_RUN5"
.LASF224:
	.string	"S_PUNCHUP"
.LASF841:
	.string	"S_SPID_DIE1"
.LASF592:
	.string	"S_FATT_RUN9"
.LASF843:
	.string	"S_SPID_DIE3"
.LASF844:
	.string	"S_SPID_DIE4"
.LASF85:
	.string	"SPR_SHTF"
.LASF81:
	.string	"SPR_SHTG"
.LASF363:
	.string	"S_IFOG01"
.LASF364:
	.string	"S_IFOG02"
.LASF849:
	.string	"S_SPID_DIE9"
.LASF1091:
	.string	"S_AMMO"
.LASF51:
	.string	"NUMAMMO"
.LASF922:
	.string	"S_PAIN_RUN1"
.LASF923:
	.string	"S_PAIN_RUN2"
.LASF924:
	.string	"S_PAIN_RUN3"
.LASF925:
	.string	"S_PAIN_RUN4"
.LASF207:
	.string	"SPR_HDB1"
.LASF208:
	.string	"SPR_HDB2"
.LASF209:
	.string	"SPR_HDB3"
.LASF210:
	.string	"SPR_HDB4"
.LASF211:
	.string	"SPR_HDB5"
.LASF212:
	.string	"SPR_HDB6"
.LASF1198:
	.string	"MT_POSSESSED"
.LASF257:
	.string	"S_DSGUN3"
.LASF258:
	.string	"S_DSGUN4"
.LASF77:
	.string	"type"
.LASF1506:
	.string	"bmaporgy"
.LASF277:
	.string	"S_MISSILE"
.LASF1495:
	.string	"opentop"
.LASF1489:
	.string	"divline_t"
.LASF1105:
	.string	"S_SHOT2"
.LASF1360:
	.string	"MF_SPECIAL"
.LASF1172:
	.string	"S_HANGTLOOKDN"
.LASF1405:
	.string	"movedir"
.LASF649:
	.string	"S_CPOS_XDIE1"
.LASF1374:
	.string	"MF_FLOAT"
.LASF70:
	.string	"actionf_t"
.LASF65:
	.string	"actionf_v"
.LASF168:
	.string	"SPR_MGUN"
.LASF1210:
	.string	"MT_SHADOWS"
.LASF552:
	.string	"S_SKEL_RUN10"
.LASF553:
	.string	"S_SKEL_RUN11"
.LASF554:
	.string	"S_SKEL_RUN12"
.LASF220:
	.string	"S_NULL"
.LASF762:
	.string	"S_BOSS_DIE1"
.LASF763:
	.string	"S_BOSS_DIE2"
.LASF764:
	.string	"S_BOSS_DIE3"
.LASF765:
	.string	"S_BOSS_DIE4"
.LASF766:
	.string	"S_BOSS_DIE5"
.LASF767:
	.string	"S_BOSS_DIE6"
.LASF768:
	.string	"S_BOSS_DIE7"
.LASF932:
	.string	"S_PAIN_PAIN"
.LASF301:
	.string	"S_BFG"
.LASF1345:
	.string	"painsound"
.LASF1488:
	.string	"player_t"
.LASF1457:
	.string	"special"
.LASF947:
	.string	"S_SSWV_STND2"
.LASF1684:
	.string	"P_LineAttack"
.LASF169:
	.string	"SPR_CSAW"
.LASF1082:
	.string	"S_PMAP"
.LASF1680:
	.string	"P_RadiusAttack"
.LASF1088:
	.string	"S_PVIS"
.LASF302:
	.string	"S_BFGDOWN"
.LASF1558:
	.string	"sfx_vilsit"
.LASF1222:
	.string	"MT_BOSSBRAIN"
.LASF115:
	.string	"SPR_SKEL"
.LASF297:
	.string	"S_PLASMA1"
.LASF298:
	.string	"S_PLASMA2"
.LASF1162:
	.string	"S_GTORCHSHRT"
.LASF1640:
	.string	"usething"
.LASF1545:
	.string	"sfx_telept"
.LASF1416:
	.string	"firstline"
.LASF1096:
	.string	"S_SHEL"
.LASF853:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF1579:
	.string	"sfx_spidth"
.LASF113:
	.string	"SPR_FATB"
.LASF218:
	.string	"NUMSPRITES"
.LASF839:
	.string	"S_SPID_PAIN"
.LASF336:
	.string	"S_BFGSHOT2"
.LASF117:
	.string	"SPR_FATT"
.LASF1566:
	.string	"sfx_skeswg"
.LASF1063:
	.string	"S_SOUL2"
.LASF1064:
	.string	"S_SOUL3"
.LASF1065:
	.string	"S_SOUL4"
.LASF1066:
	.string	"S_SOUL5"
.LASF1067:
	.string	"S_SOUL6"
.LASF823:
	.string	"S_SPID_RUN1"
.LASF824:
	.string	"S_SPID_RUN2"
.LASF825:
	.string	"S_SPID_RUN3"
.LASF826:
	.string	"S_SPID_RUN4"
.LASF827:
	.string	"S_SPID_RUN5"
.LASF828:
	.string	"S_SPID_RUN6"
.LASF829:
	.string	"S_SPID_RUN7"
.LASF830:
	.string	"S_SPID_RUN8"
.LASF60:
	.string	"float"
.LASF1030:
	.string	"S_BEXP3"
.LASF1031:
	.string	"S_BEXP4"
.LASF1524:
	.string	"sfx_rlaunc"
.LASF1703:
	.string	"PTR_SlideTraverse"
.LASF1119:
	.string	"S_DEADSTICK"
.LASF1445:
	.string	"fixedcolormap"
.LASF1430:
	.string	"weaponowned"
.LASF1632:
	.string	"tmymove"
.LASF1239:
	.string	"MT_EXTRABFG"
.LASF409:
	.string	"S_POSS_DIE1"
.LASF410:
	.string	"S_POSS_DIE2"
.LASF411:
	.string	"S_POSS_DIE3"
.LASF412:
	.string	"S_POSS_DIE4"
.LASF413:
	.string	"S_POSS_DIE5"
.LASF239:
	.string	"S_SGUNDOWN"
.LASF1613:
	.string	"sfx_keenpn"
.LASF88:
	.string	"SPR_CHGF"
.LASF87:
	.string	"SPR_CHGG"
.LASF632:
	.string	"S_CPOS_RUN5"
.LASF891:
	.string	"S_ARACH_PLEX3"
.LASF633:
	.string	"S_CPOS_RUN6"
.LASF893:
	.string	"S_ARACH_PLEX5"
.LASF634:
	.string	"S_CPOS_RUN7"
.LASF1407:
	.string	"target"
.LASF198:
	.string	"SPR_CEYE"
.LASF1473:
	.string	"ST_HORIZONTAL"
.LASF940:
	.string	"S_PAIN_RAISE1"
.LASF941:
	.string	"S_PAIN_RAISE2"
.LASF942:
	.string	"S_PAIN_RAISE3"
.LASF943:
	.string	"S_PAIN_RAISE4"
.LASF944:
	.string	"S_PAIN_RAISE5"
.LASF577:
	.string	"S_FATSHOT1"
.LASF578:
	.string	"S_FATSHOT2"
.LASF1710:
	.string	"newlen"
.LASF1474:
	.string	"ST_VERTICAL"
.LASF1685:
	.string	"distance"
.LASF155:
	.string	"SPR_SUIT"
.LASF805:
	.string	"S_SKULL_STND"
.LASF1636:
	.string	"attackrange"
.LASF1366:
	.string	"MF_JUSTHIT"
.LASF1387:
	.string	"MF_TRANSSHIFT"
.LASF1502:
	.string	"tmceilingz"
.LASF13:
	.string	"BOXBOTTOM"
.LASF1334:
	.string	"NUMMOBJTYPES"
.LASF137:
	.string	"SPR_BAR1"
.LASF252:
	.string	"S_DSGUN"
.LASF1131:
	.string	"S_CANDLESTIK"
.LASF57:
	.string	"pw_allmap"
.LASF1187:
	.string	"NUMSTATES"
.LASF831:
	.string	"S_SPID_RUN9"
.LASF317:
	.string	"S_TBALL1"
.LASF318:
	.string	"S_TBALL2"
.LASF531:
	.string	"S_SMOKE1"
.LASF532:
	.string	"S_SMOKE2"
.LASF533:
	.string	"S_SMOKE3"
.LASF534:
	.string	"S_SMOKE4"
.LASF535:
	.string	"S_SMOKE5"
.LASF754:
	.string	"S_BOSS_RUN6"
.LASF755:
	.string	"S_BOSS_RUN7"
.LASF756:
	.string	"S_BOSS_RUN8"
.LASF120:
	.string	"SPR_HEAD"
.LASF1394:
	.string	"bprev"
.LASF181:
	.string	"SPR_POL1"
.LASF177:
	.string	"SPR_POL2"
.LASF180:
	.string	"SPR_POL3"
.LASF179:
	.string	"SPR_POL4"
.LASF178:
	.string	"SPR_POL5"
.LASF182:
	.string	"SPR_POL6"
.LASF1026:
	.string	"S_BAR1"
.LASF1583:
	.string	"sfx_pedth"
.LASF1542:
	.string	"sfx_itemup"
.LASF1625:
	.string	"numspechit"
.LASF1240:
	.string	"MT_MISC0"
.LASF1112:
	.string	"S_DEADTORSO"
.LASF1371:
	.string	"MF_PICKUP"
.LASF1380:
	.string	"MF_CORPSE"
.LASF254:
	.string	"S_DSGUNUP"
.LASF1605:
	.string	"sfx_boscub"
.LASF1567:
	.string	"sfx_pldeth"
.LASF1337:
	.string	"spawnstate"
.LASF663:
	.string	"S_TROO_STND2"
.LASF1183:
	.string	"S_TECH2LAMP"
.LASF1530:
	.string	"sfx_doropn"
.LASF1226:
	.string	"MT_SPAWNFIRE"
.LASF1201:
	.string	"MT_FIRE"
.LASF1193:
	.string	"nextstate"
.LASF1507:
	.string	"gamemap"
.LASF760:
	.string	"S_BOSS_PAIN"
.LASF131:
	.string	"SPR_SSWV"
.LASF1365:
	.string	"MF_AMBUSH"
.LASF322:
	.string	"S_RBALL1"
.LASF323:
	.string	"S_RBALL2"
.LASF1540:
	.string	"sfx_pepain"
.LASF1127:
	.string	"S_TALLGRNCOL"
.LASF1410:
	.string	"lastlook"
.LASF1577:
	.string	"sfx_brsdth"
.LASF1513:
	.string	"sfx_sgcock"
.LASF1487:
	.string	"playerstate_t"
.LASF1116:
	.string	"S_HEADONASTICK"
.LASF396:
	.string	"S_POSS_RUN1"
.LASF338:
	.string	"S_BFGLAND2"
.LASF339:
	.string	"S_BFGLAND3"
.LASF340:
	.string	"S_BFGLAND4"
.LASF341:
	.string	"S_BFGLAND5"
.LASF342:
	.string	"S_BFGLAND6"
.LASF402:
	.string	"S_POSS_RUN7"
.LASF403:
	.string	"S_POSS_RUN8"
.LASF1665:
	.string	"P_LineOpening"
.LASF385:
	.string	"S_PLAY_XDIE1"
.LASF386:
	.string	"S_PLAY_XDIE2"
.LASF387:
	.string	"S_PLAY_XDIE3"
.LASF388:
	.string	"S_PLAY_XDIE4"
.LASF389:
	.string	"S_PLAY_XDIE5"
.LASF390:
	.string	"S_PLAY_XDIE6"
.LASF15:
	.string	"BOXRIGHT"
.LASF392:
	.string	"S_PLAY_XDIE8"
.LASF393:
	.string	"S_PLAY_XDIE9"
.LASF791:
	.string	"S_BOS2_DIE1"
.LASF792:
	.string	"S_BOS2_DIE2"
.LASF793:
	.string	"S_BOS2_DIE3"
.LASF794:
	.string	"S_BOS2_DIE4"
.LASF795:
	.string	"S_BOS2_DIE5"
.LASF796:
	.string	"S_BOS2_DIE6"
.LASF797:
	.string	"S_BOS2_DIE7"
.LASF1357:
	.string	"flags"
.LASF717:
	.string	"S_SARG_RAISE2"
.LASF1696:
	.string	"traily"
.LASF718:
	.string	"S_SARG_RAISE3"
.LASF361:
	.string	"S_TFOG10"
.LASF719:
	.string	"S_SARG_RAISE4"
.LASF1500:
	.string	"floatok"
.LASF414:
	.string	"S_POSS_XDIE1"
.LASF415:
	.string	"S_POSS_XDIE2"
.LASF416:
	.string	"S_POSS_XDIE3"
.LASF417:
	.string	"S_POSS_XDIE4"
.LASF418:
	.string	"S_POSS_XDIE5"
.LASF419:
	.string	"S_POSS_XDIE6"
.LASF420:
	.string	"S_POSS_XDIE7"
.LASF47:
	.string	"am_clip"
.LASF422:
	.string	"S_POSS_XDIE9"
.LASF1115:
	.string	"S_GIBS"
.LASF730:
	.string	"S_HEAD_DIE1"
.LASF731:
	.string	"S_HEAD_DIE2"
.LASF732:
	.string	"S_HEAD_DIE3"
.LASF733:
	.string	"S_HEAD_DIE4"
.LASF734:
	.string	"S_HEAD_DIE5"
.LASF735:
	.string	"S_HEAD_DIE6"
.LASF583:
	.string	"S_FATT_STND2"
.LASF1106:
	.string	"S_COLU"
.LASF233:
	.string	"S_PISTOL1"
.LASF234:
	.string	"S_PISTOL2"
.LASF235:
	.string	"S_PISTOL3"
.LASF236:
	.string	"S_PISTOL4"
.LASF572:
	.string	"S_SKEL_RAISE2"
.LASF573:
	.string	"S_SKEL_RAISE3"
.LASF574:
	.string	"S_SKEL_RAISE4"
.LASF575:
	.string	"S_SKEL_RAISE5"
.LASF576:
	.string	"S_SKEL_RAISE6"
.LASF1135:
	.string	"S_BIGTREE"
.LASF1476:
	.string	"ST_NEGATIVE"
.LASF1045:
	.string	"S_BON2C"
.LASF1046:
	.string	"S_BON2D"
.LASF351:
	.string	"S_TFOG01"
.LASF352:
	.string	"S_TFOG02"
.LASF170:
	.string	"SPR_LAUN"
.LASF1646:
	.string	"P_SpawnMobj"
.LASF407:
	.string	"S_POSS_PAIN"
.LASF742:
	.string	"S_BRBALL1"
.LASF743:
	.string	"S_BRBALL2"
.LASF1204:
	.string	"MT_SMOKE"
.LASF1218:
	.string	"MT_CYBORG"
.LASF1690:
	.string	"thingbottomslope"
.LASF1355:
	.string	"damage"
.LASF447:
	.string	"S_SPOS_XDIE1"
.LASF448:
	.string	"S_SPOS_XDIE2"
.LASF449:
	.string	"S_SPOS_XDIE3"
.LASF450:
	.string	"S_SPOS_XDIE4"
.LASF451:
	.string	"S_SPOS_XDIE5"
.LASF452:
	.string	"S_SPOS_XDIE6"
.LASF453:
	.string	"S_SPOS_XDIE7"
.LASF454:
	.string	"S_SPOS_XDIE8"
.LASF455:
	.string	"S_SPOS_XDIE9"
.LASF1384:
	.string	"MF_SKULLFLY"
.LASF1538:
	.string	"sfx_vipain"
.LASF1389:
	.string	"mobj_s"
.LASF1449:
	.string	"mobj_t"
.LASF1048:
	.string	"S_BKEY"
.LASF1643:
	.string	"bombdamage"
.LASF55:
	.string	"pw_invisibility"
.LASF135:
	.string	"SPR_ARM1"
.LASF136:
	.string	"SPR_ARM2"
.LASF1200:
	.string	"MT_VILE"
.LASF1529:
	.string	"sfx_pstop"
.LASF31:
	.string	"it_blueskull"
.LASF1461:
	.string	"soundorg"
.LASF295:
	.string	"S_PLASMADOWN"
.LASF607:
	.string	"S_FATT_PAIN2"
.LASF1614:
	.string	"sfx_keendt"
.LASF1005:
	.string	"S_BRAINEYESEE"
.LASF1477:
	.string	"slopetype_t"
.LASF542:
	.string	"S_SKEL_STND2"
.LASF895:
	.string	"S_CYBER_STND2"
.LASF1196:
	.string	"state_t"
.LASF739:
	.string	"S_HEAD_RAISE4"
.LASF965:
	.string	"S_SSWV_DIE2"
.LASF1589:
	.string	"sfx_bspwlk"
.LASF421:
	.string	"S_POSS_XDIE8"
.LASF1095:
	.string	"S_CELP"
.LASF1137:
	.string	"S_EVILEYE"
.LASF1163:
	.string	"S_GTORCHSHRT2"
.LASF1164:
	.string	"S_GTORCHSHRT3"
.LASF1165:
	.string	"S_GTORCHSHRT4"
.LASF1722:
	.string	"PIT_CheckLine"
.LASF1420:
	.string	"viewheight"
.LASF1393:
	.string	"bnext"
.LASF1713:
	.string	"P_TryMove"
.LASF1608:
	.string	"sfx_bosdth"
.LASF596:
	.string	"S_FATT_ATK1"
.LASF129:
	.string	"SPR_CYBR"
.LASF597:
	.string	"S_FATT_ATK2"
.LASF500:
	.string	"S_VILE_DIE10"
.LASF90:
	.string	"SPR_MISF"
.LASF89:
	.string	"SPR_MISG"
.LASF102:
	.string	"SPR_MISL"
.LASF1700:
	.string	"hitline"
.LASF1054:
	.string	"S_BSKULL"
.LASF133:
	.string	"SPR_BBRN"
.LASF475:
	.string	"S_VILE_ATK1"
.LASF476:
	.string	"S_VILE_ATK2"
.LASF477:
	.string	"S_VILE_ATK3"
.LASF478:
	.string	"S_VILE_ATK4"
.LASF479:
	.string	"S_VILE_ATK5"
.LASF480:
	.string	"S_VILE_ATK6"
.LASF481:
	.string	"S_VILE_ATK7"
.LASF222:
	.string	"S_PUNCH"
.LASF483:
	.string	"S_VILE_ATK9"
.LASF204:
	.string	"SPR_SMBT"
.LASF1594:
	.string	"sfx_hoof"
.LASF778:
	.string	"S_BOS2_RUN1"
.LASF779:
	.string	"S_BOS2_RUN2"
.LASF780:
	.string	"S_BOS2_RUN3"
.LASF781:
	.string	"S_BOS2_RUN4"
.LASF782:
	.string	"S_BOS2_RUN5"
.LASF783:
	.string	"S_BOS2_RUN6"
.LASF784:
	.string	"S_BOS2_RUN7"
.LASF785:
	.string	"S_BOS2_RUN8"
.LASF1456:
	.string	"lightlevel"
.LASF195:
	.string	"SPR_TRE1"
.LASF196:
	.string	"SPR_TRE2"
.LASF852:
	.string	"S_BSPI_STND"
.LASF1525:
	.string	"sfx_rxplod"
.LASF1346:
	.string	"meleestate"
.LASF1431:
	.string	"ammo"
.LASF642:
	.string	"S_CPOS_DIE1"
.LASF203:
	.string	"SPR_TRED"
.LASF96:
	.string	"SPR_BLUD"
.LASF598:
	.string	"S_FATT_ATK3"
.LASF599:
	.string	"S_FATT_ATK4"
.LASF600:
	.string	"S_FATT_ATK5"
.LASF601:
	.string	"S_FATT_ATK6"
.LASF602:
	.string	"S_FATT_ATK7"
.LASF603:
	.string	"S_FATT_ATK8"
.LASF604:
	.string	"S_FATT_ATK9"
.LASF106:
	.string	"SPR_TFOG"
.LASF310:
	.string	"S_BLOOD1"
.LASF311:
	.string	"S_BLOOD2"
.LASF312:
	.string	"S_BLOOD3"
.LASF1510:
	.string	"sfx_None"
.LASF1194:
	.string	"misc1"
.LASF1195:
	.string	"misc2"
.LASF1536:
	.string	"sfx_dmpain"
.LASF1628:
	.string	"bestslideline"
.LASF23:
	.string	"angleturn"
.LASF1717:
	.string	"P_CheckPosition"
.LASF1702:
	.string	"stairstep"
.LASF1102:
	.string	"S_LAUN"
.LASF1660:
	.string	"P_CrossSpecialLine"
.LASF1693:
	.string	"leadx"
.LASF362:
	.string	"S_IFOG"
.LASF109:
	.string	"SPR_POSS"
.LASF114:
	.string	"SPR_FBXP"
.LASF911:
	.string	"S_CYBER_DIE1"
.LASF912:
	.string	"S_CYBER_DIE2"
.LASF913:
	.string	"S_CYBER_DIE3"
.LASF914:
	.string	"S_CYBER_DIE4"
.LASF915:
	.string	"S_CYBER_DIE5"
.LASF916:
	.string	"S_CYBER_DIE6"
.LASF917:
	.string	"S_CYBER_DIE7"
.LASF789:
	.string	"S_BOS2_PAIN"
.LASF919:
	.string	"S_CYBER_DIE9"
.LASF1411:
	.string	"spawnpoint"
.LASF1189:
	.string	"sprite"
.LASF1624:
	.string	"spechit"
.LASF1267:
	.string	"MT_MISC23"
.LASF1653:
	.string	"P_ShootSpecialLine"
.LASF1132:
	.string	"S_CANDELABRA"
.LASF472:
	.string	"S_VILE_RUN10"
.LASF473:
	.string	"S_VILE_RUN11"
.LASF474:
	.string	"S_VILE_RUN12"
.LASF1671:
	.string	"P_DamageMobj"
.LASF1092:
	.string	"S_ROCK"
.LASF241:
	.string	"S_SGUN1"
.LASF242:
	.string	"S_SGUN2"
.LASF243:
	.string	"S_SGUN3"
.LASF244:
	.string	"S_SGUN4"
.LASF245:
	.string	"S_SGUN5"
.LASF246:
	.string	"S_SGUN6"
.LASF247:
	.string	"S_SGUN7"
.LASF248:
	.string	"S_SGUN8"
.LASF249:
	.string	"S_SGUN9"
.LASF1336:
	.string	"doomednum"
.LASF238:
	.string	"S_SGUN"
.LASF1128:
	.string	"S_SHRTGRNCOL"
.LASF1612:
	.string	"sfx_ssdth"
.LASF1602:
	.string	"sfx_flamst"
.LASF813:
	.string	"S_SKULL_PAIN"
.LASF1225:
	.string	"MT_SPAWNSHOT"
.LASF1719:
	.string	"PIT_CheckThing"
.LASF537:
	.string	"S_TRACER2"
.LASF1136:
	.string	"S_TECHPILLAR"
.LASF541:
	.string	"S_SKEL_STND"
.LASF696:
	.string	"S_SARG_STND2"
.LASF1652:
	.string	"P_SpawnPuff"
.LASF1595:
	.string	"sfx_metal"
.LASF442:
	.string	"S_SPOS_DIE1"
.LASF443:
	.string	"S_SPOS_DIE2"
.LASF444:
	.string	"S_SPOS_DIE3"
.LASF445:
	.string	"S_SPOS_DIE4"
.LASF446:
	.string	"S_SPOS_DIE5"
.LASF1486:
	.string	"PST_REBORN"
.LASF1562:
	.string	"sfx_sgtatk"
.LASF1171:
	.string	"S_HANGBNOBRAIN"
.LASF1559:
	.string	"sfx_mansit"
.LASF705:
	.string	"S_SARG_ATK1"
.LASF706:
	.string	"S_SARG_ATK2"
.LASF707:
	.string	"S_SARG_ATK3"
.LASF296:
	.string	"S_PLASMAUP"
.LASF1191:
	.string	"tics"
.LASF1052:
	.string	"S_YKEY"
.LASF1533:
	.string	"sfx_swtchn"
.LASF1351:
	.string	"speed"
.LASF265:
	.string	"S_DSNR1"
.LASF934:
	.string	"S_PAIN_DIE1"
.LASF1534:
	.string	"sfx_swtchx"
.LASF1694:
	.string	"leady"
.LASF1637:
	.string	"aimslope"
.LASF464:
	.string	"S_VILE_RUN2"
.LASF1600:
	.string	"sfx_itmbk"
.LASF1182:
	.string	"S_TECHLAMP4"
.LASF628:
	.string	"S_CPOS_RUN1"
.LASF629:
	.string	"S_CPOS_RUN2"
.LASF630:
	.string	"S_CPOS_RUN3"
.LASF631:
	.string	"S_CPOS_RUN4"
.LASF66:
	.string	"actionf_p1"
.LASF67:
	.string	"actionf_p2"
.LASF166:
	.string	"SPR_BPAK"
.LASF635:
	.string	"S_CPOS_RUN8"
.LASF1032:
	.string	"S_BEXP5"
.LASF1617:
	.string	"sfx_skeatk"
.LASF79:
	.string	"mapthing_t"
.LASF397:
	.string	"S_POSS_RUN2"
.LASF1687:
	.string	"P_AimLineAttack"
.LASF398:
	.string	"S_POSS_RUN3"
.LASF399:
	.string	"S_POSS_RUN4"
.LASF716:
	.string	"S_SARG_RAISE1"
.LASF400:
	.string	"S_POSS_RUN5"
.LASF68:
	.string	"acp1"
.LASF69:
	.string	"acp2"
.LASF720:
	.string	"S_SARG_RAISE5"
.LASF721:
	.string	"S_SARG_RAISE6"
.LASF1569:
	.string	"sfx_podth1"
.LASF1570:
	.string	"sfx_podth2"
.LASF1571:
	.string	"sfx_podth3"
.LASF1300:
	.string	"MT_MISC53"
.LASF1619:
	.string	"NUMSFX"
.LASF205:
	.string	"SPR_SMGT"
.LASF1638:
	.string	"topslope"
.LASF996:
	.string	"S_KEENPAIN"
.LASF344:
	.string	"S_BFGEXP2"
.LASF345:
	.string	"S_BFGEXP3"
.LASF346:
	.string	"S_BFGEXP4"
.LASF275:
	.string	"S_CHAINFLASH1"
.LASF276:
	.string	"S_CHAINFLASH2"
.LASF231:
	.string	"S_PISTOLDOWN"
.LASF1491:
	.string	"line"
.LASF896:
	.string	"S_CYBER_RUN1"
.LASF897:
	.string	"S_CYBER_RUN2"
.LASF898:
	.string	"S_CYBER_RUN3"
.LASF899:
	.string	"S_CYBER_RUN4"
.LASF900:
	.string	"S_CYBER_RUN5"
.LASF901:
	.string	"S_CYBER_RUN6"
.LASF902:
	.string	"S_CYBER_RUN7"
.LASF903:
	.string	"S_CYBER_RUN8"
.LASF1340:
	.string	"seesound"
.LASF1083:
	.string	"S_PMAP2"
.LASF1084:
	.string	"S_PMAP3"
.LASF1085:
	.string	"S_PMAP4"
.LASF1086:
	.string	"S_PMAP5"
.LASF1087:
	.string	"S_PMAP6"
.LASF1376:
	.string	"MF_MISSILE"
.LASF1442:
	.string	"bonuscount"
.LASF814:
	.string	"S_SKULL_PAIN2"
.LASF1344:
	.string	"painchance"
.LASF640:
	.string	"S_CPOS_PAIN"
.LASF1453:
	.string	"ceilingheight"
.LASF119:
	.string	"SPR_SARG"
.LASF945:
	.string	"S_PAIN_RAISE6"
.LASF1463:
	.string	"specialdata"
.LASF1283:
	.string	"MT_MISC36"
.LASF749:
	.string	"S_BOSS_RUN1"
.LASF750:
	.string	"S_BOSS_RUN2"
.LASF751:
	.string	"S_BOSS_RUN3"
.LASF752:
	.string	"S_BOSS_RUN4"
.LASF753:
	.string	"S_BOSS_RUN5"
.LASF271:
	.string	"S_CHAINUP"
.LASF1725:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1437:
	.string	"killcount"
.LASF890:
	.string	"S_ARACH_PLEX2"
.LASF1134:
	.string	"S_TORCHTREE"
.LASF946:
	.string	"S_SSWV_STND"
.LASF892:
	.string	"S_ARACH_PLEX4"
.LASF1369:
	.string	"MF_NOGRAVITY"
.LASF993:
	.string	"S_COMMKEEN10"
.LASF994:
	.string	"S_COMMKEEN11"
.LASF995:
	.string	"S_COMMKEEN12"
.LASF910:
	.string	"S_CYBER_PAIN"
.LASF429:
	.string	"S_SPOS_RUN1"
.LASF187:
	.string	"SPR_SMIT"
.LASF19:
	.string	"boolean"
.LASF432:
	.string	"S_SPOS_RUN4"
.LASF433:
	.string	"S_SPOS_RUN5"
.LASF124:
	.string	"SPR_SKUL"
.LASF435:
	.string	"S_SPOS_RUN7"
.LASF436:
	.string	"S_SPOS_RUN8"
.LASF1093:
	.string	"S_BROK"
.LASF1338:
	.string	"spawnhealth"
.LASF1578:
	.string	"sfx_cybdth"
.LASF1666:
	.string	"P_BoxOnLineSide"
.LASF223:
	.string	"S_PUNCHDOWN"
.LASF889:
	.string	"S_ARACH_PLEX"
.LASF1150:
	.string	"S_GREENTORCH"
.LASF43:
	.string	"wp_supershotgun"
.LASF289:
	.string	"S_SAWDOWN"
.LASF1655:
	.string	"P_PathTraverse"
.LASF1523:
	.string	"sfx_sawhit"
.LASF1522:
	.string	"sfx_sawful"
.LASF1188:
	.string	"statenum_t"
.LASF1228:
	.string	"MT_TROOPSHOT"
.LASF1213:
	.string	"MT_BRUISERSHOT"
.LASF1590:
	.string	"sfx_vilact"
.LASF1667:
	.string	"P_SetThingPosition"
.LASF27:
	.string	"ticcmd_t"
.LASF1333:
	.string	"MT_MISC86"
.LASF1480:
	.string	"ps_weapon"
.LASF1555:
	.string	"sfx_spisit"
.LASF377:
	.string	"S_PLAY_PAIN2"
.LASF1521:
	.string	"sfx_sawidl"
.LASF772:
	.string	"S_BOSS_RAISE4"
.LASF773:
	.string	"S_BOSS_RAISE5"
.LASF1190:
	.string	"frame"
.LASF1496:
	.string	"openbottom"
.LASF116:
	.string	"SPR_MANF"
.LASF627:
	.string	"S_CPOS_STND2"
.LASF1588:
	.string	"sfx_bspact"
.LASF440:
	.string	"S_SPOS_PAIN"
.LASF37:
	.string	"wp_shotgun"
.LASF408:
	.string	"S_POSS_PAIN2"
.LASF1234:
	.string	"MT_PUFF"
.LASF280:
	.string	"S_MISSILE1"
.LASF281:
	.string	"S_MISSILE2"
.LASF282:
	.string	"S_MISSILE3"
.LASF656:
	.string	"S_CPOS_RAISE2"
.LASF657:
	.string	"S_CPOS_RAISE3"
.LASF658:
	.string	"S_CPOS_RAISE4"
.LASF1447:
	.string	"psprites"
.LASF1100:
	.string	"S_MGUN"
.LASF1212:
	.string	"MT_BRUISER"
.LASF165:
	.string	"SPR_SBOX"
.LASF1439:
	.string	"secretcount"
.LASF1335:
	.string	"mobjtype_t"
.LASF1349:
	.string	"xdeathstate"
.LASF1705:
	.string	"P_HitSlideLine"
.LASF1424:
	.string	"powers"
.LASF809:
	.string	"S_SKULL_ATK1"
.LASF810:
	.string	"S_SKULL_ATK2"
.LASF811:
	.string	"S_SKULL_ATK3"
.LASF812:
	.string	"S_SKULL_ATK4"
.LASF790:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1214:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF22:
	.string	"sidemove"
.LASF1356:
	.string	"activesound"
.LASF1691:
	.string	"PTR_AimTraverse"
.LASF441:
	.string	"S_SPOS_PAIN2"
.LASF1593:
	.string	"sfx_punch"
.LASF605:
	.string	"S_FATT_ATK10"
.LASF202:
	.string	"SPR_TGRN"
.LASF1642:
	.string	"bombspot"
.LASF1259:
	.string	"MT_MEGA"
.LASF104:
	.string	"SPR_BFE1"
.LASF105:
	.string	"SPR_BFE2"
.LASF1462:
	.string	"thinglist"
.LASF1634:
	.string	"shootz"
.LASF1293:
	.string	"MT_MISC46"
.LASF1221:
	.string	"MT_KEEN"
.LASF1460:
	.string	"blockbox"
.LASF1006:
	.string	"S_BRAINEYE1"
.LASF662:
	.string	"S_TROO_STND"
.LASF609:
	.string	"S_FATT_DIE2"
.LASF300:
	.string	"S_PLASMAFLASH2"
.LASF46:
	.string	"weapontype_t"
.LASF25:
	.string	"chatchar"
.LASF353:
	.string	"S_TFOG2"
.LASF354:
	.string	"S_TFOG3"
.LASF355:
	.string	"S_TFOG4"
.LASF356:
	.string	"S_TFOG5"
.LASF357:
	.string	"S_TFOG6"
.LASF358:
	.string	"S_TFOG7"
.LASF359:
	.string	"S_TFOG8"
.LASF360:
	.string	"S_TFOG9"
.LASF775:
	.string	"S_BOSS_RAISE7"
.LASF1433:
	.string	"attackdown"
.LASF80:
	.string	"SPR_TROO"
.LASF91:
	.string	"SPR_SAWG"
.LASF1551:
	.string	"sfx_sgtsit"
.LASF1726:
	.string	"P_Random"
.LASF1385:
	.string	"MF_NOTDMATCH"
.LASF140:
	.string	"SPR_BON1"
.LASF141:
	.string	"SPR_BON2"
.LASF1623:
	.string	"tmdropoffz"
.LASF1361:
	.string	"MF_SOLID"
.LASF30:
	.string	"it_redcard"
.LASF1129:
	.string	"S_TALLREDCOL"
.LASF1656:
	.string	"I_Error"
.LASF1403:
	.string	"state"
.LASF1104:
	.string	"S_SHOT"
.LASF960:
	.string	"S_SSWV_ATK5"
.LASF1109:
	.string	"S_BLOODYTWITCH2"
.LASF1110:
	.string	"S_BLOODYTWITCH3"
.LASF1111:
	.string	"S_BLOODYTWITCH4"
.LASF850:
	.string	"S_SPID_DIE10"
.LASF851:
	.string	"S_SPID_DIE11"
.LASF545:
	.string	"S_SKEL_RUN3"
.LASF197:
	.string	"SPR_ELEC"
.LASF998:
	.string	"S_BRAIN"
.LASF1664:
	.string	"P_SetMobjState"
.LASF1681:
	.string	"P_UseLines"
.LASF1216:
	.string	"MT_SPIDER"
.LASF1081:
	.string	"S_SUIT"
.LASF95:
	.string	"SPR_BFGF"
.LASF94:
	.string	"SPR_BFGG"
.LASF921:
	.string	"S_PAIN_STND"
.LASF1509:
	.string	"skyflatnum"
.LASF337:
	.string	"S_BFGLAND"
.LASF1027:
	.string	"S_BAR2"
.LASF1429:
	.string	"pendingweapon"
.LASF1622:
	.string	"tmflags"
.LASF74:
	.string	"function"
.LASF1596:
	.string	"sfx_chgun"
.LASF48:
	.string	"am_shell"
.LASF1401:
	.string	"validcount"
.LASF1723:
	.string	"P_TeleportMove"
.LASF1633:
	.string	"shootthing"
.LASF1621:
	.string	"tmthing"
.LASF1440:
	.string	"message"
.LASF617:
	.string	"S_FATT_DIE10"
.LASF34:
	.string	"NUMCARDS"
.LASF1154:
	.string	"S_REDTORCH"
.LASF1232:
	.string	"MT_BFG"
.LASF401:
	.string	"S_POSS_RUN6"
.LASF1564:
	.string	"sfx_vilatk"
.LASF1670:
	.string	"R_PointInSubsector"
.LASF111:
	.string	"SPR_VILE"
.LASF1599:
	.string	"sfx_bdcls"
.LASF1235:
	.string	"MT_BLOOD"
.LASF230:
	.string	"S_PISTOL"
.LASF1668:
	.string	"P_UnsetThingPosition"
.LASF17:
	.string	"true"
.LASF462:
	.string	"S_VILE_STND2"
.LASF880:
	.string	"S_BSPI_RAISE1"
.LASF881:
	.string	"S_BSPI_RAISE2"
.LASF882:
	.string	"S_BSPI_RAISE3"
.LASF883:
	.string	"S_BSPI_RAISE4"
.LASF884:
	.string	"S_BSPI_RAISE5"
.LASF885:
	.string	"S_BSPI_RAISE6"
.LASF886:
	.string	"S_BSPI_RAISE7"
.LASF1398:
	.string	"momx"
.LASF1377:
	.string	"MF_DROPPED"
.LASF1399:
	.string	"momy"
.LASF4:
	.string	"long int"
.LASF969:
	.string	"S_SSWV_XDIE1"
.LASF970:
	.string	"S_SSWV_XDIE2"
.LASF971:
	.string	"S_SSWV_XDIE3"
.LASF972:
	.string	"S_SSWV_XDIE4"
.LASF973:
	.string	"S_SSWV_XDIE5"
.LASF974:
	.string	"S_SSWV_XDIE6"
.LASF975:
	.string	"S_SSWV_XDIE7"
.LASF976:
	.string	"S_SSWV_XDIE8"
.LASF977:
	.string	"S_SSWV_XDIE9"
.LASF267:
	.string	"S_DSGUNFLASH1"
.LASF268:
	.string	"S_DSGUNFLASH2"
.LASF1266:
	.string	"MT_MISC22"
.LASF1448:
	.string	"didsecret"
.LASF525:
	.string	"S_FIRE25"
.LASF619:
	.string	"S_FATT_RAISE2"
.LASF1302:
	.string	"MT_MISC55"
.LASF1421:
	.string	"deltaviewheight"
.LASF32:
	.string	"it_yellowskull"
.LASF1057:
	.string	"S_RSKULL2"
.LASF1412:
	.string	"tracer"
.LASF832:
	.string	"S_SPID_RUN10"
.LASF833:
	.string	"S_SPID_RUN11"
.LASF834:
	.string	"S_SPID_RUN12"
.LASF1673:
	.string	"rcsid"
.LASF1543:
	.string	"sfx_wpnup"
.LASF1630:
	.string	"slidemo"
.LASF1358:
	.string	"raisestate"
.LASF283:
	.string	"S_MISSILEFLASH1"
.LASF284:
	.string	"S_MISSILEFLASH2"
.LASF285:
	.string	"S_MISSILEFLASH3"
.LASF286:
	.string	"S_MISSILEFLASH4"
.LASF146:
	.string	"SPR_RSKU"
.LASF1563:
	.string	"sfx_skepch"
.LASF1516:
	.string	"sfx_dbcls"
.LASF71:
	.string	"think_t"
.LASF21:
	.string	"forwardmove"
.LASF1645:
	.string	"nofit"
.LASF644:
	.string	"S_CPOS_DIE3"
.LASF645:
	.string	"S_CPOS_DIE4"
.LASF1378:
	.string	"MF_SHADOW"
.LASF646:
	.string	"S_CPOS_DIE5"
.LASF647:
	.string	"S_CPOS_DIE6"
.LASF648:
	.string	"S_CPOS_DIE7"
.LASF1678:
	.string	"dist"
.LASF1089:
	.string	"S_PVIS2"
.LASF1686:
	.string	"slope"
.LASF1227:
	.string	"MT_BARREL"
.LASF821:
	.string	"S_SPID_STND"
.LASF1647:
	.string	"P_CheckSight"
.LASF593:
	.string	"S_FATT_RUN10"
.LASF594:
	.string	"S_FATT_RUN11"
.LASF595:
	.string	"S_FATT_RUN12"
.LASF1499:
	.string	"trace"
.LASF1219:
	.string	"MT_PAIN"
.LASF1147:
	.string	"S_BLUETORCH2"
.LASF1359:
	.string	"mobjinfo_t"
.LASF1148:
	.string	"S_BLUETORCH3"
.LASF1546:
	.string	"sfx_posit1"
.LASF1149:
	.string	"S_BLUETORCH4"
.LASF206:
	.string	"SPR_SMRT"
.LASF1658:
	.string	"P_AproxDistance"
.LASF308:
	.string	"S_BFGFLASH1"
.LASF309:
	.string	"S_BFGFLASH2"
.LASF842:
	.string	"S_SPID_DIE2"
.LASF123:
	.string	"SPR_BOS2"
.LASF845:
	.string	"S_SPID_DIE5"
.LASF846:
	.string	"S_SPID_DIE6"
.LASF1606:
	.string	"sfx_bossit"
.LASF847:
	.string	"S_SPID_DIE7"
.LASF848:
	.string	"S_SPID_DIE8"
.LASF1138:
	.string	"S_EVILEYE2"
.LASF1139:
	.string	"S_EVILEYE3"
.LASF1140:
	.string	"S_EVILEYE4"
.LASF313:
	.string	"S_PUFF1"
.LASF314:
	.string	"S_PUFF2"
.LASF315:
	.string	"S_PUFF3"
.LASF134:
	.string	"SPR_BOSF"
.LASF1465:
	.string	"lines"
.LASF122:
	.string	"SPR_BOSS"
.LASF1231:
	.string	"MT_PLASMA"
.LASF1618:
	.string	"sfx_radio"
.LASF867:
	.string	"S_BSPI_ATK1"
.LASF868:
	.string	"S_BSPI_ATK2"
.LASF869:
	.string	"S_BSPI_ATK3"
.LASF870:
	.string	"S_BSPI_ATK4"
.LASF1049:
	.string	"S_BKEY2"
.LASF44:
	.string	"NUMWEAPONS"
.LASF1682:
	.string	"PTR_UseTraverse"
.LASF854:
	.string	"S_BSPI_SIGHT"
.LASF1535:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF856:
	.string	"S_BSPI_RUN2"
.LASF1000:
	.string	"S_BRAIN_DIE1"
.LASF1001:
	.string	"S_BRAIN_DIE2"
.LASF1002:
	.string	"S_BRAIN_DIE3"
.LASF1003:
	.string	"S_BRAIN_DIE4"
.LASF335:
	.string	"S_BFGSHOT"
.LASF1141:
	.string	"S_FLOATSKULL"
.LASF491:
	.string	"S_VILE_DIE1"
.LASF492:
	.string	"S_VILE_DIE2"
.LASF493:
	.string	"S_VILE_DIE3"
.LASF494:
	.string	"S_VILE_DIE4"
.LASF495:
	.string	"S_VILE_DIE5"
.LASF496:
	.string	"S_VILE_DIE6"
.LASF497:
	.string	"S_VILE_DIE7"
.LASF498:
	.string	"S_VILE_DIE8"
.LASF499:
	.string	"S_VILE_DIE9"
.LASF1441:
	.string	"damagecount"
.LASF1362:
	.string	"MF_SHOOTABLE"
.LASF175:
	.string	"SPR_SMT2"
.LASF1051:
	.string	"S_RKEY2"
.LASF1022:
	.string	"S_ARM1"
.LASF1024:
	.string	"S_ARM2"
.LASF1117:
	.string	"S_HEADCANDLES"
.LASF153:
	.string	"SPR_PINS"
.LASF747:
	.string	"S_BOSS_STND"
.LASF1587:
	.string	"sfx_dmact"
.LASF727:
	.string	"S_HEAD_PAIN"
.LASF29:
	.string	"it_yellowcard"
.LASF1716:
	.string	"oldside"
.LASF1724:
	.string	"PIT_StompThing"
.LASF1711:
	.string	"P_ThingHeightClip"
.LASF1203:
	.string	"MT_TRACER"
.LASF1651:
	.string	"P_SpawnBlood"
.LASF608:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF610:
	.string	"S_FATT_DIE3"
.LASF611:
	.string	"S_FATT_DIE4"
.LASF612:
	.string	"S_FATT_DIE5"
.LASF613:
	.string	"S_FATT_DIE6"
.LASF614:
	.string	"S_FATT_DIE7"
.LASF615:
	.string	"S_FATT_DIE8"
.LASF616:
	.string	"S_FATT_DIE9"
.LASF683:
	.string	"S_TROO_XDIE2"
.LASF684:
	.string	"S_TROO_XDIE3"
.LASF685:
	.string	"S_TROO_XDIE4"
.LASF686:
	.string	"S_TROO_XDIE5"
.LASF687:
	.string	"S_TROO_XDIE6"
.LASF688:
	.string	"S_TROO_XDIE7"
.LASF689:
	.string	"S_TROO_XDIE8"
.LASF158:
	.string	"SPR_CLIP"
.LASF1130:
	.string	"S_SHRTREDCOL"
.LASF1173:
	.string	"S_HANGTSKULL"
.LASF1669:
	.string	"P_BlockThingsIterator"
.LASF1708:
	.string	"deltaangle"
.LASF59:
	.string	"NUMPOWERS"
.LASF958:
	.string	"S_SSWV_ATK3"
.LASF959:
	.string	"S_SSWV_ATK4"
.LASF264:
	.string	"S_DSGUN10"
.LASF1575:
	.string	"sfx_cacdth"
.LASF54:
	.string	"pw_strength"
.LASF192:
	.string	"SPR_CAND"
.LASF1532:
	.string	"sfx_stnmov"
.LASF1209:
	.string	"MT_SERGEANT"
.LASF1695:
	.string	"trailx"
.LASF1527:
	.string	"sfx_firxpl"
.LASF1120:
	.string	"S_LIVESTICK"
.LASF1699:
	.string	"hitcount"
.LASF1060:
	.string	"S_STIM"
.LASF1688:
	.string	"PTR_ShootTraverse"
.LASF49:
	.string	"am_cell"
.LASF28:
	.string	"it_bluecard"
.LASF1396:
	.string	"floorz"
.LASF1662:
	.string	"P_BlockLinesIterator"
.LASF723:
	.string	"S_HEAD_RUN1"
.LASF378:
	.string	"S_PLAY_DIE1"
.LASF379:
	.string	"S_PLAY_DIE2"
.LASF380:
	.string	"S_PLAY_DIE3"
.LASF381:
	.string	"S_PLAY_DIE4"
.LASF382:
	.string	"S_PLAY_DIE5"
.LASF383:
	.string	"S_PLAY_DIE6"
.LASF384:
	.string	"S_PLAY_DIE7"
.LASF394:
	.string	"S_POSS_STND"
.LASF350:
	.string	"S_TFOG"
.LASF1287:
	.string	"MT_MISC40"
.LASF1288:
	.string	"MT_MISC41"
.LASF1413:
	.string	"subsector_s"
.LASF710:
	.string	"S_SARG_DIE1"
.LASF711:
	.string	"S_SARG_DIE2"
.LASF712:
	.string	"S_SARG_DIE3"
.LASF713:
	.string	"S_SARG_DIE4"
.LASF1011:
	.string	"S_SPAWNFIRE1"
.LASF1012:
	.string	"S_SPAWNFIRE2"
.LASF14:
	.string	"BOXLEFT"
.LASF1014:
	.string	"S_SPAWNFIRE4"
.LASF1015:
	.string	"S_SPAWNFIRE5"
.LASF1016:
	.string	"S_SPAWNFIRE6"
.LASF1017:
	.string	"S_SPAWNFIRE7"
.LASF1018:
	.string	"S_SPAWNFIRE8"
.LASF682:
	.string	"S_TROO_XDIE1"
.LASF24:
	.string	"consistancy"
.LASF1414:
	.string	"sector"
.LASF1504:
	.string	"linetarget"
.LASF1175:
	.string	"S_HANGTNOBRAIN"
.LASF330:
	.string	"S_PLASEXP2"
.LASF331:
	.string	"S_PLASEXP3"
.LASF332:
	.string	"S_PLASEXP4"
.LASF333:
	.string	"S_PLASEXP5"
.LASF41:
	.string	"wp_bfg"
.LASF1159:
	.string	"S_BTORCHSHRT2"
.LASF1160:
	.string	"S_BTORCHSHRT3"
.LASF1161:
	.string	"S_BTORCHSHRT4"
.LASF1497:
	.string	"openrange"
.LASF1582:
	.string	"sfx_kntdth"
.LASF463:
	.string	"S_VILE_RUN1"
.LASF253:
	.string	"S_DSGUNDOWN"
.LASF465:
	.string	"S_VILE_RUN3"
.LASF466:
	.string	"S_VILE_RUN4"
.LASF467:
	.string	"S_VILE_RUN5"
.LASF468:
	.string	"S_VILE_RUN6"
.LASF469:
	.string	"S_VILE_RUN7"
.LASF470:
	.string	"S_VILE_RUN8"
.LASF471:
	.string	"S_VILE_RUN9"
.LASF714:
	.string	"S_SARG_DIE5"
.LASF715:
	.string	"S_SARG_DIE6"
.LASF1425:
	.string	"cards"
.LASF1390:
	.string	"thinker"
.LASF1604:
	.string	"sfx_bospit"
.LASF1498:
	.string	"lowfloor"
.LASF555:
	.string	"S_SKEL_FIST1"
.LASF556:
	.string	"S_SKEL_FIST2"
.LASF557:
	.string	"S_SKEL_FIST3"
.LASF558:
	.string	"S_SKEL_FIST4"
.LASF294:
	.string	"S_PLASMA"
.LASF1073:
	.string	"S_PINS"
.LASF1714:
	.string	"oldx"
.LASF1715:
	.string	"oldy"
.LASF1539:
	.string	"sfx_mnpain"
.LASF1146:
	.string	"S_BLUETORCH"
.LASF1672:
	.string	"crunch"
.LASF584:
	.string	"S_FATT_RUN1"
.LASF585:
	.string	"S_FATT_RUN2"
.LASF586:
	.string	"S_FATT_RUN3"
.LASF587:
	.string	"S_FATT_RUN4"
.LASF56:
	.string	"pw_ironfeet"
.LASF589:
	.string	"S_FATT_RUN6"
.LASF590:
	.string	"S_FATT_RUN7"
.LASF591:
	.string	"S_FATT_RUN8"
.LASF1122:
	.string	"S_MEAT2"
.LASF1123:
	.string	"S_MEAT3"
.LASF1124:
	.string	"S_MEAT4"
.LASF1125:
	.string	"S_MEAT5"
.LASF1560:
	.string	"sfx_pesit"
.LASF237:
	.string	"S_PISTOLFLASH"
.LASF1452:
	.string	"floorheight"
.LASF457:
	.string	"S_SPOS_RAISE2"
.LASF458:
	.string	"S_SPOS_RAISE3"
.LASF459:
	.string	"S_SPOS_RAISE4"
.LASF460:
	.string	"S_SPOS_RAISE5"
.LASF149:
	.string	"SPR_MEDI"
.LASF151:
	.string	"SPR_PINV"
.LASF1549:
	.string	"sfx_bgsit1"
.LASF1550:
	.string	"sfx_bgsit2"
.LASF1584:
	.string	"sfx_skedth"
.LASF999:
	.string	"S_BRAIN_PAIN"
.LASF270:
	.string	"S_CHAINDOWN"
.LASF1373:
	.string	"MF_SLIDE"
.LASF489:
	.string	"S_VILE_PAIN"
.LASF536:
	.string	"S_TRACER"
.LASF956:
	.string	"S_SSWV_ATK1"
.LASF957:
	.string	"S_SSWV_ATK2"
.LASF486:
	.string	"S_VILE_HEAL1"
.LASF487:
	.string	"S_VILE_HEAL2"
.LASF488:
	.string	"S_VILE_HEAL3"
.LASF961:
	.string	"S_SSWV_ATK6"
.LASF1406:
	.string	"movecount"
.LASF143:
	.string	"SPR_RKEY"
.LASF1556:
	.string	"sfx_bspsit"
.LASF1107:
	.string	"S_STALAG"
.LASF1537:
	.string	"sfx_popain"
.LASF822:
	.string	"S_SPID_STND2"
.LASF64:
	.string	"angle_t"
.LASF1455:
	.string	"ceilingpic"
.LASF1108:
	.string	"S_BLOODYTWITCH"
.LASF1177:
	.string	"S_SMALLPOOL"
.LASF1483:
	.string	"pspdef_t"
.LASF1303:
	.string	"MT_MISC56"
.LASF606:
	.string	"S_FATT_PAIN"
.LASF370:
	.string	"S_PLAY_RUN1"
.LASF371:
	.string	"S_PLAY_RUN2"
.LASF372:
	.string	"S_PLAY_RUN3"
.LASF373:
	.string	"S_PLAY_RUN4"
.LASF1098:
	.string	"S_BPAK"
.LASF61:
	.string	"double"
.LASF138:
	.string	"SPR_BEXP"
.LASF1417:
	.string	"player_s"
.LASF1055:
	.string	"S_BSKULL2"
.LASF1368:
	.string	"MF_SPAWNCEILING"
.LASF97:
	.string	"SPR_PUFF"
.LASF984:
	.string	"S_COMMKEEN"
.LASF1528:
	.string	"sfx_pstart"
.LASF1434:
	.string	"usedown"
.LASF1490:
	.string	"thing"
.LASF1649:
	.string	"P_RemoveMobj"
.LASF1704:
	.string	"isblocking"
.LASF776:
	.string	"S_BOS2_STND"
.LASF103:
	.string	"SPR_BFS1"
.LASF1007:
	.string	"S_SPAWN1"
.LASF1008:
	.string	"S_SPAWN2"
.LASF1009:
	.string	"S_SPAWN3"
.LASF1010:
	.string	"S_SPAWN4"
.LASF1180:
	.string	"S_TECHLAMP2"
.LASF1181:
	.string	"S_TECHLAMP3"
.LASF42:
	.string	"wp_chainsaw"
.LASF1217:
	.string	"MT_BABY"
.LASF1432:
	.string	"maxammo"
.LASF1601:
	.string	"sfx_flame"
.LASF1121:
	.string	"S_LIVESTICK2"
.LASF1166:
	.string	"S_RTORCHSHRT"
.LASF1263:
	.string	"MT_MISC19"
.LASF125:
	.string	"SPR_SPID"
.LASF722:
	.string	"S_HEAD_STND"
.LASF697:
	.string	"S_SARG_RUN1"
.LASF698:
	.string	"S_SARG_RUN2"
.LASF700:
	.string	"S_SARG_RUN4"
.LASF701:
	.string	"S_SARG_RUN5"
.LASF702:
	.string	"S_SARG_RUN6"
.LASF703:
	.string	"S_SARG_RUN7"
.LASF704:
	.string	"S_SARG_RUN8"
.LASF1241:
	.string	"MT_MISC1"
.LASF1242:
	.string	"MT_MISC2"
.LASF1243:
	.string	"MT_MISC3"
.LASF1244:
	.string	"MT_MISC4"
.LASF1245:
	.string	"MT_MISC5"
.LASF1246:
	.string	"MT_MISC6"
.LASF1247:
	.string	"MT_MISC7"
.LASF1248:
	.string	"MT_MISC8"
.LASF1249:
	.string	"MT_MISC9"
.LASF287:
	.string	"S_SAW"
.LASF154:
	.string	"SPR_MEGA"
.LASF376:
	.string	"S_PLAY_PAIN"
.LASF1565:
	.string	"sfx_claw"
.LASF328:
	.string	"S_PLASBALL2"
.LASF1481:
	.string	"ps_flash"
.LASF1418:
	.string	"playerstate"
.LASF132:
	.string	"SPR_KEEN"
.LASF962:
	.string	"S_SSWV_PAIN"
.LASF1343:
	.string	"painstate"
.LASF997:
	.string	"S_KEENPAIN2"
.LASF58:
	.string	"pw_infrared"
.LASF484:
	.string	"S_VILE_ATK10"
.LASF485:
	.string	"S_VILE_ATK11"
.LASF963:
	.string	"S_SSWV_PAIN2"
.LASF1327:
	.string	"MT_MISC80"
.LASF1350:
	.string	"deathsound"
.LASF1037:
	.string	"S_BON1A"
.LASF1038:
	.string	"S_BON1B"
.LASF1039:
	.string	"S_BON1C"
.LASF1040:
	.string	"S_BON1D"
.LASF1041:
	.string	"S_BON1E"
.LASF1508:
	.string	"leveltime"
.LASF1472:
	.string	"sector_t"
.LASF152:
	.string	"SPR_PSTR"
.LASF1265:
	.string	"MT_MISC21"
.LASF708:
	.string	"S_SARG_PAIN"
.LASF1260:
	.string	"MT_CLIP"
.LASF1641:
	.string	"bombsource"
.LASF167:
	.string	"SPR_BFUG"
.LASF1315:
	.string	"MT_MISC68"
.LASF1033:
	.string	"S_BBAR1"
.LASF1034:
	.string	"S_BBAR2"
.LASF1035:
	.string	"S_BBAR3"
.LASF221:
	.string	"S_LIGHTDONE"
.LASF872:
	.string	"S_BSPI_PAIN2"
.LASF1426:
	.string	"backpack"
.LASF672:
	.string	"S_TROO_ATK1"
.LASF673:
	.string	"S_TROO_ATK2"
.LASF674:
	.string	"S_TROO_ATK3"
.LASF816:
	.string	"S_SKULL_DIE2"
.LASF817:
	.string	"S_SKULL_DIE3"
.LASF818:
	.string	"S_SKULL_DIE4"
.LASF819:
	.string	"S_SKULL_DIE5"
.LASF820:
	.string	"S_SKULL_DIE6"
.LASF171:
	.string	"SPR_PLAS"
.LASF1679:
	.string	"PIT_RadiusAttack"
.LASF1043:
	.string	"S_BON2A"
.LASF1044:
	.string	"S_BON2B"
.LASF84:
	.string	"SPR_PISF"
.LASF83:
	.string	"SPR_PISG"
.LASF1047:
	.string	"S_BON2E"
.LASF1270:
	.string	"MT_CHAINGUN"
.LASF319:
	.string	"S_TBALLX1"
.LASF320:
	.string	"S_TBALLX2"
.LASF321:
	.string	"S_TBALLX3"
.LASF45:
	.string	"wp_nochange"
.LASF1721:
	.string	"solid"
.LASF1207:
	.string	"MT_CHAINGUY"
.LASF1635:
	.string	"la_damage"
.LASF1451:
	.string	"degenmobj_t"
.LASF1547:
	.string	"sfx_posit2"
.LASF1548:
	.string	"sfx_posit3"
.LASF815:
	.string	"S_SKULL_DIE1"
.LASF1485:
	.string	"PST_DEAD"
.LASF1178:
	.string	"S_BRAINSTEM"
.LASF983:
	.string	"S_KEENSTND"
.LASF108:
	.string	"SPR_PLAY"
.LASF1372:
	.string	"MF_NOCLIP"
.LASF1428:
	.string	"readyweapon"
.LASF1552:
	.string	"sfx_cacsit"
.LASF1561:
	.string	"sfx_sklatk"
.LASF1701:
	.string	"retry"
.LASF1676:
	.string	"spot"
.LASF1709:
	.string	"movelen"
.LASF11:
	.string	"long long unsigned int"
.LASF1118:
	.string	"S_HEADCANDLES2"
.LASF1237:
	.string	"MT_IFOG"
.LASF199:
	.string	"SPR_FSKU"
.LASF1607:
	.string	"sfx_bospn"
.LASF434:
	.string	"S_SPOS_RUN6"
.LASF290:
	.string	"S_SAWUP"
.LASF1023:
	.string	"S_ARM1A"
.LASF626:
	.string	"S_CPOS_STND"
.LASF1278:
	.string	"MT_MISC31"
.LASF1400:
	.string	"momz"
.LASF1097:
	.string	"S_SBOX"
.LASF1458:
	.string	"soundtraversed"
.LASF1281:
	.string	"MT_MISC34"
.LASF1479:
	.string	"subsector_t"
.LASF1468:
	.string	"bbox"
.LASF329:
	.string	"S_PLASEXP"
.LASF1574:
	.string	"sfx_sgtdth"
.LASF1284:
	.string	"MT_MISC37"
.LASF1541:
	.string	"sfx_slop"
.LASF1113:
	.string	"S_DEADBOTTOM"
.LASF1598:
	.string	"sfx_bdopn"
.LASF1170:
	.string	"S_HANGNOGUTS"
.LASF1342:
	.string	"attacksound"
.LASF1074:
	.string	"S_PINS2"
.LASF1075:
	.string	"S_PINS3"
.LASF1076:
	.string	"S_PINS4"
.LASF928:
	.string	"S_PAIN_ATK1"
.LASF929:
	.string	"S_PAIN_ATK2"
.LASF930:
	.string	"S_PAIN_ATK3"
.LASF931:
	.string	"S_PAIN_ATK4"
.LASF240:
	.string	"S_SGUNUP"
.LASF1370:
	.string	"MF_DROPOFF"
.LASF1470:
	.string	"frontsector"
.LASF193:
	.string	"SPR_CBRA"
.LASF1348:
	.string	"deathstate"
.LASF1025:
	.string	"S_ARM2A"
.LASF894:
	.string	"S_CYBER_STND"
.LASF1053:
	.string	"S_YKEY2"
.LASF503:
	.string	"S_FIRE3"
.LASF1553:
	.string	"sfx_brssit"
.LASF1341:
	.string	"reactiontime"
.LASF508:
	.string	"S_FIRE8"
.LASF748:
	.string	"S_BOSS_STND2"
.LASF1591:
	.string	"sfx_noway"
.LASF1706:
	.string	"lineangle"
.LASF1503:
	.string	"ceilingline"
.LASF643:
	.string	"S_CPOS_DIE2"
.LASF1392:
	.string	"sprev"
.LASF291:
	.string	"S_SAW1"
.LASF292:
	.string	"S_SAW2"
.LASF293:
	.string	"S_SAW3"
.LASF1036:
	.string	"S_BON1"
.LASF1042:
	.string	"S_BON2"
.LASF1409:
	.string	"player"
.LASF288:
	.string	"S_SAWB"
.LASF676:
	.string	"S_TROO_PAIN2"
.LASF1223:
	.string	"MT_BOSSSPIT"
.LASF501:
	.string	"S_FIRE1"
.LASF502:
	.string	"S_FIRE2"
.LASF18:
	.string	"fixed_t"
.LASF504:
	.string	"S_FIRE4"
.LASF505:
	.string	"S_FIRE5"
.LASF506:
	.string	"S_FIRE6"
.LASF507:
	.string	"S_FIRE7"
.LASF161:
	.string	"SPR_BROK"
.LASF509:
	.string	"S_FIRE9"
.LASF1291:
	.string	"MT_MISC44"
.LASF1292:
	.string	"MT_MISC45"
.LASF1094:
	.string	"S_CELL"
.LASF1294:
	.string	"MT_MISC47"
.LASF159:
	.string	"SPR_AMMO"
.LASF1295:
	.string	"MT_MISC48"
.LASF1296:
	.string	"MT_MISC49"
.LASF807:
	.string	"S_SKULL_RUN1"
.LASF808:
	.string	"S_SKULL_RUN2"
.LASF1174:
	.string	"S_HANGTLOOKUP"
.LASF1363:
	.string	"MF_NOSECTOR"
.LASF269:
	.string	"S_CHAIN"
.LASF299:
	.string	"S_PLASMAFLASH1"
.LASF255:
	.string	"S_DSGUN1"
.LASF256:
	.string	"S_DSGUN2"
.LASF150:
	.string	"SPR_SOUL"
.LASF110:
	.string	"SPR_SPOS"
.LASF259:
	.string	"S_DSGUN5"
.LASF260:
	.string	"S_DSGUN6"
.LASF261:
	.string	"S_DSGUN7"
.LASF262:
	.string	"S_DSGUN8"
.LASF263:
	.string	"S_DSGUN9"
.LASF427:
	.string	"S_SPOS_STND"
.LASF130:
	.string	"SPR_PAIN"
.LASF655:
	.string	"S_CPOS_RAISE1"
.LASF1427:
	.string	"frags"
.LASF1581:
	.string	"sfx_vildth"
.LASF1422:
	.string	"armorpoints"
.LASF26:
	.string	"buttons"
.LASF304:
	.string	"S_BFG1"
.LASF305:
	.string	"S_BFG2"
.LASF306:
	.string	"S_BFG3"
.LASF307:
	.string	"S_BFG4"
.LASF219:
	.string	"spritenum_t"
.LASF266:
	.string	"S_DSNR2"
.LASF806:
	.string	"S_SKULL_STND2"
.LASF1069:
	.string	"S_PINV2"
.LASF1070:
	.string	"S_PINV3"
.LASF699:
	.string	"S_SARG_RUN3"
.LASF1494:
	.string	"intercept_t"
.LASF1184:
	.string	"S_TECH2LAMP2"
.LASF1185:
	.string	"S_TECH2LAMP3"
.LASF1186:
	.string	"S_TECH2LAMP4"
.LASF63:
	.string	"finecosine"
.LASF1466:
	.string	"line_s"
.LASF5:
	.string	"long long int"
.LASF82:
	.string	"SPR_PUNG"
.LASF650:
	.string	"S_CPOS_XDIE2"
.LASF651:
	.string	"S_CPOS_XDIE3"
.LASF652:
	.string	"S_CPOS_XDIE4"
.LASF653:
	.string	"S_CPOS_XDIE5"
.LASF654:
	.string	"S_CPOS_XDIE6"
.LASF835:
	.string	"S_SPID_ATK1"
.LASF836:
	.string	"S_SPID_ATK2"
.LASF837:
	.string	"S_SPID_ATK3"
.LASF838:
	.string	"S_SPID_ATK4"
.LASF559:
	.string	"S_SKEL_MISS1"
.LASF560:
	.string	"S_SKEL_MISS2"
.LASF561:
	.string	"S_SKEL_MISS3"
.LASF562:
	.string	"S_SKEL_MISS4"
.LASF316:
	.string	"S_PUFF4"
.LASF1056:
	.string	"S_RSKULL"
.LASF888:
	.string	"S_ARACH_PLAZ2"
.LASF1297:
	.string	"MT_MISC50"
.LASF736:
	.string	"S_HEAD_RAISE1"
.LASF1332:
	.string	"MT_MISC85"
.LASF737:
	.string	"S_HEAD_RAISE2"
.LASF738:
	.string	"S_HEAD_RAISE3"
.LASF1435:
	.string	"cheats"
.LASF145:
	.string	"SPR_BSKU"
.LASF740:
	.string	"S_HEAD_RAISE5"
.LASF741:
	.string	"S_HEAD_RAISE6"
.LASF1505:
	.string	"bmaporgx"
.LASF1275:
	.string	"MT_SUPERSHOTGUN"
.LASF156:
	.string	"SPR_PMAP"
.LASF1004:
	.string	"S_BRAINEYE"
.LASF1501:
	.string	"tmfloorz"
.LASF157:
	.string	"SPR_PVIS"
.LASF1484:
	.string	"PST_LIVE"
.LASF1707:
	.string	"moveangle"
.LASF1659:
	.string	"R_PointToAngle2"
.LASF1233:
	.string	"MT_ARACHPLAZ"
.LASF1379:
	.string	"MF_NOBLOOD"
.LASF482:
	.string	"S_VILE_ATK8"
.LASF423:
	.string	"S_POSS_RAISE1"
.LASF424:
	.string	"S_POSS_RAISE2"
.LASF425:
	.string	"S_POSS_RAISE3"
.LASF426:
	.string	"S_POSS_RAISE4"
.LASF278:
	.string	"S_MISSILEDOWN"
.LASF1627:
	.string	"secondslidefrac"
.LASF1592:
	.string	"sfx_barexp"
.LASF1142:
	.string	"S_FLOATSKULL2"
.LASF1143:
	.string	"S_FLOATSKULL3"
.LASF1515:
	.string	"sfx_dbopn"
.LASF1519:
	.string	"sfx_bfg"
.LASF1712:
	.string	"onfloor"
.LASF1077:
	.string	"S_MEGA"
.LASF757:
	.string	"S_BOSS_ATK1"
.LASF758:
	.string	"S_BOSS_ATK2"
.LASF759:
	.string	"S_BOSS_ATK3"
.LASF1395:
	.string	"subsector"
.LASF215:
	.string	"SPR_BRS1"
.LASF1450:
	.string	"vertex_t"
.LASF564:
	.string	"S_SKEL_PAIN2"
.LASF1101:
	.string	"S_CSAW"
.LASF53:
	.string	"pw_invulnerability"
.LASF744:
	.string	"S_BRBALLX1"
.LASF745:
	.string	"S_BRBALLX2"
.LASF746:
	.string	"S_BRBALLX3"
.LASF874:
	.string	"S_BSPI_DIE2"
.LASF875:
	.string	"S_BSPI_DIE3"
.LASF876:
	.string	"S_BSPI_DIE4"
.LASF877:
	.string	"S_BSPI_DIE5"
.LASF38:
	.string	"wp_chaingun"
.LASF879:
	.string	"S_BSPI_DIE7"
.LASF430:
	.string	"S_SPOS_RUN2"
.LASF1471:
	.string	"backsector"
.LASF431:
	.string	"S_SPOS_RUN3"
.LASF933:
	.string	"S_PAIN_PAIN2"
.LASF568:
	.string	"S_SKEL_DIE4"
.LASF1511:
	.string	"sfx_pistol"
.LASF164:
	.string	"SPR_SHEL"
.LASF1316:
	.string	"MT_MISC69"
.LASF1423:
	.string	"armortype"
.LASF16:
	.string	"false"
.LASF216:
	.string	"SPR_TLMP"
.LASF1375:
	.string	"MF_TELEPORT"
.LASF1689:
	.string	"thingtopslope"
.LASF395:
	.string	"S_POSS_STND2"
.LASF1274:
	.string	"MT_SHOTGUN"
.LASF1626:
	.string	"bestslidefrac"
.LASF1199:
	.string	"MT_SHOTGUY"
.LASF1438:
	.string	"itemcount"
.LASF1179:
	.string	"S_TECHLAMP"
.LASF1220:
	.string	"MT_WOLFSS"
.LASF1648:
	.string	"P_UseSpecialLine"
.LASF1661:
	.string	"P_PointOnLineSide"
.LASF777:
	.string	"S_BOS2_STND2"
.LASF1459:
	.string	"soundtarget"
.LASF272:
	.string	"S_CHAIN1"
.LASF273:
	.string	"S_CHAIN2"
.LASF274:
	.string	"S_CHAIN3"
.LASF325:
	.string	"S_RBALLX2"
.LASF326:
	.string	"S_RBALLX3"
.LASF201:
	.string	"SPR_TBLU"
.LASF428:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1512:
	.string	"sfx_shotgn"
.LASF1391:
	.string	"snext"
.LASF1654:
	.string	"FixedDiv"
.LASF52:
	.string	"am_noammo"
.LASF1388:
	.string	"thinker_s"
.LASF75:
	.string	"thinker_t"
.LASF1013:
	.string	"S_SPAWNFIRE3"
.LASF1631:
	.string	"tmxmove"
.LASF1572:
	.string	"sfx_bgdth1"
.LASF1573:
	.string	"sfx_bgdth2"
.LASF1644:
	.string	"crushchange"
.LASF404:
	.string	"S_POSS_ATK1"
.LASF405:
	.string	"S_POSS_ATK2"
.LASF406:
	.string	"S_POSS_ATK3"
.LASF1683:
	.string	"side"
.LASF1318:
	.string	"MT_MISC71"
.LASF1718:
	.string	"newsubsec"
.LASF1167:
	.string	"S_RTORCHSHRT2"
.LASF1168:
	.string	"S_RTORCHSHRT3"
.LASF1169:
	.string	"S_RTORCHSHRT4"
.LASF1071:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF855:
	.string	"S_BSPI_RUN1"
.LASF1324:
	.string	"MT_MISC77"
.LASF1325:
	.string	"MT_MISC78"
.LASF1326:
	.string	"MT_MISC79"
.LASF1215:
	.string	"MT_SKULL"
.LASF1202:
	.string	"MT_UNDEAD"
.LASF72:
	.string	"prev"
.LASF565:
	.string	"S_SKEL_DIE1"
.LASF566:
	.string	"S_SKEL_DIE2"
.LASF567:
	.string	"S_SKEL_DIE3"
.LASF112:
	.string	"SPR_FIRE"
.LASF569:
	.string	"S_SKEL_DIE5"
.LASF570:
	.string	"S_SKEL_DIE6"
.LASF1176:
	.string	"S_COLONGIBS"
.LASF1620:
	.string	"tmbbox"
.LASF217:
	.string	"SPR_TLP2"
.LASF327:
	.string	"S_PLASBALL"
.LASF1568:
	.string	"sfx_pdiehi"
.LASF173:
	.string	"SPR_SGN2"
.LASF78:
	.string	"options"
.LASF126:
	.string	"SPR_BSPI"
.LASF128:
	.string	"SPR_APBX"
.LASF1446:
	.string	"colormap"
.LASF1250:
	.string	"MT_MISC10"
.LASF1251:
	.string	"MT_MISC11"
.LASF1252:
	.string	"MT_MISC12"
.LASF1254:
	.string	"MT_MISC13"
.LASF1256:
	.string	"MT_MISC14"
.LASF1257:
	.string	"MT_MISC15"
.LASF1258:
	.string	"MT_MISC16"
.LASF1261:
	.string	"MT_MISC17"
.LASF1262:
	.string	"MT_MISC18"
.LASF1090:
	.string	"S_CLIP"
.LASF1352:
	.string	"radius"
.LASF1404:
	.string	"health"
.LASF1697:
	.string	"newx"
.LASF1224:
	.string	"MT_BOSSTARGET"
.LASF1557:
	.string	"sfx_kntsit"
.LASF1383:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_map.c"
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
