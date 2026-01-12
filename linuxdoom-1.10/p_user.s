	.file	"p_user.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_user.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: p_user.c,v 1.3 1997/01/28 22:08:29 b1 Exp $"
	.globl	onground
	.bss
	.align 4
	.type	onground, @object
	.size	onground, 4
onground:
	.zero	4
	.text
	.globl	P_Thrust
	.type	P_Thrust, @function
P_Thrust:
.LFB0:
	.file 1 "p_user.c"
	.loc 1 63 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# player, player
	movl	%esi, -12(%rbp)	# angle, angle
	movl	%edx, -16(%rbp)	# move, move
# p_user.c:64:     angle >>= ANGLETOFINESHIFT;
	.loc 1 64 11
	shrl	$19, -12(%rbp)	#, angle
# p_user.c:66:     player->mo->momx += FixedMul(move,finecosine[angle]); 
	.loc 1 66 49
	movq	finecosine(%rip), %rax	# finecosine, finecosine.0_1
	movl	-12(%rbp), %edx	# angle, _2
	salq	$2, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# p_user.c:66:     player->mo->momx += FixedMul(move,finecosine[angle]); 
	.loc 1 66 25
	movl	(%rax), %edx	# *_4, _5
	movl	-16(%rbp), %eax	# move, tmp98
	movl	%edx, %esi	# _5,
	movl	%eax, %edi	# tmp98,
	call	FixedMul@PLT	#
	movl	%eax, %edx	#, _20
# p_user.c:66:     player->mo->momx += FixedMul(move,finecosine[angle]); 
	.loc 1 66 11 discriminator 1
	movq	-8(%rbp), %rax	# player, tmp99
	movq	(%rax), %rax	# player_21(D)->mo, _6
# p_user.c:66:     player->mo->momx += FixedMul(move,finecosine[angle]); 
	.loc 1 66 15 discriminator 1
	movl	112(%rax), %ecx	# _6->momx, _7
# p_user.c:66:     player->mo->momx += FixedMul(move,finecosine[angle]); 
	.loc 1 66 11 discriminator 1
	movq	-8(%rbp), %rax	# player, tmp100
	movq	(%rax), %rax	# player_21(D)->mo, _8
# p_user.c:66:     player->mo->momx += FixedMul(move,finecosine[angle]); 
	.loc 1 66 22 discriminator 1
	addl	%ecx, %edx	# _7, _9
	movl	%edx, 112(%rax)	# _9, _8->momx
# p_user.c:67:     player->mo->momy += FixedMul(move,finesine[angle]);
	.loc 1 67 25
	movl	-12(%rbp), %eax	# angle, tmp101
	leaq	0(,%rax,4), %rdx	#, tmp102
	leaq	finesine(%rip), %rax	#, tmp103
	movl	(%rdx,%rax), %edx	# finesine[angle_16], _10
	movl	-16(%rbp), %eax	# move, tmp104
	movl	%edx, %esi	# _10,
	movl	%eax, %edi	# tmp104,
	call	FixedMul@PLT	#
	movl	%eax, %edx	#, _24
# p_user.c:67:     player->mo->momy += FixedMul(move,finesine[angle]);
	.loc 1 67 11 discriminator 1
	movq	-8(%rbp), %rax	# player, tmp105
	movq	(%rax), %rax	# player_21(D)->mo, _11
# p_user.c:67:     player->mo->momy += FixedMul(move,finesine[angle]);
	.loc 1 67 15 discriminator 1
	movl	116(%rax), %ecx	# _11->momy, _12
# p_user.c:67:     player->mo->momy += FixedMul(move,finesine[angle]);
	.loc 1 67 11 discriminator 1
	movq	-8(%rbp), %rax	# player, tmp106
	movq	(%rax), %rax	# player_21(D)->mo, _13
# p_user.c:67:     player->mo->momy += FixedMul(move,finesine[angle]);
	.loc 1 67 22 discriminator 1
	addl	%ecx, %edx	# _12, _14
	movl	%edx, 116(%rax)	# _14, _13->momy
# p_user.c:68: }
	.loc 1 68 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_Thrust, .-P_Thrust
	.globl	P_CalcHeight
	.type	P_CalcHeight, @function
P_CalcHeight:
.LFB1:
	.loc 1 78 1
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
	movq	%rdi, -40(%rbp)	# player, player
# p_user.c:89: 	FixedMul (player->mo->momx, player->mo->momx)
	.loc 1 89 36
	movq	-40(%rbp), %rax	# player, tmp141
	movq	(%rax), %rax	# player_67(D)->mo, _1
# p_user.c:89: 	FixedMul (player->mo->momx, player->mo->momx)
	.loc 1 89 2
	movl	112(%rax), %edx	# _1->momx, _2
# p_user.c:89: 	FixedMul (player->mo->momx, player->mo->momx)
	.loc 1 89 18
	movq	-40(%rbp), %rax	# player, tmp142
	movq	(%rax), %rax	# player_67(D)->mo, _3
# p_user.c:89: 	FixedMul (player->mo->momx, player->mo->momx)
	.loc 1 89 2
	movl	112(%rax), %eax	# _3->momx, _4
	movl	%edx, %esi	# _2,
	movl	%eax, %edi	# _4,
	call	FixedMul@PLT	#
	movl	%eax, %ebx	#, _5
# p_user.c:90: 	+ FixedMul (player->mo->momy,player->mo->momy);
	.loc 1 90 37
	movq	-40(%rbp), %rax	# player, tmp143
	movq	(%rax), %rax	# player_67(D)->mo, _6
# p_user.c:90: 	+ FixedMul (player->mo->momy,player->mo->momy);
	.loc 1 90 4
	movl	116(%rax), %edx	# _6->momy, _7
# p_user.c:90: 	+ FixedMul (player->mo->momy,player->mo->momy);
	.loc 1 90 20
	movq	-40(%rbp), %rax	# player, tmp144
	movq	(%rax), %rax	# player_67(D)->mo, _8
# p_user.c:90: 	+ FixedMul (player->mo->momy,player->mo->momy);
	.loc 1 90 4
	movl	116(%rax), %eax	# _8->momy, _9
	movl	%edx, %esi	# _7,
	movl	%eax, %edi	# _9,
	call	FixedMul@PLT	#
# p_user.c:90: 	+ FixedMul (player->mo->momy,player->mo->momy);
	.loc 1 90 2 discriminator 1
	leal	(%rbx,%rax), %edx	#, _11
# p_user.c:88:     player->bob =
	.loc 1 88 17
	movq	-40(%rbp), %rax	# player, tmp145
	movl	%edx, 32(%rax)	# _11, player_67(D)->bob
# p_user.c:92:     player->bob >>= 2;
	.loc 1 92 11
	movq	-40(%rbp), %rax	# player, tmp146
	movl	32(%rax), %eax	# player_67(D)->bob, _12
# p_user.c:92:     player->bob >>= 2;
	.loc 1 92 17
	sarl	$2, %eax	#, _12
	movl	%eax, %edx	# _12, _13
	movq	-40(%rbp), %rax	# player, tmp147
	movl	%edx, 32(%rax)	# _13, player_67(D)->bob
# p_user.c:94:     if (player->bob>MAXBOB)
	.loc 1 94 15
	movq	-40(%rbp), %rax	# player, tmp148
	movl	32(%rax), %eax	# player_67(D)->bob, _14
# p_user.c:94:     if (player->bob>MAXBOB)
	.loc 1 94 8
	cmpl	$1048576, %eax	#, _14
	jle	.L3	#,
# p_user.c:95: 	player->bob = MAXBOB;
	.loc 1 95 14
	movq	-40(%rbp), %rax	# player, tmp149
	movl	$1048576, 32(%rax)	#, player_67(D)->bob
.L3:
# p_user.c:97:     if ((player->cheats & CF_NOMOMENTUM) || !onground)
	.loc 1 97 16
	movq	-40(%rbp), %rax	# player, tmp150
	movl	200(%rax), %eax	# player_67(D)->cheats, _15
# p_user.c:97:     if ((player->cheats & CF_NOMOMENTUM) || !onground)
	.loc 1 97 25
	andl	$4, %eax	#, _16
# p_user.c:97:     if ((player->cheats & CF_NOMOMENTUM) || !onground)
	.loc 1 97 8
	testl	%eax, %eax	# _16
	jne	.L4	#,
# p_user.c:97:     if ((player->cheats & CF_NOMOMENTUM) || !onground)
	.loc 1 97 45 discriminator 1
	movl	onground(%rip), %eax	# onground, onground.1_17
# p_user.c:97:     if ((player->cheats & CF_NOMOMENTUM) || !onground)
	.loc 1 97 42 discriminator 1
	testl	%eax, %eax	# onground.1_17
	jne	.L5	#,
.L4:
# p_user.c:99: 	player->viewz = player->mo->z + VIEWHEIGHT;
	.loc 1 99 24
	movq	-40(%rbp), %rax	# player, tmp151
	movq	(%rax), %rax	# player_67(D)->mo, _18
# p_user.c:99: 	player->viewz = player->mo->z + VIEWHEIGHT;
	.loc 1 99 28
	movl	32(%rax), %eax	# _18->z, _19
# p_user.c:99: 	player->viewz = player->mo->z + VIEWHEIGHT;
	.loc 1 99 32
	leal	2686976(%rax), %edx	#, _20
# p_user.c:99: 	player->viewz = player->mo->z + VIEWHEIGHT;
	.loc 1 99 16
	movq	-40(%rbp), %rax	# player, tmp152
	movl	%edx, 20(%rax)	# _20, player_67(D)->viewz
# p_user.c:101: 	if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 101 28
	movq	-40(%rbp), %rax	# player, tmp153
	movq	(%rax), %rax	# player_67(D)->mo, _21
# p_user.c:101: 	if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 101 32
	movl	100(%rax), %eax	# _21->ceilingz, _22
# p_user.c:101: 	if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 101 20
	leal	-262143(%rax), %edx	#, _23
# p_user.c:101: 	if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 101 12
	movq	-40(%rbp), %rax	# player, tmp154
	movl	20(%rax), %eax	# player_67(D)->viewz, _24
# p_user.c:101: 	if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 101 5
	cmpl	%eax, %edx	# _24, _23
	jg	.L6	#,
# p_user.c:102: 	    player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 102 28
	movq	-40(%rbp), %rax	# player, tmp155
	movq	(%rax), %rax	# player_67(D)->mo, _25
# p_user.c:102: 	    player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 102 32
	movl	100(%rax), %eax	# _25->ceilingz, _26
# p_user.c:102: 	    player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 102 42
	leal	-262144(%rax), %edx	#, _27
# p_user.c:102: 	    player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 102 20
	movq	-40(%rbp), %rax	# player, tmp156
	movl	%edx, 20(%rax)	# _27, player_67(D)->viewz
.L6:
# p_user.c:104: 	player->viewz = player->mo->z + player->viewheight;
	.loc 1 104 24
	movq	-40(%rbp), %rax	# player, tmp157
	movq	(%rax), %rax	# player_67(D)->mo, _28
# p_user.c:104: 	player->viewz = player->mo->z + player->viewheight;
	.loc 1 104 28
	movl	32(%rax), %edx	# _28->z, _29
# p_user.c:104: 	player->viewz = player->mo->z + player->viewheight;
	.loc 1 104 40
	movq	-40(%rbp), %rax	# player, tmp158
	movl	24(%rax), %eax	# player_67(D)->viewheight, _30
# p_user.c:104: 	player->viewz = player->mo->z + player->viewheight;
	.loc 1 104 32
	addl	%eax, %edx	# _30, _31
# p_user.c:104: 	player->viewz = player->mo->z + player->viewheight;
	.loc 1 104 16
	movq	-40(%rbp), %rax	# player, tmp159
	movl	%edx, 20(%rax)	# _31, player_67(D)->viewz
# p_user.c:105: 	return;
	.loc 1 105 2
	jmp	.L2	#
.L5:
# p_user.c:108:     angle = (FINEANGLES/20*leveltime)&FINEMASK;
	.loc 1 108 27
	movl	leveltime(%rip), %eax	# leveltime, leveltime.2_32
	imull	$409, %eax, %eax	#, leveltime.2_32, _33
# p_user.c:108:     angle = (FINEANGLES/20*leveltime)&FINEMASK;
	.loc 1 108 11
	andl	$8191, %eax	#, tmp160
	movl	%eax, -24(%rbp)	# tmp160, angle
# p_user.c:109:     bob = FixedMul ( player->bob/2, finesine[angle]);
	.loc 1 109 11
	movl	-24(%rbp), %eax	# angle, tmp162
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp163
	leaq	finesine(%rip), %rax	#, tmp164
	movl	(%rdx,%rax), %edx	# finesine[angle_73], _34
# p_user.c:109:     bob = FixedMul ( player->bob/2, finesine[angle]);
	.loc 1 109 28
	movq	-40(%rbp), %rax	# player, tmp165
	movl	32(%rax), %eax	# player_67(D)->bob, _35
# p_user.c:109:     bob = FixedMul ( player->bob/2, finesine[angle]);
	.loc 1 109 11
	movl	%eax, %ecx	# _35, tmp166
	shrl	$31, %ecx	#, tmp166
	addl	%ecx, %eax	# tmp166, tmp167
	sarl	%eax	# tmp168
	movl	%edx, %esi	# _34,
	movl	%eax, %edi	# _36,
	call	FixedMul@PLT	#
	movl	%eax, -20(%rbp)	# tmp169, bob
# p_user.c:113:     if (player->playerstate == PST_LIVE)
	.loc 1 113 15
	movq	-40(%rbp), %rax	# player, tmp170
	movl	8(%rax), %eax	# player_67(D)->playerstate, _37
# p_user.c:113:     if (player->playerstate == PST_LIVE)
	.loc 1 113 8
	testl	%eax, %eax	# _37
	jne	.L8	#,
# p_user.c:115: 	player->viewheight += player->deltaviewheight;
	.loc 1 115 8
	movq	-40(%rbp), %rax	# player, tmp171
	movl	24(%rax), %edx	# player_67(D)->viewheight, _38
# p_user.c:115: 	player->viewheight += player->deltaviewheight;
	.loc 1 115 30
	movq	-40(%rbp), %rax	# player, tmp172
	movl	28(%rax), %eax	# player_67(D)->deltaviewheight, _39
# p_user.c:115: 	player->viewheight += player->deltaviewheight;
	.loc 1 115 21
	addl	%eax, %edx	# _39, _40
	movq	-40(%rbp), %rax	# player, tmp173
	movl	%edx, 24(%rax)	# _40, player_67(D)->viewheight
# p_user.c:117: 	if (player->viewheight > VIEWHEIGHT)
	.loc 1 117 12
	movq	-40(%rbp), %rax	# player, tmp174
	movl	24(%rax), %eax	# player_67(D)->viewheight, _41
# p_user.c:117: 	if (player->viewheight > VIEWHEIGHT)
	.loc 1 117 5
	cmpl	$2686976, %eax	#, _41
	jle	.L9	#,
# p_user.c:119: 	    player->viewheight = VIEWHEIGHT;
	.loc 1 119 25
	movq	-40(%rbp), %rax	# player, tmp175
	movl	$2686976, 24(%rax)	#, player_67(D)->viewheight
# p_user.c:120: 	    player->deltaviewheight = 0;
	.loc 1 120 30
	movq	-40(%rbp), %rax	# player, tmp176
	movl	$0, 28(%rax)	#, player_67(D)->deltaviewheight
.L9:
# p_user.c:123: 	if (player->viewheight < VIEWHEIGHT/2)
	.loc 1 123 12
	movq	-40(%rbp), %rax	# player, tmp177
	movl	24(%rax), %eax	# player_67(D)->viewheight, _42
# p_user.c:123: 	if (player->viewheight < VIEWHEIGHT/2)
	.loc 1 123 5
	cmpl	$1343487, %eax	#, _42
	jg	.L10	#,
# p_user.c:125: 	    player->viewheight = VIEWHEIGHT/2;
	.loc 1 125 25
	movq	-40(%rbp), %rax	# player, tmp178
	movl	$1343488, 24(%rax)	#, player_67(D)->viewheight
# p_user.c:126: 	    if (player->deltaviewheight <= 0)
	.loc 1 126 16
	movq	-40(%rbp), %rax	# player, tmp179
	movl	28(%rax), %eax	# player_67(D)->deltaviewheight, _43
# p_user.c:126: 	    if (player->deltaviewheight <= 0)
	.loc 1 126 9
	testl	%eax, %eax	# _43
	jg	.L10	#,
# p_user.c:127: 		player->deltaviewheight = 1;
	.loc 1 127 27
	movq	-40(%rbp), %rax	# player, tmp180
	movl	$1, 28(%rax)	#, player_67(D)->deltaviewheight
.L10:
# p_user.c:130: 	if (player->deltaviewheight)	
	.loc 1 130 12
	movq	-40(%rbp), %rax	# player, tmp181
	movl	28(%rax), %eax	# player_67(D)->deltaviewheight, _44
# p_user.c:130: 	if (player->deltaviewheight)	
	.loc 1 130 5
	testl	%eax, %eax	# _44
	je	.L8	#,
# p_user.c:132: 	    player->deltaviewheight += FRACUNIT/4;
	.loc 1 132 12
	movq	-40(%rbp), %rax	# player, tmp182
	movl	28(%rax), %eax	# player_67(D)->deltaviewheight, _45
# p_user.c:132: 	    player->deltaviewheight += FRACUNIT/4;
	.loc 1 132 30
	leal	16384(%rax), %edx	#, _46
	movq	-40(%rbp), %rax	# player, tmp183
	movl	%edx, 28(%rax)	# _46, player_67(D)->deltaviewheight
# p_user.c:133: 	    if (!player->deltaviewheight)
	.loc 1 133 17
	movq	-40(%rbp), %rax	# player, tmp184
	movl	28(%rax), %eax	# player_67(D)->deltaviewheight, _47
# p_user.c:133: 	    if (!player->deltaviewheight)
	.loc 1 133 9
	testl	%eax, %eax	# _47
	jne	.L8	#,
# p_user.c:134: 		player->deltaviewheight = 1;
	.loc 1 134 27
	movq	-40(%rbp), %rax	# player, tmp185
	movl	$1, 28(%rax)	#, player_67(D)->deltaviewheight
.L8:
# p_user.c:137:     player->viewz = player->mo->z + player->viewheight + bob;
	.loc 1 137 27
	movq	-40(%rbp), %rax	# player, tmp186
	movq	(%rax), %rax	# player_67(D)->mo, _48
# p_user.c:137:     player->viewz = player->mo->z + player->viewheight + bob;
	.loc 1 137 31
	movl	32(%rax), %edx	# _48->z, _49
# p_user.c:137:     player->viewz = player->mo->z + player->viewheight + bob;
	.loc 1 137 43
	movq	-40(%rbp), %rax	# player, tmp187
	movl	24(%rax), %eax	# player_67(D)->viewheight, _50
# p_user.c:137:     player->viewz = player->mo->z + player->viewheight + bob;
	.loc 1 137 35
	addl	%eax, %edx	# _50, _51
# p_user.c:137:     player->viewz = player->mo->z + player->viewheight + bob;
	.loc 1 137 56
	movl	-20(%rbp), %eax	# bob, tmp188
	addl	%eax, %edx	# tmp188, _52
# p_user.c:137:     player->viewz = player->mo->z + player->viewheight + bob;
	.loc 1 137 19
	movq	-40(%rbp), %rax	# player, tmp189
	movl	%edx, 20(%rax)	# _52, player_67(D)->viewz
# p_user.c:139:     if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 139 31
	movq	-40(%rbp), %rax	# player, tmp190
	movq	(%rax), %rax	# player_67(D)->mo, _53
# p_user.c:139:     if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 139 35
	movl	100(%rax), %eax	# _53->ceilingz, _54
# p_user.c:139:     if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 139 23
	leal	-262143(%rax), %edx	#, _55
# p_user.c:139:     if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 139 15
	movq	-40(%rbp), %rax	# player, tmp191
	movl	20(%rax), %eax	# player_67(D)->viewz, _56
# p_user.c:139:     if (player->viewz > player->mo->ceilingz-4*FRACUNIT)
	.loc 1 139 8
	cmpl	%eax, %edx	# _56, _55
	jg	.L2	#,
# p_user.c:140: 	player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 140 24
	movq	-40(%rbp), %rax	# player, tmp192
	movq	(%rax), %rax	# player_67(D)->mo, _57
# p_user.c:140: 	player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 140 28
	movl	100(%rax), %eax	# _57->ceilingz, _58
# p_user.c:140: 	player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 140 38
	leal	-262144(%rax), %edx	#, _59
# p_user.c:140: 	player->viewz = player->mo->ceilingz-4*FRACUNIT;
	.loc 1 140 16
	movq	-40(%rbp), %rax	# player, tmp193
	movl	%edx, 20(%rax)	# _59, player_67(D)->viewz
.L2:
# p_user.c:141: }
	.loc 1 141 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_CalcHeight, .-P_CalcHeight
	.globl	P_MovePlayer
	.type	P_MovePlayer, @function
P_MovePlayer:
.LFB2:
	.loc 1 149 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_user.c:152:     cmd = &player->cmd;
	.loc 1 152 9
	movq	-24(%rbp), %rax	# player, tmp118
	addq	$12, %rax	#, tmp117
	movq	%rax, -8(%rbp)	# tmp117, cmd
# p_user.c:154:     player->mo->angle += (cmd->angleturn<<16);
	.loc 1 154 11
	movq	-24(%rbp), %rax	# player, tmp119
	movq	(%rax), %rax	# player_37(D)->mo, _1
# p_user.c:154:     player->mo->angle += (cmd->angleturn<<16);
	.loc 1 154 15
	movl	56(%rax), %edx	# _1->angle, _2
# p_user.c:154:     player->mo->angle += (cmd->angleturn<<16);
	.loc 1 154 30
	movq	-8(%rbp), %rax	# cmd, tmp120
	movzwl	2(%rax), %eax	# cmd_38->angleturn, _3
# p_user.c:154:     player->mo->angle += (cmd->angleturn<<16);
	.loc 1 154 41
	cwtl
	sall	$16, %eax	#, _4
	movl	%eax, %ecx	# _4, _5
# p_user.c:154:     player->mo->angle += (cmd->angleturn<<16);
	.loc 1 154 11
	movq	-24(%rbp), %rax	# player, tmp121
	movq	(%rax), %rax	# player_37(D)->mo, _6
# p_user.c:154:     player->mo->angle += (cmd->angleturn<<16);
	.loc 1 154 23
	addl	%ecx, %edx	# _5, _7
	movl	%edx, 56(%rax)	# _7, _6->angle
# p_user.c:158:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 158 23
	movq	-24(%rbp), %rax	# player, tmp122
	movq	(%rax), %rax	# player_37(D)->mo, _8
# p_user.c:158:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 158 27
	movl	32(%rax), %edx	# _8->z, _9
# p_user.c:158:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 158 40
	movq	-24(%rbp), %rax	# player, tmp123
	movq	(%rax), %rax	# player_37(D)->mo, _10
# p_user.c:158:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 158 44
	movl	96(%rax), %eax	# _10->floorz, _11
# p_user.c:158:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 158 31
	cmpl	%eax, %edx	# _11, _9
	setle	%al	#, _12
	movzbl	%al, %eax	# _12, _13
# p_user.c:158:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 158 14
	movl	%eax, onground(%rip)	# _13, onground
# p_user.c:160:     if (cmd->forwardmove && onground)
	.loc 1 160 12
	movq	-8(%rbp), %rax	# cmd, tmp124
	movzbl	(%rax), %eax	# cmd_38->forwardmove, _14
# p_user.c:160:     if (cmd->forwardmove && onground)
	.loc 1 160 8
	testb	%al, %al	# _14
	je	.L12	#,
# p_user.c:160:     if (cmd->forwardmove && onground)
	.loc 1 160 26 discriminator 1
	movl	onground(%rip), %eax	# onground, onground.3_15
	testl	%eax, %eax	# onground.3_15
	je	.L12	#,
# p_user.c:161: 	P_Thrust (player, player->mo->angle, cmd->forwardmove*2048);
	.loc 1 161 42
	movq	-8(%rbp), %rax	# cmd, tmp125
	movzbl	(%rax), %eax	# cmd_38->forwardmove, _16
	movsbl	%al, %eax	# _16, _17
# p_user.c:161: 	P_Thrust (player, player->mo->angle, cmd->forwardmove*2048);
	.loc 1 161 2
	sall	$11, %eax	#, _17
	movl	%eax, %edx	# _17, _18
# p_user.c:161: 	P_Thrust (player, player->mo->angle, cmd->forwardmove*2048);
	.loc 1 161 26
	movq	-24(%rbp), %rax	# player, tmp126
	movq	(%rax), %rax	# player_37(D)->mo, _19
# p_user.c:161: 	P_Thrust (player, player->mo->angle, cmd->forwardmove*2048);
	.loc 1 161 2
	movl	56(%rax), %ecx	# _19->angle, _20
	movq	-24(%rbp), %rax	# player, tmp127
	movl	%ecx, %esi	# _20,
	movq	%rax, %rdi	# tmp127,
	call	P_Thrust	#
.L12:
# p_user.c:163:     if (cmd->sidemove && onground)
	.loc 1 163 12
	movq	-8(%rbp), %rax	# cmd, tmp128
	movzbl	1(%rax), %eax	# cmd_38->sidemove, _21
# p_user.c:163:     if (cmd->sidemove && onground)
	.loc 1 163 8
	testb	%al, %al	# _21
	je	.L13	#,
# p_user.c:163:     if (cmd->sidemove && onground)
	.loc 1 163 23 discriminator 1
	movl	onground(%rip), %eax	# onground, onground.4_22
	testl	%eax, %eax	# onground.4_22
	je	.L13	#,
# p_user.c:164: 	P_Thrust (player, player->mo->angle-ANG90, cmd->sidemove*2048);
	.loc 1 164 48
	movq	-8(%rbp), %rax	# cmd, tmp129
	movzbl	1(%rax), %eax	# cmd_38->sidemove, _23
	movsbl	%al, %eax	# _23, _24
# p_user.c:164: 	P_Thrust (player, player->mo->angle-ANG90, cmd->sidemove*2048);
	.loc 1 164 2
	sall	$11, %eax	#, _24
	movl	%eax, %edx	# _24, _25
# p_user.c:164: 	P_Thrust (player, player->mo->angle-ANG90, cmd->sidemove*2048);
	.loc 1 164 26
	movq	-24(%rbp), %rax	# player, tmp130
	movq	(%rax), %rax	# player_37(D)->mo, _26
# p_user.c:164: 	P_Thrust (player, player->mo->angle-ANG90, cmd->sidemove*2048);
	.loc 1 164 30
	movl	56(%rax), %eax	# _26->angle, _27
# p_user.c:164: 	P_Thrust (player, player->mo->angle-ANG90, cmd->sidemove*2048);
	.loc 1 164 2
	leal	-1073741824(%rax), %ecx	#, _28
	movq	-24(%rbp), %rax	# player, tmp131
	movl	%ecx, %esi	# _28,
	movq	%rax, %rdi	# tmp131,
	call	P_Thrust	#
.L13:
# p_user.c:166:     if ( (cmd->forwardmove || cmd->sidemove) 
	.loc 1 166 14
	movq	-8(%rbp), %rax	# cmd, tmp132
	movzbl	(%rax), %eax	# cmd_38->forwardmove, _29
# p_user.c:166:     if ( (cmd->forwardmove || cmd->sidemove) 
	.loc 1 166 8
	testb	%al, %al	# _29
	jne	.L14	#,
# p_user.c:166:     if ( (cmd->forwardmove || cmd->sidemove) 
	.loc 1 166 34 discriminator 1
	movq	-8(%rbp), %rax	# cmd, tmp133
	movzbl	1(%rax), %eax	# cmd_38->sidemove, _30
# p_user.c:166:     if ( (cmd->forwardmove || cmd->sidemove) 
	.loc 1 166 28 discriminator 1
	testb	%al, %al	# _30
	je	.L16	#,
.L14:
# p_user.c:167: 	 && player->mo->state == &states[S_PLAY] )
	.loc 1 167 12
	movq	-24(%rbp), %rax	# player, tmp134
	movq	(%rax), %rax	# player_37(D)->mo, _31
# p_user.c:167: 	 && player->mo->state == &states[S_PLAY] )
	.loc 1 167 16
	movq	152(%rax), %rdx	# _31->state, _32
# p_user.c:167: 	 && player->mo->state == &states[S_PLAY] )
	.loc 1 167 3
	leaq	8344+states(%rip), %rax	#, tmp135
	cmpq	%rax, %rdx	# tmp135, _32
	jne	.L16	#,
# p_user.c:169: 	P_SetMobjState (player->mo, S_PLAY_RUN1);
	.loc 1 169 2
	movq	-24(%rbp), %rax	# player, tmp136
	movq	(%rax), %rax	# player_37(D)->mo, _33
	movl	$150, %esi	#,
	movq	%rax, %rdi	# _33,
	call	P_SetMobjState@PLT	#
.L16:
# p_user.c:171: }	
	.loc 1 171 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_MovePlayer, .-P_MovePlayer
	.globl	P_DeathThink
	.type	P_DeathThink, @function
P_DeathThink:
.LFB3:
	.loc 1 183 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_user.c:187:     P_MovePsprites (player);
	.loc 1 187 5
	movq	-24(%rbp), %rax	# player, tmp124
	movq	%rax, %rdi	# tmp124,
	call	P_MovePsprites@PLT	#
# p_user.c:190:     if (player->viewheight > 6*FRACUNIT)
	.loc 1 190 15
	movq	-24(%rbp), %rax	# player, tmp125
	movl	24(%rax), %eax	# player_50(D)->viewheight, _1
# p_user.c:190:     if (player->viewheight > 6*FRACUNIT)
	.loc 1 190 8
	cmpl	$393216, %eax	#, _1
	jle	.L18	#,
# p_user.c:191: 	player->viewheight -= FRACUNIT;
	.loc 1 191 8
	movq	-24(%rbp), %rax	# player, tmp126
	movl	24(%rax), %eax	# player_50(D)->viewheight, _2
# p_user.c:191: 	player->viewheight -= FRACUNIT;
	.loc 1 191 21
	leal	-65536(%rax), %edx	#, _3
	movq	-24(%rbp), %rax	# player, tmp127
	movl	%edx, 24(%rax)	# _3, player_50(D)->viewheight
.L18:
# p_user.c:193:     if (player->viewheight < 6*FRACUNIT)
	.loc 1 193 15
	movq	-24(%rbp), %rax	# player, tmp128
	movl	24(%rax), %eax	# player_50(D)->viewheight, _4
# p_user.c:193:     if (player->viewheight < 6*FRACUNIT)
	.loc 1 193 8
	cmpl	$393215, %eax	#, _4
	jg	.L19	#,
# p_user.c:194: 	player->viewheight = 6*FRACUNIT;
	.loc 1 194 21
	movq	-24(%rbp), %rax	# player, tmp129
	movl	$393216, 24(%rax)	#, player_50(D)->viewheight
.L19:
# p_user.c:196:     player->deltaviewheight = 0;
	.loc 1 196 29
	movq	-24(%rbp), %rax	# player, tmp130
	movl	$0, 28(%rax)	#, player_50(D)->deltaviewheight
# p_user.c:197:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 197 23
	movq	-24(%rbp), %rax	# player, tmp131
	movq	(%rax), %rax	# player_50(D)->mo, _5
# p_user.c:197:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 197 27
	movl	32(%rax), %edx	# _5->z, _6
# p_user.c:197:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 197 40
	movq	-24(%rbp), %rax	# player, tmp132
	movq	(%rax), %rax	# player_50(D)->mo, _7
# p_user.c:197:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 197 44
	movl	96(%rax), %eax	# _7->floorz, _8
# p_user.c:197:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 197 31
	cmpl	%eax, %edx	# _8, _6
	setle	%al	#, _9
	movzbl	%al, %eax	# _9, _10
# p_user.c:197:     onground = (player->mo->z <= player->mo->floorz);
	.loc 1 197 14
	movl	%eax, onground(%rip)	# _10, onground
# p_user.c:198:     P_CalcHeight (player);
	.loc 1 198 5
	movq	-24(%rbp), %rax	# player, tmp133
	movq	%rax, %rdi	# tmp133,
	call	P_CalcHeight	#
# p_user.c:200:     if (player->attacker && player->attacker != player->mo)
	.loc 1 200 15
	movq	-24(%rbp), %rax	# player, tmp134
	movq	240(%rax), %rax	# player_50(D)->attacker, _11
# p_user.c:200:     if (player->attacker && player->attacker != player->mo)
	.loc 1 200 8
	testq	%rax, %rax	# _11
	je	.L20	#,
# p_user.c:200:     if (player->attacker && player->attacker != player->mo)
	.loc 1 200 35 discriminator 1
	movq	-24(%rbp), %rax	# player, tmp135
	movq	240(%rax), %rdx	# player_50(D)->attacker, _12
# p_user.c:200:     if (player->attacker && player->attacker != player->mo)
	.loc 1 200 55 discriminator 1
	movq	-24(%rbp), %rax	# player, tmp136
	movq	(%rax), %rax	# player_50(D)->mo, _13
# p_user.c:200:     if (player->attacker && player->attacker != player->mo)
	.loc 1 200 26 discriminator 1
	cmpq	%rax, %rdx	# _13, _12
	je	.L20	#,
# p_user.c:205: 				 player->attacker->y);
	.loc 1 205 12
	movq	-24(%rbp), %rax	# player, tmp137
	movq	240(%rax), %rax	# player_50(D)->attacker, _14
# p_user.c:202: 	angle = R_PointToAngle2 (player->mo->x,
	.loc 1 202 10
	movl	28(%rax), %ecx	# _14->y, _15
# p_user.c:204: 				 player->attacker->x,
	.loc 1 204 12
	movq	-24(%rbp), %rax	# player, tmp138
	movq	240(%rax), %rax	# player_50(D)->attacker, _16
# p_user.c:202: 	angle = R_PointToAngle2 (player->mo->x,
	.loc 1 202 10
	movl	24(%rax), %edx	# _16->x, _17
# p_user.c:203: 				 player->mo->y,
	.loc 1 203 12
	movq	-24(%rbp), %rax	# player, tmp139
	movq	(%rax), %rax	# player_50(D)->mo, _18
# p_user.c:202: 	angle = R_PointToAngle2 (player->mo->x,
	.loc 1 202 10
	movl	28(%rax), %esi	# _18->y, _19
# p_user.c:202: 	angle = R_PointToAngle2 (player->mo->x,
	.loc 1 202 33
	movq	-24(%rbp), %rax	# player, tmp140
	movq	(%rax), %rax	# player_50(D)->mo, _20
# p_user.c:202: 	angle = R_PointToAngle2 (player->mo->x,
	.loc 1 202 10
	movl	24(%rax), %eax	# _20->x, _21
	movl	%eax, %edi	# _21,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -8(%rbp)	# tmp141, angle
# p_user.c:207: 	delta = angle - player->mo->angle;
	.loc 1 207 24
	movq	-24(%rbp), %rax	# player, tmp142
	movq	(%rax), %rax	# player_50(D)->mo, _22
# p_user.c:207: 	delta = angle - player->mo->angle;
	.loc 1 207 28
	movl	56(%rax), %eax	# _22->angle, _23
# p_user.c:207: 	delta = angle - player->mo->angle;
	.loc 1 207 8
	movl	-8(%rbp), %edx	# angle, tmp146
	subl	%eax, %edx	# _23, tmp145
	movl	%edx, -4(%rbp)	# tmp145, delta
# p_user.c:209: 	if (delta < ANG5 || delta > (unsigned)-ANG5)
	.loc 1 209 5
	cmpl	$59652322, -4(%rbp)	#, delta
	jbe	.L21	#,
# p_user.c:209: 	if (delta < ANG5 || delta > (unsigned)-ANG5)
	.loc 1 209 19 discriminator 1
	cmpl	$-59652323, -4(%rbp)	#, delta
	jbe	.L22	#,
.L21:
# p_user.c:213: 	    player->mo->angle = angle;
	.loc 1 213 12
	movq	-24(%rbp), %rax	# player, tmp147
	movq	(%rax), %rax	# player_50(D)->mo, _24
# p_user.c:213: 	    player->mo->angle = angle;
	.loc 1 213 24
	movl	-8(%rbp), %edx	# angle, tmp148
	movl	%edx, 56(%rax)	# tmp148, _24->angle
# p_user.c:215: 	    if (player->damagecount)
	.loc 1 215 16
	movq	-24(%rbp), %rax	# player, tmp149
	movl	232(%rax), %eax	# player_50(D)->damagecount, _25
# p_user.c:215: 	    if (player->damagecount)
	.loc 1 215 9
	testl	%eax, %eax	# _25
	je	.L24	#,
# p_user.c:216: 		player->damagecount--;
	.loc 1 216 9
	movq	-24(%rbp), %rax	# player, tmp150
	movl	232(%rax), %eax	# player_50(D)->damagecount, _26
# p_user.c:216: 		player->damagecount--;
	.loc 1 216 22
	leal	-1(%rax), %edx	#, _27
	movq	-24(%rbp), %rax	# player, tmp151
	movl	%edx, 232(%rax)	# _27, player_50(D)->damagecount
# p_user.c:215: 	    if (player->damagecount)
	.loc 1 215 9
	jmp	.L24	#
.L22:
# p_user.c:218: 	else if (delta < ANG180)
	.loc 1 218 17
	movl	-4(%rbp), %eax	# delta, delta.5_28
# p_user.c:218: 	else if (delta < ANG180)
	.loc 1 218 10
	testl	%eax, %eax	# delta.5_28
	js	.L25	#,
# p_user.c:219: 	    player->mo->angle += ANG5;
	.loc 1 219 12
	movq	-24(%rbp), %rax	# player, tmp152
	movq	(%rax), %rax	# player_50(D)->mo, _29
# p_user.c:219: 	    player->mo->angle += ANG5;
	.loc 1 219 16
	movl	56(%rax), %edx	# _29->angle, _30
# p_user.c:219: 	    player->mo->angle += ANG5;
	.loc 1 219 12
	movq	-24(%rbp), %rax	# player, tmp153
	movq	(%rax), %rax	# player_50(D)->mo, _31
# p_user.c:219: 	    player->mo->angle += ANG5;
	.loc 1 219 24
	addl	$59652323, %edx	#, _32
	movl	%edx, 56(%rax)	# _32, _31->angle
# p_user.c:209: 	if (delta < ANG5 || delta > (unsigned)-ANG5)
	.loc 1 209 5
	jmp	.L26	#
.L25:
# p_user.c:221: 	    player->mo->angle -= ANG5;
	.loc 1 221 12
	movq	-24(%rbp), %rax	# player, tmp154
	movq	(%rax), %rax	# player_50(D)->mo, _33
# p_user.c:221: 	    player->mo->angle -= ANG5;
	.loc 1 221 16
	movl	56(%rax), %edx	# _33->angle, _34
# p_user.c:221: 	    player->mo->angle -= ANG5;
	.loc 1 221 12
	movq	-24(%rbp), %rax	# player, tmp155
	movq	(%rax), %rax	# player_50(D)->mo, _35
# p_user.c:221: 	    player->mo->angle -= ANG5;
	.loc 1 221 24
	subl	$59652323, %edx	#, _36
	movl	%edx, 56(%rax)	# _36, _35->angle
# p_user.c:209: 	if (delta < ANG5 || delta > (unsigned)-ANG5)
	.loc 1 209 5
	jmp	.L26	#
.L24:
	jmp	.L26	#
.L20:
# p_user.c:223:     else if (player->damagecount)
	.loc 1 223 20
	movq	-24(%rbp), %rax	# player, tmp156
	movl	232(%rax), %eax	# player_50(D)->damagecount, _37
# p_user.c:223:     else if (player->damagecount)
	.loc 1 223 13
	testl	%eax, %eax	# _37
	je	.L26	#,
# p_user.c:224: 	player->damagecount--;
	.loc 1 224 8
	movq	-24(%rbp), %rax	# player, tmp157
	movl	232(%rax), %eax	# player_50(D)->damagecount, _38
# p_user.c:224: 	player->damagecount--;
	.loc 1 224 21
	leal	-1(%rax), %edx	#, _39
	movq	-24(%rbp), %rax	# player, tmp158
	movl	%edx, 232(%rax)	# _39, player_50(D)->damagecount
.L26:
# p_user.c:227:     if (player->cmd.buttons & BT_USE)
	.loc 1 227 20
	movq	-24(%rbp), %rax	# player, tmp159
	movzbl	19(%rax), %eax	# player_50(D)->cmd.buttons, _40
# p_user.c:227:     if (player->cmd.buttons & BT_USE)
	.loc 1 227 29
	movzbl	%al, %eax	# _40, _41
	andl	$2, %eax	#, _42
# p_user.c:227:     if (player->cmd.buttons & BT_USE)
	.loc 1 227 8
	testl	%eax, %eax	# _42
	je	.L28	#,
# p_user.c:228: 	player->playerstate = PST_REBORN;
	.loc 1 228 22
	movq	-24(%rbp), %rax	# player, tmp160
	movl	$2, 8(%rax)	#, player_50(D)->playerstate
.L28:
# p_user.c:229: }
	.loc 1 229 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_DeathThink, .-P_DeathThink
	.globl	P_PlayerThink
	.type	P_PlayerThink, @function
P_PlayerThink:
.LFB4:
	.loc 1 237 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_user.c:242:     if (player->cheats & CF_NOCLIP)
	.loc 1 242 15
	movq	-24(%rbp), %rax	# player, tmp165
	movl	200(%rax), %eax	# player_104(D)->cheats, _1
# p_user.c:242:     if (player->cheats & CF_NOCLIP)
	.loc 1 242 24
	andl	$1, %eax	#, _2
# p_user.c:242:     if (player->cheats & CF_NOCLIP)
	.loc 1 242 8
	testl	%eax, %eax	# _2
	je	.L30	#,
# p_user.c:243: 	player->mo->flags |= MF_NOCLIP;
	.loc 1 243 8
	movq	-24(%rbp), %rax	# player, tmp166
	movq	(%rax), %rax	# player_104(D)->mo, _3
# p_user.c:243: 	player->mo->flags |= MF_NOCLIP;
	.loc 1 243 12
	movl	160(%rax), %edx	# _3->flags, _4
# p_user.c:243: 	player->mo->flags |= MF_NOCLIP;
	.loc 1 243 8
	movq	-24(%rbp), %rax	# player, tmp167
	movq	(%rax), %rax	# player_104(D)->mo, _5
# p_user.c:243: 	player->mo->flags |= MF_NOCLIP;
	.loc 1 243 20
	orb	$16, %dh	#, _6
	movl	%edx, 160(%rax)	# _6, _5->flags
	jmp	.L31	#
.L30:
# p_user.c:245: 	player->mo->flags &= ~MF_NOCLIP;
	.loc 1 245 8
	movq	-24(%rbp), %rax	# player, tmp168
	movq	(%rax), %rax	# player_104(D)->mo, _7
# p_user.c:245: 	player->mo->flags &= ~MF_NOCLIP;
	.loc 1 245 12
	movl	160(%rax), %edx	# _7->flags, _8
# p_user.c:245: 	player->mo->flags &= ~MF_NOCLIP;
	.loc 1 245 8
	movq	-24(%rbp), %rax	# player, tmp169
	movq	(%rax), %rax	# player_104(D)->mo, _9
# p_user.c:245: 	player->mo->flags &= ~MF_NOCLIP;
	.loc 1 245 20
	andb	$-17, %dh	#, _10
	movl	%edx, 160(%rax)	# _10, _9->flags
.L31:
# p_user.c:248:     cmd = &player->cmd;
	.loc 1 248 9
	movq	-24(%rbp), %rax	# player, tmp173
	addq	$12, %rax	#, tmp172
	movq	%rax, -8(%rbp)	# tmp172, cmd
# p_user.c:249:     if (player->mo->flags & MF_JUSTATTACKED)
	.loc 1 249 15
	movq	-24(%rbp), %rax	# player, tmp174
	movq	(%rax), %rax	# player_104(D)->mo, _11
# p_user.c:249:     if (player->mo->flags & MF_JUSTATTACKED)
	.loc 1 249 19
	movl	160(%rax), %eax	# _11->flags, _12
# p_user.c:249:     if (player->mo->flags & MF_JUSTATTACKED)
	.loc 1 249 27
	andl	$128, %eax	#, _13
# p_user.c:249:     if (player->mo->flags & MF_JUSTATTACKED)
	.loc 1 249 8
	testl	%eax, %eax	# _13
	je	.L32	#,
# p_user.c:251: 	cmd->angleturn = 0;
	.loc 1 251 17
	movq	-8(%rbp), %rax	# cmd, tmp175
	movw	$0, 2(%rax)	#, cmd_107->angleturn
# p_user.c:252: 	cmd->forwardmove = 0xc800/512;
	.loc 1 252 19
	movq	-8(%rbp), %rax	# cmd, tmp176
	movb	$100, (%rax)	#, cmd_107->forwardmove
# p_user.c:253: 	cmd->sidemove = 0;
	.loc 1 253 16
	movq	-8(%rbp), %rax	# cmd, tmp177
	movb	$0, 1(%rax)	#, cmd_107->sidemove
# p_user.c:254: 	player->mo->flags &= ~MF_JUSTATTACKED;
	.loc 1 254 8
	movq	-24(%rbp), %rax	# player, tmp178
	movq	(%rax), %rax	# player_104(D)->mo, _14
# p_user.c:254: 	player->mo->flags &= ~MF_JUSTATTACKED;
	.loc 1 254 12
	movl	160(%rax), %edx	# _14->flags, _15
# p_user.c:254: 	player->mo->flags &= ~MF_JUSTATTACKED;
	.loc 1 254 8
	movq	-24(%rbp), %rax	# player, tmp179
	movq	(%rax), %rax	# player_104(D)->mo, _16
# p_user.c:254: 	player->mo->flags &= ~MF_JUSTATTACKED;
	.loc 1 254 20
	andb	$127, %dl	#, _17
	movl	%edx, 160(%rax)	# _17, _16->flags
.L32:
# p_user.c:258:     if (player->playerstate == PST_DEAD)
	.loc 1 258 15
	movq	-24(%rbp), %rax	# player, tmp180
	movl	8(%rax), %eax	# player_104(D)->playerstate, _18
# p_user.c:258:     if (player->playerstate == PST_DEAD)
	.loc 1 258 8
	cmpl	$1, %eax	#, _18
	jne	.L33	#,
# p_user.c:260: 	P_DeathThink (player);
	.loc 1 260 2
	movq	-24(%rbp), %rax	# player, tmp181
	movq	%rax, %rdi	# tmp181,
	call	P_DeathThink	#
# p_user.c:261: 	return;
	.loc 1 261 2
	jmp	.L29	#
.L33:
# p_user.c:267:     if (player->mo->reactiontime)
	.loc 1 267 15
	movq	-24(%rbp), %rax	# player, tmp182
	movq	(%rax), %rax	# player_104(D)->mo, _19
# p_user.c:267:     if (player->mo->reactiontime)
	.loc 1 267 19
	movl	184(%rax), %eax	# _19->reactiontime, _20
# p_user.c:267:     if (player->mo->reactiontime)
	.loc 1 267 8
	testl	%eax, %eax	# _20
	je	.L35	#,
# p_user.c:268: 	player->mo->reactiontime--;
	.loc 1 268 8
	movq	-24(%rbp), %rax	# player, tmp183
	movq	(%rax), %rax	# player_104(D)->mo, _21
# p_user.c:268: 	player->mo->reactiontime--;
	.loc 1 268 12
	movl	184(%rax), %edx	# _21->reactiontime, _22
# p_user.c:268: 	player->mo->reactiontime--;
	.loc 1 268 26
	subl	$1, %edx	#, _23
	movl	%edx, 184(%rax)	# _23, _21->reactiontime
	jmp	.L36	#
.L35:
# p_user.c:270: 	P_MovePlayer (player);
	.loc 1 270 2
	movq	-24(%rbp), %rax	# player, tmp184
	movq	%rax, %rdi	# tmp184,
	call	P_MovePlayer	#
.L36:
# p_user.c:272:     P_CalcHeight (player);
	.loc 1 272 5
	movq	-24(%rbp), %rax	# player, tmp185
	movq	%rax, %rdi	# tmp185,
	call	P_CalcHeight	#
# p_user.c:274:     if (player->mo->subsector->sector->special)
	.loc 1 274 15
	movq	-24(%rbp), %rax	# player, tmp186
	movq	(%rax), %rax	# player_104(D)->mo, _24
# p_user.c:274:     if (player->mo->subsector->sector->special)
	.loc 1 274 19
	movq	88(%rax), %rax	# _24->subsector, _25
# p_user.c:274:     if (player->mo->subsector->sector->special)
	.loc 1 274 30
	movq	(%rax), %rax	# _25->sector, _26
# p_user.c:274:     if (player->mo->subsector->sector->special)
	.loc 1 274 38
	movzwl	14(%rax), %eax	# _26->special, _27
# p_user.c:274:     if (player->mo->subsector->sector->special)
	.loc 1 274 8
	testw	%ax, %ax	# _27
	je	.L37	#,
# p_user.c:275: 	P_PlayerInSpecialSector (player);
	.loc 1 275 2
	movq	-24(%rbp), %rax	# player, tmp187
	movq	%rax, %rdi	# tmp187,
	call	P_PlayerInSpecialSector@PLT	#
.L37:
# p_user.c:280:     if (cmd->buttons & BT_SPECIAL)
	.loc 1 280 12
	movq	-8(%rbp), %rax	# cmd, tmp188
	movzbl	7(%rax), %eax	# cmd_107->buttons, _28
# p_user.c:280:     if (cmd->buttons & BT_SPECIAL)
	.loc 1 280 8
	testb	%al, %al	# _29
	jns	.L38	#,
# p_user.c:281: 	cmd->buttons = 0;			
	.loc 1 281 15
	movq	-8(%rbp), %rax	# cmd, tmp189
	movb	$0, 7(%rax)	#, cmd_107->buttons
.L38:
# p_user.c:283:     if (cmd->buttons & BT_CHANGE)
	.loc 1 283 12
	movq	-8(%rbp), %rax	# cmd, tmp190
	movzbl	7(%rax), %eax	# cmd_107->buttons, _30
# p_user.c:283:     if (cmd->buttons & BT_CHANGE)
	.loc 1 283 22
	movzbl	%al, %eax	# _30, _31
	andl	$4, %eax	#, _32
# p_user.c:283:     if (cmd->buttons & BT_CHANGE)
	.loc 1 283 8
	testl	%eax, %eax	# _32
	je	.L39	#,
# p_user.c:288: 	newweapon = (cmd->buttons&BT_WEAPONMASK)>>BT_WEAPONSHIFT;
	.loc 1 288 18
	movq	-8(%rbp), %rax	# cmd, tmp191
	movzbl	7(%rax), %eax	# cmd_107->buttons, _33
# p_user.c:288: 	newweapon = (cmd->buttons&BT_WEAPONMASK)>>BT_WEAPONSHIFT;
	.loc 1 288 42
	movzbl	%al, %eax	# _33, _34
	sarl	$3, %eax	#, _35
	andl	$7, %eax	#, _36
# p_user.c:288: 	newweapon = (cmd->buttons&BT_WEAPONMASK)>>BT_WEAPONSHIFT;
	.loc 1 288 12
	movl	%eax, -12(%rbp)	# _36, newweapon
# p_user.c:290: 	if (newweapon == wp_fist
	.loc 1 290 5
	cmpl	$0, -12(%rbp)	#, newweapon
	jne	.L40	#,
# p_user.c:291: 	    && player->weaponowned[wp_chainsaw]
	.loc 1 291 28
	movq	-24(%rbp), %rax	# player, tmp192
	movl	152(%rax), %eax	# player_104(D)->weaponowned[7], _37
# p_user.c:291: 	    && player->weaponowned[wp_chainsaw]
	.loc 1 291 6
	testl	%eax, %eax	# _37
	je	.L40	#,
# p_user.c:292: 	    && !(player->readyweapon == wp_chainsaw
	.loc 1 292 17
	movq	-24(%rbp), %rax	# player, tmp193
	movl	116(%rax), %eax	# player_104(D)->readyweapon, _38
# p_user.c:292: 	    && !(player->readyweapon == wp_chainsaw
	.loc 1 292 6
	cmpl	$7, %eax	#, _38
	jne	.L41	#,
# p_user.c:293: 		 && player->powers[pw_strength]))
	.loc 1 293 21
	movq	-24(%rbp), %rax	# player, tmp194
	movl	52(%rax), %eax	# player_104(D)->powers[1], _39
# p_user.c:292: 	    && !(player->readyweapon == wp_chainsaw
	.loc 1 292 9 discriminator 1
	testl	%eax, %eax	# _39
	jne	.L40	#,
.L41:
# p_user.c:295: 	    newweapon = wp_chainsaw;
	.loc 1 295 16
	movl	$7, -12(%rbp)	#, newweapon
.L40:
# p_user.c:298: 	if ( (gamemode == commercial)
	.loc 1 298 17
	movl	gamemode(%rip), %eax	# gamemode, gamemode.6_40
# p_user.c:298: 	if ( (gamemode == commercial)
	.loc 1 298 5
	cmpl	$2, %eax	#, gamemode.6_40
	jne	.L42	#,
# p_user.c:299: 	    && newweapon == wp_shotgun 
	.loc 1 299 6
	cmpl	$2, -12(%rbp)	#, newweapon
	jne	.L42	#,
# p_user.c:300: 	    && player->weaponowned[wp_supershotgun]
	.loc 1 300 28
	movq	-24(%rbp), %rax	# player, tmp195
	movl	156(%rax), %eax	# player_104(D)->weaponowned[8], _41
# p_user.c:300: 	    && player->weaponowned[wp_supershotgun]
	.loc 1 300 6
	testl	%eax, %eax	# _41
	je	.L42	#,
# p_user.c:301: 	    && player->readyweapon != wp_supershotgun)
	.loc 1 301 15
	movq	-24(%rbp), %rax	# player, tmp196
	movl	116(%rax), %eax	# player_104(D)->readyweapon, _42
# p_user.c:301: 	    && player->readyweapon != wp_supershotgun)
	.loc 1 301 6
	cmpl	$8, %eax	#, _42
	je	.L42	#,
# p_user.c:303: 	    newweapon = wp_supershotgun;
	.loc 1 303 16
	movl	$8, -12(%rbp)	#, newweapon
.L42:
# p_user.c:307: 	if (player->weaponowned[newweapon]
	.loc 1 307 25
	movq	-24(%rbp), %rax	# player, tmp197
	movl	-12(%rbp), %edx	# newweapon, tmp198
	addq	$28, %rdx	#, tmp199
	movl	12(%rax,%rdx,4), %eax	# player_104(D)->weaponowned[newweapon_85], _43
# p_user.c:307: 	if (player->weaponowned[newweapon]
	.loc 1 307 5
	testl	%eax, %eax	# _43
	je	.L39	#,
# p_user.c:308: 	    && newweapon != player->readyweapon)
	.loc 1 308 28
	movq	-24(%rbp), %rax	# player, tmp200
	movl	116(%rax), %eax	# player_104(D)->readyweapon, _44
# p_user.c:308: 	    && newweapon != player->readyweapon)
	.loc 1 308 6
	cmpl	%eax, -12(%rbp)	# _44, newweapon
	je	.L39	#,
# p_user.c:312: 	    if ((newweapon != wp_plasma
	.loc 1 312 9
	cmpl	$5, -12(%rbp)	#, newweapon
	je	.L43	#,
# p_user.c:313: 		 && newweapon != wp_bfg)
	.loc 1 313 4
	cmpl	$6, -12(%rbp)	#, newweapon
	jne	.L44	#,
.L43:
# p_user.c:314: 		|| (gamemode != shareware) )
	.loc 1 314 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.7_45
# p_user.c:314: 		|| (gamemode != shareware) )
	.loc 1 314 3
	testl	%eax, %eax	# gamemode.7_45
	je	.L39	#,
.L44:
# p_user.c:316: 		player->pendingweapon = newweapon;
	.loc 1 316 25
	movq	-24(%rbp), %rax	# player, tmp201
	movl	-12(%rbp), %edx	# newweapon, tmp202
	movl	%edx, 120(%rax)	# tmp202, player_104(D)->pendingweapon
.L39:
# p_user.c:322:     if (cmd->buttons & BT_USE)
	.loc 1 322 12
	movq	-8(%rbp), %rax	# cmd, tmp203
	movzbl	7(%rax), %eax	# cmd_107->buttons, _46
# p_user.c:322:     if (cmd->buttons & BT_USE)
	.loc 1 322 22
	movzbl	%al, %eax	# _46, _47
	andl	$2, %eax	#, _48
# p_user.c:322:     if (cmd->buttons & BT_USE)
	.loc 1 322 8
	testl	%eax, %eax	# _48
	je	.L45	#,
# p_user.c:324: 	if (!player->usedown)
	.loc 1 324 13
	movq	-24(%rbp), %rax	# player, tmp204
	movl	196(%rax), %eax	# player_104(D)->usedown, _49
# p_user.c:324: 	if (!player->usedown)
	.loc 1 324 5
	testl	%eax, %eax	# _49
	jne	.L46	#,
# p_user.c:326: 	    P_UseLines (player);
	.loc 1 326 6
	movq	-24(%rbp), %rax	# player, tmp205
	movq	%rax, %rdi	# tmp205,
	call	P_UseLines@PLT	#
# p_user.c:327: 	    player->usedown = true;
	.loc 1 327 22
	movq	-24(%rbp), %rax	# player, tmp206
	movl	$1, 196(%rax)	#, player_104(D)->usedown
	jmp	.L46	#
.L45:
# p_user.c:331: 	player->usedown = false;
	.loc 1 331 18
	movq	-24(%rbp), %rax	# player, tmp207
	movl	$0, 196(%rax)	#, player_104(D)->usedown
.L46:
# p_user.c:334:     P_MovePsprites (player);
	.loc 1 334 5
	movq	-24(%rbp), %rax	# player, tmp208
	movq	%rax, %rdi	# tmp208,
	call	P_MovePsprites@PLT	#
# p_user.c:339:     if (player->powers[pw_strength])
	.loc 1 339 23
	movq	-24(%rbp), %rax	# player, tmp209
	movl	52(%rax), %eax	# player_104(D)->powers[1], _50
# p_user.c:339:     if (player->powers[pw_strength])
	.loc 1 339 8
	testl	%eax, %eax	# _50
	je	.L47	#,
# p_user.c:340: 	player->powers[pw_strength]++;	
	.loc 1 340 16
	movq	-24(%rbp), %rax	# player, tmp210
	movl	52(%rax), %eax	# player_104(D)->powers[1], _51
# p_user.c:340: 	player->powers[pw_strength]++;	
	.loc 1 340 29
	leal	1(%rax), %edx	#, _52
	movq	-24(%rbp), %rax	# player, tmp211
	movl	%edx, 52(%rax)	# _52, player_104(D)->powers[1]
.L47:
# p_user.c:342:     if (player->powers[pw_invulnerability])
	.loc 1 342 23
	movq	-24(%rbp), %rax	# player, tmp212
	movl	48(%rax), %eax	# player_104(D)->powers[0], _53
# p_user.c:342:     if (player->powers[pw_invulnerability])
	.loc 1 342 8
	testl	%eax, %eax	# _53
	je	.L48	#,
# p_user.c:343: 	player->powers[pw_invulnerability]--;
	.loc 1 343 16
	movq	-24(%rbp), %rax	# player, tmp213
	movl	48(%rax), %eax	# player_104(D)->powers[0], _54
# p_user.c:343: 	player->powers[pw_invulnerability]--;
	.loc 1 343 36
	leal	-1(%rax), %edx	#, _55
	movq	-24(%rbp), %rax	# player, tmp214
	movl	%edx, 48(%rax)	# _55, player_104(D)->powers[0]
.L48:
# p_user.c:345:     if (player->powers[pw_invisibility])
	.loc 1 345 23
	movq	-24(%rbp), %rax	# player, tmp215
	movl	56(%rax), %eax	# player_104(D)->powers[2], _56
# p_user.c:345:     if (player->powers[pw_invisibility])
	.loc 1 345 8
	testl	%eax, %eax	# _56
	je	.L49	#,
# p_user.c:346: 	if (! --player->powers[pw_invisibility] )
	.loc 1 346 24
	movq	-24(%rbp), %rax	# player, tmp216
	movl	56(%rax), %eax	# player_104(D)->powers[2], _57
# p_user.c:346: 	if (! --player->powers[pw_invisibility] )
	.loc 1 346 8
	leal	-1(%rax), %edx	#, _58
# p_user.c:346: 	if (! --player->powers[pw_invisibility] )
	.loc 1 346 5
	movq	-24(%rbp), %rax	# player, tmp217
	movl	%edx, 56(%rax)	# _58, player_104(D)->powers[2]
# p_user.c:346: 	if (! --player->powers[pw_invisibility] )
	.loc 1 346 24
	movq	-24(%rbp), %rax	# player, tmp218
	movl	56(%rax), %eax	# player_104(D)->powers[2], _59
# p_user.c:346: 	if (! --player->powers[pw_invisibility] )
	.loc 1 346 5
	testl	%eax, %eax	# _59
	jne	.L49	#,
# p_user.c:347: 	    player->mo->flags &= ~MF_SHADOW;
	.loc 1 347 12
	movq	-24(%rbp), %rax	# player, tmp219
	movq	(%rax), %rax	# player_104(D)->mo, _60
# p_user.c:347: 	    player->mo->flags &= ~MF_SHADOW;
	.loc 1 347 16
	movl	160(%rax), %edx	# _60->flags, _61
# p_user.c:347: 	    player->mo->flags &= ~MF_SHADOW;
	.loc 1 347 12
	movq	-24(%rbp), %rax	# player, tmp220
	movq	(%rax), %rax	# player_104(D)->mo, _62
# p_user.c:347: 	    player->mo->flags &= ~MF_SHADOW;
	.loc 1 347 24
	andl	$-262145, %edx	#, _63
	movl	%edx, 160(%rax)	# _63, _62->flags
.L49:
# p_user.c:349:     if (player->powers[pw_infrared])
	.loc 1 349 23
	movq	-24(%rbp), %rax	# player, tmp221
	movl	68(%rax), %eax	# player_104(D)->powers[5], _64
# p_user.c:349:     if (player->powers[pw_infrared])
	.loc 1 349 8
	testl	%eax, %eax	# _64
	je	.L50	#,
# p_user.c:350: 	player->powers[pw_infrared]--;
	.loc 1 350 16
	movq	-24(%rbp), %rax	# player, tmp222
	movl	68(%rax), %eax	# player_104(D)->powers[5], _65
# p_user.c:350: 	player->powers[pw_infrared]--;
	.loc 1 350 29
	leal	-1(%rax), %edx	#, _66
	movq	-24(%rbp), %rax	# player, tmp223
	movl	%edx, 68(%rax)	# _66, player_104(D)->powers[5]
.L50:
# p_user.c:352:     if (player->powers[pw_ironfeet])
	.loc 1 352 23
	movq	-24(%rbp), %rax	# player, tmp224
	movl	60(%rax), %eax	# player_104(D)->powers[3], _67
# p_user.c:352:     if (player->powers[pw_ironfeet])
	.loc 1 352 8
	testl	%eax, %eax	# _67
	je	.L51	#,
# p_user.c:353: 	player->powers[pw_ironfeet]--;
	.loc 1 353 16
	movq	-24(%rbp), %rax	# player, tmp225
	movl	60(%rax), %eax	# player_104(D)->powers[3], _68
# p_user.c:353: 	player->powers[pw_ironfeet]--;
	.loc 1 353 29
	leal	-1(%rax), %edx	#, _69
	movq	-24(%rbp), %rax	# player, tmp226
	movl	%edx, 60(%rax)	# _69, player_104(D)->powers[3]
.L51:
# p_user.c:355:     if (player->damagecount)
	.loc 1 355 15
	movq	-24(%rbp), %rax	# player, tmp227
	movl	232(%rax), %eax	# player_104(D)->damagecount, _70
# p_user.c:355:     if (player->damagecount)
	.loc 1 355 8
	testl	%eax, %eax	# _70
	je	.L52	#,
# p_user.c:356: 	player->damagecount--;
	.loc 1 356 8
	movq	-24(%rbp), %rax	# player, tmp228
	movl	232(%rax), %eax	# player_104(D)->damagecount, _71
# p_user.c:356: 	player->damagecount--;
	.loc 1 356 21
	leal	-1(%rax), %edx	#, _72
	movq	-24(%rbp), %rax	# player, tmp229
	movl	%edx, 232(%rax)	# _72, player_104(D)->damagecount
.L52:
# p_user.c:358:     if (player->bonuscount)
	.loc 1 358 15
	movq	-24(%rbp), %rax	# player, tmp230
	movl	236(%rax), %eax	# player_104(D)->bonuscount, _73
# p_user.c:358:     if (player->bonuscount)
	.loc 1 358 8
	testl	%eax, %eax	# _73
	je	.L53	#,
# p_user.c:359: 	player->bonuscount--;
	.loc 1 359 8
	movq	-24(%rbp), %rax	# player, tmp231
	movl	236(%rax), %eax	# player_104(D)->bonuscount, _74
# p_user.c:359: 	player->bonuscount--;
	.loc 1 359 20
	leal	-1(%rax), %edx	#, _75
	movq	-24(%rbp), %rax	# player, tmp232
	movl	%edx, 236(%rax)	# _75, player_104(D)->bonuscount
.L53:
# p_user.c:363:     if (player->powers[pw_invulnerability])
	.loc 1 363 23
	movq	-24(%rbp), %rax	# player, tmp233
	movl	48(%rax), %eax	# player_104(D)->powers[0], _76
# p_user.c:363:     if (player->powers[pw_invulnerability])
	.loc 1 363 8
	testl	%eax, %eax	# _76
	je	.L54	#,
# p_user.c:365: 	if (player->powers[pw_invulnerability] > 4*32
	.loc 1 365 20
	movq	-24(%rbp), %rax	# player, tmp234
	movl	48(%rax), %eax	# player_104(D)->powers[0], _77
# p_user.c:365: 	if (player->powers[pw_invulnerability] > 4*32
	.loc 1 365 5
	cmpl	$128, %eax	#, _77
	jg	.L55	#,
# p_user.c:366: 	    || (player->powers[pw_invulnerability]&8) )
	.loc 1 366 24
	movq	-24(%rbp), %rax	# player, tmp235
	movl	48(%rax), %eax	# player_104(D)->powers[0], _78
# p_user.c:366: 	    || (player->powers[pw_invulnerability]&8) )
	.loc 1 366 44
	andl	$8, %eax	#, _79
# p_user.c:366: 	    || (player->powers[pw_invulnerability]&8) )
	.loc 1 366 6
	testl	%eax, %eax	# _79
	je	.L56	#,
.L55:
# p_user.c:367: 	    player->fixedcolormap = INVERSECOLORMAP;
	.loc 1 367 28
	movq	-24(%rbp), %rax	# player, tmp236
	movl	$32, 252(%rax)	#, player_104(D)->fixedcolormap
	jmp	.L29	#
.L56:
# p_user.c:369: 	    player->fixedcolormap = 0;
	.loc 1 369 28
	movq	-24(%rbp), %rax	# player, tmp237
	movl	$0, 252(%rax)	#, player_104(D)->fixedcolormap
	jmp	.L29	#
.L54:
# p_user.c:371:     else if (player->powers[pw_infrared])	
	.loc 1 371 28
	movq	-24(%rbp), %rax	# player, tmp238
	movl	68(%rax), %eax	# player_104(D)->powers[5], _80
# p_user.c:371:     else if (player->powers[pw_infrared])	
	.loc 1 371 13
	testl	%eax, %eax	# _80
	je	.L58	#,
# p_user.c:373: 	if (player->powers[pw_infrared] > 4*32
	.loc 1 373 20
	movq	-24(%rbp), %rax	# player, tmp239
	movl	68(%rax), %eax	# player_104(D)->powers[5], _81
# p_user.c:373: 	if (player->powers[pw_infrared] > 4*32
	.loc 1 373 5
	cmpl	$128, %eax	#, _81
	jg	.L59	#,
# p_user.c:374: 	    || (player->powers[pw_infrared]&8) )
	.loc 1 374 24
	movq	-24(%rbp), %rax	# player, tmp240
	movl	68(%rax), %eax	# player_104(D)->powers[5], _82
# p_user.c:374: 	    || (player->powers[pw_infrared]&8) )
	.loc 1 374 37
	andl	$8, %eax	#, _83
# p_user.c:374: 	    || (player->powers[pw_infrared]&8) )
	.loc 1 374 6
	testl	%eax, %eax	# _83
	je	.L60	#,
.L59:
# p_user.c:377: 	    player->fixedcolormap = 1;
	.loc 1 377 28
	movq	-24(%rbp), %rax	# player, tmp241
	movl	$1, 252(%rax)	#, player_104(D)->fixedcolormap
	jmp	.L29	#
.L60:
# p_user.c:380: 	    player->fixedcolormap = 0;
	.loc 1 380 28
	movq	-24(%rbp), %rax	# player, tmp242
	movl	$0, 252(%rax)	#, player_104(D)->fixedcolormap
	jmp	.L29	#
.L58:
# p_user.c:383: 	player->fixedcolormap = 0;
	.loc 1 383 24
	movq	-24(%rbp), %rax	# player, tmp243
	movl	$0, 252(%rax)	#, player_104(D)->fixedcolormap
.L29:
# p_user.c:384: }
	.loc 1 384 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_PlayerThink, .-P_PlayerThink
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "doomtype.h"
	.file 4 "d_event.h"
	.file 5 "m_fixed.h"
	.file 6 "tables.h"
	.file 7 "d_think.h"
	.file 8 "doomdata.h"
	.file 9 "info.h"
	.file 10 "p_mobj.h"
	.file 11 "r_defs.h"
	.file 12 "d_player.h"
	.file 13 "p_pspr.h"
	.file 14 "d_ticcmd.h"
	.file 15 "doomstat.h"
	.file 16 "p_local.h"
	.file 17 "p_spec.h"
	.file 18 "r_main.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x30ed
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF1519
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.long	0x51
	.long	0x3e
	.uleb128 0xd
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	0x2e
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x19
	.long	0x4a
	.uleb128 0x10
	.long	.LASF1511
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	0x4a
	.uleb128 0x8
	.long	0x6b
	.byte	0x2
	.byte	0x27
	.byte	0x1
	.long	0xce
	.uleb128 0x2
	.long	.LASF10
	.byte	0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x1
	.uleb128 0x2
	.long	.LASF12
	.byte	0x2
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF33
	.byte	0x2
	.byte	0x2f
	.byte	0x3
	.long	0xa3
	.uleb128 0x8
	.long	0x6b
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0x111
	.uleb128 0x2
	.long	.LASF15
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x1
	.uleb128 0x2
	.long	.LASF17
	.byte	0x2
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3
	.uleb128 0x2
	.long	.LASF19
	.byte	0x4
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.uleb128 0x2
	.long	.LASF21
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x6b
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x160
	.uleb128 0x2
	.long	.LASF22
	.byte	0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x1
	.uleb128 0x2
	.long	.LASF24
	.byte	0x2
	.uleb128 0x2
	.long	.LASF25
	.byte	0x3
	.uleb128 0x2
	.long	.LASF26
	.byte	0x4
	.uleb128 0x2
	.long	.LASF27
	.byte	0x5
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.uleb128 0x2
	.long	.LASF29
	.byte	0x7
	.uleb128 0x2
	.long	.LASF30
	.byte	0x8
	.uleb128 0x2
	.long	.LASF31
	.byte	0x9
	.uleb128 0x2
	.long	.LASF32
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0x111
	.uleb128 0x8
	.long	0x6b
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x19d
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
	.byte	0
	.uleb128 0x8
	.long	0x6b
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x1d4
	.uleb128 0x2
	.long	.LASF41
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x1
	.uleb128 0x2
	.long	.LASF43
	.byte	0x2
	.uleb128 0x2
	.long	.LASF44
	.byte	0x3
	.uleb128 0x2
	.long	.LASF45
	.byte	0x4
	.uleb128 0x2
	.long	.LASF46
	.byte	0x5
	.uleb128 0x2
	.long	.LASF47
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x6b
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0x1ed
	.uleb128 0x2
	.long	.LASF48
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF50
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0x1d4
	.uleb128 0x5
	.long	.LASF51
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x74
	.uleb128 0x8
	.long	0x6b
	.byte	0x4
	.byte	0x49
	.byte	0x1
	.long	0x254
	.uleb128 0x2
	.long	.LASF52
	.byte	0x1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x2
	.uleb128 0x2
	.long	.LASF54
	.byte	0x80
	.uleb128 0x2
	.long	.LASF55
	.byte	0x3
	.uleb128 0x2
	.long	.LASF56
	.byte	0x4
	.uleb128 0x2
	.long	.LASF57
	.byte	0x38
	.uleb128 0x2
	.long	.LASF58
	.byte	0x3
	.uleb128 0x2
	.long	.LASF59
	.byte	0x1
	.uleb128 0x2
	.long	.LASF60
	.byte	0x2
	.uleb128 0x2
	.long	.LASF61
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF62
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF63
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF64
	.uleb128 0x5
	.long	.LASF65
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.long	0x90
	.uleb128 0xb
	.long	0x262
	.long	0x27f
	.uleb128 0x1a
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0x12
	.long	.LASF66
	.byte	0x6
	.byte	0x3a
	.byte	0x12
	.long	0x26e
	.uleb128 0x12
	.long	.LASF67
	.byte	0x6
	.byte	0x3d
	.byte	0x12
	.long	0x297
	.uleb128 0x7
	.long	0x262
	.uleb128 0x5
	.long	.LASF68
	.byte	0x6
	.byte	0x4e
	.byte	0x12
	.long	0x6b
	.uleb128 0x5
	.long	.LASF69
	.byte	0x7
	.byte	0x29
	.byte	0x11
	.long	0x2b4
	.uleb128 0x7
	.long	0x2b9
	.uleb128 0x21
	.long	0x2c0
	.uleb128 0x22
	.byte	0
	.uleb128 0x5
	.long	.LASF70
	.byte	0x7
	.byte	0x2a
	.byte	0x11
	.long	0x2cc
	.uleb128 0x7
	.long	0x2d1
	.uleb128 0x1b
	.long	0x2dc
	.uleb128 0x9
	.long	0x72
	.byte	0
	.uleb128 0x5
	.long	.LASF71
	.byte	0x7
	.byte	0x2b
	.byte	0x11
	.long	0x2e8
	.uleb128 0x7
	.long	0x2ed
	.uleb128 0x1b
	.long	0x2fd
	.uleb128 0x9
	.long	0x72
	.uleb128 0x9
	.long	0x72
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.long	0x327
	.uleb128 0x1c
	.long	.LASF72
	.byte	0x2f
	.long	0x2c0
	.uleb128 0x24
	.string	"acv"
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0x2a8
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x31
	.long	0x2dc
	.byte	0
	.uleb128 0x5
	.long	.LASF74
	.byte	0x7
	.byte	0x33
	.byte	0x3
	.long	0x2fd
	.uleb128 0x5
	.long	.LASF75
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.long	0x327
	.uleb128 0x13
	.long	.LASF1393
	.byte	0x18
	.byte	0x7
	.byte	0x40
	.long	0x373
	.uleb128 0x3
	.long	.LASF76
	.byte	0x7
	.byte	0x42
	.byte	0x17
	.long	0x373
	.byte	0
	.uleb128 0x3
	.long	.LASF77
	.byte	0x7
	.byte	0x43
	.byte	0x17
	.long	0x373
	.byte	0x8
	.uleb128 0x3
	.long	.LASF78
	.byte	0x7
	.byte	0x44
	.byte	0xe
	.long	0x333
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x33f
	.uleb128 0x5
	.long	.LASF79
	.byte	0x7
	.byte	0x46
	.byte	0x3
	.long	0x33f
	.uleb128 0xb
	.long	0x89
	.long	0x394
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x3da
	.uleb128 0x6
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x89
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF80
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF81
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x89
	.byte	0x6
	.uleb128 0x3
	.long	.LASF82
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF83
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x394
	.uleb128 0x8
	.long	0x6b
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x735
	.uleb128 0x2
	.long	.LASF84
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x1
	.uleb128 0x2
	.long	.LASF86
	.byte	0x2
	.uleb128 0x2
	.long	.LASF87
	.byte	0x3
	.uleb128 0x2
	.long	.LASF88
	.byte	0x4
	.uleb128 0x2
	.long	.LASF89
	.byte	0x5
	.uleb128 0x2
	.long	.LASF90
	.byte	0x6
	.uleb128 0x2
	.long	.LASF91
	.byte	0x7
	.uleb128 0x2
	.long	.LASF92
	.byte	0x8
	.uleb128 0x2
	.long	.LASF93
	.byte	0x9
	.uleb128 0x2
	.long	.LASF94
	.byte	0xa
	.uleb128 0x2
	.long	.LASF95
	.byte	0xb
	.uleb128 0x2
	.long	.LASF96
	.byte	0xc
	.uleb128 0x2
	.long	.LASF97
	.byte	0xd
	.uleb128 0x2
	.long	.LASF98
	.byte	0xe
	.uleb128 0x2
	.long	.LASF99
	.byte	0xf
	.uleb128 0x2
	.long	.LASF100
	.byte	0x10
	.uleb128 0x2
	.long	.LASF101
	.byte	0x11
	.uleb128 0x2
	.long	.LASF102
	.byte	0x12
	.uleb128 0x2
	.long	.LASF103
	.byte	0x13
	.uleb128 0x2
	.long	.LASF104
	.byte	0x14
	.uleb128 0x2
	.long	.LASF105
	.byte	0x15
	.uleb128 0x2
	.long	.LASF106
	.byte	0x16
	.uleb128 0x2
	.long	.LASF107
	.byte	0x17
	.uleb128 0x2
	.long	.LASF108
	.byte	0x18
	.uleb128 0x2
	.long	.LASF109
	.byte	0x19
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF113
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF114
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF115
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF116
	.byte	0x20
	.uleb128 0x2
	.long	.LASF117
	.byte	0x21
	.uleb128 0x2
	.long	.LASF118
	.byte	0x22
	.uleb128 0x2
	.long	.LASF119
	.byte	0x23
	.uleb128 0x2
	.long	.LASF120
	.byte	0x24
	.uleb128 0x2
	.long	.LASF121
	.byte	0x25
	.uleb128 0x2
	.long	.LASF122
	.byte	0x26
	.uleb128 0x2
	.long	.LASF123
	.byte	0x27
	.uleb128 0x2
	.long	.LASF124
	.byte	0x28
	.uleb128 0x2
	.long	.LASF125
	.byte	0x29
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF129
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF130
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF131
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF132
	.byte	0x30
	.uleb128 0x2
	.long	.LASF133
	.byte	0x31
	.uleb128 0x2
	.long	.LASF134
	.byte	0x32
	.uleb128 0x2
	.long	.LASF135
	.byte	0x33
	.uleb128 0x2
	.long	.LASF136
	.byte	0x34
	.uleb128 0x2
	.long	.LASF137
	.byte	0x35
	.uleb128 0x2
	.long	.LASF138
	.byte	0x36
	.uleb128 0x2
	.long	.LASF139
	.byte	0x37
	.uleb128 0x2
	.long	.LASF140
	.byte	0x38
	.uleb128 0x2
	.long	.LASF141
	.byte	0x39
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF144
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF145
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF146
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF147
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF148
	.byte	0x40
	.uleb128 0x2
	.long	.LASF149
	.byte	0x41
	.uleb128 0x2
	.long	.LASF150
	.byte	0x42
	.uleb128 0x2
	.long	.LASF151
	.byte	0x43
	.uleb128 0x2
	.long	.LASF152
	.byte	0x44
	.uleb128 0x2
	.long	.LASF153
	.byte	0x45
	.uleb128 0x2
	.long	.LASF154
	.byte	0x46
	.uleb128 0x2
	.long	.LASF155
	.byte	0x47
	.uleb128 0x2
	.long	.LASF156
	.byte	0x48
	.uleb128 0x2
	.long	.LASF157
	.byte	0x49
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF160
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF161
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF162
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF163
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF164
	.byte	0x50
	.uleb128 0x2
	.long	.LASF165
	.byte	0x51
	.uleb128 0x2
	.long	.LASF166
	.byte	0x52
	.uleb128 0x2
	.long	.LASF167
	.byte	0x53
	.uleb128 0x2
	.long	.LASF168
	.byte	0x54
	.uleb128 0x2
	.long	.LASF169
	.byte	0x55
	.uleb128 0x2
	.long	.LASF170
	.byte	0x56
	.uleb128 0x2
	.long	.LASF171
	.byte	0x57
	.uleb128 0x2
	.long	.LASF172
	.byte	0x58
	.uleb128 0x2
	.long	.LASF173
	.byte	0x59
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF176
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF177
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF178
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF179
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF180
	.byte	0x60
	.uleb128 0x2
	.long	.LASF181
	.byte	0x61
	.uleb128 0x2
	.long	.LASF182
	.byte	0x62
	.uleb128 0x2
	.long	.LASF183
	.byte	0x63
	.uleb128 0x2
	.long	.LASF184
	.byte	0x64
	.uleb128 0x2
	.long	.LASF185
	.byte	0x65
	.uleb128 0x2
	.long	.LASF186
	.byte	0x66
	.uleb128 0x2
	.long	.LASF187
	.byte	0x67
	.uleb128 0x2
	.long	.LASF188
	.byte	0x68
	.uleb128 0x2
	.long	.LASF189
	.byte	0x69
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF192
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF193
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF194
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF195
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF196
	.byte	0x70
	.uleb128 0x2
	.long	.LASF197
	.byte	0x71
	.uleb128 0x2
	.long	.LASF198
	.byte	0x72
	.uleb128 0x2
	.long	.LASF199
	.byte	0x73
	.uleb128 0x2
	.long	.LASF200
	.byte	0x74
	.uleb128 0x2
	.long	.LASF201
	.byte	0x75
	.uleb128 0x2
	.long	.LASF202
	.byte	0x76
	.uleb128 0x2
	.long	.LASF203
	.byte	0x77
	.uleb128 0x2
	.long	.LASF204
	.byte	0x78
	.uleb128 0x2
	.long	.LASF205
	.byte	0x79
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF208
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF209
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF210
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF211
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF212
	.byte	0x80
	.uleb128 0x2
	.long	.LASF213
	.byte	0x81
	.uleb128 0x2
	.long	.LASF214
	.byte	0x82
	.uleb128 0x2
	.long	.LASF215
	.byte	0x83
	.uleb128 0x2
	.long	.LASF216
	.byte	0x84
	.uleb128 0x2
	.long	.LASF217
	.byte	0x85
	.uleb128 0x2
	.long	.LASF218
	.byte	0x86
	.uleb128 0x2
	.long	.LASF219
	.byte	0x87
	.uleb128 0x2
	.long	.LASF220
	.byte	0x88
	.uleb128 0x2
	.long	.LASF221
	.byte	0x89
	.uleb128 0x2
	.long	.LASF222
	.byte	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF223
	.byte	0x9
	.byte	0xac
	.byte	0x3
	.long	0x3e6
	.uleb128 0x8
	.long	0x6b
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x20c6
	.uleb128 0x2
	.long	.LASF224
	.byte	0
	.uleb128 0x2
	.long	.LASF225
	.byte	0x1
	.uleb128 0x2
	.long	.LASF226
	.byte	0x2
	.uleb128 0x2
	.long	.LASF227
	.byte	0x3
	.uleb128 0x2
	.long	.LASF228
	.byte	0x4
	.uleb128 0x2
	.long	.LASF229
	.byte	0x5
	.uleb128 0x2
	.long	.LASF230
	.byte	0x6
	.uleb128 0x2
	.long	.LASF231
	.byte	0x7
	.uleb128 0x2
	.long	.LASF232
	.byte	0x8
	.uleb128 0x2
	.long	.LASF233
	.byte	0x9
	.uleb128 0x2
	.long	.LASF234
	.byte	0xa
	.uleb128 0x2
	.long	.LASF235
	.byte	0xb
	.uleb128 0x2
	.long	.LASF236
	.byte	0xc
	.uleb128 0x2
	.long	.LASF237
	.byte	0xd
	.uleb128 0x2
	.long	.LASF238
	.byte	0xe
	.uleb128 0x2
	.long	.LASF239
	.byte	0xf
	.uleb128 0x2
	.long	.LASF240
	.byte	0x10
	.uleb128 0x2
	.long	.LASF241
	.byte	0x11
	.uleb128 0x2
	.long	.LASF242
	.byte	0x12
	.uleb128 0x2
	.long	.LASF243
	.byte	0x13
	.uleb128 0x2
	.long	.LASF244
	.byte	0x14
	.uleb128 0x2
	.long	.LASF245
	.byte	0x15
	.uleb128 0x2
	.long	.LASF246
	.byte	0x16
	.uleb128 0x2
	.long	.LASF247
	.byte	0x17
	.uleb128 0x2
	.long	.LASF248
	.byte	0x18
	.uleb128 0x2
	.long	.LASF249
	.byte	0x19
	.uleb128 0x2
	.long	.LASF250
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF252
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF253
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF254
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF255
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF256
	.byte	0x20
	.uleb128 0x2
	.long	.LASF257
	.byte	0x21
	.uleb128 0x2
	.long	.LASF258
	.byte	0x22
	.uleb128 0x2
	.long	.LASF259
	.byte	0x23
	.uleb128 0x2
	.long	.LASF260
	.byte	0x24
	.uleb128 0x2
	.long	.LASF261
	.byte	0x25
	.uleb128 0x2
	.long	.LASF262
	.byte	0x26
	.uleb128 0x2
	.long	.LASF263
	.byte	0x27
	.uleb128 0x2
	.long	.LASF264
	.byte	0x28
	.uleb128 0x2
	.long	.LASF265
	.byte	0x29
	.uleb128 0x2
	.long	.LASF266
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF268
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF269
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF270
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF271
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF272
	.byte	0x30
	.uleb128 0x2
	.long	.LASF273
	.byte	0x31
	.uleb128 0x2
	.long	.LASF274
	.byte	0x32
	.uleb128 0x2
	.long	.LASF275
	.byte	0x33
	.uleb128 0x2
	.long	.LASF276
	.byte	0x34
	.uleb128 0x2
	.long	.LASF277
	.byte	0x35
	.uleb128 0x2
	.long	.LASF278
	.byte	0x36
	.uleb128 0x2
	.long	.LASF279
	.byte	0x37
	.uleb128 0x2
	.long	.LASF280
	.byte	0x38
	.uleb128 0x2
	.long	.LASF281
	.byte	0x39
	.uleb128 0x2
	.long	.LASF282
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF284
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF285
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF286
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF287
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF288
	.byte	0x40
	.uleb128 0x2
	.long	.LASF289
	.byte	0x41
	.uleb128 0x2
	.long	.LASF290
	.byte	0x42
	.uleb128 0x2
	.long	.LASF291
	.byte	0x43
	.uleb128 0x2
	.long	.LASF292
	.byte	0x44
	.uleb128 0x2
	.long	.LASF293
	.byte	0x45
	.uleb128 0x2
	.long	.LASF294
	.byte	0x46
	.uleb128 0x2
	.long	.LASF295
	.byte	0x47
	.uleb128 0x2
	.long	.LASF296
	.byte	0x48
	.uleb128 0x2
	.long	.LASF297
	.byte	0x49
	.uleb128 0x2
	.long	.LASF298
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF300
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF301
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF302
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF303
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF304
	.byte	0x50
	.uleb128 0x2
	.long	.LASF305
	.byte	0x51
	.uleb128 0x2
	.long	.LASF306
	.byte	0x52
	.uleb128 0x2
	.long	.LASF307
	.byte	0x53
	.uleb128 0x2
	.long	.LASF308
	.byte	0x54
	.uleb128 0x2
	.long	.LASF309
	.byte	0x55
	.uleb128 0x2
	.long	.LASF310
	.byte	0x56
	.uleb128 0x2
	.long	.LASF311
	.byte	0x57
	.uleb128 0x2
	.long	.LASF312
	.byte	0x58
	.uleb128 0x2
	.long	.LASF313
	.byte	0x59
	.uleb128 0x2
	.long	.LASF314
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF316
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF317
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF318
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF319
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF320
	.byte	0x60
	.uleb128 0x2
	.long	.LASF321
	.byte	0x61
	.uleb128 0x2
	.long	.LASF322
	.byte	0x62
	.uleb128 0x2
	.long	.LASF323
	.byte	0x63
	.uleb128 0x2
	.long	.LASF324
	.byte	0x64
	.uleb128 0x2
	.long	.LASF325
	.byte	0x65
	.uleb128 0x2
	.long	.LASF326
	.byte	0x66
	.uleb128 0x2
	.long	.LASF327
	.byte	0x67
	.uleb128 0x2
	.long	.LASF328
	.byte	0x68
	.uleb128 0x2
	.long	.LASF329
	.byte	0x69
	.uleb128 0x2
	.long	.LASF330
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF332
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF333
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF334
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF335
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF336
	.byte	0x70
	.uleb128 0x2
	.long	.LASF337
	.byte	0x71
	.uleb128 0x2
	.long	.LASF338
	.byte	0x72
	.uleb128 0x2
	.long	.LASF339
	.byte	0x73
	.uleb128 0x2
	.long	.LASF340
	.byte	0x74
	.uleb128 0x2
	.long	.LASF341
	.byte	0x75
	.uleb128 0x2
	.long	.LASF342
	.byte	0x76
	.uleb128 0x2
	.long	.LASF343
	.byte	0x77
	.uleb128 0x2
	.long	.LASF344
	.byte	0x78
	.uleb128 0x2
	.long	.LASF345
	.byte	0x79
	.uleb128 0x2
	.long	.LASF346
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF348
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF349
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF350
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF351
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF352
	.byte	0x80
	.uleb128 0x2
	.long	.LASF353
	.byte	0x81
	.uleb128 0x2
	.long	.LASF354
	.byte	0x82
	.uleb128 0x2
	.long	.LASF355
	.byte	0x83
	.uleb128 0x2
	.long	.LASF356
	.byte	0x84
	.uleb128 0x2
	.long	.LASF357
	.byte	0x85
	.uleb128 0x2
	.long	.LASF358
	.byte	0x86
	.uleb128 0x2
	.long	.LASF359
	.byte	0x87
	.uleb128 0x2
	.long	.LASF360
	.byte	0x88
	.uleb128 0x2
	.long	.LASF361
	.byte	0x89
	.uleb128 0x2
	.long	.LASF362
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF364
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF365
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF366
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF367
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF368
	.byte	0x90
	.uleb128 0x2
	.long	.LASF369
	.byte	0x91
	.uleb128 0x2
	.long	.LASF370
	.byte	0x92
	.uleb128 0x2
	.long	.LASF371
	.byte	0x93
	.uleb128 0x2
	.long	.LASF372
	.byte	0x94
	.uleb128 0x2
	.long	.LASF373
	.byte	0x95
	.uleb128 0x2
	.long	.LASF374
	.byte	0x96
	.uleb128 0x2
	.long	.LASF375
	.byte	0x97
	.uleb128 0x2
	.long	.LASF376
	.byte	0x98
	.uleb128 0x2
	.long	.LASF377
	.byte	0x99
	.uleb128 0x2
	.long	.LASF378
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF380
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF381
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF382
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF383
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF390
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF391
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF392
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF393
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF394
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF395
	.byte	0xab
	.uleb128 0x2
	.long	.LASF396
	.byte	0xac
	.uleb128 0x2
	.long	.LASF397
	.byte	0xad
	.uleb128 0x2
	.long	.LASF398
	.byte	0xae
	.uleb128 0x2
	.long	.LASF399
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF406
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF407
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF408
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF409
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF410
	.byte	0xba
	.uleb128 0x2
	.long	.LASF411
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF412
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF413
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF414
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF415
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF422
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF423
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF424
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF425
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF426
	.byte	0xca
	.uleb128 0x2
	.long	.LASF427
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF428
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF429
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF430
	.byte	0xce
	.uleb128 0x2
	.long	.LASF431
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF438
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF439
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF440
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF441
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF442
	.byte	0xda
	.uleb128 0x2
	.long	.LASF443
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF444
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF445
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF446
	.byte	0xde
	.uleb128 0x2
	.long	.LASF447
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF454
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF455
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF456
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF457
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF458
	.byte	0xea
	.uleb128 0x2
	.long	.LASF459
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF460
	.byte	0xec
	.uleb128 0x2
	.long	.LASF461
	.byte	0xed
	.uleb128 0x2
	.long	.LASF462
	.byte	0xee
	.uleb128 0x2
	.long	.LASF463
	.byte	0xef
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF470
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF471
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF472
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF473
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF474
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF475
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF476
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF477
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF478
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF479
	.byte	0xff
	.uleb128 0x1
	.long	.LASF480
	.value	0x100
	.uleb128 0x1
	.long	.LASF481
	.value	0x101
	.uleb128 0x1
	.long	.LASF482
	.value	0x102
	.uleb128 0x1
	.long	.LASF483
	.value	0x103
	.uleb128 0x1
	.long	.LASF484
	.value	0x104
	.uleb128 0x1
	.long	.LASF485
	.value	0x105
	.uleb128 0x1
	.long	.LASF486
	.value	0x106
	.uleb128 0x1
	.long	.LASF487
	.value	0x107
	.uleb128 0x1
	.long	.LASF488
	.value	0x108
	.uleb128 0x1
	.long	.LASF489
	.value	0x109
	.uleb128 0x1
	.long	.LASF490
	.value	0x10a
	.uleb128 0x1
	.long	.LASF491
	.value	0x10b
	.uleb128 0x1
	.long	.LASF492
	.value	0x10c
	.uleb128 0x1
	.long	.LASF493
	.value	0x10d
	.uleb128 0x1
	.long	.LASF494
	.value	0x10e
	.uleb128 0x1
	.long	.LASF495
	.value	0x10f
	.uleb128 0x1
	.long	.LASF496
	.value	0x110
	.uleb128 0x1
	.long	.LASF497
	.value	0x111
	.uleb128 0x1
	.long	.LASF498
	.value	0x112
	.uleb128 0x1
	.long	.LASF499
	.value	0x113
	.uleb128 0x1
	.long	.LASF500
	.value	0x114
	.uleb128 0x1
	.long	.LASF501
	.value	0x115
	.uleb128 0x1
	.long	.LASF502
	.value	0x116
	.uleb128 0x1
	.long	.LASF503
	.value	0x117
	.uleb128 0x1
	.long	.LASF504
	.value	0x118
	.uleb128 0x1
	.long	.LASF505
	.value	0x119
	.uleb128 0x1
	.long	.LASF506
	.value	0x11a
	.uleb128 0x1
	.long	.LASF507
	.value	0x11b
	.uleb128 0x1
	.long	.LASF508
	.value	0x11c
	.uleb128 0x1
	.long	.LASF509
	.value	0x11d
	.uleb128 0x1
	.long	.LASF510
	.value	0x11e
	.uleb128 0x1
	.long	.LASF511
	.value	0x11f
	.uleb128 0x1
	.long	.LASF512
	.value	0x120
	.uleb128 0x1
	.long	.LASF513
	.value	0x121
	.uleb128 0x1
	.long	.LASF514
	.value	0x122
	.uleb128 0x1
	.long	.LASF515
	.value	0x123
	.uleb128 0x1
	.long	.LASF516
	.value	0x124
	.uleb128 0x1
	.long	.LASF517
	.value	0x125
	.uleb128 0x1
	.long	.LASF518
	.value	0x126
	.uleb128 0x1
	.long	.LASF519
	.value	0x127
	.uleb128 0x1
	.long	.LASF520
	.value	0x128
	.uleb128 0x1
	.long	.LASF521
	.value	0x129
	.uleb128 0x1
	.long	.LASF522
	.value	0x12a
	.uleb128 0x1
	.long	.LASF523
	.value	0x12b
	.uleb128 0x1
	.long	.LASF524
	.value	0x12c
	.uleb128 0x1
	.long	.LASF525
	.value	0x12d
	.uleb128 0x1
	.long	.LASF526
	.value	0x12e
	.uleb128 0x1
	.long	.LASF527
	.value	0x12f
	.uleb128 0x1
	.long	.LASF528
	.value	0x130
	.uleb128 0x1
	.long	.LASF529
	.value	0x131
	.uleb128 0x1
	.long	.LASF530
	.value	0x132
	.uleb128 0x1
	.long	.LASF531
	.value	0x133
	.uleb128 0x1
	.long	.LASF532
	.value	0x134
	.uleb128 0x1
	.long	.LASF533
	.value	0x135
	.uleb128 0x1
	.long	.LASF534
	.value	0x136
	.uleb128 0x1
	.long	.LASF535
	.value	0x137
	.uleb128 0x1
	.long	.LASF536
	.value	0x138
	.uleb128 0x1
	.long	.LASF537
	.value	0x139
	.uleb128 0x1
	.long	.LASF538
	.value	0x13a
	.uleb128 0x1
	.long	.LASF539
	.value	0x13b
	.uleb128 0x1
	.long	.LASF540
	.value	0x13c
	.uleb128 0x1
	.long	.LASF541
	.value	0x13d
	.uleb128 0x1
	.long	.LASF542
	.value	0x13e
	.uleb128 0x1
	.long	.LASF543
	.value	0x13f
	.uleb128 0x1
	.long	.LASF544
	.value	0x140
	.uleb128 0x1
	.long	.LASF545
	.value	0x141
	.uleb128 0x1
	.long	.LASF546
	.value	0x142
	.uleb128 0x1
	.long	.LASF547
	.value	0x143
	.uleb128 0x1
	.long	.LASF548
	.value	0x144
	.uleb128 0x1
	.long	.LASF549
	.value	0x145
	.uleb128 0x1
	.long	.LASF550
	.value	0x146
	.uleb128 0x1
	.long	.LASF551
	.value	0x147
	.uleb128 0x1
	.long	.LASF552
	.value	0x148
	.uleb128 0x1
	.long	.LASF553
	.value	0x149
	.uleb128 0x1
	.long	.LASF554
	.value	0x14a
	.uleb128 0x1
	.long	.LASF555
	.value	0x14b
	.uleb128 0x1
	.long	.LASF556
	.value	0x14c
	.uleb128 0x1
	.long	.LASF557
	.value	0x14d
	.uleb128 0x1
	.long	.LASF558
	.value	0x14e
	.uleb128 0x1
	.long	.LASF559
	.value	0x14f
	.uleb128 0x1
	.long	.LASF560
	.value	0x150
	.uleb128 0x1
	.long	.LASF561
	.value	0x151
	.uleb128 0x1
	.long	.LASF562
	.value	0x152
	.uleb128 0x1
	.long	.LASF563
	.value	0x153
	.uleb128 0x1
	.long	.LASF564
	.value	0x154
	.uleb128 0x1
	.long	.LASF565
	.value	0x155
	.uleb128 0x1
	.long	.LASF566
	.value	0x156
	.uleb128 0x1
	.long	.LASF567
	.value	0x157
	.uleb128 0x1
	.long	.LASF568
	.value	0x158
	.uleb128 0x1
	.long	.LASF569
	.value	0x159
	.uleb128 0x1
	.long	.LASF570
	.value	0x15a
	.uleb128 0x1
	.long	.LASF571
	.value	0x15b
	.uleb128 0x1
	.long	.LASF572
	.value	0x15c
	.uleb128 0x1
	.long	.LASF573
	.value	0x15d
	.uleb128 0x1
	.long	.LASF574
	.value	0x15e
	.uleb128 0x1
	.long	.LASF575
	.value	0x15f
	.uleb128 0x1
	.long	.LASF576
	.value	0x160
	.uleb128 0x1
	.long	.LASF577
	.value	0x161
	.uleb128 0x1
	.long	.LASF578
	.value	0x162
	.uleb128 0x1
	.long	.LASF579
	.value	0x163
	.uleb128 0x1
	.long	.LASF580
	.value	0x164
	.uleb128 0x1
	.long	.LASF581
	.value	0x165
	.uleb128 0x1
	.long	.LASF582
	.value	0x166
	.uleb128 0x1
	.long	.LASF583
	.value	0x167
	.uleb128 0x1
	.long	.LASF584
	.value	0x168
	.uleb128 0x1
	.long	.LASF585
	.value	0x169
	.uleb128 0x1
	.long	.LASF586
	.value	0x16a
	.uleb128 0x1
	.long	.LASF587
	.value	0x16b
	.uleb128 0x1
	.long	.LASF588
	.value	0x16c
	.uleb128 0x1
	.long	.LASF589
	.value	0x16d
	.uleb128 0x1
	.long	.LASF590
	.value	0x16e
	.uleb128 0x1
	.long	.LASF591
	.value	0x16f
	.uleb128 0x1
	.long	.LASF592
	.value	0x170
	.uleb128 0x1
	.long	.LASF593
	.value	0x171
	.uleb128 0x1
	.long	.LASF594
	.value	0x172
	.uleb128 0x1
	.long	.LASF595
	.value	0x173
	.uleb128 0x1
	.long	.LASF596
	.value	0x174
	.uleb128 0x1
	.long	.LASF597
	.value	0x175
	.uleb128 0x1
	.long	.LASF598
	.value	0x176
	.uleb128 0x1
	.long	.LASF599
	.value	0x177
	.uleb128 0x1
	.long	.LASF600
	.value	0x178
	.uleb128 0x1
	.long	.LASF601
	.value	0x179
	.uleb128 0x1
	.long	.LASF602
	.value	0x17a
	.uleb128 0x1
	.long	.LASF603
	.value	0x17b
	.uleb128 0x1
	.long	.LASF604
	.value	0x17c
	.uleb128 0x1
	.long	.LASF605
	.value	0x17d
	.uleb128 0x1
	.long	.LASF606
	.value	0x17e
	.uleb128 0x1
	.long	.LASF607
	.value	0x17f
	.uleb128 0x1
	.long	.LASF608
	.value	0x180
	.uleb128 0x1
	.long	.LASF609
	.value	0x181
	.uleb128 0x1
	.long	.LASF610
	.value	0x182
	.uleb128 0x1
	.long	.LASF611
	.value	0x183
	.uleb128 0x1
	.long	.LASF612
	.value	0x184
	.uleb128 0x1
	.long	.LASF613
	.value	0x185
	.uleb128 0x1
	.long	.LASF614
	.value	0x186
	.uleb128 0x1
	.long	.LASF615
	.value	0x187
	.uleb128 0x1
	.long	.LASF616
	.value	0x188
	.uleb128 0x1
	.long	.LASF617
	.value	0x189
	.uleb128 0x1
	.long	.LASF618
	.value	0x18a
	.uleb128 0x1
	.long	.LASF619
	.value	0x18b
	.uleb128 0x1
	.long	.LASF620
	.value	0x18c
	.uleb128 0x1
	.long	.LASF621
	.value	0x18d
	.uleb128 0x1
	.long	.LASF622
	.value	0x18e
	.uleb128 0x1
	.long	.LASF623
	.value	0x18f
	.uleb128 0x1
	.long	.LASF624
	.value	0x190
	.uleb128 0x1
	.long	.LASF625
	.value	0x191
	.uleb128 0x1
	.long	.LASF626
	.value	0x192
	.uleb128 0x1
	.long	.LASF627
	.value	0x193
	.uleb128 0x1
	.long	.LASF628
	.value	0x194
	.uleb128 0x1
	.long	.LASF629
	.value	0x195
	.uleb128 0x1
	.long	.LASF630
	.value	0x196
	.uleb128 0x1
	.long	.LASF631
	.value	0x197
	.uleb128 0x1
	.long	.LASF632
	.value	0x198
	.uleb128 0x1
	.long	.LASF633
	.value	0x199
	.uleb128 0x1
	.long	.LASF634
	.value	0x19a
	.uleb128 0x1
	.long	.LASF635
	.value	0x19b
	.uleb128 0x1
	.long	.LASF636
	.value	0x19c
	.uleb128 0x1
	.long	.LASF637
	.value	0x19d
	.uleb128 0x1
	.long	.LASF638
	.value	0x19e
	.uleb128 0x1
	.long	.LASF639
	.value	0x19f
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF646
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF647
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF648
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF649
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF650
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF651
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF652
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF653
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF654
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF655
	.value	0x1af
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF662
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF663
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF664
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF665
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF666
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF667
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF668
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF669
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF670
	.value	0x1be
	.uleb128 0x1
	.long	.LASF671
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF678
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF679
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF680
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF681
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF682
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF683
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF684
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF685
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF686
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF687
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF694
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF695
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF696
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF697
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF698
	.value	0x1da
	.uleb128 0x1
	.long	.LASF699
	.value	0x1db
	.uleb128 0x1
	.long	.LASF700
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF701
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF702
	.value	0x1de
	.uleb128 0x1
	.long	.LASF703
	.value	0x1df
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF710
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF711
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF712
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF713
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF715
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF717
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF718
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF719
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF726
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF727
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF728
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF729
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF730
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF731
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF732
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF733
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF734
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF735
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF736
	.value	0x200
	.uleb128 0x1
	.long	.LASF737
	.value	0x201
	.uleb128 0x1
	.long	.LASF738
	.value	0x202
	.uleb128 0x1
	.long	.LASF739
	.value	0x203
	.uleb128 0x1
	.long	.LASF740
	.value	0x204
	.uleb128 0x1
	.long	.LASF741
	.value	0x205
	.uleb128 0x1
	.long	.LASF742
	.value	0x206
	.uleb128 0x1
	.long	.LASF743
	.value	0x207
	.uleb128 0x1
	.long	.LASF744
	.value	0x208
	.uleb128 0x1
	.long	.LASF745
	.value	0x209
	.uleb128 0x1
	.long	.LASF746
	.value	0x20a
	.uleb128 0x1
	.long	.LASF747
	.value	0x20b
	.uleb128 0x1
	.long	.LASF748
	.value	0x20c
	.uleb128 0x1
	.long	.LASF749
	.value	0x20d
	.uleb128 0x1
	.long	.LASF750
	.value	0x20e
	.uleb128 0x1
	.long	.LASF751
	.value	0x20f
	.uleb128 0x1
	.long	.LASF752
	.value	0x210
	.uleb128 0x1
	.long	.LASF753
	.value	0x211
	.uleb128 0x1
	.long	.LASF754
	.value	0x212
	.uleb128 0x1
	.long	.LASF755
	.value	0x213
	.uleb128 0x1
	.long	.LASF756
	.value	0x214
	.uleb128 0x1
	.long	.LASF757
	.value	0x215
	.uleb128 0x1
	.long	.LASF758
	.value	0x216
	.uleb128 0x1
	.long	.LASF759
	.value	0x217
	.uleb128 0x1
	.long	.LASF760
	.value	0x218
	.uleb128 0x1
	.long	.LASF761
	.value	0x219
	.uleb128 0x1
	.long	.LASF762
	.value	0x21a
	.uleb128 0x1
	.long	.LASF763
	.value	0x21b
	.uleb128 0x1
	.long	.LASF764
	.value	0x21c
	.uleb128 0x1
	.long	.LASF765
	.value	0x21d
	.uleb128 0x1
	.long	.LASF766
	.value	0x21e
	.uleb128 0x1
	.long	.LASF767
	.value	0x21f
	.uleb128 0x1
	.long	.LASF768
	.value	0x220
	.uleb128 0x1
	.long	.LASF769
	.value	0x221
	.uleb128 0x1
	.long	.LASF770
	.value	0x222
	.uleb128 0x1
	.long	.LASF771
	.value	0x223
	.uleb128 0x1
	.long	.LASF772
	.value	0x224
	.uleb128 0x1
	.long	.LASF773
	.value	0x225
	.uleb128 0x1
	.long	.LASF774
	.value	0x226
	.uleb128 0x1
	.long	.LASF775
	.value	0x227
	.uleb128 0x1
	.long	.LASF776
	.value	0x228
	.uleb128 0x1
	.long	.LASF777
	.value	0x229
	.uleb128 0x1
	.long	.LASF778
	.value	0x22a
	.uleb128 0x1
	.long	.LASF779
	.value	0x22b
	.uleb128 0x1
	.long	.LASF780
	.value	0x22c
	.uleb128 0x1
	.long	.LASF781
	.value	0x22d
	.uleb128 0x1
	.long	.LASF782
	.value	0x22e
	.uleb128 0x1
	.long	.LASF783
	.value	0x22f
	.uleb128 0x1
	.long	.LASF784
	.value	0x230
	.uleb128 0x1
	.long	.LASF785
	.value	0x231
	.uleb128 0x1
	.long	.LASF786
	.value	0x232
	.uleb128 0x1
	.long	.LASF787
	.value	0x233
	.uleb128 0x1
	.long	.LASF788
	.value	0x234
	.uleb128 0x1
	.long	.LASF789
	.value	0x235
	.uleb128 0x1
	.long	.LASF790
	.value	0x236
	.uleb128 0x1
	.long	.LASF791
	.value	0x237
	.uleb128 0x1
	.long	.LASF792
	.value	0x238
	.uleb128 0x1
	.long	.LASF793
	.value	0x239
	.uleb128 0x1
	.long	.LASF794
	.value	0x23a
	.uleb128 0x1
	.long	.LASF795
	.value	0x23b
	.uleb128 0x1
	.long	.LASF796
	.value	0x23c
	.uleb128 0x1
	.long	.LASF797
	.value	0x23d
	.uleb128 0x1
	.long	.LASF798
	.value	0x23e
	.uleb128 0x1
	.long	.LASF799
	.value	0x23f
	.uleb128 0x1
	.long	.LASF800
	.value	0x240
	.uleb128 0x1
	.long	.LASF801
	.value	0x241
	.uleb128 0x1
	.long	.LASF802
	.value	0x242
	.uleb128 0x1
	.long	.LASF803
	.value	0x243
	.uleb128 0x1
	.long	.LASF804
	.value	0x244
	.uleb128 0x1
	.long	.LASF805
	.value	0x245
	.uleb128 0x1
	.long	.LASF806
	.value	0x246
	.uleb128 0x1
	.long	.LASF807
	.value	0x247
	.uleb128 0x1
	.long	.LASF808
	.value	0x248
	.uleb128 0x1
	.long	.LASF809
	.value	0x249
	.uleb128 0x1
	.long	.LASF810
	.value	0x24a
	.uleb128 0x1
	.long	.LASF811
	.value	0x24b
	.uleb128 0x1
	.long	.LASF812
	.value	0x24c
	.uleb128 0x1
	.long	.LASF813
	.value	0x24d
	.uleb128 0x1
	.long	.LASF814
	.value	0x24e
	.uleb128 0x1
	.long	.LASF815
	.value	0x24f
	.uleb128 0x1
	.long	.LASF816
	.value	0x250
	.uleb128 0x1
	.long	.LASF817
	.value	0x251
	.uleb128 0x1
	.long	.LASF818
	.value	0x252
	.uleb128 0x1
	.long	.LASF819
	.value	0x253
	.uleb128 0x1
	.long	.LASF820
	.value	0x254
	.uleb128 0x1
	.long	.LASF821
	.value	0x255
	.uleb128 0x1
	.long	.LASF822
	.value	0x256
	.uleb128 0x1
	.long	.LASF823
	.value	0x257
	.uleb128 0x1
	.long	.LASF824
	.value	0x258
	.uleb128 0x1
	.long	.LASF825
	.value	0x259
	.uleb128 0x1
	.long	.LASF826
	.value	0x25a
	.uleb128 0x1
	.long	.LASF827
	.value	0x25b
	.uleb128 0x1
	.long	.LASF828
	.value	0x25c
	.uleb128 0x1
	.long	.LASF829
	.value	0x25d
	.uleb128 0x1
	.long	.LASF830
	.value	0x25e
	.uleb128 0x1
	.long	.LASF831
	.value	0x25f
	.uleb128 0x1
	.long	.LASF832
	.value	0x260
	.uleb128 0x1
	.long	.LASF833
	.value	0x261
	.uleb128 0x1
	.long	.LASF834
	.value	0x262
	.uleb128 0x1
	.long	.LASF835
	.value	0x263
	.uleb128 0x1
	.long	.LASF836
	.value	0x264
	.uleb128 0x1
	.long	.LASF837
	.value	0x265
	.uleb128 0x1
	.long	.LASF838
	.value	0x266
	.uleb128 0x1
	.long	.LASF839
	.value	0x267
	.uleb128 0x1
	.long	.LASF840
	.value	0x268
	.uleb128 0x1
	.long	.LASF841
	.value	0x269
	.uleb128 0x1
	.long	.LASF842
	.value	0x26a
	.uleb128 0x1
	.long	.LASF843
	.value	0x26b
	.uleb128 0x1
	.long	.LASF844
	.value	0x26c
	.uleb128 0x1
	.long	.LASF845
	.value	0x26d
	.uleb128 0x1
	.long	.LASF846
	.value	0x26e
	.uleb128 0x1
	.long	.LASF847
	.value	0x26f
	.uleb128 0x1
	.long	.LASF848
	.value	0x270
	.uleb128 0x1
	.long	.LASF849
	.value	0x271
	.uleb128 0x1
	.long	.LASF850
	.value	0x272
	.uleb128 0x1
	.long	.LASF851
	.value	0x273
	.uleb128 0x1
	.long	.LASF852
	.value	0x274
	.uleb128 0x1
	.long	.LASF853
	.value	0x275
	.uleb128 0x1
	.long	.LASF854
	.value	0x276
	.uleb128 0x1
	.long	.LASF855
	.value	0x277
	.uleb128 0x1
	.long	.LASF856
	.value	0x278
	.uleb128 0x1
	.long	.LASF857
	.value	0x279
	.uleb128 0x1
	.long	.LASF858
	.value	0x27a
	.uleb128 0x1
	.long	.LASF859
	.value	0x27b
	.uleb128 0x1
	.long	.LASF860
	.value	0x27c
	.uleb128 0x1
	.long	.LASF861
	.value	0x27d
	.uleb128 0x1
	.long	.LASF862
	.value	0x27e
	.uleb128 0x1
	.long	.LASF863
	.value	0x27f
	.uleb128 0x1
	.long	.LASF864
	.value	0x280
	.uleb128 0x1
	.long	.LASF865
	.value	0x281
	.uleb128 0x1
	.long	.LASF866
	.value	0x282
	.uleb128 0x1
	.long	.LASF867
	.value	0x283
	.uleb128 0x1
	.long	.LASF868
	.value	0x284
	.uleb128 0x1
	.long	.LASF869
	.value	0x285
	.uleb128 0x1
	.long	.LASF870
	.value	0x286
	.uleb128 0x1
	.long	.LASF871
	.value	0x287
	.uleb128 0x1
	.long	.LASF872
	.value	0x288
	.uleb128 0x1
	.long	.LASF873
	.value	0x289
	.uleb128 0x1
	.long	.LASF874
	.value	0x28a
	.uleb128 0x1
	.long	.LASF875
	.value	0x28b
	.uleb128 0x1
	.long	.LASF876
	.value	0x28c
	.uleb128 0x1
	.long	.LASF877
	.value	0x28d
	.uleb128 0x1
	.long	.LASF878
	.value	0x28e
	.uleb128 0x1
	.long	.LASF879
	.value	0x28f
	.uleb128 0x1
	.long	.LASF880
	.value	0x290
	.uleb128 0x1
	.long	.LASF881
	.value	0x291
	.uleb128 0x1
	.long	.LASF882
	.value	0x292
	.uleb128 0x1
	.long	.LASF883
	.value	0x293
	.uleb128 0x1
	.long	.LASF884
	.value	0x294
	.uleb128 0x1
	.long	.LASF885
	.value	0x295
	.uleb128 0x1
	.long	.LASF886
	.value	0x296
	.uleb128 0x1
	.long	.LASF887
	.value	0x297
	.uleb128 0x1
	.long	.LASF888
	.value	0x298
	.uleb128 0x1
	.long	.LASF889
	.value	0x299
	.uleb128 0x1
	.long	.LASF890
	.value	0x29a
	.uleb128 0x1
	.long	.LASF891
	.value	0x29b
	.uleb128 0x1
	.long	.LASF892
	.value	0x29c
	.uleb128 0x1
	.long	.LASF893
	.value	0x29d
	.uleb128 0x1
	.long	.LASF894
	.value	0x29e
	.uleb128 0x1
	.long	.LASF895
	.value	0x29f
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF902
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF903
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF904
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF905
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF906
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF907
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF908
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF909
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF910
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF911
	.value	0x2af
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF918
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF919
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF920
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF921
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF922
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF923
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF924
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF925
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF926
	.value	0x2be
	.uleb128 0x1
	.long	.LASF927
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF934
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF935
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF936
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF937
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF938
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF939
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF940
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF941
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF942
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF943
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF950
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF951
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF952
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF953
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF954
	.value	0x2da
	.uleb128 0x1
	.long	.LASF955
	.value	0x2db
	.uleb128 0x1
	.long	.LASF956
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF957
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF958
	.value	0x2de
	.uleb128 0x1
	.long	.LASF959
	.value	0x2df
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF966
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF967
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF968
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF969
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF971
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF973
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF974
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF975
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF982
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF983
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF984
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF985
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF986
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF987
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF988
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF989
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF990
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF991
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF992
	.value	0x300
	.uleb128 0x1
	.long	.LASF993
	.value	0x301
	.uleb128 0x1
	.long	.LASF994
	.value	0x302
	.uleb128 0x1
	.long	.LASF995
	.value	0x303
	.uleb128 0x1
	.long	.LASF996
	.value	0x304
	.uleb128 0x1
	.long	.LASF997
	.value	0x305
	.uleb128 0x1
	.long	.LASF998
	.value	0x306
	.uleb128 0x1
	.long	.LASF999
	.value	0x307
	.uleb128 0x1
	.long	.LASF1000
	.value	0x308
	.uleb128 0x1
	.long	.LASF1001
	.value	0x309
	.uleb128 0x1
	.long	.LASF1002
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1004
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1005
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1006
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1007
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1008
	.value	0x310
	.uleb128 0x1
	.long	.LASF1009
	.value	0x311
	.uleb128 0x1
	.long	.LASF1010
	.value	0x312
	.uleb128 0x1
	.long	.LASF1011
	.value	0x313
	.uleb128 0x1
	.long	.LASF1012
	.value	0x314
	.uleb128 0x1
	.long	.LASF1013
	.value	0x315
	.uleb128 0x1
	.long	.LASF1014
	.value	0x316
	.uleb128 0x1
	.long	.LASF1015
	.value	0x317
	.uleb128 0x1
	.long	.LASF1016
	.value	0x318
	.uleb128 0x1
	.long	.LASF1017
	.value	0x319
	.uleb128 0x1
	.long	.LASF1018
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1020
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1021
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1022
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1023
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1024
	.value	0x320
	.uleb128 0x1
	.long	.LASF1025
	.value	0x321
	.uleb128 0x1
	.long	.LASF1026
	.value	0x322
	.uleb128 0x1
	.long	.LASF1027
	.value	0x323
	.uleb128 0x1
	.long	.LASF1028
	.value	0x324
	.uleb128 0x1
	.long	.LASF1029
	.value	0x325
	.uleb128 0x1
	.long	.LASF1030
	.value	0x326
	.uleb128 0x1
	.long	.LASF1031
	.value	0x327
	.uleb128 0x1
	.long	.LASF1032
	.value	0x328
	.uleb128 0x1
	.long	.LASF1033
	.value	0x329
	.uleb128 0x1
	.long	.LASF1034
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1036
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1037
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1038
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1039
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1040
	.value	0x330
	.uleb128 0x1
	.long	.LASF1041
	.value	0x331
	.uleb128 0x1
	.long	.LASF1042
	.value	0x332
	.uleb128 0x1
	.long	.LASF1043
	.value	0x333
	.uleb128 0x1
	.long	.LASF1044
	.value	0x334
	.uleb128 0x1
	.long	.LASF1045
	.value	0x335
	.uleb128 0x1
	.long	.LASF1046
	.value	0x336
	.uleb128 0x1
	.long	.LASF1047
	.value	0x337
	.uleb128 0x1
	.long	.LASF1048
	.value	0x338
	.uleb128 0x1
	.long	.LASF1049
	.value	0x339
	.uleb128 0x1
	.long	.LASF1050
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1052
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1053
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1054
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1055
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1056
	.value	0x340
	.uleb128 0x1
	.long	.LASF1057
	.value	0x341
	.uleb128 0x1
	.long	.LASF1058
	.value	0x342
	.uleb128 0x1
	.long	.LASF1059
	.value	0x343
	.uleb128 0x1
	.long	.LASF1060
	.value	0x344
	.uleb128 0x1
	.long	.LASF1061
	.value	0x345
	.uleb128 0x1
	.long	.LASF1062
	.value	0x346
	.uleb128 0x1
	.long	.LASF1063
	.value	0x347
	.uleb128 0x1
	.long	.LASF1064
	.value	0x348
	.uleb128 0x1
	.long	.LASF1065
	.value	0x349
	.uleb128 0x1
	.long	.LASF1066
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1068
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1069
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1070
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1071
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1072
	.value	0x350
	.uleb128 0x1
	.long	.LASF1073
	.value	0x351
	.uleb128 0x1
	.long	.LASF1074
	.value	0x352
	.uleb128 0x1
	.long	.LASF1075
	.value	0x353
	.uleb128 0x1
	.long	.LASF1076
	.value	0x354
	.uleb128 0x1
	.long	.LASF1077
	.value	0x355
	.uleb128 0x1
	.long	.LASF1078
	.value	0x356
	.uleb128 0x1
	.long	.LASF1079
	.value	0x357
	.uleb128 0x1
	.long	.LASF1080
	.value	0x358
	.uleb128 0x1
	.long	.LASF1081
	.value	0x359
	.uleb128 0x1
	.long	.LASF1082
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1084
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1085
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1086
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1087
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1088
	.value	0x360
	.uleb128 0x1
	.long	.LASF1089
	.value	0x361
	.uleb128 0x1
	.long	.LASF1090
	.value	0x362
	.uleb128 0x1
	.long	.LASF1091
	.value	0x363
	.uleb128 0x1
	.long	.LASF1092
	.value	0x364
	.uleb128 0x1
	.long	.LASF1093
	.value	0x365
	.uleb128 0x1
	.long	.LASF1094
	.value	0x366
	.uleb128 0x1
	.long	.LASF1095
	.value	0x367
	.uleb128 0x1
	.long	.LASF1096
	.value	0x368
	.uleb128 0x1
	.long	.LASF1097
	.value	0x369
	.uleb128 0x1
	.long	.LASF1098
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1100
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1101
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1102
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1103
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1104
	.value	0x370
	.uleb128 0x1
	.long	.LASF1105
	.value	0x371
	.uleb128 0x1
	.long	.LASF1106
	.value	0x372
	.uleb128 0x1
	.long	.LASF1107
	.value	0x373
	.uleb128 0x1
	.long	.LASF1108
	.value	0x374
	.uleb128 0x1
	.long	.LASF1109
	.value	0x375
	.uleb128 0x1
	.long	.LASF1110
	.value	0x376
	.uleb128 0x1
	.long	.LASF1111
	.value	0x377
	.uleb128 0x1
	.long	.LASF1112
	.value	0x378
	.uleb128 0x1
	.long	.LASF1113
	.value	0x379
	.uleb128 0x1
	.long	.LASF1114
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1116
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1117
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1118
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1119
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1120
	.value	0x380
	.uleb128 0x1
	.long	.LASF1121
	.value	0x381
	.uleb128 0x1
	.long	.LASF1122
	.value	0x382
	.uleb128 0x1
	.long	.LASF1123
	.value	0x383
	.uleb128 0x1
	.long	.LASF1124
	.value	0x384
	.uleb128 0x1
	.long	.LASF1125
	.value	0x385
	.uleb128 0x1
	.long	.LASF1126
	.value	0x386
	.uleb128 0x1
	.long	.LASF1127
	.value	0x387
	.uleb128 0x1
	.long	.LASF1128
	.value	0x388
	.uleb128 0x1
	.long	.LASF1129
	.value	0x389
	.uleb128 0x1
	.long	.LASF1130
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1132
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1133
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1134
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1135
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1136
	.value	0x390
	.uleb128 0x1
	.long	.LASF1137
	.value	0x391
	.uleb128 0x1
	.long	.LASF1138
	.value	0x392
	.uleb128 0x1
	.long	.LASF1139
	.value	0x393
	.uleb128 0x1
	.long	.LASF1140
	.value	0x394
	.uleb128 0x1
	.long	.LASF1141
	.value	0x395
	.uleb128 0x1
	.long	.LASF1142
	.value	0x396
	.uleb128 0x1
	.long	.LASF1143
	.value	0x397
	.uleb128 0x1
	.long	.LASF1144
	.value	0x398
	.uleb128 0x1
	.long	.LASF1145
	.value	0x399
	.uleb128 0x1
	.long	.LASF1146
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1148
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1149
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1150
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1151
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1189
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1190
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1191
	.value	0x3c7
	.byte	0
	.uleb128 0x11
	.long	.LASF1192
	.byte	0x9
	.value	0x478
	.long	0x741
	.uleb128 0x1d
	.byte	0x38
	.value	0x47b
	.long	0x213d
	.uleb128 0x4
	.long	.LASF1193
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x735
	.byte	0
	.uleb128 0x4
	.long	.LASF1194
	.byte	0x9
	.value	0x47e
	.byte	0xa
	.long	0x97
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1195
	.byte	0x9
	.value	0x47f
	.byte	0xa
	.long	0x97
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1196
	.byte	0x9
	.value	0x481
	.byte	0xf
	.long	0x327
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1197
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x20c6
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1198
	.byte	0x9
	.value	0x483
	.byte	0xa
	.long	0x97
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1199
	.byte	0x9
	.value	0x483
	.byte	0x11
	.long	0x97
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LASF1200
	.byte	0x9
	.value	0x484
	.long	0x20d2
	.uleb128 0xb
	.long	0x213d
	.long	0x215a
	.uleb128 0x1a
	.long	0x43
	.value	0x3c6
	.byte	0
	.uleb128 0x25
	.long	.LASF1201
	.byte	0x9
	.value	0x486
	.byte	0x10
	.long	0x2149
	.uleb128 0x26
	.byte	0x7
	.byte	0x4
	.long	0x6b
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x24b3
	.uleb128 0x2
	.long	.LASF1202
	.byte	0
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1212
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1213
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1214
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1215
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1216
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1217
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x89
	.byte	0
	.uleb128 0x11
	.long	.LASF1340
	.byte	0x9
	.value	0x517
	.long	0x2167
	.uleb128 0x1d
	.byte	0x5c
	.value	0x519
	.long	0x260a
	.uleb128 0x4
	.long	.LASF1341
	.byte	0x9
	.value	0x51b
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0x4
	.long	.LASF1342
	.byte	0x9
	.value	0x51c
	.byte	0x9
	.long	0x90
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1343
	.byte	0x9
	.value	0x51d
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x9
	.value	0x51e
	.byte	0x9
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1345
	.byte	0x9
	.value	0x51f
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1346
	.byte	0x9
	.value	0x520
	.byte	0x9
	.long	0x90
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1347
	.byte	0x9
	.value	0x521
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1348
	.byte	0x9
	.value	0x522
	.byte	0x9
	.long	0x90
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1349
	.byte	0x9
	.value	0x523
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1350
	.byte	0x9
	.value	0x524
	.byte	0x9
	.long	0x90
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1351
	.byte	0x9
	.value	0x525
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1352
	.byte	0x9
	.value	0x526
	.byte	0x9
	.long	0x90
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1353
	.byte	0x9
	.value	0x527
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1354
	.byte	0x9
	.value	0x528
	.byte	0x9
	.long	0x90
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1355
	.byte	0x9
	.value	0x529
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1356
	.byte	0x9
	.value	0x52a
	.byte	0x9
	.long	0x90
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1357
	.byte	0x9
	.value	0x52b
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1358
	.byte	0x9
	.value	0x52c
	.byte	0x9
	.long	0x90
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1359
	.byte	0x9
	.value	0x52d
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1360
	.byte	0x9
	.value	0x52e
	.byte	0x9
	.long	0x90
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1361
	.byte	0x9
	.value	0x52f
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1362
	.byte	0x9
	.value	0x530
	.byte	0x9
	.long	0x90
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1363
	.byte	0x9
	.value	0x531
	.byte	0x9
	.long	0x90
	.byte	0x58
	.byte	0
	.uleb128 0x11
	.long	.LASF1364
	.byte	0x9
	.value	0x533
	.long	0x24bf
	.uleb128 0x8
	.long	0x6b
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.long	0x26f4
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1373
	.value	0x100
	.uleb128 0x1
	.long	.LASF1374
	.value	0x200
	.uleb128 0x1
	.long	.LASF1375
	.value	0x400
	.uleb128 0x1
	.long	.LASF1376
	.value	0x800
	.uleb128 0x1
	.long	.LASF1377
	.value	0x1000
	.uleb128 0x1
	.long	.LASF1378
	.value	0x2000
	.uleb128 0x1
	.long	.LASF1379
	.value	0x4000
	.uleb128 0x1
	.long	.LASF1380
	.value	0x8000
	.uleb128 0xa
	.long	.LASF1381
	.long	0x10000
	.uleb128 0xa
	.long	.LASF1382
	.long	0x20000
	.uleb128 0xa
	.long	.LASF1383
	.long	0x40000
	.uleb128 0xa
	.long	.LASF1384
	.long	0x80000
	.uleb128 0xa
	.long	.LASF1385
	.long	0x100000
	.uleb128 0xa
	.long	.LASF1386
	.long	0x200000
	.uleb128 0xa
	.long	.LASF1387
	.long	0x400000
	.uleb128 0xa
	.long	.LASF1388
	.long	0x800000
	.uleb128 0xa
	.long	.LASF1389
	.long	0x1000000
	.uleb128 0xa
	.long	.LASF1390
	.long	0x2000000
	.uleb128 0xa
	.long	.LASF1391
	.long	0xc000000
	.uleb128 0x2
	.long	.LASF1392
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.long	.LASF1394
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x28cb
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x378
	.byte	0
	.uleb128 0x6
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0x262
	.byte	0x18
	.uleb128 0x6
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0x262
	.byte	0x1c
	.uleb128 0x6
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0x262
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x28cb
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x28cb
	.byte	0x30
	.uleb128 0x3
	.long	.LASF80
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x29c
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1193
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x735
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1194
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x28cb
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x28cb
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x2904
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0x262
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0x262
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0x262
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0x262
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0x262
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0x262
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0x262
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x90
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF81
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x24b3
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x2909
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1195
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x90
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x290e
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1362
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x90
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1410
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x90
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1411
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x90
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1412
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x28cb
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1346
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x90
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1413
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x90
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1414
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x2ae8
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1415
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1416
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x3da
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1417
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x28cb
	.byte	0xd8
	.byte	0
	.uleb128 0x7
	.long	0x26f4
	.uleb128 0x13
	.long	.LASF1418
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x2904
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2d2a
	.byte	0
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x89
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x28d0
	.uleb128 0x7
	.long	0x260a
	.uleb128 0x7
	.long	0x213d
	.uleb128 0x27
	.long	.LASF1422
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x2ae8
	.uleb128 0x6
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2c40
	.byte	0
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2e5d
	.byte	0x8
	.uleb128 0x6
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x2e32
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x262
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0x262
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0x262
	.byte	0x1c
	.uleb128 0x6
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0x262
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2e88
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2e98
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0x1ed
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2c45
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x160
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x160
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2ea8
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2c45
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2c45
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x90
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x90
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x90
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x90
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x90
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x90
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x90
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2c40
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x90
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x90
	.byte	0xfc
	.uleb128 0x15
	.long	.LASF1451
	.byte	0x9e
	.byte	0xb
	.long	0x90
	.value	0x100
	.uleb128 0x15
	.long	.LASF1452
	.byte	0xa1
	.byte	0xf
	.long	0x2eb8
	.value	0x108
	.uleb128 0x15
	.long	.LASF1453
	.byte	0xa4
	.byte	0xe
	.long	0x1ed
	.value	0x138
	.byte	0
	.uleb128 0x7
	.long	0x2913
	.uleb128 0x11
	.long	.LASF1454
	.byte	0xa
	.value	0x11e
	.long	0x26f4
	.uleb128 0xf
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x2b18
	.uleb128 0x6
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x262
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0x262
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF1455
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x2af9
	.uleb128 0xf
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2b5b
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x378
	.byte	0
	.uleb128 0x6
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x262
	.byte	0x18
	.uleb128 0x6
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x262
	.byte	0x1c
	.uleb128 0x6
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0x262
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF1456
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x2b24
	.uleb128 0xf
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2c40
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0x262
	.byte	0
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0x262
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x89
	.byte	0xe
	.uleb128 0x6
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x89
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x90
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2c40
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2c45
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2b5b
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2c40
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0x72
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2d14
	.byte	0x78
	.byte	0
	.uleb128 0x7
	.long	0x2aed
	.uleb128 0xb
	.long	0x90
	.long	0x2c55
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF1471
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2d14
	.uleb128 0x6
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2d60
	.byte	0
	.uleb128 0x6
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2d60
	.byte	0x8
	.uleb128 0x6
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0x262
	.byte	0x10
	.uleb128 0x6
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0x262
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1362
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x89
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x89
	.byte	0x1a
	.uleb128 0x6
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1472
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x384
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2d65
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1474
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2d54
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1475
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2d2a
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2d2a
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0x72
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	0x2d19
	.uleb128 0x7
	.long	0x2c55
	.uleb128 0x5
	.long	.LASF1477
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2b67
	.uleb128 0x7
	.long	0x2d1e
	.uleb128 0x8
	.long	0x6b
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2d54
	.uleb128 0x2
	.long	.LASF1478
	.byte	0
	.uleb128 0x2
	.long	.LASF1479
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1480
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1481
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1482
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2d2f
	.uleb128 0x7
	.long	0x2b18
	.uleb128 0xb
	.long	0x262
	.long	0x2d75
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x6b
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.long	0x2d94
	.uleb128 0x2
	.long	.LASF1483
	.byte	0
	.uleb128 0x2
	.long	.LASF1484
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1485
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.byte	0x18
	.byte	0xd
	.byte	0x44
	.long	0x2dcf
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xd
	.byte	0x46
	.byte	0xe
	.long	0x290e
	.byte	0
	.uleb128 0x3
	.long	.LASF1195
	.byte	0xd
	.byte	0x47
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x6
	.string	"sx"
	.byte	0xd
	.byte	0x48
	.byte	0xd
	.long	0x262
	.byte	0xc
	.uleb128 0x6
	.string	"sy"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x262
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1486
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x2d94
	.uleb128 0xf
	.byte	0x8
	.byte	0xe
	.byte	0x24
	.long	0x2e32
	.uleb128 0x3
	.long	.LASF1487
	.byte	0xe
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1488
	.byte	0xe
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1489
	.byte	0xe
	.byte	0x28
	.byte	0xb
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1490
	.byte	0xe
	.byte	0x29
	.byte	0xb
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1491
	.byte	0xe
	.byte	0x2a
	.byte	0xa
	.long	0x1f9
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1492
	.byte	0xe
	.byte	0x2b
	.byte	0xa
	.long	0x1f9
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF1493
	.byte	0xe
	.byte	0x2c
	.byte	0x3
	.long	0x2ddb
	.uleb128 0x8
	.long	0x6b
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2e5d
	.uleb128 0x2
	.long	.LASF1494
	.byte	0
	.uleb128 0x2
	.long	.LASF1495
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1497
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2e3e
	.uleb128 0x8
	.long	0x6b
	.byte	0xc
	.byte	0x45
	.byte	0x1
	.long	0x2e88
	.uleb128 0x2
	.long	.LASF1498
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1499
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1500
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	0x90
	.long	0x2e98
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x1ed
	.long	0x2ea8
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x1ed
	.long	0x2eb8
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x2dcf
	.long	0x2ec8
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF1501
	.byte	0xc
	.byte	0xa6
	.byte	0x3
	.long	0x2913
	.uleb128 0x7
	.long	0x2ec8
	.uleb128 0x12
	.long	.LASF1502
	.byte	0xf
	.byte	0x3c
	.byte	0x13
	.long	0xce
	.uleb128 0x12
	.long	.LASF1503
	.byte	0xf
	.byte	0xac
	.byte	0xd
	.long	0x90
	.uleb128 0x28
	.long	.LASF1504
	.byte	0x1
	.byte	0x33
	.byte	0xa
	.long	0x1ed
	.uleb128 0x9
	.byte	0x3
	.quad	onground
	.uleb128 0x16
	.long	.LASF1505
	.byte	0x10
	.byte	0xd7
	.byte	0x7
	.long	0x2f19
	.uleb128 0x9
	.long	0x2ed4
	.byte	0
	.uleb128 0x16
	.long	.LASF1506
	.byte	0x11
	.byte	0x44
	.byte	0x9
	.long	0x2f2b
	.uleb128 0x9
	.long	0x2ed4
	.byte	0
	.uleb128 0x17
	.long	.LASF1508
	.byte	0x12
	.byte	0x7f
	.byte	0x1
	.long	0x29c
	.long	0x2f50
	.uleb128 0x9
	.long	0x262
	.uleb128 0x9
	.long	0x262
	.uleb128 0x9
	.long	0x262
	.uleb128 0x9
	.long	0x262
	.byte	0
	.uleb128 0x16
	.long	.LASF1507
	.byte	0x10
	.byte	0x52
	.byte	0x6
	.long	0x2f62
	.uleb128 0x9
	.long	0x2ed4
	.byte	0
	.uleb128 0x17
	.long	.LASF1509
	.byte	0x10
	.byte	0x75
	.byte	0x9
	.long	0x1ed
	.long	0x2f7d
	.uleb128 0x9
	.long	0x2c40
	.uleb128 0x9
	.long	0x20c6
	.byte	0
	.uleb128 0x17
	.long	.LASF1510
	.byte	0x5
	.byte	0x28
	.byte	0x9
	.long	0x262
	.long	0x2f98
	.uleb128 0x9
	.long	0x262
	.uleb128 0x9
	.long	0x262
	.byte	0
	.uleb128 0x14
	.long	.LASF1513
	.byte	0xec
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fdf
	.uleb128 0xe
	.long	.LASF1414
	.byte	0xec
	.byte	0x1f
	.long	0x2ed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"cmd"
	.byte	0xee
	.byte	0x10
	.long	0x2fdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF1512
	.byte	0xef
	.byte	0x12
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x7
	.long	0x2e32
	.uleb128 0x14
	.long	.LASF1514
	.byte	0xb6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x302b
	.uleb128 0xe
	.long	.LASF1414
	.byte	0xb6
	.byte	0x1e
	.long	0x2ed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF80
	.byte	0xb8
	.byte	0xe
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF1515
	.byte	0xb9
	.byte	0xe
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF1516
	.byte	0x94
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3064
	.uleb128 0xe
	.long	.LASF1414
	.byte	0x94
	.byte	0x1e
	.long	0x2ed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"cmd"
	.byte	0x96
	.byte	0x10
	.long	0x2fdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF1517
	.byte	0x4d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x30ab
	.uleb128 0xe
	.long	.LASF1414
	.byte	0x4d
	.byte	0x1e
	.long	0x2ed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF80
	.byte	0x4f
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"bob"
	.byte	0x50
	.byte	0xd
	.long	0x262
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x29
	.long	.LASF1520
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF1414
	.byte	0x3c
	.byte	0xd
	.long	0x2ed4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF80
	.byte	0x3d
	.byte	0xb
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.long	.LASF1518
	.byte	0x3e
	.byte	0xb
	.long	0x262
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.sleb128 6
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
.LASF1499:
	.string	"CF_GODMODE"
.LASF861:
	.string	"S_BSPI_RUN3"
.LASF862:
	.string	"S_BSPI_RUN4"
.LASF863:
	.string	"S_BSPI_RUN5"
.LASF864:
	.string	"S_BSPI_RUN6"
.LASF865:
	.string	"S_BSPI_RUN7"
.LASF866:
	.string	"S_BSPI_RUN8"
.LASF867:
	.string	"S_BSPI_RUN9"
.LASF151:
	.string	"SPR_YSKU"
.LASF1448:
	.string	"attacker"
.LASF514:
	.string	"S_FIRE10"
.LASF515:
	.string	"S_FIRE11"
.LASF516:
	.string	"S_FIRE12"
.LASF517:
	.string	"S_FIRE13"
.LASF518:
	.string	"S_FIRE14"
.LASF519:
	.string	"S_FIRE15"
.LASF520:
	.string	"S_FIRE16"
.LASF521:
	.string	"S_FIRE17"
.LASF522:
	.string	"S_FIRE18"
.LASF523:
	.string	"S_FIRE19"
.LASF1336:
	.string	"MT_MISC84"
.LASF1269:
	.string	"MT_MISC20"
.LASF1082:
	.string	"S_MEGA2"
.LASF1083:
	.string	"S_MEGA3"
.LASF1084:
	.string	"S_MEGA4"
.LASF1273:
	.string	"MT_MISC24"
.LASF1274:
	.string	"MT_MISC25"
.LASF1276:
	.string	"MT_MISC26"
.LASF1277:
	.string	"MT_MISC27"
.LASF1278:
	.string	"MT_MISC28"
.LASF1281:
	.string	"MT_MISC29"
.LASF713:
	.string	"S_SARG_PAIN2"
.LASF1413:
	.string	"threshold"
.LASF23:
	.string	"wp_pistol"
.LASF1387:
	.string	"MF_COUNTKILL"
.LASF192:
	.string	"SPR_COL1"
.LASF193:
	.string	"SPR_COL2"
.LASF194:
	.string	"SPR_COL3"
.LASF195:
	.string	"SPR_COL4"
.LASF204:
	.string	"SPR_COL5"
.LASF198:
	.string	"SPR_COL6"
.LASF1513:
	.string	"P_PlayerThink"
.LASF524:
	.string	"S_FIRE20"
.LASF525:
	.string	"S_FIRE21"
.LASF526:
	.string	"S_FIRE22"
.LASF527:
	.string	"S_FIRE23"
.LASF528:
	.string	"S_FIRE24"
.LASF178:
	.string	"SPR_COLU"
.LASF530:
	.string	"S_FIRE26"
.LASF531:
	.string	"S_FIRE27"
.LASF532:
	.string	"S_FIRE28"
.LASF533:
	.string	"S_FIRE29"
.LASF1282:
	.string	"MT_MISC30"
.LASF1196:
	.string	"action"
.LASF1284:
	.string	"MT_MISC32"
.LASF1285:
	.string	"MT_MISC33"
.LASF875:
	.string	"S_BSPI_PAIN"
.LASF1287:
	.string	"MT_MISC35"
.LASF347:
	.string	"S_BFGEXP"
.LASF38:
	.string	"am_misl"
.LASF1290:
	.string	"MT_MISC38"
.LASF1291:
	.string	"MT_MISC39"
.LASF1459:
	.string	"floorpic"
.LASF877:
	.string	"S_BSPI_DIE1"
.LASF1485:
	.string	"NUMPSPRITES"
.LASF1510:
	.string	"FixedMul"
.LASF882:
	.string	"S_BSPI_DIE6"
.LASF1480:
	.string	"ST_POSITIVE"
.LASF1424:
	.string	"viewz"
.LASF773:
	.string	"S_BOSS_RAISE1"
.LASF774:
	.string	"S_BOSS_RAISE2"
.LASF1216:
	.string	"MT_HEAD"
.LASF775:
	.string	"S_BOSS_RAISE3"
.LASF534:
	.string	"S_FIRE30"
.LASF679:
	.string	"S_TROO_PAIN"
.LASF968:
	.string	"S_SSWV_DIE1"
.LASF778:
	.string	"S_BOSS_RAISE6"
.LASF970:
	.string	"S_SSWV_DIE3"
.LASF971:
	.string	"S_SSWV_DIE4"
.LASF972:
	.string	"S_SSWV_DIE5"
.LASF146:
	.string	"SPR_BKEY"
.LASF790:
	.string	"S_BOS2_ATK1"
.LASF791:
	.string	"S_BOS2_ATK2"
.LASF792:
	.string	"S_BOS2_ATK3"
.LASF180:
	.string	"SPR_GOR1"
.LASF187:
	.string	"SPR_GOR2"
.LASF188:
	.string	"SPR_GOR3"
.LASF189:
	.string	"SPR_GOR4"
.LASF190:
	.string	"SPR_GOR5"
.LASF1294:
	.string	"MT_MISC42"
.LASF1295:
	.string	"MT_MISC43"
.LASF547:
	.string	"S_SKEL_RUN1"
.LASF548:
	.string	"S_SKEL_RUN2"
.LASF549:
	.string	"S_SKEL_RUN3"
.LASF550:
	.string	"S_SKEL_RUN4"
.LASF551:
	.string	"S_SKEL_RUN5"
.LASF552:
	.string	"S_SKEL_RUN6"
.LASF553:
	.string	"S_SKEL_RUN7"
.LASF554:
	.string	"S_SKEL_RUN8"
.LASF555:
	.string	"S_SKEL_RUN9"
.LASF26:
	.string	"wp_missile"
.LASF1033:
	.string	"S_BEXP2"
.LASF1344:
	.string	"seestate"
.LASF728:
	.string	"S_HEAD_ATK1"
.LASF729:
	.string	"S_HEAD_ATK2"
.LASF730:
	.string	"S_HEAD_ATK3"
.LASF1474:
	.string	"slopetype"
.LASF982:
	.string	"S_SSWV_RAISE1"
.LASF983:
	.string	"S_SSWV_RAISE2"
.LASF984:
	.string	"S_SSWV_RAISE3"
.LASF985:
	.string	"S_SSWV_RAISE4"
.LASF986:
	.string	"S_SSWV_RAISE5"
.LASF80:
	.string	"angle"
.LASF1211:
	.string	"MT_FATSHOT"
.LASF166:
	.string	"SPR_CELL"
.LASF167:
	.string	"SPR_CELP"
.LASF1148:
	.string	"S_HEARTCOL"
.LASF1469:
	.string	"linecount"
.LASF1420:
	.string	"numlines"
.LASF1065:
	.string	"S_MEDI"
.LASF1072:
	.string	"S_PINV"
.LASF1260:
	.string	"MT_INS"
.LASF1303:
	.string	"MT_MISC51"
.LASF1304:
	.string	"MT_MISC52"
.LASF1258:
	.string	"MT_INV"
.LASF1306:
	.string	"MT_MISC54"
.LASF1162:
	.string	"S_BTORCHSHRT"
.LASF283:
	.string	"S_MISSILEUP"
.LASF1309:
	.string	"MT_MISC57"
.LASF1310:
	.string	"MT_MISC58"
.LASF1311:
	.string	"MT_MISC59"
.LASF460:
	.string	"S_SPOS_RAISE1"
.LASF254:
	.string	"S_SGUNFLASH1"
.LASF255:
	.string	"S_SGUNFLASH2"
.LASF802:
	.string	"S_BOS2_RAISE1"
.LASF803:
	.string	"S_BOS2_RAISE2"
.LASF804:
	.string	"S_BOS2_RAISE3"
.LASF805:
	.string	"S_BOS2_RAISE4"
.LASF806:
	.string	"S_BOS2_RAISE5"
.LASF807:
	.string	"S_BOS2_RAISE6"
.LASF808:
	.string	"S_BOS2_RAISE7"
.LASF567:
	.string	"S_SKEL_PAIN"
.LASF1054:
	.string	"S_RKEY"
.LASF77:
	.string	"next"
.LASF236:
	.string	"S_PISTOLUP"
.LASF922:
	.string	"S_CYBER_DIE8"
.LASF1312:
	.string	"MT_MISC60"
.LASF1313:
	.string	"MT_MISC61"
.LASF1314:
	.string	"MT_MISC62"
.LASF1315:
	.string	"MT_MISC63"
.LASF1316:
	.string	"MT_MISC64"
.LASF1317:
	.string	"MT_MISC65"
.LASF1318:
	.string	"MT_MISC66"
.LASF1319:
	.string	"MT_MISC67"
.LASF351:
	.string	"S_EXPLODE1"
.LASF352:
	.string	"S_EXPLODE2"
.LASF353:
	.string	"S_EXPLODE3"
.LASF542:
	.string	"S_TRACEEXP1"
.LASF543:
	.string	"S_TRACEEXP2"
.LASF544:
	.string	"S_TRACEEXP3"
.LASF930:
	.string	"S_PAIN_RUN5"
.LASF1032:
	.string	"S_BEXP"
.LASF931:
	.string	"S_PAIN_RUN6"
.LASF1449:
	.string	"extralight"
.LASF1149:
	.string	"S_HEARTCOL2"
.LASF328:
	.string	"S_RBALLX1"
.LASF1358:
	.string	"height"
.LASF1243:
	.string	"MT_TELEPORTMAN"
.LASF1322:
	.string	"MT_MISC70"
.LASF111:
	.string	"SPR_IFOG"
.LASF1324:
	.string	"MT_MISC72"
.LASF1325:
	.string	"MT_MISC73"
.LASF1326:
	.string	"MT_MISC74"
.LASF1327:
	.string	"MT_MISC75"
.LASF1328:
	.string	"MT_MISC76"
.LASF1155:
	.string	"S_GREENTORCH2"
.LASF1156:
	.string	"S_GREENTORCH3"
.LASF1157:
	.string	"S_GREENTORCH4"
.LASF996:
	.string	"S_COMMKEEN9"
.LASF645:
	.string	"S_CPOS_PAIN2"
.LASF868:
	.string	"S_BSPI_RUN10"
.LASF869:
	.string	"S_BSPI_RUN11"
.LASF870:
	.string	"S_BSPI_RUN12"
.LASF952:
	.string	"S_SSWV_RUN1"
.LASF953:
	.string	"S_SSWV_RUN2"
.LASF954:
	.string	"S_SSWV_RUN3"
.LASF955:
	.string	"S_SSWV_RUN4"
.LASF956:
	.string	"S_SSWV_RUN5"
.LASF957:
	.string	"S_SSWV_RUN6"
.LASF958:
	.string	"S_SSWV_RUN7"
.LASF959:
	.string	"S_SSWV_RUN8"
.LASF1137:
	.string	"S_SKULLCOL"
.LASF1210:
	.string	"MT_FATSO"
.LASF681:
	.string	"S_TROO_DIE1"
.LASF682:
	.string	"S_TROO_DIE2"
.LASF683:
	.string	"S_TROO_DIE3"
.LASF684:
	.string	"S_TROO_DIE4"
.LASF685:
	.string	"S_TROO_DIE5"
.LASF10:
	.string	"shareware"
.LASF1062:
	.string	"S_YSKULL"
.LASF1063:
	.string	"S_YSKULL2"
.LASF164:
	.string	"SPR_ROCK"
.LASF1235:
	.string	"MT_ROCKET"
.LASF1333:
	.string	"MT_MISC81"
.LASF1334:
	.string	"MT_MISC82"
.LASF1335:
	.string	"MT_MISC83"
.LASF640:
	.string	"S_CPOS_ATK1"
.LASF641:
	.string	"S_CPOS_ATK2"
.LASF642:
	.string	"S_CPOS_ATK3"
.LASF643:
	.string	"S_CPOS_ATK4"
.LASF1202:
	.string	"MT_PLAYER"
.LASF176:
	.string	"SPR_SHOT"
.LASF369:
	.string	"S_IFOG2"
.LASF370:
	.string	"S_IFOG3"
.LASF371:
	.string	"S_IFOG4"
.LASF372:
	.string	"S_IFOG5"
.LASF105:
	.string	"SPR_PLSE"
.LASF97:
	.string	"SPR_PLSF"
.LASF96:
	.string	"SPR_PLSG"
.LASF765:
	.string	"S_BOSS_PAIN2"
.LASF465:
	.string	"S_VILE_STND"
.LASF993:
	.string	"S_COMMKEEN6"
.LASF994:
	.string	"S_COMMKEEN7"
.LASF995:
	.string	"S_COMMKEEN8"
.LASF104:
	.string	"SPR_PLSS"
.LASF844:
	.string	"S_SPID_PAIN2"
.LASF1359:
	.string	"mass"
.LASF217:
	.string	"SPR_POB1"
.LASF218:
	.string	"SPR_POB2"
.LASF1066:
	.string	"S_SOUL"
.LASF1076:
	.string	"S_PSTR"
.LASF908:
	.string	"S_CYBER_ATK1"
.LASF909:
	.string	"S_CYBER_ATK2"
.LASF910:
	.string	"S_CYBER_ATK3"
.LASF911:
	.string	"S_CYBER_ATK4"
.LASF58:
	.string	"BT_WEAPONSHIFT"
.LASF55:
	.string	"BT_SPECIALMASK"
.LASF1103:
	.string	"S_BFUG"
.LASF143:
	.string	"SPR_FCAN"
.LASF586:
	.string	"S_FATT_STND"
.LASF1023:
	.string	"S_BRAINEXPLODE1"
.LASF1024:
	.string	"S_BRAINEXPLODE2"
.LASF1025:
	.string	"S_BRAINEXPLODE3"
.LASF307:
	.string	"S_BFGUP"
.LASF148:
	.string	"SPR_YKEY"
.LASF694:
	.string	"S_TROO_RAISE1"
.LASF695:
	.string	"S_TROO_RAISE2"
.LASF696:
	.string	"S_TROO_RAISE3"
.LASF697:
	.string	"S_TROO_RAISE4"
.LASF698:
	.string	"S_TROO_RAISE5"
.LASF1107:
	.string	"S_PLAS"
.LASF989:
	.string	"S_COMMKEEN2"
.LASF990:
	.string	"S_COMMKEEN3"
.LASF991:
	.string	"S_COMMKEEN4"
.LASF992:
	.string	"S_COMMKEEN5"
.LASF373:
	.string	"S_PLAY"
.LASF939:
	.string	"S_PAIN_DIE2"
.LASF940:
	.string	"S_PAIN_DIE3"
.LASF941:
	.string	"S_PAIN_DIE4"
.LASF942:
	.string	"S_PAIN_DIE5"
.LASF943:
	.string	"S_PAIN_DIE6"
.LASF1213:
	.string	"MT_TROOP"
.LASF494:
	.string	"S_VILE_PAIN2"
.LASF622:
	.string	"S_FATT_RAISE1"
.LASF27:
	.string	"wp_plasma"
.LASF624:
	.string	"S_FATT_RAISE3"
.LASF625:
	.string	"S_FATT_RAISE4"
.LASF626:
	.string	"S_FATT_RAISE5"
.LASF627:
	.string	"S_FATT_RAISE6"
.LASF628:
	.string	"S_FATT_RAISE7"
.LASF629:
	.string	"S_FATT_RAISE8"
.LASF1369:
	.string	"MF_NOBLOCKMAP"
.LASF338:
	.string	"S_ROCKET"
.LASF1234:
	.string	"MT_HEADSHOT"
.LASF1391:
	.string	"MF_TRANSLATION"
.LASF1472:
	.string	"sidenum"
.LASF53:
	.string	"BT_USE"
.LASF891:
	.string	"S_ARACH_PLAZ"
.LASF1130:
	.string	"S_STALAGTITE"
.LASF732:
	.string	"S_HEAD_PAIN2"
.LASF733:
	.string	"S_HEAD_PAIN3"
.LASF59:
	.string	"BTS_PAUSE"
.LASF51:
	.string	"byte"
.LASF20:
	.string	"it_redskull"
.LASF1241:
	.string	"MT_TFOG"
.LASF441:
	.string	"S_SPOS_ATK1"
.LASF442:
	.string	"S_SPOS_ATK2"
.LASF443:
	.string	"S_SPOS_ATK3"
.LASF378:
	.string	"S_PLAY_ATK1"
.LASF379:
	.string	"S_PLAY_ATK2"
.LASF131:
	.string	"SPR_APLS"
.LASF66:
	.string	"finesine"
.LASF1441:
	.string	"refire"
.LASF1159:
	.string	"S_REDTORCH2"
.LASF1160:
	.string	"S_REDTORCH3"
.LASF1161:
	.string	"S_REDTORCH4"
.LASF668:
	.string	"S_TROO_RUN1"
.LASF669:
	.string	"S_TROO_RUN2"
.LASF670:
	.string	"S_TROO_RUN3"
.LASF671:
	.string	"S_TROO_RUN4"
.LASF672:
	.string	"S_TROO_RUN5"
.LASF673:
	.string	"S_TROO_RUN6"
.LASF674:
	.string	"S_TROO_RUN7"
.LASF675:
	.string	"S_TROO_RUN8"
.LASF122:
	.string	"SPR_CPOS"
.LASF583:
	.string	"S_FATSHOTX1"
.LASF584:
	.string	"S_FATSHOTX2"
.LASF585:
	.string	"S_FATSHOTX3"
.LASF663:
	.string	"S_CPOS_RAISE5"
.LASF664:
	.string	"S_CPOS_RAISE6"
.LASF665:
	.string	"S_CPOS_RAISE7"
.LASF22:
	.string	"wp_fist"
.LASF1352:
	.string	"missilestate"
.LASF152:
	.string	"SPR_STIM"
.LASF1372:
	.string	"MF_JUSTATTACKED"
.LASF699:
	.string	"S_SARG_STND"
.LASF924:
	.string	"S_CYBER_DIE10"
.LASF102:
	.string	"SPR_BAL1"
.LASF103:
	.string	"SPR_BAL2"
.LASF125:
	.string	"SPR_BAL7"
.LASF1407:
	.string	"info"
.LASF1118:
	.string	"S_HEADSONSTICK"
.LASF1402:
	.string	"ceilingz"
.LASF575:
	.string	"S_SKEL_RAISE1"
.LASF90:
	.string	"SPR_SHT2"
.LASF229:
	.string	"S_PUNCH1"
.LASF230:
	.string	"S_PUNCH2"
.LASF231:
	.string	"S_PUNCH3"
.LASF232:
	.string	"S_PUNCH4"
.LASF233:
	.string	"S_PUNCH5"
.LASF592:
	.string	"S_FATT_RUN5"
.LASF228:
	.string	"S_PUNCHUP"
.LASF845:
	.string	"S_SPID_DIE1"
.LASF596:
	.string	"S_FATT_RUN9"
.LASF847:
	.string	"S_SPID_DIE3"
.LASF848:
	.string	"S_SPID_DIE4"
.LASF89:
	.string	"SPR_SHTF"
.LASF85:
	.string	"SPR_SHTG"
.LASF367:
	.string	"S_IFOG01"
.LASF368:
	.string	"S_IFOG02"
.LASF853:
	.string	"S_SPID_DIE9"
.LASF1095:
	.string	"S_AMMO"
.LASF39:
	.string	"NUMAMMO"
.LASF926:
	.string	"S_PAIN_RUN1"
.LASF927:
	.string	"S_PAIN_RUN2"
.LASF928:
	.string	"S_PAIN_RUN3"
.LASF929:
	.string	"S_PAIN_RUN4"
.LASF211:
	.string	"SPR_HDB1"
.LASF212:
	.string	"SPR_HDB2"
.LASF213:
	.string	"SPR_HDB3"
.LASF214:
	.string	"SPR_HDB4"
.LASF215:
	.string	"SPR_HDB5"
.LASF216:
	.string	"SPR_HDB6"
.LASF1203:
	.string	"MT_POSSESSED"
.LASF261:
	.string	"S_DSGUN3"
.LASF262:
	.string	"S_DSGUN4"
.LASF81:
	.string	"type"
.LASF281:
	.string	"S_MISSILE"
.LASF1109:
	.string	"S_SHOT2"
.LASF1365:
	.string	"MF_SPECIAL"
.LASF1176:
	.string	"S_HANGTLOOKDN"
.LASF1410:
	.string	"movedir"
.LASF653:
	.string	"S_CPOS_XDIE1"
.LASF1379:
	.string	"MF_FLOAT"
.LASF74:
	.string	"actionf_t"
.LASF69:
	.string	"actionf_v"
.LASF172:
	.string	"SPR_MGUN"
.LASF1215:
	.string	"MT_SHADOWS"
.LASF556:
	.string	"S_SKEL_RUN10"
.LASF557:
	.string	"S_SKEL_RUN11"
.LASF558:
	.string	"S_SKEL_RUN12"
.LASF224:
	.string	"S_NULL"
.LASF766:
	.string	"S_BOSS_DIE1"
.LASF767:
	.string	"S_BOSS_DIE2"
.LASF768:
	.string	"S_BOSS_DIE3"
.LASF769:
	.string	"S_BOSS_DIE4"
.LASF770:
	.string	"S_BOSS_DIE5"
.LASF771:
	.string	"S_BOSS_DIE6"
.LASF772:
	.string	"S_BOSS_DIE7"
.LASF936:
	.string	"S_PAIN_PAIN"
.LASF305:
	.string	"S_BFG"
.LASF57:
	.string	"BT_WEAPONMASK"
.LASF1501:
	.string	"player_t"
.LASF1462:
	.string	"special"
.LASF951:
	.string	"S_SSWV_STND2"
.LASF173:
	.string	"SPR_CSAW"
.LASF1086:
	.string	"S_PMAP"
.LASF56:
	.string	"BT_CHANGE"
.LASF1092:
	.string	"S_PVIS"
.LASF306:
	.string	"S_BFGDOWN"
.LASF1227:
	.string	"MT_BOSSBRAIN"
.LASF119:
	.string	"SPR_SKEL"
.LASF301:
	.string	"S_PLASMA1"
.LASF302:
	.string	"S_PLASMA2"
.LASF1166:
	.string	"S_GTORCHSHRT"
.LASF1421:
	.string	"firstline"
.LASF1100:
	.string	"S_SHEL"
.LASF857:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF117:
	.string	"SPR_FATB"
.LASF222:
	.string	"NUMSPRITES"
.LASF123:
	.string	"SPR_SARG"
.LASF340:
	.string	"S_BFGSHOT2"
.LASF121:
	.string	"SPR_FATT"
.LASF1067:
	.string	"S_SOUL2"
.LASF1068:
	.string	"S_SOUL3"
.LASF1069:
	.string	"S_SOUL4"
.LASF1070:
	.string	"S_SOUL5"
.LASF1071:
	.string	"S_SOUL6"
.LASF827:
	.string	"S_SPID_RUN1"
.LASF828:
	.string	"S_SPID_RUN2"
.LASF829:
	.string	"S_SPID_RUN3"
.LASF830:
	.string	"S_SPID_RUN4"
.LASF831:
	.string	"S_SPID_RUN5"
.LASF832:
	.string	"S_SPID_RUN6"
.LASF833:
	.string	"S_SPID_RUN7"
.LASF834:
	.string	"S_SPID_RUN8"
.LASF63:
	.string	"float"
.LASF1034:
	.string	"S_BEXP3"
.LASF1035:
	.string	"S_BEXP4"
.LASF1123:
	.string	"S_DEADSTICK"
.LASF1450:
	.string	"fixedcolormap"
.LASF1435:
	.string	"weaponowned"
.LASF1244:
	.string	"MT_EXTRABFG"
.LASF413:
	.string	"S_POSS_DIE1"
.LASF414:
	.string	"S_POSS_DIE2"
.LASF415:
	.string	"S_POSS_DIE3"
.LASF416:
	.string	"S_POSS_DIE4"
.LASF417:
	.string	"S_POSS_DIE5"
.LASF243:
	.string	"S_SGUNDOWN"
.LASF92:
	.string	"SPR_CHGF"
.LASF91:
	.string	"SPR_CHGG"
.LASF1516:
	.string	"P_MovePlayer"
.LASF636:
	.string	"S_CPOS_RUN5"
.LASF895:
	.string	"S_ARACH_PLEX3"
.LASF637:
	.string	"S_CPOS_RUN6"
.LASF897:
	.string	"S_ARACH_PLEX5"
.LASF638:
	.string	"S_CPOS_RUN7"
.LASF1412:
	.string	"target"
.LASF202:
	.string	"SPR_CEYE"
.LASF1515:
	.string	"delta"
.LASF1478:
	.string	"ST_HORIZONTAL"
.LASF944:
	.string	"S_PAIN_RAISE1"
.LASF945:
	.string	"S_PAIN_RAISE2"
.LASF946:
	.string	"S_PAIN_RAISE3"
.LASF947:
	.string	"S_PAIN_RAISE4"
.LASF948:
	.string	"S_PAIN_RAISE5"
.LASF581:
	.string	"S_FATSHOT1"
.LASF582:
	.string	"S_FATSHOT2"
.LASF1479:
	.string	"ST_VERTICAL"
.LASF159:
	.string	"SPR_SUIT"
.LASF809:
	.string	"S_SKULL_STND"
.LASF1371:
	.string	"MF_JUSTHIT"
.LASF1392:
	.string	"MF_TRANSSHIFT"
.LASF843:
	.string	"S_SPID_PAIN"
.LASF1339:
	.string	"NUMMOBJTYPES"
.LASF141:
	.string	"SPR_BAR1"
.LASF256:
	.string	"S_DSGUN"
.LASF1135:
	.string	"S_CANDLESTIK"
.LASF45:
	.string	"pw_allmap"
.LASF1191:
	.string	"NUMSTATES"
.LASF835:
	.string	"S_SPID_RUN9"
.LASF321:
	.string	"S_TBALL1"
.LASF322:
	.string	"S_TBALL2"
.LASF535:
	.string	"S_SMOKE1"
.LASF536:
	.string	"S_SMOKE2"
.LASF537:
	.string	"S_SMOKE3"
.LASF538:
	.string	"S_SMOKE4"
.LASF539:
	.string	"S_SMOKE5"
.LASF758:
	.string	"S_BOSS_RUN6"
.LASF759:
	.string	"S_BOSS_RUN7"
.LASF760:
	.string	"S_BOSS_RUN8"
.LASF124:
	.string	"SPR_HEAD"
.LASF1399:
	.string	"bprev"
.LASF185:
	.string	"SPR_POL1"
.LASF181:
	.string	"SPR_POL2"
.LASF184:
	.string	"SPR_POL3"
.LASF183:
	.string	"SPR_POL4"
.LASF182:
	.string	"SPR_POL5"
.LASF186:
	.string	"SPR_POL6"
.LASF1030:
	.string	"S_BAR1"
.LASF1201:
	.string	"states"
.LASF1245:
	.string	"MT_MISC0"
.LASF1116:
	.string	"S_DEADTORSO"
.LASF1376:
	.string	"MF_PICKUP"
.LASF1385:
	.string	"MF_CORPSE"
.LASF258:
	.string	"S_DSGUNUP"
.LASF1342:
	.string	"spawnstate"
.LASF667:
	.string	"S_TROO_STND2"
.LASF1187:
	.string	"S_TECH2LAMP"
.LASF1231:
	.string	"MT_SPAWNFIRE"
.LASF1206:
	.string	"MT_FIRE"
.LASF1197:
	.string	"nextstate"
.LASF764:
	.string	"S_BOSS_PAIN"
.LASF135:
	.string	"SPR_SSWV"
.LASF1370:
	.string	"MF_AMBUSH"
.LASF1512:
	.string	"newweapon"
.LASF326:
	.string	"S_RBALL1"
.LASF327:
	.string	"S_RBALL2"
.LASF1131:
	.string	"S_TALLGRNCOL"
.LASF1415:
	.string	"lastlook"
.LASF1497:
	.string	"playerstate_t"
.LASF1120:
	.string	"S_HEADONASTICK"
.LASF400:
	.string	"S_POSS_RUN1"
.LASF342:
	.string	"S_BFGLAND2"
.LASF343:
	.string	"S_BFGLAND3"
.LASF344:
	.string	"S_BFGLAND4"
.LASF345:
	.string	"S_BFGLAND5"
.LASF346:
	.string	"S_BFGLAND6"
.LASF406:
	.string	"S_POSS_RUN7"
.LASF407:
	.string	"S_POSS_RUN8"
.LASF389:
	.string	"S_PLAY_XDIE1"
.LASF390:
	.string	"S_PLAY_XDIE2"
.LASF391:
	.string	"S_PLAY_XDIE3"
.LASF392:
	.string	"S_PLAY_XDIE4"
.LASF393:
	.string	"S_PLAY_XDIE5"
.LASF394:
	.string	"S_PLAY_XDIE6"
.LASF395:
	.string	"S_PLAY_XDIE7"
.LASF396:
	.string	"S_PLAY_XDIE8"
.LASF397:
	.string	"S_PLAY_XDIE9"
.LASF795:
	.string	"S_BOS2_DIE1"
.LASF796:
	.string	"S_BOS2_DIE2"
.LASF797:
	.string	"S_BOS2_DIE3"
.LASF798:
	.string	"S_BOS2_DIE4"
.LASF799:
	.string	"S_BOS2_DIE5"
.LASF800:
	.string	"S_BOS2_DIE6"
.LASF801:
	.string	"S_BOS2_DIE7"
.LASF1362:
	.string	"flags"
.LASF721:
	.string	"S_SARG_RAISE2"
.LASF722:
	.string	"S_SARG_RAISE3"
.LASF365:
	.string	"S_TFOG10"
.LASF723:
	.string	"S_SARG_RAISE4"
.LASF418:
	.string	"S_POSS_XDIE1"
.LASF419:
	.string	"S_POSS_XDIE2"
.LASF420:
	.string	"S_POSS_XDIE3"
.LASF421:
	.string	"S_POSS_XDIE4"
.LASF422:
	.string	"S_POSS_XDIE5"
.LASF423:
	.string	"S_POSS_XDIE6"
.LASF424:
	.string	"S_POSS_XDIE7"
.LASF35:
	.string	"am_clip"
.LASF426:
	.string	"S_POSS_XDIE9"
.LASF1119:
	.string	"S_GIBS"
.LASF734:
	.string	"S_HEAD_DIE1"
.LASF735:
	.string	"S_HEAD_DIE2"
.LASF736:
	.string	"S_HEAD_DIE3"
.LASF737:
	.string	"S_HEAD_DIE4"
.LASF738:
	.string	"S_HEAD_DIE5"
.LASF739:
	.string	"S_HEAD_DIE6"
.LASF587:
	.string	"S_FATT_STND2"
.LASF1110:
	.string	"S_COLU"
.LASF237:
	.string	"S_PISTOL1"
.LASF238:
	.string	"S_PISTOL2"
.LASF239:
	.string	"S_PISTOL3"
.LASF240:
	.string	"S_PISTOL4"
.LASF576:
	.string	"S_SKEL_RAISE2"
.LASF577:
	.string	"S_SKEL_RAISE3"
.LASF578:
	.string	"S_SKEL_RAISE4"
.LASF579:
	.string	"S_SKEL_RAISE5"
.LASF580:
	.string	"S_SKEL_RAISE6"
.LASF1139:
	.string	"S_BIGTREE"
.LASF1481:
	.string	"ST_NEGATIVE"
.LASF1049:
	.string	"S_BON2C"
.LASF1050:
	.string	"S_BON2D"
.LASF355:
	.string	"S_TFOG01"
.LASF356:
	.string	"S_TFOG02"
.LASF174:
	.string	"SPR_LAUN"
.LASF411:
	.string	"S_POSS_PAIN"
.LASF746:
	.string	"S_BRBALL1"
.LASF747:
	.string	"S_BRBALL2"
.LASF1209:
	.string	"MT_SMOKE"
.LASF1223:
	.string	"MT_CYBORG"
.LASF1360:
	.string	"damage"
.LASF451:
	.string	"S_SPOS_XDIE1"
.LASF452:
	.string	"S_SPOS_XDIE2"
.LASF453:
	.string	"S_SPOS_XDIE3"
.LASF454:
	.string	"S_SPOS_XDIE4"
.LASF455:
	.string	"S_SPOS_XDIE5"
.LASF456:
	.string	"S_SPOS_XDIE6"
.LASF457:
	.string	"S_SPOS_XDIE7"
.LASF458:
	.string	"S_SPOS_XDIE8"
.LASF459:
	.string	"S_SPOS_XDIE9"
.LASF1389:
	.string	"MF_SKULLFLY"
.LASF1394:
	.string	"mobj_s"
.LASF1454:
	.string	"mobj_t"
.LASF1052:
	.string	"S_BKEY"
.LASF43:
	.string	"pw_invisibility"
.LASF139:
	.string	"SPR_ARM1"
.LASF140:
	.string	"SPR_ARM2"
.LASF1205:
	.string	"MT_VILE"
.LASF18:
	.string	"it_blueskull"
.LASF1466:
	.string	"soundorg"
.LASF299:
	.string	"S_PLASMADOWN"
.LASF611:
	.string	"S_FATT_PAIN2"
.LASF1009:
	.string	"S_BRAINEYESEE"
.LASF1482:
	.string	"slopetype_t"
.LASF546:
	.string	"S_SKEL_STND2"
.LASF899:
	.string	"S_CYBER_STND2"
.LASF1200:
	.string	"state_t"
.LASF743:
	.string	"S_HEAD_RAISE4"
.LASF969:
	.string	"S_SSWV_DIE2"
.LASF11:
	.string	"registered"
.LASF425:
	.string	"S_POSS_XDIE8"
.LASF1099:
	.string	"S_CELP"
.LASF1141:
	.string	"S_EVILEYE"
.LASF1167:
	.string	"S_GTORCHSHRT2"
.LASF1168:
	.string	"S_GTORCHSHRT3"
.LASF1169:
	.string	"S_GTORCHSHRT4"
.LASF1425:
	.string	"viewheight"
.LASF1398:
	.string	"bnext"
.LASF600:
	.string	"S_FATT_ATK1"
.LASF133:
	.string	"SPR_CYBR"
.LASF601:
	.string	"S_FATT_ATK2"
.LASF504:
	.string	"S_VILE_DIE10"
.LASF94:
	.string	"SPR_MISF"
.LASF93:
	.string	"SPR_MISG"
.LASF106:
	.string	"SPR_MISL"
.LASF1058:
	.string	"S_BSKULL"
.LASF137:
	.string	"SPR_BBRN"
.LASF479:
	.string	"S_VILE_ATK1"
.LASF480:
	.string	"S_VILE_ATK2"
.LASF481:
	.string	"S_VILE_ATK3"
.LASF482:
	.string	"S_VILE_ATK4"
.LASF483:
	.string	"S_VILE_ATK5"
.LASF484:
	.string	"S_VILE_ATK6"
.LASF485:
	.string	"S_VILE_ATK7"
.LASF226:
	.string	"S_PUNCH"
.LASF487:
	.string	"S_VILE_ATK9"
.LASF208:
	.string	"SPR_SMBT"
.LASF782:
	.string	"S_BOS2_RUN1"
.LASF783:
	.string	"S_BOS2_RUN2"
.LASF784:
	.string	"S_BOS2_RUN3"
.LASF785:
	.string	"S_BOS2_RUN4"
.LASF786:
	.string	"S_BOS2_RUN5"
.LASF787:
	.string	"S_BOS2_RUN6"
.LASF788:
	.string	"S_BOS2_RUN7"
.LASF789:
	.string	"S_BOS2_RUN8"
.LASF1461:
	.string	"lightlevel"
.LASF199:
	.string	"SPR_TRE1"
.LASF200:
	.string	"SPR_TRE2"
.LASF856:
	.string	"S_BSPI_STND"
.LASF1351:
	.string	"meleestate"
.LASF1436:
	.string	"ammo"
.LASF646:
	.string	"S_CPOS_DIE1"
.LASF207:
	.string	"SPR_TRED"
.LASF100:
	.string	"SPR_BLUD"
.LASF602:
	.string	"S_FATT_ATK3"
.LASF603:
	.string	"S_FATT_ATK4"
.LASF604:
	.string	"S_FATT_ATK5"
.LASF605:
	.string	"S_FATT_ATK6"
.LASF606:
	.string	"S_FATT_ATK7"
.LASF607:
	.string	"S_FATT_ATK8"
.LASF608:
	.string	"S_FATT_ATK9"
.LASF110:
	.string	"SPR_TFOG"
.LASF314:
	.string	"S_BLOOD1"
.LASF315:
	.string	"S_BLOOD2"
.LASF316:
	.string	"S_BLOOD3"
.LASF1504:
	.string	"onground"
.LASF1198:
	.string	"misc1"
.LASF1199:
	.string	"misc2"
.LASF912:
	.string	"S_CYBER_ATK5"
.LASF913:
	.string	"S_CYBER_ATK6"
.LASF1489:
	.string	"angleturn"
.LASF1106:
	.string	"S_LAUN"
.LASF366:
	.string	"S_IFOG"
.LASF113:
	.string	"SPR_POSS"
.LASF118:
	.string	"SPR_FBXP"
.LASF1101:
	.string	"S_SBOX"
.LASF915:
	.string	"S_CYBER_DIE1"
.LASF916:
	.string	"S_CYBER_DIE2"
.LASF917:
	.string	"S_CYBER_DIE3"
.LASF918:
	.string	"S_CYBER_DIE4"
.LASF919:
	.string	"S_CYBER_DIE5"
.LASF920:
	.string	"S_CYBER_DIE6"
.LASF921:
	.string	"S_CYBER_DIE7"
.LASF793:
	.string	"S_BOS2_PAIN"
.LASF923:
	.string	"S_CYBER_DIE9"
.LASF1416:
	.string	"spawnpoint"
.LASF1507:
	.string	"P_MovePsprites"
.LASF1193:
	.string	"sprite"
.LASF1272:
	.string	"MT_MISC23"
.LASF1136:
	.string	"S_CANDELABRA"
.LASF476:
	.string	"S_VILE_RUN10"
.LASF477:
	.string	"S_VILE_RUN11"
.LASF478:
	.string	"S_VILE_RUN12"
.LASF1096:
	.string	"S_ROCK"
.LASF245:
	.string	"S_SGUN1"
.LASF246:
	.string	"S_SGUN2"
.LASF247:
	.string	"S_SGUN3"
.LASF248:
	.string	"S_SGUN4"
.LASF249:
	.string	"S_SGUN5"
.LASF250:
	.string	"S_SGUN6"
.LASF251:
	.string	"S_SGUN7"
.LASF252:
	.string	"S_SGUN8"
.LASF253:
	.string	"S_SGUN9"
.LASF1341:
	.string	"doomednum"
.LASF242:
	.string	"S_SGUN"
.LASF1132:
	.string	"S_SHRTGRNCOL"
.LASF817:
	.string	"S_SKULL_PAIN"
.LASF1230:
	.string	"MT_SPAWNSHOT"
.LASF1350:
	.string	"painsound"
.LASF541:
	.string	"S_TRACER2"
.LASF1140:
	.string	"S_TECHPILLAR"
.LASF545:
	.string	"S_SKEL_STND"
.LASF700:
	.string	"S_SARG_STND2"
.LASF14:
	.string	"indetermined"
.LASF446:
	.string	"S_SPOS_DIE1"
.LASF447:
	.string	"S_SPOS_DIE2"
.LASF448:
	.string	"S_SPOS_DIE3"
.LASF449:
	.string	"S_SPOS_DIE4"
.LASF450:
	.string	"S_SPOS_DIE5"
.LASF1496:
	.string	"PST_REBORN"
.LASF1175:
	.string	"S_HANGBNOBRAIN"
.LASF709:
	.string	"S_SARG_ATK1"
.LASF710:
	.string	"S_SARG_ATK2"
.LASF711:
	.string	"S_SARG_ATK3"
.LASF300:
	.string	"S_PLASMAUP"
.LASF1195:
	.string	"tics"
.LASF1056:
	.string	"S_YKEY"
.LASF1356:
	.string	"speed"
.LASF269:
	.string	"S_DSNR1"
.LASF938:
	.string	"S_PAIN_DIE1"
.LASF468:
	.string	"S_VILE_RUN2"
.LASF1186:
	.string	"S_TECHLAMP4"
.LASF632:
	.string	"S_CPOS_RUN1"
.LASF633:
	.string	"S_CPOS_RUN2"
.LASF634:
	.string	"S_CPOS_RUN3"
.LASF635:
	.string	"S_CPOS_RUN4"
.LASF70:
	.string	"actionf_p1"
.LASF71:
	.string	"actionf_p2"
.LASF170:
	.string	"SPR_BPAK"
.LASF639:
	.string	"S_CPOS_RUN8"
.LASF1036:
	.string	"S_BEXP5"
.LASF83:
	.string	"mapthing_t"
.LASF401:
	.string	"S_POSS_RUN2"
.LASF402:
	.string	"S_POSS_RUN3"
.LASF403:
	.string	"S_POSS_RUN4"
.LASF720:
	.string	"S_SARG_RAISE1"
.LASF404:
	.string	"S_POSS_RUN5"
.LASF72:
	.string	"acp1"
.LASF73:
	.string	"acp2"
.LASF724:
	.string	"S_SARG_RAISE5"
.LASF725:
	.string	"S_SARG_RAISE6"
.LASF1305:
	.string	"MT_MISC53"
.LASF209:
	.string	"SPR_SMGT"
.LASF1000:
	.string	"S_KEENPAIN"
.LASF348:
	.string	"S_BFGEXP2"
.LASF349:
	.string	"S_BFGEXP3"
.LASF350:
	.string	"S_BFGEXP4"
.LASF279:
	.string	"S_CHAINFLASH1"
.LASF280:
	.string	"S_CHAINFLASH2"
.LASF235:
	.string	"S_PISTOLDOWN"
.LASF900:
	.string	"S_CYBER_RUN1"
.LASF901:
	.string	"S_CYBER_RUN2"
.LASF902:
	.string	"S_CYBER_RUN3"
.LASF903:
	.string	"S_CYBER_RUN4"
.LASF904:
	.string	"S_CYBER_RUN5"
.LASF905:
	.string	"S_CYBER_RUN6"
.LASF906:
	.string	"S_CYBER_RUN7"
.LASF907:
	.string	"S_CYBER_RUN8"
.LASF1345:
	.string	"seesound"
.LASF1087:
	.string	"S_PMAP2"
.LASF1088:
	.string	"S_PMAP3"
.LASF1089:
	.string	"S_PMAP4"
.LASF1090:
	.string	"S_PMAP5"
.LASF1091:
	.string	"S_PMAP6"
.LASF1381:
	.string	"MF_MISSILE"
.LASF1447:
	.string	"bonuscount"
.LASF818:
	.string	"S_SKULL_PAIN2"
.LASF1349:
	.string	"painchance"
.LASF644:
	.string	"S_CPOS_PAIN"
.LASF1458:
	.string	"ceilingheight"
.LASF12:
	.string	"commercial"
.LASF1506:
	.string	"P_PlayerInSpecialSector"
.LASF62:
	.string	"BTS_SAVESHIFT"
.LASF949:
	.string	"S_PAIN_RAISE6"
.LASF1468:
	.string	"specialdata"
.LASF1288:
	.string	"MT_MISC36"
.LASF753:
	.string	"S_BOSS_RUN1"
.LASF754:
	.string	"S_BOSS_RUN2"
.LASF755:
	.string	"S_BOSS_RUN3"
.LASF756:
	.string	"S_BOSS_RUN4"
.LASF757:
	.string	"S_BOSS_RUN5"
.LASF275:
	.string	"S_CHAINUP"
.LASF1519:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1442:
	.string	"killcount"
.LASF894:
	.string	"S_ARACH_PLEX2"
.LASF1138:
	.string	"S_TORCHTREE"
.LASF950:
	.string	"S_SSWV_STND"
.LASF896:
	.string	"S_ARACH_PLEX4"
.LASF1374:
	.string	"MF_NOGRAVITY"
.LASF997:
	.string	"S_COMMKEEN10"
.LASF998:
	.string	"S_COMMKEEN11"
.LASF999:
	.string	"S_COMMKEEN12"
.LASF914:
	.string	"S_CYBER_PAIN"
.LASF433:
	.string	"S_SPOS_RUN1"
.LASF191:
	.string	"SPR_SMIT"
.LASF50:
	.string	"boolean"
.LASF436:
	.string	"S_SPOS_RUN4"
.LASF437:
	.string	"S_SPOS_RUN5"
.LASF128:
	.string	"SPR_SKUL"
.LASF439:
	.string	"S_SPOS_RUN7"
.LASF440:
	.string	"S_SPOS_RUN8"
.LASF1097:
	.string	"S_BROK"
.LASF1343:
	.string	"spawnhealth"
.LASF227:
	.string	"S_PUNCHDOWN"
.LASF893:
	.string	"S_ARACH_PLEX"
.LASF1154:
	.string	"S_GREENTORCH"
.LASF30:
	.string	"wp_supershotgun"
.LASF293:
	.string	"S_SAWDOWN"
.LASF1192:
	.string	"statenum_t"
.LASF1233:
	.string	"MT_TROOPSHOT"
.LASF1514:
	.string	"P_DeathThink"
.LASF1218:
	.string	"MT_BRUISERSHOT"
.LASF1493:
	.string	"ticcmd_t"
.LASF1338:
	.string	"MT_MISC86"
.LASF1483:
	.string	"ps_weapon"
.LASF381:
	.string	"S_PLAY_PAIN2"
.LASF776:
	.string	"S_BOSS_RAISE4"
.LASF1518:
	.string	"move"
.LASF777:
	.string	"S_BOSS_RAISE5"
.LASF1194:
	.string	"frame"
.LASF120:
	.string	"SPR_MANF"
.LASF631:
	.string	"S_CPOS_STND2"
.LASF444:
	.string	"S_SPOS_PAIN"
.LASF24:
	.string	"wp_shotgun"
.LASF412:
	.string	"S_POSS_PAIN2"
.LASF1239:
	.string	"MT_PUFF"
.LASF284:
	.string	"S_MISSILE1"
.LASF285:
	.string	"S_MISSILE2"
.LASF286:
	.string	"S_MISSILE3"
.LASF660:
	.string	"S_CPOS_RAISE2"
.LASF661:
	.string	"S_CPOS_RAISE3"
.LASF662:
	.string	"S_CPOS_RAISE4"
.LASF1452:
	.string	"psprites"
.LASF1104:
	.string	"S_MGUN"
.LASF1217:
	.string	"MT_BRUISER"
.LASF169:
	.string	"SPR_SBOX"
.LASF1444:
	.string	"secretcount"
.LASF1340:
	.string	"mobjtype_t"
.LASF1354:
	.string	"xdeathstate"
.LASF1429:
	.string	"powers"
.LASF813:
	.string	"S_SKULL_ATK1"
.LASF814:
	.string	"S_SKULL_ATK2"
.LASF815:
	.string	"S_SKULL_ATK3"
.LASF816:
	.string	"S_SKULL_ATK4"
.LASF794:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1219:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF1488:
	.string	"sidemove"
.LASF1361:
	.string	"activesound"
.LASF445:
	.string	"S_SPOS_PAIN2"
.LASF609:
	.string	"S_FATT_ATK10"
.LASF206:
	.string	"SPR_TGRN"
.LASF1264:
	.string	"MT_MEGA"
.LASF108:
	.string	"SPR_BFE1"
.LASF109:
	.string	"SPR_BFE2"
.LASF1467:
	.string	"thinglist"
.LASF1298:
	.string	"MT_MISC46"
.LASF1517:
	.string	"P_CalcHeight"
.LASF1226:
	.string	"MT_KEEN"
.LASF1465:
	.string	"blockbox"
.LASF1010:
	.string	"S_BRAINEYE1"
.LASF666:
	.string	"S_TROO_STND"
.LASF613:
	.string	"S_FATT_DIE2"
.LASF304:
	.string	"S_PLASMAFLASH2"
.LASF34:
	.string	"weapontype_t"
.LASF1491:
	.string	"chatchar"
.LASF357:
	.string	"S_TFOG2"
.LASF358:
	.string	"S_TFOG3"
.LASF359:
	.string	"S_TFOG4"
.LASF360:
	.string	"S_TFOG5"
.LASF361:
	.string	"S_TFOG6"
.LASF362:
	.string	"S_TFOG7"
.LASF363:
	.string	"S_TFOG8"
.LASF364:
	.string	"S_TFOG9"
.LASF779:
	.string	"S_BOSS_RAISE7"
.LASF1438:
	.string	"attackdown"
.LASF84:
	.string	"SPR_TROO"
.LASF95:
	.string	"SPR_SAWG"
.LASF1255:
	.string	"MT_MISC10"
.LASF1390:
	.string	"MF_NOTDMATCH"
.LASF144:
	.string	"SPR_BON1"
.LASF145:
	.string	"SPR_BON2"
.LASF1366:
	.string	"MF_SOLID"
.LASF17:
	.string	"it_redcard"
.LASF1133:
	.string	"S_TALLREDCOL"
.LASF1408:
	.string	"state"
.LASF1108:
	.string	"S_SHOT"
.LASF964:
	.string	"S_SSWV_ATK5"
.LASF1113:
	.string	"S_BLOODYTWITCH2"
.LASF1114:
	.string	"S_BLOODYTWITCH3"
.LASF1115:
	.string	"S_BLOODYTWITCH4"
.LASF854:
	.string	"S_SPID_DIE10"
.LASF855:
	.string	"S_SPID_DIE11"
.LASF1430:
	.string	"cards"
.LASF201:
	.string	"SPR_ELEC"
.LASF1002:
	.string	"S_BRAIN"
.LASF1509:
	.string	"P_SetMobjState"
.LASF1505:
	.string	"P_UseLines"
.LASF1221:
	.string	"MT_SPIDER"
.LASF1085:
	.string	"S_SUIT"
.LASF99:
	.string	"SPR_BFGF"
.LASF98:
	.string	"SPR_BFGG"
.LASF925:
	.string	"S_PAIN_STND"
.LASF341:
	.string	"S_BFGLAND"
.LASF1031:
	.string	"S_BAR2"
.LASF1434:
	.string	"pendingweapon"
.LASF78:
	.string	"function"
.LASF36:
	.string	"am_shell"
.LASF1406:
	.string	"validcount"
.LASF1445:
	.string	"message"
.LASF621:
	.string	"S_FATT_DIE10"
.LASF21:
	.string	"NUMCARDS"
.LASF1158:
	.string	"S_REDTORCH"
.LASF1237:
	.string	"MT_BFG"
.LASF405:
	.string	"S_POSS_RUN6"
.LASF1500:
	.string	"CF_NOMOMENTUM"
.LASF115:
	.string	"SPR_VILE"
.LASF1240:
	.string	"MT_BLOOD"
.LASF234:
	.string	"S_PISTOL"
.LASF49:
	.string	"true"
.LASF466:
	.string	"S_VILE_STND2"
.LASF884:
	.string	"S_BSPI_RAISE1"
.LASF885:
	.string	"S_BSPI_RAISE2"
.LASF886:
	.string	"S_BSPI_RAISE3"
.LASF887:
	.string	"S_BSPI_RAISE4"
.LASF888:
	.string	"S_BSPI_RAISE5"
.LASF889:
	.string	"S_BSPI_RAISE6"
.LASF890:
	.string	"S_BSPI_RAISE7"
.LASF1403:
	.string	"momx"
.LASF1382:
	.string	"MF_DROPPED"
.LASF1404:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF973:
	.string	"S_SSWV_XDIE1"
.LASF974:
	.string	"S_SSWV_XDIE2"
.LASF975:
	.string	"S_SSWV_XDIE3"
.LASF976:
	.string	"S_SSWV_XDIE4"
.LASF977:
	.string	"S_SSWV_XDIE5"
.LASF978:
	.string	"S_SSWV_XDIE6"
.LASF979:
	.string	"S_SSWV_XDIE7"
.LASF980:
	.string	"S_SSWV_XDIE8"
.LASF981:
	.string	"S_SSWV_XDIE9"
.LASF271:
	.string	"S_DSGUNFLASH1"
.LASF272:
	.string	"S_DSGUNFLASH2"
.LASF1271:
	.string	"MT_MISC22"
.LASF1453:
	.string	"didsecret"
.LASF529:
	.string	"S_FIRE25"
.LASF623:
	.string	"S_FATT_RAISE2"
.LASF1307:
	.string	"MT_MISC55"
.LASF1426:
	.string	"deltaviewheight"
.LASF19:
	.string	"it_yellowskull"
.LASF1061:
	.string	"S_RSKULL2"
.LASF1417:
	.string	"tracer"
.LASF836:
	.string	"S_SPID_RUN10"
.LASF837:
	.string	"S_SPID_RUN11"
.LASF838:
	.string	"S_SPID_RUN12"
.LASF1511:
	.string	"rcsid"
.LASF1363:
	.string	"raisestate"
.LASF287:
	.string	"S_MISSILEFLASH1"
.LASF288:
	.string	"S_MISSILEFLASH2"
.LASF289:
	.string	"S_MISSILEFLASH3"
.LASF290:
	.string	"S_MISSILEFLASH4"
.LASF150:
	.string	"SPR_RSKU"
.LASF75:
	.string	"think_t"
.LASF647:
	.string	"S_CPOS_DIE2"
.LASF648:
	.string	"S_CPOS_DIE3"
.LASF649:
	.string	"S_CPOS_DIE4"
.LASF1383:
	.string	"MF_SHADOW"
.LASF650:
	.string	"S_CPOS_DIE5"
.LASF651:
	.string	"S_CPOS_DIE6"
.LASF652:
	.string	"S_CPOS_DIE7"
.LASF1498:
	.string	"CF_NOCLIP"
.LASF1093:
	.string	"S_PVIS2"
.LASF1232:
	.string	"MT_BARREL"
.LASF825:
	.string	"S_SPID_STND"
.LASF597:
	.string	"S_FATT_RUN10"
.LASF598:
	.string	"S_FATT_RUN11"
.LASF599:
	.string	"S_FATT_RUN12"
.LASF1224:
	.string	"MT_PAIN"
.LASF1151:
	.string	"S_BLUETORCH2"
.LASF1364:
	.string	"mobjinfo_t"
.LASF1152:
	.string	"S_BLUETORCH3"
.LASF1153:
	.string	"S_BLUETORCH4"
.LASF210:
	.string	"SPR_SMRT"
.LASF312:
	.string	"S_BFGFLASH1"
.LASF313:
	.string	"S_BFGFLASH2"
.LASF846:
	.string	"S_SPID_DIE2"
.LASF127:
	.string	"SPR_BOS2"
.LASF849:
	.string	"S_SPID_DIE5"
.LASF850:
	.string	"S_SPID_DIE6"
.LASF851:
	.string	"S_SPID_DIE7"
.LASF852:
	.string	"S_SPID_DIE8"
.LASF1142:
	.string	"S_EVILEYE2"
.LASF1143:
	.string	"S_EVILEYE3"
.LASF1144:
	.string	"S_EVILEYE4"
.LASF317:
	.string	"S_PUFF1"
.LASF318:
	.string	"S_PUFF2"
.LASF319:
	.string	"S_PUFF3"
.LASF138:
	.string	"SPR_BOSF"
.LASF1470:
	.string	"lines"
.LASF126:
	.string	"SPR_BOSS"
.LASF1236:
	.string	"MT_PLASMA"
.LASF871:
	.string	"S_BSPI_ATK1"
.LASF872:
	.string	"S_BSPI_ATK2"
.LASF873:
	.string	"S_BSPI_ATK3"
.LASF874:
	.string	"S_BSPI_ATK4"
.LASF1053:
	.string	"S_BKEY2"
.LASF31:
	.string	"NUMWEAPONS"
.LASF858:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF860:
	.string	"S_BSPI_RUN2"
.LASF1004:
	.string	"S_BRAIN_DIE1"
.LASF1005:
	.string	"S_BRAIN_DIE2"
.LASF1006:
	.string	"S_BRAIN_DIE3"
.LASF1007:
	.string	"S_BRAIN_DIE4"
.LASF339:
	.string	"S_BFGSHOT"
.LASF1145:
	.string	"S_FLOATSKULL"
.LASF495:
	.string	"S_VILE_DIE1"
.LASF496:
	.string	"S_VILE_DIE2"
.LASF497:
	.string	"S_VILE_DIE3"
.LASF498:
	.string	"S_VILE_DIE4"
.LASF499:
	.string	"S_VILE_DIE5"
.LASF500:
	.string	"S_VILE_DIE6"
.LASF501:
	.string	"S_VILE_DIE7"
.LASF502:
	.string	"S_VILE_DIE8"
.LASF503:
	.string	"S_VILE_DIE9"
.LASF1446:
	.string	"damagecount"
.LASF1367:
	.string	"MF_SHOOTABLE"
.LASF179:
	.string	"SPR_SMT2"
.LASF1055:
	.string	"S_RKEY2"
.LASF1026:
	.string	"S_ARM1"
.LASF1028:
	.string	"S_ARM2"
.LASF1121:
	.string	"S_HEADCANDLES"
.LASF157:
	.string	"SPR_PINS"
.LASF751:
	.string	"S_BOSS_STND"
.LASF731:
	.string	"S_HEAD_PAIN"
.LASF16:
	.string	"it_yellowcard"
.LASF1208:
	.string	"MT_TRACER"
.LASF612:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF614:
	.string	"S_FATT_DIE3"
.LASF615:
	.string	"S_FATT_DIE4"
.LASF616:
	.string	"S_FATT_DIE5"
.LASF617:
	.string	"S_FATT_DIE6"
.LASF618:
	.string	"S_FATT_DIE7"
.LASF619:
	.string	"S_FATT_DIE8"
.LASF620:
	.string	"S_FATT_DIE9"
.LASF687:
	.string	"S_TROO_XDIE2"
.LASF688:
	.string	"S_TROO_XDIE3"
.LASF689:
	.string	"S_TROO_XDIE4"
.LASF690:
	.string	"S_TROO_XDIE5"
.LASF691:
	.string	"S_TROO_XDIE6"
.LASF692:
	.string	"S_TROO_XDIE7"
.LASF693:
	.string	"S_TROO_XDIE8"
.LASF162:
	.string	"SPR_CLIP"
.LASF1134:
	.string	"S_SHRTREDCOL"
.LASF1177:
	.string	"S_HANGTSKULL"
.LASF47:
	.string	"NUMPOWERS"
.LASF962:
	.string	"S_SSWV_ATK3"
.LASF963:
	.string	"S_SSWV_ATK4"
.LASF268:
	.string	"S_DSGUN10"
.LASF42:
	.string	"pw_strength"
.LASF196:
	.string	"SPR_CAND"
.LASF1214:
	.string	"MT_SERGEANT"
.LASF54:
	.string	"BT_SPECIAL"
.LASF1124:
	.string	"S_LIVESTICK"
.LASF1064:
	.string	"S_STIM"
.LASF37:
	.string	"am_cell"
.LASF15:
	.string	"it_bluecard"
.LASF1401:
	.string	"floorz"
.LASF727:
	.string	"S_HEAD_RUN1"
.LASF382:
	.string	"S_PLAY_DIE1"
.LASF383:
	.string	"S_PLAY_DIE2"
.LASF384:
	.string	"S_PLAY_DIE3"
.LASF385:
	.string	"S_PLAY_DIE4"
.LASF386:
	.string	"S_PLAY_DIE5"
.LASF387:
	.string	"S_PLAY_DIE6"
.LASF388:
	.string	"S_PLAY_DIE7"
.LASF398:
	.string	"S_POSS_STND"
.LASF354:
	.string	"S_TFOG"
.LASF1292:
	.string	"MT_MISC40"
.LASF1293:
	.string	"MT_MISC41"
.LASF1418:
	.string	"subsector_s"
.LASF714:
	.string	"S_SARG_DIE1"
.LASF715:
	.string	"S_SARG_DIE2"
.LASF716:
	.string	"S_SARG_DIE3"
.LASF717:
	.string	"S_SARG_DIE4"
.LASF1015:
	.string	"S_SPAWNFIRE1"
.LASF1016:
	.string	"S_SPAWNFIRE2"
.LASF1017:
	.string	"S_SPAWNFIRE3"
.LASF1018:
	.string	"S_SPAWNFIRE4"
.LASF1019:
	.string	"S_SPAWNFIRE5"
.LASF1020:
	.string	"S_SPAWNFIRE6"
.LASF1021:
	.string	"S_SPAWNFIRE7"
.LASF1022:
	.string	"S_SPAWNFIRE8"
.LASF686:
	.string	"S_TROO_XDIE1"
.LASF1490:
	.string	"consistancy"
.LASF1419:
	.string	"sector"
.LASF1179:
	.string	"S_HANGTNOBRAIN"
.LASF334:
	.string	"S_PLASEXP2"
.LASF335:
	.string	"S_PLASEXP3"
.LASF336:
	.string	"S_PLASEXP4"
.LASF337:
	.string	"S_PLASEXP5"
.LASF28:
	.string	"wp_bfg"
.LASF1163:
	.string	"S_BTORCHSHRT2"
.LASF1164:
	.string	"S_BTORCHSHRT3"
.LASF1165:
	.string	"S_BTORCHSHRT4"
.LASF467:
	.string	"S_VILE_RUN1"
.LASF257:
	.string	"S_DSGUNDOWN"
.LASF469:
	.string	"S_VILE_RUN3"
.LASF470:
	.string	"S_VILE_RUN4"
.LASF471:
	.string	"S_VILE_RUN5"
.LASF472:
	.string	"S_VILE_RUN6"
.LASF473:
	.string	"S_VILE_RUN7"
.LASF474:
	.string	"S_VILE_RUN8"
.LASF475:
	.string	"S_VILE_RUN9"
.LASF718:
	.string	"S_SARG_DIE5"
.LASF719:
	.string	"S_SARG_DIE6"
.LASF1395:
	.string	"thinker"
.LASF559:
	.string	"S_SKEL_FIST1"
.LASF560:
	.string	"S_SKEL_FIST2"
.LASF561:
	.string	"S_SKEL_FIST3"
.LASF562:
	.string	"S_SKEL_FIST4"
.LASF298:
	.string	"S_PLASMA"
.LASF1077:
	.string	"S_PINS"
.LASF1520:
	.string	"P_Thrust"
.LASF1150:
	.string	"S_BLUETORCH"
.LASF588:
	.string	"S_FATT_RUN1"
.LASF589:
	.string	"S_FATT_RUN2"
.LASF590:
	.string	"S_FATT_RUN3"
.LASF591:
	.string	"S_FATT_RUN4"
.LASF44:
	.string	"pw_ironfeet"
.LASF593:
	.string	"S_FATT_RUN6"
.LASF594:
	.string	"S_FATT_RUN7"
.LASF595:
	.string	"S_FATT_RUN8"
.LASF1126:
	.string	"S_MEAT2"
.LASF1127:
	.string	"S_MEAT3"
.LASF1128:
	.string	"S_MEAT4"
.LASF1129:
	.string	"S_MEAT5"
.LASF241:
	.string	"S_PISTOLFLASH"
.LASF1457:
	.string	"floorheight"
.LASF461:
	.string	"S_SPOS_RAISE2"
.LASF462:
	.string	"S_SPOS_RAISE3"
.LASF463:
	.string	"S_SPOS_RAISE4"
.LASF464:
	.string	"S_SPOS_RAISE5"
.LASF153:
	.string	"SPR_MEDI"
.LASF155:
	.string	"SPR_PINV"
.LASF1003:
	.string	"S_BRAIN_PAIN"
.LASF274:
	.string	"S_CHAINDOWN"
.LASF1378:
	.string	"MF_SLIDE"
.LASF493:
	.string	"S_VILE_PAIN"
.LASF540:
	.string	"S_TRACER"
.LASF960:
	.string	"S_SSWV_ATK1"
.LASF961:
	.string	"S_SSWV_ATK2"
.LASF490:
	.string	"S_VILE_HEAL1"
.LASF491:
	.string	"S_VILE_HEAL2"
.LASF492:
	.string	"S_VILE_HEAL3"
.LASF965:
	.string	"S_SSWV_ATK6"
.LASF1411:
	.string	"movecount"
.LASF147:
	.string	"SPR_RKEY"
.LASF1111:
	.string	"S_STALAG"
.LASF826:
	.string	"S_SPID_STND2"
.LASF68:
	.string	"angle_t"
.LASF1460:
	.string	"ceilingpic"
.LASF1112:
	.string	"S_BLOODYTWITCH"
.LASF1181:
	.string	"S_SMALLPOOL"
.LASF1486:
	.string	"pspdef_t"
.LASF1308:
	.string	"MT_MISC56"
.LASF610:
	.string	"S_FATT_PAIN"
.LASF374:
	.string	"S_PLAY_RUN1"
.LASF375:
	.string	"S_PLAY_RUN2"
.LASF376:
	.string	"S_PLAY_RUN3"
.LASF377:
	.string	"S_PLAY_RUN4"
.LASF1102:
	.string	"S_BPAK"
.LASF64:
	.string	"double"
.LASF142:
	.string	"SPR_BEXP"
.LASF1422:
	.string	"player_s"
.LASF1059:
	.string	"S_BSKULL2"
.LASF1373:
	.string	"MF_SPAWNCEILING"
.LASF101:
	.string	"SPR_PUFF"
.LASF988:
	.string	"S_COMMKEEN"
.LASF1439:
	.string	"usedown"
.LASF780:
	.string	"S_BOS2_STND"
.LASF107:
	.string	"SPR_BFS1"
.LASF1011:
	.string	"S_SPAWN1"
.LASF1012:
	.string	"S_SPAWN2"
.LASF1013:
	.string	"S_SPAWN3"
.LASF1014:
	.string	"S_SPAWN4"
.LASF1184:
	.string	"S_TECHLAMP2"
.LASF1185:
	.string	"S_TECHLAMP3"
.LASF29:
	.string	"wp_chainsaw"
.LASF1222:
	.string	"MT_BABY"
.LASF1437:
	.string	"maxammo"
.LASF1125:
	.string	"S_LIVESTICK2"
.LASF1170:
	.string	"S_RTORCHSHRT"
.LASF1268:
	.string	"MT_MISC19"
.LASF129:
	.string	"SPR_SPID"
.LASF726:
	.string	"S_HEAD_STND"
.LASF701:
	.string	"S_SARG_RUN1"
.LASF702:
	.string	"S_SARG_RUN2"
.LASF704:
	.string	"S_SARG_RUN4"
.LASF705:
	.string	"S_SARG_RUN5"
.LASF706:
	.string	"S_SARG_RUN6"
.LASF707:
	.string	"S_SARG_RUN7"
.LASF708:
	.string	"S_SARG_RUN8"
.LASF1246:
	.string	"MT_MISC1"
.LASF1247:
	.string	"MT_MISC2"
.LASF1248:
	.string	"MT_MISC3"
.LASF1249:
	.string	"MT_MISC4"
.LASF1250:
	.string	"MT_MISC5"
.LASF1251:
	.string	"MT_MISC6"
.LASF1252:
	.string	"MT_MISC7"
.LASF1253:
	.string	"MT_MISC8"
.LASF1254:
	.string	"MT_MISC9"
.LASF291:
	.string	"S_SAW"
.LASF158:
	.string	"SPR_MEGA"
.LASF380:
	.string	"S_PLAY_PAIN"
.LASF332:
	.string	"S_PLASBALL2"
.LASF1484:
	.string	"ps_flash"
.LASF1423:
	.string	"playerstate"
.LASF136:
	.string	"SPR_KEEN"
.LASF966:
	.string	"S_SSWV_PAIN"
.LASF1348:
	.string	"painstate"
.LASF1001:
	.string	"S_KEENPAIN2"
.LASF46:
	.string	"pw_infrared"
.LASF488:
	.string	"S_VILE_ATK10"
.LASF489:
	.string	"S_VILE_ATK11"
.LASF967:
	.string	"S_SSWV_PAIN2"
.LASF1332:
	.string	"MT_MISC80"
.LASF1355:
	.string	"deathsound"
.LASF1041:
	.string	"S_BON1A"
.LASF1042:
	.string	"S_BON1B"
.LASF1043:
	.string	"S_BON1C"
.LASF1044:
	.string	"S_BON1D"
.LASF1045:
	.string	"S_BON1E"
.LASF1503:
	.string	"leveltime"
.LASF1477:
	.string	"sector_t"
.LASF156:
	.string	"SPR_PSTR"
.LASF1270:
	.string	"MT_MISC21"
.LASF712:
	.string	"S_SARG_PAIN"
.LASF1265:
	.string	"MT_CLIP"
.LASF171:
	.string	"SPR_BFUG"
.LASF1320:
	.string	"MT_MISC68"
.LASF1037:
	.string	"S_BBAR1"
.LASF1038:
	.string	"S_BBAR2"
.LASF1039:
	.string	"S_BBAR3"
.LASF225:
	.string	"S_LIGHTDONE"
.LASF876:
	.string	"S_BSPI_PAIN2"
.LASF1431:
	.string	"backpack"
.LASF676:
	.string	"S_TROO_ATK1"
.LASF677:
	.string	"S_TROO_ATK2"
.LASF678:
	.string	"S_TROO_ATK3"
.LASF820:
	.string	"S_SKULL_DIE2"
.LASF821:
	.string	"S_SKULL_DIE3"
.LASF822:
	.string	"S_SKULL_DIE4"
.LASF823:
	.string	"S_SKULL_DIE5"
.LASF824:
	.string	"S_SKULL_DIE6"
.LASF175:
	.string	"SPR_PLAS"
.LASF1047:
	.string	"S_BON2A"
.LASF1048:
	.string	"S_BON2B"
.LASF88:
	.string	"SPR_PISF"
.LASF87:
	.string	"SPR_PISG"
.LASF1051:
	.string	"S_BON2E"
.LASF1275:
	.string	"MT_CHAINGUN"
.LASF323:
	.string	"S_TBALLX1"
.LASF324:
	.string	"S_TBALLX2"
.LASF325:
	.string	"S_TBALLX3"
.LASF32:
	.string	"wp_nochange"
.LASF1212:
	.string	"MT_CHAINGUY"
.LASF1456:
	.string	"degenmobj_t"
.LASF1487:
	.string	"forwardmove"
.LASF819:
	.string	"S_SKULL_DIE1"
.LASF1495:
	.string	"PST_DEAD"
.LASF1182:
	.string	"S_BRAINSTEM"
.LASF987:
	.string	"S_KEENSTND"
.LASF112:
	.string	"SPR_PLAY"
.LASF1377:
	.string	"MF_NOCLIP"
.LASF1433:
	.string	"readyweapon"
.LASF1122:
	.string	"S_HEADCANDLES2"
.LASF1242:
	.string	"MT_IFOG"
.LASF203:
	.string	"SPR_FSKU"
.LASF438:
	.string	"S_SPOS_RUN6"
.LASF294:
	.string	"S_SAWUP"
.LASF1027:
	.string	"S_ARM1A"
.LASF630:
	.string	"S_CPOS_STND"
.LASF1283:
	.string	"MT_MISC31"
.LASF1405:
	.string	"momz"
.LASF61:
	.string	"BTS_SAVEMASK"
.LASF1463:
	.string	"soundtraversed"
.LASF1286:
	.string	"MT_MISC34"
.LASF1473:
	.string	"bbox"
.LASF333:
	.string	"S_PLASEXP"
.LASF1289:
	.string	"MT_MISC37"
.LASF1117:
	.string	"S_DEADBOTTOM"
.LASF1174:
	.string	"S_HANGNOGUTS"
.LASF1347:
	.string	"attacksound"
.LASF1078:
	.string	"S_PINS2"
.LASF1079:
	.string	"S_PINS3"
.LASF1080:
	.string	"S_PINS4"
.LASF60:
	.string	"BTS_SAVEGAME"
.LASF932:
	.string	"S_PAIN_ATK1"
.LASF933:
	.string	"S_PAIN_ATK2"
.LASF934:
	.string	"S_PAIN_ATK3"
.LASF935:
	.string	"S_PAIN_ATK4"
.LASF244:
	.string	"S_SGUNUP"
.LASF1375:
	.string	"MF_DROPOFF"
.LASF1475:
	.string	"frontsector"
.LASF197:
	.string	"SPR_CBRA"
.LASF1353:
	.string	"deathstate"
.LASF1029:
	.string	"S_ARM2A"
.LASF898:
	.string	"S_CYBER_STND"
.LASF52:
	.string	"BT_ATTACK"
.LASF1057:
	.string	"S_YKEY2"
.LASF507:
	.string	"S_FIRE3"
.LASF1346:
	.string	"reactiontime"
.LASF512:
	.string	"S_FIRE8"
.LASF752:
	.string	"S_BOSS_STND2"
.LASF1397:
	.string	"sprev"
.LASF295:
	.string	"S_SAW1"
.LASF296:
	.string	"S_SAW2"
.LASF297:
	.string	"S_SAW3"
.LASF1040:
	.string	"S_BON1"
.LASF1046:
	.string	"S_BON2"
.LASF1414:
	.string	"player"
.LASF292:
	.string	"S_SAWB"
.LASF680:
	.string	"S_TROO_PAIN2"
.LASF1228:
	.string	"MT_BOSSSPIT"
.LASF505:
	.string	"S_FIRE1"
.LASF506:
	.string	"S_FIRE2"
.LASF65:
	.string	"fixed_t"
.LASF508:
	.string	"S_FIRE4"
.LASF509:
	.string	"S_FIRE5"
.LASF510:
	.string	"S_FIRE6"
.LASF511:
	.string	"S_FIRE7"
.LASF165:
	.string	"SPR_BROK"
.LASF513:
	.string	"S_FIRE9"
.LASF1296:
	.string	"MT_MISC44"
.LASF1297:
	.string	"MT_MISC45"
.LASF1098:
	.string	"S_CELL"
.LASF1299:
	.string	"MT_MISC47"
.LASF163:
	.string	"SPR_AMMO"
.LASF1300:
	.string	"MT_MISC48"
.LASF1301:
	.string	"MT_MISC49"
.LASF811:
	.string	"S_SKULL_RUN1"
.LASF812:
	.string	"S_SKULL_RUN2"
.LASF1178:
	.string	"S_HANGTLOOKUP"
.LASF1368:
	.string	"MF_NOSECTOR"
.LASF273:
	.string	"S_CHAIN"
.LASF303:
	.string	"S_PLASMAFLASH1"
.LASF259:
	.string	"S_DSGUN1"
.LASF260:
	.string	"S_DSGUN2"
.LASF154:
	.string	"SPR_SOUL"
.LASF114:
	.string	"SPR_SPOS"
.LASF263:
	.string	"S_DSGUN5"
.LASF264:
	.string	"S_DSGUN6"
.LASF265:
	.string	"S_DSGUN7"
.LASF266:
	.string	"S_DSGUN8"
.LASF267:
	.string	"S_DSGUN9"
.LASF431:
	.string	"S_SPOS_STND"
.LASF134:
	.string	"SPR_PAIN"
.LASF659:
	.string	"S_CPOS_RAISE1"
.LASF1432:
	.string	"frags"
.LASF1427:
	.string	"armorpoints"
.LASF1492:
	.string	"buttons"
.LASF308:
	.string	"S_BFG1"
.LASF309:
	.string	"S_BFG2"
.LASF310:
	.string	"S_BFG3"
.LASF311:
	.string	"S_BFG4"
.LASF223:
	.string	"spritenum_t"
.LASF270:
	.string	"S_DSNR2"
.LASF810:
	.string	"S_SKULL_STND2"
.LASF1073:
	.string	"S_PINV2"
.LASF1074:
	.string	"S_PINV3"
.LASF703:
	.string	"S_SARG_RUN3"
.LASF1188:
	.string	"S_TECH2LAMP2"
.LASF1189:
	.string	"S_TECH2LAMP3"
.LASF1190:
	.string	"S_TECH2LAMP4"
.LASF67:
	.string	"finecosine"
.LASF1471:
	.string	"line_s"
.LASF1386:
	.string	"MF_INFLOAT"
.LASF86:
	.string	"SPR_PUNG"
.LASF654:
	.string	"S_CPOS_XDIE2"
.LASF655:
	.string	"S_CPOS_XDIE3"
.LASF656:
	.string	"S_CPOS_XDIE4"
.LASF657:
	.string	"S_CPOS_XDIE5"
.LASF658:
	.string	"S_CPOS_XDIE6"
.LASF839:
	.string	"S_SPID_ATK1"
.LASF840:
	.string	"S_SPID_ATK2"
.LASF841:
	.string	"S_SPID_ATK3"
.LASF842:
	.string	"S_SPID_ATK4"
.LASF563:
	.string	"S_SKEL_MISS1"
.LASF564:
	.string	"S_SKEL_MISS2"
.LASF565:
	.string	"S_SKEL_MISS3"
.LASF566:
	.string	"S_SKEL_MISS4"
.LASF320:
	.string	"S_PUFF4"
.LASF1060:
	.string	"S_RSKULL"
.LASF892:
	.string	"S_ARACH_PLAZ2"
.LASF1302:
	.string	"MT_MISC50"
.LASF740:
	.string	"S_HEAD_RAISE1"
.LASF1337:
	.string	"MT_MISC85"
.LASF741:
	.string	"S_HEAD_RAISE2"
.LASF742:
	.string	"S_HEAD_RAISE3"
.LASF1440:
	.string	"cheats"
.LASF149:
	.string	"SPR_BSKU"
.LASF744:
	.string	"S_HEAD_RAISE5"
.LASF745:
	.string	"S_HEAD_RAISE6"
.LASF1280:
	.string	"MT_SUPERSHOTGUN"
.LASF160:
	.string	"SPR_PMAP"
.LASF1008:
	.string	"S_BRAINEYE"
.LASF161:
	.string	"SPR_PVIS"
.LASF1494:
	.string	"PST_LIVE"
.LASF1508:
	.string	"R_PointToAngle2"
.LASF1238:
	.string	"MT_ARACHPLAZ"
.LASF1384:
	.string	"MF_NOBLOOD"
.LASF486:
	.string	"S_VILE_ATK8"
.LASF427:
	.string	"S_POSS_RAISE1"
.LASF428:
	.string	"S_POSS_RAISE2"
.LASF429:
	.string	"S_POSS_RAISE3"
.LASF430:
	.string	"S_POSS_RAISE4"
.LASF282:
	.string	"S_MISSILEDOWN"
.LASF1146:
	.string	"S_FLOATSKULL2"
.LASF1147:
	.string	"S_FLOATSKULL3"
.LASF1081:
	.string	"S_MEGA"
.LASF761:
	.string	"S_BOSS_ATK1"
.LASF762:
	.string	"S_BOSS_ATK2"
.LASF763:
	.string	"S_BOSS_ATK3"
.LASF1400:
	.string	"subsector"
.LASF219:
	.string	"SPR_BRS1"
.LASF1455:
	.string	"vertex_t"
.LASF568:
	.string	"S_SKEL_PAIN2"
.LASF1105:
	.string	"S_CSAW"
.LASF41:
	.string	"pw_invulnerability"
.LASF748:
	.string	"S_BRBALLX1"
.LASF749:
	.string	"S_BRBALLX2"
.LASF750:
	.string	"S_BRBALLX3"
.LASF878:
	.string	"S_BSPI_DIE2"
.LASF879:
	.string	"S_BSPI_DIE3"
.LASF880:
	.string	"S_BSPI_DIE4"
.LASF881:
	.string	"S_BSPI_DIE5"
.LASF25:
	.string	"wp_chaingun"
.LASF883:
	.string	"S_BSPI_DIE7"
.LASF434:
	.string	"S_SPOS_RUN2"
.LASF1476:
	.string	"backsector"
.LASF435:
	.string	"S_SPOS_RUN3"
.LASF937:
	.string	"S_PAIN_PAIN2"
.LASF572:
	.string	"S_SKEL_DIE4"
.LASF168:
	.string	"SPR_SHEL"
.LASF1321:
	.string	"MT_MISC69"
.LASF1428:
	.string	"armortype"
.LASF48:
	.string	"false"
.LASF220:
	.string	"SPR_TLMP"
.LASF1380:
	.string	"MF_TELEPORT"
.LASF399:
	.string	"S_POSS_STND2"
.LASF1279:
	.string	"MT_SHOTGUN"
.LASF1204:
	.string	"MT_SHOTGUY"
.LASF1443:
	.string	"itemcount"
.LASF1183:
	.string	"S_TECHLAMP"
.LASF1225:
	.string	"MT_WOLFSS"
.LASF781:
	.string	"S_BOS2_STND2"
.LASF1464:
	.string	"soundtarget"
.LASF276:
	.string	"S_CHAIN1"
.LASF277:
	.string	"S_CHAIN2"
.LASF278:
	.string	"S_CHAIN3"
.LASF329:
	.string	"S_RBALLX2"
.LASF330:
	.string	"S_RBALLX3"
.LASF205:
	.string	"SPR_TBLU"
.LASF432:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1396:
	.string	"snext"
.LASF40:
	.string	"am_noammo"
.LASF1393:
	.string	"thinker_s"
.LASF79:
	.string	"thinker_t"
.LASF408:
	.string	"S_POSS_ATK1"
.LASF409:
	.string	"S_POSS_ATK2"
.LASF410:
	.string	"S_POSS_ATK3"
.LASF1323:
	.string	"MT_MISC71"
.LASF1171:
	.string	"S_RTORCHSHRT2"
.LASF1172:
	.string	"S_RTORCHSHRT3"
.LASF1173:
	.string	"S_RTORCHSHRT4"
.LASF1075:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF859:
	.string	"S_BSPI_RUN1"
.LASF1329:
	.string	"MT_MISC77"
.LASF1330:
	.string	"MT_MISC78"
.LASF1331:
	.string	"MT_MISC79"
.LASF1220:
	.string	"MT_SKULL"
.LASF1207:
	.string	"MT_UNDEAD"
.LASF33:
	.string	"GameMode_t"
.LASF76:
	.string	"prev"
.LASF569:
	.string	"S_SKEL_DIE1"
.LASF570:
	.string	"S_SKEL_DIE2"
.LASF571:
	.string	"S_SKEL_DIE3"
.LASF116:
	.string	"SPR_FIRE"
.LASF573:
	.string	"S_SKEL_DIE5"
.LASF574:
	.string	"S_SKEL_DIE6"
.LASF1180:
	.string	"S_COLONGIBS"
.LASF1502:
	.string	"gamemode"
.LASF221:
	.string	"SPR_TLP2"
.LASF331:
	.string	"S_PLASBALL"
.LASF177:
	.string	"SPR_SGN2"
.LASF82:
	.string	"options"
.LASF130:
	.string	"SPR_BSPI"
.LASF132:
	.string	"SPR_APBX"
.LASF1451:
	.string	"colormap"
.LASF13:
	.string	"retail"
.LASF1256:
	.string	"MT_MISC11"
.LASF1257:
	.string	"MT_MISC12"
.LASF1259:
	.string	"MT_MISC13"
.LASF1261:
	.string	"MT_MISC14"
.LASF1262:
	.string	"MT_MISC15"
.LASF1263:
	.string	"MT_MISC16"
.LASF1266:
	.string	"MT_MISC17"
.LASF1267:
	.string	"MT_MISC18"
.LASF1094:
	.string	"S_CLIP"
.LASF1357:
	.string	"radius"
.LASF1409:
	.string	"health"
.LASF1229:
	.string	"MT_BOSSTARGET"
.LASF1388:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10"
.LASF0:
	.string	"p_user.c"
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
