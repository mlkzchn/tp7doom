	.file	"p_pspr.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_pspr.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: p_pspr.c,v 1.5 1997/02/03 22:45:12 b1 Exp $"
	.text
	.globl	P_SetPsprite
	.type	P_SetPsprite, @function
P_SetPsprite:
.LFB0:
	.file 1 "p_pspr.c"
	.loc 1 63 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
	movl	%esi, -28(%rbp)	# position, position
	movl	%edx, -32(%rbp)	# stnum, stnum
# p_pspr.c:67:     psp = &player->psprites[position];
	.loc 1 67 9
	movl	-28(%rbp), %eax	# position, tmp97
	movslq	%eax, %rdx	# tmp97, tmp96
	movq	%rdx, %rax	# tmp96, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp96, tmp98
	salq	$3, %rax	#, tmp99
	leaq	256(%rax), %rdx	#, tmp100
	movq	-24(%rbp), %rax	# player, tmp102
	addq	%rdx, %rax	# tmp100, tmp101
	addq	$8, %rax	#, tmp103
	movq	%rax, -16(%rbp)	# tmp103, psp
.L6:
# p_pspr.c:71: 	if (!stnum)
	.loc 1 71 5
	cmpl	$0, -32(%rbp)	#, stnum
	jne	.L2	#,
# p_pspr.c:74: 	    psp->state = NULL;
	.loc 1 74 17
	movq	-16(%rbp), %rax	# psp, tmp104
	movq	$0, (%rax)	#, psp_22->state
# p_pspr.c:75: 	    break;	
	.loc 1 75 6
	jmp	.L3	#
.L2:
# p_pspr.c:78: 	state = &states[stnum];
	.loc 1 78 8
	movl	-32(%rbp), %edx	# stnum, tmp105
	movq	%rdx, %rax	# tmp105, tmp106
	salq	$3, %rax	#, tmp107
	subq	%rdx, %rax	# tmp105, tmp106
	salq	$3, %rax	#, tmp108
	leaq	states(%rip), %rdx	#, tmp109
	addq	%rdx, %rax	# tmp109, tmp110
	movq	%rax, -8(%rbp)	# tmp110, state
# p_pspr.c:79: 	psp->state = state;
	.loc 1 79 13
	movq	-16(%rbp), %rax	# psp, tmp111
	movq	-8(%rbp), %rdx	# state, tmp112
	movq	%rdx, (%rax)	# tmp112, psp_22->state
# p_pspr.c:80: 	psp->tics = state->tics;	// could be 0
	.loc 1 80 19
	movq	-8(%rbp), %rax	# state, tmp113
	movq	16(%rax), %rax	# state_25->tics, _1
# p_pspr.c:80: 	psp->tics = state->tics;	// could be 0
	.loc 1 80 12
	movl	%eax, %edx	# _1, _2
	movq	-16(%rbp), %rax	# psp, tmp114
	movl	%edx, 8(%rax)	# _2, psp_22->tics
# p_pspr.c:82: 	if (state->misc1)
	.loc 1 82 11
	movq	-8(%rbp), %rax	# state, tmp115
	movq	40(%rax), %rax	# state_25->misc1, _3
# p_pspr.c:82: 	if (state->misc1)
	.loc 1 82 5
	testq	%rax, %rax	# _3
	je	.L4	#,
# p_pspr.c:85: 	    psp->sx = state->misc1 << FRACBITS;
	.loc 1 85 21
	movq	-8(%rbp), %rax	# state, tmp116
	movq	40(%rax), %rax	# state_25->misc1, _4
# p_pspr.c:85: 	    psp->sx = state->misc1 << FRACBITS;
	.loc 1 85 14
	sall	$16, %eax	#, _5
	movl	%eax, %edx	# _5, _6
	movq	-16(%rbp), %rax	# psp, tmp117
	movl	%edx, 12(%rax)	# _6, psp_22->sx
# p_pspr.c:86: 	    psp->sy = state->misc2 << FRACBITS;
	.loc 1 86 21
	movq	-8(%rbp), %rax	# state, tmp118
	movq	48(%rax), %rax	# state_25->misc2, _7
# p_pspr.c:86: 	    psp->sy = state->misc2 << FRACBITS;
	.loc 1 86 14
	sall	$16, %eax	#, _8
	movl	%eax, %edx	# _8, _9
	movq	-16(%rbp), %rax	# psp, tmp119
	movl	%edx, 16(%rax)	# _9, psp_22->sy
.L4:
# p_pspr.c:91: 	if (state->action.acp2)
	.loc 1 91 19
	movq	-8(%rbp), %rax	# state, tmp120
	movq	24(%rax), %rax	# state_25->action.acp2, _10
# p_pspr.c:91: 	if (state->action.acp2)
	.loc 1 91 5
	testq	%rax, %rax	# _10
	je	.L5	#,
# p_pspr.c:93: 	    state->action.acp2(player, psp);
	.loc 1 93 19
	movq	-8(%rbp), %rax	# state, tmp121
	movq	24(%rax), %rcx	# state_25->action.acp2, _11
# p_pspr.c:93: 	    state->action.acp2(player, psp);
	.loc 1 93 6
	movq	-16(%rbp), %rdx	# psp, tmp122
	movq	-24(%rbp), %rax	# player, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	*%rcx	# _11
.LVL0:
# p_pspr.c:94: 	    if (!psp->state)
	.loc 1 94 14
	movq	-16(%rbp), %rax	# psp, tmp124
	movq	(%rax), %rax	# psp_22->state, _12
# p_pspr.c:94: 	    if (!psp->state)
	.loc 1 94 9
	testq	%rax, %rax	# _12
	je	.L7	#,
.L5:
# p_pspr.c:98: 	stnum = psp->state->nextstate;
	.loc 1 98 13
	movq	-16(%rbp), %rax	# psp, tmp125
	movq	(%rax), %rax	# psp_22->state, _13
# p_pspr.c:98: 	stnum = psp->state->nextstate;
	.loc 1 98 8
	movl	32(%rax), %eax	# _13->nextstate, tmp126
	movl	%eax, -32(%rbp)	# tmp126, stnum
# p_pspr.c:100:     } while (!psp->tics);
	.loc 1 100 18
	movq	-16(%rbp), %rax	# psp, tmp127
	movl	8(%rax), %eax	# psp_22->tics, _14
# p_pspr.c:100:     } while (!psp->tics);
	.loc 1 100 14
	testl	%eax, %eax	# _14
	je	.L6	#,
# p_pspr.c:102: }
	.loc 1 102 1
	jmp	.L8	#
.L7:
# p_pspr.c:95: 		break;
	.loc 1 95 3
	nop	
.L3:
.L8:
# p_pspr.c:102: }
	.loc 1 102 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_SetPsprite, .-P_SetPsprite
	.globl	swingx
	.bss
	.align 4
	.type	swingx, @object
	.size	swingx, 4
swingx:
	.zero	4
	.globl	swingy
	.align 4
	.type	swingy, @object
	.size	swingy, 4
swingy:
	.zero	4
	.text
	.globl	P_CalcSwing
	.type	P_CalcSwing, @function
P_CalcSwing:
.LFB1:
	.loc 1 113 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_pspr.c:121:     swing = player->bob;
	.loc 1 121 11
	movq	-24(%rbp), %rax	# player, tmp93
	movl	32(%rax), %eax	# player_13(D)->bob, tmp94
	movl	%eax, -8(%rbp)	# tmp94, swing
# p_pspr.c:123:     angle = (FINEANGLES/70*leveltime)&FINEMASK;
	.loc 1 123 27
	movl	leveltime(%rip), %eax	# leveltime, leveltime.0_1
	imull	$117, %eax, %eax	#, leveltime.0_1, _2
# p_pspr.c:123:     angle = (FINEANGLES/70*leveltime)&FINEMASK;
	.loc 1 123 11
	andl	$8191, %eax	#, tmp95
	movl	%eax, -4(%rbp)	# tmp95, angle
# p_pspr.c:124:     swingx = FixedMul ( swing, finesine[angle]);
	.loc 1 124 14
	movl	-4(%rbp), %eax	# angle, tmp97
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp98
	leaq	finesine(%rip), %rax	#, tmp99
	movl	(%rdx,%rax), %edx	# finesine[angle_15], _3
	movl	-8(%rbp), %eax	# swing, tmp100
	movl	%edx, %esi	# _3,
	movl	%eax, %edi	# tmp100,
	call	FixedMul@PLT	#
# p_pspr.c:124:     swingx = FixedMul ( swing, finesine[angle]);
	.loc 1 124 12 discriminator 1
	movl	%eax, swingx(%rip)	# _4, swingx
# p_pspr.c:126:     angle = (FINEANGLES/70*leveltime+FINEANGLES/2)&FINEMASK;
	.loc 1 126 27
	movl	leveltime(%rip), %eax	# leveltime, leveltime.1_5
	imull	$117, %eax, %eax	#, leveltime.1_5, _6
# p_pspr.c:126:     angle = (FINEANGLES/70*leveltime+FINEANGLES/2)&FINEMASK;
	.loc 1 126 37
	addl	$4096, %eax	#, _7
# p_pspr.c:126:     angle = (FINEANGLES/70*leveltime+FINEANGLES/2)&FINEMASK;
	.loc 1 126 11
	andl	$8191, %eax	#, tmp101
	movl	%eax, -4(%rbp)	# tmp101, angle
# p_pspr.c:127:     swingy = -FixedMul ( swingx, finesine[angle]);
	.loc 1 127 15
	movl	-4(%rbp), %eax	# angle, tmp103
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp104
	leaq	finesine(%rip), %rax	#, tmp105
	movl	(%rdx,%rax), %edx	# finesine[angle_18], _8
	movl	swingx(%rip), %eax	# swingx, swingx.2_9
	movl	%edx, %esi	# _8,
	movl	%eax, %edi	# swingx.2_9,
	call	FixedMul@PLT	#
# p_pspr.c:127:     swingy = -FixedMul ( swingx, finesine[angle]);
	.loc 1 127 14 discriminator 1
	negl	%eax	# _11
# p_pspr.c:127:     swingy = -FixedMul ( swingx, finesine[angle]);
	.loc 1 127 12 discriminator 1
	movl	%eax, swingy(%rip)	# _11, swingy
# p_pspr.c:128: }
	.loc 1 128 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_CalcSwing, .-P_CalcSwing
	.globl	P_BringUpWeapon
	.type	P_BringUpWeapon, @function
P_BringUpWeapon:
.LFB2:
	.loc 1 139 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_pspr.c:142:     if (player->pendingweapon == wp_nochange)
	.loc 1 142 15
	movq	-24(%rbp), %rax	# player, tmp88
	movl	120(%rax), %eax	# player_10(D)->pendingweapon, _1
# p_pspr.c:142:     if (player->pendingweapon == wp_nochange)
	.loc 1 142 8
	cmpl	$10, %eax	#, _1
	jne	.L11	#,
# p_pspr.c:143: 	player->pendingweapon = player->readyweapon;
	.loc 1 143 32
	movq	-24(%rbp), %rax	# player, tmp89
	movl	116(%rax), %edx	# player_10(D)->readyweapon, _2
# p_pspr.c:143: 	player->pendingweapon = player->readyweapon;
	.loc 1 143 24
	movq	-24(%rbp), %rax	# player, tmp90
	movl	%edx, 120(%rax)	# _2, player_10(D)->pendingweapon
.L11:
# p_pspr.c:145:     if (player->pendingweapon == wp_chainsaw)
	.loc 1 145 15
	movq	-24(%rbp), %rax	# player, tmp91
	movl	120(%rax), %eax	# player_10(D)->pendingweapon, _3
# p_pspr.c:145:     if (player->pendingweapon == wp_chainsaw)
	.loc 1 145 8
	cmpl	$7, %eax	#, _3
	jne	.L12	#,
# p_pspr.c:146: 	S_StartSound (player->mo, sfx_sawup);
	.loc 1 146 22
	movq	-24(%rbp), %rax	# player, tmp92
	movq	(%rax), %rax	# player_10(D)->mo, _4
# p_pspr.c:146: 	S_StartSound (player->mo, sfx_sawup);
	.loc 1 146 2
	movl	$10, %esi	#,
	movq	%rax, %rdi	# _4,
	call	S_StartSound@PLT	#
.L12:
# p_pspr.c:148:     newstate = weaponinfo[player->pendingweapon].upstate;
	.loc 1 148 33
	movq	-24(%rbp), %rax	# player, tmp93
	movl	120(%rax), %eax	# player_10(D)->pendingweapon, _5
# p_pspr.c:148:     newstate = weaponinfo[player->pendingweapon].upstate;
	.loc 1 148 49
	movl	%eax, %edx	# _5, tmp94
	movq	%rdx, %rax	# tmp94, tmp96
	addq	%rax, %rax	# tmp96
	addq	%rdx, %rax	# tmp94, tmp96
	salq	$3, %rax	#, tmp97
	movq	%rax, %rdx	# tmp96, tmp95
	leaq	4+weaponinfo(%rip), %rax	#, tmp98
	movl	(%rdx,%rax), %eax	# weaponinfo[_5].upstate, _6
# p_pspr.c:148:     newstate = weaponinfo[player->pendingweapon].upstate;
	.loc 1 148 14
	movl	%eax, -4(%rbp)	# _6, newstate
# p_pspr.c:150:     player->pendingweapon = wp_nochange;
	.loc 1 150 27
	movq	-24(%rbp), %rax	# player, tmp99
	movl	$10, 120(%rax)	#, player_10(D)->pendingweapon
# p_pspr.c:151:     player->psprites[ps_weapon].sy = WEAPONBOTTOM;
	.loc 1 151 36
	movq	-24(%rbp), %rax	# player, tmp100
	movl	$8388608, 280(%rax)	#, player_10(D)->psprites[0].sy
# p_pspr.c:153:     P_SetPsprite (player, ps_weapon, newstate);
	.loc 1 153 5
	movl	-4(%rbp), %edx	# newstate, tmp101
	movq	-24(%rbp), %rax	# player, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	P_SetPsprite	#
# p_pspr.c:154: }
	.loc 1 154 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_BringUpWeapon, .-P_BringUpWeapon
	.globl	P_CheckAmmo
	.type	P_CheckAmmo, @function
P_CheckAmmo:
.LFB3:
	.loc 1 162 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_pspr.c:166:     ammo = weaponinfo[player->readyweapon].ammo;
	.loc 1 166 29
	movq	-24(%rbp), %rax	# player, tmp109
	movl	116(%rax), %eax	# player_32(D)->readyweapon, _1
# p_pspr.c:166:     ammo = weaponinfo[player->readyweapon].ammo;
	.loc 1 166 10
	movl	%eax, %edx	# _1, tmp110
	movq	%rdx, %rax	# tmp110, tmp112
	addq	%rax, %rax	# tmp112
	addq	%rdx, %rax	# tmp110, tmp112
	salq	$3, %rax	#, tmp113
	movq	%rax, %rdx	# tmp112, tmp111
	leaq	weaponinfo(%rip), %rax	#, tmp114
	movl	(%rdx,%rax), %eax	# weaponinfo[_1].ammo, tmp115
	movl	%eax, -4(%rbp)	# tmp115, ammo
# p_pspr.c:169:     if (player->readyweapon == wp_bfg)
	.loc 1 169 15
	movq	-24(%rbp), %rax	# player, tmp116
	movl	116(%rax), %eax	# player_32(D)->readyweapon, _2
# p_pspr.c:169:     if (player->readyweapon == wp_bfg)
	.loc 1 169 8
	cmpl	$6, %eax	#, _2
	jne	.L14	#,
# p_pspr.c:170: 	count = BFGCELLS;
	.loc 1 170 8
	movl	$40, -8(%rbp)	#, count
	jmp	.L15	#
.L14:
# p_pspr.c:171:     else if (player->readyweapon == wp_supershotgun)
	.loc 1 171 20
	movq	-24(%rbp), %rax	# player, tmp117
	movl	116(%rax), %eax	# player_32(D)->readyweapon, _3
# p_pspr.c:171:     else if (player->readyweapon == wp_supershotgun)
	.loc 1 171 13
	cmpl	$8, %eax	#, _3
	jne	.L16	#,
# p_pspr.c:172: 	count = 2;	// Double barrel.
	.loc 1 172 8
	movl	$2, -8(%rbp)	#, count
	jmp	.L15	#
.L16:
# p_pspr.c:174: 	count = 1;	// Regular.
	.loc 1 174 8
	movl	$1, -8(%rbp)	#, count
.L15:
# p_pspr.c:178:     if (ammo == am_noammo || player->ammo[ammo] >= count)
	.loc 1 178 8
	cmpl	$5, -4(%rbp)	#, ammo
	je	.L17	#,
# p_pspr.c:178:     if (ammo == am_noammo || player->ammo[ammo] >= count)
	.loc 1 178 42 discriminator 1
	movq	-24(%rbp), %rax	# player, tmp118
	movl	-4(%rbp), %edx	# ammo, tmp119
	addq	$40, %rdx	#, tmp120
	movl	(%rax,%rdx,4), %eax	# player_32(D)->ammo[ammo_33], _4
# p_pspr.c:178:     if (ammo == am_noammo || player->ammo[ammo] >= count)
	.loc 1 178 27 discriminator 1
	cmpl	%eax, -8(%rbp)	# _4, count
	jg	.L18	#,
.L17:
# p_pspr.c:179: 	return true;
	.loc 1 179 9
	movl	$1, %eax	#, _27
	jmp	.L19	#
.L18:
# p_pspr.c:185: 	if (player->weaponowned[wp_plasma]
	.loc 1 185 25
	movq	-24(%rbp), %rax	# player, tmp121
	movl	144(%rax), %eax	# player_32(D)->weaponowned[5], _5
# p_pspr.c:185: 	if (player->weaponowned[wp_plasma]
	.loc 1 185 5
	testl	%eax, %eax	# _5
	je	.L20	#,
# p_pspr.c:186: 	    && player->ammo[am_cell]
	.loc 1 186 21
	movq	-24(%rbp), %rax	# player, tmp122
	movl	168(%rax), %eax	# player_32(D)->ammo[2], _6
# p_pspr.c:186: 	    && player->ammo[am_cell]
	.loc 1 186 6
	testl	%eax, %eax	# _6
	je	.L20	#,
# p_pspr.c:187: 	    && (gamemode != shareware) )
	.loc 1 187 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.3_7
# p_pspr.c:187: 	    && (gamemode != shareware) )
	.loc 1 187 6
	testl	%eax, %eax	# gamemode.3_7
	je	.L20	#,
# p_pspr.c:189: 	    player->pendingweapon = wp_plasma;
	.loc 1 189 28
	movq	-24(%rbp), %rax	# player, tmp123
	movl	$5, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L20:
# p_pspr.c:191: 	else if (player->weaponowned[wp_supershotgun] 
	.loc 1 191 30
	movq	-24(%rbp), %rax	# player, tmp124
	movl	156(%rax), %eax	# player_32(D)->weaponowned[8], _8
# p_pspr.c:191: 	else if (player->weaponowned[wp_supershotgun] 
	.loc 1 191 10
	testl	%eax, %eax	# _8
	je	.L22	#,
# p_pspr.c:192: 		 && player->ammo[am_shell]>2
	.loc 1 192 19
	movq	-24(%rbp), %rax	# player, tmp125
	movl	164(%rax), %eax	# player_32(D)->ammo[1], _9
# p_pspr.c:192: 		 && player->ammo[am_shell]>2
	.loc 1 192 4
	cmpl	$2, %eax	#, _9
	jle	.L22	#,
# p_pspr.c:193: 		 && (gamemode == commercial) )
	.loc 1 193 17
	movl	gamemode(%rip), %eax	# gamemode, gamemode.4_10
# p_pspr.c:193: 		 && (gamemode == commercial) )
	.loc 1 193 4
	cmpl	$2, %eax	#, gamemode.4_10
	jne	.L22	#,
# p_pspr.c:195: 	    player->pendingweapon = wp_supershotgun;
	.loc 1 195 28
	movq	-24(%rbp), %rax	# player, tmp126
	movl	$8, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L22:
# p_pspr.c:197: 	else if (player->weaponowned[wp_chaingun]
	.loc 1 197 30
	movq	-24(%rbp), %rax	# player, tmp127
	movl	136(%rax), %eax	# player_32(D)->weaponowned[3], _11
# p_pspr.c:197: 	else if (player->weaponowned[wp_chaingun]
	.loc 1 197 10
	testl	%eax, %eax	# _11
	je	.L23	#,
# p_pspr.c:198: 		 && player->ammo[am_clip])
	.loc 1 198 19
	movq	-24(%rbp), %rax	# player, tmp128
	movl	160(%rax), %eax	# player_32(D)->ammo[0], _12
# p_pspr.c:198: 		 && player->ammo[am_clip])
	.loc 1 198 4
	testl	%eax, %eax	# _12
	je	.L23	#,
# p_pspr.c:200: 	    player->pendingweapon = wp_chaingun;
	.loc 1 200 28
	movq	-24(%rbp), %rax	# player, tmp129
	movl	$3, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L23:
# p_pspr.c:202: 	else if (player->weaponowned[wp_shotgun]
	.loc 1 202 30
	movq	-24(%rbp), %rax	# player, tmp130
	movl	132(%rax), %eax	# player_32(D)->weaponowned[2], _13
# p_pspr.c:202: 	else if (player->weaponowned[wp_shotgun]
	.loc 1 202 10
	testl	%eax, %eax	# _13
	je	.L24	#,
# p_pspr.c:203: 		 && player->ammo[am_shell])
	.loc 1 203 19
	movq	-24(%rbp), %rax	# player, tmp131
	movl	164(%rax), %eax	# player_32(D)->ammo[1], _14
# p_pspr.c:203: 		 && player->ammo[am_shell])
	.loc 1 203 4
	testl	%eax, %eax	# _14
	je	.L24	#,
# p_pspr.c:205: 	    player->pendingweapon = wp_shotgun;
	.loc 1 205 28
	movq	-24(%rbp), %rax	# player, tmp132
	movl	$2, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L24:
# p_pspr.c:207: 	else if (player->ammo[am_clip])
	.loc 1 207 23
	movq	-24(%rbp), %rax	# player, tmp133
	movl	160(%rax), %eax	# player_32(D)->ammo[0], _15
# p_pspr.c:207: 	else if (player->ammo[am_clip])
	.loc 1 207 10
	testl	%eax, %eax	# _15
	je	.L25	#,
# p_pspr.c:209: 	    player->pendingweapon = wp_pistol;
	.loc 1 209 28
	movq	-24(%rbp), %rax	# player, tmp134
	movl	$1, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L25:
# p_pspr.c:211: 	else if (player->weaponowned[wp_chainsaw])
	.loc 1 211 30
	movq	-24(%rbp), %rax	# player, tmp135
	movl	152(%rax), %eax	# player_32(D)->weaponowned[7], _16
# p_pspr.c:211: 	else if (player->weaponowned[wp_chainsaw])
	.loc 1 211 10
	testl	%eax, %eax	# _16
	je	.L26	#,
# p_pspr.c:213: 	    player->pendingweapon = wp_chainsaw;
	.loc 1 213 28
	movq	-24(%rbp), %rax	# player, tmp136
	movl	$7, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L26:
# p_pspr.c:215: 	else if (player->weaponowned[wp_missile]
	.loc 1 215 30
	movq	-24(%rbp), %rax	# player, tmp137
	movl	140(%rax), %eax	# player_32(D)->weaponowned[4], _17
# p_pspr.c:215: 	else if (player->weaponowned[wp_missile]
	.loc 1 215 10
	testl	%eax, %eax	# _17
	je	.L27	#,
# p_pspr.c:216: 		 && player->ammo[am_misl])
	.loc 1 216 19
	movq	-24(%rbp), %rax	# player, tmp138
	movl	172(%rax), %eax	# player_32(D)->ammo[3], _18
# p_pspr.c:216: 		 && player->ammo[am_misl])
	.loc 1 216 4
	testl	%eax, %eax	# _18
	je	.L27	#,
# p_pspr.c:218: 	    player->pendingweapon = wp_missile;
	.loc 1 218 28
	movq	-24(%rbp), %rax	# player, tmp139
	movl	$4, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L27:
# p_pspr.c:220: 	else if (player->weaponowned[wp_bfg]
	.loc 1 220 30
	movq	-24(%rbp), %rax	# player, tmp140
	movl	148(%rax), %eax	# player_32(D)->weaponowned[6], _19
# p_pspr.c:220: 	else if (player->weaponowned[wp_bfg]
	.loc 1 220 10
	testl	%eax, %eax	# _19
	je	.L28	#,
# p_pspr.c:221: 		 && player->ammo[am_cell]>40
	.loc 1 221 19
	movq	-24(%rbp), %rax	# player, tmp141
	movl	168(%rax), %eax	# player_32(D)->ammo[2], _20
# p_pspr.c:221: 		 && player->ammo[am_cell]>40
	.loc 1 221 4
	cmpl	$40, %eax	#, _20
	jle	.L28	#,
# p_pspr.c:222: 		 && (gamemode != shareware) )
	.loc 1 222 17
	movl	gamemode(%rip), %eax	# gamemode, gamemode.5_21
# p_pspr.c:222: 		 && (gamemode != shareware) )
	.loc 1 222 4
	testl	%eax, %eax	# gamemode.5_21
	je	.L28	#,
# p_pspr.c:224: 	    player->pendingweapon = wp_bfg;
	.loc 1 224 28
	movq	-24(%rbp), %rax	# player, tmp142
	movl	$6, 120(%rax)	#, player_32(D)->pendingweapon
	jmp	.L21	#
.L28:
# p_pspr.c:229: 	    player->pendingweapon = wp_fist;
	.loc 1 229 28
	movq	-24(%rbp), %rax	# player, tmp143
	movl	$0, 120(%rax)	#, player_32(D)->pendingweapon
.L21:
# p_pspr.c:232:     } while (player->pendingweapon == wp_nochange);
	.loc 1 232 20
	movq	-24(%rbp), %rax	# player, tmp144
	movl	120(%rax), %eax	# player_32(D)->pendingweapon, _22
# p_pspr.c:232:     } while (player->pendingweapon == wp_nochange);
	.loc 1 232 36
	cmpl	$10, %eax	#, _22
	je	.L18	#,
# p_pspr.c:237: 		  weaponinfo[player->readyweapon].downstate);
	.loc 1 237 22
	movq	-24(%rbp), %rax	# player, tmp145
	movl	116(%rax), %eax	# player_32(D)->readyweapon, _23
# p_pspr.c:237: 		  weaponinfo[player->readyweapon].downstate);
	.loc 1 237 36
	movl	%eax, %edx	# _23, tmp146
	movq	%rdx, %rax	# tmp146, tmp148
	addq	%rax, %rax	# tmp148
	addq	%rdx, %rax	# tmp146, tmp148
	salq	$3, %rax	#, tmp149
	movq	%rax, %rdx	# tmp148, tmp147
	leaq	8+weaponinfo(%rip), %rax	#, tmp150
	movl	(%rdx,%rax), %eax	# weaponinfo[_23].downstate, _24
# p_pspr.c:235:     P_SetPsprite (player,
	.loc 1 235 5
	movl	%eax, %edx	# _24, _25
	movq	-24(%rbp), %rax	# player, tmp151
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	P_SetPsprite	#
# p_pspr.c:239:     return false;	
	.loc 1 239 12
	movl	$0, %eax	#, _27
.L19:
# p_pspr.c:240: }
	.loc 1 240 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_CheckAmmo, .-P_CheckAmmo
	.globl	P_FireWeapon
	.type	P_FireWeapon, @function
P_FireWeapon:
.LFB4:
	.loc 1 247 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_pspr.c:250:     if (!P_CheckAmmo (player))
	.loc 1 250 10
	movq	-24(%rbp), %rax	# player, tmp88
	movq	%rax, %rdi	# tmp88,
	call	P_CheckAmmo	#
# p_pspr.c:250:     if (!P_CheckAmmo (player))
	.loc 1 250 8 discriminator 1
	testl	%eax, %eax	# _1
	je	.L32	#,
# p_pspr.c:253:     P_SetMobjState (player->mo, S_PLAY_ATK1);
	.loc 1 253 5
	movq	-24(%rbp), %rax	# player, tmp89
	movq	(%rax), %rax	# player_9(D)->mo, _2
	movl	$154, %esi	#,
	movq	%rax, %rdi	# _2,
	call	P_SetMobjState@PLT	#
# p_pspr.c:254:     newstate = weaponinfo[player->readyweapon].atkstate;
	.loc 1 254 33
	movq	-24(%rbp), %rax	# player, tmp90
	movl	116(%rax), %eax	# player_9(D)->readyweapon, _3
# p_pspr.c:254:     newstate = weaponinfo[player->readyweapon].atkstate;
	.loc 1 254 47
	movl	%eax, %edx	# _3, tmp91
	movq	%rdx, %rax	# tmp91, tmp93
	addq	%rax, %rax	# tmp93
	addq	%rdx, %rax	# tmp91, tmp93
	salq	$3, %rax	#, tmp94
	movq	%rax, %rdx	# tmp93, tmp92
	leaq	16+weaponinfo(%rip), %rax	#, tmp95
	movl	(%rdx,%rax), %eax	# weaponinfo[_3].atkstate, _4
# p_pspr.c:254:     newstate = weaponinfo[player->readyweapon].atkstate;
	.loc 1 254 14
	movl	%eax, -4(%rbp)	# _4, newstate
# p_pspr.c:255:     P_SetPsprite (player, ps_weapon, newstate);
	.loc 1 255 5
	movl	-4(%rbp), %edx	# newstate, tmp96
	movq	-24(%rbp), %rax	# player, tmp97
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	P_SetPsprite	#
# p_pspr.c:256:     P_NoiseAlert (player->mo, player->mo);
	.loc 1 256 5
	movq	-24(%rbp), %rax	# player, tmp98
	movq	(%rax), %rdx	# player_9(D)->mo, _5
	movq	-24(%rbp), %rax	# player, tmp99
	movq	(%rax), %rax	# player_9(D)->mo, _6
	movq	%rdx, %rsi	# _5,
	movq	%rax, %rdi	# _6,
	call	P_NoiseAlert@PLT	#
	jmp	.L29	#
.L32:
# p_pspr.c:251: 	return;
	.loc 1 251 2
	nop	
.L29:
# p_pspr.c:257: }
	.loc 1 257 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_FireWeapon, .-P_FireWeapon
	.globl	P_DropWeapon
	.type	P_DropWeapon, @function
P_DropWeapon:
.LFB5:
	.loc 1 266 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# player, player
# p_pspr.c:269: 		  weaponinfo[player->readyweapon].downstate);
	.loc 1 269 22
	movq	-8(%rbp), %rax	# player, tmp85
	movl	116(%rax), %eax	# player_5(D)->readyweapon, _1
# p_pspr.c:269: 		  weaponinfo[player->readyweapon].downstate);
	.loc 1 269 36
	movl	%eax, %edx	# _1, tmp86
	movq	%rdx, %rax	# tmp86, tmp88
	addq	%rax, %rax	# tmp88
	addq	%rdx, %rax	# tmp86, tmp88
	salq	$3, %rax	#, tmp89
	movq	%rax, %rdx	# tmp88, tmp87
	leaq	8+weaponinfo(%rip), %rax	#, tmp90
	movl	(%rdx,%rax), %eax	# weaponinfo[_1].downstate, _2
# p_pspr.c:267:     P_SetPsprite (player,
	.loc 1 267 5
	movl	%eax, %edx	# _2, _3
	movq	-8(%rbp), %rax	# player, tmp91
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	P_SetPsprite	#
# p_pspr.c:270: }
	.loc 1 270 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	P_DropWeapon, .-P_DropWeapon
	.globl	A_WeaponReady
	.type	A_WeaponReady, @function
A_WeaponReady:
.LFB6:
	.loc 1 285 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
	movq	%rsi, -32(%rbp)	# psp, psp
# p_pspr.c:290:     if (player->mo->state == &states[S_PLAY_ATK1]
	.loc 1 290 15
	movq	-24(%rbp), %rax	# player, tmp114
	movq	(%rax), %rax	# player_38(D)->mo, _1
# p_pspr.c:290:     if (player->mo->state == &states[S_PLAY_ATK1]
	.loc 1 290 19
	movq	152(%rax), %rdx	# _1->state, _2
# p_pspr.c:290:     if (player->mo->state == &states[S_PLAY_ATK1]
	.loc 1 290 8
	leaq	8624+states(%rip), %rax	#, tmp115
	cmpq	%rax, %rdx	# tmp115, _2
	je	.L35	#,
# p_pspr.c:291: 	|| player->mo->state == &states[S_PLAY_ATK2] )
	.loc 1 291 11
	movq	-24(%rbp), %rax	# player, tmp116
	movq	(%rax), %rax	# player_38(D)->mo, _3
# p_pspr.c:291: 	|| player->mo->state == &states[S_PLAY_ATK2] )
	.loc 1 291 15
	movq	152(%rax), %rdx	# _3->state, _4
# p_pspr.c:291: 	|| player->mo->state == &states[S_PLAY_ATK2] )
	.loc 1 291 2
	leaq	8680+states(%rip), %rax	#, tmp117
	cmpq	%rax, %rdx	# tmp117, _4
	jne	.L36	#,
.L35:
# p_pspr.c:293: 	P_SetMobjState (player->mo, S_PLAY);
	.loc 1 293 2
	movq	-24(%rbp), %rax	# player, tmp118
	movq	(%rax), %rax	# player_38(D)->mo, _5
	movl	$149, %esi	#,
	movq	%rax, %rdi	# _5,
	call	P_SetMobjState@PLT	#
.L36:
# p_pspr.c:296:     if (player->readyweapon == wp_chainsaw
	.loc 1 296 15
	movq	-24(%rbp), %rax	# player, tmp119
	movl	116(%rax), %eax	# player_38(D)->readyweapon, _6
# p_pspr.c:296:     if (player->readyweapon == wp_chainsaw
	.loc 1 296 8
	cmpl	$7, %eax	#, _6
	jne	.L37	#,
# p_pspr.c:297: 	&& psp->state == &states[S_SAW])
	.loc 1 297 8
	movq	-32(%rbp), %rax	# psp, tmp120
	movq	(%rax), %rdx	# psp_40(D)->state, _7
# p_pspr.c:297: 	&& psp->state == &states[S_SAW])
	.loc 1 297 2
	leaq	3752+states(%rip), %rax	#, tmp121
	cmpq	%rax, %rdx	# tmp121, _7
	jne	.L37	#,
# p_pspr.c:299: 	S_StartSound (player->mo, sfx_sawidl);
	.loc 1 299 22
	movq	-24(%rbp), %rax	# player, tmp122
	movq	(%rax), %rax	# player_38(D)->mo, _8
# p_pspr.c:299: 	S_StartSound (player->mo, sfx_sawidl);
	.loc 1 299 2
	movl	$11, %esi	#,
	movq	%rax, %rdi	# _8,
	call	S_StartSound@PLT	#
.L37:
# p_pspr.c:304:     if (player->pendingweapon != wp_nochange || !player->health)
	.loc 1 304 15
	movq	-24(%rbp), %rax	# player, tmp123
	movl	120(%rax), %eax	# player_38(D)->pendingweapon, _9
# p_pspr.c:304:     if (player->pendingweapon != wp_nochange || !player->health)
	.loc 1 304 8
	cmpl	$10, %eax	#, _9
	jne	.L38	#,
# p_pspr.c:304:     if (player->pendingweapon != wp_nochange || !player->health)
	.loc 1 304 56 discriminator 1
	movq	-24(%rbp), %rax	# player, tmp124
	movl	36(%rax), %eax	# player_38(D)->health, _10
# p_pspr.c:304:     if (player->pendingweapon != wp_nochange || !player->health)
	.loc 1 304 46 discriminator 1
	testl	%eax, %eax	# _10
	jne	.L39	#,
.L38:
# p_pspr.c:308: 	newstate = weaponinfo[player->readyweapon].downstate;
	.loc 1 308 30
	movq	-24(%rbp), %rax	# player, tmp125
	movl	116(%rax), %eax	# player_38(D)->readyweapon, _11
# p_pspr.c:308: 	newstate = weaponinfo[player->readyweapon].downstate;
	.loc 1 308 44
	movl	%eax, %edx	# _11, tmp126
	movq	%rdx, %rax	# tmp126, tmp128
	addq	%rax, %rax	# tmp128
	addq	%rdx, %rax	# tmp126, tmp128
	salq	$3, %rax	#, tmp129
	movq	%rax, %rdx	# tmp128, tmp127
	leaq	8+weaponinfo(%rip), %rax	#, tmp130
	movl	(%rdx,%rax), %eax	# weaponinfo[_11].downstate, _12
# p_pspr.c:308: 	newstate = weaponinfo[player->readyweapon].downstate;
	.loc 1 308 11
	movl	%eax, -4(%rbp)	# _12, newstate
# p_pspr.c:309: 	P_SetPsprite (player, ps_weapon, newstate);
	.loc 1 309 2
	movl	-4(%rbp), %edx	# newstate, tmp131
	movq	-24(%rbp), %rax	# player, tmp132
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	P_SetPsprite	#
# p_pspr.c:310: 	return;	
	.loc 1 310 2
	jmp	.L34	#
.L39:
# p_pspr.c:315:     if (player->cmd.buttons & BT_ATTACK)
	.loc 1 315 20
	movq	-24(%rbp), %rax	# player, tmp133
	movzbl	19(%rax), %eax	# player_38(D)->cmd.buttons, _13
# p_pspr.c:315:     if (player->cmd.buttons & BT_ATTACK)
	.loc 1 315 29
	movzbl	%al, %eax	# _13, _14
	andl	$1, %eax	#, _15
# p_pspr.c:315:     if (player->cmd.buttons & BT_ATTACK)
	.loc 1 315 8
	testl	%eax, %eax	# _15
	je	.L41	#,
# p_pspr.c:317: 	if ( !player->attackdown
	.loc 1 317 14
	movq	-24(%rbp), %rax	# player, tmp134
	movl	192(%rax), %eax	# player_38(D)->attackdown, _16
# p_pspr.c:317: 	if ( !player->attackdown
	.loc 1 317 5
	testl	%eax, %eax	# _16
	je	.L42	#,
# p_pspr.c:318: 	     || (player->readyweapon != wp_missile
	.loc 1 318 17
	movq	-24(%rbp), %rax	# player, tmp135
	movl	116(%rax), %eax	# player_38(D)->readyweapon, _17
# p_pspr.c:318: 	     || (player->readyweapon != wp_missile
	.loc 1 318 7
	cmpl	$4, %eax	#, _17
	je	.L43	#,
# p_pspr.c:319: 		 && player->readyweapon != wp_bfg) )
	.loc 1 319 13
	movq	-24(%rbp), %rax	# player, tmp136
	movl	116(%rax), %eax	# player_38(D)->readyweapon, _18
# p_pspr.c:319: 		 && player->readyweapon != wp_bfg) )
	.loc 1 319 4
	cmpl	$6, %eax	#, _18
	je	.L43	#,
.L42:
# p_pspr.c:321: 	    player->attackdown = true;
	.loc 1 321 25
	movq	-24(%rbp), %rax	# player, tmp137
	movl	$1, 192(%rax)	#, player_38(D)->attackdown
# p_pspr.c:322: 	    P_FireWeapon (player);		
	.loc 1 322 6
	movq	-24(%rbp), %rax	# player, tmp138
	movq	%rax, %rdi	# tmp138,
	call	P_FireWeapon	#
# p_pspr.c:323: 	    return;
	.loc 1 323 6
	jmp	.L34	#
.L41:
# p_pspr.c:327: 	player->attackdown = false;
	.loc 1 327 21
	movq	-24(%rbp), %rax	# player, tmp139
	movl	$0, 192(%rax)	#, player_38(D)->attackdown
.L43:
# p_pspr.c:330:     angle = (128*leveltime)&FINEMASK;
	.loc 1 330 17
	movl	leveltime(%rip), %eax	# leveltime, leveltime.6_19
	sall	$7, %eax	#, _20
# p_pspr.c:330:     angle = (128*leveltime)&FINEMASK;
	.loc 1 330 11
	andl	$8064, %eax	#, tmp140
	movl	%eax, -8(%rbp)	# tmp140, angle
# p_pspr.c:331:     psp->sx = FRACUNIT + FixedMul (player->bob, finecosine[angle]);
	.loc 1 331 59
	movq	finecosine(%rip), %rax	# finecosine, finecosine.7_21
	movl	-8(%rbp), %edx	# angle, tmp141
	movslq	%edx, %rdx	# tmp141, _22
	salq	$2, %rdx	#, _23
	addq	%rdx, %rax	# _23, _24
# p_pspr.c:331:     psp->sx = FRACUNIT + FixedMul (player->bob, finecosine[angle]);
	.loc 1 331 26
	movl	(%rax), %edx	# *_24, _25
	movq	-24(%rbp), %rax	# player, tmp142
	movl	32(%rax), %eax	# player_38(D)->bob, _26
	movl	%edx, %esi	# _25,
	movl	%eax, %edi	# _26,
	call	FixedMul@PLT	#
# p_pspr.c:331:     psp->sx = FRACUNIT + FixedMul (player->bob, finecosine[angle]);
	.loc 1 331 24 discriminator 1
	leal	65536(%rax), %edx	#, _28
# p_pspr.c:331:     psp->sx = FRACUNIT + FixedMul (player->bob, finecosine[angle]);
	.loc 1 331 13 discriminator 1
	movq	-32(%rbp), %rax	# psp, tmp143
	movl	%edx, 12(%rax)	# _28, psp_40(D)->sx
# p_pspr.c:332:     angle &= FINEANGLES/2-1;
	.loc 1 332 11
	andl	$4095, -8(%rbp)	#, angle
# p_pspr.c:333:     psp->sy = WEAPONTOP + FixedMul (player->bob, finesine[angle]);
	.loc 1 333 27
	movl	-8(%rbp), %eax	# angle, tmp145
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp146
	leaq	finesine(%rip), %rax	#, tmp147
	movl	(%rdx,%rax), %edx	# finesine[angle_48], _29
	movq	-24(%rbp), %rax	# player, tmp148
	movl	32(%rax), %eax	# player_38(D)->bob, _30
	movl	%edx, %esi	# _29,
	movl	%eax, %edi	# _30,
	call	FixedMul@PLT	#
# p_pspr.c:333:     psp->sy = WEAPONTOP + FixedMul (player->bob, finesine[angle]);
	.loc 1 333 25 discriminator 1
	leal	2097152(%rax), %edx	#, _32
# p_pspr.c:333:     psp->sy = WEAPONTOP + FixedMul (player->bob, finesine[angle]);
	.loc 1 333 13 discriminator 1
	movq	-32(%rbp), %rax	# psp, tmp149
	movl	%edx, 16(%rax)	# _32, psp_40(D)->sy
.L34:
# p_pspr.c:334: }
	.loc 1 334 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	A_WeaponReady, .-A_WeaponReady
	.globl	A_ReFire
	.type	A_ReFire, @function
A_ReFire:
.LFB7:
	.loc 1 346 1
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
# p_pspr.c:350:     if ( (player->cmd.buttons & BT_ATTACK) 
	.loc 1 350 22
	movq	-8(%rbp), %rax	# player, tmp89
	movzbl	19(%rax), %eax	# player_10(D)->cmd.buttons, _1
# p_pspr.c:350:     if ( (player->cmd.buttons & BT_ATTACK) 
	.loc 1 350 31
	movzbl	%al, %eax	# _1, _2
	andl	$1, %eax	#, _3
# p_pspr.c:350:     if ( (player->cmd.buttons & BT_ATTACK) 
	.loc 1 350 8
	testl	%eax, %eax	# _3
	je	.L45	#,
# p_pspr.c:351: 	 && player->pendingweapon == wp_nochange
	.loc 1 351 12
	movq	-8(%rbp), %rax	# player, tmp90
	movl	120(%rax), %eax	# player_10(D)->pendingweapon, _4
# p_pspr.c:351: 	 && player->pendingweapon == wp_nochange
	.loc 1 351 3
	cmpl	$10, %eax	#, _4
	jne	.L45	#,
# p_pspr.c:352: 	 && player->health)
	.loc 1 352 12
	movq	-8(%rbp), %rax	# player, tmp91
	movl	36(%rax), %eax	# player_10(D)->health, _5
# p_pspr.c:352: 	 && player->health)
	.loc 1 352 3
	testl	%eax, %eax	# _5
	je	.L45	#,
# p_pspr.c:354: 	player->refire++;
	.loc 1 354 8
	movq	-8(%rbp), %rax	# player, tmp92
	movl	204(%rax), %eax	# player_10(D)->refire, _6
# p_pspr.c:354: 	player->refire++;
	.loc 1 354 16
	leal	1(%rax), %edx	#, _7
	movq	-8(%rbp), %rax	# player, tmp93
	movl	%edx, 204(%rax)	# _7, player_10(D)->refire
# p_pspr.c:355: 	P_FireWeapon (player);
	.loc 1 355 2
	movq	-8(%rbp), %rax	# player, tmp94
	movq	%rax, %rdi	# tmp94,
	call	P_FireWeapon	#
	jmp	.L46	#
.L45:
# p_pspr.c:359: 	player->refire = 0;
	.loc 1 359 17
	movq	-8(%rbp), %rax	# player, tmp95
	movl	$0, 204(%rax)	#, player_10(D)->refire
# p_pspr.c:360: 	P_CheckAmmo (player);
	.loc 1 360 2
	movq	-8(%rbp), %rax	# player, tmp96
	movq	%rax, %rdi	# tmp96,
	call	P_CheckAmmo	#
# p_pspr.c:362: }
	.loc 1 362 1
	nop	
.L46:
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	A_ReFire, .-A_ReFire
	.globl	A_CheckReload
	.type	A_CheckReload, @function
A_CheckReload:
.LFB8:
	.loc 1 369 1
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
# p_pspr.c:370:     P_CheckAmmo (player);
	.loc 1 370 5
	movq	-8(%rbp), %rax	# player, tmp82
	movq	%rax, %rdi	# tmp82,
	call	P_CheckAmmo	#
# p_pspr.c:375: }
	.loc 1 375 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	A_CheckReload, .-A_CheckReload
	.globl	A_Lower
	.type	A_Lower, @function
A_Lower:
.LFB9:
	.loc 1 388 1
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
# p_pspr.c:389:     psp->sy += LOWERSPEED;
	.loc 1 389 8
	movq	-16(%rbp), %rax	# psp, tmp88
	movl	16(%rax), %eax	# psp_9(D)->sy, _1
# p_pspr.c:389:     psp->sy += LOWERSPEED;
	.loc 1 389 13
	leal	393216(%rax), %edx	#, _2
	movq	-16(%rbp), %rax	# psp, tmp89
	movl	%edx, 16(%rax)	# _2, psp_9(D)->sy
# p_pspr.c:392:     if (psp->sy < WEAPONBOTTOM )
	.loc 1 392 12
	movq	-16(%rbp), %rax	# psp, tmp90
	movl	16(%rax), %eax	# psp_9(D)->sy, _3
# p_pspr.c:392:     if (psp->sy < WEAPONBOTTOM )
	.loc 1 392 8
	cmpl	$8388607, %eax	#, _3
	jle	.L53	#,
# p_pspr.c:396:     if (player->playerstate == PST_DEAD)
	.loc 1 396 15
	movq	-8(%rbp), %rax	# player, tmp91
	movl	8(%rax), %eax	# player_11(D)->playerstate, _4
# p_pspr.c:396:     if (player->playerstate == PST_DEAD)
	.loc 1 396 8
	cmpl	$1, %eax	#, _4
	jne	.L51	#,
# p_pspr.c:398: 	psp->sy = WEAPONBOTTOM;
	.loc 1 398 10
	movq	-16(%rbp), %rax	# psp, tmp92
	movl	$8388608, 16(%rax)	#, psp_9(D)->sy
# p_pspr.c:401: 	return;		
	.loc 1 401 2
	jmp	.L48	#
.L51:
# p_pspr.c:406:     if (!player->health)
	.loc 1 406 16
	movq	-8(%rbp), %rax	# player, tmp93
	movl	36(%rax), %eax	# player_11(D)->health, _5
# p_pspr.c:406:     if (!player->health)
	.loc 1 406 8
	testl	%eax, %eax	# _5
	jne	.L52	#,
# p_pspr.c:409: 	P_SetPsprite (player,  ps_weapon, S_NULL);
	.loc 1 409 2
	movq	-8(%rbp), %rax	# player, tmp94
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	P_SetPsprite	#
# p_pspr.c:410: 	return;	
	.loc 1 410 2
	jmp	.L48	#
.L52:
# p_pspr.c:413:     player->readyweapon = player->pendingweapon; 
	.loc 1 413 33
	movq	-8(%rbp), %rax	# player, tmp95
	movl	120(%rax), %edx	# player_11(D)->pendingweapon, _6
# p_pspr.c:413:     player->readyweapon = player->pendingweapon; 
	.loc 1 413 25
	movq	-8(%rbp), %rax	# player, tmp96
	movl	%edx, 116(%rax)	# _6, player_11(D)->readyweapon
# p_pspr.c:415:     P_BringUpWeapon (player);
	.loc 1 415 5
	movq	-8(%rbp), %rax	# player, tmp97
	movq	%rax, %rdi	# tmp97,
	call	P_BringUpWeapon	#
	jmp	.L48	#
.L53:
# p_pspr.c:393: 	return;
	.loc 1 393 2
	nop	
.L48:
# p_pspr.c:416: }
	.loc 1 416 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	A_Lower, .-A_Lower
	.globl	A_Raise
	.type	A_Raise, @function
A_Raise:
.LFB10:
	.loc 1 426 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
	movq	%rsi, -32(%rbp)	# psp, psp
# p_pspr.c:429:     psp->sy -= RAISESPEED;
	.loc 1 429 8
	movq	-32(%rbp), %rax	# psp, tmp87
	movl	16(%rax), %eax	# psp_8(D)->sy, _1
# p_pspr.c:429:     psp->sy -= RAISESPEED;
	.loc 1 429 13
	leal	-393216(%rax), %edx	#, _2
	movq	-32(%rbp), %rax	# psp, tmp88
	movl	%edx, 16(%rax)	# _2, psp_8(D)->sy
# p_pspr.c:431:     if (psp->sy > WEAPONTOP )
	.loc 1 431 12
	movq	-32(%rbp), %rax	# psp, tmp89
	movl	16(%rax), %eax	# psp_8(D)->sy, _3
# p_pspr.c:431:     if (psp->sy > WEAPONTOP )
	.loc 1 431 8
	cmpl	$2097152, %eax	#, _3
	jg	.L57	#,
# p_pspr.c:434:     psp->sy = WEAPONTOP;
	.loc 1 434 13
	movq	-32(%rbp), %rax	# psp, tmp90
	movl	$2097152, 16(%rax)	#, psp_8(D)->sy
# p_pspr.c:438:     newstate = weaponinfo[player->readyweapon].readystate;
	.loc 1 438 33
	movq	-24(%rbp), %rax	# player, tmp91
	movl	116(%rax), %eax	# player_11(D)->readyweapon, _4
# p_pspr.c:438:     newstate = weaponinfo[player->readyweapon].readystate;
	.loc 1 438 47
	movl	%eax, %edx	# _4, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	movq	%rax, %rdx	# tmp94, tmp93
	leaq	12+weaponinfo(%rip), %rax	#, tmp96
	movl	(%rdx,%rax), %eax	# weaponinfo[_4].readystate, _5
# p_pspr.c:438:     newstate = weaponinfo[player->readyweapon].readystate;
	.loc 1 438 14
	movl	%eax, -4(%rbp)	# _5, newstate
# p_pspr.c:440:     P_SetPsprite (player, ps_weapon, newstate);
	.loc 1 440 5
	movl	-4(%rbp), %edx	# newstate, tmp97
	movq	-24(%rbp), %rax	# player, tmp98
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	P_SetPsprite	#
	jmp	.L54	#
.L57:
# p_pspr.c:432: 	return;
	.loc 1 432 2
	nop	
.L54:
# p_pspr.c:441: }
	.loc 1 441 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	A_Raise, .-A_Raise
	.globl	A_GunFlash
	.type	A_GunFlash, @function
A_GunFlash:
.LFB11:
	.loc 1 452 1
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
# p_pspr.c:453:     P_SetMobjState (player->mo, S_PLAY_ATK2);
	.loc 1 453 5
	movq	-8(%rbp), %rax	# player, tmp86
	movq	(%rax), %rax	# player_6(D)->mo, _1
	movl	$155, %esi	#,
	movq	%rax, %rdi	# _1,
	call	P_SetMobjState@PLT	#
# p_pspr.c:454:     P_SetPsprite (player,ps_flash,weaponinfo[player->readyweapon].flashstate);
	.loc 1 454 52
	movq	-8(%rbp), %rax	# player, tmp87
	movl	116(%rax), %eax	# player_6(D)->readyweapon, _2
# p_pspr.c:454:     P_SetPsprite (player,ps_flash,weaponinfo[player->readyweapon].flashstate);
	.loc 1 454 66
	movl	%eax, %edx	# _2, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$3, %rax	#, tmp91
	movq	%rax, %rdx	# tmp90, tmp89
	leaq	20+weaponinfo(%rip), %rax	#, tmp92
	movl	(%rdx,%rax), %eax	# weaponinfo[_2].flashstate, _3
# p_pspr.c:454:     P_SetPsprite (player,ps_flash,weaponinfo[player->readyweapon].flashstate);
	.loc 1 454 5
	movl	%eax, %edx	# _3, _4
	movq	-8(%rbp), %rax	# player, tmp93
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	P_SetPsprite	#
# p_pspr.c:455: }
	.loc 1 455 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	A_GunFlash, .-A_GunFlash
	.globl	A_Punch
	.type	A_Punch, @function
A_Punch:
.LFB12:
	.loc 1 471 1
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
	movq	%rsi, -48(%rbp)	# psp, psp
# p_pspr.c:476:     damage = (P_Random ()%10+1)<<1;
	.loc 1 476 15
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _1
# p_pspr.c:476:     damage = (P_Random ()%10+1)<<1;
	.loc 1 476 26 discriminator 1
	movslq	%ecx, %rax	# _1, tmp106
	imulq	$1717986919, %rax, %rax	#, tmp106, tmp107
	shrq	$32, %rax	#, tmp108
	movl	%eax, %edx	# tmp108, tmp109
	sarl	$2, %edx	#, tmp109
	movl	%ecx, %eax	# _1, tmp110
	sarl	$31, %eax	#, tmp110
	subl	%eax, %edx	# tmp110, _2
	movl	%edx, %eax	# _2, tmp111
	sall	$2, %eax	#, tmp111
	addl	%edx, %eax	# _2, tmp111
	addl	%eax, %eax	# tmp112
	subl	%eax, %ecx	# tmp111, _1
	movl	%ecx, %edx	# _1, _2
# p_pspr.c:476:     damage = (P_Random ()%10+1)<<1;
	.loc 1 476 29 discriminator 1
	leal	1(%rdx), %eax	#, _3
# p_pspr.c:476:     damage = (P_Random ()%10+1)<<1;
	.loc 1 476 12 discriminator 1
	addl	%eax, %eax	# tmp113
	movl	%eax, -28(%rbp)	# tmp113, damage
# p_pspr.c:478:     if (player->powers[pw_strength])	
	.loc 1 478 23
	movq	-40(%rbp), %rax	# player, tmp114
	movl	52(%rax), %eax	# player_29(D)->powers[1], _4
# p_pspr.c:478:     if (player->powers[pw_strength])	
	.loc 1 478 8
	testl	%eax, %eax	# _4
	je	.L60	#,
# p_pspr.c:479: 	damage *= 10;
	.loc 1 479 9
	movl	-28(%rbp), %edx	# damage, tmp115
	movl	%edx, %eax	# tmp115, tmp116
	sall	$2, %eax	#, tmp116
	addl	%edx, %eax	# tmp115, tmp116
	addl	%eax, %eax	# tmp117
	movl	%eax, -28(%rbp)	# tmp116, damage
.L60:
# p_pspr.c:481:     angle = player->mo->angle;
	.loc 1 481 19
	movq	-40(%rbp), %rax	# player, tmp118
	movq	(%rax), %rax	# player_29(D)->mo, _5
# p_pspr.c:481:     angle = player->mo->angle;
	.loc 1 481 11
	movl	56(%rax), %eax	# _5->angle, tmp119
	movl	%eax, -24(%rbp)	# tmp119, angle
# p_pspr.c:482:     angle += (P_Random()-P_Random())<<18;
	.loc 1 482 15
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _6
# p_pspr.c:482:     angle += (P_Random()-P_Random())<<18;
	.loc 1 482 26 discriminator 1
	call	P_Random@PLT	#
# p_pspr.c:482:     angle += (P_Random()-P_Random())<<18;
	.loc 1 482 25 discriminator 2
	subl	%eax, %ebx	# _7, _6
	movl	%ebx, %edx	# _6, _8
# p_pspr.c:482:     angle += (P_Random()-P_Random())<<18;
	.loc 1 482 37 discriminator 2
	movl	%edx, %eax	# _8, _8
	sall	$18, %eax	#, _8
# p_pspr.c:482:     angle += (P_Random()-P_Random())<<18;
	.loc 1 482 11 discriminator 2
	addl	%eax, -24(%rbp)	# _9, angle
# p_pspr.c:483:     slope = P_AimLineAttack (player->mo, angle, MELEERANGE);
	.loc 1 483 13
	movq	-40(%rbp), %rax	# player, tmp120
	movq	(%rax), %rax	# player_29(D)->mo, _10
	movl	-24(%rbp), %ecx	# angle, tmp121
	movl	$4194304, %edx	#,
	movl	%ecx, %esi	# tmp121,
	movq	%rax, %rdi	# _10,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -20(%rbp)	# tmp122, slope
# p_pspr.c:484:     P_LineAttack (player->mo, angle, MELEERANGE, slope, damage);
	.loc 1 484 5
	movq	-40(%rbp), %rax	# player, tmp123
	movq	(%rax), %rax	# player_29(D)->mo, _11
	movl	-28(%rbp), %ecx	# damage, tmp124
	movl	-20(%rbp), %edx	# slope, tmp125
	movl	-24(%rbp), %esi	# angle, tmp126
	movl	%ecx, %r8d	# tmp124,
	movl	%edx, %ecx	# tmp125,
	movl	$4194304, %edx	#,
	movq	%rax, %rdi	# _11,
	call	P_LineAttack@PLT	#
# p_pspr.c:487:     if (linetarget)
	.loc 1 487 9
	movq	linetarget(%rip), %rax	# linetarget, linetarget.8_12
# p_pspr.c:487:     if (linetarget)
	.loc 1 487 8
	testq	%rax, %rax	# linetarget.8_12
	je	.L62	#,
# p_pspr.c:489: 	S_StartSound (player->mo, sfx_punch);
	.loc 1 489 22
	movq	-40(%rbp), %rax	# player, tmp127
	movq	(%rax), %rax	# player_29(D)->mo, _13
# p_pspr.c:489: 	S_StartSound (player->mo, sfx_punch);
	.loc 1 489 2
	movl	$83, %esi	#,
	movq	%rax, %rdi	# _13,
	call	S_StartSound@PLT	#
# p_pspr.c:493: 					     linetarget->y);
	.loc 1 493 21
	movq	linetarget(%rip), %rax	# linetarget, linetarget.9_14
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 22
	movl	28(%rax), %ecx	# linetarget.9_14->y, _15
# p_pspr.c:492: 					     linetarget->x,
	.loc 1 492 21
	movq	linetarget(%rip), %rax	# linetarget, linetarget.10_16
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 22
	movl	24(%rax), %edx	# linetarget.10_16->x, _17
# p_pspr.c:491: 					     player->mo->y,
	.loc 1 491 17
	movq	-40(%rbp), %rax	# player, tmp128
	movq	(%rax), %rax	# player_29(D)->mo, _18
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 22
	movl	28(%rax), %esi	# _18->y, _19
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 45
	movq	-40(%rbp), %rax	# player, tmp129
	movq	(%rax), %rax	# player_29(D)->mo, _20
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 22
	movl	24(%rax), %eax	# _20->x, _21
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 8
	movq	-40(%rbp), %rdi	# player, tmp130
	movq	(%rdi), %rbx	# player_29(D)->mo, _22
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 22
	movl	%eax, %edi	# _21,
	call	R_PointToAngle2@PLT	#
# p_pspr.c:490: 	player->mo->angle = R_PointToAngle2 (player->mo->x,
	.loc 1 490 20 discriminator 1
	movl	%eax, 56(%rbx)	# _23, _22->angle
.L62:
# p_pspr.c:495: }
	.loc 1 495 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	A_Punch, .-A_Punch
	.globl	A_Saw
	.type	A_Saw, @function
A_Saw:
.LFB13:
	.loc 1 505 1
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
	movq	%rsi, -48(%rbp)	# psp, psp
# p_pspr.c:510:     damage = 2*(P_Random ()%10+1);
	.loc 1 510 17
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _1
# p_pspr.c:510:     damage = 2*(P_Random ()%10+1);
	.loc 1 510 28 discriminator 1
	movslq	%ecx, %rax	# _1, tmp129
	imulq	$1717986919, %rax, %rax	#, tmp129, tmp130
	shrq	$32, %rax	#, tmp131
	movl	%eax, %edx	# tmp131, tmp132
	sarl	$2, %edx	#, tmp132
	movl	%ecx, %eax	# _1, tmp133
	sarl	$31, %eax	#, tmp133
	subl	%eax, %edx	# tmp133, _2
	movl	%edx, %eax	# _2, tmp134
	sall	$2, %eax	#, tmp134
	addl	%edx, %eax	# _2, tmp134
	addl	%eax, %eax	# tmp135
	subl	%eax, %ecx	# tmp134, _1
	movl	%ecx, %edx	# _1, _2
# p_pspr.c:510:     damage = 2*(P_Random ()%10+1);
	.loc 1 510 31 discriminator 1
	leal	1(%rdx), %eax	#, _3
# p_pspr.c:510:     damage = 2*(P_Random ()%10+1);
	.loc 1 510 12 discriminator 1
	addl	%eax, %eax	# tmp136
	movl	%eax, -28(%rbp)	# tmp136, damage
# p_pspr.c:511:     angle = player->mo->angle;
	.loc 1 511 19
	movq	-40(%rbp), %rax	# player, tmp137
	movq	(%rax), %rax	# player_52(D)->mo, _4
# p_pspr.c:511:     angle = player->mo->angle;
	.loc 1 511 11
	movl	56(%rax), %eax	# _4->angle, tmp138
	movl	%eax, -24(%rbp)	# tmp138, angle
# p_pspr.c:512:     angle += (P_Random()-P_Random())<<18;
	.loc 1 512 15
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _5
# p_pspr.c:512:     angle += (P_Random()-P_Random())<<18;
	.loc 1 512 26 discriminator 1
	call	P_Random@PLT	#
# p_pspr.c:512:     angle += (P_Random()-P_Random())<<18;
	.loc 1 512 25 discriminator 2
	subl	%eax, %ebx	# _6, _5
	movl	%ebx, %edx	# _5, _7
# p_pspr.c:512:     angle += (P_Random()-P_Random())<<18;
	.loc 1 512 37 discriminator 2
	movl	%edx, %eax	# _7, _7
	sall	$18, %eax	#, _7
# p_pspr.c:512:     angle += (P_Random()-P_Random())<<18;
	.loc 1 512 11 discriminator 2
	addl	%eax, -24(%rbp)	# _8, angle
# p_pspr.c:515:     slope = P_AimLineAttack (player->mo, angle, MELEERANGE+1);
	.loc 1 515 13
	movq	-40(%rbp), %rax	# player, tmp139
	movq	(%rax), %rax	# player_52(D)->mo, _9
	movl	-24(%rbp), %ecx	# angle, tmp140
	movl	$4194305, %edx	#,
	movl	%ecx, %esi	# tmp140,
	movq	%rax, %rdi	# _9,
	call	P_AimLineAttack@PLT	#
	movl	%eax, -20(%rbp)	# tmp141, slope
# p_pspr.c:516:     P_LineAttack (player->mo, angle, MELEERANGE+1, slope, damage);
	.loc 1 516 5
	movq	-40(%rbp), %rax	# player, tmp142
	movq	(%rax), %rax	# player_52(D)->mo, _10
	movl	-28(%rbp), %ecx	# damage, tmp143
	movl	-20(%rbp), %edx	# slope, tmp144
	movl	-24(%rbp), %esi	# angle, tmp145
	movl	%ecx, %r8d	# tmp143,
	movl	%edx, %ecx	# tmp144,
	movl	$4194305, %edx	#,
	movq	%rax, %rdi	# _10,
	call	P_LineAttack@PLT	#
# p_pspr.c:518:     if (!linetarget)
	.loc 1 518 9
	movq	linetarget(%rip), %rax	# linetarget, linetarget.11_11
# p_pspr.c:518:     if (!linetarget)
	.loc 1 518 8
	testq	%rax, %rax	# linetarget.11_11
	jne	.L64	#,
# p_pspr.c:520: 	S_StartSound (player->mo, sfx_sawful);
	.loc 1 520 22
	movq	-40(%rbp), %rax	# player, tmp146
	movq	(%rax), %rax	# player_52(D)->mo, _12
# p_pspr.c:520: 	S_StartSound (player->mo, sfx_sawful);
	.loc 1 520 2
	movl	$12, %esi	#,
	movq	%rax, %rdi	# _12,
	call	S_StartSound@PLT	#
# p_pspr.c:521: 	return;
	.loc 1 521 2
	jmp	.L63	#
.L64:
# p_pspr.c:523:     S_StartSound (player->mo, sfx_sawhit);
	.loc 1 523 25
	movq	-40(%rbp), %rax	# player, tmp147
	movq	(%rax), %rax	# player_52(D)->mo, _13
# p_pspr.c:523:     S_StartSound (player->mo, sfx_sawhit);
	.loc 1 523 5
	movl	$13, %esi	#,
	movq	%rax, %rdi	# _13,
	call	S_StartSound@PLT	#
# p_pspr.c:527: 			     linetarget->x, linetarget->y);
	.loc 1 527 34
	movq	linetarget(%rip), %rax	# linetarget, linetarget.12_14
# p_pspr.c:526:     angle = R_PointToAngle2 (player->mo->x, player->mo->y,
	.loc 1 526 13
	movl	28(%rax), %ecx	# linetarget.12_14->y, _15
# p_pspr.c:527: 			     linetarget->x, linetarget->y);
	.loc 1 527 19
	movq	linetarget(%rip), %rax	# linetarget, linetarget.13_16
# p_pspr.c:526:     angle = R_PointToAngle2 (player->mo->x, player->mo->y,
	.loc 1 526 13
	movl	24(%rax), %edx	# linetarget.13_16->x, _17
# p_pspr.c:526:     angle = R_PointToAngle2 (player->mo->x, player->mo->y,
	.loc 1 526 51
	movq	-40(%rbp), %rax	# player, tmp148
	movq	(%rax), %rax	# player_52(D)->mo, _18
# p_pspr.c:526:     angle = R_PointToAngle2 (player->mo->x, player->mo->y,
	.loc 1 526 13
	movl	28(%rax), %esi	# _18->y, _19
# p_pspr.c:526:     angle = R_PointToAngle2 (player->mo->x, player->mo->y,
	.loc 1 526 36
	movq	-40(%rbp), %rax	# player, tmp149
	movq	(%rax), %rax	# player_52(D)->mo, _20
# p_pspr.c:526:     angle = R_PointToAngle2 (player->mo->x, player->mo->y,
	.loc 1 526 13
	movl	24(%rax), %eax	# _20->x, _21
	movl	%eax, %edi	# _21,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -24(%rbp)	# tmp150, angle
# p_pspr.c:528:     if (angle - player->mo->angle > ANG180)
	.loc 1 528 23
	movq	-40(%rbp), %rax	# player, tmp151
	movq	(%rax), %rax	# player_52(D)->mo, _22
# p_pspr.c:528:     if (angle - player->mo->angle > ANG180)
	.loc 1 528 27
	movl	56(%rax), %eax	# _22->angle, _23
# p_pspr.c:528:     if (angle - player->mo->angle > ANG180)
	.loc 1 528 15
	movl	-24(%rbp), %edx	# angle, tmp152
	subl	%eax, %edx	# _23, _24
# p_pspr.c:528:     if (angle - player->mo->angle > ANG180)
	.loc 1 528 8
	cmpl	$-2147483648, %edx	#, _24
	jbe	.L66	#,
# p_pspr.c:530: 	if (angle - player->mo->angle < -ANG90/20)
	.loc 1 530 20
	movq	-40(%rbp), %rax	# player, tmp153
	movq	(%rax), %rax	# player_52(D)->mo, _25
# p_pspr.c:530: 	if (angle - player->mo->angle < -ANG90/20)
	.loc 1 530 24
	movl	56(%rax), %eax	# _25->angle, _26
# p_pspr.c:530: 	if (angle - player->mo->angle < -ANG90/20)
	.loc 1 530 12
	movl	-24(%rbp), %edx	# angle, tmp154
	subl	%eax, %edx	# _26, _27
# p_pspr.c:530: 	if (angle - player->mo->angle < -ANG90/20)
	.loc 1 530 5
	cmpl	$-53687092, %edx	#, _27
	ja	.L67	#,
# p_pspr.c:531: 	    player->mo->angle = angle + ANG90/21;
	.loc 1 531 12
	movq	-40(%rbp), %rax	# player, tmp155
	movq	(%rax), %rax	# player_52(D)->mo, _28
# p_pspr.c:531: 	    player->mo->angle = angle + ANG90/21;
	.loc 1 531 32
	movl	-24(%rbp), %edx	# angle, tmp156
	addl	$51130563, %edx	#, _29
# p_pspr.c:531: 	    player->mo->angle = angle + ANG90/21;
	.loc 1 531 24
	movl	%edx, 56(%rax)	# _29, _28->angle
	jmp	.L68	#
.L67:
# p_pspr.c:533: 	    player->mo->angle -= ANG90/20;
	.loc 1 533 12
	movq	-40(%rbp), %rax	# player, tmp157
	movq	(%rax), %rax	# player_52(D)->mo, _30
# p_pspr.c:533: 	    player->mo->angle -= ANG90/20;
	.loc 1 533 16
	movl	56(%rax), %edx	# _30->angle, _31
# p_pspr.c:533: 	    player->mo->angle -= ANG90/20;
	.loc 1 533 12
	movq	-40(%rbp), %rax	# player, tmp158
	movq	(%rax), %rax	# player_52(D)->mo, _32
# p_pspr.c:533: 	    player->mo->angle -= ANG90/20;
	.loc 1 533 24
	subl	$53687091, %edx	#, _33
	movl	%edx, 56(%rax)	# _33, _32->angle
	jmp	.L68	#
.L66:
# p_pspr.c:537: 	if (angle - player->mo->angle > ANG90/20)
	.loc 1 537 20
	movq	-40(%rbp), %rax	# player, tmp159
	movq	(%rax), %rax	# player_52(D)->mo, _34
# p_pspr.c:537: 	if (angle - player->mo->angle > ANG90/20)
	.loc 1 537 24
	movl	56(%rax), %eax	# _34->angle, _35
# p_pspr.c:537: 	if (angle - player->mo->angle > ANG90/20)
	.loc 1 537 12
	movl	-24(%rbp), %edx	# angle, tmp160
	subl	%eax, %edx	# _35, _36
# p_pspr.c:537: 	if (angle - player->mo->angle > ANG90/20)
	.loc 1 537 5
	cmpl	$53687091, %edx	#, _36
	jbe	.L69	#,
# p_pspr.c:538: 	    player->mo->angle = angle - ANG90/21;
	.loc 1 538 12
	movq	-40(%rbp), %rax	# player, tmp161
	movq	(%rax), %rax	# player_52(D)->mo, _37
# p_pspr.c:538: 	    player->mo->angle = angle - ANG90/21;
	.loc 1 538 32
	movl	-24(%rbp), %edx	# angle, tmp162
	subl	$51130563, %edx	#, _38
# p_pspr.c:538: 	    player->mo->angle = angle - ANG90/21;
	.loc 1 538 24
	movl	%edx, 56(%rax)	# _38, _37->angle
	jmp	.L68	#
.L69:
# p_pspr.c:540: 	    player->mo->angle += ANG90/20;
	.loc 1 540 12
	movq	-40(%rbp), %rax	# player, tmp163
	movq	(%rax), %rax	# player_52(D)->mo, _39
# p_pspr.c:540: 	    player->mo->angle += ANG90/20;
	.loc 1 540 16
	movl	56(%rax), %edx	# _39->angle, _40
# p_pspr.c:540: 	    player->mo->angle += ANG90/20;
	.loc 1 540 12
	movq	-40(%rbp), %rax	# player, tmp164
	movq	(%rax), %rax	# player_52(D)->mo, _41
# p_pspr.c:540: 	    player->mo->angle += ANG90/20;
	.loc 1 540 24
	addl	$53687091, %edx	#, _42
	movl	%edx, 56(%rax)	# _42, _41->angle
.L68:
# p_pspr.c:542:     player->mo->flags |= MF_JUSTATTACKED;
	.loc 1 542 11
	movq	-40(%rbp), %rax	# player, tmp165
	movq	(%rax), %rax	# player_52(D)->mo, _43
# p_pspr.c:542:     player->mo->flags |= MF_JUSTATTACKED;
	.loc 1 542 15
	movl	160(%rax), %edx	# _43->flags, _44
# p_pspr.c:542:     player->mo->flags |= MF_JUSTATTACKED;
	.loc 1 542 11
	movq	-40(%rbp), %rax	# player, tmp166
	movq	(%rax), %rax	# player_52(D)->mo, _45
# p_pspr.c:542:     player->mo->flags |= MF_JUSTATTACKED;
	.loc 1 542 23
	orb	$-128, %dl	#, _46
	movl	%edx, 160(%rax)	# _46, _45->flags
.L63:
# p_pspr.c:543: }
	.loc 1 543 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	A_Saw, .-A_Saw
	.globl	A_FireMissile
	.type	A_FireMissile, @function
A_FireMissile:
.LFB14:
	.loc 1 554 1
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
# p_pspr.c:555:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 555 35
	movq	-8(%rbp), %rax	# player, tmp87
	movl	116(%rax), %eax	# player_7(D)->readyweapon, _1
# p_pspr.c:555:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 555 49
	movl	%eax, %edx	# _1, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$3, %rax	#, tmp91
	movq	%rax, %rdx	# tmp90, tmp89
	leaq	weaponinfo(%rip), %rax	#, tmp92
	movl	(%rdx,%rax), %esi	# weaponinfo[_1].ammo, _2
# p_pspr.c:555:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 555 17
	movq	-8(%rbp), %rax	# player, tmp93
	movl	%esi, %edx	# _2, tmp94
	addq	$40, %rdx	#, tmp95
	movl	(%rax,%rdx,4), %eax	# player_7(D)->ammo[_2], _3
# p_pspr.c:555:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 555 55
	leal	-1(%rax), %ecx	#, _4
	movq	-8(%rbp), %rax	# player, tmp96
	movl	%esi, %edx	# _2, tmp97
	addq	$40, %rdx	#, tmp98
	movl	%ecx, (%rax,%rdx,4)	# _4, player_7(D)->ammo[_2]
# p_pspr.c:556:     P_SpawnPlayerMissile (player->mo, MT_ROCKET);
	.loc 1 556 5
	movq	-8(%rbp), %rax	# player, tmp99
	movq	(%rax), %rax	# player_7(D)->mo, _5
	movl	$33, %esi	#,
	movq	%rax, %rdi	# _5,
	call	P_SpawnPlayerMissile@PLT	#
# p_pspr.c:557: }
	.loc 1 557 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	A_FireMissile, .-A_FireMissile
	.globl	A_FireBFG
	.type	A_FireBFG, @function
A_FireBFG:
.LFB15:
	.loc 1 567 1
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
# p_pspr.c:568:     player->ammo[weaponinfo[player->readyweapon].ammo] -= BFGCELLS;
	.loc 1 568 35
	movq	-8(%rbp), %rax	# player, tmp89
	movl	116(%rax), %eax	# player_9(D)->readyweapon, _1
# p_pspr.c:568:     player->ammo[weaponinfo[player->readyweapon].ammo] -= BFGCELLS;
	.loc 1 568 49
	movl	%eax, %edx	# _1, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	salq	$3, %rax	#, tmp93
	movq	%rax, %rdx	# tmp92, tmp91
	leaq	weaponinfo(%rip), %rax	#, tmp94
	movl	(%rdx,%rax), %edx	# weaponinfo[_1].ammo, _2
# p_pspr.c:568:     player->ammo[weaponinfo[player->readyweapon].ammo] -= BFGCELLS;
	.loc 1 568 17
	movq	-8(%rbp), %rax	# player, tmp95
	movl	%edx, %edx	# _2, tmp96
	addq	$40, %rdx	#, tmp97
	movl	(%rax,%rdx,4), %edx	# player_9(D)->ammo[_2], _3
# p_pspr.c:568:     player->ammo[weaponinfo[player->readyweapon].ammo] -= BFGCELLS;
	.loc 1 568 35
	movq	-8(%rbp), %rax	# player, tmp98
	movl	116(%rax), %eax	# player_9(D)->readyweapon, _4
# p_pspr.c:568:     player->ammo[weaponinfo[player->readyweapon].ammo] -= BFGCELLS;
	.loc 1 568 49
	movl	%eax, %ecx	# _4, tmp99
	movq	%rcx, %rax	# tmp99, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rcx, %rax	# tmp99, tmp101
	salq	$3, %rax	#, tmp102
	movq	%rax, %rcx	# tmp101, tmp100
	leaq	weaponinfo(%rip), %rax	#, tmp103
	movl	(%rcx,%rax), %esi	# weaponinfo[_4].ammo, _5
# p_pspr.c:568:     player->ammo[weaponinfo[player->readyweapon].ammo] -= BFGCELLS;
	.loc 1 568 56
	leal	-40(%rdx), %ecx	#, _6
	movq	-8(%rbp), %rax	# player, tmp104
	movl	%esi, %edx	# _5, tmp105
	addq	$40, %rdx	#, tmp106
	movl	%ecx, (%rax,%rdx,4)	# _6, player_9(D)->ammo[_5]
# p_pspr.c:569:     P_SpawnPlayerMissile (player->mo, MT_BFG);
	.loc 1 569 5
	movq	-8(%rbp), %rax	# player, tmp107
	movq	(%rax), %rax	# player_9(D)->mo, _7
	movl	$35, %esi	#,
	movq	%rax, %rdi	# _7,
	call	P_SpawnPlayerMissile@PLT	#
# p_pspr.c:570: }
	.loc 1 570 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	A_FireBFG, .-A_FireBFG
	.globl	A_FirePlasma
	.type	A_FirePlasma, @function
A_FirePlasma:
.LFB16:
	.loc 1 581 1
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
	movq	%rdi, -24(%rbp)	# player, player
	movq	%rsi, -32(%rbp)	# psp, psp
# p_pspr.c:582:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 582 35
	movq	-24(%rbp), %rax	# player, tmp93
	movl	116(%rax), %eax	# player_13(D)->readyweapon, _1
# p_pspr.c:582:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 582 49
	movl	%eax, %edx	# _1, tmp94
	movq	%rdx, %rax	# tmp94, tmp96
	addq	%rax, %rax	# tmp96
	addq	%rdx, %rax	# tmp94, tmp96
	salq	$3, %rax	#, tmp97
	movq	%rax, %rdx	# tmp96, tmp95
	leaq	weaponinfo(%rip), %rax	#, tmp98
	movl	(%rdx,%rax), %esi	# weaponinfo[_1].ammo, _2
# p_pspr.c:582:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 582 17
	movq	-24(%rbp), %rax	# player, tmp99
	movl	%esi, %edx	# _2, tmp100
	addq	$40, %rdx	#, tmp101
	movl	(%rax,%rdx,4), %eax	# player_13(D)->ammo[_2], _3
# p_pspr.c:582:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 582 55
	leal	-1(%rax), %ecx	#, _4
	movq	-24(%rbp), %rax	# player, tmp102
	movl	%esi, %edx	# _2, tmp103
	addq	$40, %rdx	#, tmp104
	movl	%ecx, (%rax,%rdx,4)	# _4, player_13(D)->ammo[_2]
# p_pspr.c:586: 		  weaponinfo[player->readyweapon].flashstate+(P_Random ()&1) );
	.loc 1 586 22
	movq	-24(%rbp), %rax	# player, tmp105
	movl	116(%rax), %eax	# player_13(D)->readyweapon, _5
# p_pspr.c:586: 		  weaponinfo[player->readyweapon].flashstate+(P_Random ()&1) );
	.loc 1 586 36
	movl	%eax, %edx	# _5, tmp106
	movq	%rdx, %rax	# tmp106, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# tmp106, tmp108
	salq	$3, %rax	#, tmp109
	movq	%rax, %rdx	# tmp108, tmp107
	leaq	20+weaponinfo(%rip), %rax	#, tmp110
	movl	(%rdx,%rax), %ebx	# weaponinfo[_5].flashstate, _6
# p_pspr.c:586: 		  weaponinfo[player->readyweapon].flashstate+(P_Random ()&1) );
	.loc 1 586 49
	call	P_Random@PLT	#
# p_pspr.c:586: 		  weaponinfo[player->readyweapon].flashstate+(P_Random ()&1) );
	.loc 1 586 60 discriminator 1
	andl	$1, %eax	#, _8
# p_pspr.c:586: 		  weaponinfo[player->readyweapon].flashstate+(P_Random ()&1) );
	.loc 1 586 47 discriminator 1
	addl	%ebx, %eax	# _6, _9
# p_pspr.c:584:     P_SetPsprite (player,
	.loc 1 584 5
	movl	%eax, %edx	# _9, _10
	movq	-24(%rbp), %rax	# player, tmp111
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	P_SetPsprite	#
# p_pspr.c:588:     P_SpawnPlayerMissile (player->mo, MT_PLASMA);
	.loc 1 588 5
	movq	-24(%rbp), %rax	# player, tmp112
	movq	(%rax), %rax	# player_13(D)->mo, _11
	movl	$34, %esi	#,
	movq	%rax, %rdi	# _11,
	call	P_SpawnPlayerMissile@PLT	#
# p_pspr.c:589: }
	.loc 1 589 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	A_FirePlasma, .-A_FirePlasma
	.globl	bulletslope
	.bss
	.align 4
	.type	bulletslope, @object
	.size	bulletslope, 4
bulletslope:
	.zero	4
	.text
	.globl	P_BulletSlope
	.type	P_BulletSlope, @function
P_BulletSlope:
.LFB17:
	.loc 1 602 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mo, mo
# p_pspr.c:606:     an = mo->angle;
	.loc 1 606 8
	movq	-24(%rbp), %rax	# mo, tmp87
	movl	56(%rax), %eax	# mo_8(D)->angle, tmp88
	movl	%eax, -4(%rbp)	# tmp88, an
# p_pspr.c:607:     bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
	.loc 1 607 19
	movl	-4(%rbp), %ecx	# an, tmp89
	movq	-24(%rbp), %rax	# mo, tmp90
	movl	$67108864, %edx	#,
	movl	%ecx, %esi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	P_AimLineAttack@PLT	#
# p_pspr.c:607:     bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
	.loc 1 607 17 discriminator 1
	movl	%eax, bulletslope(%rip)	# _1, bulletslope
# p_pspr.c:609:     if (!linetarget)
	.loc 1 609 9
	movq	linetarget(%rip), %rax	# linetarget, linetarget.14_2
# p_pspr.c:609:     if (!linetarget)
	.loc 1 609 8
	testq	%rax, %rax	# linetarget.14_2
	jne	.L75	#,
# p_pspr.c:611: 	an += 1<<26;
	.loc 1 611 5
	addl	$67108864, -4(%rbp)	#, an
# p_pspr.c:612: 	bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
	.loc 1 612 16
	movl	-4(%rbp), %ecx	# an, tmp91
	movq	-24(%rbp), %rax	# mo, tmp92
	movl	$67108864, %edx	#,
	movl	%ecx, %esi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	P_AimLineAttack@PLT	#
# p_pspr.c:612: 	bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
	.loc 1 612 14 discriminator 1
	movl	%eax, bulletslope(%rip)	# _3, bulletslope
# p_pspr.c:613: 	if (!linetarget)
	.loc 1 613 6
	movq	linetarget(%rip), %rax	# linetarget, linetarget.15_4
# p_pspr.c:613: 	if (!linetarget)
	.loc 1 613 5
	testq	%rax, %rax	# linetarget.15_4
	jne	.L75	#,
# p_pspr.c:615: 	    an -= 2<<26;
	.loc 1 615 9
	subl	$134217728, -4(%rbp)	#, an
# p_pspr.c:616: 	    bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
	.loc 1 616 20
	movl	-4(%rbp), %ecx	# an, tmp93
	movq	-24(%rbp), %rax	# mo, tmp94
	movl	$67108864, %edx	#,
	movl	%ecx, %esi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	P_AimLineAttack@PLT	#
# p_pspr.c:616: 	    bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
	.loc 1 616 18 discriminator 1
	movl	%eax, bulletslope(%rip)	# _5, bulletslope
.L75:
# p_pspr.c:619: }
	.loc 1 619 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	P_BulletSlope, .-P_BulletSlope
	.globl	P_GunShot
	.type	P_GunShot, @function
P_GunShot:
.LFB18:
	.loc 1 629 1
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
	movq	%rdi, -40(%rbp)	# mo, mo
	movl	%esi, -44(%rbp)	# accurate, accurate
# p_pspr.c:633:     damage = 5*(P_Random ()%3+1);
	.loc 1 633 17
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _1
# p_pspr.c:633:     damage = 5*(P_Random ()%3+1);
	.loc 1 633 28 discriminator 1
	movslq	%ecx, %rax	# _1, tmp91
	imulq	$1431655766, %rax, %rax	#, tmp91, tmp92
	shrq	$32, %rax	#, tmp92
	movq	%rax, %rdx	# tmp92, tmp93
	movl	%ecx, %eax	# _1, tmp94
	sarl	$31, %eax	#, tmp94
	subl	%eax, %edx	# tmp94, _2
	movl	%edx, %eax	# _2, tmp95
	addl	%eax, %eax	# tmp95
	addl	%edx, %eax	# _2, tmp95
	subl	%eax, %ecx	# tmp95, _1
	movl	%ecx, %edx	# _1, _2
# p_pspr.c:633:     damage = 5*(P_Random ()%3+1);
	.loc 1 633 30 discriminator 1
	addl	$1, %edx	#, _3
# p_pspr.c:633:     damage = 5*(P_Random ()%3+1);
	.loc 1 633 12 discriminator 1
	movl	%edx, %eax	# _3, tmp96
	sall	$2, %eax	#, tmp96
	addl	%edx, %eax	# _3, tmp97
	movl	%eax, -20(%rbp)	# tmp97, damage
# p_pspr.c:634:     angle = mo->angle;
	.loc 1 634 11
	movq	-40(%rbp), %rax	# mo, tmp98
	movl	56(%rax), %eax	# mo_14(D)->angle, tmp99
	movl	%eax, -24(%rbp)	# tmp99, angle
# p_pspr.c:636:     if (!accurate)
	.loc 1 636 8
	cmpl	$0, -44(%rbp)	#, accurate
	jne	.L77	#,
# p_pspr.c:637: 	angle += (P_Random()-P_Random())<<18;
	.loc 1 637 12
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _4
# p_pspr.c:637: 	angle += (P_Random()-P_Random())<<18;
	.loc 1 637 23 discriminator 1
	call	P_Random@PLT	#
# p_pspr.c:637: 	angle += (P_Random()-P_Random())<<18;
	.loc 1 637 22 discriminator 2
	subl	%eax, %ebx	# _5, _4
	movl	%ebx, %edx	# _4, _6
# p_pspr.c:637: 	angle += (P_Random()-P_Random())<<18;
	.loc 1 637 34 discriminator 2
	movl	%edx, %eax	# _6, _6
	sall	$18, %eax	#, _6
# p_pspr.c:637: 	angle += (P_Random()-P_Random())<<18;
	.loc 1 637 8 discriminator 2
	addl	%eax, -24(%rbp)	# _7, angle
.L77:
# p_pspr.c:639:     P_LineAttack (mo, angle, MISSILERANGE, bulletslope, damage);
	.loc 1 639 5
	movl	bulletslope(%rip), %edx	# bulletslope, bulletslope.16_8
	movl	-20(%rbp), %ecx	# damage, tmp100
	movl	-24(%rbp), %esi	# angle, tmp101
	movq	-40(%rbp), %rax	# mo, tmp102
	movl	%ecx, %r8d	# tmp100,
	movl	%edx, %ecx	# bulletslope.16_8,
	movl	$134217728, %edx	#,
	movq	%rax, %rdi	# tmp102,
	call	P_LineAttack@PLT	#
# p_pspr.c:640: }
	.loc 1 640 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	P_GunShot, .-P_GunShot
	.globl	A_FirePistol
	.type	A_FirePistol, @function
A_FirePistol:
.LFB19:
	.loc 1 650 1
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
# p_pspr.c:651:     S_StartSound (player->mo, sfx_pistol);
	.loc 1 651 25
	movq	-8(%rbp), %rax	# player, tmp96
	movq	(%rax), %rax	# player_16(D)->mo, _1
# p_pspr.c:651:     S_StartSound (player->mo, sfx_pistol);
	.loc 1 651 5
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_pspr.c:653:     P_SetMobjState (player->mo, S_PLAY_ATK2);
	.loc 1 653 5
	movq	-8(%rbp), %rax	# player, tmp97
	movq	(%rax), %rax	# player_16(D)->mo, _2
	movl	$155, %esi	#,
	movq	%rax, %rdi	# _2,
	call	P_SetMobjState@PLT	#
# p_pspr.c:654:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 654 35
	movq	-8(%rbp), %rax	# player, tmp98
	movl	116(%rax), %eax	# player_16(D)->readyweapon, _3
# p_pspr.c:654:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 654 49
	movl	%eax, %edx	# _3, tmp99
	movq	%rdx, %rax	# tmp99, tmp101
	addq	%rax, %rax	# tmp101
	addq	%rdx, %rax	# tmp99, tmp101
	salq	$3, %rax	#, tmp102
	movq	%rax, %rdx	# tmp101, tmp100
	leaq	weaponinfo(%rip), %rax	#, tmp103
	movl	(%rdx,%rax), %esi	# weaponinfo[_3].ammo, _4
# p_pspr.c:654:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 654 17
	movq	-8(%rbp), %rax	# player, tmp104
	movl	%esi, %edx	# _4, tmp105
	addq	$40, %rdx	#, tmp106
	movl	(%rax,%rdx,4), %eax	# player_16(D)->ammo[_4], _5
# p_pspr.c:654:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 654 55
	leal	-1(%rax), %ecx	#, _6
	movq	-8(%rbp), %rax	# player, tmp107
	movl	%esi, %edx	# _4, tmp108
	addq	$40, %rdx	#, tmp109
	movl	%ecx, (%rax,%rdx,4)	# _6, player_16(D)->ammo[_4]
# p_pspr.c:658: 		  weaponinfo[player->readyweapon].flashstate);
	.loc 1 658 22
	movq	-8(%rbp), %rax	# player, tmp110
	movl	116(%rax), %eax	# player_16(D)->readyweapon, _7
# p_pspr.c:658: 		  weaponinfo[player->readyweapon].flashstate);
	.loc 1 658 36
	movl	%eax, %edx	# _7, tmp111
	movq	%rdx, %rax	# tmp111, tmp113
	addq	%rax, %rax	# tmp113
	addq	%rdx, %rax	# tmp111, tmp113
	salq	$3, %rax	#, tmp114
	movq	%rax, %rdx	# tmp113, tmp112
	leaq	20+weaponinfo(%rip), %rax	#, tmp115
	movl	(%rdx,%rax), %eax	# weaponinfo[_7].flashstate, _8
# p_pspr.c:656:     P_SetPsprite (player,
	.loc 1 656 5
	movl	%eax, %edx	# _8, _9
	movq	-8(%rbp), %rax	# player, tmp116
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	P_SetPsprite	#
# p_pspr.c:660:     P_BulletSlope (player->mo);
	.loc 1 660 5
	movq	-8(%rbp), %rax	# player, tmp117
	movq	(%rax), %rax	# player_16(D)->mo, _10
	movq	%rax, %rdi	# _10,
	call	P_BulletSlope	#
# p_pspr.c:661:     P_GunShot (player->mo, !player->refire);
	.loc 1 661 35
	movq	-8(%rbp), %rax	# player, tmp118
	movl	204(%rax), %eax	# player_16(D)->refire, _11
# p_pspr.c:661:     P_GunShot (player->mo, !player->refire);
	.loc 1 661 5
	testl	%eax, %eax	# _11
	sete	%al	#, _12
	movzbl	%al, %edx	# _12, _13
	movq	-8(%rbp), %rax	# player, tmp119
	movq	(%rax), %rax	# player_16(D)->mo, _14
	movl	%edx, %esi	# _13,
	movq	%rax, %rdi	# _14,
	call	P_GunShot	#
# p_pspr.c:662: }
	.loc 1 662 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	A_FirePistol, .-A_FirePistol
	.globl	A_FireShotgun
	.type	A_FireShotgun, @function
A_FireShotgun:
.LFB20:
	.loc 1 672 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
	movq	%rsi, -32(%rbp)	# psp, psp
# p_pspr.c:675:     S_StartSound (player->mo, sfx_shotgn);
	.loc 1 675 25
	movq	-24(%rbp), %rax	# player, tmp93
	movq	(%rax), %rax	# player_15(D)->mo, _1
# p_pspr.c:675:     S_StartSound (player->mo, sfx_shotgn);
	.loc 1 675 5
	movl	$2, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_pspr.c:676:     P_SetMobjState (player->mo, S_PLAY_ATK2);
	.loc 1 676 5
	movq	-24(%rbp), %rax	# player, tmp94
	movq	(%rax), %rax	# player_15(D)->mo, _2
	movl	$155, %esi	#,
	movq	%rax, %rdi	# _2,
	call	P_SetMobjState@PLT	#
# p_pspr.c:678:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 678 35
	movq	-24(%rbp), %rax	# player, tmp95
	movl	116(%rax), %eax	# player_15(D)->readyweapon, _3
# p_pspr.c:678:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 678 49
	movl	%eax, %edx	# _3, tmp96
	movq	%rdx, %rax	# tmp96, tmp98
	addq	%rax, %rax	# tmp98
	addq	%rdx, %rax	# tmp96, tmp98
	salq	$3, %rax	#, tmp99
	movq	%rax, %rdx	# tmp98, tmp97
	leaq	weaponinfo(%rip), %rax	#, tmp100
	movl	(%rdx,%rax), %esi	# weaponinfo[_3].ammo, _4
# p_pspr.c:678:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 678 17
	movq	-24(%rbp), %rax	# player, tmp101
	movl	%esi, %edx	# _4, tmp102
	addq	$40, %rdx	#, tmp103
	movl	(%rax,%rdx,4), %eax	# player_15(D)->ammo[_4], _5
# p_pspr.c:678:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 678 55
	leal	-1(%rax), %ecx	#, _6
	movq	-24(%rbp), %rax	# player, tmp104
	movl	%esi, %edx	# _4, tmp105
	addq	$40, %rdx	#, tmp106
	movl	%ecx, (%rax,%rdx,4)	# _6, player_15(D)->ammo[_4]
# p_pspr.c:682: 		  weaponinfo[player->readyweapon].flashstate);
	.loc 1 682 22
	movq	-24(%rbp), %rax	# player, tmp107
	movl	116(%rax), %eax	# player_15(D)->readyweapon, _7
# p_pspr.c:682: 		  weaponinfo[player->readyweapon].flashstate);
	.loc 1 682 36
	movl	%eax, %edx	# _7, tmp108
	movq	%rdx, %rax	# tmp108, tmp110
	addq	%rax, %rax	# tmp110
	addq	%rdx, %rax	# tmp108, tmp110
	salq	$3, %rax	#, tmp111
	movq	%rax, %rdx	# tmp110, tmp109
	leaq	20+weaponinfo(%rip), %rax	#, tmp112
	movl	(%rdx,%rax), %eax	# weaponinfo[_7].flashstate, _8
# p_pspr.c:680:     P_SetPsprite (player,
	.loc 1 680 5
	movl	%eax, %edx	# _8, _9
	movq	-24(%rbp), %rax	# player, tmp113
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	P_SetPsprite	#
# p_pspr.c:684:     P_BulletSlope (player->mo);
	.loc 1 684 5
	movq	-24(%rbp), %rax	# player, tmp114
	movq	(%rax), %rax	# player_15(D)->mo, _10
	movq	%rax, %rdi	# _10,
	call	P_BulletSlope	#
# p_pspr.c:686:     for (i=0 ; i<7 ; i++)
	.loc 1 686 11
	movl	$0, -4(%rbp)	#, i
# p_pspr.c:686:     for (i=0 ; i<7 ; i++)
	.loc 1 686 5
	jmp	.L80	#
.L81:
# p_pspr.c:687: 	P_GunShot (player->mo, false);
	.loc 1 687 2
	movq	-24(%rbp), %rax	# player, tmp115
	movq	(%rax), %rax	# player_15(D)->mo, _11
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _11,
	call	P_GunShot	#
# p_pspr.c:686:     for (i=0 ; i<7 ; i++)
	.loc 1 686 23 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L80:
# p_pspr.c:686:     for (i=0 ; i<7 ; i++)
	.loc 1 686 17 discriminator 1
	cmpl	$6, -4(%rbp)	#, i
	jle	.L81	#,
# p_pspr.c:688: }
	.loc 1 688 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	A_FireShotgun, .-A_FireShotgun
	.globl	A_FireShotgun2
	.type	A_FireShotgun2, @function
A_FireShotgun2:
.LFB21:
	.loc 1 699 1
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
	movq	%rsi, -48(%rbp)	# psp, psp
# p_pspr.c:705:     S_StartSound (player->mo, sfx_dshtgn);
	.loc 1 705 25
	movq	-40(%rbp), %rax	# player, tmp110
	movq	(%rax), %rax	# player_31(D)->mo, _1
# p_pspr.c:705:     S_StartSound (player->mo, sfx_dshtgn);
	.loc 1 705 5
	movl	$4, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_pspr.c:706:     P_SetMobjState (player->mo, S_PLAY_ATK2);
	.loc 1 706 5
	movq	-40(%rbp), %rax	# player, tmp111
	movq	(%rax), %rax	# player_31(D)->mo, _2
	movl	$155, %esi	#,
	movq	%rax, %rdi	# _2,
	call	P_SetMobjState@PLT	#
# p_pspr.c:708:     player->ammo[weaponinfo[player->readyweapon].ammo]-=2;
	.loc 1 708 35
	movq	-40(%rbp), %rax	# player, tmp112
	movl	116(%rax), %eax	# player_31(D)->readyweapon, _3
# p_pspr.c:708:     player->ammo[weaponinfo[player->readyweapon].ammo]-=2;
	.loc 1 708 49
	movl	%eax, %edx	# _3, tmp113
	movq	%rdx, %rax	# tmp113, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp113, tmp115
	salq	$3, %rax	#, tmp116
	movq	%rax, %rdx	# tmp115, tmp114
	leaq	weaponinfo(%rip), %rax	#, tmp117
	movl	(%rdx,%rax), %edx	# weaponinfo[_3].ammo, _4
# p_pspr.c:708:     player->ammo[weaponinfo[player->readyweapon].ammo]-=2;
	.loc 1 708 17
	movq	-40(%rbp), %rax	# player, tmp118
	movl	%edx, %edx	# _4, tmp119
	addq	$40, %rdx	#, tmp120
	movl	(%rax,%rdx,4), %edx	# player_31(D)->ammo[_4], _5
# p_pspr.c:708:     player->ammo[weaponinfo[player->readyweapon].ammo]-=2;
	.loc 1 708 35
	movq	-40(%rbp), %rax	# player, tmp121
	movl	116(%rax), %eax	# player_31(D)->readyweapon, _6
# p_pspr.c:708:     player->ammo[weaponinfo[player->readyweapon].ammo]-=2;
	.loc 1 708 49
	movl	%eax, %ecx	# _6, tmp122
	movq	%rcx, %rax	# tmp122, tmp124
	addq	%rax, %rax	# tmp124
	addq	%rcx, %rax	# tmp122, tmp124
	salq	$3, %rax	#, tmp125
	movq	%rax, %rcx	# tmp124, tmp123
	leaq	weaponinfo(%rip), %rax	#, tmp126
	movl	(%rcx,%rax), %esi	# weaponinfo[_6].ammo, _7
# p_pspr.c:708:     player->ammo[weaponinfo[player->readyweapon].ammo]-=2;
	.loc 1 708 55
	leal	-2(%rdx), %ecx	#, _8
	movq	-40(%rbp), %rax	# player, tmp127
	movl	%esi, %edx	# _7, tmp128
	addq	$40, %rdx	#, tmp129
	movl	%ecx, (%rax,%rdx,4)	# _8, player_31(D)->ammo[_7]
# p_pspr.c:712: 		  weaponinfo[player->readyweapon].flashstate);
	.loc 1 712 22
	movq	-40(%rbp), %rax	# player, tmp130
	movl	116(%rax), %eax	# player_31(D)->readyweapon, _9
# p_pspr.c:712: 		  weaponinfo[player->readyweapon].flashstate);
	.loc 1 712 36
	movl	%eax, %edx	# _9, tmp131
	movq	%rdx, %rax	# tmp131, tmp133
	addq	%rax, %rax	# tmp133
	addq	%rdx, %rax	# tmp131, tmp133
	salq	$3, %rax	#, tmp134
	movq	%rax, %rdx	# tmp133, tmp132
	leaq	20+weaponinfo(%rip), %rax	#, tmp135
	movl	(%rdx,%rax), %eax	# weaponinfo[_9].flashstate, _10
# p_pspr.c:710:     P_SetPsprite (player,
	.loc 1 710 5
	movl	%eax, %edx	# _10, _11
	movq	-40(%rbp), %rax	# player, tmp136
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	P_SetPsprite	#
# p_pspr.c:714:     P_BulletSlope (player->mo);
	.loc 1 714 5
	movq	-40(%rbp), %rax	# player, tmp137
	movq	(%rax), %rax	# player_31(D)->mo, _12
	movq	%rax, %rdi	# _12,
	call	P_BulletSlope	#
# p_pspr.c:716:     for (i=0 ; i<20 ; i++)
	.loc 1 716 11
	movl	$0, -28(%rbp)	#, i
# p_pspr.c:716:     for (i=0 ; i<20 ; i++)
	.loc 1 716 5
	jmp	.L83	#
.L84:
# p_pspr.c:718: 	damage = 5*(P_Random ()%3+1);
	.loc 1 718 14
	call	P_Random@PLT	#
	movl	%eax, %ecx	#, _13
# p_pspr.c:718: 	damage = 5*(P_Random ()%3+1);
	.loc 1 718 25 discriminator 1
	movslq	%ecx, %rax	# _13, tmp138
	imulq	$1431655766, %rax, %rax	#, tmp138, tmp139
	shrq	$32, %rax	#, tmp139
	movq	%rax, %rdx	# tmp139, tmp140
	movl	%ecx, %eax	# _13, tmp141
	sarl	$31, %eax	#, tmp141
	subl	%eax, %edx	# tmp141, _14
	movl	%edx, %eax	# _14, tmp142
	addl	%eax, %eax	# tmp142
	addl	%edx, %eax	# _14, tmp142
	subl	%eax, %ecx	# tmp142, _13
	movl	%ecx, %edx	# _13, _14
# p_pspr.c:718: 	damage = 5*(P_Random ()%3+1);
	.loc 1 718 27 discriminator 1
	addl	$1, %edx	#, _15
# p_pspr.c:718: 	damage = 5*(P_Random ()%3+1);
	.loc 1 718 9 discriminator 1
	movl	%edx, %eax	# _15, tmp143
	sall	$2, %eax	#, tmp143
	addl	%edx, %eax	# _15, tmp144
	movl	%eax, -24(%rbp)	# tmp144, damage
# p_pspr.c:719: 	angle = player->mo->angle;
	.loc 1 719 16
	movq	-40(%rbp), %rax	# player, tmp145
	movq	(%rax), %rax	# player_31(D)->mo, _16
# p_pspr.c:719: 	angle = player->mo->angle;
	.loc 1 719 8
	movl	56(%rax), %eax	# _16->angle, tmp146
	movl	%eax, -20(%rbp)	# tmp146, angle
# p_pspr.c:720: 	angle += (P_Random()-P_Random())<<19;
	.loc 1 720 12
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _17
# p_pspr.c:720: 	angle += (P_Random()-P_Random())<<19;
	.loc 1 720 23 discriminator 1
	call	P_Random@PLT	#
# p_pspr.c:720: 	angle += (P_Random()-P_Random())<<19;
	.loc 1 720 22 discriminator 2
	subl	%eax, %ebx	# _18, _17
	movl	%ebx, %edx	# _17, _19
# p_pspr.c:720: 	angle += (P_Random()-P_Random())<<19;
	.loc 1 720 34 discriminator 2
	movl	%edx, %eax	# _19, _19
	sall	$19, %eax	#, _19
# p_pspr.c:720: 	angle += (P_Random()-P_Random())<<19;
	.loc 1 720 8 discriminator 2
	addl	%eax, -20(%rbp)	# _20, angle
# p_pspr.c:724: 		      bulletslope + ((P_Random()-P_Random())<<5), damage);
	.loc 1 724 25
	call	P_Random@PLT	#
	movl	%eax, %ebx	#, _21
# p_pspr.c:724: 		      bulletslope + ((P_Random()-P_Random())<<5), damage);
	.loc 1 724 36 discriminator 1
	call	P_Random@PLT	#
# p_pspr.c:724: 		      bulletslope + ((P_Random()-P_Random())<<5), damage);
	.loc 1 724 35 discriminator 2
	subl	%eax, %ebx	# _22, _21
	movl	%ebx, %edx	# _21, _23
# p_pspr.c:724: 		      bulletslope + ((P_Random()-P_Random())<<5), damage);
	.loc 1 724 47 discriminator 2
	sall	$5, %edx	#, _24
# p_pspr.c:721: 	P_LineAttack (player->mo,
	.loc 1 721 2
	movl	bulletslope(%rip), %eax	# bulletslope, bulletslope.17_25
	addl	%eax, %edx	# bulletslope.17_25, _26
	movq	-40(%rbp), %rax	# player, tmp147
	movq	(%rax), %rax	# player_31(D)->mo, _27
	movl	-24(%rbp), %ecx	# damage, tmp148
	movl	-20(%rbp), %esi	# angle, tmp149
	movl	%ecx, %r8d	# tmp148,
	movl	%edx, %ecx	# _26,
	movl	$134217728, %edx	#,
	movq	%rax, %rdi	# _27,
	call	P_LineAttack@PLT	#
# p_pspr.c:716:     for (i=0 ; i<20 ; i++)
	.loc 1 716 24 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L83:
# p_pspr.c:716:     for (i=0 ; i<20 ; i++)
	.loc 1 716 17 discriminator 1
	cmpl	$19, -28(%rbp)	#, i
	jle	.L84	#,
# p_pspr.c:726: }
	.loc 1 726 1
	nop	
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	A_FireShotgun2, .-A_FireShotgun2
	.globl	A_FireCGun
	.type	A_FireCGun, @function
A_FireCGun:
.LFB22:
	.loc 1 736 1
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
# p_pspr.c:737:     S_StartSound (player->mo, sfx_pistol);
	.loc 1 737 25
	movq	-8(%rbp), %rax	# player, tmp105
	movq	(%rax), %rax	# player_26(D)->mo, _1
# p_pspr.c:737:     S_StartSound (player->mo, sfx_pistol);
	.loc 1 737 5
	movl	$1, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_pspr.c:739:     if (!player->ammo[weaponinfo[player->readyweapon].ammo])
	.loc 1 739 40
	movq	-8(%rbp), %rax	# player, tmp106
	movl	116(%rax), %eax	# player_26(D)->readyweapon, _2
# p_pspr.c:739:     if (!player->ammo[weaponinfo[player->readyweapon].ammo])
	.loc 1 739 54
	movl	%eax, %edx	# _2, tmp107
	movq	%rdx, %rax	# tmp107, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp107, tmp109
	salq	$3, %rax	#, tmp110
	movq	%rax, %rdx	# tmp109, tmp108
	leaq	weaponinfo(%rip), %rax	#, tmp111
	movl	(%rdx,%rax), %edx	# weaponinfo[_2].ammo, _3
# p_pspr.c:739:     if (!player->ammo[weaponinfo[player->readyweapon].ammo])
	.loc 1 739 22
	movq	-8(%rbp), %rax	# player, tmp112
	movl	%edx, %edx	# _3, tmp113
	addq	$40, %rdx	#, tmp114
	movl	(%rax,%rdx,4), %eax	# player_26(D)->ammo[_3], _4
# p_pspr.c:739:     if (!player->ammo[weaponinfo[player->readyweapon].ammo])
	.loc 1 739 8
	testl	%eax, %eax	# _4
	je	.L88	#,
# p_pspr.c:742:     P_SetMobjState (player->mo, S_PLAY_ATK2);
	.loc 1 742 5
	movq	-8(%rbp), %rax	# player, tmp115
	movq	(%rax), %rax	# player_26(D)->mo, _5
	movl	$155, %esi	#,
	movq	%rax, %rdi	# _5,
	call	P_SetMobjState@PLT	#
# p_pspr.c:743:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 743 35
	movq	-8(%rbp), %rax	# player, tmp116
	movl	116(%rax), %eax	# player_26(D)->readyweapon, _6
# p_pspr.c:743:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 743 49
	movl	%eax, %edx	# _6, tmp117
	movq	%rdx, %rax	# tmp117, tmp119
	addq	%rax, %rax	# tmp119
	addq	%rdx, %rax	# tmp117, tmp119
	salq	$3, %rax	#, tmp120
	movq	%rax, %rdx	# tmp119, tmp118
	leaq	weaponinfo(%rip), %rax	#, tmp121
	movl	(%rdx,%rax), %esi	# weaponinfo[_6].ammo, _7
# p_pspr.c:743:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 743 17
	movq	-8(%rbp), %rax	# player, tmp122
	movl	%esi, %edx	# _7, tmp123
	addq	$40, %rdx	#, tmp124
	movl	(%rax,%rdx,4), %eax	# player_26(D)->ammo[_7], _8
# p_pspr.c:743:     player->ammo[weaponinfo[player->readyweapon].ammo]--;
	.loc 1 743 55
	leal	-1(%rax), %ecx	#, _9
	movq	-8(%rbp), %rax	# player, tmp125
	movl	%esi, %edx	# _7, tmp126
	addq	$40, %rdx	#, tmp127
	movl	%ecx, (%rax,%rdx,4)	# _9, player_26(D)->ammo[_7]
# p_pspr.c:748: 		  + psp->state
	.loc 1 748 10
	movq	-16(%rbp), %rax	# psp, tmp128
	movq	(%rax), %rcx	# psp_30(D)->state, _10
# p_pspr.c:747: 		  weaponinfo[player->readyweapon].flashstate
	.loc 1 747 22
	movq	-8(%rbp), %rax	# player, tmp129
	movl	116(%rax), %eax	# player_26(D)->readyweapon, _11
# p_pspr.c:747: 		  weaponinfo[player->readyweapon].flashstate
	.loc 1 747 36
	movl	%eax, %edx	# _11, tmp130
	movq	%rdx, %rax	# tmp130, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# tmp130, tmp132
	salq	$3, %rax	#, tmp133
	movq	%rax, %rdx	# tmp132, tmp131
	leaq	20+weaponinfo(%rip), %rax	#, tmp134
	movl	(%rdx,%rax), %eax	# weaponinfo[_11].flashstate, _12
	movslq	%eax, %rdx	# _12, _13
# p_pspr.c:748: 		  + psp->state
	.loc 1 748 5
	movq	%rdx, %rax	# _13, tmp135
	salq	$3, %rax	#, tmp136
	subq	%rdx, %rax	# _13, tmp135
	salq	$3, %rax	#, tmp137
	leaq	(%rcx,%rax), %rdx	#, _15
# p_pspr.c:749: 		  - &states[S_CHAIN1] );
	.loc 1 749 5
	leaq	2912+states(%rip), %rax	#, tmp138
	subq	%rax, %rdx	# tmp138, _16
	sarq	$3, %rdx	#, tmp139
	movabsq	$7905747460161236407, %rax	#, tmp141
	imulq	%rdx, %rax	# tmp139, tmp140
# p_pspr.c:745:     P_SetPsprite (player,
	.loc 1 745 5
	movl	%eax, %edx	# _17, _18
	movq	-8(%rbp), %rax	# player, tmp142
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	P_SetPsprite	#
# p_pspr.c:751:     P_BulletSlope (player->mo);
	.loc 1 751 5
	movq	-8(%rbp), %rax	# player, tmp143
	movq	(%rax), %rax	# player_26(D)->mo, _19
	movq	%rax, %rdi	# _19,
	call	P_BulletSlope	#
# p_pspr.c:753:     P_GunShot (player->mo, !player->refire);
	.loc 1 753 35
	movq	-8(%rbp), %rax	# player, tmp144
	movl	204(%rax), %eax	# player_26(D)->refire, _20
# p_pspr.c:753:     P_GunShot (player->mo, !player->refire);
	.loc 1 753 5
	testl	%eax, %eax	# _20
	sete	%al	#, _21
	movzbl	%al, %edx	# _21, _22
	movq	-8(%rbp), %rax	# player, tmp145
	movq	(%rax), %rax	# player_26(D)->mo, _23
	movl	%edx, %esi	# _22,
	movq	%rax, %rdi	# _23,
	call	P_GunShot	#
	jmp	.L85	#
.L88:
# p_pspr.c:740: 	return;
	.loc 1 740 2
	nop	
.L85:
# p_pspr.c:754: }
	.loc 1 754 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	A_FireCGun, .-A_FireCGun
	.globl	A_Light0
	.type	A_Light0, @function
A_Light0:
.LFB23:
	.loc 1 762 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# player, player
	movq	%rsi, -16(%rbp)	# psp, psp
# p_pspr.c:763:     player->extralight = 0;
	.loc 1 763 24
	movq	-8(%rbp), %rax	# player, tmp82
	movl	$0, 248(%rax)	#, player_2(D)->extralight
# p_pspr.c:764: }
	.loc 1 764 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	A_Light0, .-A_Light0
	.globl	A_Light1
	.type	A_Light1, @function
A_Light1:
.LFB24:
	.loc 1 767 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# player, player
	movq	%rsi, -16(%rbp)	# psp, psp
# p_pspr.c:768:     player->extralight = 1;
	.loc 1 768 24
	movq	-8(%rbp), %rax	# player, tmp82
	movl	$1, 248(%rax)	#, player_2(D)->extralight
# p_pspr.c:769: }
	.loc 1 769 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	A_Light1, .-A_Light1
	.globl	A_Light2
	.type	A_Light2, @function
A_Light2:
.LFB25:
	.loc 1 772 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# player, player
	movq	%rsi, -16(%rbp)	# psp, psp
# p_pspr.c:773:     player->extralight = 2;
	.loc 1 773 24
	movq	-8(%rbp), %rax	# player, tmp82
	movl	$2, 248(%rax)	#, player_2(D)->extralight
# p_pspr.c:774: }
	.loc 1 774 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	A_Light2, .-A_Light2
	.globl	A_BFGSpray
	.type	A_BFGSpray, @function
A_BFGSpray:
.LFB26:
	.loc 1 782 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mo, mo
# p_pspr.c:789:     for (i=0 ; i<40 ; i++)
	.loc 1 789 11
	movl	$0, -16(%rbp)	#, i
# p_pspr.c:789:     for (i=0 ; i<40 ; i++)
	.loc 1 789 5
	jmp	.L93	#
.L98:
# p_pspr.c:791: 	an = mo->angle - ANG90/2 + ANG90/40*i;
	.loc 1 791 9
	movq	-24(%rbp), %rax	# mo, tmp104
	movl	56(%rax), %eax	# mo_30(D)->angle, _1
# p_pspr.c:791: 	an = mo->angle - ANG90/2 + ANG90/40*i;
	.loc 1 791 37
	movl	-16(%rbp), %edx	# i, tmp105
	imull	$26843545, %edx, %edx	#, tmp105, _2
# p_pspr.c:791: 	an = mo->angle - ANG90/2 + ANG90/40*i;
	.loc 1 791 27
	addl	%edx, %eax	# _3, _4
# p_pspr.c:791: 	an = mo->angle - ANG90/2 + ANG90/40*i;
	.loc 1 791 5
	subl	$536870912, %eax	#, tmp106
	movl	%eax, -4(%rbp)	# tmp106, an
# p_pspr.c:795: 	P_AimLineAttack (mo->target, an, 16*64*FRACUNIT);
	.loc 1 795 21
	movq	-24(%rbp), %rax	# mo, tmp107
	movq	176(%rax), %rax	# mo_30(D)->target, _5
# p_pspr.c:795: 	P_AimLineAttack (mo->target, an, 16*64*FRACUNIT);
	.loc 1 795 2
	movl	-4(%rbp), %ecx	# an, tmp108
	movl	$67108864, %edx	#,
	movl	%ecx, %esi	# tmp108,
	movq	%rax, %rdi	# _5,
	call	P_AimLineAttack@PLT	#
# p_pspr.c:797: 	if (!linetarget)
	.loc 1 797 6
	movq	linetarget(%rip), %rax	# linetarget, linetarget.18_6
# p_pspr.c:797: 	if (!linetarget)
	.loc 1 797 5
	testq	%rax, %rax	# linetarget.18_6
	je	.L99	#,
# p_pspr.c:802: 		     linetarget->z + (linetarget->height>>2),
	.loc 1 802 18
	movq	linetarget(%rip), %rax	# linetarget, linetarget.19_7
	movl	32(%rax), %edx	# linetarget.19_7->z, _8
# p_pspr.c:802: 		     linetarget->z + (linetarget->height>>2),
	.loc 1 802 35
	movq	linetarget(%rip), %rax	# linetarget, linetarget.20_9
	movl	108(%rax), %eax	# linetarget.20_9->height, _10
# p_pspr.c:802: 		     linetarget->z + (linetarget->height>>2),
	.loc 1 802 43
	sarl	$2, %eax	#, _11
# p_pspr.c:800: 	P_SpawnMobj (linetarget->x,
	.loc 1 800 2
	addl	%eax, %edx	# _11, _12
# p_pspr.c:801: 		     linetarget->y,
	.loc 1 801 18
	movq	linetarget(%rip), %rax	# linetarget, linetarget.21_13
# p_pspr.c:800: 	P_SpawnMobj (linetarget->x,
	.loc 1 800 2
	movl	28(%rax), %esi	# linetarget.21_13->y, _14
# p_pspr.c:800: 	P_SpawnMobj (linetarget->x,
	.loc 1 800 25
	movq	linetarget(%rip), %rax	# linetarget, linetarget.22_15
# p_pspr.c:800: 	P_SpawnMobj (linetarget->x,
	.loc 1 800 2
	movl	24(%rax), %eax	# linetarget.22_15->x, _16
	movl	$42, %ecx	#,
	movl	%eax, %edi	# _16,
	call	P_SpawnMobj@PLT	#
# p_pspr.c:805: 	damage = 0;
	.loc 1 805 9
	movl	$0, -8(%rbp)	#, damage
# p_pspr.c:806: 	for (j=0;j<15;j++)
	.loc 1 806 8
	movl	$0, -12(%rbp)	#, j
# p_pspr.c:806: 	for (j=0;j<15;j++)
	.loc 1 806 2
	jmp	.L96	#
.L97:
# p_pspr.c:807: 	    damage += (P_Random()&7) + 1;
	.loc 1 807 17
	call	P_Random@PLT	#
# p_pspr.c:807: 	    damage += (P_Random()&7) + 1;
	.loc 1 807 27 discriminator 1
	andl	$7, %eax	#, _18
# p_pspr.c:807: 	    damage += (P_Random()&7) + 1;
	.loc 1 807 31 discriminator 1
	addl	$1, %eax	#, _38
# p_pspr.c:807: 	    damage += (P_Random()&7) + 1;
	.loc 1 807 13 discriminator 1
	addl	%eax, -8(%rbp)	# _38, damage
# p_pspr.c:806: 	for (j=0;j<15;j++)
	.loc 1 806 17 discriminator 3
	addl	$1, -12(%rbp)	#, j
.L96:
# p_pspr.c:806: 	for (j=0;j<15;j++)
	.loc 1 806 12 discriminator 1
	cmpl	$14, -12(%rbp)	#, j
	jle	.L97	#,
# p_pspr.c:809: 	P_DamageMobj (linetarget, mo->target,mo->target, damage);
	.loc 1 809 41
	movq	-24(%rbp), %rax	# mo, tmp109
	movq	176(%rax), %rdx	# mo_30(D)->target, _19
# p_pspr.c:809: 	P_DamageMobj (linetarget, mo->target,mo->target, damage);
	.loc 1 809 30
	movq	-24(%rbp), %rax	# mo, tmp110
	movq	176(%rax), %rsi	# mo_30(D)->target, _20
# p_pspr.c:809: 	P_DamageMobj (linetarget, mo->target,mo->target, damage);
	.loc 1 809 2
	movq	linetarget(%rip), %rax	# linetarget, linetarget.23_21
	movl	-8(%rbp), %ecx	# damage, tmp111
	movq	%rax, %rdi	# linetarget.23_21,
	call	P_DamageMobj@PLT	#
	jmp	.L95	#
.L99:
# p_pspr.c:798: 	    continue;
	.loc 1 798 6
	nop	
.L95:
# p_pspr.c:789:     for (i=0 ; i<40 ; i++)
	.loc 1 789 24 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L93:
# p_pspr.c:789:     for (i=0 ; i<40 ; i++)
	.loc 1 789 17 discriminator 1
	cmpl	$39, -16(%rbp)	#, i
	jle	.L98	#,
# p_pspr.c:811: }
	.loc 1 811 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	A_BFGSpray, .-A_BFGSpray
	.globl	A_BFGsound
	.type	A_BFGsound, @function
A_BFGsound:
.LFB27:
	.loc 1 821 1
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
# p_pspr.c:822:     S_StartSound (player->mo, sfx_bfg);
	.loc 1 822 25
	movq	-8(%rbp), %rax	# player, tmp83
	movq	(%rax), %rax	# player_3(D)->mo, _1
# p_pspr.c:822:     S_StartSound (player->mo, sfx_bfg);
	.loc 1 822 5
	movl	$9, %esi	#,
	movq	%rax, %rdi	# _1,
	call	S_StartSound@PLT	#
# p_pspr.c:823: }
	.loc 1 823 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	A_BFGsound, .-A_BFGsound
	.globl	P_SetupPsprites
	.type	P_SetupPsprites, @function
P_SetupPsprites:
.LFB28:
	.loc 1 832 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
# p_pspr.c:836:     for (i=0 ; i<NUMPSPRITES ; i++)
	.loc 1 836 11
	movl	$0, -4(%rbp)	#, i
# p_pspr.c:836:     for (i=0 ; i<NUMPSPRITES ; i++)
	.loc 1 836 5
	jmp	.L102	#
.L103:
# p_pspr.c:837: 	player->psprites[i].state = NULL;
	.loc 1 837 28
	movq	-24(%rbp), %rcx	# player, tmp83
	movl	-4(%rbp), %eax	# i, tmp85
	movslq	%eax, %rdx	# tmp85, tmp84
	movq	%rdx, %rax	# tmp84, tmp86
	addq	%rax, %rax	# tmp86
	addq	%rdx, %rax	# tmp84, tmp86
	salq	$3, %rax	#, tmp87
	addq	%rcx, %rax	# tmp83, tmp88
	addq	$264, %rax	#, tmp89
	movq	$0, (%rax)	#, player_6(D)->psprites[i_2].state
# p_pspr.c:836:     for (i=0 ; i<NUMPSPRITES ; i++)
	.loc 1 836 33 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L102:
# p_pspr.c:836:     for (i=0 ; i<NUMPSPRITES ; i++)
	.loc 1 836 17 discriminator 1
	cmpl	$1, -4(%rbp)	#, i
	jle	.L103	#,
# p_pspr.c:840:     player->pendingweapon = player->readyweapon;
	.loc 1 840 35
	movq	-24(%rbp), %rax	# player, tmp90
	movl	116(%rax), %edx	# player_6(D)->readyweapon, _1
# p_pspr.c:840:     player->pendingweapon = player->readyweapon;
	.loc 1 840 27
	movq	-24(%rbp), %rax	# player, tmp91
	movl	%edx, 120(%rax)	# _1, player_6(D)->pendingweapon
# p_pspr.c:841:     P_BringUpWeapon (player);
	.loc 1 841 5
	movq	-24(%rbp), %rax	# player, tmp92
	movq	%rax, %rdi	# tmp92,
	call	P_BringUpWeapon	#
# p_pspr.c:842: }
	.loc 1 842 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE28:
	.size	P_SetupPsprites, .-P_SetupPsprites
	.globl	P_MovePsprites
	.type	P_MovePsprites, @function
P_MovePsprites:
.LFB29:
	.loc 1 852 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# player, player
# p_pspr.c:857:     psp = &player->psprites[0];
	.loc 1 857 9
	movq	-40(%rbp), %rax	# player, tmp93
	addq	$264, %rax	#, tmp92
	movq	%rax, -16(%rbp)	# tmp92, psp
# p_pspr.c:858:     for (i=0 ; i<NUMPSPRITES ; i++, psp++)
	.loc 1 858 11
	movl	$0, -20(%rbp)	#, i
# p_pspr.c:858:     for (i=0 ; i<NUMPSPRITES ; i++, psp++)
	.loc 1 858 5
	jmp	.L105	#
.L107:
# p_pspr.c:861: 	if ( (state = psp->state) )	
	.loc 1 861 14
	movq	-16(%rbp), %rax	# psp, tmp94
	movq	(%rax), %rax	# psp_10->state, tmp95
	movq	%rax, -8(%rbp)	# tmp95, state
# p_pspr.c:861: 	if ( (state = psp->state) )	
	.loc 1 861 5
	cmpq	$0, -8(%rbp)	#, state
	je	.L106	#,
# p_pspr.c:866: 	    if (psp->tics != -1)	
	.loc 1 866 13
	movq	-16(%rbp), %rax	# psp, tmp96
	movl	8(%rax), %eax	# psp_10->tics, _1
# p_pspr.c:866: 	    if (psp->tics != -1)	
	.loc 1 866 9
	cmpl	$-1, %eax	#, _1
	je	.L106	#,
# p_pspr.c:868: 		psp->tics--;
	.loc 1 868 6
	movq	-16(%rbp), %rax	# psp, tmp97
	movl	8(%rax), %eax	# psp_10->tics, _2
# p_pspr.c:868: 		psp->tics--;
	.loc 1 868 12
	leal	-1(%rax), %edx	#, _3
	movq	-16(%rbp), %rax	# psp, tmp98
	movl	%edx, 8(%rax)	# _3, psp_10->tics
# p_pspr.c:869: 		if (!psp->tics)
	.loc 1 869 11
	movq	-16(%rbp), %rax	# psp, tmp99
	movl	8(%rax), %eax	# psp_10->tics, _4
# p_pspr.c:869: 		if (!psp->tics)
	.loc 1 869 6
	testl	%eax, %eax	# _4
	jne	.L106	#,
# p_pspr.c:870: 		    P_SetPsprite (player, i, psp->state->nextstate);
	.loc 1 870 35
	movq	-16(%rbp), %rax	# psp, tmp100
	movq	(%rax), %rax	# psp_10->state, _5
# p_pspr.c:870: 		    P_SetPsprite (player, i, psp->state->nextstate);
	.loc 1 870 7
	movl	32(%rax), %edx	# _5->nextstate, _6
	movl	-20(%rbp), %ecx	# i, tmp101
	movq	-40(%rbp), %rax	# player, tmp102
	movl	%ecx, %esi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	P_SetPsprite	#
.L106:
# p_pspr.c:858:     for (i=0 ; i<NUMPSPRITES ; i++, psp++)
	.loc 1 858 33 discriminator 2
	addl	$1, -20(%rbp)	#, i
# p_pspr.c:858:     for (i=0 ; i<NUMPSPRITES ; i++, psp++)
	.loc 1 858 40 discriminator 2
	addq	$24, -16(%rbp)	#, psp
.L105:
# p_pspr.c:858:     for (i=0 ; i<NUMPSPRITES ; i++, psp++)
	.loc 1 858 17 discriminator 1
	cmpl	$1, -20(%rbp)	#, i
	jle	.L107	#,
# p_pspr.c:875:     player->psprites[ps_flash].sx = player->psprites[ps_weapon].sx;
	.loc 1 875 64
	movq	-40(%rbp), %rax	# player, tmp103
	movl	276(%rax), %edx	# player_13(D)->psprites[0].sx, _7
# p_pspr.c:875:     player->psprites[ps_flash].sx = player->psprites[ps_weapon].sx;
	.loc 1 875 35
	movq	-40(%rbp), %rax	# player, tmp104
	movl	%edx, 300(%rax)	# _7, player_13(D)->psprites[1].sx
# p_pspr.c:876:     player->psprites[ps_flash].sy = player->psprites[ps_weapon].sy;
	.loc 1 876 64
	movq	-40(%rbp), %rax	# player, tmp105
	movl	280(%rax), %edx	# player_13(D)->psprites[0].sy, _8
# p_pspr.c:876:     player->psprites[ps_flash].sy = player->psprites[ps_weapon].sy;
	.loc 1 876 35
	movq	-40(%rbp), %rax	# player, tmp106
	movl	%edx, 304(%rax)	# _8, player_13(D)->psprites[1].sy
# p_pspr.c:877: }
	.loc 1 877 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	P_MovePsprites, .-P_MovePsprites
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
	.file 13 "d_items.h"
	.file 14 "p_pspr.h"
	.file 15 "d_ticcmd.h"
	.file 16 "p_local.h"
	.file 17 "doomstat.h"
	.file 18 "sounds.h"
	.file 19 "r_main.h"
	.file 20 "s_sound.h"
	.file 21 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3bea
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x24
	.long	.LASF1669
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xe
	.long	0x51
	.long	0x3e
	.uleb128 0x11
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.long	0x2e
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1e
	.long	0x4a
	.uleb128 0x13
	.long	.LASF1633
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x25
	.byte	0x8
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0xb
	.long	0x4a
	.uleb128 0xd
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
	.uleb128 0x6
	.long	.LASF33
	.byte	0x2
	.byte	0x2f
	.byte	0x3
	.long	0xa3
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0x6
	.long	.LASF34
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0x111
	.uleb128 0xd
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
	.uleb128 0x6
	.long	.LASF41
	.byte	0x2
	.byte	0xd2
	.byte	0x3
	.long	0x16c
	.uleb128 0xd
	.long	0x6b
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x1e0
	.uleb128 0x2
	.long	.LASF42
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x1
	.uleb128 0x2
	.long	.LASF44
	.byte	0x2
	.uleb128 0x2
	.long	.LASF45
	.byte	0x3
	.uleb128 0x2
	.long	.LASF46
	.byte	0x4
	.uleb128 0x2
	.long	.LASF47
	.byte	0x5
	.uleb128 0x2
	.long	.LASF48
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x6b
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0x1f9
	.uleb128 0x2
	.long	.LASF49
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF51
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0x1e0
	.uleb128 0x6
	.long	.LASF52
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x74
	.uleb128 0xd
	.long	0x6b
	.byte	0x4
	.byte	0x49
	.byte	0x1
	.long	0x260
	.uleb128 0x2
	.long	.LASF53
	.byte	0x1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x2
	.uleb128 0x2
	.long	.LASF55
	.byte	0x80
	.uleb128 0x2
	.long	.LASF56
	.byte	0x3
	.uleb128 0x2
	.long	.LASF57
	.byte	0x4
	.uleb128 0x2
	.long	.LASF58
	.byte	0x38
	.uleb128 0x2
	.long	.LASF59
	.byte	0x3
	.uleb128 0x2
	.long	.LASF60
	.byte	0x1
	.uleb128 0x2
	.long	.LASF61
	.byte	0x2
	.uleb128 0x2
	.long	.LASF62
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF63
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.long	.LASF64
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.long	.LASF65
	.uleb128 0x6
	.long	.LASF66
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.long	0x90
	.uleb128 0xe
	.long	0x26e
	.long	0x28b
	.uleb128 0x1f
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x6
	.byte	0x3a
	.byte	0x12
	.long	0x27a
	.uleb128 0x16
	.long	.LASF68
	.byte	0x6
	.byte	0x3d
	.byte	0x12
	.long	0x2a3
	.uleb128 0xb
	.long	0x26e
	.uleb128 0x6
	.long	.LASF69
	.byte	0x6
	.byte	0x4e
	.byte	0x12
	.long	0x6b
	.uleb128 0x6
	.long	.LASF70
	.byte	0x7
	.byte	0x29
	.byte	0x11
	.long	0x2c0
	.uleb128 0xb
	.long	0x2c5
	.uleb128 0x27
	.long	0x2cc
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.long	.LASF71
	.byte	0x7
	.byte	0x2a
	.byte	0x11
	.long	0x2d8
	.uleb128 0xb
	.long	0x2dd
	.uleb128 0x20
	.long	0x2e8
	.uleb128 0x5
	.long	0x72
	.byte	0
	.uleb128 0x6
	.long	.LASF72
	.byte	0x7
	.byte	0x2b
	.byte	0x11
	.long	0x2f4
	.uleb128 0xb
	.long	0x2f9
	.uleb128 0x20
	.long	0x309
	.uleb128 0x5
	.long	0x72
	.uleb128 0x5
	.long	0x72
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.long	0x333
	.uleb128 0x21
	.long	.LASF73
	.byte	0x2f
	.long	0x2cc
	.uleb128 0x2a
	.string	"acv"
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.long	0x2b4
	.uleb128 0x21
	.long	.LASF74
	.byte	0x31
	.long	0x2e8
	.byte	0
	.uleb128 0x6
	.long	.LASF75
	.byte	0x7
	.byte	0x33
	.byte	0x3
	.long	0x309
	.uleb128 0x6
	.long	.LASF76
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.long	0x333
	.uleb128 0x19
	.long	.LASF1394
	.byte	0x18
	.byte	0x7
	.byte	0x40
	.long	0x37f
	.uleb128 0x3
	.long	.LASF77
	.byte	0x7
	.byte	0x42
	.byte	0x17
	.long	0x37f
	.byte	0
	.uleb128 0x3
	.long	.LASF78
	.byte	0x7
	.byte	0x43
	.byte	0x17
	.long	0x37f
	.byte	0x8
	.uleb128 0x3
	.long	.LASF79
	.byte	0x7
	.byte	0x44
	.byte	0xe
	.long	0x33f
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	0x34b
	.uleb128 0x6
	.long	.LASF80
	.byte	0x7
	.byte	0x46
	.byte	0x3
	.long	0x34b
	.uleb128 0xe
	.long	0x89
	.long	0x3a0
	.uleb128 0x11
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x3e6
	.uleb128 0xa
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x89
	.byte	0
	.uleb128 0xa
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF81
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF82
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x89
	.byte	0x6
	.uleb128 0x3
	.long	.LASF83
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF84
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x3a0
	.uleb128 0xd
	.long	0x6b
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x741
	.uleb128 0x2
	.long	.LASF85
	.byte	0
	.uleb128 0x2
	.long	.LASF86
	.byte	0x1
	.uleb128 0x2
	.long	.LASF87
	.byte	0x2
	.uleb128 0x2
	.long	.LASF88
	.byte	0x3
	.uleb128 0x2
	.long	.LASF89
	.byte	0x4
	.uleb128 0x2
	.long	.LASF90
	.byte	0x5
	.uleb128 0x2
	.long	.LASF91
	.byte	0x6
	.uleb128 0x2
	.long	.LASF92
	.byte	0x7
	.uleb128 0x2
	.long	.LASF93
	.byte	0x8
	.uleb128 0x2
	.long	.LASF94
	.byte	0x9
	.uleb128 0x2
	.long	.LASF95
	.byte	0xa
	.uleb128 0x2
	.long	.LASF96
	.byte	0xb
	.uleb128 0x2
	.long	.LASF97
	.byte	0xc
	.uleb128 0x2
	.long	.LASF98
	.byte	0xd
	.uleb128 0x2
	.long	.LASF99
	.byte	0xe
	.uleb128 0x2
	.long	.LASF100
	.byte	0xf
	.uleb128 0x2
	.long	.LASF101
	.byte	0x10
	.uleb128 0x2
	.long	.LASF102
	.byte	0x11
	.uleb128 0x2
	.long	.LASF103
	.byte	0x12
	.uleb128 0x2
	.long	.LASF104
	.byte	0x13
	.uleb128 0x2
	.long	.LASF105
	.byte	0x14
	.uleb128 0x2
	.long	.LASF106
	.byte	0x15
	.uleb128 0x2
	.long	.LASF107
	.byte	0x16
	.uleb128 0x2
	.long	.LASF108
	.byte	0x17
	.uleb128 0x2
	.long	.LASF109
	.byte	0x18
	.uleb128 0x2
	.long	.LASF110
	.byte	0x19
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF113
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF114
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF115
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF116
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF117
	.byte	0x20
	.uleb128 0x2
	.long	.LASF118
	.byte	0x21
	.uleb128 0x2
	.long	.LASF119
	.byte	0x22
	.uleb128 0x2
	.long	.LASF120
	.byte	0x23
	.uleb128 0x2
	.long	.LASF121
	.byte	0x24
	.uleb128 0x2
	.long	.LASF122
	.byte	0x25
	.uleb128 0x2
	.long	.LASF123
	.byte	0x26
	.uleb128 0x2
	.long	.LASF124
	.byte	0x27
	.uleb128 0x2
	.long	.LASF125
	.byte	0x28
	.uleb128 0x2
	.long	.LASF126
	.byte	0x29
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF129
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF130
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF131
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF132
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF133
	.byte	0x30
	.uleb128 0x2
	.long	.LASF134
	.byte	0x31
	.uleb128 0x2
	.long	.LASF135
	.byte	0x32
	.uleb128 0x2
	.long	.LASF136
	.byte	0x33
	.uleb128 0x2
	.long	.LASF137
	.byte	0x34
	.uleb128 0x2
	.long	.LASF138
	.byte	0x35
	.uleb128 0x2
	.long	.LASF139
	.byte	0x36
	.uleb128 0x2
	.long	.LASF140
	.byte	0x37
	.uleb128 0x2
	.long	.LASF141
	.byte	0x38
	.uleb128 0x2
	.long	.LASF142
	.byte	0x39
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF144
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF145
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF146
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF147
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF148
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF149
	.byte	0x40
	.uleb128 0x2
	.long	.LASF150
	.byte	0x41
	.uleb128 0x2
	.long	.LASF151
	.byte	0x42
	.uleb128 0x2
	.long	.LASF152
	.byte	0x43
	.uleb128 0x2
	.long	.LASF153
	.byte	0x44
	.uleb128 0x2
	.long	.LASF154
	.byte	0x45
	.uleb128 0x2
	.long	.LASF155
	.byte	0x46
	.uleb128 0x2
	.long	.LASF156
	.byte	0x47
	.uleb128 0x2
	.long	.LASF157
	.byte	0x48
	.uleb128 0x2
	.long	.LASF158
	.byte	0x49
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF160
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF161
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF162
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF163
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF164
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF165
	.byte	0x50
	.uleb128 0x2
	.long	.LASF166
	.byte	0x51
	.uleb128 0x2
	.long	.LASF167
	.byte	0x52
	.uleb128 0x2
	.long	.LASF168
	.byte	0x53
	.uleb128 0x2
	.long	.LASF169
	.byte	0x54
	.uleb128 0x2
	.long	.LASF170
	.byte	0x55
	.uleb128 0x2
	.long	.LASF171
	.byte	0x56
	.uleb128 0x2
	.long	.LASF172
	.byte	0x57
	.uleb128 0x2
	.long	.LASF173
	.byte	0x58
	.uleb128 0x2
	.long	.LASF174
	.byte	0x59
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF176
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF177
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF178
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF179
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF180
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF181
	.byte	0x60
	.uleb128 0x2
	.long	.LASF182
	.byte	0x61
	.uleb128 0x2
	.long	.LASF183
	.byte	0x62
	.uleb128 0x2
	.long	.LASF184
	.byte	0x63
	.uleb128 0x2
	.long	.LASF185
	.byte	0x64
	.uleb128 0x2
	.long	.LASF186
	.byte	0x65
	.uleb128 0x2
	.long	.LASF187
	.byte	0x66
	.uleb128 0x2
	.long	.LASF188
	.byte	0x67
	.uleb128 0x2
	.long	.LASF189
	.byte	0x68
	.uleb128 0x2
	.long	.LASF190
	.byte	0x69
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF192
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF193
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF194
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF195
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF196
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF197
	.byte	0x70
	.uleb128 0x2
	.long	.LASF198
	.byte	0x71
	.uleb128 0x2
	.long	.LASF199
	.byte	0x72
	.uleb128 0x2
	.long	.LASF200
	.byte	0x73
	.uleb128 0x2
	.long	.LASF201
	.byte	0x74
	.uleb128 0x2
	.long	.LASF202
	.byte	0x75
	.uleb128 0x2
	.long	.LASF203
	.byte	0x76
	.uleb128 0x2
	.long	.LASF204
	.byte	0x77
	.uleb128 0x2
	.long	.LASF205
	.byte	0x78
	.uleb128 0x2
	.long	.LASF206
	.byte	0x79
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF208
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF209
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF210
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF211
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF212
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF213
	.byte	0x80
	.uleb128 0x2
	.long	.LASF214
	.byte	0x81
	.uleb128 0x2
	.long	.LASF215
	.byte	0x82
	.uleb128 0x2
	.long	.LASF216
	.byte	0x83
	.uleb128 0x2
	.long	.LASF217
	.byte	0x84
	.uleb128 0x2
	.long	.LASF218
	.byte	0x85
	.uleb128 0x2
	.long	.LASF219
	.byte	0x86
	.uleb128 0x2
	.long	.LASF220
	.byte	0x87
	.uleb128 0x2
	.long	.LASF221
	.byte	0x88
	.uleb128 0x2
	.long	.LASF222
	.byte	0x89
	.uleb128 0x2
	.long	.LASF223
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF224
	.byte	0x9
	.byte	0xac
	.byte	0x3
	.long	0x3f2
	.uleb128 0xd
	.long	0x6b
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x20d2
	.uleb128 0x2
	.long	.LASF225
	.byte	0
	.uleb128 0x2
	.long	.LASF226
	.byte	0x1
	.uleb128 0x2
	.long	.LASF227
	.byte	0x2
	.uleb128 0x2
	.long	.LASF228
	.byte	0x3
	.uleb128 0x2
	.long	.LASF229
	.byte	0x4
	.uleb128 0x2
	.long	.LASF230
	.byte	0x5
	.uleb128 0x2
	.long	.LASF231
	.byte	0x6
	.uleb128 0x2
	.long	.LASF232
	.byte	0x7
	.uleb128 0x2
	.long	.LASF233
	.byte	0x8
	.uleb128 0x2
	.long	.LASF234
	.byte	0x9
	.uleb128 0x2
	.long	.LASF235
	.byte	0xa
	.uleb128 0x2
	.long	.LASF236
	.byte	0xb
	.uleb128 0x2
	.long	.LASF237
	.byte	0xc
	.uleb128 0x2
	.long	.LASF238
	.byte	0xd
	.uleb128 0x2
	.long	.LASF239
	.byte	0xe
	.uleb128 0x2
	.long	.LASF240
	.byte	0xf
	.uleb128 0x2
	.long	.LASF241
	.byte	0x10
	.uleb128 0x2
	.long	.LASF242
	.byte	0x11
	.uleb128 0x2
	.long	.LASF243
	.byte	0x12
	.uleb128 0x2
	.long	.LASF244
	.byte	0x13
	.uleb128 0x2
	.long	.LASF245
	.byte	0x14
	.uleb128 0x2
	.long	.LASF246
	.byte	0x15
	.uleb128 0x2
	.long	.LASF247
	.byte	0x16
	.uleb128 0x2
	.long	.LASF248
	.byte	0x17
	.uleb128 0x2
	.long	.LASF249
	.byte	0x18
	.uleb128 0x2
	.long	.LASF250
	.byte	0x19
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF252
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF253
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF254
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF255
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF256
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF257
	.byte	0x20
	.uleb128 0x2
	.long	.LASF258
	.byte	0x21
	.uleb128 0x2
	.long	.LASF259
	.byte	0x22
	.uleb128 0x2
	.long	.LASF260
	.byte	0x23
	.uleb128 0x2
	.long	.LASF261
	.byte	0x24
	.uleb128 0x2
	.long	.LASF262
	.byte	0x25
	.uleb128 0x2
	.long	.LASF263
	.byte	0x26
	.uleb128 0x2
	.long	.LASF264
	.byte	0x27
	.uleb128 0x2
	.long	.LASF265
	.byte	0x28
	.uleb128 0x2
	.long	.LASF266
	.byte	0x29
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF268
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF269
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF270
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF271
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF272
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF273
	.byte	0x30
	.uleb128 0x2
	.long	.LASF274
	.byte	0x31
	.uleb128 0x2
	.long	.LASF275
	.byte	0x32
	.uleb128 0x2
	.long	.LASF276
	.byte	0x33
	.uleb128 0x2
	.long	.LASF277
	.byte	0x34
	.uleb128 0x2
	.long	.LASF278
	.byte	0x35
	.uleb128 0x2
	.long	.LASF279
	.byte	0x36
	.uleb128 0x2
	.long	.LASF280
	.byte	0x37
	.uleb128 0x2
	.long	.LASF281
	.byte	0x38
	.uleb128 0x2
	.long	.LASF282
	.byte	0x39
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF284
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF285
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF286
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF287
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF288
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF289
	.byte	0x40
	.uleb128 0x2
	.long	.LASF290
	.byte	0x41
	.uleb128 0x2
	.long	.LASF291
	.byte	0x42
	.uleb128 0x2
	.long	.LASF292
	.byte	0x43
	.uleb128 0x2
	.long	.LASF293
	.byte	0x44
	.uleb128 0x2
	.long	.LASF294
	.byte	0x45
	.uleb128 0x2
	.long	.LASF295
	.byte	0x46
	.uleb128 0x2
	.long	.LASF296
	.byte	0x47
	.uleb128 0x2
	.long	.LASF297
	.byte	0x48
	.uleb128 0x2
	.long	.LASF298
	.byte	0x49
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF300
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF301
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF302
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF303
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF304
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF305
	.byte	0x50
	.uleb128 0x2
	.long	.LASF306
	.byte	0x51
	.uleb128 0x2
	.long	.LASF307
	.byte	0x52
	.uleb128 0x2
	.long	.LASF308
	.byte	0x53
	.uleb128 0x2
	.long	.LASF309
	.byte	0x54
	.uleb128 0x2
	.long	.LASF310
	.byte	0x55
	.uleb128 0x2
	.long	.LASF311
	.byte	0x56
	.uleb128 0x2
	.long	.LASF312
	.byte	0x57
	.uleb128 0x2
	.long	.LASF313
	.byte	0x58
	.uleb128 0x2
	.long	.LASF314
	.byte	0x59
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF316
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF317
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF318
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF319
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF320
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF321
	.byte	0x60
	.uleb128 0x2
	.long	.LASF322
	.byte	0x61
	.uleb128 0x2
	.long	.LASF323
	.byte	0x62
	.uleb128 0x2
	.long	.LASF324
	.byte	0x63
	.uleb128 0x2
	.long	.LASF325
	.byte	0x64
	.uleb128 0x2
	.long	.LASF326
	.byte	0x65
	.uleb128 0x2
	.long	.LASF327
	.byte	0x66
	.uleb128 0x2
	.long	.LASF328
	.byte	0x67
	.uleb128 0x2
	.long	.LASF329
	.byte	0x68
	.uleb128 0x2
	.long	.LASF330
	.byte	0x69
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF332
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF333
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF334
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF335
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF336
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF337
	.byte	0x70
	.uleb128 0x2
	.long	.LASF338
	.byte	0x71
	.uleb128 0x2
	.long	.LASF339
	.byte	0x72
	.uleb128 0x2
	.long	.LASF340
	.byte	0x73
	.uleb128 0x2
	.long	.LASF341
	.byte	0x74
	.uleb128 0x2
	.long	.LASF342
	.byte	0x75
	.uleb128 0x2
	.long	.LASF343
	.byte	0x76
	.uleb128 0x2
	.long	.LASF344
	.byte	0x77
	.uleb128 0x2
	.long	.LASF345
	.byte	0x78
	.uleb128 0x2
	.long	.LASF346
	.byte	0x79
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF348
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF349
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF350
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF351
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF352
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF353
	.byte	0x80
	.uleb128 0x2
	.long	.LASF354
	.byte	0x81
	.uleb128 0x2
	.long	.LASF355
	.byte	0x82
	.uleb128 0x2
	.long	.LASF356
	.byte	0x83
	.uleb128 0x2
	.long	.LASF357
	.byte	0x84
	.uleb128 0x2
	.long	.LASF358
	.byte	0x85
	.uleb128 0x2
	.long	.LASF359
	.byte	0x86
	.uleb128 0x2
	.long	.LASF360
	.byte	0x87
	.uleb128 0x2
	.long	.LASF361
	.byte	0x88
	.uleb128 0x2
	.long	.LASF362
	.byte	0x89
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF364
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF365
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF366
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF367
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF368
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF369
	.byte	0x90
	.uleb128 0x2
	.long	.LASF370
	.byte	0x91
	.uleb128 0x2
	.long	.LASF371
	.byte	0x92
	.uleb128 0x2
	.long	.LASF372
	.byte	0x93
	.uleb128 0x2
	.long	.LASF373
	.byte	0x94
	.uleb128 0x2
	.long	.LASF374
	.byte	0x95
	.uleb128 0x2
	.long	.LASF375
	.byte	0x96
	.uleb128 0x2
	.long	.LASF376
	.byte	0x97
	.uleb128 0x2
	.long	.LASF377
	.byte	0x98
	.uleb128 0x2
	.long	.LASF378
	.byte	0x99
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF380
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF381
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF382
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF383
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF384
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF390
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF391
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF392
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF393
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF394
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF395
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF396
	.byte	0xab
	.uleb128 0x2
	.long	.LASF397
	.byte	0xac
	.uleb128 0x2
	.long	.LASF398
	.byte	0xad
	.uleb128 0x2
	.long	.LASF399
	.byte	0xae
	.uleb128 0x2
	.long	.LASF400
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF406
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF407
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF408
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF409
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF410
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF411
	.byte	0xba
	.uleb128 0x2
	.long	.LASF412
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF413
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF414
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF415
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF416
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF422
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF423
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF424
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF425
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF426
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF427
	.byte	0xca
	.uleb128 0x2
	.long	.LASF428
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF429
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF430
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF431
	.byte	0xce
	.uleb128 0x2
	.long	.LASF432
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF438
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF439
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF440
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF441
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF442
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF443
	.byte	0xda
	.uleb128 0x2
	.long	.LASF444
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF445
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF446
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF447
	.byte	0xde
	.uleb128 0x2
	.long	.LASF448
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF454
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF455
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF456
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF457
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF458
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF459
	.byte	0xea
	.uleb128 0x2
	.long	.LASF460
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF461
	.byte	0xec
	.uleb128 0x2
	.long	.LASF462
	.byte	0xed
	.uleb128 0x2
	.long	.LASF463
	.byte	0xee
	.uleb128 0x2
	.long	.LASF464
	.byte	0xef
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF470
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF471
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF472
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF473
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF474
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF475
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF476
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF477
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF478
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF479
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF480
	.byte	0xff
	.uleb128 0x1
	.long	.LASF481
	.value	0x100
	.uleb128 0x1
	.long	.LASF482
	.value	0x101
	.uleb128 0x1
	.long	.LASF483
	.value	0x102
	.uleb128 0x1
	.long	.LASF484
	.value	0x103
	.uleb128 0x1
	.long	.LASF485
	.value	0x104
	.uleb128 0x1
	.long	.LASF486
	.value	0x105
	.uleb128 0x1
	.long	.LASF487
	.value	0x106
	.uleb128 0x1
	.long	.LASF488
	.value	0x107
	.uleb128 0x1
	.long	.LASF489
	.value	0x108
	.uleb128 0x1
	.long	.LASF490
	.value	0x109
	.uleb128 0x1
	.long	.LASF491
	.value	0x10a
	.uleb128 0x1
	.long	.LASF492
	.value	0x10b
	.uleb128 0x1
	.long	.LASF493
	.value	0x10c
	.uleb128 0x1
	.long	.LASF494
	.value	0x10d
	.uleb128 0x1
	.long	.LASF495
	.value	0x10e
	.uleb128 0x1
	.long	.LASF496
	.value	0x10f
	.uleb128 0x1
	.long	.LASF497
	.value	0x110
	.uleb128 0x1
	.long	.LASF498
	.value	0x111
	.uleb128 0x1
	.long	.LASF499
	.value	0x112
	.uleb128 0x1
	.long	.LASF500
	.value	0x113
	.uleb128 0x1
	.long	.LASF501
	.value	0x114
	.uleb128 0x1
	.long	.LASF502
	.value	0x115
	.uleb128 0x1
	.long	.LASF503
	.value	0x116
	.uleb128 0x1
	.long	.LASF504
	.value	0x117
	.uleb128 0x1
	.long	.LASF505
	.value	0x118
	.uleb128 0x1
	.long	.LASF506
	.value	0x119
	.uleb128 0x1
	.long	.LASF507
	.value	0x11a
	.uleb128 0x1
	.long	.LASF508
	.value	0x11b
	.uleb128 0x1
	.long	.LASF509
	.value	0x11c
	.uleb128 0x1
	.long	.LASF510
	.value	0x11d
	.uleb128 0x1
	.long	.LASF511
	.value	0x11e
	.uleb128 0x1
	.long	.LASF512
	.value	0x11f
	.uleb128 0x1
	.long	.LASF513
	.value	0x120
	.uleb128 0x1
	.long	.LASF514
	.value	0x121
	.uleb128 0x1
	.long	.LASF515
	.value	0x122
	.uleb128 0x1
	.long	.LASF516
	.value	0x123
	.uleb128 0x1
	.long	.LASF517
	.value	0x124
	.uleb128 0x1
	.long	.LASF518
	.value	0x125
	.uleb128 0x1
	.long	.LASF519
	.value	0x126
	.uleb128 0x1
	.long	.LASF520
	.value	0x127
	.uleb128 0x1
	.long	.LASF521
	.value	0x128
	.uleb128 0x1
	.long	.LASF522
	.value	0x129
	.uleb128 0x1
	.long	.LASF523
	.value	0x12a
	.uleb128 0x1
	.long	.LASF524
	.value	0x12b
	.uleb128 0x1
	.long	.LASF525
	.value	0x12c
	.uleb128 0x1
	.long	.LASF526
	.value	0x12d
	.uleb128 0x1
	.long	.LASF527
	.value	0x12e
	.uleb128 0x1
	.long	.LASF528
	.value	0x12f
	.uleb128 0x1
	.long	.LASF529
	.value	0x130
	.uleb128 0x1
	.long	.LASF530
	.value	0x131
	.uleb128 0x1
	.long	.LASF531
	.value	0x132
	.uleb128 0x1
	.long	.LASF532
	.value	0x133
	.uleb128 0x1
	.long	.LASF533
	.value	0x134
	.uleb128 0x1
	.long	.LASF534
	.value	0x135
	.uleb128 0x1
	.long	.LASF535
	.value	0x136
	.uleb128 0x1
	.long	.LASF536
	.value	0x137
	.uleb128 0x1
	.long	.LASF537
	.value	0x138
	.uleb128 0x1
	.long	.LASF538
	.value	0x139
	.uleb128 0x1
	.long	.LASF539
	.value	0x13a
	.uleb128 0x1
	.long	.LASF540
	.value	0x13b
	.uleb128 0x1
	.long	.LASF541
	.value	0x13c
	.uleb128 0x1
	.long	.LASF542
	.value	0x13d
	.uleb128 0x1
	.long	.LASF543
	.value	0x13e
	.uleb128 0x1
	.long	.LASF544
	.value	0x13f
	.uleb128 0x1
	.long	.LASF545
	.value	0x140
	.uleb128 0x1
	.long	.LASF546
	.value	0x141
	.uleb128 0x1
	.long	.LASF547
	.value	0x142
	.uleb128 0x1
	.long	.LASF548
	.value	0x143
	.uleb128 0x1
	.long	.LASF549
	.value	0x144
	.uleb128 0x1
	.long	.LASF550
	.value	0x145
	.uleb128 0x1
	.long	.LASF551
	.value	0x146
	.uleb128 0x1
	.long	.LASF552
	.value	0x147
	.uleb128 0x1
	.long	.LASF553
	.value	0x148
	.uleb128 0x1
	.long	.LASF554
	.value	0x149
	.uleb128 0x1
	.long	.LASF555
	.value	0x14a
	.uleb128 0x1
	.long	.LASF556
	.value	0x14b
	.uleb128 0x1
	.long	.LASF557
	.value	0x14c
	.uleb128 0x1
	.long	.LASF558
	.value	0x14d
	.uleb128 0x1
	.long	.LASF559
	.value	0x14e
	.uleb128 0x1
	.long	.LASF560
	.value	0x14f
	.uleb128 0x1
	.long	.LASF561
	.value	0x150
	.uleb128 0x1
	.long	.LASF562
	.value	0x151
	.uleb128 0x1
	.long	.LASF563
	.value	0x152
	.uleb128 0x1
	.long	.LASF564
	.value	0x153
	.uleb128 0x1
	.long	.LASF565
	.value	0x154
	.uleb128 0x1
	.long	.LASF566
	.value	0x155
	.uleb128 0x1
	.long	.LASF567
	.value	0x156
	.uleb128 0x1
	.long	.LASF568
	.value	0x157
	.uleb128 0x1
	.long	.LASF569
	.value	0x158
	.uleb128 0x1
	.long	.LASF570
	.value	0x159
	.uleb128 0x1
	.long	.LASF571
	.value	0x15a
	.uleb128 0x1
	.long	.LASF572
	.value	0x15b
	.uleb128 0x1
	.long	.LASF573
	.value	0x15c
	.uleb128 0x1
	.long	.LASF574
	.value	0x15d
	.uleb128 0x1
	.long	.LASF575
	.value	0x15e
	.uleb128 0x1
	.long	.LASF576
	.value	0x15f
	.uleb128 0x1
	.long	.LASF577
	.value	0x160
	.uleb128 0x1
	.long	.LASF578
	.value	0x161
	.uleb128 0x1
	.long	.LASF579
	.value	0x162
	.uleb128 0x1
	.long	.LASF580
	.value	0x163
	.uleb128 0x1
	.long	.LASF581
	.value	0x164
	.uleb128 0x1
	.long	.LASF582
	.value	0x165
	.uleb128 0x1
	.long	.LASF583
	.value	0x166
	.uleb128 0x1
	.long	.LASF584
	.value	0x167
	.uleb128 0x1
	.long	.LASF585
	.value	0x168
	.uleb128 0x1
	.long	.LASF586
	.value	0x169
	.uleb128 0x1
	.long	.LASF587
	.value	0x16a
	.uleb128 0x1
	.long	.LASF588
	.value	0x16b
	.uleb128 0x1
	.long	.LASF589
	.value	0x16c
	.uleb128 0x1
	.long	.LASF590
	.value	0x16d
	.uleb128 0x1
	.long	.LASF591
	.value	0x16e
	.uleb128 0x1
	.long	.LASF592
	.value	0x16f
	.uleb128 0x1
	.long	.LASF593
	.value	0x170
	.uleb128 0x1
	.long	.LASF594
	.value	0x171
	.uleb128 0x1
	.long	.LASF595
	.value	0x172
	.uleb128 0x1
	.long	.LASF596
	.value	0x173
	.uleb128 0x1
	.long	.LASF597
	.value	0x174
	.uleb128 0x1
	.long	.LASF598
	.value	0x175
	.uleb128 0x1
	.long	.LASF599
	.value	0x176
	.uleb128 0x1
	.long	.LASF600
	.value	0x177
	.uleb128 0x1
	.long	.LASF601
	.value	0x178
	.uleb128 0x1
	.long	.LASF602
	.value	0x179
	.uleb128 0x1
	.long	.LASF603
	.value	0x17a
	.uleb128 0x1
	.long	.LASF604
	.value	0x17b
	.uleb128 0x1
	.long	.LASF605
	.value	0x17c
	.uleb128 0x1
	.long	.LASF606
	.value	0x17d
	.uleb128 0x1
	.long	.LASF607
	.value	0x17e
	.uleb128 0x1
	.long	.LASF608
	.value	0x17f
	.uleb128 0x1
	.long	.LASF609
	.value	0x180
	.uleb128 0x1
	.long	.LASF610
	.value	0x181
	.uleb128 0x1
	.long	.LASF611
	.value	0x182
	.uleb128 0x1
	.long	.LASF612
	.value	0x183
	.uleb128 0x1
	.long	.LASF613
	.value	0x184
	.uleb128 0x1
	.long	.LASF614
	.value	0x185
	.uleb128 0x1
	.long	.LASF615
	.value	0x186
	.uleb128 0x1
	.long	.LASF616
	.value	0x187
	.uleb128 0x1
	.long	.LASF617
	.value	0x188
	.uleb128 0x1
	.long	.LASF618
	.value	0x189
	.uleb128 0x1
	.long	.LASF619
	.value	0x18a
	.uleb128 0x1
	.long	.LASF620
	.value	0x18b
	.uleb128 0x1
	.long	.LASF621
	.value	0x18c
	.uleb128 0x1
	.long	.LASF622
	.value	0x18d
	.uleb128 0x1
	.long	.LASF623
	.value	0x18e
	.uleb128 0x1
	.long	.LASF624
	.value	0x18f
	.uleb128 0x1
	.long	.LASF625
	.value	0x190
	.uleb128 0x1
	.long	.LASF626
	.value	0x191
	.uleb128 0x1
	.long	.LASF627
	.value	0x192
	.uleb128 0x1
	.long	.LASF628
	.value	0x193
	.uleb128 0x1
	.long	.LASF629
	.value	0x194
	.uleb128 0x1
	.long	.LASF630
	.value	0x195
	.uleb128 0x1
	.long	.LASF631
	.value	0x196
	.uleb128 0x1
	.long	.LASF632
	.value	0x197
	.uleb128 0x1
	.long	.LASF633
	.value	0x198
	.uleb128 0x1
	.long	.LASF634
	.value	0x199
	.uleb128 0x1
	.long	.LASF635
	.value	0x19a
	.uleb128 0x1
	.long	.LASF636
	.value	0x19b
	.uleb128 0x1
	.long	.LASF637
	.value	0x19c
	.uleb128 0x1
	.long	.LASF638
	.value	0x19d
	.uleb128 0x1
	.long	.LASF639
	.value	0x19e
	.uleb128 0x1
	.long	.LASF640
	.value	0x19f
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF646
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF647
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF648
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF649
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF650
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF651
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF652
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF653
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF654
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF655
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF656
	.value	0x1af
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF662
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF663
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF664
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF665
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF666
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF667
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF668
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF669
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF670
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF671
	.value	0x1be
	.uleb128 0x1
	.long	.LASF672
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF678
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF679
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF680
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF681
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF682
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF683
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF684
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF685
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF686
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF687
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF688
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF694
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF695
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF696
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF697
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF698
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF699
	.value	0x1da
	.uleb128 0x1
	.long	.LASF700
	.value	0x1db
	.uleb128 0x1
	.long	.LASF701
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF702
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF703
	.value	0x1de
	.uleb128 0x1
	.long	.LASF704
	.value	0x1df
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF710
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF711
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF712
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF713
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF714
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF716
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF717
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF718
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF719
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF720
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF726
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF727
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF728
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF729
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF730
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF731
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF732
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF733
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF734
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF735
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF736
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF737
	.value	0x200
	.uleb128 0x1
	.long	.LASF738
	.value	0x201
	.uleb128 0x1
	.long	.LASF739
	.value	0x202
	.uleb128 0x1
	.long	.LASF740
	.value	0x203
	.uleb128 0x1
	.long	.LASF741
	.value	0x204
	.uleb128 0x1
	.long	.LASF742
	.value	0x205
	.uleb128 0x1
	.long	.LASF743
	.value	0x206
	.uleb128 0x1
	.long	.LASF744
	.value	0x207
	.uleb128 0x1
	.long	.LASF745
	.value	0x208
	.uleb128 0x1
	.long	.LASF746
	.value	0x209
	.uleb128 0x1
	.long	.LASF747
	.value	0x20a
	.uleb128 0x1
	.long	.LASF748
	.value	0x20b
	.uleb128 0x1
	.long	.LASF749
	.value	0x20c
	.uleb128 0x1
	.long	.LASF750
	.value	0x20d
	.uleb128 0x1
	.long	.LASF751
	.value	0x20e
	.uleb128 0x1
	.long	.LASF752
	.value	0x20f
	.uleb128 0x1
	.long	.LASF753
	.value	0x210
	.uleb128 0x1
	.long	.LASF754
	.value	0x211
	.uleb128 0x1
	.long	.LASF755
	.value	0x212
	.uleb128 0x1
	.long	.LASF756
	.value	0x213
	.uleb128 0x1
	.long	.LASF757
	.value	0x214
	.uleb128 0x1
	.long	.LASF758
	.value	0x215
	.uleb128 0x1
	.long	.LASF759
	.value	0x216
	.uleb128 0x1
	.long	.LASF760
	.value	0x217
	.uleb128 0x1
	.long	.LASF761
	.value	0x218
	.uleb128 0x1
	.long	.LASF762
	.value	0x219
	.uleb128 0x1
	.long	.LASF763
	.value	0x21a
	.uleb128 0x1
	.long	.LASF764
	.value	0x21b
	.uleb128 0x1
	.long	.LASF765
	.value	0x21c
	.uleb128 0x1
	.long	.LASF766
	.value	0x21d
	.uleb128 0x1
	.long	.LASF767
	.value	0x21e
	.uleb128 0x1
	.long	.LASF768
	.value	0x21f
	.uleb128 0x1
	.long	.LASF769
	.value	0x220
	.uleb128 0x1
	.long	.LASF770
	.value	0x221
	.uleb128 0x1
	.long	.LASF771
	.value	0x222
	.uleb128 0x1
	.long	.LASF772
	.value	0x223
	.uleb128 0x1
	.long	.LASF773
	.value	0x224
	.uleb128 0x1
	.long	.LASF774
	.value	0x225
	.uleb128 0x1
	.long	.LASF775
	.value	0x226
	.uleb128 0x1
	.long	.LASF776
	.value	0x227
	.uleb128 0x1
	.long	.LASF777
	.value	0x228
	.uleb128 0x1
	.long	.LASF778
	.value	0x229
	.uleb128 0x1
	.long	.LASF779
	.value	0x22a
	.uleb128 0x1
	.long	.LASF780
	.value	0x22b
	.uleb128 0x1
	.long	.LASF781
	.value	0x22c
	.uleb128 0x1
	.long	.LASF782
	.value	0x22d
	.uleb128 0x1
	.long	.LASF783
	.value	0x22e
	.uleb128 0x1
	.long	.LASF784
	.value	0x22f
	.uleb128 0x1
	.long	.LASF785
	.value	0x230
	.uleb128 0x1
	.long	.LASF786
	.value	0x231
	.uleb128 0x1
	.long	.LASF787
	.value	0x232
	.uleb128 0x1
	.long	.LASF788
	.value	0x233
	.uleb128 0x1
	.long	.LASF789
	.value	0x234
	.uleb128 0x1
	.long	.LASF790
	.value	0x235
	.uleb128 0x1
	.long	.LASF791
	.value	0x236
	.uleb128 0x1
	.long	.LASF792
	.value	0x237
	.uleb128 0x1
	.long	.LASF793
	.value	0x238
	.uleb128 0x1
	.long	.LASF794
	.value	0x239
	.uleb128 0x1
	.long	.LASF795
	.value	0x23a
	.uleb128 0x1
	.long	.LASF796
	.value	0x23b
	.uleb128 0x1
	.long	.LASF797
	.value	0x23c
	.uleb128 0x1
	.long	.LASF798
	.value	0x23d
	.uleb128 0x1
	.long	.LASF799
	.value	0x23e
	.uleb128 0x1
	.long	.LASF800
	.value	0x23f
	.uleb128 0x1
	.long	.LASF801
	.value	0x240
	.uleb128 0x1
	.long	.LASF802
	.value	0x241
	.uleb128 0x1
	.long	.LASF803
	.value	0x242
	.uleb128 0x1
	.long	.LASF804
	.value	0x243
	.uleb128 0x1
	.long	.LASF805
	.value	0x244
	.uleb128 0x1
	.long	.LASF806
	.value	0x245
	.uleb128 0x1
	.long	.LASF807
	.value	0x246
	.uleb128 0x1
	.long	.LASF808
	.value	0x247
	.uleb128 0x1
	.long	.LASF809
	.value	0x248
	.uleb128 0x1
	.long	.LASF810
	.value	0x249
	.uleb128 0x1
	.long	.LASF811
	.value	0x24a
	.uleb128 0x1
	.long	.LASF812
	.value	0x24b
	.uleb128 0x1
	.long	.LASF813
	.value	0x24c
	.uleb128 0x1
	.long	.LASF814
	.value	0x24d
	.uleb128 0x1
	.long	.LASF815
	.value	0x24e
	.uleb128 0x1
	.long	.LASF816
	.value	0x24f
	.uleb128 0x1
	.long	.LASF817
	.value	0x250
	.uleb128 0x1
	.long	.LASF818
	.value	0x251
	.uleb128 0x1
	.long	.LASF819
	.value	0x252
	.uleb128 0x1
	.long	.LASF820
	.value	0x253
	.uleb128 0x1
	.long	.LASF821
	.value	0x254
	.uleb128 0x1
	.long	.LASF822
	.value	0x255
	.uleb128 0x1
	.long	.LASF823
	.value	0x256
	.uleb128 0x1
	.long	.LASF824
	.value	0x257
	.uleb128 0x1
	.long	.LASF825
	.value	0x258
	.uleb128 0x1
	.long	.LASF826
	.value	0x259
	.uleb128 0x1
	.long	.LASF827
	.value	0x25a
	.uleb128 0x1
	.long	.LASF828
	.value	0x25b
	.uleb128 0x1
	.long	.LASF829
	.value	0x25c
	.uleb128 0x1
	.long	.LASF830
	.value	0x25d
	.uleb128 0x1
	.long	.LASF831
	.value	0x25e
	.uleb128 0x1
	.long	.LASF832
	.value	0x25f
	.uleb128 0x1
	.long	.LASF833
	.value	0x260
	.uleb128 0x1
	.long	.LASF834
	.value	0x261
	.uleb128 0x1
	.long	.LASF835
	.value	0x262
	.uleb128 0x1
	.long	.LASF836
	.value	0x263
	.uleb128 0x1
	.long	.LASF837
	.value	0x264
	.uleb128 0x1
	.long	.LASF838
	.value	0x265
	.uleb128 0x1
	.long	.LASF839
	.value	0x266
	.uleb128 0x1
	.long	.LASF840
	.value	0x267
	.uleb128 0x1
	.long	.LASF841
	.value	0x268
	.uleb128 0x1
	.long	.LASF842
	.value	0x269
	.uleb128 0x1
	.long	.LASF843
	.value	0x26a
	.uleb128 0x1
	.long	.LASF844
	.value	0x26b
	.uleb128 0x1
	.long	.LASF845
	.value	0x26c
	.uleb128 0x1
	.long	.LASF846
	.value	0x26d
	.uleb128 0x1
	.long	.LASF847
	.value	0x26e
	.uleb128 0x1
	.long	.LASF848
	.value	0x26f
	.uleb128 0x1
	.long	.LASF849
	.value	0x270
	.uleb128 0x1
	.long	.LASF850
	.value	0x271
	.uleb128 0x1
	.long	.LASF851
	.value	0x272
	.uleb128 0x1
	.long	.LASF852
	.value	0x273
	.uleb128 0x1
	.long	.LASF853
	.value	0x274
	.uleb128 0x1
	.long	.LASF854
	.value	0x275
	.uleb128 0x1
	.long	.LASF855
	.value	0x276
	.uleb128 0x1
	.long	.LASF856
	.value	0x277
	.uleb128 0x1
	.long	.LASF857
	.value	0x278
	.uleb128 0x1
	.long	.LASF858
	.value	0x279
	.uleb128 0x1
	.long	.LASF859
	.value	0x27a
	.uleb128 0x1
	.long	.LASF860
	.value	0x27b
	.uleb128 0x1
	.long	.LASF861
	.value	0x27c
	.uleb128 0x1
	.long	.LASF862
	.value	0x27d
	.uleb128 0x1
	.long	.LASF863
	.value	0x27e
	.uleb128 0x1
	.long	.LASF864
	.value	0x27f
	.uleb128 0x1
	.long	.LASF865
	.value	0x280
	.uleb128 0x1
	.long	.LASF866
	.value	0x281
	.uleb128 0x1
	.long	.LASF867
	.value	0x282
	.uleb128 0x1
	.long	.LASF868
	.value	0x283
	.uleb128 0x1
	.long	.LASF869
	.value	0x284
	.uleb128 0x1
	.long	.LASF870
	.value	0x285
	.uleb128 0x1
	.long	.LASF871
	.value	0x286
	.uleb128 0x1
	.long	.LASF872
	.value	0x287
	.uleb128 0x1
	.long	.LASF873
	.value	0x288
	.uleb128 0x1
	.long	.LASF874
	.value	0x289
	.uleb128 0x1
	.long	.LASF875
	.value	0x28a
	.uleb128 0x1
	.long	.LASF876
	.value	0x28b
	.uleb128 0x1
	.long	.LASF877
	.value	0x28c
	.uleb128 0x1
	.long	.LASF878
	.value	0x28d
	.uleb128 0x1
	.long	.LASF879
	.value	0x28e
	.uleb128 0x1
	.long	.LASF880
	.value	0x28f
	.uleb128 0x1
	.long	.LASF881
	.value	0x290
	.uleb128 0x1
	.long	.LASF882
	.value	0x291
	.uleb128 0x1
	.long	.LASF883
	.value	0x292
	.uleb128 0x1
	.long	.LASF884
	.value	0x293
	.uleb128 0x1
	.long	.LASF885
	.value	0x294
	.uleb128 0x1
	.long	.LASF886
	.value	0x295
	.uleb128 0x1
	.long	.LASF887
	.value	0x296
	.uleb128 0x1
	.long	.LASF888
	.value	0x297
	.uleb128 0x1
	.long	.LASF889
	.value	0x298
	.uleb128 0x1
	.long	.LASF890
	.value	0x299
	.uleb128 0x1
	.long	.LASF891
	.value	0x29a
	.uleb128 0x1
	.long	.LASF892
	.value	0x29b
	.uleb128 0x1
	.long	.LASF893
	.value	0x29c
	.uleb128 0x1
	.long	.LASF894
	.value	0x29d
	.uleb128 0x1
	.long	.LASF895
	.value	0x29e
	.uleb128 0x1
	.long	.LASF896
	.value	0x29f
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF902
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF903
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF904
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF905
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF906
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF907
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF908
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF909
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF910
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF911
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF912
	.value	0x2af
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF918
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF919
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF920
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF921
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF922
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF923
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF924
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF925
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF926
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF927
	.value	0x2be
	.uleb128 0x1
	.long	.LASF928
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF934
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF935
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF936
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF937
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF938
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF939
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF940
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF941
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF942
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF943
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF944
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF950
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF951
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF952
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF953
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF954
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF955
	.value	0x2da
	.uleb128 0x1
	.long	.LASF956
	.value	0x2db
	.uleb128 0x1
	.long	.LASF957
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF958
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF959
	.value	0x2de
	.uleb128 0x1
	.long	.LASF960
	.value	0x2df
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF966
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF967
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF968
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF969
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF970
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF972
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF973
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF974
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF975
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF976
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF982
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF983
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF984
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF985
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF986
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF987
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF988
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF989
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF990
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF991
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF992
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF993
	.value	0x300
	.uleb128 0x1
	.long	.LASF994
	.value	0x301
	.uleb128 0x1
	.long	.LASF995
	.value	0x302
	.uleb128 0x1
	.long	.LASF996
	.value	0x303
	.uleb128 0x1
	.long	.LASF997
	.value	0x304
	.uleb128 0x1
	.long	.LASF998
	.value	0x305
	.uleb128 0x1
	.long	.LASF999
	.value	0x306
	.uleb128 0x1
	.long	.LASF1000
	.value	0x307
	.uleb128 0x1
	.long	.LASF1001
	.value	0x308
	.uleb128 0x1
	.long	.LASF1002
	.value	0x309
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1004
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1005
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1006
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1007
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1008
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1009
	.value	0x310
	.uleb128 0x1
	.long	.LASF1010
	.value	0x311
	.uleb128 0x1
	.long	.LASF1011
	.value	0x312
	.uleb128 0x1
	.long	.LASF1012
	.value	0x313
	.uleb128 0x1
	.long	.LASF1013
	.value	0x314
	.uleb128 0x1
	.long	.LASF1014
	.value	0x315
	.uleb128 0x1
	.long	.LASF1015
	.value	0x316
	.uleb128 0x1
	.long	.LASF1016
	.value	0x317
	.uleb128 0x1
	.long	.LASF1017
	.value	0x318
	.uleb128 0x1
	.long	.LASF1018
	.value	0x319
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1020
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1021
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1022
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1023
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1024
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1025
	.value	0x320
	.uleb128 0x1
	.long	.LASF1026
	.value	0x321
	.uleb128 0x1
	.long	.LASF1027
	.value	0x322
	.uleb128 0x1
	.long	.LASF1028
	.value	0x323
	.uleb128 0x1
	.long	.LASF1029
	.value	0x324
	.uleb128 0x1
	.long	.LASF1030
	.value	0x325
	.uleb128 0x1
	.long	.LASF1031
	.value	0x326
	.uleb128 0x1
	.long	.LASF1032
	.value	0x327
	.uleb128 0x1
	.long	.LASF1033
	.value	0x328
	.uleb128 0x1
	.long	.LASF1034
	.value	0x329
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1036
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1037
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1038
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1039
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1040
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1041
	.value	0x330
	.uleb128 0x1
	.long	.LASF1042
	.value	0x331
	.uleb128 0x1
	.long	.LASF1043
	.value	0x332
	.uleb128 0x1
	.long	.LASF1044
	.value	0x333
	.uleb128 0x1
	.long	.LASF1045
	.value	0x334
	.uleb128 0x1
	.long	.LASF1046
	.value	0x335
	.uleb128 0x1
	.long	.LASF1047
	.value	0x336
	.uleb128 0x1
	.long	.LASF1048
	.value	0x337
	.uleb128 0x1
	.long	.LASF1049
	.value	0x338
	.uleb128 0x1
	.long	.LASF1050
	.value	0x339
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1052
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1053
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1054
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1055
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1056
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1057
	.value	0x340
	.uleb128 0x1
	.long	.LASF1058
	.value	0x341
	.uleb128 0x1
	.long	.LASF1059
	.value	0x342
	.uleb128 0x1
	.long	.LASF1060
	.value	0x343
	.uleb128 0x1
	.long	.LASF1061
	.value	0x344
	.uleb128 0x1
	.long	.LASF1062
	.value	0x345
	.uleb128 0x1
	.long	.LASF1063
	.value	0x346
	.uleb128 0x1
	.long	.LASF1064
	.value	0x347
	.uleb128 0x1
	.long	.LASF1065
	.value	0x348
	.uleb128 0x1
	.long	.LASF1066
	.value	0x349
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1068
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1069
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1070
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1071
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1072
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1073
	.value	0x350
	.uleb128 0x1
	.long	.LASF1074
	.value	0x351
	.uleb128 0x1
	.long	.LASF1075
	.value	0x352
	.uleb128 0x1
	.long	.LASF1076
	.value	0x353
	.uleb128 0x1
	.long	.LASF1077
	.value	0x354
	.uleb128 0x1
	.long	.LASF1078
	.value	0x355
	.uleb128 0x1
	.long	.LASF1079
	.value	0x356
	.uleb128 0x1
	.long	.LASF1080
	.value	0x357
	.uleb128 0x1
	.long	.LASF1081
	.value	0x358
	.uleb128 0x1
	.long	.LASF1082
	.value	0x359
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1084
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1085
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1086
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1087
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1088
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1089
	.value	0x360
	.uleb128 0x1
	.long	.LASF1090
	.value	0x361
	.uleb128 0x1
	.long	.LASF1091
	.value	0x362
	.uleb128 0x1
	.long	.LASF1092
	.value	0x363
	.uleb128 0x1
	.long	.LASF1093
	.value	0x364
	.uleb128 0x1
	.long	.LASF1094
	.value	0x365
	.uleb128 0x1
	.long	.LASF1095
	.value	0x366
	.uleb128 0x1
	.long	.LASF1096
	.value	0x367
	.uleb128 0x1
	.long	.LASF1097
	.value	0x368
	.uleb128 0x1
	.long	.LASF1098
	.value	0x369
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1100
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1101
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1102
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1103
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1104
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1105
	.value	0x370
	.uleb128 0x1
	.long	.LASF1106
	.value	0x371
	.uleb128 0x1
	.long	.LASF1107
	.value	0x372
	.uleb128 0x1
	.long	.LASF1108
	.value	0x373
	.uleb128 0x1
	.long	.LASF1109
	.value	0x374
	.uleb128 0x1
	.long	.LASF1110
	.value	0x375
	.uleb128 0x1
	.long	.LASF1111
	.value	0x376
	.uleb128 0x1
	.long	.LASF1112
	.value	0x377
	.uleb128 0x1
	.long	.LASF1113
	.value	0x378
	.uleb128 0x1
	.long	.LASF1114
	.value	0x379
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1116
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1117
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1118
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1119
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1120
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1121
	.value	0x380
	.uleb128 0x1
	.long	.LASF1122
	.value	0x381
	.uleb128 0x1
	.long	.LASF1123
	.value	0x382
	.uleb128 0x1
	.long	.LASF1124
	.value	0x383
	.uleb128 0x1
	.long	.LASF1125
	.value	0x384
	.uleb128 0x1
	.long	.LASF1126
	.value	0x385
	.uleb128 0x1
	.long	.LASF1127
	.value	0x386
	.uleb128 0x1
	.long	.LASF1128
	.value	0x387
	.uleb128 0x1
	.long	.LASF1129
	.value	0x388
	.uleb128 0x1
	.long	.LASF1130
	.value	0x389
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1132
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1133
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1134
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1135
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1136
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1137
	.value	0x390
	.uleb128 0x1
	.long	.LASF1138
	.value	0x391
	.uleb128 0x1
	.long	.LASF1139
	.value	0x392
	.uleb128 0x1
	.long	.LASF1140
	.value	0x393
	.uleb128 0x1
	.long	.LASF1141
	.value	0x394
	.uleb128 0x1
	.long	.LASF1142
	.value	0x395
	.uleb128 0x1
	.long	.LASF1143
	.value	0x396
	.uleb128 0x1
	.long	.LASF1144
	.value	0x397
	.uleb128 0x1
	.long	.LASF1145
	.value	0x398
	.uleb128 0x1
	.long	.LASF1146
	.value	0x399
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1148
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1149
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1150
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1151
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1152
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1189
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1190
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1191
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1192
	.value	0x3c7
	.byte	0
	.uleb128 0x17
	.long	.LASF1193
	.byte	0x9
	.value	0x478
	.long	0x74d
	.uleb128 0x22
	.byte	0x38
	.value	0x47b
	.long	0x2149
	.uleb128 0x4
	.long	.LASF1194
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x741
	.byte	0
	.uleb128 0x4
	.long	.LASF1195
	.byte	0x9
	.value	0x47e
	.byte	0xa
	.long	0x97
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1196
	.byte	0x9
	.value	0x47f
	.byte	0xa
	.long	0x97
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1197
	.byte	0x9
	.value	0x481
	.byte	0xf
	.long	0x333
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1198
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x20d2
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1199
	.byte	0x9
	.value	0x483
	.byte	0xa
	.long	0x97
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1200
	.byte	0x9
	.value	0x483
	.byte	0x11
	.long	0x97
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LASF1201
	.byte	0x9
	.value	0x484
	.long	0x20de
	.uleb128 0xe
	.long	0x2149
	.long	0x2166
	.uleb128 0x1f
	.long	0x43
	.value	0x3c6
	.byte	0
	.uleb128 0x2b
	.long	.LASF1202
	.byte	0x9
	.value	0x486
	.byte	0x10
	.long	0x2155
	.uleb128 0x2c
	.byte	0x7
	.byte	0x4
	.long	0x6b
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x24bf
	.uleb128 0x2
	.long	.LASF1203
	.byte	0
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1213
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1214
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1215
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1216
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1217
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1218
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x89
	.byte	0
	.uleb128 0x17
	.long	.LASF1341
	.byte	0x9
	.value	0x517
	.long	0x2173
	.uleb128 0x22
	.byte	0x5c
	.value	0x519
	.long	0x2616
	.uleb128 0x4
	.long	.LASF1342
	.byte	0x9
	.value	0x51b
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0x4
	.long	.LASF1343
	.byte	0x9
	.value	0x51c
	.byte	0x9
	.long	0x90
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x9
	.value	0x51d
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1345
	.byte	0x9
	.value	0x51e
	.byte	0x9
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1346
	.byte	0x9
	.value	0x51f
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1347
	.byte	0x9
	.value	0x520
	.byte	0x9
	.long	0x90
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1348
	.byte	0x9
	.value	0x521
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1349
	.byte	0x9
	.value	0x522
	.byte	0x9
	.long	0x90
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1350
	.byte	0x9
	.value	0x523
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1351
	.byte	0x9
	.value	0x524
	.byte	0x9
	.long	0x90
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1352
	.byte	0x9
	.value	0x525
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1353
	.byte	0x9
	.value	0x526
	.byte	0x9
	.long	0x90
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1354
	.byte	0x9
	.value	0x527
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1355
	.byte	0x9
	.value	0x528
	.byte	0x9
	.long	0x90
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1356
	.byte	0x9
	.value	0x529
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1357
	.byte	0x9
	.value	0x52a
	.byte	0x9
	.long	0x90
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1358
	.byte	0x9
	.value	0x52b
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1359
	.byte	0x9
	.value	0x52c
	.byte	0x9
	.long	0x90
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1360
	.byte	0x9
	.value	0x52d
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1361
	.byte	0x9
	.value	0x52e
	.byte	0x9
	.long	0x90
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1362
	.byte	0x9
	.value	0x52f
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1363
	.byte	0x9
	.value	0x530
	.byte	0x9
	.long	0x90
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1364
	.byte	0x9
	.value	0x531
	.byte	0x9
	.long	0x90
	.byte	0x58
	.byte	0
	.uleb128 0x17
	.long	.LASF1365
	.byte	0x9
	.value	0x533
	.long	0x24cb
	.uleb128 0xd
	.long	0x6b
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.long	0x2700
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1374
	.value	0x100
	.uleb128 0x1
	.long	.LASF1375
	.value	0x200
	.uleb128 0x1
	.long	.LASF1376
	.value	0x400
	.uleb128 0x1
	.long	.LASF1377
	.value	0x800
	.uleb128 0x1
	.long	.LASF1378
	.value	0x1000
	.uleb128 0x1
	.long	.LASF1379
	.value	0x2000
	.uleb128 0x1
	.long	.LASF1380
	.value	0x4000
	.uleb128 0x1
	.long	.LASF1381
	.value	0x8000
	.uleb128 0xf
	.long	.LASF1382
	.long	0x10000
	.uleb128 0xf
	.long	.LASF1383
	.long	0x20000
	.uleb128 0xf
	.long	.LASF1384
	.long	0x40000
	.uleb128 0xf
	.long	.LASF1385
	.long	0x80000
	.uleb128 0xf
	.long	.LASF1386
	.long	0x100000
	.uleb128 0xf
	.long	.LASF1387
	.long	0x200000
	.uleb128 0xf
	.long	.LASF1388
	.long	0x400000
	.uleb128 0xf
	.long	.LASF1389
	.long	0x800000
	.uleb128 0xf
	.long	.LASF1390
	.long	0x1000000
	.uleb128 0xf
	.long	.LASF1391
	.long	0x2000000
	.uleb128 0xf
	.long	.LASF1392
	.long	0xc000000
	.uleb128 0x2
	.long	.LASF1393
	.byte	0x1a
	.byte	0
	.uleb128 0x19
	.long	.LASF1395
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x28d7
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x384
	.byte	0
	.uleb128 0xa
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0x26e
	.byte	0x18
	.uleb128 0xa
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0x26e
	.byte	0x1c
	.uleb128 0xa
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0x26e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x28d7
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x28d7
	.byte	0x30
	.uleb128 0x3
	.long	.LASF81
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x2a8
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1194
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x741
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1195
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x28d7
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x28d7
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x2910
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0x26e
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0x26e
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1358
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0x26e
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1359
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0x26e
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0x26e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0x26e
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0x26e
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x90
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF82
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x24bf
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x2915
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1196
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x90
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x291a
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x90
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1411
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x90
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1412
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x90
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1413
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x28d7
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1347
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x90
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1414
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x90
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1415
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x2af4
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1416
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1417
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x3e6
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1418
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x28d7
	.byte	0xd8
	.byte	0
	.uleb128 0xb
	.long	0x2700
	.uleb128 0x19
	.long	.LASF1419
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x2910
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2d36
	.byte	0
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x89
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	0x28dc
	.uleb128 0xb
	.long	0x2616
	.uleb128 0xb
	.long	0x2149
	.uleb128 0x2d
	.long	.LASF1423
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x2af4
	.uleb128 0xa
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2c4c
	.byte	0
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2ee8
	.byte	0x8
	.uleb128 0xa
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x2ebd
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x26e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0x26e
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0x26e
	.byte	0x1c
	.uleb128 0xa
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0x26e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2ef4
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2f04
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0x1f9
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2c51
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x160
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x160
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2f14
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2c51
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2c51
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x90
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x90
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x90
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x90
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x90
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x90
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x90
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2c4c
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x90
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x90
	.byte	0xfc
	.uleb128 0x1b
	.long	.LASF1452
	.byte	0x9e
	.byte	0xb
	.long	0x90
	.value	0x100
	.uleb128 0x1b
	.long	.LASF1453
	.byte	0xa1
	.byte	0xf
	.long	0x2f24
	.value	0x108
	.uleb128 0x1b
	.long	.LASF1454
	.byte	0xa4
	.byte	0xe
	.long	0x1f9
	.value	0x138
	.byte	0
	.uleb128 0xb
	.long	0x291f
	.uleb128 0x17
	.long	.LASF1455
	.byte	0xa
	.value	0x11e
	.long	0x2700
	.uleb128 0x14
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x2b24
	.uleb128 0xa
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x26e
	.byte	0
	.uleb128 0xa
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0x26e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1456
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x2b05
	.uleb128 0x14
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2b67
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x384
	.byte	0
	.uleb128 0xa
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x26e
	.byte	0x18
	.uleb128 0xa
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x26e
	.byte	0x1c
	.uleb128 0xa
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0x26e
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1457
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x2b30
	.uleb128 0x14
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2c4c
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0x26e
	.byte	0
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0x26e
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x89
	.byte	0xe
	.uleb128 0xa
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x89
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x90
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2c4c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2c51
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2b67
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2c4c
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0x72
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2d20
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0x2af9
	.uleb128 0xe
	.long	0x90
	.long	0x2c61
	.uleb128 0x11
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.long	.LASF1472
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2d20
	.uleb128 0xa
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2d6c
	.byte	0
	.uleb128 0xa
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2d6c
	.byte	0x8
	.uleb128 0xa
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0x26e
	.byte	0x10
	.uleb128 0xa
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0x26e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1363
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x89
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x89
	.byte	0x1a
	.uleb128 0xa
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x390
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1474
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2d71
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1475
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2d60
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2d36
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2d36
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0x72
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	0x2d25
	.uleb128 0xb
	.long	0x2c61
	.uleb128 0x6
	.long	.LASF1478
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2b73
	.uleb128 0xb
	.long	0x2d2a
	.uleb128 0xd
	.long	0x6b
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2d60
	.uleb128 0x2
	.long	.LASF1479
	.byte	0
	.uleb128 0x2
	.long	.LASF1480
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1481
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1482
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1483
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2d3b
	.uleb128 0xb
	.long	0x2b24
	.uleb128 0xe
	.long	0x26e
	.long	0x2d81
	.uleb128 0x11
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.byte	0x18
	.byte	0xd
	.byte	0x22
	.long	0x2dd8
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xd
	.byte	0x24
	.byte	0x10
	.long	0x19d
	.byte	0
	.uleb128 0x3
	.long	.LASF1484
	.byte	0xd
	.byte	0x25
	.byte	0xa
	.long	0x90
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1485
	.byte	0xd
	.byte	0x26
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1486
	.byte	0xd
	.byte	0x27
	.byte	0xa
	.long	0x90
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1487
	.byte	0xd
	.byte	0x28
	.byte	0xa
	.long	0x90
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1488
	.byte	0xd
	.byte	0x29
	.byte	0xa
	.long	0x90
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.long	.LASF1489
	.byte	0xd
	.byte	0x2b
	.byte	0x3
	.long	0x2d81
	.uleb128 0xe
	.long	0x2dd8
	.long	0x2df4
	.uleb128 0x11
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	.LASF1490
	.byte	0xd
	.byte	0x2d
	.byte	0x19
	.long	0x2de4
	.uleb128 0xd
	.long	0x6b
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x2e1f
	.uleb128 0x2
	.long	.LASF1491
	.byte	0
	.uleb128 0x2
	.long	.LASF1492
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x18
	.byte	0xe
	.byte	0x44
	.long	0x2e5a
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xe
	.byte	0x46
	.byte	0xe
	.long	0x291a
	.byte	0
	.uleb128 0x3
	.long	.LASF1196
	.byte	0xe
	.byte	0x47
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0xa
	.string	"sx"
	.byte	0xe
	.byte	0x48
	.byte	0xd
	.long	0x26e
	.byte	0xc
	.uleb128 0xa
	.string	"sy"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0x26e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1494
	.byte	0xe
	.byte	0x4b
	.byte	0x3
	.long	0x2e1f
	.uleb128 0x14
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.long	0x2ebd
	.uleb128 0x3
	.long	.LASF1495
	.byte	0xf
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1496
	.byte	0xf
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1497
	.byte	0xf
	.byte	0x28
	.byte	0xb
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1498
	.byte	0xf
	.byte	0x29
	.byte	0xb
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1499
	.byte	0xf
	.byte	0x2a
	.byte	0xa
	.long	0x205
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1500
	.byte	0xf
	.byte	0x2b
	.byte	0xa
	.long	0x205
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF1501
	.byte	0xf
	.byte	0x2c
	.byte	0x3
	.long	0x2e66
	.uleb128 0xd
	.long	0x6b
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2ee8
	.uleb128 0x2
	.long	.LASF1502
	.byte	0
	.uleb128 0x2
	.long	.LASF1503
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1505
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2ec9
	.uleb128 0xe
	.long	0x90
	.long	0x2f04
	.uleb128 0x11
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x1f9
	.long	0x2f14
	.uleb128 0x11
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x1f9
	.long	0x2f24
	.uleb128 0x11
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x2e5a
	.long	0x2f34
	.uleb128 0x11
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF1506
	.byte	0xc
	.byte	0xa6
	.byte	0x3
	.long	0x291f
	.uleb128 0xb
	.long	0x2f34
	.uleb128 0x16
	.long	.LASF1507
	.byte	0x10
	.byte	0xdb
	.byte	0x10
	.long	0x2c4c
	.uleb128 0x16
	.long	.LASF1508
	.byte	0x11
	.byte	0x3c
	.byte	0x13
	.long	0xce
	.uleb128 0x16
	.long	.LASF1509
	.byte	0x11
	.byte	0xac
	.byte	0xd
	.long	0x90
	.uleb128 0xd
	.long	0x6b
	.byte	0x12
	.byte	0xb2
	.byte	0x1
	.long	0x320a
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
	.uleb128 0x23
	.long	.LASF1620
	.byte	0x6d
	.long	0x26e
	.uleb128 0x9
	.byte	0x3
	.quad	swingx
	.uleb128 0x23
	.long	.LASF1621
	.byte	0x6e
	.long	0x26e
	.uleb128 0x9
	.byte	0x3
	.quad	swingy
	.uleb128 0x2e
	.long	.LASF1622
	.byte	0x1
	.value	0x256
	.byte	0xa
	.long	0x26e
	.uleb128 0x9
	.byte	0x3
	.quad	bulletslope
	.uleb128 0x2f
	.long	.LASF1623
	.byte	0x10
	.value	0x10d
	.byte	0x1
	.long	0x326b
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x90
	.byte	0
	.uleb128 0x18
	.long	.LASF1625
	.byte	0x10
	.byte	0x6e
	.byte	0x1
	.long	0x2c4c
	.long	0x3290
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x24bf
	.byte	0
	.uleb128 0x1a
	.long	.LASF1624
	.byte	0x10
	.byte	0x7b
	.byte	0x6
	.long	0x32a7
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x24bf
	.byte	0
	.uleb128 0x18
	.long	.LASF1626
	.byte	0x13
	.byte	0x7f
	.byte	0x1
	.long	0x2a8
	.long	0x32cc
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x26e
	.byte	0
	.uleb128 0x1a
	.long	.LASF1627
	.byte	0x10
	.byte	0xe4
	.byte	0x1
	.long	0x32f2
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x2a8
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x90
	.byte	0
	.uleb128 0x18
	.long	.LASF1628
	.byte	0x10
	.byte	0xde
	.byte	0x1
	.long	0x26e
	.long	0x3312
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x2a8
	.uleb128 0x5
	.long	0x26e
	.byte	0
	.uleb128 0x30
	.long	.LASF1670
	.byte	0x15
	.byte	0x24
	.byte	0x5
	.long	0x90
	.uleb128 0x1a
	.long	.LASF1629
	.byte	0x10
	.byte	0x81
	.byte	0x6
	.long	0x3335
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x2c4c
	.byte	0
	.uleb128 0x18
	.long	.LASF1630
	.byte	0x10
	.byte	0x75
	.byte	0x9
	.long	0x1f9
	.long	0x3350
	.uleb128 0x5
	.long	0x2c4c
	.uleb128 0x5
	.long	0x20d2
	.byte	0
	.uleb128 0x1a
	.long	.LASF1631
	.byte	0x14
	.byte	0x3b
	.byte	0x1
	.long	0x3367
	.uleb128 0x5
	.long	0x72
	.uleb128 0x5
	.long	0x90
	.byte	0
	.uleb128 0x18
	.long	.LASF1632
	.byte	0x5
	.byte	0x28
	.byte	0x9
	.long	0x26e
	.long	0x3382
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x26e
	.byte	0
	.uleb128 0x8
	.long	.LASF1634
	.value	0x353
	.byte	0x6
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x33db
	.uleb128 0x7
	.long	.LASF1415
	.value	0x353
	.byte	0x20
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"i"
	.value	0x355
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"psp"
	.value	0x356
	.byte	0xf
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF1409
	.value	0x357
	.byte	0xe
	.long	0x291a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x2e5a
	.uleb128 0x8
	.long	.LASF1635
	.value	0x33f
	.byte	0x6
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x341b
	.uleb128 0x7
	.long	.LASF1415
	.value	0x33f
	.byte	0x21
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.value	0x341
	.byte	0x9
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1636
	.value	0x332
	.byte	0x1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x3458
	.uleb128 0x7
	.long	.LASF1415
	.value	0x333
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x334
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1637
	.value	0x30d
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x34bc
	.uleb128 0x9
	.string	"mo"
	.value	0x30d
	.byte	0x1a
	.long	0x2c4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.value	0x30f
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"j"
	.value	0x310
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF1361
	.value	0x311
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"an"
	.value	0x312
	.byte	0xe
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF1638
	.value	0x303
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x34f8
	.uleb128 0x7
	.long	.LASF1415
	.value	0x303
	.byte	0x1a
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x303
	.byte	0x2c
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF1639
	.value	0x2fe
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3534
	.uleb128 0x7
	.long	.LASF1415
	.value	0x2fe
	.byte	0x1a
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x2fe
	.byte	0x2c
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF1640
	.value	0x2f9
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3570
	.uleb128 0x7
	.long	.LASF1415
	.value	0x2f9
	.byte	0x1a
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x2f9
	.byte	0x2c
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1641
	.value	0x2dd
	.byte	0x1
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ad
	.uleb128 0x7
	.long	.LASF1415
	.value	0x2de
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x2df
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1642
	.value	0x2b8
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3615
	.uleb128 0x7
	.long	.LASF1415
	.value	0x2b9
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"psp"
	.value	0x2ba
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"i"
	.value	0x2bc
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF81
	.value	0x2bd
	.byte	0xd
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF1361
	.value	0x2be
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x8
	.long	.LASF1643
	.value	0x29d
	.byte	0x1
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x365f
	.uleb128 0x7
	.long	.LASF1415
	.value	0x29e
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"psp"
	.value	0x29f
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"i"
	.value	0x2a1
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1644
	.value	0x287
	.byte	0x1
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x369c
	.uleb128 0x7
	.long	.LASF1415
	.value	0x288
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x289
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1645
	.value	0x272
	.byte	0x1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f6
	.uleb128 0x9
	.string	"mo"
	.value	0x273
	.byte	0xb
	.long	0x2c4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF1646
	.value	0x274
	.byte	0xb
	.long	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.long	.LASF81
	.value	0x276
	.byte	0xd
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1361
	.value	0x277
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.long	.LASF1647
	.value	0x259
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3731
	.uleb128 0x9
	.string	"mo"
	.value	0x259
	.byte	0x1d
	.long	0x2c4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"an"
	.value	0x25b
	.byte	0xd
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1648
	.value	0x242
	.byte	0x1
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x376e
	.uleb128 0x7
	.long	.LASF1415
	.value	0x243
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"psp"
	.value	0x244
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF1649
	.value	0x234
	.byte	0x1
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x37ab
	.uleb128 0x7
	.long	.LASF1415
	.value	0x235
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x236
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1650
	.value	0x227
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e8
	.uleb128 0x7
	.long	.LASF1415
	.value	0x228
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x229
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1651
	.value	0x1f6
	.byte	0x1
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3852
	.uleb128 0x7
	.long	.LASF1415
	.value	0x1f7
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"psp"
	.value	0x1f8
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.long	.LASF81
	.value	0x1fa
	.byte	0xd
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1361
	.value	0x1fb
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF1652
	.value	0x1fc
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.long	.LASF1653
	.value	0x1d4
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x38bc
	.uleb128 0x7
	.long	.LASF1415
	.value	0x1d5
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"psp"
	.value	0x1d6
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.long	.LASF81
	.value	0x1d8
	.byte	0xd
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1361
	.value	0x1d9
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF1652
	.value	0x1da
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.long	.LASF1654
	.value	0x1c1
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f9
	.uleb128 0x7
	.long	.LASF1415
	.value	0x1c2
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x1c3
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1655
	.value	0x1a7
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3945
	.uleb128 0x7
	.long	.LASF1415
	.value	0x1a8
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"psp"
	.value	0x1a9
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF1656
	.value	0x1ab
	.byte	0x10
	.long	0x20d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF1657
	.value	0x181
	.byte	0x1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3982
	.uleb128 0x7
	.long	.LASF1415
	.value	0x182
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x183
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1658
	.value	0x16e
	.byte	0x1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x39bf
	.uleb128 0x7
	.long	.LASF1415
	.value	0x16f
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x170
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1659
	.value	0x157
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x39fc
	.uleb128 0x7
	.long	.LASF1415
	.value	0x158
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"psp"
	.value	0x159
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF1660
	.value	0x11a
	.byte	0x1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a57
	.uleb128 0x7
	.long	.LASF1415
	.value	0x11b
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"psp"
	.value	0x11c
	.byte	0xd
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF1656
	.value	0x11e
	.byte	0x10
	.long	0x20d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.long	.LASF81
	.value	0x11f
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF1661
	.value	0x109
	.byte	0x6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a85
	.uleb128 0x7
	.long	.LASF1415
	.value	0x109
	.byte	0x1e
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF1662
	.byte	0xf6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3abe
	.uleb128 0x15
	.long	.LASF1415
	.byte	0xf6
	.byte	0x1e
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF1656
	.byte	0xf8
	.byte	0x10
	.long	0x20d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF1671
	.byte	0x1
	.byte	0xa1
	.byte	0x9
	.long	0x1f9
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b0b
	.uleb128 0x15
	.long	.LASF1415
	.byte	0xa1
	.byte	0x20
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF1437
	.byte	0xa3
	.byte	0x11
	.long	0x19d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.long	.LASF1663
	.byte	0xa4
	.byte	0xb
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF1664
	.byte	0x8a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b44
	.uleb128 0x15
	.long	.LASF1415
	.byte	0x8a
	.byte	0x21
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF1656
	.byte	0x8c
	.byte	0x10
	.long	0x20d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF1665
	.byte	0x70
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b8b
	.uleb128 0x15
	.long	.LASF1415
	.byte	0x70
	.byte	0x1d
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF1666
	.byte	0x72
	.byte	0xd
	.long	0x26e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF81
	.byte	0x73
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF1672
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF1415
	.byte	0x3c
	.byte	0xd
	.long	0x2f40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF1667
	.byte	0x3d
	.byte	0x8
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF1668
	.byte	0x3e
	.byte	0xe
	.long	0x20d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"psp"
	.byte	0x1
	.byte	0x40
	.byte	0xf
	.long	0x33db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.long	.LASF1409
	.byte	0x41
	.byte	0xe
	.long	0x291a
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
	.uleb128 0x9
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.uleb128 0x33
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
.LASF1647:
	.string	"P_BulletSlope"
.LASF1484:
	.string	"upstate"
.LASF862:
	.string	"S_BSPI_RUN3"
.LASF863:
	.string	"S_BSPI_RUN4"
.LASF864:
	.string	"S_BSPI_RUN5"
.LASF865:
	.string	"S_BSPI_RUN6"
.LASF866:
	.string	"S_BSPI_RUN7"
.LASF867:
	.string	"S_BSPI_RUN8"
.LASF868:
	.string	"S_BSPI_RUN9"
.LASF1554:
	.string	"sfx_cybsit"
.LASF152:
	.string	"SPR_YSKU"
.LASF1520:
	.string	"sfx_sawup"
.LASF1449:
	.string	"attacker"
.LASF1644:
	.string	"A_FirePistol"
.LASF515:
	.string	"S_FIRE10"
.LASF516:
	.string	"S_FIRE11"
.LASF517:
	.string	"S_FIRE12"
.LASF518:
	.string	"S_FIRE13"
.LASF519:
	.string	"S_FIRE14"
.LASF520:
	.string	"S_FIRE15"
.LASF521:
	.string	"S_FIRE16"
.LASF522:
	.string	"S_FIRE17"
.LASF523:
	.string	"S_FIRE18"
.LASF524:
	.string	"S_FIRE19"
.LASF1337:
	.string	"MT_MISC84"
.LASF1270:
	.string	"MT_MISC20"
.LASF1083:
	.string	"S_MEGA2"
.LASF1084:
	.string	"S_MEGA3"
.LASF1085:
	.string	"S_MEGA4"
.LASF1274:
	.string	"MT_MISC24"
.LASF1275:
	.string	"MT_MISC25"
.LASF1277:
	.string	"MT_MISC26"
.LASF1278:
	.string	"MT_MISC27"
.LASF1279:
	.string	"MT_MISC28"
.LASF1282:
	.string	"MT_MISC29"
.LASF714:
	.string	"S_SARG_PAIN2"
.LASF1414:
	.string	"threshold"
.LASF23:
	.string	"wp_pistol"
.LASF1388:
	.string	"MF_COUNTKILL"
.LASF193:
	.string	"SPR_COL1"
.LASF194:
	.string	"SPR_COL2"
.LASF195:
	.string	"SPR_COL3"
.LASF196:
	.string	"SPR_COL4"
.LASF205:
	.string	"SPR_COL5"
.LASF199:
	.string	"SPR_COL6"
.LASF1616:
	.string	"sfx_skesit"
.LASF1597:
	.string	"sfx_tink"
.LASF525:
	.string	"S_FIRE20"
.LASF526:
	.string	"S_FIRE21"
.LASF527:
	.string	"S_FIRE22"
.LASF528:
	.string	"S_FIRE23"
.LASF529:
	.string	"S_FIRE24"
.LASF179:
	.string	"SPR_COLU"
.LASF531:
	.string	"S_FIRE26"
.LASF532:
	.string	"S_FIRE27"
.LASF533:
	.string	"S_FIRE28"
.LASF534:
	.string	"S_FIRE29"
.LASF1488:
	.string	"flashstate"
.LASF1283:
	.string	"MT_MISC30"
.LASF1197:
	.string	"action"
.LASF1285:
	.string	"MT_MISC32"
.LASF1011:
	.string	"S_BRAINEYE1"
.LASF876:
	.string	"S_BSPI_PAIN"
.LASF1288:
	.string	"MT_MISC35"
.LASF348:
	.string	"S_BFGEXP"
.LASF38:
	.string	"am_misl"
.LASF1291:
	.string	"MT_MISC38"
.LASF1292:
	.string	"MT_MISC39"
.LASF1460:
	.string	"floorpic"
.LASF878:
	.string	"S_BSPI_DIE1"
.LASF1493:
	.string	"NUMPSPRITES"
.LASF1632:
	.string	"FixedMul"
.LASF883:
	.string	"S_BSPI_DIE6"
.LASF1603:
	.string	"sfx_getpow"
.LASF1645:
	.string	"P_GunShot"
.LASF1481:
	.string	"ST_POSITIVE"
.LASF1425:
	.string	"viewz"
.LASF774:
	.string	"S_BOSS_RAISE1"
.LASF775:
	.string	"S_BOSS_RAISE2"
.LASF1217:
	.string	"MT_HEAD"
.LASF776:
	.string	"S_BOSS_RAISE3"
.LASF535:
	.string	"S_FIRE30"
.LASF680:
	.string	"S_TROO_PAIN"
.LASF969:
	.string	"S_SSWV_DIE1"
.LASF779:
	.string	"S_BOSS_RAISE6"
.LASF971:
	.string	"S_SSWV_DIE3"
.LASF972:
	.string	"S_SSWV_DIE4"
.LASF973:
	.string	"S_SSWV_DIE5"
.LASF147:
	.string	"SPR_BKEY"
.LASF791:
	.string	"S_BOS2_ATK1"
.LASF792:
	.string	"S_BOS2_ATK2"
.LASF793:
	.string	"S_BOS2_ATK3"
.LASF181:
	.string	"SPR_GOR1"
.LASF188:
	.string	"SPR_GOR2"
.LASF189:
	.string	"SPR_GOR3"
.LASF190:
	.string	"SPR_GOR4"
.LASF191:
	.string	"SPR_GOR5"
.LASF1295:
	.string	"MT_MISC42"
.LASF1296:
	.string	"MT_MISC43"
.LASF548:
	.string	"S_SKEL_RUN1"
.LASF549:
	.string	"S_SKEL_RUN2"
.LASF550:
	.string	"S_SKEL_RUN3"
.LASF551:
	.string	"S_SKEL_RUN4"
.LASF552:
	.string	"S_SKEL_RUN5"
.LASF553:
	.string	"S_SKEL_RUN6"
.LASF554:
	.string	"S_SKEL_RUN7"
.LASF555:
	.string	"S_SKEL_RUN8"
.LASF556:
	.string	"S_SKEL_RUN9"
.LASF26:
	.string	"wp_missile"
.LASF1034:
	.string	"S_BEXP2"
.LASF1345:
	.string	"seestate"
.LASF729:
	.string	"S_HEAD_ATK1"
.LASF730:
	.string	"S_HEAD_ATK2"
.LASF731:
	.string	"S_HEAD_ATK3"
.LASF1475:
	.string	"slopetype"
.LASF983:
	.string	"S_SSWV_RAISE1"
.LASF984:
	.string	"S_SSWV_RAISE2"
.LASF985:
	.string	"S_SSWV_RAISE3"
.LASF986:
	.string	"S_SSWV_RAISE4"
.LASF987:
	.string	"S_SSWV_RAISE5"
.LASF81:
	.string	"angle"
.LASF1212:
	.string	"MT_FATSHOT"
.LASF167:
	.string	"SPR_CELL"
.LASF168:
	.string	"SPR_CELP"
.LASF1149:
	.string	"S_HEARTCOL"
.LASF1470:
	.string	"linecount"
.LASF1421:
	.string	"numlines"
.LASF1066:
	.string	"S_MEDI"
.LASF1073:
	.string	"S_PINV"
.LASF1261:
	.string	"MT_INS"
.LASF1304:
	.string	"MT_MISC51"
.LASF1305:
	.string	"MT_MISC52"
.LASF1259:
	.string	"MT_INV"
.LASF1307:
	.string	"MT_MISC54"
.LASF1163:
	.string	"S_BTORCHSHRT"
.LASF284:
	.string	"S_MISSILEUP"
.LASF1310:
	.string	"MT_MISC57"
.LASF1311:
	.string	"MT_MISC58"
.LASF1312:
	.string	"MT_MISC59"
.LASF461:
	.string	"S_SPOS_RAISE1"
.LASF1514:
	.string	"sfx_dshtgn"
.LASF255:
	.string	"S_SGUNFLASH1"
.LASF256:
	.string	"S_SGUNFLASH2"
.LASF803:
	.string	"S_BOS2_RAISE1"
.LASF804:
	.string	"S_BOS2_RAISE2"
.LASF805:
	.string	"S_BOS2_RAISE3"
.LASF806:
	.string	"S_BOS2_RAISE4"
.LASF807:
	.string	"S_BOS2_RAISE5"
.LASF808:
	.string	"S_BOS2_RAISE6"
.LASF809:
	.string	"S_BOS2_RAISE7"
.LASF568:
	.string	"S_SKEL_PAIN"
.LASF1055:
	.string	"S_RKEY"
.LASF78:
	.string	"next"
.LASF1631:
	.string	"S_StartSound"
.LASF1526:
	.string	"sfx_firsht"
.LASF1518:
	.string	"sfx_plasma"
.LASF237:
	.string	"S_PISTOLUP"
.LASF923:
	.string	"S_CYBER_DIE8"
.LASF1531:
	.string	"sfx_dorcls"
.LASF1313:
	.string	"MT_MISC60"
.LASF1314:
	.string	"MT_MISC61"
.LASF1315:
	.string	"MT_MISC62"
.LASF1316:
	.string	"MT_MISC63"
.LASF1317:
	.string	"MT_MISC64"
.LASF1318:
	.string	"MT_MISC65"
.LASF1319:
	.string	"MT_MISC66"
.LASF1320:
	.string	"MT_MISC67"
.LASF352:
	.string	"S_EXPLODE1"
.LASF353:
	.string	"S_EXPLODE2"
.LASF354:
	.string	"S_EXPLODE3"
.LASF1609:
	.string	"sfx_manatk"
.LASF543:
	.string	"S_TRACEEXP1"
.LASF544:
	.string	"S_TRACEEXP2"
.LASF545:
	.string	"S_TRACEEXP3"
.LASF931:
	.string	"S_PAIN_RUN5"
.LASF1033:
	.string	"S_BEXP"
.LASF932:
	.string	"S_PAIN_RUN6"
.LASF1450:
	.string	"extralight"
.LASF1150:
	.string	"S_HEARTCOL2"
.LASF329:
	.string	"S_RBALLX1"
.LASF1517:
	.string	"sfx_dbload"
.LASF1359:
	.string	"height"
.LASF1244:
	.string	"MT_TELEPORTMAN"
.LASF1323:
	.string	"MT_MISC70"
.LASF112:
	.string	"SPR_IFOG"
.LASF1325:
	.string	"MT_MISC72"
.LASF1326:
	.string	"MT_MISC73"
.LASF1327:
	.string	"MT_MISC74"
.LASF1328:
	.string	"MT_MISC75"
.LASF1329:
	.string	"MT_MISC76"
.LASF1156:
	.string	"S_GREENTORCH2"
.LASF1157:
	.string	"S_GREENTORCH3"
.LASF1158:
	.string	"S_GREENTORCH4"
.LASF997:
	.string	"S_COMMKEEN9"
.LASF646:
	.string	"S_CPOS_PAIN2"
.LASF869:
	.string	"S_BSPI_RUN10"
.LASF870:
	.string	"S_BSPI_RUN11"
.LASF871:
	.string	"S_BSPI_RUN12"
.LASF953:
	.string	"S_SSWV_RUN1"
.LASF954:
	.string	"S_SSWV_RUN2"
.LASF955:
	.string	"S_SSWV_RUN3"
.LASF956:
	.string	"S_SSWV_RUN4"
.LASF957:
	.string	"S_SSWV_RUN5"
.LASF958:
	.string	"S_SSWV_RUN6"
.LASF959:
	.string	"S_SSWV_RUN7"
.LASF960:
	.string	"S_SSWV_RUN8"
.LASF1138:
	.string	"S_SKULLCOL"
.LASF1489:
	.string	"weaponinfo_t"
.LASF1211:
	.string	"MT_FATSO"
.LASF682:
	.string	"S_TROO_DIE1"
.LASF683:
	.string	"S_TROO_DIE2"
.LASF684:
	.string	"S_TROO_DIE3"
.LASF685:
	.string	"S_TROO_DIE4"
.LASF686:
	.string	"S_TROO_DIE5"
.LASF10:
	.string	"shareware"
.LASF1063:
	.string	"S_YSKULL"
.LASF1064:
	.string	"S_YSKULL2"
.LASF165:
	.string	"SPR_ROCK"
.LASF1236:
	.string	"MT_ROCKET"
.LASF1334:
	.string	"MT_MISC81"
.LASF1335:
	.string	"MT_MISC82"
.LASF1336:
	.string	"MT_MISC83"
.LASF641:
	.string	"S_CPOS_ATK1"
.LASF642:
	.string	"S_CPOS_ATK2"
.LASF643:
	.string	"S_CPOS_ATK3"
.LASF644:
	.string	"S_CPOS_ATK4"
.LASF1203:
	.string	"MT_PLAYER"
.LASF177:
	.string	"SPR_SHOT"
.LASF370:
	.string	"S_IFOG2"
.LASF371:
	.string	"S_IFOG3"
.LASF372:
	.string	"S_IFOG4"
.LASF373:
	.string	"S_IFOG5"
.LASF106:
	.string	"SPR_PLSE"
.LASF98:
	.string	"SPR_PLSF"
.LASF97:
	.string	"SPR_PLSG"
.LASF766:
	.string	"S_BOSS_PAIN2"
.LASF466:
	.string	"S_VILE_STND"
.LASF994:
	.string	"S_COMMKEEN6"
.LASF995:
	.string	"S_COMMKEEN7"
.LASF996:
	.string	"S_COMMKEEN8"
.LASF105:
	.string	"SPR_PLSS"
.LASF845:
	.string	"S_SPID_PAIN2"
.LASF1544:
	.string	"sfx_oof"
.LASF1360:
	.string	"mass"
.LASF1585:
	.string	"sfx_posact"
.LASF218:
	.string	"SPR_POB1"
.LASF219:
	.string	"SPR_POB2"
.LASF1067:
	.string	"S_SOUL"
.LASF1576:
	.string	"sfx_skldth"
.LASF1077:
	.string	"S_PSTR"
.LASF909:
	.string	"S_CYBER_ATK1"
.LASF910:
	.string	"S_CYBER_ATK2"
.LASF911:
	.string	"S_CYBER_ATK3"
.LASF912:
	.string	"S_CYBER_ATK4"
.LASF59:
	.string	"BT_WEAPONSHIFT"
.LASF56:
	.string	"BT_SPECIALMASK"
.LASF1104:
	.string	"S_BFUG"
.LASF144:
	.string	"SPR_FCAN"
.LASF587:
	.string	"S_FATT_STND"
.LASF1024:
	.string	"S_BRAINEXPLODE1"
.LASF1025:
	.string	"S_BRAINEXPLODE2"
.LASF1026:
	.string	"S_BRAINEXPLODE3"
.LASF308:
	.string	"S_BFGUP"
.LASF1648:
	.string	"A_FirePlasma"
.LASF149:
	.string	"SPR_YKEY"
.LASF695:
	.string	"S_TROO_RAISE1"
.LASF696:
	.string	"S_TROO_RAISE2"
.LASF697:
	.string	"S_TROO_RAISE3"
.LASF698:
	.string	"S_TROO_RAISE4"
.LASF699:
	.string	"S_TROO_RAISE5"
.LASF1108:
	.string	"S_PLAS"
.LASF990:
	.string	"S_COMMKEEN2"
.LASF991:
	.string	"S_COMMKEEN3"
.LASF992:
	.string	"S_COMMKEEN4"
.LASF993:
	.string	"S_COMMKEEN5"
.LASF374:
	.string	"S_PLAY"
.LASF940:
	.string	"S_PAIN_DIE2"
.LASF941:
	.string	"S_PAIN_DIE3"
.LASF942:
	.string	"S_PAIN_DIE4"
.LASF943:
	.string	"S_PAIN_DIE5"
.LASF944:
	.string	"S_PAIN_DIE6"
.LASF1214:
	.string	"MT_TROOP"
.LASF495:
	.string	"S_VILE_PAIN2"
.LASF623:
	.string	"S_FATT_RAISE1"
.LASF27:
	.string	"wp_plasma"
.LASF625:
	.string	"S_FATT_RAISE3"
.LASF626:
	.string	"S_FATT_RAISE4"
.LASF627:
	.string	"S_FATT_RAISE5"
.LASF628:
	.string	"S_FATT_RAISE6"
.LASF629:
	.string	"S_FATT_RAISE7"
.LASF630:
	.string	"S_FATT_RAISE8"
.LASF1370:
	.string	"MF_NOBLOCKMAP"
.LASF339:
	.string	"S_ROCKET"
.LASF1235:
	.string	"MT_HEADSHOT"
.LASF1392:
	.string	"MF_TRANSLATION"
.LASF1473:
	.string	"sidenum"
.LASF1661:
	.string	"P_DropWeapon"
.LASF54:
	.string	"BT_USE"
.LASF892:
	.string	"S_ARACH_PLAZ"
.LASF1131:
	.string	"S_STALAGTITE"
.LASF733:
	.string	"S_HEAD_PAIN2"
.LASF734:
	.string	"S_HEAD_PAIN3"
.LASF60:
	.string	"BTS_PAUSE"
.LASF52:
	.string	"byte"
.LASF1639:
	.string	"A_Light1"
.LASF1638:
	.string	"A_Light2"
.LASF20:
	.string	"it_redskull"
.LASF1586:
	.string	"sfx_bgact"
.LASF1242:
	.string	"MT_TFOG"
.LASF442:
	.string	"S_SPOS_ATK1"
.LASF443:
	.string	"S_SPOS_ATK2"
.LASF444:
	.string	"S_SPOS_ATK3"
.LASF379:
	.string	"S_PLAY_ATK1"
.LASF1464:
	.string	"soundtraversed"
.LASF380:
	.string	"S_PLAY_ATK2"
.LASF132:
	.string	"SPR_APLS"
.LASF67:
	.string	"finesine"
.LASF1442:
	.string	"refire"
.LASF1160:
	.string	"S_REDTORCH2"
.LASF1161:
	.string	"S_REDTORCH3"
.LASF1162:
	.string	"S_REDTORCH4"
.LASF669:
	.string	"S_TROO_RUN1"
.LASF670:
	.string	"S_TROO_RUN2"
.LASF671:
	.string	"S_TROO_RUN3"
.LASF672:
	.string	"S_TROO_RUN4"
.LASF673:
	.string	"S_TROO_RUN5"
.LASF674:
	.string	"S_TROO_RUN6"
.LASF675:
	.string	"S_TROO_RUN7"
.LASF676:
	.string	"S_TROO_RUN8"
.LASF1610:
	.string	"sfx_mandth"
.LASF123:
	.string	"SPR_CPOS"
.LASF584:
	.string	"S_FATSHOTX1"
.LASF585:
	.string	"S_FATSHOTX2"
.LASF586:
	.string	"S_FATSHOTX3"
.LASF664:
	.string	"S_CPOS_RAISE5"
.LASF665:
	.string	"S_CPOS_RAISE6"
.LASF666:
	.string	"S_CPOS_RAISE7"
.LASF1653:
	.string	"A_Punch"
.LASF22:
	.string	"wp_fist"
.LASF1353:
	.string	"missilestate"
.LASF153:
	.string	"SPR_STIM"
.LASF1373:
	.string	"MF_JUSTATTACKED"
.LASF700:
	.string	"S_SARG_STND"
.LASF925:
	.string	"S_CYBER_DIE10"
.LASF103:
	.string	"SPR_BAL1"
.LASF104:
	.string	"SPR_BAL2"
.LASF126:
	.string	"SPR_BAL7"
.LASF1408:
	.string	"info"
.LASF1580:
	.string	"sfx_bspdth"
.LASF1119:
	.string	"S_HEADSONSTICK"
.LASF1615:
	.string	"sfx_skeact"
.LASF1403:
	.string	"ceilingz"
.LASF1611:
	.string	"sfx_sssit"
.LASF576:
	.string	"S_SKEL_RAISE1"
.LASF91:
	.string	"SPR_SHT2"
.LASF230:
	.string	"S_PUNCH1"
.LASF231:
	.string	"S_PUNCH2"
.LASF232:
	.string	"S_PUNCH3"
.LASF233:
	.string	"S_PUNCH4"
.LASF234:
	.string	"S_PUNCH5"
.LASF593:
	.string	"S_FATT_RUN5"
.LASF229:
	.string	"S_PUNCHUP"
.LASF1649:
	.string	"A_FireBFG"
.LASF846:
	.string	"S_SPID_DIE1"
.LASF597:
	.string	"S_FATT_RUN9"
.LASF848:
	.string	"S_SPID_DIE3"
.LASF849:
	.string	"S_SPID_DIE4"
.LASF90:
	.string	"SPR_SHTF"
.LASF86:
	.string	"SPR_SHTG"
.LASF368:
	.string	"S_IFOG01"
.LASF369:
	.string	"S_IFOG02"
.LASF854:
	.string	"S_SPID_DIE9"
.LASF1096:
	.string	"S_AMMO"
.LASF39:
	.string	"NUMAMMO"
.LASF927:
	.string	"S_PAIN_RUN1"
.LASF928:
	.string	"S_PAIN_RUN2"
.LASF929:
	.string	"S_PAIN_RUN3"
.LASF930:
	.string	"S_PAIN_RUN4"
.LASF212:
	.string	"SPR_HDB1"
.LASF213:
	.string	"SPR_HDB2"
.LASF214:
	.string	"SPR_HDB3"
.LASF215:
	.string	"SPR_HDB4"
.LASF216:
	.string	"SPR_HDB5"
.LASF217:
	.string	"SPR_HDB6"
.LASF1204:
	.string	"MT_POSSESSED"
.LASF262:
	.string	"S_DSGUN3"
.LASF263:
	.string	"S_DSGUN4"
.LASF82:
	.string	"type"
.LASF282:
	.string	"S_MISSILE"
.LASF1110:
	.string	"S_SHOT2"
.LASF1366:
	.string	"MF_SPECIAL"
.LASF1177:
	.string	"S_HANGTLOOKDN"
.LASF1411:
	.string	"movedir"
.LASF654:
	.string	"S_CPOS_XDIE1"
.LASF1380:
	.string	"MF_FLOAT"
.LASF75:
	.string	"actionf_t"
.LASF70:
	.string	"actionf_v"
.LASF173:
	.string	"SPR_MGUN"
.LASF1216:
	.string	"MT_SHADOWS"
.LASF557:
	.string	"S_SKEL_RUN10"
.LASF558:
	.string	"S_SKEL_RUN11"
.LASF559:
	.string	"S_SKEL_RUN12"
.LASF225:
	.string	"S_NULL"
.LASF767:
	.string	"S_BOSS_DIE1"
.LASF768:
	.string	"S_BOSS_DIE2"
.LASF769:
	.string	"S_BOSS_DIE3"
.LASF770:
	.string	"S_BOSS_DIE4"
.LASF771:
	.string	"S_BOSS_DIE5"
.LASF772:
	.string	"S_BOSS_DIE6"
.LASF773:
	.string	"S_BOSS_DIE7"
.LASF937:
	.string	"S_PAIN_PAIN"
.LASF306:
	.string	"S_BFG"
.LASF58:
	.string	"BT_WEAPONMASK"
.LASF1506:
	.string	"player_t"
.LASF1463:
	.string	"special"
.LASF952:
	.string	"S_SSWV_STND2"
.LASF1627:
	.string	"P_LineAttack"
.LASF174:
	.string	"SPR_CSAW"
.LASF1087:
	.string	"S_PMAP"
.LASF57:
	.string	"BT_CHANGE"
.LASF1093:
	.string	"S_PVIS"
.LASF307:
	.string	"S_BFGDOWN"
.LASF1558:
	.string	"sfx_vilsit"
.LASF1228:
	.string	"MT_BOSSBRAIN"
.LASF120:
	.string	"SPR_SKEL"
.LASF302:
	.string	"S_PLASMA1"
.LASF303:
	.string	"S_PLASMA2"
.LASF1167:
	.string	"S_GTORCHSHRT"
.LASF1545:
	.string	"sfx_telept"
.LASF1422:
	.string	"firstline"
.LASF1101:
	.string	"S_SHEL"
.LASF858:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF1579:
	.string	"sfx_spidth"
.LASF118:
	.string	"SPR_FATB"
.LASF223:
	.string	"NUMSPRITES"
.LASF124:
	.string	"SPR_SARG"
.LASF341:
	.string	"S_BFGSHOT2"
.LASF122:
	.string	"SPR_FATT"
.LASF1566:
	.string	"sfx_skeswg"
.LASF1068:
	.string	"S_SOUL2"
.LASF1069:
	.string	"S_SOUL3"
.LASF1070:
	.string	"S_SOUL4"
.LASF1071:
	.string	"S_SOUL5"
.LASF1072:
	.string	"S_SOUL6"
.LASF828:
	.string	"S_SPID_RUN1"
.LASF829:
	.string	"S_SPID_RUN2"
.LASF830:
	.string	"S_SPID_RUN3"
.LASF831:
	.string	"S_SPID_RUN4"
.LASF832:
	.string	"S_SPID_RUN5"
.LASF833:
	.string	"S_SPID_RUN6"
.LASF834:
	.string	"S_SPID_RUN7"
.LASF835:
	.string	"S_SPID_RUN8"
.LASF64:
	.string	"float"
.LASF1035:
	.string	"S_BEXP3"
.LASF1036:
	.string	"S_BEXP4"
.LASF1524:
	.string	"sfx_rlaunc"
.LASF1124:
	.string	"S_DEADSTICK"
.LASF1451:
	.string	"fixedcolormap"
.LASF1436:
	.string	"weaponowned"
.LASF1660:
	.string	"A_WeaponReady"
.LASF1245:
	.string	"MT_EXTRABFG"
.LASF414:
	.string	"S_POSS_DIE1"
.LASF415:
	.string	"S_POSS_DIE2"
.LASF416:
	.string	"S_POSS_DIE3"
.LASF417:
	.string	"S_POSS_DIE4"
.LASF418:
	.string	"S_POSS_DIE5"
.LASF244:
	.string	"S_SGUNDOWN"
.LASF1613:
	.string	"sfx_keenpn"
.LASF93:
	.string	"SPR_CHGF"
.LASF92:
	.string	"SPR_CHGG"
.LASF637:
	.string	"S_CPOS_RUN5"
.LASF896:
	.string	"S_ARACH_PLEX3"
.LASF638:
	.string	"S_CPOS_RUN6"
.LASF898:
	.string	"S_ARACH_PLEX5"
.LASF639:
	.string	"S_CPOS_RUN7"
.LASF1413:
	.string	"target"
.LASF203:
	.string	"SPR_CEYE"
.LASF1479:
	.string	"ST_HORIZONTAL"
.LASF945:
	.string	"S_PAIN_RAISE1"
.LASF946:
	.string	"S_PAIN_RAISE2"
.LASF947:
	.string	"S_PAIN_RAISE3"
.LASF948:
	.string	"S_PAIN_RAISE4"
.LASF949:
	.string	"S_PAIN_RAISE5"
.LASF582:
	.string	"S_FATSHOT1"
.LASF583:
	.string	"S_FATSHOT2"
.LASF1480:
	.string	"ST_VERTICAL"
.LASF160:
	.string	"SPR_SUIT"
.LASF810:
	.string	"S_SKULL_STND"
.LASF1372:
	.string	"MF_JUSTHIT"
.LASF1393:
	.string	"MF_TRANSSHIFT"
.LASF1650:
	.string	"A_FireMissile"
.LASF844:
	.string	"S_SPID_PAIN"
.LASF1340:
	.string	"NUMMOBJTYPES"
.LASF142:
	.string	"SPR_BAR1"
.LASF257:
	.string	"S_DSGUN"
.LASF1136:
	.string	"S_CANDLESTIK"
.LASF46:
	.string	"pw_allmap"
.LASF1192:
	.string	"NUMSTATES"
.LASF836:
	.string	"S_SPID_RUN9"
.LASF322:
	.string	"S_TBALL1"
.LASF323:
	.string	"S_TBALL2"
.LASF536:
	.string	"S_SMOKE1"
.LASF537:
	.string	"S_SMOKE2"
.LASF538:
	.string	"S_SMOKE3"
.LASF539:
	.string	"S_SMOKE4"
.LASF540:
	.string	"S_SMOKE5"
.LASF759:
	.string	"S_BOSS_RUN6"
.LASF760:
	.string	"S_BOSS_RUN7"
.LASF761:
	.string	"S_BOSS_RUN8"
.LASF125:
	.string	"SPR_HEAD"
.LASF1400:
	.string	"bprev"
.LASF186:
	.string	"SPR_POL1"
.LASF182:
	.string	"SPR_POL2"
.LASF185:
	.string	"SPR_POL3"
.LASF184:
	.string	"SPR_POL4"
.LASF183:
	.string	"SPR_POL5"
.LASF187:
	.string	"SPR_POL6"
.LASF1031:
	.string	"S_BAR1"
.LASF1583:
	.string	"sfx_pedth"
.LASF1542:
	.string	"sfx_itemup"
.LASF1202:
	.string	"states"
.LASF1246:
	.string	"MT_MISC0"
.LASF1117:
	.string	"S_DEADTORSO"
.LASF1377:
	.string	"MF_PICKUP"
.LASF1386:
	.string	"MF_CORPSE"
.LASF259:
	.string	"S_DSGUNUP"
.LASF1605:
	.string	"sfx_boscub"
.LASF1567:
	.string	"sfx_pldeth"
.LASF1343:
	.string	"spawnstate"
.LASF668:
	.string	"S_TROO_STND2"
.LASF1188:
	.string	"S_TECH2LAMP"
.LASF1530:
	.string	"sfx_doropn"
.LASF1232:
	.string	"MT_SPAWNFIRE"
.LASF1207:
	.string	"MT_FIRE"
.LASF1198:
	.string	"nextstate"
.LASF765:
	.string	"S_BOSS_PAIN"
.LASF136:
	.string	"SPR_SSWV"
.LASF1371:
	.string	"MF_AMBUSH"
.LASF327:
	.string	"S_RBALL1"
.LASF328:
	.string	"S_RBALL2"
.LASF1540:
	.string	"sfx_pepain"
.LASF1132:
	.string	"S_TALLGRNCOL"
.LASF1416:
	.string	"lastlook"
.LASF1577:
	.string	"sfx_brsdth"
.LASF1513:
	.string	"sfx_sgcock"
.LASF1505:
	.string	"playerstate_t"
.LASF1121:
	.string	"S_HEADONASTICK"
.LASF401:
	.string	"S_POSS_RUN1"
.LASF343:
	.string	"S_BFGLAND2"
.LASF344:
	.string	"S_BFGLAND3"
.LASF345:
	.string	"S_BFGLAND4"
.LASF346:
	.string	"S_BFGLAND5"
.LASF347:
	.string	"S_BFGLAND6"
.LASF407:
	.string	"S_POSS_RUN7"
.LASF408:
	.string	"S_POSS_RUN8"
.LASF390:
	.string	"S_PLAY_XDIE1"
.LASF391:
	.string	"S_PLAY_XDIE2"
.LASF392:
	.string	"S_PLAY_XDIE3"
.LASF393:
	.string	"S_PLAY_XDIE4"
.LASF394:
	.string	"S_PLAY_XDIE5"
.LASF395:
	.string	"S_PLAY_XDIE6"
.LASF396:
	.string	"S_PLAY_XDIE7"
.LASF397:
	.string	"S_PLAY_XDIE8"
.LASF398:
	.string	"S_PLAY_XDIE9"
.LASF796:
	.string	"S_BOS2_DIE1"
.LASF797:
	.string	"S_BOS2_DIE2"
.LASF798:
	.string	"S_BOS2_DIE3"
.LASF799:
	.string	"S_BOS2_DIE4"
.LASF800:
	.string	"S_BOS2_DIE5"
.LASF801:
	.string	"S_BOS2_DIE6"
.LASF802:
	.string	"S_BOS2_DIE7"
.LASF1363:
	.string	"flags"
.LASF722:
	.string	"S_SARG_RAISE2"
.LASF723:
	.string	"S_SARG_RAISE3"
.LASF366:
	.string	"S_TFOG10"
.LASF724:
	.string	"S_SARG_RAISE4"
.LASF419:
	.string	"S_POSS_XDIE1"
.LASF420:
	.string	"S_POSS_XDIE2"
.LASF421:
	.string	"S_POSS_XDIE3"
.LASF422:
	.string	"S_POSS_XDIE4"
.LASF423:
	.string	"S_POSS_XDIE5"
.LASF424:
	.string	"S_POSS_XDIE6"
.LASF425:
	.string	"S_POSS_XDIE7"
.LASF35:
	.string	"am_clip"
.LASF427:
	.string	"S_POSS_XDIE9"
.LASF1120:
	.string	"S_GIBS"
.LASF735:
	.string	"S_HEAD_DIE1"
.LASF736:
	.string	"S_HEAD_DIE2"
.LASF737:
	.string	"S_HEAD_DIE3"
.LASF738:
	.string	"S_HEAD_DIE4"
.LASF739:
	.string	"S_HEAD_DIE5"
.LASF740:
	.string	"S_HEAD_DIE6"
.LASF588:
	.string	"S_FATT_STND2"
.LASF1111:
	.string	"S_COLU"
.LASF238:
	.string	"S_PISTOL1"
.LASF239:
	.string	"S_PISTOL2"
.LASF240:
	.string	"S_PISTOL3"
.LASF241:
	.string	"S_PISTOL4"
.LASF577:
	.string	"S_SKEL_RAISE2"
.LASF578:
	.string	"S_SKEL_RAISE3"
.LASF579:
	.string	"S_SKEL_RAISE4"
.LASF580:
	.string	"S_SKEL_RAISE5"
.LASF581:
	.string	"S_SKEL_RAISE6"
.LASF1140:
	.string	"S_BIGTREE"
.LASF1482:
	.string	"ST_NEGATIVE"
.LASF1050:
	.string	"S_BON2C"
.LASF1051:
	.string	"S_BON2D"
.LASF356:
	.string	"S_TFOG01"
.LASF357:
	.string	"S_TFOG02"
.LASF175:
	.string	"SPR_LAUN"
.LASF1625:
	.string	"P_SpawnMobj"
.LASF412:
	.string	"S_POSS_PAIN"
.LASF747:
	.string	"S_BRBALL1"
.LASF748:
	.string	"S_BRBALL2"
.LASF1210:
	.string	"MT_SMOKE"
.LASF1224:
	.string	"MT_CYBORG"
.LASF1361:
	.string	"damage"
.LASF452:
	.string	"S_SPOS_XDIE1"
.LASF453:
	.string	"S_SPOS_XDIE2"
.LASF454:
	.string	"S_SPOS_XDIE3"
.LASF455:
	.string	"S_SPOS_XDIE4"
.LASF456:
	.string	"S_SPOS_XDIE5"
.LASF457:
	.string	"S_SPOS_XDIE6"
.LASF458:
	.string	"S_SPOS_XDIE7"
.LASF459:
	.string	"S_SPOS_XDIE8"
.LASF460:
	.string	"S_SPOS_XDIE9"
.LASF1390:
	.string	"MF_SKULLFLY"
.LASF1538:
	.string	"sfx_vipain"
.LASF1395:
	.string	"mobj_s"
.LASF1455:
	.string	"mobj_t"
.LASF1053:
	.string	"S_BKEY"
.LASF44:
	.string	"pw_invisibility"
.LASF140:
	.string	"SPR_ARM1"
.LASF141:
	.string	"SPR_ARM2"
.LASF1206:
	.string	"MT_VILE"
.LASF1529:
	.string	"sfx_pstop"
.LASF18:
	.string	"it_blueskull"
.LASF1467:
	.string	"soundorg"
.LASF300:
	.string	"S_PLASMADOWN"
.LASF612:
	.string	"S_FATT_PAIN2"
.LASF1614:
	.string	"sfx_keendt"
.LASF1010:
	.string	"S_BRAINEYESEE"
.LASF1483:
	.string	"slopetype_t"
.LASF547:
	.string	"S_SKEL_STND2"
.LASF900:
	.string	"S_CYBER_STND2"
.LASF1201:
	.string	"state_t"
.LASF744:
	.string	"S_HEAD_RAISE4"
.LASF970:
	.string	"S_SSWV_DIE2"
.LASF11:
	.string	"registered"
.LASF1589:
	.string	"sfx_bspwlk"
.LASF426:
	.string	"S_POSS_XDIE8"
.LASF1100:
	.string	"S_CELP"
.LASF1142:
	.string	"S_EVILEYE"
.LASF1168:
	.string	"S_GTORCHSHRT2"
.LASF1169:
	.string	"S_GTORCHSHRT3"
.LASF1170:
	.string	"S_GTORCHSHRT4"
.LASF1426:
	.string	"viewheight"
.LASF1672:
	.string	"P_SetPsprite"
.LASF1399:
	.string	"bnext"
.LASF1608:
	.string	"sfx_bosdth"
.LASF601:
	.string	"S_FATT_ATK1"
.LASF134:
	.string	"SPR_CYBR"
.LASF1485:
	.string	"downstate"
.LASF602:
	.string	"S_FATT_ATK2"
.LASF505:
	.string	"S_VILE_DIE10"
.LASF95:
	.string	"SPR_MISF"
.LASF94:
	.string	"SPR_MISG"
.LASF107:
	.string	"SPR_MISL"
.LASF1059:
	.string	"S_BSKULL"
.LASF138:
	.string	"SPR_BBRN"
.LASF480:
	.string	"S_VILE_ATK1"
.LASF481:
	.string	"S_VILE_ATK2"
.LASF482:
	.string	"S_VILE_ATK3"
.LASF483:
	.string	"S_VILE_ATK4"
.LASF484:
	.string	"S_VILE_ATK5"
.LASF485:
	.string	"S_VILE_ATK6"
.LASF486:
	.string	"S_VILE_ATK7"
.LASF227:
	.string	"S_PUNCH"
.LASF488:
	.string	"S_VILE_ATK9"
.LASF209:
	.string	"SPR_SMBT"
.LASF1594:
	.string	"sfx_hoof"
.LASF783:
	.string	"S_BOS2_RUN1"
.LASF784:
	.string	"S_BOS2_RUN2"
.LASF785:
	.string	"S_BOS2_RUN3"
.LASF786:
	.string	"S_BOS2_RUN4"
.LASF787:
	.string	"S_BOS2_RUN5"
.LASF788:
	.string	"S_BOS2_RUN6"
.LASF789:
	.string	"S_BOS2_RUN7"
.LASF790:
	.string	"S_BOS2_RUN8"
.LASF1462:
	.string	"lightlevel"
.LASF200:
	.string	"SPR_TRE1"
.LASF201:
	.string	"SPR_TRE2"
.LASF857:
	.string	"S_BSPI_STND"
.LASF1525:
	.string	"sfx_rxplod"
.LASF1352:
	.string	"meleestate"
.LASF1437:
	.string	"ammo"
.LASF647:
	.string	"S_CPOS_DIE1"
.LASF208:
	.string	"SPR_TRED"
.LASF101:
	.string	"SPR_BLUD"
.LASF603:
	.string	"S_FATT_ATK3"
.LASF604:
	.string	"S_FATT_ATK4"
.LASF605:
	.string	"S_FATT_ATK5"
.LASF606:
	.string	"S_FATT_ATK6"
.LASF607:
	.string	"S_FATT_ATK7"
.LASF608:
	.string	"S_FATT_ATK8"
.LASF609:
	.string	"S_FATT_ATK9"
.LASF111:
	.string	"SPR_TFOG"
.LASF315:
	.string	"S_BLOOD1"
.LASF316:
	.string	"S_BLOOD2"
.LASF317:
	.string	"S_BLOOD3"
.LASF1510:
	.string	"sfx_None"
.LASF1199:
	.string	"misc1"
.LASF1200:
	.string	"misc2"
.LASF913:
	.string	"S_CYBER_ATK5"
.LASF1536:
	.string	"sfx_dmpain"
.LASF914:
	.string	"S_CYBER_ATK6"
.LASF1497:
	.string	"angleturn"
.LASF1107:
	.string	"S_LAUN"
.LASF367:
	.string	"S_IFOG"
.LASF114:
	.string	"SPR_POSS"
.LASF119:
	.string	"SPR_FBXP"
.LASF1102:
	.string	"S_SBOX"
.LASF916:
	.string	"S_CYBER_DIE1"
.LASF917:
	.string	"S_CYBER_DIE2"
.LASF918:
	.string	"S_CYBER_DIE3"
.LASF919:
	.string	"S_CYBER_DIE4"
.LASF920:
	.string	"S_CYBER_DIE5"
.LASF921:
	.string	"S_CYBER_DIE6"
.LASF922:
	.string	"S_CYBER_DIE7"
.LASF794:
	.string	"S_BOS2_PAIN"
.LASF924:
	.string	"S_CYBER_DIE9"
.LASF1417:
	.string	"spawnpoint"
.LASF1634:
	.string	"P_MovePsprites"
.LASF1194:
	.string	"sprite"
.LASF1273:
	.string	"MT_MISC23"
.LASF1137:
	.string	"S_CANDELABRA"
.LASF477:
	.string	"S_VILE_RUN10"
.LASF478:
	.string	"S_VILE_RUN11"
.LASF479:
	.string	"S_VILE_RUN12"
.LASF1623:
	.string	"P_DamageMobj"
.LASF1097:
	.string	"S_ROCK"
.LASF246:
	.string	"S_SGUN1"
.LASF247:
	.string	"S_SGUN2"
.LASF248:
	.string	"S_SGUN3"
.LASF249:
	.string	"S_SGUN4"
.LASF250:
	.string	"S_SGUN5"
.LASF251:
	.string	"S_SGUN6"
.LASF252:
	.string	"S_SGUN7"
.LASF253:
	.string	"S_SGUN8"
.LASF254:
	.string	"S_SGUN9"
.LASF1342:
	.string	"doomednum"
.LASF243:
	.string	"S_SGUN"
.LASF1133:
	.string	"S_SHRTGRNCOL"
.LASF1612:
	.string	"sfx_ssdth"
.LASF1602:
	.string	"sfx_flamst"
.LASF818:
	.string	"S_SKULL_PAIN"
.LASF1658:
	.string	"A_CheckReload"
.LASF1231:
	.string	"MT_SPAWNSHOT"
.LASF1351:
	.string	"painsound"
.LASF1636:
	.string	"A_BFGsound"
.LASF542:
	.string	"S_TRACER2"
.LASF1141:
	.string	"S_TECHPILLAR"
.LASF546:
	.string	"S_SKEL_STND"
.LASF701:
	.string	"S_SARG_STND2"
.LASF1595:
	.string	"sfx_metal"
.LASF14:
	.string	"indetermined"
.LASF447:
	.string	"S_SPOS_DIE1"
.LASF448:
	.string	"S_SPOS_DIE2"
.LASF449:
	.string	"S_SPOS_DIE3"
.LASF450:
	.string	"S_SPOS_DIE4"
.LASF451:
	.string	"S_SPOS_DIE5"
.LASF1504:
	.string	"PST_REBORN"
.LASF1562:
	.string	"sfx_sgtatk"
.LASF1487:
	.string	"atkstate"
.LASF1176:
	.string	"S_HANGBNOBRAIN"
.LASF1559:
	.string	"sfx_mansit"
.LASF710:
	.string	"S_SARG_ATK1"
.LASF711:
	.string	"S_SARG_ATK2"
.LASF712:
	.string	"S_SARG_ATK3"
.LASF301:
	.string	"S_PLASMAUP"
.LASF1196:
	.string	"tics"
.LASF1057:
	.string	"S_YKEY"
.LASF1533:
	.string	"sfx_swtchn"
.LASF1357:
	.string	"speed"
.LASF270:
	.string	"S_DSNR1"
.LASF939:
	.string	"S_PAIN_DIE1"
.LASF1534:
	.string	"sfx_swtchx"
.LASF469:
	.string	"S_VILE_RUN2"
.LASF1600:
	.string	"sfx_itmbk"
.LASF1187:
	.string	"S_TECHLAMP4"
.LASF633:
	.string	"S_CPOS_RUN1"
.LASF634:
	.string	"S_CPOS_RUN2"
.LASF635:
	.string	"S_CPOS_RUN3"
.LASF636:
	.string	"S_CPOS_RUN4"
.LASF71:
	.string	"actionf_p1"
.LASF72:
	.string	"actionf_p2"
.LASF171:
	.string	"SPR_BPAK"
.LASF640:
	.string	"S_CPOS_RUN8"
.LASF1037:
	.string	"S_BEXP5"
.LASF1617:
	.string	"sfx_skeatk"
.LASF84:
	.string	"mapthing_t"
.LASF402:
	.string	"S_POSS_RUN2"
.LASF1628:
	.string	"P_AimLineAttack"
.LASF403:
	.string	"S_POSS_RUN3"
.LASF404:
	.string	"S_POSS_RUN4"
.LASF721:
	.string	"S_SARG_RAISE1"
.LASF405:
	.string	"S_POSS_RUN5"
.LASF73:
	.string	"acp1"
.LASF74:
	.string	"acp2"
.LASF725:
	.string	"S_SARG_RAISE5"
.LASF726:
	.string	"S_SARG_RAISE6"
.LASF1569:
	.string	"sfx_podth1"
.LASF1570:
	.string	"sfx_podth2"
.LASF1571:
	.string	"sfx_podth3"
.LASF1671:
	.string	"P_CheckAmmo"
.LASF1306:
	.string	"MT_MISC53"
.LASF1619:
	.string	"NUMSFX"
.LASF210:
	.string	"SPR_SMGT"
.LASF1001:
	.string	"S_KEENPAIN"
.LASF349:
	.string	"S_BFGEXP2"
.LASF350:
	.string	"S_BFGEXP3"
.LASF351:
	.string	"S_BFGEXP4"
.LASF280:
	.string	"S_CHAINFLASH1"
.LASF281:
	.string	"S_CHAINFLASH2"
.LASF236:
	.string	"S_PISTOLDOWN"
.LASF901:
	.string	"S_CYBER_RUN1"
.LASF902:
	.string	"S_CYBER_RUN2"
.LASF903:
	.string	"S_CYBER_RUN3"
.LASF904:
	.string	"S_CYBER_RUN4"
.LASF905:
	.string	"S_CYBER_RUN5"
.LASF906:
	.string	"S_CYBER_RUN6"
.LASF907:
	.string	"S_CYBER_RUN7"
.LASF908:
	.string	"S_CYBER_RUN8"
.LASF1346:
	.string	"seesound"
.LASF1088:
	.string	"S_PMAP2"
.LASF1089:
	.string	"S_PMAP3"
.LASF1090:
	.string	"S_PMAP4"
.LASF1091:
	.string	"S_PMAP5"
.LASF1092:
	.string	"S_PMAP6"
.LASF1382:
	.string	"MF_MISSILE"
.LASF1448:
	.string	"bonuscount"
.LASF819:
	.string	"S_SKULL_PAIN2"
.LASF1350:
	.string	"painchance"
.LASF645:
	.string	"S_CPOS_PAIN"
.LASF1459:
	.string	"ceilingheight"
.LASF12:
	.string	"commercial"
.LASF63:
	.string	"BTS_SAVESHIFT"
.LASF950:
	.string	"S_PAIN_RAISE6"
.LASF1469:
	.string	"specialdata"
.LASF1289:
	.string	"MT_MISC36"
.LASF754:
	.string	"S_BOSS_RUN1"
.LASF755:
	.string	"S_BOSS_RUN2"
.LASF756:
	.string	"S_BOSS_RUN3"
.LASF757:
	.string	"S_BOSS_RUN4"
.LASF758:
	.string	"S_BOSS_RUN5"
.LASF276:
	.string	"S_CHAINUP"
.LASF1669:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1443:
	.string	"killcount"
.LASF895:
	.string	"S_ARACH_PLEX2"
.LASF1139:
	.string	"S_TORCHTREE"
.LASF951:
	.string	"S_SSWV_STND"
.LASF897:
	.string	"S_ARACH_PLEX4"
.LASF1375:
	.string	"MF_NOGRAVITY"
.LASF998:
	.string	"S_COMMKEEN10"
.LASF999:
	.string	"S_COMMKEEN11"
.LASF1000:
	.string	"S_COMMKEEN12"
.LASF915:
	.string	"S_CYBER_PAIN"
.LASF434:
	.string	"S_SPOS_RUN1"
.LASF192:
	.string	"SPR_SMIT"
.LASF51:
	.string	"boolean"
.LASF437:
	.string	"S_SPOS_RUN4"
.LASF438:
	.string	"S_SPOS_RUN5"
.LASF129:
	.string	"SPR_SKUL"
.LASF440:
	.string	"S_SPOS_RUN7"
.LASF441:
	.string	"S_SPOS_RUN8"
.LASF1098:
	.string	"S_BROK"
.LASF1344:
	.string	"spawnhealth"
.LASF1578:
	.string	"sfx_cybdth"
.LASF228:
	.string	"S_PUNCHDOWN"
.LASF894:
	.string	"S_ARACH_PLEX"
.LASF1155:
	.string	"S_GREENTORCH"
.LASF30:
	.string	"wp_supershotgun"
.LASF294:
	.string	"S_SAWDOWN"
.LASF1523:
	.string	"sfx_sawhit"
.LASF1522:
	.string	"sfx_sawful"
.LASF1193:
	.string	"statenum_t"
.LASF1234:
	.string	"MT_TROOPSHOT"
.LASF1219:
	.string	"MT_BRUISERSHOT"
.LASF1590:
	.string	"sfx_vilact"
.LASF1665:
	.string	"P_CalcSwing"
.LASF1501:
	.string	"ticcmd_t"
.LASF1339:
	.string	"MT_MISC86"
.LASF1491:
	.string	"ps_weapon"
.LASF1555:
	.string	"sfx_spisit"
.LASF382:
	.string	"S_PLAY_PAIN2"
.LASF1521:
	.string	"sfx_sawidl"
.LASF777:
	.string	"S_BOSS_RAISE4"
.LASF778:
	.string	"S_BOSS_RAISE5"
.LASF1195:
	.string	"frame"
.LASF121:
	.string	"SPR_MANF"
.LASF632:
	.string	"S_CPOS_STND2"
.LASF1588:
	.string	"sfx_bspact"
.LASF445:
	.string	"S_SPOS_PAIN"
.LASF24:
	.string	"wp_shotgun"
.LASF413:
	.string	"S_POSS_PAIN2"
.LASF1240:
	.string	"MT_PUFF"
.LASF285:
	.string	"S_MISSILE1"
.LASF286:
	.string	"S_MISSILE2"
.LASF287:
	.string	"S_MISSILE3"
.LASF661:
	.string	"S_CPOS_RAISE2"
.LASF662:
	.string	"S_CPOS_RAISE3"
.LASF663:
	.string	"S_CPOS_RAISE4"
.LASF1453:
	.string	"psprites"
.LASF1105:
	.string	"S_MGUN"
.LASF1218:
	.string	"MT_BRUISER"
.LASF170:
	.string	"SPR_SBOX"
.LASF1445:
	.string	"secretcount"
.LASF1341:
	.string	"mobjtype_t"
.LASF1355:
	.string	"xdeathstate"
.LASF1430:
	.string	"powers"
.LASF814:
	.string	"S_SKULL_ATK1"
.LASF815:
	.string	"S_SKULL_ATK2"
.LASF816:
	.string	"S_SKULL_ATK3"
.LASF817:
	.string	"S_SKULL_ATK4"
.LASF795:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1220:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF1620:
	.string	"swingx"
.LASF1496:
	.string	"sidemove"
.LASF1362:
	.string	"activesound"
.LASF446:
	.string	"S_SPOS_PAIN2"
.LASF1593:
	.string	"sfx_punch"
.LASF610:
	.string	"S_FATT_ATK10"
.LASF207:
	.string	"SPR_TGRN"
.LASF1265:
	.string	"MT_MEGA"
.LASF109:
	.string	"SPR_BFE1"
.LASF110:
	.string	"SPR_BFE2"
.LASF1468:
	.string	"thinglist"
.LASF1299:
	.string	"MT_MISC46"
.LASF1663:
	.string	"count"
.LASF1227:
	.string	"MT_KEEN"
.LASF1466:
	.string	"blockbox"
.LASF41:
	.string	"ammotype_t"
.LASF667:
	.string	"S_TROO_STND"
.LASF614:
	.string	"S_FATT_DIE2"
.LASF305:
	.string	"S_PLASMAFLASH2"
.LASF34:
	.string	"weapontype_t"
.LASF1499:
	.string	"chatchar"
.LASF358:
	.string	"S_TFOG2"
.LASF359:
	.string	"S_TFOG3"
.LASF360:
	.string	"S_TFOG4"
.LASF361:
	.string	"S_TFOG5"
.LASF362:
	.string	"S_TFOG6"
.LASF363:
	.string	"S_TFOG7"
.LASF364:
	.string	"S_TFOG8"
.LASF365:
	.string	"S_TFOG9"
.LASF780:
	.string	"S_BOSS_RAISE7"
.LASF1439:
	.string	"attackdown"
.LASF85:
	.string	"SPR_TROO"
.LASF96:
	.string	"SPR_SAWG"
.LASF1256:
	.string	"MT_MISC10"
.LASF1551:
	.string	"sfx_sgtsit"
.LASF1670:
	.string	"P_Random"
.LASF1391:
	.string	"MF_NOTDMATCH"
.LASF145:
	.string	"SPR_BON1"
.LASF146:
	.string	"SPR_BON2"
.LASF1367:
	.string	"MF_SOLID"
.LASF17:
	.string	"it_redcard"
.LASF1134:
	.string	"S_TALLREDCOL"
.LASF1409:
	.string	"state"
.LASF1109:
	.string	"S_SHOT"
.LASF965:
	.string	"S_SSWV_ATK5"
.LASF1114:
	.string	"S_BLOODYTWITCH2"
.LASF1115:
	.string	"S_BLOODYTWITCH3"
.LASF1116:
	.string	"S_BLOODYTWITCH4"
.LASF855:
	.string	"S_SPID_DIE10"
.LASF856:
	.string	"S_SPID_DIE11"
.LASF1431:
	.string	"cards"
.LASF202:
	.string	"SPR_ELEC"
.LASF1003:
	.string	"S_BRAIN"
.LASF1630:
	.string	"P_SetMobjState"
.LASF1222:
	.string	"MT_SPIDER"
.LASF1086:
	.string	"S_SUIT"
.LASF100:
	.string	"SPR_BFGF"
.LASF99:
	.string	"SPR_BFGG"
.LASF926:
	.string	"S_PAIN_STND"
.LASF1553:
	.string	"sfx_brssit"
.LASF342:
	.string	"S_BFGLAND"
.LASF1032:
	.string	"S_BAR2"
.LASF1435:
	.string	"pendingweapon"
.LASF79:
	.string	"function"
.LASF1596:
	.string	"sfx_chgun"
.LASF36:
	.string	"am_shell"
.LASF1407:
	.string	"validcount"
.LASF1646:
	.string	"accurate"
.LASF1446:
	.string	"message"
.LASF622:
	.string	"S_FATT_DIE10"
.LASF21:
	.string	"NUMCARDS"
.LASF1159:
	.string	"S_REDTORCH"
.LASF1238:
	.string	"MT_BFG"
.LASF406:
	.string	"S_POSS_RUN6"
.LASF1564:
	.string	"sfx_vilatk"
.LASF116:
	.string	"SPR_VILE"
.LASF1599:
	.string	"sfx_bdcls"
.LASF1241:
	.string	"MT_BLOOD"
.LASF235:
	.string	"S_PISTOL"
.LASF50:
	.string	"true"
.LASF467:
	.string	"S_VILE_STND2"
.LASF885:
	.string	"S_BSPI_RAISE1"
.LASF886:
	.string	"S_BSPI_RAISE2"
.LASF887:
	.string	"S_BSPI_RAISE3"
.LASF888:
	.string	"S_BSPI_RAISE4"
.LASF889:
	.string	"S_BSPI_RAISE5"
.LASF890:
	.string	"S_BSPI_RAISE6"
.LASF891:
	.string	"S_BSPI_RAISE7"
.LASF1404:
	.string	"momx"
.LASF1383:
	.string	"MF_DROPPED"
.LASF1405:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF974:
	.string	"S_SSWV_XDIE1"
.LASF975:
	.string	"S_SSWV_XDIE2"
.LASF976:
	.string	"S_SSWV_XDIE3"
.LASF977:
	.string	"S_SSWV_XDIE4"
.LASF978:
	.string	"S_SSWV_XDIE5"
.LASF979:
	.string	"S_SSWV_XDIE6"
.LASF980:
	.string	"S_SSWV_XDIE7"
.LASF981:
	.string	"S_SSWV_XDIE8"
.LASF982:
	.string	"S_SSWV_XDIE9"
.LASF272:
	.string	"S_DSGUNFLASH1"
.LASF273:
	.string	"S_DSGUNFLASH2"
.LASF1272:
	.string	"MT_MISC22"
.LASF1454:
	.string	"didsecret"
.LASF530:
	.string	"S_FIRE25"
.LASF624:
	.string	"S_FATT_RAISE2"
.LASF1308:
	.string	"MT_MISC55"
.LASF1668:
	.string	"stnum"
.LASF1427:
	.string	"deltaviewheight"
.LASF19:
	.string	"it_yellowskull"
.LASF1062:
	.string	"S_RSKULL2"
.LASF1418:
	.string	"tracer"
.LASF837:
	.string	"S_SPID_RUN10"
.LASF838:
	.string	"S_SPID_RUN11"
.LASF839:
	.string	"S_SPID_RUN12"
.LASF1633:
	.string	"rcsid"
.LASF1543:
	.string	"sfx_wpnup"
.LASF1364:
	.string	"raisestate"
.LASF288:
	.string	"S_MISSILEFLASH1"
.LASF289:
	.string	"S_MISSILEFLASH2"
.LASF290:
	.string	"S_MISSILEFLASH3"
.LASF291:
	.string	"S_MISSILEFLASH4"
.LASF151:
	.string	"SPR_RSKU"
.LASF1563:
	.string	"sfx_skepch"
.LASF1516:
	.string	"sfx_dbcls"
.LASF76:
	.string	"think_t"
.LASF648:
	.string	"S_CPOS_DIE2"
.LASF649:
	.string	"S_CPOS_DIE3"
.LASF650:
	.string	"S_CPOS_DIE4"
.LASF1384:
	.string	"MF_SHADOW"
.LASF651:
	.string	"S_CPOS_DIE5"
.LASF652:
	.string	"S_CPOS_DIE6"
.LASF653:
	.string	"S_CPOS_DIE7"
.LASF1094:
	.string	"S_PVIS2"
.LASF1652:
	.string	"slope"
.LASF1233:
	.string	"MT_BARREL"
.LASF826:
	.string	"S_SPID_STND"
.LASF598:
	.string	"S_FATT_RUN10"
.LASF599:
	.string	"S_FATT_RUN11"
.LASF600:
	.string	"S_FATT_RUN12"
.LASF1225:
	.string	"MT_PAIN"
.LASF1152:
	.string	"S_BLUETORCH2"
.LASF1365:
	.string	"mobjinfo_t"
.LASF1153:
	.string	"S_BLUETORCH3"
.LASF1546:
	.string	"sfx_posit1"
.LASF1154:
	.string	"S_BLUETORCH4"
.LASF211:
	.string	"SPR_SMRT"
.LASF1548:
	.string	"sfx_posit3"
.LASF313:
	.string	"S_BFGFLASH1"
.LASF314:
	.string	"S_BFGFLASH2"
.LASF847:
	.string	"S_SPID_DIE2"
.LASF128:
	.string	"SPR_BOS2"
.LASF850:
	.string	"S_SPID_DIE5"
.LASF851:
	.string	"S_SPID_DIE6"
.LASF1606:
	.string	"sfx_bossit"
.LASF852:
	.string	"S_SPID_DIE7"
.LASF853:
	.string	"S_SPID_DIE8"
.LASF1143:
	.string	"S_EVILEYE2"
.LASF1144:
	.string	"S_EVILEYE3"
.LASF1145:
	.string	"S_EVILEYE4"
.LASF318:
	.string	"S_PUFF1"
.LASF319:
	.string	"S_PUFF2"
.LASF320:
	.string	"S_PUFF3"
.LASF139:
	.string	"SPR_BOSF"
.LASF1471:
	.string	"lines"
.LASF127:
	.string	"SPR_BOSS"
.LASF1667:
	.string	"position"
.LASF1237:
	.string	"MT_PLASMA"
.LASF1618:
	.string	"sfx_radio"
.LASF872:
	.string	"S_BSPI_ATK1"
.LASF873:
	.string	"S_BSPI_ATK2"
.LASF874:
	.string	"S_BSPI_ATK3"
.LASF875:
	.string	"S_BSPI_ATK4"
.LASF1054:
	.string	"S_BKEY2"
.LASF31:
	.string	"NUMWEAPONS"
.LASF859:
	.string	"S_BSPI_SIGHT"
.LASF1535:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF861:
	.string	"S_BSPI_RUN2"
.LASF1005:
	.string	"S_BRAIN_DIE1"
.LASF1006:
	.string	"S_BRAIN_DIE2"
.LASF1007:
	.string	"S_BRAIN_DIE3"
.LASF1008:
	.string	"S_BRAIN_DIE4"
.LASF340:
	.string	"S_BFGSHOT"
.LASF1146:
	.string	"S_FLOATSKULL"
.LASF496:
	.string	"S_VILE_DIE1"
.LASF497:
	.string	"S_VILE_DIE2"
.LASF498:
	.string	"S_VILE_DIE3"
.LASF499:
	.string	"S_VILE_DIE4"
.LASF500:
	.string	"S_VILE_DIE5"
.LASF501:
	.string	"S_VILE_DIE6"
.LASF502:
	.string	"S_VILE_DIE7"
.LASF503:
	.string	"S_VILE_DIE8"
.LASF504:
	.string	"S_VILE_DIE9"
.LASF1447:
	.string	"damagecount"
.LASF1368:
	.string	"MF_SHOOTABLE"
.LASF180:
	.string	"SPR_SMT2"
.LASF1056:
	.string	"S_RKEY2"
.LASF1027:
	.string	"S_ARM1"
.LASF1029:
	.string	"S_ARM2"
.LASF1122:
	.string	"S_HEADCANDLES"
.LASF158:
	.string	"SPR_PINS"
.LASF752:
	.string	"S_BOSS_STND"
.LASF1587:
	.string	"sfx_dmact"
.LASF732:
	.string	"S_HEAD_PAIN"
.LASF16:
	.string	"it_yellowcard"
.LASF1209:
	.string	"MT_TRACER"
.LASF613:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF615:
	.string	"S_FATT_DIE3"
.LASF616:
	.string	"S_FATT_DIE4"
.LASF617:
	.string	"S_FATT_DIE5"
.LASF618:
	.string	"S_FATT_DIE6"
.LASF619:
	.string	"S_FATT_DIE7"
.LASF620:
	.string	"S_FATT_DIE8"
.LASF621:
	.string	"S_FATT_DIE9"
.LASF688:
	.string	"S_TROO_XDIE2"
.LASF689:
	.string	"S_TROO_XDIE3"
.LASF690:
	.string	"S_TROO_XDIE4"
.LASF691:
	.string	"S_TROO_XDIE5"
.LASF692:
	.string	"S_TROO_XDIE6"
.LASF693:
	.string	"S_TROO_XDIE7"
.LASF694:
	.string	"S_TROO_XDIE8"
.LASF163:
	.string	"SPR_CLIP"
.LASF1135:
	.string	"S_SHRTREDCOL"
.LASF1651:
	.string	"A_Saw"
.LASF1178:
	.string	"S_HANGTSKULL"
.LASF48:
	.string	"NUMPOWERS"
.LASF1659:
	.string	"A_ReFire"
.LASF963:
	.string	"S_SSWV_ATK3"
.LASF964:
	.string	"S_SSWV_ATK4"
.LASF1666:
	.string	"swing"
.LASF269:
	.string	"S_DSGUN10"
.LASF1575:
	.string	"sfx_cacdth"
.LASF43:
	.string	"pw_strength"
.LASF197:
	.string	"SPR_CAND"
.LASF1532:
	.string	"sfx_stnmov"
.LASF1215:
	.string	"MT_SERGEANT"
.LASF55:
	.string	"BT_SPECIAL"
.LASF1527:
	.string	"sfx_firxpl"
.LASF1125:
	.string	"S_LIVESTICK"
.LASF1065:
	.string	"S_STIM"
.LASF37:
	.string	"am_cell"
.LASF15:
	.string	"it_bluecard"
.LASF1402:
	.string	"floorz"
.LASF728:
	.string	"S_HEAD_RUN1"
.LASF383:
	.string	"S_PLAY_DIE1"
.LASF384:
	.string	"S_PLAY_DIE2"
.LASF385:
	.string	"S_PLAY_DIE3"
.LASF386:
	.string	"S_PLAY_DIE4"
.LASF387:
	.string	"S_PLAY_DIE5"
.LASF388:
	.string	"S_PLAY_DIE6"
.LASF389:
	.string	"S_PLAY_DIE7"
.LASF399:
	.string	"S_POSS_STND"
.LASF355:
	.string	"S_TFOG"
.LASF1293:
	.string	"MT_MISC40"
.LASF1294:
	.string	"MT_MISC41"
.LASF1641:
	.string	"A_FireCGun"
.LASF1419:
	.string	"subsector_s"
.LASF715:
	.string	"S_SARG_DIE1"
.LASF716:
	.string	"S_SARG_DIE2"
.LASF717:
	.string	"S_SARG_DIE3"
.LASF718:
	.string	"S_SARG_DIE4"
.LASF1016:
	.string	"S_SPAWNFIRE1"
.LASF1017:
	.string	"S_SPAWNFIRE2"
.LASF1018:
	.string	"S_SPAWNFIRE3"
.LASF1019:
	.string	"S_SPAWNFIRE4"
.LASF1020:
	.string	"S_SPAWNFIRE5"
.LASF1021:
	.string	"S_SPAWNFIRE6"
.LASF1022:
	.string	"S_SPAWNFIRE7"
.LASF1023:
	.string	"S_SPAWNFIRE8"
.LASF687:
	.string	"S_TROO_XDIE1"
.LASF1498:
	.string	"consistancy"
.LASF1664:
	.string	"P_BringUpWeapon"
.LASF1420:
	.string	"sector"
.LASF1507:
	.string	"linetarget"
.LASF1180:
	.string	"S_HANGTNOBRAIN"
.LASF335:
	.string	"S_PLASEXP2"
.LASF336:
	.string	"S_PLASEXP3"
.LASF337:
	.string	"S_PLASEXP4"
.LASF338:
	.string	"S_PLASEXP5"
.LASF28:
	.string	"wp_bfg"
.LASF1164:
	.string	"S_BTORCHSHRT2"
.LASF1165:
	.string	"S_BTORCHSHRT3"
.LASF1166:
	.string	"S_BTORCHSHRT4"
.LASF1582:
	.string	"sfx_kntdth"
.LASF468:
	.string	"S_VILE_RUN1"
.LASF258:
	.string	"S_DSGUNDOWN"
.LASF470:
	.string	"S_VILE_RUN3"
.LASF471:
	.string	"S_VILE_RUN4"
.LASF472:
	.string	"S_VILE_RUN5"
.LASF473:
	.string	"S_VILE_RUN6"
.LASF474:
	.string	"S_VILE_RUN7"
.LASF475:
	.string	"S_VILE_RUN8"
.LASF476:
	.string	"S_VILE_RUN9"
.LASF719:
	.string	"S_SARG_DIE5"
.LASF720:
	.string	"S_SARG_DIE6"
.LASF1574:
	.string	"sfx_sgtdth"
.LASF1396:
	.string	"thinker"
.LASF1604:
	.string	"sfx_bospit"
.LASF560:
	.string	"S_SKEL_FIST1"
.LASF561:
	.string	"S_SKEL_FIST2"
.LASF562:
	.string	"S_SKEL_FIST3"
.LASF563:
	.string	"S_SKEL_FIST4"
.LASF299:
	.string	"S_PLASMA"
.LASF1078:
	.string	"S_PINS"
.LASF1486:
	.string	"readystate"
.LASF1539:
	.string	"sfx_mnpain"
.LASF1151:
	.string	"S_BLUETORCH"
.LASF589:
	.string	"S_FATT_RUN1"
.LASF590:
	.string	"S_FATT_RUN2"
.LASF591:
	.string	"S_FATT_RUN3"
.LASF592:
	.string	"S_FATT_RUN4"
.LASF45:
	.string	"pw_ironfeet"
.LASF594:
	.string	"S_FATT_RUN6"
.LASF595:
	.string	"S_FATT_RUN7"
.LASF596:
	.string	"S_FATT_RUN8"
.LASF1127:
	.string	"S_MEAT2"
.LASF1128:
	.string	"S_MEAT3"
.LASF1129:
	.string	"S_MEAT4"
.LASF1130:
	.string	"S_MEAT5"
.LASF1560:
	.string	"sfx_pesit"
.LASF242:
	.string	"S_PISTOLFLASH"
.LASF1458:
	.string	"floorheight"
.LASF462:
	.string	"S_SPOS_RAISE2"
.LASF463:
	.string	"S_SPOS_RAISE3"
.LASF464:
	.string	"S_SPOS_RAISE4"
.LASF465:
	.string	"S_SPOS_RAISE5"
.LASF154:
	.string	"SPR_MEDI"
.LASF156:
	.string	"SPR_PINV"
.LASF1549:
	.string	"sfx_bgsit1"
.LASF1550:
	.string	"sfx_bgsit2"
.LASF1584:
	.string	"sfx_skedth"
.LASF1004:
	.string	"S_BRAIN_PAIN"
.LASF275:
	.string	"S_CHAINDOWN"
.LASF1622:
	.string	"bulletslope"
.LASF1379:
	.string	"MF_SLIDE"
.LASF494:
	.string	"S_VILE_PAIN"
.LASF541:
	.string	"S_TRACER"
.LASF1643:
	.string	"A_FireShotgun"
.LASF961:
	.string	"S_SSWV_ATK1"
.LASF962:
	.string	"S_SSWV_ATK2"
.LASF491:
	.string	"S_VILE_HEAL1"
.LASF492:
	.string	"S_VILE_HEAL2"
.LASF493:
	.string	"S_VILE_HEAL3"
.LASF966:
	.string	"S_SSWV_ATK6"
.LASF1412:
	.string	"movecount"
.LASF148:
	.string	"SPR_RKEY"
.LASF1556:
	.string	"sfx_bspsit"
.LASF1112:
	.string	"S_STALAG"
.LASF1537:
	.string	"sfx_popain"
.LASF827:
	.string	"S_SPID_STND2"
.LASF69:
	.string	"angle_t"
.LASF1461:
	.string	"ceilingpic"
.LASF1113:
	.string	"S_BLOODYTWITCH"
.LASF1182:
	.string	"S_SMALLPOOL"
.LASF1494:
	.string	"pspdef_t"
.LASF1309:
	.string	"MT_MISC56"
.LASF611:
	.string	"S_FATT_PAIN"
.LASF375:
	.string	"S_PLAY_RUN1"
.LASF376:
	.string	"S_PLAY_RUN2"
.LASF377:
	.string	"S_PLAY_RUN3"
.LASF378:
	.string	"S_PLAY_RUN4"
.LASF1662:
	.string	"P_FireWeapon"
.LASF1103:
	.string	"S_BPAK"
.LASF65:
	.string	"double"
.LASF143:
	.string	"SPR_BEXP"
.LASF1423:
	.string	"player_s"
.LASF1060:
	.string	"S_BSKULL2"
.LASF1374:
	.string	"MF_SPAWNCEILING"
.LASF102:
	.string	"SPR_PUFF"
.LASF989:
	.string	"S_COMMKEEN"
.LASF1528:
	.string	"sfx_pstart"
.LASF1440:
	.string	"usedown"
.LASF781:
	.string	"S_BOS2_STND"
.LASF108:
	.string	"SPR_BFS1"
.LASF1012:
	.string	"S_SPAWN1"
.LASF1013:
	.string	"S_SPAWN2"
.LASF1014:
	.string	"S_SPAWN3"
.LASF1015:
	.string	"S_SPAWN4"
.LASF1185:
	.string	"S_TECHLAMP2"
.LASF1186:
	.string	"S_TECHLAMP3"
.LASF29:
	.string	"wp_chainsaw"
.LASF1223:
	.string	"MT_BABY"
.LASF1438:
	.string	"maxammo"
.LASF1642:
	.string	"A_FireShotgun2"
.LASF1601:
	.string	"sfx_flame"
.LASF1126:
	.string	"S_LIVESTICK2"
.LASF1171:
	.string	"S_RTORCHSHRT"
.LASF1269:
	.string	"MT_MISC19"
.LASF130:
	.string	"SPR_SPID"
.LASF727:
	.string	"S_HEAD_STND"
.LASF702:
	.string	"S_SARG_RUN1"
.LASF703:
	.string	"S_SARG_RUN2"
.LASF705:
	.string	"S_SARG_RUN4"
.LASF706:
	.string	"S_SARG_RUN5"
.LASF707:
	.string	"S_SARG_RUN6"
.LASF708:
	.string	"S_SARG_RUN7"
.LASF709:
	.string	"S_SARG_RUN8"
.LASF1247:
	.string	"MT_MISC1"
.LASF1248:
	.string	"MT_MISC2"
.LASF1249:
	.string	"MT_MISC3"
.LASF1250:
	.string	"MT_MISC4"
.LASF1251:
	.string	"MT_MISC5"
.LASF1252:
	.string	"MT_MISC6"
.LASF1253:
	.string	"MT_MISC7"
.LASF1254:
	.string	"MT_MISC8"
.LASF1255:
	.string	"MT_MISC9"
.LASF292:
	.string	"S_SAW"
.LASF159:
	.string	"SPR_MEGA"
.LASF381:
	.string	"S_PLAY_PAIN"
.LASF1565:
	.string	"sfx_claw"
.LASF333:
	.string	"S_PLASBALL2"
.LASF1492:
	.string	"ps_flash"
.LASF1424:
	.string	"playerstate"
.LASF137:
	.string	"SPR_KEEN"
.LASF967:
	.string	"S_SSWV_PAIN"
.LASF1349:
	.string	"painstate"
.LASF1002:
	.string	"S_KEENPAIN2"
.LASF47:
	.string	"pw_infrared"
.LASF489:
	.string	"S_VILE_ATK10"
.LASF490:
	.string	"S_VILE_ATK11"
.LASF968:
	.string	"S_SSWV_PAIN2"
.LASF1333:
	.string	"MT_MISC80"
.LASF1356:
	.string	"deathsound"
.LASF1042:
	.string	"S_BON1A"
.LASF1043:
	.string	"S_BON1B"
.LASF1044:
	.string	"S_BON1C"
.LASF1045:
	.string	"S_BON1D"
.LASF1046:
	.string	"S_BON1E"
.LASF1509:
	.string	"leveltime"
.LASF1478:
	.string	"sector_t"
.LASF157:
	.string	"SPR_PSTR"
.LASF1271:
	.string	"MT_MISC21"
.LASF713:
	.string	"S_SARG_PAIN"
.LASF1266:
	.string	"MT_CLIP"
.LASF1635:
	.string	"P_SetupPsprites"
.LASF172:
	.string	"SPR_BFUG"
.LASF1321:
	.string	"MT_MISC68"
.LASF1038:
	.string	"S_BBAR1"
.LASF1039:
	.string	"S_BBAR2"
.LASF1040:
	.string	"S_BBAR3"
.LASF226:
	.string	"S_LIGHTDONE"
.LASF877:
	.string	"S_BSPI_PAIN2"
.LASF1432:
	.string	"backpack"
.LASF677:
	.string	"S_TROO_ATK1"
.LASF678:
	.string	"S_TROO_ATK2"
.LASF679:
	.string	"S_TROO_ATK3"
.LASF821:
	.string	"S_SKULL_DIE2"
.LASF822:
	.string	"S_SKULL_DIE3"
.LASF823:
	.string	"S_SKULL_DIE4"
.LASF824:
	.string	"S_SKULL_DIE5"
.LASF825:
	.string	"S_SKULL_DIE6"
.LASF176:
	.string	"SPR_PLAS"
.LASF1048:
	.string	"S_BON2A"
.LASF1049:
	.string	"S_BON2B"
.LASF89:
	.string	"SPR_PISF"
.LASF88:
	.string	"SPR_PISG"
.LASF1052:
	.string	"S_BON2E"
.LASF1276:
	.string	"MT_CHAINGUN"
.LASF324:
	.string	"S_TBALLX1"
.LASF325:
	.string	"S_TBALLX2"
.LASF326:
	.string	"S_TBALLX3"
.LASF32:
	.string	"wp_nochange"
.LASF1213:
	.string	"MT_CHAINGUY"
.LASF1457:
	.string	"degenmobj_t"
.LASF1547:
	.string	"sfx_posit2"
.LASF1495:
	.string	"forwardmove"
.LASF820:
	.string	"S_SKULL_DIE1"
.LASF1503:
	.string	"PST_DEAD"
.LASF1183:
	.string	"S_BRAINSTEM"
.LASF988:
	.string	"S_KEENSTND"
.LASF113:
	.string	"SPR_PLAY"
.LASF1378:
	.string	"MF_NOCLIP"
.LASF1434:
	.string	"readyweapon"
.LASF1552:
	.string	"sfx_cacsit"
.LASF1561:
	.string	"sfx_sklatk"
.LASF1123:
	.string	"S_HEADCANDLES2"
.LASF1243:
	.string	"MT_IFOG"
.LASF204:
	.string	"SPR_FSKU"
.LASF1607:
	.string	"sfx_bospn"
.LASF439:
	.string	"S_SPOS_RUN6"
.LASF295:
	.string	"S_SAWUP"
.LASF1028:
	.string	"S_ARM1A"
.LASF631:
	.string	"S_CPOS_STND"
.LASF1284:
	.string	"MT_MISC31"
.LASF1406:
	.string	"momz"
.LASF62:
	.string	"BTS_SAVEMASK"
.LASF1286:
	.string	"MT_MISC33"
.LASF1287:
	.string	"MT_MISC34"
.LASF1474:
	.string	"bbox"
.LASF334:
	.string	"S_PLASEXP"
.LASF1290:
	.string	"MT_MISC37"
.LASF1541:
	.string	"sfx_slop"
.LASF1118:
	.string	"S_DEADBOTTOM"
.LASF1598:
	.string	"sfx_bdopn"
.LASF1175:
	.string	"S_HANGNOGUTS"
.LASF1348:
	.string	"attacksound"
.LASF1079:
	.string	"S_PINS2"
.LASF1080:
	.string	"S_PINS3"
.LASF1081:
	.string	"S_PINS4"
.LASF61:
	.string	"BTS_SAVEGAME"
.LASF933:
	.string	"S_PAIN_ATK1"
.LASF934:
	.string	"S_PAIN_ATK2"
.LASF935:
	.string	"S_PAIN_ATK3"
.LASF936:
	.string	"S_PAIN_ATK4"
.LASF245:
	.string	"S_SGUNUP"
.LASF1376:
	.string	"MF_DROPOFF"
.LASF1476:
	.string	"frontsector"
.LASF198:
	.string	"SPR_CBRA"
.LASF1354:
	.string	"deathstate"
.LASF1030:
	.string	"S_ARM2A"
.LASF899:
	.string	"S_CYBER_STND"
.LASF1656:
	.string	"newstate"
.LASF53:
	.string	"BT_ATTACK"
.LASF1058:
	.string	"S_YKEY2"
.LASF508:
	.string	"S_FIRE3"
.LASF1347:
	.string	"reactiontime"
.LASF513:
	.string	"S_FIRE8"
.LASF753:
	.string	"S_BOSS_STND2"
.LASF1591:
	.string	"sfx_noway"
.LASF1398:
	.string	"sprev"
.LASF296:
	.string	"S_SAW1"
.LASF297:
	.string	"S_SAW2"
.LASF298:
	.string	"S_SAW3"
.LASF1041:
	.string	"S_BON1"
.LASF1047:
	.string	"S_BON2"
.LASF1415:
	.string	"player"
.LASF293:
	.string	"S_SAWB"
.LASF681:
	.string	"S_TROO_PAIN2"
.LASF1229:
	.string	"MT_BOSSSPIT"
.LASF506:
	.string	"S_FIRE1"
.LASF507:
	.string	"S_FIRE2"
.LASF66:
	.string	"fixed_t"
.LASF509:
	.string	"S_FIRE4"
.LASF510:
	.string	"S_FIRE5"
.LASF511:
	.string	"S_FIRE6"
.LASF512:
	.string	"S_FIRE7"
.LASF166:
	.string	"SPR_BROK"
.LASF514:
	.string	"S_FIRE9"
.LASF1297:
	.string	"MT_MISC44"
.LASF1298:
	.string	"MT_MISC45"
.LASF1099:
	.string	"S_CELL"
.LASF1300:
	.string	"MT_MISC47"
.LASF164:
	.string	"SPR_AMMO"
.LASF1301:
	.string	"MT_MISC48"
.LASF1302:
	.string	"MT_MISC49"
.LASF812:
	.string	"S_SKULL_RUN1"
.LASF813:
	.string	"S_SKULL_RUN2"
.LASF1179:
	.string	"S_HANGTLOOKUP"
.LASF1369:
	.string	"MF_NOSECTOR"
.LASF274:
	.string	"S_CHAIN"
.LASF304:
	.string	"S_PLASMAFLASH1"
.LASF260:
	.string	"S_DSGUN1"
.LASF261:
	.string	"S_DSGUN2"
.LASF155:
	.string	"SPR_SOUL"
.LASF115:
	.string	"SPR_SPOS"
.LASF264:
	.string	"S_DSGUN5"
.LASF265:
	.string	"S_DSGUN6"
.LASF266:
	.string	"S_DSGUN7"
.LASF267:
	.string	"S_DSGUN8"
.LASF268:
	.string	"S_DSGUN9"
.LASF432:
	.string	"S_SPOS_STND"
.LASF135:
	.string	"SPR_PAIN"
.LASF660:
	.string	"S_CPOS_RAISE1"
.LASF1433:
	.string	"frags"
.LASF1581:
	.string	"sfx_vildth"
.LASF1428:
	.string	"armorpoints"
.LASF1500:
	.string	"buttons"
.LASF309:
	.string	"S_BFG1"
.LASF310:
	.string	"S_BFG2"
.LASF311:
	.string	"S_BFG3"
.LASF312:
	.string	"S_BFG4"
.LASF224:
	.string	"spritenum_t"
.LASF271:
	.string	"S_DSNR2"
.LASF811:
	.string	"S_SKULL_STND2"
.LASF1074:
	.string	"S_PINV2"
.LASF1075:
	.string	"S_PINV3"
.LASF704:
	.string	"S_SARG_RUN3"
.LASF1189:
	.string	"S_TECH2LAMP2"
.LASF1190:
	.string	"S_TECH2LAMP3"
.LASF1191:
	.string	"S_TECH2LAMP4"
.LASF68:
	.string	"finecosine"
.LASF1472:
	.string	"line_s"
.LASF1387:
	.string	"MF_INFLOAT"
.LASF87:
	.string	"SPR_PUNG"
.LASF655:
	.string	"S_CPOS_XDIE2"
.LASF656:
	.string	"S_CPOS_XDIE3"
.LASF657:
	.string	"S_CPOS_XDIE4"
.LASF658:
	.string	"S_CPOS_XDIE5"
.LASF659:
	.string	"S_CPOS_XDIE6"
.LASF840:
	.string	"S_SPID_ATK1"
.LASF841:
	.string	"S_SPID_ATK2"
.LASF842:
	.string	"S_SPID_ATK3"
.LASF843:
	.string	"S_SPID_ATK4"
.LASF564:
	.string	"S_SKEL_MISS1"
.LASF565:
	.string	"S_SKEL_MISS2"
.LASF566:
	.string	"S_SKEL_MISS3"
.LASF567:
	.string	"S_SKEL_MISS4"
.LASF321:
	.string	"S_PUFF4"
.LASF1061:
	.string	"S_RSKULL"
.LASF893:
	.string	"S_ARACH_PLAZ2"
.LASF1303:
	.string	"MT_MISC50"
.LASF741:
	.string	"S_HEAD_RAISE1"
.LASF1338:
	.string	"MT_MISC85"
.LASF742:
	.string	"S_HEAD_RAISE2"
.LASF743:
	.string	"S_HEAD_RAISE3"
.LASF1441:
	.string	"cheats"
.LASF150:
	.string	"SPR_BSKU"
.LASF745:
	.string	"S_HEAD_RAISE5"
.LASF746:
	.string	"S_HEAD_RAISE6"
.LASF1490:
	.string	"weaponinfo"
.LASF1281:
	.string	"MT_SUPERSHOTGUN"
.LASF161:
	.string	"SPR_PMAP"
.LASF1009:
	.string	"S_BRAINEYE"
.LASF162:
	.string	"SPR_PVIS"
.LASF1502:
	.string	"PST_LIVE"
.LASF1629:
	.string	"P_NoiseAlert"
.LASF1626:
	.string	"R_PointToAngle2"
.LASF1239:
	.string	"MT_ARACHPLAZ"
.LASF1385:
	.string	"MF_NOBLOOD"
.LASF487:
	.string	"S_VILE_ATK8"
.LASF428:
	.string	"S_POSS_RAISE1"
.LASF429:
	.string	"S_POSS_RAISE2"
.LASF430:
	.string	"S_POSS_RAISE3"
.LASF431:
	.string	"S_POSS_RAISE4"
.LASF1655:
	.string	"A_Raise"
.LASF283:
	.string	"S_MISSILEDOWN"
.LASF1657:
	.string	"A_Lower"
.LASF1592:
	.string	"sfx_barexp"
.LASF1147:
	.string	"S_FLOATSKULL2"
.LASF1148:
	.string	"S_FLOATSKULL3"
.LASF1515:
	.string	"sfx_dbopn"
.LASF1640:
	.string	"A_Light0"
.LASF1519:
	.string	"sfx_bfg"
.LASF1082:
	.string	"S_MEGA"
.LASF762:
	.string	"S_BOSS_ATK1"
.LASF763:
	.string	"S_BOSS_ATK2"
.LASF764:
	.string	"S_BOSS_ATK3"
.LASF1401:
	.string	"subsector"
.LASF220:
	.string	"SPR_BRS1"
.LASF1456:
	.string	"vertex_t"
.LASF569:
	.string	"S_SKEL_PAIN2"
.LASF1106:
	.string	"S_CSAW"
.LASF42:
	.string	"pw_invulnerability"
.LASF749:
	.string	"S_BRBALLX1"
.LASF750:
	.string	"S_BRBALLX2"
.LASF751:
	.string	"S_BRBALLX3"
.LASF879:
	.string	"S_BSPI_DIE2"
.LASF880:
	.string	"S_BSPI_DIE3"
.LASF881:
	.string	"S_BSPI_DIE4"
.LASF882:
	.string	"S_BSPI_DIE5"
.LASF25:
	.string	"wp_chaingun"
.LASF884:
	.string	"S_BSPI_DIE7"
.LASF435:
	.string	"S_SPOS_RUN2"
.LASF1477:
	.string	"backsector"
.LASF436:
	.string	"S_SPOS_RUN3"
.LASF938:
	.string	"S_PAIN_PAIN2"
.LASF573:
	.string	"S_SKEL_DIE4"
.LASF1511:
	.string	"sfx_pistol"
.LASF169:
	.string	"SPR_SHEL"
.LASF1322:
	.string	"MT_MISC69"
.LASF1429:
	.string	"armortype"
.LASF49:
	.string	"false"
.LASF221:
	.string	"SPR_TLMP"
.LASF1637:
	.string	"A_BFGSpray"
.LASF1381:
	.string	"MF_TELEPORT"
.LASF400:
	.string	"S_POSS_STND2"
.LASF1280:
	.string	"MT_SHOTGUN"
.LASF1205:
	.string	"MT_SHOTGUY"
.LASF1444:
	.string	"itemcount"
.LASF1184:
	.string	"S_TECHLAMP"
.LASF1226:
	.string	"MT_WOLFSS"
.LASF782:
	.string	"S_BOS2_STND2"
.LASF1465:
	.string	"soundtarget"
.LASF277:
	.string	"S_CHAIN1"
.LASF278:
	.string	"S_CHAIN2"
.LASF279:
	.string	"S_CHAIN3"
.LASF330:
	.string	"S_RBALLX2"
.LASF331:
	.string	"S_RBALLX3"
.LASF206:
	.string	"SPR_TBLU"
.LASF433:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1512:
	.string	"sfx_shotgn"
.LASF1397:
	.string	"snext"
.LASF40:
	.string	"am_noammo"
.LASF1394:
	.string	"thinker_s"
.LASF80:
	.string	"thinker_t"
.LASF1572:
	.string	"sfx_bgdth1"
.LASF1573:
	.string	"sfx_bgdth2"
.LASF409:
	.string	"S_POSS_ATK1"
.LASF410:
	.string	"S_POSS_ATK2"
.LASF411:
	.string	"S_POSS_ATK3"
.LASF1621:
	.string	"swingy"
.LASF1324:
	.string	"MT_MISC71"
.LASF1172:
	.string	"S_RTORCHSHRT2"
.LASF1173:
	.string	"S_RTORCHSHRT3"
.LASF1174:
	.string	"S_RTORCHSHRT4"
.LASF1076:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF860:
	.string	"S_BSPI_RUN1"
.LASF1330:
	.string	"MT_MISC77"
.LASF1331:
	.string	"MT_MISC78"
.LASF1332:
	.string	"MT_MISC79"
.LASF1221:
	.string	"MT_SKULL"
.LASF1208:
	.string	"MT_UNDEAD"
.LASF33:
	.string	"GameMode_t"
.LASF77:
	.string	"prev"
.LASF570:
	.string	"S_SKEL_DIE1"
.LASF571:
	.string	"S_SKEL_DIE2"
.LASF572:
	.string	"S_SKEL_DIE3"
.LASF117:
	.string	"SPR_FIRE"
.LASF574:
	.string	"S_SKEL_DIE5"
.LASF575:
	.string	"S_SKEL_DIE6"
.LASF1181:
	.string	"S_COLONGIBS"
.LASF1508:
	.string	"gamemode"
.LASF1654:
	.string	"A_GunFlash"
.LASF222:
	.string	"SPR_TLP2"
.LASF332:
	.string	"S_PLASBALL"
.LASF1568:
	.string	"sfx_pdiehi"
.LASF178:
	.string	"SPR_SGN2"
.LASF83:
	.string	"options"
.LASF131:
	.string	"SPR_BSPI"
.LASF133:
	.string	"SPR_APBX"
.LASF1452:
	.string	"colormap"
.LASF13:
	.string	"retail"
.LASF1257:
	.string	"MT_MISC11"
.LASF1258:
	.string	"MT_MISC12"
.LASF1260:
	.string	"MT_MISC13"
.LASF1262:
	.string	"MT_MISC14"
.LASF1263:
	.string	"MT_MISC15"
.LASF1264:
	.string	"MT_MISC16"
.LASF1267:
	.string	"MT_MISC17"
.LASF1268:
	.string	"MT_MISC18"
.LASF1095:
	.string	"S_CLIP"
.LASF1358:
	.string	"radius"
.LASF1624:
	.string	"P_SpawnPlayerMissile"
.LASF1410:
	.string	"health"
.LASF1230:
	.string	"MT_BOSSTARGET"
.LASF1557:
	.string	"sfx_kntsit"
.LASF1389:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_pspr.c"
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
