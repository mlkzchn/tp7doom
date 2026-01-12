	.file	"p_ceilng.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_ceilng.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: p_ceilng.c,v 1.4 1997/02/03 16:47:53 b1 Exp $"
	.globl	activeceilings
	.bss
	.align 32
	.type	activeceilings, @object
	.size	activeceilings, 240
activeceilings:
	.zero	240
	.text
	.globl	T_MoveCeiling
	.type	T_MoveCeiling, @function
T_MoveCeiling:
.LFB0:
	.file 1 "p_ceilng.c"
	.loc 1 53 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ceiling, ceiling
# p_ceilng.c:56:     switch(ceiling->direction)
	.loc 1 56 19
	movq	-24(%rbp), %rax	# ceiling, tmp110
	movl	56(%rax), %eax	# ceiling_38(D)->direction, _1
# p_ceilng.c:56:     switch(ceiling->direction)
	.loc 1 56 5
	cmpl	$1, %eax	#, _1
	je	.L2	#,
	cmpl	$1, %eax	#, _1
	jg	.L26	#,
	cmpl	$-1, %eax	#, _1
	je	.L4	#,
	testl	%eax, %eax	# _1
	jne	.L26	#,
# p_ceilng.c:60: 	break;
	.loc 1 60 2
	jmp	.L3	#
.L2:
# p_ceilng.c:63: 	res = T_MovePlane(ceiling->sector,
	.loc 1 63 8
	movq	-24(%rbp), %rax	# ceiling, tmp111
	movl	56(%rax), %ecx	# ceiling_38(D)->direction, _2
	movq	-24(%rbp), %rax	# ceiling, tmp112
	movl	44(%rax), %edx	# ceiling_38(D)->topheight, _3
	movq	-24(%rbp), %rax	# ceiling, tmp113
	movl	48(%rax), %esi	# ceiling_38(D)->speed, _4
	movq	-24(%rbp), %rax	# ceiling, tmp114
	movq	32(%rax), %rax	# ceiling_38(D)->sector, _5
	movl	%ecx, %r9d	# _2,
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# _5,
	call	T_MovePlane@PLT	#
	movl	%eax, -4(%rbp)	# tmp115, res
# p_ceilng.c:68: 	if (!(leveltime&7))
	.loc 1 68 17
	movl	leveltime(%rip), %eax	# leveltime, leveltime.0_6
	andl	$7, %eax	#, _7
# p_ceilng.c:68: 	if (!(leveltime&7))
	.loc 1 68 5
	testl	%eax, %eax	# _7
	jne	.L5	#,
# p_ceilng.c:70: 	    switch(ceiling->type)
	.loc 1 70 20
	movq	-24(%rbp), %rax	# ceiling, tmp116
	movl	24(%rax), %eax	# ceiling_38(D)->type, _8
# p_ceilng.c:70: 	    switch(ceiling->type)
	.loc 1 70 6
	cmpl	$5, %eax	#, _8
	je	.L27	#,
# p_ceilng.c:75: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 75 34
	movq	-24(%rbp), %rax	# ceiling, tmp117
	movq	32(%rax), %rax	# ceiling_38(D)->sector, _9
# p_ceilng.c:75: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 75 26
	addq	$48, %rax	#, _10
# p_ceilng.c:75: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 75 3
	movl	$22, %esi	#,
	movq	%rax, %rdi	# _10,
	call	S_StartSound@PLT	#
# p_ceilng.c:78: 		break;
	.loc 1 78 3
	jmp	.L5	#
.L27:
# p_ceilng.c:73: 		break;
	.loc 1 73 3
	nop	
.L5:
# p_ceilng.c:82: 	if (res == pastdest)
	.loc 1 82 5
	cmpl	$2, -4(%rbp)	#, res
	jne	.L28	#,
# p_ceilng.c:84: 	    switch(ceiling->type)
	.loc 1 84 20
	movq	-24(%rbp), %rax	# ceiling, tmp118
	movl	24(%rax), %eax	# ceiling_38(D)->type, _11
# p_ceilng.c:84: 	    switch(ceiling->type)
	.loc 1 84 6
	cmpl	$5, %eax	#, _11
	je	.L8	#,
	cmpl	$5, %eax	#, _11
	ja	.L29	#,
	cmpl	$1, %eax	#, _11
	je	.L10	#,
	testl	%eax, %eax	# _11
	je	.L29	#,
	subl	$3, %eax	#, _53
	cmpl	$1, %eax	#, _53
	ja	.L29	#,
	jmp	.L11	#
.L10:
# p_ceilng.c:87: 		P_RemoveActiveCeiling(ceiling);
	.loc 1 87 3
	movq	-24(%rbp), %rax	# ceiling, tmp119
	movq	%rax, %rdi	# tmp119,
	call	P_RemoveActiveCeiling	#
# p_ceilng.c:88: 		break;
	.loc 1 88 3
	jmp	.L7	#
.L8:
# p_ceilng.c:91: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 91 34
	movq	-24(%rbp), %rax	# ceiling, tmp120
	movq	32(%rax), %rax	# ceiling_38(D)->sector, _12
# p_ceilng.c:91: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 91 26
	addq	$48, %rax	#, _13
# p_ceilng.c:91: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 91 3
	movl	$19, %esi	#,
	movq	%rax, %rdi	# _13,
	call	S_StartSound@PLT	#
.L11:
# p_ceilng.c:95: 		ceiling->direction = -1;
	.loc 1 95 22
	movq	-24(%rbp), %rax	# ceiling, tmp121
	movl	$-1, 56(%rax)	#, ceiling_38(D)->direction
# p_ceilng.c:96: 		break;
	.loc 1 96 3
	jmp	.L7	#
.L29:
# p_ceilng.c:99: 		break;
	.loc 1 99 3
	nop	
.L7:
# p_ceilng.c:103: 	break;
	.loc 1 103 2
	jmp	.L28	#
.L4:
# p_ceilng.c:107: 	res = T_MovePlane(ceiling->sector,
	.loc 1 107 8
	movq	-24(%rbp), %rax	# ceiling, tmp122
	movl	56(%rax), %edi	# ceiling_38(D)->direction, _14
	movq	-24(%rbp), %rax	# ceiling, tmp123
	movl	52(%rax), %ecx	# ceiling_38(D)->crush, _15
	movq	-24(%rbp), %rax	# ceiling, tmp124
	movl	40(%rax), %edx	# ceiling_38(D)->bottomheight, _16
	movq	-24(%rbp), %rax	# ceiling, tmp125
	movl	48(%rax), %esi	# ceiling_38(D)->speed, _17
	movq	-24(%rbp), %rax	# ceiling, tmp126
	movq	32(%rax), %rax	# ceiling_38(D)->sector, _18
	movl	%edi, %r9d	# _14,
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# _18,
	call	T_MovePlane@PLT	#
	movl	%eax, -4(%rbp)	# tmp127, res
# p_ceilng.c:112: 	if (!(leveltime&7))
	.loc 1 112 17
	movl	leveltime(%rip), %eax	# leveltime, leveltime.1_19
	andl	$7, %eax	#, _20
# p_ceilng.c:112: 	if (!(leveltime&7))
	.loc 1 112 5
	testl	%eax, %eax	# _20
	jne	.L12	#,
# p_ceilng.c:114: 	    switch(ceiling->type)
	.loc 1 114 20
	movq	-24(%rbp), %rax	# ceiling, tmp128
	movl	24(%rax), %eax	# ceiling_38(D)->type, _21
# p_ceilng.c:114: 	    switch(ceiling->type)
	.loc 1 114 6
	cmpl	$5, %eax	#, _21
	je	.L30	#,
# p_ceilng.c:118: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 118 34
	movq	-24(%rbp), %rax	# ceiling, tmp129
	movq	32(%rax), %rax	# ceiling_38(D)->sector, _22
# p_ceilng.c:118: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 118 26
	addq	$48, %rax	#, _23
# p_ceilng.c:118: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 118 3
	movl	$22, %esi	#,
	movq	%rax, %rdi	# _23,
	call	S_StartSound@PLT	#
	jmp	.L12	#
.L30:
# p_ceilng.c:116: 	      case silentCrushAndRaise: break;
	.loc 1 116 34
	nop	
.L12:
# p_ceilng.c:123: 	if (res == pastdest)
	.loc 1 123 5
	cmpl	$2, -4(%rbp)	#, res
	jne	.L14	#,
# p_ceilng.c:125: 	    switch(ceiling->type)
	.loc 1 125 20
	movq	-24(%rbp), %rax	# ceiling, tmp130
	movl	24(%rax), %eax	# ceiling_38(D)->type, _24
# p_ceilng.c:125: 	    switch(ceiling->type)
	.loc 1 125 6
	cmpl	$5, %eax	#, _24
	ja	.L31	#,
	movl	%eax, %eax	# _24, tmp131
	leaq	0(,%rax,4), %rdx	#, tmp132
	leaq	.L17(%rip), %rax	#, tmp133
	movl	(%rdx,%rax), %eax	#, tmp134
	cltq
	leaq	.L17(%rip), %rdx	#, tmp137
	addq	%rdx, %rax	# tmp137, tmp136
	notrack jmp	*%rax	# tmp136
	.section	.rodata
	.align 4
	.align 4
.L17:
	.long	.L20-.L17
	.long	.L31-.L17
	.long	.L20-.L17
	.long	.L19-.L17
	.long	.L18-.L17
	.long	.L16-.L17
	.text
.L16:
# p_ceilng.c:128: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 128 34
	movq	-24(%rbp), %rax	# ceiling, tmp138
	movq	32(%rax), %rax	# ceiling_38(D)->sector, _25
# p_ceilng.c:128: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 128 26
	addq	$48, %rax	#, _26
# p_ceilng.c:128: 		S_StartSound((mobj_t *)&ceiling->sector->soundorg,
	.loc 1 128 3
	movl	$19, %esi	#,
	movq	%rax, %rdi	# _26,
	call	S_StartSound@PLT	#
.L19:
# p_ceilng.c:131: 		ceiling->speed = CEILSPEED;
	.loc 1 131 18
	movq	-24(%rbp), %rax	# ceiling, tmp139
	movl	$65536, 48(%rax)	#, ceiling_38(D)->speed
.L18:
# p_ceilng.c:133: 		ceiling->direction = 1;
	.loc 1 133 22
	movq	-24(%rbp), %rax	# ceiling, tmp140
	movl	$1, 56(%rax)	#, ceiling_38(D)->direction
# p_ceilng.c:134: 		break;
	.loc 1 134 3
	jmp	.L22	#
.L20:
# p_ceilng.c:138: 		P_RemoveActiveCeiling(ceiling);
	.loc 1 138 3
	movq	-24(%rbp), %rax	# ceiling, tmp141
	movq	%rax, %rdi	# tmp141,
	call	P_RemoveActiveCeiling	#
# p_ceilng.c:139: 		break;
	.loc 1 139 3
	jmp	.L22	#
.L14:
# p_ceilng.c:147: 	    if (res == crushed)
	.loc 1 147 9
	cmpl	$1, -4(%rbp)	#, res
	jne	.L32	#,
# p_ceilng.c:149: 		switch(ceiling->type)
	.loc 1 149 17
	movq	-24(%rbp), %rax	# ceiling, tmp142
	movl	24(%rax), %eax	# ceiling_38(D)->type, _27
# p_ceilng.c:149: 		switch(ceiling->type)
	.loc 1 149 3
	cmpl	$3, %eax	#, _27
	ja	.L23	#,
	cmpl	$2, %eax	#, _27
	jnb	.L24	#,
# p_ceilng.c:158: 		    break;
	.loc 1 158 7
	jmp	.L33	#
.L23:
# p_ceilng.c:149: 		switch(ceiling->type)
	.loc 1 149 3
	cmpl	$5, %eax	#, _27
	jne	.L33	#,
.L24:
# p_ceilng.c:154: 		    ceiling->speed = CEILSPEED / 8;
	.loc 1 154 22
	movq	-24(%rbp), %rax	# ceiling, tmp143
	movl	$8192, 48(%rax)	#, ceiling_38(D)->speed
# p_ceilng.c:155: 		    break;
	.loc 1 155 7
	jmp	.L22	#
.L31:
# p_ceilng.c:142: 		break;
	.loc 1 142 3
	nop	
	jmp	.L32	#
.L33:
# p_ceilng.c:158: 		    break;
	.loc 1 158 7
	nop	
.L22:
# p_ceilng.c:162: 	break;
	.loc 1 162 2
	jmp	.L32	#
.L28:
# p_ceilng.c:103: 	break;
	.loc 1 103 2
	nop	
	jmp	.L26	#
.L32:
# p_ceilng.c:162: 	break;
	.loc 1 162 2
	nop	
.L3:
.L26:
# p_ceilng.c:164: }
	.loc 1 164 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	T_MoveCeiling, .-T_MoveCeiling
	.globl	EV_DoCeiling
	.type	EV_DoCeiling, @function
EV_DoCeiling:
.LFB1:
	.loc 1 175 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# line, line
	movl	%esi, -44(%rbp)	# type, type
# p_ceilng.c:181:     secnum = -1;
	.loc 1 181 12
	movl	$-1, -24(%rbp)	#, secnum
# p_ceilng.c:182:     rtn = 0;
	.loc 1 182 9
	movl	$0, -20(%rbp)	#, rtn
	movl	-44(%rbp), %eax	# type, tmp100
	subl	$3, %eax	#, _26
# p_ceilng.c:185:     switch(type)
	.loc 1 185 5
	cmpl	$2, %eax	#, _26
	ja	.L49	#,
# p_ceilng.c:190: 	P_ActivateInStasisCeiling(line);
	.loc 1 190 2
	movq	-40(%rbp), %rax	# line, tmp101
	movq	%rax, %rdi	# tmp101,
	call	P_ActivateInStasisCeiling	#
.L49:
# p_ceilng.c:192: 	break;
	.loc 1 192 2
	nop	
# p_ceilng.c:195:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 195 11
	jmp	.L36	#
.L46:
# p_ceilng.c:197: 	sec = &sectors[secnum];
	.loc 1 197 8
	movq	sectors(%rip), %rax	# sectors, sectors.2_1
# p_ceilng.c:197: 	sec = &sectors[secnum];
	.loc 1 197 16
	movl	-24(%rbp), %edx	# secnum, tmp102
	movslq	%edx, %rdx	# tmp102, _2
	salq	$7, %rdx	#, _3
# p_ceilng.c:197: 	sec = &sectors[secnum];
	.loc 1 197 6
	addq	%rdx, %rax	# _3, tmp103
	movq	%rax, -16(%rbp)	# tmp103, sec
# p_ceilng.c:198: 	if (sec->specialdata)
	.loc 1 198 9
	movq	-16(%rbp), %rax	# sec, tmp104
	movq	104(%rax), %rax	# sec_33->specialdata, _4
# p_ceilng.c:198: 	if (sec->specialdata)
	.loc 1 198 5
	testq	%rax, %rax	# _4
	jne	.L50	#,
# p_ceilng.c:202: 	rtn = 1;
	.loc 1 202 6
	movl	$1, -20(%rbp)	#, rtn
# p_ceilng.c:203: 	ceiling = Z_Malloc (sizeof(*ceiling), PU_LEVSPEC, 0);
	.loc 1 203 12
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$72, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp105, ceiling
# p_ceilng.c:204: 	P_AddThinker (&ceiling->thinker);
	.loc 1 204 2
	movq	-8(%rbp), %rax	# ceiling, _5
	movq	%rax, %rdi	# _5,
	call	P_AddThinker@PLT	#
# p_ceilng.c:205: 	sec->specialdata = ceiling;
	.loc 1 205 19
	movq	-16(%rbp), %rax	# sec, tmp106
	movq	-8(%rbp), %rdx	# ceiling, tmp107
	movq	%rdx, 104(%rax)	# tmp107, sec_33->specialdata
# p_ceilng.c:206: 	ceiling->thinker.function.acp1 = (actionf_p1)T_MoveCeiling;
	.loc 1 206 33
	movq	-8(%rbp), %rax	# ceiling, tmp108
	leaq	T_MoveCeiling(%rip), %rdx	#, tmp109
	movq	%rdx, 16(%rax)	# tmp109, ceiling_36->thinker.function.acp1
# p_ceilng.c:207: 	ceiling->sector = sec;
	.loc 1 207 18
	movq	-8(%rbp), %rax	# ceiling, tmp110
	movq	-16(%rbp), %rdx	# sec, tmp111
	movq	%rdx, 32(%rax)	# tmp111, ceiling_36->sector
# p_ceilng.c:208: 	ceiling->crush = false;
	.loc 1 208 17
	movq	-8(%rbp), %rax	# ceiling, tmp112
	movl	$0, 52(%rax)	#, ceiling_36->crush
# p_ceilng.c:210: 	switch(type)
	.loc 1 210 2
	cmpl	$5, -44(%rbp)	#, type
	ja	.L39	#,
	movl	-44(%rbp), %eax	# type, tmp113
	leaq	0(,%rax,4), %rdx	#, tmp114
	leaq	.L41(%rip), %rax	#, tmp115
	movl	(%rdx,%rax), %eax	#, tmp116
	cltq
	leaq	.L41(%rip), %rdx	#, tmp119
	addq	%rdx, %rax	# tmp119, tmp118
	notrack jmp	*%rax	# tmp118
	.section	.rodata
	.align 4
	.align 4
.L41:
	.long	.L43-.L41
	.long	.L44-.L41
	.long	.L43-.L41
	.long	.L40-.L41
	.long	.L42-.L41
	.long	.L40-.L41
	.text
.L42:
# p_ceilng.c:213: 	    ceiling->crush = true;
	.loc 1 213 21
	movq	-8(%rbp), %rax	# ceiling, tmp120
	movl	$1, 52(%rax)	#, ceiling_36->crush
# p_ceilng.c:214: 	    ceiling->topheight = sec->ceilingheight;
	.loc 1 214 30
	movq	-16(%rbp), %rax	# sec, tmp121
	movl	4(%rax), %edx	# sec_33->ceilingheight, _6
# p_ceilng.c:214: 	    ceiling->topheight = sec->ceilingheight;
	.loc 1 214 25
	movq	-8(%rbp), %rax	# ceiling, tmp122
	movl	%edx, 44(%rax)	# _6, ceiling_36->topheight
# p_ceilng.c:215: 	    ceiling->bottomheight = sec->floorheight + (8*FRACUNIT);
	.loc 1 215 33
	movq	-16(%rbp), %rax	# sec, tmp123
	movl	(%rax), %eax	# sec_33->floorheight, _7
# p_ceilng.c:215: 	    ceiling->bottomheight = sec->floorheight + (8*FRACUNIT);
	.loc 1 215 47
	leal	524288(%rax), %edx	#, _8
# p_ceilng.c:215: 	    ceiling->bottomheight = sec->floorheight + (8*FRACUNIT);
	.loc 1 215 28
	movq	-8(%rbp), %rax	# ceiling, tmp124
	movl	%edx, 40(%rax)	# _8, ceiling_36->bottomheight
# p_ceilng.c:216: 	    ceiling->direction = -1;
	.loc 1 216 25
	movq	-8(%rbp), %rax	# ceiling, tmp125
	movl	$-1, 56(%rax)	#, ceiling_36->direction
# p_ceilng.c:217: 	    ceiling->speed = CEILSPEED * 2;
	.loc 1 217 21
	movq	-8(%rbp), %rax	# ceiling, tmp126
	movl	$131072, 48(%rax)	#, ceiling_36->speed
# p_ceilng.c:218: 	    break;
	.loc 1 218 6
	jmp	.L39	#
.L40:
# p_ceilng.c:222: 	    ceiling->crush = true;
	.loc 1 222 21
	movq	-8(%rbp), %rax	# ceiling, tmp127
	movl	$1, 52(%rax)	#, ceiling_36->crush
# p_ceilng.c:223: 	    ceiling->topheight = sec->ceilingheight;
	.loc 1 223 30
	movq	-16(%rbp), %rax	# sec, tmp128
	movl	4(%rax), %edx	# sec_33->ceilingheight, _9
# p_ceilng.c:223: 	    ceiling->topheight = sec->ceilingheight;
	.loc 1 223 25
	movq	-8(%rbp), %rax	# ceiling, tmp129
	movl	%edx, 44(%rax)	# _9, ceiling_36->topheight
.L43:
# p_ceilng.c:226: 	    ceiling->bottomheight = sec->floorheight;
	.loc 1 226 33
	movq	-16(%rbp), %rax	# sec, tmp130
	movl	(%rax), %edx	# sec_33->floorheight, _10
# p_ceilng.c:226: 	    ceiling->bottomheight = sec->floorheight;
	.loc 1 226 28
	movq	-8(%rbp), %rax	# ceiling, tmp131
	movl	%edx, 40(%rax)	# _10, ceiling_36->bottomheight
# p_ceilng.c:227: 	    if (type != lowerToFloor)
	.loc 1 227 9
	cmpl	$0, -44(%rbp)	#, type
	je	.L45	#,
# p_ceilng.c:228: 		ceiling->bottomheight += 8*FRACUNIT;
	.loc 1 228 10
	movq	-8(%rbp), %rax	# ceiling, tmp132
	movl	40(%rax), %eax	# ceiling_36->bottomheight, _11
# p_ceilng.c:228: 		ceiling->bottomheight += 8*FRACUNIT;
	.loc 1 228 25
	leal	524288(%rax), %edx	#, _12
	movq	-8(%rbp), %rax	# ceiling, tmp133
	movl	%edx, 40(%rax)	# _12, ceiling_36->bottomheight
.L45:
# p_ceilng.c:229: 	    ceiling->direction = -1;
	.loc 1 229 25
	movq	-8(%rbp), %rax	# ceiling, tmp134
	movl	$-1, 56(%rax)	#, ceiling_36->direction
# p_ceilng.c:230: 	    ceiling->speed = CEILSPEED;
	.loc 1 230 21
	movq	-8(%rbp), %rax	# ceiling, tmp135
	movl	$65536, 48(%rax)	#, ceiling_36->speed
# p_ceilng.c:231: 	    break;
	.loc 1 231 6
	jmp	.L39	#
.L44:
# p_ceilng.c:234: 	    ceiling->topheight = P_FindHighestCeilingSurrounding(sec);
	.loc 1 234 27
	movq	-16(%rbp), %rax	# sec, tmp136
	movq	%rax, %rdi	# tmp136,
	call	P_FindHighestCeilingSurrounding@PLT	#
# p_ceilng.c:234: 	    ceiling->topheight = P_FindHighestCeilingSurrounding(sec);
	.loc 1 234 25 discriminator 1
	movq	-8(%rbp), %rdx	# ceiling, tmp137
	movl	%eax, 44(%rdx)	# _13, ceiling_36->topheight
# p_ceilng.c:235: 	    ceiling->direction = 1;
	.loc 1 235 25
	movq	-8(%rbp), %rax	# ceiling, tmp138
	movl	$1, 56(%rax)	#, ceiling_36->direction
# p_ceilng.c:236: 	    ceiling->speed = CEILSPEED;
	.loc 1 236 21
	movq	-8(%rbp), %rax	# ceiling, tmp139
	movl	$65536, 48(%rax)	#, ceiling_36->speed
# p_ceilng.c:237: 	    break;
	.loc 1 237 6
	nop	
.L39:
# p_ceilng.c:240: 	ceiling->tag = sec->tag;
	.loc 1 240 20
	movq	-16(%rbp), %rax	# sec, tmp140
	movzwl	16(%rax), %eax	# sec_33->tag, _14
	movswl	%ax, %edx	# _14, _15
# p_ceilng.c:240: 	ceiling->tag = sec->tag;
	.loc 1 240 15
	movq	-8(%rbp), %rax	# ceiling, tmp141
	movl	%edx, 60(%rax)	# _15, ceiling_36->tag
# p_ceilng.c:241: 	ceiling->type = type;
	.loc 1 241 16
	movq	-8(%rbp), %rax	# ceiling, tmp142
	movl	-44(%rbp), %edx	# type, tmp143
	movl	%edx, 24(%rax)	# tmp143, ceiling_36->type
# p_ceilng.c:242: 	P_AddActiveCeiling(ceiling);
	.loc 1 242 2
	movq	-8(%rbp), %rax	# ceiling, tmp144
	movq	%rax, %rdi	# tmp144,
	call	P_AddActiveCeiling	#
	jmp	.L36	#
.L50:
# p_ceilng.c:199: 	    continue;
	.loc 1 199 6
	nop	
.L36:
# p_ceilng.c:195:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 195 22
	movl	-24(%rbp), %edx	# secnum, tmp145
	movq	-40(%rbp), %rax	# line, tmp146
	movl	%edx, %esi	# tmp145,
	movq	%rax, %rdi	# tmp146,
	call	P_FindSectorFromLineTag@PLT	#
	movl	%eax, -24(%rbp)	# tmp147, secnum
# p_ceilng.c:195:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 195 60 discriminator 1
	cmpl	$0, -24(%rbp)	#, secnum
	jns	.L46	#,
# p_ceilng.c:244:     return rtn;
	.loc 1 244 12
	movl	-20(%rbp), %eax	# rtn, _32
# p_ceilng.c:245: }
	.loc 1 245 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	EV_DoCeiling, .-EV_DoCeiling
	.globl	P_AddActiveCeiling
	.type	P_AddActiveCeiling, @function
P_AddActiveCeiling:
.LFB2:
	.loc 1 252 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# c, c
# p_ceilng.c:255:     for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 255 12
	movl	$0, -4(%rbp)	#, i
# p_ceilng.c:255:     for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 255 5
	jmp	.L52	#
.L55:
# p_ceilng.c:257: 	if (activeceilings[i] == NULL)
	.loc 1 257 20
	movl	-4(%rbp), %eax	# i, tmp84
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp85
	leaq	activeceilings(%rip), %rax	#, tmp86
	movq	(%rdx,%rax), %rax	# activeceilings[i_2], _1
# p_ceilng.c:257: 	if (activeceilings[i] == NULL)
	.loc 1 257 5
	testq	%rax, %rax	# _1
	jne	.L53	#,
# p_ceilng.c:259: 	    activeceilings[i] = c;
	.loc 1 259 24
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp89
	leaq	activeceilings(%rip), %rdx	#, tmp90
	movq	-24(%rbp), %rax	# c, tmp91
	movq	%rax, (%rcx,%rdx)	# tmp91, activeceilings[i_2]
# p_ceilng.c:260: 	    return;
	.loc 1 260 6
	jmp	.L51	#
.L53:
# p_ceilng.c:255:     for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 255 34 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L52:
# p_ceilng.c:255:     for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 255 19 discriminator 1
	cmpl	$29, -4(%rbp)	#, i
	jle	.L55	#,
.L51:
# p_ceilng.c:263: }
	.loc 1 263 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_AddActiveCeiling, .-P_AddActiveCeiling
	.globl	P_RemoveActiveCeiling
	.type	P_RemoveActiveCeiling, @function
P_RemoveActiveCeiling:
.LFB3:
	.loc 1 271 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# c, c
# p_ceilng.c:274:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 274 12
	movl	$0, -4(%rbp)	#, i
# p_ceilng.c:274:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 274 5
	jmp	.L57	#
.L60:
# p_ceilng.c:276: 	if (activeceilings[i] == c)
	.loc 1 276 20
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp89
	leaq	activeceilings(%rip), %rax	#, tmp90
	movq	(%rdx,%rax), %rax	# activeceilings[i_6], _1
# p_ceilng.c:276: 	if (activeceilings[i] == c)
	.loc 1 276 5
	cmpq	%rax, -24(%rbp)	# _1, c
	jne	.L58	#,
# p_ceilng.c:278: 	    activeceilings[i]->sector->specialdata = NULL;
	.loc 1 278 20
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp93
	leaq	activeceilings(%rip), %rax	#, tmp94
	movq	(%rdx,%rax), %rax	# activeceilings[i_6], _2
# p_ceilng.c:278: 	    activeceilings[i]->sector->specialdata = NULL;
	.loc 1 278 23
	movq	32(%rax), %rax	# _2->sector, _3
# p_ceilng.c:278: 	    activeceilings[i]->sector->specialdata = NULL;
	.loc 1 278 45
	movq	$0, 104(%rax)	#, _3->specialdata
# p_ceilng.c:279: 	    P_RemoveThinker (&activeceilings[i]->thinker);
	.loc 1 279 38
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp97
	leaq	activeceilings(%rip), %rax	#, tmp98
	movq	(%rdx,%rax), %rax	# activeceilings[i_6], _4
# p_ceilng.c:279: 	    P_RemoveThinker (&activeceilings[i]->thinker);
	.loc 1 279 6
	movq	%rax, %rdi	# _5,
	call	P_RemoveThinker@PLT	#
# p_ceilng.c:280: 	    activeceilings[i] = NULL;
	.loc 1 280 24
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp101
	leaq	activeceilings(%rip), %rax	#, tmp102
	movq	$0, (%rdx,%rax)	#, activeceilings[i_6]
# p_ceilng.c:281: 	    break;
	.loc 1 281 6
	jmp	.L59	#
.L58:
# p_ceilng.c:274:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 274 33 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L57:
# p_ceilng.c:274:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 274 18 discriminator 1
	cmpl	$29, -4(%rbp)	#, i
	jle	.L60	#,
# p_ceilng.c:284: }
	.loc 1 284 1
	nop	
.L59:
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_RemoveActiveCeiling, .-P_RemoveActiveCeiling
	.globl	P_ActivateInStasisCeiling
	.type	P_ActivateInStasisCeiling, @function
P_ActivateInStasisCeiling:
.LFB4:
	.loc 1 292 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# line, line
# p_ceilng.c:295:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 295 12
	movl	$0, -4(%rbp)	#, i
# p_ceilng.c:295:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 295 5
	jmp	.L62	#
.L64:
# p_ceilng.c:297: 	if (activeceilings[i]
	.loc 1 297 20
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp95
	leaq	activeceilings(%rip), %rax	#, tmp96
	movq	(%rdx,%rax), %rax	# activeceilings[i_12], _1
# p_ceilng.c:297: 	if (activeceilings[i]
	.loc 1 297 5
	testq	%rax, %rax	# _1
	je	.L63	#,
# p_ceilng.c:298: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 298 24
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp99
	leaq	activeceilings(%rip), %rax	#, tmp100
	movq	(%rdx,%rax), %rax	# activeceilings[i_12], _2
# p_ceilng.c:298: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 298 27
	movl	60(%rax), %edx	# _2->tag, _3
# p_ceilng.c:298: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 298 40
	movq	-24(%rbp), %rax	# line, tmp101
	movzwl	28(%rax), %eax	# line_17(D)->tag, _4
	cwtl
# p_ceilng.c:298: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 298 6
	cmpl	%eax, %edx	# _5, _3
	jne	.L63	#,
# p_ceilng.c:299: 	    && (activeceilings[i]->direction == 0))
	.loc 1 299 24
	movl	-4(%rbp), %eax	# i, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp104
	leaq	activeceilings(%rip), %rax	#, tmp105
	movq	(%rdx,%rax), %rax	# activeceilings[i_12], _6
# p_ceilng.c:299: 	    && (activeceilings[i]->direction == 0))
	.loc 1 299 27
	movl	56(%rax), %eax	# _6->direction, _7
# p_ceilng.c:299: 	    && (activeceilings[i]->direction == 0))
	.loc 1 299 6
	testl	%eax, %eax	# _7
	jne	.L63	#,
# p_ceilng.c:301: 	    activeceilings[i]->direction = activeceilings[i]->olddirection;
	.loc 1 301 51
	movl	-4(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp108
	leaq	activeceilings(%rip), %rax	#, tmp109
	movq	(%rdx,%rax), %rdx	# activeceilings[i_12], _8
# p_ceilng.c:301: 	    activeceilings[i]->direction = activeceilings[i]->olddirection;
	.loc 1 301 20
	movl	-4(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp112
	leaq	activeceilings(%rip), %rax	#, tmp113
	movq	(%rcx,%rax), %rax	# activeceilings[i_12], _9
# p_ceilng.c:301: 	    activeceilings[i]->direction = activeceilings[i]->olddirection;
	.loc 1 301 54
	movl	64(%rdx), %edx	# _8->olddirection, _10
# p_ceilng.c:301: 	    activeceilings[i]->direction = activeceilings[i]->olddirection;
	.loc 1 301 35
	movl	%edx, 56(%rax)	# _10, _9->direction
# p_ceilng.c:302: 	    activeceilings[i]->thinker.function.acp1
	.loc 1 302 20
	movl	-4(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp116
	leaq	activeceilings(%rip), %rax	#, tmp117
	movq	(%rdx,%rax), %rax	# activeceilings[i_12], _11
# p_ceilng.c:303: 	      = (actionf_p1)T_MoveCeiling;
	.loc 1 303 8
	leaq	T_MoveCeiling(%rip), %rdx	#, tmp118
	movq	%rdx, 16(%rax)	# tmp118, _11->thinker.function.acp1
.L63:
# p_ceilng.c:295:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 295 33 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L62:
# p_ceilng.c:295:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 295 18 discriminator 1
	cmpl	$29, -4(%rbp)	#, i
	jle	.L64	#,
# p_ceilng.c:306: }
	.loc 1 306 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_ActivateInStasisCeiling, .-P_ActivateInStasisCeiling
	.globl	EV_CeilingCrushStop
	.type	EV_CeilingCrushStop, @function
EV_CeilingCrushStop:
.LFB5:
	.loc 1 315 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# line, line
# p_ceilng.c:319:     rtn = 0;
	.loc 1 319 9
	movl	$0, -4(%rbp)	#, rtn
# p_ceilng.c:320:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 320 12
	movl	$0, -8(%rbp)	#, i
# p_ceilng.c:320:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 320 5
	jmp	.L66	#
.L68:
# p_ceilng.c:322: 	if (activeceilings[i]
	.loc 1 322 20
	movl	-8(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp98
	leaq	activeceilings(%rip), %rax	#, tmp99
	movq	(%rdx,%rax), %rax	# activeceilings[i_13], _1
# p_ceilng.c:322: 	if (activeceilings[i]
	.loc 1 322 5
	testq	%rax, %rax	# _1
	je	.L67	#,
# p_ceilng.c:323: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 323 24
	movl	-8(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp102
	leaq	activeceilings(%rip), %rax	#, tmp103
	movq	(%rdx,%rax), %rax	# activeceilings[i_13], _2
# p_ceilng.c:323: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 323 27
	movl	60(%rax), %edx	# _2->tag, _3
# p_ceilng.c:323: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 323 40
	movq	-24(%rbp), %rax	# line, tmp104
	movzwl	28(%rax), %eax	# line_22(D)->tag, _4
	cwtl
# p_ceilng.c:323: 	    && (activeceilings[i]->tag == line->tag)
	.loc 1 323 6
	cmpl	%eax, %edx	# _5, _3
	jne	.L67	#,
# p_ceilng.c:324: 	    && (activeceilings[i]->direction != 0))
	.loc 1 324 24
	movl	-8(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp107
	leaq	activeceilings(%rip), %rax	#, tmp108
	movq	(%rdx,%rax), %rax	# activeceilings[i_13], _6
# p_ceilng.c:324: 	    && (activeceilings[i]->direction != 0))
	.loc 1 324 27
	movl	56(%rax), %eax	# _6->direction, _7
# p_ceilng.c:324: 	    && (activeceilings[i]->direction != 0))
	.loc 1 324 6
	testl	%eax, %eax	# _7
	je	.L67	#,
# p_ceilng.c:326: 	    activeceilings[i]->olddirection = activeceilings[i]->direction;
	.loc 1 326 54
	movl	-8(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp111
	leaq	activeceilings(%rip), %rax	#, tmp112
	movq	(%rdx,%rax), %rdx	# activeceilings[i_13], _8
# p_ceilng.c:326: 	    activeceilings[i]->olddirection = activeceilings[i]->direction;
	.loc 1 326 20
	movl	-8(%rbp), %eax	# i, tmp114
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp115
	leaq	activeceilings(%rip), %rax	#, tmp116
	movq	(%rcx,%rax), %rax	# activeceilings[i_13], _9
# p_ceilng.c:326: 	    activeceilings[i]->olddirection = activeceilings[i]->direction;
	.loc 1 326 57
	movl	56(%rdx), %edx	# _8->direction, _10
# p_ceilng.c:326: 	    activeceilings[i]->olddirection = activeceilings[i]->direction;
	.loc 1 326 38
	movl	%edx, 64(%rax)	# _10, _9->olddirection
# p_ceilng.c:327: 	    activeceilings[i]->thinker.function.acv = (actionf_v)NULL;
	.loc 1 327 20
	movl	-8(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp119
	leaq	activeceilings(%rip), %rax	#, tmp120
	movq	(%rdx,%rax), %rax	# activeceilings[i_13], _11
# p_ceilng.c:327: 	    activeceilings[i]->thinker.function.acv = (actionf_v)NULL;
	.loc 1 327 46
	movq	$0, 16(%rax)	#, _11->thinker.function.acv
# p_ceilng.c:328: 	    activeceilings[i]->direction = 0;		// in-stasis
	.loc 1 328 20
	movl	-8(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp123
	leaq	activeceilings(%rip), %rax	#, tmp124
	movq	(%rdx,%rax), %rax	# activeceilings[i_13], _12
# p_ceilng.c:328: 	    activeceilings[i]->direction = 0;		// in-stasis
	.loc 1 328 35
	movl	$0, 56(%rax)	#, _12->direction
# p_ceilng.c:329: 	    rtn = 1;
	.loc 1 329 10
	movl	$1, -4(%rbp)	#, rtn
.L67:
# p_ceilng.c:320:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 320 33 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L66:
# p_ceilng.c:320:     for (i = 0;i < MAXCEILINGS;i++)
	.loc 1 320 18 discriminator 1
	cmpl	$29, -8(%rbp)	#, i
	jle	.L68	#,
# p_ceilng.c:334:     return rtn;
	.loc 1 334 12
	movl	-4(%rbp), %eax	# rtn, _21
# p_ceilng.c:335: }
	.loc 1 335 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	EV_CeilingCrushStop, .-EV_CeilingCrushStop
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "m_fixed.h"
	.file 4 "tables.h"
	.file 5 "d_think.h"
	.file 6 "doomtype.h"
	.file 7 "doomdata.h"
	.file 8 "info.h"
	.file 9 "p_mobj.h"
	.file 10 "r_defs.h"
	.file 11 "d_player.h"
	.file 12 "p_pspr.h"
	.file 13 "d_ticcmd.h"
	.file 14 "p_spec.h"
	.file 15 "r_state.h"
	.file 16 "doomstat.h"
	.file 17 "sounds.h"
	.file 18 "p_local.h"
	.file 19 "z_zone.h"
	.file 20 "s_sound.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3368
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1e
	.long	.LASF1596
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
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.long	0x2e
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x19
	.long	0x4a
	.uleb128 0x12
	.long	.LASF1587
	.byte	0x18
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0xda
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
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.uleb128 0x2
	.long	.LASF16
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x129
	.uleb128 0x2
	.long	.LASF17
	.byte	0
	.uleb128 0x2
	.long	.LASF18
	.byte	0x1
	.uleb128 0x2
	.long	.LASF19
	.byte	0x2
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.uleb128 0x2
	.long	.LASF21
	.byte	0x4
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.uleb128 0x2
	.long	.LASF23
	.byte	0x6
	.uleb128 0x2
	.long	.LASF24
	.byte	0x7
	.uleb128 0x2
	.long	.LASF25
	.byte	0x8
	.uleb128 0x2
	.long	.LASF26
	.byte	0x9
	.uleb128 0x2
	.long	.LASF27
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF43
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0xda
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x166
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
	.byte	0
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x19d
	.uleb128 0x2
	.long	.LASF34
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x1
	.uleb128 0x2
	.long	.LASF36
	.byte	0x2
	.uleb128 0x2
	.long	.LASF37
	.byte	0x3
	.uleb128 0x2
	.long	.LASF38
	.byte	0x4
	.uleb128 0x2
	.long	.LASF39
	.byte	0x5
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.long	.LASF41
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF42
	.uleb128 0x5
	.long	.LASF44
	.byte	0x3
	.byte	0x26
	.byte	0xd
	.long	0x90
	.uleb128 0x5
	.long	.LASF45
	.byte	0x4
	.byte	0x4e
	.byte	0x12
	.long	0x6b
	.uleb128 0x5
	.long	.LASF46
	.byte	0x5
	.byte	0x29
	.byte	0x11
	.long	0x1cf
	.uleb128 0x8
	.long	0x1d4
	.uleb128 0x21
	.long	0x1db
	.uleb128 0x22
	.byte	0
	.uleb128 0x5
	.long	.LASF47
	.byte	0x5
	.byte	0x2a
	.byte	0x11
	.long	0x1e7
	.uleb128 0x8
	.long	0x1ec
	.uleb128 0x1a
	.long	0x1f7
	.uleb128 0x7
	.long	0x72
	.byte	0
	.uleb128 0x5
	.long	.LASF48
	.byte	0x5
	.byte	0x2b
	.byte	0x11
	.long	0x203
	.uleb128 0x8
	.long	0x208
	.uleb128 0x1a
	.long	0x218
	.uleb128 0x7
	.long	0x72
	.uleb128 0x7
	.long	0x72
	.byte	0
	.uleb128 0x23
	.byte	0x8
	.byte	0x5
	.byte	0x2d
	.byte	0x9
	.long	0x242
	.uleb128 0x1b
	.long	.LASF49
	.byte	0x2f
	.long	0x1db
	.uleb128 0x24
	.string	"acv"
	.byte	0x5
	.byte	0x30
	.byte	0xd
	.long	0x1c3
	.uleb128 0x1b
	.long	.LASF50
	.byte	0x31
	.long	0x1f7
	.byte	0
	.uleb128 0x5
	.long	.LASF51
	.byte	0x5
	.byte	0x33
	.byte	0x3
	.long	0x218
	.uleb128 0x5
	.long	.LASF52
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.long	0x242
	.uleb128 0xf
	.long	.LASF1345
	.byte	0x18
	.byte	0x5
	.byte	0x40
	.long	0x28e
	.uleb128 0x3
	.long	.LASF53
	.byte	0x5
	.byte	0x42
	.byte	0x17
	.long	0x28e
	.byte	0
	.uleb128 0x3
	.long	.LASF54
	.byte	0x5
	.byte	0x43
	.byte	0x17
	.long	0x28e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF55
	.byte	0x5
	.byte	0x44
	.byte	0xe
	.long	0x24e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x25a
	.uleb128 0x5
	.long	.LASF56
	.byte	0x5
	.byte	0x46
	.byte	0x3
	.long	0x25a
	.uleb128 0x9
	.long	0x6b
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.long	0x2b8
	.uleb128 0x2
	.long	.LASF57
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF59
	.byte	0x6
	.byte	0x22
	.byte	0x1c
	.long	0x29f
	.uleb128 0x5
	.long	.LASF60
	.byte	0x6
	.byte	0x24
	.byte	0x17
	.long	0x74
	.uleb128 0xb
	.long	0x89
	.long	0x2e0
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0xa
	.byte	0x7
	.byte	0xcb
	.long	0x326
	.uleb128 0x6
	.string	"x"
	.byte	0x7
	.byte	0xcd
	.byte	0xc
	.long	0x89
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0x7
	.byte	0xce
	.byte	0xc
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF61
	.byte	0x7
	.byte	0xcf
	.byte	0xc
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF62
	.byte	0x7
	.byte	0xd0
	.byte	0xc
	.long	0x89
	.byte	0x6
	.uleb128 0x3
	.long	.LASF63
	.byte	0x7
	.byte	0xd1
	.byte	0xc
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF64
	.byte	0x7
	.byte	0xd2
	.byte	0x3
	.long	0x2e0
	.uleb128 0x9
	.long	0x6b
	.byte	0x8
	.byte	0x1f
	.byte	0x1
	.long	0x681
	.uleb128 0x2
	.long	.LASF65
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x1
	.uleb128 0x2
	.long	.LASF67
	.byte	0x2
	.uleb128 0x2
	.long	.LASF68
	.byte	0x3
	.uleb128 0x2
	.long	.LASF69
	.byte	0x4
	.uleb128 0x2
	.long	.LASF70
	.byte	0x5
	.uleb128 0x2
	.long	.LASF71
	.byte	0x6
	.uleb128 0x2
	.long	.LASF72
	.byte	0x7
	.uleb128 0x2
	.long	.LASF73
	.byte	0x8
	.uleb128 0x2
	.long	.LASF74
	.byte	0x9
	.uleb128 0x2
	.long	.LASF75
	.byte	0xa
	.uleb128 0x2
	.long	.LASF76
	.byte	0xb
	.uleb128 0x2
	.long	.LASF77
	.byte	0xc
	.uleb128 0x2
	.long	.LASF78
	.byte	0xd
	.uleb128 0x2
	.long	.LASF79
	.byte	0xe
	.uleb128 0x2
	.long	.LASF80
	.byte	0xf
	.uleb128 0x2
	.long	.LASF81
	.byte	0x10
	.uleb128 0x2
	.long	.LASF82
	.byte	0x11
	.uleb128 0x2
	.long	.LASF83
	.byte	0x12
	.uleb128 0x2
	.long	.LASF84
	.byte	0x13
	.uleb128 0x2
	.long	.LASF85
	.byte	0x14
	.uleb128 0x2
	.long	.LASF86
	.byte	0x15
	.uleb128 0x2
	.long	.LASF87
	.byte	0x16
	.uleb128 0x2
	.long	.LASF88
	.byte	0x17
	.uleb128 0x2
	.long	.LASF89
	.byte	0x18
	.uleb128 0x2
	.long	.LASF90
	.byte	0x19
	.uleb128 0x2
	.long	.LASF91
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF92
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF93
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF94
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF95
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF96
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF97
	.byte	0x20
	.uleb128 0x2
	.long	.LASF98
	.byte	0x21
	.uleb128 0x2
	.long	.LASF99
	.byte	0x22
	.uleb128 0x2
	.long	.LASF100
	.byte	0x23
	.uleb128 0x2
	.long	.LASF101
	.byte	0x24
	.uleb128 0x2
	.long	.LASF102
	.byte	0x25
	.uleb128 0x2
	.long	.LASF103
	.byte	0x26
	.uleb128 0x2
	.long	.LASF104
	.byte	0x27
	.uleb128 0x2
	.long	.LASF105
	.byte	0x28
	.uleb128 0x2
	.long	.LASF106
	.byte	0x29
	.uleb128 0x2
	.long	.LASF107
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF108
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF109
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF110
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF111
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF112
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF113
	.byte	0x30
	.uleb128 0x2
	.long	.LASF114
	.byte	0x31
	.uleb128 0x2
	.long	.LASF115
	.byte	0x32
	.uleb128 0x2
	.long	.LASF116
	.byte	0x33
	.uleb128 0x2
	.long	.LASF117
	.byte	0x34
	.uleb128 0x2
	.long	.LASF118
	.byte	0x35
	.uleb128 0x2
	.long	.LASF119
	.byte	0x36
	.uleb128 0x2
	.long	.LASF120
	.byte	0x37
	.uleb128 0x2
	.long	.LASF121
	.byte	0x38
	.uleb128 0x2
	.long	.LASF122
	.byte	0x39
	.uleb128 0x2
	.long	.LASF123
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF124
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF125
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF126
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF127
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF128
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF129
	.byte	0x40
	.uleb128 0x2
	.long	.LASF130
	.byte	0x41
	.uleb128 0x2
	.long	.LASF131
	.byte	0x42
	.uleb128 0x2
	.long	.LASF132
	.byte	0x43
	.uleb128 0x2
	.long	.LASF133
	.byte	0x44
	.uleb128 0x2
	.long	.LASF134
	.byte	0x45
	.uleb128 0x2
	.long	.LASF135
	.byte	0x46
	.uleb128 0x2
	.long	.LASF136
	.byte	0x47
	.uleb128 0x2
	.long	.LASF137
	.byte	0x48
	.uleb128 0x2
	.long	.LASF138
	.byte	0x49
	.uleb128 0x2
	.long	.LASF139
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF140
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF141
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF142
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF143
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF144
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF145
	.byte	0x50
	.uleb128 0x2
	.long	.LASF146
	.byte	0x51
	.uleb128 0x2
	.long	.LASF147
	.byte	0x52
	.uleb128 0x2
	.long	.LASF148
	.byte	0x53
	.uleb128 0x2
	.long	.LASF149
	.byte	0x54
	.uleb128 0x2
	.long	.LASF150
	.byte	0x55
	.uleb128 0x2
	.long	.LASF151
	.byte	0x56
	.uleb128 0x2
	.long	.LASF152
	.byte	0x57
	.uleb128 0x2
	.long	.LASF153
	.byte	0x58
	.uleb128 0x2
	.long	.LASF154
	.byte	0x59
	.uleb128 0x2
	.long	.LASF155
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF156
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF157
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF158
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF159
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF160
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF161
	.byte	0x60
	.uleb128 0x2
	.long	.LASF162
	.byte	0x61
	.uleb128 0x2
	.long	.LASF163
	.byte	0x62
	.uleb128 0x2
	.long	.LASF164
	.byte	0x63
	.uleb128 0x2
	.long	.LASF165
	.byte	0x64
	.uleb128 0x2
	.long	.LASF166
	.byte	0x65
	.uleb128 0x2
	.long	.LASF167
	.byte	0x66
	.uleb128 0x2
	.long	.LASF168
	.byte	0x67
	.uleb128 0x2
	.long	.LASF169
	.byte	0x68
	.uleb128 0x2
	.long	.LASF170
	.byte	0x69
	.uleb128 0x2
	.long	.LASF171
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF172
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF173
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF174
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF175
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF176
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF177
	.byte	0x70
	.uleb128 0x2
	.long	.LASF178
	.byte	0x71
	.uleb128 0x2
	.long	.LASF179
	.byte	0x72
	.uleb128 0x2
	.long	.LASF180
	.byte	0x73
	.uleb128 0x2
	.long	.LASF181
	.byte	0x74
	.uleb128 0x2
	.long	.LASF182
	.byte	0x75
	.uleb128 0x2
	.long	.LASF183
	.byte	0x76
	.uleb128 0x2
	.long	.LASF184
	.byte	0x77
	.uleb128 0x2
	.long	.LASF185
	.byte	0x78
	.uleb128 0x2
	.long	.LASF186
	.byte	0x79
	.uleb128 0x2
	.long	.LASF187
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF188
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF189
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF190
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF191
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF192
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF193
	.byte	0x80
	.uleb128 0x2
	.long	.LASF194
	.byte	0x81
	.uleb128 0x2
	.long	.LASF195
	.byte	0x82
	.uleb128 0x2
	.long	.LASF196
	.byte	0x83
	.uleb128 0x2
	.long	.LASF197
	.byte	0x84
	.uleb128 0x2
	.long	.LASF198
	.byte	0x85
	.uleb128 0x2
	.long	.LASF199
	.byte	0x86
	.uleb128 0x2
	.long	.LASF200
	.byte	0x87
	.uleb128 0x2
	.long	.LASF201
	.byte	0x88
	.uleb128 0x2
	.long	.LASF202
	.byte	0x89
	.uleb128 0x2
	.long	.LASF203
	.byte	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF204
	.byte	0x8
	.byte	0xac
	.byte	0x3
	.long	0x332
	.uleb128 0x9
	.long	0x6b
	.byte	0x8
	.byte	0xaf
	.byte	0x1
	.long	0x2012
	.uleb128 0x2
	.long	.LASF205
	.byte	0
	.uleb128 0x2
	.long	.LASF206
	.byte	0x1
	.uleb128 0x2
	.long	.LASF207
	.byte	0x2
	.uleb128 0x2
	.long	.LASF208
	.byte	0x3
	.uleb128 0x2
	.long	.LASF209
	.byte	0x4
	.uleb128 0x2
	.long	.LASF210
	.byte	0x5
	.uleb128 0x2
	.long	.LASF211
	.byte	0x6
	.uleb128 0x2
	.long	.LASF212
	.byte	0x7
	.uleb128 0x2
	.long	.LASF213
	.byte	0x8
	.uleb128 0x2
	.long	.LASF214
	.byte	0x9
	.uleb128 0x2
	.long	.LASF215
	.byte	0xa
	.uleb128 0x2
	.long	.LASF216
	.byte	0xb
	.uleb128 0x2
	.long	.LASF217
	.byte	0xc
	.uleb128 0x2
	.long	.LASF218
	.byte	0xd
	.uleb128 0x2
	.long	.LASF219
	.byte	0xe
	.uleb128 0x2
	.long	.LASF220
	.byte	0xf
	.uleb128 0x2
	.long	.LASF221
	.byte	0x10
	.uleb128 0x2
	.long	.LASF222
	.byte	0x11
	.uleb128 0x2
	.long	.LASF223
	.byte	0x12
	.uleb128 0x2
	.long	.LASF224
	.byte	0x13
	.uleb128 0x2
	.long	.LASF225
	.byte	0x14
	.uleb128 0x2
	.long	.LASF226
	.byte	0x15
	.uleb128 0x2
	.long	.LASF227
	.byte	0x16
	.uleb128 0x2
	.long	.LASF228
	.byte	0x17
	.uleb128 0x2
	.long	.LASF229
	.byte	0x18
	.uleb128 0x2
	.long	.LASF230
	.byte	0x19
	.uleb128 0x2
	.long	.LASF231
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF232
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF233
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF234
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF235
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF236
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF237
	.byte	0x20
	.uleb128 0x2
	.long	.LASF238
	.byte	0x21
	.uleb128 0x2
	.long	.LASF239
	.byte	0x22
	.uleb128 0x2
	.long	.LASF240
	.byte	0x23
	.uleb128 0x2
	.long	.LASF241
	.byte	0x24
	.uleb128 0x2
	.long	.LASF242
	.byte	0x25
	.uleb128 0x2
	.long	.LASF243
	.byte	0x26
	.uleb128 0x2
	.long	.LASF244
	.byte	0x27
	.uleb128 0x2
	.long	.LASF245
	.byte	0x28
	.uleb128 0x2
	.long	.LASF246
	.byte	0x29
	.uleb128 0x2
	.long	.LASF247
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF248
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF249
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF250
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF251
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF252
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF253
	.byte	0x30
	.uleb128 0x2
	.long	.LASF254
	.byte	0x31
	.uleb128 0x2
	.long	.LASF255
	.byte	0x32
	.uleb128 0x2
	.long	.LASF256
	.byte	0x33
	.uleb128 0x2
	.long	.LASF257
	.byte	0x34
	.uleb128 0x2
	.long	.LASF258
	.byte	0x35
	.uleb128 0x2
	.long	.LASF259
	.byte	0x36
	.uleb128 0x2
	.long	.LASF260
	.byte	0x37
	.uleb128 0x2
	.long	.LASF261
	.byte	0x38
	.uleb128 0x2
	.long	.LASF262
	.byte	0x39
	.uleb128 0x2
	.long	.LASF263
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF264
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF265
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF266
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF267
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF268
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF269
	.byte	0x40
	.uleb128 0x2
	.long	.LASF270
	.byte	0x41
	.uleb128 0x2
	.long	.LASF271
	.byte	0x42
	.uleb128 0x2
	.long	.LASF272
	.byte	0x43
	.uleb128 0x2
	.long	.LASF273
	.byte	0x44
	.uleb128 0x2
	.long	.LASF274
	.byte	0x45
	.uleb128 0x2
	.long	.LASF275
	.byte	0x46
	.uleb128 0x2
	.long	.LASF276
	.byte	0x47
	.uleb128 0x2
	.long	.LASF277
	.byte	0x48
	.uleb128 0x2
	.long	.LASF278
	.byte	0x49
	.uleb128 0x2
	.long	.LASF279
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF280
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF281
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF282
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF283
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF284
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF285
	.byte	0x50
	.uleb128 0x2
	.long	.LASF286
	.byte	0x51
	.uleb128 0x2
	.long	.LASF287
	.byte	0x52
	.uleb128 0x2
	.long	.LASF288
	.byte	0x53
	.uleb128 0x2
	.long	.LASF289
	.byte	0x54
	.uleb128 0x2
	.long	.LASF290
	.byte	0x55
	.uleb128 0x2
	.long	.LASF291
	.byte	0x56
	.uleb128 0x2
	.long	.LASF292
	.byte	0x57
	.uleb128 0x2
	.long	.LASF293
	.byte	0x58
	.uleb128 0x2
	.long	.LASF294
	.byte	0x59
	.uleb128 0x2
	.long	.LASF295
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF296
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF297
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF298
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF299
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF300
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF301
	.byte	0x60
	.uleb128 0x2
	.long	.LASF302
	.byte	0x61
	.uleb128 0x2
	.long	.LASF303
	.byte	0x62
	.uleb128 0x2
	.long	.LASF304
	.byte	0x63
	.uleb128 0x2
	.long	.LASF305
	.byte	0x64
	.uleb128 0x2
	.long	.LASF306
	.byte	0x65
	.uleb128 0x2
	.long	.LASF307
	.byte	0x66
	.uleb128 0x2
	.long	.LASF308
	.byte	0x67
	.uleb128 0x2
	.long	.LASF309
	.byte	0x68
	.uleb128 0x2
	.long	.LASF310
	.byte	0x69
	.uleb128 0x2
	.long	.LASF311
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF312
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF313
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF314
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF315
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF316
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF317
	.byte	0x70
	.uleb128 0x2
	.long	.LASF318
	.byte	0x71
	.uleb128 0x2
	.long	.LASF319
	.byte	0x72
	.uleb128 0x2
	.long	.LASF320
	.byte	0x73
	.uleb128 0x2
	.long	.LASF321
	.byte	0x74
	.uleb128 0x2
	.long	.LASF322
	.byte	0x75
	.uleb128 0x2
	.long	.LASF323
	.byte	0x76
	.uleb128 0x2
	.long	.LASF324
	.byte	0x77
	.uleb128 0x2
	.long	.LASF325
	.byte	0x78
	.uleb128 0x2
	.long	.LASF326
	.byte	0x79
	.uleb128 0x2
	.long	.LASF327
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF328
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF329
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF330
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF331
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF332
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF333
	.byte	0x80
	.uleb128 0x2
	.long	.LASF334
	.byte	0x81
	.uleb128 0x2
	.long	.LASF335
	.byte	0x82
	.uleb128 0x2
	.long	.LASF336
	.byte	0x83
	.uleb128 0x2
	.long	.LASF337
	.byte	0x84
	.uleb128 0x2
	.long	.LASF338
	.byte	0x85
	.uleb128 0x2
	.long	.LASF339
	.byte	0x86
	.uleb128 0x2
	.long	.LASF340
	.byte	0x87
	.uleb128 0x2
	.long	.LASF341
	.byte	0x88
	.uleb128 0x2
	.long	.LASF342
	.byte	0x89
	.uleb128 0x2
	.long	.LASF343
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF344
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF345
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF346
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF347
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF348
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF349
	.byte	0x90
	.uleb128 0x2
	.long	.LASF350
	.byte	0x91
	.uleb128 0x2
	.long	.LASF351
	.byte	0x92
	.uleb128 0x2
	.long	.LASF352
	.byte	0x93
	.uleb128 0x2
	.long	.LASF353
	.byte	0x94
	.uleb128 0x2
	.long	.LASF354
	.byte	0x95
	.uleb128 0x2
	.long	.LASF355
	.byte	0x96
	.uleb128 0x2
	.long	.LASF356
	.byte	0x97
	.uleb128 0x2
	.long	.LASF357
	.byte	0x98
	.uleb128 0x2
	.long	.LASF358
	.byte	0x99
	.uleb128 0x2
	.long	.LASF359
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF360
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF361
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF362
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF363
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF364
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF365
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF366
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF367
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF368
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF369
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF370
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF371
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF372
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF373
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF374
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF375
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF376
	.byte	0xab
	.uleb128 0x2
	.long	.LASF377
	.byte	0xac
	.uleb128 0x2
	.long	.LASF378
	.byte	0xad
	.uleb128 0x2
	.long	.LASF379
	.byte	0xae
	.uleb128 0x2
	.long	.LASF380
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF381
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF382
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF383
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF384
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF385
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF386
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF387
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF388
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF389
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF390
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF391
	.byte	0xba
	.uleb128 0x2
	.long	.LASF392
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF393
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF394
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF395
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF396
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF397
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF398
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF399
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF400
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF401
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF402
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF403
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF404
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF405
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF406
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF407
	.byte	0xca
	.uleb128 0x2
	.long	.LASF408
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF409
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF410
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF411
	.byte	0xce
	.uleb128 0x2
	.long	.LASF412
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF413
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF414
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF415
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF416
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF417
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF418
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF419
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF420
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF421
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF422
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF423
	.byte	0xda
	.uleb128 0x2
	.long	.LASF424
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF425
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF426
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF427
	.byte	0xde
	.uleb128 0x2
	.long	.LASF428
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF429
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF430
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF431
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF432
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF433
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF434
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF435
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF436
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF437
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF438
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF439
	.byte	0xea
	.uleb128 0x2
	.long	.LASF440
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF441
	.byte	0xec
	.uleb128 0x2
	.long	.LASF442
	.byte	0xed
	.uleb128 0x2
	.long	.LASF443
	.byte	0xee
	.uleb128 0x2
	.long	.LASF444
	.byte	0xef
	.uleb128 0x2
	.long	.LASF445
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF446
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF447
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF448
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF449
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF450
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF451
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF452
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF453
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF454
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF455
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF456
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF457
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF458
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF459
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF460
	.byte	0xff
	.uleb128 0x1
	.long	.LASF461
	.value	0x100
	.uleb128 0x1
	.long	.LASF462
	.value	0x101
	.uleb128 0x1
	.long	.LASF463
	.value	0x102
	.uleb128 0x1
	.long	.LASF464
	.value	0x103
	.uleb128 0x1
	.long	.LASF465
	.value	0x104
	.uleb128 0x1
	.long	.LASF466
	.value	0x105
	.uleb128 0x1
	.long	.LASF467
	.value	0x106
	.uleb128 0x1
	.long	.LASF468
	.value	0x107
	.uleb128 0x1
	.long	.LASF469
	.value	0x108
	.uleb128 0x1
	.long	.LASF470
	.value	0x109
	.uleb128 0x1
	.long	.LASF471
	.value	0x10a
	.uleb128 0x1
	.long	.LASF472
	.value	0x10b
	.uleb128 0x1
	.long	.LASF473
	.value	0x10c
	.uleb128 0x1
	.long	.LASF474
	.value	0x10d
	.uleb128 0x1
	.long	.LASF475
	.value	0x10e
	.uleb128 0x1
	.long	.LASF476
	.value	0x10f
	.uleb128 0x1
	.long	.LASF477
	.value	0x110
	.uleb128 0x1
	.long	.LASF478
	.value	0x111
	.uleb128 0x1
	.long	.LASF479
	.value	0x112
	.uleb128 0x1
	.long	.LASF480
	.value	0x113
	.uleb128 0x1
	.long	.LASF481
	.value	0x114
	.uleb128 0x1
	.long	.LASF482
	.value	0x115
	.uleb128 0x1
	.long	.LASF483
	.value	0x116
	.uleb128 0x1
	.long	.LASF484
	.value	0x117
	.uleb128 0x1
	.long	.LASF485
	.value	0x118
	.uleb128 0x1
	.long	.LASF486
	.value	0x119
	.uleb128 0x1
	.long	.LASF487
	.value	0x11a
	.uleb128 0x1
	.long	.LASF488
	.value	0x11b
	.uleb128 0x1
	.long	.LASF489
	.value	0x11c
	.uleb128 0x1
	.long	.LASF490
	.value	0x11d
	.uleb128 0x1
	.long	.LASF491
	.value	0x11e
	.uleb128 0x1
	.long	.LASF492
	.value	0x11f
	.uleb128 0x1
	.long	.LASF493
	.value	0x120
	.uleb128 0x1
	.long	.LASF494
	.value	0x121
	.uleb128 0x1
	.long	.LASF495
	.value	0x122
	.uleb128 0x1
	.long	.LASF496
	.value	0x123
	.uleb128 0x1
	.long	.LASF497
	.value	0x124
	.uleb128 0x1
	.long	.LASF498
	.value	0x125
	.uleb128 0x1
	.long	.LASF499
	.value	0x126
	.uleb128 0x1
	.long	.LASF500
	.value	0x127
	.uleb128 0x1
	.long	.LASF501
	.value	0x128
	.uleb128 0x1
	.long	.LASF502
	.value	0x129
	.uleb128 0x1
	.long	.LASF503
	.value	0x12a
	.uleb128 0x1
	.long	.LASF504
	.value	0x12b
	.uleb128 0x1
	.long	.LASF505
	.value	0x12c
	.uleb128 0x1
	.long	.LASF506
	.value	0x12d
	.uleb128 0x1
	.long	.LASF507
	.value	0x12e
	.uleb128 0x1
	.long	.LASF508
	.value	0x12f
	.uleb128 0x1
	.long	.LASF509
	.value	0x130
	.uleb128 0x1
	.long	.LASF510
	.value	0x131
	.uleb128 0x1
	.long	.LASF511
	.value	0x132
	.uleb128 0x1
	.long	.LASF512
	.value	0x133
	.uleb128 0x1
	.long	.LASF513
	.value	0x134
	.uleb128 0x1
	.long	.LASF514
	.value	0x135
	.uleb128 0x1
	.long	.LASF515
	.value	0x136
	.uleb128 0x1
	.long	.LASF516
	.value	0x137
	.uleb128 0x1
	.long	.LASF517
	.value	0x138
	.uleb128 0x1
	.long	.LASF518
	.value	0x139
	.uleb128 0x1
	.long	.LASF519
	.value	0x13a
	.uleb128 0x1
	.long	.LASF520
	.value	0x13b
	.uleb128 0x1
	.long	.LASF521
	.value	0x13c
	.uleb128 0x1
	.long	.LASF522
	.value	0x13d
	.uleb128 0x1
	.long	.LASF523
	.value	0x13e
	.uleb128 0x1
	.long	.LASF524
	.value	0x13f
	.uleb128 0x1
	.long	.LASF525
	.value	0x140
	.uleb128 0x1
	.long	.LASF526
	.value	0x141
	.uleb128 0x1
	.long	.LASF527
	.value	0x142
	.uleb128 0x1
	.long	.LASF528
	.value	0x143
	.uleb128 0x1
	.long	.LASF529
	.value	0x144
	.uleb128 0x1
	.long	.LASF530
	.value	0x145
	.uleb128 0x1
	.long	.LASF531
	.value	0x146
	.uleb128 0x1
	.long	.LASF532
	.value	0x147
	.uleb128 0x1
	.long	.LASF533
	.value	0x148
	.uleb128 0x1
	.long	.LASF534
	.value	0x149
	.uleb128 0x1
	.long	.LASF535
	.value	0x14a
	.uleb128 0x1
	.long	.LASF536
	.value	0x14b
	.uleb128 0x1
	.long	.LASF537
	.value	0x14c
	.uleb128 0x1
	.long	.LASF538
	.value	0x14d
	.uleb128 0x1
	.long	.LASF539
	.value	0x14e
	.uleb128 0x1
	.long	.LASF540
	.value	0x14f
	.uleb128 0x1
	.long	.LASF541
	.value	0x150
	.uleb128 0x1
	.long	.LASF542
	.value	0x151
	.uleb128 0x1
	.long	.LASF543
	.value	0x152
	.uleb128 0x1
	.long	.LASF544
	.value	0x153
	.uleb128 0x1
	.long	.LASF545
	.value	0x154
	.uleb128 0x1
	.long	.LASF546
	.value	0x155
	.uleb128 0x1
	.long	.LASF547
	.value	0x156
	.uleb128 0x1
	.long	.LASF548
	.value	0x157
	.uleb128 0x1
	.long	.LASF549
	.value	0x158
	.uleb128 0x1
	.long	.LASF550
	.value	0x159
	.uleb128 0x1
	.long	.LASF551
	.value	0x15a
	.uleb128 0x1
	.long	.LASF552
	.value	0x15b
	.uleb128 0x1
	.long	.LASF553
	.value	0x15c
	.uleb128 0x1
	.long	.LASF554
	.value	0x15d
	.uleb128 0x1
	.long	.LASF555
	.value	0x15e
	.uleb128 0x1
	.long	.LASF556
	.value	0x15f
	.uleb128 0x1
	.long	.LASF557
	.value	0x160
	.uleb128 0x1
	.long	.LASF558
	.value	0x161
	.uleb128 0x1
	.long	.LASF559
	.value	0x162
	.uleb128 0x1
	.long	.LASF560
	.value	0x163
	.uleb128 0x1
	.long	.LASF561
	.value	0x164
	.uleb128 0x1
	.long	.LASF562
	.value	0x165
	.uleb128 0x1
	.long	.LASF563
	.value	0x166
	.uleb128 0x1
	.long	.LASF564
	.value	0x167
	.uleb128 0x1
	.long	.LASF565
	.value	0x168
	.uleb128 0x1
	.long	.LASF566
	.value	0x169
	.uleb128 0x1
	.long	.LASF567
	.value	0x16a
	.uleb128 0x1
	.long	.LASF568
	.value	0x16b
	.uleb128 0x1
	.long	.LASF569
	.value	0x16c
	.uleb128 0x1
	.long	.LASF570
	.value	0x16d
	.uleb128 0x1
	.long	.LASF571
	.value	0x16e
	.uleb128 0x1
	.long	.LASF572
	.value	0x16f
	.uleb128 0x1
	.long	.LASF573
	.value	0x170
	.uleb128 0x1
	.long	.LASF574
	.value	0x171
	.uleb128 0x1
	.long	.LASF575
	.value	0x172
	.uleb128 0x1
	.long	.LASF576
	.value	0x173
	.uleb128 0x1
	.long	.LASF577
	.value	0x174
	.uleb128 0x1
	.long	.LASF578
	.value	0x175
	.uleb128 0x1
	.long	.LASF579
	.value	0x176
	.uleb128 0x1
	.long	.LASF580
	.value	0x177
	.uleb128 0x1
	.long	.LASF581
	.value	0x178
	.uleb128 0x1
	.long	.LASF582
	.value	0x179
	.uleb128 0x1
	.long	.LASF583
	.value	0x17a
	.uleb128 0x1
	.long	.LASF584
	.value	0x17b
	.uleb128 0x1
	.long	.LASF585
	.value	0x17c
	.uleb128 0x1
	.long	.LASF586
	.value	0x17d
	.uleb128 0x1
	.long	.LASF587
	.value	0x17e
	.uleb128 0x1
	.long	.LASF588
	.value	0x17f
	.uleb128 0x1
	.long	.LASF589
	.value	0x180
	.uleb128 0x1
	.long	.LASF590
	.value	0x181
	.uleb128 0x1
	.long	.LASF591
	.value	0x182
	.uleb128 0x1
	.long	.LASF592
	.value	0x183
	.uleb128 0x1
	.long	.LASF593
	.value	0x184
	.uleb128 0x1
	.long	.LASF594
	.value	0x185
	.uleb128 0x1
	.long	.LASF595
	.value	0x186
	.uleb128 0x1
	.long	.LASF596
	.value	0x187
	.uleb128 0x1
	.long	.LASF597
	.value	0x188
	.uleb128 0x1
	.long	.LASF598
	.value	0x189
	.uleb128 0x1
	.long	.LASF599
	.value	0x18a
	.uleb128 0x1
	.long	.LASF600
	.value	0x18b
	.uleb128 0x1
	.long	.LASF601
	.value	0x18c
	.uleb128 0x1
	.long	.LASF602
	.value	0x18d
	.uleb128 0x1
	.long	.LASF603
	.value	0x18e
	.uleb128 0x1
	.long	.LASF604
	.value	0x18f
	.uleb128 0x1
	.long	.LASF605
	.value	0x190
	.uleb128 0x1
	.long	.LASF606
	.value	0x191
	.uleb128 0x1
	.long	.LASF607
	.value	0x192
	.uleb128 0x1
	.long	.LASF608
	.value	0x193
	.uleb128 0x1
	.long	.LASF609
	.value	0x194
	.uleb128 0x1
	.long	.LASF610
	.value	0x195
	.uleb128 0x1
	.long	.LASF611
	.value	0x196
	.uleb128 0x1
	.long	.LASF612
	.value	0x197
	.uleb128 0x1
	.long	.LASF613
	.value	0x198
	.uleb128 0x1
	.long	.LASF614
	.value	0x199
	.uleb128 0x1
	.long	.LASF615
	.value	0x19a
	.uleb128 0x1
	.long	.LASF616
	.value	0x19b
	.uleb128 0x1
	.long	.LASF617
	.value	0x19c
	.uleb128 0x1
	.long	.LASF618
	.value	0x19d
	.uleb128 0x1
	.long	.LASF619
	.value	0x19e
	.uleb128 0x1
	.long	.LASF620
	.value	0x19f
	.uleb128 0x1
	.long	.LASF621
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF622
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF623
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF624
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF625
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF626
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF627
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF628
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF629
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF630
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF631
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF632
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF633
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF634
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF635
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF636
	.value	0x1af
	.uleb128 0x1
	.long	.LASF637
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF638
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF639
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF640
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF641
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF642
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF643
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF644
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF645
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF646
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF647
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF648
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF649
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF650
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF651
	.value	0x1be
	.uleb128 0x1
	.long	.LASF652
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF653
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF654
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF655
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF656
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF657
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF658
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF659
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF660
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF661
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF662
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF663
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF664
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF665
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF666
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF667
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF668
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF669
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF670
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF671
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF672
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF673
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF674
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF675
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF676
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF677
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF678
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF679
	.value	0x1da
	.uleb128 0x1
	.long	.LASF680
	.value	0x1db
	.uleb128 0x1
	.long	.LASF681
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF682
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF683
	.value	0x1de
	.uleb128 0x1
	.long	.LASF684
	.value	0x1df
	.uleb128 0x1
	.long	.LASF685
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF686
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF687
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF688
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF689
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF690
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF691
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF692
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF693
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF694
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF695
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF696
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF697
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF698
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF699
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF700
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF701
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF702
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF703
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF704
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF705
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF706
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF707
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF708
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF709
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF710
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF711
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF712
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF713
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF714
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF715
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF717
	.value	0x200
	.uleb128 0x1
	.long	.LASF718
	.value	0x201
	.uleb128 0x1
	.long	.LASF719
	.value	0x202
	.uleb128 0x1
	.long	.LASF720
	.value	0x203
	.uleb128 0x1
	.long	.LASF721
	.value	0x204
	.uleb128 0x1
	.long	.LASF722
	.value	0x205
	.uleb128 0x1
	.long	.LASF723
	.value	0x206
	.uleb128 0x1
	.long	.LASF724
	.value	0x207
	.uleb128 0x1
	.long	.LASF725
	.value	0x208
	.uleb128 0x1
	.long	.LASF726
	.value	0x209
	.uleb128 0x1
	.long	.LASF727
	.value	0x20a
	.uleb128 0x1
	.long	.LASF728
	.value	0x20b
	.uleb128 0x1
	.long	.LASF729
	.value	0x20c
	.uleb128 0x1
	.long	.LASF730
	.value	0x20d
	.uleb128 0x1
	.long	.LASF731
	.value	0x20e
	.uleb128 0x1
	.long	.LASF732
	.value	0x20f
	.uleb128 0x1
	.long	.LASF733
	.value	0x210
	.uleb128 0x1
	.long	.LASF734
	.value	0x211
	.uleb128 0x1
	.long	.LASF735
	.value	0x212
	.uleb128 0x1
	.long	.LASF736
	.value	0x213
	.uleb128 0x1
	.long	.LASF737
	.value	0x214
	.uleb128 0x1
	.long	.LASF738
	.value	0x215
	.uleb128 0x1
	.long	.LASF739
	.value	0x216
	.uleb128 0x1
	.long	.LASF740
	.value	0x217
	.uleb128 0x1
	.long	.LASF741
	.value	0x218
	.uleb128 0x1
	.long	.LASF742
	.value	0x219
	.uleb128 0x1
	.long	.LASF743
	.value	0x21a
	.uleb128 0x1
	.long	.LASF744
	.value	0x21b
	.uleb128 0x1
	.long	.LASF745
	.value	0x21c
	.uleb128 0x1
	.long	.LASF746
	.value	0x21d
	.uleb128 0x1
	.long	.LASF747
	.value	0x21e
	.uleb128 0x1
	.long	.LASF748
	.value	0x21f
	.uleb128 0x1
	.long	.LASF749
	.value	0x220
	.uleb128 0x1
	.long	.LASF750
	.value	0x221
	.uleb128 0x1
	.long	.LASF751
	.value	0x222
	.uleb128 0x1
	.long	.LASF752
	.value	0x223
	.uleb128 0x1
	.long	.LASF753
	.value	0x224
	.uleb128 0x1
	.long	.LASF754
	.value	0x225
	.uleb128 0x1
	.long	.LASF755
	.value	0x226
	.uleb128 0x1
	.long	.LASF756
	.value	0x227
	.uleb128 0x1
	.long	.LASF757
	.value	0x228
	.uleb128 0x1
	.long	.LASF758
	.value	0x229
	.uleb128 0x1
	.long	.LASF759
	.value	0x22a
	.uleb128 0x1
	.long	.LASF760
	.value	0x22b
	.uleb128 0x1
	.long	.LASF761
	.value	0x22c
	.uleb128 0x1
	.long	.LASF762
	.value	0x22d
	.uleb128 0x1
	.long	.LASF763
	.value	0x22e
	.uleb128 0x1
	.long	.LASF764
	.value	0x22f
	.uleb128 0x1
	.long	.LASF765
	.value	0x230
	.uleb128 0x1
	.long	.LASF766
	.value	0x231
	.uleb128 0x1
	.long	.LASF767
	.value	0x232
	.uleb128 0x1
	.long	.LASF768
	.value	0x233
	.uleb128 0x1
	.long	.LASF769
	.value	0x234
	.uleb128 0x1
	.long	.LASF770
	.value	0x235
	.uleb128 0x1
	.long	.LASF771
	.value	0x236
	.uleb128 0x1
	.long	.LASF772
	.value	0x237
	.uleb128 0x1
	.long	.LASF773
	.value	0x238
	.uleb128 0x1
	.long	.LASF774
	.value	0x239
	.uleb128 0x1
	.long	.LASF775
	.value	0x23a
	.uleb128 0x1
	.long	.LASF776
	.value	0x23b
	.uleb128 0x1
	.long	.LASF777
	.value	0x23c
	.uleb128 0x1
	.long	.LASF778
	.value	0x23d
	.uleb128 0x1
	.long	.LASF779
	.value	0x23e
	.uleb128 0x1
	.long	.LASF780
	.value	0x23f
	.uleb128 0x1
	.long	.LASF781
	.value	0x240
	.uleb128 0x1
	.long	.LASF782
	.value	0x241
	.uleb128 0x1
	.long	.LASF783
	.value	0x242
	.uleb128 0x1
	.long	.LASF784
	.value	0x243
	.uleb128 0x1
	.long	.LASF785
	.value	0x244
	.uleb128 0x1
	.long	.LASF786
	.value	0x245
	.uleb128 0x1
	.long	.LASF787
	.value	0x246
	.uleb128 0x1
	.long	.LASF788
	.value	0x247
	.uleb128 0x1
	.long	.LASF789
	.value	0x248
	.uleb128 0x1
	.long	.LASF790
	.value	0x249
	.uleb128 0x1
	.long	.LASF791
	.value	0x24a
	.uleb128 0x1
	.long	.LASF792
	.value	0x24b
	.uleb128 0x1
	.long	.LASF793
	.value	0x24c
	.uleb128 0x1
	.long	.LASF794
	.value	0x24d
	.uleb128 0x1
	.long	.LASF795
	.value	0x24e
	.uleb128 0x1
	.long	.LASF796
	.value	0x24f
	.uleb128 0x1
	.long	.LASF797
	.value	0x250
	.uleb128 0x1
	.long	.LASF798
	.value	0x251
	.uleb128 0x1
	.long	.LASF799
	.value	0x252
	.uleb128 0x1
	.long	.LASF800
	.value	0x253
	.uleb128 0x1
	.long	.LASF801
	.value	0x254
	.uleb128 0x1
	.long	.LASF802
	.value	0x255
	.uleb128 0x1
	.long	.LASF803
	.value	0x256
	.uleb128 0x1
	.long	.LASF804
	.value	0x257
	.uleb128 0x1
	.long	.LASF805
	.value	0x258
	.uleb128 0x1
	.long	.LASF806
	.value	0x259
	.uleb128 0x1
	.long	.LASF807
	.value	0x25a
	.uleb128 0x1
	.long	.LASF808
	.value	0x25b
	.uleb128 0x1
	.long	.LASF809
	.value	0x25c
	.uleb128 0x1
	.long	.LASF810
	.value	0x25d
	.uleb128 0x1
	.long	.LASF811
	.value	0x25e
	.uleb128 0x1
	.long	.LASF812
	.value	0x25f
	.uleb128 0x1
	.long	.LASF813
	.value	0x260
	.uleb128 0x1
	.long	.LASF814
	.value	0x261
	.uleb128 0x1
	.long	.LASF815
	.value	0x262
	.uleb128 0x1
	.long	.LASF816
	.value	0x263
	.uleb128 0x1
	.long	.LASF817
	.value	0x264
	.uleb128 0x1
	.long	.LASF818
	.value	0x265
	.uleb128 0x1
	.long	.LASF819
	.value	0x266
	.uleb128 0x1
	.long	.LASF820
	.value	0x267
	.uleb128 0x1
	.long	.LASF821
	.value	0x268
	.uleb128 0x1
	.long	.LASF822
	.value	0x269
	.uleb128 0x1
	.long	.LASF823
	.value	0x26a
	.uleb128 0x1
	.long	.LASF824
	.value	0x26b
	.uleb128 0x1
	.long	.LASF825
	.value	0x26c
	.uleb128 0x1
	.long	.LASF826
	.value	0x26d
	.uleb128 0x1
	.long	.LASF827
	.value	0x26e
	.uleb128 0x1
	.long	.LASF828
	.value	0x26f
	.uleb128 0x1
	.long	.LASF829
	.value	0x270
	.uleb128 0x1
	.long	.LASF830
	.value	0x271
	.uleb128 0x1
	.long	.LASF831
	.value	0x272
	.uleb128 0x1
	.long	.LASF832
	.value	0x273
	.uleb128 0x1
	.long	.LASF833
	.value	0x274
	.uleb128 0x1
	.long	.LASF834
	.value	0x275
	.uleb128 0x1
	.long	.LASF835
	.value	0x276
	.uleb128 0x1
	.long	.LASF836
	.value	0x277
	.uleb128 0x1
	.long	.LASF837
	.value	0x278
	.uleb128 0x1
	.long	.LASF838
	.value	0x279
	.uleb128 0x1
	.long	.LASF839
	.value	0x27a
	.uleb128 0x1
	.long	.LASF840
	.value	0x27b
	.uleb128 0x1
	.long	.LASF841
	.value	0x27c
	.uleb128 0x1
	.long	.LASF842
	.value	0x27d
	.uleb128 0x1
	.long	.LASF843
	.value	0x27e
	.uleb128 0x1
	.long	.LASF844
	.value	0x27f
	.uleb128 0x1
	.long	.LASF845
	.value	0x280
	.uleb128 0x1
	.long	.LASF846
	.value	0x281
	.uleb128 0x1
	.long	.LASF847
	.value	0x282
	.uleb128 0x1
	.long	.LASF848
	.value	0x283
	.uleb128 0x1
	.long	.LASF849
	.value	0x284
	.uleb128 0x1
	.long	.LASF850
	.value	0x285
	.uleb128 0x1
	.long	.LASF851
	.value	0x286
	.uleb128 0x1
	.long	.LASF852
	.value	0x287
	.uleb128 0x1
	.long	.LASF853
	.value	0x288
	.uleb128 0x1
	.long	.LASF854
	.value	0x289
	.uleb128 0x1
	.long	.LASF855
	.value	0x28a
	.uleb128 0x1
	.long	.LASF856
	.value	0x28b
	.uleb128 0x1
	.long	.LASF857
	.value	0x28c
	.uleb128 0x1
	.long	.LASF858
	.value	0x28d
	.uleb128 0x1
	.long	.LASF859
	.value	0x28e
	.uleb128 0x1
	.long	.LASF860
	.value	0x28f
	.uleb128 0x1
	.long	.LASF861
	.value	0x290
	.uleb128 0x1
	.long	.LASF862
	.value	0x291
	.uleb128 0x1
	.long	.LASF863
	.value	0x292
	.uleb128 0x1
	.long	.LASF864
	.value	0x293
	.uleb128 0x1
	.long	.LASF865
	.value	0x294
	.uleb128 0x1
	.long	.LASF866
	.value	0x295
	.uleb128 0x1
	.long	.LASF867
	.value	0x296
	.uleb128 0x1
	.long	.LASF868
	.value	0x297
	.uleb128 0x1
	.long	.LASF869
	.value	0x298
	.uleb128 0x1
	.long	.LASF870
	.value	0x299
	.uleb128 0x1
	.long	.LASF871
	.value	0x29a
	.uleb128 0x1
	.long	.LASF872
	.value	0x29b
	.uleb128 0x1
	.long	.LASF873
	.value	0x29c
	.uleb128 0x1
	.long	.LASF874
	.value	0x29d
	.uleb128 0x1
	.long	.LASF875
	.value	0x29e
	.uleb128 0x1
	.long	.LASF876
	.value	0x29f
	.uleb128 0x1
	.long	.LASF877
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF878
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF879
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF880
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF881
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF882
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF883
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF884
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF885
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF886
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF887
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF888
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF889
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF890
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF891
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF892
	.value	0x2af
	.uleb128 0x1
	.long	.LASF893
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF894
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF895
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF896
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF897
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF898
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF899
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF900
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF901
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF902
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF903
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF904
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF905
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF906
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF907
	.value	0x2be
	.uleb128 0x1
	.long	.LASF908
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF909
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF910
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF911
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF912
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF913
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF914
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF915
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF916
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF917
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF918
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF919
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF920
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF921
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF922
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF923
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF924
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF925
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF926
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF927
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF928
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF929
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF930
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF931
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF932
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF933
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF934
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF935
	.value	0x2da
	.uleb128 0x1
	.long	.LASF936
	.value	0x2db
	.uleb128 0x1
	.long	.LASF937
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF938
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF939
	.value	0x2de
	.uleb128 0x1
	.long	.LASF940
	.value	0x2df
	.uleb128 0x1
	.long	.LASF941
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF942
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF943
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF944
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF945
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF946
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF947
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF948
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF949
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF950
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF951
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF952
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF953
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF954
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF955
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF956
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF957
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF958
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF959
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF960
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF961
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF962
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF963
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF964
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF965
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF966
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF967
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF968
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF969
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF970
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF971
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF973
	.value	0x300
	.uleb128 0x1
	.long	.LASF974
	.value	0x301
	.uleb128 0x1
	.long	.LASF975
	.value	0x302
	.uleb128 0x1
	.long	.LASF976
	.value	0x303
	.uleb128 0x1
	.long	.LASF977
	.value	0x304
	.uleb128 0x1
	.long	.LASF978
	.value	0x305
	.uleb128 0x1
	.long	.LASF979
	.value	0x306
	.uleb128 0x1
	.long	.LASF980
	.value	0x307
	.uleb128 0x1
	.long	.LASF981
	.value	0x308
	.uleb128 0x1
	.long	.LASF982
	.value	0x309
	.uleb128 0x1
	.long	.LASF983
	.value	0x30a
	.uleb128 0x1
	.long	.LASF984
	.value	0x30b
	.uleb128 0x1
	.long	.LASF985
	.value	0x30c
	.uleb128 0x1
	.long	.LASF986
	.value	0x30d
	.uleb128 0x1
	.long	.LASF987
	.value	0x30e
	.uleb128 0x1
	.long	.LASF988
	.value	0x30f
	.uleb128 0x1
	.long	.LASF989
	.value	0x310
	.uleb128 0x1
	.long	.LASF990
	.value	0x311
	.uleb128 0x1
	.long	.LASF991
	.value	0x312
	.uleb128 0x1
	.long	.LASF992
	.value	0x313
	.uleb128 0x1
	.long	.LASF993
	.value	0x314
	.uleb128 0x1
	.long	.LASF994
	.value	0x315
	.uleb128 0x1
	.long	.LASF995
	.value	0x316
	.uleb128 0x1
	.long	.LASF996
	.value	0x317
	.uleb128 0x1
	.long	.LASF997
	.value	0x318
	.uleb128 0x1
	.long	.LASF998
	.value	0x319
	.uleb128 0x1
	.long	.LASF999
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1000
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1001
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1002
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1003
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1004
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1005
	.value	0x320
	.uleb128 0x1
	.long	.LASF1006
	.value	0x321
	.uleb128 0x1
	.long	.LASF1007
	.value	0x322
	.uleb128 0x1
	.long	.LASF1008
	.value	0x323
	.uleb128 0x1
	.long	.LASF1009
	.value	0x324
	.uleb128 0x1
	.long	.LASF1010
	.value	0x325
	.uleb128 0x1
	.long	.LASF1011
	.value	0x326
	.uleb128 0x1
	.long	.LASF1012
	.value	0x327
	.uleb128 0x1
	.long	.LASF1013
	.value	0x328
	.uleb128 0x1
	.long	.LASF1014
	.value	0x329
	.uleb128 0x1
	.long	.LASF1015
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1016
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1017
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1018
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1019
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1020
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1021
	.value	0x330
	.uleb128 0x1
	.long	.LASF1022
	.value	0x331
	.uleb128 0x1
	.long	.LASF1023
	.value	0x332
	.uleb128 0x1
	.long	.LASF1024
	.value	0x333
	.uleb128 0x1
	.long	.LASF1025
	.value	0x334
	.uleb128 0x1
	.long	.LASF1026
	.value	0x335
	.uleb128 0x1
	.long	.LASF1027
	.value	0x336
	.uleb128 0x1
	.long	.LASF1028
	.value	0x337
	.uleb128 0x1
	.long	.LASF1029
	.value	0x338
	.uleb128 0x1
	.long	.LASF1030
	.value	0x339
	.uleb128 0x1
	.long	.LASF1031
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1032
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1033
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1034
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1035
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1036
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1037
	.value	0x340
	.uleb128 0x1
	.long	.LASF1038
	.value	0x341
	.uleb128 0x1
	.long	.LASF1039
	.value	0x342
	.uleb128 0x1
	.long	.LASF1040
	.value	0x343
	.uleb128 0x1
	.long	.LASF1041
	.value	0x344
	.uleb128 0x1
	.long	.LASF1042
	.value	0x345
	.uleb128 0x1
	.long	.LASF1043
	.value	0x346
	.uleb128 0x1
	.long	.LASF1044
	.value	0x347
	.uleb128 0x1
	.long	.LASF1045
	.value	0x348
	.uleb128 0x1
	.long	.LASF1046
	.value	0x349
	.uleb128 0x1
	.long	.LASF1047
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1048
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1049
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1050
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1051
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1052
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1053
	.value	0x350
	.uleb128 0x1
	.long	.LASF1054
	.value	0x351
	.uleb128 0x1
	.long	.LASF1055
	.value	0x352
	.uleb128 0x1
	.long	.LASF1056
	.value	0x353
	.uleb128 0x1
	.long	.LASF1057
	.value	0x354
	.uleb128 0x1
	.long	.LASF1058
	.value	0x355
	.uleb128 0x1
	.long	.LASF1059
	.value	0x356
	.uleb128 0x1
	.long	.LASF1060
	.value	0x357
	.uleb128 0x1
	.long	.LASF1061
	.value	0x358
	.uleb128 0x1
	.long	.LASF1062
	.value	0x359
	.uleb128 0x1
	.long	.LASF1063
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1064
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1065
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1066
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1067
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1068
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1069
	.value	0x360
	.uleb128 0x1
	.long	.LASF1070
	.value	0x361
	.uleb128 0x1
	.long	.LASF1071
	.value	0x362
	.uleb128 0x1
	.long	.LASF1072
	.value	0x363
	.uleb128 0x1
	.long	.LASF1073
	.value	0x364
	.uleb128 0x1
	.long	.LASF1074
	.value	0x365
	.uleb128 0x1
	.long	.LASF1075
	.value	0x366
	.uleb128 0x1
	.long	.LASF1076
	.value	0x367
	.uleb128 0x1
	.long	.LASF1077
	.value	0x368
	.uleb128 0x1
	.long	.LASF1078
	.value	0x369
	.uleb128 0x1
	.long	.LASF1079
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1080
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1081
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1082
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1083
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1084
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1085
	.value	0x370
	.uleb128 0x1
	.long	.LASF1086
	.value	0x371
	.uleb128 0x1
	.long	.LASF1087
	.value	0x372
	.uleb128 0x1
	.long	.LASF1088
	.value	0x373
	.uleb128 0x1
	.long	.LASF1089
	.value	0x374
	.uleb128 0x1
	.long	.LASF1090
	.value	0x375
	.uleb128 0x1
	.long	.LASF1091
	.value	0x376
	.uleb128 0x1
	.long	.LASF1092
	.value	0x377
	.uleb128 0x1
	.long	.LASF1093
	.value	0x378
	.uleb128 0x1
	.long	.LASF1094
	.value	0x379
	.uleb128 0x1
	.long	.LASF1095
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1096
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1097
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1098
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1099
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1100
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1101
	.value	0x380
	.uleb128 0x1
	.long	.LASF1102
	.value	0x381
	.uleb128 0x1
	.long	.LASF1103
	.value	0x382
	.uleb128 0x1
	.long	.LASF1104
	.value	0x383
	.uleb128 0x1
	.long	.LASF1105
	.value	0x384
	.uleb128 0x1
	.long	.LASF1106
	.value	0x385
	.uleb128 0x1
	.long	.LASF1107
	.value	0x386
	.uleb128 0x1
	.long	.LASF1108
	.value	0x387
	.uleb128 0x1
	.long	.LASF1109
	.value	0x388
	.uleb128 0x1
	.long	.LASF1110
	.value	0x389
	.uleb128 0x1
	.long	.LASF1111
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1112
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1113
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1114
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1115
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1116
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1117
	.value	0x390
	.uleb128 0x1
	.long	.LASF1118
	.value	0x391
	.uleb128 0x1
	.long	.LASF1119
	.value	0x392
	.uleb128 0x1
	.long	.LASF1120
	.value	0x393
	.uleb128 0x1
	.long	.LASF1121
	.value	0x394
	.uleb128 0x1
	.long	.LASF1122
	.value	0x395
	.uleb128 0x1
	.long	.LASF1123
	.value	0x396
	.uleb128 0x1
	.long	.LASF1124
	.value	0x397
	.uleb128 0x1
	.long	.LASF1125
	.value	0x398
	.uleb128 0x1
	.long	.LASF1126
	.value	0x399
	.uleb128 0x1
	.long	.LASF1127
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1128
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1129
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1130
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1131
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1132
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1133
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1134
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1135
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1136
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1137
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1138
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1139
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1140
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3c7
	.byte	0
	.uleb128 0xd
	.long	.LASF1173
	.byte	0x8
	.value	0x478
	.long	0x68d
	.uleb128 0x13
	.byte	0x38
	.byte	0x8
	.value	0x47b
	.long	0x208a
	.uleb128 0x4
	.long	.LASF1174
	.byte	0x8
	.value	0x47d
	.byte	0xf
	.long	0x681
	.byte	0
	.uleb128 0x4
	.long	.LASF1175
	.byte	0x8
	.value	0x47e
	.byte	0xa
	.long	0x97
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1176
	.byte	0x8
	.value	0x47f
	.byte	0xa
	.long	0x97
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1177
	.byte	0x8
	.value	0x481
	.byte	0xf
	.long	0x242
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1178
	.byte	0x8
	.value	0x482
	.byte	0x10
	.long	0x2012
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1179
	.byte	0x8
	.value	0x483
	.byte	0xa
	.long	0x97
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1180
	.byte	0x8
	.value	0x483
	.byte	0x11
	.long	0x97
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LASF1181
	.byte	0x8
	.value	0x484
	.long	0x201e
	.uleb128 0x14
	.long	0x6b
	.byte	0x8
	.value	0x48b
	.byte	0xe
	.long	0x23e0
	.uleb128 0x2
	.long	.LASF1182
	.byte	0
	.uleb128 0x2
	.long	.LASF1183
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1184
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1185
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1186
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1187
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1188
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1189
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1190
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1191
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1192
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1193
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1194
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1195
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1196
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1197
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1200
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1201
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x89
	.byte	0
	.uleb128 0xd
	.long	.LASF1320
	.byte	0x8
	.value	0x517
	.long	0x2096
	.uleb128 0x13
	.byte	0x5c
	.byte	0x8
	.value	0x519
	.long	0x2538
	.uleb128 0x4
	.long	.LASF1321
	.byte	0x8
	.value	0x51b
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0x4
	.long	.LASF1322
	.byte	0x8
	.value	0x51c
	.byte	0x9
	.long	0x90
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1323
	.byte	0x8
	.value	0x51d
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1324
	.byte	0x8
	.value	0x51e
	.byte	0x9
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1325
	.byte	0x8
	.value	0x51f
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1326
	.byte	0x8
	.value	0x520
	.byte	0x9
	.long	0x90
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1327
	.byte	0x8
	.value	0x521
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1328
	.byte	0x8
	.value	0x522
	.byte	0x9
	.long	0x90
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1329
	.byte	0x8
	.value	0x523
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1330
	.byte	0x8
	.value	0x524
	.byte	0x9
	.long	0x90
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1331
	.byte	0x8
	.value	0x525
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1332
	.byte	0x8
	.value	0x526
	.byte	0x9
	.long	0x90
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1333
	.byte	0x8
	.value	0x527
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1334
	.byte	0x8
	.value	0x528
	.byte	0x9
	.long	0x90
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1335
	.byte	0x8
	.value	0x529
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1336
	.byte	0x8
	.value	0x52a
	.byte	0x9
	.long	0x90
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1337
	.byte	0x8
	.value	0x52b
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1338
	.byte	0x8
	.value	0x52c
	.byte	0x9
	.long	0x90
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1339
	.byte	0x8
	.value	0x52d
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1340
	.byte	0x8
	.value	0x52e
	.byte	0x9
	.long	0x90
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1341
	.byte	0x8
	.value	0x52f
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1342
	.byte	0x8
	.value	0x530
	.byte	0x9
	.long	0x90
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1343
	.byte	0x8
	.value	0x531
	.byte	0x9
	.long	0x90
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF1344
	.byte	0x8
	.value	0x533
	.long	0x23ec
	.uleb128 0xf
	.long	.LASF1346
	.byte	0xe0
	.byte	0x9
	.byte	0xcf
	.long	0x271b
	.uleb128 0x3
	.long	.LASF1347
	.byte	0x9
	.byte	0xd2
	.byte	0x10
	.long	0x293
	.byte	0
	.uleb128 0x6
	.string	"x"
	.byte	0x9
	.byte	0xd5
	.byte	0xe
	.long	0x1ab
	.byte	0x18
	.uleb128 0x6
	.string	"y"
	.byte	0x9
	.byte	0xd6
	.byte	0xe
	.long	0x1ab
	.byte	0x1c
	.uleb128 0x6
	.string	"z"
	.byte	0x9
	.byte	0xd7
	.byte	0xe
	.long	0x1ab
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1348
	.byte	0x9
	.byte	0xda
	.byte	0x14
	.long	0x271b
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1349
	.byte	0x9
	.byte	0xdb
	.byte	0x14
	.long	0x271b
	.byte	0x30
	.uleb128 0x3
	.long	.LASF61
	.byte	0x9
	.byte	0xde
	.byte	0xe
	.long	0x1b7
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1174
	.byte	0x9
	.byte	0xdf
	.byte	0x12
	.long	0x681
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1175
	.byte	0x9
	.byte	0xe0
	.byte	0xb
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1350
	.byte	0x9
	.byte	0xe4
	.byte	0x14
	.long	0x271b
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1351
	.byte	0x9
	.byte	0xe5
	.byte	0x14
	.long	0x271b
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1352
	.byte	0x9
	.byte	0xe7
	.byte	0x19
	.long	0x2754
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1353
	.byte	0x9
	.byte	0xea
	.byte	0xe
	.long	0x1ab
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1354
	.byte	0x9
	.byte	0xeb
	.byte	0xe
	.long	0x1ab
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1337
	.byte	0x9
	.byte	0xee
	.byte	0xe
	.long	0x1ab
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1338
	.byte	0x9
	.byte	0xef
	.byte	0xe
	.long	0x1ab
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1355
	.byte	0x9
	.byte	0xf2
	.byte	0xe
	.long	0x1ab
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1356
	.byte	0x9
	.byte	0xf3
	.byte	0xe
	.long	0x1ab
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1357
	.byte	0x9
	.byte	0xf4
	.byte	0xe
	.long	0x1ab
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1358
	.byte	0x9
	.byte	0xf7
	.byte	0xb
	.long	0x90
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF62
	.byte	0x9
	.byte	0xf9
	.byte	0x11
	.long	0x23e0
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1359
	.byte	0x9
	.byte	0xfa
	.byte	0x12
	.long	0x2759
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1176
	.byte	0x9
	.byte	0xfc
	.byte	0xb
	.long	0x90
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1360
	.byte	0x9
	.byte	0xfd
	.byte	0xf
	.long	0x275e
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1342
	.byte	0x9
	.byte	0xfe
	.byte	0xb
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1361
	.byte	0x9
	.byte	0xff
	.byte	0xb
	.long	0x90
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1362
	.byte	0x9
	.value	0x102
	.byte	0xb
	.long	0x90
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1363
	.byte	0x9
	.value	0x103
	.byte	0xb
	.long	0x90
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1364
	.byte	0x9
	.value	0x107
	.byte	0x14
	.long	0x271b
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1326
	.byte	0x9
	.value	0x10b
	.byte	0xb
	.long	0x90
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1365
	.byte	0x9
	.value	0x10f
	.byte	0xb
	.long	0x90
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1366
	.byte	0x9
	.value	0x113
	.byte	0x16
	.long	0x2938
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1367
	.byte	0x9
	.value	0x116
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1368
	.byte	0x9
	.value	0x119
	.byte	0x11
	.long	0x326
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1369
	.byte	0x9
	.value	0x11c
	.byte	0x14
	.long	0x271b
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x2544
	.uleb128 0xf
	.long	.LASF1370
	.byte	0x10
	.byte	0xa
	.byte	0xe3
	.long	0x2754
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xa
	.byte	0xe5
	.byte	0xf
	.long	0x2b7a
	.byte	0
	.uleb128 0x3
	.long	.LASF1372
	.byte	0xa
	.byte	0xe6
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1373
	.byte	0xa
	.byte	0xe7
	.byte	0xb
	.long	0x89
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x2720
	.uleb128 0x8
	.long	0x2538
	.uleb128 0x8
	.long	0x208a
	.uleb128 0x25
	.long	.LASF1374
	.value	0x140
	.byte	0xb
	.byte	0x53
	.byte	0x10
	.long	0x2938
	.uleb128 0x6
	.string	"mo"
	.byte	0xb
	.byte	0x55
	.byte	0xe
	.long	0x2a90
	.byte	0
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xb
	.byte	0x56
	.byte	0x13
	.long	0x2cbe
	.byte	0x8
	.uleb128 0x6
	.string	"cmd"
	.byte	0xb
	.byte	0x57
	.byte	0xf
	.long	0x2c93
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x1ab
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xb
	.byte	0x5e
	.byte	0xe
	.long	0x1ab
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xb
	.byte	0x60
	.byte	0x16
	.long	0x1ab
	.byte	0x1c
	.uleb128 0x6
	.string	"bob"
	.byte	0xb
	.byte	0x62
	.byte	0x16
	.long	0x1ab
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xb
	.byte	0x66
	.byte	0xb
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xb
	.byte	0x67
	.byte	0xb
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1380
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x2cca
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xb
	.byte	0x6d
	.byte	0xe
	.long	0x2cda
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xb
	.byte	0x6e
	.byte	0xe
	.long	0x2b8
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1384
	.byte	0xb
	.byte	0x71
	.byte	0xb
	.long	0x2a95
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1385
	.byte	0xb
	.byte	0x72
	.byte	0x12
	.long	0x129
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xb
	.byte	0x75
	.byte	0x12
	.long	0x129
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xb
	.byte	0x77
	.byte	0xe
	.long	0x2cea
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xb
	.byte	0x78
	.byte	0xb
	.long	0x2a95
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xb
	.byte	0x79
	.byte	0xb
	.long	0x2a95
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xb
	.byte	0x7c
	.byte	0xb
	.long	0x90
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xb
	.byte	0x7d
	.byte	0xb
	.long	0x90
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xb
	.byte	0x81
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xb
	.byte	0x87
	.byte	0xb
	.long	0x90
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xb
	.byte	0x88
	.byte	0xb
	.long	0x90
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xb
	.byte	0x89
	.byte	0xb
	.long	0x90
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xb
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xb
	.byte	0x8f
	.byte	0xb
	.long	0x90
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xb
	.byte	0x90
	.byte	0xb
	.long	0x90
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xb
	.byte	0x93
	.byte	0xe
	.long	0x2a90
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xb
	.byte	0x96
	.byte	0xb
	.long	0x90
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x90
	.byte	0xfc
	.uleb128 0x15
	.long	.LASF1403
	.byte	0x9e
	.byte	0xb
	.long	0x90
	.value	0x100
	.uleb128 0x15
	.long	.LASF1404
	.byte	0xa1
	.byte	0xf
	.long	0x2cfa
	.value	0x108
	.uleb128 0x15
	.long	.LASF1405
	.byte	0xa4
	.byte	0xe
	.long	0x2b8
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x2763
	.uleb128 0xd
	.long	.LASF1406
	.byte	0x9
	.value	0x11e
	.long	0x2544
	.uleb128 0xe
	.byte	0x8
	.byte	0xa
	.byte	0x47
	.long	0x2968
	.uleb128 0x6
	.string	"x"
	.byte	0xa
	.byte	0x49
	.byte	0xd
	.long	0x1ab
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0xa
	.byte	0x4a
	.byte	0xd
	.long	0x1ab
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF1407
	.byte	0xa
	.byte	0x4c
	.byte	0x3
	.long	0x2949
	.uleb128 0xe
	.byte	0x28
	.byte	0xa
	.byte	0x58
	.long	0x29ab
	.uleb128 0x3
	.long	.LASF1347
	.byte	0xa
	.byte	0x5a
	.byte	0x10
	.long	0x293
	.byte	0
	.uleb128 0x6
	.string	"x"
	.byte	0xa
	.byte	0x5b
	.byte	0xe
	.long	0x1ab
	.byte	0x18
	.uleb128 0x6
	.string	"y"
	.byte	0xa
	.byte	0x5c
	.byte	0xe
	.long	0x1ab
	.byte	0x1c
	.uleb128 0x6
	.string	"z"
	.byte	0xa
	.byte	0x5d
	.byte	0xe
	.long	0x1ab
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF1408
	.byte	0xa
	.byte	0x5f
	.byte	0x3
	.long	0x2974
	.uleb128 0xe
	.byte	0x80
	.byte	0xa
	.byte	0x65
	.long	0x2a90
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xa
	.byte	0x67
	.byte	0xd
	.long	0x1ab
	.byte	0
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xa
	.byte	0x68
	.byte	0xd
	.long	0x1ab
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xa
	.byte	0x69
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xa
	.byte	0x6a
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xa
	.byte	0x6b
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xa
	.byte	0x6c
	.byte	0xb
	.long	0x89
	.byte	0xe
	.uleb128 0x6
	.string	"tag"
	.byte	0xa
	.byte	0x6d
	.byte	0xb
	.long	0x89
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xa
	.byte	0x70
	.byte	0xa
	.long	0x90
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xa
	.byte	0x73
	.byte	0xd
	.long	0x2a90
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xa
	.byte	0x76
	.byte	0xa
	.long	0x2a95
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xa
	.byte	0x79
	.byte	0x11
	.long	0x29ab
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xa
	.byte	0x7c
	.byte	0xa
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xa
	.byte	0x7f
	.byte	0xd
	.long	0x2a90
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xa
	.byte	0x82
	.byte	0xb
	.long	0x72
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xa
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xa
	.byte	0x85
	.byte	0x15
	.long	0x2b64
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x293d
	.uleb128 0xb
	.long	0x90
	.long	0x2aa5
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF1423
	.byte	0x58
	.byte	0xa
	.byte	0xb3
	.long	0x2b64
	.uleb128 0x6
	.string	"v1"
	.byte	0xa
	.byte	0xb6
	.byte	0xf
	.long	0x2bb0
	.byte	0
	.uleb128 0x6
	.string	"v2"
	.byte	0xa
	.byte	0xb7
	.byte	0xf
	.long	0x2bb0
	.byte	0x8
	.uleb128 0x6
	.string	"dx"
	.byte	0xa
	.byte	0xba
	.byte	0xd
	.long	0x1ab
	.byte	0x10
	.uleb128 0x6
	.string	"dy"
	.byte	0xa
	.byte	0xbb
	.byte	0xd
	.long	0x1ab
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1342
	.byte	0xa
	.byte	0xbe
	.byte	0xb
	.long	0x89
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xa
	.byte	0xbf
	.byte	0xb
	.long	0x89
	.byte	0x1a
	.uleb128 0x6
	.string	"tag"
	.byte	0xa
	.byte	0xc0
	.byte	0xb
	.long	0x89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xa
	.byte	0xc4
	.byte	0xb
	.long	0x2d0
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xa
	.byte	0xc8
	.byte	0xd
	.long	0x2bb5
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xa
	.byte	0xcb
	.byte	0x11
	.long	0x2ba4
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xa
	.byte	0xcf
	.byte	0xf
	.long	0x2b7a
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xa
	.byte	0xd0
	.byte	0xf
	.long	0x2b7a
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xa
	.byte	0xd3
	.byte	0xa
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xa
	.byte	0xd6
	.byte	0xb
	.long	0x72
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x2b69
	.uleb128 0x8
	.long	0x2aa5
	.uleb128 0x5
	.long	.LASF1429
	.byte	0xa
	.byte	0x87
	.byte	0x3
	.long	0x29b7
	.uleb128 0x8
	.long	0x2b6e
	.uleb128 0x9
	.long	0x6b
	.byte	0xa
	.byte	0xa9
	.byte	0x1
	.long	0x2ba4
	.uleb128 0x2
	.long	.LASF1430
	.byte	0
	.uleb128 0x2
	.long	.LASF1431
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1432
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1433
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1434
	.byte	0xa
	.byte	0xaf
	.byte	0x3
	.long	0x2b7f
	.uleb128 0x8
	.long	0x2968
	.uleb128 0xb
	.long	0x1ab
	.long	0x2bc5
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1435
	.byte	0xa
	.byte	0xd7
	.byte	0x3
	.long	0x2aa5
	.uleb128 0x8
	.long	0x2bc5
	.uleb128 0x9
	.long	0x6b
	.byte	0xc
	.byte	0x3d
	.byte	0x1
	.long	0x2bf5
	.uleb128 0x2
	.long	.LASF1436
	.byte	0
	.uleb128 0x2
	.long	.LASF1437
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1438
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x18
	.byte	0xc
	.byte	0x44
	.long	0x2c30
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xc
	.byte	0x46
	.byte	0xe
	.long	0x275e
	.byte	0
	.uleb128 0x3
	.long	.LASF1176
	.byte	0xc
	.byte	0x47
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x6
	.string	"sx"
	.byte	0xc
	.byte	0x48
	.byte	0xd
	.long	0x1ab
	.byte	0xc
	.uleb128 0x6
	.string	"sy"
	.byte	0xc
	.byte	0x49
	.byte	0xd
	.long	0x1ab
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1439
	.byte	0xc
	.byte	0x4b
	.byte	0x3
	.long	0x2bf5
	.uleb128 0xe
	.byte	0x8
	.byte	0xd
	.byte	0x24
	.long	0x2c93
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xd
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xd
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xd
	.byte	0x28
	.byte	0xb
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xd
	.byte	0x29
	.byte	0xb
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xd
	.byte	0x2a
	.byte	0xa
	.long	0x2c4
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xd
	.byte	0x2b
	.byte	0xa
	.long	0x2c4
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF1446
	.byte	0xd
	.byte	0x2c
	.byte	0x3
	.long	0x2c3c
	.uleb128 0x9
	.long	0x6b
	.byte	0xb
	.byte	0x36
	.byte	0x1
	.long	0x2cbe
	.uleb128 0x2
	.long	.LASF1447
	.byte	0
	.uleb128 0x2
	.long	.LASF1448
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1449
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1450
	.byte	0xb
	.byte	0x3e
	.byte	0x3
	.long	0x2c9f
	.uleb128 0xb
	.long	0x90
	.long	0x2cda
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x2b8
	.long	0x2cea
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x2b8
	.long	0x2cfa
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x2c30
	.long	0x2d0a
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF1464
	.byte	0xf
	.byte	0x55
	.byte	0x12
	.long	0x2b7a
	.uleb128 0x14
	.long	0x6b
	.byte	0xe
	.value	0x1e1
	.byte	0x1
	.long	0x2d48
	.uleb128 0x2
	.long	.LASF1451
	.byte	0
	.uleb128 0x2
	.long	.LASF1452
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1453
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1454
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1455
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1456
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	.LASF1457
	.byte	0xe
	.value	0x1e9
	.long	0x2d16
	.uleb128 0x13
	.byte	0x48
	.byte	0xe
	.value	0x1ed
	.long	0x2dea
	.uleb128 0x4
	.long	.LASF1347
	.byte	0xe
	.value	0x1ef
	.byte	0xf
	.long	0x293
	.byte	0
	.uleb128 0x4
	.long	.LASF62
	.byte	0xe
	.value	0x1f0
	.byte	0xf
	.long	0x2d48
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1371
	.byte	0xe
	.value	0x1f1
	.byte	0xf
	.long	0x2b7a
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1458
	.byte	0xe
	.value	0x1f2
	.byte	0xd
	.long	0x1ab
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1459
	.byte	0xe
	.value	0x1f3
	.byte	0xd
	.long	0x1ab
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1336
	.byte	0xe
	.value	0x1f4
	.byte	0xd
	.long	0x1ab
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1460
	.byte	0xe
	.value	0x1f5
	.byte	0xd
	.long	0x2b8
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1461
	.byte	0xe
	.value	0x1f8
	.byte	0xa
	.long	0x90
	.byte	0x38
	.uleb128 0x26
	.string	"tag"
	.byte	0xe
	.value	0x1fb
	.byte	0xa
	.long	0x90
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1462
	.byte	0xe
	.value	0x1fc
	.byte	0xa
	.long	0x90
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.long	.LASF1463
	.byte	0xe
	.value	0x1fe
	.long	0x2d54
	.uleb128 0xb
	.long	0x2e06
	.long	0x2e06
	.uleb128 0xc
	.long	0x43
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0x2dea
	.uleb128 0x27
	.long	.LASF1465
	.byte	0xe
	.value	0x208
	.byte	0x13
	.long	0x2df6
	.uleb128 0x14
	.long	0x6b
	.byte	0xe
	.value	0x25b
	.byte	0x1
	.long	0x2e37
	.uleb128 0x28
	.string	"ok"
	.byte	0
	.uleb128 0x2
	.long	.LASF1466
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1467
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF1468
	.byte	0xe
	.value	0x260
	.long	0x2e18
	.uleb128 0x1c
	.long	.LASF1469
	.byte	0x10
	.byte	0xac
	.byte	0xd
	.long	0x90
	.uleb128 0x9
	.long	0x6b
	.byte	0x11
	.byte	0xb2
	.byte	0x1
	.long	0x30f0
	.uleb128 0x2
	.long	.LASF1470
	.byte	0
	.uleb128 0x2
	.long	.LASF1471
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1472
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1473
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1474
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1475
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1476
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1477
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1478
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1479
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1480
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1481
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1482
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1483
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1484
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1485
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1486
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1487
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1488
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1489
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1490
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1491
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1492
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1494
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1495
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1497
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1498
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1499
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1500
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1501
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1502
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1503
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1505
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1506
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1508
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1509
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1511
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1512
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1513
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1514
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1515
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1516
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1522
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1523
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1529
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1530
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1533
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1534
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1535
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1536
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1537
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1539
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x6d
	.byte	0
	.uleb128 0x29
	.long	0x2e0b
	.byte	0x1
	.byte	0x2d
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	activeceilings
	.uleb128 0x16
	.long	.LASF1582
	.byte	0x12
	.byte	0x4b
	.byte	0x6
	.long	0x3114
	.uleb128 0x7
	.long	0x3114
	.byte	0
	.uleb128 0x8
	.long	0x293
	.uleb128 0x17
	.long	.LASF1580
	.byte	0xe
	.byte	0x63
	.byte	0x1
	.long	0x90
	.long	0x3134
	.uleb128 0x7
	.long	0x2bd1
	.uleb128 0x7
	.long	0x90
	.byte	0
	.uleb128 0x17
	.long	.LASF1581
	.byte	0xe
	.byte	0x60
	.byte	0x9
	.long	0x1ab
	.long	0x314a
	.uleb128 0x7
	.long	0x2b7a
	.byte	0
	.uleb128 0x16
	.long	.LASF1583
	.byte	0x12
	.byte	0x4a
	.byte	0x6
	.long	0x315c
	.uleb128 0x7
	.long	0x3114
	.byte	0
	.uleb128 0x17
	.long	.LASF1584
	.byte	0x13
	.byte	0x30
	.byte	0x7
	.long	0x72
	.long	0x317c
	.uleb128 0x7
	.long	0x90
	.uleb128 0x7
	.long	0x90
	.uleb128 0x7
	.long	0x72
	.byte	0
	.uleb128 0x16
	.long	.LASF1585
	.byte	0x14
	.byte	0x3b
	.byte	0x1
	.long	0x3193
	.uleb128 0x7
	.long	0x72
	.uleb128 0x7
	.long	0x90
	.byte	0
	.uleb128 0x2a
	.long	.LASF1586
	.byte	0xe
	.value	0x263
	.byte	0x1
	.long	0x2e37
	.long	0x31c3
	.uleb128 0x7
	.long	0x2b7a
	.uleb128 0x7
	.long	0x1ab
	.uleb128 0x7
	.long	0x1ab
	.uleb128 0x7
	.long	0x2b8
	.uleb128 0x7
	.long	0x90
	.uleb128 0x7
	.long	0x90
	.byte	0
	.uleb128 0x2b
	.long	.LASF1592
	.byte	0x1
	.value	0x13a
	.byte	0x5
	.long	0x90
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3210
	.uleb128 0x1d
	.long	.LASF1588
	.value	0x13a
	.byte	0x21
	.long	0x2bd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"i"
	.value	0x13c
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"rtn"
	.value	0x13d
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF1589
	.byte	0x1
	.value	0x123
	.byte	0x6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x324b
	.uleb128 0x1d
	.long	.LASF1588
	.value	0x123
	.byte	0x28
	.long	0x2bd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"i"
	.value	0x125
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF1590
	.byte	0x1
	.value	0x10e
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3285
	.uleb128 0x2e
	.string	"c"
	.byte	0x1
	.value	0x10e
	.byte	0x27
	.long	0x2e06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"i"
	.value	0x110
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF1591
	.byte	0x1
	.byte	0xfb
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x32bd
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.byte	0xfb
	.byte	0x24
	.long	0x2e06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0xfd
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF1593
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.long	0x90
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3334
	.uleb128 0x18
	.long	.LASF1588
	.byte	0xad
	.byte	0xb
	.long	0x2bd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF62
	.byte	0xae
	.byte	0xd
	.long	0x2d48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.long	.LASF1594
	.byte	0xb0
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"rtn"
	.byte	0xb1
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"sec"
	.byte	0xb2
	.byte	0xf
	.long	0x2b7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF1595
	.byte	0xb3
	.byte	0x10
	.long	0x2e06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF1597
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF1595
	.byte	0x34
	.byte	0x20
	.long	0x2e06
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"res"
	.byte	0x36
	.byte	0xe
	.long	0x2e37
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
.LASF842:
	.string	"S_BSPI_RUN3"
.LASF843:
	.string	"S_BSPI_RUN4"
.LASF844:
	.string	"S_BSPI_RUN5"
.LASF845:
	.string	"S_BSPI_RUN6"
.LASF846:
	.string	"S_BSPI_RUN7"
.LASF847:
	.string	"S_BSPI_RUN8"
.LASF848:
	.string	"S_BSPI_RUN9"
.LASF1514:
	.string	"sfx_cybsit"
.LASF132:
	.string	"SPR_YSKU"
.LASF1480:
	.string	"sfx_sawup"
.LASF1400:
	.string	"attacker"
.LASF495:
	.string	"S_FIRE10"
.LASF496:
	.string	"S_FIRE11"
.LASF497:
	.string	"S_FIRE12"
.LASF498:
	.string	"S_FIRE13"
.LASF499:
	.string	"S_FIRE14"
.LASF500:
	.string	"S_FIRE15"
.LASF501:
	.string	"S_FIRE16"
.LASF502:
	.string	"S_FIRE17"
.LASF503:
	.string	"S_FIRE18"
.LASF504:
	.string	"S_FIRE19"
.LASF1316:
	.string	"MT_MISC84"
.LASF1249:
	.string	"MT_MISC20"
.LASF1063:
	.string	"S_MEGA2"
.LASF1064:
	.string	"S_MEGA3"
.LASF1065:
	.string	"S_MEGA4"
.LASF1253:
	.string	"MT_MISC24"
.LASF1254:
	.string	"MT_MISC25"
.LASF1256:
	.string	"MT_MISC26"
.LASF1257:
	.string	"MT_MISC27"
.LASF1258:
	.string	"MT_MISC28"
.LASF1261:
	.string	"MT_MISC29"
.LASF694:
	.string	"S_SARG_PAIN2"
.LASF1365:
	.string	"threshold"
.LASF18:
	.string	"wp_pistol"
.LASF173:
	.string	"SPR_COL1"
.LASF174:
	.string	"SPR_COL2"
.LASF175:
	.string	"SPR_COL3"
.LASF176:
	.string	"SPR_COL4"
.LASF185:
	.string	"SPR_COL5"
.LASF179:
	.string	"SPR_COL6"
.LASF1576:
	.string	"sfx_skesit"
.LASF1557:
	.string	"sfx_tink"
.LASF505:
	.string	"S_FIRE20"
.LASF506:
	.string	"S_FIRE21"
.LASF507:
	.string	"S_FIRE22"
.LASF508:
	.string	"S_FIRE23"
.LASF509:
	.string	"S_FIRE24"
.LASF159:
	.string	"SPR_COLU"
.LASF511:
	.string	"S_FIRE26"
.LASF512:
	.string	"S_FIRE27"
.LASF513:
	.string	"S_FIRE28"
.LASF514:
	.string	"S_FIRE29"
.LASF1262:
	.string	"MT_MISC30"
.LASF1177:
	.string	"action"
.LASF1264:
	.string	"MT_MISC32"
.LASF1265:
	.string	"MT_MISC33"
.LASF856:
	.string	"S_BSPI_PAIN"
.LASF1267:
	.string	"MT_MISC35"
.LASF328:
	.string	"S_BFGEXP"
.LASF31:
	.string	"am_misl"
.LASF1270:
	.string	"MT_MISC38"
.LASF1271:
	.string	"MT_MISC39"
.LASF1453:
	.string	"lowerAndCrush"
.LASF1411:
	.string	"floorpic"
.LASF858:
	.string	"S_BSPI_DIE1"
.LASF1438:
	.string	"NUMPSPRITES"
.LASF863:
	.string	"S_BSPI_DIE6"
.LASF1563:
	.string	"sfx_getpow"
.LASF1432:
	.string	"ST_POSITIVE"
.LASF1376:
	.string	"viewz"
.LASF754:
	.string	"S_BOSS_RAISE1"
.LASF755:
	.string	"S_BOSS_RAISE2"
.LASF1196:
	.string	"MT_HEAD"
.LASF756:
	.string	"S_BOSS_RAISE3"
.LASF515:
	.string	"S_FIRE30"
.LASF660:
	.string	"S_TROO_PAIN"
.LASF949:
	.string	"S_SSWV_DIE1"
.LASF759:
	.string	"S_BOSS_RAISE6"
.LASF951:
	.string	"S_SSWV_DIE3"
.LASF952:
	.string	"S_SSWV_DIE4"
.LASF953:
	.string	"S_SSWV_DIE5"
.LASF127:
	.string	"SPR_BKEY"
.LASF771:
	.string	"S_BOS2_ATK1"
.LASF772:
	.string	"S_BOS2_ATK2"
.LASF773:
	.string	"S_BOS2_ATK3"
.LASF161:
	.string	"SPR_GOR1"
.LASF168:
	.string	"SPR_GOR2"
.LASF169:
	.string	"SPR_GOR3"
.LASF170:
	.string	"SPR_GOR4"
.LASF171:
	.string	"SPR_GOR5"
.LASF1274:
	.string	"MT_MISC42"
.LASF1275:
	.string	"MT_MISC43"
.LASF528:
	.string	"S_SKEL_RUN1"
.LASF529:
	.string	"S_SKEL_RUN2"
.LASF530:
	.string	"S_SKEL_RUN3"
.LASF531:
	.string	"S_SKEL_RUN4"
.LASF532:
	.string	"S_SKEL_RUN5"
.LASF533:
	.string	"S_SKEL_RUN6"
.LASF534:
	.string	"S_SKEL_RUN7"
.LASF535:
	.string	"S_SKEL_RUN8"
.LASF536:
	.string	"S_SKEL_RUN9"
.LASF21:
	.string	"wp_missile"
.LASF1014:
	.string	"S_BEXP2"
.LASF1324:
	.string	"seestate"
.LASF709:
	.string	"S_HEAD_ATK1"
.LASF710:
	.string	"S_HEAD_ATK2"
.LASF711:
	.string	"S_HEAD_ATK3"
.LASF1426:
	.string	"slopetype"
.LASF963:
	.string	"S_SSWV_RAISE1"
.LASF964:
	.string	"S_SSWV_RAISE2"
.LASF965:
	.string	"S_SSWV_RAISE3"
.LASF966:
	.string	"S_SSWV_RAISE4"
.LASF967:
	.string	"S_SSWV_RAISE5"
.LASF61:
	.string	"angle"
.LASF1191:
	.string	"MT_FATSHOT"
.LASF147:
	.string	"SPR_CELL"
.LASF148:
	.string	"SPR_CELP"
.LASF1129:
	.string	"S_HEARTCOL"
.LASF1372:
	.string	"numlines"
.LASF1046:
	.string	"S_MEDI"
.LASF1053:
	.string	"S_PINV"
.LASF1240:
	.string	"MT_INS"
.LASF1283:
	.string	"MT_MISC51"
.LASF1284:
	.string	"MT_MISC52"
.LASF1238:
	.string	"MT_INV"
.LASF1286:
	.string	"MT_MISC54"
.LASF1143:
	.string	"S_BTORCHSHRT"
.LASF264:
	.string	"S_MISSILEUP"
.LASF1289:
	.string	"MT_MISC57"
.LASF1290:
	.string	"MT_MISC58"
.LASF1291:
	.string	"MT_MISC59"
.LASF1549:
	.string	"sfx_bspwlk"
.LASF441:
	.string	"S_SPOS_RAISE1"
.LASF1474:
	.string	"sfx_dshtgn"
.LASF235:
	.string	"S_SGUNFLASH1"
.LASF236:
	.string	"S_SGUNFLASH2"
.LASF783:
	.string	"S_BOS2_RAISE1"
.LASF784:
	.string	"S_BOS2_RAISE2"
.LASF785:
	.string	"S_BOS2_RAISE3"
.LASF786:
	.string	"S_BOS2_RAISE4"
.LASF787:
	.string	"S_BOS2_RAISE5"
.LASF788:
	.string	"S_BOS2_RAISE6"
.LASF789:
	.string	"S_BOS2_RAISE7"
.LASF548:
	.string	"S_SKEL_PAIN"
.LASF1035:
	.string	"S_RKEY"
.LASF54:
	.string	"next"
.LASF1585:
	.string	"S_StartSound"
.LASF1486:
	.string	"sfx_firsht"
.LASF1478:
	.string	"sfx_plasma"
.LASF217:
	.string	"S_PISTOLUP"
.LASF903:
	.string	"S_CYBER_DIE8"
.LASF1491:
	.string	"sfx_dorcls"
.LASF1292:
	.string	"MT_MISC60"
.LASF1293:
	.string	"MT_MISC61"
.LASF1294:
	.string	"MT_MISC62"
.LASF1295:
	.string	"MT_MISC63"
.LASF1296:
	.string	"MT_MISC64"
.LASF1297:
	.string	"MT_MISC65"
.LASF1298:
	.string	"MT_MISC66"
.LASF1299:
	.string	"MT_MISC67"
.LASF332:
	.string	"S_EXPLODE1"
.LASF333:
	.string	"S_EXPLODE2"
.LASF334:
	.string	"S_EXPLODE3"
.LASF1569:
	.string	"sfx_manatk"
.LASF523:
	.string	"S_TRACEEXP1"
.LASF524:
	.string	"S_TRACEEXP2"
.LASF525:
	.string	"S_TRACEEXP3"
.LASF911:
	.string	"S_PAIN_RUN5"
.LASF1013:
	.string	"S_BEXP"
.LASF912:
	.string	"S_PAIN_RUN6"
.LASF1401:
	.string	"extralight"
.LASF1130:
	.string	"S_HEARTCOL2"
.LASF309:
	.string	"S_RBALLX1"
.LASF1477:
	.string	"sfx_dbload"
.LASF1338:
	.string	"height"
.LASF1223:
	.string	"MT_TELEPORTMAN"
.LASF1302:
	.string	"MT_MISC70"
.LASF92:
	.string	"SPR_IFOG"
.LASF1304:
	.string	"MT_MISC72"
.LASF1305:
	.string	"MT_MISC73"
.LASF1306:
	.string	"MT_MISC74"
.LASF1307:
	.string	"MT_MISC75"
.LASF1308:
	.string	"MT_MISC76"
.LASF1136:
	.string	"S_GREENTORCH2"
.LASF1137:
	.string	"S_GREENTORCH3"
.LASF1138:
	.string	"S_GREENTORCH4"
.LASF1457:
	.string	"ceiling_e"
.LASF977:
	.string	"S_COMMKEEN9"
.LASF626:
	.string	"S_CPOS_PAIN2"
.LASF849:
	.string	"S_BSPI_RUN10"
.LASF850:
	.string	"S_BSPI_RUN11"
.LASF851:
	.string	"S_BSPI_RUN12"
.LASF933:
	.string	"S_SSWV_RUN1"
.LASF934:
	.string	"S_SSWV_RUN2"
.LASF935:
	.string	"S_SSWV_RUN3"
.LASF936:
	.string	"S_SSWV_RUN4"
.LASF937:
	.string	"S_SSWV_RUN5"
.LASF938:
	.string	"S_SSWV_RUN6"
.LASF939:
	.string	"S_SSWV_RUN7"
.LASF940:
	.string	"S_SSWV_RUN8"
.LASF1118:
	.string	"S_SKULLCOL"
.LASF1190:
	.string	"MT_FATSO"
.LASF662:
	.string	"S_TROO_DIE1"
.LASF663:
	.string	"S_TROO_DIE2"
.LASF664:
	.string	"S_TROO_DIE3"
.LASF665:
	.string	"S_TROO_DIE4"
.LASF666:
	.string	"S_TROO_DIE5"
.LASF1043:
	.string	"S_YSKULL"
.LASF1044:
	.string	"S_YSKULL2"
.LASF145:
	.string	"SPR_ROCK"
.LASF1215:
	.string	"MT_ROCKET"
.LASF1313:
	.string	"MT_MISC81"
.LASF1314:
	.string	"MT_MISC82"
.LASF1315:
	.string	"MT_MISC83"
.LASF621:
	.string	"S_CPOS_ATK1"
.LASF622:
	.string	"S_CPOS_ATK2"
.LASF623:
	.string	"S_CPOS_ATK3"
.LASF624:
	.string	"S_CPOS_ATK4"
.LASF1182:
	.string	"MT_PLAYER"
.LASF157:
	.string	"SPR_SHOT"
.LASF350:
	.string	"S_IFOG2"
.LASF351:
	.string	"S_IFOG3"
.LASF352:
	.string	"S_IFOG4"
.LASF353:
	.string	"S_IFOG5"
.LASF86:
	.string	"SPR_PLSE"
.LASF78:
	.string	"SPR_PLSF"
.LASF77:
	.string	"SPR_PLSG"
.LASF746:
	.string	"S_BOSS_PAIN2"
.LASF446:
	.string	"S_VILE_STND"
.LASF974:
	.string	"S_COMMKEEN6"
.LASF975:
	.string	"S_COMMKEEN7"
.LASF976:
	.string	"S_COMMKEEN8"
.LASF85:
	.string	"SPR_PLSS"
.LASF825:
	.string	"S_SPID_PAIN2"
.LASF1504:
	.string	"sfx_oof"
.LASF1339:
	.string	"mass"
.LASF1545:
	.string	"sfx_posact"
.LASF198:
	.string	"SPR_POB1"
.LASF199:
	.string	"SPR_POB2"
.LASF1047:
	.string	"S_SOUL"
.LASF1536:
	.string	"sfx_skldth"
.LASF1057:
	.string	"S_PSTR"
.LASF889:
	.string	"S_CYBER_ATK1"
.LASF890:
	.string	"S_CYBER_ATK2"
.LASF891:
	.string	"S_CYBER_ATK3"
.LASF892:
	.string	"S_CYBER_ATK4"
.LASF893:
	.string	"S_CYBER_ATK5"
.LASF894:
	.string	"S_CYBER_ATK6"
.LASF1084:
	.string	"S_BFUG"
.LASF124:
	.string	"SPR_FCAN"
.LASF1435:
	.string	"line_t"
.LASF567:
	.string	"S_FATT_STND"
.LASF1004:
	.string	"S_BRAINEXPLODE1"
.LASF1005:
	.string	"S_BRAINEXPLODE2"
.LASF1006:
	.string	"S_BRAINEXPLODE3"
.LASF288:
	.string	"S_BFGUP"
.LASF129:
	.string	"SPR_YKEY"
.LASF675:
	.string	"S_TROO_RAISE1"
.LASF676:
	.string	"S_TROO_RAISE2"
.LASF677:
	.string	"S_TROO_RAISE3"
.LASF678:
	.string	"S_TROO_RAISE4"
.LASF679:
	.string	"S_TROO_RAISE5"
.LASF1088:
	.string	"S_PLAS"
.LASF970:
	.string	"S_COMMKEEN2"
.LASF971:
	.string	"S_COMMKEEN3"
.LASF972:
	.string	"S_COMMKEEN4"
.LASF973:
	.string	"S_COMMKEEN5"
.LASF354:
	.string	"S_PLAY"
.LASF920:
	.string	"S_PAIN_DIE2"
.LASF921:
	.string	"S_PAIN_DIE3"
.LASF922:
	.string	"S_PAIN_DIE4"
.LASF923:
	.string	"S_PAIN_DIE5"
.LASF924:
	.string	"S_PAIN_DIE6"
.LASF1193:
	.string	"MT_TROOP"
.LASF475:
	.string	"S_VILE_PAIN2"
.LASF603:
	.string	"S_FATT_RAISE1"
.LASF22:
	.string	"wp_plasma"
.LASF605:
	.string	"S_FATT_RAISE3"
.LASF606:
	.string	"S_FATT_RAISE4"
.LASF607:
	.string	"S_FATT_RAISE5"
.LASF608:
	.string	"S_FATT_RAISE6"
.LASF609:
	.string	"S_FATT_RAISE7"
.LASF610:
	.string	"S_FATT_RAISE8"
.LASF319:
	.string	"S_ROCKET"
.LASF1214:
	.string	"MT_HEADSHOT"
.LASF1421:
	.string	"linecount"
.LASF1424:
	.string	"sidenum"
.LASF872:
	.string	"S_ARACH_PLAZ"
.LASF1111:
	.string	"S_STALAGTITE"
.LASF713:
	.string	"S_HEAD_PAIN2"
.LASF714:
	.string	"S_HEAD_PAIN3"
.LASF60:
	.string	"byte"
.LASF15:
	.string	"it_redskull"
.LASF1546:
	.string	"sfx_bgact"
.LASF1221:
	.string	"MT_TFOG"
.LASF422:
	.string	"S_SPOS_ATK1"
.LASF423:
	.string	"S_SPOS_ATK2"
.LASF424:
	.string	"S_SPOS_ATK3"
.LASF359:
	.string	"S_PLAY_ATK1"
.LASF360:
	.string	"S_PLAY_ATK2"
.LASF112:
	.string	"SPR_APLS"
.LASF1393:
	.string	"refire"
.LASF1140:
	.string	"S_REDTORCH2"
.LASF1141:
	.string	"S_REDTORCH3"
.LASF1142:
	.string	"S_REDTORCH4"
.LASF649:
	.string	"S_TROO_RUN1"
.LASF650:
	.string	"S_TROO_RUN2"
.LASF651:
	.string	"S_TROO_RUN3"
.LASF652:
	.string	"S_TROO_RUN4"
.LASF653:
	.string	"S_TROO_RUN5"
.LASF654:
	.string	"S_TROO_RUN6"
.LASF655:
	.string	"S_TROO_RUN7"
.LASF656:
	.string	"S_TROO_RUN8"
.LASF1570:
	.string	"sfx_mandth"
.LASF103:
	.string	"SPR_CPOS"
.LASF564:
	.string	"S_FATSHOTX1"
.LASF565:
	.string	"S_FATSHOTX2"
.LASF566:
	.string	"S_FATSHOTX3"
.LASF644:
	.string	"S_CPOS_RAISE5"
.LASF645:
	.string	"S_CPOS_RAISE6"
.LASF646:
	.string	"S_CPOS_RAISE7"
.LASF17:
	.string	"wp_fist"
.LASF1458:
	.string	"bottomheight"
.LASF1332:
	.string	"missilestate"
.LASF133:
	.string	"SPR_STIM"
.LASF680:
	.string	"S_SARG_STND"
.LASF905:
	.string	"S_CYBER_DIE10"
.LASF83:
	.string	"SPR_BAL1"
.LASF84:
	.string	"SPR_BAL2"
.LASF106:
	.string	"SPR_BAL7"
.LASF1359:
	.string	"info"
.LASF1540:
	.string	"sfx_bspdth"
.LASF1099:
	.string	"S_HEADSONSTICK"
.LASF1575:
	.string	"sfx_skeact"
.LASF1354:
	.string	"ceilingz"
.LASF1571:
	.string	"sfx_sssit"
.LASF556:
	.string	"S_SKEL_RAISE1"
.LASF71:
	.string	"SPR_SHT2"
.LASF210:
	.string	"S_PUNCH1"
.LASF211:
	.string	"S_PUNCH2"
.LASF212:
	.string	"S_PUNCH3"
.LASF213:
	.string	"S_PUNCH4"
.LASF214:
	.string	"S_PUNCH5"
.LASF573:
	.string	"S_FATT_RUN5"
.LASF209:
	.string	"S_PUNCHUP"
.LASF826:
	.string	"S_SPID_DIE1"
.LASF577:
	.string	"S_FATT_RUN9"
.LASF828:
	.string	"S_SPID_DIE3"
.LASF829:
	.string	"S_SPID_DIE4"
.LASF70:
	.string	"SPR_SHTF"
.LASF66:
	.string	"SPR_SHTG"
.LASF348:
	.string	"S_IFOG01"
.LASF349:
	.string	"S_IFOG02"
.LASF834:
	.string	"S_SPID_DIE9"
.LASF1076:
	.string	"S_AMMO"
.LASF32:
	.string	"NUMAMMO"
.LASF907:
	.string	"S_PAIN_RUN1"
.LASF908:
	.string	"S_PAIN_RUN2"
.LASF909:
	.string	"S_PAIN_RUN3"
.LASF910:
	.string	"S_PAIN_RUN4"
.LASF192:
	.string	"SPR_HDB1"
.LASF193:
	.string	"SPR_HDB2"
.LASF194:
	.string	"SPR_HDB3"
.LASF195:
	.string	"SPR_HDB4"
.LASF196:
	.string	"SPR_HDB5"
.LASF197:
	.string	"SPR_HDB6"
.LASF1183:
	.string	"MT_POSSESSED"
.LASF242:
	.string	"S_DSGUN3"
.LASF243:
	.string	"S_DSGUN4"
.LASF62:
	.string	"type"
.LASF262:
	.string	"S_MISSILE"
.LASF1090:
	.string	"S_SHOT2"
.LASF1157:
	.string	"S_HANGTLOOKDN"
.LASF1362:
	.string	"movedir"
.LASF634:
	.string	"S_CPOS_XDIE1"
.LASF51:
	.string	"actionf_t"
.LASF46:
	.string	"actionf_v"
.LASF153:
	.string	"SPR_MGUN"
.LASF1593:
	.string	"EV_DoCeiling"
.LASF1195:
	.string	"MT_SHADOWS"
.LASF537:
	.string	"S_SKEL_RUN10"
.LASF538:
	.string	"S_SKEL_RUN11"
.LASF539:
	.string	"S_SKEL_RUN12"
.LASF205:
	.string	"S_NULL"
.LASF747:
	.string	"S_BOSS_DIE1"
.LASF748:
	.string	"S_BOSS_DIE2"
.LASF749:
	.string	"S_BOSS_DIE3"
.LASF750:
	.string	"S_BOSS_DIE4"
.LASF751:
	.string	"S_BOSS_DIE5"
.LASF752:
	.string	"S_BOSS_DIE6"
.LASF753:
	.string	"S_BOSS_DIE7"
.LASF917:
	.string	"S_PAIN_PAIN"
.LASF286:
	.string	"S_BFG"
.LASF1330:
	.string	"painsound"
.LASF1414:
	.string	"special"
.LASF932:
	.string	"S_SSWV_STND2"
.LASF154:
	.string	"SPR_CSAW"
.LASF1067:
	.string	"S_PMAP"
.LASF1073:
	.string	"S_PVIS"
.LASF1594:
	.string	"secnum"
.LASF287:
	.string	"S_BFGDOWN"
.LASF1518:
	.string	"sfx_vilsit"
.LASF1207:
	.string	"MT_BOSSBRAIN"
.LASF100:
	.string	"SPR_SKEL"
.LASF282:
	.string	"S_PLASMA1"
.LASF283:
	.string	"S_PLASMA2"
.LASF1147:
	.string	"S_GTORCHSHRT"
.LASF1505:
	.string	"sfx_telept"
.LASF1373:
	.string	"firstline"
.LASF1081:
	.string	"S_SHEL"
.LASF838:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF1539:
	.string	"sfx_spidth"
.LASF98:
	.string	"SPR_FATB"
.LASF203:
	.string	"NUMSPRITES"
.LASF321:
	.string	"S_BFGSHOT2"
.LASF102:
	.string	"SPR_FATT"
.LASF1526:
	.string	"sfx_skeswg"
.LASF1048:
	.string	"S_SOUL2"
.LASF1049:
	.string	"S_SOUL3"
.LASF1050:
	.string	"S_SOUL4"
.LASF1051:
	.string	"S_SOUL5"
.LASF1052:
	.string	"S_SOUL6"
.LASF808:
	.string	"S_SPID_RUN1"
.LASF809:
	.string	"S_SPID_RUN2"
.LASF810:
	.string	"S_SPID_RUN3"
.LASF811:
	.string	"S_SPID_RUN4"
.LASF812:
	.string	"S_SPID_RUN5"
.LASF813:
	.string	"S_SPID_RUN6"
.LASF814:
	.string	"S_SPID_RUN7"
.LASF815:
	.string	"S_SPID_RUN8"
.LASF41:
	.string	"float"
.LASF1015:
	.string	"S_BEXP3"
.LASF1016:
	.string	"S_BEXP4"
.LASF1484:
	.string	"sfx_rlaunc"
.LASF1104:
	.string	"S_DEADSTICK"
.LASF1402:
	.string	"fixedcolormap"
.LASF1387:
	.string	"weaponowned"
.LASF1224:
	.string	"MT_EXTRABFG"
.LASF1468:
	.string	"result_e"
.LASF394:
	.string	"S_POSS_DIE1"
.LASF395:
	.string	"S_POSS_DIE2"
.LASF396:
	.string	"S_POSS_DIE3"
.LASF397:
	.string	"S_POSS_DIE4"
.LASF398:
	.string	"S_POSS_DIE5"
.LASF224:
	.string	"S_SGUNDOWN"
.LASF1573:
	.string	"sfx_keenpn"
.LASF73:
	.string	"SPR_CHGF"
.LASF72:
	.string	"SPR_CHGG"
.LASF1581:
	.string	"P_FindHighestCeilingSurrounding"
.LASF1595:
	.string	"ceiling"
.LASF617:
	.string	"S_CPOS_RUN5"
.LASF876:
	.string	"S_ARACH_PLEX3"
.LASF618:
	.string	"S_CPOS_RUN6"
.LASF878:
	.string	"S_ARACH_PLEX5"
.LASF619:
	.string	"S_CPOS_RUN7"
.LASF1364:
	.string	"target"
.LASF183:
	.string	"SPR_CEYE"
.LASF1430:
	.string	"ST_HORIZONTAL"
.LASF925:
	.string	"S_PAIN_RAISE1"
.LASF926:
	.string	"S_PAIN_RAISE2"
.LASF927:
	.string	"S_PAIN_RAISE3"
.LASF928:
	.string	"S_PAIN_RAISE4"
.LASF929:
	.string	"S_PAIN_RAISE5"
.LASF562:
	.string	"S_FATSHOT1"
.LASF563:
	.string	"S_FATSHOT2"
.LASF1431:
	.string	"ST_VERTICAL"
.LASF140:
	.string	"SPR_SUIT"
.LASF790:
	.string	"S_SKULL_STND"
.LASF1470:
	.string	"sfx_None"
.LASF1462:
	.string	"olddirection"
.LASF824:
	.string	"S_SPID_PAIN"
.LASF1319:
	.string	"NUMMOBJTYPES"
.LASF122:
	.string	"SPR_BAR1"
.LASF237:
	.string	"S_DSGUN"
.LASF1116:
	.string	"S_CANDLESTIK"
.LASF38:
	.string	"pw_allmap"
.LASF1172:
	.string	"NUMSTATES"
.LASF816:
	.string	"S_SPID_RUN9"
.LASF302:
	.string	"S_TBALL1"
.LASF303:
	.string	"S_TBALL2"
.LASF516:
	.string	"S_SMOKE1"
.LASF517:
	.string	"S_SMOKE2"
.LASF518:
	.string	"S_SMOKE3"
.LASF519:
	.string	"S_SMOKE4"
.LASF520:
	.string	"S_SMOKE5"
.LASF739:
	.string	"S_BOSS_RUN6"
.LASF740:
	.string	"S_BOSS_RUN7"
.LASF741:
	.string	"S_BOSS_RUN8"
.LASF105:
	.string	"SPR_HEAD"
.LASF1351:
	.string	"bprev"
.LASF166:
	.string	"SPR_POL1"
.LASF162:
	.string	"SPR_POL2"
.LASF165:
	.string	"SPR_POL3"
.LASF164:
	.string	"SPR_POL4"
.LASF163:
	.string	"SPR_POL5"
.LASF167:
	.string	"SPR_POL6"
.LASF1011:
	.string	"S_BAR1"
.LASF1543:
	.string	"sfx_pedth"
.LASF1502:
	.string	"sfx_itemup"
.LASF1225:
	.string	"MT_MISC0"
.LASF1097:
	.string	"S_DEADTORSO"
.LASF1459:
	.string	"topheight"
.LASF239:
	.string	"S_DSGUNUP"
.LASF1565:
	.string	"sfx_boscub"
.LASF1527:
	.string	"sfx_pldeth"
.LASF1322:
	.string	"spawnstate"
.LASF1583:
	.string	"P_AddThinker"
.LASF648:
	.string	"S_TROO_STND2"
.LASF1168:
	.string	"S_TECH2LAMP"
.LASF1490:
	.string	"sfx_doropn"
.LASF1211:
	.string	"MT_SPAWNFIRE"
.LASF1186:
	.string	"MT_FIRE"
.LASF1178:
	.string	"nextstate"
.LASF745:
	.string	"S_BOSS_PAIN"
.LASF116:
	.string	"SPR_SSWV"
.LASF1580:
	.string	"P_FindSectorFromLineTag"
.LASF307:
	.string	"S_RBALL1"
.LASF308:
	.string	"S_RBALL2"
.LASF1500:
	.string	"sfx_pepain"
.LASF1112:
	.string	"S_TALLGRNCOL"
.LASF1367:
	.string	"lastlook"
.LASF1537:
	.string	"sfx_brsdth"
.LASF1473:
	.string	"sfx_sgcock"
.LASF1450:
	.string	"playerstate_t"
.LASF1101:
	.string	"S_HEADONASTICK"
.LASF381:
	.string	"S_POSS_RUN1"
.LASF323:
	.string	"S_BFGLAND2"
.LASF324:
	.string	"S_BFGLAND3"
.LASF325:
	.string	"S_BFGLAND4"
.LASF326:
	.string	"S_BFGLAND5"
.LASF327:
	.string	"S_BFGLAND6"
.LASF387:
	.string	"S_POSS_RUN7"
.LASF388:
	.string	"S_POSS_RUN8"
.LASF370:
	.string	"S_PLAY_XDIE1"
.LASF371:
	.string	"S_PLAY_XDIE2"
.LASF372:
	.string	"S_PLAY_XDIE3"
.LASF373:
	.string	"S_PLAY_XDIE4"
.LASF374:
	.string	"S_PLAY_XDIE5"
.LASF375:
	.string	"S_PLAY_XDIE6"
.LASF376:
	.string	"S_PLAY_XDIE7"
.LASF377:
	.string	"S_PLAY_XDIE8"
.LASF378:
	.string	"S_PLAY_XDIE9"
.LASF776:
	.string	"S_BOS2_DIE1"
.LASF777:
	.string	"S_BOS2_DIE2"
.LASF778:
	.string	"S_BOS2_DIE3"
.LASF779:
	.string	"S_BOS2_DIE4"
.LASF780:
	.string	"S_BOS2_DIE5"
.LASF781:
	.string	"S_BOS2_DIE6"
.LASF782:
	.string	"S_BOS2_DIE7"
.LASF1342:
	.string	"flags"
.LASF702:
	.string	"S_SARG_RAISE2"
.LASF703:
	.string	"S_SARG_RAISE3"
.LASF346:
	.string	"S_TFOG10"
.LASF704:
	.string	"S_SARG_RAISE4"
.LASF399:
	.string	"S_POSS_XDIE1"
.LASF400:
	.string	"S_POSS_XDIE2"
.LASF401:
	.string	"S_POSS_XDIE3"
.LASF402:
	.string	"S_POSS_XDIE4"
.LASF403:
	.string	"S_POSS_XDIE5"
.LASF404:
	.string	"S_POSS_XDIE6"
.LASF405:
	.string	"S_POSS_XDIE7"
.LASF28:
	.string	"am_clip"
.LASF407:
	.string	"S_POSS_XDIE9"
.LASF1100:
	.string	"S_GIBS"
.LASF715:
	.string	"S_HEAD_DIE1"
.LASF716:
	.string	"S_HEAD_DIE2"
.LASF717:
	.string	"S_HEAD_DIE3"
.LASF718:
	.string	"S_HEAD_DIE4"
.LASF719:
	.string	"S_HEAD_DIE5"
.LASF720:
	.string	"S_HEAD_DIE6"
.LASF568:
	.string	"S_FATT_STND2"
.LASF1091:
	.string	"S_COLU"
.LASF218:
	.string	"S_PISTOL1"
.LASF219:
	.string	"S_PISTOL2"
.LASF220:
	.string	"S_PISTOL3"
.LASF221:
	.string	"S_PISTOL4"
.LASF557:
	.string	"S_SKEL_RAISE2"
.LASF558:
	.string	"S_SKEL_RAISE3"
.LASF559:
	.string	"S_SKEL_RAISE4"
.LASF560:
	.string	"S_SKEL_RAISE5"
.LASF561:
	.string	"S_SKEL_RAISE6"
.LASF1120:
	.string	"S_BIGTREE"
.LASF1433:
	.string	"ST_NEGATIVE"
.LASF1030:
	.string	"S_BON2C"
.LASF1031:
	.string	"S_BON2D"
.LASF336:
	.string	"S_TFOG01"
.LASF337:
	.string	"S_TFOG02"
.LASF155:
	.string	"SPR_LAUN"
.LASF392:
	.string	"S_POSS_PAIN"
.LASF727:
	.string	"S_BRBALL1"
.LASF728:
	.string	"S_BRBALL2"
.LASF1189:
	.string	"MT_SMOKE"
.LASF1203:
	.string	"MT_CYBORG"
.LASF1340:
	.string	"damage"
.LASF432:
	.string	"S_SPOS_XDIE1"
.LASF433:
	.string	"S_SPOS_XDIE2"
.LASF434:
	.string	"S_SPOS_XDIE3"
.LASF435:
	.string	"S_SPOS_XDIE4"
.LASF436:
	.string	"S_SPOS_XDIE5"
.LASF437:
	.string	"S_SPOS_XDIE6"
.LASF438:
	.string	"S_SPOS_XDIE7"
.LASF439:
	.string	"S_SPOS_XDIE8"
.LASF440:
	.string	"S_SPOS_XDIE9"
.LASF1498:
	.string	"sfx_vipain"
.LASF1346:
	.string	"mobj_s"
.LASF1406:
	.string	"mobj_t"
.LASF1033:
	.string	"S_BKEY"
.LASF1456:
	.string	"silentCrushAndRaise"
.LASF36:
	.string	"pw_invisibility"
.LASF120:
	.string	"SPR_ARM1"
.LASF121:
	.string	"SPR_ARM2"
.LASF1185:
	.string	"MT_VILE"
.LASF1489:
	.string	"sfx_pstop"
.LASF13:
	.string	"it_blueskull"
.LASF1418:
	.string	"soundorg"
.LASF280:
	.string	"S_PLASMADOWN"
.LASF592:
	.string	"S_FATT_PAIN2"
.LASF1574:
	.string	"sfx_keendt"
.LASF990:
	.string	"S_BRAINEYESEE"
.LASF1434:
	.string	"slopetype_t"
.LASF527:
	.string	"S_SKEL_STND2"
.LASF880:
	.string	"S_CYBER_STND2"
.LASF1181:
	.string	"state_t"
.LASF724:
	.string	"S_HEAD_RAISE4"
.LASF950:
	.string	"S_SSWV_DIE2"
.LASF1463:
	.string	"ceiling_t"
.LASF406:
	.string	"S_POSS_XDIE8"
.LASF1080:
	.string	"S_CELP"
.LASF1122:
	.string	"S_EVILEYE"
.LASF1148:
	.string	"S_GTORCHSHRT2"
.LASF1149:
	.string	"S_GTORCHSHRT3"
.LASF1150:
	.string	"S_GTORCHSHRT4"
.LASF1377:
	.string	"viewheight"
.LASF1350:
	.string	"bnext"
.LASF1452:
	.string	"raiseToHighest"
.LASF1568:
	.string	"sfx_bosdth"
.LASF581:
	.string	"S_FATT_ATK1"
.LASF114:
	.string	"SPR_CYBR"
.LASF582:
	.string	"S_FATT_ATK2"
.LASF485:
	.string	"S_VILE_DIE10"
.LASF75:
	.string	"SPR_MISF"
.LASF74:
	.string	"SPR_MISG"
.LASF87:
	.string	"SPR_MISL"
.LASF1039:
	.string	"S_BSKULL"
.LASF118:
	.string	"SPR_BBRN"
.LASF460:
	.string	"S_VILE_ATK1"
.LASF461:
	.string	"S_VILE_ATK2"
.LASF462:
	.string	"S_VILE_ATK3"
.LASF463:
	.string	"S_VILE_ATK4"
.LASF464:
	.string	"S_VILE_ATK5"
.LASF465:
	.string	"S_VILE_ATK6"
.LASF466:
	.string	"S_VILE_ATK7"
.LASF207:
	.string	"S_PUNCH"
.LASF468:
	.string	"S_VILE_ATK9"
.LASF189:
	.string	"SPR_SMBT"
.LASF1554:
	.string	"sfx_hoof"
.LASF763:
	.string	"S_BOS2_RUN1"
.LASF764:
	.string	"S_BOS2_RUN2"
.LASF765:
	.string	"S_BOS2_RUN3"
.LASF766:
	.string	"S_BOS2_RUN4"
.LASF767:
	.string	"S_BOS2_RUN5"
.LASF768:
	.string	"S_BOS2_RUN6"
.LASF769:
	.string	"S_BOS2_RUN7"
.LASF770:
	.string	"S_BOS2_RUN8"
.LASF1413:
	.string	"lightlevel"
.LASF180:
	.string	"SPR_TRE1"
.LASF181:
	.string	"SPR_TRE2"
.LASF837:
	.string	"S_BSPI_STND"
.LASF1485:
	.string	"sfx_rxplod"
.LASF1331:
	.string	"meleestate"
.LASF1388:
	.string	"ammo"
.LASF627:
	.string	"S_CPOS_DIE1"
.LASF188:
	.string	"SPR_TRED"
.LASF81:
	.string	"SPR_BLUD"
.LASF583:
	.string	"S_FATT_ATK3"
.LASF584:
	.string	"S_FATT_ATK4"
.LASF585:
	.string	"S_FATT_ATK5"
.LASF586:
	.string	"S_FATT_ATK6"
.LASF587:
	.string	"S_FATT_ATK7"
.LASF588:
	.string	"S_FATT_ATK8"
.LASF589:
	.string	"S_FATT_ATK9"
.LASF91:
	.string	"SPR_TFOG"
.LASF295:
	.string	"S_BLOOD1"
.LASF296:
	.string	"S_BLOOD2"
.LASF297:
	.string	"S_BLOOD3"
.LASF1179:
	.string	"misc1"
.LASF1180:
	.string	"misc2"
.LASF1496:
	.string	"sfx_dmpain"
.LASF1442:
	.string	"angleturn"
.LASF1087:
	.string	"S_LAUN"
.LASF347:
	.string	"S_IFOG"
.LASF94:
	.string	"SPR_POSS"
.LASF99:
	.string	"SPR_FBXP"
.LASF896:
	.string	"S_CYBER_DIE1"
.LASF897:
	.string	"S_CYBER_DIE2"
.LASF898:
	.string	"S_CYBER_DIE3"
.LASF899:
	.string	"S_CYBER_DIE4"
.LASF900:
	.string	"S_CYBER_DIE5"
.LASF901:
	.string	"S_CYBER_DIE6"
.LASF902:
	.string	"S_CYBER_DIE7"
.LASF774:
	.string	"S_BOS2_PAIN"
.LASF904:
	.string	"S_CYBER_DIE9"
.LASF1368:
	.string	"spawnpoint"
.LASF1174:
	.string	"sprite"
.LASF1252:
	.string	"MT_MISC23"
.LASF1465:
	.string	"activeceilings"
.LASF1117:
	.string	"S_CANDELABRA"
.LASF457:
	.string	"S_VILE_RUN10"
.LASF458:
	.string	"S_VILE_RUN11"
.LASF459:
	.string	"S_VILE_RUN12"
.LASF1077:
	.string	"S_ROCK"
.LASF226:
	.string	"S_SGUN1"
.LASF227:
	.string	"S_SGUN2"
.LASF228:
	.string	"S_SGUN3"
.LASF229:
	.string	"S_SGUN4"
.LASF230:
	.string	"S_SGUN5"
.LASF231:
	.string	"S_SGUN6"
.LASF232:
	.string	"S_SGUN7"
.LASF233:
	.string	"S_SGUN8"
.LASF234:
	.string	"S_SGUN9"
.LASF1321:
	.string	"doomednum"
.LASF223:
	.string	"S_SGUN"
.LASF1113:
	.string	"S_SHRTGRNCOL"
.LASF1572:
	.string	"sfx_ssdth"
.LASF1562:
	.string	"sfx_flamst"
.LASF798:
	.string	"S_SKULL_PAIN"
.LASF1210:
	.string	"MT_SPAWNSHOT"
.LASF522:
	.string	"S_TRACER2"
.LASF1121:
	.string	"S_TECHPILLAR"
.LASF526:
	.string	"S_SKEL_STND"
.LASF681:
	.string	"S_SARG_STND2"
.LASF1555:
	.string	"sfx_metal"
.LASF427:
	.string	"S_SPOS_DIE1"
.LASF428:
	.string	"S_SPOS_DIE2"
.LASF429:
	.string	"S_SPOS_DIE3"
.LASF430:
	.string	"S_SPOS_DIE4"
.LASF431:
	.string	"S_SPOS_DIE5"
.LASF1449:
	.string	"PST_REBORN"
.LASF1522:
	.string	"sfx_sgtatk"
.LASF1156:
	.string	"S_HANGBNOBRAIN"
.LASF1519:
	.string	"sfx_mansit"
.LASF690:
	.string	"S_SARG_ATK1"
.LASF691:
	.string	"S_SARG_ATK2"
.LASF692:
	.string	"S_SARG_ATK3"
.LASF281:
	.string	"S_PLASMAUP"
.LASF1176:
	.string	"tics"
.LASF1037:
	.string	"S_YKEY"
.LASF1493:
	.string	"sfx_swtchn"
.LASF1336:
	.string	"speed"
.LASF250:
	.string	"S_DSNR1"
.LASF919:
	.string	"S_PAIN_DIE1"
.LASF1494:
	.string	"sfx_swtchx"
.LASF449:
	.string	"S_VILE_RUN2"
.LASF1586:
	.string	"T_MovePlane"
.LASF1560:
	.string	"sfx_itmbk"
.LASF1167:
	.string	"S_TECHLAMP4"
.LASF613:
	.string	"S_CPOS_RUN1"
.LASF614:
	.string	"S_CPOS_RUN2"
.LASF615:
	.string	"S_CPOS_RUN3"
.LASF616:
	.string	"S_CPOS_RUN4"
.LASF47:
	.string	"actionf_p1"
.LASF48:
	.string	"actionf_p2"
.LASF151:
	.string	"SPR_BPAK"
.LASF620:
	.string	"S_CPOS_RUN8"
.LASF1017:
	.string	"S_BEXP5"
.LASF1577:
	.string	"sfx_skeatk"
.LASF64:
	.string	"mapthing_t"
.LASF382:
	.string	"S_POSS_RUN2"
.LASF383:
	.string	"S_POSS_RUN3"
.LASF384:
	.string	"S_POSS_RUN4"
.LASF701:
	.string	"S_SARG_RAISE1"
.LASF385:
	.string	"S_POSS_RUN5"
.LASF49:
	.string	"acp1"
.LASF50:
	.string	"acp2"
.LASF705:
	.string	"S_SARG_RAISE5"
.LASF706:
	.string	"S_SARG_RAISE6"
.LASF1529:
	.string	"sfx_podth1"
.LASF1530:
	.string	"sfx_podth2"
.LASF1531:
	.string	"sfx_podth3"
.LASF1285:
	.string	"MT_MISC53"
.LASF1579:
	.string	"NUMSFX"
.LASF190:
	.string	"SPR_SMGT"
.LASF981:
	.string	"S_KEENPAIN"
.LASF329:
	.string	"S_BFGEXP2"
.LASF330:
	.string	"S_BFGEXP3"
.LASF331:
	.string	"S_BFGEXP4"
.LASF260:
	.string	"S_CHAINFLASH1"
.LASF261:
	.string	"S_CHAINFLASH2"
.LASF216:
	.string	"S_PISTOLDOWN"
.LASF1588:
	.string	"line"
.LASF881:
	.string	"S_CYBER_RUN1"
.LASF882:
	.string	"S_CYBER_RUN2"
.LASF883:
	.string	"S_CYBER_RUN3"
.LASF884:
	.string	"S_CYBER_RUN4"
.LASF885:
	.string	"S_CYBER_RUN5"
.LASF886:
	.string	"S_CYBER_RUN6"
.LASF887:
	.string	"S_CYBER_RUN7"
.LASF888:
	.string	"S_CYBER_RUN8"
.LASF1325:
	.string	"seesound"
.LASF1068:
	.string	"S_PMAP2"
.LASF1069:
	.string	"S_PMAP3"
.LASF1070:
	.string	"S_PMAP4"
.LASF1071:
	.string	"S_PMAP5"
.LASF1072:
	.string	"S_PMAP6"
.LASF1399:
	.string	"bonuscount"
.LASF799:
	.string	"S_SKULL_PAIN2"
.LASF1329:
	.string	"painchance"
.LASF625:
	.string	"S_CPOS_PAIN"
.LASF1410:
	.string	"ceilingheight"
.LASF104:
	.string	"SPR_SARG"
.LASF930:
	.string	"S_PAIN_RAISE6"
.LASF1420:
	.string	"specialdata"
.LASF1268:
	.string	"MT_MISC36"
.LASF734:
	.string	"S_BOSS_RUN1"
.LASF735:
	.string	"S_BOSS_RUN2"
.LASF736:
	.string	"S_BOSS_RUN3"
.LASF737:
	.string	"S_BOSS_RUN4"
.LASF738:
	.string	"S_BOSS_RUN5"
.LASF256:
	.string	"S_CHAINUP"
.LASF1596:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1394:
	.string	"killcount"
.LASF875:
	.string	"S_ARACH_PLEX2"
.LASF1119:
	.string	"S_TORCHTREE"
.LASF931:
	.string	"S_SSWV_STND"
.LASF877:
	.string	"S_ARACH_PLEX4"
.LASF978:
	.string	"S_COMMKEEN10"
.LASF979:
	.string	"S_COMMKEEN11"
.LASF980:
	.string	"S_COMMKEEN12"
.LASF895:
	.string	"S_CYBER_PAIN"
.LASF414:
	.string	"S_SPOS_RUN1"
.LASF172:
	.string	"SPR_SMIT"
.LASF59:
	.string	"boolean"
.LASF417:
	.string	"S_SPOS_RUN4"
.LASF418:
	.string	"S_SPOS_RUN5"
.LASF109:
	.string	"SPR_SKUL"
.LASF420:
	.string	"S_SPOS_RUN7"
.LASF421:
	.string	"S_SPOS_RUN8"
.LASF1078:
	.string	"S_BROK"
.LASF1323:
	.string	"spawnhealth"
.LASF1538:
	.string	"sfx_cybdth"
.LASF208:
	.string	"S_PUNCHDOWN"
.LASF874:
	.string	"S_ARACH_PLEX"
.LASF1135:
	.string	"S_GREENTORCH"
.LASF25:
	.string	"wp_supershotgun"
.LASF274:
	.string	"S_SAWDOWN"
.LASF1483:
	.string	"sfx_sawhit"
.LASF1482:
	.string	"sfx_sawful"
.LASF1173:
	.string	"statenum_t"
.LASF1213:
	.string	"MT_TROOPSHOT"
.LASF1198:
	.string	"MT_BRUISERSHOT"
.LASF1550:
	.string	"sfx_vilact"
.LASF1446:
	.string	"ticcmd_t"
.LASF1318:
	.string	"MT_MISC86"
.LASF1436:
	.string	"ps_weapon"
.LASF1515:
	.string	"sfx_spisit"
.LASF362:
	.string	"S_PLAY_PAIN2"
.LASF1481:
	.string	"sfx_sawidl"
.LASF757:
	.string	"S_BOSS_RAISE4"
.LASF758:
	.string	"S_BOSS_RAISE5"
.LASF1175:
	.string	"frame"
.LASF1591:
	.string	"P_AddActiveCeiling"
.LASF101:
	.string	"SPR_MANF"
.LASF612:
	.string	"S_CPOS_STND2"
.LASF1548:
	.string	"sfx_bspact"
.LASF425:
	.string	"S_SPOS_PAIN"
.LASF19:
	.string	"wp_shotgun"
.LASF393:
	.string	"S_POSS_PAIN2"
.LASF1219:
	.string	"MT_PUFF"
.LASF265:
	.string	"S_MISSILE1"
.LASF266:
	.string	"S_MISSILE2"
.LASF267:
	.string	"S_MISSILE3"
.LASF641:
	.string	"S_CPOS_RAISE2"
.LASF642:
	.string	"S_CPOS_RAISE3"
.LASF643:
	.string	"S_CPOS_RAISE4"
.LASF1404:
	.string	"psprites"
.LASF1085:
	.string	"S_MGUN"
.LASF1197:
	.string	"MT_BRUISER"
.LASF150:
	.string	"SPR_SBOX"
.LASF1396:
	.string	"secretcount"
.LASF1320:
	.string	"mobjtype_t"
.LASF1334:
	.string	"xdeathstate"
.LASF1381:
	.string	"powers"
.LASF794:
	.string	"S_SKULL_ATK1"
.LASF795:
	.string	"S_SKULL_ATK2"
.LASF796:
	.string	"S_SKULL_ATK3"
.LASF797:
	.string	"S_SKULL_ATK4"
.LASF775:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1199:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF1441:
	.string	"sidemove"
.LASF1341:
	.string	"activesound"
.LASF1590:
	.string	"P_RemoveActiveCeiling"
.LASF426:
	.string	"S_SPOS_PAIN2"
.LASF1553:
	.string	"sfx_punch"
.LASF590:
	.string	"S_FATT_ATK10"
.LASF187:
	.string	"SPR_TGRN"
.LASF1244:
	.string	"MT_MEGA"
.LASF89:
	.string	"SPR_BFE1"
.LASF90:
	.string	"SPR_BFE2"
.LASF1419:
	.string	"thinglist"
.LASF1278:
	.string	"MT_MISC46"
.LASF1206:
	.string	"MT_KEEN"
.LASF1417:
	.string	"blockbox"
.LASF991:
	.string	"S_BRAINEYE1"
.LASF647:
	.string	"S_TROO_STND"
.LASF594:
	.string	"S_FATT_DIE2"
.LASF285:
	.string	"S_PLASMAFLASH2"
.LASF43:
	.string	"weapontype_t"
.LASF1444:
	.string	"chatchar"
.LASF338:
	.string	"S_TFOG2"
.LASF339:
	.string	"S_TFOG3"
.LASF340:
	.string	"S_TFOG4"
.LASF341:
	.string	"S_TFOG5"
.LASF342:
	.string	"S_TFOG6"
.LASF343:
	.string	"S_TFOG7"
.LASF344:
	.string	"S_TFOG8"
.LASF345:
	.string	"S_TFOG9"
.LASF760:
	.string	"S_BOSS_RAISE7"
.LASF1390:
	.string	"attackdown"
.LASF65:
	.string	"SPR_TROO"
.LASF76:
	.string	"SPR_SAWG"
.LASF1511:
	.string	"sfx_sgtsit"
.LASF125:
	.string	"SPR_BON1"
.LASF126:
	.string	"SPR_BON2"
.LASF12:
	.string	"it_redcard"
.LASF1114:
	.string	"S_TALLREDCOL"
.LASF1360:
	.string	"state"
.LASF1089:
	.string	"S_SHOT"
.LASF945:
	.string	"S_SSWV_ATK5"
.LASF1094:
	.string	"S_BLOODYTWITCH2"
.LASF1095:
	.string	"S_BLOODYTWITCH3"
.LASF1096:
	.string	"S_BLOODYTWITCH4"
.LASF835:
	.string	"S_SPID_DIE10"
.LASF836:
	.string	"S_SPID_DIE11"
.LASF1382:
	.string	"cards"
.LASF182:
	.string	"SPR_ELEC"
.LASF983:
	.string	"S_BRAIN"
.LASF1589:
	.string	"P_ActivateInStasisCeiling"
.LASF1201:
	.string	"MT_SPIDER"
.LASF1066:
	.string	"S_SUIT"
.LASF80:
	.string	"SPR_BFGF"
.LASF79:
	.string	"SPR_BFGG"
.LASF1454:
	.string	"crushAndRaise"
.LASF906:
	.string	"S_PAIN_STND"
.LASF1513:
	.string	"sfx_brssit"
.LASF322:
	.string	"S_BFGLAND"
.LASF1012:
	.string	"S_BAR2"
.LASF1386:
	.string	"pendingweapon"
.LASF55:
	.string	"function"
.LASF1556:
	.string	"sfx_chgun"
.LASF29:
	.string	"am_shell"
.LASF1358:
	.string	"validcount"
.LASF1397:
	.string	"message"
.LASF602:
	.string	"S_FATT_DIE10"
.LASF16:
	.string	"NUMCARDS"
.LASF1139:
	.string	"S_REDTORCH"
.LASF1217:
	.string	"MT_BFG"
.LASF386:
	.string	"S_POSS_RUN6"
.LASF1524:
	.string	"sfx_vilatk"
.LASF96:
	.string	"SPR_VILE"
.LASF1559:
	.string	"sfx_bdcls"
.LASF1220:
	.string	"MT_BLOOD"
.LASF215:
	.string	"S_PISTOL"
.LASF58:
	.string	"true"
.LASF447:
	.string	"S_VILE_STND2"
.LASF865:
	.string	"S_BSPI_RAISE1"
.LASF866:
	.string	"S_BSPI_RAISE2"
.LASF867:
	.string	"S_BSPI_RAISE3"
.LASF868:
	.string	"S_BSPI_RAISE4"
.LASF869:
	.string	"S_BSPI_RAISE5"
.LASF870:
	.string	"S_BSPI_RAISE6"
.LASF871:
	.string	"S_BSPI_RAISE7"
.LASF1355:
	.string	"momx"
.LASF1356:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF954:
	.string	"S_SSWV_XDIE1"
.LASF955:
	.string	"S_SSWV_XDIE2"
.LASF956:
	.string	"S_SSWV_XDIE3"
.LASF957:
	.string	"S_SSWV_XDIE4"
.LASF958:
	.string	"S_SSWV_XDIE5"
.LASF959:
	.string	"S_SSWV_XDIE6"
.LASF960:
	.string	"S_SSWV_XDIE7"
.LASF961:
	.string	"S_SSWV_XDIE8"
.LASF962:
	.string	"S_SSWV_XDIE9"
.LASF252:
	.string	"S_DSGUNFLASH1"
.LASF253:
	.string	"S_DSGUNFLASH2"
.LASF1251:
	.string	"MT_MISC22"
.LASF1405:
	.string	"didsecret"
.LASF510:
	.string	"S_FIRE25"
.LASF604:
	.string	"S_FATT_RAISE2"
.LASF1287:
	.string	"MT_MISC55"
.LASF1378:
	.string	"deltaviewheight"
.LASF14:
	.string	"it_yellowskull"
.LASF1042:
	.string	"S_RSKULL2"
.LASF1369:
	.string	"tracer"
.LASF817:
	.string	"S_SPID_RUN10"
.LASF818:
	.string	"S_SPID_RUN11"
.LASF819:
	.string	"S_SPID_RUN12"
.LASF1592:
	.string	"EV_CeilingCrushStop"
.LASF1587:
	.string	"rcsid"
.LASF1503:
	.string	"sfx_wpnup"
.LASF1343:
	.string	"raisestate"
.LASF268:
	.string	"S_MISSILEFLASH1"
.LASF269:
	.string	"S_MISSILEFLASH2"
.LASF270:
	.string	"S_MISSILEFLASH3"
.LASF271:
	.string	"S_MISSILEFLASH4"
.LASF131:
	.string	"SPR_RSKU"
.LASF1523:
	.string	"sfx_skepch"
.LASF52:
	.string	"think_t"
.LASF628:
	.string	"S_CPOS_DIE2"
.LASF629:
	.string	"S_CPOS_DIE3"
.LASF630:
	.string	"S_CPOS_DIE4"
.LASF631:
	.string	"S_CPOS_DIE5"
.LASF632:
	.string	"S_CPOS_DIE6"
.LASF633:
	.string	"S_CPOS_DIE7"
.LASF1074:
	.string	"S_PVIS2"
.LASF1212:
	.string	"MT_BARREL"
.LASF806:
	.string	"S_SPID_STND"
.LASF578:
	.string	"S_FATT_RUN10"
.LASF579:
	.string	"S_FATT_RUN11"
.LASF580:
	.string	"S_FATT_RUN12"
.LASF1204:
	.string	"MT_PAIN"
.LASF1132:
	.string	"S_BLUETORCH2"
.LASF1344:
	.string	"mobjinfo_t"
.LASF1133:
	.string	"S_BLUETORCH3"
.LASF1506:
	.string	"sfx_posit1"
.LASF1134:
	.string	"S_BLUETORCH4"
.LASF191:
	.string	"SPR_SMRT"
.LASF1508:
	.string	"sfx_posit3"
.LASF293:
	.string	"S_BFGFLASH1"
.LASF294:
	.string	"S_BFGFLASH2"
.LASF827:
	.string	"S_SPID_DIE2"
.LASF108:
	.string	"SPR_BOS2"
.LASF830:
	.string	"S_SPID_DIE5"
.LASF831:
	.string	"S_SPID_DIE6"
.LASF1566:
	.string	"sfx_bossit"
.LASF832:
	.string	"S_SPID_DIE7"
.LASF833:
	.string	"S_SPID_DIE8"
.LASF1123:
	.string	"S_EVILEYE2"
.LASF1124:
	.string	"S_EVILEYE3"
.LASF1125:
	.string	"S_EVILEYE4"
.LASF298:
	.string	"S_PUFF1"
.LASF299:
	.string	"S_PUFF2"
.LASF300:
	.string	"S_PUFF3"
.LASF119:
	.string	"SPR_BOSF"
.LASF1422:
	.string	"lines"
.LASF107:
	.string	"SPR_BOSS"
.LASF1216:
	.string	"MT_PLASMA"
.LASF1578:
	.string	"sfx_radio"
.LASF852:
	.string	"S_BSPI_ATK1"
.LASF853:
	.string	"S_BSPI_ATK2"
.LASF854:
	.string	"S_BSPI_ATK3"
.LASF855:
	.string	"S_BSPI_ATK4"
.LASF1034:
	.string	"S_BKEY2"
.LASF26:
	.string	"NUMWEAPONS"
.LASF839:
	.string	"S_BSPI_SIGHT"
.LASF1495:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF841:
	.string	"S_BSPI_RUN2"
.LASF985:
	.string	"S_BRAIN_DIE1"
.LASF986:
	.string	"S_BRAIN_DIE2"
.LASF987:
	.string	"S_BRAIN_DIE3"
.LASF988:
	.string	"S_BRAIN_DIE4"
.LASF320:
	.string	"S_BFGSHOT"
.LASF1126:
	.string	"S_FLOATSKULL"
.LASF1467:
	.string	"pastdest"
.LASF476:
	.string	"S_VILE_DIE1"
.LASF477:
	.string	"S_VILE_DIE2"
.LASF478:
	.string	"S_VILE_DIE3"
.LASF479:
	.string	"S_VILE_DIE4"
.LASF480:
	.string	"S_VILE_DIE5"
.LASF481:
	.string	"S_VILE_DIE6"
.LASF482:
	.string	"S_VILE_DIE7"
.LASF483:
	.string	"S_VILE_DIE8"
.LASF484:
	.string	"S_VILE_DIE9"
.LASF1398:
	.string	"damagecount"
.LASF1476:
	.string	"sfx_dbcls"
.LASF160:
	.string	"SPR_SMT2"
.LASF1036:
	.string	"S_RKEY2"
.LASF1007:
	.string	"S_ARM1"
.LASF1009:
	.string	"S_ARM2"
.LASF1102:
	.string	"S_HEADCANDLES"
.LASF138:
	.string	"SPR_PINS"
.LASF732:
	.string	"S_BOSS_STND"
.LASF1547:
	.string	"sfx_dmact"
.LASF712:
	.string	"S_HEAD_PAIN"
.LASF11:
	.string	"it_yellowcard"
.LASF1188:
	.string	"MT_TRACER"
.LASF593:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF595:
	.string	"S_FATT_DIE3"
.LASF596:
	.string	"S_FATT_DIE4"
.LASF597:
	.string	"S_FATT_DIE5"
.LASF598:
	.string	"S_FATT_DIE6"
.LASF599:
	.string	"S_FATT_DIE7"
.LASF600:
	.string	"S_FATT_DIE8"
.LASF601:
	.string	"S_FATT_DIE9"
.LASF668:
	.string	"S_TROO_XDIE2"
.LASF669:
	.string	"S_TROO_XDIE3"
.LASF670:
	.string	"S_TROO_XDIE4"
.LASF671:
	.string	"S_TROO_XDIE5"
.LASF672:
	.string	"S_TROO_XDIE6"
.LASF673:
	.string	"S_TROO_XDIE7"
.LASF674:
	.string	"S_TROO_XDIE8"
.LASF143:
	.string	"SPR_CLIP"
.LASF1115:
	.string	"S_SHRTREDCOL"
.LASF1158:
	.string	"S_HANGTSKULL"
.LASF40:
	.string	"NUMPOWERS"
.LASF943:
	.string	"S_SSWV_ATK3"
.LASF944:
	.string	"S_SSWV_ATK4"
.LASF249:
	.string	"S_DSGUN10"
.LASF1535:
	.string	"sfx_cacdth"
.LASF35:
	.string	"pw_strength"
.LASF177:
	.string	"SPR_CAND"
.LASF1492:
	.string	"sfx_stnmov"
.LASF1194:
	.string	"MT_SERGEANT"
.LASF1487:
	.string	"sfx_firxpl"
.LASF1105:
	.string	"S_LIVESTICK"
.LASF1045:
	.string	"S_STIM"
.LASF30:
	.string	"am_cell"
.LASF10:
	.string	"it_bluecard"
.LASF1353:
	.string	"floorz"
.LASF708:
	.string	"S_HEAD_RUN1"
.LASF363:
	.string	"S_PLAY_DIE1"
.LASF364:
	.string	"S_PLAY_DIE2"
.LASF365:
	.string	"S_PLAY_DIE3"
.LASF366:
	.string	"S_PLAY_DIE4"
.LASF367:
	.string	"S_PLAY_DIE5"
.LASF368:
	.string	"S_PLAY_DIE6"
.LASF369:
	.string	"S_PLAY_DIE7"
.LASF379:
	.string	"S_POSS_STND"
.LASF335:
	.string	"S_TFOG"
.LASF1272:
	.string	"MT_MISC40"
.LASF1273:
	.string	"MT_MISC41"
.LASF1370:
	.string	"subsector_s"
.LASF695:
	.string	"S_SARG_DIE1"
.LASF696:
	.string	"S_SARG_DIE2"
.LASF697:
	.string	"S_SARG_DIE3"
.LASF698:
	.string	"S_SARG_DIE4"
.LASF996:
	.string	"S_SPAWNFIRE1"
.LASF997:
	.string	"S_SPAWNFIRE2"
.LASF998:
	.string	"S_SPAWNFIRE3"
.LASF999:
	.string	"S_SPAWNFIRE4"
.LASF1000:
	.string	"S_SPAWNFIRE5"
.LASF1001:
	.string	"S_SPAWNFIRE6"
.LASF1002:
	.string	"S_SPAWNFIRE7"
.LASF1003:
	.string	"S_SPAWNFIRE8"
.LASF667:
	.string	"S_TROO_XDIE1"
.LASF1443:
	.string	"consistancy"
.LASF1371:
	.string	"sector"
.LASF1160:
	.string	"S_HANGTNOBRAIN"
.LASF315:
	.string	"S_PLASEXP2"
.LASF316:
	.string	"S_PLASEXP3"
.LASF317:
	.string	"S_PLASEXP4"
.LASF318:
	.string	"S_PLASEXP5"
.LASF23:
	.string	"wp_bfg"
.LASF1144:
	.string	"S_BTORCHSHRT2"
.LASF1145:
	.string	"S_BTORCHSHRT3"
.LASF1146:
	.string	"S_BTORCHSHRT4"
.LASF1455:
	.string	"fastCrushAndRaise"
.LASF1542:
	.string	"sfx_kntdth"
.LASF448:
	.string	"S_VILE_RUN1"
.LASF238:
	.string	"S_DSGUNDOWN"
.LASF450:
	.string	"S_VILE_RUN3"
.LASF451:
	.string	"S_VILE_RUN4"
.LASF452:
	.string	"S_VILE_RUN5"
.LASF453:
	.string	"S_VILE_RUN6"
.LASF454:
	.string	"S_VILE_RUN7"
.LASF455:
	.string	"S_VILE_RUN8"
.LASF456:
	.string	"S_VILE_RUN9"
.LASF699:
	.string	"S_SARG_DIE5"
.LASF700:
	.string	"S_SARG_DIE6"
.LASF1534:
	.string	"sfx_sgtdth"
.LASF1347:
	.string	"thinker"
.LASF1564:
	.string	"sfx_bospit"
.LASF540:
	.string	"S_SKEL_FIST1"
.LASF541:
	.string	"S_SKEL_FIST2"
.LASF542:
	.string	"S_SKEL_FIST3"
.LASF543:
	.string	"S_SKEL_FIST4"
.LASF279:
	.string	"S_PLASMA"
.LASF1058:
	.string	"S_PINS"
.LASF1499:
	.string	"sfx_mnpain"
.LASF1464:
	.string	"sectors"
.LASF1131:
	.string	"S_BLUETORCH"
.LASF569:
	.string	"S_FATT_RUN1"
.LASF570:
	.string	"S_FATT_RUN2"
.LASF571:
	.string	"S_FATT_RUN3"
.LASF572:
	.string	"S_FATT_RUN4"
.LASF37:
	.string	"pw_ironfeet"
.LASF574:
	.string	"S_FATT_RUN6"
.LASF575:
	.string	"S_FATT_RUN7"
.LASF576:
	.string	"S_FATT_RUN8"
.LASF1107:
	.string	"S_MEAT2"
.LASF1108:
	.string	"S_MEAT3"
.LASF1109:
	.string	"S_MEAT4"
.LASF1110:
	.string	"S_MEAT5"
.LASF1520:
	.string	"sfx_pesit"
.LASF222:
	.string	"S_PISTOLFLASH"
.LASF1409:
	.string	"floorheight"
.LASF442:
	.string	"S_SPOS_RAISE2"
.LASF443:
	.string	"S_SPOS_RAISE3"
.LASF444:
	.string	"S_SPOS_RAISE4"
.LASF445:
	.string	"S_SPOS_RAISE5"
.LASF134:
	.string	"SPR_MEDI"
.LASF136:
	.string	"SPR_PINV"
.LASF1509:
	.string	"sfx_bgsit1"
.LASF1510:
	.string	"sfx_bgsit2"
.LASF1544:
	.string	"sfx_skedth"
.LASF1451:
	.string	"lowerToFloor"
.LASF984:
	.string	"S_BRAIN_PAIN"
.LASF255:
	.string	"S_CHAINDOWN"
.LASF474:
	.string	"S_VILE_PAIN"
.LASF521:
	.string	"S_TRACER"
.LASF941:
	.string	"S_SSWV_ATK1"
.LASF942:
	.string	"S_SSWV_ATK2"
.LASF471:
	.string	"S_VILE_HEAL1"
.LASF472:
	.string	"S_VILE_HEAL2"
.LASF473:
	.string	"S_VILE_HEAL3"
.LASF946:
	.string	"S_SSWV_ATK6"
.LASF1363:
	.string	"movecount"
.LASF128:
	.string	"SPR_RKEY"
.LASF1516:
	.string	"sfx_bspsit"
.LASF1092:
	.string	"S_STALAG"
.LASF1584:
	.string	"Z_Malloc"
.LASF1497:
	.string	"sfx_popain"
.LASF807:
	.string	"S_SPID_STND2"
.LASF45:
	.string	"angle_t"
.LASF1412:
	.string	"ceilingpic"
.LASF1093:
	.string	"S_BLOODYTWITCH"
.LASF1162:
	.string	"S_SMALLPOOL"
.LASF1439:
	.string	"pspdef_t"
.LASF1288:
	.string	"MT_MISC56"
.LASF591:
	.string	"S_FATT_PAIN"
.LASF355:
	.string	"S_PLAY_RUN1"
.LASF356:
	.string	"S_PLAY_RUN2"
.LASF357:
	.string	"S_PLAY_RUN3"
.LASF358:
	.string	"S_PLAY_RUN4"
.LASF1083:
	.string	"S_BPAK"
.LASF42:
	.string	"double"
.LASF123:
	.string	"SPR_BEXP"
.LASF1374:
	.string	"player_s"
.LASF1040:
	.string	"S_BSKULL2"
.LASF82:
	.string	"SPR_PUFF"
.LASF969:
	.string	"S_COMMKEEN"
.LASF1488:
	.string	"sfx_pstart"
.LASF1391:
	.string	"usedown"
.LASF761:
	.string	"S_BOS2_STND"
.LASF88:
	.string	"SPR_BFS1"
.LASF992:
	.string	"S_SPAWN1"
.LASF993:
	.string	"S_SPAWN2"
.LASF994:
	.string	"S_SPAWN3"
.LASF995:
	.string	"S_SPAWN4"
.LASF1165:
	.string	"S_TECHLAMP2"
.LASF1166:
	.string	"S_TECHLAMP3"
.LASF24:
	.string	"wp_chainsaw"
.LASF1202:
	.string	"MT_BABY"
.LASF1389:
	.string	"maxammo"
.LASF1561:
	.string	"sfx_flame"
.LASF1106:
	.string	"S_LIVESTICK2"
.LASF1151:
	.string	"S_RTORCHSHRT"
.LASF1248:
	.string	"MT_MISC19"
.LASF110:
	.string	"SPR_SPID"
.LASF707:
	.string	"S_HEAD_STND"
.LASF682:
	.string	"S_SARG_RUN1"
.LASF683:
	.string	"S_SARG_RUN2"
.LASF685:
	.string	"S_SARG_RUN4"
.LASF686:
	.string	"S_SARG_RUN5"
.LASF687:
	.string	"S_SARG_RUN6"
.LASF688:
	.string	"S_SARG_RUN7"
.LASF689:
	.string	"S_SARG_RUN8"
.LASF1226:
	.string	"MT_MISC1"
.LASF1227:
	.string	"MT_MISC2"
.LASF1228:
	.string	"MT_MISC3"
.LASF1229:
	.string	"MT_MISC4"
.LASF1230:
	.string	"MT_MISC5"
.LASF1231:
	.string	"MT_MISC6"
.LASF1232:
	.string	"MT_MISC7"
.LASF1233:
	.string	"MT_MISC8"
.LASF1234:
	.string	"MT_MISC9"
.LASF272:
	.string	"S_SAW"
.LASF139:
	.string	"SPR_MEGA"
.LASF361:
	.string	"S_PLAY_PAIN"
.LASF1525:
	.string	"sfx_claw"
.LASF313:
	.string	"S_PLASBALL2"
.LASF1437:
	.string	"ps_flash"
.LASF1375:
	.string	"playerstate"
.LASF117:
	.string	"SPR_KEEN"
.LASF947:
	.string	"S_SSWV_PAIN"
.LASF1328:
	.string	"painstate"
.LASF982:
	.string	"S_KEENPAIN2"
.LASF39:
	.string	"pw_infrared"
.LASF469:
	.string	"S_VILE_ATK10"
.LASF470:
	.string	"S_VILE_ATK11"
.LASF948:
	.string	"S_SSWV_PAIN2"
.LASF1312:
	.string	"MT_MISC80"
.LASF1335:
	.string	"deathsound"
.LASF1022:
	.string	"S_BON1A"
.LASF1023:
	.string	"S_BON1B"
.LASF1024:
	.string	"S_BON1C"
.LASF1025:
	.string	"S_BON1D"
.LASF1026:
	.string	"S_BON1E"
.LASF1469:
	.string	"leveltime"
.LASF1429:
	.string	"sector_t"
.LASF1466:
	.string	"crushed"
.LASF137:
	.string	"SPR_PSTR"
.LASF1250:
	.string	"MT_MISC21"
.LASF693:
	.string	"S_SARG_PAIN"
.LASF1245:
	.string	"MT_CLIP"
.LASF152:
	.string	"SPR_BFUG"
.LASF1300:
	.string	"MT_MISC68"
.LASF1018:
	.string	"S_BBAR1"
.LASF1019:
	.string	"S_BBAR2"
.LASF1020:
	.string	"S_BBAR3"
.LASF206:
	.string	"S_LIGHTDONE"
.LASF857:
	.string	"S_BSPI_PAIN2"
.LASF1383:
	.string	"backpack"
.LASF657:
	.string	"S_TROO_ATK1"
.LASF658:
	.string	"S_TROO_ATK2"
.LASF659:
	.string	"S_TROO_ATK3"
.LASF801:
	.string	"S_SKULL_DIE2"
.LASF802:
	.string	"S_SKULL_DIE3"
.LASF803:
	.string	"S_SKULL_DIE4"
.LASF804:
	.string	"S_SKULL_DIE5"
.LASF805:
	.string	"S_SKULL_DIE6"
.LASF156:
	.string	"SPR_PLAS"
.LASF1028:
	.string	"S_BON2A"
.LASF1029:
	.string	"S_BON2B"
.LASF69:
	.string	"SPR_PISF"
.LASF68:
	.string	"SPR_PISG"
.LASF1032:
	.string	"S_BON2E"
.LASF1255:
	.string	"MT_CHAINGUN"
.LASF304:
	.string	"S_TBALLX1"
.LASF305:
	.string	"S_TBALLX2"
.LASF306:
	.string	"S_TBALLX3"
.LASF27:
	.string	"wp_nochange"
.LASF1192:
	.string	"MT_CHAINGUY"
.LASF1408:
	.string	"degenmobj_t"
.LASF1507:
	.string	"sfx_posit2"
.LASF1440:
	.string	"forwardmove"
.LASF800:
	.string	"S_SKULL_DIE1"
.LASF1448:
	.string	"PST_DEAD"
.LASF1163:
	.string	"S_BRAINSTEM"
.LASF968:
	.string	"S_KEENSTND"
.LASF93:
	.string	"SPR_PLAY"
.LASF1385:
	.string	"readyweapon"
.LASF1512:
	.string	"sfx_cacsit"
.LASF1521:
	.string	"sfx_sklatk"
.LASF1103:
	.string	"S_HEADCANDLES2"
.LASF1222:
	.string	"MT_IFOG"
.LASF184:
	.string	"SPR_FSKU"
.LASF1567:
	.string	"sfx_bospn"
.LASF419:
	.string	"S_SPOS_RUN6"
.LASF275:
	.string	"S_SAWUP"
.LASF1008:
	.string	"S_ARM1A"
.LASF611:
	.string	"S_CPOS_STND"
.LASF1263:
	.string	"MT_MISC31"
.LASF1357:
	.string	"momz"
.LASF1082:
	.string	"S_SBOX"
.LASF1415:
	.string	"soundtraversed"
.LASF1266:
	.string	"MT_MISC34"
.LASF1425:
	.string	"bbox"
.LASF314:
	.string	"S_PLASEXP"
.LASF1269:
	.string	"MT_MISC37"
.LASF1501:
	.string	"sfx_slop"
.LASF1098:
	.string	"S_DEADBOTTOM"
.LASF1558:
	.string	"sfx_bdopn"
.LASF1155:
	.string	"S_HANGNOGUTS"
.LASF1327:
	.string	"attacksound"
.LASF1059:
	.string	"S_PINS2"
.LASF1060:
	.string	"S_PINS3"
.LASF1061:
	.string	"S_PINS4"
.LASF913:
	.string	"S_PAIN_ATK1"
.LASF914:
	.string	"S_PAIN_ATK2"
.LASF915:
	.string	"S_PAIN_ATK3"
.LASF916:
	.string	"S_PAIN_ATK4"
.LASF225:
	.string	"S_SGUNUP"
.LASF1427:
	.string	"frontsector"
.LASF178:
	.string	"SPR_CBRA"
.LASF1333:
	.string	"deathstate"
.LASF1010:
	.string	"S_ARM2A"
.LASF879:
	.string	"S_CYBER_STND"
.LASF1038:
	.string	"S_YKEY2"
.LASF488:
	.string	"S_FIRE3"
.LASF1326:
	.string	"reactiontime"
.LASF493:
	.string	"S_FIRE8"
.LASF733:
	.string	"S_BOSS_STND2"
.LASF1551:
	.string	"sfx_noway"
.LASF1349:
	.string	"sprev"
.LASF276:
	.string	"S_SAW1"
.LASF277:
	.string	"S_SAW2"
.LASF278:
	.string	"S_SAW3"
.LASF1021:
	.string	"S_BON1"
.LASF1027:
	.string	"S_BON2"
.LASF1366:
	.string	"player"
.LASF273:
	.string	"S_SAWB"
.LASF661:
	.string	"S_TROO_PAIN2"
.LASF1208:
	.string	"MT_BOSSSPIT"
.LASF486:
	.string	"S_FIRE1"
.LASF487:
	.string	"S_FIRE2"
.LASF44:
	.string	"fixed_t"
.LASF489:
	.string	"S_FIRE4"
.LASF490:
	.string	"S_FIRE5"
.LASF491:
	.string	"S_FIRE6"
.LASF492:
	.string	"S_FIRE7"
.LASF146:
	.string	"SPR_BROK"
.LASF494:
	.string	"S_FIRE9"
.LASF1276:
	.string	"MT_MISC44"
.LASF1277:
	.string	"MT_MISC45"
.LASF1079:
	.string	"S_CELL"
.LASF1279:
	.string	"MT_MISC47"
.LASF144:
	.string	"SPR_AMMO"
.LASF1280:
	.string	"MT_MISC48"
.LASF1281:
	.string	"MT_MISC49"
.LASF792:
	.string	"S_SKULL_RUN1"
.LASF793:
	.string	"S_SKULL_RUN2"
.LASF1159:
	.string	"S_HANGTLOOKUP"
.LASF1461:
	.string	"direction"
.LASF254:
	.string	"S_CHAIN"
.LASF284:
	.string	"S_PLASMAFLASH1"
.LASF240:
	.string	"S_DSGUN1"
.LASF241:
	.string	"S_DSGUN2"
.LASF135:
	.string	"SPR_SOUL"
.LASF95:
	.string	"SPR_SPOS"
.LASF244:
	.string	"S_DSGUN5"
.LASF245:
	.string	"S_DSGUN6"
.LASF246:
	.string	"S_DSGUN7"
.LASF247:
	.string	"S_DSGUN8"
.LASF248:
	.string	"S_DSGUN9"
.LASF412:
	.string	"S_SPOS_STND"
.LASF115:
	.string	"SPR_PAIN"
.LASF640:
	.string	"S_CPOS_RAISE1"
.LASF1384:
	.string	"frags"
.LASF1541:
	.string	"sfx_vildth"
.LASF1379:
	.string	"armorpoints"
.LASF1445:
	.string	"buttons"
.LASF289:
	.string	"S_BFG1"
.LASF290:
	.string	"S_BFG2"
.LASF291:
	.string	"S_BFG3"
.LASF292:
	.string	"S_BFG4"
.LASF204:
	.string	"spritenum_t"
.LASF251:
	.string	"S_DSNR2"
.LASF791:
	.string	"S_SKULL_STND2"
.LASF1054:
	.string	"S_PINV2"
.LASF1055:
	.string	"S_PINV3"
.LASF684:
	.string	"S_SARG_RUN3"
.LASF1169:
	.string	"S_TECH2LAMP2"
.LASF1170:
	.string	"S_TECH2LAMP3"
.LASF1171:
	.string	"S_TECH2LAMP4"
.LASF1423:
	.string	"line_s"
.LASF67:
	.string	"SPR_PUNG"
.LASF635:
	.string	"S_CPOS_XDIE2"
.LASF636:
	.string	"S_CPOS_XDIE3"
.LASF637:
	.string	"S_CPOS_XDIE4"
.LASF638:
	.string	"S_CPOS_XDIE5"
.LASF639:
	.string	"S_CPOS_XDIE6"
.LASF820:
	.string	"S_SPID_ATK1"
.LASF821:
	.string	"S_SPID_ATK2"
.LASF822:
	.string	"S_SPID_ATK3"
.LASF823:
	.string	"S_SPID_ATK4"
.LASF544:
	.string	"S_SKEL_MISS1"
.LASF545:
	.string	"S_SKEL_MISS2"
.LASF546:
	.string	"S_SKEL_MISS3"
.LASF547:
	.string	"S_SKEL_MISS4"
.LASF301:
	.string	"S_PUFF4"
.LASF1041:
	.string	"S_RSKULL"
.LASF873:
	.string	"S_ARACH_PLAZ2"
.LASF1282:
	.string	"MT_MISC50"
.LASF1582:
	.string	"P_RemoveThinker"
.LASF721:
	.string	"S_HEAD_RAISE1"
.LASF1317:
	.string	"MT_MISC85"
.LASF722:
	.string	"S_HEAD_RAISE2"
.LASF723:
	.string	"S_HEAD_RAISE3"
.LASF1392:
	.string	"cheats"
.LASF130:
	.string	"SPR_BSKU"
.LASF725:
	.string	"S_HEAD_RAISE5"
.LASF726:
	.string	"S_HEAD_RAISE6"
.LASF1260:
	.string	"MT_SUPERSHOTGUN"
.LASF141:
	.string	"SPR_PMAP"
.LASF989:
	.string	"S_BRAINEYE"
.LASF1460:
	.string	"crush"
.LASF142:
	.string	"SPR_PVIS"
.LASF1447:
	.string	"PST_LIVE"
.LASF1218:
	.string	"MT_ARACHPLAZ"
.LASF467:
	.string	"S_VILE_ATK8"
.LASF408:
	.string	"S_POSS_RAISE1"
.LASF409:
	.string	"S_POSS_RAISE2"
.LASF410:
	.string	"S_POSS_RAISE3"
.LASF411:
	.string	"S_POSS_RAISE4"
.LASF263:
	.string	"S_MISSILEDOWN"
.LASF1552:
	.string	"sfx_barexp"
.LASF1127:
	.string	"S_FLOATSKULL2"
.LASF1128:
	.string	"S_FLOATSKULL3"
.LASF1475:
	.string	"sfx_dbopn"
.LASF1479:
	.string	"sfx_bfg"
.LASF1062:
	.string	"S_MEGA"
.LASF742:
	.string	"S_BOSS_ATK1"
.LASF743:
	.string	"S_BOSS_ATK2"
.LASF744:
	.string	"S_BOSS_ATK3"
.LASF1352:
	.string	"subsector"
.LASF200:
	.string	"SPR_BRS1"
.LASF1407:
	.string	"vertex_t"
.LASF549:
	.string	"S_SKEL_PAIN2"
.LASF1086:
	.string	"S_CSAW"
.LASF34:
	.string	"pw_invulnerability"
.LASF729:
	.string	"S_BRBALLX1"
.LASF730:
	.string	"S_BRBALLX2"
.LASF731:
	.string	"S_BRBALLX3"
.LASF859:
	.string	"S_BSPI_DIE2"
.LASF860:
	.string	"S_BSPI_DIE3"
.LASF861:
	.string	"S_BSPI_DIE4"
.LASF862:
	.string	"S_BSPI_DIE5"
.LASF20:
	.string	"wp_chaingun"
.LASF864:
	.string	"S_BSPI_DIE7"
.LASF415:
	.string	"S_SPOS_RUN2"
.LASF1428:
	.string	"backsector"
.LASF416:
	.string	"S_SPOS_RUN3"
.LASF1597:
	.string	"T_MoveCeiling"
.LASF918:
	.string	"S_PAIN_PAIN2"
.LASF553:
	.string	"S_SKEL_DIE4"
.LASF1471:
	.string	"sfx_pistol"
.LASF149:
	.string	"SPR_SHEL"
.LASF1301:
	.string	"MT_MISC69"
.LASF1380:
	.string	"armortype"
.LASF57:
	.string	"false"
.LASF201:
	.string	"SPR_TLMP"
.LASF380:
	.string	"S_POSS_STND2"
.LASF1259:
	.string	"MT_SHOTGUN"
.LASF1184:
	.string	"MT_SHOTGUY"
.LASF1395:
	.string	"itemcount"
.LASF1164:
	.string	"S_TECHLAMP"
.LASF1205:
	.string	"MT_WOLFSS"
.LASF762:
	.string	"S_BOS2_STND2"
.LASF1416:
	.string	"soundtarget"
.LASF257:
	.string	"S_CHAIN1"
.LASF258:
	.string	"S_CHAIN2"
.LASF259:
	.string	"S_CHAIN3"
.LASF310:
	.string	"S_RBALLX2"
.LASF311:
	.string	"S_RBALLX3"
.LASF186:
	.string	"SPR_TBLU"
.LASF413:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1472:
	.string	"sfx_shotgn"
.LASF1348:
	.string	"snext"
.LASF33:
	.string	"am_noammo"
.LASF1345:
	.string	"thinker_s"
.LASF56:
	.string	"thinker_t"
.LASF1532:
	.string	"sfx_bgdth1"
.LASF1533:
	.string	"sfx_bgdth2"
.LASF389:
	.string	"S_POSS_ATK1"
.LASF390:
	.string	"S_POSS_ATK2"
.LASF391:
	.string	"S_POSS_ATK3"
.LASF1303:
	.string	"MT_MISC71"
.LASF1152:
	.string	"S_RTORCHSHRT2"
.LASF1153:
	.string	"S_RTORCHSHRT3"
.LASF1154:
	.string	"S_RTORCHSHRT4"
.LASF1056:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF840:
	.string	"S_BSPI_RUN1"
.LASF1309:
	.string	"MT_MISC77"
.LASF1310:
	.string	"MT_MISC78"
.LASF1311:
	.string	"MT_MISC79"
.LASF1200:
	.string	"MT_SKULL"
.LASF1187:
	.string	"MT_UNDEAD"
.LASF53:
	.string	"prev"
.LASF550:
	.string	"S_SKEL_DIE1"
.LASF551:
	.string	"S_SKEL_DIE2"
.LASF552:
	.string	"S_SKEL_DIE3"
.LASF97:
	.string	"SPR_FIRE"
.LASF554:
	.string	"S_SKEL_DIE5"
.LASF555:
	.string	"S_SKEL_DIE6"
.LASF1161:
	.string	"S_COLONGIBS"
.LASF202:
	.string	"SPR_TLP2"
.LASF312:
	.string	"S_PLASBALL"
.LASF1528:
	.string	"sfx_pdiehi"
.LASF158:
	.string	"SPR_SGN2"
.LASF63:
	.string	"options"
.LASF111:
	.string	"SPR_BSPI"
.LASF113:
	.string	"SPR_APBX"
.LASF1403:
	.string	"colormap"
.LASF1235:
	.string	"MT_MISC10"
.LASF1236:
	.string	"MT_MISC11"
.LASF1237:
	.string	"MT_MISC12"
.LASF1239:
	.string	"MT_MISC13"
.LASF1241:
	.string	"MT_MISC14"
.LASF1242:
	.string	"MT_MISC15"
.LASF1243:
	.string	"MT_MISC16"
.LASF1246:
	.string	"MT_MISC17"
.LASF1247:
	.string	"MT_MISC18"
.LASF1075:
	.string	"S_CLIP"
.LASF1337:
	.string	"radius"
.LASF1361:
	.string	"health"
.LASF1209:
	.string	"MT_BOSSTARGET"
.LASF1517:
	.string	"sfx_kntsit"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_ceilng.c"
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
