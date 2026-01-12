	.file	"p_inter.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_inter.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 50
rcsid:
	.string	"$Id: p_inter.c,v 1.4 1997/02/03 22:45:11 b1 Exp $"
	.globl	maxammo
	.data
	.align 16
	.type	maxammo, @object
	.size	maxammo, 16
maxammo:
	.long	200
	.long	50
	.long	300
	.long	50
	.globl	clipammo
	.align 16
	.type	clipammo, @object
	.size	clipammo, 16
clipammo:
	.long	10
	.long	4
	.long	20
	.long	1
	.section	.rodata
.LC0:
	.string	"P_GiveAmmo: bad type %i"
	.text
	.globl	P_GiveAmmo
	.type	P_GiveAmmo, @function
P_GiveAmmo:
.LFB0:
	.file 1 "p_inter.c"
	.loc 1 78 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
	movl	%esi, -28(%rbp)	# ammo, ammo
	movl	%edx, -32(%rbp)	# num, num
# p_inter.c:81:     if (ammo == am_noammo)
	.loc 1 81 8
	cmpl	$5, -28(%rbp)	#, ammo
	jne	.L2	#,
# p_inter.c:82: 	return false;
	.loc 1 82 9
	movl	$0, %eax	#, _24
	jmp	.L3	#
.L2:
# p_inter.c:84:     if (ammo < 0 || ammo > NUMAMMO)
	.loc 1 84 8
	cmpl	$4, -28(%rbp)	#, ammo
	jbe	.L4	#,
# p_inter.c:85: 	I_Error ("P_GiveAmmo: bad type %i", ammo);
	.loc 1 85 2
	movl	-28(%rbp), %eax	# ammo, tmp105
	movl	%eax, %esi	# tmp105,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L4:
# p_inter.c:87:     if ( player->ammo[ammo] == player->maxammo[ammo]  )
	.loc 1 87 22
	movq	-24(%rbp), %rax	# player, tmp107
	movl	-28(%rbp), %edx	# ammo, tmp108
	addq	$40, %rdx	#, tmp109
	movl	(%rax,%rdx,4), %edx	# player_36(D)->ammo[ammo_33(D)], _1
# p_inter.c:87:     if ( player->ammo[ammo] == player->maxammo[ammo]  )
	.loc 1 87 47
	movq	-24(%rbp), %rax	# player, tmp110
	movl	-28(%rbp), %ecx	# ammo, tmp111
	addq	$44, %rcx	#, tmp112
	movl	(%rax,%rcx,4), %eax	# player_36(D)->maxammo[ammo_33(D)], _2
# p_inter.c:87:     if ( player->ammo[ammo] == player->maxammo[ammo]  )
	.loc 1 87 8
	cmpl	%eax, %edx	# _2, _1
	jne	.L5	#,
# p_inter.c:88: 	return false;
	.loc 1 88 9
	movl	$0, %eax	#, _24
	jmp	.L3	#
.L5:
# p_inter.c:90:     if (num)
	.loc 1 90 8
	cmpl	$0, -32(%rbp)	#, num
	je	.L6	#,
# p_inter.c:91: 	num *= clipammo[ammo];
	.loc 1 91 17
	movl	-28(%rbp), %eax	# ammo, tmp113
	leaq	0(,%rax,4), %rdx	#, tmp114
	leaq	clipammo(%rip), %rax	#, tmp115
	movl	(%rdx,%rax), %eax	# clipammo[ammo_33(D)], _3
# p_inter.c:91: 	num *= clipammo[ammo];
	.loc 1 91 6
	movl	-32(%rbp), %edx	# num, tmp117
	imull	%edx, %eax	# tmp117, tmp116
	movl	%eax, -32(%rbp)	# tmp116, num
	jmp	.L7	#
.L6:
# p_inter.c:93: 	num = clipammo[ammo]/2;
	.loc 1 93 16
	movl	-28(%rbp), %eax	# ammo, tmp118
	leaq	0(,%rax,4), %rdx	#, tmp119
	leaq	clipammo(%rip), %rax	#, tmp120
	movl	(%rdx,%rax), %eax	# clipammo[ammo_33(D)], _4
# p_inter.c:93: 	num = clipammo[ammo]/2;
	.loc 1 93 6
	movl	%eax, %edx	# _4, tmp121
	shrl	$31, %edx	#, tmp121
	addl	%edx, %eax	# tmp121, tmp122
	sarl	%eax	# tmp123
	movl	%eax, -32(%rbp)	# tmp123, num
.L7:
# p_inter.c:95:     if (gameskill == sk_baby
	.loc 1 95 19
	movl	gameskill(%rip), %eax	# gameskill, gameskill.0_5
# p_inter.c:95:     if (gameskill == sk_baby
	.loc 1 95 8
	testl	%eax, %eax	# gameskill.0_5
	je	.L8	#,
# p_inter.c:96: 	|| gameskill == sk_nightmare)
	.loc 1 96 15
	movl	gameskill(%rip), %eax	# gameskill, gameskill.1_6
# p_inter.c:96: 	|| gameskill == sk_nightmare)
	.loc 1 96 2
	cmpl	$4, %eax	#, gameskill.1_6
	jne	.L9	#,
.L8:
# p_inter.c:100: 	num <<= 1;
	.loc 1 100 6
	sall	-32(%rbp)	# num
.L9:
# p_inter.c:104:     oldammo = player->ammo[ammo];
	.loc 1 104 13
	movq	-24(%rbp), %rax	# player, tmp124
	movl	-28(%rbp), %edx	# ammo, tmp125
	addq	$40, %rdx	#, tmp126
	movl	(%rax,%rdx,4), %eax	# player_36(D)->ammo[ammo_33(D)], tmp127
	movl	%eax, -4(%rbp)	# tmp127, oldammo
# p_inter.c:105:     player->ammo[ammo] += num;
	.loc 1 105 17
	movq	-24(%rbp), %rax	# player, tmp128
	movl	-28(%rbp), %edx	# ammo, tmp129
	addq	$40, %rdx	#, tmp130
	movl	(%rax,%rdx,4), %edx	# player_36(D)->ammo[ammo_33(D)], _7
# p_inter.c:105:     player->ammo[ammo] += num;
	.loc 1 105 24
	movl	-32(%rbp), %eax	# num, tmp131
	leal	(%rdx,%rax), %ecx	#, _8
	movq	-24(%rbp), %rax	# player, tmp132
	movl	-28(%rbp), %edx	# ammo, tmp133
	addq	$40, %rdx	#, tmp134
	movl	%ecx, (%rax,%rdx,4)	# _8, player_36(D)->ammo[ammo_33(D)]
# p_inter.c:107:     if (player->ammo[ammo] > player->maxammo[ammo])
	.loc 1 107 21
	movq	-24(%rbp), %rax	# player, tmp135
	movl	-28(%rbp), %edx	# ammo, tmp136
	addq	$40, %rdx	#, tmp137
	movl	(%rax,%rdx,4), %edx	# player_36(D)->ammo[ammo_33(D)], _9
# p_inter.c:107:     if (player->ammo[ammo] > player->maxammo[ammo])
	.loc 1 107 45
	movq	-24(%rbp), %rax	# player, tmp138
	movl	-28(%rbp), %ecx	# ammo, tmp139
	addq	$44, %rcx	#, tmp140
	movl	(%rax,%rcx,4), %eax	# player_36(D)->maxammo[ammo_33(D)], _10
# p_inter.c:107:     if (player->ammo[ammo] > player->maxammo[ammo])
	.loc 1 107 8
	cmpl	%eax, %edx	# _10, _9
	jle	.L10	#,
# p_inter.c:108: 	player->ammo[ammo] = player->maxammo[ammo];
	.loc 1 108 38
	movq	-24(%rbp), %rax	# player, tmp141
	movl	-28(%rbp), %edx	# ammo, tmp142
	addq	$44, %rdx	#, tmp143
	movl	(%rax,%rdx,4), %edx	# player_36(D)->maxammo[ammo_33(D)], _11
# p_inter.c:108: 	player->ammo[ammo] = player->maxammo[ammo];
	.loc 1 108 21
	movq	-24(%rbp), %rax	# player, tmp144
	movl	-28(%rbp), %ecx	# ammo, tmp145
	addq	$40, %rcx	#, tmp146
	movl	%edx, (%rax,%rcx,4)	# _11, player_36(D)->ammo[ammo_33(D)]
.L10:
# p_inter.c:113:     if (oldammo)
	.loc 1 113 8
	cmpl	$0, -4(%rbp)	#, oldammo
	je	.L11	#,
# p_inter.c:114: 	return true;	
	.loc 1 114 9
	movl	$1, %eax	#, _24
	jmp	.L3	#
.L11:
# p_inter.c:119:     switch (ammo)
	.loc 1 119 5
	cmpl	$3, -28(%rbp)	#, ammo
	je	.L12	#,
	cmpl	$3, -28(%rbp)	#, ammo
	ja	.L24	#,
	cmpl	$2, -28(%rbp)	#, ammo
	je	.L14	#,
	cmpl	$2, -28(%rbp)	#, ammo
	ja	.L24	#,
	cmpl	$0, -28(%rbp)	#, ammo
	je	.L15	#,
	cmpl	$1, -28(%rbp)	#, ammo
	je	.L16	#,
# p_inter.c:156: 	break;
	.loc 1 156 2
	jmp	.L24	#
.L15:
# p_inter.c:122: 	if (player->readyweapon == wp_fist)
	.loc 1 122 12
	movq	-24(%rbp), %rax	# player, tmp147
	movl	116(%rax), %eax	# player_36(D)->readyweapon, _12
# p_inter.c:122: 	if (player->readyweapon == wp_fist)
	.loc 1 122 5
	testl	%eax, %eax	# _12
	jne	.L25	#,
# p_inter.c:124: 	    if (player->weaponowned[wp_chaingun])
	.loc 1 124 29
	movq	-24(%rbp), %rax	# player, tmp148
	movl	136(%rax), %eax	# player_36(D)->weaponowned[3], _13
# p_inter.c:124: 	    if (player->weaponowned[wp_chaingun])
	.loc 1 124 9
	testl	%eax, %eax	# _13
	je	.L18	#,
# p_inter.c:125: 		player->pendingweapon = wp_chaingun;
	.loc 1 125 25
	movq	-24(%rbp), %rax	# player, tmp149
	movl	$3, 120(%rax)	#, player_36(D)->pendingweapon
# p_inter.c:129: 	break;
	.loc 1 129 2
	jmp	.L25	#
.L18:
# p_inter.c:127: 		player->pendingweapon = wp_pistol;
	.loc 1 127 25
	movq	-24(%rbp), %rax	# player, tmp150
	movl	$1, 120(%rax)	#, player_36(D)->pendingweapon
# p_inter.c:129: 	break;
	.loc 1 129 2
	jmp	.L25	#
.L16:
# p_inter.c:132: 	if (player->readyweapon == wp_fist
	.loc 1 132 12
	movq	-24(%rbp), %rax	# player, tmp151
	movl	116(%rax), %eax	# player_36(D)->readyweapon, _14
# p_inter.c:132: 	if (player->readyweapon == wp_fist
	.loc 1 132 5
	testl	%eax, %eax	# _14
	je	.L20	#,
# p_inter.c:133: 	    || player->readyweapon == wp_pistol)
	.loc 1 133 15
	movq	-24(%rbp), %rax	# player, tmp152
	movl	116(%rax), %eax	# player_36(D)->readyweapon, _15
# p_inter.c:133: 	    || player->readyweapon == wp_pistol)
	.loc 1 133 6
	cmpl	$1, %eax	#, _15
	jne	.L26	#,
.L20:
# p_inter.c:135: 	    if (player->weaponowned[wp_shotgun])
	.loc 1 135 29
	movq	-24(%rbp), %rax	# player, tmp153
	movl	132(%rax), %eax	# player_36(D)->weaponowned[2], _16
# p_inter.c:135: 	    if (player->weaponowned[wp_shotgun])
	.loc 1 135 9
	testl	%eax, %eax	# _16
	je	.L26	#,
# p_inter.c:136: 		player->pendingweapon = wp_shotgun;
	.loc 1 136 25
	movq	-24(%rbp), %rax	# player, tmp154
	movl	$2, 120(%rax)	#, player_36(D)->pendingweapon
# p_inter.c:138: 	break;
	.loc 1 138 2
	jmp	.L26	#
.L14:
# p_inter.c:141: 	if (player->readyweapon == wp_fist
	.loc 1 141 12
	movq	-24(%rbp), %rax	# player, tmp155
	movl	116(%rax), %eax	# player_36(D)->readyweapon, _17
# p_inter.c:141: 	if (player->readyweapon == wp_fist
	.loc 1 141 5
	testl	%eax, %eax	# _17
	je	.L22	#,
# p_inter.c:142: 	    || player->readyweapon == wp_pistol)
	.loc 1 142 15
	movq	-24(%rbp), %rax	# player, tmp156
	movl	116(%rax), %eax	# player_36(D)->readyweapon, _18
# p_inter.c:142: 	    || player->readyweapon == wp_pistol)
	.loc 1 142 6
	cmpl	$1, %eax	#, _18
	jne	.L27	#,
.L22:
# p_inter.c:144: 	    if (player->weaponowned[wp_plasma])
	.loc 1 144 29
	movq	-24(%rbp), %rax	# player, tmp157
	movl	144(%rax), %eax	# player_36(D)->weaponowned[5], _19
# p_inter.c:144: 	    if (player->weaponowned[wp_plasma])
	.loc 1 144 9
	testl	%eax, %eax	# _19
	je	.L27	#,
# p_inter.c:145: 		player->pendingweapon = wp_plasma;
	.loc 1 145 25
	movq	-24(%rbp), %rax	# player, tmp158
	movl	$5, 120(%rax)	#, player_36(D)->pendingweapon
# p_inter.c:147: 	break;
	.loc 1 147 2
	jmp	.L27	#
.L12:
# p_inter.c:150: 	if (player->readyweapon == wp_fist)
	.loc 1 150 12
	movq	-24(%rbp), %rax	# player, tmp159
	movl	116(%rax), %eax	# player_36(D)->readyweapon, _20
# p_inter.c:150: 	if (player->readyweapon == wp_fist)
	.loc 1 150 5
	testl	%eax, %eax	# _20
	jne	.L24	#,
# p_inter.c:152: 	    if (player->weaponowned[wp_missile])
	.loc 1 152 29
	movq	-24(%rbp), %rax	# player, tmp160
	movl	140(%rax), %eax	# player_36(D)->weaponowned[4], _21
# p_inter.c:152: 	    if (player->weaponowned[wp_missile])
	.loc 1 152 9
	testl	%eax, %eax	# _21
	je	.L24	#,
# p_inter.c:153: 		player->pendingweapon = wp_missile;
	.loc 1 153 25
	movq	-24(%rbp), %rax	# player, tmp161
	movl	$4, 120(%rax)	#, player_36(D)->pendingweapon
.L24:
# p_inter.c:156: 	break;
	.loc 1 156 2
	nop	
	jmp	.L19	#
.L25:
# p_inter.c:129: 	break;
	.loc 1 129 2
	nop	
	jmp	.L19	#
.L26:
# p_inter.c:138: 	break;
	.loc 1 138 2
	nop	
	jmp	.L19	#
.L27:
# p_inter.c:147: 	break;
	.loc 1 147 2
	nop	
.L19:
# p_inter.c:159:     return true;
	.loc 1 159 12
	movl	$1, %eax	#, _24
.L3:
# p_inter.c:160: }
	.loc 1 160 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	P_GiveAmmo, .-P_GiveAmmo
	.globl	P_GiveWeapon
	.type	P_GiveWeapon, @function
P_GiveWeapon:
.LFB1:
	.loc 1 172 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# player, player
	movl	%esi, -28(%rbp)	# weapon, weapon
	movl	%edx, -32(%rbp)	# dropped, dropped
# p_inter.c:176:     if (netgame
	.loc 1 176 9
	movl	netgame(%rip), %eax	# netgame, netgame.2_1
# p_inter.c:176:     if (netgame
	.loc 1 176 8
	testl	%eax, %eax	# netgame.2_1
	je	.L29	#,
# p_inter.c:177: 	&& (deathmatch!=2)
	.loc 1 177 16
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.3_2
# p_inter.c:177: 	&& (deathmatch!=2)
	.loc 1 177 2
	cmpl	$2, %eax	#, deathmatch.3_2
	je	.L29	#,
# p_inter.c:178: 	 && !dropped )
	.loc 1 178 3
	cmpl	$0, -32(%rbp)	#, dropped
	jne	.L29	#,
# p_inter.c:181: 	if (player->weaponowned[weapon])
	.loc 1 181 25
	movq	-24(%rbp), %rax	# player, tmp99
	movl	-28(%rbp), %edx	# weapon, tmp100
	addq	$28, %rdx	#, tmp101
	movl	12(%rax,%rdx,4), %eax	# player_26(D)->weaponowned[weapon_27(D)], _3
# p_inter.c:181: 	if (player->weaponowned[weapon])
	.loc 1 181 5
	testl	%eax, %eax	# _3
	je	.L30	#,
# p_inter.c:182: 	    return false;
	.loc 1 182 13
	movl	$0, %eax	#, _17
	jmp	.L31	#
.L30:
# p_inter.c:184: 	player->bonuscount += BONUSADD;
	.loc 1 184 8
	movq	-24(%rbp), %rax	# player, tmp102
	movl	236(%rax), %eax	# player_26(D)->bonuscount, _4
# p_inter.c:184: 	player->bonuscount += BONUSADD;
	.loc 1 184 21
	leal	6(%rax), %edx	#, _5
	movq	-24(%rbp), %rax	# player, tmp103
	movl	%edx, 236(%rax)	# _5, player_26(D)->bonuscount
# p_inter.c:185: 	player->weaponowned[weapon] = true;
	.loc 1 185 30
	movq	-24(%rbp), %rax	# player, tmp104
	movl	-28(%rbp), %edx	# weapon, tmp105
	addq	$28, %rdx	#, tmp106
	movl	$1, 12(%rax,%rdx,4)	#, player_26(D)->weaponowned[weapon_27(D)]
# p_inter.c:187: 	if (deathmatch)
	.loc 1 187 6
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.4_6
# p_inter.c:187: 	if (deathmatch)
	.loc 1 187 5
	testl	%eax, %eax	# deathmatch.4_6
	je	.L32	#,
# p_inter.c:188: 	    P_GiveAmmo (player, weaponinfo[weapon].ammo, 5);
	.loc 1 188 6
	movl	-28(%rbp), %edx	# weapon, tmp107
	movq	%rdx, %rax	# tmp107, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp107, tmp109
	salq	$3, %rax	#, tmp110
	movq	%rax, %rdx	# tmp109, tmp108
	leaq	weaponinfo(%rip), %rax	#, tmp111
	movl	(%rdx,%rax), %ecx	# weaponinfo[weapon_27(D)].ammo, _7
	movq	-24(%rbp), %rax	# player, tmp112
	movl	$5, %edx	#,
	movl	%ecx, %esi	# _7,
	movq	%rax, %rdi	# tmp112,
	call	P_GiveAmmo	#
	jmp	.L33	#
.L32:
# p_inter.c:190: 	    P_GiveAmmo (player, weaponinfo[weapon].ammo, 2);
	.loc 1 190 6
	movl	-28(%rbp), %edx	# weapon, tmp113
	movq	%rdx, %rax	# tmp113, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp113, tmp115
	salq	$3, %rax	#, tmp116
	movq	%rax, %rdx	# tmp115, tmp114
	leaq	weaponinfo(%rip), %rax	#, tmp117
	movl	(%rdx,%rax), %ecx	# weaponinfo[weapon_27(D)].ammo, _8
	movq	-24(%rbp), %rax	# player, tmp118
	movl	$2, %edx	#,
	movl	%ecx, %esi	# _8,
	movq	%rax, %rdi	# tmp118,
	call	P_GiveAmmo	#
.L33:
# p_inter.c:191: 	player->pendingweapon = weapon;
	.loc 1 191 24
	movq	-24(%rbp), %rax	# player, tmp119
	movl	-28(%rbp), %edx	# weapon, tmp120
	movl	%edx, 120(%rax)	# tmp120, player_26(D)->pendingweapon
# p_inter.c:193: 	if (player == &players[consoleplayer])
	.loc 1 193 24
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.5_9
# p_inter.c:193: 	if (player == &players[consoleplayer])
	.loc 1 193 16
	movslq	%eax, %rdx	# consoleplayer.5_9, tmp121
	movq	%rdx, %rax	# tmp121, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rdx, %rax	# tmp121, tmp122
	salq	$6, %rax	#, tmp123
	leaq	players(%rip), %rdx	#, tmp124
	addq	%rdx, %rax	# tmp124, _10
# p_inter.c:193: 	if (player == &players[consoleplayer])
	.loc 1 193 5
	cmpq	%rax, -24(%rbp)	# _10, player
	jne	.L34	#,
# p_inter.c:194: 	    S_StartSound (NULL, sfx_wpnup);
	.loc 1 194 6
	movl	$33, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L34:
# p_inter.c:195: 	return false;
	.loc 1 195 9
	movl	$0, %eax	#, _17
	jmp	.L31	#
.L29:
# p_inter.c:198:     if (weaponinfo[weapon].ammo != am_noammo)
	.loc 1 198 27
	movl	-28(%rbp), %edx	# weapon, tmp125
	movq	%rdx, %rax	# tmp125, tmp127
	addq	%rax, %rax	# tmp127
	addq	%rdx, %rax	# tmp125, tmp127
	salq	$3, %rax	#, tmp128
	movq	%rax, %rdx	# tmp127, tmp126
	leaq	weaponinfo(%rip), %rax	#, tmp129
	movl	(%rdx,%rax), %eax	# weaponinfo[weapon_27(D)].ammo, _11
# p_inter.c:198:     if (weaponinfo[weapon].ammo != am_noammo)
	.loc 1 198 8
	cmpl	$5, %eax	#, _11
	je	.L35	#,
# p_inter.c:202: 	if (dropped)
	.loc 1 202 5
	cmpl	$0, -32(%rbp)	#, dropped
	je	.L36	#,
# p_inter.c:203: 	    gaveammo = P_GiveAmmo (player, weaponinfo[weapon].ammo, 1);
	.loc 1 203 17
	movl	-28(%rbp), %edx	# weapon, tmp130
	movq	%rdx, %rax	# tmp130, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# tmp130, tmp132
	salq	$3, %rax	#, tmp133
	movq	%rax, %rdx	# tmp132, tmp131
	leaq	weaponinfo(%rip), %rax	#, tmp134
	movl	(%rdx,%rax), %ecx	# weaponinfo[weapon_27(D)].ammo, _12
	movq	-24(%rbp), %rax	# player, tmp135
	movl	$1, %edx	#,
	movl	%ecx, %esi	# _12,
	movq	%rax, %rdi	# tmp135,
	call	P_GiveAmmo	#
	movl	%eax, -8(%rbp)	# tmp136, gaveammo
	jmp	.L37	#
.L36:
# p_inter.c:205: 	    gaveammo = P_GiveAmmo (player, weaponinfo[weapon].ammo, 2);
	.loc 1 205 17
	movl	-28(%rbp), %edx	# weapon, tmp137
	movq	%rdx, %rax	# tmp137, tmp139
	addq	%rax, %rax	# tmp139
	addq	%rdx, %rax	# tmp137, tmp139
	salq	$3, %rax	#, tmp140
	movq	%rax, %rdx	# tmp139, tmp138
	leaq	weaponinfo(%rip), %rax	#, tmp141
	movl	(%rdx,%rax), %ecx	# weaponinfo[weapon_27(D)].ammo, _13
	movq	-24(%rbp), %rax	# player, tmp142
	movl	$2, %edx	#,
	movl	%ecx, %esi	# _13,
	movq	%rax, %rdi	# tmp142,
	call	P_GiveAmmo	#
	movl	%eax, -8(%rbp)	# tmp143, gaveammo
	jmp	.L37	#
.L35:
# p_inter.c:208: 	gaveammo = false;
	.loc 1 208 11
	movl	$0, -8(%rbp)	#, gaveammo
.L37:
# p_inter.c:210:     if (player->weaponowned[weapon])
	.loc 1 210 28
	movq	-24(%rbp), %rax	# player, tmp144
	movl	-28(%rbp), %edx	# weapon, tmp145
	addq	$28, %rdx	#, tmp146
	movl	12(%rax,%rdx,4), %eax	# player_26(D)->weaponowned[weapon_27(D)], _14
# p_inter.c:210:     if (player->weaponowned[weapon])
	.loc 1 210 8
	testl	%eax, %eax	# _14
	je	.L38	#,
# p_inter.c:211: 	gaveweapon = false;
	.loc 1 211 13
	movl	$0, -4(%rbp)	#, gaveweapon
	jmp	.L39	#
.L38:
# p_inter.c:214: 	gaveweapon = true;
	.loc 1 214 13
	movl	$1, -4(%rbp)	#, gaveweapon
# p_inter.c:215: 	player->weaponowned[weapon] = true;
	.loc 1 215 30
	movq	-24(%rbp), %rax	# player, tmp147
	movl	-28(%rbp), %edx	# weapon, tmp148
	addq	$28, %rdx	#, tmp149
	movl	$1, 12(%rax,%rdx,4)	#, player_26(D)->weaponowned[weapon_27(D)]
# p_inter.c:216: 	player->pendingweapon = weapon;
	.loc 1 216 24
	movq	-24(%rbp), %rax	# player, tmp150
	movl	-28(%rbp), %edx	# weapon, tmp151
	movl	%edx, 120(%rax)	# tmp151, player_26(D)->pendingweapon
.L39:
# p_inter.c:219:     return (gaveweapon || gaveammo);
	.loc 1 219 24
	cmpl	$0, -4(%rbp)	#, gaveweapon
	jne	.L40	#,
# p_inter.c:219:     return (gaveweapon || gaveammo);
	.loc 1 219 24 is_stmt 0 discriminator 2
	cmpl	$0, -8(%rbp)	#, gaveammo
	je	.L41	#,
.L40:
# p_inter.c:219:     return (gaveweapon || gaveammo);
	.loc 1 219 24 discriminator 3
	movl	$1, %eax	#, iftmp.6_18
# p_inter.c:219:     return (gaveweapon || gaveammo);
	.loc 1 219 24
	jmp	.L31	#
.L41:
# p_inter.c:219:     return (gaveweapon || gaveammo);
	.loc 1 219 24 discriminator 4
	movl	$0, %eax	#, iftmp.6_18
.L31:
# p_inter.c:220: }
	.loc 1 220 1 is_stmt 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	P_GiveWeapon, .-P_GiveWeapon
	.globl	P_GiveBody
	.type	P_GiveBody, @function
P_GiveBody:
.LFB2:
	.loc 1 232 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# player, player
	movl	%esi, -12(%rbp)	# num, num
# p_inter.c:233:     if (player->health >= MAXHEALTH)
	.loc 1 233 15
	movq	-8(%rbp), %rax	# player, tmp90
	movl	36(%rax), %eax	# player_11(D)->health, _1
# p_inter.c:233:     if (player->health >= MAXHEALTH)
	.loc 1 233 8
	cmpl	$99, %eax	#, _1
	jle	.L44	#,
# p_inter.c:234: 	return false;
	.loc 1 234 9
	movl	$0, %eax	#, _7
	jmp	.L45	#
.L44:
# p_inter.c:236:     player->health += num;
	.loc 1 236 11
	movq	-8(%rbp), %rax	# player, tmp91
	movl	36(%rax), %edx	# player_11(D)->health, _2
# p_inter.c:236:     player->health += num;
	.loc 1 236 20
	movl	-12(%rbp), %eax	# num, tmp92
	addl	%eax, %edx	# tmp92, _3
	movq	-8(%rbp), %rax	# player, tmp93
	movl	%edx, 36(%rax)	# _3, player_11(D)->health
# p_inter.c:237:     if (player->health > MAXHEALTH)
	.loc 1 237 15
	movq	-8(%rbp), %rax	# player, tmp94
	movl	36(%rax), %eax	# player_11(D)->health, _4
# p_inter.c:237:     if (player->health > MAXHEALTH)
	.loc 1 237 8
	cmpl	$100, %eax	#, _4
	jle	.L46	#,
# p_inter.c:238: 	player->health = MAXHEALTH;
	.loc 1 238 17
	movq	-8(%rbp), %rax	# player, tmp95
	movl	$100, 36(%rax)	#, player_11(D)->health
.L46:
# p_inter.c:239:     player->mo->health = player->health;
	.loc 1 239 11
	movq	-8(%rbp), %rax	# player, tmp96
	movq	(%rax), %rax	# player_11(D)->mo, _5
# p_inter.c:239:     player->mo->health = player->health;
	.loc 1 239 32
	movq	-8(%rbp), %rdx	# player, tmp97
	movl	36(%rdx), %edx	# player_11(D)->health, _6
# p_inter.c:239:     player->mo->health = player->health;
	.loc 1 239 24
	movl	%edx, 164(%rax)	# _6, _5->health
# p_inter.c:241:     return true;
	.loc 1 241 12
	movl	$1, %eax	#, _7
.L45:
# p_inter.c:242: }
	.loc 1 242 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	P_GiveBody, .-P_GiveBody
	.globl	P_GiveArmor
	.type	P_GiveArmor, @function
P_GiveArmor:
.LFB3:
	.loc 1 255 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# player, player
	movl	%esi, -28(%rbp)	# armortype, armortype
# p_inter.c:258:     hits = armortype*100;
	.loc 1 258 10
	movl	-28(%rbp), %eax	# armortype, tmp86
	imull	$100, %eax, %eax	#, tmp86, tmp85
	movl	%eax, -4(%rbp)	# tmp85, hits
# p_inter.c:259:     if (player->armorpoints >= hits)
	.loc 1 259 15
	movq	-24(%rbp), %rax	# player, tmp87
	movl	40(%rax), %eax	# player_7(D)->armorpoints, _1
# p_inter.c:259:     if (player->armorpoints >= hits)
	.loc 1 259 8
	cmpl	%eax, -4(%rbp)	# _1, hits
	jg	.L48	#,
# p_inter.c:260: 	return false;	// don't pick up
	.loc 1 260 9
	movl	$0, %eax	#, _2
	jmp	.L49	#
.L48:
# p_inter.c:262:     player->armortype = armortype;
	.loc 1 262 23
	movq	-24(%rbp), %rax	# player, tmp88
	movl	-28(%rbp), %edx	# armortype, tmp89
	movl	%edx, 44(%rax)	# tmp89, player_7(D)->armortype
# p_inter.c:263:     player->armorpoints = hits;
	.loc 1 263 25
	movq	-24(%rbp), %rax	# player, tmp90
	movl	-4(%rbp), %edx	# hits, tmp91
	movl	%edx, 40(%rax)	# tmp91, player_7(D)->armorpoints
# p_inter.c:265:     return true;
	.loc 1 265 12
	movl	$1, %eax	#, _2
.L49:
# p_inter.c:266: }
	.loc 1 266 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	P_GiveArmor, .-P_GiveArmor
	.globl	P_GiveCard
	.type	P_GiveCard, @function
P_GiveCard:
.LFB4:
	.loc 1 277 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# player, player
	movl	%esi, -12(%rbp)	# card, card
# p_inter.c:278:     if (player->cards[card])
	.loc 1 278 22
	movq	-8(%rbp), %rax	# player, tmp83
	movl	-12(%rbp), %edx	# card, tmp84
	addq	$16, %rdx	#, tmp85
	movl	8(%rax,%rdx,4), %eax	# player_4(D)->cards[card_5(D)], _1
# p_inter.c:278:     if (player->cards[card])
	.loc 1 278 8
	testl	%eax, %eax	# _1
	jne	.L53	#,
# p_inter.c:281:     player->bonuscount = BONUSADD;
	.loc 1 281 24
	movq	-8(%rbp), %rax	# player, tmp86
	movl	$6, 236(%rax)	#, player_4(D)->bonuscount
# p_inter.c:282:     player->cards[card] = 1;
	.loc 1 282 25
	movq	-8(%rbp), %rax	# player, tmp87
	movl	-12(%rbp), %edx	# card, tmp88
	addq	$16, %rdx	#, tmp89
	movl	$1, 8(%rax,%rdx,4)	#, player_4(D)->cards[card_5(D)]
	jmp	.L50	#
.L53:
# p_inter.c:279: 	return;
	.loc 1 279 2
	nop	
.L50:
# p_inter.c:283: }
	.loc 1 283 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	P_GiveCard, .-P_GiveCard
	.globl	P_GivePower
	.type	P_GivePower, @function
P_GivePower:
.LFB5:
	.loc 1 293 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# player, player
	movl	%esi, -12(%rbp)	# power, power
# p_inter.c:294:     if (power == pw_invulnerability)
	.loc 1 294 8
	cmpl	$0, -12(%rbp)	#, power
	jne	.L55	#,
# p_inter.c:296: 	player->powers[power] = INVULNTICS;
	.loc 1 296 24
	movq	-8(%rbp), %rax	# player, tmp89
	movl	-12(%rbp), %edx	# power, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	addq	$12, %rdx	#, tmp92
	movl	$1050, (%rax,%rdx,4)	#, player_10(D)->powers[power_8(D)]
# p_inter.c:297: 	return true;
	.loc 1 297 9
	movl	$1, %eax	#, _6
	jmp	.L56	#
.L55:
# p_inter.c:300:     if (power == pw_invisibility)
	.loc 1 300 8
	cmpl	$2, -12(%rbp)	#, power
	jne	.L57	#,
# p_inter.c:302: 	player->powers[power] = INVISTICS;
	.loc 1 302 24
	movq	-8(%rbp), %rax	# player, tmp93
	movl	-12(%rbp), %edx	# power, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	addq	$12, %rdx	#, tmp96
	movl	$2100, (%rax,%rdx,4)	#, player_10(D)->powers[power_8(D)]
# p_inter.c:303: 	player->mo->flags |= MF_SHADOW;
	.loc 1 303 8
	movq	-8(%rbp), %rax	# player, tmp97
	movq	(%rax), %rax	# player_10(D)->mo, _1
# p_inter.c:303: 	player->mo->flags |= MF_SHADOW;
	.loc 1 303 12
	movl	160(%rax), %edx	# _1->flags, _2
# p_inter.c:303: 	player->mo->flags |= MF_SHADOW;
	.loc 1 303 8
	movq	-8(%rbp), %rax	# player, tmp98
	movq	(%rax), %rax	# player_10(D)->mo, _3
# p_inter.c:303: 	player->mo->flags |= MF_SHADOW;
	.loc 1 303 20
	orl	$262144, %edx	#, _4
	movl	%edx, 160(%rax)	# _4, _3->flags
# p_inter.c:304: 	return true;
	.loc 1 304 9
	movl	$1, %eax	#, _6
	jmp	.L56	#
.L57:
# p_inter.c:307:     if (power == pw_infrared)
	.loc 1 307 8
	cmpl	$5, -12(%rbp)	#, power
	jne	.L58	#,
# p_inter.c:309: 	player->powers[power] = INFRATICS;
	.loc 1 309 24
	movq	-8(%rbp), %rax	# player, tmp99
	movl	-12(%rbp), %edx	# power, tmp101
	movslq	%edx, %rdx	# tmp101, tmp100
	addq	$12, %rdx	#, tmp102
	movl	$4200, (%rax,%rdx,4)	#, player_10(D)->powers[power_8(D)]
# p_inter.c:310: 	return true;
	.loc 1 310 9
	movl	$1, %eax	#, _6
	jmp	.L56	#
.L58:
# p_inter.c:313:     if (power == pw_ironfeet)
	.loc 1 313 8
	cmpl	$3, -12(%rbp)	#, power
	jne	.L59	#,
# p_inter.c:315: 	player->powers[power] = IRONTICS;
	.loc 1 315 24
	movq	-8(%rbp), %rax	# player, tmp103
	movl	-12(%rbp), %edx	# power, tmp105
	movslq	%edx, %rdx	# tmp105, tmp104
	addq	$12, %rdx	#, tmp106
	movl	$2100, (%rax,%rdx,4)	#, player_10(D)->powers[power_8(D)]
# p_inter.c:316: 	return true;
	.loc 1 316 9
	movl	$1, %eax	#, _6
	jmp	.L56	#
.L59:
# p_inter.c:319:     if (power == pw_strength)
	.loc 1 319 8
	cmpl	$1, -12(%rbp)	#, power
	jne	.L60	#,
# p_inter.c:321: 	P_GiveBody (player, 100);
	.loc 1 321 2
	movq	-8(%rbp), %rax	# player, tmp107
	movl	$100, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	P_GiveBody	#
# p_inter.c:322: 	player->powers[power] = 1;
	.loc 1 322 24
	movq	-8(%rbp), %rax	# player, tmp108
	movl	-12(%rbp), %edx	# power, tmp110
	movslq	%edx, %rdx	# tmp110, tmp109
	addq	$12, %rdx	#, tmp111
	movl	$1, (%rax,%rdx,4)	#, player_10(D)->powers[power_8(D)]
# p_inter.c:323: 	return true;
	.loc 1 323 9
	movl	$1, %eax	#, _6
	jmp	.L56	#
.L60:
# p_inter.c:326:     if (player->powers[power])
	.loc 1 326 23
	movq	-8(%rbp), %rax	# player, tmp112
	movl	-12(%rbp), %edx	# power, tmp114
	movslq	%edx, %rdx	# tmp114, tmp113
	addq	$12, %rdx	#, tmp115
	movl	(%rax,%rdx,4), %eax	# player_10(D)->powers[power_8(D)], _5
# p_inter.c:326:     if (player->powers[power])
	.loc 1 326 8
	testl	%eax, %eax	# _5
	je	.L61	#,
# p_inter.c:327: 	return false;	// already got it
	.loc 1 327 9
	movl	$0, %eax	#, _6
	jmp	.L56	#
.L61:
# p_inter.c:329:     player->powers[power] = 1;
	.loc 1 329 27
	movq	-8(%rbp), %rax	# player, tmp116
	movl	-12(%rbp), %edx	# power, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	addq	$12, %rdx	#, tmp119
	movl	$1, (%rax,%rdx,4)	#, player_10(D)->powers[power_8(D)]
# p_inter.c:330:     return true;
	.loc 1 330 12
	movl	$1, %eax	#, _6
.L56:
# p_inter.c:331: }
	.loc 1 331 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	P_GivePower, .-P_GivePower
	.section	.rodata
.LC1:
	.string	"Picked up the armor."
.LC2:
	.string	"Picked up the MegaArmor!"
.LC3:
	.string	"Picked up a health bonus."
.LC4:
	.string	"Picked up an armor bonus."
.LC5:
	.string	"Supercharge!"
.LC6:
	.string	"MegaSphere!"
.LC7:
	.string	"Picked up a blue keycard."
.LC8:
	.string	"Picked up a yellow keycard."
.LC9:
	.string	"Picked up a red keycard."
.LC10:
	.string	"Picked up a blue skull key."
.LC11:
	.string	"Picked up a yellow skull key."
.LC12:
	.string	"Picked up a red skull key."
.LC13:
	.string	"Picked up a stimpack."
	.align 8
.LC14:
	.string	"Picked up a medikit that you REALLY need!"
.LC15:
	.string	"Picked up a medikit."
.LC16:
	.string	"Invulnerability!"
.LC17:
	.string	"Berserk!"
.LC18:
	.string	"Partial Invisibility"
.LC19:
	.string	"Radiation Shielding Suit"
.LC20:
	.string	"Computer Area Map"
.LC21:
	.string	"Light Amplification Visor"
.LC22:
	.string	"Picked up a clip."
.LC23:
	.string	"Picked up a box of bullets."
.LC24:
	.string	"Picked up a rocket."
.LC25:
	.string	"Picked up a box of rockets."
.LC26:
	.string	"Picked up an energy cell."
	.align 8
.LC27:
	.string	"Picked up an energy cell pack."
.LC28:
	.string	"Picked up 4 shotgun shells."
	.align 8
.LC29:
	.string	"Picked up a box of shotgun shells."
	.align 8
.LC30:
	.string	"Picked up a backpack full of ammo!"
	.align 8
.LC31:
	.string	"You got the BFG9000!  Oh, yes."
.LC32:
	.string	"You got the chaingun!"
.LC33:
	.string	"A chainsaw!  Find some meat!"
.LC34:
	.string	"You got the rocket launcher!"
.LC35:
	.string	"You got the plasma gun!"
.LC36:
	.string	"You got the shotgun!"
.LC37:
	.string	"You got the super shotgun!"
	.align 8
.LC38:
	.string	"P_SpecialThing: Unknown gettable thing"
	.text
	.globl	P_TouchSpecialThing
	.type	P_TouchSpecialThing, @function
P_TouchSpecialThing:
.LFB6:
	.loc 1 342 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# special, special
	movq	%rsi, -48(%rbp)	# toucher, toucher
# p_inter.c:348:     delta = special->z - toucher->z;
	.loc 1 348 20
	movq	-40(%rbp), %rax	# special, tmp167
	movl	32(%rax), %edx	# special_109(D)->z, _1
# p_inter.c:348:     delta = special->z - toucher->z;
	.loc 1 348 33
	movq	-48(%rbp), %rax	# toucher, tmp168
	movl	32(%rax), %eax	# toucher_110(D)->z, _2
# p_inter.c:348:     delta = special->z - toucher->z;
	.loc 1 348 11
	subl	%eax, %edx	# _2, tmp169
	movl	%edx, -12(%rbp)	# tmp169, delta
# p_inter.c:350:     if (delta > toucher->height
	.loc 1 350 24
	movq	-48(%rbp), %rax	# toucher, tmp170
	movl	108(%rax), %eax	# toucher_110(D)->height, _3
# p_inter.c:350:     if (delta > toucher->height
	.loc 1 350 8
	cmpl	%eax, -12(%rbp)	# _3, delta
	jg	.L158	#,
# p_inter.c:351: 	|| delta < -8*FRACUNIT)
	.loc 1 351 2
	cmpl	$-524288, -12(%rbp)	#, delta
	jl	.L158	#,
# p_inter.c:358:     sound = sfx_itemup;	
	.loc 1 358 11
	movl	$32, -16(%rbp)	#, sound
# p_inter.c:359:     player = toucher->player;
	.loc 1 359 12
	movq	-48(%rbp), %rax	# toucher, tmp171
	movq	192(%rax), %rax	# toucher_110(D)->player, tmp172
	movq	%rax, -8(%rbp)	# tmp172, player
# p_inter.c:363:     if (toucher->health <= 0)
	.loc 1 363 16
	movq	-48(%rbp), %rax	# toucher, tmp173
	movl	164(%rax), %eax	# toucher_110(D)->health, _4
# p_inter.c:363:     if (toucher->health <= 0)
	.loc 1 363 8
	testl	%eax, %eax	# _4
	jle	.L159	#,
# p_inter.c:367:     switch (special->sprite)
	.loc 1 367 20
	movq	-40(%rbp), %rax	# special, tmp174
	movl	60(%rax), %eax	# special_109(D)->sprite, _5
# p_inter.c:367:     switch (special->sprite)
	.loc 1 367 5
	subl	$55, %eax	#, tmp175
	cmpl	$38, %eax	#, tmp175
	ja	.L67	#,
	movl	%eax, %eax	# tmp175, tmp176
	leaq	0(,%rax,4), %rdx	#, tmp177
	leaq	.L69(%rip), %rax	#, tmp178
	movl	(%rdx,%rax), %eax	#, tmp179
	cltq
	leaq	.L69(%rip), %rdx	#, tmp182
	addq	%rdx, %rax	# tmp182, tmp181
	notrack jmp	*%rax	# tmp181
	.section	.rodata
	.align 4
	.align 4
.L69:
	.long	.L104-.L69
	.long	.L103-.L69
	.long	.L67-.L69
	.long	.L67-.L69
	.long	.L67-.L69
	.long	.L102-.L69
	.long	.L101-.L69
	.long	.L100-.L69
	.long	.L99-.L69
	.long	.L98-.L69
	.long	.L97-.L69
	.long	.L96-.L69
	.long	.L95-.L69
	.long	.L94-.L69
	.long	.L93-.L69
	.long	.L92-.L69
	.long	.L91-.L69
	.long	.L90-.L69
	.long	.L89-.L69
	.long	.L88-.L69
	.long	.L87-.L69
	.long	.L86-.L69
	.long	.L85-.L69
	.long	.L84-.L69
	.long	.L83-.L69
	.long	.L82-.L69
	.long	.L81-.L69
	.long	.L80-.L69
	.long	.L79-.L69
	.long	.L78-.L69
	.long	.L77-.L69
	.long	.L76-.L69
	.long	.L75-.L69
	.long	.L74-.L69
	.long	.L73-.L69
	.long	.L72-.L69
	.long	.L71-.L69
	.long	.L70-.L69
	.long	.L68-.L69
	.text
.L104:
# p_inter.c:371: 	if (!P_GiveArmor (player, 1))
	.loc 1 371 7
	movq	-8(%rbp), %rax	# player, tmp183
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	P_GiveArmor	#
# p_inter.c:371: 	if (!P_GiveArmor (player, 1))
	.loc 1 371 5 discriminator 1
	testl	%eax, %eax	# _6
	je	.L160	#,
# p_inter.c:373: 	player->message = GOTARMOR;
	.loc 1 373 18
	movq	-8(%rbp), %rax	# player, tmp184
	leaq	.LC1(%rip), %rdx	#, tmp185
	movq	%rdx, 224(%rax)	# tmp185, player_113->message
# p_inter.c:374: 	break;
	.loc 1 374 2
	jmp	.L106	#
.L103:
# p_inter.c:377: 	if (!P_GiveArmor (player, 2))
	.loc 1 377 7
	movq	-8(%rbp), %rax	# player, tmp186
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp186,
	call	P_GiveArmor	#
# p_inter.c:377: 	if (!P_GiveArmor (player, 2))
	.loc 1 377 5 discriminator 1
	testl	%eax, %eax	# _7
	je	.L161	#,
# p_inter.c:379: 	player->message = GOTMEGA;
	.loc 1 379 18
	movq	-8(%rbp), %rax	# player, tmp187
	leaq	.LC2(%rip), %rdx	#, tmp188
	movq	%rdx, 224(%rax)	# tmp188, player_113->message
# p_inter.c:380: 	break;
	.loc 1 380 2
	jmp	.L106	#
.L102:
# p_inter.c:384: 	player->health++;		// can go over 100%
	.loc 1 384 8
	movq	-8(%rbp), %rax	# player, tmp189
	movl	36(%rax), %eax	# player_113->health, _8
# p_inter.c:384: 	player->health++;		// can go over 100%
	.loc 1 384 16
	leal	1(%rax), %edx	#, _9
	movq	-8(%rbp), %rax	# player, tmp190
	movl	%edx, 36(%rax)	# _9, player_113->health
# p_inter.c:385: 	if (player->health > 200)
	.loc 1 385 12
	movq	-8(%rbp), %rax	# player, tmp191
	movl	36(%rax), %eax	# player_113->health, _10
# p_inter.c:385: 	if (player->health > 200)
	.loc 1 385 5
	cmpl	$200, %eax	#, _10
	jle	.L108	#,
# p_inter.c:386: 	    player->health = 200;
	.loc 1 386 21
	movq	-8(%rbp), %rax	# player, tmp192
	movl	$200, 36(%rax)	#, player_113->health
.L108:
# p_inter.c:387: 	player->mo->health = player->health;
	.loc 1 387 8
	movq	-8(%rbp), %rax	# player, tmp193
	movq	(%rax), %rax	# player_113->mo, _11
# p_inter.c:387: 	player->mo->health = player->health;
	.loc 1 387 29
	movq	-8(%rbp), %rdx	# player, tmp194
	movl	36(%rdx), %edx	# player_113->health, _12
# p_inter.c:387: 	player->mo->health = player->health;
	.loc 1 387 21
	movl	%edx, 164(%rax)	# _12, _11->health
# p_inter.c:388: 	player->message = GOTHTHBONUS;
	.loc 1 388 18
	movq	-8(%rbp), %rax	# player, tmp195
	leaq	.LC3(%rip), %rdx	#, tmp196
	movq	%rdx, 224(%rax)	# tmp196, player_113->message
# p_inter.c:389: 	break;
	.loc 1 389 2
	jmp	.L106	#
.L101:
# p_inter.c:392: 	player->armorpoints++;		// can go over 100%
	.loc 1 392 8
	movq	-8(%rbp), %rax	# player, tmp197
	movl	40(%rax), %eax	# player_113->armorpoints, _13
# p_inter.c:392: 	player->armorpoints++;		// can go over 100%
	.loc 1 392 21
	leal	1(%rax), %edx	#, _14
	movq	-8(%rbp), %rax	# player, tmp198
	movl	%edx, 40(%rax)	# _14, player_113->armorpoints
# p_inter.c:393: 	if (player->armorpoints > 200)
	.loc 1 393 12
	movq	-8(%rbp), %rax	# player, tmp199
	movl	40(%rax), %eax	# player_113->armorpoints, _15
# p_inter.c:393: 	if (player->armorpoints > 200)
	.loc 1 393 5
	cmpl	$200, %eax	#, _15
	jle	.L109	#,
# p_inter.c:394: 	    player->armorpoints = 200;
	.loc 1 394 26
	movq	-8(%rbp), %rax	# player, tmp200
	movl	$200, 40(%rax)	#, player_113->armorpoints
.L109:
# p_inter.c:395: 	if (!player->armortype)
	.loc 1 395 13
	movq	-8(%rbp), %rax	# player, tmp201
	movl	44(%rax), %eax	# player_113->armortype, _16
# p_inter.c:395: 	if (!player->armortype)
	.loc 1 395 5
	testl	%eax, %eax	# _16
	jne	.L110	#,
# p_inter.c:396: 	    player->armortype = 1;
	.loc 1 396 24
	movq	-8(%rbp), %rax	# player, tmp202
	movl	$1, 44(%rax)	#, player_113->armortype
.L110:
# p_inter.c:397: 	player->message = GOTARMBONUS;
	.loc 1 397 18
	movq	-8(%rbp), %rax	# player, tmp203
	leaq	.LC4(%rip), %rdx	#, tmp204
	movq	%rdx, 224(%rax)	# tmp204, player_113->message
# p_inter.c:398: 	break;
	.loc 1 398 2
	jmp	.L106	#
.L92:
# p_inter.c:401: 	player->health += 100;
	.loc 1 401 8
	movq	-8(%rbp), %rax	# player, tmp205
	movl	36(%rax), %eax	# player_113->health, _17
# p_inter.c:401: 	player->health += 100;
	.loc 1 401 17
	leal	100(%rax), %edx	#, _18
	movq	-8(%rbp), %rax	# player, tmp206
	movl	%edx, 36(%rax)	# _18, player_113->health
# p_inter.c:402: 	if (player->health > 200)
	.loc 1 402 12
	movq	-8(%rbp), %rax	# player, tmp207
	movl	36(%rax), %eax	# player_113->health, _19
# p_inter.c:402: 	if (player->health > 200)
	.loc 1 402 5
	cmpl	$200, %eax	#, _19
	jle	.L111	#,
# p_inter.c:403: 	    player->health = 200;
	.loc 1 403 21
	movq	-8(%rbp), %rax	# player, tmp208
	movl	$200, 36(%rax)	#, player_113->health
.L111:
# p_inter.c:404: 	player->mo->health = player->health;
	.loc 1 404 8
	movq	-8(%rbp), %rax	# player, tmp209
	movq	(%rax), %rax	# player_113->mo, _20
# p_inter.c:404: 	player->mo->health = player->health;
	.loc 1 404 29
	movq	-8(%rbp), %rdx	# player, tmp210
	movl	36(%rdx), %edx	# player_113->health, _21
# p_inter.c:404: 	player->mo->health = player->health;
	.loc 1 404 21
	movl	%edx, 164(%rax)	# _21, _20->health
# p_inter.c:405: 	player->message = GOTSUPER;
	.loc 1 405 18
	movq	-8(%rbp), %rax	# player, tmp211
	leaq	.LC5(%rip), %rdx	#, tmp212
	movq	%rdx, 224(%rax)	# tmp212, player_113->message
# p_inter.c:406: 	sound = sfx_getpow;
	.loc 1 406 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:407: 	break;
	.loc 1 407 2
	jmp	.L106	#
.L88:
# p_inter.c:410: 	if (gamemode != commercial)
	.loc 1 410 15
	movl	gamemode(%rip), %eax	# gamemode, gamemode.7_22
# p_inter.c:410: 	if (gamemode != commercial)
	.loc 1 410 5
	cmpl	$2, %eax	#, gamemode.7_22
	jne	.L162	#,
# p_inter.c:412: 	player->health = 200;
	.loc 1 412 17
	movq	-8(%rbp), %rax	# player, tmp213
	movl	$200, 36(%rax)	#, player_113->health
# p_inter.c:413: 	player->mo->health = player->health;
	.loc 1 413 8
	movq	-8(%rbp), %rax	# player, tmp214
	movq	(%rax), %rax	# player_113->mo, _23
# p_inter.c:413: 	player->mo->health = player->health;
	.loc 1 413 29
	movq	-8(%rbp), %rdx	# player, tmp215
	movl	36(%rdx), %edx	# player_113->health, _24
# p_inter.c:413: 	player->mo->health = player->health;
	.loc 1 413 21
	movl	%edx, 164(%rax)	# _24, _23->health
# p_inter.c:414: 	P_GiveArmor (player,2);
	.loc 1 414 2
	movq	-8(%rbp), %rax	# player, tmp216
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	P_GiveArmor	#
# p_inter.c:415: 	player->message = GOTMSPHERE;
	.loc 1 415 18
	movq	-8(%rbp), %rax	# player, tmp217
	leaq	.LC6(%rip), %rdx	#, tmp218
	movq	%rdx, 224(%rax)	# tmp218, player_113->message
# p_inter.c:416: 	sound = sfx_getpow;
	.loc 1 416 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:417: 	break;
	.loc 1 417 2
	jmp	.L106	#
.L100:
# p_inter.c:422: 	if (!player->cards[it_bluecard])
	.loc 1 422 20
	movq	-8(%rbp), %rax	# player, tmp219
	movl	72(%rax), %eax	# player_113->cards[0], _25
# p_inter.c:422: 	if (!player->cards[it_bluecard])
	.loc 1 422 5
	testl	%eax, %eax	# _25
	jne	.L113	#,
# p_inter.c:423: 	    player->message = GOTBLUECARD;
	.loc 1 423 22
	movq	-8(%rbp), %rax	# player, tmp220
	leaq	.LC7(%rip), %rdx	#, tmp221
	movq	%rdx, 224(%rax)	# tmp221, player_113->message
.L113:
# p_inter.c:424: 	P_GiveCard (player, it_bluecard);
	.loc 1 424 2
	movq	-8(%rbp), %rax	# player, tmp222
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	P_GiveCard	#
# p_inter.c:425: 	if (!netgame)
	.loc 1 425 6
	movl	netgame(%rip), %eax	# netgame, netgame.8_26
# p_inter.c:425: 	if (!netgame)
	.loc 1 425 5
	testl	%eax, %eax	# netgame.8_26
	jne	.L163	#,
# p_inter.c:426: 	    break;
	.loc 1 426 6
	jmp	.L106	#
.L98:
# p_inter.c:430: 	if (!player->cards[it_yellowcard])
	.loc 1 430 20
	movq	-8(%rbp), %rax	# player, tmp223
	movl	76(%rax), %eax	# player_113->cards[1], _27
# p_inter.c:430: 	if (!player->cards[it_yellowcard])
	.loc 1 430 5
	testl	%eax, %eax	# _27
	jne	.L115	#,
# p_inter.c:431: 	    player->message = GOTYELWCARD;
	.loc 1 431 22
	movq	-8(%rbp), %rax	# player, tmp224
	leaq	.LC8(%rip), %rdx	#, tmp225
	movq	%rdx, 224(%rax)	# tmp225, player_113->message
.L115:
# p_inter.c:432: 	P_GiveCard (player, it_yellowcard);
	.loc 1 432 2
	movq	-8(%rbp), %rax	# player, tmp226
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	P_GiveCard	#
# p_inter.c:433: 	if (!netgame)
	.loc 1 433 6
	movl	netgame(%rip), %eax	# netgame, netgame.9_28
# p_inter.c:433: 	if (!netgame)
	.loc 1 433 5
	testl	%eax, %eax	# netgame.9_28
	jne	.L164	#,
# p_inter.c:434: 	    break;
	.loc 1 434 6
	jmp	.L106	#
.L99:
# p_inter.c:438: 	if (!player->cards[it_redcard])
	.loc 1 438 20
	movq	-8(%rbp), %rax	# player, tmp227
	movl	80(%rax), %eax	# player_113->cards[2], _29
# p_inter.c:438: 	if (!player->cards[it_redcard])
	.loc 1 438 5
	testl	%eax, %eax	# _29
	jne	.L117	#,
# p_inter.c:439: 	    player->message = GOTREDCARD;
	.loc 1 439 22
	movq	-8(%rbp), %rax	# player, tmp228
	leaq	.LC9(%rip), %rdx	#, tmp229
	movq	%rdx, 224(%rax)	# tmp229, player_113->message
.L117:
# p_inter.c:440: 	P_GiveCard (player, it_redcard);
	.loc 1 440 2
	movq	-8(%rbp), %rax	# player, tmp230
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	P_GiveCard	#
# p_inter.c:441: 	if (!netgame)
	.loc 1 441 6
	movl	netgame(%rip), %eax	# netgame, netgame.10_30
# p_inter.c:441: 	if (!netgame)
	.loc 1 441 5
	testl	%eax, %eax	# netgame.10_30
	jne	.L165	#,
# p_inter.c:442: 	    break;
	.loc 1 442 6
	jmp	.L106	#
.L97:
# p_inter.c:446: 	if (!player->cards[it_blueskull])
	.loc 1 446 20
	movq	-8(%rbp), %rax	# player, tmp231
	movl	84(%rax), %eax	# player_113->cards[3], _31
# p_inter.c:446: 	if (!player->cards[it_blueskull])
	.loc 1 446 5
	testl	%eax, %eax	# _31
	jne	.L119	#,
# p_inter.c:447: 	    player->message = GOTBLUESKUL;
	.loc 1 447 22
	movq	-8(%rbp), %rax	# player, tmp232
	leaq	.LC10(%rip), %rdx	#, tmp233
	movq	%rdx, 224(%rax)	# tmp233, player_113->message
.L119:
# p_inter.c:448: 	P_GiveCard (player, it_blueskull);
	.loc 1 448 2
	movq	-8(%rbp), %rax	# player, tmp234
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	P_GiveCard	#
# p_inter.c:449: 	if (!netgame)
	.loc 1 449 6
	movl	netgame(%rip), %eax	# netgame, netgame.11_32
# p_inter.c:449: 	if (!netgame)
	.loc 1 449 5
	testl	%eax, %eax	# netgame.11_32
	jne	.L166	#,
# p_inter.c:450: 	    break;
	.loc 1 450 6
	jmp	.L106	#
.L95:
# p_inter.c:454: 	if (!player->cards[it_yellowskull])
	.loc 1 454 20
	movq	-8(%rbp), %rax	# player, tmp235
	movl	88(%rax), %eax	# player_113->cards[4], _33
# p_inter.c:454: 	if (!player->cards[it_yellowskull])
	.loc 1 454 5
	testl	%eax, %eax	# _33
	jne	.L121	#,
# p_inter.c:455: 	    player->message = GOTYELWSKUL;
	.loc 1 455 22
	movq	-8(%rbp), %rax	# player, tmp236
	leaq	.LC11(%rip), %rdx	#, tmp237
	movq	%rdx, 224(%rax)	# tmp237, player_113->message
.L121:
# p_inter.c:456: 	P_GiveCard (player, it_yellowskull);
	.loc 1 456 2
	movq	-8(%rbp), %rax	# player, tmp238
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	P_GiveCard	#
# p_inter.c:457: 	if (!netgame)
	.loc 1 457 6
	movl	netgame(%rip), %eax	# netgame, netgame.12_34
# p_inter.c:457: 	if (!netgame)
	.loc 1 457 5
	testl	%eax, %eax	# netgame.12_34
	jne	.L167	#,
# p_inter.c:458: 	    break;
	.loc 1 458 6
	jmp	.L106	#
.L96:
# p_inter.c:462: 	if (!player->cards[it_redskull])
	.loc 1 462 20
	movq	-8(%rbp), %rax	# player, tmp239
	movl	92(%rax), %eax	# player_113->cards[5], _35
# p_inter.c:462: 	if (!player->cards[it_redskull])
	.loc 1 462 5
	testl	%eax, %eax	# _35
	jne	.L123	#,
# p_inter.c:463: 	    player->message = GOTREDSKULL;
	.loc 1 463 22
	movq	-8(%rbp), %rax	# player, tmp240
	leaq	.LC12(%rip), %rdx	#, tmp241
	movq	%rdx, 224(%rax)	# tmp241, player_113->message
.L123:
# p_inter.c:464: 	P_GiveCard (player, it_redskull);
	.loc 1 464 2
	movq	-8(%rbp), %rax	# player, tmp242
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp242,
	call	P_GiveCard	#
# p_inter.c:465: 	if (!netgame)
	.loc 1 465 6
	movl	netgame(%rip), %eax	# netgame, netgame.13_36
# p_inter.c:465: 	if (!netgame)
	.loc 1 465 5
	testl	%eax, %eax	# netgame.13_36
	jne	.L168	#,
# p_inter.c:466: 	    break;
	.loc 1 466 6
	jmp	.L106	#
.L94:
# p_inter.c:471: 	if (!P_GiveBody (player, 10))
	.loc 1 471 7
	movq	-8(%rbp), %rax	# player, tmp243
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	P_GiveBody	#
# p_inter.c:471: 	if (!P_GiveBody (player, 10))
	.loc 1 471 5 discriminator 1
	testl	%eax, %eax	# _37
	je	.L169	#,
# p_inter.c:473: 	player->message = GOTSTIM;
	.loc 1 473 18
	movq	-8(%rbp), %rax	# player, tmp244
	leaq	.LC13(%rip), %rdx	#, tmp245
	movq	%rdx, 224(%rax)	# tmp245, player_113->message
# p_inter.c:474: 	break;
	.loc 1 474 2
	jmp	.L106	#
.L93:
# p_inter.c:477: 	if (!P_GiveBody (player, 25))
	.loc 1 477 7
	movq	-8(%rbp), %rax	# player, tmp246
	movl	$25, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	P_GiveBody	#
# p_inter.c:477: 	if (!P_GiveBody (player, 25))
	.loc 1 477 5 discriminator 1
	testl	%eax, %eax	# _38
	je	.L170	#,
# p_inter.c:480: 	if (player->health < 25)
	.loc 1 480 12
	movq	-8(%rbp), %rax	# player, tmp247
	movl	36(%rax), %eax	# player_113->health, _39
# p_inter.c:480: 	if (player->health < 25)
	.loc 1 480 5
	cmpl	$24, %eax	#, _39
	jg	.L127	#,
# p_inter.c:481: 	    player->message = GOTMEDINEED;
	.loc 1 481 22
	movq	-8(%rbp), %rax	# player, tmp248
	leaq	.LC14(%rip), %rdx	#, tmp249
	movq	%rdx, 224(%rax)	# tmp249, player_113->message
# p_inter.c:484: 	break;
	.loc 1 484 2
	jmp	.L106	#
.L127:
# p_inter.c:483: 	    player->message = GOTMEDIKIT;
	.loc 1 483 22
	movq	-8(%rbp), %rax	# player, tmp250
	leaq	.LC15(%rip), %rdx	#, tmp251
	movq	%rdx, 224(%rax)	# tmp251, player_113->message
# p_inter.c:484: 	break;
	.loc 1 484 2
	jmp	.L106	#
.L91:
# p_inter.c:489: 	if (!P_GivePower (player, pw_invulnerability))
	.loc 1 489 7
	movq	-8(%rbp), %rax	# player, tmp252
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp252,
	call	P_GivePower	#
# p_inter.c:489: 	if (!P_GivePower (player, pw_invulnerability))
	.loc 1 489 5 discriminator 1
	testl	%eax, %eax	# _40
	je	.L171	#,
# p_inter.c:491: 	player->message = GOTINVUL;
	.loc 1 491 18
	movq	-8(%rbp), %rax	# player, tmp253
	leaq	.LC16(%rip), %rdx	#, tmp254
	movq	%rdx, 224(%rax)	# tmp254, player_113->message
# p_inter.c:492: 	sound = sfx_getpow;
	.loc 1 492 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:493: 	break;
	.loc 1 493 2
	jmp	.L106	#
.L90:
# p_inter.c:496: 	if (!P_GivePower (player, pw_strength))
	.loc 1 496 7
	movq	-8(%rbp), %rax	# player, tmp255
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp255,
	call	P_GivePower	#
# p_inter.c:496: 	if (!P_GivePower (player, pw_strength))
	.loc 1 496 5 discriminator 1
	testl	%eax, %eax	# _41
	je	.L172	#,
# p_inter.c:498: 	player->message = GOTBERSERK;
	.loc 1 498 18
	movq	-8(%rbp), %rax	# player, tmp256
	leaq	.LC17(%rip), %rdx	#, tmp257
	movq	%rdx, 224(%rax)	# tmp257, player_113->message
# p_inter.c:499: 	if (player->readyweapon != wp_fist)
	.loc 1 499 12
	movq	-8(%rbp), %rax	# player, tmp258
	movl	116(%rax), %eax	# player_113->readyweapon, _42
# p_inter.c:499: 	if (player->readyweapon != wp_fist)
	.loc 1 499 5
	testl	%eax, %eax	# _42
	je	.L131	#,
# p_inter.c:500: 	    player->pendingweapon = wp_fist;
	.loc 1 500 28
	movq	-8(%rbp), %rax	# player, tmp259
	movl	$0, 120(%rax)	#, player_113->pendingweapon
.L131:
# p_inter.c:501: 	sound = sfx_getpow;
	.loc 1 501 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:502: 	break;
	.loc 1 502 2
	jmp	.L106	#
.L89:
# p_inter.c:505: 	if (!P_GivePower (player, pw_invisibility))
	.loc 1 505 7
	movq	-8(%rbp), %rax	# player, tmp260
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp260,
	call	P_GivePower	#
# p_inter.c:505: 	if (!P_GivePower (player, pw_invisibility))
	.loc 1 505 5 discriminator 1
	testl	%eax, %eax	# _43
	je	.L173	#,
# p_inter.c:507: 	player->message = GOTINVIS;
	.loc 1 507 18
	movq	-8(%rbp), %rax	# player, tmp261
	leaq	.LC18(%rip), %rdx	#, tmp262
	movq	%rdx, 224(%rax)	# tmp262, player_113->message
# p_inter.c:508: 	sound = sfx_getpow;
	.loc 1 508 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:509: 	break;
	.loc 1 509 2
	jmp	.L106	#
.L87:
# p_inter.c:512: 	if (!P_GivePower (player, pw_ironfeet))
	.loc 1 512 7
	movq	-8(%rbp), %rax	# player, tmp263
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	P_GivePower	#
# p_inter.c:512: 	if (!P_GivePower (player, pw_ironfeet))
	.loc 1 512 5 discriminator 1
	testl	%eax, %eax	# _44
	je	.L174	#,
# p_inter.c:514: 	player->message = GOTSUIT;
	.loc 1 514 18
	movq	-8(%rbp), %rax	# player, tmp264
	leaq	.LC19(%rip), %rdx	#, tmp265
	movq	%rdx, 224(%rax)	# tmp265, player_113->message
# p_inter.c:515: 	sound = sfx_getpow;
	.loc 1 515 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:516: 	break;
	.loc 1 516 2
	jmp	.L106	#
.L86:
# p_inter.c:519: 	if (!P_GivePower (player, pw_allmap))
	.loc 1 519 7
	movq	-8(%rbp), %rax	# player, tmp266
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp266,
	call	P_GivePower	#
# p_inter.c:519: 	if (!P_GivePower (player, pw_allmap))
	.loc 1 519 5 discriminator 1
	testl	%eax, %eax	# _45
	je	.L175	#,
# p_inter.c:521: 	player->message = GOTMAP;
	.loc 1 521 18
	movq	-8(%rbp), %rax	# player, tmp267
	leaq	.LC20(%rip), %rdx	#, tmp268
	movq	%rdx, 224(%rax)	# tmp268, player_113->message
# p_inter.c:522: 	sound = sfx_getpow;
	.loc 1 522 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:523: 	break;
	.loc 1 523 2
	jmp	.L106	#
.L85:
# p_inter.c:526: 	if (!P_GivePower (player, pw_infrared))
	.loc 1 526 7
	movq	-8(%rbp), %rax	# player, tmp269
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	P_GivePower	#
# p_inter.c:526: 	if (!P_GivePower (player, pw_infrared))
	.loc 1 526 5 discriminator 1
	testl	%eax, %eax	# _46
	je	.L176	#,
# p_inter.c:528: 	player->message = GOTVISOR;
	.loc 1 528 18
	movq	-8(%rbp), %rax	# player, tmp270
	leaq	.LC21(%rip), %rdx	#, tmp271
	movq	%rdx, 224(%rax)	# tmp271, player_113->message
# p_inter.c:529: 	sound = sfx_getpow;
	.loc 1 529 8
	movl	$93, -16(%rbp)	#, sound
# p_inter.c:530: 	break;
	.loc 1 530 2
	jmp	.L106	#
.L84:
# p_inter.c:534: 	if (special->flags & MF_DROPPED)
	.loc 1 534 13
	movq	-40(%rbp), %rax	# special, tmp272
	movl	160(%rax), %eax	# special_109(D)->flags, _47
# p_inter.c:534: 	if (special->flags & MF_DROPPED)
	.loc 1 534 21
	andl	$131072, %eax	#, _48
# p_inter.c:534: 	if (special->flags & MF_DROPPED)
	.loc 1 534 5
	testl	%eax, %eax	# _48
	je	.L136	#,
# p_inter.c:536: 	    if (!P_GiveAmmo (player,am_clip,0))
	.loc 1 536 11
	movq	-8(%rbp), %rax	# player, tmp273
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp273,
	call	P_GiveAmmo	#
# p_inter.c:536: 	    if (!P_GiveAmmo (player,am_clip,0))
	.loc 1 536 9 discriminator 1
	testl	%eax, %eax	# _49
	jne	.L137	#,
# p_inter.c:537: 		return;
	.loc 1 537 3
	jmp	.L62	#
.L136:
# p_inter.c:541: 	    if (!P_GiveAmmo (player,am_clip,1))
	.loc 1 541 11
	movq	-8(%rbp), %rax	# player, tmp274
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp274,
	call	P_GiveAmmo	#
# p_inter.c:541: 	    if (!P_GiveAmmo (player,am_clip,1))
	.loc 1 541 9 discriminator 1
	testl	%eax, %eax	# _50
	je	.L177	#,
.L137:
# p_inter.c:544: 	player->message = GOTCLIP;
	.loc 1 544 18
	movq	-8(%rbp), %rax	# player, tmp275
	leaq	.LC22(%rip), %rdx	#, tmp276
	movq	%rdx, 224(%rax)	# tmp276, player_113->message
# p_inter.c:545: 	break;
	.loc 1 545 2
	jmp	.L106	#
.L83:
# p_inter.c:548: 	if (!P_GiveAmmo (player, am_clip,5))
	.loc 1 548 7
	movq	-8(%rbp), %rax	# player, tmp277
	movl	$5, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp277,
	call	P_GiveAmmo	#
# p_inter.c:548: 	if (!P_GiveAmmo (player, am_clip,5))
	.loc 1 548 5 discriminator 1
	testl	%eax, %eax	# _51
	je	.L178	#,
# p_inter.c:550: 	player->message = GOTCLIPBOX;
	.loc 1 550 18
	movq	-8(%rbp), %rax	# player, tmp278
	leaq	.LC23(%rip), %rdx	#, tmp279
	movq	%rdx, 224(%rax)	# tmp279, player_113->message
# p_inter.c:551: 	break;
	.loc 1 551 2
	jmp	.L106	#
.L82:
# p_inter.c:554: 	if (!P_GiveAmmo (player, am_misl,1))
	.loc 1 554 7
	movq	-8(%rbp), %rax	# player, tmp280
	movl	$1, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp280,
	call	P_GiveAmmo	#
# p_inter.c:554: 	if (!P_GiveAmmo (player, am_misl,1))
	.loc 1 554 5 discriminator 1
	testl	%eax, %eax	# _52
	je	.L179	#,
# p_inter.c:556: 	player->message = GOTROCKET;
	.loc 1 556 18
	movq	-8(%rbp), %rax	# player, tmp281
	leaq	.LC24(%rip), %rdx	#, tmp282
	movq	%rdx, 224(%rax)	# tmp282, player_113->message
# p_inter.c:557: 	break;
	.loc 1 557 2
	jmp	.L106	#
.L81:
# p_inter.c:560: 	if (!P_GiveAmmo (player, am_misl,5))
	.loc 1 560 7
	movq	-8(%rbp), %rax	# player, tmp283
	movl	$5, %edx	#,
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp283,
	call	P_GiveAmmo	#
# p_inter.c:560: 	if (!P_GiveAmmo (player, am_misl,5))
	.loc 1 560 5 discriminator 1
	testl	%eax, %eax	# _53
	je	.L180	#,
# p_inter.c:562: 	player->message = GOTROCKBOX;
	.loc 1 562 18
	movq	-8(%rbp), %rax	# player, tmp284
	leaq	.LC25(%rip), %rdx	#, tmp285
	movq	%rdx, 224(%rax)	# tmp285, player_113->message
# p_inter.c:563: 	break;
	.loc 1 563 2
	jmp	.L106	#
.L80:
# p_inter.c:566: 	if (!P_GiveAmmo (player, am_cell,1))
	.loc 1 566 7
	movq	-8(%rbp), %rax	# player, tmp286
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp286,
	call	P_GiveAmmo	#
# p_inter.c:566: 	if (!P_GiveAmmo (player, am_cell,1))
	.loc 1 566 5 discriminator 1
	testl	%eax, %eax	# _54
	je	.L181	#,
# p_inter.c:568: 	player->message = GOTCELL;
	.loc 1 568 18
	movq	-8(%rbp), %rax	# player, tmp287
	leaq	.LC26(%rip), %rdx	#, tmp288
	movq	%rdx, 224(%rax)	# tmp288, player_113->message
# p_inter.c:569: 	break;
	.loc 1 569 2
	jmp	.L106	#
.L79:
# p_inter.c:572: 	if (!P_GiveAmmo (player, am_cell,5))
	.loc 1 572 7
	movq	-8(%rbp), %rax	# player, tmp289
	movl	$5, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp289,
	call	P_GiveAmmo	#
# p_inter.c:572: 	if (!P_GiveAmmo (player, am_cell,5))
	.loc 1 572 5 discriminator 1
	testl	%eax, %eax	# _55
	je	.L182	#,
# p_inter.c:574: 	player->message = GOTCELLBOX;
	.loc 1 574 18
	movq	-8(%rbp), %rax	# player, tmp290
	leaq	.LC27(%rip), %rdx	#, tmp291
	movq	%rdx, 224(%rax)	# tmp291, player_113->message
# p_inter.c:575: 	break;
	.loc 1 575 2
	jmp	.L106	#
.L78:
# p_inter.c:578: 	if (!P_GiveAmmo (player, am_shell,1))
	.loc 1 578 7
	movq	-8(%rbp), %rax	# player, tmp292
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp292,
	call	P_GiveAmmo	#
# p_inter.c:578: 	if (!P_GiveAmmo (player, am_shell,1))
	.loc 1 578 5 discriminator 1
	testl	%eax, %eax	# _56
	je	.L183	#,
# p_inter.c:580: 	player->message = GOTSHELLS;
	.loc 1 580 18
	movq	-8(%rbp), %rax	# player, tmp293
	leaq	.LC28(%rip), %rdx	#, tmp294
	movq	%rdx, 224(%rax)	# tmp294, player_113->message
# p_inter.c:581: 	break;
	.loc 1 581 2
	jmp	.L106	#
.L77:
# p_inter.c:584: 	if (!P_GiveAmmo (player, am_shell,5))
	.loc 1 584 7
	movq	-8(%rbp), %rax	# player, tmp295
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp295,
	call	P_GiveAmmo	#
# p_inter.c:584: 	if (!P_GiveAmmo (player, am_shell,5))
	.loc 1 584 5 discriminator 1
	testl	%eax, %eax	# _57
	je	.L184	#,
# p_inter.c:586: 	player->message = GOTSHELLBOX;
	.loc 1 586 18
	movq	-8(%rbp), %rax	# player, tmp296
	leaq	.LC29(%rip), %rdx	#, tmp297
	movq	%rdx, 224(%rax)	# tmp297, player_113->message
# p_inter.c:587: 	break;
	.loc 1 587 2
	jmp	.L106	#
.L76:
# p_inter.c:590: 	if (!player->backpack)
	.loc 1 590 13
	movq	-8(%rbp), %rax	# player, tmp298
	movl	96(%rax), %eax	# player_113->backpack, _58
# p_inter.c:590: 	if (!player->backpack)
	.loc 1 590 5
	testl	%eax, %eax	# _58
	jne	.L145	#,
# p_inter.c:592: 	    for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 592 12
	movl	$0, -20(%rbp)	#, i
# p_inter.c:592: 	    for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 592 6
	jmp	.L146	#
.L147:
# p_inter.c:593: 		player->maxammo[i] *= 2;
	.loc 1 593 18
	movq	-8(%rbp), %rax	# player, tmp299
	movl	-20(%rbp), %edx	# i, tmp301
	movslq	%edx, %rdx	# tmp301, tmp300
	addq	$44, %rdx	#, tmp302
	movl	(%rax,%rdx,4), %eax	# player_113->maxammo[i_86], _59
# p_inter.c:593: 		player->maxammo[i] *= 2;
	.loc 1 593 22
	leal	(%rax,%rax), %ecx	#, _60
	movq	-8(%rbp), %rax	# player, tmp303
	movl	-20(%rbp), %edx	# i, tmp305
	movslq	%edx, %rdx	# tmp305, tmp304
	addq	$44, %rdx	#, tmp306
	movl	%ecx, (%rax,%rdx,4)	# _60, player_113->maxammo[i_86]
# p_inter.c:592: 	    for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 592 30 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L146:
# p_inter.c:592: 	    for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 592 18 discriminator 1
	cmpl	$3, -20(%rbp)	#, i
	jle	.L147	#,
# p_inter.c:594: 	    player->backpack = true;
	.loc 1 594 23
	movq	-8(%rbp), %rax	# player, tmp307
	movl	$1, 96(%rax)	#, player_113->backpack
.L145:
# p_inter.c:596: 	for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 596 8
	movl	$0, -20(%rbp)	#, i
# p_inter.c:596: 	for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 596 2
	jmp	.L148	#
.L149:
# p_inter.c:597: 	    P_GiveAmmo (player, i, 1);
	.loc 1 597 6
	movl	-20(%rbp), %ecx	# i, i.14_61
	movq	-8(%rbp), %rax	# player, tmp308
	movl	$1, %edx	#,
	movl	%ecx, %esi	# i.14_61,
	movq	%rax, %rdi	# tmp308,
	call	P_GiveAmmo	#
# p_inter.c:596: 	for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 596 26 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L148:
# p_inter.c:596: 	for (i=0 ; i<NUMAMMO ; i++)
	.loc 1 596 14 discriminator 1
	cmpl	$3, -20(%rbp)	#, i
	jle	.L149	#,
# p_inter.c:598: 	player->message = GOTBACKPACK;
	.loc 1 598 18
	movq	-8(%rbp), %rax	# player, tmp309
	leaq	.LC30(%rip), %rdx	#, tmp310
	movq	%rdx, 224(%rax)	# tmp310, player_113->message
# p_inter.c:599: 	break;
	.loc 1 599 2
	jmp	.L106	#
.L75:
# p_inter.c:603: 	if (!P_GiveWeapon (player, wp_bfg, false) )
	.loc 1 603 7
	movq	-8(%rbp), %rax	# player, tmp311
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp311,
	call	P_GiveWeapon	#
# p_inter.c:603: 	if (!P_GiveWeapon (player, wp_bfg, false) )
	.loc 1 603 5 discriminator 1
	testl	%eax, %eax	# _62
	je	.L185	#,
# p_inter.c:605: 	player->message = GOTBFG9000;
	.loc 1 605 18
	movq	-8(%rbp), %rax	# player, tmp312
	leaq	.LC31(%rip), %rdx	#, tmp313
	movq	%rdx, 224(%rax)	# tmp313, player_113->message
# p_inter.c:606: 	sound = sfx_wpnup;	
	.loc 1 606 8
	movl	$33, -16(%rbp)	#, sound
# p_inter.c:607: 	break;
	.loc 1 607 2
	jmp	.L106	#
.L74:
# p_inter.c:610: 	if (!P_GiveWeapon (player, wp_chaingun, special->flags&MF_DROPPED) )
	.loc 1 610 49
	movq	-40(%rbp), %rax	# special, tmp314
	movl	160(%rax), %eax	# special_109(D)->flags, _63
# p_inter.c:610: 	if (!P_GiveWeapon (player, wp_chaingun, special->flags&MF_DROPPED) )
	.loc 1 610 56
	andl	$131072, %eax	#, _64
# p_inter.c:610: 	if (!P_GiveWeapon (player, wp_chaingun, special->flags&MF_DROPPED) )
	.loc 1 610 7
	movl	%eax, %edx	# _64, _65
	movq	-8(%rbp), %rax	# player, tmp315
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp315,
	call	P_GiveWeapon	#
# p_inter.c:610: 	if (!P_GiveWeapon (player, wp_chaingun, special->flags&MF_DROPPED) )
	.loc 1 610 5 discriminator 1
	testl	%eax, %eax	# _66
	je	.L186	#,
# p_inter.c:612: 	player->message = GOTCHAINGUN;
	.loc 1 612 18
	movq	-8(%rbp), %rax	# player, tmp316
	leaq	.LC32(%rip), %rdx	#, tmp317
	movq	%rdx, 224(%rax)	# tmp317, player_113->message
# p_inter.c:613: 	sound = sfx_wpnup;	
	.loc 1 613 8
	movl	$33, -16(%rbp)	#, sound
# p_inter.c:614: 	break;
	.loc 1 614 2
	jmp	.L106	#
.L73:
# p_inter.c:617: 	if (!P_GiveWeapon (player, wp_chainsaw, false) )
	.loc 1 617 7
	movq	-8(%rbp), %rax	# player, tmp318
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp318,
	call	P_GiveWeapon	#
# p_inter.c:617: 	if (!P_GiveWeapon (player, wp_chainsaw, false) )
	.loc 1 617 5 discriminator 1
	testl	%eax, %eax	# _67
	je	.L187	#,
# p_inter.c:619: 	player->message = GOTCHAINSAW;
	.loc 1 619 18
	movq	-8(%rbp), %rax	# player, tmp319
	leaq	.LC33(%rip), %rdx	#, tmp320
	movq	%rdx, 224(%rax)	# tmp320, player_113->message
# p_inter.c:620: 	sound = sfx_wpnup;	
	.loc 1 620 8
	movl	$33, -16(%rbp)	#, sound
# p_inter.c:621: 	break;
	.loc 1 621 2
	jmp	.L106	#
.L72:
# p_inter.c:624: 	if (!P_GiveWeapon (player, wp_missile, false) )
	.loc 1 624 7
	movq	-8(%rbp), %rax	# player, tmp321
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp321,
	call	P_GiveWeapon	#
# p_inter.c:624: 	if (!P_GiveWeapon (player, wp_missile, false) )
	.loc 1 624 5 discriminator 1
	testl	%eax, %eax	# _68
	je	.L188	#,
# p_inter.c:626: 	player->message = GOTLAUNCHER;
	.loc 1 626 18
	movq	-8(%rbp), %rax	# player, tmp322
	leaq	.LC34(%rip), %rdx	#, tmp323
	movq	%rdx, 224(%rax)	# tmp323, player_113->message
# p_inter.c:627: 	sound = sfx_wpnup;	
	.loc 1 627 8
	movl	$33, -16(%rbp)	#, sound
# p_inter.c:628: 	break;
	.loc 1 628 2
	jmp	.L106	#
.L71:
# p_inter.c:631: 	if (!P_GiveWeapon (player, wp_plasma, false) )
	.loc 1 631 7
	movq	-8(%rbp), %rax	# player, tmp324
	movl	$0, %edx	#,
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp324,
	call	P_GiveWeapon	#
# p_inter.c:631: 	if (!P_GiveWeapon (player, wp_plasma, false) )
	.loc 1 631 5 discriminator 1
	testl	%eax, %eax	# _69
	je	.L189	#,
# p_inter.c:633: 	player->message = GOTPLASMA;
	.loc 1 633 18
	movq	-8(%rbp), %rax	# player, tmp325
	leaq	.LC35(%rip), %rdx	#, tmp326
	movq	%rdx, 224(%rax)	# tmp326, player_113->message
# p_inter.c:634: 	sound = sfx_wpnup;	
	.loc 1 634 8
	movl	$33, -16(%rbp)	#, sound
# p_inter.c:635: 	break;
	.loc 1 635 2
	jmp	.L106	#
.L70:
# p_inter.c:638: 	if (!P_GiveWeapon (player, wp_shotgun, special->flags&MF_DROPPED ) )
	.loc 1 638 48
	movq	-40(%rbp), %rax	# special, tmp327
	movl	160(%rax), %eax	# special_109(D)->flags, _70
# p_inter.c:638: 	if (!P_GiveWeapon (player, wp_shotgun, special->flags&MF_DROPPED ) )
	.loc 1 638 55
	andl	$131072, %eax	#, _71
# p_inter.c:638: 	if (!P_GiveWeapon (player, wp_shotgun, special->flags&MF_DROPPED ) )
	.loc 1 638 7
	movl	%eax, %edx	# _71, _72
	movq	-8(%rbp), %rax	# player, tmp328
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp328,
	call	P_GiveWeapon	#
# p_inter.c:638: 	if (!P_GiveWeapon (player, wp_shotgun, special->flags&MF_DROPPED ) )
	.loc 1 638 5 discriminator 1
	testl	%eax, %eax	# _73
	je	.L190	#,
# p_inter.c:640: 	player->message = GOTSHOTGUN;
	.loc 1 640 18
	movq	-8(%rbp), %rax	# player, tmp329
	leaq	.LC36(%rip), %rdx	#, tmp330
	movq	%rdx, 224(%rax)	# tmp330, player_113->message
# p_inter.c:641: 	sound = sfx_wpnup;	
	.loc 1 641 8
	movl	$33, -16(%rbp)	#, sound
# p_inter.c:642: 	break;
	.loc 1 642 2
	jmp	.L106	#
.L68:
# p_inter.c:645: 	if (!P_GiveWeapon (player, wp_supershotgun, special->flags&MF_DROPPED ) )
	.loc 1 645 53
	movq	-40(%rbp), %rax	# special, tmp331
	movl	160(%rax), %eax	# special_109(D)->flags, _74
# p_inter.c:645: 	if (!P_GiveWeapon (player, wp_supershotgun, special->flags&MF_DROPPED ) )
	.loc 1 645 60
	andl	$131072, %eax	#, _75
# p_inter.c:645: 	if (!P_GiveWeapon (player, wp_supershotgun, special->flags&MF_DROPPED ) )
	.loc 1 645 7
	movl	%eax, %edx	# _75, _76
	movq	-8(%rbp), %rax	# player, tmp332
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp332,
	call	P_GiveWeapon	#
# p_inter.c:645: 	if (!P_GiveWeapon (player, wp_supershotgun, special->flags&MF_DROPPED ) )
	.loc 1 645 5 discriminator 1
	testl	%eax, %eax	# _77
	je	.L191	#,
# p_inter.c:647: 	player->message = GOTSHOTGUN2;
	.loc 1 647 18
	movq	-8(%rbp), %rax	# player, tmp333
	leaq	.LC37(%rip), %rdx	#, tmp334
	movq	%rdx, 224(%rax)	# tmp334, player_113->message
# p_inter.c:648: 	sound = sfx_wpnup;	
	.loc 1 648 8
	movl	$33, -16(%rbp)	#, sound
# p_inter.c:649: 	break;
	.loc 1 649 2
	jmp	.L106	#
.L67:
# p_inter.c:652: 	I_Error ("P_SpecialThing: Unknown gettable thing");
	.loc 1 652 2
	leaq	.LC38(%rip), %rax	#, tmp335
	movq	%rax, %rdi	# tmp335,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L106:
# p_inter.c:655:     if (special->flags & MF_COUNTITEM)
	.loc 1 655 16
	movq	-40(%rbp), %rax	# special, tmp336
	movl	160(%rax), %eax	# special_109(D)->flags, _78
# p_inter.c:655:     if (special->flags & MF_COUNTITEM)
	.loc 1 655 24
	andl	$8388608, %eax	#, _79
# p_inter.c:655:     if (special->flags & MF_COUNTITEM)
	.loc 1 655 8
	testl	%eax, %eax	# _79
	je	.L157	#,
# p_inter.c:656: 	player->itemcount++;
	.loc 1 656 8
	movq	-8(%rbp), %rax	# player, tmp337
	movl	212(%rax), %eax	# player_113->itemcount, _80
# p_inter.c:656: 	player->itemcount++;
	.loc 1 656 19
	leal	1(%rax), %edx	#, _81
	movq	-8(%rbp), %rax	# player, tmp338
	movl	%edx, 212(%rax)	# _81, player_113->itemcount
.L157:
# p_inter.c:657:     P_RemoveMobj (special);
	.loc 1 657 5
	movq	-40(%rbp), %rax	# special, tmp339
	movq	%rax, %rdi	# tmp339,
	call	P_RemoveMobj@PLT	#
# p_inter.c:658:     player->bonuscount += BONUSADD;
	.loc 1 658 11
	movq	-8(%rbp), %rax	# player, tmp340
	movl	236(%rax), %eax	# player_113->bonuscount, _82
# p_inter.c:658:     player->bonuscount += BONUSADD;
	.loc 1 658 24
	leal	6(%rax), %edx	#, _83
	movq	-8(%rbp), %rax	# player, tmp341
	movl	%edx, 236(%rax)	# _83, player_113->bonuscount
# p_inter.c:659:     if (player == &players[consoleplayer])
	.loc 1 659 27
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.15_84
# p_inter.c:659:     if (player == &players[consoleplayer])
	.loc 1 659 19
	movslq	%eax, %rdx	# consoleplayer.15_84, tmp342
	movq	%rdx, %rax	# tmp342, tmp343
	salq	$2, %rax	#, tmp343
	addq	%rdx, %rax	# tmp342, tmp343
	salq	$6, %rax	#, tmp344
	leaq	players(%rip), %rdx	#, tmp345
	addq	%rdx, %rax	# tmp345, _85
# p_inter.c:659:     if (player == &players[consoleplayer])
	.loc 1 659 8
	cmpq	%rax, -8(%rbp)	# _85, player
	jne	.L62	#,
# p_inter.c:660: 	S_StartSound (NULL, sound);
	.loc 1 660 2
	movl	-16(%rbp), %eax	# sound, tmp346
	movl	%eax, %esi	# tmp346,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
	jmp	.L62	#
.L158:
# p_inter.c:354: 	return;
	.loc 1 354 2
	nop	
	jmp	.L62	#
.L159:
# p_inter.c:364: 	return;
	.loc 1 364 2
	nop	
	jmp	.L62	#
.L160:
# p_inter.c:372: 	    return;
	.loc 1 372 6
	nop	
	jmp	.L62	#
.L161:
# p_inter.c:378: 	    return;
	.loc 1 378 6
	nop	
	jmp	.L62	#
.L162:
# p_inter.c:411: 	    return;
	.loc 1 411 6
	nop	
	jmp	.L62	#
.L163:
# p_inter.c:427: 	return;
	.loc 1 427 2
	nop	
	jmp	.L62	#
.L164:
# p_inter.c:435: 	return;
	.loc 1 435 2
	nop	
	jmp	.L62	#
.L165:
# p_inter.c:443: 	return;
	.loc 1 443 2
	nop	
	jmp	.L62	#
.L166:
# p_inter.c:451: 	return;
	.loc 1 451 2
	nop	
	jmp	.L62	#
.L167:
# p_inter.c:459: 	return;
	.loc 1 459 2
	nop	
	jmp	.L62	#
.L168:
# p_inter.c:467: 	return;
	.loc 1 467 2
	nop	
	jmp	.L62	#
.L169:
# p_inter.c:472: 	    return;
	.loc 1 472 6
	nop	
	jmp	.L62	#
.L170:
# p_inter.c:478: 	    return;
	.loc 1 478 6
	nop	
	jmp	.L62	#
.L171:
# p_inter.c:490: 	    return;
	.loc 1 490 6
	nop	
	jmp	.L62	#
.L172:
# p_inter.c:497: 	    return;
	.loc 1 497 6
	nop	
	jmp	.L62	#
.L173:
# p_inter.c:506: 	    return;
	.loc 1 506 6
	nop	
	jmp	.L62	#
.L174:
# p_inter.c:513: 	    return;
	.loc 1 513 6
	nop	
	jmp	.L62	#
.L175:
# p_inter.c:520: 	    return;
	.loc 1 520 6
	nop	
	jmp	.L62	#
.L176:
# p_inter.c:527: 	    return;
	.loc 1 527 6
	nop	
	jmp	.L62	#
.L177:
# p_inter.c:542: 		return;
	.loc 1 542 3
	nop	
	jmp	.L62	#
.L178:
# p_inter.c:549: 	    return;
	.loc 1 549 6
	nop	
	jmp	.L62	#
.L179:
# p_inter.c:555: 	    return;
	.loc 1 555 6
	nop	
	jmp	.L62	#
.L180:
# p_inter.c:561: 	    return;
	.loc 1 561 6
	nop	
	jmp	.L62	#
.L181:
# p_inter.c:567: 	    return;
	.loc 1 567 6
	nop	
	jmp	.L62	#
.L182:
# p_inter.c:573: 	    return;
	.loc 1 573 6
	nop	
	jmp	.L62	#
.L183:
# p_inter.c:579: 	    return;
	.loc 1 579 6
	nop	
	jmp	.L62	#
.L184:
# p_inter.c:585: 	    return;
	.loc 1 585 6
	nop	
	jmp	.L62	#
.L185:
# p_inter.c:604: 	    return;
	.loc 1 604 6
	nop	
	jmp	.L62	#
.L186:
# p_inter.c:611: 	    return;
	.loc 1 611 6
	nop	
	jmp	.L62	#
.L187:
# p_inter.c:618: 	    return;
	.loc 1 618 6
	nop	
	jmp	.L62	#
.L188:
# p_inter.c:625: 	    return;
	.loc 1 625 6
	nop	
	jmp	.L62	#
.L189:
# p_inter.c:632: 	    return;
	.loc 1 632 6
	nop	
	jmp	.L62	#
.L190:
# p_inter.c:639: 	    return;
	.loc 1 639 6
	nop	
	jmp	.L62	#
.L191:
# p_inter.c:646: 	    return;
	.loc 1 646 6
	nop	
.L62:
# p_inter.c:661: }
	.loc 1 661 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	P_TouchSpecialThing, .-P_TouchSpecialThing
	.globl	P_KillMobj
	.type	P_KillMobj, @function
P_KillMobj:
.LFB7:
	.loc 1 671 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# source, source
	movq	%rsi, -32(%rbp)	# target, target
# p_inter.c:675:     target->flags &= ~(MF_SHOOTABLE|MF_FLOAT|MF_SKULLFLY);
	.loc 1 675 11
	movq	-32(%rbp), %rax	# target, tmp146
	movl	160(%rax), %eax	# target_75(D)->flags, _1
# p_inter.c:675:     target->flags &= ~(MF_SHOOTABLE|MF_FLOAT|MF_SKULLFLY);
	.loc 1 675 19
	andl	$-16793605, %eax	#, _1
	movl	%eax, %edx	# _1, _2
	movq	-32(%rbp), %rax	# target, tmp147
	movl	%edx, 160(%rax)	# _2, target_75(D)->flags
# p_inter.c:677:     if (target->type != MT_SKULL)
	.loc 1 677 15
	movq	-32(%rbp), %rax	# target, tmp148
	movl	128(%rax), %eax	# target_75(D)->type, _3
# p_inter.c:677:     if (target->type != MT_SKULL)
	.loc 1 677 8
	cmpl	$18, %eax	#, _3
	je	.L193	#,
# p_inter.c:678: 	target->flags &= ~MF_NOGRAVITY;
	.loc 1 678 8
	movq	-32(%rbp), %rax	# target, tmp149
	movl	160(%rax), %eax	# target_75(D)->flags, _4
# p_inter.c:678: 	target->flags &= ~MF_NOGRAVITY;
	.loc 1 678 16
	andb	$-3, %ah	#, _4
	movl	%eax, %edx	# _4, _5
	movq	-32(%rbp), %rax	# target, tmp150
	movl	%edx, 160(%rax)	# _5, target_75(D)->flags
.L193:
# p_inter.c:680:     target->flags |= MF_CORPSE|MF_DROPOFF;
	.loc 1 680 11
	movq	-32(%rbp), %rax	# target, tmp151
	movl	160(%rax), %eax	# target_75(D)->flags, _6
# p_inter.c:680:     target->flags |= MF_CORPSE|MF_DROPOFF;
	.loc 1 680 19
	orl	$1049600, %eax	#, _6
	movl	%eax, %edx	# _6, _7
	movq	-32(%rbp), %rax	# target, tmp152
	movl	%edx, 160(%rax)	# _7, target_75(D)->flags
# p_inter.c:681:     target->height >>= 2;
	.loc 1 681 11
	movq	-32(%rbp), %rax	# target, tmp153
	movl	108(%rax), %eax	# target_75(D)->height, _8
# p_inter.c:681:     target->height >>= 2;
	.loc 1 681 20
	sarl	$2, %eax	#, _8
	movl	%eax, %edx	# _8, _9
	movq	-32(%rbp), %rax	# target, tmp154
	movl	%edx, 108(%rax)	# _9, target_75(D)->height
# p_inter.c:683:     if (source && source->player)
	.loc 1 683 8
	cmpq	$0, -24(%rbp)	#, source
	je	.L194	#,
# p_inter.c:683:     if (source && source->player)
	.loc 1 683 25 discriminator 1
	movq	-24(%rbp), %rax	# source, tmp155
	movq	192(%rax), %rax	# source_80(D)->player, _10
# p_inter.c:683:     if (source && source->player)
	.loc 1 683 16 discriminator 1
	testq	%rax, %rax	# _10
	je	.L194	#,
# p_inter.c:686: 	if (target->flags & MF_COUNTKILL)
	.loc 1 686 12
	movq	-32(%rbp), %rax	# target, tmp156
	movl	160(%rax), %eax	# target_75(D)->flags, _11
# p_inter.c:686: 	if (target->flags & MF_COUNTKILL)
	.loc 1 686 20
	andl	$4194304, %eax	#, _12
# p_inter.c:686: 	if (target->flags & MF_COUNTKILL)
	.loc 1 686 5
	testl	%eax, %eax	# _12
	je	.L195	#,
# p_inter.c:687: 	    source->player->killcount++;	
	.loc 1 687 12
	movq	-24(%rbp), %rax	# source, tmp157
	movq	192(%rax), %rax	# source_80(D)->player, _13
# p_inter.c:687: 	    source->player->killcount++;	
	.loc 1 687 20
	movl	208(%rax), %edx	# _13->killcount, _14
# p_inter.c:687: 	    source->player->killcount++;	
	.loc 1 687 31
	addl	$1, %edx	#, _15
	movl	%edx, 208(%rax)	# _15, _13->killcount
.L195:
# p_inter.c:689: 	if (target->player)
	.loc 1 689 12
	movq	-32(%rbp), %rax	# target, tmp158
	movq	192(%rax), %rax	# target_75(D)->player, _16
# p_inter.c:689: 	if (target->player)
	.loc 1 689 5
	testq	%rax, %rax	# _16
	je	.L197	#,
# p_inter.c:690: 	    source->player->frags[target->player-players]++;
	.loc 1 690 12
	movq	-24(%rbp), %rax	# source, tmp159
	movq	192(%rax), %rax	# source_80(D)->player, _17
# p_inter.c:690: 	    source->player->frags[target->player-players]++;
	.loc 1 690 34
	movq	-32(%rbp), %rdx	# target, tmp160
	movq	192(%rdx), %rcx	# target_75(D)->player, _18
# p_inter.c:690: 	    source->player->frags[target->player-players]++;
	.loc 1 690 42
	leaq	players(%rip), %rdx	#, tmp161
	subq	%rdx, %rcx	# tmp161, _19
	sarq	$6, %rcx	#, tmp162
	movabsq	$-3689348814741910323, %rdx	#, tmp164
	imulq	%rcx, %rdx	# tmp162, tmp163
# p_inter.c:690: 	    source->player->frags[target->player-players]++;
	.loc 1 690 27
	leaq	24(%rdx), %rcx	#, tmp165
	movl	4(%rax,%rcx,4), %ecx	# _17->frags[_20], _21
# p_inter.c:690: 	    source->player->frags[target->player-players]++;
	.loc 1 690 51
	addl	$1, %ecx	#, _22
	addq	$24, %rdx	#, tmp166
	movl	%ecx, 4(%rax,%rdx,4)	# _22, _17->frags[_20]
# p_inter.c:689: 	if (target->player)
	.loc 1 689 5
	jmp	.L197	#
.L194:
# p_inter.c:692:     else if (!netgame && (target->flags & MF_COUNTKILL) )
	.loc 1 692 14
	movl	netgame(%rip), %eax	# netgame, netgame.16_23
# p_inter.c:692:     else if (!netgame && (target->flags & MF_COUNTKILL) )
	.loc 1 692 13
	testl	%eax, %eax	# netgame.16_23
	jne	.L197	#,
# p_inter.c:692:     else if (!netgame && (target->flags & MF_COUNTKILL) )
	.loc 1 692 33 discriminator 1
	movq	-32(%rbp), %rax	# target, tmp167
	movl	160(%rax), %eax	# target_75(D)->flags, _24
# p_inter.c:692:     else if (!netgame && (target->flags & MF_COUNTKILL) )
	.loc 1 692 41 discriminator 1
	andl	$4194304, %eax	#, _25
# p_inter.c:692:     else if (!netgame && (target->flags & MF_COUNTKILL) )
	.loc 1 692 23 discriminator 1
	testl	%eax, %eax	# _25
	je	.L197	#,
# p_inter.c:696: 	players[0].killcount++;
	.loc 1 696 12
	movl	208+players(%rip), %eax	# players[0].killcount, _26
# p_inter.c:696: 	players[0].killcount++;
	.loc 1 696 22
	addl	$1, %eax	#, _27
	movl	%eax, 208+players(%rip)	# _27, players[0].killcount
.L197:
# p_inter.c:699:     if (target->player)
	.loc 1 699 15
	movq	-32(%rbp), %rax	# target, tmp168
	movq	192(%rax), %rax	# target_75(D)->player, _28
# p_inter.c:699:     if (target->player)
	.loc 1 699 8
	testq	%rax, %rax	# _28
	je	.L198	#,
# p_inter.c:702: 	if (!source)	
	.loc 1 702 5
	cmpq	$0, -24(%rbp)	#, source
	jne	.L199	#,
# p_inter.c:703: 	    target->player->frags[target->player-players]++;
	.loc 1 703 12
	movq	-32(%rbp), %rax	# target, tmp169
	movq	192(%rax), %rax	# target_75(D)->player, _29
# p_inter.c:703: 	    target->player->frags[target->player-players]++;
	.loc 1 703 34
	movq	-32(%rbp), %rdx	# target, tmp170
	movq	192(%rdx), %rcx	# target_75(D)->player, _30
# p_inter.c:703: 	    target->player->frags[target->player-players]++;
	.loc 1 703 42
	leaq	players(%rip), %rdx	#, tmp171
	subq	%rdx, %rcx	# tmp171, _31
	sarq	$6, %rcx	#, tmp172
	movabsq	$-3689348814741910323, %rdx	#, tmp174
	imulq	%rcx, %rdx	# tmp172, tmp173
# p_inter.c:703: 	    target->player->frags[target->player-players]++;
	.loc 1 703 27
	leaq	24(%rdx), %rcx	#, tmp175
	movl	4(%rax,%rcx,4), %ecx	# _29->frags[_32], _33
# p_inter.c:703: 	    target->player->frags[target->player-players]++;
	.loc 1 703 51
	addl	$1, %ecx	#, _34
	addq	$24, %rdx	#, tmp176
	movl	%ecx, 4(%rax,%rdx,4)	# _34, _29->frags[_32]
.L199:
# p_inter.c:705: 	target->flags &= ~MF_SOLID;
	.loc 1 705 8
	movq	-32(%rbp), %rax	# target, tmp177
	movl	160(%rax), %eax	# target_75(D)->flags, _35
# p_inter.c:705: 	target->flags &= ~MF_SOLID;
	.loc 1 705 16
	andl	$-3, %eax	#, _35
	movl	%eax, %edx	# _35, _36
	movq	-32(%rbp), %rax	# target, tmp178
	movl	%edx, 160(%rax)	# _36, target_75(D)->flags
# p_inter.c:706: 	target->player->playerstate = PST_DEAD;
	.loc 1 706 8
	movq	-32(%rbp), %rax	# target, tmp179
	movq	192(%rax), %rax	# target_75(D)->player, _37
# p_inter.c:706: 	target->player->playerstate = PST_DEAD;
	.loc 1 706 30
	movl	$1, 8(%rax)	#, _37->playerstate
# p_inter.c:707: 	P_DropWeapon (target->player);
	.loc 1 707 22
	movq	-32(%rbp), %rax	# target, tmp180
	movq	192(%rax), %rax	# target_75(D)->player, _38
# p_inter.c:707: 	P_DropWeapon (target->player);
	.loc 1 707 2
	movq	%rax, %rdi	# _38,
	call	P_DropWeapon@PLT	#
# p_inter.c:709: 	if (target->player == &players[consoleplayer]
	.loc 1 709 12
	movq	-32(%rbp), %rax	# target, tmp181
	movq	192(%rax), %rcx	# target_75(D)->player, _39
# p_inter.c:709: 	if (target->player == &players[consoleplayer]
	.loc 1 709 32
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.17_40
# p_inter.c:709: 	if (target->player == &players[consoleplayer]
	.loc 1 709 24
	movslq	%eax, %rdx	# consoleplayer.17_40, tmp182
	movq	%rdx, %rax	# tmp182, tmp183
	salq	$2, %rax	#, tmp183
	addq	%rdx, %rax	# tmp182, tmp183
	salq	$6, %rax	#, tmp184
	leaq	players(%rip), %rdx	#, tmp185
	addq	%rdx, %rax	# tmp185, _41
# p_inter.c:709: 	if (target->player == &players[consoleplayer]
	.loc 1 709 5
	cmpq	%rax, %rcx	# _41, _39
	jne	.L198	#,
# p_inter.c:710: 	    && automapactive)
	.loc 1 710 6
	movl	automapactive(%rip), %eax	# automapactive, automapactive.18_42
	testl	%eax, %eax	# automapactive.18_42
	je	.L198	#,
# p_inter.c:714: 	    AM_Stop ();
	.loc 1 714 6
	call	AM_Stop@PLT	#
.L198:
# p_inter.c:719:     if (target->health < -target->info->spawnhealth 
	.loc 1 719 15
	movq	-32(%rbp), %rax	# target, tmp186
	movl	164(%rax), %edx	# target_75(D)->health, _43
# p_inter.c:719:     if (target->health < -target->info->spawnhealth 
	.loc 1 719 33
	movq	-32(%rbp), %rax	# target, tmp187
	movq	136(%rax), %rax	# target_75(D)->info, _44
# p_inter.c:719:     if (target->health < -target->info->spawnhealth 
	.loc 1 719 39
	movl	8(%rax), %eax	# _44->spawnhealth, _45
# p_inter.c:719:     if (target->health < -target->info->spawnhealth 
	.loc 1 719 26
	negl	%eax	# _46
# p_inter.c:719:     if (target->health < -target->info->spawnhealth 
	.loc 1 719 8
	cmpl	%eax, %edx	# _46, _43
	jge	.L200	#,
# p_inter.c:720: 	&& target->info->xdeathstate)
	.loc 1 720 11
	movq	-32(%rbp), %rax	# target, tmp188
	movq	136(%rax), %rax	# target_75(D)->info, _47
# p_inter.c:720: 	&& target->info->xdeathstate)
	.loc 1 720 17
	movl	52(%rax), %eax	# _47->xdeathstate, _48
# p_inter.c:720: 	&& target->info->xdeathstate)
	.loc 1 720 2
	testl	%eax, %eax	# _48
	je	.L200	#,
# p_inter.c:722: 	P_SetMobjState (target, target->info->xdeathstate);
	.loc 1 722 32
	movq	-32(%rbp), %rax	# target, tmp189
	movq	136(%rax), %rax	# target_75(D)->info, _49
# p_inter.c:722: 	P_SetMobjState (target, target->info->xdeathstate);
	.loc 1 722 38
	movl	52(%rax), %eax	# _49->xdeathstate, _50
# p_inter.c:722: 	P_SetMobjState (target, target->info->xdeathstate);
	.loc 1 722 2
	movl	%eax, %edx	# _50, _51
	movq	-32(%rbp), %rax	# target, tmp190
	movl	%edx, %esi	# _51,
	movq	%rax, %rdi	# tmp190,
	call	P_SetMobjState@PLT	#
	jmp	.L201	#
.L200:
# p_inter.c:725: 	P_SetMobjState (target, target->info->deathstate);
	.loc 1 725 32
	movq	-32(%rbp), %rax	# target, tmp191
	movq	136(%rax), %rax	# target_75(D)->info, _52
# p_inter.c:725: 	P_SetMobjState (target, target->info->deathstate);
	.loc 1 725 38
	movl	48(%rax), %eax	# _52->deathstate, _53
# p_inter.c:725: 	P_SetMobjState (target, target->info->deathstate);
	.loc 1 725 2
	movl	%eax, %edx	# _53, _54
	movq	-32(%rbp), %rax	# target, tmp192
	movl	%edx, %esi	# _54,
	movq	%rax, %rdi	# tmp192,
	call	P_SetMobjState@PLT	#
.L201:
# p_inter.c:726:     target->tics -= P_Random()&3;
	.loc 1 726 21
	call	P_Random@PLT	#
# p_inter.c:726:     target->tics -= P_Random()&3;
	.loc 1 726 31 discriminator 1
	andl	$3, %eax	#, _55
	movl	%eax, %ecx	# _55, _92
# p_inter.c:726:     target->tics -= P_Random()&3;
	.loc 1 726 11 discriminator 1
	movq	-32(%rbp), %rax	# target, tmp193
	movl	144(%rax), %eax	# target_75(D)->tics, _56
# p_inter.c:726:     target->tics -= P_Random()&3;
	.loc 1 726 18 discriminator 1
	subl	%ecx, %eax	# _92, _56
	movl	%eax, %edx	# _56, _57
	movq	-32(%rbp), %rax	# target, tmp194
	movl	%edx, 144(%rax)	# _57, target_75(D)->tics
# p_inter.c:728:     if (target->tics < 1)
	.loc 1 728 15
	movq	-32(%rbp), %rax	# target, tmp195
	movl	144(%rax), %eax	# target_75(D)->tics, _58
# p_inter.c:728:     if (target->tics < 1)
	.loc 1 728 8
	testl	%eax, %eax	# _58
	jg	.L202	#,
# p_inter.c:729: 	target->tics = 1;
	.loc 1 729 15
	movq	-32(%rbp), %rax	# target, tmp196
	movl	$1, 144(%rax)	#, target_75(D)->tics
.L202:
# p_inter.c:737:     switch (target->type)
	.loc 1 737 19
	movq	-32(%rbp), %rax	# target, tmp197
	movl	128(%rax), %eax	# target_75(D)->type, _59
# p_inter.c:737:     switch (target->type)
	.loc 1 737 5
	cmpl	$23, %eax	#, _59
	je	.L203	#,
	cmpl	$23, %eax	#, _59
	ja	.L209	#,
	cmpl	$10, %eax	#, _59
	je	.L205	#,
	cmpl	$10, %eax	#, _59
	ja	.L209	#,
	cmpl	$1, %eax	#, _59
	je	.L203	#,
	cmpl	$2, %eax	#, _59
	je	.L206	#,
# p_inter.c:753: 	return;
	.loc 1 753 2
	jmp	.L209	#
.L203:
# p_inter.c:741: 	item = MT_CLIP;
	.loc 1 741 7
	movl	$63, -12(%rbp)	#, item
# p_inter.c:742: 	break;
	.loc 1 742 2
	jmp	.L207	#
.L206:
# p_inter.c:745: 	item = MT_SHOTGUN;
	.loc 1 745 7
	movl	$77, -12(%rbp)	#, item
# p_inter.c:746: 	break;
	.loc 1 746 2
	jmp	.L207	#
.L205:
# p_inter.c:749: 	item = MT_CHAINGUN;
	.loc 1 749 7
	movl	$73, -12(%rbp)	#, item
# p_inter.c:750: 	break;
	.loc 1 750 2
	nop	
.L207:
# p_inter.c:756:     mo = P_SpawnMobj (target->x,target->y,ONFLOORZ, item);
	.loc 1 756 10
	movq	-32(%rbp), %rax	# target, tmp198
	movl	28(%rax), %esi	# target_75(D)->y, _60
	movq	-32(%rbp), %rax	# target, tmp199
	movl	24(%rax), %eax	# target_75(D)->x, _61
	movl	-12(%rbp), %edx	# item, tmp200
	movl	%edx, %ecx	# tmp200,
	movl	$-2147483648, %edx	#,
	movl	%eax, %edi	# _61,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -8(%rbp)	# tmp201, mo
# p_inter.c:757:     mo->flags |= MF_DROPPED;	// special versions of items
	.loc 1 757 7
	movq	-8(%rbp), %rax	# mo, tmp202
	movl	160(%rax), %eax	# mo_99->flags, _62
# p_inter.c:757:     mo->flags |= MF_DROPPED;	// special versions of items
	.loc 1 757 15
	orl	$131072, %eax	#, _62
	movl	%eax, %edx	# _62, _63
	movq	-8(%rbp), %rax	# mo, tmp203
	movl	%edx, 160(%rax)	# _63, mo_99->flags
	jmp	.L192	#
.L209:
# p_inter.c:753: 	return;
	.loc 1 753 2
	nop	
.L192:
# p_inter.c:758: }
	.loc 1 758 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	P_KillMobj, .-P_KillMobj
	.globl	P_DamageMobj
	.type	P_DamageMobj, @function
P_DamageMobj:
.LFB8:
	.loc 1 780 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# target, target
	movq	%rsi, -48(%rbp)	# inflictor, inflictor
	movq	%rdx, -56(%rbp)	# source, source
	movl	%ecx, -60(%rbp)	# damage, damage
# p_inter.c:787:     if ( !(target->flags & MF_SHOOTABLE) )
	.loc 1 787 18
	movq	-40(%rbp), %rax	# target, tmp168
	movl	160(%rax), %eax	# target_104(D)->flags, _1
# p_inter.c:787:     if ( !(target->flags & MF_SHOOTABLE) )
	.loc 1 787 26
	andl	$4, %eax	#, _2
# p_inter.c:787:     if ( !(target->flags & MF_SHOOTABLE) )
	.loc 1 787 8
	testl	%eax, %eax	# _2
	je	.L232	#,
# p_inter.c:790:     if (target->health <= 0)
	.loc 1 790 15
	movq	-40(%rbp), %rax	# target, tmp169
	movl	164(%rax), %eax	# target_104(D)->health, _3
# p_inter.c:790:     if (target->health <= 0)
	.loc 1 790 8
	testl	%eax, %eax	# _3
	jle	.L233	#,
# p_inter.c:793:     if ( target->flags & MF_SKULLFLY )
	.loc 1 793 16
	movq	-40(%rbp), %rax	# target, tmp170
	movl	160(%rax), %eax	# target_104(D)->flags, _4
# p_inter.c:793:     if ( target->flags & MF_SKULLFLY )
	.loc 1 793 24
	andl	$16777216, %eax	#, _5
# p_inter.c:793:     if ( target->flags & MF_SKULLFLY )
	.loc 1 793 8
	testl	%eax, %eax	# _5
	je	.L214	#,
# p_inter.c:795: 	target->momx = target->momy = target->momz = 0;
	.loc 1 795 45
	movq	-40(%rbp), %rax	# target, tmp171
	movl	$0, 120(%rax)	#, target_104(D)->momz
# p_inter.c:795: 	target->momx = target->momy = target->momz = 0;
	.loc 1 795 38
	movq	-40(%rbp), %rax	# target, tmp172
	movl	120(%rax), %edx	# target_104(D)->momz, _6
# p_inter.c:795: 	target->momx = target->momy = target->momz = 0;
	.loc 1 795 30
	movq	-40(%rbp), %rax	# target, tmp173
	movl	%edx, 116(%rax)	# _6, target_104(D)->momy
# p_inter.c:795: 	target->momx = target->momy = target->momz = 0;
	.loc 1 795 23
	movq	-40(%rbp), %rax	# target, tmp174
	movl	116(%rax), %edx	# target_104(D)->momy, _7
# p_inter.c:795: 	target->momx = target->momy = target->momz = 0;
	.loc 1 795 15
	movq	-40(%rbp), %rax	# target, tmp175
	movl	%edx, 112(%rax)	# _7, target_104(D)->momx
.L214:
# p_inter.c:798:     player = target->player;
	.loc 1 798 12
	movq	-40(%rbp), %rax	# target, tmp176
	movq	192(%rax), %rax	# target_104(D)->player, tmp177
	movq	%rax, -8(%rbp)	# tmp177, player
# p_inter.c:799:     if (player && gameskill == sk_baby)
	.loc 1 799 8
	cmpq	$0, -8(%rbp)	#, player
	je	.L215	#,
# p_inter.c:799:     if (player && gameskill == sk_baby)
	.loc 1 799 29 discriminator 1
	movl	gameskill(%rip), %eax	# gameskill, gameskill.19_8
# p_inter.c:799:     if (player && gameskill == sk_baby)
	.loc 1 799 16 discriminator 1
	testl	%eax, %eax	# gameskill.19_8
	jne	.L215	#,
# p_inter.c:800: 	damage >>= 1; 	// take half damage in trainer mode
	.loc 1 800 9
	sarl	-60(%rbp)	# damage
.L215:
# p_inter.c:806:     if (inflictor
	.loc 1 806 8
	cmpq	$0, -48(%rbp)	#, inflictor
	je	.L216	#,
# p_inter.c:807: 	&& !(target->flags & MF_NOCLIP)
	.loc 1 807 13
	movq	-40(%rbp), %rax	# target, tmp178
	movl	160(%rax), %eax	# target_104(D)->flags, _9
# p_inter.c:807: 	&& !(target->flags & MF_NOCLIP)
	.loc 1 807 21
	andl	$4096, %eax	#, _10
# p_inter.c:807: 	&& !(target->flags & MF_NOCLIP)
	.loc 1 807 2
	testl	%eax, %eax	# _10
	jne	.L216	#,
# p_inter.c:808: 	&& (!source
	.loc 1 808 2
	cmpq	$0, -56(%rbp)	#, source
	je	.L217	#,
# p_inter.c:809: 	    || !source->player
	.loc 1 809 16
	movq	-56(%rbp), %rax	# source, tmp179
	movq	192(%rax), %rax	# source_112(D)->player, _11
# p_inter.c:809: 	    || !source->player
	.loc 1 809 6
	testq	%rax, %rax	# _11
	je	.L217	#,
# p_inter.c:810: 	    || source->player->readyweapon != wp_chainsaw))
	.loc 1 810 15
	movq	-56(%rbp), %rax	# source, tmp180
	movq	192(%rax), %rax	# source_112(D)->player, _12
# p_inter.c:810: 	    || source->player->readyweapon != wp_chainsaw))
	.loc 1 810 23
	movl	116(%rax), %eax	# _12->readyweapon, _13
# p_inter.c:810: 	    || source->player->readyweapon != wp_chainsaw))
	.loc 1 810 6
	cmpl	$7, %eax	#, _13
	je	.L216	#,
.L217:
# p_inter.c:812: 	ang = R_PointToAngle2 ( inflictor->x,
	.loc 1 812 8
	movq	-40(%rbp), %rax	# target, tmp181
	movl	28(%rax), %ecx	# target_104(D)->y, _14
	movq	-40(%rbp), %rax	# target, tmp182
	movl	24(%rax), %edx	# target_104(D)->x, _15
	movq	-48(%rbp), %rax	# inflictor, tmp183
	movl	28(%rax), %esi	# inflictor_111(D)->y, _16
	movq	-48(%rbp), %rax	# inflictor, tmp184
	movl	24(%rax), %eax	# inflictor_111(D)->x, _17
	movl	%eax, %edi	# _17,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -24(%rbp)	# tmp185, ang
# p_inter.c:817: 	thrust = damage*(FRACUNIT>>3)*100/target->info->mass;
	.loc 1 817 31
	movl	-60(%rbp), %eax	# damage, tmp186
	imull	$819200, %eax, %eax	#, tmp186, _18
# p_inter.c:817: 	thrust = damage*(FRACUNIT>>3)*100/target->info->mass;
	.loc 1 817 42
	movq	-40(%rbp), %rdx	# target, tmp187
	movq	136(%rdx), %rdx	# target_104(D)->info, _19
# p_inter.c:817: 	thrust = damage*(FRACUNIT>>3)*100/target->info->mass;
	.loc 1 817 48
	movl	72(%rdx), %edi	# _19->mass, _20
# p_inter.c:817: 	thrust = damage*(FRACUNIT>>3)*100/target->info->mass;
	.loc 1 817 9
	cltd
	idivl	%edi	# _20
	movl	%eax, -16(%rbp)	# tmp188, thrust
# p_inter.c:820: 	if ( damage < 40
	.loc 1 820 5
	cmpl	$39, -60(%rbp)	#, damage
	jg	.L218	#,
# p_inter.c:821: 	     && damage > target->health
	.loc 1 821 25
	movq	-40(%rbp), %rax	# target, tmp190
	movl	164(%rax), %eax	# target_104(D)->health, _21
# p_inter.c:821: 	     && damage > target->health
	.loc 1 821 7
	cmpl	%eax, -60(%rbp)	# _21, damage
	jle	.L218	#,
# p_inter.c:822: 	     && target->z - inflictor->z > 64*FRACUNIT
	.loc 1 822 16
	movq	-40(%rbp), %rax	# target, tmp191
	movl	32(%rax), %edx	# target_104(D)->z, _22
# p_inter.c:822: 	     && target->z - inflictor->z > 64*FRACUNIT
	.loc 1 822 31
	movq	-48(%rbp), %rax	# inflictor, tmp192
	movl	32(%rax), %eax	# inflictor_111(D)->z, _23
# p_inter.c:822: 	     && target->z - inflictor->z > 64*FRACUNIT
	.loc 1 822 20
	subl	%eax, %edx	# _23, _24
# p_inter.c:822: 	     && target->z - inflictor->z > 64*FRACUNIT
	.loc 1 822 7
	cmpl	$4194304, %edx	#, _24
	jle	.L218	#,
# p_inter.c:823: 	     && (P_Random ()&1) )
	.loc 1 823 11
	call	P_Random@PLT	#
# p_inter.c:823: 	     && (P_Random ()&1) )
	.loc 1 823 22 discriminator 1
	andl	$1, %eax	#, _26
# p_inter.c:823: 	     && (P_Random ()&1) )
	.loc 1 823 7 discriminator 1
	testl	%eax, %eax	# _26
	je	.L218	#,
# p_inter.c:825: 	    ang += ANG180;
	.loc 1 825 10
	addl	$-2147483648, -24(%rbp)	#, ang
# p_inter.c:826: 	    thrust *= 4;
	.loc 1 826 13
	sall	$2, -16(%rbp)	#, thrust
.L218:
# p_inter.c:829: 	ang >>= ANGLETOFINESHIFT;
	.loc 1 829 6
	shrl	$19, -24(%rbp)	#, ang
# p_inter.c:830: 	target->momx += FixedMul (thrust, finecosine[ang]);
	.loc 1 830 46
	movq	finecosine(%rip), %rax	# finecosine, finecosine.20_27
	movl	-24(%rbp), %edx	# ang, _28
	salq	$2, %rdx	#, _29
	addq	%rdx, %rax	# _29, _30
# p_inter.c:830: 	target->momx += FixedMul (thrust, finecosine[ang]);
	.loc 1 830 18
	movl	(%rax), %edx	# *_30, _31
	movl	-16(%rbp), %eax	# thrust, tmp193
	movl	%edx, %esi	# _31,
	movl	%eax, %edi	# tmp193,
	call	FixedMul@PLT	#
# p_inter.c:830: 	target->momx += FixedMul (thrust, finecosine[ang]);
	.loc 1 830 8 discriminator 1
	movq	-40(%rbp), %rdx	# target, tmp194
	movl	112(%rdx), %edx	# target_104(D)->momx, _32
# p_inter.c:830: 	target->momx += FixedMul (thrust, finecosine[ang]);
	.loc 1 830 15 discriminator 1
	addl	%eax, %edx	# _121, _33
	movq	-40(%rbp), %rax	# target, tmp195
	movl	%edx, 112(%rax)	# _33, target_104(D)->momx
# p_inter.c:831: 	target->momy += FixedMul (thrust, finesine[ang]);
	.loc 1 831 18
	movl	-24(%rbp), %eax	# ang, tmp196
	leaq	0(,%rax,4), %rdx	#, tmp197
	leaq	finesine(%rip), %rax	#, tmp198
	movl	(%rdx,%rax), %edx	# finesine[ang_119], _34
	movl	-16(%rbp), %eax	# thrust, tmp199
	movl	%edx, %esi	# _34,
	movl	%eax, %edi	# tmp199,
	call	FixedMul@PLT	#
# p_inter.c:831: 	target->momy += FixedMul (thrust, finesine[ang]);
	.loc 1 831 8 discriminator 1
	movq	-40(%rbp), %rdx	# target, tmp200
	movl	116(%rdx), %edx	# target_104(D)->momy, _35
# p_inter.c:831: 	target->momy += FixedMul (thrust, finesine[ang]);
	.loc 1 831 15 discriminator 1
	addl	%eax, %edx	# _124, _36
	movq	-40(%rbp), %rax	# target, tmp201
	movl	%edx, 116(%rax)	# _36, target_104(D)->momy
.L216:
# p_inter.c:835:     if (player)
	.loc 1 835 8
	cmpq	$0, -8(%rbp)	#, player
	je	.L219	#,
# p_inter.c:838: 	if (target->subsector->sector->special == 11
	.loc 1 838 12
	movq	-40(%rbp), %rax	# target, tmp202
	movq	88(%rax), %rax	# target_104(D)->subsector, _37
# p_inter.c:838: 	if (target->subsector->sector->special == 11
	.loc 1 838 23
	movq	(%rax), %rax	# _37->sector, _38
# p_inter.c:838: 	if (target->subsector->sector->special == 11
	.loc 1 838 31
	movzwl	14(%rax), %eax	# _38->special, _39
# p_inter.c:838: 	if (target->subsector->sector->special == 11
	.loc 1 838 5
	cmpw	$11, %ax	#, _39
	jne	.L220	#,
# p_inter.c:839: 	    && damage >= target->health)
	.loc 1 839 25
	movq	-40(%rbp), %rax	# target, tmp203
	movl	164(%rax), %eax	# target_104(D)->health, _40
# p_inter.c:839: 	    && damage >= target->health)
	.loc 1 839 6
	cmpl	%eax, -60(%rbp)	# _40, damage
	jl	.L220	#,
# p_inter.c:841: 	    damage = target->health - 1;
	.loc 1 841 21
	movq	-40(%rbp), %rax	# target, tmp204
	movl	164(%rax), %eax	# target_104(D)->health, _41
# p_inter.c:841: 	    damage = target->health - 1;
	.loc 1 841 13
	subl	$1, %eax	#, tmp205
	movl	%eax, -60(%rbp)	# tmp205, damage
.L220:
# p_inter.c:847: 	if ( damage < 1000
	.loc 1 847 5
	cmpl	$999, -60(%rbp)	#, damage
	jg	.L221	#,
# p_inter.c:848: 	     && ( (player->cheats&CF_GODMODE)
	.loc 1 848 19
	movq	-8(%rbp), %rax	# player, tmp206
	movl	200(%rax), %eax	# player_108->cheats, _42
# p_inter.c:848: 	     && ( (player->cheats&CF_GODMODE)
	.loc 1 848 27
	andl	$2, %eax	#, _43
# p_inter.c:848: 	     && ( (player->cheats&CF_GODMODE)
	.loc 1 848 7
	testl	%eax, %eax	# _43
	jne	.L234	#,
# p_inter.c:849: 		  || player->powers[pw_invulnerability] ) )
	.loc 1 849 22
	movq	-8(%rbp), %rax	# player, tmp207
	movl	48(%rax), %eax	# player_108->powers[0], _44
# p_inter.c:849: 		  || player->powers[pw_invulnerability] ) )
	.loc 1 849 5
	testl	%eax, %eax	# _44
	jne	.L234	#,
.L221:
# p_inter.c:854: 	if (player->armortype)
	.loc 1 854 12
	movq	-8(%rbp), %rax	# player, tmp208
	movl	44(%rax), %eax	# player_108->armortype, _45
# p_inter.c:854: 	if (player->armortype)
	.loc 1 854 5
	testl	%eax, %eax	# _45
	je	.L223	#,
# p_inter.c:856: 	    if (player->armortype == 1)
	.loc 1 856 16
	movq	-8(%rbp), %rax	# player, tmp209
	movl	44(%rax), %eax	# player_108->armortype, _46
# p_inter.c:856: 	    if (player->armortype == 1)
	.loc 1 856 9
	cmpl	$1, %eax	#, _46
	jne	.L224	#,
# p_inter.c:857: 		saved = damage/3;
	.loc 1 857 9
	movl	-60(%rbp), %eax	# damage, tmp211
	movslq	%eax, %rdx	# tmp211, tmp212
	imulq	$1431655766, %rdx, %rdx	#, tmp212, tmp213
	movq	%rdx, %rcx	# tmp213, tmp213
	shrq	$32, %rcx	#, tmp213
	cltd
	movl	%ecx, %eax	# tmp214, tmp210
	subl	%edx, %eax	# tmp215, tmp210
	movl	%eax, -20(%rbp)	# tmp210, saved
	jmp	.L225	#
.L224:
# p_inter.c:859: 		saved = damage/2;
	.loc 1 859 9
	movl	-60(%rbp), %eax	# damage, tmp217
	movl	%eax, %edx	# tmp217, tmp218
	shrl	$31, %edx	#, tmp218
	addl	%edx, %eax	# tmp218, tmp219
	sarl	%eax	# tmp220
	movl	%eax, -20(%rbp)	# tmp220, saved
.L225:
# p_inter.c:861: 	    if (player->armorpoints <= saved)
	.loc 1 861 16
	movq	-8(%rbp), %rax	# player, tmp221
	movl	40(%rax), %eax	# player_108->armorpoints, _47
# p_inter.c:861: 	    if (player->armorpoints <= saved)
	.loc 1 861 9
	cmpl	%eax, -20(%rbp)	# _47, saved
	jl	.L226	#,
# p_inter.c:864: 		saved = player->armorpoints;
	.loc 1 864 9
	movq	-8(%rbp), %rax	# player, tmp222
	movl	40(%rax), %eax	# player_108->armorpoints, tmp223
	movl	%eax, -20(%rbp)	# tmp223, saved
# p_inter.c:865: 		player->armortype = 0;
	.loc 1 865 21
	movq	-8(%rbp), %rax	# player, tmp224
	movl	$0, 44(%rax)	#, player_108->armortype
.L226:
# p_inter.c:867: 	    player->armorpoints -= saved;
	.loc 1 867 12
	movq	-8(%rbp), %rax	# player, tmp225
	movl	40(%rax), %eax	# player_108->armorpoints, _48
# p_inter.c:867: 	    player->armorpoints -= saved;
	.loc 1 867 26
	subl	-20(%rbp), %eax	# saved, _48
	movl	%eax, %edx	# _48, _49
	movq	-8(%rbp), %rax	# player, tmp226
	movl	%edx, 40(%rax)	# _49, player_108->armorpoints
# p_inter.c:868: 	    damage -= saved;
	.loc 1 868 13
	movl	-20(%rbp), %eax	# saved, tmp227
	subl	%eax, -60(%rbp)	# tmp227, damage
.L223:
# p_inter.c:870: 	player->health -= damage; 	// mirror mobj health here for Dave
	.loc 1 870 8
	movq	-8(%rbp), %rax	# player, tmp228
	movl	36(%rax), %eax	# player_108->health, _50
# p_inter.c:870: 	player->health -= damage; 	// mirror mobj health here for Dave
	.loc 1 870 17
	subl	-60(%rbp), %eax	# damage, _50
	movl	%eax, %edx	# _50, _51
	movq	-8(%rbp), %rax	# player, tmp229
	movl	%edx, 36(%rax)	# _51, player_108->health
# p_inter.c:871: 	if (player->health < 0)
	.loc 1 871 12
	movq	-8(%rbp), %rax	# player, tmp230
	movl	36(%rax), %eax	# player_108->health, _52
# p_inter.c:871: 	if (player->health < 0)
	.loc 1 871 5
	testl	%eax, %eax	# _52
	jns	.L227	#,
# p_inter.c:872: 	    player->health = 0;
	.loc 1 872 21
	movq	-8(%rbp), %rax	# player, tmp231
	movl	$0, 36(%rax)	#, player_108->health
.L227:
# p_inter.c:874: 	player->attacker = source;
	.loc 1 874 19
	movq	-8(%rbp), %rax	# player, tmp232
	movq	-56(%rbp), %rdx	# source, tmp233
	movq	%rdx, 240(%rax)	# tmp233, player_108->attacker
# p_inter.c:875: 	player->damagecount += damage;	// add damage after armor / invuln
	.loc 1 875 8
	movq	-8(%rbp), %rax	# player, tmp234
	movl	232(%rax), %edx	# player_108->damagecount, _53
# p_inter.c:875: 	player->damagecount += damage;	// add damage after armor / invuln
	.loc 1 875 22
	movl	-60(%rbp), %eax	# damage, tmp235
	addl	%eax, %edx	# tmp235, _54
	movq	-8(%rbp), %rax	# player, tmp236
	movl	%edx, 232(%rax)	# _54, player_108->damagecount
# p_inter.c:877: 	if (player->damagecount > 100)
	.loc 1 877 12
	movq	-8(%rbp), %rax	# player, tmp237
	movl	232(%rax), %eax	# player_108->damagecount, _55
# p_inter.c:877: 	if (player->damagecount > 100)
	.loc 1 877 5
	cmpl	$100, %eax	#, _55
	jle	.L228	#,
# p_inter.c:878: 	    player->damagecount = 100;	// teleport stomp does 10k points...
	.loc 1 878 26
	movq	-8(%rbp), %rax	# player, tmp238
	movl	$100, 232(%rax)	#, player_108->damagecount
.L228:
# p_inter.c:880: 	temp = damage < 100 ? damage : 100;
	.loc 1 880 7
	movl	-60(%rbp), %eax	# damage, tmp240
	movl	$100, %edx	#, tmp275
	cmpl	%edx, %eax	# tmp275, tmp240
	cmovg	%edx, %eax	# tmp240,, tmp275, tmp239
	movl	%eax, -12(%rbp)	# tmp239, temp
# p_inter.c:882: 	if (player == &players[consoleplayer])
	.loc 1 882 24
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.21_56
# p_inter.c:882: 	if (player == &players[consoleplayer])
	.loc 1 882 16
	movslq	%eax, %rdx	# consoleplayer.21_56, tmp241
	movq	%rdx, %rax	# tmp241, tmp242
	salq	$2, %rax	#, tmp242
	addq	%rdx, %rax	# tmp241, tmp242
	salq	$6, %rax	#, tmp243
	leaq	players(%rip), %rdx	#, tmp244
	addq	%rdx, %rax	# tmp244, _57
# p_inter.c:882: 	if (player == &players[consoleplayer])
	.loc 1 882 5
	cmpq	%rax, -8(%rbp)	# _57, player
	jne	.L219	#,
# p_inter.c:883: 	    I_Tactile (40,10,40+temp*2);
	.loc 1 883 25
	movl	-12(%rbp), %eax	# temp, tmp245
	addl	$20, %eax	#, _58
# p_inter.c:883: 	    I_Tactile (40,10,40+temp*2);
	.loc 1 883 6
	addl	%eax, %eax	# _59
	movl	%eax, %edx	# _59,
	movl	$10, %esi	#,
	movl	$40, %edi	#,
	call	I_Tactile@PLT	#
.L219:
# p_inter.c:887:     target->health -= damage;	
	.loc 1 887 11
	movq	-40(%rbp), %rax	# target, tmp246
	movl	164(%rax), %eax	# target_104(D)->health, _60
# p_inter.c:887:     target->health -= damage;	
	.loc 1 887 20
	subl	-60(%rbp), %eax	# damage, _60
	movl	%eax, %edx	# _60, _61
	movq	-40(%rbp), %rax	# target, tmp247
	movl	%edx, 164(%rax)	# _61, target_104(D)->health
# p_inter.c:888:     if (target->health <= 0)
	.loc 1 888 15
	movq	-40(%rbp), %rax	# target, tmp248
	movl	164(%rax), %eax	# target_104(D)->health, _62
# p_inter.c:888:     if (target->health <= 0)
	.loc 1 888 8
	testl	%eax, %eax	# _62
	jg	.L229	#,
# p_inter.c:890: 	P_KillMobj (source, target);
	.loc 1 890 2
	movq	-40(%rbp), %rdx	# target, tmp249
	movq	-56(%rbp), %rax	# source, tmp250
	movq	%rdx, %rsi	# tmp249,
	movq	%rax, %rdi	# tmp250,
	call	P_KillMobj	#
# p_inter.c:891: 	return;
	.loc 1 891 2
	jmp	.L210	#
.L229:
# p_inter.c:894:     if ( (P_Random () < target->info->painchance)
	.loc 1 894 11
	call	P_Random@PLT	#
	movl	%eax, %edx	#, _63
# p_inter.c:894:     if ( (P_Random () < target->info->painchance)
	.loc 1 894 31 discriminator 1
	movq	-40(%rbp), %rax	# target, tmp251
	movq	136(%rax), %rax	# target_104(D)->info, _64
# p_inter.c:894:     if ( (P_Random () < target->info->painchance)
	.loc 1 894 37 discriminator 1
	movl	32(%rax), %eax	# _64->painchance, _65
# p_inter.c:894:     if ( (P_Random () < target->info->painchance)
	.loc 1 894 8 discriminator 1
	cmpl	%eax, %edx	# _65, _63
	jge	.L230	#,
# p_inter.c:895: 	 && !(target->flags&MF_SKULLFLY) )
	.loc 1 895 14
	movq	-40(%rbp), %rax	# target, tmp252
	movl	160(%rax), %eax	# target_104(D)->flags, _66
# p_inter.c:895: 	 && !(target->flags&MF_SKULLFLY) )
	.loc 1 895 21
	andl	$16777216, %eax	#, _67
# p_inter.c:895: 	 && !(target->flags&MF_SKULLFLY) )
	.loc 1 895 3
	testl	%eax, %eax	# _67
	jne	.L230	#,
# p_inter.c:897: 	target->flags |= MF_JUSTHIT;	// fight back!
	.loc 1 897 8
	movq	-40(%rbp), %rax	# target, tmp253
	movl	160(%rax), %eax	# target_104(D)->flags, _68
# p_inter.c:897: 	target->flags |= MF_JUSTHIT;	// fight back!
	.loc 1 897 16
	orl	$64, %eax	#, _68
	movl	%eax, %edx	# _68, _69
	movq	-40(%rbp), %rax	# target, tmp254
	movl	%edx, 160(%rax)	# _69, target_104(D)->flags
# p_inter.c:899: 	P_SetMobjState (target, target->info->painstate);
	.loc 1 899 32
	movq	-40(%rbp), %rax	# target, tmp255
	movq	136(%rax), %rax	# target_104(D)->info, _70
# p_inter.c:899: 	P_SetMobjState (target, target->info->painstate);
	.loc 1 899 38
	movl	28(%rax), %eax	# _70->painstate, _71
# p_inter.c:899: 	P_SetMobjState (target, target->info->painstate);
	.loc 1 899 2
	movl	%eax, %edx	# _71, _72
	movq	-40(%rbp), %rax	# target, tmp256
	movl	%edx, %esi	# _72,
	movq	%rax, %rdi	# tmp256,
	call	P_SetMobjState@PLT	#
.L230:
# p_inter.c:902:     target->reactiontime = 0;		// we're awake now...	
	.loc 1 902 26
	movq	-40(%rbp), %rax	# target, tmp257
	movl	$0, 184(%rax)	#, target_104(D)->reactiontime
# p_inter.c:904:     if ( (!target->threshold || target->type == MT_VILE)
	.loc 1 904 18
	movq	-40(%rbp), %rax	# target, tmp258
	movl	188(%rax), %eax	# target_104(D)->threshold, _73
# p_inter.c:904:     if ( (!target->threshold || target->type == MT_VILE)
	.loc 1 904 8
	testl	%eax, %eax	# _73
	je	.L231	#,
# p_inter.c:904:     if ( (!target->threshold || target->type == MT_VILE)
	.loc 1 904 39 discriminator 1
	movq	-40(%rbp), %rax	# target, tmp259
	movl	128(%rax), %eax	# target_104(D)->type, _74
# p_inter.c:904:     if ( (!target->threshold || target->type == MT_VILE)
	.loc 1 904 30 discriminator 1
	cmpl	$3, %eax	#, _74
	jne	.L210	#,
.L231:
# p_inter.c:905: 	 && source && source != target
	.loc 1 905 3
	cmpq	$0, -56(%rbp)	#, source
	je	.L210	#,
# p_inter.c:905: 	 && source && source != target
	.loc 1 905 13 discriminator 1
	movq	-56(%rbp), %rax	# source, tmp260
	cmpq	-40(%rbp), %rax	# target, tmp260
	je	.L210	#,
# p_inter.c:906: 	 && source->type != MT_VILE)
	.loc 1 906 12
	movq	-56(%rbp), %rax	# source, tmp261
	movl	128(%rax), %eax	# source_112(D)->type, _75
# p_inter.c:906: 	 && source->type != MT_VILE)
	.loc 1 906 3
	cmpl	$3, %eax	#, _75
	je	.L210	#,
# p_inter.c:910: 	target->target = source;
	.loc 1 910 17
	movq	-40(%rbp), %rax	# target, tmp262
	movq	-56(%rbp), %rdx	# source, tmp263
	movq	%rdx, 176(%rax)	# tmp263, target_104(D)->target
# p_inter.c:911: 	target->threshold = BASETHRESHOLD;
	.loc 1 911 20
	movq	-40(%rbp), %rax	# target, tmp264
	movl	$100, 188(%rax)	#, target_104(D)->threshold
# p_inter.c:912: 	if (target->state == &states[target->info->spawnstate]
	.loc 1 912 12
	movq	-40(%rbp), %rax	# target, tmp265
	movq	152(%rax), %rcx	# target_104(D)->state, _76
# p_inter.c:912: 	if (target->state == &states[target->info->spawnstate]
	.loc 1 912 37
	movq	-40(%rbp), %rax	# target, tmp266
	movq	136(%rax), %rax	# target_104(D)->info, _77
# p_inter.c:912: 	if (target->state == &states[target->info->spawnstate]
	.loc 1 912 43
	movl	4(%rax), %eax	# _77->spawnstate, _78
# p_inter.c:912: 	if (target->state == &states[target->info->spawnstate]
	.loc 1 912 23
	movslq	%eax, %rdx	# _78, tmp267
	movq	%rdx, %rax	# tmp267, tmp268
	salq	$3, %rax	#, tmp269
	subq	%rdx, %rax	# tmp267, tmp268
	salq	$3, %rax	#, tmp270
	leaq	states(%rip), %rdx	#, tmp271
	addq	%rdx, %rax	# tmp271, _79
# p_inter.c:912: 	if (target->state == &states[target->info->spawnstate]
	.loc 1 912 5
	cmpq	%rax, %rcx	# _79, _76
	jne	.L210	#,
# p_inter.c:913: 	    && target->info->seestate != S_NULL)
	.loc 1 913 15
	movq	-40(%rbp), %rax	# target, tmp272
	movq	136(%rax), %rax	# target_104(D)->info, _80
# p_inter.c:913: 	    && target->info->seestate != S_NULL)
	.loc 1 913 21
	movl	12(%rax), %eax	# _80->seestate, _81
# p_inter.c:913: 	    && target->info->seestate != S_NULL)
	.loc 1 913 6
	testl	%eax, %eax	# _81
	je	.L210	#,
# p_inter.c:914: 	    P_SetMobjState (target, target->info->seestate);
	.loc 1 914 36
	movq	-40(%rbp), %rax	# target, tmp273
	movq	136(%rax), %rax	# target_104(D)->info, _82
# p_inter.c:914: 	    P_SetMobjState (target, target->info->seestate);
	.loc 1 914 42
	movl	12(%rax), %eax	# _82->seestate, _83
# p_inter.c:914: 	    P_SetMobjState (target, target->info->seestate);
	.loc 1 914 6
	movl	%eax, %edx	# _83, _84
	movq	-40(%rbp), %rax	# target, tmp274
	movl	%edx, %esi	# _84,
	movq	%rax, %rdi	# tmp274,
	call	P_SetMobjState@PLT	#
	jmp	.L210	#
.L232:
# p_inter.c:788: 	return;	// shouldn't happen...
	.loc 1 788 2
	nop	
	jmp	.L210	#
.L233:
# p_inter.c:791: 	return;
	.loc 1 791 2
	nop	
	jmp	.L210	#
.L234:
# p_inter.c:851: 	    return;
	.loc 1 851 6
	nop	
.L210:
# p_inter.c:917: }
	.loc 1 917 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	P_DamageMobj, .-P_DamageMobj
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "sounds.h"
	.file 4 "doomtype.h"
	.file 5 "doomdata.h"
	.file 6 "d_items.h"
	.file 7 "m_fixed.h"
	.file 8 "tables.h"
	.file 9 "d_think.h"
	.file 10 "info.h"
	.file 11 "p_pspr.h"
	.file 12 "p_mobj.h"
	.file 13 "r_defs.h"
	.file 14 "d_player.h"
	.file 15 "d_ticcmd.h"
	.file 16 "doomstat.h"
	.file 17 "p_local.h"
	.file 18 "r_main.h"
	.file 19 "i_system.h"
	.file 20 "s_sound.h"
	.file 21 "m_random.h"
	.file 22 "am_map.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x36f7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x25
	.long	.LASF1664
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	0x51
	.long	0x3e
	.uleb128 0xe
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.long	0x2e
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1b
	.long	0x4a
	.uleb128 0x15
	.long	.LASF1639
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x26
	.byte	0x8
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x27
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x9
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
	.long	.LASF20
	.byte	0x2
	.byte	0x2f
	.byte	0x3
	.long	0xa3
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.long	0x105
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
	.byte	0
	.uleb128 0x5
	.long	.LASF21
	.byte	0x2
	.byte	0x9a
	.byte	0x3
	.long	0xda
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0x148
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
	.byte	0
	.uleb128 0x5
	.long	.LASF29
	.byte	0x2
	.byte	0xad
	.byte	0x3
	.long	0x111
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x1a3
	.uleb128 0x2
	.long	.LASF30
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x1
	.uleb128 0x2
	.long	.LASF32
	.byte	0x2
	.uleb128 0x2
	.long	.LASF33
	.byte	0x3
	.uleb128 0x2
	.long	.LASF34
	.byte	0x4
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5
	.uleb128 0x2
	.long	.LASF36
	.byte	0x6
	.uleb128 0x2
	.long	.LASF37
	.byte	0x7
	.uleb128 0x2
	.long	.LASF38
	.byte	0x8
	.uleb128 0x2
	.long	.LASF39
	.byte	0x9
	.uleb128 0x2
	.long	.LASF40
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF41
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0x154
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xca
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
	.byte	0
	.uleb128 0x5
	.long	.LASF48
	.byte	0x2
	.byte	0xd2
	.byte	0x3
	.long	0x1af
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x223
	.uleb128 0x2
	.long	.LASF49
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x1
	.uleb128 0x2
	.long	.LASF51
	.byte	0x2
	.uleb128 0x2
	.long	.LASF52
	.byte	0x3
	.uleb128 0x2
	.long	.LASF53
	.byte	0x4
	.uleb128 0x2
	.long	.LASF54
	.byte	0x5
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.long	0x6b
	.byte	0x2
	.byte	0xea
	.byte	0x1
	.long	0x24c
	.uleb128 0x1
	.long	.LASF56
	.value	0x41a
	.uleb128 0x1
	.long	.LASF57
	.value	0x834
	.uleb128 0x1
	.long	.LASF58
	.value	0x1068
	.uleb128 0x1
	.long	.LASF59
	.value	0x834
	.byte	0
	.uleb128 0x9
	.long	0x6b
	.byte	0x3
	.byte	0xb2
	.byte	0x1
	.long	0x4ed
	.uleb128 0x2
	.long	.LASF60
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x1
	.uleb128 0x2
	.long	.LASF62
	.byte	0x2
	.uleb128 0x2
	.long	.LASF63
	.byte	0x3
	.uleb128 0x2
	.long	.LASF64
	.byte	0x4
	.uleb128 0x2
	.long	.LASF65
	.byte	0x5
	.uleb128 0x2
	.long	.LASF66
	.byte	0x6
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.uleb128 0x2
	.long	.LASF69
	.byte	0x9
	.uleb128 0x2
	.long	.LASF70
	.byte	0xa
	.uleb128 0x2
	.long	.LASF71
	.byte	0xb
	.uleb128 0x2
	.long	.LASF72
	.byte	0xc
	.uleb128 0x2
	.long	.LASF73
	.byte	0xd
	.uleb128 0x2
	.long	.LASF74
	.byte	0xe
	.uleb128 0x2
	.long	.LASF75
	.byte	0xf
	.uleb128 0x2
	.long	.LASF76
	.byte	0x10
	.uleb128 0x2
	.long	.LASF77
	.byte	0x11
	.uleb128 0x2
	.long	.LASF78
	.byte	0x12
	.uleb128 0x2
	.long	.LASF79
	.byte	0x13
	.uleb128 0x2
	.long	.LASF80
	.byte	0x14
	.uleb128 0x2
	.long	.LASF81
	.byte	0x15
	.uleb128 0x2
	.long	.LASF82
	.byte	0x16
	.uleb128 0x2
	.long	.LASF83
	.byte	0x17
	.uleb128 0x2
	.long	.LASF84
	.byte	0x18
	.uleb128 0x2
	.long	.LASF85
	.byte	0x19
	.uleb128 0x2
	.long	.LASF86
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF87
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF88
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF89
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF90
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF91
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF92
	.byte	0x20
	.uleb128 0x2
	.long	.LASF93
	.byte	0x21
	.uleb128 0x2
	.long	.LASF94
	.byte	0x22
	.uleb128 0x2
	.long	.LASF95
	.byte	0x23
	.uleb128 0x2
	.long	.LASF96
	.byte	0x24
	.uleb128 0x2
	.long	.LASF97
	.byte	0x25
	.uleb128 0x2
	.long	.LASF98
	.byte	0x26
	.uleb128 0x2
	.long	.LASF99
	.byte	0x27
	.uleb128 0x2
	.long	.LASF100
	.byte	0x28
	.uleb128 0x2
	.long	.LASF101
	.byte	0x29
	.uleb128 0x2
	.long	.LASF102
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF103
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF104
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF105
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF106
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF107
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF108
	.byte	0x30
	.uleb128 0x2
	.long	.LASF109
	.byte	0x31
	.uleb128 0x2
	.long	.LASF110
	.byte	0x32
	.uleb128 0x2
	.long	.LASF111
	.byte	0x33
	.uleb128 0x2
	.long	.LASF112
	.byte	0x34
	.uleb128 0x2
	.long	.LASF113
	.byte	0x35
	.uleb128 0x2
	.long	.LASF114
	.byte	0x36
	.uleb128 0x2
	.long	.LASF115
	.byte	0x37
	.uleb128 0x2
	.long	.LASF116
	.byte	0x38
	.uleb128 0x2
	.long	.LASF117
	.byte	0x39
	.uleb128 0x2
	.long	.LASF118
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF119
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF120
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF121
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF122
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF123
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF124
	.byte	0x40
	.uleb128 0x2
	.long	.LASF125
	.byte	0x41
	.uleb128 0x2
	.long	.LASF126
	.byte	0x42
	.uleb128 0x2
	.long	.LASF127
	.byte	0x43
	.uleb128 0x2
	.long	.LASF128
	.byte	0x44
	.uleb128 0x2
	.long	.LASF129
	.byte	0x45
	.uleb128 0x2
	.long	.LASF130
	.byte	0x46
	.uleb128 0x2
	.long	.LASF131
	.byte	0x47
	.uleb128 0x2
	.long	.LASF132
	.byte	0x48
	.uleb128 0x2
	.long	.LASF133
	.byte	0x49
	.uleb128 0x2
	.long	.LASF134
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF135
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF136
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF137
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF138
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF139
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF140
	.byte	0x50
	.uleb128 0x2
	.long	.LASF141
	.byte	0x51
	.uleb128 0x2
	.long	.LASF142
	.byte	0x52
	.uleb128 0x2
	.long	.LASF143
	.byte	0x53
	.uleb128 0x2
	.long	.LASF144
	.byte	0x54
	.uleb128 0x2
	.long	.LASF145
	.byte	0x55
	.uleb128 0x2
	.long	.LASF146
	.byte	0x56
	.uleb128 0x2
	.long	.LASF147
	.byte	0x57
	.uleb128 0x2
	.long	.LASF148
	.byte	0x58
	.uleb128 0x2
	.long	.LASF149
	.byte	0x59
	.uleb128 0x2
	.long	.LASF150
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF151
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF152
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF153
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF154
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF155
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF156
	.byte	0x60
	.uleb128 0x2
	.long	.LASF157
	.byte	0x61
	.uleb128 0x2
	.long	.LASF158
	.byte	0x62
	.uleb128 0x2
	.long	.LASF159
	.byte	0x63
	.uleb128 0x2
	.long	.LASF160
	.byte	0x64
	.uleb128 0x2
	.long	.LASF161
	.byte	0x65
	.uleb128 0x2
	.long	.LASF162
	.byte	0x66
	.uleb128 0x2
	.long	.LASF163
	.byte	0x67
	.uleb128 0x2
	.long	.LASF164
	.byte	0x68
	.uleb128 0x2
	.long	.LASF165
	.byte	0x69
	.uleb128 0x2
	.long	.LASF166
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF167
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF168
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF169
	.byte	0x6d
	.byte	0
	.uleb128 0x9
	.long	0x6b
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.long	0x506
	.uleb128 0x2
	.long	.LASF170
	.byte	0
	.uleb128 0x2
	.long	.LASF171
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF172
	.byte	0x4
	.byte	0x22
	.byte	0x1c
	.long	0x4ed
	.uleb128 0x5
	.long	.LASF173
	.byte	0x4
	.byte	0x24
	.byte	0x17
	.long	0x74
	.uleb128 0xa
	.long	0x89
	.long	0x52e
	.uleb128 0xe
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0xa
	.byte	0x5
	.byte	0xcb
	.long	0x574
	.uleb128 0x7
	.string	"x"
	.byte	0x5
	.byte	0xcd
	.byte	0xc
	.long	0x89
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0xce
	.byte	0xc
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF174
	.byte	0x5
	.byte	0xcf
	.byte	0xc
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF175
	.byte	0x5
	.byte	0xd0
	.byte	0xc
	.long	0x89
	.byte	0x6
	.uleb128 0x3
	.long	.LASF176
	.byte	0x5
	.byte	0xd1
	.byte	0xc
	.long	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF177
	.byte	0x5
	.byte	0xd2
	.byte	0x3
	.long	0x52e
	.uleb128 0x12
	.byte	0x18
	.byte	0x6
	.byte	0x22
	.long	0x5d7
	.uleb128 0x3
	.long	.LASF178
	.byte	0x6
	.byte	0x24
	.byte	0x10
	.long	0x1e0
	.byte	0
	.uleb128 0x3
	.long	.LASF179
	.byte	0x6
	.byte	0x25
	.byte	0xa
	.long	0x90
	.byte	0x4
	.uleb128 0x3
	.long	.LASF180
	.byte	0x6
	.byte	0x26
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x3
	.long	.LASF181
	.byte	0x6
	.byte	0x27
	.byte	0xa
	.long	0x90
	.byte	0xc
	.uleb128 0x3
	.long	.LASF182
	.byte	0x6
	.byte	0x28
	.byte	0xa
	.long	0x90
	.byte	0x10
	.uleb128 0x3
	.long	.LASF183
	.byte	0x6
	.byte	0x29
	.byte	0xa
	.long	0x90
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF184
	.byte	0x6
	.byte	0x2b
	.byte	0x3
	.long	0x580
	.uleb128 0xa
	.long	0x5d7
	.long	0x5f3
	.uleb128 0xe
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF188
	.byte	0x6
	.byte	0x2d
	.byte	0x19
	.long	0x5e3
	.uleb128 0x5
	.long	.LASF185
	.byte	0x7
	.byte	0x26
	.byte	0xd
	.long	0x90
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.long	.LASF186
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.long	.LASF187
	.uleb128 0xa
	.long	0x5ff
	.long	0x62a
	.uleb128 0x1c
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0xc
	.long	.LASF189
	.byte	0x8
	.byte	0x3a
	.byte	0x12
	.long	0x619
	.uleb128 0xc
	.long	.LASF190
	.byte	0x8
	.byte	0x3d
	.byte	0x12
	.long	0x642
	.uleb128 0x8
	.long	0x5ff
	.uleb128 0x5
	.long	.LASF191
	.byte	0x8
	.byte	0x4e
	.byte	0x12
	.long	0x6b
	.uleb128 0x5
	.long	.LASF192
	.byte	0x9
	.byte	0x29
	.byte	0x11
	.long	0x65f
	.uleb128 0x8
	.long	0x664
	.uleb128 0x28
	.long	0x66b
	.uleb128 0x1d
	.byte	0
	.uleb128 0x5
	.long	.LASF193
	.byte	0x9
	.byte	0x2a
	.byte	0x11
	.long	0x677
	.uleb128 0x8
	.long	0x67c
	.uleb128 0x1e
	.long	0x687
	.uleb128 0x6
	.long	0x72
	.byte	0
	.uleb128 0x5
	.long	.LASF194
	.byte	0x9
	.byte	0x2b
	.byte	0x11
	.long	0x693
	.uleb128 0x8
	.long	0x698
	.uleb128 0x1e
	.long	0x6a8
	.uleb128 0x6
	.long	0x72
	.uleb128 0x6
	.long	0x72
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.byte	0x9
	.byte	0x2d
	.byte	0x9
	.long	0x6d2
	.uleb128 0x1f
	.long	.LASF195
	.byte	0x2f
	.long	0x66b
	.uleb128 0x2a
	.string	"acv"
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x653
	.uleb128 0x1f
	.long	.LASF196
	.byte	0x31
	.long	0x687
	.byte	0
	.uleb128 0x5
	.long	.LASF197
	.byte	0x9
	.byte	0x33
	.byte	0x3
	.long	0x6a8
	.uleb128 0x5
	.long	.LASF198
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.long	0x6d2
	.uleb128 0x16
	.long	.LASF1517
	.byte	0x18
	.byte	0x9
	.byte	0x40
	.long	0x71e
	.uleb128 0x3
	.long	.LASF199
	.byte	0x9
	.byte	0x42
	.byte	0x17
	.long	0x71e
	.byte	0
	.uleb128 0x3
	.long	.LASF200
	.byte	0x9
	.byte	0x43
	.byte	0x17
	.long	0x71e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF201
	.byte	0x9
	.byte	0x44
	.byte	0xe
	.long	0x6de
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x6ea
	.uleb128 0x5
	.long	.LASF202
	.byte	0x9
	.byte	0x46
	.byte	0x3
	.long	0x6ea
	.uleb128 0x9
	.long	0x6b
	.byte	0xa
	.byte	0x1f
	.byte	0x1
	.long	0xa7e
	.uleb128 0x2
	.long	.LASF203
	.byte	0
	.uleb128 0x2
	.long	.LASF204
	.byte	0x1
	.uleb128 0x2
	.long	.LASF205
	.byte	0x2
	.uleb128 0x2
	.long	.LASF206
	.byte	0x3
	.uleb128 0x2
	.long	.LASF207
	.byte	0x4
	.uleb128 0x2
	.long	.LASF208
	.byte	0x5
	.uleb128 0x2
	.long	.LASF209
	.byte	0x6
	.uleb128 0x2
	.long	.LASF210
	.byte	0x7
	.uleb128 0x2
	.long	.LASF211
	.byte	0x8
	.uleb128 0x2
	.long	.LASF212
	.byte	0x9
	.uleb128 0x2
	.long	.LASF213
	.byte	0xa
	.uleb128 0x2
	.long	.LASF214
	.byte	0xb
	.uleb128 0x2
	.long	.LASF215
	.byte	0xc
	.uleb128 0x2
	.long	.LASF216
	.byte	0xd
	.uleb128 0x2
	.long	.LASF217
	.byte	0xe
	.uleb128 0x2
	.long	.LASF218
	.byte	0xf
	.uleb128 0x2
	.long	.LASF219
	.byte	0x10
	.uleb128 0x2
	.long	.LASF220
	.byte	0x11
	.uleb128 0x2
	.long	.LASF221
	.byte	0x12
	.uleb128 0x2
	.long	.LASF222
	.byte	0x13
	.uleb128 0x2
	.long	.LASF223
	.byte	0x14
	.uleb128 0x2
	.long	.LASF224
	.byte	0x15
	.uleb128 0x2
	.long	.LASF225
	.byte	0x16
	.uleb128 0x2
	.long	.LASF226
	.byte	0x17
	.uleb128 0x2
	.long	.LASF227
	.byte	0x18
	.uleb128 0x2
	.long	.LASF228
	.byte	0x19
	.uleb128 0x2
	.long	.LASF229
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF230
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF231
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF232
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF233
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF234
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF235
	.byte	0x20
	.uleb128 0x2
	.long	.LASF236
	.byte	0x21
	.uleb128 0x2
	.long	.LASF237
	.byte	0x22
	.uleb128 0x2
	.long	.LASF238
	.byte	0x23
	.uleb128 0x2
	.long	.LASF239
	.byte	0x24
	.uleb128 0x2
	.long	.LASF240
	.byte	0x25
	.uleb128 0x2
	.long	.LASF241
	.byte	0x26
	.uleb128 0x2
	.long	.LASF242
	.byte	0x27
	.uleb128 0x2
	.long	.LASF243
	.byte	0x28
	.uleb128 0x2
	.long	.LASF244
	.byte	0x29
	.uleb128 0x2
	.long	.LASF245
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF246
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF247
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF248
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF249
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF250
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF251
	.byte	0x30
	.uleb128 0x2
	.long	.LASF252
	.byte	0x31
	.uleb128 0x2
	.long	.LASF253
	.byte	0x32
	.uleb128 0x2
	.long	.LASF254
	.byte	0x33
	.uleb128 0x2
	.long	.LASF255
	.byte	0x34
	.uleb128 0x2
	.long	.LASF256
	.byte	0x35
	.uleb128 0x2
	.long	.LASF257
	.byte	0x36
	.uleb128 0x2
	.long	.LASF258
	.byte	0x37
	.uleb128 0x2
	.long	.LASF259
	.byte	0x38
	.uleb128 0x2
	.long	.LASF260
	.byte	0x39
	.uleb128 0x2
	.long	.LASF261
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF262
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF263
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF264
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF265
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF266
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF267
	.byte	0x40
	.uleb128 0x2
	.long	.LASF268
	.byte	0x41
	.uleb128 0x2
	.long	.LASF269
	.byte	0x42
	.uleb128 0x2
	.long	.LASF270
	.byte	0x43
	.uleb128 0x2
	.long	.LASF271
	.byte	0x44
	.uleb128 0x2
	.long	.LASF272
	.byte	0x45
	.uleb128 0x2
	.long	.LASF273
	.byte	0x46
	.uleb128 0x2
	.long	.LASF274
	.byte	0x47
	.uleb128 0x2
	.long	.LASF275
	.byte	0x48
	.uleb128 0x2
	.long	.LASF276
	.byte	0x49
	.uleb128 0x2
	.long	.LASF277
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF278
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF279
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF280
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF281
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF282
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF283
	.byte	0x50
	.uleb128 0x2
	.long	.LASF284
	.byte	0x51
	.uleb128 0x2
	.long	.LASF285
	.byte	0x52
	.uleb128 0x2
	.long	.LASF286
	.byte	0x53
	.uleb128 0x2
	.long	.LASF287
	.byte	0x54
	.uleb128 0x2
	.long	.LASF288
	.byte	0x55
	.uleb128 0x2
	.long	.LASF289
	.byte	0x56
	.uleb128 0x2
	.long	.LASF290
	.byte	0x57
	.uleb128 0x2
	.long	.LASF291
	.byte	0x58
	.uleb128 0x2
	.long	.LASF292
	.byte	0x59
	.uleb128 0x2
	.long	.LASF293
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF294
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF295
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF296
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF297
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF298
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF299
	.byte	0x60
	.uleb128 0x2
	.long	.LASF300
	.byte	0x61
	.uleb128 0x2
	.long	.LASF301
	.byte	0x62
	.uleb128 0x2
	.long	.LASF302
	.byte	0x63
	.uleb128 0x2
	.long	.LASF303
	.byte	0x64
	.uleb128 0x2
	.long	.LASF304
	.byte	0x65
	.uleb128 0x2
	.long	.LASF305
	.byte	0x66
	.uleb128 0x2
	.long	.LASF306
	.byte	0x67
	.uleb128 0x2
	.long	.LASF307
	.byte	0x68
	.uleb128 0x2
	.long	.LASF308
	.byte	0x69
	.uleb128 0x2
	.long	.LASF309
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF310
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF311
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF312
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF313
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF314
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF315
	.byte	0x70
	.uleb128 0x2
	.long	.LASF316
	.byte	0x71
	.uleb128 0x2
	.long	.LASF317
	.byte	0x72
	.uleb128 0x2
	.long	.LASF318
	.byte	0x73
	.uleb128 0x2
	.long	.LASF319
	.byte	0x74
	.uleb128 0x2
	.long	.LASF320
	.byte	0x75
	.uleb128 0x2
	.long	.LASF321
	.byte	0x76
	.uleb128 0x2
	.long	.LASF322
	.byte	0x77
	.uleb128 0x2
	.long	.LASF323
	.byte	0x78
	.uleb128 0x2
	.long	.LASF324
	.byte	0x79
	.uleb128 0x2
	.long	.LASF325
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF326
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF327
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF328
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF329
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF330
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF331
	.byte	0x80
	.uleb128 0x2
	.long	.LASF332
	.byte	0x81
	.uleb128 0x2
	.long	.LASF333
	.byte	0x82
	.uleb128 0x2
	.long	.LASF334
	.byte	0x83
	.uleb128 0x2
	.long	.LASF335
	.byte	0x84
	.uleb128 0x2
	.long	.LASF336
	.byte	0x85
	.uleb128 0x2
	.long	.LASF337
	.byte	0x86
	.uleb128 0x2
	.long	.LASF338
	.byte	0x87
	.uleb128 0x2
	.long	.LASF339
	.byte	0x88
	.uleb128 0x2
	.long	.LASF340
	.byte	0x89
	.uleb128 0x2
	.long	.LASF341
	.byte	0x8a
	.byte	0
	.uleb128 0x5
	.long	.LASF342
	.byte	0xa
	.byte	0xac
	.byte	0x3
	.long	0x72f
	.uleb128 0x9
	.long	0x6b
	.byte	0xa
	.byte	0xaf
	.byte	0x1
	.long	0x240f
	.uleb128 0x2
	.long	.LASF343
	.byte	0
	.uleb128 0x2
	.long	.LASF344
	.byte	0x1
	.uleb128 0x2
	.long	.LASF345
	.byte	0x2
	.uleb128 0x2
	.long	.LASF346
	.byte	0x3
	.uleb128 0x2
	.long	.LASF347
	.byte	0x4
	.uleb128 0x2
	.long	.LASF348
	.byte	0x5
	.uleb128 0x2
	.long	.LASF349
	.byte	0x6
	.uleb128 0x2
	.long	.LASF350
	.byte	0x7
	.uleb128 0x2
	.long	.LASF351
	.byte	0x8
	.uleb128 0x2
	.long	.LASF352
	.byte	0x9
	.uleb128 0x2
	.long	.LASF353
	.byte	0xa
	.uleb128 0x2
	.long	.LASF354
	.byte	0xb
	.uleb128 0x2
	.long	.LASF355
	.byte	0xc
	.uleb128 0x2
	.long	.LASF356
	.byte	0xd
	.uleb128 0x2
	.long	.LASF357
	.byte	0xe
	.uleb128 0x2
	.long	.LASF358
	.byte	0xf
	.uleb128 0x2
	.long	.LASF359
	.byte	0x10
	.uleb128 0x2
	.long	.LASF360
	.byte	0x11
	.uleb128 0x2
	.long	.LASF361
	.byte	0x12
	.uleb128 0x2
	.long	.LASF362
	.byte	0x13
	.uleb128 0x2
	.long	.LASF363
	.byte	0x14
	.uleb128 0x2
	.long	.LASF364
	.byte	0x15
	.uleb128 0x2
	.long	.LASF365
	.byte	0x16
	.uleb128 0x2
	.long	.LASF366
	.byte	0x17
	.uleb128 0x2
	.long	.LASF367
	.byte	0x18
	.uleb128 0x2
	.long	.LASF368
	.byte	0x19
	.uleb128 0x2
	.long	.LASF369
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF370
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF371
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF372
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF373
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF374
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF375
	.byte	0x20
	.uleb128 0x2
	.long	.LASF376
	.byte	0x21
	.uleb128 0x2
	.long	.LASF377
	.byte	0x22
	.uleb128 0x2
	.long	.LASF378
	.byte	0x23
	.uleb128 0x2
	.long	.LASF379
	.byte	0x24
	.uleb128 0x2
	.long	.LASF380
	.byte	0x25
	.uleb128 0x2
	.long	.LASF381
	.byte	0x26
	.uleb128 0x2
	.long	.LASF382
	.byte	0x27
	.uleb128 0x2
	.long	.LASF383
	.byte	0x28
	.uleb128 0x2
	.long	.LASF384
	.byte	0x29
	.uleb128 0x2
	.long	.LASF385
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF386
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF387
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF388
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF389
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF390
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF391
	.byte	0x30
	.uleb128 0x2
	.long	.LASF392
	.byte	0x31
	.uleb128 0x2
	.long	.LASF393
	.byte	0x32
	.uleb128 0x2
	.long	.LASF394
	.byte	0x33
	.uleb128 0x2
	.long	.LASF395
	.byte	0x34
	.uleb128 0x2
	.long	.LASF396
	.byte	0x35
	.uleb128 0x2
	.long	.LASF397
	.byte	0x36
	.uleb128 0x2
	.long	.LASF398
	.byte	0x37
	.uleb128 0x2
	.long	.LASF399
	.byte	0x38
	.uleb128 0x2
	.long	.LASF400
	.byte	0x39
	.uleb128 0x2
	.long	.LASF401
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF402
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF403
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF404
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF405
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF406
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF407
	.byte	0x40
	.uleb128 0x2
	.long	.LASF408
	.byte	0x41
	.uleb128 0x2
	.long	.LASF409
	.byte	0x42
	.uleb128 0x2
	.long	.LASF410
	.byte	0x43
	.uleb128 0x2
	.long	.LASF411
	.byte	0x44
	.uleb128 0x2
	.long	.LASF412
	.byte	0x45
	.uleb128 0x2
	.long	.LASF413
	.byte	0x46
	.uleb128 0x2
	.long	.LASF414
	.byte	0x47
	.uleb128 0x2
	.long	.LASF415
	.byte	0x48
	.uleb128 0x2
	.long	.LASF416
	.byte	0x49
	.uleb128 0x2
	.long	.LASF417
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF418
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF419
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF420
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF421
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF422
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF423
	.byte	0x50
	.uleb128 0x2
	.long	.LASF424
	.byte	0x51
	.uleb128 0x2
	.long	.LASF425
	.byte	0x52
	.uleb128 0x2
	.long	.LASF426
	.byte	0x53
	.uleb128 0x2
	.long	.LASF427
	.byte	0x54
	.uleb128 0x2
	.long	.LASF428
	.byte	0x55
	.uleb128 0x2
	.long	.LASF429
	.byte	0x56
	.uleb128 0x2
	.long	.LASF430
	.byte	0x57
	.uleb128 0x2
	.long	.LASF431
	.byte	0x58
	.uleb128 0x2
	.long	.LASF432
	.byte	0x59
	.uleb128 0x2
	.long	.LASF433
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF434
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF435
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF436
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF437
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF438
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF439
	.byte	0x60
	.uleb128 0x2
	.long	.LASF440
	.byte	0x61
	.uleb128 0x2
	.long	.LASF441
	.byte	0x62
	.uleb128 0x2
	.long	.LASF442
	.byte	0x63
	.uleb128 0x2
	.long	.LASF443
	.byte	0x64
	.uleb128 0x2
	.long	.LASF444
	.byte	0x65
	.uleb128 0x2
	.long	.LASF445
	.byte	0x66
	.uleb128 0x2
	.long	.LASF446
	.byte	0x67
	.uleb128 0x2
	.long	.LASF447
	.byte	0x68
	.uleb128 0x2
	.long	.LASF448
	.byte	0x69
	.uleb128 0x2
	.long	.LASF449
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF450
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF451
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF452
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF453
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF454
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF455
	.byte	0x70
	.uleb128 0x2
	.long	.LASF456
	.byte	0x71
	.uleb128 0x2
	.long	.LASF457
	.byte	0x72
	.uleb128 0x2
	.long	.LASF458
	.byte	0x73
	.uleb128 0x2
	.long	.LASF459
	.byte	0x74
	.uleb128 0x2
	.long	.LASF460
	.byte	0x75
	.uleb128 0x2
	.long	.LASF461
	.byte	0x76
	.uleb128 0x2
	.long	.LASF462
	.byte	0x77
	.uleb128 0x2
	.long	.LASF463
	.byte	0x78
	.uleb128 0x2
	.long	.LASF464
	.byte	0x79
	.uleb128 0x2
	.long	.LASF465
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF466
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF467
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF468
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF469
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF470
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF471
	.byte	0x80
	.uleb128 0x2
	.long	.LASF472
	.byte	0x81
	.uleb128 0x2
	.long	.LASF473
	.byte	0x82
	.uleb128 0x2
	.long	.LASF474
	.byte	0x83
	.uleb128 0x2
	.long	.LASF475
	.byte	0x84
	.uleb128 0x2
	.long	.LASF476
	.byte	0x85
	.uleb128 0x2
	.long	.LASF477
	.byte	0x86
	.uleb128 0x2
	.long	.LASF478
	.byte	0x87
	.uleb128 0x2
	.long	.LASF479
	.byte	0x88
	.uleb128 0x2
	.long	.LASF480
	.byte	0x89
	.uleb128 0x2
	.long	.LASF481
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF482
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF483
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF484
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF485
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF486
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF487
	.byte	0x90
	.uleb128 0x2
	.long	.LASF488
	.byte	0x91
	.uleb128 0x2
	.long	.LASF489
	.byte	0x92
	.uleb128 0x2
	.long	.LASF490
	.byte	0x93
	.uleb128 0x2
	.long	.LASF491
	.byte	0x94
	.uleb128 0x2
	.long	.LASF492
	.byte	0x95
	.uleb128 0x2
	.long	.LASF493
	.byte	0x96
	.uleb128 0x2
	.long	.LASF494
	.byte	0x97
	.uleb128 0x2
	.long	.LASF495
	.byte	0x98
	.uleb128 0x2
	.long	.LASF496
	.byte	0x99
	.uleb128 0x2
	.long	.LASF497
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF498
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF499
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF500
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF501
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF502
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF503
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF504
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF505
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF506
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF507
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF508
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF509
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF510
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF511
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF512
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF513
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF514
	.byte	0xab
	.uleb128 0x2
	.long	.LASF515
	.byte	0xac
	.uleb128 0x2
	.long	.LASF516
	.byte	0xad
	.uleb128 0x2
	.long	.LASF517
	.byte	0xae
	.uleb128 0x2
	.long	.LASF518
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF519
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF520
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF521
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF522
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF523
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF524
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF525
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF526
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF527
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF528
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF529
	.byte	0xba
	.uleb128 0x2
	.long	.LASF530
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF531
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF532
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF533
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF534
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF535
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF536
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF537
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF538
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF539
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF540
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF541
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF542
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF543
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF544
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF545
	.byte	0xca
	.uleb128 0x2
	.long	.LASF546
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF547
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF548
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF549
	.byte	0xce
	.uleb128 0x2
	.long	.LASF550
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF551
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF552
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF553
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF554
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF555
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF556
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF557
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF558
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF559
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF560
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF561
	.byte	0xda
	.uleb128 0x2
	.long	.LASF562
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF563
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF564
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF565
	.byte	0xde
	.uleb128 0x2
	.long	.LASF566
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF567
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF568
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF569
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF570
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF571
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF572
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF573
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF574
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF575
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF576
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF577
	.byte	0xea
	.uleb128 0x2
	.long	.LASF578
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF579
	.byte	0xec
	.uleb128 0x2
	.long	.LASF580
	.byte	0xed
	.uleb128 0x2
	.long	.LASF581
	.byte	0xee
	.uleb128 0x2
	.long	.LASF582
	.byte	0xef
	.uleb128 0x2
	.long	.LASF583
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF584
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF585
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF586
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF587
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF588
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF589
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF590
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF591
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF592
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF593
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF594
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF595
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF596
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF597
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF598
	.byte	0xff
	.uleb128 0x1
	.long	.LASF599
	.value	0x100
	.uleb128 0x1
	.long	.LASF600
	.value	0x101
	.uleb128 0x1
	.long	.LASF601
	.value	0x102
	.uleb128 0x1
	.long	.LASF602
	.value	0x103
	.uleb128 0x1
	.long	.LASF603
	.value	0x104
	.uleb128 0x1
	.long	.LASF604
	.value	0x105
	.uleb128 0x1
	.long	.LASF605
	.value	0x106
	.uleb128 0x1
	.long	.LASF606
	.value	0x107
	.uleb128 0x1
	.long	.LASF607
	.value	0x108
	.uleb128 0x1
	.long	.LASF608
	.value	0x109
	.uleb128 0x1
	.long	.LASF609
	.value	0x10a
	.uleb128 0x1
	.long	.LASF610
	.value	0x10b
	.uleb128 0x1
	.long	.LASF611
	.value	0x10c
	.uleb128 0x1
	.long	.LASF612
	.value	0x10d
	.uleb128 0x1
	.long	.LASF613
	.value	0x10e
	.uleb128 0x1
	.long	.LASF614
	.value	0x10f
	.uleb128 0x1
	.long	.LASF615
	.value	0x110
	.uleb128 0x1
	.long	.LASF616
	.value	0x111
	.uleb128 0x1
	.long	.LASF617
	.value	0x112
	.uleb128 0x1
	.long	.LASF618
	.value	0x113
	.uleb128 0x1
	.long	.LASF619
	.value	0x114
	.uleb128 0x1
	.long	.LASF620
	.value	0x115
	.uleb128 0x1
	.long	.LASF621
	.value	0x116
	.uleb128 0x1
	.long	.LASF622
	.value	0x117
	.uleb128 0x1
	.long	.LASF623
	.value	0x118
	.uleb128 0x1
	.long	.LASF624
	.value	0x119
	.uleb128 0x1
	.long	.LASF625
	.value	0x11a
	.uleb128 0x1
	.long	.LASF626
	.value	0x11b
	.uleb128 0x1
	.long	.LASF627
	.value	0x11c
	.uleb128 0x1
	.long	.LASF628
	.value	0x11d
	.uleb128 0x1
	.long	.LASF629
	.value	0x11e
	.uleb128 0x1
	.long	.LASF630
	.value	0x11f
	.uleb128 0x1
	.long	.LASF631
	.value	0x120
	.uleb128 0x1
	.long	.LASF632
	.value	0x121
	.uleb128 0x1
	.long	.LASF633
	.value	0x122
	.uleb128 0x1
	.long	.LASF634
	.value	0x123
	.uleb128 0x1
	.long	.LASF635
	.value	0x124
	.uleb128 0x1
	.long	.LASF636
	.value	0x125
	.uleb128 0x1
	.long	.LASF637
	.value	0x126
	.uleb128 0x1
	.long	.LASF638
	.value	0x127
	.uleb128 0x1
	.long	.LASF639
	.value	0x128
	.uleb128 0x1
	.long	.LASF640
	.value	0x129
	.uleb128 0x1
	.long	.LASF641
	.value	0x12a
	.uleb128 0x1
	.long	.LASF642
	.value	0x12b
	.uleb128 0x1
	.long	.LASF643
	.value	0x12c
	.uleb128 0x1
	.long	.LASF644
	.value	0x12d
	.uleb128 0x1
	.long	.LASF645
	.value	0x12e
	.uleb128 0x1
	.long	.LASF646
	.value	0x12f
	.uleb128 0x1
	.long	.LASF647
	.value	0x130
	.uleb128 0x1
	.long	.LASF648
	.value	0x131
	.uleb128 0x1
	.long	.LASF649
	.value	0x132
	.uleb128 0x1
	.long	.LASF650
	.value	0x133
	.uleb128 0x1
	.long	.LASF651
	.value	0x134
	.uleb128 0x1
	.long	.LASF652
	.value	0x135
	.uleb128 0x1
	.long	.LASF653
	.value	0x136
	.uleb128 0x1
	.long	.LASF654
	.value	0x137
	.uleb128 0x1
	.long	.LASF655
	.value	0x138
	.uleb128 0x1
	.long	.LASF656
	.value	0x139
	.uleb128 0x1
	.long	.LASF657
	.value	0x13a
	.uleb128 0x1
	.long	.LASF658
	.value	0x13b
	.uleb128 0x1
	.long	.LASF659
	.value	0x13c
	.uleb128 0x1
	.long	.LASF660
	.value	0x13d
	.uleb128 0x1
	.long	.LASF661
	.value	0x13e
	.uleb128 0x1
	.long	.LASF662
	.value	0x13f
	.uleb128 0x1
	.long	.LASF663
	.value	0x140
	.uleb128 0x1
	.long	.LASF664
	.value	0x141
	.uleb128 0x1
	.long	.LASF665
	.value	0x142
	.uleb128 0x1
	.long	.LASF666
	.value	0x143
	.uleb128 0x1
	.long	.LASF667
	.value	0x144
	.uleb128 0x1
	.long	.LASF668
	.value	0x145
	.uleb128 0x1
	.long	.LASF669
	.value	0x146
	.uleb128 0x1
	.long	.LASF670
	.value	0x147
	.uleb128 0x1
	.long	.LASF671
	.value	0x148
	.uleb128 0x1
	.long	.LASF672
	.value	0x149
	.uleb128 0x1
	.long	.LASF673
	.value	0x14a
	.uleb128 0x1
	.long	.LASF674
	.value	0x14b
	.uleb128 0x1
	.long	.LASF675
	.value	0x14c
	.uleb128 0x1
	.long	.LASF676
	.value	0x14d
	.uleb128 0x1
	.long	.LASF677
	.value	0x14e
	.uleb128 0x1
	.long	.LASF678
	.value	0x14f
	.uleb128 0x1
	.long	.LASF679
	.value	0x150
	.uleb128 0x1
	.long	.LASF680
	.value	0x151
	.uleb128 0x1
	.long	.LASF681
	.value	0x152
	.uleb128 0x1
	.long	.LASF682
	.value	0x153
	.uleb128 0x1
	.long	.LASF683
	.value	0x154
	.uleb128 0x1
	.long	.LASF684
	.value	0x155
	.uleb128 0x1
	.long	.LASF685
	.value	0x156
	.uleb128 0x1
	.long	.LASF686
	.value	0x157
	.uleb128 0x1
	.long	.LASF687
	.value	0x158
	.uleb128 0x1
	.long	.LASF688
	.value	0x159
	.uleb128 0x1
	.long	.LASF689
	.value	0x15a
	.uleb128 0x1
	.long	.LASF690
	.value	0x15b
	.uleb128 0x1
	.long	.LASF691
	.value	0x15c
	.uleb128 0x1
	.long	.LASF692
	.value	0x15d
	.uleb128 0x1
	.long	.LASF693
	.value	0x15e
	.uleb128 0x1
	.long	.LASF694
	.value	0x15f
	.uleb128 0x1
	.long	.LASF695
	.value	0x160
	.uleb128 0x1
	.long	.LASF696
	.value	0x161
	.uleb128 0x1
	.long	.LASF697
	.value	0x162
	.uleb128 0x1
	.long	.LASF698
	.value	0x163
	.uleb128 0x1
	.long	.LASF699
	.value	0x164
	.uleb128 0x1
	.long	.LASF700
	.value	0x165
	.uleb128 0x1
	.long	.LASF701
	.value	0x166
	.uleb128 0x1
	.long	.LASF702
	.value	0x167
	.uleb128 0x1
	.long	.LASF703
	.value	0x168
	.uleb128 0x1
	.long	.LASF704
	.value	0x169
	.uleb128 0x1
	.long	.LASF705
	.value	0x16a
	.uleb128 0x1
	.long	.LASF706
	.value	0x16b
	.uleb128 0x1
	.long	.LASF707
	.value	0x16c
	.uleb128 0x1
	.long	.LASF708
	.value	0x16d
	.uleb128 0x1
	.long	.LASF709
	.value	0x16e
	.uleb128 0x1
	.long	.LASF710
	.value	0x16f
	.uleb128 0x1
	.long	.LASF711
	.value	0x170
	.uleb128 0x1
	.long	.LASF712
	.value	0x171
	.uleb128 0x1
	.long	.LASF713
	.value	0x172
	.uleb128 0x1
	.long	.LASF714
	.value	0x173
	.uleb128 0x1
	.long	.LASF715
	.value	0x174
	.uleb128 0x1
	.long	.LASF716
	.value	0x175
	.uleb128 0x1
	.long	.LASF717
	.value	0x176
	.uleb128 0x1
	.long	.LASF718
	.value	0x177
	.uleb128 0x1
	.long	.LASF719
	.value	0x178
	.uleb128 0x1
	.long	.LASF720
	.value	0x179
	.uleb128 0x1
	.long	.LASF721
	.value	0x17a
	.uleb128 0x1
	.long	.LASF722
	.value	0x17b
	.uleb128 0x1
	.long	.LASF723
	.value	0x17c
	.uleb128 0x1
	.long	.LASF724
	.value	0x17d
	.uleb128 0x1
	.long	.LASF725
	.value	0x17e
	.uleb128 0x1
	.long	.LASF726
	.value	0x17f
	.uleb128 0x1
	.long	.LASF727
	.value	0x180
	.uleb128 0x1
	.long	.LASF728
	.value	0x181
	.uleb128 0x1
	.long	.LASF729
	.value	0x182
	.uleb128 0x1
	.long	.LASF730
	.value	0x183
	.uleb128 0x1
	.long	.LASF731
	.value	0x184
	.uleb128 0x1
	.long	.LASF732
	.value	0x185
	.uleb128 0x1
	.long	.LASF733
	.value	0x186
	.uleb128 0x1
	.long	.LASF734
	.value	0x187
	.uleb128 0x1
	.long	.LASF735
	.value	0x188
	.uleb128 0x1
	.long	.LASF736
	.value	0x189
	.uleb128 0x1
	.long	.LASF737
	.value	0x18a
	.uleb128 0x1
	.long	.LASF738
	.value	0x18b
	.uleb128 0x1
	.long	.LASF739
	.value	0x18c
	.uleb128 0x1
	.long	.LASF740
	.value	0x18d
	.uleb128 0x1
	.long	.LASF741
	.value	0x18e
	.uleb128 0x1
	.long	.LASF742
	.value	0x18f
	.uleb128 0x1
	.long	.LASF743
	.value	0x190
	.uleb128 0x1
	.long	.LASF744
	.value	0x191
	.uleb128 0x1
	.long	.LASF745
	.value	0x192
	.uleb128 0x1
	.long	.LASF746
	.value	0x193
	.uleb128 0x1
	.long	.LASF747
	.value	0x194
	.uleb128 0x1
	.long	.LASF748
	.value	0x195
	.uleb128 0x1
	.long	.LASF749
	.value	0x196
	.uleb128 0x1
	.long	.LASF750
	.value	0x197
	.uleb128 0x1
	.long	.LASF751
	.value	0x198
	.uleb128 0x1
	.long	.LASF752
	.value	0x199
	.uleb128 0x1
	.long	.LASF753
	.value	0x19a
	.uleb128 0x1
	.long	.LASF754
	.value	0x19b
	.uleb128 0x1
	.long	.LASF755
	.value	0x19c
	.uleb128 0x1
	.long	.LASF756
	.value	0x19d
	.uleb128 0x1
	.long	.LASF757
	.value	0x19e
	.uleb128 0x1
	.long	.LASF758
	.value	0x19f
	.uleb128 0x1
	.long	.LASF759
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF760
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF761
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF762
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF763
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF764
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF765
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF766
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF767
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF768
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF769
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF770
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF771
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF772
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF773
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF774
	.value	0x1af
	.uleb128 0x1
	.long	.LASF775
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF776
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF777
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF778
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF779
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF780
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF781
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF782
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF783
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF784
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF785
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF786
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF787
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF788
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF789
	.value	0x1be
	.uleb128 0x1
	.long	.LASF790
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF791
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF792
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF793
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF794
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF795
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF796
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF797
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF798
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF799
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF800
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF801
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF802
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF803
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF804
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF805
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF806
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF807
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF808
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF809
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF810
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF811
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF812
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF813
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF814
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF815
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF816
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF817
	.value	0x1da
	.uleb128 0x1
	.long	.LASF818
	.value	0x1db
	.uleb128 0x1
	.long	.LASF819
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF820
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF821
	.value	0x1de
	.uleb128 0x1
	.long	.LASF822
	.value	0x1df
	.uleb128 0x1
	.long	.LASF823
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF824
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF825
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF826
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF827
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF828
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF829
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF830
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF831
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF832
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF833
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF834
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF835
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF836
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF837
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF838
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF839
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF840
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF841
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF842
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF843
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF844
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF845
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF846
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF847
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF848
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF849
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF850
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF851
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF852
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF853
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF854
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF855
	.value	0x200
	.uleb128 0x1
	.long	.LASF856
	.value	0x201
	.uleb128 0x1
	.long	.LASF857
	.value	0x202
	.uleb128 0x1
	.long	.LASF858
	.value	0x203
	.uleb128 0x1
	.long	.LASF859
	.value	0x204
	.uleb128 0x1
	.long	.LASF860
	.value	0x205
	.uleb128 0x1
	.long	.LASF861
	.value	0x206
	.uleb128 0x1
	.long	.LASF862
	.value	0x207
	.uleb128 0x1
	.long	.LASF863
	.value	0x208
	.uleb128 0x1
	.long	.LASF864
	.value	0x209
	.uleb128 0x1
	.long	.LASF865
	.value	0x20a
	.uleb128 0x1
	.long	.LASF866
	.value	0x20b
	.uleb128 0x1
	.long	.LASF867
	.value	0x20c
	.uleb128 0x1
	.long	.LASF868
	.value	0x20d
	.uleb128 0x1
	.long	.LASF869
	.value	0x20e
	.uleb128 0x1
	.long	.LASF870
	.value	0x20f
	.uleb128 0x1
	.long	.LASF871
	.value	0x210
	.uleb128 0x1
	.long	.LASF872
	.value	0x211
	.uleb128 0x1
	.long	.LASF873
	.value	0x212
	.uleb128 0x1
	.long	.LASF874
	.value	0x213
	.uleb128 0x1
	.long	.LASF875
	.value	0x214
	.uleb128 0x1
	.long	.LASF876
	.value	0x215
	.uleb128 0x1
	.long	.LASF877
	.value	0x216
	.uleb128 0x1
	.long	.LASF878
	.value	0x217
	.uleb128 0x1
	.long	.LASF879
	.value	0x218
	.uleb128 0x1
	.long	.LASF880
	.value	0x219
	.uleb128 0x1
	.long	.LASF881
	.value	0x21a
	.uleb128 0x1
	.long	.LASF882
	.value	0x21b
	.uleb128 0x1
	.long	.LASF883
	.value	0x21c
	.uleb128 0x1
	.long	.LASF884
	.value	0x21d
	.uleb128 0x1
	.long	.LASF885
	.value	0x21e
	.uleb128 0x1
	.long	.LASF886
	.value	0x21f
	.uleb128 0x1
	.long	.LASF887
	.value	0x220
	.uleb128 0x1
	.long	.LASF888
	.value	0x221
	.uleb128 0x1
	.long	.LASF889
	.value	0x222
	.uleb128 0x1
	.long	.LASF890
	.value	0x223
	.uleb128 0x1
	.long	.LASF891
	.value	0x224
	.uleb128 0x1
	.long	.LASF892
	.value	0x225
	.uleb128 0x1
	.long	.LASF893
	.value	0x226
	.uleb128 0x1
	.long	.LASF894
	.value	0x227
	.uleb128 0x1
	.long	.LASF895
	.value	0x228
	.uleb128 0x1
	.long	.LASF896
	.value	0x229
	.uleb128 0x1
	.long	.LASF897
	.value	0x22a
	.uleb128 0x1
	.long	.LASF898
	.value	0x22b
	.uleb128 0x1
	.long	.LASF899
	.value	0x22c
	.uleb128 0x1
	.long	.LASF900
	.value	0x22d
	.uleb128 0x1
	.long	.LASF901
	.value	0x22e
	.uleb128 0x1
	.long	.LASF902
	.value	0x22f
	.uleb128 0x1
	.long	.LASF903
	.value	0x230
	.uleb128 0x1
	.long	.LASF904
	.value	0x231
	.uleb128 0x1
	.long	.LASF905
	.value	0x232
	.uleb128 0x1
	.long	.LASF906
	.value	0x233
	.uleb128 0x1
	.long	.LASF907
	.value	0x234
	.uleb128 0x1
	.long	.LASF908
	.value	0x235
	.uleb128 0x1
	.long	.LASF909
	.value	0x236
	.uleb128 0x1
	.long	.LASF910
	.value	0x237
	.uleb128 0x1
	.long	.LASF911
	.value	0x238
	.uleb128 0x1
	.long	.LASF912
	.value	0x239
	.uleb128 0x1
	.long	.LASF913
	.value	0x23a
	.uleb128 0x1
	.long	.LASF914
	.value	0x23b
	.uleb128 0x1
	.long	.LASF915
	.value	0x23c
	.uleb128 0x1
	.long	.LASF916
	.value	0x23d
	.uleb128 0x1
	.long	.LASF917
	.value	0x23e
	.uleb128 0x1
	.long	.LASF918
	.value	0x23f
	.uleb128 0x1
	.long	.LASF919
	.value	0x240
	.uleb128 0x1
	.long	.LASF920
	.value	0x241
	.uleb128 0x1
	.long	.LASF921
	.value	0x242
	.uleb128 0x1
	.long	.LASF922
	.value	0x243
	.uleb128 0x1
	.long	.LASF923
	.value	0x244
	.uleb128 0x1
	.long	.LASF924
	.value	0x245
	.uleb128 0x1
	.long	.LASF925
	.value	0x246
	.uleb128 0x1
	.long	.LASF926
	.value	0x247
	.uleb128 0x1
	.long	.LASF927
	.value	0x248
	.uleb128 0x1
	.long	.LASF928
	.value	0x249
	.uleb128 0x1
	.long	.LASF929
	.value	0x24a
	.uleb128 0x1
	.long	.LASF930
	.value	0x24b
	.uleb128 0x1
	.long	.LASF931
	.value	0x24c
	.uleb128 0x1
	.long	.LASF932
	.value	0x24d
	.uleb128 0x1
	.long	.LASF933
	.value	0x24e
	.uleb128 0x1
	.long	.LASF934
	.value	0x24f
	.uleb128 0x1
	.long	.LASF935
	.value	0x250
	.uleb128 0x1
	.long	.LASF936
	.value	0x251
	.uleb128 0x1
	.long	.LASF937
	.value	0x252
	.uleb128 0x1
	.long	.LASF938
	.value	0x253
	.uleb128 0x1
	.long	.LASF939
	.value	0x254
	.uleb128 0x1
	.long	.LASF940
	.value	0x255
	.uleb128 0x1
	.long	.LASF941
	.value	0x256
	.uleb128 0x1
	.long	.LASF942
	.value	0x257
	.uleb128 0x1
	.long	.LASF943
	.value	0x258
	.uleb128 0x1
	.long	.LASF944
	.value	0x259
	.uleb128 0x1
	.long	.LASF945
	.value	0x25a
	.uleb128 0x1
	.long	.LASF946
	.value	0x25b
	.uleb128 0x1
	.long	.LASF947
	.value	0x25c
	.uleb128 0x1
	.long	.LASF948
	.value	0x25d
	.uleb128 0x1
	.long	.LASF949
	.value	0x25e
	.uleb128 0x1
	.long	.LASF950
	.value	0x25f
	.uleb128 0x1
	.long	.LASF951
	.value	0x260
	.uleb128 0x1
	.long	.LASF952
	.value	0x261
	.uleb128 0x1
	.long	.LASF953
	.value	0x262
	.uleb128 0x1
	.long	.LASF954
	.value	0x263
	.uleb128 0x1
	.long	.LASF955
	.value	0x264
	.uleb128 0x1
	.long	.LASF956
	.value	0x265
	.uleb128 0x1
	.long	.LASF957
	.value	0x266
	.uleb128 0x1
	.long	.LASF958
	.value	0x267
	.uleb128 0x1
	.long	.LASF959
	.value	0x268
	.uleb128 0x1
	.long	.LASF960
	.value	0x269
	.uleb128 0x1
	.long	.LASF961
	.value	0x26a
	.uleb128 0x1
	.long	.LASF962
	.value	0x26b
	.uleb128 0x1
	.long	.LASF963
	.value	0x26c
	.uleb128 0x1
	.long	.LASF964
	.value	0x26d
	.uleb128 0x1
	.long	.LASF965
	.value	0x26e
	.uleb128 0x1
	.long	.LASF966
	.value	0x26f
	.uleb128 0x1
	.long	.LASF967
	.value	0x270
	.uleb128 0x1
	.long	.LASF968
	.value	0x271
	.uleb128 0x1
	.long	.LASF969
	.value	0x272
	.uleb128 0x1
	.long	.LASF970
	.value	0x273
	.uleb128 0x1
	.long	.LASF971
	.value	0x274
	.uleb128 0x1
	.long	.LASF972
	.value	0x275
	.uleb128 0x1
	.long	.LASF973
	.value	0x276
	.uleb128 0x1
	.long	.LASF974
	.value	0x277
	.uleb128 0x1
	.long	.LASF975
	.value	0x278
	.uleb128 0x1
	.long	.LASF976
	.value	0x279
	.uleb128 0x1
	.long	.LASF977
	.value	0x27a
	.uleb128 0x1
	.long	.LASF978
	.value	0x27b
	.uleb128 0x1
	.long	.LASF979
	.value	0x27c
	.uleb128 0x1
	.long	.LASF980
	.value	0x27d
	.uleb128 0x1
	.long	.LASF981
	.value	0x27e
	.uleb128 0x1
	.long	.LASF982
	.value	0x27f
	.uleb128 0x1
	.long	.LASF983
	.value	0x280
	.uleb128 0x1
	.long	.LASF984
	.value	0x281
	.uleb128 0x1
	.long	.LASF985
	.value	0x282
	.uleb128 0x1
	.long	.LASF986
	.value	0x283
	.uleb128 0x1
	.long	.LASF987
	.value	0x284
	.uleb128 0x1
	.long	.LASF988
	.value	0x285
	.uleb128 0x1
	.long	.LASF989
	.value	0x286
	.uleb128 0x1
	.long	.LASF990
	.value	0x287
	.uleb128 0x1
	.long	.LASF991
	.value	0x288
	.uleb128 0x1
	.long	.LASF992
	.value	0x289
	.uleb128 0x1
	.long	.LASF993
	.value	0x28a
	.uleb128 0x1
	.long	.LASF994
	.value	0x28b
	.uleb128 0x1
	.long	.LASF995
	.value	0x28c
	.uleb128 0x1
	.long	.LASF996
	.value	0x28d
	.uleb128 0x1
	.long	.LASF997
	.value	0x28e
	.uleb128 0x1
	.long	.LASF998
	.value	0x28f
	.uleb128 0x1
	.long	.LASF999
	.value	0x290
	.uleb128 0x1
	.long	.LASF1000
	.value	0x291
	.uleb128 0x1
	.long	.LASF1001
	.value	0x292
	.uleb128 0x1
	.long	.LASF1002
	.value	0x293
	.uleb128 0x1
	.long	.LASF1003
	.value	0x294
	.uleb128 0x1
	.long	.LASF1004
	.value	0x295
	.uleb128 0x1
	.long	.LASF1005
	.value	0x296
	.uleb128 0x1
	.long	.LASF1006
	.value	0x297
	.uleb128 0x1
	.long	.LASF1007
	.value	0x298
	.uleb128 0x1
	.long	.LASF1008
	.value	0x299
	.uleb128 0x1
	.long	.LASF1009
	.value	0x29a
	.uleb128 0x1
	.long	.LASF1010
	.value	0x29b
	.uleb128 0x1
	.long	.LASF1011
	.value	0x29c
	.uleb128 0x1
	.long	.LASF1012
	.value	0x29d
	.uleb128 0x1
	.long	.LASF1013
	.value	0x29e
	.uleb128 0x1
	.long	.LASF1014
	.value	0x29f
	.uleb128 0x1
	.long	.LASF1015
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF1016
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF1017
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF1018
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF1019
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF1020
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF1021
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF1022
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF1023
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF1024
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF1025
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF1026
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF1027
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF1028
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF1029
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF1030
	.value	0x2af
	.uleb128 0x1
	.long	.LASF1031
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF1032
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF1033
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF1034
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF1035
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF1036
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF1037
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF1038
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF1039
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF1040
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF1041
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF1042
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF1043
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF1044
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF1045
	.value	0x2be
	.uleb128 0x1
	.long	.LASF1046
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF1047
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF1048
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF1049
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF1050
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF1051
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF1052
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF1053
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF1054
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF1055
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF1056
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF1057
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF1058
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF1059
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF1060
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF1061
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF1062
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF1063
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF1064
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF1065
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF1066
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF1067
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF1068
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF1069
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF1070
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF1071
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF1072
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF1073
	.value	0x2da
	.uleb128 0x1
	.long	.LASF1074
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1075
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1076
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1077
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1078
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1079
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1080
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1081
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1082
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1083
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1084
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1085
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1086
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1087
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1088
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1089
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1090
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1091
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1092
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1093
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1094
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1095
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1096
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1097
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1098
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1099
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1100
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1101
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1102
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1103
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1104
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1105
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1106
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1107
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1108
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1109
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1110
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1111
	.value	0x300
	.uleb128 0x1
	.long	.LASF1112
	.value	0x301
	.uleb128 0x1
	.long	.LASF1113
	.value	0x302
	.uleb128 0x1
	.long	.LASF1114
	.value	0x303
	.uleb128 0x1
	.long	.LASF1115
	.value	0x304
	.uleb128 0x1
	.long	.LASF1116
	.value	0x305
	.uleb128 0x1
	.long	.LASF1117
	.value	0x306
	.uleb128 0x1
	.long	.LASF1118
	.value	0x307
	.uleb128 0x1
	.long	.LASF1119
	.value	0x308
	.uleb128 0x1
	.long	.LASF1120
	.value	0x309
	.uleb128 0x1
	.long	.LASF1121
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1122
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1123
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1124
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1125
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1126
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1127
	.value	0x310
	.uleb128 0x1
	.long	.LASF1128
	.value	0x311
	.uleb128 0x1
	.long	.LASF1129
	.value	0x312
	.uleb128 0x1
	.long	.LASF1130
	.value	0x313
	.uleb128 0x1
	.long	.LASF1131
	.value	0x314
	.uleb128 0x1
	.long	.LASF1132
	.value	0x315
	.uleb128 0x1
	.long	.LASF1133
	.value	0x316
	.uleb128 0x1
	.long	.LASF1134
	.value	0x317
	.uleb128 0x1
	.long	.LASF1135
	.value	0x318
	.uleb128 0x1
	.long	.LASF1136
	.value	0x319
	.uleb128 0x1
	.long	.LASF1137
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1138
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1139
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1140
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1141
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1142
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1143
	.value	0x320
	.uleb128 0x1
	.long	.LASF1144
	.value	0x321
	.uleb128 0x1
	.long	.LASF1145
	.value	0x322
	.uleb128 0x1
	.long	.LASF1146
	.value	0x323
	.uleb128 0x1
	.long	.LASF1147
	.value	0x324
	.uleb128 0x1
	.long	.LASF1148
	.value	0x325
	.uleb128 0x1
	.long	.LASF1149
	.value	0x326
	.uleb128 0x1
	.long	.LASF1150
	.value	0x327
	.uleb128 0x1
	.long	.LASF1151
	.value	0x328
	.uleb128 0x1
	.long	.LASF1152
	.value	0x329
	.uleb128 0x1
	.long	.LASF1153
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1154
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1155
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1156
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1157
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1158
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1159
	.value	0x330
	.uleb128 0x1
	.long	.LASF1160
	.value	0x331
	.uleb128 0x1
	.long	.LASF1161
	.value	0x332
	.uleb128 0x1
	.long	.LASF1162
	.value	0x333
	.uleb128 0x1
	.long	.LASF1163
	.value	0x334
	.uleb128 0x1
	.long	.LASF1164
	.value	0x335
	.uleb128 0x1
	.long	.LASF1165
	.value	0x336
	.uleb128 0x1
	.long	.LASF1166
	.value	0x337
	.uleb128 0x1
	.long	.LASF1167
	.value	0x338
	.uleb128 0x1
	.long	.LASF1168
	.value	0x339
	.uleb128 0x1
	.long	.LASF1169
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1170
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1171
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1172
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1173
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1174
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1175
	.value	0x340
	.uleb128 0x1
	.long	.LASF1176
	.value	0x341
	.uleb128 0x1
	.long	.LASF1177
	.value	0x342
	.uleb128 0x1
	.long	.LASF1178
	.value	0x343
	.uleb128 0x1
	.long	.LASF1179
	.value	0x344
	.uleb128 0x1
	.long	.LASF1180
	.value	0x345
	.uleb128 0x1
	.long	.LASF1181
	.value	0x346
	.uleb128 0x1
	.long	.LASF1182
	.value	0x347
	.uleb128 0x1
	.long	.LASF1183
	.value	0x348
	.uleb128 0x1
	.long	.LASF1184
	.value	0x349
	.uleb128 0x1
	.long	.LASF1185
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1186
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1187
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1188
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1189
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1190
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1191
	.value	0x350
	.uleb128 0x1
	.long	.LASF1192
	.value	0x351
	.uleb128 0x1
	.long	.LASF1193
	.value	0x352
	.uleb128 0x1
	.long	.LASF1194
	.value	0x353
	.uleb128 0x1
	.long	.LASF1195
	.value	0x354
	.uleb128 0x1
	.long	.LASF1196
	.value	0x355
	.uleb128 0x1
	.long	.LASF1197
	.value	0x356
	.uleb128 0x1
	.long	.LASF1198
	.value	0x357
	.uleb128 0x1
	.long	.LASF1199
	.value	0x358
	.uleb128 0x1
	.long	.LASF1200
	.value	0x359
	.uleb128 0x1
	.long	.LASF1201
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1202
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1203
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1204
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1205
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1206
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1207
	.value	0x360
	.uleb128 0x1
	.long	.LASF1208
	.value	0x361
	.uleb128 0x1
	.long	.LASF1209
	.value	0x362
	.uleb128 0x1
	.long	.LASF1210
	.value	0x363
	.uleb128 0x1
	.long	.LASF1211
	.value	0x364
	.uleb128 0x1
	.long	.LASF1212
	.value	0x365
	.uleb128 0x1
	.long	.LASF1213
	.value	0x366
	.uleb128 0x1
	.long	.LASF1214
	.value	0x367
	.uleb128 0x1
	.long	.LASF1215
	.value	0x368
	.uleb128 0x1
	.long	.LASF1216
	.value	0x369
	.uleb128 0x1
	.long	.LASF1217
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1218
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1219
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1220
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1221
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1222
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1223
	.value	0x370
	.uleb128 0x1
	.long	.LASF1224
	.value	0x371
	.uleb128 0x1
	.long	.LASF1225
	.value	0x372
	.uleb128 0x1
	.long	.LASF1226
	.value	0x373
	.uleb128 0x1
	.long	.LASF1227
	.value	0x374
	.uleb128 0x1
	.long	.LASF1228
	.value	0x375
	.uleb128 0x1
	.long	.LASF1229
	.value	0x376
	.uleb128 0x1
	.long	.LASF1230
	.value	0x377
	.uleb128 0x1
	.long	.LASF1231
	.value	0x378
	.uleb128 0x1
	.long	.LASF1232
	.value	0x379
	.uleb128 0x1
	.long	.LASF1233
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1234
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1235
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1236
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1237
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1238
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1239
	.value	0x380
	.uleb128 0x1
	.long	.LASF1240
	.value	0x381
	.uleb128 0x1
	.long	.LASF1241
	.value	0x382
	.uleb128 0x1
	.long	.LASF1242
	.value	0x383
	.uleb128 0x1
	.long	.LASF1243
	.value	0x384
	.uleb128 0x1
	.long	.LASF1244
	.value	0x385
	.uleb128 0x1
	.long	.LASF1245
	.value	0x386
	.uleb128 0x1
	.long	.LASF1246
	.value	0x387
	.uleb128 0x1
	.long	.LASF1247
	.value	0x388
	.uleb128 0x1
	.long	.LASF1248
	.value	0x389
	.uleb128 0x1
	.long	.LASF1249
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1250
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1251
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1252
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1253
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1254
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1255
	.value	0x390
	.uleb128 0x1
	.long	.LASF1256
	.value	0x391
	.uleb128 0x1
	.long	.LASF1257
	.value	0x392
	.uleb128 0x1
	.long	.LASF1258
	.value	0x393
	.uleb128 0x1
	.long	.LASF1259
	.value	0x394
	.uleb128 0x1
	.long	.LASF1260
	.value	0x395
	.uleb128 0x1
	.long	.LASF1261
	.value	0x396
	.uleb128 0x1
	.long	.LASF1262
	.value	0x397
	.uleb128 0x1
	.long	.LASF1263
	.value	0x398
	.uleb128 0x1
	.long	.LASF1264
	.value	0x399
	.uleb128 0x1
	.long	.LASF1265
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1266
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1267
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1268
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1269
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1270
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1271
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1272
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1273
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1274
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1275
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1276
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1277
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1278
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1279
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1280
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1281
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1282
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1283
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1284
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1285
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1286
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1287
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1288
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1289
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1290
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1291
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1292
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1293
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1294
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1295
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1296
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1297
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1298
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1299
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1300
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1301
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1302
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1303
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1304
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1305
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1306
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1307
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1308
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1309
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1310
	.value	0x3c7
	.byte	0
	.uleb128 0x13
	.long	.LASF1311
	.byte	0xa
	.value	0x478
	.long	0xa8a
	.uleb128 0x20
	.byte	0x38
	.value	0x47b
	.long	0x2486
	.uleb128 0x4
	.long	.LASF1312
	.byte	0xa
	.value	0x47d
	.byte	0xf
	.long	0xa7e
	.byte	0
	.uleb128 0x4
	.long	.LASF1313
	.byte	0xa
	.value	0x47e
	.byte	0xa
	.long	0x97
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1314
	.byte	0xa
	.value	0x47f
	.byte	0xa
	.long	0x97
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1315
	.byte	0xa
	.value	0x481
	.byte	0xf
	.long	0x6d2
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1316
	.byte	0xa
	.value	0x482
	.byte	0x10
	.long	0x240f
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1317
	.byte	0xa
	.value	0x483
	.byte	0xa
	.long	0x97
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1318
	.byte	0xa
	.value	0x483
	.byte	0x11
	.long	0x97
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LASF1319
	.byte	0xa
	.value	0x484
	.long	0x241b
	.uleb128 0xa
	.long	0x2486
	.long	0x24a3
	.uleb128 0x1c
	.long	0x43
	.value	0x3c6
	.byte	0
	.uleb128 0x21
	.long	.LASF1320
	.byte	0xa
	.value	0x486
	.byte	0x10
	.long	0x2492
	.uleb128 0x2b
	.byte	0x7
	.byte	0x4
	.long	0x6b
	.byte	0xa
	.value	0x48b
	.byte	0xe
	.long	0x27fc
	.uleb128 0x2
	.long	.LASF1321
	.byte	0
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1331
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1332
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1333
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1334
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1335
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1336
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1374
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1375
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1376
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1377
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1379
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1380
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1381
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1382
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1383
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1384
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1385
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1386
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1387
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1388
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1389
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1390
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1391
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1392
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1393
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1394
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1395
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1396
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1397
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1398
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1399
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1400
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1401
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1402
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1403
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1404
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1405
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1406
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1407
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1408
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1409
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1410
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1411
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1412
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1413
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1414
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1415
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1416
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1417
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1418
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1419
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1420
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1421
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1422
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1423
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1424
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1425
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1426
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1427
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1428
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1429
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1430
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1431
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1432
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1433
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1434
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1435
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1436
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1437
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1438
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1439
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1440
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1441
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1442
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1443
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1444
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1445
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1446
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1447
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1448
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1449
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1450
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1451
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1452
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1453
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1454
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1455
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1456
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1457
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1458
	.byte	0x89
	.byte	0
	.uleb128 0x13
	.long	.LASF1459
	.byte	0xa
	.value	0x517
	.long	0x24b0
	.uleb128 0x20
	.byte	0x5c
	.value	0x519
	.long	0x2953
	.uleb128 0x4
	.long	.LASF1460
	.byte	0xa
	.value	0x51b
	.byte	0x9
	.long	0x90
	.byte	0
	.uleb128 0x4
	.long	.LASF1461
	.byte	0xa
	.value	0x51c
	.byte	0x9
	.long	0x90
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1462
	.byte	0xa
	.value	0x51d
	.byte	0x9
	.long	0x90
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1463
	.byte	0xa
	.value	0x51e
	.byte	0x9
	.long	0x90
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1464
	.byte	0xa
	.value	0x51f
	.byte	0x9
	.long	0x90
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1465
	.byte	0xa
	.value	0x520
	.byte	0x9
	.long	0x90
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1466
	.byte	0xa
	.value	0x521
	.byte	0x9
	.long	0x90
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1467
	.byte	0xa
	.value	0x522
	.byte	0x9
	.long	0x90
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1468
	.byte	0xa
	.value	0x523
	.byte	0x9
	.long	0x90
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1469
	.byte	0xa
	.value	0x524
	.byte	0x9
	.long	0x90
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1470
	.byte	0xa
	.value	0x525
	.byte	0x9
	.long	0x90
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1471
	.byte	0xa
	.value	0x526
	.byte	0x9
	.long	0x90
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1472
	.byte	0xa
	.value	0x527
	.byte	0x9
	.long	0x90
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1473
	.byte	0xa
	.value	0x528
	.byte	0x9
	.long	0x90
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1474
	.byte	0xa
	.value	0x529
	.byte	0x9
	.long	0x90
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1475
	.byte	0xa
	.value	0x52a
	.byte	0x9
	.long	0x90
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1476
	.byte	0xa
	.value	0x52b
	.byte	0x9
	.long	0x90
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1477
	.byte	0xa
	.value	0x52c
	.byte	0x9
	.long	0x90
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1478
	.byte	0xa
	.value	0x52d
	.byte	0x9
	.long	0x90
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1479
	.byte	0xa
	.value	0x52e
	.byte	0x9
	.long	0x90
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1480
	.byte	0xa
	.value	0x52f
	.byte	0x9
	.long	0x90
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1481
	.byte	0xa
	.value	0x530
	.byte	0x9
	.long	0x90
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1482
	.byte	0xa
	.value	0x531
	.byte	0x9
	.long	0x90
	.byte	0x58
	.byte	0
	.uleb128 0x13
	.long	.LASF1483
	.byte	0xa
	.value	0x533
	.long	0x2808
	.uleb128 0x9
	.long	0x6b
	.byte	0xb
	.byte	0x3d
	.byte	0x1
	.long	0x297e
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
	.uleb128 0x12
	.byte	0x18
	.byte	0xb
	.byte	0x44
	.long	0x29b9
	.uleb128 0x3
	.long	.LASF1487
	.byte	0xb
	.byte	0x46
	.byte	0xe
	.long	0x29b9
	.byte	0
	.uleb128 0x3
	.long	.LASF1314
	.byte	0xb
	.byte	0x47
	.byte	0xa
	.long	0x90
	.byte	0x8
	.uleb128 0x7
	.string	"sx"
	.byte	0xb
	.byte	0x48
	.byte	0xd
	.long	0x5ff
	.byte	0xc
	.uleb128 0x7
	.string	"sy"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x5ff
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x2486
	.uleb128 0x5
	.long	.LASF1488
	.byte	0xb
	.byte	0x4b
	.byte	0x3
	.long	0x297e
	.uleb128 0x9
	.long	0x6b
	.byte	0xc
	.byte	0x76
	.byte	0x1
	.long	0x2aa8
	.uleb128 0x2
	.long	.LASF1489
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1490
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1491
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1492
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1494
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1495
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1497
	.value	0x100
	.uleb128 0x1
	.long	.LASF1498
	.value	0x200
	.uleb128 0x1
	.long	.LASF1499
	.value	0x400
	.uleb128 0x1
	.long	.LASF1500
	.value	0x800
	.uleb128 0x1
	.long	.LASF1501
	.value	0x1000
	.uleb128 0x1
	.long	.LASF1502
	.value	0x2000
	.uleb128 0x1
	.long	.LASF1503
	.value	0x4000
	.uleb128 0x1
	.long	.LASF1504
	.value	0x8000
	.uleb128 0xd
	.long	.LASF1505
	.long	0x10000
	.uleb128 0xd
	.long	.LASF1506
	.long	0x20000
	.uleb128 0xd
	.long	.LASF1507
	.long	0x40000
	.uleb128 0xd
	.long	.LASF1508
	.long	0x80000
	.uleb128 0xd
	.long	.LASF1509
	.long	0x100000
	.uleb128 0xd
	.long	.LASF1510
	.long	0x200000
	.uleb128 0xd
	.long	.LASF1511
	.long	0x400000
	.uleb128 0xd
	.long	.LASF1512
	.long	0x800000
	.uleb128 0xd
	.long	.LASF1513
	.long	0x1000000
	.uleb128 0xd
	.long	.LASF1514
	.long	0x2000000
	.uleb128 0xd
	.long	.LASF1515
	.long	0xc000000
	.uleb128 0x2
	.long	.LASF1516
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.long	.LASF1518
	.byte	0xe0
	.byte	0xc
	.byte	0xcf
	.long	0x2c7f
	.uleb128 0x3
	.long	.LASF1519
	.byte	0xc
	.byte	0xd2
	.byte	0x10
	.long	0x723
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xc
	.byte	0xd5
	.byte	0xe
	.long	0x5ff
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xc
	.byte	0xd6
	.byte	0xe
	.long	0x5ff
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xc
	.byte	0xd7
	.byte	0xe
	.long	0x5ff
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1520
	.byte	0xc
	.byte	0xda
	.byte	0x14
	.long	0x2c7f
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1521
	.byte	0xc
	.byte	0xdb
	.byte	0x14
	.long	0x2c7f
	.byte	0x30
	.uleb128 0x3
	.long	.LASF174
	.byte	0xc
	.byte	0xde
	.byte	0xe
	.long	0x647
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1312
	.byte	0xc
	.byte	0xdf
	.byte	0x12
	.long	0xa7e
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1313
	.byte	0xc
	.byte	0xe0
	.byte	0xb
	.long	0x90
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1522
	.byte	0xc
	.byte	0xe4
	.byte	0x14
	.long	0x2c7f
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1523
	.byte	0xc
	.byte	0xe5
	.byte	0x14
	.long	0x2c7f
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1524
	.byte	0xc
	.byte	0xe7
	.byte	0x19
	.long	0x2cb8
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1525
	.byte	0xc
	.byte	0xea
	.byte	0xe
	.long	0x5ff
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1526
	.byte	0xc
	.byte	0xeb
	.byte	0xe
	.long	0x5ff
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xc
	.byte	0xee
	.byte	0xe
	.long	0x5ff
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xc
	.byte	0xef
	.byte	0xe
	.long	0x5ff
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1527
	.byte	0xc
	.byte	0xf2
	.byte	0xe
	.long	0x5ff
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1528
	.byte	0xc
	.byte	0xf3
	.byte	0xe
	.long	0x5ff
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1529
	.byte	0xc
	.byte	0xf4
	.byte	0xe
	.long	0x5ff
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1530
	.byte	0xc
	.byte	0xf7
	.byte	0xb
	.long	0x90
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF175
	.byte	0xc
	.byte	0xf9
	.byte	0x11
	.long	0x27fc
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1531
	.byte	0xc
	.byte	0xfa
	.byte	0x12
	.long	0x2cbd
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1314
	.byte	0xc
	.byte	0xfc
	.byte	0xb
	.long	0x90
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1487
	.byte	0xc
	.byte	0xfd
	.byte	0xf
	.long	0x29b9
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1481
	.byte	0xc
	.byte	0xfe
	.byte	0xb
	.long	0x90
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1532
	.byte	0xc
	.byte	0xff
	.byte	0xb
	.long	0x90
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1533
	.byte	0xc
	.value	0x102
	.byte	0xb
	.long	0x90
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1534
	.byte	0xc
	.value	0x103
	.byte	0xb
	.long	0x90
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1535
	.byte	0xc
	.value	0x107
	.byte	0x14
	.long	0x2c7f
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1465
	.byte	0xc
	.value	0x10b
	.byte	0xb
	.long	0x90
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1536
	.byte	0xc
	.value	0x10f
	.byte	0xb
	.long	0x90
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1537
	.byte	0xc
	.value	0x113
	.byte	0x16
	.long	0x2e97
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1538
	.byte	0xc
	.value	0x116
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1539
	.byte	0xc
	.value	0x119
	.byte	0x11
	.long	0x574
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1540
	.byte	0xc
	.value	0x11c
	.byte	0x14
	.long	0x2c7f
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x2aa8
	.uleb128 0x16
	.long	.LASF1541
	.byte	0x10
	.byte	0xd
	.byte	0xe3
	.long	0x2cb8
	.uleb128 0x3
	.long	.LASF1542
	.byte	0xd
	.byte	0xe5
	.byte	0xf
	.long	0x3242
	.byte	0
	.uleb128 0x3
	.long	.LASF1543
	.byte	0xd
	.byte	0xe6
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1544
	.byte	0xd
	.byte	0xe7
	.byte	0xb
	.long	0x89
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x2c84
	.uleb128 0x8
	.long	0x2953
	.uleb128 0x2c
	.long	.LASF1545
	.value	0x140
	.byte	0xe
	.byte	0x53
	.byte	0x10
	.long	0x2e97
	.uleb128 0x7
	.string	"mo"
	.byte	0xe
	.byte	0x55
	.byte	0xe
	.long	0x2f55
	.byte	0
	.uleb128 0x3
	.long	.LASF1546
	.byte	0xe
	.byte	0x56
	.byte	0x13
	.long	0x2f2a
	.byte	0x8
	.uleb128 0x7
	.string	"cmd"
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.long	0x2eff
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1547
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0x5ff
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1548
	.byte	0xe
	.byte	0x5e
	.byte	0xe
	.long	0x5ff
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1549
	.byte	0xe
	.byte	0x60
	.byte	0x16
	.long	0x5ff
	.byte	0x1c
	.uleb128 0x7
	.string	"bob"
	.byte	0xe
	.byte	0x62
	.byte	0x16
	.long	0x5ff
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1532
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.long	0x90
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1550
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.long	0x90
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1551
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x90
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1552
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x2f5a
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1553
	.byte	0xe
	.byte	0x6d
	.byte	0xe
	.long	0x2f6a
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1554
	.byte	0xe
	.byte	0x6e
	.byte	0xe
	.long	0x506
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1555
	.byte	0xe
	.byte	0x71
	.byte	0xb
	.long	0x2f7a
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1556
	.byte	0xe
	.byte	0x72
	.byte	0x12
	.long	0x1a3
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1557
	.byte	0xe
	.byte	0x75
	.byte	0x12
	.long	0x1a3
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1558
	.byte	0xe
	.byte	0x77
	.byte	0xe
	.long	0x2f8a
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF178
	.byte	0xe
	.byte	0x78
	.byte	0xb
	.long	0x2f7a
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1559
	.byte	0xe
	.byte	0x79
	.byte	0xb
	.long	0x2f7a
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1560
	.byte	0xe
	.byte	0x7c
	.byte	0xb
	.long	0x90
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1561
	.byte	0xe
	.byte	0x7d
	.byte	0xb
	.long	0x90
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1562
	.byte	0xe
	.byte	0x81
	.byte	0xb
	.long	0x90
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1563
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1564
	.byte	0xe
	.byte	0x87
	.byte	0xb
	.long	0x90
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1565
	.byte	0xe
	.byte	0x88
	.byte	0xb
	.long	0x90
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1566
	.byte	0xe
	.byte	0x89
	.byte	0xb
	.long	0x90
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1567
	.byte	0xe
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1568
	.byte	0xe
	.byte	0x8f
	.byte	0xb
	.long	0x90
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1569
	.byte	0xe
	.byte	0x90
	.byte	0xb
	.long	0x90
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1570
	.byte	0xe
	.byte	0x93
	.byte	0xe
	.long	0x2f55
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1571
	.byte	0xe
	.byte	0x96
	.byte	0xb
	.long	0x90
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1572
	.byte	0xe
	.byte	0x9a
	.byte	0xb
	.long	0x90
	.byte	0xfc
	.uleb128 0x18
	.long	.LASF1573
	.byte	0x9e
	.byte	0xb
	.long	0x90
	.value	0x100
	.uleb128 0x18
	.long	.LASF1574
	.byte	0xa1
	.byte	0xf
	.long	0x2f9a
	.value	0x108
	.uleb128 0x18
	.long	.LASF1575
	.byte	0xa4
	.byte	0xe
	.long	0x506
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x2cc2
	.uleb128 0x13
	.long	.LASF1576
	.byte	0xc
	.value	0x11e
	.long	0x2aa8
	.uleb128 0x12
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.long	0x2eff
	.uleb128 0x3
	.long	.LASF1577
	.byte	0xf
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1578
	.byte	0xf
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1579
	.byte	0xf
	.byte	0x28
	.byte	0xb
	.long	0x89
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1580
	.byte	0xf
	.byte	0x29
	.byte	0xb
	.long	0x89
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1581
	.byte	0xf
	.byte	0x2a
	.byte	0xa
	.long	0x512
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1582
	.byte	0xf
	.byte	0x2b
	.byte	0xa
	.long	0x512
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF1583
	.byte	0xf
	.byte	0x2c
	.byte	0x3
	.long	0x2ea8
	.uleb128 0x9
	.long	0x6b
	.byte	0xe
	.byte	0x36
	.byte	0x1
	.long	0x2f2a
	.uleb128 0x2
	.long	.LASF1584
	.byte	0
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1587
	.byte	0xe
	.byte	0x3e
	.byte	0x3
	.long	0x2f0b
	.uleb128 0x9
	.long	0x6b
	.byte	0xe
	.byte	0x45
	.byte	0x1
	.long	0x2f55
	.uleb128 0x2
	.long	.LASF1588
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1589
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1590
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x2e9c
	.uleb128 0xa
	.long	0x90
	.long	0x2f6a
	.uleb128 0xe
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x506
	.long	0x2f7a
	.uleb128 0xe
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x90
	.long	0x2f8a
	.uleb128 0xe
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	0x506
	.long	0x2f9a
	.uleb128 0xe
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x29be
	.long	0x2faa
	.uleb128 0xe
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF1591
	.byte	0xe
	.byte	0xa6
	.byte	0x3
	.long	0x2cc2
	.uleb128 0xc
	.long	.LASF1592
	.byte	0x10
	.byte	0x3c
	.byte	0x13
	.long	0xce
	.uleb128 0xc
	.long	.LASF1593
	.byte	0x10
	.byte	0x54
	.byte	0x19
	.long	0x105
	.uleb128 0xc
	.long	.LASF1594
	.byte	0x10
	.byte	0x5c
	.byte	0x11
	.long	0x506
	.uleb128 0xc
	.long	.LASF1595
	.byte	0x10
	.byte	0x60
	.byte	0x11
	.long	0x506
	.uleb128 0xc
	.long	.LASF1596
	.byte	0x10
	.byte	0x84
	.byte	0x11
	.long	0x506
	.uleb128 0xc
	.long	.LASF1597
	.byte	0x10
	.byte	0x9e
	.byte	0xd
	.long	0x90
	.uleb128 0xa
	.long	0x2faa
	.long	0x300e
	.uleb128 0xe
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF1598
	.byte	0x10
	.byte	0xd4
	.byte	0x11
	.long	0x2ffe
	.uleb128 0xc
	.long	.LASF1559
	.byte	0x10
	.byte	0xe9
	.byte	0xe
	.long	0x2f7a
	.uleb128 0x12
	.byte	0x8
	.byte	0xd
	.byte	0x47
	.long	0x3045
	.uleb128 0x7
	.string	"x"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x5ff
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0x5ff
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF1599
	.byte	0xd
	.byte	0x4c
	.byte	0x3
	.long	0x3026
	.uleb128 0x12
	.byte	0x28
	.byte	0xd
	.byte	0x58
	.long	0x3088
	.uleb128 0x3
	.long	.LASF1519
	.byte	0xd
	.byte	0x5a
	.byte	0x10
	.long	0x723
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xd
	.byte	0x5b
	.byte	0xe
	.long	0x5ff
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0x5ff
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xd
	.byte	0x5d
	.byte	0xe
	.long	0x5ff
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF1600
	.byte	0xd
	.byte	0x5f
	.byte	0x3
	.long	0x3051
	.uleb128 0x12
	.byte	0x80
	.byte	0xd
	.byte	0x65
	.long	0x316d
	.uleb128 0x3
	.long	.LASF1601
	.byte	0xd
	.byte	0x67
	.byte	0xd
	.long	0x5ff
	.byte	0
	.uleb128 0x3
	.long	.LASF1602
	.byte	0xd
	.byte	0x68
	.byte	0xd
	.long	0x5ff
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1603
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x89
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1604
	.byte	0xd
	.byte	0x6a
	.byte	0xb
	.long	0x89
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1605
	.byte	0xd
	.byte	0x6b
	.byte	0xb
	.long	0x89
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1606
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x89
	.byte	0xe
	.uleb128 0x7
	.string	"tag"
	.byte	0xd
	.byte	0x6d
	.byte	0xb
	.long	0x89
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1607
	.byte	0xd
	.byte	0x70
	.byte	0xa
	.long	0x90
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1608
	.byte	0xd
	.byte	0x73
	.byte	0xd
	.long	0x2f55
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1609
	.byte	0xd
	.byte	0x76
	.byte	0xa
	.long	0x2f7a
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1610
	.byte	0xd
	.byte	0x79
	.byte	0x11
	.long	0x3088
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1530
	.byte	0xd
	.byte	0x7c
	.byte	0xa
	.long	0x90
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1611
	.byte	0xd
	.byte	0x7f
	.byte	0xd
	.long	0x2f55
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1612
	.byte	0xd
	.byte	0x82
	.byte	0xb
	.long	0x72
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1613
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x90
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1614
	.byte	0xd
	.byte	0x85
	.byte	0x15
	.long	0x322c
	.byte	0x78
	.byte	0
	.uleb128 0x16
	.long	.LASF1615
	.byte	0x58
	.byte	0xd
	.byte	0xb3
	.long	0x322c
	.uleb128 0x7
	.string	"v1"
	.byte	0xd
	.byte	0xb6
	.byte	0xf
	.long	0x3278
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xd
	.byte	0xb7
	.byte	0xf
	.long	0x3278
	.byte	0x8
	.uleb128 0x7
	.string	"dx"
	.byte	0xd
	.byte	0xba
	.byte	0xd
	.long	0x5ff
	.byte	0x10
	.uleb128 0x7
	.string	"dy"
	.byte	0xd
	.byte	0xbb
	.byte	0xd
	.long	0x5ff
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1481
	.byte	0xd
	.byte	0xbe
	.byte	0xb
	.long	0x89
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1606
	.byte	0xd
	.byte	0xbf
	.byte	0xb
	.long	0x89
	.byte	0x1a
	.uleb128 0x7
	.string	"tag"
	.byte	0xd
	.byte	0xc0
	.byte	0xb
	.long	0x89
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1616
	.byte	0xd
	.byte	0xc4
	.byte	0xb
	.long	0x51e
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1617
	.byte	0xd
	.byte	0xc8
	.byte	0xd
	.long	0x327d
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1618
	.byte	0xd
	.byte	0xcb
	.byte	0x11
	.long	0x326c
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1619
	.byte	0xd
	.byte	0xcf
	.byte	0xf
	.long	0x3242
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1620
	.byte	0xd
	.byte	0xd0
	.byte	0xf
	.long	0x3242
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1530
	.byte	0xd
	.byte	0xd3
	.byte	0xa
	.long	0x90
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1612
	.byte	0xd
	.byte	0xd6
	.byte	0xb
	.long	0x72
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x3231
	.uleb128 0x8
	.long	0x316d
	.uleb128 0x5
	.long	.LASF1621
	.byte	0xd
	.byte	0x87
	.byte	0x3
	.long	0x3094
	.uleb128 0x8
	.long	0x3236
	.uleb128 0x9
	.long	0x6b
	.byte	0xd
	.byte	0xa9
	.byte	0x1
	.long	0x326c
	.uleb128 0x2
	.long	.LASF1622
	.byte	0
	.uleb128 0x2
	.long	.LASF1623
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1624
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1625
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1626
	.byte	0xd
	.byte	0xaf
	.byte	0x3
	.long	0x3247
	.uleb128 0x8
	.long	0x3045
	.uleb128 0xa
	.long	0x5ff
	.long	0x328d
	.uleb128 0xe
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x2faa
	.uleb128 0x21
	.long	.LASF1627
	.byte	0x11
	.value	0x105
	.byte	0xd
	.long	0x2f7a
	.uleb128 0x22
	.long	0x301a
	.byte	0x3a
	.uleb128 0x9
	.byte	0x3
	.quad	maxammo
	.uleb128 0x22
	.long	0x3292
	.byte	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	clipammo
	.uleb128 0x14
	.long	.LASF1632
	.byte	0x13
	.byte	0x56
	.byte	0x6
	.long	0x32db
	.uleb128 0x6
	.long	0x90
	.uleb128 0x6
	.long	0x90
	.uleb128 0x6
	.long	0x90
	.byte	0
	.uleb128 0x17
	.long	.LASF1628
	.byte	0x7
	.byte	0x28
	.byte	0x9
	.long	0x5ff
	.long	0x32f6
	.uleb128 0x6
	.long	0x5ff
	.uleb128 0x6
	.long	0x5ff
	.byte	0
	.uleb128 0x17
	.long	.LASF1629
	.byte	0x12
	.byte	0x7f
	.byte	0x1
	.long	0x647
	.long	0x331b
	.uleb128 0x6
	.long	0x5ff
	.uleb128 0x6
	.long	0x5ff
	.uleb128 0x6
	.long	0x5ff
	.uleb128 0x6
	.long	0x5ff
	.byte	0
	.uleb128 0x17
	.long	.LASF1630
	.byte	0x11
	.byte	0x6e
	.byte	0x1
	.long	0x2f55
	.long	0x3340
	.uleb128 0x6
	.long	0x5ff
	.uleb128 0x6
	.long	0x5ff
	.uleb128 0x6
	.long	0x5ff
	.uleb128 0x6
	.long	0x27fc
	.byte	0
	.uleb128 0x2d
	.long	.LASF1665
	.byte	0x15
	.byte	0x24
	.byte	0x5
	.long	0x90
	.uleb128 0x17
	.long	.LASF1631
	.byte	0x11
	.byte	0x75
	.byte	0x9
	.long	0x506
	.long	0x3367
	.uleb128 0x6
	.long	0x2f55
	.uleb128 0x6
	.long	0x240f
	.byte	0
	.uleb128 0x2e
	.long	.LASF1666
	.byte	0x16
	.byte	0x2b
	.byte	0x6
	.uleb128 0x14
	.long	.LASF1633
	.byte	0x11
	.byte	0x53
	.byte	0x6
	.long	0x3381
	.uleb128 0x6
	.long	0x328d
	.byte	0
	.uleb128 0x14
	.long	.LASF1634
	.byte	0x11
	.byte	0x74
	.byte	0x7
	.long	0x3393
	.uleb128 0x6
	.long	0x2f55
	.byte	0
	.uleb128 0x14
	.long	.LASF1635
	.byte	0x14
	.byte	0x3b
	.byte	0x1
	.long	0x33aa
	.uleb128 0x6
	.long	0x72
	.uleb128 0x6
	.long	0x90
	.byte	0
	.uleb128 0x14
	.long	.LASF1636
	.byte	0x13
	.byte	0x59
	.byte	0x6
	.long	0x33bd
	.uleb128 0x6
	.long	0x9e
	.uleb128 0x1d
	.byte	0
	.uleb128 0x19
	.long	.LASF1643
	.value	0x307
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3464
	.uleb128 0xb
	.long	.LASF1535
	.value	0x308
	.byte	0xb
	.long	0x2f55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF1637
	.value	0x309
	.byte	0xb
	.long	0x2f55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF1638
	.value	0x30a
	.byte	0xb
	.long	0x2f55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.long	.LASF1479
	.value	0x30b
	.byte	0x9
	.long	0x90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.string	"ang"
	.value	0x30d
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF1640
	.value	0x30e
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF1537
	.value	0x30f
	.byte	0xf
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF1641
	.value	0x310
	.byte	0xd
	.long	0x5ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF1642
	.value	0x311
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.long	.LASF1644
	.value	0x29c
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x34bd
	.uleb128 0xb
	.long	.LASF1638
	.value	0x29d
	.byte	0xb
	.long	0x2f55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF1535
	.value	0x29e
	.byte	0xb
	.long	0x2f55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF1645
	.value	0x2a0
	.byte	0x10
	.long	0x27fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"mo"
	.value	0x2a1
	.byte	0xd
	.long	0x2f55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF1646
	.value	0x153
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3533
	.uleb128 0xb
	.long	.LASF1606
	.value	0x154
	.byte	0xb
	.long	0x2f55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF1647
	.value	0x155
	.byte	0xb
	.long	0x2f55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.long	.LASF1537
	.value	0x157
	.byte	0xf
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"i"
	.value	0x158
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF1648
	.value	0x159
	.byte	0xd
	.long	0x5ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF1649
	.value	0x15a
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF1653
	.byte	0x1
	.value	0x122
	.byte	0x1
	.long	0x506
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3575
	.uleb128 0xb
	.long	.LASF1537
	.value	0x123
	.byte	0xd
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF1650
	.value	0x124
	.byte	0x17
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x30
	.long	.LASF1651
	.byte	0x1
	.value	0x112
	.byte	0x1
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x35b3
	.uleb128 0xb
	.long	.LASF1537
	.value	0x113
	.byte	0xd
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF1652
	.value	0x114
	.byte	0xa
	.long	0x148
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x23
	.long	.LASF1654
	.byte	0xfc
	.long	0x506
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ff
	.uleb128 0x11
	.long	.LASF1537
	.byte	0xfd
	.byte	0xd
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF1551
	.byte	0xfe
	.byte	0x8
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF1655
	.value	0x100
	.byte	0xa
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF1656
	.byte	0xe5
	.long	0x506
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x363b
	.uleb128 0x11
	.long	.LASF1537
	.byte	0xe6
	.byte	0xd
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"num"
	.byte	0xe7
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF1657
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.long	0x506
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a4
	.uleb128 0x11
	.long	.LASF1537
	.byte	0xa9
	.byte	0xd
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF1658
	.byte	0xaa
	.byte	0x10
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LASF1659
	.byte	0xab
	.byte	0xb
	.long	0x506
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF1660
	.byte	0xad
	.byte	0xd
	.long	0x506
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF1661
	.byte	0xae
	.byte	0xd
	.long	0x506
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF1662
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0x506
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF1537
	.byte	0x4b
	.byte	0xd
	.long	0x328d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF178
	.byte	0x4c
	.byte	0xe
	.long	0x1e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.string	"num"
	.byte	0x4d
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF1663
	.byte	0x4f
	.byte	0xa
	.long	0x90
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
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.sleb128 9
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.sleb128 5
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x24
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
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
.LASF1589:
	.string	"CF_GODMODE"
.LASF179:
	.string	"upstate"
.LASF101:
	.string	"sfx_sgtsit"
.LASF981:
	.string	"S_BSPI_RUN4"
.LASF982:
	.string	"S_BSPI_RUN5"
.LASF983:
	.string	"S_BSPI_RUN6"
.LASF984:
	.string	"S_BSPI_RUN7"
.LASF985:
	.string	"S_BSPI_RUN8"
.LASF986:
	.string	"S_BSPI_RUN9"
.LASF104:
	.string	"sfx_cybsit"
.LASF270:
	.string	"SPR_YSKU"
.LASF70:
	.string	"sfx_sawup"
.LASF1570:
	.string	"attacker"
.LASF633:
	.string	"S_FIRE10"
.LASF634:
	.string	"S_FIRE11"
.LASF635:
	.string	"S_FIRE12"
.LASF636:
	.string	"S_FIRE13"
.LASF637:
	.string	"S_FIRE14"
.LASF638:
	.string	"S_FIRE15"
.LASF639:
	.string	"S_FIRE16"
.LASF640:
	.string	"S_FIRE17"
.LASF641:
	.string	"S_FIRE18"
.LASF642:
	.string	"S_FIRE19"
.LASF1455:
	.string	"MT_MISC84"
.LASF1388:
	.string	"MT_MISC20"
.LASF1201:
	.string	"S_MEGA2"
.LASF1202:
	.string	"S_MEGA3"
.LASF1203:
	.string	"S_MEGA4"
.LASF1392:
	.string	"MT_MISC24"
.LASF1393:
	.string	"MT_MISC25"
.LASF1395:
	.string	"MT_MISC26"
.LASF1396:
	.string	"MT_MISC27"
.LASF1397:
	.string	"MT_MISC28"
.LASF1400:
	.string	"MT_MISC29"
.LASF832:
	.string	"S_SARG_PAIN2"
.LASF1536:
	.string	"threshold"
.LASF31:
	.string	"wp_pistol"
.LASF1511:
	.string	"MF_COUNTKILL"
.LASF311:
	.string	"SPR_COL1"
.LASF312:
	.string	"SPR_COL2"
.LASF313:
	.string	"SPR_COL3"
.LASF314:
	.string	"SPR_COL4"
.LASF323:
	.string	"SPR_COL5"
.LASF317:
	.string	"SPR_COL6"
.LASF166:
	.string	"sfx_skesit"
.LASF147:
	.string	"sfx_tink"
.LASF643:
	.string	"S_FIRE20"
.LASF644:
	.string	"S_FIRE21"
.LASF645:
	.string	"S_FIRE22"
.LASF646:
	.string	"S_FIRE23"
.LASF647:
	.string	"S_FIRE24"
.LASF297:
	.string	"SPR_COLU"
.LASF649:
	.string	"S_FIRE26"
.LASF650:
	.string	"S_FIRE27"
.LASF651:
	.string	"S_FIRE28"
.LASF652:
	.string	"S_FIRE29"
.LASF183:
	.string	"flashstate"
.LASF1577:
	.string	"forwardmove"
.LASF1401:
	.string	"MT_MISC30"
.LASF1315:
	.string	"action"
.LASF1403:
	.string	"MT_MISC32"
.LASF1129:
	.string	"S_BRAINEYE1"
.LASF994:
	.string	"S_BSPI_PAIN"
.LASF1406:
	.string	"MT_MISC35"
.LASF466:
	.string	"S_BFGEXP"
.LASF45:
	.string	"am_misl"
.LASF1409:
	.string	"MT_MISC38"
.LASF1410:
	.string	"MT_MISC39"
.LASF1603:
	.string	"floorpic"
.LASF996:
	.string	"S_BSPI_DIE1"
.LASF1486:
	.string	"NUMPSPRITES"
.LASF1628:
	.string	"FixedMul"
.LASF1001:
	.string	"S_BSPI_DIE6"
.LASF1624:
	.string	"ST_POSITIVE"
.LASF1547:
	.string	"viewz"
.LASF1279:
	.string	"S_REDTORCH3"
.LASF1654:
	.string	"P_GiveArmor"
.LASF892:
	.string	"S_BOSS_RAISE1"
.LASF181:
	.string	"readystate"
.LASF1335:
	.string	"MT_HEAD"
.LASF894:
	.string	"S_BOSS_RAISE3"
.LASF653:
	.string	"S_FIRE30"
.LASF798:
	.string	"S_TROO_PAIN"
.LASF1087:
	.string	"S_SSWV_DIE1"
.LASF897:
	.string	"S_BOSS_RAISE6"
.LASF1089:
	.string	"S_SSWV_DIE3"
.LASF1090:
	.string	"S_SSWV_DIE4"
.LASF1091:
	.string	"S_SSWV_DIE5"
.LASF265:
	.string	"SPR_BKEY"
.LASF909:
	.string	"S_BOS2_ATK1"
.LASF910:
	.string	"S_BOS2_ATK2"
.LASF911:
	.string	"S_BOS2_ATK3"
.LASF299:
	.string	"SPR_GOR1"
.LASF306:
	.string	"SPR_GOR2"
.LASF307:
	.string	"SPR_GOR3"
.LASF308:
	.string	"SPR_GOR4"
.LASF309:
	.string	"SPR_GOR5"
.LASF154:
	.string	"sfx_bospit"
.LASF440:
	.string	"S_TBALL1"
.LASF666:
	.string	"S_SKEL_RUN1"
.LASF667:
	.string	"S_SKEL_RUN2"
.LASF668:
	.string	"S_SKEL_RUN3"
.LASF669:
	.string	"S_SKEL_RUN4"
.LASF670:
	.string	"S_SKEL_RUN5"
.LASF671:
	.string	"S_SKEL_RUN6"
.LASF672:
	.string	"S_SKEL_RUN7"
.LASF149:
	.string	"sfx_bdcls"
.LASF674:
	.string	"S_SKEL_RUN9"
.LASF34:
	.string	"wp_missile"
.LASF1152:
	.string	"S_BEXP2"
.LASF1463:
	.string	"seestate"
.LASF847:
	.string	"S_HEAD_ATK1"
.LASF848:
	.string	"S_HEAD_ATK2"
.LASF849:
	.string	"S_HEAD_ATK3"
.LASF1618:
	.string	"slopetype"
.LASF1101:
	.string	"S_SSWV_RAISE1"
.LASF1102:
	.string	"S_SSWV_RAISE2"
.LASF1103:
	.string	"S_SSWV_RAISE3"
.LASF1104:
	.string	"S_SSWV_RAISE4"
.LASF1105:
	.string	"S_SSWV_RAISE5"
.LASF174:
	.string	"angle"
.LASF1330:
	.string	"MT_FATSHOT"
.LASF1662:
	.string	"P_GiveAmmo"
.LASF285:
	.string	"SPR_CELL"
.LASF286:
	.string	"SPR_CELP"
.LASF1267:
	.string	"S_HEARTCOL"
.LASF1613:
	.string	"linecount"
.LASF1543:
	.string	"numlines"
.LASF1184:
	.string	"S_MEDI"
.LASF1191:
	.string	"S_PINV"
.LASF1379:
	.string	"MT_INS"
.LASF1422:
	.string	"MT_MISC51"
.LASF1423:
	.string	"MT_MISC52"
.LASF1377:
	.string	"MT_INV"
.LASF1425:
	.string	"MT_MISC54"
.LASF1281:
	.string	"S_BTORCHSHRT"
.LASF402:
	.string	"S_MISSILEUP"
.LASF1428:
	.string	"MT_MISC57"
.LASF1429:
	.string	"MT_MISC58"
.LASF1430:
	.string	"MT_MISC59"
.LASF579:
	.string	"S_SPOS_RAISE1"
.LASF64:
	.string	"sfx_dshtgn"
.LASF373:
	.string	"S_SGUNFLASH1"
.LASF374:
	.string	"S_SGUNFLASH2"
.LASF921:
	.string	"S_BOS2_RAISE1"
.LASF922:
	.string	"S_BOS2_RAISE2"
.LASF923:
	.string	"S_BOS2_RAISE3"
.LASF924:
	.string	"S_BOS2_RAISE4"
.LASF925:
	.string	"S_BOS2_RAISE5"
.LASF926:
	.string	"S_BOS2_RAISE6"
.LASF927:
	.string	"S_BOS2_RAISE7"
.LASF686:
	.string	"S_SKEL_PAIN"
.LASF1173:
	.string	"S_RKEY"
.LASF200:
	.string	"next"
.LASF1635:
	.string	"S_StartSound"
.LASF76:
	.string	"sfx_firsht"
.LASF68:
	.string	"sfx_plasma"
.LASF355:
	.string	"S_PISTOLUP"
.LASF1041:
	.string	"S_CYBER_DIE8"
.LASF81:
	.string	"sfx_dorcls"
.LASF1431:
	.string	"MT_MISC60"
.LASF1432:
	.string	"MT_MISC61"
.LASF1433:
	.string	"MT_MISC62"
.LASF1434:
	.string	"MT_MISC63"
.LASF1435:
	.string	"MT_MISC64"
.LASF1436:
	.string	"MT_MISC65"
.LASF1437:
	.string	"MT_MISC66"
.LASF1438:
	.string	"MT_MISC67"
.LASF470:
	.string	"S_EXPLODE1"
.LASF471:
	.string	"S_EXPLODE2"
.LASF472:
	.string	"S_EXPLODE3"
.LASF661:
	.string	"S_TRACEEXP1"
.LASF662:
	.string	"S_TRACEEXP2"
.LASF663:
	.string	"S_TRACEEXP3"
.LASF1049:
	.string	"S_PAIN_RUN5"
.LASF1151:
	.string	"S_BEXP"
.LASF1050:
	.string	"S_PAIN_RUN6"
.LASF1571:
	.string	"extralight"
.LASF1268:
	.string	"S_HEARTCOL2"
.LASF447:
	.string	"S_RBALLX1"
.LASF449:
	.string	"S_RBALLX3"
.LASF67:
	.string	"sfx_dbload"
.LASF1477:
	.string	"height"
.LASF1362:
	.string	"MT_TELEPORTMAN"
.LASF742:
	.string	"S_FATT_RAISE2"
.LASF1534:
	.string	"movecount"
.LASF1653:
	.string	"P_GivePower"
.LASF1441:
	.string	"MT_MISC70"
.LASF230:
	.string	"SPR_IFOG"
.LASF1443:
	.string	"MT_MISC72"
.LASF1444:
	.string	"MT_MISC73"
.LASF1445:
	.string	"MT_MISC74"
.LASF1446:
	.string	"MT_MISC75"
.LASF1447:
	.string	"MT_MISC76"
.LASF1274:
	.string	"S_GREENTORCH2"
.LASF1275:
	.string	"S_GREENTORCH3"
.LASF1276:
	.string	"S_GREENTORCH4"
.LASF1115:
	.string	"S_COMMKEEN9"
.LASF764:
	.string	"S_CPOS_PAIN2"
.LASF987:
	.string	"S_BSPI_RUN10"
.LASF988:
	.string	"S_BSPI_RUN11"
.LASF989:
	.string	"S_BSPI_RUN12"
.LASF1071:
	.string	"S_SSWV_RUN1"
.LASF1072:
	.string	"S_SSWV_RUN2"
.LASF1073:
	.string	"S_SSWV_RUN3"
.LASF1074:
	.string	"S_SSWV_RUN4"
.LASF1075:
	.string	"S_SSWV_RUN5"
.LASF1076:
	.string	"S_SSWV_RUN6"
.LASF1077:
	.string	"S_SSWV_RUN7"
.LASF1078:
	.string	"S_SSWV_RUN8"
.LASF964:
	.string	"S_SPID_DIE1"
.LASF184:
	.string	"weaponinfo_t"
.LASF161:
	.string	"sfx_sssit"
.LASF800:
	.string	"S_TROO_DIE1"
.LASF801:
	.string	"S_TROO_DIE2"
.LASF802:
	.string	"S_TROO_DIE3"
.LASF803:
	.string	"S_TROO_DIE4"
.LASF804:
	.string	"S_TROO_DIE5"
.LASF10:
	.string	"shareware"
.LASF1181:
	.string	"S_YSKULL"
.LASF1182:
	.string	"S_YSKULL2"
.LASF283:
	.string	"SPR_ROCK"
.LASF1354:
	.string	"MT_ROCKET"
.LASF1452:
	.string	"MT_MISC81"
.LASF1453:
	.string	"MT_MISC82"
.LASF1454:
	.string	"MT_MISC83"
.LASF759:
	.string	"S_CPOS_ATK1"
.LASF760:
	.string	"S_CPOS_ATK2"
.LASF761:
	.string	"S_CPOS_ATK3"
.LASF762:
	.string	"S_CPOS_ATK4"
.LASF1321:
	.string	"MT_PLAYER"
.LASF1637:
	.string	"inflictor"
.LASF1189:
	.string	"S_SOUL5"
.LASF295:
	.string	"SPR_SHOT"
.LASF488:
	.string	"S_IFOG2"
.LASF489:
	.string	"S_IFOG3"
.LASF490:
	.string	"S_IFOG4"
.LASF491:
	.string	"S_IFOG5"
.LASF224:
	.string	"SPR_PLSE"
.LASF216:
	.string	"SPR_PLSF"
.LASF215:
	.string	"SPR_PLSG"
.LASF884:
	.string	"S_BOSS_PAIN2"
.LASF1597:
	.string	"consoleplayer"
.LASF584:
	.string	"S_VILE_STND"
.LASF1112:
	.string	"S_COMMKEEN6"
.LASF1113:
	.string	"S_COMMKEEN7"
.LASF1114:
	.string	"S_COMMKEEN8"
.LASF223:
	.string	"SPR_PLSS"
.LASF963:
	.string	"S_SPID_PAIN2"
.LASF94:
	.string	"sfx_oof"
.LASF1478:
	.string	"mass"
.LASF336:
	.string	"SPR_POB1"
.LASF337:
	.string	"SPR_POB2"
.LASF1185:
	.string	"S_SOUL"
.LASF126:
	.string	"sfx_skldth"
.LASF1195:
	.string	"S_PSTR"
.LASF18:
	.string	"sk_hard"
.LASF1027:
	.string	"S_CYBER_ATK1"
.LASF1028:
	.string	"S_CYBER_ATK2"
.LASF1029:
	.string	"S_CYBER_ATK3"
.LASF1030:
	.string	"S_CYBER_ATK4"
.LASF1031:
	.string	"S_CYBER_ATK5"
.LASF1032:
	.string	"S_CYBER_ATK6"
.LASF1222:
	.string	"S_BFUG"
.LASF262:
	.string	"SPR_FCAN"
.LASF705:
	.string	"S_FATT_STND"
.LASF1142:
	.string	"S_BRAINEXPLODE1"
.LASF1143:
	.string	"S_BRAINEXPLODE2"
.LASF1144:
	.string	"S_BRAINEXPLODE3"
.LASF426:
	.string	"S_BFGUP"
.LASF1638:
	.string	"source"
.LASF267:
	.string	"SPR_YKEY"
.LASF813:
	.string	"S_TROO_RAISE1"
.LASF814:
	.string	"S_TROO_RAISE2"
.LASF815:
	.string	"S_TROO_RAISE3"
.LASF816:
	.string	"S_TROO_RAISE4"
.LASF817:
	.string	"S_TROO_RAISE5"
.LASF1226:
	.string	"S_PLAS"
.LASF1108:
	.string	"S_COMMKEEN2"
.LASF1109:
	.string	"S_COMMKEEN3"
.LASF1110:
	.string	"S_COMMKEEN4"
.LASF1111:
	.string	"S_COMMKEEN5"
.LASF492:
	.string	"S_PLAY"
.LASF1058:
	.string	"S_PAIN_DIE2"
.LASF1059:
	.string	"S_PAIN_DIE3"
.LASF1060:
	.string	"S_PAIN_DIE4"
.LASF133:
	.string	"sfx_pedth"
.LASF1062:
	.string	"S_PAIN_DIE6"
.LASF1332:
	.string	"MT_TROOP"
.LASF613:
	.string	"S_VILE_PAIN2"
.LASF741:
	.string	"S_FATT_RAISE1"
.LASF35:
	.string	"wp_plasma"
.LASF743:
	.string	"S_FATT_RAISE3"
.LASF744:
	.string	"S_FATT_RAISE4"
.LASF745:
	.string	"S_FATT_RAISE5"
.LASF746:
	.string	"S_FATT_RAISE6"
.LASF747:
	.string	"S_FATT_RAISE7"
.LASF748:
	.string	"S_FATT_RAISE8"
.LASF1493:
	.string	"MF_NOBLOCKMAP"
.LASF457:
	.string	"S_ROCKET"
.LASF1353:
	.string	"MT_HEADSHOT"
.LASF1515:
	.string	"MF_TRANSLATION"
.LASF1616:
	.string	"sidenum"
.LASF1633:
	.string	"P_DropWeapon"
.LASF1010:
	.string	"S_ARACH_PLAZ"
.LASF1249:
	.string	"S_STALAGTITE"
.LASF851:
	.string	"S_HEAD_PAIN2"
.LASF852:
	.string	"S_HEAD_PAIN3"
.LASF173:
	.string	"byte"
.LASF509:
	.string	"S_PLAY_XDIE2"
.LASF27:
	.string	"it_redskull"
.LASF136:
	.string	"sfx_bgact"
.LASF1360:
	.string	"MT_TFOG"
.LASF560:
	.string	"S_SPOS_ATK1"
.LASF561:
	.string	"S_SPOS_ATK2"
.LASF562:
	.string	"S_SPOS_ATK3"
.LASF497:
	.string	"S_PLAY_ATK1"
.LASF1607:
	.string	"soundtraversed"
.LASF498:
	.string	"S_PLAY_ATK2"
.LASF250:
	.string	"SPR_APLS"
.LASF189:
	.string	"finesine"
.LASF1563:
	.string	"refire"
.LASF1646:
	.string	"P_TouchSpecialThing"
.LASF1278:
	.string	"S_REDTORCH2"
.LASF108:
	.string	"sfx_vilsit"
.LASF1280:
	.string	"S_REDTORCH4"
.LASF787:
	.string	"S_TROO_RUN1"
.LASF788:
	.string	"S_TROO_RUN2"
.LASF789:
	.string	"S_TROO_RUN3"
.LASF790:
	.string	"S_TROO_RUN4"
.LASF791:
	.string	"S_TROO_RUN5"
.LASF792:
	.string	"S_TROO_RUN6"
.LASF793:
	.string	"S_TROO_RUN7"
.LASF794:
	.string	"S_TROO_RUN8"
.LASF160:
	.string	"sfx_mandth"
.LASF241:
	.string	"SPR_CPOS"
.LASF702:
	.string	"S_FATSHOTX1"
.LASF703:
	.string	"S_FATSHOTX2"
.LASF704:
	.string	"S_FATSHOTX3"
.LASF782:
	.string	"S_CPOS_RAISE5"
.LASF783:
	.string	"S_CPOS_RAISE6"
.LASF784:
	.string	"S_CPOS_RAISE7"
.LASF30:
	.string	"wp_fist"
.LASF1471:
	.string	"missilestate"
.LASF271:
	.string	"SPR_STIM"
.LASF1496:
	.string	"MF_JUSTATTACKED"
.LASF818:
	.string	"S_SARG_STND"
.LASF1043:
	.string	"S_CYBER_DIE10"
.LASF221:
	.string	"SPR_BAL1"
.LASF222:
	.string	"SPR_BAL2"
.LASF1666:
	.string	"AM_Stop"
.LASF244:
	.string	"SPR_BAL7"
.LASF1007:
	.string	"S_BSPI_RAISE5"
.LASF1531:
	.string	"info"
.LASF130:
	.string	"sfx_bspdth"
.LASF1237:
	.string	"S_HEADSONSTICK"
.LASF165:
	.string	"sfx_skeact"
.LASF1526:
	.string	"ceilingz"
.LASF1219:
	.string	"S_SHEL"
.LASF694:
	.string	"S_SKEL_RAISE1"
.LASF209:
	.string	"SPR_SHT2"
.LASF348:
	.string	"S_PUNCH1"
.LASF349:
	.string	"S_PUNCH2"
.LASF350:
	.string	"S_PUNCH3"
.LASF351:
	.string	"S_PUNCH4"
.LASF352:
	.string	"S_PUNCH5"
.LASF699:
	.string	"S_SKEL_RAISE6"
.LASF711:
	.string	"S_FATT_RUN5"
.LASF347:
	.string	"S_PUNCHUP"
.LASF182:
	.string	"atkstate"
.LASF715:
	.string	"S_FATT_RUN9"
.LASF966:
	.string	"S_SPID_DIE3"
.LASF967:
	.string	"S_SPID_DIE4"
.LASF208:
	.string	"SPR_SHTF"
.LASF204:
	.string	"SPR_SHTG"
.LASF486:
	.string	"S_IFOG01"
.LASF487:
	.string	"S_IFOG02"
.LASF972:
	.string	"S_SPID_DIE9"
.LASF1214:
	.string	"S_AMMO"
.LASF1640:
	.string	"saved"
.LASF46:
	.string	"NUMAMMO"
.LASF1045:
	.string	"S_PAIN_RUN1"
.LASF1046:
	.string	"S_PAIN_RUN2"
.LASF1047:
	.string	"S_PAIN_RUN3"
.LASF1048:
	.string	"S_PAIN_RUN4"
.LASF330:
	.string	"SPR_HDB1"
.LASF331:
	.string	"SPR_HDB2"
.LASF332:
	.string	"SPR_HDB3"
.LASF333:
	.string	"SPR_HDB4"
.LASF334:
	.string	"SPR_HDB5"
.LASF335:
	.string	"SPR_HDB6"
.LASF1322:
	.string	"MT_POSSESSED"
.LASF380:
	.string	"S_DSGUN3"
.LASF381:
	.string	"S_DSGUN4"
.LASF175:
	.string	"type"
.LASF400:
	.string	"S_MISSILE"
.LASF1256:
	.string	"S_SKULLCOL"
.LASF1228:
	.string	"S_SHOT2"
.LASF1489:
	.string	"MF_SPECIAL"
.LASF1295:
	.string	"S_HANGTLOOKDN"
.LASF1533:
	.string	"movedir"
.LASF772:
	.string	"S_CPOS_XDIE1"
.LASF774:
	.string	"S_CPOS_XDIE3"
.LASF1503:
	.string	"MF_FLOAT"
.LASF197:
	.string	"actionf_t"
.LASF192:
	.string	"actionf_v"
.LASF291:
	.string	"SPR_MGUN"
.LASF1334:
	.string	"MT_SHADOWS"
.LASF675:
	.string	"S_SKEL_RUN10"
.LASF676:
	.string	"S_SKEL_RUN11"
.LASF677:
	.string	"S_SKEL_RUN12"
.LASF343:
	.string	"S_NULL"
.LASF1642:
	.string	"temp"
.LASF885:
	.string	"S_BOSS_DIE1"
.LASF886:
	.string	"S_BOSS_DIE2"
.LASF887:
	.string	"S_BOSS_DIE3"
.LASF888:
	.string	"S_BOSS_DIE4"
.LASF889:
	.string	"S_BOSS_DIE5"
.LASF890:
	.string	"S_BOSS_DIE6"
.LASF891:
	.string	"S_BOSS_DIE7"
.LASF1055:
	.string	"S_PAIN_PAIN"
.LASF424:
	.string	"S_BFG"
.LASF1469:
	.string	"painsound"
.LASF1591:
	.string	"player_t"
.LASF1606:
	.string	"special"
.LASF1070:
	.string	"S_SSWV_STND2"
.LASF292:
	.string	"SPR_CSAW"
.LASF1205:
	.string	"S_PMAP"
.LASF1097:
	.string	"S_SSWV_XDIE6"
.LASF1211:
	.string	"S_PVIS"
.LASF425:
	.string	"S_BFGDOWN"
.LASF1346:
	.string	"MT_BOSSBRAIN"
.LASF238:
	.string	"SPR_SKEL"
.LASF420:
	.string	"S_PLASMA1"
.LASF421:
	.string	"S_PLASMA2"
.LASF1285:
	.string	"S_GTORCHSHRT"
.LASF1544:
	.string	"firstline"
.LASF86:
	.string	"sfx_dmpain"
.LASF976:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF129:
	.string	"sfx_spidth"
.LASF236:
	.string	"SPR_FATB"
.LASF341:
	.string	"NUMSPRITES"
.LASF1641:
	.string	"thrust"
.LASF242:
	.string	"SPR_SARG"
.LASF459:
	.string	"S_BFGSHOT2"
.LASF240:
	.string	"SPR_FATT"
.LASF116:
	.string	"sfx_skeswg"
.LASF1186:
	.string	"S_SOUL2"
.LASF1187:
	.string	"S_SOUL3"
.LASF1188:
	.string	"S_SOUL4"
.LASF778:
	.string	"S_CPOS_RAISE1"
.LASF1190:
	.string	"S_SOUL6"
.LASF946:
	.string	"S_SPID_RUN1"
.LASF947:
	.string	"S_SPID_RUN2"
.LASF948:
	.string	"S_SPID_RUN3"
.LASF949:
	.string	"S_SPID_RUN4"
.LASF950:
	.string	"S_SPID_RUN5"
.LASF951:
	.string	"S_SPID_RUN6"
.LASF952:
	.string	"S_SPID_RUN7"
.LASF953:
	.string	"S_SPID_RUN8"
.LASF186:
	.string	"float"
.LASF1153:
	.string	"S_BEXP3"
.LASF1154:
	.string	"S_BEXP4"
.LASF74:
	.string	"sfx_rlaunc"
.LASF1242:
	.string	"S_DEADSTICK"
.LASF1572:
	.string	"fixedcolormap"
.LASF1558:
	.string	"weaponowned"
.LASF1363:
	.string	"MT_EXTRABFG"
.LASF532:
	.string	"S_POSS_DIE1"
.LASF533:
	.string	"S_POSS_DIE2"
.LASF534:
	.string	"S_POSS_DIE3"
.LASF535:
	.string	"S_POSS_DIE4"
.LASF536:
	.string	"S_POSS_DIE5"
.LASF362:
	.string	"S_SGUNDOWN"
.LASF211:
	.string	"SPR_CHGF"
.LASF210:
	.string	"SPR_CHGG"
.LASF752:
	.string	"S_CPOS_RUN2"
.LASF755:
	.string	"S_CPOS_RUN5"
.LASF1014:
	.string	"S_ARACH_PLEX3"
.LASF95:
	.string	"sfx_telept"
.LASF1016:
	.string	"S_ARACH_PLEX5"
.LASF757:
	.string	"S_CPOS_RUN7"
.LASF1535:
	.string	"target"
.LASF321:
	.string	"SPR_CEYE"
.LASF1648:
	.string	"delta"
.LASF1622:
	.string	"ST_HORIZONTAL"
.LASF1063:
	.string	"S_PAIN_RAISE1"
.LASF1064:
	.string	"S_PAIN_RAISE2"
.LASF1065:
	.string	"S_PAIN_RAISE3"
.LASF1066:
	.string	"S_PAIN_RAISE4"
.LASF1067:
	.string	"S_PAIN_RAISE5"
.LASF700:
	.string	"S_FATSHOT1"
.LASF701:
	.string	"S_FATSHOT2"
.LASF148:
	.string	"sfx_bdopn"
.LASF278:
	.string	"SPR_SUIT"
.LASF928:
	.string	"S_SKULL_STND"
.LASF1495:
	.string	"MF_JUSTHIT"
.LASF60:
	.string	"sfx_None"
.LASF962:
	.string	"S_SPID_PAIN"
.LASF1458:
	.string	"NUMMOBJTYPES"
.LASF260:
	.string	"SPR_BAR1"
.LASF375:
	.string	"S_DSGUN"
.LASF1254:
	.string	"S_CANDLESTIK"
.LASF53:
	.string	"pw_allmap"
.LASF1310:
	.string	"NUMSTATES"
.LASF954:
	.string	"S_SPID_RUN9"
.LASF117:
	.string	"sfx_pldeth"
.LASF441:
	.string	"S_TBALL2"
.LASF654:
	.string	"S_SMOKE1"
.LASF655:
	.string	"S_SMOKE2"
.LASF656:
	.string	"S_SMOKE3"
.LASF657:
	.string	"S_SMOKE4"
.LASF658:
	.string	"S_SMOKE5"
.LASF877:
	.string	"S_BOSS_RUN6"
.LASF878:
	.string	"S_BOSS_RUN7"
.LASF879:
	.string	"S_BOSS_RUN8"
.LASF243:
	.string	"SPR_HEAD"
.LASF1523:
	.string	"bprev"
.LASF304:
	.string	"SPR_POL1"
.LASF300:
	.string	"SPR_POL2"
.LASF303:
	.string	"SPR_POL3"
.LASF302:
	.string	"SPR_POL4"
.LASF301:
	.string	"SPR_POL5"
.LASF305:
	.string	"SPR_POL6"
.LASF1594:
	.string	"netgame"
.LASF1149:
	.string	"S_BAR1"
.LASF92:
	.string	"sfx_itemup"
.LASF1320:
	.string	"states"
.LASF1364:
	.string	"MT_MISC0"
.LASF1235:
	.string	"S_DEADTORSO"
.LASF1500:
	.string	"MF_PICKUP"
.LASF1509:
	.string	"MF_CORPSE"
.LASF377:
	.string	"S_DSGUNUP"
.LASF155:
	.string	"sfx_boscub"
.LASF1461:
	.string	"spawnstate"
.LASF1660:
	.string	"gaveammo"
.LASF786:
	.string	"S_TROO_STND2"
.LASF1306:
	.string	"S_TECH2LAMP"
.LASF80:
	.string	"sfx_doropn"
.LASF1350:
	.string	"MT_SPAWNFIRE"
.LASF1325:
	.string	"MT_FIRE"
.LASF1316:
	.string	"nextstate"
.LASF883:
	.string	"S_BOSS_PAIN"
.LASF254:
	.string	"SPR_SSWV"
.LASF1494:
	.string	"MF_AMBUSH"
.LASF1161:
	.string	"S_BON1B"
.LASF445:
	.string	"S_RBALL1"
.LASF446:
	.string	"S_RBALL2"
.LASF90:
	.string	"sfx_pepain"
.LASF58:
	.string	"INFRATICS"
.LASF1250:
	.string	"S_TALLGRNCOL"
.LASF1538:
	.string	"lastlook"
.LASF127:
	.string	"sfx_brsdth"
.LASF63:
	.string	"sfx_sgcock"
.LASF1587:
	.string	"playerstate_t"
.LASF1239:
	.string	"S_HEADONASTICK"
.LASF1647:
	.string	"toucher"
.LASF519:
	.string	"S_POSS_RUN1"
.LASF461:
	.string	"S_BFGLAND2"
.LASF462:
	.string	"S_BFGLAND3"
.LASF463:
	.string	"S_BFGLAND4"
.LASF464:
	.string	"S_BFGLAND5"
.LASF465:
	.string	"S_BFGLAND6"
.LASF525:
	.string	"S_POSS_RUN7"
.LASF526:
	.string	"S_POSS_RUN8"
.LASF508:
	.string	"S_PLAY_XDIE1"
.LASF19:
	.string	"sk_nightmare"
.LASF510:
	.string	"S_PLAY_XDIE3"
.LASF511:
	.string	"S_PLAY_XDIE4"
.LASF512:
	.string	"S_PLAY_XDIE5"
.LASF513:
	.string	"S_PLAY_XDIE6"
.LASF514:
	.string	"S_PLAY_XDIE7"
.LASF515:
	.string	"S_PLAY_XDIE8"
.LASF140:
	.string	"sfx_vilact"
.LASF1585:
	.string	"PST_DEAD"
.LASF914:
	.string	"S_BOS2_DIE1"
.LASF915:
	.string	"S_BOS2_DIE2"
.LASF916:
	.string	"S_BOS2_DIE3"
.LASF917:
	.string	"S_BOS2_DIE4"
.LASF918:
	.string	"S_BOS2_DIE5"
.LASF919:
	.string	"S_BOS2_DIE6"
.LASF920:
	.string	"S_BOS2_DIE7"
.LASF1481:
	.string	"flags"
.LASF840:
	.string	"S_SARG_RAISE2"
.LASF841:
	.string	"S_SARG_RAISE3"
.LASF484:
	.string	"S_TFOG10"
.LASF842:
	.string	"S_SARG_RAISE4"
.LASF1555:
	.string	"frags"
.LASF537:
	.string	"S_POSS_XDIE1"
.LASF538:
	.string	"S_POSS_XDIE2"
.LASF539:
	.string	"S_POSS_XDIE3"
.LASF540:
	.string	"S_POSS_XDIE4"
.LASF541:
	.string	"S_POSS_XDIE5"
.LASF542:
	.string	"S_POSS_XDIE6"
.LASF543:
	.string	"S_POSS_XDIE7"
.LASF42:
	.string	"am_clip"
.LASF545:
	.string	"S_POSS_XDIE9"
.LASF1238:
	.string	"S_GIBS"
.LASF853:
	.string	"S_HEAD_DIE1"
.LASF854:
	.string	"S_HEAD_DIE2"
.LASF855:
	.string	"S_HEAD_DIE3"
.LASF856:
	.string	"S_HEAD_DIE4"
.LASF857:
	.string	"S_HEAD_DIE5"
.LASF858:
	.string	"S_HEAD_DIE6"
.LASF706:
	.string	"S_FATT_STND2"
.LASF1229:
	.string	"S_COLU"
.LASF356:
	.string	"S_PISTOL1"
.LASF357:
	.string	"S_PISTOL2"
.LASF358:
	.string	"S_PISTOL3"
.LASF359:
	.string	"S_PISTOL4"
.LASF695:
	.string	"S_SKEL_RAISE2"
.LASF696:
	.string	"S_SKEL_RAISE3"
.LASF697:
	.string	"S_SKEL_RAISE4"
.LASF698:
	.string	"S_SKEL_RAISE5"
.LASF99:
	.string	"sfx_bgsit1"
.LASF100:
	.string	"sfx_bgsit2"
.LASF1625:
	.string	"ST_NEGATIVE"
.LASF1012:
	.string	"S_ARACH_PLEX"
.LASF1168:
	.string	"S_BON2C"
.LASF1169:
	.string	"S_BON2D"
.LASF474:
	.string	"S_TFOG01"
.LASF475:
	.string	"S_TFOG02"
.LASF293:
	.string	"SPR_LAUN"
.LASF1630:
	.string	"P_SpawnMobj"
.LASF530:
	.string	"S_POSS_PAIN"
.LASF865:
	.string	"S_BRBALL1"
.LASF866:
	.string	"S_BRBALL2"
.LASF1328:
	.string	"MT_SMOKE"
.LASF1342:
	.string	"MT_CYBORG"
.LASF1106:
	.string	"S_KEENSTND"
.LASF1479:
	.string	"damage"
.LASF570:
	.string	"S_SPOS_XDIE1"
.LASF571:
	.string	"S_SPOS_XDIE2"
.LASF572:
	.string	"S_SPOS_XDIE3"
.LASF573:
	.string	"S_SPOS_XDIE4"
.LASF574:
	.string	"S_SPOS_XDIE5"
.LASF575:
	.string	"S_SPOS_XDIE6"
.LASF576:
	.string	"S_SPOS_XDIE7"
.LASF577:
	.string	"S_SPOS_XDIE8"
.LASF578:
	.string	"S_SPOS_XDIE9"
.LASF1513:
	.string	"MF_SKULLFLY"
.LASF88:
	.string	"sfx_vipain"
.LASF1518:
	.string	"mobj_s"
.LASF1576:
	.string	"mobj_t"
.LASF1171:
	.string	"S_BKEY"
.LASF51:
	.string	"pw_invisibility"
.LASF258:
	.string	"SPR_ARM1"
.LASF259:
	.string	"SPR_ARM2"
.LASF1324:
	.string	"MT_VILE"
.LASF79:
	.string	"sfx_pstop"
.LASF25:
	.string	"it_blueskull"
.LASF1610:
	.string	"soundorg"
.LASF418:
	.string	"S_PLASMADOWN"
.LASF730:
	.string	"S_FATT_PAIN2"
.LASF1128:
	.string	"S_BRAINEYESEE"
.LASF1626:
	.string	"slopetype_t"
.LASF665:
	.string	"S_SKEL_STND2"
.LASF1018:
	.string	"S_CYBER_STND2"
.LASF1319:
	.string	"state_t"
.LASF862:
	.string	"S_HEAD_RAISE4"
.LASF1088:
	.string	"S_SSWV_DIE2"
.LASF11:
	.string	"registered"
.LASF544:
	.string	"S_POSS_XDIE8"
.LASF1218:
	.string	"S_CELP"
.LASF1260:
	.string	"S_EVILEYE"
.LASF1286:
	.string	"S_GTORCHSHRT2"
.LASF1287:
	.string	"S_GTORCHSHRT3"
.LASF1288:
	.string	"S_GTORCHSHRT4"
.LASF1548:
	.string	"viewheight"
.LASF1522:
	.string	"bnext"
.LASF1659:
	.string	"dropped"
.LASF158:
	.string	"sfx_bosdth"
.LASF719:
	.string	"S_FATT_ATK1"
.LASF252:
	.string	"SPR_CYBR"
.LASF180:
	.string	"downstate"
.LASF720:
	.string	"S_FATT_ATK2"
.LASF623:
	.string	"S_VILE_DIE10"
.LASF213:
	.string	"SPR_MISF"
.LASF212:
	.string	"SPR_MISG"
.LASF1595:
	.string	"deathmatch"
.LASF225:
	.string	"SPR_MISL"
.LASF1177:
	.string	"S_BSKULL"
.LASF164:
	.string	"sfx_keendt"
.LASF598:
	.string	"S_VILE_ATK1"
.LASF599:
	.string	"S_VILE_ATK2"
.LASF600:
	.string	"S_VILE_ATK3"
.LASF601:
	.string	"S_VILE_ATK4"
.LASF602:
	.string	"S_VILE_ATK5"
.LASF603:
	.string	"S_VILE_ATK6"
.LASF277:
	.string	"SPR_MEGA"
.LASF345:
	.string	"S_PUNCH"
.LASF606:
	.string	"S_VILE_ATK9"
.LASF327:
	.string	"SPR_SMBT"
.LASF901:
	.string	"S_BOS2_RUN1"
.LASF902:
	.string	"S_BOS2_RUN2"
.LASF903:
	.string	"S_BOS2_RUN3"
.LASF904:
	.string	"S_BOS2_RUN4"
.LASF905:
	.string	"S_BOS2_RUN5"
.LASF906:
	.string	"S_BOS2_RUN6"
.LASF907:
	.string	"S_BOS2_RUN7"
.LASF908:
	.string	"S_BOS2_RUN8"
.LASF1605:
	.string	"lightlevel"
.LASF318:
	.string	"SPR_TRE1"
.LASF319:
	.string	"SPR_TRE2"
.LASF975:
	.string	"S_BSPI_STND"
.LASF75:
	.string	"sfx_rxplod"
.LASF1470:
	.string	"meleestate"
.LASF178:
	.string	"ammo"
.LASF765:
	.string	"S_CPOS_DIE1"
.LASF326:
	.string	"SPR_TRED"
.LASF219:
	.string	"SPR_BLUD"
.LASF721:
	.string	"S_FATT_ATK3"
.LASF722:
	.string	"S_FATT_ATK4"
.LASF723:
	.string	"S_FATT_ATK5"
.LASF724:
	.string	"S_FATT_ATK6"
.LASF725:
	.string	"S_FATT_ATK7"
.LASF726:
	.string	"S_FATT_ATK8"
.LASF727:
	.string	"S_FATT_ATK9"
.LASF229:
	.string	"SPR_TFOG"
.LASF433:
	.string	"S_BLOOD1"
.LASF434:
	.string	"S_BLOOD2"
.LASF435:
	.string	"S_BLOOD3"
.LASF1317:
	.string	"misc1"
.LASF1318:
	.string	"misc2"
.LASF1579:
	.string	"angleturn"
.LASF1225:
	.string	"S_LAUN"
.LASF485:
	.string	"S_IFOG"
.LASF1644:
	.string	"P_KillMobj"
.LASF232:
	.string	"SPR_POSS"
.LASF237:
	.string	"SPR_FBXP"
.LASF1593:
	.string	"gameskill"
.LASF1034:
	.string	"S_CYBER_DIE1"
.LASF1035:
	.string	"S_CYBER_DIE2"
.LASF1036:
	.string	"S_CYBER_DIE3"
.LASF1037:
	.string	"S_CYBER_DIE4"
.LASF1038:
	.string	"S_CYBER_DIE5"
.LASF1039:
	.string	"S_CYBER_DIE6"
.LASF1040:
	.string	"S_CYBER_DIE7"
.LASF912:
	.string	"S_BOS2_PAIN"
.LASF1042:
	.string	"S_CYBER_DIE9"
.LASF110:
	.string	"sfx_pesit"
.LASF1312:
	.string	"sprite"
.LASF1457:
	.string	"MT_MISC86"
.LASF1391:
	.string	"MT_MISC23"
.LASF1255:
	.string	"S_CANDELABRA"
.LASF595:
	.string	"S_VILE_RUN10"
.LASF596:
	.string	"S_VILE_RUN11"
.LASF597:
	.string	"S_VILE_RUN12"
.LASF1643:
	.string	"P_DamageMobj"
.LASF1215:
	.string	"S_ROCK"
.LASF364:
	.string	"S_SGUN1"
.LASF365:
	.string	"S_SGUN2"
.LASF366:
	.string	"S_SGUN3"
.LASF367:
	.string	"S_SGUN4"
.LASF368:
	.string	"S_SGUN5"
.LASF369:
	.string	"S_SGUN6"
.LASF370:
	.string	"S_SGUN7"
.LASF371:
	.string	"S_SGUN8"
.LASF372:
	.string	"S_SGUN9"
.LASF1460:
	.string	"doomednum"
.LASF361:
	.string	"S_SGUN"
.LASF1251:
	.string	"S_SHRTGRNCOL"
.LASF152:
	.string	"sfx_flamst"
.LASF936:
	.string	"S_SKULL_PAIN"
.LASF1349:
	.string	"MT_SPAWNSHOT"
.LASF660:
	.string	"S_TRACER2"
.LASF1259:
	.string	"S_TECHPILLAR"
.LASF664:
	.string	"S_SKEL_STND"
.LASF256:
	.string	"SPR_BBRN"
.LASF819:
	.string	"S_SARG_STND2"
.LASF145:
	.string	"sfx_metal"
.LASF14:
	.string	"indetermined"
.LASF565:
	.string	"S_SPOS_DIE1"
.LASF566:
	.string	"S_SPOS_DIE2"
.LASF567:
	.string	"S_SPOS_DIE3"
.LASF568:
	.string	"S_SPOS_DIE4"
.LASF569:
	.string	"S_SPOS_DIE5"
.LASF1586:
	.string	"PST_REBORN"
.LASF112:
	.string	"sfx_sgtatk"
.LASF1294:
	.string	"S_HANGBNOBRAIN"
.LASF109:
	.string	"sfx_mansit"
.LASF828:
	.string	"S_SARG_ATK1"
.LASF87:
	.string	"sfx_popain"
.LASF830:
	.string	"S_SARG_ATK3"
.LASF419:
	.string	"S_PLASMAUP"
.LASF1314:
	.string	"tics"
.LASF1175:
	.string	"S_YKEY"
.LASF83:
	.string	"sfx_swtchn"
.LASF1475:
	.string	"speed"
.LASF388:
	.string	"S_DSNR1"
.LASF1057:
	.string	"S_PAIN_DIE1"
.LASF84:
	.string	"sfx_swtchx"
.LASF1650:
	.string	"power"
.LASF1061:
	.string	"S_PAIN_DIE5"
.LASF587:
	.string	"S_VILE_RUN2"
.LASF1305:
	.string	"S_TECHLAMP4"
.LASF751:
	.string	"S_CPOS_RUN1"
.LASF106:
	.string	"sfx_bspsit"
.LASF753:
	.string	"S_CPOS_RUN3"
.LASF754:
	.string	"S_CPOS_RUN4"
.LASF193:
	.string	"actionf_p1"
.LASF194:
	.string	"actionf_p2"
.LASF289:
	.string	"SPR_BPAK"
.LASF758:
	.string	"S_CPOS_RUN8"
.LASF1155:
	.string	"S_BEXP5"
.LASF167:
	.string	"sfx_skeatk"
.LASF177:
	.string	"mapthing_t"
.LASF520:
	.string	"S_POSS_RUN2"
.LASF521:
	.string	"S_POSS_RUN3"
.LASF522:
	.string	"S_POSS_RUN4"
.LASF839:
	.string	"S_SARG_RAISE1"
.LASF523:
	.string	"S_POSS_RUN5"
.LASF195:
	.string	"acp1"
.LASF196:
	.string	"acp2"
.LASF843:
	.string	"S_SARG_RAISE5"
.LASF844:
	.string	"S_SARG_RAISE6"
.LASF119:
	.string	"sfx_podth1"
.LASF120:
	.string	"sfx_podth2"
.LASF121:
	.string	"sfx_podth3"
.LASF1424:
	.string	"MT_MISC53"
.LASF328:
	.string	"SPR_SMGT"
.LASF1119:
	.string	"S_KEENPAIN"
.LASF467:
	.string	"S_BFGEXP2"
.LASF468:
	.string	"S_BFGEXP3"
.LASF469:
	.string	"S_BFGEXP4"
.LASF398:
	.string	"S_CHAINFLASH1"
.LASF399:
	.string	"S_CHAINFLASH2"
.LASF354:
	.string	"S_PISTOLDOWN"
.LASF1019:
	.string	"S_CYBER_RUN1"
.LASF1020:
	.string	"S_CYBER_RUN2"
.LASF1021:
	.string	"S_CYBER_RUN3"
.LASF1022:
	.string	"S_CYBER_RUN4"
.LASF1023:
	.string	"S_CYBER_RUN5"
.LASF1024:
	.string	"S_CYBER_RUN6"
.LASF1025:
	.string	"S_CYBER_RUN7"
.LASF1026:
	.string	"S_CYBER_RUN8"
.LASF1464:
	.string	"seesound"
.LASF1206:
	.string	"S_PMAP2"
.LASF1207:
	.string	"S_PMAP3"
.LASF1208:
	.string	"S_PMAP4"
.LASF1209:
	.string	"S_PMAP5"
.LASF1210:
	.string	"S_PMAP6"
.LASF1505:
	.string	"MF_MISSILE"
.LASF1657:
	.string	"P_GiveWeapon"
.LASF1569:
	.string	"bonuscount"
.LASF937:
	.string	"S_SKULL_PAIN2"
.LASF1468:
	.string	"painchance"
.LASF763:
	.string	"S_CPOS_PAIN"
.LASF1602:
	.string	"ceilingheight"
.LASF12:
	.string	"commercial"
.LASF1068:
	.string	"S_PAIN_RAISE6"
.LASF1612:
	.string	"specialdata"
.LASF1407:
	.string	"MT_MISC36"
.LASF872:
	.string	"S_BOSS_RUN1"
.LASF873:
	.string	"S_BOSS_RUN2"
.LASF874:
	.string	"S_BOSS_RUN3"
.LASF875:
	.string	"S_BOSS_RUN4"
.LASF188:
	.string	"weaponinfo"
.LASF394:
	.string	"S_CHAINUP"
.LASF1664:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1564:
	.string	"killcount"
.LASF1013:
	.string	"S_ARACH_PLEX2"
.LASF1257:
	.string	"S_TORCHTREE"
.LASF1069:
	.string	"S_SSWV_STND"
.LASF1015:
	.string	"S_ARACH_PLEX4"
.LASF1498:
	.string	"MF_NOGRAVITY"
.LASF1116:
	.string	"S_COMMKEEN10"
.LASF1117:
	.string	"S_COMMKEEN11"
.LASF1118:
	.string	"S_COMMKEEN12"
.LASF1033:
	.string	"S_CYBER_PAIN"
.LASF1243:
	.string	"S_LIVESTICK"
.LASF552:
	.string	"S_SPOS_RUN1"
.LASF310:
	.string	"SPR_SMIT"
.LASF172:
	.string	"boolean"
.LASF555:
	.string	"S_SPOS_RUN4"
.LASF556:
	.string	"S_SPOS_RUN5"
.LASF247:
	.string	"SPR_SKUL"
.LASF558:
	.string	"S_SPOS_RUN7"
.LASF559:
	.string	"S_SPOS_RUN8"
.LASF1216:
	.string	"S_BROK"
.LASF1462:
	.string	"spawnhealth"
.LASF346:
	.string	"S_PUNCHDOWN"
.LASF85:
	.string	"sfx_plpain"
.LASF1273:
	.string	"S_GREENTORCH"
.LASF38:
	.string	"wp_supershotgun"
.LASF412:
	.string	"S_SAWDOWN"
.LASF73:
	.string	"sfx_sawhit"
.LASF72:
	.string	"sfx_sawful"
.LASF1311:
	.string	"statenum_t"
.LASF1352:
	.string	"MT_TROOPSHOT"
.LASF1337:
	.string	"MT_BRUISERSHOT"
.LASF1583:
	.string	"ticcmd_t"
.LASF169:
	.string	"NUMSFX"
.LASF1484:
	.string	"ps_weapon"
.LASF105:
	.string	"sfx_spisit"
.LASF893:
	.string	"S_BOSS_RAISE2"
.LASF500:
	.string	"S_PLAY_PAIN2"
.LASF71:
	.string	"sfx_sawidl"
.LASF895:
	.string	"S_BOSS_RAISE4"
.LASF896:
	.string	"S_BOSS_RAISE5"
.LASF1313:
	.string	"frame"
.LASF239:
	.string	"SPR_MANF"
.LASF750:
	.string	"S_CPOS_STND2"
.LASF563:
	.string	"S_SPOS_PAIN"
.LASF32:
	.string	"wp_shotgun"
.LASF531:
	.string	"S_POSS_PAIN2"
.LASF1358:
	.string	"MT_PUFF"
.LASF403:
	.string	"S_MISSILE1"
.LASF404:
	.string	"S_MISSILE2"
.LASF405:
	.string	"S_MISSILE3"
.LASF779:
	.string	"S_CPOS_RAISE2"
.LASF780:
	.string	"S_CPOS_RAISE3"
.LASF781:
	.string	"S_CPOS_RAISE4"
.LASF1574:
	.string	"psprites"
.LASF1663:
	.string	"oldammo"
.LASF1223:
	.string	"S_MGUN"
.LASF1336:
	.string	"MT_BRUISER"
.LASF288:
	.string	"SPR_SBOX"
.LASF1566:
	.string	"secretcount"
.LASF1459:
	.string	"mobjtype_t"
.LASF1473:
	.string	"xdeathstate"
.LASF1552:
	.string	"powers"
.LASF932:
	.string	"S_SKULL_ATK1"
.LASF933:
	.string	"S_SKULL_ATK2"
.LASF934:
	.string	"S_SKULL_ATK3"
.LASF935:
	.string	"S_SKULL_ATK4"
.LASF913:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1338:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF59:
	.string	"IRONTICS"
.LASF1578:
	.string	"sidemove"
.LASF1480:
	.string	"activesound"
.LASF564:
	.string	"S_SPOS_PAIN2"
.LASF143:
	.string	"sfx_punch"
.LASF728:
	.string	"S_FATT_ATK10"
.LASF325:
	.string	"SPR_TGRN"
.LASF1383:
	.string	"MT_MEGA"
.LASF227:
	.string	"SPR_BFE1"
.LASF228:
	.string	"SPR_BFE2"
.LASF1416:
	.string	"MT_MISC45"
.LASF1417:
	.string	"MT_MISC46"
.LASF1345:
	.string	"MT_KEEN"
.LASF1609:
	.string	"blockbox"
.LASF48:
	.string	"ammotype_t"
.LASF785:
	.string	"S_TROO_STND"
.LASF732:
	.string	"S_FATT_DIE2"
.LASF423:
	.string	"S_PLASMAFLASH2"
.LASF41:
	.string	"weapontype_t"
.LASF1581:
	.string	"chatchar"
.LASF476:
	.string	"S_TFOG2"
.LASF477:
	.string	"S_TFOG3"
.LASF478:
	.string	"S_TFOG4"
.LASF479:
	.string	"S_TFOG5"
.LASF480:
	.string	"S_TFOG6"
.LASF481:
	.string	"S_TFOG7"
.LASF482:
	.string	"S_TFOG8"
.LASF483:
	.string	"S_TFOG9"
.LASF898:
	.string	"S_BOSS_RAISE7"
.LASF1560:
	.string	"attackdown"
.LASF203:
	.string	"SPR_TROO"
.LASF1124:
	.string	"S_BRAIN_DIE2"
.LASF214:
	.string	"SPR_SAWG"
.LASF1374:
	.string	"MT_MISC10"
.LASF1665:
	.string	"P_Random"
.LASF1514:
	.string	"MF_NOTDMATCH"
.LASF263:
	.string	"SPR_BON1"
.LASF264:
	.string	"SPR_BON2"
.LASF1490:
	.string	"MF_SOLID"
.LASF24:
	.string	"it_redcard"
.LASF1252:
	.string	"S_TALLREDCOL"
.LASF1636:
	.string	"I_Error"
.LASF1487:
	.string	"state"
.LASF1227:
	.string	"S_SHOT"
.LASF1083:
	.string	"S_SSWV_ATK5"
.LASF1232:
	.string	"S_BLOODYTWITCH2"
.LASF1233:
	.string	"S_BLOODYTWITCH3"
.LASF1234:
	.string	"S_BLOODYTWITCH4"
.LASF973:
	.string	"S_SPID_DIE10"
.LASF163:
	.string	"sfx_keenpn"
.LASF1553:
	.string	"cards"
.LASF673:
	.string	"S_SKEL_RUN8"
.LASF320:
	.string	"SPR_ELEC"
.LASF1121:
	.string	"S_BRAIN"
.LASF1631:
	.string	"P_SetMobjState"
.LASF1340:
	.string	"MT_SPIDER"
.LASF1204:
	.string	"S_SUIT"
.LASF1656:
	.string	"P_GiveBody"
.LASF218:
	.string	"SPR_BFGF"
.LASF217:
	.string	"SPR_BFGG"
.LASF1611:
	.string	"thinglist"
.LASF1044:
	.string	"S_PAIN_STND"
.LASF103:
	.string	"sfx_brssit"
.LASF460:
	.string	"S_BFGLAND"
.LASF1150:
	.string	"S_BAR2"
.LASF1557:
	.string	"pendingweapon"
.LASF1516:
	.string	"MF_TRANSSHIFT"
.LASF201:
	.string	"function"
.LASF43:
	.string	"am_shell"
.LASF1530:
	.string	"validcount"
.LASF1567:
	.string	"message"
.LASF276:
	.string	"SPR_PINS"
.LASF740:
	.string	"S_FATT_DIE10"
.LASF28:
	.string	"NUMCARDS"
.LASF1277:
	.string	"S_REDTORCH"
.LASF1356:
	.string	"MT_BFG"
.LASF524:
	.string	"S_POSS_RUN6"
.LASF114:
	.string	"sfx_vilatk"
.LASF1590:
	.string	"CF_NOMOMENTUM"
.LASF234:
	.string	"SPR_VILE"
.LASF1359:
	.string	"MT_BLOOD"
.LASF353:
	.string	"S_PISTOL"
.LASF171:
	.string	"true"
.LASF17:
	.string	"sk_medium"
.LASF1003:
	.string	"S_BSPI_RAISE1"
.LASF1004:
	.string	"S_BSPI_RAISE2"
.LASF1005:
	.string	"S_BSPI_RAISE3"
.LASF1006:
	.string	"S_BSPI_RAISE4"
.LASF153:
	.string	"sfx_getpow"
.LASF1008:
	.string	"S_BSPI_RAISE6"
.LASF1009:
	.string	"S_BSPI_RAISE7"
.LASF1527:
	.string	"momx"
.LASF1506:
	.string	"MF_DROPPED"
.LASF1528:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF1092:
	.string	"S_SSWV_XDIE1"
.LASF1093:
	.string	"S_SSWV_XDIE2"
.LASF1094:
	.string	"S_SSWV_XDIE3"
.LASF1095:
	.string	"S_SSWV_XDIE4"
.LASF1096:
	.string	"S_SSWV_XDIE5"
.LASF57:
	.string	"INVISTICS"
.LASF1098:
	.string	"S_SSWV_XDIE7"
.LASF1099:
	.string	"S_SSWV_XDIE8"
.LASF1100:
	.string	"S_SSWV_XDIE9"
.LASF390:
	.string	"S_DSGUNFLASH1"
.LASF391:
	.string	"S_DSGUNFLASH2"
.LASF1390:
	.string	"MT_MISC22"
.LASF1575:
	.string	"didsecret"
.LASF648:
	.string	"S_FIRE25"
.LASF138:
	.string	"sfx_bspact"
.LASF1426:
	.string	"MT_MISC55"
.LASF1549:
	.string	"deltaviewheight"
.LASF26:
	.string	"it_yellowskull"
.LASF1180:
	.string	"S_RSKULL2"
.LASF1540:
	.string	"tracer"
.LASF955:
	.string	"S_SPID_RUN10"
.LASF956:
	.string	"S_SPID_RUN11"
.LASF957:
	.string	"S_SPID_RUN12"
.LASF1639:
	.string	"rcsid"
.LASF93:
	.string	"sfx_wpnup"
.LASF1482:
	.string	"raisestate"
.LASF406:
	.string	"S_MISSILEFLASH1"
.LASF407:
	.string	"S_MISSILEFLASH2"
.LASF408:
	.string	"S_MISSILEFLASH3"
.LASF409:
	.string	"S_MISSILEFLASH4"
.LASF269:
	.string	"SPR_RSKU"
.LASF113:
	.string	"sfx_skepch"
.LASF198:
	.string	"think_t"
.LASF766:
	.string	"S_CPOS_DIE2"
.LASF767:
	.string	"S_CPOS_DIE3"
.LASF768:
	.string	"S_CPOS_DIE4"
.LASF1507:
	.string	"MF_SHADOW"
.LASF769:
	.string	"S_CPOS_DIE5"
.LASF770:
	.string	"S_CPOS_DIE6"
.LASF771:
	.string	"S_CPOS_DIE7"
.LASF1588:
	.string	"CF_NOCLIP"
.LASF1212:
	.string	"S_PVIS2"
.LASF1351:
	.string	"MT_BARREL"
.LASF944:
	.string	"S_SPID_STND"
.LASF716:
	.string	"S_FATT_RUN10"
.LASF717:
	.string	"S_FATT_RUN11"
.LASF718:
	.string	"S_FATT_RUN12"
.LASF1290:
	.string	"S_RTORCHSHRT2"
.LASF1343:
	.string	"MT_PAIN"
.LASF829:
	.string	"S_SARG_ATK2"
.LASF1270:
	.string	"S_BLUETORCH2"
.LASF1483:
	.string	"mobjinfo_t"
.LASF1271:
	.string	"S_BLUETORCH3"
.LASF1272:
	.string	"S_BLUETORCH4"
.LASF329:
	.string	"SPR_SMRT"
.LASF431:
	.string	"S_BFGFLASH1"
.LASF432:
	.string	"S_BFGFLASH2"
.LASF965:
	.string	"S_SPID_DIE2"
.LASF246:
	.string	"SPR_BOS2"
.LASF968:
	.string	"S_SPID_DIE5"
.LASF969:
	.string	"S_SPID_DIE6"
.LASF156:
	.string	"sfx_bossit"
.LASF970:
	.string	"S_SPID_DIE7"
.LASF971:
	.string	"S_SPID_DIE8"
.LASF1261:
	.string	"S_EVILEYE2"
.LASF1262:
	.string	"S_EVILEYE3"
.LASF1263:
	.string	"S_EVILEYE4"
.LASF436:
	.string	"S_PUFF1"
.LASF437:
	.string	"S_PUFF2"
.LASF438:
	.string	"S_PUFF3"
.LASF257:
	.string	"SPR_BOSF"
.LASF1614:
	.string	"lines"
.LASF245:
	.string	"SPR_BOSS"
.LASF1355:
	.string	"MT_PLASMA"
.LASF168:
	.string	"sfx_radio"
.LASF990:
	.string	"S_BSPI_ATK1"
.LASF991:
	.string	"S_BSPI_ATK2"
.LASF992:
	.string	"S_BSPI_ATK3"
.LASF993:
	.string	"S_BSPI_ATK4"
.LASF1172:
	.string	"S_BKEY2"
.LASF39:
	.string	"NUMWEAPONS"
.LASF977:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF979:
	.string	"S_BSPI_RUN2"
.LASF1123:
	.string	"S_BRAIN_DIE1"
.LASF980:
	.string	"S_BSPI_RUN3"
.LASF1125:
	.string	"S_BRAIN_DIE3"
.LASF1126:
	.string	"S_BRAIN_DIE4"
.LASF458:
	.string	"S_BFGSHOT"
.LASF1264:
	.string	"S_FLOATSKULL"
.LASF614:
	.string	"S_VILE_DIE1"
.LASF615:
	.string	"S_VILE_DIE2"
.LASF616:
	.string	"S_VILE_DIE3"
.LASF617:
	.string	"S_VILE_DIE4"
.LASF618:
	.string	"S_VILE_DIE5"
.LASF619:
	.string	"S_VILE_DIE6"
.LASF620:
	.string	"S_VILE_DIE7"
.LASF621:
	.string	"S_VILE_DIE8"
.LASF622:
	.string	"S_VILE_DIE9"
.LASF1568:
	.string	"damagecount"
.LASF1491:
	.string	"MF_SHOOTABLE"
.LASF298:
	.string	"SPR_SMT2"
.LASF1174:
	.string	"S_RKEY2"
.LASF1145:
	.string	"S_ARM1"
.LASF1147:
	.string	"S_ARM2"
.LASF1240:
	.string	"S_HEADCANDLES"
.LASF142:
	.string	"sfx_barexp"
.LASF870:
	.string	"S_BOSS_STND"
.LASF137:
	.string	"sfx_dmact"
.LASF850:
	.string	"S_HEAD_PAIN"
.LASF23:
	.string	"it_yellowcard"
.LASF1327:
	.string	"MT_TRACER"
.LASF731:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF733:
	.string	"S_FATT_DIE3"
.LASF734:
	.string	"S_FATT_DIE4"
.LASF735:
	.string	"S_FATT_DIE5"
.LASF736:
	.string	"S_FATT_DIE6"
.LASF737:
	.string	"S_FATT_DIE7"
.LASF738:
	.string	"S_FATT_DIE8"
.LASF739:
	.string	"S_FATT_DIE9"
.LASF806:
	.string	"S_TROO_XDIE2"
.LASF807:
	.string	"S_TROO_XDIE3"
.LASF808:
	.string	"S_TROO_XDIE4"
.LASF809:
	.string	"S_TROO_XDIE5"
.LASF810:
	.string	"S_TROO_XDIE6"
.LASF811:
	.string	"S_TROO_XDIE7"
.LASF812:
	.string	"S_TROO_XDIE8"
.LASF281:
	.string	"SPR_CLIP"
.LASF1253:
	.string	"S_SHRTREDCOL"
.LASF1296:
	.string	"S_HANGTSKULL"
.LASF1598:
	.string	"players"
.LASF55:
	.string	"NUMPOWERS"
.LASF876:
	.string	"S_BOSS_RUN5"
.LASF1081:
	.string	"S_SSWV_ATK3"
.LASF1082:
	.string	"S_SSWV_ATK4"
.LASF387:
	.string	"S_DSGUN10"
.LASF125:
	.string	"sfx_cacdth"
.LASF50:
	.string	"pw_strength"
.LASF585:
	.string	"S_VILE_STND2"
.LASF315:
	.string	"SPR_CAND"
.LASF82:
	.string	"sfx_stnmov"
.LASF1333:
	.string	"MT_SERGEANT"
.LASF77:
	.string	"sfx_firxpl"
.LASF16:
	.string	"sk_easy"
.LASF1183:
	.string	"S_STIM"
.LASF836:
	.string	"S_SARG_DIE4"
.LASF44:
	.string	"am_cell"
.LASF22:
	.string	"it_bluecard"
.LASF1525:
	.string	"floorz"
.LASF846:
	.string	"S_HEAD_RUN1"
.LASF501:
	.string	"S_PLAY_DIE1"
.LASF502:
	.string	"S_PLAY_DIE2"
.LASF503:
	.string	"S_PLAY_DIE3"
.LASF66:
	.string	"sfx_dbcls"
.LASF505:
	.string	"S_PLAY_DIE5"
.LASF506:
	.string	"S_PLAY_DIE6"
.LASF507:
	.string	"S_PLAY_DIE7"
.LASF517:
	.string	"S_POSS_STND"
.LASF473:
	.string	"S_TFOG"
.LASF1411:
	.string	"MT_MISC40"
.LASF1412:
	.string	"MT_MISC41"
.LASF1413:
	.string	"MT_MISC42"
.LASF1541:
	.string	"subsector_s"
.LASF833:
	.string	"S_SARG_DIE1"
.LASF1414:
	.string	"MT_MISC43"
.LASF834:
	.string	"S_SARG_DIE2"
.LASF835:
	.string	"S_SARG_DIE3"
.LASF69:
	.string	"sfx_bfg"
.LASF1134:
	.string	"S_SPAWNFIRE1"
.LASF1135:
	.string	"S_SPAWNFIRE2"
.LASF1136:
	.string	"S_SPAWNFIRE3"
.LASF1137:
	.string	"S_SPAWNFIRE4"
.LASF1138:
	.string	"S_SPAWNFIRE5"
.LASF1139:
	.string	"S_SPAWNFIRE6"
.LASF1140:
	.string	"S_SPAWNFIRE7"
.LASF1141:
	.string	"S_SPAWNFIRE8"
.LASF805:
	.string	"S_TROO_XDIE1"
.LASF1580:
	.string	"consistancy"
.LASF1542:
	.string	"sector"
.LASF1298:
	.string	"S_HANGTNOBRAIN"
.LASF453:
	.string	"S_PLASEXP2"
.LASF454:
	.string	"S_PLASEXP3"
.LASF455:
	.string	"S_PLASEXP4"
.LASF456:
	.string	"S_PLASEXP5"
.LASF36:
	.string	"wp_bfg"
.LASF1282:
	.string	"S_BTORCHSHRT2"
.LASF1283:
	.string	"S_BTORCHSHRT3"
.LASF1284:
	.string	"S_BTORCHSHRT4"
.LASF132:
	.string	"sfx_kntdth"
.LASF586:
	.string	"S_VILE_RUN1"
.LASF376:
	.string	"S_DSGUNDOWN"
.LASF588:
	.string	"S_VILE_RUN3"
.LASF589:
	.string	"S_VILE_RUN4"
.LASF590:
	.string	"S_VILE_RUN5"
.LASF591:
	.string	"S_VILE_RUN6"
.LASF592:
	.string	"S_VILE_RUN7"
.LASF593:
	.string	"S_VILE_RUN8"
.LASF594:
	.string	"S_VILE_RUN9"
.LASF837:
	.string	"S_SARG_DIE5"
.LASF838:
	.string	"S_SARG_DIE6"
.LASF124:
	.string	"sfx_sgtdth"
.LASF1519:
	.string	"thinker"
.LASF679:
	.string	"S_SKEL_FIST2"
.LASF678:
	.string	"S_SKEL_FIST1"
.LASF128:
	.string	"sfx_cybdth"
.LASF680:
	.string	"S_SKEL_FIST3"
.LASF681:
	.string	"S_SKEL_FIST4"
.LASF417:
	.string	"S_PLASMA"
.LASF1196:
	.string	"S_PINS"
.LASF89:
	.string	"sfx_mnpain"
.LASF1269:
	.string	"S_BLUETORCH"
.LASF707:
	.string	"S_FATT_RUN1"
.LASF708:
	.string	"S_FATT_RUN2"
.LASF709:
	.string	"S_FATT_RUN3"
.LASF710:
	.string	"S_FATT_RUN4"
.LASF52:
	.string	"pw_ironfeet"
.LASF712:
	.string	"S_FATT_RUN6"
.LASF713:
	.string	"S_FATT_RUN7"
.LASF714:
	.string	"S_FATT_RUN8"
.LASF1245:
	.string	"S_MEAT2"
.LASF1246:
	.string	"S_MEAT3"
.LASF1247:
	.string	"S_MEAT4"
.LASF1248:
	.string	"S_MEAT5"
.LASF360:
	.string	"S_PISTOLFLASH"
.LASF1601:
	.string	"floorheight"
.LASF580:
	.string	"S_SPOS_RAISE2"
.LASF581:
	.string	"S_SPOS_RAISE3"
.LASF582:
	.string	"S_SPOS_RAISE4"
.LASF583:
	.string	"S_SPOS_RAISE5"
.LASF272:
	.string	"SPR_MEDI"
.LASF1658:
	.string	"weapon"
.LASF274:
	.string	"SPR_PINV"
.LASF1258:
	.string	"S_BIGTREE"
.LASF134:
	.string	"sfx_skedth"
.LASF1122:
	.string	"S_BRAIN_PAIN"
.LASF393:
	.string	"S_CHAINDOWN"
.LASF1502:
	.string	"MF_SLIDE"
.LASF612:
	.string	"S_VILE_PAIN"
.LASF659:
	.string	"S_TRACER"
.LASF1079:
	.string	"S_SSWV_ATK1"
.LASF1080:
	.string	"S_SSWV_ATK2"
.LASF609:
	.string	"S_VILE_HEAL1"
.LASF610:
	.string	"S_VILE_HEAL2"
.LASF611:
	.string	"S_VILE_HEAL3"
.LASF1084:
	.string	"S_SSWV_ATK6"
.LASF150:
	.string	"sfx_itmbk"
.LASF266:
	.string	"SPR_RKEY"
.LASF1230:
	.string	"S_STALAG"
.LASF945:
	.string	"S_SPID_STND2"
.LASF191:
	.string	"angle_t"
.LASF1604:
	.string	"ceilingpic"
.LASF1231:
	.string	"S_BLOODYTWITCH"
.LASF1300:
	.string	"S_SMALLPOOL"
.LASF1488:
	.string	"pspdef_t"
.LASF1427:
	.string	"MT_MISC56"
.LASF729:
	.string	"S_FATT_PAIN"
.LASF493:
	.string	"S_PLAY_RUN1"
.LASF494:
	.string	"S_PLAY_RUN2"
.LASF495:
	.string	"S_PLAY_RUN3"
.LASF496:
	.string	"S_PLAY_RUN4"
.LASF1221:
	.string	"S_BPAK"
.LASF187:
	.string	"double"
.LASF261:
	.string	"SPR_BEXP"
.LASF1545:
	.string	"player_s"
.LASF797:
	.string	"S_TROO_ATK3"
.LASF1497:
	.string	"MF_SPAWNCEILING"
.LASF220:
	.string	"SPR_PUFF"
.LASF1107:
	.string	"S_COMMKEEN"
.LASF78:
	.string	"sfx_pstart"
.LASF1561:
	.string	"usedown"
.LASF1634:
	.string	"P_RemoveMobj"
.LASF899:
	.string	"S_BOS2_STND"
.LASF226:
	.string	"SPR_BFS1"
.LASF1130:
	.string	"S_SPAWN1"
.LASF1131:
	.string	"S_SPAWN2"
.LASF1132:
	.string	"S_SPAWN3"
.LASF1133:
	.string	"S_SPAWN4"
.LASF1303:
	.string	"S_TECHLAMP2"
.LASF1304:
	.string	"S_TECHLAMP3"
.LASF37:
	.string	"wp_chainsaw"
.LASF1341:
	.string	"MT_BABY"
.LASF1559:
	.string	"maxammo"
.LASF1244:
	.string	"S_LIVESTICK2"
.LASF1382:
	.string	"MT_MISC16"
.LASF1289:
	.string	"S_RTORCHSHRT"
.LASF1387:
	.string	"MT_MISC19"
.LASF248:
	.string	"SPR_SPID"
.LASF845:
	.string	"S_HEAD_STND"
.LASF1596:
	.string	"automapactive"
.LASF1329:
	.string	"MT_FATSO"
.LASF820:
	.string	"S_SARG_RUN1"
.LASF821:
	.string	"S_SARG_RUN2"
.LASF823:
	.string	"S_SARG_RUN4"
.LASF824:
	.string	"S_SARG_RUN5"
.LASF825:
	.string	"S_SARG_RUN6"
.LASF826:
	.string	"S_SARG_RUN7"
.LASF827:
	.string	"S_SARG_RUN8"
.LASF1365:
	.string	"MT_MISC1"
.LASF1366:
	.string	"MT_MISC2"
.LASF1367:
	.string	"MT_MISC3"
.LASF1368:
	.string	"MT_MISC4"
.LASF1369:
	.string	"MT_MISC5"
.LASF1370:
	.string	"MT_MISC6"
.LASF1371:
	.string	"MT_MISC7"
.LASF1372:
	.string	"MT_MISC8"
.LASF1373:
	.string	"MT_MISC9"
.LASF410:
	.string	"S_SAW"
.LASF135:
	.string	"sfx_posact"
.LASF499:
	.string	"S_PLAY_PAIN"
.LASF451:
	.string	"S_PLASBALL2"
.LASF1485:
	.string	"ps_flash"
.LASF1546:
	.string	"playerstate"
.LASF1645:
	.string	"item"
.LASF255:
	.string	"SPR_KEEN"
.LASF1085:
	.string	"S_SSWV_PAIN"
.LASF1467:
	.string	"painstate"
.LASF1651:
	.string	"P_GiveCard"
.LASF1120:
	.string	"S_KEENPAIN2"
.LASF54:
	.string	"pw_infrared"
.LASF607:
	.string	"S_VILE_ATK10"
.LASF608:
	.string	"S_VILE_ATK11"
.LASF1627:
	.string	"clipammo"
.LASF1086:
	.string	"S_SSWV_PAIN2"
.LASF1451:
	.string	"MT_MISC80"
.LASF1474:
	.string	"deathsound"
.LASF1160:
	.string	"S_BON1A"
.LASF1517:
	.string	"thinker_s"
.LASF1162:
	.string	"S_BON1C"
.LASF1163:
	.string	"S_BON1D"
.LASF1164:
	.string	"S_BON1E"
.LASF1652:
	.string	"card"
.LASF1621:
	.string	"sector_t"
.LASF1632:
	.string	"I_Tactile"
.LASF275:
	.string	"SPR_PSTR"
.LASF1389:
	.string	"MT_MISC21"
.LASF831:
	.string	"S_SARG_PAIN"
.LASF1384:
	.string	"MT_CLIP"
.LASF290:
	.string	"SPR_BFUG"
.LASF1439:
	.string	"MT_MISC68"
.LASF1156:
	.string	"S_BBAR1"
.LASF1157:
	.string	"S_BBAR2"
.LASF1158:
	.string	"S_BBAR3"
.LASF344:
	.string	"S_LIGHTDONE"
.LASF995:
	.string	"S_BSPI_PAIN2"
.LASF1554:
	.string	"backpack"
.LASF795:
	.string	"S_TROO_ATK1"
.LASF796:
	.string	"S_TROO_ATK2"
.LASF146:
	.string	"sfx_chgun"
.LASF939:
	.string	"S_SKULL_DIE2"
.LASF940:
	.string	"S_SKULL_DIE3"
.LASF941:
	.string	"S_SKULL_DIE4"
.LASF942:
	.string	"S_SKULL_DIE5"
.LASF943:
	.string	"S_SKULL_DIE6"
.LASF294:
	.string	"SPR_PLAS"
.LASF1166:
	.string	"S_BON2A"
.LASF1167:
	.string	"S_BON2B"
.LASF207:
	.string	"SPR_PISF"
.LASF206:
	.string	"SPR_PISG"
.LASF1170:
	.string	"S_BON2E"
.LASF1394:
	.string	"MT_CHAINGUN"
.LASF442:
	.string	"S_TBALLX1"
.LASF443:
	.string	"S_TBALLX2"
.LASF444:
	.string	"S_TBALLX3"
.LASF504:
	.string	"S_PLAY_DIE4"
.LASF40:
	.string	"wp_nochange"
.LASF1331:
	.string	"MT_CHAINGUY"
.LASF96:
	.string	"sfx_posit1"
.LASF97:
	.string	"sfx_posit2"
.LASF98:
	.string	"sfx_posit3"
.LASF938:
	.string	"S_SKULL_DIE1"
.LASF162:
	.string	"sfx_ssdth"
.LASF1301:
	.string	"S_BRAINSTEM"
.LASF144:
	.string	"sfx_hoof"
.LASF231:
	.string	"SPR_PLAY"
.LASF1501:
	.string	"MF_NOCLIP"
.LASF1556:
	.string	"readyweapon"
.LASF111:
	.string	"sfx_sklatk"
.LASF1241:
	.string	"S_HEADCANDLES2"
.LASF1361:
	.string	"MT_IFOG"
.LASF322:
	.string	"SPR_FSKU"
.LASF557:
	.string	"S_SPOS_RUN6"
.LASF1655:
	.string	"hits"
.LASF413:
	.string	"S_SAWUP"
.LASF1146:
	.string	"S_ARM1A"
.LASF749:
	.string	"S_CPOS_STND"
.LASF1402:
	.string	"MT_MISC31"
.LASF1529:
	.string	"momz"
.LASF1220:
	.string	"S_SBOX"
.LASF1404:
	.string	"MT_MISC33"
.LASF1405:
	.string	"MT_MISC34"
.LASF1617:
	.string	"bbox"
.LASF452:
	.string	"S_PLASEXP"
.LASF1408:
	.string	"MT_MISC37"
.LASF91:
	.string	"sfx_slop"
.LASF1236:
	.string	"S_DEADBOTTOM"
.LASF1293:
	.string	"S_HANGNOGUTS"
.LASF1466:
	.string	"attacksound"
.LASF1197:
	.string	"S_PINS2"
.LASF1198:
	.string	"S_PINS3"
.LASF1199:
	.string	"S_PINS4"
.LASF1051:
	.string	"S_PAIN_ATK1"
.LASF1052:
	.string	"S_PAIN_ATK2"
.LASF1053:
	.string	"S_PAIN_ATK3"
.LASF1054:
	.string	"S_PAIN_ATK4"
.LASF363:
	.string	"S_SGUNUP"
.LASF1499:
	.string	"MF_DROPOFF"
.LASF1619:
	.string	"frontsector"
.LASF316:
	.string	"SPR_CBRA"
.LASF1472:
	.string	"deathstate"
.LASF1148:
	.string	"S_ARM2A"
.LASF1017:
	.string	"S_CYBER_STND"
.LASF1176:
	.string	"S_YKEY2"
.LASF626:
	.string	"S_FIRE3"
.LASF1465:
	.string	"reactiontime"
.LASF630:
	.string	"S_FIRE7"
.LASF631:
	.string	"S_FIRE8"
.LASF871:
	.string	"S_BOSS_STND2"
.LASF141:
	.string	"sfx_noway"
.LASF1521:
	.string	"sprev"
.LASF414:
	.string	"S_SAW1"
.LASF415:
	.string	"S_SAW2"
.LASF416:
	.string	"S_SAW3"
.LASF1159:
	.string	"S_BON1"
.LASF1165:
	.string	"S_BON2"
.LASF1537:
	.string	"player"
.LASF1623:
	.string	"ST_VERTICAL"
.LASF411:
	.string	"S_SAWB"
.LASF799:
	.string	"S_TROO_PAIN2"
.LASF1347:
	.string	"MT_BOSSSPIT"
.LASF624:
	.string	"S_FIRE1"
.LASF625:
	.string	"S_FIRE2"
.LASF185:
	.string	"fixed_t"
.LASF627:
	.string	"S_FIRE4"
.LASF628:
	.string	"S_FIRE5"
.LASF629:
	.string	"S_FIRE6"
.LASF159:
	.string	"sfx_manatk"
.LASF284:
	.string	"SPR_BROK"
.LASF632:
	.string	"S_FIRE9"
.LASF1415:
	.string	"MT_MISC44"
.LASF756:
	.string	"S_CPOS_RUN6"
.LASF1217:
	.string	"S_CELL"
.LASF1418:
	.string	"MT_MISC47"
.LASF282:
	.string	"SPR_AMMO"
.LASF1419:
	.string	"MT_MISC48"
.LASF1420:
	.string	"MT_MISC49"
.LASF930:
	.string	"S_SKULL_RUN1"
.LASF931:
	.string	"S_SKULL_RUN2"
.LASF1297:
	.string	"S_HANGTLOOKUP"
.LASF1492:
	.string	"MF_NOSECTOR"
.LASF392:
	.string	"S_CHAIN"
.LASF422:
	.string	"S_PLASMAFLASH1"
.LASF378:
	.string	"S_DSGUN1"
.LASF379:
	.string	"S_DSGUN2"
.LASF273:
	.string	"SPR_SOUL"
.LASF233:
	.string	"SPR_SPOS"
.LASF382:
	.string	"S_DSGUN5"
.LASF383:
	.string	"S_DSGUN6"
.LASF384:
	.string	"S_DSGUN7"
.LASF385:
	.string	"S_DSGUN8"
.LASF386:
	.string	"S_DSGUN9"
.LASF550:
	.string	"S_SPOS_STND"
.LASF253:
	.string	"SPR_PAIN"
.LASF139:
	.string	"sfx_bspwlk"
.LASF1178:
	.string	"S_BSKULL2"
.LASF131:
	.string	"sfx_vildth"
.LASF1550:
	.string	"armorpoints"
.LASF1582:
	.string	"buttons"
.LASF1600:
	.string	"degenmobj_t"
.LASF427:
	.string	"S_BFG1"
.LASF428:
	.string	"S_BFG2"
.LASF429:
	.string	"S_BFG3"
.LASF430:
	.string	"S_BFG4"
.LASF1661:
	.string	"gaveweapon"
.LASF342:
	.string	"spritenum_t"
.LASF389:
	.string	"S_DSNR2"
.LASF929:
	.string	"S_SKULL_STND2"
.LASF1192:
	.string	"S_PINV2"
.LASF1193:
	.string	"S_PINV3"
.LASF822:
	.string	"S_SARG_RUN3"
.LASF1307:
	.string	"S_TECH2LAMP2"
.LASF1308:
	.string	"S_TECH2LAMP3"
.LASF1309:
	.string	"S_TECH2LAMP4"
.LASF190:
	.string	"finecosine"
.LASF1615:
	.string	"line_s"
.LASF1510:
	.string	"MF_INFLOAT"
.LASF205:
	.string	"SPR_PUNG"
.LASF773:
	.string	"S_CPOS_XDIE2"
.LASF115:
	.string	"sfx_claw"
.LASF775:
	.string	"S_CPOS_XDIE4"
.LASF776:
	.string	"S_CPOS_XDIE5"
.LASF777:
	.string	"S_CPOS_XDIE6"
.LASF958:
	.string	"S_SPID_ATK1"
.LASF959:
	.string	"S_SPID_ATK2"
.LASF960:
	.string	"S_SPID_ATK3"
.LASF961:
	.string	"S_SPID_ATK4"
.LASF682:
	.string	"S_SKEL_MISS1"
.LASF683:
	.string	"S_SKEL_MISS2"
.LASF684:
	.string	"S_SKEL_MISS3"
.LASF685:
	.string	"S_SKEL_MISS4"
.LASF439:
	.string	"S_PUFF4"
.LASF1179:
	.string	"S_RSKULL"
.LASF1011:
	.string	"S_ARACH_PLAZ2"
.LASF1421:
	.string	"MT_MISC50"
.LASF859:
	.string	"S_HEAD_RAISE1"
.LASF1456:
	.string	"MT_MISC85"
.LASF860:
	.string	"S_HEAD_RAISE2"
.LASF861:
	.string	"S_HEAD_RAISE3"
.LASF1562:
	.string	"cheats"
.LASF268:
	.string	"SPR_BSKU"
.LASF863:
	.string	"S_HEAD_RAISE5"
.LASF864:
	.string	"S_HEAD_RAISE6"
.LASF1539:
	.string	"spawnpoint"
.LASF1399:
	.string	"MT_SUPERSHOTGUN"
.LASF279:
	.string	"SPR_PMAP"
.LASF1127:
	.string	"S_BRAINEYE"
.LASF280:
	.string	"SPR_PVIS"
.LASF1584:
	.string	"PST_LIVE"
.LASF1629:
	.string	"R_PointToAngle2"
.LASF1357:
	.string	"MT_ARACHPLAZ"
.LASF1508:
	.string	"MF_NOBLOOD"
.LASF604:
	.string	"S_VILE_ATK7"
.LASF605:
	.string	"S_VILE_ATK8"
.LASF546:
	.string	"S_POSS_RAISE1"
.LASF547:
	.string	"S_POSS_RAISE2"
.LASF548:
	.string	"S_POSS_RAISE3"
.LASF549:
	.string	"S_POSS_RAISE4"
.LASF401:
	.string	"S_MISSILEDOWN"
.LASF1265:
	.string	"S_FLOATSKULL2"
.LASF1266:
	.string	"S_FLOATSKULL3"
.LASF65:
	.string	"sfx_dbopn"
.LASF29:
	.string	"card_t"
.LASF1200:
	.string	"S_MEGA"
.LASF880:
	.string	"S_BOSS_ATK1"
.LASF881:
	.string	"S_BOSS_ATK2"
.LASF882:
	.string	"S_BOSS_ATK3"
.LASF1524:
	.string	"subsector"
.LASF338:
	.string	"SPR_BRS1"
.LASF1599:
	.string	"vertex_t"
.LASF687:
	.string	"S_SKEL_PAIN2"
.LASF1224:
	.string	"S_CSAW"
.LASF49:
	.string	"pw_invulnerability"
.LASF867:
	.string	"S_BRBALLX1"
.LASF868:
	.string	"S_BRBALLX2"
.LASF869:
	.string	"S_BRBALLX3"
.LASF997:
	.string	"S_BSPI_DIE2"
.LASF998:
	.string	"S_BSPI_DIE3"
.LASF999:
	.string	"S_BSPI_DIE4"
.LASF1000:
	.string	"S_BSPI_DIE5"
.LASF33:
	.string	"wp_chaingun"
.LASF1002:
	.string	"S_BSPI_DIE7"
.LASF21:
	.string	"skill_t"
.LASF688:
	.string	"S_SKEL_DIE1"
.LASF553:
	.string	"S_SPOS_RUN2"
.LASF1620:
	.string	"backsector"
.LASF554:
	.string	"S_SPOS_RUN3"
.LASF1056:
	.string	"S_PAIN_PAIN2"
.LASF691:
	.string	"S_SKEL_DIE4"
.LASF61:
	.string	"sfx_pistol"
.LASF287:
	.string	"SPR_SHEL"
.LASF1440:
	.string	"MT_MISC69"
.LASF1551:
	.string	"armortype"
.LASF170:
	.string	"false"
.LASF339:
	.string	"SPR_TLMP"
.LASF1504:
	.string	"MF_TELEPORT"
.LASF518:
	.string	"S_POSS_STND2"
.LASF1398:
	.string	"MT_SHOTGUN"
.LASF1323:
	.string	"MT_SHOTGUY"
.LASF1565:
	.string	"itemcount"
.LASF1302:
	.string	"S_TECHLAMP"
.LASF1344:
	.string	"MT_WOLFSS"
.LASF900:
	.string	"S_BOS2_STND2"
.LASF1608:
	.string	"soundtarget"
.LASF395:
	.string	"S_CHAIN1"
.LASF396:
	.string	"S_CHAIN2"
.LASF397:
	.string	"S_CHAIN3"
.LASF448:
	.string	"S_RBALLX2"
.LASF157:
	.string	"sfx_bospn"
.LASF324:
	.string	"SPR_TBLU"
.LASF551:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF56:
	.string	"INVULNTICS"
.LASF62:
	.string	"sfx_shotgn"
.LASF1520:
	.string	"snext"
.LASF47:
	.string	"am_noammo"
.LASF102:
	.string	"sfx_cacsit"
.LASF202:
	.string	"thinker_t"
.LASF122:
	.string	"sfx_bgdth1"
.LASF123:
	.string	"sfx_bgdth2"
.LASF527:
	.string	"S_POSS_ATK1"
.LASF528:
	.string	"S_POSS_ATK2"
.LASF529:
	.string	"S_POSS_ATK3"
.LASF15:
	.string	"sk_baby"
.LASF1442:
	.string	"MT_MISC71"
.LASF151:
	.string	"sfx_flame"
.LASF1291:
	.string	"S_RTORCHSHRT3"
.LASF1292:
	.string	"S_RTORCHSHRT4"
.LASF1194:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF978:
	.string	"S_BSPI_RUN1"
.LASF1448:
	.string	"MT_MISC77"
.LASF1449:
	.string	"MT_MISC78"
.LASF1450:
	.string	"MT_MISC79"
.LASF1339:
	.string	"MT_SKULL"
.LASF1326:
	.string	"MT_UNDEAD"
.LASF20:
	.string	"GameMode_t"
.LASF199:
	.string	"prev"
.LASF516:
	.string	"S_PLAY_XDIE9"
.LASF689:
	.string	"S_SKEL_DIE2"
.LASF690:
	.string	"S_SKEL_DIE3"
.LASF235:
	.string	"SPR_FIRE"
.LASF692:
	.string	"S_SKEL_DIE5"
.LASF693:
	.string	"S_SKEL_DIE6"
.LASF1299:
	.string	"S_COLONGIBS"
.LASF1592:
	.string	"gamemode"
.LASF340:
	.string	"SPR_TLP2"
.LASF450:
	.string	"S_PLASBALL"
.LASF118:
	.string	"sfx_pdiehi"
.LASF296:
	.string	"SPR_SGN2"
.LASF176:
	.string	"options"
.LASF249:
	.string	"SPR_BSPI"
.LASF251:
	.string	"SPR_APBX"
.LASF1573:
	.string	"colormap"
.LASF13:
	.string	"retail"
.LASF1375:
	.string	"MT_MISC11"
.LASF1376:
	.string	"MT_MISC12"
.LASF1378:
	.string	"MT_MISC13"
.LASF1380:
	.string	"MT_MISC14"
.LASF1381:
	.string	"MT_MISC15"
.LASF974:
	.string	"S_SPID_DIE11"
.LASF1385:
	.string	"MT_MISC17"
.LASF1386:
	.string	"MT_MISC18"
.LASF1213:
	.string	"S_CLIP"
.LASF1476:
	.string	"radius"
.LASF1649:
	.string	"sound"
.LASF1532:
	.string	"health"
.LASF1348:
	.string	"MT_BOSSTARGET"
.LASF107:
	.string	"sfx_kntsit"
.LASF1512:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_inter.c"
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
