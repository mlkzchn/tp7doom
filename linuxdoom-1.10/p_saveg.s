	.file	"p_saveg.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_saveg.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: p_tick.c,v 1.4 1997/02/03 16:47:55 b1 Exp $"
	.globl	save_p
	.bss
	.align 8
	.type	save_p, @object
	.size	save_p, 8
save_p:
	.zero	8
	.text
	.globl	P_ArchivePlayers
	.type	P_ArchivePlayers, @function
P_ArchivePlayers:
.LFB0:
	.file 1 "p_saveg.c"
	.loc 1 48 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# p_saveg.c:53:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 53 11
	movl	$0, -16(%rbp)	#, i
# p_saveg.c:53:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 53 5
	jmp	.L2	#
.L8:
# p_saveg.c:55: 	if (!playeringame[i])
	.loc 1 55 19
	movl	-16(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp102
	leaq	playeringame(%rip), %rax	#, tmp103
	movl	(%rdx,%rax), %eax	# playeringame[i_19], _1
# p_saveg.c:55: 	if (!playeringame[i])
	.loc 1 55 5
	testl	%eax, %eax	# _1
	je	.L9	#,
# p_saveg.c:58: 	PADSAVEP();
	.loc 1 58 2
	movq	save_p(%rip), %rax	# save_p, save_p.0_2
	movq	save_p(%rip), %rdx	# save_p, save_p.1_3
	andl	$3, %edx	#, _6
	movl	$4, %ecx	#, tmp104
	subl	%edx, %ecx	# _6, _7
	movslq	%ecx, %rdx	# _7, _8
	andl	$3, %edx	#, _9
	addq	%rdx, %rax	# _9, _10
	movq	%rax, save_p(%rip)	# _10, save_p
# p_saveg.c:60: 	dest = (player_t *)save_p;
	.loc 1 60 7
	movq	save_p(%rip), %rax	# save_p, tmp105
	movq	%rax, -8(%rbp)	# tmp105, dest
# p_saveg.c:61: 	memcpy (dest,&players[i],sizeof(player_t));
	.loc 1 61 15
	movl	-16(%rbp), %eax	# i, tmp107
	movslq	%eax, %rdx	# tmp107, tmp106
	movq	%rdx, %rax	# tmp106, tmp108
	salq	$2, %rax	#, tmp108
	addq	%rdx, %rax	# tmp106, tmp108
	salq	$6, %rax	#, tmp109
	leaq	players(%rip), %rdx	#, tmp110
	leaq	(%rax,%rdx), %rcx	#, _11
# p_saveg.c:61: 	memcpy (dest,&players[i],sizeof(player_t));
	.loc 1 61 2
	movq	-8(%rbp), %rax	# dest, tmp111
	movl	$320, %edx	#,
	movq	%rcx, %rsi	# _11,
	movq	%rax, %rdi	# tmp111,
	call	memcpy@PLT	#
# p_saveg.c:62: 	save_p += sizeof(player_t);
	.loc 1 62 9
	movq	save_p(%rip), %rax	# save_p, save_p.3_12
	addq	$320, %rax	#, _13
	movq	%rax, save_p(%rip)	# _13, save_p
# p_saveg.c:63: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 63 8
	movl	$0, -12(%rbp)	#, j
# p_saveg.c:63: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 63 2
	jmp	.L5	#
.L7:
# p_saveg.c:65: 	    if (dest->psprites[j].state)
	.loc 1 65 27
	movq	-8(%rbp), %rcx	# dest, tmp112
	movl	-12(%rbp), %eax	# j, tmp114
	movslq	%eax, %rdx	# tmp114, tmp113
	movq	%rdx, %rax	# tmp113, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp113, tmp115
	salq	$3, %rax	#, tmp116
	addq	%rcx, %rax	# tmp112, tmp117
	addq	$264, %rax	#, tmp118
	movq	(%rax), %rax	# dest_28->psprites[j_20].state, _14
# p_saveg.c:65: 	    if (dest->psprites[j].state)
	.loc 1 65 9
	testq	%rax, %rax	# _14
	je	.L6	#,
# p_saveg.c:68: 		    = (state_t *)(dest->psprites[j].state-states);
	.loc 1 68 38
	movq	-8(%rbp), %rcx	# dest, tmp119
	movl	-12(%rbp), %eax	# j, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	addq	%rax, %rax	# tmp122
	addq	%rdx, %rax	# tmp120, tmp122
	salq	$3, %rax	#, tmp123
	addq	%rcx, %rax	# tmp119, tmp124
	addq	$264, %rax	#, tmp125
	movq	(%rax), %rdx	# dest_28->psprites[j_20].state, _15
# p_saveg.c:68: 		    = (state_t *)(dest->psprites[j].state-states);
	.loc 1 68 44
	leaq	states(%rip), %rax	#, tmp126
	subq	%rax, %rdx	# tmp126, _16
	sarq	$3, %rdx	#, tmp127
	movabsq	$7905747460161236407, %rax	#, tmp129
	imulq	%rdx, %rax	# tmp127, tmp128
# p_saveg.c:68: 		    = (state_t *)(dest->psprites[j].state-states);
	.loc 1 68 9
	movq	%rax, %rsi	# _17, _18
# p_saveg.c:68: 		    = (state_t *)(dest->psprites[j].state-states);
	.loc 1 68 7
	movq	-8(%rbp), %rcx	# dest, tmp130
	movl	-12(%rbp), %eax	# j, tmp132
	movslq	%eax, %rdx	# tmp132, tmp131
	movq	%rdx, %rax	# tmp131, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# tmp131, tmp133
	salq	$3, %rax	#, tmp134
	addq	%rcx, %rax	# tmp130, tmp135
	addq	$264, %rax	#, tmp136
	movq	%rsi, (%rax)	# _18, dest_28->psprites[j_20].state
.L6:
# p_saveg.c:63: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 63 30 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L5:
# p_saveg.c:63: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 63 14 discriminator 1
	cmpl	$1, -12(%rbp)	#, j
	jle	.L7	#,
	jmp	.L4	#
.L9:
# p_saveg.c:56: 	    continue;
	.loc 1 56 6
	nop	
.L4:
# p_saveg.c:53:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 53 32 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L2:
# p_saveg.c:53:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 53 17 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L8	#,
# p_saveg.c:72: }
	.loc 1 72 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_ArchivePlayers, .-P_ArchivePlayers
	.globl	P_UnArchivePlayers
	.type	P_UnArchivePlayers, @function
P_UnArchivePlayers:
.LFB1:
	.loc 1 80 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# p_saveg.c:84:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 84 11
	movl	$0, -8(%rbp)	#, i
# p_saveg.c:84:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 84 5
	jmp	.L11	#
.L17:
# p_saveg.c:86: 	if (!playeringame[i])
	.loc 1 86 19
	movl	-8(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp103
	leaq	playeringame(%rip), %rax	#, tmp104
	movl	(%rdx,%rax), %eax	# playeringame[i_20], _1
# p_saveg.c:86: 	if (!playeringame[i])
	.loc 1 86 5
	testl	%eax, %eax	# _1
	je	.L18	#,
# p_saveg.c:89: 	PADSAVEP();
	.loc 1 89 2
	movq	save_p(%rip), %rax	# save_p, save_p.4_2
	movq	save_p(%rip), %rdx	# save_p, save_p.5_3
	andl	$3, %edx	#, _6
	movl	$4, %ecx	#, tmp105
	subl	%edx, %ecx	# _6, _7
	movslq	%ecx, %rdx	# _7, _8
	andl	$3, %edx	#, _9
	addq	%rdx, %rax	# _9, _10
	movq	%rax, save_p(%rip)	# _10, save_p
# p_saveg.c:91: 	memcpy (&players[i],save_p, sizeof(player_t));
	.loc 1 91 2
	movq	save_p(%rip), %rcx	# save_p, save_p.7_11
# p_saveg.c:91: 	memcpy (&players[i],save_p, sizeof(player_t));
	.loc 1 91 10
	movl	-8(%rbp), %eax	# i, tmp107
	movslq	%eax, %rdx	# tmp107, tmp106
	movq	%rdx, %rax	# tmp106, tmp108
	salq	$2, %rax	#, tmp108
	addq	%rdx, %rax	# tmp106, tmp108
	salq	$6, %rax	#, tmp109
	leaq	players(%rip), %rdx	#, tmp110
	addq	%rdx, %rax	# tmp110, _12
# p_saveg.c:91: 	memcpy (&players[i],save_p, sizeof(player_t));
	.loc 1 91 2
	movl	$320, %edx	#,
	movq	%rcx, %rsi	# save_p.7_11,
	movq	%rax, %rdi	# _12,
	call	memcpy@PLT	#
# p_saveg.c:92: 	save_p += sizeof(player_t);
	.loc 1 92 9
	movq	save_p(%rip), %rax	# save_p, save_p.8_13
	addq	$320, %rax	#, _14
	movq	%rax, save_p(%rip)	# _14, save_p
# p_saveg.c:95: 	players[i].mo = NULL;	
	.loc 1 95 16
	movl	-8(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, tmp111
	movq	%rdx, %rax	# tmp111, tmp114
	salq	$2, %rax	#, tmp114
	addq	%rdx, %rax	# tmp111, tmp114
	salq	$6, %rax	#, tmp115
	movq	%rax, %rdx	# tmp114, tmp113
	leaq	players(%rip), %rax	#, tmp116
	movq	$0, (%rdx,%rax)	#, players[i_20].mo
# p_saveg.c:96: 	players[i].message = NULL;
	.loc 1 96 21
	movl	-8(%rbp), %eax	# i, tmp118
	movslq	%eax, %rdx	# tmp118, tmp117
	movq	%rdx, %rax	# tmp117, tmp120
	salq	$2, %rax	#, tmp120
	addq	%rdx, %rax	# tmp117, tmp120
	salq	$6, %rax	#, tmp121
	movq	%rax, %rdx	# tmp120, tmp119
	leaq	224+players(%rip), %rax	#, tmp122
	movq	$0, (%rdx,%rax)	#, players[i_20].message
# p_saveg.c:97: 	players[i].attacker = NULL;
	.loc 1 97 22
	movl	-8(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, tmp123
	movq	%rdx, %rax	# tmp123, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# tmp123, tmp126
	salq	$6, %rax	#, tmp127
	movq	%rax, %rdx	# tmp126, tmp125
	leaq	240+players(%rip), %rax	#, tmp128
	movq	$0, (%rdx,%rax)	#, players[i_20].attacker
# p_saveg.c:99: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 99 8
	movl	$0, -4(%rbp)	#, j
# p_saveg.c:99: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 99 2
	jmp	.L14	#
.L16:
# p_saveg.c:101: 	    if (players[i]. psprites[j].state)
	.loc 1 101 33
	movl	-4(%rbp), %eax	# j, tmp130
	cltq
	movl	-8(%rbp), %edx	# i, tmp132
	movslq	%edx, %rcx	# tmp132, tmp131
	movq	%rax, %rdx	# tmp129, tmp133
	addq	%rdx, %rdx	# tmp133
	addq	%rax, %rdx	# tmp129, tmp133
	leaq	0(,%rdx,8), %rax	#, tmp134
	movq	%rax, %rdx	# tmp134, tmp133
	movq	%rcx, %rax	# tmp131, tmp135
	salq	$2, %rax	#, tmp135
	addq	%rcx, %rax	# tmp131, tmp135
	salq	$6, %rax	#, tmp136
	addq	%rax, %rdx	# tmp135, tmp137
	leaq	264+players(%rip), %rax	#, tmp139
	addq	%rdx, %rax	# tmp137, tmp138
	movq	(%rax), %rax	# players[i_20].psprites[j_21].state, _15
# p_saveg.c:101: 	    if (players[i]. psprites[j].state)
	.loc 1 101 9
	testq	%rax, %rax	# _15
	je	.L15	#,
# p_saveg.c:104: 		    = &states[ (int)players[i].psprites[j].state ];
	.loc 1 104 45
	movl	-4(%rbp), %eax	# j, tmp141
	cltq
	movl	-8(%rbp), %edx	# i, tmp143
	movslq	%edx, %rcx	# tmp143, tmp142
	movq	%rax, %rdx	# tmp140, tmp144
	addq	%rdx, %rdx	# tmp144
	addq	%rax, %rdx	# tmp140, tmp144
	leaq	0(,%rdx,8), %rax	#, tmp145
	movq	%rax, %rdx	# tmp145, tmp144
	movq	%rcx, %rax	# tmp142, tmp146
	salq	$2, %rax	#, tmp146
	addq	%rcx, %rax	# tmp142, tmp146
	salq	$6, %rax	#, tmp147
	addq	%rax, %rdx	# tmp146, tmp148
	leaq	264+players(%rip), %rax	#, tmp150
	addq	%rdx, %rax	# tmp148, tmp149
	movq	(%rax), %rax	# players[i_20].psprites[j_21].state, _16
# p_saveg.c:104: 		    = &states[ (int)players[i].psprites[j].state ];
	.loc 1 104 9
	movslq	%eax, %rdx	# _18, tmp151
	movq	%rdx, %rax	# tmp151, tmp152
	salq	$3, %rax	#, tmp153
	subq	%rdx, %rax	# tmp151, tmp152
	salq	$3, %rax	#, tmp154
	leaq	states(%rip), %rdx	#, tmp155
	leaq	(%rax,%rdx), %rsi	#, _19
# p_saveg.c:104: 		    = &states[ (int)players[i].psprites[j].state ];
	.loc 1 104 7
	movl	-4(%rbp), %eax	# j, tmp157
	cltq
	movl	-8(%rbp), %edx	# i, tmp159
	movslq	%edx, %rcx	# tmp159, tmp158
	movq	%rax, %rdx	# tmp156, tmp160
	addq	%rdx, %rdx	# tmp160
	addq	%rax, %rdx	# tmp156, tmp160
	leaq	0(,%rdx,8), %rax	#, tmp161
	movq	%rax, %rdx	# tmp161, tmp160
	movq	%rcx, %rax	# tmp158, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rcx, %rax	# tmp158, tmp162
	salq	$6, %rax	#, tmp163
	addq	%rax, %rdx	# tmp162, tmp164
	leaq	264+players(%rip), %rax	#, tmp166
	addq	%rdx, %rax	# tmp164, tmp165
	movq	%rsi, (%rax)	# _19, players[i_20].psprites[j_21].state
.L15:
# p_saveg.c:99: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 99 30 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L14:
# p_saveg.c:99: 	for (j=0 ; j<NUMPSPRITES ; j++)
	.loc 1 99 14 discriminator 1
	cmpl	$1, -4(%rbp)	#, j
	jle	.L16	#,
	jmp	.L13	#
.L18:
# p_saveg.c:87: 	    continue;
	.loc 1 87 6
	nop	
.L13:
# p_saveg.c:84:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 84 32 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L11:
# p_saveg.c:84:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 84 17 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L17	#,
# p_saveg.c:108: }
	.loc 1 108 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_UnArchivePlayers, .-P_UnArchivePlayers
	.globl	P_ArchiveWorld
	.type	P_ArchiveWorld, @function
P_ArchiveWorld:
.LFB2:
	.loc 1 115 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# p_saveg.c:123:     put = (short *)save_p;
	.loc 1 123 9
	movq	save_p(%rip), %rax	# save_p, tmp127
	movq	%rax, -16(%rbp)	# tmp127, put
# p_saveg.c:126:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 126 11
	movl	$0, -40(%rbp)	#, i
# p_saveg.c:126:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 126 19
	movq	sectors(%rip), %rax	# sectors, tmp128
	movq	%rax, -32(%rbp)	# tmp128, sec
# p_saveg.c:126:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 126 5
	jmp	.L20	#
.L21:
# p_saveg.c:128: 	*put++ = sec->floorheight >> FRACBITS;
	.loc 1 128 14
	movq	-32(%rbp), %rax	# sec, tmp129
	movl	(%rax), %eax	# sec_49->floorheight, _1
# p_saveg.c:128: 	*put++ = sec->floorheight >> FRACBITS;
	.loc 1 128 28
	sarl	$16, %eax	#, _1
	movl	%eax, %ecx	# _1, _2
# p_saveg.c:128: 	*put++ = sec->floorheight >> FRACBITS;
	.loc 1 128 6
	movq	-16(%rbp), %rax	# put, put.9_3
	leaq	2(%rax), %rdx	#, tmp130
	movq	%rdx, -16(%rbp)	# tmp130, put
# p_saveg.c:128: 	*put++ = sec->floorheight >> FRACBITS;
	.loc 1 128 9
	movl	%ecx, %edx	# _2, _4
	movw	%dx, (%rax)	# _4, *put.9_3
# p_saveg.c:129: 	*put++ = sec->ceilingheight >> FRACBITS;
	.loc 1 129 14
	movq	-32(%rbp), %rax	# sec, tmp131
	movl	4(%rax), %eax	# sec_49->ceilingheight, _5
# p_saveg.c:129: 	*put++ = sec->ceilingheight >> FRACBITS;
	.loc 1 129 30
	sarl	$16, %eax	#, _5
	movl	%eax, %ecx	# _5, _6
# p_saveg.c:129: 	*put++ = sec->ceilingheight >> FRACBITS;
	.loc 1 129 6
	movq	-16(%rbp), %rax	# put, put.10_7
	leaq	2(%rax), %rdx	#, tmp132
	movq	%rdx, -16(%rbp)	# tmp132, put
# p_saveg.c:129: 	*put++ = sec->ceilingheight >> FRACBITS;
	.loc 1 129 9
	movl	%ecx, %edx	# _6, _8
	movw	%dx, (%rax)	# _8, *put.10_7
# p_saveg.c:130: 	*put++ = sec->floorpic;
	.loc 1 130 6
	movq	-16(%rbp), %rax	# put, put.11_9
	leaq	2(%rax), %rdx	#, tmp133
	movq	%rdx, -16(%rbp)	# tmp133, put
# p_saveg.c:130: 	*put++ = sec->floorpic;
	.loc 1 130 14
	movq	-32(%rbp), %rdx	# sec, tmp134
	movzwl	8(%rdx), %edx	# sec_49->floorpic, _10
# p_saveg.c:130: 	*put++ = sec->floorpic;
	.loc 1 130 9
	movw	%dx, (%rax)	# _10, *put.11_9
# p_saveg.c:131: 	*put++ = sec->ceilingpic;
	.loc 1 131 6
	movq	-16(%rbp), %rax	# put, put.12_11
	leaq	2(%rax), %rdx	#, tmp135
	movq	%rdx, -16(%rbp)	# tmp135, put
# p_saveg.c:131: 	*put++ = sec->ceilingpic;
	.loc 1 131 14
	movq	-32(%rbp), %rdx	# sec, tmp136
	movzwl	10(%rdx), %edx	# sec_49->ceilingpic, _12
# p_saveg.c:131: 	*put++ = sec->ceilingpic;
	.loc 1 131 9
	movw	%dx, (%rax)	# _12, *put.12_11
# p_saveg.c:132: 	*put++ = sec->lightlevel;
	.loc 1 132 6
	movq	-16(%rbp), %rax	# put, put.13_13
	leaq	2(%rax), %rdx	#, tmp137
	movq	%rdx, -16(%rbp)	# tmp137, put
# p_saveg.c:132: 	*put++ = sec->lightlevel;
	.loc 1 132 14
	movq	-32(%rbp), %rdx	# sec, tmp138
	movzwl	12(%rdx), %edx	# sec_49->lightlevel, _14
# p_saveg.c:132: 	*put++ = sec->lightlevel;
	.loc 1 132 9
	movw	%dx, (%rax)	# _14, *put.13_13
# p_saveg.c:133: 	*put++ = sec->special;		// needed?
	.loc 1 133 6
	movq	-16(%rbp), %rax	# put, put.14_15
	leaq	2(%rax), %rdx	#, tmp139
	movq	%rdx, -16(%rbp)	# tmp139, put
# p_saveg.c:133: 	*put++ = sec->special;		// needed?
	.loc 1 133 14
	movq	-32(%rbp), %rdx	# sec, tmp140
	movzwl	14(%rdx), %edx	# sec_49->special, _16
# p_saveg.c:133: 	*put++ = sec->special;		// needed?
	.loc 1 133 9
	movw	%dx, (%rax)	# _16, *put.14_15
# p_saveg.c:134: 	*put++ = sec->tag;		// needed?
	.loc 1 134 6
	movq	-16(%rbp), %rax	# put, put.15_17
	leaq	2(%rax), %rdx	#, tmp141
	movq	%rdx, -16(%rbp)	# tmp141, put
# p_saveg.c:134: 	*put++ = sec->tag;		// needed?
	.loc 1 134 14
	movq	-32(%rbp), %rdx	# sec, tmp142
	movzwl	16(%rdx), %edx	# sec_49->tag, _18
# p_saveg.c:134: 	*put++ = sec->tag;		// needed?
	.loc 1 134 9
	movw	%dx, (%rax)	# _18, *put.15_17
# p_saveg.c:126:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 126 47 discriminator 3
	addl	$1, -40(%rbp)	#, i
# p_saveg.c:126:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 126 53 discriminator 3
	subq	$-128, -32(%rbp)	#, sec
.L20:
# p_saveg.c:126:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 126 32 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.16_19
	cmpl	%eax, -40(%rbp)	# numsectors.16_19, i
	jl	.L21	#,
# p_saveg.c:139:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 139 11
	movl	$0, -40(%rbp)	#, i
# p_saveg.c:139:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 139 18
	movq	lines(%rip), %rax	# lines, tmp143
	movq	%rax, -24(%rbp)	# tmp143, li
# p_saveg.c:139:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 139 5
	jmp	.L22	#
.L27:
# p_saveg.c:141: 	*put++ = li->flags;
	.loc 1 141 6
	movq	-16(%rbp), %rax	# put, put.17_20
	leaq	2(%rax), %rdx	#, tmp144
	movq	%rdx, -16(%rbp)	# tmp144, put
# p_saveg.c:141: 	*put++ = li->flags;
	.loc 1 141 13
	movq	-24(%rbp), %rdx	# li, tmp145
	movzwl	24(%rdx), %edx	# li_50->flags, _21
# p_saveg.c:141: 	*put++ = li->flags;
	.loc 1 141 9
	movw	%dx, (%rax)	# _21, *put.17_20
# p_saveg.c:142: 	*put++ = li->special;
	.loc 1 142 6
	movq	-16(%rbp), %rax	# put, put.18_22
	leaq	2(%rax), %rdx	#, tmp146
	movq	%rdx, -16(%rbp)	# tmp146, put
# p_saveg.c:142: 	*put++ = li->special;
	.loc 1 142 13
	movq	-24(%rbp), %rdx	# li, tmp147
	movzwl	26(%rdx), %edx	# li_50->special, _23
# p_saveg.c:142: 	*put++ = li->special;
	.loc 1 142 9
	movw	%dx, (%rax)	# _23, *put.18_22
# p_saveg.c:143: 	*put++ = li->tag;
	.loc 1 143 6
	movq	-16(%rbp), %rax	# put, put.19_24
	leaq	2(%rax), %rdx	#, tmp148
	movq	%rdx, -16(%rbp)	# tmp148, put
# p_saveg.c:143: 	*put++ = li->tag;
	.loc 1 143 13
	movq	-24(%rbp), %rdx	# li, tmp149
	movzwl	28(%rdx), %edx	# li_50->tag, _25
# p_saveg.c:143: 	*put++ = li->tag;
	.loc 1 143 9
	movw	%dx, (%rax)	# _25, *put.19_24
# p_saveg.c:144: 	for (j=0 ; j<2 ; j++)
	.loc 1 144 8
	movl	$0, -36(%rbp)	#, j
# p_saveg.c:144: 	for (j=0 ; j<2 ; j++)
	.loc 1 144 2
	jmp	.L23	#
.L26:
# p_saveg.c:146: 	    if (li->sidenum[j] == -1)
	.loc 1 146 21
	movq	-24(%rbp), %rax	# li, tmp150
	movl	-36(%rbp), %edx	# j, tmp152
	movslq	%edx, %rdx	# tmp152, tmp151
	addq	$8, %rdx	#, tmp153
	movzwl	14(%rax,%rdx,2), %eax	# li_50->sidenum[j_48], _26
# p_saveg.c:146: 	    if (li->sidenum[j] == -1)
	.loc 1 146 9
	cmpw	$-1, %ax	#, _26
	je	.L28	#,
# p_saveg.c:149: 	    si = &sides[li->sidenum[j]];
	.loc 1 149 11
	movq	sides(%rip), %rcx	# sides, sides.20_27
# p_saveg.c:149: 	    si = &sides[li->sidenum[j]];
	.loc 1 149 29
	movq	-24(%rbp), %rax	# li, tmp154
	movl	-36(%rbp), %edx	# j, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	addq	$8, %rdx	#, tmp157
	movzwl	14(%rax,%rdx,2), %eax	# li_50->sidenum[j_48], _28
	movswq	%ax, %rdx	# _28, _29
# p_saveg.c:149: 	    si = &sides[li->sidenum[j]];
	.loc 1 149 17
	movq	%rdx, %rax	# _29, tmp158
	addq	%rax, %rax	# tmp158
	addq	%rdx, %rax	# _29, tmp158
	salq	$3, %rax	#, tmp159
# p_saveg.c:149: 	    si = &sides[li->sidenum[j]];
	.loc 1 149 9
	addq	%rcx, %rax	# sides.20_27, tmp160
	movq	%rax, -8(%rbp)	# tmp160, si
# p_saveg.c:151: 	    *put++ = si->textureoffset >> FRACBITS;
	.loc 1 151 17
	movq	-8(%rbp), %rax	# si, tmp161
	movl	(%rax), %eax	# si_75->textureoffset, _31
# p_saveg.c:151: 	    *put++ = si->textureoffset >> FRACBITS;
	.loc 1 151 33
	sarl	$16, %eax	#, _31
	movl	%eax, %ecx	# _31, _32
# p_saveg.c:151: 	    *put++ = si->textureoffset >> FRACBITS;
	.loc 1 151 10
	movq	-16(%rbp), %rax	# put, put.21_33
	leaq	2(%rax), %rdx	#, tmp162
	movq	%rdx, -16(%rbp)	# tmp162, put
# p_saveg.c:151: 	    *put++ = si->textureoffset >> FRACBITS;
	.loc 1 151 13
	movl	%ecx, %edx	# _32, _34
	movw	%dx, (%rax)	# _34, *put.21_33
# p_saveg.c:152: 	    *put++ = si->rowoffset >> FRACBITS;
	.loc 1 152 17
	movq	-8(%rbp), %rax	# si, tmp163
	movl	4(%rax), %eax	# si_75->rowoffset, _35
# p_saveg.c:152: 	    *put++ = si->rowoffset >> FRACBITS;
	.loc 1 152 29
	sarl	$16, %eax	#, _35
	movl	%eax, %ecx	# _35, _36
# p_saveg.c:152: 	    *put++ = si->rowoffset >> FRACBITS;
	.loc 1 152 10
	movq	-16(%rbp), %rax	# put, put.22_37
	leaq	2(%rax), %rdx	#, tmp164
	movq	%rdx, -16(%rbp)	# tmp164, put
# p_saveg.c:152: 	    *put++ = si->rowoffset >> FRACBITS;
	.loc 1 152 13
	movl	%ecx, %edx	# _36, _38
	movw	%dx, (%rax)	# _38, *put.22_37
# p_saveg.c:153: 	    *put++ = si->toptexture;
	.loc 1 153 10
	movq	-16(%rbp), %rax	# put, put.23_39
	leaq	2(%rax), %rdx	#, tmp165
	movq	%rdx, -16(%rbp)	# tmp165, put
# p_saveg.c:153: 	    *put++ = si->toptexture;
	.loc 1 153 17
	movq	-8(%rbp), %rdx	# si, tmp166
	movzwl	8(%rdx), %edx	# si_75->toptexture, _40
# p_saveg.c:153: 	    *put++ = si->toptexture;
	.loc 1 153 13
	movw	%dx, (%rax)	# _40, *put.23_39
# p_saveg.c:154: 	    *put++ = si->bottomtexture;
	.loc 1 154 10
	movq	-16(%rbp), %rax	# put, put.24_41
	leaq	2(%rax), %rdx	#, tmp167
	movq	%rdx, -16(%rbp)	# tmp167, put
# p_saveg.c:154: 	    *put++ = si->bottomtexture;
	.loc 1 154 17
	movq	-8(%rbp), %rdx	# si, tmp168
	movzwl	10(%rdx), %edx	# si_75->bottomtexture, _42
# p_saveg.c:154: 	    *put++ = si->bottomtexture;
	.loc 1 154 13
	movw	%dx, (%rax)	# _42, *put.24_41
# p_saveg.c:155: 	    *put++ = si->midtexture;	
	.loc 1 155 10
	movq	-16(%rbp), %rax	# put, put.25_43
	leaq	2(%rax), %rdx	#, tmp169
	movq	%rdx, -16(%rbp)	# tmp169, put
# p_saveg.c:155: 	    *put++ = si->midtexture;	
	.loc 1 155 17
	movq	-8(%rbp), %rdx	# si, tmp170
	movzwl	12(%rdx), %edx	# si_75->midtexture, _44
# p_saveg.c:155: 	    *put++ = si->midtexture;	
	.loc 1 155 13
	movw	%dx, (%rax)	# _44, *put.25_43
	jmp	.L25	#
.L28:
# p_saveg.c:147: 		continue;
	.loc 1 147 3
	nop	
.L25:
# p_saveg.c:144: 	for (j=0 ; j<2 ; j++)
	.loc 1 144 20 discriminator 2
	addl	$1, -36(%rbp)	#, j
.L23:
# p_saveg.c:144: 	for (j=0 ; j<2 ; j++)
	.loc 1 144 14 discriminator 1
	cmpl	$1, -36(%rbp)	#, j
	jle	.L26	#,
# p_saveg.c:139:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 139 42 discriminator 2
	addl	$1, -40(%rbp)	#, i
# p_saveg.c:139:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 139 47 discriminator 2
	addq	$88, -24(%rbp)	#, li
.L22:
# p_saveg.c:139:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 139 29 discriminator 1
	movl	numlines(%rip), %eax	# numlines, numlines.26_45
	cmpl	%eax, -40(%rbp)	# numlines.26_45, i
	jl	.L27	#,
# p_saveg.c:159:     save_p = (byte *)put;
	.loc 1 159 12
	movq	-16(%rbp), %rax	# put, tmp171
	movq	%rax, save_p(%rip)	# tmp171, save_p
# p_saveg.c:160: }
	.loc 1 160 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_ArchiveWorld, .-P_ArchiveWorld
	.globl	P_UnArchiveWorld
	.type	P_UnArchiveWorld, @function
P_UnArchiveWorld:
.LFB3:
	.loc 1 168 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# p_saveg.c:176:     get = (short *)save_p;
	.loc 1 176 9
	movq	save_p(%rip), %rax	# save_p, tmp127
	movq	%rax, -16(%rbp)	# tmp127, get
# p_saveg.c:179:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 179 11
	movl	$0, -40(%rbp)	#, i
# p_saveg.c:179:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 179 19
	movq	sectors(%rip), %rax	# sectors, tmp128
	movq	%rax, -32(%rbp)	# tmp128, sec
# p_saveg.c:179:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 179 5
	jmp	.L30	#
.L31:
# p_saveg.c:181: 	sec->floorheight = *get++ << FRACBITS;
	.loc 1 181 25
	movq	-16(%rbp), %rax	# get, get.27_1
	leaq	2(%rax), %rdx	#, tmp129
	movq	%rdx, -16(%rbp)	# tmp129, get
# p_saveg.c:181: 	sec->floorheight = *get++ << FRACBITS;
	.loc 1 181 21
	movzwl	(%rax), %eax	# *get.27_1, _2
	cwtl
# p_saveg.c:181: 	sec->floorheight = *get++ << FRACBITS;
	.loc 1 181 28
	sall	$16, %eax	#, _3
	movl	%eax, %edx	# _3, _4
# p_saveg.c:181: 	sec->floorheight = *get++ << FRACBITS;
	.loc 1 181 19
	movq	-32(%rbp), %rax	# sec, tmp130
	movl	%edx, (%rax)	# _4, sec_49->floorheight
# p_saveg.c:182: 	sec->ceilingheight = *get++ << FRACBITS;
	.loc 1 182 27
	movq	-16(%rbp), %rax	# get, get.28_5
	leaq	2(%rax), %rdx	#, tmp131
	movq	%rdx, -16(%rbp)	# tmp131, get
# p_saveg.c:182: 	sec->ceilingheight = *get++ << FRACBITS;
	.loc 1 182 23
	movzwl	(%rax), %eax	# *get.28_5, _6
	cwtl
# p_saveg.c:182: 	sec->ceilingheight = *get++ << FRACBITS;
	.loc 1 182 30
	sall	$16, %eax	#, _7
	movl	%eax, %edx	# _7, _8
# p_saveg.c:182: 	sec->ceilingheight = *get++ << FRACBITS;
	.loc 1 182 21
	movq	-32(%rbp), %rax	# sec, tmp132
	movl	%edx, 4(%rax)	# _8, sec_49->ceilingheight
# p_saveg.c:183: 	sec->floorpic = *get++;
	.loc 1 183 22
	movq	-16(%rbp), %rax	# get, get.29_9
	leaq	2(%rax), %rdx	#, tmp133
	movq	%rdx, -16(%rbp)	# tmp133, get
# p_saveg.c:183: 	sec->floorpic = *get++;
	.loc 1 183 18
	movzwl	(%rax), %edx	# *get.29_9, _10
# p_saveg.c:183: 	sec->floorpic = *get++;
	.loc 1 183 16
	movq	-32(%rbp), %rax	# sec, tmp134
	movw	%dx, 8(%rax)	# _10, sec_49->floorpic
# p_saveg.c:184: 	sec->ceilingpic = *get++;
	.loc 1 184 24
	movq	-16(%rbp), %rax	# get, get.30_11
	leaq	2(%rax), %rdx	#, tmp135
	movq	%rdx, -16(%rbp)	# tmp135, get
# p_saveg.c:184: 	sec->ceilingpic = *get++;
	.loc 1 184 20
	movzwl	(%rax), %edx	# *get.30_11, _12
# p_saveg.c:184: 	sec->ceilingpic = *get++;
	.loc 1 184 18
	movq	-32(%rbp), %rax	# sec, tmp136
	movw	%dx, 10(%rax)	# _12, sec_49->ceilingpic
# p_saveg.c:185: 	sec->lightlevel = *get++;
	.loc 1 185 24
	movq	-16(%rbp), %rax	# get, get.31_13
	leaq	2(%rax), %rdx	#, tmp137
	movq	%rdx, -16(%rbp)	# tmp137, get
# p_saveg.c:185: 	sec->lightlevel = *get++;
	.loc 1 185 20
	movzwl	(%rax), %edx	# *get.31_13, _14
# p_saveg.c:185: 	sec->lightlevel = *get++;
	.loc 1 185 18
	movq	-32(%rbp), %rax	# sec, tmp138
	movw	%dx, 12(%rax)	# _14, sec_49->lightlevel
# p_saveg.c:186: 	sec->special = *get++;		// needed?
	.loc 1 186 21
	movq	-16(%rbp), %rax	# get, get.32_15
	leaq	2(%rax), %rdx	#, tmp139
	movq	%rdx, -16(%rbp)	# tmp139, get
# p_saveg.c:186: 	sec->special = *get++;		// needed?
	.loc 1 186 17
	movzwl	(%rax), %edx	# *get.32_15, _16
# p_saveg.c:186: 	sec->special = *get++;		// needed?
	.loc 1 186 15
	movq	-32(%rbp), %rax	# sec, tmp140
	movw	%dx, 14(%rax)	# _16, sec_49->special
# p_saveg.c:187: 	sec->tag = *get++;		// needed?
	.loc 1 187 17
	movq	-16(%rbp), %rax	# get, get.33_17
	leaq	2(%rax), %rdx	#, tmp141
	movq	%rdx, -16(%rbp)	# tmp141, get
# p_saveg.c:187: 	sec->tag = *get++;		// needed?
	.loc 1 187 13
	movzwl	(%rax), %edx	# *get.33_17, _18
# p_saveg.c:187: 	sec->tag = *get++;		// needed?
	.loc 1 187 11
	movq	-32(%rbp), %rax	# sec, tmp142
	movw	%dx, 16(%rax)	# _18, sec_49->tag
# p_saveg.c:188: 	sec->specialdata = 0;
	.loc 1 188 19
	movq	-32(%rbp), %rax	# sec, tmp143
	movq	$0, 104(%rax)	#, sec_49->specialdata
# p_saveg.c:189: 	sec->soundtarget = 0;
	.loc 1 189 19
	movq	-32(%rbp), %rax	# sec, tmp144
	movq	$0, 24(%rax)	#, sec_49->soundtarget
# p_saveg.c:179:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 179 47 discriminator 3
	addl	$1, -40(%rbp)	#, i
# p_saveg.c:179:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 179 53 discriminator 3
	subq	$-128, -32(%rbp)	#, sec
.L30:
# p_saveg.c:179:     for (i=0, sec = sectors ; i<numsectors ; i++,sec++)
	.loc 1 179 32 discriminator 1
	movl	numsectors(%rip), %eax	# numsectors, numsectors.34_19
	cmpl	%eax, -40(%rbp)	# numsectors.34_19, i
	jl	.L31	#,
# p_saveg.c:193:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 193 11
	movl	$0, -40(%rbp)	#, i
# p_saveg.c:193:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 193 18
	movq	lines(%rip), %rax	# lines, tmp145
	movq	%rax, -24(%rbp)	# tmp145, li
# p_saveg.c:193:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 193 5
	jmp	.L32	#
.L37:
# p_saveg.c:195: 	li->flags = *get++;
	.loc 1 195 18
	movq	-16(%rbp), %rax	# get, get.35_20
	leaq	2(%rax), %rdx	#, tmp146
	movq	%rdx, -16(%rbp)	# tmp146, get
# p_saveg.c:195: 	li->flags = *get++;
	.loc 1 195 14
	movzwl	(%rax), %edx	# *get.35_20, _21
# p_saveg.c:195: 	li->flags = *get++;
	.loc 1 195 12
	movq	-24(%rbp), %rax	# li, tmp147
	movw	%dx, 24(%rax)	# _21, li_50->flags
# p_saveg.c:196: 	li->special = *get++;
	.loc 1 196 20
	movq	-16(%rbp), %rax	# get, get.36_22
	leaq	2(%rax), %rdx	#, tmp148
	movq	%rdx, -16(%rbp)	# tmp148, get
# p_saveg.c:196: 	li->special = *get++;
	.loc 1 196 16
	movzwl	(%rax), %edx	# *get.36_22, _23
# p_saveg.c:196: 	li->special = *get++;
	.loc 1 196 14
	movq	-24(%rbp), %rax	# li, tmp149
	movw	%dx, 26(%rax)	# _23, li_50->special
# p_saveg.c:197: 	li->tag = *get++;
	.loc 1 197 16
	movq	-16(%rbp), %rax	# get, get.37_24
	leaq	2(%rax), %rdx	#, tmp150
	movq	%rdx, -16(%rbp)	# tmp150, get
# p_saveg.c:197: 	li->tag = *get++;
	.loc 1 197 12
	movzwl	(%rax), %edx	# *get.37_24, _25
# p_saveg.c:197: 	li->tag = *get++;
	.loc 1 197 10
	movq	-24(%rbp), %rax	# li, tmp151
	movw	%dx, 28(%rax)	# _25, li_50->tag
# p_saveg.c:198: 	for (j=0 ; j<2 ; j++)
	.loc 1 198 8
	movl	$0, -36(%rbp)	#, j
# p_saveg.c:198: 	for (j=0 ; j<2 ; j++)
	.loc 1 198 2
	jmp	.L33	#
.L36:
# p_saveg.c:200: 	    if (li->sidenum[j] == -1)
	.loc 1 200 21
	movq	-24(%rbp), %rax	# li, tmp152
	movl	-36(%rbp), %edx	# j, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	addq	$8, %rdx	#, tmp155
	movzwl	14(%rax,%rdx,2), %eax	# li_50->sidenum[j_48], _26
# p_saveg.c:200: 	    if (li->sidenum[j] == -1)
	.loc 1 200 9
	cmpw	$-1, %ax	#, _26
	je	.L38	#,
# p_saveg.c:202: 	    si = &sides[li->sidenum[j]];
	.loc 1 202 11
	movq	sides(%rip), %rcx	# sides, sides.38_27
# p_saveg.c:202: 	    si = &sides[li->sidenum[j]];
	.loc 1 202 29
	movq	-24(%rbp), %rax	# li, tmp156
	movl	-36(%rbp), %edx	# j, tmp158
	movslq	%edx, %rdx	# tmp158, tmp157
	addq	$8, %rdx	#, tmp159
	movzwl	14(%rax,%rdx,2), %eax	# li_50->sidenum[j_48], _28
	movswq	%ax, %rdx	# _28, _29
# p_saveg.c:202: 	    si = &sides[li->sidenum[j]];
	.loc 1 202 17
	movq	%rdx, %rax	# _29, tmp160
	addq	%rax, %rax	# tmp160
	addq	%rdx, %rax	# _29, tmp160
	salq	$3, %rax	#, tmp161
# p_saveg.c:202: 	    si = &sides[li->sidenum[j]];
	.loc 1 202 9
	addq	%rcx, %rax	# sides.38_27, tmp162
	movq	%rax, -8(%rbp)	# tmp162, si
# p_saveg.c:203: 	    si->textureoffset = *get++ << FRACBITS;
	.loc 1 203 30
	movq	-16(%rbp), %rax	# get, get.39_31
	leaq	2(%rax), %rdx	#, tmp163
	movq	%rdx, -16(%rbp)	# tmp163, get
# p_saveg.c:203: 	    si->textureoffset = *get++ << FRACBITS;
	.loc 1 203 26
	movzwl	(%rax), %eax	# *get.39_31, _32
	cwtl
# p_saveg.c:203: 	    si->textureoffset = *get++ << FRACBITS;
	.loc 1 203 33
	sall	$16, %eax	#, _33
	movl	%eax, %edx	# _33, _34
# p_saveg.c:203: 	    si->textureoffset = *get++ << FRACBITS;
	.loc 1 203 24
	movq	-8(%rbp), %rax	# si, tmp164
	movl	%edx, (%rax)	# _34, si_75->textureoffset
# p_saveg.c:204: 	    si->rowoffset = *get++ << FRACBITS;
	.loc 1 204 26
	movq	-16(%rbp), %rax	# get, get.40_35
	leaq	2(%rax), %rdx	#, tmp165
	movq	%rdx, -16(%rbp)	# tmp165, get
# p_saveg.c:204: 	    si->rowoffset = *get++ << FRACBITS;
	.loc 1 204 22
	movzwl	(%rax), %eax	# *get.40_35, _36
	cwtl
# p_saveg.c:204: 	    si->rowoffset = *get++ << FRACBITS;
	.loc 1 204 29
	sall	$16, %eax	#, _37
	movl	%eax, %edx	# _37, _38
# p_saveg.c:204: 	    si->rowoffset = *get++ << FRACBITS;
	.loc 1 204 20
	movq	-8(%rbp), %rax	# si, tmp166
	movl	%edx, 4(%rax)	# _38, si_75->rowoffset
# p_saveg.c:205: 	    si->toptexture = *get++;
	.loc 1 205 27
	movq	-16(%rbp), %rax	# get, get.41_39
	leaq	2(%rax), %rdx	#, tmp167
	movq	%rdx, -16(%rbp)	# tmp167, get
# p_saveg.c:205: 	    si->toptexture = *get++;
	.loc 1 205 23
	movzwl	(%rax), %edx	# *get.41_39, _40
# p_saveg.c:205: 	    si->toptexture = *get++;
	.loc 1 205 21
	movq	-8(%rbp), %rax	# si, tmp168
	movw	%dx, 8(%rax)	# _40, si_75->toptexture
# p_saveg.c:206: 	    si->bottomtexture = *get++;
	.loc 1 206 30
	movq	-16(%rbp), %rax	# get, get.42_41
	leaq	2(%rax), %rdx	#, tmp169
	movq	%rdx, -16(%rbp)	# tmp169, get
# p_saveg.c:206: 	    si->bottomtexture = *get++;
	.loc 1 206 26
	movzwl	(%rax), %edx	# *get.42_41, _42
# p_saveg.c:206: 	    si->bottomtexture = *get++;
	.loc 1 206 24
	movq	-8(%rbp), %rax	# si, tmp170
	movw	%dx, 10(%rax)	# _42, si_75->bottomtexture
# p_saveg.c:207: 	    si->midtexture = *get++;
	.loc 1 207 27
	movq	-16(%rbp), %rax	# get, get.43_43
	leaq	2(%rax), %rdx	#, tmp171
	movq	%rdx, -16(%rbp)	# tmp171, get
# p_saveg.c:207: 	    si->midtexture = *get++;
	.loc 1 207 23
	movzwl	(%rax), %edx	# *get.43_43, _44
# p_saveg.c:207: 	    si->midtexture = *get++;
	.loc 1 207 21
	movq	-8(%rbp), %rax	# si, tmp172
	movw	%dx, 12(%rax)	# _44, si_75->midtexture
	jmp	.L35	#
.L38:
# p_saveg.c:201: 		continue;
	.loc 1 201 3
	nop	
.L35:
# p_saveg.c:198: 	for (j=0 ; j<2 ; j++)
	.loc 1 198 20 discriminator 2
	addl	$1, -36(%rbp)	#, j
.L33:
# p_saveg.c:198: 	for (j=0 ; j<2 ; j++)
	.loc 1 198 14 discriminator 1
	cmpl	$1, -36(%rbp)	#, j
	jle	.L36	#,
# p_saveg.c:193:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 193 42 discriminator 2
	addl	$1, -40(%rbp)	#, i
# p_saveg.c:193:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 193 47 discriminator 2
	addq	$88, -24(%rbp)	#, li
.L32:
# p_saveg.c:193:     for (i=0, li = lines ; i<numlines ; i++,li++)
	.loc 1 193 29 discriminator 1
	movl	numlines(%rip), %eax	# numlines, numlines.44_45
	cmpl	%eax, -40(%rbp)	# numlines.44_45, i
	jl	.L37	#,
# p_saveg.c:210:     save_p = (byte *)get;	
	.loc 1 210 12
	movq	-16(%rbp), %rax	# get, tmp173
	movq	%rax, save_p(%rip)	# tmp173, save_p
# p_saveg.c:211: }
	.loc 1 211 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_UnArchiveWorld, .-P_UnArchiveWorld
	.globl	P_ArchiveThinkers
	.type	P_ArchiveThinkers, @function
P_ArchiveThinkers:
.LFB4:
	.loc 1 233 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# p_saveg.c:238:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 238 13
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp108
	movq	%rax, -16(%rbp)	# tmp108, th
# p_saveg.c:238:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 238 5
	jmp	.L40	#
.L43:
# p_saveg.c:240: 	if (th->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 240 18
	movq	-16(%rbp), %rax	# th, tmp109
	movq	16(%rax), %rax	# th_29->function.acp1, _1
# p_saveg.c:240: 	if (th->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 240 5
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp111
	cmpq	%rdx, %rax	# tmp110, _1
	jne	.L41	#,
# p_saveg.c:242: 	    *save_p++ = tc_mobj;
	.loc 1 242 13
	movq	save_p(%rip), %rax	# save_p, save_p.45_2
	leaq	1(%rax), %rdx	#, _4
	movq	%rdx, save_p(%rip)	# _4, save_p
# p_saveg.c:242: 	    *save_p++ = tc_mobj;
	.loc 1 242 16
	movb	$1, (%rax)	#, *save_p.46_3
# p_saveg.c:243: 	    PADSAVEP();
	.loc 1 243 6
	movq	save_p(%rip), %rax	# save_p, save_p.47_5
	movq	save_p(%rip), %rdx	# save_p, save_p.48_6
	andl	$3, %edx	#, _9
	movl	$4, %ecx	#, tmp112
	subl	%edx, %ecx	# _9, _10
	movslq	%ecx, %rdx	# _10, _11
	andl	$3, %edx	#, _12
	addq	%rdx, %rax	# _12, _13
	movq	%rax, save_p(%rip)	# _13, save_p
# p_saveg.c:244: 	    mobj = (mobj_t *)save_p;
	.loc 1 244 11
	movq	save_p(%rip), %rax	# save_p, tmp113
	movq	%rax, -8(%rbp)	# tmp113, mobj
# p_saveg.c:245: 	    memcpy (mobj, th, sizeof(*mobj));
	.loc 1 245 6
	movq	-16(%rbp), %rcx	# th, tmp114
	movq	-8(%rbp), %rax	# mobj, tmp115
	movl	$224, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	memcpy@PLT	#
# p_saveg.c:246: 	    save_p += sizeof(*mobj);
	.loc 1 246 13
	movq	save_p(%rip), %rax	# save_p, save_p.50_14
	addq	$224, %rax	#, _15
	movq	%rax, save_p(%rip)	# _15, save_p
# p_saveg.c:247: 	    mobj->state = (state_t *)(mobj->state - states);
	.loc 1 247 36
	movq	-8(%rbp), %rax	# mobj, tmp116
	movq	152(%rax), %rdx	# mobj_40->state, _16
# p_saveg.c:247: 	    mobj->state = (state_t *)(mobj->state - states);
	.loc 1 247 44
	leaq	states(%rip), %rax	#, tmp117
	subq	%rax, %rdx	# tmp117, _17
	sarq	$3, %rdx	#, tmp118
	movabsq	$7905747460161236407, %rax	#, tmp120
	imulq	%rdx, %rax	# tmp118, tmp119
# p_saveg.c:247: 	    mobj->state = (state_t *)(mobj->state - states);
	.loc 1 247 20
	movq	%rax, %rdx	# _18, _19
# p_saveg.c:247: 	    mobj->state = (state_t *)(mobj->state - states);
	.loc 1 247 18
	movq	-8(%rbp), %rax	# mobj, tmp121
	movq	%rdx, 152(%rax)	# _19, mobj_40->state
# p_saveg.c:249: 	    if (mobj->player)
	.loc 1 249 14
	movq	-8(%rbp), %rax	# mobj, tmp122
	movq	192(%rax), %rax	# mobj_40->player, _20
# p_saveg.c:249: 	    if (mobj->player)
	.loc 1 249 9
	testq	%rax, %rax	# _20
	je	.L44	#,
# p_saveg.c:250: 		mobj->player = (player_t *)((mobj->player-players) + 1);
	.loc 1 250 36
	movq	-8(%rbp), %rax	# mobj, tmp123
	movq	192(%rax), %rdx	# mobj_40->player, _21
# p_saveg.c:250: 		mobj->player = (player_t *)((mobj->player-players) + 1);
	.loc 1 250 44
	leaq	players(%rip), %rax	#, tmp124
	subq	%rax, %rdx	# tmp124, _22
	sarq	$6, %rdx	#, tmp125
	movabsq	$-3689348814741910323, %rax	#, tmp127
	imulq	%rdx, %rax	# tmp125, tmp126
# p_saveg.c:250: 		mobj->player = (player_t *)((mobj->player-players) + 1);
	.loc 1 250 54
	addq	$1, %rax	#, _24
# p_saveg.c:250: 		mobj->player = (player_t *)((mobj->player-players) + 1);
	.loc 1 250 18
	movq	%rax, %rdx	# _24, _25
# p_saveg.c:250: 		mobj->player = (player_t *)((mobj->player-players) + 1);
	.loc 1 250 16
	movq	-8(%rbp), %rax	# mobj, tmp128
	movq	%rdx, 192(%rax)	# _25, mobj_40->player
.L44:
# p_saveg.c:251: 	    continue;
	.loc 1 251 6
	nop	
.L41:
# p_saveg.c:238:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 238 55 discriminator 2
	movq	-16(%rbp), %rax	# th, tmp129
	movq	8(%rax), %rax	# th_29->next, tmp130
	movq	%rax, -16(%rbp)	# tmp130, th
.L40:
# p_saveg.c:238:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 238 36 discriminator 1
	leaq	thinkercap(%rip), %rax	#, tmp131
	cmpq	%rax, -16(%rbp)	# tmp131, th
	jne	.L43	#,
# p_saveg.c:258:     *save_p++ = tc_end;	
	.loc 1 258 12
	movq	save_p(%rip), %rax	# save_p, save_p.51_26
	leaq	1(%rax), %rdx	#, _28
	movq	%rdx, save_p(%rip)	# _28, save_p
# p_saveg.c:258:     *save_p++ = tc_end;	
	.loc 1 258 15
	movb	$0, (%rax)	#, *save_p.52_27
# p_saveg.c:259: }
	.loc 1 259 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_ArchiveThinkers, .-P_ArchiveThinkers
	.section	.rodata
.LC0:
	.string	"Unknown tclass %i in savegame"
	.text
	.globl	P_UnArchiveThinkers
	.type	P_UnArchiveThinkers, @function
P_UnArchiveThinkers:
.LFB5:
	.loc 1 267 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# p_saveg.c:274:     currentthinker = thinkercap.next;
	.loc 1 274 20
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp119
	movq	%rax, -24(%rbp)	# tmp119, currentthinker
# p_saveg.c:275:     while (currentthinker != &thinkercap)
	.loc 1 275 11
	jmp	.L46	#
.L49:
# p_saveg.c:277: 	next = currentthinker->next;
	.loc 1 277 7
	movq	-24(%rbp), %rax	# currentthinker, tmp120
	movq	8(%rax), %rax	# currentthinker_39->next, tmp121
	movq	%rax, -8(%rbp)	# tmp121, next
# p_saveg.c:279: 	if (currentthinker->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 279 30
	movq	-24(%rbp), %rax	# currentthinker, tmp122
	movq	16(%rax), %rax	# currentthinker_39->function.acp1, _1
# p_saveg.c:279: 	if (currentthinker->function.acp1 == (actionf_p1)P_MobjThinker)
	.loc 1 279 5
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp124
	cmpq	%rdx, %rax	# tmp123, _1
	jne	.L47	#,
# p_saveg.c:280: 	    P_RemoveMobj ((mobj_t *)currentthinker);
	.loc 1 280 6
	movq	-24(%rbp), %rax	# currentthinker, tmp125
	movq	%rax, %rdi	# tmp125,
	call	P_RemoveMobj@PLT	#
	jmp	.L48	#
.L47:
# p_saveg.c:282: 	    Z_Free (currentthinker);
	.loc 1 282 6
	movq	-24(%rbp), %rax	# currentthinker, tmp126
	movq	%rax, %rdi	# tmp126,
	call	Z_Free@PLT	#
.L48:
# p_saveg.c:284: 	currentthinker = next;
	.loc 1 284 17
	movq	-8(%rbp), %rax	# next, tmp127
	movq	%rax, -24(%rbp)	# tmp127, currentthinker
.L46:
# p_saveg.c:275:     while (currentthinker != &thinkercap)
	.loc 1 275 27
	leaq	thinkercap(%rip), %rax	#, tmp128
	cmpq	%rax, -24(%rbp)	# tmp128, currentthinker
	jne	.L49	#,
# p_saveg.c:286:     P_InitThinkers ();
	.loc 1 286 5
	call	P_InitThinkers@PLT	#
.L56:
# p_saveg.c:291: 	tclass = *save_p++;
	.loc 1 291 18
	movq	save_p(%rip), %rax	# save_p, save_p.53_2
	leaq	1(%rax), %rdx	#, _4
	movq	%rdx, save_p(%rip)	# _4, save_p
# p_saveg.c:291: 	tclass = *save_p++;
	.loc 1 291 9
	movzbl	(%rax), %eax	# *save_p.54_3, tmp129
	movb	%al, -25(%rbp)	# tmp129, tclass
# p_saveg.c:292: 	switch (tclass)
	.loc 1 292 2
	movzbl	-25(%rbp), %eax	# tclass, _5
	testl	%eax, %eax	# _5
	je	.L58	#,
	cmpl	$1, %eax	#, _5
	jne	.L57	#,
# p_saveg.c:298: 	    PADSAVEP();
	.loc 1 298 6
	movq	save_p(%rip), %rax	# save_p, save_p.55_6
	movq	save_p(%rip), %rdx	# save_p, save_p.56_7
	andl	$3, %edx	#, _10
	movl	$4, %ecx	#, tmp130
	subl	%edx, %ecx	# _10, _11
	movslq	%ecx, %rdx	# _11, _12
	andl	$3, %edx	#, _13
	addq	%rdx, %rax	# _13, _14
	movq	%rax, save_p(%rip)	# _14, save_p
# p_saveg.c:299: 	    mobj = Z_Malloc (sizeof(*mobj), PU_LEVEL, NULL);
	.loc 1 299 13
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$224, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp131, mobj
# p_saveg.c:300: 	    memcpy (mobj, save_p, sizeof(*mobj));
	.loc 1 300 6
	movq	save_p(%rip), %rcx	# save_p, save_p.58_15
	movq	-16(%rbp), %rax	# mobj, tmp132
	movl	$224, %edx	#,
	movq	%rcx, %rsi	# save_p.58_15,
	movq	%rax, %rdi	# tmp132,
	call	memcpy@PLT	#
# p_saveg.c:301: 	    save_p += sizeof(*mobj);
	.loc 1 301 13
	movq	save_p(%rip), %rax	# save_p, save_p.59_16
	addq	$224, %rax	#, _17
	movq	%rax, save_p(%rip)	# _17, save_p
# p_saveg.c:302: 	    mobj->state = &states[(int)mobj->state];
	.loc 1 302 37
	movq	-16(%rbp), %rax	# mobj, tmp133
	movq	152(%rax), %rax	# mobj_52->state, _18
# p_saveg.c:302: 	    mobj->state = &states[(int)mobj->state];
	.loc 1 302 20
	movslq	%eax, %rdx	# _20, tmp134
	movq	%rdx, %rax	# tmp134, tmp135
	salq	$3, %rax	#, tmp136
	subq	%rdx, %rax	# tmp134, tmp135
	salq	$3, %rax	#, tmp137
	leaq	states(%rip), %rdx	#, tmp138
	addq	%rax, %rdx	# tmp135, _21
# p_saveg.c:302: 	    mobj->state = &states[(int)mobj->state];
	.loc 1 302 18
	movq	-16(%rbp), %rax	# mobj, tmp139
	movq	%rdx, 152(%rax)	# _21, mobj_52->state
# p_saveg.c:303: 	    mobj->target = NULL;
	.loc 1 303 19
	movq	-16(%rbp), %rax	# mobj, tmp140
	movq	$0, 176(%rax)	#, mobj_52->target
# p_saveg.c:304: 	    if (mobj->player)
	.loc 1 304 14
	movq	-16(%rbp), %rax	# mobj, tmp141
	movq	192(%rax), %rax	# mobj_52->player, _22
# p_saveg.c:304: 	    if (mobj->player)
	.loc 1 304 9
	testq	%rax, %rax	# _22
	je	.L54	#,
# p_saveg.c:306: 		mobj->player = &players[(int)mobj->player-1];
	.loc 1 306 36
	movq	-16(%rbp), %rax	# mobj, tmp142
	movq	192(%rax), %rax	# mobj_52->player, _23
# p_saveg.c:306: 		mobj->player = &players[(int)mobj->player-1];
	.loc 1 306 44
	subl	$1, %eax	#, _26
# p_saveg.c:306: 		mobj->player = &players[(int)mobj->player-1];
	.loc 1 306 18
	movslq	%eax, %rdx	# _26, tmp143
	movq	%rdx, %rax	# tmp143, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# tmp143, tmp144
	salq	$6, %rax	#, tmp145
	leaq	players(%rip), %rdx	#, tmp146
	addq	%rax, %rdx	# tmp144, _27
# p_saveg.c:306: 		mobj->player = &players[(int)mobj->player-1];
	.loc 1 306 16
	movq	-16(%rbp), %rax	# mobj, tmp147
	movq	%rdx, 192(%rax)	# _27, mobj_52->player
# p_saveg.c:307: 		mobj->player->mo = mobj;
	.loc 1 307 7
	movq	-16(%rbp), %rax	# mobj, tmp148
	movq	192(%rax), %rax	# mobj_52->player, _28
# p_saveg.c:307: 		mobj->player->mo = mobj;
	.loc 1 307 20
	movq	-16(%rbp), %rdx	# mobj, tmp149
	movq	%rdx, (%rax)	# tmp149, _28->mo
.L54:
# p_saveg.c:309: 	    P_SetThingPosition (mobj);
	.loc 1 309 6
	movq	-16(%rbp), %rax	# mobj, tmp150
	movq	%rax, %rdi	# tmp150,
	call	P_SetThingPosition@PLT	#
# p_saveg.c:310: 	    mobj->info = &mobjinfo[mobj->type];
	.loc 1 310 33
	movq	-16(%rbp), %rax	# mobj, tmp151
	movl	128(%rax), %eax	# mobj_52->type, _29
# p_saveg.c:310: 	    mobj->info = &mobjinfo[mobj->type];
	.loc 1 310 19
	movl	%eax, %eax	# _29, tmp152
	imulq	$92, %rax, %rax	#, tmp152, tmp153
	leaq	mobjinfo(%rip), %rdx	#, tmp154
	addq	%rax, %rdx	# tmp153, _30
# p_saveg.c:310: 	    mobj->info = &mobjinfo[mobj->type];
	.loc 1 310 17
	movq	-16(%rbp), %rax	# mobj, tmp155
	movq	%rdx, 136(%rax)	# _30, mobj_52->info
# p_saveg.c:311: 	    mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 311 25
	movq	-16(%rbp), %rax	# mobj, tmp156
	movq	88(%rax), %rax	# mobj_52->subsector, _31
# p_saveg.c:311: 	    mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 311 36
	movq	(%rax), %rax	# _31->sector, _32
# p_saveg.c:311: 	    mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 311 44
	movl	(%rax), %edx	# _32->floorheight, _33
# p_saveg.c:311: 	    mobj->floorz = mobj->subsector->sector->floorheight;
	.loc 1 311 19
	movq	-16(%rbp), %rax	# mobj, tmp157
	movl	%edx, 96(%rax)	# _33, mobj_52->floorz
# p_saveg.c:312: 	    mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 312 27
	movq	-16(%rbp), %rax	# mobj, tmp158
	movq	88(%rax), %rax	# mobj_52->subsector, _34
# p_saveg.c:312: 	    mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 312 38
	movq	(%rax), %rax	# _34->sector, _35
# p_saveg.c:312: 	    mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 312 46
	movl	4(%rax), %edx	# _35->ceilingheight, _36
# p_saveg.c:312: 	    mobj->ceilingz = mobj->subsector->sector->ceilingheight;
	.loc 1 312 21
	movq	-16(%rbp), %rax	# mobj, tmp159
	movl	%edx, 100(%rax)	# _36, mobj_52->ceilingz
# p_saveg.c:313: 	    mobj->thinker.function.acp1 = (actionf_p1)P_MobjThinker;
	.loc 1 313 34
	movq	-16(%rbp), %rax	# mobj, tmp160
	movq	P_MobjThinker@GOTPCREL(%rip), %rdx	#, tmp162
	movq	%rdx, 16(%rax)	# tmp161, mobj_52->thinker.function.acp1
# p_saveg.c:314: 	    P_AddThinker (&mobj->thinker);
	.loc 1 314 6
	movq	-16(%rbp), %rax	# mobj, _37
	movq	%rax, %rdi	# _37,
	call	P_AddThinker@PLT	#
# p_saveg.c:315: 	    break;
	.loc 1 315 6
	jmp	.L55	#
.L57:
# p_saveg.c:318: 	    I_Error ("Unknown tclass %i in savegame",tclass);
	.loc 1 318 6
	movzbl	-25(%rbp), %eax	# tclass, _38
	movl	%eax, %esi	# _38,
	leaq	.LC0(%rip), %rax	#, tmp163
	movq	%rax, %rdi	# tmp163,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L55:
# p_saveg.c:291: 	tclass = *save_p++;
	.loc 1 291 9
	jmp	.L56	#
.L58:
# p_saveg.c:295: 	    return; 	// end of list
	.loc 1 295 6
	nop	
# p_saveg.c:323: }
	.loc 1 323 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	P_UnArchiveThinkers, .-P_UnArchiveThinkers
	.globl	specials_e
	.bss
	.align 4
	.type	specials_e, @object
	.size	specials_e, 4
specials_e:
	.zero	4
	.text
	.globl	P_ArchiveSpecials
	.type	P_ArchiveSpecials, @function
P_ArchiveSpecials:
.LFB6:
	.loc 1 356 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
# p_saveg.c:368:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 368 13
	movq	8+thinkercap(%rip), %rax	# thinkercap.next, tmp237
	movq	%rax, -64(%rbp)	# tmp237, th
# p_saveg.c:368:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 368 5
	jmp	.L60	#
.L74:
# p_saveg.c:370: 	if (th->function.acv == (actionf_v)NULL)
	.loc 1 370 18
	movq	-64(%rbp), %rax	# th, tmp238
	movq	16(%rax), %rax	# th_165->function.acv, _1
# p_saveg.c:370: 	if (th->function.acv == (actionf_v)NULL)
	.loc 1 370 5
	testq	%rax, %rax	# _1
	jne	.L61	#,
# p_saveg.c:372: 	    for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 372 13
	movl	$0, -68(%rbp)	#, i
# p_saveg.c:372: 	    for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 372 6
	jmp	.L62	#
.L65:
# p_saveg.c:373: 		if (activeceilings[i] == (ceiling_t *)th)
	.loc 1 373 21
	movl	-68(%rbp), %eax	# i, tmp240
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp241
	leaq	activeceilings(%rip), %rax	#, tmp242
	movq	(%rdx,%rax), %rax	# activeceilings[i_166], _2
# p_saveg.c:373: 		if (activeceilings[i] == (ceiling_t *)th)
	.loc 1 373 6
	cmpq	%rax, -64(%rbp)	# _2, th
	je	.L75	#,
# p_saveg.c:372: 	    for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 372 35 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L62:
# p_saveg.c:372: 	    for (i = 0; i < MAXCEILINGS;i++)
	.loc 1 372 20 discriminator 1
	cmpl	$29, -68(%rbp)	#, i
	jle	.L65	#,
	jmp	.L64	#
.L75:
# p_saveg.c:374: 		    break;
	.loc 1 374 7
	nop	
.L64:
# p_saveg.c:376: 	    if (i<MAXCEILINGS)
	.loc 1 376 9
	cmpl	$29, -68(%rbp)	#, i
	jg	.L76	#,
# p_saveg.c:378: 		*save_p++ = tc_ceiling;
	.loc 1 378 10
	movq	save_p(%rip), %rax	# save_p, save_p.60_3
	leaq	1(%rax), %rdx	#, _5
	movq	%rdx, save_p(%rip)	# _5, save_p
# p_saveg.c:378: 		*save_p++ = tc_ceiling;
	.loc 1 378 13
	movb	$0, (%rax)	#, *save_p.61_4
# p_saveg.c:379: 		PADSAVEP();
	.loc 1 379 3
	movq	save_p(%rip), %rax	# save_p, save_p.62_6
	movq	save_p(%rip), %rdx	# save_p, save_p.63_7
	andl	$3, %edx	#, _10
	movl	$4, %ecx	#, tmp243
	subl	%edx, %ecx	# _10, _11
	movslq	%ecx, %rdx	# _11, _12
	andl	$3, %edx	#, _13
	addq	%rdx, %rax	# _13, _14
	movq	%rax, save_p(%rip)	# _14, save_p
# p_saveg.c:380: 		ceiling = (ceiling_t *)save_p;
	.loc 1 380 11
	movq	save_p(%rip), %rax	# save_p, tmp244
	movq	%rax, -8(%rbp)	# tmp244, ceiling
# p_saveg.c:381: 		memcpy (ceiling, th, sizeof(*ceiling));
	.loc 1 381 3
	movq	-64(%rbp), %rcx	# th, tmp245
	movq	-8(%rbp), %rax	# ceiling, tmp246
	movl	$72, %edx	#,
	movq	%rcx, %rsi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	memcpy@PLT	#
# p_saveg.c:382: 		save_p += sizeof(*ceiling);
	.loc 1 382 10
	movq	save_p(%rip), %rax	# save_p, save_p.65_15
	addq	$72, %rax	#, _16
	movq	%rax, save_p(%rip)	# _16, save_p
# p_saveg.c:383: 		ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 383 41
	movq	-8(%rbp), %rax	# ceiling, tmp247
	movq	32(%rax), %rdx	# ceiling_228->sector, _17
# p_saveg.c:383: 		ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 383 50
	movq	sectors(%rip), %rax	# sectors, sectors.66_18
	subq	%rax, %rdx	# sectors.66_18, _19
	movq	%rdx, %rax	# _19, _19
	sarq	$7, %rax	#, _19
# p_saveg.c:383: 		ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 383 21
	movq	%rax, %rdx	# _20, _21
# p_saveg.c:383: 		ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 383 19
	movq	-8(%rbp), %rax	# ceiling, tmp249
	movq	%rdx, 32(%rax)	# _21, ceiling_228->sector
# p_saveg.c:385: 	    continue;
	.loc 1 385 6
	jmp	.L76	#
.L61:
# p_saveg.c:388: 	if (th->function.acp1 == (actionf_p1)T_MoveCeiling)
	.loc 1 388 18
	movq	-64(%rbp), %rax	# th, tmp250
	movq	16(%rax), %rax	# th_165->function.acp1, _22
# p_saveg.c:388: 	if (th->function.acp1 == (actionf_p1)T_MoveCeiling)
	.loc 1 388 5
	movq	T_MoveCeiling@GOTPCREL(%rip), %rdx	#, tmp252
	cmpq	%rdx, %rax	# tmp251, _22
	jne	.L68	#,
# p_saveg.c:390: 	    *save_p++ = tc_ceiling;
	.loc 1 390 13
	movq	save_p(%rip), %rax	# save_p, save_p.67_23
	leaq	1(%rax), %rdx	#, _25
	movq	%rdx, save_p(%rip)	# _25, save_p
# p_saveg.c:390: 	    *save_p++ = tc_ceiling;
	.loc 1 390 16
	movb	$0, (%rax)	#, *save_p.68_24
# p_saveg.c:391: 	    PADSAVEP();
	.loc 1 391 6
	movq	save_p(%rip), %rax	# save_p, save_p.69_26
	movq	save_p(%rip), %rdx	# save_p, save_p.70_27
	andl	$3, %edx	#, _30
	movl	$4, %ecx	#, tmp253
	subl	%edx, %ecx	# _30, _31
	movslq	%ecx, %rdx	# _31, _32
	andl	$3, %edx	#, _33
	addq	%rdx, %rax	# _33, _34
	movq	%rax, save_p(%rip)	# _34, save_p
# p_saveg.c:392: 	    ceiling = (ceiling_t *)save_p;
	.loc 1 392 14
	movq	save_p(%rip), %rax	# save_p, tmp254
	movq	%rax, -8(%rbp)	# tmp254, ceiling
# p_saveg.c:393: 	    memcpy (ceiling, th, sizeof(*ceiling));
	.loc 1 393 6
	movq	-64(%rbp), %rcx	# th, tmp255
	movq	-8(%rbp), %rax	# ceiling, tmp256
	movl	$72, %edx	#,
	movq	%rcx, %rsi	# tmp255,
	movq	%rax, %rdi	# tmp256,
	call	memcpy@PLT	#
# p_saveg.c:394: 	    save_p += sizeof(*ceiling);
	.loc 1 394 13
	movq	save_p(%rip), %rax	# save_p, save_p.72_35
	addq	$72, %rax	#, _36
	movq	%rax, save_p(%rip)	# _36, save_p
# p_saveg.c:395: 	    ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 395 44
	movq	-8(%rbp), %rax	# ceiling, tmp257
	movq	32(%rax), %rdx	# ceiling_219->sector, _37
# p_saveg.c:395: 	    ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 395 53
	movq	sectors(%rip), %rax	# sectors, sectors.73_38
	subq	%rax, %rdx	# sectors.73_38, _39
	movq	%rdx, %rax	# _39, _39
	sarq	$7, %rax	#, _39
# p_saveg.c:395: 	    ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 395 24
	movq	%rax, %rdx	# _40, _41
# p_saveg.c:395: 	    ceiling->sector = (sector_t *)(ceiling->sector - sectors);
	.loc 1 395 22
	movq	-8(%rbp), %rax	# ceiling, tmp259
	movq	%rdx, 32(%rax)	# _41, ceiling_219->sector
# p_saveg.c:396: 	    continue;
	.loc 1 396 6
	jmp	.L67	#
.L68:
# p_saveg.c:399: 	if (th->function.acp1 == (actionf_p1)T_VerticalDoor)
	.loc 1 399 18
	movq	-64(%rbp), %rax	# th, tmp260
	movq	16(%rax), %rax	# th_165->function.acp1, _42
# p_saveg.c:399: 	if (th->function.acp1 == (actionf_p1)T_VerticalDoor)
	.loc 1 399 5
	movq	T_VerticalDoor@GOTPCREL(%rip), %rdx	#, tmp262
	cmpq	%rdx, %rax	# tmp261, _42
	jne	.L69	#,
# p_saveg.c:401: 	    *save_p++ = tc_door;
	.loc 1 401 13
	movq	save_p(%rip), %rax	# save_p, save_p.74_43
	leaq	1(%rax), %rdx	#, _45
	movq	%rdx, save_p(%rip)	# _45, save_p
# p_saveg.c:401: 	    *save_p++ = tc_door;
	.loc 1 401 16
	movb	$1, (%rax)	#, *save_p.75_44
# p_saveg.c:402: 	    PADSAVEP();
	.loc 1 402 6
	movq	save_p(%rip), %rax	# save_p, save_p.76_46
	movq	save_p(%rip), %rdx	# save_p, save_p.77_47
	andl	$3, %edx	#, _50
	movl	$4, %ecx	#, tmp263
	subl	%edx, %ecx	# _50, _51
	movslq	%ecx, %rdx	# _51, _52
	andl	$3, %edx	#, _53
	addq	%rdx, %rax	# _53, _54
	movq	%rax, save_p(%rip)	# _54, save_p
# p_saveg.c:403: 	    door = (vldoor_t *)save_p;
	.loc 1 403 11
	movq	save_p(%rip), %rax	# save_p, tmp264
	movq	%rax, -16(%rbp)	# tmp264, door
# p_saveg.c:404: 	    memcpy (door, th, sizeof(*door));
	.loc 1 404 6
	movq	-64(%rbp), %rcx	# th, tmp265
	movq	-16(%rbp), %rax	# door, tmp266
	movl	$64, %edx	#,
	movq	%rcx, %rsi	# tmp265,
	movq	%rax, %rdi	# tmp266,
	call	memcpy@PLT	#
# p_saveg.c:405: 	    save_p += sizeof(*door);
	.loc 1 405 13
	movq	save_p(%rip), %rax	# save_p, save_p.79_55
	addq	$64, %rax	#, _56
	movq	%rax, save_p(%rip)	# _56, save_p
# p_saveg.c:406: 	    door->sector = (sector_t *)(door->sector - sectors);
	.loc 1 406 38
	movq	-16(%rbp), %rax	# door, tmp267
	movq	32(%rax), %rdx	# door_212->sector, _57
# p_saveg.c:406: 	    door->sector = (sector_t *)(door->sector - sectors);
	.loc 1 406 47
	movq	sectors(%rip), %rax	# sectors, sectors.80_58
	subq	%rax, %rdx	# sectors.80_58, _59
	movq	%rdx, %rax	# _59, _59
	sarq	$7, %rax	#, _59
# p_saveg.c:406: 	    door->sector = (sector_t *)(door->sector - sectors);
	.loc 1 406 21
	movq	%rax, %rdx	# _60, _61
# p_saveg.c:406: 	    door->sector = (sector_t *)(door->sector - sectors);
	.loc 1 406 19
	movq	-16(%rbp), %rax	# door, tmp269
	movq	%rdx, 32(%rax)	# _61, door_212->sector
# p_saveg.c:407: 	    continue;
	.loc 1 407 6
	jmp	.L67	#
.L69:
# p_saveg.c:410: 	if (th->function.acp1 == (actionf_p1)T_MoveFloor)
	.loc 1 410 18
	movq	-64(%rbp), %rax	# th, tmp270
	movq	16(%rax), %rax	# th_165->function.acp1, _62
# p_saveg.c:410: 	if (th->function.acp1 == (actionf_p1)T_MoveFloor)
	.loc 1 410 5
	movq	T_MoveFloor@GOTPCREL(%rip), %rdx	#, tmp272
	cmpq	%rdx, %rax	# tmp271, _62
	jne	.L70	#,
# p_saveg.c:412: 	    *save_p++ = tc_floor;
	.loc 1 412 13
	movq	save_p(%rip), %rax	# save_p, save_p.81_63
	leaq	1(%rax), %rdx	#, _65
	movq	%rdx, save_p(%rip)	# _65, save_p
# p_saveg.c:412: 	    *save_p++ = tc_floor;
	.loc 1 412 16
	movb	$2, (%rax)	#, *save_p.82_64
# p_saveg.c:413: 	    PADSAVEP();
	.loc 1 413 6
	movq	save_p(%rip), %rax	# save_p, save_p.83_66
	movq	save_p(%rip), %rdx	# save_p, save_p.84_67
	andl	$3, %edx	#, _70
	movl	$4, %ecx	#, tmp273
	subl	%edx, %ecx	# _70, _71
	movslq	%ecx, %rdx	# _71, _72
	andl	$3, %edx	#, _73
	addq	%rdx, %rax	# _73, _74
	movq	%rax, save_p(%rip)	# _74, save_p
# p_saveg.c:414: 	    floor = (floormove_t *)save_p;
	.loc 1 414 12
	movq	save_p(%rip), %rax	# save_p, tmp274
	movq	%rax, -24(%rbp)	# tmp274, floor
# p_saveg.c:415: 	    memcpy (floor, th, sizeof(*floor));
	.loc 1 415 6
	movq	-64(%rbp), %rcx	# th, tmp275
	movq	-24(%rbp), %rax	# floor, tmp276
	movl	$64, %edx	#,
	movq	%rcx, %rsi	# tmp275,
	movq	%rax, %rdi	# tmp276,
	call	memcpy@PLT	#
# p_saveg.c:416: 	    save_p += sizeof(*floor);
	.loc 1 416 13
	movq	save_p(%rip), %rax	# save_p, save_p.86_75
	addq	$64, %rax	#, _76
	movq	%rax, save_p(%rip)	# _76, save_p
# p_saveg.c:417: 	    floor->sector = (sector_t *)(floor->sector - sectors);
	.loc 1 417 40
	movq	-24(%rbp), %rax	# floor, tmp277
	movq	32(%rax), %rdx	# floor_205->sector, _77
# p_saveg.c:417: 	    floor->sector = (sector_t *)(floor->sector - sectors);
	.loc 1 417 49
	movq	sectors(%rip), %rax	# sectors, sectors.87_78
	subq	%rax, %rdx	# sectors.87_78, _79
	movq	%rdx, %rax	# _79, _79
	sarq	$7, %rax	#, _79
# p_saveg.c:417: 	    floor->sector = (sector_t *)(floor->sector - sectors);
	.loc 1 417 22
	movq	%rax, %rdx	# _80, _81
# p_saveg.c:417: 	    floor->sector = (sector_t *)(floor->sector - sectors);
	.loc 1 417 20
	movq	-24(%rbp), %rax	# floor, tmp279
	movq	%rdx, 32(%rax)	# _81, floor_205->sector
# p_saveg.c:418: 	    continue;
	.loc 1 418 6
	jmp	.L67	#
.L70:
# p_saveg.c:421: 	if (th->function.acp1 == (actionf_p1)T_PlatRaise)
	.loc 1 421 18
	movq	-64(%rbp), %rax	# th, tmp280
	movq	16(%rax), %rax	# th_165->function.acp1, _82
# p_saveg.c:421: 	if (th->function.acp1 == (actionf_p1)T_PlatRaise)
	.loc 1 421 5
	movq	T_PlatRaise@GOTPCREL(%rip), %rdx	#, tmp282
	cmpq	%rdx, %rax	# tmp281, _82
	jne	.L71	#,
# p_saveg.c:423: 	    *save_p++ = tc_plat;
	.loc 1 423 13
	movq	save_p(%rip), %rax	# save_p, save_p.88_83
	leaq	1(%rax), %rdx	#, _85
	movq	%rdx, save_p(%rip)	# _85, save_p
# p_saveg.c:423: 	    *save_p++ = tc_plat;
	.loc 1 423 16
	movb	$3, (%rax)	#, *save_p.89_84
# p_saveg.c:424: 	    PADSAVEP();
	.loc 1 424 6
	movq	save_p(%rip), %rax	# save_p, save_p.90_86
	movq	save_p(%rip), %rdx	# save_p, save_p.91_87
	andl	$3, %edx	#, _90
	movl	$4, %ecx	#, tmp283
	subl	%edx, %ecx	# _90, _91
	movslq	%ecx, %rdx	# _91, _92
	andl	$3, %edx	#, _93
	addq	%rdx, %rax	# _93, _94
	movq	%rax, save_p(%rip)	# _94, save_p
# p_saveg.c:425: 	    plat = (plat_t *)save_p;
	.loc 1 425 11
	movq	save_p(%rip), %rax	# save_p, tmp284
	movq	%rax, -32(%rbp)	# tmp284, plat
# p_saveg.c:426: 	    memcpy (plat, th, sizeof(*plat));
	.loc 1 426 6
	movq	-64(%rbp), %rcx	# th, tmp285
	movq	-32(%rbp), %rax	# plat, tmp286
	movl	$72, %edx	#,
	movq	%rcx, %rsi	# tmp285,
	movq	%rax, %rdi	# tmp286,
	call	memcpy@PLT	#
# p_saveg.c:427: 	    save_p += sizeof(*plat);
	.loc 1 427 13
	movq	save_p(%rip), %rax	# save_p, save_p.93_95
	addq	$72, %rax	#, _96
	movq	%rax, save_p(%rip)	# _96, save_p
# p_saveg.c:428: 	    plat->sector = (sector_t *)(plat->sector - sectors);
	.loc 1 428 38
	movq	-32(%rbp), %rax	# plat, tmp287
	movq	24(%rax), %rdx	# plat_198->sector, _97
# p_saveg.c:428: 	    plat->sector = (sector_t *)(plat->sector - sectors);
	.loc 1 428 47
	movq	sectors(%rip), %rax	# sectors, sectors.94_98
	subq	%rax, %rdx	# sectors.94_98, _99
	movq	%rdx, %rax	# _99, _99
	sarq	$7, %rax	#, _99
# p_saveg.c:428: 	    plat->sector = (sector_t *)(plat->sector - sectors);
	.loc 1 428 21
	movq	%rax, %rdx	# _100, _101
# p_saveg.c:428: 	    plat->sector = (sector_t *)(plat->sector - sectors);
	.loc 1 428 19
	movq	-32(%rbp), %rax	# plat, tmp289
	movq	%rdx, 24(%rax)	# _101, plat_198->sector
# p_saveg.c:429: 	    continue;
	.loc 1 429 6
	jmp	.L67	#
.L71:
# p_saveg.c:432: 	if (th->function.acp1 == (actionf_p1)T_LightFlash)
	.loc 1 432 18
	movq	-64(%rbp), %rax	# th, tmp290
	movq	16(%rax), %rax	# th_165->function.acp1, _102
# p_saveg.c:432: 	if (th->function.acp1 == (actionf_p1)T_LightFlash)
	.loc 1 432 5
	movq	T_LightFlash@GOTPCREL(%rip), %rdx	#, tmp292
	cmpq	%rdx, %rax	# tmp291, _102
	jne	.L72	#,
# p_saveg.c:434: 	    *save_p++ = tc_flash;
	.loc 1 434 13
	movq	save_p(%rip), %rax	# save_p, save_p.95_103
	leaq	1(%rax), %rdx	#, _105
	movq	%rdx, save_p(%rip)	# _105, save_p
# p_saveg.c:434: 	    *save_p++ = tc_flash;
	.loc 1 434 16
	movb	$4, (%rax)	#, *save_p.96_104
# p_saveg.c:435: 	    PADSAVEP();
	.loc 1 435 6
	movq	save_p(%rip), %rax	# save_p, save_p.97_106
	movq	save_p(%rip), %rdx	# save_p, save_p.98_107
	andl	$3, %edx	#, _110
	movl	$4, %ecx	#, tmp293
	subl	%edx, %ecx	# _110, _111
	movslq	%ecx, %rdx	# _111, _112
	andl	$3, %edx	#, _113
	addq	%rdx, %rax	# _113, _114
	movq	%rax, save_p(%rip)	# _114, save_p
# p_saveg.c:436: 	    flash = (lightflash_t *)save_p;
	.loc 1 436 12
	movq	save_p(%rip), %rax	# save_p, tmp294
	movq	%rax, -40(%rbp)	# tmp294, flash
# p_saveg.c:437: 	    memcpy (flash, th, sizeof(*flash));
	.loc 1 437 6
	movq	-64(%rbp), %rcx	# th, tmp295
	movq	-40(%rbp), %rax	# flash, tmp296
	movl	$56, %edx	#,
	movq	%rcx, %rsi	# tmp295,
	movq	%rax, %rdi	# tmp296,
	call	memcpy@PLT	#
# p_saveg.c:438: 	    save_p += sizeof(*flash);
	.loc 1 438 13
	movq	save_p(%rip), %rax	# save_p, save_p.100_115
	addq	$56, %rax	#, _116
	movq	%rax, save_p(%rip)	# _116, save_p
# p_saveg.c:439: 	    flash->sector = (sector_t *)(flash->sector - sectors);
	.loc 1 439 40
	movq	-40(%rbp), %rax	# flash, tmp297
	movq	24(%rax), %rdx	# flash_191->sector, _117
# p_saveg.c:439: 	    flash->sector = (sector_t *)(flash->sector - sectors);
	.loc 1 439 49
	movq	sectors(%rip), %rax	# sectors, sectors.101_118
	subq	%rax, %rdx	# sectors.101_118, _119
	movq	%rdx, %rax	# _119, _119
	sarq	$7, %rax	#, _119
# p_saveg.c:439: 	    flash->sector = (sector_t *)(flash->sector - sectors);
	.loc 1 439 22
	movq	%rax, %rdx	# _120, _121
# p_saveg.c:439: 	    flash->sector = (sector_t *)(flash->sector - sectors);
	.loc 1 439 20
	movq	-40(%rbp), %rax	# flash, tmp299
	movq	%rdx, 24(%rax)	# _121, flash_191->sector
# p_saveg.c:440: 	    continue;
	.loc 1 440 6
	jmp	.L67	#
.L72:
# p_saveg.c:443: 	if (th->function.acp1 == (actionf_p1)T_StrobeFlash)
	.loc 1 443 18
	movq	-64(%rbp), %rax	# th, tmp300
	movq	16(%rax), %rax	# th_165->function.acp1, _122
# p_saveg.c:443: 	if (th->function.acp1 == (actionf_p1)T_StrobeFlash)
	.loc 1 443 5
	movq	T_StrobeFlash@GOTPCREL(%rip), %rdx	#, tmp302
	cmpq	%rdx, %rax	# tmp301, _122
	jne	.L73	#,
# p_saveg.c:445: 	    *save_p++ = tc_strobe;
	.loc 1 445 13
	movq	save_p(%rip), %rax	# save_p, save_p.102_123
	leaq	1(%rax), %rdx	#, _125
	movq	%rdx, save_p(%rip)	# _125, save_p
# p_saveg.c:445: 	    *save_p++ = tc_strobe;
	.loc 1 445 16
	movb	$5, (%rax)	#, *save_p.103_124
# p_saveg.c:446: 	    PADSAVEP();
	.loc 1 446 6
	movq	save_p(%rip), %rax	# save_p, save_p.104_126
	movq	save_p(%rip), %rdx	# save_p, save_p.105_127
	andl	$3, %edx	#, _130
	movl	$4, %ecx	#, tmp303
	subl	%edx, %ecx	# _130, _131
	movslq	%ecx, %rdx	# _131, _132
	andl	$3, %edx	#, _133
	addq	%rdx, %rax	# _133, _134
	movq	%rax, save_p(%rip)	# _134, save_p
# p_saveg.c:447: 	    strobe = (strobe_t *)save_p;
	.loc 1 447 13
	movq	save_p(%rip), %rax	# save_p, tmp304
	movq	%rax, -48(%rbp)	# tmp304, strobe
# p_saveg.c:448: 	    memcpy (strobe, th, sizeof(*strobe));
	.loc 1 448 6
	movq	-64(%rbp), %rcx	# th, tmp305
	movq	-48(%rbp), %rax	# strobe, tmp306
	movl	$56, %edx	#,
	movq	%rcx, %rsi	# tmp305,
	movq	%rax, %rdi	# tmp306,
	call	memcpy@PLT	#
# p_saveg.c:449: 	    save_p += sizeof(*strobe);
	.loc 1 449 13
	movq	save_p(%rip), %rax	# save_p, save_p.107_135
	addq	$56, %rax	#, _136
	movq	%rax, save_p(%rip)	# _136, save_p
# p_saveg.c:450: 	    strobe->sector = (sector_t *)(strobe->sector - sectors);
	.loc 1 450 42
	movq	-48(%rbp), %rax	# strobe, tmp307
	movq	24(%rax), %rdx	# strobe_184->sector, _137
# p_saveg.c:450: 	    strobe->sector = (sector_t *)(strobe->sector - sectors);
	.loc 1 450 51
	movq	sectors(%rip), %rax	# sectors, sectors.108_138
	subq	%rax, %rdx	# sectors.108_138, _139
	movq	%rdx, %rax	# _139, _139
	sarq	$7, %rax	#, _139
# p_saveg.c:450: 	    strobe->sector = (sector_t *)(strobe->sector - sectors);
	.loc 1 450 23
	movq	%rax, %rdx	# _140, _141
# p_saveg.c:450: 	    strobe->sector = (sector_t *)(strobe->sector - sectors);
	.loc 1 450 21
	movq	-48(%rbp), %rax	# strobe, tmp309
	movq	%rdx, 24(%rax)	# _141, strobe_184->sector
# p_saveg.c:451: 	    continue;
	.loc 1 451 6
	jmp	.L67	#
.L73:
# p_saveg.c:454: 	if (th->function.acp1 == (actionf_p1)T_Glow)
	.loc 1 454 18
	movq	-64(%rbp), %rax	# th, tmp310
	movq	16(%rax), %rax	# th_165->function.acp1, _142
# p_saveg.c:454: 	if (th->function.acp1 == (actionf_p1)T_Glow)
	.loc 1 454 5
	movq	T_Glow@GOTPCREL(%rip), %rdx	#, tmp312
	cmpq	%rdx, %rax	# tmp311, _142
	jne	.L67	#,
# p_saveg.c:456: 	    *save_p++ = tc_glow;
	.loc 1 456 13
	movq	save_p(%rip), %rax	# save_p, save_p.109_143
	leaq	1(%rax), %rdx	#, _145
	movq	%rdx, save_p(%rip)	# _145, save_p
# p_saveg.c:456: 	    *save_p++ = tc_glow;
	.loc 1 456 16
	movb	$6, (%rax)	#, *save_p.110_144
# p_saveg.c:457: 	    PADSAVEP();
	.loc 1 457 6
	movq	save_p(%rip), %rax	# save_p, save_p.111_146
	movq	save_p(%rip), %rdx	# save_p, save_p.112_147
	andl	$3, %edx	#, _150
	movl	$4, %ecx	#, tmp313
	subl	%edx, %ecx	# _150, _151
	movslq	%ecx, %rdx	# _151, _152
	andl	$3, %edx	#, _153
	addq	%rdx, %rax	# _153, _154
	movq	%rax, save_p(%rip)	# _154, save_p
# p_saveg.c:458: 	    glow = (glow_t *)save_p;
	.loc 1 458 11
	movq	save_p(%rip), %rax	# save_p, tmp314
	movq	%rax, -56(%rbp)	# tmp314, glow
# p_saveg.c:459: 	    memcpy (glow, th, sizeof(*glow));
	.loc 1 459 6
	movq	-64(%rbp), %rcx	# th, tmp315
	movq	-56(%rbp), %rax	# glow, tmp316
	movl	$48, %edx	#,
	movq	%rcx, %rsi	# tmp315,
	movq	%rax, %rdi	# tmp316,
	call	memcpy@PLT	#
# p_saveg.c:460: 	    save_p += sizeof(*glow);
	.loc 1 460 13
	movq	save_p(%rip), %rax	# save_p, save_p.114_155
	addq	$48, %rax	#, _156
	movq	%rax, save_p(%rip)	# _156, save_p
# p_saveg.c:461: 	    glow->sector = (sector_t *)(glow->sector - sectors);
	.loc 1 461 38
	movq	-56(%rbp), %rax	# glow, tmp317
	movq	24(%rax), %rdx	# glow_177->sector, _157
# p_saveg.c:461: 	    glow->sector = (sector_t *)(glow->sector - sectors);
	.loc 1 461 47
	movq	sectors(%rip), %rax	# sectors, sectors.115_158
	subq	%rax, %rdx	# sectors.115_158, _159
	movq	%rdx, %rax	# _159, _159
	sarq	$7, %rax	#, _159
# p_saveg.c:461: 	    glow->sector = (sector_t *)(glow->sector - sectors);
	.loc 1 461 21
	movq	%rax, %rdx	# _160, _161
# p_saveg.c:461: 	    glow->sector = (sector_t *)(glow->sector - sectors);
	.loc 1 461 19
	movq	-56(%rbp), %rax	# glow, tmp319
	movq	%rdx, 24(%rax)	# _161, glow_177->sector
# p_saveg.c:462: 	    continue;
	.loc 1 462 6
	jmp	.L67	#
.L76:
# p_saveg.c:385: 	    continue;
	.loc 1 385 6
	nop	
.L67:
# p_saveg.c:368:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 368 55 discriminator 2
	movq	-64(%rbp), %rax	# th, tmp320
	movq	8(%rax), %rax	# th_165->next, tmp321
	movq	%rax, -64(%rbp)	# tmp321, th
.L60:
# p_saveg.c:368:     for (th = thinkercap.next ; th != &thinkercap ; th=th->next)
	.loc 1 368 36 discriminator 1
	leaq	thinkercap(%rip), %rax	#, tmp322
	cmpq	%rax, -64(%rbp)	# tmp322, th
	jne	.L74	#,
# p_saveg.c:467:     *save_p++ = tc_endspecials;	
	.loc 1 467 12
	movq	save_p(%rip), %rax	# save_p, save_p.116_162
	leaq	1(%rax), %rdx	#, _164
	movq	%rdx, save_p(%rip)	# _164, save_p
# p_saveg.c:467:     *save_p++ = tc_endspecials;	
	.loc 1 467 15
	movb	$7, (%rax)	#, *save_p.117_163
# p_saveg.c:469: }
	.loc 1 469 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	P_ArchiveSpecials, .-P_ArchiveSpecials
	.section	.rodata
	.align 8
.LC1:
	.string	"P_UnarchiveSpecials:Unknown tclass %i in savegame"
	.text
	.globl	P_UnArchiveSpecials
	.type	P_UnArchiveSpecials, @function
P_UnArchiveSpecials:
.LFB7:
	.loc 1 476 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
.L92:
# p_saveg.c:490: 	tclass = *save_p++;
	.loc 1 490 18
	movq	save_p(%rip), %rax	# save_p, save_p.118_1
	leaq	1(%rax), %rdx	#, _3
	movq	%rdx, save_p(%rip)	# _3, save_p
# p_saveg.c:490: 	tclass = *save_p++;
	.loc 1 490 9
	movzbl	(%rax), %eax	# *save_p.119_2, tmp232
	movb	%al, -57(%rbp)	# tmp232, tclass
# p_saveg.c:491: 	switch (tclass)
	.loc 1 491 2
	movzbl	-57(%rbp), %eax	# tclass, _4
	cmpl	$7, %eax	#, _4
	ja	.L78	#,
	movl	%eax, %eax	# _4, tmp233
	leaq	0(,%rax,4), %rdx	#, tmp234
	leaq	.L80(%rip), %rax	#, tmp235
	movl	(%rdx,%rax), %eax	#, tmp236
	cltq
	leaq	.L80(%rip), %rdx	#, tmp239
	addq	%rdx, %rax	# tmp239, tmp238
	notrack jmp	*%rax	# tmp238
	.section	.rodata
	.align 4
	.align 4
.L80:
	.long	.L87-.L80
	.long	.L86-.L80
	.long	.L85-.L80
	.long	.L84-.L80
	.long	.L83-.L80
	.long	.L82-.L80
	.long	.L81-.L80
	.long	.L93-.L80
	.text
.L87:
# p_saveg.c:497: 	    PADSAVEP();
	.loc 1 497 6
	movq	save_p(%rip), %rax	# save_p, save_p.120_5
	movq	save_p(%rip), %rdx	# save_p, save_p.121_6
	andl	$3, %edx	#, _9
	movl	$4, %ecx	#, tmp240
	subl	%edx, %ecx	# _9, _10
	movslq	%ecx, %rdx	# _10, _11
	andl	$3, %edx	#, _12
	addq	%rdx, %rax	# _12, _13
	movq	%rax, save_p(%rip)	# _13, save_p
# p_saveg.c:498: 	    ceiling = Z_Malloc (sizeof(*ceiling), PU_LEVEL, NULL);
	.loc 1 498 16
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$72, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp241, ceiling
# p_saveg.c:499: 	    memcpy (ceiling, save_p, sizeof(*ceiling));
	.loc 1 499 6
	movq	save_p(%rip), %rcx	# save_p, save_p.123_14
	movq	-8(%rbp), %rax	# ceiling, tmp242
	movl	$72, %edx	#,
	movq	%rcx, %rsi	# save_p.123_14,
	movq	%rax, %rdi	# tmp242,
	call	memcpy@PLT	#
# p_saveg.c:500: 	    save_p += sizeof(*ceiling);
	.loc 1 500 13
	movq	save_p(%rip), %rax	# save_p, save_p.124_15
	addq	$72, %rax	#, _16
	movq	%rax, save_p(%rip)	# _16, save_p
# p_saveg.c:501: 	    ceiling->sector = &sectors[(int)ceiling->sector];
	.loc 1 501 24
	movq	sectors(%rip), %rdx	# sectors, sectors.125_17
# p_saveg.c:501: 	    ceiling->sector = &sectors[(int)ceiling->sector];
	.loc 1 501 45
	movq	-8(%rbp), %rax	# ceiling, tmp243
	movq	32(%rax), %rax	# ceiling_213->sector, _18
# p_saveg.c:501: 	    ceiling->sector = &sectors[(int)ceiling->sector];
	.loc 1 501 33
	cltq
# p_saveg.c:501: 	    ceiling->sector = &sectors[(int)ceiling->sector];
	.loc 1 501 32
	salq	$7, %rax	#, _22
# p_saveg.c:501: 	    ceiling->sector = &sectors[(int)ceiling->sector];
	.loc 1 501 24
	addq	%rax, %rdx	# _22, _23
# p_saveg.c:501: 	    ceiling->sector = &sectors[(int)ceiling->sector];
	.loc 1 501 22
	movq	-8(%rbp), %rax	# ceiling, tmp244
	movq	%rdx, 32(%rax)	# _23, ceiling_213->sector
# p_saveg.c:502: 	    ceiling->sector->specialdata = ceiling;
	.loc 1 502 13
	movq	-8(%rbp), %rax	# ceiling, tmp245
	movq	32(%rax), %rax	# ceiling_213->sector, _24
# p_saveg.c:502: 	    ceiling->sector->specialdata = ceiling;
	.loc 1 502 35
	movq	-8(%rbp), %rdx	# ceiling, tmp246
	movq	%rdx, 104(%rax)	# tmp246, _24->specialdata
# p_saveg.c:504: 	    if (ceiling->thinker.function.acp1)
	.loc 1 504 35
	movq	-8(%rbp), %rax	# ceiling, tmp247
	movq	16(%rax), %rax	# ceiling_213->thinker.function.acp1, _25
# p_saveg.c:504: 	    if (ceiling->thinker.function.acp1)
	.loc 1 504 9
	testq	%rax, %rax	# _25
	je	.L89	#,
# p_saveg.c:505: 		ceiling->thinker.function.acp1 = (actionf_p1)T_MoveCeiling;
	.loc 1 505 34
	movq	-8(%rbp), %rax	# ceiling, tmp248
	movq	T_MoveCeiling@GOTPCREL(%rip), %rdx	#, tmp250
	movq	%rdx, 16(%rax)	# tmp249, ceiling_213->thinker.function.acp1
.L89:
# p_saveg.c:507: 	    P_AddThinker (&ceiling->thinker);
	.loc 1 507 6
	movq	-8(%rbp), %rax	# ceiling, _26
	movq	%rax, %rdi	# _26,
	call	P_AddThinker@PLT	#
# p_saveg.c:508: 	    P_AddActiveCeiling(ceiling);
	.loc 1 508 6
	movq	-8(%rbp), %rax	# ceiling, tmp251
	movq	%rax, %rdi	# tmp251,
	call	P_AddActiveCeiling@PLT	#
# p_saveg.c:509: 	    break;
	.loc 1 509 6
	jmp	.L90	#
.L86:
# p_saveg.c:512: 	    PADSAVEP();
	.loc 1 512 6
	movq	save_p(%rip), %rax	# save_p, save_p.126_27
	movq	save_p(%rip), %rdx	# save_p, save_p.127_28
	andl	$3, %edx	#, _31
	movl	$4, %ecx	#, tmp252
	subl	%edx, %ecx	# _31, _32
	movslq	%ecx, %rdx	# _32, _33
	andl	$3, %edx	#, _34
	addq	%rdx, %rax	# _34, _35
	movq	%rax, save_p(%rip)	# _35, save_p
# p_saveg.c:513: 	    door = Z_Malloc (sizeof(*door), PU_LEVEL, NULL);
	.loc 1 513 13
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$64, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp253, door
# p_saveg.c:514: 	    memcpy (door, save_p, sizeof(*door));
	.loc 1 514 6
	movq	save_p(%rip), %rcx	# save_p, save_p.129_36
	movq	-16(%rbp), %rax	# door, tmp254
	movl	$64, %edx	#,
	movq	%rcx, %rsi	# save_p.129_36,
	movq	%rax, %rdi	# tmp254,
	call	memcpy@PLT	#
# p_saveg.c:515: 	    save_p += sizeof(*door);
	.loc 1 515 13
	movq	save_p(%rip), %rax	# save_p, save_p.130_37
	addq	$64, %rax	#, _38
	movq	%rax, save_p(%rip)	# _38, save_p
# p_saveg.c:516: 	    door->sector = &sectors[(int)door->sector];
	.loc 1 516 21
	movq	sectors(%rip), %rdx	# sectors, sectors.131_39
# p_saveg.c:516: 	    door->sector = &sectors[(int)door->sector];
	.loc 1 516 39
	movq	-16(%rbp), %rax	# door, tmp255
	movq	32(%rax), %rax	# door_204->sector, _40
# p_saveg.c:516: 	    door->sector = &sectors[(int)door->sector];
	.loc 1 516 30
	cltq
# p_saveg.c:516: 	    door->sector = &sectors[(int)door->sector];
	.loc 1 516 29
	salq	$7, %rax	#, _44
# p_saveg.c:516: 	    door->sector = &sectors[(int)door->sector];
	.loc 1 516 21
	addq	%rax, %rdx	# _44, _45
# p_saveg.c:516: 	    door->sector = &sectors[(int)door->sector];
	.loc 1 516 19
	movq	-16(%rbp), %rax	# door, tmp256
	movq	%rdx, 32(%rax)	# _45, door_204->sector
# p_saveg.c:517: 	    door->sector->specialdata = door;
	.loc 1 517 10
	movq	-16(%rbp), %rax	# door, tmp257
	movq	32(%rax), %rax	# door_204->sector, _46
# p_saveg.c:517: 	    door->sector->specialdata = door;
	.loc 1 517 32
	movq	-16(%rbp), %rdx	# door, tmp258
	movq	%rdx, 104(%rax)	# tmp258, _46->specialdata
# p_saveg.c:518: 	    door->thinker.function.acp1 = (actionf_p1)T_VerticalDoor;
	.loc 1 518 34
	movq	-16(%rbp), %rax	# door, tmp259
	movq	T_VerticalDoor@GOTPCREL(%rip), %rdx	#, tmp261
	movq	%rdx, 16(%rax)	# tmp260, door_204->thinker.function.acp1
# p_saveg.c:519: 	    P_AddThinker (&door->thinker);
	.loc 1 519 6
	movq	-16(%rbp), %rax	# door, _47
	movq	%rax, %rdi	# _47,
	call	P_AddThinker@PLT	#
# p_saveg.c:520: 	    break;
	.loc 1 520 6
	jmp	.L90	#
.L85:
# p_saveg.c:523: 	    PADSAVEP();
	.loc 1 523 6
	movq	save_p(%rip), %rax	# save_p, save_p.132_48
	movq	save_p(%rip), %rdx	# save_p, save_p.133_49
	andl	$3, %edx	#, _52
	movl	$4, %ecx	#, tmp262
	subl	%edx, %ecx	# _52, _53
	movslq	%ecx, %rdx	# _53, _54
	andl	$3, %edx	#, _55
	addq	%rdx, %rax	# _55, _56
	movq	%rax, save_p(%rip)	# _56, save_p
# p_saveg.c:524: 	    floor = Z_Malloc (sizeof(*floor), PU_LEVEL, NULL);
	.loc 1 524 14
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$64, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp263, floor
# p_saveg.c:525: 	    memcpy (floor, save_p, sizeof(*floor));
	.loc 1 525 6
	movq	save_p(%rip), %rcx	# save_p, save_p.135_57
	movq	-24(%rbp), %rax	# floor, tmp264
	movl	$64, %edx	#,
	movq	%rcx, %rsi	# save_p.135_57,
	movq	%rax, %rdi	# tmp264,
	call	memcpy@PLT	#
# p_saveg.c:526: 	    save_p += sizeof(*floor);
	.loc 1 526 13
	movq	save_p(%rip), %rax	# save_p, save_p.136_58
	addq	$64, %rax	#, _59
	movq	%rax, save_p(%rip)	# _59, save_p
# p_saveg.c:527: 	    floor->sector = &sectors[(int)floor->sector];
	.loc 1 527 22
	movq	sectors(%rip), %rdx	# sectors, sectors.137_60
# p_saveg.c:527: 	    floor->sector = &sectors[(int)floor->sector];
	.loc 1 527 41
	movq	-24(%rbp), %rax	# floor, tmp265
	movq	32(%rax), %rax	# floor_195->sector, _61
# p_saveg.c:527: 	    floor->sector = &sectors[(int)floor->sector];
	.loc 1 527 31
	cltq
# p_saveg.c:527: 	    floor->sector = &sectors[(int)floor->sector];
	.loc 1 527 30
	salq	$7, %rax	#, _65
# p_saveg.c:527: 	    floor->sector = &sectors[(int)floor->sector];
	.loc 1 527 22
	addq	%rax, %rdx	# _65, _66
# p_saveg.c:527: 	    floor->sector = &sectors[(int)floor->sector];
	.loc 1 527 20
	movq	-24(%rbp), %rax	# floor, tmp266
	movq	%rdx, 32(%rax)	# _66, floor_195->sector
# p_saveg.c:528: 	    floor->sector->specialdata = floor;
	.loc 1 528 11
	movq	-24(%rbp), %rax	# floor, tmp267
	movq	32(%rax), %rax	# floor_195->sector, _67
# p_saveg.c:528: 	    floor->sector->specialdata = floor;
	.loc 1 528 33
	movq	-24(%rbp), %rdx	# floor, tmp268
	movq	%rdx, 104(%rax)	# tmp268, _67->specialdata
# p_saveg.c:529: 	    floor->thinker.function.acp1 = (actionf_p1)T_MoveFloor;
	.loc 1 529 35
	movq	-24(%rbp), %rax	# floor, tmp269
	movq	T_MoveFloor@GOTPCREL(%rip), %rdx	#, tmp271
	movq	%rdx, 16(%rax)	# tmp270, floor_195->thinker.function.acp1
# p_saveg.c:530: 	    P_AddThinker (&floor->thinker);
	.loc 1 530 6
	movq	-24(%rbp), %rax	# floor, _68
	movq	%rax, %rdi	# _68,
	call	P_AddThinker@PLT	#
# p_saveg.c:531: 	    break;
	.loc 1 531 6
	jmp	.L90	#
.L84:
# p_saveg.c:534: 	    PADSAVEP();
	.loc 1 534 6
	movq	save_p(%rip), %rax	# save_p, save_p.138_69
	movq	save_p(%rip), %rdx	# save_p, save_p.139_70
	andl	$3, %edx	#, _73
	movl	$4, %ecx	#, tmp272
	subl	%edx, %ecx	# _73, _74
	movslq	%ecx, %rdx	# _74, _75
	andl	$3, %edx	#, _76
	addq	%rdx, %rax	# _76, _77
	movq	%rax, save_p(%rip)	# _77, save_p
# p_saveg.c:535: 	    plat = Z_Malloc (sizeof(*plat), PU_LEVEL, NULL);
	.loc 1 535 13
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$72, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp273, plat
# p_saveg.c:536: 	    memcpy (plat, save_p, sizeof(*plat));
	.loc 1 536 6
	movq	save_p(%rip), %rcx	# save_p, save_p.141_78
	movq	-32(%rbp), %rax	# plat, tmp274
	movl	$72, %edx	#,
	movq	%rcx, %rsi	# save_p.141_78,
	movq	%rax, %rdi	# tmp274,
	call	memcpy@PLT	#
# p_saveg.c:537: 	    save_p += sizeof(*plat);
	.loc 1 537 13
	movq	save_p(%rip), %rax	# save_p, save_p.142_79
	addq	$72, %rax	#, _80
	movq	%rax, save_p(%rip)	# _80, save_p
# p_saveg.c:538: 	    plat->sector = &sectors[(int)plat->sector];
	.loc 1 538 21
	movq	sectors(%rip), %rdx	# sectors, sectors.143_81
# p_saveg.c:538: 	    plat->sector = &sectors[(int)plat->sector];
	.loc 1 538 39
	movq	-32(%rbp), %rax	# plat, tmp275
	movq	24(%rax), %rax	# plat_185->sector, _82
# p_saveg.c:538: 	    plat->sector = &sectors[(int)plat->sector];
	.loc 1 538 30
	cltq
# p_saveg.c:538: 	    plat->sector = &sectors[(int)plat->sector];
	.loc 1 538 29
	salq	$7, %rax	#, _86
# p_saveg.c:538: 	    plat->sector = &sectors[(int)plat->sector];
	.loc 1 538 21
	addq	%rax, %rdx	# _86, _87
# p_saveg.c:538: 	    plat->sector = &sectors[(int)plat->sector];
	.loc 1 538 19
	movq	-32(%rbp), %rax	# plat, tmp276
	movq	%rdx, 24(%rax)	# _87, plat_185->sector
# p_saveg.c:539: 	    plat->sector->specialdata = plat;
	.loc 1 539 10
	movq	-32(%rbp), %rax	# plat, tmp277
	movq	24(%rax), %rax	# plat_185->sector, _88
# p_saveg.c:539: 	    plat->sector->specialdata = plat;
	.loc 1 539 32
	movq	-32(%rbp), %rdx	# plat, tmp278
	movq	%rdx, 104(%rax)	# tmp278, _88->specialdata
# p_saveg.c:541: 	    if (plat->thinker.function.acp1)
	.loc 1 541 32
	movq	-32(%rbp), %rax	# plat, tmp279
	movq	16(%rax), %rax	# plat_185->thinker.function.acp1, _89
# p_saveg.c:541: 	    if (plat->thinker.function.acp1)
	.loc 1 541 9
	testq	%rax, %rax	# _89
	je	.L91	#,
# p_saveg.c:542: 		plat->thinker.function.acp1 = (actionf_p1)T_PlatRaise;
	.loc 1 542 31
	movq	-32(%rbp), %rax	# plat, tmp280
	movq	T_PlatRaise@GOTPCREL(%rip), %rdx	#, tmp282
	movq	%rdx, 16(%rax)	# tmp281, plat_185->thinker.function.acp1
.L91:
# p_saveg.c:544: 	    P_AddThinker (&plat->thinker);
	.loc 1 544 6
	movq	-32(%rbp), %rax	# plat, _90
	movq	%rax, %rdi	# _90,
	call	P_AddThinker@PLT	#
# p_saveg.c:545: 	    P_AddActivePlat(plat);
	.loc 1 545 6
	movq	-32(%rbp), %rax	# plat, tmp283
	movq	%rax, %rdi	# tmp283,
	call	P_AddActivePlat@PLT	#
# p_saveg.c:546: 	    break;
	.loc 1 546 6
	jmp	.L90	#
.L83:
# p_saveg.c:549: 	    PADSAVEP();
	.loc 1 549 6
	movq	save_p(%rip), %rax	# save_p, save_p.144_91
	movq	save_p(%rip), %rdx	# save_p, save_p.145_92
	andl	$3, %edx	#, _95
	movl	$4, %ecx	#, tmp284
	subl	%edx, %ecx	# _95, _96
	movslq	%ecx, %rdx	# _96, _97
	andl	$3, %edx	#, _98
	addq	%rdx, %rax	# _98, _99
	movq	%rax, save_p(%rip)	# _99, save_p
# p_saveg.c:550: 	    flash = Z_Malloc (sizeof(*flash), PU_LEVEL, NULL);
	.loc 1 550 14
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$56, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp285, flash
# p_saveg.c:551: 	    memcpy (flash, save_p, sizeof(*flash));
	.loc 1 551 6
	movq	save_p(%rip), %rcx	# save_p, save_p.147_100
	movq	-40(%rbp), %rax	# flash, tmp286
	movl	$56, %edx	#,
	movq	%rcx, %rsi	# save_p.147_100,
	movq	%rax, %rdi	# tmp286,
	call	memcpy@PLT	#
# p_saveg.c:552: 	    save_p += sizeof(*flash);
	.loc 1 552 13
	movq	save_p(%rip), %rax	# save_p, save_p.148_101
	addq	$56, %rax	#, _102
	movq	%rax, save_p(%rip)	# _102, save_p
# p_saveg.c:553: 	    flash->sector = &sectors[(int)flash->sector];
	.loc 1 553 22
	movq	sectors(%rip), %rdx	# sectors, sectors.149_103
# p_saveg.c:553: 	    flash->sector = &sectors[(int)flash->sector];
	.loc 1 553 41
	movq	-40(%rbp), %rax	# flash, tmp287
	movq	24(%rax), %rax	# flash_177->sector, _104
# p_saveg.c:553: 	    flash->sector = &sectors[(int)flash->sector];
	.loc 1 553 31
	cltq
# p_saveg.c:553: 	    flash->sector = &sectors[(int)flash->sector];
	.loc 1 553 30
	salq	$7, %rax	#, _108
# p_saveg.c:553: 	    flash->sector = &sectors[(int)flash->sector];
	.loc 1 553 22
	addq	%rax, %rdx	# _108, _109
# p_saveg.c:553: 	    flash->sector = &sectors[(int)flash->sector];
	.loc 1 553 20
	movq	-40(%rbp), %rax	# flash, tmp288
	movq	%rdx, 24(%rax)	# _109, flash_177->sector
# p_saveg.c:554: 	    flash->thinker.function.acp1 = (actionf_p1)T_LightFlash;
	.loc 1 554 35
	movq	-40(%rbp), %rax	# flash, tmp289
	movq	T_LightFlash@GOTPCREL(%rip), %rdx	#, tmp291
	movq	%rdx, 16(%rax)	# tmp290, flash_177->thinker.function.acp1
# p_saveg.c:555: 	    P_AddThinker (&flash->thinker);
	.loc 1 555 6
	movq	-40(%rbp), %rax	# flash, _110
	movq	%rax, %rdi	# _110,
	call	P_AddThinker@PLT	#
# p_saveg.c:556: 	    break;
	.loc 1 556 6
	jmp	.L90	#
.L82:
# p_saveg.c:559: 	    PADSAVEP();
	.loc 1 559 6
	movq	save_p(%rip), %rax	# save_p, save_p.150_111
	movq	save_p(%rip), %rdx	# save_p, save_p.151_112
	andl	$3, %edx	#, _115
	movl	$4, %ecx	#, tmp292
	subl	%edx, %ecx	# _115, _116
	movslq	%ecx, %rdx	# _116, _117
	andl	$3, %edx	#, _118
	addq	%rdx, %rax	# _118, _119
	movq	%rax, save_p(%rip)	# _119, save_p
# p_saveg.c:560: 	    strobe = Z_Malloc (sizeof(*strobe), PU_LEVEL, NULL);
	.loc 1 560 15
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$56, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -48(%rbp)	# tmp293, strobe
# p_saveg.c:561: 	    memcpy (strobe, save_p, sizeof(*strobe));
	.loc 1 561 6
	movq	save_p(%rip), %rcx	# save_p, save_p.153_120
	movq	-48(%rbp), %rax	# strobe, tmp294
	movl	$56, %edx	#,
	movq	%rcx, %rsi	# save_p.153_120,
	movq	%rax, %rdi	# tmp294,
	call	memcpy@PLT	#
# p_saveg.c:562: 	    save_p += sizeof(*strobe);
	.loc 1 562 13
	movq	save_p(%rip), %rax	# save_p, save_p.154_121
	addq	$56, %rax	#, _122
	movq	%rax, save_p(%rip)	# _122, save_p
# p_saveg.c:563: 	    strobe->sector = &sectors[(int)strobe->sector];
	.loc 1 563 23
	movq	sectors(%rip), %rdx	# sectors, sectors.155_123
# p_saveg.c:563: 	    strobe->sector = &sectors[(int)strobe->sector];
	.loc 1 563 43
	movq	-48(%rbp), %rax	# strobe, tmp295
	movq	24(%rax), %rax	# strobe_169->sector, _124
# p_saveg.c:563: 	    strobe->sector = &sectors[(int)strobe->sector];
	.loc 1 563 32
	cltq
# p_saveg.c:563: 	    strobe->sector = &sectors[(int)strobe->sector];
	.loc 1 563 31
	salq	$7, %rax	#, _128
# p_saveg.c:563: 	    strobe->sector = &sectors[(int)strobe->sector];
	.loc 1 563 23
	addq	%rax, %rdx	# _128, _129
# p_saveg.c:563: 	    strobe->sector = &sectors[(int)strobe->sector];
	.loc 1 563 21
	movq	-48(%rbp), %rax	# strobe, tmp296
	movq	%rdx, 24(%rax)	# _129, strobe_169->sector
# p_saveg.c:564: 	    strobe->thinker.function.acp1 = (actionf_p1)T_StrobeFlash;
	.loc 1 564 36
	movq	-48(%rbp), %rax	# strobe, tmp297
	movq	T_StrobeFlash@GOTPCREL(%rip), %rdx	#, tmp299
	movq	%rdx, 16(%rax)	# tmp298, strobe_169->thinker.function.acp1
# p_saveg.c:565: 	    P_AddThinker (&strobe->thinker);
	.loc 1 565 6
	movq	-48(%rbp), %rax	# strobe, _130
	movq	%rax, %rdi	# _130,
	call	P_AddThinker@PLT	#
# p_saveg.c:566: 	    break;
	.loc 1 566 6
	jmp	.L90	#
.L81:
# p_saveg.c:569: 	    PADSAVEP();
	.loc 1 569 6
	movq	save_p(%rip), %rax	# save_p, save_p.156_131
	movq	save_p(%rip), %rdx	# save_p, save_p.157_132
	andl	$3, %edx	#, _135
	movl	$4, %ecx	#, tmp300
	subl	%edx, %ecx	# _135, _136
	movslq	%ecx, %rdx	# _136, _137
	andl	$3, %edx	#, _138
	addq	%rdx, %rax	# _138, _139
	movq	%rax, save_p(%rip)	# _139, save_p
# p_saveg.c:570: 	    glow = Z_Malloc (sizeof(*glow), PU_LEVEL, NULL);
	.loc 1 570 13
	movl	$0, %edx	#,
	movl	$50, %esi	#,
	movl	$48, %edi	#,
	call	Z_Malloc@PLT	#
	movq	%rax, -56(%rbp)	# tmp301, glow
# p_saveg.c:571: 	    memcpy (glow, save_p, sizeof(*glow));
	.loc 1 571 6
	movq	save_p(%rip), %rcx	# save_p, save_p.159_140
	movq	-56(%rbp), %rax	# glow, tmp302
	movl	$48, %edx	#,
	movq	%rcx, %rsi	# save_p.159_140,
	movq	%rax, %rdi	# tmp302,
	call	memcpy@PLT	#
# p_saveg.c:572: 	    save_p += sizeof(*glow);
	.loc 1 572 13
	movq	save_p(%rip), %rax	# save_p, save_p.160_141
	addq	$48, %rax	#, _142
	movq	%rax, save_p(%rip)	# _142, save_p
# p_saveg.c:573: 	    glow->sector = &sectors[(int)glow->sector];
	.loc 1 573 21
	movq	sectors(%rip), %rdx	# sectors, sectors.161_143
# p_saveg.c:573: 	    glow->sector = &sectors[(int)glow->sector];
	.loc 1 573 39
	movq	-56(%rbp), %rax	# glow, tmp303
	movq	24(%rax), %rax	# glow_161->sector, _144
# p_saveg.c:573: 	    glow->sector = &sectors[(int)glow->sector];
	.loc 1 573 30
	cltq
# p_saveg.c:573: 	    glow->sector = &sectors[(int)glow->sector];
	.loc 1 573 29
	salq	$7, %rax	#, _148
# p_saveg.c:573: 	    glow->sector = &sectors[(int)glow->sector];
	.loc 1 573 21
	addq	%rax, %rdx	# _148, _149
# p_saveg.c:573: 	    glow->sector = &sectors[(int)glow->sector];
	.loc 1 573 19
	movq	-56(%rbp), %rax	# glow, tmp304
	movq	%rdx, 24(%rax)	# _149, glow_161->sector
# p_saveg.c:574: 	    glow->thinker.function.acp1 = (actionf_p1)T_Glow;
	.loc 1 574 34
	movq	-56(%rbp), %rax	# glow, tmp305
	movq	T_Glow@GOTPCREL(%rip), %rdx	#, tmp307
	movq	%rdx, 16(%rax)	# tmp306, glow_161->thinker.function.acp1
# p_saveg.c:575: 	    P_AddThinker (&glow->thinker);
	.loc 1 575 6
	movq	-56(%rbp), %rax	# glow, _150
	movq	%rax, %rdi	# _150,
	call	P_AddThinker@PLT	#
# p_saveg.c:576: 	    break;
	.loc 1 576 6
	jmp	.L90	#
.L78:
# p_saveg.c:579: 	    I_Error ("P_UnarchiveSpecials:Unknown tclass %i "
	.loc 1 579 6
	movzbl	-57(%rbp), %eax	# tclass, _151
	movl	%eax, %esi	# _151,
	leaq	.LC1(%rip), %rax	#, tmp308
	movq	%rax, %rdi	# tmp308,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L90:
# p_saveg.c:490: 	tclass = *save_p++;
	.loc 1 490 9
	jmp	.L92	#
.L93:
# p_saveg.c:494: 	    return;	// end of list
	.loc 1 494 6
	nop	
# p_saveg.c:585: }
	.loc 1 585 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	P_UnArchiveSpecials, .-P_UnArchiveSpecials
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "d_ticcmd.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "m_fixed.h"
	.file 6 "tables.h"
	.file 7 "doomdef.h"
	.file 8 "d_think.h"
	.file 9 "doomdata.h"
	.file 10 "info.h"
	.file 11 "p_mobj.h"
	.file 12 "r_defs.h"
	.file 13 "d_player.h"
	.file 14 "p_pspr.h"
	.file 15 "r_state.h"
	.file 16 "p_local.h"
	.file 17 "p_spec.h"
	.file 18 "doomstat.h"
	.file 19 "i_system.h"
	.file 20 "z_zone.h"
	.file 21 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3898
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x24
	.long	.LASF1584
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
	.uleb128 0x1c
	.long	0x2e
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1c
	.long	0x4a
	.uleb128 0x17
	.long	.LASF1565
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x10
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
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.long	.LASF16
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.long	0xaa
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	.LASF18
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x26
	.byte	0x8
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.long	.LASF19
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF21
	.uleb128 0x5
	.long	0x4a
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.long	.LASF22
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.long	.LASF23
	.uleb128 0x6
	.long	.LASF24
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.long	0x114
	.uleb128 0x6
	.long	.LASF25
	.byte	0x6
	.byte	0x4e
	.byte	0x12
	.long	0x84
	.uleb128 0xe
	.long	0x84
	.byte	0x7
	.byte	0xa3
	.byte	0x1
	.long	0x1a0
	.uleb128 0x2
	.long	.LASF26
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x1
	.uleb128 0x2
	.long	.LASF28
	.byte	0x2
	.uleb128 0x2
	.long	.LASF29
	.byte	0x3
	.uleb128 0x2
	.long	.LASF30
	.byte	0x4
	.uleb128 0x2
	.long	.LASF31
	.byte	0x5
	.uleb128 0x2
	.long	.LASF32
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.long	0x84
	.byte	0x7
	.byte	0xb5
	.byte	0x1
	.long	0x1ef
	.uleb128 0x2
	.long	.LASF33
	.byte	0
	.uleb128 0x2
	.long	.LASF34
	.byte	0x1
	.uleb128 0x2
	.long	.LASF35
	.byte	0x2
	.uleb128 0x2
	.long	.LASF36
	.byte	0x3
	.uleb128 0x2
	.long	.LASF37
	.byte	0x4
	.uleb128 0x2
	.long	.LASF38
	.byte	0x5
	.uleb128 0x2
	.long	.LASF39
	.byte	0x6
	.uleb128 0x2
	.long	.LASF40
	.byte	0x7
	.uleb128 0x2
	.long	.LASF41
	.byte	0x8
	.uleb128 0x2
	.long	.LASF42
	.byte	0x9
	.uleb128 0x2
	.long	.LASF43
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF44
	.byte	0x7
	.byte	0xc5
	.byte	0x3
	.long	0x1a0
	.uleb128 0xe
	.long	0x84
	.byte	0x7
	.byte	0xca
	.byte	0x1
	.long	0x22c
	.uleb128 0x2
	.long	.LASF45
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x1
	.uleb128 0x2
	.long	.LASF47
	.byte	0x2
	.uleb128 0x2
	.long	.LASF48
	.byte	0x3
	.uleb128 0x2
	.long	.LASF49
	.byte	0x4
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x84
	.byte	0x7
	.byte	0xd7
	.byte	0x1
	.long	0x263
	.uleb128 0x2
	.long	.LASF51
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x1
	.uleb128 0x2
	.long	.LASF53
	.byte	0x2
	.uleb128 0x2
	.long	.LASF54
	.byte	0x3
	.uleb128 0x2
	.long	.LASF55
	.byte	0x4
	.uleb128 0x2
	.long	.LASF56
	.byte	0x5
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.long	.LASF58
	.byte	0x8
	.byte	0x29
	.byte	0x11
	.long	0x26f
	.uleb128 0x5
	.long	0x274
	.uleb128 0x27
	.long	0x27b
	.uleb128 0x1d
	.byte	0
	.uleb128 0x6
	.long	.LASF59
	.byte	0x8
	.byte	0x2a
	.byte	0x11
	.long	0x287
	.uleb128 0x5
	.long	0x28c
	.uleb128 0x1e
	.long	0x297
	.uleb128 0x7
	.long	0x127
	.byte	0
	.uleb128 0x6
	.long	.LASF60
	.byte	0x8
	.byte	0x2b
	.byte	0x11
	.long	0x2a3
	.uleb128 0x5
	.long	0x2a8
	.uleb128 0x1e
	.long	0x2b8
	.uleb128 0x7
	.long	0x127
	.uleb128 0x7
	.long	0x127
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x8
	.byte	0x2d
	.byte	0x9
	.long	0x2e2
	.uleb128 0x1f
	.long	.LASF61
	.byte	0x2f
	.long	0x27b
	.uleb128 0x29
	.string	"acv"
	.byte	0x8
	.byte	0x30
	.byte	0xd
	.long	0x263
	.uleb128 0x1f
	.long	.LASF62
	.byte	0x31
	.long	0x297
	.byte	0
	.uleb128 0x6
	.long	.LASF63
	.byte	0x8
	.byte	0x33
	.byte	0x3
	.long	0x2b8
	.uleb128 0x6
	.long	.LASF64
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.long	0x2e2
	.uleb128 0x16
	.long	.LASF1355
	.byte	0x18
	.byte	0x8
	.byte	0x40
	.long	0x32e
	.uleb128 0x3
	.long	.LASF65
	.byte	0x8
	.byte	0x42
	.byte	0x17
	.long	0x32e
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0x8
	.byte	0x43
	.byte	0x17
	.long	0x32e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF67
	.byte	0x8
	.byte	0x44
	.byte	0xe
	.long	0x2ee
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x2fa
	.uleb128 0x6
	.long	.LASF68
	.byte	0x8
	.byte	0x46
	.byte	0x3
	.long	0x2fa
	.uleb128 0xc
	.long	0x101
	.long	0x34f
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0xa
	.byte	0x9
	.byte	0xcb
	.long	0x395
	.uleb128 0x8
	.string	"x"
	.byte	0x9
	.byte	0xcd
	.byte	0xc
	.long	0x101
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x9
	.byte	0xce
	.byte	0xc
	.long	0x101
	.byte	0x2
	.uleb128 0x3
	.long	.LASF69
	.byte	0x9
	.byte	0xcf
	.byte	0xc
	.long	0x101
	.byte	0x4
	.uleb128 0x3
	.long	.LASF70
	.byte	0x9
	.byte	0xd0
	.byte	0xc
	.long	0x101
	.byte	0x6
	.uleb128 0x3
	.long	.LASF71
	.byte	0x9
	.byte	0xd1
	.byte	0xc
	.long	0x101
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF72
	.byte	0x9
	.byte	0xd2
	.byte	0x3
	.long	0x34f
	.uleb128 0xe
	.long	0x84
	.byte	0xa
	.byte	0x1f
	.byte	0x1
	.long	0x6f0
	.uleb128 0x2
	.long	.LASF73
	.byte	0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x1
	.uleb128 0x2
	.long	.LASF75
	.byte	0x2
	.uleb128 0x2
	.long	.LASF76
	.byte	0x3
	.uleb128 0x2
	.long	.LASF77
	.byte	0x4
	.uleb128 0x2
	.long	.LASF78
	.byte	0x5
	.uleb128 0x2
	.long	.LASF79
	.byte	0x6
	.uleb128 0x2
	.long	.LASF80
	.byte	0x7
	.uleb128 0x2
	.long	.LASF81
	.byte	0x8
	.uleb128 0x2
	.long	.LASF82
	.byte	0x9
	.uleb128 0x2
	.long	.LASF83
	.byte	0xa
	.uleb128 0x2
	.long	.LASF84
	.byte	0xb
	.uleb128 0x2
	.long	.LASF85
	.byte	0xc
	.uleb128 0x2
	.long	.LASF86
	.byte	0xd
	.uleb128 0x2
	.long	.LASF87
	.byte	0xe
	.uleb128 0x2
	.long	.LASF88
	.byte	0xf
	.uleb128 0x2
	.long	.LASF89
	.byte	0x10
	.uleb128 0x2
	.long	.LASF90
	.byte	0x11
	.uleb128 0x2
	.long	.LASF91
	.byte	0x12
	.uleb128 0x2
	.long	.LASF92
	.byte	0x13
	.uleb128 0x2
	.long	.LASF93
	.byte	0x14
	.uleb128 0x2
	.long	.LASF94
	.byte	0x15
	.uleb128 0x2
	.long	.LASF95
	.byte	0x16
	.uleb128 0x2
	.long	.LASF96
	.byte	0x17
	.uleb128 0x2
	.long	.LASF97
	.byte	0x18
	.uleb128 0x2
	.long	.LASF98
	.byte	0x19
	.uleb128 0x2
	.long	.LASF99
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF100
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF101
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF102
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF103
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF104
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF105
	.byte	0x20
	.uleb128 0x2
	.long	.LASF106
	.byte	0x21
	.uleb128 0x2
	.long	.LASF107
	.byte	0x22
	.uleb128 0x2
	.long	.LASF108
	.byte	0x23
	.uleb128 0x2
	.long	.LASF109
	.byte	0x24
	.uleb128 0x2
	.long	.LASF110
	.byte	0x25
	.uleb128 0x2
	.long	.LASF111
	.byte	0x26
	.uleb128 0x2
	.long	.LASF112
	.byte	0x27
	.uleb128 0x2
	.long	.LASF113
	.byte	0x28
	.uleb128 0x2
	.long	.LASF114
	.byte	0x29
	.uleb128 0x2
	.long	.LASF115
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF116
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF117
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF118
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF119
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF120
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF121
	.byte	0x30
	.uleb128 0x2
	.long	.LASF122
	.byte	0x31
	.uleb128 0x2
	.long	.LASF123
	.byte	0x32
	.uleb128 0x2
	.long	.LASF124
	.byte	0x33
	.uleb128 0x2
	.long	.LASF125
	.byte	0x34
	.uleb128 0x2
	.long	.LASF126
	.byte	0x35
	.uleb128 0x2
	.long	.LASF127
	.byte	0x36
	.uleb128 0x2
	.long	.LASF128
	.byte	0x37
	.uleb128 0x2
	.long	.LASF129
	.byte	0x38
	.uleb128 0x2
	.long	.LASF130
	.byte	0x39
	.uleb128 0x2
	.long	.LASF131
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF132
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF133
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF134
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF135
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF136
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF137
	.byte	0x40
	.uleb128 0x2
	.long	.LASF138
	.byte	0x41
	.uleb128 0x2
	.long	.LASF139
	.byte	0x42
	.uleb128 0x2
	.long	.LASF140
	.byte	0x43
	.uleb128 0x2
	.long	.LASF141
	.byte	0x44
	.uleb128 0x2
	.long	.LASF142
	.byte	0x45
	.uleb128 0x2
	.long	.LASF143
	.byte	0x46
	.uleb128 0x2
	.long	.LASF144
	.byte	0x47
	.uleb128 0x2
	.long	.LASF145
	.byte	0x48
	.uleb128 0x2
	.long	.LASF146
	.byte	0x49
	.uleb128 0x2
	.long	.LASF147
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF148
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF149
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF150
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF151
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF152
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF153
	.byte	0x50
	.uleb128 0x2
	.long	.LASF154
	.byte	0x51
	.uleb128 0x2
	.long	.LASF155
	.byte	0x52
	.uleb128 0x2
	.long	.LASF156
	.byte	0x53
	.uleb128 0x2
	.long	.LASF157
	.byte	0x54
	.uleb128 0x2
	.long	.LASF158
	.byte	0x55
	.uleb128 0x2
	.long	.LASF159
	.byte	0x56
	.uleb128 0x2
	.long	.LASF160
	.byte	0x57
	.uleb128 0x2
	.long	.LASF161
	.byte	0x58
	.uleb128 0x2
	.long	.LASF162
	.byte	0x59
	.uleb128 0x2
	.long	.LASF163
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF164
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF165
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF166
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF167
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF168
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF169
	.byte	0x60
	.uleb128 0x2
	.long	.LASF170
	.byte	0x61
	.uleb128 0x2
	.long	.LASF171
	.byte	0x62
	.uleb128 0x2
	.long	.LASF172
	.byte	0x63
	.uleb128 0x2
	.long	.LASF173
	.byte	0x64
	.uleb128 0x2
	.long	.LASF174
	.byte	0x65
	.uleb128 0x2
	.long	.LASF175
	.byte	0x66
	.uleb128 0x2
	.long	.LASF176
	.byte	0x67
	.uleb128 0x2
	.long	.LASF177
	.byte	0x68
	.uleb128 0x2
	.long	.LASF178
	.byte	0x69
	.uleb128 0x2
	.long	.LASF179
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF180
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF181
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF182
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF183
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF184
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF185
	.byte	0x70
	.uleb128 0x2
	.long	.LASF186
	.byte	0x71
	.uleb128 0x2
	.long	.LASF187
	.byte	0x72
	.uleb128 0x2
	.long	.LASF188
	.byte	0x73
	.uleb128 0x2
	.long	.LASF189
	.byte	0x74
	.uleb128 0x2
	.long	.LASF190
	.byte	0x75
	.uleb128 0x2
	.long	.LASF191
	.byte	0x76
	.uleb128 0x2
	.long	.LASF192
	.byte	0x77
	.uleb128 0x2
	.long	.LASF193
	.byte	0x78
	.uleb128 0x2
	.long	.LASF194
	.byte	0x79
	.uleb128 0x2
	.long	.LASF195
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF196
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF197
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF198
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF199
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF200
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF201
	.byte	0x80
	.uleb128 0x2
	.long	.LASF202
	.byte	0x81
	.uleb128 0x2
	.long	.LASF203
	.byte	0x82
	.uleb128 0x2
	.long	.LASF204
	.byte	0x83
	.uleb128 0x2
	.long	.LASF205
	.byte	0x84
	.uleb128 0x2
	.long	.LASF206
	.byte	0x85
	.uleb128 0x2
	.long	.LASF207
	.byte	0x86
	.uleb128 0x2
	.long	.LASF208
	.byte	0x87
	.uleb128 0x2
	.long	.LASF209
	.byte	0x88
	.uleb128 0x2
	.long	.LASF210
	.byte	0x89
	.uleb128 0x2
	.long	.LASF211
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF212
	.byte	0xa
	.byte	0xac
	.byte	0x3
	.long	0x3a1
	.uleb128 0xe
	.long	0x84
	.byte	0xa
	.byte	0xaf
	.byte	0x1
	.long	0x2081
	.uleb128 0x2
	.long	.LASF213
	.byte	0
	.uleb128 0x2
	.long	.LASF214
	.byte	0x1
	.uleb128 0x2
	.long	.LASF215
	.byte	0x2
	.uleb128 0x2
	.long	.LASF216
	.byte	0x3
	.uleb128 0x2
	.long	.LASF217
	.byte	0x4
	.uleb128 0x2
	.long	.LASF218
	.byte	0x5
	.uleb128 0x2
	.long	.LASF219
	.byte	0x6
	.uleb128 0x2
	.long	.LASF220
	.byte	0x7
	.uleb128 0x2
	.long	.LASF221
	.byte	0x8
	.uleb128 0x2
	.long	.LASF222
	.byte	0x9
	.uleb128 0x2
	.long	.LASF223
	.byte	0xa
	.uleb128 0x2
	.long	.LASF224
	.byte	0xb
	.uleb128 0x2
	.long	.LASF225
	.byte	0xc
	.uleb128 0x2
	.long	.LASF226
	.byte	0xd
	.uleb128 0x2
	.long	.LASF227
	.byte	0xe
	.uleb128 0x2
	.long	.LASF228
	.byte	0xf
	.uleb128 0x2
	.long	.LASF229
	.byte	0x10
	.uleb128 0x2
	.long	.LASF230
	.byte	0x11
	.uleb128 0x2
	.long	.LASF231
	.byte	0x12
	.uleb128 0x2
	.long	.LASF232
	.byte	0x13
	.uleb128 0x2
	.long	.LASF233
	.byte	0x14
	.uleb128 0x2
	.long	.LASF234
	.byte	0x15
	.uleb128 0x2
	.long	.LASF235
	.byte	0x16
	.uleb128 0x2
	.long	.LASF236
	.byte	0x17
	.uleb128 0x2
	.long	.LASF237
	.byte	0x18
	.uleb128 0x2
	.long	.LASF238
	.byte	0x19
	.uleb128 0x2
	.long	.LASF239
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF240
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF241
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF242
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF243
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF244
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF245
	.byte	0x20
	.uleb128 0x2
	.long	.LASF246
	.byte	0x21
	.uleb128 0x2
	.long	.LASF247
	.byte	0x22
	.uleb128 0x2
	.long	.LASF248
	.byte	0x23
	.uleb128 0x2
	.long	.LASF249
	.byte	0x24
	.uleb128 0x2
	.long	.LASF250
	.byte	0x25
	.uleb128 0x2
	.long	.LASF251
	.byte	0x26
	.uleb128 0x2
	.long	.LASF252
	.byte	0x27
	.uleb128 0x2
	.long	.LASF253
	.byte	0x28
	.uleb128 0x2
	.long	.LASF254
	.byte	0x29
	.uleb128 0x2
	.long	.LASF255
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF256
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF257
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF258
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF259
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF260
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF261
	.byte	0x30
	.uleb128 0x2
	.long	.LASF262
	.byte	0x31
	.uleb128 0x2
	.long	.LASF263
	.byte	0x32
	.uleb128 0x2
	.long	.LASF264
	.byte	0x33
	.uleb128 0x2
	.long	.LASF265
	.byte	0x34
	.uleb128 0x2
	.long	.LASF266
	.byte	0x35
	.uleb128 0x2
	.long	.LASF267
	.byte	0x36
	.uleb128 0x2
	.long	.LASF268
	.byte	0x37
	.uleb128 0x2
	.long	.LASF269
	.byte	0x38
	.uleb128 0x2
	.long	.LASF270
	.byte	0x39
	.uleb128 0x2
	.long	.LASF271
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF272
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF273
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF274
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF275
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF276
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF277
	.byte	0x40
	.uleb128 0x2
	.long	.LASF278
	.byte	0x41
	.uleb128 0x2
	.long	.LASF279
	.byte	0x42
	.uleb128 0x2
	.long	.LASF280
	.byte	0x43
	.uleb128 0x2
	.long	.LASF281
	.byte	0x44
	.uleb128 0x2
	.long	.LASF282
	.byte	0x45
	.uleb128 0x2
	.long	.LASF283
	.byte	0x46
	.uleb128 0x2
	.long	.LASF284
	.byte	0x47
	.uleb128 0x2
	.long	.LASF285
	.byte	0x48
	.uleb128 0x2
	.long	.LASF286
	.byte	0x49
	.uleb128 0x2
	.long	.LASF287
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF288
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF289
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF290
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF291
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF292
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF293
	.byte	0x50
	.uleb128 0x2
	.long	.LASF294
	.byte	0x51
	.uleb128 0x2
	.long	.LASF295
	.byte	0x52
	.uleb128 0x2
	.long	.LASF296
	.byte	0x53
	.uleb128 0x2
	.long	.LASF297
	.byte	0x54
	.uleb128 0x2
	.long	.LASF298
	.byte	0x55
	.uleb128 0x2
	.long	.LASF299
	.byte	0x56
	.uleb128 0x2
	.long	.LASF300
	.byte	0x57
	.uleb128 0x2
	.long	.LASF301
	.byte	0x58
	.uleb128 0x2
	.long	.LASF302
	.byte	0x59
	.uleb128 0x2
	.long	.LASF303
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF304
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF305
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF306
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF307
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF308
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF309
	.byte	0x60
	.uleb128 0x2
	.long	.LASF310
	.byte	0x61
	.uleb128 0x2
	.long	.LASF311
	.byte	0x62
	.uleb128 0x2
	.long	.LASF312
	.byte	0x63
	.uleb128 0x2
	.long	.LASF313
	.byte	0x64
	.uleb128 0x2
	.long	.LASF314
	.byte	0x65
	.uleb128 0x2
	.long	.LASF315
	.byte	0x66
	.uleb128 0x2
	.long	.LASF316
	.byte	0x67
	.uleb128 0x2
	.long	.LASF317
	.byte	0x68
	.uleb128 0x2
	.long	.LASF318
	.byte	0x69
	.uleb128 0x2
	.long	.LASF319
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF320
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF321
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF322
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF323
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF324
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF325
	.byte	0x70
	.uleb128 0x2
	.long	.LASF326
	.byte	0x71
	.uleb128 0x2
	.long	.LASF327
	.byte	0x72
	.uleb128 0x2
	.long	.LASF328
	.byte	0x73
	.uleb128 0x2
	.long	.LASF329
	.byte	0x74
	.uleb128 0x2
	.long	.LASF330
	.byte	0x75
	.uleb128 0x2
	.long	.LASF331
	.byte	0x76
	.uleb128 0x2
	.long	.LASF332
	.byte	0x77
	.uleb128 0x2
	.long	.LASF333
	.byte	0x78
	.uleb128 0x2
	.long	.LASF334
	.byte	0x79
	.uleb128 0x2
	.long	.LASF335
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF336
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF337
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF338
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF339
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF340
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF341
	.byte	0x80
	.uleb128 0x2
	.long	.LASF342
	.byte	0x81
	.uleb128 0x2
	.long	.LASF343
	.byte	0x82
	.uleb128 0x2
	.long	.LASF344
	.byte	0x83
	.uleb128 0x2
	.long	.LASF345
	.byte	0x84
	.uleb128 0x2
	.long	.LASF346
	.byte	0x85
	.uleb128 0x2
	.long	.LASF347
	.byte	0x86
	.uleb128 0x2
	.long	.LASF348
	.byte	0x87
	.uleb128 0x2
	.long	.LASF349
	.byte	0x88
	.uleb128 0x2
	.long	.LASF350
	.byte	0x89
	.uleb128 0x2
	.long	.LASF351
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF352
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF353
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF354
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF355
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF356
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF357
	.byte	0x90
	.uleb128 0x2
	.long	.LASF358
	.byte	0x91
	.uleb128 0x2
	.long	.LASF359
	.byte	0x92
	.uleb128 0x2
	.long	.LASF360
	.byte	0x93
	.uleb128 0x2
	.long	.LASF361
	.byte	0x94
	.uleb128 0x2
	.long	.LASF362
	.byte	0x95
	.uleb128 0x2
	.long	.LASF363
	.byte	0x96
	.uleb128 0x2
	.long	.LASF364
	.byte	0x97
	.uleb128 0x2
	.long	.LASF365
	.byte	0x98
	.uleb128 0x2
	.long	.LASF366
	.byte	0x99
	.uleb128 0x2
	.long	.LASF367
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF368
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF369
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF370
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF371
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF372
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF373
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF374
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF375
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF376
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF377
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF378
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF379
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF380
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF381
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF382
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF383
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF384
	.byte	0xab
	.uleb128 0x2
	.long	.LASF385
	.byte	0xac
	.uleb128 0x2
	.long	.LASF386
	.byte	0xad
	.uleb128 0x2
	.long	.LASF387
	.byte	0xae
	.uleb128 0x2
	.long	.LASF388
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF389
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF390
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF391
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF392
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF393
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF394
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF395
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF396
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF397
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF398
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF399
	.byte	0xba
	.uleb128 0x2
	.long	.LASF400
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF401
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF402
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF403
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF404
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF405
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF406
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF407
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF408
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF409
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF410
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF411
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF412
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF413
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF414
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF415
	.byte	0xca
	.uleb128 0x2
	.long	.LASF416
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF417
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF418
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF419
	.byte	0xce
	.uleb128 0x2
	.long	.LASF420
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF421
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF422
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF423
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF424
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF425
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF426
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF427
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF428
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF429
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF430
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF431
	.byte	0xda
	.uleb128 0x2
	.long	.LASF432
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF433
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF434
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF435
	.byte	0xde
	.uleb128 0x2
	.long	.LASF436
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF437
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF438
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF439
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF440
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF441
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF442
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF443
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF444
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF445
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF446
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF447
	.byte	0xea
	.uleb128 0x2
	.long	.LASF448
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF449
	.byte	0xec
	.uleb128 0x2
	.long	.LASF450
	.byte	0xed
	.uleb128 0x2
	.long	.LASF451
	.byte	0xee
	.uleb128 0x2
	.long	.LASF452
	.byte	0xef
	.uleb128 0x2
	.long	.LASF453
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF454
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF455
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF456
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF457
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF458
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF459
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF460
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF461
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF462
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF463
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF464
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF465
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF466
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF467
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF468
	.byte	0xff
	.uleb128 0x1
	.long	.LASF469
	.value	0x100
	.uleb128 0x1
	.long	.LASF470
	.value	0x101
	.uleb128 0x1
	.long	.LASF471
	.value	0x102
	.uleb128 0x1
	.long	.LASF472
	.value	0x103
	.uleb128 0x1
	.long	.LASF473
	.value	0x104
	.uleb128 0x1
	.long	.LASF474
	.value	0x105
	.uleb128 0x1
	.long	.LASF475
	.value	0x106
	.uleb128 0x1
	.long	.LASF476
	.value	0x107
	.uleb128 0x1
	.long	.LASF477
	.value	0x108
	.uleb128 0x1
	.long	.LASF478
	.value	0x109
	.uleb128 0x1
	.long	.LASF479
	.value	0x10a
	.uleb128 0x1
	.long	.LASF480
	.value	0x10b
	.uleb128 0x1
	.long	.LASF481
	.value	0x10c
	.uleb128 0x1
	.long	.LASF482
	.value	0x10d
	.uleb128 0x1
	.long	.LASF483
	.value	0x10e
	.uleb128 0x1
	.long	.LASF484
	.value	0x10f
	.uleb128 0x1
	.long	.LASF485
	.value	0x110
	.uleb128 0x1
	.long	.LASF486
	.value	0x111
	.uleb128 0x1
	.long	.LASF487
	.value	0x112
	.uleb128 0x1
	.long	.LASF488
	.value	0x113
	.uleb128 0x1
	.long	.LASF489
	.value	0x114
	.uleb128 0x1
	.long	.LASF490
	.value	0x115
	.uleb128 0x1
	.long	.LASF491
	.value	0x116
	.uleb128 0x1
	.long	.LASF492
	.value	0x117
	.uleb128 0x1
	.long	.LASF493
	.value	0x118
	.uleb128 0x1
	.long	.LASF494
	.value	0x119
	.uleb128 0x1
	.long	.LASF495
	.value	0x11a
	.uleb128 0x1
	.long	.LASF496
	.value	0x11b
	.uleb128 0x1
	.long	.LASF497
	.value	0x11c
	.uleb128 0x1
	.long	.LASF498
	.value	0x11d
	.uleb128 0x1
	.long	.LASF499
	.value	0x11e
	.uleb128 0x1
	.long	.LASF500
	.value	0x11f
	.uleb128 0x1
	.long	.LASF501
	.value	0x120
	.uleb128 0x1
	.long	.LASF502
	.value	0x121
	.uleb128 0x1
	.long	.LASF503
	.value	0x122
	.uleb128 0x1
	.long	.LASF504
	.value	0x123
	.uleb128 0x1
	.long	.LASF505
	.value	0x124
	.uleb128 0x1
	.long	.LASF506
	.value	0x125
	.uleb128 0x1
	.long	.LASF507
	.value	0x126
	.uleb128 0x1
	.long	.LASF508
	.value	0x127
	.uleb128 0x1
	.long	.LASF509
	.value	0x128
	.uleb128 0x1
	.long	.LASF510
	.value	0x129
	.uleb128 0x1
	.long	.LASF511
	.value	0x12a
	.uleb128 0x1
	.long	.LASF512
	.value	0x12b
	.uleb128 0x1
	.long	.LASF513
	.value	0x12c
	.uleb128 0x1
	.long	.LASF514
	.value	0x12d
	.uleb128 0x1
	.long	.LASF515
	.value	0x12e
	.uleb128 0x1
	.long	.LASF516
	.value	0x12f
	.uleb128 0x1
	.long	.LASF517
	.value	0x130
	.uleb128 0x1
	.long	.LASF518
	.value	0x131
	.uleb128 0x1
	.long	.LASF519
	.value	0x132
	.uleb128 0x1
	.long	.LASF520
	.value	0x133
	.uleb128 0x1
	.long	.LASF521
	.value	0x134
	.uleb128 0x1
	.long	.LASF522
	.value	0x135
	.uleb128 0x1
	.long	.LASF523
	.value	0x136
	.uleb128 0x1
	.long	.LASF524
	.value	0x137
	.uleb128 0x1
	.long	.LASF525
	.value	0x138
	.uleb128 0x1
	.long	.LASF526
	.value	0x139
	.uleb128 0x1
	.long	.LASF527
	.value	0x13a
	.uleb128 0x1
	.long	.LASF528
	.value	0x13b
	.uleb128 0x1
	.long	.LASF529
	.value	0x13c
	.uleb128 0x1
	.long	.LASF530
	.value	0x13d
	.uleb128 0x1
	.long	.LASF531
	.value	0x13e
	.uleb128 0x1
	.long	.LASF532
	.value	0x13f
	.uleb128 0x1
	.long	.LASF533
	.value	0x140
	.uleb128 0x1
	.long	.LASF534
	.value	0x141
	.uleb128 0x1
	.long	.LASF535
	.value	0x142
	.uleb128 0x1
	.long	.LASF536
	.value	0x143
	.uleb128 0x1
	.long	.LASF537
	.value	0x144
	.uleb128 0x1
	.long	.LASF538
	.value	0x145
	.uleb128 0x1
	.long	.LASF539
	.value	0x146
	.uleb128 0x1
	.long	.LASF540
	.value	0x147
	.uleb128 0x1
	.long	.LASF541
	.value	0x148
	.uleb128 0x1
	.long	.LASF542
	.value	0x149
	.uleb128 0x1
	.long	.LASF543
	.value	0x14a
	.uleb128 0x1
	.long	.LASF544
	.value	0x14b
	.uleb128 0x1
	.long	.LASF545
	.value	0x14c
	.uleb128 0x1
	.long	.LASF546
	.value	0x14d
	.uleb128 0x1
	.long	.LASF547
	.value	0x14e
	.uleb128 0x1
	.long	.LASF548
	.value	0x14f
	.uleb128 0x1
	.long	.LASF549
	.value	0x150
	.uleb128 0x1
	.long	.LASF550
	.value	0x151
	.uleb128 0x1
	.long	.LASF551
	.value	0x152
	.uleb128 0x1
	.long	.LASF552
	.value	0x153
	.uleb128 0x1
	.long	.LASF553
	.value	0x154
	.uleb128 0x1
	.long	.LASF554
	.value	0x155
	.uleb128 0x1
	.long	.LASF555
	.value	0x156
	.uleb128 0x1
	.long	.LASF556
	.value	0x157
	.uleb128 0x1
	.long	.LASF557
	.value	0x158
	.uleb128 0x1
	.long	.LASF558
	.value	0x159
	.uleb128 0x1
	.long	.LASF559
	.value	0x15a
	.uleb128 0x1
	.long	.LASF560
	.value	0x15b
	.uleb128 0x1
	.long	.LASF561
	.value	0x15c
	.uleb128 0x1
	.long	.LASF562
	.value	0x15d
	.uleb128 0x1
	.long	.LASF563
	.value	0x15e
	.uleb128 0x1
	.long	.LASF564
	.value	0x15f
	.uleb128 0x1
	.long	.LASF565
	.value	0x160
	.uleb128 0x1
	.long	.LASF566
	.value	0x161
	.uleb128 0x1
	.long	.LASF567
	.value	0x162
	.uleb128 0x1
	.long	.LASF568
	.value	0x163
	.uleb128 0x1
	.long	.LASF569
	.value	0x164
	.uleb128 0x1
	.long	.LASF570
	.value	0x165
	.uleb128 0x1
	.long	.LASF571
	.value	0x166
	.uleb128 0x1
	.long	.LASF572
	.value	0x167
	.uleb128 0x1
	.long	.LASF573
	.value	0x168
	.uleb128 0x1
	.long	.LASF574
	.value	0x169
	.uleb128 0x1
	.long	.LASF575
	.value	0x16a
	.uleb128 0x1
	.long	.LASF576
	.value	0x16b
	.uleb128 0x1
	.long	.LASF577
	.value	0x16c
	.uleb128 0x1
	.long	.LASF578
	.value	0x16d
	.uleb128 0x1
	.long	.LASF579
	.value	0x16e
	.uleb128 0x1
	.long	.LASF580
	.value	0x16f
	.uleb128 0x1
	.long	.LASF581
	.value	0x170
	.uleb128 0x1
	.long	.LASF582
	.value	0x171
	.uleb128 0x1
	.long	.LASF583
	.value	0x172
	.uleb128 0x1
	.long	.LASF584
	.value	0x173
	.uleb128 0x1
	.long	.LASF585
	.value	0x174
	.uleb128 0x1
	.long	.LASF586
	.value	0x175
	.uleb128 0x1
	.long	.LASF587
	.value	0x176
	.uleb128 0x1
	.long	.LASF588
	.value	0x177
	.uleb128 0x1
	.long	.LASF589
	.value	0x178
	.uleb128 0x1
	.long	.LASF590
	.value	0x179
	.uleb128 0x1
	.long	.LASF591
	.value	0x17a
	.uleb128 0x1
	.long	.LASF592
	.value	0x17b
	.uleb128 0x1
	.long	.LASF593
	.value	0x17c
	.uleb128 0x1
	.long	.LASF594
	.value	0x17d
	.uleb128 0x1
	.long	.LASF595
	.value	0x17e
	.uleb128 0x1
	.long	.LASF596
	.value	0x17f
	.uleb128 0x1
	.long	.LASF597
	.value	0x180
	.uleb128 0x1
	.long	.LASF598
	.value	0x181
	.uleb128 0x1
	.long	.LASF599
	.value	0x182
	.uleb128 0x1
	.long	.LASF600
	.value	0x183
	.uleb128 0x1
	.long	.LASF601
	.value	0x184
	.uleb128 0x1
	.long	.LASF602
	.value	0x185
	.uleb128 0x1
	.long	.LASF603
	.value	0x186
	.uleb128 0x1
	.long	.LASF604
	.value	0x187
	.uleb128 0x1
	.long	.LASF605
	.value	0x188
	.uleb128 0x1
	.long	.LASF606
	.value	0x189
	.uleb128 0x1
	.long	.LASF607
	.value	0x18a
	.uleb128 0x1
	.long	.LASF608
	.value	0x18b
	.uleb128 0x1
	.long	.LASF609
	.value	0x18c
	.uleb128 0x1
	.long	.LASF610
	.value	0x18d
	.uleb128 0x1
	.long	.LASF611
	.value	0x18e
	.uleb128 0x1
	.long	.LASF612
	.value	0x18f
	.uleb128 0x1
	.long	.LASF613
	.value	0x190
	.uleb128 0x1
	.long	.LASF614
	.value	0x191
	.uleb128 0x1
	.long	.LASF615
	.value	0x192
	.uleb128 0x1
	.long	.LASF616
	.value	0x193
	.uleb128 0x1
	.long	.LASF617
	.value	0x194
	.uleb128 0x1
	.long	.LASF618
	.value	0x195
	.uleb128 0x1
	.long	.LASF619
	.value	0x196
	.uleb128 0x1
	.long	.LASF620
	.value	0x197
	.uleb128 0x1
	.long	.LASF621
	.value	0x198
	.uleb128 0x1
	.long	.LASF622
	.value	0x199
	.uleb128 0x1
	.long	.LASF623
	.value	0x19a
	.uleb128 0x1
	.long	.LASF624
	.value	0x19b
	.uleb128 0x1
	.long	.LASF625
	.value	0x19c
	.uleb128 0x1
	.long	.LASF626
	.value	0x19d
	.uleb128 0x1
	.long	.LASF627
	.value	0x19e
	.uleb128 0x1
	.long	.LASF628
	.value	0x19f
	.uleb128 0x1
	.long	.LASF629
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF630
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF631
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF632
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF633
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF634
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF635
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF636
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF637
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF638
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF639
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF640
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF641
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF642
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF643
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF644
	.value	0x1af
	.uleb128 0x1
	.long	.LASF645
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF646
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF647
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF648
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF649
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF650
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF651
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF652
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF653
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF654
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF655
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF656
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF657
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF658
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF659
	.value	0x1be
	.uleb128 0x1
	.long	.LASF660
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF661
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF662
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF663
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF664
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF665
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF666
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF667
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF668
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF669
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF670
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF671
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF672
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF673
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF674
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF675
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF676
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF677
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF678
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF679
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF680
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF681
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF682
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF683
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF684
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF685
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF686
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF687
	.value	0x1da
	.uleb128 0x1
	.long	.LASF688
	.value	0x1db
	.uleb128 0x1
	.long	.LASF689
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF690
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF691
	.value	0x1de
	.uleb128 0x1
	.long	.LASF692
	.value	0x1df
	.uleb128 0x1
	.long	.LASF693
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF694
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF695
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF696
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF697
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF698
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF699
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF700
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF701
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF702
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF703
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF704
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF705
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF706
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF707
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF708
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF709
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF710
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF711
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF712
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF713
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF714
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF715
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF716
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF717
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF718
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF719
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF720
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF721
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF722
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF723
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF724
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF725
	.value	0x200
	.uleb128 0x1
	.long	.LASF726
	.value	0x201
	.uleb128 0x1
	.long	.LASF727
	.value	0x202
	.uleb128 0x1
	.long	.LASF728
	.value	0x203
	.uleb128 0x1
	.long	.LASF729
	.value	0x204
	.uleb128 0x1
	.long	.LASF730
	.value	0x205
	.uleb128 0x1
	.long	.LASF731
	.value	0x206
	.uleb128 0x1
	.long	.LASF732
	.value	0x207
	.uleb128 0x1
	.long	.LASF733
	.value	0x208
	.uleb128 0x1
	.long	.LASF734
	.value	0x209
	.uleb128 0x1
	.long	.LASF735
	.value	0x20a
	.uleb128 0x1
	.long	.LASF736
	.value	0x20b
	.uleb128 0x1
	.long	.LASF737
	.value	0x20c
	.uleb128 0x1
	.long	.LASF738
	.value	0x20d
	.uleb128 0x1
	.long	.LASF739
	.value	0x20e
	.uleb128 0x1
	.long	.LASF740
	.value	0x20f
	.uleb128 0x1
	.long	.LASF741
	.value	0x210
	.uleb128 0x1
	.long	.LASF742
	.value	0x211
	.uleb128 0x1
	.long	.LASF743
	.value	0x212
	.uleb128 0x1
	.long	.LASF744
	.value	0x213
	.uleb128 0x1
	.long	.LASF745
	.value	0x214
	.uleb128 0x1
	.long	.LASF746
	.value	0x215
	.uleb128 0x1
	.long	.LASF747
	.value	0x216
	.uleb128 0x1
	.long	.LASF748
	.value	0x217
	.uleb128 0x1
	.long	.LASF749
	.value	0x218
	.uleb128 0x1
	.long	.LASF750
	.value	0x219
	.uleb128 0x1
	.long	.LASF751
	.value	0x21a
	.uleb128 0x1
	.long	.LASF752
	.value	0x21b
	.uleb128 0x1
	.long	.LASF753
	.value	0x21c
	.uleb128 0x1
	.long	.LASF754
	.value	0x21d
	.uleb128 0x1
	.long	.LASF755
	.value	0x21e
	.uleb128 0x1
	.long	.LASF756
	.value	0x21f
	.uleb128 0x1
	.long	.LASF757
	.value	0x220
	.uleb128 0x1
	.long	.LASF758
	.value	0x221
	.uleb128 0x1
	.long	.LASF759
	.value	0x222
	.uleb128 0x1
	.long	.LASF760
	.value	0x223
	.uleb128 0x1
	.long	.LASF761
	.value	0x224
	.uleb128 0x1
	.long	.LASF762
	.value	0x225
	.uleb128 0x1
	.long	.LASF763
	.value	0x226
	.uleb128 0x1
	.long	.LASF764
	.value	0x227
	.uleb128 0x1
	.long	.LASF765
	.value	0x228
	.uleb128 0x1
	.long	.LASF766
	.value	0x229
	.uleb128 0x1
	.long	.LASF767
	.value	0x22a
	.uleb128 0x1
	.long	.LASF768
	.value	0x22b
	.uleb128 0x1
	.long	.LASF769
	.value	0x22c
	.uleb128 0x1
	.long	.LASF770
	.value	0x22d
	.uleb128 0x1
	.long	.LASF771
	.value	0x22e
	.uleb128 0x1
	.long	.LASF772
	.value	0x22f
	.uleb128 0x1
	.long	.LASF773
	.value	0x230
	.uleb128 0x1
	.long	.LASF774
	.value	0x231
	.uleb128 0x1
	.long	.LASF775
	.value	0x232
	.uleb128 0x1
	.long	.LASF776
	.value	0x233
	.uleb128 0x1
	.long	.LASF777
	.value	0x234
	.uleb128 0x1
	.long	.LASF778
	.value	0x235
	.uleb128 0x1
	.long	.LASF779
	.value	0x236
	.uleb128 0x1
	.long	.LASF780
	.value	0x237
	.uleb128 0x1
	.long	.LASF781
	.value	0x238
	.uleb128 0x1
	.long	.LASF782
	.value	0x239
	.uleb128 0x1
	.long	.LASF783
	.value	0x23a
	.uleb128 0x1
	.long	.LASF784
	.value	0x23b
	.uleb128 0x1
	.long	.LASF785
	.value	0x23c
	.uleb128 0x1
	.long	.LASF786
	.value	0x23d
	.uleb128 0x1
	.long	.LASF787
	.value	0x23e
	.uleb128 0x1
	.long	.LASF788
	.value	0x23f
	.uleb128 0x1
	.long	.LASF789
	.value	0x240
	.uleb128 0x1
	.long	.LASF790
	.value	0x241
	.uleb128 0x1
	.long	.LASF791
	.value	0x242
	.uleb128 0x1
	.long	.LASF792
	.value	0x243
	.uleb128 0x1
	.long	.LASF793
	.value	0x244
	.uleb128 0x1
	.long	.LASF794
	.value	0x245
	.uleb128 0x1
	.long	.LASF795
	.value	0x246
	.uleb128 0x1
	.long	.LASF796
	.value	0x247
	.uleb128 0x1
	.long	.LASF797
	.value	0x248
	.uleb128 0x1
	.long	.LASF798
	.value	0x249
	.uleb128 0x1
	.long	.LASF799
	.value	0x24a
	.uleb128 0x1
	.long	.LASF800
	.value	0x24b
	.uleb128 0x1
	.long	.LASF801
	.value	0x24c
	.uleb128 0x1
	.long	.LASF802
	.value	0x24d
	.uleb128 0x1
	.long	.LASF803
	.value	0x24e
	.uleb128 0x1
	.long	.LASF804
	.value	0x24f
	.uleb128 0x1
	.long	.LASF805
	.value	0x250
	.uleb128 0x1
	.long	.LASF806
	.value	0x251
	.uleb128 0x1
	.long	.LASF807
	.value	0x252
	.uleb128 0x1
	.long	.LASF808
	.value	0x253
	.uleb128 0x1
	.long	.LASF809
	.value	0x254
	.uleb128 0x1
	.long	.LASF810
	.value	0x255
	.uleb128 0x1
	.long	.LASF811
	.value	0x256
	.uleb128 0x1
	.long	.LASF812
	.value	0x257
	.uleb128 0x1
	.long	.LASF813
	.value	0x258
	.uleb128 0x1
	.long	.LASF814
	.value	0x259
	.uleb128 0x1
	.long	.LASF815
	.value	0x25a
	.uleb128 0x1
	.long	.LASF816
	.value	0x25b
	.uleb128 0x1
	.long	.LASF817
	.value	0x25c
	.uleb128 0x1
	.long	.LASF818
	.value	0x25d
	.uleb128 0x1
	.long	.LASF819
	.value	0x25e
	.uleb128 0x1
	.long	.LASF820
	.value	0x25f
	.uleb128 0x1
	.long	.LASF821
	.value	0x260
	.uleb128 0x1
	.long	.LASF822
	.value	0x261
	.uleb128 0x1
	.long	.LASF823
	.value	0x262
	.uleb128 0x1
	.long	.LASF824
	.value	0x263
	.uleb128 0x1
	.long	.LASF825
	.value	0x264
	.uleb128 0x1
	.long	.LASF826
	.value	0x265
	.uleb128 0x1
	.long	.LASF827
	.value	0x266
	.uleb128 0x1
	.long	.LASF828
	.value	0x267
	.uleb128 0x1
	.long	.LASF829
	.value	0x268
	.uleb128 0x1
	.long	.LASF830
	.value	0x269
	.uleb128 0x1
	.long	.LASF831
	.value	0x26a
	.uleb128 0x1
	.long	.LASF832
	.value	0x26b
	.uleb128 0x1
	.long	.LASF833
	.value	0x26c
	.uleb128 0x1
	.long	.LASF834
	.value	0x26d
	.uleb128 0x1
	.long	.LASF835
	.value	0x26e
	.uleb128 0x1
	.long	.LASF836
	.value	0x26f
	.uleb128 0x1
	.long	.LASF837
	.value	0x270
	.uleb128 0x1
	.long	.LASF838
	.value	0x271
	.uleb128 0x1
	.long	.LASF839
	.value	0x272
	.uleb128 0x1
	.long	.LASF840
	.value	0x273
	.uleb128 0x1
	.long	.LASF841
	.value	0x274
	.uleb128 0x1
	.long	.LASF842
	.value	0x275
	.uleb128 0x1
	.long	.LASF843
	.value	0x276
	.uleb128 0x1
	.long	.LASF844
	.value	0x277
	.uleb128 0x1
	.long	.LASF845
	.value	0x278
	.uleb128 0x1
	.long	.LASF846
	.value	0x279
	.uleb128 0x1
	.long	.LASF847
	.value	0x27a
	.uleb128 0x1
	.long	.LASF848
	.value	0x27b
	.uleb128 0x1
	.long	.LASF849
	.value	0x27c
	.uleb128 0x1
	.long	.LASF850
	.value	0x27d
	.uleb128 0x1
	.long	.LASF851
	.value	0x27e
	.uleb128 0x1
	.long	.LASF852
	.value	0x27f
	.uleb128 0x1
	.long	.LASF853
	.value	0x280
	.uleb128 0x1
	.long	.LASF854
	.value	0x281
	.uleb128 0x1
	.long	.LASF855
	.value	0x282
	.uleb128 0x1
	.long	.LASF856
	.value	0x283
	.uleb128 0x1
	.long	.LASF857
	.value	0x284
	.uleb128 0x1
	.long	.LASF858
	.value	0x285
	.uleb128 0x1
	.long	.LASF859
	.value	0x286
	.uleb128 0x1
	.long	.LASF860
	.value	0x287
	.uleb128 0x1
	.long	.LASF861
	.value	0x288
	.uleb128 0x1
	.long	.LASF862
	.value	0x289
	.uleb128 0x1
	.long	.LASF863
	.value	0x28a
	.uleb128 0x1
	.long	.LASF864
	.value	0x28b
	.uleb128 0x1
	.long	.LASF865
	.value	0x28c
	.uleb128 0x1
	.long	.LASF866
	.value	0x28d
	.uleb128 0x1
	.long	.LASF867
	.value	0x28e
	.uleb128 0x1
	.long	.LASF868
	.value	0x28f
	.uleb128 0x1
	.long	.LASF869
	.value	0x290
	.uleb128 0x1
	.long	.LASF870
	.value	0x291
	.uleb128 0x1
	.long	.LASF871
	.value	0x292
	.uleb128 0x1
	.long	.LASF872
	.value	0x293
	.uleb128 0x1
	.long	.LASF873
	.value	0x294
	.uleb128 0x1
	.long	.LASF874
	.value	0x295
	.uleb128 0x1
	.long	.LASF875
	.value	0x296
	.uleb128 0x1
	.long	.LASF876
	.value	0x297
	.uleb128 0x1
	.long	.LASF877
	.value	0x298
	.uleb128 0x1
	.long	.LASF878
	.value	0x299
	.uleb128 0x1
	.long	.LASF879
	.value	0x29a
	.uleb128 0x1
	.long	.LASF880
	.value	0x29b
	.uleb128 0x1
	.long	.LASF881
	.value	0x29c
	.uleb128 0x1
	.long	.LASF882
	.value	0x29d
	.uleb128 0x1
	.long	.LASF883
	.value	0x29e
	.uleb128 0x1
	.long	.LASF884
	.value	0x29f
	.uleb128 0x1
	.long	.LASF885
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF886
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF887
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF888
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF889
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF890
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF891
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF892
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF893
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF894
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF895
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF896
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF897
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF898
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF899
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF900
	.value	0x2af
	.uleb128 0x1
	.long	.LASF901
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF902
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF903
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF904
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF905
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF906
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF907
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF908
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF909
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF910
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF911
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF912
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF913
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF914
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF915
	.value	0x2be
	.uleb128 0x1
	.long	.LASF916
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF917
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF918
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF919
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF920
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF921
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF922
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF923
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF924
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF925
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF926
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF927
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF928
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF929
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF930
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF931
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF932
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF933
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF934
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF935
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF936
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF937
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF938
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF939
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF940
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF941
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF942
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF943
	.value	0x2da
	.uleb128 0x1
	.long	.LASF944
	.value	0x2db
	.uleb128 0x1
	.long	.LASF945
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF946
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF947
	.value	0x2de
	.uleb128 0x1
	.long	.LASF948
	.value	0x2df
	.uleb128 0x1
	.long	.LASF949
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF950
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF951
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF952
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF953
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF954
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF955
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF956
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF957
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF958
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF959
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF960
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF961
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF962
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF963
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF964
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF965
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF966
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF967
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF968
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF969
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF970
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF971
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF972
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF973
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF974
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF975
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF976
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF977
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF978
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF979
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF980
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF981
	.value	0x300
	.uleb128 0x1
	.long	.LASF982
	.value	0x301
	.uleb128 0x1
	.long	.LASF983
	.value	0x302
	.uleb128 0x1
	.long	.LASF984
	.value	0x303
	.uleb128 0x1
	.long	.LASF985
	.value	0x304
	.uleb128 0x1
	.long	.LASF986
	.value	0x305
	.uleb128 0x1
	.long	.LASF987
	.value	0x306
	.uleb128 0x1
	.long	.LASF988
	.value	0x307
	.uleb128 0x1
	.long	.LASF989
	.value	0x308
	.uleb128 0x1
	.long	.LASF990
	.value	0x309
	.uleb128 0x1
	.long	.LASF991
	.value	0x30a
	.uleb128 0x1
	.long	.LASF992
	.value	0x30b
	.uleb128 0x1
	.long	.LASF993
	.value	0x30c
	.uleb128 0x1
	.long	.LASF994
	.value	0x30d
	.uleb128 0x1
	.long	.LASF995
	.value	0x30e
	.uleb128 0x1
	.long	.LASF996
	.value	0x30f
	.uleb128 0x1
	.long	.LASF997
	.value	0x310
	.uleb128 0x1
	.long	.LASF998
	.value	0x311
	.uleb128 0x1
	.long	.LASF999
	.value	0x312
	.uleb128 0x1
	.long	.LASF1000
	.value	0x313
	.uleb128 0x1
	.long	.LASF1001
	.value	0x314
	.uleb128 0x1
	.long	.LASF1002
	.value	0x315
	.uleb128 0x1
	.long	.LASF1003
	.value	0x316
	.uleb128 0x1
	.long	.LASF1004
	.value	0x317
	.uleb128 0x1
	.long	.LASF1005
	.value	0x318
	.uleb128 0x1
	.long	.LASF1006
	.value	0x319
	.uleb128 0x1
	.long	.LASF1007
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1008
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1009
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1010
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1011
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1012
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1013
	.value	0x320
	.uleb128 0x1
	.long	.LASF1014
	.value	0x321
	.uleb128 0x1
	.long	.LASF1015
	.value	0x322
	.uleb128 0x1
	.long	.LASF1016
	.value	0x323
	.uleb128 0x1
	.long	.LASF1017
	.value	0x324
	.uleb128 0x1
	.long	.LASF1018
	.value	0x325
	.uleb128 0x1
	.long	.LASF1019
	.value	0x326
	.uleb128 0x1
	.long	.LASF1020
	.value	0x327
	.uleb128 0x1
	.long	.LASF1021
	.value	0x328
	.uleb128 0x1
	.long	.LASF1022
	.value	0x329
	.uleb128 0x1
	.long	.LASF1023
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1024
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1025
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1026
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1027
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1028
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1029
	.value	0x330
	.uleb128 0x1
	.long	.LASF1030
	.value	0x331
	.uleb128 0x1
	.long	.LASF1031
	.value	0x332
	.uleb128 0x1
	.long	.LASF1032
	.value	0x333
	.uleb128 0x1
	.long	.LASF1033
	.value	0x334
	.uleb128 0x1
	.long	.LASF1034
	.value	0x335
	.uleb128 0x1
	.long	.LASF1035
	.value	0x336
	.uleb128 0x1
	.long	.LASF1036
	.value	0x337
	.uleb128 0x1
	.long	.LASF1037
	.value	0x338
	.uleb128 0x1
	.long	.LASF1038
	.value	0x339
	.uleb128 0x1
	.long	.LASF1039
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1040
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1041
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1042
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1043
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1044
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1045
	.value	0x340
	.uleb128 0x1
	.long	.LASF1046
	.value	0x341
	.uleb128 0x1
	.long	.LASF1047
	.value	0x342
	.uleb128 0x1
	.long	.LASF1048
	.value	0x343
	.uleb128 0x1
	.long	.LASF1049
	.value	0x344
	.uleb128 0x1
	.long	.LASF1050
	.value	0x345
	.uleb128 0x1
	.long	.LASF1051
	.value	0x346
	.uleb128 0x1
	.long	.LASF1052
	.value	0x347
	.uleb128 0x1
	.long	.LASF1053
	.value	0x348
	.uleb128 0x1
	.long	.LASF1054
	.value	0x349
	.uleb128 0x1
	.long	.LASF1055
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1056
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1057
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1058
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1059
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1060
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1061
	.value	0x350
	.uleb128 0x1
	.long	.LASF1062
	.value	0x351
	.uleb128 0x1
	.long	.LASF1063
	.value	0x352
	.uleb128 0x1
	.long	.LASF1064
	.value	0x353
	.uleb128 0x1
	.long	.LASF1065
	.value	0x354
	.uleb128 0x1
	.long	.LASF1066
	.value	0x355
	.uleb128 0x1
	.long	.LASF1067
	.value	0x356
	.uleb128 0x1
	.long	.LASF1068
	.value	0x357
	.uleb128 0x1
	.long	.LASF1069
	.value	0x358
	.uleb128 0x1
	.long	.LASF1070
	.value	0x359
	.uleb128 0x1
	.long	.LASF1071
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1072
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1073
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1074
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1075
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1076
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1077
	.value	0x360
	.uleb128 0x1
	.long	.LASF1078
	.value	0x361
	.uleb128 0x1
	.long	.LASF1079
	.value	0x362
	.uleb128 0x1
	.long	.LASF1080
	.value	0x363
	.uleb128 0x1
	.long	.LASF1081
	.value	0x364
	.uleb128 0x1
	.long	.LASF1082
	.value	0x365
	.uleb128 0x1
	.long	.LASF1083
	.value	0x366
	.uleb128 0x1
	.long	.LASF1084
	.value	0x367
	.uleb128 0x1
	.long	.LASF1085
	.value	0x368
	.uleb128 0x1
	.long	.LASF1086
	.value	0x369
	.uleb128 0x1
	.long	.LASF1087
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1088
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1089
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1090
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1091
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1092
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1093
	.value	0x370
	.uleb128 0x1
	.long	.LASF1094
	.value	0x371
	.uleb128 0x1
	.long	.LASF1095
	.value	0x372
	.uleb128 0x1
	.long	.LASF1096
	.value	0x373
	.uleb128 0x1
	.long	.LASF1097
	.value	0x374
	.uleb128 0x1
	.long	.LASF1098
	.value	0x375
	.uleb128 0x1
	.long	.LASF1099
	.value	0x376
	.uleb128 0x1
	.long	.LASF1100
	.value	0x377
	.uleb128 0x1
	.long	.LASF1101
	.value	0x378
	.uleb128 0x1
	.long	.LASF1102
	.value	0x379
	.uleb128 0x1
	.long	.LASF1103
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1104
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1105
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1106
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1107
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1108
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1109
	.value	0x380
	.uleb128 0x1
	.long	.LASF1110
	.value	0x381
	.uleb128 0x1
	.long	.LASF1111
	.value	0x382
	.uleb128 0x1
	.long	.LASF1112
	.value	0x383
	.uleb128 0x1
	.long	.LASF1113
	.value	0x384
	.uleb128 0x1
	.long	.LASF1114
	.value	0x385
	.uleb128 0x1
	.long	.LASF1115
	.value	0x386
	.uleb128 0x1
	.long	.LASF1116
	.value	0x387
	.uleb128 0x1
	.long	.LASF1117
	.value	0x388
	.uleb128 0x1
	.long	.LASF1118
	.value	0x389
	.uleb128 0x1
	.long	.LASF1119
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1120
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1121
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1122
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1123
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1124
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1125
	.value	0x390
	.uleb128 0x1
	.long	.LASF1126
	.value	0x391
	.uleb128 0x1
	.long	.LASF1127
	.value	0x392
	.uleb128 0x1
	.long	.LASF1128
	.value	0x393
	.uleb128 0x1
	.long	.LASF1129
	.value	0x394
	.uleb128 0x1
	.long	.LASF1130
	.value	0x395
	.uleb128 0x1
	.long	.LASF1131
	.value	0x396
	.uleb128 0x1
	.long	.LASF1132
	.value	0x397
	.uleb128 0x1
	.long	.LASF1133
	.value	0x398
	.uleb128 0x1
	.long	.LASF1134
	.value	0x399
	.uleb128 0x1
	.long	.LASF1135
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1136
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1137
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1138
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1139
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1140
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3c7
	.byte	0
	.uleb128 0xb
	.long	.LASF1181
	.byte	0xa
	.value	0x478
	.long	0x6fc
	.uleb128 0x14
	.byte	0x38
	.byte	0xa
	.value	0x47b
	.long	0x20f9
	.uleb128 0x4
	.long	.LASF1182
	.byte	0xa
	.value	0x47d
	.byte	0xf
	.long	0x6f0
	.byte	0
	.uleb128 0x4
	.long	.LASF1183
	.byte	0xa
	.value	0x47e
	.byte	0xa
	.long	0x137
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1184
	.byte	0xa
	.value	0x47f
	.byte	0xa
	.long	0x137
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1185
	.byte	0xa
	.value	0x481
	.byte	0xf
	.long	0x2e2
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1186
	.byte	0xa
	.value	0x482
	.byte	0x10
	.long	0x2081
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1187
	.byte	0xa
	.value	0x483
	.byte	0xa
	.long	0x137
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1188
	.byte	0xa
	.value	0x483
	.byte	0x11
	.long	0x137
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF1189
	.byte	0xa
	.value	0x484
	.long	0x208d
	.uleb128 0xc
	.long	0x20f9
	.long	0x2116
	.uleb128 0x2a
	.long	0x43
	.value	0x3c6
	.byte	0
	.uleb128 0x18
	.long	.LASF1353
	.byte	0xa
	.value	0x486
	.byte	0x10
	.long	0x2105
	.uleb128 0x13
	.long	0x84
	.byte	0xa
	.value	0x48b
	.byte	0xe
	.long	0x246d
	.uleb128 0x2
	.long	.LASF1190
	.byte	0
	.uleb128 0x2
	.long	.LASF1191
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1192
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1193
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1194
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1198
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1199
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1200
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1201
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1202
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1203
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1204
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1205
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x89
	.byte	0
	.uleb128 0xb
	.long	.LASF1328
	.byte	0xa
	.value	0x517
	.long	0x2123
	.uleb128 0x14
	.byte	0x5c
	.byte	0xa
	.value	0x519
	.long	0x25c5
	.uleb128 0x4
	.long	.LASF1329
	.byte	0xa
	.value	0x51b
	.byte	0x9
	.long	0x114
	.byte	0
	.uleb128 0x4
	.long	.LASF1330
	.byte	0xa
	.value	0x51c
	.byte	0x9
	.long	0x114
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1331
	.byte	0xa
	.value	0x51d
	.byte	0x9
	.long	0x114
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1332
	.byte	0xa
	.value	0x51e
	.byte	0x9
	.long	0x114
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1333
	.byte	0xa
	.value	0x51f
	.byte	0x9
	.long	0x114
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1334
	.byte	0xa
	.value	0x520
	.byte	0x9
	.long	0x114
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1335
	.byte	0xa
	.value	0x521
	.byte	0x9
	.long	0x114
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1336
	.byte	0xa
	.value	0x522
	.byte	0x9
	.long	0x114
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1337
	.byte	0xa
	.value	0x523
	.byte	0x9
	.long	0x114
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1338
	.byte	0xa
	.value	0x524
	.byte	0x9
	.long	0x114
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1339
	.byte	0xa
	.value	0x525
	.byte	0x9
	.long	0x114
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1340
	.byte	0xa
	.value	0x526
	.byte	0x9
	.long	0x114
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1341
	.byte	0xa
	.value	0x527
	.byte	0x9
	.long	0x114
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1342
	.byte	0xa
	.value	0x528
	.byte	0x9
	.long	0x114
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1343
	.byte	0xa
	.value	0x529
	.byte	0x9
	.long	0x114
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1344
	.byte	0xa
	.value	0x52a
	.byte	0x9
	.long	0x114
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1345
	.byte	0xa
	.value	0x52b
	.byte	0x9
	.long	0x114
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1346
	.byte	0xa
	.value	0x52c
	.byte	0x9
	.long	0x114
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1347
	.byte	0xa
	.value	0x52d
	.byte	0x9
	.long	0x114
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1348
	.byte	0xa
	.value	0x52e
	.byte	0x9
	.long	0x114
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1349
	.byte	0xa
	.value	0x52f
	.byte	0x9
	.long	0x114
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1350
	.byte	0xa
	.value	0x530
	.byte	0x9
	.long	0x114
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1351
	.byte	0xa
	.value	0x531
	.byte	0x9
	.long	0x114
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF1352
	.byte	0xa
	.value	0x533
	.long	0x2479
	.uleb128 0xc
	.long	0x25c5
	.long	0x25e1
	.uleb128 0xd
	.long	0x43
	.byte	0x88
	.byte	0
	.uleb128 0x18
	.long	.LASF1354
	.byte	0xa
	.value	0x535
	.byte	0x13
	.long	0x25d1
	.uleb128 0x16
	.long	.LASF1356
	.byte	0xe0
	.byte	0xb
	.byte	0xcf
	.long	0x27c5
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xb
	.byte	0xd2
	.byte	0x10
	.long	0x333
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0xb
	.byte	0xd5
	.byte	0xe
	.long	0x151
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0xb
	.byte	0xd6
	.byte	0xe
	.long	0x151
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0xb
	.byte	0xd7
	.byte	0xe
	.long	0x151
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xb
	.byte	0xda
	.byte	0x14
	.long	0x27c5
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xb
	.byte	0xdb
	.byte	0x14
	.long	0x27c5
	.byte	0x30
	.uleb128 0x3
	.long	.LASF69
	.byte	0xb
	.byte	0xde
	.byte	0xe
	.long	0x15d
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1182
	.byte	0xb
	.byte	0xdf
	.byte	0x12
	.long	0x6f0
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1183
	.byte	0xb
	.byte	0xe0
	.byte	0xb
	.long	0x114
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1360
	.byte	0xb
	.byte	0xe4
	.byte	0x14
	.long	0x27c5
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xb
	.byte	0xe5
	.byte	0x14
	.long	0x27c5
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1362
	.byte	0xb
	.byte	0xe7
	.byte	0x19
	.long	0x27fe
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xb
	.byte	0xea
	.byte	0xe
	.long	0x151
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1364
	.byte	0xb
	.byte	0xeb
	.byte	0xe
	.long	0x151
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1345
	.byte	0xb
	.byte	0xee
	.byte	0xe
	.long	0x151
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1346
	.byte	0xb
	.byte	0xef
	.byte	0xe
	.long	0x151
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1365
	.byte	0xb
	.byte	0xf2
	.byte	0xe
	.long	0x151
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xb
	.byte	0xf3
	.byte	0xe
	.long	0x151
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xb
	.byte	0xf4
	.byte	0xe
	.long	0x151
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xb
	.byte	0xf7
	.byte	0xb
	.long	0x114
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF70
	.byte	0xb
	.byte	0xf9
	.byte	0x11
	.long	0x246d
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xb
	.byte	0xfa
	.byte	0x12
	.long	0x2803
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1184
	.byte	0xb
	.byte	0xfc
	.byte	0xb
	.long	0x114
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xb
	.byte	0xfd
	.byte	0xf
	.long	0x2808
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1350
	.byte	0xb
	.byte	0xfe
	.byte	0xb
	.long	0x114
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xb
	.byte	0xff
	.byte	0xb
	.long	0x114
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1372
	.byte	0xb
	.value	0x102
	.byte	0xb
	.long	0x114
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1373
	.byte	0xb
	.value	0x103
	.byte	0xb
	.long	0x114
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1374
	.byte	0xb
	.value	0x107
	.byte	0x14
	.long	0x27c5
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1334
	.byte	0xb
	.value	0x10b
	.byte	0xb
	.long	0x114
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1375
	.byte	0xb
	.value	0x10f
	.byte	0xb
	.long	0x114
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1376
	.byte	0xb
	.value	0x113
	.byte	0x16
	.long	0x29e2
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1377
	.byte	0xb
	.value	0x116
	.byte	0xb
	.long	0x114
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1378
	.byte	0xb
	.value	0x119
	.byte	0x11
	.long	0x395
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1379
	.byte	0xb
	.value	0x11c
	.byte	0x14
	.long	0x27c5
	.byte	0xd8
	.byte	0
	.uleb128 0x5
	.long	0x25ee
	.uleb128 0x16
	.long	.LASF1380
	.byte	0x10
	.byte	0xc
	.byte	0xe3
	.long	0x27fe
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xc
	.byte	0xe5
	.byte	0xf
	.long	0x2c7b
	.byte	0
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xc
	.byte	0xe6
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xc
	.byte	0xe7
	.byte	0xb
	.long	0x101
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x27ca
	.uleb128 0x5
	.long	0x25c5
	.uleb128 0x5
	.long	0x20f9
	.uleb128 0x2b
	.long	.LASF1384
	.value	0x140
	.byte	0xd
	.byte	0x53
	.byte	0x10
	.long	0x29e2
	.uleb128 0x8
	.string	"mo"
	.byte	0xd
	.byte	0x55
	.byte	0xe
	.long	0x2b3a
	.byte	0
	.uleb128 0x3
	.long	.LASF1385
	.byte	0xd
	.byte	0x56
	.byte	0x13
	.long	0x2d72
	.byte	0x8
	.uleb128 0x8
	.string	"cmd"
	.byte	0xd
	.byte	0x57
	.byte	0xf
	.long	0x108
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0x151
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xd
	.byte	0x5e
	.byte	0xe
	.long	0x151
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xd
	.byte	0x60
	.byte	0x16
	.long	0x151
	.byte	0x1c
	.uleb128 0x8
	.string	"bob"
	.byte	0xd
	.byte	0x62
	.byte	0x16
	.long	0x151
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xd
	.byte	0x66
	.byte	0xb
	.long	0x114
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xd
	.byte	0x67
	.byte	0xb
	.long	0x114
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x114
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x2d7e
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xd
	.byte	0x6d
	.byte	0xe
	.long	0x2d8e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xd
	.byte	0x6e
	.byte	0xe
	.long	0x8b
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xd
	.byte	0x71
	.byte	0xb
	.long	0x2b3f
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xd
	.byte	0x72
	.byte	0x12
	.long	0x1ef
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xd
	.byte	0x75
	.byte	0x12
	.long	0x1ef
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xd
	.byte	0x77
	.byte	0xe
	.long	0x2d9e
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xd
	.byte	0x78
	.byte	0xb
	.long	0x2b3f
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xd
	.byte	0x79
	.byte	0xb
	.long	0x2b3f
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xd
	.byte	0x7c
	.byte	0xb
	.long	0x114
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xd
	.byte	0x7d
	.byte	0xb
	.long	0x114
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xd
	.byte	0x81
	.byte	0xb
	.long	0x114
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x114
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xd
	.byte	0x87
	.byte	0xb
	.long	0x114
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xd
	.byte	0x88
	.byte	0xb
	.long	0x114
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xd
	.byte	0x89
	.byte	0xb
	.long	0x114
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xd
	.byte	0x8c
	.byte	0xc
	.long	0x13e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xd
	.byte	0x8f
	.byte	0xb
	.long	0x114
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xd
	.byte	0x90
	.byte	0xb
	.long	0x114
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xd
	.byte	0x93
	.byte	0xe
	.long	0x2b3a
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xd
	.byte	0x96
	.byte	0xb
	.long	0x114
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xd
	.byte	0x9a
	.byte	0xb
	.long	0x114
	.byte	0xfc
	.uleb128 0x19
	.long	.LASF1413
	.byte	0x9e
	.byte	0xb
	.long	0x114
	.value	0x100
	.uleb128 0x19
	.long	.LASF1414
	.byte	0xa1
	.byte	0xf
	.long	0x2dae
	.value	0x108
	.uleb128 0x19
	.long	.LASF1415
	.byte	0xa4
	.byte	0xe
	.long	0x8b
	.value	0x138
	.byte	0
	.uleb128 0x5
	.long	0x280d
	.uleb128 0xb
	.long	.LASF1416
	.byte	0xb
	.value	0x11e
	.long	0x25ee
	.uleb128 0x10
	.byte	0x8
	.byte	0xc
	.byte	0x47
	.long	0x2a12
	.uleb128 0x8
	.string	"x"
	.byte	0xc
	.byte	0x49
	.byte	0xd
	.long	0x151
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0xc
	.byte	0x4a
	.byte	0xd
	.long	0x151
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1417
	.byte	0xc
	.byte	0x4c
	.byte	0x3
	.long	0x29f3
	.uleb128 0x10
	.byte	0x28
	.byte	0xc
	.byte	0x58
	.long	0x2a55
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xc
	.byte	0x5a
	.byte	0x10
	.long	0x333
	.byte	0
	.uleb128 0x8
	.string	"x"
	.byte	0xc
	.byte	0x5b
	.byte	0xe
	.long	0x151
	.byte	0x18
	.uleb128 0x8
	.string	"y"
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x151
	.byte	0x1c
	.uleb128 0x8
	.string	"z"
	.byte	0xc
	.byte	0x5d
	.byte	0xe
	.long	0x151
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1418
	.byte	0xc
	.byte	0x5f
	.byte	0x3
	.long	0x2a1e
	.uleb128 0x10
	.byte	0x80
	.byte	0xc
	.byte	0x65
	.long	0x2b3a
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xc
	.byte	0x67
	.byte	0xd
	.long	0x151
	.byte	0
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xc
	.byte	0x68
	.byte	0xd
	.long	0x151
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xc
	.byte	0x6a
	.byte	0xb
	.long	0x101
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xc
	.byte	0x6b
	.byte	0xb
	.long	0x101
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x101
	.byte	0xe
	.uleb128 0x8
	.string	"tag"
	.byte	0xc
	.byte	0x6d
	.byte	0xb
	.long	0x101
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xc
	.byte	0x70
	.byte	0xa
	.long	0x114
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xc
	.byte	0x73
	.byte	0xd
	.long	0x2b3a
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xc
	.byte	0x76
	.byte	0xa
	.long	0x2b3f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xc
	.byte	0x79
	.byte	0x11
	.long	0x2a55
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xc
	.byte	0x7c
	.byte	0xa
	.long	0x114
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xc
	.byte	0x7f
	.byte	0xd
	.long	0x2b3a
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xc
	.byte	0x82
	.byte	0xb
	.long	0x127
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x114
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xc
	.byte	0x85
	.byte	0x15
	.long	0x2c0e
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.long	0x29e7
	.uleb128 0xc
	.long	0x114
	.long	0x2b4f
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF1433
	.byte	0x58
	.byte	0xc
	.byte	0xb3
	.long	0x2c0e
	.uleb128 0x8
	.string	"v1"
	.byte	0xc
	.byte	0xb6
	.byte	0xf
	.long	0x2cbd
	.byte	0
	.uleb128 0x8
	.string	"v2"
	.byte	0xc
	.byte	0xb7
	.byte	0xf
	.long	0x2cbd
	.byte	0x8
	.uleb128 0x8
	.string	"dx"
	.byte	0xc
	.byte	0xba
	.byte	0xd
	.long	0x151
	.byte	0x10
	.uleb128 0x8
	.string	"dy"
	.byte	0xc
	.byte	0xbb
	.byte	0xd
	.long	0x151
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1350
	.byte	0xc
	.byte	0xbe
	.byte	0xb
	.long	0x101
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xc
	.byte	0xbf
	.byte	0xb
	.long	0x101
	.byte	0x1a
	.uleb128 0x8
	.string	"tag"
	.byte	0xc
	.byte	0xc0
	.byte	0xb
	.long	0x101
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xc
	.byte	0xc4
	.byte	0xb
	.long	0x33f
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xc
	.byte	0xc8
	.byte	0xd
	.long	0x2cc2
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xc
	.byte	0xcb
	.byte	0x11
	.long	0x2cb1
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xc
	.byte	0xcf
	.byte	0xf
	.long	0x2c7b
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xc
	.byte	0xd0
	.byte	0xf
	.long	0x2c7b
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xc
	.byte	0xd3
	.byte	0xa
	.long	0x114
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xc
	.byte	0xd6
	.byte	0xb
	.long	0x127
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.long	0x2c13
	.uleb128 0x5
	.long	0x2b4f
	.uleb128 0x6
	.long	.LASF1439
	.byte	0xc
	.byte	0x87
	.byte	0x3
	.long	0x2a61
	.uleb128 0x10
	.byte	0x18
	.byte	0xc
	.byte	0x90
	.long	0x2c7b
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xc
	.byte	0x93
	.byte	0xd
	.long	0x151
	.byte	0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xc
	.byte	0x96
	.byte	0xd
	.long	0x151
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x101
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xc
	.byte	0x9b
	.byte	0xb
	.long	0x101
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xc
	.byte	0x9c
	.byte	0xb
	.long	0x101
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xc
	.byte	0x9f
	.byte	0xf
	.long	0x2c7b
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x2c18
	.uleb128 0x6
	.long	.LASF1445
	.byte	0xc
	.byte	0xa1
	.byte	0x3
	.long	0x2c24
	.uleb128 0xe
	.long	0x84
	.byte	0xc
	.byte	0xa9
	.byte	0x1
	.long	0x2cb1
	.uleb128 0x2
	.long	.LASF1446
	.byte	0
	.uleb128 0x2
	.long	.LASF1447
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1448
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1449
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1450
	.byte	0xc
	.byte	0xaf
	.byte	0x3
	.long	0x2c8c
	.uleb128 0x5
	.long	0x2a12
	.uleb128 0xc
	.long	0x151
	.long	0x2cd2
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1451
	.byte	0xc
	.byte	0xd7
	.byte	0x3
	.long	0x2b4f
	.uleb128 0x5
	.long	0x2c80
	.uleb128 0x5
	.long	0x2cd2
	.uleb128 0x5
	.long	0x101
	.uleb128 0xe
	.long	0x84
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x2d0c
	.uleb128 0x2
	.long	.LASF1452
	.byte	0
	.uleb128 0x2
	.long	.LASF1453
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1454
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x18
	.byte	0xe
	.byte	0x44
	.long	0x2d47
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xe
	.byte	0x46
	.byte	0xe
	.long	0x2808
	.byte	0
	.uleb128 0x3
	.long	.LASF1184
	.byte	0xe
	.byte	0x47
	.byte	0xa
	.long	0x114
	.byte	0x8
	.uleb128 0x8
	.string	"sx"
	.byte	0xe
	.byte	0x48
	.byte	0xd
	.long	0x151
	.byte	0xc
	.uleb128 0x8
	.string	"sy"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0x151
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1455
	.byte	0xe
	.byte	0x4b
	.byte	0x3
	.long	0x2d0c
	.uleb128 0xe
	.long	0x84
	.byte	0xd
	.byte	0x36
	.byte	0x1
	.long	0x2d72
	.uleb128 0x2
	.long	.LASF1456
	.byte	0
	.uleb128 0x2
	.long	.LASF1457
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1458
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1459
	.byte	0xd
	.byte	0x3e
	.byte	0x3
	.long	0x2d53
	.uleb128 0xc
	.long	0x114
	.long	0x2d8e
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x8b
	.long	0x2d9e
	.uleb128 0xd
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x8b
	.long	0x2dae
	.uleb128 0xd
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x2d47
	.long	0x2dbe
	.uleb128 0xd
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF1460
	.byte	0xd
	.byte	0xa6
	.byte	0x3
	.long	0x280d
	.uleb128 0x12
	.long	.LASF1461
	.byte	0xf
	.byte	0x54
	.byte	0xd
	.long	0x114
	.uleb128 0x12
	.long	.LASF1462
	.byte	0xf
	.byte	0x55
	.byte	0x12
	.long	0x2c7b
	.uleb128 0x12
	.long	.LASF1382
	.byte	0xf
	.byte	0x5d
	.byte	0xd
	.long	0x114
	.uleb128 0x12
	.long	.LASF1432
	.byte	0xf
	.byte	0x5e
	.byte	0x11
	.long	0x2ce3
	.uleb128 0x12
	.long	.LASF1463
	.byte	0xf
	.byte	0x61
	.byte	0x11
	.long	0x2cde
	.uleb128 0x5
	.long	0x2dbe
	.uleb128 0x5
	.long	0x97
	.uleb128 0x12
	.long	.LASF1464
	.byte	0x10
	.byte	0x46
	.byte	0x12
	.long	0x333
	.uleb128 0x10
	.byte	0x38
	.byte	0x11
	.byte	0x88
	.long	0x2e80
	.uleb128 0x3
	.long	.LASF1357
	.byte	0x11
	.byte	0x8a
	.byte	0xf
	.long	0x333
	.byte	0
	.uleb128 0x3
	.long	.LASF1381
	.byte	0x11
	.byte	0x8b
	.byte	0xf
	.long	0x2c7b
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1465
	.byte	0x11
	.byte	0x8c
	.byte	0xa
	.long	0x114
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1466
	.byte	0x11
	.byte	0x8d
	.byte	0xa
	.long	0x114
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1467
	.byte	0x11
	.byte	0x8e
	.byte	0xa
	.long	0x114
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1468
	.byte	0x11
	.byte	0x8f
	.byte	0xa
	.long	0x114
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1469
	.byte	0x11
	.byte	0x90
	.byte	0xa
	.long	0x114
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.long	.LASF1470
	.byte	0x11
	.byte	0x92
	.byte	0x3
	.long	0x2e1c
	.uleb128 0x10
	.byte	0x38
	.byte	0x11
	.byte	0x96
	.long	0x2ef0
	.uleb128 0x3
	.long	.LASF1357
	.byte	0x11
	.byte	0x98
	.byte	0xf
	.long	0x333
	.byte	0
	.uleb128 0x3
	.long	.LASF1381
	.byte	0x11
	.byte	0x99
	.byte	0xf
	.long	0x2c7b
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1465
	.byte	0x11
	.byte	0x9a
	.byte	0xa
	.long	0x114
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1467
	.byte	0x11
	.byte	0x9b
	.byte	0xa
	.long	0x114
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1466
	.byte	0x11
	.byte	0x9c
	.byte	0xa
	.long	0x114
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1471
	.byte	0x11
	.byte	0x9d
	.byte	0xa
	.long	0x114
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1472
	.byte	0x11
	.byte	0x9e
	.byte	0xa
	.long	0x114
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.long	.LASF1473
	.byte	0x11
	.byte	0xa0
	.byte	0x3
	.long	0x2e8c
	.uleb128 0x10
	.byte	0x30
	.byte	0x11
	.byte	0xa5
	.long	0x2f46
	.uleb128 0x3
	.long	.LASF1357
	.byte	0x11
	.byte	0xa7
	.byte	0xf
	.long	0x333
	.byte	0
	.uleb128 0x3
	.long	.LASF1381
	.byte	0x11
	.byte	0xa8
	.byte	0xf
	.long	0x2c7b
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1467
	.byte	0x11
	.byte	0xa9
	.byte	0xa
	.long	0x114
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1466
	.byte	0x11
	.byte	0xaa
	.byte	0xa
	.long	0x114
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1474
	.byte	0x11
	.byte	0xab
	.byte	0xa
	.long	0x114
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.long	.LASF1475
	.byte	0x11
	.byte	0xad
	.byte	0x3
	.long	0x2efc
	.uleb128 0x13
	.long	0x84
	.byte	0x11
	.value	0x107
	.byte	0x1
	.long	0x2f77
	.uleb128 0x2c
	.string	"up"
	.byte	0
	.uleb128 0x2
	.long	.LASF1476
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1477
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1478
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF1479
	.byte	0x11
	.value	0x10d
	.long	0x2f52
	.uleb128 0x13
	.long	0x84
	.byte	0x11
	.value	0x112
	.byte	0x1
	.long	0x2faf
	.uleb128 0x2
	.long	.LASF1480
	.byte	0
	.uleb128 0x2
	.long	.LASF1481
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1482
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1483
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1484
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF1485
	.byte	0x11
	.value	0x119
	.long	0x2f83
	.uleb128 0x14
	.byte	0x48
	.byte	0x11
	.value	0x11d
	.long	0x306b
	.uleb128 0x4
	.long	.LASF1357
	.byte	0x11
	.value	0x11f
	.byte	0xf
	.long	0x333
	.byte	0
	.uleb128 0x4
	.long	.LASF1381
	.byte	0x11
	.value	0x120
	.byte	0xf
	.long	0x2c7b
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x11
	.value	0x121
	.byte	0xd
	.long	0x151
	.byte	0x20
	.uleb128 0x1a
	.string	"low"
	.value	0x122
	.byte	0xd
	.long	0x151
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1486
	.byte	0x11
	.value	0x123
	.byte	0xd
	.long	0x151
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1487
	.byte	0x11
	.value	0x124
	.byte	0xa
	.long	0x114
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1465
	.byte	0x11
	.value	0x125
	.byte	0xa
	.long	0x114
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1488
	.byte	0x11
	.value	0x126
	.byte	0xc
	.long	0x2f77
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1489
	.byte	0x11
	.value	0x127
	.byte	0xc
	.long	0x2f77
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1490
	.byte	0x11
	.value	0x128
	.byte	0xd
	.long	0x8b
	.byte	0x3c
	.uleb128 0x1a
	.string	"tag"
	.value	0x129
	.byte	0xa
	.long	0x114
	.byte	0x40
	.uleb128 0x4
	.long	.LASF70
	.byte	0x11
	.value	0x12a
	.byte	0x10
	.long	0x2faf
	.byte	0x44
	.byte	0
	.uleb128 0xb
	.long	.LASF1491
	.byte	0x11
	.value	0x12c
	.long	0x2fbb
	.uleb128 0x5
	.long	0x306b
	.uleb128 0x13
	.long	0x84
	.byte	0x11
	.value	0x149
	.byte	0x1
	.long	0x30ba
	.uleb128 0x2
	.long	.LASF1492
	.byte	0
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1494
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1495
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1497
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1498
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1499
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	.LASF1500
	.byte	0x11
	.value	0x153
	.long	0x307c
	.uleb128 0x14
	.byte	0x40
	.byte	0x11
	.value	0x157
	.long	0x3140
	.uleb128 0x4
	.long	.LASF1357
	.byte	0x11
	.value	0x159
	.byte	0xf
	.long	0x333
	.byte	0
	.uleb128 0x4
	.long	.LASF70
	.byte	0x11
	.value	0x15a
	.byte	0xe
	.long	0x30ba
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1381
	.byte	0x11
	.value	0x15b
	.byte	0xf
	.long	0x2c7b
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1501
	.byte	0x11
	.value	0x15c
	.byte	0xd
	.long	0x151
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x11
	.value	0x15d
	.byte	0xd
	.long	0x151
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1474
	.byte	0x11
	.value	0x160
	.byte	0x15
	.long	0x114
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1502
	.byte	0x11
	.value	0x163
	.byte	0x15
	.long	0x114
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1503
	.byte	0x11
	.value	0x166
	.byte	0x15
	.long	0x114
	.byte	0x38
	.byte	0
	.uleb128 0xb
	.long	.LASF1504
	.byte	0x11
	.value	0x168
	.long	0x30c6
	.uleb128 0x13
	.long	0x84
	.byte	0x11
	.value	0x1e1
	.byte	0x1
	.long	0x317e
	.uleb128 0x2
	.long	.LASF1505
	.byte	0
	.uleb128 0x2
	.long	.LASF1506
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1508
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1509
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	.LASF1511
	.byte	0x11
	.value	0x1e9
	.long	0x314c
	.uleb128 0x14
	.byte	0x48
	.byte	0x11
	.value	0x1ed
	.long	0x321f
	.uleb128 0x4
	.long	.LASF1357
	.byte	0x11
	.value	0x1ef
	.byte	0xf
	.long	0x333
	.byte	0
	.uleb128 0x4
	.long	.LASF70
	.byte	0x11
	.value	0x1f0
	.byte	0xf
	.long	0x317e
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1381
	.byte	0x11
	.value	0x1f1
	.byte	0xf
	.long	0x2c7b
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1512
	.byte	0x11
	.value	0x1f2
	.byte	0xd
	.long	0x151
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1501
	.byte	0x11
	.value	0x1f3
	.byte	0xd
	.long	0x151
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x11
	.value	0x1f4
	.byte	0xd
	.long	0x151
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1490
	.byte	0x11
	.value	0x1f5
	.byte	0xd
	.long	0x8b
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1474
	.byte	0x11
	.value	0x1f8
	.byte	0xa
	.long	0x114
	.byte	0x38
	.uleb128 0x1a
	.string	"tag"
	.value	0x1fb
	.byte	0xa
	.long	0x114
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1513
	.byte	0x11
	.value	0x1fc
	.byte	0xa
	.long	0x114
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.long	.LASF1514
	.byte	0x11
	.value	0x1fe
	.long	0x318a
	.uleb128 0xc
	.long	0x323b
	.long	0x323b
	.uleb128 0xd
	.long	0x43
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.long	0x321f
	.uleb128 0x18
	.long	.LASF1515
	.byte	0x11
	.value	0x208
	.byte	0x13
	.long	0x322b
	.uleb128 0x13
	.long	0x84
	.byte	0x11
	.value	0x21a
	.byte	0x1
	.long	0x32a9
	.uleb128 0x2
	.long	.LASF1516
	.byte	0
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1522
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1523
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1526
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1527
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1528
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF1529
	.byte	0x11
	.value	0x23a
	.long	0x324d
	.uleb128 0x14
	.byte	0x40
	.byte	0x11
	.value	0x248
	.long	0x333d
	.uleb128 0x4
	.long	.LASF1357
	.byte	0x11
	.value	0x24a
	.byte	0xf
	.long	0x333
	.byte	0
	.uleb128 0x4
	.long	.LASF70
	.byte	0x11
	.value	0x24b
	.byte	0xd
	.long	0x32a9
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1490
	.byte	0x11
	.value	0x24c
	.byte	0xd
	.long	0x8b
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1381
	.byte	0x11
	.value	0x24d
	.byte	0xf
	.long	0x2c7b
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1474
	.byte	0x11
	.value	0x24e
	.byte	0xa
	.long	0x114
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1530
	.byte	0x11
	.value	0x24f
	.byte	0xa
	.long	0x114
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1531
	.byte	0x11
	.value	0x250
	.byte	0xb
	.long	0x101
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1532
	.byte	0x11
	.value	0x251
	.byte	0xd
	.long	0x151
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x11
	.value	0x252
	.byte	0xd
	.long	0x151
	.byte	0x38
	.byte	0
	.uleb128 0xb
	.long	.LASF1533
	.byte	0x11
	.value	0x254
	.long	0x32b5
	.uleb128 0xc
	.long	0x2dbe
	.long	0x3359
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF1534
	.byte	0x12
	.byte	0xd4
	.byte	0x11
	.long	0x3349
	.uleb128 0xc
	.long	0x8b
	.long	0x3375
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF1535
	.byte	0x12
	.byte	0xd7
	.byte	0x12
	.long	0x3365
	.uleb128 0x2d
	.long	.LASF1536
	.byte	0x1
	.byte	0x23
	.byte	0x8
	.long	0x2e0b
	.uleb128 0x9
	.byte	0x3
	.quad	save_p
	.uleb128 0xe
	.long	0x84
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	0x33b0
	.uleb128 0x2
	.long	.LASF1537
	.byte	0
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0x84
	.byte	0x1
	.value	0x14a
	.byte	0x1
	.long	0x33ee
	.uleb128 0x2
	.long	.LASF1539
	.byte	0
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x7
	.byte	0
	.uleb128 0x2e
	.long	.LASF1547
	.byte	0x1
	.value	0x154
	.byte	0x3
	.long	0x33b0
	.uleb128 0x9
	.byte	0x3
	.quad	specials_e
	.uleb128 0x15
	.long	.LASF1548
	.value	0x13f
	.byte	0x9
	.long	0x3417
	.uleb128 0x7
	.long	0x3077
	.byte	0
	.uleb128 0x15
	.long	.LASF1549
	.value	0x210
	.byte	0x9
	.long	0x3429
	.uleb128 0x7
	.long	0x323b
	.byte	0
	.uleb128 0x11
	.long	.LASF1550
	.byte	0x11
	.byte	0xc8
	.byte	0x9
	.long	0x343b
	.uleb128 0x7
	.long	0x343b
	.byte	0
	.uleb128 0x5
	.long	0x2f46
	.uleb128 0x11
	.long	.LASF1551
	.byte	0x11
	.byte	0xb8
	.byte	0x9
	.long	0x3452
	.uleb128 0x7
	.long	0x3452
	.byte	0
	.uleb128 0x5
	.long	0x2ef0
	.uleb128 0x11
	.long	.LASF1552
	.byte	0x11
	.byte	0xb6
	.byte	0x9
	.long	0x3469
	.uleb128 0x7
	.long	0x3469
	.byte	0
	.uleb128 0x5
	.long	0x2e80
	.uleb128 0x15
	.long	.LASF1553
	.value	0x137
	.byte	0x9
	.long	0x3480
	.uleb128 0x7
	.long	0x3077
	.byte	0
	.uleb128 0x15
	.long	.LASF1554
	.value	0x275
	.byte	0x6
	.long	0x3492
	.uleb128 0x7
	.long	0x3492
	.byte	0
	.uleb128 0x5
	.long	0x333d
	.uleb128 0x15
	.long	.LASF1555
	.value	0x17f
	.byte	0x9
	.long	0x34a9
	.uleb128 0x7
	.long	0x34a9
	.byte	0
	.uleb128 0x5
	.long	0x3140
	.uleb128 0x15
	.long	.LASF1556
	.value	0x20f
	.byte	0x9
	.long	0x34c0
	.uleb128 0x7
	.long	0x323b
	.byte	0
	.uleb128 0x11
	.long	.LASF1557
	.byte	0x13
	.byte	0x59
	.byte	0x6
	.long	0x34d3
	.uleb128 0x7
	.long	0x13e
	.uleb128 0x1d
	.byte	0
	.uleb128 0x11
	.long	.LASF1558
	.byte	0x10
	.byte	0x4a
	.byte	0x6
	.long	0x34e5
	.uleb128 0x7
	.long	0x34e5
	.byte	0
	.uleb128 0x5
	.long	0x333
	.uleb128 0x11
	.long	.LASF1559
	.byte	0x10
	.byte	0xc2
	.byte	0x6
	.long	0x34fc
	.uleb128 0x7
	.long	0x2b3a
	.byte	0
	.uleb128 0x20
	.long	.LASF1563
	.byte	0x14
	.byte	0x30
	.byte	0x7
	.long	0x127
	.long	0x351c
	.uleb128 0x7
	.long	0x114
	.uleb128 0x7
	.long	0x114
	.uleb128 0x7
	.long	0x127
	.byte	0
	.uleb128 0x2f
	.long	.LASF1585
	.byte	0x10
	.byte	0x49
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1560
	.byte	0x14
	.byte	0x31
	.byte	0x9
	.long	0x3536
	.uleb128 0x7
	.long	0x127
	.byte	0
	.uleb128 0x11
	.long	.LASF1561
	.byte	0x10
	.byte	0x74
	.byte	0x7
	.long	0x3548
	.uleb128 0x7
	.long	0x2b3a
	.byte	0
	.uleb128 0x11
	.long	.LASF1562
	.byte	0x10
	.byte	0x76
	.byte	0x7
	.long	0x355a
	.uleb128 0x7
	.long	0x2b3a
	.byte	0
	.uleb128 0x20
	.long	.LASF1564
	.byte	0x15
	.byte	0x2b
	.byte	0xe
	.long	0x127
	.long	0x357a
	.uleb128 0x7
	.long	0x127
	.uleb128 0x7
	.long	0x357a
	.uleb128 0x7
	.long	0x11b
	.byte	0
	.uleb128 0x5
	.long	0x357f
	.uleb128 0x30
	.uleb128 0x1b
	.long	.LASF1574
	.value	0x1db
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3618
	.uleb128 0x9
	.long	.LASF1566
	.value	0x1dd
	.byte	0xb
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x9
	.long	.LASF1567
	.value	0x1de
	.byte	0x11
	.long	0x323b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF1568
	.value	0x1df
	.byte	0x10
	.long	0x34a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF1569
	.value	0x1e0
	.byte	0x12
	.long	0x3492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF1570
	.value	0x1e1
	.byte	0xe
	.long	0x3077
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF1571
	.value	0x1e2
	.byte	0x13
	.long	0x3469
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF1572
	.value	0x1e3
	.byte	0x10
	.long	0x3452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.long	.LASF1573
	.value	0x1e4
	.byte	0xe
	.long	0x343b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1b
	.long	.LASF1575
	.value	0x163
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x36bd
	.uleb128 0x21
	.string	"th"
	.value	0x165
	.byte	0x11
	.long	0x34e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.long	.LASF1567
	.value	0x166
	.byte	0x11
	.long	0x323b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF1568
	.value	0x167
	.byte	0x10
	.long	0x34a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF1569
	.value	0x168
	.byte	0x12
	.long	0x3492
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF1570
	.value	0x169
	.byte	0xe
	.long	0x3077
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF1571
	.value	0x16a
	.byte	0x13
	.long	0x3469
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF1572
	.value	0x16b
	.byte	0x10
	.long	0x3452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.long	.LASF1573
	.value	0x16c
	.byte	0xe
	.long	0x343b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"i"
	.value	0x16d
	.byte	0xb
	.long	0x114
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1b
	.long	.LASF1576
	.value	0x10a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3717
	.uleb128 0x9
	.long	.LASF1566
	.value	0x10c
	.byte	0xb
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x9
	.long	.LASF1577
	.value	0x10d
	.byte	0x11
	.long	0x34e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF66
	.value	0x10e
	.byte	0x11
	.long	0x34e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF1578
	.value	0x10f
	.byte	0xe
	.long	0x2b3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF1579
	.byte	0xe8
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x374f
	.uleb128 0xa
	.string	"th"
	.byte	0xea
	.byte	0x11
	.long	0x34e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.long	.LASF1578
	.byte	0xeb
	.byte	0xe
	.long	0x2b3a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF1580
	.byte	0xa7
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x37ba
	.uleb128 0xa
	.string	"i"
	.byte	0xa9
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"j"
	.byte	0xaa
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.string	"sec"
	.byte	0xab
	.byte	0x10
	.long	0x2c7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"li"
	.byte	0xac
	.byte	0xe
	.long	0x2ce3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"si"
	.byte	0xad
	.byte	0xe
	.long	0x2cde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"get"
	.byte	0xae
	.byte	0xd
	.long	0x2ce8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF1581
	.byte	0x72
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3825
	.uleb128 0xa
	.string	"i"
	.byte	0x74
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"j"
	.byte	0x75
	.byte	0xb
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xa
	.string	"sec"
	.byte	0x76
	.byte	0x10
	.long	0x2c7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"li"
	.byte	0x77
	.byte	0xe
	.long	0x2ce3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"si"
	.byte	0x78
	.byte	0xe
	.long	0x2cde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"put"
	.byte	0x79
	.byte	0xd
	.long	0x2ce8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF1582
	.byte	0x4f
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x385a
	.uleb128 0xa
	.string	"i"
	.byte	0x51
	.byte	0xa
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"j"
	.byte	0x52
	.byte	0xa
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF1586
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"i"
	.byte	0x31
	.byte	0xa
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"j"
	.byte	0x32
	.byte	0xa
	.long	0x114
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF1583
	.byte	0x33
	.byte	0xf
	.long	0x2e06
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
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
.LASF850:
	.string	"S_BSPI_RUN3"
.LASF851:
	.string	"S_BSPI_RUN4"
.LASF852:
	.string	"S_BSPI_RUN5"
.LASF853:
	.string	"S_BSPI_RUN6"
.LASF854:
	.string	"S_BSPI_RUN7"
.LASF855:
	.string	"S_BSPI_RUN8"
.LASF856:
	.string	"S_BSPI_RUN9"
.LASF140:
	.string	"SPR_YSKU"
.LASF1410:
	.string	"attacker"
.LASF503:
	.string	"S_FIRE10"
.LASF504:
	.string	"S_FIRE11"
.LASF505:
	.string	"S_FIRE12"
.LASF506:
	.string	"S_FIRE13"
.LASF507:
	.string	"S_FIRE14"
.LASF508:
	.string	"S_FIRE15"
.LASF509:
	.string	"S_FIRE16"
.LASF510:
	.string	"S_FIRE17"
.LASF511:
	.string	"S_FIRE18"
.LASF512:
	.string	"S_FIRE19"
.LASF1324:
	.string	"MT_MISC84"
.LASF1257:
	.string	"MT_MISC20"
.LASF1071:
	.string	"S_MEGA2"
.LASF1072:
	.string	"S_MEGA3"
.LASF1073:
	.string	"S_MEGA4"
.LASF1261:
	.string	"MT_MISC24"
.LASF1262:
	.string	"MT_MISC25"
.LASF1264:
	.string	"MT_MISC26"
.LASF1265:
	.string	"MT_MISC27"
.LASF1266:
	.string	"MT_MISC28"
.LASF1269:
	.string	"MT_MISC29"
.LASF702:
	.string	"S_SARG_PAIN2"
.LASF1375:
	.string	"threshold"
.LASF34:
	.string	"wp_pistol"
.LASF181:
	.string	"SPR_COL1"
.LASF182:
	.string	"SPR_COL2"
.LASF183:
	.string	"SPR_COL3"
.LASF184:
	.string	"SPR_COL4"
.LASF193:
	.string	"SPR_COL5"
.LASF187:
	.string	"SPR_COL6"
.LASF513:
	.string	"S_FIRE20"
.LASF514:
	.string	"S_FIRE21"
.LASF515:
	.string	"S_FIRE22"
.LASF516:
	.string	"S_FIRE23"
.LASF517:
	.string	"S_FIRE24"
.LASF167:
	.string	"SPR_COLU"
.LASF519:
	.string	"S_FIRE26"
.LASF520:
	.string	"S_FIRE27"
.LASF521:
	.string	"S_FIRE28"
.LASF522:
	.string	"S_FIRE29"
.LASF1270:
	.string	"MT_MISC30"
.LASF1185:
	.string	"action"
.LASF1272:
	.string	"MT_MISC32"
.LASF1273:
	.string	"MT_MISC33"
.LASF864:
	.string	"S_BSPI_PAIN"
.LASF1275:
	.string	"MT_MISC35"
.LASF336:
	.string	"S_BFGEXP"
.LASF48:
	.string	"am_misl"
.LASF1278:
	.string	"MT_MISC38"
.LASF1279:
	.string	"MT_MISC39"
.LASF1507:
	.string	"lowerAndCrush"
.LASF1421:
	.string	"floorpic"
.LASF866:
	.string	"S_BSPI_DIE1"
.LASF1454:
	.string	"NUMPSPRITES"
.LASF871:
	.string	"S_BSPI_DIE6"
.LASF1448:
	.string	"ST_POSITIVE"
.LASF1386:
	.string	"viewz"
.LASF1442:
	.string	"toptexture"
.LASF762:
	.string	"S_BOSS_RAISE1"
.LASF763:
	.string	"S_BOSS_RAISE2"
.LASF1204:
	.string	"MT_HEAD"
.LASF764:
	.string	"S_BOSS_RAISE3"
.LASF523:
	.string	"S_FIRE30"
.LASF668:
	.string	"S_TROO_PAIN"
.LASF957:
	.string	"S_SSWV_DIE1"
.LASF767:
	.string	"S_BOSS_RAISE6"
.LASF959:
	.string	"S_SSWV_DIE3"
.LASF960:
	.string	"S_SSWV_DIE4"
.LASF961:
	.string	"S_SSWV_DIE5"
.LASF135:
	.string	"SPR_BKEY"
.LASF1470:
	.string	"lightflash_t"
.LASF779:
	.string	"S_BOS2_ATK1"
.LASF780:
	.string	"S_BOS2_ATK2"
.LASF781:
	.string	"S_BOS2_ATK3"
.LASF169:
	.string	"SPR_GOR1"
.LASF176:
	.string	"SPR_GOR2"
.LASF177:
	.string	"SPR_GOR3"
.LASF178:
	.string	"SPR_GOR4"
.LASF179:
	.string	"SPR_GOR5"
.LASF1282:
	.string	"MT_MISC42"
.LASF1283:
	.string	"MT_MISC43"
.LASF536:
	.string	"S_SKEL_RUN1"
.LASF537:
	.string	"S_SKEL_RUN2"
.LASF538:
	.string	"S_SKEL_RUN3"
.LASF539:
	.string	"S_SKEL_RUN4"
.LASF540:
	.string	"S_SKEL_RUN5"
.LASF541:
	.string	"S_SKEL_RUN6"
.LASF542:
	.string	"S_SKEL_RUN7"
.LASF543:
	.string	"S_SKEL_RUN8"
.LASF544:
	.string	"S_SKEL_RUN9"
.LASF37:
	.string	"wp_missile"
.LASF1022:
	.string	"S_BEXP2"
.LASF1332:
	.string	"seestate"
.LASF1539:
	.string	"tc_ceiling"
.LASF717:
	.string	"S_HEAD_ATK1"
.LASF718:
	.string	"S_HEAD_ATK2"
.LASF719:
	.string	"S_HEAD_ATK3"
.LASF1436:
	.string	"slopetype"
.LASF1579:
	.string	"P_ArchiveThinkers"
.LASF971:
	.string	"S_SSWV_RAISE1"
.LASF972:
	.string	"S_SSWV_RAISE2"
.LASF973:
	.string	"S_SSWV_RAISE3"
.LASF974:
	.string	"S_SSWV_RAISE4"
.LASF975:
	.string	"S_SSWV_RAISE5"
.LASF69:
	.string	"angle"
.LASF1199:
	.string	"MT_FATSHOT"
.LASF155:
	.string	"SPR_CELL"
.LASF156:
	.string	"SPR_CELP"
.LASF1137:
	.string	"S_HEARTCOL"
.LASF1382:
	.string	"numlines"
.LASF1054:
	.string	"S_MEDI"
.LASF1061:
	.string	"S_PINV"
.LASF1248:
	.string	"MT_INS"
.LASF1291:
	.string	"MT_MISC51"
.LASF1292:
	.string	"MT_MISC52"
.LASF1246:
	.string	"MT_INV"
.LASF1294:
	.string	"MT_MISC54"
.LASF1151:
	.string	"S_BTORCHSHRT"
.LASF272:
	.string	"S_MISSILEUP"
.LASF1297:
	.string	"MT_MISC57"
.LASF1298:
	.string	"MT_MISC58"
.LASF1299:
	.string	"MT_MISC59"
.LASF449:
	.string	"S_SPOS_RAISE1"
.LASF243:
	.string	"S_SGUNFLASH1"
.LASF244:
	.string	"S_SGUNFLASH2"
.LASF791:
	.string	"S_BOS2_RAISE1"
.LASF792:
	.string	"S_BOS2_RAISE2"
.LASF793:
	.string	"S_BOS2_RAISE3"
.LASF794:
	.string	"S_BOS2_RAISE4"
.LASF795:
	.string	"S_BOS2_RAISE5"
.LASF796:
	.string	"S_BOS2_RAISE6"
.LASF797:
	.string	"S_BOS2_RAISE7"
.LASF556:
	.string	"S_SKEL_PAIN"
.LASF1043:
	.string	"S_RKEY"
.LASF66:
	.string	"next"
.LASF1547:
	.string	"specials_e"
.LASF225:
	.string	"S_PISTOLUP"
.LASF911:
	.string	"S_CYBER_DIE8"
.LASF1441:
	.string	"rowoffset"
.LASF1300:
	.string	"MT_MISC60"
.LASF1301:
	.string	"MT_MISC61"
.LASF1302:
	.string	"MT_MISC62"
.LASF1303:
	.string	"MT_MISC63"
.LASF1304:
	.string	"MT_MISC64"
.LASF1305:
	.string	"MT_MISC65"
.LASF1306:
	.string	"MT_MISC66"
.LASF1307:
	.string	"MT_MISC67"
.LASF340:
	.string	"S_EXPLODE1"
.LASF341:
	.string	"S_EXPLODE2"
.LASF342:
	.string	"S_EXPLODE3"
.LASF531:
	.string	"S_TRACEEXP1"
.LASF532:
	.string	"S_TRACEEXP2"
.LASF533:
	.string	"S_TRACEEXP3"
.LASF919:
	.string	"S_PAIN_RUN5"
.LASF1021:
	.string	"S_BEXP"
.LASF920:
	.string	"S_PAIN_RUN6"
.LASF1411:
	.string	"extralight"
.LASF1459:
	.string	"playerstate_t"
.LASF1138:
	.string	"S_HEARTCOL2"
.LASF317:
	.string	"S_RBALLX1"
.LASF1346:
	.string	"height"
.LASF1231:
	.string	"MT_TELEPORTMAN"
.LASF1535:
	.string	"playeringame"
.LASF1310:
	.string	"MT_MISC70"
.LASF100:
	.string	"SPR_IFOG"
.LASF1312:
	.string	"MT_MISC72"
.LASF1313:
	.string	"MT_MISC73"
.LASF1314:
	.string	"MT_MISC74"
.LASF1315:
	.string	"MT_MISC75"
.LASF1316:
	.string	"MT_MISC76"
.LASF1144:
	.string	"S_GREENTORCH2"
.LASF1145:
	.string	"S_GREENTORCH3"
.LASF1146:
	.string	"S_GREENTORCH4"
.LASF1511:
	.string	"ceiling_e"
.LASF1555:
	.string	"T_VerticalDoor"
.LASF985:
	.string	"S_COMMKEEN9"
.LASF1497:
	.string	"blazeRaise"
.LASF634:
	.string	"S_CPOS_PAIN2"
.LASF857:
	.string	"S_BSPI_RUN10"
.LASF858:
	.string	"S_BSPI_RUN11"
.LASF859:
	.string	"S_BSPI_RUN12"
.LASF941:
	.string	"S_SSWV_RUN1"
.LASF942:
	.string	"S_SSWV_RUN2"
.LASF943:
	.string	"S_SSWV_RUN3"
.LASF944:
	.string	"S_SSWV_RUN4"
.LASF945:
	.string	"S_SSWV_RUN5"
.LASF946:
	.string	"S_SSWV_RUN6"
.LASF947:
	.string	"S_SSWV_RUN7"
.LASF948:
	.string	"S_SSWV_RUN8"
.LASF1126:
	.string	"S_SKULLCOL"
.LASF1198:
	.string	"MT_FATSO"
.LASF670:
	.string	"S_TROO_DIE1"
.LASF671:
	.string	"S_TROO_DIE2"
.LASF672:
	.string	"S_TROO_DIE3"
.LASF673:
	.string	"S_TROO_DIE4"
.LASF674:
	.string	"S_TROO_DIE5"
.LASF1051:
	.string	"S_YSKULL"
.LASF1052:
	.string	"S_YSKULL2"
.LASF153:
	.string	"SPR_ROCK"
.LASF1223:
	.string	"MT_ROCKET"
.LASF1321:
	.string	"MT_MISC81"
.LASF1322:
	.string	"MT_MISC82"
.LASF1323:
	.string	"MT_MISC83"
.LASF629:
	.string	"S_CPOS_ATK1"
.LASF630:
	.string	"S_CPOS_ATK2"
.LASF631:
	.string	"S_CPOS_ATK3"
.LASF632:
	.string	"S_CPOS_ATK4"
.LASF1190:
	.string	"MT_PLAYER"
.LASF165:
	.string	"SPR_SHOT"
.LASF358:
	.string	"S_IFOG2"
.LASF359:
	.string	"S_IFOG3"
.LASF360:
	.string	"S_IFOG4"
.LASF361:
	.string	"S_IFOG5"
.LASF94:
	.string	"SPR_PLSE"
.LASF86:
	.string	"SPR_PLSF"
.LASF85:
	.string	"SPR_PLSG"
.LASF754:
	.string	"S_BOSS_PAIN2"
.LASF454:
	.string	"S_VILE_STND"
.LASF982:
	.string	"S_COMMKEEN6"
.LASF983:
	.string	"S_COMMKEEN7"
.LASF1461:
	.string	"numsectors"
.LASF984:
	.string	"S_COMMKEEN8"
.LASF93:
	.string	"SPR_PLSS"
.LASF833:
	.string	"S_SPID_PAIN2"
.LASF1347:
	.string	"mass"
.LASF206:
	.string	"SPR_POB1"
.LASF207:
	.string	"SPR_POB2"
.LASF1524:
	.string	"raiseFloor24AndChange"
.LASF1055:
	.string	"S_SOUL"
.LASF1065:
	.string	"S_PSTR"
.LASF897:
	.string	"S_CYBER_ATK1"
.LASF898:
	.string	"S_CYBER_ATK2"
.LASF899:
	.string	"S_CYBER_ATK3"
.LASF900:
	.string	"S_CYBER_ATK4"
.LASF901:
	.string	"S_CYBER_ATK5"
.LASF902:
	.string	"S_CYBER_ATK6"
.LASF1564:
	.string	"memcpy"
.LASF1092:
	.string	"S_BFUG"
.LASF132:
	.string	"SPR_FCAN"
.LASF1451:
	.string	"line_t"
.LASF575:
	.string	"S_FATT_STND"
.LASF1012:
	.string	"S_BRAINEXPLODE1"
.LASF1013:
	.string	"S_BRAINEXPLODE2"
.LASF1014:
	.string	"S_BRAINEXPLODE3"
.LASF296:
	.string	"S_BFGUP"
.LASF137:
	.string	"SPR_YKEY"
.LASF683:
	.string	"S_TROO_RAISE1"
.LASF684:
	.string	"S_TROO_RAISE2"
.LASF685:
	.string	"S_TROO_RAISE3"
.LASF686:
	.string	"S_TROO_RAISE4"
.LASF687:
	.string	"S_TROO_RAISE5"
.LASF1096:
	.string	"S_PLAS"
.LASF978:
	.string	"S_COMMKEEN2"
.LASF979:
	.string	"S_COMMKEEN3"
.LASF980:
	.string	"S_COMMKEEN4"
.LASF981:
	.string	"S_COMMKEEN5"
.LASF362:
	.string	"S_PLAY"
.LASF928:
	.string	"S_PAIN_DIE2"
.LASF929:
	.string	"S_PAIN_DIE3"
.LASF930:
	.string	"S_PAIN_DIE4"
.LASF931:
	.string	"S_PAIN_DIE5"
.LASF932:
	.string	"S_PAIN_DIE6"
.LASF1201:
	.string	"MT_TROOP"
.LASF483:
	.string	"S_VILE_PAIN2"
.LASF611:
	.string	"S_FATT_RAISE1"
.LASF38:
	.string	"wp_plasma"
.LASF613:
	.string	"S_FATT_RAISE3"
.LASF614:
	.string	"S_FATT_RAISE4"
.LASF615:
	.string	"S_FATT_RAISE5"
.LASF616:
	.string	"S_FATT_RAISE6"
.LASF617:
	.string	"S_FATT_RAISE7"
.LASF618:
	.string	"S_FATT_RAISE8"
.LASF1464:
	.string	"thinkercap"
.LASF327:
	.string	"S_ROCKET"
.LASF1222:
	.string	"MT_HEADSHOT"
.LASF1431:
	.string	"linecount"
.LASF1434:
	.string	"sidenum"
.LASF880:
	.string	"S_ARACH_PLAZ"
.LASF1119:
	.string	"S_STALAGTITE"
.LASF721:
	.string	"S_HEAD_PAIN2"
.LASF722:
	.string	"S_HEAD_PAIN3"
.LASF8:
	.string	"byte"
.LASF31:
	.string	"it_redskull"
.LASF21:
	.string	"long int"
.LASF1475:
	.string	"glow_t"
.LASF1229:
	.string	"MT_TFOG"
.LASF430:
	.string	"S_SPOS_ATK1"
.LASF431:
	.string	"S_SPOS_ATK2"
.LASF432:
	.string	"S_SPOS_ATK3"
.LASF367:
	.string	"S_PLAY_ATK1"
.LASF368:
	.string	"S_PLAY_ATK2"
.LASF120:
	.string	"SPR_APLS"
.LASF1403:
	.string	"refire"
.LASF1148:
	.string	"S_REDTORCH2"
.LASF1149:
	.string	"S_REDTORCH3"
.LASF1150:
	.string	"S_REDTORCH4"
.LASF657:
	.string	"S_TROO_RUN1"
.LASF658:
	.string	"S_TROO_RUN2"
.LASF659:
	.string	"S_TROO_RUN3"
.LASF660:
	.string	"S_TROO_RUN4"
.LASF661:
	.string	"S_TROO_RUN5"
.LASF662:
	.string	"S_TROO_RUN6"
.LASF663:
	.string	"S_TROO_RUN7"
.LASF664:
	.string	"S_TROO_RUN8"
.LASF111:
	.string	"SPR_CPOS"
.LASF572:
	.string	"S_FATSHOTX1"
.LASF573:
	.string	"S_FATSHOTX2"
.LASF574:
	.string	"S_FATSHOTX3"
.LASF652:
	.string	"S_CPOS_RAISE5"
.LASF653:
	.string	"S_CPOS_RAISE6"
.LASF654:
	.string	"S_CPOS_RAISE7"
.LASF1485:
	.string	"plattype_e"
.LASF33:
	.string	"wp_fist"
.LASF1512:
	.string	"bottomheight"
.LASF1340:
	.string	"missilestate"
.LASF141:
	.string	"SPR_STIM"
.LASF1496:
	.string	"raiseIn5Mins"
.LASF688:
	.string	"S_SARG_STND"
.LASF913:
	.string	"S_CYBER_DIE10"
.LASF91:
	.string	"SPR_BAL1"
.LASF92:
	.string	"SPR_BAL2"
.LASF114:
	.string	"SPR_BAL7"
.LASF1369:
	.string	"info"
.LASF1107:
	.string	"S_HEADSONSTICK"
.LASF1364:
	.string	"ceilingz"
.LASF564:
	.string	"S_SKEL_RAISE1"
.LASF79:
	.string	"SPR_SHT2"
.LASF218:
	.string	"S_PUNCH1"
.LASF219:
	.string	"S_PUNCH2"
.LASF220:
	.string	"S_PUNCH3"
.LASF221:
	.string	"S_PUNCH4"
.LASF222:
	.string	"S_PUNCH5"
.LASF581:
	.string	"S_FATT_RUN5"
.LASF217:
	.string	"S_PUNCHUP"
.LASF1571:
	.string	"flash"
.LASF834:
	.string	"S_SPID_DIE1"
.LASF585:
	.string	"S_FATT_RUN9"
.LASF836:
	.string	"S_SPID_DIE3"
.LASF837:
	.string	"S_SPID_DIE4"
.LASF78:
	.string	"SPR_SHTF"
.LASF74:
	.string	"SPR_SHTG"
.LASF356:
	.string	"S_IFOG01"
.LASF357:
	.string	"S_IFOG02"
.LASF842:
	.string	"S_SPID_DIE9"
.LASF1553:
	.string	"T_PlatRaise"
.LASF1566:
	.string	"tclass"
.LASF1084:
	.string	"S_AMMO"
.LASF49:
	.string	"NUMAMMO"
.LASF915:
	.string	"S_PAIN_RUN1"
.LASF916:
	.string	"S_PAIN_RUN2"
.LASF917:
	.string	"S_PAIN_RUN3"
.LASF918:
	.string	"S_PAIN_RUN4"
.LASF200:
	.string	"SPR_HDB1"
.LASF201:
	.string	"SPR_HDB2"
.LASF202:
	.string	"SPR_HDB3"
.LASF203:
	.string	"SPR_HDB4"
.LASF204:
	.string	"SPR_HDB5"
.LASF205:
	.string	"SPR_HDB6"
.LASF1191:
	.string	"MT_POSSESSED"
.LASF1502:
	.string	"topwait"
.LASF250:
	.string	"S_DSGUN3"
.LASF251:
	.string	"S_DSGUN4"
.LASF1440:
	.string	"textureoffset"
.LASF70:
	.string	"type"
.LASF1541:
	.string	"tc_floor"
.LASF270:
	.string	"S_MISSILE"
.LASF1098:
	.string	"S_SHOT2"
.LASF1165:
	.string	"S_HANGTLOOKDN"
.LASF1372:
	.string	"movedir"
.LASF642:
	.string	"S_CPOS_XDIE1"
.LASF1487:
	.string	"wait"
.LASF63:
	.string	"actionf_t"
.LASF58:
	.string	"actionf_v"
.LASF161:
	.string	"SPR_MGUN"
.LASF1203:
	.string	"MT_SHADOWS"
.LASF545:
	.string	"S_SKEL_RUN10"
.LASF546:
	.string	"S_SKEL_RUN11"
.LASF547:
	.string	"S_SKEL_RUN12"
.LASF213:
	.string	"S_NULL"
.LASF755:
	.string	"S_BOSS_DIE1"
.LASF756:
	.string	"S_BOSS_DIE2"
.LASF757:
	.string	"S_BOSS_DIE3"
.LASF758:
	.string	"S_BOSS_DIE4"
.LASF759:
	.string	"S_BOSS_DIE5"
.LASF760:
	.string	"S_BOSS_DIE6"
.LASF761:
	.string	"S_BOSS_DIE7"
.LASF925:
	.string	"S_PAIN_PAIN"
.LASF294:
	.string	"S_BFG"
.LASF1338:
	.string	"painsound"
.LASF1573:
	.string	"glow"
.LASF1489:
	.string	"oldstatus"
.LASF1460:
	.string	"player_t"
.LASF1424:
	.string	"special"
.LASF940:
	.string	"S_SSWV_STND2"
.LASF162:
	.string	"SPR_CSAW"
.LASF1075:
	.string	"S_PMAP"
.LASF1081:
	.string	"S_PVIS"
.LASF295:
	.string	"S_BFGDOWN"
.LASF1215:
	.string	"MT_BOSSBRAIN"
.LASF108:
	.string	"SPR_SKEL"
.LASF290:
	.string	"S_PLASMA1"
.LASF291:
	.string	"S_PLASMA2"
.LASF1155:
	.string	"S_GTORCHSHRT"
.LASF1486:
	.string	"high"
.LASF1383:
	.string	"firstline"
.LASF1089:
	.string	"S_SHEL"
.LASF846:
	.string	"S_BSPI_STND2"
.LASF9:
	.string	"unsigned char"
.LASF106:
	.string	"SPR_FATB"
.LASF1578:
	.string	"mobj"
.LASF1585:
	.string	"P_InitThinkers"
.LASF211:
	.string	"NUMSPRITES"
.LASF329:
	.string	"S_BFGSHOT2"
.LASF110:
	.string	"SPR_FATT"
.LASF1056:
	.string	"S_SOUL2"
.LASF1057:
	.string	"S_SOUL3"
.LASF1058:
	.string	"S_SOUL4"
.LASF1059:
	.string	"S_SOUL5"
.LASF1060:
	.string	"S_SOUL6"
.LASF816:
	.string	"S_SPID_RUN1"
.LASF817:
	.string	"S_SPID_RUN2"
.LASF818:
	.string	"S_SPID_RUN3"
.LASF819:
	.string	"S_SPID_RUN4"
.LASF820:
	.string	"S_SPID_RUN5"
.LASF821:
	.string	"S_SPID_RUN6"
.LASF822:
	.string	"S_SPID_RUN7"
.LASF823:
	.string	"S_SPID_RUN8"
.LASF22:
	.string	"float"
.LASF1023:
	.string	"S_BEXP3"
.LASF1024:
	.string	"S_BEXP4"
.LASF1581:
	.string	"P_ArchiveWorld"
.LASF1112:
	.string	"S_DEADSTICK"
.LASF1412:
	.string	"fixedcolormap"
.LASF1397:
	.string	"weaponowned"
.LASF1232:
	.string	"MT_EXTRABFG"
.LASF402:
	.string	"S_POSS_DIE1"
.LASF403:
	.string	"S_POSS_DIE2"
.LASF404:
	.string	"S_POSS_DIE3"
.LASF405:
	.string	"S_POSS_DIE4"
.LASF406:
	.string	"S_POSS_DIE5"
.LASF232:
	.string	"S_SGUNDOWN"
.LASF81:
	.string	"SPR_CHGF"
.LASF80:
	.string	"SPR_CHGG"
.LASF1567:
	.string	"ceiling"
.LASF625:
	.string	"S_CPOS_RUN5"
.LASF884:
	.string	"S_ARACH_PLEX3"
.LASF626:
	.string	"S_CPOS_RUN6"
.LASF886:
	.string	"S_ARACH_PLEX5"
.LASF627:
	.string	"S_CPOS_RUN7"
.LASF1374:
	.string	"target"
.LASF191:
	.string	"SPR_CEYE"
.LASF1519:
	.string	"raiseFloor"
.LASF1446:
	.string	"ST_HORIZONTAL"
.LASF933:
	.string	"S_PAIN_RAISE1"
.LASF934:
	.string	"S_PAIN_RAISE2"
.LASF935:
	.string	"S_PAIN_RAISE3"
.LASF936:
	.string	"S_PAIN_RAISE4"
.LASF937:
	.string	"S_PAIN_RAISE5"
.LASF570:
	.string	"S_FATSHOT1"
.LASF571:
	.string	"S_FATSHOT2"
.LASF1447:
	.string	"ST_VERTICAL"
.LASF148:
	.string	"SPR_SUIT"
.LASF798:
	.string	"S_SKULL_STND"
.LASF1513:
	.string	"olddirection"
.LASF832:
	.string	"S_SPID_PAIN"
.LASF1327:
	.string	"NUMMOBJTYPES"
.LASF130:
	.string	"SPR_BAR1"
.LASF1445:
	.string	"side_t"
.LASF245:
	.string	"S_DSGUN"
.LASF1124:
	.string	"S_CANDLESTIK"
.LASF55:
	.string	"pw_allmap"
.LASF1180:
	.string	"NUMSTATES"
.LASF824:
	.string	"S_SPID_RUN9"
.LASF310:
	.string	"S_TBALL1"
.LASF311:
	.string	"S_TBALL2"
.LASF524:
	.string	"S_SMOKE1"
.LASF525:
	.string	"S_SMOKE2"
.LASF526:
	.string	"S_SMOKE3"
.LASF527:
	.string	"S_SMOKE4"
.LASF528:
	.string	"S_SMOKE5"
.LASF747:
	.string	"S_BOSS_RUN6"
.LASF748:
	.string	"S_BOSS_RUN7"
.LASF749:
	.string	"S_BOSS_RUN8"
.LASF113:
	.string	"SPR_HEAD"
.LASF1361:
	.string	"bprev"
.LASF174:
	.string	"SPR_POL1"
.LASF170:
	.string	"SPR_POL2"
.LASF173:
	.string	"SPR_POL3"
.LASF172:
	.string	"SPR_POL4"
.LASF171:
	.string	"SPR_POL5"
.LASF175:
	.string	"SPR_POL6"
.LASF1019:
	.string	"S_BAR1"
.LASF1479:
	.string	"plat_e"
.LASF1353:
	.string	"states"
.LASF1233:
	.string	"MT_MISC0"
.LASF1105:
	.string	"S_DEADTORSO"
.LASF1501:
	.string	"topheight"
.LASF1491:
	.string	"plat_t"
.LASF247:
	.string	"S_DSGUNUP"
.LASF1330:
	.string	"spawnstate"
.LASF1498:
	.string	"blazeOpen"
.LASF1558:
	.string	"P_AddThinker"
.LASF1543:
	.string	"tc_flash"
.LASF656:
	.string	"S_TROO_STND2"
.LASF1530:
	.string	"newspecial"
.LASF1176:
	.string	"S_TECH2LAMP"
.LASF1219:
	.string	"MT_SPAWNFIRE"
.LASF1484:
	.string	"blazeDWUS"
.LASF1194:
	.string	"MT_FIRE"
.LASF1495:
	.string	"open"
.LASF1186:
	.string	"nextstate"
.LASF1569:
	.string	"floor"
.LASF753:
	.string	"S_BOSS_PAIN"
.LASF124:
	.string	"SPR_SSWV"
.LASF315:
	.string	"S_RBALL1"
.LASF316:
	.string	"S_RBALL2"
.LASF1120:
	.string	"S_TALLGRNCOL"
.LASF1377:
	.string	"lastlook"
.LASF1463:
	.string	"sides"
.LASF1443:
	.string	"bottomtexture"
.LASF1109:
	.string	"S_HEADONASTICK"
.LASF389:
	.string	"S_POSS_RUN1"
.LASF331:
	.string	"S_BFGLAND2"
.LASF332:
	.string	"S_BFGLAND3"
.LASF333:
	.string	"S_BFGLAND4"
.LASF334:
	.string	"S_BFGLAND5"
.LASF335:
	.string	"S_BFGLAND6"
.LASF395:
	.string	"S_POSS_RUN7"
.LASF396:
	.string	"S_POSS_RUN8"
.LASF378:
	.string	"S_PLAY_XDIE1"
.LASF379:
	.string	"S_PLAY_XDIE2"
.LASF380:
	.string	"S_PLAY_XDIE3"
.LASF381:
	.string	"S_PLAY_XDIE4"
.LASF382:
	.string	"S_PLAY_XDIE5"
.LASF383:
	.string	"S_PLAY_XDIE6"
.LASF384:
	.string	"S_PLAY_XDIE7"
.LASF385:
	.string	"S_PLAY_XDIE8"
.LASF386:
	.string	"S_PLAY_XDIE9"
.LASF784:
	.string	"S_BOS2_DIE1"
.LASF785:
	.string	"S_BOS2_DIE2"
.LASF786:
	.string	"S_BOS2_DIE3"
.LASF787:
	.string	"S_BOS2_DIE4"
.LASF788:
	.string	"S_BOS2_DIE5"
.LASF789:
	.string	"S_BOS2_DIE6"
.LASF790:
	.string	"S_BOS2_DIE7"
.LASF1350:
	.string	"flags"
.LASF710:
	.string	"S_SARG_RAISE2"
.LASF711:
	.string	"S_SARG_RAISE3"
.LASF354:
	.string	"S_TFOG10"
.LASF712:
	.string	"S_SARG_RAISE4"
.LASF407:
	.string	"S_POSS_XDIE1"
.LASF408:
	.string	"S_POSS_XDIE2"
.LASF409:
	.string	"S_POSS_XDIE3"
.LASF410:
	.string	"S_POSS_XDIE4"
.LASF411:
	.string	"S_POSS_XDIE5"
.LASF412:
	.string	"S_POSS_XDIE6"
.LASF413:
	.string	"S_POSS_XDIE7"
.LASF45:
	.string	"am_clip"
.LASF415:
	.string	"S_POSS_XDIE9"
.LASF1108:
	.string	"S_GIBS"
.LASF723:
	.string	"S_HEAD_DIE1"
.LASF724:
	.string	"S_HEAD_DIE2"
.LASF725:
	.string	"S_HEAD_DIE3"
.LASF726:
	.string	"S_HEAD_DIE4"
.LASF727:
	.string	"S_HEAD_DIE5"
.LASF728:
	.string	"S_HEAD_DIE6"
.LASF1570:
	.string	"plat"
.LASF576:
	.string	"S_FATT_STND2"
.LASF1503:
	.string	"topcountdown"
.LASF1099:
	.string	"S_COLU"
.LASF226:
	.string	"S_PISTOL1"
.LASF227:
	.string	"S_PISTOL2"
.LASF228:
	.string	"S_PISTOL3"
.LASF229:
	.string	"S_PISTOL4"
.LASF565:
	.string	"S_SKEL_RAISE2"
.LASF566:
	.string	"S_SKEL_RAISE3"
.LASF567:
	.string	"S_SKEL_RAISE4"
.LASF568:
	.string	"S_SKEL_RAISE5"
.LASF569:
	.string	"S_SKEL_RAISE6"
.LASF1128:
	.string	"S_BIGTREE"
.LASF1449:
	.string	"ST_NEGATIVE"
.LASF1038:
	.string	"S_BON2C"
.LASF1039:
	.string	"S_BON2D"
.LASF344:
	.string	"S_TFOG01"
.LASF345:
	.string	"S_TFOG02"
.LASF163:
	.string	"SPR_LAUN"
.LASF400:
	.string	"S_POSS_PAIN"
.LASF735:
	.string	"S_BRBALL1"
.LASF736:
	.string	"S_BRBALL2"
.LASF1197:
	.string	"MT_SMOKE"
.LASF1211:
	.string	"MT_CYBORG"
.LASF1348:
	.string	"damage"
.LASF440:
	.string	"S_SPOS_XDIE1"
.LASF441:
	.string	"S_SPOS_XDIE2"
.LASF442:
	.string	"S_SPOS_XDIE3"
.LASF443:
	.string	"S_SPOS_XDIE4"
.LASF444:
	.string	"S_SPOS_XDIE5"
.LASF445:
	.string	"S_SPOS_XDIE6"
.LASF446:
	.string	"S_SPOS_XDIE7"
.LASF447:
	.string	"S_SPOS_XDIE8"
.LASF448:
	.string	"S_SPOS_XDIE9"
.LASF18:
	.string	"size_t"
.LASF1356:
	.string	"mobj_s"
.LASF1416:
	.string	"mobj_t"
.LASF1041:
	.string	"S_BKEY"
.LASF1510:
	.string	"silentCrushAndRaise"
.LASF1473:
	.string	"strobe_t"
.LASF53:
	.string	"pw_invisibility"
.LASF1560:
	.string	"Z_Free"
.LASF128:
	.string	"SPR_ARM1"
.LASF129:
	.string	"SPR_ARM2"
.LASF1193:
	.string	"MT_VILE"
.LASF29:
	.string	"it_blueskull"
.LASF1428:
	.string	"soundorg"
.LASF288:
	.string	"S_PLASMADOWN"
.LASF600:
	.string	"S_FATT_PAIN2"
.LASF998:
	.string	"S_BRAINEYESEE"
.LASF1450:
	.string	"slopetype_t"
.LASF535:
	.string	"S_SKEL_STND2"
.LASF888:
	.string	"S_CYBER_STND2"
.LASF1189:
	.string	"state_t"
.LASF732:
	.string	"S_HEAD_RAISE4"
.LASF958:
	.string	"S_SSWV_DIE2"
.LASF1514:
	.string	"ceiling_t"
.LASF414:
	.string	"S_POSS_XDIE8"
.LASF1088:
	.string	"S_CELP"
.LASF1130:
	.string	"S_EVILEYE"
.LASF1156:
	.string	"S_GTORCHSHRT2"
.LASF1157:
	.string	"S_GTORCHSHRT3"
.LASF1158:
	.string	"S_GTORCHSHRT4"
.LASF1387:
	.string	"viewheight"
.LASF1483:
	.string	"raiseToNearestAndChange"
.LASF1360:
	.string	"bnext"
.LASF1506:
	.string	"raiseToHighest"
.LASF589:
	.string	"S_FATT_ATK1"
.LASF122:
	.string	"SPR_CYBR"
.LASF590:
	.string	"S_FATT_ATK2"
.LASF493:
	.string	"S_VILE_DIE10"
.LASF83:
	.string	"SPR_MISF"
.LASF82:
	.string	"SPR_MISG"
.LASF95:
	.string	"SPR_MISL"
.LASF1047:
	.string	"S_BSKULL"
.LASF126:
	.string	"SPR_BBRN"
.LASF468:
	.string	"S_VILE_ATK1"
.LASF469:
	.string	"S_VILE_ATK2"
.LASF470:
	.string	"S_VILE_ATK3"
.LASF471:
	.string	"S_VILE_ATK4"
.LASF472:
	.string	"S_VILE_ATK5"
.LASF473:
	.string	"S_VILE_ATK6"
.LASF474:
	.string	"S_VILE_ATK7"
.LASF215:
	.string	"S_PUNCH"
.LASF476:
	.string	"S_VILE_ATK9"
.LASF197:
	.string	"SPR_SMBT"
.LASF1480:
	.string	"perpetualRaise"
.LASF771:
	.string	"S_BOS2_RUN1"
.LASF772:
	.string	"S_BOS2_RUN2"
.LASF773:
	.string	"S_BOS2_RUN3"
.LASF774:
	.string	"S_BOS2_RUN4"
.LASF775:
	.string	"S_BOS2_RUN5"
.LASF776:
	.string	"S_BOS2_RUN6"
.LASF777:
	.string	"S_BOS2_RUN7"
.LASF778:
	.string	"S_BOS2_RUN8"
.LASF1423:
	.string	"lightlevel"
.LASF1476:
	.string	"down"
.LASF188:
	.string	"SPR_TRE1"
.LASF189:
	.string	"SPR_TRE2"
.LASF845:
	.string	"S_BSPI_STND"
.LASF1339:
	.string	"meleestate"
.LASF1398:
	.string	"ammo"
.LASF635:
	.string	"S_CPOS_DIE1"
.LASF196:
	.string	"SPR_TRED"
.LASF89:
	.string	"SPR_BLUD"
.LASF591:
	.string	"S_FATT_ATK3"
.LASF592:
	.string	"S_FATT_ATK4"
.LASF593:
	.string	"S_FATT_ATK5"
.LASF594:
	.string	"S_FATT_ATK6"
.LASF595:
	.string	"S_FATT_ATK7"
.LASF596:
	.string	"S_FATT_ATK8"
.LASF597:
	.string	"S_FATT_ATK9"
.LASF99:
	.string	"SPR_TFOG"
.LASF303:
	.string	"S_BLOOD1"
.LASF304:
	.string	"S_BLOOD2"
.LASF305:
	.string	"S_BLOOD3"
.LASF1187:
	.string	"misc1"
.LASF1188:
	.string	"misc2"
.LASF1095:
	.string	"S_LAUN"
.LASF355:
	.string	"S_IFOG"
.LASF102:
	.string	"SPR_POSS"
.LASF107:
	.string	"SPR_FBXP"
.LASF904:
	.string	"S_CYBER_DIE1"
.LASF905:
	.string	"S_CYBER_DIE2"
.LASF906:
	.string	"S_CYBER_DIE3"
.LASF907:
	.string	"S_CYBER_DIE4"
.LASF908:
	.string	"S_CYBER_DIE5"
.LASF909:
	.string	"S_CYBER_DIE6"
.LASF910:
	.string	"S_CYBER_DIE7"
.LASF782:
	.string	"S_BOS2_PAIN"
.LASF912:
	.string	"S_CYBER_DIE9"
.LASF1378:
	.string	"spawnpoint"
.LASF1182:
	.string	"sprite"
.LASF1576:
	.string	"P_UnArchiveThinkers"
.LASF1260:
	.string	"MT_MISC23"
.LASF1515:
	.string	"activeceilings"
.LASF1125:
	.string	"S_CANDELABRA"
.LASF465:
	.string	"S_VILE_RUN10"
.LASF466:
	.string	"S_VILE_RUN11"
.LASF467:
	.string	"S_VILE_RUN12"
.LASF1085:
	.string	"S_ROCK"
.LASF234:
	.string	"S_SGUN1"
.LASF235:
	.string	"S_SGUN2"
.LASF236:
	.string	"S_SGUN3"
.LASF237:
	.string	"S_SGUN4"
.LASF238:
	.string	"S_SGUN5"
.LASF239:
	.string	"S_SGUN6"
.LASF240:
	.string	"S_SGUN7"
.LASF241:
	.string	"S_SGUN8"
.LASF242:
	.string	"S_SGUN9"
.LASF1329:
	.string	"doomednum"
.LASF231:
	.string	"S_SGUN"
.LASF1121:
	.string	"S_SHRTGRNCOL"
.LASF806:
	.string	"S_SKULL_PAIN"
.LASF1218:
	.string	"MT_SPAWNSHOT"
.LASF530:
	.string	"S_TRACER2"
.LASF1129:
	.string	"S_TECHPILLAR"
.LASF534:
	.string	"S_SKEL_STND"
.LASF689:
	.string	"S_SARG_STND2"
.LASF435:
	.string	"S_SPOS_DIE1"
.LASF436:
	.string	"S_SPOS_DIE2"
.LASF437:
	.string	"S_SPOS_DIE3"
.LASF438:
	.string	"S_SPOS_DIE4"
.LASF439:
	.string	"S_SPOS_DIE5"
.LASF1458:
	.string	"PST_REBORN"
.LASF1477:
	.string	"waiting"
.LASF1586:
	.string	"P_ArchivePlayers"
.LASF1164:
	.string	"S_HANGBNOBRAIN"
.LASF1482:
	.string	"raiseAndChange"
.LASF698:
	.string	"S_SARG_ATK1"
.LASF699:
	.string	"S_SARG_ATK2"
.LASF700:
	.string	"S_SARG_ATK3"
.LASF289:
	.string	"S_PLASMAUP"
.LASF1493:
	.string	"close30ThenOpen"
.LASF1184:
	.string	"tics"
.LASF1045:
	.string	"S_YKEY"
.LASF1344:
	.string	"speed"
.LASF1577:
	.string	"currentthinker"
.LASF258:
	.string	"S_DSNR1"
.LASF927:
	.string	"S_PAIN_DIE1"
.LASF457:
	.string	"S_VILE_RUN2"
.LASF1175:
	.string	"S_TECHLAMP4"
.LASF621:
	.string	"S_CPOS_RUN1"
.LASF622:
	.string	"S_CPOS_RUN2"
.LASF623:
	.string	"S_CPOS_RUN3"
.LASF624:
	.string	"S_CPOS_RUN4"
.LASF59:
	.string	"actionf_p1"
.LASF60:
	.string	"actionf_p2"
.LASF159:
	.string	"SPR_BPAK"
.LASF628:
	.string	"S_CPOS_RUN8"
.LASF1025:
	.string	"S_BEXP5"
.LASF1582:
	.string	"P_UnArchivePlayers"
.LASF1500:
	.string	"vldoor_e"
.LASF72:
	.string	"mapthing_t"
.LASF390:
	.string	"S_POSS_RUN2"
.LASF391:
	.string	"S_POSS_RUN3"
.LASF392:
	.string	"S_POSS_RUN4"
.LASF709:
	.string	"S_SARG_RAISE1"
.LASF393:
	.string	"S_POSS_RUN5"
.LASF61:
	.string	"acp1"
.LASF62:
	.string	"acp2"
.LASF713:
	.string	"S_SARG_RAISE5"
.LASF714:
	.string	"S_SARG_RAISE6"
.LASF1293:
	.string	"MT_MISC53"
.LASF198:
	.string	"SPR_SMGT"
.LASF989:
	.string	"S_KEENPAIN"
.LASF337:
	.string	"S_BFGEXP2"
.LASF338:
	.string	"S_BFGEXP3"
.LASF339:
	.string	"S_BFGEXP4"
.LASF268:
	.string	"S_CHAINFLASH1"
.LASF269:
	.string	"S_CHAINFLASH2"
.LASF224:
	.string	"S_PISTOLDOWN"
.LASF889:
	.string	"S_CYBER_RUN1"
.LASF890:
	.string	"S_CYBER_RUN2"
.LASF891:
	.string	"S_CYBER_RUN3"
.LASF892:
	.string	"S_CYBER_RUN4"
.LASF893:
	.string	"S_CYBER_RUN5"
.LASF894:
	.string	"S_CYBER_RUN6"
.LASF895:
	.string	"S_CYBER_RUN7"
.LASF896:
	.string	"S_CYBER_RUN8"
.LASF1333:
	.string	"seesound"
.LASF1076:
	.string	"S_PMAP2"
.LASF1077:
	.string	"S_PMAP3"
.LASF1078:
	.string	"S_PMAP4"
.LASF1079:
	.string	"S_PMAP5"
.LASF1080:
	.string	"S_PMAP6"
.LASF1409:
	.string	"bonuscount"
.LASF807:
	.string	"S_SKULL_PAIN2"
.LASF1337:
	.string	"painchance"
.LASF633:
	.string	"S_CPOS_PAIN"
.LASF1420:
	.string	"ceilingheight"
.LASF112:
	.string	"SPR_SARG"
.LASF938:
	.string	"S_PAIN_RAISE6"
.LASF1430:
	.string	"specialdata"
.LASF1276:
	.string	"MT_MISC36"
.LASF742:
	.string	"S_BOSS_RUN1"
.LASF743:
	.string	"S_BOSS_RUN2"
.LASF744:
	.string	"S_BOSS_RUN3"
.LASF745:
	.string	"S_BOSS_RUN4"
.LASF746:
	.string	"S_BOSS_RUN5"
.LASF264:
	.string	"S_CHAINUP"
.LASF1584:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1404:
	.string	"killcount"
.LASF883:
	.string	"S_ARACH_PLEX2"
.LASF1127:
	.string	"S_TORCHTREE"
.LASF939:
	.string	"S_SSWV_STND"
.LASF885:
	.string	"S_ARACH_PLEX4"
.LASF986:
	.string	"S_COMMKEEN10"
.LASF987:
	.string	"S_COMMKEEN11"
.LASF988:
	.string	"S_COMMKEEN12"
.LASF903:
	.string	"S_CYBER_PAIN"
.LASF422:
	.string	"S_SPOS_RUN1"
.LASF180:
	.string	"SPR_SMIT"
.LASF7:
	.string	"boolean"
.LASF425:
	.string	"S_SPOS_RUN4"
.LASF426:
	.string	"S_SPOS_RUN5"
.LASF117:
	.string	"SPR_SKUL"
.LASF428:
	.string	"S_SPOS_RUN7"
.LASF429:
	.string	"S_SPOS_RUN8"
.LASF1086:
	.string	"S_BROK"
.LASF1331:
	.string	"spawnhealth"
.LASF216:
	.string	"S_PUNCHDOWN"
.LASF882:
	.string	"S_ARACH_PLEX"
.LASF1143:
	.string	"S_GREENTORCH"
.LASF41:
	.string	"wp_supershotgun"
.LASF282:
	.string	"S_SAWDOWN"
.LASF1181:
	.string	"statenum_t"
.LASF1221:
	.string	"MT_TROOPSHOT"
.LASF1206:
	.string	"MT_BRUISERSHOT"
.LASF1559:
	.string	"P_SetThingPosition"
.LASF17:
	.string	"ticcmd_t"
.LASF1326:
	.string	"MT_MISC86"
.LASF1521:
	.string	"raiseToTexture"
.LASF1452:
	.string	"ps_weapon"
.LASF370:
	.string	"S_PLAY_PAIN2"
.LASF765:
	.string	"S_BOSS_RAISE4"
.LASF766:
	.string	"S_BOSS_RAISE5"
.LASF1183:
	.string	"frame"
.LASF1549:
	.string	"P_AddActiveCeiling"
.LASF109:
	.string	"SPR_MANF"
.LASF620:
	.string	"S_CPOS_STND2"
.LASF1540:
	.string	"tc_door"
.LASF433:
	.string	"S_SPOS_PAIN"
.LASF35:
	.string	"wp_shotgun"
.LASF401:
	.string	"S_POSS_PAIN2"
.LASF1227:
	.string	"MT_PUFF"
.LASF273:
	.string	"S_MISSILE1"
.LASF274:
	.string	"S_MISSILE2"
.LASF275:
	.string	"S_MISSILE3"
.LASF649:
	.string	"S_CPOS_RAISE2"
.LASF650:
	.string	"S_CPOS_RAISE3"
.LASF651:
	.string	"S_CPOS_RAISE4"
.LASF1414:
	.string	"psprites"
.LASF1093:
	.string	"S_MGUN"
.LASF1205:
	.string	"MT_BRUISER"
.LASF158:
	.string	"SPR_SBOX"
.LASF1406:
	.string	"secretcount"
.LASF1328:
	.string	"mobjtype_t"
.LASF1342:
	.string	"xdeathstate"
.LASF1391:
	.string	"powers"
.LASF802:
	.string	"S_SKULL_ATK1"
.LASF803:
	.string	"S_SKULL_ATK2"
.LASF804:
	.string	"S_SKULL_ATK3"
.LASF805:
	.string	"S_SKULL_ATK4"
.LASF783:
	.string	"S_BOS2_PAIN2"
.LASF19:
	.string	"short unsigned int"
.LASF1207:
	.string	"MT_KNIGHT"
.LASF20:
	.string	"signed char"
.LASF11:
	.string	"sidemove"
.LASF1349:
	.string	"activesound"
.LASF434:
	.string	"S_SPOS_PAIN2"
.LASF598:
	.string	"S_FATT_ATK10"
.LASF195:
	.string	"SPR_TGRN"
.LASF1252:
	.string	"MT_MEGA"
.LASF97:
	.string	"SPR_BFE1"
.LASF98:
	.string	"SPR_BFE2"
.LASF1528:
	.string	"raiseFloor512"
.LASF1429:
	.string	"thinglist"
.LASF1286:
	.string	"MT_MISC46"
.LASF1488:
	.string	"status"
.LASF1465:
	.string	"count"
.LASF1516:
	.string	"lowerFloor"
.LASF1214:
	.string	"MT_KEEN"
.LASF1468:
	.string	"maxtime"
.LASF1427:
	.string	"blockbox"
.LASF999:
	.string	"S_BRAINEYE1"
.LASF655:
	.string	"S_TROO_STND"
.LASF602:
	.string	"S_FATT_DIE2"
.LASF293:
	.string	"S_PLASMAFLASH2"
.LASF1354:
	.string	"mobjinfo"
.LASF44:
	.string	"weapontype_t"
.LASF14:
	.string	"chatchar"
.LASF346:
	.string	"S_TFOG2"
.LASF347:
	.string	"S_TFOG3"
.LASF348:
	.string	"S_TFOG4"
.LASF349:
	.string	"S_TFOG5"
.LASF350:
	.string	"S_TFOG6"
.LASF351:
	.string	"S_TFOG7"
.LASF352:
	.string	"S_TFOG8"
.LASF353:
	.string	"S_TFOG9"
.LASF768:
	.string	"S_BOSS_RAISE7"
.LASF1400:
	.string	"attackdown"
.LASF73:
	.string	"SPR_TROO"
.LASF84:
	.string	"SPR_SAWG"
.LASF1542:
	.string	"tc_plat"
.LASF1523:
	.string	"raiseFloor24"
.LASF133:
	.string	"SPR_BON1"
.LASF134:
	.string	"SPR_BON2"
.LASF28:
	.string	"it_redcard"
.LASF1122:
	.string	"S_TALLREDCOL"
.LASF1557:
	.string	"I_Error"
.LASF1370:
	.string	"state"
.LASF1097:
	.string	"S_SHOT"
.LASF953:
	.string	"S_SSWV_ATK5"
.LASF1548:
	.string	"P_AddActivePlat"
.LASF1102:
	.string	"S_BLOODYTWITCH2"
.LASF1103:
	.string	"S_BLOODYTWITCH3"
.LASF1104:
	.string	"S_BLOODYTWITCH4"
.LASF843:
	.string	"S_SPID_DIE10"
.LASF844:
	.string	"S_SPID_DIE11"
.LASF1392:
	.string	"cards"
.LASF190:
	.string	"SPR_ELEC"
.LASF991:
	.string	"S_BRAIN"
.LASF1209:
	.string	"MT_SPIDER"
.LASF1545:
	.string	"tc_glow"
.LASF1074:
	.string	"S_SUIT"
.LASF88:
	.string	"SPR_BFGF"
.LASF87:
	.string	"SPR_BFGG"
.LASF1508:
	.string	"crushAndRaise"
.LASF914:
	.string	"S_PAIN_STND"
.LASF330:
	.string	"S_BFGLAND"
.LASF1020:
	.string	"S_BAR2"
.LASF1396:
	.string	"pendingweapon"
.LASF67:
	.string	"function"
.LASF46:
	.string	"am_shell"
.LASF1368:
	.string	"validcount"
.LASF1407:
	.string	"message"
.LASF610:
	.string	"S_FATT_DIE10"
.LASF32:
	.string	"NUMCARDS"
.LASF1147:
	.string	"S_REDTORCH"
.LASF1466:
	.string	"maxlight"
.LASF1225:
	.string	"MT_BFG"
.LASF394:
	.string	"S_POSS_RUN6"
.LASF1551:
	.string	"T_StrobeFlash"
.LASF104:
	.string	"SPR_VILE"
.LASF1494:
	.string	"close"
.LASF1228:
	.string	"MT_BLOOD"
.LASF223:
	.string	"S_PISTOL"
.LASF1533:
	.string	"floormove_t"
.LASF5:
	.string	"true"
.LASF455:
	.string	"S_VILE_STND2"
.LASF873:
	.string	"S_BSPI_RAISE1"
.LASF874:
	.string	"S_BSPI_RAISE2"
.LASF875:
	.string	"S_BSPI_RAISE3"
.LASF876:
	.string	"S_BSPI_RAISE4"
.LASF877:
	.string	"S_BSPI_RAISE5"
.LASF878:
	.string	"S_BSPI_RAISE6"
.LASF879:
	.string	"S_BSPI_RAISE7"
.LASF1365:
	.string	"momx"
.LASF1366:
	.string	"momy"
.LASF12:
	.string	"angleturn"
.LASF962:
	.string	"S_SSWV_XDIE1"
.LASF963:
	.string	"S_SSWV_XDIE2"
.LASF964:
	.string	"S_SSWV_XDIE3"
.LASF965:
	.string	"S_SSWV_XDIE4"
.LASF966:
	.string	"S_SSWV_XDIE5"
.LASF967:
	.string	"S_SSWV_XDIE6"
.LASF968:
	.string	"S_SSWV_XDIE7"
.LASF969:
	.string	"S_SSWV_XDIE8"
.LASF970:
	.string	"S_SSWV_XDIE9"
.LASF260:
	.string	"S_DSGUNFLASH1"
.LASF261:
	.string	"S_DSGUNFLASH2"
.LASF1259:
	.string	"MT_MISC22"
.LASF1415:
	.string	"didsecret"
.LASF518:
	.string	"S_FIRE25"
.LASF612:
	.string	"S_FATT_RAISE2"
.LASF1295:
	.string	"MT_MISC55"
.LASF1388:
	.string	"deltaviewheight"
.LASF30:
	.string	"it_yellowskull"
.LASF1050:
	.string	"S_RSKULL2"
.LASF1379:
	.string	"tracer"
.LASF825:
	.string	"S_SPID_RUN10"
.LASF826:
	.string	"S_SPID_RUN11"
.LASF827:
	.string	"S_SPID_RUN12"
.LASF1565:
	.string	"rcsid"
.LASF1554:
	.string	"T_MoveFloor"
.LASF1529:
	.string	"floor_e"
.LASF1351:
	.string	"raisestate"
.LASF276:
	.string	"S_MISSILEFLASH1"
.LASF277:
	.string	"S_MISSILEFLASH2"
.LASF278:
	.string	"S_MISSILEFLASH3"
.LASF279:
	.string	"S_MISSILEFLASH4"
.LASF139:
	.string	"SPR_RSKU"
.LASF64:
	.string	"think_t"
.LASF10:
	.string	"forwardmove"
.LASF637:
	.string	"S_CPOS_DIE3"
.LASF638:
	.string	"S_CPOS_DIE4"
.LASF1444:
	.string	"midtexture"
.LASF639:
	.string	"S_CPOS_DIE5"
.LASF640:
	.string	"S_CPOS_DIE6"
.LASF641:
	.string	"S_CPOS_DIE7"
.LASF1082:
	.string	"S_PVIS2"
.LASF1550:
	.string	"T_Glow"
.LASF1220:
	.string	"MT_BARREL"
.LASF814:
	.string	"S_SPID_STND"
.LASF586:
	.string	"S_FATT_RUN10"
.LASF587:
	.string	"S_FATT_RUN11"
.LASF588:
	.string	"S_FATT_RUN12"
.LASF1212:
	.string	"MT_PAIN"
.LASF1140:
	.string	"S_BLUETORCH2"
.LASF1352:
	.string	"mobjinfo_t"
.LASF1141:
	.string	"S_BLUETORCH3"
.LASF1142:
	.string	"S_BLUETORCH4"
.LASF199:
	.string	"SPR_SMRT"
.LASF301:
	.string	"S_BFGFLASH1"
.LASF302:
	.string	"S_BFGFLASH2"
.LASF835:
	.string	"S_SPID_DIE2"
.LASF116:
	.string	"SPR_BOS2"
.LASF838:
	.string	"S_SPID_DIE5"
.LASF1538:
	.string	"tc_mobj"
.LASF839:
	.string	"S_SPID_DIE6"
.LASF840:
	.string	"S_SPID_DIE7"
.LASF841:
	.string	"S_SPID_DIE8"
.LASF1131:
	.string	"S_EVILEYE2"
.LASF1132:
	.string	"S_EVILEYE3"
.LASF1133:
	.string	"S_EVILEYE4"
.LASF306:
	.string	"S_PUFF1"
.LASF307:
	.string	"S_PUFF2"
.LASF308:
	.string	"S_PUFF3"
.LASF127:
	.string	"SPR_BOSF"
.LASF1432:
	.string	"lines"
.LASF115:
	.string	"SPR_BOSS"
.LASF1224:
	.string	"MT_PLASMA"
.LASF860:
	.string	"S_BSPI_ATK1"
.LASF861:
	.string	"S_BSPI_ATK2"
.LASF862:
	.string	"S_BSPI_ATK3"
.LASF863:
	.string	"S_BSPI_ATK4"
.LASF1042:
	.string	"S_BKEY2"
.LASF42:
	.string	"NUMWEAPONS"
.LASF847:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF849:
	.string	"S_BSPI_RUN2"
.LASF993:
	.string	"S_BRAIN_DIE1"
.LASF994:
	.string	"S_BRAIN_DIE2"
.LASF995:
	.string	"S_BRAIN_DIE3"
.LASF996:
	.string	"S_BRAIN_DIE4"
.LASF328:
	.string	"S_BFGSHOT"
.LASF1134:
	.string	"S_FLOATSKULL"
.LASF484:
	.string	"S_VILE_DIE1"
.LASF485:
	.string	"S_VILE_DIE2"
.LASF486:
	.string	"S_VILE_DIE3"
.LASF487:
	.string	"S_VILE_DIE4"
.LASF488:
	.string	"S_VILE_DIE5"
.LASF489:
	.string	"S_VILE_DIE6"
.LASF490:
	.string	"S_VILE_DIE7"
.LASF491:
	.string	"S_VILE_DIE8"
.LASF492:
	.string	"S_VILE_DIE9"
.LASF1408:
	.string	"damagecount"
.LASF1568:
	.string	"door"
.LASF168:
	.string	"SPR_SMT2"
.LASF1044:
	.string	"S_RKEY2"
.LASF1015:
	.string	"S_ARM1"
.LASF1017:
	.string	"S_ARM2"
.LASF1110:
	.string	"S_HEADCANDLES"
.LASF146:
	.string	"SPR_PINS"
.LASF740:
	.string	"S_BOSS_STND"
.LASF1544:
	.string	"tc_strobe"
.LASF720:
	.string	"S_HEAD_PAIN"
.LASF27:
	.string	"it_yellowcard"
.LASF1537:
	.string	"tc_end"
.LASF1196:
	.string	"MT_TRACER"
.LASF601:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF603:
	.string	"S_FATT_DIE3"
.LASF604:
	.string	"S_FATT_DIE4"
.LASF605:
	.string	"S_FATT_DIE5"
.LASF606:
	.string	"S_FATT_DIE6"
.LASF607:
	.string	"S_FATT_DIE7"
.LASF608:
	.string	"S_FATT_DIE8"
.LASF609:
	.string	"S_FATT_DIE9"
.LASF676:
	.string	"S_TROO_XDIE2"
.LASF677:
	.string	"S_TROO_XDIE3"
.LASF678:
	.string	"S_TROO_XDIE4"
.LASF679:
	.string	"S_TROO_XDIE5"
.LASF680:
	.string	"S_TROO_XDIE6"
.LASF681:
	.string	"S_TROO_XDIE7"
.LASF682:
	.string	"S_TROO_XDIE8"
.LASF151:
	.string	"SPR_CLIP"
.LASF1123:
	.string	"S_SHRTREDCOL"
.LASF1166:
	.string	"S_HANGTSKULL"
.LASF1534:
	.string	"players"
.LASF1517:
	.string	"lowerFloorToLowest"
.LASF57:
	.string	"NUMPOWERS"
.LASF951:
	.string	"S_SSWV_ATK3"
.LASF952:
	.string	"S_SSWV_ATK4"
.LASF257:
	.string	"S_DSGUN10"
.LASF52:
	.string	"pw_strength"
.LASF185:
	.string	"SPR_CAND"
.LASF1504:
	.string	"vldoor_t"
.LASF1471:
	.string	"darktime"
.LASF1202:
	.string	"MT_SERGEANT"
.LASF1113:
	.string	"S_LIVESTICK"
.LASF1053:
	.string	"S_STIM"
.LASF47:
	.string	"am_cell"
.LASF26:
	.string	"it_bluecard"
.LASF1363:
	.string	"floorz"
.LASF716:
	.string	"S_HEAD_RUN1"
.LASF371:
	.string	"S_PLAY_DIE1"
.LASF372:
	.string	"S_PLAY_DIE2"
.LASF373:
	.string	"S_PLAY_DIE3"
.LASF374:
	.string	"S_PLAY_DIE4"
.LASF375:
	.string	"S_PLAY_DIE5"
.LASF376:
	.string	"S_PLAY_DIE6"
.LASF377:
	.string	"S_PLAY_DIE7"
.LASF387:
	.string	"S_POSS_STND"
.LASF343:
	.string	"S_TFOG"
.LASF1280:
	.string	"MT_MISC40"
.LASF1281:
	.string	"MT_MISC41"
.LASF1380:
	.string	"subsector_s"
.LASF703:
	.string	"S_SARG_DIE1"
.LASF704:
	.string	"S_SARG_DIE2"
.LASF705:
	.string	"S_SARG_DIE3"
.LASF706:
	.string	"S_SARG_DIE4"
.LASF1004:
	.string	"S_SPAWNFIRE1"
.LASF1005:
	.string	"S_SPAWNFIRE2"
.LASF1006:
	.string	"S_SPAWNFIRE3"
.LASF1007:
	.string	"S_SPAWNFIRE4"
.LASF1008:
	.string	"S_SPAWNFIRE5"
.LASF1009:
	.string	"S_SPAWNFIRE6"
.LASF1010:
	.string	"S_SPAWNFIRE7"
.LASF1011:
	.string	"S_SPAWNFIRE8"
.LASF675:
	.string	"S_TROO_XDIE1"
.LASF13:
	.string	"consistancy"
.LASF1381:
	.string	"sector"
.LASF1168:
	.string	"S_HANGTNOBRAIN"
.LASF323:
	.string	"S_PLASEXP2"
.LASF324:
	.string	"S_PLASEXP3"
.LASF325:
	.string	"S_PLASEXP4"
.LASF326:
	.string	"S_PLASEXP5"
.LASF39:
	.string	"wp_bfg"
.LASF1152:
	.string	"S_BTORCHSHRT2"
.LASF1153:
	.string	"S_BTORCHSHRT3"
.LASF1154:
	.string	"S_BTORCHSHRT4"
.LASF1509:
	.string	"fastCrushAndRaise"
.LASF456:
	.string	"S_VILE_RUN1"
.LASF246:
	.string	"S_DSGUNDOWN"
.LASF458:
	.string	"S_VILE_RUN3"
.LASF459:
	.string	"S_VILE_RUN4"
.LASF460:
	.string	"S_VILE_RUN5"
.LASF461:
	.string	"S_VILE_RUN6"
.LASF462:
	.string	"S_VILE_RUN7"
.LASF463:
	.string	"S_VILE_RUN8"
.LASF464:
	.string	"S_VILE_RUN9"
.LASF707:
	.string	"S_SARG_DIE5"
.LASF708:
	.string	"S_SARG_DIE6"
.LASF1357:
	.string	"thinker"
.LASF548:
	.string	"S_SKEL_FIST1"
.LASF549:
	.string	"S_SKEL_FIST2"
.LASF550:
	.string	"S_SKEL_FIST3"
.LASF551:
	.string	"S_SKEL_FIST4"
.LASF287:
	.string	"S_PLASMA"
.LASF1066:
	.string	"S_PINS"
.LASF1531:
	.string	"texture"
.LASF1462:
	.string	"sectors"
.LASF1139:
	.string	"S_BLUETORCH"
.LASF577:
	.string	"S_FATT_RUN1"
.LASF578:
	.string	"S_FATT_RUN2"
.LASF579:
	.string	"S_FATT_RUN3"
.LASF580:
	.string	"S_FATT_RUN4"
.LASF54:
	.string	"pw_ironfeet"
.LASF582:
	.string	"S_FATT_RUN6"
.LASF583:
	.string	"S_FATT_RUN7"
.LASF584:
	.string	"S_FATT_RUN8"
.LASF1115:
	.string	"S_MEAT2"
.LASF1116:
	.string	"S_MEAT3"
.LASF1117:
	.string	"S_MEAT4"
.LASF1118:
	.string	"S_MEAT5"
.LASF230:
	.string	"S_PISTOLFLASH"
.LASF1419:
	.string	"floorheight"
.LASF450:
	.string	"S_SPOS_RAISE2"
.LASF451:
	.string	"S_SPOS_RAISE3"
.LASF452:
	.string	"S_SPOS_RAISE4"
.LASF453:
	.string	"S_SPOS_RAISE5"
.LASF142:
	.string	"SPR_MEDI"
.LASF144:
	.string	"SPR_PINV"
.LASF1505:
	.string	"lowerToFloor"
.LASF992:
	.string	"S_BRAIN_PAIN"
.LASF263:
	.string	"S_CHAINDOWN"
.LASF482:
	.string	"S_VILE_PAIN"
.LASF529:
	.string	"S_TRACER"
.LASF949:
	.string	"S_SSWV_ATK1"
.LASF950:
	.string	"S_SSWV_ATK2"
.LASF479:
	.string	"S_VILE_HEAL1"
.LASF480:
	.string	"S_VILE_HEAL2"
.LASF481:
	.string	"S_VILE_HEAL3"
.LASF954:
	.string	"S_SSWV_ATK6"
.LASF1373:
	.string	"movecount"
.LASF136:
	.string	"SPR_RKEY"
.LASF1100:
	.string	"S_STALAG"
.LASF1563:
	.string	"Z_Malloc"
.LASF815:
	.string	"S_SPID_STND2"
.LASF25:
	.string	"angle_t"
.LASF1422:
	.string	"ceilingpic"
.LASF1101:
	.string	"S_BLOODYTWITCH"
.LASF1170:
	.string	"S_SMALLPOOL"
.LASF1455:
	.string	"pspdef_t"
.LASF1296:
	.string	"MT_MISC56"
.LASF599:
	.string	"S_FATT_PAIN"
.LASF1481:
	.string	"downWaitUpStay"
.LASF1525:
	.string	"raiseFloorCrush"
.LASF363:
	.string	"S_PLAY_RUN1"
.LASF364:
	.string	"S_PLAY_RUN2"
.LASF365:
	.string	"S_PLAY_RUN3"
.LASF366:
	.string	"S_PLAY_RUN4"
.LASF1091:
	.string	"S_BPAK"
.LASF23:
	.string	"double"
.LASF131:
	.string	"SPR_BEXP"
.LASF1384:
	.string	"player_s"
.LASF1048:
	.string	"S_BSKULL2"
.LASF90:
	.string	"SPR_PUFF"
.LASF977:
	.string	"S_COMMKEEN"
.LASF1401:
	.string	"usedown"
.LASF1561:
	.string	"P_RemoveMobj"
.LASF769:
	.string	"S_BOS2_STND"
.LASF96:
	.string	"SPR_BFS1"
.LASF1000:
	.string	"S_SPAWN1"
.LASF1001:
	.string	"S_SPAWN2"
.LASF1002:
	.string	"S_SPAWN3"
.LASF1003:
	.string	"S_SPAWN4"
.LASF1173:
	.string	"S_TECHLAMP2"
.LASF1174:
	.string	"S_TECHLAMP3"
.LASF40:
	.string	"wp_chainsaw"
.LASF1210:
	.string	"MT_BABY"
.LASF1399:
	.string	"maxammo"
.LASF1114:
	.string	"S_LIVESTICK2"
.LASF1159:
	.string	"S_RTORCHSHRT"
.LASF1256:
	.string	"MT_MISC19"
.LASF118:
	.string	"SPR_SPID"
.LASF715:
	.string	"S_HEAD_STND"
.LASF690:
	.string	"S_SARG_RUN1"
.LASF691:
	.string	"S_SARG_RUN2"
.LASF693:
	.string	"S_SARG_RUN4"
.LASF694:
	.string	"S_SARG_RUN5"
.LASF695:
	.string	"S_SARG_RUN6"
.LASF696:
	.string	"S_SARG_RUN7"
.LASF697:
	.string	"S_SARG_RUN8"
.LASF1234:
	.string	"MT_MISC1"
.LASF1235:
	.string	"MT_MISC2"
.LASF1236:
	.string	"MT_MISC3"
.LASF1237:
	.string	"MT_MISC4"
.LASF1238:
	.string	"MT_MISC5"
.LASF1239:
	.string	"MT_MISC6"
.LASF1240:
	.string	"MT_MISC7"
.LASF1241:
	.string	"MT_MISC8"
.LASF1242:
	.string	"MT_MISC9"
.LASF280:
	.string	"S_SAW"
.LASF147:
	.string	"SPR_MEGA"
.LASF369:
	.string	"S_PLAY_PAIN"
.LASF321:
	.string	"S_PLASBALL2"
.LASF1453:
	.string	"ps_flash"
.LASF1385:
	.string	"playerstate"
.LASF125:
	.string	"SPR_KEEN"
.LASF1546:
	.string	"tc_endspecials"
.LASF955:
	.string	"S_SSWV_PAIN"
.LASF1336:
	.string	"painstate"
.LASF990:
	.string	"S_KEENPAIN2"
.LASF56:
	.string	"pw_infrared"
.LASF477:
	.string	"S_VILE_ATK10"
.LASF478:
	.string	"S_VILE_ATK11"
.LASF956:
	.string	"S_SSWV_PAIN2"
.LASF1320:
	.string	"MT_MISC80"
.LASF1343:
	.string	"deathsound"
.LASF1030:
	.string	"S_BON1A"
.LASF1031:
	.string	"S_BON1B"
.LASF1032:
	.string	"S_BON1C"
.LASF1033:
	.string	"S_BON1D"
.LASF1034:
	.string	"S_BON1E"
.LASF1439:
	.string	"sector_t"
.LASF145:
	.string	"SPR_PSTR"
.LASF1258:
	.string	"MT_MISC21"
.LASF1492:
	.string	"normal"
.LASF701:
	.string	"S_SARG_PAIN"
.LASF1253:
	.string	"MT_CLIP"
.LASF160:
	.string	"SPR_BFUG"
.LASF1308:
	.string	"MT_MISC68"
.LASF1026:
	.string	"S_BBAR1"
.LASF1027:
	.string	"S_BBAR2"
.LASF1028:
	.string	"S_BBAR3"
.LASF214:
	.string	"S_LIGHTDONE"
.LASF865:
	.string	"S_BSPI_PAIN2"
.LASF1393:
	.string	"backpack"
.LASF1552:
	.string	"T_LightFlash"
.LASF665:
	.string	"S_TROO_ATK1"
.LASF666:
	.string	"S_TROO_ATK2"
.LASF667:
	.string	"S_TROO_ATK3"
.LASF809:
	.string	"S_SKULL_DIE2"
.LASF810:
	.string	"S_SKULL_DIE3"
.LASF811:
	.string	"S_SKULL_DIE4"
.LASF812:
	.string	"S_SKULL_DIE5"
.LASF813:
	.string	"S_SKULL_DIE6"
.LASF164:
	.string	"SPR_PLAS"
.LASF1574:
	.string	"P_UnArchiveSpecials"
.LASF1036:
	.string	"S_BON2A"
.LASF1037:
	.string	"S_BON2B"
.LASF77:
	.string	"SPR_PISF"
.LASF76:
	.string	"SPR_PISG"
.LASF1040:
	.string	"S_BON2E"
.LASF1263:
	.string	"MT_CHAINGUN"
.LASF1520:
	.string	"raiseFloorToNearest"
.LASF312:
	.string	"S_TBALLX1"
.LASF313:
	.string	"S_TBALLX2"
.LASF314:
	.string	"S_TBALLX3"
.LASF43:
	.string	"wp_nochange"
.LASF1200:
	.string	"MT_CHAINGUY"
.LASF1418:
	.string	"degenmobj_t"
.LASF808:
	.string	"S_SKULL_DIE1"
.LASF1457:
	.string	"PST_DEAD"
.LASF1171:
	.string	"S_BRAINSTEM"
.LASF976:
	.string	"S_KEENSTND"
.LASF101:
	.string	"SPR_PLAY"
.LASF1395:
	.string	"readyweapon"
.LASF1467:
	.string	"minlight"
.LASF1111:
	.string	"S_HEADCANDLES2"
.LASF1230:
	.string	"MT_IFOG"
.LASF192:
	.string	"SPR_FSKU"
.LASF427:
	.string	"S_SPOS_RUN6"
.LASF283:
	.string	"S_SAWUP"
.LASF1016:
	.string	"S_ARM1A"
.LASF619:
	.string	"S_CPOS_STND"
.LASF1271:
	.string	"MT_MISC31"
.LASF1367:
	.string	"momz"
.LASF1090:
	.string	"S_SBOX"
.LASF1425:
	.string	"soundtraversed"
.LASF1274:
	.string	"MT_MISC34"
.LASF1435:
	.string	"bbox"
.LASF322:
	.string	"S_PLASEXP"
.LASF1277:
	.string	"MT_MISC37"
.LASF1499:
	.string	"blazeClose"
.LASF1106:
	.string	"S_DEADBOTTOM"
.LASF1163:
	.string	"S_HANGNOGUTS"
.LASF1335:
	.string	"attacksound"
.LASF1067:
	.string	"S_PINS2"
.LASF1068:
	.string	"S_PINS3"
.LASF1069:
	.string	"S_PINS4"
.LASF921:
	.string	"S_PAIN_ATK1"
.LASF922:
	.string	"S_PAIN_ATK2"
.LASF923:
	.string	"S_PAIN_ATK3"
.LASF924:
	.string	"S_PAIN_ATK4"
.LASF233:
	.string	"S_SGUNUP"
.LASF1437:
	.string	"frontsector"
.LASF1469:
	.string	"mintime"
.LASF186:
	.string	"SPR_CBRA"
.LASF1341:
	.string	"deathstate"
.LASF1018:
	.string	"S_ARM2A"
.LASF887:
	.string	"S_CYBER_STND"
.LASF1046:
	.string	"S_YKEY2"
.LASF496:
	.string	"S_FIRE3"
.LASF1334:
	.string	"reactiontime"
.LASF501:
	.string	"S_FIRE8"
.LASF741:
	.string	"S_BOSS_STND2"
.LASF636:
	.string	"S_CPOS_DIE2"
.LASF1359:
	.string	"sprev"
.LASF284:
	.string	"S_SAW1"
.LASF285:
	.string	"S_SAW2"
.LASF286:
	.string	"S_SAW3"
.LASF1029:
	.string	"S_BON1"
.LASF1035:
	.string	"S_BON2"
.LASF1376:
	.string	"player"
.LASF281:
	.string	"S_SAWB"
.LASF1580:
	.string	"P_UnArchiveWorld"
.LASF669:
	.string	"S_TROO_PAIN2"
.LASF1216:
	.string	"MT_BOSSSPIT"
.LASF494:
	.string	"S_FIRE1"
.LASF495:
	.string	"S_FIRE2"
.LASF24:
	.string	"fixed_t"
.LASF497:
	.string	"S_FIRE4"
.LASF498:
	.string	"S_FIRE5"
.LASF499:
	.string	"S_FIRE6"
.LASF500:
	.string	"S_FIRE7"
.LASF154:
	.string	"SPR_BROK"
.LASF502:
	.string	"S_FIRE9"
.LASF1284:
	.string	"MT_MISC44"
.LASF1285:
	.string	"MT_MISC45"
.LASF1087:
	.string	"S_CELL"
.LASF1562:
	.string	"P_MobjThinker"
.LASF1287:
	.string	"MT_MISC47"
.LASF152:
	.string	"SPR_AMMO"
.LASF1288:
	.string	"MT_MISC48"
.LASF1289:
	.string	"MT_MISC49"
.LASF800:
	.string	"S_SKULL_RUN1"
.LASF801:
	.string	"S_SKULL_RUN2"
.LASF1167:
	.string	"S_HANGTLOOKUP"
.LASF1474:
	.string	"direction"
.LASF262:
	.string	"S_CHAIN"
.LASF292:
	.string	"S_PLASMAFLASH1"
.LASF248:
	.string	"S_DSGUN1"
.LASF249:
	.string	"S_DSGUN2"
.LASF143:
	.string	"SPR_SOUL"
.LASF103:
	.string	"SPR_SPOS"
.LASF252:
	.string	"S_DSGUN5"
.LASF253:
	.string	"S_DSGUN6"
.LASF254:
	.string	"S_DSGUN7"
.LASF255:
	.string	"S_DSGUN8"
.LASF256:
	.string	"S_DSGUN9"
.LASF420:
	.string	"S_SPOS_STND"
.LASF123:
	.string	"SPR_PAIN"
.LASF648:
	.string	"S_CPOS_RAISE1"
.LASF1394:
	.string	"frags"
.LASF1389:
	.string	"armorpoints"
.LASF15:
	.string	"buttons"
.LASF297:
	.string	"S_BFG1"
.LASF298:
	.string	"S_BFG2"
.LASF299:
	.string	"S_BFG3"
.LASF300:
	.string	"S_BFG4"
.LASF1478:
	.string	"in_stasis"
.LASF212:
	.string	"spritenum_t"
.LASF259:
	.string	"S_DSNR2"
.LASF799:
	.string	"S_SKULL_STND2"
.LASF1062:
	.string	"S_PINV2"
.LASF1063:
	.string	"S_PINV3"
.LASF692:
	.string	"S_SARG_RUN3"
.LASF1177:
	.string	"S_TECH2LAMP2"
.LASF1178:
	.string	"S_TECH2LAMP3"
.LASF1179:
	.string	"S_TECH2LAMP4"
.LASF1433:
	.string	"line_s"
.LASF75:
	.string	"SPR_PUNG"
.LASF643:
	.string	"S_CPOS_XDIE2"
.LASF644:
	.string	"S_CPOS_XDIE3"
.LASF645:
	.string	"S_CPOS_XDIE4"
.LASF646:
	.string	"S_CPOS_XDIE5"
.LASF647:
	.string	"S_CPOS_XDIE6"
.LASF828:
	.string	"S_SPID_ATK1"
.LASF829:
	.string	"S_SPID_ATK2"
.LASF830:
	.string	"S_SPID_ATK3"
.LASF831:
	.string	"S_SPID_ATK4"
.LASF552:
	.string	"S_SKEL_MISS1"
.LASF553:
	.string	"S_SKEL_MISS2"
.LASF554:
	.string	"S_SKEL_MISS3"
.LASF555:
	.string	"S_SKEL_MISS4"
.LASF309:
	.string	"S_PUFF4"
.LASF1049:
	.string	"S_RSKULL"
.LASF881:
	.string	"S_ARACH_PLAZ2"
.LASF1290:
	.string	"MT_MISC50"
.LASF729:
	.string	"S_HEAD_RAISE1"
.LASF1325:
	.string	"MT_MISC85"
.LASF730:
	.string	"S_HEAD_RAISE2"
.LASF731:
	.string	"S_HEAD_RAISE3"
.LASF1402:
	.string	"cheats"
.LASF138:
	.string	"SPR_BSKU"
.LASF733:
	.string	"S_HEAD_RAISE5"
.LASF734:
	.string	"S_HEAD_RAISE6"
.LASF1536:
	.string	"save_p"
.LASF1518:
	.string	"turboLower"
.LASF1472:
	.string	"brighttime"
.LASF1268:
	.string	"MT_SUPERSHOTGUN"
.LASF149:
	.string	"SPR_PMAP"
.LASF997:
	.string	"S_BRAINEYE"
.LASF1490:
	.string	"crush"
.LASF150:
	.string	"SPR_PVIS"
.LASF1456:
	.string	"PST_LIVE"
.LASF1226:
	.string	"MT_ARACHPLAZ"
.LASF475:
	.string	"S_VILE_ATK8"
.LASF416:
	.string	"S_POSS_RAISE1"
.LASF417:
	.string	"S_POSS_RAISE2"
.LASF418:
	.string	"S_POSS_RAISE3"
.LASF419:
	.string	"S_POSS_RAISE4"
.LASF271:
	.string	"S_MISSILEDOWN"
.LASF1526:
	.string	"raiseFloorTurbo"
.LASF1135:
	.string	"S_FLOATSKULL2"
.LASF1136:
	.string	"S_FLOATSKULL3"
.LASF1532:
	.string	"floordestheight"
.LASF1070:
	.string	"S_MEGA"
.LASF750:
	.string	"S_BOSS_ATK1"
.LASF751:
	.string	"S_BOSS_ATK2"
.LASF752:
	.string	"S_BOSS_ATK3"
.LASF1362:
	.string	"subsector"
.LASF208:
	.string	"SPR_BRS1"
.LASF1417:
	.string	"vertex_t"
.LASF557:
	.string	"S_SKEL_PAIN2"
.LASF1094:
	.string	"S_CSAW"
.LASF51:
	.string	"pw_invulnerability"
.LASF1583:
	.string	"dest"
.LASF737:
	.string	"S_BRBALLX1"
.LASF738:
	.string	"S_BRBALLX2"
.LASF739:
	.string	"S_BRBALLX3"
.LASF867:
	.string	"S_BSPI_DIE2"
.LASF868:
	.string	"S_BSPI_DIE3"
.LASF869:
	.string	"S_BSPI_DIE4"
.LASF870:
	.string	"S_BSPI_DIE5"
.LASF36:
	.string	"wp_chaingun"
.LASF872:
	.string	"S_BSPI_DIE7"
.LASF423:
	.string	"S_SPOS_RUN2"
.LASF1438:
	.string	"backsector"
.LASF424:
	.string	"S_SPOS_RUN3"
.LASF1556:
	.string	"T_MoveCeiling"
.LASF926:
	.string	"S_PAIN_PAIN2"
.LASF561:
	.string	"S_SKEL_DIE4"
.LASF157:
	.string	"SPR_SHEL"
.LASF1309:
	.string	"MT_MISC69"
.LASF1390:
	.string	"armortype"
.LASF4:
	.string	"false"
.LASF209:
	.string	"SPR_TLMP"
.LASF388:
	.string	"S_POSS_STND2"
.LASF1267:
	.string	"MT_SHOTGUN"
.LASF1572:
	.string	"strobe"
.LASF1192:
	.string	"MT_SHOTGUY"
.LASF1405:
	.string	"itemcount"
.LASF1172:
	.string	"S_TECHLAMP"
.LASF1213:
	.string	"MT_WOLFSS"
.LASF770:
	.string	"S_BOS2_STND2"
.LASF1426:
	.string	"soundtarget"
.LASF265:
	.string	"S_CHAIN1"
.LASF266:
	.string	"S_CHAIN2"
.LASF267:
	.string	"S_CHAIN3"
.LASF318:
	.string	"S_RBALLX2"
.LASF319:
	.string	"S_RBALLX3"
.LASF194:
	.string	"SPR_TBLU"
.LASF421:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1358:
	.string	"snext"
.LASF50:
	.string	"am_noammo"
.LASF1355:
	.string	"thinker_s"
.LASF68:
	.string	"thinker_t"
.LASF397:
	.string	"S_POSS_ATK1"
.LASF398:
	.string	"S_POSS_ATK2"
.LASF399:
	.string	"S_POSS_ATK3"
.LASF1311:
	.string	"MT_MISC71"
.LASF1160:
	.string	"S_RTORCHSHRT2"
.LASF1161:
	.string	"S_RTORCHSHRT3"
.LASF1162:
	.string	"S_RTORCHSHRT4"
.LASF1064:
	.string	"S_PINV4"
.LASF16:
	.string	"short int"
.LASF848:
	.string	"S_BSPI_RUN1"
.LASF1527:
	.string	"donutRaise"
.LASF1317:
	.string	"MT_MISC77"
.LASF1318:
	.string	"MT_MISC78"
.LASF1319:
	.string	"MT_MISC79"
.LASF1208:
	.string	"MT_SKULL"
.LASF1195:
	.string	"MT_UNDEAD"
.LASF65:
	.string	"prev"
.LASF558:
	.string	"S_SKEL_DIE1"
.LASF559:
	.string	"S_SKEL_DIE2"
.LASF560:
	.string	"S_SKEL_DIE3"
.LASF105:
	.string	"SPR_FIRE"
.LASF562:
	.string	"S_SKEL_DIE5"
.LASF563:
	.string	"S_SKEL_DIE6"
.LASF1169:
	.string	"S_COLONGIBS"
.LASF1522:
	.string	"lowerAndChange"
.LASF210:
	.string	"SPR_TLP2"
.LASF320:
	.string	"S_PLASBALL"
.LASF166:
	.string	"SPR_SGN2"
.LASF71:
	.string	"options"
.LASF119:
	.string	"SPR_BSPI"
.LASF121:
	.string	"SPR_APBX"
.LASF1413:
	.string	"colormap"
.LASF1243:
	.string	"MT_MISC10"
.LASF1244:
	.string	"MT_MISC11"
.LASF1245:
	.string	"MT_MISC12"
.LASF1247:
	.string	"MT_MISC13"
.LASF1249:
	.string	"MT_MISC14"
.LASF1250:
	.string	"MT_MISC15"
.LASF1251:
	.string	"MT_MISC16"
.LASF1254:
	.string	"MT_MISC17"
.LASF1255:
	.string	"MT_MISC18"
.LASF1083:
	.string	"S_CLIP"
.LASF1345:
	.string	"radius"
.LASF1371:
	.string	"health"
.LASF1575:
	.string	"P_ArchiveSpecials"
.LASF1217:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_saveg.c"
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
