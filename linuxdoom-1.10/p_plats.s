	.file	"p_plats.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_plats.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: p_plats.c,v 1.5 1997/02/03 22:45:12 b1 Exp $"
	.globl	activeplats
	.bss
	.align 32
	.type	activeplats, @object
	.size	activeplats, 240
activeplats:
	.zero	240
	.text
	.globl	T_PlatRaise
	.type	T_PlatRaise, @function
T_PlatRaise:
.LFB0:
	.file 1 "p_plats.c"
	.loc 1 53 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# plat, plat
# p_plats.c:56:     switch(plat->status)
	.loc 1 56 16
	movq	-24(%rbp), %rax	# plat, tmp116
	movl	52(%rax), %eax	# plat_41(D)->status, _1
# p_plats.c:56:     switch(plat->status)
	.loc 1 56 5
	cmpl	$3, %eax	#, _1
	je	.L18	#,
	cmpl	$3, %eax	#, _1
	ja	.L19	#,
	cmpl	$2, %eax	#, _1
	je	.L4	#,
	cmpl	$2, %eax	#, _1
	ja	.L19	#,
	testl	%eax, %eax	# _1
	je	.L5	#,
	cmpl	$1, %eax	#, _1
	je	.L6	#,
# p_plats.c:131: }
	.loc 1 131 1
	jmp	.L19	#
.L5:
# p_plats.c:59: 	res = T_MovePlane(plat->sector,
	.loc 1 59 8
	movq	-24(%rbp), %rax	# plat, tmp117
	movl	60(%rax), %ecx	# plat_41(D)->crush, _2
	movq	-24(%rbp), %rax	# plat, tmp118
	movl	40(%rax), %edx	# plat_41(D)->high, _3
	movq	-24(%rbp), %rax	# plat, tmp119
	movl	32(%rax), %esi	# plat_41(D)->speed, _4
	movq	-24(%rbp), %rax	# plat, tmp120
	movq	24(%rax), %rax	# plat_41(D)->sector, _5
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# _5,
	call	T_MovePlane@PLT	#
	movl	%eax, -4(%rbp)	# tmp121, res
# p_plats.c:64: 	if (plat->type == raiseAndChange
	.loc 1 64 10
	movq	-24(%rbp), %rax	# plat, tmp122
	movl	68(%rax), %eax	# plat_41(D)->type, _6
# p_plats.c:64: 	if (plat->type == raiseAndChange
	.loc 1 64 5
	cmpl	$2, %eax	#, _6
	je	.L7	#,
# p_plats.c:65: 	    || plat->type == raiseToNearestAndChange)
	.loc 1 65 13
	movq	-24(%rbp), %rax	# plat, tmp123
	movl	68(%rax), %eax	# plat_41(D)->type, _7
# p_plats.c:65: 	    || plat->type == raiseToNearestAndChange)
	.loc 1 65 6
	cmpl	$3, %eax	#, _7
	jne	.L8	#,
.L7:
# p_plats.c:67: 	    if (!(leveltime&7))
	.loc 1 67 21
	movl	leveltime(%rip), %eax	# leveltime, leveltime.0_8
	andl	$7, %eax	#, _9
# p_plats.c:67: 	    if (!(leveltime&7))
	.loc 1 67 9
	testl	%eax, %eax	# _9
	jne	.L8	#,
# p_plats.c:68: 		S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 68 31
	movq	-24(%rbp), %rax	# plat, tmp124
	movq	24(%rax), %rax	# plat_41(D)->sector, _10
# p_plats.c:68: 		S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 68 26
	addq	$48, %rax	#, _11
# p_plats.c:68: 		S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 68 3
	movl	$22, %esi	#,
	movq	%rax, %rdi	# _11,
	call	S_StartSound@PLT	#
.L8:
# p_plats.c:73: 	if (res == crushed && (!plat->crush))
	.loc 1 73 5
	cmpl	$1, -4(%rbp)	#, res
	jne	.L9	#,
# p_plats.c:73: 	if (res == crushed && (!plat->crush))
	.loc 1 73 30 discriminator 1
	movq	-24(%rbp), %rax	# plat, tmp125
	movl	60(%rax), %eax	# plat_41(D)->crush, _12
# p_plats.c:73: 	if (res == crushed && (!plat->crush))
	.loc 1 73 21 discriminator 1
	testl	%eax, %eax	# _12
	jne	.L9	#,
# p_plats.c:75: 	    plat->count = plat->wait;
	.loc 1 75 24
	movq	-24(%rbp), %rax	# plat, tmp126
	movl	44(%rax), %edx	# plat_41(D)->wait, _13
# p_plats.c:75: 	    plat->count = plat->wait;
	.loc 1 75 18
	movq	-24(%rbp), %rax	# plat, tmp127
	movl	%edx, 48(%rax)	# _13, plat_41(D)->count
# p_plats.c:76: 	    plat->status = down;
	.loc 1 76 19
	movq	-24(%rbp), %rax	# plat, tmp128
	movl	$1, 52(%rax)	#, plat_41(D)->status
# p_plats.c:77: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 77 34
	movq	-24(%rbp), %rax	# plat, tmp129
	movq	24(%rax), %rax	# plat_41(D)->sector, _14
# p_plats.c:77: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 77 29
	addq	$48, %rax	#, _15
# p_plats.c:77: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 77 6
	movl	$18, %esi	#,
	movq	%rax, %rdi	# _15,
	call	S_StartSound@PLT	#
	jmp	.L10	#
.L9:
# p_plats.c:82: 	    if (res == pastdest)
	.loc 1 82 9
	cmpl	$2, -4(%rbp)	#, res
	jne	.L20	#,
# p_plats.c:84: 		plat->count = plat->wait;
	.loc 1 84 21
	movq	-24(%rbp), %rax	# plat, tmp130
	movl	44(%rax), %edx	# plat_41(D)->wait, _16
# p_plats.c:84: 		plat->count = plat->wait;
	.loc 1 84 15
	movq	-24(%rbp), %rax	# plat, tmp131
	movl	%edx, 48(%rax)	# _16, plat_41(D)->count
# p_plats.c:85: 		plat->status = waiting;
	.loc 1 85 16
	movq	-24(%rbp), %rax	# plat, tmp132
	movl	$2, 52(%rax)	#, plat_41(D)->status
# p_plats.c:86: 		S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 86 31
	movq	-24(%rbp), %rax	# plat, tmp133
	movq	24(%rax), %rax	# plat_41(D)->sector, _17
# p_plats.c:86: 		S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 86 26
	addq	$48, %rax	#, _18
# p_plats.c:86: 		S_StartSound((mobj_t *)&plat->sector->soundorg,
	.loc 1 86 3
	movl	$19, %esi	#,
	movq	%rax, %rdi	# _18,
	call	S_StartSound@PLT	#
# p_plats.c:89: 		switch(plat->type)
	.loc 1 89 14
	movq	-24(%rbp), %rax	# plat, tmp134
	movl	68(%rax), %eax	# plat_41(D)->type, _19
# p_plats.c:89: 		switch(plat->type)
	.loc 1 89 3
	cmpl	$4, %eax	#, _19
	je	.L11	#,
	cmpl	$4, %eax	#, _19
	ja	.L21	#,
	cmpl	$1, %eax	#, _19
	je	.L11	#,
	testl	%eax, %eax	# _19
	je	.L21	#,
	subl	$2, %eax	#, _62
	cmpl	$1, %eax	#, _62
	ja	.L21	#,
	jmp	.L17	#
.L11:
# p_plats.c:93: 		    P_RemoveActivePlat(plat);
	.loc 1 93 7
	movq	-24(%rbp), %rax	# plat, tmp135
	movq	%rax, %rdi	# tmp135,
	call	P_RemoveActivePlat	#
# p_plats.c:94: 		    break;
	.loc 1 94 7
	jmp	.L10	#
.L17:
# p_plats.c:98: 		    P_RemoveActivePlat(plat);
	.loc 1 98 7
	movq	-24(%rbp), %rax	# plat, tmp136
	movq	%rax, %rdi	# tmp136,
	call	P_RemoveActivePlat	#
# p_plats.c:99: 		    break;
	.loc 1 99 7
	jmp	.L10	#
.L21:
# p_plats.c:102: 		    break;
	.loc 1 102 7
	nop	
.L10:
# p_plats.c:106: 	break;
	.loc 1 106 2
	jmp	.L20	#
.L6:
# p_plats.c:109: 	res = T_MovePlane(plat->sector,plat->speed,plat->low,false,0,-1);
	.loc 1 109 8
	movq	-24(%rbp), %rax	# plat, tmp137
	movl	36(%rax), %edx	# plat_41(D)->low, _20
	movq	-24(%rbp), %rax	# plat, tmp138
	movl	32(%rax), %esi	# plat_41(D)->speed, _21
	movq	-24(%rbp), %rax	# plat, tmp139
	movq	24(%rax), %rax	# plat_41(D)->sector, _22
	movl	$-1, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# _22,
	call	T_MovePlane@PLT	#
	movl	%eax, -4(%rbp)	# tmp140, res
# p_plats.c:111: 	if (res == pastdest)
	.loc 1 111 5
	cmpl	$2, -4(%rbp)	#, res
	jne	.L22	#,
# p_plats.c:113: 	    plat->count = plat->wait;
	.loc 1 113 24
	movq	-24(%rbp), %rax	# plat, tmp141
	movl	44(%rax), %edx	# plat_41(D)->wait, _23
# p_plats.c:113: 	    plat->count = plat->wait;
	.loc 1 113 18
	movq	-24(%rbp), %rax	# plat, tmp142
	movl	%edx, 48(%rax)	# _23, plat_41(D)->count
# p_plats.c:114: 	    plat->status = waiting;
	.loc 1 114 19
	movq	-24(%rbp), %rax	# plat, tmp143
	movl	$2, 52(%rax)	#, plat_41(D)->status
# p_plats.c:115: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstop);
	.loc 1 115 34
	movq	-24(%rbp), %rax	# plat, tmp144
	movq	24(%rax), %rax	# plat_41(D)->sector, _24
# p_plats.c:115: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstop);
	.loc 1 115 29
	addq	$48, %rax	#, _25
# p_plats.c:115: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstop);
	.loc 1 115 6
	movl	$19, %esi	#,
	movq	%rax, %rdi	# _25,
	call	S_StartSound@PLT	#
# p_plats.c:117: 	break;
	.loc 1 117 2
	jmp	.L22	#
.L4:
# p_plats.c:120: 	if (!--plat->count)
	.loc 1 120 13
	movq	-24(%rbp), %rax	# plat, tmp145
	movl	48(%rax), %eax	# plat_41(D)->count, _26
# p_plats.c:120: 	if (!--plat->count)
	.loc 1 120 7
	leal	-1(%rax), %edx	#, _27
# p_plats.c:120: 	if (!--plat->count)
	.loc 1 120 5
	movq	-24(%rbp), %rax	# plat, tmp146
	movl	%edx, 48(%rax)	# _27, plat_41(D)->count
# p_plats.c:120: 	if (!--plat->count)
	.loc 1 120 13
	movq	-24(%rbp), %rax	# plat, tmp147
	movl	48(%rax), %eax	# plat_41(D)->count, _28
# p_plats.c:120: 	if (!--plat->count)
	.loc 1 120 5
	testl	%eax, %eax	# _28
	jne	.L18	#,
# p_plats.c:122: 	    if (plat->sector->floorheight == plat->low)
	.loc 1 122 14
	movq	-24(%rbp), %rax	# plat, tmp148
	movq	24(%rax), %rax	# plat_41(D)->sector, _29
# p_plats.c:122: 	    if (plat->sector->floorheight == plat->low)
	.loc 1 122 22
	movl	(%rax), %edx	# _29->floorheight, _30
# p_plats.c:122: 	    if (plat->sector->floorheight == plat->low)
	.loc 1 122 43
	movq	-24(%rbp), %rax	# plat, tmp149
	movl	36(%rax), %eax	# plat_41(D)->low, _31
# p_plats.c:122: 	    if (plat->sector->floorheight == plat->low)
	.loc 1 122 9
	cmpl	%eax, %edx	# _31, _30
	jne	.L15	#,
# p_plats.c:123: 		plat->status = up;
	.loc 1 123 16
	movq	-24(%rbp), %rax	# plat, tmp150
	movl	$0, 52(%rax)	#, plat_41(D)->status
	jmp	.L16	#
.L15:
# p_plats.c:125: 		plat->status = down;
	.loc 1 125 16
	movq	-24(%rbp), %rax	# plat, tmp151
	movl	$1, 52(%rax)	#, plat_41(D)->status
.L16:
# p_plats.c:126: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstart);
	.loc 1 126 34
	movq	-24(%rbp), %rax	# plat, tmp152
	movq	24(%rax), %rax	# plat_41(D)->sector, _32
# p_plats.c:126: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstart);
	.loc 1 126 29
	addq	$48, %rax	#, _33
# p_plats.c:126: 	    S_StartSound((mobj_t *)&plat->sector->soundorg,sfx_pstart);
	.loc 1 126 6
	movl	$18, %esi	#,
	movq	%rax, %rdi	# _33,
	call	S_StartSound@PLT	#
.L18:
# p_plats.c:129: 	break;
	.loc 1 129 2
	nop	
	jmp	.L19	#
.L20:
# p_plats.c:106: 	break;
	.loc 1 106 2
	nop	
	jmp	.L19	#
.L22:
# p_plats.c:117: 	break;
	.loc 1 117 2
	nop	
.L19:
# p_plats.c:131: }
	.loc 1 131 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	T_PlatRaise, .-T_PlatRaise
	.globl	EV_DoPlat
	.type	EV_DoPlat, @function
EV_DoPlat:
.LFB1:
	.loc 1 143 1
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
	movl	%edx, -48(%rbp)	# amount, amount
# p_plats.c:149:     secnum = -1;
	.loc 1 149 12
	movl	$-1, -24(%rbp)	#, secnum
# p_plats.c:150:     rtn = 0;
	.loc 1 150 9
	movl	$0, -20(%rbp)	#, rtn
# p_plats.c:154:     switch(type)
	.loc 1 154 5
	cmpl	$0, -44(%rbp)	#, type
	jne	.L42	#,
# p_plats.c:157: 	P_ActivateInStasis(line->tag);
	.loc 1 157 25
	movq	-40(%rbp), %rax	# line, tmp139
	movzwl	28(%rax), %eax	# line_69(D)->tag, _1
# p_plats.c:157: 	P_ActivateInStasis(line->tag);
	.loc 1 157 2
	cwtl
	movl	%eax, %edi	# _2,
	call	P_ActivateInStasis	#
# p_plats.c:158: 	break;
	.loc 1 158 2
	jmp	.L25	#
.L42:
# p_plats.c:161: 	break;
	.loc 1 161 2
	nop	
.L25:
# p_plats.c:164:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 164 11
	jmp	.L26	#
.L40:
# p_plats.c:166: 	sec = &sectors[secnum];
	.loc 1 166 8
	movq	sectors(%rip), %rax	# sectors, sectors.1_3
# p_plats.c:166: 	sec = &sectors[secnum];
	.loc 1 166 16
	movl	-24(%rbp), %edx	# secnum, tmp140
	movslq	%edx, %rdx	# tmp140, _4
	salq	$7, %rdx	#, _5
# p_plats.c:166: 	sec = &sectors[secnum];
	.loc 1 166 6
	addq	%rdx, %rax	# _5, tmp141
	movq	%rax, -16(%rbp)	# tmp141, sec
# p_plats.c:168: 	if (sec->specialdata)
	.loc 1 168 9
	movq	-16(%rbp), %rax	# sec, tmp142
	movq	104(%rax), %rax	# sec_74->specialdata, _6
# p_plats.c:168: 	if (sec->specialdata)
	.loc 1 168 5
	testq	%rax, %rax	# _6
	jne	.L43	#,
# p_plats.c:172: 	rtn = 1;
	.loc 1 172 6
	movl	$1, -20(%rbp)	#, rtn
# p_plats.c:173: 	plat = Z_Malloc( sizeof(*plat), PU_LEVSPEC, 0);
	.loc 1 173 9
	movl	$0, %edx	#,
	movl	$51, %esi	#,
	movl	$72, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp143, plat
# p_plats.c:174: 	P_AddThinker(&plat->thinker);
	.loc 1 174 2
	movq	-8(%rbp), %rax	# plat, _7
	movq	%rax, %rdi	# _7,
	call	P_AddThinker@PLT	#
# p_plats.c:176: 	plat->type = type;
	.loc 1 176 13
	movq	-8(%rbp), %rax	# plat, tmp144
	movl	-44(%rbp), %edx	# type, tmp145
	movl	%edx, 68(%rax)	# tmp145, plat_77->type
# p_plats.c:177: 	plat->sector = sec;
	.loc 1 177 15
	movq	-8(%rbp), %rax	# plat, tmp146
	movq	-16(%rbp), %rdx	# sec, tmp147
	movq	%rdx, 24(%rax)	# tmp147, plat_77->sector
# p_plats.c:178: 	plat->sector->specialdata = plat;
	.loc 1 178 6
	movq	-8(%rbp), %rax	# plat, tmp148
	movq	24(%rax), %rax	# plat_77->sector, _8
# p_plats.c:178: 	plat->sector->specialdata = plat;
	.loc 1 178 28
	movq	-8(%rbp), %rdx	# plat, tmp149
	movq	%rdx, 104(%rax)	# tmp149, _8->specialdata
# p_plats.c:179: 	plat->thinker.function.acp1 = (actionf_p1) T_PlatRaise;
	.loc 1 179 30
	movq	-8(%rbp), %rax	# plat, tmp150
	leaq	T_PlatRaise(%rip), %rdx	#, tmp151
	movq	%rdx, 16(%rax)	# tmp151, plat_77->thinker.function.acp1
# p_plats.c:180: 	plat->crush = false;
	.loc 1 180 14
	movq	-8(%rbp), %rax	# plat, tmp152
	movl	$0, 60(%rax)	#, plat_77->crush
# p_plats.c:181: 	plat->tag = line->tag;
	.loc 1 181 18
	movq	-40(%rbp), %rax	# line, tmp153
	movzwl	28(%rax), %eax	# line_69(D)->tag, _9
	movswl	%ax, %edx	# _9, _10
# p_plats.c:181: 	plat->tag = line->tag;
	.loc 1 181 12
	movq	-8(%rbp), %rax	# plat, tmp154
	movl	%edx, 64(%rax)	# _10, plat_77->tag
# p_plats.c:183: 	switch(type)
	.loc 1 183 2
	cmpl	$4, -44(%rbp)	#, type
	ja	.L29	#,
	movl	-44(%rbp), %eax	# type, tmp155
	leaq	0(,%rax,4), %rdx	#, tmp156
	leaq	.L31(%rip), %rax	#, tmp157
	movl	(%rdx,%rax), %eax	#, tmp158
	cltq
	leaq	.L31(%rip), %rdx	#, tmp161
	addq	%rdx, %rax	# tmp161, tmp160
	notrack jmp	*%rax	# tmp160
	.section	.rodata
	.align 4
	.align 4
.L31:
	.long	.L35-.L31
	.long	.L34-.L31
	.long	.L33-.L31
	.long	.L32-.L31
	.long	.L30-.L31
	.text
.L32:
# p_plats.c:186: 	    plat->speed = PLATSPEED/2;
	.loc 1 186 18
	movq	-8(%rbp), %rax	# plat, tmp162
	movl	$32768, 32(%rax)	#, plat_77->speed
# p_plats.c:187: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 187 27
	movq	sides(%rip), %rcx	# sides, sides.2_11
# p_plats.c:187: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 187 41
	movq	-40(%rbp), %rax	# line, tmp163
	movzwl	30(%rax), %eax	# line_69(D)->sidenum[0], _12
	movswq	%ax, %rdx	# _12, _13
# p_plats.c:187: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 187 27
	movq	%rdx, %rax	# _13, tmp164
	addq	%rax, %rax	# tmp164
	addq	%rdx, %rax	# _13, tmp164
	salq	$3, %rax	#, tmp165
	addq	%rcx, %rax	# sides.2_11, _15
# p_plats.c:187: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 187 45
	movq	16(%rax), %rax	# _15->sector, _16
# p_plats.c:187: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 187 52
	movzwl	8(%rax), %edx	# _16->floorpic, _17
# p_plats.c:187: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 187 20
	movq	-16(%rbp), %rax	# sec, tmp166
	movw	%dx, 8(%rax)	# _17, sec_74->floorpic
# p_plats.c:188: 	    plat->high = P_FindNextHighestFloor(sec,sec->floorheight);
	.loc 1 188 19
	movq	-16(%rbp), %rax	# sec, tmp167
	movl	(%rax), %edx	# sec_74->floorheight, _18
	movq	-16(%rbp), %rax	# sec, tmp168
	movl	%edx, %esi	# _18,
	movq	%rax, %rdi	# tmp168,
	call	P_FindNextHighestFloor@PLT	#
# p_plats.c:188: 	    plat->high = P_FindNextHighestFloor(sec,sec->floorheight);
	.loc 1 188 17 discriminator 1
	movq	-8(%rbp), %rdx	# plat, tmp169
	movl	%eax, 40(%rdx)	# _19, plat_77->high
# p_plats.c:189: 	    plat->wait = 0;
	.loc 1 189 17
	movq	-8(%rbp), %rax	# plat, tmp170
	movl	$0, 44(%rax)	#, plat_77->wait
# p_plats.c:190: 	    plat->status = up;
	.loc 1 190 19
	movq	-8(%rbp), %rax	# plat, tmp171
	movl	$0, 52(%rax)	#, plat_77->status
# p_plats.c:192: 	    sec->special = 0;		
	.loc 1 192 19
	movq	-16(%rbp), %rax	# sec, tmp172
	movw	$0, 14(%rax)	#, sec_74->special
# p_plats.c:194: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_stnmov);
	.loc 1 194 29
	movq	-16(%rbp), %rax	# sec, tmp173
	addq	$48, %rax	#, _20
# p_plats.c:194: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_stnmov);
	.loc 1 194 6
	movl	$22, %esi	#,
	movq	%rax, %rdi	# _20,
	call	S_StartSound@PLT	#
# p_plats.c:195: 	    break;
	.loc 1 195 6
	jmp	.L29	#
.L33:
# p_plats.c:198: 	    plat->speed = PLATSPEED/2;
	.loc 1 198 18
	movq	-8(%rbp), %rax	# plat, tmp174
	movl	$32768, 32(%rax)	#, plat_77->speed
# p_plats.c:199: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 199 27
	movq	sides(%rip), %rcx	# sides, sides.3_21
# p_plats.c:199: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 199 41
	movq	-40(%rbp), %rax	# line, tmp175
	movzwl	30(%rax), %eax	# line_69(D)->sidenum[0], _22
	movswq	%ax, %rdx	# _22, _23
# p_plats.c:199: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 199 27
	movq	%rdx, %rax	# _23, tmp176
	addq	%rax, %rax	# tmp176
	addq	%rdx, %rax	# _23, tmp176
	salq	$3, %rax	#, tmp177
	addq	%rcx, %rax	# sides.3_21, _25
# p_plats.c:199: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 199 45
	movq	16(%rax), %rax	# _25->sector, _26
# p_plats.c:199: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 199 52
	movzwl	8(%rax), %edx	# _26->floorpic, _27
# p_plats.c:199: 	    sec->floorpic = sides[line->sidenum[0]].sector->floorpic;
	.loc 1 199 20
	movq	-16(%rbp), %rax	# sec, tmp178
	movw	%dx, 8(%rax)	# _27, sec_74->floorpic
# p_plats.c:200: 	    plat->high = sec->floorheight + amount*FRACUNIT;
	.loc 1 200 22
	movq	-16(%rbp), %rax	# sec, tmp179
	movl	(%rax), %eax	# sec_74->floorheight, _28
# p_plats.c:200: 	    plat->high = sec->floorheight + amount*FRACUNIT;
	.loc 1 200 44
	movl	-48(%rbp), %edx	# amount, tmp180
	sall	$16, %edx	#, _29
# p_plats.c:200: 	    plat->high = sec->floorheight + amount*FRACUNIT;
	.loc 1 200 36
	addl	%eax, %edx	# _28, _30
# p_plats.c:200: 	    plat->high = sec->floorheight + amount*FRACUNIT;
	.loc 1 200 17
	movq	-8(%rbp), %rax	# plat, tmp181
	movl	%edx, 40(%rax)	# _30, plat_77->high
# p_plats.c:201: 	    plat->wait = 0;
	.loc 1 201 17
	movq	-8(%rbp), %rax	# plat, tmp182
	movl	$0, 44(%rax)	#, plat_77->wait
# p_plats.c:202: 	    plat->status = up;
	.loc 1 202 19
	movq	-8(%rbp), %rax	# plat, tmp183
	movl	$0, 52(%rax)	#, plat_77->status
# p_plats.c:204: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_stnmov);
	.loc 1 204 29
	movq	-16(%rbp), %rax	# sec, tmp184
	addq	$48, %rax	#, _31
# p_plats.c:204: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_stnmov);
	.loc 1 204 6
	movl	$22, %esi	#,
	movq	%rax, %rdi	# _31,
	call	S_StartSound@PLT	#
# p_plats.c:205: 	    break;
	.loc 1 205 6
	jmp	.L29	#
.L34:
# p_plats.c:208: 	    plat->speed = PLATSPEED * 4;
	.loc 1 208 18
	movq	-8(%rbp), %rax	# plat, tmp185
	movl	$262144, 32(%rax)	#, plat_77->speed
# p_plats.c:209: 	    plat->low = P_FindLowestFloorSurrounding(sec);
	.loc 1 209 18
	movq	-16(%rbp), %rax	# sec, tmp186
	movq	%rax, %rdi	# tmp186,
	call	P_FindLowestFloorSurrounding@PLT	#
# p_plats.c:209: 	    plat->low = P_FindLowestFloorSurrounding(sec);
	.loc 1 209 16 discriminator 1
	movq	-8(%rbp), %rdx	# plat, tmp187
	movl	%eax, 36(%rdx)	# _32, plat_77->low
# p_plats.c:211: 	    if (plat->low > sec->floorheight)
	.loc 1 211 14
	movq	-8(%rbp), %rax	# plat, tmp188
	movl	36(%rax), %edx	# plat_77->low, _33
# p_plats.c:211: 	    if (plat->low > sec->floorheight)
	.loc 1 211 25
	movq	-16(%rbp), %rax	# sec, tmp189
	movl	(%rax), %eax	# sec_74->floorheight, _34
# p_plats.c:211: 	    if (plat->low > sec->floorheight)
	.loc 1 211 9
	cmpl	%eax, %edx	# _34, _33
	jle	.L36	#,
# p_plats.c:212: 		plat->low = sec->floorheight;
	.loc 1 212 18
	movq	-16(%rbp), %rax	# sec, tmp190
	movl	(%rax), %edx	# sec_74->floorheight, _35
# p_plats.c:212: 		plat->low = sec->floorheight;
	.loc 1 212 13
	movq	-8(%rbp), %rax	# plat, tmp191
	movl	%edx, 36(%rax)	# _35, plat_77->low
.L36:
# p_plats.c:214: 	    plat->high = sec->floorheight;
	.loc 1 214 22
	movq	-16(%rbp), %rax	# sec, tmp192
	movl	(%rax), %edx	# sec_74->floorheight, _36
# p_plats.c:214: 	    plat->high = sec->floorheight;
	.loc 1 214 17
	movq	-8(%rbp), %rax	# plat, tmp193
	movl	%edx, 40(%rax)	# _36, plat_77->high
# p_plats.c:215: 	    plat->wait = 35*PLATWAIT;
	.loc 1 215 17
	movq	-8(%rbp), %rax	# plat, tmp194
	movl	$105, 44(%rax)	#, plat_77->wait
# p_plats.c:216: 	    plat->status = down;
	.loc 1 216 19
	movq	-8(%rbp), %rax	# plat, tmp195
	movl	$1, 52(%rax)	#, plat_77->status
# p_plats.c:217: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
	.loc 1 217 29
	movq	-16(%rbp), %rax	# sec, tmp196
	addq	$48, %rax	#, _37
# p_plats.c:217: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
	.loc 1 217 6
	movl	$18, %esi	#,
	movq	%rax, %rdi	# _37,
	call	S_StartSound@PLT	#
# p_plats.c:218: 	    break;
	.loc 1 218 6
	jmp	.L29	#
.L30:
# p_plats.c:221: 	    plat->speed = PLATSPEED * 8;
	.loc 1 221 18
	movq	-8(%rbp), %rax	# plat, tmp197
	movl	$524288, 32(%rax)	#, plat_77->speed
# p_plats.c:222: 	    plat->low = P_FindLowestFloorSurrounding(sec);
	.loc 1 222 18
	movq	-16(%rbp), %rax	# sec, tmp198
	movq	%rax, %rdi	# tmp198,
	call	P_FindLowestFloorSurrounding@PLT	#
# p_plats.c:222: 	    plat->low = P_FindLowestFloorSurrounding(sec);
	.loc 1 222 16 discriminator 1
	movq	-8(%rbp), %rdx	# plat, tmp199
	movl	%eax, 36(%rdx)	# _38, plat_77->low
# p_plats.c:224: 	    if (plat->low > sec->floorheight)
	.loc 1 224 14
	movq	-8(%rbp), %rax	# plat, tmp200
	movl	36(%rax), %edx	# plat_77->low, _39
# p_plats.c:224: 	    if (plat->low > sec->floorheight)
	.loc 1 224 25
	movq	-16(%rbp), %rax	# sec, tmp201
	movl	(%rax), %eax	# sec_74->floorheight, _40
# p_plats.c:224: 	    if (plat->low > sec->floorheight)
	.loc 1 224 9
	cmpl	%eax, %edx	# _40, _39
	jle	.L37	#,
# p_plats.c:225: 		plat->low = sec->floorheight;
	.loc 1 225 18
	movq	-16(%rbp), %rax	# sec, tmp202
	movl	(%rax), %edx	# sec_74->floorheight, _41
# p_plats.c:225: 		plat->low = sec->floorheight;
	.loc 1 225 13
	movq	-8(%rbp), %rax	# plat, tmp203
	movl	%edx, 36(%rax)	# _41, plat_77->low
.L37:
# p_plats.c:227: 	    plat->high = sec->floorheight;
	.loc 1 227 22
	movq	-16(%rbp), %rax	# sec, tmp204
	movl	(%rax), %edx	# sec_74->floorheight, _42
# p_plats.c:227: 	    plat->high = sec->floorheight;
	.loc 1 227 17
	movq	-8(%rbp), %rax	# plat, tmp205
	movl	%edx, 40(%rax)	# _42, plat_77->high
# p_plats.c:228: 	    plat->wait = 35*PLATWAIT;
	.loc 1 228 17
	movq	-8(%rbp), %rax	# plat, tmp206
	movl	$105, 44(%rax)	#, plat_77->wait
# p_plats.c:229: 	    plat->status = down;
	.loc 1 229 19
	movq	-8(%rbp), %rax	# plat, tmp207
	movl	$1, 52(%rax)	#, plat_77->status
# p_plats.c:230: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
	.loc 1 230 29
	movq	-16(%rbp), %rax	# sec, tmp208
	addq	$48, %rax	#, _43
# p_plats.c:230: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
	.loc 1 230 6
	movl	$18, %esi	#,
	movq	%rax, %rdi	# _43,
	call	S_StartSound@PLT	#
# p_plats.c:231: 	    break;
	.loc 1 231 6
	jmp	.L29	#
.L35:
# p_plats.c:234: 	    plat->speed = PLATSPEED;
	.loc 1 234 18
	movq	-8(%rbp), %rax	# plat, tmp209
	movl	$65536, 32(%rax)	#, plat_77->speed
# p_plats.c:235: 	    plat->low = P_FindLowestFloorSurrounding(sec);
	.loc 1 235 18
	movq	-16(%rbp), %rax	# sec, tmp210
	movq	%rax, %rdi	# tmp210,
	call	P_FindLowestFloorSurrounding@PLT	#
# p_plats.c:235: 	    plat->low = P_FindLowestFloorSurrounding(sec);
	.loc 1 235 16 discriminator 1
	movq	-8(%rbp), %rdx	# plat, tmp211
	movl	%eax, 36(%rdx)	# _44, plat_77->low
# p_plats.c:237: 	    if (plat->low > sec->floorheight)
	.loc 1 237 14
	movq	-8(%rbp), %rax	# plat, tmp212
	movl	36(%rax), %edx	# plat_77->low, _45
# p_plats.c:237: 	    if (plat->low > sec->floorheight)
	.loc 1 237 25
	movq	-16(%rbp), %rax	# sec, tmp213
	movl	(%rax), %eax	# sec_74->floorheight, _46
# p_plats.c:237: 	    if (plat->low > sec->floorheight)
	.loc 1 237 9
	cmpl	%eax, %edx	# _46, _45
	jle	.L38	#,
# p_plats.c:238: 		plat->low = sec->floorheight;
	.loc 1 238 18
	movq	-16(%rbp), %rax	# sec, tmp214
	movl	(%rax), %edx	# sec_74->floorheight, _47
# p_plats.c:238: 		plat->low = sec->floorheight;
	.loc 1 238 13
	movq	-8(%rbp), %rax	# plat, tmp215
	movl	%edx, 36(%rax)	# _47, plat_77->low
.L38:
# p_plats.c:240: 	    plat->high = P_FindHighestFloorSurrounding(sec);
	.loc 1 240 19
	movq	-16(%rbp), %rax	# sec, tmp216
	movq	%rax, %rdi	# tmp216,
	call	P_FindHighestFloorSurrounding@PLT	#
# p_plats.c:240: 	    plat->high = P_FindHighestFloorSurrounding(sec);
	.loc 1 240 17 discriminator 1
	movq	-8(%rbp), %rdx	# plat, tmp217
	movl	%eax, 40(%rdx)	# _48, plat_77->high
# p_plats.c:242: 	    if (plat->high < sec->floorheight)
	.loc 1 242 14
	movq	-8(%rbp), %rax	# plat, tmp218
	movl	40(%rax), %edx	# plat_77->high, _49
# p_plats.c:242: 	    if (plat->high < sec->floorheight)
	.loc 1 242 26
	movq	-16(%rbp), %rax	# sec, tmp219
	movl	(%rax), %eax	# sec_74->floorheight, _50
# p_plats.c:242: 	    if (plat->high < sec->floorheight)
	.loc 1 242 9
	cmpl	%eax, %edx	# _50, _49
	jge	.L39	#,
# p_plats.c:243: 		plat->high = sec->floorheight;
	.loc 1 243 19
	movq	-16(%rbp), %rax	# sec, tmp220
	movl	(%rax), %edx	# sec_74->floorheight, _51
# p_plats.c:243: 		plat->high = sec->floorheight;
	.loc 1 243 14
	movq	-8(%rbp), %rax	# plat, tmp221
	movl	%edx, 40(%rax)	# _51, plat_77->high
.L39:
# p_plats.c:245: 	    plat->wait = 35*PLATWAIT;
	.loc 1 245 17
	movq	-8(%rbp), %rax	# plat, tmp222
	movl	$105, 44(%rax)	#, plat_77->wait
# p_plats.c:246: 	    plat->status = P_Random()&1;
	.loc 1 246 21
	call	P_Random@PLT	#
# p_plats.c:246: 	    plat->status = P_Random()&1;
	.loc 1 246 31 discriminator 1
	andl	$1, %eax	#, _53
	movl	%eax, %edx	# _53, _54
# p_plats.c:246: 	    plat->status = P_Random()&1;
	.loc 1 246 19 discriminator 1
	movq	-8(%rbp), %rax	# plat, tmp223
	movl	%edx, 52(%rax)	# _54, plat_77->status
# p_plats.c:248: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
	.loc 1 248 29
	movq	-16(%rbp), %rax	# sec, tmp224
	addq	$48, %rax	#, _55
# p_plats.c:248: 	    S_StartSound((mobj_t *)&sec->soundorg,sfx_pstart);
	.loc 1 248 6
	movl	$18, %esi	#,
	movq	%rax, %rdi	# _55,
	call	S_StartSound@PLT	#
# p_plats.c:249: 	    break;
	.loc 1 249 6
	nop	
.L29:
# p_plats.c:251: 	P_AddActivePlat(plat);
	.loc 1 251 2
	movq	-8(%rbp), %rax	# plat, tmp225
	movq	%rax, %rdi	# tmp225,
	call	P_AddActivePlat	#
	jmp	.L26	#
.L43:
# p_plats.c:169: 	    continue;
	.loc 1 169 6
	nop	
.L26:
# p_plats.c:164:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 164 22
	movl	-24(%rbp), %edx	# secnum, tmp226
	movq	-40(%rbp), %rax	# line, tmp227
	movl	%edx, %esi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	P_FindSectorFromLineTag@PLT	#
	movl	%eax, -24(%rbp)	# tmp228, secnum
# p_plats.c:164:     while ((secnum = P_FindSectorFromLineTag(line,secnum)) >= 0)
	.loc 1 164 60 discriminator 1
	cmpl	$0, -24(%rbp)	#, secnum
	jns	.L40	#,
# p_plats.c:253:     return rtn;
	.loc 1 253 12
	movl	-20(%rbp), %eax	# rtn, _73
# p_plats.c:254: }
	.loc 1 254 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	EV_DoPlat, .-EV_DoPlat
	.globl	P_ActivateInStasis
	.type	P_ActivateInStasis, @function
P_ActivateInStasis:
.LFB2:
	.loc 1 259 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# tag, tag
# p_plats.c:262:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 262 12
	movl	$0, -4(%rbp)	#, i
# p_plats.c:262:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 262 5
	jmp	.L45	#
.L47:
# p_plats.c:263: 	if (activeplats[i]
	.loc 1 263 17
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp93
	leaq	activeplats(%rip), %rax	#, tmp94
	movq	(%rdx,%rax), %rax	# activeplats[i_10], _1
# p_plats.c:263: 	if (activeplats[i]
	.loc 1 263 5
	testq	%rax, %rax	# _1
	je	.L46	#,
# p_plats.c:264: 	    && (activeplats[i])->tag == tag
	.loc 1 264 21
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp97
	leaq	activeplats(%rip), %rax	#, tmp98
	movq	(%rdx,%rax), %rax	# activeplats[i_10], _2
# p_plats.c:264: 	    && (activeplats[i])->tag == tag
	.loc 1 264 25
	movl	64(%rax), %eax	# _2->tag, _3
# p_plats.c:264: 	    && (activeplats[i])->tag == tag
	.loc 1 264 6
	cmpl	%eax, -20(%rbp)	# _3, tag
	jne	.L46	#,
# p_plats.c:265: 	    && (activeplats[i])->status == in_stasis)
	.loc 1 265 21
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp101
	leaq	activeplats(%rip), %rax	#, tmp102
	movq	(%rdx,%rax), %rax	# activeplats[i_10], _4
# p_plats.c:265: 	    && (activeplats[i])->status == in_stasis)
	.loc 1 265 25
	movl	52(%rax), %eax	# _4->status, _5
# p_plats.c:265: 	    && (activeplats[i])->status == in_stasis)
	.loc 1 265 6
	cmpl	$3, %eax	#, _5
	jne	.L46	#,
# p_plats.c:267: 	    (activeplats[i])->status = (activeplats[i])->oldstatus;
	.loc 1 267 45
	movl	-4(%rbp), %eax	# i, tmp104
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp105
	leaq	activeplats(%rip), %rax	#, tmp106
	movq	(%rdx,%rax), %rdx	# activeplats[i_10], _6
# p_plats.c:267: 	    (activeplats[i])->status = (activeplats[i])->oldstatus;
	.loc 1 267 18
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp109
	leaq	activeplats(%rip), %rax	#, tmp110
	movq	(%rcx,%rax), %rax	# activeplats[i_10], _7
# p_plats.c:267: 	    (activeplats[i])->status = (activeplats[i])->oldstatus;
	.loc 1 267 49
	movl	56(%rdx), %edx	# _6->oldstatus, _8
# p_plats.c:267: 	    (activeplats[i])->status = (activeplats[i])->oldstatus;
	.loc 1 267 31
	movl	%edx, 52(%rax)	# _8, _7->status
# p_plats.c:268: 	    (activeplats[i])->thinker.function.acp1
	.loc 1 268 18
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp113
	leaq	activeplats(%rip), %rax	#, tmp114
	movq	(%rdx,%rax), %rax	# activeplats[i_10], _9
# p_plats.c:269: 	      = (actionf_p1) T_PlatRaise;
	.loc 1 269 8
	leaq	T_PlatRaise(%rip), %rdx	#, tmp115
	movq	%rdx, 16(%rax)	# tmp115, _9->thinker.function.acp1
.L46:
# p_plats.c:262:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 262 30 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L45:
# p_plats.c:262:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 262 18 discriminator 1
	cmpl	$29, -4(%rbp)	#, i
	jle	.L47	#,
# p_plats.c:271: }
	.loc 1 271 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_ActivateInStasis, .-P_ActivateInStasis
	.globl	EV_StopPlat
	.type	EV_StopPlat, @function
EV_StopPlat:
.LFB3:
	.loc 1 274 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# line, line
# p_plats.c:277:     for (j = 0;j < MAXPLATS;j++)
	.loc 1 277 12
	movl	$0, -4(%rbp)	#, j
# p_plats.c:277:     for (j = 0;j < MAXPLATS;j++)
	.loc 1 277 5
	jmp	.L49	#
.L51:
# p_plats.c:278: 	if (activeplats[j]
	.loc 1 278 17
	movl	-4(%rbp), %eax	# j, tmp95
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp96
	leaq	activeplats(%rip), %rax	#, tmp97
	movq	(%rdx,%rax), %rax	# activeplats[j_13], _1
# p_plats.c:278: 	if (activeplats[j]
	.loc 1 278 5
	testq	%rax, %rax	# _1
	je	.L50	#,
# p_plats.c:279: 	    && ((activeplats[j])->status != in_stasis)
	.loc 1 279 22
	movl	-4(%rbp), %eax	# j, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp100
	leaq	activeplats(%rip), %rax	#, tmp101
	movq	(%rdx,%rax), %rax	# activeplats[j_13], _2
# p_plats.c:279: 	    && ((activeplats[j])->status != in_stasis)
	.loc 1 279 26
	movl	52(%rax), %eax	# _2->status, _3
# p_plats.c:279: 	    && ((activeplats[j])->status != in_stasis)
	.loc 1 279 6
	cmpl	$3, %eax	#, _3
	je	.L50	#,
# p_plats.c:280: 	    && ((activeplats[j])->tag == line->tag))
	.loc 1 280 22
	movl	-4(%rbp), %eax	# j, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp104
	leaq	activeplats(%rip), %rax	#, tmp105
	movq	(%rdx,%rax), %rax	# activeplats[j_13], _4
# p_plats.c:280: 	    && ((activeplats[j])->tag == line->tag))
	.loc 1 280 26
	movl	64(%rax), %edx	# _4->tag, _5
# p_plats.c:280: 	    && ((activeplats[j])->tag == line->tag))
	.loc 1 280 39
	movq	-24(%rbp), %rax	# line, tmp106
	movzwl	28(%rax), %eax	# line_18(D)->tag, _6
	cwtl
# p_plats.c:280: 	    && ((activeplats[j])->tag == line->tag))
	.loc 1 280 6
	cmpl	%eax, %edx	# _7, _5
	jne	.L50	#,
# p_plats.c:282: 	    (activeplats[j])->oldstatus = (activeplats[j])->status;
	.loc 1 282 48
	movl	-4(%rbp), %eax	# j, tmp108
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp109
	leaq	activeplats(%rip), %rax	#, tmp110
	movq	(%rdx,%rax), %rdx	# activeplats[j_13], _8
# p_plats.c:282: 	    (activeplats[j])->oldstatus = (activeplats[j])->status;
	.loc 1 282 18
	movl	-4(%rbp), %eax	# j, tmp112
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp113
	leaq	activeplats(%rip), %rax	#, tmp114
	movq	(%rcx,%rax), %rax	# activeplats[j_13], _9
# p_plats.c:282: 	    (activeplats[j])->oldstatus = (activeplats[j])->status;
	.loc 1 282 52
	movl	52(%rdx), %edx	# _8->status, _10
# p_plats.c:282: 	    (activeplats[j])->oldstatus = (activeplats[j])->status;
	.loc 1 282 34
	movl	%edx, 56(%rax)	# _10, _9->oldstatus
# p_plats.c:283: 	    (activeplats[j])->status = in_stasis;
	.loc 1 283 18
	movl	-4(%rbp), %eax	# j, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp117
	leaq	activeplats(%rip), %rax	#, tmp118
	movq	(%rdx,%rax), %rax	# activeplats[j_13], _11
# p_plats.c:283: 	    (activeplats[j])->status = in_stasis;
	.loc 1 283 31
	movl	$3, 52(%rax)	#, _11->status
# p_plats.c:284: 	    (activeplats[j])->thinker.function.acv = (actionf_v)NULL;
	.loc 1 284 18
	movl	-4(%rbp), %eax	# j, tmp120
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp121
	leaq	activeplats(%rip), %rax	#, tmp122
	movq	(%rdx,%rax), %rax	# activeplats[j_13], _12
# p_plats.c:284: 	    (activeplats[j])->thinker.function.acv = (actionf_v)NULL;
	.loc 1 284 45
	movq	$0, 16(%rax)	#, _12->thinker.function.acv
.L50:
# p_plats.c:277:     for (j = 0;j < MAXPLATS;j++)
	.loc 1 277 30 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L49:
# p_plats.c:277:     for (j = 0;j < MAXPLATS;j++)
	.loc 1 277 18 discriminator 1
	cmpl	$29, -4(%rbp)	#, j
	jle	.L51	#,
# p_plats.c:286: }
	.loc 1 286 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	EV_StopPlat, .-EV_StopPlat
	.section	.rodata
	.align 8
.LC0:
	.string	"P_AddActivePlat: no more plats!"
	.text
	.globl	P_AddActivePlat
	.type	P_AddActivePlat, @function
P_AddActivePlat:
.LFB4:
	.loc 1 289 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# plat, plat
# p_plats.c:292:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 292 12
	movl	$0, -4(%rbp)	#, i
# p_plats.c:292:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 292 5
	jmp	.L53	#
.L56:
# p_plats.c:293: 	if (activeplats[i] == NULL)
	.loc 1 293 17
	movl	-4(%rbp), %eax	# i, tmp84
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp85
	leaq	activeplats(%rip), %rax	#, tmp86
	movq	(%rdx,%rax), %rax	# activeplats[i_2], _1
# p_plats.c:293: 	if (activeplats[i] == NULL)
	.loc 1 293 5
	testq	%rax, %rax	# _1
	jne	.L54	#,
# p_plats.c:295: 	    activeplats[i] = plat;
	.loc 1 295 21
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp89
	leaq	activeplats(%rip), %rdx	#, tmp90
	movq	-24(%rbp), %rax	# plat, tmp91
	movq	%rax, (%rcx,%rdx)	# tmp91, activeplats[i_2]
# p_plats.c:296: 	    return;
	.loc 1 296 6
	jmp	.L52	#
.L54:
# p_plats.c:292:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 292 30 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L53:
# p_plats.c:292:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 292 18 discriminator 1
	cmpl	$29, -4(%rbp)	#, i
	jle	.L56	#,
# p_plats.c:298:     I_Error ("P_AddActivePlat: no more plats!");
	.loc 1 298 5
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L52:
# p_plats.c:299: }
	.loc 1 299 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_AddActivePlat, .-P_AddActivePlat
	.section	.rodata
	.align 8
.LC1:
	.string	"P_RemoveActivePlat: can't find plat!"
	.text
	.globl	P_RemoveActivePlat
	.type	P_RemoveActivePlat, @function
P_RemoveActivePlat:
.LFB5:
	.loc 1 302 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# plat, plat
# p_plats.c:304:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 304 12
	movl	$0, -4(%rbp)	#, i
# p_plats.c:304:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 304 5
	jmp	.L58	#
.L61:
# p_plats.c:305: 	if (plat == activeplats[i])
	.loc 1 305 25
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp89
	leaq	activeplats(%rip), %rax	#, tmp90
	movq	(%rdx,%rax), %rax	# activeplats[i_6], _1
# p_plats.c:305: 	if (plat == activeplats[i])
	.loc 1 305 5
	cmpq	%rax, -24(%rbp)	# _1, plat
	jne	.L59	#,
# p_plats.c:307: 	    (activeplats[i])->sector->specialdata = NULL;
	.loc 1 307 18
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp93
	leaq	activeplats(%rip), %rax	#, tmp94
	movq	(%rdx,%rax), %rax	# activeplats[i_6], _2
# p_plats.c:307: 	    (activeplats[i])->sector->specialdata = NULL;
	.loc 1 307 22
	movq	24(%rax), %rax	# _2->sector, _3
# p_plats.c:307: 	    (activeplats[i])->sector->specialdata = NULL;
	.loc 1 307 44
	movq	$0, 104(%rax)	#, _3->specialdata
# p_plats.c:308: 	    P_RemoveThinker(&(activeplats[i])->thinker);
	.loc 1 308 35
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp97
	leaq	activeplats(%rip), %rax	#, tmp98
	movq	(%rdx,%rax), %rax	# activeplats[i_6], _4
# p_plats.c:308: 	    P_RemoveThinker(&(activeplats[i])->thinker);
	.loc 1 308 6
	movq	%rax, %rdi	# _5,
	call	P_RemoveThinker@PLT	#
# p_plats.c:309: 	    activeplats[i] = NULL;
	.loc 1 309 21
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp101
	leaq	activeplats(%rip), %rax	#, tmp102
	movq	$0, (%rdx,%rax)	#, activeplats[i_6]
# p_plats.c:311: 	    return;
	.loc 1 311 6
	jmp	.L57	#
.L59:
# p_plats.c:304:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 304 30 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L58:
# p_plats.c:304:     for (i = 0;i < MAXPLATS;i++)
	.loc 1 304 18 discriminator 1
	cmpl	$29, -4(%rbp)	#, i
	jle	.L61	#,
# p_plats.c:313:     I_Error ("P_RemoveActivePlat: can't find plat!");
	.loc 1 313 5
	leaq	.LC1(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L57:
# p_plats.c:314: }
	.loc 1 314 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	P_RemoveActivePlat, .-P_RemoveActivePlat
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
	.file 15 "p_spec.h"
	.file 16 "doomstat.h"
	.file 17 "sounds.h"
	.file 18 "p_local.h"
	.file 19 "i_system.h"
	.file 20 "z_zone.h"
	.file 21 "s_sound.h"
	.file 22 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3468
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x23
	.long	.LASF1610
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
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.long	0x2e
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1b
	.long	0x4a
	.uleb128 0x15
	.long	.LASF1601
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x6
	.long	.LASF7
	.byte	0x2
	.byte	0x22
	.byte	0x1c
	.long	0x6b
	.uleb128 0x6
	.long	.LASF8
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0xa3
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0xe
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
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF16
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.long	0xaa
	.uleb128 0x24
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x25
	.byte	0x8
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF18
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x9
	.long	0x84
	.byte	0x4
	.byte	0xa3
	.byte	0x1
	.long	0x16e
	.uleb128 0x2
	.long	.LASF21
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x1
	.uleb128 0x2
	.long	.LASF23
	.byte	0x2
	.uleb128 0x2
	.long	.LASF24
	.byte	0x3
	.uleb128 0x2
	.long	.LASF25
	.byte	0x4
	.uleb128 0x2
	.long	.LASF26
	.byte	0x5
	.uleb128 0x2
	.long	.LASF27
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x84
	.byte	0x4
	.byte	0xb5
	.byte	0x1
	.long	0x1bd
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
	.uleb128 0x2
	.long	.LASF35
	.byte	0x7
	.uleb128 0x2
	.long	.LASF36
	.byte	0x8
	.uleb128 0x2
	.long	.LASF37
	.byte	0x9
	.uleb128 0x2
	.long	.LASF38
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF39
	.byte	0x4
	.byte	0xc5
	.byte	0x3
	.long	0x16e
	.uleb128 0x9
	.long	0x84
	.byte	0x4
	.byte	0xca
	.byte	0x1
	.long	0x1fa
	.uleb128 0x2
	.long	.LASF40
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x1
	.uleb128 0x2
	.long	.LASF42
	.byte	0x2
	.uleb128 0x2
	.long	.LASF43
	.byte	0x3
	.uleb128 0x2
	.long	.LASF44
	.byte	0x4
	.uleb128 0x2
	.long	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0x84
	.byte	0x4
	.byte	0xd7
	.byte	0x1
	.long	0x231
	.uleb128 0x2
	.long	.LASF46
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x1
	.uleb128 0x2
	.long	.LASF48
	.byte	0x2
	.uleb128 0x2
	.long	.LASF49
	.byte	0x3
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF54
	.uleb128 0x6
	.long	.LASF55
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.long	0x114
	.uleb128 0x6
	.long	.LASF56
	.byte	0x6
	.byte	0x4e
	.byte	0x12
	.long	0x84
	.uleb128 0x6
	.long	.LASF57
	.byte	0x7
	.byte	0x29
	.byte	0x11
	.long	0x263
	.uleb128 0x8
	.long	0x268
	.uleb128 0x26
	.long	0x26f
	.uleb128 0x1c
	.byte	0
	.uleb128 0x6
	.long	.LASF58
	.byte	0x7
	.byte	0x2a
	.byte	0x11
	.long	0x27b
	.uleb128 0x8
	.long	0x280
	.uleb128 0x1d
	.long	0x28b
	.uleb128 0x5
	.long	0x11b
	.byte	0
	.uleb128 0x6
	.long	.LASF59
	.byte	0x7
	.byte	0x2b
	.byte	0x11
	.long	0x297
	.uleb128 0x8
	.long	0x29c
	.uleb128 0x1d
	.long	0x2ac
	.uleb128 0x5
	.long	0x11b
	.uleb128 0x5
	.long	0x11b
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.long	0x2d6
	.uleb128 0x1e
	.long	.LASF60
	.byte	0x2f
	.long	0x26f
	.uleb128 0x28
	.string	"acv"
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0x257
	.uleb128 0x1e
	.long	.LASF61
	.byte	0x31
	.long	0x28b
	.byte	0
	.uleb128 0x6
	.long	.LASF62
	.byte	0x7
	.byte	0x33
	.byte	0x3
	.long	0x2ac
	.uleb128 0x6
	.long	.LASF63
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.long	0x2d6
	.uleb128 0x10
	.long	.LASF1352
	.byte	0x18
	.byte	0x7
	.byte	0x40
	.long	0x322
	.uleb128 0x3
	.long	.LASF64
	.byte	0x7
	.byte	0x42
	.byte	0x17
	.long	0x322
	.byte	0
	.uleb128 0x3
	.long	.LASF65
	.byte	0x7
	.byte	0x43
	.byte	0x17
	.long	0x322
	.byte	0x8
	.uleb128 0x3
	.long	.LASF66
	.byte	0x7
	.byte	0x44
	.byte	0xe
	.long	0x2e2
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x2ee
	.uleb128 0x6
	.long	.LASF67
	.byte	0x7
	.byte	0x46
	.byte	0x3
	.long	0x2ee
	.uleb128 0xb
	.long	0x101
	.long	0x343
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x389
	.uleb128 0x7
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x101
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x101
	.byte	0x2
	.uleb128 0x3
	.long	.LASF68
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x101
	.byte	0x4
	.uleb128 0x3
	.long	.LASF69
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x101
	.byte	0x6
	.uleb128 0x3
	.long	.LASF70
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x101
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF71
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x343
	.uleb128 0x9
	.long	0x84
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x6e4
	.uleb128 0x2
	.long	.LASF72
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x1
	.uleb128 0x2
	.long	.LASF74
	.byte	0x2
	.uleb128 0x2
	.long	.LASF75
	.byte	0x3
	.uleb128 0x2
	.long	.LASF76
	.byte	0x4
	.uleb128 0x2
	.long	.LASF77
	.byte	0x5
	.uleb128 0x2
	.long	.LASF78
	.byte	0x6
	.uleb128 0x2
	.long	.LASF79
	.byte	0x7
	.uleb128 0x2
	.long	.LASF80
	.byte	0x8
	.uleb128 0x2
	.long	.LASF81
	.byte	0x9
	.uleb128 0x2
	.long	.LASF82
	.byte	0xa
	.uleb128 0x2
	.long	.LASF83
	.byte	0xb
	.uleb128 0x2
	.long	.LASF84
	.byte	0xc
	.uleb128 0x2
	.long	.LASF85
	.byte	0xd
	.uleb128 0x2
	.long	.LASF86
	.byte	0xe
	.uleb128 0x2
	.long	.LASF87
	.byte	0xf
	.uleb128 0x2
	.long	.LASF88
	.byte	0x10
	.uleb128 0x2
	.long	.LASF89
	.byte	0x11
	.uleb128 0x2
	.long	.LASF90
	.byte	0x12
	.uleb128 0x2
	.long	.LASF91
	.byte	0x13
	.uleb128 0x2
	.long	.LASF92
	.byte	0x14
	.uleb128 0x2
	.long	.LASF93
	.byte	0x15
	.uleb128 0x2
	.long	.LASF94
	.byte	0x16
	.uleb128 0x2
	.long	.LASF95
	.byte	0x17
	.uleb128 0x2
	.long	.LASF96
	.byte	0x18
	.uleb128 0x2
	.long	.LASF97
	.byte	0x19
	.uleb128 0x2
	.long	.LASF98
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF99
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF100
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF101
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF102
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF103
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF104
	.byte	0x20
	.uleb128 0x2
	.long	.LASF105
	.byte	0x21
	.uleb128 0x2
	.long	.LASF106
	.byte	0x22
	.uleb128 0x2
	.long	.LASF107
	.byte	0x23
	.uleb128 0x2
	.long	.LASF108
	.byte	0x24
	.uleb128 0x2
	.long	.LASF109
	.byte	0x25
	.uleb128 0x2
	.long	.LASF110
	.byte	0x26
	.uleb128 0x2
	.long	.LASF111
	.byte	0x27
	.uleb128 0x2
	.long	.LASF112
	.byte	0x28
	.uleb128 0x2
	.long	.LASF113
	.byte	0x29
	.uleb128 0x2
	.long	.LASF114
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF115
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF116
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF117
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF118
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF119
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF120
	.byte	0x30
	.uleb128 0x2
	.long	.LASF121
	.byte	0x31
	.uleb128 0x2
	.long	.LASF122
	.byte	0x32
	.uleb128 0x2
	.long	.LASF123
	.byte	0x33
	.uleb128 0x2
	.long	.LASF124
	.byte	0x34
	.uleb128 0x2
	.long	.LASF125
	.byte	0x35
	.uleb128 0x2
	.long	.LASF126
	.byte	0x36
	.uleb128 0x2
	.long	.LASF127
	.byte	0x37
	.uleb128 0x2
	.long	.LASF128
	.byte	0x38
	.uleb128 0x2
	.long	.LASF129
	.byte	0x39
	.uleb128 0x2
	.long	.LASF130
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF131
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF132
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF133
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF134
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF135
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF136
	.byte	0x40
	.uleb128 0x2
	.long	.LASF137
	.byte	0x41
	.uleb128 0x2
	.long	.LASF138
	.byte	0x42
	.uleb128 0x2
	.long	.LASF139
	.byte	0x43
	.uleb128 0x2
	.long	.LASF140
	.byte	0x44
	.uleb128 0x2
	.long	.LASF141
	.byte	0x45
	.uleb128 0x2
	.long	.LASF142
	.byte	0x46
	.uleb128 0x2
	.long	.LASF143
	.byte	0x47
	.uleb128 0x2
	.long	.LASF144
	.byte	0x48
	.uleb128 0x2
	.long	.LASF145
	.byte	0x49
	.uleb128 0x2
	.long	.LASF146
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF147
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF148
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF149
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF150
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF151
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF152
	.byte	0x50
	.uleb128 0x2
	.long	.LASF153
	.byte	0x51
	.uleb128 0x2
	.long	.LASF154
	.byte	0x52
	.uleb128 0x2
	.long	.LASF155
	.byte	0x53
	.uleb128 0x2
	.long	.LASF156
	.byte	0x54
	.uleb128 0x2
	.long	.LASF157
	.byte	0x55
	.uleb128 0x2
	.long	.LASF158
	.byte	0x56
	.uleb128 0x2
	.long	.LASF159
	.byte	0x57
	.uleb128 0x2
	.long	.LASF160
	.byte	0x58
	.uleb128 0x2
	.long	.LASF161
	.byte	0x59
	.uleb128 0x2
	.long	.LASF162
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF163
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF164
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF165
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF166
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF167
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF168
	.byte	0x60
	.uleb128 0x2
	.long	.LASF169
	.byte	0x61
	.uleb128 0x2
	.long	.LASF170
	.byte	0x62
	.uleb128 0x2
	.long	.LASF171
	.byte	0x63
	.uleb128 0x2
	.long	.LASF172
	.byte	0x64
	.uleb128 0x2
	.long	.LASF173
	.byte	0x65
	.uleb128 0x2
	.long	.LASF174
	.byte	0x66
	.uleb128 0x2
	.long	.LASF175
	.byte	0x67
	.uleb128 0x2
	.long	.LASF176
	.byte	0x68
	.uleb128 0x2
	.long	.LASF177
	.byte	0x69
	.uleb128 0x2
	.long	.LASF178
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF179
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF180
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF181
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF182
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF183
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF184
	.byte	0x70
	.uleb128 0x2
	.long	.LASF185
	.byte	0x71
	.uleb128 0x2
	.long	.LASF186
	.byte	0x72
	.uleb128 0x2
	.long	.LASF187
	.byte	0x73
	.uleb128 0x2
	.long	.LASF188
	.byte	0x74
	.uleb128 0x2
	.long	.LASF189
	.byte	0x75
	.uleb128 0x2
	.long	.LASF190
	.byte	0x76
	.uleb128 0x2
	.long	.LASF191
	.byte	0x77
	.uleb128 0x2
	.long	.LASF192
	.byte	0x78
	.uleb128 0x2
	.long	.LASF193
	.byte	0x79
	.uleb128 0x2
	.long	.LASF194
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF195
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF196
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF197
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF198
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF199
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF200
	.byte	0x80
	.uleb128 0x2
	.long	.LASF201
	.byte	0x81
	.uleb128 0x2
	.long	.LASF202
	.byte	0x82
	.uleb128 0x2
	.long	.LASF203
	.byte	0x83
	.uleb128 0x2
	.long	.LASF204
	.byte	0x84
	.uleb128 0x2
	.long	.LASF205
	.byte	0x85
	.uleb128 0x2
	.long	.LASF206
	.byte	0x86
	.uleb128 0x2
	.long	.LASF207
	.byte	0x87
	.uleb128 0x2
	.long	.LASF208
	.byte	0x88
	.uleb128 0x2
	.long	.LASF209
	.byte	0x89
	.uleb128 0x2
	.long	.LASF210
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF211
	.byte	0x9
	.byte	0xac
	.byte	0x3
	.long	0x395
	.uleb128 0x9
	.long	0x84
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x2075
	.uleb128 0x2
	.long	.LASF212
	.byte	0
	.uleb128 0x2
	.long	.LASF213
	.byte	0x1
	.uleb128 0x2
	.long	.LASF214
	.byte	0x2
	.uleb128 0x2
	.long	.LASF215
	.byte	0x3
	.uleb128 0x2
	.long	.LASF216
	.byte	0x4
	.uleb128 0x2
	.long	.LASF217
	.byte	0x5
	.uleb128 0x2
	.long	.LASF218
	.byte	0x6
	.uleb128 0x2
	.long	.LASF219
	.byte	0x7
	.uleb128 0x2
	.long	.LASF220
	.byte	0x8
	.uleb128 0x2
	.long	.LASF221
	.byte	0x9
	.uleb128 0x2
	.long	.LASF222
	.byte	0xa
	.uleb128 0x2
	.long	.LASF223
	.byte	0xb
	.uleb128 0x2
	.long	.LASF224
	.byte	0xc
	.uleb128 0x2
	.long	.LASF225
	.byte	0xd
	.uleb128 0x2
	.long	.LASF226
	.byte	0xe
	.uleb128 0x2
	.long	.LASF227
	.byte	0xf
	.uleb128 0x2
	.long	.LASF228
	.byte	0x10
	.uleb128 0x2
	.long	.LASF229
	.byte	0x11
	.uleb128 0x2
	.long	.LASF230
	.byte	0x12
	.uleb128 0x2
	.long	.LASF231
	.byte	0x13
	.uleb128 0x2
	.long	.LASF232
	.byte	0x14
	.uleb128 0x2
	.long	.LASF233
	.byte	0x15
	.uleb128 0x2
	.long	.LASF234
	.byte	0x16
	.uleb128 0x2
	.long	.LASF235
	.byte	0x17
	.uleb128 0x2
	.long	.LASF236
	.byte	0x18
	.uleb128 0x2
	.long	.LASF237
	.byte	0x19
	.uleb128 0x2
	.long	.LASF238
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF239
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF240
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF241
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF242
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF243
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF244
	.byte	0x20
	.uleb128 0x2
	.long	.LASF245
	.byte	0x21
	.uleb128 0x2
	.long	.LASF246
	.byte	0x22
	.uleb128 0x2
	.long	.LASF247
	.byte	0x23
	.uleb128 0x2
	.long	.LASF248
	.byte	0x24
	.uleb128 0x2
	.long	.LASF249
	.byte	0x25
	.uleb128 0x2
	.long	.LASF250
	.byte	0x26
	.uleb128 0x2
	.long	.LASF251
	.byte	0x27
	.uleb128 0x2
	.long	.LASF252
	.byte	0x28
	.uleb128 0x2
	.long	.LASF253
	.byte	0x29
	.uleb128 0x2
	.long	.LASF254
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF255
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF256
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF257
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF258
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF259
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF260
	.byte	0x30
	.uleb128 0x2
	.long	.LASF261
	.byte	0x31
	.uleb128 0x2
	.long	.LASF262
	.byte	0x32
	.uleb128 0x2
	.long	.LASF263
	.byte	0x33
	.uleb128 0x2
	.long	.LASF264
	.byte	0x34
	.uleb128 0x2
	.long	.LASF265
	.byte	0x35
	.uleb128 0x2
	.long	.LASF266
	.byte	0x36
	.uleb128 0x2
	.long	.LASF267
	.byte	0x37
	.uleb128 0x2
	.long	.LASF268
	.byte	0x38
	.uleb128 0x2
	.long	.LASF269
	.byte	0x39
	.uleb128 0x2
	.long	.LASF270
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF271
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF272
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF273
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF274
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF275
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF276
	.byte	0x40
	.uleb128 0x2
	.long	.LASF277
	.byte	0x41
	.uleb128 0x2
	.long	.LASF278
	.byte	0x42
	.uleb128 0x2
	.long	.LASF279
	.byte	0x43
	.uleb128 0x2
	.long	.LASF280
	.byte	0x44
	.uleb128 0x2
	.long	.LASF281
	.byte	0x45
	.uleb128 0x2
	.long	.LASF282
	.byte	0x46
	.uleb128 0x2
	.long	.LASF283
	.byte	0x47
	.uleb128 0x2
	.long	.LASF284
	.byte	0x48
	.uleb128 0x2
	.long	.LASF285
	.byte	0x49
	.uleb128 0x2
	.long	.LASF286
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF287
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF288
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF289
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF290
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF291
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF292
	.byte	0x50
	.uleb128 0x2
	.long	.LASF293
	.byte	0x51
	.uleb128 0x2
	.long	.LASF294
	.byte	0x52
	.uleb128 0x2
	.long	.LASF295
	.byte	0x53
	.uleb128 0x2
	.long	.LASF296
	.byte	0x54
	.uleb128 0x2
	.long	.LASF297
	.byte	0x55
	.uleb128 0x2
	.long	.LASF298
	.byte	0x56
	.uleb128 0x2
	.long	.LASF299
	.byte	0x57
	.uleb128 0x2
	.long	.LASF300
	.byte	0x58
	.uleb128 0x2
	.long	.LASF301
	.byte	0x59
	.uleb128 0x2
	.long	.LASF302
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF303
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF304
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF305
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF306
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF307
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF308
	.byte	0x60
	.uleb128 0x2
	.long	.LASF309
	.byte	0x61
	.uleb128 0x2
	.long	.LASF310
	.byte	0x62
	.uleb128 0x2
	.long	.LASF311
	.byte	0x63
	.uleb128 0x2
	.long	.LASF312
	.byte	0x64
	.uleb128 0x2
	.long	.LASF313
	.byte	0x65
	.uleb128 0x2
	.long	.LASF314
	.byte	0x66
	.uleb128 0x2
	.long	.LASF315
	.byte	0x67
	.uleb128 0x2
	.long	.LASF316
	.byte	0x68
	.uleb128 0x2
	.long	.LASF317
	.byte	0x69
	.uleb128 0x2
	.long	.LASF318
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF319
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF320
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF321
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF322
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF323
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF324
	.byte	0x70
	.uleb128 0x2
	.long	.LASF325
	.byte	0x71
	.uleb128 0x2
	.long	.LASF326
	.byte	0x72
	.uleb128 0x2
	.long	.LASF327
	.byte	0x73
	.uleb128 0x2
	.long	.LASF328
	.byte	0x74
	.uleb128 0x2
	.long	.LASF329
	.byte	0x75
	.uleb128 0x2
	.long	.LASF330
	.byte	0x76
	.uleb128 0x2
	.long	.LASF331
	.byte	0x77
	.uleb128 0x2
	.long	.LASF332
	.byte	0x78
	.uleb128 0x2
	.long	.LASF333
	.byte	0x79
	.uleb128 0x2
	.long	.LASF334
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF335
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF336
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF337
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF338
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF339
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF340
	.byte	0x80
	.uleb128 0x2
	.long	.LASF341
	.byte	0x81
	.uleb128 0x2
	.long	.LASF342
	.byte	0x82
	.uleb128 0x2
	.long	.LASF343
	.byte	0x83
	.uleb128 0x2
	.long	.LASF344
	.byte	0x84
	.uleb128 0x2
	.long	.LASF345
	.byte	0x85
	.uleb128 0x2
	.long	.LASF346
	.byte	0x86
	.uleb128 0x2
	.long	.LASF347
	.byte	0x87
	.uleb128 0x2
	.long	.LASF348
	.byte	0x88
	.uleb128 0x2
	.long	.LASF349
	.byte	0x89
	.uleb128 0x2
	.long	.LASF350
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF351
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF352
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF353
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF354
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF355
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF356
	.byte	0x90
	.uleb128 0x2
	.long	.LASF357
	.byte	0x91
	.uleb128 0x2
	.long	.LASF358
	.byte	0x92
	.uleb128 0x2
	.long	.LASF359
	.byte	0x93
	.uleb128 0x2
	.long	.LASF360
	.byte	0x94
	.uleb128 0x2
	.long	.LASF361
	.byte	0x95
	.uleb128 0x2
	.long	.LASF362
	.byte	0x96
	.uleb128 0x2
	.long	.LASF363
	.byte	0x97
	.uleb128 0x2
	.long	.LASF364
	.byte	0x98
	.uleb128 0x2
	.long	.LASF365
	.byte	0x99
	.uleb128 0x2
	.long	.LASF366
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF367
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF368
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF369
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF370
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF371
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF372
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF373
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF374
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF375
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF376
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF377
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF378
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF379
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF380
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF381
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF382
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF383
	.byte	0xab
	.uleb128 0x2
	.long	.LASF384
	.byte	0xac
	.uleb128 0x2
	.long	.LASF385
	.byte	0xad
	.uleb128 0x2
	.long	.LASF386
	.byte	0xae
	.uleb128 0x2
	.long	.LASF387
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF388
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF389
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF390
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF391
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF392
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF393
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF394
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF395
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF396
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF397
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF398
	.byte	0xba
	.uleb128 0x2
	.long	.LASF399
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF400
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF401
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF402
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF403
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF404
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF405
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF406
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF407
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF408
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF409
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF410
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF411
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF412
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF413
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF414
	.byte	0xca
	.uleb128 0x2
	.long	.LASF415
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF416
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF417
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF418
	.byte	0xce
	.uleb128 0x2
	.long	.LASF419
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF420
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF421
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF422
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF423
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF424
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF425
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF426
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF427
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF428
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF429
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF430
	.byte	0xda
	.uleb128 0x2
	.long	.LASF431
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF432
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF433
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF434
	.byte	0xde
	.uleb128 0x2
	.long	.LASF435
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF436
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF437
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF438
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF439
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF440
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF441
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF442
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF443
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF444
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF445
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF446
	.byte	0xea
	.uleb128 0x2
	.long	.LASF447
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF448
	.byte	0xec
	.uleb128 0x2
	.long	.LASF449
	.byte	0xed
	.uleb128 0x2
	.long	.LASF450
	.byte	0xee
	.uleb128 0x2
	.long	.LASF451
	.byte	0xef
	.uleb128 0x2
	.long	.LASF452
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF453
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF454
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF455
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF456
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF457
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF458
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF459
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF460
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF462
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF463
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF464
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF465
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF466
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF467
	.byte	0xff
	.uleb128 0x1
	.long	.LASF468
	.value	0x100
	.uleb128 0x1
	.long	.LASF469
	.value	0x101
	.uleb128 0x1
	.long	.LASF470
	.value	0x102
	.uleb128 0x1
	.long	.LASF471
	.value	0x103
	.uleb128 0x1
	.long	.LASF472
	.value	0x104
	.uleb128 0x1
	.long	.LASF473
	.value	0x105
	.uleb128 0x1
	.long	.LASF474
	.value	0x106
	.uleb128 0x1
	.long	.LASF475
	.value	0x107
	.uleb128 0x1
	.long	.LASF476
	.value	0x108
	.uleb128 0x1
	.long	.LASF477
	.value	0x109
	.uleb128 0x1
	.long	.LASF478
	.value	0x10a
	.uleb128 0x1
	.long	.LASF479
	.value	0x10b
	.uleb128 0x1
	.long	.LASF480
	.value	0x10c
	.uleb128 0x1
	.long	.LASF481
	.value	0x10d
	.uleb128 0x1
	.long	.LASF482
	.value	0x10e
	.uleb128 0x1
	.long	.LASF483
	.value	0x10f
	.uleb128 0x1
	.long	.LASF484
	.value	0x110
	.uleb128 0x1
	.long	.LASF485
	.value	0x111
	.uleb128 0x1
	.long	.LASF486
	.value	0x112
	.uleb128 0x1
	.long	.LASF487
	.value	0x113
	.uleb128 0x1
	.long	.LASF488
	.value	0x114
	.uleb128 0x1
	.long	.LASF489
	.value	0x115
	.uleb128 0x1
	.long	.LASF490
	.value	0x116
	.uleb128 0x1
	.long	.LASF491
	.value	0x117
	.uleb128 0x1
	.long	.LASF492
	.value	0x118
	.uleb128 0x1
	.long	.LASF493
	.value	0x119
	.uleb128 0x1
	.long	.LASF494
	.value	0x11a
	.uleb128 0x1
	.long	.LASF495
	.value	0x11b
	.uleb128 0x1
	.long	.LASF496
	.value	0x11c
	.uleb128 0x1
	.long	.LASF497
	.value	0x11d
	.uleb128 0x1
	.long	.LASF498
	.value	0x11e
	.uleb128 0x1
	.long	.LASF499
	.value	0x11f
	.uleb128 0x1
	.long	.LASF500
	.value	0x120
	.uleb128 0x1
	.long	.LASF501
	.value	0x121
	.uleb128 0x1
	.long	.LASF502
	.value	0x122
	.uleb128 0x1
	.long	.LASF503
	.value	0x123
	.uleb128 0x1
	.long	.LASF504
	.value	0x124
	.uleb128 0x1
	.long	.LASF505
	.value	0x125
	.uleb128 0x1
	.long	.LASF506
	.value	0x126
	.uleb128 0x1
	.long	.LASF507
	.value	0x127
	.uleb128 0x1
	.long	.LASF508
	.value	0x128
	.uleb128 0x1
	.long	.LASF509
	.value	0x129
	.uleb128 0x1
	.long	.LASF510
	.value	0x12a
	.uleb128 0x1
	.long	.LASF511
	.value	0x12b
	.uleb128 0x1
	.long	.LASF512
	.value	0x12c
	.uleb128 0x1
	.long	.LASF513
	.value	0x12d
	.uleb128 0x1
	.long	.LASF514
	.value	0x12e
	.uleb128 0x1
	.long	.LASF515
	.value	0x12f
	.uleb128 0x1
	.long	.LASF516
	.value	0x130
	.uleb128 0x1
	.long	.LASF517
	.value	0x131
	.uleb128 0x1
	.long	.LASF518
	.value	0x132
	.uleb128 0x1
	.long	.LASF519
	.value	0x133
	.uleb128 0x1
	.long	.LASF520
	.value	0x134
	.uleb128 0x1
	.long	.LASF521
	.value	0x135
	.uleb128 0x1
	.long	.LASF522
	.value	0x136
	.uleb128 0x1
	.long	.LASF523
	.value	0x137
	.uleb128 0x1
	.long	.LASF524
	.value	0x138
	.uleb128 0x1
	.long	.LASF525
	.value	0x139
	.uleb128 0x1
	.long	.LASF526
	.value	0x13a
	.uleb128 0x1
	.long	.LASF527
	.value	0x13b
	.uleb128 0x1
	.long	.LASF528
	.value	0x13c
	.uleb128 0x1
	.long	.LASF529
	.value	0x13d
	.uleb128 0x1
	.long	.LASF530
	.value	0x13e
	.uleb128 0x1
	.long	.LASF531
	.value	0x13f
	.uleb128 0x1
	.long	.LASF532
	.value	0x140
	.uleb128 0x1
	.long	.LASF533
	.value	0x141
	.uleb128 0x1
	.long	.LASF534
	.value	0x142
	.uleb128 0x1
	.long	.LASF535
	.value	0x143
	.uleb128 0x1
	.long	.LASF536
	.value	0x144
	.uleb128 0x1
	.long	.LASF537
	.value	0x145
	.uleb128 0x1
	.long	.LASF538
	.value	0x146
	.uleb128 0x1
	.long	.LASF539
	.value	0x147
	.uleb128 0x1
	.long	.LASF540
	.value	0x148
	.uleb128 0x1
	.long	.LASF541
	.value	0x149
	.uleb128 0x1
	.long	.LASF542
	.value	0x14a
	.uleb128 0x1
	.long	.LASF543
	.value	0x14b
	.uleb128 0x1
	.long	.LASF544
	.value	0x14c
	.uleb128 0x1
	.long	.LASF545
	.value	0x14d
	.uleb128 0x1
	.long	.LASF546
	.value	0x14e
	.uleb128 0x1
	.long	.LASF547
	.value	0x14f
	.uleb128 0x1
	.long	.LASF548
	.value	0x150
	.uleb128 0x1
	.long	.LASF549
	.value	0x151
	.uleb128 0x1
	.long	.LASF550
	.value	0x152
	.uleb128 0x1
	.long	.LASF551
	.value	0x153
	.uleb128 0x1
	.long	.LASF552
	.value	0x154
	.uleb128 0x1
	.long	.LASF553
	.value	0x155
	.uleb128 0x1
	.long	.LASF554
	.value	0x156
	.uleb128 0x1
	.long	.LASF555
	.value	0x157
	.uleb128 0x1
	.long	.LASF556
	.value	0x158
	.uleb128 0x1
	.long	.LASF557
	.value	0x159
	.uleb128 0x1
	.long	.LASF558
	.value	0x15a
	.uleb128 0x1
	.long	.LASF559
	.value	0x15b
	.uleb128 0x1
	.long	.LASF560
	.value	0x15c
	.uleb128 0x1
	.long	.LASF561
	.value	0x15d
	.uleb128 0x1
	.long	.LASF562
	.value	0x15e
	.uleb128 0x1
	.long	.LASF563
	.value	0x15f
	.uleb128 0x1
	.long	.LASF564
	.value	0x160
	.uleb128 0x1
	.long	.LASF565
	.value	0x161
	.uleb128 0x1
	.long	.LASF566
	.value	0x162
	.uleb128 0x1
	.long	.LASF567
	.value	0x163
	.uleb128 0x1
	.long	.LASF568
	.value	0x164
	.uleb128 0x1
	.long	.LASF569
	.value	0x165
	.uleb128 0x1
	.long	.LASF570
	.value	0x166
	.uleb128 0x1
	.long	.LASF571
	.value	0x167
	.uleb128 0x1
	.long	.LASF572
	.value	0x168
	.uleb128 0x1
	.long	.LASF573
	.value	0x169
	.uleb128 0x1
	.long	.LASF574
	.value	0x16a
	.uleb128 0x1
	.long	.LASF575
	.value	0x16b
	.uleb128 0x1
	.long	.LASF576
	.value	0x16c
	.uleb128 0x1
	.long	.LASF577
	.value	0x16d
	.uleb128 0x1
	.long	.LASF578
	.value	0x16e
	.uleb128 0x1
	.long	.LASF579
	.value	0x16f
	.uleb128 0x1
	.long	.LASF580
	.value	0x170
	.uleb128 0x1
	.long	.LASF581
	.value	0x171
	.uleb128 0x1
	.long	.LASF582
	.value	0x172
	.uleb128 0x1
	.long	.LASF583
	.value	0x173
	.uleb128 0x1
	.long	.LASF584
	.value	0x174
	.uleb128 0x1
	.long	.LASF585
	.value	0x175
	.uleb128 0x1
	.long	.LASF586
	.value	0x176
	.uleb128 0x1
	.long	.LASF587
	.value	0x177
	.uleb128 0x1
	.long	.LASF588
	.value	0x178
	.uleb128 0x1
	.long	.LASF589
	.value	0x179
	.uleb128 0x1
	.long	.LASF590
	.value	0x17a
	.uleb128 0x1
	.long	.LASF591
	.value	0x17b
	.uleb128 0x1
	.long	.LASF592
	.value	0x17c
	.uleb128 0x1
	.long	.LASF593
	.value	0x17d
	.uleb128 0x1
	.long	.LASF594
	.value	0x17e
	.uleb128 0x1
	.long	.LASF595
	.value	0x17f
	.uleb128 0x1
	.long	.LASF596
	.value	0x180
	.uleb128 0x1
	.long	.LASF597
	.value	0x181
	.uleb128 0x1
	.long	.LASF598
	.value	0x182
	.uleb128 0x1
	.long	.LASF599
	.value	0x183
	.uleb128 0x1
	.long	.LASF600
	.value	0x184
	.uleb128 0x1
	.long	.LASF601
	.value	0x185
	.uleb128 0x1
	.long	.LASF602
	.value	0x186
	.uleb128 0x1
	.long	.LASF603
	.value	0x187
	.uleb128 0x1
	.long	.LASF604
	.value	0x188
	.uleb128 0x1
	.long	.LASF605
	.value	0x189
	.uleb128 0x1
	.long	.LASF606
	.value	0x18a
	.uleb128 0x1
	.long	.LASF607
	.value	0x18b
	.uleb128 0x1
	.long	.LASF608
	.value	0x18c
	.uleb128 0x1
	.long	.LASF609
	.value	0x18d
	.uleb128 0x1
	.long	.LASF610
	.value	0x18e
	.uleb128 0x1
	.long	.LASF611
	.value	0x18f
	.uleb128 0x1
	.long	.LASF612
	.value	0x190
	.uleb128 0x1
	.long	.LASF613
	.value	0x191
	.uleb128 0x1
	.long	.LASF614
	.value	0x192
	.uleb128 0x1
	.long	.LASF615
	.value	0x193
	.uleb128 0x1
	.long	.LASF616
	.value	0x194
	.uleb128 0x1
	.long	.LASF617
	.value	0x195
	.uleb128 0x1
	.long	.LASF618
	.value	0x196
	.uleb128 0x1
	.long	.LASF619
	.value	0x197
	.uleb128 0x1
	.long	.LASF620
	.value	0x198
	.uleb128 0x1
	.long	.LASF621
	.value	0x199
	.uleb128 0x1
	.long	.LASF622
	.value	0x19a
	.uleb128 0x1
	.long	.LASF623
	.value	0x19b
	.uleb128 0x1
	.long	.LASF624
	.value	0x19c
	.uleb128 0x1
	.long	.LASF625
	.value	0x19d
	.uleb128 0x1
	.long	.LASF626
	.value	0x19e
	.uleb128 0x1
	.long	.LASF627
	.value	0x19f
	.uleb128 0x1
	.long	.LASF628
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF629
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF630
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF631
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF632
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF633
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF634
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF635
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF636
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF637
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF638
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF639
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF640
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF641
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF642
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF643
	.value	0x1af
	.uleb128 0x1
	.long	.LASF644
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF645
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF646
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF647
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF648
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF649
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF650
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF651
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF652
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF653
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF654
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF655
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF656
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF657
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF658
	.value	0x1be
	.uleb128 0x1
	.long	.LASF659
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF660
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF661
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF662
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF663
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF664
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF665
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF666
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF667
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF668
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF669
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF670
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF671
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF672
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF673
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF674
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF675
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF676
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF677
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF678
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF679
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF680
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF681
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF682
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF683
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF684
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF685
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF686
	.value	0x1da
	.uleb128 0x1
	.long	.LASF687
	.value	0x1db
	.uleb128 0x1
	.long	.LASF688
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF689
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF690
	.value	0x1de
	.uleb128 0x1
	.long	.LASF691
	.value	0x1df
	.uleb128 0x1
	.long	.LASF692
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF693
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF694
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF695
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF696
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF697
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF698
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF699
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF700
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF701
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF702
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF703
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF704
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF705
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF706
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF707
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF708
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF709
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF710
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF711
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF712
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF713
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF714
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF715
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF716
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF717
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF718
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF719
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF720
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF721
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF722
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF723
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF724
	.value	0x200
	.uleb128 0x1
	.long	.LASF725
	.value	0x201
	.uleb128 0x1
	.long	.LASF726
	.value	0x202
	.uleb128 0x1
	.long	.LASF727
	.value	0x203
	.uleb128 0x1
	.long	.LASF728
	.value	0x204
	.uleb128 0x1
	.long	.LASF729
	.value	0x205
	.uleb128 0x1
	.long	.LASF730
	.value	0x206
	.uleb128 0x1
	.long	.LASF731
	.value	0x207
	.uleb128 0x1
	.long	.LASF732
	.value	0x208
	.uleb128 0x1
	.long	.LASF733
	.value	0x209
	.uleb128 0x1
	.long	.LASF734
	.value	0x20a
	.uleb128 0x1
	.long	.LASF735
	.value	0x20b
	.uleb128 0x1
	.long	.LASF736
	.value	0x20c
	.uleb128 0x1
	.long	.LASF737
	.value	0x20d
	.uleb128 0x1
	.long	.LASF738
	.value	0x20e
	.uleb128 0x1
	.long	.LASF739
	.value	0x20f
	.uleb128 0x1
	.long	.LASF740
	.value	0x210
	.uleb128 0x1
	.long	.LASF741
	.value	0x211
	.uleb128 0x1
	.long	.LASF742
	.value	0x212
	.uleb128 0x1
	.long	.LASF743
	.value	0x213
	.uleb128 0x1
	.long	.LASF744
	.value	0x214
	.uleb128 0x1
	.long	.LASF745
	.value	0x215
	.uleb128 0x1
	.long	.LASF746
	.value	0x216
	.uleb128 0x1
	.long	.LASF747
	.value	0x217
	.uleb128 0x1
	.long	.LASF748
	.value	0x218
	.uleb128 0x1
	.long	.LASF749
	.value	0x219
	.uleb128 0x1
	.long	.LASF750
	.value	0x21a
	.uleb128 0x1
	.long	.LASF751
	.value	0x21b
	.uleb128 0x1
	.long	.LASF752
	.value	0x21c
	.uleb128 0x1
	.long	.LASF753
	.value	0x21d
	.uleb128 0x1
	.long	.LASF754
	.value	0x21e
	.uleb128 0x1
	.long	.LASF755
	.value	0x21f
	.uleb128 0x1
	.long	.LASF756
	.value	0x220
	.uleb128 0x1
	.long	.LASF757
	.value	0x221
	.uleb128 0x1
	.long	.LASF758
	.value	0x222
	.uleb128 0x1
	.long	.LASF759
	.value	0x223
	.uleb128 0x1
	.long	.LASF760
	.value	0x224
	.uleb128 0x1
	.long	.LASF761
	.value	0x225
	.uleb128 0x1
	.long	.LASF762
	.value	0x226
	.uleb128 0x1
	.long	.LASF763
	.value	0x227
	.uleb128 0x1
	.long	.LASF764
	.value	0x228
	.uleb128 0x1
	.long	.LASF765
	.value	0x229
	.uleb128 0x1
	.long	.LASF766
	.value	0x22a
	.uleb128 0x1
	.long	.LASF767
	.value	0x22b
	.uleb128 0x1
	.long	.LASF768
	.value	0x22c
	.uleb128 0x1
	.long	.LASF769
	.value	0x22d
	.uleb128 0x1
	.long	.LASF770
	.value	0x22e
	.uleb128 0x1
	.long	.LASF771
	.value	0x22f
	.uleb128 0x1
	.long	.LASF772
	.value	0x230
	.uleb128 0x1
	.long	.LASF773
	.value	0x231
	.uleb128 0x1
	.long	.LASF774
	.value	0x232
	.uleb128 0x1
	.long	.LASF775
	.value	0x233
	.uleb128 0x1
	.long	.LASF776
	.value	0x234
	.uleb128 0x1
	.long	.LASF777
	.value	0x235
	.uleb128 0x1
	.long	.LASF778
	.value	0x236
	.uleb128 0x1
	.long	.LASF779
	.value	0x237
	.uleb128 0x1
	.long	.LASF780
	.value	0x238
	.uleb128 0x1
	.long	.LASF781
	.value	0x239
	.uleb128 0x1
	.long	.LASF782
	.value	0x23a
	.uleb128 0x1
	.long	.LASF783
	.value	0x23b
	.uleb128 0x1
	.long	.LASF784
	.value	0x23c
	.uleb128 0x1
	.long	.LASF785
	.value	0x23d
	.uleb128 0x1
	.long	.LASF786
	.value	0x23e
	.uleb128 0x1
	.long	.LASF787
	.value	0x23f
	.uleb128 0x1
	.long	.LASF788
	.value	0x240
	.uleb128 0x1
	.long	.LASF789
	.value	0x241
	.uleb128 0x1
	.long	.LASF790
	.value	0x242
	.uleb128 0x1
	.long	.LASF791
	.value	0x243
	.uleb128 0x1
	.long	.LASF792
	.value	0x244
	.uleb128 0x1
	.long	.LASF793
	.value	0x245
	.uleb128 0x1
	.long	.LASF794
	.value	0x246
	.uleb128 0x1
	.long	.LASF795
	.value	0x247
	.uleb128 0x1
	.long	.LASF796
	.value	0x248
	.uleb128 0x1
	.long	.LASF797
	.value	0x249
	.uleb128 0x1
	.long	.LASF798
	.value	0x24a
	.uleb128 0x1
	.long	.LASF799
	.value	0x24b
	.uleb128 0x1
	.long	.LASF800
	.value	0x24c
	.uleb128 0x1
	.long	.LASF801
	.value	0x24d
	.uleb128 0x1
	.long	.LASF802
	.value	0x24e
	.uleb128 0x1
	.long	.LASF803
	.value	0x24f
	.uleb128 0x1
	.long	.LASF804
	.value	0x250
	.uleb128 0x1
	.long	.LASF805
	.value	0x251
	.uleb128 0x1
	.long	.LASF806
	.value	0x252
	.uleb128 0x1
	.long	.LASF807
	.value	0x253
	.uleb128 0x1
	.long	.LASF808
	.value	0x254
	.uleb128 0x1
	.long	.LASF809
	.value	0x255
	.uleb128 0x1
	.long	.LASF810
	.value	0x256
	.uleb128 0x1
	.long	.LASF811
	.value	0x257
	.uleb128 0x1
	.long	.LASF812
	.value	0x258
	.uleb128 0x1
	.long	.LASF813
	.value	0x259
	.uleb128 0x1
	.long	.LASF814
	.value	0x25a
	.uleb128 0x1
	.long	.LASF815
	.value	0x25b
	.uleb128 0x1
	.long	.LASF816
	.value	0x25c
	.uleb128 0x1
	.long	.LASF817
	.value	0x25d
	.uleb128 0x1
	.long	.LASF818
	.value	0x25e
	.uleb128 0x1
	.long	.LASF819
	.value	0x25f
	.uleb128 0x1
	.long	.LASF820
	.value	0x260
	.uleb128 0x1
	.long	.LASF821
	.value	0x261
	.uleb128 0x1
	.long	.LASF822
	.value	0x262
	.uleb128 0x1
	.long	.LASF823
	.value	0x263
	.uleb128 0x1
	.long	.LASF824
	.value	0x264
	.uleb128 0x1
	.long	.LASF825
	.value	0x265
	.uleb128 0x1
	.long	.LASF826
	.value	0x266
	.uleb128 0x1
	.long	.LASF827
	.value	0x267
	.uleb128 0x1
	.long	.LASF828
	.value	0x268
	.uleb128 0x1
	.long	.LASF829
	.value	0x269
	.uleb128 0x1
	.long	.LASF830
	.value	0x26a
	.uleb128 0x1
	.long	.LASF831
	.value	0x26b
	.uleb128 0x1
	.long	.LASF832
	.value	0x26c
	.uleb128 0x1
	.long	.LASF833
	.value	0x26d
	.uleb128 0x1
	.long	.LASF834
	.value	0x26e
	.uleb128 0x1
	.long	.LASF835
	.value	0x26f
	.uleb128 0x1
	.long	.LASF836
	.value	0x270
	.uleb128 0x1
	.long	.LASF837
	.value	0x271
	.uleb128 0x1
	.long	.LASF838
	.value	0x272
	.uleb128 0x1
	.long	.LASF839
	.value	0x273
	.uleb128 0x1
	.long	.LASF840
	.value	0x274
	.uleb128 0x1
	.long	.LASF841
	.value	0x275
	.uleb128 0x1
	.long	.LASF842
	.value	0x276
	.uleb128 0x1
	.long	.LASF843
	.value	0x277
	.uleb128 0x1
	.long	.LASF844
	.value	0x278
	.uleb128 0x1
	.long	.LASF845
	.value	0x279
	.uleb128 0x1
	.long	.LASF846
	.value	0x27a
	.uleb128 0x1
	.long	.LASF847
	.value	0x27b
	.uleb128 0x1
	.long	.LASF848
	.value	0x27c
	.uleb128 0x1
	.long	.LASF849
	.value	0x27d
	.uleb128 0x1
	.long	.LASF850
	.value	0x27e
	.uleb128 0x1
	.long	.LASF851
	.value	0x27f
	.uleb128 0x1
	.long	.LASF852
	.value	0x280
	.uleb128 0x1
	.long	.LASF853
	.value	0x281
	.uleb128 0x1
	.long	.LASF854
	.value	0x282
	.uleb128 0x1
	.long	.LASF855
	.value	0x283
	.uleb128 0x1
	.long	.LASF856
	.value	0x284
	.uleb128 0x1
	.long	.LASF857
	.value	0x285
	.uleb128 0x1
	.long	.LASF858
	.value	0x286
	.uleb128 0x1
	.long	.LASF859
	.value	0x287
	.uleb128 0x1
	.long	.LASF860
	.value	0x288
	.uleb128 0x1
	.long	.LASF861
	.value	0x289
	.uleb128 0x1
	.long	.LASF862
	.value	0x28a
	.uleb128 0x1
	.long	.LASF863
	.value	0x28b
	.uleb128 0x1
	.long	.LASF864
	.value	0x28c
	.uleb128 0x1
	.long	.LASF865
	.value	0x28d
	.uleb128 0x1
	.long	.LASF866
	.value	0x28e
	.uleb128 0x1
	.long	.LASF867
	.value	0x28f
	.uleb128 0x1
	.long	.LASF868
	.value	0x290
	.uleb128 0x1
	.long	.LASF869
	.value	0x291
	.uleb128 0x1
	.long	.LASF870
	.value	0x292
	.uleb128 0x1
	.long	.LASF871
	.value	0x293
	.uleb128 0x1
	.long	.LASF872
	.value	0x294
	.uleb128 0x1
	.long	.LASF873
	.value	0x295
	.uleb128 0x1
	.long	.LASF874
	.value	0x296
	.uleb128 0x1
	.long	.LASF875
	.value	0x297
	.uleb128 0x1
	.long	.LASF876
	.value	0x298
	.uleb128 0x1
	.long	.LASF877
	.value	0x299
	.uleb128 0x1
	.long	.LASF878
	.value	0x29a
	.uleb128 0x1
	.long	.LASF879
	.value	0x29b
	.uleb128 0x1
	.long	.LASF880
	.value	0x29c
	.uleb128 0x1
	.long	.LASF881
	.value	0x29d
	.uleb128 0x1
	.long	.LASF882
	.value	0x29e
	.uleb128 0x1
	.long	.LASF883
	.value	0x29f
	.uleb128 0x1
	.long	.LASF884
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF885
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF886
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF887
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF888
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF889
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF890
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF891
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF892
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF893
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF894
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF895
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF896
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF897
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF898
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF899
	.value	0x2af
	.uleb128 0x1
	.long	.LASF900
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF901
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF902
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF903
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF904
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF905
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF906
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF907
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF908
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF909
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF910
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF911
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF912
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF913
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF914
	.value	0x2be
	.uleb128 0x1
	.long	.LASF915
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF916
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF917
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF918
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF919
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF920
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF921
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF922
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF923
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF924
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF925
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF926
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF927
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF928
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF929
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF930
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF931
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF932
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF933
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF934
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF935
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF936
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF937
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF938
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF939
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF940
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF941
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF942
	.value	0x2da
	.uleb128 0x1
	.long	.LASF943
	.value	0x2db
	.uleb128 0x1
	.long	.LASF944
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF945
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF946
	.value	0x2de
	.uleb128 0x1
	.long	.LASF947
	.value	0x2df
	.uleb128 0x1
	.long	.LASF948
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF949
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF950
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF951
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF952
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF953
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF954
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF955
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF956
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF957
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF958
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF959
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF960
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF961
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF962
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF963
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF964
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF965
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF966
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF967
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF968
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF969
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF970
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF971
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF972
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF973
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF974
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF975
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF976
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF977
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF978
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF979
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF980
	.value	0x300
	.uleb128 0x1
	.long	.LASF981
	.value	0x301
	.uleb128 0x1
	.long	.LASF982
	.value	0x302
	.uleb128 0x1
	.long	.LASF983
	.value	0x303
	.uleb128 0x1
	.long	.LASF984
	.value	0x304
	.uleb128 0x1
	.long	.LASF985
	.value	0x305
	.uleb128 0x1
	.long	.LASF986
	.value	0x306
	.uleb128 0x1
	.long	.LASF987
	.value	0x307
	.uleb128 0x1
	.long	.LASF988
	.value	0x308
	.uleb128 0x1
	.long	.LASF989
	.value	0x309
	.uleb128 0x1
	.long	.LASF990
	.value	0x30a
	.uleb128 0x1
	.long	.LASF991
	.value	0x30b
	.uleb128 0x1
	.long	.LASF992
	.value	0x30c
	.uleb128 0x1
	.long	.LASF993
	.value	0x30d
	.uleb128 0x1
	.long	.LASF994
	.value	0x30e
	.uleb128 0x1
	.long	.LASF995
	.value	0x30f
	.uleb128 0x1
	.long	.LASF996
	.value	0x310
	.uleb128 0x1
	.long	.LASF997
	.value	0x311
	.uleb128 0x1
	.long	.LASF998
	.value	0x312
	.uleb128 0x1
	.long	.LASF999
	.value	0x313
	.uleb128 0x1
	.long	.LASF1000
	.value	0x314
	.uleb128 0x1
	.long	.LASF1001
	.value	0x315
	.uleb128 0x1
	.long	.LASF1002
	.value	0x316
	.uleb128 0x1
	.long	.LASF1003
	.value	0x317
	.uleb128 0x1
	.long	.LASF1004
	.value	0x318
	.uleb128 0x1
	.long	.LASF1005
	.value	0x319
	.uleb128 0x1
	.long	.LASF1006
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1007
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1008
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1009
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1010
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1011
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1012
	.value	0x320
	.uleb128 0x1
	.long	.LASF1013
	.value	0x321
	.uleb128 0x1
	.long	.LASF1014
	.value	0x322
	.uleb128 0x1
	.long	.LASF1015
	.value	0x323
	.uleb128 0x1
	.long	.LASF1016
	.value	0x324
	.uleb128 0x1
	.long	.LASF1017
	.value	0x325
	.uleb128 0x1
	.long	.LASF1018
	.value	0x326
	.uleb128 0x1
	.long	.LASF1019
	.value	0x327
	.uleb128 0x1
	.long	.LASF1020
	.value	0x328
	.uleb128 0x1
	.long	.LASF1021
	.value	0x329
	.uleb128 0x1
	.long	.LASF1022
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1023
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1024
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1025
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1026
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1027
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1028
	.value	0x330
	.uleb128 0x1
	.long	.LASF1029
	.value	0x331
	.uleb128 0x1
	.long	.LASF1030
	.value	0x332
	.uleb128 0x1
	.long	.LASF1031
	.value	0x333
	.uleb128 0x1
	.long	.LASF1032
	.value	0x334
	.uleb128 0x1
	.long	.LASF1033
	.value	0x335
	.uleb128 0x1
	.long	.LASF1034
	.value	0x336
	.uleb128 0x1
	.long	.LASF1035
	.value	0x337
	.uleb128 0x1
	.long	.LASF1036
	.value	0x338
	.uleb128 0x1
	.long	.LASF1037
	.value	0x339
	.uleb128 0x1
	.long	.LASF1038
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1039
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1040
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1041
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1042
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1043
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1044
	.value	0x340
	.uleb128 0x1
	.long	.LASF1045
	.value	0x341
	.uleb128 0x1
	.long	.LASF1046
	.value	0x342
	.uleb128 0x1
	.long	.LASF1047
	.value	0x343
	.uleb128 0x1
	.long	.LASF1048
	.value	0x344
	.uleb128 0x1
	.long	.LASF1049
	.value	0x345
	.uleb128 0x1
	.long	.LASF1050
	.value	0x346
	.uleb128 0x1
	.long	.LASF1051
	.value	0x347
	.uleb128 0x1
	.long	.LASF1052
	.value	0x348
	.uleb128 0x1
	.long	.LASF1053
	.value	0x349
	.uleb128 0x1
	.long	.LASF1054
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1055
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1056
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1057
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1058
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1059
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1060
	.value	0x350
	.uleb128 0x1
	.long	.LASF1061
	.value	0x351
	.uleb128 0x1
	.long	.LASF1062
	.value	0x352
	.uleb128 0x1
	.long	.LASF1063
	.value	0x353
	.uleb128 0x1
	.long	.LASF1064
	.value	0x354
	.uleb128 0x1
	.long	.LASF1065
	.value	0x355
	.uleb128 0x1
	.long	.LASF1066
	.value	0x356
	.uleb128 0x1
	.long	.LASF1067
	.value	0x357
	.uleb128 0x1
	.long	.LASF1068
	.value	0x358
	.uleb128 0x1
	.long	.LASF1069
	.value	0x359
	.uleb128 0x1
	.long	.LASF1070
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1071
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1072
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1073
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1074
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1075
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1076
	.value	0x360
	.uleb128 0x1
	.long	.LASF1077
	.value	0x361
	.uleb128 0x1
	.long	.LASF1078
	.value	0x362
	.uleb128 0x1
	.long	.LASF1079
	.value	0x363
	.uleb128 0x1
	.long	.LASF1080
	.value	0x364
	.uleb128 0x1
	.long	.LASF1081
	.value	0x365
	.uleb128 0x1
	.long	.LASF1082
	.value	0x366
	.uleb128 0x1
	.long	.LASF1083
	.value	0x367
	.uleb128 0x1
	.long	.LASF1084
	.value	0x368
	.uleb128 0x1
	.long	.LASF1085
	.value	0x369
	.uleb128 0x1
	.long	.LASF1086
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1087
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1088
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1089
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1090
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1091
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1092
	.value	0x370
	.uleb128 0x1
	.long	.LASF1093
	.value	0x371
	.uleb128 0x1
	.long	.LASF1094
	.value	0x372
	.uleb128 0x1
	.long	.LASF1095
	.value	0x373
	.uleb128 0x1
	.long	.LASF1096
	.value	0x374
	.uleb128 0x1
	.long	.LASF1097
	.value	0x375
	.uleb128 0x1
	.long	.LASF1098
	.value	0x376
	.uleb128 0x1
	.long	.LASF1099
	.value	0x377
	.uleb128 0x1
	.long	.LASF1100
	.value	0x378
	.uleb128 0x1
	.long	.LASF1101
	.value	0x379
	.uleb128 0x1
	.long	.LASF1102
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1103
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1104
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1105
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1106
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1107
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1108
	.value	0x380
	.uleb128 0x1
	.long	.LASF1109
	.value	0x381
	.uleb128 0x1
	.long	.LASF1110
	.value	0x382
	.uleb128 0x1
	.long	.LASF1111
	.value	0x383
	.uleb128 0x1
	.long	.LASF1112
	.value	0x384
	.uleb128 0x1
	.long	.LASF1113
	.value	0x385
	.uleb128 0x1
	.long	.LASF1114
	.value	0x386
	.uleb128 0x1
	.long	.LASF1115
	.value	0x387
	.uleb128 0x1
	.long	.LASF1116
	.value	0x388
	.uleb128 0x1
	.long	.LASF1117
	.value	0x389
	.uleb128 0x1
	.long	.LASF1118
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1119
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1120
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1121
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1122
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1123
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1124
	.value	0x390
	.uleb128 0x1
	.long	.LASF1125
	.value	0x391
	.uleb128 0x1
	.long	.LASF1126
	.value	0x392
	.uleb128 0x1
	.long	.LASF1127
	.value	0x393
	.uleb128 0x1
	.long	.LASF1128
	.value	0x394
	.uleb128 0x1
	.long	.LASF1129
	.value	0x395
	.uleb128 0x1
	.long	.LASF1130
	.value	0x396
	.uleb128 0x1
	.long	.LASF1131
	.value	0x397
	.uleb128 0x1
	.long	.LASF1132
	.value	0x398
	.uleb128 0x1
	.long	.LASF1133
	.value	0x399
	.uleb128 0x1
	.long	.LASF1134
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1135
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1136
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1137
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1138
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1139
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1140
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3c7
	.byte	0
	.uleb128 0xd
	.long	.LASF1180
	.byte	0x9
	.value	0x478
	.long	0x6f0
	.uleb128 0x16
	.byte	0x38
	.byte	0x9
	.value	0x47b
	.long	0x20ed
	.uleb128 0x4
	.long	.LASF1181
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x6e4
	.byte	0
	.uleb128 0x4
	.long	.LASF1182
	.byte	0x9
	.value	0x47e
	.byte	0xa
	.long	0x12b
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1183
	.byte	0x9
	.value	0x47f
	.byte	0xa
	.long	0x12b
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1184
	.byte	0x9
	.value	0x481
	.byte	0xf
	.long	0x2d6
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1185
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x2075
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1186
	.byte	0x9
	.value	0x483
	.byte	0xa
	.long	0x12b
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1187
	.byte	0x9
	.value	0x483
	.byte	0x11
	.long	0x12b
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LASF1188
	.byte	0x9
	.value	0x484
	.long	0x2081
	.uleb128 0x11
	.long	0x84
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x2443
	.uleb128 0x2
	.long	.LASF1189
	.byte	0
	.uleb128 0x2
	.long	.LASF1190
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1191
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1192
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1193
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1195
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1199
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1200
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1201
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1202
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1203
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1204
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x89
	.byte	0
	.uleb128 0xd
	.long	.LASF1327
	.byte	0x9
	.value	0x517
	.long	0x20f9
	.uleb128 0x16
	.byte	0x5c
	.byte	0x9
	.value	0x519
	.long	0x259b
	.uleb128 0x4
	.long	.LASF1328
	.byte	0x9
	.value	0x51b
	.byte	0x9
	.long	0x114
	.byte	0
	.uleb128 0x4
	.long	.LASF1329
	.byte	0x9
	.value	0x51c
	.byte	0x9
	.long	0x114
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1330
	.byte	0x9
	.value	0x51d
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1331
	.byte	0x9
	.value	0x51e
	.byte	0x9
	.long	0x114
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1332
	.byte	0x9
	.value	0x51f
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1333
	.byte	0x9
	.value	0x520
	.byte	0x9
	.long	0x114
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1334
	.byte	0x9
	.value	0x521
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1335
	.byte	0x9
	.value	0x522
	.byte	0x9
	.long	0x114
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1336
	.byte	0x9
	.value	0x523
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1337
	.byte	0x9
	.value	0x524
	.byte	0x9
	.long	0x114
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1338
	.byte	0x9
	.value	0x525
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1339
	.byte	0x9
	.value	0x526
	.byte	0x9
	.long	0x114
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1340
	.byte	0x9
	.value	0x527
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1341
	.byte	0x9
	.value	0x528
	.byte	0x9
	.long	0x114
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1342
	.byte	0x9
	.value	0x529
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1343
	.byte	0x9
	.value	0x52a
	.byte	0x9
	.long	0x114
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x9
	.value	0x52b
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1345
	.byte	0x9
	.value	0x52c
	.byte	0x9
	.long	0x114
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1346
	.byte	0x9
	.value	0x52d
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1347
	.byte	0x9
	.value	0x52e
	.byte	0x9
	.long	0x114
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1348
	.byte	0x9
	.value	0x52f
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1349
	.byte	0x9
	.value	0x530
	.byte	0x9
	.long	0x114
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1350
	.byte	0x9
	.value	0x531
	.byte	0x9
	.long	0x114
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF1351
	.byte	0x9
	.value	0x533
	.long	0x244f
	.uleb128 0x10
	.long	.LASF1353
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x277e
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x327
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0x23f
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0x23f
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0x23f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1355
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x277e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1356
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x277e
	.byte	0x30
	.uleb128 0x3
	.long	.LASF68
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x24b
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1181
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x6e4
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1182
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x114
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x277e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x277e
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x27b7
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0x23f
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0x23f
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1344
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0x23f
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1345
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0x23f
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1362
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0x23f
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0x23f
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0x23f
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x114
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF69
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x2443
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x27bc
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1183
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x114
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x27c1
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x114
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x114
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1369
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x114
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1370
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x114
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1371
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x277e
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1333
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x114
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1372
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x114
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1373
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x299b
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1374
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x114
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1375
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x389
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1376
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x277e
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x25a7
	.uleb128 0x10
	.long	.LASF1377
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x27b7
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2c34
	.byte	0
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1380
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x101
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x2783
	.uleb128 0x8
	.long	0x259b
	.uleb128 0x8
	.long	0x20ed
	.uleb128 0x29
	.long	.LASF1381
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x299b
	.uleb128 0x7
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2af3
	.byte	0
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2d26
	.byte	0x8
	.uleb128 0x7
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x108
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x23f
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1384
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0x23f
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1385
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0x23f
	.byte	0x1c
	.uleb128 0x7
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0x23f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x114
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x114
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x114
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2d32
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2d42
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0x8b
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2af8
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x1bd
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x1bd
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2d52
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2af8
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2af8
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x114
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x114
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x114
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x114
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x114
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x114
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x114
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0x132
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x114
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x114
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2af3
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x114
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x114
	.byte	0xfc
	.uleb128 0x17
	.long	.LASF1410
	.byte	0x9e
	.byte	0xb
	.long	0x114
	.value	0x100
	.uleb128 0x17
	.long	.LASF1411
	.byte	0xa1
	.byte	0xf
	.long	0x2d62
	.value	0x108
	.uleb128 0x17
	.long	.LASF1412
	.byte	0xa4
	.byte	0xe
	.long	0x8b
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x27c6
	.uleb128 0xd
	.long	.LASF1413
	.byte	0xa
	.value	0x11e
	.long	0x25a7
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x29cb
	.uleb128 0x7
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x23f
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0x23f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1414
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x29ac
	.uleb128 0xe
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2a0e
	.uleb128 0x3
	.long	.LASF1354
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x327
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x23f
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x23f
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0x23f
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1415
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x29d7
	.uleb128 0xe
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2af3
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0x23f
	.byte	0
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0x23f
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x101
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x101
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x101
	.byte	0xe
	.uleb128 0x7
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x101
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x114
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2af3
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2af8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2a0e
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x114
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2af3
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0x11b
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x114
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2bc7
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x29a0
	.uleb128 0xb
	.long	0x114
	.long	0x2b08
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF1430
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2bc7
	.uleb128 0x7
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2c76
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2c76
	.byte	0x8
	.uleb128 0x7
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0x23f
	.byte	0x10
	.uleb128 0x7
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0x23f
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1349
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x101
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x101
	.byte	0x1a
	.uleb128 0x7
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x101
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x333
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2c7b
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2c6a
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2c34
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2c34
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x114
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0x11b
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x2bcc
	.uleb128 0x8
	.long	0x2b08
	.uleb128 0x6
	.long	.LASF1436
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2a1a
	.uleb128 0xe
	.byte	0x18
	.byte	0xb
	.byte	0x90
	.long	0x2c34
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xb
	.byte	0x93
	.byte	0xd
	.long	0x23f
	.byte	0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xb
	.byte	0x96
	.byte	0xd
	.long	0x23f
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xb
	.byte	0x9a
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xb
	.byte	0x9b
	.byte	0xb
	.long	0x101
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xb
	.byte	0x9c
	.byte	0xb
	.long	0x101
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xb
	.byte	0x9f
	.byte	0xf
	.long	0x2c34
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x2bd1
	.uleb128 0x6
	.long	.LASF1442
	.byte	0xb
	.byte	0xa1
	.byte	0x3
	.long	0x2bdd
	.uleb128 0x9
	.long	0x84
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2c6a
	.uleb128 0x2
	.long	.LASF1443
	.byte	0
	.uleb128 0x2
	.long	.LASF1444
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1445
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1446
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1447
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2c45
	.uleb128 0x8
	.long	0x29cb
	.uleb128 0xb
	.long	0x23f
	.long	0x2c8b
	.uleb128 0xc
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1448
	.byte	0xb
	.byte	0xd7
	.byte	0x3
	.long	0x2b08
	.uleb128 0x8
	.long	0x2c39
	.uleb128 0x8
	.long	0x2c8b
	.uleb128 0x9
	.long	0x84
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.long	0x2cc0
	.uleb128 0x2
	.long	.LASF1449
	.byte	0
	.uleb128 0x2
	.long	.LASF1450
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1451
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x18
	.byte	0xd
	.byte	0x44
	.long	0x2cfb
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xd
	.byte	0x46
	.byte	0xe
	.long	0x27c1
	.byte	0
	.uleb128 0x3
	.long	.LASF1183
	.byte	0xd
	.byte	0x47
	.byte	0xa
	.long	0x114
	.byte	0x8
	.uleb128 0x7
	.string	"sx"
	.byte	0xd
	.byte	0x48
	.byte	0xd
	.long	0x23f
	.byte	0xc
	.uleb128 0x7
	.string	"sy"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x23f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1452
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x2cc0
	.uleb128 0x9
	.long	0x84
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2d26
	.uleb128 0x2
	.long	.LASF1453
	.byte	0
	.uleb128 0x2
	.long	.LASF1454
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1455
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1456
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2d07
	.uleb128 0xb
	.long	0x114
	.long	0x2d42
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x8b
	.long	0x2d52
	.uleb128 0xc
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x8b
	.long	0x2d62
	.uleb128 0xc
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x2cfb
	.long	0x2d72
	.uleb128 0xc
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.long	.LASF1457
	.byte	0xe
	.byte	0x55
	.byte	0x12
	.long	0x2c34
	.uleb128 0x18
	.long	.LASF1458
	.byte	0xe
	.byte	0x61
	.byte	0x11
	.long	0x2c97
	.uleb128 0x11
	.long	0x84
	.byte	0xf
	.value	0x107
	.byte	0x1
	.long	0x2dae
	.uleb128 0x1f
	.string	"up"
	.uleb128 0x2
	.long	.LASF1459
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1460
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1461
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF1462
	.byte	0xf
	.value	0x10d
	.long	0x2d8a
	.uleb128 0x11
	.long	0x84
	.byte	0xf
	.value	0x112
	.byte	0x1
	.long	0x2de6
	.uleb128 0x2
	.long	.LASF1463
	.byte	0
	.uleb128 0x2
	.long	.LASF1464
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1465
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1466
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1467
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF1468
	.byte	0xf
	.value	0x119
	.long	0x2dba
	.uleb128 0x16
	.byte	0x48
	.byte	0xf
	.value	0x11d
	.long	0x2ea2
	.uleb128 0x4
	.long	.LASF1354
	.byte	0xf
	.value	0x11f
	.byte	0xf
	.long	0x327
	.byte	0
	.uleb128 0x4
	.long	.LASF1378
	.byte	0xf
	.value	0x120
	.byte	0xf
	.long	0x2c34
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1343
	.byte	0xf
	.value	0x121
	.byte	0xd
	.long	0x23f
	.byte	0x20
	.uleb128 0x20
	.string	"low"
	.value	0x122
	.byte	0xd
	.long	0x23f
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1469
	.byte	0xf
	.value	0x123
	.byte	0xd
	.long	0x23f
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1470
	.byte	0xf
	.value	0x124
	.byte	0xa
	.long	0x114
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1471
	.byte	0xf
	.value	0x125
	.byte	0xa
	.long	0x114
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1472
	.byte	0xf
	.value	0x126
	.byte	0xc
	.long	0x2dae
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1473
	.byte	0xf
	.value	0x127
	.byte	0xc
	.long	0x2dae
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1474
	.byte	0xf
	.value	0x128
	.byte	0xd
	.long	0x8b
	.byte	0x3c
	.uleb128 0x20
	.string	"tag"
	.value	0x129
	.byte	0xa
	.long	0x114
	.byte	0x40
	.uleb128 0x4
	.long	.LASF69
	.byte	0xf
	.value	0x12a
	.byte	0x10
	.long	0x2de6
	.byte	0x44
	.byte	0
	.uleb128 0xd
	.long	.LASF1475
	.byte	0xf
	.value	0x12c
	.long	0x2df2
	.uleb128 0xb
	.long	0x2ebe
	.long	0x2ebe
	.uleb128 0xc
	.long	0x43
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0x2ea2
	.uleb128 0x2a
	.long	.LASF1476
	.byte	0xf
	.value	0x135
	.byte	0x10
	.long	0x2eae
	.uleb128 0x11
	.long	0x84
	.byte	0xf
	.value	0x25b
	.byte	0x1
	.long	0x2eee
	.uleb128 0x1f
	.string	"ok"
	.uleb128 0x2
	.long	.LASF1477
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1478
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF1479
	.byte	0xf
	.value	0x260
	.long	0x2ed0
	.uleb128 0x18
	.long	.LASF1480
	.byte	0x10
	.byte	0xac
	.byte	0xd
	.long	0x114
	.uleb128 0x9
	.long	0x84
	.byte	0x11
	.byte	0xb2
	.byte	0x1
	.long	0x31a7
	.uleb128 0x2
	.long	.LASF1481
	.byte	0
	.uleb128 0x2
	.long	.LASF1482
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1483
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1484
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1485
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1487
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1488
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1489
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1490
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1491
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1492
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1493
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1494
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1495
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1496
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1497
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1498
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1499
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1500
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1501
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1502
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1503
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1505
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1506
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1508
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1509
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1511
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1512
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1513
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1514
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1515
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1516
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1522
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1523
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1529
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1530
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1533
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1534
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1535
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1536
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1537
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1539
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1580
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1581
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1582
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1583
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1584
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1587
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1588
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1589
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1590
	.byte	0x6d
	.byte	0
	.uleb128 0x2b
	.long	0x2ec3
	.byte	0x1
	.byte	0x2d
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	activeplats
	.uleb128 0x12
	.long	.LASF1591
	.byte	0x12
	.byte	0x4b
	.byte	0x6
	.long	0x31cb
	.uleb128 0x5
	.long	0x31cb
	.byte	0
	.uleb128 0x8
	.long	0x327
	.uleb128 0x12
	.long	.LASF1592
	.byte	0x13
	.byte	0x59
	.byte	0x6
	.long	0x31e3
	.uleb128 0x5
	.long	0x132
	.uleb128 0x1c
	.byte	0
	.uleb128 0xf
	.long	.LASF1593
	.byte	0xf
	.byte	0x63
	.byte	0x1
	.long	0x114
	.long	0x31fe
	.uleb128 0x5
	.long	0x2c9c
	.uleb128 0x5
	.long	0x114
	.byte	0
	.uleb128 0x2c
	.long	.LASF1611
	.byte	0x16
	.byte	0x24
	.byte	0x5
	.long	0x114
	.uleb128 0xf
	.long	.LASF1594
	.byte	0xf
	.byte	0x58
	.byte	0x9
	.long	0x23f
	.long	0x3220
	.uleb128 0x5
	.long	0x2c34
	.byte	0
	.uleb128 0xf
	.long	.LASF1595
	.byte	0xf
	.byte	0x57
	.byte	0x9
	.long	0x23f
	.long	0x3236
	.uleb128 0x5
	.long	0x2c34
	.byte	0
	.uleb128 0xf
	.long	.LASF1596
	.byte	0xf
	.byte	0x5b
	.byte	0x1
	.long	0x23f
	.long	0x3251
	.uleb128 0x5
	.long	0x2c34
	.uleb128 0x5
	.long	0x114
	.byte	0
	.uleb128 0x12
	.long	.LASF1597
	.byte	0x12
	.byte	0x4a
	.byte	0x6
	.long	0x3263
	.uleb128 0x5
	.long	0x31cb
	.byte	0
	.uleb128 0xf
	.long	.LASF1598
	.byte	0x14
	.byte	0x30
	.byte	0x7
	.long	0x11b
	.long	0x3283
	.uleb128 0x5
	.long	0x114
	.uleb128 0x5
	.long	0x114
	.uleb128 0x5
	.long	0x11b
	.byte	0
	.uleb128 0x12
	.long	.LASF1599
	.byte	0x15
	.byte	0x3b
	.byte	0x1
	.long	0x329a
	.uleb128 0x5
	.long	0x11b
	.uleb128 0x5
	.long	0x114
	.byte	0
	.uleb128 0x2d
	.long	.LASF1600
	.byte	0xf
	.value	0x263
	.byte	0x1
	.long	0x2eee
	.long	0x32ca
	.uleb128 0x5
	.long	0x2c34
	.uleb128 0x5
	.long	0x23f
	.uleb128 0x5
	.long	0x23f
	.uleb128 0x5
	.long	0x8b
	.uleb128 0x5
	.long	0x114
	.uleb128 0x5
	.long	0x114
	.byte	0
	.uleb128 0x21
	.long	.LASF1602
	.value	0x12d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3303
	.uleb128 0x19
	.long	.LASF1604
	.value	0x12d
	.byte	0x21
	.long	0x2ebe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.value	0x12f
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF1603
	.value	0x120
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x333c
	.uleb128 0x19
	.long	.LASF1604
	.value	0x120
	.byte	0x1e
	.long	0x2ebe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.value	0x122
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF1605
	.value	0x111
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3375
	.uleb128 0x19
	.long	.LASF1606
	.value	0x111
	.byte	0x1a
	.long	0x2c9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"j"
	.value	0x113
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF1607
	.value	0x102
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x33af
	.uleb128 0x2e
	.string	"tag"
	.byte	0x1
	.value	0x102
	.byte	0x1d
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"i"
	.value	0x104
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF1612
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0x114
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3434
	.uleb128 0x14
	.long	.LASF1606
	.byte	0x8c
	.byte	0xb
	.long	0x2c9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF69
	.byte	0x8d
	.byte	0xe
	.long	0x2de6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.long	.LASF1608
	.byte	0x8e
	.byte	0x8
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF1604
	.byte	0x90
	.byte	0xd
	.long	0x2ebe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF1609
	.byte	0x91
	.byte	0xa
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"rtn"
	.byte	0x92
	.byte	0xa
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.string	"sec"
	.byte	0x93
	.byte	0xf
	.long	0x2c34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF1613
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF1604
	.byte	0x34
	.byte	0x1a
	.long	0x2ebe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"res"
	.byte	0x36
	.byte	0xe
	.long	0x2eee
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x10
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
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.sleb128 6
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
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
	.uleb128 0x30
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
.LASF849:
	.string	"S_BSPI_RUN3"
.LASF850:
	.string	"S_BSPI_RUN4"
.LASF851:
	.string	"S_BSPI_RUN5"
.LASF852:
	.string	"S_BSPI_RUN6"
.LASF853:
	.string	"S_BSPI_RUN7"
.LASF854:
	.string	"S_BSPI_RUN8"
.LASF855:
	.string	"S_BSPI_RUN9"
.LASF1525:
	.string	"sfx_cybsit"
.LASF139:
	.string	"SPR_YSKU"
.LASF1491:
	.string	"sfx_sawup"
.LASF1407:
	.string	"attacker"
.LASF502:
	.string	"S_FIRE10"
.LASF503:
	.string	"S_FIRE11"
.LASF504:
	.string	"S_FIRE12"
.LASF505:
	.string	"S_FIRE13"
.LASF506:
	.string	"S_FIRE14"
.LASF507:
	.string	"S_FIRE15"
.LASF508:
	.string	"S_FIRE16"
.LASF509:
	.string	"S_FIRE17"
.LASF510:
	.string	"S_FIRE18"
.LASF511:
	.string	"S_FIRE19"
.LASF1323:
	.string	"MT_MISC84"
.LASF1256:
	.string	"MT_MISC20"
.LASF1070:
	.string	"S_MEGA2"
.LASF1071:
	.string	"S_MEGA3"
.LASF1072:
	.string	"S_MEGA4"
.LASF1260:
	.string	"MT_MISC24"
.LASF1261:
	.string	"MT_MISC25"
.LASF1263:
	.string	"MT_MISC26"
.LASF1264:
	.string	"MT_MISC27"
.LASF1265:
	.string	"MT_MISC28"
.LASF1268:
	.string	"MT_MISC29"
.LASF701:
	.string	"S_SARG_PAIN2"
.LASF1372:
	.string	"threshold"
.LASF29:
	.string	"wp_pistol"
.LASF180:
	.string	"SPR_COL1"
.LASF181:
	.string	"SPR_COL2"
.LASF182:
	.string	"SPR_COL3"
.LASF183:
	.string	"SPR_COL4"
.LASF192:
	.string	"SPR_COL5"
.LASF186:
	.string	"SPR_COL6"
.LASF1587:
	.string	"sfx_skesit"
.LASF1568:
	.string	"sfx_tink"
.LASF512:
	.string	"S_FIRE20"
.LASF513:
	.string	"S_FIRE21"
.LASF514:
	.string	"S_FIRE22"
.LASF515:
	.string	"S_FIRE23"
.LASF516:
	.string	"S_FIRE24"
.LASF166:
	.string	"SPR_COLU"
.LASF518:
	.string	"S_FIRE26"
.LASF519:
	.string	"S_FIRE27"
.LASF520:
	.string	"S_FIRE28"
.LASF521:
	.string	"S_FIRE29"
.LASF1269:
	.string	"MT_MISC30"
.LASF1184:
	.string	"action"
.LASF1271:
	.string	"MT_MISC32"
.LASF1272:
	.string	"MT_MISC33"
.LASF863:
	.string	"S_BSPI_PAIN"
.LASF1274:
	.string	"MT_MISC35"
.LASF335:
	.string	"S_BFGEXP"
.LASF43:
	.string	"am_misl"
.LASF1277:
	.string	"MT_MISC38"
.LASF1278:
	.string	"MT_MISC39"
.LASF1418:
	.string	"floorpic"
.LASF865:
	.string	"S_BSPI_DIE1"
.LASF1451:
	.string	"NUMPSPRITES"
.LASF870:
	.string	"S_BSPI_DIE6"
.LASF1574:
	.string	"sfx_getpow"
.LASF1445:
	.string	"ST_POSITIVE"
.LASF1383:
	.string	"viewz"
.LASF1439:
	.string	"toptexture"
.LASF761:
	.string	"S_BOSS_RAISE1"
.LASF762:
	.string	"S_BOSS_RAISE2"
.LASF1203:
	.string	"MT_HEAD"
.LASF763:
	.string	"S_BOSS_RAISE3"
.LASF522:
	.string	"S_FIRE30"
.LASF667:
	.string	"S_TROO_PAIN"
.LASF956:
	.string	"S_SSWV_DIE1"
.LASF766:
	.string	"S_BOSS_RAISE6"
.LASF958:
	.string	"S_SSWV_DIE3"
.LASF959:
	.string	"S_SSWV_DIE4"
.LASF960:
	.string	"S_SSWV_DIE5"
.LASF134:
	.string	"SPR_BKEY"
.LASF778:
	.string	"S_BOS2_ATK1"
.LASF779:
	.string	"S_BOS2_ATK2"
.LASF780:
	.string	"S_BOS2_ATK3"
.LASF168:
	.string	"SPR_GOR1"
.LASF175:
	.string	"SPR_GOR2"
.LASF176:
	.string	"SPR_GOR3"
.LASF177:
	.string	"SPR_GOR4"
.LASF178:
	.string	"SPR_GOR5"
.LASF1281:
	.string	"MT_MISC42"
.LASF1282:
	.string	"MT_MISC43"
.LASF535:
	.string	"S_SKEL_RUN1"
.LASF536:
	.string	"S_SKEL_RUN2"
.LASF537:
	.string	"S_SKEL_RUN3"
.LASF538:
	.string	"S_SKEL_RUN4"
.LASF539:
	.string	"S_SKEL_RUN5"
.LASF540:
	.string	"S_SKEL_RUN6"
.LASF541:
	.string	"S_SKEL_RUN7"
.LASF542:
	.string	"S_SKEL_RUN8"
.LASF543:
	.string	"S_SKEL_RUN9"
.LASF32:
	.string	"wp_missile"
.LASF1021:
	.string	"S_BEXP2"
.LASF1331:
	.string	"seestate"
.LASF716:
	.string	"S_HEAD_ATK1"
.LASF717:
	.string	"S_HEAD_ATK2"
.LASF718:
	.string	"S_HEAD_ATK3"
.LASF1433:
	.string	"slopetype"
.LASF970:
	.string	"S_SSWV_RAISE1"
.LASF971:
	.string	"S_SSWV_RAISE2"
.LASF972:
	.string	"S_SSWV_RAISE3"
.LASF973:
	.string	"S_SSWV_RAISE4"
.LASF974:
	.string	"S_SSWV_RAISE5"
.LASF68:
	.string	"angle"
.LASF1198:
	.string	"MT_FATSHOT"
.LASF154:
	.string	"SPR_CELL"
.LASF155:
	.string	"SPR_CELP"
.LASF1136:
	.string	"S_HEARTCOL"
.LASF1379:
	.string	"numlines"
.LASF1053:
	.string	"S_MEDI"
.LASF1060:
	.string	"S_PINV"
.LASF1247:
	.string	"MT_INS"
.LASF1290:
	.string	"MT_MISC51"
.LASF1291:
	.string	"MT_MISC52"
.LASF1245:
	.string	"MT_INV"
.LASF1293:
	.string	"MT_MISC54"
.LASF1150:
	.string	"S_BTORCHSHRT"
.LASF271:
	.string	"S_MISSILEUP"
.LASF1296:
	.string	"MT_MISC57"
.LASF1297:
	.string	"MT_MISC58"
.LASF1298:
	.string	"MT_MISC59"
.LASF448:
	.string	"S_SPOS_RAISE1"
.LASF1485:
	.string	"sfx_dshtgn"
.LASF242:
	.string	"S_SGUNFLASH1"
.LASF243:
	.string	"S_SGUNFLASH2"
.LASF790:
	.string	"S_BOS2_RAISE1"
.LASF791:
	.string	"S_BOS2_RAISE2"
.LASF792:
	.string	"S_BOS2_RAISE3"
.LASF793:
	.string	"S_BOS2_RAISE4"
.LASF794:
	.string	"S_BOS2_RAISE5"
.LASF795:
	.string	"S_BOS2_RAISE6"
.LASF796:
	.string	"S_BOS2_RAISE7"
.LASF555:
	.string	"S_SKEL_PAIN"
.LASF1042:
	.string	"S_RKEY"
.LASF65:
	.string	"next"
.LASF1599:
	.string	"S_StartSound"
.LASF1497:
	.string	"sfx_firsht"
.LASF1489:
	.string	"sfx_plasma"
.LASF224:
	.string	"S_PISTOLUP"
.LASF910:
	.string	"S_CYBER_DIE8"
.LASF1438:
	.string	"rowoffset"
.LASF1299:
	.string	"MT_MISC60"
.LASF1300:
	.string	"MT_MISC61"
.LASF1301:
	.string	"MT_MISC62"
.LASF1302:
	.string	"MT_MISC63"
.LASF1303:
	.string	"MT_MISC64"
.LASF1304:
	.string	"MT_MISC65"
.LASF1305:
	.string	"MT_MISC66"
.LASF1306:
	.string	"MT_MISC67"
.LASF339:
	.string	"S_EXPLODE1"
.LASF340:
	.string	"S_EXPLODE2"
.LASF341:
	.string	"S_EXPLODE3"
.LASF1580:
	.string	"sfx_manatk"
.LASF530:
	.string	"S_TRACEEXP1"
.LASF531:
	.string	"S_TRACEEXP2"
.LASF532:
	.string	"S_TRACEEXP3"
.LASF918:
	.string	"S_PAIN_RUN5"
.LASF1020:
	.string	"S_BEXP"
.LASF919:
	.string	"S_PAIN_RUN6"
.LASF1408:
	.string	"extralight"
.LASF1456:
	.string	"playerstate_t"
.LASF1137:
	.string	"S_HEARTCOL2"
.LASF316:
	.string	"S_RBALLX1"
.LASF1488:
	.string	"sfx_dbload"
.LASF1345:
	.string	"height"
.LASF1230:
	.string	"MT_TELEPORTMAN"
.LASF1309:
	.string	"MT_MISC70"
.LASF99:
	.string	"SPR_IFOG"
.LASF1311:
	.string	"MT_MISC72"
.LASF1312:
	.string	"MT_MISC73"
.LASF1313:
	.string	"MT_MISC74"
.LASF1314:
	.string	"MT_MISC75"
.LASF1315:
	.string	"MT_MISC76"
.LASF1143:
	.string	"S_GREENTORCH2"
.LASF1144:
	.string	"S_GREENTORCH3"
.LASF1145:
	.string	"S_GREENTORCH4"
.LASF984:
	.string	"S_COMMKEEN9"
.LASF633:
	.string	"S_CPOS_PAIN2"
.LASF856:
	.string	"S_BSPI_RUN10"
.LASF857:
	.string	"S_BSPI_RUN11"
.LASF858:
	.string	"S_BSPI_RUN12"
.LASF940:
	.string	"S_SSWV_RUN1"
.LASF941:
	.string	"S_SSWV_RUN2"
.LASF942:
	.string	"S_SSWV_RUN3"
.LASF943:
	.string	"S_SSWV_RUN4"
.LASF944:
	.string	"S_SSWV_RUN5"
.LASF945:
	.string	"S_SSWV_RUN6"
.LASF946:
	.string	"S_SSWV_RUN7"
.LASF947:
	.string	"S_SSWV_RUN8"
.LASF1125:
	.string	"S_SKULLCOL"
.LASF1197:
	.string	"MT_FATSO"
.LASF669:
	.string	"S_TROO_DIE1"
.LASF670:
	.string	"S_TROO_DIE2"
.LASF671:
	.string	"S_TROO_DIE3"
.LASF672:
	.string	"S_TROO_DIE4"
.LASF673:
	.string	"S_TROO_DIE5"
.LASF1050:
	.string	"S_YSKULL"
.LASF1051:
	.string	"S_YSKULL2"
.LASF152:
	.string	"SPR_ROCK"
.LASF1222:
	.string	"MT_ROCKET"
.LASF1320:
	.string	"MT_MISC81"
.LASF1321:
	.string	"MT_MISC82"
.LASF1322:
	.string	"MT_MISC83"
.LASF628:
	.string	"S_CPOS_ATK1"
.LASF629:
	.string	"S_CPOS_ATK2"
.LASF630:
	.string	"S_CPOS_ATK3"
.LASF631:
	.string	"S_CPOS_ATK4"
.LASF1189:
	.string	"MT_PLAYER"
.LASF164:
	.string	"SPR_SHOT"
.LASF357:
	.string	"S_IFOG2"
.LASF358:
	.string	"S_IFOG3"
.LASF359:
	.string	"S_IFOG4"
.LASF360:
	.string	"S_IFOG5"
.LASF93:
	.string	"SPR_PLSE"
.LASF85:
	.string	"SPR_PLSF"
.LASF84:
	.string	"SPR_PLSG"
.LASF753:
	.string	"S_BOSS_PAIN2"
.LASF453:
	.string	"S_VILE_STND"
.LASF981:
	.string	"S_COMMKEEN6"
.LASF982:
	.string	"S_COMMKEEN7"
.LASF983:
	.string	"S_COMMKEEN8"
.LASF92:
	.string	"SPR_PLSS"
.LASF832:
	.string	"S_SPID_PAIN2"
.LASF1515:
	.string	"sfx_oof"
.LASF1346:
	.string	"mass"
.LASF1556:
	.string	"sfx_posact"
.LASF205:
	.string	"SPR_POB1"
.LASF206:
	.string	"SPR_POB2"
.LASF1054:
	.string	"S_SOUL"
.LASF1547:
	.string	"sfx_skldth"
.LASF1064:
	.string	"S_PSTR"
.LASF896:
	.string	"S_CYBER_ATK1"
.LASF897:
	.string	"S_CYBER_ATK2"
.LASF898:
	.string	"S_CYBER_ATK3"
.LASF899:
	.string	"S_CYBER_ATK4"
.LASF900:
	.string	"S_CYBER_ATK5"
.LASF901:
	.string	"S_CYBER_ATK6"
.LASF1091:
	.string	"S_BFUG"
.LASF131:
	.string	"SPR_FCAN"
.LASF1448:
	.string	"line_t"
.LASF574:
	.string	"S_FATT_STND"
.LASF1011:
	.string	"S_BRAINEXPLODE1"
.LASF1012:
	.string	"S_BRAINEXPLODE2"
.LASF1013:
	.string	"S_BRAINEXPLODE3"
.LASF295:
	.string	"S_BFGUP"
.LASF136:
	.string	"SPR_YKEY"
.LASF682:
	.string	"S_TROO_RAISE1"
.LASF683:
	.string	"S_TROO_RAISE2"
.LASF684:
	.string	"S_TROO_RAISE3"
.LASF685:
	.string	"S_TROO_RAISE4"
.LASF686:
	.string	"S_TROO_RAISE5"
.LASF1095:
	.string	"S_PLAS"
.LASF977:
	.string	"S_COMMKEEN2"
.LASF978:
	.string	"S_COMMKEEN3"
.LASF979:
	.string	"S_COMMKEEN4"
.LASF980:
	.string	"S_COMMKEEN5"
.LASF361:
	.string	"S_PLAY"
.LASF927:
	.string	"S_PAIN_DIE2"
.LASF928:
	.string	"S_PAIN_DIE3"
.LASF929:
	.string	"S_PAIN_DIE4"
.LASF930:
	.string	"S_PAIN_DIE5"
.LASF931:
	.string	"S_PAIN_DIE6"
.LASF1200:
	.string	"MT_TROOP"
.LASF482:
	.string	"S_VILE_PAIN2"
.LASF610:
	.string	"S_FATT_RAISE1"
.LASF33:
	.string	"wp_plasma"
.LASF612:
	.string	"S_FATT_RAISE3"
.LASF613:
	.string	"S_FATT_RAISE4"
.LASF614:
	.string	"S_FATT_RAISE5"
.LASF615:
	.string	"S_FATT_RAISE6"
.LASF616:
	.string	"S_FATT_RAISE7"
.LASF617:
	.string	"S_FATT_RAISE8"
.LASF326:
	.string	"S_ROCKET"
.LASF1221:
	.string	"MT_HEADSHOT"
.LASF1428:
	.string	"linecount"
.LASF1431:
	.string	"sidenum"
.LASF879:
	.string	"S_ARACH_PLAZ"
.LASF1118:
	.string	"S_STALAGTITE"
.LASF720:
	.string	"S_HEAD_PAIN2"
.LASF721:
	.string	"S_HEAD_PAIN3"
.LASF8:
	.string	"byte"
.LASF26:
	.string	"it_redskull"
.LASF20:
	.string	"long int"
.LASF1557:
	.string	"sfx_bgact"
.LASF1228:
	.string	"MT_TFOG"
.LASF429:
	.string	"S_SPOS_ATK1"
.LASF430:
	.string	"S_SPOS_ATK2"
.LASF431:
	.string	"S_SPOS_ATK3"
.LASF366:
	.string	"S_PLAY_ATK1"
.LASF367:
	.string	"S_PLAY_ATK2"
.LASF119:
	.string	"SPR_APLS"
.LASF1400:
	.string	"refire"
.LASF1147:
	.string	"S_REDTORCH2"
.LASF1148:
	.string	"S_REDTORCH3"
.LASF1149:
	.string	"S_REDTORCH4"
.LASF656:
	.string	"S_TROO_RUN1"
.LASF657:
	.string	"S_TROO_RUN2"
.LASF658:
	.string	"S_TROO_RUN3"
.LASF659:
	.string	"S_TROO_RUN4"
.LASF660:
	.string	"S_TROO_RUN5"
.LASF661:
	.string	"S_TROO_RUN6"
.LASF662:
	.string	"S_TROO_RUN7"
.LASF663:
	.string	"S_TROO_RUN8"
.LASF1581:
	.string	"sfx_mandth"
.LASF110:
	.string	"SPR_CPOS"
.LASF571:
	.string	"S_FATSHOTX1"
.LASF572:
	.string	"S_FATSHOTX2"
.LASF573:
	.string	"S_FATSHOTX3"
.LASF651:
	.string	"S_CPOS_RAISE5"
.LASF652:
	.string	"S_CPOS_RAISE6"
.LASF653:
	.string	"S_CPOS_RAISE7"
.LASF1468:
	.string	"plattype_e"
.LASF28:
	.string	"wp_fist"
.LASF1339:
	.string	"missilestate"
.LASF140:
	.string	"SPR_STIM"
.LASF687:
	.string	"S_SARG_STND"
.LASF912:
	.string	"S_CYBER_DIE10"
.LASF90:
	.string	"SPR_BAL1"
.LASF91:
	.string	"SPR_BAL2"
.LASF113:
	.string	"SPR_BAL7"
.LASF1366:
	.string	"info"
.LASF1551:
	.string	"sfx_bspdth"
.LASF1106:
	.string	"S_HEADSONSTICK"
.LASF1586:
	.string	"sfx_skeact"
.LASF1361:
	.string	"ceilingz"
.LASF1582:
	.string	"sfx_sssit"
.LASF563:
	.string	"S_SKEL_RAISE1"
.LASF78:
	.string	"SPR_SHT2"
.LASF217:
	.string	"S_PUNCH1"
.LASF218:
	.string	"S_PUNCH2"
.LASF219:
	.string	"S_PUNCH3"
.LASF220:
	.string	"S_PUNCH4"
.LASF221:
	.string	"S_PUNCH5"
.LASF580:
	.string	"S_FATT_RUN5"
.LASF216:
	.string	"S_PUNCHUP"
.LASF833:
	.string	"S_SPID_DIE1"
.LASF584:
	.string	"S_FATT_RUN9"
.LASF835:
	.string	"S_SPID_DIE3"
.LASF836:
	.string	"S_SPID_DIE4"
.LASF77:
	.string	"SPR_SHTF"
.LASF73:
	.string	"SPR_SHTG"
.LASF355:
	.string	"S_IFOG01"
.LASF356:
	.string	"S_IFOG02"
.LASF841:
	.string	"S_SPID_DIE9"
.LASF1613:
	.string	"T_PlatRaise"
.LASF1083:
	.string	"S_AMMO"
.LASF44:
	.string	"NUMAMMO"
.LASF914:
	.string	"S_PAIN_RUN1"
.LASF915:
	.string	"S_PAIN_RUN2"
.LASF916:
	.string	"S_PAIN_RUN3"
.LASF917:
	.string	"S_PAIN_RUN4"
.LASF199:
	.string	"SPR_HDB1"
.LASF200:
	.string	"SPR_HDB2"
.LASF201:
	.string	"SPR_HDB3"
.LASF202:
	.string	"SPR_HDB4"
.LASF203:
	.string	"SPR_HDB5"
.LASF204:
	.string	"SPR_HDB6"
.LASF1190:
	.string	"MT_POSSESSED"
.LASF249:
	.string	"S_DSGUN3"
.LASF250:
	.string	"S_DSGUN4"
.LASF1437:
	.string	"textureoffset"
.LASF69:
	.string	"type"
.LASF269:
	.string	"S_MISSILE"
.LASF1097:
	.string	"S_SHOT2"
.LASF1164:
	.string	"S_HANGTLOOKDN"
.LASF1369:
	.string	"movedir"
.LASF641:
	.string	"S_CPOS_XDIE1"
.LASF1470:
	.string	"wait"
.LASF62:
	.string	"actionf_t"
.LASF57:
	.string	"actionf_v"
.LASF160:
	.string	"SPR_MGUN"
.LASF1202:
	.string	"MT_SHADOWS"
.LASF544:
	.string	"S_SKEL_RUN10"
.LASF545:
	.string	"S_SKEL_RUN11"
.LASF546:
	.string	"S_SKEL_RUN12"
.LASF212:
	.string	"S_NULL"
.LASF754:
	.string	"S_BOSS_DIE1"
.LASF755:
	.string	"S_BOSS_DIE2"
.LASF756:
	.string	"S_BOSS_DIE3"
.LASF757:
	.string	"S_BOSS_DIE4"
.LASF758:
	.string	"S_BOSS_DIE5"
.LASF759:
	.string	"S_BOSS_DIE6"
.LASF760:
	.string	"S_BOSS_DIE7"
.LASF924:
	.string	"S_PAIN_PAIN"
.LASF293:
	.string	"S_BFG"
.LASF1337:
	.string	"painsound"
.LASF1473:
	.string	"oldstatus"
.LASF1421:
	.string	"special"
.LASF939:
	.string	"S_SSWV_STND2"
.LASF161:
	.string	"SPR_CSAW"
.LASF1074:
	.string	"S_PMAP"
.LASF1080:
	.string	"S_PVIS"
.LASF1609:
	.string	"secnum"
.LASF294:
	.string	"S_BFGDOWN"
.LASF1529:
	.string	"sfx_vilsit"
.LASF1214:
	.string	"MT_BOSSBRAIN"
.LASF107:
	.string	"SPR_SKEL"
.LASF289:
	.string	"S_PLASMA1"
.LASF290:
	.string	"S_PLASMA2"
.LASF1154:
	.string	"S_GTORCHSHRT"
.LASF1469:
	.string	"high"
.LASF1516:
	.string	"sfx_telept"
.LASF1380:
	.string	"firstline"
.LASF1088:
	.string	"S_SHEL"
.LASF845:
	.string	"S_BSPI_STND2"
.LASF9:
	.string	"unsigned char"
.LASF1550:
	.string	"sfx_spidth"
.LASF105:
	.string	"SPR_FATB"
.LASF210:
	.string	"NUMSPRITES"
.LASF328:
	.string	"S_BFGSHOT2"
.LASF109:
	.string	"SPR_FATT"
.LASF1537:
	.string	"sfx_skeswg"
.LASF1055:
	.string	"S_SOUL2"
.LASF1056:
	.string	"S_SOUL3"
.LASF1057:
	.string	"S_SOUL4"
.LASF1058:
	.string	"S_SOUL5"
.LASF1059:
	.string	"S_SOUL6"
.LASF815:
	.string	"S_SPID_RUN1"
.LASF816:
	.string	"S_SPID_RUN2"
.LASF817:
	.string	"S_SPID_RUN3"
.LASF818:
	.string	"S_SPID_RUN4"
.LASF819:
	.string	"S_SPID_RUN5"
.LASF820:
	.string	"S_SPID_RUN6"
.LASF821:
	.string	"S_SPID_RUN7"
.LASF822:
	.string	"S_SPID_RUN8"
.LASF53:
	.string	"float"
.LASF1022:
	.string	"S_BEXP3"
.LASF1023:
	.string	"S_BEXP4"
.LASF1495:
	.string	"sfx_rlaunc"
.LASF1111:
	.string	"S_DEADSTICK"
.LASF1409:
	.string	"fixedcolormap"
.LASF1394:
	.string	"weaponowned"
.LASF1231:
	.string	"MT_EXTRABFG"
.LASF1479:
	.string	"result_e"
.LASF401:
	.string	"S_POSS_DIE1"
.LASF402:
	.string	"S_POSS_DIE2"
.LASF403:
	.string	"S_POSS_DIE3"
.LASF404:
	.string	"S_POSS_DIE4"
.LASF405:
	.string	"S_POSS_DIE5"
.LASF231:
	.string	"S_SGUNDOWN"
.LASF1584:
	.string	"sfx_keenpn"
.LASF80:
	.string	"SPR_CHGF"
.LASF79:
	.string	"SPR_CHGG"
.LASF624:
	.string	"S_CPOS_RUN5"
.LASF883:
	.string	"S_ARACH_PLEX3"
.LASF625:
	.string	"S_CPOS_RUN6"
.LASF885:
	.string	"S_ARACH_PLEX5"
.LASF626:
	.string	"S_CPOS_RUN7"
.LASF1371:
	.string	"target"
.LASF190:
	.string	"SPR_CEYE"
.LASF1443:
	.string	"ST_HORIZONTAL"
.LASF932:
	.string	"S_PAIN_RAISE1"
.LASF933:
	.string	"S_PAIN_RAISE2"
.LASF934:
	.string	"S_PAIN_RAISE3"
.LASF935:
	.string	"S_PAIN_RAISE4"
.LASF936:
	.string	"S_PAIN_RAISE5"
.LASF569:
	.string	"S_FATSHOT1"
.LASF570:
	.string	"S_FATSHOT2"
.LASF1444:
	.string	"ST_VERTICAL"
.LASF147:
	.string	"SPR_SUIT"
.LASF797:
	.string	"S_SKULL_STND"
.LASF1605:
	.string	"EV_StopPlat"
.LASF1481:
	.string	"sfx_None"
.LASF831:
	.string	"S_SPID_PAIN"
.LASF1326:
	.string	"NUMMOBJTYPES"
.LASF129:
	.string	"SPR_BAR1"
.LASF1442:
	.string	"side_t"
.LASF244:
	.string	"S_DSGUN"
.LASF1123:
	.string	"S_CANDLESTIK"
.LASF50:
	.string	"pw_allmap"
.LASF1179:
	.string	"NUMSTATES"
.LASF823:
	.string	"S_SPID_RUN9"
.LASF309:
	.string	"S_TBALL1"
.LASF310:
	.string	"S_TBALL2"
.LASF523:
	.string	"S_SMOKE1"
.LASF524:
	.string	"S_SMOKE2"
.LASF525:
	.string	"S_SMOKE3"
.LASF526:
	.string	"S_SMOKE4"
.LASF527:
	.string	"S_SMOKE5"
.LASF746:
	.string	"S_BOSS_RUN6"
.LASF747:
	.string	"S_BOSS_RUN7"
.LASF748:
	.string	"S_BOSS_RUN8"
.LASF112:
	.string	"SPR_HEAD"
.LASF1358:
	.string	"bprev"
.LASF173:
	.string	"SPR_POL1"
.LASF169:
	.string	"SPR_POL2"
.LASF172:
	.string	"SPR_POL3"
.LASF171:
	.string	"SPR_POL4"
.LASF170:
	.string	"SPR_POL5"
.LASF174:
	.string	"SPR_POL6"
.LASF1018:
	.string	"S_BAR1"
.LASF1554:
	.string	"sfx_pedth"
.LASF1462:
	.string	"plat_e"
.LASF1513:
	.string	"sfx_itemup"
.LASF1232:
	.string	"MT_MISC0"
.LASF1104:
	.string	"S_DEADTORSO"
.LASF1475:
	.string	"plat_t"
.LASF246:
	.string	"S_DSGUNUP"
.LASF1576:
	.string	"sfx_boscub"
.LASF1538:
	.string	"sfx_pldeth"
.LASF1329:
	.string	"spawnstate"
.LASF1597:
	.string	"P_AddThinker"
.LASF655:
	.string	"S_TROO_STND2"
.LASF1175:
	.string	"S_TECH2LAMP"
.LASF1501:
	.string	"sfx_doropn"
.LASF1218:
	.string	"MT_SPAWNFIRE"
.LASF1467:
	.string	"blazeDWUS"
.LASF1193:
	.string	"MT_FIRE"
.LASF1185:
	.string	"nextstate"
.LASF752:
	.string	"S_BOSS_PAIN"
.LASF123:
	.string	"SPR_SSWV"
.LASF1593:
	.string	"P_FindSectorFromLineTag"
.LASF314:
	.string	"S_RBALL1"
.LASF315:
	.string	"S_RBALL2"
.LASF1511:
	.string	"sfx_pepain"
.LASF1119:
	.string	"S_TALLGRNCOL"
.LASF1374:
	.string	"lastlook"
.LASF1548:
	.string	"sfx_brsdth"
.LASF1458:
	.string	"sides"
.LASF1484:
	.string	"sfx_sgcock"
.LASF1440:
	.string	"bottomtexture"
.LASF1108:
	.string	"S_HEADONASTICK"
.LASF388:
	.string	"S_POSS_RUN1"
.LASF330:
	.string	"S_BFGLAND2"
.LASF331:
	.string	"S_BFGLAND3"
.LASF332:
	.string	"S_BFGLAND4"
.LASF333:
	.string	"S_BFGLAND5"
.LASF334:
	.string	"S_BFGLAND6"
.LASF394:
	.string	"S_POSS_RUN7"
.LASF395:
	.string	"S_POSS_RUN8"
.LASF1476:
	.string	"activeplats"
.LASF377:
	.string	"S_PLAY_XDIE1"
.LASF378:
	.string	"S_PLAY_XDIE2"
.LASF379:
	.string	"S_PLAY_XDIE3"
.LASF380:
	.string	"S_PLAY_XDIE4"
.LASF381:
	.string	"S_PLAY_XDIE5"
.LASF382:
	.string	"S_PLAY_XDIE6"
.LASF383:
	.string	"S_PLAY_XDIE7"
.LASF384:
	.string	"S_PLAY_XDIE8"
.LASF385:
	.string	"S_PLAY_XDIE9"
.LASF783:
	.string	"S_BOS2_DIE1"
.LASF784:
	.string	"S_BOS2_DIE2"
.LASF785:
	.string	"S_BOS2_DIE3"
.LASF786:
	.string	"S_BOS2_DIE4"
.LASF787:
	.string	"S_BOS2_DIE5"
.LASF788:
	.string	"S_BOS2_DIE6"
.LASF789:
	.string	"S_BOS2_DIE7"
.LASF1349:
	.string	"flags"
.LASF709:
	.string	"S_SARG_RAISE2"
.LASF710:
	.string	"S_SARG_RAISE3"
.LASF353:
	.string	"S_TFOG10"
.LASF711:
	.string	"S_SARG_RAISE4"
.LASF406:
	.string	"S_POSS_XDIE1"
.LASF407:
	.string	"S_POSS_XDIE2"
.LASF408:
	.string	"S_POSS_XDIE3"
.LASF409:
	.string	"S_POSS_XDIE4"
.LASF410:
	.string	"S_POSS_XDIE5"
.LASF411:
	.string	"S_POSS_XDIE6"
.LASF412:
	.string	"S_POSS_XDIE7"
.LASF40:
	.string	"am_clip"
.LASF414:
	.string	"S_POSS_XDIE9"
.LASF1107:
	.string	"S_GIBS"
.LASF722:
	.string	"S_HEAD_DIE1"
.LASF723:
	.string	"S_HEAD_DIE2"
.LASF724:
	.string	"S_HEAD_DIE3"
.LASF725:
	.string	"S_HEAD_DIE4"
.LASF726:
	.string	"S_HEAD_DIE5"
.LASF727:
	.string	"S_HEAD_DIE6"
.LASF1604:
	.string	"plat"
.LASF575:
	.string	"S_FATT_STND2"
.LASF1098:
	.string	"S_COLU"
.LASF225:
	.string	"S_PISTOL1"
.LASF226:
	.string	"S_PISTOL2"
.LASF227:
	.string	"S_PISTOL3"
.LASF228:
	.string	"S_PISTOL4"
.LASF564:
	.string	"S_SKEL_RAISE2"
.LASF565:
	.string	"S_SKEL_RAISE3"
.LASF566:
	.string	"S_SKEL_RAISE4"
.LASF567:
	.string	"S_SKEL_RAISE5"
.LASF568:
	.string	"S_SKEL_RAISE6"
.LASF1127:
	.string	"S_BIGTREE"
.LASF1446:
	.string	"ST_NEGATIVE"
.LASF1037:
	.string	"S_BON2C"
.LASF1038:
	.string	"S_BON2D"
.LASF343:
	.string	"S_TFOG01"
.LASF344:
	.string	"S_TFOG02"
.LASF162:
	.string	"SPR_LAUN"
.LASF399:
	.string	"S_POSS_PAIN"
.LASF734:
	.string	"S_BRBALL1"
.LASF735:
	.string	"S_BRBALL2"
.LASF1196:
	.string	"MT_SMOKE"
.LASF1210:
	.string	"MT_CYBORG"
.LASF1347:
	.string	"damage"
.LASF439:
	.string	"S_SPOS_XDIE1"
.LASF440:
	.string	"S_SPOS_XDIE2"
.LASF441:
	.string	"S_SPOS_XDIE3"
.LASF442:
	.string	"S_SPOS_XDIE4"
.LASF443:
	.string	"S_SPOS_XDIE5"
.LASF444:
	.string	"S_SPOS_XDIE6"
.LASF445:
	.string	"S_SPOS_XDIE7"
.LASF446:
	.string	"S_SPOS_XDIE8"
.LASF447:
	.string	"S_SPOS_XDIE9"
.LASF1509:
	.string	"sfx_vipain"
.LASF1353:
	.string	"mobj_s"
.LASF1413:
	.string	"mobj_t"
.LASF1040:
	.string	"S_BKEY"
.LASF48:
	.string	"pw_invisibility"
.LASF127:
	.string	"SPR_ARM1"
.LASF128:
	.string	"SPR_ARM2"
.LASF1192:
	.string	"MT_VILE"
.LASF1500:
	.string	"sfx_pstop"
.LASF24:
	.string	"it_blueskull"
.LASF1425:
	.string	"soundorg"
.LASF287:
	.string	"S_PLASMADOWN"
.LASF599:
	.string	"S_FATT_PAIN2"
.LASF1585:
	.string	"sfx_keendt"
.LASF997:
	.string	"S_BRAINEYESEE"
.LASF1447:
	.string	"slopetype_t"
.LASF534:
	.string	"S_SKEL_STND2"
.LASF887:
	.string	"S_CYBER_STND2"
.LASF1188:
	.string	"state_t"
.LASF731:
	.string	"S_HEAD_RAISE4"
.LASF957:
	.string	"S_SSWV_DIE2"
.LASF1560:
	.string	"sfx_bspwlk"
.LASF413:
	.string	"S_POSS_XDIE8"
.LASF1087:
	.string	"S_CELP"
.LASF1129:
	.string	"S_EVILEYE"
.LASF1155:
	.string	"S_GTORCHSHRT2"
.LASF1156:
	.string	"S_GTORCHSHRT3"
.LASF1157:
	.string	"S_GTORCHSHRT4"
.LASF1384:
	.string	"viewheight"
.LASF1466:
	.string	"raiseToNearestAndChange"
.LASF1357:
	.string	"bnext"
.LASF1579:
	.string	"sfx_bosdth"
.LASF588:
	.string	"S_FATT_ATK1"
.LASF121:
	.string	"SPR_CYBR"
.LASF589:
	.string	"S_FATT_ATK2"
.LASF492:
	.string	"S_VILE_DIE10"
.LASF82:
	.string	"SPR_MISF"
.LASF81:
	.string	"SPR_MISG"
.LASF94:
	.string	"SPR_MISL"
.LASF1046:
	.string	"S_BSKULL"
.LASF125:
	.string	"SPR_BBRN"
.LASF467:
	.string	"S_VILE_ATK1"
.LASF468:
	.string	"S_VILE_ATK2"
.LASF469:
	.string	"S_VILE_ATK3"
.LASF470:
	.string	"S_VILE_ATK4"
.LASF471:
	.string	"S_VILE_ATK5"
.LASF472:
	.string	"S_VILE_ATK6"
.LASF473:
	.string	"S_VILE_ATK7"
.LASF214:
	.string	"S_PUNCH"
.LASF475:
	.string	"S_VILE_ATK9"
.LASF196:
	.string	"SPR_SMBT"
.LASF1565:
	.string	"sfx_hoof"
.LASF1463:
	.string	"perpetualRaise"
.LASF770:
	.string	"S_BOS2_RUN1"
.LASF771:
	.string	"S_BOS2_RUN2"
.LASF772:
	.string	"S_BOS2_RUN3"
.LASF773:
	.string	"S_BOS2_RUN4"
.LASF774:
	.string	"S_BOS2_RUN5"
.LASF775:
	.string	"S_BOS2_RUN6"
.LASF776:
	.string	"S_BOS2_RUN7"
.LASF777:
	.string	"S_BOS2_RUN8"
.LASF1420:
	.string	"lightlevel"
.LASF1459:
	.string	"down"
.LASF187:
	.string	"SPR_TRE1"
.LASF188:
	.string	"SPR_TRE2"
.LASF844:
	.string	"S_BSPI_STND"
.LASF1496:
	.string	"sfx_rxplod"
.LASF1338:
	.string	"meleestate"
.LASF1395:
	.string	"ammo"
.LASF634:
	.string	"S_CPOS_DIE1"
.LASF195:
	.string	"SPR_TRED"
.LASF88:
	.string	"SPR_BLUD"
.LASF590:
	.string	"S_FATT_ATK3"
.LASF591:
	.string	"S_FATT_ATK4"
.LASF592:
	.string	"S_FATT_ATK5"
.LASF593:
	.string	"S_FATT_ATK6"
.LASF594:
	.string	"S_FATT_ATK7"
.LASF595:
	.string	"S_FATT_ATK8"
.LASF596:
	.string	"S_FATT_ATK9"
.LASF98:
	.string	"SPR_TFOG"
.LASF302:
	.string	"S_BLOOD1"
.LASF303:
	.string	"S_BLOOD2"
.LASF304:
	.string	"S_BLOOD3"
.LASF1186:
	.string	"misc1"
.LASF1187:
	.string	"misc2"
.LASF1507:
	.string	"sfx_dmpain"
.LASF1094:
	.string	"S_LAUN"
.LASF354:
	.string	"S_IFOG"
.LASF101:
	.string	"SPR_POSS"
.LASF106:
	.string	"SPR_FBXP"
.LASF903:
	.string	"S_CYBER_DIE1"
.LASF904:
	.string	"S_CYBER_DIE2"
.LASF905:
	.string	"S_CYBER_DIE3"
.LASF906:
	.string	"S_CYBER_DIE4"
.LASF907:
	.string	"S_CYBER_DIE5"
.LASF908:
	.string	"S_CYBER_DIE6"
.LASF909:
	.string	"S_CYBER_DIE7"
.LASF781:
	.string	"S_BOS2_PAIN"
.LASF911:
	.string	"S_CYBER_DIE9"
.LASF1375:
	.string	"spawnpoint"
.LASF1181:
	.string	"sprite"
.LASF1602:
	.string	"P_RemoveActivePlat"
.LASF1259:
	.string	"MT_MISC23"
.LASF1124:
	.string	"S_CANDELABRA"
.LASF464:
	.string	"S_VILE_RUN10"
.LASF465:
	.string	"S_VILE_RUN11"
.LASF466:
	.string	"S_VILE_RUN12"
.LASF1084:
	.string	"S_ROCK"
.LASF233:
	.string	"S_SGUN1"
.LASF234:
	.string	"S_SGUN2"
.LASF235:
	.string	"S_SGUN3"
.LASF236:
	.string	"S_SGUN4"
.LASF237:
	.string	"S_SGUN5"
.LASF238:
	.string	"S_SGUN6"
.LASF239:
	.string	"S_SGUN7"
.LASF240:
	.string	"S_SGUN8"
.LASF241:
	.string	"S_SGUN9"
.LASF1328:
	.string	"doomednum"
.LASF230:
	.string	"S_SGUN"
.LASF1120:
	.string	"S_SHRTGRNCOL"
.LASF1583:
	.string	"sfx_ssdth"
.LASF1573:
	.string	"sfx_flamst"
.LASF805:
	.string	"S_SKULL_PAIN"
.LASF1217:
	.string	"MT_SPAWNSHOT"
.LASF529:
	.string	"S_TRACER2"
.LASF1128:
	.string	"S_TECHPILLAR"
.LASF533:
	.string	"S_SKEL_STND"
.LASF688:
	.string	"S_SARG_STND2"
.LASF1566:
	.string	"sfx_metal"
.LASF434:
	.string	"S_SPOS_DIE1"
.LASF435:
	.string	"S_SPOS_DIE2"
.LASF436:
	.string	"S_SPOS_DIE3"
.LASF437:
	.string	"S_SPOS_DIE4"
.LASF438:
	.string	"S_SPOS_DIE5"
.LASF1455:
	.string	"PST_REBORN"
.LASF1533:
	.string	"sfx_sgtatk"
.LASF1460:
	.string	"waiting"
.LASF1163:
	.string	"S_HANGBNOBRAIN"
.LASF1465:
	.string	"raiseAndChange"
.LASF1530:
	.string	"sfx_mansit"
.LASF697:
	.string	"S_SARG_ATK1"
.LASF698:
	.string	"S_SARG_ATK2"
.LASF699:
	.string	"S_SARG_ATK3"
.LASF288:
	.string	"S_PLASMAUP"
.LASF1183:
	.string	"tics"
.LASF1044:
	.string	"S_YKEY"
.LASF1504:
	.string	"sfx_swtchn"
.LASF1343:
	.string	"speed"
.LASF257:
	.string	"S_DSNR1"
.LASF926:
	.string	"S_PAIN_DIE1"
.LASF1505:
	.string	"sfx_swtchx"
.LASF456:
	.string	"S_VILE_RUN2"
.LASF1600:
	.string	"T_MovePlane"
.LASF1571:
	.string	"sfx_itmbk"
.LASF1174:
	.string	"S_TECHLAMP4"
.LASF620:
	.string	"S_CPOS_RUN1"
.LASF621:
	.string	"S_CPOS_RUN2"
.LASF622:
	.string	"S_CPOS_RUN3"
.LASF623:
	.string	"S_CPOS_RUN4"
.LASF58:
	.string	"actionf_p1"
.LASF59:
	.string	"actionf_p2"
.LASF158:
	.string	"SPR_BPAK"
.LASF627:
	.string	"S_CPOS_RUN8"
.LASF1024:
	.string	"S_BEXP5"
.LASF1588:
	.string	"sfx_skeatk"
.LASF71:
	.string	"mapthing_t"
.LASF389:
	.string	"S_POSS_RUN2"
.LASF390:
	.string	"S_POSS_RUN3"
.LASF391:
	.string	"S_POSS_RUN4"
.LASF708:
	.string	"S_SARG_RAISE1"
.LASF392:
	.string	"S_POSS_RUN5"
.LASF60:
	.string	"acp1"
.LASF61:
	.string	"acp2"
.LASF712:
	.string	"S_SARG_RAISE5"
.LASF713:
	.string	"S_SARG_RAISE6"
.LASF1540:
	.string	"sfx_podth1"
.LASF1541:
	.string	"sfx_podth2"
.LASF1542:
	.string	"sfx_podth3"
.LASF1292:
	.string	"MT_MISC53"
.LASF1590:
	.string	"NUMSFX"
.LASF197:
	.string	"SPR_SMGT"
.LASF988:
	.string	"S_KEENPAIN"
.LASF336:
	.string	"S_BFGEXP2"
.LASF337:
	.string	"S_BFGEXP3"
.LASF338:
	.string	"S_BFGEXP4"
.LASF267:
	.string	"S_CHAINFLASH1"
.LASF268:
	.string	"S_CHAINFLASH2"
.LASF223:
	.string	"S_PISTOLDOWN"
.LASF1606:
	.string	"line"
.LASF888:
	.string	"S_CYBER_RUN1"
.LASF889:
	.string	"S_CYBER_RUN2"
.LASF890:
	.string	"S_CYBER_RUN3"
.LASF891:
	.string	"S_CYBER_RUN4"
.LASF892:
	.string	"S_CYBER_RUN5"
.LASF893:
	.string	"S_CYBER_RUN6"
.LASF894:
	.string	"S_CYBER_RUN7"
.LASF895:
	.string	"S_CYBER_RUN8"
.LASF1332:
	.string	"seesound"
.LASF1075:
	.string	"S_PMAP2"
.LASF1076:
	.string	"S_PMAP3"
.LASF1077:
	.string	"S_PMAP4"
.LASF1078:
	.string	"S_PMAP5"
.LASF1079:
	.string	"S_PMAP6"
.LASF1406:
	.string	"bonuscount"
.LASF806:
	.string	"S_SKULL_PAIN2"
.LASF1336:
	.string	"painchance"
.LASF632:
	.string	"S_CPOS_PAIN"
.LASF1417:
	.string	"ceilingheight"
.LASF111:
	.string	"SPR_SARG"
.LASF937:
	.string	"S_PAIN_RAISE6"
.LASF1427:
	.string	"specialdata"
.LASF1275:
	.string	"MT_MISC36"
.LASF741:
	.string	"S_BOSS_RUN1"
.LASF742:
	.string	"S_BOSS_RUN2"
.LASF743:
	.string	"S_BOSS_RUN3"
.LASF744:
	.string	"S_BOSS_RUN4"
.LASF745:
	.string	"S_BOSS_RUN5"
.LASF263:
	.string	"S_CHAINUP"
.LASF1610:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1401:
	.string	"killcount"
.LASF882:
	.string	"S_ARACH_PLEX2"
.LASF1126:
	.string	"S_TORCHTREE"
.LASF938:
	.string	"S_SSWV_STND"
.LASF884:
	.string	"S_ARACH_PLEX4"
.LASF985:
	.string	"S_COMMKEEN10"
.LASF986:
	.string	"S_COMMKEEN11"
.LASF987:
	.string	"S_COMMKEEN12"
.LASF1612:
	.string	"EV_DoPlat"
.LASF902:
	.string	"S_CYBER_PAIN"
.LASF421:
	.string	"S_SPOS_RUN1"
.LASF179:
	.string	"SPR_SMIT"
.LASF7:
	.string	"boolean"
.LASF424:
	.string	"S_SPOS_RUN4"
.LASF425:
	.string	"S_SPOS_RUN5"
.LASF116:
	.string	"SPR_SKUL"
.LASF427:
	.string	"S_SPOS_RUN7"
.LASF428:
	.string	"S_SPOS_RUN8"
.LASF1085:
	.string	"S_BROK"
.LASF1330:
	.string	"spawnhealth"
.LASF1549:
	.string	"sfx_cybdth"
.LASF215:
	.string	"S_PUNCHDOWN"
.LASF881:
	.string	"S_ARACH_PLEX"
.LASF1142:
	.string	"S_GREENTORCH"
.LASF36:
	.string	"wp_supershotgun"
.LASF281:
	.string	"S_SAWDOWN"
.LASF1494:
	.string	"sfx_sawhit"
.LASF1493:
	.string	"sfx_sawful"
.LASF1180:
	.string	"statenum_t"
.LASF1220:
	.string	"MT_TROOPSHOT"
.LASF1205:
	.string	"MT_BRUISERSHOT"
.LASF1561:
	.string	"sfx_vilact"
.LASF17:
	.string	"ticcmd_t"
.LASF1325:
	.string	"MT_MISC86"
.LASF1449:
	.string	"ps_weapon"
.LASF1526:
	.string	"sfx_spisit"
.LASF369:
	.string	"S_PLAY_PAIN2"
.LASF1492:
	.string	"sfx_sawidl"
.LASF764:
	.string	"S_BOSS_RAISE4"
.LASF765:
	.string	"S_BOSS_RAISE5"
.LASF1182:
	.string	"frame"
.LASF108:
	.string	"SPR_MANF"
.LASF619:
	.string	"S_CPOS_STND2"
.LASF1559:
	.string	"sfx_bspact"
.LASF432:
	.string	"S_SPOS_PAIN"
.LASF30:
	.string	"wp_shotgun"
.LASF400:
	.string	"S_POSS_PAIN2"
.LASF1226:
	.string	"MT_PUFF"
.LASF272:
	.string	"S_MISSILE1"
.LASF273:
	.string	"S_MISSILE2"
.LASF274:
	.string	"S_MISSILE3"
.LASF648:
	.string	"S_CPOS_RAISE2"
.LASF649:
	.string	"S_CPOS_RAISE3"
.LASF650:
	.string	"S_CPOS_RAISE4"
.LASF1411:
	.string	"psprites"
.LASF1092:
	.string	"S_MGUN"
.LASF1204:
	.string	"MT_BRUISER"
.LASF157:
	.string	"SPR_SBOX"
.LASF1403:
	.string	"secretcount"
.LASF1327:
	.string	"mobjtype_t"
.LASF1341:
	.string	"xdeathstate"
.LASF1388:
	.string	"powers"
.LASF801:
	.string	"S_SKULL_ATK1"
.LASF802:
	.string	"S_SKULL_ATK2"
.LASF803:
	.string	"S_SKULL_ATK3"
.LASF804:
	.string	"S_SKULL_ATK4"
.LASF782:
	.string	"S_BOS2_PAIN2"
.LASF18:
	.string	"short unsigned int"
.LASF1206:
	.string	"MT_KNIGHT"
.LASF19:
	.string	"signed char"
.LASF11:
	.string	"sidemove"
.LASF1348:
	.string	"activesound"
.LASF433:
	.string	"S_SPOS_PAIN2"
.LASF1564:
	.string	"sfx_punch"
.LASF597:
	.string	"S_FATT_ATK10"
.LASF194:
	.string	"SPR_TGRN"
.LASF1251:
	.string	"MT_MEGA"
.LASF96:
	.string	"SPR_BFE1"
.LASF97:
	.string	"SPR_BFE2"
.LASF1426:
	.string	"thinglist"
.LASF1285:
	.string	"MT_MISC46"
.LASF1472:
	.string	"status"
.LASF1471:
	.string	"count"
.LASF1213:
	.string	"MT_KEEN"
.LASF1424:
	.string	"blockbox"
.LASF998:
	.string	"S_BRAINEYE1"
.LASF654:
	.string	"S_TROO_STND"
.LASF601:
	.string	"S_FATT_DIE2"
.LASF292:
	.string	"S_PLASMAFLASH2"
.LASF39:
	.string	"weapontype_t"
.LASF14:
	.string	"chatchar"
.LASF345:
	.string	"S_TFOG2"
.LASF346:
	.string	"S_TFOG3"
.LASF347:
	.string	"S_TFOG4"
.LASF348:
	.string	"S_TFOG5"
.LASF349:
	.string	"S_TFOG6"
.LASF350:
	.string	"S_TFOG7"
.LASF351:
	.string	"S_TFOG8"
.LASF352:
	.string	"S_TFOG9"
.LASF767:
	.string	"S_BOSS_RAISE7"
.LASF1397:
	.string	"attackdown"
.LASF72:
	.string	"SPR_TROO"
.LASF83:
	.string	"SPR_SAWG"
.LASF1522:
	.string	"sfx_sgtsit"
.LASF1611:
	.string	"P_Random"
.LASF132:
	.string	"SPR_BON1"
.LASF133:
	.string	"SPR_BON2"
.LASF23:
	.string	"it_redcard"
.LASF1121:
	.string	"S_TALLREDCOL"
.LASF1592:
	.string	"I_Error"
.LASF1367:
	.string	"state"
.LASF1096:
	.string	"S_SHOT"
.LASF952:
	.string	"S_SSWV_ATK5"
.LASF1603:
	.string	"P_AddActivePlat"
.LASF1101:
	.string	"S_BLOODYTWITCH2"
.LASF1102:
	.string	"S_BLOODYTWITCH3"
.LASF1103:
	.string	"S_BLOODYTWITCH4"
.LASF842:
	.string	"S_SPID_DIE10"
.LASF843:
	.string	"S_SPID_DIE11"
.LASF1389:
	.string	"cards"
.LASF189:
	.string	"SPR_ELEC"
.LASF990:
	.string	"S_BRAIN"
.LASF1208:
	.string	"MT_SPIDER"
.LASF1073:
	.string	"S_SUIT"
.LASF87:
	.string	"SPR_BFGF"
.LASF86:
	.string	"SPR_BFGG"
.LASF913:
	.string	"S_PAIN_STND"
.LASF1524:
	.string	"sfx_brssit"
.LASF329:
	.string	"S_BFGLAND"
.LASF1019:
	.string	"S_BAR2"
.LASF1393:
	.string	"pendingweapon"
.LASF66:
	.string	"function"
.LASF1567:
	.string	"sfx_chgun"
.LASF41:
	.string	"am_shell"
.LASF1365:
	.string	"validcount"
.LASF1404:
	.string	"message"
.LASF609:
	.string	"S_FATT_DIE10"
.LASF27:
	.string	"NUMCARDS"
.LASF1146:
	.string	"S_REDTORCH"
.LASF1224:
	.string	"MT_BFG"
.LASF393:
	.string	"S_POSS_RUN6"
.LASF1535:
	.string	"sfx_vilatk"
.LASF103:
	.string	"SPR_VILE"
.LASF1570:
	.string	"sfx_bdcls"
.LASF1227:
	.string	"MT_BLOOD"
.LASF222:
	.string	"S_PISTOL"
.LASF5:
	.string	"true"
.LASF454:
	.string	"S_VILE_STND2"
.LASF872:
	.string	"S_BSPI_RAISE1"
.LASF873:
	.string	"S_BSPI_RAISE2"
.LASF874:
	.string	"S_BSPI_RAISE3"
.LASF875:
	.string	"S_BSPI_RAISE4"
.LASF876:
	.string	"S_BSPI_RAISE5"
.LASF877:
	.string	"S_BSPI_RAISE6"
.LASF878:
	.string	"S_BSPI_RAISE7"
.LASF1362:
	.string	"momx"
.LASF1363:
	.string	"momy"
.LASF12:
	.string	"angleturn"
.LASF961:
	.string	"S_SSWV_XDIE1"
.LASF962:
	.string	"S_SSWV_XDIE2"
.LASF963:
	.string	"S_SSWV_XDIE3"
.LASF964:
	.string	"S_SSWV_XDIE4"
.LASF965:
	.string	"S_SSWV_XDIE5"
.LASF966:
	.string	"S_SSWV_XDIE6"
.LASF967:
	.string	"S_SSWV_XDIE7"
.LASF968:
	.string	"S_SSWV_XDIE8"
.LASF969:
	.string	"S_SSWV_XDIE9"
.LASF259:
	.string	"S_DSGUNFLASH1"
.LASF260:
	.string	"S_DSGUNFLASH2"
.LASF1258:
	.string	"MT_MISC22"
.LASF1412:
	.string	"didsecret"
.LASF517:
	.string	"S_FIRE25"
.LASF611:
	.string	"S_FATT_RAISE2"
.LASF1294:
	.string	"MT_MISC55"
.LASF1385:
	.string	"deltaviewheight"
.LASF25:
	.string	"it_yellowskull"
.LASF1049:
	.string	"S_RSKULL2"
.LASF1376:
	.string	"tracer"
.LASF824:
	.string	"S_SPID_RUN10"
.LASF825:
	.string	"S_SPID_RUN11"
.LASF826:
	.string	"S_SPID_RUN12"
.LASF1601:
	.string	"rcsid"
.LASF1514:
	.string	"sfx_wpnup"
.LASF1350:
	.string	"raisestate"
.LASF275:
	.string	"S_MISSILEFLASH1"
.LASF276:
	.string	"S_MISSILEFLASH2"
.LASF277:
	.string	"S_MISSILEFLASH3"
.LASF278:
	.string	"S_MISSILEFLASH4"
.LASF138:
	.string	"SPR_RSKU"
.LASF1534:
	.string	"sfx_skepch"
.LASF63:
	.string	"think_t"
.LASF10:
	.string	"forwardmove"
.LASF636:
	.string	"S_CPOS_DIE3"
.LASF637:
	.string	"S_CPOS_DIE4"
.LASF1441:
	.string	"midtexture"
.LASF638:
	.string	"S_CPOS_DIE5"
.LASF639:
	.string	"S_CPOS_DIE6"
.LASF640:
	.string	"S_CPOS_DIE7"
.LASF1081:
	.string	"S_PVIS2"
.LASF1219:
	.string	"MT_BARREL"
.LASF1607:
	.string	"P_ActivateInStasis"
.LASF813:
	.string	"S_SPID_STND"
.LASF585:
	.string	"S_FATT_RUN10"
.LASF586:
	.string	"S_FATT_RUN11"
.LASF587:
	.string	"S_FATT_RUN12"
.LASF1211:
	.string	"MT_PAIN"
.LASF1139:
	.string	"S_BLUETORCH2"
.LASF1351:
	.string	"mobjinfo_t"
.LASF1140:
	.string	"S_BLUETORCH3"
.LASF1517:
	.string	"sfx_posit1"
.LASF1141:
	.string	"S_BLUETORCH4"
.LASF198:
	.string	"SPR_SMRT"
.LASF300:
	.string	"S_BFGFLASH1"
.LASF301:
	.string	"S_BFGFLASH2"
.LASF834:
	.string	"S_SPID_DIE2"
.LASF115:
	.string	"SPR_BOS2"
.LASF837:
	.string	"S_SPID_DIE5"
.LASF838:
	.string	"S_SPID_DIE6"
.LASF1577:
	.string	"sfx_bossit"
.LASF839:
	.string	"S_SPID_DIE7"
.LASF840:
	.string	"S_SPID_DIE8"
.LASF1130:
	.string	"S_EVILEYE2"
.LASF1131:
	.string	"S_EVILEYE3"
.LASF1132:
	.string	"S_EVILEYE4"
.LASF305:
	.string	"S_PUFF1"
.LASF306:
	.string	"S_PUFF2"
.LASF307:
	.string	"S_PUFF3"
.LASF126:
	.string	"SPR_BOSF"
.LASF1429:
	.string	"lines"
.LASF114:
	.string	"SPR_BOSS"
.LASF1223:
	.string	"MT_PLASMA"
.LASF1589:
	.string	"sfx_radio"
.LASF859:
	.string	"S_BSPI_ATK1"
.LASF860:
	.string	"S_BSPI_ATK2"
.LASF861:
	.string	"S_BSPI_ATK3"
.LASF862:
	.string	"S_BSPI_ATK4"
.LASF1041:
	.string	"S_BKEY2"
.LASF37:
	.string	"NUMWEAPONS"
.LASF846:
	.string	"S_BSPI_SIGHT"
.LASF1506:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF848:
	.string	"S_BSPI_RUN2"
.LASF992:
	.string	"S_BRAIN_DIE1"
.LASF993:
	.string	"S_BRAIN_DIE2"
.LASF994:
	.string	"S_BRAIN_DIE3"
.LASF995:
	.string	"S_BRAIN_DIE4"
.LASF327:
	.string	"S_BFGSHOT"
.LASF1133:
	.string	"S_FLOATSKULL"
.LASF1478:
	.string	"pastdest"
.LASF483:
	.string	"S_VILE_DIE1"
.LASF484:
	.string	"S_VILE_DIE2"
.LASF485:
	.string	"S_VILE_DIE3"
.LASF486:
	.string	"S_VILE_DIE4"
.LASF487:
	.string	"S_VILE_DIE5"
.LASF488:
	.string	"S_VILE_DIE6"
.LASF489:
	.string	"S_VILE_DIE7"
.LASF490:
	.string	"S_VILE_DIE8"
.LASF491:
	.string	"S_VILE_DIE9"
.LASF1405:
	.string	"damagecount"
.LASF1487:
	.string	"sfx_dbcls"
.LASF167:
	.string	"SPR_SMT2"
.LASF1043:
	.string	"S_RKEY2"
.LASF1014:
	.string	"S_ARM1"
.LASF1016:
	.string	"S_ARM2"
.LASF1109:
	.string	"S_HEADCANDLES"
.LASF145:
	.string	"SPR_PINS"
.LASF739:
	.string	"S_BOSS_STND"
.LASF1558:
	.string	"sfx_dmact"
.LASF719:
	.string	"S_HEAD_PAIN"
.LASF22:
	.string	"it_yellowcard"
.LASF1195:
	.string	"MT_TRACER"
.LASF600:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF602:
	.string	"S_FATT_DIE3"
.LASF603:
	.string	"S_FATT_DIE4"
.LASF604:
	.string	"S_FATT_DIE5"
.LASF605:
	.string	"S_FATT_DIE6"
.LASF606:
	.string	"S_FATT_DIE7"
.LASF607:
	.string	"S_FATT_DIE8"
.LASF608:
	.string	"S_FATT_DIE9"
.LASF675:
	.string	"S_TROO_XDIE2"
.LASF676:
	.string	"S_TROO_XDIE3"
.LASF677:
	.string	"S_TROO_XDIE4"
.LASF678:
	.string	"S_TROO_XDIE5"
.LASF679:
	.string	"S_TROO_XDIE6"
.LASF680:
	.string	"S_TROO_XDIE7"
.LASF681:
	.string	"S_TROO_XDIE8"
.LASF150:
	.string	"SPR_CLIP"
.LASF1122:
	.string	"S_SHRTREDCOL"
.LASF1165:
	.string	"S_HANGTSKULL"
.LASF52:
	.string	"NUMPOWERS"
.LASF950:
	.string	"S_SSWV_ATK3"
.LASF951:
	.string	"S_SSWV_ATK4"
.LASF256:
	.string	"S_DSGUN10"
.LASF1546:
	.string	"sfx_cacdth"
.LASF47:
	.string	"pw_strength"
.LASF184:
	.string	"SPR_CAND"
.LASF1503:
	.string	"sfx_stnmov"
.LASF1201:
	.string	"MT_SERGEANT"
.LASF1498:
	.string	"sfx_firxpl"
.LASF1112:
	.string	"S_LIVESTICK"
.LASF1052:
	.string	"S_STIM"
.LASF42:
	.string	"am_cell"
.LASF21:
	.string	"it_bluecard"
.LASF1360:
	.string	"floorz"
.LASF715:
	.string	"S_HEAD_RUN1"
.LASF370:
	.string	"S_PLAY_DIE1"
.LASF371:
	.string	"S_PLAY_DIE2"
.LASF372:
	.string	"S_PLAY_DIE3"
.LASF373:
	.string	"S_PLAY_DIE4"
.LASF374:
	.string	"S_PLAY_DIE5"
.LASF375:
	.string	"S_PLAY_DIE6"
.LASF376:
	.string	"S_PLAY_DIE7"
.LASF386:
	.string	"S_POSS_STND"
.LASF342:
	.string	"S_TFOG"
.LASF1279:
	.string	"MT_MISC40"
.LASF1280:
	.string	"MT_MISC41"
.LASF1377:
	.string	"subsector_s"
.LASF702:
	.string	"S_SARG_DIE1"
.LASF703:
	.string	"S_SARG_DIE2"
.LASF704:
	.string	"S_SARG_DIE3"
.LASF705:
	.string	"S_SARG_DIE4"
.LASF1003:
	.string	"S_SPAWNFIRE1"
.LASF1004:
	.string	"S_SPAWNFIRE2"
.LASF1005:
	.string	"S_SPAWNFIRE3"
.LASF1006:
	.string	"S_SPAWNFIRE4"
.LASF1007:
	.string	"S_SPAWNFIRE5"
.LASF1008:
	.string	"S_SPAWNFIRE6"
.LASF1009:
	.string	"S_SPAWNFIRE7"
.LASF1010:
	.string	"S_SPAWNFIRE8"
.LASF674:
	.string	"S_TROO_XDIE1"
.LASF13:
	.string	"consistancy"
.LASF1378:
	.string	"sector"
.LASF1167:
	.string	"S_HANGTNOBRAIN"
.LASF322:
	.string	"S_PLASEXP2"
.LASF323:
	.string	"S_PLASEXP3"
.LASF324:
	.string	"S_PLASEXP4"
.LASF325:
	.string	"S_PLASEXP5"
.LASF34:
	.string	"wp_bfg"
.LASF1151:
	.string	"S_BTORCHSHRT2"
.LASF1152:
	.string	"S_BTORCHSHRT3"
.LASF1153:
	.string	"S_BTORCHSHRT4"
.LASF1553:
	.string	"sfx_kntdth"
.LASF455:
	.string	"S_VILE_RUN1"
.LASF245:
	.string	"S_DSGUNDOWN"
.LASF457:
	.string	"S_VILE_RUN3"
.LASF458:
	.string	"S_VILE_RUN4"
.LASF459:
	.string	"S_VILE_RUN5"
.LASF460:
	.string	"S_VILE_RUN6"
.LASF461:
	.string	"S_VILE_RUN7"
.LASF462:
	.string	"S_VILE_RUN8"
.LASF463:
	.string	"S_VILE_RUN9"
.LASF706:
	.string	"S_SARG_DIE5"
.LASF707:
	.string	"S_SARG_DIE6"
.LASF1545:
	.string	"sfx_sgtdth"
.LASF1354:
	.string	"thinker"
.LASF1575:
	.string	"sfx_bospit"
.LASF1608:
	.string	"amount"
.LASF547:
	.string	"S_SKEL_FIST1"
.LASF548:
	.string	"S_SKEL_FIST2"
.LASF549:
	.string	"S_SKEL_FIST3"
.LASF550:
	.string	"S_SKEL_FIST4"
.LASF286:
	.string	"S_PLASMA"
.LASF1065:
	.string	"S_PINS"
.LASF1510:
	.string	"sfx_mnpain"
.LASF1457:
	.string	"sectors"
.LASF1138:
	.string	"S_BLUETORCH"
.LASF576:
	.string	"S_FATT_RUN1"
.LASF577:
	.string	"S_FATT_RUN2"
.LASF578:
	.string	"S_FATT_RUN3"
.LASF579:
	.string	"S_FATT_RUN4"
.LASF49:
	.string	"pw_ironfeet"
.LASF581:
	.string	"S_FATT_RUN6"
.LASF582:
	.string	"S_FATT_RUN7"
.LASF583:
	.string	"S_FATT_RUN8"
.LASF1114:
	.string	"S_MEAT2"
.LASF1115:
	.string	"S_MEAT3"
.LASF1116:
	.string	"S_MEAT4"
.LASF1117:
	.string	"S_MEAT5"
.LASF1531:
	.string	"sfx_pesit"
.LASF229:
	.string	"S_PISTOLFLASH"
.LASF1416:
	.string	"floorheight"
.LASF449:
	.string	"S_SPOS_RAISE2"
.LASF450:
	.string	"S_SPOS_RAISE3"
.LASF451:
	.string	"S_SPOS_RAISE4"
.LASF452:
	.string	"S_SPOS_RAISE5"
.LASF141:
	.string	"SPR_MEDI"
.LASF143:
	.string	"SPR_PINV"
.LASF1520:
	.string	"sfx_bgsit1"
.LASF1521:
	.string	"sfx_bgsit2"
.LASF1555:
	.string	"sfx_skedth"
.LASF991:
	.string	"S_BRAIN_PAIN"
.LASF262:
	.string	"S_CHAINDOWN"
.LASF1594:
	.string	"P_FindHighestFloorSurrounding"
.LASF481:
	.string	"S_VILE_PAIN"
.LASF528:
	.string	"S_TRACER"
.LASF948:
	.string	"S_SSWV_ATK1"
.LASF949:
	.string	"S_SSWV_ATK2"
.LASF478:
	.string	"S_VILE_HEAL1"
.LASF479:
	.string	"S_VILE_HEAL2"
.LASF480:
	.string	"S_VILE_HEAL3"
.LASF953:
	.string	"S_SSWV_ATK6"
.LASF1370:
	.string	"movecount"
.LASF135:
	.string	"SPR_RKEY"
.LASF1527:
	.string	"sfx_bspsit"
.LASF1099:
	.string	"S_STALAG"
.LASF1598:
	.string	"Z_Malloc"
.LASF1508:
	.string	"sfx_popain"
.LASF814:
	.string	"S_SPID_STND2"
.LASF56:
	.string	"angle_t"
.LASF1419:
	.string	"ceilingpic"
.LASF1100:
	.string	"S_BLOODYTWITCH"
.LASF1169:
	.string	"S_SMALLPOOL"
.LASF1452:
	.string	"pspdef_t"
.LASF1295:
	.string	"MT_MISC56"
.LASF598:
	.string	"S_FATT_PAIN"
.LASF1464:
	.string	"downWaitUpStay"
.LASF362:
	.string	"S_PLAY_RUN1"
.LASF363:
	.string	"S_PLAY_RUN2"
.LASF364:
	.string	"S_PLAY_RUN3"
.LASF365:
	.string	"S_PLAY_RUN4"
.LASF1090:
	.string	"S_BPAK"
.LASF54:
	.string	"double"
.LASF130:
	.string	"SPR_BEXP"
.LASF1381:
	.string	"player_s"
.LASF1047:
	.string	"S_BSKULL2"
.LASF89:
	.string	"SPR_PUFF"
.LASF976:
	.string	"S_COMMKEEN"
.LASF1499:
	.string	"sfx_pstart"
.LASF1398:
	.string	"usedown"
.LASF768:
	.string	"S_BOS2_STND"
.LASF95:
	.string	"SPR_BFS1"
.LASF999:
	.string	"S_SPAWN1"
.LASF1000:
	.string	"S_SPAWN2"
.LASF1001:
	.string	"S_SPAWN3"
.LASF1002:
	.string	"S_SPAWN4"
.LASF1172:
	.string	"S_TECHLAMP2"
.LASF1173:
	.string	"S_TECHLAMP3"
.LASF35:
	.string	"wp_chainsaw"
.LASF1209:
	.string	"MT_BABY"
.LASF1396:
	.string	"maxammo"
.LASF1572:
	.string	"sfx_flame"
.LASF1113:
	.string	"S_LIVESTICK2"
.LASF1158:
	.string	"S_RTORCHSHRT"
.LASF1255:
	.string	"MT_MISC19"
.LASF117:
	.string	"SPR_SPID"
.LASF714:
	.string	"S_HEAD_STND"
.LASF689:
	.string	"S_SARG_RUN1"
.LASF690:
	.string	"S_SARG_RUN2"
.LASF692:
	.string	"S_SARG_RUN4"
.LASF693:
	.string	"S_SARG_RUN5"
.LASF694:
	.string	"S_SARG_RUN6"
.LASF695:
	.string	"S_SARG_RUN7"
.LASF696:
	.string	"S_SARG_RUN8"
.LASF1233:
	.string	"MT_MISC1"
.LASF1234:
	.string	"MT_MISC2"
.LASF1235:
	.string	"MT_MISC3"
.LASF1236:
	.string	"MT_MISC4"
.LASF1237:
	.string	"MT_MISC5"
.LASF1238:
	.string	"MT_MISC6"
.LASF1239:
	.string	"MT_MISC7"
.LASF1240:
	.string	"MT_MISC8"
.LASF1241:
	.string	"MT_MISC9"
.LASF279:
	.string	"S_SAW"
.LASF146:
	.string	"SPR_MEGA"
.LASF368:
	.string	"S_PLAY_PAIN"
.LASF1536:
	.string	"sfx_claw"
.LASF320:
	.string	"S_PLASBALL2"
.LASF1450:
	.string	"ps_flash"
.LASF1382:
	.string	"playerstate"
.LASF124:
	.string	"SPR_KEEN"
.LASF954:
	.string	"S_SSWV_PAIN"
.LASF1335:
	.string	"painstate"
.LASF989:
	.string	"S_KEENPAIN2"
.LASF51:
	.string	"pw_infrared"
.LASF476:
	.string	"S_VILE_ATK10"
.LASF477:
	.string	"S_VILE_ATK11"
.LASF955:
	.string	"S_SSWV_PAIN2"
.LASF1319:
	.string	"MT_MISC80"
.LASF1342:
	.string	"deathsound"
.LASF1029:
	.string	"S_BON1A"
.LASF1030:
	.string	"S_BON1B"
.LASF1031:
	.string	"S_BON1C"
.LASF1032:
	.string	"S_BON1D"
.LASF1033:
	.string	"S_BON1E"
.LASF1480:
	.string	"leveltime"
.LASF1436:
	.string	"sector_t"
.LASF1477:
	.string	"crushed"
.LASF144:
	.string	"SPR_PSTR"
.LASF1257:
	.string	"MT_MISC21"
.LASF700:
	.string	"S_SARG_PAIN"
.LASF1252:
	.string	"MT_CLIP"
.LASF159:
	.string	"SPR_BFUG"
.LASF1307:
	.string	"MT_MISC68"
.LASF1025:
	.string	"S_BBAR1"
.LASF1026:
	.string	"S_BBAR2"
.LASF1027:
	.string	"S_BBAR3"
.LASF213:
	.string	"S_LIGHTDONE"
.LASF864:
	.string	"S_BSPI_PAIN2"
.LASF1390:
	.string	"backpack"
.LASF664:
	.string	"S_TROO_ATK1"
.LASF665:
	.string	"S_TROO_ATK2"
.LASF666:
	.string	"S_TROO_ATK3"
.LASF808:
	.string	"S_SKULL_DIE2"
.LASF809:
	.string	"S_SKULL_DIE3"
.LASF810:
	.string	"S_SKULL_DIE4"
.LASF811:
	.string	"S_SKULL_DIE5"
.LASF812:
	.string	"S_SKULL_DIE6"
.LASF163:
	.string	"SPR_PLAS"
.LASF1035:
	.string	"S_BON2A"
.LASF1036:
	.string	"S_BON2B"
.LASF76:
	.string	"SPR_PISF"
.LASF75:
	.string	"SPR_PISG"
.LASF1039:
	.string	"S_BON2E"
.LASF1262:
	.string	"MT_CHAINGUN"
.LASF311:
	.string	"S_TBALLX1"
.LASF312:
	.string	"S_TBALLX2"
.LASF313:
	.string	"S_TBALLX3"
.LASF38:
	.string	"wp_nochange"
.LASF1199:
	.string	"MT_CHAINGUY"
.LASF1415:
	.string	"degenmobj_t"
.LASF1518:
	.string	"sfx_posit2"
.LASF1519:
	.string	"sfx_posit3"
.LASF807:
	.string	"S_SKULL_DIE1"
.LASF1454:
	.string	"PST_DEAD"
.LASF1170:
	.string	"S_BRAINSTEM"
.LASF975:
	.string	"S_KEENSTND"
.LASF100:
	.string	"SPR_PLAY"
.LASF1392:
	.string	"readyweapon"
.LASF1523:
	.string	"sfx_cacsit"
.LASF1532:
	.string	"sfx_sklatk"
.LASF1110:
	.string	"S_HEADCANDLES2"
.LASF1229:
	.string	"MT_IFOG"
.LASF191:
	.string	"SPR_FSKU"
.LASF1578:
	.string	"sfx_bospn"
.LASF426:
	.string	"S_SPOS_RUN6"
.LASF282:
	.string	"S_SAWUP"
.LASF1015:
	.string	"S_ARM1A"
.LASF618:
	.string	"S_CPOS_STND"
.LASF1270:
	.string	"MT_MISC31"
.LASF1364:
	.string	"momz"
.LASF1089:
	.string	"S_SBOX"
.LASF1422:
	.string	"soundtraversed"
.LASF1273:
	.string	"MT_MISC34"
.LASF1432:
	.string	"bbox"
.LASF321:
	.string	"S_PLASEXP"
.LASF1276:
	.string	"MT_MISC37"
.LASF1512:
	.string	"sfx_slop"
.LASF1105:
	.string	"S_DEADBOTTOM"
.LASF1569:
	.string	"sfx_bdopn"
.LASF1162:
	.string	"S_HANGNOGUTS"
.LASF1334:
	.string	"attacksound"
.LASF1066:
	.string	"S_PINS2"
.LASF1067:
	.string	"S_PINS3"
.LASF1068:
	.string	"S_PINS4"
.LASF920:
	.string	"S_PAIN_ATK1"
.LASF921:
	.string	"S_PAIN_ATK2"
.LASF922:
	.string	"S_PAIN_ATK3"
.LASF923:
	.string	"S_PAIN_ATK4"
.LASF232:
	.string	"S_SGUNUP"
.LASF1434:
	.string	"frontsector"
.LASF185:
	.string	"SPR_CBRA"
.LASF1340:
	.string	"deathstate"
.LASF1017:
	.string	"S_ARM2A"
.LASF886:
	.string	"S_CYBER_STND"
.LASF1045:
	.string	"S_YKEY2"
.LASF495:
	.string	"S_FIRE3"
.LASF1333:
	.string	"reactiontime"
.LASF500:
	.string	"S_FIRE8"
.LASF740:
	.string	"S_BOSS_STND2"
.LASF1562:
	.string	"sfx_noway"
.LASF635:
	.string	"S_CPOS_DIE2"
.LASF1356:
	.string	"sprev"
.LASF283:
	.string	"S_SAW1"
.LASF284:
	.string	"S_SAW2"
.LASF285:
	.string	"S_SAW3"
.LASF1028:
	.string	"S_BON1"
.LASF1034:
	.string	"S_BON2"
.LASF1373:
	.string	"player"
.LASF280:
	.string	"S_SAWB"
.LASF668:
	.string	"S_TROO_PAIN2"
.LASF1215:
	.string	"MT_BOSSSPIT"
.LASF493:
	.string	"S_FIRE1"
.LASF494:
	.string	"S_FIRE2"
.LASF55:
	.string	"fixed_t"
.LASF496:
	.string	"S_FIRE4"
.LASF497:
	.string	"S_FIRE5"
.LASF498:
	.string	"S_FIRE6"
.LASF499:
	.string	"S_FIRE7"
.LASF153:
	.string	"SPR_BROK"
.LASF501:
	.string	"S_FIRE9"
.LASF1283:
	.string	"MT_MISC44"
.LASF1284:
	.string	"MT_MISC45"
.LASF1086:
	.string	"S_CELL"
.LASF1286:
	.string	"MT_MISC47"
.LASF151:
	.string	"SPR_AMMO"
.LASF1287:
	.string	"MT_MISC48"
.LASF1288:
	.string	"MT_MISC49"
.LASF799:
	.string	"S_SKULL_RUN1"
.LASF800:
	.string	"S_SKULL_RUN2"
.LASF1166:
	.string	"S_HANGTLOOKUP"
.LASF261:
	.string	"S_CHAIN"
.LASF291:
	.string	"S_PLASMAFLASH1"
.LASF247:
	.string	"S_DSGUN1"
.LASF248:
	.string	"S_DSGUN2"
.LASF142:
	.string	"SPR_SOUL"
.LASF102:
	.string	"SPR_SPOS"
.LASF251:
	.string	"S_DSGUN5"
.LASF252:
	.string	"S_DSGUN6"
.LASF253:
	.string	"S_DSGUN7"
.LASF254:
	.string	"S_DSGUN8"
.LASF255:
	.string	"S_DSGUN9"
.LASF419:
	.string	"S_SPOS_STND"
.LASF122:
	.string	"SPR_PAIN"
.LASF647:
	.string	"S_CPOS_RAISE1"
.LASF1391:
	.string	"frags"
.LASF1552:
	.string	"sfx_vildth"
.LASF1386:
	.string	"armorpoints"
.LASF15:
	.string	"buttons"
.LASF296:
	.string	"S_BFG1"
.LASF297:
	.string	"S_BFG2"
.LASF298:
	.string	"S_BFG3"
.LASF299:
	.string	"S_BFG4"
.LASF1461:
	.string	"in_stasis"
.LASF211:
	.string	"spritenum_t"
.LASF258:
	.string	"S_DSNR2"
.LASF798:
	.string	"S_SKULL_STND2"
.LASF1061:
	.string	"S_PINV2"
.LASF1062:
	.string	"S_PINV3"
.LASF691:
	.string	"S_SARG_RUN3"
.LASF1176:
	.string	"S_TECH2LAMP2"
.LASF1177:
	.string	"S_TECH2LAMP3"
.LASF1178:
	.string	"S_TECH2LAMP4"
.LASF1430:
	.string	"line_s"
.LASF74:
	.string	"SPR_PUNG"
.LASF642:
	.string	"S_CPOS_XDIE2"
.LASF643:
	.string	"S_CPOS_XDIE3"
.LASF644:
	.string	"S_CPOS_XDIE4"
.LASF645:
	.string	"S_CPOS_XDIE5"
.LASF646:
	.string	"S_CPOS_XDIE6"
.LASF827:
	.string	"S_SPID_ATK1"
.LASF828:
	.string	"S_SPID_ATK2"
.LASF829:
	.string	"S_SPID_ATK3"
.LASF830:
	.string	"S_SPID_ATK4"
.LASF551:
	.string	"S_SKEL_MISS1"
.LASF552:
	.string	"S_SKEL_MISS2"
.LASF553:
	.string	"S_SKEL_MISS3"
.LASF554:
	.string	"S_SKEL_MISS4"
.LASF308:
	.string	"S_PUFF4"
.LASF1048:
	.string	"S_RSKULL"
.LASF880:
	.string	"S_ARACH_PLAZ2"
.LASF1289:
	.string	"MT_MISC50"
.LASF1591:
	.string	"P_RemoveThinker"
.LASF728:
	.string	"S_HEAD_RAISE1"
.LASF1324:
	.string	"MT_MISC85"
.LASF729:
	.string	"S_HEAD_RAISE2"
.LASF730:
	.string	"S_HEAD_RAISE3"
.LASF1399:
	.string	"cheats"
.LASF137:
	.string	"SPR_BSKU"
.LASF732:
	.string	"S_HEAD_RAISE5"
.LASF733:
	.string	"S_HEAD_RAISE6"
.LASF1596:
	.string	"P_FindNextHighestFloor"
.LASF1267:
	.string	"MT_SUPERSHOTGUN"
.LASF148:
	.string	"SPR_PMAP"
.LASF996:
	.string	"S_BRAINEYE"
.LASF1474:
	.string	"crush"
.LASF149:
	.string	"SPR_PVIS"
.LASF1453:
	.string	"PST_LIVE"
.LASF1225:
	.string	"MT_ARACHPLAZ"
.LASF474:
	.string	"S_VILE_ATK8"
.LASF415:
	.string	"S_POSS_RAISE1"
.LASF416:
	.string	"S_POSS_RAISE2"
.LASF417:
	.string	"S_POSS_RAISE3"
.LASF418:
	.string	"S_POSS_RAISE4"
.LASF270:
	.string	"S_MISSILEDOWN"
.LASF1563:
	.string	"sfx_barexp"
.LASF1134:
	.string	"S_FLOATSKULL2"
.LASF1135:
	.string	"S_FLOATSKULL3"
.LASF1486:
	.string	"sfx_dbopn"
.LASF1490:
	.string	"sfx_bfg"
.LASF1069:
	.string	"S_MEGA"
.LASF749:
	.string	"S_BOSS_ATK1"
.LASF750:
	.string	"S_BOSS_ATK2"
.LASF751:
	.string	"S_BOSS_ATK3"
.LASF1359:
	.string	"subsector"
.LASF207:
	.string	"SPR_BRS1"
.LASF1414:
	.string	"vertex_t"
.LASF556:
	.string	"S_SKEL_PAIN2"
.LASF1093:
	.string	"S_CSAW"
.LASF1595:
	.string	"P_FindLowestFloorSurrounding"
.LASF46:
	.string	"pw_invulnerability"
.LASF736:
	.string	"S_BRBALLX1"
.LASF737:
	.string	"S_BRBALLX2"
.LASF738:
	.string	"S_BRBALLX3"
.LASF866:
	.string	"S_BSPI_DIE2"
.LASF867:
	.string	"S_BSPI_DIE3"
.LASF868:
	.string	"S_BSPI_DIE4"
.LASF869:
	.string	"S_BSPI_DIE5"
.LASF31:
	.string	"wp_chaingun"
.LASF871:
	.string	"S_BSPI_DIE7"
.LASF422:
	.string	"S_SPOS_RUN2"
.LASF1435:
	.string	"backsector"
.LASF423:
	.string	"S_SPOS_RUN3"
.LASF925:
	.string	"S_PAIN_PAIN2"
.LASF560:
	.string	"S_SKEL_DIE4"
.LASF1482:
	.string	"sfx_pistol"
.LASF156:
	.string	"SPR_SHEL"
.LASF1308:
	.string	"MT_MISC69"
.LASF1387:
	.string	"armortype"
.LASF4:
	.string	"false"
.LASF208:
	.string	"SPR_TLMP"
.LASF387:
	.string	"S_POSS_STND2"
.LASF1266:
	.string	"MT_SHOTGUN"
.LASF1191:
	.string	"MT_SHOTGUY"
.LASF1402:
	.string	"itemcount"
.LASF1171:
	.string	"S_TECHLAMP"
.LASF1212:
	.string	"MT_WOLFSS"
.LASF1502:
	.string	"sfx_dorcls"
.LASF769:
	.string	"S_BOS2_STND2"
.LASF1423:
	.string	"soundtarget"
.LASF264:
	.string	"S_CHAIN1"
.LASF265:
	.string	"S_CHAIN2"
.LASF266:
	.string	"S_CHAIN3"
.LASF317:
	.string	"S_RBALLX2"
.LASF318:
	.string	"S_RBALLX3"
.LASF193:
	.string	"SPR_TBLU"
.LASF420:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1483:
	.string	"sfx_shotgn"
.LASF1355:
	.string	"snext"
.LASF45:
	.string	"am_noammo"
.LASF1352:
	.string	"thinker_s"
.LASF67:
	.string	"thinker_t"
.LASF1543:
	.string	"sfx_bgdth1"
.LASF1544:
	.string	"sfx_bgdth2"
.LASF396:
	.string	"S_POSS_ATK1"
.LASF397:
	.string	"S_POSS_ATK2"
.LASF398:
	.string	"S_POSS_ATK3"
.LASF1310:
	.string	"MT_MISC71"
.LASF1159:
	.string	"S_RTORCHSHRT2"
.LASF1160:
	.string	"S_RTORCHSHRT3"
.LASF1161:
	.string	"S_RTORCHSHRT4"
.LASF1063:
	.string	"S_PINV4"
.LASF16:
	.string	"short int"
.LASF847:
	.string	"S_BSPI_RUN1"
.LASF1316:
	.string	"MT_MISC77"
.LASF1317:
	.string	"MT_MISC78"
.LASF1318:
	.string	"MT_MISC79"
.LASF1207:
	.string	"MT_SKULL"
.LASF1194:
	.string	"MT_UNDEAD"
.LASF64:
	.string	"prev"
.LASF557:
	.string	"S_SKEL_DIE1"
.LASF558:
	.string	"S_SKEL_DIE2"
.LASF559:
	.string	"S_SKEL_DIE3"
.LASF104:
	.string	"SPR_FIRE"
.LASF561:
	.string	"S_SKEL_DIE5"
.LASF562:
	.string	"S_SKEL_DIE6"
.LASF1168:
	.string	"S_COLONGIBS"
.LASF209:
	.string	"SPR_TLP2"
.LASF319:
	.string	"S_PLASBALL"
.LASF1539:
	.string	"sfx_pdiehi"
.LASF165:
	.string	"SPR_SGN2"
.LASF70:
	.string	"options"
.LASF118:
	.string	"SPR_BSPI"
.LASF120:
	.string	"SPR_APBX"
.LASF1410:
	.string	"colormap"
.LASF1242:
	.string	"MT_MISC10"
.LASF1243:
	.string	"MT_MISC11"
.LASF1244:
	.string	"MT_MISC12"
.LASF1246:
	.string	"MT_MISC13"
.LASF1248:
	.string	"MT_MISC14"
.LASF1249:
	.string	"MT_MISC15"
.LASF1250:
	.string	"MT_MISC16"
.LASF1253:
	.string	"MT_MISC17"
.LASF1254:
	.string	"MT_MISC18"
.LASF1082:
	.string	"S_CLIP"
.LASF1344:
	.string	"radius"
.LASF1368:
	.string	"health"
.LASF1216:
	.string	"MT_BOSSTARGET"
.LASF1528:
	.string	"sfx_kntsit"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_plats.c"
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
