	.file	"p_enemy.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_enemy.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: p_enemy.c,v 1.5 1997/02/03 22:45:11 b1 Exp $"
	.globl	opposite
	.data
	.align 32
	.type	opposite, @object
	.size	opposite, 36
opposite:
	.long	4
	.long	5
	.long	6
	.long	7
	.long	0
	.long	1
	.long	2
	.long	3
	.long	8
	.globl	diags
	.align 16
	.type	diags, @object
	.size	diags, 16
diags:
	.long	3
	.long	1
	.long	5
	.long	7
	.globl	soundtarget
	.bss
	.align 8
	.type	soundtarget, @object
	.size	soundtarget, 8
soundtarget:
	.zero	8
	.text
	.globl	P_RecursiveSound
	.type	P_RecursiveSound, @function
P_RecursiveSound:
.LFB6:
	.file 1 "p_enemy.c"
	.loc 1 109 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# sec, sec
	movl	%esi, -44(%rbp)	# soundblocks, soundblocks
# p_enemy.c:115:     if (sec->validcount == validcount
	.loc 1 115 12
	movq	-40(%rbp), %rax	# sec, tmp117
	movl	88(%rax), %edx	# sec_42(D)->validcount, _1
# p_enemy.c:115:     if (sec->validcount == validcount
	.loc 1 115 25
	movl	validcount(%rip), %eax	# validcount, validcount.0_2
# p_enemy.c:115:     if (sec->validcount == validcount
	.loc 1 115 8
	cmpl	%eax, %edx	# validcount.0_2, _1
	jne	.L2	#,
# p_enemy.c:116: 	&& sec->soundtraversed <= soundblocks+1)
	.loc 1 116 8
	movq	-40(%rbp), %rax	# sec, tmp118
	movl	20(%rax), %edx	# sec_42(D)->soundtraversed, _3
# p_enemy.c:116: 	&& sec->soundtraversed <= soundblocks+1)
	.loc 1 116 39
	movl	-44(%rbp), %eax	# soundblocks, tmp119
	addl	$1, %eax	#, _4
# p_enemy.c:116: 	&& sec->soundtraversed <= soundblocks+1)
	.loc 1 116 2
	cmpl	%eax, %edx	# _4, _3
	jle	.L12	#,
.L2:
# p_enemy.c:121:     sec->validcount = validcount;
	.loc 1 121 21
	movl	validcount(%rip), %edx	# validcount, validcount.1_5
	movq	-40(%rbp), %rax	# sec, tmp120
	movl	%edx, 88(%rax)	# validcount.1_5, sec_42(D)->validcount
# p_enemy.c:122:     sec->soundtraversed = soundblocks+1;
	.loc 1 122 38
	movl	-44(%rbp), %eax	# soundblocks, tmp121
	leal	1(%rax), %edx	#, _6
# p_enemy.c:122:     sec->soundtraversed = soundblocks+1;
	.loc 1 122 25
	movq	-40(%rbp), %rax	# sec, tmp122
	movl	%edx, 20(%rax)	# _6, sec_42(D)->soundtraversed
# p_enemy.c:123:     sec->soundtarget = soundtarget;
	.loc 1 123 22
	movq	soundtarget(%rip), %rdx	# soundtarget, soundtarget.2_7
	movq	-40(%rbp), %rax	# sec, tmp123
	movq	%rdx, 24(%rax)	# soundtarget.2_7, sec_42(D)->soundtarget
# p_enemy.c:125:     for (i=0 ;i<sec->linecount ; i++)
	.loc 1 125 11
	movl	$0, -20(%rbp)	#, i
# p_enemy.c:125:     for (i=0 ;i<sec->linecount ; i++)
	.loc 1 125 5
	jmp	.L4	#
.L11:
# p_enemy.c:127: 	check = sec->lines[i];
	.loc 1 127 13
	movq	-40(%rbp), %rax	# sec, tmp124
	movq	120(%rax), %rax	# sec_42(D)->lines, _8
# p_enemy.c:127: 	check = sec->lines[i];
	.loc 1 127 20
	movl	-20(%rbp), %edx	# i, tmp125
	movslq	%edx, %rdx	# tmp125, _9
	salq	$3, %rdx	#, _10
	addq	%rdx, %rax	# _10, _11
# p_enemy.c:127: 	check = sec->lines[i];
	.loc 1 127 8
	movq	(%rax), %rax	# *_11, tmp126
	movq	%rax, -8(%rbp)	# tmp126, check
# p_enemy.c:128: 	if (! (check->flags & ML_TWOSIDED) )
	.loc 1 128 14
	movq	-8(%rbp), %rax	# check, tmp127
	movzwl	24(%rax), %eax	# check_48->flags, _12
# p_enemy.c:128: 	if (! (check->flags & ML_TWOSIDED) )
	.loc 1 128 22
	cwtl
	andl	$4, %eax	#, _14
# p_enemy.c:128: 	if (! (check->flags & ML_TWOSIDED) )
	.loc 1 128 5
	testl	%eax, %eax	# _14
	je	.L13	#,
# p_enemy.c:131: 	P_LineOpening (check);
	.loc 1 131 2
	movq	-8(%rbp), %rax	# check, tmp128
	movq	%rax, %rdi	# tmp128,
	call	P_LineOpening@PLT	#
# p_enemy.c:133: 	if (openrange <= 0)
	.loc 1 133 16
	movl	openrange(%rip), %eax	# openrange, openrange.3_15
# p_enemy.c:133: 	if (openrange <= 0)
	.loc 1 133 5
	testl	%eax, %eax	# openrange.3_15
	jle	.L14	#,
# p_enemy.c:136: 	if ( sides[ check->sidenum[0] ].sector == sec)
	.loc 1 136 12
	movq	sides(%rip), %rcx	# sides, sides.4_16
# p_enemy.c:136: 	if ( sides[ check->sidenum[0] ].sector == sec)
	.loc 1 136 28
	movq	-8(%rbp), %rax	# check, tmp129
	movzwl	30(%rax), %eax	# check_48->sidenum[0], _17
	movswq	%ax, %rdx	# _17, _18
# p_enemy.c:136: 	if ( sides[ check->sidenum[0] ].sector == sec)
	.loc 1 136 12
	movq	%rdx, %rax	# _18, tmp130
	addq	%rax, %rax	# tmp130
	addq	%rdx, %rax	# _18, tmp130
	salq	$3, %rax	#, tmp131
	addq	%rcx, %rax	# sides.4_16, _20
# p_enemy.c:136: 	if ( sides[ check->sidenum[0] ].sector == sec)
	.loc 1 136 33
	movq	16(%rax), %rax	# _20->sector, _21
# p_enemy.c:136: 	if ( sides[ check->sidenum[0] ].sector == sec)
	.loc 1 136 5
	cmpq	%rax, -40(%rbp)	# _21, sec
	jne	.L8	#,
# p_enemy.c:137: 	    other = sides[ check->sidenum[1] ] .sector;
	.loc 1 137 19
	movq	sides(%rip), %rcx	# sides, sides.5_22
# p_enemy.c:137: 	    other = sides[ check->sidenum[1] ] .sector;
	.loc 1 137 35
	movq	-8(%rbp), %rax	# check, tmp132
	movzwl	32(%rax), %eax	# check_48->sidenum[1], _23
	movswq	%ax, %rdx	# _23, _24
# p_enemy.c:137: 	    other = sides[ check->sidenum[1] ] .sector;
	.loc 1 137 19
	movq	%rdx, %rax	# _24, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# _24, tmp133
	salq	$3, %rax	#, tmp134
	addq	%rcx, %rax	# sides.5_22, _26
# p_enemy.c:137: 	    other = sides[ check->sidenum[1] ] .sector;
	.loc 1 137 12
	movq	16(%rax), %rax	# _26->sector, tmp135
	movq	%rax, -16(%rbp)	# tmp135, other
	jmp	.L9	#
.L8:
# p_enemy.c:139: 	    other = sides[ check->sidenum[0] ].sector;
	.loc 1 139 19
	movq	sides(%rip), %rcx	# sides, sides.6_27
# p_enemy.c:139: 	    other = sides[ check->sidenum[0] ].sector;
	.loc 1 139 35
	movq	-8(%rbp), %rax	# check, tmp136
	movzwl	30(%rax), %eax	# check_48->sidenum[0], _28
	movswq	%ax, %rdx	# _28, _29
# p_enemy.c:139: 	    other = sides[ check->sidenum[0] ].sector;
	.loc 1 139 19
	movq	%rdx, %rax	# _29, tmp137
	addq	%rax, %rax	# tmp137
	addq	%rdx, %rax	# _29, tmp137
	salq	$3, %rax	#, tmp138
	addq	%rcx, %rax	# sides.6_27, _31
# p_enemy.c:139: 	    other = sides[ check->sidenum[0] ].sector;
	.loc 1 139 12
	movq	16(%rax), %rax	# _31->sector, tmp139
	movq	%rax, -16(%rbp)	# tmp139, other
.L9:
# p_enemy.c:141: 	if (check->flags & ML_SOUNDBLOCK)
	.loc 1 141 11
	movq	-8(%rbp), %rax	# check, tmp140
	movzwl	24(%rax), %eax	# check_48->flags, _32
# p_enemy.c:141: 	if (check->flags & ML_SOUNDBLOCK)
	.loc 1 141 19
	cwtl
	andl	$64, %eax	#, _34
# p_enemy.c:141: 	if (check->flags & ML_SOUNDBLOCK)
	.loc 1 141 5
	testl	%eax, %eax	# _34
	je	.L10	#,
# p_enemy.c:143: 	    if (!soundblocks)
	.loc 1 143 9
	cmpl	$0, -44(%rbp)	#, soundblocks
	jne	.L6	#,
# p_enemy.c:144: 		P_RecursiveSound (other, 1);
	.loc 1 144 3
	movq	-16(%rbp), %rax	# other, tmp141
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	P_RecursiveSound	#
	jmp	.L6	#
.L10:
# p_enemy.c:147: 	    P_RecursiveSound (other, soundblocks);
	.loc 1 147 6
	movl	-44(%rbp), %edx	# soundblocks, tmp142
	movq	-16(%rbp), %rax	# other, tmp143
	movl	%edx, %esi	# tmp142,
	movq	%rax, %rdi	# tmp143,
	call	P_RecursiveSound	#
	jmp	.L6	#
.L13:
# p_enemy.c:129: 	    continue;
	.loc 1 129 6
	nop	
	jmp	.L6	#
.L14:
# p_enemy.c:134: 	    continue;	// closed door
	.loc 1 134 6
	nop	
.L6:
# p_enemy.c:125:     for (i=0 ;i<sec->linecount ; i++)
	.loc 1 125 35 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L4:
# p_enemy.c:125:     for (i=0 ;i<sec->linecount ; i++)
	.loc 1 125 20 discriminator 1
	movq	-40(%rbp), %rax	# sec, tmp144
	movl	112(%rax), %eax	# sec_42(D)->linecount, _35
# p_enemy.c:125:     for (i=0 ;i<sec->linecount ; i++)
	.loc 1 125 16 discriminator 1
	cmpl	%eax, -20(%rbp)	# _35, i
	jl	.L11	#,
	jmp	.L1	#
.L12:
# p_enemy.c:118: 	return;		// already flooded
	.loc 1 118 2
	nop	
.L1:
# p_enemy.c:149: }
	.loc 1 149 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	P_RecursiveSound, .-P_RecursiveSound
	.globl	P_NoiseAlert
	.type	P_NoiseAlert, @function
P_NoiseAlert:
.LFB7:
	.loc 1 162 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# target, target
	movq	%rsi, -16(%rbp)	# emmiter, emmiter
# p_enemy.c:163:     soundtarget = target;
	.loc 1 163 17
	movq	-8(%rbp), %rax	# target, tmp86
	movq	%rax, soundtarget(%rip)	# tmp86, soundtarget
# p_enemy.c:164:     validcount++;
	.loc 1 164 15
	movl	validcount(%rip), %eax	# validcount, validcount.7_1
	addl	$1, %eax	#, _2
	movl	%eax, validcount(%rip)	# _2, validcount
# p_enemy.c:165:     P_RecursiveSound (emmiter->subsector->sector, 0);
	.loc 1 165 30
	movq	-16(%rbp), %rax	# emmiter, tmp87
	movq	88(%rax), %rax	# emmiter_9(D)->subsector, _3
# p_enemy.c:165:     P_RecursiveSound (emmiter->subsector->sector, 0);
	.loc 1 165 5
	movq	(%rax), %rax	# _3->sector, _4
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _4,
	call	P_RecursiveSound	#
# p_enemy.c:166: }
	.loc 1 166 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	P_NoiseAlert, .-P_NoiseAlert
	.globl	P_CheckMeleeRange
	.type	P_CheckMeleeRange, @function
P_CheckMeleeRange:
.LFB8:
	.loc 1 175 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:179:     if (!actor->target)
	.loc 1 179 15
	movq	-24(%rbp), %rax	# actor, tmp96
	movq	176(%rax), %rax	# actor_16(D)->target, _1
# p_enemy.c:179:     if (!actor->target)
	.loc 1 179 8
	testq	%rax, %rax	# _1
	jne	.L17	#,
# p_enemy.c:180: 	return false;
	.loc 1 180 9
	movl	$0, %eax	#, _13
	jmp	.L18	#
.L17:
# p_enemy.c:182:     pl = actor->target;
	.loc 1 182 8
	movq	-24(%rbp), %rax	# actor, tmp97
	movq	176(%rax), %rax	# actor_16(D)->target, tmp98
	movq	%rax, -8(%rbp)	# tmp98, pl
# p_enemy.c:183:     dist = P_AproxDistance (pl->x-actor->x, pl->y-actor->y);
	.loc 1 183 47
	movq	-8(%rbp), %rax	# pl, tmp99
	movl	28(%rax), %edx	# pl_17->y, _2
# p_enemy.c:183:     dist = P_AproxDistance (pl->x-actor->x, pl->y-actor->y);
	.loc 1 183 56
	movq	-24(%rbp), %rax	# actor, tmp100
	movl	28(%rax), %eax	# actor_16(D)->y, _3
# p_enemy.c:183:     dist = P_AproxDistance (pl->x-actor->x, pl->y-actor->y);
	.loc 1 183 12
	subl	%eax, %edx	# _3, _4
# p_enemy.c:183:     dist = P_AproxDistance (pl->x-actor->x, pl->y-actor->y);
	.loc 1 183 31
	movq	-8(%rbp), %rax	# pl, tmp101
	movl	24(%rax), %esi	# pl_17->x, _5
# p_enemy.c:183:     dist = P_AproxDistance (pl->x-actor->x, pl->y-actor->y);
	.loc 1 183 40
	movq	-24(%rbp), %rax	# actor, tmp102
	movl	24(%rax), %ecx	# actor_16(D)->x, _6
# p_enemy.c:183:     dist = P_AproxDistance (pl->x-actor->x, pl->y-actor->y);
	.loc 1 183 12
	movl	%esi, %eax	# _5, _5
	subl	%ecx, %eax	# _6, _5
	movl	%edx, %esi	# _4,
	movl	%eax, %edi	# _7,
	call	P_AproxDistance@PLT	#
	movl	%eax, -12(%rbp)	# tmp103, dist
# p_enemy.c:185:     if (dist >= MELEERANGE-20*FRACUNIT+pl->info->radius)
	.loc 1 185 42
	movq	-8(%rbp), %rax	# pl, tmp104
	movq	136(%rax), %rax	# pl_17->info, _8
# p_enemy.c:185:     if (dist >= MELEERANGE-20*FRACUNIT+pl->info->radius)
	.loc 1 185 48
	movl	64(%rax), %eax	# _8->radius, _9
# p_enemy.c:185:     if (dist >= MELEERANGE-20*FRACUNIT+pl->info->radius)
	.loc 1 185 14
	addl	$2883583, %eax	#, _10
# p_enemy.c:185:     if (dist >= MELEERANGE-20*FRACUNIT+pl->info->radius)
	.loc 1 185 8
	cmpl	%eax, -12(%rbp)	# _10, dist
	jle	.L19	#,
# p_enemy.c:186: 	return false;
	.loc 1 186 9
	movl	$0, %eax	#, _13
	jmp	.L18	#
.L19:
# p_enemy.c:188:     if (! P_CheckSight (actor, actor->target) )
	.loc 1 188 37
	movq	-24(%rbp), %rax	# actor, tmp105
	movq	176(%rax), %rdx	# actor_16(D)->target, _11
# p_enemy.c:188:     if (! P_CheckSight (actor, actor->target) )
	.loc 1 188 11
	movq	-24(%rbp), %rax	# actor, tmp106
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp106,
	call	P_CheckSight@PLT	#
# p_enemy.c:188:     if (! P_CheckSight (actor, actor->target) )
	.loc 1 188 8 discriminator 1
	testl	%eax, %eax	# _12
	jne	.L20	#,
# p_enemy.c:189: 	return false;
	.loc 1 189 9
	movl	$0, %eax	#, _13
	jmp	.L18	#
.L20:
# p_enemy.c:191:     return true;		
	.loc 1 191 12
	movl	$1, %eax	#, _13
.L18:
# p_enemy.c:192: }
	.loc 1 192 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	P_CheckMeleeRange, .-P_CheckMeleeRange
	.globl	P_CheckMissileRange
	.type	P_CheckMissileRange, @function
P_CheckMissileRange:
.LFB9:
	.loc 1 198 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:201:     if (! P_CheckSight (actor, actor->target) )
	.loc 1 201 37
	movq	-24(%rbp), %rax	# actor, tmp109
	movq	176(%rax), %rdx	# actor_34(D)->target, _1
# p_enemy.c:201:     if (! P_CheckSight (actor, actor->target) )
	.loc 1 201 11
	movq	-24(%rbp), %rax	# actor, tmp110
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp110,
	call	P_CheckSight@PLT	#
# p_enemy.c:201:     if (! P_CheckSight (actor, actor->target) )
	.loc 1 201 8 discriminator 1
	testl	%eax, %eax	# _2
	jne	.L22	#,
# p_enemy.c:202: 	return false;
	.loc 1 202 9
	movl	$0, %eax	#, _31
	jmp	.L23	#
.L22:
# p_enemy.c:204:     if ( actor->flags & MF_JUSTHIT )
	.loc 1 204 15
	movq	-24(%rbp), %rax	# actor, tmp111
	movl	160(%rax), %eax	# actor_34(D)->flags, _3
# p_enemy.c:204:     if ( actor->flags & MF_JUSTHIT )
	.loc 1 204 23
	andl	$64, %eax	#, _4
# p_enemy.c:204:     if ( actor->flags & MF_JUSTHIT )
	.loc 1 204 8
	testl	%eax, %eax	# _4
	je	.L24	#,
# p_enemy.c:208: 	actor->flags &= ~MF_JUSTHIT;
	.loc 1 208 7
	movq	-24(%rbp), %rax	# actor, tmp112
	movl	160(%rax), %eax	# actor_34(D)->flags, _5
# p_enemy.c:208: 	actor->flags &= ~MF_JUSTHIT;
	.loc 1 208 15
	andl	$-65, %eax	#, _5
	movl	%eax, %edx	# _5, _6
	movq	-24(%rbp), %rax	# actor, tmp113
	movl	%edx, 160(%rax)	# _6, actor_34(D)->flags
# p_enemy.c:209: 	return true;
	.loc 1 209 9
	movl	$1, %eax	#, _31
	jmp	.L23	#
.L24:
# p_enemy.c:212:     if (actor->reactiontime)
	.loc 1 212 14
	movq	-24(%rbp), %rax	# actor, tmp114
	movl	184(%rax), %eax	# actor_34(D)->reactiontime, _7
# p_enemy.c:212:     if (actor->reactiontime)
	.loc 1 212 8
	testl	%eax, %eax	# _7
	je	.L25	#,
# p_enemy.c:213: 	return false;	// do not attack yet
	.loc 1 213 9
	movl	$0, %eax	#, _31
	jmp	.L23	#
.L25:
# p_enemy.c:217: 			     actor->y-actor->target->y) - 64*FRACUNIT;
	.loc 1 217 14
	movq	-24(%rbp), %rax	# actor, tmp115
	movl	28(%rax), %edx	# actor_34(D)->y, _8
# p_enemy.c:217: 			     actor->y-actor->target->y) - 64*FRACUNIT;
	.loc 1 217 23
	movq	-24(%rbp), %rax	# actor, tmp116
	movq	176(%rax), %rax	# actor_34(D)->target, _9
# p_enemy.c:217: 			     actor->y-actor->target->y) - 64*FRACUNIT;
	.loc 1 217 31
	movl	28(%rax), %eax	# _9->y, _10
# p_enemy.c:216:     dist = P_AproxDistance ( actor->x-actor->target->x,
	.loc 1 216 12
	subl	%eax, %edx	# _10, _11
# p_enemy.c:216:     dist = P_AproxDistance ( actor->x-actor->target->x,
	.loc 1 216 35
	movq	-24(%rbp), %rax	# actor, tmp117
	movl	24(%rax), %esi	# actor_34(D)->x, _12
# p_enemy.c:216:     dist = P_AproxDistance ( actor->x-actor->target->x,
	.loc 1 216 44
	movq	-24(%rbp), %rax	# actor, tmp118
	movq	176(%rax), %rax	# actor_34(D)->target, _13
# p_enemy.c:216:     dist = P_AproxDistance ( actor->x-actor->target->x,
	.loc 1 216 52
	movl	24(%rax), %ecx	# _13->x, _14
# p_enemy.c:216:     dist = P_AproxDistance ( actor->x-actor->target->x,
	.loc 1 216 12
	movl	%esi, %eax	# _12, _12
	subl	%ecx, %eax	# _14, _12
	movl	%edx, %esi	# _11,
	movl	%eax, %edi	# _15,
	call	P_AproxDistance@PLT	#
# p_enemy.c:216:     dist = P_AproxDistance ( actor->x-actor->target->x,
	.loc 1 216 10 discriminator 1
	subl	$4194304, %eax	#, tmp119
	movl	%eax, -4(%rbp)	# tmp119, dist
# p_enemy.c:219:     if (!actor->info->meleestate)
	.loc 1 219 15
	movq	-24(%rbp), %rax	# actor, tmp120
	movq	136(%rax), %rax	# actor_34(D)->info, _17
# p_enemy.c:219:     if (!actor->info->meleestate)
	.loc 1 219 21
	movl	40(%rax), %eax	# _17->meleestate, _18
# p_enemy.c:219:     if (!actor->info->meleestate)
	.loc 1 219 8
	testl	%eax, %eax	# _18
	jne	.L26	#,
# p_enemy.c:220: 	dist -= 128*FRACUNIT;	// no melee attack, so fire more
	.loc 1 220 7
	subl	$8388608, -4(%rbp)	#, dist
.L26:
# p_enemy.c:222:     dist >>= 16;
	.loc 1 222 10
	sarl	$16, -4(%rbp)	#, dist
# p_enemy.c:224:     if (actor->type == MT_VILE)
	.loc 1 224 14
	movq	-24(%rbp), %rax	# actor, tmp121
	movl	128(%rax), %eax	# actor_34(D)->type, _19
# p_enemy.c:224:     if (actor->type == MT_VILE)
	.loc 1 224 8
	cmpl	$3, %eax	#, _19
	jne	.L27	#,
# p_enemy.c:226: 	if (dist > 14*64)	
	.loc 1 226 5
	cmpl	$896, -4(%rbp)	#, dist
	jle	.L27	#,
# p_enemy.c:227: 	    return false;	// too far away
	.loc 1 227 13
	movl	$0, %eax	#, _31
	jmp	.L23	#
.L27:
# p_enemy.c:231:     if (actor->type == MT_UNDEAD)
	.loc 1 231 14
	movq	-24(%rbp), %rax	# actor, tmp122
	movl	128(%rax), %eax	# actor_34(D)->type, _20
# p_enemy.c:231:     if (actor->type == MT_UNDEAD)
	.loc 1 231 8
	cmpl	$5, %eax	#, _20
	jne	.L28	#,
# p_enemy.c:233: 	if (dist < 196)	
	.loc 1 233 5
	cmpl	$195, -4(%rbp)	#, dist
	jg	.L29	#,
# p_enemy.c:234: 	    return false;	// close for fist attack
	.loc 1 234 13
	movl	$0, %eax	#, _31
	jmp	.L23	#
.L29:
# p_enemy.c:235: 	dist >>= 1;
	.loc 1 235 7
	sarl	-4(%rbp)	# dist
.L28:
# p_enemy.c:239:     if (actor->type == MT_CYBORG
	.loc 1 239 14
	movq	-24(%rbp), %rax	# actor, tmp123
	movl	128(%rax), %eax	# actor_34(D)->type, _21
# p_enemy.c:239:     if (actor->type == MT_CYBORG
	.loc 1 239 8
	cmpl	$21, %eax	#, _21
	je	.L30	#,
# p_enemy.c:240: 	|| actor->type == MT_SPIDER
	.loc 1 240 10
	movq	-24(%rbp), %rax	# actor, tmp124
	movl	128(%rax), %eax	# actor_34(D)->type, _22
# p_enemy.c:240: 	|| actor->type == MT_SPIDER
	.loc 1 240 2
	cmpl	$19, %eax	#, _22
	je	.L30	#,
# p_enemy.c:241: 	|| actor->type == MT_SKULL)
	.loc 1 241 10
	movq	-24(%rbp), %rax	# actor, tmp125
	movl	128(%rax), %eax	# actor_34(D)->type, _23
# p_enemy.c:241: 	|| actor->type == MT_SKULL)
	.loc 1 241 2
	cmpl	$18, %eax	#, _23
	jne	.L31	#,
.L30:
# p_enemy.c:243: 	dist >>= 1;
	.loc 1 243 7
	sarl	-4(%rbp)	# dist
.L31:
# p_enemy.c:246:     if (dist > 200)
	.loc 1 246 8
	cmpl	$200, -4(%rbp)	#, dist
	jle	.L32	#,
# p_enemy.c:247: 	dist = 200;
	.loc 1 247 7
	movl	$200, -4(%rbp)	#, dist
.L32:
# p_enemy.c:249:     if (actor->type == MT_CYBORG && dist > 160)
	.loc 1 249 14
	movq	-24(%rbp), %rax	# actor, tmp126
	movl	128(%rax), %eax	# actor_34(D)->type, _24
# p_enemy.c:249:     if (actor->type == MT_CYBORG && dist > 160)
	.loc 1 249 8
	cmpl	$21, %eax	#, _24
	jne	.L33	#,
# p_enemy.c:249:     if (actor->type == MT_CYBORG && dist > 160)
	.loc 1 249 34 discriminator 1
	cmpl	$160, -4(%rbp)	#, dist
	jle	.L33	#,
# p_enemy.c:250: 	dist = 160;
	.loc 1 250 7
	movl	$160, -4(%rbp)	#, dist
.L33:
# p_enemy.c:252:     if (P_Random () < dist)
	.loc 1 252 9
	call	P_Random@PLT	#
# p_enemy.c:252:     if (P_Random () < dist)
	.loc 1 252 8 discriminator 1
	cmpl	%eax, -4(%rbp)	# _25, dist
	jle	.L34	#,
# p_enemy.c:253: 	return false;
	.loc 1 253 9
	movl	$0, %eax	#, _31
	jmp	.L23	#
.L34:
# p_enemy.c:255:     return true;
	.loc 1 255 12
	movl	$1, %eax	#, _31
.L23:
# p_enemy.c:256: }
	.loc 1 256 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	P_CheckMissileRange, .-P_CheckMissileRange
	.globl	xspeed
	.data
	.align 32
	.type	xspeed, @object
	.size	xspeed, 32
xspeed:
	.long	65536
	.long	47000
	.long	0
	.long	-47000
	.long	-65536
	.long	-47000
	.long	0
	.long	47000
	.globl	yspeed
	.align 32
	.type	yspeed, @object
	.size	yspeed, 32
yspeed:
	.long	0
	.long	47000
	.long	65536
	.long	47000
	.long	0
	.long	-47000
	.long	-65536
	.long	-47000
	.section	.rodata
.LC0:
	.string	"Weird actor->movedir!"
	.text
	.globl	P_Move
	.type	P_Move, @function
P_Move:
.LFB10:
	.loc 1 273 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# actor, actor
# p_enemy.c:284:     if (actor->movedir == DI_NODIR)
	.loc 1 284 14
	movq	-40(%rbp), %rax	# actor, tmp120
	movl	168(%rax), %eax	# actor_46(D)->movedir, _1
# p_enemy.c:284:     if (actor->movedir == DI_NODIR)
	.loc 1 284 8
	cmpl	$8, %eax	#, _1
	jne	.L36	#,
# p_enemy.c:285: 	return false;
	.loc 1 285 9
	movl	$0, %eax	#, _39
	jmp	.L37	#
.L36:
# p_enemy.c:287:     if ((unsigned)actor->movedir >= 8)
	.loc 1 287 24
	movq	-40(%rbp), %rax	# actor, tmp121
	movl	168(%rax), %eax	# actor_46(D)->movedir, _2
# p_enemy.c:287:     if ((unsigned)actor->movedir >= 8)
	.loc 1 287 8
	cmpl	$7, %eax	#, _3
	jbe	.L38	#,
# p_enemy.c:288: 	I_Error ("Weird actor->movedir!");
	.loc 1 288 2
	leaq	.LC0(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L38:
# p_enemy.c:290:     tryx = actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 290 17
	movq	-40(%rbp), %rax	# actor, tmp123
	movl	24(%rax), %ecx	# actor_46(D)->x, _4
# p_enemy.c:290:     tryx = actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 290 28
	movq	-40(%rbp), %rax	# actor, tmp124
	movq	136(%rax), %rax	# actor_46(D)->info, _5
# p_enemy.c:290:     tryx = actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 290 34
	movl	60(%rax), %edx	# _5->speed, _6
# p_enemy.c:290:     tryx = actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 290 54
	movq	-40(%rbp), %rax	# actor, tmp125
	movl	168(%rax), %eax	# actor_46(D)->movedir, _7
# p_enemy.c:290:     tryx = actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 290 48
	cltq
	leaq	0(,%rax,4), %rsi	#, tmp127
	leaq	xspeed(%rip), %rax	#, tmp128
	movl	(%rsi,%rax), %eax	# xspeed[_7], _8
# p_enemy.c:290:     tryx = actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 290 41
	imull	%edx, %eax	# _6, _9
# p_enemy.c:290:     tryx = actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 290 10
	addl	%ecx, %eax	# _4, tmp129
	movl	%eax, -20(%rbp)	# tmp129, tryx
# p_enemy.c:291:     tryy = actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 291 17
	movq	-40(%rbp), %rax	# actor, tmp130
	movl	28(%rax), %ecx	# actor_46(D)->y, _10
# p_enemy.c:291:     tryy = actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 291 28
	movq	-40(%rbp), %rax	# actor, tmp131
	movq	136(%rax), %rax	# actor_46(D)->info, _11
# p_enemy.c:291:     tryy = actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 291 34
	movl	60(%rax), %edx	# _11->speed, _12
# p_enemy.c:291:     tryy = actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 291 54
	movq	-40(%rbp), %rax	# actor, tmp132
	movl	168(%rax), %eax	# actor_46(D)->movedir, _13
# p_enemy.c:291:     tryy = actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 291 48
	cltq
	leaq	0(,%rax,4), %rsi	#, tmp134
	leaq	yspeed(%rip), %rax	#, tmp135
	movl	(%rsi,%rax), %eax	# yspeed[_13], _14
# p_enemy.c:291:     tryy = actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 291 41
	imull	%edx, %eax	# _12, _15
# p_enemy.c:291:     tryy = actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 291 10
	addl	%ecx, %eax	# _10, tmp136
	movl	%eax, -16(%rbp)	# tmp136, tryy
# p_enemy.c:293:     try_ok = P_TryMove (actor, tryx, tryy);
	.loc 1 293 14
	movl	-16(%rbp), %edx	# tryy, tmp137
	movl	-20(%rbp), %ecx	# tryx, tmp138
	movq	-40(%rbp), %rax	# actor, tmp139
	movl	%ecx, %esi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	P_TryMove@PLT	#
	movl	%eax, -12(%rbp)	# tmp140, try_ok
# p_enemy.c:295:     if (!try_ok)
	.loc 1 295 8
	cmpl	$0, -12(%rbp)	#, try_ok
	jne	.L39	#,
# p_enemy.c:298: 	if (actor->flags & MF_FLOAT && floatok)
	.loc 1 298 11
	movq	-40(%rbp), %rax	# actor, tmp141
	movl	160(%rax), %eax	# actor_46(D)->flags, _16
# p_enemy.c:298: 	if (actor->flags & MF_FLOAT && floatok)
	.loc 1 298 19
	andl	$16384, %eax	#, _17
# p_enemy.c:298: 	if (actor->flags & MF_FLOAT && floatok)
	.loc 1 298 5
	testl	%eax, %eax	# _17
	je	.L40	#,
# p_enemy.c:298: 	if (actor->flags & MF_FLOAT && floatok)
	.loc 1 298 30 discriminator 1
	movl	floatok(%rip), %eax	# floatok, floatok.8_18
	testl	%eax, %eax	# floatok.8_18
	je	.L40	#,
# p_enemy.c:301: 	    if (actor->z < tmfloorz)
	.loc 1 301 15
	movq	-40(%rbp), %rax	# actor, tmp142
	movl	32(%rax), %edx	# actor_46(D)->z, _19
# p_enemy.c:301: 	    if (actor->z < tmfloorz)
	.loc 1 301 19
	movl	tmfloorz(%rip), %eax	# tmfloorz, tmfloorz.9_20
# p_enemy.c:301: 	    if (actor->z < tmfloorz)
	.loc 1 301 9
	cmpl	%eax, %edx	# tmfloorz.9_20, _19
	jge	.L41	#,
# p_enemy.c:302: 		actor->z += FLOATSPEED;
	.loc 1 302 8
	movq	-40(%rbp), %rax	# actor, tmp143
	movl	32(%rax), %eax	# actor_46(D)->z, _21
# p_enemy.c:302: 		actor->z += FLOATSPEED;
	.loc 1 302 12
	leal	262144(%rax), %edx	#, _22
	movq	-40(%rbp), %rax	# actor, tmp144
	movl	%edx, 32(%rax)	# _22, actor_46(D)->z
	jmp	.L42	#
.L41:
# p_enemy.c:304: 		actor->z -= FLOATSPEED;
	.loc 1 304 8
	movq	-40(%rbp), %rax	# actor, tmp145
	movl	32(%rax), %eax	# actor_46(D)->z, _23
# p_enemy.c:304: 		actor->z -= FLOATSPEED;
	.loc 1 304 12
	leal	-262144(%rax), %edx	#, _24
	movq	-40(%rbp), %rax	# actor, tmp146
	movl	%edx, 32(%rax)	# _24, actor_46(D)->z
.L42:
# p_enemy.c:306: 	    actor->flags |= MF_INFLOAT;
	.loc 1 306 11
	movq	-40(%rbp), %rax	# actor, tmp147
	movl	160(%rax), %eax	# actor_46(D)->flags, _25
# p_enemy.c:306: 	    actor->flags |= MF_INFLOAT;
	.loc 1 306 19
	orl	$2097152, %eax	#, _25
	movl	%eax, %edx	# _25, _26
	movq	-40(%rbp), %rax	# actor, tmp148
	movl	%edx, 160(%rax)	# _26, actor_46(D)->flags
# p_enemy.c:307: 	    return true;
	.loc 1 307 13
	movl	$1, %eax	#, _39
	jmp	.L37	#
.L40:
# p_enemy.c:310: 	if (!numspechit)
	.loc 1 310 6
	movl	numspechit(%rip), %eax	# numspechit, numspechit.10_27
# p_enemy.c:310: 	if (!numspechit)
	.loc 1 310 5
	testl	%eax, %eax	# numspechit.10_27
	jne	.L43	#,
# p_enemy.c:311: 	    return false;
	.loc 1 311 13
	movl	$0, %eax	#, _39
	jmp	.L37	#
.L43:
# p_enemy.c:313: 	actor->movedir = DI_NODIR;
	.loc 1 313 17
	movq	-40(%rbp), %rax	# actor, tmp149
	movl	$8, 168(%rax)	#, actor_46(D)->movedir
# p_enemy.c:314: 	good = false;
	.loc 1 314 7
	movl	$0, -24(%rbp)	#, good
# p_enemy.c:315: 	while (numspechit--)
	.loc 1 315 8
	jmp	.L44	#
.L46:
# p_enemy.c:317: 	    ld = spechit[numspechit];
	.loc 1 317 18
	movl	numspechit(%rip), %eax	# numspechit, numspechit.11_28
# p_enemy.c:317: 	    ld = spechit[numspechit];
	.loc 1 317 9
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp151
	leaq	spechit(%rip), %rax	#, tmp152
	movq	(%rdx,%rax), %rax	# spechit[numspechit.11_28], tmp153
	movq	%rax, -8(%rbp)	# tmp153, ld
# p_enemy.c:321: 	    if (P_UseSpecialLine (actor, ld,0))
	.loc 1 321 10
	movq	-8(%rbp), %rcx	# ld, tmp154
	movq	-40(%rbp), %rax	# actor, tmp155
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp155,
	call	P_UseSpecialLine@PLT	#
# p_enemy.c:321: 	    if (P_UseSpecialLine (actor, ld,0))
	.loc 1 321 9 discriminator 1
	testl	%eax, %eax	# _29
	je	.L44	#,
# p_enemy.c:322: 		good = true;
	.loc 1 322 8
	movl	$1, -24(%rbp)	#, good
.L44:
# p_enemy.c:315: 	while (numspechit--)
	.loc 1 315 19
	movl	numspechit(%rip), %eax	# numspechit, numspechit.12_30
	leal	-1(%rax), %edx	#, _32
	movl	%edx, numspechit(%rip)	# _32, numspechit
# p_enemy.c:315: 	while (numspechit--)
	.loc 1 315 9
	testl	%eax, %eax	# numspechit.12_30
	jne	.L46	#,
# p_enemy.c:324: 	return good;
	.loc 1 324 9
	movl	-24(%rbp), %eax	# good, _39
	jmp	.L37	#
.L39:
# p_enemy.c:328: 	actor->flags &= ~MF_INFLOAT;
	.loc 1 328 7
	movq	-40(%rbp), %rax	# actor, tmp156
	movl	160(%rax), %eax	# actor_46(D)->flags, _33
# p_enemy.c:328: 	actor->flags &= ~MF_INFLOAT;
	.loc 1 328 15
	andl	$-2097153, %eax	#, _33
	movl	%eax, %edx	# _33, _34
	movq	-40(%rbp), %rax	# actor, tmp157
	movl	%edx, 160(%rax)	# _34, actor_46(D)->flags
# p_enemy.c:332:     if (! (actor->flags & MF_FLOAT) )	
	.loc 1 332 17
	movq	-40(%rbp), %rax	# actor, tmp158
	movl	160(%rax), %eax	# actor_46(D)->flags, _35
# p_enemy.c:332:     if (! (actor->flags & MF_FLOAT) )	
	.loc 1 332 25
	andl	$16384, %eax	#, _36
# p_enemy.c:332:     if (! (actor->flags & MF_FLOAT) )	
	.loc 1 332 8
	testl	%eax, %eax	# _36
	jne	.L47	#,
# p_enemy.c:333: 	actor->z = actor->floorz;
	.loc 1 333 18
	movq	-40(%rbp), %rax	# actor, tmp159
	movl	96(%rax), %edx	# actor_46(D)->floorz, _37
# p_enemy.c:333: 	actor->z = actor->floorz;
	.loc 1 333 11
	movq	-40(%rbp), %rax	# actor, tmp160
	movl	%edx, 32(%rax)	# _37, actor_46(D)->z
.L47:
# p_enemy.c:334:     return true; 
	.loc 1 334 12
	movl	$1, %eax	#, _39
.L37:
# p_enemy.c:335: }
	.loc 1 335 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	P_Move, .-P_Move
	.globl	P_TryWalk
	.type	P_TryWalk, @function
P_TryWalk:
.LFB11:
	.loc 1 350 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:351:     if (!P_Move (actor))
	.loc 1 351 10
	movq	-8(%rbp), %rax	# actor, tmp87
	movq	%rax, %rdi	# tmp87,
	call	P_Move	#
# p_enemy.c:351:     if (!P_Move (actor))
	.loc 1 351 8 discriminator 1
	testl	%eax, %eax	# _1
	jne	.L49	#,
# p_enemy.c:353: 	return false;
	.loc 1 353 9
	movl	$0, %eax	#, _4
	jmp	.L50	#
.L49:
# p_enemy.c:356:     actor->movecount = P_Random()&15;
	.loc 1 356 24
	call	P_Random@PLT	#
# p_enemy.c:356:     actor->movecount = P_Random()&15;
	.loc 1 356 34 discriminator 1
	andl	$15, %eax	#, _2
	movl	%eax, %edx	# _2, _3
# p_enemy.c:356:     actor->movecount = P_Random()&15;
	.loc 1 356 22 discriminator 1
	movq	-8(%rbp), %rax	# actor, tmp88
	movl	%edx, 172(%rax)	# _3, actor_7(D)->movecount
# p_enemy.c:357:     return true;
	.loc 1 357 12
	movl	$1, %eax	#, _4
.L50:
# p_enemy.c:358: }
	.loc 1 358 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	P_TryWalk, .-P_TryWalk
	.section	.rodata
	.align 8
.LC1:
	.string	"P_NewChaseDir: called with no target"
	.text
	.globl	P_NewChaseDir
	.type	P_NewChaseDir, @function
P_NewChaseDir:
.LFB12:
	.loc 1 364 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# actor, actor
# p_enemy.c:364: {
	.loc 1 364 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp167
	movq	%rax, -8(%rbp)	# tmp167, D.9003
	xorl	%eax, %eax	# tmp167
# p_enemy.c:375:     if (!actor->target)
	.loc 1 375 15
	movq	-56(%rbp), %rax	# actor, tmp128
	movq	176(%rax), %rax	# actor_68(D)->target, _1
# p_enemy.c:375:     if (!actor->target)
	.loc 1 375 8
	testq	%rax, %rax	# _1
	jne	.L52	#,
# p_enemy.c:376: 	I_Error ("P_NewChaseDir: called with no target");
	.loc 1 376 2
	leaq	.LC1(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L52:
# p_enemy.c:378:     olddir = actor->movedir;
	.loc 1 378 19
	movq	-56(%rbp), %rax	# actor, tmp130
	movl	168(%rax), %eax	# actor_68(D)->movedir, _2
# p_enemy.c:378:     olddir = actor->movedir;
	.loc 1 378 12
	movl	%eax, -36(%rbp)	# _2, olddir
# p_enemy.c:379:     turnaround=opposite[olddir];
	.loc 1 379 15
	movl	-36(%rbp), %eax	# olddir, tmp131
	leaq	0(,%rax,4), %rdx	#, tmp132
	leaq	opposite(%rip), %rax	#, tmp133
	movl	(%rdx,%rax), %eax	# opposite[olddir_70], tmp134
	movl	%eax, -32(%rbp)	# tmp134, turnaround
# p_enemy.c:381:     deltax = actor->target->x - actor->x;
	.loc 1 381 19
	movq	-56(%rbp), %rax	# actor, tmp135
	movq	176(%rax), %rax	# actor_68(D)->target, _3
# p_enemy.c:381:     deltax = actor->target->x - actor->x;
	.loc 1 381 27
	movl	24(%rax), %edx	# _3->x, _4
# p_enemy.c:381:     deltax = actor->target->x - actor->x;
	.loc 1 381 38
	movq	-56(%rbp), %rax	# actor, tmp136
	movl	24(%rax), %eax	# actor_68(D)->x, _5
# p_enemy.c:381:     deltax = actor->target->x - actor->x;
	.loc 1 381 12
	subl	%eax, %edx	# _5, tmp137
	movl	%edx, -28(%rbp)	# tmp137, deltax
# p_enemy.c:382:     deltay = actor->target->y - actor->y;
	.loc 1 382 19
	movq	-56(%rbp), %rax	# actor, tmp138
	movq	176(%rax), %rax	# actor_68(D)->target, _6
# p_enemy.c:382:     deltay = actor->target->y - actor->y;
	.loc 1 382 27
	movl	28(%rax), %edx	# _6->y, _7
# p_enemy.c:382:     deltay = actor->target->y - actor->y;
	.loc 1 382 38
	movq	-56(%rbp), %rax	# actor, tmp139
	movl	28(%rax), %eax	# actor_68(D)->y, _8
# p_enemy.c:382:     deltay = actor->target->y - actor->y;
	.loc 1 382 12
	subl	%eax, %edx	# _8, tmp140
	movl	%edx, -24(%rbp)	# tmp140, deltay
# p_enemy.c:384:     if (deltax>10*FRACUNIT)
	.loc 1 384 8
	cmpl	$655360, -28(%rbp)	#, deltax
	jle	.L53	#,
# p_enemy.c:385: 	d[1]= DI_EAST;
	.loc 1 385 6
	movl	$0, -16(%rbp)	#, d[1]
	jmp	.L54	#
.L53:
# p_enemy.c:386:     else if (deltax<-10*FRACUNIT)
	.loc 1 386 13
	cmpl	$-655360, -28(%rbp)	#, deltax
	jge	.L55	#,
# p_enemy.c:387: 	d[1]= DI_WEST;
	.loc 1 387 6
	movl	$4, -16(%rbp)	#, d[1]
	jmp	.L54	#
.L55:
# p_enemy.c:389: 	d[1]=DI_NODIR;
	.loc 1 389 6
	movl	$8, -16(%rbp)	#, d[1]
.L54:
# p_enemy.c:391:     if (deltay<-10*FRACUNIT)
	.loc 1 391 8
	cmpl	$-655360, -24(%rbp)	#, deltay
	jge	.L56	#,
# p_enemy.c:392: 	d[2]= DI_SOUTH;
	.loc 1 392 6
	movl	$6, -12(%rbp)	#, d[2]
	jmp	.L57	#
.L56:
# p_enemy.c:393:     else if (deltay>10*FRACUNIT)
	.loc 1 393 13
	cmpl	$655360, -24(%rbp)	#, deltay
	jle	.L58	#,
# p_enemy.c:394: 	d[2]= DI_NORTH;
	.loc 1 394 6
	movl	$2, -12(%rbp)	#, d[2]
	jmp	.L57	#
.L58:
# p_enemy.c:396: 	d[2]=DI_NODIR;
	.loc 1 396 6
	movl	$8, -12(%rbp)	#, d[2]
.L57:
# p_enemy.c:399:     if (d[1] != DI_NODIR
	.loc 1 399 10
	movl	-16(%rbp), %eax	# d[1], _9
# p_enemy.c:399:     if (d[1] != DI_NODIR
	.loc 1 399 8
	cmpl	$8, %eax	#, _9
	je	.L59	#,
# p_enemy.c:400: 	&& d[2] != DI_NODIR)
	.loc 1 400 6
	movl	-12(%rbp), %eax	# d[2], _10
# p_enemy.c:400: 	&& d[2] != DI_NODIR)
	.loc 1 400 2
	cmpl	$8, %eax	#, _10
	je	.L59	#,
# p_enemy.c:402: 	actor->movedir = diags[((deltay<0)<<1)+(deltax>0)];
	.loc 1 402 36
	movl	-24(%rbp), %eax	# deltay, tmp141
	sarl	$30, %eax	#, _11
	andl	$2, %eax	#, _11
	movl	%eax, %edx	# _11, _12
# p_enemy.c:402: 	actor->movedir = diags[((deltay<0)<<1)+(deltax>0)];
	.loc 1 402 48
	cmpl	$0, -28(%rbp)	#, deltax
	setg	%al	#, _13
	movzbl	%al, %eax	# _13, _14
# p_enemy.c:402: 	actor->movedir = diags[((deltay<0)<<1)+(deltax>0)];
	.loc 1 402 40
	addl	%edx, %eax	# _12, _15
# p_enemy.c:402: 	actor->movedir = diags[((deltay<0)<<1)+(deltax>0)];
	.loc 1 402 24
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp143
	leaq	diags(%rip), %rax	#, tmp144
	movl	(%rdx,%rax), %eax	# diags[_15], _16
	movl	%eax, %edx	# _16, _17
# p_enemy.c:402: 	actor->movedir = diags[((deltay<0)<<1)+(deltax>0)];
	.loc 1 402 17
	movq	-56(%rbp), %rax	# actor, tmp145
	movl	%edx, 168(%rax)	# _17, actor_68(D)->movedir
# p_enemy.c:403: 	if (actor->movedir != turnaround && P_TryWalk(actor))
	.loc 1 403 11
	movq	-56(%rbp), %rax	# actor, tmp146
	movl	168(%rax), %edx	# actor_68(D)->movedir, _18
# p_enemy.c:403: 	if (actor->movedir != turnaround && P_TryWalk(actor))
	.loc 1 403 21
	movl	-32(%rbp), %eax	# turnaround, turnaround.14_19
# p_enemy.c:403: 	if (actor->movedir != turnaround && P_TryWalk(actor))
	.loc 1 403 5
	cmpl	%eax, %edx	# turnaround.14_19, _18
	je	.L59	#,
# p_enemy.c:403: 	if (actor->movedir != turnaround && P_TryWalk(actor))
	.loc 1 403 38 discriminator 1
	movq	-56(%rbp), %rax	# actor, tmp147
	movq	%rax, %rdi	# tmp147,
	call	P_TryWalk	#
# p_enemy.c:403: 	if (actor->movedir != turnaround && P_TryWalk(actor))
	.loc 1 403 35 discriminator 1
	testl	%eax, %eax	# _20
	jne	.L79	#,
.L59:
# p_enemy.c:408:     if (P_Random() > 200
	.loc 1 408 9
	call	P_Random@PLT	#
# p_enemy.c:408:     if (P_Random() > 200
	.loc 1 408 8 discriminator 1
	cmpl	$200, %eax	#, _21
	jg	.L61	#,
# p_enemy.c:409: 	||  abs(deltay)>abs(deltax))
	.loc 1 409 6
	movl	-24(%rbp), %eax	# deltay, tmp163
	movl	%eax, %edx	# tmp163, tmp164
	negl	%edx	# tmp164
	cmovs	%eax, %edx	# tmp164,, tmp163, _22
# p_enemy.c:409: 	||  abs(deltay)>abs(deltax))
	.loc 1 409 18
	movl	-28(%rbp), %eax	# deltax, tmp165
	movl	%eax, %ecx	# tmp165, tmp166
	negl	%ecx	# tmp166
	cmovns	%ecx, %eax	# tmp166,, _23
# p_enemy.c:409: 	||  abs(deltay)>abs(deltax))
	.loc 1 409 2
	cmpl	%eax, %edx	# _23, _22
	jle	.L62	#,
.L61:
# p_enemy.c:411: 	tdir=d[1];
	.loc 1 411 8
	movl	-16(%rbp), %eax	# d[1], _24
# p_enemy.c:411: 	tdir=d[1];
	.loc 1 411 6
	movl	%eax, -40(%rbp)	# _24, tdir
# p_enemy.c:412: 	d[1]=d[2];
	.loc 1 412 8
	movl	-12(%rbp), %eax	# d[2], _25
# p_enemy.c:412: 	d[1]=d[2];
	.loc 1 412 6
	movl	%eax, -16(%rbp)	# _25, d[1]
# p_enemy.c:413: 	d[2]=tdir;
	.loc 1 413 6
	movl	-40(%rbp), %eax	# tdir, tdir.15_26
	movl	%eax, -12(%rbp)	# tdir.15_26, d[2]
.L62:
# p_enemy.c:416:     if (d[1]==turnaround)
	.loc 1 416 10
	movl	-16(%rbp), %eax	# d[1], _27
# p_enemy.c:416:     if (d[1]==turnaround)
	.loc 1 416 8
	cmpl	%eax, -32(%rbp)	# _27, turnaround
	jne	.L63	#,
# p_enemy.c:417: 	d[1]=DI_NODIR;
	.loc 1 417 6
	movl	$8, -16(%rbp)	#, d[1]
.L63:
# p_enemy.c:418:     if (d[2]==turnaround)
	.loc 1 418 10
	movl	-12(%rbp), %eax	# d[2], _28
# p_enemy.c:418:     if (d[2]==turnaround)
	.loc 1 418 8
	cmpl	%eax, -32(%rbp)	# _28, turnaround
	jne	.L64	#,
# p_enemy.c:419: 	d[2]=DI_NODIR;
	.loc 1 419 6
	movl	$8, -12(%rbp)	#, d[2]
.L64:
# p_enemy.c:421:     if (d[1]!=DI_NODIR)
	.loc 1 421 10
	movl	-16(%rbp), %eax	# d[1], _29
# p_enemy.c:421:     if (d[1]!=DI_NODIR)
	.loc 1 421 8
	cmpl	$8, %eax	#, _29
	je	.L65	#,
# p_enemy.c:423: 	actor->movedir = d[1];
	.loc 1 423 20
	movl	-16(%rbp), %eax	# d[1], _30
	movl	%eax, %edx	# _30, _31
# p_enemy.c:423: 	actor->movedir = d[1];
	.loc 1 423 17
	movq	-56(%rbp), %rax	# actor, tmp148
	movl	%edx, 168(%rax)	# _31, actor_68(D)->movedir
# p_enemy.c:424: 	if (P_TryWalk(actor))
	.loc 1 424 6
	movq	-56(%rbp), %rax	# actor, tmp149
	movq	%rax, %rdi	# tmp149,
	call	P_TryWalk	#
# p_enemy.c:424: 	if (P_TryWalk(actor))
	.loc 1 424 5 discriminator 1
	testl	%eax, %eax	# _32
	jne	.L80	#,
.L65:
# p_enemy.c:431:     if (d[2]!=DI_NODIR)
	.loc 1 431 10
	movl	-12(%rbp), %eax	# d[2], _33
# p_enemy.c:431:     if (d[2]!=DI_NODIR)
	.loc 1 431 8
	cmpl	$8, %eax	#, _33
	je	.L66	#,
# p_enemy.c:433: 	actor->movedir =d[2];
	.loc 1 433 19
	movl	-12(%rbp), %eax	# d[2], _34
	movl	%eax, %edx	# _34, _35
# p_enemy.c:433: 	actor->movedir =d[2];
	.loc 1 433 17
	movq	-56(%rbp), %rax	# actor, tmp150
	movl	%edx, 168(%rax)	# _35, actor_68(D)->movedir
# p_enemy.c:435: 	if (P_TryWalk(actor))
	.loc 1 435 6
	movq	-56(%rbp), %rax	# actor, tmp151
	movq	%rax, %rdi	# tmp151,
	call	P_TryWalk	#
# p_enemy.c:435: 	if (P_TryWalk(actor))
	.loc 1 435 5 discriminator 1
	testl	%eax, %eax	# _36
	jne	.L81	#,
.L66:
# p_enemy.c:441:     if (olddir!=DI_NODIR)
	.loc 1 441 8
	cmpl	$8, -36(%rbp)	#, olddir
	je	.L67	#,
# p_enemy.c:443: 	actor->movedir =olddir;
	.loc 1 443 17
	movl	-36(%rbp), %edx	# olddir, olddir.16_37
	movq	-56(%rbp), %rax	# actor, tmp152
	movl	%edx, 168(%rax)	# olddir.16_37, actor_68(D)->movedir
# p_enemy.c:445: 	if (P_TryWalk(actor))
	.loc 1 445 6
	movq	-56(%rbp), %rax	# actor, tmp153
	movq	%rax, %rdi	# tmp153,
	call	P_TryWalk	#
# p_enemy.c:445: 	if (P_TryWalk(actor))
	.loc 1 445 5 discriminator 1
	testl	%eax, %eax	# _38
	jne	.L82	#,
.L67:
# p_enemy.c:450:     if (P_Random()&1) 	
	.loc 1 450 9
	call	P_Random@PLT	#
# p_enemy.c:450:     if (P_Random()&1) 	
	.loc 1 450 19 discriminator 1
	andl	$1, %eax	#, _40
# p_enemy.c:450:     if (P_Random()&1) 	
	.loc 1 450 8 discriminator 1
	testl	%eax, %eax	# _40
	je	.L68	#,
# p_enemy.c:452: 	for ( tdir=DI_EAST;
	.loc 1 452 12
	movl	$0, -40(%rbp)	#, tdir
# p_enemy.c:452: 	for ( tdir=DI_EAST;
	.loc 1 452 2
	jmp	.L69	#
.L71:
# p_enemy.c:456: 	    if (tdir!=turnaround)
	.loc 1 456 14
	movl	-32(%rbp), %eax	# turnaround, turnaround.17_41
# p_enemy.c:456: 	    if (tdir!=turnaround)
	.loc 1 456 9
	cmpl	%eax, -40(%rbp)	# turnaround.17_41, tdir
	je	.L70	#,
# p_enemy.c:458: 		actor->movedir =tdir;
	.loc 1 458 18
	movq	-56(%rbp), %rax	# actor, tmp154
	movl	-40(%rbp), %edx	# tdir, tmp155
	movl	%edx, 168(%rax)	# tmp155, actor_68(D)->movedir
# p_enemy.c:460: 		if ( P_TryWalk(actor) )
	.loc 1 460 8
	movq	-56(%rbp), %rax	# actor, tmp156
	movq	%rax, %rdi	# tmp156,
	call	P_TryWalk	#
# p_enemy.c:460: 		if ( P_TryWalk(actor) )
	.loc 1 460 6 discriminator 1
	testl	%eax, %eax	# _42
	jne	.L83	#,
.L70:
# p_enemy.c:454: 	      tdir++ )
	.loc 1 454 12
	addl	$1, -40(%rbp)	#, tdir
.L69:
# p_enemy.c:453: 	      tdir<=DI_SOUTHEAST;
	.loc 1 453 12
	cmpl	$7, -40(%rbp)	#, tdir
	jle	.L71	#,
	jmp	.L72	#
.L68:
# p_enemy.c:467: 	for ( tdir=DI_SOUTHEAST;
	.loc 1 467 12
	movl	$7, -40(%rbp)	#, tdir
# p_enemy.c:467: 	for ( tdir=DI_SOUTHEAST;
	.loc 1 467 2
	jmp	.L73	#
.L75:
# p_enemy.c:471: 	    if (tdir!=turnaround)
	.loc 1 471 14
	movl	-32(%rbp), %eax	# turnaround, turnaround.18_43
# p_enemy.c:471: 	    if (tdir!=turnaround)
	.loc 1 471 9
	cmpl	%eax, -40(%rbp)	# turnaround.18_43, tdir
	je	.L74	#,
# p_enemy.c:473: 		actor->movedir =tdir;
	.loc 1 473 18
	movq	-56(%rbp), %rax	# actor, tmp157
	movl	-40(%rbp), %edx	# tdir, tmp158
	movl	%edx, 168(%rax)	# tmp158, actor_68(D)->movedir
# p_enemy.c:475: 		if ( P_TryWalk(actor) )
	.loc 1 475 8
	movq	-56(%rbp), %rax	# actor, tmp159
	movq	%rax, %rdi	# tmp159,
	call	P_TryWalk	#
# p_enemy.c:475: 		if ( P_TryWalk(actor) )
	.loc 1 475 6 discriminator 1
	testl	%eax, %eax	# _44
	jne	.L84	#,
.L74:
# p_enemy.c:469: 	      tdir-- )
	.loc 1 469 12
	subl	$1, -40(%rbp)	#, tdir
.L73:
# p_enemy.c:468: 	      tdir != (DI_EAST-1);
	.loc 1 468 13
	cmpl	$-1, -40(%rbp)	#, tdir
	jne	.L75	#,
.L72:
# p_enemy.c:481:     if (turnaround !=  DI_NODIR)
	.loc 1 481 8
	cmpl	$8, -32(%rbp)	#, turnaround
	je	.L76	#,
# p_enemy.c:483: 	actor->movedir =turnaround;
	.loc 1 483 17
	movl	-32(%rbp), %edx	# turnaround, turnaround.19_45
	movq	-56(%rbp), %rax	# actor, tmp160
	movl	%edx, 168(%rax)	# turnaround.19_45, actor_68(D)->movedir
# p_enemy.c:484: 	if ( P_TryWalk(actor) )
	.loc 1 484 7
	movq	-56(%rbp), %rax	# actor, tmp161
	movq	%rax, %rdi	# tmp161,
	call	P_TryWalk	#
# p_enemy.c:484: 	if ( P_TryWalk(actor) )
	.loc 1 484 5 discriminator 1
	testl	%eax, %eax	# _46
	jne	.L85	#,
.L76:
# p_enemy.c:488:     actor->movedir = DI_NODIR;	// can not move
	.loc 1 488 20
	movq	-56(%rbp), %rax	# actor, tmp162
	movl	$8, 168(%rax)	#, actor_68(D)->movedir
	jmp	.L51	#
.L79:
# p_enemy.c:404: 	    return;
	.loc 1 404 6
	nop	
	jmp	.L51	#
.L80:
# p_enemy.c:427: 	    return;
	.loc 1 427 6
	nop	
	jmp	.L51	#
.L81:
# p_enemy.c:436: 	    return;
	.loc 1 436 6
	nop	
	jmp	.L51	#
.L82:
# p_enemy.c:446: 	    return;
	.loc 1 446 6
	nop	
	jmp	.L51	#
.L83:
# p_enemy.c:461: 		    return;
	.loc 1 461 7
	nop	
	jmp	.L51	#
.L84:
# p_enemy.c:476: 		    return;
	.loc 1 476 7
	nop	
	jmp	.L51	#
.L85:
# p_enemy.c:485: 	    return;
	.loc 1 485 6
	nop	
.L51:
# p_enemy.c:489: }
	.loc 1 489 1
	movq	-8(%rbp), %rax	# D.9003, tmp168
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp168
	je	.L78	#,
	call	__stack_chk_fail@PLT	#
.L78:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	P_NewChaseDir, .-P_NewChaseDir
	.globl	P_LookForPlayers
	.type	P_LookForPlayers, @function
P_LookForPlayers:
.LFB13:
	.loc 1 502 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# actor, actor
	movl	%esi, -44(%rbp)	# allaround, allaround
# p_enemy.c:510:     sector = actor->subsector->sector;
	.loc 1 510 19
	movq	-40(%rbp), %rax	# actor, tmp115
	movq	88(%rax), %rax	# actor_40(D)->subsector, _1
# p_enemy.c:510:     sector = actor->subsector->sector;
	.loc 1 510 12
	movq	(%rax), %rax	# _1->sector, tmp116
	movq	%rax, -16(%rbp)	# tmp116, sector
# p_enemy.c:512:     c = 0;
	.loc 1 512 7
	movl	$0, -32(%rbp)	#, c
# p_enemy.c:513:     stop = (actor->lastlook-1)&3;
	.loc 1 513 18
	movq	-40(%rbp), %rax	# actor, tmp117
	movl	200(%rax), %eax	# actor_40(D)->lastlook, _2
# p_enemy.c:513:     stop = (actor->lastlook-1)&3;
	.loc 1 513 28
	subl	$1, %eax	#, _3
# p_enemy.c:513:     stop = (actor->lastlook-1)&3;
	.loc 1 513 10
	andl	$3, %eax	#, tmp118
	movl	%eax, -28(%rbp)	# tmp118, stop
.L95:
# p_enemy.c:517: 	if (!playeringame[actor->lastlook])
	.loc 1 517 25
	movq	-40(%rbp), %rax	# actor, tmp119
	movl	200(%rax), %eax	# actor_40(D)->lastlook, _4
# p_enemy.c:517: 	if (!playeringame[actor->lastlook])
	.loc 1 517 19
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp121
	leaq	playeringame(%rip), %rax	#, tmp122
	movl	(%rdx,%rax), %eax	# playeringame[_4], _5
# p_enemy.c:517: 	if (!playeringame[actor->lastlook])
	.loc 1 517 5
	testl	%eax, %eax	# _5
	je	.L96	#,
# p_enemy.c:520: 	if (c++ == 2
	.loc 1 520 7
	movl	-32(%rbp), %eax	# c, c.20_6
	leal	1(%rax), %edx	#, tmp123
	movl	%edx, -32(%rbp)	# tmp123, c
# p_enemy.c:520: 	if (c++ == 2
	.loc 1 520 5
	cmpl	$2, %eax	#, c.20_6
	je	.L89	#,
# p_enemy.c:521: 	    || actor->lastlook == stop)
	.loc 1 521 14
	movq	-40(%rbp), %rax	# actor, tmp124
	movl	200(%rax), %eax	# actor_40(D)->lastlook, _7
# p_enemy.c:521: 	    || actor->lastlook == stop)
	.loc 1 521 6
	cmpl	%eax, -28(%rbp)	# _7, stop
	jne	.L90	#,
.L89:
# p_enemy.c:524: 	    return false;	
	.loc 1 524 13
	movl	$0, %eax	#, _34
	jmp	.L91	#
.L90:
# p_enemy.c:527: 	player = &players[actor->lastlook];
	.loc 1 527 25
	movq	-40(%rbp), %rax	# actor, tmp125
	movl	200(%rax), %eax	# actor_40(D)->lastlook, _8
# p_enemy.c:527: 	player = &players[actor->lastlook];
	.loc 1 527 9
	movslq	%eax, %rdx	# _8, tmp126
	movq	%rdx, %rax	# tmp126, tmp127
	salq	$2, %rax	#, tmp127
	addq	%rdx, %rax	# tmp126, tmp127
	salq	$6, %rax	#, tmp128
	leaq	players(%rip), %rdx	#, tmp129
	addq	%rdx, %rax	# tmp129, tmp130
	movq	%rax, -8(%rbp)	# tmp130, player
# p_enemy.c:529: 	if (player->health <= 0)
	.loc 1 529 12
	movq	-8(%rbp), %rax	# player, tmp131
	movl	36(%rax), %eax	# player_45->health, _9
# p_enemy.c:529: 	if (player->health <= 0)
	.loc 1 529 5
	testl	%eax, %eax	# _9
	jle	.L97	#,
# p_enemy.c:532: 	if (!P_CheckSight (actor, player->mo))
	.loc 1 532 7
	movq	-8(%rbp), %rax	# player, tmp132
	movq	(%rax), %rdx	# player_45->mo, _10
	movq	-40(%rbp), %rax	# actor, tmp133
	movq	%rdx, %rsi	# _10,
	movq	%rax, %rdi	# tmp133,
	call	P_CheckSight@PLT	#
# p_enemy.c:532: 	if (!P_CheckSight (actor, player->mo))
	.loc 1 532 5 discriminator 1
	testl	%eax, %eax	# _11
	je	.L98	#,
# p_enemy.c:535: 	if (!allaround)
	.loc 1 535 5
	cmpl	$0, -44(%rbp)	#, allaround
	jne	.L94	#,
# p_enemy.c:540: 				  player->mo->y)
	.loc 1 540 13
	movq	-8(%rbp), %rax	# player, tmp134
	movq	(%rax), %rax	# player_45->mo, _12
# p_enemy.c:537: 	    an = R_PointToAngle2 (actor->x,
	.loc 1 537 11
	movl	28(%rax), %ecx	# _12->y, _13
# p_enemy.c:539: 				  player->mo->x,
	.loc 1 539 13
	movq	-8(%rbp), %rax	# player, tmp135
	movq	(%rax), %rax	# player_45->mo, _14
# p_enemy.c:537: 	    an = R_PointToAngle2 (actor->x,
	.loc 1 537 11
	movl	24(%rax), %edx	# _14->x, _15
	movq	-40(%rbp), %rax	# actor, tmp136
	movl	28(%rax), %esi	# actor_40(D)->y, _16
	movq	-40(%rbp), %rax	# actor, tmp137
	movl	24(%rax), %eax	# actor_40(D)->x, _17
	movl	%eax, %edi	# _17,
	call	R_PointToAngle2@PLT	#
	movl	%eax, %edx	#, _18
# p_enemy.c:541: 		- actor->angle;
	.loc 1 541 10
	movq	-40(%rbp), %rax	# actor, tmp138
	movl	56(%rax), %eax	# actor_40(D)->angle, _19
# p_enemy.c:537: 	    an = R_PointToAngle2 (actor->x,
	.loc 1 537 9
	subl	%eax, %edx	# _19, tmp139
	movl	%edx, -24(%rbp)	# tmp139, an
# p_enemy.c:543: 	    if (an > ANG90 && an < ANG270)
	.loc 1 543 9
	cmpl	$1073741824, -24(%rbp)	#, an
	jbe	.L94	#,
# p_enemy.c:543: 	    if (an > ANG90 && an < ANG270)
	.loc 1 543 21 discriminator 1
	cmpl	$-1073741825, -24(%rbp)	#, an
	ja	.L94	#,
# p_enemy.c:546: 					player->mo->y - actor->y);
	.loc 1 546 12
	movq	-8(%rbp), %rax	# player, tmp140
	movq	(%rax), %rax	# player_45->mo, _20
# p_enemy.c:546: 					player->mo->y - actor->y);
	.loc 1 546 16
	movl	28(%rax), %edx	# _20->y, _21
# p_enemy.c:546: 					player->mo->y - actor->y);
	.loc 1 546 27
	movq	-40(%rbp), %rax	# actor, tmp141
	movl	28(%rax), %eax	# actor_40(D)->y, _22
# p_enemy.c:545: 		dist = P_AproxDistance (player->mo->x - actor->x,
	.loc 1 545 10
	subl	%eax, %edx	# _22, _23
# p_enemy.c:545: 		dist = P_AproxDistance (player->mo->x - actor->x,
	.loc 1 545 33
	movq	-8(%rbp), %rax	# player, tmp142
	movq	(%rax), %rax	# player_45->mo, _24
# p_enemy.c:545: 		dist = P_AproxDistance (player->mo->x - actor->x,
	.loc 1 545 37
	movl	24(%rax), %esi	# _24->x, _25
# p_enemy.c:545: 		dist = P_AproxDistance (player->mo->x - actor->x,
	.loc 1 545 48
	movq	-40(%rbp), %rax	# actor, tmp143
	movl	24(%rax), %ecx	# actor_40(D)->x, _26
# p_enemy.c:545: 		dist = P_AproxDistance (player->mo->x - actor->x,
	.loc 1 545 10
	movl	%esi, %eax	# _25, _25
	subl	%ecx, %eax	# _26, _25
	movl	%edx, %esi	# _23,
	movl	%eax, %edi	# _27,
	call	P_AproxDistance@PLT	#
	movl	%eax, -20(%rbp)	# tmp144, dist
# p_enemy.c:548: 		if (dist > MELEERANGE)
	.loc 1 548 6
	cmpl	$4194304, -20(%rbp)	#, dist
	jg	.L99	#,
.L94:
# p_enemy.c:553: 	actor->target = player->mo;
	.loc 1 553 24
	movq	-8(%rbp), %rax	# player, tmp145
	movq	(%rax), %rdx	# player_45->mo, _28
# p_enemy.c:553: 	actor->target = player->mo;
	.loc 1 553 16
	movq	-40(%rbp), %rax	# actor, tmp146
	movq	%rdx, 176(%rax)	# _28, actor_40(D)->target
# p_enemy.c:554: 	return true;
	.loc 1 554 9
	movl	$1, %eax	#, _34
	jmp	.L91	#
.L96:
# p_enemy.c:518: 	    continue;
	.loc 1 518 6
	nop	
	jmp	.L88	#
.L97:
# p_enemy.c:530: 	    continue;		// dead
	.loc 1 530 6
	nop	
	jmp	.L88	#
.L98:
# p_enemy.c:533: 	    continue;		// out of sight
	.loc 1 533 6
	nop	
	jmp	.L88	#
.L99:
# p_enemy.c:549: 		    continue;	// behind back
	.loc 1 549 7
	nop	
.L88:
# p_enemy.c:515:     for ( ; ; actor->lastlook = (actor->lastlook+1)&3 )
	.loc 1 515 39
	movq	-40(%rbp), %rax	# actor, tmp147
	movl	200(%rax), %eax	# actor_40(D)->lastlook, _29
# p_enemy.c:515:     for ( ; ; actor->lastlook = (actor->lastlook+1)&3 )
	.loc 1 515 49
	addl	$1, %eax	#, _30
# p_enemy.c:515:     for ( ; ; actor->lastlook = (actor->lastlook+1)&3 )
	.loc 1 515 52
	andl	$3, %eax	#, _30
	movl	%eax, %edx	# _30, _31
# p_enemy.c:515:     for ( ; ; actor->lastlook = (actor->lastlook+1)&3 )
	.loc 1 515 31
	movq	-40(%rbp), %rax	# actor, tmp148
	movl	%edx, 200(%rax)	# _31, actor_40(D)->lastlook
# p_enemy.c:517: 	if (!playeringame[actor->lastlook])
	.loc 1 517 5
	jmp	.L95	#
.L91:
# p_enemy.c:558: }
	.loc 1 558 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	P_LookForPlayers, .-P_LookForPlayers
	.globl	A_KeenDie
	.type	A_KeenDie, @function
A_KeenDie:
.LFB14:
	.loc 1 567 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# mo, mo
# p_enemy.c:567: {
	.loc 1 567 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	movq	%rax, -8(%rbp)	# tmp100, D.9006
	xorl	%eax, %eax	# tmp100
# p_enemy.c:572:     A_Fall (mo);
	.loc 1 572 5
	movq	-120(%rbp), %rax	# mo, tmp86
	movq	%rax, %rdi	# tmp86,
	call	A_Fall	#
# p_enemy.c:576:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 576 13
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp87
	movq	%rax, -112(%rbp)	# tmp87, th
# p_enemy.c:576:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 576 5
	jmp	.L101	#
.L105:
# p_enemy.c:578: 	if (th->function.acp1 != (actionf_p1)P_MobjThinker)
	.loc 1 578 18
	movq	-112(%rbp), %rax	# th, tmp88
	movq	16(%rax), %rax	# th_5->function.acp1, _1
# p_enemy.c:578: 	if (th->function.acp1 != (actionf_p1)P_MobjThinker)
	.loc 1 578 5
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp90
	cmpq	%rdx, %rax	# tmp89, _1
	jne	.L107	#,
# p_enemy.c:581: 	mo2 = (mobj_t *)th;
	.loc 1 581 6
	movq	-112(%rbp), %rax	# th, tmp91
	movq	%rax, -104(%rbp)	# tmp91, mo2
# p_enemy.c:582: 	if (mo2 != mo
	.loc 1 582 5
	movq	-104(%rbp), %rax	# mo2, tmp92
	cmpq	-120(%rbp), %rax	# mo, tmp92
	je	.L103	#,
# p_enemy.c:583: 	    && mo2->type == mo->type
	.loc 1 583 12
	movq	-104(%rbp), %rax	# mo2, tmp93
	movl	128(%rax), %edx	# mo2_14->type, _2
# p_enemy.c:583: 	    && mo2->type == mo->type
	.loc 1 583 24
	movq	-120(%rbp), %rax	# mo, tmp94
	movl	128(%rax), %eax	# mo_8(D)->type, _3
# p_enemy.c:583: 	    && mo2->type == mo->type
	.loc 1 583 6
	cmpl	%eax, %edx	# _3, _2
	jne	.L103	#,
# p_enemy.c:584: 	    && mo2->health > 0)
	.loc 1 584 12
	movq	-104(%rbp), %rax	# mo2, tmp95
	movl	164(%rax), %eax	# mo2_14->health, _4
# p_enemy.c:584: 	    && mo2->health > 0)
	.loc 1 584 6
	testl	%eax, %eax	# _4
	jg	.L108	#,
	jmp	.L103	#
.L107:
# p_enemy.c:579: 	    continue;
	.loc 1 579 6
	nop	
.L103:
# p_enemy.c:576:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 576 55 discriminator 2
	movq	-112(%rbp), %rax	# th, tmp96
	movq	8(%rax), %rax	# th_5->next, tmp97
	movq	%rax, -112(%rbp)	# tmp97, th
.L101:
# p_enemy.c:576:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 576 36 discriminator 1
	leaq	thinkercap(%rip), %rax	#, tmp98
	cmpq	%rax, -112(%rbp)	# tmp98, th
	jne	.L105	#,
# p_enemy.c:591:     junk.tag = 666;
	.loc 1 591 14
	movw	$666, -68(%rbp)	#, junk.tag
# p_enemy.c:592:     EV_DoDoor(&junk,open);
	.loc 1 592 5
	leaq	-96(%rbp), %rax	#, tmp99
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	EV_DoDoor@PLT	#
	jmp	.L100	#
.L108:
# p_enemy.c:587: 	    return;		
	.loc 1 587 6 discriminator 1
	nop	
.L100:
# p_enemy.c:593: }
	.loc 1 593 1
	movq	-8(%rbp), %rax	# D.9006, tmp101
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	je	.L106	#,
	call	__stack_chk_fail@PLT	#
.L106:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	A_KeenDie, .-A_KeenDie
	.globl	A_Look
	.type	A_Look, @function
A_Look:
.LFB15:
	.loc 1 605 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:608:     actor->threshold = 0;	// any shot will wake up
	.loc 1 608 22
	movq	-24(%rbp), %rax	# actor, tmp107
	movl	$0, 188(%rax)	#, actor_31(D)->threshold
# p_enemy.c:609:     targ = actor->subsector->sector->soundtarget;
	.loc 1 609 17
	movq	-24(%rbp), %rax	# actor, tmp108
	movq	88(%rax), %rax	# actor_31(D)->subsector, _1
# p_enemy.c:609:     targ = actor->subsector->sector->soundtarget;
	.loc 1 609 28
	movq	(%rax), %rax	# _1->sector, _2
# p_enemy.c:609:     targ = actor->subsector->sector->soundtarget;
	.loc 1 609 10
	movq	24(%rax), %rax	# _2->soundtarget, tmp109
	movq	%rax, -8(%rbp)	# tmp109, targ
# p_enemy.c:611:     if (targ
	.loc 1 611 8
	cmpq	$0, -8(%rbp)	#, targ
	je	.L110	#,
# p_enemy.c:612: 	&& (targ->flags & MF_SHOOTABLE) )
	.loc 1 612 10
	movq	-8(%rbp), %rax	# targ, tmp110
	movl	160(%rax), %eax	# targ_33->flags, _3
# p_enemy.c:612: 	&& (targ->flags & MF_SHOOTABLE) )
	.loc 1 612 18
	andl	$4, %eax	#, _4
# p_enemy.c:612: 	&& (targ->flags & MF_SHOOTABLE) )
	.loc 1 612 2
	testl	%eax, %eax	# _4
	je	.L110	#,
# p_enemy.c:614: 	actor->target = targ;
	.loc 1 614 16
	movq	-24(%rbp), %rax	# actor, tmp111
	movq	-8(%rbp), %rdx	# targ, tmp112
	movq	%rdx, 176(%rax)	# tmp112, actor_31(D)->target
# p_enemy.c:616: 	if ( actor->flags & MF_AMBUSH )
	.loc 1 616 12
	movq	-24(%rbp), %rax	# actor, tmp113
	movl	160(%rax), %eax	# actor_31(D)->flags, _5
# p_enemy.c:616: 	if ( actor->flags & MF_AMBUSH )
	.loc 1 616 20
	andl	$32, %eax	#, _6
# p_enemy.c:616: 	if ( actor->flags & MF_AMBUSH )
	.loc 1 616 5
	testl	%eax, %eax	# _6
	je	.L123	#,
# p_enemy.c:618: 	    if (P_CheckSight (actor, actor->target))
	.loc 1 618 36
	movq	-24(%rbp), %rax	# actor, tmp114
	movq	176(%rax), %rdx	# actor_31(D)->target, _7
# p_enemy.c:618: 	    if (P_CheckSight (actor, actor->target))
	.loc 1 618 10
	movq	-24(%rbp), %rax	# actor, tmp115
	movq	%rdx, %rsi	# _7,
	movq	%rax, %rdi	# tmp115,
	call	P_CheckSight@PLT	#
# p_enemy.c:618: 	    if (P_CheckSight (actor, actor->target))
	.loc 1 618 9 discriminator 1
	testl	%eax, %eax	# _8
	jne	.L124	#,
.L110:
# p_enemy.c:626:     if (!P_LookForPlayers (actor, false) )
	.loc 1 626 10
	movq	-24(%rbp), %rax	# actor, tmp116
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	P_LookForPlayers	#
# p_enemy.c:626:     if (!P_LookForPlayers (actor, false) )
	.loc 1 626 8 discriminator 1
	testl	%eax, %eax	# _9
	je	.L125	#,
# p_enemy.c:630:   seeyou:
	.loc 1 630 3
	jmp	.L112	#
.L123:
# p_enemy.c:622: 	    goto seeyou;
	.loc 1 622 6
	nop	
	jmp	.L112	#
.L124:
# p_enemy.c:619: 		goto seeyou;
	.loc 1 619 3
	nop	
.L112:
# p_enemy.c:631:     if (actor->info->seesound)
	.loc 1 631 14
	movq	-24(%rbp), %rax	# actor, tmp117
	movq	136(%rax), %rax	# actor_31(D)->info, _10
# p_enemy.c:631:     if (actor->info->seesound)
	.loc 1 631 20
	movl	16(%rax), %eax	# _10->seesound, _11
# p_enemy.c:631:     if (actor->info->seesound)
	.loc 1 631 8
	testl	%eax, %eax	# _11
	je	.L114	#,
.LBB2:
# p_enemy.c:635: 	switch (actor->info->seesound)
	.loc 1 635 15
	movq	-24(%rbp), %rax	# actor, tmp118
	movq	136(%rax), %rax	# actor_31(D)->info, _12
# p_enemy.c:635: 	switch (actor->info->seesound)
	.loc 1 635 21
	movl	16(%rax), %eax	# _12->seesound, _13
# p_enemy.c:635: 	switch (actor->info->seesound)
	.loc 1 635 2
	cmpl	$38, %eax	#, _13
	jg	.L115	#,
	cmpl	$36, %eax	#, _13
	jge	.L116	#,
	jmp	.L117	#
.L115:
	subl	$39, %eax	#, _46
	cmpl	$1, %eax	#, _46
	ja	.L117	#,
	jmp	.L122	#
.L116:
# p_enemy.c:640: 	    sound = sfx_posit1+P_Random()%3;
	.loc 1 640 25
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _14
# p_enemy.c:640: 	    sound = sfx_posit1+P_Random()%3;
	.loc 1 640 35 discriminator 1
	movslq	%ecx, %rax	# _14, tmp119
	imulq	$1431655766, %rax, %rax	#, tmp119, tmp120
	shrq	$32, %rax	#, tmp120
	movq	%rax, %rdx	# tmp120, tmp121
	movl	%ecx, %eax	# _14, tmp122
	sarl	$31, %eax	#, tmp122
	subl	%eax, %edx	# tmp122, _15
	movl	%edx, %eax	# _15, tmp123
	addl	%eax, %eax	# tmp123
	addl	%edx, %eax	# _15, tmp123
	subl	%eax, %ecx	# tmp123, _14
	movl	%ecx, %edx	# _14, _15
# p_enemy.c:640: 	    sound = sfx_posit1+P_Random()%3;
	.loc 1 640 12 discriminator 1
	leal	36(%rdx), %eax	#, tmp124
	movl	%eax, -12(%rbp)	# tmp124, sound
# p_enemy.c:641: 	    break;
	.loc 1 641 6
	jmp	.L119	#
.L122:
# p_enemy.c:645: 	    sound = sfx_bgsit1+P_Random()%2;
	.loc 1 645 25
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _16
# p_enemy.c:645: 	    sound = sfx_bgsit1+P_Random()%2;
	.loc 1 645 35 discriminator 1
	movl	%edx, %eax	# _16, tmp125
	sarl	$31, %eax	#, tmp125
	shrl	$31, %eax	#, tmp126
	addl	%eax, %edx	# tmp126, tmp127
	andl	$1, %edx	#, tmp128
	subl	%eax, %edx	# tmp126, tmp129
	movl	%edx, %eax	# tmp129, _17
# p_enemy.c:645: 	    sound = sfx_bgsit1+P_Random()%2;
	.loc 1 645 12 discriminator 1
	addl	$39, %eax	#, tmp130
	movl	%eax, -12(%rbp)	# tmp130, sound
# p_enemy.c:646: 	    break;
	.loc 1 646 6
	jmp	.L119	#
.L117:
# p_enemy.c:649: 	    sound = actor->info->seesound;
	.loc 1 649 19
	movq	-24(%rbp), %rax	# actor, tmp131
	movq	136(%rax), %rax	# actor_31(D)->info, _18
# p_enemy.c:649: 	    sound = actor->info->seesound;
	.loc 1 649 12
	movl	16(%rax), %eax	# _18->seesound, tmp132
	movl	%eax, -12(%rbp)	# tmp132, sound
# p_enemy.c:650: 	    break;
	.loc 1 650 6
	nop	
.L119:
# p_enemy.c:653: 	if (actor->type==MT_SPIDER
	.loc 1 653 11
	movq	-24(%rbp), %rax	# actor, tmp133
	movl	128(%rax), %eax	# actor_31(D)->type, _19
# p_enemy.c:653: 	if (actor->type==MT_SPIDER
	.loc 1 653 5
	cmpl	$19, %eax	#, _19
	je	.L120	#,
# p_enemy.c:654: 	    || actor->type == MT_CYBORG)
	.loc 1 654 14
	movq	-24(%rbp), %rax	# actor, tmp134
	movl	128(%rax), %eax	# actor_31(D)->type, _20
# p_enemy.c:654: 	    || actor->type == MT_CYBORG)
	.loc 1 654 6
	cmpl	$21, %eax	#, _20
	jne	.L121	#,
.L120:
# p_enemy.c:657: 	    S_StartSound (NULL, sound);
	.loc 1 657 6
	movl	-12(%rbp), %eax	# sound, tmp135
	movl	%eax, %esi	# tmp135,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
	jmp	.L114	#
.L121:
# p_enemy.c:660: 	    S_StartSound (actor, sound);
	.loc 1 660 6
	movl	-12(%rbp), %edx	# sound, tmp136
	movq	-24(%rbp), %rax	# actor, tmp137
	movl	%edx, %esi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	S_StartSound@PLT	#
.L114:
.LBE2:
# p_enemy.c:663:     P_SetMobjState (actor, actor->info->seestate);
	.loc 1 663 33
	movq	-24(%rbp), %rax	# actor, tmp138
	movq	136(%rax), %rax	# actor_31(D)->info, _21
# p_enemy.c:663:     P_SetMobjState (actor, actor->info->seestate);
	.loc 1 663 39
	movl	12(%rax), %eax	# _21->seestate, _22
# p_enemy.c:663:     P_SetMobjState (actor, actor->info->seestate);
	.loc 1 663 5
	movl	%eax, %edx	# _22, _23
	movq	-24(%rbp), %rax	# actor, tmp139
	movl	%edx, %esi	# _23,
	movq	%rax, %rdi	# tmp139,
	call	P_SetMobjState@PLT	#
	jmp	.L109	#
.L125:
# p_enemy.c:627: 	return;
	.loc 1 627 2
	nop	
.L109:
# p_enemy.c:664: }
	.loc 1 664 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	A_Look, .-A_Look
	.globl	A_Chase
	.type	A_Chase, @function
A_Chase:
.LFB16:
	.loc 1 673 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:676:     if (actor->reactiontime)
	.loc 1 676 14
	movq	-24(%rbp), %rax	# actor, tmp152
	movl	184(%rax), %eax	# actor_83(D)->reactiontime, _1
# p_enemy.c:676:     if (actor->reactiontime)
	.loc 1 676 8
	testl	%eax, %eax	# _1
	je	.L127	#,
# p_enemy.c:677: 	actor->reactiontime--;
	.loc 1 677 7
	movq	-24(%rbp), %rax	# actor, tmp153
	movl	184(%rax), %eax	# actor_83(D)->reactiontime, _2
# p_enemy.c:677: 	actor->reactiontime--;
	.loc 1 677 21
	leal	-1(%rax), %edx	#, _3
	movq	-24(%rbp), %rax	# actor, tmp154
	movl	%edx, 184(%rax)	# _3, actor_83(D)->reactiontime
.L127:
# p_enemy.c:681:     if  (actor->threshold)
	.loc 1 681 15
	movq	-24(%rbp), %rax	# actor, tmp155
	movl	188(%rax), %eax	# actor_83(D)->threshold, _4
# p_enemy.c:681:     if  (actor->threshold)
	.loc 1 681 9
	testl	%eax, %eax	# _4
	je	.L128	#,
# p_enemy.c:683: 	if (!actor->target
	.loc 1 683 12
	movq	-24(%rbp), %rax	# actor, tmp156
	movq	176(%rax), %rax	# actor_83(D)->target, _5
# p_enemy.c:683: 	if (!actor->target
	.loc 1 683 5
	testq	%rax, %rax	# _5
	je	.L129	#,
# p_enemy.c:684: 	    || actor->target->health <= 0)
	.loc 1 684 14
	movq	-24(%rbp), %rax	# actor, tmp157
	movq	176(%rax), %rax	# actor_83(D)->target, _6
# p_enemy.c:684: 	    || actor->target->health <= 0)
	.loc 1 684 22
	movl	164(%rax), %eax	# _6->health, _7
# p_enemy.c:684: 	    || actor->target->health <= 0)
	.loc 1 684 6
	testl	%eax, %eax	# _7
	jg	.L130	#,
.L129:
# p_enemy.c:686: 	    actor->threshold = 0;
	.loc 1 686 23
	movq	-24(%rbp), %rax	# actor, tmp158
	movl	$0, 188(%rax)	#, actor_83(D)->threshold
	jmp	.L128	#
.L130:
# p_enemy.c:689: 	    actor->threshold--;
	.loc 1 689 11
	movq	-24(%rbp), %rax	# actor, tmp159
	movl	188(%rax), %eax	# actor_83(D)->threshold, _8
# p_enemy.c:689: 	    actor->threshold--;
	.loc 1 689 22
	leal	-1(%rax), %edx	#, _9
	movq	-24(%rbp), %rax	# actor, tmp160
	movl	%edx, 188(%rax)	# _9, actor_83(D)->threshold
.L128:
# p_enemy.c:693:     if (actor->movedir < 8)
	.loc 1 693 14
	movq	-24(%rbp), %rax	# actor, tmp161
	movl	168(%rax), %eax	# actor_83(D)->movedir, _10
# p_enemy.c:693:     if (actor->movedir < 8)
	.loc 1 693 8
	cmpl	$7, %eax	#, _10
	jg	.L131	#,
# p_enemy.c:695: 	actor->angle &= (7<<29);
	.loc 1 695 7
	movq	-24(%rbp), %rax	# actor, tmp162
	movl	56(%rax), %eax	# actor_83(D)->angle, _11
# p_enemy.c:695: 	actor->angle &= (7<<29);
	.loc 1 695 15
	andl	$-536870912, %eax	#, _11
	movl	%eax, %edx	# _11, _12
	movq	-24(%rbp), %rax	# actor, tmp163
	movl	%edx, 56(%rax)	# _12, actor_83(D)->angle
# p_enemy.c:696: 	delta = actor->angle - (actor->movedir << 29);
	.loc 1 696 15
	movq	-24(%rbp), %rax	# actor, tmp164
	movl	56(%rax), %ecx	# actor_83(D)->angle, _13
# p_enemy.c:696: 	delta = actor->angle - (actor->movedir << 29);
	.loc 1 696 31
	movq	-24(%rbp), %rax	# actor, tmp165
	movl	168(%rax), %eax	# actor_83(D)->movedir, _14
# p_enemy.c:696: 	delta = actor->angle - (actor->movedir << 29);
	.loc 1 696 41
	sall	$29, %eax	#, _15
	movl	%eax, %edx	# _15, _16
# p_enemy.c:696: 	delta = actor->angle - (actor->movedir << 29);
	.loc 1 696 23
	movl	%ecx, %eax	# _13, _13
	subl	%edx, %eax	# _16, _13
# p_enemy.c:696: 	delta = actor->angle - (actor->movedir << 29);
	.loc 1 696 8
	movl	%eax, -4(%rbp)	# _17, delta
# p_enemy.c:698: 	if (delta > 0)
	.loc 1 698 5
	cmpl	$0, -4(%rbp)	#, delta
	jle	.L132	#,
# p_enemy.c:699: 	    actor->angle -= ANG90/2;
	.loc 1 699 11
	movq	-24(%rbp), %rax	# actor, tmp166
	movl	56(%rax), %eax	# actor_83(D)->angle, _18
# p_enemy.c:699: 	    actor->angle -= ANG90/2;
	.loc 1 699 19
	leal	-536870912(%rax), %edx	#, _19
	movq	-24(%rbp), %rax	# actor, tmp167
	movl	%edx, 56(%rax)	# _19, actor_83(D)->angle
	jmp	.L131	#
.L132:
# p_enemy.c:700: 	else if (delta < 0)
	.loc 1 700 10
	cmpl	$0, -4(%rbp)	#, delta
	jns	.L131	#,
# p_enemy.c:701: 	    actor->angle += ANG90/2;
	.loc 1 701 11
	movq	-24(%rbp), %rax	# actor, tmp168
	movl	56(%rax), %eax	# actor_83(D)->angle, _20
# p_enemy.c:701: 	    actor->angle += ANG90/2;
	.loc 1 701 19
	leal	536870912(%rax), %edx	#, _21
	movq	-24(%rbp), %rax	# actor, tmp169
	movl	%edx, 56(%rax)	# _21, actor_83(D)->angle
.L131:
# p_enemy.c:704:     if (!actor->target
	.loc 1 704 15
	movq	-24(%rbp), %rax	# actor, tmp170
	movq	176(%rax), %rax	# actor_83(D)->target, _22
# p_enemy.c:704:     if (!actor->target
	.loc 1 704 8
	testq	%rax, %rax	# _22
	je	.L133	#,
# p_enemy.c:705: 	|| !(actor->target->flags&MF_SHOOTABLE))
	.loc 1 705 12
	movq	-24(%rbp), %rax	# actor, tmp171
	movq	176(%rax), %rax	# actor_83(D)->target, _23
# p_enemy.c:705: 	|| !(actor->target->flags&MF_SHOOTABLE))
	.loc 1 705 20
	movl	160(%rax), %eax	# _23->flags, _24
# p_enemy.c:705: 	|| !(actor->target->flags&MF_SHOOTABLE))
	.loc 1 705 27
	andl	$4, %eax	#, _25
# p_enemy.c:705: 	|| !(actor->target->flags&MF_SHOOTABLE))
	.loc 1 705 2
	testl	%eax, %eax	# _25
	jne	.L134	#,
.L133:
# p_enemy.c:708: 	if (P_LookForPlayers(actor,true))
	.loc 1 708 6
	movq	-24(%rbp), %rax	# actor, tmp172
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp172,
	call	P_LookForPlayers	#
# p_enemy.c:708: 	if (P_LookForPlayers(actor,true))
	.loc 1 708 5 discriminator 1
	testl	%eax, %eax	# _26
	jne	.L147	#,
# p_enemy.c:711: 	P_SetMobjState (actor, actor->info->spawnstate);
	.loc 1 711 30
	movq	-24(%rbp), %rax	# actor, tmp173
	movq	136(%rax), %rax	# actor_83(D)->info, _27
# p_enemy.c:711: 	P_SetMobjState (actor, actor->info->spawnstate);
	.loc 1 711 36
	movl	4(%rax), %eax	# _27->spawnstate, _28
# p_enemy.c:711: 	P_SetMobjState (actor, actor->info->spawnstate);
	.loc 1 711 2
	movl	%eax, %edx	# _28, _29
	movq	-24(%rbp), %rax	# actor, tmp174
	movl	%edx, %esi	# _29,
	movq	%rax, %rdi	# tmp174,
	call	P_SetMobjState@PLT	#
# p_enemy.c:712: 	return;
	.loc 1 712 2
	jmp	.L126	#
.L134:
# p_enemy.c:716:     if (actor->flags & MF_JUSTATTACKED)
	.loc 1 716 14
	movq	-24(%rbp), %rax	# actor, tmp175
	movl	160(%rax), %eax	# actor_83(D)->flags, _30
# p_enemy.c:716:     if (actor->flags & MF_JUSTATTACKED)
	.loc 1 716 22
	andl	$128, %eax	#, _31
# p_enemy.c:716:     if (actor->flags & MF_JUSTATTACKED)
	.loc 1 716 8
	testl	%eax, %eax	# _31
	je	.L137	#,
# p_enemy.c:718: 	actor->flags &= ~MF_JUSTATTACKED;
	.loc 1 718 7
	movq	-24(%rbp), %rax	# actor, tmp176
	movl	160(%rax), %eax	# actor_83(D)->flags, _32
# p_enemy.c:718: 	actor->flags &= ~MF_JUSTATTACKED;
	.loc 1 718 15
	andb	$127, %al	#, _32
	movl	%eax, %edx	# _32, _33
	movq	-24(%rbp), %rax	# actor, tmp177
	movl	%edx, 160(%rax)	# _33, actor_83(D)->flags
# p_enemy.c:719: 	if (gameskill != sk_nightmare && !fastparm)
	.loc 1 719 16
	movl	gameskill(%rip), %eax	# gameskill, gameskill.21_34
# p_enemy.c:719: 	if (gameskill != sk_nightmare && !fastparm)
	.loc 1 719 5
	cmpl	$4, %eax	#, gameskill.21_34
	je	.L148	#,
# p_enemy.c:719: 	if (gameskill != sk_nightmare && !fastparm)
	.loc 1 719 35 discriminator 1
	movl	fastparm(%rip), %eax	# fastparm, fastparm.22_35
# p_enemy.c:719: 	if (gameskill != sk_nightmare && !fastparm)
	.loc 1 719 32 discriminator 1
	testl	%eax, %eax	# fastparm.22_35
	jne	.L148	#,
# p_enemy.c:720: 	    P_NewChaseDir (actor);
	.loc 1 720 6
	movq	-24(%rbp), %rax	# actor, tmp178
	movq	%rax, %rdi	# tmp178,
	call	P_NewChaseDir	#
# p_enemy.c:721: 	return;
	.loc 1 721 2
	jmp	.L148	#
.L137:
# p_enemy.c:725:     if (actor->info->meleestate
	.loc 1 725 14
	movq	-24(%rbp), %rax	# actor, tmp179
	movq	136(%rax), %rax	# actor_83(D)->info, _36
# p_enemy.c:725:     if (actor->info->meleestate
	.loc 1 725 20
	movl	40(%rax), %eax	# _36->meleestate, _37
# p_enemy.c:725:     if (actor->info->meleestate
	.loc 1 725 8
	testl	%eax, %eax	# _37
	je	.L139	#,
# p_enemy.c:726: 	&& P_CheckMeleeRange (actor))
	.loc 1 726 5
	movq	-24(%rbp), %rax	# actor, tmp180
	movq	%rax, %rdi	# tmp180,
	call	P_CheckMeleeRange	#
# p_enemy.c:726: 	&& P_CheckMeleeRange (actor))
	.loc 1 726 2 discriminator 1
	testl	%eax, %eax	# _38
	je	.L139	#,
# p_enemy.c:728: 	if (actor->info->attacksound)
	.loc 1 728 11
	movq	-24(%rbp), %rax	# actor, tmp181
	movq	136(%rax), %rax	# actor_83(D)->info, _39
# p_enemy.c:728: 	if (actor->info->attacksound)
	.loc 1 728 17
	movl	24(%rax), %eax	# _39->attacksound, _40
# p_enemy.c:728: 	if (actor->info->attacksound)
	.loc 1 728 5
	testl	%eax, %eax	# _40
	je	.L140	#,
# p_enemy.c:729: 	    S_StartSound (actor, actor->info->attacksound);
	.loc 1 729 32
	movq	-24(%rbp), %rax	# actor, tmp182
	movq	136(%rax), %rax	# actor_83(D)->info, _41
# p_enemy.c:729: 	    S_StartSound (actor, actor->info->attacksound);
	.loc 1 729 6
	movl	24(%rax), %edx	# _41->attacksound, _42
	movq	-24(%rbp), %rax	# actor, tmp183
	movl	%edx, %esi	# _42,
	movq	%rax, %rdi	# tmp183,
	call	S_StartSound@PLT	#
.L140:
# p_enemy.c:731: 	P_SetMobjState (actor, actor->info->meleestate);
	.loc 1 731 30
	movq	-24(%rbp), %rax	# actor, tmp184
	movq	136(%rax), %rax	# actor_83(D)->info, _43
# p_enemy.c:731: 	P_SetMobjState (actor, actor->info->meleestate);
	.loc 1 731 36
	movl	40(%rax), %eax	# _43->meleestate, _44
# p_enemy.c:731: 	P_SetMobjState (actor, actor->info->meleestate);
	.loc 1 731 2
	movl	%eax, %edx	# _44, _45
	movq	-24(%rbp), %rax	# actor, tmp185
	movl	%edx, %esi	# _45,
	movq	%rax, %rdi	# tmp185,
	call	P_SetMobjState@PLT	#
# p_enemy.c:732: 	return;
	.loc 1 732 2
	jmp	.L126	#
.L139:
# p_enemy.c:736:     if (actor->info->missilestate)
	.loc 1 736 14
	movq	-24(%rbp), %rax	# actor, tmp186
	movq	136(%rax), %rax	# actor_83(D)->info, _46
# p_enemy.c:736:     if (actor->info->missilestate)
	.loc 1 736 20
	movl	44(%rax), %eax	# _46->missilestate, _47
# p_enemy.c:736:     if (actor->info->missilestate)
	.loc 1 736 8
	testl	%eax, %eax	# _47
	je	.L149	#,
# p_enemy.c:738: 	if (gameskill < sk_nightmare
	.loc 1 738 16
	movl	gameskill(%rip), %eax	# gameskill, gameskill.23_48
# p_enemy.c:738: 	if (gameskill < sk_nightmare
	.loc 1 738 5
	cmpl	$3, %eax	#, gameskill.23_48
	ja	.L142	#,
# p_enemy.c:739: 	    && !fastparm && actor->movecount)
	.loc 1 739 9
	movl	fastparm(%rip), %eax	# fastparm, fastparm.24_49
# p_enemy.c:739: 	    && !fastparm && actor->movecount)
	.loc 1 739 6
	testl	%eax, %eax	# fastparm.24_49
	jne	.L142	#,
# p_enemy.c:739: 	    && !fastparm && actor->movecount)
	.loc 1 739 27 discriminator 1
	movq	-24(%rbp), %rax	# actor, tmp187
	movl	172(%rax), %eax	# actor_83(D)->movecount, _50
# p_enemy.c:739: 	    && !fastparm && actor->movecount)
	.loc 1 739 19 discriminator 1
	testl	%eax, %eax	# _50
	jne	.L150	#,
.L142:
# p_enemy.c:744: 	if (!P_CheckMissileRange (actor))
	.loc 1 744 7
	movq	-24(%rbp), %rax	# actor, tmp188
	movq	%rax, %rdi	# tmp188,
	call	P_CheckMissileRange	#
# p_enemy.c:744: 	if (!P_CheckMissileRange (actor))
	.loc 1 744 5 discriminator 1
	testl	%eax, %eax	# _51
	je	.L151	#,
# p_enemy.c:747: 	P_SetMobjState (actor, actor->info->missilestate);
	.loc 1 747 30
	movq	-24(%rbp), %rax	# actor, tmp189
	movq	136(%rax), %rax	# actor_83(D)->info, _52
# p_enemy.c:747: 	P_SetMobjState (actor, actor->info->missilestate);
	.loc 1 747 36
	movl	44(%rax), %eax	# _52->missilestate, _53
# p_enemy.c:747: 	P_SetMobjState (actor, actor->info->missilestate);
	.loc 1 747 2
	movl	%eax, %edx	# _53, _54
	movq	-24(%rbp), %rax	# actor, tmp190
	movl	%edx, %esi	# _54,
	movq	%rax, %rdi	# tmp190,
	call	P_SetMobjState@PLT	#
# p_enemy.c:748: 	actor->flags |= MF_JUSTATTACKED;
	.loc 1 748 7
	movq	-24(%rbp), %rax	# actor, tmp191
	movl	160(%rax), %eax	# actor_83(D)->flags, _55
# p_enemy.c:748: 	actor->flags |= MF_JUSTATTACKED;
	.loc 1 748 15
	orb	$-128, %al	#, _55
	movl	%eax, %edx	# _55, _56
	movq	-24(%rbp), %rax	# actor, tmp192
	movl	%edx, 160(%rax)	# _56, actor_83(D)->flags
# p_enemy.c:749: 	return;
	.loc 1 749 2
	jmp	.L126	#
.L149:
# p_enemy.c:753:   nomissile:
	.loc 1 753 3
	nop	
	jmp	.L141	#
.L150:
# p_enemy.c:741: 	    goto nomissile;
	.loc 1 741 6
	nop	
	jmp	.L141	#
.L151:
# p_enemy.c:745: 	    goto nomissile;
	.loc 1 745 6
	nop	
.L141:
# p_enemy.c:755:     if (netgame
	.loc 1 755 9
	movl	netgame(%rip), %eax	# netgame, netgame.25_57
# p_enemy.c:755:     if (netgame
	.loc 1 755 8
	testl	%eax, %eax	# netgame.25_57
	je	.L144	#,
# p_enemy.c:756: 	&& !actor->threshold
	.loc 1 756 11
	movq	-24(%rbp), %rax	# actor, tmp193
	movl	188(%rax), %eax	# actor_83(D)->threshold, _58
# p_enemy.c:756: 	&& !actor->threshold
	.loc 1 756 2
	testl	%eax, %eax	# _58
	jne	.L144	#,
# p_enemy.c:757: 	&& !P_CheckSight (actor, actor->target) )
	.loc 1 757 32
	movq	-24(%rbp), %rax	# actor, tmp194
	movq	176(%rax), %rdx	# actor_83(D)->target, _59
# p_enemy.c:757: 	&& !P_CheckSight (actor, actor->target) )
	.loc 1 757 6
	movq	-24(%rbp), %rax	# actor, tmp195
	movq	%rdx, %rsi	# _59,
	movq	%rax, %rdi	# tmp195,
	call	P_CheckSight@PLT	#
# p_enemy.c:757: 	&& !P_CheckSight (actor, actor->target) )
	.loc 1 757 2 discriminator 1
	testl	%eax, %eax	# _60
	jne	.L144	#,
# p_enemy.c:759: 	if (P_LookForPlayers(actor,true))
	.loc 1 759 6
	movq	-24(%rbp), %rax	# actor, tmp196
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp196,
	call	P_LookForPlayers	#
# p_enemy.c:759: 	if (P_LookForPlayers(actor,true))
	.loc 1 759 5 discriminator 1
	testl	%eax, %eax	# _61
	jne	.L152	#,
.L144:
# p_enemy.c:764:     if (--actor->movecount<0
	.loc 1 764 16
	movq	-24(%rbp), %rax	# actor, tmp197
	movl	172(%rax), %eax	# actor_83(D)->movecount, _62
# p_enemy.c:764:     if (--actor->movecount<0
	.loc 1 764 9
	leal	-1(%rax), %edx	#, _63
# p_enemy.c:764:     if (--actor->movecount<0
	.loc 1 764 8
	movq	-24(%rbp), %rax	# actor, tmp198
	movl	%edx, 172(%rax)	# _63, actor_83(D)->movecount
# p_enemy.c:764:     if (--actor->movecount<0
	.loc 1 764 16
	movq	-24(%rbp), %rax	# actor, tmp199
	movl	172(%rax), %eax	# actor_83(D)->movecount, _64
# p_enemy.c:764:     if (--actor->movecount<0
	.loc 1 764 8
	testl	%eax, %eax	# _64
	js	.L145	#,
# p_enemy.c:765: 	|| !P_Move (actor))
	.loc 1 765 6
	movq	-24(%rbp), %rax	# actor, tmp200
	movq	%rax, %rdi	# tmp200,
	call	P_Move	#
# p_enemy.c:765: 	|| !P_Move (actor))
	.loc 1 765 2 discriminator 1
	testl	%eax, %eax	# _65
	jne	.L146	#,
.L145:
# p_enemy.c:767: 	P_NewChaseDir (actor);
	.loc 1 767 2
	movq	-24(%rbp), %rax	# actor, tmp201
	movq	%rax, %rdi	# tmp201,
	call	P_NewChaseDir	#
.L146:
# p_enemy.c:771:     if (actor->info->activesound
	.loc 1 771 14
	movq	-24(%rbp), %rax	# actor, tmp202
	movq	136(%rax), %rax	# actor_83(D)->info, _66
# p_enemy.c:771:     if (actor->info->activesound
	.loc 1 771 20
	movl	80(%rax), %eax	# _66->activesound, _67
# p_enemy.c:771:     if (actor->info->activesound
	.loc 1 771 8
	testl	%eax, %eax	# _67
	je	.L126	#,
# p_enemy.c:772: 	&& P_Random () < 3)
	.loc 1 772 5
	call	P_Random@PLT	#
# p_enemy.c:772: 	&& P_Random () < 3)
	.loc 1 772 2 discriminator 1
	cmpl	$2, %eax	#, _68
	jg	.L126	#,
# p_enemy.c:774: 	S_StartSound (actor, actor->info->activesound);
	.loc 1 774 28
	movq	-24(%rbp), %rax	# actor, tmp203
	movq	136(%rax), %rax	# actor_83(D)->info, _69
# p_enemy.c:774: 	S_StartSound (actor, actor->info->activesound);
	.loc 1 774 2
	movl	80(%rax), %edx	# _69->activesound, _70
	movq	-24(%rbp), %rax	# actor, tmp204
	movl	%edx, %esi	# _70,
	movq	%rax, %rdi	# tmp204,
	call	S_StartSound@PLT	#
	jmp	.L126	#
.L147:
# p_enemy.c:709: 	    return; 	// got a new target
	.loc 1 709 6
	nop	
	jmp	.L126	#
.L148:
# p_enemy.c:721: 	return;
	.loc 1 721 2
	nop	
	jmp	.L126	#
.L152:
# p_enemy.c:760: 	    return;	// got a new target
	.loc 1 760 6
	nop	
.L126:
# p_enemy.c:776: }
	.loc 1 776 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	A_Chase, .-A_Chase
	.globl	A_FaceTarget
	.type	A_FaceTarget, @function
A_FaceTarget:
.LFB17:
	.loc 1 783 1
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
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:784:     if (!actor->target)
	.loc 1 784 15
	movq	-24(%rbp), %rax	# actor, tmp102
	movq	176(%rax), %rax	# actor_22(D)->target, _1
# p_enemy.c:784:     if (!actor->target)
	.loc 1 784 8
	testq	%rax, %rax	# _1
	je	.L156	#,
# p_enemy.c:787:     actor->flags &= ~MF_AMBUSH;
	.loc 1 787 10
	movq	-24(%rbp), %rax	# actor, tmp103
	movl	160(%rax), %eax	# actor_22(D)->flags, _2
# p_enemy.c:787:     actor->flags &= ~MF_AMBUSH;
	.loc 1 787 18
	andl	$-33, %eax	#, _2
	movl	%eax, %edx	# _2, _3
	movq	-24(%rbp), %rax	# actor, tmp104
	movl	%edx, 160(%rax)	# _3, actor_22(D)->flags
# p_enemy.c:792: 				    actor->target->y);
	.loc 1 792 14
	movq	-24(%rbp), %rax	# actor, tmp105
	movq	176(%rax), %rax	# actor_22(D)->target, _4
# p_enemy.c:789:     actor->angle = R_PointToAngle2 (actor->x,
	.loc 1 789 20
	movl	28(%rax), %ecx	# _4->y, _5
# p_enemy.c:791: 				    actor->target->x,
	.loc 1 791 14
	movq	-24(%rbp), %rax	# actor, tmp106
	movq	176(%rax), %rax	# actor_22(D)->target, _6
# p_enemy.c:789:     actor->angle = R_PointToAngle2 (actor->x,
	.loc 1 789 20
	movl	24(%rax), %edx	# _6->x, _7
	movq	-24(%rbp), %rax	# actor, tmp107
	movl	28(%rax), %esi	# actor_22(D)->y, _8
	movq	-24(%rbp), %rax	# actor, tmp108
	movl	24(%rax), %eax	# actor_22(D)->x, _9
	movl	%eax, %edi	# _9,
	call	R_PointToAngle2@PLT	#
# p_enemy.c:789:     actor->angle = R_PointToAngle2 (actor->x,
	.loc 1 789 18 discriminator 1
	movq	-24(%rbp), %rdx	# actor, tmp109
	movl	%eax, 56(%rdx)	# _10, actor_22(D)->angle
# p_enemy.c:794:     if (actor->target->flags & MF_SHADOW)
	.loc 1 794 14
	movq	-24(%rbp), %rax	# actor, tmp110
	movq	176(%rax), %rax	# actor_22(D)->target, _11
# p_enemy.c:794:     if (actor->target->flags & MF_SHADOW)
	.loc 1 794 22
	movl	160(%rax), %eax	# _11->flags, _12
# p_enemy.c:794:     if (actor->target->flags & MF_SHADOW)
	.loc 1 794 30
	andl	$262144, %eax	#, _13
# p_enemy.c:794:     if (actor->target->flags & MF_SHADOW)
	.loc 1 794 8
	testl	%eax, %eax	# _13
	je	.L153	#,
# p_enemy.c:795: 	actor->angle += (P_Random()-P_Random())<<21;
	.loc 1 795 19
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _14
# p_enemy.c:795: 	actor->angle += (P_Random()-P_Random())<<21;
	.loc 1 795 30 discriminator 1
	call	P_Random@PLT	#
# p_enemy.c:795: 	actor->angle += (P_Random()-P_Random())<<21;
	.loc 1 795 29 discriminator 2
	subl	%eax, %ebx	# _15, _14
	movl	%ebx, %edx	# _14, _16
# p_enemy.c:795: 	actor->angle += (P_Random()-P_Random())<<21;
	.loc 1 795 41 discriminator 2
	sall	$21, %edx	#, _28
# p_enemy.c:795: 	actor->angle += (P_Random()-P_Random())<<21;
	.loc 1 795 7 discriminator 2
	movq	-24(%rbp), %rax	# actor, tmp111
	movl	56(%rax), %eax	# actor_22(D)->angle, _17
# p_enemy.c:795: 	actor->angle += (P_Random()-P_Random())<<21;
	.loc 1 795 15 discriminator 2
	addl	%eax, %edx	# _17, _19
	movq	-24(%rbp), %rax	# actor, tmp112
	movl	%edx, 56(%rax)	# _19, actor_22(D)->angle
	jmp	.L153	#
.L156:
# p_enemy.c:785: 	return;
	.loc 1 785 2
	nop	
.L153:
# p_enemy.c:796: }
	.loc 1 796 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	A_FaceTarget, .-A_FaceTarget
	.globl	A_PosAttack
	.type	A_PosAttack, @function
A_PosAttack:
.LFB18:
	.loc 1 803 1
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
	movq	%rdi, -40(%rbp)	# actor, actor
# p_enemy.c:808:     if (!actor->target)
	.loc 1 808 15
	movq	-40(%rbp), %rax	# actor, tmp93
	movq	176(%rax), %rax	# actor_13(D)->target, _1
# p_enemy.c:808:     if (!actor->target)
	.loc 1 808 8
	testq	%rax, %rax	# _1
	je	.L160	#,
# p_enemy.c:811:     A_FaceTarget (actor);
	.loc 1 811 5
	movq	-40(%rbp), %rax	# actor, tmp94
	movq	%rax, %rdi	# tmp94,
	call	A_FaceTarget	#
# p_enemy.c:812:     angle = actor->angle;
	.loc 1 812 18
	movq	-40(%rbp), %rax	# actor, tmp95
	movl	56(%rax), %eax	# actor_13(D)->angle, _2
# p_enemy.c:812:     angle = actor->angle;
	.loc 1 812 11
	movl	%eax, -28(%rbp)	# _2, angle
# p_enemy.c:813:     slope = P_AimLineAttack (actor, angle, MISSILERANGE);
	.loc 1 813 13
	movl	-28(%rbp), %ecx	# angle, angle.26_3
	movq	-40(%rbp), %rax	# actor, tmp96
	movl	$134217728, %edx	#,
	movl	%ecx, %esi	# angle.26_3,
	movq	%rax, %rdi	# tmp96,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -24(%rbp)	# tmp97, slope
# p_enemy.c:815:     S_StartSound (actor, sfx_pistol);
	.loc 1 815 5
	movq	-40(%rbp), %rax	# actor, tmp98
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	S_StartSound@PLT	#
# p_enemy.c:816:     angle += (P_Random()-P_Random())<<20;
	.loc 1 816 15
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _4
# p_enemy.c:816:     angle += (P_Random()-P_Random())<<20;
	.loc 1 816 26 discriminator 1
	call	P_Random@PLT	#
# p_enemy.c:816:     angle += (P_Random()-P_Random())<<20;
	.loc 1 816 25 discriminator 2
	subl	%eax, %ebx	# _5, _4
	movl	%ebx, %edx	# _4, _6
# p_enemy.c:816:     angle += (P_Random()-P_Random())<<20;
	.loc 1 816 37 discriminator 2
	movl	%edx, %eax	# _6, _6
	sall	$20, %eax	#, _6
# p_enemy.c:816:     angle += (P_Random()-P_Random())<<20;
	.loc 1 816 11 discriminator 2
	addl	%eax, -28(%rbp)	# _21, angle
# p_enemy.c:817:     damage = ((P_Random()%5)+1)*3;
	.loc 1 817 16
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _7
# p_enemy.c:817:     damage = ((P_Random()%5)+1)*3;
	.loc 1 817 26 discriminator 1
	movslq	%ecx, %rax	# _7, tmp99
	imulq	$1717986919, %rax, %rax	#, tmp99, tmp100
	shrq	$32, %rax	#, tmp101
	movl	%eax, %edx	# tmp101, tmp102
	sarl	%edx	# tmp102
	movl	%ecx, %eax	# _7, tmp103
	sarl	$31, %eax	#, tmp103
	subl	%eax, %edx	# tmp103, _8
	movl	%edx, %eax	# _8, tmp104
	sall	$2, %eax	#, tmp104
	addl	%edx, %eax	# _8, tmp104
	subl	%eax, %ecx	# tmp104, _7
	movl	%ecx, %edx	# _7, _8
# p_enemy.c:817:     damage = ((P_Random()%5)+1)*3;
	.loc 1 817 29 discriminator 1
	addl	$1, %edx	#, _9
# p_enemy.c:817:     damage = ((P_Random()%5)+1)*3;
	.loc 1 817 12 discriminator 1
	movl	%edx, %eax	# _9, tmp105
	addl	%eax, %eax	# tmp105
	addl	%edx, %eax	# _9, tmp106
	movl	%eax, -20(%rbp)	# tmp106, damage
# p_enemy.c:818:     P_LineAttack (actor, angle, MISSILERANGE, slope, damage);
	.loc 1 818 5
	movl	-28(%rbp), %esi	# angle, angle.27_10
	movl	-20(%rbp), %ecx	# damage, tmp107
	movl	-24(%rbp), %edx	# slope, tmp108
	movq	-40(%rbp), %rax	# actor, tmp109
	movl	%ecx, %r8d	# tmp107,
	movl	%edx, %ecx	# tmp108,
	movl	$134217728, %edx	#,
	movq	%rax, %rdi	# tmp109,
	call	P_LineAttack@PLT	#
	jmp	.L157	#
.L160:
# p_enemy.c:809: 	return;
	.loc 1 809 2
	nop	
.L157:
# p_enemy.c:819: }
	.loc 1 819 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	A_PosAttack, .-A_PosAttack
	.globl	A_SPosAttack
	.type	A_SPosAttack, @function
A_SPosAttack:
.LFB19:
	.loc 1 822 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# actor, actor
# p_enemy.c:829:     if (!actor->target)
	.loc 1 829 15
	movq	-56(%rbp), %rax	# actor, tmp93
	movq	176(%rax), %rax	# actor_16(D)->target, _1
# p_enemy.c:829:     if (!actor->target)
	.loc 1 829 8
	testq	%rax, %rax	# _1
	je	.L166	#,
# p_enemy.c:832:     S_StartSound (actor, sfx_shotgn);
	.loc 1 832 5
	movq	-56(%rbp), %rax	# actor, tmp94
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	S_StartSound@PLT	#
# p_enemy.c:833:     A_FaceTarget (actor);
	.loc 1 833 5
	movq	-56(%rbp), %rax	# actor, tmp95
	movq	%rax, %rdi	# tmp95,
	call	A_FaceTarget	#
# p_enemy.c:834:     bangle = actor->angle;
	.loc 1 834 19
	movq	-56(%rbp), %rax	# actor, tmp96
	movl	56(%rax), %eax	# actor_16(D)->angle, _2
# p_enemy.c:834:     bangle = actor->angle;
	.loc 1 834 12
	movl	%eax, -32(%rbp)	# _2, bangle
# p_enemy.c:835:     slope = P_AimLineAttack (actor, bangle, MISSILERANGE);
	.loc 1 835 13
	movl	-32(%rbp), %ecx	# bangle, bangle.28_3
	movq	-56(%rbp), %rax	# actor, tmp97
	movl	$134217728, %edx	#,
	movl	%ecx, %esi	# bangle.28_3,
	movq	%rax, %rdi	# tmp97,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -28(%rbp)	# tmp98, slope
# p_enemy.c:837:     for (i=0 ; i<3 ; i++)
	.loc 1 837 11
	movl	$0, -36(%rbp)	#, i
# p_enemy.c:837:     for (i=0 ; i<3 ; i++)
	.loc 1 837 5
	jmp	.L164	#
.L165:
# p_enemy.c:839: 	angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 839 21
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _4
# p_enemy.c:839: 	angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 839 32 discriminator 1
	call	P_Random@PLT	#
# p_enemy.c:839: 	angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 839 31 discriminator 2
	subl	%eax, %ebx	# _5, _4
	movl	%ebx, %edx	# _4, _6
# p_enemy.c:839: 	angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 839 43 discriminator 2
	sall	$20, %edx	#, _7
# p_enemy.c:839: 	angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 839 8 discriminator 2
	movl	-32(%rbp), %eax	# bangle, tmp102
	addl	%edx, %eax	# _7, tmp101
	movl	%eax, -24(%rbp)	# tmp101, angle
# p_enemy.c:840: 	damage = ((P_Random()%5)+1)*3;
	.loc 1 840 13
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _8
# p_enemy.c:840: 	damage = ((P_Random()%5)+1)*3;
	.loc 1 840 23 discriminator 1
	movslq	%ecx, %rax	# _8, tmp103
	imulq	$1717986919, %rax, %rax	#, tmp103, tmp104
	shrq	$32, %rax	#, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	sarl	%edx	# tmp106
	movl	%ecx, %eax	# _8, tmp107
	sarl	$31, %eax	#, tmp107
	subl	%eax, %edx	# tmp107, _9
	movl	%edx, %eax	# _9, tmp108
	sall	$2, %eax	#, tmp108
	addl	%edx, %eax	# _9, tmp108
	subl	%eax, %ecx	# tmp108, _8
	movl	%ecx, %edx	# _8, _9
# p_enemy.c:840: 	damage = ((P_Random()%5)+1)*3;
	.loc 1 840 26 discriminator 1
	addl	$1, %edx	#, _10
# p_enemy.c:840: 	damage = ((P_Random()%5)+1)*3;
	.loc 1 840 9 discriminator 1
	movl	%edx, %eax	# _10, tmp109
	addl	%eax, %eax	# tmp109
	addl	%edx, %eax	# _10, tmp110
	movl	%eax, -20(%rbp)	# tmp110, damage
# p_enemy.c:841: 	P_LineAttack (actor, angle, MISSILERANGE, slope, damage);
	.loc 1 841 2
	movl	-24(%rbp), %esi	# angle, angle.29_11
	movl	-20(%rbp), %ecx	# damage, tmp111
	movl	-28(%rbp), %edx	# slope, tmp112
	movq	-56(%rbp), %rax	# actor, tmp113
	movl	%ecx, %r8d	# tmp111,
	movl	%edx, %ecx	# tmp112,
	movl	$134217728, %edx	#,
	movq	%rax, %rdi	# tmp113,
	call	P_LineAttack@PLT	#
# p_enemy.c:837:     for (i=0 ; i<3 ; i++)
	.loc 1 837 23 discriminator 3
	addl	$1, -36(%rbp)	#, i
.L164:
# p_enemy.c:837:     for (i=0 ; i<3 ; i++)
	.loc 1 837 17 discriminator 1
	cmpl	$2, -36(%rbp)	#, i
	jle	.L165	#,
	jmp	.L161	#
.L166:
# p_enemy.c:830: 	return;
	.loc 1 830 2
	nop	
.L161:
# p_enemy.c:843: }
	.loc 1 843 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	A_SPosAttack, .-A_SPosAttack
	.globl	A_CPosAttack
	.type	A_CPosAttack, @function
A_CPosAttack:
.LFB20:
	.loc 1 846 1
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
	movq	%rdi, -40(%rbp)	# actor, actor
# p_enemy.c:852:     if (!actor->target)
	.loc 1 852 15
	movq	-40(%rbp), %rax	# actor, tmp93
	movq	176(%rax), %rax	# actor_14(D)->target, _1
# p_enemy.c:852:     if (!actor->target)
	.loc 1 852 8
	testq	%rax, %rax	# _1
	je	.L170	#,
# p_enemy.c:855:     S_StartSound (actor, sfx_shotgn);
	.loc 1 855 5
	movq	-40(%rbp), %rax	# actor, tmp94
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	S_StartSound@PLT	#
# p_enemy.c:856:     A_FaceTarget (actor);
	.loc 1 856 5
	movq	-40(%rbp), %rax	# actor, tmp95
	movq	%rax, %rdi	# tmp95,
	call	A_FaceTarget	#
# p_enemy.c:857:     bangle = actor->angle;
	.loc 1 857 19
	movq	-40(%rbp), %rax	# actor, tmp96
	movl	56(%rax), %eax	# actor_14(D)->angle, _2
# p_enemy.c:857:     bangle = actor->angle;
	.loc 1 857 12
	movl	%eax, -32(%rbp)	# _2, bangle
# p_enemy.c:858:     slope = P_AimLineAttack (actor, bangle, MISSILERANGE);
	.loc 1 858 13
	movl	-32(%rbp), %ecx	# bangle, bangle.30_3
	movq	-40(%rbp), %rax	# actor, tmp97
	movl	$134217728, %edx	#,
	movl	%ecx, %esi	# bangle.30_3,
	movq	%rax, %rdi	# tmp97,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -28(%rbp)	# tmp98, slope
# p_enemy.c:860:     angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 860 24
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _4
# p_enemy.c:860:     angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 860 35 discriminator 1
	call	P_Random@PLT	#
# p_enemy.c:860:     angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 860 34 discriminator 2
	subl	%eax, %ebx	# _5, _4
	movl	%ebx, %edx	# _4, _6
# p_enemy.c:860:     angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 860 46 discriminator 2
	sall	$20, %edx	#, _7
# p_enemy.c:860:     angle = bangle + ((P_Random()-P_Random())<<20);
	.loc 1 860 11 discriminator 2
	movl	-32(%rbp), %eax	# bangle, tmp102
	addl	%edx, %eax	# _7, tmp101
	movl	%eax, -24(%rbp)	# tmp101, angle
# p_enemy.c:861:     damage = ((P_Random()%5)+1)*3;
	.loc 1 861 16
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _8
# p_enemy.c:861:     damage = ((P_Random()%5)+1)*3;
	.loc 1 861 26 discriminator 1
	movslq	%ecx, %rax	# _8, tmp103
	imulq	$1717986919, %rax, %rax	#, tmp103, tmp104
	shrq	$32, %rax	#, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	sarl	%edx	# tmp106
	movl	%ecx, %eax	# _8, tmp107
	sarl	$31, %eax	#, tmp107
	subl	%eax, %edx	# tmp107, _9
	movl	%edx, %eax	# _9, tmp108
	sall	$2, %eax	#, tmp108
	addl	%edx, %eax	# _9, tmp108
	subl	%eax, %ecx	# tmp108, _8
	movl	%ecx, %edx	# _8, _9
# p_enemy.c:861:     damage = ((P_Random()%5)+1)*3;
	.loc 1 861 29 discriminator 1
	addl	$1, %edx	#, _10
# p_enemy.c:861:     damage = ((P_Random()%5)+1)*3;
	.loc 1 861 12 discriminator 1
	movl	%edx, %eax	# _10, tmp109
	addl	%eax, %eax	# tmp109
	addl	%edx, %eax	# _10, tmp110
	movl	%eax, -20(%rbp)	# tmp110, damage
# p_enemy.c:862:     P_LineAttack (actor, angle, MISSILERANGE, slope, damage);
	.loc 1 862 5
	movl	-24(%rbp), %esi	# angle, angle.31_11
	movl	-20(%rbp), %ecx	# damage, tmp111
	movl	-28(%rbp), %edx	# slope, tmp112
	movq	-40(%rbp), %rax	# actor, tmp113
	movl	%ecx, %r8d	# tmp111,
	movl	%edx, %ecx	# tmp112,
	movl	$134217728, %edx	#,
	movq	%rax, %rdi	# tmp113,
	call	P_LineAttack@PLT	#
	jmp	.L167	#
.L170:
# p_enemy.c:853: 	return;
	.loc 1 853 2
	nop	
.L167:
# p_enemy.c:863: }
	.loc 1 863 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	A_CPosAttack, .-A_CPosAttack
	.globl	A_CPosRefire
	.type	A_CPosRefire, @function
A_CPosRefire:
.LFB21:
	.loc 1 866 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:868:     A_FaceTarget (actor);
	.loc 1 868 5
	movq	-8(%rbp), %rax	# actor, tmp91
	movq	%rax, %rdi	# tmp91,
	call	A_FaceTarget	#
# p_enemy.c:870:     if (P_Random () < 40)
	.loc 1 870 9
	call	P_Random@PLT	#
# p_enemy.c:870:     if (P_Random () < 40)
	.loc 1 870 8 discriminator 1
	cmpl	$39, %eax	#, _1
	jle	.L175	#,
# p_enemy.c:873:     if (!actor->target
	.loc 1 873 15
	movq	-8(%rbp), %rax	# actor, tmp92
	movq	176(%rax), %rax	# actor_13(D)->target, _2
# p_enemy.c:873:     if (!actor->target
	.loc 1 873 8
	testq	%rax, %rax	# _2
	je	.L174	#,
# p_enemy.c:874: 	|| actor->target->health <= 0
	.loc 1 874 10
	movq	-8(%rbp), %rax	# actor, tmp93
	movq	176(%rax), %rax	# actor_13(D)->target, _3
# p_enemy.c:874: 	|| actor->target->health <= 0
	.loc 1 874 18
	movl	164(%rax), %eax	# _3->health, _4
# p_enemy.c:874: 	|| actor->target->health <= 0
	.loc 1 874 2
	testl	%eax, %eax	# _4
	jle	.L174	#,
# p_enemy.c:875: 	|| !P_CheckSight (actor, actor->target) )
	.loc 1 875 32
	movq	-8(%rbp), %rax	# actor, tmp94
	movq	176(%rax), %rdx	# actor_13(D)->target, _5
# p_enemy.c:875: 	|| !P_CheckSight (actor, actor->target) )
	.loc 1 875 6
	movq	-8(%rbp), %rax	# actor, tmp95
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# tmp95,
	call	P_CheckSight@PLT	#
# p_enemy.c:875: 	|| !P_CheckSight (actor, actor->target) )
	.loc 1 875 2 discriminator 1
	testl	%eax, %eax	# _6
	jne	.L171	#,
.L174:
# p_enemy.c:877: 	P_SetMobjState (actor, actor->info->seestate);
	.loc 1 877 30
	movq	-8(%rbp), %rax	# actor, tmp96
	movq	136(%rax), %rax	# actor_13(D)->info, _7
# p_enemy.c:877: 	P_SetMobjState (actor, actor->info->seestate);
	.loc 1 877 36
	movl	12(%rax), %eax	# _7->seestate, _8
# p_enemy.c:877: 	P_SetMobjState (actor, actor->info->seestate);
	.loc 1 877 2
	movl	%eax, %edx	# _8, _9
	movq	-8(%rbp), %rax	# actor, tmp97
	movl	%edx, %esi	# _9,
	movq	%rax, %rdi	# tmp97,
	call	P_SetMobjState@PLT	#
	jmp	.L171	#
.L175:
# p_enemy.c:871: 	return;
	.loc 1 871 2
	nop	
.L171:
# p_enemy.c:879: }
	.loc 1 879 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	A_CPosRefire, .-A_CPosRefire
	.globl	A_SpidRefire
	.type	A_SpidRefire, @function
A_SpidRefire:
.LFB22:
	.loc 1 883 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:885:     A_FaceTarget (actor);
	.loc 1 885 5
	movq	-8(%rbp), %rax	# actor, tmp91
	movq	%rax, %rdi	# tmp91,
	call	A_FaceTarget	#
# p_enemy.c:887:     if (P_Random () < 10)
	.loc 1 887 9
	call	P_Random@PLT	#
# p_enemy.c:887:     if (P_Random () < 10)
	.loc 1 887 8 discriminator 1
	cmpl	$9, %eax	#, _1
	jle	.L180	#,
# p_enemy.c:890:     if (!actor->target
	.loc 1 890 15
	movq	-8(%rbp), %rax	# actor, tmp92
	movq	176(%rax), %rax	# actor_13(D)->target, _2
# p_enemy.c:890:     if (!actor->target
	.loc 1 890 8
	testq	%rax, %rax	# _2
	je	.L179	#,
# p_enemy.c:891: 	|| actor->target->health <= 0
	.loc 1 891 10
	movq	-8(%rbp), %rax	# actor, tmp93
	movq	176(%rax), %rax	# actor_13(D)->target, _3
# p_enemy.c:891: 	|| actor->target->health <= 0
	.loc 1 891 18
	movl	164(%rax), %eax	# _3->health, _4
# p_enemy.c:891: 	|| actor->target->health <= 0
	.loc 1 891 2
	testl	%eax, %eax	# _4
	jle	.L179	#,
# p_enemy.c:892: 	|| !P_CheckSight (actor, actor->target) )
	.loc 1 892 32
	movq	-8(%rbp), %rax	# actor, tmp94
	movq	176(%rax), %rdx	# actor_13(D)->target, _5
# p_enemy.c:892: 	|| !P_CheckSight (actor, actor->target) )
	.loc 1 892 6
	movq	-8(%rbp), %rax	# actor, tmp95
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# tmp95,
	call	P_CheckSight@PLT	#
# p_enemy.c:892: 	|| !P_CheckSight (actor, actor->target) )
	.loc 1 892 2 discriminator 1
	testl	%eax, %eax	# _6
	jne	.L176	#,
.L179:
# p_enemy.c:894: 	P_SetMobjState (actor, actor->info->seestate);
	.loc 1 894 30
	movq	-8(%rbp), %rax	# actor, tmp96
	movq	136(%rax), %rax	# actor_13(D)->info, _7
# p_enemy.c:894: 	P_SetMobjState (actor, actor->info->seestate);
	.loc 1 894 36
	movl	12(%rax), %eax	# _7->seestate, _8
# p_enemy.c:894: 	P_SetMobjState (actor, actor->info->seestate);
	.loc 1 894 2
	movl	%eax, %edx	# _8, _9
	movq	-8(%rbp), %rax	# actor, tmp97
	movl	%edx, %esi	# _9,
	movq	%rax, %rdi	# tmp97,
	call	P_SetMobjState@PLT	#
	jmp	.L176	#
.L180:
# p_enemy.c:888: 	return;
	.loc 1 888 2
	nop	
.L176:
# p_enemy.c:896: }
	.loc 1 896 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	A_SpidRefire, .-A_SpidRefire
	.globl	A_BspiAttack
	.type	A_BspiAttack, @function
A_BspiAttack:
.LFB23:
	.loc 1 899 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:900:     if (!actor->target)
	.loc 1 900 15
	movq	-8(%rbp), %rax	# actor, tmp84
	movq	176(%rax), %rax	# actor_5(D)->target, _1
# p_enemy.c:900:     if (!actor->target)
	.loc 1 900 8
	testq	%rax, %rax	# _1
	je	.L184	#,
# p_enemy.c:903:     A_FaceTarget (actor);
	.loc 1 903 5
	movq	-8(%rbp), %rax	# actor, tmp85
	movq	%rax, %rdi	# tmp85,
	call	A_FaceTarget	#
# p_enemy.c:906:     P_SpawnMissile (actor, actor->target, MT_ARACHPLAZ);
	.loc 1 906 33
	movq	-8(%rbp), %rax	# actor, tmp86
	movq	176(%rax), %rcx	# actor_5(D)->target, _2
# p_enemy.c:906:     P_SpawnMissile (actor, actor->target, MT_ARACHPLAZ);
	.loc 1 906 5
	movq	-8(%rbp), %rax	# actor, tmp87
	movl	$36, %edx	#,
	movq	%rcx, %rsi	# _2,
	movq	%rax, %rdi	# tmp87,
	call	P_SpawnMissile@PLT	#
	jmp	.L181	#
.L184:
# p_enemy.c:901: 	return;
	.loc 1 901 2
	nop	
.L181:
# p_enemy.c:907: }
	.loc 1 907 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	A_BspiAttack, .-A_BspiAttack
	.globl	A_TroopAttack
	.type	A_TroopAttack, @function
A_TroopAttack:
.LFB24:
	.loc 1 914 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:917:     if (!actor->target)
	.loc 1 917 15
	movq	-24(%rbp), %rax	# actor, tmp89
	movq	176(%rax), %rax	# actor_10(D)->target, _1
# p_enemy.c:917:     if (!actor->target)
	.loc 1 917 8
	testq	%rax, %rax	# _1
	je	.L189	#,
# p_enemy.c:920:     A_FaceTarget (actor);
	.loc 1 920 5
	movq	-24(%rbp), %rax	# actor, tmp90
	movq	%rax, %rdi	# tmp90,
	call	A_FaceTarget	#
# p_enemy.c:921:     if (P_CheckMeleeRange (actor))
	.loc 1 921 9
	movq	-24(%rbp), %rax	# actor, tmp91
	movq	%rax, %rdi	# tmp91,
	call	P_CheckMeleeRange	#
# p_enemy.c:921:     if (P_CheckMeleeRange (actor))
	.loc 1 921 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L188	#,
# p_enemy.c:923: 	S_StartSound (actor, sfx_claw);
	.loc 1 923 2
	movq	-24(%rbp), %rax	# actor, tmp92
	movl	$55, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	S_StartSound@PLT	#
# p_enemy.c:924: 	damage = (P_Random()%8+1)*3;
	.loc 1 924 12
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _3
# p_enemy.c:924: 	damage = (P_Random()%8+1)*3;
	.loc 1 924 22 discriminator 1
	movl	%edx, %eax	# _3, tmp93
	sarl	$31, %eax	#, tmp93
	shrl	$29, %eax	#, tmp94
	addl	%eax, %edx	# tmp94, tmp95
	andl	$7, %edx	#, tmp96
	subl	%eax, %edx	# tmp94, tmp97
	movl	%edx, %eax	# tmp97, _4
# p_enemy.c:924: 	damage = (P_Random()%8+1)*3;
	.loc 1 924 24 discriminator 1
	leal	1(%rax), %edx	#, _5
# p_enemy.c:924: 	damage = (P_Random()%8+1)*3;
	.loc 1 924 9 discriminator 1
	movl	%edx, %eax	# _5, tmp98
	addl	%eax, %eax	# tmp98
	addl	%edx, %eax	# _5, tmp99
	movl	%eax, -4(%rbp)	# tmp99, damage
# p_enemy.c:925: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 925 21
	movq	-24(%rbp), %rax	# actor, tmp100
	movq	176(%rax), %rax	# actor_10(D)->target, _6
# p_enemy.c:925: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 925 2
	movl	-4(%rbp), %ecx	# damage, tmp101
	movq	-24(%rbp), %rdx	# actor, tmp102
	movq	-24(%rbp), %rsi	# actor, tmp103
	movq	%rax, %rdi	# _6,
	call	P_DamageMobj@PLT	#
# p_enemy.c:926: 	return;
	.loc 1 926 2
	jmp	.L185	#
.L188:
# p_enemy.c:931:     P_SpawnMissile (actor, actor->target, MT_TROOPSHOT);
	.loc 1 931 33
	movq	-24(%rbp), %rax	# actor, tmp104
	movq	176(%rax), %rcx	# actor_10(D)->target, _7
# p_enemy.c:931:     P_SpawnMissile (actor, actor->target, MT_TROOPSHOT);
	.loc 1 931 5
	movq	-24(%rbp), %rax	# actor, tmp105
	movl	$31, %edx	#,
	movq	%rcx, %rsi	# _7,
	movq	%rax, %rdi	# tmp105,
	call	P_SpawnMissile@PLT	#
	jmp	.L185	#
.L189:
# p_enemy.c:918: 	return;
	.loc 1 918 2
	nop	
.L185:
# p_enemy.c:932: }
	.loc 1 932 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	A_TroopAttack, .-A_TroopAttack
	.globl	A_SargAttack
	.type	A_SargAttack, @function
A_SargAttack:
.LFB25:
	.loc 1 936 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:939:     if (!actor->target)
	.loc 1 939 15
	movq	-24(%rbp), %rax	# actor, tmp88
	movq	176(%rax), %rax	# actor_9(D)->target, _1
# p_enemy.c:939:     if (!actor->target)
	.loc 1 939 8
	testq	%rax, %rax	# _1
	je	.L193	#,
# p_enemy.c:942:     A_FaceTarget (actor);
	.loc 1 942 5
	movq	-24(%rbp), %rax	# actor, tmp89
	movq	%rax, %rdi	# tmp89,
	call	A_FaceTarget	#
# p_enemy.c:943:     if (P_CheckMeleeRange (actor))
	.loc 1 943 9
	movq	-24(%rbp), %rax	# actor, tmp90
	movq	%rax, %rdi	# tmp90,
	call	P_CheckMeleeRange	#
# p_enemy.c:943:     if (P_CheckMeleeRange (actor))
	.loc 1 943 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L190	#,
# p_enemy.c:945: 	damage = ((P_Random()%10)+1)*4;
	.loc 1 945 13
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _3
# p_enemy.c:945: 	damage = ((P_Random()%10)+1)*4;
	.loc 1 945 23 discriminator 1
	movslq	%ecx, %rax	# _3, tmp91
	imulq	$1717986919, %rax, %rax	#, tmp91, tmp92
	shrq	$32, %rax	#, tmp93
	movl	%eax, %edx	# tmp93, tmp94
	sarl	$2, %edx	#, tmp94
	movl	%ecx, %eax	# _3, tmp95
	sarl	$31, %eax	#, tmp95
	subl	%eax, %edx	# tmp95, _4
	movl	%edx, %eax	# _4, tmp96
	sall	$2, %eax	#, tmp96
	addl	%edx, %eax	# _4, tmp96
	addl	%eax, %eax	# tmp97
	subl	%eax, %ecx	# tmp96, _3
	movl	%ecx, %edx	# _3, _4
# p_enemy.c:945: 	damage = ((P_Random()%10)+1)*4;
	.loc 1 945 27 discriminator 1
	leal	1(%rdx), %eax	#, _5
# p_enemy.c:945: 	damage = ((P_Random()%10)+1)*4;
	.loc 1 945 9 discriminator 1
	sall	$2, %eax	#, tmp98
	movl	%eax, -4(%rbp)	# tmp98, damage
# p_enemy.c:946: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 946 21
	movq	-24(%rbp), %rax	# actor, tmp99
	movq	176(%rax), %rax	# actor_9(D)->target, _6
# p_enemy.c:946: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 946 2
	movl	-4(%rbp), %ecx	# damage, tmp100
	movq	-24(%rbp), %rdx	# actor, tmp101
	movq	-24(%rbp), %rsi	# actor, tmp102
	movq	%rax, %rdi	# _6,
	call	P_DamageMobj@PLT	#
	jmp	.L190	#
.L193:
# p_enemy.c:940: 	return;
	.loc 1 940 2
	nop	
.L190:
# p_enemy.c:948: }
	.loc 1 948 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	A_SargAttack, .-A_SargAttack
	.globl	A_HeadAttack
	.type	A_HeadAttack, @function
A_HeadAttack:
.LFB26:
	.loc 1 951 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:954:     if (!actor->target)
	.loc 1 954 15
	movq	-24(%rbp), %rax	# actor, tmp89
	movq	176(%rax), %rax	# actor_10(D)->target, _1
# p_enemy.c:954:     if (!actor->target)
	.loc 1 954 8
	testq	%rax, %rax	# _1
	je	.L198	#,
# p_enemy.c:957:     A_FaceTarget (actor);
	.loc 1 957 5
	movq	-24(%rbp), %rax	# actor, tmp90
	movq	%rax, %rdi	# tmp90,
	call	A_FaceTarget	#
# p_enemy.c:958:     if (P_CheckMeleeRange (actor))
	.loc 1 958 9
	movq	-24(%rbp), %rax	# actor, tmp91
	movq	%rax, %rdi	# tmp91,
	call	P_CheckMeleeRange	#
# p_enemy.c:958:     if (P_CheckMeleeRange (actor))
	.loc 1 958 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L197	#,
# p_enemy.c:960: 	damage = (P_Random()%6+1)*10;
	.loc 1 960 12
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _3
# p_enemy.c:960: 	damage = (P_Random()%6+1)*10;
	.loc 1 960 22 discriminator 1
	movslq	%ecx, %rax	# _3, tmp92
	imulq	$715827883, %rax, %rax	#, tmp92, tmp93
	shrq	$32, %rax	#, tmp93
	movq	%rax, %rdx	# tmp93, tmp94
	movl	%ecx, %eax	# _3, tmp95
	sarl	$31, %eax	#, tmp95
	subl	%eax, %edx	# tmp95, _4
	movl	%edx, %eax	# _4, tmp96
	addl	%eax, %eax	# tmp96
	addl	%edx, %eax	# _4, tmp96
	addl	%eax, %eax	# tmp97
	subl	%eax, %ecx	# tmp96, _3
	movl	%ecx, %edx	# _3, _4
# p_enemy.c:960: 	damage = (P_Random()%6+1)*10;
	.loc 1 960 24 discriminator 1
	addl	$1, %edx	#, _5
# p_enemy.c:960: 	damage = (P_Random()%6+1)*10;
	.loc 1 960 9 discriminator 1
	movl	%edx, %eax	# _5, tmp98
	sall	$2, %eax	#, tmp98
	addl	%edx, %eax	# _5, tmp98
	addl	%eax, %eax	# tmp99
	movl	%eax, -4(%rbp)	# tmp98, damage
# p_enemy.c:961: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 961 21
	movq	-24(%rbp), %rax	# actor, tmp100
	movq	176(%rax), %rax	# actor_10(D)->target, _6
# p_enemy.c:961: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 961 2
	movl	-4(%rbp), %ecx	# damage, tmp101
	movq	-24(%rbp), %rdx	# actor, tmp102
	movq	-24(%rbp), %rsi	# actor, tmp103
	movq	%rax, %rdi	# _6,
	call	P_DamageMobj@PLT	#
# p_enemy.c:962: 	return;
	.loc 1 962 2
	jmp	.L194	#
.L197:
# p_enemy.c:966:     P_SpawnMissile (actor, actor->target, MT_HEADSHOT);
	.loc 1 966 33
	movq	-24(%rbp), %rax	# actor, tmp104
	movq	176(%rax), %rcx	# actor_10(D)->target, _7
# p_enemy.c:966:     P_SpawnMissile (actor, actor->target, MT_HEADSHOT);
	.loc 1 966 5
	movq	-24(%rbp), %rax	# actor, tmp105
	movl	$32, %edx	#,
	movq	%rcx, %rsi	# _7,
	movq	%rax, %rdi	# tmp105,
	call	P_SpawnMissile@PLT	#
	jmp	.L194	#
.L198:
# p_enemy.c:955: 	return;
	.loc 1 955 2
	nop	
.L194:
# p_enemy.c:967: }
	.loc 1 967 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	A_HeadAttack, .-A_HeadAttack
	.globl	A_CyberAttack
	.type	A_CyberAttack, @function
A_CyberAttack:
.LFB27:
	.loc 1 970 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:971:     if (!actor->target)
	.loc 1 971 15
	movq	-8(%rbp), %rax	# actor, tmp84
	movq	176(%rax), %rax	# actor_5(D)->target, _1
# p_enemy.c:971:     if (!actor->target)
	.loc 1 971 8
	testq	%rax, %rax	# _1
	je	.L202	#,
# p_enemy.c:974:     A_FaceTarget (actor);
	.loc 1 974 5
	movq	-8(%rbp), %rax	# actor, tmp85
	movq	%rax, %rdi	# tmp85,
	call	A_FaceTarget	#
# p_enemy.c:975:     P_SpawnMissile (actor, actor->target, MT_ROCKET);
	.loc 1 975 33
	movq	-8(%rbp), %rax	# actor, tmp86
	movq	176(%rax), %rcx	# actor_5(D)->target, _2
# p_enemy.c:975:     P_SpawnMissile (actor, actor->target, MT_ROCKET);
	.loc 1 975 5
	movq	-8(%rbp), %rax	# actor, tmp87
	movl	$33, %edx	#,
	movq	%rcx, %rsi	# _2,
	movq	%rax, %rdi	# tmp87,
	call	P_SpawnMissile@PLT	#
	jmp	.L199	#
.L202:
# p_enemy.c:972: 	return;
	.loc 1 972 2
	nop	
.L199:
# p_enemy.c:976: }
	.loc 1 976 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	A_CyberAttack, .-A_CyberAttack
	.globl	A_BruisAttack
	.type	A_BruisAttack, @function
A_BruisAttack:
.LFB28:
	.loc 1 980 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:983:     if (!actor->target)
	.loc 1 983 15
	movq	-24(%rbp), %rax	# actor, tmp89
	movq	176(%rax), %rax	# actor_10(D)->target, _1
# p_enemy.c:983:     if (!actor->target)
	.loc 1 983 8
	testq	%rax, %rax	# _1
	je	.L207	#,
# p_enemy.c:986:     if (P_CheckMeleeRange (actor))
	.loc 1 986 9
	movq	-24(%rbp), %rax	# actor, tmp90
	movq	%rax, %rdi	# tmp90,
	call	P_CheckMeleeRange	#
# p_enemy.c:986:     if (P_CheckMeleeRange (actor))
	.loc 1 986 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L206	#,
# p_enemy.c:988: 	S_StartSound (actor, sfx_claw);
	.loc 1 988 2
	movq	-24(%rbp), %rax	# actor, tmp91
	movl	$55, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	S_StartSound@PLT	#
# p_enemy.c:989: 	damage = (P_Random()%8+1)*10;
	.loc 1 989 12
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _3
# p_enemy.c:989: 	damage = (P_Random()%8+1)*10;
	.loc 1 989 22 discriminator 1
	movl	%edx, %eax	# _3, tmp92
	sarl	$31, %eax	#, tmp92
	shrl	$29, %eax	#, tmp93
	addl	%eax, %edx	# tmp93, tmp94
	andl	$7, %edx	#, tmp95
	subl	%eax, %edx	# tmp93, tmp96
	movl	%edx, %eax	# tmp96, _4
# p_enemy.c:989: 	damage = (P_Random()%8+1)*10;
	.loc 1 989 24 discriminator 1
	leal	1(%rax), %edx	#, _5
# p_enemy.c:989: 	damage = (P_Random()%8+1)*10;
	.loc 1 989 9 discriminator 1
	movl	%edx, %eax	# _5, tmp97
	sall	$2, %eax	#, tmp97
	addl	%edx, %eax	# _5, tmp97
	addl	%eax, %eax	# tmp98
	movl	%eax, -4(%rbp)	# tmp97, damage
# p_enemy.c:990: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 990 21
	movq	-24(%rbp), %rax	# actor, tmp99
	movq	176(%rax), %rax	# actor_10(D)->target, _6
# p_enemy.c:990: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 990 2
	movl	-4(%rbp), %ecx	# damage, tmp100
	movq	-24(%rbp), %rdx	# actor, tmp101
	movq	-24(%rbp), %rsi	# actor, tmp102
	movq	%rax, %rdi	# _6,
	call	P_DamageMobj@PLT	#
# p_enemy.c:991: 	return;
	.loc 1 991 2
	jmp	.L203	#
.L206:
# p_enemy.c:995:     P_SpawnMissile (actor, actor->target, MT_BRUISERSHOT);
	.loc 1 995 33
	movq	-24(%rbp), %rax	# actor, tmp103
	movq	176(%rax), %rcx	# actor_10(D)->target, _7
# p_enemy.c:995:     P_SpawnMissile (actor, actor->target, MT_BRUISERSHOT);
	.loc 1 995 5
	movq	-24(%rbp), %rax	# actor, tmp104
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# _7,
	movq	%rax, %rdi	# tmp104,
	call	P_SpawnMissile@PLT	#
	jmp	.L203	#
.L207:
# p_enemy.c:984: 	return;
	.loc 1 984 2
	nop	
.L203:
# p_enemy.c:996: }
	.loc 1 996 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE28:
	.size	A_BruisAttack, .-A_BruisAttack
	.globl	A_SkelMissile
	.type	A_SkelMissile, @function
A_SkelMissile:
.LFB29:
	.loc 1 1003 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1006:     if (!actor->target)
	.loc 1 1006 15
	movq	-24(%rbp), %rax	# actor, tmp95
	movq	176(%rax), %rax	# actor_16(D)->target, _1
# p_enemy.c:1006:     if (!actor->target)
	.loc 1 1006 8
	testq	%rax, %rax	# _1
	je	.L211	#,
# p_enemy.c:1009:     A_FaceTarget (actor);
	.loc 1 1009 5
	movq	-24(%rbp), %rax	# actor, tmp96
	movq	%rax, %rdi	# tmp96,
	call	A_FaceTarget	#
# p_enemy.c:1010:     actor->z += 16*FRACUNIT;	// so missile spawns higher
	.loc 1 1010 10
	movq	-24(%rbp), %rax	# actor, tmp97
	movl	32(%rax), %eax	# actor_16(D)->z, _2
# p_enemy.c:1010:     actor->z += 16*FRACUNIT;	// so missile spawns higher
	.loc 1 1010 14
	leal	1048576(%rax), %edx	#, _3
	movq	-24(%rbp), %rax	# actor, tmp98
	movl	%edx, 32(%rax)	# _3, actor_16(D)->z
# p_enemy.c:1011:     mo = P_SpawnMissile (actor, actor->target, MT_TRACER);
	.loc 1 1011 38
	movq	-24(%rbp), %rax	# actor, tmp99
	movq	176(%rax), %rcx	# actor_16(D)->target, _4
# p_enemy.c:1011:     mo = P_SpawnMissile (actor, actor->target, MT_TRACER);
	.loc 1 1011 10
	movq	-24(%rbp), %rax	# actor, tmp100
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# _4,
	movq	%rax, %rdi	# tmp100,
	call	P_SpawnMissile@PLT	#
	movq	%rax, -8(%rbp)	# tmp101, mo
# p_enemy.c:1012:     actor->z -= 16*FRACUNIT;	// back to normal
	.loc 1 1012 10
	movq	-24(%rbp), %rax	# actor, tmp102
	movl	32(%rax), %eax	# actor_16(D)->z, _5
# p_enemy.c:1012:     actor->z -= 16*FRACUNIT;	// back to normal
	.loc 1 1012 14
	leal	-1048576(%rax), %edx	#, _6
	movq	-24(%rbp), %rax	# actor, tmp103
	movl	%edx, 32(%rax)	# _6, actor_16(D)->z
# p_enemy.c:1014:     mo->x += mo->momx;
	.loc 1 1014 7
	movq	-8(%rbp), %rax	# mo, tmp104
	movl	24(%rax), %edx	# mo_20->x, _7
# p_enemy.c:1014:     mo->x += mo->momx;
	.loc 1 1014 16
	movq	-8(%rbp), %rax	# mo, tmp105
	movl	112(%rax), %eax	# mo_20->momx, _8
# p_enemy.c:1014:     mo->x += mo->momx;
	.loc 1 1014 11
	addl	%eax, %edx	# _8, _9
	movq	-8(%rbp), %rax	# mo, tmp106
	movl	%edx, 24(%rax)	# _9, mo_20->x
# p_enemy.c:1015:     mo->y += mo->momy;
	.loc 1 1015 7
	movq	-8(%rbp), %rax	# mo, tmp107
	movl	28(%rax), %edx	# mo_20->y, _10
# p_enemy.c:1015:     mo->y += mo->momy;
	.loc 1 1015 16
	movq	-8(%rbp), %rax	# mo, tmp108
	movl	116(%rax), %eax	# mo_20->momy, _11
# p_enemy.c:1015:     mo->y += mo->momy;
	.loc 1 1015 11
	addl	%eax, %edx	# _11, _12
	movq	-8(%rbp), %rax	# mo, tmp109
	movl	%edx, 28(%rax)	# _12, mo_20->y
# p_enemy.c:1016:     mo->tracer = actor->target;
	.loc 1 1016 23
	movq	-24(%rbp), %rax	# actor, tmp110
	movq	176(%rax), %rdx	# actor_16(D)->target, _13
# p_enemy.c:1016:     mo->tracer = actor->target;
	.loc 1 1016 16
	movq	-8(%rbp), %rax	# mo, tmp111
	movq	%rdx, 216(%rax)	# _13, mo_20->tracer
	jmp	.L208	#
.L211:
# p_enemy.c:1007: 	return;
	.loc 1 1007 2
	nop	
.L208:
# p_enemy.c:1017: }
	.loc 1 1017 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	A_SkelMissile, .-A_SkelMissile
	.globl	TRACEANGLE
	.data
	.align 4
	.type	TRACEANGLE, @object
	.size	TRACEANGLE, 4
TRACEANGLE:
	.long	201326592
	.text
	.globl	A_Tracer
	.type	A_Tracer, @function
A_Tracer:
.LFB30:
	.loc 1 1022 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# actor, actor
# p_enemy.c:1029:     if (gametic & 3)
	.loc 1 1029 17
	movl	gametic(%rip), %eax	# gametic, gametic.32_1
	andl	$3, %eax	#, _2
# p_enemy.c:1029:     if (gametic & 3)
	.loc 1 1029 8
	testl	%eax, %eax	# _2
	jne	.L222	#,
# p_enemy.c:1033:     P_SpawnPuff (actor->x, actor->y, actor->z);
	.loc 1 1033 5
	movq	-40(%rbp), %rax	# actor, tmp150
	movl	32(%rax), %edx	# actor_73(D)->z, _3
	movq	-40(%rbp), %rax	# actor, tmp151
	movl	28(%rax), %ecx	# actor_73(D)->y, _4
	movq	-40(%rbp), %rax	# actor, tmp152
	movl	24(%rax), %eax	# actor_73(D)->x, _5
	movl	%ecx, %esi	# _4,
	movl	%eax, %edi	# _5,
	call	P_SpawnPuff@PLT	#
# p_enemy.c:1035:     th = P_SpawnMobj (actor->x-actor->momx,
	.loc 1 1035 10
	movq	-40(%rbp), %rax	# actor, tmp153
	movl	32(%rax), %eax	# actor_73(D)->z, _6
# p_enemy.c:1036: 		      actor->y-actor->momy,
	.loc 1 1036 14
	movq	-40(%rbp), %rdx	# actor, tmp154
	movl	28(%rdx), %ecx	# actor_73(D)->y, _7
# p_enemy.c:1036: 		      actor->y-actor->momy,
	.loc 1 1036 23
	movq	-40(%rbp), %rdx	# actor, tmp155
	movl	116(%rdx), %edx	# actor_73(D)->momy, _8
# p_enemy.c:1035:     th = P_SpawnMobj (actor->x-actor->momx,
	.loc 1 1035 10
	movl	%ecx, %esi	# _7, _7
	subl	%edx, %esi	# _8, _7
# p_enemy.c:1035:     th = P_SpawnMobj (actor->x-actor->momx,
	.loc 1 1035 28
	movq	-40(%rbp), %rdx	# actor, tmp156
	movl	24(%rdx), %ecx	# actor_73(D)->x, _10
# p_enemy.c:1035:     th = P_SpawnMobj (actor->x-actor->momx,
	.loc 1 1035 37
	movq	-40(%rbp), %rdx	# actor, tmp157
	movl	112(%rdx), %edx	# actor_73(D)->momx, _11
# p_enemy.c:1035:     th = P_SpawnMobj (actor->x-actor->momx,
	.loc 1 1035 10
	movl	%ecx, %edi	# _10, _10
	subl	%edx, %edi	# _11, _10
	movl	$7, %ecx	#,
	movl	%eax, %edx	# _6,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -16(%rbp)	# tmp158, th
# p_enemy.c:1039:     th->momz = FRACUNIT;
	.loc 1 1039 14
	movq	-16(%rbp), %rax	# th, tmp159
	movl	$65536, 120(%rax)	#, th_76->momz
# p_enemy.c:1040:     th->tics -= P_Random()&3;
	.loc 1 1040 17
	call	P_Random@PLT	#
# p_enemy.c:1040:     th->tics -= P_Random()&3;
	.loc 1 1040 27 discriminator 1
	andl	$3, %eax	#, _13
	movl	%eax, %ecx	# _13, _79
# p_enemy.c:1040:     th->tics -= P_Random()&3;
	.loc 1 1040 7 discriminator 1
	movq	-16(%rbp), %rax	# th, tmp160
	movl	144(%rax), %eax	# th_76->tics, _14
# p_enemy.c:1040:     th->tics -= P_Random()&3;
	.loc 1 1040 14 discriminator 1
	subl	%ecx, %eax	# _79, _14
	movl	%eax, %edx	# _14, _15
	movq	-16(%rbp), %rax	# th, tmp161
	movl	%edx, 144(%rax)	# _15, th_76->tics
# p_enemy.c:1041:     if (th->tics < 1)
	.loc 1 1041 11
	movq	-16(%rbp), %rax	# th, tmp162
	movl	144(%rax), %eax	# th_76->tics, _16
# p_enemy.c:1041:     if (th->tics < 1)
	.loc 1 1041 8
	testl	%eax, %eax	# _16
	jg	.L215	#,
# p_enemy.c:1042: 	th->tics = 1;
	.loc 1 1042 11
	movq	-16(%rbp), %rax	# th, tmp163
	movl	$1, 144(%rax)	#, th_76->tics
.L215:
# p_enemy.c:1045:     dest = actor->tracer;
	.loc 1 1045 10
	movq	-40(%rbp), %rax	# actor, tmp164
	movq	216(%rax), %rax	# actor_73(D)->tracer, tmp165
	movq	%rax, -8(%rbp)	# tmp165, dest
# p_enemy.c:1047:     if (!dest || dest->health <= 0)
	.loc 1 1047 8
	cmpq	$0, -8(%rbp)	#, dest
	je	.L223	#,
# p_enemy.c:1047:     if (!dest || dest->health <= 0)
	.loc 1 1047 22 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp166
	movl	164(%rax), %eax	# dest_82->health, _17
# p_enemy.c:1047:     if (!dest || dest->health <= 0)
	.loc 1 1047 15 discriminator 1
	testl	%eax, %eax	# _17
	jle	.L223	#,
# p_enemy.c:1051:     exact = R_PointToAngle2 (actor->x,
	.loc 1 1051 13
	movq	-8(%rbp), %rax	# dest, tmp167
	movl	28(%rax), %ecx	# dest_82->y, _18
	movq	-8(%rbp), %rax	# dest, tmp168
	movl	24(%rax), %edx	# dest_82->x, _19
	movq	-40(%rbp), %rax	# actor, tmp169
	movl	28(%rax), %esi	# actor_73(D)->y, _20
	movq	-40(%rbp), %rax	# actor, tmp170
	movl	24(%rax), %eax	# actor_73(D)->x, _21
	movl	%eax, %edi	# _21,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -24(%rbp)	# tmp171, exact
# p_enemy.c:1056:     if (exact != actor->angle)
	.loc 1 1056 23
	movq	-40(%rbp), %rax	# actor, tmp172
	movl	56(%rax), %eax	# actor_73(D)->angle, _22
# p_enemy.c:1056:     if (exact != actor->angle)
	.loc 1 1056 8
	cmpl	%eax, -24(%rbp)	# _22, exact
	je	.L218	#,
# p_enemy.c:1058: 	if (exact - actor->angle > 0x80000000)
	.loc 1 1058 19
	movq	-40(%rbp), %rax	# actor, tmp173
	movl	56(%rax), %eax	# actor_73(D)->angle, _23
# p_enemy.c:1058: 	if (exact - actor->angle > 0x80000000)
	.loc 1 1058 12
	movl	-24(%rbp), %edx	# exact, tmp174
	subl	%eax, %edx	# _23, _24
# p_enemy.c:1058: 	if (exact - actor->angle > 0x80000000)
	.loc 1 1058 5
	cmpl	$-2147483648, %edx	#, _24
	jbe	.L219	#,
# p_enemy.c:1060: 	    actor->angle -= TRACEANGLE;
	.loc 1 1060 11
	movq	-40(%rbp), %rax	# actor, tmp175
	movl	56(%rax), %eax	# actor_73(D)->angle, _25
# p_enemy.c:1060: 	    actor->angle -= TRACEANGLE;
	.loc 1 1060 19
	movl	TRACEANGLE(%rip), %edx	# TRACEANGLE, TRACEANGLE.33_26
	movl	%edx, %ecx	# TRACEANGLE.33_26, TRACEANGLE.34_27
	subl	%ecx, %eax	# TRACEANGLE.34_27, _25
	movl	%eax, %edx	# _25, _28
	movq	-40(%rbp), %rax	# actor, tmp176
	movl	%edx, 56(%rax)	# _28, actor_73(D)->angle
# p_enemy.c:1061: 	    if (exact - actor->angle < 0x80000000)
	.loc 1 1061 23
	movq	-40(%rbp), %rax	# actor, tmp177
	movl	56(%rax), %eax	# actor_73(D)->angle, _29
# p_enemy.c:1061: 	    if (exact - actor->angle < 0x80000000)
	.loc 1 1061 16
	movl	-24(%rbp), %edx	# exact, tmp178
	subl	%eax, %edx	# _29, _30
# p_enemy.c:1061: 	    if (exact - actor->angle < 0x80000000)
	.loc 1 1061 31
	movl	%edx, %eax	# _30, _31
# p_enemy.c:1061: 	    if (exact - actor->angle < 0x80000000)
	.loc 1 1061 9
	testl	%eax, %eax	# _31
	js	.L218	#,
# p_enemy.c:1062: 		actor->angle = exact;
	.loc 1 1062 16
	movq	-40(%rbp), %rax	# actor, tmp179
	movl	-24(%rbp), %edx	# exact, tmp180
	movl	%edx, 56(%rax)	# tmp180, actor_73(D)->angle
	jmp	.L218	#
.L219:
# p_enemy.c:1066: 	    actor->angle += TRACEANGLE;
	.loc 1 1066 11
	movq	-40(%rbp), %rax	# actor, tmp181
	movl	56(%rax), %eax	# actor_73(D)->angle, _32
# p_enemy.c:1066: 	    actor->angle += TRACEANGLE;
	.loc 1 1066 19
	movl	TRACEANGLE(%rip), %edx	# TRACEANGLE, TRACEANGLE.35_33
	addl	%eax, %edx	# _32, _35
	movq	-40(%rbp), %rax	# actor, tmp182
	movl	%edx, 56(%rax)	# _35, actor_73(D)->angle
# p_enemy.c:1067: 	    if (exact - actor->angle > 0x80000000)
	.loc 1 1067 23
	movq	-40(%rbp), %rax	# actor, tmp183
	movl	56(%rax), %eax	# actor_73(D)->angle, _36
# p_enemy.c:1067: 	    if (exact - actor->angle > 0x80000000)
	.loc 1 1067 16
	movl	-24(%rbp), %edx	# exact, tmp184
	subl	%eax, %edx	# _36, _37
# p_enemy.c:1067: 	    if (exact - actor->angle > 0x80000000)
	.loc 1 1067 9
	cmpl	$-2147483648, %edx	#, _37
	jbe	.L218	#,
# p_enemy.c:1068: 		actor->angle = exact;
	.loc 1 1068 16
	movq	-40(%rbp), %rax	# actor, tmp185
	movl	-24(%rbp), %edx	# exact, tmp186
	movl	%edx, 56(%rax)	# tmp186, actor_73(D)->angle
.L218:
# p_enemy.c:1072:     exact = actor->angle>>ANGLETOFINESHIFT;
	.loc 1 1072 18
	movq	-40(%rbp), %rax	# actor, tmp187
	movl	56(%rax), %eax	# actor_73(D)->angle, _38
# p_enemy.c:1072:     exact = actor->angle>>ANGLETOFINESHIFT;
	.loc 1 1072 11
	shrl	$19, %eax	#, tmp188
	movl	%eax, -24(%rbp)	# tmp188, exact
# p_enemy.c:1073:     actor->momx = FixedMul (actor->info->speed, finecosine[exact]);
	.loc 1 1073 59
	movq	finecosine(%rip), %rax	# finecosine, finecosine.37_39
	movl	-24(%rbp), %edx	# exact, _40
	salq	$2, %rdx	#, _41
	addq	%rdx, %rax	# _41, _42
# p_enemy.c:1073:     actor->momx = FixedMul (actor->info->speed, finecosine[exact]);
	.loc 1 1073 19
	movl	(%rax), %edx	# *_42, _43
# p_enemy.c:1073:     actor->momx = FixedMul (actor->info->speed, finecosine[exact]);
	.loc 1 1073 34
	movq	-40(%rbp), %rax	# actor, tmp189
	movq	136(%rax), %rax	# actor_73(D)->info, _44
# p_enemy.c:1073:     actor->momx = FixedMul (actor->info->speed, finecosine[exact]);
	.loc 1 1073 19
	movl	60(%rax), %eax	# _44->speed, _45
	movl	%edx, %esi	# _43,
	movl	%eax, %edi	# _45,
	call	FixedMul@PLT	#
# p_enemy.c:1073:     actor->momx = FixedMul (actor->info->speed, finecosine[exact]);
	.loc 1 1073 17 discriminator 1
	movq	-40(%rbp), %rdx	# actor, tmp190
	movl	%eax, 112(%rdx)	# _46, actor_73(D)->momx
# p_enemy.c:1074:     actor->momy = FixedMul (actor->info->speed, finesine[exact]);
	.loc 1 1074 19
	movl	-24(%rbp), %eax	# exact, tmp191
	leaq	0(,%rax,4), %rdx	#, tmp192
	leaq	finesine(%rip), %rax	#, tmp193
	movl	(%rdx,%rax), %edx	# finesine[exact_89], _47
# p_enemy.c:1074:     actor->momy = FixedMul (actor->info->speed, finesine[exact]);
	.loc 1 1074 34
	movq	-40(%rbp), %rax	# actor, tmp194
	movq	136(%rax), %rax	# actor_73(D)->info, _48
# p_enemy.c:1074:     actor->momy = FixedMul (actor->info->speed, finesine[exact]);
	.loc 1 1074 19
	movl	60(%rax), %eax	# _48->speed, _49
	movl	%edx, %esi	# _47,
	movl	%eax, %edi	# _49,
	call	FixedMul@PLT	#
# p_enemy.c:1074:     actor->momy = FixedMul (actor->info->speed, finesine[exact]);
	.loc 1 1074 17 discriminator 1
	movq	-40(%rbp), %rdx	# actor, tmp195
	movl	%eax, 116(%rdx)	# _50, actor_73(D)->momy
# p_enemy.c:1078: 			    dest->y - actor->y);
	.loc 1 1078 12
	movq	-8(%rbp), %rax	# dest, tmp196
	movl	28(%rax), %edx	# dest_82->y, _51
# p_enemy.c:1078: 			    dest->y - actor->y);
	.loc 1 1078 23
	movq	-40(%rbp), %rax	# actor, tmp197
	movl	28(%rax), %eax	# actor_73(D)->y, _52
# p_enemy.c:1077:     dist = P_AproxDistance (dest->x - actor->x,
	.loc 1 1077 12
	subl	%eax, %edx	# _52, _53
# p_enemy.c:1077:     dist = P_AproxDistance (dest->x - actor->x,
	.loc 1 1077 33
	movq	-8(%rbp), %rax	# dest, tmp198
	movl	24(%rax), %esi	# dest_82->x, _54
# p_enemy.c:1077:     dist = P_AproxDistance (dest->x - actor->x,
	.loc 1 1077 44
	movq	-40(%rbp), %rax	# actor, tmp199
	movl	24(%rax), %ecx	# actor_73(D)->x, _55
# p_enemy.c:1077:     dist = P_AproxDistance (dest->x - actor->x,
	.loc 1 1077 12
	movl	%esi, %eax	# _54, _54
	subl	%ecx, %eax	# _55, _54
	movl	%edx, %esi	# _53,
	movl	%eax, %edi	# _56,
	call	P_AproxDistance@PLT	#
	movl	%eax, -28(%rbp)	# tmp200, dist
# p_enemy.c:1080:     dist = dist / actor->info->speed;
	.loc 1 1080 24
	movq	-40(%rbp), %rax	# actor, tmp201
	movq	136(%rax), %rax	# actor_73(D)->info, _57
# p_enemy.c:1080:     dist = dist / actor->info->speed;
	.loc 1 1080 30
	movl	60(%rax), %edi	# _57->speed, _58
# p_enemy.c:1080:     dist = dist / actor->info->speed;
	.loc 1 1080 10
	movl	-28(%rbp), %eax	# dist, tmp204
	cltd
	idivl	%edi	# _58
	movl	%eax, -28(%rbp)	# tmp202, dist
# p_enemy.c:1082:     if (dist < 1)
	.loc 1 1082 8
	cmpl	$0, -28(%rbp)	#, dist
	jg	.L220	#,
# p_enemy.c:1083: 	dist = 1;
	.loc 1 1083 7
	movl	$1, -28(%rbp)	#, dist
.L220:
# p_enemy.c:1084:     slope = (dest->z+40*FRACUNIT - actor->z) / dist;
	.loc 1 1084 18
	movq	-8(%rbp), %rax	# dest, tmp205
	movl	32(%rax), %eax	# dest_82->z, _59
# p_enemy.c:1084:     slope = (dest->z+40*FRACUNIT - actor->z) / dist;
	.loc 1 1084 21
	leal	2621440(%rax), %edx	#, _60
# p_enemy.c:1084:     slope = (dest->z+40*FRACUNIT - actor->z) / dist;
	.loc 1 1084 41
	movq	-40(%rbp), %rax	# actor, tmp206
	movl	32(%rax), %eax	# actor_73(D)->z, _61
# p_enemy.c:1084:     slope = (dest->z+40*FRACUNIT - actor->z) / dist;
	.loc 1 1084 34
	subl	%eax, %edx	# _61, _62
# p_enemy.c:1084:     slope = (dest->z+40*FRACUNIT - actor->z) / dist;
	.loc 1 1084 11
	movl	%edx, %eax	# _62, _62
	cltd
	idivl	-28(%rbp)	# dist
	movl	%eax, -20(%rbp)	# tmp208, slope
# p_enemy.c:1086:     if (slope < actor->momz)
	.loc 1 1086 22
	movq	-40(%rbp), %rax	# actor, tmp210
	movl	120(%rax), %eax	# actor_73(D)->momz, _63
# p_enemy.c:1086:     if (slope < actor->momz)
	.loc 1 1086 8
	cmpl	%eax, -20(%rbp)	# _63, slope
	jge	.L221	#,
# p_enemy.c:1087: 	actor->momz -= FRACUNIT/8;
	.loc 1 1087 7
	movq	-40(%rbp), %rax	# actor, tmp211
	movl	120(%rax), %eax	# actor_73(D)->momz, _64
# p_enemy.c:1087: 	actor->momz -= FRACUNIT/8;
	.loc 1 1087 14
	leal	-8192(%rax), %edx	#, _65
	movq	-40(%rbp), %rax	# actor, tmp212
	movl	%edx, 120(%rax)	# _65, actor_73(D)->momz
	jmp	.L212	#
.L221:
# p_enemy.c:1089: 	actor->momz += FRACUNIT/8;
	.loc 1 1089 7
	movq	-40(%rbp), %rax	# actor, tmp213
	movl	120(%rax), %eax	# actor_73(D)->momz, _66
# p_enemy.c:1089: 	actor->momz += FRACUNIT/8;
	.loc 1 1089 14
	leal	8192(%rax), %edx	#, _67
	movq	-40(%rbp), %rax	# actor, tmp214
	movl	%edx, 120(%rax)	# _67, actor_73(D)->momz
	jmp	.L212	#
.L222:
# p_enemy.c:1030: 	return;
	.loc 1 1030 2
	nop	
	jmp	.L212	#
.L223:
# p_enemy.c:1048: 	return;
	.loc 1 1048 2
	nop	
.L212:
# p_enemy.c:1090: }
	.loc 1 1090 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE30:
	.size	A_Tracer, .-A_Tracer
	.globl	A_SkelWhoosh
	.type	A_SkelWhoosh, @function
A_SkelWhoosh:
.LFB31:
	.loc 1 1094 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1095:     if (!actor->target)
	.loc 1 1095 15
	movq	-8(%rbp), %rax	# actor, tmp83
	movq	176(%rax), %rax	# actor_4(D)->target, _1
# p_enemy.c:1095:     if (!actor->target)
	.loc 1 1095 8
	testq	%rax, %rax	# _1
	je	.L227	#,
# p_enemy.c:1097:     A_FaceTarget (actor);
	.loc 1 1097 5
	movq	-8(%rbp), %rax	# actor, tmp84
	movq	%rax, %rdi	# tmp84,
	call	A_FaceTarget	#
# p_enemy.c:1098:     S_StartSound (actor,sfx_skeswg);
	.loc 1 1098 5
	movq	-8(%rbp), %rax	# actor, tmp85
	movl	$56, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	S_StartSound@PLT	#
	jmp	.L224	#
.L227:
# p_enemy.c:1096: 	return;
	.loc 1 1096 2
	nop	
.L224:
# p_enemy.c:1099: }
	.loc 1 1099 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE31:
	.size	A_SkelWhoosh, .-A_SkelWhoosh
	.globl	A_SkelFist
	.type	A_SkelFist, @function
A_SkelFist:
.LFB32:
	.loc 1 1102 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1105:     if (!actor->target)
	.loc 1 1105 15
	movq	-24(%rbp), %rax	# actor, tmp88
	movq	176(%rax), %rax	# actor_9(D)->target, _1
# p_enemy.c:1105:     if (!actor->target)
	.loc 1 1105 8
	testq	%rax, %rax	# _1
	je	.L231	#,
# p_enemy.c:1108:     A_FaceTarget (actor);
	.loc 1 1108 5
	movq	-24(%rbp), %rax	# actor, tmp89
	movq	%rax, %rdi	# tmp89,
	call	A_FaceTarget	#
# p_enemy.c:1110:     if (P_CheckMeleeRange (actor))
	.loc 1 1110 9
	movq	-24(%rbp), %rax	# actor, tmp90
	movq	%rax, %rdi	# tmp90,
	call	P_CheckMeleeRange	#
# p_enemy.c:1110:     if (P_CheckMeleeRange (actor))
	.loc 1 1110 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L228	#,
# p_enemy.c:1112: 	damage = ((P_Random()%10)+1)*6;
	.loc 1 1112 13
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _3
# p_enemy.c:1112: 	damage = ((P_Random()%10)+1)*6;
	.loc 1 1112 23 discriminator 1
	movslq	%ecx, %rax	# _3, tmp91
	imulq	$1717986919, %rax, %rax	#, tmp91, tmp92
	shrq	$32, %rax	#, tmp93
	movl	%eax, %edx	# tmp93, tmp94
	sarl	$2, %edx	#, tmp94
	movl	%ecx, %eax	# _3, tmp95
	sarl	$31, %eax	#, tmp95
	subl	%eax, %edx	# tmp95, _4
	movl	%edx, %eax	# _4, tmp96
	sall	$2, %eax	#, tmp96
	addl	%edx, %eax	# _4, tmp96
	addl	%eax, %eax	# tmp97
	subl	%eax, %ecx	# tmp96, _3
	movl	%ecx, %edx	# _3, _4
# p_enemy.c:1112: 	damage = ((P_Random()%10)+1)*6;
	.loc 1 1112 27 discriminator 1
	addl	$1, %edx	#, _5
# p_enemy.c:1112: 	damage = ((P_Random()%10)+1)*6;
	.loc 1 1112 9 discriminator 1
	movl	%edx, %eax	# _5, tmp98
	addl	%eax, %eax	# tmp98
	addl	%edx, %eax	# _5, tmp98
	addl	%eax, %eax	# tmp99
	movl	%eax, -4(%rbp)	# tmp98, damage
# p_enemy.c:1113: 	S_StartSound (actor, sfx_skepch);
	.loc 1 1113 2
	movq	-24(%rbp), %rax	# actor, tmp100
	movl	$53, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	S_StartSound@PLT	#
# p_enemy.c:1114: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 1114 21
	movq	-24(%rbp), %rax	# actor, tmp101
	movq	176(%rax), %rax	# actor_9(D)->target, _6
# p_enemy.c:1114: 	P_DamageMobj (actor->target, actor, actor, damage);
	.loc 1 1114 2
	movl	-4(%rbp), %ecx	# damage, tmp102
	movq	-24(%rbp), %rdx	# actor, tmp103
	movq	-24(%rbp), %rsi	# actor, tmp104
	movq	%rax, %rdi	# _6,
	call	P_DamageMobj@PLT	#
	jmp	.L228	#
.L231:
# p_enemy.c:1106: 	return;
	.loc 1 1106 2
	nop	
.L228:
# p_enemy.c:1116: }
	.loc 1 1116 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE32:
	.size	A_SkelFist, .-A_SkelFist
	.globl	corpsehit
	.bss
	.align 8
	.type	corpsehit, @object
	.size	corpsehit, 8
corpsehit:
	.zero	8
	.globl	vileobj
	.align 8
	.type	vileobj, @object
	.size	vileobj, 8
vileobj:
	.zero	8
	.globl	viletryx
	.align 4
	.type	viletryx, @object
	.size	viletryx, 4
viletryx:
	.zero	4
	.globl	viletryy
	.align 4
	.type	viletryy, @object
	.size	viletryy, 4
viletryy:
	.zero	4
	.text
	.globl	PIT_VileCheck
	.type	PIT_VileCheck, @function
PIT_VileCheck:
.LFB33:
	.loc 1 1130 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# thing, thing
# p_enemy.c:1134:     if (!(thing->flags & MF_CORPSE) )
	.loc 1 1134 16
	movq	-24(%rbp), %rax	# thing, tmp116
	movl	160(%rax), %eax	# thing_36(D)->flags, _1
# p_enemy.c:1134:     if (!(thing->flags & MF_CORPSE) )
	.loc 1 1134 24
	andl	$1048576, %eax	#, _2
# p_enemy.c:1134:     if (!(thing->flags & MF_CORPSE) )
	.loc 1 1134 8
	testl	%eax, %eax	# _2
	jne	.L233	#,
# p_enemy.c:1135: 	return true;	// not a monster
	.loc 1 1135 9
	movl	$1, %eax	#, _33
	jmp	.L234	#
.L233:
# p_enemy.c:1137:     if (thing->tics != -1)
	.loc 1 1137 14
	movq	-24(%rbp), %rax	# thing, tmp117
	movl	144(%rax), %eax	# thing_36(D)->tics, _3
# p_enemy.c:1137:     if (thing->tics != -1)
	.loc 1 1137 8
	cmpl	$-1, %eax	#, _3
	je	.L235	#,
# p_enemy.c:1138: 	return true;	// not lying still yet
	.loc 1 1138 9
	movl	$1, %eax	#, _33
	jmp	.L234	#
.L235:
# p_enemy.c:1140:     if (thing->info->raisestate == S_NULL)
	.loc 1 1140 14
	movq	-24(%rbp), %rax	# thing, tmp118
	movq	136(%rax), %rax	# thing_36(D)->info, _4
# p_enemy.c:1140:     if (thing->info->raisestate == S_NULL)
	.loc 1 1140 20
	movl	88(%rax), %eax	# _4->raisestate, _5
# p_enemy.c:1140:     if (thing->info->raisestate == S_NULL)
	.loc 1 1140 8
	testl	%eax, %eax	# _5
	jne	.L236	#,
# p_enemy.c:1141: 	return true;	// monster doesn't have a raise state
	.loc 1 1141 9
	movl	$1, %eax	#, _33
	jmp	.L234	#
.L236:
# p_enemy.c:1143:     maxdist = thing->info->radius + mobjinfo[MT_VILE].radius;
	.loc 1 1143 20
	movq	-24(%rbp), %rax	# thing, tmp119
	movq	136(%rax), %rax	# thing_36(D)->info, _6
# p_enemy.c:1143:     maxdist = thing->info->radius + mobjinfo[MT_VILE].radius;
	.loc 1 1143 26
	movl	64(%rax), %edx	# _6->radius, _7
# p_enemy.c:1143:     maxdist = thing->info->radius + mobjinfo[MT_VILE].radius;
	.loc 1 1143 54
	movl	340+mobjinfo(%rip), %eax	# mobjinfo[3].radius, _8
# p_enemy.c:1143:     maxdist = thing->info->radius + mobjinfo[MT_VILE].radius;
	.loc 1 1143 13
	addl	%edx, %eax	# _7, tmp120
	movl	%eax, -8(%rbp)	# tmp120, maxdist
# p_enemy.c:1145:     if ( abs(thing->x - viletryx) > maxdist
	.loc 1 1145 19
	movq	-24(%rbp), %rax	# thing, tmp121
	movl	24(%rax), %eax	# thing_36(D)->x, _9
# p_enemy.c:1145:     if ( abs(thing->x - viletryx) > maxdist
	.loc 1 1145 10
	movl	viletryx(%rip), %edx	# viletryx, viletryx.38_10
# p_enemy.c:1145:     if ( abs(thing->x - viletryx) > maxdist
	.loc 1 1145 23
	subl	%edx, %eax	# viletryx.38_10, _11
# p_enemy.c:1145:     if ( abs(thing->x - viletryx) > maxdist
	.loc 1 1145 10
	movl	%eax, %edx	# _11, tmp127
	negl	%edx	# tmp127
	cmovns	%edx, %eax	# tmp127,, _12
# p_enemy.c:1145:     if ( abs(thing->x - viletryx) > maxdist
	.loc 1 1145 8
	cmpl	%eax, -8(%rbp)	# _12, maxdist
	jl	.L237	#,
# p_enemy.c:1146: 	 || abs(thing->y - viletryy) > maxdist )
	.loc 1 1146 15
	movq	-24(%rbp), %rax	# thing, tmp122
	movl	28(%rax), %eax	# thing_36(D)->y, _13
# p_enemy.c:1146: 	 || abs(thing->y - viletryy) > maxdist )
	.loc 1 1146 6
	movl	viletryy(%rip), %edx	# viletryy, viletryy.39_14
# p_enemy.c:1146: 	 || abs(thing->y - viletryy) > maxdist )
	.loc 1 1146 19
	subl	%edx, %eax	# viletryy.39_14, _15
# p_enemy.c:1146: 	 || abs(thing->y - viletryy) > maxdist )
	.loc 1 1146 6
	movl	%eax, %edx	# _15, tmp126
	negl	%edx	# tmp126
	cmovns	%edx, %eax	# tmp126,, _16
# p_enemy.c:1146: 	 || abs(thing->y - viletryy) > maxdist )
	.loc 1 1146 3
	cmpl	%eax, -8(%rbp)	# _16, maxdist
	jge	.L238	#,
.L237:
# p_enemy.c:1147: 	return true;		// not actually touching
	.loc 1 1147 9
	movl	$1, %eax	#, _33
	jmp	.L234	#
.L238:
# p_enemy.c:1149:     corpsehit = thing;
	.loc 1 1149 15
	movq	-24(%rbp), %rax	# thing, tmp123
	movq	%rax, corpsehit(%rip)	# tmp123, corpsehit
# p_enemy.c:1150:     corpsehit->momx = corpsehit->momy = 0;
	.loc 1 1150 32
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.40_17
# p_enemy.c:1150:     corpsehit->momx = corpsehit->momy = 0;
	.loc 1 1150 39
	movl	$0, 116(%rax)	#, corpsehit.40_17->momy
# p_enemy.c:1150:     corpsehit->momx = corpsehit->momy = 0;
	.loc 1 1150 14
	movq	corpsehit(%rip), %rdx	# corpsehit, corpsehit.41_18
# p_enemy.c:1150:     corpsehit->momx = corpsehit->momy = 0;
	.loc 1 1150 32
	movl	116(%rax), %eax	# corpsehit.40_17->momy, _19
# p_enemy.c:1150:     corpsehit->momx = corpsehit->momy = 0;
	.loc 1 1150 21
	movl	%eax, 112(%rdx)	# _19, corpsehit.41_18->momx
# p_enemy.c:1151:     corpsehit->height <<= 2;
	.loc 1 1151 14
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.42_20
	movl	108(%rax), %edx	# corpsehit.42_20->height, _21
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.43_22
# p_enemy.c:1151:     corpsehit->height <<= 2;
	.loc 1 1151 23
	sall	$2, %edx	#, _23
	movl	%edx, 108(%rax)	# _23, corpsehit.43_22->height
# p_enemy.c:1152:     check = P_CheckPosition (corpsehit, corpsehit->x, corpsehit->y);
	.loc 1 1152 64
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.44_24
# p_enemy.c:1152:     check = P_CheckPosition (corpsehit, corpsehit->x, corpsehit->y);
	.loc 1 1152 13
	movl	28(%rax), %edx	# corpsehit.44_24->y, _25
# p_enemy.c:1152:     check = P_CheckPosition (corpsehit, corpsehit->x, corpsehit->y);
	.loc 1 1152 50
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.45_26
# p_enemy.c:1152:     check = P_CheckPosition (corpsehit, corpsehit->x, corpsehit->y);
	.loc 1 1152 13
	movl	24(%rax), %ecx	# corpsehit.45_26->x, _27
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.46_28
	movl	%ecx, %esi	# _27,
	movq	%rax, %rdi	# corpsehit.46_28,
	call	P_CheckPosition@PLT	#
	movl	%eax, -4(%rbp)	# tmp124, check
# p_enemy.c:1153:     corpsehit->height >>= 2;
	.loc 1 1153 14
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.47_29
	movl	108(%rax), %edx	# corpsehit.47_29->height, _30
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.48_31
# p_enemy.c:1153:     corpsehit->height >>= 2;
	.loc 1 1153 23
	sarl	$2, %edx	#, _32
	movl	%edx, 108(%rax)	# _32, corpsehit.48_31->height
# p_enemy.c:1155:     if (!check)
	.loc 1 1155 8
	cmpl	$0, -4(%rbp)	#, check
	jne	.L239	#,
# p_enemy.c:1156: 	return true;		// doesn't fit here
	.loc 1 1156 9
	movl	$1, %eax	#, _33
	jmp	.L234	#
.L239:
# p_enemy.c:1158:     return false;		// got one, so stop checking
	.loc 1 1158 12
	movl	$0, %eax	#, _33
.L234:
# p_enemy.c:1159: }
	.loc 1 1159 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE33:
	.size	PIT_VileCheck, .-PIT_VileCheck
	.globl	A_VileChase
	.type	A_VileChase, @function
A_VileChase:
.LFB34:
	.loc 1 1168 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# actor, actor
# p_enemy.c:1180:     if (actor->movedir != DI_NODIR)
	.loc 1 1180 14
	movq	-56(%rbp), %rax	# actor, tmp129
	movl	168(%rax), %eax	# actor_55(D)->movedir, _1
# p_enemy.c:1180:     if (actor->movedir != DI_NODIR)
	.loc 1 1180 8
	cmpl	$8, %eax	#, _1
	je	.L241	#,
# p_enemy.c:1184: 	    actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 1184 11
	movq	-56(%rbp), %rax	# actor, tmp130
	movl	24(%rax), %ecx	# actor_55(D)->x, _2
# p_enemy.c:1184: 	    actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 1184 22
	movq	-56(%rbp), %rax	# actor, tmp131
	movq	136(%rax), %rax	# actor_55(D)->info, _3
# p_enemy.c:1184: 	    actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 1184 28
	movl	60(%rax), %edx	# _3->speed, _4
# p_enemy.c:1184: 	    actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 1184 48
	movq	-56(%rbp), %rax	# actor, tmp132
	movl	168(%rax), %eax	# actor_55(D)->movedir, _5
# p_enemy.c:1184: 	    actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 1184 42
	cltq
	leaq	0(,%rax,4), %rsi	#, tmp134
	leaq	xspeed(%rip), %rax	#, tmp135
	movl	(%rsi,%rax), %eax	# xspeed[_5], _6
# p_enemy.c:1184: 	    actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 1184 35
	imull	%edx, %eax	# _4, _7
# p_enemy.c:1184: 	    actor->x + actor->info->speed*xspeed[actor->movedir];
	.loc 1 1184 15
	addl	%ecx, %eax	# _2, _8
# p_enemy.c:1183: 	viletryx =
	.loc 1 1183 11
	movl	%eax, viletryx(%rip)	# _8, viletryx
# p_enemy.c:1186: 	    actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 1186 11
	movq	-56(%rbp), %rax	# actor, tmp136
	movl	28(%rax), %ecx	# actor_55(D)->y, _9
# p_enemy.c:1186: 	    actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 1186 22
	movq	-56(%rbp), %rax	# actor, tmp137
	movq	136(%rax), %rax	# actor_55(D)->info, _10
# p_enemy.c:1186: 	    actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 1186 28
	movl	60(%rax), %edx	# _10->speed, _11
# p_enemy.c:1186: 	    actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 1186 48
	movq	-56(%rbp), %rax	# actor, tmp138
	movl	168(%rax), %eax	# actor_55(D)->movedir, _12
# p_enemy.c:1186: 	    actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 1186 42
	cltq
	leaq	0(,%rax,4), %rsi	#, tmp140
	leaq	yspeed(%rip), %rax	#, tmp141
	movl	(%rsi,%rax), %eax	# yspeed[_12], _13
# p_enemy.c:1186: 	    actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 1186 35
	imull	%edx, %eax	# _11, _14
# p_enemy.c:1186: 	    actor->y + actor->info->speed*yspeed[actor->movedir];
	.loc 1 1186 15
	addl	%ecx, %eax	# _9, _15
# p_enemy.c:1185: 	viletryy =
	.loc 1 1185 11
	movl	%eax, viletryy(%rip)	# _15, viletryy
# p_enemy.c:1188: 	xl = (viletryx - bmaporgx - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1188 17
	movl	viletryx(%rip), %edx	# viletryx, viletryx.49_16
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.50_17
	subl	%eax, %edx	# bmaporgx.50_17, _18
# p_enemy.c:1188: 	xl = (viletryx - bmaporgx - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1188 28
	leal	-4194304(%rdx), %eax	#, _19
# p_enemy.c:1188: 	xl = (viletryx - bmaporgx - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1188 5
	sarl	$23, %eax	#, tmp142
	movl	%eax, -32(%rbp)	# tmp142, xl
# p_enemy.c:1189: 	xh = (viletryx - bmaporgx + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1189 17
	movl	viletryx(%rip), %edx	# viletryx, viletryx.51_20
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.52_21
	subl	%eax, %edx	# bmaporgx.52_21, _22
# p_enemy.c:1189: 	xh = (viletryx - bmaporgx + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1189 28
	leal	4194304(%rdx), %eax	#, _23
# p_enemy.c:1189: 	xh = (viletryx - bmaporgx + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1189 5
	sarl	$23, %eax	#, tmp143
	movl	%eax, -28(%rbp)	# tmp143, xh
# p_enemy.c:1190: 	yl = (viletryy - bmaporgy - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1190 17
	movl	viletryy(%rip), %edx	# viletryy, viletryy.53_24
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.54_25
	subl	%eax, %edx	# bmaporgy.54_25, _26
# p_enemy.c:1190: 	yl = (viletryy - bmaporgy - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1190 28
	leal	-4194304(%rdx), %eax	#, _27
# p_enemy.c:1190: 	yl = (viletryy - bmaporgy - MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1190 5
	sarl	$23, %eax	#, tmp144
	movl	%eax, -24(%rbp)	# tmp144, yl
# p_enemy.c:1191: 	yh = (viletryy - bmaporgy + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1191 17
	movl	viletryy(%rip), %edx	# viletryy, viletryy.55_28
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.56_29
	subl	%eax, %edx	# bmaporgy.56_29, _30
# p_enemy.c:1191: 	yh = (viletryy - bmaporgy + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1191 28
	leal	4194304(%rdx), %eax	#, _31
# p_enemy.c:1191: 	yh = (viletryy - bmaporgy + MAXRADIUS*2)>>MAPBLOCKSHIFT;
	.loc 1 1191 5
	sarl	$23, %eax	#, tmp145
	movl	%eax, -20(%rbp)	# tmp145, yh
# p_enemy.c:1193: 	vileobj = actor;
	.loc 1 1193 10
	movq	-56(%rbp), %rax	# actor, tmp146
	movq	%rax, vileobj(%rip)	# tmp146, vileobj
# p_enemy.c:1194: 	for (bx=xl ; bx<=xh ; bx++)
	.loc 1 1194 9
	movl	-32(%rbp), %eax	# xl, tmp147
	movl	%eax, -40(%rbp)	# tmp147, bx
# p_enemy.c:1194: 	for (bx=xl ; bx<=xh ; bx++)
	.loc 1 1194 2
	jmp	.L242	#
.L247:
# p_enemy.c:1196: 	    for (by=yl ; by<=yh ; by++)
	.loc 1 1196 13
	movl	-24(%rbp), %eax	# yl, tmp148
	movl	%eax, -36(%rbp)	# tmp148, by
# p_enemy.c:1196: 	    for (by=yl ; by<=yh ; by++)
	.loc 1 1196 6
	jmp	.L243	#
.L246:
# p_enemy.c:1201: 		if (!P_BlockThingsIterator(bx,by,PIT_VileCheck))
	.loc 1 1201 8
	movl	-36(%rbp), %ecx	# by, tmp149
	movl	-40(%rbp), %eax	# bx, tmp150
	leaq	PIT_VileCheck(%rip), %rdx	#, tmp151
	movl	%ecx, %esi	# tmp149,
	movl	%eax, %edi	# tmp150,
	call	P_BlockThingsIterator@PLT	#
# p_enemy.c:1201: 		if (!P_BlockThingsIterator(bx,by,PIT_VileCheck))
	.loc 1 1201 6 discriminator 1
	testl	%eax, %eax	# _32
	jne	.L244	#,
# p_enemy.c:1204: 		    temp = actor->target;
	.loc 1 1204 12
	movq	-56(%rbp), %rax	# actor, tmp152
	movq	176(%rax), %rax	# actor_55(D)->target, tmp153
	movq	%rax, -16(%rbp)	# tmp153, temp
# p_enemy.c:1205: 		    actor->target = corpsehit;
	.loc 1 1205 21
	movq	corpsehit(%rip), %rdx	# corpsehit, corpsehit.57_33
	movq	-56(%rbp), %rax	# actor, tmp154
	movq	%rdx, 176(%rax)	# corpsehit.57_33, actor_55(D)->target
# p_enemy.c:1206: 		    A_FaceTarget (actor);
	.loc 1 1206 7
	movq	-56(%rbp), %rax	# actor, tmp155
	movq	%rax, %rdi	# tmp155,
	call	A_FaceTarget	#
# p_enemy.c:1207: 		    actor->target = temp;
	.loc 1 1207 21
	movq	-56(%rbp), %rax	# actor, tmp156
	movq	-16(%rbp), %rdx	# temp, tmp157
	movq	%rdx, 176(%rax)	# tmp157, actor_55(D)->target
# p_enemy.c:1209: 		    P_SetMobjState (actor, S_VILE_HEAL1);
	.loc 1 1209 7
	movq	-56(%rbp), %rax	# actor, tmp158
	movl	$266, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	P_SetMobjState@PLT	#
# p_enemy.c:1210: 		    S_StartSound (corpsehit, sfx_slop);
	.loc 1 1210 7
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.58_34
	movl	$31, %esi	#,
	movq	%rax, %rdi	# corpsehit.58_34,
	call	S_StartSound@PLT	#
# p_enemy.c:1211: 		    info = corpsehit->info;
	.loc 1 1211 23
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.59_35
# p_enemy.c:1211: 		    info = corpsehit->info;
	.loc 1 1211 12
	movq	136(%rax), %rax	# corpsehit.59_35->info, tmp159
	movq	%rax, -8(%rbp)	# tmp159, info
# p_enemy.c:1213: 		    P_SetMobjState (corpsehit,info->raisestate);
	.loc 1 1213 37
	movq	-8(%rbp), %rax	# info, tmp160
	movl	88(%rax), %eax	# info_74->raisestate, _36
# p_enemy.c:1213: 		    P_SetMobjState (corpsehit,info->raisestate);
	.loc 1 1213 7
	movl	%eax, %edx	# _36, _37
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.60_38
	movl	%edx, %esi	# _37,
	movq	%rax, %rdi	# corpsehit.60_38,
	call	P_SetMobjState@PLT	#
# p_enemy.c:1214: 		    corpsehit->height <<= 2;
	.loc 1 1214 16
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.61_39
	movl	108(%rax), %edx	# corpsehit.61_39->height, _40
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.62_41
# p_enemy.c:1214: 		    corpsehit->height <<= 2;
	.loc 1 1214 25
	sall	$2, %edx	#, _42
	movl	%edx, 108(%rax)	# _42, corpsehit.62_41->height
# p_enemy.c:1215: 		    corpsehit->flags = info->flags;
	.loc 1 1215 16
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.63_43
# p_enemy.c:1215: 		    corpsehit->flags = info->flags;
	.loc 1 1215 30
	movq	-8(%rbp), %rdx	# info, tmp161
	movl	84(%rdx), %edx	# info_74->flags, _44
# p_enemy.c:1215: 		    corpsehit->flags = info->flags;
	.loc 1 1215 24
	movl	%edx, 160(%rax)	# _44, corpsehit.63_43->flags
# p_enemy.c:1216: 		    corpsehit->health = info->spawnhealth;
	.loc 1 1216 16
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.64_45
# p_enemy.c:1216: 		    corpsehit->health = info->spawnhealth;
	.loc 1 1216 31
	movq	-8(%rbp), %rdx	# info, tmp162
	movl	8(%rdx), %edx	# info_74->spawnhealth, _46
# p_enemy.c:1216: 		    corpsehit->health = info->spawnhealth;
	.loc 1 1216 25
	movl	%edx, 164(%rax)	# _46, corpsehit.64_45->health
# p_enemy.c:1217: 		    corpsehit->target = NULL;
	.loc 1 1217 16
	movq	corpsehit(%rip), %rax	# corpsehit, corpsehit.65_47
# p_enemy.c:1217: 		    corpsehit->target = NULL;
	.loc 1 1217 25
	movq	$0, 176(%rax)	#, corpsehit.65_47->target
# p_enemy.c:1219: 		    return;
	.loc 1 1219 7
	jmp	.L240	#
.L244:
# p_enemy.c:1196: 	    for (by=yl ; by<=yh ; by++)
	.loc 1 1196 30 discriminator 2
	addl	$1, -36(%rbp)	#, by
.L243:
# p_enemy.c:1196: 	    for (by=yl ; by<=yh ; by++)
	.loc 1 1196 21 discriminator 1
	movl	-36(%rbp), %eax	# by, tmp163
	cmpl	-20(%rbp), %eax	# yh, tmp163
	jle	.L246	#,
# p_enemy.c:1194: 	for (bx=xl ; bx<=xh ; bx++)
	.loc 1 1194 26 discriminator 2
	addl	$1, -40(%rbp)	#, bx
.L242:
# p_enemy.c:1194: 	for (bx=xl ; bx<=xh ; bx++)
	.loc 1 1194 17 discriminator 1
	movl	-40(%rbp), %eax	# bx, tmp164
	cmpl	-28(%rbp), %eax	# xh, tmp164
	jle	.L247	#,
.L241:
# p_enemy.c:1226:     A_Chase (actor);
	.loc 1 1226 5
	movq	-56(%rbp), %rax	# actor, tmp165
	movq	%rax, %rdi	# tmp165,
	call	A_Chase	#
.L240:
# p_enemy.c:1227: }
	.loc 1 1227 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	A_VileChase, .-A_VileChase
	.globl	A_VileStart
	.type	A_VileStart, @function
A_VileStart:
.LFB35:
	.loc 1 1234 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1235:     S_StartSound (actor, sfx_vilatk);
	.loc 1 1235 5
	movq	-8(%rbp), %rax	# actor, tmp82
	movl	$54, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1236: }
	.loc 1 1236 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	A_VileStart, .-A_VileStart
	.globl	A_StartFire
	.type	A_StartFire, @function
A_StartFire:
.LFB36:
	.loc 1 1246 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1247:     S_StartSound(actor,sfx_flamst);
	.loc 1 1247 5
	movq	-8(%rbp), %rax	# actor, tmp82
	movl	$92, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1248:     A_Fire(actor);
	.loc 1 1248 5
	movq	-8(%rbp), %rax	# actor, tmp83
	movq	%rax, %rdi	# tmp83,
	call	A_Fire	#
# p_enemy.c:1249: }
	.loc 1 1249 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	A_StartFire, .-A_StartFire
	.globl	A_FireCrackle
	.type	A_FireCrackle, @function
A_FireCrackle:
.LFB37:
	.loc 1 1252 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1253:     S_StartSound(actor,sfx_flame);
	.loc 1 1253 5
	movq	-8(%rbp), %rax	# actor, tmp82
	movl	$91, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1254:     A_Fire(actor);
	.loc 1 1254 5
	movq	-8(%rbp), %rax	# actor, tmp83
	movq	%rax, %rdi	# tmp83,
	call	A_Fire	#
# p_enemy.c:1255: }
	.loc 1 1255 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE37:
	.size	A_FireCrackle, .-A_FireCrackle
	.globl	A_Fire
	.type	A_Fire, @function
A_Fire:
.LFB38:
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
	movq	%rdi, -40(%rbp)	# actor, actor
# p_enemy.c:1262:     dest = actor->tracer;
	.loc 1 1262 10
	movq	-40(%rbp), %rax	# actor, tmp98
	movq	216(%rax), %rax	# actor_19(D)->tracer, tmp99
	movq	%rax, -24(%rbp)	# tmp99, dest
# p_enemy.c:1263:     if (!dest)
	.loc 1 1263 8
	cmpq	$0, -24(%rbp)	#, dest
	je	.L255	#,
# p_enemy.c:1267:     if (!P_CheckSight (actor->target, dest) )
	.loc 1 1267 29
	movq	-40(%rbp), %rax	# actor, tmp100
	movq	176(%rax), %rax	# actor_19(D)->target, _1
# p_enemy.c:1267:     if (!P_CheckSight (actor->target, dest) )
	.loc 1 1267 10
	movq	-24(%rbp), %rdx	# dest, tmp101
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# _1,
	call	P_CheckSight@PLT	#
# p_enemy.c:1267:     if (!P_CheckSight (actor->target, dest) )
	.loc 1 1267 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L256	#,
# p_enemy.c:1270:     an = dest->angle >> ANGLETOFINESHIFT;
	.loc 1 1270 14
	movq	-24(%rbp), %rax	# dest, tmp102
	movl	56(%rax), %eax	# dest_20->angle, _3
# p_enemy.c:1270:     an = dest->angle >> ANGLETOFINESHIFT;
	.loc 1 1270 8
	shrl	$19, %eax	#, tmp103
	movl	%eax, -28(%rbp)	# tmp103, an
# p_enemy.c:1272:     P_UnsetThingPosition (actor);
	.loc 1 1272 5
	movq	-40(%rbp), %rax	# actor, tmp104
	movq	%rax, %rdi	# tmp104,
	call	P_UnsetThingPosition@PLT	#
# p_enemy.c:1273:     actor->x = dest->x + FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1273 20
	movq	-24(%rbp), %rax	# dest, tmp105
	movl	24(%rax), %ebx	# dest_20->x, _4
# p_enemy.c:1273:     actor->x = dest->x + FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1273 59
	movq	finecosine(%rip), %rax	# finecosine, finecosine.66_5
	movl	-28(%rbp), %edx	# an, _6
	salq	$2, %rdx	#, _7
	addq	%rdx, %rax	# _7, _8
# p_enemy.c:1273:     actor->x = dest->x + FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1273 26
	movl	(%rax), %eax	# *_8, _9
	movl	%eax, %esi	# _9,
	movl	$1572864, %edi	#,
	call	FixedMul@PLT	#
# p_enemy.c:1273:     actor->x = dest->x + FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1273 24 discriminator 1
	leal	(%rbx,%rax), %edx	#, _11
# p_enemy.c:1273:     actor->x = dest->x + FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1273 14 discriminator 1
	movq	-40(%rbp), %rax	# actor, tmp106
	movl	%edx, 24(%rax)	# _11, actor_19(D)->x
# p_enemy.c:1274:     actor->y = dest->y + FixedMul (24*FRACUNIT, finesine[an]);
	.loc 1 1274 20
	movq	-24(%rbp), %rax	# dest, tmp107
	movl	28(%rax), %ebx	# dest_20->y, _12
# p_enemy.c:1274:     actor->y = dest->y + FixedMul (24*FRACUNIT, finesine[an]);
	.loc 1 1274 26
	movl	-28(%rbp), %eax	# an, tmp108
	leaq	0(,%rax,4), %rdx	#, tmp109
	leaq	finesine(%rip), %rax	#, tmp110
	movl	(%rdx,%rax), %eax	# finesine[an_22], _13
	movl	%eax, %esi	# _13,
	movl	$1572864, %edi	#,
	call	FixedMul@PLT	#
# p_enemy.c:1274:     actor->y = dest->y + FixedMul (24*FRACUNIT, finesine[an]);
	.loc 1 1274 24 discriminator 1
	leal	(%rbx,%rax), %edx	#, _15
# p_enemy.c:1274:     actor->y = dest->y + FixedMul (24*FRACUNIT, finesine[an]);
	.loc 1 1274 14 discriminator 1
	movq	-40(%rbp), %rax	# actor, tmp111
	movl	%edx, 28(%rax)	# _15, actor_19(D)->y
# p_enemy.c:1275:     actor->z = dest->z;
	.loc 1 1275 20
	movq	-24(%rbp), %rax	# dest, tmp112
	movl	32(%rax), %edx	# dest_20->z, _16
# p_enemy.c:1275:     actor->z = dest->z;
	.loc 1 1275 14
	movq	-40(%rbp), %rax	# actor, tmp113
	movl	%edx, 32(%rax)	# _16, actor_19(D)->z
# p_enemy.c:1276:     P_SetThingPosition (actor);
	.loc 1 1276 5
	movq	-40(%rbp), %rax	# actor, tmp114
	movq	%rax, %rdi	# tmp114,
	call	P_SetThingPosition@PLT	#
	jmp	.L251	#
.L255:
# p_enemy.c:1264: 	return;
	.loc 1 1264 2
	nop	
	jmp	.L251	#
.L256:
# p_enemy.c:1268: 	return;
	.loc 1 1268 2
	nop	
.L251:
# p_enemy.c:1277: }
	.loc 1 1277 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE38:
	.size	A_Fire, .-A_Fire
	.globl	A_VileTarget
	.type	A_VileTarget, @function
A_VileTarget:
.LFB39:
	.loc 1 1286 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1289:     if (!actor->target)
	.loc 1 1289 15
	movq	-24(%rbp), %rax	# actor, tmp90
	movq	176(%rax), %rax	# actor_11(D)->target, _1
# p_enemy.c:1289:     if (!actor->target)
	.loc 1 1289 8
	testq	%rax, %rax	# _1
	je	.L260	#,
# p_enemy.c:1292:     A_FaceTarget (actor);
	.loc 1 1292 5
	movq	-24(%rbp), %rax	# actor, tmp91
	movq	%rax, %rdi	# tmp91,
	call	A_FaceTarget	#
# p_enemy.c:1296: 		       actor->target->z, MT_FIRE);
	.loc 1 1296 15
	movq	-24(%rbp), %rax	# actor, tmp92
	movq	176(%rax), %rax	# actor_11(D)->target, _2
# p_enemy.c:1294:     fog = P_SpawnMobj (actor->target->x,
	.loc 1 1294 11
	movl	32(%rax), %edx	# _2->z, _3
# p_enemy.c:1295: 		       actor->target->x,
	.loc 1 1295 15
	movq	-24(%rbp), %rax	# actor, tmp93
	movq	176(%rax), %rax	# actor_11(D)->target, _4
# p_enemy.c:1294:     fog = P_SpawnMobj (actor->target->x,
	.loc 1 1294 11
	movl	24(%rax), %esi	# _4->x, _5
# p_enemy.c:1294:     fog = P_SpawnMobj (actor->target->x,
	.loc 1 1294 29
	movq	-24(%rbp), %rax	# actor, tmp94
	movq	176(%rax), %rax	# actor_11(D)->target, _6
# p_enemy.c:1294:     fog = P_SpawnMobj (actor->target->x,
	.loc 1 1294 11
	movl	24(%rax), %eax	# _6->x, _7
	movl	$4, %ecx	#,
	movl	%eax, %edi	# _7,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -8(%rbp)	# tmp95, fog
# p_enemy.c:1298:     actor->tracer = fog;
	.loc 1 1298 19
	movq	-24(%rbp), %rax	# actor, tmp96
	movq	-8(%rbp), %rdx	# fog, tmp97
	movq	%rdx, 216(%rax)	# tmp97, actor_11(D)->tracer
# p_enemy.c:1299:     fog->target = actor;
	.loc 1 1299 17
	movq	-8(%rbp), %rax	# fog, tmp98
	movq	-24(%rbp), %rdx	# actor, tmp99
	movq	%rdx, 176(%rax)	# tmp99, fog_14->target
# p_enemy.c:1300:     fog->tracer = actor->target;
	.loc 1 1300 24
	movq	-24(%rbp), %rax	# actor, tmp100
	movq	176(%rax), %rdx	# actor_11(D)->target, _8
# p_enemy.c:1300:     fog->tracer = actor->target;
	.loc 1 1300 17
	movq	-8(%rbp), %rax	# fog, tmp101
	movq	%rdx, 216(%rax)	# _8, fog_14->tracer
# p_enemy.c:1301:     A_Fire (fog);
	.loc 1 1301 5
	movq	-8(%rbp), %rax	# fog, tmp102
	movq	%rax, %rdi	# tmp102,
	call	A_Fire	#
	jmp	.L257	#
.L260:
# p_enemy.c:1290: 	return;
	.loc 1 1290 2
	nop	
.L257:
# p_enemy.c:1302: }
	.loc 1 1302 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE39:
	.size	A_VileTarget, .-A_VileTarget
	.globl	A_VileAttack
	.type	A_VileAttack, @function
A_VileAttack:
.LFB40:
	.loc 1 1311 1
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
	movq	%rdi, -40(%rbp)	# actor, actor
# p_enemy.c:1315:     if (!actor->target)
	.loc 1 1315 15
	movq	-40(%rbp), %rax	# actor, tmp107
	movq	176(%rax), %rax	# actor_28(D)->target, _1
# p_enemy.c:1315:     if (!actor->target)
	.loc 1 1315 8
	testq	%rax, %rax	# _1
	je	.L266	#,
# p_enemy.c:1318:     A_FaceTarget (actor);
	.loc 1 1318 5
	movq	-40(%rbp), %rax	# actor, tmp108
	movq	%rax, %rdi	# tmp108,
	call	A_FaceTarget	#
# p_enemy.c:1320:     if (!P_CheckSight (actor, actor->target) )
	.loc 1 1320 36
	movq	-40(%rbp), %rax	# actor, tmp109
	movq	176(%rax), %rdx	# actor_28(D)->target, _2
# p_enemy.c:1320:     if (!P_CheckSight (actor, actor->target) )
	.loc 1 1320 10
	movq	-40(%rbp), %rax	# actor, tmp110
	movq	%rdx, %rsi	# _2,
	movq	%rax, %rdi	# tmp110,
	call	P_CheckSight@PLT	#
# p_enemy.c:1320:     if (!P_CheckSight (actor, actor->target) )
	.loc 1 1320 8 discriminator 1
	testl	%eax, %eax	# _3
	je	.L267	#,
# p_enemy.c:1323:     S_StartSound (actor, sfx_barexp);
	.loc 1 1323 5
	movq	-40(%rbp), %rax	# actor, tmp111
	movl	$82, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	S_StartSound@PLT	#
# p_enemy.c:1324:     P_DamageMobj (actor->target, actor, actor, 20);
	.loc 1 1324 24
	movq	-40(%rbp), %rax	# actor, tmp112
	movq	176(%rax), %rax	# actor_28(D)->target, _4
# p_enemy.c:1324:     P_DamageMobj (actor->target, actor, actor, 20);
	.loc 1 1324 5
	movq	-40(%rbp), %rdx	# actor, tmp113
	movq	-40(%rbp), %rsi	# actor, tmp114
	movl	$20, %ecx	#,
	movq	%rax, %rdi	# _4,
	call	P_DamageMobj@PLT	#
# p_enemy.c:1325:     actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;
	.loc 1 1325 46
	movq	-40(%rbp), %rax	# actor, tmp115
	movq	176(%rax), %rax	# actor_28(D)->target, _5
# p_enemy.c:1325:     actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;
	.loc 1 1325 54
	movq	136(%rax), %rax	# _5->info, _6
# p_enemy.c:1325:     actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;
	.loc 1 1325 60
	movl	72(%rax), %esi	# _6->mass, _7
# p_enemy.c:1325:     actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;
	.loc 1 1325 10
	movq	-40(%rbp), %rax	# actor, tmp116
	movq	176(%rax), %rcx	# actor_28(D)->target, _8
# p_enemy.c:1325:     actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;
	.loc 1 1325 40
	movl	$65536000, %eax	#, tmp119
	cltd
	idivl	%esi	# _7
# p_enemy.c:1325:     actor->target->momz = 1000*FRACUNIT/actor->target->info->mass;
	.loc 1 1325 25
	movl	%eax, 120(%rcx)	# _9, _8->momz
# p_enemy.c:1327:     an = actor->angle >> ANGLETOFINESHIFT;
	.loc 1 1327 15
	movq	-40(%rbp), %rax	# actor, tmp120
	movl	56(%rax), %eax	# actor_28(D)->angle, _10
# p_enemy.c:1327:     an = actor->angle >> ANGLETOFINESHIFT;
	.loc 1 1327 23
	shrl	$19, %eax	#, _11
# p_enemy.c:1327:     an = actor->angle >> ANGLETOFINESHIFT;
	.loc 1 1327 8
	movl	%eax, -28(%rbp)	# _11, an
# p_enemy.c:1329:     fire = actor->tracer;
	.loc 1 1329 10
	movq	-40(%rbp), %rax	# actor, tmp121
	movq	216(%rax), %rax	# actor_28(D)->tracer, tmp122
	movq	%rax, -24(%rbp)	# tmp122, fire
# p_enemy.c:1331:     if (!fire)
	.loc 1 1331 8
	cmpq	$0, -24(%rbp)	#, fire
	je	.L268	#,
# p_enemy.c:1335:     fire->x = actor->target->x - FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1335 20
	movq	-40(%rbp), %rax	# actor, tmp123
	movq	176(%rax), %rax	# actor_28(D)->target, _12
# p_enemy.c:1335:     fire->x = actor->target->x - FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1335 28
	movl	24(%rax), %ebx	# _12->x, _13
# p_enemy.c:1335:     fire->x = actor->target->x - FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1335 67
	movq	finecosine(%rip), %rax	# finecosine, finecosine.67_14
	movl	-28(%rbp), %edx	# an, tmp124
	movslq	%edx, %rdx	# tmp124, _15
	salq	$2, %rdx	#, _16
	addq	%rdx, %rax	# _16, _17
# p_enemy.c:1335:     fire->x = actor->target->x - FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1335 34
	movl	(%rax), %eax	# *_17, _18
	movl	%eax, %esi	# _18,
	movl	$1572864, %edi	#,
	call	FixedMul@PLT	#
# p_enemy.c:1335:     fire->x = actor->target->x - FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1335 32 discriminator 1
	subl	%eax, %ebx	# _19, _13
	movl	%ebx, %edx	# _13, _20
# p_enemy.c:1335:     fire->x = actor->target->x - FixedMul (24*FRACUNIT, finecosine[an]);
	.loc 1 1335 13 discriminator 1
	movq	-24(%rbp), %rax	# fire, tmp125
	movl	%edx, 24(%rax)	# _20, fire_35->x
# p_enemy.c:1336:     fire->y = actor->target->y - FixedMul (24*FRACUNIT, finesine[an]);	
	.loc 1 1336 20
	movq	-40(%rbp), %rax	# actor, tmp126
	movq	176(%rax), %rax	# actor_28(D)->target, _21
# p_enemy.c:1336:     fire->y = actor->target->y - FixedMul (24*FRACUNIT, finesine[an]);	
	.loc 1 1336 28
	movl	28(%rax), %ebx	# _21->y, _22
# p_enemy.c:1336:     fire->y = actor->target->y - FixedMul (24*FRACUNIT, finesine[an]);	
	.loc 1 1336 34
	movl	-28(%rbp), %eax	# an, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp129
	leaq	finesine(%rip), %rax	#, tmp130
	movl	(%rdx,%rax), %eax	# finesine[an_34], _23
	movl	%eax, %esi	# _23,
	movl	$1572864, %edi	#,
	call	FixedMul@PLT	#
# p_enemy.c:1336:     fire->y = actor->target->y - FixedMul (24*FRACUNIT, finesine[an]);	
	.loc 1 1336 32 discriminator 1
	subl	%eax, %ebx	# _24, _22
	movl	%ebx, %edx	# _22, _25
# p_enemy.c:1336:     fire->y = actor->target->y - FixedMul (24*FRACUNIT, finesine[an]);	
	.loc 1 1336 13 discriminator 1
	movq	-24(%rbp), %rax	# fire, tmp131
	movl	%edx, 28(%rax)	# _25, fire_35->y
# p_enemy.c:1337:     P_RadiusAttack (fire, actor, 70 );
	.loc 1 1337 5
	movq	-40(%rbp), %rcx	# actor, tmp132
	movq	-24(%rbp), %rax	# fire, tmp133
	movl	$70, %edx	#,
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	P_RadiusAttack@PLT	#
	jmp	.L261	#
.L266:
# p_enemy.c:1316: 	return;
	.loc 1 1316 2
	nop	
	jmp	.L261	#
.L267:
# p_enemy.c:1321: 	return;
	.loc 1 1321 2
	nop	
	jmp	.L261	#
.L268:
# p_enemy.c:1332: 	return;
	.loc 1 1332 2
	nop	
.L261:
# p_enemy.c:1338: }
	.loc 1 1338 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE40:
	.size	A_VileAttack, .-A_VileAttack
	.globl	A_FatRaise
	.type	A_FatRaise, @function
A_FatRaise:
.LFB41:
	.loc 1 1352 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1353:     A_FaceTarget (actor);
	.loc 1 1353 5
	movq	-8(%rbp), %rax	# actor, tmp82
	movq	%rax, %rdi	# tmp82,
	call	A_FaceTarget	#
# p_enemy.c:1354:     S_StartSound (actor, sfx_manatk);
	.loc 1 1354 5
	movq	-8(%rbp), %rax	# actor, tmp83
	movl	$99, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	S_StartSound@PLT	#
# p_enemy.c:1355: }
	.loc 1 1355 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE41:
	.size	A_FatRaise, .-A_FatRaise
	.globl	A_FatAttack1
	.type	A_FatAttack1, @function
A_FatAttack1:
.LFB42:
	.loc 1 1359 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1363:     A_FaceTarget (actor);
	.loc 1 1363 5
	movq	-24(%rbp), %rax	# actor, tmp102
	movq	%rax, %rdi	# tmp102,
	call	A_FaceTarget	#
# p_enemy.c:1365:     actor->angle += FATSPREAD;
	.loc 1 1365 10
	movq	-24(%rbp), %rax	# actor, tmp103
	movl	56(%rax), %eax	# actor_22(D)->angle, _1
# p_enemy.c:1365:     actor->angle += FATSPREAD;
	.loc 1 1365 18
	leal	134217728(%rax), %edx	#, _2
	movq	-24(%rbp), %rax	# actor, tmp104
	movl	%edx, 56(%rax)	# _2, actor_22(D)->angle
# p_enemy.c:1366:     P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1366 33
	movq	-24(%rbp), %rax	# actor, tmp105
	movq	176(%rax), %rcx	# actor_22(D)->target, _3
# p_enemy.c:1366:     P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1366 5
	movq	-24(%rbp), %rax	# actor, tmp106
	movl	$9, %edx	#,
	movq	%rcx, %rsi	# _3,
	movq	%rax, %rdi	# tmp106,
	call	P_SpawnMissile@PLT	#
# p_enemy.c:1368:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1368 38
	movq	-24(%rbp), %rax	# actor, tmp107
	movq	176(%rax), %rcx	# actor_22(D)->target, _4
# p_enemy.c:1368:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1368 10
	movq	-24(%rbp), %rax	# actor, tmp108
	movl	$9, %edx	#,
	movq	%rcx, %rsi	# _4,
	movq	%rax, %rdi	# tmp108,
	call	P_SpawnMissile@PLT	#
	movq	%rax, -8(%rbp)	# tmp109, mo
# p_enemy.c:1369:     mo->angle += FATSPREAD;
	.loc 1 1369 7
	movq	-8(%rbp), %rax	# mo, tmp110
	movl	56(%rax), %eax	# mo_27->angle, _5
# p_enemy.c:1369:     mo->angle += FATSPREAD;
	.loc 1 1369 15
	leal	134217728(%rax), %edx	#, _6
	movq	-8(%rbp), %rax	# mo, tmp111
	movl	%edx, 56(%rax)	# _6, mo_27->angle
# p_enemy.c:1370:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1370 12
	movq	-8(%rbp), %rax	# mo, tmp112
	movl	56(%rax), %eax	# mo_27->angle, _7
# p_enemy.c:1370:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1370 20
	shrl	$19, %eax	#, _8
# p_enemy.c:1370:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1370 8
	movl	%eax, -12(%rbp)	# _8, an
# p_enemy.c:1371:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1371 53
	movq	finecosine(%rip), %rax	# finecosine, finecosine.68_9
	movl	-12(%rbp), %edx	# an, tmp113
	movslq	%edx, %rdx	# tmp113, _10
	salq	$2, %rdx	#, _11
	addq	%rdx, %rax	# _11, _12
# p_enemy.c:1371:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1371 16
	movl	(%rax), %edx	# *_12, _13
# p_enemy.c:1371:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1371 28
	movq	-8(%rbp), %rax	# mo, tmp114
	movq	136(%rax), %rax	# mo_27->info, _14
# p_enemy.c:1371:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1371 16
	movl	60(%rax), %eax	# _14->speed, _15
	movl	%edx, %esi	# _13,
	movl	%eax, %edi	# _15,
	call	FixedMul@PLT	#
# p_enemy.c:1371:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1371 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp115
	movl	%eax, 112(%rdx)	# _16, mo_27->momx
# p_enemy.c:1372:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1372 16
	movl	-12(%rbp), %eax	# an, tmp117
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp118
	leaq	finesine(%rip), %rax	#, tmp119
	movl	(%rdx,%rax), %edx	# finesine[an_29], _17
# p_enemy.c:1372:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1372 28
	movq	-8(%rbp), %rax	# mo, tmp120
	movq	136(%rax), %rax	# mo_27->info, _18
# p_enemy.c:1372:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1372 16
	movl	60(%rax), %eax	# _18->speed, _19
	movl	%edx, %esi	# _17,
	movl	%eax, %edi	# _19,
	call	FixedMul@PLT	#
# p_enemy.c:1372:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1372 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp121
	movl	%eax, 116(%rdx)	# _20, mo_27->momy
# p_enemy.c:1373: }
	.loc 1 1373 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE42:
	.size	A_FatAttack1, .-A_FatAttack1
	.globl	A_FatAttack2
	.type	A_FatAttack2, @function
A_FatAttack2:
.LFB43:
	.loc 1 1376 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1380:     A_FaceTarget (actor);
	.loc 1 1380 5
	movq	-24(%rbp), %rax	# actor, tmp102
	movq	%rax, %rdi	# tmp102,
	call	A_FaceTarget	#
# p_enemy.c:1382:     actor->angle -= FATSPREAD;
	.loc 1 1382 10
	movq	-24(%rbp), %rax	# actor, tmp103
	movl	56(%rax), %eax	# actor_22(D)->angle, _1
# p_enemy.c:1382:     actor->angle -= FATSPREAD;
	.loc 1 1382 18
	leal	-134217728(%rax), %edx	#, _2
	movq	-24(%rbp), %rax	# actor, tmp104
	movl	%edx, 56(%rax)	# _2, actor_22(D)->angle
# p_enemy.c:1383:     P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1383 33
	movq	-24(%rbp), %rax	# actor, tmp105
	movq	176(%rax), %rcx	# actor_22(D)->target, _3
# p_enemy.c:1383:     P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1383 5
	movq	-24(%rbp), %rax	# actor, tmp106
	movl	$9, %edx	#,
	movq	%rcx, %rsi	# _3,
	movq	%rax, %rdi	# tmp106,
	call	P_SpawnMissile@PLT	#
# p_enemy.c:1385:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1385 38
	movq	-24(%rbp), %rax	# actor, tmp107
	movq	176(%rax), %rcx	# actor_22(D)->target, _4
# p_enemy.c:1385:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1385 10
	movq	-24(%rbp), %rax	# actor, tmp108
	movl	$9, %edx	#,
	movq	%rcx, %rsi	# _4,
	movq	%rax, %rdi	# tmp108,
	call	P_SpawnMissile@PLT	#
	movq	%rax, -8(%rbp)	# tmp109, mo
# p_enemy.c:1386:     mo->angle -= FATSPREAD*2;
	.loc 1 1386 7
	movq	-8(%rbp), %rax	# mo, tmp110
	movl	56(%rax), %eax	# mo_27->angle, _5
# p_enemy.c:1386:     mo->angle -= FATSPREAD*2;
	.loc 1 1386 15
	leal	-268435456(%rax), %edx	#, _6
	movq	-8(%rbp), %rax	# mo, tmp111
	movl	%edx, 56(%rax)	# _6, mo_27->angle
# p_enemy.c:1387:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1387 12
	movq	-8(%rbp), %rax	# mo, tmp112
	movl	56(%rax), %eax	# mo_27->angle, _7
# p_enemy.c:1387:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1387 20
	shrl	$19, %eax	#, _8
# p_enemy.c:1387:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1387 8
	movl	%eax, -12(%rbp)	# _8, an
# p_enemy.c:1388:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1388 53
	movq	finecosine(%rip), %rax	# finecosine, finecosine.69_9
	movl	-12(%rbp), %edx	# an, tmp113
	movslq	%edx, %rdx	# tmp113, _10
	salq	$2, %rdx	#, _11
	addq	%rdx, %rax	# _11, _12
# p_enemy.c:1388:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1388 16
	movl	(%rax), %edx	# *_12, _13
# p_enemy.c:1388:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1388 28
	movq	-8(%rbp), %rax	# mo, tmp114
	movq	136(%rax), %rax	# mo_27->info, _14
# p_enemy.c:1388:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1388 16
	movl	60(%rax), %eax	# _14->speed, _15
	movl	%edx, %esi	# _13,
	movl	%eax, %edi	# _15,
	call	FixedMul@PLT	#
# p_enemy.c:1388:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1388 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp115
	movl	%eax, 112(%rdx)	# _16, mo_27->momx
# p_enemy.c:1389:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1389 16
	movl	-12(%rbp), %eax	# an, tmp117
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp118
	leaq	finesine(%rip), %rax	#, tmp119
	movl	(%rdx,%rax), %edx	# finesine[an_29], _17
# p_enemy.c:1389:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1389 28
	movq	-8(%rbp), %rax	# mo, tmp120
	movq	136(%rax), %rax	# mo_27->info, _18
# p_enemy.c:1389:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1389 16
	movl	60(%rax), %eax	# _18->speed, _19
	movl	%edx, %esi	# _17,
	movl	%eax, %edi	# _19,
	call	FixedMul@PLT	#
# p_enemy.c:1389:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1389 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp121
	movl	%eax, 116(%rdx)	# _20, mo_27->momy
# p_enemy.c:1390: }
	.loc 1 1390 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE43:
	.size	A_FatAttack2, .-A_FatAttack2
	.globl	A_FatAttack3
	.type	A_FatAttack3, @function
A_FatAttack3:
.LFB44:
	.loc 1 1393 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1397:     A_FaceTarget (actor);
	.loc 1 1397 5
	movq	-24(%rbp), %rax	# actor, tmp116
	movq	%rax, %rdi	# tmp116,
	call	A_FaceTarget	#
# p_enemy.c:1399:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1399 38
	movq	-24(%rbp), %rax	# actor, tmp117
	movq	176(%rax), %rcx	# actor_36(D)->target, _1
# p_enemy.c:1399:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1399 10
	movq	-24(%rbp), %rax	# actor, tmp118
	movl	$9, %edx	#,
	movq	%rcx, %rsi	# _1,
	movq	%rax, %rdi	# tmp118,
	call	P_SpawnMissile@PLT	#
	movq	%rax, -8(%rbp)	# tmp119, mo
# p_enemy.c:1400:     mo->angle -= FATSPREAD/2;
	.loc 1 1400 7
	movq	-8(%rbp), %rax	# mo, tmp120
	movl	56(%rax), %eax	# mo_39->angle, _2
# p_enemy.c:1400:     mo->angle -= FATSPREAD/2;
	.loc 1 1400 15
	leal	-67108864(%rax), %edx	#, _3
	movq	-8(%rbp), %rax	# mo, tmp121
	movl	%edx, 56(%rax)	# _3, mo_39->angle
# p_enemy.c:1401:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1401 12
	movq	-8(%rbp), %rax	# mo, tmp122
	movl	56(%rax), %eax	# mo_39->angle, _4
# p_enemy.c:1401:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1401 20
	shrl	$19, %eax	#, _5
# p_enemy.c:1401:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1401 8
	movl	%eax, -12(%rbp)	# _5, an
# p_enemy.c:1402:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1402 53
	movq	finecosine(%rip), %rax	# finecosine, finecosine.70_6
	movl	-12(%rbp), %edx	# an, tmp123
	movslq	%edx, %rdx	# tmp123, _7
	salq	$2, %rdx	#, _8
	addq	%rdx, %rax	# _8, _9
# p_enemy.c:1402:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1402 16
	movl	(%rax), %edx	# *_9, _10
# p_enemy.c:1402:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1402 28
	movq	-8(%rbp), %rax	# mo, tmp124
	movq	136(%rax), %rax	# mo_39->info, _11
# p_enemy.c:1402:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1402 16
	movl	60(%rax), %eax	# _11->speed, _12
	movl	%edx, %esi	# _10,
	movl	%eax, %edi	# _12,
	call	FixedMul@PLT	#
# p_enemy.c:1402:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1402 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp125
	movl	%eax, 112(%rdx)	# _13, mo_39->momx
# p_enemy.c:1403:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1403 16
	movl	-12(%rbp), %eax	# an, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp128
	leaq	finesine(%rip), %rax	#, tmp129
	movl	(%rdx,%rax), %edx	# finesine[an_41], _14
# p_enemy.c:1403:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1403 28
	movq	-8(%rbp), %rax	# mo, tmp130
	movq	136(%rax), %rax	# mo_39->info, _15
# p_enemy.c:1403:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1403 16
	movl	60(%rax), %eax	# _15->speed, _16
	movl	%edx, %esi	# _14,
	movl	%eax, %edi	# _16,
	call	FixedMul@PLT	#
# p_enemy.c:1403:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1403 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp131
	movl	%eax, 116(%rdx)	# _17, mo_39->momy
# p_enemy.c:1405:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1405 38
	movq	-24(%rbp), %rax	# actor, tmp132
	movq	176(%rax), %rcx	# actor_36(D)->target, _18
# p_enemy.c:1405:     mo = P_SpawnMissile (actor, actor->target, MT_FATSHOT);
	.loc 1 1405 10
	movq	-24(%rbp), %rax	# actor, tmp133
	movl	$9, %edx	#,
	movq	%rcx, %rsi	# _18,
	movq	%rax, %rdi	# tmp133,
	call	P_SpawnMissile@PLT	#
	movq	%rax, -8(%rbp)	# tmp134, mo
# p_enemy.c:1406:     mo->angle += FATSPREAD/2;
	.loc 1 1406 7
	movq	-8(%rbp), %rax	# mo, tmp135
	movl	56(%rax), %eax	# mo_47->angle, _19
# p_enemy.c:1406:     mo->angle += FATSPREAD/2;
	.loc 1 1406 15
	leal	67108864(%rax), %edx	#, _20
	movq	-8(%rbp), %rax	# mo, tmp136
	movl	%edx, 56(%rax)	# _20, mo_47->angle
# p_enemy.c:1407:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1407 12
	movq	-8(%rbp), %rax	# mo, tmp137
	movl	56(%rax), %eax	# mo_47->angle, _21
# p_enemy.c:1407:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1407 20
	shrl	$19, %eax	#, _22
# p_enemy.c:1407:     an = mo->angle >> ANGLETOFINESHIFT;
	.loc 1 1407 8
	movl	%eax, -12(%rbp)	# _22, an
# p_enemy.c:1408:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1408 53
	movq	finecosine(%rip), %rax	# finecosine, finecosine.71_23
	movl	-12(%rbp), %edx	# an, tmp138
	movslq	%edx, %rdx	# tmp138, _24
	salq	$2, %rdx	#, _25
	addq	%rdx, %rax	# _25, _26
# p_enemy.c:1408:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1408 16
	movl	(%rax), %edx	# *_26, _27
# p_enemy.c:1408:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1408 28
	movq	-8(%rbp), %rax	# mo, tmp139
	movq	136(%rax), %rax	# mo_47->info, _28
# p_enemy.c:1408:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1408 16
	movl	60(%rax), %eax	# _28->speed, _29
	movl	%edx, %esi	# _27,
	movl	%eax, %edi	# _29,
	call	FixedMul@PLT	#
# p_enemy.c:1408:     mo->momx = FixedMul (mo->info->speed, finecosine[an]);
	.loc 1 1408 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp140
	movl	%eax, 112(%rdx)	# _30, mo_47->momx
# p_enemy.c:1409:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1409 16
	movl	-12(%rbp), %eax	# an, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp143
	leaq	finesine(%rip), %rax	#, tmp144
	movl	(%rdx,%rax), %edx	# finesine[an_49], _31
# p_enemy.c:1409:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1409 28
	movq	-8(%rbp), %rax	# mo, tmp145
	movq	136(%rax), %rax	# mo_47->info, _32
# p_enemy.c:1409:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1409 16
	movl	60(%rax), %eax	# _32->speed, _33
	movl	%edx, %esi	# _31,
	movl	%eax, %edi	# _33,
	call	FixedMul@PLT	#
# p_enemy.c:1409:     mo->momy = FixedMul (mo->info->speed, finesine[an]);
	.loc 1 1409 14 discriminator 1
	movq	-8(%rbp), %rdx	# mo, tmp146
	movl	%eax, 116(%rdx)	# _34, mo_47->momy
# p_enemy.c:1410: }
	.loc 1 1410 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE44:
	.size	A_FatAttack3, .-A_FatAttack3
	.globl	A_SkullAttack
	.type	A_SkullAttack, @function
A_SkullAttack:
.LFB45:
	.loc 1 1420 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1425:     if (!actor->target)
	.loc 1 1425 15
	movq	-24(%rbp), %rax	# actor, tmp109
	movq	176(%rax), %rax	# actor_31(D)->target, _1
# p_enemy.c:1425:     if (!actor->target)
	.loc 1 1425 8
	testq	%rax, %rax	# _1
	je	.L277	#,
# p_enemy.c:1428:     dest = actor->target;	
	.loc 1 1428 10
	movq	-24(%rbp), %rax	# actor, tmp110
	movq	176(%rax), %rax	# actor_31(D)->target, tmp111
	movq	%rax, -8(%rbp)	# tmp111, dest
# p_enemy.c:1429:     actor->flags |= MF_SKULLFLY;
	.loc 1 1429 10
	movq	-24(%rbp), %rax	# actor, tmp112
	movl	160(%rax), %eax	# actor_31(D)->flags, _2
# p_enemy.c:1429:     actor->flags |= MF_SKULLFLY;
	.loc 1 1429 18
	orl	$16777216, %eax	#, _2
	movl	%eax, %edx	# _2, _3
	movq	-24(%rbp), %rax	# actor, tmp113
	movl	%edx, 160(%rax)	# _3, actor_31(D)->flags
# p_enemy.c:1431:     S_StartSound (actor, actor->info->attacksound);
	.loc 1 1431 31
	movq	-24(%rbp), %rax	# actor, tmp114
	movq	136(%rax), %rax	# actor_31(D)->info, _4
# p_enemy.c:1431:     S_StartSound (actor, actor->info->attacksound);
	.loc 1 1431 5
	movl	24(%rax), %edx	# _4->attacksound, _5
	movq	-24(%rbp), %rax	# actor, tmp115
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp115,
	call	S_StartSound@PLT	#
# p_enemy.c:1432:     A_FaceTarget (actor);
	.loc 1 1432 5
	movq	-24(%rbp), %rax	# actor, tmp116
	movq	%rax, %rdi	# tmp116,
	call	A_FaceTarget	#
# p_enemy.c:1433:     an = actor->angle >> ANGLETOFINESHIFT;
	.loc 1 1433 15
	movq	-24(%rbp), %rax	# actor, tmp117
	movl	56(%rax), %eax	# actor_31(D)->angle, _6
# p_enemy.c:1433:     an = actor->angle >> ANGLETOFINESHIFT;
	.loc 1 1433 8
	shrl	$19, %eax	#, tmp118
	movl	%eax, -12(%rbp)	# tmp118, an
# p_enemy.c:1434:     actor->momx = FixedMul (SKULLSPEED, finecosine[an]);
	.loc 1 1434 51
	movq	finecosine(%rip), %rax	# finecosine, finecosine.72_7
	movl	-12(%rbp), %edx	# an, _8
	salq	$2, %rdx	#, _9
	addq	%rdx, %rax	# _9, _10
# p_enemy.c:1434:     actor->momx = FixedMul (SKULLSPEED, finecosine[an]);
	.loc 1 1434 19
	movl	(%rax), %eax	# *_10, _11
	movl	%eax, %esi	# _11,
	movl	$1310720, %edi	#,
	call	FixedMul@PLT	#
# p_enemy.c:1434:     actor->momx = FixedMul (SKULLSPEED, finecosine[an]);
	.loc 1 1434 17 discriminator 1
	movq	-24(%rbp), %rdx	# actor, tmp119
	movl	%eax, 112(%rdx)	# _12, actor_31(D)->momx
# p_enemy.c:1435:     actor->momy = FixedMul (SKULLSPEED, finesine[an]);
	.loc 1 1435 19
	movl	-12(%rbp), %eax	# an, tmp120
	leaq	0(,%rax,4), %rdx	#, tmp121
	leaq	finesine(%rip), %rax	#, tmp122
	movl	(%rdx,%rax), %eax	# finesine[an_36], _13
	movl	%eax, %esi	# _13,
	movl	$1310720, %edi	#,
	call	FixedMul@PLT	#
# p_enemy.c:1435:     actor->momy = FixedMul (SKULLSPEED, finesine[an]);
	.loc 1 1435 17 discriminator 1
	movq	-24(%rbp), %rdx	# actor, tmp123
	movl	%eax, 116(%rdx)	# _14, actor_31(D)->momy
# p_enemy.c:1436:     dist = P_AproxDistance (dest->x - actor->x, dest->y - actor->y);
	.loc 1 1436 53
	movq	-8(%rbp), %rax	# dest, tmp124
	movl	28(%rax), %edx	# dest_32->y, _15
# p_enemy.c:1436:     dist = P_AproxDistance (dest->x - actor->x, dest->y - actor->y);
	.loc 1 1436 64
	movq	-24(%rbp), %rax	# actor, tmp125
	movl	28(%rax), %eax	# actor_31(D)->y, _16
# p_enemy.c:1436:     dist = P_AproxDistance (dest->x - actor->x, dest->y - actor->y);
	.loc 1 1436 12
	subl	%eax, %edx	# _16, _17
# p_enemy.c:1436:     dist = P_AproxDistance (dest->x - actor->x, dest->y - actor->y);
	.loc 1 1436 33
	movq	-8(%rbp), %rax	# dest, tmp126
	movl	24(%rax), %esi	# dest_32->x, _18
# p_enemy.c:1436:     dist = P_AproxDistance (dest->x - actor->x, dest->y - actor->y);
	.loc 1 1436 44
	movq	-24(%rbp), %rax	# actor, tmp127
	movl	24(%rax), %ecx	# actor_31(D)->x, _19
# p_enemy.c:1436:     dist = P_AproxDistance (dest->x - actor->x, dest->y - actor->y);
	.loc 1 1436 12
	movl	%esi, %eax	# _18, _18
	subl	%ecx, %eax	# _19, _18
	movl	%edx, %esi	# _17,
	movl	%eax, %edi	# _20,
	call	P_AproxDistance@PLT	#
	movl	%eax, -16(%rbp)	# tmp128, dist
# p_enemy.c:1437:     dist = dist / SKULLSPEED;
	.loc 1 1437 10
	movl	-16(%rbp), %eax	# dist, tmp130
	movslq	%eax, %rdx	# tmp130, tmp131
	imulq	$1717986919, %rdx, %rdx	#, tmp131, tmp132
	shrq	$32, %rdx	#, tmp133
	movl	%edx, %ecx	# tmp133, tmp134
	sarl	$19, %ecx	#, tmp134
	cltd
	movl	%ecx, %eax	# tmp134, tmp134
	subl	%edx, %eax	# tmp135, tmp134
	movl	%eax, -16(%rbp)	# tmp129, dist
# p_enemy.c:1439:     if (dist < 1)
	.loc 1 1439 8
	cmpl	$0, -16(%rbp)	#, dist
	jg	.L276	#,
# p_enemy.c:1440: 	dist = 1;
	.loc 1 1440 7
	movl	$1, -16(%rbp)	#, dist
.L276:
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 24
	movq	-8(%rbp), %rax	# dest, tmp136
	movl	32(%rax), %edx	# dest_32->z, _21
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 33
	movq	-8(%rbp), %rax	# dest, tmp137
	movl	108(%rax), %eax	# dest_32->height, _22
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 41
	sarl	%eax	# _23
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 27
	addl	%eax, %edx	# _23, _24
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 53
	movq	-24(%rbp), %rax	# actor, tmp138
	movl	32(%rax), %eax	# actor_31(D)->z, _25
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 46
	subl	%eax, %edx	# _25, _26
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 58
	movl	%edx, %eax	# _26, _26
	cltd
	idivl	-16(%rbp)	# dist
	movl	%eax, %edx	# tmp139, _27
# p_enemy.c:1441:     actor->momz = (dest->z+(dest->height>>1) - actor->z) / dist;
	.loc 1 1441 17
	movq	-24(%rbp), %rax	# actor, tmp141
	movl	%edx, 120(%rax)	# _27, actor_31(D)->momz
	jmp	.L273	#
.L277:
# p_enemy.c:1426: 	return;
	.loc 1 1426 2
	nop	
.L273:
# p_enemy.c:1442: }
	.loc 1 1442 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE45:
	.size	A_SkullAttack, .-A_SkullAttack
	.globl	A_PainShootSkull
	.type	A_PainShootSkull, @function
A_PainShootSkull:
.LFB46:
	.loc 1 1453 1
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
	movq	%rdi, -72(%rbp)	# actor, actor
	movl	%esi, -76(%rbp)	# angle, angle
# p_enemy.c:1465:     count = 0;
	.loc 1 1465 11
	movl	$0, -56(%rbp)	#, count
# p_enemy.c:1467:     currentthinker = thinkercap.next;
	.loc 1 1467 20
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp105
	movq	%rax, -32(%rbp)	# tmp105, currentthinker
# p_enemy.c:1468:     while (currentthinker != &thinkercap)
	.loc 1 1468 11
	jmp	.L279	#
.L281:
# p_enemy.c:1470: 	if (   (currentthinker->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 1470 34
	movq	-32(%rbp), %rax	# currentthinker, tmp106
	movq	16(%rax), %rax	# currentthinker_26->function.acp1, _1
# p_enemy.c:1470: 	if (   (currentthinker->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 1470 5
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp108
	cmpq	%rdx, %rax	# tmp107, _1
	jne	.L280	#,
# p_enemy.c:1471: 	    && ((mobj_t *)currentthinker)->type == MT_SKULL)
	.loc 1 1471 35
	movq	-32(%rbp), %rax	# currentthinker, tmp109
	movl	128(%rax), %eax	# MEM[(struct mobj_t *)currentthinker_26].type, _2
# p_enemy.c:1471: 	    && ((mobj_t *)currentthinker)->type == MT_SKULL)
	.loc 1 1471 6
	cmpl	$18, %eax	#, _2
	jne	.L280	#,
# p_enemy.c:1472: 	    count++;
	.loc 1 1472 11
	addl	$1, -56(%rbp)	#, count
.L280:
# p_enemy.c:1473: 	currentthinker = currentthinker->next;
	.loc 1 1473 17
	movq	-32(%rbp), %rax	# currentthinker, tmp110
	movq	8(%rax), %rax	# currentthinker_26->next, tmp111
	movq	%rax, -32(%rbp)	# tmp111, currentthinker
.L279:
# p_enemy.c:1468:     while (currentthinker != &thinkercap)
	.loc 1 1468 27
	leaq	thinkercap(%rip), %rax	#, tmp112
	cmpq	%rax, -32(%rbp)	# tmp112, currentthinker
	jne	.L281	#,
# p_enemy.c:1478:     if (count > 20)
	.loc 1 1478 8
	cmpl	$20, -56(%rbp)	#, count
	jg	.L285	#,
# p_enemy.c:1483:     an = angle >> ANGLETOFINESHIFT;
	.loc 1 1483 8
	movl	-76(%rbp), %eax	# angle, tmp116
	shrl	$19, %eax	#, tmp115
	movl	%eax, -52(%rbp)	# tmp115, an
# p_enemy.c:1487: 	+ 3*(actor->info->radius + mobjinfo[MT_SKULL].radius)/2;
	.loc 1 1487 12
	movq	-72(%rbp), %rax	# actor, tmp117
	movq	136(%rax), %rax	# actor_33(D)->info, _3
# p_enemy.c:1487: 	+ 3*(actor->info->radius + mobjinfo[MT_SKULL].radius)/2;
	.loc 1 1487 18
	movl	64(%rax), %edx	# _3->radius, _4
# p_enemy.c:1487: 	+ 3*(actor->info->radius + mobjinfo[MT_SKULL].radius)/2;
	.loc 1 1487 47
	movl	1720+mobjinfo(%rip), %eax	# mobjinfo[18].radius, _5
# p_enemy.c:1487: 	+ 3*(actor->info->radius + mobjinfo[MT_SKULL].radius)/2;
	.loc 1 1487 27
	addl	%eax, %edx	# _5, _6
# p_enemy.c:1487: 	+ 3*(actor->info->radius + mobjinfo[MT_SKULL].radius)/2;
	.loc 1 1487 5
	movl	%edx, %eax	# _6, tmp118
	addl	%eax, %eax	# tmp118
	addl	%edx, %eax	# _6, _7
# p_enemy.c:1487: 	+ 3*(actor->info->radius + mobjinfo[MT_SKULL].radius)/2;
	.loc 1 1487 55
	movl	%eax, %edx	# _7, tmp119
	shrl	$31, %edx	#, tmp119
	addl	%edx, %eax	# tmp119, tmp120
	sarl	%eax	# tmp121
# p_enemy.c:1485:     prestep =
	.loc 1 1485 13
	addl	$262144, %eax	#, tmp122
	movl	%eax, -48(%rbp)	# tmp122, prestep
# p_enemy.c:1489:     x = actor->x + FixedMul (prestep, finecosine[an]);
	.loc 1 1489 14
	movq	-72(%rbp), %rax	# actor, tmp123
	movl	24(%rax), %ebx	# actor_33(D)->x, _9
# p_enemy.c:1489:     x = actor->x + FixedMul (prestep, finecosine[an]);
	.loc 1 1489 49
	movq	finecosine(%rip), %rax	# finecosine, finecosine.73_10
	movl	-52(%rbp), %edx	# an, _11
	salq	$2, %rdx	#, _12
	addq	%rdx, %rax	# _12, _13
# p_enemy.c:1489:     x = actor->x + FixedMul (prestep, finecosine[an]);
	.loc 1 1489 20
	movl	(%rax), %edx	# *_13, _14
	movl	-48(%rbp), %eax	# prestep, tmp124
	movl	%edx, %esi	# _14,
	movl	%eax, %edi	# tmp124,
	call	FixedMul@PLT	#
# p_enemy.c:1489:     x = actor->x + FixedMul (prestep, finecosine[an]);
	.loc 1 1489 7 discriminator 1
	addl	%ebx, %eax	# _9, tmp125
	movl	%eax, -44(%rbp)	# tmp125, x
# p_enemy.c:1490:     y = actor->y + FixedMul (prestep, finesine[an]);
	.loc 1 1490 14
	movq	-72(%rbp), %rax	# actor, tmp126
	movl	28(%rax), %ebx	# actor_33(D)->y, _16
# p_enemy.c:1490:     y = actor->y + FixedMul (prestep, finesine[an]);
	.loc 1 1490 20
	movl	-52(%rbp), %eax	# an, tmp127
	leaq	0(,%rax,4), %rdx	#, tmp128
	leaq	finesine(%rip), %rax	#, tmp129
	movl	(%rdx,%rax), %edx	# finesine[an_32], _17
	movl	-48(%rbp), %eax	# prestep, tmp130
	movl	%edx, %esi	# _17,
	movl	%eax, %edi	# tmp130,
	call	FixedMul@PLT	#
# p_enemy.c:1490:     y = actor->y + FixedMul (prestep, finesine[an]);
	.loc 1 1490 7 discriminator 1
	addl	%ebx, %eax	# _16, tmp131
	movl	%eax, -40(%rbp)	# tmp131, y
# p_enemy.c:1491:     z = actor->z + 8*FRACUNIT;
	.loc 1 1491 14
	movq	-72(%rbp), %rax	# actor, tmp132
	movl	32(%rax), %eax	# actor_33(D)->z, _19
# p_enemy.c:1491:     z = actor->z + 8*FRACUNIT;
	.loc 1 1491 7
	addl	$524288, %eax	#, tmp133
	movl	%eax, -36(%rbp)	# tmp133, z
# p_enemy.c:1493:     newmobj = P_SpawnMobj (x , y, z, MT_SKULL);
	.loc 1 1493 15
	movl	-36(%rbp), %edx	# z, tmp134
	movl	-40(%rbp), %esi	# y, tmp135
	movl	-44(%rbp), %eax	# x, tmp136
	movl	$18, %ecx	#,
	movl	%eax, %edi	# tmp136,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -24(%rbp)	# tmp137, newmobj
# p_enemy.c:1496:     if (!P_TryMove (newmobj, newmobj->x, newmobj->y))
	.loc 1 1496 10
	movq	-24(%rbp), %rax	# newmobj, tmp138
	movl	28(%rax), %edx	# newmobj_41->y, _20
	movq	-24(%rbp), %rax	# newmobj, tmp139
	movl	24(%rax), %ecx	# newmobj_41->x, _21
	movq	-24(%rbp), %rax	# newmobj, tmp140
	movl	%ecx, %esi	# _21,
	movq	%rax, %rdi	# tmp140,
	call	P_TryMove@PLT	#
# p_enemy.c:1496:     if (!P_TryMove (newmobj, newmobj->x, newmobj->y))
	.loc 1 1496 8 discriminator 1
	testl	%eax, %eax	# _22
	jne	.L284	#,
# p_enemy.c:1499: 	P_DamageMobj (newmobj,actor,actor,10000);	
	.loc 1 1499 2
	movq	-72(%rbp), %rdx	# actor, tmp141
	movq	-72(%rbp), %rsi	# actor, tmp142
	movq	-24(%rbp), %rax	# newmobj, tmp143
	movl	$10000, %ecx	#,
	movq	%rax, %rdi	# tmp143,
	call	P_DamageMobj@PLT	#
# p_enemy.c:1500: 	return;
	.loc 1 1500 2
	jmp	.L278	#
.L284:
# p_enemy.c:1503:     newmobj->target = actor->target;
	.loc 1 1503 28
	movq	-72(%rbp), %rax	# actor, tmp144
	movq	176(%rax), %rdx	# actor_33(D)->target, _23
# p_enemy.c:1503:     newmobj->target = actor->target;
	.loc 1 1503 21
	movq	-24(%rbp), %rax	# newmobj, tmp145
	movq	%rdx, 176(%rax)	# _23, newmobj_41->target
# p_enemy.c:1504:     A_SkullAttack (newmobj);
	.loc 1 1504 5
	movq	-24(%rbp), %rax	# newmobj, tmp146
	movq	%rax, %rdi	# tmp146,
	call	A_SkullAttack	#
	jmp	.L278	#
.L285:
# p_enemy.c:1479: 	return;
	.loc 1 1479 2
	nop	
.L278:
# p_enemy.c:1505: }
	.loc 1 1505 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE46:
	.size	A_PainShootSkull, .-A_PainShootSkull
	.globl	A_PainAttack
	.type	A_PainAttack, @function
A_PainAttack:
.LFB47:
	.loc 1 1513 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1514:     if (!actor->target)
	.loc 1 1514 15
	movq	-8(%rbp), %rax	# actor, tmp84
	movq	176(%rax), %rax	# actor_5(D)->target, _1
# p_enemy.c:1514:     if (!actor->target)
	.loc 1 1514 8
	testq	%rax, %rax	# _1
	je	.L289	#,
# p_enemy.c:1517:     A_FaceTarget (actor);
	.loc 1 1517 5
	movq	-8(%rbp), %rax	# actor, tmp85
	movq	%rax, %rdi	# tmp85,
	call	A_FaceTarget	#
# p_enemy.c:1518:     A_PainShootSkull (actor, actor->angle);
	.loc 1 1518 5
	movq	-8(%rbp), %rax	# actor, tmp86
	movl	56(%rax), %edx	# actor_5(D)->angle, _2
	movq	-8(%rbp), %rax	# actor, tmp87
	movl	%edx, %esi	# _2,
	movq	%rax, %rdi	# tmp87,
	call	A_PainShootSkull	#
	jmp	.L286	#
.L289:
# p_enemy.c:1515: 	return;
	.loc 1 1515 2
	nop	
.L286:
# p_enemy.c:1519: }
	.loc 1 1519 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE47:
	.size	A_PainAttack, .-A_PainAttack
	.globl	A_PainDie
	.type	A_PainDie, @function
A_PainDie:
.LFB48:
	.loc 1 1523 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1524:     A_Fall (actor);
	.loc 1 1524 5
	movq	-8(%rbp), %rax	# actor, tmp88
	movq	%rax, %rdi	# tmp88,
	call	A_Fall	#
# p_enemy.c:1525:     A_PainShootSkull (actor, actor->angle+ANG90);
	.loc 1 1525 35
	movq	-8(%rbp), %rax	# actor, tmp89
	movl	56(%rax), %eax	# actor_8(D)->angle, _1
# p_enemy.c:1525:     A_PainShootSkull (actor, actor->angle+ANG90);
	.loc 1 1525 5
	leal	1073741824(%rax), %edx	#, _2
	movq	-8(%rbp), %rax	# actor, tmp90
	movl	%edx, %esi	# _2,
	movq	%rax, %rdi	# tmp90,
	call	A_PainShootSkull	#
# p_enemy.c:1526:     A_PainShootSkull (actor, actor->angle+ANG180);
	.loc 1 1526 35
	movq	-8(%rbp), %rax	# actor, tmp91
	movl	56(%rax), %eax	# actor_8(D)->angle, _3
# p_enemy.c:1526:     A_PainShootSkull (actor, actor->angle+ANG180);
	.loc 1 1526 5
	leal	-2147483648(%rax), %edx	#, _4
	movq	-8(%rbp), %rax	# actor, tmp92
	movl	%edx, %esi	# _4,
	movq	%rax, %rdi	# tmp92,
	call	A_PainShootSkull	#
# p_enemy.c:1527:     A_PainShootSkull (actor, actor->angle+ANG270);
	.loc 1 1527 35
	movq	-8(%rbp), %rax	# actor, tmp93
	movl	56(%rax), %eax	# actor_8(D)->angle, _5
# p_enemy.c:1527:     A_PainShootSkull (actor, actor->angle+ANG270);
	.loc 1 1527 5
	leal	-1073741824(%rax), %edx	#, _6
	movq	-8(%rbp), %rax	# actor, tmp94
	movl	%edx, %esi	# _6,
	movq	%rax, %rdi	# tmp94,
	call	A_PainShootSkull	#
# p_enemy.c:1528: }
	.loc 1 1528 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE48:
	.size	A_PainDie, .-A_PainDie
	.globl	A_Scream
	.type	A_Scream, @function
A_Scream:
.LFB49:
	.loc 1 1536 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# actor, actor
# p_enemy.c:1539:     switch (actor->info->deathsound)
	.loc 1 1539 18
	movq	-24(%rbp), %rax	# actor, tmp93
	movq	136(%rax), %rax	# actor_14(D)->info, _1
# p_enemy.c:1539:     switch (actor->info->deathsound)
	.loc 1 1539 24
	movl	56(%rax), %eax	# _1->deathsound, _2
# p_enemy.c:1539:     switch (actor->info->deathsound)
	.loc 1 1539 5
	cmpl	$63, %eax	#, _2
	jg	.L292	#,
	cmpl	$62, %eax	#, _2
	jge	.L293	#,
	testl	%eax, %eax	# _2
	je	.L300	#,
	testl	%eax, %eax	# _2
	js	.L292	#,
	subl	$59, %eax	#, _23
	cmpl	$2, %eax	#, _23
	ja	.L292	#,
# p_enemy.c:1547: 	sound = sfx_podth1 + P_Random ()%3;
	.loc 1 1547 23
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _3
# p_enemy.c:1547: 	sound = sfx_podth1 + P_Random ()%3;
	.loc 1 1547 34 discriminator 1
	movslq	%ecx, %rax	# _3, tmp94
	imulq	$1431655766, %rax, %rax	#, tmp94, tmp95
	shrq	$32, %rax	#, tmp95
	movq	%rax, %rdx	# tmp95, tmp96
	movl	%ecx, %eax	# _3, tmp97
	sarl	$31, %eax	#, tmp97
	subl	%eax, %edx	# tmp97, _4
	movl	%edx, %eax	# _4, tmp98
	addl	%eax, %eax	# tmp98
	addl	%edx, %eax	# _4, tmp98
	subl	%eax, %ecx	# tmp98, _3
	movl	%ecx, %edx	# _3, _4
# p_enemy.c:1547: 	sound = sfx_podth1 + P_Random ()%3;
	.loc 1 1547 8 discriminator 1
	leal	59(%rdx), %eax	#, tmp99
	movl	%eax, -4(%rbp)	# tmp99, sound
# p_enemy.c:1548: 	break;
	.loc 1 1548 2
	jmp	.L297	#
.L293:
# p_enemy.c:1552: 	sound = sfx_bgdth1 + P_Random ()%2;
	.loc 1 1552 23
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _5
# p_enemy.c:1552: 	sound = sfx_bgdth1 + P_Random ()%2;
	.loc 1 1552 34 discriminator 1
	movl	%edx, %eax	# _5, tmp100
	sarl	$31, %eax	#, tmp100
	shrl	$31, %eax	#, tmp101
	addl	%eax, %edx	# tmp101, tmp102
	andl	$1, %edx	#, tmp103
	subl	%eax, %edx	# tmp101, tmp104
	movl	%edx, %eax	# tmp104, _6
# p_enemy.c:1552: 	sound = sfx_bgdth1 + P_Random ()%2;
	.loc 1 1552 8 discriminator 1
	addl	$62, %eax	#, tmp105
	movl	%eax, -4(%rbp)	# tmp105, sound
# p_enemy.c:1553: 	break;
	.loc 1 1553 2
	jmp	.L297	#
.L292:
# p_enemy.c:1556: 	sound = actor->info->deathsound;
	.loc 1 1556 15
	movq	-24(%rbp), %rax	# actor, tmp106
	movq	136(%rax), %rax	# actor_14(D)->info, _7
# p_enemy.c:1556: 	sound = actor->info->deathsound;
	.loc 1 1556 8
	movl	56(%rax), %eax	# _7->deathsound, tmp107
	movl	%eax, -4(%rbp)	# tmp107, sound
# p_enemy.c:1557: 	break;
	.loc 1 1557 2
	nop	
.L297:
# p_enemy.c:1561:     if (actor->type==MT_SPIDER
	.loc 1 1561 14
	movq	-24(%rbp), %rax	# actor, tmp108
	movl	128(%rax), %eax	# actor_14(D)->type, _8
# p_enemy.c:1561:     if (actor->type==MT_SPIDER
	.loc 1 1561 8
	cmpl	$19, %eax	#, _8
	je	.L298	#,
# p_enemy.c:1562: 	|| actor->type == MT_CYBORG)
	.loc 1 1562 10
	movq	-24(%rbp), %rax	# actor, tmp109
	movl	128(%rax), %eax	# actor_14(D)->type, _9
# p_enemy.c:1562: 	|| actor->type == MT_CYBORG)
	.loc 1 1562 2
	cmpl	$21, %eax	#, _9
	jne	.L299	#,
.L298:
# p_enemy.c:1565: 	S_StartSound (NULL, sound);
	.loc 1 1565 2
	movl	-4(%rbp), %eax	# sound, tmp110
	movl	%eax, %esi	# tmp110,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
	jmp	.L291	#
.L299:
# p_enemy.c:1568: 	S_StartSound (actor, sound);
	.loc 1 1568 2
	movl	-4(%rbp), %edx	# sound, tmp111
	movq	-24(%rbp), %rax	# actor, tmp112
	movl	%edx, %esi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	S_StartSound@PLT	#
	jmp	.L291	#
.L300:
# p_enemy.c:1542: 	return;
	.loc 1 1542 2
	nop	
.L291:
# p_enemy.c:1569: }
	.loc 1 1569 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE49:
	.size	A_Scream, .-A_Scream
	.globl	A_XScream
	.type	A_XScream, @function
A_XScream:
.LFB50:
	.loc 1 1573 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1574:     S_StartSound (actor, sfx_slop);	
	.loc 1 1574 5
	movq	-8(%rbp), %rax	# actor, tmp82
	movl	$31, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1575: }
	.loc 1 1575 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE50:
	.size	A_XScream, .-A_XScream
	.globl	A_Pain
	.type	A_Pain, @function
A_Pain:
.LFB51:
	.loc 1 1578 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1579:     if (actor->info->painsound)
	.loc 1 1579 14
	movq	-8(%rbp), %rax	# actor, tmp86
	movq	136(%rax), %rax	# actor_7(D)->info, _1
# p_enemy.c:1579:     if (actor->info->painsound)
	.loc 1 1579 20
	movl	36(%rax), %eax	# _1->painsound, _2
# p_enemy.c:1579:     if (actor->info->painsound)
	.loc 1 1579 8
	testl	%eax, %eax	# _2
	je	.L304	#,
# p_enemy.c:1580: 	S_StartSound (actor, actor->info->painsound);	
	.loc 1 1580 28
	movq	-8(%rbp), %rax	# actor, tmp87
	movq	136(%rax), %rax	# actor_7(D)->info, _3
# p_enemy.c:1580: 	S_StartSound (actor, actor->info->painsound);	
	.loc 1 1580 2
	movl	36(%rax), %edx	# _3->painsound, _4
	movq	-8(%rbp), %rax	# actor, tmp88
	movl	%edx, %esi	# _4,
	movq	%rax, %rdi	# tmp88,
	call	S_StartSound@PLT	#
.L304:
# p_enemy.c:1581: }
	.loc 1 1581 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE51:
	.size	A_Pain, .-A_Pain
	.globl	A_Fall
	.type	A_Fall, @function
A_Fall:
.LFB52:
	.loc 1 1586 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# actor, actor
# p_enemy.c:1588:     actor->flags &= ~MF_SOLID;
	.loc 1 1588 10
	movq	-8(%rbp), %rax	# actor, tmp84
	movl	160(%rax), %eax	# actor_4(D)->flags, _1
# p_enemy.c:1588:     actor->flags &= ~MF_SOLID;
	.loc 1 1588 18
	andl	$-3, %eax	#, _1
	movl	%eax, %edx	# _1, _2
	movq	-8(%rbp), %rax	# actor, tmp85
	movl	%edx, 160(%rax)	# _2, actor_4(D)->flags
# p_enemy.c:1592: }
	.loc 1 1592 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE52:
	.size	A_Fall, .-A_Fall
	.globl	A_Explode
	.type	A_Explode, @function
A_Explode:
.LFB53:
	.loc 1 1599 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# thingy, thingy
# p_enemy.c:1600:     P_RadiusAttack ( thingy, thingy->target, 128 );
	.loc 1 1600 36
	movq	-8(%rbp), %rax	# thingy, tmp83
	movq	176(%rax), %rcx	# thingy_3(D)->target, _1
# p_enemy.c:1600:     P_RadiusAttack ( thingy, thingy->target, 128 );
	.loc 1 1600 5
	movq	-8(%rbp), %rax	# thingy, tmp84
	movl	$128, %edx	#,
	movq	%rcx, %rsi	# _1,
	movq	%rax, %rdi	# tmp84,
	call	P_RadiusAttack@PLT	#
# p_enemy.c:1601: }
	.loc 1 1601 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE53:
	.size	A_Explode, .-A_Explode
	.globl	A_BossDeath
	.type	A_BossDeath, @function
A_BossDeath:
.LFB54:
	.loc 1 1610 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# mo, mo
# p_enemy.c:1610: {
	.loc 1 1610 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	movq	%rax, -8(%rbp)	# tmp145, D.9007
	xorl	%eax, %eax	# tmp145
# p_enemy.c:1616:     if ( gamemode == commercial)
	.loc 1 1616 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.74_1
# p_enemy.c:1616:     if ( gamemode == commercial)
	.loc 1 1616 8
	cmpl	$2, %eax	#, gamemode.74_1
	jne	.L308	#,
# p_enemy.c:1618: 	if (gamemap != 7)
	.loc 1 1618 14
	movl	gamemap(%rip), %eax	# gamemap, gamemap.75_2
# p_enemy.c:1618: 	if (gamemap != 7)
	.loc 1 1618 5
	cmpl	$7, %eax	#, gamemap.75_2
	jne	.L348	#,
# p_enemy.c:1621: 	if ((mo->type != MT_FATSO)
	.loc 1 1621 9
	movq	-136(%rbp), %rax	# mo, tmp109
	movl	128(%rax), %eax	# mo_33(D)->type, _3
# p_enemy.c:1621: 	if ((mo->type != MT_FATSO)
	.loc 1 1621 5
	cmpl	$8, %eax	#, _3
	je	.L311	#,
# p_enemy.c:1622: 	    && (mo->type != MT_BABY))
	.loc 1 1622 12
	movq	-136(%rbp), %rax	# mo, tmp110
	movl	128(%rax), %eax	# mo_33(D)->type, _4
# p_enemy.c:1622: 	    && (mo->type != MT_BABY))
	.loc 1 1622 6
	cmpl	$20, %eax	#, _4
	je	.L311	#,
# p_enemy.c:1623: 	    return;
	.loc 1 1623 6
	jmp	.L307	#
.L308:
# p_enemy.c:1627: 	switch(gameepisode)
	.loc 1 1627 2
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.76_5
	cmpl	$4, %eax	#, gameepisode.76_5
	je	.L312	#,
	cmpl	$4, %eax	#, gameepisode.76_5
	jg	.L313	#,
	cmpl	$3, %eax	#, gameepisode.76_5
	je	.L314	#,
	cmpl	$3, %eax	#, gameepisode.76_5
	jg	.L313	#,
	cmpl	$1, %eax	#, gameepisode.76_5
	je	.L315	#,
	cmpl	$2, %eax	#, gameepisode.76_5
	je	.L316	#,
	jmp	.L313	#
.L315:
# p_enemy.c:1630: 	    if (gamemap != 8)
	.loc 1 1630 18
	movl	gamemap(%rip), %eax	# gamemap, gamemap.77_6
# p_enemy.c:1630: 	    if (gamemap != 8)
	.loc 1 1630 9
	cmpl	$8, %eax	#, gamemap.77_6
	jne	.L349	#,
# p_enemy.c:1633: 	    if (mo->type != MT_BRUISER)
	.loc 1 1633 12
	movq	-136(%rbp), %rax	# mo, tmp111
	movl	128(%rax), %eax	# mo_33(D)->type, _7
# p_enemy.c:1633: 	    if (mo->type != MT_BRUISER)
	.loc 1 1633 9
	cmpl	$15, %eax	#, _7
	je	.L350	#,
# p_enemy.c:1634: 		return;
	.loc 1 1634 3
	jmp	.L307	#
.L316:
# p_enemy.c:1638: 	    if (gamemap != 8)
	.loc 1 1638 18
	movl	gamemap(%rip), %eax	# gamemap, gamemap.78_8
# p_enemy.c:1638: 	    if (gamemap != 8)
	.loc 1 1638 9
	cmpl	$8, %eax	#, gamemap.78_8
	jne	.L351	#,
# p_enemy.c:1641: 	    if (mo->type != MT_CYBORG)
	.loc 1 1641 12
	movq	-136(%rbp), %rax	# mo, tmp112
	movl	128(%rax), %eax	# mo_33(D)->type, _9
# p_enemy.c:1641: 	    if (mo->type != MT_CYBORG)
	.loc 1 1641 9
	cmpl	$21, %eax	#, _9
	je	.L352	#,
# p_enemy.c:1642: 		return;
	.loc 1 1642 3
	jmp	.L307	#
.L314:
# p_enemy.c:1646: 	    if (gamemap != 8)
	.loc 1 1646 18
	movl	gamemap(%rip), %eax	# gamemap, gamemap.79_10
# p_enemy.c:1646: 	    if (gamemap != 8)
	.loc 1 1646 9
	cmpl	$8, %eax	#, gamemap.79_10
	jne	.L353	#,
# p_enemy.c:1649: 	    if (mo->type != MT_SPIDER)
	.loc 1 1649 12
	movq	-136(%rbp), %rax	# mo, tmp113
	movl	128(%rax), %eax	# mo_33(D)->type, _11
# p_enemy.c:1649: 	    if (mo->type != MT_SPIDER)
	.loc 1 1649 9
	cmpl	$19, %eax	#, _11
	je	.L354	#,
# p_enemy.c:1650: 		return;
	.loc 1 1650 3
	jmp	.L307	#
.L312:
# p_enemy.c:1655: 	    switch(gamemap)
	.loc 1 1655 6
	movl	gamemap(%rip), %eax	# gamemap, gamemap.80_12
	cmpl	$6, %eax	#, gamemap.80_12
	je	.L323	#,
	cmpl	$8, %eax	#, gamemap.80_12
	je	.L324	#,
# p_enemy.c:1668: 		return;
	.loc 1 1668 3
	jmp	.L307	#
.L323:
# p_enemy.c:1658: 		if (mo->type != MT_CYBORG)
	.loc 1 1658 9
	movq	-136(%rbp), %rax	# mo, tmp114
	movl	128(%rax), %eax	# mo_33(D)->type, _13
# p_enemy.c:1658: 		if (mo->type != MT_CYBORG)
	.loc 1 1658 6
	cmpl	$21, %eax	#, _13
	je	.L355	#,
# p_enemy.c:1659: 		    return;
	.loc 1 1659 7
	jmp	.L307	#
.L324:
# p_enemy.c:1663: 		if (mo->type != MT_SPIDER)
	.loc 1 1663 9
	movq	-136(%rbp), %rax	# mo, tmp115
	movl	128(%rax), %eax	# mo_33(D)->type, _14
# p_enemy.c:1663: 		if (mo->type != MT_SPIDER)
	.loc 1 1663 6
	cmpl	$19, %eax	#, _14
	jne	.L356	#,
# p_enemy.c:1665: 		break;
	.loc 1 1665 3
	jmp	.L327	#
.L355:
# p_enemy.c:1660: 		break;
	.loc 1 1660 3
	nop	
.L327:
# p_enemy.c:1671: 	    break;
	.loc 1 1671 6
	jmp	.L311	#
.L313:
# p_enemy.c:1674: 	    if (gamemap != 8)
	.loc 1 1674 18
	movl	gamemap(%rip), %eax	# gamemap, gamemap.81_15
# p_enemy.c:1674: 	    if (gamemap != 8)
	.loc 1 1674 9
	cmpl	$8, %eax	#, gamemap.81_15
	jne	.L357	#,
# p_enemy.c:1676: 	    break;
	.loc 1 1676 6
	jmp	.L311	#
.L350:
# p_enemy.c:1635: 	    break;
	.loc 1 1635 6
	nop	
	jmp	.L311	#
.L352:
# p_enemy.c:1643: 	    break;
	.loc 1 1643 6
	nop	
	jmp	.L311	#
.L354:
# p_enemy.c:1652: 	    break;
	.loc 1 1652 6
	nop	
.L311:
# p_enemy.c:1683:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 1683 11
	movl	$0, -116(%rbp)	#, i
# p_enemy.c:1683:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 1683 5
	jmp	.L330	#
.L333:
# p_enemy.c:1684: 	if (playeringame[i] && players[i].health > 0)
	.loc 1 1684 18
	movl	-116(%rbp), %eax	# i, tmp117
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp118
	leaq	playeringame(%rip), %rax	#, tmp119
	movl	(%rdx,%rax), %eax	# playeringame[i_29], _16
# p_enemy.c:1684: 	if (playeringame[i] && players[i].health > 0)
	.loc 1 1684 5
	testl	%eax, %eax	# _16
	je	.L331	#,
# p_enemy.c:1684: 	if (playeringame[i] && players[i].health > 0)
	.loc 1 1684 35 discriminator 1
	movl	-116(%rbp), %eax	# i, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movq	%rdx, %rax	# tmp120, tmp123
	salq	$2, %rax	#, tmp123
	addq	%rdx, %rax	# tmp120, tmp123
	salq	$6, %rax	#, tmp124
	movq	%rax, %rdx	# tmp123, tmp122
	leaq	36+players(%rip), %rax	#, tmp125
	movl	(%rdx,%rax), %eax	# players[i_29].health, _17
# p_enemy.c:1684: 	if (playeringame[i] && players[i].health > 0)
	.loc 1 1684 22 discriminator 1
	testl	%eax, %eax	# _17
	jg	.L358	#,
.L331:
# p_enemy.c:1683:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 1683 32 discriminator 2
	addl	$1, -116(%rbp)	#, i
.L330:
# p_enemy.c:1683:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 1683 17 discriminator 1
	cmpl	$3, -116(%rbp)	#, i
	jle	.L333	#,
	jmp	.L332	#
.L358:
# p_enemy.c:1685: 	    break;
	.loc 1 1685 6
	nop	
.L332:
# p_enemy.c:1687:     if (i==MAXPLAYERS)
	.loc 1 1687 8
	cmpl	$4, -116(%rbp)	#, i
	je	.L359	#,
# p_enemy.c:1692:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 1692 13
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp126
	movq	%rax, -112(%rbp)	# tmp126, th
# p_enemy.c:1692:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 1692 5
	jmp	.L335	#
.L338:
# p_enemy.c:1694: 	if (th->function.acp1 != (actionf_p1)P_MobjThinker)
	.loc 1 1694 18
	movq	-112(%rbp), %rax	# th, tmp127
	movq	16(%rax), %rax	# th_28->function.acp1, _18
# p_enemy.c:1694: 	if (th->function.acp1 != (actionf_p1)P_MobjThinker)
	.loc 1 1694 5
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp129
	cmpq	%rdx, %rax	# tmp128, _18
	jne	.L360	#,
# p_enemy.c:1697: 	mo2 = (mobj_t *)th;
	.loc 1 1697 6
	movq	-112(%rbp), %rax	# th, tmp130
	movq	%rax, -104(%rbp)	# tmp130, mo2
# p_enemy.c:1698: 	if (mo2 != mo
	.loc 1 1698 5
	movq	-104(%rbp), %rax	# mo2, tmp131
	cmpq	-136(%rbp), %rax	# mo, tmp131
	je	.L337	#,
# p_enemy.c:1699: 	    && mo2->type == mo->type
	.loc 1 1699 12
	movq	-104(%rbp), %rax	# mo2, tmp132
	movl	128(%rax), %edx	# mo2_49->type, _19
# p_enemy.c:1699: 	    && mo2->type == mo->type
	.loc 1 1699 24
	movq	-136(%rbp), %rax	# mo, tmp133
	movl	128(%rax), %eax	# mo_33(D)->type, _20
# p_enemy.c:1699: 	    && mo2->type == mo->type
	.loc 1 1699 6
	cmpl	%eax, %edx	# _20, _19
	jne	.L337	#,
# p_enemy.c:1700: 	    && mo2->health > 0)
	.loc 1 1700 12
	movq	-104(%rbp), %rax	# mo2, tmp134
	movl	164(%rax), %eax	# mo2_49->health, _21
# p_enemy.c:1700: 	    && mo2->health > 0)
	.loc 1 1700 6
	testl	%eax, %eax	# _21
	jg	.L361	#,
	jmp	.L337	#
.L360:
# p_enemy.c:1695: 	    continue;
	.loc 1 1695 6
	nop	
.L337:
# p_enemy.c:1692:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 1692 55 discriminator 2
	movq	-112(%rbp), %rax	# th, tmp135
	movq	8(%rax), %rax	# th_28->next, tmp136
	movq	%rax, -112(%rbp)	# tmp136, th
.L335:
# p_enemy.c:1692:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 1692 36 discriminator 1
	leaq	thinkercap(%rip), %rax	#, tmp137
	cmpq	%rax, -112(%rbp)	# tmp137, th
	jne	.L338	#,
# p_enemy.c:1708:     if ( gamemode == commercial)
	.loc 1 1708 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.82_22
# p_enemy.c:1708:     if ( gamemode == commercial)
	.loc 1 1708 8
	cmpl	$2, %eax	#, gamemode.82_22
	jne	.L339	#,
# p_enemy.c:1710: 	if (gamemap == 7)
	.loc 1 1710 14
	movl	gamemap(%rip), %eax	# gamemap, gamemap.83_23
# p_enemy.c:1710: 	if (gamemap == 7)
	.loc 1 1710 5
	cmpl	$7, %eax	#, gamemap.83_23
	jne	.L340	#,
# p_enemy.c:1712: 	    if (mo->type == MT_FATSO)
	.loc 1 1712 12
	movq	-136(%rbp), %rax	# mo, tmp138
	movl	128(%rax), %eax	# mo_33(D)->type, _24
# p_enemy.c:1712: 	    if (mo->type == MT_FATSO)
	.loc 1 1712 9
	cmpl	$8, %eax	#, _24
	jne	.L341	#,
# p_enemy.c:1714: 		junk.tag = 666;
	.loc 1 1714 12
	movw	$666, -68(%rbp)	#, junk.tag
# p_enemy.c:1715: 		EV_DoFloor(&junk,lowerFloorToLowest);
	.loc 1 1715 3
	leaq	-96(%rbp), %rax	#, tmp139
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	EV_DoFloor@PLT	#
# p_enemy.c:1716: 		return;
	.loc 1 1716 3
	jmp	.L307	#
.L341:
# p_enemy.c:1719: 	    if (mo->type == MT_BABY)
	.loc 1 1719 12
	movq	-136(%rbp), %rax	# mo, tmp140
	movl	128(%rax), %eax	# mo_33(D)->type, _25
# p_enemy.c:1719: 	    if (mo->type == MT_BABY)
	.loc 1 1719 9
	cmpl	$20, %eax	#, _25
	jne	.L340	#,
# p_enemy.c:1721: 		junk.tag = 667;
	.loc 1 1721 12
	movw	$667, -68(%rbp)	#, junk.tag
# p_enemy.c:1722: 		EV_DoFloor(&junk,raiseToTexture);
	.loc 1 1722 3
	leaq	-96(%rbp), %rax	#, tmp141
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	EV_DoFloor@PLT	#
# p_enemy.c:1723: 		return;
	.loc 1 1723 3
	jmp	.L307	#
.L339:
# p_enemy.c:1729: 	switch(gameepisode)
	.loc 1 1729 2
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.84_26
	cmpl	$1, %eax	#, gameepisode.84_26
	je	.L342	#,
	cmpl	$4, %eax	#, gameepisode.84_26
	je	.L343	#,
	jmp	.L340	#
.L342:
# p_enemy.c:1732: 	    junk.tag = 666;
	.loc 1 1732 15
	movw	$666, -68(%rbp)	#, junk.tag
# p_enemy.c:1733: 	    EV_DoFloor (&junk, lowerFloorToLowest);
	.loc 1 1733 6
	leaq	-96(%rbp), %rax	#, tmp142
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	EV_DoFloor@PLT	#
# p_enemy.c:1734: 	    return;
	.loc 1 1734 6
	jmp	.L307	#
.L343:
# p_enemy.c:1738: 	    switch(gamemap)
	.loc 1 1738 6
	movl	gamemap(%rip), %eax	# gamemap, gamemap.85_27
	cmpl	$6, %eax	#, gamemap.85_27
	je	.L344	#,
	cmpl	$8, %eax	#, gamemap.85_27
	je	.L345	#,
	jmp	.L340	#
.L344:
# p_enemy.c:1741: 		junk.tag = 666;
	.loc 1 1741 12
	movw	$666, -68(%rbp)	#, junk.tag
# p_enemy.c:1742: 		EV_DoDoor (&junk, blazeOpen);
	.loc 1 1742 3
	leaq	-96(%rbp), %rax	#, tmp143
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	EV_DoDoor@PLT	#
# p_enemy.c:1743: 		return;
	.loc 1 1743 3
	jmp	.L307	#
.L345:
# p_enemy.c:1747: 		junk.tag = 666;
	.loc 1 1747 12
	movw	$666, -68(%rbp)	#, junk.tag
# p_enemy.c:1748: 		EV_DoFloor (&junk, lowerFloorToLowest);
	.loc 1 1748 3
	leaq	-96(%rbp), %rax	#, tmp144
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	EV_DoFloor@PLT	#
# p_enemy.c:1749: 		return;
	.loc 1 1749 3
	jmp	.L307	#
.L340:
# p_enemy.c:1755:     G_ExitLevel ();
	.loc 1 1755 5
	call	G_ExitLevel@PLT	#
	jmp	.L307	#
.L348:
# p_enemy.c:1619: 	    return;
	.loc 1 1619 6
	nop	
	jmp	.L307	#
.L349:
# p_enemy.c:1631: 		return;
	.loc 1 1631 3
	nop	
	jmp	.L307	#
.L351:
# p_enemy.c:1639: 		return;
	.loc 1 1639 3
	nop	
	jmp	.L307	#
.L353:
# p_enemy.c:1647: 		return;
	.loc 1 1647 3
	nop	
	jmp	.L307	#
.L356:
# p_enemy.c:1664: 		    return;
	.loc 1 1664 7
	nop	
	jmp	.L307	#
.L357:
# p_enemy.c:1675: 		return;
	.loc 1 1675 3
	nop	
	jmp	.L307	#
.L359:
# p_enemy.c:1688: 	return;	// no one left alive, so do not end game
	.loc 1 1688 2
	nop	
	jmp	.L307	#
.L361:
# p_enemy.c:1703: 	    return;
	.loc 1 1703 6
	nop	
.L307:
# p_enemy.c:1756: }
	.loc 1 1756 1
	movq	-8(%rbp), %rax	# D.9007, tmp146
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	je	.L347	#,
	call	__stack_chk_fail@PLT	#
.L347:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE54:
	.size	A_BossDeath, .-A_BossDeath
	.globl	A_Hoof
	.type	A_Hoof, @function
A_Hoof:
.LFB55:
	.loc 1 1760 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mo, mo
# p_enemy.c:1761:     S_StartSound (mo, sfx_hoof);
	.loc 1 1761 5
	movq	-8(%rbp), %rax	# mo, tmp82
	movl	$84, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1762:     A_Chase (mo);
	.loc 1 1762 5
	movq	-8(%rbp), %rax	# mo, tmp83
	movq	%rax, %rdi	# tmp83,
	call	A_Chase	#
# p_enemy.c:1763: }
	.loc 1 1763 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE55:
	.size	A_Hoof, .-A_Hoof
	.globl	A_Metal
	.type	A_Metal, @function
A_Metal:
.LFB56:
	.loc 1 1766 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mo, mo
# p_enemy.c:1767:     S_StartSound (mo, sfx_metal);
	.loc 1 1767 5
	movq	-8(%rbp), %rax	# mo, tmp82
	movl	$85, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1768:     A_Chase (mo);
	.loc 1 1768 5
	movq	-8(%rbp), %rax	# mo, tmp83
	movq	%rax, %rdi	# tmp83,
	call	A_Chase	#
# p_enemy.c:1769: }
	.loc 1 1769 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE56:
	.size	A_Metal, .-A_Metal
	.globl	A_BabyMetal
	.type	A_BabyMetal, @function
A_BabyMetal:
.LFB57:
	.loc 1 1772 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mo, mo
# p_enemy.c:1773:     S_StartSound (mo, sfx_bspwlk);
	.loc 1 1773 5
	movq	-8(%rbp), %rax	# mo, tmp82
	movl	$79, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1774:     A_Chase (mo);
	.loc 1 1774 5
	movq	-8(%rbp), %rax	# mo, tmp83
	movq	%rax, %rdi	# tmp83,
	call	A_Chase	#
# p_enemy.c:1775: }
	.loc 1 1775 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE57:
	.size	A_BabyMetal, .-A_BabyMetal
	.globl	A_OpenShotgun2
	.type	A_OpenShotgun2, @function
A_OpenShotgun2:
.LFB58:
	.loc 1 1781 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# player, player
	movq	%rsi, -16(%rbp)	# psp, psp
# p_enemy.c:1782:     S_StartSound (player->mo, sfx_dbopn);
	.loc 1 1782 25
	movq	-8(%rbp), %rax	# player, tmp83
	movq	(%rax), %rax	# player_3(D)->mo, _1
# p_enemy.c:1782:     S_StartSound (player->mo, sfx_dbopn);
	.loc 1 1782 5
	movl	$5, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_enemy.c:1783: }
	.loc 1 1783 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE58:
	.size	A_OpenShotgun2, .-A_OpenShotgun2
	.globl	A_LoadShotgun2
	.type	A_LoadShotgun2, @function
A_LoadShotgun2:
.LFB59:
	.loc 1 1789 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# player, player
	movq	%rsi, -16(%rbp)	# psp, psp
# p_enemy.c:1790:     S_StartSound (player->mo, sfx_dbload);
	.loc 1 1790 25
	movq	-8(%rbp), %rax	# player, tmp83
	movq	(%rax), %rax	# player_3(D)->mo, _1
# p_enemy.c:1790:     S_StartSound (player->mo, sfx_dbload);
	.loc 1 1790 5
	movl	$7, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_enemy.c:1791: }
	.loc 1 1791 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE59:
	.size	A_LoadShotgun2, .-A_LoadShotgun2
	.globl	A_CloseShotgun2
	.type	A_CloseShotgun2, @function
A_CloseShotgun2:
.LFB60:
	.loc 1 1802 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# player, player
	movq	%rsi, -16(%rbp)	# psp, psp
# p_enemy.c:1803:     S_StartSound (player->mo, sfx_dbcls);
	.loc 1 1803 25
	movq	-8(%rbp), %rax	# player, tmp83
	movq	(%rax), %rax	# player_3(D)->mo, _1
# p_enemy.c:1803:     S_StartSound (player->mo, sfx_dbcls);
	.loc 1 1803 5
	movl	$6, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_enemy.c:1804:     A_ReFire(player,psp);
	.loc 1 1804 5
	movq	-16(%rbp), %rdx	# psp, tmp84
	movq	-8(%rbp), %rax	# player, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	A_ReFire@PLT	#
# p_enemy.c:1805: }
	.loc 1 1805 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE60:
	.size	A_CloseShotgun2, .-A_CloseShotgun2
	.globl	braintargets
	.bss
	.align 32
	.type	braintargets, @object
	.size	braintargets, 256
braintargets:
	.zero	256
	.globl	numbraintargets
	.align 4
	.type	numbraintargets, @object
	.size	numbraintargets, 4
numbraintargets:
	.zero	4
	.globl	braintargeton
	.align 4
	.type	braintargeton, @object
	.size	braintargeton, 4
braintargeton:
	.zero	4
	.text
	.globl	A_BrainAwake
	.type	A_BrainAwake, @function
A_BrainAwake:
.LFB61:
	.loc 1 1814 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mo, mo
# p_enemy.c:1819:     numbraintargets = 0;
	.loc 1 1819 21
	movl	$0, numbraintargets(%rip)	#, numbraintargets
# p_enemy.c:1820:     braintargeton = 0;
	.loc 1 1820 19
	movl	$0, braintargeton(%rip)	#, braintargeton
# p_enemy.c:1822:     thinker = thinkercap.next;
	.loc 1 1822 13
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp87
	movq	%rax, -16(%rbp)	# tmp87, thinker
# p_enemy.c:1823:     for (thinker = thinkercap.next ;
	.loc 1 1823 18
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp88
	movq	%rax, -16(%rbp)	# tmp88, thinker
# p_enemy.c:1823:     for (thinker = thinkercap.next ;
	.loc 1 1823 5
	jmp	.L369	#
.L372:
# p_enemy.c:1827: 	if (thinker->function.acp1 != (actionf_p1)P_MobjThinker)
	.loc 1 1827 23
	movq	-16(%rbp), %rax	# thinker, tmp89
	movq	16(%rax), %rax	# thinker_6->function.acp1, _1
# p_enemy.c:1827: 	if (thinker->function.acp1 != (actionf_p1)P_MobjThinker)
	.loc 1 1827 5
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp91
	cmpq	%rdx, %rax	# tmp90, _1
	jne	.L373	#,
# p_enemy.c:1830: 	m = (mobj_t *)thinker;
	.loc 1 1830 4
	movq	-16(%rbp), %rax	# thinker, tmp92
	movq	%rax, -8(%rbp)	# tmp92, m
# p_enemy.c:1832: 	if (m->type == MT_BOSSTARGET )
	.loc 1 1832 7
	movq	-8(%rbp), %rax	# m, tmp93
	movl	128(%rax), %eax	# m_15->type, _2
# p_enemy.c:1832: 	if (m->type == MT_BOSSTARGET )
	.loc 1 1832 5
	cmpl	$27, %eax	#, _2
	jne	.L371	#,
# p_enemy.c:1834: 	    braintargets[numbraintargets] = m;
	.loc 1 1834 18
	movl	numbraintargets(%rip), %eax	# numbraintargets, numbraintargets.86_3
# p_enemy.c:1834: 	    braintargets[numbraintargets] = m;
	.loc 1 1834 36
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp95
	leaq	braintargets(%rip), %rdx	#, tmp96
	movq	-8(%rbp), %rax	# m, tmp97
	movq	%rax, (%rcx,%rdx)	# tmp97, braintargets[numbraintargets.86_3]
# p_enemy.c:1835: 	    numbraintargets++;
	.loc 1 1835 21
	movl	numbraintargets(%rip), %eax	# numbraintargets, numbraintargets.87_4
	addl	$1, %eax	#, _5
	movl	%eax, numbraintargets(%rip)	# _5, numbraintargets
	jmp	.L371	#
.L373:
# p_enemy.c:1828: 	    continue;	// not a mobj
	.loc 1 1828 6
	nop	
.L371:
# p_enemy.c:1825: 	 thinker = thinker->next)
	.loc 1 1825 11
	movq	-16(%rbp), %rax	# thinker, tmp98
	movq	8(%rax), %rax	# thinker_6->next, tmp99
	movq	%rax, -16(%rbp)	# tmp99, thinker
.L369:
# p_enemy.c:1824: 	 thinker != &thinkercap ;
	.loc 1 1824 11
	leaq	thinkercap(%rip), %rax	#, tmp100
	cmpq	%rax, -16(%rbp)	# tmp100, thinker
	jne	.L372	#,
# p_enemy.c:1839:     S_StartSound (NULL,sfx_bossit);
	.loc 1 1839 5
	movl	$96, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# p_enemy.c:1840: }
	.loc 1 1840 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE61:
	.size	A_BrainAwake, .-A_BrainAwake
	.globl	A_BrainPain
	.type	A_BrainPain, @function
A_BrainPain:
.LFB62:
	.loc 1 1844 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mo, mo
# p_enemy.c:1845:     S_StartSound (NULL,sfx_bospn);
	.loc 1 1845 5
	movl	$97, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# p_enemy.c:1846: }
	.loc 1 1846 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE62:
	.size	A_BrainPain, .-A_BrainPain
	.globl	A_BrainScream
	.type	A_BrainScream, @function
A_BrainScream:
.LFB63:
	.loc 1 1850 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mo, mo
# p_enemy.c:1856:     for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
	.loc 1 1856 14
	movq	-40(%rbp), %rax	# mo, tmp95
	movl	24(%rax), %eax	# mo_17(D)->x, _1
# p_enemy.c:1856:     for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
	.loc 1 1856 11
	subl	$12845056, %eax	#, tmp96
	movl	%eax, -20(%rbp)	# tmp96, x
# p_enemy.c:1856:     for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
	.loc 1 1856 5
	jmp	.L376	#
.L378:
# p_enemy.c:1858: 	y = mo->y - 320*FRACUNIT;
	.loc 1 1858 8
	movq	-40(%rbp), %rax	# mo, tmp97
	movl	28(%rax), %eax	# mo_17(D)->y, _2
# p_enemy.c:1858: 	y = mo->y - 320*FRACUNIT;
	.loc 1 1858 4
	subl	$20971520, %eax	#, tmp98
	movl	%eax, -16(%rbp)	# tmp98, y
# p_enemy.c:1859: 	z = 128 + P_Random()*2*FRACUNIT;
	.loc 1 1859 12
	call	P_Random@PLT	#
# p_enemy.c:1859: 	z = 128 + P_Random()*2*FRACUNIT;
	.loc 1 1859 24 discriminator 1
	sall	$17, %eax	#, _4
# p_enemy.c:1859: 	z = 128 + P_Random()*2*FRACUNIT;
	.loc 1 1859 4 discriminator 1
	subl	$-128, %eax	#, tmp99
	movl	%eax, -12(%rbp)	# tmp99, z
# p_enemy.c:1860: 	th = P_SpawnMobj (x,y,z, MT_ROCKET);
	.loc 1 1860 7
	movl	-12(%rbp), %edx	# z, tmp100
	movl	-16(%rbp), %esi	# y, tmp101
	movl	-20(%rbp), %eax	# x, tmp102
	movl	$33, %ecx	#,
	movl	%eax, %edi	# tmp102,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -8(%rbp)	# tmp103, th
# p_enemy.c:1861: 	th->momz = P_Random()*512;
	.loc 1 1861 13
	call	P_Random@PLT	#
# p_enemy.c:1861: 	th->momz = P_Random()*512;
	.loc 1 1861 23 discriminator 1
	sall	$9, %eax	#, _5
	movl	%eax, %edx	# _5, _6
# p_enemy.c:1861: 	th->momz = P_Random()*512;
	.loc 1 1861 11 discriminator 1
	movq	-8(%rbp), %rax	# th, tmp104
	movl	%edx, 120(%rax)	# _6, th_24->momz
# p_enemy.c:1863: 	P_SetMobjState (th, S_BRAINEXPLODE1);
	.loc 1 1863 2
	movq	-8(%rbp), %rax	# th, tmp105
	movl	$799, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	P_SetMobjState@PLT	#
# p_enemy.c:1865: 	th->tics -= P_Random()&7;
	.loc 1 1865 14
	call	P_Random@PLT	#
# p_enemy.c:1865: 	th->tics -= P_Random()&7;
	.loc 1 1865 24 discriminator 1
	andl	$7, %eax	#, _7
	movl	%eax, %ecx	# _7, _29
# p_enemy.c:1865: 	th->tics -= P_Random()&7;
	.loc 1 1865 4 discriminator 1
	movq	-8(%rbp), %rax	# th, tmp106
	movl	144(%rax), %eax	# th_24->tics, _8
# p_enemy.c:1865: 	th->tics -= P_Random()&7;
	.loc 1 1865 11 discriminator 1
	subl	%ecx, %eax	# _29, _8
	movl	%eax, %edx	# _8, _9
	movq	-8(%rbp), %rax	# th, tmp107
	movl	%edx, 144(%rax)	# _9, th_24->tics
# p_enemy.c:1866: 	if (th->tics < 1)
	.loc 1 1866 8
	movq	-8(%rbp), %rax	# th, tmp108
	movl	144(%rax), %eax	# th_24->tics, _10
# p_enemy.c:1866: 	if (th->tics < 1)
	.loc 1 1866 5
	testl	%eax, %eax	# _10
	jg	.L377	#,
# p_enemy.c:1867: 	    th->tics = 1;
	.loc 1 1867 15
	movq	-8(%rbp), %rax	# th, tmp109
	movl	$1, 144(%rax)	#, th_24->tics
.L377:
# p_enemy.c:1856:     for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
	.loc 1 1856 62 discriminator 2
	addl	$524288, -20(%rbp)	#, x
.L376:
# p_enemy.c:1856:     for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
	.loc 1 1856 40 discriminator 1
	movq	-40(%rbp), %rax	# mo, tmp110
	movl	24(%rax), %eax	# mo_17(D)->x, _11
# p_enemy.c:1856:     for (x=mo->x - 196*FRACUNIT ; x< mo->x + 320*FRACUNIT ; x+= FRACUNIT*8)
	.loc 1 1856 36 discriminator 1
	addl	$20971519, %eax	#, _12
	cmpl	%eax, -20(%rbp)	# _12, x
	jle	.L378	#,
# p_enemy.c:1870:     S_StartSound (NULL,sfx_bosdth);
	.loc 1 1870 5
	movl	$98, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# p_enemy.c:1871: }
	.loc 1 1871 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE63:
	.size	A_BrainScream, .-A_BrainScream
	.globl	A_BrainExplode
	.type	A_BrainExplode, @function
A_BrainExplode:
.LFB64:
	.loc 1 1876 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# mo, mo
# p_enemy.c:1882:     x = mo->x + (P_Random () - P_Random ())*2048;
	.loc 1 1882 11
	movq	-56(%rbp), %rax	# mo, tmp96
	movl	24(%rax), %r12d	# mo_16(D)->x, _1
# p_enemy.c:1882:     x = mo->x + (P_Random () - P_Random ())*2048;
	.loc 1 1882 18
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _2
# p_enemy.c:1882:     x = mo->x + (P_Random () - P_Random ())*2048;
	.loc 1 1882 32 discriminator 1
	call	P_Random@PLT	#
# p_enemy.c:1882:     x = mo->x + (P_Random () - P_Random ())*2048;
	.loc 1 1882 30 discriminator 2
	subl	%eax, %ebx	# _3, _2
	movl	%ebx, %edx	# _2, _4
# p_enemy.c:1882:     x = mo->x + (P_Random () - P_Random ())*2048;
	.loc 1 1882 44 discriminator 2
	movl	%edx, %eax	# _4, _4
	sall	$11, %eax	#, _4
# p_enemy.c:1882:     x = mo->x + (P_Random () - P_Random ())*2048;
	.loc 1 1882 7 discriminator 2
	addl	%r12d, %eax	# _1, tmp97
	movl	%eax, -36(%rbp)	# tmp97, x
# p_enemy.c:1883:     y = mo->y;
	.loc 1 1883 7
	movq	-56(%rbp), %rax	# mo, tmp98
	movl	28(%rax), %eax	# mo_16(D)->y, tmp99
	movl	%eax, -32(%rbp)	# tmp99, y
# p_enemy.c:1884:     z = 128 + P_Random()*2*FRACUNIT;
	.loc 1 1884 15
	call	P_Random@PLT	#
# p_enemy.c:1884:     z = 128 + P_Random()*2*FRACUNIT;
	.loc 1 1884 27 discriminator 1
	sall	$17, %eax	#, _7
# p_enemy.c:1884:     z = 128 + P_Random()*2*FRACUNIT;
	.loc 1 1884 7 discriminator 1
	subl	$-128, %eax	#, tmp100
	movl	%eax, -28(%rbp)	# tmp100, z
# p_enemy.c:1885:     th = P_SpawnMobj (x,y,z, MT_ROCKET);
	.loc 1 1885 10
	movl	-28(%rbp), %edx	# z, tmp101
	movl	-32(%rbp), %esi	# y, tmp102
	movl	-36(%rbp), %eax	# x, tmp103
	movl	$33, %ecx	#,
	movl	%eax, %edi	# tmp103,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -24(%rbp)	# tmp104, th
# p_enemy.c:1886:     th->momz = P_Random()*512;
	.loc 1 1886 16
	call	P_Random@PLT	#
# p_enemy.c:1886:     th->momz = P_Random()*512;
	.loc 1 1886 26 discriminator 1
	sall	$9, %eax	#, _8
	movl	%eax, %edx	# _8, _9
# p_enemy.c:1886:     th->momz = P_Random()*512;
	.loc 1 1886 14 discriminator 1
	movq	-24(%rbp), %rax	# th, tmp105
	movl	%edx, 120(%rax)	# _9, th_24->momz
# p_enemy.c:1888:     P_SetMobjState (th, S_BRAINEXPLODE1);
	.loc 1 1888 5
	movq	-24(%rbp), %rax	# th, tmp106
	movl	$799, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	P_SetMobjState@PLT	#
# p_enemy.c:1890:     th->tics -= P_Random()&7;
	.loc 1 1890 17
	call	P_Random@PLT	#
# p_enemy.c:1890:     th->tics -= P_Random()&7;
	.loc 1 1890 27 discriminator 1
	andl	$7, %eax	#, _10
	movl	%eax, %ecx	# _10, _29
# p_enemy.c:1890:     th->tics -= P_Random()&7;
	.loc 1 1890 7 discriminator 1
	movq	-24(%rbp), %rax	# th, tmp107
	movl	144(%rax), %eax	# th_24->tics, _11
# p_enemy.c:1890:     th->tics -= P_Random()&7;
	.loc 1 1890 14 discriminator 1
	subl	%ecx, %eax	# _29, _11
	movl	%eax, %edx	# _11, _12
	movq	-24(%rbp), %rax	# th, tmp108
	movl	%edx, 144(%rax)	# _12, th_24->tics
# p_enemy.c:1891:     if (th->tics < 1)
	.loc 1 1891 11
	movq	-24(%rbp), %rax	# th, tmp109
	movl	144(%rax), %eax	# th_24->tics, _13
# p_enemy.c:1891:     if (th->tics < 1)
	.loc 1 1891 8
	testl	%eax, %eax	# _13
	jg	.L381	#,
# p_enemy.c:1892: 	th->tics = 1;
	.loc 1 1892 11
	movq	-24(%rbp), %rax	# th, tmp110
	movl	$1, 144(%rax)	#, th_24->tics
.L381:
# p_enemy.c:1893: }
	.loc 1 1893 1
	nop	
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE64:
	.size	A_BrainExplode, .-A_BrainExplode
	.globl	A_BrainDie
	.type	A_BrainDie, @function
A_BrainDie:
.LFB65:
	.loc 1 1897 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mo, mo
# p_enemy.c:1898:     G_ExitLevel ();
	.loc 1 1898 5
	call	G_ExitLevel@PLT	#
# p_enemy.c:1899: }
	.loc 1 1899 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE65:
	.size	A_BrainDie, .-A_BrainDie
	.globl	A_BrainSpit
	.type	A_BrainSpit, @function
A_BrainSpit:
.LFB66:
	.loc 1 1902 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mo, mo
# p_enemy.c:1908:     easy ^= 1;
	.loc 1 1908 10
	movl	easy.0(%rip), %eax	# easy, easy.88_1
	xorl	$1, %eax	#, _2
	movl	%eax, easy.0(%rip)	# _2, easy
# p_enemy.c:1909:     if (gameskill <= sk_easy && (!easy))
	.loc 1 1909 19
	movl	gameskill(%rip), %eax	# gameskill, gameskill.89_3
# p_enemy.c:1909:     if (gameskill <= sk_easy && (!easy))
	.loc 1 1909 8
	cmpl	$1, %eax	#, gameskill.89_3
	ja	.L384	#,
# p_enemy.c:1909:     if (gameskill <= sk_easy && (!easy))
	.loc 1 1909 34 discriminator 1
	movl	easy.0(%rip), %eax	# easy, easy.90_4
# p_enemy.c:1909:     if (gameskill <= sk_easy && (!easy))
	.loc 1 1909 30 discriminator 1
	testl	%eax, %eax	# easy.90_4
	je	.L386	#,
.L384:
# p_enemy.c:1913:     targ = braintargets[braintargeton];
	.loc 1 1913 24
	movl	braintargeton(%rip), %eax	# braintargeton, braintargeton.91_5
# p_enemy.c:1913:     targ = braintargets[braintargeton];
	.loc 1 1913 10
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp102
	leaq	braintargets(%rip), %rax	#, tmp103
	movq	(%rdx,%rax), %rax	# braintargets[braintargeton.91_5], tmp104
	movq	%rax, -16(%rbp)	# tmp104, targ
# p_enemy.c:1914:     braintargeton = (braintargeton+1)%numbraintargets;
	.loc 1 1914 35
	movl	braintargeton(%rip), %eax	# braintargeton, braintargeton.92_6
	addl	$1, %eax	#, _7
# p_enemy.c:1914:     braintargeton = (braintargeton+1)%numbraintargets;
	.loc 1 1914 38
	movl	numbraintargets(%rip), %esi	# numbraintargets, numbraintargets.93_8
	cltd
	idivl	%esi	# numbraintargets.93_8
	movl	%edx, %ecx	# tmp105, tmp105
	movl	%ecx, %eax	# tmp105, _9
# p_enemy.c:1914:     braintargeton = (braintargeton+1)%numbraintargets;
	.loc 1 1914 19
	movl	%eax, braintargeton(%rip)	# _9, braintargeton
# p_enemy.c:1917:     newmobj = P_SpawnMissile (mo, targ, MT_SPAWNSHOT);
	.loc 1 1917 15
	movq	-16(%rbp), %rcx	# targ, tmp107
	movq	-24(%rbp), %rax	# mo, tmp108
	movl	$28, %edx	#,
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	P_SpawnMissile@PLT	#
	movq	%rax, -8(%rbp)	# tmp109, newmobj
# p_enemy.c:1918:     newmobj->target = targ;
	.loc 1 1918 21
	movq	-8(%rbp), %rax	# newmobj, tmp110
	movq	-16(%rbp), %rdx	# targ, tmp111
	movq	%rdx, 176(%rax)	# tmp111, newmobj_27->target
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 8
	movq	-16(%rbp), %rax	# targ, tmp112
	movl	28(%rax), %edx	# targ_23->y, _10
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 16
	movq	-24(%rbp), %rax	# mo, tmp113
	movl	28(%rax), %eax	# mo_25(D)->y, _11
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 12
	movl	%edx, %ecx	# _10, _10
	subl	%eax, %ecx	# _11, _10
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 28
	movq	-8(%rbp), %rax	# newmobj, tmp114
	movl	116(%rax), %edi	# newmobj_27->momy, _13
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 20
	movl	%ecx, %eax	# _12, _12
	cltd
	idivl	%edi	# _13
	cltq
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 45
	movq	-8(%rbp), %rdx	# newmobj, tmp117
	movq	152(%rdx), %rdx	# newmobj_27->state, _16
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 52
	movq	16(%rdx), %rsi	# _16->tics, _17
# p_enemy.c:1920: 	((targ->y - mo->y)/newmobj->momy) / newmobj->state->tics;
	.loc 1 1920 36
	cqto
	idivq	%rsi	# _17
# p_enemy.c:1919:     newmobj->reactiontime =
	.loc 1 1919 27
	movl	%eax, %edx	# _18, _19
	movq	-8(%rbp), %rax	# newmobj, tmp120
	movl	%edx, 184(%rax)	# _19, newmobj_27->reactiontime
# p_enemy.c:1922:     S_StartSound(NULL, sfx_bospit);
	.loc 1 1922 5
	movl	$94, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
	jmp	.L383	#
.L386:
# p_enemy.c:1910: 	return;
	.loc 1 1910 2
	nop	
.L383:
# p_enemy.c:1923: }
	.loc 1 1923 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE66:
	.size	A_BrainSpit, .-A_BrainSpit
	.globl	A_SpawnSound
	.type	A_SpawnSound, @function
A_SpawnSound:
.LFB67:
	.loc 1 1931 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mo, mo
# p_enemy.c:1932:     S_StartSound (mo,sfx_boscub);
	.loc 1 1932 5
	movq	-8(%rbp), %rax	# mo, tmp82
	movl	$95, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	S_StartSound@PLT	#
# p_enemy.c:1933:     A_SpawnFly(mo);
	.loc 1 1933 5
	movq	-8(%rbp), %rax	# mo, tmp83
	movq	%rax, %rdi	# tmp83,
	call	A_SpawnFly	#
# p_enemy.c:1934: }
	.loc 1 1934 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE67:
	.size	A_SpawnSound, .-A_SpawnSound
	.globl	A_SpawnFly
	.type	A_SpawnFly, @function
A_SpawnFly:
.LFB68:
	.loc 1 1937 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mo, mo
# p_enemy.c:1944:     if (--mo->reactiontime)
	.loc 1 1944 13
	movq	-40(%rbp), %rax	# mo, tmp97
	movl	184(%rax), %eax	# mo_20(D)->reactiontime, _1
# p_enemy.c:1944:     if (--mo->reactiontime)
	.loc 1 1944 9
	leal	-1(%rax), %edx	#, _2
# p_enemy.c:1944:     if (--mo->reactiontime)
	.loc 1 1944 8
	movq	-40(%rbp), %rax	# mo, tmp98
	movl	%edx, 184(%rax)	# _2, mo_20(D)->reactiontime
# p_enemy.c:1944:     if (--mo->reactiontime)
	.loc 1 1944 13
	movq	-40(%rbp), %rax	# mo, tmp99
	movl	184(%rax), %eax	# mo_20(D)->reactiontime, _3
# p_enemy.c:1944:     if (--mo->reactiontime)
	.loc 1 1944 8
	testl	%eax, %eax	# _3
	jne	.L403	#,
# p_enemy.c:1947:     targ = mo->target;
	.loc 1 1947 10
	movq	-40(%rbp), %rax	# mo, tmp100
	movq	176(%rax), %rax	# mo_20(D)->target, tmp101
	movq	%rax, -24(%rbp)	# tmp101, targ
# p_enemy.c:1950:     fog = P_SpawnMobj (targ->x, targ->y, targ->z, MT_SPAWNFIRE);
	.loc 1 1950 11
	movq	-24(%rbp), %rax	# targ, tmp102
	movl	32(%rax), %edx	# targ_22->z, _4
	movq	-24(%rbp), %rax	# targ, tmp103
	movl	28(%rax), %esi	# targ_22->y, _5
	movq	-24(%rbp), %rax	# targ, tmp104
	movl	24(%rax), %eax	# targ_22->x, _6
	movl	$29, %ecx	#,
	movl	%eax, %edi	# _6,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -16(%rbp)	# tmp105, fog
# p_enemy.c:1951:     S_StartSound (fog, sfx_telept);
	.loc 1 1951 5
	movq	-16(%rbp), %rax	# fog, tmp106
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	S_StartSound@PLT	#
# p_enemy.c:1954:     r = P_Random ();
	.loc 1 1954 9
	call	P_Random@PLT	#
	movl	%eax, -28(%rbp)	# tmp107, r
# p_enemy.c:1958:     if ( r<50 )
	.loc 1 1958 8
	cmpl	$49, -28(%rbp)	#, r
	jg	.L391	#,
# p_enemy.c:1959: 	type = MT_TROOP;
	.loc 1 1959 7
	movl	$11, -32(%rbp)	#, type
	jmp	.L392	#
.L391:
# p_enemy.c:1960:     else if (r<90)
	.loc 1 1960 13
	cmpl	$89, -28(%rbp)	#, r
	jg	.L393	#,
# p_enemy.c:1961: 	type = MT_SERGEANT;
	.loc 1 1961 7
	movl	$12, -32(%rbp)	#, type
	jmp	.L392	#
.L393:
# p_enemy.c:1962:     else if (r<120)
	.loc 1 1962 13
	cmpl	$119, -28(%rbp)	#, r
	jg	.L394	#,
# p_enemy.c:1963: 	type = MT_SHADOWS;
	.loc 1 1963 7
	movl	$13, -32(%rbp)	#, type
	jmp	.L392	#
.L394:
# p_enemy.c:1964:     else if (r<130)
	.loc 1 1964 13
	cmpl	$129, -28(%rbp)	#, r
	jg	.L395	#,
# p_enemy.c:1965: 	type = MT_PAIN;
	.loc 1 1965 7
	movl	$22, -32(%rbp)	#, type
	jmp	.L392	#
.L395:
# p_enemy.c:1966:     else if (r<160)
	.loc 1 1966 13
	cmpl	$159, -28(%rbp)	#, r
	jg	.L396	#,
# p_enemy.c:1967: 	type = MT_HEAD;
	.loc 1 1967 7
	movl	$14, -32(%rbp)	#, type
	jmp	.L392	#
.L396:
# p_enemy.c:1968:     else if (r<162)
	.loc 1 1968 13
	cmpl	$161, -28(%rbp)	#, r
	jg	.L397	#,
# p_enemy.c:1969: 	type = MT_VILE;
	.loc 1 1969 7
	movl	$3, -32(%rbp)	#, type
	jmp	.L392	#
.L397:
# p_enemy.c:1970:     else if (r<172)
	.loc 1 1970 13
	cmpl	$171, -28(%rbp)	#, r
	jg	.L398	#,
# p_enemy.c:1971: 	type = MT_UNDEAD;
	.loc 1 1971 7
	movl	$5, -32(%rbp)	#, type
	jmp	.L392	#
.L398:
# p_enemy.c:1972:     else if (r<192)
	.loc 1 1972 13
	cmpl	$191, -28(%rbp)	#, r
	jg	.L399	#,
# p_enemy.c:1973: 	type = MT_BABY;
	.loc 1 1973 7
	movl	$20, -32(%rbp)	#, type
	jmp	.L392	#
.L399:
# p_enemy.c:1974:     else if (r<222)
	.loc 1 1974 13
	cmpl	$221, -28(%rbp)	#, r
	jg	.L400	#,
# p_enemy.c:1975: 	type = MT_FATSO;
	.loc 1 1975 7
	movl	$8, -32(%rbp)	#, type
	jmp	.L392	#
.L400:
# p_enemy.c:1976:     else if (r<246)
	.loc 1 1976 13
	cmpl	$245, -28(%rbp)	#, r
	jg	.L401	#,
# p_enemy.c:1977: 	type = MT_KNIGHT;
	.loc 1 1977 7
	movl	$17, -32(%rbp)	#, type
	jmp	.L392	#
.L401:
# p_enemy.c:1979: 	type = MT_BRUISER;		
	.loc 1 1979 7
	movl	$15, -32(%rbp)	#, type
.L392:
# p_enemy.c:1981:     newmobj	= P_SpawnMobj (targ->x, targ->y, targ->z, type);
	.loc 1 1981 15
	movq	-24(%rbp), %rax	# targ, tmp108
	movl	32(%rax), %edx	# targ_22->z, _7
	movq	-24(%rbp), %rax	# targ, tmp109
	movl	28(%rax), %esi	# targ_22->y, _8
	movq	-24(%rbp), %rax	# targ, tmp110
	movl	24(%rax), %eax	# targ_22->x, _9
	movl	-32(%rbp), %ecx	# type, tmp111
	movl	%eax, %edi	# _9,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -8(%rbp)	# tmp112, newmobj
# p_enemy.c:1982:     if (P_LookForPlayers (newmobj, true) )
	.loc 1 1982 9
	movq	-8(%rbp), %rax	# newmobj, tmp113
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	P_LookForPlayers	#
# p_enemy.c:1982:     if (P_LookForPlayers (newmobj, true) )
	.loc 1 1982 8 discriminator 1
	testl	%eax, %eax	# _10
	je	.L402	#,
# p_enemy.c:1983: 	P_SetMobjState (newmobj, newmobj->info->seestate);
	.loc 1 1983 34
	movq	-8(%rbp), %rax	# newmobj, tmp114
	movq	136(%rax), %rax	# newmobj_40->info, _11
# p_enemy.c:1983: 	P_SetMobjState (newmobj, newmobj->info->seestate);
	.loc 1 1983 40
	movl	12(%rax), %eax	# _11->seestate, _12
# p_enemy.c:1983: 	P_SetMobjState (newmobj, newmobj->info->seestate);
	.loc 1 1983 2
	movl	%eax, %edx	# _12, _13
	movq	-8(%rbp), %rax	# newmobj, tmp115
	movl	%edx, %esi	# _13,
	movq	%rax, %rdi	# tmp115,
	call	P_SetMobjState@PLT	#
.L402:
# p_enemy.c:1986:     P_TeleportMove (newmobj, newmobj->x, newmobj->y);
	.loc 1 1986 5
	movq	-8(%rbp), %rax	# newmobj, tmp116
	movl	28(%rax), %edx	# newmobj_40->y, _14
	movq	-8(%rbp), %rax	# newmobj, tmp117
	movl	24(%rax), %ecx	# newmobj_40->x, _15
	movq	-8(%rbp), %rax	# newmobj, tmp118
	movl	%ecx, %esi	# _15,
	movq	%rax, %rdi	# tmp118,
	call	P_TeleportMove@PLT	#
# p_enemy.c:1989:     P_RemoveMobj (mo);
	.loc 1 1989 5
	movq	-40(%rbp), %rax	# mo, tmp119
	movq	%rax, %rdi	# tmp119,
	call	P_RemoveMobj@PLT	#
	jmp	.L388	#
.L403:
# p_enemy.c:1945: 	return;	// still flying
	.loc 1 1945 2
	nop	
.L388:
# p_enemy.c:1990: }
	.loc 1 1990 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE68:
	.size	A_SpawnFly, .-A_SpawnFly
	.globl	A_PlayerScream
	.type	A_PlayerScream, @function
A_PlayerScream:
.LFB69:
	.loc 1 1995 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mo, mo
# p_enemy.c:1997:     int		sound = sfx_pldeth;
	.loc 1 1997 10
	movl	$57, -4(%rbp)	#, sound
# p_enemy.c:1999:     if ( (gamemode == commercial)
	.loc 1 1999 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.94_1
# p_enemy.c:1999:     if ( (gamemode == commercial)
	.loc 1 1999 8
	cmpl	$2, %eax	#, gamemode.94_1
	jne	.L405	#,
# p_enemy.c:2000: 	&& 	(mo->health < -50))
	.loc 1 2000 9
	movq	-24(%rbp), %rax	# mo, tmp84
	movl	164(%rax), %eax	# mo_6(D)->health, _2
# p_enemy.c:2000: 	&& 	(mo->health < -50))
	.loc 1 2000 2
	cmpl	$-50, %eax	#, _2
	jge	.L405	#,
# p_enemy.c:2004: 	sound = sfx_pdiehi;
	.loc 1 2004 8
	movl	$58, -4(%rbp)	#, sound
.L405:
# p_enemy.c:2007:     S_StartSound (mo, sound);
	.loc 1 2007 5
	movl	-4(%rbp), %edx	# sound, tmp85
	movq	-24(%rbp), %rax	# mo, tmp86
	movl	%edx, %esi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	S_StartSound@PLT	#
# p_enemy.c:2008: }
	.loc 1 2008 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE69:
	.size	A_PlayerScream, .-A_PlayerScream
	.local	easy.0
	.comm	easy.0,4,4
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "d_ticcmd.h"
	.file 4 "doomdef.h"
	.file 5 "m_fixed.h"
	.file 6 "tables.h"
	.file 7 "d_think.h"
	.file 8 "doomdata.h"
	.file 9 "info.h"
	.file 10 "p_mobj.h"
	.file 11 "r_defs.h"
	.file 12 "d_player.h"
	.file 13 "p_pspr.h"
	.file 14 "r_state.h"
	.file 15 "r_main.h"
	.file 16 "p_local.h"
	.file 17 "p_spec.h"
	.file 18 "doomstat.h"
	.file 19 "sounds.h"
	.file 20 "s_sound.h"
	.file 21 "i_system.h"
	.file 22 "g_game.h"
	.file 23 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4aa6
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2b
	.long	.LASF1805
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xe
	.long	0x51
	.long	0x3e
	.uleb128 0xf
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x21
	.long	0x2e
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x21
	.long	0x4a
	.uleb128 0x19
	.long	.LASF1704
	.byte	0x1b
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x13
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x13
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2d
	.byte	0x8
	.uleb128 0xb
	.long	0x4a
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x11
	.long	0x8e
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0xca
	.uleb128 0x1
	.long	.LASF12
	.byte	0
	.uleb128 0x1
	.long	.LASF13
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x2
	.byte	0x22
	.byte	0x1c
	.long	0xb1
	.uleb128 0xa
	.long	.LASF15
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0x80
	.uleb128 0x17
	.byte	0x8
	.byte	0x3
	.byte	0x24
	.long	0x139
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF18
	.byte	0x3
	.byte	0x28
	.byte	0xb
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF19
	.byte	0x3
	.byte	0x29
	.byte	0xb
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF20
	.byte	0x3
	.byte	0x2a
	.byte	0xa
	.long	0xd6
	.byte	0x6
	.uleb128 0x3
	.long	.LASF21
	.byte	0x3
	.byte	0x2b
	.byte	0xa
	.long	0xd6
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.long	0xe2
	.uleb128 0x11
	.long	0x8e
	.byte	0x4
	.byte	0x27
	.byte	0x1
	.long	0x170
	.uleb128 0x1
	.long	.LASF23
	.byte	0
	.uleb128 0x1
	.long	.LASF24
	.byte	0x1
	.uleb128 0x1
	.long	.LASF25
	.byte	0x2
	.uleb128 0x1
	.long	.LASF26
	.byte	0x3
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.long	0x145
	.uleb128 0x11
	.long	0x8e
	.byte	0x4
	.byte	0x94
	.byte	0x1
	.long	0x1a7
	.uleb128 0x1
	.long	.LASF29
	.byte	0
	.uleb128 0x1
	.long	.LASF30
	.byte	0x1
	.uleb128 0x1
	.long	.LASF31
	.byte	0x2
	.uleb128 0x1
	.long	.LASF32
	.byte	0x3
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.byte	0x9a
	.byte	0x3
	.long	0x17c
	.uleb128 0x11
	.long	0x8e
	.byte	0x4
	.byte	0xa3
	.byte	0x1
	.long	0x1ea
	.uleb128 0x1
	.long	.LASF35
	.byte	0
	.uleb128 0x1
	.long	.LASF36
	.byte	0x1
	.uleb128 0x1
	.long	.LASF37
	.byte	0x2
	.uleb128 0x1
	.long	.LASF38
	.byte	0x3
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.uleb128 0x1
	.long	.LASF41
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.long	0x8e
	.byte	0x4
	.byte	0xb5
	.byte	0x1
	.long	0x239
	.uleb128 0x1
	.long	.LASF42
	.byte	0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x1
	.uleb128 0x1
	.long	.LASF44
	.byte	0x2
	.uleb128 0x1
	.long	.LASF45
	.byte	0x3
	.uleb128 0x1
	.long	.LASF46
	.byte	0x4
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6
	.uleb128 0x1
	.long	.LASF49
	.byte	0x7
	.uleb128 0x1
	.long	.LASF50
	.byte	0x8
	.uleb128 0x1
	.long	.LASF51
	.byte	0x9
	.uleb128 0x1
	.long	.LASF52
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	.LASF53
	.byte	0x4
	.byte	0xc5
	.byte	0x3
	.long	0x1ea
	.uleb128 0x11
	.long	0x8e
	.byte	0x4
	.byte	0xca
	.byte	0x1
	.long	0x276
	.uleb128 0x1
	.long	.LASF54
	.byte	0
	.uleb128 0x1
	.long	.LASF55
	.byte	0x1
	.uleb128 0x1
	.long	.LASF56
	.byte	0x2
	.uleb128 0x1
	.long	.LASF57
	.byte	0x3
	.uleb128 0x1
	.long	.LASF58
	.byte	0x4
	.uleb128 0x1
	.long	.LASF59
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	0x8e
	.byte	0x4
	.byte	0xd7
	.byte	0x1
	.long	0x2ad
	.uleb128 0x1
	.long	.LASF60
	.byte	0
	.uleb128 0x1
	.long	.LASF61
	.byte	0x1
	.uleb128 0x1
	.long	.LASF62
	.byte	0x2
	.uleb128 0x1
	.long	.LASF63
	.byte	0x3
	.uleb128 0x1
	.long	.LASF64
	.byte	0x4
	.uleb128 0x1
	.long	.LASF65
	.byte	0x5
	.uleb128 0x1
	.long	.LASF66
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.long	.LASF67
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.long	.LASF68
	.uleb128 0xa
	.long	.LASF69
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.long	0x6b
	.uleb128 0xe
	.long	0x2bb
	.long	0x2d8
	.uleb128 0x2e
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x6
	.byte	0x3a
	.byte	0x12
	.long	0x2c7
	.uleb128 0xd
	.long	.LASF71
	.byte	0x6
	.byte	0x3d
	.byte	0x12
	.long	0x2f0
	.uleb128 0xb
	.long	0x2bb
	.uleb128 0xa
	.long	.LASF72
	.byte	0x6
	.byte	0x4e
	.byte	0x12
	.long	0x8e
	.uleb128 0xa
	.long	.LASF73
	.byte	0x7
	.byte	0x29
	.byte	0x11
	.long	0x30d
	.uleb128 0xb
	.long	0x312
	.uleb128 0x2f
	.long	0x319
	.uleb128 0x22
	.byte	0
	.uleb128 0xa
	.long	.LASF74
	.byte	0x7
	.byte	0x2a
	.byte	0x11
	.long	0x325
	.uleb128 0xb
	.long	0x32a
	.uleb128 0x23
	.long	0x335
	.uleb128 0x4
	.long	0xa3
	.byte	0
	.uleb128 0xa
	.long	.LASF75
	.byte	0x7
	.byte	0x2b
	.byte	0x11
	.long	0x341
	.uleb128 0xb
	.long	0x346
	.uleb128 0x23
	.long	0x356
	.uleb128 0x4
	.long	0xa3
	.uleb128 0x4
	.long	0xa3
	.byte	0
	.uleb128 0x30
	.byte	0x8
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.long	0x380
	.uleb128 0x24
	.long	.LASF76
	.byte	0x2f
	.long	0x319
	.uleb128 0x31
	.string	"acv"
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0x301
	.uleb128 0x24
	.long	.LASF77
	.byte	0x31
	.long	0x335
	.byte	0
	.uleb128 0xa
	.long	.LASF78
	.byte	0x7
	.byte	0x33
	.byte	0x3
	.long	0x356
	.uleb128 0xa
	.long	.LASF79
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.long	0x380
	.uleb128 0x1b
	.long	.LASF1397
	.byte	0x18
	.byte	0x7
	.byte	0x40
	.long	0x3cc
	.uleb128 0x3
	.long	.LASF80
	.byte	0x7
	.byte	0x42
	.byte	0x17
	.long	0x3cc
	.byte	0
	.uleb128 0x3
	.long	.LASF81
	.byte	0x7
	.byte	0x43
	.byte	0x17
	.long	0x3cc
	.byte	0x8
	.uleb128 0x3
	.long	.LASF82
	.byte	0x7
	.byte	0x44
	.byte	0xe
	.long	0x38c
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	0x398
	.uleb128 0xa
	.long	.LASF83
	.byte	0x7
	.byte	0x46
	.byte	0x3
	.long	0x398
	.uleb128 0xe
	.long	0x9c
	.long	0x3ed
	.uleb128 0xf
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x433
	.uleb128 0xc
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x9c
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF84
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF85
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x9c
	.byte	0x6
	.uleb128 0x3
	.long	.LASF86
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF87
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x3ed
	.uleb128 0x11
	.long	0x8e
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x78e
	.uleb128 0x1
	.long	.LASF88
	.byte	0
	.uleb128 0x1
	.long	.LASF89
	.byte	0x1
	.uleb128 0x1
	.long	.LASF90
	.byte	0x2
	.uleb128 0x1
	.long	.LASF91
	.byte	0x3
	.uleb128 0x1
	.long	.LASF92
	.byte	0x4
	.uleb128 0x1
	.long	.LASF93
	.byte	0x5
	.uleb128 0x1
	.long	.LASF94
	.byte	0x6
	.uleb128 0x1
	.long	.LASF95
	.byte	0x7
	.uleb128 0x1
	.long	.LASF96
	.byte	0x8
	.uleb128 0x1
	.long	.LASF97
	.byte	0x9
	.uleb128 0x1
	.long	.LASF98
	.byte	0xa
	.uleb128 0x1
	.long	.LASF99
	.byte	0xb
	.uleb128 0x1
	.long	.LASF100
	.byte	0xc
	.uleb128 0x1
	.long	.LASF101
	.byte	0xd
	.uleb128 0x1
	.long	.LASF102
	.byte	0xe
	.uleb128 0x1
	.long	.LASF103
	.byte	0xf
	.uleb128 0x1
	.long	.LASF104
	.byte	0x10
	.uleb128 0x1
	.long	.LASF105
	.byte	0x11
	.uleb128 0x1
	.long	.LASF106
	.byte	0x12
	.uleb128 0x1
	.long	.LASF107
	.byte	0x13
	.uleb128 0x1
	.long	.LASF108
	.byte	0x14
	.uleb128 0x1
	.long	.LASF109
	.byte	0x15
	.uleb128 0x1
	.long	.LASF110
	.byte	0x16
	.uleb128 0x1
	.long	.LASF111
	.byte	0x17
	.uleb128 0x1
	.long	.LASF112
	.byte	0x18
	.uleb128 0x1
	.long	.LASF113
	.byte	0x19
	.uleb128 0x1
	.long	.LASF114
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF115
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF116
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF117
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF118
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF119
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF120
	.byte	0x20
	.uleb128 0x1
	.long	.LASF121
	.byte	0x21
	.uleb128 0x1
	.long	.LASF122
	.byte	0x22
	.uleb128 0x1
	.long	.LASF123
	.byte	0x23
	.uleb128 0x1
	.long	.LASF124
	.byte	0x24
	.uleb128 0x1
	.long	.LASF125
	.byte	0x25
	.uleb128 0x1
	.long	.LASF126
	.byte	0x26
	.uleb128 0x1
	.long	.LASF127
	.byte	0x27
	.uleb128 0x1
	.long	.LASF128
	.byte	0x28
	.uleb128 0x1
	.long	.LASF129
	.byte	0x29
	.uleb128 0x1
	.long	.LASF130
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF131
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF132
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF133
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF134
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF135
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF136
	.byte	0x30
	.uleb128 0x1
	.long	.LASF137
	.byte	0x31
	.uleb128 0x1
	.long	.LASF138
	.byte	0x32
	.uleb128 0x1
	.long	.LASF139
	.byte	0x33
	.uleb128 0x1
	.long	.LASF140
	.byte	0x34
	.uleb128 0x1
	.long	.LASF141
	.byte	0x35
	.uleb128 0x1
	.long	.LASF142
	.byte	0x36
	.uleb128 0x1
	.long	.LASF143
	.byte	0x37
	.uleb128 0x1
	.long	.LASF144
	.byte	0x38
	.uleb128 0x1
	.long	.LASF145
	.byte	0x39
	.uleb128 0x1
	.long	.LASF146
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF147
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF148
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF149
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF150
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF151
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF152
	.byte	0x40
	.uleb128 0x1
	.long	.LASF153
	.byte	0x41
	.uleb128 0x1
	.long	.LASF154
	.byte	0x42
	.uleb128 0x1
	.long	.LASF155
	.byte	0x43
	.uleb128 0x1
	.long	.LASF156
	.byte	0x44
	.uleb128 0x1
	.long	.LASF157
	.byte	0x45
	.uleb128 0x1
	.long	.LASF158
	.byte	0x46
	.uleb128 0x1
	.long	.LASF159
	.byte	0x47
	.uleb128 0x1
	.long	.LASF160
	.byte	0x48
	.uleb128 0x1
	.long	.LASF161
	.byte	0x49
	.uleb128 0x1
	.long	.LASF162
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF163
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF164
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF165
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF166
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF167
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF168
	.byte	0x50
	.uleb128 0x1
	.long	.LASF169
	.byte	0x51
	.uleb128 0x1
	.long	.LASF170
	.byte	0x52
	.uleb128 0x1
	.long	.LASF171
	.byte	0x53
	.uleb128 0x1
	.long	.LASF172
	.byte	0x54
	.uleb128 0x1
	.long	.LASF173
	.byte	0x55
	.uleb128 0x1
	.long	.LASF174
	.byte	0x56
	.uleb128 0x1
	.long	.LASF175
	.byte	0x57
	.uleb128 0x1
	.long	.LASF176
	.byte	0x58
	.uleb128 0x1
	.long	.LASF177
	.byte	0x59
	.uleb128 0x1
	.long	.LASF178
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF179
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF180
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF181
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF182
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF183
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF184
	.byte	0x60
	.uleb128 0x1
	.long	.LASF185
	.byte	0x61
	.uleb128 0x1
	.long	.LASF186
	.byte	0x62
	.uleb128 0x1
	.long	.LASF187
	.byte	0x63
	.uleb128 0x1
	.long	.LASF188
	.byte	0x64
	.uleb128 0x1
	.long	.LASF189
	.byte	0x65
	.uleb128 0x1
	.long	.LASF190
	.byte	0x66
	.uleb128 0x1
	.long	.LASF191
	.byte	0x67
	.uleb128 0x1
	.long	.LASF192
	.byte	0x68
	.uleb128 0x1
	.long	.LASF193
	.byte	0x69
	.uleb128 0x1
	.long	.LASF194
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF195
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF196
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF197
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF198
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF199
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF200
	.byte	0x70
	.uleb128 0x1
	.long	.LASF201
	.byte	0x71
	.uleb128 0x1
	.long	.LASF202
	.byte	0x72
	.uleb128 0x1
	.long	.LASF203
	.byte	0x73
	.uleb128 0x1
	.long	.LASF204
	.byte	0x74
	.uleb128 0x1
	.long	.LASF205
	.byte	0x75
	.uleb128 0x1
	.long	.LASF206
	.byte	0x76
	.uleb128 0x1
	.long	.LASF207
	.byte	0x77
	.uleb128 0x1
	.long	.LASF208
	.byte	0x78
	.uleb128 0x1
	.long	.LASF209
	.byte	0x79
	.uleb128 0x1
	.long	.LASF210
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF211
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF212
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF213
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF214
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF215
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF216
	.byte	0x80
	.uleb128 0x1
	.long	.LASF217
	.byte	0x81
	.uleb128 0x1
	.long	.LASF218
	.byte	0x82
	.uleb128 0x1
	.long	.LASF219
	.byte	0x83
	.uleb128 0x1
	.long	.LASF220
	.byte	0x84
	.uleb128 0x1
	.long	.LASF221
	.byte	0x85
	.uleb128 0x1
	.long	.LASF222
	.byte	0x86
	.uleb128 0x1
	.long	.LASF223
	.byte	0x87
	.uleb128 0x1
	.long	.LASF224
	.byte	0x88
	.uleb128 0x1
	.long	.LASF225
	.byte	0x89
	.uleb128 0x1
	.long	.LASF226
	.byte	0x8a
	.byte	0
	.uleb128 0xa
	.long	.LASF227
	.byte	0x9
	.byte	0xac
	.byte	0x3
	.long	0x43f
	.uleb128 0x11
	.long	0x8e
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x211f
	.uleb128 0x1
	.long	.LASF228
	.byte	0
	.uleb128 0x1
	.long	.LASF229
	.byte	0x1
	.uleb128 0x1
	.long	.LASF230
	.byte	0x2
	.uleb128 0x1
	.long	.LASF231
	.byte	0x3
	.uleb128 0x1
	.long	.LASF232
	.byte	0x4
	.uleb128 0x1
	.long	.LASF233
	.byte	0x5
	.uleb128 0x1
	.long	.LASF234
	.byte	0x6
	.uleb128 0x1
	.long	.LASF235
	.byte	0x7
	.uleb128 0x1
	.long	.LASF236
	.byte	0x8
	.uleb128 0x1
	.long	.LASF237
	.byte	0x9
	.uleb128 0x1
	.long	.LASF238
	.byte	0xa
	.uleb128 0x1
	.long	.LASF239
	.byte	0xb
	.uleb128 0x1
	.long	.LASF240
	.byte	0xc
	.uleb128 0x1
	.long	.LASF241
	.byte	0xd
	.uleb128 0x1
	.long	.LASF242
	.byte	0xe
	.uleb128 0x1
	.long	.LASF243
	.byte	0xf
	.uleb128 0x1
	.long	.LASF244
	.byte	0x10
	.uleb128 0x1
	.long	.LASF245
	.byte	0x11
	.uleb128 0x1
	.long	.LASF246
	.byte	0x12
	.uleb128 0x1
	.long	.LASF247
	.byte	0x13
	.uleb128 0x1
	.long	.LASF248
	.byte	0x14
	.uleb128 0x1
	.long	.LASF249
	.byte	0x15
	.uleb128 0x1
	.long	.LASF250
	.byte	0x16
	.uleb128 0x1
	.long	.LASF251
	.byte	0x17
	.uleb128 0x1
	.long	.LASF252
	.byte	0x18
	.uleb128 0x1
	.long	.LASF253
	.byte	0x19
	.uleb128 0x1
	.long	.LASF254
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF255
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF256
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF257
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF258
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF259
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF260
	.byte	0x20
	.uleb128 0x1
	.long	.LASF261
	.byte	0x21
	.uleb128 0x1
	.long	.LASF262
	.byte	0x22
	.uleb128 0x1
	.long	.LASF263
	.byte	0x23
	.uleb128 0x1
	.long	.LASF264
	.byte	0x24
	.uleb128 0x1
	.long	.LASF265
	.byte	0x25
	.uleb128 0x1
	.long	.LASF266
	.byte	0x26
	.uleb128 0x1
	.long	.LASF267
	.byte	0x27
	.uleb128 0x1
	.long	.LASF268
	.byte	0x28
	.uleb128 0x1
	.long	.LASF269
	.byte	0x29
	.uleb128 0x1
	.long	.LASF270
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF271
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF272
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF273
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF274
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF275
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF276
	.byte	0x30
	.uleb128 0x1
	.long	.LASF277
	.byte	0x31
	.uleb128 0x1
	.long	.LASF278
	.byte	0x32
	.uleb128 0x1
	.long	.LASF279
	.byte	0x33
	.uleb128 0x1
	.long	.LASF280
	.byte	0x34
	.uleb128 0x1
	.long	.LASF281
	.byte	0x35
	.uleb128 0x1
	.long	.LASF282
	.byte	0x36
	.uleb128 0x1
	.long	.LASF283
	.byte	0x37
	.uleb128 0x1
	.long	.LASF284
	.byte	0x38
	.uleb128 0x1
	.long	.LASF285
	.byte	0x39
	.uleb128 0x1
	.long	.LASF286
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF287
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF288
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF289
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF290
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF291
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF292
	.byte	0x40
	.uleb128 0x1
	.long	.LASF293
	.byte	0x41
	.uleb128 0x1
	.long	.LASF294
	.byte	0x42
	.uleb128 0x1
	.long	.LASF295
	.byte	0x43
	.uleb128 0x1
	.long	.LASF296
	.byte	0x44
	.uleb128 0x1
	.long	.LASF297
	.byte	0x45
	.uleb128 0x1
	.long	.LASF298
	.byte	0x46
	.uleb128 0x1
	.long	.LASF299
	.byte	0x47
	.uleb128 0x1
	.long	.LASF300
	.byte	0x48
	.uleb128 0x1
	.long	.LASF301
	.byte	0x49
	.uleb128 0x1
	.long	.LASF302
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF303
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF304
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF305
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF306
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF307
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF308
	.byte	0x50
	.uleb128 0x1
	.long	.LASF309
	.byte	0x51
	.uleb128 0x1
	.long	.LASF310
	.byte	0x52
	.uleb128 0x1
	.long	.LASF311
	.byte	0x53
	.uleb128 0x1
	.long	.LASF312
	.byte	0x54
	.uleb128 0x1
	.long	.LASF313
	.byte	0x55
	.uleb128 0x1
	.long	.LASF314
	.byte	0x56
	.uleb128 0x1
	.long	.LASF315
	.byte	0x57
	.uleb128 0x1
	.long	.LASF316
	.byte	0x58
	.uleb128 0x1
	.long	.LASF317
	.byte	0x59
	.uleb128 0x1
	.long	.LASF318
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF319
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF320
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF321
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF322
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF323
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF324
	.byte	0x60
	.uleb128 0x1
	.long	.LASF325
	.byte	0x61
	.uleb128 0x1
	.long	.LASF326
	.byte	0x62
	.uleb128 0x1
	.long	.LASF327
	.byte	0x63
	.uleb128 0x1
	.long	.LASF328
	.byte	0x64
	.uleb128 0x1
	.long	.LASF329
	.byte	0x65
	.uleb128 0x1
	.long	.LASF330
	.byte	0x66
	.uleb128 0x1
	.long	.LASF331
	.byte	0x67
	.uleb128 0x1
	.long	.LASF332
	.byte	0x68
	.uleb128 0x1
	.long	.LASF333
	.byte	0x69
	.uleb128 0x1
	.long	.LASF334
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF335
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF336
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF337
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF338
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF339
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF340
	.byte	0x70
	.uleb128 0x1
	.long	.LASF341
	.byte	0x71
	.uleb128 0x1
	.long	.LASF342
	.byte	0x72
	.uleb128 0x1
	.long	.LASF343
	.byte	0x73
	.uleb128 0x1
	.long	.LASF344
	.byte	0x74
	.uleb128 0x1
	.long	.LASF345
	.byte	0x75
	.uleb128 0x1
	.long	.LASF346
	.byte	0x76
	.uleb128 0x1
	.long	.LASF347
	.byte	0x77
	.uleb128 0x1
	.long	.LASF348
	.byte	0x78
	.uleb128 0x1
	.long	.LASF349
	.byte	0x79
	.uleb128 0x1
	.long	.LASF350
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF351
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF352
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF353
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF354
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF355
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF356
	.byte	0x80
	.uleb128 0x1
	.long	.LASF357
	.byte	0x81
	.uleb128 0x1
	.long	.LASF358
	.byte	0x82
	.uleb128 0x1
	.long	.LASF359
	.byte	0x83
	.uleb128 0x1
	.long	.LASF360
	.byte	0x84
	.uleb128 0x1
	.long	.LASF361
	.byte	0x85
	.uleb128 0x1
	.long	.LASF362
	.byte	0x86
	.uleb128 0x1
	.long	.LASF363
	.byte	0x87
	.uleb128 0x1
	.long	.LASF364
	.byte	0x88
	.uleb128 0x1
	.long	.LASF365
	.byte	0x89
	.uleb128 0x1
	.long	.LASF366
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF367
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF368
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF369
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF370
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF371
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF372
	.byte	0x90
	.uleb128 0x1
	.long	.LASF373
	.byte	0x91
	.uleb128 0x1
	.long	.LASF374
	.byte	0x92
	.uleb128 0x1
	.long	.LASF375
	.byte	0x93
	.uleb128 0x1
	.long	.LASF376
	.byte	0x94
	.uleb128 0x1
	.long	.LASF377
	.byte	0x95
	.uleb128 0x1
	.long	.LASF378
	.byte	0x96
	.uleb128 0x1
	.long	.LASF379
	.byte	0x97
	.uleb128 0x1
	.long	.LASF380
	.byte	0x98
	.uleb128 0x1
	.long	.LASF381
	.byte	0x99
	.uleb128 0x1
	.long	.LASF382
	.byte	0x9a
	.uleb128 0x1
	.long	.LASF383
	.byte	0x9b
	.uleb128 0x1
	.long	.LASF384
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF385
	.byte	0x9d
	.uleb128 0x1
	.long	.LASF386
	.byte	0x9e
	.uleb128 0x1
	.long	.LASF387
	.byte	0x9f
	.uleb128 0x1
	.long	.LASF388
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF389
	.byte	0xa1
	.uleb128 0x1
	.long	.LASF390
	.byte	0xa2
	.uleb128 0x1
	.long	.LASF391
	.byte	0xa3
	.uleb128 0x1
	.long	.LASF392
	.byte	0xa4
	.uleb128 0x1
	.long	.LASF393
	.byte	0xa5
	.uleb128 0x1
	.long	.LASF394
	.byte	0xa6
	.uleb128 0x1
	.long	.LASF395
	.byte	0xa7
	.uleb128 0x1
	.long	.LASF396
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF397
	.byte	0xa9
	.uleb128 0x1
	.long	.LASF398
	.byte	0xaa
	.uleb128 0x1
	.long	.LASF399
	.byte	0xab
	.uleb128 0x1
	.long	.LASF400
	.byte	0xac
	.uleb128 0x1
	.long	.LASF401
	.byte	0xad
	.uleb128 0x1
	.long	.LASF402
	.byte	0xae
	.uleb128 0x1
	.long	.LASF403
	.byte	0xaf
	.uleb128 0x1
	.long	.LASF404
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF405
	.byte	0xb1
	.uleb128 0x1
	.long	.LASF406
	.byte	0xb2
	.uleb128 0x1
	.long	.LASF407
	.byte	0xb3
	.uleb128 0x1
	.long	.LASF408
	.byte	0xb4
	.uleb128 0x1
	.long	.LASF409
	.byte	0xb5
	.uleb128 0x1
	.long	.LASF410
	.byte	0xb6
	.uleb128 0x1
	.long	.LASF411
	.byte	0xb7
	.uleb128 0x1
	.long	.LASF412
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF413
	.byte	0xb9
	.uleb128 0x1
	.long	.LASF414
	.byte	0xba
	.uleb128 0x1
	.long	.LASF415
	.byte	0xbb
	.uleb128 0x1
	.long	.LASF416
	.byte	0xbc
	.uleb128 0x1
	.long	.LASF417
	.byte	0xbd
	.uleb128 0x1
	.long	.LASF418
	.byte	0xbe
	.uleb128 0x1
	.long	.LASF419
	.byte	0xbf
	.uleb128 0x1
	.long	.LASF420
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF421
	.byte	0xc1
	.uleb128 0x1
	.long	.LASF422
	.byte	0xc2
	.uleb128 0x1
	.long	.LASF423
	.byte	0xc3
	.uleb128 0x1
	.long	.LASF424
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF425
	.byte	0xc5
	.uleb128 0x1
	.long	.LASF426
	.byte	0xc6
	.uleb128 0x1
	.long	.LASF427
	.byte	0xc7
	.uleb128 0x1
	.long	.LASF428
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF429
	.byte	0xc9
	.uleb128 0x1
	.long	.LASF430
	.byte	0xca
	.uleb128 0x1
	.long	.LASF431
	.byte	0xcb
	.uleb128 0x1
	.long	.LASF432
	.byte	0xcc
	.uleb128 0x1
	.long	.LASF433
	.byte	0xcd
	.uleb128 0x1
	.long	.LASF434
	.byte	0xce
	.uleb128 0x1
	.long	.LASF435
	.byte	0xcf
	.uleb128 0x1
	.long	.LASF436
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF437
	.byte	0xd1
	.uleb128 0x1
	.long	.LASF438
	.byte	0xd2
	.uleb128 0x1
	.long	.LASF439
	.byte	0xd3
	.uleb128 0x1
	.long	.LASF440
	.byte	0xd4
	.uleb128 0x1
	.long	.LASF441
	.byte	0xd5
	.uleb128 0x1
	.long	.LASF442
	.byte	0xd6
	.uleb128 0x1
	.long	.LASF443
	.byte	0xd7
	.uleb128 0x1
	.long	.LASF444
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF445
	.byte	0xd9
	.uleb128 0x1
	.long	.LASF446
	.byte	0xda
	.uleb128 0x1
	.long	.LASF447
	.byte	0xdb
	.uleb128 0x1
	.long	.LASF448
	.byte	0xdc
	.uleb128 0x1
	.long	.LASF449
	.byte	0xdd
	.uleb128 0x1
	.long	.LASF450
	.byte	0xde
	.uleb128 0x1
	.long	.LASF451
	.byte	0xdf
	.uleb128 0x1
	.long	.LASF452
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF453
	.byte	0xe1
	.uleb128 0x1
	.long	.LASF454
	.byte	0xe2
	.uleb128 0x1
	.long	.LASF455
	.byte	0xe3
	.uleb128 0x1
	.long	.LASF456
	.byte	0xe4
	.uleb128 0x1
	.long	.LASF457
	.byte	0xe5
	.uleb128 0x1
	.long	.LASF458
	.byte	0xe6
	.uleb128 0x1
	.long	.LASF459
	.byte	0xe7
	.uleb128 0x1
	.long	.LASF460
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF461
	.byte	0xe9
	.uleb128 0x1
	.long	.LASF462
	.byte	0xea
	.uleb128 0x1
	.long	.LASF463
	.byte	0xeb
	.uleb128 0x1
	.long	.LASF464
	.byte	0xec
	.uleb128 0x1
	.long	.LASF465
	.byte	0xed
	.uleb128 0x1
	.long	.LASF466
	.byte	0xee
	.uleb128 0x1
	.long	.LASF467
	.byte	0xef
	.uleb128 0x1
	.long	.LASF468
	.byte	0xf0
	.uleb128 0x1
	.long	.LASF469
	.byte	0xf1
	.uleb128 0x1
	.long	.LASF470
	.byte	0xf2
	.uleb128 0x1
	.long	.LASF471
	.byte	0xf3
	.uleb128 0x1
	.long	.LASF472
	.byte	0xf4
	.uleb128 0x1
	.long	.LASF473
	.byte	0xf5
	.uleb128 0x1
	.long	.LASF474
	.byte	0xf6
	.uleb128 0x1
	.long	.LASF475
	.byte	0xf7
	.uleb128 0x1
	.long	.LASF476
	.byte	0xf8
	.uleb128 0x1
	.long	.LASF477
	.byte	0xf9
	.uleb128 0x1
	.long	.LASF478
	.byte	0xfa
	.uleb128 0x1
	.long	.LASF479
	.byte	0xfb
	.uleb128 0x1
	.long	.LASF480
	.byte	0xfc
	.uleb128 0x1
	.long	.LASF481
	.byte	0xfd
	.uleb128 0x1
	.long	.LASF482
	.byte	0xfe
	.uleb128 0x1
	.long	.LASF483
	.byte	0xff
	.uleb128 0x2
	.long	.LASF484
	.value	0x100
	.uleb128 0x2
	.long	.LASF485
	.value	0x101
	.uleb128 0x2
	.long	.LASF486
	.value	0x102
	.uleb128 0x2
	.long	.LASF487
	.value	0x103
	.uleb128 0x2
	.long	.LASF488
	.value	0x104
	.uleb128 0x2
	.long	.LASF489
	.value	0x105
	.uleb128 0x2
	.long	.LASF490
	.value	0x106
	.uleb128 0x2
	.long	.LASF491
	.value	0x107
	.uleb128 0x2
	.long	.LASF492
	.value	0x108
	.uleb128 0x2
	.long	.LASF493
	.value	0x109
	.uleb128 0x2
	.long	.LASF494
	.value	0x10a
	.uleb128 0x2
	.long	.LASF495
	.value	0x10b
	.uleb128 0x2
	.long	.LASF496
	.value	0x10c
	.uleb128 0x2
	.long	.LASF497
	.value	0x10d
	.uleb128 0x2
	.long	.LASF498
	.value	0x10e
	.uleb128 0x2
	.long	.LASF499
	.value	0x10f
	.uleb128 0x2
	.long	.LASF500
	.value	0x110
	.uleb128 0x2
	.long	.LASF501
	.value	0x111
	.uleb128 0x2
	.long	.LASF502
	.value	0x112
	.uleb128 0x2
	.long	.LASF503
	.value	0x113
	.uleb128 0x2
	.long	.LASF504
	.value	0x114
	.uleb128 0x2
	.long	.LASF505
	.value	0x115
	.uleb128 0x2
	.long	.LASF506
	.value	0x116
	.uleb128 0x2
	.long	.LASF507
	.value	0x117
	.uleb128 0x2
	.long	.LASF508
	.value	0x118
	.uleb128 0x2
	.long	.LASF509
	.value	0x119
	.uleb128 0x2
	.long	.LASF510
	.value	0x11a
	.uleb128 0x2
	.long	.LASF511
	.value	0x11b
	.uleb128 0x2
	.long	.LASF512
	.value	0x11c
	.uleb128 0x2
	.long	.LASF513
	.value	0x11d
	.uleb128 0x2
	.long	.LASF514
	.value	0x11e
	.uleb128 0x2
	.long	.LASF515
	.value	0x11f
	.uleb128 0x2
	.long	.LASF516
	.value	0x120
	.uleb128 0x2
	.long	.LASF517
	.value	0x121
	.uleb128 0x2
	.long	.LASF518
	.value	0x122
	.uleb128 0x2
	.long	.LASF519
	.value	0x123
	.uleb128 0x2
	.long	.LASF520
	.value	0x124
	.uleb128 0x2
	.long	.LASF521
	.value	0x125
	.uleb128 0x2
	.long	.LASF522
	.value	0x126
	.uleb128 0x2
	.long	.LASF523
	.value	0x127
	.uleb128 0x2
	.long	.LASF524
	.value	0x128
	.uleb128 0x2
	.long	.LASF525
	.value	0x129
	.uleb128 0x2
	.long	.LASF526
	.value	0x12a
	.uleb128 0x2
	.long	.LASF527
	.value	0x12b
	.uleb128 0x2
	.long	.LASF528
	.value	0x12c
	.uleb128 0x2
	.long	.LASF529
	.value	0x12d
	.uleb128 0x2
	.long	.LASF530
	.value	0x12e
	.uleb128 0x2
	.long	.LASF531
	.value	0x12f
	.uleb128 0x2
	.long	.LASF532
	.value	0x130
	.uleb128 0x2
	.long	.LASF533
	.value	0x131
	.uleb128 0x2
	.long	.LASF534
	.value	0x132
	.uleb128 0x2
	.long	.LASF535
	.value	0x133
	.uleb128 0x2
	.long	.LASF536
	.value	0x134
	.uleb128 0x2
	.long	.LASF537
	.value	0x135
	.uleb128 0x2
	.long	.LASF538
	.value	0x136
	.uleb128 0x2
	.long	.LASF539
	.value	0x137
	.uleb128 0x2
	.long	.LASF540
	.value	0x138
	.uleb128 0x2
	.long	.LASF541
	.value	0x139
	.uleb128 0x2
	.long	.LASF542
	.value	0x13a
	.uleb128 0x2
	.long	.LASF543
	.value	0x13b
	.uleb128 0x2
	.long	.LASF544
	.value	0x13c
	.uleb128 0x2
	.long	.LASF545
	.value	0x13d
	.uleb128 0x2
	.long	.LASF546
	.value	0x13e
	.uleb128 0x2
	.long	.LASF547
	.value	0x13f
	.uleb128 0x2
	.long	.LASF548
	.value	0x140
	.uleb128 0x2
	.long	.LASF549
	.value	0x141
	.uleb128 0x2
	.long	.LASF550
	.value	0x142
	.uleb128 0x2
	.long	.LASF551
	.value	0x143
	.uleb128 0x2
	.long	.LASF552
	.value	0x144
	.uleb128 0x2
	.long	.LASF553
	.value	0x145
	.uleb128 0x2
	.long	.LASF554
	.value	0x146
	.uleb128 0x2
	.long	.LASF555
	.value	0x147
	.uleb128 0x2
	.long	.LASF556
	.value	0x148
	.uleb128 0x2
	.long	.LASF557
	.value	0x149
	.uleb128 0x2
	.long	.LASF558
	.value	0x14a
	.uleb128 0x2
	.long	.LASF559
	.value	0x14b
	.uleb128 0x2
	.long	.LASF560
	.value	0x14c
	.uleb128 0x2
	.long	.LASF561
	.value	0x14d
	.uleb128 0x2
	.long	.LASF562
	.value	0x14e
	.uleb128 0x2
	.long	.LASF563
	.value	0x14f
	.uleb128 0x2
	.long	.LASF564
	.value	0x150
	.uleb128 0x2
	.long	.LASF565
	.value	0x151
	.uleb128 0x2
	.long	.LASF566
	.value	0x152
	.uleb128 0x2
	.long	.LASF567
	.value	0x153
	.uleb128 0x2
	.long	.LASF568
	.value	0x154
	.uleb128 0x2
	.long	.LASF569
	.value	0x155
	.uleb128 0x2
	.long	.LASF570
	.value	0x156
	.uleb128 0x2
	.long	.LASF571
	.value	0x157
	.uleb128 0x2
	.long	.LASF572
	.value	0x158
	.uleb128 0x2
	.long	.LASF573
	.value	0x159
	.uleb128 0x2
	.long	.LASF574
	.value	0x15a
	.uleb128 0x2
	.long	.LASF575
	.value	0x15b
	.uleb128 0x2
	.long	.LASF576
	.value	0x15c
	.uleb128 0x2
	.long	.LASF577
	.value	0x15d
	.uleb128 0x2
	.long	.LASF578
	.value	0x15e
	.uleb128 0x2
	.long	.LASF579
	.value	0x15f
	.uleb128 0x2
	.long	.LASF580
	.value	0x160
	.uleb128 0x2
	.long	.LASF581
	.value	0x161
	.uleb128 0x2
	.long	.LASF582
	.value	0x162
	.uleb128 0x2
	.long	.LASF583
	.value	0x163
	.uleb128 0x2
	.long	.LASF584
	.value	0x164
	.uleb128 0x2
	.long	.LASF585
	.value	0x165
	.uleb128 0x2
	.long	.LASF586
	.value	0x166
	.uleb128 0x2
	.long	.LASF587
	.value	0x167
	.uleb128 0x2
	.long	.LASF588
	.value	0x168
	.uleb128 0x2
	.long	.LASF589
	.value	0x169
	.uleb128 0x2
	.long	.LASF590
	.value	0x16a
	.uleb128 0x2
	.long	.LASF591
	.value	0x16b
	.uleb128 0x2
	.long	.LASF592
	.value	0x16c
	.uleb128 0x2
	.long	.LASF593
	.value	0x16d
	.uleb128 0x2
	.long	.LASF594
	.value	0x16e
	.uleb128 0x2
	.long	.LASF595
	.value	0x16f
	.uleb128 0x2
	.long	.LASF596
	.value	0x170
	.uleb128 0x2
	.long	.LASF597
	.value	0x171
	.uleb128 0x2
	.long	.LASF598
	.value	0x172
	.uleb128 0x2
	.long	.LASF599
	.value	0x173
	.uleb128 0x2
	.long	.LASF600
	.value	0x174
	.uleb128 0x2
	.long	.LASF601
	.value	0x175
	.uleb128 0x2
	.long	.LASF602
	.value	0x176
	.uleb128 0x2
	.long	.LASF603
	.value	0x177
	.uleb128 0x2
	.long	.LASF604
	.value	0x178
	.uleb128 0x2
	.long	.LASF605
	.value	0x179
	.uleb128 0x2
	.long	.LASF606
	.value	0x17a
	.uleb128 0x2
	.long	.LASF607
	.value	0x17b
	.uleb128 0x2
	.long	.LASF608
	.value	0x17c
	.uleb128 0x2
	.long	.LASF609
	.value	0x17d
	.uleb128 0x2
	.long	.LASF610
	.value	0x17e
	.uleb128 0x2
	.long	.LASF611
	.value	0x17f
	.uleb128 0x2
	.long	.LASF612
	.value	0x180
	.uleb128 0x2
	.long	.LASF613
	.value	0x181
	.uleb128 0x2
	.long	.LASF614
	.value	0x182
	.uleb128 0x2
	.long	.LASF615
	.value	0x183
	.uleb128 0x2
	.long	.LASF616
	.value	0x184
	.uleb128 0x2
	.long	.LASF617
	.value	0x185
	.uleb128 0x2
	.long	.LASF618
	.value	0x186
	.uleb128 0x2
	.long	.LASF619
	.value	0x187
	.uleb128 0x2
	.long	.LASF620
	.value	0x188
	.uleb128 0x2
	.long	.LASF621
	.value	0x189
	.uleb128 0x2
	.long	.LASF622
	.value	0x18a
	.uleb128 0x2
	.long	.LASF623
	.value	0x18b
	.uleb128 0x2
	.long	.LASF624
	.value	0x18c
	.uleb128 0x2
	.long	.LASF625
	.value	0x18d
	.uleb128 0x2
	.long	.LASF626
	.value	0x18e
	.uleb128 0x2
	.long	.LASF627
	.value	0x18f
	.uleb128 0x2
	.long	.LASF628
	.value	0x190
	.uleb128 0x2
	.long	.LASF629
	.value	0x191
	.uleb128 0x2
	.long	.LASF630
	.value	0x192
	.uleb128 0x2
	.long	.LASF631
	.value	0x193
	.uleb128 0x2
	.long	.LASF632
	.value	0x194
	.uleb128 0x2
	.long	.LASF633
	.value	0x195
	.uleb128 0x2
	.long	.LASF634
	.value	0x196
	.uleb128 0x2
	.long	.LASF635
	.value	0x197
	.uleb128 0x2
	.long	.LASF636
	.value	0x198
	.uleb128 0x2
	.long	.LASF637
	.value	0x199
	.uleb128 0x2
	.long	.LASF638
	.value	0x19a
	.uleb128 0x2
	.long	.LASF639
	.value	0x19b
	.uleb128 0x2
	.long	.LASF640
	.value	0x19c
	.uleb128 0x2
	.long	.LASF641
	.value	0x19d
	.uleb128 0x2
	.long	.LASF642
	.value	0x19e
	.uleb128 0x2
	.long	.LASF643
	.value	0x19f
	.uleb128 0x2
	.long	.LASF644
	.value	0x1a0
	.uleb128 0x2
	.long	.LASF645
	.value	0x1a1
	.uleb128 0x2
	.long	.LASF646
	.value	0x1a2
	.uleb128 0x2
	.long	.LASF647
	.value	0x1a3
	.uleb128 0x2
	.long	.LASF648
	.value	0x1a4
	.uleb128 0x2
	.long	.LASF649
	.value	0x1a5
	.uleb128 0x2
	.long	.LASF650
	.value	0x1a6
	.uleb128 0x2
	.long	.LASF651
	.value	0x1a7
	.uleb128 0x2
	.long	.LASF652
	.value	0x1a8
	.uleb128 0x2
	.long	.LASF653
	.value	0x1a9
	.uleb128 0x2
	.long	.LASF654
	.value	0x1aa
	.uleb128 0x2
	.long	.LASF655
	.value	0x1ab
	.uleb128 0x2
	.long	.LASF656
	.value	0x1ac
	.uleb128 0x2
	.long	.LASF657
	.value	0x1ad
	.uleb128 0x2
	.long	.LASF658
	.value	0x1ae
	.uleb128 0x2
	.long	.LASF659
	.value	0x1af
	.uleb128 0x2
	.long	.LASF660
	.value	0x1b0
	.uleb128 0x2
	.long	.LASF661
	.value	0x1b1
	.uleb128 0x2
	.long	.LASF662
	.value	0x1b2
	.uleb128 0x2
	.long	.LASF663
	.value	0x1b3
	.uleb128 0x2
	.long	.LASF664
	.value	0x1b4
	.uleb128 0x2
	.long	.LASF665
	.value	0x1b5
	.uleb128 0x2
	.long	.LASF666
	.value	0x1b6
	.uleb128 0x2
	.long	.LASF667
	.value	0x1b7
	.uleb128 0x2
	.long	.LASF668
	.value	0x1b8
	.uleb128 0x2
	.long	.LASF669
	.value	0x1b9
	.uleb128 0x2
	.long	.LASF670
	.value	0x1ba
	.uleb128 0x2
	.long	.LASF671
	.value	0x1bb
	.uleb128 0x2
	.long	.LASF672
	.value	0x1bc
	.uleb128 0x2
	.long	.LASF673
	.value	0x1bd
	.uleb128 0x2
	.long	.LASF674
	.value	0x1be
	.uleb128 0x2
	.long	.LASF675
	.value	0x1bf
	.uleb128 0x2
	.long	.LASF676
	.value	0x1c0
	.uleb128 0x2
	.long	.LASF677
	.value	0x1c1
	.uleb128 0x2
	.long	.LASF678
	.value	0x1c2
	.uleb128 0x2
	.long	.LASF679
	.value	0x1c3
	.uleb128 0x2
	.long	.LASF680
	.value	0x1c4
	.uleb128 0x2
	.long	.LASF681
	.value	0x1c5
	.uleb128 0x2
	.long	.LASF682
	.value	0x1c6
	.uleb128 0x2
	.long	.LASF683
	.value	0x1c7
	.uleb128 0x2
	.long	.LASF684
	.value	0x1c8
	.uleb128 0x2
	.long	.LASF685
	.value	0x1c9
	.uleb128 0x2
	.long	.LASF686
	.value	0x1ca
	.uleb128 0x2
	.long	.LASF687
	.value	0x1cb
	.uleb128 0x2
	.long	.LASF688
	.value	0x1cc
	.uleb128 0x2
	.long	.LASF689
	.value	0x1cd
	.uleb128 0x2
	.long	.LASF690
	.value	0x1ce
	.uleb128 0x2
	.long	.LASF691
	.value	0x1cf
	.uleb128 0x2
	.long	.LASF692
	.value	0x1d0
	.uleb128 0x2
	.long	.LASF693
	.value	0x1d1
	.uleb128 0x2
	.long	.LASF694
	.value	0x1d2
	.uleb128 0x2
	.long	.LASF695
	.value	0x1d3
	.uleb128 0x2
	.long	.LASF696
	.value	0x1d4
	.uleb128 0x2
	.long	.LASF697
	.value	0x1d5
	.uleb128 0x2
	.long	.LASF698
	.value	0x1d6
	.uleb128 0x2
	.long	.LASF699
	.value	0x1d7
	.uleb128 0x2
	.long	.LASF700
	.value	0x1d8
	.uleb128 0x2
	.long	.LASF701
	.value	0x1d9
	.uleb128 0x2
	.long	.LASF702
	.value	0x1da
	.uleb128 0x2
	.long	.LASF703
	.value	0x1db
	.uleb128 0x2
	.long	.LASF704
	.value	0x1dc
	.uleb128 0x2
	.long	.LASF705
	.value	0x1dd
	.uleb128 0x2
	.long	.LASF706
	.value	0x1de
	.uleb128 0x2
	.long	.LASF707
	.value	0x1df
	.uleb128 0x2
	.long	.LASF708
	.value	0x1e0
	.uleb128 0x2
	.long	.LASF709
	.value	0x1e1
	.uleb128 0x2
	.long	.LASF710
	.value	0x1e2
	.uleb128 0x2
	.long	.LASF711
	.value	0x1e3
	.uleb128 0x2
	.long	.LASF712
	.value	0x1e4
	.uleb128 0x2
	.long	.LASF713
	.value	0x1e5
	.uleb128 0x2
	.long	.LASF714
	.value	0x1e6
	.uleb128 0x2
	.long	.LASF715
	.value	0x1e7
	.uleb128 0x2
	.long	.LASF716
	.value	0x1e8
	.uleb128 0x2
	.long	.LASF717
	.value	0x1e9
	.uleb128 0x2
	.long	.LASF718
	.value	0x1ea
	.uleb128 0x2
	.long	.LASF719
	.value	0x1eb
	.uleb128 0x2
	.long	.LASF720
	.value	0x1ec
	.uleb128 0x2
	.long	.LASF721
	.value	0x1ed
	.uleb128 0x2
	.long	.LASF722
	.value	0x1ee
	.uleb128 0x2
	.long	.LASF723
	.value	0x1ef
	.uleb128 0x2
	.long	.LASF724
	.value	0x1f0
	.uleb128 0x2
	.long	.LASF725
	.value	0x1f1
	.uleb128 0x2
	.long	.LASF726
	.value	0x1f2
	.uleb128 0x2
	.long	.LASF727
	.value	0x1f3
	.uleb128 0x2
	.long	.LASF728
	.value	0x1f4
	.uleb128 0x2
	.long	.LASF729
	.value	0x1f5
	.uleb128 0x2
	.long	.LASF730
	.value	0x1f6
	.uleb128 0x2
	.long	.LASF731
	.value	0x1f7
	.uleb128 0x2
	.long	.LASF732
	.value	0x1f8
	.uleb128 0x2
	.long	.LASF733
	.value	0x1f9
	.uleb128 0x2
	.long	.LASF734
	.value	0x1fa
	.uleb128 0x2
	.long	.LASF735
	.value	0x1fb
	.uleb128 0x2
	.long	.LASF736
	.value	0x1fc
	.uleb128 0x2
	.long	.LASF737
	.value	0x1fd
	.uleb128 0x2
	.long	.LASF738
	.value	0x1fe
	.uleb128 0x2
	.long	.LASF739
	.value	0x1ff
	.uleb128 0x2
	.long	.LASF740
	.value	0x200
	.uleb128 0x2
	.long	.LASF741
	.value	0x201
	.uleb128 0x2
	.long	.LASF742
	.value	0x202
	.uleb128 0x2
	.long	.LASF743
	.value	0x203
	.uleb128 0x2
	.long	.LASF744
	.value	0x204
	.uleb128 0x2
	.long	.LASF745
	.value	0x205
	.uleb128 0x2
	.long	.LASF746
	.value	0x206
	.uleb128 0x2
	.long	.LASF747
	.value	0x207
	.uleb128 0x2
	.long	.LASF748
	.value	0x208
	.uleb128 0x2
	.long	.LASF749
	.value	0x209
	.uleb128 0x2
	.long	.LASF750
	.value	0x20a
	.uleb128 0x2
	.long	.LASF751
	.value	0x20b
	.uleb128 0x2
	.long	.LASF752
	.value	0x20c
	.uleb128 0x2
	.long	.LASF753
	.value	0x20d
	.uleb128 0x2
	.long	.LASF754
	.value	0x20e
	.uleb128 0x2
	.long	.LASF755
	.value	0x20f
	.uleb128 0x2
	.long	.LASF756
	.value	0x210
	.uleb128 0x2
	.long	.LASF757
	.value	0x211
	.uleb128 0x2
	.long	.LASF758
	.value	0x212
	.uleb128 0x2
	.long	.LASF759
	.value	0x213
	.uleb128 0x2
	.long	.LASF760
	.value	0x214
	.uleb128 0x2
	.long	.LASF761
	.value	0x215
	.uleb128 0x2
	.long	.LASF762
	.value	0x216
	.uleb128 0x2
	.long	.LASF763
	.value	0x217
	.uleb128 0x2
	.long	.LASF764
	.value	0x218
	.uleb128 0x2
	.long	.LASF765
	.value	0x219
	.uleb128 0x2
	.long	.LASF766
	.value	0x21a
	.uleb128 0x2
	.long	.LASF767
	.value	0x21b
	.uleb128 0x2
	.long	.LASF768
	.value	0x21c
	.uleb128 0x2
	.long	.LASF769
	.value	0x21d
	.uleb128 0x2
	.long	.LASF770
	.value	0x21e
	.uleb128 0x2
	.long	.LASF771
	.value	0x21f
	.uleb128 0x2
	.long	.LASF772
	.value	0x220
	.uleb128 0x2
	.long	.LASF773
	.value	0x221
	.uleb128 0x2
	.long	.LASF774
	.value	0x222
	.uleb128 0x2
	.long	.LASF775
	.value	0x223
	.uleb128 0x2
	.long	.LASF776
	.value	0x224
	.uleb128 0x2
	.long	.LASF777
	.value	0x225
	.uleb128 0x2
	.long	.LASF778
	.value	0x226
	.uleb128 0x2
	.long	.LASF779
	.value	0x227
	.uleb128 0x2
	.long	.LASF780
	.value	0x228
	.uleb128 0x2
	.long	.LASF781
	.value	0x229
	.uleb128 0x2
	.long	.LASF782
	.value	0x22a
	.uleb128 0x2
	.long	.LASF783
	.value	0x22b
	.uleb128 0x2
	.long	.LASF784
	.value	0x22c
	.uleb128 0x2
	.long	.LASF785
	.value	0x22d
	.uleb128 0x2
	.long	.LASF786
	.value	0x22e
	.uleb128 0x2
	.long	.LASF787
	.value	0x22f
	.uleb128 0x2
	.long	.LASF788
	.value	0x230
	.uleb128 0x2
	.long	.LASF789
	.value	0x231
	.uleb128 0x2
	.long	.LASF790
	.value	0x232
	.uleb128 0x2
	.long	.LASF791
	.value	0x233
	.uleb128 0x2
	.long	.LASF792
	.value	0x234
	.uleb128 0x2
	.long	.LASF793
	.value	0x235
	.uleb128 0x2
	.long	.LASF794
	.value	0x236
	.uleb128 0x2
	.long	.LASF795
	.value	0x237
	.uleb128 0x2
	.long	.LASF796
	.value	0x238
	.uleb128 0x2
	.long	.LASF797
	.value	0x239
	.uleb128 0x2
	.long	.LASF798
	.value	0x23a
	.uleb128 0x2
	.long	.LASF799
	.value	0x23b
	.uleb128 0x2
	.long	.LASF800
	.value	0x23c
	.uleb128 0x2
	.long	.LASF801
	.value	0x23d
	.uleb128 0x2
	.long	.LASF802
	.value	0x23e
	.uleb128 0x2
	.long	.LASF803
	.value	0x23f
	.uleb128 0x2
	.long	.LASF804
	.value	0x240
	.uleb128 0x2
	.long	.LASF805
	.value	0x241
	.uleb128 0x2
	.long	.LASF806
	.value	0x242
	.uleb128 0x2
	.long	.LASF807
	.value	0x243
	.uleb128 0x2
	.long	.LASF808
	.value	0x244
	.uleb128 0x2
	.long	.LASF809
	.value	0x245
	.uleb128 0x2
	.long	.LASF810
	.value	0x246
	.uleb128 0x2
	.long	.LASF811
	.value	0x247
	.uleb128 0x2
	.long	.LASF812
	.value	0x248
	.uleb128 0x2
	.long	.LASF813
	.value	0x249
	.uleb128 0x2
	.long	.LASF814
	.value	0x24a
	.uleb128 0x2
	.long	.LASF815
	.value	0x24b
	.uleb128 0x2
	.long	.LASF816
	.value	0x24c
	.uleb128 0x2
	.long	.LASF817
	.value	0x24d
	.uleb128 0x2
	.long	.LASF818
	.value	0x24e
	.uleb128 0x2
	.long	.LASF819
	.value	0x24f
	.uleb128 0x2
	.long	.LASF820
	.value	0x250
	.uleb128 0x2
	.long	.LASF821
	.value	0x251
	.uleb128 0x2
	.long	.LASF822
	.value	0x252
	.uleb128 0x2
	.long	.LASF823
	.value	0x253
	.uleb128 0x2
	.long	.LASF824
	.value	0x254
	.uleb128 0x2
	.long	.LASF825
	.value	0x255
	.uleb128 0x2
	.long	.LASF826
	.value	0x256
	.uleb128 0x2
	.long	.LASF827
	.value	0x257
	.uleb128 0x2
	.long	.LASF828
	.value	0x258
	.uleb128 0x2
	.long	.LASF829
	.value	0x259
	.uleb128 0x2
	.long	.LASF830
	.value	0x25a
	.uleb128 0x2
	.long	.LASF831
	.value	0x25b
	.uleb128 0x2
	.long	.LASF832
	.value	0x25c
	.uleb128 0x2
	.long	.LASF833
	.value	0x25d
	.uleb128 0x2
	.long	.LASF834
	.value	0x25e
	.uleb128 0x2
	.long	.LASF835
	.value	0x25f
	.uleb128 0x2
	.long	.LASF836
	.value	0x260
	.uleb128 0x2
	.long	.LASF837
	.value	0x261
	.uleb128 0x2
	.long	.LASF838
	.value	0x262
	.uleb128 0x2
	.long	.LASF839
	.value	0x263
	.uleb128 0x2
	.long	.LASF840
	.value	0x264
	.uleb128 0x2
	.long	.LASF841
	.value	0x265
	.uleb128 0x2
	.long	.LASF842
	.value	0x266
	.uleb128 0x2
	.long	.LASF843
	.value	0x267
	.uleb128 0x2
	.long	.LASF844
	.value	0x268
	.uleb128 0x2
	.long	.LASF845
	.value	0x269
	.uleb128 0x2
	.long	.LASF846
	.value	0x26a
	.uleb128 0x2
	.long	.LASF847
	.value	0x26b
	.uleb128 0x2
	.long	.LASF848
	.value	0x26c
	.uleb128 0x2
	.long	.LASF849
	.value	0x26d
	.uleb128 0x2
	.long	.LASF850
	.value	0x26e
	.uleb128 0x2
	.long	.LASF851
	.value	0x26f
	.uleb128 0x2
	.long	.LASF852
	.value	0x270
	.uleb128 0x2
	.long	.LASF853
	.value	0x271
	.uleb128 0x2
	.long	.LASF854
	.value	0x272
	.uleb128 0x2
	.long	.LASF855
	.value	0x273
	.uleb128 0x2
	.long	.LASF856
	.value	0x274
	.uleb128 0x2
	.long	.LASF857
	.value	0x275
	.uleb128 0x2
	.long	.LASF858
	.value	0x276
	.uleb128 0x2
	.long	.LASF859
	.value	0x277
	.uleb128 0x2
	.long	.LASF860
	.value	0x278
	.uleb128 0x2
	.long	.LASF861
	.value	0x279
	.uleb128 0x2
	.long	.LASF862
	.value	0x27a
	.uleb128 0x2
	.long	.LASF863
	.value	0x27b
	.uleb128 0x2
	.long	.LASF864
	.value	0x27c
	.uleb128 0x2
	.long	.LASF865
	.value	0x27d
	.uleb128 0x2
	.long	.LASF866
	.value	0x27e
	.uleb128 0x2
	.long	.LASF867
	.value	0x27f
	.uleb128 0x2
	.long	.LASF868
	.value	0x280
	.uleb128 0x2
	.long	.LASF869
	.value	0x281
	.uleb128 0x2
	.long	.LASF870
	.value	0x282
	.uleb128 0x2
	.long	.LASF871
	.value	0x283
	.uleb128 0x2
	.long	.LASF872
	.value	0x284
	.uleb128 0x2
	.long	.LASF873
	.value	0x285
	.uleb128 0x2
	.long	.LASF874
	.value	0x286
	.uleb128 0x2
	.long	.LASF875
	.value	0x287
	.uleb128 0x2
	.long	.LASF876
	.value	0x288
	.uleb128 0x2
	.long	.LASF877
	.value	0x289
	.uleb128 0x2
	.long	.LASF878
	.value	0x28a
	.uleb128 0x2
	.long	.LASF879
	.value	0x28b
	.uleb128 0x2
	.long	.LASF880
	.value	0x28c
	.uleb128 0x2
	.long	.LASF881
	.value	0x28d
	.uleb128 0x2
	.long	.LASF882
	.value	0x28e
	.uleb128 0x2
	.long	.LASF883
	.value	0x28f
	.uleb128 0x2
	.long	.LASF884
	.value	0x290
	.uleb128 0x2
	.long	.LASF885
	.value	0x291
	.uleb128 0x2
	.long	.LASF886
	.value	0x292
	.uleb128 0x2
	.long	.LASF887
	.value	0x293
	.uleb128 0x2
	.long	.LASF888
	.value	0x294
	.uleb128 0x2
	.long	.LASF889
	.value	0x295
	.uleb128 0x2
	.long	.LASF890
	.value	0x296
	.uleb128 0x2
	.long	.LASF891
	.value	0x297
	.uleb128 0x2
	.long	.LASF892
	.value	0x298
	.uleb128 0x2
	.long	.LASF893
	.value	0x299
	.uleb128 0x2
	.long	.LASF894
	.value	0x29a
	.uleb128 0x2
	.long	.LASF895
	.value	0x29b
	.uleb128 0x2
	.long	.LASF896
	.value	0x29c
	.uleb128 0x2
	.long	.LASF897
	.value	0x29d
	.uleb128 0x2
	.long	.LASF898
	.value	0x29e
	.uleb128 0x2
	.long	.LASF899
	.value	0x29f
	.uleb128 0x2
	.long	.LASF900
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF901
	.value	0x2a1
	.uleb128 0x2
	.long	.LASF902
	.value	0x2a2
	.uleb128 0x2
	.long	.LASF903
	.value	0x2a3
	.uleb128 0x2
	.long	.LASF904
	.value	0x2a4
	.uleb128 0x2
	.long	.LASF905
	.value	0x2a5
	.uleb128 0x2
	.long	.LASF906
	.value	0x2a6
	.uleb128 0x2
	.long	.LASF907
	.value	0x2a7
	.uleb128 0x2
	.long	.LASF908
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF909
	.value	0x2a9
	.uleb128 0x2
	.long	.LASF910
	.value	0x2aa
	.uleb128 0x2
	.long	.LASF911
	.value	0x2ab
	.uleb128 0x2
	.long	.LASF912
	.value	0x2ac
	.uleb128 0x2
	.long	.LASF913
	.value	0x2ad
	.uleb128 0x2
	.long	.LASF914
	.value	0x2ae
	.uleb128 0x2
	.long	.LASF915
	.value	0x2af
	.uleb128 0x2
	.long	.LASF916
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF917
	.value	0x2b1
	.uleb128 0x2
	.long	.LASF918
	.value	0x2b2
	.uleb128 0x2
	.long	.LASF919
	.value	0x2b3
	.uleb128 0x2
	.long	.LASF920
	.value	0x2b4
	.uleb128 0x2
	.long	.LASF921
	.value	0x2b5
	.uleb128 0x2
	.long	.LASF922
	.value	0x2b6
	.uleb128 0x2
	.long	.LASF923
	.value	0x2b7
	.uleb128 0x2
	.long	.LASF924
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF925
	.value	0x2b9
	.uleb128 0x2
	.long	.LASF926
	.value	0x2ba
	.uleb128 0x2
	.long	.LASF927
	.value	0x2bb
	.uleb128 0x2
	.long	.LASF928
	.value	0x2bc
	.uleb128 0x2
	.long	.LASF929
	.value	0x2bd
	.uleb128 0x2
	.long	.LASF930
	.value	0x2be
	.uleb128 0x2
	.long	.LASF931
	.value	0x2bf
	.uleb128 0x2
	.long	.LASF932
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF933
	.value	0x2c1
	.uleb128 0x2
	.long	.LASF934
	.value	0x2c2
	.uleb128 0x2
	.long	.LASF935
	.value	0x2c3
	.uleb128 0x2
	.long	.LASF936
	.value	0x2c4
	.uleb128 0x2
	.long	.LASF937
	.value	0x2c5
	.uleb128 0x2
	.long	.LASF938
	.value	0x2c6
	.uleb128 0x2
	.long	.LASF939
	.value	0x2c7
	.uleb128 0x2
	.long	.LASF940
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF941
	.value	0x2c9
	.uleb128 0x2
	.long	.LASF942
	.value	0x2ca
	.uleb128 0x2
	.long	.LASF943
	.value	0x2cb
	.uleb128 0x2
	.long	.LASF944
	.value	0x2cc
	.uleb128 0x2
	.long	.LASF945
	.value	0x2cd
	.uleb128 0x2
	.long	.LASF946
	.value	0x2ce
	.uleb128 0x2
	.long	.LASF947
	.value	0x2cf
	.uleb128 0x2
	.long	.LASF948
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF949
	.value	0x2d1
	.uleb128 0x2
	.long	.LASF950
	.value	0x2d2
	.uleb128 0x2
	.long	.LASF951
	.value	0x2d3
	.uleb128 0x2
	.long	.LASF952
	.value	0x2d4
	.uleb128 0x2
	.long	.LASF953
	.value	0x2d5
	.uleb128 0x2
	.long	.LASF954
	.value	0x2d6
	.uleb128 0x2
	.long	.LASF955
	.value	0x2d7
	.uleb128 0x2
	.long	.LASF956
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF957
	.value	0x2d9
	.uleb128 0x2
	.long	.LASF958
	.value	0x2da
	.uleb128 0x2
	.long	.LASF959
	.value	0x2db
	.uleb128 0x2
	.long	.LASF960
	.value	0x2dc
	.uleb128 0x2
	.long	.LASF961
	.value	0x2dd
	.uleb128 0x2
	.long	.LASF962
	.value	0x2de
	.uleb128 0x2
	.long	.LASF963
	.value	0x2df
	.uleb128 0x2
	.long	.LASF964
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF965
	.value	0x2e1
	.uleb128 0x2
	.long	.LASF966
	.value	0x2e2
	.uleb128 0x2
	.long	.LASF967
	.value	0x2e3
	.uleb128 0x2
	.long	.LASF968
	.value	0x2e4
	.uleb128 0x2
	.long	.LASF969
	.value	0x2e5
	.uleb128 0x2
	.long	.LASF970
	.value	0x2e6
	.uleb128 0x2
	.long	.LASF971
	.value	0x2e7
	.uleb128 0x2
	.long	.LASF972
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF973
	.value	0x2e9
	.uleb128 0x2
	.long	.LASF974
	.value	0x2ea
	.uleb128 0x2
	.long	.LASF975
	.value	0x2eb
	.uleb128 0x2
	.long	.LASF976
	.value	0x2ec
	.uleb128 0x2
	.long	.LASF977
	.value	0x2ed
	.uleb128 0x2
	.long	.LASF978
	.value	0x2ee
	.uleb128 0x2
	.long	.LASF979
	.value	0x2ef
	.uleb128 0x2
	.long	.LASF980
	.value	0x2f0
	.uleb128 0x2
	.long	.LASF981
	.value	0x2f1
	.uleb128 0x2
	.long	.LASF982
	.value	0x2f2
	.uleb128 0x2
	.long	.LASF983
	.value	0x2f3
	.uleb128 0x2
	.long	.LASF984
	.value	0x2f4
	.uleb128 0x2
	.long	.LASF985
	.value	0x2f5
	.uleb128 0x2
	.long	.LASF986
	.value	0x2f6
	.uleb128 0x2
	.long	.LASF987
	.value	0x2f7
	.uleb128 0x2
	.long	.LASF988
	.value	0x2f8
	.uleb128 0x2
	.long	.LASF989
	.value	0x2f9
	.uleb128 0x2
	.long	.LASF990
	.value	0x2fa
	.uleb128 0x2
	.long	.LASF991
	.value	0x2fb
	.uleb128 0x2
	.long	.LASF992
	.value	0x2fc
	.uleb128 0x2
	.long	.LASF993
	.value	0x2fd
	.uleb128 0x2
	.long	.LASF994
	.value	0x2fe
	.uleb128 0x2
	.long	.LASF995
	.value	0x2ff
	.uleb128 0x2
	.long	.LASF996
	.value	0x300
	.uleb128 0x2
	.long	.LASF997
	.value	0x301
	.uleb128 0x2
	.long	.LASF998
	.value	0x302
	.uleb128 0x2
	.long	.LASF999
	.value	0x303
	.uleb128 0x2
	.long	.LASF1000
	.value	0x304
	.uleb128 0x2
	.long	.LASF1001
	.value	0x305
	.uleb128 0x2
	.long	.LASF1002
	.value	0x306
	.uleb128 0x2
	.long	.LASF1003
	.value	0x307
	.uleb128 0x2
	.long	.LASF1004
	.value	0x308
	.uleb128 0x2
	.long	.LASF1005
	.value	0x309
	.uleb128 0x2
	.long	.LASF1006
	.value	0x30a
	.uleb128 0x2
	.long	.LASF1007
	.value	0x30b
	.uleb128 0x2
	.long	.LASF1008
	.value	0x30c
	.uleb128 0x2
	.long	.LASF1009
	.value	0x30d
	.uleb128 0x2
	.long	.LASF1010
	.value	0x30e
	.uleb128 0x2
	.long	.LASF1011
	.value	0x30f
	.uleb128 0x2
	.long	.LASF1012
	.value	0x310
	.uleb128 0x2
	.long	.LASF1013
	.value	0x311
	.uleb128 0x2
	.long	.LASF1014
	.value	0x312
	.uleb128 0x2
	.long	.LASF1015
	.value	0x313
	.uleb128 0x2
	.long	.LASF1016
	.value	0x314
	.uleb128 0x2
	.long	.LASF1017
	.value	0x315
	.uleb128 0x2
	.long	.LASF1018
	.value	0x316
	.uleb128 0x2
	.long	.LASF1019
	.value	0x317
	.uleb128 0x2
	.long	.LASF1020
	.value	0x318
	.uleb128 0x2
	.long	.LASF1021
	.value	0x319
	.uleb128 0x2
	.long	.LASF1022
	.value	0x31a
	.uleb128 0x2
	.long	.LASF1023
	.value	0x31b
	.uleb128 0x2
	.long	.LASF1024
	.value	0x31c
	.uleb128 0x2
	.long	.LASF1025
	.value	0x31d
	.uleb128 0x2
	.long	.LASF1026
	.value	0x31e
	.uleb128 0x2
	.long	.LASF1027
	.value	0x31f
	.uleb128 0x2
	.long	.LASF1028
	.value	0x320
	.uleb128 0x2
	.long	.LASF1029
	.value	0x321
	.uleb128 0x2
	.long	.LASF1030
	.value	0x322
	.uleb128 0x2
	.long	.LASF1031
	.value	0x323
	.uleb128 0x2
	.long	.LASF1032
	.value	0x324
	.uleb128 0x2
	.long	.LASF1033
	.value	0x325
	.uleb128 0x2
	.long	.LASF1034
	.value	0x326
	.uleb128 0x2
	.long	.LASF1035
	.value	0x327
	.uleb128 0x2
	.long	.LASF1036
	.value	0x328
	.uleb128 0x2
	.long	.LASF1037
	.value	0x329
	.uleb128 0x2
	.long	.LASF1038
	.value	0x32a
	.uleb128 0x2
	.long	.LASF1039
	.value	0x32b
	.uleb128 0x2
	.long	.LASF1040
	.value	0x32c
	.uleb128 0x2
	.long	.LASF1041
	.value	0x32d
	.uleb128 0x2
	.long	.LASF1042
	.value	0x32e
	.uleb128 0x2
	.long	.LASF1043
	.value	0x32f
	.uleb128 0x2
	.long	.LASF1044
	.value	0x330
	.uleb128 0x2
	.long	.LASF1045
	.value	0x331
	.uleb128 0x2
	.long	.LASF1046
	.value	0x332
	.uleb128 0x2
	.long	.LASF1047
	.value	0x333
	.uleb128 0x2
	.long	.LASF1048
	.value	0x334
	.uleb128 0x2
	.long	.LASF1049
	.value	0x335
	.uleb128 0x2
	.long	.LASF1050
	.value	0x336
	.uleb128 0x2
	.long	.LASF1051
	.value	0x337
	.uleb128 0x2
	.long	.LASF1052
	.value	0x338
	.uleb128 0x2
	.long	.LASF1053
	.value	0x339
	.uleb128 0x2
	.long	.LASF1054
	.value	0x33a
	.uleb128 0x2
	.long	.LASF1055
	.value	0x33b
	.uleb128 0x2
	.long	.LASF1056
	.value	0x33c
	.uleb128 0x2
	.long	.LASF1057
	.value	0x33d
	.uleb128 0x2
	.long	.LASF1058
	.value	0x33e
	.uleb128 0x2
	.long	.LASF1059
	.value	0x33f
	.uleb128 0x2
	.long	.LASF1060
	.value	0x340
	.uleb128 0x2
	.long	.LASF1061
	.value	0x341
	.uleb128 0x2
	.long	.LASF1062
	.value	0x342
	.uleb128 0x2
	.long	.LASF1063
	.value	0x343
	.uleb128 0x2
	.long	.LASF1064
	.value	0x344
	.uleb128 0x2
	.long	.LASF1065
	.value	0x345
	.uleb128 0x2
	.long	.LASF1066
	.value	0x346
	.uleb128 0x2
	.long	.LASF1067
	.value	0x347
	.uleb128 0x2
	.long	.LASF1068
	.value	0x348
	.uleb128 0x2
	.long	.LASF1069
	.value	0x349
	.uleb128 0x2
	.long	.LASF1070
	.value	0x34a
	.uleb128 0x2
	.long	.LASF1071
	.value	0x34b
	.uleb128 0x2
	.long	.LASF1072
	.value	0x34c
	.uleb128 0x2
	.long	.LASF1073
	.value	0x34d
	.uleb128 0x2
	.long	.LASF1074
	.value	0x34e
	.uleb128 0x2
	.long	.LASF1075
	.value	0x34f
	.uleb128 0x2
	.long	.LASF1076
	.value	0x350
	.uleb128 0x2
	.long	.LASF1077
	.value	0x351
	.uleb128 0x2
	.long	.LASF1078
	.value	0x352
	.uleb128 0x2
	.long	.LASF1079
	.value	0x353
	.uleb128 0x2
	.long	.LASF1080
	.value	0x354
	.uleb128 0x2
	.long	.LASF1081
	.value	0x355
	.uleb128 0x2
	.long	.LASF1082
	.value	0x356
	.uleb128 0x2
	.long	.LASF1083
	.value	0x357
	.uleb128 0x2
	.long	.LASF1084
	.value	0x358
	.uleb128 0x2
	.long	.LASF1085
	.value	0x359
	.uleb128 0x2
	.long	.LASF1086
	.value	0x35a
	.uleb128 0x2
	.long	.LASF1087
	.value	0x35b
	.uleb128 0x2
	.long	.LASF1088
	.value	0x35c
	.uleb128 0x2
	.long	.LASF1089
	.value	0x35d
	.uleb128 0x2
	.long	.LASF1090
	.value	0x35e
	.uleb128 0x2
	.long	.LASF1091
	.value	0x35f
	.uleb128 0x2
	.long	.LASF1092
	.value	0x360
	.uleb128 0x2
	.long	.LASF1093
	.value	0x361
	.uleb128 0x2
	.long	.LASF1094
	.value	0x362
	.uleb128 0x2
	.long	.LASF1095
	.value	0x363
	.uleb128 0x2
	.long	.LASF1096
	.value	0x364
	.uleb128 0x2
	.long	.LASF1097
	.value	0x365
	.uleb128 0x2
	.long	.LASF1098
	.value	0x366
	.uleb128 0x2
	.long	.LASF1099
	.value	0x367
	.uleb128 0x2
	.long	.LASF1100
	.value	0x368
	.uleb128 0x2
	.long	.LASF1101
	.value	0x369
	.uleb128 0x2
	.long	.LASF1102
	.value	0x36a
	.uleb128 0x2
	.long	.LASF1103
	.value	0x36b
	.uleb128 0x2
	.long	.LASF1104
	.value	0x36c
	.uleb128 0x2
	.long	.LASF1105
	.value	0x36d
	.uleb128 0x2
	.long	.LASF1106
	.value	0x36e
	.uleb128 0x2
	.long	.LASF1107
	.value	0x36f
	.uleb128 0x2
	.long	.LASF1108
	.value	0x370
	.uleb128 0x2
	.long	.LASF1109
	.value	0x371
	.uleb128 0x2
	.long	.LASF1110
	.value	0x372
	.uleb128 0x2
	.long	.LASF1111
	.value	0x373
	.uleb128 0x2
	.long	.LASF1112
	.value	0x374
	.uleb128 0x2
	.long	.LASF1113
	.value	0x375
	.uleb128 0x2
	.long	.LASF1114
	.value	0x376
	.uleb128 0x2
	.long	.LASF1115
	.value	0x377
	.uleb128 0x2
	.long	.LASF1116
	.value	0x378
	.uleb128 0x2
	.long	.LASF1117
	.value	0x379
	.uleb128 0x2
	.long	.LASF1118
	.value	0x37a
	.uleb128 0x2
	.long	.LASF1119
	.value	0x37b
	.uleb128 0x2
	.long	.LASF1120
	.value	0x37c
	.uleb128 0x2
	.long	.LASF1121
	.value	0x37d
	.uleb128 0x2
	.long	.LASF1122
	.value	0x37e
	.uleb128 0x2
	.long	.LASF1123
	.value	0x37f
	.uleb128 0x2
	.long	.LASF1124
	.value	0x380
	.uleb128 0x2
	.long	.LASF1125
	.value	0x381
	.uleb128 0x2
	.long	.LASF1126
	.value	0x382
	.uleb128 0x2
	.long	.LASF1127
	.value	0x383
	.uleb128 0x2
	.long	.LASF1128
	.value	0x384
	.uleb128 0x2
	.long	.LASF1129
	.value	0x385
	.uleb128 0x2
	.long	.LASF1130
	.value	0x386
	.uleb128 0x2
	.long	.LASF1131
	.value	0x387
	.uleb128 0x2
	.long	.LASF1132
	.value	0x388
	.uleb128 0x2
	.long	.LASF1133
	.value	0x389
	.uleb128 0x2
	.long	.LASF1134
	.value	0x38a
	.uleb128 0x2
	.long	.LASF1135
	.value	0x38b
	.uleb128 0x2
	.long	.LASF1136
	.value	0x38c
	.uleb128 0x2
	.long	.LASF1137
	.value	0x38d
	.uleb128 0x2
	.long	.LASF1138
	.value	0x38e
	.uleb128 0x2
	.long	.LASF1139
	.value	0x38f
	.uleb128 0x2
	.long	.LASF1140
	.value	0x390
	.uleb128 0x2
	.long	.LASF1141
	.value	0x391
	.uleb128 0x2
	.long	.LASF1142
	.value	0x392
	.uleb128 0x2
	.long	.LASF1143
	.value	0x393
	.uleb128 0x2
	.long	.LASF1144
	.value	0x394
	.uleb128 0x2
	.long	.LASF1145
	.value	0x395
	.uleb128 0x2
	.long	.LASF1146
	.value	0x396
	.uleb128 0x2
	.long	.LASF1147
	.value	0x397
	.uleb128 0x2
	.long	.LASF1148
	.value	0x398
	.uleb128 0x2
	.long	.LASF1149
	.value	0x399
	.uleb128 0x2
	.long	.LASF1150
	.value	0x39a
	.uleb128 0x2
	.long	.LASF1151
	.value	0x39b
	.uleb128 0x2
	.long	.LASF1152
	.value	0x39c
	.uleb128 0x2
	.long	.LASF1153
	.value	0x39d
	.uleb128 0x2
	.long	.LASF1154
	.value	0x39e
	.uleb128 0x2
	.long	.LASF1155
	.value	0x39f
	.uleb128 0x2
	.long	.LASF1156
	.value	0x3a0
	.uleb128 0x2
	.long	.LASF1157
	.value	0x3a1
	.uleb128 0x2
	.long	.LASF1158
	.value	0x3a2
	.uleb128 0x2
	.long	.LASF1159
	.value	0x3a3
	.uleb128 0x2
	.long	.LASF1160
	.value	0x3a4
	.uleb128 0x2
	.long	.LASF1161
	.value	0x3a5
	.uleb128 0x2
	.long	.LASF1162
	.value	0x3a6
	.uleb128 0x2
	.long	.LASF1163
	.value	0x3a7
	.uleb128 0x2
	.long	.LASF1164
	.value	0x3a8
	.uleb128 0x2
	.long	.LASF1165
	.value	0x3a9
	.uleb128 0x2
	.long	.LASF1166
	.value	0x3aa
	.uleb128 0x2
	.long	.LASF1167
	.value	0x3ab
	.uleb128 0x2
	.long	.LASF1168
	.value	0x3ac
	.uleb128 0x2
	.long	.LASF1169
	.value	0x3ad
	.uleb128 0x2
	.long	.LASF1170
	.value	0x3ae
	.uleb128 0x2
	.long	.LASF1171
	.value	0x3af
	.uleb128 0x2
	.long	.LASF1172
	.value	0x3b0
	.uleb128 0x2
	.long	.LASF1173
	.value	0x3b1
	.uleb128 0x2
	.long	.LASF1174
	.value	0x3b2
	.uleb128 0x2
	.long	.LASF1175
	.value	0x3b3
	.uleb128 0x2
	.long	.LASF1176
	.value	0x3b4
	.uleb128 0x2
	.long	.LASF1177
	.value	0x3b5
	.uleb128 0x2
	.long	.LASF1178
	.value	0x3b6
	.uleb128 0x2
	.long	.LASF1179
	.value	0x3b7
	.uleb128 0x2
	.long	.LASF1180
	.value	0x3b8
	.uleb128 0x2
	.long	.LASF1181
	.value	0x3b9
	.uleb128 0x2
	.long	.LASF1182
	.value	0x3ba
	.uleb128 0x2
	.long	.LASF1183
	.value	0x3bb
	.uleb128 0x2
	.long	.LASF1184
	.value	0x3bc
	.uleb128 0x2
	.long	.LASF1185
	.value	0x3bd
	.uleb128 0x2
	.long	.LASF1186
	.value	0x3be
	.uleb128 0x2
	.long	.LASF1187
	.value	0x3bf
	.uleb128 0x2
	.long	.LASF1188
	.value	0x3c0
	.uleb128 0x2
	.long	.LASF1189
	.value	0x3c1
	.uleb128 0x2
	.long	.LASF1190
	.value	0x3c2
	.uleb128 0x2
	.long	.LASF1191
	.value	0x3c3
	.uleb128 0x2
	.long	.LASF1192
	.value	0x3c4
	.uleb128 0x2
	.long	.LASF1193
	.value	0x3c5
	.uleb128 0x2
	.long	.LASF1194
	.value	0x3c6
	.uleb128 0x2
	.long	.LASF1195
	.value	0x3c7
	.byte	0
	.uleb128 0x18
	.long	.LASF1196
	.byte	0x9
	.value	0x478
	.long	0x79a
	.uleb128 0x25
	.byte	0x38
	.value	0x47b
	.long	0x2196
	.uleb128 0x9
	.long	.LASF1197
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x78e
	.byte	0
	.uleb128 0x9
	.long	.LASF1198
	.byte	0x9
	.value	0x47e
	.byte	0xa
	.long	0x72
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1199
	.byte	0x9
	.value	0x47f
	.byte	0xa
	.long	0x72
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1200
	.byte	0x9
	.value	0x481
	.byte	0xf
	.long	0x380
	.byte	0x18
	.uleb128 0x9
	.long	.LASF1201
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x211f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF1202
	.byte	0x9
	.value	0x483
	.byte	0xa
	.long	0x72
	.byte	0x28
	.uleb128 0x9
	.long	.LASF1203
	.byte	0x9
	.value	0x483
	.byte	0x11
	.long	0x72
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.long	.LASF1204
	.byte	0x9
	.value	0x484
	.long	0x212b
	.uleb128 0x1d
	.long	0x8e
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x24ec
	.uleb128 0x1
	.long	.LASF1205
	.byte	0
	.uleb128 0x1
	.long	.LASF1206
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1207
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1208
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1209
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1211
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1212
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1213
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1214
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1215
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1216
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1217
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1218
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1219
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1220
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1221
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1222
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1223
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1224
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1225
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1226
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1227
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1228
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1229
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1230
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1231
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1232
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1233
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1234
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1235
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1236
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1237
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1238
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1239
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1240
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1241
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1242
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1243
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1244
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1245
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1246
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1247
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1248
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1249
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1250
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1251
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1252
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1253
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1254
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1255
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1256
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1257
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1258
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1259
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1260
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1261
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1262
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1263
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1264
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1265
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1266
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1267
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1268
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1269
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1270
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1271
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1272
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1273
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1274
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1275
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1276
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1277
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1278
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1279
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1280
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1281
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1282
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1283
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1284
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1285
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1286
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1287
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1288
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1289
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1290
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1291
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1292
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1293
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1294
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1295
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1296
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1297
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1298
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1299
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1300
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1301
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1302
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1303
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1304
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1305
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1306
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1307
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1308
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1309
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1310
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1311
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1312
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1313
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1314
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF1315
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF1316
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF1317
	.byte	0x70
	.uleb128 0x1
	.long	.LASF1318
	.byte	0x71
	.uleb128 0x1
	.long	.LASF1319
	.byte	0x72
	.uleb128 0x1
	.long	.LASF1320
	.byte	0x73
	.uleb128 0x1
	.long	.LASF1321
	.byte	0x74
	.uleb128 0x1
	.long	.LASF1322
	.byte	0x75
	.uleb128 0x1
	.long	.LASF1323
	.byte	0x76
	.uleb128 0x1
	.long	.LASF1324
	.byte	0x77
	.uleb128 0x1
	.long	.LASF1325
	.byte	0x78
	.uleb128 0x1
	.long	.LASF1326
	.byte	0x79
	.uleb128 0x1
	.long	.LASF1327
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF1328
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF1329
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF1330
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF1331
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF1332
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF1333
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1334
	.byte	0x81
	.uleb128 0x1
	.long	.LASF1335
	.byte	0x82
	.uleb128 0x1
	.long	.LASF1336
	.byte	0x83
	.uleb128 0x1
	.long	.LASF1337
	.byte	0x84
	.uleb128 0x1
	.long	.LASF1338
	.byte	0x85
	.uleb128 0x1
	.long	.LASF1339
	.byte	0x86
	.uleb128 0x1
	.long	.LASF1340
	.byte	0x87
	.uleb128 0x1
	.long	.LASF1341
	.byte	0x88
	.uleb128 0x1
	.long	.LASF1342
	.byte	0x89
	.byte	0
	.uleb128 0x18
	.long	.LASF1343
	.byte	0x9
	.value	0x517
	.long	0x21a2
	.uleb128 0x25
	.byte	0x5c
	.value	0x519
	.long	0x2643
	.uleb128 0x9
	.long	.LASF1344
	.byte	0x9
	.value	0x51b
	.byte	0x9
	.long	0x6b
	.byte	0
	.uleb128 0x9
	.long	.LASF1345
	.byte	0x9
	.value	0x51c
	.byte	0x9
	.long	0x6b
	.byte	0x4
	.uleb128 0x9
	.long	.LASF1346
	.byte	0x9
	.value	0x51d
	.byte	0x9
	.long	0x6b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF1347
	.byte	0x9
	.value	0x51e
	.byte	0x9
	.long	0x6b
	.byte	0xc
	.uleb128 0x9
	.long	.LASF1348
	.byte	0x9
	.value	0x51f
	.byte	0x9
	.long	0x6b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF1349
	.byte	0x9
	.value	0x520
	.byte	0x9
	.long	0x6b
	.byte	0x14
	.uleb128 0x9
	.long	.LASF1350
	.byte	0x9
	.value	0x521
	.byte	0x9
	.long	0x6b
	.byte	0x18
	.uleb128 0x9
	.long	.LASF1351
	.byte	0x9
	.value	0x522
	.byte	0x9
	.long	0x6b
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF1352
	.byte	0x9
	.value	0x523
	.byte	0x9
	.long	0x6b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF1353
	.byte	0x9
	.value	0x524
	.byte	0x9
	.long	0x6b
	.byte	0x24
	.uleb128 0x9
	.long	.LASF1354
	.byte	0x9
	.value	0x525
	.byte	0x9
	.long	0x6b
	.byte	0x28
	.uleb128 0x9
	.long	.LASF1355
	.byte	0x9
	.value	0x526
	.byte	0x9
	.long	0x6b
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF1356
	.byte	0x9
	.value	0x527
	.byte	0x9
	.long	0x6b
	.byte	0x30
	.uleb128 0x9
	.long	.LASF1357
	.byte	0x9
	.value	0x528
	.byte	0x9
	.long	0x6b
	.byte	0x34
	.uleb128 0x9
	.long	.LASF1358
	.byte	0x9
	.value	0x529
	.byte	0x9
	.long	0x6b
	.byte	0x38
	.uleb128 0x9
	.long	.LASF1359
	.byte	0x9
	.value	0x52a
	.byte	0x9
	.long	0x6b
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF1360
	.byte	0x9
	.value	0x52b
	.byte	0x9
	.long	0x6b
	.byte	0x40
	.uleb128 0x9
	.long	.LASF1361
	.byte	0x9
	.value	0x52c
	.byte	0x9
	.long	0x6b
	.byte	0x44
	.uleb128 0x9
	.long	.LASF1362
	.byte	0x9
	.value	0x52d
	.byte	0x9
	.long	0x6b
	.byte	0x48
	.uleb128 0x9
	.long	.LASF1363
	.byte	0x9
	.value	0x52e
	.byte	0x9
	.long	0x6b
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF1364
	.byte	0x9
	.value	0x52f
	.byte	0x9
	.long	0x6b
	.byte	0x50
	.uleb128 0x9
	.long	.LASF1365
	.byte	0x9
	.value	0x530
	.byte	0x9
	.long	0x6b
	.byte	0x54
	.uleb128 0x9
	.long	.LASF1366
	.byte	0x9
	.value	0x531
	.byte	0x9
	.long	0x6b
	.byte	0x58
	.byte	0
	.uleb128 0x18
	.long	.LASF1367
	.byte	0x9
	.value	0x533
	.long	0x24f8
	.uleb128 0xe
	.long	0x2643
	.long	0x265f
	.uleb128 0xf
	.long	0x43
	.byte	0x88
	.byte	0
	.uleb128 0x1e
	.long	.LASF1368
	.byte	0x9
	.value	0x535
	.byte	0x13
	.long	0x264f
	.uleb128 0x11
	.long	0x8e
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.long	0x274a
	.uleb128 0x1
	.long	.LASF1369
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1370
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1371
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1372
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1373
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1374
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1375
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1376
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1377
	.value	0x100
	.uleb128 0x2
	.long	.LASF1378
	.value	0x200
	.uleb128 0x2
	.long	.LASF1379
	.value	0x400
	.uleb128 0x2
	.long	.LASF1380
	.value	0x800
	.uleb128 0x2
	.long	.LASF1381
	.value	0x1000
	.uleb128 0x2
	.long	.LASF1382
	.value	0x2000
	.uleb128 0x2
	.long	.LASF1383
	.value	0x4000
	.uleb128 0x2
	.long	.LASF1384
	.value	0x8000
	.uleb128 0x14
	.long	.LASF1385
	.long	0x10000
	.uleb128 0x14
	.long	.LASF1386
	.long	0x20000
	.uleb128 0x14
	.long	.LASF1387
	.long	0x40000
	.uleb128 0x14
	.long	.LASF1388
	.long	0x80000
	.uleb128 0x14
	.long	.LASF1389
	.long	0x100000
	.uleb128 0x14
	.long	.LASF1390
	.long	0x200000
	.uleb128 0x14
	.long	.LASF1391
	.long	0x400000
	.uleb128 0x14
	.long	.LASF1392
	.long	0x800000
	.uleb128 0x14
	.long	.LASF1393
	.long	0x1000000
	.uleb128 0x14
	.long	.LASF1394
	.long	0x2000000
	.uleb128 0x14
	.long	.LASF1395
	.long	0xc000000
	.uleb128 0x1
	.long	.LASF1396
	.byte	0x1a
	.byte	0
	.uleb128 0x1b
	.long	.LASF1398
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x2921
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x3d1
	.byte	0
	.uleb128 0xc
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0x2bb
	.byte	0x18
	.uleb128 0xc
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0x2bb
	.byte	0x1c
	.uleb128 0xc
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0x2bb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x2921
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x2921
	.byte	0x30
	.uleb128 0x3
	.long	.LASF84
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x2f5
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1197
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x78e
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1198
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x6b
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x2921
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x2921
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x295a
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0x2bb
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0x2bb
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0x2bb
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0x2bb
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0x2bb
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0x2bb
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0x2bb
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x6b
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF85
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x24ec
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x295f
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1199
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x6b
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x2964
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x6b
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x6b
	.byte	0xa4
	.uleb128 0x9
	.long	.LASF1414
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x6b
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF1415
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x6b
	.byte	0xac
	.uleb128 0x9
	.long	.LASF1416
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x2921
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF1349
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x6b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF1417
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x6b
	.byte	0xbc
	.uleb128 0x9
	.long	.LASF1418
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x2b3e
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF1419
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF1420
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x433
	.byte	0xcc
	.uleb128 0x9
	.long	.LASF1421
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x2921
	.byte	0xd8
	.byte	0
	.uleb128 0xb
	.long	0x274a
	.uleb128 0x1b
	.long	.LASF1422
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x295a
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2dd7
	.byte	0
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	0x2926
	.uleb128 0xb
	.long	0x2643
	.uleb128 0xb
	.long	0x2196
	.uleb128 0x32
	.long	.LASF1426
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x2b3e
	.uleb128 0xc
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2c96
	.byte	0
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2ec9
	.byte	0x8
	.uleb128 0xc
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x139
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x2bb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0x2bb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0x2bb
	.byte	0x1c
	.uleb128 0xc
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0x2bb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x6b
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x6b
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x6b
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2ed5
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2ee5
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0xca
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2c9b
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x239
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x239
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2ef5
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2c9b
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2c9b
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x6b
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x6b
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x6b
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x6b
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x6b
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0xa5
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x6b
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x6b
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2c96
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x6b
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x6b
	.byte	0xfc
	.uleb128 0x1f
	.long	.LASF1455
	.byte	0x9e
	.byte	0xb
	.long	0x6b
	.value	0x100
	.uleb128 0x1f
	.long	.LASF1456
	.byte	0xa1
	.byte	0xf
	.long	0x2f05
	.value	0x108
	.uleb128 0x1f
	.long	.LASF1457
	.byte	0xa4
	.byte	0xe
	.long	0xca
	.value	0x138
	.byte	0
	.uleb128 0xb
	.long	0x2969
	.uleb128 0x18
	.long	.LASF1458
	.byte	0xa
	.value	0x11e
	.long	0x274a
	.uleb128 0x17
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x2b6e
	.uleb128 0xc
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x2bb
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0x2bb
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF1459
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x2b4f
	.uleb128 0x17
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2bb1
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x3d1
	.byte	0
	.uleb128 0xc
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x2bb
	.byte	0x18
	.uleb128 0xc
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x2bb
	.byte	0x1c
	.uleb128 0xc
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0x2bb
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.long	.LASF1460
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x2b7a
	.uleb128 0x17
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2c96
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0x2bb
	.byte	0
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0x2bb
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x9c
	.byte	0xe
	.uleb128 0xc
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x9c
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x6b
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2c96
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2c9b
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2bb1
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x6b
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2c96
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1472
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0xa3
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1474
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2d6a
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0x2b43
	.uleb128 0xe
	.long	0x6b
	.long	0x2cab
	.uleb128 0xf
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF1475
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2d6a
	.uleb128 0xc
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2e19
	.byte	0
	.uleb128 0xc
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2e19
	.byte	0x8
	.uleb128 0xc
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0x2bb
	.byte	0x10
	.uleb128 0xc
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0x2bb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x9c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x9c
	.byte	0x1a
	.uleb128 0xc
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x9c
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x3dd
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2e1e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1478
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2e0d
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1479
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2dd7
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1480
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2dd7
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x6b
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1472
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0xa3
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	0x2d6f
	.uleb128 0xb
	.long	0x2cab
	.uleb128 0xa
	.long	.LASF1481
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2bbd
	.uleb128 0x17
	.byte	0x18
	.byte	0xb
	.byte	0x90
	.long	0x2dd7
	.uleb128 0x3
	.long	.LASF1482
	.byte	0xb
	.byte	0x93
	.byte	0xd
	.long	0x2bb
	.byte	0
	.uleb128 0x3
	.long	.LASF1483
	.byte	0xb
	.byte	0x96
	.byte	0xd
	.long	0x2bb
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1484
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1485
	.byte	0xb
	.byte	0x9b
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1486
	.byte	0xb
	.byte	0x9c
	.byte	0xb
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xb
	.byte	0x9f
	.byte	0xf
	.long	0x2dd7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	0x2d74
	.uleb128 0xa
	.long	.LASF1487
	.byte	0xb
	.byte	0xa1
	.byte	0x3
	.long	0x2d80
	.uleb128 0x11
	.long	0x8e
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2e0d
	.uleb128 0x1
	.long	.LASF1488
	.byte	0
	.uleb128 0x1
	.long	.LASF1489
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1490
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1491
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF1492
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2de8
	.uleb128 0xb
	.long	0x2b6e
	.uleb128 0xe
	.long	0x2bb
	.long	0x2e2e
	.uleb128 0xf
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF1493
	.byte	0xb
	.byte	0xd7
	.byte	0x3
	.long	0x2cab
	.uleb128 0xb
	.long	0x2ddc
	.uleb128 0xb
	.long	0x2e2e
	.uleb128 0x11
	.long	0x8e
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.long	0x2e63
	.uleb128 0x1
	.long	.LASF1494
	.byte	0
	.uleb128 0x1
	.long	.LASF1495
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1496
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.byte	0x18
	.byte	0xd
	.byte	0x44
	.long	0x2e9e
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xd
	.byte	0x46
	.byte	0xe
	.long	0x2964
	.byte	0
	.uleb128 0x3
	.long	.LASF1199
	.byte	0xd
	.byte	0x47
	.byte	0xa
	.long	0x6b
	.byte	0x8
	.uleb128 0xc
	.string	"sx"
	.byte	0xd
	.byte	0x48
	.byte	0xd
	.long	0x2bb
	.byte	0xc
	.uleb128 0xc
	.string	"sy"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x2bb
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	.LASF1497
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x2e63
	.uleb128 0x11
	.long	0x8e
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2ec9
	.uleb128 0x1
	.long	.LASF1498
	.byte	0
	.uleb128 0x1
	.long	.LASF1499
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1500
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	.LASF1501
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2eaa
	.uleb128 0xe
	.long	0x6b
	.long	0x2ee5
	.uleb128 0xf
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0xca
	.long	0x2ef5
	.uleb128 0xf
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0xca
	.long	0x2f05
	.uleb128 0xf
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x2e9e
	.long	0x2f15
	.uleb128 0xf
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF1502
	.byte	0xc
	.byte	0xa6
	.byte	0x3
	.long	0x2969
	.uleb128 0xd
	.long	.LASF1503
	.byte	0xe
	.byte	0x61
	.byte	0x11
	.long	0x2e3a
	.uleb128 0xb
	.long	0x2f15
	.uleb128 0xd
	.long	.LASF1410
	.byte	0xf
	.byte	0x37
	.byte	0xd
	.long	0x6b
	.uleb128 0xd
	.long	.LASF1504
	.byte	0x10
	.byte	0x46
	.byte	0x12
	.long	0x3d1
	.uleb128 0xd
	.long	.LASF1505
	.byte	0x10
	.byte	0xaa
	.byte	0x11
	.long	0x2bb
	.uleb128 0xd
	.long	.LASF1506
	.byte	0x10
	.byte	0xcb
	.byte	0x11
	.long	0xca
	.uleb128 0xd
	.long	.LASF1507
	.byte	0x10
	.byte	0xcc
	.byte	0x11
	.long	0x2bb
	.uleb128 0xd
	.long	.LASF1508
	.byte	0x10
	.byte	0xfb
	.byte	0x11
	.long	0x2bb
	.uleb128 0xd
	.long	.LASF1509
	.byte	0x10
	.byte	0xfc
	.byte	0x11
	.long	0x2bb
	.uleb128 0x1d
	.long	0x8e
	.byte	0x11
	.value	0x149
	.byte	0x1
	.long	0x2fc4
	.uleb128 0x1
	.long	.LASF1510
	.byte	0
	.uleb128 0x1
	.long	.LASF1511
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1512
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1513
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1514
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1515
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1516
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1517
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.long	.LASF1518
	.byte	0x11
	.value	0x153
	.long	0x2f86
	.uleb128 0x1d
	.long	0x8e
	.byte	0x11
	.value	0x21a
	.byte	0x1
	.long	0x302c
	.uleb128 0x1
	.long	.LASF1519
	.byte	0
	.uleb128 0x1
	.long	.LASF1520
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1521
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1522
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1523
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1524
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1525
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1526
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1527
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1528
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1529
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1530
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1531
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.long	.LASF1532
	.byte	0x11
	.value	0x23a
	.long	0x2fd0
	.uleb128 0xd
	.long	.LASF1533
	.byte	0x12
	.byte	0x33
	.byte	0x11
	.long	0xca
	.uleb128 0xd
	.long	.LASF1534
	.byte	0x12
	.byte	0x3c
	.byte	0x13
	.long	0x170
	.uleb128 0xd
	.long	.LASF1535
	.byte	0x12
	.byte	0x54
	.byte	0x19
	.long	0x1a7
	.uleb128 0xd
	.long	.LASF1536
	.byte	0x12
	.byte	0x55
	.byte	0xe
	.long	0x6b
	.uleb128 0xd
	.long	.LASF1537
	.byte	0x12
	.byte	0x56
	.byte	0xe
	.long	0x6b
	.uleb128 0xd
	.long	.LASF1538
	.byte	0x12
	.byte	0x5c
	.byte	0x11
	.long	0xca
	.uleb128 0xd
	.long	.LASF1539
	.byte	0x12
	.byte	0xd0
	.byte	0xd
	.long	0x6b
	.uleb128 0xe
	.long	0x2f15
	.long	0x309c
	.uleb128 0xf
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF1540
	.byte	0x12
	.byte	0xd4
	.byte	0x11
	.long	0x308c
	.uleb128 0xe
	.long	0xca
	.long	0x30b8
	.uleb128 0xf
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF1541
	.byte	0x12
	.byte	0xd7
	.byte	0x12
	.long	0x30a8
	.uleb128 0x11
	.long	0x8e
	.byte	0x13
	.byte	0xb2
	.byte	0x1
	.long	0x3365
	.uleb128 0x1
	.long	.LASF1542
	.byte	0
	.uleb128 0x1
	.long	.LASF1543
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1544
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1545
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1546
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1547
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1548
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1549
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1550
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1551
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1552
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1553
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1554
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1555
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1556
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1557
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1558
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1559
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1560
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1561
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1562
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1563
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1564
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1565
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1566
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1567
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1568
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1569
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1570
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1571
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1572
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1573
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1574
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1575
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1576
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1577
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1578
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1579
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1580
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1581
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1582
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1583
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1584
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1585
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1586
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1587
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1588
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1589
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1590
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1591
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1592
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1593
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1594
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1595
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1596
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1597
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1598
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1599
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1600
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1601
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1602
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1603
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1604
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1605
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1606
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1607
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1608
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1609
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1610
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1611
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1612
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1613
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1614
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1615
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1616
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1617
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1618
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1619
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1620
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1621
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1622
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1623
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1624
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1625
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1626
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1627
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1628
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1629
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1630
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1631
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1632
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1633
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1634
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1635
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1636
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1637
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1638
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1639
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1640
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1641
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1642
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1643
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1644
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1645
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1646
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1647
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1648
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1649
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1650
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1651
	.byte	0x6d
	.byte	0
	.uleb128 0x11
	.long	0x8e
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	0x33ae
	.uleb128 0x1
	.long	.LASF1652
	.byte	0
	.uleb128 0x1
	.long	.LASF1653
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1654
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1655
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1656
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1657
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1658
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1659
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1660
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1661
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.long	.LASF1662
	.byte	0x1
	.byte	0x40
	.byte	0x3
	.long	0x3365
	.uleb128 0xe
	.long	0x33ae
	.long	0x33ca
	.uleb128 0xf
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.long	.LASF1663
	.byte	0x46
	.byte	0xb
	.long	0x33ba
	.uleb128 0x9
	.byte	0x3
	.quad	opposite
	.uleb128 0xe
	.long	0x33ae
	.long	0x33ef
	.uleb128 0xf
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.long	.LASF1664
	.byte	0x4c
	.byte	0xb
	.long	0x33df
	.uleb128 0x9
	.byte	0x3
	.quad	diags
	.uleb128 0x20
	.long	.LASF1468
	.byte	0x67
	.byte	0xa
	.long	0x2c96
	.uleb128 0x9
	.byte	0x3
	.quad	soundtarget
	.uleb128 0xe
	.long	0x2bb
	.long	0x3429
	.uleb128 0xf
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.long	.LASF1665
	.value	0x108
	.byte	0x9
	.long	0x3419
	.uleb128 0x9
	.byte	0x3
	.quad	xspeed
	.uleb128 0x15
	.long	.LASF1666
	.value	0x109
	.byte	0x9
	.long	0x3419
	.uleb128 0x9
	.byte	0x3
	.quad	yspeed
	.uleb128 0xe
	.long	0x2e3f
	.long	0x3465
	.uleb128 0xf
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x1e
	.long	.LASF1667
	.byte	0x1
	.value	0x10d
	.byte	0x10
	.long	0x3455
	.uleb128 0x1e
	.long	.LASF1668
	.byte	0x1
	.value	0x10e
	.byte	0xc
	.long	0x6b
	.uleb128 0x15
	.long	.LASF1669
	.value	0x3fb
	.byte	0x5
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	TRACEANGLE
	.uleb128 0x15
	.long	.LASF1670
	.value	0x464
	.byte	0xa
	.long	0x2c96
	.uleb128 0x9
	.byte	0x3
	.quad	corpsehit
	.uleb128 0x15
	.long	.LASF1671
	.value	0x465
	.byte	0xa
	.long	0x2c96
	.uleb128 0x9
	.byte	0x3
	.quad	vileobj
	.uleb128 0x15
	.long	.LASF1672
	.value	0x466
	.byte	0xa
	.long	0x2bb
	.uleb128 0x9
	.byte	0x3
	.quad	viletryx
	.uleb128 0x15
	.long	.LASF1673
	.value	0x467
	.byte	0xa
	.long	0x2bb
	.uleb128 0x9
	.byte	0x3
	.quad	viletryy
	.uleb128 0xe
	.long	0x2c96
	.long	0x34fd
	.uleb128 0xf
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.long	.LASF1674
	.value	0x711
	.byte	0xa
	.long	0x34ed
	.uleb128 0x9
	.byte	0x3
	.quad	braintargets
	.uleb128 0x15
	.long	.LASF1675
	.value	0x712
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	numbraintargets
	.uleb128 0x15
	.long	.LASF1676
	.value	0x713
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	braintargeton
	.uleb128 0x16
	.long	.LASF1677
	.byte	0x10
	.byte	0x74
	.byte	0x7
	.long	0x3551
	.uleb128 0x4
	.long	0x2c96
	.byte	0
	.uleb128 0x12
	.long	.LASF1679
	.byte	0x10
	.byte	0xd4
	.byte	0x9
	.long	0xca
	.long	0x3571
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x26
	.long	.LASF1678
	.byte	0x1
	.value	0x702
	.long	0x3588
	.uleb128 0x4
	.long	0x2f2d
	.uleb128 0x4
	.long	0x3588
	.byte	0
	.uleb128 0xb
	.long	0x2e9e
	.uleb128 0x33
	.long	.LASF1806
	.byte	0x16
	.byte	0x3f
	.byte	0x6
	.uleb128 0x27
	.long	.LASF1680
	.value	0x271
	.long	0x6b
	.long	0x35af
	.uleb128 0x4
	.long	0x2e3f
	.uleb128 0x4
	.long	0x302c
	.byte	0
	.uleb128 0x16
	.long	.LASF1681
	.byte	0x10
	.byte	0xec
	.byte	0x1
	.long	0x35cb
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x16
	.long	.LASF1682
	.byte	0x10
	.byte	0xc2
	.byte	0x6
	.long	0x35dd
	.uleb128 0x4
	.long	0x2c96
	.byte	0
	.uleb128 0x16
	.long	.LASF1683
	.byte	0x10
	.byte	0xc1
	.byte	0x6
	.long	0x35ef
	.uleb128 0x4
	.long	0x2c96
	.byte	0
	.uleb128 0x12
	.long	.LASF1684
	.byte	0x10
	.byte	0xb0
	.byte	0x9
	.long	0xca
	.long	0x360f
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x360f
	.byte	0
	.uleb128 0xb
	.long	0x3614
	.uleb128 0x34
	.long	0xca
	.long	0x3623
	.uleb128 0x4
	.long	0x2c96
	.byte	0
	.uleb128 0x12
	.long	.LASF1685
	.byte	0x10
	.byte	0xd2
	.byte	0x9
	.long	0xca
	.long	0x3643
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x12
	.long	.LASF1686
	.byte	0x5
	.byte	0x28
	.byte	0x9
	.long	0x2bb
	.long	0x365e
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x12
	.long	.LASF1687
	.byte	0x10
	.byte	0x6e
	.byte	0x1
	.long	0x2c96
	.long	0x3683
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x24ec
	.byte	0
	.uleb128 0x16
	.long	.LASF1688
	.byte	0x10
	.byte	0x78
	.byte	0x6
	.long	0x369f
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x26
	.long	.LASF1689
	.byte	0x10
	.value	0x10d
	.long	0x36c0
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x12
	.long	.LASF1690
	.byte	0x10
	.byte	0x7a
	.byte	0x9
	.long	0x2c96
	.long	0x36e0
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x24ec
	.byte	0
	.uleb128 0x16
	.long	.LASF1691
	.byte	0x10
	.byte	0xe4
	.byte	0x1
	.long	0x3706
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2f5
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x12
	.long	.LASF1692
	.byte	0x10
	.byte	0xde
	.byte	0x1
	.long	0x2bb
	.long	0x3726
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2f5
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x12
	.long	.LASF1693
	.byte	0x10
	.byte	0x75
	.byte	0x9
	.long	0xca
	.long	0x3741
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x211f
	.byte	0
	.uleb128 0x16
	.long	.LASF1694
	.byte	0x14
	.byte	0x3b
	.byte	0x1
	.long	0x3758
	.uleb128 0x4
	.long	0xa3
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x27
	.long	.LASF1695
	.value	0x175
	.long	0x6b
	.long	0x3772
	.uleb128 0x4
	.long	0x2e3f
	.uleb128 0x4
	.long	0x2fc4
	.byte	0
	.uleb128 0x16
	.long	.LASF1696
	.byte	0x10
	.byte	0x76
	.byte	0x7
	.long	0x3784
	.uleb128 0x4
	.long	0x2c96
	.byte	0
	.uleb128 0x12
	.long	.LASF1697
	.byte	0xf
	.byte	0x7f
	.byte	0x1
	.long	0x2f5
	.long	0x37a9
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x12
	.long	.LASF1698
	.byte	0x11
	.byte	0x34
	.byte	0x1
	.long	0xca
	.long	0x37c9
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2e3f
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x12
	.long	.LASF1699
	.byte	0x10
	.byte	0xd3
	.byte	0x9
	.long	0xca
	.long	0x37e9
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x16
	.long	.LASF1700
	.byte	0x15
	.byte	0x59
	.byte	0x6
	.long	0x37fc
	.uleb128 0x4
	.long	0xa5
	.uleb128 0x22
	.byte	0
	.uleb128 0x35
	.long	.LASF1807
	.byte	0x17
	.byte	0x24
	.byte	0x5
	.long	0x6b
	.uleb128 0x12
	.long	.LASF1701
	.byte	0x10
	.byte	0xd6
	.byte	0x9
	.long	0xca
	.long	0x3823
	.uleb128 0x4
	.long	0x2c96
	.uleb128 0x4
	.long	0x2c96
	.byte	0
	.uleb128 0x12
	.long	.LASF1702
	.byte	0x10
	.byte	0xa1
	.byte	0x9
	.long	0x2bb
	.long	0x383e
	.uleb128 0x4
	.long	0x2bb
	.uleb128 0x4
	.long	0x2bb
	.byte	0
	.uleb128 0x16
	.long	.LASF1703
	.byte	0x10
	.byte	0xad
	.byte	0x7
	.long	0x3850
	.uleb128 0x4
	.long	0x2e3f
	.byte	0
	.uleb128 0x6
	.long	.LASF1706
	.value	0x7ca
	.byte	0x6
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x388c
	.uleb128 0x10
	.string	"mo"
	.value	0x7ca
	.byte	0x1e
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1705
	.value	0x7cd
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1707
	.value	0x790
	.byte	0x6
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x3902
	.uleb128 0x10
	.string	"mo"
	.value	0x790
	.byte	0x1a
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1708
	.value	0x792
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"fog"
	.value	0x793
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF1709
	.value	0x794
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"r"
	.value	0x795
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF85
	.value	0x796
	.byte	0x10
	.long	0x24ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.long	.LASF1710
	.value	0x78a
	.byte	0x6
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x392f
	.uleb128 0x10
	.string	"mo"
	.value	0x78a
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1711
	.value	0x76d
	.byte	0x6
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x3990
	.uleb128 0x10
	.string	"mo"
	.value	0x76d
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1709
	.value	0x76f
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF1708
	.value	0x770
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF1712
	.value	0x772
	.byte	0x10
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	easy.0
	.byte	0
	.uleb128 0x6
	.long	.LASF1713
	.value	0x768
	.byte	0x6
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x39bd
	.uleb128 0x10
	.string	"mo"
	.value	0x768
	.byte	0x1a
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1714
	.value	0x753
	.byte	0x6
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a20
	.uleb128 0x10
	.string	"mo"
	.value	0x753
	.byte	0x1e
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"x"
	.value	0x755
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"y"
	.value	0x756
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"z"
	.value	0x757
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"th"
	.value	0x758
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.long	.LASF1715
	.value	0x739
	.byte	0x6
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a82
	.uleb128 0x10
	.string	"mo"
	.value	0x739
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"x"
	.value	0x73b
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"y"
	.value	0x73c
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"z"
	.value	0x73d
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"th"
	.value	0x73e
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1716
	.value	0x733
	.byte	0x6
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aaf
	.uleb128 0x10
	.string	"mo"
	.value	0x733
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1717
	.value	0x715
	.byte	0x6
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x3af8
	.uleb128 0x10
	.string	"mo"
	.value	0x715
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1399
	.value	0x717
	.byte	0x10
	.long	0x3af8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"m"
	.value	0x718
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x3d1
	.uleb128 0x6
	.long	.LASF1718
	.value	0x707
	.byte	0x1
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b3a
	.uleb128 0x7
	.long	.LASF1418
	.value	0x708
	.byte	0xd
	.long	0x2f2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"psp"
	.value	0x709
	.byte	0xd
	.long	0x3588
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	.LASF1719
	.value	0x6fa
	.byte	0x1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b77
	.uleb128 0x7
	.long	.LASF1418
	.value	0x6fb
	.byte	0xd
	.long	0x2f2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"psp"
	.value	0x6fc
	.byte	0xd
	.long	0x3588
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	.LASF1720
	.value	0x6f2
	.byte	0x1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bb4
	.uleb128 0x7
	.long	.LASF1418
	.value	0x6f3
	.byte	0xd
	.long	0x2f2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"psp"
	.value	0x6f4
	.byte	0xd
	.long	0x3588
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	.LASF1721
	.value	0x6eb
	.byte	0x6
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x3be1
	.uleb128 0x10
	.string	"mo"
	.value	0x6eb
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1722
	.value	0x6e5
	.byte	0x6
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c0e
	.uleb128 0x10
	.string	"mo"
	.value	0x6e5
	.byte	0x17
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1723
	.value	0x6df
	.byte	0x6
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c3b
	.uleb128 0x10
	.string	"mo"
	.value	0x6df
	.byte	0x16
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1724
	.value	0x649
	.byte	0x6
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ca6
	.uleb128 0x10
	.string	"mo"
	.value	0x649
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x8
	.string	"th"
	.value	0x64b
	.byte	0x10
	.long	0x3af8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.string	"mo2"
	.value	0x64c
	.byte	0xd
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.long	.LASF1725
	.value	0x64d
	.byte	0xc
	.long	0x2e2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x8
	.string	"i"
	.value	0x64e
	.byte	0xa
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x6
	.long	.LASF1726
	.value	0x63e
	.byte	0x6
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cd4
	.uleb128 0x7
	.long	.LASF1727
	.value	0x63e
	.byte	0x19
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1728
	.byte	0x1
	.value	0x631
	.byte	0x6
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d03
	.uleb128 0x7
	.long	.LASF1729
	.value	0x631
	.byte	0x16
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1730
	.value	0x629
	.byte	0x6
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d31
	.uleb128 0x7
	.long	.LASF1729
	.value	0x629
	.byte	0x16
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1731
	.value	0x624
	.byte	0x6
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d5f
	.uleb128 0x7
	.long	.LASF1729
	.value	0x624
	.byte	0x19
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1732
	.value	0x5ff
	.byte	0x6
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d9c
	.uleb128 0x7
	.long	.LASF1729
	.value	0x5ff
	.byte	0x18
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1705
	.value	0x601
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1733
	.value	0x5f2
	.byte	0x6
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dca
	.uleb128 0x7
	.long	.LASF1729
	.value	0x5f2
	.byte	0x19
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1734
	.value	0x5e8
	.byte	0x6
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df8
	.uleb128 0x7
	.long	.LASF1729
	.value	0x5e8
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1735
	.value	0x5aa
	.byte	0x1
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3eaa
	.uleb128 0x7
	.long	.LASF1729
	.value	0x5ab
	.byte	0xb
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x7
	.long	.LASF84
	.value	0x5ac
	.byte	0xb
	.long	0x2f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x8
	.string	"x"
	.value	0x5ae
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.string	"y"
	.value	0x5af
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"z"
	.value	0x5b0
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF1708
	.value	0x5b2
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"an"
	.value	0x5b3
	.byte	0xd
	.long	0x2f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.long	.LASF1736
	.value	0x5b4
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF1737
	.value	0x5b5
	.byte	0xa
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF1738
	.value	0x5b6
	.byte	0x10
	.long	0x3af8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.long	.LASF1739
	.value	0x58b
	.byte	0x6
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f04
	.uleb128 0x7
	.long	.LASF1729
	.value	0x58b
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1740
	.value	0x58d
	.byte	0xe
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"an"
	.value	0x58e
	.byte	0xe
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF1741
	.value	0x58f
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	.LASF1742
	.value	0x570
	.byte	0x6
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f4e
	.uleb128 0x7
	.long	.LASF1729
	.value	0x570
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"mo"
	.value	0x572
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"an"
	.value	0x573
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.long	.LASF1743
	.value	0x55f
	.byte	0x6
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f98
	.uleb128 0x7
	.long	.LASF1729
	.value	0x55f
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"mo"
	.value	0x561
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"an"
	.value	0x562
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.long	.LASF1744
	.value	0x54e
	.byte	0x6
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fe2
	.uleb128 0x7
	.long	.LASF1729
	.value	0x54e
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"mo"
	.value	0x550
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"an"
	.value	0x551
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.long	.LASF1745
	.value	0x547
	.byte	0x6
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4010
	.uleb128 0x7
	.long	.LASF1729
	.value	0x547
	.byte	0x1a
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1746
	.value	0x51e
	.byte	0x6
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x405b
	.uleb128 0x7
	.long	.LASF1729
	.value	0x51e
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1747
	.value	0x520
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"an"
	.value	0x521
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.long	.LASF1748
	.value	0x505
	.byte	0x6
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4098
	.uleb128 0x7
	.long	.LASF1729
	.value	0x505
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"fog"
	.value	0x507
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1749
	.value	0x4e9
	.byte	0x6
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e3
	.uleb128 0x7
	.long	.LASF1729
	.value	0x4e9
	.byte	0x16
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1740
	.value	0x4eb
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"an"
	.value	0x4ec
	.byte	0xe
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.long	.LASF1750
	.value	0x4e3
	.byte	0x6
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4111
	.uleb128 0x7
	.long	.LASF1729
	.value	0x4e3
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1751
	.value	0x4dd
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x413f
	.uleb128 0x7
	.long	.LASF1729
	.value	0x4dd
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1752
	.value	0x4d1
	.byte	0x6
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x416d
	.uleb128 0x7
	.long	.LASF1729
	.value	0x4d1
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1753
	.value	0x48f
	.byte	0x6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x420e
	.uleb128 0x7
	.long	.LASF1729
	.value	0x48f
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"xl"
	.value	0x491
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"xh"
	.value	0x492
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"yl"
	.value	0x493
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"yh"
	.value	0x494
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"bx"
	.value	0x496
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.string	"by"
	.value	0x497
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF1411
	.value	0x499
	.byte	0x12
	.long	0x295f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF1754
	.value	0x49a
	.byte	0xe
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF1783
	.value	0x469
	.byte	0x9
	.long	0xca
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x425e
	.uleb128 0x7
	.long	.LASF1755
	.value	0x469
	.byte	0x20
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1756
	.value	0x46b
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF1757
	.value	0x46c
	.byte	0xd
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1758
	.value	0x44d
	.byte	0x6
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x429b
	.uleb128 0x7
	.long	.LASF1729
	.value	0x44d
	.byte	0x1a
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1363
	.value	0x44f
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1759
	.value	0x445
	.byte	0x6
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x42c9
	.uleb128 0x7
	.long	.LASF1729
	.value	0x445
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1760
	.value	0x3fd
	.byte	0x6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4341
	.uleb128 0x7
	.long	.LASF1729
	.value	0x3fd
	.byte	0x18
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1761
	.value	0x3ff
	.byte	0xd
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1741
	.value	0x400
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF1762
	.value	0x401
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1740
	.value	0x402
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"th"
	.value	0x403
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	.LASF1763
	.value	0x3ea
	.byte	0x6
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x437d
	.uleb128 0x7
	.long	.LASF1729
	.value	0x3ea
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"mo"
	.value	0x3ec
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1764
	.value	0x3d3
	.byte	0x6
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x43ba
	.uleb128 0x7
	.long	.LASF1729
	.value	0x3d3
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1363
	.value	0x3d5
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1765
	.value	0x3c9
	.byte	0x6
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x43e8
	.uleb128 0x7
	.long	.LASF1729
	.value	0x3c9
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1766
	.value	0x3b6
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x4425
	.uleb128 0x7
	.long	.LASF1729
	.value	0x3b6
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1363
	.value	0x3b8
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1767
	.value	0x3a7
	.byte	0x6
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x4462
	.uleb128 0x7
	.long	.LASF1729
	.value	0x3a7
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1363
	.value	0x3a9
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1768
	.value	0x391
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x449f
	.uleb128 0x7
	.long	.LASF1729
	.value	0x391
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1363
	.value	0x393
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF1769
	.value	0x382
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x44cd
	.uleb128 0x7
	.long	.LASF1729
	.value	0x382
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1770
	.value	0x372
	.byte	0x6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x44fb
	.uleb128 0x7
	.long	.LASF1729
	.value	0x372
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1771
	.value	0x361
	.byte	0x6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x4529
	.uleb128 0x7
	.long	.LASF1729
	.value	0x361
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF1772
	.value	0x34d
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x4593
	.uleb128 0x7
	.long	.LASF1729
	.value	0x34d
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF84
	.value	0x34f
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1773
	.value	0x350
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF1363
	.value	0x351
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1762
	.value	0x352
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.long	.LASF1774
	.value	0x335
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x460b
	.uleb128 0x7
	.long	.LASF1729
	.value	0x335
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.string	"i"
	.value	0x337
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF84
	.value	0x338
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1773
	.value	0x339
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF1363
	.value	0x33a
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1762
	.value	0x33b
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.long	.LASF1775
	.value	0x322
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x4666
	.uleb128 0x7
	.long	.LASF1729
	.value	0x322
	.byte	0x1b
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF84
	.value	0x324
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF1363
	.value	0x325
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1762
	.value	0x326
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.long	.LASF1776
	.value	0x30e
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x4694
	.uleb128 0x7
	.long	.LASF1729
	.value	0x30e
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.long	.LASF1777
	.value	0x2a0
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x46e0
	.uleb128 0x7
	.long	.LASF1729
	.value	0x2a0
	.byte	0x17
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1778
	.value	0x2a2
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF1780
	.value	0x2f1
	.quad	.L141
	.byte	0
	.uleb128 0x6
	.long	.LASF1779
	.value	0x25c
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x474d
	.uleb128 0x7
	.long	.LASF1729
	.value	0x25c
	.byte	0x16
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1709
	.value	0x25e
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF1781
	.value	0x276
	.quad	.L112
	.uleb128 0x37
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x5
	.long	.LASF1705
	.value	0x279
	.byte	0x7
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF1782
	.value	0x236
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x47aa
	.uleb128 0x10
	.string	"mo"
	.value	0x236
	.byte	0x19
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x8
	.string	"th"
	.value	0x238
	.byte	0x10
	.long	0x3af8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x8
	.string	"mo2"
	.value	0x239
	.byte	0xd
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.long	.LASF1725
	.value	0x23a
	.byte	0xc
	.long	0x2e2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1c
	.long	.LASF1784
	.value	0x1f3
	.byte	0x1
	.long	0xca
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4842
	.uleb128 0x7
	.long	.LASF1729
	.value	0x1f4
	.byte	0xb
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1785
	.value	0x1f5
	.byte	0xb
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.string	"c"
	.value	0x1f7
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF1786
	.value	0x1f8
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF1418
	.value	0x1f9
	.byte	0xf
	.long	0x2f2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF1423
	.value	0x1fa
	.byte	0xf
	.long	0x2dd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"an"
	.value	0x1fb
	.byte	0xd
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF1741
	.value	0x1fc
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.long	.LASF1787
	.value	0x16b
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x48c9
	.uleb128 0x7
	.long	.LASF1729
	.value	0x16b
	.byte	0x1d
	.long	0x2c96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF1788
	.value	0x16d
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF1789
	.value	0x16e
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"d"
	.value	0x170
	.byte	0xf
	.long	0x48c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1790
	.value	0x172
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1791
	.value	0x173
	.byte	0xf
	.long	0x33ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF1792
	.value	0x175
	.byte	0xf
	.long	0x33ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	0x33ae
	.long	0x48d9
	.uleb128 0xf
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.long	.LASF1793
	.value	0x15d
	.byte	0x9
	.long	0xca
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x490b
	.uleb128 0x7
	.long	.LASF1729
	.value	0x15d
	.byte	0x1c
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF1794
	.value	0x110
	.byte	0x9
	.long	0xca
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4987
	.uleb128 0x7
	.long	.LASF1729
	.value	0x110
	.byte	0x19
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1795
	.value	0x112
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF1796
	.value	0x113
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"ld"
	.value	0x115
	.byte	0xd
	.long	0x2e3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF1797
	.value	0x119
	.byte	0xd
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF1798
	.value	0x11a
	.byte	0xd
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF1799
	.byte	0xc5
	.long	0xca
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x49c4
	.uleb128 0x1a
	.long	.LASF1729
	.byte	0xc5
	.byte	0x26
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF1741
	.byte	0xc7
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF1800
	.byte	0xae
	.long	0xca
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a0e
	.uleb128 0x1a
	.long	.LASF1729
	.byte	0xae
	.byte	0x24
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"pl"
	.byte	0xb0
	.byte	0xd
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF1741
	.byte	0xb1
	.byte	0xd
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.long	.LASF1801
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a49
	.uleb128 0x1a
	.long	.LASF1416
	.byte	0xa0
	.byte	0xb
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF1802
	.byte	0xa1
	.byte	0xb
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF1808
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.string	"sec"
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.long	0x2dd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF1803
	.byte	0x6c
	.byte	0x8
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.string	"i"
	.byte	0x6e
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF1757
	.byte	0x6f
	.byte	0xd
	.long	0x2e3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF1804
	.byte	0x70
	.byte	0xf
	.long	0x2dd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
.LASF865:
	.string	"S_BSPI_RUN3"
.LASF866:
	.string	"S_BSPI_RUN4"
.LASF867:
	.string	"S_BSPI_RUN5"
.LASF868:
	.string	"S_BSPI_RUN6"
.LASF869:
	.string	"S_BSPI_RUN7"
.LASF870:
	.string	"S_BSPI_RUN8"
.LASF871:
	.string	"S_BSPI_RUN9"
.LASF1586:
	.string	"sfx_cybsit"
.LASF155:
	.string	"SPR_YSKU"
.LASF1552:
	.string	"sfx_sawup"
.LASF1452:
	.string	"attacker"
.LASF518:
	.string	"S_FIRE10"
.LASF519:
	.string	"S_FIRE11"
.LASF520:
	.string	"S_FIRE12"
.LASF521:
	.string	"S_FIRE13"
.LASF522:
	.string	"S_FIRE14"
.LASF523:
	.string	"S_FIRE15"
.LASF524:
	.string	"S_FIRE16"
.LASF525:
	.string	"S_FIRE17"
.LASF526:
	.string	"S_FIRE18"
.LASF527:
	.string	"S_FIRE19"
.LASF1339:
	.string	"MT_MISC84"
.LASF1272:
	.string	"MT_MISC20"
.LASF1086:
	.string	"S_MEGA2"
.LASF1087:
	.string	"S_MEGA3"
.LASF1088:
	.string	"S_MEGA4"
.LASF1276:
	.string	"MT_MISC24"
.LASF1277:
	.string	"MT_MISC25"
.LASF1279:
	.string	"MT_MISC26"
.LASF1280:
	.string	"MT_MISC27"
.LASF1281:
	.string	"MT_MISC28"
.LASF1284:
	.string	"MT_MISC29"
.LASF717:
	.string	"S_SARG_PAIN2"
.LASF1417:
	.string	"threshold"
.LASF43:
	.string	"wp_pistol"
.LASF1391:
	.string	"MF_COUNTKILL"
.LASF196:
	.string	"SPR_COL1"
.LASF197:
	.string	"SPR_COL2"
.LASF198:
	.string	"SPR_COL3"
.LASF199:
	.string	"SPR_COL4"
.LASF208:
	.string	"SPR_COL5"
.LASF202:
	.string	"SPR_COL6"
.LASF1768:
	.string	"A_TroopAttack"
.LASF1390:
	.string	"MF_INFLOAT"
.LASF1648:
	.string	"sfx_skesit"
.LASF1799:
	.string	"P_CheckMissileRange"
.LASF1629:
	.string	"sfx_tink"
.LASF528:
	.string	"S_FIRE20"
.LASF529:
	.string	"S_FIRE21"
.LASF530:
	.string	"S_FIRE22"
.LASF531:
	.string	"S_FIRE23"
.LASF532:
	.string	"S_FIRE24"
.LASF182:
	.string	"SPR_COLU"
.LASF534:
	.string	"S_FIRE26"
.LASF535:
	.string	"S_FIRE27"
.LASF536:
	.string	"S_FIRE28"
.LASF537:
	.string	"S_FIRE29"
.LASF1285:
	.string	"MT_MISC30"
.LASF1200:
	.string	"action"
.LASF1287:
	.string	"MT_MISC32"
.LASF1288:
	.string	"MT_MISC33"
.LASF879:
	.string	"S_BSPI_PAIN"
.LASF1290:
	.string	"MT_MISC35"
.LASF351:
	.string	"S_BFGEXP"
.LASF57:
	.string	"am_misl"
.LASF1293:
	.string	"MT_MISC38"
.LASF1294:
	.string	"MT_MISC39"
.LASF1463:
	.string	"floorpic"
.LASF881:
	.string	"S_BSPI_DIE1"
.LASF1496:
	.string	"NUMPSPRITES"
.LASF1686:
	.string	"FixedMul"
.LASF886:
	.string	"S_BSPI_DIE6"
.LASF1635:
	.string	"sfx_getpow"
.LASF1490:
	.string	"ST_POSITIVE"
.LASF1428:
	.string	"viewz"
.LASF1484:
	.string	"toptexture"
.LASF777:
	.string	"S_BOSS_RAISE1"
.LASF778:
	.string	"S_BOSS_RAISE2"
.LASF1219:
	.string	"MT_HEAD"
.LASF779:
	.string	"S_BOSS_RAISE3"
.LASF538:
	.string	"S_FIRE30"
.LASF683:
	.string	"S_TROO_PAIN"
.LASF972:
	.string	"S_SSWV_DIE1"
.LASF782:
	.string	"S_BOSS_RAISE6"
.LASF974:
	.string	"S_SSWV_DIE3"
.LASF975:
	.string	"S_SSWV_DIE4"
.LASF976:
	.string	"S_SSWV_DIE5"
.LASF150:
	.string	"SPR_BKEY"
.LASF794:
	.string	"S_BOS2_ATK1"
.LASF795:
	.string	"S_BOS2_ATK2"
.LASF796:
	.string	"S_BOS2_ATK3"
.LASF184:
	.string	"SPR_GOR1"
.LASF191:
	.string	"SPR_GOR2"
.LASF192:
	.string	"SPR_GOR3"
.LASF193:
	.string	"SPR_GOR4"
.LASF194:
	.string	"SPR_GOR5"
.LASF1297:
	.string	"MT_MISC42"
.LASF1298:
	.string	"MT_MISC43"
.LASF551:
	.string	"S_SKEL_RUN1"
.LASF552:
	.string	"S_SKEL_RUN2"
.LASF553:
	.string	"S_SKEL_RUN3"
.LASF554:
	.string	"S_SKEL_RUN4"
.LASF555:
	.string	"S_SKEL_RUN5"
.LASF556:
	.string	"S_SKEL_RUN6"
.LASF557:
	.string	"S_SKEL_RUN7"
.LASF558:
	.string	"S_SKEL_RUN8"
.LASF559:
	.string	"S_SKEL_RUN9"
.LASF46:
	.string	"wp_missile"
.LASF1037:
	.string	"S_BEXP2"
.LASF1347:
	.string	"seestate"
.LASF732:
	.string	"S_HEAD_ATK1"
.LASF733:
	.string	"S_HEAD_ATK2"
.LASF734:
	.string	"S_HEAD_ATK3"
.LASF1478:
	.string	"slopetype"
.LASF986:
	.string	"S_SSWV_RAISE1"
.LASF987:
	.string	"S_SSWV_RAISE2"
.LASF988:
	.string	"S_SSWV_RAISE3"
.LASF989:
	.string	"S_SSWV_RAISE4"
.LASF990:
	.string	"S_SSWV_RAISE5"
.LASF84:
	.string	"angle"
.LASF1214:
	.string	"MT_FATSHOT"
.LASF170:
	.string	"SPR_CELL"
.LASF171:
	.string	"SPR_CELP"
.LASF1152:
	.string	"S_HEARTCOL"
.LASF1735:
	.string	"A_PainShootSkull"
.LASF1473:
	.string	"linecount"
.LASF1729:
	.string	"actor"
.LASF1424:
	.string	"numlines"
.LASF1069:
	.string	"S_MEDI"
.LASF1790:
	.string	"tdir"
.LASF1076:
	.string	"S_PINV"
.LASF1788:
	.string	"deltax"
.LASF1263:
	.string	"MT_INS"
.LASF1306:
	.string	"MT_MISC51"
.LASF1307:
	.string	"MT_MISC52"
.LASF1261:
	.string	"MT_INV"
.LASF1309:
	.string	"MT_MISC54"
.LASF1166:
	.string	"S_BTORCHSHRT"
.LASF287:
	.string	"S_MISSILEUP"
.LASF1312:
	.string	"MT_MISC57"
.LASF1313:
	.string	"MT_MISC58"
.LASF1314:
	.string	"MT_MISC59"
.LASF1680:
	.string	"EV_DoFloor"
.LASF464:
	.string	"S_SPOS_RAISE1"
.LASF1722:
	.string	"A_Metal"
.LASF1656:
	.string	"DI_WEST"
.LASF1720:
	.string	"A_OpenShotgun2"
.LASF1546:
	.string	"sfx_dshtgn"
.LASF258:
	.string	"S_SGUNFLASH1"
.LASF259:
	.string	"S_SGUNFLASH2"
.LASF806:
	.string	"S_BOS2_RAISE1"
.LASF807:
	.string	"S_BOS2_RAISE2"
.LASF808:
	.string	"S_BOS2_RAISE3"
.LASF809:
	.string	"S_BOS2_RAISE4"
.LASF810:
	.string	"S_BOS2_RAISE5"
.LASF811:
	.string	"S_BOS2_RAISE6"
.LASF812:
	.string	"S_BOS2_RAISE7"
.LASF571:
	.string	"S_SKEL_PAIN"
.LASF1058:
	.string	"S_RKEY"
.LASF81:
	.string	"next"
.LASF1694:
	.string	"S_StartSound"
.LASF1558:
	.string	"sfx_firsht"
.LASF1550:
	.string	"sfx_plasma"
.LASF240:
	.string	"S_PISTOLUP"
.LASF926:
	.string	"S_CYBER_DIE8"
.LASF1775:
	.string	"A_PosAttack"
.LASF1483:
	.string	"rowoffset"
.LASF1315:
	.string	"MT_MISC60"
.LASF1316:
	.string	"MT_MISC61"
.LASF1317:
	.string	"MT_MISC62"
.LASF1318:
	.string	"MT_MISC63"
.LASF1319:
	.string	"MT_MISC64"
.LASF1320:
	.string	"MT_MISC65"
.LASF1321:
	.string	"MT_MISC66"
.LASF1322:
	.string	"MT_MISC67"
.LASF355:
	.string	"S_EXPLODE1"
.LASF356:
	.string	"S_EXPLODE2"
.LASF357:
	.string	"S_EXPLODE3"
.LASF1641:
	.string	"sfx_manatk"
.LASF546:
	.string	"S_TRACEEXP1"
.LASF547:
	.string	"S_TRACEEXP2"
.LASF548:
	.string	"S_TRACEEXP3"
.LASF934:
	.string	"S_PAIN_RUN5"
.LASF1036:
	.string	"S_BEXP"
.LASF935:
	.string	"S_PAIN_RUN6"
.LASF1453:
	.string	"extralight"
.LASF1501:
	.string	"playerstate_t"
.LASF1153:
	.string	"S_HEARTCOL2"
.LASF332:
	.string	"S_RBALLX1"
.LASF1549:
	.string	"sfx_dbload"
.LASF1361:
	.string	"height"
.LASF1246:
	.string	"MT_TELEPORTMAN"
.LASF1541:
	.string	"playeringame"
.LASF1325:
	.string	"MT_MISC70"
.LASF115:
	.string	"SPR_IFOG"
.LASF1327:
	.string	"MT_MISC72"
.LASF1328:
	.string	"MT_MISC73"
.LASF1329:
	.string	"MT_MISC74"
.LASF1330:
	.string	"MT_MISC75"
.LASF1331:
	.string	"MT_MISC76"
.LASF1159:
	.string	"S_GREENTORCH2"
.LASF1160:
	.string	"S_GREENTORCH3"
.LASF1161:
	.string	"S_GREENTORCH4"
.LASF1000:
	.string	"S_COMMKEEN9"
.LASF1515:
	.string	"blazeRaise"
.LASF649:
	.string	"S_CPOS_PAIN2"
.LASF872:
	.string	"S_BSPI_RUN10"
.LASF873:
	.string	"S_BSPI_RUN11"
.LASF874:
	.string	"S_BSPI_RUN12"
.LASF956:
	.string	"S_SSWV_RUN1"
.LASF957:
	.string	"S_SSWV_RUN2"
.LASF958:
	.string	"S_SSWV_RUN3"
.LASF959:
	.string	"S_SSWV_RUN4"
.LASF960:
	.string	"S_SSWV_RUN5"
.LASF961:
	.string	"S_SSWV_RUN6"
.LASF962:
	.string	"S_SSWV_RUN7"
.LASF963:
	.string	"S_SSWV_RUN8"
.LASF1141:
	.string	"S_SKULLCOL"
.LASF1213:
	.string	"MT_FATSO"
.LASF685:
	.string	"S_TROO_DIE1"
.LASF686:
	.string	"S_TROO_DIE2"
.LASF687:
	.string	"S_TROO_DIE3"
.LASF688:
	.string	"S_TROO_DIE4"
.LASF689:
	.string	"S_TROO_DIE5"
.LASF23:
	.string	"shareware"
.LASF1066:
	.string	"S_YSKULL"
.LASF1067:
	.string	"S_YSKULL2"
.LASF168:
	.string	"SPR_ROCK"
.LASF1238:
	.string	"MT_ROCKET"
.LASF1336:
	.string	"MT_MISC81"
.LASF1337:
	.string	"MT_MISC82"
.LASF1338:
	.string	"MT_MISC83"
.LASF644:
	.string	"S_CPOS_ATK1"
.LASF645:
	.string	"S_CPOS_ATK2"
.LASF646:
	.string	"S_CPOS_ATK3"
.LASF647:
	.string	"S_CPOS_ATK4"
.LASF1205:
	.string	"MT_PLAYER"
.LASF180:
	.string	"SPR_SHOT"
.LASF373:
	.string	"S_IFOG2"
.LASF374:
	.string	"S_IFOG3"
.LASF375:
	.string	"S_IFOG4"
.LASF376:
	.string	"S_IFOG5"
.LASF109:
	.string	"SPR_PLSE"
.LASF101:
	.string	"SPR_PLSF"
.LASF100:
	.string	"SPR_PLSG"
.LASF769:
	.string	"S_BOSS_PAIN2"
.LASF469:
	.string	"S_VILE_STND"
.LASF997:
	.string	"S_COMMKEEN6"
.LASF998:
	.string	"S_COMMKEEN7"
.LASF999:
	.string	"S_COMMKEEN8"
.LASF108:
	.string	"SPR_PLSS"
.LASF848:
	.string	"S_SPID_PAIN2"
.LASF1774:
	.string	"A_SPosAttack"
.LASF1798:
	.string	"good"
.LASF1576:
	.string	"sfx_oof"
.LASF1362:
	.string	"mass"
.LASF1617:
	.string	"sfx_posact"
.LASF221:
	.string	"SPR_POB1"
.LASF222:
	.string	"SPR_POB2"
.LASF1708:
	.string	"newmobj"
.LASF1527:
	.string	"raiseFloor24AndChange"
.LASF1070:
	.string	"S_SOUL"
.LASF1608:
	.string	"sfx_skldth"
.LASF1080:
	.string	"S_PSTR"
.LASF32:
	.string	"sk_hard"
.LASF912:
	.string	"S_CYBER_ATK1"
.LASF913:
	.string	"S_CYBER_ATK2"
.LASF914:
	.string	"S_CYBER_ATK3"
.LASF915:
	.string	"S_CYBER_ATK4"
.LASF916:
	.string	"S_CYBER_ATK5"
.LASF917:
	.string	"S_CYBER_ATK6"
.LASF1731:
	.string	"A_XScream"
.LASF1107:
	.string	"S_BFUG"
.LASF147:
	.string	"SPR_FCAN"
.LASF1493:
	.string	"line_t"
.LASF590:
	.string	"S_FATT_STND"
.LASF1027:
	.string	"S_BRAINEXPLODE1"
.LASF1028:
	.string	"S_BRAINEXPLODE2"
.LASF1029:
	.string	"S_BRAINEXPLODE3"
.LASF311:
	.string	"S_BFGUP"
.LASF152:
	.string	"SPR_YKEY"
.LASF698:
	.string	"S_TROO_RAISE1"
.LASF699:
	.string	"S_TROO_RAISE2"
.LASF700:
	.string	"S_TROO_RAISE3"
.LASF701:
	.string	"S_TROO_RAISE4"
.LASF702:
	.string	"S_TROO_RAISE5"
.LASF1111:
	.string	"S_PLAS"
.LASF993:
	.string	"S_COMMKEEN2"
.LASF994:
	.string	"S_COMMKEEN3"
.LASF995:
	.string	"S_COMMKEEN4"
.LASF996:
	.string	"S_COMMKEEN5"
.LASF377:
	.string	"S_PLAY"
.LASF943:
	.string	"S_PAIN_DIE2"
.LASF944:
	.string	"S_PAIN_DIE3"
.LASF945:
	.string	"S_PAIN_DIE4"
.LASF946:
	.string	"S_PAIN_DIE5"
.LASF947:
	.string	"S_PAIN_DIE6"
.LASF1216:
	.string	"MT_TROOP"
.LASF498:
	.string	"S_VILE_PAIN2"
.LASF626:
	.string	"S_FATT_RAISE1"
.LASF47:
	.string	"wp_plasma"
.LASF628:
	.string	"S_FATT_RAISE3"
.LASF629:
	.string	"S_FATT_RAISE4"
.LASF630:
	.string	"S_FATT_RAISE5"
.LASF631:
	.string	"S_FATT_RAISE6"
.LASF632:
	.string	"S_FATT_RAISE7"
.LASF633:
	.string	"S_FATT_RAISE8"
.LASF1373:
	.string	"MF_NOBLOCKMAP"
.LASF342:
	.string	"S_ROCKET"
.LASF1237:
	.string	"MT_HEADSHOT"
.LASF1395:
	.string	"MF_TRANSLATION"
.LASF1476:
	.string	"sidenum"
.LASF895:
	.string	"S_ARACH_PLAZ"
.LASF1134:
	.string	"S_STALAGTITE"
.LASF736:
	.string	"S_HEAD_PAIN2"
.LASF737:
	.string	"S_HEAD_PAIN3"
.LASF15:
	.string	"byte"
.LASF1777:
	.string	"A_Chase"
.LASF394:
	.string	"S_PLAY_XDIE2"
.LASF40:
	.string	"it_redskull"
.LASF1618:
	.string	"sfx_bgact"
.LASF1244:
	.string	"MT_TFOG"
.LASF445:
	.string	"S_SPOS_ATK1"
.LASF446:
	.string	"S_SPOS_ATK2"
.LASF447:
	.string	"S_SPOS_ATK3"
.LASF382:
	.string	"S_PLAY_ATK1"
.LASF383:
	.string	"S_PLAY_ATK2"
.LASF135:
	.string	"SPR_APLS"
.LASF1800:
	.string	"P_CheckMeleeRange"
.LASF70:
	.string	"finesine"
.LASF1445:
	.string	"refire"
.LASF1163:
	.string	"S_REDTORCH2"
.LASF1164:
	.string	"S_REDTORCH3"
.LASF1165:
	.string	"S_REDTORCH4"
.LASF672:
	.string	"S_TROO_RUN1"
.LASF673:
	.string	"S_TROO_RUN2"
.LASF674:
	.string	"S_TROO_RUN3"
.LASF675:
	.string	"S_TROO_RUN4"
.LASF676:
	.string	"S_TROO_RUN5"
.LASF677:
	.string	"S_TROO_RUN6"
.LASF678:
	.string	"S_TROO_RUN7"
.LASF679:
	.string	"S_TROO_RUN8"
.LASF1642:
	.string	"sfx_mandth"
.LASF126:
	.string	"SPR_CPOS"
.LASF587:
	.string	"S_FATSHOTX1"
.LASF588:
	.string	"S_FATSHOTX2"
.LASF589:
	.string	"S_FATSHOTX3"
.LASF667:
	.string	"S_CPOS_RAISE5"
.LASF668:
	.string	"S_CPOS_RAISE6"
.LASF669:
	.string	"S_CPOS_RAISE7"
.LASF42:
	.string	"wp_fist"
.LASF1355:
	.string	"missilestate"
.LASF156:
	.string	"SPR_STIM"
.LASF1514:
	.string	"raiseIn5Mins"
.LASF1376:
	.string	"MF_JUSTATTACKED"
.LASF703:
	.string	"S_SARG_STND"
.LASF928:
	.string	"S_CYBER_DIE10"
.LASF106:
	.string	"SPR_BAL1"
.LASF107:
	.string	"SPR_BAL2"
.LASF129:
	.string	"SPR_BAL7"
.LASF1411:
	.string	"info"
.LASF1612:
	.string	"sfx_bspdth"
.LASF1122:
	.string	"S_HEADSONSTICK"
.LASF1647:
	.string	"sfx_skeact"
.LASF1776:
	.string	"A_FaceTarget"
.LASF1406:
	.string	"ceilingz"
.LASF1643:
	.string	"sfx_sssit"
.LASF579:
	.string	"S_SKEL_RAISE1"
.LASF94:
	.string	"SPR_SHT2"
.LASF233:
	.string	"S_PUNCH1"
.LASF234:
	.string	"S_PUNCH2"
.LASF235:
	.string	"S_PUNCH3"
.LASF236:
	.string	"S_PUNCH4"
.LASF237:
	.string	"S_PUNCH5"
.LASF596:
	.string	"S_FATT_RUN5"
.LASF232:
	.string	"S_PUNCHUP"
.LASF849:
	.string	"S_SPID_DIE1"
.LASF600:
	.string	"S_FATT_RUN9"
.LASF851:
	.string	"S_SPID_DIE3"
.LASF852:
	.string	"S_SPID_DIE4"
.LASF93:
	.string	"SPR_SHTF"
.LASF89:
	.string	"SPR_SHTG"
.LASF371:
	.string	"S_IFOG01"
.LASF372:
	.string	"S_IFOG02"
.LASF857:
	.string	"S_SPID_DIE9"
.LASF1099:
	.string	"S_AMMO"
.LASF58:
	.string	"NUMAMMO"
.LASF1713:
	.string	"A_BrainDie"
.LASF930:
	.string	"S_PAIN_RUN1"
.LASF931:
	.string	"S_PAIN_RUN2"
.LASF932:
	.string	"S_PAIN_RUN3"
.LASF933:
	.string	"S_PAIN_RUN4"
.LASF215:
	.string	"SPR_HDB1"
.LASF216:
	.string	"SPR_HDB2"
.LASF217:
	.string	"SPR_HDB3"
.LASF218:
	.string	"SPR_HDB4"
.LASF219:
	.string	"SPR_HDB5"
.LASF220:
	.string	"SPR_HDB6"
.LASF1206:
	.string	"MT_POSSESSED"
.LASF265:
	.string	"S_DSGUN3"
.LASF266:
	.string	"S_DSGUN4"
.LASF1482:
	.string	"textureoffset"
.LASF85:
	.string	"type"
.LASF1509:
	.string	"bmaporgy"
.LASF285:
	.string	"S_MISSILE"
.LASF1113:
	.string	"S_SHOT2"
.LASF1369:
	.string	"MF_SPECIAL"
.LASF1180:
	.string	"S_HANGTLOOKDN"
.LASF1414:
	.string	"movedir"
.LASF657:
	.string	"S_CPOS_XDIE1"
.LASF1383:
	.string	"MF_FLOAT"
.LASF1534:
	.string	"gamemode"
.LASF1676:
	.string	"braintargeton"
.LASF78:
	.string	"actionf_t"
.LASF73:
	.string	"actionf_v"
.LASF176:
	.string	"SPR_MGUN"
.LASF1218:
	.string	"MT_SHADOWS"
.LASF560:
	.string	"S_SKEL_RUN10"
.LASF561:
	.string	"S_SKEL_RUN11"
.LASF562:
	.string	"S_SKEL_RUN12"
.LASF228:
	.string	"S_NULL"
.LASF1754:
	.string	"temp"
.LASF770:
	.string	"S_BOSS_DIE1"
.LASF771:
	.string	"S_BOSS_DIE2"
.LASF772:
	.string	"S_BOSS_DIE3"
.LASF773:
	.string	"S_BOSS_DIE4"
.LASF774:
	.string	"S_BOSS_DIE5"
.LASF775:
	.string	"S_BOSS_DIE6"
.LASF776:
	.string	"S_BOSS_DIE7"
.LASF940:
	.string	"S_PAIN_PAIN"
.LASF309:
	.string	"S_BFG"
.LASF1353:
	.string	"painsound"
.LASF1792:
	.string	"turnaround"
.LASF1502:
	.string	"player_t"
.LASF1466:
	.string	"special"
.LASF955:
	.string	"S_SSWV_STND2"
.LASF1691:
	.string	"P_LineAttack"
.LASF1660:
	.string	"DI_NODIR"
.LASF177:
	.string	"SPR_CSAW"
.LASF1090:
	.string	"S_PMAP"
.LASF1681:
	.string	"P_RadiusAttack"
.LASF1096:
	.string	"S_PVIS"
.LASF1717:
	.string	"A_BrainAwake"
.LASF310:
	.string	"S_BFGDOWN"
.LASF1590:
	.string	"sfx_vilsit"
.LASF1230:
	.string	"MT_BOSSBRAIN"
.LASF123:
	.string	"SPR_SKEL"
.LASF305:
	.string	"S_PLASMA1"
.LASF306:
	.string	"S_PLASMA2"
.LASF1170:
	.string	"S_GTORCHSHRT"
.LASF1577:
	.string	"sfx_telept"
.LASF1425:
	.string	"firstline"
.LASF1104:
	.string	"S_SHEL"
.LASF861:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF1611:
	.string	"sfx_spidth"
.LASF121:
	.string	"SPR_FATB"
.LASF1808:
	.string	"P_RecursiveSound"
.LASF226:
	.string	"NUMSPRITES"
.LASF127:
	.string	"SPR_SARG"
.LASF1652:
	.string	"DI_EAST"
.LASF344:
	.string	"S_BFGSHOT2"
.LASF125:
	.string	"SPR_FATT"
.LASF1598:
	.string	"sfx_skeswg"
.LASF1071:
	.string	"S_SOUL2"
.LASF1072:
	.string	"S_SOUL3"
.LASF1073:
	.string	"S_SOUL4"
.LASF1074:
	.string	"S_SOUL5"
.LASF1075:
	.string	"S_SOUL6"
.LASF831:
	.string	"S_SPID_RUN1"
.LASF832:
	.string	"S_SPID_RUN2"
.LASF833:
	.string	"S_SPID_RUN3"
.LASF834:
	.string	"S_SPID_RUN4"
.LASF835:
	.string	"S_SPID_RUN5"
.LASF836:
	.string	"S_SPID_RUN6"
.LASF837:
	.string	"S_SPID_RUN7"
.LASF838:
	.string	"S_SPID_RUN8"
.LASF67:
	.string	"float"
.LASF1038:
	.string	"S_BEXP3"
.LASF1039:
	.string	"S_BEXP4"
.LASF1556:
	.string	"sfx_rlaunc"
.LASF1127:
	.string	"S_DEADSTICK"
.LASF1454:
	.string	"fixedcolormap"
.LASF1439:
	.string	"weaponowned"
.LASF1765:
	.string	"A_CyberAttack"
.LASF1247:
	.string	"MT_EXTRABFG"
.LASF417:
	.string	"S_POSS_DIE1"
.LASF418:
	.string	"S_POSS_DIE2"
.LASF419:
	.string	"S_POSS_DIE3"
.LASF420:
	.string	"S_POSS_DIE4"
.LASF421:
	.string	"S_POSS_DIE5"
.LASF247:
	.string	"S_SGUNDOWN"
.LASF1645:
	.string	"sfx_keenpn"
.LASF96:
	.string	"SPR_CHGF"
.LASF95:
	.string	"SPR_CHGG"
.LASF1535:
	.string	"gameskill"
.LASF1712:
	.string	"easy"
.LASF640:
	.string	"S_CPOS_RUN5"
.LASF899:
	.string	"S_ARACH_PLEX3"
.LASF641:
	.string	"S_CPOS_RUN6"
.LASF901:
	.string	"S_ARACH_PLEX5"
.LASF642:
	.string	"S_CPOS_RUN7"
.LASF1416:
	.string	"target"
.LASF206:
	.string	"SPR_CEYE"
.LASF1522:
	.string	"raiseFloor"
.LASF1488:
	.string	"ST_HORIZONTAL"
.LASF948:
	.string	"S_PAIN_RAISE1"
.LASF949:
	.string	"S_PAIN_RAISE2"
.LASF950:
	.string	"S_PAIN_RAISE3"
.LASF951:
	.string	"S_PAIN_RAISE4"
.LASF952:
	.string	"S_PAIN_RAISE5"
.LASF585:
	.string	"S_FATSHOT1"
.LASF586:
	.string	"S_FATSHOT2"
.LASF1489:
	.string	"ST_VERTICAL"
.LASF163:
	.string	"SPR_SUIT"
.LASF813:
	.string	"S_SKULL_STND"
.LASF1375:
	.string	"MF_JUSTHIT"
.LASF1396:
	.string	"MF_TRANSSHIFT"
.LASF847:
	.string	"S_SPID_PAIN"
.LASF1342:
	.string	"NUMMOBJTYPES"
.LASF145:
	.string	"SPR_BAR1"
.LASF1487:
	.string	"side_t"
.LASF260:
	.string	"S_DSGUN"
.LASF1139:
	.string	"S_CANDLESTIK"
.LASF64:
	.string	"pw_allmap"
.LASF1724:
	.string	"A_BossDeath"
.LASF1195:
	.string	"NUMSTATES"
.LASF839:
	.string	"S_SPID_RUN9"
.LASF325:
	.string	"S_TBALL1"
.LASF326:
	.string	"S_TBALL2"
.LASF539:
	.string	"S_SMOKE1"
.LASF540:
	.string	"S_SMOKE2"
.LASF541:
	.string	"S_SMOKE3"
.LASF542:
	.string	"S_SMOKE4"
.LASF543:
	.string	"S_SMOKE5"
.LASF762:
	.string	"S_BOSS_RUN6"
.LASF763:
	.string	"S_BOSS_RUN7"
.LASF764:
	.string	"S_BOSS_RUN8"
.LASF128:
	.string	"SPR_HEAD"
.LASF1403:
	.string	"bprev"
.LASF189:
	.string	"SPR_POL1"
.LASF185:
	.string	"SPR_POL2"
.LASF188:
	.string	"SPR_POL3"
.LASF187:
	.string	"SPR_POL4"
.LASF186:
	.string	"SPR_POL5"
.LASF190:
	.string	"SPR_POL6"
.LASF1538:
	.string	"netgame"
.LASF1034:
	.string	"S_BAR1"
.LASF1615:
	.string	"sfx_pedth"
.LASF1574:
	.string	"sfx_itemup"
.LASF1668:
	.string	"numspechit"
.LASF1248:
	.string	"MT_MISC0"
.LASF1120:
	.string	"S_DEADTORSO"
.LASF1380:
	.string	"MF_PICKUP"
.LASF1389:
	.string	"MF_CORPSE"
.LASF262:
	.string	"S_DSGUNUP"
.LASF1637:
	.string	"sfx_boscub"
.LASF1599:
	.string	"sfx_pldeth"
.LASF1345:
	.string	"spawnstate"
.LASF1671:
	.string	"vileobj"
.LASF1516:
	.string	"blazeOpen"
.LASF1787:
	.string	"P_NewChaseDir"
.LASF671:
	.string	"S_TROO_STND2"
.LASF1191:
	.string	"S_TECH2LAMP"
.LASF1562:
	.string	"sfx_doropn"
.LASF1718:
	.string	"A_CloseShotgun2"
.LASF1234:
	.string	"MT_SPAWNFIRE"
.LASF1209:
	.string	"MT_FIRE"
.LASF1513:
	.string	"open"
.LASF1201:
	.string	"nextstate"
.LASF1537:
	.string	"gamemap"
.LASF768:
	.string	"S_BOSS_PAIN"
.LASF139:
	.string	"SPR_SSWV"
.LASF1803:
	.string	"soundblocks"
.LASF1374:
	.string	"MF_AMBUSH"
.LASF330:
	.string	"S_RBALL1"
.LASF331:
	.string	"S_RBALL2"
.LASF1572:
	.string	"sfx_pepain"
.LASF1135:
	.string	"S_TALLGRNCOL"
.LASF1419:
	.string	"lastlook"
.LASF1609:
	.string	"sfx_brsdth"
.LASF1503:
	.string	"sides"
.LASF1545:
	.string	"sfx_sgcock"
.LASF1485:
	.string	"bottomtexture"
.LASF1804:
	.string	"other"
.LASF1124:
	.string	"S_HEADONASTICK"
.LASF404:
	.string	"S_POSS_RUN1"
.LASF346:
	.string	"S_BFGLAND2"
.LASF347:
	.string	"S_BFGLAND3"
.LASF348:
	.string	"S_BFGLAND4"
.LASF349:
	.string	"S_BFGLAND5"
.LASF350:
	.string	"S_BFGLAND6"
.LASF410:
	.string	"S_POSS_RUN7"
.LASF411:
	.string	"S_POSS_RUN8"
.LASF1703:
	.string	"P_LineOpening"
.LASF393:
	.string	"S_PLAY_XDIE1"
.LASF33:
	.string	"sk_nightmare"
.LASF395:
	.string	"S_PLAY_XDIE3"
.LASF396:
	.string	"S_PLAY_XDIE4"
.LASF397:
	.string	"S_PLAY_XDIE5"
.LASF398:
	.string	"S_PLAY_XDIE6"
.LASF399:
	.string	"S_PLAY_XDIE7"
.LASF400:
	.string	"S_PLAY_XDIE8"
.LASF401:
	.string	"S_PLAY_XDIE9"
.LASF799:
	.string	"S_BOS2_DIE1"
.LASF800:
	.string	"S_BOS2_DIE2"
.LASF801:
	.string	"S_BOS2_DIE3"
.LASF802:
	.string	"S_BOS2_DIE4"
.LASF803:
	.string	"S_BOS2_DIE5"
.LASF804:
	.string	"S_BOS2_DIE6"
.LASF805:
	.string	"S_BOS2_DIE7"
.LASF1365:
	.string	"flags"
.LASF725:
	.string	"S_SARG_RAISE2"
.LASF726:
	.string	"S_SARG_RAISE3"
.LASF369:
	.string	"S_TFOG10"
.LASF727:
	.string	"S_SARG_RAISE4"
.LASF1506:
	.string	"floatok"
.LASF422:
	.string	"S_POSS_XDIE1"
.LASF423:
	.string	"S_POSS_XDIE2"
.LASF424:
	.string	"S_POSS_XDIE3"
.LASF425:
	.string	"S_POSS_XDIE4"
.LASF426:
	.string	"S_POSS_XDIE5"
.LASF427:
	.string	"S_POSS_XDIE6"
.LASF428:
	.string	"S_POSS_XDIE7"
.LASF54:
	.string	"am_clip"
.LASF430:
	.string	"S_POSS_XDIE9"
.LASF1675:
	.string	"numbraintargets"
.LASF1123:
	.string	"S_GIBS"
.LASF738:
	.string	"S_HEAD_DIE1"
.LASF739:
	.string	"S_HEAD_DIE2"
.LASF740:
	.string	"S_HEAD_DIE3"
.LASF741:
	.string	"S_HEAD_DIE4"
.LASF742:
	.string	"S_HEAD_DIE5"
.LASF743:
	.string	"S_HEAD_DIE6"
.LASF591:
	.string	"S_FATT_STND2"
.LASF1114:
	.string	"S_COLU"
.LASF241:
	.string	"S_PISTOL1"
.LASF242:
	.string	"S_PISTOL2"
.LASF243:
	.string	"S_PISTOL3"
.LASF244:
	.string	"S_PISTOL4"
.LASF580:
	.string	"S_SKEL_RAISE2"
.LASF581:
	.string	"S_SKEL_RAISE3"
.LASF582:
	.string	"S_SKEL_RAISE4"
.LASF583:
	.string	"S_SKEL_RAISE5"
.LASF584:
	.string	"S_SKEL_RAISE6"
.LASF1143:
	.string	"S_BIGTREE"
.LASF1491:
	.string	"ST_NEGATIVE"
.LASF1053:
	.string	"S_BON2C"
.LASF1054:
	.string	"S_BON2D"
.LASF359:
	.string	"S_TFOG01"
.LASF360:
	.string	"S_TFOG02"
.LASF178:
	.string	"SPR_LAUN"
.LASF1687:
	.string	"P_SpawnMobj"
.LASF415:
	.string	"S_POSS_PAIN"
.LASF750:
	.string	"S_BRBALL1"
.LASF751:
	.string	"S_BRBALL2"
.LASF1486:
	.string	"midtexture"
.LASF1212:
	.string	"MT_SMOKE"
.LASF1226:
	.string	"MT_CYBORG"
.LASF1363:
	.string	"damage"
.LASF455:
	.string	"S_SPOS_XDIE1"
.LASF456:
	.string	"S_SPOS_XDIE2"
.LASF457:
	.string	"S_SPOS_XDIE3"
.LASF458:
	.string	"S_SPOS_XDIE4"
.LASF459:
	.string	"S_SPOS_XDIE5"
.LASF460:
	.string	"S_SPOS_XDIE6"
.LASF461:
	.string	"S_SPOS_XDIE7"
.LASF462:
	.string	"S_SPOS_XDIE8"
.LASF463:
	.string	"S_SPOS_XDIE9"
.LASF1393:
	.string	"MF_SKULLFLY"
.LASF1570:
	.string	"sfx_vipain"
.LASF1398:
	.string	"mobj_s"
.LASF1458:
	.string	"mobj_t"
.LASF1797:
	.string	"try_ok"
.LASF1056:
	.string	"S_BKEY"
.LASF62:
	.string	"pw_invisibility"
.LASF143:
	.string	"SPR_ARM1"
.LASF144:
	.string	"SPR_ARM2"
.LASF1208:
	.string	"MT_VILE"
.LASF1561:
	.string	"sfx_pstop"
.LASF38:
	.string	"it_blueskull"
.LASF1470:
	.string	"soundorg"
.LASF303:
	.string	"S_PLASMADOWN"
.LASF615:
	.string	"S_FATT_PAIN2"
.LASF1646:
	.string	"sfx_keendt"
.LASF1013:
	.string	"S_BRAINEYESEE"
.LASF1492:
	.string	"slopetype_t"
.LASF550:
	.string	"S_SKEL_STND2"
.LASF903:
	.string	"S_CYBER_STND2"
.LASF1204:
	.string	"state_t"
.LASF747:
	.string	"S_HEAD_RAISE4"
.LASF973:
	.string	"S_SSWV_DIE2"
.LASF24:
	.string	"registered"
.LASF1533:
	.string	"fastparm"
.LASF1621:
	.string	"sfx_bspwlk"
.LASF429:
	.string	"S_POSS_XDIE8"
.LASF1791:
	.string	"olddir"
.LASF1103:
	.string	"S_CELP"
.LASF1145:
	.string	"S_EVILEYE"
.LASF1171:
	.string	"S_GTORCHSHRT2"
.LASF1172:
	.string	"S_GTORCHSHRT3"
.LASF1173:
	.string	"S_GTORCHSHRT4"
.LASF1429:
	.string	"viewheight"
.LASF1402:
	.string	"bnext"
.LASF1699:
	.string	"P_TryMove"
.LASF1640:
	.string	"sfx_bosdth"
.LASF604:
	.string	"S_FATT_ATK1"
.LASF137:
	.string	"SPR_CYBR"
.LASF605:
	.string	"S_FATT_ATK2"
.LASF508:
	.string	"S_VILE_DIE10"
.LASF98:
	.string	"SPR_MISF"
.LASF97:
	.string	"SPR_MISG"
.LASF110:
	.string	"SPR_MISL"
.LASF1062:
	.string	"S_BSKULL"
.LASF141:
	.string	"SPR_BBRN"
.LASF483:
	.string	"S_VILE_ATK1"
.LASF484:
	.string	"S_VILE_ATK2"
.LASF485:
	.string	"S_VILE_ATK3"
.LASF486:
	.string	"S_VILE_ATK4"
.LASF487:
	.string	"S_VILE_ATK5"
.LASF488:
	.string	"S_VILE_ATK6"
.LASF489:
	.string	"S_VILE_ATK7"
.LASF230:
	.string	"S_PUNCH"
.LASF491:
	.string	"S_VILE_ATK9"
.LASF212:
	.string	"SPR_SMBT"
.LASF1626:
	.string	"sfx_hoof"
.LASF786:
	.string	"S_BOS2_RUN1"
.LASF787:
	.string	"S_BOS2_RUN2"
.LASF788:
	.string	"S_BOS2_RUN3"
.LASF789:
	.string	"S_BOS2_RUN4"
.LASF790:
	.string	"S_BOS2_RUN5"
.LASF791:
	.string	"S_BOS2_RUN6"
.LASF792:
	.string	"S_BOS2_RUN7"
.LASF793:
	.string	"S_BOS2_RUN8"
.LASF1465:
	.string	"lightlevel"
.LASF203:
	.string	"SPR_TRE1"
.LASF204:
	.string	"SPR_TRE2"
.LASF860:
	.string	"S_BSPI_STND"
.LASF1557:
	.string	"sfx_rxplod"
.LASF1354:
	.string	"meleestate"
.LASF1440:
	.string	"ammo"
.LASF650:
	.string	"S_CPOS_DIE1"
.LASF211:
	.string	"SPR_TRED"
.LASF104:
	.string	"SPR_BLUD"
.LASF606:
	.string	"S_FATT_ATK3"
.LASF607:
	.string	"S_FATT_ATK4"
.LASF608:
	.string	"S_FATT_ATK5"
.LASF609:
	.string	"S_FATT_ATK6"
.LASF610:
	.string	"S_FATT_ATK7"
.LASF611:
	.string	"S_FATT_ATK8"
.LASF612:
	.string	"S_FATT_ATK9"
.LASF114:
	.string	"SPR_TFOG"
.LASF318:
	.string	"S_BLOOD1"
.LASF319:
	.string	"S_BLOOD2"
.LASF320:
	.string	"S_BLOOD3"
.LASF1542:
	.string	"sfx_None"
.LASF1202:
	.string	"misc1"
.LASF1203:
	.string	"misc2"
.LASF1568:
	.string	"sfx_dmpain"
.LASF18:
	.string	"angleturn"
.LASF1685:
	.string	"P_CheckPosition"
.LASF1769:
	.string	"A_BspiAttack"
.LASF1110:
	.string	"S_LAUN"
.LASF1761:
	.string	"exact"
.LASF370:
	.string	"S_IFOG"
.LASF117:
	.string	"SPR_POSS"
.LASF122:
	.string	"SPR_FBXP"
.LASF919:
	.string	"S_CYBER_DIE1"
.LASF920:
	.string	"S_CYBER_DIE2"
.LASF921:
	.string	"S_CYBER_DIE3"
.LASF922:
	.string	"S_CYBER_DIE4"
.LASF923:
	.string	"S_CYBER_DIE5"
.LASF924:
	.string	"S_CYBER_DIE6"
.LASF925:
	.string	"S_CYBER_DIE7"
.LASF797:
	.string	"S_BOS2_PAIN"
.LASF927:
	.string	"S_CYBER_DIE9"
.LASF1420:
	.string	"spawnpoint"
.LASF1197:
	.string	"sprite"
.LASF1667:
	.string	"spechit"
.LASF1275:
	.string	"MT_MISC23"
.LASF1140:
	.string	"S_CANDELABRA"
.LASF480:
	.string	"S_VILE_RUN10"
.LASF481:
	.string	"S_VILE_RUN11"
.LASF482:
	.string	"S_VILE_RUN12"
.LASF1689:
	.string	"P_DamageMobj"
.LASF1100:
	.string	"S_ROCK"
.LASF249:
	.string	"S_SGUN1"
.LASF250:
	.string	"S_SGUN2"
.LASF251:
	.string	"S_SGUN3"
.LASF252:
	.string	"S_SGUN4"
.LASF253:
	.string	"S_SGUN5"
.LASF254:
	.string	"S_SGUN6"
.LASF255:
	.string	"S_SGUN7"
.LASF256:
	.string	"S_SGUN8"
.LASF257:
	.string	"S_SGUN9"
.LASF1344:
	.string	"doomednum"
.LASF246:
	.string	"S_SGUN"
.LASF1136:
	.string	"S_SHRTGRNCOL"
.LASF1644:
	.string	"sfx_ssdth"
.LASF1634:
	.string	"sfx_flamst"
.LASF821:
	.string	"S_SKULL_PAIN"
.LASF1233:
	.string	"MT_SPAWNSHOT"
.LASF545:
	.string	"S_TRACER2"
.LASF1144:
	.string	"S_TECHPILLAR"
.LASF549:
	.string	"S_SKEL_STND"
.LASF704:
	.string	"S_SARG_STND2"
.LASF1688:
	.string	"P_SpawnPuff"
.LASF1627:
	.string	"sfx_metal"
.LASF27:
	.string	"indetermined"
.LASF450:
	.string	"S_SPOS_DIE1"
.LASF451:
	.string	"S_SPOS_DIE2"
.LASF452:
	.string	"S_SPOS_DIE3"
.LASF453:
	.string	"S_SPOS_DIE4"
.LASF454:
	.string	"S_SPOS_DIE5"
.LASF1500:
	.string	"PST_REBORN"
.LASF1594:
	.string	"sfx_sgtatk"
.LASF1179:
	.string	"S_HANGBNOBRAIN"
.LASF1751:
	.string	"A_StartFire"
.LASF1591:
	.string	"sfx_mansit"
.LASF713:
	.string	"S_SARG_ATK1"
.LASF714:
	.string	"S_SARG_ATK2"
.LASF715:
	.string	"S_SARG_ATK3"
.LASF304:
	.string	"S_PLASMAUP"
.LASF1511:
	.string	"close30ThenOpen"
.LASF1199:
	.string	"tics"
.LASF1757:
	.string	"check"
.LASF1504:
	.string	"thinkercap"
.LASF1060:
	.string	"S_YKEY"
.LASF1565:
	.string	"sfx_swtchn"
.LASF1359:
	.string	"speed"
.LASF1738:
	.string	"currentthinker"
.LASF273:
	.string	"S_DSNR1"
.LASF942:
	.string	"S_PAIN_DIE1"
.LASF1566:
	.string	"sfx_swtchx"
.LASF472:
	.string	"S_VILE_RUN2"
.LASF1632:
	.string	"sfx_itmbk"
.LASF1190:
	.string	"S_TECHLAMP4"
.LASF636:
	.string	"S_CPOS_RUN1"
.LASF637:
	.string	"S_CPOS_RUN2"
.LASF638:
	.string	"S_CPOS_RUN3"
.LASF639:
	.string	"S_CPOS_RUN4"
.LASF74:
	.string	"actionf_p1"
.LASF75:
	.string	"actionf_p2"
.LASF174:
	.string	"SPR_BPAK"
.LASF643:
	.string	"S_CPOS_RUN8"
.LASF1040:
	.string	"S_BEXP5"
.LASF1649:
	.string	"sfx_skeatk"
.LASF1518:
	.string	"vldoor_e"
.LASF87:
	.string	"mapthing_t"
.LASF405:
	.string	"S_POSS_RUN2"
.LASF1692:
	.string	"P_AimLineAttack"
.LASF406:
	.string	"S_POSS_RUN3"
.LASF407:
	.string	"S_POSS_RUN4"
.LASF724:
	.string	"S_SARG_RAISE1"
.LASF408:
	.string	"S_POSS_RUN5"
.LASF76:
	.string	"acp1"
.LASF77:
	.string	"acp2"
.LASF728:
	.string	"S_SARG_RAISE5"
.LASF729:
	.string	"S_SARG_RAISE6"
.LASF1601:
	.string	"sfx_podth1"
.LASF1602:
	.string	"sfx_podth2"
.LASF1603:
	.string	"sfx_podth3"
.LASF1308:
	.string	"MT_MISC53"
.LASF1651:
	.string	"NUMSFX"
.LASF213:
	.string	"SPR_SMGT"
.LASF1730:
	.string	"A_Pain"
.LASF1004:
	.string	"S_KEENPAIN"
.LASF1785:
	.string	"allaround"
.LASF352:
	.string	"S_BFGEXP2"
.LASF353:
	.string	"S_BFGEXP3"
.LASF354:
	.string	"S_BFGEXP4"
.LASF283:
	.string	"S_CHAINFLASH1"
.LASF284:
	.string	"S_CHAINFLASH2"
.LASF239:
	.string	"S_PISTOLDOWN"
.LASF904:
	.string	"S_CYBER_RUN1"
.LASF905:
	.string	"S_CYBER_RUN2"
.LASF906:
	.string	"S_CYBER_RUN3"
.LASF907:
	.string	"S_CYBER_RUN4"
.LASF908:
	.string	"S_CYBER_RUN5"
.LASF909:
	.string	"S_CYBER_RUN6"
.LASF910:
	.string	"S_CYBER_RUN7"
.LASF911:
	.string	"S_CYBER_RUN8"
.LASF1348:
	.string	"seesound"
.LASF1091:
	.string	"S_PMAP2"
.LASF1092:
	.string	"S_PMAP3"
.LASF1093:
	.string	"S_PMAP4"
.LASF1094:
	.string	"S_PMAP5"
.LASF1095:
	.string	"S_PMAP6"
.LASF1385:
	.string	"MF_MISSILE"
.LASF1451:
	.string	"bonuscount"
.LASF822:
	.string	"S_SKULL_PAIN2"
.LASF1352:
	.string	"painchance"
.LASF648:
	.string	"S_CPOS_PAIN"
.LASF1462:
	.string	"ceilingheight"
.LASF25:
	.string	"commercial"
.LASF953:
	.string	"S_PAIN_RAISE6"
.LASF1472:
	.string	"specialdata"
.LASF1291:
	.string	"MT_MISC36"
.LASF757:
	.string	"S_BOSS_RUN1"
.LASF758:
	.string	"S_BOSS_RUN2"
.LASF759:
	.string	"S_BOSS_RUN3"
.LASF760:
	.string	"S_BOSS_RUN4"
.LASF761:
	.string	"S_BOSS_RUN5"
.LASF279:
	.string	"S_CHAINUP"
.LASF1805:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1446:
	.string	"killcount"
.LASF898:
	.string	"S_ARACH_PLEX2"
.LASF1142:
	.string	"S_TORCHTREE"
.LASF954:
	.string	"S_SSWV_STND"
.LASF900:
	.string	"S_ARACH_PLEX4"
.LASF1378:
	.string	"MF_NOGRAVITY"
.LASF1001:
	.string	"S_COMMKEEN10"
.LASF1002:
	.string	"S_COMMKEEN11"
.LASF1003:
	.string	"S_COMMKEEN12"
.LASF918:
	.string	"S_CYBER_PAIN"
.LASF1128:
	.string	"S_LIVESTICK"
.LASF437:
	.string	"S_SPOS_RUN1"
.LASF195:
	.string	"SPR_SMIT"
.LASF14:
	.string	"boolean"
.LASF440:
	.string	"S_SPOS_RUN4"
.LASF441:
	.string	"S_SPOS_RUN5"
.LASF132:
	.string	"SPR_SKUL"
.LASF443:
	.string	"S_SPOS_RUN7"
.LASF444:
	.string	"S_SPOS_RUN8"
.LASF1101:
	.string	"S_BROK"
.LASF1346:
	.string	"spawnhealth"
.LASF1610:
	.string	"sfx_cybdth"
.LASF231:
	.string	"S_PUNCHDOWN"
.LASF897:
	.string	"S_ARACH_PLEX"
.LASF1158:
	.string	"S_GREENTORCH"
.LASF50:
	.string	"wp_supershotgun"
.LASF297:
	.string	"S_SAWDOWN"
.LASF1555:
	.string	"sfx_sawhit"
.LASF1554:
	.string	"sfx_sawful"
.LASF1196:
	.string	"statenum_t"
.LASF1784:
	.string	"P_LookForPlayers"
.LASF1236:
	.string	"MT_TROOPSHOT"
.LASF1221:
	.string	"MT_BRUISERSHOT"
.LASF1622:
	.string	"sfx_vilact"
.LASF1682:
	.string	"P_SetThingPosition"
.LASF22:
	.string	"ticcmd_t"
.LASF1341:
	.string	"MT_MISC86"
.LASF1524:
	.string	"raiseToTexture"
.LASF1494:
	.string	"ps_weapon"
.LASF1587:
	.string	"sfx_spisit"
.LASF1786:
	.string	"stop"
.LASF385:
	.string	"S_PLAY_PAIN2"
.LASF1553:
	.string	"sfx_sawidl"
.LASF780:
	.string	"S_BOSS_RAISE4"
.LASF781:
	.string	"S_BOSS_RAISE5"
.LASF1198:
	.string	"frame"
.LASF1773:
	.string	"bangle"
.LASF124:
	.string	"SPR_MANF"
.LASF635:
	.string	"S_CPOS_STND2"
.LASF1620:
	.string	"sfx_bspact"
.LASF448:
	.string	"S_SPOS_PAIN"
.LASF1725:
	.string	"junk"
.LASF1662:
	.string	"dirtype_t"
.LASF1673:
	.string	"viletryy"
.LASF44:
	.string	"wp_shotgun"
.LASF416:
	.string	"S_POSS_PAIN2"
.LASF1242:
	.string	"MT_PUFF"
.LASF288:
	.string	"S_MISSILE1"
.LASF289:
	.string	"S_MISSILE2"
.LASF290:
	.string	"S_MISSILE3"
.LASF664:
	.string	"S_CPOS_RAISE2"
.LASF665:
	.string	"S_CPOS_RAISE3"
.LASF666:
	.string	"S_CPOS_RAISE4"
.LASF1456:
	.string	"psprites"
.LASF1108:
	.string	"S_MGUN"
.LASF1220:
	.string	"MT_BRUISER"
.LASF173:
	.string	"SPR_SBOX"
.LASF1448:
	.string	"secretcount"
.LASF1343:
	.string	"mobjtype_t"
.LASF1357:
	.string	"xdeathstate"
.LASF1433:
	.string	"powers"
.LASF817:
	.string	"S_SKULL_ATK1"
.LASF818:
	.string	"S_SKULL_ATK2"
.LASF819:
	.string	"S_SKULL_ATK3"
.LASF820:
	.string	"S_SKULL_ATK4"
.LASF798:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1222:
	.string	"MT_KNIGHT"
.LASF1739:
	.string	"A_SkullAttack"
.LASF9:
	.string	"signed char"
.LASF17:
	.string	"sidemove"
.LASF1364:
	.string	"activesound"
.LASF449:
	.string	"S_SPOS_PAIN2"
.LASF1666:
	.string	"yspeed"
.LASF1625:
	.string	"sfx_punch"
.LASF613:
	.string	"S_FATT_ATK10"
.LASF210:
	.string	"SPR_TGRN"
.LASF1746:
	.string	"A_VileAttack"
.LASF1670:
	.string	"corpsehit"
.LASF1726:
	.string	"A_Explode"
.LASF1653:
	.string	"DI_NORTHEAST"
.LASF1267:
	.string	"MT_MEGA"
.LASF112:
	.string	"SPR_BFE1"
.LASF113:
	.string	"SPR_BFE2"
.LASF1531:
	.string	"raiseFloor512"
.LASF1471:
	.string	"thinglist"
.LASF1781:
	.string	"seeyou"
.LASF1301:
	.string	"MT_MISC46"
.LASF1719:
	.string	"A_LoadShotgun2"
.LASF1737:
	.string	"count"
.LASF1519:
	.string	"lowerFloor"
.LASF1229:
	.string	"MT_KEEN"
.LASF1740:
	.string	"dest"
.LASF1750:
	.string	"A_FireCrackle"
.LASF1469:
	.string	"blockbox"
.LASF1014:
	.string	"S_BRAINEYE1"
.LASF670:
	.string	"S_TROO_STND"
.LASF617:
	.string	"S_FATT_DIE2"
.LASF308:
	.string	"S_PLASMAFLASH2"
.LASF1368:
	.string	"mobjinfo"
.LASF53:
	.string	"weapontype_t"
.LASF20:
	.string	"chatchar"
.LASF361:
	.string	"S_TFOG2"
.LASF362:
	.string	"S_TFOG3"
.LASF363:
	.string	"S_TFOG4"
.LASF364:
	.string	"S_TFOG5"
.LASF365:
	.string	"S_TFOG6"
.LASF366:
	.string	"S_TFOG7"
.LASF367:
	.string	"S_TFOG8"
.LASF368:
	.string	"S_TFOG9"
.LASF783:
	.string	"S_BOSS_RAISE7"
.LASF1442:
	.string	"attackdown"
.LASF88:
	.string	"SPR_TROO"
.LASF1749:
	.string	"A_Fire"
.LASF99:
	.string	"SPR_SAWG"
.LASF1258:
	.string	"MT_MISC10"
.LASF1583:
	.string	"sfx_sgtsit"
.LASF1807:
	.string	"P_Random"
.LASF1394:
	.string	"MF_NOTDMATCH"
.LASF1526:
	.string	"raiseFloor24"
.LASF148:
	.string	"SPR_BON1"
.LASF149:
	.string	"SPR_BON2"
.LASF1370:
	.string	"MF_SOLID"
.LASF37:
	.string	"it_redcard"
.LASF1137:
	.string	"S_TALLREDCOL"
.LASF1700:
	.string	"I_Error"
.LASF1412:
	.string	"state"
.LASF1112:
	.string	"S_SHOT"
.LASF968:
	.string	"S_SSWV_ATK5"
.LASF1117:
	.string	"S_BLOODYTWITCH2"
.LASF1118:
	.string	"S_BLOODYTWITCH3"
.LASF1119:
	.string	"S_BLOODYTWITCH4"
.LASF858:
	.string	"S_SPID_DIE10"
.LASF859:
	.string	"S_SPID_DIE11"
.LASF1434:
	.string	"cards"
.LASF205:
	.string	"SPR_ELEC"
.LASF1006:
	.string	"S_BRAIN"
.LASF1693:
	.string	"P_SetMobjState"
.LASF1224:
	.string	"MT_SPIDER"
.LASF1089:
	.string	"S_SUIT"
.LASF103:
	.string	"SPR_BFGF"
.LASF102:
	.string	"SPR_BFGG"
.LASF929:
	.string	"S_PAIN_STND"
.LASF1585:
	.string	"sfx_brssit"
.LASF345:
	.string	"S_BFGLAND"
.LASF1035:
	.string	"S_BAR2"
.LASF1438:
	.string	"pendingweapon"
.LASF82:
	.string	"function"
.LASF1628:
	.string	"sfx_chgun"
.LASF55:
	.string	"am_shell"
.LASF1539:
	.string	"gametic"
.LASF1410:
	.string	"validcount"
.LASF1679:
	.string	"P_TeleportMove"
.LASF1657:
	.string	"DI_SOUTHWEST"
.LASF1449:
	.string	"message"
.LASF1747:
	.string	"fire"
.LASF625:
	.string	"S_FATT_DIE10"
.LASF41:
	.string	"NUMCARDS"
.LASF1162:
	.string	"S_REDTORCH"
.LASF1806:
	.string	"G_ExitLevel"
.LASF1240:
	.string	"MT_BFG"
.LASF409:
	.string	"S_POSS_RUN6"
.LASF1596:
	.string	"sfx_vilatk"
.LASF119:
	.string	"SPR_VILE"
.LASF1512:
	.string	"close"
.LASF1631:
	.string	"sfx_bdcls"
.LASF1721:
	.string	"A_BabyMetal"
.LASF1243:
	.string	"MT_BLOOD"
.LASF238:
	.string	"S_PISTOL"
.LASF1683:
	.string	"P_UnsetThingPosition"
.LASF13:
	.string	"true"
.LASF31:
	.string	"sk_medium"
.LASF888:
	.string	"S_BSPI_RAISE1"
.LASF889:
	.string	"S_BSPI_RAISE2"
.LASF890:
	.string	"S_BSPI_RAISE3"
.LASF891:
	.string	"S_BSPI_RAISE4"
.LASF892:
	.string	"S_BSPI_RAISE5"
.LASF893:
	.string	"S_BSPI_RAISE6"
.LASF894:
	.string	"S_BSPI_RAISE7"
.LASF1407:
	.string	"momx"
.LASF1386:
	.string	"MF_DROPPED"
.LASF1408:
	.string	"momy"
.LASF4:
	.string	"long int"
.LASF977:
	.string	"S_SSWV_XDIE1"
.LASF978:
	.string	"S_SSWV_XDIE2"
.LASF979:
	.string	"S_SSWV_XDIE3"
.LASF980:
	.string	"S_SSWV_XDIE4"
.LASF981:
	.string	"S_SSWV_XDIE5"
.LASF982:
	.string	"S_SSWV_XDIE6"
.LASF983:
	.string	"S_SSWV_XDIE7"
.LASF984:
	.string	"S_SSWV_XDIE8"
.LASF985:
	.string	"S_SSWV_XDIE9"
.LASF275:
	.string	"S_DSGUNFLASH1"
.LASF276:
	.string	"S_DSGUNFLASH2"
.LASF1274:
	.string	"MT_MISC22"
.LASF1457:
	.string	"didsecret"
.LASF533:
	.string	"S_FIRE25"
.LASF627:
	.string	"S_FATT_RAISE2"
.LASF1310:
	.string	"MT_MISC55"
.LASF1430:
	.string	"deltaviewheight"
.LASF39:
	.string	"it_yellowskull"
.LASF1065:
	.string	"S_RSKULL2"
.LASF1421:
	.string	"tracer"
.LASF840:
	.string	"S_SPID_RUN10"
.LASF841:
	.string	"S_SPID_RUN11"
.LASF842:
	.string	"S_SPID_RUN12"
.LASF1658:
	.string	"DI_SOUTH"
.LASF1771:
	.string	"A_CPosRefire"
.LASF1716:
	.string	"A_BrainPain"
.LASF1704:
	.string	"rcsid"
.LASF1575:
	.string	"sfx_wpnup"
.LASF1532:
	.string	"floor_e"
.LASF1366:
	.string	"raisestate"
.LASF1752:
	.string	"A_VileStart"
.LASF291:
	.string	"S_MISSILEFLASH1"
.LASF292:
	.string	"S_MISSILEFLASH2"
.LASF293:
	.string	"S_MISSILEFLASH3"
.LASF294:
	.string	"S_MISSILEFLASH4"
.LASF154:
	.string	"SPR_RSKU"
.LASF1744:
	.string	"A_FatAttack1"
.LASF1595:
	.string	"sfx_skepch"
.LASF1548:
	.string	"sfx_dbcls"
.LASF1742:
	.string	"A_FatAttack3"
.LASF79:
	.string	"think_t"
.LASF1780:
	.string	"nomissile"
.LASF16:
	.string	"forwardmove"
.LASF652:
	.string	"S_CPOS_DIE3"
.LASF653:
	.string	"S_CPOS_DIE4"
.LASF1387:
	.string	"MF_SHADOW"
.LASF654:
	.string	"S_CPOS_DIE5"
.LASF655:
	.string	"S_CPOS_DIE6"
.LASF656:
	.string	"S_CPOS_DIE7"
.LASF1741:
	.string	"dist"
.LASF1097:
	.string	"S_PVIS2"
.LASF1762:
	.string	"slope"
.LASF1235:
	.string	"MT_BARREL"
.LASF829:
	.string	"S_SPID_STND"
.LASF1701:
	.string	"P_CheckSight"
.LASF601:
	.string	"S_FATT_RUN10"
.LASF602:
	.string	"S_FATT_RUN11"
.LASF603:
	.string	"S_FATT_RUN12"
.LASF1227:
	.string	"MT_PAIN"
.LASF1155:
	.string	"S_BLUETORCH2"
.LASF1367:
	.string	"mobjinfo_t"
.LASF1156:
	.string	"S_BLUETORCH3"
.LASF1578:
	.string	"sfx_posit1"
.LASF1157:
	.string	"S_BLUETORCH4"
.LASF214:
	.string	"SPR_SMRT"
.LASF1702:
	.string	"P_AproxDistance"
.LASF316:
	.string	"S_BFGFLASH1"
.LASF317:
	.string	"S_BFGFLASH2"
.LASF850:
	.string	"S_SPID_DIE2"
.LASF131:
	.string	"SPR_BOS2"
.LASF853:
	.string	"S_SPID_DIE5"
.LASF854:
	.string	"S_SPID_DIE6"
.LASF1638:
	.string	"sfx_bossit"
.LASF855:
	.string	"S_SPID_DIE7"
.LASF856:
	.string	"S_SPID_DIE8"
.LASF1714:
	.string	"A_BrainExplode"
.LASF1146:
	.string	"S_EVILEYE2"
.LASF1147:
	.string	"S_EVILEYE3"
.LASF1148:
	.string	"S_EVILEYE4"
.LASF321:
	.string	"S_PUFF1"
.LASF322:
	.string	"S_PUFF2"
.LASF323:
	.string	"S_PUFF3"
.LASF142:
	.string	"SPR_BOSF"
.LASF1474:
	.string	"lines"
.LASF1690:
	.string	"P_SpawnMissile"
.LASF130:
	.string	"SPR_BOSS"
.LASF1239:
	.string	"MT_PLASMA"
.LASF1650:
	.string	"sfx_radio"
.LASF875:
	.string	"S_BSPI_ATK1"
.LASF876:
	.string	"S_BSPI_ATK2"
.LASF877:
	.string	"S_BSPI_ATK3"
.LASF878:
	.string	"S_BSPI_ATK4"
.LASF1057:
	.string	"S_BKEY2"
.LASF51:
	.string	"NUMWEAPONS"
.LASF1707:
	.string	"A_SpawnFly"
.LASF862:
	.string	"S_BSPI_SIGHT"
.LASF1567:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF864:
	.string	"S_BSPI_RUN2"
.LASF1008:
	.string	"S_BRAIN_DIE1"
.LASF1009:
	.string	"S_BRAIN_DIE2"
.LASF1010:
	.string	"S_BRAIN_DIE3"
.LASF1011:
	.string	"S_BRAIN_DIE4"
.LASF1674:
	.string	"braintargets"
.LASF343:
	.string	"S_BFGSHOT"
.LASF1149:
	.string	"S_FLOATSKULL"
.LASF499:
	.string	"S_VILE_DIE1"
.LASF500:
	.string	"S_VILE_DIE2"
.LASF501:
	.string	"S_VILE_DIE3"
.LASF502:
	.string	"S_VILE_DIE4"
.LASF503:
	.string	"S_VILE_DIE5"
.LASF504:
	.string	"S_VILE_DIE6"
.LASF505:
	.string	"S_VILE_DIE7"
.LASF506:
	.string	"S_VILE_DIE8"
.LASF507:
	.string	"S_VILE_DIE9"
.LASF1450:
	.string	"damagecount"
.LASF1371:
	.string	"MF_SHOOTABLE"
.LASF183:
	.string	"SPR_SMT2"
.LASF1059:
	.string	"S_RKEY2"
.LASF1030:
	.string	"S_ARM1"
.LASF1032:
	.string	"S_ARM2"
.LASF1125:
	.string	"S_HEADCANDLES"
.LASF161:
	.string	"SPR_PINS"
.LASF755:
	.string	"S_BOSS_STND"
.LASF1619:
	.string	"sfx_dmact"
.LASF1770:
	.string	"A_SpidRefire"
.LASF1772:
	.string	"A_CPosAttack"
.LASF735:
	.string	"S_HEAD_PAIN"
.LASF36:
	.string	"it_yellowcard"
.LASF1795:
	.string	"tryx"
.LASF1796:
	.string	"tryy"
.LASF1669:
	.string	"TRACEANGLE"
.LASF1211:
	.string	"MT_TRACER"
.LASF616:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF618:
	.string	"S_FATT_DIE3"
.LASF619:
	.string	"S_FATT_DIE4"
.LASF620:
	.string	"S_FATT_DIE5"
.LASF621:
	.string	"S_FATT_DIE6"
.LASF622:
	.string	"S_FATT_DIE7"
.LASF623:
	.string	"S_FATT_DIE8"
.LASF624:
	.string	"S_FATT_DIE9"
.LASF691:
	.string	"S_TROO_XDIE2"
.LASF692:
	.string	"S_TROO_XDIE3"
.LASF693:
	.string	"S_TROO_XDIE4"
.LASF694:
	.string	"S_TROO_XDIE5"
.LASF695:
	.string	"S_TROO_XDIE6"
.LASF696:
	.string	"S_TROO_XDIE7"
.LASF697:
	.string	"S_TROO_XDIE8"
.LASF166:
	.string	"SPR_CLIP"
.LASF1138:
	.string	"S_SHRTREDCOL"
.LASF1763:
	.string	"A_SkelMissile"
.LASF1181:
	.string	"S_HANGTSKULL"
.LASF1783:
	.string	"PIT_VileCheck"
.LASF1540:
	.string	"players"
.LASF1684:
	.string	"P_BlockThingsIterator"
.LASF1520:
	.string	"lowerFloorToLowest"
.LASF1728:
	.string	"A_Fall"
.LASF66:
	.string	"NUMPOWERS"
.LASF1678:
	.string	"A_ReFire"
.LASF966:
	.string	"S_SSWV_ATK3"
.LASF967:
	.string	"S_SSWV_ATK4"
.LASF272:
	.string	"S_DSGUN10"
.LASF1607:
	.string	"sfx_cacdth"
.LASF61:
	.string	"pw_strength"
.LASF470:
	.string	"S_VILE_STND2"
.LASF200:
	.string	"SPR_CAND"
.LASF1564:
	.string	"sfx_stnmov"
.LASF1217:
	.string	"MT_SERGEANT"
.LASF1559:
	.string	"sfx_firxpl"
.LASF30:
	.string	"sk_easy"
.LASF1068:
	.string	"S_STIM"
.LASF56:
	.string	"am_cell"
.LASF35:
	.string	"it_bluecard"
.LASF1405:
	.string	"floorz"
.LASF731:
	.string	"S_HEAD_RUN1"
.LASF1661:
	.string	"NUMDIRS"
.LASF386:
	.string	"S_PLAY_DIE1"
.LASF387:
	.string	"S_PLAY_DIE2"
.LASF388:
	.string	"S_PLAY_DIE3"
.LASF389:
	.string	"S_PLAY_DIE4"
.LASF390:
	.string	"S_PLAY_DIE5"
.LASF391:
	.string	"S_PLAY_DIE6"
.LASF392:
	.string	"S_PLAY_DIE7"
.LASF402:
	.string	"S_POSS_STND"
.LASF358:
	.string	"S_TFOG"
.LASF1295:
	.string	"MT_MISC40"
.LASF1296:
	.string	"MT_MISC41"
.LASF1422:
	.string	"subsector_s"
.LASF718:
	.string	"S_SARG_DIE1"
.LASF719:
	.string	"S_SARG_DIE2"
.LASF720:
	.string	"S_SARG_DIE3"
.LASF721:
	.string	"S_SARG_DIE4"
.LASF1019:
	.string	"S_SPAWNFIRE1"
.LASF1020:
	.string	"S_SPAWNFIRE2"
.LASF1021:
	.string	"S_SPAWNFIRE3"
.LASF1022:
	.string	"S_SPAWNFIRE4"
.LASF1023:
	.string	"S_SPAWNFIRE5"
.LASF1024:
	.string	"S_SPAWNFIRE6"
.LASF1025:
	.string	"S_SPAWNFIRE7"
.LASF1026:
	.string	"S_SPAWNFIRE8"
.LASF690:
	.string	"S_TROO_XDIE1"
.LASF19:
	.string	"consistancy"
.LASF1665:
	.string	"xspeed"
.LASF1423:
	.string	"sector"
.LASF1183:
	.string	"S_HANGTNOBRAIN"
.LASF338:
	.string	"S_PLASEXP2"
.LASF339:
	.string	"S_PLASEXP3"
.LASF340:
	.string	"S_PLASEXP4"
.LASF341:
	.string	"S_PLASEXP5"
.LASF48:
	.string	"wp_bfg"
.LASF1167:
	.string	"S_BTORCHSHRT2"
.LASF1168:
	.string	"S_BTORCHSHRT3"
.LASF1169:
	.string	"S_BTORCHSHRT4"
.LASF1505:
	.string	"openrange"
.LASF1614:
	.string	"sfx_kntdth"
.LASF471:
	.string	"S_VILE_RUN1"
.LASF261:
	.string	"S_DSGUNDOWN"
.LASF473:
	.string	"S_VILE_RUN3"
.LASF474:
	.string	"S_VILE_RUN4"
.LASF475:
	.string	"S_VILE_RUN5"
.LASF476:
	.string	"S_VILE_RUN6"
.LASF477:
	.string	"S_VILE_RUN7"
.LASF478:
	.string	"S_VILE_RUN8"
.LASF479:
	.string	"S_VILE_RUN9"
.LASF722:
	.string	"S_SARG_DIE5"
.LASF723:
	.string	"S_SARG_DIE6"
.LASF1710:
	.string	"A_SpawnSound"
.LASF1606:
	.string	"sfx_sgtdth"
.LASF1399:
	.string	"thinker"
.LASF1636:
	.string	"sfx_bospit"
.LASF563:
	.string	"S_SKEL_FIST1"
.LASF564:
	.string	"S_SKEL_FIST2"
.LASF565:
	.string	"S_SKEL_FIST3"
.LASF566:
	.string	"S_SKEL_FIST4"
.LASF302:
	.string	"S_PLASMA"
.LASF1081:
	.string	"S_PINS"
.LASF1571:
	.string	"sfx_mnpain"
.LASF1758:
	.string	"A_SkelFist"
.LASF1154:
	.string	"S_BLUETORCH"
.LASF592:
	.string	"S_FATT_RUN1"
.LASF593:
	.string	"S_FATT_RUN2"
.LASF594:
	.string	"S_FATT_RUN3"
.LASF595:
	.string	"S_FATT_RUN4"
.LASF63:
	.string	"pw_ironfeet"
.LASF597:
	.string	"S_FATT_RUN6"
.LASF598:
	.string	"S_FATT_RUN7"
.LASF599:
	.string	"S_FATT_RUN8"
.LASF1130:
	.string	"S_MEAT2"
.LASF1131:
	.string	"S_MEAT3"
.LASF1132:
	.string	"S_MEAT4"
.LASF1133:
	.string	"S_MEAT5"
.LASF1592:
	.string	"sfx_pesit"
.LASF245:
	.string	"S_PISTOLFLASH"
.LASF1461:
	.string	"floorheight"
.LASF465:
	.string	"S_SPOS_RAISE2"
.LASF466:
	.string	"S_SPOS_RAISE3"
.LASF467:
	.string	"S_SPOS_RAISE4"
.LASF468:
	.string	"S_SPOS_RAISE5"
.LASF157:
	.string	"SPR_MEDI"
.LASF159:
	.string	"SPR_PINV"
.LASF1581:
	.string	"sfx_bgsit1"
.LASF1582:
	.string	"sfx_bgsit2"
.LASF1616:
	.string	"sfx_skedth"
.LASF1007:
	.string	"S_BRAIN_PAIN"
.LASF278:
	.string	"S_CHAINDOWN"
.LASF1706:
	.string	"A_PlayerScream"
.LASF1382:
	.string	"MF_SLIDE"
.LASF497:
	.string	"S_VILE_PAIN"
.LASF544:
	.string	"S_TRACER"
.LASF1723:
	.string	"A_Hoof"
.LASF1793:
	.string	"P_TryWalk"
.LASF964:
	.string	"S_SSWV_ATK1"
.LASF965:
	.string	"S_SSWV_ATK2"
.LASF494:
	.string	"S_VILE_HEAL1"
.LASF495:
	.string	"S_VILE_HEAL2"
.LASF496:
	.string	"S_VILE_HEAL3"
.LASF969:
	.string	"S_SSWV_ATK6"
.LASF1415:
	.string	"movecount"
.LASF151:
	.string	"SPR_RKEY"
.LASF1588:
	.string	"sfx_bspsit"
.LASF1115:
	.string	"S_STALAG"
.LASF1569:
	.string	"sfx_popain"
.LASF830:
	.string	"S_SPID_STND2"
.LASF1732:
	.string	"A_Scream"
.LASF72:
	.string	"angle_t"
.LASF1654:
	.string	"DI_NORTH"
.LASF1464:
	.string	"ceilingpic"
.LASF1116:
	.string	"S_BLOODYTWITCH"
.LASF1185:
	.string	"S_SMALLPOOL"
.LASF1497:
	.string	"pspdef_t"
.LASF1311:
	.string	"MT_MISC56"
.LASF614:
	.string	"S_FATT_PAIN"
.LASF1528:
	.string	"raiseFloorCrush"
.LASF378:
	.string	"S_PLAY_RUN1"
.LASF379:
	.string	"S_PLAY_RUN2"
.LASF380:
	.string	"S_PLAY_RUN3"
.LASF381:
	.string	"S_PLAY_RUN4"
.LASF1106:
	.string	"S_BPAK"
.LASF68:
	.string	"double"
.LASF146:
	.string	"SPR_BEXP"
.LASF1426:
	.string	"player_s"
.LASF1063:
	.string	"S_BSKULL2"
.LASF1377:
	.string	"MF_SPAWNCEILING"
.LASF105:
	.string	"SPR_PUFF"
.LASF992:
	.string	"S_COMMKEEN"
.LASF1560:
	.string	"sfx_pstart"
.LASF1443:
	.string	"usedown"
.LASF1755:
	.string	"thing"
.LASF1677:
	.string	"P_RemoveMobj"
.LASF784:
	.string	"S_BOS2_STND"
.LASF111:
	.string	"SPR_BFS1"
.LASF1015:
	.string	"S_SPAWN1"
.LASF1016:
	.string	"S_SPAWN2"
.LASF1017:
	.string	"S_SPAWN3"
.LASF1018:
	.string	"S_SPAWN4"
.LASF1188:
	.string	"S_TECHLAMP2"
.LASF1189:
	.string	"S_TECHLAMP3"
.LASF49:
	.string	"wp_chainsaw"
.LASF1225:
	.string	"MT_BABY"
.LASF1441:
	.string	"maxammo"
.LASF1633:
	.string	"sfx_flame"
.LASF1129:
	.string	"S_LIVESTICK2"
.LASF1174:
	.string	"S_RTORCHSHRT"
.LASF1271:
	.string	"MT_MISC19"
.LASF133:
	.string	"SPR_SPID"
.LASF730:
	.string	"S_HEAD_STND"
.LASF705:
	.string	"S_SARG_RUN1"
.LASF706:
	.string	"S_SARG_RUN2"
.LASF708:
	.string	"S_SARG_RUN4"
.LASF709:
	.string	"S_SARG_RUN5"
.LASF710:
	.string	"S_SARG_RUN6"
.LASF711:
	.string	"S_SARG_RUN7"
.LASF712:
	.string	"S_SARG_RUN8"
.LASF1249:
	.string	"MT_MISC1"
.LASF1250:
	.string	"MT_MISC2"
.LASF1251:
	.string	"MT_MISC3"
.LASF1252:
	.string	"MT_MISC4"
.LASF1253:
	.string	"MT_MISC5"
.LASF1254:
	.string	"MT_MISC6"
.LASF1255:
	.string	"MT_MISC7"
.LASF1256:
	.string	"MT_MISC8"
.LASF1257:
	.string	"MT_MISC9"
.LASF295:
	.string	"S_SAW"
.LASF1756:
	.string	"maxdist"
.LASF162:
	.string	"SPR_MEGA"
.LASF384:
	.string	"S_PLAY_PAIN"
.LASF1597:
	.string	"sfx_claw"
.LASF336:
	.string	"S_PLASBALL2"
.LASF1495:
	.string	"ps_flash"
.LASF1427:
	.string	"playerstate"
.LASF140:
	.string	"SPR_KEEN"
.LASF970:
	.string	"S_SSWV_PAIN"
.LASF1351:
	.string	"painstate"
.LASF1005:
	.string	"S_KEENPAIN2"
.LASF65:
	.string	"pw_infrared"
.LASF492:
	.string	"S_VILE_ATK10"
.LASF493:
	.string	"S_VILE_ATK11"
.LASF971:
	.string	"S_SSWV_PAIN2"
.LASF1335:
	.string	"MT_MISC80"
.LASF1358:
	.string	"deathsound"
.LASF1045:
	.string	"S_BON1A"
.LASF1046:
	.string	"S_BON1B"
.LASF1047:
	.string	"S_BON1C"
.LASF1048:
	.string	"S_BON1D"
.LASF1049:
	.string	"S_BON1E"
.LASF1778:
	.string	"delta"
.LASF1481:
	.string	"sector_t"
.LASF1659:
	.string	"DI_SOUTHEAST"
.LASF160:
	.string	"SPR_PSTR"
.LASF1273:
	.string	"MT_MISC21"
.LASF1510:
	.string	"normal"
.LASF716:
	.string	"S_SARG_PAIN"
.LASF1268:
	.string	"MT_CLIP"
.LASF175:
	.string	"SPR_BFUG"
.LASF1323:
	.string	"MT_MISC68"
.LASF1041:
	.string	"S_BBAR1"
.LASF1042:
	.string	"S_BBAR2"
.LASF1043:
	.string	"S_BBAR3"
.LASF229:
	.string	"S_LIGHTDONE"
.LASF880:
	.string	"S_BSPI_PAIN2"
.LASF1435:
	.string	"backpack"
.LASF680:
	.string	"S_TROO_ATK1"
.LASF681:
	.string	"S_TROO_ATK2"
.LASF682:
	.string	"S_TROO_ATK3"
.LASF824:
	.string	"S_SKULL_DIE2"
.LASF825:
	.string	"S_SKULL_DIE3"
.LASF826:
	.string	"S_SKULL_DIE4"
.LASF827:
	.string	"S_SKULL_DIE5"
.LASF828:
	.string	"S_SKULL_DIE6"
.LASF179:
	.string	"SPR_PLAS"
.LASF1663:
	.string	"opposite"
.LASF1051:
	.string	"S_BON2A"
.LASF1052:
	.string	"S_BON2B"
.LASF92:
	.string	"SPR_PISF"
.LASF91:
	.string	"SPR_PISG"
.LASF1055:
	.string	"S_BON2E"
.LASF1278:
	.string	"MT_CHAINGUN"
.LASF1523:
	.string	"raiseFloorToNearest"
.LASF327:
	.string	"S_TBALLX1"
.LASF328:
	.string	"S_TBALLX2"
.LASF329:
	.string	"S_TBALLX3"
.LASF52:
	.string	"wp_nochange"
.LASF1697:
	.string	"R_PointToAngle2"
.LASF1215:
	.string	"MT_CHAINGUY"
.LASF1727:
	.string	"thingy"
.LASF1460:
	.string	"degenmobj_t"
.LASF1579:
	.string	"sfx_posit2"
.LASF1580:
	.string	"sfx_posit3"
.LASF1695:
	.string	"EV_DoDoor"
.LASF823:
	.string	"S_SKULL_DIE1"
.LASF1499:
	.string	"PST_DEAD"
.LASF1186:
	.string	"S_BRAINSTEM"
.LASF991:
	.string	"S_KEENSTND"
.LASF116:
	.string	"SPR_PLAY"
.LASF1381:
	.string	"MF_NOCLIP"
.LASF1437:
	.string	"readyweapon"
.LASF1584:
	.string	"sfx_cacsit"
.LASF1593:
	.string	"sfx_sklatk"
.LASF11:
	.string	"long long unsigned int"
.LASF1715:
	.string	"A_BrainScream"
.LASF1126:
	.string	"S_HEADCANDLES2"
.LASF1245:
	.string	"MT_IFOG"
.LASF1753:
	.string	"A_VileChase"
.LASF207:
	.string	"SPR_FSKU"
.LASF1639:
	.string	"sfx_bospn"
.LASF442:
	.string	"S_SPOS_RUN6"
.LASF298:
	.string	"S_SAWUP"
.LASF1031:
	.string	"S_ARM1A"
.LASF634:
	.string	"S_CPOS_STND"
.LASF1286:
	.string	"MT_MISC31"
.LASF1409:
	.string	"momz"
.LASF1105:
	.string	"S_SBOX"
.LASF1467:
	.string	"soundtraversed"
.LASF1289:
	.string	"MT_MISC34"
.LASF1477:
	.string	"bbox"
.LASF337:
	.string	"S_PLASEXP"
.LASF1292:
	.string	"MT_MISC37"
.LASF1573:
	.string	"sfx_slop"
.LASF1517:
	.string	"blazeClose"
.LASF1121:
	.string	"S_DEADBOTTOM"
.LASF1794:
	.string	"P_Move"
.LASF1630:
	.string	"sfx_bdopn"
.LASF1178:
	.string	"S_HANGNOGUTS"
.LASF1748:
	.string	"A_VileTarget"
.LASF1350:
	.string	"attacksound"
.LASF1082:
	.string	"S_PINS2"
.LASF1083:
	.string	"S_PINS3"
.LASF1084:
	.string	"S_PINS4"
.LASF936:
	.string	"S_PAIN_ATK1"
.LASF937:
	.string	"S_PAIN_ATK2"
.LASF938:
	.string	"S_PAIN_ATK3"
.LASF939:
	.string	"S_PAIN_ATK4"
.LASF1759:
	.string	"A_SkelWhoosh"
.LASF248:
	.string	"S_SGUNUP"
.LASF1733:
	.string	"A_PainDie"
.LASF1379:
	.string	"MF_DROPOFF"
.LASF1767:
	.string	"A_SargAttack"
.LASF1672:
	.string	"viletryx"
.LASF1479:
	.string	"frontsector"
.LASF201:
	.string	"SPR_CBRA"
.LASF1356:
	.string	"deathstate"
.LASF1033:
	.string	"S_ARM2A"
.LASF902:
	.string	"S_CYBER_STND"
.LASF1061:
	.string	"S_YKEY2"
.LASF1789:
	.string	"deltay"
.LASF511:
	.string	"S_FIRE3"
.LASF1349:
	.string	"reactiontime"
.LASF516:
	.string	"S_FIRE8"
.LASF756:
	.string	"S_BOSS_STND2"
.LASF1623:
	.string	"sfx_noway"
.LASF651:
	.string	"S_CPOS_DIE2"
.LASF1401:
	.string	"sprev"
.LASF299:
	.string	"S_SAW1"
.LASF300:
	.string	"S_SAW2"
.LASF301:
	.string	"S_SAW3"
.LASF1044:
	.string	"S_BON1"
.LASF1050:
	.string	"S_BON2"
.LASF1418:
	.string	"player"
.LASF296:
	.string	"S_SAWB"
.LASF684:
	.string	"S_TROO_PAIN2"
.LASF1231:
	.string	"MT_BOSSSPIT"
.LASF509:
	.string	"S_FIRE1"
.LASF510:
	.string	"S_FIRE2"
.LASF69:
	.string	"fixed_t"
.LASF512:
	.string	"S_FIRE4"
.LASF513:
	.string	"S_FIRE5"
.LASF514:
	.string	"S_FIRE6"
.LASF515:
	.string	"S_FIRE7"
.LASF169:
	.string	"SPR_BROK"
.LASF517:
	.string	"S_FIRE9"
.LASF1299:
	.string	"MT_MISC44"
.LASF1300:
	.string	"MT_MISC45"
.LASF1102:
	.string	"S_CELL"
.LASF1696:
	.string	"P_MobjThinker"
.LASF1302:
	.string	"MT_MISC47"
.LASF167:
	.string	"SPR_AMMO"
.LASF1303:
	.string	"MT_MISC48"
.LASF1304:
	.string	"MT_MISC49"
.LASF815:
	.string	"S_SKULL_RUN1"
.LASF816:
	.string	"S_SKULL_RUN2"
.LASF1182:
	.string	"S_HANGTLOOKUP"
.LASF1372:
	.string	"MF_NOSECTOR"
.LASF277:
	.string	"S_CHAIN"
.LASF307:
	.string	"S_PLASMAFLASH1"
.LASF263:
	.string	"S_DSGUN1"
.LASF264:
	.string	"S_DSGUN2"
.LASF158:
	.string	"SPR_SOUL"
.LASF118:
	.string	"SPR_SPOS"
.LASF267:
	.string	"S_DSGUN5"
.LASF268:
	.string	"S_DSGUN6"
.LASF269:
	.string	"S_DSGUN7"
.LASF270:
	.string	"S_DSGUN8"
.LASF271:
	.string	"S_DSGUN9"
.LASF435:
	.string	"S_SPOS_STND"
.LASF138:
	.string	"SPR_PAIN"
.LASF663:
	.string	"S_CPOS_RAISE1"
.LASF1436:
	.string	"frags"
.LASF1613:
	.string	"sfx_vildth"
.LASF1431:
	.string	"armorpoints"
.LASF21:
	.string	"buttons"
.LASF1736:
	.string	"prestep"
.LASF312:
	.string	"S_BFG1"
.LASF313:
	.string	"S_BFG2"
.LASF314:
	.string	"S_BFG3"
.LASF315:
	.string	"S_BFG4"
.LASF1802:
	.string	"emmiter"
.LASF1760:
	.string	"A_Tracer"
.LASF1745:
	.string	"A_FatRaise"
.LASF227:
	.string	"spritenum_t"
.LASF274:
	.string	"S_DSNR2"
.LASF814:
	.string	"S_SKULL_STND2"
.LASF1077:
	.string	"S_PINV2"
.LASF1078:
	.string	"S_PINV3"
.LASF707:
	.string	"S_SARG_RUN3"
.LASF1192:
	.string	"S_TECH2LAMP2"
.LASF1193:
	.string	"S_TECH2LAMP3"
.LASF1194:
	.string	"S_TECH2LAMP4"
.LASF71:
	.string	"finecosine"
.LASF1475:
	.string	"line_s"
.LASF5:
	.string	"long long int"
.LASF90:
	.string	"SPR_PUNG"
.LASF658:
	.string	"S_CPOS_XDIE2"
.LASF659:
	.string	"S_CPOS_XDIE3"
.LASF660:
	.string	"S_CPOS_XDIE4"
.LASF661:
	.string	"S_CPOS_XDIE5"
.LASF662:
	.string	"S_CPOS_XDIE6"
.LASF843:
	.string	"S_SPID_ATK1"
.LASF844:
	.string	"S_SPID_ATK2"
.LASF845:
	.string	"S_SPID_ATK3"
.LASF846:
	.string	"S_SPID_ATK4"
.LASF567:
	.string	"S_SKEL_MISS1"
.LASF568:
	.string	"S_SKEL_MISS2"
.LASF569:
	.string	"S_SKEL_MISS3"
.LASF570:
	.string	"S_SKEL_MISS4"
.LASF324:
	.string	"S_PUFF4"
.LASF1064:
	.string	"S_RSKULL"
.LASF896:
	.string	"S_ARACH_PLAZ2"
.LASF1305:
	.string	"MT_MISC50"
.LASF744:
	.string	"S_HEAD_RAISE1"
.LASF1340:
	.string	"MT_MISC85"
.LASF745:
	.string	"S_HEAD_RAISE2"
.LASF746:
	.string	"S_HEAD_RAISE3"
.LASF1444:
	.string	"cheats"
.LASF153:
	.string	"SPR_BSKU"
.LASF748:
	.string	"S_HEAD_RAISE5"
.LASF749:
	.string	"S_HEAD_RAISE6"
.LASF1508:
	.string	"bmaporgx"
.LASF1521:
	.string	"turboLower"
.LASF1283:
	.string	"MT_SUPERSHOTGUN"
.LASF1655:
	.string	"DI_NORTHWEST"
.LASF164:
	.string	"SPR_PMAP"
.LASF1012:
	.string	"S_BRAINEYE"
.LASF1507:
	.string	"tmfloorz"
.LASF165:
	.string	"SPR_PVIS"
.LASF1664:
	.string	"diags"
.LASF1498:
	.string	"PST_LIVE"
.LASF1801:
	.string	"P_NoiseAlert"
.LASF1536:
	.string	"gameepisode"
.LASF1241:
	.string	"MT_ARACHPLAZ"
.LASF1709:
	.string	"targ"
.LASF1388:
	.string	"MF_NOBLOOD"
.LASF490:
	.string	"S_VILE_ATK8"
.LASF431:
	.string	"S_POSS_RAISE1"
.LASF432:
	.string	"S_POSS_RAISE2"
.LASF433:
	.string	"S_POSS_RAISE3"
.LASF434:
	.string	"S_POSS_RAISE4"
.LASF286:
	.string	"S_MISSILEDOWN"
.LASF1529:
	.string	"raiseFloorTurbo"
.LASF1624:
	.string	"sfx_barexp"
.LASF1150:
	.string	"S_FLOATSKULL2"
.LASF1151:
	.string	"S_FLOATSKULL3"
.LASF1547:
	.string	"sfx_dbopn"
.LASF1551:
	.string	"sfx_bfg"
.LASF1085:
	.string	"S_MEGA"
.LASF765:
	.string	"S_BOSS_ATK1"
.LASF766:
	.string	"S_BOSS_ATK2"
.LASF767:
	.string	"S_BOSS_ATK3"
.LASF1404:
	.string	"subsector"
.LASF223:
	.string	"SPR_BRS1"
.LASF1459:
	.string	"vertex_t"
.LASF572:
	.string	"S_SKEL_PAIN2"
.LASF1109:
	.string	"S_CSAW"
.LASF1782:
	.string	"A_KeenDie"
.LASF60:
	.string	"pw_invulnerability"
.LASF1743:
	.string	"A_FatAttack2"
.LASF752:
	.string	"S_BRBALLX1"
.LASF753:
	.string	"S_BRBALLX2"
.LASF754:
	.string	"S_BRBALLX3"
.LASF882:
	.string	"S_BSPI_DIE2"
.LASF883:
	.string	"S_BSPI_DIE3"
.LASF884:
	.string	"S_BSPI_DIE4"
.LASF885:
	.string	"S_BSPI_DIE5"
.LASF45:
	.string	"wp_chaingun"
.LASF887:
	.string	"S_BSPI_DIE7"
.LASF34:
	.string	"skill_t"
.LASF438:
	.string	"S_SPOS_RUN2"
.LASF1480:
	.string	"backsector"
.LASF439:
	.string	"S_SPOS_RUN3"
.LASF941:
	.string	"S_PAIN_PAIN2"
.LASF576:
	.string	"S_SKEL_DIE4"
.LASF1543:
	.string	"sfx_pistol"
.LASF172:
	.string	"SPR_SHEL"
.LASF1324:
	.string	"MT_MISC69"
.LASF1432:
	.string	"armortype"
.LASF12:
	.string	"false"
.LASF224:
	.string	"SPR_TLMP"
.LASF1384:
	.string	"MF_TELEPORT"
.LASF403:
	.string	"S_POSS_STND2"
.LASF1282:
	.string	"MT_SHOTGUN"
.LASF1207:
	.string	"MT_SHOTGUY"
.LASF1447:
	.string	"itemcount"
.LASF1187:
	.string	"S_TECHLAMP"
.LASF1766:
	.string	"A_HeadAttack"
.LASF1228:
	.string	"MT_WOLFSS"
.LASF1563:
	.string	"sfx_dorcls"
.LASF1698:
	.string	"P_UseSpecialLine"
.LASF785:
	.string	"S_BOS2_STND2"
.LASF1468:
	.string	"soundtarget"
.LASF280:
	.string	"S_CHAIN1"
.LASF281:
	.string	"S_CHAIN2"
.LASF282:
	.string	"S_CHAIN3"
.LASF333:
	.string	"S_RBALLX2"
.LASF334:
	.string	"S_RBALLX3"
.LASF209:
	.string	"SPR_TBLU"
.LASF1711:
	.string	"A_BrainSpit"
.LASF436:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1764:
	.string	"A_BruisAttack"
.LASF1544:
	.string	"sfx_shotgn"
.LASF1400:
	.string	"snext"
.LASF59:
	.string	"am_noammo"
.LASF1397:
	.string	"thinker_s"
.LASF83:
	.string	"thinker_t"
.LASF1604:
	.string	"sfx_bgdth1"
.LASF1605:
	.string	"sfx_bgdth2"
.LASF412:
	.string	"S_POSS_ATK1"
.LASF413:
	.string	"S_POSS_ATK2"
.LASF414:
	.string	"S_POSS_ATK3"
.LASF29:
	.string	"sk_baby"
.LASF1326:
	.string	"MT_MISC71"
.LASF1175:
	.string	"S_RTORCHSHRT2"
.LASF1176:
	.string	"S_RTORCHSHRT3"
.LASF1177:
	.string	"S_RTORCHSHRT4"
.LASF1079:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF863:
	.string	"S_BSPI_RUN1"
.LASF1530:
	.string	"donutRaise"
.LASF1332:
	.string	"MT_MISC77"
.LASF1333:
	.string	"MT_MISC78"
.LASF1334:
	.string	"MT_MISC79"
.LASF1223:
	.string	"MT_SKULL"
.LASF1210:
	.string	"MT_UNDEAD"
.LASF28:
	.string	"GameMode_t"
.LASF80:
	.string	"prev"
.LASF573:
	.string	"S_SKEL_DIE1"
.LASF574:
	.string	"S_SKEL_DIE2"
.LASF575:
	.string	"S_SKEL_DIE3"
.LASF120:
	.string	"SPR_FIRE"
.LASF577:
	.string	"S_SKEL_DIE5"
.LASF578:
	.string	"S_SKEL_DIE6"
.LASF1734:
	.string	"A_PainAttack"
.LASF1184:
	.string	"S_COLONGIBS"
.LASF1525:
	.string	"lowerAndChange"
.LASF1779:
	.string	"A_Look"
.LASF225:
	.string	"SPR_TLP2"
.LASF335:
	.string	"S_PLASBALL"
.LASF1600:
	.string	"sfx_pdiehi"
.LASF181:
	.string	"SPR_SGN2"
.LASF86:
	.string	"options"
.LASF134:
	.string	"SPR_BSPI"
.LASF136:
	.string	"SPR_APBX"
.LASF1455:
	.string	"colormap"
.LASF26:
	.string	"retail"
.LASF1259:
	.string	"MT_MISC11"
.LASF1260:
	.string	"MT_MISC12"
.LASF1262:
	.string	"MT_MISC13"
.LASF1264:
	.string	"MT_MISC14"
.LASF1265:
	.string	"MT_MISC15"
.LASF1266:
	.string	"MT_MISC16"
.LASF1269:
	.string	"MT_MISC17"
.LASF1270:
	.string	"MT_MISC18"
.LASF1098:
	.string	"S_CLIP"
.LASF1360:
	.string	"radius"
.LASF1705:
	.string	"sound"
.LASF1413:
	.string	"health"
.LASF1232:
	.string	"MT_BOSSTARGET"
.LASF1589:
	.string	"sfx_kntsit"
.LASF1392:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_enemy.c"
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
