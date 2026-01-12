	.file	"p_mobj.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_mobj.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: p_mobj.c,v 1.5 1997/02/03 22:45:12 b1 Exp $"
	.globl	test
	.bss
	.align 4
	.type	test, @object
	.size	test, 4
test:
	.zero	4
	.text
	.globl	P_SetMobjState
	.type	P_SetMobjState, @function
P_SetMobjState:
.LFB0:
	.file 1 "p_mobj.c"
	.loc 1 57 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mobj, mobj
	movl	%esi, -28(%rbp)	# state, state
.L5:
# p_mobj.c:62: 	if (state == S_NULL)
	.loc 1 62 5
	cmpl	$0, -28(%rbp)	#, state
	jne	.L2	#,
# p_mobj.c:64: 	    mobj->state = (state_t *) S_NULL;
	.loc 1 64 18
	movq	-24(%rbp), %rax	# mobj, tmp92
	movq	$0, 152(%rax)	#, mobj_17(D)->state
# p_mobj.c:65: 	    P_RemoveMobj (mobj);
	.loc 1 65 6
	movq	-24(%rbp), %rax	# mobj, tmp93
	movq	%rax, %rdi	# tmp93,
	call	P_RemoveMobj	#
# p_mobj.c:66: 	    return false;
	.loc 1 66 13
	movl	$0, %eax	#, _10
	jmp	.L3	#
.L2:
# p_mobj.c:69: 	st = &states[state];
	.loc 1 69 5
	movl	-28(%rbp), %edx	# state, tmp94
	movq	%rdx, %rax	# tmp94, tmp95
	salq	$3, %rax	#, tmp96
	subq	%rdx, %rax	# tmp94, tmp95
	salq	$3, %rax	#, tmp97
	leaq	states(%rip), %rdx	#, tmp98
	addq	%rdx, %rax	# tmp98, tmp99
	movq	%rax, -8(%rbp)	# tmp99, st
# p_mobj.c:70: 	mobj->state = st;
	.loc 1 70 14
	movq	-24(%rbp), %rax	# mobj, tmp100
	movq	-8(%rbp), %rdx	# st, tmp101
	movq	%rdx, 152(%rax)	# tmp101, mobj_17(D)->state
# p_mobj.c:71: 	mobj->tics = st->tics;
	.loc 1 71 17
	movq	-8(%rbp), %rax	# st, tmp102
	movq	16(%rax), %rax	# st_16->tics, _1
# p_mobj.c:71: 	mobj->tics = st->tics;
	.loc 1 71 13
	movl	%eax, %edx	# _1, _2
	movq	-24(%rbp), %rax	# mobj, tmp103
	movl	%edx, 144(%rax)	# _2, mobj_17(D)->tics
# p_mobj.c:72: 	mobj->sprite = st->sprite;
	.loc 1 72 19
	movq	-8(%rbp), %rax	# st, tmp104
	movl	(%rax), %edx	# st_16->sprite, _3
# p_mobj.c:72: 	mobj->sprite = st->sprite;
	.loc 1 72 15
	movq	-24(%rbp), %rax	# mobj, tmp105
	movl	%edx, 60(%rax)	# _3, mobj_17(D)->sprite
# p_mobj.c:73: 	mobj->frame = st->frame;
	.loc 1 73 18
	movq	-8(%rbp), %rax	# st, tmp106
	movq	8(%rax), %rax	# st_16->frame, _4
# p_mobj.c:73: 	mobj->frame = st->frame;
	.loc 1 73 14
	movl	%eax, %edx	# _4, _5
	movq	-24(%rbp), %rax	# mobj, tmp107
	movl	%edx, 64(%rax)	# _5, mobj_17(D)->frame
# p_mobj.c:77: 	if (st->action.acp1)		
	.loc 1 77 16
	movq	-8(%rbp), %rax	# st, tmp108
	movq	24(%rax), %rax	# st_16->action.acp1, _6
# p_mobj.c:77: 	if (st->action.acp1)		
	.loc 1 77 5
	testq	%rax, %rax	# _6
	je	.L4	#,
# p_mobj.c:78: 	    st->action.acp1(mobj);	
	.loc 1 78 16
	movq	-8(%rbp), %rax	# st, tmp109
	movq	24(%rax), %rdx	# st_16->action.acp1, _7
# p_mobj.c:78: 	    st->action.acp1(mobj);	
	.loc 1 78 6
	movq	-24(%rbp), %rax	# mobj, tmp110
	movq	%rax, %rdi	# tmp110,
	call	*%rdx	# _7
.LVL0:
.L4:
# p_mobj.c:80: 	state = st->nextstate;
	.loc 1 80 8
	movq	-8(%rbp), %rax	# st, tmp111
	movl	32(%rax), %eax	# st_16->nextstate, tmp112
	movl	%eax, -28(%rbp)	# tmp112, state
# p_mobj.c:81:     } while (!mobj->tics);
	.loc 1 81 19
	movq	-24(%rbp), %rax	# mobj, tmp113
	movl	144(%rax), %eax	# mobj_17(D)->tics, _8
# p_mobj.c:81:     } while (!mobj->tics);
	.loc 1 81 14
	testl	%eax, %eax	# _8
	je	.L5	#,
# p_mobj.c:83:     return true;
	.loc 1 83 12
	movl	$1, %eax	#, _10
.L3:
# p_mobj.c:84: }
	.loc 1 84 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_SetMobjState, .-P_SetMobjState
	.globl	P_ExplodeMissile
	.type	P_ExplodeMissile, @function
P_ExplodeMissile:
.LFB1:
	.loc 1 91 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mo, mo
# p_mobj.c:92:     mo->momx = mo->momy = mo->momz = 0;
	.loc 1 92 36
	movq	-8(%rbp), %rax	# mo, tmp98
	movl	$0, 120(%rax)	#, mo_19(D)->momz
# p_mobj.c:92:     mo->momx = mo->momy = mo->momz = 0;
	.loc 1 92 29
	movq	-8(%rbp), %rax	# mo, tmp99
	movl	120(%rax), %edx	# mo_19(D)->momz, _1
# p_mobj.c:92:     mo->momx = mo->momy = mo->momz = 0;
	.loc 1 92 25
	movq	-8(%rbp), %rax	# mo, tmp100
	movl	%edx, 116(%rax)	# _1, mo_19(D)->momy
# p_mobj.c:92:     mo->momx = mo->momy = mo->momz = 0;
	.loc 1 92 18
	movq	-8(%rbp), %rax	# mo, tmp101
	movl	116(%rax), %edx	# mo_19(D)->momy, _2
# p_mobj.c:92:     mo->momx = mo->momy = mo->momz = 0;
	.loc 1 92 14
	movq	-8(%rbp), %rax	# mo, tmp102
	movl	%edx, 112(%rax)	# _2, mo_19(D)->momx
# p_mobj.c:94:     P_SetMobjState (mo, mobjinfo[mo->type].deathstate);
	.loc 1 94 36
	movq	-8(%rbp), %rax	# mo, tmp103
	movl	128(%rax), %eax	# mo_19(D)->type, _3
# p_mobj.c:94:     P_SetMobjState (mo, mobjinfo[mo->type].deathstate);
	.loc 1 94 43
	movl	%eax, %eax	# _3, tmp104
	imulq	$92, %rax, %rax	#, tmp104, tmp105
	leaq	48+mobjinfo(%rip), %rdx	#, tmp106
	movl	(%rax,%rdx), %eax	# mobjinfo[_3].deathstate, _4
# p_mobj.c:94:     P_SetMobjState (mo, mobjinfo[mo->type].deathstate);
	.loc 1 94 5
	movl	%eax, %edx	# _4, _5
	movq	-8(%rbp), %rax	# mo, tmp107
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp107,
	call	P_SetMobjState	#
# p_mobj.c:96:     mo->tics -= P_Random()&3;
	.loc 1 96 17
	call	P_Random@PLT	#
# p_mobj.c:96:     mo->tics -= P_Random()&3;
	.loc 1 96 27 discriminator 1
	andl	$3, %eax	#, _6
	movl	%eax, %ecx	# _6, _25
# p_mobj.c:96:     mo->tics -= P_Random()&3;
	.loc 1 96 7 discriminator 1
	movq	-8(%rbp), %rax	# mo, tmp108
	movl	144(%rax), %eax	# mo_19(D)->tics, _7
# p_mobj.c:96:     mo->tics -= P_Random()&3;
	.loc 1 96 14 discriminator 1
	subl	%ecx, %eax	# _25, _7
	movl	%eax, %edx	# _7, _8
	movq	-8(%rbp), %rax	# mo, tmp109
	movl	%edx, 144(%rax)	# _8, mo_19(D)->tics
# p_mobj.c:98:     if (mo->tics < 1)
	.loc 1 98 11
	movq	-8(%rbp), %rax	# mo, tmp110
	movl	144(%rax), %eax	# mo_19(D)->tics, _9
# p_mobj.c:98:     if (mo->tics < 1)
	.loc 1 98 8
	testl	%eax, %eax	# _9
	jg	.L7	#,
# p_mobj.c:99: 	mo->tics = 1;
	.loc 1 99 11
	movq	-8(%rbp), %rax	# mo, tmp111
	movl	$1, 144(%rax)	#, mo_19(D)->tics
.L7:
# p_mobj.c:101:     mo->flags &= ~MF_MISSILE;
	.loc 1 101 7
	movq	-8(%rbp), %rax	# mo, tmp112
	movl	160(%rax), %eax	# mo_19(D)->flags, _10
# p_mobj.c:101:     mo->flags &= ~MF_MISSILE;
	.loc 1 101 15
	andl	$-65537, %eax	#, _10
	movl	%eax, %edx	# _10, _11
	movq	-8(%rbp), %rax	# mo, tmp113
	movl	%edx, 160(%rax)	# _11, mo_19(D)->flags
# p_mobj.c:103:     if (mo->info->deathsound)
	.loc 1 103 11
	movq	-8(%rbp), %rax	# mo, tmp114
	movq	136(%rax), %rax	# mo_19(D)->info, _12
# p_mobj.c:103:     if (mo->info->deathsound)
	.loc 1 103 17
	movl	56(%rax), %eax	# _12->deathsound, _13
# p_mobj.c:103:     if (mo->info->deathsound)
	.loc 1 103 8
	testl	%eax, %eax	# _13
	je	.L9	#,
# p_mobj.c:104: 	S_StartSound (mo, mo->info->deathsound);
	.loc 1 104 22
	movq	-8(%rbp), %rax	# mo, tmp115
	movq	136(%rax), %rax	# mo_19(D)->info, _14
# p_mobj.c:104: 	S_StartSound (mo, mo->info->deathsound);
	.loc 1 104 2
	movl	56(%rax), %edx	# _14->deathsound, _15
	movq	-8(%rbp), %rax	# mo, tmp116
	movl	%edx, %esi	# _15,
	movq	%rax, %rdi	# tmp116,
	call	S_StartSound@PLT	#
.L9:
# p_mobj.c:105: }
	.loc 1 105 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_ExplodeMissile, .-P_ExplodeMissile
	.globl	P_XYMovement
	.type	P_XYMovement, @function
P_XYMovement:
.LFB2:
	.loc 1 115 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mo, mo
# p_mobj.c:122:     if (!mo->momx && !mo->momy)
	.loc 1 122 12
	movq	-40(%rbp), %rax	# mo, tmp150
	movl	112(%rax), %eax	# mo_83(D)->momx, _1
# p_mobj.c:122:     if (!mo->momx && !mo->momy)
	.loc 1 122 8
	testl	%eax, %eax	# _1
	jne	.L11	#,
# p_mobj.c:122:     if (!mo->momx && !mo->momy)
	.loc 1 122 25 discriminator 1
	movq	-40(%rbp), %rax	# mo, tmp151
	movl	116(%rax), %eax	# mo_83(D)->momy, _2
# p_mobj.c:122:     if (!mo->momx && !mo->momy)
	.loc 1 122 19 discriminator 1
	testl	%eax, %eax	# _2
	jne	.L11	#,
# p_mobj.c:124: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 124 8
	movq	-40(%rbp), %rax	# mo, tmp152
	movl	160(%rax), %eax	# mo_83(D)->flags, _3
# p_mobj.c:124: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 124 16
	andl	$16777216, %eax	#, _4
# p_mobj.c:124: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 124 5
	testl	%eax, %eax	# _4
	je	.L35	#,
# p_mobj.c:127: 	    mo->flags &= ~MF_SKULLFLY;
	.loc 1 127 8
	movq	-40(%rbp), %rax	# mo, tmp153
	movl	160(%rax), %eax	# mo_83(D)->flags, _5
# p_mobj.c:127: 	    mo->flags &= ~MF_SKULLFLY;
	.loc 1 127 16
	andl	$-16777217, %eax	#, _5
	movl	%eax, %edx	# _5, _6
	movq	-40(%rbp), %rax	# mo, tmp154
	movl	%edx, 160(%rax)	# _6, mo_83(D)->flags
# p_mobj.c:128: 	    mo->momx = mo->momy = mo->momz = 0;
	.loc 1 128 37
	movq	-40(%rbp), %rax	# mo, tmp155
	movl	$0, 120(%rax)	#, mo_83(D)->momz
# p_mobj.c:128: 	    mo->momx = mo->momy = mo->momz = 0;
	.loc 1 128 30
	movq	-40(%rbp), %rax	# mo, tmp156
	movl	120(%rax), %edx	# mo_83(D)->momz, _7
# p_mobj.c:128: 	    mo->momx = mo->momy = mo->momz = 0;
	.loc 1 128 26
	movq	-40(%rbp), %rax	# mo, tmp157
	movl	%edx, 116(%rax)	# _7, mo_83(D)->momy
# p_mobj.c:128: 	    mo->momx = mo->momy = mo->momz = 0;
	.loc 1 128 19
	movq	-40(%rbp), %rax	# mo, tmp158
	movl	116(%rax), %edx	# mo_83(D)->momy, _8
# p_mobj.c:128: 	    mo->momx = mo->momy = mo->momz = 0;
	.loc 1 128 15
	movq	-40(%rbp), %rax	# mo, tmp159
	movl	%edx, 112(%rax)	# _8, mo_83(D)->momx
# p_mobj.c:130: 	    P_SetMobjState (mo, mo->info->spawnstate);
	.loc 1 130 28
	movq	-40(%rbp), %rax	# mo, tmp160
	movq	136(%rax), %rax	# mo_83(D)->info, _9
# p_mobj.c:130: 	    P_SetMobjState (mo, mo->info->spawnstate);
	.loc 1 130 34
	movl	4(%rax), %eax	# _9->spawnstate, _10
# p_mobj.c:130: 	    P_SetMobjState (mo, mo->info->spawnstate);
	.loc 1 130 6
	movl	%eax, %edx	# _10, _11
	movq	-40(%rbp), %rax	# mo, tmp161
	movl	%edx, %esi	# _11,
	movq	%rax, %rdi	# tmp161,
	call	P_SetMobjState	#
# p_mobj.c:132: 	return;
	.loc 1 132 2
	jmp	.L35	#
.L11:
# p_mobj.c:135:     player = mo->player;
	.loc 1 135 12
	movq	-40(%rbp), %rax	# mo, tmp162
	movq	192(%rax), %rax	# mo_83(D)->player, tmp163
	movq	%rax, -8(%rbp)	# tmp163, player
# p_mobj.c:137:     if (mo->momx > MAXMOVE)
	.loc 1 137 11
	movq	-40(%rbp), %rax	# mo, tmp164
	movl	112(%rax), %eax	# mo_83(D)->momx, _12
# p_mobj.c:137:     if (mo->momx > MAXMOVE)
	.loc 1 137 8
	cmpl	$1966080, %eax	#, _12
	jle	.L14	#,
# p_mobj.c:138: 	mo->momx = MAXMOVE;
	.loc 1 138 11
	movq	-40(%rbp), %rax	# mo, tmp165
	movl	$1966080, 112(%rax)	#, mo_83(D)->momx
	jmp	.L15	#
.L14:
# p_mobj.c:139:     else if (mo->momx < -MAXMOVE)
	.loc 1 139 16
	movq	-40(%rbp), %rax	# mo, tmp166
	movl	112(%rax), %eax	# mo_83(D)->momx, _13
# p_mobj.c:139:     else if (mo->momx < -MAXMOVE)
	.loc 1 139 13
	cmpl	$-1966080, %eax	#, _13
	jge	.L15	#,
# p_mobj.c:140: 	mo->momx = -MAXMOVE;
	.loc 1 140 11
	movq	-40(%rbp), %rax	# mo, tmp167
	movl	$-1966080, 112(%rax)	#, mo_83(D)->momx
.L15:
# p_mobj.c:142:     if (mo->momy > MAXMOVE)
	.loc 1 142 11
	movq	-40(%rbp), %rax	# mo, tmp168
	movl	116(%rax), %eax	# mo_83(D)->momy, _14
# p_mobj.c:142:     if (mo->momy > MAXMOVE)
	.loc 1 142 8
	cmpl	$1966080, %eax	#, _14
	jle	.L16	#,
# p_mobj.c:143: 	mo->momy = MAXMOVE;
	.loc 1 143 11
	movq	-40(%rbp), %rax	# mo, tmp169
	movl	$1966080, 116(%rax)	#, mo_83(D)->momy
	jmp	.L17	#
.L16:
# p_mobj.c:144:     else if (mo->momy < -MAXMOVE)
	.loc 1 144 16
	movq	-40(%rbp), %rax	# mo, tmp170
	movl	116(%rax), %eax	# mo_83(D)->momy, _15
# p_mobj.c:144:     else if (mo->momy < -MAXMOVE)
	.loc 1 144 13
	cmpl	$-1966080, %eax	#, _15
	jge	.L17	#,
# p_mobj.c:145: 	mo->momy = -MAXMOVE;
	.loc 1 145 11
	movq	-40(%rbp), %rax	# mo, tmp171
	movl	$-1966080, 116(%rax)	#, mo_83(D)->momy
.L17:
# p_mobj.c:147:     xmove = mo->momx;
	.loc 1 147 11
	movq	-40(%rbp), %rax	# mo, tmp172
	movl	112(%rax), %eax	# mo_83(D)->momx, tmp173
	movl	%eax, -16(%rbp)	# tmp173, xmove
# p_mobj.c:148:     ymove = mo->momy;
	.loc 1 148 11
	movq	-40(%rbp), %rax	# mo, tmp174
	movl	116(%rax), %eax	# mo_83(D)->momy, tmp175
	movl	%eax, -12(%rbp)	# tmp175, ymove
.L18:
# p_mobj.c:152: 	if (xmove > MAXMOVE/2 || ymove > MAXMOVE/2)
	.loc 1 152 5
	cmpl	$983040, -16(%rbp)	#, xmove
	jg	.L19	#,
# p_mobj.c:152: 	if (xmove > MAXMOVE/2 || ymove > MAXMOVE/2)
	.loc 1 152 24 discriminator 1
	cmpl	$983040, -12(%rbp)	#, ymove
	jle	.L20	#,
.L19:
# p_mobj.c:154: 	    ptryx = mo->x + xmove/2;
	.loc 1 154 16
	movq	-40(%rbp), %rax	# mo, tmp176
	movl	24(%rax), %edx	# mo_83(D)->x, _16
# p_mobj.c:154: 	    ptryx = mo->x + xmove/2;
	.loc 1 154 27
	movl	-16(%rbp), %eax	# xmove, tmp177
	movl	%eax, %ecx	# tmp177, tmp178
	shrl	$31, %ecx	#, tmp178
	addl	%ecx, %eax	# tmp178, tmp179
	sarl	%eax	# tmp180
# p_mobj.c:154: 	    ptryx = mo->x + xmove/2;
	.loc 1 154 12
	addl	%edx, %eax	# _16, tmp181
	movl	%eax, -24(%rbp)	# tmp181, ptryx
# p_mobj.c:155: 	    ptryy = mo->y + ymove/2;
	.loc 1 155 16
	movq	-40(%rbp), %rax	# mo, tmp182
	movl	28(%rax), %edx	# mo_83(D)->y, _18
# p_mobj.c:155: 	    ptryy = mo->y + ymove/2;
	.loc 1 155 27
	movl	-12(%rbp), %eax	# ymove, tmp183
	movl	%eax, %ecx	# tmp183, tmp184
	shrl	$31, %ecx	#, tmp184
	addl	%ecx, %eax	# tmp184, tmp185
	sarl	%eax	# tmp186
# p_mobj.c:155: 	    ptryy = mo->y + ymove/2;
	.loc 1 155 12
	addl	%edx, %eax	# _18, tmp187
	movl	%eax, -20(%rbp)	# tmp187, ptryy
# p_mobj.c:156: 	    xmove >>= 1;
	.loc 1 156 12
	sarl	-16(%rbp)	# xmove
# p_mobj.c:157: 	    ymove >>= 1;
	.loc 1 157 12
	sarl	-12(%rbp)	# ymove
	jmp	.L21	#
.L20:
# p_mobj.c:161: 	    ptryx = mo->x + xmove;
	.loc 1 161 16
	movq	-40(%rbp), %rax	# mo, tmp188
	movl	24(%rax), %edx	# mo_83(D)->x, _20
# p_mobj.c:161: 	    ptryx = mo->x + xmove;
	.loc 1 161 12
	movl	-16(%rbp), %eax	# xmove, tmp192
	addl	%edx, %eax	# _20, tmp191
	movl	%eax, -24(%rbp)	# tmp191, ptryx
# p_mobj.c:162: 	    ptryy = mo->y + ymove;
	.loc 1 162 16
	movq	-40(%rbp), %rax	# mo, tmp193
	movl	28(%rax), %edx	# mo_83(D)->y, _21
# p_mobj.c:162: 	    ptryy = mo->y + ymove;
	.loc 1 162 12
	movl	-12(%rbp), %eax	# ymove, tmp197
	addl	%edx, %eax	# _21, tmp196
	movl	%eax, -20(%rbp)	# tmp196, ptryy
# p_mobj.c:163: 	    xmove = ymove = 0;
	.loc 1 163 20
	movl	$0, -12(%rbp)	#, ymove
# p_mobj.c:163: 	    xmove = ymove = 0;
	.loc 1 163 12
	movl	-12(%rbp), %eax	# ymove, tmp198
	movl	%eax, -16(%rbp)	# tmp198, xmove
.L21:
# p_mobj.c:166: 	if (!P_TryMove (mo, ptryx, ptryy))
	.loc 1 166 7
	movl	-20(%rbp), %edx	# ptryy, tmp199
	movl	-24(%rbp), %ecx	# ptryx, tmp200
	movq	-40(%rbp), %rax	# mo, tmp201
	movl	%ecx, %esi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	P_TryMove@PLT	#
# p_mobj.c:166: 	if (!P_TryMove (mo, ptryx, ptryy))
	.loc 1 166 5 discriminator 1
	testl	%eax, %eax	# _22
	jne	.L22	#,
# p_mobj.c:169: 	    if (mo->player)
	.loc 1 169 12
	movq	-40(%rbp), %rax	# mo, tmp202
	movq	192(%rax), %rax	# mo_83(D)->player, _23
# p_mobj.c:169: 	    if (mo->player)
	.loc 1 169 9
	testq	%rax, %rax	# _23
	je	.L23	#,
# p_mobj.c:171: 		P_SlideMove (mo);
	.loc 1 171 3
	movq	-40(%rbp), %rax	# mo, tmp203
	movq	%rax, %rdi	# tmp203,
	call	P_SlideMove@PLT	#
	jmp	.L22	#
.L23:
# p_mobj.c:173: 	    else if (mo->flags & MF_MISSILE)
	.loc 1 173 17
	movq	-40(%rbp), %rax	# mo, tmp204
	movl	160(%rax), %eax	# mo_83(D)->flags, _24
# p_mobj.c:173: 	    else if (mo->flags & MF_MISSILE)
	.loc 1 173 25
	andl	$65536, %eax	#, _25
# p_mobj.c:173: 	    else if (mo->flags & MF_MISSILE)
	.loc 1 173 14
	testl	%eax, %eax	# _25
	je	.L24	#,
# p_mobj.c:176: 		if (ceilingline &&
	.loc 1 176 7
	movq	ceilingline(%rip), %rax	# ceilingline, ceilingline.0_26
# p_mobj.c:176: 		if (ceilingline &&
	.loc 1 176 6
	testq	%rax, %rax	# ceilingline.0_26
	je	.L25	#,
# p_mobj.c:177: 		    ceilingline->backsector &&
	.loc 1 177 18
	movq	ceilingline(%rip), %rax	# ceilingline, ceilingline.1_27
	movq	64(%rax), %rax	# ceilingline.1_27->backsector, _28
# p_mobj.c:176: 		if (ceilingline &&
	.loc 1 176 19 discriminator 1
	testq	%rax, %rax	# _28
	je	.L25	#,
# p_mobj.c:178: 		    ceilingline->backsector->ceilingpic == skyflatnum)
	.loc 1 178 18
	movq	ceilingline(%rip), %rax	# ceilingline, ceilingline.2_29
	movq	64(%rax), %rax	# ceilingline.2_29->backsector, _30
# p_mobj.c:178: 		    ceilingline->backsector->ceilingpic == skyflatnum)
	.loc 1 178 30
	movzwl	10(%rax), %eax	# _30->ceilingpic, _31
	movswl	%ax, %edx	# _31, _32
# p_mobj.c:178: 		    ceilingline->backsector->ceilingpic == skyflatnum)
	.loc 1 178 43
	movl	skyflatnum(%rip), %eax	# skyflatnum, skyflatnum.3_33
# p_mobj.c:177: 		    ceilingline->backsector &&
	.loc 1 177 31
	cmpl	%eax, %edx	# skyflatnum.3_33, _32
	jne	.L25	#,
# p_mobj.c:183: 		    P_RemoveMobj (mo);
	.loc 1 183 7
	movq	-40(%rbp), %rax	# mo, tmp205
	movq	%rax, %rdi	# tmp205,
	call	P_RemoveMobj	#
# p_mobj.c:184: 		    return;
	.loc 1 184 7
	jmp	.L10	#
.L25:
# p_mobj.c:186: 		P_ExplodeMissile (mo);
	.loc 1 186 3
	movq	-40(%rbp), %rax	# mo, tmp206
	movq	%rax, %rdi	# tmp206,
	call	P_ExplodeMissile	#
	jmp	.L22	#
.L24:
# p_mobj.c:189: 		mo->momx = mo->momy = 0;
	.loc 1 189 23
	movq	-40(%rbp), %rax	# mo, tmp207
	movl	$0, 116(%rax)	#, mo_83(D)->momy
# p_mobj.c:189: 		mo->momx = mo->momy = 0;
	.loc 1 189 16
	movq	-40(%rbp), %rax	# mo, tmp208
	movl	116(%rax), %edx	# mo_83(D)->momy, _34
# p_mobj.c:189: 		mo->momx = mo->momy = 0;
	.loc 1 189 12
	movq	-40(%rbp), %rax	# mo, tmp209
	movl	%edx, 112(%rax)	# _34, mo_83(D)->momx
.L22:
# p_mobj.c:191:     } while (xmove || ymove);
	.loc 1 191 20
	cmpl	$0, -16(%rbp)	#, xmove
	jne	.L18	#,
# p_mobj.c:191:     } while (xmove || ymove);
	.loc 1 191 20 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, ymove
	jne	.L18	#,
# p_mobj.c:194:     if (player && player->cheats & CF_NOMOMENTUM)
	.loc 1 194 8 is_stmt 1
	cmpq	$0, -8(%rbp)	#, player
	je	.L27	#,
# p_mobj.c:194:     if (player && player->cheats & CF_NOMOMENTUM)
	.loc 1 194 25 discriminator 1
	movq	-8(%rbp), %rax	# player, tmp210
	movl	200(%rax), %eax	# player_89->cheats, _35
# p_mobj.c:194:     if (player && player->cheats & CF_NOMOMENTUM)
	.loc 1 194 34 discriminator 1
	andl	$4, %eax	#, _36
# p_mobj.c:194:     if (player && player->cheats & CF_NOMOMENTUM)
	.loc 1 194 16 discriminator 1
	testl	%eax, %eax	# _36
	je	.L27	#,
# p_mobj.c:197: 	mo->momx = mo->momy = 0;
	.loc 1 197 22
	movq	-40(%rbp), %rax	# mo, tmp211
	movl	$0, 116(%rax)	#, mo_83(D)->momy
# p_mobj.c:197: 	mo->momx = mo->momy = 0;
	.loc 1 197 15
	movq	-40(%rbp), %rax	# mo, tmp212
	movl	116(%rax), %edx	# mo_83(D)->momy, _37
# p_mobj.c:197: 	mo->momx = mo->momy = 0;
	.loc 1 197 11
	movq	-40(%rbp), %rax	# mo, tmp213
	movl	%edx, 112(%rax)	# _37, mo_83(D)->momx
# p_mobj.c:198: 	return;
	.loc 1 198 2
	jmp	.L10	#
.L27:
# p_mobj.c:201:     if (mo->flags & (MF_MISSILE | MF_SKULLFLY) )
	.loc 1 201 11
	movq	-40(%rbp), %rax	# mo, tmp214
	movl	160(%rax), %eax	# mo_83(D)->flags, _38
# p_mobj.c:201:     if (mo->flags & (MF_MISSILE | MF_SKULLFLY) )
	.loc 1 201 19
	andl	$16842752, %eax	#, _39
# p_mobj.c:201:     if (mo->flags & (MF_MISSILE | MF_SKULLFLY) )
	.loc 1 201 8
	testl	%eax, %eax	# _39
	jne	.L36	#,
# p_mobj.c:204:     if (mo->z > mo->floorz)
	.loc 1 204 11
	movq	-40(%rbp), %rax	# mo, tmp215
	movl	32(%rax), %edx	# mo_83(D)->z, _40
# p_mobj.c:204:     if (mo->z > mo->floorz)
	.loc 1 204 19
	movq	-40(%rbp), %rax	# mo, tmp216
	movl	96(%rax), %eax	# mo_83(D)->floorz, _41
# p_mobj.c:204:     if (mo->z > mo->floorz)
	.loc 1 204 8
	cmpl	%eax, %edx	# _41, _40
	jg	.L37	#,
# p_mobj.c:207:     if (mo->flags & MF_CORPSE)
	.loc 1 207 11
	movq	-40(%rbp), %rax	# mo, tmp217
	movl	160(%rax), %eax	# mo_83(D)->flags, _42
# p_mobj.c:207:     if (mo->flags & MF_CORPSE)
	.loc 1 207 19
	andl	$1048576, %eax	#, _43
# p_mobj.c:207:     if (mo->flags & MF_CORPSE)
	.loc 1 207 8
	testl	%eax, %eax	# _43
	je	.L30	#,
# p_mobj.c:211: 	if (mo->momx > FRACUNIT/4
	.loc 1 211 8
	movq	-40(%rbp), %rax	# mo, tmp218
	movl	112(%rax), %eax	# mo_83(D)->momx, _44
# p_mobj.c:211: 	if (mo->momx > FRACUNIT/4
	.loc 1 211 5
	cmpl	$16384, %eax	#, _44
	jg	.L31	#,
# p_mobj.c:212: 	    || mo->momx < -FRACUNIT/4
	.loc 1 212 11
	movq	-40(%rbp), %rax	# mo, tmp219
	movl	112(%rax), %eax	# mo_83(D)->momx, _45
# p_mobj.c:212: 	    || mo->momx < -FRACUNIT/4
	.loc 1 212 6
	cmpl	$-16384, %eax	#, _45
	jl	.L31	#,
# p_mobj.c:213: 	    || mo->momy > FRACUNIT/4
	.loc 1 213 11
	movq	-40(%rbp), %rax	# mo, tmp220
	movl	116(%rax), %eax	# mo_83(D)->momy, _46
# p_mobj.c:213: 	    || mo->momy > FRACUNIT/4
	.loc 1 213 6
	cmpl	$16384, %eax	#, _46
	jg	.L31	#,
# p_mobj.c:214: 	    || mo->momy < -FRACUNIT/4)
	.loc 1 214 11
	movq	-40(%rbp), %rax	# mo, tmp221
	movl	116(%rax), %eax	# mo_83(D)->momy, _47
# p_mobj.c:214: 	    || mo->momy < -FRACUNIT/4)
	.loc 1 214 6
	cmpl	$-16384, %eax	#, _47
	jge	.L30	#,
.L31:
# p_mobj.c:216: 	    if (mo->floorz != mo->subsector->sector->floorheight)
	.loc 1 216 12
	movq	-40(%rbp), %rax	# mo, tmp222
	movl	96(%rax), %edx	# mo_83(D)->floorz, _48
# p_mobj.c:216: 	    if (mo->floorz != mo->subsector->sector->floorheight)
	.loc 1 216 26
	movq	-40(%rbp), %rax	# mo, tmp223
	movq	88(%rax), %rax	# mo_83(D)->subsector, _49
# p_mobj.c:216: 	    if (mo->floorz != mo->subsector->sector->floorheight)
	.loc 1 216 37
	movq	(%rax), %rax	# _49->sector, _50
# p_mobj.c:216: 	    if (mo->floorz != mo->subsector->sector->floorheight)
	.loc 1 216 45
	movl	(%rax), %eax	# _50->floorheight, _51
# p_mobj.c:216: 	    if (mo->floorz != mo->subsector->sector->floorheight)
	.loc 1 216 9
	cmpl	%eax, %edx	# _51, _48
	jne	.L38	#,
.L30:
# p_mobj.c:221:     if (mo->momx > -STOPSPEED
	.loc 1 221 11
	movq	-40(%rbp), %rax	# mo, tmp224
	movl	112(%rax), %eax	# mo_83(D)->momx, _52
# p_mobj.c:221:     if (mo->momx > -STOPSPEED
	.loc 1 221 8
	cmpl	$-4095, %eax	#, _52
	jl	.L32	#,
# p_mobj.c:222: 	&& mo->momx < STOPSPEED
	.loc 1 222 7
	movq	-40(%rbp), %rax	# mo, tmp225
	movl	112(%rax), %eax	# mo_83(D)->momx, _53
# p_mobj.c:222: 	&& mo->momx < STOPSPEED
	.loc 1 222 2
	cmpl	$4095, %eax	#, _53
	jg	.L32	#,
# p_mobj.c:223: 	&& mo->momy > -STOPSPEED
	.loc 1 223 7
	movq	-40(%rbp), %rax	# mo, tmp226
	movl	116(%rax), %eax	# mo_83(D)->momy, _54
# p_mobj.c:223: 	&& mo->momy > -STOPSPEED
	.loc 1 223 2
	cmpl	$-4095, %eax	#, _54
	jl	.L32	#,
# p_mobj.c:224: 	&& mo->momy < STOPSPEED
	.loc 1 224 7
	movq	-40(%rbp), %rax	# mo, tmp227
	movl	116(%rax), %eax	# mo_83(D)->momy, _55
# p_mobj.c:224: 	&& mo->momy < STOPSPEED
	.loc 1 224 2
	cmpl	$4095, %eax	#, _55
	jg	.L32	#,
# p_mobj.c:225: 	&& (!player
	.loc 1 225 2
	cmpq	$0, -8(%rbp)	#, player
	je	.L33	#,
# p_mobj.c:226: 	    || (player->cmd.forwardmove== 0
	.loc 1 226 21
	movq	-8(%rbp), %rax	# player, tmp228
	movzbl	12(%rax), %eax	# player_89->cmd.forwardmove, _56
# p_mobj.c:226: 	    || (player->cmd.forwardmove== 0
	.loc 1 226 6
	testb	%al, %al	# _56
	jne	.L32	#,
# p_mobj.c:227: 		&& player->cmd.sidemove == 0 ) ) )
	.loc 1 227 17
	movq	-8(%rbp), %rax	# player, tmp229
	movzbl	13(%rax), %eax	# player_89->cmd.sidemove, _57
# p_mobj.c:227: 		&& player->cmd.sidemove == 0 ) ) )
	.loc 1 227 3
	testb	%al, %al	# _57
	jne	.L32	#,
.L33:
# p_mobj.c:230: 	if ( player&&(unsigned)((player->mo->state - states)- S_PLAY_RUN1) < 4)
	.loc 1 230 5
	cmpq	$0, -8(%rbp)	#, player
	je	.L34	#,
# p_mobj.c:230: 	if ( player&&(unsigned)((player->mo->state - states)- S_PLAY_RUN1) < 4)
	.loc 1 230 33 discriminator 1
	movq	-8(%rbp), %rax	# player, tmp230
	movq	(%rax), %rax	# player_89->mo, _58
# p_mobj.c:230: 	if ( player&&(unsigned)((player->mo->state - states)- S_PLAY_RUN1) < 4)
	.loc 1 230 37 discriminator 1
	movq	152(%rax), %rdx	# _58->state, _59
# p_mobj.c:230: 	if ( player&&(unsigned)((player->mo->state - states)- S_PLAY_RUN1) < 4)
	.loc 1 230 45 discriminator 1
	leaq	states(%rip), %rax	#, tmp231
	subq	%rax, %rdx	# tmp231, _60
	sarq	$3, %rdx	#, tmp232
	movabsq	$7905747460161236407, %rax	#, tmp234
	imulq	%rdx, %rax	# tmp232, tmp233
# p_mobj.c:230: 	if ( player&&(unsigned)((player->mo->state - states)- S_PLAY_RUN1) < 4)
	.loc 1 230 15 discriminator 1
	subl	$150, %eax	#, _63
# p_mobj.c:230: 	if ( player&&(unsigned)((player->mo->state - states)- S_PLAY_RUN1) < 4)
	.loc 1 230 13 discriminator 1
	cmpl	$3, %eax	#, _63
	ja	.L34	#,
# p_mobj.c:231: 	    P_SetMobjState (player->mo, S_PLAY);
	.loc 1 231 6
	movq	-8(%rbp), %rax	# player, tmp235
	movq	(%rax), %rax	# player_89->mo, _64
	movl	$149, %esi	#,
	movq	%rax, %rdi	# _64,
	call	P_SetMobjState	#
.L34:
# p_mobj.c:233: 	mo->momx = 0;
	.loc 1 233 11
	movq	-40(%rbp), %rax	# mo, tmp236
	movl	$0, 112(%rax)	#, mo_83(D)->momx
# p_mobj.c:234: 	mo->momy = 0;
	.loc 1 234 11
	movq	-40(%rbp), %rax	# mo, tmp237
	movl	$0, 116(%rax)	#, mo_83(D)->momy
	jmp	.L10	#
.L32:
# p_mobj.c:238: 	mo->momx = FixedMul (mo->momx, FRICTION);
	.loc 1 238 13
	movq	-40(%rbp), %rax	# mo, tmp238
	movl	112(%rax), %eax	# mo_83(D)->momx, _65
	movl	$59392, %esi	#,
	movl	%eax, %edi	# _65,
	call	FixedMul@PLT	#
# p_mobj.c:238: 	mo->momx = FixedMul (mo->momx, FRICTION);
	.loc 1 238 11 discriminator 1
	movq	-40(%rbp), %rdx	# mo, tmp239
	movl	%eax, 112(%rdx)	# _66, mo_83(D)->momx
# p_mobj.c:239: 	mo->momy = FixedMul (mo->momy, FRICTION);
	.loc 1 239 13
	movq	-40(%rbp), %rax	# mo, tmp240
	movl	116(%rax), %eax	# mo_83(D)->momy, _67
	movl	$59392, %esi	#,
	movl	%eax, %edi	# _67,
	call	FixedMul@PLT	#
# p_mobj.c:239: 	mo->momy = FixedMul (mo->momy, FRICTION);
	.loc 1 239 11 discriminator 1
	movq	-40(%rbp), %rdx	# mo, tmp241
	movl	%eax, 116(%rdx)	# _68, mo_83(D)->momy
	jmp	.L10	#
.L35:
# p_mobj.c:132: 	return;
	.loc 1 132 2
	nop	
	jmp	.L10	#
.L36:
# p_mobj.c:202: 	return; 	// no friction for missiles ever
	.loc 1 202 2
	nop	
	jmp	.L10	#
.L37:
# p_mobj.c:205: 	return;		// no friction when airborne
	.loc 1 205 2
	nop	
	jmp	.L10	#
.L38:
# p_mobj.c:217: 		return;
	.loc 1 217 3
	nop	
.L10:
# p_mobj.c:241: }
	.loc 1 241 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_XYMovement, .-P_XYMovement
	.globl	P_ZMovement
	.type	P_ZMovement, @function
P_ZMovement:
.LFB3:
	.loc 1 247 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mo, mo
# p_mobj.c:252:     if (mo->player && mo->z < mo->floorz)
	.loc 1 252 11
	movq	-24(%rbp), %rax	# mo, tmp165
	movq	192(%rax), %rax	# mo_94(D)->player, _1
# p_mobj.c:252:     if (mo->player && mo->z < mo->floorz)
	.loc 1 252 8
	testq	%rax, %rax	# _1
	je	.L40	#,
# p_mobj.c:252:     if (mo->player && mo->z < mo->floorz)
	.loc 1 252 25 discriminator 1
	movq	-24(%rbp), %rax	# mo, tmp166
	movl	32(%rax), %edx	# mo_94(D)->z, _2
# p_mobj.c:252:     if (mo->player && mo->z < mo->floorz)
	.loc 1 252 33 discriminator 1
	movq	-24(%rbp), %rax	# mo, tmp167
	movl	96(%rax), %eax	# mo_94(D)->floorz, _3
# p_mobj.c:252:     if (mo->player && mo->z < mo->floorz)
	.loc 1 252 20 discriminator 1
	cmpl	%eax, %edx	# _3, _2
	jge	.L40	#,
# p_mobj.c:254: 	mo->player->viewheight -= mo->floorz-mo->z;
	.loc 1 254 4
	movq	-24(%rbp), %rax	# mo, tmp168
	movq	192(%rax), %rax	# mo_94(D)->player, _4
# p_mobj.c:254: 	mo->player->viewheight -= mo->floorz-mo->z;
	.loc 1 254 12
	movl	24(%rax), %edx	# _4->viewheight, _5
# p_mobj.c:254: 	mo->player->viewheight -= mo->floorz-mo->z;
	.loc 1 254 30
	movq	-24(%rbp), %rax	# mo, tmp169
	movl	96(%rax), %ecx	# mo_94(D)->floorz, _6
# p_mobj.c:254: 	mo->player->viewheight -= mo->floorz-mo->z;
	.loc 1 254 41
	movq	-24(%rbp), %rax	# mo, tmp170
	movl	32(%rax), %eax	# mo_94(D)->z, _7
# p_mobj.c:254: 	mo->player->viewheight -= mo->floorz-mo->z;
	.loc 1 254 38
	subl	%eax, %ecx	# _7, _8
# p_mobj.c:254: 	mo->player->viewheight -= mo->floorz-mo->z;
	.loc 1 254 4
	movq	-24(%rbp), %rax	# mo, tmp171
	movq	192(%rax), %rax	# mo_94(D)->player, _9
# p_mobj.c:254: 	mo->player->viewheight -= mo->floorz-mo->z;
	.loc 1 254 25
	subl	%ecx, %edx	# _8, _10
	movl	%edx, 24(%rax)	# _10, _9->viewheight
# p_mobj.c:257: 	    = (VIEWHEIGHT - mo->player->viewheight)>>3;
	.loc 1 257 24
	movq	-24(%rbp), %rax	# mo, tmp172
	movq	192(%rax), %rax	# mo_94(D)->player, _11
# p_mobj.c:257: 	    = (VIEWHEIGHT - mo->player->viewheight)>>3;
	.loc 1 257 32
	movl	24(%rax), %eax	# _11->viewheight, _12
# p_mobj.c:257: 	    = (VIEWHEIGHT - mo->player->viewheight)>>3;
	.loc 1 257 20
	movl	$2686976, %edx	#, tmp173
	subl	%eax, %edx	# _12, _13
# p_mobj.c:256: 	mo->player->deltaviewheight
	.loc 1 256 4
	movq	-24(%rbp), %rax	# mo, tmp174
	movq	192(%rax), %rax	# mo_94(D)->player, _14
# p_mobj.c:257: 	    = (VIEWHEIGHT - mo->player->viewheight)>>3;
	.loc 1 257 45
	sarl	$3, %edx	#, _15
# p_mobj.c:257: 	    = (VIEWHEIGHT - mo->player->viewheight)>>3;
	.loc 1 257 6
	movl	%edx, 28(%rax)	# _15, _14->deltaviewheight
.L40:
# p_mobj.c:261:     mo->z += mo->momz;
	.loc 1 261 7
	movq	-24(%rbp), %rax	# mo, tmp175
	movl	32(%rax), %edx	# mo_94(D)->z, _16
# p_mobj.c:261:     mo->z += mo->momz;
	.loc 1 261 16
	movq	-24(%rbp), %rax	# mo, tmp176
	movl	120(%rax), %eax	# mo_94(D)->momz, _17
# p_mobj.c:261:     mo->z += mo->momz;
	.loc 1 261 11
	addl	%eax, %edx	# _17, _18
	movq	-24(%rbp), %rax	# mo, tmp177
	movl	%edx, 32(%rax)	# _18, mo_94(D)->z
# p_mobj.c:263:     if ( mo->flags & MF_FLOAT
	.loc 1 263 12
	movq	-24(%rbp), %rax	# mo, tmp178
	movl	160(%rax), %eax	# mo_94(D)->flags, _19
# p_mobj.c:263:     if ( mo->flags & MF_FLOAT
	.loc 1 263 20
	andl	$16384, %eax	#, _20
# p_mobj.c:263:     if ( mo->flags & MF_FLOAT
	.loc 1 263 8
	testl	%eax, %eax	# _20
	je	.L41	#,
# p_mobj.c:264: 	 && mo->target)
	.loc 1 264 8
	movq	-24(%rbp), %rax	# mo, tmp179
	movq	176(%rax), %rax	# mo_94(D)->target, _21
# p_mobj.c:264: 	 && mo->target)
	.loc 1 264 3
	testq	%rax, %rax	# _21
	je	.L41	#,
# p_mobj.c:267: 	if ( !(mo->flags & MF_SKULLFLY)
	.loc 1 267 11
	movq	-24(%rbp), %rax	# mo, tmp180
	movl	160(%rax), %eax	# mo_94(D)->flags, _22
# p_mobj.c:267: 	if ( !(mo->flags & MF_SKULLFLY)
	.loc 1 267 19
	andl	$16777216, %eax	#, _23
# p_mobj.c:267: 	if ( !(mo->flags & MF_SKULLFLY)
	.loc 1 267 5
	testl	%eax, %eax	# _23
	jne	.L41	#,
# p_mobj.c:268: 	     && !(mo->flags & MF_INFLOAT) )
	.loc 1 268 14
	movq	-24(%rbp), %rax	# mo, tmp181
	movl	160(%rax), %eax	# mo_94(D)->flags, _24
# p_mobj.c:268: 	     && !(mo->flags & MF_INFLOAT) )
	.loc 1 268 22
	andl	$2097152, %eax	#, _25
# p_mobj.c:268: 	     && !(mo->flags & MF_INFLOAT) )
	.loc 1 268 7
	testl	%eax, %eax	# _25
	jne	.L41	#,
# p_mobj.c:271: 				    mo->y - mo->target->y);
	.loc 1 271 11
	movq	-24(%rbp), %rax	# mo, tmp182
	movl	28(%rax), %edx	# mo_94(D)->y, _26
# p_mobj.c:271: 				    mo->y - mo->target->y);
	.loc 1 271 19
	movq	-24(%rbp), %rax	# mo, tmp183
	movq	176(%rax), %rax	# mo_94(D)->target, _27
# p_mobj.c:271: 				    mo->y - mo->target->y);
	.loc 1 271 27
	movl	28(%rax), %eax	# _27->y, _28
# p_mobj.c:270: 	    dist = P_AproxDistance (mo->x - mo->target->x,
	.loc 1 270 13
	subl	%eax, %edx	# _28, _29
# p_mobj.c:270: 	    dist = P_AproxDistance (mo->x - mo->target->x,
	.loc 1 270 32
	movq	-24(%rbp), %rax	# mo, tmp184
	movl	24(%rax), %esi	# mo_94(D)->x, _30
# p_mobj.c:270: 	    dist = P_AproxDistance (mo->x - mo->target->x,
	.loc 1 270 40
	movq	-24(%rbp), %rax	# mo, tmp185
	movq	176(%rax), %rax	# mo_94(D)->target, _31
# p_mobj.c:270: 	    dist = P_AproxDistance (mo->x - mo->target->x,
	.loc 1 270 48
	movl	24(%rax), %ecx	# _31->x, _32
# p_mobj.c:270: 	    dist = P_AproxDistance (mo->x - mo->target->x,
	.loc 1 270 13
	movl	%esi, %eax	# _30, _30
	subl	%ecx, %eax	# _32, _30
	movl	%edx, %esi	# _29,
	movl	%eax, %edi	# _33,
	call	P_AproxDistance@PLT	#
	movl	%eax, -8(%rbp)	# tmp186, dist
# p_mobj.c:273: 	    delta =(mo->target->z + (mo->height>>1)) - mo->z;
	.loc 1 273 16
	movq	-24(%rbp), %rax	# mo, tmp187
	movq	176(%rax), %rax	# mo_94(D)->target, _34
# p_mobj.c:273: 	    delta =(mo->target->z + (mo->height>>1)) - mo->z;
	.loc 1 273 24
	movl	32(%rax), %edx	# _34->z, _35
# p_mobj.c:273: 	    delta =(mo->target->z + (mo->height>>1)) - mo->z;
	.loc 1 273 33
	movq	-24(%rbp), %rax	# mo, tmp188
	movl	108(%rax), %eax	# mo_94(D)->height, _36
# p_mobj.c:273: 	    delta =(mo->target->z + (mo->height>>1)) - mo->z;
	.loc 1 273 41
	sarl	%eax	# _37
# p_mobj.c:273: 	    delta =(mo->target->z + (mo->height>>1)) - mo->z;
	.loc 1 273 28
	addl	%eax, %edx	# _37, _38
# p_mobj.c:273: 	    delta =(mo->target->z + (mo->height>>1)) - mo->z;
	.loc 1 273 51
	movq	-24(%rbp), %rax	# mo, tmp189
	movl	32(%rax), %eax	# mo_94(D)->z, _39
# p_mobj.c:273: 	    delta =(mo->target->z + (mo->height>>1)) - mo->z;
	.loc 1 273 12
	subl	%eax, %edx	# _39, tmp190
	movl	%edx, -4(%rbp)	# tmp190, delta
# p_mobj.c:275: 	    if (delta<0 && dist < -(delta*3) )
	.loc 1 275 9
	cmpl	$0, -4(%rbp)	#, delta
	jns	.L42	#,
# p_mobj.c:275: 	    if (delta<0 && dist < -(delta*3) )
	.loc 1 275 28 discriminator 1
	movl	-4(%rbp), %eax	# delta, tmp191
	movl	%eax, %ecx	# tmp191, tmp192
	leal	0(,%rax,4), %edx	#, tmp193
	movl	%ecx, %eax	# tmp192, tmp192
	subl	%edx, %eax	# tmp193, tmp192
# p_mobj.c:275: 	    if (delta<0 && dist < -(delta*3) )
	.loc 1 275 18 discriminator 1
	cmpl	%eax, -8(%rbp)	# _40, dist
	jge	.L42	#,
# p_mobj.c:276: 		mo->z -= FLOATSPEED;
	.loc 1 276 5
	movq	-24(%rbp), %rax	# mo, tmp194
	movl	32(%rax), %eax	# mo_94(D)->z, _41
# p_mobj.c:276: 		mo->z -= FLOATSPEED;
	.loc 1 276 9
	leal	-262144(%rax), %edx	#, _42
	movq	-24(%rbp), %rax	# mo, tmp195
	movl	%edx, 32(%rax)	# _42, mo_94(D)->z
	jmp	.L41	#
.L42:
# p_mobj.c:277: 	    else if (delta>0 && dist < (delta*3) )
	.loc 1 277 14
	cmpl	$0, -4(%rbp)	#, delta
	jle	.L41	#,
# p_mobj.c:277: 	    else if (delta>0 && dist < (delta*3) )
	.loc 1 277 39 discriminator 1
	movl	-4(%rbp), %edx	# delta, tmp196
	movl	%edx, %eax	# tmp196, tmp197
	addl	%eax, %eax	# tmp197
	addl	%edx, %eax	# tmp196, _43
# p_mobj.c:277: 	    else if (delta>0 && dist < (delta*3) )
	.loc 1 277 23 discriminator 1
	cmpl	%eax, -8(%rbp)	# _43, dist
	jge	.L41	#,
# p_mobj.c:278: 		mo->z += FLOATSPEED;			
	.loc 1 278 5
	movq	-24(%rbp), %rax	# mo, tmp198
	movl	32(%rax), %eax	# mo_94(D)->z, _44
# p_mobj.c:278: 		mo->z += FLOATSPEED;			
	.loc 1 278 9
	leal	262144(%rax), %edx	#, _45
	movq	-24(%rbp), %rax	# mo, tmp199
	movl	%edx, 32(%rax)	# _45, mo_94(D)->z
.L41:
# p_mobj.c:284:     if (mo->z <= mo->floorz)
	.loc 1 284 11
	movq	-24(%rbp), %rax	# mo, tmp200
	movl	32(%rax), %edx	# mo_94(D)->z, _46
# p_mobj.c:284:     if (mo->z <= mo->floorz)
	.loc 1 284 20
	movq	-24(%rbp), %rax	# mo, tmp201
	movl	96(%rax), %eax	# mo_94(D)->floorz, _47
# p_mobj.c:284:     if (mo->z <= mo->floorz)
	.loc 1 284 8
	cmpl	%eax, %edx	# _47, _46
	jg	.L43	#,
# p_mobj.c:291: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 291 8
	movq	-24(%rbp), %rax	# mo, tmp202
	movl	160(%rax), %eax	# mo_94(D)->flags, _48
# p_mobj.c:291: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 291 16
	andl	$16777216, %eax	#, _49
# p_mobj.c:291: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 291 5
	testl	%eax, %eax	# _49
	je	.L44	#,
# p_mobj.c:294: 	    mo->momz = -mo->momz;
	.loc 1 294 20
	movq	-24(%rbp), %rax	# mo, tmp203
	movl	120(%rax), %eax	# mo_94(D)->momz, _50
# p_mobj.c:294: 	    mo->momz = -mo->momz;
	.loc 1 294 17
	negl	%eax	# _50
	movl	%eax, %edx	# _50, _51
# p_mobj.c:294: 	    mo->momz = -mo->momz;
	.loc 1 294 15
	movq	-24(%rbp), %rax	# mo, tmp204
	movl	%edx, 120(%rax)	# _51, mo_94(D)->momz
.L44:
# p_mobj.c:297: 	if (mo->momz < 0)
	.loc 1 297 8
	movq	-24(%rbp), %rax	# mo, tmp205
	movl	120(%rax), %eax	# mo_94(D)->momz, _52
# p_mobj.c:297: 	if (mo->momz < 0)
	.loc 1 297 5
	testl	%eax, %eax	# _52
	jns	.L45	#,
# p_mobj.c:299: 	    if (mo->player
	.loc 1 299 12
	movq	-24(%rbp), %rax	# mo, tmp206
	movq	192(%rax), %rax	# mo_94(D)->player, _53
# p_mobj.c:299: 	    if (mo->player
	.loc 1 299 9
	testq	%rax, %rax	# _53
	je	.L46	#,
# p_mobj.c:300: 		&& mo->momz < -GRAVITY*8)	
	.loc 1 300 8
	movq	-24(%rbp), %rax	# mo, tmp207
	movl	120(%rax), %eax	# mo_94(D)->momz, _54
# p_mobj.c:300: 		&& mo->momz < -GRAVITY*8)	
	.loc 1 300 3
	cmpl	$-524288, %eax	#, _54
	jge	.L46	#,
# p_mobj.c:306: 		mo->player->deltaviewheight = mo->momz>>3;
	.loc 1 306 35
	movq	-24(%rbp), %rax	# mo, tmp208
	movl	120(%rax), %edx	# mo_94(D)->momz, _55
# p_mobj.c:306: 		mo->player->deltaviewheight = mo->momz>>3;
	.loc 1 306 5
	movq	-24(%rbp), %rax	# mo, tmp209
	movq	192(%rax), %rax	# mo_94(D)->player, _56
# p_mobj.c:306: 		mo->player->deltaviewheight = mo->momz>>3;
	.loc 1 306 41
	sarl	$3, %edx	#, _57
# p_mobj.c:306: 		mo->player->deltaviewheight = mo->momz>>3;
	.loc 1 306 31
	movl	%edx, 28(%rax)	# _57, _56->deltaviewheight
# p_mobj.c:307: 		S_StartSound (mo, sfx_oof);
	.loc 1 307 3
	movq	-24(%rbp), %rax	# mo, tmp210
	movl	$34, %esi	#,
	movq	%rax, %rdi	# tmp210,
	call	S_StartSound@PLT	#
.L46:
# p_mobj.c:309: 	    mo->momz = 0;
	.loc 1 309 15
	movq	-24(%rbp), %rax	# mo, tmp211
	movl	$0, 120(%rax)	#, mo_94(D)->momz
.L45:
# p_mobj.c:311: 	mo->z = mo->floorz;
	.loc 1 311 12
	movq	-24(%rbp), %rax	# mo, tmp212
	movl	96(%rax), %edx	# mo_94(D)->floorz, _58
# p_mobj.c:311: 	mo->z = mo->floorz;
	.loc 1 311 8
	movq	-24(%rbp), %rax	# mo, tmp213
	movl	%edx, 32(%rax)	# _58, mo_94(D)->z
# p_mobj.c:313: 	if ( (mo->flags & MF_MISSILE)
	.loc 1 313 10
	movq	-24(%rbp), %rax	# mo, tmp214
	movl	160(%rax), %eax	# mo_94(D)->flags, _59
# p_mobj.c:313: 	if ( (mo->flags & MF_MISSILE)
	.loc 1 313 18
	andl	$65536, %eax	#, _60
# p_mobj.c:313: 	if ( (mo->flags & MF_MISSILE)
	.loc 1 313 5
	testl	%eax, %eax	# _60
	je	.L47	#,
# p_mobj.c:314: 	     && !(mo->flags & MF_NOCLIP) )
	.loc 1 314 14
	movq	-24(%rbp), %rax	# mo, tmp215
	movl	160(%rax), %eax	# mo_94(D)->flags, _61
# p_mobj.c:314: 	     && !(mo->flags & MF_NOCLIP) )
	.loc 1 314 22
	andl	$4096, %eax	#, _62
# p_mobj.c:314: 	     && !(mo->flags & MF_NOCLIP) )
	.loc 1 314 7
	testl	%eax, %eax	# _62
	jne	.L47	#,
# p_mobj.c:316: 	    P_ExplodeMissile (mo);
	.loc 1 316 6
	movq	-24(%rbp), %rax	# mo, tmp216
	movq	%rax, %rdi	# tmp216,
	call	P_ExplodeMissile	#
# p_mobj.c:317: 	    return;
	.loc 1 317 6
	jmp	.L39	#
.L43:
# p_mobj.c:320:     else if (! (mo->flags & MF_NOGRAVITY) )
	.loc 1 320 19
	movq	-24(%rbp), %rax	# mo, tmp217
	movl	160(%rax), %eax	# mo_94(D)->flags, _63
# p_mobj.c:320:     else if (! (mo->flags & MF_NOGRAVITY) )
	.loc 1 320 27
	andl	$512, %eax	#, _64
# p_mobj.c:320:     else if (! (mo->flags & MF_NOGRAVITY) )
	.loc 1 320 13
	testl	%eax, %eax	# _64
	jne	.L47	#,
# p_mobj.c:322: 	if (mo->momz == 0)
	.loc 1 322 8
	movq	-24(%rbp), %rax	# mo, tmp218
	movl	120(%rax), %eax	# mo_94(D)->momz, _65
# p_mobj.c:322: 	if (mo->momz == 0)
	.loc 1 322 5
	testl	%eax, %eax	# _65
	jne	.L49	#,
# p_mobj.c:323: 	    mo->momz = -GRAVITY*2;
	.loc 1 323 15
	movq	-24(%rbp), %rax	# mo, tmp219
	movl	$-131072, 120(%rax)	#, mo_94(D)->momz
	jmp	.L47	#
.L49:
# p_mobj.c:325: 	    mo->momz -= GRAVITY;
	.loc 1 325 8
	movq	-24(%rbp), %rax	# mo, tmp220
	movl	120(%rax), %eax	# mo_94(D)->momz, _66
# p_mobj.c:325: 	    mo->momz -= GRAVITY;
	.loc 1 325 15
	leal	-65536(%rax), %edx	#, _67
	movq	-24(%rbp), %rax	# mo, tmp221
	movl	%edx, 120(%rax)	# _67, mo_94(D)->momz
.L47:
# p_mobj.c:328:     if (mo->z + mo->height > mo->ceilingz)
	.loc 1 328 11
	movq	-24(%rbp), %rax	# mo, tmp222
	movl	32(%rax), %edx	# mo_94(D)->z, _68
# p_mobj.c:328:     if (mo->z + mo->height > mo->ceilingz)
	.loc 1 328 19
	movq	-24(%rbp), %rax	# mo, tmp223
	movl	108(%rax), %eax	# mo_94(D)->height, _69
# p_mobj.c:328:     if (mo->z + mo->height > mo->ceilingz)
	.loc 1 328 15
	addl	%eax, %edx	# _69, _70
# p_mobj.c:328:     if (mo->z + mo->height > mo->ceilingz)
	.loc 1 328 32
	movq	-24(%rbp), %rax	# mo, tmp224
	movl	100(%rax), %eax	# mo_94(D)->ceilingz, _71
# p_mobj.c:328:     if (mo->z + mo->height > mo->ceilingz)
	.loc 1 328 8
	cmpl	%eax, %edx	# _71, _70
	jle	.L39	#,
# p_mobj.c:331: 	if (mo->momz > 0)
	.loc 1 331 8
	movq	-24(%rbp), %rax	# mo, tmp225
	movl	120(%rax), %eax	# mo_94(D)->momz, _72
# p_mobj.c:331: 	if (mo->momz > 0)
	.loc 1 331 5
	testl	%eax, %eax	# _72
	jle	.L50	#,
# p_mobj.c:332: 	    mo->momz = 0;
	.loc 1 332 15
	movq	-24(%rbp), %rax	# mo, tmp226
	movl	$0, 120(%rax)	#, mo_94(D)->momz
.L50:
# p_mobj.c:334: 	    mo->z = mo->ceilingz - mo->height;
	.loc 1 334 16
	movq	-24(%rbp), %rax	# mo, tmp227
	movl	100(%rax), %edx	# mo_94(D)->ceilingz, _73
# p_mobj.c:334: 	    mo->z = mo->ceilingz - mo->height;
	.loc 1 334 31
	movq	-24(%rbp), %rax	# mo, tmp228
	movl	108(%rax), %eax	# mo_94(D)->height, _74
# p_mobj.c:334: 	    mo->z = mo->ceilingz - mo->height;
	.loc 1 334 27
	subl	%eax, %edx	# _74, _75
# p_mobj.c:334: 	    mo->z = mo->ceilingz - mo->height;
	.loc 1 334 12
	movq	-24(%rbp), %rax	# mo, tmp229
	movl	%edx, 32(%rax)	# _75, mo_94(D)->z
# p_mobj.c:337: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 337 8
	movq	-24(%rbp), %rax	# mo, tmp230
	movl	160(%rax), %eax	# mo_94(D)->flags, _76
# p_mobj.c:337: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 337 16
	andl	$16777216, %eax	#, _77
# p_mobj.c:337: 	if (mo->flags & MF_SKULLFLY)
	.loc 1 337 5
	testl	%eax, %eax	# _77
	je	.L51	#,
# p_mobj.c:339: 	    mo->momz = -mo->momz;
	.loc 1 339 20
	movq	-24(%rbp), %rax	# mo, tmp231
	movl	120(%rax), %eax	# mo_94(D)->momz, _78
# p_mobj.c:339: 	    mo->momz = -mo->momz;
	.loc 1 339 17
	negl	%eax	# _78
	movl	%eax, %edx	# _78, _79
# p_mobj.c:339: 	    mo->momz = -mo->momz;
	.loc 1 339 15
	movq	-24(%rbp), %rax	# mo, tmp232
	movl	%edx, 120(%rax)	# _79, mo_94(D)->momz
.L51:
# p_mobj.c:342: 	if ( (mo->flags & MF_MISSILE)
	.loc 1 342 10
	movq	-24(%rbp), %rax	# mo, tmp233
	movl	160(%rax), %eax	# mo_94(D)->flags, _80
# p_mobj.c:342: 	if ( (mo->flags & MF_MISSILE)
	.loc 1 342 18
	andl	$65536, %eax	#, _81
# p_mobj.c:342: 	if ( (mo->flags & MF_MISSILE)
	.loc 1 342 5
	testl	%eax, %eax	# _81
	je	.L39	#,
# p_mobj.c:343: 	     && !(mo->flags & MF_NOCLIP) )
	.loc 1 343 14
	movq	-24(%rbp), %rax	# mo, tmp234
	movl	160(%rax), %eax	# mo_94(D)->flags, _82
# p_mobj.c:343: 	     && !(mo->flags & MF_NOCLIP) )
	.loc 1 343 22
	andl	$4096, %eax	#, _83
# p_mobj.c:343: 	     && !(mo->flags & MF_NOCLIP) )
	.loc 1 343 7
	testl	%eax, %eax	# _83
	jne	.L39	#,
# p_mobj.c:345: 	    P_ExplodeMissile (mo);
	.loc 1 345 6
	movq	-24(%rbp), %rax	# mo, tmp235
	movq	%rax, %rdi	# tmp235,
	call	P_ExplodeMissile	#
# p_mobj.c:346: 	    return;
	.loc 1 346 6
	nop	
.L39:
# p_mobj.c:349: } 
	.loc 1 349 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_ZMovement, .-P_ZMovement
	.globl	P_NightmareRespawn
	.type	P_NightmareRespawn, @function
P_NightmareRespawn:
.LFB4:
	.loc 1 358 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# mobj, mobj
# p_mobj.c:366:     x = mobj->spawnpoint.x << FRACBITS; 
	.loc 1 366 25
	movq	-56(%rbp), %rax	# mobj, tmp108
	movzwl	204(%rax), %eax	# mobj_31(D)->spawnpoint.x, _1
	cwtl
# p_mobj.c:366:     x = mobj->spawnpoint.x << FRACBITS; 
	.loc 1 366 7
	sall	$16, %eax	#, tmp109
	movl	%eax, -32(%rbp)	# tmp109, x
# p_mobj.c:367:     y = mobj->spawnpoint.y << FRACBITS; 
	.loc 1 367 25
	movq	-56(%rbp), %rax	# mobj, tmp110
	movzwl	206(%rax), %eax	# mobj_31(D)->spawnpoint.y, _3
	cwtl
# p_mobj.c:367:     y = mobj->spawnpoint.y << FRACBITS; 
	.loc 1 367 7
	sall	$16, %eax	#, tmp111
	movl	%eax, -28(%rbp)	# tmp111, y
# p_mobj.c:370:     if (!P_CheckPosition (mobj, x, y) ) 
	.loc 1 370 10
	movl	-28(%rbp), %edx	# y, tmp112
	movl	-32(%rbp), %ecx	# x, tmp113
	movq	-56(%rbp), %rax	# mobj, tmp114
	movl	%ecx, %esi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	P_CheckPosition@PLT	#
# p_mobj.c:370:     if (!P_CheckPosition (mobj, x, y) ) 
	.loc 1 370 8 discriminator 1
	testl	%eax, %eax	# _5
	je	.L58	#,
# p_mobj.c:377: 		      mobj->subsector->sector->floorheight , MT_TFOG); 
	.loc 1 377 13
	movq	-56(%rbp), %rax	# mobj, tmp115
	movq	88(%rax), %rax	# mobj_31(D)->subsector, _6
# p_mobj.c:377: 		      mobj->subsector->sector->floorheight , MT_TFOG); 
	.loc 1 377 24
	movq	(%rax), %rax	# _6->sector, _7
# p_mobj.c:375:     mo = P_SpawnMobj (mobj->x,
	.loc 1 375 10
	movl	(%rax), %edx	# _7->floorheight, _8
	movq	-56(%rbp), %rax	# mobj, tmp116
	movl	28(%rax), %esi	# mobj_31(D)->y, _9
	movq	-56(%rbp), %rax	# mobj, tmp117
	movl	24(%rax), %eax	# mobj_31(D)->x, _10
	movl	$39, %ecx	#,
	movl	%eax, %edi	# _10,
	call	P_SpawnMobj	#
	movq	%rax, -24(%rbp)	# tmp118, mo
# p_mobj.c:379:     S_StartSound (mo, sfx_telept);
	.loc 1 379 5
	movq	-24(%rbp), %rax	# mo, tmp119
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	S_StartSound@PLT	#
# p_mobj.c:382:     ss = R_PointInSubsector (x,y); 
	.loc 1 382 10
	movl	-28(%rbp), %edx	# y, tmp120
	movl	-32(%rbp), %eax	# x, tmp121
	movl	%edx, %esi	# tmp120,
	movl	%eax, %edi	# tmp121,
	call	R_PointInSubsector@PLT	#
	movq	%rax, -16(%rbp)	# tmp122, ss
# p_mobj.c:384:     mo = P_SpawnMobj (x, y, ss->sector->floorheight , MT_TFOG); 
	.loc 1 384 31
	movq	-16(%rbp), %rax	# ss, tmp123
	movq	(%rax), %rax	# ss_39->sector, _11
# p_mobj.c:384:     mo = P_SpawnMobj (x, y, ss->sector->floorheight , MT_TFOG); 
	.loc 1 384 10
	movl	(%rax), %edx	# _11->floorheight, _12
	movl	-28(%rbp), %esi	# y, tmp124
	movl	-32(%rbp), %eax	# x, tmp125
	movl	$39, %ecx	#,
	movl	%eax, %edi	# tmp125,
	call	P_SpawnMobj	#
	movq	%rax, -24(%rbp)	# tmp126, mo
# p_mobj.c:386:     S_StartSound (mo, sfx_telept);
	.loc 1 386 5
	movq	-24(%rbp), %rax	# mo, tmp127
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	S_StartSound@PLT	#
# p_mobj.c:389:     mthing = &mobj->spawnpoint;
	.loc 1 389 12
	movq	-56(%rbp), %rax	# mobj, tmp131
	addq	$204, %rax	#, tmp130
	movq	%rax, -8(%rbp)	# tmp130, mthing
# p_mobj.c:392:     if (mobj->info->flags & MF_SPAWNCEILING)
	.loc 1 392 13
	movq	-56(%rbp), %rax	# mobj, tmp132
	movq	136(%rax), %rax	# mobj_31(D)->info, _13
# p_mobj.c:392:     if (mobj->info->flags & MF_SPAWNCEILING)
	.loc 1 392 19
	movl	84(%rax), %eax	# _13->flags, _14
# p_mobj.c:392:     if (mobj->info->flags & MF_SPAWNCEILING)
	.loc 1 392 27
	andl	$256, %eax	#, _15
# p_mobj.c:392:     if (mobj->info->flags & MF_SPAWNCEILING)
	.loc 1 392 8
	testl	%eax, %eax	# _15
	je	.L55	#,
# p_mobj.c:393: 	z = ONCEILINGZ;
	.loc 1 393 4
	movl	$2147483647, -36(%rbp)	#, z
	jmp	.L56	#
.L55:
# p_mobj.c:395: 	z = ONFLOORZ;
	.loc 1 395 4
	movl	$-2147483648, -36(%rbp)	#, z
.L56:
# p_mobj.c:398:     mo = P_SpawnMobj (x,y,z, mobj->type);
	.loc 1 398 10
	movq	-56(%rbp), %rax	# mobj, tmp133
	movl	128(%rax), %ecx	# mobj_31(D)->type, _16
	movl	-36(%rbp), %edx	# z, tmp134
	movl	-28(%rbp), %esi	# y, tmp135
	movl	-32(%rbp), %eax	# x, tmp136
	movl	%eax, %edi	# tmp136,
	call	P_SpawnMobj	#
	movq	%rax, -24(%rbp)	# tmp137, mo
# p_mobj.c:399:     mo->spawnpoint = mobj->spawnpoint;	
	.loc 1 399 20
	movq	-24(%rbp), %rax	# mo, tmp138
	movq	-56(%rbp), %rdx	# mobj, tmp139
	movq	204(%rdx), %rcx	# mobj_31(D)->spawnpoint, tmp140
	movq	%rcx, 204(%rax)	# tmp140, mo_47->spawnpoint
	movzwl	212(%rdx), %edx	# mobj_31(D)->spawnpoint, tmp141
	movw	%dx, 212(%rax)	# tmp141, mo_47->spawnpoint
# p_mobj.c:400:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 400 32
	movq	-8(%rbp), %rax	# mthing, tmp142
	movzwl	4(%rax), %eax	# mthing_43->angle, _17
# p_mobj.c:400:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 400 39
	movswl	%ax, %edx	# _17, tmp143
	imull	$11651, %edx, %edx	#, tmp143, tmp144
	shrl	$16, %edx	#, tmp145
	sarw	$3, %dx	#, tmp146
	sarw	$15, %ax	#, _17
	movl	%eax, %ecx	# _17, tmp147
	movl	%edx, %eax	# tmp146, tmp146
	subl	%ecx, %eax	# tmp147, tmp146
	cwtl
# p_mobj.c:400:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 400 23
	sall	$29, %eax	#, _20
	movl	%eax, %edx	# _20, _21
# p_mobj.c:400:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 400 15
	movq	-24(%rbp), %rax	# mo, tmp148
	movl	%edx, 56(%rax)	# _21, mo_47->angle
# p_mobj.c:402:     if (mthing->options & MTF_AMBUSH)
	.loc 1 402 15
	movq	-8(%rbp), %rax	# mthing, tmp149
	movzwl	8(%rax), %eax	# mthing_43->options, _22
# p_mobj.c:402:     if (mthing->options & MTF_AMBUSH)
	.loc 1 402 25
	cwtl
	andl	$8, %eax	#, _24
# p_mobj.c:402:     if (mthing->options & MTF_AMBUSH)
	.loc 1 402 8
	testl	%eax, %eax	# _24
	je	.L57	#,
# p_mobj.c:403: 	mo->flags |= MF_AMBUSH;
	.loc 1 403 4
	movq	-24(%rbp), %rax	# mo, tmp150
	movl	160(%rax), %eax	# mo_47->flags, _25
# p_mobj.c:403: 	mo->flags |= MF_AMBUSH;
	.loc 1 403 12
	orl	$32, %eax	#, _25
	movl	%eax, %edx	# _25, _26
	movq	-24(%rbp), %rax	# mo, tmp151
	movl	%edx, 160(%rax)	# _26, mo_47->flags
.L57:
# p_mobj.c:405:     mo->reactiontime = 18;
	.loc 1 405 22
	movq	-24(%rbp), %rax	# mo, tmp152
	movl	$18, 184(%rax)	#, mo_47->reactiontime
# p_mobj.c:408:     P_RemoveMobj (mobj);
	.loc 1 408 5
	movq	-56(%rbp), %rax	# mobj, tmp153
	movq	%rax, %rdi	# tmp153,
	call	P_RemoveMobj	#
	jmp	.L52	#
.L58:
# p_mobj.c:371: 	return;	// no respwan
	.loc 1 371 2
	nop	
.L52:
# p_mobj.c:409: }
	.loc 1 409 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_NightmareRespawn, .-P_NightmareRespawn
	.globl	P_MobjThinker
	.type	P_MobjThinker, @function
P_MobjThinker:
.LFB5:
	.loc 1 416 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mobj, mobj
# p_mobj.c:418:     if (mobj->momx
	.loc 1 418 13
	movq	-8(%rbp), %rax	# mobj, tmp107
	movl	112(%rax), %eax	# mobj_30(D)->momx, _1
# p_mobj.c:418:     if (mobj->momx
	.loc 1 418 8
	testl	%eax, %eax	# _1
	jne	.L60	#,
# p_mobj.c:419: 	|| mobj->momy
	.loc 1 419 9
	movq	-8(%rbp), %rax	# mobj, tmp108
	movl	116(%rax), %eax	# mobj_30(D)->momy, _2
# p_mobj.c:419: 	|| mobj->momy
	.loc 1 419 2
	testl	%eax, %eax	# _2
	jne	.L60	#,
# p_mobj.c:420: 	|| (mobj->flags&MF_SKULLFLY) )
	.loc 1 420 10
	movq	-8(%rbp), %rax	# mobj, tmp109
	movl	160(%rax), %eax	# mobj_30(D)->flags, _3
# p_mobj.c:420: 	|| (mobj->flags&MF_SKULLFLY) )
	.loc 1 420 17
	andl	$16777216, %eax	#, _4
# p_mobj.c:420: 	|| (mobj->flags&MF_SKULLFLY) )
	.loc 1 420 2
	testl	%eax, %eax	# _4
	je	.L61	#,
.L60:
# p_mobj.c:422: 	P_XYMovement (mobj);
	.loc 1 422 2
	movq	-8(%rbp), %rax	# mobj, tmp110
	movq	%rax, %rdi	# tmp110,
	call	P_XYMovement	#
# p_mobj.c:425: 	if (mobj->thinker.function.acv == (actionf_v) (-1))
	.loc 1 425 28
	movq	-8(%rbp), %rax	# mobj, tmp111
	movq	16(%rax), %rax	# mobj_30(D)->thinker.function.acv, _5
# p_mobj.c:425: 	if (mobj->thinker.function.acv == (actionf_v) (-1))
	.loc 1 425 5
	cmpq	$-1, %rax	#, _5
	je	.L71	#,
.L61:
# p_mobj.c:428:     if ( (mobj->z != mobj->floorz)
	.loc 1 428 15
	movq	-8(%rbp), %rax	# mobj, tmp112
	movl	32(%rax), %edx	# mobj_30(D)->z, _6
# p_mobj.c:428:     if ( (mobj->z != mobj->floorz)
	.loc 1 428 26
	movq	-8(%rbp), %rax	# mobj, tmp113
	movl	96(%rax), %eax	# mobj_30(D)->floorz, _7
# p_mobj.c:428:     if ( (mobj->z != mobj->floorz)
	.loc 1 428 8
	cmpl	%eax, %edx	# _7, _6
	jne	.L63	#,
# p_mobj.c:429: 	 || mobj->momz )
	.loc 1 429 10
	movq	-8(%rbp), %rax	# mobj, tmp114
	movl	120(%rax), %eax	# mobj_30(D)->momz, _8
# p_mobj.c:429: 	 || mobj->momz )
	.loc 1 429 3
	testl	%eax, %eax	# _8
	je	.L64	#,
.L63:
# p_mobj.c:431: 	P_ZMovement (mobj);
	.loc 1 431 2
	movq	-8(%rbp), %rax	# mobj, tmp115
	movq	%rax, %rdi	# tmp115,
	call	P_ZMovement	#
# p_mobj.c:434: 	if (mobj->thinker.function.acv == (actionf_v) (-1))
	.loc 1 434 28
	movq	-8(%rbp), %rax	# mobj, tmp116
	movq	16(%rax), %rax	# mobj_30(D)->thinker.function.acv, _9
# p_mobj.c:434: 	if (mobj->thinker.function.acv == (actionf_v) (-1))
	.loc 1 434 5
	cmpq	$-1, %rax	#, _9
	je	.L72	#,
.L64:
# p_mobj.c:441:     if (mobj->tics != -1)
	.loc 1 441 13
	movq	-8(%rbp), %rax	# mobj, tmp117
	movl	144(%rax), %eax	# mobj_30(D)->tics, _10
# p_mobj.c:441:     if (mobj->tics != -1)
	.loc 1 441 8
	cmpl	$-1, %eax	#, _10
	je	.L65	#,
# p_mobj.c:443: 	mobj->tics--;
	.loc 1 443 6
	movq	-8(%rbp), %rax	# mobj, tmp118
	movl	144(%rax), %eax	# mobj_30(D)->tics, _11
# p_mobj.c:443: 	mobj->tics--;
	.loc 1 443 12
	leal	-1(%rax), %edx	#, _12
	movq	-8(%rbp), %rax	# mobj, tmp119
	movl	%edx, 144(%rax)	# _12, mobj_30(D)->tics
# p_mobj.c:446: 	if (!mobj->tics)
	.loc 1 446 11
	movq	-8(%rbp), %rax	# mobj, tmp120
	movl	144(%rax), %eax	# mobj_30(D)->tics, _13
# p_mobj.c:446: 	if (!mobj->tics)
	.loc 1 446 5
	testl	%eax, %eax	# _13
	jne	.L59	#,
# p_mobj.c:447: 	    if (!P_SetMobjState (mobj, mobj->state->nextstate) )
	.loc 1 447 37
	movq	-8(%rbp), %rax	# mobj, tmp121
	movq	152(%rax), %rax	# mobj_30(D)->state, _14
# p_mobj.c:447: 	    if (!P_SetMobjState (mobj, mobj->state->nextstate) )
	.loc 1 447 11
	movl	32(%rax), %edx	# _14->nextstate, _15
	movq	-8(%rbp), %rax	# mobj, tmp122
	movl	%edx, %esi	# _15,
	movq	%rax, %rdi	# tmp122,
	call	P_SetMobjState	#
# p_mobj.c:447: 	    if (!P_SetMobjState (mobj, mobj->state->nextstate) )
	.loc 1 447 9 discriminator 1
	testl	%eax, %eax	# _16
	jmp	.L59	#
.L65:
# p_mobj.c:453: 	if (! (mobj->flags & MF_COUNTKILL) )
	.loc 1 453 13
	movq	-8(%rbp), %rax	# mobj, tmp123
	movl	160(%rax), %eax	# mobj_30(D)->flags, _17
# p_mobj.c:453: 	if (! (mobj->flags & MF_COUNTKILL) )
	.loc 1 453 21
	andl	$4194304, %eax	#, _18
# p_mobj.c:453: 	if (! (mobj->flags & MF_COUNTKILL) )
	.loc 1 453 5
	testl	%eax, %eax	# _18
	je	.L73	#,
# p_mobj.c:456: 	if (!respawnmonsters)
	.loc 1 456 6
	movl	respawnmonsters(%rip), %eax	# respawnmonsters, respawnmonsters.4_19
# p_mobj.c:456: 	if (!respawnmonsters)
	.loc 1 456 5
	testl	%eax, %eax	# respawnmonsters.4_19
	je	.L74	#,
# p_mobj.c:459: 	mobj->movecount++;
	.loc 1 459 6
	movq	-8(%rbp), %rax	# mobj, tmp124
	movl	172(%rax), %eax	# mobj_30(D)->movecount, _20
# p_mobj.c:459: 	mobj->movecount++;
	.loc 1 459 17
	leal	1(%rax), %edx	#, _21
	movq	-8(%rbp), %rax	# mobj, tmp125
	movl	%edx, 172(%rax)	# _21, mobj_30(D)->movecount
# p_mobj.c:461: 	if (mobj->movecount < 12*35)
	.loc 1 461 10
	movq	-8(%rbp), %rax	# mobj, tmp126
	movl	172(%rax), %eax	# mobj_30(D)->movecount, _22
# p_mobj.c:461: 	if (mobj->movecount < 12*35)
	.loc 1 461 5
	cmpl	$419, %eax	#, _22
	jle	.L75	#,
# p_mobj.c:464: 	if ( leveltime&31 )
	.loc 1 464 16
	movl	leveltime(%rip), %eax	# leveltime, leveltime.5_23
	andl	$31, %eax	#, _24
# p_mobj.c:464: 	if ( leveltime&31 )
	.loc 1 464 5
	testl	%eax, %eax	# _24
	jne	.L76	#,
# p_mobj.c:467: 	if (P_Random () > 4)
	.loc 1 467 6
	call	P_Random@PLT	#
# p_mobj.c:467: 	if (P_Random () > 4)
	.loc 1 467 5 discriminator 1
	cmpl	$4, %eax	#, _25
	jg	.L77	#,
# p_mobj.c:470: 	P_NightmareRespawn (mobj);
	.loc 1 470 2
	movq	-8(%rbp), %rax	# mobj, tmp127
	movq	%rax, %rdi	# tmp127,
	call	P_NightmareRespawn	#
	jmp	.L59	#
.L71:
# p_mobj.c:426: 	    return;		// mobj was removed
	.loc 1 426 6
	nop	
	jmp	.L59	#
.L72:
# p_mobj.c:435: 	    return;		// mobj was removed
	.loc 1 435 6
	nop	
	jmp	.L59	#
.L73:
# p_mobj.c:454: 	    return;
	.loc 1 454 6
	nop	
	jmp	.L59	#
.L74:
# p_mobj.c:457: 	    return;
	.loc 1 457 6
	nop	
	jmp	.L59	#
.L75:
# p_mobj.c:462: 	    return;
	.loc 1 462 6
	nop	
	jmp	.L59	#
.L76:
# p_mobj.c:465: 	    return;
	.loc 1 465 6
	nop	
	jmp	.L59	#
.L77:
# p_mobj.c:468: 	    return;
	.loc 1 468 6
	nop	
.L59:
# p_mobj.c:473: }
	.loc 1 473 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	P_MobjThinker, .-P_MobjThinker
	.globl	P_SpawnMobj
	.type	P_SpawnMobj, @function
P_SpawnMobj:
.LFB6:
	.loc 1 485 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# x, x
	movl	%esi, -40(%rbp)	# y, y
	movl	%edx, -44(%rbp)	# z, z
	movl	%ecx, -48(%rbp)	# type, type
# p_mobj.c:490:     mobj = Z_Malloc (sizeof(*mobj), PU_LEVEL, NULL);
	.loc 1 490 12
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$224, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp110, mobj
# p_mobj.c:491:     memset (mobj, 0, sizeof (*mobj));
	.loc 1 491 5
	movq	-24(%rbp), %rax	# mobj, tmp111
	movl	$224, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	memset@PLT	#
# p_mobj.c:492:     info = &mobjinfo[type];
	.loc 1 492 10
	movl	-48(%rbp), %eax	# type, tmp112
	imulq	$92, %rax, %rax	#, tmp112, tmp113
	leaq	mobjinfo(%rip), %rdx	#, tmp114
	addq	%rdx, %rax	# tmp114, tmp115
	movq	%rax, -16(%rbp)	# tmp115, info
# p_mobj.c:494:     mobj->type = type;
	.loc 1 494 16
	movq	-24(%rbp), %rax	# mobj, tmp116
	movl	-48(%rbp), %edx	# type, tmp117
	movl	%edx, 128(%rax)	# tmp117, mobj_31->type
# p_mobj.c:495:     mobj->info = info;
	.loc 1 495 16
	movq	-24(%rbp), %rax	# mobj, tmp118
	movq	-16(%rbp), %rdx	# info, tmp119
	movq	%rdx, 136(%rax)	# tmp119, mobj_31->info
# p_mobj.c:496:     mobj->x = x;
	.loc 1 496 13
	movq	-24(%rbp), %rax	# mobj, tmp120
	movl	-36(%rbp), %edx	# x, tmp121
	movl	%edx, 24(%rax)	# tmp121, mobj_31->x
# p_mobj.c:497:     mobj->y = y;
	.loc 1 497 13
	movq	-24(%rbp), %rax	# mobj, tmp122
	movl	-40(%rbp), %edx	# y, tmp123
	movl	%edx, 28(%rax)	# tmp123, mobj_31->y
# p_mobj.c:498:     mobj->radius = info->radius;
	.loc 1 498 24
	movq	-16(%rbp), %rax	# info, tmp124
	movl	64(%rax), %edx	# info_34->radius, _1
# p_mobj.c:498:     mobj->radius = info->radius;
	.loc 1 498 18
	movq	-24(%rbp), %rax	# mobj, tmp125
	movl	%edx, 104(%rax)	# _1, mobj_31->radius
# p_mobj.c:499:     mobj->height = info->height;
	.loc 1 499 24
	movq	-16(%rbp), %rax	# info, tmp126
	movl	68(%rax), %edx	# info_34->height, _2
# p_mobj.c:499:     mobj->height = info->height;
	.loc 1 499 18
	movq	-24(%rbp), %rax	# mobj, tmp127
	movl	%edx, 108(%rax)	# _2, mobj_31->height
# p_mobj.c:500:     mobj->flags = info->flags;
	.loc 1 500 23
	movq	-16(%rbp), %rax	# info, tmp128
	movl	84(%rax), %edx	# info_34->flags, _3
# p_mobj.c:500:     mobj->flags = info->flags;
	.loc 1 500 17
	movq	-24(%rbp), %rax	# mobj, tmp129
	movl	%edx, 160(%rax)	# _3, mobj_31->flags
# p_mobj.c:501:     mobj->health = info->spawnhealth;
	.loc 1 501 24
	movq	-16(%rbp), %rax	# info, tmp130
	movl	8(%rax), %edx	# info_34->spawnhealth, _4
# p_mobj.c:501:     mobj->health = info->spawnhealth;
	.loc 1 501 18
	movq	-24(%rbp), %rax	# mobj, tmp131
	movl	%edx, 164(%rax)	# _4, mobj_31->health
# p_mobj.c:503:     if (gameskill != sk_nightmare)
	.loc 1 503 19
	movl	gameskill(%rip), %eax	# gameskill, gameskill.6_5
# p_mobj.c:503:     if (gameskill != sk_nightmare)
	.loc 1 503 8
	cmpl	$4, %eax	#, gameskill.6_5
	je	.L79	#,
# p_mobj.c:504: 	mobj->reactiontime = info->reactiontime;
	.loc 1 504 27
	movq	-16(%rbp), %rax	# info, tmp132
	movl	20(%rax), %edx	# info_34->reactiontime, _6
# p_mobj.c:504: 	mobj->reactiontime = info->reactiontime;
	.loc 1 504 21
	movq	-24(%rbp), %rax	# mobj, tmp133
	movl	%edx, 184(%rax)	# _6, mobj_31->reactiontime
.L79:
# p_mobj.c:506:     mobj->lastlook = P_Random () % MAXPLAYERS;
	.loc 1 506 22
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _7
# p_mobj.c:506:     mobj->lastlook = P_Random () % MAXPLAYERS;
	.loc 1 506 34 discriminator 1
	movl	%edx, %eax	# _7, tmp134
	sarl	$31, %eax	#, tmp134
	shrl	$30, %eax	#, tmp135
	addl	%eax, %edx	# tmp135, tmp136
	andl	$3, %edx	#, tmp137
	subl	%eax, %edx	# tmp135, tmp138
# p_mobj.c:506:     mobj->lastlook = P_Random () % MAXPLAYERS;
	.loc 1 506 20 discriminator 1
	movq	-24(%rbp), %rax	# mobj, tmp139
	movl	%edx, 200(%rax)	# _8, mobj_31->lastlook
# p_mobj.c:509:     st = &states[info->spawnstate];
	.loc 1 509 22
	movq	-16(%rbp), %rax	# info, tmp140
	movl	4(%rax), %eax	# info_34->spawnstate, _9
# p_mobj.c:509:     st = &states[info->spawnstate];
	.loc 1 509 8
	movslq	%eax, %rdx	# _9, tmp141
	movq	%rdx, %rax	# tmp141, tmp142
	salq	$3, %rax	#, tmp143
	subq	%rdx, %rax	# tmp141, tmp142
	salq	$3, %rax	#, tmp144
	leaq	states(%rip), %rdx	#, tmp145
	addq	%rdx, %rax	# tmp145, tmp146
	movq	%rax, -8(%rbp)	# tmp146, st
# p_mobj.c:511:     mobj->state = st;
	.loc 1 511 17
	movq	-24(%rbp), %rax	# mobj, tmp147
	movq	-8(%rbp), %rdx	# st, tmp148
	movq	%rdx, 152(%rax)	# tmp148, mobj_31->state
# p_mobj.c:512:     mobj->tics = st->tics;
	.loc 1 512 20
	movq	-8(%rbp), %rax	# st, tmp149
	movq	16(%rax), %rax	# st_48->tics, _10
# p_mobj.c:512:     mobj->tics = st->tics;
	.loc 1 512 16
	movl	%eax, %edx	# _10, _11
	movq	-24(%rbp), %rax	# mobj, tmp150
	movl	%edx, 144(%rax)	# _11, mobj_31->tics
# p_mobj.c:513:     mobj->sprite = st->sprite;
	.loc 1 513 22
	movq	-8(%rbp), %rax	# st, tmp151
	movl	(%rax), %edx	# st_48->sprite, _12
# p_mobj.c:513:     mobj->sprite = st->sprite;
	.loc 1 513 18
	movq	-24(%rbp), %rax	# mobj, tmp152
	movl	%edx, 60(%rax)	# _12, mobj_31->sprite
# p_mobj.c:514:     mobj->frame = st->frame;
	.loc 1 514 21
	movq	-8(%rbp), %rax	# st, tmp153
	movq	8(%rax), %rax	# st_48->frame, _13
# p_mobj.c:514:     mobj->frame = st->frame;
	.loc 1 514 17
	movl	%eax, %edx	# _13, _14
	movq	-24(%rbp), %rax	# mobj, tmp154
	movl	%edx, 64(%rax)	# _14, mobj_31->frame
# p_mobj.c:517:     P_SetThingPosition (mobj);
	.loc 1 517 5
	movq	-24(%rbp), %rax	# mobj, tmp155
	movq	%rax, %rdi	# tmp155,
	call	P_SetThingPosition@PLT	#
# p_mobj.c:519:     mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 519 24
	movq	-24(%rbp), %rax	# mobj, tmp156
	movq	88(%rax), %rax	# mobj_31->subsector, _15
# p_mobj.c:519:     mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 519 35
	movq	(%rax), %rax	# _15->sector, _16
# p_mobj.c:519:     mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 519 43
	movl	(%rax), %edx	# _16->floorheight, _17
# p_mobj.c:519:     mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 519 18
	movq	-24(%rbp), %rax	# mobj, tmp157
	movl	%edx, 96(%rax)	# _17, mobj_31->floorz
# p_mobj.c:520:     mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 520 26
	movq	-24(%rbp), %rax	# mobj, tmp158
	movq	88(%rax), %rax	# mobj_31->subsector, _18
# p_mobj.c:520:     mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 520 37
	movq	(%rax), %rax	# _18->sector, _19
# p_mobj.c:520:     mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 520 45
	movl	4(%rax), %edx	# _19->ceilingheight, _20
# p_mobj.c:520:     mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 520 20
	movq	-24(%rbp), %rax	# mobj, tmp159
	movl	%edx, 100(%rax)	# _20, mobj_31->ceilingz
# p_mobj.c:522:     if (z == ONFLOORZ)
	.loc 1 522 8
	cmpl	$-2147483648, -44(%rbp)	#, z
	jne	.L80	#,
# p_mobj.c:523: 	mobj->z = mobj->floorz;
	.loc 1 523 16
	movq	-24(%rbp), %rax	# mobj, tmp160
	movl	96(%rax), %edx	# mobj_31->floorz, _21
# p_mobj.c:523: 	mobj->z = mobj->floorz;
	.loc 1 523 10
	movq	-24(%rbp), %rax	# mobj, tmp161
	movl	%edx, 32(%rax)	# _21, mobj_31->z
	jmp	.L81	#
.L80:
# p_mobj.c:524:     else if (z == ONCEILINGZ)
	.loc 1 524 13
	cmpl	$2147483647, -44(%rbp)	#, z
	jne	.L82	#,
# p_mobj.c:525: 	mobj->z = mobj->ceilingz - mobj->info->height;
	.loc 1 525 16
	movq	-24(%rbp), %rax	# mobj, tmp162
	movl	100(%rax), %edx	# mobj_31->ceilingz, _22
# p_mobj.c:525: 	mobj->z = mobj->ceilingz - mobj->info->height;
	.loc 1 525 33
	movq	-24(%rbp), %rax	# mobj, tmp163
	movq	136(%rax), %rax	# mobj_31->info, _23
# p_mobj.c:525: 	mobj->z = mobj->ceilingz - mobj->info->height;
	.loc 1 525 39
	movl	68(%rax), %eax	# _23->height, _24
# p_mobj.c:525: 	mobj->z = mobj->ceilingz - mobj->info->height;
	.loc 1 525 27
	subl	%eax, %edx	# _24, _25
# p_mobj.c:525: 	mobj->z = mobj->ceilingz - mobj->info->height;
	.loc 1 525 10
	movq	-24(%rbp), %rax	# mobj, tmp164
	movl	%edx, 32(%rax)	# _25, mobj_31->z
	jmp	.L81	#
.L82:
# p_mobj.c:527: 	mobj->z = z;
	.loc 1 527 10
	movq	-24(%rbp), %rax	# mobj, tmp165
	movl	-44(%rbp), %edx	# z, tmp166
	movl	%edx, 32(%rax)	# tmp166, mobj_31->z
.L81:
# p_mobj.c:529:     mobj->thinker.function.acp1 = (actionf_p1)P_MobjThinker;
	.loc 1 529 33
	movq	-24(%rbp), %rax	# mobj, tmp167
	leaq	P_MobjThinker(%rip), %rdx	#, tmp168
	movq	%rdx, 16(%rax)	# tmp168, mobj_31->thinker.function.acp1
# p_mobj.c:531:     P_AddThinker (&mobj->thinker);
	.loc 1 531 5
	movq	-24(%rbp), %rax	# mobj, _26
	movq	%rax, %rdi	# _26,
	call	P_AddThinker@PLT	#
# p_mobj.c:533:     return mobj;
	.loc 1 533 12
	movq	-24(%rbp), %rax	# mobj, _62
# p_mobj.c:534: }
	.loc 1 534 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	P_SpawnMobj, .-P_SpawnMobj
	.globl	itemrespawnque
	.bss
	.align 32
	.type	itemrespawnque, @object
	.size	itemrespawnque, 1280
itemrespawnque:
	.zero	1280
	.globl	itemrespawntime
	.align 32
	.type	itemrespawntime, @object
	.size	itemrespawntime, 512
itemrespawntime:
	.zero	512
	.globl	iquehead
	.align 4
	.type	iquehead, @object
	.size	iquehead, 4
iquehead:
	.zero	4
	.globl	iquetail
	.align 4
	.type	iquetail, @object
	.size	iquetail, 4
iquetail:
	.zero	4
	.text
	.globl	P_RemoveMobj
	.type	P_RemoveMobj, @function
P_RemoveMobj:
.LFB7:
	.loc 1 547 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mobj, mobj
# p_mobj.c:548:     if ((mobj->flags & MF_SPECIAL)
	.loc 1 548 14
	movq	-8(%rbp), %rax	# mobj, tmp99
	movl	160(%rax), %eax	# mobj_20(D)->flags, _1
# p_mobj.c:548:     if ((mobj->flags & MF_SPECIAL)
	.loc 1 548 22
	andl	$1, %eax	#, _2
# p_mobj.c:548:     if ((mobj->flags & MF_SPECIAL)
	.loc 1 548 8
	testl	%eax, %eax	# _2
	je	.L85	#,
# p_mobj.c:549: 	&& !(mobj->flags & MF_DROPPED)
	.loc 1 549 11
	movq	-8(%rbp), %rax	# mobj, tmp100
	movl	160(%rax), %eax	# mobj_20(D)->flags, _3
# p_mobj.c:549: 	&& !(mobj->flags & MF_DROPPED)
	.loc 1 549 19
	andl	$131072, %eax	#, _4
# p_mobj.c:549: 	&& !(mobj->flags & MF_DROPPED)
	.loc 1 549 2
	testl	%eax, %eax	# _4
	jne	.L85	#,
# p_mobj.c:550: 	&& (mobj->type != MT_INV)
	.loc 1 550 10
	movq	-8(%rbp), %rax	# mobj, tmp101
	movl	128(%rax), %eax	# mobj_20(D)->type, _5
# p_mobj.c:550: 	&& (mobj->type != MT_INV)
	.loc 1 550 2
	cmpl	$56, %eax	#, _5
	je	.L85	#,
# p_mobj.c:551: 	&& (mobj->type != MT_INS))
	.loc 1 551 10
	movq	-8(%rbp), %rax	# mobj, tmp102
	movl	128(%rax), %eax	# mobj_20(D)->type, _6
# p_mobj.c:551: 	&& (mobj->type != MT_INS))
	.loc 1 551 2
	cmpl	$58, %eax	#, _6
	je	.L85	#,
# p_mobj.c:553: 	itemrespawnque[iquehead] = mobj->spawnpoint;
	.loc 1 553 16
	movl	iquehead(%rip), %eax	# iquehead, iquehead.7_7
# p_mobj.c:553: 	itemrespawnque[iquehead] = mobj->spawnpoint;
	.loc 1 553 27
	movslq	%eax, %rdx	# iquehead.7_7, tmp103
	movq	%rdx, %rax	# tmp103, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# tmp103, tmp105
	addq	%rax, %rax	# tmp106
	movq	%rax, %rcx	# tmp105, tmp104
	leaq	itemrespawnque(%rip), %rdx	#, tmp107
	movq	-8(%rbp), %rax	# mobj, tmp108
	movq	204(%rax), %rsi	# mobj_20(D)->spawnpoint, tmp109
	movq	%rsi, (%rcx,%rdx)	# tmp109, itemrespawnque[iquehead.7_7]
	movzwl	212(%rax), %eax	# mobj_20(D)->spawnpoint, tmp110
	movw	%ax, 8(%rcx,%rdx)	# tmp110, itemrespawnque[iquehead.7_7]
# p_mobj.c:554: 	itemrespawntime[iquehead] = leveltime;
	.loc 1 554 17
	movl	iquehead(%rip), %edx	# iquehead, iquehead.8_8
# p_mobj.c:554: 	itemrespawntime[iquehead] = leveltime;
	.loc 1 554 28
	movl	leveltime(%rip), %eax	# leveltime, leveltime.9_9
	movslq	%edx, %rdx	# iquehead.8_8, tmp111
	leaq	0(,%rdx,4), %rcx	#, tmp112
	leaq	itemrespawntime(%rip), %rdx	#, tmp113
	movl	%eax, (%rcx,%rdx)	# leveltime.9_9, itemrespawntime[iquehead.8_8]
# p_mobj.c:555: 	iquehead = (iquehead+1)&(ITEMQUESIZE-1);
	.loc 1 555 22
	movl	iquehead(%rip), %eax	# iquehead, iquehead.10_10
	addl	$1, %eax	#, _11
# p_mobj.c:555: 	iquehead = (iquehead+1)&(ITEMQUESIZE-1);
	.loc 1 555 25
	andl	$127, %eax	#, _12
# p_mobj.c:555: 	iquehead = (iquehead+1)&(ITEMQUESIZE-1);
	.loc 1 555 11
	movl	%eax, iquehead(%rip)	# _12, iquehead
# p_mobj.c:558: 	if (iquehead == iquetail)
	.loc 1 558 15
	movl	iquehead(%rip), %edx	# iquehead, iquehead.11_13
	movl	iquetail(%rip), %eax	# iquetail, iquetail.12_14
# p_mobj.c:558: 	if (iquehead == iquetail)
	.loc 1 558 5
	cmpl	%eax, %edx	# iquetail.12_14, iquehead.11_13
	jne	.L85	#,
# p_mobj.c:559: 	    iquetail = (iquetail+1)&(ITEMQUESIZE-1);
	.loc 1 559 26
	movl	iquetail(%rip), %eax	# iquetail, iquetail.13_15
	addl	$1, %eax	#, _16
# p_mobj.c:559: 	    iquetail = (iquetail+1)&(ITEMQUESIZE-1);
	.loc 1 559 29
	andl	$127, %eax	#, _17
# p_mobj.c:559: 	    iquetail = (iquetail+1)&(ITEMQUESIZE-1);
	.loc 1 559 15
	movl	%eax, iquetail(%rip)	# _17, iquetail
.L85:
# p_mobj.c:563:     P_UnsetThingPosition (mobj);
	.loc 1 563 5
	movq	-8(%rbp), %rax	# mobj, tmp114
	movq	%rax, %rdi	# tmp114,
	call	P_UnsetThingPosition@PLT	#
# p_mobj.c:566:     S_StopSound (mobj);
	.loc 1 566 5
	movq	-8(%rbp), %rax	# mobj, tmp115
	movq	%rax, %rdi	# tmp115,
	call	S_StopSound@PLT	#
# p_mobj.c:569:     P_RemoveThinker ((thinker_t*)mobj);
	.loc 1 569 5
	movq	-8(%rbp), %rax	# mobj, tmp116
	movq	%rax, %rdi	# tmp116,
	call	P_RemoveThinker@PLT	#
# p_mobj.c:570: }
	.loc 1 570 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	P_RemoveMobj, .-P_RemoveMobj
	.globl	P_RespawnSpecials
	.type	P_RespawnSpecials, @function
P_RespawnSpecials:
.LFB8:
	.loc 1 579 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# p_mobj.c:591:     if (deathmatch != 2)
	.loc 1 591 20
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.14_1
# p_mobj.c:591:     if (deathmatch != 2)
	.loc 1 591 8
	cmpl	$2, %eax	#, deathmatch.14_1
	jne	.L97	#,
# p_mobj.c:595:     if (iquehead == iquetail)
	.loc 1 595 18
	movl	iquehead(%rip), %edx	# iquehead, iquehead.15_2
	movl	iquetail(%rip), %eax	# iquetail, iquetail.16_3
# p_mobj.c:595:     if (iquehead == iquetail)
	.loc 1 595 8
	cmpl	%eax, %edx	# iquetail.16_3, iquehead.15_2
	je	.L98	#,
# p_mobj.c:599:     if (leveltime - itemrespawntime[iquetail] < 30*35)
	.loc 1 599 19
	movl	leveltime(%rip), %edx	# leveltime, leveltime.17_4
# p_mobj.c:599:     if (leveltime - itemrespawntime[iquetail] < 30*35)
	.loc 1 599 36
	movl	iquetail(%rip), %eax	# iquetail, iquetail.18_5
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp111
	leaq	itemrespawntime(%rip), %rax	#, tmp112
	movl	(%rcx,%rax), %eax	# itemrespawntime[iquetail.18_5], _6
# p_mobj.c:599:     if (leveltime - itemrespawntime[iquetail] < 30*35)
	.loc 1 599 19
	subl	%eax, %edx	# _6, _7
# p_mobj.c:599:     if (leveltime - itemrespawntime[iquetail] < 30*35)
	.loc 1 599 8
	cmpl	$1049, %edx	#, _7
	jle	.L99	#,
# p_mobj.c:602:     mthing = &itemrespawnque[iquetail];
	.loc 1 602 29
	movl	iquetail(%rip), %eax	# iquetail, iquetail.19_8
# p_mobj.c:602:     mthing = &itemrespawnque[iquetail];
	.loc 1 602 12
	movslq	%eax, %rdx	# iquetail.19_8, tmp113
	movq	%rdx, %rax	# tmp113, tmp114
	salq	$2, %rax	#, tmp114
	addq	%rdx, %rax	# tmp113, tmp114
	addq	%rax, %rax	# tmp115
	leaq	itemrespawnque(%rip), %rdx	#, tmp116
	addq	%rdx, %rax	# tmp116, tmp117
	movq	%rax, -24(%rbp)	# tmp117, mthing
# p_mobj.c:604:     x = mthing->x << FRACBITS; 
	.loc 1 604 15
	movq	-24(%rbp), %rax	# mthing, tmp118
	movzwl	(%rax), %eax	# mthing_33->x, _9
	cwtl
# p_mobj.c:604:     x = mthing->x << FRACBITS; 
	.loc 1 604 7
	sall	$16, %eax	#, tmp119
	movl	%eax, -32(%rbp)	# tmp119, x
# p_mobj.c:605:     y = mthing->y << FRACBITS; 
	.loc 1 605 15
	movq	-24(%rbp), %rax	# mthing, tmp120
	movzwl	2(%rax), %eax	# mthing_33->y, _11
	cwtl
# p_mobj.c:605:     y = mthing->y << FRACBITS; 
	.loc 1 605 7
	sall	$16, %eax	#, tmp121
	movl	%eax, -28(%rbp)	# tmp121, y
# p_mobj.c:608:     ss = R_PointInSubsector (x,y); 
	.loc 1 608 10
	movl	-28(%rbp), %edx	# y, tmp122
	movl	-32(%rbp), %eax	# x, tmp123
	movl	%edx, %esi	# tmp122,
	movl	%eax, %edi	# tmp123,
	call	R_PointInSubsector@PLT	#
	movq	%rax, -16(%rbp)	# tmp124, ss
# p_mobj.c:609:     mo = P_SpawnMobj (x, y, ss->sector->floorheight , MT_IFOG); 
	.loc 1 609 31
	movq	-16(%rbp), %rax	# ss, tmp125
	movq	(%rax), %rax	# ss_37->sector, _13
# p_mobj.c:609:     mo = P_SpawnMobj (x, y, ss->sector->floorheight , MT_IFOG); 
	.loc 1 609 10
	movl	(%rax), %edx	# _13->floorheight, _14
	movl	-28(%rbp), %esi	# y, tmp126
	movl	-32(%rbp), %eax	# x, tmp127
	movl	$40, %ecx	#,
	movl	%eax, %edi	# tmp127,
	call	P_SpawnMobj	#
	movq	%rax, -8(%rbp)	# tmp128, mo
# p_mobj.c:610:     S_StartSound (mo, sfx_itmbk);
	.loc 1 610 5
	movq	-8(%rbp), %rax	# mo, tmp129
	movl	$90, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	S_StartSound@PLT	#
# p_mobj.c:613:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 613 11
	movl	$0, -36(%rbp)	#, i
# p_mobj.c:613:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 613 5
	jmp	.L91	#
.L94:
# p_mobj.c:615: 	if (mthing->type == mobjinfo[i].doomednum)
	.loc 1 615 12
	movq	-24(%rbp), %rax	# mthing, tmp130
	movzwl	6(%rax), %eax	# mthing_33->type, _15
	movswl	%ax, %edx	# _15, _16
# p_mobj.c:615: 	if (mthing->type == mobjinfo[i].doomednum)
	.loc 1 615 33
	movl	-36(%rbp), %eax	# i, tmp132
	cltq
	imulq	$92, %rax, %rax	#, tmp131, tmp133
	leaq	mobjinfo(%rip), %rcx	#, tmp134
	movl	(%rax,%rcx), %eax	# mobjinfo[i_30].doomednum, _17
# p_mobj.c:615: 	if (mthing->type == mobjinfo[i].doomednum)
	.loc 1 615 5
	cmpl	%eax, %edx	# _17, _16
	je	.L100	#,
# p_mobj.c:613:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 613 35 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L91:
# p_mobj.c:613:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 613 17 discriminator 1
	cmpl	$136, -36(%rbp)	#, i
	jle	.L94	#,
	jmp	.L93	#
.L100:
# p_mobj.c:616: 	    break;
	.loc 1 616 6
	nop	
.L93:
# p_mobj.c:620:     if (mobjinfo[i].flags & MF_SPAWNCEILING)
	.loc 1 620 20
	movl	-36(%rbp), %eax	# i, tmp136
	cltq
	imulq	$92, %rax, %rax	#, tmp135, tmp137
	leaq	84+mobjinfo(%rip), %rdx	#, tmp138
	movl	(%rax,%rdx), %eax	# mobjinfo[i_30].flags, _18
# p_mobj.c:620:     if (mobjinfo[i].flags & MF_SPAWNCEILING)
	.loc 1 620 27
	andl	$256, %eax	#, _19
# p_mobj.c:620:     if (mobjinfo[i].flags & MF_SPAWNCEILING)
	.loc 1 620 8
	testl	%eax, %eax	# _19
	je	.L95	#,
# p_mobj.c:621: 	z = ONCEILINGZ;
	.loc 1 621 4
	movl	$2147483647, -40(%rbp)	#, z
	jmp	.L96	#
.L95:
# p_mobj.c:623: 	z = ONFLOORZ;
	.loc 1 623 4
	movl	$-2147483648, -40(%rbp)	#, z
.L96:
# p_mobj.c:625:     mo = P_SpawnMobj (x,y,z, i);
	.loc 1 625 10
	movl	-36(%rbp), %ecx	# i, i.20_20
	movl	-40(%rbp), %edx	# z, tmp139
	movl	-28(%rbp), %esi	# y, tmp140
	movl	-32(%rbp), %eax	# x, tmp141
	movl	%eax, %edi	# tmp141,
	call	P_SpawnMobj	#
	movq	%rax, -8(%rbp)	# tmp142, mo
# p_mobj.c:626:     mo->spawnpoint = *mthing;	
	.loc 1 626 20
	movq	-8(%rbp), %rax	# mo, tmp143
	movq	-24(%rbp), %rdx	# mthing, tmp144
	movq	(%rdx), %rcx	# *mthing_33, tmp145
	movq	%rcx, 204(%rax)	# tmp145, mo_46->spawnpoint
	movzwl	8(%rdx), %edx	# *mthing_33, tmp146
	movw	%dx, 212(%rax)	# tmp146, mo_46->spawnpoint
# p_mobj.c:627:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 627 32
	movq	-24(%rbp), %rax	# mthing, tmp147
	movzwl	4(%rax), %eax	# mthing_33->angle, _21
# p_mobj.c:627:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 627 39
	movswl	%ax, %edx	# _21, tmp148
	imull	$11651, %edx, %edx	#, tmp148, tmp149
	shrl	$16, %edx	#, tmp150
	sarw	$3, %dx	#, tmp151
	sarw	$15, %ax	#, _21
	movl	%eax, %ecx	# _21, tmp152
	movl	%edx, %eax	# tmp151, tmp151
	subl	%ecx, %eax	# tmp152, tmp151
	cwtl
# p_mobj.c:627:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 627 23
	sall	$29, %eax	#, _24
	movl	%eax, %edx	# _24, _25
# p_mobj.c:627:     mo->angle = ANG45 * (mthing->angle/45);
	.loc 1 627 15
	movq	-8(%rbp), %rax	# mo, tmp153
	movl	%edx, 56(%rax)	# _25, mo_46->angle
# p_mobj.c:630:     iquetail = (iquetail+1)&(ITEMQUESIZE-1);
	.loc 1 630 25
	movl	iquetail(%rip), %eax	# iquetail, iquetail.21_26
	addl	$1, %eax	#, _27
# p_mobj.c:630:     iquetail = (iquetail+1)&(ITEMQUESIZE-1);
	.loc 1 630 28
	andl	$127, %eax	#, _28
# p_mobj.c:630:     iquetail = (iquetail+1)&(ITEMQUESIZE-1);
	.loc 1 630 14
	movl	%eax, iquetail(%rip)	# _28, iquetail
	jmp	.L86	#
.L97:
# p_mobj.c:592: 	return;	// 
	.loc 1 592 2
	nop	
	jmp	.L86	#
.L98:
# p_mobj.c:596: 	return;		
	.loc 1 596 2
	nop	
	jmp	.L86	#
.L99:
# p_mobj.c:600: 	return;			
	.loc 1 600 2
	nop	
.L86:
# p_mobj.c:631: }
	.loc 1 631 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	P_RespawnSpecials, .-P_RespawnSpecials
	.globl	P_SpawnPlayer
	.type	P_SpawnPlayer, @function
P_SpawnPlayer:
.LFB9:
	.loc 1 643 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mthing, mthing
# p_mobj.c:654:     if (!playeringame[mthing->type-1])
	.loc 1 654 29
	movq	-40(%rbp), %rax	# mthing, tmp115
	movzwl	6(%rax), %eax	# mthing_41(D)->type, _1
	cwtl
# p_mobj.c:654:     if (!playeringame[mthing->type-1])
	.loc 1 654 35
	subl	$1, %eax	#, _3
# p_mobj.c:654:     if (!playeringame[mthing->type-1])
	.loc 1 654 22
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp117
	leaq	playeringame(%rip), %rax	#, tmp118
	movl	(%rdx,%rax), %eax	# playeringame[_3], _4
# p_mobj.c:654:     if (!playeringame[mthing->type-1])
	.loc 1 654 8
	testl	%eax, %eax	# _4
	je	.L109	#,
# p_mobj.c:657:     p = &players[mthing->type-1];
	.loc 1 657 24
	movq	-40(%rbp), %rax	# mthing, tmp119
	movzwl	6(%rax), %eax	# mthing_41(D)->type, _5
	cwtl
# p_mobj.c:657:     p = &players[mthing->type-1];
	.loc 1 657 30
	subl	$1, %eax	#, _7
# p_mobj.c:657:     p = &players[mthing->type-1];
	.loc 1 657 7
	movslq	%eax, %rdx	# _7, tmp120
	movq	%rdx, %rax	# tmp120, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# tmp120, tmp121
	salq	$6, %rax	#, tmp122
	leaq	players(%rip), %rdx	#, tmp123
	addq	%rdx, %rax	# tmp123, tmp124
	movq	%rax, -16(%rbp)	# tmp124, p
# p_mobj.c:659:     if (p->playerstate == PST_REBORN)
	.loc 1 659 10
	movq	-16(%rbp), %rax	# p, tmp125
	movl	8(%rax), %eax	# p_42->playerstate, _8
# p_mobj.c:659:     if (p->playerstate == PST_REBORN)
	.loc 1 659 8
	cmpl	$2, %eax	#, _8
	jne	.L104	#,
# p_mobj.c:660: 	G_PlayerReborn (mthing->type-1);
	.loc 1 660 24
	movq	-40(%rbp), %rax	# mthing, tmp126
	movzwl	6(%rax), %eax	# mthing_41(D)->type, _9
	cwtl
# p_mobj.c:660: 	G_PlayerReborn (mthing->type-1);
	.loc 1 660 2
	subl	$1, %eax	#, _11
	movl	%eax, %edi	# _11,
	call	G_PlayerReborn@PLT	#
.L104:
# p_mobj.c:662:     x 		= mthing->x << FRACBITS;
	.loc 1 662 17
	movq	-40(%rbp), %rax	# mthing, tmp127
	movzwl	(%rax), %eax	# mthing_41(D)->x, _12
	cwtl
# p_mobj.c:662:     x 		= mthing->x << FRACBITS;
	.loc 1 662 9
	sall	$16, %eax	#, tmp128
	movl	%eax, -28(%rbp)	# tmp128, x
# p_mobj.c:663:     y 		= mthing->y << FRACBITS;
	.loc 1 663 17
	movq	-40(%rbp), %rax	# mthing, tmp129
	movzwl	2(%rax), %eax	# mthing_41(D)->y, _14
	cwtl
# p_mobj.c:663:     y 		= mthing->y << FRACBITS;
	.loc 1 663 9
	sall	$16, %eax	#, tmp130
	movl	%eax, -24(%rbp)	# tmp130, y
# p_mobj.c:664:     z		= ONFLOORZ;
	.loc 1 664 8
	movl	$-2147483648, -20(%rbp)	#, z
# p_mobj.c:665:     mobj	= P_SpawnMobj (x,y,z, MT_PLAYER);
	.loc 1 665 12
	movl	-20(%rbp), %edx	# z, tmp131
	movl	-24(%rbp), %esi	# y, tmp132
	movl	-28(%rbp), %eax	# x, tmp133
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp133,
	call	P_SpawnMobj	#
	movq	%rax, -8(%rbp)	# tmp134, mobj
# p_mobj.c:668:     if (mthing->type > 1)		
	.loc 1 668 15
	movq	-40(%rbp), %rax	# mthing, tmp135
	movzwl	6(%rax), %eax	# mthing_41(D)->type, _16
# p_mobj.c:668:     if (mthing->type > 1)		
	.loc 1 668 8
	cmpw	$1, %ax	#, _16
	jle	.L105	#,
# p_mobj.c:669: 	mobj->flags |= (mthing->type-1)<<MF_TRANSSHIFT;
	.loc 1 669 6
	movq	-8(%rbp), %rax	# mobj, tmp136
	movl	160(%rax), %edx	# mobj_48->flags, _17
# p_mobj.c:669: 	mobj->flags |= (mthing->type-1)<<MF_TRANSSHIFT;
	.loc 1 669 24
	movq	-40(%rbp), %rax	# mthing, tmp137
	movzwl	6(%rax), %eax	# mthing_41(D)->type, _18
	cwtl
# p_mobj.c:669: 	mobj->flags |= (mthing->type-1)<<MF_TRANSSHIFT;
	.loc 1 669 30
	subl	$1, %eax	#, _20
# p_mobj.c:669: 	mobj->flags |= (mthing->type-1)<<MF_TRANSSHIFT;
	.loc 1 669 33
	sall	$26, %eax	#, _21
# p_mobj.c:669: 	mobj->flags |= (mthing->type-1)<<MF_TRANSSHIFT;
	.loc 1 669 14
	orl	%eax, %edx	# _21, _22
	movq	-8(%rbp), %rax	# mobj, tmp138
	movl	%edx, 160(%rax)	# _22, mobj_48->flags
.L105:
# p_mobj.c:671:     mobj->angle	= ANG45 * (mthing->angle/45);
	.loc 1 671 34
	movq	-40(%rbp), %rax	# mthing, tmp139
	movzwl	4(%rax), %eax	# mthing_41(D)->angle, _23
# p_mobj.c:671:     mobj->angle	= ANG45 * (mthing->angle/45);
	.loc 1 671 41
	movswl	%ax, %edx	# _23, tmp140
	imull	$11651, %edx, %edx	#, tmp140, tmp141
	shrl	$16, %edx	#, tmp142
	sarw	$3, %dx	#, tmp143
	sarw	$15, %ax	#, _23
	movl	%eax, %ecx	# _23, tmp144
	movl	%edx, %eax	# tmp143, tmp143
	subl	%ecx, %eax	# tmp144, tmp143
	cwtl
# p_mobj.c:671:     mobj->angle	= ANG45 * (mthing->angle/45);
	.loc 1 671 25
	sall	$29, %eax	#, _26
	movl	%eax, %edx	# _26, _27
# p_mobj.c:671:     mobj->angle	= ANG45 * (mthing->angle/45);
	.loc 1 671 17
	movq	-8(%rbp), %rax	# mobj, tmp145
	movl	%edx, 56(%rax)	# _27, mobj_48->angle
# p_mobj.c:672:     mobj->player = p;
	.loc 1 672 18
	movq	-8(%rbp), %rax	# mobj, tmp146
	movq	-16(%rbp), %rdx	# p, tmp147
	movq	%rdx, 192(%rax)	# tmp147, mobj_48->player
# p_mobj.c:673:     mobj->health = p->health;
	.loc 1 673 21
	movq	-16(%rbp), %rax	# p, tmp148
	movl	36(%rax), %edx	# p_42->health, _28
# p_mobj.c:673:     mobj->health = p->health;
	.loc 1 673 18
	movq	-8(%rbp), %rax	# mobj, tmp149
	movl	%edx, 164(%rax)	# _28, mobj_48->health
# p_mobj.c:675:     p->mo = mobj;
	.loc 1 675 11
	movq	-16(%rbp), %rax	# p, tmp150
	movq	-8(%rbp), %rdx	# mobj, tmp151
	movq	%rdx, (%rax)	# tmp151, p_42->mo
# p_mobj.c:676:     p->playerstate = PST_LIVE;	
	.loc 1 676 20
	movq	-16(%rbp), %rax	# p, tmp152
	movl	$0, 8(%rax)	#, p_42->playerstate
# p_mobj.c:677:     p->refire = 0;
	.loc 1 677 15
	movq	-16(%rbp), %rax	# p, tmp153
	movl	$0, 204(%rax)	#, p_42->refire
# p_mobj.c:678:     p->message = NULL;
	.loc 1 678 16
	movq	-16(%rbp), %rax	# p, tmp154
	movq	$0, 224(%rax)	#, p_42->message
# p_mobj.c:679:     p->damagecount = 0;
	.loc 1 679 20
	movq	-16(%rbp), %rax	# p, tmp155
	movl	$0, 232(%rax)	#, p_42->damagecount
# p_mobj.c:680:     p->bonuscount = 0;
	.loc 1 680 19
	movq	-16(%rbp), %rax	# p, tmp156
	movl	$0, 236(%rax)	#, p_42->bonuscount
# p_mobj.c:681:     p->extralight = 0;
	.loc 1 681 19
	movq	-16(%rbp), %rax	# p, tmp157
	movl	$0, 248(%rax)	#, p_42->extralight
# p_mobj.c:682:     p->fixedcolormap = 0;
	.loc 1 682 22
	movq	-16(%rbp), %rax	# p, tmp158
	movl	$0, 252(%rax)	#, p_42->fixedcolormap
# p_mobj.c:683:     p->viewheight = VIEWHEIGHT;
	.loc 1 683 19
	movq	-16(%rbp), %rax	# p, tmp159
	movl	$2686976, 24(%rax)	#, p_42->viewheight
# p_mobj.c:686:     P_SetupPsprites (p);
	.loc 1 686 5
	movq	-16(%rbp), %rax	# p, tmp160
	movq	%rax, %rdi	# tmp160,
	call	P_SetupPsprites@PLT	#
# p_mobj.c:689:     if (deathmatch)
	.loc 1 689 9
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.22_29
# p_mobj.c:689:     if (deathmatch)
	.loc 1 689 8
	testl	%eax, %eax	# deathmatch.22_29
	je	.L106	#,
# p_mobj.c:690: 	for (i=0 ; i<NUMCARDS ; i++)
	.loc 1 690 8
	movl	$0, -32(%rbp)	#, i
# p_mobj.c:690: 	for (i=0 ; i<NUMCARDS ; i++)
	.loc 1 690 2
	jmp	.L107	#
.L108:
# p_mobj.c:691: 	    p->cards[i] = true;
	.loc 1 691 18
	movq	-16(%rbp), %rax	# p, tmp161
	movl	-32(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, tmp162
	addq	$16, %rdx	#, tmp164
	movl	$1, 8(%rax,%rdx,4)	#, p_42->cards[i_34]
# p_mobj.c:690: 	for (i=0 ; i<NUMCARDS ; i++)
	.loc 1 690 27 discriminator 3
	addl	$1, -32(%rbp)	#, i
.L107:
# p_mobj.c:690: 	for (i=0 ; i<NUMCARDS ; i++)
	.loc 1 690 14 discriminator 1
	cmpl	$5, -32(%rbp)	#, i
	jle	.L108	#,
.L106:
# p_mobj.c:693:     if (mthing->type-1 == consoleplayer)
	.loc 1 693 15
	movq	-40(%rbp), %rax	# mthing, tmp165
	movzwl	6(%rax), %eax	# mthing_41(D)->type, _30
	cwtl
# p_mobj.c:693:     if (mthing->type-1 == consoleplayer)
	.loc 1 693 21
	leal	-1(%rax), %edx	#, _32
# p_mobj.c:693:     if (mthing->type-1 == consoleplayer)
	.loc 1 693 24
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.23_33
# p_mobj.c:693:     if (mthing->type-1 == consoleplayer)
	.loc 1 693 8
	cmpl	%eax, %edx	# consoleplayer.23_33, _32
	jne	.L101	#,
# p_mobj.c:696: 	ST_Start ();
	.loc 1 696 2
	call	ST_Start@PLT	#
# p_mobj.c:698: 	HU_Start ();		
	.loc 1 698 2
	call	HU_Start@PLT	#
	jmp	.L101	#
.L109:
# p_mobj.c:655: 	return;					
	.loc 1 655 2
	nop	
.L101:
# p_mobj.c:700: }
	.loc 1 700 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	P_SpawnPlayer, .-P_SpawnPlayer
	.section	.rodata
	.align 8
.LC0:
	.string	"P_SpawnMapThing: Unknown type %i at (%i, %i)"
	.text
	.globl	P_SpawnMapThing
	.type	P_SpawnMapThing, @function
P_SpawnMapThing:
.LFB10:
	.loc 1 709 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# mthing, mthing
# p_mobj.c:718:     if (mthing->type == 11)
	.loc 1 718 15
	movq	-40(%rbp), %rax	# mthing, tmp148
	movzwl	6(%rax), %eax	# mthing_78(D)->type, _1
# p_mobj.c:718:     if (mthing->type == 11)
	.loc 1 718 8
	cmpw	$11, %ax	#, _1
	jne	.L111	#,
# p_mobj.c:720: 	if (deathmatch_p < &deathmatchstarts[10])
	.loc 1 720 19
	movq	deathmatch_p(%rip), %rdx	# deathmatch_p, deathmatch_p.24_2
# p_mobj.c:720: 	if (deathmatch_p < &deathmatchstarts[10])
	.loc 1 720 5
	leaq	100+deathmatchstarts(%rip), %rax	#, tmp149
	cmpq	%rax, %rdx	# tmp149, deathmatch_p.24_2
	jnb	.L134	#,
# p_mobj.c:722: 	    memcpy (deathmatch_p, mthing, sizeof(*mthing));
	.loc 1 722 6
	movq	deathmatch_p(%rip), %rax	# deathmatch_p, deathmatch_p.25_3
	movq	-40(%rbp), %rcx	# mthing, tmp150
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# deathmatch_p.25_3,
	call	memcpy@PLT	#
# p_mobj.c:723: 	    deathmatch_p++;
	.loc 1 723 18
	movq	deathmatch_p(%rip), %rax	# deathmatch_p, deathmatch_p.26_4
	addq	$10, %rax	#, _5
	movq	%rax, deathmatch_p(%rip)	# _5, deathmatch_p
# p_mobj.c:725: 	return;
	.loc 1 725 2
	jmp	.L134	#
.L111:
# p_mobj.c:729:     if (mthing->type <= 4)
	.loc 1 729 15
	movq	-40(%rbp), %rax	# mthing, tmp151
	movzwl	6(%rax), %eax	# mthing_78(D)->type, _6
# p_mobj.c:729:     if (mthing->type <= 4)
	.loc 1 729 8
	cmpw	$4, %ax	#, _6
	jg	.L114	#,
# p_mobj.c:732: 	playerstarts[mthing->type-1] = *mthing;
	.loc 1 732 21
	movq	-40(%rbp), %rax	# mthing, tmp152
	movzwl	6(%rax), %eax	# mthing_78(D)->type, _7
	cwtl
# p_mobj.c:732: 	playerstarts[mthing->type-1] = *mthing;
	.loc 1 732 27
	subl	$1, %eax	#, _9
# p_mobj.c:732: 	playerstarts[mthing->type-1] = *mthing;
	.loc 1 732 31
	movslq	%eax, %rdx	# _9, tmp153
	movq	%rdx, %rax	# tmp153, tmp155
	salq	$2, %rax	#, tmp155
	addq	%rdx, %rax	# tmp153, tmp155
	addq	%rax, %rax	# tmp156
	movq	%rax, %rcx	# tmp155, tmp154
	leaq	playerstarts(%rip), %rdx	#, tmp157
	movq	-40(%rbp), %rax	# mthing, tmp158
	movq	(%rax), %rsi	# *mthing_78(D), tmp159
	movq	%rsi, (%rcx,%rdx)	# tmp159, playerstarts[_9]
	movzwl	8(%rax), %eax	# *mthing_78(D), tmp160
	movw	%ax, 8(%rcx,%rdx)	# tmp160, playerstarts[_9]
# p_mobj.c:733: 	if (!deathmatch)
	.loc 1 733 6
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.27_10
# p_mobj.c:733: 	if (!deathmatch)
	.loc 1 733 5
	testl	%eax, %eax	# deathmatch.27_10
	jne	.L135	#,
# p_mobj.c:734: 	    P_SpawnPlayer (mthing);
	.loc 1 734 6
	movq	-40(%rbp), %rax	# mthing, tmp161
	movq	%rax, %rdi	# tmp161,
	call	P_SpawnPlayer	#
# p_mobj.c:736: 	return;
	.loc 1 736 2
	jmp	.L135	#
.L114:
# p_mobj.c:740:     if (!netgame && (mthing->options & 16) )
	.loc 1 740 9
	movl	netgame(%rip), %eax	# netgame, netgame.28_11
# p_mobj.c:740:     if (!netgame && (mthing->options & 16) )
	.loc 1 740 8
	testl	%eax, %eax	# netgame.28_11
	jne	.L116	#,
# p_mobj.c:740:     if (!netgame && (mthing->options & 16) )
	.loc 1 740 28 discriminator 1
	movq	-40(%rbp), %rax	# mthing, tmp162
	movzwl	8(%rax), %eax	# mthing_78(D)->options, _12
# p_mobj.c:740:     if (!netgame && (mthing->options & 16) )
	.loc 1 740 38 discriminator 1
	cwtl
	andl	$16, %eax	#, _14
# p_mobj.c:740:     if (!netgame && (mthing->options & 16) )
	.loc 1 740 18 discriminator 1
	testl	%eax, %eax	# _14
	jne	.L136	#,
.L116:
# p_mobj.c:743:     if (gameskill == sk_baby)
	.loc 1 743 19
	movl	gameskill(%rip), %eax	# gameskill, gameskill.29_15
# p_mobj.c:743:     if (gameskill == sk_baby)
	.loc 1 743 8
	testl	%eax, %eax	# gameskill.29_15
	jne	.L117	#,
# p_mobj.c:744: 	bit = 1;
	.loc 1 744 6
	movl	$1, -24(%rbp)	#, bit
	jmp	.L118	#
.L117:
# p_mobj.c:745:     else if (gameskill == sk_nightmare)
	.loc 1 745 24
	movl	gameskill(%rip), %eax	# gameskill, gameskill.30_16
# p_mobj.c:745:     else if (gameskill == sk_nightmare)
	.loc 1 745 13
	cmpl	$4, %eax	#, gameskill.30_16
	jne	.L119	#,
# p_mobj.c:746: 	bit = 4;
	.loc 1 746 6
	movl	$4, -24(%rbp)	#, bit
	jmp	.L118	#
.L119:
# p_mobj.c:748: 	bit = 1<<(gameskill-1);
	.loc 1 748 21
	movl	gameskill(%rip), %eax	# gameskill, gameskill.31_17
	subl	$1, %eax	#, _18
# p_mobj.c:748: 	bit = 1<<(gameskill-1);
	.loc 1 748 6
	movl	$1, %edx	#, tmp163
	movl	%eax, %ecx	# _18, tmp218
	sall	%cl, %edx	# tmp218, tmp163
	movl	%edx, %eax	# tmp163, tmp164
	movl	%eax, -24(%rbp)	# tmp164, bit
.L118:
# p_mobj.c:750:     if (!(mthing->options & bit) )
	.loc 1 750 17
	movq	-40(%rbp), %rax	# mthing, tmp165
	movzwl	8(%rax), %eax	# mthing_78(D)->options, _19
	cwtl
# p_mobj.c:750:     if (!(mthing->options & bit) )
	.loc 1 750 27
	andl	-24(%rbp), %eax	# bit, _21
# p_mobj.c:750:     if (!(mthing->options & bit) )
	.loc 1 750 8
	testl	%eax, %eax	# _21
	je	.L137	#,
# p_mobj.c:754:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 754 11
	movl	$0, -28(%rbp)	#, i
# p_mobj.c:754:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 754 5
	jmp	.L121	#
.L124:
# p_mobj.c:755: 	if (mthing->type == mobjinfo[i].doomednum)
	.loc 1 755 12
	movq	-40(%rbp), %rax	# mthing, tmp166
	movzwl	6(%rax), %eax	# mthing_78(D)->type, _22
	movswl	%ax, %edx	# _22, _23
# p_mobj.c:755: 	if (mthing->type == mobjinfo[i].doomednum)
	.loc 1 755 33
	movl	-28(%rbp), %eax	# i, tmp168
	cltq
	imulq	$92, %rax, %rax	#, tmp167, tmp169
	leaq	mobjinfo(%rip), %rcx	#, tmp170
	movl	(%rax,%rcx), %eax	# mobjinfo[i_67].doomednum, _24
# p_mobj.c:755: 	if (mthing->type == mobjinfo[i].doomednum)
	.loc 1 755 5
	cmpl	%eax, %edx	# _24, _23
	je	.L138	#,
# p_mobj.c:754:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 754 35 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L121:
# p_mobj.c:754:     for (i=0 ; i< NUMMOBJTYPES ; i++)
	.loc 1 754 17 discriminator 1
	cmpl	$136, -28(%rbp)	#, i
	jle	.L124	#,
	jmp	.L123	#
.L138:
# p_mobj.c:756: 	    break;
	.loc 1 756 6
	nop	
.L123:
# p_mobj.c:758:     if (i==NUMMOBJTYPES)
	.loc 1 758 8
	cmpl	$137, -28(%rbp)	#, i
	jne	.L125	#,
# p_mobj.c:761: 		 mthing->x, mthing->y);
	.loc 1 761 21
	movq	-40(%rbp), %rax	# mthing, tmp171
	movzwl	2(%rax), %eax	# mthing_78(D)->y, _25
# p_mobj.c:759: 	I_Error ("P_SpawnMapThing: Unknown type %i at (%i, %i)",
	.loc 1 759 2
	movswl	%ax, %ecx	# _25, _26
# p_mobj.c:761: 		 mthing->x, mthing->y);
	.loc 1 761 10
	movq	-40(%rbp), %rax	# mthing, tmp172
	movzwl	(%rax), %eax	# mthing_78(D)->x, _27
# p_mobj.c:759: 	I_Error ("P_SpawnMapThing: Unknown type %i at (%i, %i)",
	.loc 1 759 2
	movswl	%ax, %edx	# _27, _28
# p_mobj.c:760: 		 mthing->type,
	.loc 1 760 10
	movq	-40(%rbp), %rax	# mthing, tmp173
	movzwl	6(%rax), %eax	# mthing_78(D)->type, _29
# p_mobj.c:759: 	I_Error ("P_SpawnMapThing: Unknown type %i at (%i, %i)",
	.loc 1 759 2
	cwtl
	movl	%eax, %esi	# _30,
	leaq	.LC0(%rip), %rax	#, tmp174
	movq	%rax, %rdi	# tmp174,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L125:
# p_mobj.c:764:     if (deathmatch && mobjinfo[i].flags & MF_NOTDMATCH)
	.loc 1 764 9
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.32_31
# p_mobj.c:764:     if (deathmatch && mobjinfo[i].flags & MF_NOTDMATCH)
	.loc 1 764 8
	testl	%eax, %eax	# deathmatch.32_31
	je	.L126	#,
# p_mobj.c:764:     if (deathmatch && mobjinfo[i].flags & MF_NOTDMATCH)
	.loc 1 764 34 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp176
	cltq
	imulq	$92, %rax, %rax	#, tmp175, tmp177
	leaq	84+mobjinfo(%rip), %rdx	#, tmp178
	movl	(%rax,%rdx), %eax	# mobjinfo[i_67].flags, _32
# p_mobj.c:764:     if (deathmatch && mobjinfo[i].flags & MF_NOTDMATCH)
	.loc 1 764 41 discriminator 1
	andl	$33554432, %eax	#, _33
# p_mobj.c:764:     if (deathmatch && mobjinfo[i].flags & MF_NOTDMATCH)
	.loc 1 764 20 discriminator 1
	testl	%eax, %eax	# _33
	jne	.L139	#,
.L126:
# p_mobj.c:768:     if (nomonsters
	.loc 1 768 9
	movl	nomonsters(%rip), %eax	# nomonsters, nomonsters.33_34
# p_mobj.c:768:     if (nomonsters
	.loc 1 768 8
	testl	%eax, %eax	# nomonsters.33_34
	je	.L127	#,
# p_mobj.c:769: 	&& ( i == MT_SKULL
	.loc 1 769 2
	cmpl	$18, -28(%rbp)	#, i
	je	.L140	#,
# p_mobj.c:770: 	     || (mobjinfo[i].flags & MF_COUNTKILL)) )
	.loc 1 770 22
	movl	-28(%rbp), %eax	# i, tmp180
	cltq
	imulq	$92, %rax, %rax	#, tmp179, tmp181
	leaq	84+mobjinfo(%rip), %rdx	#, tmp182
	movl	(%rax,%rdx), %eax	# mobjinfo[i_67].flags, _35
# p_mobj.c:770: 	     || (mobjinfo[i].flags & MF_COUNTKILL)) )
	.loc 1 770 29
	andl	$4194304, %eax	#, _36
# p_mobj.c:770: 	     || (mobjinfo[i].flags & MF_COUNTKILL)) )
	.loc 1 770 7
	testl	%eax, %eax	# _36
	jne	.L140	#,
.L127:
# p_mobj.c:776:     x = mthing->x << FRACBITS;
	.loc 1 776 15
	movq	-40(%rbp), %rax	# mthing, tmp183
	movzwl	(%rax), %eax	# mthing_78(D)->x, _37
	cwtl
# p_mobj.c:776:     x = mthing->x << FRACBITS;
	.loc 1 776 7
	sall	$16, %eax	#, tmp184
	movl	%eax, -16(%rbp)	# tmp184, x
# p_mobj.c:777:     y = mthing->y << FRACBITS;
	.loc 1 777 15
	movq	-40(%rbp), %rax	# mthing, tmp185
	movzwl	2(%rax), %eax	# mthing_78(D)->y, _39
	cwtl
# p_mobj.c:777:     y = mthing->y << FRACBITS;
	.loc 1 777 7
	sall	$16, %eax	#, tmp186
	movl	%eax, -12(%rbp)	# tmp186, y
# p_mobj.c:779:     if (mobjinfo[i].flags & MF_SPAWNCEILING)
	.loc 1 779 20
	movl	-28(%rbp), %eax	# i, tmp188
	cltq
	imulq	$92, %rax, %rax	#, tmp187, tmp189
	leaq	84+mobjinfo(%rip), %rdx	#, tmp190
	movl	(%rax,%rdx), %eax	# mobjinfo[i_67].flags, _41
# p_mobj.c:779:     if (mobjinfo[i].flags & MF_SPAWNCEILING)
	.loc 1 779 27
	andl	$256, %eax	#, _42
# p_mobj.c:779:     if (mobjinfo[i].flags & MF_SPAWNCEILING)
	.loc 1 779 8
	testl	%eax, %eax	# _42
	je	.L129	#,
# p_mobj.c:780: 	z = ONCEILINGZ;
	.loc 1 780 4
	movl	$2147483647, -20(%rbp)	#, z
	jmp	.L130	#
.L129:
# p_mobj.c:782: 	z = ONFLOORZ;
	.loc 1 782 4
	movl	$-2147483648, -20(%rbp)	#, z
.L130:
# p_mobj.c:784:     mobj = P_SpawnMobj (x,y,z, i);
	.loc 1 784 12
	movl	-28(%rbp), %ecx	# i, i.34_43
	movl	-20(%rbp), %edx	# z, tmp191
	movl	-12(%rbp), %esi	# y, tmp192
	movl	-16(%rbp), %eax	# x, tmp193
	movl	%eax, %edi	# tmp193,
	call	P_SpawnMobj	#
	movq	%rax, -8(%rbp)	# tmp194, mobj
# p_mobj.c:785:     mobj->spawnpoint = *mthing;
	.loc 1 785 22
	movq	-8(%rbp), %rax	# mobj, tmp195
	movq	-40(%rbp), %rdx	# mthing, tmp196
	movq	(%rdx), %rcx	# *mthing_78(D), tmp197
	movq	%rcx, 204(%rax)	# tmp197, mobj_90->spawnpoint
	movzwl	8(%rdx), %edx	# *mthing_78(D), tmp198
	movw	%dx, 212(%rax)	# tmp198, mobj_90->spawnpoint
# p_mobj.c:787:     if (mobj->tics > 0)
	.loc 1 787 13
	movq	-8(%rbp), %rax	# mobj, tmp199
	movl	144(%rax), %eax	# mobj_90->tics, _44
# p_mobj.c:787:     if (mobj->tics > 0)
	.loc 1 787 8
	testl	%eax, %eax	# _44
	jle	.L131	#,
# p_mobj.c:788: 	mobj->tics = 1 + (P_Random () % mobj->tics);
	.loc 1 788 20
	call	P_Random@PLT	#
# p_mobj.c:788: 	mobj->tics = 1 + (P_Random () % mobj->tics);
	.loc 1 788 38 discriminator 1
	movq	-8(%rbp), %rdx	# mobj, tmp200
	movl	144(%rdx), %edi	# mobj_90->tics, _46
# p_mobj.c:788: 	mobj->tics = 1 + (P_Random () % mobj->tics);
	.loc 1 788 32 discriminator 1
	cltd
	idivl	%edi	# _46
	movl	%edx, %ecx	# tmp201, tmp201
	movl	%ecx, %eax	# tmp201, _47
# p_mobj.c:788: 	mobj->tics = 1 + (P_Random () % mobj->tics);
	.loc 1 788 17 discriminator 1
	leal	1(%rax), %edx	#, _48
# p_mobj.c:788: 	mobj->tics = 1 + (P_Random () % mobj->tics);
	.loc 1 788 13 discriminator 1
	movq	-8(%rbp), %rax	# mobj, tmp203
	movl	%edx, 144(%rax)	# _48, mobj_90->tics
.L131:
# p_mobj.c:789:     if (mobj->flags & MF_COUNTKILL)
	.loc 1 789 13
	movq	-8(%rbp), %rax	# mobj, tmp204
	movl	160(%rax), %eax	# mobj_90->flags, _49
# p_mobj.c:789:     if (mobj->flags & MF_COUNTKILL)
	.loc 1 789 21
	andl	$4194304, %eax	#, _50
# p_mobj.c:789:     if (mobj->flags & MF_COUNTKILL)
	.loc 1 789 8
	testl	%eax, %eax	# _50
	je	.L132	#,
# p_mobj.c:790: 	totalkills++;
	.loc 1 790 12
	movl	totalkills(%rip), %eax	# totalkills, totalkills.35_51
	addl	$1, %eax	#, _52
	movl	%eax, totalkills(%rip)	# _52, totalkills
.L132:
# p_mobj.c:791:     if (mobj->flags & MF_COUNTITEM)
	.loc 1 791 13
	movq	-8(%rbp), %rax	# mobj, tmp205
	movl	160(%rax), %eax	# mobj_90->flags, _53
# p_mobj.c:791:     if (mobj->flags & MF_COUNTITEM)
	.loc 1 791 21
	andl	$8388608, %eax	#, _54
# p_mobj.c:791:     if (mobj->flags & MF_COUNTITEM)
	.loc 1 791 8
	testl	%eax, %eax	# _54
	je	.L133	#,
# p_mobj.c:792: 	totalitems++;
	.loc 1 792 12
	movl	totalitems(%rip), %eax	# totalitems, totalitems.36_55
	addl	$1, %eax	#, _56
	movl	%eax, totalitems(%rip)	# _56, totalitems
.L133:
# p_mobj.c:794:     mobj->angle = ANG45 * (mthing->angle/45);
	.loc 1 794 34
	movq	-40(%rbp), %rax	# mthing, tmp206
	movzwl	4(%rax), %eax	# mthing_78(D)->angle, _57
# p_mobj.c:794:     mobj->angle = ANG45 * (mthing->angle/45);
	.loc 1 794 41
	movswl	%ax, %edx	# _57, tmp207
	imull	$11651, %edx, %edx	#, tmp207, tmp208
	shrl	$16, %edx	#, tmp209
	sarw	$3, %dx	#, tmp210
	sarw	$15, %ax	#, _57
	movl	%eax, %ecx	# _57, tmp211
	movl	%edx, %eax	# tmp210, tmp210
	subl	%ecx, %eax	# tmp211, tmp210
	cwtl
# p_mobj.c:794:     mobj->angle = ANG45 * (mthing->angle/45);
	.loc 1 794 25
	sall	$29, %eax	#, _60
	movl	%eax, %edx	# _60, _61
# p_mobj.c:794:     mobj->angle = ANG45 * (mthing->angle/45);
	.loc 1 794 17
	movq	-8(%rbp), %rax	# mobj, tmp212
	movl	%edx, 56(%rax)	# _61, mobj_90->angle
# p_mobj.c:795:     if (mthing->options & MTF_AMBUSH)
	.loc 1 795 15
	movq	-40(%rbp), %rax	# mthing, tmp213
	movzwl	8(%rax), %eax	# mthing_78(D)->options, _62
# p_mobj.c:795:     if (mthing->options & MTF_AMBUSH)
	.loc 1 795 25
	cwtl
	andl	$8, %eax	#, _64
# p_mobj.c:795:     if (mthing->options & MTF_AMBUSH)
	.loc 1 795 8
	testl	%eax, %eax	# _64
	je	.L110	#,
# p_mobj.c:796: 	mobj->flags |= MF_AMBUSH;
	.loc 1 796 6
	movq	-8(%rbp), %rax	# mobj, tmp214
	movl	160(%rax), %eax	# mobj_90->flags, _65
# p_mobj.c:796: 	mobj->flags |= MF_AMBUSH;
	.loc 1 796 14
	orl	$32, %eax	#, _65
	movl	%eax, %edx	# _65, _66
	movq	-8(%rbp), %rax	# mobj, tmp215
	movl	%edx, 160(%rax)	# _66, mobj_90->flags
	jmp	.L110	#
.L134:
# p_mobj.c:725: 	return;
	.loc 1 725 2
	nop	
	jmp	.L110	#
.L135:
# p_mobj.c:736: 	return;
	.loc 1 736 2
	nop	
	jmp	.L110	#
.L136:
# p_mobj.c:741: 	return;
	.loc 1 741 2
	nop	
	jmp	.L110	#
.L137:
# p_mobj.c:751: 	return;
	.loc 1 751 2
	nop	
	jmp	.L110	#
.L139:
# p_mobj.c:765: 	return;
	.loc 1 765 2
	nop	
	jmp	.L110	#
.L140:
# p_mobj.c:772: 	return;
	.loc 1 772 2
	nop	
.L110:
# p_mobj.c:797: }
	.loc 1 797 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	P_SpawnMapThing, .-P_SpawnMapThing
	.globl	P_SpawnPuff
	.type	P_SpawnPuff, @function
P_SpawnPuff:
.LFB11:
	.loc 1 816 1
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
	movl	%edi, -36(%rbp)	# x, x
	movl	%esi, -40(%rbp)	# y, y
	movl	%edx, -44(%rbp)	# z, z
# p_mobj.c:819:     z += ((P_Random()-P_Random())<<10);
	.loc 1 819 12
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _1
# p_mobj.c:819:     z += ((P_Random()-P_Random())<<10);
	.loc 1 819 23 discriminator 1
	call	P_Random@PLT	#
# p_mobj.c:819:     z += ((P_Random()-P_Random())<<10);
	.loc 1 819 22 discriminator 2
	subl	%eax, %ebx	# _2, _1
	movl	%ebx, %edx	# _1, _3
# p_mobj.c:819:     z += ((P_Random()-P_Random())<<10);
	.loc 1 819 34 discriminator 2
	movl	%edx, %eax	# _3, _3
	sall	$10, %eax	#, _3
# p_mobj.c:819:     z += ((P_Random()-P_Random())<<10);
	.loc 1 819 7 discriminator 2
	addl	%eax, -44(%rbp)	# _14, z
# p_mobj.c:821:     th = P_SpawnMobj (x,y,z, MT_PUFF);
	.loc 1 821 10
	movl	-44(%rbp), %edx	# z, tmp92
	movl	-40(%rbp), %esi	# y, tmp93
	movl	-36(%rbp), %eax	# x, tmp94
	movl	$37, %ecx	#,
	movl	%eax, %edi	# tmp94,
	call	P_SpawnMobj	#
	movq	%rax, -24(%rbp)	# tmp95, th
# p_mobj.c:822:     th->momz = FRACUNIT;
	.loc 1 822 14
	movq	-24(%rbp), %rax	# th, tmp96
	movl	$65536, 120(%rax)	#, th_20->momz
# p_mobj.c:823:     th->tics -= P_Random()&3;
	.loc 1 823 17
	call	P_Random@PLT	#
# p_mobj.c:823:     th->tics -= P_Random()&3;
	.loc 1 823 27 discriminator 1
	andl	$3, %eax	#, _4
	movl	%eax, %ecx	# _4, _23
# p_mobj.c:823:     th->tics -= P_Random()&3;
	.loc 1 823 7 discriminator 1
	movq	-24(%rbp), %rax	# th, tmp97
	movl	144(%rax), %eax	# th_20->tics, _5
# p_mobj.c:823:     th->tics -= P_Random()&3;
	.loc 1 823 14 discriminator 1
	subl	%ecx, %eax	# _23, _5
	movl	%eax, %edx	# _5, _6
	movq	-24(%rbp), %rax	# th, tmp98
	movl	%edx, 144(%rax)	# _6, th_20->tics
# p_mobj.c:825:     if (th->tics < 1)
	.loc 1 825 11
	movq	-24(%rbp), %rax	# th, tmp99
	movl	144(%rax), %eax	# th_20->tics, _7
# p_mobj.c:825:     if (th->tics < 1)
	.loc 1 825 8
	testl	%eax, %eax	# _7
	jg	.L142	#,
# p_mobj.c:826: 	th->tics = 1;
	.loc 1 826 11
	movq	-24(%rbp), %rax	# th, tmp100
	movl	$1, 144(%rax)	#, th_20->tics
.L142:
# p_mobj.c:829:     if (attackrange == MELEERANGE)
	.loc 1 829 21
	movl	attackrange(%rip), %eax	# attackrange, attackrange.37_8
# p_mobj.c:829:     if (attackrange == MELEERANGE)
	.loc 1 829 8
	cmpl	$4194304, %eax	#, attackrange.37_8
	jne	.L144	#,
# p_mobj.c:830: 	P_SetMobjState (th, S_PUFF3);
	.loc 1 830 2
	movq	-24(%rbp), %rax	# th, tmp101
	movl	$95, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	P_SetMobjState	#
.L144:
# p_mobj.c:831: }
	.loc 1 831 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	P_SpawnPuff, .-P_SpawnPuff
	.globl	P_SpawnBlood
	.type	P_SpawnBlood, @function
P_SpawnBlood:
.LFB12:
	.loc 1 844 1
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
	movl	%edi, -36(%rbp)	# x, x
	movl	%esi, -40(%rbp)	# y, y
	movl	%edx, -44(%rbp)	# z, z
	movl	%ecx, -48(%rbp)	# damage, damage
# p_mobj.c:847:     z += ((P_Random()-P_Random())<<10);
	.loc 1 847 12
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _1
# p_mobj.c:847:     z += ((P_Random()-P_Random())<<10);
	.loc 1 847 23 discriminator 1
	call	P_Random@PLT	#
# p_mobj.c:847:     z += ((P_Random()-P_Random())<<10);
	.loc 1 847 22 discriminator 2
	subl	%eax, %ebx	# _2, _1
	movl	%ebx, %edx	# _1, _3
# p_mobj.c:847:     z += ((P_Random()-P_Random())<<10);
	.loc 1 847 34 discriminator 2
	movl	%edx, %eax	# _3, _3
	sall	$10, %eax	#, _3
# p_mobj.c:847:     z += ((P_Random()-P_Random())<<10);
	.loc 1 847 7 discriminator 2
	addl	%eax, -44(%rbp)	# _13, z
# p_mobj.c:848:     th = P_SpawnMobj (x,y,z, MT_BLOOD);
	.loc 1 848 10
	movl	-44(%rbp), %edx	# z, tmp91
	movl	-40(%rbp), %esi	# y, tmp92
	movl	-36(%rbp), %eax	# x, tmp93
	movl	$38, %ecx	#,
	movl	%eax, %edi	# tmp93,
	call	P_SpawnMobj	#
	movq	%rax, -24(%rbp)	# tmp94, th
# p_mobj.c:849:     th->momz = FRACUNIT*2;
	.loc 1 849 14
	movq	-24(%rbp), %rax	# th, tmp95
	movl	$131072, 120(%rax)	#, th_19->momz
# p_mobj.c:850:     th->tics -= P_Random()&3;
	.loc 1 850 17
	call	P_Random@PLT	#
# p_mobj.c:850:     th->tics -= P_Random()&3;
	.loc 1 850 27 discriminator 1
	andl	$3, %eax	#, _4
	movl	%eax, %ecx	# _4, _22
# p_mobj.c:850:     th->tics -= P_Random()&3;
	.loc 1 850 7 discriminator 1
	movq	-24(%rbp), %rax	# th, tmp96
	movl	144(%rax), %eax	# th_19->tics, _5
# p_mobj.c:850:     th->tics -= P_Random()&3;
	.loc 1 850 14 discriminator 1
	subl	%ecx, %eax	# _22, _5
	movl	%eax, %edx	# _5, _6
	movq	-24(%rbp), %rax	# th, tmp97
	movl	%edx, 144(%rax)	# _6, th_19->tics
# p_mobj.c:852:     if (th->tics < 1)
	.loc 1 852 11
	movq	-24(%rbp), %rax	# th, tmp98
	movl	144(%rax), %eax	# th_19->tics, _7
# p_mobj.c:852:     if (th->tics < 1)
	.loc 1 852 8
	testl	%eax, %eax	# _7
	jg	.L146	#,
# p_mobj.c:853: 	th->tics = 1;
	.loc 1 853 11
	movq	-24(%rbp), %rax	# th, tmp99
	movl	$1, 144(%rax)	#, th_19->tics
.L146:
# p_mobj.c:855:     if (damage <= 12 && damage >= 9)
	.loc 1 855 8
	cmpl	$12, -48(%rbp)	#, damage
	jg	.L147	#,
# p_mobj.c:855:     if (damage <= 12 && damage >= 9)
	.loc 1 855 22 discriminator 1
	cmpl	$8, -48(%rbp)	#, damage
	jle	.L147	#,
# p_mobj.c:856: 	P_SetMobjState (th,S_BLOOD2);
	.loc 1 856 2
	movq	-24(%rbp), %rax	# th, tmp100
	movl	$91, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	P_SetMobjState	#
# p_mobj.c:859: }
	.loc 1 859 1
	jmp	.L149	#
.L147:
# p_mobj.c:857:     else if (damage < 9)
	.loc 1 857 13
	cmpl	$8, -48(%rbp)	#, damage
	jg	.L149	#,
# p_mobj.c:858: 	P_SetMobjState (th,S_BLOOD3);
	.loc 1 858 2
	movq	-24(%rbp), %rax	# th, tmp101
	movl	$92, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	P_SetMobjState	#
.L149:
# p_mobj.c:859: }
	.loc 1 859 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	P_SpawnBlood, .-P_SpawnBlood
	.globl	P_CheckMissileSpawn
	.type	P_CheckMissileSpawn, @function
P_CheckMissileSpawn:
.LFB13:
	.loc 1 869 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# th, th
# p_mobj.c:870:     th->tics -= P_Random()&3;
	.loc 1 870 17
	call	P_Random@PLT	#
# p_mobj.c:870:     th->tics -= P_Random()&3;
	.loc 1 870 27 discriminator 1
	andl	$3, %eax	#, _1
	movl	%eax, %ecx	# _1, _24
# p_mobj.c:870:     th->tics -= P_Random()&3;
	.loc 1 870 7 discriminator 1
	movq	-8(%rbp), %rax	# th, tmp102
	movl	144(%rax), %eax	# th_25(D)->tics, _2
# p_mobj.c:870:     th->tics -= P_Random()&3;
	.loc 1 870 14 discriminator 1
	subl	%ecx, %eax	# _24, _2
	movl	%eax, %edx	# _2, _3
	movq	-8(%rbp), %rax	# th, tmp103
	movl	%edx, 144(%rax)	# _3, th_25(D)->tics
# p_mobj.c:871:     if (th->tics < 1)
	.loc 1 871 11
	movq	-8(%rbp), %rax	# th, tmp104
	movl	144(%rax), %eax	# th_25(D)->tics, _4
# p_mobj.c:871:     if (th->tics < 1)
	.loc 1 871 8
	testl	%eax, %eax	# _4
	jg	.L151	#,
# p_mobj.c:872: 	th->tics = 1;
	.loc 1 872 11
	movq	-8(%rbp), %rax	# th, tmp105
	movl	$1, 144(%rax)	#, th_25(D)->tics
.L151:
# p_mobj.c:876:     th->x += (th->momx>>1);
	.loc 1 876 7
	movq	-8(%rbp), %rax	# th, tmp106
	movl	24(%rax), %edx	# th_25(D)->x, _5
# p_mobj.c:876:     th->x += (th->momx>>1);
	.loc 1 876 17
	movq	-8(%rbp), %rax	# th, tmp107
	movl	112(%rax), %eax	# th_25(D)->momx, _6
# p_mobj.c:876:     th->x += (th->momx>>1);
	.loc 1 876 23
	sarl	%eax	# _7
# p_mobj.c:876:     th->x += (th->momx>>1);
	.loc 1 876 11
	addl	%eax, %edx	# _7, _8
	movq	-8(%rbp), %rax	# th, tmp108
	movl	%edx, 24(%rax)	# _8, th_25(D)->x
# p_mobj.c:877:     th->y += (th->momy>>1);
	.loc 1 877 7
	movq	-8(%rbp), %rax	# th, tmp109
	movl	28(%rax), %edx	# th_25(D)->y, _9
# p_mobj.c:877:     th->y += (th->momy>>1);
	.loc 1 877 17
	movq	-8(%rbp), %rax	# th, tmp110
	movl	116(%rax), %eax	# th_25(D)->momy, _10
# p_mobj.c:877:     th->y += (th->momy>>1);
	.loc 1 877 23
	sarl	%eax	# _11
# p_mobj.c:877:     th->y += (th->momy>>1);
	.loc 1 877 11
	addl	%eax, %edx	# _11, _12
	movq	-8(%rbp), %rax	# th, tmp111
	movl	%edx, 28(%rax)	# _12, th_25(D)->y
# p_mobj.c:878:     th->z += (th->momz>>1);
	.loc 1 878 7
	movq	-8(%rbp), %rax	# th, tmp112
	movl	32(%rax), %edx	# th_25(D)->z, _13
# p_mobj.c:878:     th->z += (th->momz>>1);
	.loc 1 878 17
	movq	-8(%rbp), %rax	# th, tmp113
	movl	120(%rax), %eax	# th_25(D)->momz, _14
# p_mobj.c:878:     th->z += (th->momz>>1);
	.loc 1 878 23
	sarl	%eax	# _15
# p_mobj.c:878:     th->z += (th->momz>>1);
	.loc 1 878 11
	addl	%eax, %edx	# _15, _16
	movq	-8(%rbp), %rax	# th, tmp114
	movl	%edx, 32(%rax)	# _16, th_25(D)->z
# p_mobj.c:880:     if (!P_TryMove (th, th->x, th->y))
	.loc 1 880 10
	movq	-8(%rbp), %rax	# th, tmp115
	movl	28(%rax), %edx	# th_25(D)->y, _17
	movq	-8(%rbp), %rax	# th, tmp116
	movl	24(%rax), %ecx	# th_25(D)->x, _18
	movq	-8(%rbp), %rax	# th, tmp117
	movl	%ecx, %esi	# _18,
	movq	%rax, %rdi	# tmp117,
	call	P_TryMove@PLT	#
# p_mobj.c:880:     if (!P_TryMove (th, th->x, th->y))
	.loc 1 880 8 discriminator 1
	testl	%eax, %eax	# _19
	jne	.L153	#,
# p_mobj.c:881: 	P_ExplodeMissile (th);
	.loc 1 881 2
	movq	-8(%rbp), %rax	# th, tmp118
	movq	%rax, %rdi	# tmp118,
	call	P_ExplodeMissile	#
.L153:
# p_mobj.c:882: }
	.loc 1 882 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	P_CheckMissileSpawn, .-P_CheckMissileSpawn
	.globl	P_SpawnMissile
	.type	P_SpawnMissile, @function
P_SpawnMissile:
.LFB14:
	.loc 1 893 1
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
	movq	%rdi, -40(%rbp)	# source, source
	movq	%rsi, -48(%rbp)	# dest, dest
	movl	%edx, -52(%rbp)	# type, type
# p_mobj.c:900: 		      source->z + 4*8*FRACUNIT, type);
	.loc 1 900 15
	movq	-40(%rbp), %rax	# source, tmp127
	movl	32(%rax), %eax	# source_48(D)->z, _1
# p_mobj.c:898:     th = P_SpawnMobj (source->x,
	.loc 1 898 10
	leal	2097152(%rax), %edi	#, _2
	movq	-40(%rbp), %rax	# source, tmp128
	movl	28(%rax), %esi	# source_48(D)->y, _3
	movq	-40(%rbp), %rax	# source, tmp129
	movl	24(%rax), %eax	# source_48(D)->x, _4
	movl	-52(%rbp), %edx	# type, tmp130
	movl	%edx, %ecx	# tmp130,
	movl	%edi, %edx	# _2,
	movl	%eax, %edi	# _4,
	call	P_SpawnMobj	#
	movq	%rax, -24(%rbp)	# tmp131, th
# p_mobj.c:902:     if (th->info->seesound)
	.loc 1 902 11
	movq	-24(%rbp), %rax	# th, tmp132
	movq	136(%rax), %rax	# th_51->info, _5
# p_mobj.c:902:     if (th->info->seesound)
	.loc 1 902 17
	movl	16(%rax), %eax	# _5->seesound, _6
# p_mobj.c:902:     if (th->info->seesound)
	.loc 1 902 8
	testl	%eax, %eax	# _6
	je	.L155	#,
# p_mobj.c:903: 	S_StartSound (th, th->info->seesound);
	.loc 1 903 22
	movq	-24(%rbp), %rax	# th, tmp133
	movq	136(%rax), %rax	# th_51->info, _7
# p_mobj.c:903: 	S_StartSound (th, th->info->seesound);
	.loc 1 903 2
	movl	16(%rax), %edx	# _7->seesound, _8
	movq	-24(%rbp), %rax	# th, tmp134
	movl	%edx, %esi	# _8,
	movq	%rax, %rdi	# tmp134,
	call	S_StartSound@PLT	#
.L155:
# p_mobj.c:905:     th->target = source;	// where it came from
	.loc 1 905 16
	movq	-24(%rbp), %rax	# th, tmp135
	movq	-40(%rbp), %rdx	# source, tmp136
	movq	%rdx, 176(%rax)	# tmp136, th_51->target
# p_mobj.c:906:     an = R_PointToAngle2 (source->x, source->y, dest->x, dest->y);	
	.loc 1 906 10
	movq	-48(%rbp), %rax	# dest, tmp137
	movl	28(%rax), %ecx	# dest_54(D)->y, _9
	movq	-48(%rbp), %rax	# dest, tmp138
	movl	24(%rax), %edx	# dest_54(D)->x, _10
	movq	-40(%rbp), %rax	# source, tmp139
	movl	28(%rax), %esi	# source_48(D)->y, _11
	movq	-40(%rbp), %rax	# source, tmp140
	movl	24(%rax), %eax	# source_48(D)->x, _12
	movl	%eax, %edi	# _12,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -32(%rbp)	# tmp141, an
# p_mobj.c:909:     if (dest->flags & MF_SHADOW)
	.loc 1 909 13
	movq	-48(%rbp), %rax	# dest, tmp142
	movl	160(%rax), %eax	# dest_54(D)->flags, _13
# p_mobj.c:909:     if (dest->flags & MF_SHADOW)
	.loc 1 909 21
	andl	$262144, %eax	#, _14
# p_mobj.c:909:     if (dest->flags & MF_SHADOW)
	.loc 1 909 8
	testl	%eax, %eax	# _14
	je	.L156	#,
# p_mobj.c:910: 	an += (P_Random()-P_Random())<<20;	
	.loc 1 910 9
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _15
# p_mobj.c:910: 	an += (P_Random()-P_Random())<<20;	
	.loc 1 910 20 discriminator 1
	call	P_Random@PLT	#
# p_mobj.c:910: 	an += (P_Random()-P_Random())<<20;	
	.loc 1 910 19 discriminator 2
	subl	%eax, %ebx	# _16, _15
	movl	%ebx, %edx	# _15, _17
# p_mobj.c:910: 	an += (P_Random()-P_Random())<<20;	
	.loc 1 910 31 discriminator 2
	movl	%edx, %eax	# _17, _17
	sall	$20, %eax	#, _17
# p_mobj.c:910: 	an += (P_Random()-P_Random())<<20;	
	.loc 1 910 5 discriminator 2
	addl	%eax, -32(%rbp)	# _18, an
.L156:
# p_mobj.c:912:     th->angle = an;
	.loc 1 912 15
	movq	-24(%rbp), %rax	# th, tmp143
	movl	-32(%rbp), %edx	# an, tmp144
	movl	%edx, 56(%rax)	# tmp144, th_51->angle
# p_mobj.c:913:     an >>= ANGLETOFINESHIFT;
	.loc 1 913 8
	shrl	$19, -32(%rbp)	#, an
# p_mobj.c:914:     th->momx = FixedMul (th->info->speed, finecosine[an]);
	.loc 1 914 53
	movq	finecosine(%rip), %rax	# finecosine, finecosine.38_19
	movl	-32(%rbp), %edx	# an, _20
	salq	$2, %rdx	#, _21
	addq	%rdx, %rax	# _21, _22
# p_mobj.c:914:     th->momx = FixedMul (th->info->speed, finecosine[an]);
	.loc 1 914 16
	movl	(%rax), %edx	# *_22, _23
# p_mobj.c:914:     th->momx = FixedMul (th->info->speed, finecosine[an]);
	.loc 1 914 28
	movq	-24(%rbp), %rax	# th, tmp145
	movq	136(%rax), %rax	# th_51->info, _24
# p_mobj.c:914:     th->momx = FixedMul (th->info->speed, finecosine[an]);
	.loc 1 914 16
	movl	60(%rax), %eax	# _24->speed, _25
	movl	%edx, %esi	# _23,
	movl	%eax, %edi	# _25,
	call	FixedMul@PLT	#
# p_mobj.c:914:     th->momx = FixedMul (th->info->speed, finecosine[an]);
	.loc 1 914 14 discriminator 1
	movq	-24(%rbp), %rdx	# th, tmp146
	movl	%eax, 112(%rdx)	# _26, th_51->momx
# p_mobj.c:915:     th->momy = FixedMul (th->info->speed, finesine[an]);
	.loc 1 915 16
	movl	-32(%rbp), %eax	# an, tmp147
	leaq	0(,%rax,4), %rdx	#, tmp148
	leaq	finesine(%rip), %rax	#, tmp149
	movl	(%rdx,%rax), %edx	# finesine[an_62], _27
# p_mobj.c:915:     th->momy = FixedMul (th->info->speed, finesine[an]);
	.loc 1 915 28
	movq	-24(%rbp), %rax	# th, tmp150
	movq	136(%rax), %rax	# th_51->info, _28
# p_mobj.c:915:     th->momy = FixedMul (th->info->speed, finesine[an]);
	.loc 1 915 16
	movl	60(%rax), %eax	# _28->speed, _29
	movl	%edx, %esi	# _27,
	movl	%eax, %edi	# _29,
	call	FixedMul@PLT	#
# p_mobj.c:915:     th->momy = FixedMul (th->info->speed, finesine[an]);
	.loc 1 915 14 discriminator 1
	movq	-24(%rbp), %rdx	# th, tmp151
	movl	%eax, 116(%rdx)	# _30, th_51->momy
# p_mobj.c:917:     dist = P_AproxDistance (dest->x - source->x, dest->y - source->y);
	.loc 1 917 54
	movq	-48(%rbp), %rax	# dest, tmp152
	movl	28(%rax), %edx	# dest_54(D)->y, _31
# p_mobj.c:917:     dist = P_AproxDistance (dest->x - source->x, dest->y - source->y);
	.loc 1 917 66
	movq	-40(%rbp), %rax	# source, tmp153
	movl	28(%rax), %eax	# source_48(D)->y, _32
# p_mobj.c:917:     dist = P_AproxDistance (dest->x - source->x, dest->y - source->y);
	.loc 1 917 12
	subl	%eax, %edx	# _32, _33
# p_mobj.c:917:     dist = P_AproxDistance (dest->x - source->x, dest->y - source->y);
	.loc 1 917 33
	movq	-48(%rbp), %rax	# dest, tmp154
	movl	24(%rax), %esi	# dest_54(D)->x, _34
# p_mobj.c:917:     dist = P_AproxDistance (dest->x - source->x, dest->y - source->y);
	.loc 1 917 45
	movq	-40(%rbp), %rax	# source, tmp155
	movl	24(%rax), %ecx	# source_48(D)->x, _35
# p_mobj.c:917:     dist = P_AproxDistance (dest->x - source->x, dest->y - source->y);
	.loc 1 917 12
	movl	%esi, %eax	# _34, _34
	subl	%ecx, %eax	# _35, _34
	movl	%edx, %esi	# _33,
	movl	%eax, %edi	# _36,
	call	P_AproxDistance@PLT	#
	movl	%eax, -28(%rbp)	# tmp156, dist
# p_mobj.c:918:     dist = dist / th->info->speed;
	.loc 1 918 21
	movq	-24(%rbp), %rax	# th, tmp157
	movq	136(%rax), %rax	# th_51->info, _37
# p_mobj.c:918:     dist = dist / th->info->speed;
	.loc 1 918 27
	movl	60(%rax), %ebx	# _37->speed, _38
# p_mobj.c:918:     dist = dist / th->info->speed;
	.loc 1 918 10
	movl	-28(%rbp), %eax	# dist, tmp160
	cltd
	idivl	%ebx	# _38
	movl	%eax, -28(%rbp)	# tmp158, dist
# p_mobj.c:920:     if (dist < 1)
	.loc 1 920 8
	cmpl	$0, -28(%rbp)	#, dist
	jg	.L157	#,
# p_mobj.c:921: 	dist = 1;
	.loc 1 921 7
	movl	$1, -28(%rbp)	#, dist
.L157:
# p_mobj.c:923:     th->momz = (dest->z - source->z) / dist;
	.loc 1 923 21
	movq	-48(%rbp), %rax	# dest, tmp161
	movl	32(%rax), %edx	# dest_54(D)->z, _39
# p_mobj.c:923:     th->momz = (dest->z - source->z) / dist;
	.loc 1 923 33
	movq	-40(%rbp), %rax	# source, tmp162
	movl	32(%rax), %eax	# source_48(D)->z, _40
# p_mobj.c:923:     th->momz = (dest->z - source->z) / dist;
	.loc 1 923 25
	subl	%eax, %edx	# _40, _41
# p_mobj.c:923:     th->momz = (dest->z - source->z) / dist;
	.loc 1 923 38
	movl	%edx, %eax	# _41, _41
	cltd
	idivl	-28(%rbp)	# dist
	movl	%eax, %edx	# tmp163, _42
# p_mobj.c:923:     th->momz = (dest->z - source->z) / dist;
	.loc 1 923 14
	movq	-24(%rbp), %rax	# th, tmp165
	movl	%edx, 120(%rax)	# _42, th_51->momz
# p_mobj.c:924:     P_CheckMissileSpawn (th);
	.loc 1 924 5
	movq	-24(%rbp), %rax	# th, tmp166
	movq	%rax, %rdi	# tmp166,
	call	P_CheckMissileSpawn	#
# p_mobj.c:926:     return th;
	.loc 1 926 12
	movq	-24(%rbp), %rax	# th, _73
# p_mobj.c:927: }
	.loc 1 927 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	P_SpawnMissile, .-P_SpawnMissile
	.globl	P_SpawnPlayerMissile
	.type	P_SpawnPlayerMissile, @function
P_SpawnPlayerMissile:
.LFB15:
	.loc 1 938 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# source, source
	movl	%esi, -44(%rbp)	# type, type
# p_mobj.c:948:     an = source->angle;
	.loc 1 948 8
	movq	-40(%rbp), %rax	# source, tmp107
	movl	56(%rax), %eax	# source_34(D)->angle, tmp108
	movl	%eax, -28(%rbp)	# tmp108, an
# p_mobj.c:949:     slope = P_AimLineAttack (source, an, 16*64*FRACUNIT);
	.loc 1 949 13
	movl	-28(%rbp), %ecx	# an, tmp109
	movq	-40(%rbp), %rax	# source, tmp110
	movl	$67108864, %edx	#,
	movl	%ecx, %esi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -24(%rbp)	# tmp111, slope
# p_mobj.c:951:     if (!linetarget)
	.loc 1 951 9
	movq	linetarget(%rip), %rax	# linetarget, linetarget.39_1
# p_mobj.c:951:     if (!linetarget)
	.loc 1 951 8
	testq	%rax, %rax	# linetarget.39_1
	jne	.L160	#,
# p_mobj.c:953: 	an += 1<<26;
	.loc 1 953 5
	addl	$67108864, -28(%rbp)	#, an
# p_mobj.c:954: 	slope = P_AimLineAttack (source, an, 16*64*FRACUNIT);
	.loc 1 954 10
	movl	-28(%rbp), %ecx	# an, tmp112
	movq	-40(%rbp), %rax	# source, tmp113
	movl	$67108864, %edx	#,
	movl	%ecx, %esi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -24(%rbp)	# tmp114, slope
# p_mobj.c:956: 	if (!linetarget)
	.loc 1 956 6
	movq	linetarget(%rip), %rax	# linetarget, linetarget.40_2
# p_mobj.c:956: 	if (!linetarget)
	.loc 1 956 5
	testq	%rax, %rax	# linetarget.40_2
	jne	.L161	#,
# p_mobj.c:958: 	    an -= 2<<26;
	.loc 1 958 9
	subl	$134217728, -28(%rbp)	#, an
# p_mobj.c:959: 	    slope = P_AimLineAttack (source, an, 16*64*FRACUNIT);
	.loc 1 959 14
	movl	-28(%rbp), %ecx	# an, tmp115
	movq	-40(%rbp), %rax	# source, tmp116
	movl	$67108864, %edx	#,
	movl	%ecx, %esi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -24(%rbp)	# tmp117, slope
.L161:
# p_mobj.c:962: 	if (!linetarget)
	.loc 1 962 6
	movq	linetarget(%rip), %rax	# linetarget, linetarget.41_3
# p_mobj.c:962: 	if (!linetarget)
	.loc 1 962 5
	testq	%rax, %rax	# linetarget.41_3
	jne	.L160	#,
# p_mobj.c:964: 	    an = source->angle;
	.loc 1 964 9
	movq	-40(%rbp), %rax	# source, tmp118
	movl	56(%rax), %eax	# source_34(D)->angle, tmp119
	movl	%eax, -28(%rbp)	# tmp119, an
# p_mobj.c:965: 	    slope = 0;
	.loc 1 965 12
	movl	$0, -24(%rbp)	#, slope
.L160:
# p_mobj.c:969:     x = source->x;
	.loc 1 969 7
	movq	-40(%rbp), %rax	# source, tmp120
	movl	24(%rax), %eax	# source_34(D)->x, tmp121
	movl	%eax, -20(%rbp)	# tmp121, x
# p_mobj.c:970:     y = source->y;
	.loc 1 970 7
	movq	-40(%rbp), %rax	# source, tmp122
	movl	28(%rax), %eax	# source_34(D)->y, tmp123
	movl	%eax, -16(%rbp)	# tmp123, y
# p_mobj.c:971:     z = source->z + 4*8*FRACUNIT;
	.loc 1 971 15
	movq	-40(%rbp), %rax	# source, tmp124
	movl	32(%rax), %eax	# source_34(D)->z, _4
# p_mobj.c:971:     z = source->z + 4*8*FRACUNIT;
	.loc 1 971 7
	addl	$2097152, %eax	#, tmp125
	movl	%eax, -12(%rbp)	# tmp125, z
# p_mobj.c:973:     th = P_SpawnMobj (x,y,z, type);
	.loc 1 973 10
	movl	-44(%rbp), %ecx	# type, tmp126
	movl	-12(%rbp), %edx	# z, tmp127
	movl	-16(%rbp), %esi	# y, tmp128
	movl	-20(%rbp), %eax	# x, tmp129
	movl	%eax, %edi	# tmp129,
	call	P_SpawnMobj	#
	movq	%rax, -8(%rbp)	# tmp130, th
# p_mobj.c:975:     if (th->info->seesound)
	.loc 1 975 11
	movq	-8(%rbp), %rax	# th, tmp131
	movq	136(%rax), %rax	# th_51->info, _5
# p_mobj.c:975:     if (th->info->seesound)
	.loc 1 975 17
	movl	16(%rax), %eax	# _5->seesound, _6
# p_mobj.c:975:     if (th->info->seesound)
	.loc 1 975 8
	testl	%eax, %eax	# _6
	je	.L162	#,
# p_mobj.c:976: 	S_StartSound (th, th->info->seesound);
	.loc 1 976 22
	movq	-8(%rbp), %rax	# th, tmp132
	movq	136(%rax), %rax	# th_51->info, _7
# p_mobj.c:976: 	S_StartSound (th, th->info->seesound);
	.loc 1 976 2
	movl	16(%rax), %edx	# _7->seesound, _8
	movq	-8(%rbp), %rax	# th, tmp133
	movl	%edx, %esi	# _8,
	movq	%rax, %rdi	# tmp133,
	call	S_StartSound@PLT	#
.L162:
# p_mobj.c:978:     th->target = source;
	.loc 1 978 16
	movq	-8(%rbp), %rax	# th, tmp134
	movq	-40(%rbp), %rdx	# source, tmp135
	movq	%rdx, 176(%rax)	# tmp135, th_51->target
# p_mobj.c:979:     th->angle = an;
	.loc 1 979 15
	movq	-8(%rbp), %rax	# th, tmp136
	movl	-28(%rbp), %edx	# an, tmp137
	movl	%edx, 56(%rax)	# tmp137, th_51->angle
# p_mobj.c:981: 			 finecosine[an>>ANGLETOFINESHIFT]);
	.loc 1 981 15
	movq	finecosine(%rip), %rax	# finecosine, finecosine.42_9
# p_mobj.c:981: 			 finecosine[an>>ANGLETOFINESHIFT]);
	.loc 1 981 18
	movl	-28(%rbp), %edx	# an, tmp138
	shrl	$19, %edx	#, _10
	movl	%edx, %edx	# _10, _11
# p_mobj.c:981: 			 finecosine[an>>ANGLETOFINESHIFT]);
	.loc 1 981 15
	salq	$2, %rdx	#, _12
	addq	%rdx, %rax	# _12, _13
# p_mobj.c:980:     th->momx = FixedMul( th->info->speed,
	.loc 1 980 16
	movl	(%rax), %edx	# *_13, _14
# p_mobj.c:980:     th->momx = FixedMul( th->info->speed,
	.loc 1 980 28
	movq	-8(%rbp), %rax	# th, tmp139
	movq	136(%rax), %rax	# th_51->info, _15
# p_mobj.c:980:     th->momx = FixedMul( th->info->speed,
	.loc 1 980 16
	movl	60(%rax), %eax	# _15->speed, _16
	movl	%edx, %esi	# _14,
	movl	%eax, %edi	# _16,
	call	FixedMul@PLT	#
# p_mobj.c:980:     th->momx = FixedMul( th->info->speed,
	.loc 1 980 14 discriminator 1
	movq	-8(%rbp), %rdx	# th, tmp140
	movl	%eax, 112(%rdx)	# _17, th_51->momx
# p_mobj.c:983: 			 finesine[an>>ANGLETOFINESHIFT]);
	.loc 1 983 16
	movl	-28(%rbp), %eax	# an, tmp141
	shrl	$19, %eax	#, _18
# p_mobj.c:982:     th->momy = FixedMul( th->info->speed,
	.loc 1 982 16
	movl	%eax, %eax	# _18, tmp142
	leaq	0(,%rax,4), %rdx	#, tmp143
	leaq	finesine(%rip), %rax	#, tmp144
	movl	(%rdx,%rax), %edx	# finesine[_18], _19
# p_mobj.c:982:     th->momy = FixedMul( th->info->speed,
	.loc 1 982 28
	movq	-8(%rbp), %rax	# th, tmp145
	movq	136(%rax), %rax	# th_51->info, _20
# p_mobj.c:982:     th->momy = FixedMul( th->info->speed,
	.loc 1 982 16
	movl	60(%rax), %eax	# _20->speed, _21
	movl	%edx, %esi	# _19,
	movl	%eax, %edi	# _21,
	call	FixedMul@PLT	#
# p_mobj.c:982:     th->momy = FixedMul( th->info->speed,
	.loc 1 982 14 discriminator 1
	movq	-8(%rbp), %rdx	# th, tmp146
	movl	%eax, 116(%rdx)	# _22, th_51->momy
# p_mobj.c:984:     th->momz = FixedMul( th->info->speed, slope);
	.loc 1 984 28
	movq	-8(%rbp), %rax	# th, tmp147
	movq	136(%rax), %rax	# th_51->info, _23
# p_mobj.c:984:     th->momz = FixedMul( th->info->speed, slope);
	.loc 1 984 16
	movl	60(%rax), %eax	# _23->speed, _24
	movl	-24(%rbp), %edx	# slope, tmp148
	movl	%edx, %esi	# tmp148,
	movl	%eax, %edi	# _24,
	call	FixedMul@PLT	#
# p_mobj.c:984:     th->momz = FixedMul( th->info->speed, slope);
	.loc 1 984 14 discriminator 1
	movq	-8(%rbp), %rdx	# th, tmp149
	movl	%eax, 120(%rdx)	# _25, th_51->momz
# p_mobj.c:986:     P_CheckMissileSpawn (th);
	.loc 1 986 5
	movq	-8(%rbp), %rax	# th, tmp150
	movq	%rax, %rdi	# tmp150,
	call	P_CheckMissileSpawn	#
# p_mobj.c:987: }
	.loc 1 987 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	P_SpawnPlayerMissile, .-P_SpawnPlayerMissile
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "d_ticcmd.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "doomdef.h"
	.file 6 "m_fixed.h"
	.file 7 "tables.h"
	.file 8 "d_think.h"
	.file 9 "doomdata.h"
	.file 10 "info.h"
	.file 11 "p_mobj.h"
	.file 12 "r_defs.h"
	.file 13 "d_player.h"
	.file 14 "p_pspr.h"
	.file 15 "p_local.h"
	.file 16 "sounds.h"
	.file 17 "doomstat.h"
	.file 18 "r_main.h"
	.file 19 "/usr/include/string.h"
	.file 20 "hu_stuff.h"
	.file 21 "st_stuff.h"
	.file 22 "i_system.h"
	.file 23 "s_sound.h"
	.file 24 "z_zone.h"
	.file 25 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3b47
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x28
	.long	.LASF1678
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.long	0x51
	.long	0x3e
	.uleb128 0xc
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.long	0x2e
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1f
	.long	0x4a
	.uleb128 0x15
	.long	.LASF1651
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xd
	.long	0x84
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0x84
	.uleb128 0x2
	.long	.LASF4
	.byte	0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x7
	.long	.LASF7
	.byte	0x2
	.byte	0x22
	.byte	0x1c
	.long	0x6b
	.uleb128 0x7
	.long	.LASF8
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0xa3
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x17
	.byte	0x8
	.byte	0x3
	.byte	0x24
	.long	0x101
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x28
	.byte	0xb
	.long	0x101
	.byte	0x2
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x29
	.byte	0xb
	.long	0x101
	.byte	0x4
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x2a
	.byte	0xa
	.long	0x97
	.byte	0x6
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x2b
	.byte	0xa
	.long	0x97
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.long	.LASF16
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.long	0xaa
	.uleb128 0x29
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x2a
	.byte	0x8
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.long	.LASF19
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.long	.LASF21
	.uleb128 0x8
	.long	0x4a
	.uleb128 0xd
	.long	0x84
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.long	0x16e
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
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x5
	.byte	0x9a
	.byte	0x3
	.long	0x143
	.uleb128 0xd
	.long	0x84
	.byte	0x5
	.byte	0xa3
	.byte	0x1
	.long	0x1b1
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
	.uleb128 0xd
	.long	0x84
	.byte	0x5
	.byte	0xb5
	.byte	0x1
	.long	0x200
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
	.uleb128 0x7
	.long	.LASF46
	.byte	0x5
	.byte	0xc5
	.byte	0x3
	.long	0x1b1
	.uleb128 0xd
	.long	0x84
	.byte	0x5
	.byte	0xca
	.byte	0x1
	.long	0x23d
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
	.uleb128 0xd
	.long	0x84
	.byte	0x5
	.byte	0xd7
	.byte	0x1
	.long	0x274
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
	.uleb128 0x7
	.long	.LASF62
	.byte	0x6
	.byte	0x26
	.byte	0xd
	.long	0x114
	.uleb128 0xb
	.long	0x282
	.long	0x29f
	.uleb128 0x20
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x7
	.byte	0x3a
	.byte	0x12
	.long	0x28e
	.uleb128 0x9
	.long	.LASF64
	.byte	0x7
	.byte	0x3d
	.byte	0x12
	.long	0x2b7
	.uleb128 0x8
	.long	0x282
	.uleb128 0x7
	.long	.LASF65
	.byte	0x7
	.byte	0x4e
	.byte	0x12
	.long	0x84
	.uleb128 0x7
	.long	.LASF66
	.byte	0x8
	.byte	0x29
	.byte	0x11
	.long	0x2d4
	.uleb128 0x8
	.long	0x2d9
	.uleb128 0x2b
	.long	0x2e0
	.uleb128 0x21
	.byte	0
	.uleb128 0x7
	.long	.LASF67
	.byte	0x8
	.byte	0x2a
	.byte	0x11
	.long	0x2ec
	.uleb128 0x8
	.long	0x2f1
	.uleb128 0x22
	.long	0x2fc
	.uleb128 0x4
	.long	0x127
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x8
	.byte	0x2b
	.byte	0x11
	.long	0x308
	.uleb128 0x8
	.long	0x30d
	.uleb128 0x22
	.long	0x31d
	.uleb128 0x4
	.long	0x127
	.uleb128 0x4
	.long	0x127
	.byte	0
	.uleb128 0x2c
	.byte	0x8
	.byte	0x8
	.byte	0x2d
	.byte	0x9
	.long	0x347
	.uleb128 0x23
	.long	.LASF69
	.byte	0x2f
	.long	0x2e0
	.uleb128 0x2d
	.string	"acv"
	.byte	0x8
	.byte	0x30
	.byte	0xd
	.long	0x2c8
	.uleb128 0x23
	.long	.LASF70
	.byte	0x31
	.long	0x2fc
	.byte	0
	.uleb128 0x7
	.long	.LASF71
	.byte	0x8
	.byte	0x33
	.byte	0x3
	.long	0x31d
	.uleb128 0x7
	.long	.LASF72
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.long	0x347
	.uleb128 0x19
	.long	.LASF1391
	.byte	0x18
	.byte	0x8
	.byte	0x40
	.long	0x393
	.uleb128 0x3
	.long	.LASF73
	.byte	0x8
	.byte	0x42
	.byte	0x17
	.long	0x393
	.byte	0
	.uleb128 0x3
	.long	.LASF74
	.byte	0x8
	.byte	0x43
	.byte	0x17
	.long	0x393
	.byte	0x8
	.uleb128 0x3
	.long	.LASF75
	.byte	0x8
	.byte	0x44
	.byte	0xe
	.long	0x353
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x35f
	.uleb128 0x7
	.long	.LASF76
	.byte	0x8
	.byte	0x46
	.byte	0x3
	.long	0x35f
	.uleb128 0xb
	.long	0x101
	.long	0x3b4
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0xa
	.byte	0x9
	.byte	0xcb
	.long	0x3fa
	.uleb128 0xa
	.string	"x"
	.byte	0x9
	.byte	0xcd
	.byte	0xc
	.long	0x101
	.byte	0
	.uleb128 0xa
	.string	"y"
	.byte	0x9
	.byte	0xce
	.byte	0xc
	.long	0x101
	.byte	0x2
	.uleb128 0x3
	.long	.LASF77
	.byte	0x9
	.byte	0xcf
	.byte	0xc
	.long	0x101
	.byte	0x4
	.uleb128 0x3
	.long	.LASF78
	.byte	0x9
	.byte	0xd0
	.byte	0xc
	.long	0x101
	.byte	0x6
	.uleb128 0x3
	.long	.LASF79
	.byte	0x9
	.byte	0xd1
	.byte	0xc
	.long	0x101
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF80
	.byte	0x9
	.byte	0xd2
	.byte	0x3
	.long	0x3b4
	.uleb128 0xd
	.long	0x84
	.byte	0xa
	.byte	0x1f
	.byte	0x1
	.long	0x755
	.uleb128 0x2
	.long	.LASF81
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x1
	.uleb128 0x2
	.long	.LASF83
	.byte	0x2
	.uleb128 0x2
	.long	.LASF84
	.byte	0x3
	.uleb128 0x2
	.long	.LASF85
	.byte	0x4
	.uleb128 0x2
	.long	.LASF86
	.byte	0x5
	.uleb128 0x2
	.long	.LASF87
	.byte	0x6
	.uleb128 0x2
	.long	.LASF88
	.byte	0x7
	.uleb128 0x2
	.long	.LASF89
	.byte	0x8
	.uleb128 0x2
	.long	.LASF90
	.byte	0x9
	.uleb128 0x2
	.long	.LASF91
	.byte	0xa
	.uleb128 0x2
	.long	.LASF92
	.byte	0xb
	.uleb128 0x2
	.long	.LASF93
	.byte	0xc
	.uleb128 0x2
	.long	.LASF94
	.byte	0xd
	.uleb128 0x2
	.long	.LASF95
	.byte	0xe
	.uleb128 0x2
	.long	.LASF96
	.byte	0xf
	.uleb128 0x2
	.long	.LASF97
	.byte	0x10
	.uleb128 0x2
	.long	.LASF98
	.byte	0x11
	.uleb128 0x2
	.long	.LASF99
	.byte	0x12
	.uleb128 0x2
	.long	.LASF100
	.byte	0x13
	.uleb128 0x2
	.long	.LASF101
	.byte	0x14
	.uleb128 0x2
	.long	.LASF102
	.byte	0x15
	.uleb128 0x2
	.long	.LASF103
	.byte	0x16
	.uleb128 0x2
	.long	.LASF104
	.byte	0x17
	.uleb128 0x2
	.long	.LASF105
	.byte	0x18
	.uleb128 0x2
	.long	.LASF106
	.byte	0x19
	.uleb128 0x2
	.long	.LASF107
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF108
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF109
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF113
	.byte	0x20
	.uleb128 0x2
	.long	.LASF114
	.byte	0x21
	.uleb128 0x2
	.long	.LASF115
	.byte	0x22
	.uleb128 0x2
	.long	.LASF116
	.byte	0x23
	.uleb128 0x2
	.long	.LASF117
	.byte	0x24
	.uleb128 0x2
	.long	.LASF118
	.byte	0x25
	.uleb128 0x2
	.long	.LASF119
	.byte	0x26
	.uleb128 0x2
	.long	.LASF120
	.byte	0x27
	.uleb128 0x2
	.long	.LASF121
	.byte	0x28
	.uleb128 0x2
	.long	.LASF122
	.byte	0x29
	.uleb128 0x2
	.long	.LASF123
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF124
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF125
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF129
	.byte	0x30
	.uleb128 0x2
	.long	.LASF130
	.byte	0x31
	.uleb128 0x2
	.long	.LASF131
	.byte	0x32
	.uleb128 0x2
	.long	.LASF132
	.byte	0x33
	.uleb128 0x2
	.long	.LASF133
	.byte	0x34
	.uleb128 0x2
	.long	.LASF134
	.byte	0x35
	.uleb128 0x2
	.long	.LASF135
	.byte	0x36
	.uleb128 0x2
	.long	.LASF136
	.byte	0x37
	.uleb128 0x2
	.long	.LASF137
	.byte	0x38
	.uleb128 0x2
	.long	.LASF138
	.byte	0x39
	.uleb128 0x2
	.long	.LASF139
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF140
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF141
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF144
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF145
	.byte	0x40
	.uleb128 0x2
	.long	.LASF146
	.byte	0x41
	.uleb128 0x2
	.long	.LASF147
	.byte	0x42
	.uleb128 0x2
	.long	.LASF148
	.byte	0x43
	.uleb128 0x2
	.long	.LASF149
	.byte	0x44
	.uleb128 0x2
	.long	.LASF150
	.byte	0x45
	.uleb128 0x2
	.long	.LASF151
	.byte	0x46
	.uleb128 0x2
	.long	.LASF152
	.byte	0x47
	.uleb128 0x2
	.long	.LASF153
	.byte	0x48
	.uleb128 0x2
	.long	.LASF154
	.byte	0x49
	.uleb128 0x2
	.long	.LASF155
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF156
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF157
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF160
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF161
	.byte	0x50
	.uleb128 0x2
	.long	.LASF162
	.byte	0x51
	.uleb128 0x2
	.long	.LASF163
	.byte	0x52
	.uleb128 0x2
	.long	.LASF164
	.byte	0x53
	.uleb128 0x2
	.long	.LASF165
	.byte	0x54
	.uleb128 0x2
	.long	.LASF166
	.byte	0x55
	.uleb128 0x2
	.long	.LASF167
	.byte	0x56
	.uleb128 0x2
	.long	.LASF168
	.byte	0x57
	.uleb128 0x2
	.long	.LASF169
	.byte	0x58
	.uleb128 0x2
	.long	.LASF170
	.byte	0x59
	.uleb128 0x2
	.long	.LASF171
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF172
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF173
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF176
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF177
	.byte	0x60
	.uleb128 0x2
	.long	.LASF178
	.byte	0x61
	.uleb128 0x2
	.long	.LASF179
	.byte	0x62
	.uleb128 0x2
	.long	.LASF180
	.byte	0x63
	.uleb128 0x2
	.long	.LASF181
	.byte	0x64
	.uleb128 0x2
	.long	.LASF182
	.byte	0x65
	.uleb128 0x2
	.long	.LASF183
	.byte	0x66
	.uleb128 0x2
	.long	.LASF184
	.byte	0x67
	.uleb128 0x2
	.long	.LASF185
	.byte	0x68
	.uleb128 0x2
	.long	.LASF186
	.byte	0x69
	.uleb128 0x2
	.long	.LASF187
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF188
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF189
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF192
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF193
	.byte	0x70
	.uleb128 0x2
	.long	.LASF194
	.byte	0x71
	.uleb128 0x2
	.long	.LASF195
	.byte	0x72
	.uleb128 0x2
	.long	.LASF196
	.byte	0x73
	.uleb128 0x2
	.long	.LASF197
	.byte	0x74
	.uleb128 0x2
	.long	.LASF198
	.byte	0x75
	.uleb128 0x2
	.long	.LASF199
	.byte	0x76
	.uleb128 0x2
	.long	.LASF200
	.byte	0x77
	.uleb128 0x2
	.long	.LASF201
	.byte	0x78
	.uleb128 0x2
	.long	.LASF202
	.byte	0x79
	.uleb128 0x2
	.long	.LASF203
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF204
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF205
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF208
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF209
	.byte	0x80
	.uleb128 0x2
	.long	.LASF210
	.byte	0x81
	.uleb128 0x2
	.long	.LASF211
	.byte	0x82
	.uleb128 0x2
	.long	.LASF212
	.byte	0x83
	.uleb128 0x2
	.long	.LASF213
	.byte	0x84
	.uleb128 0x2
	.long	.LASF214
	.byte	0x85
	.uleb128 0x2
	.long	.LASF215
	.byte	0x86
	.uleb128 0x2
	.long	.LASF216
	.byte	0x87
	.uleb128 0x2
	.long	.LASF217
	.byte	0x88
	.uleb128 0x2
	.long	.LASF218
	.byte	0x89
	.uleb128 0x2
	.long	.LASF219
	.byte	0x8a
	.byte	0
	.uleb128 0x7
	.long	.LASF220
	.byte	0xa
	.byte	0xac
	.byte	0x3
	.long	0x406
	.uleb128 0xd
	.long	0x84
	.byte	0xa
	.byte	0xaf
	.byte	0x1
	.long	0x20e6
	.uleb128 0x2
	.long	.LASF221
	.byte	0
	.uleb128 0x2
	.long	.LASF222
	.byte	0x1
	.uleb128 0x2
	.long	.LASF223
	.byte	0x2
	.uleb128 0x2
	.long	.LASF224
	.byte	0x3
	.uleb128 0x2
	.long	.LASF225
	.byte	0x4
	.uleb128 0x2
	.long	.LASF226
	.byte	0x5
	.uleb128 0x2
	.long	.LASF227
	.byte	0x6
	.uleb128 0x2
	.long	.LASF228
	.byte	0x7
	.uleb128 0x2
	.long	.LASF229
	.byte	0x8
	.uleb128 0x2
	.long	.LASF230
	.byte	0x9
	.uleb128 0x2
	.long	.LASF231
	.byte	0xa
	.uleb128 0x2
	.long	.LASF232
	.byte	0xb
	.uleb128 0x2
	.long	.LASF233
	.byte	0xc
	.uleb128 0x2
	.long	.LASF234
	.byte	0xd
	.uleb128 0x2
	.long	.LASF235
	.byte	0xe
	.uleb128 0x2
	.long	.LASF236
	.byte	0xf
	.uleb128 0x2
	.long	.LASF237
	.byte	0x10
	.uleb128 0x2
	.long	.LASF238
	.byte	0x11
	.uleb128 0x2
	.long	.LASF239
	.byte	0x12
	.uleb128 0x2
	.long	.LASF240
	.byte	0x13
	.uleb128 0x2
	.long	.LASF241
	.byte	0x14
	.uleb128 0x2
	.long	.LASF242
	.byte	0x15
	.uleb128 0x2
	.long	.LASF243
	.byte	0x16
	.uleb128 0x2
	.long	.LASF244
	.byte	0x17
	.uleb128 0x2
	.long	.LASF245
	.byte	0x18
	.uleb128 0x2
	.long	.LASF246
	.byte	0x19
	.uleb128 0x2
	.long	.LASF247
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF248
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF249
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF250
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF252
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF253
	.byte	0x20
	.uleb128 0x2
	.long	.LASF254
	.byte	0x21
	.uleb128 0x2
	.long	.LASF255
	.byte	0x22
	.uleb128 0x2
	.long	.LASF256
	.byte	0x23
	.uleb128 0x2
	.long	.LASF257
	.byte	0x24
	.uleb128 0x2
	.long	.LASF258
	.byte	0x25
	.uleb128 0x2
	.long	.LASF259
	.byte	0x26
	.uleb128 0x2
	.long	.LASF260
	.byte	0x27
	.uleb128 0x2
	.long	.LASF261
	.byte	0x28
	.uleb128 0x2
	.long	.LASF262
	.byte	0x29
	.uleb128 0x2
	.long	.LASF263
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF264
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF265
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF266
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF268
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF269
	.byte	0x30
	.uleb128 0x2
	.long	.LASF270
	.byte	0x31
	.uleb128 0x2
	.long	.LASF271
	.byte	0x32
	.uleb128 0x2
	.long	.LASF272
	.byte	0x33
	.uleb128 0x2
	.long	.LASF273
	.byte	0x34
	.uleb128 0x2
	.long	.LASF274
	.byte	0x35
	.uleb128 0x2
	.long	.LASF275
	.byte	0x36
	.uleb128 0x2
	.long	.LASF276
	.byte	0x37
	.uleb128 0x2
	.long	.LASF277
	.byte	0x38
	.uleb128 0x2
	.long	.LASF278
	.byte	0x39
	.uleb128 0x2
	.long	.LASF279
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF280
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF281
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF282
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF284
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF285
	.byte	0x40
	.uleb128 0x2
	.long	.LASF286
	.byte	0x41
	.uleb128 0x2
	.long	.LASF287
	.byte	0x42
	.uleb128 0x2
	.long	.LASF288
	.byte	0x43
	.uleb128 0x2
	.long	.LASF289
	.byte	0x44
	.uleb128 0x2
	.long	.LASF290
	.byte	0x45
	.uleb128 0x2
	.long	.LASF291
	.byte	0x46
	.uleb128 0x2
	.long	.LASF292
	.byte	0x47
	.uleb128 0x2
	.long	.LASF293
	.byte	0x48
	.uleb128 0x2
	.long	.LASF294
	.byte	0x49
	.uleb128 0x2
	.long	.LASF295
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF296
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF297
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF298
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF300
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF301
	.byte	0x50
	.uleb128 0x2
	.long	.LASF302
	.byte	0x51
	.uleb128 0x2
	.long	.LASF303
	.byte	0x52
	.uleb128 0x2
	.long	.LASF304
	.byte	0x53
	.uleb128 0x2
	.long	.LASF305
	.byte	0x54
	.uleb128 0x2
	.long	.LASF306
	.byte	0x55
	.uleb128 0x2
	.long	.LASF307
	.byte	0x56
	.uleb128 0x2
	.long	.LASF308
	.byte	0x57
	.uleb128 0x2
	.long	.LASF309
	.byte	0x58
	.uleb128 0x2
	.long	.LASF310
	.byte	0x59
	.uleb128 0x2
	.long	.LASF311
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF312
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF313
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF314
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF316
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF317
	.byte	0x60
	.uleb128 0x2
	.long	.LASF318
	.byte	0x61
	.uleb128 0x2
	.long	.LASF319
	.byte	0x62
	.uleb128 0x2
	.long	.LASF320
	.byte	0x63
	.uleb128 0x2
	.long	.LASF321
	.byte	0x64
	.uleb128 0x2
	.long	.LASF322
	.byte	0x65
	.uleb128 0x2
	.long	.LASF323
	.byte	0x66
	.uleb128 0x2
	.long	.LASF324
	.byte	0x67
	.uleb128 0x2
	.long	.LASF325
	.byte	0x68
	.uleb128 0x2
	.long	.LASF326
	.byte	0x69
	.uleb128 0x2
	.long	.LASF327
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF328
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF329
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF330
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF332
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF333
	.byte	0x70
	.uleb128 0x2
	.long	.LASF334
	.byte	0x71
	.uleb128 0x2
	.long	.LASF335
	.byte	0x72
	.uleb128 0x2
	.long	.LASF336
	.byte	0x73
	.uleb128 0x2
	.long	.LASF337
	.byte	0x74
	.uleb128 0x2
	.long	.LASF338
	.byte	0x75
	.uleb128 0x2
	.long	.LASF339
	.byte	0x76
	.uleb128 0x2
	.long	.LASF340
	.byte	0x77
	.uleb128 0x2
	.long	.LASF341
	.byte	0x78
	.uleb128 0x2
	.long	.LASF342
	.byte	0x79
	.uleb128 0x2
	.long	.LASF343
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF344
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF345
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF346
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF348
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF349
	.byte	0x80
	.uleb128 0x2
	.long	.LASF350
	.byte	0x81
	.uleb128 0x2
	.long	.LASF351
	.byte	0x82
	.uleb128 0x2
	.long	.LASF352
	.byte	0x83
	.uleb128 0x2
	.long	.LASF353
	.byte	0x84
	.uleb128 0x2
	.long	.LASF354
	.byte	0x85
	.uleb128 0x2
	.long	.LASF355
	.byte	0x86
	.uleb128 0x2
	.long	.LASF356
	.byte	0x87
	.uleb128 0x2
	.long	.LASF357
	.byte	0x88
	.uleb128 0x2
	.long	.LASF358
	.byte	0x89
	.uleb128 0x2
	.long	.LASF359
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF360
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF361
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF362
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF364
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF365
	.byte	0x90
	.uleb128 0x2
	.long	.LASF366
	.byte	0x91
	.uleb128 0x2
	.long	.LASF367
	.byte	0x92
	.uleb128 0x2
	.long	.LASF368
	.byte	0x93
	.uleb128 0x2
	.long	.LASF369
	.byte	0x94
	.uleb128 0x2
	.long	.LASF370
	.byte	0x95
	.uleb128 0x2
	.long	.LASF371
	.byte	0x96
	.uleb128 0x2
	.long	.LASF372
	.byte	0x97
	.uleb128 0x2
	.long	.LASF373
	.byte	0x98
	.uleb128 0x2
	.long	.LASF374
	.byte	0x99
	.uleb128 0x2
	.long	.LASF375
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF376
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF377
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF378
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF380
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF381
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF382
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF383
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF390
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF391
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF392
	.byte	0xab
	.uleb128 0x2
	.long	.LASF393
	.byte	0xac
	.uleb128 0x2
	.long	.LASF394
	.byte	0xad
	.uleb128 0x2
	.long	.LASF395
	.byte	0xae
	.uleb128 0x2
	.long	.LASF396
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF397
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF398
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF399
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF406
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF407
	.byte	0xba
	.uleb128 0x2
	.long	.LASF408
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF409
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF410
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF411
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF412
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF413
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF414
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF415
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF422
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF423
	.byte	0xca
	.uleb128 0x2
	.long	.LASF424
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF425
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF426
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF427
	.byte	0xce
	.uleb128 0x2
	.long	.LASF428
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF429
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF430
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF431
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF438
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF439
	.byte	0xda
	.uleb128 0x2
	.long	.LASF440
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF441
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF442
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF443
	.byte	0xde
	.uleb128 0x2
	.long	.LASF444
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF445
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF446
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF447
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF454
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF455
	.byte	0xea
	.uleb128 0x2
	.long	.LASF456
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF457
	.byte	0xec
	.uleb128 0x2
	.long	.LASF458
	.byte	0xed
	.uleb128 0x2
	.long	.LASF459
	.byte	0xee
	.uleb128 0x2
	.long	.LASF460
	.byte	0xef
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF462
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF463
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF470
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF471
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF472
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF473
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF474
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF475
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF476
	.byte	0xff
	.uleb128 0x1
	.long	.LASF477
	.value	0x100
	.uleb128 0x1
	.long	.LASF478
	.value	0x101
	.uleb128 0x1
	.long	.LASF479
	.value	0x102
	.uleb128 0x1
	.long	.LASF480
	.value	0x103
	.uleb128 0x1
	.long	.LASF481
	.value	0x104
	.uleb128 0x1
	.long	.LASF482
	.value	0x105
	.uleb128 0x1
	.long	.LASF483
	.value	0x106
	.uleb128 0x1
	.long	.LASF484
	.value	0x107
	.uleb128 0x1
	.long	.LASF485
	.value	0x108
	.uleb128 0x1
	.long	.LASF486
	.value	0x109
	.uleb128 0x1
	.long	.LASF487
	.value	0x10a
	.uleb128 0x1
	.long	.LASF488
	.value	0x10b
	.uleb128 0x1
	.long	.LASF489
	.value	0x10c
	.uleb128 0x1
	.long	.LASF490
	.value	0x10d
	.uleb128 0x1
	.long	.LASF491
	.value	0x10e
	.uleb128 0x1
	.long	.LASF492
	.value	0x10f
	.uleb128 0x1
	.long	.LASF493
	.value	0x110
	.uleb128 0x1
	.long	.LASF494
	.value	0x111
	.uleb128 0x1
	.long	.LASF495
	.value	0x112
	.uleb128 0x1
	.long	.LASF496
	.value	0x113
	.uleb128 0x1
	.long	.LASF497
	.value	0x114
	.uleb128 0x1
	.long	.LASF498
	.value	0x115
	.uleb128 0x1
	.long	.LASF499
	.value	0x116
	.uleb128 0x1
	.long	.LASF500
	.value	0x117
	.uleb128 0x1
	.long	.LASF501
	.value	0x118
	.uleb128 0x1
	.long	.LASF502
	.value	0x119
	.uleb128 0x1
	.long	.LASF503
	.value	0x11a
	.uleb128 0x1
	.long	.LASF504
	.value	0x11b
	.uleb128 0x1
	.long	.LASF505
	.value	0x11c
	.uleb128 0x1
	.long	.LASF506
	.value	0x11d
	.uleb128 0x1
	.long	.LASF507
	.value	0x11e
	.uleb128 0x1
	.long	.LASF508
	.value	0x11f
	.uleb128 0x1
	.long	.LASF509
	.value	0x120
	.uleb128 0x1
	.long	.LASF510
	.value	0x121
	.uleb128 0x1
	.long	.LASF511
	.value	0x122
	.uleb128 0x1
	.long	.LASF512
	.value	0x123
	.uleb128 0x1
	.long	.LASF513
	.value	0x124
	.uleb128 0x1
	.long	.LASF514
	.value	0x125
	.uleb128 0x1
	.long	.LASF515
	.value	0x126
	.uleb128 0x1
	.long	.LASF516
	.value	0x127
	.uleb128 0x1
	.long	.LASF517
	.value	0x128
	.uleb128 0x1
	.long	.LASF518
	.value	0x129
	.uleb128 0x1
	.long	.LASF519
	.value	0x12a
	.uleb128 0x1
	.long	.LASF520
	.value	0x12b
	.uleb128 0x1
	.long	.LASF521
	.value	0x12c
	.uleb128 0x1
	.long	.LASF522
	.value	0x12d
	.uleb128 0x1
	.long	.LASF523
	.value	0x12e
	.uleb128 0x1
	.long	.LASF524
	.value	0x12f
	.uleb128 0x1
	.long	.LASF525
	.value	0x130
	.uleb128 0x1
	.long	.LASF526
	.value	0x131
	.uleb128 0x1
	.long	.LASF527
	.value	0x132
	.uleb128 0x1
	.long	.LASF528
	.value	0x133
	.uleb128 0x1
	.long	.LASF529
	.value	0x134
	.uleb128 0x1
	.long	.LASF530
	.value	0x135
	.uleb128 0x1
	.long	.LASF531
	.value	0x136
	.uleb128 0x1
	.long	.LASF532
	.value	0x137
	.uleb128 0x1
	.long	.LASF533
	.value	0x138
	.uleb128 0x1
	.long	.LASF534
	.value	0x139
	.uleb128 0x1
	.long	.LASF535
	.value	0x13a
	.uleb128 0x1
	.long	.LASF536
	.value	0x13b
	.uleb128 0x1
	.long	.LASF537
	.value	0x13c
	.uleb128 0x1
	.long	.LASF538
	.value	0x13d
	.uleb128 0x1
	.long	.LASF539
	.value	0x13e
	.uleb128 0x1
	.long	.LASF540
	.value	0x13f
	.uleb128 0x1
	.long	.LASF541
	.value	0x140
	.uleb128 0x1
	.long	.LASF542
	.value	0x141
	.uleb128 0x1
	.long	.LASF543
	.value	0x142
	.uleb128 0x1
	.long	.LASF544
	.value	0x143
	.uleb128 0x1
	.long	.LASF545
	.value	0x144
	.uleb128 0x1
	.long	.LASF546
	.value	0x145
	.uleb128 0x1
	.long	.LASF547
	.value	0x146
	.uleb128 0x1
	.long	.LASF548
	.value	0x147
	.uleb128 0x1
	.long	.LASF549
	.value	0x148
	.uleb128 0x1
	.long	.LASF550
	.value	0x149
	.uleb128 0x1
	.long	.LASF551
	.value	0x14a
	.uleb128 0x1
	.long	.LASF552
	.value	0x14b
	.uleb128 0x1
	.long	.LASF553
	.value	0x14c
	.uleb128 0x1
	.long	.LASF554
	.value	0x14d
	.uleb128 0x1
	.long	.LASF555
	.value	0x14e
	.uleb128 0x1
	.long	.LASF556
	.value	0x14f
	.uleb128 0x1
	.long	.LASF557
	.value	0x150
	.uleb128 0x1
	.long	.LASF558
	.value	0x151
	.uleb128 0x1
	.long	.LASF559
	.value	0x152
	.uleb128 0x1
	.long	.LASF560
	.value	0x153
	.uleb128 0x1
	.long	.LASF561
	.value	0x154
	.uleb128 0x1
	.long	.LASF562
	.value	0x155
	.uleb128 0x1
	.long	.LASF563
	.value	0x156
	.uleb128 0x1
	.long	.LASF564
	.value	0x157
	.uleb128 0x1
	.long	.LASF565
	.value	0x158
	.uleb128 0x1
	.long	.LASF566
	.value	0x159
	.uleb128 0x1
	.long	.LASF567
	.value	0x15a
	.uleb128 0x1
	.long	.LASF568
	.value	0x15b
	.uleb128 0x1
	.long	.LASF569
	.value	0x15c
	.uleb128 0x1
	.long	.LASF570
	.value	0x15d
	.uleb128 0x1
	.long	.LASF571
	.value	0x15e
	.uleb128 0x1
	.long	.LASF572
	.value	0x15f
	.uleb128 0x1
	.long	.LASF573
	.value	0x160
	.uleb128 0x1
	.long	.LASF574
	.value	0x161
	.uleb128 0x1
	.long	.LASF575
	.value	0x162
	.uleb128 0x1
	.long	.LASF576
	.value	0x163
	.uleb128 0x1
	.long	.LASF577
	.value	0x164
	.uleb128 0x1
	.long	.LASF578
	.value	0x165
	.uleb128 0x1
	.long	.LASF579
	.value	0x166
	.uleb128 0x1
	.long	.LASF580
	.value	0x167
	.uleb128 0x1
	.long	.LASF581
	.value	0x168
	.uleb128 0x1
	.long	.LASF582
	.value	0x169
	.uleb128 0x1
	.long	.LASF583
	.value	0x16a
	.uleb128 0x1
	.long	.LASF584
	.value	0x16b
	.uleb128 0x1
	.long	.LASF585
	.value	0x16c
	.uleb128 0x1
	.long	.LASF586
	.value	0x16d
	.uleb128 0x1
	.long	.LASF587
	.value	0x16e
	.uleb128 0x1
	.long	.LASF588
	.value	0x16f
	.uleb128 0x1
	.long	.LASF589
	.value	0x170
	.uleb128 0x1
	.long	.LASF590
	.value	0x171
	.uleb128 0x1
	.long	.LASF591
	.value	0x172
	.uleb128 0x1
	.long	.LASF592
	.value	0x173
	.uleb128 0x1
	.long	.LASF593
	.value	0x174
	.uleb128 0x1
	.long	.LASF594
	.value	0x175
	.uleb128 0x1
	.long	.LASF595
	.value	0x176
	.uleb128 0x1
	.long	.LASF596
	.value	0x177
	.uleb128 0x1
	.long	.LASF597
	.value	0x178
	.uleb128 0x1
	.long	.LASF598
	.value	0x179
	.uleb128 0x1
	.long	.LASF599
	.value	0x17a
	.uleb128 0x1
	.long	.LASF600
	.value	0x17b
	.uleb128 0x1
	.long	.LASF601
	.value	0x17c
	.uleb128 0x1
	.long	.LASF602
	.value	0x17d
	.uleb128 0x1
	.long	.LASF603
	.value	0x17e
	.uleb128 0x1
	.long	.LASF604
	.value	0x17f
	.uleb128 0x1
	.long	.LASF605
	.value	0x180
	.uleb128 0x1
	.long	.LASF606
	.value	0x181
	.uleb128 0x1
	.long	.LASF607
	.value	0x182
	.uleb128 0x1
	.long	.LASF608
	.value	0x183
	.uleb128 0x1
	.long	.LASF609
	.value	0x184
	.uleb128 0x1
	.long	.LASF610
	.value	0x185
	.uleb128 0x1
	.long	.LASF611
	.value	0x186
	.uleb128 0x1
	.long	.LASF612
	.value	0x187
	.uleb128 0x1
	.long	.LASF613
	.value	0x188
	.uleb128 0x1
	.long	.LASF614
	.value	0x189
	.uleb128 0x1
	.long	.LASF615
	.value	0x18a
	.uleb128 0x1
	.long	.LASF616
	.value	0x18b
	.uleb128 0x1
	.long	.LASF617
	.value	0x18c
	.uleb128 0x1
	.long	.LASF618
	.value	0x18d
	.uleb128 0x1
	.long	.LASF619
	.value	0x18e
	.uleb128 0x1
	.long	.LASF620
	.value	0x18f
	.uleb128 0x1
	.long	.LASF621
	.value	0x190
	.uleb128 0x1
	.long	.LASF622
	.value	0x191
	.uleb128 0x1
	.long	.LASF623
	.value	0x192
	.uleb128 0x1
	.long	.LASF624
	.value	0x193
	.uleb128 0x1
	.long	.LASF625
	.value	0x194
	.uleb128 0x1
	.long	.LASF626
	.value	0x195
	.uleb128 0x1
	.long	.LASF627
	.value	0x196
	.uleb128 0x1
	.long	.LASF628
	.value	0x197
	.uleb128 0x1
	.long	.LASF629
	.value	0x198
	.uleb128 0x1
	.long	.LASF630
	.value	0x199
	.uleb128 0x1
	.long	.LASF631
	.value	0x19a
	.uleb128 0x1
	.long	.LASF632
	.value	0x19b
	.uleb128 0x1
	.long	.LASF633
	.value	0x19c
	.uleb128 0x1
	.long	.LASF634
	.value	0x19d
	.uleb128 0x1
	.long	.LASF635
	.value	0x19e
	.uleb128 0x1
	.long	.LASF636
	.value	0x19f
	.uleb128 0x1
	.long	.LASF637
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF638
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF639
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF646
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF647
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF648
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF649
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF650
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF651
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF652
	.value	0x1af
	.uleb128 0x1
	.long	.LASF653
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF654
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF655
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF662
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF663
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF664
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF665
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF666
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF667
	.value	0x1be
	.uleb128 0x1
	.long	.LASF668
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF669
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF670
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF671
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF678
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF679
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF680
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF681
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF682
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF683
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF684
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF685
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF686
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF687
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF694
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF695
	.value	0x1da
	.uleb128 0x1
	.long	.LASF696
	.value	0x1db
	.uleb128 0x1
	.long	.LASF697
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF698
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF699
	.value	0x1de
	.uleb128 0x1
	.long	.LASF700
	.value	0x1df
	.uleb128 0x1
	.long	.LASF701
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF702
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF703
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF710
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF711
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF712
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF713
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF717
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF718
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF719
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF726
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF727
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF728
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF729
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF730
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF731
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF732
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF733
	.value	0x200
	.uleb128 0x1
	.long	.LASF734
	.value	0x201
	.uleb128 0x1
	.long	.LASF735
	.value	0x202
	.uleb128 0x1
	.long	.LASF736
	.value	0x203
	.uleb128 0x1
	.long	.LASF737
	.value	0x204
	.uleb128 0x1
	.long	.LASF738
	.value	0x205
	.uleb128 0x1
	.long	.LASF739
	.value	0x206
	.uleb128 0x1
	.long	.LASF740
	.value	0x207
	.uleb128 0x1
	.long	.LASF741
	.value	0x208
	.uleb128 0x1
	.long	.LASF742
	.value	0x209
	.uleb128 0x1
	.long	.LASF743
	.value	0x20a
	.uleb128 0x1
	.long	.LASF744
	.value	0x20b
	.uleb128 0x1
	.long	.LASF745
	.value	0x20c
	.uleb128 0x1
	.long	.LASF746
	.value	0x20d
	.uleb128 0x1
	.long	.LASF747
	.value	0x20e
	.uleb128 0x1
	.long	.LASF748
	.value	0x20f
	.uleb128 0x1
	.long	.LASF749
	.value	0x210
	.uleb128 0x1
	.long	.LASF750
	.value	0x211
	.uleb128 0x1
	.long	.LASF751
	.value	0x212
	.uleb128 0x1
	.long	.LASF752
	.value	0x213
	.uleb128 0x1
	.long	.LASF753
	.value	0x214
	.uleb128 0x1
	.long	.LASF754
	.value	0x215
	.uleb128 0x1
	.long	.LASF755
	.value	0x216
	.uleb128 0x1
	.long	.LASF756
	.value	0x217
	.uleb128 0x1
	.long	.LASF757
	.value	0x218
	.uleb128 0x1
	.long	.LASF758
	.value	0x219
	.uleb128 0x1
	.long	.LASF759
	.value	0x21a
	.uleb128 0x1
	.long	.LASF760
	.value	0x21b
	.uleb128 0x1
	.long	.LASF761
	.value	0x21c
	.uleb128 0x1
	.long	.LASF762
	.value	0x21d
	.uleb128 0x1
	.long	.LASF763
	.value	0x21e
	.uleb128 0x1
	.long	.LASF764
	.value	0x21f
	.uleb128 0x1
	.long	.LASF765
	.value	0x220
	.uleb128 0x1
	.long	.LASF766
	.value	0x221
	.uleb128 0x1
	.long	.LASF767
	.value	0x222
	.uleb128 0x1
	.long	.LASF768
	.value	0x223
	.uleb128 0x1
	.long	.LASF769
	.value	0x224
	.uleb128 0x1
	.long	.LASF770
	.value	0x225
	.uleb128 0x1
	.long	.LASF771
	.value	0x226
	.uleb128 0x1
	.long	.LASF772
	.value	0x227
	.uleb128 0x1
	.long	.LASF773
	.value	0x228
	.uleb128 0x1
	.long	.LASF774
	.value	0x229
	.uleb128 0x1
	.long	.LASF775
	.value	0x22a
	.uleb128 0x1
	.long	.LASF776
	.value	0x22b
	.uleb128 0x1
	.long	.LASF777
	.value	0x22c
	.uleb128 0x1
	.long	.LASF778
	.value	0x22d
	.uleb128 0x1
	.long	.LASF779
	.value	0x22e
	.uleb128 0x1
	.long	.LASF780
	.value	0x22f
	.uleb128 0x1
	.long	.LASF781
	.value	0x230
	.uleb128 0x1
	.long	.LASF782
	.value	0x231
	.uleb128 0x1
	.long	.LASF783
	.value	0x232
	.uleb128 0x1
	.long	.LASF784
	.value	0x233
	.uleb128 0x1
	.long	.LASF785
	.value	0x234
	.uleb128 0x1
	.long	.LASF786
	.value	0x235
	.uleb128 0x1
	.long	.LASF787
	.value	0x236
	.uleb128 0x1
	.long	.LASF788
	.value	0x237
	.uleb128 0x1
	.long	.LASF789
	.value	0x238
	.uleb128 0x1
	.long	.LASF790
	.value	0x239
	.uleb128 0x1
	.long	.LASF791
	.value	0x23a
	.uleb128 0x1
	.long	.LASF792
	.value	0x23b
	.uleb128 0x1
	.long	.LASF793
	.value	0x23c
	.uleb128 0x1
	.long	.LASF794
	.value	0x23d
	.uleb128 0x1
	.long	.LASF795
	.value	0x23e
	.uleb128 0x1
	.long	.LASF796
	.value	0x23f
	.uleb128 0x1
	.long	.LASF797
	.value	0x240
	.uleb128 0x1
	.long	.LASF798
	.value	0x241
	.uleb128 0x1
	.long	.LASF799
	.value	0x242
	.uleb128 0x1
	.long	.LASF800
	.value	0x243
	.uleb128 0x1
	.long	.LASF801
	.value	0x244
	.uleb128 0x1
	.long	.LASF802
	.value	0x245
	.uleb128 0x1
	.long	.LASF803
	.value	0x246
	.uleb128 0x1
	.long	.LASF804
	.value	0x247
	.uleb128 0x1
	.long	.LASF805
	.value	0x248
	.uleb128 0x1
	.long	.LASF806
	.value	0x249
	.uleb128 0x1
	.long	.LASF807
	.value	0x24a
	.uleb128 0x1
	.long	.LASF808
	.value	0x24b
	.uleb128 0x1
	.long	.LASF809
	.value	0x24c
	.uleb128 0x1
	.long	.LASF810
	.value	0x24d
	.uleb128 0x1
	.long	.LASF811
	.value	0x24e
	.uleb128 0x1
	.long	.LASF812
	.value	0x24f
	.uleb128 0x1
	.long	.LASF813
	.value	0x250
	.uleb128 0x1
	.long	.LASF814
	.value	0x251
	.uleb128 0x1
	.long	.LASF815
	.value	0x252
	.uleb128 0x1
	.long	.LASF816
	.value	0x253
	.uleb128 0x1
	.long	.LASF817
	.value	0x254
	.uleb128 0x1
	.long	.LASF818
	.value	0x255
	.uleb128 0x1
	.long	.LASF819
	.value	0x256
	.uleb128 0x1
	.long	.LASF820
	.value	0x257
	.uleb128 0x1
	.long	.LASF821
	.value	0x258
	.uleb128 0x1
	.long	.LASF822
	.value	0x259
	.uleb128 0x1
	.long	.LASF823
	.value	0x25a
	.uleb128 0x1
	.long	.LASF824
	.value	0x25b
	.uleb128 0x1
	.long	.LASF825
	.value	0x25c
	.uleb128 0x1
	.long	.LASF826
	.value	0x25d
	.uleb128 0x1
	.long	.LASF827
	.value	0x25e
	.uleb128 0x1
	.long	.LASF828
	.value	0x25f
	.uleb128 0x1
	.long	.LASF829
	.value	0x260
	.uleb128 0x1
	.long	.LASF830
	.value	0x261
	.uleb128 0x1
	.long	.LASF831
	.value	0x262
	.uleb128 0x1
	.long	.LASF832
	.value	0x263
	.uleb128 0x1
	.long	.LASF833
	.value	0x264
	.uleb128 0x1
	.long	.LASF834
	.value	0x265
	.uleb128 0x1
	.long	.LASF835
	.value	0x266
	.uleb128 0x1
	.long	.LASF836
	.value	0x267
	.uleb128 0x1
	.long	.LASF837
	.value	0x268
	.uleb128 0x1
	.long	.LASF838
	.value	0x269
	.uleb128 0x1
	.long	.LASF839
	.value	0x26a
	.uleb128 0x1
	.long	.LASF840
	.value	0x26b
	.uleb128 0x1
	.long	.LASF841
	.value	0x26c
	.uleb128 0x1
	.long	.LASF842
	.value	0x26d
	.uleb128 0x1
	.long	.LASF843
	.value	0x26e
	.uleb128 0x1
	.long	.LASF844
	.value	0x26f
	.uleb128 0x1
	.long	.LASF845
	.value	0x270
	.uleb128 0x1
	.long	.LASF846
	.value	0x271
	.uleb128 0x1
	.long	.LASF847
	.value	0x272
	.uleb128 0x1
	.long	.LASF848
	.value	0x273
	.uleb128 0x1
	.long	.LASF849
	.value	0x274
	.uleb128 0x1
	.long	.LASF850
	.value	0x275
	.uleb128 0x1
	.long	.LASF851
	.value	0x276
	.uleb128 0x1
	.long	.LASF852
	.value	0x277
	.uleb128 0x1
	.long	.LASF853
	.value	0x278
	.uleb128 0x1
	.long	.LASF854
	.value	0x279
	.uleb128 0x1
	.long	.LASF855
	.value	0x27a
	.uleb128 0x1
	.long	.LASF856
	.value	0x27b
	.uleb128 0x1
	.long	.LASF857
	.value	0x27c
	.uleb128 0x1
	.long	.LASF858
	.value	0x27d
	.uleb128 0x1
	.long	.LASF859
	.value	0x27e
	.uleb128 0x1
	.long	.LASF860
	.value	0x27f
	.uleb128 0x1
	.long	.LASF861
	.value	0x280
	.uleb128 0x1
	.long	.LASF862
	.value	0x281
	.uleb128 0x1
	.long	.LASF863
	.value	0x282
	.uleb128 0x1
	.long	.LASF864
	.value	0x283
	.uleb128 0x1
	.long	.LASF865
	.value	0x284
	.uleb128 0x1
	.long	.LASF866
	.value	0x285
	.uleb128 0x1
	.long	.LASF867
	.value	0x286
	.uleb128 0x1
	.long	.LASF868
	.value	0x287
	.uleb128 0x1
	.long	.LASF869
	.value	0x288
	.uleb128 0x1
	.long	.LASF870
	.value	0x289
	.uleb128 0x1
	.long	.LASF871
	.value	0x28a
	.uleb128 0x1
	.long	.LASF872
	.value	0x28b
	.uleb128 0x1
	.long	.LASF873
	.value	0x28c
	.uleb128 0x1
	.long	.LASF874
	.value	0x28d
	.uleb128 0x1
	.long	.LASF875
	.value	0x28e
	.uleb128 0x1
	.long	.LASF876
	.value	0x28f
	.uleb128 0x1
	.long	.LASF877
	.value	0x290
	.uleb128 0x1
	.long	.LASF878
	.value	0x291
	.uleb128 0x1
	.long	.LASF879
	.value	0x292
	.uleb128 0x1
	.long	.LASF880
	.value	0x293
	.uleb128 0x1
	.long	.LASF881
	.value	0x294
	.uleb128 0x1
	.long	.LASF882
	.value	0x295
	.uleb128 0x1
	.long	.LASF883
	.value	0x296
	.uleb128 0x1
	.long	.LASF884
	.value	0x297
	.uleb128 0x1
	.long	.LASF885
	.value	0x298
	.uleb128 0x1
	.long	.LASF886
	.value	0x299
	.uleb128 0x1
	.long	.LASF887
	.value	0x29a
	.uleb128 0x1
	.long	.LASF888
	.value	0x29b
	.uleb128 0x1
	.long	.LASF889
	.value	0x29c
	.uleb128 0x1
	.long	.LASF890
	.value	0x29d
	.uleb128 0x1
	.long	.LASF891
	.value	0x29e
	.uleb128 0x1
	.long	.LASF892
	.value	0x29f
	.uleb128 0x1
	.long	.LASF893
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF894
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF895
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF902
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF903
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF904
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF905
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF906
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF907
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF908
	.value	0x2af
	.uleb128 0x1
	.long	.LASF909
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF910
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF911
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF918
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF919
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF920
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF921
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF922
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF923
	.value	0x2be
	.uleb128 0x1
	.long	.LASF924
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF925
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF926
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF927
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF934
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF935
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF936
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF937
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF938
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF939
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF940
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF941
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF942
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF943
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF950
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF951
	.value	0x2da
	.uleb128 0x1
	.long	.LASF952
	.value	0x2db
	.uleb128 0x1
	.long	.LASF953
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF954
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF955
	.value	0x2de
	.uleb128 0x1
	.long	.LASF956
	.value	0x2df
	.uleb128 0x1
	.long	.LASF957
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF958
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF959
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF966
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF967
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF968
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF969
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF973
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF974
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF975
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF982
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF983
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF984
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF985
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF986
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF987
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF988
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF989
	.value	0x300
	.uleb128 0x1
	.long	.LASF990
	.value	0x301
	.uleb128 0x1
	.long	.LASF991
	.value	0x302
	.uleb128 0x1
	.long	.LASF992
	.value	0x303
	.uleb128 0x1
	.long	.LASF993
	.value	0x304
	.uleb128 0x1
	.long	.LASF994
	.value	0x305
	.uleb128 0x1
	.long	.LASF995
	.value	0x306
	.uleb128 0x1
	.long	.LASF996
	.value	0x307
	.uleb128 0x1
	.long	.LASF997
	.value	0x308
	.uleb128 0x1
	.long	.LASF998
	.value	0x309
	.uleb128 0x1
	.long	.LASF999
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1000
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1001
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1002
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1004
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1005
	.value	0x310
	.uleb128 0x1
	.long	.LASF1006
	.value	0x311
	.uleb128 0x1
	.long	.LASF1007
	.value	0x312
	.uleb128 0x1
	.long	.LASF1008
	.value	0x313
	.uleb128 0x1
	.long	.LASF1009
	.value	0x314
	.uleb128 0x1
	.long	.LASF1010
	.value	0x315
	.uleb128 0x1
	.long	.LASF1011
	.value	0x316
	.uleb128 0x1
	.long	.LASF1012
	.value	0x317
	.uleb128 0x1
	.long	.LASF1013
	.value	0x318
	.uleb128 0x1
	.long	.LASF1014
	.value	0x319
	.uleb128 0x1
	.long	.LASF1015
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1016
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1017
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1018
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1020
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1021
	.value	0x320
	.uleb128 0x1
	.long	.LASF1022
	.value	0x321
	.uleb128 0x1
	.long	.LASF1023
	.value	0x322
	.uleb128 0x1
	.long	.LASF1024
	.value	0x323
	.uleb128 0x1
	.long	.LASF1025
	.value	0x324
	.uleb128 0x1
	.long	.LASF1026
	.value	0x325
	.uleb128 0x1
	.long	.LASF1027
	.value	0x326
	.uleb128 0x1
	.long	.LASF1028
	.value	0x327
	.uleb128 0x1
	.long	.LASF1029
	.value	0x328
	.uleb128 0x1
	.long	.LASF1030
	.value	0x329
	.uleb128 0x1
	.long	.LASF1031
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1032
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1033
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1034
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1036
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1037
	.value	0x330
	.uleb128 0x1
	.long	.LASF1038
	.value	0x331
	.uleb128 0x1
	.long	.LASF1039
	.value	0x332
	.uleb128 0x1
	.long	.LASF1040
	.value	0x333
	.uleb128 0x1
	.long	.LASF1041
	.value	0x334
	.uleb128 0x1
	.long	.LASF1042
	.value	0x335
	.uleb128 0x1
	.long	.LASF1043
	.value	0x336
	.uleb128 0x1
	.long	.LASF1044
	.value	0x337
	.uleb128 0x1
	.long	.LASF1045
	.value	0x338
	.uleb128 0x1
	.long	.LASF1046
	.value	0x339
	.uleb128 0x1
	.long	.LASF1047
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1048
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1049
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1050
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1052
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1053
	.value	0x340
	.uleb128 0x1
	.long	.LASF1054
	.value	0x341
	.uleb128 0x1
	.long	.LASF1055
	.value	0x342
	.uleb128 0x1
	.long	.LASF1056
	.value	0x343
	.uleb128 0x1
	.long	.LASF1057
	.value	0x344
	.uleb128 0x1
	.long	.LASF1058
	.value	0x345
	.uleb128 0x1
	.long	.LASF1059
	.value	0x346
	.uleb128 0x1
	.long	.LASF1060
	.value	0x347
	.uleb128 0x1
	.long	.LASF1061
	.value	0x348
	.uleb128 0x1
	.long	.LASF1062
	.value	0x349
	.uleb128 0x1
	.long	.LASF1063
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1064
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1065
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1066
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1068
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1069
	.value	0x350
	.uleb128 0x1
	.long	.LASF1070
	.value	0x351
	.uleb128 0x1
	.long	.LASF1071
	.value	0x352
	.uleb128 0x1
	.long	.LASF1072
	.value	0x353
	.uleb128 0x1
	.long	.LASF1073
	.value	0x354
	.uleb128 0x1
	.long	.LASF1074
	.value	0x355
	.uleb128 0x1
	.long	.LASF1075
	.value	0x356
	.uleb128 0x1
	.long	.LASF1076
	.value	0x357
	.uleb128 0x1
	.long	.LASF1077
	.value	0x358
	.uleb128 0x1
	.long	.LASF1078
	.value	0x359
	.uleb128 0x1
	.long	.LASF1079
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1080
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1081
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1082
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1084
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1085
	.value	0x360
	.uleb128 0x1
	.long	.LASF1086
	.value	0x361
	.uleb128 0x1
	.long	.LASF1087
	.value	0x362
	.uleb128 0x1
	.long	.LASF1088
	.value	0x363
	.uleb128 0x1
	.long	.LASF1089
	.value	0x364
	.uleb128 0x1
	.long	.LASF1090
	.value	0x365
	.uleb128 0x1
	.long	.LASF1091
	.value	0x366
	.uleb128 0x1
	.long	.LASF1092
	.value	0x367
	.uleb128 0x1
	.long	.LASF1093
	.value	0x368
	.uleb128 0x1
	.long	.LASF1094
	.value	0x369
	.uleb128 0x1
	.long	.LASF1095
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1096
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1097
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1098
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1100
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1101
	.value	0x370
	.uleb128 0x1
	.long	.LASF1102
	.value	0x371
	.uleb128 0x1
	.long	.LASF1103
	.value	0x372
	.uleb128 0x1
	.long	.LASF1104
	.value	0x373
	.uleb128 0x1
	.long	.LASF1105
	.value	0x374
	.uleb128 0x1
	.long	.LASF1106
	.value	0x375
	.uleb128 0x1
	.long	.LASF1107
	.value	0x376
	.uleb128 0x1
	.long	.LASF1108
	.value	0x377
	.uleb128 0x1
	.long	.LASF1109
	.value	0x378
	.uleb128 0x1
	.long	.LASF1110
	.value	0x379
	.uleb128 0x1
	.long	.LASF1111
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1112
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1113
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1114
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1116
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1117
	.value	0x380
	.uleb128 0x1
	.long	.LASF1118
	.value	0x381
	.uleb128 0x1
	.long	.LASF1119
	.value	0x382
	.uleb128 0x1
	.long	.LASF1120
	.value	0x383
	.uleb128 0x1
	.long	.LASF1121
	.value	0x384
	.uleb128 0x1
	.long	.LASF1122
	.value	0x385
	.uleb128 0x1
	.long	.LASF1123
	.value	0x386
	.uleb128 0x1
	.long	.LASF1124
	.value	0x387
	.uleb128 0x1
	.long	.LASF1125
	.value	0x388
	.uleb128 0x1
	.long	.LASF1126
	.value	0x389
	.uleb128 0x1
	.long	.LASF1127
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1128
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1129
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1130
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1132
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1133
	.value	0x390
	.uleb128 0x1
	.long	.LASF1134
	.value	0x391
	.uleb128 0x1
	.long	.LASF1135
	.value	0x392
	.uleb128 0x1
	.long	.LASF1136
	.value	0x393
	.uleb128 0x1
	.long	.LASF1137
	.value	0x394
	.uleb128 0x1
	.long	.LASF1138
	.value	0x395
	.uleb128 0x1
	.long	.LASF1139
	.value	0x396
	.uleb128 0x1
	.long	.LASF1140
	.value	0x397
	.uleb128 0x1
	.long	.LASF1141
	.value	0x398
	.uleb128 0x1
	.long	.LASF1142
	.value	0x399
	.uleb128 0x1
	.long	.LASF1143
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1144
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1145
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1146
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1148
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3c7
	.byte	0
	.uleb128 0x18
	.long	.LASF1189
	.byte	0xa
	.value	0x478
	.long	0x761
	.uleb128 0x24
	.byte	0x38
	.value	0x47b
	.long	0x215d
	.uleb128 0x5
	.long	.LASF1190
	.byte	0xa
	.value	0x47d
	.byte	0xf
	.long	0x755
	.byte	0
	.uleb128 0x5
	.long	.LASF1191
	.byte	0xa
	.value	0x47e
	.byte	0xa
	.long	0x137
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1192
	.byte	0xa
	.value	0x47f
	.byte	0xa
	.long	0x137
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1193
	.byte	0xa
	.value	0x481
	.byte	0xf
	.long	0x347
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1194
	.byte	0xa
	.value	0x482
	.byte	0x10
	.long	0x20e6
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1195
	.byte	0xa
	.value	0x483
	.byte	0xa
	.long	0x137
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1196
	.byte	0xa
	.value	0x483
	.byte	0x11
	.long	0x137
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.long	.LASF1197
	.byte	0xa
	.value	0x484
	.long	0x20f2
	.uleb128 0xb
	.long	0x215d
	.long	0x217a
	.uleb128 0x20
	.long	0x43
	.value	0x3c6
	.byte	0
	.uleb128 0x1a
	.long	.LASF1198
	.byte	0xa
	.value	0x486
	.byte	0x10
	.long	0x2169
	.uleb128 0x2e
	.byte	0x7
	.byte	0x4
	.long	0x84
	.byte	0xa
	.value	0x48b
	.byte	0xe
	.long	0x24d3
	.uleb128 0x2
	.long	.LASF1199
	.byte	0
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1209
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1210
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1211
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1212
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1213
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1214
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x89
	.byte	0
	.uleb128 0x18
	.long	.LASF1337
	.byte	0xa
	.value	0x517
	.long	0x2187
	.uleb128 0x24
	.byte	0x5c
	.value	0x519
	.long	0x262a
	.uleb128 0x5
	.long	.LASF1338
	.byte	0xa
	.value	0x51b
	.byte	0x9
	.long	0x114
	.byte	0
	.uleb128 0x5
	.long	.LASF1339
	.byte	0xa
	.value	0x51c
	.byte	0x9
	.long	0x114
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1340
	.byte	0xa
	.value	0x51d
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1341
	.byte	0xa
	.value	0x51e
	.byte	0x9
	.long	0x114
	.byte	0xc
	.uleb128 0x5
	.long	.LASF1342
	.byte	0xa
	.value	0x51f
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1343
	.byte	0xa
	.value	0x520
	.byte	0x9
	.long	0x114
	.byte	0x14
	.uleb128 0x5
	.long	.LASF1344
	.byte	0xa
	.value	0x521
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1345
	.byte	0xa
	.value	0x522
	.byte	0x9
	.long	0x114
	.byte	0x1c
	.uleb128 0x5
	.long	.LASF1346
	.byte	0xa
	.value	0x523
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1347
	.byte	0xa
	.value	0x524
	.byte	0x9
	.long	0x114
	.byte	0x24
	.uleb128 0x5
	.long	.LASF1348
	.byte	0xa
	.value	0x525
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1349
	.byte	0xa
	.value	0x526
	.byte	0x9
	.long	0x114
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF1350
	.byte	0xa
	.value	0x527
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0x5
	.long	.LASF1351
	.byte	0xa
	.value	0x528
	.byte	0x9
	.long	0x114
	.byte	0x34
	.uleb128 0x5
	.long	.LASF1352
	.byte	0xa
	.value	0x529
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0x5
	.long	.LASF1353
	.byte	0xa
	.value	0x52a
	.byte	0x9
	.long	0x114
	.byte	0x3c
	.uleb128 0x5
	.long	.LASF1354
	.byte	0xa
	.value	0x52b
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0x5
	.long	.LASF1355
	.byte	0xa
	.value	0x52c
	.byte	0x9
	.long	0x114
	.byte	0x44
	.uleb128 0x5
	.long	.LASF1356
	.byte	0xa
	.value	0x52d
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0x5
	.long	.LASF1357
	.byte	0xa
	.value	0x52e
	.byte	0x9
	.long	0x114
	.byte	0x4c
	.uleb128 0x5
	.long	.LASF1358
	.byte	0xa
	.value	0x52f
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0x5
	.long	.LASF1359
	.byte	0xa
	.value	0x530
	.byte	0x9
	.long	0x114
	.byte	0x54
	.uleb128 0x5
	.long	.LASF1360
	.byte	0xa
	.value	0x531
	.byte	0x9
	.long	0x114
	.byte	0x58
	.byte	0
	.uleb128 0x18
	.long	.LASF1361
	.byte	0xa
	.value	0x533
	.long	0x24df
	.uleb128 0xb
	.long	0x262a
	.long	0x2646
	.uleb128 0xc
	.long	0x43
	.byte	0x88
	.byte	0
	.uleb128 0x1a
	.long	.LASF1362
	.byte	0xa
	.value	0x535
	.byte	0x13
	.long	0x2636
	.uleb128 0xd
	.long	0x84
	.byte	0xb
	.byte	0x76
	.byte	0x1
	.long	0x2731
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1371
	.value	0x100
	.uleb128 0x1
	.long	.LASF1372
	.value	0x200
	.uleb128 0x1
	.long	.LASF1373
	.value	0x400
	.uleb128 0x1
	.long	.LASF1374
	.value	0x800
	.uleb128 0x1
	.long	.LASF1375
	.value	0x1000
	.uleb128 0x1
	.long	.LASF1376
	.value	0x2000
	.uleb128 0x1
	.long	.LASF1377
	.value	0x4000
	.uleb128 0x1
	.long	.LASF1378
	.value	0x8000
	.uleb128 0xf
	.long	.LASF1379
	.long	0x10000
	.uleb128 0xf
	.long	.LASF1380
	.long	0x20000
	.uleb128 0xf
	.long	.LASF1381
	.long	0x40000
	.uleb128 0xf
	.long	.LASF1382
	.long	0x80000
	.uleb128 0xf
	.long	.LASF1383
	.long	0x100000
	.uleb128 0xf
	.long	.LASF1384
	.long	0x200000
	.uleb128 0xf
	.long	.LASF1385
	.long	0x400000
	.uleb128 0xf
	.long	.LASF1386
	.long	0x800000
	.uleb128 0xf
	.long	.LASF1387
	.long	0x1000000
	.uleb128 0xf
	.long	.LASF1388
	.long	0x2000000
	.uleb128 0xf
	.long	.LASF1389
	.long	0xc000000
	.uleb128 0x2
	.long	.LASF1390
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.long	.LASF1392
	.byte	0xe0
	.byte	0xb
	.byte	0xcf
	.long	0x2908
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xb
	.byte	0xd2
	.byte	0x10
	.long	0x398
	.byte	0
	.uleb128 0xa
	.string	"x"
	.byte	0xb
	.byte	0xd5
	.byte	0xe
	.long	0x282
	.byte	0x18
	.uleb128 0xa
	.string	"y"
	.byte	0xb
	.byte	0xd6
	.byte	0xe
	.long	0x282
	.byte	0x1c
	.uleb128 0xa
	.string	"z"
	.byte	0xb
	.byte	0xd7
	.byte	0xe
	.long	0x282
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xb
	.byte	0xda
	.byte	0x14
	.long	0x2908
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xb
	.byte	0xdb
	.byte	0x14
	.long	0x2908
	.byte	0x30
	.uleb128 0x3
	.long	.LASF77
	.byte	0xb
	.byte	0xde
	.byte	0xe
	.long	0x2bc
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1190
	.byte	0xb
	.byte	0xdf
	.byte	0x12
	.long	0x755
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1191
	.byte	0xb
	.byte	0xe0
	.byte	0xb
	.long	0x114
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xb
	.byte	0xe4
	.byte	0x14
	.long	0x2908
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xb
	.byte	0xe5
	.byte	0x14
	.long	0x2908
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xb
	.byte	0xe7
	.byte	0x19
	.long	0x2941
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xb
	.byte	0xea
	.byte	0xe
	.long	0x282
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xb
	.byte	0xeb
	.byte	0xe
	.long	0x282
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xb
	.byte	0xee
	.byte	0xe
	.long	0x282
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xb
	.byte	0xef
	.byte	0xe
	.long	0x282
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xb
	.byte	0xf2
	.byte	0xe
	.long	0x282
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xb
	.byte	0xf3
	.byte	0xe
	.long	0x282
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xb
	.byte	0xf4
	.byte	0xe
	.long	0x282
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xb
	.byte	0xf7
	.byte	0xb
	.long	0x114
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF78
	.byte	0xb
	.byte	0xf9
	.byte	0x11
	.long	0x24d3
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xb
	.byte	0xfa
	.byte	0x12
	.long	0x2946
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1192
	.byte	0xb
	.byte	0xfc
	.byte	0xb
	.long	0x114
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xb
	.byte	0xfd
	.byte	0xf
	.long	0x294b
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xb
	.byte	0xfe
	.byte	0xb
	.long	0x114
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xb
	.byte	0xff
	.byte	0xb
	.long	0x114
	.byte	0xa4
	.uleb128 0x5
	.long	.LASF1408
	.byte	0xb
	.value	0x102
	.byte	0xb
	.long	0x114
	.byte	0xa8
	.uleb128 0x5
	.long	.LASF1409
	.byte	0xb
	.value	0x103
	.byte	0xb
	.long	0x114
	.byte	0xac
	.uleb128 0x5
	.long	.LASF1410
	.byte	0xb
	.value	0x107
	.byte	0x14
	.long	0x2908
	.byte	0xb0
	.uleb128 0x5
	.long	.LASF1343
	.byte	0xb
	.value	0x10b
	.byte	0xb
	.long	0x114
	.byte	0xb8
	.uleb128 0x5
	.long	.LASF1411
	.byte	0xb
	.value	0x10f
	.byte	0xb
	.long	0x114
	.byte	0xbc
	.uleb128 0x5
	.long	.LASF1412
	.byte	0xb
	.value	0x113
	.byte	0x16
	.long	0x2b25
	.byte	0xc0
	.uleb128 0x5
	.long	.LASF1413
	.byte	0xb
	.value	0x116
	.byte	0xb
	.long	0x114
	.byte	0xc8
	.uleb128 0x5
	.long	.LASF1414
	.byte	0xb
	.value	0x119
	.byte	0x11
	.long	0x3fa
	.byte	0xcc
	.uleb128 0x5
	.long	.LASF1415
	.byte	0xb
	.value	0x11c
	.byte	0x14
	.long	0x2908
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x2731
	.uleb128 0x19
	.long	.LASF1416
	.byte	0x10
	.byte	0xc
	.byte	0xe3
	.long	0x2941
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xc
	.byte	0xe5
	.byte	0xf
	.long	0x2d67
	.byte	0
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xc
	.byte	0xe6
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xc
	.byte	0xe7
	.byte	0xb
	.long	0x101
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x290d
	.uleb128 0x8
	.long	0x262a
	.uleb128 0x8
	.long	0x215d
	.uleb128 0x2f
	.long	.LASF1420
	.value	0x140
	.byte	0xd
	.byte	0x53
	.byte	0x10
	.long	0x2b25
	.uleb128 0xa
	.string	"mo"
	.byte	0xd
	.byte	0x55
	.byte	0xe
	.long	0x2c7d
	.byte	0
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xd
	.byte	0x56
	.byte	0x13
	.long	0x2e54
	.byte	0x8
	.uleb128 0xa
	.string	"cmd"
	.byte	0xd
	.byte	0x57
	.byte	0xf
	.long	0x108
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0x282
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xd
	.byte	0x5e
	.byte	0xe
	.long	0x282
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xd
	.byte	0x60
	.byte	0x16
	.long	0x282
	.byte	0x1c
	.uleb128 0xa
	.string	"bob"
	.byte	0xd
	.byte	0x62
	.byte	0x16
	.long	0x282
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xd
	.byte	0x66
	.byte	0xb
	.long	0x114
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xd
	.byte	0x67
	.byte	0xb
	.long	0x114
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x114
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x2e7f
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xd
	.byte	0x6d
	.byte	0xe
	.long	0x2e8f
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xd
	.byte	0x6e
	.byte	0xe
	.long	0x8b
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xd
	.byte	0x71
	.byte	0xb
	.long	0x2c82
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xd
	.byte	0x72
	.byte	0x12
	.long	0x200
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xd
	.byte	0x75
	.byte	0x12
	.long	0x200
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xd
	.byte	0x77
	.byte	0xe
	.long	0x2e9f
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xd
	.byte	0x78
	.byte	0xb
	.long	0x2c82
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xd
	.byte	0x79
	.byte	0xb
	.long	0x2c82
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xd
	.byte	0x7c
	.byte	0xb
	.long	0x114
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xd
	.byte	0x7d
	.byte	0xb
	.long	0x114
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xd
	.byte	0x81
	.byte	0xb
	.long	0x114
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x114
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xd
	.byte	0x87
	.byte	0xb
	.long	0x114
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xd
	.byte	0x88
	.byte	0xb
	.long	0x114
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xd
	.byte	0x89
	.byte	0xb
	.long	0x114
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xd
	.byte	0x8c
	.byte	0xc
	.long	0x13e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xd
	.byte	0x8f
	.byte	0xb
	.long	0x114
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xd
	.byte	0x90
	.byte	0xb
	.long	0x114
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xd
	.byte	0x93
	.byte	0xe
	.long	0x2c7d
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xd
	.byte	0x96
	.byte	0xb
	.long	0x114
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0x114
	.byte	0xfc
	.uleb128 0x1c
	.long	.LASF1449
	.byte	0x9e
	.byte	0xb
	.long	0x114
	.value	0x100
	.uleb128 0x1c
	.long	.LASF1450
	.byte	0xa1
	.byte	0xf
	.long	0x2eaf
	.value	0x108
	.uleb128 0x1c
	.long	.LASF1451
	.byte	0xa4
	.byte	0xe
	.long	0x8b
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x2950
	.uleb128 0x18
	.long	.LASF1452
	.byte	0xb
	.value	0x11e
	.long	0x2731
	.uleb128 0x17
	.byte	0x8
	.byte	0xc
	.byte	0x47
	.long	0x2b55
	.uleb128 0xa
	.string	"x"
	.byte	0xc
	.byte	0x49
	.byte	0xd
	.long	0x282
	.byte	0
	.uleb128 0xa
	.string	"y"
	.byte	0xc
	.byte	0x4a
	.byte	0xd
	.long	0x282
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF1453
	.byte	0xc
	.byte	0x4c
	.byte	0x3
	.long	0x2b36
	.uleb128 0x17
	.byte	0x28
	.byte	0xc
	.byte	0x58
	.long	0x2b98
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xc
	.byte	0x5a
	.byte	0x10
	.long	0x398
	.byte	0
	.uleb128 0xa
	.string	"x"
	.byte	0xc
	.byte	0x5b
	.byte	0xe
	.long	0x282
	.byte	0x18
	.uleb128 0xa
	.string	"y"
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x282
	.byte	0x1c
	.uleb128 0xa
	.string	"z"
	.byte	0xc
	.byte	0x5d
	.byte	0xe
	.long	0x282
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1454
	.byte	0xc
	.byte	0x5f
	.byte	0x3
	.long	0x2b61
	.uleb128 0x17
	.byte	0x80
	.byte	0xc
	.byte	0x65
	.long	0x2c7d
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xc
	.byte	0x67
	.byte	0xd
	.long	0x282
	.byte	0
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xc
	.byte	0x68
	.byte	0xd
	.long	0x282
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xc
	.byte	0x6a
	.byte	0xb
	.long	0x101
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xc
	.byte	0x6b
	.byte	0xb
	.long	0x101
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x101
	.byte	0xe
	.uleb128 0xa
	.string	"tag"
	.byte	0xc
	.byte	0x6d
	.byte	0xb
	.long	0x101
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xc
	.byte	0x70
	.byte	0xa
	.long	0x114
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xc
	.byte	0x73
	.byte	0xd
	.long	0x2c7d
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xc
	.byte	0x76
	.byte	0xa
	.long	0x2c82
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xc
	.byte	0x79
	.byte	0x11
	.long	0x2b98
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xc
	.byte	0x7c
	.byte	0xa
	.long	0x114
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xc
	.byte	0x7f
	.byte	0xd
	.long	0x2c7d
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xc
	.byte	0x82
	.byte	0xb
	.long	0x127
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x114
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xc
	.byte	0x85
	.byte	0x15
	.long	0x2d51
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2b2a
	.uleb128 0xb
	.long	0x114
	.long	0x2c92
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.long	.LASF1469
	.byte	0x58
	.byte	0xc
	.byte	0xb3
	.long	0x2d51
	.uleb128 0xa
	.string	"v1"
	.byte	0xc
	.byte	0xb6
	.byte	0xf
	.long	0x2d9d
	.byte	0
	.uleb128 0xa
	.string	"v2"
	.byte	0xc
	.byte	0xb7
	.byte	0xf
	.long	0x2d9d
	.byte	0x8
	.uleb128 0xa
	.string	"dx"
	.byte	0xc
	.byte	0xba
	.byte	0xd
	.long	0x282
	.byte	0x10
	.uleb128 0xa
	.string	"dy"
	.byte	0xc
	.byte	0xbb
	.byte	0xd
	.long	0x282
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xc
	.byte	0xbe
	.byte	0xb
	.long	0x101
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xc
	.byte	0xbf
	.byte	0xb
	.long	0x101
	.byte	0x1a
	.uleb128 0xa
	.string	"tag"
	.byte	0xc
	.byte	0xc0
	.byte	0xb
	.long	0x101
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xc
	.byte	0xc4
	.byte	0xb
	.long	0x3a4
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xc
	.byte	0xc8
	.byte	0xd
	.long	0x2da2
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1472
	.byte	0xc
	.byte	0xcb
	.byte	0x11
	.long	0x2d91
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xc
	.byte	0xcf
	.byte	0xf
	.long	0x2d67
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1474
	.byte	0xc
	.byte	0xd0
	.byte	0xf
	.long	0x2d67
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xc
	.byte	0xd3
	.byte	0xa
	.long	0x114
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xc
	.byte	0xd6
	.byte	0xb
	.long	0x127
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x2d56
	.uleb128 0x8
	.long	0x2c92
	.uleb128 0x7
	.long	.LASF1475
	.byte	0xc
	.byte	0x87
	.byte	0x3
	.long	0x2ba4
	.uleb128 0x8
	.long	0x2d5b
	.uleb128 0xd
	.long	0x84
	.byte	0xc
	.byte	0xa9
	.byte	0x1
	.long	0x2d91
	.uleb128 0x2
	.long	.LASF1476
	.byte	0
	.uleb128 0x2
	.long	.LASF1477
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1478
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1479
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1480
	.byte	0xc
	.byte	0xaf
	.byte	0x3
	.long	0x2d6c
	.uleb128 0x8
	.long	0x2b55
	.uleb128 0xb
	.long	0x282
	.long	0x2db2
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1481
	.byte	0xc
	.byte	0xd7
	.byte	0x3
	.long	0x2c92
	.uleb128 0x7
	.long	.LASF1482
	.byte	0xc
	.byte	0xe9
	.byte	0x3
	.long	0x290d
	.uleb128 0x8
	.long	0x2db2
	.uleb128 0xd
	.long	0x84
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x2dee
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
	.uleb128 0x17
	.byte	0x18
	.byte	0xe
	.byte	0x44
	.long	0x2e29
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xe
	.byte	0x46
	.byte	0xe
	.long	0x294b
	.byte	0
	.uleb128 0x3
	.long	.LASF1192
	.byte	0xe
	.byte	0x47
	.byte	0xa
	.long	0x114
	.byte	0x8
	.uleb128 0xa
	.string	"sx"
	.byte	0xe
	.byte	0x48
	.byte	0xd
	.long	0x282
	.byte	0xc
	.uleb128 0xa
	.string	"sy"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0x282
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF1486
	.byte	0xe
	.byte	0x4b
	.byte	0x3
	.long	0x2dee
	.uleb128 0xd
	.long	0x84
	.byte	0xd
	.byte	0x36
	.byte	0x1
	.long	0x2e54
	.uleb128 0x2
	.long	.LASF1487
	.byte	0
	.uleb128 0x2
	.long	.LASF1488
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1489
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF1490
	.byte	0xd
	.byte	0x3e
	.byte	0x3
	.long	0x2e35
	.uleb128 0xd
	.long	0x84
	.byte	0xd
	.byte	0x45
	.byte	0x1
	.long	0x2e7f
	.uleb128 0x2
	.long	.LASF1491
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1492
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	0x114
	.long	0x2e8f
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x8b
	.long	0x2e9f
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x8b
	.long	0x2eaf
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x2e29
	.long	0x2ebf
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1494
	.byte	0xd
	.byte	0xa6
	.byte	0x3
	.long	0x2950
	.uleb128 0x8
	.long	0x2dbe
	.uleb128 0x8
	.long	0x2ebf
	.uleb128 0xb
	.long	0x3fa
	.long	0x2ee5
	.uleb128 0xc
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.long	.LASF1495
	.byte	0xf
	.byte	0x65
	.byte	0x13
	.long	0x2ed5
	.uleb128 0xb
	.long	0x114
	.long	0x2f01
	.uleb128 0xc
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.long	.LASF1496
	.byte	0xf
	.byte	0x66
	.byte	0xd
	.long	0x2ef1
	.uleb128 0x9
	.long	.LASF1497
	.byte	0xf
	.byte	0x67
	.byte	0xd
	.long	0x114
	.uleb128 0x9
	.long	.LASF1498
	.byte	0xf
	.byte	0x68
	.byte	0xd
	.long	0x114
	.uleb128 0x9
	.long	.LASF1499
	.byte	0xf
	.byte	0xd0
	.byte	0x11
	.long	0x2dca
	.uleb128 0x9
	.long	.LASF1500
	.byte	0xf
	.byte	0xdb
	.byte	0x10
	.long	0x2c7d
	.uleb128 0xd
	.long	0x84
	.byte	0x10
	.byte	0xb2
	.byte	0x1
	.long	0x31de
	.uleb128 0x2
	.long	.LASF1501
	.byte	0
	.uleb128 0x2
	.long	.LASF1502
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1503
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1505
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1506
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1508
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1509
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1511
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1512
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1513
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1514
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1515
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1516
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1522
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1523
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1529
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1530
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1533
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1534
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1535
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1536
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1537
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1539
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1580
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1581
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1582
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1583
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1584
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1587
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1588
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1589
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1590
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1591
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1592
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1593
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1594
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1595
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1596
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1597
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1598
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1599
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1600
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1601
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1602
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1603
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1604
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1605
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1606
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1607
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1608
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1609
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1610
	.byte	0x6d
	.byte	0
	.uleb128 0x9
	.long	.LASF1611
	.byte	0x11
	.byte	0x31
	.byte	0x11
	.long	0x8b
	.uleb128 0x9
	.long	.LASF1612
	.byte	0x11
	.byte	0x54
	.byte	0x19
	.long	0x16e
	.uleb128 0x9
	.long	.LASF1613
	.byte	0x11
	.byte	0x59
	.byte	0x19
	.long	0x8b
	.uleb128 0x9
	.long	.LASF1614
	.byte	0x11
	.byte	0x5c
	.byte	0x11
	.long	0x8b
	.uleb128 0x9
	.long	.LASF1615
	.byte	0x11
	.byte	0x60
	.byte	0x11
	.long	0x8b
	.uleb128 0x9
	.long	.LASF1616
	.byte	0x11
	.byte	0x9e
	.byte	0xd
	.long	0x114
	.uleb128 0x9
	.long	.LASF1617
	.byte	0x11
	.byte	0xa6
	.byte	0xd
	.long	0x114
	.uleb128 0x9
	.long	.LASF1618
	.byte	0x11
	.byte	0xa7
	.byte	0xc
	.long	0x114
	.uleb128 0x9
	.long	.LASF1619
	.byte	0x11
	.byte	0xac
	.byte	0xd
	.long	0x114
	.uleb128 0xb
	.long	0x2ebf
	.long	0x325a
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1620
	.byte	0x11
	.byte	0xd4
	.byte	0x11
	.long	0x324a
	.uleb128 0xb
	.long	0x8b
	.long	0x3276
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1621
	.byte	0x11
	.byte	0xd7
	.byte	0x12
	.long	0x3266
	.uleb128 0xb
	.long	0x3fa
	.long	0x3292
	.uleb128 0xc
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.long	.LASF1622
	.byte	0x11
	.byte	0xdc
	.byte	0x19
	.long	0x3282
	.uleb128 0x9
	.long	.LASF1623
	.byte	0x11
	.byte	0xdd
	.byte	0x15
	.long	0x32aa
	.uleb128 0x8
	.long	0x3fa
	.uleb128 0xb
	.long	0x3fa
	.long	0x32bf
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1624
	.byte	0x11
	.byte	0xe0
	.byte	0x19
	.long	0x32af
	.uleb128 0x1a
	.long	.LASF1625
	.byte	0x11
	.value	0x10b
	.byte	0xd
	.long	0x114
	.uleb128 0x30
	.long	.LASF1626
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.long	0x114
	.uleb128 0x9
	.byte	0x3
	.quad	test
	.uleb128 0x1b
	.long	0x2ee5
	.value	0x21c
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	itemrespawnque
	.uleb128 0x1b
	.long	0x2f01
	.value	0x21d
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	itemrespawntime
	.uleb128 0x1b
	.long	0x2f0d
	.value	0x21e
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	iquehead
	.uleb128 0x1b
	.long	0x2f19
	.value	0x21f
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	iquetail
	.uleb128 0x1a
	.long	.LASF1627
	.byte	0x1
	.value	0x329
	.byte	0x10
	.long	0x282
	.uleb128 0x11
	.long	.LASF1628
	.byte	0xf
	.byte	0xde
	.byte	0x1
	.long	0x282
	.long	0x3363
	.uleb128 0x4
	.long	0x2c7d
	.uleb128 0x4
	.long	0x2bc
	.uleb128 0x4
	.long	0x282
	.byte	0
	.uleb128 0x11
	.long	.LASF1629
	.byte	0x12
	.byte	0x7f
	.byte	0x1
	.long	0x2bc
	.long	0x3388
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.byte	0
	.uleb128 0x12
	.long	.LASF1633
	.byte	0x16
	.byte	0x59
	.byte	0x6
	.long	0x339b
	.uleb128 0x4
	.long	0x13e
	.uleb128 0x21
	.byte	0
	.uleb128 0x11
	.long	.LASF1630
	.byte	0x13
	.byte	0x2b
	.byte	0xe
	.long	0x127
	.long	0x33bb
	.uleb128 0x4
	.long	0x127
	.uleb128 0x4
	.long	0x33bb
	.uleb128 0x4
	.long	0x11b
	.byte	0
	.uleb128 0x8
	.long	0x33c0
	.uleb128 0x31
	.uleb128 0x25
	.long	.LASF1631
	.byte	0x14
	.uleb128 0x25
	.long	.LASF1632
	.byte	0x15
	.uleb128 0x12
	.long	.LASF1634
	.byte	0xf
	.byte	0x51
	.byte	0x6
	.long	0x33df
	.uleb128 0x4
	.long	0x2ed0
	.byte	0
	.uleb128 0x12
	.long	.LASF1635
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	0x33f1
	.uleb128 0x4
	.long	0x114
	.byte	0
	.uleb128 0x12
	.long	.LASF1636
	.byte	0xf
	.byte	0x4b
	.byte	0x6
	.long	0x3403
	.uleb128 0x4
	.long	0x3403
	.byte	0
	.uleb128 0x8
	.long	0x398
	.uleb128 0x12
	.long	.LASF1637
	.byte	0x17
	.byte	0x4a
	.byte	0x6
	.long	0x341a
	.uleb128 0x4
	.long	0x127
	.byte	0
	.uleb128 0x12
	.long	.LASF1638
	.byte	0xf
	.byte	0xc1
	.byte	0x6
	.long	0x342c
	.uleb128 0x4
	.long	0x2c7d
	.byte	0
	.uleb128 0x12
	.long	.LASF1639
	.byte	0xf
	.byte	0x4a
	.byte	0x6
	.long	0x343e
	.uleb128 0x4
	.long	0x3403
	.byte	0
	.uleb128 0x12
	.long	.LASF1640
	.byte	0xf
	.byte	0xc2
	.byte	0x6
	.long	0x3450
	.uleb128 0x4
	.long	0x2c7d
	.byte	0
	.uleb128 0x11
	.long	.LASF1641
	.byte	0x13
	.byte	0x3d
	.byte	0xe
	.long	0x127
	.long	0x3470
	.uleb128 0x4
	.long	0x127
	.uleb128 0x4
	.long	0x114
	.uleb128 0x4
	.long	0x11b
	.byte	0
	.uleb128 0x11
	.long	.LASF1642
	.byte	0x18
	.byte	0x30
	.byte	0x7
	.long	0x127
	.long	0x3490
	.uleb128 0x4
	.long	0x114
	.uleb128 0x4
	.long	0x114
	.uleb128 0x4
	.long	0x127
	.byte	0
	.uleb128 0x11
	.long	.LASF1643
	.byte	0x12
	.byte	0x8e
	.byte	0x1
	.long	0x2ecb
	.long	0x34ab
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.byte	0
	.uleb128 0x11
	.long	.LASF1644
	.byte	0xf
	.byte	0xd2
	.byte	0x9
	.long	0x8b
	.long	0x34cb
	.uleb128 0x4
	.long	0x2c7d
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.byte	0
	.uleb128 0x11
	.long	.LASF1645
	.byte	0xf
	.byte	0xa1
	.byte	0x9
	.long	0x282
	.long	0x34e6
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.byte	0
	.uleb128 0x11
	.long	.LASF1646
	.byte	0x6
	.byte	0x28
	.byte	0x9
	.long	0x282
	.long	0x3501
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.byte	0
	.uleb128 0x12
	.long	.LASF1647
	.byte	0xf
	.byte	0xd5
	.byte	0x6
	.long	0x3513
	.uleb128 0x4
	.long	0x2c7d
	.byte	0
	.uleb128 0x11
	.long	.LASF1648
	.byte	0xf
	.byte	0xd3
	.byte	0x9
	.long	0x8b
	.long	0x3533
	.uleb128 0x4
	.long	0x2c7d
	.uleb128 0x4
	.long	0x282
	.uleb128 0x4
	.long	0x282
	.byte	0
	.uleb128 0x12
	.long	.LASF1649
	.byte	0x17
	.byte	0x3b
	.byte	0x1
	.long	0x354a
	.uleb128 0x4
	.long	0x127
	.uleb128 0x4
	.long	0x114
	.byte	0
	.uleb128 0x32
	.long	.LASF1679
	.byte	0x19
	.byte	0x24
	.byte	0x5
	.long	0x114
	.uleb128 0x13
	.long	.LASF1655
	.value	0x3a7
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x35e5
	.uleb128 0xe
	.long	.LASF1650
	.value	0x3a8
	.byte	0xb
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF78
	.value	0x3a9
	.byte	0xe
	.long	0x24d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"th"
	.value	0x3ab
	.byte	0xd
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"an"
	.value	0x3ac
	.byte	0xd
	.long	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"x"
	.value	0x3ae
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"y"
	.value	0x3af
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"z"
	.value	0x3b0
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.long	.LASF1652
	.value	0x3b1
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.long	.LASF1665
	.value	0x379
	.long	0x2c7d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3660
	.uleb128 0xe
	.long	.LASF1650
	.value	0x37a
	.byte	0xb
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF1653
	.value	0x37b
	.byte	0xb
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF78
	.value	0x37c
	.byte	0xe
	.long	0x24d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"th"
	.value	0x37e
	.byte	0xd
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"an"
	.value	0x37f
	.byte	0xd
	.long	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF1654
	.value	0x380
	.byte	0xa
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x13
	.long	.LASF1656
	.value	0x364
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x368d
	.uleb128 0x14
	.string	"th"
	.value	0x364
	.byte	0x23
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF1657
	.value	0x347
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f0
	.uleb128 0x14
	.string	"x"
	.value	0x348
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"y"
	.value	0x349
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"z"
	.value	0x34a
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.long	.LASF1357
	.value	0x34b
	.byte	0x8
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"th"
	.value	0x34d
	.byte	0xd
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x13
	.long	.LASF1658
	.value	0x32c
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3744
	.uleb128 0x14
	.string	"x"
	.value	0x32d
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"y"
	.value	0x32e
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"z"
	.value	0x32f
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.string	"th"
	.value	0x331
	.byte	0xd
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x13
	.long	.LASF1659
	.value	0x2c4
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x37c4
	.uleb128 0xe
	.long	.LASF1660
	.value	0x2c4
	.byte	0x23
	.long	0x32aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"i"
	.value	0x2c6
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"bit"
	.value	0x2c7
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF1661
	.value	0x2c8
	.byte	0xe
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"x"
	.value	0x2c9
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"y"
	.value	0x2ca
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"z"
	.value	0x2cb
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x13
	.long	.LASF1662
	.value	0x282
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3842
	.uleb128 0xe
	.long	.LASF1660
	.value	0x282
	.byte	0x21
	.long	0x32aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"p"
	.value	0x284
	.byte	0x10
	.long	0x2ed0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"x"
	.value	0x285
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"y"
	.value	0x286
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"z"
	.value	0x287
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF1661
	.value	0x289
	.byte	0xe
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.value	0x28b
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x13
	.long	.LASF1663
	.value	0x242
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x38c0
	.uleb128 0x6
	.string	"x"
	.value	0x244
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"y"
	.value	0x245
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"z"
	.value	0x246
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"ss"
	.value	0x248
	.byte	0x12
	.long	0x2ecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"mo"
	.value	0x249
	.byte	0xe
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF1660
	.value	0x24a
	.byte	0x12
	.long	0x32aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"i"
	.value	0x24c
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x13
	.long	.LASF1664
	.value	0x222
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x38ee
	.uleb128 0xe
	.long	.LASF1661
	.value	0x222
	.byte	0x1c
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF1666
	.value	0x1e0
	.long	0x2c7d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3972
	.uleb128 0x14
	.string	"x"
	.value	0x1e1
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.string	"y"
	.value	0x1e2
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"z"
	.value	0x1e3
	.byte	0xb
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.long	.LASF78
	.value	0x1e4
	.byte	0xe
	.long	0x24d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF1661
	.value	0x1e6
	.byte	0xd
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"st"
	.value	0x1e7
	.byte	0xe
	.long	0x294b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF1405
	.value	0x1e8
	.byte	0x11
	.long	0x2946
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x13
	.long	.LASF1667
	.value	0x19f
	.byte	0x6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x39a0
	.uleb128 0xe
	.long	.LASF1661
	.value	0x19f
	.byte	0x1d
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF1668
	.value	0x165
	.byte	0x1
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a21
	.uleb128 0xe
	.long	.LASF1661
	.value	0x165
	.byte	0x1d
	.long	0x2c7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"x"
	.value	0x167
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"y"
	.value	0x168
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"z"
	.value	0x169
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"ss"
	.value	0x16a
	.byte	0x12
	.long	0x2ecb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"mo"
	.value	0x16b
	.byte	0xe
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF1660
	.value	0x16c
	.byte	0x12
	.long	0x32aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF1669
	.byte	0xf6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a67
	.uleb128 0x1e
	.string	"mo"
	.byte	0xf6
	.byte	0x1b
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF1654
	.byte	0xf8
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF1670
	.byte	0xf9
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF1671
	.byte	0x72
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ad7
	.uleb128 0x1e
	.string	"mo"
	.byte	0x72
	.byte	0x1c
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF1672
	.byte	0x74
	.byte	0xe
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF1673
	.byte	0x75
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF1412
	.byte	0x76
	.byte	0xf
	.long	0x2ed0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF1674
	.byte	0x77
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF1675
	.byte	0x78
	.byte	0xd
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.long	.LASF1676
	.byte	0x5a
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b01
	.uleb128 0x1e
	.string	"mo"
	.byte	0x5a
	.byte	0x20
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1677
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	0x8b
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF1661
	.byte	0x37
	.byte	0xb
	.long	0x2c7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF1406
	.byte	0x38
	.byte	0xe
	.long	0x20e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.string	"st"
	.byte	0x1
	.byte	0x3a
	.byte	0xe
	.long	0x294b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 51
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
.LASF1492:
	.string	"CF_GODMODE"
.LASF1674:
	.string	"xmove"
.LASF858:
	.string	"S_BSPI_RUN3"
.LASF859:
	.string	"S_BSPI_RUN4"
.LASF860:
	.string	"S_BSPI_RUN5"
.LASF861:
	.string	"S_BSPI_RUN6"
.LASF862:
	.string	"S_BSPI_RUN7"
.LASF863:
	.string	"S_BSPI_RUN8"
.LASF864:
	.string	"S_BSPI_RUN9"
.LASF1624:
	.string	"playerstarts"
.LASF1545:
	.string	"sfx_cybsit"
.LASF148:
	.string	"SPR_YSKU"
.LASF1511:
	.string	"sfx_sawup"
.LASF1446:
	.string	"attacker"
.LASF511:
	.string	"S_FIRE10"
.LASF512:
	.string	"S_FIRE11"
.LASF513:
	.string	"S_FIRE12"
.LASF514:
	.string	"S_FIRE13"
.LASF515:
	.string	"S_FIRE14"
.LASF516:
	.string	"S_FIRE15"
.LASF517:
	.string	"S_FIRE16"
.LASF518:
	.string	"S_FIRE17"
.LASF519:
	.string	"S_FIRE18"
.LASF520:
	.string	"S_FIRE19"
.LASF1663:
	.string	"P_RespawnSpecials"
.LASF1333:
	.string	"MT_MISC84"
.LASF1266:
	.string	"MT_MISC20"
.LASF1079:
	.string	"S_MEGA2"
.LASF1080:
	.string	"S_MEGA3"
.LASF1081:
	.string	"S_MEGA4"
.LASF1270:
	.string	"MT_MISC24"
.LASF1271:
	.string	"MT_MISC25"
.LASF1273:
	.string	"MT_MISC26"
.LASF1274:
	.string	"MT_MISC27"
.LASF1275:
	.string	"MT_MISC28"
.LASF1278:
	.string	"MT_MISC29"
.LASF710:
	.string	"S_SARG_PAIN2"
.LASF1411:
	.string	"threshold"
.LASF36:
	.string	"wp_pistol"
.LASF1385:
	.string	"MF_COUNTKILL"
.LASF189:
	.string	"SPR_COL1"
.LASF190:
	.string	"SPR_COL2"
.LASF191:
	.string	"SPR_COL3"
.LASF192:
	.string	"SPR_COL4"
.LASF201:
	.string	"SPR_COL5"
.LASF195:
	.string	"SPR_COL6"
.LASF1607:
	.string	"sfx_skesit"
.LASF1588:
	.string	"sfx_tink"
.LASF521:
	.string	"S_FIRE20"
.LASF522:
	.string	"S_FIRE21"
.LASF523:
	.string	"S_FIRE22"
.LASF524:
	.string	"S_FIRE23"
.LASF525:
	.string	"S_FIRE24"
.LASF175:
	.string	"SPR_COLU"
.LASF527:
	.string	"S_FIRE26"
.LASF528:
	.string	"S_FIRE27"
.LASF529:
	.string	"S_FIRE28"
.LASF530:
	.string	"S_FIRE29"
.LASF1279:
	.string	"MT_MISC30"
.LASF1193:
	.string	"action"
.LASF1281:
	.string	"MT_MISC32"
.LASF1282:
	.string	"MT_MISC33"
.LASF872:
	.string	"S_BSPI_PAIN"
.LASF1284:
	.string	"MT_MISC35"
.LASF344:
	.string	"S_BFGEXP"
.LASF50:
	.string	"am_misl"
.LASF1287:
	.string	"MT_MISC38"
.LASF1288:
	.string	"MT_MISC39"
.LASF1457:
	.string	"floorpic"
.LASF874:
	.string	"S_BSPI_DIE1"
.LASF1485:
	.string	"NUMPSPRITES"
.LASF1646:
	.string	"FixedMul"
.LASF879:
	.string	"S_BSPI_DIE6"
.LASF1594:
	.string	"sfx_getpow"
.LASF1478:
	.string	"ST_POSITIVE"
.LASF1422:
	.string	"viewz"
.LASF1611:
	.string	"nomonsters"
.LASF770:
	.string	"S_BOSS_RAISE1"
.LASF771:
	.string	"S_BOSS_RAISE2"
.LASF1213:
	.string	"MT_HEAD"
.LASF772:
	.string	"S_BOSS_RAISE3"
.LASF531:
	.string	"S_FIRE30"
.LASF676:
	.string	"S_TROO_PAIN"
.LASF965:
	.string	"S_SSWV_DIE1"
.LASF775:
	.string	"S_BOSS_RAISE6"
.LASF967:
	.string	"S_SSWV_DIE3"
.LASF968:
	.string	"S_SSWV_DIE4"
.LASF969:
	.string	"S_SSWV_DIE5"
.LASF143:
	.string	"SPR_BKEY"
.LASF787:
	.string	"S_BOS2_ATK1"
.LASF788:
	.string	"S_BOS2_ATK2"
.LASF789:
	.string	"S_BOS2_ATK3"
.LASF177:
	.string	"SPR_GOR1"
.LASF184:
	.string	"SPR_GOR2"
.LASF185:
	.string	"SPR_GOR3"
.LASF186:
	.string	"SPR_GOR4"
.LASF187:
	.string	"SPR_GOR5"
.LASF1291:
	.string	"MT_MISC42"
.LASF1292:
	.string	"MT_MISC43"
.LASF544:
	.string	"S_SKEL_RUN1"
.LASF545:
	.string	"S_SKEL_RUN2"
.LASF546:
	.string	"S_SKEL_RUN3"
.LASF547:
	.string	"S_SKEL_RUN4"
.LASF548:
	.string	"S_SKEL_RUN5"
.LASF549:
	.string	"S_SKEL_RUN6"
.LASF550:
	.string	"S_SKEL_RUN7"
.LASF551:
	.string	"S_SKEL_RUN8"
.LASF552:
	.string	"S_SKEL_RUN9"
.LASF39:
	.string	"wp_missile"
.LASF1030:
	.string	"S_BEXP2"
.LASF1341:
	.string	"seestate"
.LASF725:
	.string	"S_HEAD_ATK1"
.LASF726:
	.string	"S_HEAD_ATK2"
.LASF727:
	.string	"S_HEAD_ATK3"
.LASF1472:
	.string	"slopetype"
.LASF979:
	.string	"S_SSWV_RAISE1"
.LASF980:
	.string	"S_SSWV_RAISE2"
.LASF981:
	.string	"S_SSWV_RAISE3"
.LASF982:
	.string	"S_SSWV_RAISE4"
.LASF983:
	.string	"S_SSWV_RAISE5"
.LASF77:
	.string	"angle"
.LASF1208:
	.string	"MT_FATSHOT"
.LASF163:
	.string	"SPR_CELL"
.LASF164:
	.string	"SPR_CELP"
.LASF1145:
	.string	"S_HEARTCOL"
.LASF1467:
	.string	"linecount"
.LASF1418:
	.string	"numlines"
.LASF1062:
	.string	"S_MEDI"
.LASF1069:
	.string	"S_PINV"
.LASF1257:
	.string	"MT_INS"
.LASF1300:
	.string	"MT_MISC51"
.LASF1301:
	.string	"MT_MISC52"
.LASF1255:
	.string	"MT_INV"
.LASF1303:
	.string	"MT_MISC54"
.LASF1159:
	.string	"S_BTORCHSHRT"
.LASF280:
	.string	"S_MISSILEUP"
.LASF1306:
	.string	"MT_MISC57"
.LASF1307:
	.string	"MT_MISC58"
.LASF1308:
	.string	"MT_MISC59"
.LASF457:
	.string	"S_SPOS_RAISE1"
.LASF1505:
	.string	"sfx_dshtgn"
.LASF251:
	.string	"S_SGUNFLASH1"
.LASF252:
	.string	"S_SGUNFLASH2"
.LASF799:
	.string	"S_BOS2_RAISE1"
.LASF800:
	.string	"S_BOS2_RAISE2"
.LASF801:
	.string	"S_BOS2_RAISE3"
.LASF802:
	.string	"S_BOS2_RAISE4"
.LASF803:
	.string	"S_BOS2_RAISE5"
.LASF804:
	.string	"S_BOS2_RAISE6"
.LASF805:
	.string	"S_BOS2_RAISE7"
.LASF564:
	.string	"S_SKEL_PAIN"
.LASF1051:
	.string	"S_RKEY"
.LASF74:
	.string	"next"
.LASF1649:
	.string	"S_StartSound"
.LASF1517:
	.string	"sfx_firsht"
.LASF1509:
	.string	"sfx_plasma"
.LASF233:
	.string	"S_PISTOLUP"
.LASF919:
	.string	"S_CYBER_DIE8"
.LASF1522:
	.string	"sfx_dorcls"
.LASF1309:
	.string	"MT_MISC60"
.LASF1310:
	.string	"MT_MISC61"
.LASF1311:
	.string	"MT_MISC62"
.LASF1312:
	.string	"MT_MISC63"
.LASF1313:
	.string	"MT_MISC64"
.LASF1314:
	.string	"MT_MISC65"
.LASF1315:
	.string	"MT_MISC66"
.LASF1316:
	.string	"MT_MISC67"
.LASF348:
	.string	"S_EXPLODE1"
.LASF349:
	.string	"S_EXPLODE2"
.LASF350:
	.string	"S_EXPLODE3"
.LASF1600:
	.string	"sfx_manatk"
.LASF539:
	.string	"S_TRACEEXP1"
.LASF540:
	.string	"S_TRACEEXP2"
.LASF541:
	.string	"S_TRACEEXP3"
.LASF927:
	.string	"S_PAIN_RUN5"
.LASF1029:
	.string	"S_BEXP"
.LASF928:
	.string	"S_PAIN_RUN6"
.LASF1447:
	.string	"extralight"
.LASF1146:
	.string	"S_HEARTCOL2"
.LASF325:
	.string	"S_RBALLX1"
.LASF1508:
	.string	"sfx_dbload"
.LASF1355:
	.string	"height"
.LASF1240:
	.string	"MT_TELEPORTMAN"
.LASF1621:
	.string	"playeringame"
.LASF1319:
	.string	"MT_MISC70"
.LASF108:
	.string	"SPR_IFOG"
.LASF1321:
	.string	"MT_MISC72"
.LASF1322:
	.string	"MT_MISC73"
.LASF1323:
	.string	"MT_MISC74"
.LASF1324:
	.string	"MT_MISC75"
.LASF1325:
	.string	"MT_MISC76"
.LASF1152:
	.string	"S_GREENTORCH2"
.LASF1153:
	.string	"S_GREENTORCH3"
.LASF1154:
	.string	"S_GREENTORCH4"
.LASF993:
	.string	"S_COMMKEEN9"
.LASF642:
	.string	"S_CPOS_PAIN2"
.LASF865:
	.string	"S_BSPI_RUN10"
.LASF866:
	.string	"S_BSPI_RUN11"
.LASF867:
	.string	"S_BSPI_RUN12"
.LASF949:
	.string	"S_SSWV_RUN1"
.LASF950:
	.string	"S_SSWV_RUN2"
.LASF951:
	.string	"S_SSWV_RUN3"
.LASF952:
	.string	"S_SSWV_RUN4"
.LASF953:
	.string	"S_SSWV_RUN5"
.LASF954:
	.string	"S_SSWV_RUN6"
.LASF955:
	.string	"S_SSWV_RUN7"
.LASF956:
	.string	"S_SSWV_RUN8"
.LASF1134:
	.string	"S_SKULLCOL"
.LASF1207:
	.string	"MT_FATSO"
.LASF678:
	.string	"S_TROO_DIE1"
.LASF679:
	.string	"S_TROO_DIE2"
.LASF680:
	.string	"S_TROO_DIE3"
.LASF681:
	.string	"S_TROO_DIE4"
.LASF682:
	.string	"S_TROO_DIE5"
.LASF1647:
	.string	"P_SlideMove"
.LASF1059:
	.string	"S_YSKULL"
.LASF1060:
	.string	"S_YSKULL2"
.LASF161:
	.string	"SPR_ROCK"
.LASF1232:
	.string	"MT_ROCKET"
.LASF1330:
	.string	"MT_MISC81"
.LASF1331:
	.string	"MT_MISC82"
.LASF1332:
	.string	"MT_MISC83"
.LASF637:
	.string	"S_CPOS_ATK1"
.LASF638:
	.string	"S_CPOS_ATK2"
.LASF639:
	.string	"S_CPOS_ATK3"
.LASF640:
	.string	"S_CPOS_ATK4"
.LASF1199:
	.string	"MT_PLAYER"
.LASF173:
	.string	"SPR_SHOT"
.LASF366:
	.string	"S_IFOG2"
.LASF367:
	.string	"S_IFOG3"
.LASF368:
	.string	"S_IFOG4"
.LASF369:
	.string	"S_IFOG5"
.LASF102:
	.string	"SPR_PLSE"
.LASF94:
	.string	"SPR_PLSF"
.LASF93:
	.string	"SPR_PLSG"
.LASF762:
	.string	"S_BOSS_PAIN2"
.LASF1616:
	.string	"consoleplayer"
.LASF462:
	.string	"S_VILE_STND"
.LASF990:
	.string	"S_COMMKEEN6"
.LASF991:
	.string	"S_COMMKEEN7"
.LASF992:
	.string	"S_COMMKEEN8"
.LASF101:
	.string	"SPR_PLSS"
.LASF841:
	.string	"S_SPID_PAIN2"
.LASF1535:
	.string	"sfx_oof"
.LASF1356:
	.string	"mass"
.LASF1576:
	.string	"sfx_posact"
.LASF214:
	.string	"SPR_POB1"
.LASF215:
	.string	"SPR_POB2"
.LASF1063:
	.string	"S_SOUL"
.LASF1567:
	.string	"sfx_skldth"
.LASF1073:
	.string	"S_PSTR"
.LASF25:
	.string	"sk_hard"
.LASF905:
	.string	"S_CYBER_ATK1"
.LASF906:
	.string	"S_CYBER_ATK2"
.LASF907:
	.string	"S_CYBER_ATK3"
.LASF908:
	.string	"S_CYBER_ATK4"
.LASF909:
	.string	"S_CYBER_ATK5"
.LASF910:
	.string	"S_CYBER_ATK6"
.LASF1630:
	.string	"memcpy"
.LASF1100:
	.string	"S_BFUG"
.LASF140:
	.string	"SPR_FCAN"
.LASF1481:
	.string	"line_t"
.LASF583:
	.string	"S_FATT_STND"
.LASF1020:
	.string	"S_BRAINEXPLODE1"
.LASF1021:
	.string	"S_BRAINEXPLODE2"
.LASF1022:
	.string	"S_BRAINEXPLODE3"
.LASF304:
	.string	"S_BFGUP"
.LASF1650:
	.string	"source"
.LASF145:
	.string	"SPR_YKEY"
.LASF691:
	.string	"S_TROO_RAISE1"
.LASF692:
	.string	"S_TROO_RAISE2"
.LASF693:
	.string	"S_TROO_RAISE3"
.LASF694:
	.string	"S_TROO_RAISE4"
.LASF695:
	.string	"S_TROO_RAISE5"
.LASF1104:
	.string	"S_PLAS"
.LASF986:
	.string	"S_COMMKEEN2"
.LASF987:
	.string	"S_COMMKEEN3"
.LASF988:
	.string	"S_COMMKEEN4"
.LASF989:
	.string	"S_COMMKEEN5"
.LASF370:
	.string	"S_PLAY"
.LASF936:
	.string	"S_PAIN_DIE2"
.LASF937:
	.string	"S_PAIN_DIE3"
.LASF938:
	.string	"S_PAIN_DIE4"
.LASF939:
	.string	"S_PAIN_DIE5"
.LASF940:
	.string	"S_PAIN_DIE6"
.LASF1210:
	.string	"MT_TROOP"
.LASF491:
	.string	"S_VILE_PAIN2"
.LASF619:
	.string	"S_FATT_RAISE1"
.LASF40:
	.string	"wp_plasma"
.LASF621:
	.string	"S_FATT_RAISE3"
.LASF622:
	.string	"S_FATT_RAISE4"
.LASF623:
	.string	"S_FATT_RAISE5"
.LASF624:
	.string	"S_FATT_RAISE6"
.LASF625:
	.string	"S_FATT_RAISE7"
.LASF626:
	.string	"S_FATT_RAISE8"
.LASF1367:
	.string	"MF_NOBLOCKMAP"
.LASF335:
	.string	"S_ROCKET"
.LASF1231:
	.string	"MT_HEADSHOT"
.LASF1389:
	.string	"MF_TRANSLATION"
.LASF1470:
	.string	"sidenum"
.LASF1676:
	.string	"P_ExplodeMissile"
.LASF888:
	.string	"S_ARACH_PLAZ"
.LASF1127:
	.string	"S_STALAGTITE"
.LASF729:
	.string	"S_HEAD_PAIN2"
.LASF730:
	.string	"S_HEAD_PAIN3"
.LASF8:
	.string	"byte"
.LASF387:
	.string	"S_PLAY_XDIE2"
.LASF33:
	.string	"it_redskull"
.LASF21:
	.string	"long int"
.LASF1577:
	.string	"sfx_bgact"
.LASF1238:
	.string	"MT_TFOG"
.LASF438:
	.string	"S_SPOS_ATK1"
.LASF439:
	.string	"S_SPOS_ATK2"
.LASF440:
	.string	"S_SPOS_ATK3"
.LASF375:
	.string	"S_PLAY_ATK1"
.LASF376:
	.string	"S_PLAY_ATK2"
.LASF128:
	.string	"SPR_APLS"
.LASF63:
	.string	"finesine"
.LASF1626:
	.string	"test"
.LASF1439:
	.string	"refire"
.LASF1156:
	.string	"S_REDTORCH2"
.LASF1157:
	.string	"S_REDTORCH3"
.LASF1158:
	.string	"S_REDTORCH4"
.LASF665:
	.string	"S_TROO_RUN1"
.LASF666:
	.string	"S_TROO_RUN2"
.LASF667:
	.string	"S_TROO_RUN3"
.LASF668:
	.string	"S_TROO_RUN4"
.LASF669:
	.string	"S_TROO_RUN5"
.LASF670:
	.string	"S_TROO_RUN6"
.LASF671:
	.string	"S_TROO_RUN7"
.LASF672:
	.string	"S_TROO_RUN8"
.LASF1601:
	.string	"sfx_mandth"
.LASF119:
	.string	"SPR_CPOS"
.LASF580:
	.string	"S_FATSHOTX1"
.LASF581:
	.string	"S_FATSHOTX2"
.LASF582:
	.string	"S_FATSHOTX3"
.LASF660:
	.string	"S_CPOS_RAISE5"
.LASF661:
	.string	"S_CPOS_RAISE6"
.LASF662:
	.string	"S_CPOS_RAISE7"
.LASF35:
	.string	"wp_fist"
.LASF1349:
	.string	"missilestate"
.LASF149:
	.string	"SPR_STIM"
.LASF1370:
	.string	"MF_JUSTATTACKED"
.LASF696:
	.string	"S_SARG_STND"
.LASF921:
	.string	"S_CYBER_DIE10"
.LASF99:
	.string	"SPR_BAL1"
.LASF100:
	.string	"SPR_BAL2"
.LASF122:
	.string	"SPR_BAL7"
.LASF1405:
	.string	"info"
.LASF1571:
	.string	"sfx_bspdth"
.LASF1115:
	.string	"S_HEADSONSTICK"
.LASF1606:
	.string	"sfx_skeact"
.LASF1400:
	.string	"ceilingz"
.LASF1602:
	.string	"sfx_sssit"
.LASF572:
	.string	"S_SKEL_RAISE1"
.LASF87:
	.string	"SPR_SHT2"
.LASF226:
	.string	"S_PUNCH1"
.LASF227:
	.string	"S_PUNCH2"
.LASF228:
	.string	"S_PUNCH3"
.LASF229:
	.string	"S_PUNCH4"
.LASF230:
	.string	"S_PUNCH5"
.LASF589:
	.string	"S_FATT_RUN5"
.LASF225:
	.string	"S_PUNCHUP"
.LASF842:
	.string	"S_SPID_DIE1"
.LASF593:
	.string	"S_FATT_RUN9"
.LASF844:
	.string	"S_SPID_DIE3"
.LASF845:
	.string	"S_SPID_DIE4"
.LASF86:
	.string	"SPR_SHTF"
.LASF82:
	.string	"SPR_SHTG"
.LASF364:
	.string	"S_IFOG01"
.LASF365:
	.string	"S_IFOG02"
.LASF850:
	.string	"S_SPID_DIE9"
.LASF1661:
	.string	"mobj"
.LASF1092:
	.string	"S_AMMO"
.LASF51:
	.string	"NUMAMMO"
.LASF923:
	.string	"S_PAIN_RUN1"
.LASF924:
	.string	"S_PAIN_RUN2"
.LASF925:
	.string	"S_PAIN_RUN3"
.LASF926:
	.string	"S_PAIN_RUN4"
.LASF208:
	.string	"SPR_HDB1"
.LASF209:
	.string	"SPR_HDB2"
.LASF210:
	.string	"SPR_HDB3"
.LASF211:
	.string	"SPR_HDB4"
.LASF212:
	.string	"SPR_HDB5"
.LASF213:
	.string	"SPR_HDB6"
.LASF1200:
	.string	"MT_POSSESSED"
.LASF258:
	.string	"S_DSGUN3"
.LASF259:
	.string	"S_DSGUN4"
.LASF78:
	.string	"type"
.LASF278:
	.string	"S_MISSILE"
.LASF1106:
	.string	"S_SHOT2"
.LASF1363:
	.string	"MF_SPECIAL"
.LASF1173:
	.string	"S_HANGTLOOKDN"
.LASF1408:
	.string	"movedir"
.LASF650:
	.string	"S_CPOS_XDIE1"
.LASF1377:
	.string	"MF_FLOAT"
.LASF71:
	.string	"actionf_t"
.LASF66:
	.string	"actionf_v"
.LASF169:
	.string	"SPR_MGUN"
.LASF1212:
	.string	"MT_SHADOWS"
.LASF553:
	.string	"S_SKEL_RUN10"
.LASF554:
	.string	"S_SKEL_RUN11"
.LASF555:
	.string	"S_SKEL_RUN12"
.LASF221:
	.string	"S_NULL"
.LASF763:
	.string	"S_BOSS_DIE1"
.LASF764:
	.string	"S_BOSS_DIE2"
.LASF765:
	.string	"S_BOSS_DIE3"
.LASF766:
	.string	"S_BOSS_DIE4"
.LASF767:
	.string	"S_BOSS_DIE5"
.LASF768:
	.string	"S_BOSS_DIE6"
.LASF769:
	.string	"S_BOSS_DIE7"
.LASF933:
	.string	"S_PAIN_PAIN"
.LASF302:
	.string	"S_BFG"
.LASF1347:
	.string	"painsound"
.LASF1659:
	.string	"P_SpawnMapThing"
.LASF1494:
	.string	"player_t"
.LASF1460:
	.string	"special"
.LASF948:
	.string	"S_SSWV_STND2"
.LASF170:
	.string	"SPR_CSAW"
.LASF1083:
	.string	"S_PMAP"
.LASF1089:
	.string	"S_PVIS"
.LASF303:
	.string	"S_BFGDOWN"
.LASF1549:
	.string	"sfx_vilsit"
.LASF1224:
	.string	"MT_BOSSBRAIN"
.LASF116:
	.string	"SPR_SKEL"
.LASF298:
	.string	"S_PLASMA1"
.LASF299:
	.string	"S_PLASMA2"
.LASF1497:
	.string	"iquehead"
.LASF1163:
	.string	"S_GTORCHSHRT"
.LASF1622:
	.string	"deathmatchstarts"
.LASF1625:
	.string	"skyflatnum"
.LASF1536:
	.string	"sfx_telept"
.LASF1419:
	.string	"firstline"
.LASF1097:
	.string	"S_SHEL"
.LASF854:
	.string	"S_BSPI_STND2"
.LASF9:
	.string	"unsigned char"
.LASF1570:
	.string	"sfx_spidth"
.LASF114:
	.string	"SPR_FATB"
.LASF219:
	.string	"NUMSPRITES"
.LASF337:
	.string	"S_BFGSHOT2"
.LASF118:
	.string	"SPR_FATT"
.LASF1557:
	.string	"sfx_skeswg"
.LASF1064:
	.string	"S_SOUL2"
.LASF1065:
	.string	"S_SOUL3"
.LASF1066:
	.string	"S_SOUL4"
.LASF1067:
	.string	"S_SOUL5"
.LASF1068:
	.string	"S_SOUL6"
.LASF824:
	.string	"S_SPID_RUN1"
.LASF825:
	.string	"S_SPID_RUN2"
.LASF826:
	.string	"S_SPID_RUN3"
.LASF827:
	.string	"S_SPID_RUN4"
.LASF828:
	.string	"S_SPID_RUN5"
.LASF829:
	.string	"S_SPID_RUN6"
.LASF830:
	.string	"S_SPID_RUN7"
.LASF831:
	.string	"S_SPID_RUN8"
.LASF60:
	.string	"float"
.LASF1031:
	.string	"S_BEXP3"
.LASF1032:
	.string	"S_BEXP4"
.LASF1515:
	.string	"sfx_rlaunc"
.LASF1120:
	.string	"S_DEADSTICK"
.LASF1448:
	.string	"fixedcolormap"
.LASF1433:
	.string	"weaponowned"
.LASF1241:
	.string	"MT_EXTRABFG"
.LASF410:
	.string	"S_POSS_DIE1"
.LASF411:
	.string	"S_POSS_DIE2"
.LASF412:
	.string	"S_POSS_DIE3"
.LASF413:
	.string	"S_POSS_DIE4"
.LASF414:
	.string	"S_POSS_DIE5"
.LASF240:
	.string	"S_SGUNDOWN"
.LASF1604:
	.string	"sfx_keenpn"
.LASF89:
	.string	"SPR_CHGF"
.LASF88:
	.string	"SPR_CHGG"
.LASF1612:
	.string	"gameskill"
.LASF633:
	.string	"S_CPOS_RUN5"
.LASF892:
	.string	"S_ARACH_PLEX3"
.LASF634:
	.string	"S_CPOS_RUN6"
.LASF894:
	.string	"S_ARACH_PLEX5"
.LASF635:
	.string	"S_CPOS_RUN7"
.LASF1410:
	.string	"target"
.LASF199:
	.string	"SPR_CEYE"
.LASF1670:
	.string	"delta"
.LASF1476:
	.string	"ST_HORIZONTAL"
.LASF941:
	.string	"S_PAIN_RAISE1"
.LASF942:
	.string	"S_PAIN_RAISE2"
.LASF943:
	.string	"S_PAIN_RAISE3"
.LASF944:
	.string	"S_PAIN_RAISE4"
.LASF945:
	.string	"S_PAIN_RAISE5"
.LASF578:
	.string	"S_FATSHOT1"
.LASF579:
	.string	"S_FATSHOT2"
.LASF1477:
	.string	"ST_VERTICAL"
.LASF156:
	.string	"SPR_SUIT"
.LASF806:
	.string	"S_SKULL_STND"
.LASF1627:
	.string	"attackrange"
.LASF1369:
	.string	"MF_JUSTHIT"
.LASF1390:
	.string	"MF_TRANSSHIFT"
.LASF840:
	.string	"S_SPID_PAIN"
.LASF1336:
	.string	"NUMMOBJTYPES"
.LASF138:
	.string	"SPR_BAR1"
.LASF253:
	.string	"S_DSGUN"
.LASF1132:
	.string	"S_CANDLESTIK"
.LASF57:
	.string	"pw_allmap"
.LASF1188:
	.string	"NUMSTATES"
.LASF832:
	.string	"S_SPID_RUN9"
.LASF318:
	.string	"S_TBALL1"
.LASF319:
	.string	"S_TBALL2"
.LASF532:
	.string	"S_SMOKE1"
.LASF533:
	.string	"S_SMOKE2"
.LASF534:
	.string	"S_SMOKE3"
.LASF535:
	.string	"S_SMOKE4"
.LASF536:
	.string	"S_SMOKE5"
.LASF755:
	.string	"S_BOSS_RUN6"
.LASF756:
	.string	"S_BOSS_RUN7"
.LASF757:
	.string	"S_BOSS_RUN8"
.LASF121:
	.string	"SPR_HEAD"
.LASF1397:
	.string	"bprev"
.LASF182:
	.string	"SPR_POL1"
.LASF178:
	.string	"SPR_POL2"
.LASF181:
	.string	"SPR_POL3"
.LASF180:
	.string	"SPR_POL4"
.LASF179:
	.string	"SPR_POL5"
.LASF183:
	.string	"SPR_POL6"
.LASF1614:
	.string	"netgame"
.LASF1027:
	.string	"S_BAR1"
.LASF1574:
	.string	"sfx_pedth"
.LASF1533:
	.string	"sfx_itemup"
.LASF1198:
	.string	"states"
.LASF1242:
	.string	"MT_MISC0"
.LASF1113:
	.string	"S_DEADTORSO"
.LASF1374:
	.string	"MF_PICKUP"
.LASF1383:
	.string	"MF_CORPSE"
.LASF255:
	.string	"S_DSGUNUP"
.LASF1596:
	.string	"sfx_boscub"
.LASF1558:
	.string	"sfx_pldeth"
.LASF1339:
	.string	"spawnstate"
.LASF1639:
	.string	"P_AddThinker"
.LASF664:
	.string	"S_TROO_STND2"
.LASF1184:
	.string	"S_TECH2LAMP"
.LASF1521:
	.string	"sfx_doropn"
.LASF1228:
	.string	"MT_SPAWNFIRE"
.LASF1637:
	.string	"S_StopSound"
.LASF1203:
	.string	"MT_FIRE"
.LASF1194:
	.string	"nextstate"
.LASF761:
	.string	"S_BOSS_PAIN"
.LASF132:
	.string	"SPR_SSWV"
.LASF1368:
	.string	"MF_AMBUSH"
.LASF323:
	.string	"S_RBALL1"
.LASF324:
	.string	"S_RBALL2"
.LASF1531:
	.string	"sfx_pepain"
.LASF1128:
	.string	"S_TALLGRNCOL"
.LASF1413:
	.string	"lastlook"
.LASF1568:
	.string	"sfx_brsdth"
.LASF1504:
	.string	"sfx_sgcock"
.LASF1490:
	.string	"playerstate_t"
.LASF1117:
	.string	"S_HEADONASTICK"
.LASF397:
	.string	"S_POSS_RUN1"
.LASF339:
	.string	"S_BFGLAND2"
.LASF340:
	.string	"S_BFGLAND3"
.LASF341:
	.string	"S_BFGLAND4"
.LASF342:
	.string	"S_BFGLAND5"
.LASF343:
	.string	"S_BFGLAND6"
.LASF403:
	.string	"S_POSS_RUN7"
.LASF404:
	.string	"S_POSS_RUN8"
.LASF386:
	.string	"S_PLAY_XDIE1"
.LASF26:
	.string	"sk_nightmare"
.LASF388:
	.string	"S_PLAY_XDIE3"
.LASF389:
	.string	"S_PLAY_XDIE4"
.LASF390:
	.string	"S_PLAY_XDIE5"
.LASF391:
	.string	"S_PLAY_XDIE6"
.LASF392:
	.string	"S_PLAY_XDIE7"
.LASF393:
	.string	"S_PLAY_XDIE8"
.LASF394:
	.string	"S_PLAY_XDIE9"
.LASF792:
	.string	"S_BOS2_DIE1"
.LASF793:
	.string	"S_BOS2_DIE2"
.LASF794:
	.string	"S_BOS2_DIE3"
.LASF795:
	.string	"S_BOS2_DIE4"
.LASF796:
	.string	"S_BOS2_DIE5"
.LASF797:
	.string	"S_BOS2_DIE6"
.LASF798:
	.string	"S_BOS2_DIE7"
.LASF1359:
	.string	"flags"
.LASF718:
	.string	"S_SARG_RAISE2"
.LASF719:
	.string	"S_SARG_RAISE3"
.LASF362:
	.string	"S_TFOG10"
.LASF720:
	.string	"S_SARG_RAISE4"
.LASF415:
	.string	"S_POSS_XDIE1"
.LASF416:
	.string	"S_POSS_XDIE2"
.LASF417:
	.string	"S_POSS_XDIE3"
.LASF418:
	.string	"S_POSS_XDIE4"
.LASF419:
	.string	"S_POSS_XDIE5"
.LASF420:
	.string	"S_POSS_XDIE6"
.LASF421:
	.string	"S_POSS_XDIE7"
.LASF47:
	.string	"am_clip"
.LASF423:
	.string	"S_POSS_XDIE9"
.LASF1116:
	.string	"S_GIBS"
.LASF731:
	.string	"S_HEAD_DIE1"
.LASF732:
	.string	"S_HEAD_DIE2"
.LASF733:
	.string	"S_HEAD_DIE3"
.LASF734:
	.string	"S_HEAD_DIE4"
.LASF735:
	.string	"S_HEAD_DIE5"
.LASF736:
	.string	"S_HEAD_DIE6"
.LASF584:
	.string	"S_FATT_STND2"
.LASF1107:
	.string	"S_COLU"
.LASF234:
	.string	"S_PISTOL1"
.LASF235:
	.string	"S_PISTOL2"
.LASF236:
	.string	"S_PISTOL3"
.LASF237:
	.string	"S_PISTOL4"
.LASF573:
	.string	"S_SKEL_RAISE2"
.LASF574:
	.string	"S_SKEL_RAISE3"
.LASF575:
	.string	"S_SKEL_RAISE4"
.LASF576:
	.string	"S_SKEL_RAISE5"
.LASF577:
	.string	"S_SKEL_RAISE6"
.LASF1136:
	.string	"S_BIGTREE"
.LASF1479:
	.string	"ST_NEGATIVE"
.LASF1046:
	.string	"S_BON2C"
.LASF1047:
	.string	"S_BON2D"
.LASF352:
	.string	"S_TFOG01"
.LASF353:
	.string	"S_TFOG02"
.LASF171:
	.string	"SPR_LAUN"
.LASF1666:
	.string	"P_SpawnMobj"
.LASF408:
	.string	"S_POSS_PAIN"
.LASF743:
	.string	"S_BRBALL1"
.LASF744:
	.string	"S_BRBALL2"
.LASF1206:
	.string	"MT_SMOKE"
.LASF1220:
	.string	"MT_CYBORG"
.LASF1357:
	.string	"damage"
.LASF448:
	.string	"S_SPOS_XDIE1"
.LASF449:
	.string	"S_SPOS_XDIE2"
.LASF450:
	.string	"S_SPOS_XDIE3"
.LASF451:
	.string	"S_SPOS_XDIE4"
.LASF452:
	.string	"S_SPOS_XDIE5"
.LASF453:
	.string	"S_SPOS_XDIE6"
.LASF454:
	.string	"S_SPOS_XDIE7"
.LASF455:
	.string	"S_SPOS_XDIE8"
.LASF456:
	.string	"S_SPOS_XDIE9"
.LASF1387:
	.string	"MF_SKULLFLY"
.LASF1529:
	.string	"sfx_vipain"
.LASF18:
	.string	"size_t"
.LASF1392:
	.string	"mobj_s"
.LASF1452:
	.string	"mobj_t"
.LASF1049:
	.string	"S_BKEY"
.LASF55:
	.string	"pw_invisibility"
.LASF136:
	.string	"SPR_ARM1"
.LASF137:
	.string	"SPR_ARM2"
.LASF1202:
	.string	"MT_VILE"
.LASF1520:
	.string	"sfx_pstop"
.LASF31:
	.string	"it_blueskull"
.LASF1464:
	.string	"soundorg"
.LASF296:
	.string	"S_PLASMADOWN"
.LASF608:
	.string	"S_FATT_PAIN2"
.LASF1605:
	.string	"sfx_keendt"
.LASF1006:
	.string	"S_BRAINEYESEE"
.LASF1480:
	.string	"slopetype_t"
.LASF543:
	.string	"S_SKEL_STND2"
.LASF896:
	.string	"S_CYBER_STND2"
.LASF1197:
	.string	"state_t"
.LASF740:
	.string	"S_HEAD_RAISE4"
.LASF966:
	.string	"S_SSWV_DIE2"
.LASF1580:
	.string	"sfx_bspwlk"
.LASF422:
	.string	"S_POSS_XDIE8"
.LASF1096:
	.string	"S_CELP"
.LASF1138:
	.string	"S_EVILEYE"
.LASF1164:
	.string	"S_GTORCHSHRT2"
.LASF1165:
	.string	"S_GTORCHSHRT3"
.LASF1166:
	.string	"S_GTORCHSHRT4"
.LASF1423:
	.string	"viewheight"
.LASF1396:
	.string	"bnext"
.LASF1648:
	.string	"P_TryMove"
.LASF1599:
	.string	"sfx_bosdth"
.LASF597:
	.string	"S_FATT_ATK1"
.LASF130:
	.string	"SPR_CYBR"
.LASF598:
	.string	"S_FATT_ATK2"
.LASF501:
	.string	"S_VILE_DIE10"
.LASF91:
	.string	"SPR_MISF"
.LASF90:
	.string	"SPR_MISG"
.LASF1615:
	.string	"deathmatch"
.LASF103:
	.string	"SPR_MISL"
.LASF1055:
	.string	"S_BSKULL"
.LASF134:
	.string	"SPR_BBRN"
.LASF476:
	.string	"S_VILE_ATK1"
.LASF477:
	.string	"S_VILE_ATK2"
.LASF478:
	.string	"S_VILE_ATK3"
.LASF479:
	.string	"S_VILE_ATK4"
.LASF480:
	.string	"S_VILE_ATK5"
.LASF481:
	.string	"S_VILE_ATK6"
.LASF482:
	.string	"S_VILE_ATK7"
.LASF223:
	.string	"S_PUNCH"
.LASF484:
	.string	"S_VILE_ATK9"
.LASF205:
	.string	"SPR_SMBT"
.LASF1585:
	.string	"sfx_hoof"
.LASF779:
	.string	"S_BOS2_RUN1"
.LASF780:
	.string	"S_BOS2_RUN2"
.LASF781:
	.string	"S_BOS2_RUN3"
.LASF782:
	.string	"S_BOS2_RUN4"
.LASF783:
	.string	"S_BOS2_RUN5"
.LASF784:
	.string	"S_BOS2_RUN6"
.LASF785:
	.string	"S_BOS2_RUN7"
.LASF786:
	.string	"S_BOS2_RUN8"
.LASF1459:
	.string	"lightlevel"
.LASF196:
	.string	"SPR_TRE1"
.LASF197:
	.string	"SPR_TRE2"
.LASF853:
	.string	"S_BSPI_STND"
.LASF1516:
	.string	"sfx_rxplod"
.LASF1348:
	.string	"meleestate"
.LASF1434:
	.string	"ammo"
.LASF643:
	.string	"S_CPOS_DIE1"
.LASF204:
	.string	"SPR_TRED"
.LASF97:
	.string	"SPR_BLUD"
.LASF599:
	.string	"S_FATT_ATK3"
.LASF600:
	.string	"S_FATT_ATK4"
.LASF601:
	.string	"S_FATT_ATK5"
.LASF602:
	.string	"S_FATT_ATK6"
.LASF603:
	.string	"S_FATT_ATK7"
.LASF604:
	.string	"S_FATT_ATK8"
.LASF605:
	.string	"S_FATT_ATK9"
.LASF107:
	.string	"SPR_TFOG"
.LASF311:
	.string	"S_BLOOD1"
.LASF312:
	.string	"S_BLOOD2"
.LASF313:
	.string	"S_BLOOD3"
.LASF1501:
	.string	"sfx_None"
.LASF1195:
	.string	"misc1"
.LASF1196:
	.string	"misc2"
.LASF1527:
	.string	"sfx_dmpain"
.LASF1644:
	.string	"P_CheckPosition"
.LASF1103:
	.string	"S_LAUN"
.LASF363:
	.string	"S_IFOG"
.LASF110:
	.string	"SPR_POSS"
.LASF115:
	.string	"SPR_FBXP"
.LASF1623:
	.string	"deathmatch_p"
.LASF912:
	.string	"S_CYBER_DIE1"
.LASF913:
	.string	"S_CYBER_DIE2"
.LASF914:
	.string	"S_CYBER_DIE3"
.LASF915:
	.string	"S_CYBER_DIE4"
.LASF916:
	.string	"S_CYBER_DIE5"
.LASF917:
	.string	"S_CYBER_DIE6"
.LASF918:
	.string	"S_CYBER_DIE7"
.LASF790:
	.string	"S_BOS2_PAIN"
.LASF920:
	.string	"S_CYBER_DIE9"
.LASF1414:
	.string	"spawnpoint"
.LASF1190:
	.string	"sprite"
.LASF1269:
	.string	"MT_MISC23"
.LASF1133:
	.string	"S_CANDELABRA"
.LASF473:
	.string	"S_VILE_RUN10"
.LASF474:
	.string	"S_VILE_RUN11"
.LASF475:
	.string	"S_VILE_RUN12"
.LASF1665:
	.string	"P_SpawnMissile"
.LASF1093:
	.string	"S_ROCK"
.LASF242:
	.string	"S_SGUN1"
.LASF243:
	.string	"S_SGUN2"
.LASF244:
	.string	"S_SGUN3"
.LASF245:
	.string	"S_SGUN4"
.LASF246:
	.string	"S_SGUN5"
.LASF247:
	.string	"S_SGUN6"
.LASF248:
	.string	"S_SGUN7"
.LASF249:
	.string	"S_SGUN8"
.LASF250:
	.string	"S_SGUN9"
.LASF1338:
	.string	"doomednum"
.LASF239:
	.string	"S_SGUN"
.LASF1129:
	.string	"S_SHRTGRNCOL"
.LASF1603:
	.string	"sfx_ssdth"
.LASF1593:
	.string	"sfx_flamst"
.LASF814:
	.string	"S_SKULL_PAIN"
.LASF1227:
	.string	"MT_SPAWNSHOT"
.LASF538:
	.string	"S_TRACER2"
.LASF1137:
	.string	"S_TECHPILLAR"
.LASF542:
	.string	"S_SKEL_STND"
.LASF697:
	.string	"S_SARG_STND2"
.LASF1658:
	.string	"P_SpawnPuff"
.LASF1586:
	.string	"sfx_metal"
.LASF443:
	.string	"S_SPOS_DIE1"
.LASF444:
	.string	"S_SPOS_DIE2"
.LASF445:
	.string	"S_SPOS_DIE3"
.LASF446:
	.string	"S_SPOS_DIE4"
.LASF447:
	.string	"S_SPOS_DIE5"
.LASF1489:
	.string	"PST_REBORN"
.LASF1553:
	.string	"sfx_sgtatk"
.LASF1172:
	.string	"S_HANGBNOBRAIN"
.LASF1550:
	.string	"sfx_mansit"
.LASF706:
	.string	"S_SARG_ATK1"
.LASF707:
	.string	"S_SARG_ATK2"
.LASF708:
	.string	"S_SARG_ATK3"
.LASF297:
	.string	"S_PLASMAUP"
.LASF1192:
	.string	"tics"
.LASF1053:
	.string	"S_YKEY"
.LASF1524:
	.string	"sfx_swtchn"
.LASF1353:
	.string	"speed"
.LASF1631:
	.string	"HU_Start"
.LASF266:
	.string	"S_DSNR1"
.LASF935:
	.string	"S_PAIN_DIE1"
.LASF1525:
	.string	"sfx_swtchx"
.LASF465:
	.string	"S_VILE_RUN2"
.LASF1591:
	.string	"sfx_itmbk"
.LASF1183:
	.string	"S_TECHLAMP4"
.LASF629:
	.string	"S_CPOS_RUN1"
.LASF630:
	.string	"S_CPOS_RUN2"
.LASF631:
	.string	"S_CPOS_RUN3"
.LASF632:
	.string	"S_CPOS_RUN4"
.LASF67:
	.string	"actionf_p1"
.LASF68:
	.string	"actionf_p2"
.LASF167:
	.string	"SPR_BPAK"
.LASF636:
	.string	"S_CPOS_RUN8"
.LASF1033:
	.string	"S_BEXP5"
.LASF1608:
	.string	"sfx_skeatk"
.LASF80:
	.string	"mapthing_t"
.LASF398:
	.string	"S_POSS_RUN2"
.LASF1628:
	.string	"P_AimLineAttack"
.LASF399:
	.string	"S_POSS_RUN3"
.LASF400:
	.string	"S_POSS_RUN4"
.LASF717:
	.string	"S_SARG_RAISE1"
.LASF401:
	.string	"S_POSS_RUN5"
.LASF69:
	.string	"acp1"
.LASF70:
	.string	"acp2"
.LASF721:
	.string	"S_SARG_RAISE5"
.LASF722:
	.string	"S_SARG_RAISE6"
.LASF1560:
	.string	"sfx_podth1"
.LASF1561:
	.string	"sfx_podth2"
.LASF1562:
	.string	"sfx_podth3"
.LASF1302:
	.string	"MT_MISC53"
.LASF1610:
	.string	"NUMSFX"
.LASF206:
	.string	"SPR_SMGT"
.LASF997:
	.string	"S_KEENPAIN"
.LASF345:
	.string	"S_BFGEXP2"
.LASF346:
	.string	"S_BFGEXP3"
.LASF347:
	.string	"S_BFGEXP4"
.LASF276:
	.string	"S_CHAINFLASH1"
.LASF277:
	.string	"S_CHAINFLASH2"
.LASF232:
	.string	"S_PISTOLDOWN"
.LASF897:
	.string	"S_CYBER_RUN1"
.LASF898:
	.string	"S_CYBER_RUN2"
.LASF899:
	.string	"S_CYBER_RUN3"
.LASF900:
	.string	"S_CYBER_RUN4"
.LASF901:
	.string	"S_CYBER_RUN5"
.LASF902:
	.string	"S_CYBER_RUN6"
.LASF903:
	.string	"S_CYBER_RUN7"
.LASF904:
	.string	"S_CYBER_RUN8"
.LASF1342:
	.string	"seesound"
.LASF1084:
	.string	"S_PMAP2"
.LASF1085:
	.string	"S_PMAP3"
.LASF1086:
	.string	"S_PMAP4"
.LASF1087:
	.string	"S_PMAP5"
.LASF1088:
	.string	"S_PMAP6"
.LASF1379:
	.string	"MF_MISSILE"
.LASF1445:
	.string	"bonuscount"
.LASF815:
	.string	"S_SKULL_PAIN2"
.LASF1346:
	.string	"painchance"
.LASF641:
	.string	"S_CPOS_PAIN"
.LASF1456:
	.string	"ceilingheight"
.LASF120:
	.string	"SPR_SARG"
.LASF946:
	.string	"S_PAIN_RAISE6"
.LASF1466:
	.string	"specialdata"
.LASF1285:
	.string	"MT_MISC36"
.LASF750:
	.string	"S_BOSS_RUN1"
.LASF751:
	.string	"S_BOSS_RUN2"
.LASF752:
	.string	"S_BOSS_RUN3"
.LASF753:
	.string	"S_BOSS_RUN4"
.LASF754:
	.string	"S_BOSS_RUN5"
.LASF272:
	.string	"S_CHAINUP"
.LASF1678:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1440:
	.string	"killcount"
.LASF891:
	.string	"S_ARACH_PLEX2"
.LASF1135:
	.string	"S_TORCHTREE"
.LASF947:
	.string	"S_SSWV_STND"
.LASF893:
	.string	"S_ARACH_PLEX4"
.LASF1372:
	.string	"MF_NOGRAVITY"
.LASF994:
	.string	"S_COMMKEEN10"
.LASF995:
	.string	"S_COMMKEEN11"
.LASF996:
	.string	"S_COMMKEEN12"
.LASF911:
	.string	"S_CYBER_PAIN"
.LASF1121:
	.string	"S_LIVESTICK"
.LASF430:
	.string	"S_SPOS_RUN1"
.LASF188:
	.string	"SPR_SMIT"
.LASF7:
	.string	"boolean"
.LASF433:
	.string	"S_SPOS_RUN4"
.LASF434:
	.string	"S_SPOS_RUN5"
.LASF125:
	.string	"SPR_SKUL"
.LASF436:
	.string	"S_SPOS_RUN7"
.LASF437:
	.string	"S_SPOS_RUN8"
.LASF1094:
	.string	"S_BROK"
.LASF1340:
	.string	"spawnhealth"
.LASF1569:
	.string	"sfx_cybdth"
.LASF224:
	.string	"S_PUNCHDOWN"
.LASF890:
	.string	"S_ARACH_PLEX"
.LASF1151:
	.string	"S_GREENTORCH"
.LASF43:
	.string	"wp_supershotgun"
.LASF290:
	.string	"S_SAWDOWN"
.LASF1514:
	.string	"sfx_sawhit"
.LASF1513:
	.string	"sfx_sawful"
.LASF1189:
	.string	"statenum_t"
.LASF1230:
	.string	"MT_TROOPSHOT"
.LASF1215:
	.string	"MT_BRUISERSHOT"
.LASF1581:
	.string	"sfx_vilact"
.LASF1640:
	.string	"P_SetThingPosition"
.LASF1656:
	.string	"P_CheckMissileSpawn"
.LASF17:
	.string	"ticcmd_t"
.LASF1335:
	.string	"MT_MISC86"
.LASF1483:
	.string	"ps_weapon"
.LASF1546:
	.string	"sfx_spisit"
.LASF378:
	.string	"S_PLAY_PAIN2"
.LASF1512:
	.string	"sfx_sawidl"
.LASF773:
	.string	"S_BOSS_RAISE4"
.LASF774:
	.string	"S_BOSS_RAISE5"
.LASF1191:
	.string	"frame"
.LASF117:
	.string	"SPR_MANF"
.LASF628:
	.string	"S_CPOS_STND2"
.LASF1579:
	.string	"sfx_bspact"
.LASF441:
	.string	"S_SPOS_PAIN"
.LASF37:
	.string	"wp_shotgun"
.LASF409:
	.string	"S_POSS_PAIN2"
.LASF1236:
	.string	"MT_PUFF"
.LASF281:
	.string	"S_MISSILE1"
.LASF282:
	.string	"S_MISSILE2"
.LASF283:
	.string	"S_MISSILE3"
.LASF657:
	.string	"S_CPOS_RAISE2"
.LASF658:
	.string	"S_CPOS_RAISE3"
.LASF659:
	.string	"S_CPOS_RAISE4"
.LASF1450:
	.string	"psprites"
.LASF1101:
	.string	"S_MGUN"
.LASF1214:
	.string	"MT_BRUISER"
.LASF166:
	.string	"SPR_SBOX"
.LASF1442:
	.string	"secretcount"
.LASF1337:
	.string	"mobjtype_t"
.LASF1351:
	.string	"xdeathstate"
.LASF1632:
	.string	"ST_Start"
.LASF1427:
	.string	"powers"
.LASF810:
	.string	"S_SKULL_ATK1"
.LASF811:
	.string	"S_SKULL_ATK2"
.LASF812:
	.string	"S_SKULL_ATK3"
.LASF813:
	.string	"S_SKULL_ATK4"
.LASF791:
	.string	"S_BOS2_PAIN2"
.LASF19:
	.string	"short unsigned int"
.LASF1216:
	.string	"MT_KNIGHT"
.LASF20:
	.string	"signed char"
.LASF11:
	.string	"sidemove"
.LASF1358:
	.string	"activesound"
.LASF442:
	.string	"S_SPOS_PAIN2"
.LASF1584:
	.string	"sfx_punch"
.LASF606:
	.string	"S_FATT_ATK10"
.LASF203:
	.string	"SPR_TGRN"
.LASF1261:
	.string	"MT_MEGA"
.LASF105:
	.string	"SPR_BFE1"
.LASF106:
	.string	"SPR_BFE2"
.LASF1465:
	.string	"thinglist"
.LASF1295:
	.string	"MT_MISC46"
.LASF1223:
	.string	"MT_KEEN"
.LASF1653:
	.string	"dest"
.LASF1463:
	.string	"blockbox"
.LASF1007:
	.string	"S_BRAINEYE1"
.LASF1672:
	.string	"ptryx"
.LASF663:
	.string	"S_TROO_STND"
.LASF610:
	.string	"S_FATT_DIE2"
.LASF301:
	.string	"S_PLASMAFLASH2"
.LASF1362:
	.string	"mobjinfo"
.LASF46:
	.string	"weapontype_t"
.LASF14:
	.string	"chatchar"
.LASF354:
	.string	"S_TFOG2"
.LASF355:
	.string	"S_TFOG3"
.LASF356:
	.string	"S_TFOG4"
.LASF357:
	.string	"S_TFOG5"
.LASF358:
	.string	"S_TFOG6"
.LASF359:
	.string	"S_TFOG7"
.LASF360:
	.string	"S_TFOG8"
.LASF361:
	.string	"S_TFOG9"
.LASF776:
	.string	"S_BOSS_RAISE7"
.LASF1436:
	.string	"attackdown"
.LASF81:
	.string	"SPR_TROO"
.LASF92:
	.string	"SPR_SAWG"
.LASF1618:
	.string	"totalitems"
.LASF1542:
	.string	"sfx_sgtsit"
.LASF1679:
	.string	"P_Random"
.LASF1388:
	.string	"MF_NOTDMATCH"
.LASF141:
	.string	"SPR_BON1"
.LASF142:
	.string	"SPR_BON2"
.LASF1364:
	.string	"MF_SOLID"
.LASF30:
	.string	"it_redcard"
.LASF1130:
	.string	"S_TALLREDCOL"
.LASF1633:
	.string	"I_Error"
.LASF1406:
	.string	"state"
.LASF1105:
	.string	"S_SHOT"
.LASF1496:
	.string	"itemrespawntime"
.LASF961:
	.string	"S_SSWV_ATK5"
.LASF1110:
	.string	"S_BLOODYTWITCH2"
.LASF1111:
	.string	"S_BLOODYTWITCH3"
.LASF1112:
	.string	"S_BLOODYTWITCH4"
.LASF851:
	.string	"S_SPID_DIE10"
.LASF852:
	.string	"S_SPID_DIE11"
.LASF1428:
	.string	"cards"
.LASF1635:
	.string	"G_PlayerReborn"
.LASF198:
	.string	"SPR_ELEC"
.LASF999:
	.string	"S_BRAIN"
.LASF1677:
	.string	"P_SetMobjState"
.LASF1218:
	.string	"MT_SPIDER"
.LASF1082:
	.string	"S_SUIT"
.LASF96:
	.string	"SPR_BFGF"
.LASF95:
	.string	"SPR_BFGG"
.LASF922:
	.string	"S_PAIN_STND"
.LASF1544:
	.string	"sfx_brssit"
.LASF338:
	.string	"S_BFGLAND"
.LASF1028:
	.string	"S_BAR2"
.LASF1432:
	.string	"pendingweapon"
.LASF75:
	.string	"function"
.LASF1587:
	.string	"sfx_chgun"
.LASF48:
	.string	"am_shell"
.LASF1404:
	.string	"validcount"
.LASF1443:
	.string	"message"
.LASF618:
	.string	"S_FATT_DIE10"
.LASF1662:
	.string	"P_SpawnPlayer"
.LASF34:
	.string	"NUMCARDS"
.LASF1155:
	.string	"S_REDTORCH"
.LASF1234:
	.string	"MT_BFG"
.LASF402:
	.string	"S_POSS_RUN6"
.LASF1555:
	.string	"sfx_vilatk"
.LASF1493:
	.string	"CF_NOMOMENTUM"
.LASF1643:
	.string	"R_PointInSubsector"
.LASF112:
	.string	"SPR_VILE"
.LASF1590:
	.string	"sfx_bdcls"
.LASF1237:
	.string	"MT_BLOOD"
.LASF231:
	.string	"S_PISTOL"
.LASF1638:
	.string	"P_UnsetThingPosition"
.LASF5:
	.string	"true"
.LASF1675:
	.string	"ymove"
.LASF24:
	.string	"sk_medium"
.LASF881:
	.string	"S_BSPI_RAISE1"
.LASF882:
	.string	"S_BSPI_RAISE2"
.LASF883:
	.string	"S_BSPI_RAISE3"
.LASF884:
	.string	"S_BSPI_RAISE4"
.LASF885:
	.string	"S_BSPI_RAISE5"
.LASF886:
	.string	"S_BSPI_RAISE6"
.LASF887:
	.string	"S_BSPI_RAISE7"
.LASF1401:
	.string	"momx"
.LASF1380:
	.string	"MF_DROPPED"
.LASF1402:
	.string	"momy"
.LASF12:
	.string	"angleturn"
.LASF970:
	.string	"S_SSWV_XDIE1"
.LASF971:
	.string	"S_SSWV_XDIE2"
.LASF972:
	.string	"S_SSWV_XDIE3"
.LASF973:
	.string	"S_SSWV_XDIE4"
.LASF974:
	.string	"S_SSWV_XDIE5"
.LASF975:
	.string	"S_SSWV_XDIE6"
.LASF976:
	.string	"S_SSWV_XDIE7"
.LASF977:
	.string	"S_SSWV_XDIE8"
.LASF978:
	.string	"S_SSWV_XDIE9"
.LASF268:
	.string	"S_DSGUNFLASH1"
.LASF269:
	.string	"S_DSGUNFLASH2"
.LASF1268:
	.string	"MT_MISC22"
.LASF1451:
	.string	"didsecret"
.LASF526:
	.string	"S_FIRE25"
.LASF620:
	.string	"S_FATT_RAISE2"
.LASF1304:
	.string	"MT_MISC55"
.LASF1424:
	.string	"deltaviewheight"
.LASF32:
	.string	"it_yellowskull"
.LASF1058:
	.string	"S_RSKULL2"
.LASF1415:
	.string	"tracer"
.LASF833:
	.string	"S_SPID_RUN10"
.LASF834:
	.string	"S_SPID_RUN11"
.LASF835:
	.string	"S_SPID_RUN12"
.LASF1651:
	.string	"rcsid"
.LASF1534:
	.string	"sfx_wpnup"
.LASF1360:
	.string	"raisestate"
.LASF284:
	.string	"S_MISSILEFLASH1"
.LASF285:
	.string	"S_MISSILEFLASH2"
.LASF286:
	.string	"S_MISSILEFLASH3"
.LASF287:
	.string	"S_MISSILEFLASH4"
.LASF147:
	.string	"SPR_RSKU"
.LASF1554:
	.string	"sfx_skepch"
.LASF1507:
	.string	"sfx_dbcls"
.LASF72:
	.string	"think_t"
.LASF10:
	.string	"forwardmove"
.LASF645:
	.string	"S_CPOS_DIE3"
.LASF646:
	.string	"S_CPOS_DIE4"
.LASF1381:
	.string	"MF_SHADOW"
.LASF647:
	.string	"S_CPOS_DIE5"
.LASF648:
	.string	"S_CPOS_DIE6"
.LASF649:
	.string	"S_CPOS_DIE7"
.LASF1491:
	.string	"CF_NOCLIP"
.LASF1654:
	.string	"dist"
.LASF1090:
	.string	"S_PVIS2"
.LASF1652:
	.string	"slope"
.LASF1229:
	.string	"MT_BARREL"
.LASF822:
	.string	"S_SPID_STND"
.LASF594:
	.string	"S_FATT_RUN10"
.LASF595:
	.string	"S_FATT_RUN11"
.LASF596:
	.string	"S_FATT_RUN12"
.LASF1221:
	.string	"MT_PAIN"
.LASF1148:
	.string	"S_BLUETORCH2"
.LASF1361:
	.string	"mobjinfo_t"
.LASF1149:
	.string	"S_BLUETORCH3"
.LASF1537:
	.string	"sfx_posit1"
.LASF1150:
	.string	"S_BLUETORCH4"
.LASF207:
	.string	"SPR_SMRT"
.LASF1645:
	.string	"P_AproxDistance"
.LASF309:
	.string	"S_BFGFLASH1"
.LASF310:
	.string	"S_BFGFLASH2"
.LASF843:
	.string	"S_SPID_DIE2"
.LASF124:
	.string	"SPR_BOS2"
.LASF846:
	.string	"S_SPID_DIE5"
.LASF847:
	.string	"S_SPID_DIE6"
.LASF1597:
	.string	"sfx_bossit"
.LASF848:
	.string	"S_SPID_DIE7"
.LASF849:
	.string	"S_SPID_DIE8"
.LASF1139:
	.string	"S_EVILEYE2"
.LASF1140:
	.string	"S_EVILEYE3"
.LASF1141:
	.string	"S_EVILEYE4"
.LASF314:
	.string	"S_PUFF1"
.LASF315:
	.string	"S_PUFF2"
.LASF316:
	.string	"S_PUFF3"
.LASF135:
	.string	"SPR_BOSF"
.LASF1468:
	.string	"lines"
.LASF123:
	.string	"SPR_BOSS"
.LASF1233:
	.string	"MT_PLASMA"
.LASF1609:
	.string	"sfx_radio"
.LASF868:
	.string	"S_BSPI_ATK1"
.LASF869:
	.string	"S_BSPI_ATK2"
.LASF870:
	.string	"S_BSPI_ATK3"
.LASF871:
	.string	"S_BSPI_ATK4"
.LASF1050:
	.string	"S_BKEY2"
.LASF44:
	.string	"NUMWEAPONS"
.LASF855:
	.string	"S_BSPI_SIGHT"
.LASF1526:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF857:
	.string	"S_BSPI_RUN2"
.LASF1001:
	.string	"S_BRAIN_DIE1"
.LASF1002:
	.string	"S_BRAIN_DIE2"
.LASF1003:
	.string	"S_BRAIN_DIE3"
.LASF1004:
	.string	"S_BRAIN_DIE4"
.LASF336:
	.string	"S_BFGSHOT"
.LASF1142:
	.string	"S_FLOATSKULL"
.LASF492:
	.string	"S_VILE_DIE1"
.LASF493:
	.string	"S_VILE_DIE2"
.LASF494:
	.string	"S_VILE_DIE3"
.LASF495:
	.string	"S_VILE_DIE4"
.LASF496:
	.string	"S_VILE_DIE5"
.LASF497:
	.string	"S_VILE_DIE6"
.LASF498:
	.string	"S_VILE_DIE7"
.LASF499:
	.string	"S_VILE_DIE8"
.LASF500:
	.string	"S_VILE_DIE9"
.LASF1444:
	.string	"damagecount"
.LASF1365:
	.string	"MF_SHOOTABLE"
.LASF176:
	.string	"SPR_SMT2"
.LASF1052:
	.string	"S_RKEY2"
.LASF1023:
	.string	"S_ARM1"
.LASF1025:
	.string	"S_ARM2"
.LASF1669:
	.string	"P_ZMovement"
.LASF1118:
	.string	"S_HEADCANDLES"
.LASF154:
	.string	"SPR_PINS"
.LASF748:
	.string	"S_BOSS_STND"
.LASF1578:
	.string	"sfx_dmact"
.LASF728:
	.string	"S_HEAD_PAIN"
.LASF29:
	.string	"it_yellowcard"
.LASF1205:
	.string	"MT_TRACER"
.LASF1657:
	.string	"P_SpawnBlood"
.LASF609:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF611:
	.string	"S_FATT_DIE3"
.LASF612:
	.string	"S_FATT_DIE4"
.LASF613:
	.string	"S_FATT_DIE5"
.LASF614:
	.string	"S_FATT_DIE6"
.LASF615:
	.string	"S_FATT_DIE7"
.LASF616:
	.string	"S_FATT_DIE8"
.LASF617:
	.string	"S_FATT_DIE9"
.LASF684:
	.string	"S_TROO_XDIE2"
.LASF685:
	.string	"S_TROO_XDIE3"
.LASF686:
	.string	"S_TROO_XDIE4"
.LASF687:
	.string	"S_TROO_XDIE5"
.LASF688:
	.string	"S_TROO_XDIE6"
.LASF689:
	.string	"S_TROO_XDIE7"
.LASF690:
	.string	"S_TROO_XDIE8"
.LASF159:
	.string	"SPR_CLIP"
.LASF1131:
	.string	"S_SHRTREDCOL"
.LASF1174:
	.string	"S_HANGTSKULL"
.LASF1620:
	.string	"players"
.LASF59:
	.string	"NUMPOWERS"
.LASF959:
	.string	"S_SSWV_ATK3"
.LASF960:
	.string	"S_SSWV_ATK4"
.LASF265:
	.string	"S_DSGUN10"
.LASF1566:
	.string	"sfx_cacdth"
.LASF54:
	.string	"pw_strength"
.LASF463:
	.string	"S_VILE_STND2"
.LASF193:
	.string	"SPR_CAND"
.LASF1523:
	.string	"sfx_stnmov"
.LASF1211:
	.string	"MT_SERGEANT"
.LASF1518:
	.string	"sfx_firxpl"
.LASF23:
	.string	"sk_easy"
.LASF1061:
	.string	"S_STIM"
.LASF49:
	.string	"am_cell"
.LASF28:
	.string	"it_bluecard"
.LASF1399:
	.string	"floorz"
.LASF724:
	.string	"S_HEAD_RUN1"
.LASF379:
	.string	"S_PLAY_DIE1"
.LASF380:
	.string	"S_PLAY_DIE2"
.LASF381:
	.string	"S_PLAY_DIE3"
.LASF382:
	.string	"S_PLAY_DIE4"
.LASF383:
	.string	"S_PLAY_DIE5"
.LASF384:
	.string	"S_PLAY_DIE6"
.LASF385:
	.string	"S_PLAY_DIE7"
.LASF395:
	.string	"S_POSS_STND"
.LASF351:
	.string	"S_TFOG"
.LASF1289:
	.string	"MT_MISC40"
.LASF1290:
	.string	"MT_MISC41"
.LASF1671:
	.string	"P_XYMovement"
.LASF1416:
	.string	"subsector_s"
.LASF711:
	.string	"S_SARG_DIE1"
.LASF712:
	.string	"S_SARG_DIE2"
.LASF713:
	.string	"S_SARG_DIE3"
.LASF714:
	.string	"S_SARG_DIE4"
.LASF1012:
	.string	"S_SPAWNFIRE1"
.LASF1013:
	.string	"S_SPAWNFIRE2"
.LASF1014:
	.string	"S_SPAWNFIRE3"
.LASF1015:
	.string	"S_SPAWNFIRE4"
.LASF1016:
	.string	"S_SPAWNFIRE5"
.LASF1017:
	.string	"S_SPAWNFIRE6"
.LASF1018:
	.string	"S_SPAWNFIRE7"
.LASF1019:
	.string	"S_SPAWNFIRE8"
.LASF683:
	.string	"S_TROO_XDIE1"
.LASF13:
	.string	"consistancy"
.LASF1417:
	.string	"sector"
.LASF1500:
	.string	"linetarget"
.LASF1176:
	.string	"S_HANGTNOBRAIN"
.LASF331:
	.string	"S_PLASEXP2"
.LASF332:
	.string	"S_PLASEXP3"
.LASF333:
	.string	"S_PLASEXP4"
.LASF334:
	.string	"S_PLASEXP5"
.LASF41:
	.string	"wp_bfg"
.LASF1160:
	.string	"S_BTORCHSHRT2"
.LASF1161:
	.string	"S_BTORCHSHRT3"
.LASF1162:
	.string	"S_BTORCHSHRT4"
.LASF1573:
	.string	"sfx_kntdth"
.LASF464:
	.string	"S_VILE_RUN1"
.LASF254:
	.string	"S_DSGUNDOWN"
.LASF466:
	.string	"S_VILE_RUN3"
.LASF467:
	.string	"S_VILE_RUN4"
.LASF468:
	.string	"S_VILE_RUN5"
.LASF469:
	.string	"S_VILE_RUN6"
.LASF470:
	.string	"S_VILE_RUN7"
.LASF471:
	.string	"S_VILE_RUN8"
.LASF472:
	.string	"S_VILE_RUN9"
.LASF715:
	.string	"S_SARG_DIE5"
.LASF716:
	.string	"S_SARG_DIE6"
.LASF1565:
	.string	"sfx_sgtdth"
.LASF1393:
	.string	"thinker"
.LASF1595:
	.string	"sfx_bospit"
.LASF556:
	.string	"S_SKEL_FIST1"
.LASF557:
	.string	"S_SKEL_FIST2"
.LASF558:
	.string	"S_SKEL_FIST3"
.LASF559:
	.string	"S_SKEL_FIST4"
.LASF295:
	.string	"S_PLASMA"
.LASF1074:
	.string	"S_PINS"
.LASF1530:
	.string	"sfx_mnpain"
.LASF1147:
	.string	"S_BLUETORCH"
.LASF585:
	.string	"S_FATT_RUN1"
.LASF586:
	.string	"S_FATT_RUN2"
.LASF587:
	.string	"S_FATT_RUN3"
.LASF588:
	.string	"S_FATT_RUN4"
.LASF56:
	.string	"pw_ironfeet"
.LASF590:
	.string	"S_FATT_RUN6"
.LASF591:
	.string	"S_FATT_RUN7"
.LASF592:
	.string	"S_FATT_RUN8"
.LASF1123:
	.string	"S_MEAT2"
.LASF1124:
	.string	"S_MEAT3"
.LASF1125:
	.string	"S_MEAT4"
.LASF1126:
	.string	"S_MEAT5"
.LASF1551:
	.string	"sfx_pesit"
.LASF238:
	.string	"S_PISTOLFLASH"
.LASF1455:
	.string	"floorheight"
.LASF458:
	.string	"S_SPOS_RAISE2"
.LASF459:
	.string	"S_SPOS_RAISE3"
.LASF460:
	.string	"S_SPOS_RAISE4"
.LASF461:
	.string	"S_SPOS_RAISE5"
.LASF150:
	.string	"SPR_MEDI"
.LASF152:
	.string	"SPR_PINV"
.LASF1540:
	.string	"sfx_bgsit1"
.LASF1541:
	.string	"sfx_bgsit2"
.LASF1575:
	.string	"sfx_skedth"
.LASF1000:
	.string	"S_BRAIN_PAIN"
.LASF271:
	.string	"S_CHAINDOWN"
.LASF1376:
	.string	"MF_SLIDE"
.LASF1495:
	.string	"itemrespawnque"
.LASF490:
	.string	"S_VILE_PAIN"
.LASF537:
	.string	"S_TRACER"
.LASF957:
	.string	"S_SSWV_ATK1"
.LASF958:
	.string	"S_SSWV_ATK2"
.LASF487:
	.string	"S_VILE_HEAL1"
.LASF488:
	.string	"S_VILE_HEAL2"
.LASF489:
	.string	"S_VILE_HEAL3"
.LASF962:
	.string	"S_SSWV_ATK6"
.LASF1409:
	.string	"movecount"
.LASF144:
	.string	"SPR_RKEY"
.LASF1547:
	.string	"sfx_bspsit"
.LASF1108:
	.string	"S_STALAG"
.LASF1642:
	.string	"Z_Malloc"
.LASF1528:
	.string	"sfx_popain"
.LASF823:
	.string	"S_SPID_STND2"
.LASF65:
	.string	"angle_t"
.LASF1458:
	.string	"ceilingpic"
.LASF1109:
	.string	"S_BLOODYTWITCH"
.LASF1178:
	.string	"S_SMALLPOOL"
.LASF1486:
	.string	"pspdef_t"
.LASF1305:
	.string	"MT_MISC56"
.LASF607:
	.string	"S_FATT_PAIN"
.LASF371:
	.string	"S_PLAY_RUN1"
.LASF372:
	.string	"S_PLAY_RUN2"
.LASF373:
	.string	"S_PLAY_RUN3"
.LASF374:
	.string	"S_PLAY_RUN4"
.LASF1099:
	.string	"S_BPAK"
.LASF61:
	.string	"double"
.LASF139:
	.string	"SPR_BEXP"
.LASF1420:
	.string	"player_s"
.LASF1056:
	.string	"S_BSKULL2"
.LASF1371:
	.string	"MF_SPAWNCEILING"
.LASF98:
	.string	"SPR_PUFF"
.LASF985:
	.string	"S_COMMKEEN"
.LASF1519:
	.string	"sfx_pstart"
.LASF1437:
	.string	"usedown"
.LASF1664:
	.string	"P_RemoveMobj"
.LASF1613:
	.string	"respawnmonsters"
.LASF777:
	.string	"S_BOS2_STND"
.LASF104:
	.string	"SPR_BFS1"
.LASF1008:
	.string	"S_SPAWN1"
.LASF1009:
	.string	"S_SPAWN2"
.LASF1010:
	.string	"S_SPAWN3"
.LASF1011:
	.string	"S_SPAWN4"
.LASF1181:
	.string	"S_TECHLAMP2"
.LASF1182:
	.string	"S_TECHLAMP3"
.LASF42:
	.string	"wp_chainsaw"
.LASF1219:
	.string	"MT_BABY"
.LASF1435:
	.string	"maxammo"
.LASF1592:
	.string	"sfx_flame"
.LASF1122:
	.string	"S_LIVESTICK2"
.LASF1167:
	.string	"S_RTORCHSHRT"
.LASF1265:
	.string	"MT_MISC19"
.LASF126:
	.string	"SPR_SPID"
.LASF723:
	.string	"S_HEAD_STND"
.LASF698:
	.string	"S_SARG_RUN1"
.LASF699:
	.string	"S_SARG_RUN2"
.LASF701:
	.string	"S_SARG_RUN4"
.LASF702:
	.string	"S_SARG_RUN5"
.LASF703:
	.string	"S_SARG_RUN6"
.LASF704:
	.string	"S_SARG_RUN7"
.LASF705:
	.string	"S_SARG_RUN8"
.LASF1243:
	.string	"MT_MISC1"
.LASF1244:
	.string	"MT_MISC2"
.LASF1245:
	.string	"MT_MISC3"
.LASF1246:
	.string	"MT_MISC4"
.LASF1247:
	.string	"MT_MISC5"
.LASF1248:
	.string	"MT_MISC6"
.LASF1249:
	.string	"MT_MISC7"
.LASF1250:
	.string	"MT_MISC8"
.LASF1251:
	.string	"MT_MISC9"
.LASF288:
	.string	"S_SAW"
.LASF155:
	.string	"SPR_MEGA"
.LASF377:
	.string	"S_PLAY_PAIN"
.LASF1556:
	.string	"sfx_claw"
.LASF329:
	.string	"S_PLASBALL2"
.LASF1484:
	.string	"ps_flash"
.LASF1421:
	.string	"playerstate"
.LASF133:
	.string	"SPR_KEEN"
.LASF963:
	.string	"S_SSWV_PAIN"
.LASF1345:
	.string	"painstate"
.LASF998:
	.string	"S_KEENPAIN2"
.LASF58:
	.string	"pw_infrared"
.LASF485:
	.string	"S_VILE_ATK10"
.LASF486:
	.string	"S_VILE_ATK11"
.LASF964:
	.string	"S_SSWV_PAIN2"
.LASF1329:
	.string	"MT_MISC80"
.LASF1352:
	.string	"deathsound"
.LASF1038:
	.string	"S_BON1A"
.LASF1039:
	.string	"S_BON1B"
.LASF1040:
	.string	"S_BON1C"
.LASF1041:
	.string	"S_BON1D"
.LASF1042:
	.string	"S_BON1E"
.LASF1619:
	.string	"leveltime"
.LASF1475:
	.string	"sector_t"
.LASF1668:
	.string	"P_NightmareRespawn"
.LASF153:
	.string	"SPR_PSTR"
.LASF1267:
	.string	"MT_MISC21"
.LASF709:
	.string	"S_SARG_PAIN"
.LASF1262:
	.string	"MT_CLIP"
.LASF1634:
	.string	"P_SetupPsprites"
.LASF168:
	.string	"SPR_BFUG"
.LASF1317:
	.string	"MT_MISC68"
.LASF1034:
	.string	"S_BBAR1"
.LASF1035:
	.string	"S_BBAR2"
.LASF1036:
	.string	"S_BBAR3"
.LASF222:
	.string	"S_LIGHTDONE"
.LASF873:
	.string	"S_BSPI_PAIN2"
.LASF1429:
	.string	"backpack"
.LASF673:
	.string	"S_TROO_ATK1"
.LASF674:
	.string	"S_TROO_ATK2"
.LASF675:
	.string	"S_TROO_ATK3"
.LASF817:
	.string	"S_SKULL_DIE2"
.LASF818:
	.string	"S_SKULL_DIE3"
.LASF819:
	.string	"S_SKULL_DIE4"
.LASF820:
	.string	"S_SKULL_DIE5"
.LASF821:
	.string	"S_SKULL_DIE6"
.LASF172:
	.string	"SPR_PLAS"
.LASF1044:
	.string	"S_BON2A"
.LASF1045:
	.string	"S_BON2B"
.LASF85:
	.string	"SPR_PISF"
.LASF84:
	.string	"SPR_PISG"
.LASF1048:
	.string	"S_BON2E"
.LASF1272:
	.string	"MT_CHAINGUN"
.LASF320:
	.string	"S_TBALLX1"
.LASF321:
	.string	"S_TBALLX2"
.LASF322:
	.string	"S_TBALLX3"
.LASF45:
	.string	"wp_nochange"
.LASF1209:
	.string	"MT_CHAINGUY"
.LASF1454:
	.string	"degenmobj_t"
.LASF1538:
	.string	"sfx_posit2"
.LASF1539:
	.string	"sfx_posit3"
.LASF816:
	.string	"S_SKULL_DIE1"
.LASF1488:
	.string	"PST_DEAD"
.LASF1179:
	.string	"S_BRAINSTEM"
.LASF984:
	.string	"S_KEENSTND"
.LASF109:
	.string	"SPR_PLAY"
.LASF1375:
	.string	"MF_NOCLIP"
.LASF1431:
	.string	"readyweapon"
.LASF1543:
	.string	"sfx_cacsit"
.LASF1552:
	.string	"sfx_sklatk"
.LASF1119:
	.string	"S_HEADCANDLES2"
.LASF1239:
	.string	"MT_IFOG"
.LASF200:
	.string	"SPR_FSKU"
.LASF1598:
	.string	"sfx_bospn"
.LASF435:
	.string	"S_SPOS_RUN6"
.LASF291:
	.string	"S_SAWUP"
.LASF1024:
	.string	"S_ARM1A"
.LASF627:
	.string	"S_CPOS_STND"
.LASF1280:
	.string	"MT_MISC31"
.LASF1403:
	.string	"momz"
.LASF1098:
	.string	"S_SBOX"
.LASF1461:
	.string	"soundtraversed"
.LASF1283:
	.string	"MT_MISC34"
.LASF1482:
	.string	"subsector_t"
.LASF1471:
	.string	"bbox"
.LASF330:
	.string	"S_PLASEXP"
.LASF1286:
	.string	"MT_MISC37"
.LASF1532:
	.string	"sfx_slop"
.LASF1114:
	.string	"S_DEADBOTTOM"
.LASF1589:
	.string	"sfx_bdopn"
.LASF1171:
	.string	"S_HANGNOGUTS"
.LASF1344:
	.string	"attacksound"
.LASF1075:
	.string	"S_PINS2"
.LASF1076:
	.string	"S_PINS3"
.LASF1077:
	.string	"S_PINS4"
.LASF929:
	.string	"S_PAIN_ATK1"
.LASF930:
	.string	"S_PAIN_ATK2"
.LASF931:
	.string	"S_PAIN_ATK3"
.LASF932:
	.string	"S_PAIN_ATK4"
.LASF241:
	.string	"S_SGUNUP"
.LASF1373:
	.string	"MF_DROPOFF"
.LASF1473:
	.string	"frontsector"
.LASF194:
	.string	"SPR_CBRA"
.LASF1350:
	.string	"deathstate"
.LASF1026:
	.string	"S_ARM2A"
.LASF895:
	.string	"S_CYBER_STND"
.LASF1054:
	.string	"S_YKEY2"
.LASF504:
	.string	"S_FIRE3"
.LASF1343:
	.string	"reactiontime"
.LASF509:
	.string	"S_FIRE8"
.LASF749:
	.string	"S_BOSS_STND2"
.LASF1582:
	.string	"sfx_noway"
.LASF1499:
	.string	"ceilingline"
.LASF644:
	.string	"S_CPOS_DIE2"
.LASF1395:
	.string	"sprev"
.LASF292:
	.string	"S_SAW1"
.LASF293:
	.string	"S_SAW2"
.LASF294:
	.string	"S_SAW3"
.LASF1037:
	.string	"S_BON1"
.LASF1043:
	.string	"S_BON2"
.LASF1412:
	.string	"player"
.LASF289:
	.string	"S_SAWB"
.LASF677:
	.string	"S_TROO_PAIN2"
.LASF1225:
	.string	"MT_BOSSSPIT"
.LASF502:
	.string	"S_FIRE1"
.LASF503:
	.string	"S_FIRE2"
.LASF62:
	.string	"fixed_t"
.LASF505:
	.string	"S_FIRE4"
.LASF506:
	.string	"S_FIRE5"
.LASF507:
	.string	"S_FIRE6"
.LASF508:
	.string	"S_FIRE7"
.LASF162:
	.string	"SPR_BROK"
.LASF510:
	.string	"S_FIRE9"
.LASF1293:
	.string	"MT_MISC44"
.LASF1294:
	.string	"MT_MISC45"
.LASF1095:
	.string	"S_CELL"
.LASF1667:
	.string	"P_MobjThinker"
.LASF1296:
	.string	"MT_MISC47"
.LASF160:
	.string	"SPR_AMMO"
.LASF1297:
	.string	"MT_MISC48"
.LASF1298:
	.string	"MT_MISC49"
.LASF808:
	.string	"S_SKULL_RUN1"
.LASF809:
	.string	"S_SKULL_RUN2"
.LASF1175:
	.string	"S_HANGTLOOKUP"
.LASF1366:
	.string	"MF_NOSECTOR"
.LASF270:
	.string	"S_CHAIN"
.LASF300:
	.string	"S_PLASMAFLASH1"
.LASF256:
	.string	"S_DSGUN1"
.LASF257:
	.string	"S_DSGUN2"
.LASF151:
	.string	"SPR_SOUL"
.LASF111:
	.string	"SPR_SPOS"
.LASF260:
	.string	"S_DSGUN5"
.LASF261:
	.string	"S_DSGUN6"
.LASF262:
	.string	"S_DSGUN7"
.LASF263:
	.string	"S_DSGUN8"
.LASF264:
	.string	"S_DSGUN9"
.LASF428:
	.string	"S_SPOS_STND"
.LASF131:
	.string	"SPR_PAIN"
.LASF656:
	.string	"S_CPOS_RAISE1"
.LASF1430:
	.string	"frags"
.LASF1572:
	.string	"sfx_vildth"
.LASF1425:
	.string	"armorpoints"
.LASF15:
	.string	"buttons"
.LASF305:
	.string	"S_BFG1"
.LASF306:
	.string	"S_BFG2"
.LASF307:
	.string	"S_BFG3"
.LASF308:
	.string	"S_BFG4"
.LASF220:
	.string	"spritenum_t"
.LASF267:
	.string	"S_DSNR2"
.LASF807:
	.string	"S_SKULL_STND2"
.LASF1070:
	.string	"S_PINV2"
.LASF1071:
	.string	"S_PINV3"
.LASF700:
	.string	"S_SARG_RUN3"
.LASF1185:
	.string	"S_TECH2LAMP2"
.LASF1186:
	.string	"S_TECH2LAMP3"
.LASF1187:
	.string	"S_TECH2LAMP4"
.LASF64:
	.string	"finecosine"
.LASF1469:
	.string	"line_s"
.LASF1384:
	.string	"MF_INFLOAT"
.LASF83:
	.string	"SPR_PUNG"
.LASF651:
	.string	"S_CPOS_XDIE2"
.LASF652:
	.string	"S_CPOS_XDIE3"
.LASF653:
	.string	"S_CPOS_XDIE4"
.LASF654:
	.string	"S_CPOS_XDIE5"
.LASF655:
	.string	"S_CPOS_XDIE6"
.LASF836:
	.string	"S_SPID_ATK1"
.LASF837:
	.string	"S_SPID_ATK2"
.LASF838:
	.string	"S_SPID_ATK3"
.LASF839:
	.string	"S_SPID_ATK4"
.LASF560:
	.string	"S_SKEL_MISS1"
.LASF561:
	.string	"S_SKEL_MISS2"
.LASF562:
	.string	"S_SKEL_MISS3"
.LASF563:
	.string	"S_SKEL_MISS4"
.LASF317:
	.string	"S_PUFF4"
.LASF1057:
	.string	"S_RSKULL"
.LASF889:
	.string	"S_ARACH_PLAZ2"
.LASF1299:
	.string	"MT_MISC50"
.LASF1636:
	.string	"P_RemoveThinker"
.LASF737:
	.string	"S_HEAD_RAISE1"
.LASF1334:
	.string	"MT_MISC85"
.LASF738:
	.string	"S_HEAD_RAISE2"
.LASF739:
	.string	"S_HEAD_RAISE3"
.LASF1438:
	.string	"cheats"
.LASF146:
	.string	"SPR_BSKU"
.LASF741:
	.string	"S_HEAD_RAISE5"
.LASF742:
	.string	"S_HEAD_RAISE6"
.LASF1641:
	.string	"memset"
.LASF1277:
	.string	"MT_SUPERSHOTGUN"
.LASF157:
	.string	"SPR_PMAP"
.LASF1005:
	.string	"S_BRAINEYE"
.LASF158:
	.string	"SPR_PVIS"
.LASF1487:
	.string	"PST_LIVE"
.LASF1629:
	.string	"R_PointToAngle2"
.LASF1235:
	.string	"MT_ARACHPLAZ"
.LASF1382:
	.string	"MF_NOBLOOD"
.LASF1673:
	.string	"ptryy"
.LASF483:
	.string	"S_VILE_ATK8"
.LASF424:
	.string	"S_POSS_RAISE1"
.LASF425:
	.string	"S_POSS_RAISE2"
.LASF426:
	.string	"S_POSS_RAISE3"
.LASF427:
	.string	"S_POSS_RAISE4"
.LASF279:
	.string	"S_MISSILEDOWN"
.LASF1583:
	.string	"sfx_barexp"
.LASF1143:
	.string	"S_FLOATSKULL2"
.LASF1144:
	.string	"S_FLOATSKULL3"
.LASF1506:
	.string	"sfx_dbopn"
.LASF1510:
	.string	"sfx_bfg"
.LASF1498:
	.string	"iquetail"
.LASF1078:
	.string	"S_MEGA"
.LASF758:
	.string	"S_BOSS_ATK1"
.LASF759:
	.string	"S_BOSS_ATK2"
.LASF760:
	.string	"S_BOSS_ATK3"
.LASF1398:
	.string	"subsector"
.LASF216:
	.string	"SPR_BRS1"
.LASF1453:
	.string	"vertex_t"
.LASF565:
	.string	"S_SKEL_PAIN2"
.LASF1102:
	.string	"S_CSAW"
.LASF53:
	.string	"pw_invulnerability"
.LASF745:
	.string	"S_BRBALLX1"
.LASF746:
	.string	"S_BRBALLX2"
.LASF747:
	.string	"S_BRBALLX3"
.LASF875:
	.string	"S_BSPI_DIE2"
.LASF876:
	.string	"S_BSPI_DIE3"
.LASF877:
	.string	"S_BSPI_DIE4"
.LASF878:
	.string	"S_BSPI_DIE5"
.LASF38:
	.string	"wp_chaingun"
.LASF880:
	.string	"S_BSPI_DIE7"
.LASF27:
	.string	"skill_t"
.LASF431:
	.string	"S_SPOS_RUN2"
.LASF1474:
	.string	"backsector"
.LASF432:
	.string	"S_SPOS_RUN3"
.LASF934:
	.string	"S_PAIN_PAIN2"
.LASF569:
	.string	"S_SKEL_DIE4"
.LASF1502:
	.string	"sfx_pistol"
.LASF165:
	.string	"SPR_SHEL"
.LASF1318:
	.string	"MT_MISC69"
.LASF1426:
	.string	"armortype"
.LASF4:
	.string	"false"
.LASF217:
	.string	"SPR_TLMP"
.LASF1378:
	.string	"MF_TELEPORT"
.LASF396:
	.string	"S_POSS_STND2"
.LASF1276:
	.string	"MT_SHOTGUN"
.LASF1617:
	.string	"totalkills"
.LASF1201:
	.string	"MT_SHOTGUY"
.LASF1441:
	.string	"itemcount"
.LASF1180:
	.string	"S_TECHLAMP"
.LASF1222:
	.string	"MT_WOLFSS"
.LASF1660:
	.string	"mthing"
.LASF778:
	.string	"S_BOS2_STND2"
.LASF1462:
	.string	"soundtarget"
.LASF273:
	.string	"S_CHAIN1"
.LASF274:
	.string	"S_CHAIN2"
.LASF275:
	.string	"S_CHAIN3"
.LASF326:
	.string	"S_RBALLX2"
.LASF327:
	.string	"S_RBALLX3"
.LASF202:
	.string	"SPR_TBLU"
.LASF429:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1503:
	.string	"sfx_shotgn"
.LASF1394:
	.string	"snext"
.LASF52:
	.string	"am_noammo"
.LASF1391:
	.string	"thinker_s"
.LASF76:
	.string	"thinker_t"
.LASF1563:
	.string	"sfx_bgdth1"
.LASF1564:
	.string	"sfx_bgdth2"
.LASF405:
	.string	"S_POSS_ATK1"
.LASF406:
	.string	"S_POSS_ATK2"
.LASF407:
	.string	"S_POSS_ATK3"
.LASF22:
	.string	"sk_baby"
.LASF1320:
	.string	"MT_MISC71"
.LASF1168:
	.string	"S_RTORCHSHRT2"
.LASF1169:
	.string	"S_RTORCHSHRT3"
.LASF1170:
	.string	"S_RTORCHSHRT4"
.LASF1072:
	.string	"S_PINV4"
.LASF16:
	.string	"short int"
.LASF856:
	.string	"S_BSPI_RUN1"
.LASF1326:
	.string	"MT_MISC77"
.LASF1327:
	.string	"MT_MISC78"
.LASF1328:
	.string	"MT_MISC79"
.LASF1217:
	.string	"MT_SKULL"
.LASF1204:
	.string	"MT_UNDEAD"
.LASF73:
	.string	"prev"
.LASF566:
	.string	"S_SKEL_DIE1"
.LASF567:
	.string	"S_SKEL_DIE2"
.LASF568:
	.string	"S_SKEL_DIE3"
.LASF113:
	.string	"SPR_FIRE"
.LASF570:
	.string	"S_SKEL_DIE5"
.LASF571:
	.string	"S_SKEL_DIE6"
.LASF1177:
	.string	"S_COLONGIBS"
.LASF218:
	.string	"SPR_TLP2"
.LASF328:
	.string	"S_PLASBALL"
.LASF1559:
	.string	"sfx_pdiehi"
.LASF174:
	.string	"SPR_SGN2"
.LASF79:
	.string	"options"
.LASF127:
	.string	"SPR_BSPI"
.LASF129:
	.string	"SPR_APBX"
.LASF1449:
	.string	"colormap"
.LASF1252:
	.string	"MT_MISC10"
.LASF1253:
	.string	"MT_MISC11"
.LASF1254:
	.string	"MT_MISC12"
.LASF1256:
	.string	"MT_MISC13"
.LASF1258:
	.string	"MT_MISC14"
.LASF1259:
	.string	"MT_MISC15"
.LASF1260:
	.string	"MT_MISC16"
.LASF1263:
	.string	"MT_MISC17"
.LASF1264:
	.string	"MT_MISC18"
.LASF1091:
	.string	"S_CLIP"
.LASF1354:
	.string	"radius"
.LASF1655:
	.string	"P_SpawnPlayerMissile"
.LASF1407:
	.string	"health"
.LASF1226:
	.string	"MT_BOSSTARGET"
.LASF1548:
	.string	"sfx_kntsit"
.LASF1386:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_mobj.c"
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
