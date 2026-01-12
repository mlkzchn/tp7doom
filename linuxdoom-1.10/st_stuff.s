	.file	"st_stuff.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "st_stuff.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: st_stuff.c,v 1.6 1997/02/03 22:45:13 b1 Exp $"
	.local	plyr
	.comm	plyr,8,8
	.local	st_firsttime
	.comm	st_firsttime,4,4
	.data
	.align 4
	.type	veryfirsttime, @object
	.size	veryfirsttime, 4
veryfirsttime:
	.long	1
	.local	lu_palette
	.comm	lu_palette,4,4
	.local	st_clock
	.comm	st_clock,4,4
	.local	st_msgcounter
	.comm	st_msgcounter,4,4
	.local	st_chatstate
	.comm	st_chatstate,4,4
	.local	st_gamestate
	.comm	st_gamestate,4,4
	.local	st_statusbaron
	.comm	st_statusbaron,4,4
	.local	st_chat
	.comm	st_chat,4,4
	.local	st_oldchat
	.comm	st_oldchat,4,4
	.local	st_cursoron
	.comm	st_cursoron,4,4
	.local	st_notdeathmatch
	.comm	st_notdeathmatch,4,4
	.local	st_armson
	.comm	st_armson,4,4
	.local	st_fragson
	.comm	st_fragson,4,4
	.local	sbar
	.comm	sbar,8,8
	.local	tallnum
	.comm	tallnum,80,32
	.local	tallpercent
	.comm	tallpercent,8,8
	.local	shortnum
	.comm	shortnum,80,32
	.local	keys
	.comm	keys,48,32
	.local	faces
	.comm	faces,336,32
	.local	faceback
	.comm	faceback,8,8
	.local	armsbg
	.comm	armsbg,8,8
	.local	arms
	.comm	arms,96,32
	.local	w_ready
	.comm	w_ready,48,32
	.local	w_frags
	.comm	w_frags,48,32
	.local	w_health
	.comm	w_health,56,32
	.local	w_armsbg
	.comm	w_armsbg,48,32
	.local	w_arms
	.comm	w_arms,288,32
	.local	w_faces
	.comm	w_faces,48,32
	.local	w_keyboxes
	.comm	w_keyboxes,144,32
	.local	w_armor
	.comm	w_armor,56,32
	.local	w_ammo
	.comm	w_ammo,192,32
	.local	w_maxammo
	.comm	w_maxammo,192,32
	.local	st_fragscount
	.comm	st_fragscount,4,4
	.align 4
	.type	st_oldhealth, @object
	.size	st_oldhealth, 4
st_oldhealth:
	.long	-1
	.local	oldweaponsowned
	.comm	oldweaponsowned,36,32
	.local	st_facecount
	.comm	st_facecount,4,4
	.local	st_faceindex
	.comm	st_faceindex,4,4
	.local	keyboxes
	.comm	keyboxes,12,8
	.local	st_randomnumber
	.comm	st_randomnumber,4,4
	.globl	cheat_mus_seq
	.align 8
	.type	cheat_mus_seq, @object
	.size	cheat_mus_seq, 9
cheat_mus_seq:
	.string	"\262&\266\256\352\001"
	.string	""
	.ascii	"\377"
	.globl	cheat_choppers_seq
	.align 8
	.type	cheat_choppers_seq, @object
	.size	cheat_choppers_seq, 11
cheat_choppers_seq:
	.ascii	"\262&\3422\366**\246j\352\377"
	.globl	cheat_god_seq
	.type	cheat_god_seq, @object
	.size	cheat_god_seq, 6
cheat_god_seq:
	.ascii	"\262&&\252&\377"
	.globl	cheat_ammo_seq
	.type	cheat_ammo_seq, @object
	.size	cheat_ammo_seq, 6
cheat_ammo_seq:
	.ascii	"\262&\362f\242\377"
	.globl	cheat_ammonokey_seq
	.type	cheat_ammonokey_seq, @object
	.size	cheat_ammonokey_seq, 5
cheat_ammonokey_seq:
	.ascii	"\262&f\242\377"
	.globl	cheat_noclip_seq
	.align 8
	.type	cheat_noclip_seq, @object
	.size	cheat_noclip_seq, 11
cheat_noclip_seq:
	.ascii	"\262&\352*\262\352*\366*&\377"
	.globl	cheat_commercial_noclip_seq
	.type	cheat_commercial_noclip_seq, @object
	.size	cheat_commercial_noclip_seq, 7
cheat_commercial_noclip_seq:
	.ascii	"\262&\3426\262*\377"
	.globl	cheat_powerup_seq
	.align 32
	.type	cheat_powerup_seq, @object
	.size	cheat_powerup_seq, 70
cheat_powerup_seq:
	.ascii	"\262&b\2462\3666&n\377"
	.ascii	"\262&b\2462\3666&\352\377"
	.ascii	"\262&b\2462\3666&\262\377"
	.ascii	"\262&b\2462\3666&j\377"
	.ascii	"\262&b\2462\3666&\242\377"
	.ascii	"\262&b\2462\3666&6\377"
	.string	"\262&b\2462\3666&\377"
	.globl	cheat_clev_seq
	.align 8
	.type	cheat_clev_seq, @object
	.size	cheat_clev_seq, 10
cheat_clev_seq:
	.string	"\262&\3426\246n\001"
	.string	""
	.ascii	"\377"
	.globl	cheat_mypos_seq
	.align 8
	.type	cheat_mypos_seq, @object
	.size	cheat_mypos_seq, 8
cheat_mypos_seq:
	.ascii	"\262&\266\272*\366\352\377"
	.globl	cheat_mus
	.section	.data.rel.local,"aw"
	.align 16
	.type	cheat_mus, @object
	.size	cheat_mus, 16
cheat_mus:
# sequence:
	.quad	cheat_mus_seq
# p:
	.quad	0
	.globl	cheat_god
	.align 16
	.type	cheat_god, @object
	.size	cheat_god, 16
cheat_god:
# sequence:
	.quad	cheat_god_seq
# p:
	.quad	0
	.globl	cheat_ammo
	.align 16
	.type	cheat_ammo, @object
	.size	cheat_ammo, 16
cheat_ammo:
# sequence:
	.quad	cheat_ammo_seq
# p:
	.quad	0
	.globl	cheat_ammonokey
	.align 16
	.type	cheat_ammonokey, @object
	.size	cheat_ammonokey, 16
cheat_ammonokey:
# sequence:
	.quad	cheat_ammonokey_seq
# p:
	.quad	0
	.globl	cheat_noclip
	.align 16
	.type	cheat_noclip, @object
	.size	cheat_noclip, 16
cheat_noclip:
# sequence:
	.quad	cheat_noclip_seq
# p:
	.quad	0
	.globl	cheat_commercial_noclip
	.align 16
	.type	cheat_commercial_noclip, @object
	.size	cheat_commercial_noclip, 16
cheat_commercial_noclip:
# sequence:
	.quad	cheat_commercial_noclip_seq
# p:
	.quad	0
	.globl	cheat_powerup
	.align 32
	.type	cheat_powerup, @object
	.size	cheat_powerup, 112
cheat_powerup:
# sequence:
	.quad	cheat_powerup_seq
# p:
	.quad	0
# sequence:
	.quad	cheat_powerup_seq+10
# p:
	.quad	0
# sequence:
	.quad	cheat_powerup_seq+20
# p:
	.quad	0
# sequence:
	.quad	cheat_powerup_seq+30
# p:
	.quad	0
# sequence:
	.quad	cheat_powerup_seq+40
# p:
	.quad	0
# sequence:
	.quad	cheat_powerup_seq+50
# p:
	.quad	0
# sequence:
	.quad	cheat_powerup_seq+60
# p:
	.quad	0
	.globl	cheat_choppers
	.align 16
	.type	cheat_choppers, @object
	.size	cheat_choppers, 16
cheat_choppers:
# sequence:
	.quad	cheat_choppers_seq
# p:
	.quad	0
	.globl	cheat_clev
	.align 16
	.type	cheat_clev, @object
	.size	cheat_clev, 16
cheat_clev:
# sequence:
	.quad	cheat_clev_seq
# p:
	.quad	0
	.globl	cheat_mypos
	.align 16
	.type	cheat_mypos, @object
	.size	cheat_mypos, 16
cheat_mypos:
# sequence:
	.quad	cheat_mypos_seq
# p:
	.quad	0
	.text
	.globl	ST_refreshBackground
	.type	ST_refreshBackground, @function
ST_refreshBackground:
.LFB0:
	.file 1 "st_stuff.c"
	.loc 1 500 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:502:     if (st_statusbaron)
	.loc 1 502 9
	movl	st_statusbaron(%rip), %eax	# st_statusbaron, st_statusbaron.0_1
# st_stuff.c:502:     if (st_statusbaron)
	.loc 1 502 8
	testl	%eax, %eax	# st_statusbaron.0_1
	je	.L4	#,
# st_stuff.c:504: 	V_DrawPatch(ST_X, 0, BG, sbar);
	.loc 1 504 2
	movq	sbar(%rip), %rax	# sbar, sbar.1_2
	movq	%rax, %rcx	# sbar.1_2,
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatch@PLT	#
# st_stuff.c:506: 	if (netgame)
	.loc 1 506 6
	movl	netgame(%rip), %eax	# netgame, netgame.2_3
# st_stuff.c:506: 	if (netgame)
	.loc 1 506 5
	testl	%eax, %eax	# netgame.2_3
	je	.L3	#,
# st_stuff.c:507: 	    V_DrawPatch(ST_FX, 0, BG, faceback);
	.loc 1 507 6
	movq	faceback(%rip), %rax	# faceback, faceback.3_4
	movq	%rax, %rcx	# faceback.3_4,
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movl	$143, %edi	#,
	call	V_DrawPatch@PLT	#
.L3:
# st_stuff.c:509: 	V_CopyRect(ST_X, 0, BG, ST_WIDTH, ST_HEIGHT, ST_X, ST_Y, FG);
	.loc 1 509 2
	pushq	$0	#
	pushq	$168	#
	movl	$0, %r9d	#,
	movl	$32, %r8d	#,
	movl	$320, %ecx	#,
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_CopyRect@PLT	#
	addq	$16, %rsp	#,
.L4:
# st_stuff.c:512: }
	.loc 1 512 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	ST_refreshBackground, .-ST_refreshBackground
	.section	.rodata
.LC0:
	.string	"Degreelessness Mode On"
.LC1:
	.string	"Degreelessness Mode Off"
.LC2:
	.string	"Ammo (no keys) Added"
.LC3:
	.string	"Very Happy Ammo Added"
.LC4:
	.string	"Music Change"
.LC5:
	.string	"IMPOSSIBLE SELECTION"
.LC6:
	.string	"No Clipping Mode ON"
.LC7:
	.string	"No Clipping Mode OFF"
.LC8:
	.string	"Power-up Toggled"
	.align 8
.LC9:
	.string	"inVuln, Str, Inviso, Rad, Allmap, or Lite-amp"
.LC10:
	.string	"... doesn't suck - GM"
.LC11:
	.string	"ang=0x%x;x,y=(0x%x,0x%x)"
.LC12:
	.string	"Changing Level..."
	.text
	.globl	ST_Responder
	.type	ST_Responder, @function
ST_Responder:
.LFB1:
	.loc 1 519 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ev, ev
# st_stuff.c:519: {
	.loc 1 519 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp359
	movq	%rax, -8(%rbp)	# tmp359, D.8211
	xorl	%eax, %eax	# tmp359
# st_stuff.c:523:   if (ev->type == ev_keyup
	.loc 1 523 9
	movq	-40(%rbp), %rax	# ev, tmp246
	movl	(%rax), %eax	# ev_190(D)->type, _1
# st_stuff.c:523:   if (ev->type == ev_keyup
	.loc 1 523 6
	cmpl	$1, %eax	#, _1
	jne	.L6	#,
# st_stuff.c:524:       && ((ev->data1 & 0xffff0000) == AM_MSGHEADER))
	.loc 1 524 14
	movq	-40(%rbp), %rax	# ev, tmp247
	movl	4(%rax), %eax	# ev_190(D)->data1, _2
# st_stuff.c:524:       && ((ev->data1 & 0xffff0000) == AM_MSGHEADER))
	.loc 1 524 22
	movw	$0, %ax	#, _4
# st_stuff.c:524:       && ((ev->data1 & 0xffff0000) == AM_MSGHEADER))
	.loc 1 524 7
	cmpl	$1634533376, %eax	#, _4
	jne	.L6	#,
# st_stuff.c:526:     switch(ev->data1)
	.loc 1 526 14
	movq	-40(%rbp), %rax	# ev, tmp248
	movl	4(%rax), %eax	# ev_190(D)->data1, _5
# st_stuff.c:526:     switch(ev->data1)
	.loc 1 526 5
	cmpl	$1634559232, %eax	#, _5
	je	.L7	#,
	cmpl	$1634564096, %eax	#, _5
	je	.L8	#,
	jmp	.L10	#
.L7:
# st_stuff.c:529: 	st_gamestate = AutomapState;
	.loc 1 529 15
	movl	$0, st_gamestate(%rip)	#, st_gamestate
# st_stuff.c:530: 	st_firsttime = true;
	.loc 1 530 15
	movl	$1, st_firsttime(%rip)	#, st_firsttime
# st_stuff.c:531: 	break;
	.loc 1 531 2
	jmp	.L9	#
.L8:
# st_stuff.c:535: 	st_gamestate = FirstPersonState;
	.loc 1 535 15
	movl	$1, st_gamestate(%rip)	#, st_gamestate
# st_stuff.c:536: 	break;
	.loc 1 536 2
	nop	
.L9:
# st_stuff.c:526:     switch(ev->data1)
	.loc 1 526 5
	jmp	.L10	#
.L6:
# st_stuff.c:541:   else if (ev->type == ev_keydown)
	.loc 1 541 14
	movq	-40(%rbp), %rax	# ev, tmp249
	movl	(%rax), %eax	# ev_190(D)->type, _6
# st_stuff.c:541:   else if (ev->type == ev_keydown)
	.loc 1 541 11
	testl	%eax, %eax	# _6
	jne	.L10	#,
# st_stuff.c:543:     if (!netgame)
	.loc 1 543 9
	movl	netgame(%rip), %eax	# netgame, netgame.4_7
# st_stuff.c:543:     if (!netgame)
	.loc 1 543 8
	testl	%eax, %eax	# netgame.4_7
	jne	.L11	#,
# st_stuff.c:549:       if (cht_CheckCheat(&cheat_god, ev->data1))
	.loc 1 549 40
	movq	-40(%rbp), %rax	# ev, tmp250
	movl	4(%rax), %eax	# ev_190(D)->data1, _8
# st_stuff.c:549:       if (cht_CheckCheat(&cheat_god, ev->data1))
	.loc 1 549 11
	movsbl	%al, %eax	# _9, _10
	movl	%eax, %esi	# _10,
	leaq	cheat_god(%rip), %rax	#, tmp251
	movq	%rax, %rdi	# tmp251,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:549:       if (cht_CheckCheat(&cheat_god, ev->data1))
	.loc 1 549 10 discriminator 1
	testl	%eax, %eax	# _11
	je	.L12	#,
# st_stuff.c:551: 	plyr->cheats ^= CF_GODMODE;
	.loc 1 551 6
	movq	plyr(%rip), %rax	# plyr, plyr.5_12
	movl	200(%rax), %edx	# plyr.5_12->cheats, _13
	movq	plyr(%rip), %rax	# plyr, plyr.6_14
# st_stuff.c:551: 	plyr->cheats ^= CF_GODMODE;
	.loc 1 551 15
	xorl	$2, %edx	#, _15
	movl	%edx, 200(%rax)	# _15, plyr.6_14->cheats
# st_stuff.c:552: 	if (plyr->cheats & CF_GODMODE)
	.loc 1 552 10
	movq	plyr(%rip), %rax	# plyr, plyr.7_16
	movl	200(%rax), %eax	# plyr.7_16->cheats, _17
# st_stuff.c:552: 	if (plyr->cheats & CF_GODMODE)
	.loc 1 552 19
	andl	$2, %eax	#, _18
# st_stuff.c:552: 	if (plyr->cheats & CF_GODMODE)
	.loc 1 552 5
	testl	%eax, %eax	# _18
	je	.L13	#,
# st_stuff.c:554: 	  if (plyr->mo)
	.loc 1 554 12
	movq	plyr(%rip), %rax	# plyr, plyr.8_19
	movq	(%rax), %rax	# plyr.8_19->mo, _20
# st_stuff.c:554: 	  if (plyr->mo)
	.loc 1 554 7
	testq	%rax, %rax	# _20
	je	.L14	#,
# st_stuff.c:555: 	    plyr->mo->health = 100;
	.loc 1 555 10
	movq	plyr(%rip), %rax	# plyr, plyr.9_21
	movq	(%rax), %rax	# plyr.9_21->mo, _22
# st_stuff.c:555: 	    plyr->mo->health = 100;
	.loc 1 555 23
	movl	$100, 164(%rax)	#, _22->health
.L14:
# st_stuff.c:557: 	  plyr->health = 100;
	.loc 1 557 8
	movq	plyr(%rip), %rax	# plyr, plyr.10_23
# st_stuff.c:557: 	  plyr->health = 100;
	.loc 1 557 17
	movl	$100, 36(%rax)	#, plyr.10_23->health
# st_stuff.c:558: 	  plyr->message = STSTR_DQDON;
	.loc 1 558 8
	movq	plyr(%rip), %rax	# plyr, plyr.11_24
# st_stuff.c:558: 	  plyr->message = STSTR_DQDON;
	.loc 1 558 18
	leaq	.LC0(%rip), %rdx	#, tmp252
	movq	%rdx, 224(%rax)	# tmp252, plyr.11_24->message
	jmp	.L15	#
.L13:
# st_stuff.c:561: 	  plyr->message = STSTR_DQDOFF;
	.loc 1 561 8
	movq	plyr(%rip), %rax	# plyr, plyr.12_25
# st_stuff.c:561: 	  plyr->message = STSTR_DQDOFF;
	.loc 1 561 18
	leaq	.LC1(%rip), %rdx	#, tmp253
	movq	%rdx, 224(%rax)	# tmp253, plyr.12_25->message
	jmp	.L15	#
.L12:
# st_stuff.c:564:       else if (cht_CheckCheat(&cheat_ammonokey, ev->data1))
	.loc 1 564 51
	movq	-40(%rbp), %rax	# ev, tmp254
	movl	4(%rax), %eax	# ev_190(D)->data1, _26
# st_stuff.c:564:       else if (cht_CheckCheat(&cheat_ammonokey, ev->data1))
	.loc 1 564 16
	movsbl	%al, %eax	# _27, _28
	movl	%eax, %esi	# _28,
	leaq	cheat_ammonokey(%rip), %rax	#, tmp255
	movq	%rax, %rdi	# tmp255,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:564:       else if (cht_CheckCheat(&cheat_ammonokey, ev->data1))
	.loc 1 564 15 discriminator 1
	testl	%eax, %eax	# _29
	je	.L16	#,
# st_stuff.c:566: 	plyr->armorpoints = 200;
	.loc 1 566 6
	movq	plyr(%rip), %rax	# plyr, plyr.13_30
# st_stuff.c:566: 	plyr->armorpoints = 200;
	.loc 1 566 20
	movl	$200, 40(%rax)	#, plyr.13_30->armorpoints
# st_stuff.c:567: 	plyr->armortype = 2;
	.loc 1 567 6
	movq	plyr(%rip), %rax	# plyr, plyr.14_31
# st_stuff.c:567: 	plyr->armortype = 2;
	.loc 1 567 18
	movl	$2, 44(%rax)	#, plyr.14_31->armortype
# st_stuff.c:569: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 569 8
	movl	$0, -28(%rbp)	#, i
# st_stuff.c:569: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 569 2
	jmp	.L17	#
.L18:
# st_stuff.c:570: 	  plyr->weaponowned[i] = true;
	.loc 1 570 8
	movq	plyr(%rip), %rax	# plyr, plyr.15_32
# st_stuff.c:570: 	  plyr->weaponowned[i] = true;
	.loc 1 570 25
	movl	-28(%rbp), %edx	# i, tmp257
	movslq	%edx, %rdx	# tmp257, tmp256
	addq	$28, %rdx	#, tmp258
	movl	$1, 12(%rax,%rdx,4)	#, plyr.15_32->weaponowned[i_163]
# st_stuff.c:569: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 569 25 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L17:
# st_stuff.c:569: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 569 12 discriminator 1
	cmpl	$8, -28(%rbp)	#, i
	jle	.L18	#,
# st_stuff.c:572: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 572 8
	movl	$0, -28(%rbp)	#, i
# st_stuff.c:572: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 572 2
	jmp	.L19	#
.L20:
# st_stuff.c:573: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 573 24
	movq	plyr(%rip), %rdx	# plyr, plyr.16_33
# st_stuff.c:573: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 573 8
	movq	plyr(%rip), %rax	# plyr, plyr.17_34
# st_stuff.c:573: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 573 33
	movl	-28(%rbp), %ecx	# i, tmp260
	movslq	%ecx, %rcx	# tmp260, tmp259
	addq	$44, %rcx	#, tmp261
	movl	(%rdx,%rcx,4), %edx	# plyr.16_33->maxammo[i_164], _35
# st_stuff.c:573: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 573 18
	movl	-28(%rbp), %ecx	# i, tmp263
	movslq	%ecx, %rcx	# tmp263, tmp262
	addq	$40, %rcx	#, tmp264
	movl	%edx, (%rax,%rcx,4)	# _35, plyr.17_34->ammo[i_164]
# st_stuff.c:572: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 572 22 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L19:
# st_stuff.c:572: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 572 12 discriminator 1
	cmpl	$3, -28(%rbp)	#, i
	jle	.L20	#,
# st_stuff.c:575: 	plyr->message = STSTR_FAADDED;
	.loc 1 575 6
	movq	plyr(%rip), %rax	# plyr, plyr.18_36
# st_stuff.c:575: 	plyr->message = STSTR_FAADDED;
	.loc 1 575 16
	leaq	.LC2(%rip), %rdx	#, tmp265
	movq	%rdx, 224(%rax)	# tmp265, plyr.18_36->message
	jmp	.L15	#
.L16:
# st_stuff.c:578:       else if (cht_CheckCheat(&cheat_ammo, ev->data1))
	.loc 1 578 46
	movq	-40(%rbp), %rax	# ev, tmp266
	movl	4(%rax), %eax	# ev_190(D)->data1, _37
# st_stuff.c:578:       else if (cht_CheckCheat(&cheat_ammo, ev->data1))
	.loc 1 578 16
	movsbl	%al, %eax	# _38, _39
	movl	%eax, %esi	# _39,
	leaq	cheat_ammo(%rip), %rax	#, tmp267
	movq	%rax, %rdi	# tmp267,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:578:       else if (cht_CheckCheat(&cheat_ammo, ev->data1))
	.loc 1 578 15 discriminator 1
	testl	%eax, %eax	# _40
	je	.L21	#,
# st_stuff.c:580: 	plyr->armorpoints = 200;
	.loc 1 580 6
	movq	plyr(%rip), %rax	# plyr, plyr.19_41
# st_stuff.c:580: 	plyr->armorpoints = 200;
	.loc 1 580 20
	movl	$200, 40(%rax)	#, plyr.19_41->armorpoints
# st_stuff.c:581: 	plyr->armortype = 2;
	.loc 1 581 6
	movq	plyr(%rip), %rax	# plyr, plyr.20_42
# st_stuff.c:581: 	plyr->armortype = 2;
	.loc 1 581 18
	movl	$2, 44(%rax)	#, plyr.20_42->armortype
# st_stuff.c:583: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 583 8
	movl	$0, -28(%rbp)	#, i
# st_stuff.c:583: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 583 2
	jmp	.L22	#
.L23:
# st_stuff.c:584: 	  plyr->weaponowned[i] = true;
	.loc 1 584 8
	movq	plyr(%rip), %rax	# plyr, plyr.21_43
# st_stuff.c:584: 	  plyr->weaponowned[i] = true;
	.loc 1 584 25
	movl	-28(%rbp), %edx	# i, tmp269
	movslq	%edx, %rdx	# tmp269, tmp268
	addq	$28, %rdx	#, tmp270
	movl	$1, 12(%rax,%rdx,4)	#, plyr.21_43->weaponowned[i_165]
# st_stuff.c:583: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 583 25 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L22:
# st_stuff.c:583: 	for (i=0;i<NUMWEAPONS;i++)
	.loc 1 583 12 discriminator 1
	cmpl	$8, -28(%rbp)	#, i
	jle	.L23	#,
# st_stuff.c:586: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 586 8
	movl	$0, -28(%rbp)	#, i
# st_stuff.c:586: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 586 2
	jmp	.L24	#
.L25:
# st_stuff.c:587: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 587 24
	movq	plyr(%rip), %rdx	# plyr, plyr.22_44
# st_stuff.c:587: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 587 8
	movq	plyr(%rip), %rax	# plyr, plyr.23_45
# st_stuff.c:587: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 587 33
	movl	-28(%rbp), %ecx	# i, tmp272
	movslq	%ecx, %rcx	# tmp272, tmp271
	addq	$44, %rcx	#, tmp273
	movl	(%rdx,%rcx,4), %edx	# plyr.22_44->maxammo[i_166], _46
# st_stuff.c:587: 	  plyr->ammo[i] = plyr->maxammo[i];
	.loc 1 587 18
	movl	-28(%rbp), %ecx	# i, tmp275
	movslq	%ecx, %rcx	# tmp275, tmp274
	addq	$40, %rcx	#, tmp276
	movl	%edx, (%rax,%rcx,4)	# _46, plyr.23_45->ammo[i_166]
# st_stuff.c:586: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 586 22 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L24:
# st_stuff.c:586: 	for (i=0;i<NUMAMMO;i++)
	.loc 1 586 12 discriminator 1
	cmpl	$3, -28(%rbp)	#, i
	jle	.L25	#,
# st_stuff.c:589: 	for (i=0;i<NUMCARDS;i++)
	.loc 1 589 8
	movl	$0, -28(%rbp)	#, i
# st_stuff.c:589: 	for (i=0;i<NUMCARDS;i++)
	.loc 1 589 2
	jmp	.L26	#
.L27:
# st_stuff.c:590: 	  plyr->cards[i] = true;
	.loc 1 590 8
	movq	plyr(%rip), %rax	# plyr, plyr.24_47
# st_stuff.c:590: 	  plyr->cards[i] = true;
	.loc 1 590 19
	movl	-28(%rbp), %edx	# i, tmp278
	movslq	%edx, %rdx	# tmp278, tmp277
	addq	$16, %rdx	#, tmp279
	movl	$1, 8(%rax,%rdx,4)	#, plyr.24_47->cards[i_167]
# st_stuff.c:589: 	for (i=0;i<NUMCARDS;i++)
	.loc 1 589 23 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L26:
# st_stuff.c:589: 	for (i=0;i<NUMCARDS;i++)
	.loc 1 589 12 discriminator 1
	cmpl	$5, -28(%rbp)	#, i
	jle	.L27	#,
# st_stuff.c:592: 	plyr->message = STSTR_KFAADDED;
	.loc 1 592 6
	movq	plyr(%rip), %rax	# plyr, plyr.25_48
# st_stuff.c:592: 	plyr->message = STSTR_KFAADDED;
	.loc 1 592 16
	leaq	.LC3(%rip), %rdx	#, tmp280
	movq	%rdx, 224(%rax)	# tmp280, plyr.25_48->message
	jmp	.L15	#
.L21:
# st_stuff.c:595:       else if (cht_CheckCheat(&cheat_mus, ev->data1))
	.loc 1 595 45
	movq	-40(%rbp), %rax	# ev, tmp281
	movl	4(%rax), %eax	# ev_190(D)->data1, _49
# st_stuff.c:595:       else if (cht_CheckCheat(&cheat_mus, ev->data1))
	.loc 1 595 16
	movsbl	%al, %eax	# _50, _51
	movl	%eax, %esi	# _51,
	leaq	cheat_mus(%rip), %rax	#, tmp282
	movq	%rax, %rdi	# tmp282,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:595:       else if (cht_CheckCheat(&cheat_mus, ev->data1))
	.loc 1 595 15 discriminator 1
	testl	%eax, %eax	# _52
	je	.L28	#,
.LBB2:
# st_stuff.c:601: 	plyr->message = STSTR_MUS;
	.loc 1 601 6
	movq	plyr(%rip), %rax	# plyr, plyr.26_53
# st_stuff.c:601: 	plyr->message = STSTR_MUS;
	.loc 1 601 16
	leaq	.LC4(%rip), %rdx	#, tmp283
	movq	%rdx, 224(%rax)	# tmp283, plyr.26_53->message
# st_stuff.c:602: 	cht_GetParam(&cheat_mus, buf);
	.loc 1 602 2
	leaq	-11(%rbp), %rax	#, tmp284
	movq	%rax, %rsi	# tmp284,
	leaq	cheat_mus(%rip), %rax	#, tmp285
	movq	%rax, %rdi	# tmp285,
	call	cht_GetParam@PLT	#
# st_stuff.c:604: 	if (gamemode == commercial)
	.loc 1 604 15
	movl	gamemode(%rip), %eax	# gamemode, gamemode.27_54
# st_stuff.c:604: 	if (gamemode == commercial)
	.loc 1 604 5
	cmpl	$2, %eax	#, gamemode.27_54
	jne	.L29	#,
# st_stuff.c:606: 	  musnum = mus_runnin + (buf[0]-'0')*10 + buf[1]-'0' - 1;
	.loc 1 606 30
	movzbl	-11(%rbp), %eax	# MEM[(char[3] *)_272][0], _55
	movsbl	%al, %eax	# _55, _56
# st_stuff.c:606: 	  musnum = mus_runnin + (buf[0]-'0')*10 + buf[1]-'0' - 1;
	.loc 1 606 33
	leal	-48(%rax), %edx	#, _57
# st_stuff.c:606: 	  musnum = mus_runnin + (buf[0]-'0')*10 + buf[1]-'0' - 1;
	.loc 1 606 38
	movl	%edx, %eax	# _57, tmp286
	sall	$2, %eax	#, tmp286
	addl	%edx, %eax	# _57, tmp286
	addl	%eax, %eax	# tmp287
# st_stuff.c:606: 	  musnum = mus_runnin + (buf[0]-'0')*10 + buf[1]-'0' - 1;
	.loc 1 606 24
	leal	33(%rax), %edx	#, _59
# st_stuff.c:606: 	  musnum = mus_runnin + (buf[0]-'0')*10 + buf[1]-'0' - 1;
	.loc 1 606 47
	movzbl	-10(%rbp), %eax	# MEM[(char[3] *)_272][1], _60
	movsbl	%al, %eax	# _60, _61
# st_stuff.c:606: 	  musnum = mus_runnin + (buf[0]-'0')*10 + buf[1]-'0' - 1;
	.loc 1 606 42
	addl	%edx, %eax	# _59, _62
# st_stuff.c:606: 	  musnum = mus_runnin + (buf[0]-'0')*10 + buf[1]-'0' - 1;
	.loc 1 606 11
	subl	$49, %eax	#, tmp288
	movl	%eax, -16(%rbp)	# tmp288, musnum
# st_stuff.c:608: 	  if (((buf[0]-'0')*10 + buf[1]-'0') > 35)
	.loc 1 608 13
	movzbl	-11(%rbp), %eax	# MEM[(char[3] *)_272][0], _63
	movsbl	%al, %eax	# _63, _64
# st_stuff.c:608: 	  if (((buf[0]-'0')*10 + buf[1]-'0') > 35)
	.loc 1 608 16
	leal	-48(%rax), %edx	#, _65
# st_stuff.c:608: 	  if (((buf[0]-'0')*10 + buf[1]-'0') > 35)
	.loc 1 608 21
	movl	%edx, %eax	# _65, tmp289
	sall	$2, %eax	#, tmp289
	addl	%edx, %eax	# _65, tmp289
	addl	%eax, %eax	# tmp290
	movl	%eax, %edx	# tmp289, _66
# st_stuff.c:608: 	  if (((buf[0]-'0')*10 + buf[1]-'0') > 35)
	.loc 1 608 30
	movzbl	-10(%rbp), %eax	# MEM[(char[3] *)_272][1], _67
	movsbl	%al, %eax	# _67, _68
# st_stuff.c:608: 	  if (((buf[0]-'0')*10 + buf[1]-'0') > 35)
	.loc 1 608 25
	addl	%edx, %eax	# _66, _69
# st_stuff.c:608: 	  if (((buf[0]-'0')*10 + buf[1]-'0') > 35)
	.loc 1 608 7
	cmpl	$83, %eax	#, _69
	jle	.L30	#,
# st_stuff.c:609: 	    plyr->message = STSTR_NOMUS;
	.loc 1 609 10
	movq	plyr(%rip), %rax	# plyr, plyr.28_70
# st_stuff.c:609: 	    plyr->message = STSTR_NOMUS;
	.loc 1 609 20
	leaq	.LC5(%rip), %rdx	#, tmp291
	movq	%rdx, 224(%rax)	# tmp291, plyr.28_70->message
	jmp	.L15	#
.L30:
# st_stuff.c:611: 	    S_ChangeMusic(musnum, 1);
	.loc 1 611 6
	movl	-16(%rbp), %eax	# musnum, tmp292
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp292,
	call	S_ChangeMusic@PLT	#
	jmp	.L15	#
.L29:
# st_stuff.c:615: 	  musnum = mus_e1m1 + (buf[0]-'1')*9 + (buf[1]-'1');
	.loc 1 615 28
	movzbl	-11(%rbp), %eax	# MEM[(char[3] *)_272][0], _71
	movsbl	%al, %eax	# _71, _72
# st_stuff.c:615: 	  musnum = mus_e1m1 + (buf[0]-'1')*9 + (buf[1]-'1');
	.loc 1 615 31
	leal	-49(%rax), %edx	#, _73
# st_stuff.c:615: 	  musnum = mus_e1m1 + (buf[0]-'1')*9 + (buf[1]-'1');
	.loc 1 615 36
	movl	%edx, %eax	# _73, tmp293
	sall	$3, %eax	#, tmp293
	addl	%edx, %eax	# _73, _74
# st_stuff.c:615: 	  musnum = mus_e1m1 + (buf[0]-'1')*9 + (buf[1]-'1');
	.loc 1 615 22
	leal	1(%rax), %edx	#, _75
# st_stuff.c:615: 	  musnum = mus_e1m1 + (buf[0]-'1')*9 + (buf[1]-'1');
	.loc 1 615 45
	movzbl	-10(%rbp), %eax	# MEM[(char[3] *)_272][1], _76
	movsbl	%al, %eax	# _76, _77
# st_stuff.c:615: 	  musnum = mus_e1m1 + (buf[0]-'1')*9 + (buf[1]-'1');
	.loc 1 615 48
	subl	$49, %eax	#, _78
# st_stuff.c:615: 	  musnum = mus_e1m1 + (buf[0]-'1')*9 + (buf[1]-'1');
	.loc 1 615 11
	addl	%edx, %eax	# _75, tmp294
	movl	%eax, -16(%rbp)	# tmp294, musnum
# st_stuff.c:617: 	  if (((buf[0]-'1')*9 + buf[1]-'1') > 31)
	.loc 1 617 13
	movzbl	-11(%rbp), %eax	# MEM[(char[3] *)_272][0], _79
	movsbl	%al, %eax	# _79, _80
# st_stuff.c:617: 	  if (((buf[0]-'1')*9 + buf[1]-'1') > 31)
	.loc 1 617 16
	leal	-49(%rax), %edx	#, _81
# st_stuff.c:617: 	  if (((buf[0]-'1')*9 + buf[1]-'1') > 31)
	.loc 1 617 21
	movl	%edx, %eax	# _81, tmp295
	sall	$3, %eax	#, tmp295
	addl	%eax, %edx	# tmp295, _82
# st_stuff.c:617: 	  if (((buf[0]-'1')*9 + buf[1]-'1') > 31)
	.loc 1 617 29
	movzbl	-10(%rbp), %eax	# MEM[(char[3] *)_272][1], _83
	movsbl	%al, %eax	# _83, _84
# st_stuff.c:617: 	  if (((buf[0]-'1')*9 + buf[1]-'1') > 31)
	.loc 1 617 24
	addl	%edx, %eax	# _82, _85
# st_stuff.c:617: 	  if (((buf[0]-'1')*9 + buf[1]-'1') > 31)
	.loc 1 617 7
	cmpl	$80, %eax	#, _85
	jle	.L32	#,
# st_stuff.c:618: 	    plyr->message = STSTR_NOMUS;
	.loc 1 618 10
	movq	plyr(%rip), %rax	# plyr, plyr.29_86
# st_stuff.c:618: 	    plyr->message = STSTR_NOMUS;
	.loc 1 618 20
	leaq	.LC5(%rip), %rdx	#, tmp296
	movq	%rdx, 224(%rax)	# tmp296, plyr.29_86->message
	jmp	.L15	#
.L32:
# st_stuff.c:620: 	    S_ChangeMusic(musnum, 1);
	.loc 1 620 6
	movl	-16(%rbp), %eax	# musnum, tmp297
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp297,
	call	S_ChangeMusic@PLT	#
	jmp	.L15	#
.L28:
.LBE2:
# st_stuff.c:625:       else if ( cht_CheckCheat(&cheat_noclip, ev->data1) 
	.loc 1 625 49
	movq	-40(%rbp), %rax	# ev, tmp298
	movl	4(%rax), %eax	# ev_190(D)->data1, _87
# st_stuff.c:625:       else if ( cht_CheckCheat(&cheat_noclip, ev->data1) 
	.loc 1 625 17
	movsbl	%al, %eax	# _88, _89
	movl	%eax, %esi	# _89,
	leaq	cheat_noclip(%rip), %rax	#, tmp299
	movq	%rax, %rdi	# tmp299,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:625:       else if ( cht_CheckCheat(&cheat_noclip, ev->data1) 
	.loc 1 625 15 discriminator 1
	testl	%eax, %eax	# _90
	jne	.L33	#,
# st_stuff.c:626: 		|| cht_CheckCheat(&cheat_commercial_noclip,ev->data1) )
	.loc 1 626 48
	movq	-40(%rbp), %rax	# ev, tmp300
	movl	4(%rax), %eax	# ev_190(D)->data1, _91
# st_stuff.c:626: 		|| cht_CheckCheat(&cheat_commercial_noclip,ev->data1) )
	.loc 1 626 6
	movsbl	%al, %eax	# _92, _93
	movl	%eax, %esi	# _93,
	leaq	cheat_commercial_noclip(%rip), %rax	#, tmp301
	movq	%rax, %rdi	# tmp301,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:626: 		|| cht_CheckCheat(&cheat_commercial_noclip,ev->data1) )
	.loc 1 626 3 discriminator 1
	testl	%eax, %eax	# _94
	je	.L15	#,
.L33:
# st_stuff.c:628: 	plyr->cheats ^= CF_NOCLIP;
	.loc 1 628 6
	movq	plyr(%rip), %rax	# plyr, plyr.30_95
	movl	200(%rax), %edx	# plyr.30_95->cheats, _96
	movq	plyr(%rip), %rax	# plyr, plyr.31_97
# st_stuff.c:628: 	plyr->cheats ^= CF_NOCLIP;
	.loc 1 628 15
	xorl	$1, %edx	#, _98
	movl	%edx, 200(%rax)	# _98, plyr.31_97->cheats
# st_stuff.c:630: 	if (plyr->cheats & CF_NOCLIP)
	.loc 1 630 10
	movq	plyr(%rip), %rax	# plyr, plyr.32_99
	movl	200(%rax), %eax	# plyr.32_99->cheats, _100
# st_stuff.c:630: 	if (plyr->cheats & CF_NOCLIP)
	.loc 1 630 19
	andl	$1, %eax	#, _101
# st_stuff.c:630: 	if (plyr->cheats & CF_NOCLIP)
	.loc 1 630 5
	testl	%eax, %eax	# _101
	je	.L34	#,
# st_stuff.c:631: 	  plyr->message = STSTR_NCON;
	.loc 1 631 8
	movq	plyr(%rip), %rax	# plyr, plyr.33_102
# st_stuff.c:631: 	  plyr->message = STSTR_NCON;
	.loc 1 631 18
	leaq	.LC6(%rip), %rdx	#, tmp302
	movq	%rdx, 224(%rax)	# tmp302, plyr.33_102->message
	jmp	.L15	#
.L34:
# st_stuff.c:633: 	  plyr->message = STSTR_NCOFF;
	.loc 1 633 8
	movq	plyr(%rip), %rax	# plyr, plyr.34_103
# st_stuff.c:633: 	  plyr->message = STSTR_NCOFF;
	.loc 1 633 18
	leaq	.LC7(%rip), %rdx	#, tmp303
	movq	%rdx, 224(%rax)	# tmp303, plyr.34_103->message
.L15:
# st_stuff.c:636:       for (i=0;i<6;i++)
	.loc 1 636 13
	movl	$0, -28(%rbp)	#, i
# st_stuff.c:636:       for (i=0;i<6;i++)
	.loc 1 636 7
	jmp	.L35	#
.L40:
# st_stuff.c:638: 	if (cht_CheckCheat(&cheat_powerup[i], ev->data1))
	.loc 1 638 42
	movq	-40(%rbp), %rax	# ev, tmp304
	movl	4(%rax), %eax	# ev_190(D)->data1, _104
# st_stuff.c:638: 	if (cht_CheckCheat(&cheat_powerup[i], ev->data1))
	.loc 1 638 6
	movsbl	%al, %eax	# _105, _106
	movl	-28(%rbp), %edx	# i, tmp306
	movslq	%edx, %rdx	# tmp306, tmp305
	movq	%rdx, %rcx	# tmp305, tmp305
	salq	$4, %rcx	#, tmp305
	leaq	cheat_powerup(%rip), %rdx	#, tmp308
	addq	%rcx, %rdx	# tmp307, _107
	movl	%eax, %esi	# _106,
	movq	%rdx, %rdi	# _107,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:638: 	if (cht_CheckCheat(&cheat_powerup[i], ev->data1))
	.loc 1 638 5 discriminator 1
	testl	%eax, %eax	# _108
	je	.L36	#,
# st_stuff.c:640: 	  if (!plyr->powers[i])
	.loc 1 640 13
	movq	plyr(%rip), %rax	# plyr, plyr.35_109
# st_stuff.c:640: 	  if (!plyr->powers[i])
	.loc 1 640 21
	movl	-28(%rbp), %edx	# i, tmp310
	movslq	%edx, %rdx	# tmp310, tmp309
	addq	$12, %rdx	#, tmp311
	movl	(%rax,%rdx,4), %eax	# plyr.35_109->powers[i_168], _110
# st_stuff.c:640: 	  if (!plyr->powers[i])
	.loc 1 640 7
	testl	%eax, %eax	# _110
	jne	.L37	#,
# st_stuff.c:641: 	    P_GivePower( plyr, i);
	.loc 1 641 6
	movq	plyr(%rip), %rax	# plyr, plyr.36_111
	movl	-28(%rbp), %edx	# i, tmp312
	movl	%edx, %esi	# tmp312,
	movq	%rax, %rdi	# plyr.36_111,
	call	P_GivePower@PLT	#
	jmp	.L38	#
.L37:
# st_stuff.c:642: 	  else if (i!=pw_strength)
	.loc 1 642 12
	cmpl	$1, -28(%rbp)	#, i
	je	.L39	#,
# st_stuff.c:643: 	    plyr->powers[i] = 1;
	.loc 1 643 10
	movq	plyr(%rip), %rax	# plyr, plyr.37_112
# st_stuff.c:643: 	    plyr->powers[i] = 1;
	.loc 1 643 22
	movl	-28(%rbp), %edx	# i, tmp314
	movslq	%edx, %rdx	# tmp314, tmp313
	addq	$12, %rdx	#, tmp315
	movl	$1, (%rax,%rdx,4)	#, plyr.37_112->powers[i_168]
	jmp	.L38	#
.L39:
# st_stuff.c:645: 	    plyr->powers[i] = 0;
	.loc 1 645 10
	movq	plyr(%rip), %rax	# plyr, plyr.38_113
# st_stuff.c:645: 	    plyr->powers[i] = 0;
	.loc 1 645 22
	movl	-28(%rbp), %edx	# i, tmp317
	movslq	%edx, %rdx	# tmp317, tmp316
	addq	$12, %rdx	#, tmp318
	movl	$0, (%rax,%rdx,4)	#, plyr.38_113->powers[i_168]
.L38:
# st_stuff.c:647: 	  plyr->message = STSTR_BEHOLDX;
	.loc 1 647 8
	movq	plyr(%rip), %rax	# plyr, plyr.39_114
# st_stuff.c:647: 	  plyr->message = STSTR_BEHOLDX;
	.loc 1 647 18
	leaq	.LC8(%rip), %rdx	#, tmp319
	movq	%rdx, 224(%rax)	# tmp319, plyr.39_114->message
.L36:
# st_stuff.c:636:       for (i=0;i<6;i++)
	.loc 1 636 21 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L35:
# st_stuff.c:636:       for (i=0;i<6;i++)
	.loc 1 636 17 discriminator 1
	cmpl	$5, -28(%rbp)	#, i
	jle	.L40	#,
# st_stuff.c:652:       if (cht_CheckCheat(&cheat_powerup[6], ev->data1))
	.loc 1 652 47
	movq	-40(%rbp), %rax	# ev, tmp320
	movl	4(%rax), %eax	# ev_190(D)->data1, _115
# st_stuff.c:652:       if (cht_CheckCheat(&cheat_powerup[6], ev->data1))
	.loc 1 652 11
	movsbl	%al, %eax	# _116, _117
	movl	%eax, %esi	# _117,
	leaq	96+cheat_powerup(%rip), %rax	#, tmp321
	movq	%rax, %rdi	# tmp321,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:652:       if (cht_CheckCheat(&cheat_powerup[6], ev->data1))
	.loc 1 652 10 discriminator 1
	testl	%eax, %eax	# _118
	je	.L41	#,
# st_stuff.c:654: 	plyr->message = STSTR_BEHOLD;
	.loc 1 654 6
	movq	plyr(%rip), %rax	# plyr, plyr.40_119
# st_stuff.c:654: 	plyr->message = STSTR_BEHOLD;
	.loc 1 654 16
	leaq	.LC9(%rip), %rdx	#, tmp322
	movq	%rdx, 224(%rax)	# tmp322, plyr.40_119->message
	jmp	.L11	#
.L41:
# st_stuff.c:657:       else if (cht_CheckCheat(&cheat_choppers, ev->data1))
	.loc 1 657 50
	movq	-40(%rbp), %rax	# ev, tmp323
	movl	4(%rax), %eax	# ev_190(D)->data1, _120
# st_stuff.c:657:       else if (cht_CheckCheat(&cheat_choppers, ev->data1))
	.loc 1 657 16
	movsbl	%al, %eax	# _121, _122
	movl	%eax, %esi	# _122,
	leaq	cheat_choppers(%rip), %rax	#, tmp324
	movq	%rax, %rdi	# tmp324,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:657:       else if (cht_CheckCheat(&cheat_choppers, ev->data1))
	.loc 1 657 15 discriminator 1
	testl	%eax, %eax	# _123
	je	.L42	#,
# st_stuff.c:659: 	plyr->weaponowned[wp_chainsaw] = true;
	.loc 1 659 6
	movq	plyr(%rip), %rax	# plyr, plyr.41_124
# st_stuff.c:659: 	plyr->weaponowned[wp_chainsaw] = true;
	.loc 1 659 33
	movl	$1, 152(%rax)	#, plyr.41_124->weaponowned[7]
# st_stuff.c:660: 	plyr->powers[pw_invulnerability] = true;
	.loc 1 660 6
	movq	plyr(%rip), %rax	# plyr, plyr.42_125
# st_stuff.c:660: 	plyr->powers[pw_invulnerability] = true;
	.loc 1 660 35
	movl	$1, 48(%rax)	#, plyr.42_125->powers[0]
# st_stuff.c:661: 	plyr->message = STSTR_CHOPPERS;
	.loc 1 661 6
	movq	plyr(%rip), %rax	# plyr, plyr.43_126
# st_stuff.c:661: 	plyr->message = STSTR_CHOPPERS;
	.loc 1 661 16
	leaq	.LC10(%rip), %rdx	#, tmp325
	movq	%rdx, 224(%rax)	# tmp325, plyr.43_126->message
	jmp	.L11	#
.L42:
# st_stuff.c:664:       else if (cht_CheckCheat(&cheat_mypos, ev->data1))
	.loc 1 664 47
	movq	-40(%rbp), %rax	# ev, tmp326
	movl	4(%rax), %eax	# ev_190(D)->data1, _127
# st_stuff.c:664:       else if (cht_CheckCheat(&cheat_mypos, ev->data1))
	.loc 1 664 16
	movsbl	%al, %eax	# _128, _129
	movl	%eax, %esi	# _129,
	leaq	cheat_mypos(%rip), %rax	#, tmp327
	movq	%rax, %rdi	# tmp327,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:664:       else if (cht_CheckCheat(&cheat_mypos, ev->data1))
	.loc 1 664 15 discriminator 1
	testl	%eax, %eax	# _130
	je	.L11	#,
.LBB3:
# st_stuff.c:670: 		players[consoleplayer].mo->y);
	.loc 1 670 25
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.44_131
	movslq	%eax, %rdx	# consoleplayer.44_131, tmp328
	movq	%rdx, %rax	# tmp328, tmp330
	salq	$2, %rax	#, tmp330
	addq	%rdx, %rax	# tmp328, tmp330
	salq	$6, %rax	#, tmp331
	movq	%rax, %rdx	# tmp330, tmp329
	leaq	players(%rip), %rax	#, tmp332
	movq	(%rdx,%rax), %rax	# players[consoleplayer.44_131].mo, _132
# st_stuff.c:667: 	sprintf(buf, "ang=0x%x;x,y=(0x%x,0x%x)",
	.loc 1 667 2
	movl	28(%rax), %esi	# _132->y, _133
# st_stuff.c:669: 		players[consoleplayer].mo->x,
	.loc 1 669 25
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.45_134
	movslq	%eax, %rdx	# consoleplayer.45_134, tmp333
	movq	%rdx, %rax	# tmp333, tmp335
	salq	$2, %rax	#, tmp335
	addq	%rdx, %rax	# tmp333, tmp335
	salq	$6, %rax	#, tmp336
	movq	%rax, %rdx	# tmp335, tmp334
	leaq	players(%rip), %rax	#, tmp337
	movq	(%rdx,%rax), %rax	# players[consoleplayer.45_134].mo, _135
# st_stuff.c:667: 	sprintf(buf, "ang=0x%x;x,y=(0x%x,0x%x)",
	.loc 1 667 2
	movl	24(%rax), %ecx	# _135->x, _136
# st_stuff.c:668: 		players[consoleplayer].mo->angle,
	.loc 1 668 25
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.46_137
	movslq	%eax, %rdx	# consoleplayer.46_137, tmp338
	movq	%rdx, %rax	# tmp338, tmp340
	salq	$2, %rax	#, tmp340
	addq	%rdx, %rax	# tmp338, tmp340
	salq	$6, %rax	#, tmp341
	movq	%rax, %rdx	# tmp340, tmp339
	leaq	players(%rip), %rax	#, tmp342
	movq	(%rdx,%rax), %rax	# players[consoleplayer.46_137].mo, _138
# st_stuff.c:667: 	sprintf(buf, "ang=0x%x;x,y=(0x%x,0x%x)",
	.loc 1 667 2
	movl	56(%rax), %eax	# _138->angle, _139
	movl	%esi, %r8d	# _133,
	movl	%eax, %edx	# _139,
	leaq	.LC11(%rip), %rax	#, tmp343
	movq	%rax, %rsi	# tmp343,
	leaq	buf.5(%rip), %rax	#, tmp344
	movq	%rax, %rdi	# tmp344,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:671: 	plyr->message = buf;
	.loc 1 671 6
	movq	plyr(%rip), %rax	# plyr, plyr.47_140
# st_stuff.c:671: 	plyr->message = buf;
	.loc 1 671 16
	leaq	buf.5(%rip), %rdx	#, tmp345
	movq	%rdx, 224(%rax)	# tmp345, plyr.47_140->message
.L11:
.LBE3:
# st_stuff.c:676:     if (cht_CheckCheat(&cheat_clev, ev->data1))
	.loc 1 676 39
	movq	-40(%rbp), %rax	# ev, tmp346
	movl	4(%rax), %eax	# ev_190(D)->data1, _141
# st_stuff.c:676:     if (cht_CheckCheat(&cheat_clev, ev->data1))
	.loc 1 676 9
	movsbl	%al, %eax	# _142, _143
	movl	%eax, %esi	# _143,
	leaq	cheat_clev(%rip), %rax	#, tmp347
	movq	%rax, %rdi	# tmp347,
	call	cht_CheckCheat@PLT	#
# st_stuff.c:676:     if (cht_CheckCheat(&cheat_clev, ev->data1))
	.loc 1 676 8 discriminator 1
	testl	%eax, %eax	# _144
	je	.L10	#,
.LBB4:
# st_stuff.c:682:       cht_GetParam(&cheat_clev, buf);
	.loc 1 682 7
	leaq	-11(%rbp), %rax	#, tmp348
	movq	%rax, %rsi	# tmp348,
	leaq	cheat_clev(%rip), %rax	#, tmp349
	movq	%rax, %rdi	# tmp349,
	call	cht_GetParam@PLT	#
# st_stuff.c:684:       if (gamemode == commercial)
	.loc 1 684 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.48_145
# st_stuff.c:684:       if (gamemode == commercial)
	.loc 1 684 10
	cmpl	$2, %eax	#, gamemode.48_145
	jne	.L43	#,
# st_stuff.c:686: 	epsd = 0;
	.loc 1 686 7
	movl	$0, -24(%rbp)	#, epsd
# st_stuff.c:687: 	map = (buf[0] - '0')*10 + buf[1] - '0';
	.loc 1 687 12
	movzbl	-11(%rbp), %eax	# MEM[(char[3] *)_272][0], _146
	movsbl	%al, %eax	# _146, _147
# st_stuff.c:687: 	map = (buf[0] - '0')*10 + buf[1] - '0';
	.loc 1 687 16
	leal	-48(%rax), %edx	#, _148
# st_stuff.c:687: 	map = (buf[0] - '0')*10 + buf[1] - '0';
	.loc 1 687 22
	movl	%edx, %eax	# _148, tmp350
	sall	$2, %eax	#, tmp350
	addl	%edx, %eax	# _148, tmp350
	addl	%eax, %eax	# tmp351
	movl	%eax, %edx	# tmp350, _149
# st_stuff.c:687: 	map = (buf[0] - '0')*10 + buf[1] - '0';
	.loc 1 687 31
	movzbl	-10(%rbp), %eax	# MEM[(char[3] *)_272][1], _150
	movsbl	%al, %eax	# _150, _151
# st_stuff.c:687: 	map = (buf[0] - '0')*10 + buf[1] - '0';
	.loc 1 687 26
	addl	%edx, %eax	# _149, _152
# st_stuff.c:687: 	map = (buf[0] - '0')*10 + buf[1] - '0';
	.loc 1 687 6
	subl	$48, %eax	#, tmp352
	movl	%eax, -20(%rbp)	# tmp352, map
	jmp	.L44	#
.L43:
# st_stuff.c:691: 	epsd = buf[0] - '0';
	.loc 1 691 12
	movzbl	-11(%rbp), %eax	# MEM[(char[3] *)_272][0], _153
	movsbl	%al, %eax	# _153, _154
# st_stuff.c:691: 	epsd = buf[0] - '0';
	.loc 1 691 7
	subl	$48, %eax	#, tmp353
	movl	%eax, -24(%rbp)	# tmp353, epsd
# st_stuff.c:692: 	map = buf[1] - '0';
	.loc 1 692 11
	movzbl	-10(%rbp), %eax	# MEM[(char[3] *)_272][1], _155
	movsbl	%al, %eax	# _155, _156
# st_stuff.c:692: 	map = buf[1] - '0';
	.loc 1 692 6
	subl	$48, %eax	#, tmp354
	movl	%eax, -20(%rbp)	# tmp354, map
.L44:
# st_stuff.c:696:       if (epsd < 1)
	.loc 1 696 10
	cmpl	$0, -24(%rbp)	#, epsd
	jg	.L45	#,
# st_stuff.c:697: 	return false;
	.loc 1 697 9
	movl	$0, %eax	#, _171
	jmp	.L56	#
.L45:
# st_stuff.c:699:       if (map < 1)
	.loc 1 699 10
	cmpl	$0, -20(%rbp)	#, map
	jg	.L47	#,
# st_stuff.c:700: 	return false;
	.loc 1 700 9
	movl	$0, %eax	#, _171
	jmp	.L56	#
.L47:
# st_stuff.c:703:       if ((gamemode == retail)
	.loc 1 703 21
	movl	gamemode(%rip), %eax	# gamemode, gamemode.49_157
# st_stuff.c:703:       if ((gamemode == retail)
	.loc 1 703 10
	cmpl	$3, %eax	#, gamemode.49_157
	jne	.L48	#,
# st_stuff.c:704: 	  && ((epsd > 4) || (map > 9)))
	.loc 1 704 4
	cmpl	$4, -24(%rbp)	#, epsd
	jg	.L49	#,
# st_stuff.c:704: 	  && ((epsd > 4) || (map > 9)))
	.loc 1 704 19 discriminator 1
	cmpl	$9, -20(%rbp)	#, map
	jle	.L48	#,
.L49:
# st_stuff.c:705: 	return false;
	.loc 1 705 9
	movl	$0, %eax	#, _171
	jmp	.L56	#
.L48:
# st_stuff.c:707:       if ((gamemode == registered)
	.loc 1 707 21
	movl	gamemode(%rip), %eax	# gamemode, gamemode.50_158
# st_stuff.c:707:       if ((gamemode == registered)
	.loc 1 707 10
	cmpl	$1, %eax	#, gamemode.50_158
	jne	.L50	#,
# st_stuff.c:708: 	  && ((epsd > 3) || (map > 9)))
	.loc 1 708 4
	cmpl	$3, -24(%rbp)	#, epsd
	jg	.L51	#,
# st_stuff.c:708: 	  && ((epsd > 3) || (map > 9)))
	.loc 1 708 19 discriminator 1
	cmpl	$9, -20(%rbp)	#, map
	jle	.L50	#,
.L51:
# st_stuff.c:709: 	return false;
	.loc 1 709 9
	movl	$0, %eax	#, _171
	jmp	.L56	#
.L50:
# st_stuff.c:711:       if ((gamemode == shareware)
	.loc 1 711 21
	movl	gamemode(%rip), %eax	# gamemode, gamemode.51_159
# st_stuff.c:711:       if ((gamemode == shareware)
	.loc 1 711 10
	testl	%eax, %eax	# gamemode.51_159
	jne	.L52	#,
# st_stuff.c:712: 	  && ((epsd > 1) || (map > 9)))
	.loc 1 712 4
	cmpl	$1, -24(%rbp)	#, epsd
	jg	.L53	#,
# st_stuff.c:712: 	  && ((epsd > 1) || (map > 9)))
	.loc 1 712 19 discriminator 1
	cmpl	$9, -20(%rbp)	#, map
	jle	.L52	#,
.L53:
# st_stuff.c:713: 	return false;
	.loc 1 713 9
	movl	$0, %eax	#, _171
	jmp	.L56	#
.L52:
# st_stuff.c:715:       if ((gamemode == commercial)
	.loc 1 715 21
	movl	gamemode(%rip), %eax	# gamemode, gamemode.52_160
# st_stuff.c:715:       if ((gamemode == commercial)
	.loc 1 715 10
	cmpl	$2, %eax	#, gamemode.52_160
	jne	.L54	#,
# st_stuff.c:716: 	&& (( epsd > 1) || (map > 34)))
	.loc 1 716 2
	cmpl	$1, -24(%rbp)	#, epsd
	jg	.L55	#,
# st_stuff.c:716: 	&& (( epsd > 1) || (map > 34)))
	.loc 1 716 18 discriminator 1
	cmpl	$34, -20(%rbp)	#, map
	jle	.L54	#,
.L55:
# st_stuff.c:717: 	return false;
	.loc 1 717 9
	movl	$0, %eax	#, _171
	jmp	.L56	#
.L54:
# st_stuff.c:720:       plyr->message = STSTR_CLEV;
	.loc 1 720 11
	movq	plyr(%rip), %rax	# plyr, plyr.53_161
# st_stuff.c:720:       plyr->message = STSTR_CLEV;
	.loc 1 720 21
	leaq	.LC12(%rip), %rdx	#, tmp355
	movq	%rdx, 224(%rax)	# tmp355, plyr.53_161->message
# st_stuff.c:721:       G_DeferedInitNew(gameskill, epsd, map);
	.loc 1 721 7
	movl	gameskill(%rip), %eax	# gameskill, gameskill.54_162
	movl	-20(%rbp), %edx	# map, tmp356
	movl	-24(%rbp), %ecx	# epsd, tmp357
	movl	%ecx, %esi	# tmp357,
	movl	%eax, %edi	# gameskill.54_162,
	call	G_DeferedInitNew@PLT	#
.L10:
.LBE4:
# st_stuff.c:724:   return false;
	.loc 1 724 10
	movl	$0, %eax	#, _171
.L56:
# st_stuff.c:725: }
	.loc 1 725 1
	movq	-8(%rbp), %rdx	# D.8211, tmp360
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp360
	je	.L57	#,
	call	__stack_chk_fail@PLT	#
.L57:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	ST_Responder, .-ST_Responder
	.globl	ST_calcPainOffset
	.type	ST_calcPainOffset, @function
ST_calcPainOffset:
.LFB2:
	.loc 1 730 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:735:     health = plyr->health > 100 ? 100 : plyr->health;
	.loc 1 735 18
	movq	plyr(%rip), %rax	# plyr, plyr.55_1
	movl	36(%rax), %eax	# plyr.55_1->health, _2
# st_stuff.c:735:     health = plyr->health > 100 ? 100 : plyr->health;
	.loc 1 735 12
	movl	$100, %edx	#, tmp101
	cmpl	%edx, %eax	# tmp101, _2
	cmovg	%edx, %eax	# _2,, tmp101, tmp91
	movl	%eax, -4(%rbp)	# tmp91, health
# st_stuff.c:737:     if (health != oldhealth)
	.loc 1 737 16
	movl	oldhealth.4(%rip), %eax	# oldhealth, oldhealth.56_3
# st_stuff.c:737:     if (health != oldhealth)
	.loc 1 737 8
	cmpl	%eax, -4(%rbp)	# oldhealth.56_3, health
	je	.L59	#,
# st_stuff.c:739: 	lastcalc = ST_FACESTRIDE * (((100 - health) * ST_NUMPAINFACES) / 101);
	.loc 1 739 36
	movl	$100, %eax	#, tmp92
	subl	-4(%rbp), %eax	# health, tmp92
	movl	%eax, %edx	# tmp92, _4
# st_stuff.c:739: 	lastcalc = ST_FACESTRIDE * (((100 - health) * ST_NUMPAINFACES) / 101);
	.loc 1 739 46
	movl	%edx, %eax	# _4, tmp93
	sall	$2, %eax	#, tmp93
	addl	%edx, %eax	# _4, _5
# st_stuff.c:739: 	lastcalc = ST_FACESTRIDE * (((100 - health) * ST_NUMPAINFACES) / 101);
	.loc 1 739 65
	movslq	%eax, %rdx	# _5, tmp94
	imulq	$680390859, %rdx, %rdx	#, tmp94, tmp95
	shrq	$32, %rdx	#, tmp96
	sarl	$4, %edx	#, tmp97
	sarl	$31, %eax	#, tmp98
	subl	%eax, %edx	# tmp98, _6
# st_stuff.c:739: 	lastcalc = ST_FACESTRIDE * (((100 - health) * ST_NUMPAINFACES) / 101);
	.loc 1 739 27
	leal	0(,%rdx,8), %eax	#, _7
# st_stuff.c:739: 	lastcalc = ST_FACESTRIDE * (((100 - health) * ST_NUMPAINFACES) / 101);
	.loc 1 739 11
	movl	%eax, lastcalc.3(%rip)	# _7, lastcalc
# st_stuff.c:740: 	oldhealth = health;
	.loc 1 740 12
	movl	-4(%rbp), %eax	# health, tmp99
	movl	%eax, oldhealth.4(%rip)	# tmp99, oldhealth
.L59:
# st_stuff.c:742:     return lastcalc;
	.loc 1 742 12
	movl	lastcalc.3(%rip), %eax	# lastcalc, _13
# st_stuff.c:743: }
	.loc 1 743 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	ST_calcPainOffset, .-ST_calcPainOffset
	.globl	ST_updateFaceWidget
	.type	ST_updateFaceWidget, @function
ST_updateFaceWidget:
.LFB3:
	.loc 1 753 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# st_stuff.c:761:     if (priority < 10)
	.loc 1 761 18
	movl	priority.2(%rip), %eax	# priority, priority.57_1
# st_stuff.c:761:     if (priority < 10)
	.loc 1 761 8
	cmpl	$9, %eax	#, priority.57_1
	jg	.L62	#,
# st_stuff.c:764: 	if (!plyr->health)
	.loc 1 764 11
	movq	plyr(%rip), %rax	# plyr, plyr.58_2
	movl	36(%rax), %eax	# plyr.58_2->health, _3
# st_stuff.c:764: 	if (!plyr->health)
	.loc 1 764 5
	testl	%eax, %eax	# _3
	jne	.L62	#,
# st_stuff.c:766: 	    priority = 9;
	.loc 1 766 15
	movl	$9, priority.2(%rip)	#, priority
# st_stuff.c:767: 	    st_faceindex = ST_DEADFACE;
	.loc 1 767 19
	movl	$41, st_faceindex(%rip)	#, st_faceindex
# st_stuff.c:768: 	    st_facecount = 1;
	.loc 1 768 19
	movl	$1, st_facecount(%rip)	#, st_facecount
.L62:
# st_stuff.c:772:     if (priority < 9)
	.loc 1 772 18
	movl	priority.2(%rip), %eax	# priority, priority.59_4
# st_stuff.c:772:     if (priority < 9)
	.loc 1 772 8
	cmpl	$8, %eax	#, priority.59_4
	jg	.L63	#,
# st_stuff.c:774: 	if (plyr->bonuscount)
	.loc 1 774 10
	movq	plyr(%rip), %rax	# plyr, plyr.60_5
	movl	236(%rax), %eax	# plyr.60_5->bonuscount, _6
# st_stuff.c:774: 	if (plyr->bonuscount)
	.loc 1 774 5
	testl	%eax, %eax	# _6
	je	.L63	#,
# st_stuff.c:777: 	    doevilgrin = false;
	.loc 1 777 17
	movl	$0, -8(%rbp)	#, doevilgrin
# st_stuff.c:779: 	    for (i=0;i<NUMWEAPONS;i++)
	.loc 1 779 12
	movl	$0, -16(%rbp)	#, i
# st_stuff.c:779: 	    for (i=0;i<NUMWEAPONS;i++)
	.loc 1 779 6
	jmp	.L64	#
.L66:
# st_stuff.c:781: 		if (oldweaponsowned[i] != plyr->weaponowned[i])
	.loc 1 781 22
	movl	-16(%rbp), %eax	# i, tmp174
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp175
	leaq	oldweaponsowned(%rip), %rax	#, tmp176
	movl	(%rdx,%rax), %edx	# oldweaponsowned[i_92], _7
# st_stuff.c:781: 		if (oldweaponsowned[i] != plyr->weaponowned[i])
	.loc 1 781 33
	movq	plyr(%rip), %rax	# plyr, plyr.61_8
# st_stuff.c:781: 		if (oldweaponsowned[i] != plyr->weaponowned[i])
	.loc 1 781 46
	movl	-16(%rbp), %ecx	# i, tmp178
	movslq	%ecx, %rcx	# tmp178, tmp177
	addq	$28, %rcx	#, tmp179
	movl	12(%rax,%rcx,4), %eax	# plyr.61_8->weaponowned[i_92], _9
# st_stuff.c:781: 		if (oldweaponsowned[i] != plyr->weaponowned[i])
	.loc 1 781 6
	cmpl	%eax, %edx	# _9, _7
	je	.L65	#,
# st_stuff.c:783: 		    doevilgrin = true;
	.loc 1 783 18
	movl	$1, -8(%rbp)	#, doevilgrin
# st_stuff.c:784: 		    oldweaponsowned[i] = plyr->weaponowned[i];
	.loc 1 784 32
	movq	plyr(%rip), %rax	# plyr, plyr.62_10
# st_stuff.c:784: 		    oldweaponsowned[i] = plyr->weaponowned[i];
	.loc 1 784 45
	movl	-16(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, tmp180
	addq	$28, %rdx	#, tmp182
	movl	12(%rax,%rdx,4), %eax	# plyr.62_10->weaponowned[i_92], _11
# st_stuff.c:784: 		    oldweaponsowned[i] = plyr->weaponowned[i];
	.loc 1 784 26
	movl	-16(%rbp), %edx	# i, tmp184
	movslq	%edx, %rdx	# tmp184, tmp183
	leaq	0(,%rdx,4), %rcx	#, tmp185
	leaq	oldweaponsowned(%rip), %rdx	#, tmp186
	movl	%eax, (%rcx,%rdx)	# _11, oldweaponsowned[i_92]
.L65:
# st_stuff.c:779: 	    for (i=0;i<NUMWEAPONS;i++)
	.loc 1 779 29 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L64:
# st_stuff.c:779: 	    for (i=0;i<NUMWEAPONS;i++)
	.loc 1 779 16 discriminator 1
	cmpl	$8, -16(%rbp)	#, i
	jle	.L66	#,
# st_stuff.c:787: 	    if (doevilgrin) 
	.loc 1 787 9
	cmpl	$0, -8(%rbp)	#, doevilgrin
	je	.L63	#,
# st_stuff.c:790: 		priority = 8;
	.loc 1 790 12
	movl	$8, priority.2(%rip)	#, priority
# st_stuff.c:791: 		st_facecount = ST_EVILGRINCOUNT;
	.loc 1 791 16
	movl	$70, st_facecount(%rip)	#, st_facecount
# st_stuff.c:792: 		st_faceindex = ST_calcPainOffset() + ST_EVILGRINOFFSET;
	.loc 1 792 18
	call	ST_calcPainOffset	#
# st_stuff.c:792: 		st_faceindex = ST_calcPainOffset() + ST_EVILGRINOFFSET;
	.loc 1 792 38 discriminator 1
	addl	$6, %eax	#, _13
# st_stuff.c:792: 		st_faceindex = ST_calcPainOffset() + ST_EVILGRINOFFSET;
	.loc 1 792 16 discriminator 1
	movl	%eax, st_faceindex(%rip)	# _13, st_faceindex
.L63:
# st_stuff.c:798:     if (priority < 8)
	.loc 1 798 18
	movl	priority.2(%rip), %eax	# priority, priority.63_14
# st_stuff.c:798:     if (priority < 8)
	.loc 1 798 8
	cmpl	$7, %eax	#, priority.63_14
	jg	.L67	#,
# st_stuff.c:800: 	if (plyr->damagecount
	.loc 1 800 10
	movq	plyr(%rip), %rax	# plyr, plyr.64_15
	movl	232(%rax), %eax	# plyr.64_15->damagecount, _16
# st_stuff.c:800: 	if (plyr->damagecount
	.loc 1 800 5
	testl	%eax, %eax	# _16
	je	.L67	#,
# st_stuff.c:801: 	    && plyr->attacker
	.loc 1 801 13
	movq	plyr(%rip), %rax	# plyr, plyr.65_17
	movq	240(%rax), %rax	# plyr.65_17->attacker, _18
# st_stuff.c:801: 	    && plyr->attacker
	.loc 1 801 6
	testq	%rax, %rax	# _18
	je	.L67	#,
# st_stuff.c:802: 	    && plyr->attacker != plyr->mo)
	.loc 1 802 13
	movq	plyr(%rip), %rax	# plyr, plyr.66_19
	movq	240(%rax), %rdx	# plyr.66_19->attacker, _20
# st_stuff.c:802: 	    && plyr->attacker != plyr->mo)
	.loc 1 802 31
	movq	plyr(%rip), %rax	# plyr, plyr.67_21
	movq	(%rax), %rax	# plyr.67_21->mo, _22
# st_stuff.c:802: 	    && plyr->attacker != plyr->mo)
	.loc 1 802 6
	cmpq	%rax, %rdx	# _22, _20
	je	.L67	#,
# st_stuff.c:805: 	    priority = 7;
	.loc 1 805 15
	movl	$7, priority.2(%rip)	#, priority
# st_stuff.c:807: 	    if (plyr->health - st_oldhealth > ST_MUCHPAIN)
	.loc 1 807 14
	movq	plyr(%rip), %rax	# plyr, plyr.68_23
	movl	36(%rax), %edx	# plyr.68_23->health, _24
# st_stuff.c:807: 	    if (plyr->health - st_oldhealth > ST_MUCHPAIN)
	.loc 1 807 23
	movl	st_oldhealth(%rip), %eax	# st_oldhealth, st_oldhealth.69_25
	subl	%eax, %edx	# st_oldhealth.69_25, _26
# st_stuff.c:807: 	    if (plyr->health - st_oldhealth > ST_MUCHPAIN)
	.loc 1 807 9
	cmpl	$20, %edx	#, _26
	jle	.L68	#,
# st_stuff.c:809: 		st_facecount = ST_TURNCOUNT;
	.loc 1 809 16
	movl	$35, st_facecount(%rip)	#, st_facecount
# st_stuff.c:810: 		st_faceindex = ST_calcPainOffset() + ST_OUCHOFFSET;
	.loc 1 810 18
	call	ST_calcPainOffset	#
# st_stuff.c:810: 		st_faceindex = ST_calcPainOffset() + ST_OUCHOFFSET;
	.loc 1 810 38 discriminator 1
	addl	$5, %eax	#, _28
# st_stuff.c:810: 		st_faceindex = ST_calcPainOffset() + ST_OUCHOFFSET;
	.loc 1 810 16 discriminator 1
	movl	%eax, st_faceindex(%rip)	# _28, st_faceindex
	jmp	.L67	#
.L68:
# st_stuff.c:817: 					      plyr->attacker->y);
	.loc 1 817 16
	movq	plyr(%rip), %rax	# plyr, plyr.70_29
	movq	240(%rax), %rax	# plyr.70_29->attacker, _30
# st_stuff.c:814: 		badguyangle = R_PointToAngle2(plyr->mo->x,
	.loc 1 814 17
	movl	28(%rax), %ecx	# _30->y, _31
# st_stuff.c:816: 					      plyr->attacker->x,
	.loc 1 816 16
	movq	plyr(%rip), %rax	# plyr, plyr.71_32
	movq	240(%rax), %rax	# plyr.71_32->attacker, _33
# st_stuff.c:814: 		badguyangle = R_PointToAngle2(plyr->mo->x,
	.loc 1 814 17
	movl	24(%rax), %edx	# _33->x, _34
# st_stuff.c:815: 					      plyr->mo->y,
	.loc 1 815 16
	movq	plyr(%rip), %rax	# plyr, plyr.72_35
	movq	(%rax), %rax	# plyr.72_35->mo, _36
# st_stuff.c:814: 		badguyangle = R_PointToAngle2(plyr->mo->x,
	.loc 1 814 17
	movl	28(%rax), %esi	# _36->y, _37
# st_stuff.c:814: 		badguyangle = R_PointToAngle2(plyr->mo->x,
	.loc 1 814 37
	movq	plyr(%rip), %rax	# plyr, plyr.73_38
	movq	(%rax), %rax	# plyr.73_38->mo, _39
# st_stuff.c:814: 		badguyangle = R_PointToAngle2(plyr->mo->x,
	.loc 1 814 17
	movl	24(%rax), %eax	# _39->x, _40
	movl	%eax, %edi	# _40,
	call	R_PointToAngle2@PLT	#
	movl	%eax, -4(%rbp)	# tmp187, badguyangle
# st_stuff.c:819: 		if (badguyangle > plyr->mo->angle)
	.loc 1 819 25
	movq	plyr(%rip), %rax	# plyr, plyr.74_41
	movq	(%rax), %rax	# plyr.74_41->mo, _42
# st_stuff.c:819: 		if (badguyangle > plyr->mo->angle)
	.loc 1 819 29
	movl	56(%rax), %eax	# _42->angle, _43
# st_stuff.c:819: 		if (badguyangle > plyr->mo->angle)
	.loc 1 819 6
	cmpl	-4(%rbp), %eax	# badguyangle, _43
	jnb	.L69	#,
# st_stuff.c:822: 		    diffang = badguyangle - plyr->mo->angle;
	.loc 1 822 35
	movq	plyr(%rip), %rax	# plyr, plyr.75_44
	movq	(%rax), %rax	# plyr.75_44->mo, _45
# st_stuff.c:822: 		    diffang = badguyangle - plyr->mo->angle;
	.loc 1 822 39
	movl	56(%rax), %eax	# _45->angle, _46
# st_stuff.c:822: 		    diffang = badguyangle - plyr->mo->angle;
	.loc 1 822 15
	movl	-4(%rbp), %edx	# badguyangle, tmp191
	subl	%eax, %edx	# _46, tmp190
	movl	%edx, -12(%rbp)	# tmp190, diffang
# st_stuff.c:823: 		    i = diffang > ANG180; 
	.loc 1 823 19
	cmpl	$-2147483648, -12(%rbp)	#, diffang
	seta	%al	#, _47
# st_stuff.c:823: 		    i = diffang > ANG180; 
	.loc 1 823 9
	movzbl	%al, %eax	# _47, tmp192
	movl	%eax, -16(%rbp)	# tmp192, i
	jmp	.L70	#
.L69:
# st_stuff.c:828: 		    diffang = plyr->mo->angle - badguyangle;
	.loc 1 828 21
	movq	plyr(%rip), %rax	# plyr, plyr.76_48
	movq	(%rax), %rax	# plyr.76_48->mo, _49
# st_stuff.c:828: 		    diffang = plyr->mo->angle - badguyangle;
	.loc 1 828 25
	movl	56(%rax), %eax	# _49->angle, _50
# st_stuff.c:828: 		    diffang = plyr->mo->angle - badguyangle;
	.loc 1 828 15
	subl	-4(%rbp), %eax	# badguyangle, tmp194
	movl	%eax, -12(%rbp)	# tmp194, diffang
# st_stuff.c:829: 		    i = diffang <= ANG180; 
	.loc 1 829 19
	cmpl	$-2147483648, -12(%rbp)	#, diffang
	setbe	%al	#, _51
# st_stuff.c:829: 		    i = diffang <= ANG180; 
	.loc 1 829 9
	movzbl	%al, %eax	# _51, tmp195
	movl	%eax, -16(%rbp)	# tmp195, i
.L70:
# st_stuff.c:833: 		st_facecount = ST_TURNCOUNT;
	.loc 1 833 16
	movl	$35, st_facecount(%rip)	#, st_facecount
# st_stuff.c:834: 		st_faceindex = ST_calcPainOffset();
	.loc 1 834 18
	call	ST_calcPainOffset	#
# st_stuff.c:834: 		st_faceindex = ST_calcPainOffset();
	.loc 1 834 16 discriminator 1
	movl	%eax, st_faceindex(%rip)	# _52, st_faceindex
# st_stuff.c:836: 		if (diffang < ANG45)
	.loc 1 836 6
	cmpl	$536870911, -12(%rbp)	#, diffang
	ja	.L71	#,
# st_stuff.c:839: 		    st_faceindex += ST_RAMPAGEOFFSET;
	.loc 1 839 20
	movl	st_faceindex(%rip), %eax	# st_faceindex, st_faceindex.77_53
	addl	$7, %eax	#, _54
	movl	%eax, st_faceindex(%rip)	# _54, st_faceindex
	jmp	.L67	#
.L71:
# st_stuff.c:841: 		else if (i)
	.loc 1 841 11
	cmpl	$0, -16(%rbp)	#, i
	je	.L72	#,
# st_stuff.c:844: 		    st_faceindex += ST_TURNOFFSET;
	.loc 1 844 20
	movl	st_faceindex(%rip), %eax	# st_faceindex, st_faceindex.78_55
	addl	$3, %eax	#, _56
	movl	%eax, st_faceindex(%rip)	# _56, st_faceindex
	jmp	.L67	#
.L72:
# st_stuff.c:849: 		    st_faceindex += ST_TURNOFFSET+1;
	.loc 1 849 20
	movl	st_faceindex(%rip), %eax	# st_faceindex, st_faceindex.79_57
	addl	$4, %eax	#, _58
	movl	%eax, st_faceindex(%rip)	# _58, st_faceindex
.L67:
# st_stuff.c:855:     if (priority < 7)
	.loc 1 855 18
	movl	priority.2(%rip), %eax	# priority, priority.80_59
# st_stuff.c:855:     if (priority < 7)
	.loc 1 855 8
	cmpl	$6, %eax	#, priority.80_59
	jg	.L73	#,
# st_stuff.c:858: 	if (plyr->damagecount)
	.loc 1 858 10
	movq	plyr(%rip), %rax	# plyr, plyr.81_60
	movl	232(%rax), %eax	# plyr.81_60->damagecount, _61
# st_stuff.c:858: 	if (plyr->damagecount)
	.loc 1 858 5
	testl	%eax, %eax	# _61
	je	.L73	#,
# st_stuff.c:860: 	    if (plyr->health - st_oldhealth > ST_MUCHPAIN)
	.loc 1 860 14
	movq	plyr(%rip), %rax	# plyr, plyr.82_62
	movl	36(%rax), %edx	# plyr.82_62->health, _63
# st_stuff.c:860: 	    if (plyr->health - st_oldhealth > ST_MUCHPAIN)
	.loc 1 860 23
	movl	st_oldhealth(%rip), %eax	# st_oldhealth, st_oldhealth.83_64
	subl	%eax, %edx	# st_oldhealth.83_64, _65
# st_stuff.c:860: 	    if (plyr->health - st_oldhealth > ST_MUCHPAIN)
	.loc 1 860 9
	cmpl	$20, %edx	#, _65
	jle	.L74	#,
# st_stuff.c:862: 		priority = 7;
	.loc 1 862 12
	movl	$7, priority.2(%rip)	#, priority
# st_stuff.c:863: 		st_facecount = ST_TURNCOUNT;
	.loc 1 863 16
	movl	$35, st_facecount(%rip)	#, st_facecount
# st_stuff.c:864: 		st_faceindex = ST_calcPainOffset() + ST_OUCHOFFSET;
	.loc 1 864 18
	call	ST_calcPainOffset	#
# st_stuff.c:864: 		st_faceindex = ST_calcPainOffset() + ST_OUCHOFFSET;
	.loc 1 864 38 discriminator 1
	addl	$5, %eax	#, _67
# st_stuff.c:864: 		st_faceindex = ST_calcPainOffset() + ST_OUCHOFFSET;
	.loc 1 864 16 discriminator 1
	movl	%eax, st_faceindex(%rip)	# _67, st_faceindex
	jmp	.L73	#
.L74:
# st_stuff.c:868: 		priority = 6;
	.loc 1 868 12
	movl	$6, priority.2(%rip)	#, priority
# st_stuff.c:869: 		st_facecount = ST_TURNCOUNT;
	.loc 1 869 16
	movl	$35, st_facecount(%rip)	#, st_facecount
# st_stuff.c:870: 		st_faceindex = ST_calcPainOffset() + ST_RAMPAGEOFFSET;
	.loc 1 870 18
	call	ST_calcPainOffset	#
# st_stuff.c:870: 		st_faceindex = ST_calcPainOffset() + ST_RAMPAGEOFFSET;
	.loc 1 870 38 discriminator 1
	addl	$7, %eax	#, _69
# st_stuff.c:870: 		st_faceindex = ST_calcPainOffset() + ST_RAMPAGEOFFSET;
	.loc 1 870 16 discriminator 1
	movl	%eax, st_faceindex(%rip)	# _69, st_faceindex
.L73:
# st_stuff.c:877:     if (priority < 6)
	.loc 1 877 18
	movl	priority.2(%rip), %eax	# priority, priority.84_70
# st_stuff.c:877:     if (priority < 6)
	.loc 1 877 8
	cmpl	$5, %eax	#, priority.84_70
	jg	.L75	#,
# st_stuff.c:880: 	if (plyr->attackdown)
	.loc 1 880 10
	movq	plyr(%rip), %rax	# plyr, plyr.85_71
	movl	192(%rax), %eax	# plyr.85_71->attackdown, _72
# st_stuff.c:880: 	if (plyr->attackdown)
	.loc 1 880 5
	testl	%eax, %eax	# _72
	je	.L76	#,
# st_stuff.c:882: 	    if (lastattackdown==-1)
	.loc 1 882 24
	movl	lastattackdown.1(%rip), %eax	# lastattackdown, lastattackdown.86_73
# st_stuff.c:882: 	    if (lastattackdown==-1)
	.loc 1 882 9
	cmpl	$-1, %eax	#, lastattackdown.86_73
	jne	.L77	#,
# st_stuff.c:883: 		lastattackdown = ST_RAMPAGEDELAY;
	.loc 1 883 18
	movl	$70, lastattackdown.1(%rip)	#, lastattackdown
	jmp	.L75	#
.L77:
# st_stuff.c:884: 	    else if (!--lastattackdown)
	.loc 1 884 16
	movl	lastattackdown.1(%rip), %eax	# lastattackdown, lastattackdown.87_74
	subl	$1, %eax	#, _75
# st_stuff.c:884: 	    else if (!--lastattackdown)
	.loc 1 884 14
	movl	%eax, lastattackdown.1(%rip)	# _75, lastattackdown
# st_stuff.c:884: 	    else if (!--lastattackdown)
	.loc 1 884 16
	movl	lastattackdown.1(%rip), %eax	# lastattackdown, lastattackdown.88_76
# st_stuff.c:884: 	    else if (!--lastattackdown)
	.loc 1 884 14
	testl	%eax, %eax	# lastattackdown.88_76
	jne	.L75	#,
# st_stuff.c:886: 		priority = 5;
	.loc 1 886 12
	movl	$5, priority.2(%rip)	#, priority
# st_stuff.c:887: 		st_faceindex = ST_calcPainOffset() + ST_RAMPAGEOFFSET;
	.loc 1 887 18
	call	ST_calcPainOffset	#
# st_stuff.c:887: 		st_faceindex = ST_calcPainOffset() + ST_RAMPAGEOFFSET;
	.loc 1 887 38 discriminator 1
	addl	$7, %eax	#, _78
# st_stuff.c:887: 		st_faceindex = ST_calcPainOffset() + ST_RAMPAGEOFFSET;
	.loc 1 887 16 discriminator 1
	movl	%eax, st_faceindex(%rip)	# _78, st_faceindex
# st_stuff.c:888: 		st_facecount = 1;
	.loc 1 888 16
	movl	$1, st_facecount(%rip)	#, st_facecount
# st_stuff.c:889: 		lastattackdown = 1;
	.loc 1 889 18
	movl	$1, lastattackdown.1(%rip)	#, lastattackdown
	jmp	.L75	#
.L76:
# st_stuff.c:893: 	    lastattackdown = -1;
	.loc 1 893 21
	movl	$-1, lastattackdown.1(%rip)	#, lastattackdown
.L75:
# st_stuff.c:897:     if (priority < 5)
	.loc 1 897 18
	movl	priority.2(%rip), %eax	# priority, priority.89_79
# st_stuff.c:897:     if (priority < 5)
	.loc 1 897 8
	cmpl	$4, %eax	#, priority.89_79
	jg	.L78	#,
# st_stuff.c:900: 	if ((plyr->cheats & CF_GODMODE)
	.loc 1 900 11
	movq	plyr(%rip), %rax	# plyr, plyr.90_80
	movl	200(%rax), %eax	# plyr.90_80->cheats, _81
# st_stuff.c:900: 	if ((plyr->cheats & CF_GODMODE)
	.loc 1 900 20
	andl	$2, %eax	#, _82
# st_stuff.c:900: 	if ((plyr->cheats & CF_GODMODE)
	.loc 1 900 5
	testl	%eax, %eax	# _82
	jne	.L79	#,
# st_stuff.c:901: 	    || plyr->powers[pw_invulnerability])
	.loc 1 901 13
	movq	plyr(%rip), %rax	# plyr, plyr.91_83
# st_stuff.c:901: 	    || plyr->powers[pw_invulnerability])
	.loc 1 901 21
	movl	48(%rax), %eax	# plyr.91_83->powers[0], _84
# st_stuff.c:901: 	    || plyr->powers[pw_invulnerability])
	.loc 1 901 6
	testl	%eax, %eax	# _84
	je	.L78	#,
.L79:
# st_stuff.c:903: 	    priority = 4;
	.loc 1 903 15
	movl	$4, priority.2(%rip)	#, priority
# st_stuff.c:905: 	    st_faceindex = ST_GODFACE;
	.loc 1 905 19
	movl	$40, st_faceindex(%rip)	#, st_faceindex
# st_stuff.c:906: 	    st_facecount = 1;
	.loc 1 906 19
	movl	$1, st_facecount(%rip)	#, st_facecount
.L78:
# st_stuff.c:913:     if (!st_facecount)
	.loc 1 913 9
	movl	st_facecount(%rip), %eax	# st_facecount, st_facecount.92_85
# st_stuff.c:913:     if (!st_facecount)
	.loc 1 913 8
	testl	%eax, %eax	# st_facecount.92_85
	jne	.L80	#,
# st_stuff.c:915: 	st_faceindex = ST_calcPainOffset() + (st_randomnumber % 3);
	.loc 1 915 17
	call	ST_calcPainOffset	#
	movl	%eax, %esi	#, _86
# st_stuff.c:915: 	st_faceindex = ST_calcPainOffset() + (st_randomnumber % 3);
	.loc 1 915 56 discriminator 1
	movl	st_randomnumber(%rip), %ecx	# st_randomnumber, st_randomnumber.93_87
	movslq	%ecx, %rax	# st_randomnumber.93_87, tmp196
	imulq	$1431655766, %rax, %rax	#, tmp196, tmp197
	shrq	$32, %rax	#, tmp197
	movq	%rax, %rdx	# tmp197, tmp198
	movl	%ecx, %eax	# st_randomnumber.93_87, tmp199
	sarl	$31, %eax	#, tmp199
	subl	%eax, %edx	# tmp199, _88
	movl	%edx, %eax	# _88, tmp200
	addl	%eax, %eax	# tmp200
	addl	%edx, %eax	# _88, tmp200
	subl	%eax, %ecx	# tmp200, st_randomnumber.93_87
	movl	%ecx, %edx	# st_randomnumber.93_87, _88
# st_stuff.c:915: 	st_faceindex = ST_calcPainOffset() + (st_randomnumber % 3);
	.loc 1 915 37 discriminator 1
	leal	(%rsi,%rdx), %eax	#, _89
# st_stuff.c:915: 	st_faceindex = ST_calcPainOffset() + (st_randomnumber % 3);
	.loc 1 915 15 discriminator 1
	movl	%eax, st_faceindex(%rip)	# _89, st_faceindex
# st_stuff.c:916: 	st_facecount = ST_STRAIGHTFACECOUNT;
	.loc 1 916 15
	movl	$17, st_facecount(%rip)	#, st_facecount
# st_stuff.c:917: 	priority = 0;
	.loc 1 917 11
	movl	$0, priority.2(%rip)	#, priority
.L80:
# st_stuff.c:920:     st_facecount--;
	.loc 1 920 17
	movl	st_facecount(%rip), %eax	# st_facecount, st_facecount.94_90
	subl	$1, %eax	#, _91
	movl	%eax, st_facecount(%rip)	# _91, st_facecount
# st_stuff.c:922: }
	.loc 1 922 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	ST_updateFaceWidget, .-ST_updateFaceWidget
	.globl	ST_updateWidgets
	.type	ST_updateWidgets, @function
ST_updateWidgets:
.LFB4:
	.loc 1 925 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# st_stuff.c:932:     if (weaponinfo[plyr->readyweapon].ammo == am_noammo)
	.loc 1 932 24
	movq	plyr(%rip), %rax	# plyr, plyr.95_1
	movl	116(%rax), %eax	# plyr.95_1->readyweapon, _2
# st_stuff.c:932:     if (weaponinfo[plyr->readyweapon].ammo == am_noammo)
	.loc 1 932 38
	movl	%eax, %edx	# _2, tmp124
	movq	%rdx, %rax	# tmp124, tmp126
	addq	%rax, %rax	# tmp126
	addq	%rdx, %rax	# tmp124, tmp126
	salq	$3, %rax	#, tmp127
	movq	%rax, %rdx	# tmp126, tmp125
	leaq	weaponinfo(%rip), %rax	#, tmp128
	movl	(%rdx,%rax), %eax	# weaponinfo[_2].ammo, _3
# st_stuff.c:932:     if (weaponinfo[plyr->readyweapon].ammo == am_noammo)
	.loc 1 932 8
	cmpl	$5, %eax	#, _3
	jne	.L82	#,
# st_stuff.c:933: 	w_ready.num = &largeammo;
	.loc 1 933 14
	leaq	largeammo.0(%rip), %rax	#, tmp129
	movq	%rax, 16+w_ready(%rip)	# tmp129, w_ready.num
	jmp	.L83	#
.L82:
# st_stuff.c:935: 	w_ready.num = &plyr->ammo[weaponinfo[plyr->readyweapon].ammo];
	.loc 1 935 21
	movq	plyr(%rip), %rdx	# plyr, plyr.96_4
# st_stuff.c:935: 	w_ready.num = &plyr->ammo[weaponinfo[plyr->readyweapon].ammo];
	.loc 1 935 43
	movq	plyr(%rip), %rax	# plyr, plyr.97_5
	movl	116(%rax), %eax	# plyr.97_5->readyweapon, _6
# st_stuff.c:935: 	w_ready.num = &plyr->ammo[weaponinfo[plyr->readyweapon].ammo];
	.loc 1 935 57
	movl	%eax, %ecx	# _6, tmp130
	movq	%rcx, %rax	# tmp130, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rcx, %rax	# tmp130, tmp132
	salq	$3, %rax	#, tmp133
	movq	%rax, %rcx	# tmp132, tmp131
	leaq	weaponinfo(%rip), %rax	#, tmp134
	movl	(%rcx,%rax), %eax	# weaponinfo[_6].ammo, _7
# st_stuff.c:935: 	w_ready.num = &plyr->ammo[weaponinfo[plyr->readyweapon].ammo];
	.loc 1 935 16
	movl	%eax, %eax	# _7, tmp135
	addq	$40, %rax	#, tmp136
	salq	$2, %rax	#, tmp137
	addq	%rdx, %rax	# plyr.96_4, _8
# st_stuff.c:935: 	w_ready.num = &plyr->ammo[weaponinfo[plyr->readyweapon].ammo];
	.loc 1 935 14
	movq	%rax, 16+w_ready(%rip)	# _8, w_ready.num
.L83:
# st_stuff.c:945:     w_ready.data = plyr->readyweapon;
	.loc 1 945 24
	movq	plyr(%rip), %rax	# plyr, plyr.98_9
	movl	116(%rax), %eax	# plyr.98_9->readyweapon, _10
# st_stuff.c:945:     w_ready.data = plyr->readyweapon;
	.loc 1 945 18
	movl	%eax, 40+w_ready(%rip)	# _11, w_ready.data
# st_stuff.c:953:     for (i=0;i<3;i++)
	.loc 1 953 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:953:     for (i=0;i<3;i++)
	.loc 1 953 5
	jmp	.L84	#
.L88:
# st_stuff.c:955: 	keyboxes[i] = plyr->cards[i] ? i : -1;
	.loc 1 955 20
	movq	plyr(%rip), %rax	# plyr, plyr.100_12
# st_stuff.c:955: 	keyboxes[i] = plyr->cards[i] ? i : -1;
	.loc 1 955 27
	movl	-4(%rbp), %edx	# i, tmp139
	movslq	%edx, %rdx	# tmp139, tmp138
	addq	$16, %rdx	#, tmp140
	movl	8(%rax,%rdx,4), %eax	# plyr.100_12->cards[i_40], _13
# st_stuff.c:955: 	keyboxes[i] = plyr->cards[i] ? i : -1;
	.loc 1 955 35
	testl	%eax, %eax	# _13
	je	.L85	#,
# st_stuff.c:955: 	keyboxes[i] = plyr->cards[i] ? i : -1;
	.loc 1 955 35 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, iftmp.99_42
	jmp	.L86	#
.L85:
# st_stuff.c:955: 	keyboxes[i] = plyr->cards[i] ? i : -1;
	.loc 1 955 35 discriminator 2
	movl	$-1, %eax	#, iftmp.99_42
.L86:
# st_stuff.c:955: 	keyboxes[i] = plyr->cards[i] ? i : -1;
	.loc 1 955 14 is_stmt 1 discriminator 4
	movl	-4(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, tmp141
	leaq	0(,%rdx,4), %rcx	#, tmp143
	leaq	keyboxes(%rip), %rdx	#, tmp144
	movl	%eax, (%rcx,%rdx)	# iftmp.99_42, keyboxes[i_40]
# st_stuff.c:957: 	if (plyr->cards[i+3])
	.loc 1 957 10
	movq	plyr(%rip), %rax	# plyr, plyr.101_14
# st_stuff.c:957: 	if (plyr->cards[i+3])
	.loc 1 957 19
	movl	-4(%rbp), %edx	# i, tmp145
	addl	$3, %edx	#, _15
# st_stuff.c:957: 	if (plyr->cards[i+3])
	.loc 1 957 17
	movslq	%edx, %rdx	# _15, tmp146
	addq	$16, %rdx	#, tmp147
	movl	8(%rax,%rdx,4), %eax	# plyr.101_14->cards[_15], _16
# st_stuff.c:957: 	if (plyr->cards[i+3])
	.loc 1 957 5
	testl	%eax, %eax	# _16
	je	.L87	#,
# st_stuff.c:958: 	    keyboxes[i] = i+3;
	.loc 1 958 21
	movl	-4(%rbp), %eax	# i, tmp148
	leal	3(%rax), %ecx	#, _17
# st_stuff.c:958: 	    keyboxes[i] = i+3;
	.loc 1 958 18
	movl	-4(%rbp), %eax	# i, tmp150
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp151
	leaq	keyboxes(%rip), %rax	#, tmp152
	movl	%ecx, (%rdx,%rax)	# _17, keyboxes[i_40]
.L87:
# st_stuff.c:953:     for (i=0;i<3;i++)
	.loc 1 953 19 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L84:
# st_stuff.c:953:     for (i=0;i<3;i++)
	.loc 1 953 15 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L88	#,
# st_stuff.c:962:     ST_updateFaceWidget();
	.loc 1 962 5
	call	ST_updateFaceWidget	#
# st_stuff.c:965:     st_notdeathmatch = !deathmatch;
	.loc 1 965 24
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.102_18
	testl	%eax, %eax	# deathmatch.102_18
	sete	%al	#, _19
	movzbl	%al, %eax	# _19, _20
# st_stuff.c:965:     st_notdeathmatch = !deathmatch;
	.loc 1 965 22
	movl	%eax, st_notdeathmatch(%rip)	# _20, st_notdeathmatch
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 17
	movl	st_statusbaron(%rip), %eax	# st_statusbaron, st_statusbaron.104_21
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 32
	testl	%eax, %eax	# st_statusbaron.104_21
	je	.L89	#,
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 35 discriminator 1
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.105_22
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 32 discriminator 1
	testl	%eax, %eax	# deathmatch.105_22
	jne	.L89	#,
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 32 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.103_43
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 32
	jmp	.L90	#
.L89:
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 32 discriminator 4
	movl	$0, %eax	#, iftmp.103_43
.L90:
# st_stuff.c:968:     st_armson = st_statusbaron && !deathmatch; 
	.loc 1 968 15 is_stmt 1 discriminator 6
	movl	%eax, st_armson(%rip)	# iftmp.106_23, st_armson
# st_stuff.c:971:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 971 18
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.108_24
# st_stuff.c:971:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 971 29
	testl	%eax, %eax	# deathmatch.108_24
	je	.L91	#,
# st_stuff.c:971:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 971 29 is_stmt 0 discriminator 1
	movl	st_statusbaron(%rip), %eax	# st_statusbaron, st_statusbaron.109_25
	testl	%eax, %eax	# st_statusbaron.109_25
	je	.L91	#,
# st_stuff.c:971:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 971 29 discriminator 3
	movl	$1, %eax	#, iftmp.107_44
# st_stuff.c:971:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 971 29
	jmp	.L92	#
.L91:
# st_stuff.c:971:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 971 29 discriminator 4
	movl	$0, %eax	#, iftmp.107_44
.L92:
# st_stuff.c:971:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 971 16 is_stmt 1 discriminator 6
	movl	%eax, st_fragson(%rip)	# iftmp.110_26, st_fragson
# st_stuff.c:972:     st_fragscount = 0;
	.loc 1 972 19
	movl	$0, st_fragscount(%rip)	#, st_fragscount
# st_stuff.c:974:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 974 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:974:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 974 5
	jmp	.L93	#
.L96:
# st_stuff.c:976: 	if (i != consoleplayer)
	.loc 1 976 8
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.111_27
# st_stuff.c:976: 	if (i != consoleplayer)
	.loc 1 976 5
	cmpl	%eax, -4(%rbp)	# consoleplayer.111_27, i
	je	.L94	#,
# st_stuff.c:977: 	    st_fragscount += plyr->frags[i];
	.loc 1 977 27
	movq	plyr(%rip), %rax	# plyr, plyr.112_28
# st_stuff.c:977: 	    st_fragscount += plyr->frags[i];
	.loc 1 977 34
	movl	-4(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	addq	$24, %rdx	#, tmp155
	movl	4(%rax,%rdx,4), %edx	# plyr.112_28->frags[i_41], _29
# st_stuff.c:977: 	    st_fragscount += plyr->frags[i];
	.loc 1 977 20
	movl	st_fragscount(%rip), %eax	# st_fragscount, st_fragscount.113_30
	addl	%edx, %eax	# _29, _31
	movl	%eax, st_fragscount(%rip)	# _31, st_fragscount
	jmp	.L95	#
.L94:
# st_stuff.c:979: 	    st_fragscount -= plyr->frags[i];
	.loc 1 979 20
	movl	st_fragscount(%rip), %edx	# st_fragscount, st_fragscount.114_32
# st_stuff.c:979: 	    st_fragscount -= plyr->frags[i];
	.loc 1 979 27
	movq	plyr(%rip), %rax	# plyr, plyr.115_33
# st_stuff.c:979: 	    st_fragscount -= plyr->frags[i];
	.loc 1 979 34
	movl	-4(%rbp), %ecx	# i, tmp157
	movslq	%ecx, %rcx	# tmp157, tmp156
	addq	$24, %rcx	#, tmp158
	movl	4(%rax,%rcx,4), %eax	# plyr.115_33->frags[i_41], _34
# st_stuff.c:979: 	    st_fragscount -= plyr->frags[i];
	.loc 1 979 20
	subl	%eax, %edx	# _34, _35
	movl	%edx, st_fragscount(%rip)	# _35, st_fragscount
.L95:
# st_stuff.c:974:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 974 32 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L93:
# st_stuff.c:974:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 974 17 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L96	#,
# st_stuff.c:983:     if (!--st_msgcounter)
	.loc 1 983 10
	movl	st_msgcounter(%rip), %eax	# st_msgcounter, st_msgcounter.116_36
	subl	$1, %eax	#, _37
# st_stuff.c:983:     if (!--st_msgcounter)
	.loc 1 983 8
	movl	%eax, st_msgcounter(%rip)	# _37, st_msgcounter
# st_stuff.c:983:     if (!--st_msgcounter)
	.loc 1 983 10
	movl	st_msgcounter(%rip), %eax	# st_msgcounter, st_msgcounter.117_38
# st_stuff.c:983:     if (!--st_msgcounter)
	.loc 1 983 8
	testl	%eax, %eax	# st_msgcounter.117_38
	jne	.L98	#,
# st_stuff.c:984: 	st_chat = st_oldchat;
	.loc 1 984 10
	movl	st_oldchat(%rip), %eax	# st_oldchat, st_oldchat.118_39
	movl	%eax, st_chat(%rip)	# st_oldchat.118_39, st_chat
.L98:
# st_stuff.c:986: }
	.loc 1 986 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	ST_updateWidgets, .-ST_updateWidgets
	.globl	ST_Ticker
	.type	ST_Ticker, @function
ST_Ticker:
.LFB5:
	.loc 1 989 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:991:     st_clock++;
	.loc 1 991 13
	movl	st_clock(%rip), %eax	# st_clock, st_clock.119_1
	addl	$1, %eax	#, _2
	movl	%eax, st_clock(%rip)	# _2, st_clock
# st_stuff.c:992:     st_randomnumber = M_Random();
	.loc 1 992 23
	call	M_Random@PLT	#
# st_stuff.c:992:     st_randomnumber = M_Random();
	.loc 1 992 21 discriminator 1
	movl	%eax, st_randomnumber(%rip)	# _3, st_randomnumber
# st_stuff.c:993:     ST_updateWidgets();
	.loc 1 993 5
	call	ST_updateWidgets	#
# st_stuff.c:994:     st_oldhealth = plyr->health;
	.loc 1 994 24
	movq	plyr(%rip), %rax	# plyr, plyr.120_4
	movl	36(%rax), %eax	# plyr.120_4->health, _5
# st_stuff.c:994:     st_oldhealth = plyr->health;
	.loc 1 994 18
	movl	%eax, st_oldhealth(%rip)	# _5, st_oldhealth
# st_stuff.c:996: }
	.loc 1 996 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	ST_Ticker, .-ST_Ticker
	.local	st_palette
	.comm	st_palette,4,4
	.globl	ST_doPaletteStuff
	.type	ST_doPaletteStuff, @function
ST_doPaletteStuff:
.LFB6:
	.loc 1 1001 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# st_stuff.c:1008:     cnt = plyr->damagecount;
	.loc 1 1008 15
	movq	plyr(%rip), %rax	# plyr, plyr.121_1
# st_stuff.c:1008:     cnt = plyr->damagecount;
	.loc 1 1008 9
	movl	232(%rax), %eax	# plyr.121_1->damagecount, tmp104
	movl	%eax, -16(%rbp)	# tmp104, cnt
# st_stuff.c:1010:     if (plyr->powers[pw_strength])
	.loc 1 1010 13
	movq	plyr(%rip), %rax	# plyr, plyr.122_2
# st_stuff.c:1010:     if (plyr->powers[pw_strength])
	.loc 1 1010 21
	movl	52(%rax), %eax	# plyr.122_2->powers[1], _3
# st_stuff.c:1010:     if (plyr->powers[pw_strength])
	.loc 1 1010 8
	testl	%eax, %eax	# _3
	je	.L101	#,
# st_stuff.c:1013:   	bzc = 12 - (plyr->powers[pw_strength]>>6);
	.loc 1 1013 20
	movq	plyr(%rip), %rax	# plyr, plyr.123_4
# st_stuff.c:1013:   	bzc = 12 - (plyr->powers[pw_strength]>>6);
	.loc 1 1013 28
	movl	52(%rax), %eax	# plyr.123_4->powers[1], _5
# st_stuff.c:1013:   	bzc = 12 - (plyr->powers[pw_strength]>>6);
	.loc 1 1013 41
	sarl	$6, %eax	#, _5
	movl	%eax, %edx	# _5, _6
# st_stuff.c:1013:   	bzc = 12 - (plyr->powers[pw_strength]>>6);
	.loc 1 1013 8
	movl	$12, %eax	#, tmp105
	subl	%edx, %eax	# _6, tmp106
	movl	%eax, -12(%rbp)	# tmp106, bzc
# st_stuff.c:1015: 	if (bzc > cnt)
	.loc 1 1015 5
	movl	-12(%rbp), %eax	# bzc, tmp107
	cmpl	-16(%rbp), %eax	# cnt, tmp107
	jle	.L101	#,
# st_stuff.c:1016: 	    cnt = bzc;
	.loc 1 1016 10
	movl	-12(%rbp), %eax	# bzc, tmp108
	movl	%eax, -16(%rbp)	# tmp108, cnt
.L101:
# st_stuff.c:1019:     if (cnt)
	.loc 1 1019 8
	cmpl	$0, -16(%rbp)	#, cnt
	je	.L102	#,
# st_stuff.c:1021: 	palette = (cnt+7)>>3;
	.loc 1 1021 16
	movl	-16(%rbp), %eax	# cnt, tmp109
	addl	$7, %eax	#, _7
# st_stuff.c:1021: 	palette = (cnt+7)>>3;
	.loc 1 1021 10
	sarl	$3, %eax	#, tmp110
	movl	%eax, -20(%rbp)	# tmp110, palette
# st_stuff.c:1023: 	if (palette >= NUMREDPALS)
	.loc 1 1023 5
	cmpl	$7, -20(%rbp)	#, palette
	jle	.L103	#,
# st_stuff.c:1024: 	    palette = NUMREDPALS-1;
	.loc 1 1024 14
	movl	$7, -20(%rbp)	#, palette
.L103:
# st_stuff.c:1026: 	palette += STARTREDPALS;
	.loc 1 1026 10
	addl	$1, -20(%rbp)	#, palette
	jmp	.L104	#
.L102:
# st_stuff.c:1029:     else if (plyr->bonuscount)
	.loc 1 1029 18
	movq	plyr(%rip), %rax	# plyr, plyr.124_8
	movl	236(%rax), %eax	# plyr.124_8->bonuscount, _9
# st_stuff.c:1029:     else if (plyr->bonuscount)
	.loc 1 1029 13
	testl	%eax, %eax	# _9
	je	.L105	#,
# st_stuff.c:1031: 	palette = (plyr->bonuscount+7)>>3;
	.loc 1 1031 17
	movq	plyr(%rip), %rax	# plyr, plyr.125_10
	movl	236(%rax), %eax	# plyr.125_10->bonuscount, _11
# st_stuff.c:1031: 	palette = (plyr->bonuscount+7)>>3;
	.loc 1 1031 29
	addl	$7, %eax	#, _12
# st_stuff.c:1031: 	palette = (plyr->bonuscount+7)>>3;
	.loc 1 1031 10
	sarl	$3, %eax	#, tmp111
	movl	%eax, -20(%rbp)	# tmp111, palette
# st_stuff.c:1033: 	if (palette >= NUMBONUSPALS)
	.loc 1 1033 5
	cmpl	$3, -20(%rbp)	#, palette
	jle	.L106	#,
# st_stuff.c:1034: 	    palette = NUMBONUSPALS-1;
	.loc 1 1034 14
	movl	$3, -20(%rbp)	#, palette
.L106:
# st_stuff.c:1036: 	palette += STARTBONUSPALS;
	.loc 1 1036 10
	addl	$9, -20(%rbp)	#, palette
	jmp	.L104	#
.L105:
# st_stuff.c:1039:     else if ( plyr->powers[pw_ironfeet] > 4*32
	.loc 1 1039 19
	movq	plyr(%rip), %rax	# plyr, plyr.126_13
# st_stuff.c:1039:     else if ( plyr->powers[pw_ironfeet] > 4*32
	.loc 1 1039 27
	movl	60(%rax), %eax	# plyr.126_13->powers[3], _14
# st_stuff.c:1039:     else if ( plyr->powers[pw_ironfeet] > 4*32
	.loc 1 1039 13
	cmpl	$128, %eax	#, _14
	jg	.L107	#,
# st_stuff.c:1040: 	      || plyr->powers[pw_ironfeet]&8)
	.loc 1 1040 15
	movq	plyr(%rip), %rax	# plyr, plyr.127_15
# st_stuff.c:1040: 	      || plyr->powers[pw_ironfeet]&8)
	.loc 1 1040 23
	movl	60(%rax), %eax	# plyr.127_15->powers[3], _16
# st_stuff.c:1040: 	      || plyr->powers[pw_ironfeet]&8)
	.loc 1 1040 36
	andl	$8, %eax	#, _17
# st_stuff.c:1040: 	      || plyr->powers[pw_ironfeet]&8)
	.loc 1 1040 8
	testl	%eax, %eax	# _17
	je	.L108	#,
.L107:
# st_stuff.c:1041: 	palette = RADIATIONPAL;
	.loc 1 1041 10
	movl	$13, -20(%rbp)	#, palette
	jmp	.L104	#
.L108:
# st_stuff.c:1043: 	palette = 0;
	.loc 1 1043 10
	movl	$0, -20(%rbp)	#, palette
.L104:
# st_stuff.c:1045:     if (palette != st_palette)
	.loc 1 1045 17
	movl	st_palette(%rip), %eax	# st_palette, st_palette.128_18
# st_stuff.c:1045:     if (palette != st_palette)
	.loc 1 1045 8
	cmpl	%eax, -20(%rbp)	# st_palette.128_18, palette
	je	.L110	#,
# st_stuff.c:1047: 	st_palette = palette;
	.loc 1 1047 13
	movl	-20(%rbp), %eax	# palette, tmp112
	movl	%eax, st_palette(%rip)	# tmp112, st_palette
# st_stuff.c:1048: 	pal = (byte *) W_CacheLumpNum (lu_palette, PU_CACHE)+palette*768;
	.loc 1 1048 8
	movl	lu_palette(%rip), %eax	# lu_palette, lu_palette.129_19
# st_stuff.c:1048: 	pal = (byte *) W_CacheLumpNum (lu_palette, PU_CACHE)+palette*768;
	.loc 1 1048 17
	movl	$101, %esi	#,
	movl	%eax, %edi	# lu_palette.129_19,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, %rcx	#, _20
# st_stuff.c:1048: 	pal = (byte *) W_CacheLumpNum (lu_palette, PU_CACHE)+palette*768;
	.loc 1 1048 62 discriminator 1
	movl	-20(%rbp), %edx	# palette, tmp113
	movl	%edx, %eax	# tmp113, tmp114
	addl	%eax, %eax	# tmp114
	addl	%edx, %eax	# tmp113, tmp114
	sall	$8, %eax	#, tmp115
	cltq
# st_stuff.c:1048: 	pal = (byte *) W_CacheLumpNum (lu_palette, PU_CACHE)+palette*768;
	.loc 1 1048 6 discriminator 1
	addq	%rcx, %rax	# _20, tmp116
	movq	%rax, -8(%rbp)	# tmp116, pal
# st_stuff.c:1049: 	I_SetPalette (pal);
	.loc 1 1049 2
	movq	-8(%rbp), %rax	# pal, tmp117
	movq	%rax, %rdi	# tmp117,
	call	I_SetPalette@PLT	#
.L110:
# st_stuff.c:1052: }
	.loc 1 1052 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	ST_doPaletteStuff, .-ST_doPaletteStuff
	.globl	ST_drawWidgets
	.type	ST_drawWidgets, @function
ST_drawWidgets:
.LFB7:
	.loc 1 1055 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# refresh, refresh
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 17
	movl	st_statusbaron(%rip), %eax	# st_statusbaron, st_statusbaron.131_1
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 32
	testl	%eax, %eax	# st_statusbaron.131_1
	je	.L112	#,
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 35 discriminator 1
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.132_2
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 32 discriminator 1
	testl	%eax, %eax	# deathmatch.132_2
	jne	.L112	#,
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 32 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.130_16
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 32
	jmp	.L113	#
.L112:
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 32 discriminator 4
	movl	$0, %eax	#, iftmp.130_16
.L113:
# st_stuff.c:1059:     st_armson = st_statusbaron && !deathmatch;
	.loc 1 1059 15 is_stmt 1 discriminator 6
	movl	%eax, st_armson(%rip)	# iftmp.133_3, st_armson
# st_stuff.c:1062:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 1062 18
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.135_4
# st_stuff.c:1062:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 1062 29
	testl	%eax, %eax	# deathmatch.135_4
	je	.L114	#,
# st_stuff.c:1062:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 1062 29 is_stmt 0 discriminator 1
	movl	st_statusbaron(%rip), %eax	# st_statusbaron, st_statusbaron.136_5
	testl	%eax, %eax	# st_statusbaron.136_5
	je	.L114	#,
# st_stuff.c:1062:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 1062 29 discriminator 3
	movl	$1, %eax	#, iftmp.134_17
# st_stuff.c:1062:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 1062 29
	jmp	.L115	#
.L114:
# st_stuff.c:1062:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 1062 29 discriminator 4
	movl	$0, %eax	#, iftmp.134_17
.L115:
# st_stuff.c:1062:     st_fragson = deathmatch && st_statusbaron; 
	.loc 1 1062 16 is_stmt 1 discriminator 6
	movl	%eax, st_fragson(%rip)	# iftmp.137_6, st_fragson
# st_stuff.c:1064:     STlib_updateNum(&w_ready, refresh);
	.loc 1 1064 5
	movl	-20(%rbp), %eax	# refresh, tmp96
	movl	%eax, %esi	# tmp96,
	leaq	w_ready(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	STlib_updateNum@PLT	#
# st_stuff.c:1066:     for (i=0;i<4;i++)
	.loc 1 1066 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1066:     for (i=0;i<4;i++)
	.loc 1 1066 5
	jmp	.L116	#
.L117:
# st_stuff.c:1068: 	STlib_updateNum(&w_ammo[i], refresh);
	.loc 1 1068 2
	movl	-4(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$4, %rax	#, tmp101
	leaq	w_ammo(%rip), %rdx	#, tmp102
	addq	%rax, %rdx	# tmp100, _7
	movl	-20(%rbp), %eax	# refresh, tmp103
	movl	%eax, %esi	# tmp103,
	movq	%rdx, %rdi	# _7,
	call	STlib_updateNum@PLT	#
# st_stuff.c:1069: 	STlib_updateNum(&w_maxammo[i], refresh);
	.loc 1 1069 2
	movl	-4(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp106
	addq	%rax, %rax	# tmp106
	addq	%rdx, %rax	# tmp104, tmp106
	salq	$4, %rax	#, tmp107
	leaq	w_maxammo(%rip), %rdx	#, tmp108
	addq	%rax, %rdx	# tmp106, _8
	movl	-20(%rbp), %eax	# refresh, tmp109
	movl	%eax, %esi	# tmp109,
	movq	%rdx, %rdi	# _8,
	call	STlib_updateNum@PLT	#
# st_stuff.c:1066:     for (i=0;i<4;i++)
	.loc 1 1066 19 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L116:
# st_stuff.c:1066:     for (i=0;i<4;i++)
	.loc 1 1066 15 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L117	#,
# st_stuff.c:1072:     STlib_updatePercent(&w_health, refresh);
	.loc 1 1072 5
	movl	-20(%rbp), %eax	# refresh, refresh.138_9
	movl	%eax, %esi	# refresh.138_9,
	leaq	w_health(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	STlib_updatePercent@PLT	#
# st_stuff.c:1073:     STlib_updatePercent(&w_armor, refresh);
	.loc 1 1073 5
	movl	-20(%rbp), %eax	# refresh, refresh.139_10
	movl	%eax, %esi	# refresh.139_10,
	leaq	w_armor(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	STlib_updatePercent@PLT	#
# st_stuff.c:1075:     STlib_updateBinIcon(&w_armsbg, refresh);
	.loc 1 1075 5
	movl	-20(%rbp), %eax	# refresh, tmp112
	movl	%eax, %esi	# tmp112,
	leaq	w_armsbg(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	STlib_updateBinIcon@PLT	#
# st_stuff.c:1077:     for (i=0;i<6;i++)
	.loc 1 1077 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1077:     for (i=0;i<6;i++)
	.loc 1 1077 5
	jmp	.L118	#
.L119:
# st_stuff.c:1078: 	STlib_updateMultIcon(&w_arms[i], refresh);
	.loc 1 1078 2
	movl	-4(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, tmp114
	movq	%rdx, %rax	# tmp114, tmp116
	addq	%rax, %rax	# tmp116
	addq	%rdx, %rax	# tmp114, tmp116
	salq	$4, %rax	#, tmp117
	leaq	w_arms(%rip), %rdx	#, tmp118
	addq	%rax, %rdx	# tmp116, _11
	movl	-20(%rbp), %eax	# refresh, tmp119
	movl	%eax, %esi	# tmp119,
	movq	%rdx, %rdi	# _11,
	call	STlib_updateMultIcon@PLT	#
# st_stuff.c:1077:     for (i=0;i<6;i++)
	.loc 1 1077 19 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L118:
# st_stuff.c:1077:     for (i=0;i<6;i++)
	.loc 1 1077 15 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L119	#,
# st_stuff.c:1080:     STlib_updateMultIcon(&w_faces, refresh);
	.loc 1 1080 5
	movl	-20(%rbp), %eax	# refresh, tmp120
	movl	%eax, %esi	# tmp120,
	leaq	w_faces(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	STlib_updateMultIcon@PLT	#
# st_stuff.c:1082:     for (i=0;i<3;i++)
	.loc 1 1082 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1082:     for (i=0;i<3;i++)
	.loc 1 1082 5
	jmp	.L120	#
.L121:
# st_stuff.c:1083: 	STlib_updateMultIcon(&w_keyboxes[i], refresh);
	.loc 1 1083 2
	movl	-4(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, tmp122
	movq	%rdx, %rax	# tmp122, tmp124
	addq	%rax, %rax	# tmp124
	addq	%rdx, %rax	# tmp122, tmp124
	salq	$4, %rax	#, tmp125
	leaq	w_keyboxes(%rip), %rdx	#, tmp126
	addq	%rax, %rdx	# tmp124, _12
	movl	-20(%rbp), %eax	# refresh, tmp127
	movl	%eax, %esi	# tmp127,
	movq	%rdx, %rdi	# _12,
	call	STlib_updateMultIcon@PLT	#
# st_stuff.c:1082:     for (i=0;i<3;i++)
	.loc 1 1082 19 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L120:
# st_stuff.c:1082:     for (i=0;i<3;i++)
	.loc 1 1082 15 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L121	#,
# st_stuff.c:1085:     STlib_updateNum(&w_frags, refresh);
	.loc 1 1085 5
	movl	-20(%rbp), %eax	# refresh, tmp128
	movl	%eax, %esi	# tmp128,
	leaq	w_frags(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	STlib_updateNum@PLT	#
# st_stuff.c:1087: }
	.loc 1 1087 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	ST_drawWidgets, .-ST_drawWidgets
	.globl	ST_doRefresh
	.type	ST_doRefresh, @function
ST_doRefresh:
.LFB8:
	.loc 1 1090 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:1092:     st_firsttime = false;
	.loc 1 1092 18
	movl	$0, st_firsttime(%rip)	#, st_firsttime
# st_stuff.c:1095:     ST_refreshBackground();
	.loc 1 1095 5
	call	ST_refreshBackground	#
# st_stuff.c:1098:     ST_drawWidgets(true);
	.loc 1 1098 5
	movl	$1, %edi	#,
	call	ST_drawWidgets	#
# st_stuff.c:1100: }
	.loc 1 1100 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	ST_doRefresh, .-ST_doRefresh
	.globl	ST_diffDraw
	.type	ST_diffDraw, @function
ST_diffDraw:
.LFB9:
	.loc 1 1103 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:1105:     ST_drawWidgets(false);
	.loc 1 1105 5
	movl	$0, %edi	#,
	call	ST_drawWidgets	#
# st_stuff.c:1106: }
	.loc 1 1106 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	ST_diffDraw, .-ST_diffDraw
	.globl	ST_Drawer
	.type	ST_Drawer, @function
ST_Drawer:
.LFB10:
	.loc 1 1109 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# fullscreen, fullscreen
	movl	%esi, -8(%rbp)	# refresh, refresh
# st_stuff.c:1111:     st_statusbaron = (!fullscreen) || automapactive;
	.loc 1 1111 36
	cmpl	$0, -4(%rbp)	#, fullscreen
	je	.L125	#,
# st_stuff.c:1111:     st_statusbaron = (!fullscreen) || automapactive;
	.loc 1 1111 36 is_stmt 0 discriminator 2
	movl	automapactive(%rip), %eax	# automapactive, automapactive.141_1
	testl	%eax, %eax	# automapactive.141_1
	je	.L126	#,
.L125:
# st_stuff.c:1111:     st_statusbaron = (!fullscreen) || automapactive;
	.loc 1 1111 36 discriminator 3
	movl	$1, %eax	#, iftmp.140_6
# st_stuff.c:1111:     st_statusbaron = (!fullscreen) || automapactive;
	.loc 1 1111 36
	jmp	.L127	#
.L126:
# st_stuff.c:1111:     st_statusbaron = (!fullscreen) || automapactive;
	.loc 1 1111 36 discriminator 4
	movl	$0, %eax	#, iftmp.140_6
.L127:
# st_stuff.c:1111:     st_statusbaron = (!fullscreen) || automapactive;
	.loc 1 1111 20 is_stmt 1 discriminator 6
	movl	%eax, st_statusbaron(%rip)	# iftmp.142_2, st_statusbaron
# st_stuff.c:1112:     st_firsttime = st_firsttime || refresh;
	.loc 1 1112 20
	movl	st_firsttime(%rip), %eax	# st_firsttime, st_firsttime.144_3
# st_stuff.c:1112:     st_firsttime = st_firsttime || refresh;
	.loc 1 1112 33
	testl	%eax, %eax	# st_firsttime.144_3
	jne	.L128	#,
# st_stuff.c:1112:     st_firsttime = st_firsttime || refresh;
	.loc 1 1112 33 is_stmt 0 discriminator 2
	cmpl	$0, -8(%rbp)	#, refresh
	je	.L129	#,
.L128:
# st_stuff.c:1112:     st_firsttime = st_firsttime || refresh;
	.loc 1 1112 33 discriminator 3
	movl	$1, %eax	#, iftmp.143_7
# st_stuff.c:1112:     st_firsttime = st_firsttime || refresh;
	.loc 1 1112 33
	jmp	.L130	#
.L129:
# st_stuff.c:1112:     st_firsttime = st_firsttime || refresh;
	.loc 1 1112 33 discriminator 4
	movl	$0, %eax	#, iftmp.143_7
.L130:
# st_stuff.c:1112:     st_firsttime = st_firsttime || refresh;
	.loc 1 1112 18 is_stmt 1 discriminator 6
	movl	%eax, st_firsttime(%rip)	# iftmp.145_4, st_firsttime
# st_stuff.c:1115:     ST_doPaletteStuff();
	.loc 1 1115 5
	call	ST_doPaletteStuff	#
# st_stuff.c:1118:     if (st_firsttime) ST_doRefresh();
	.loc 1 1118 9
	movl	st_firsttime(%rip), %eax	# st_firsttime, st_firsttime.146_5
# st_stuff.c:1118:     if (st_firsttime) ST_doRefresh();
	.loc 1 1118 8
	testl	%eax, %eax	# st_firsttime.146_5
	je	.L131	#,
# st_stuff.c:1118:     if (st_firsttime) ST_doRefresh();
	.loc 1 1118 23 discriminator 1
	call	ST_doRefresh	#
# st_stuff.c:1122: }
	.loc 1 1122 1
	jmp	.L133	#
.L131:
# st_stuff.c:1120:     else ST_diffDraw();
	.loc 1 1120 10
	call	ST_diffDraw	#
.L133:
# st_stuff.c:1122: }
	.loc 1 1122 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	ST_Drawer, .-ST_Drawer
	.section	.rodata
.LC13:
	.string	"STTNUM%d"
.LC14:
	.string	"STYSNUM%d"
.LC15:
	.string	"STTPRCNT"
.LC16:
	.string	"STKEYS%d"
.LC17:
	.string	"STARMS"
.LC18:
	.string	"STGNUM%d"
.LC19:
	.string	"STFB%d"
.LC20:
	.string	"STBAR"
.LC21:
	.string	"STFST%d%d"
.LC22:
	.string	"STFTR%d0"
.LC23:
	.string	"STFTL%d0"
.LC24:
	.string	"STFOUCH%d"
.LC25:
	.string	"STFEVL%d"
.LC26:
	.string	"STFKILL%d"
.LC27:
	.string	"STFGOD0"
.LC28:
	.string	"STFDEAD0"
	.text
	.globl	ST_loadGraphics
	.type	ST_loadGraphics, @function
ST_loadGraphics:
.LFB11:
	.loc 1 1125 1
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
# st_stuff.c:1125: {
	.loc 1 1125 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp215
	movq	%rax, -24(%rbp)	# tmp215, D.8226
	xorl	%eax, %eax	# tmp215
# st_stuff.c:1134:     for (i=0;i<10;i++)
	.loc 1 1134 11
	movl	$0, -48(%rbp)	#, i
# st_stuff.c:1134:     for (i=0;i<10;i++)
	.loc 1 1134 5
	jmp	.L135	#
.L136:
# st_stuff.c:1136: 	sprintf(namebuf, "STTNUM%d", i);
	.loc 1 1136 2
	movl	-48(%rbp), %edx	# i, tmp110
	leaq	-33(%rbp), %rax	#, tmp111
	leaq	.LC13(%rip), %rcx	#, tmp112
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1137: 	tallnum[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1137 27
	leaq	-33(%rbp), %rax	#, tmp113
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1137: 	tallnum[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1137 13 discriminator 1
	movl	-48(%rbp), %edx	# i, tmp115
	movslq	%edx, %rdx	# tmp115, tmp114
	leaq	0(,%rdx,8), %rcx	#, tmp116
	leaq	tallnum(%rip), %rdx	#, tmp117
	movq	%rax, (%rcx,%rdx)	# _1, tallnum[i_29]
# st_stuff.c:1139: 	sprintf(namebuf, "STYSNUM%d", i);
	.loc 1 1139 2
	movl	-48(%rbp), %edx	# i, tmp118
	leaq	-33(%rbp), %rax	#, tmp119
	leaq	.LC14(%rip), %rcx	#, tmp120
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1140: 	shortnum[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1140 28
	leaq	-33(%rbp), %rax	#, tmp121
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1140: 	shortnum[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1140 14 discriminator 1
	movl	-48(%rbp), %edx	# i, tmp123
	movslq	%edx, %rdx	# tmp123, tmp122
	leaq	0(,%rdx,8), %rcx	#, tmp124
	leaq	shortnum(%rip), %rdx	#, tmp125
	movq	%rax, (%rcx,%rdx)	# _2, shortnum[i_29]
# st_stuff.c:1134:     for (i=0;i<10;i++)
	.loc 1 1134 20 discriminator 3
	addl	$1, -48(%rbp)	#, i
.L135:
# st_stuff.c:1134:     for (i=0;i<10;i++)
	.loc 1 1134 15 discriminator 1
	cmpl	$9, -48(%rbp)	#, i
	jle	.L136	#,
# st_stuff.c:1145:     tallpercent = (patch_t *) W_CacheLumpName("STTPRCNT", PU_STATIC);
	.loc 1 1145 31
	movl	$1, %esi	#,
	leaq	.LC15(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1145:     tallpercent = (patch_t *) W_CacheLumpName("STTPRCNT", PU_STATIC);
	.loc 1 1145 17 discriminator 1
	movq	%rax, tallpercent(%rip)	# _3, tallpercent
# st_stuff.c:1148:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1148 11
	movl	$0, -48(%rbp)	#, i
# st_stuff.c:1148:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1148 5
	jmp	.L137	#
.L138:
# st_stuff.c:1150: 	sprintf(namebuf, "STKEYS%d", i);
	.loc 1 1150 2
	movl	-48(%rbp), %edx	# i, tmp127
	leaq	-33(%rbp), %rax	#, tmp128
	leaq	.LC16(%rip), %rcx	#, tmp129
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1151: 	keys[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1151 24
	leaq	-33(%rbp), %rax	#, tmp130
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1151: 	keys[i] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1151 10 discriminator 1
	movl	-48(%rbp), %edx	# i, tmp132
	movslq	%edx, %rdx	# tmp132, tmp131
	leaq	0(,%rdx,8), %rcx	#, tmp133
	leaq	keys(%rip), %rdx	#, tmp134
	movq	%rax, (%rcx,%rdx)	# _4, keys[i_30]
# st_stuff.c:1148:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1148 26 discriminator 3
	addl	$1, -48(%rbp)	#, i
.L137:
# st_stuff.c:1148:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1148 15 discriminator 1
	cmpl	$5, -48(%rbp)	#, i
	jle	.L138	#,
# st_stuff.c:1155:     armsbg = (patch_t *) W_CacheLumpName("STARMS", PU_STATIC);
	.loc 1 1155 26
	movl	$1, %esi	#,
	leaq	.LC17(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1155:     armsbg = (patch_t *) W_CacheLumpName("STARMS", PU_STATIC);
	.loc 1 1155 12 discriminator 1
	movq	%rax, armsbg(%rip)	# _5, armsbg
# st_stuff.c:1158:     for (i=0;i<6;i++)
	.loc 1 1158 11
	movl	$0, -48(%rbp)	#, i
# st_stuff.c:1158:     for (i=0;i<6;i++)
	.loc 1 1158 5
	jmp	.L139	#
.L140:
# st_stuff.c:1160: 	sprintf(namebuf, "STGNUM%d", i+2);
	.loc 1 1160 2
	movl	-48(%rbp), %eax	# i, tmp136
	leal	2(%rax), %edx	#, _6
	leaq	-33(%rbp), %rax	#, tmp137
	leaq	.LC18(%rip), %rcx	#, tmp138
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1163: 	arms[i][0] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1163 27
	leaq	-33(%rbp), %rax	#, tmp139
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1163: 	arms[i][0] = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1163 13 discriminator 1
	movl	-48(%rbp), %edx	# i, tmp141
	movslq	%edx, %rdx	# tmp141, tmp140
	movq	%rdx, %rcx	# tmp140, tmp140
	salq	$4, %rcx	#, tmp140
	leaq	arms(%rip), %rdx	#, tmp143
	movq	%rax, (%rcx,%rdx)	# _7, arms[i_31][0]
# st_stuff.c:1166: 	arms[i][1] = shortnum[i+2]; 
	.loc 1 1166 25
	movl	-48(%rbp), %eax	# i, tmp144
	addl	$2, %eax	#, _8
# st_stuff.c:1166: 	arms[i][1] = shortnum[i+2]; 
	.loc 1 1166 23
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp146
	leaq	shortnum(%rip), %rax	#, tmp147
	movq	(%rdx,%rax), %rax	# shortnum[_8], _9
# st_stuff.c:1166: 	arms[i][1] = shortnum[i+2]; 
	.loc 1 1166 13
	movl	-48(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, tmp148
	movq	%rdx, %rcx	# tmp148, tmp148
	salq	$4, %rcx	#, tmp148
	leaq	8+arms(%rip), %rdx	#, tmp151
	movq	%rax, (%rcx,%rdx)	# _9, arms[i_31][1]
# st_stuff.c:1158:     for (i=0;i<6;i++)
	.loc 1 1158 19 discriminator 3
	addl	$1, -48(%rbp)	#, i
.L139:
# st_stuff.c:1158:     for (i=0;i<6;i++)
	.loc 1 1158 15 discriminator 1
	cmpl	$5, -48(%rbp)	#, i
	jle	.L140	#,
# st_stuff.c:1170:     sprintf(namebuf, "STFB%d", consoleplayer);
	.loc 1 1170 5
	movl	consoleplayer(%rip), %edx	# consoleplayer, consoleplayer.147_10
	leaq	-33(%rbp), %rax	#, tmp152
	leaq	.LC19(%rip), %rcx	#, tmp153
	movq	%rcx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp152,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1171:     faceback = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1171 28
	leaq	-33(%rbp), %rax	#, tmp154
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1171:     faceback = (patch_t *) W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1171 14 discriminator 1
	movq	%rax, faceback(%rip)	# _11, faceback
# st_stuff.c:1174:     sbar = (patch_t *) W_CacheLumpName("STBAR", PU_STATIC);
	.loc 1 1174 24
	movl	$1, %esi	#,
	leaq	.LC20(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1174:     sbar = (patch_t *) W_CacheLumpName("STBAR", PU_STATIC);
	.loc 1 1174 10 discriminator 1
	movq	%rax, sbar(%rip)	# _12, sbar
# st_stuff.c:1177:     facenum = 0;
	.loc 1 1177 13
	movl	$0, -40(%rbp)	#, facenum
# st_stuff.c:1178:     for (i=0;i<ST_NUMPAINFACES;i++)
	.loc 1 1178 11
	movl	$0, -48(%rbp)	#, i
# st_stuff.c:1178:     for (i=0;i<ST_NUMPAINFACES;i++)
	.loc 1 1178 5
	jmp	.L141	#
.L144:
# st_stuff.c:1180: 	for (j=0;j<ST_NUMSTRAIGHTFACES;j++)
	.loc 1 1180 8
	movl	$0, -44(%rbp)	#, j
# st_stuff.c:1180: 	for (j=0;j<ST_NUMSTRAIGHTFACES;j++)
	.loc 1 1180 2
	jmp	.L142	#
.L143:
# st_stuff.c:1182: 	    sprintf(namebuf, "STFST%d%d", i, j);
	.loc 1 1182 6
	movl	-44(%rbp), %ecx	# j, tmp156
	movl	-48(%rbp), %edx	# i, tmp157
	leaq	-33(%rbp), %rax	#, tmp158
	leaq	.LC21(%rip), %rsi	#, tmp159
	movq	%rax, %rdi	# tmp158,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1183: 	    faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1183 19
	movl	-40(%rbp), %ebx	# facenum, facenum.148_13
	leal	1(%rbx), %eax	#, tmp160
	movl	%eax, -40(%rbp)	# tmp160, facenum
# st_stuff.c:1183: 	    faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1183 25
	leaq	-33(%rbp), %rax	#, tmp161
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp161,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1183: 	    faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1183 23 discriminator 1
	movslq	%ebx, %rdx	# facenum.148_13, tmp162
	leaq	0(,%rdx,8), %rcx	#, tmp163
	leaq	faces(%rip), %rdx	#, tmp164
	movq	%rax, (%rcx,%rdx)	# _14, faces[facenum.148_13]
# st_stuff.c:1180: 	for (j=0;j<ST_NUMSTRAIGHTFACES;j++)
	.loc 1 1180 34 discriminator 3
	addl	$1, -44(%rbp)	#, j
.L142:
# st_stuff.c:1180: 	for (j=0;j<ST_NUMSTRAIGHTFACES;j++)
	.loc 1 1180 12 discriminator 1
	cmpl	$2, -44(%rbp)	#, j
	jle	.L143	#,
# st_stuff.c:1185: 	sprintf(namebuf, "STFTR%d0", i);	// turn right
	.loc 1 1185 2
	movl	-48(%rbp), %edx	# i, tmp165
	leaq	-33(%rbp), %rax	#, tmp166
	leaq	.LC22(%rip), %rcx	#, tmp167
	movq	%rcx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp166,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1186: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1186 15
	movl	-40(%rbp), %ebx	# facenum, facenum.149_15
	leal	1(%rbx), %eax	#, tmp168
	movl	%eax, -40(%rbp)	# tmp168, facenum
# st_stuff.c:1186: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1186 21
	leaq	-33(%rbp), %rax	#, tmp169
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp169,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1186: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1186 19 discriminator 1
	movslq	%ebx, %rdx	# facenum.149_15, tmp170
	leaq	0(,%rdx,8), %rcx	#, tmp171
	leaq	faces(%rip), %rdx	#, tmp172
	movq	%rax, (%rcx,%rdx)	# _16, faces[facenum.149_15]
# st_stuff.c:1187: 	sprintf(namebuf, "STFTL%d0", i);	// turn left
	.loc 1 1187 2
	movl	-48(%rbp), %edx	# i, tmp173
	leaq	-33(%rbp), %rax	#, tmp174
	leaq	.LC23(%rip), %rcx	#, tmp175
	movq	%rcx, %rsi	# tmp175,
	movq	%rax, %rdi	# tmp174,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1188: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1188 15
	movl	-40(%rbp), %ebx	# facenum, facenum.150_17
	leal	1(%rbx), %eax	#, tmp176
	movl	%eax, -40(%rbp)	# tmp176, facenum
# st_stuff.c:1188: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1188 21
	leaq	-33(%rbp), %rax	#, tmp177
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp177,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1188: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1188 19 discriminator 1
	movslq	%ebx, %rdx	# facenum.150_17, tmp178
	leaq	0(,%rdx,8), %rcx	#, tmp179
	leaq	faces(%rip), %rdx	#, tmp180
	movq	%rax, (%rcx,%rdx)	# _18, faces[facenum.150_17]
# st_stuff.c:1189: 	sprintf(namebuf, "STFOUCH%d", i);	// ouch!
	.loc 1 1189 2
	movl	-48(%rbp), %edx	# i, tmp181
	leaq	-33(%rbp), %rax	#, tmp182
	leaq	.LC24(%rip), %rcx	#, tmp183
	movq	%rcx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp182,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1190: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1190 15
	movl	-40(%rbp), %ebx	# facenum, facenum.151_19
	leal	1(%rbx), %eax	#, tmp184
	movl	%eax, -40(%rbp)	# tmp184, facenum
# st_stuff.c:1190: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1190 21
	leaq	-33(%rbp), %rax	#, tmp185
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1190: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1190 19 discriminator 1
	movslq	%ebx, %rdx	# facenum.151_19, tmp186
	leaq	0(,%rdx,8), %rcx	#, tmp187
	leaq	faces(%rip), %rdx	#, tmp188
	movq	%rax, (%rcx,%rdx)	# _20, faces[facenum.151_19]
# st_stuff.c:1191: 	sprintf(namebuf, "STFEVL%d", i);	// evil grin ;)
	.loc 1 1191 2
	movl	-48(%rbp), %edx	# i, tmp189
	leaq	-33(%rbp), %rax	#, tmp190
	leaq	.LC25(%rip), %rcx	#, tmp191
	movq	%rcx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp190,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1192: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1192 15
	movl	-40(%rbp), %ebx	# facenum, facenum.152_21
	leal	1(%rbx), %eax	#, tmp192
	movl	%eax, -40(%rbp)	# tmp192, facenum
# st_stuff.c:1192: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1192 21
	leaq	-33(%rbp), %rax	#, tmp193
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp193,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1192: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1192 19 discriminator 1
	movslq	%ebx, %rdx	# facenum.152_21, tmp194
	leaq	0(,%rdx,8), %rcx	#, tmp195
	leaq	faces(%rip), %rdx	#, tmp196
	movq	%rax, (%rcx,%rdx)	# _22, faces[facenum.152_21]
# st_stuff.c:1193: 	sprintf(namebuf, "STFKILL%d", i);	// pissed off
	.loc 1 1193 2
	movl	-48(%rbp), %edx	# i, tmp197
	leaq	-33(%rbp), %rax	#, tmp198
	leaq	.LC26(%rip), %rcx	#, tmp199
	movq	%rcx, %rsi	# tmp199,
	movq	%rax, %rdi	# tmp198,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# st_stuff.c:1194: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1194 15
	movl	-40(%rbp), %ebx	# facenum, facenum.153_23
	leal	1(%rbx), %eax	#, tmp200
	movl	%eax, -40(%rbp)	# tmp200, facenum
# st_stuff.c:1194: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1194 21
	leaq	-33(%rbp), %rax	#, tmp201
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp201,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1194: 	faces[facenum++] = W_CacheLumpName(namebuf, PU_STATIC);
	.loc 1 1194 19 discriminator 1
	movslq	%ebx, %rdx	# facenum.153_23, tmp202
	leaq	0(,%rdx,8), %rcx	#, tmp203
	leaq	faces(%rip), %rdx	#, tmp204
	movq	%rax, (%rcx,%rdx)	# _24, faces[facenum.153_23]
# st_stuff.c:1178:     for (i=0;i<ST_NUMPAINFACES;i++)
	.loc 1 1178 33 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L141:
# st_stuff.c:1178:     for (i=0;i<ST_NUMPAINFACES;i++)
	.loc 1 1178 15 discriminator 1
	cmpl	$4, -48(%rbp)	#, i
	jle	.L144	#,
# st_stuff.c:1196:     faces[facenum++] = W_CacheLumpName("STFGOD0", PU_STATIC);
	.loc 1 1196 18
	movl	-40(%rbp), %ebx	# facenum, facenum.154_25
	leal	1(%rbx), %eax	#, tmp205
	movl	%eax, -40(%rbp)	# tmp205, facenum
# st_stuff.c:1196:     faces[facenum++] = W_CacheLumpName("STFGOD0", PU_STATIC);
	.loc 1 1196 24
	movl	$1, %esi	#,
	leaq	.LC27(%rip), %rax	#, tmp206
	movq	%rax, %rdi	# tmp206,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1196:     faces[facenum++] = W_CacheLumpName("STFGOD0", PU_STATIC);
	.loc 1 1196 22 discriminator 1
	movslq	%ebx, %rdx	# facenum.154_25, tmp207
	leaq	0(,%rdx,8), %rcx	#, tmp208
	leaq	faces(%rip), %rdx	#, tmp209
	movq	%rax, (%rcx,%rdx)	# _26, faces[facenum.154_25]
# st_stuff.c:1197:     faces[facenum++] = W_CacheLumpName("STFDEAD0", PU_STATIC);
	.loc 1 1197 18
	movl	-40(%rbp), %ebx	# facenum, facenum.155_27
	leal	1(%rbx), %eax	#, tmp210
	movl	%eax, -40(%rbp)	# tmp210, facenum
# st_stuff.c:1197:     faces[facenum++] = W_CacheLumpName("STFDEAD0", PU_STATIC);
	.loc 1 1197 24
	movl	$1, %esi	#,
	leaq	.LC28(%rip), %rax	#, tmp211
	movq	%rax, %rdi	# tmp211,
	call	W_CacheLumpName@PLT	#
# st_stuff.c:1197:     faces[facenum++] = W_CacheLumpName("STFDEAD0", PU_STATIC);
	.loc 1 1197 22 discriminator 1
	movslq	%ebx, %rdx	# facenum.155_27, tmp212
	leaq	0(,%rdx,8), %rcx	#, tmp213
	leaq	faces(%rip), %rdx	#, tmp214
	movq	%rax, (%rcx,%rdx)	# _28, faces[facenum.155_27]
# st_stuff.c:1199: }
	.loc 1 1199 1
	nop	
	movq	-24(%rbp), %rax	# D.8226, tmp216
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp216
	je	.L145	#,
	call	__stack_chk_fail@PLT	#
.L145:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	ST_loadGraphics, .-ST_loadGraphics
	.section	.rodata
.LC29:
	.string	"PLAYPAL"
	.text
	.globl	ST_loadData
	.type	ST_loadData, @function
ST_loadData:
.LFB12:
	.loc 1 1202 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:1203:     lu_palette = W_GetNumForName ("PLAYPAL");
	.loc 1 1203 18
	leaq	.LC29(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	W_GetNumForName@PLT	#
# st_stuff.c:1203:     lu_palette = W_GetNumForName ("PLAYPAL");
	.loc 1 1203 16 discriminator 1
	movl	%eax, lu_palette(%rip)	# _1, lu_palette
# st_stuff.c:1204:     ST_loadGraphics();
	.loc 1 1204 5
	call	ST_loadGraphics	#
# st_stuff.c:1205: }
	.loc 1 1205 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	ST_loadData, .-ST_loadData
	.section	.rodata
.LC30:
	.string	"Z_CT at st_stuff.c:%i"
	.text
	.globl	ST_unloadGraphics
	.type	ST_unloadGraphics, @function
ST_unloadGraphics:
.LFB13:
	.loc 1 1208 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# st_stuff.c:1213:     for (i=0;i<10;i++)
	.loc 1 1213 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1213:     for (i=0;i<10;i++)
	.loc 1 1213 5
	jmp	.L148	#
.L151:
# st_stuff.c:1215: 	Z_ChangeTag(tallnum[i], PU_CACHE);
	.loc 1 1215 2
	movl	-4(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp120
	leaq	tallnum(%rip), %rax	#, tmp121
	movq	(%rdx,%rax), %rax	# tallnum[i_37], _1
	subq	$40, %rax	#, _2
	movl	20(%rax), %eax	# _2->id, _3
	cmpl	$1919505, %eax	#, _3
	je	.L149	#,
# st_stuff.c:1215: 	Z_ChangeTag(tallnum[i], PU_CACHE);
	.loc 1 1215 2 is_stmt 0 discriminator 1
	movl	$1215, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L149:
# st_stuff.c:1215: 	Z_ChangeTag(tallnum[i], PU_CACHE);
	.loc 1 1215 2 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp125
	leaq	tallnum(%rip), %rax	#, tmp126
	movq	(%rdx,%rax), %rax	# tallnum[i_37], _4
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _4,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1216: 	Z_ChangeTag(shortnum[i], PU_CACHE);
	.loc 1 1216 2 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp129
	leaq	shortnum(%rip), %rax	#, tmp130
	movq	(%rdx,%rax), %rax	# shortnum[i_37], _5
	subq	$40, %rax	#, _6
	movl	20(%rax), %eax	# _6->id, _7
	cmpl	$1919505, %eax	#, _7
	je	.L150	#,
# st_stuff.c:1216: 	Z_ChangeTag(shortnum[i], PU_CACHE);
	.loc 1 1216 2 is_stmt 0 discriminator 1
	movl	$1216, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L150:
# st_stuff.c:1216: 	Z_ChangeTag(shortnum[i], PU_CACHE);
	.loc 1 1216 2 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp134
	leaq	shortnum(%rip), %rax	#, tmp135
	movq	(%rdx,%rax), %rax	# shortnum[i_37], _8
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _8,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1213:     for (i=0;i<10;i++)
	.loc 1 1213 20 is_stmt 1 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L148:
# st_stuff.c:1213:     for (i=0;i<10;i++)
	.loc 1 1213 15 discriminator 1
	cmpl	$9, -4(%rbp)	#, i
	jle	.L151	#,
# st_stuff.c:1219:     Z_ChangeTag(tallpercent, PU_CACHE); 
	.loc 1 1219 5
	movq	tallpercent(%rip), %rax	# tallpercent, tallpercent.156_9
	subq	$40, %rax	#, _10
	movl	20(%rax), %eax	# _10->id, _11
	cmpl	$1919505, %eax	#, _11
	je	.L152	#,
# st_stuff.c:1219:     Z_ChangeTag(tallpercent, PU_CACHE); 
	.loc 1 1219 5 is_stmt 0 discriminator 1
	movl	$1219, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L152:
# st_stuff.c:1219:     Z_ChangeTag(tallpercent, PU_CACHE); 
	.loc 1 1219 5 discriminator 3
	movq	tallpercent(%rip), %rax	# tallpercent, tallpercent.157_12
	movl	$101, %esi	#,
	movq	%rax, %rdi	# tallpercent.157_12,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1222:     Z_ChangeTag(armsbg, PU_CACHE); 
	.loc 1 1222 5 is_stmt 1
	movq	armsbg(%rip), %rax	# armsbg, armsbg.158_13
	subq	$40, %rax	#, _14
	movl	20(%rax), %eax	# _14->id, _15
	cmpl	$1919505, %eax	#, _15
	je	.L153	#,
# st_stuff.c:1222:     Z_ChangeTag(armsbg, PU_CACHE); 
	.loc 1 1222 5 is_stmt 0 discriminator 1
	movl	$1222, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L153:
# st_stuff.c:1222:     Z_ChangeTag(armsbg, PU_CACHE); 
	.loc 1 1222 5 discriminator 3
	movq	armsbg(%rip), %rax	# armsbg, armsbg.159_16
	movl	$101, %esi	#,
	movq	%rax, %rdi	# armsbg.159_16,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1225:     for (i=0;i<6;i++)
	.loc 1 1225 11 is_stmt 1
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1225:     for (i=0;i<6;i++)
	.loc 1 1225 5
	jmp	.L154	#
.L156:
# st_stuff.c:1226: 	Z_ChangeTag(arms[i][0], PU_CACHE);
	.loc 1 1226 2
	movl	-4(%rbp), %eax	# i, tmp139
	cltq
	salq	$4, %rax	#, tmp138
	movq	%rax, %rdx	# tmp138, tmp140
	leaq	arms(%rip), %rax	#, tmp141
	movq	(%rdx,%rax), %rax	# arms[i_38][0], _17
	subq	$40, %rax	#, _18
	movl	20(%rax), %eax	# _18->id, _19
	cmpl	$1919505, %eax	#, _19
	je	.L155	#,
# st_stuff.c:1226: 	Z_ChangeTag(arms[i][0], PU_CACHE);
	.loc 1 1226 2 is_stmt 0 discriminator 1
	movl	$1226, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L155:
# st_stuff.c:1226: 	Z_ChangeTag(arms[i][0], PU_CACHE);
	.loc 1 1226 2 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp144
	cltq
	salq	$4, %rax	#, tmp143
	movq	%rax, %rdx	# tmp143, tmp145
	leaq	arms(%rip), %rax	#, tmp146
	movq	(%rdx,%rax), %rax	# arms[i_38][0], _20
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _20,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1225:     for (i=0;i<6;i++)
	.loc 1 1225 19 is_stmt 1 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L154:
# st_stuff.c:1225:     for (i=0;i<6;i++)
	.loc 1 1225 15 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L156	#,
# st_stuff.c:1229:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1229 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1229:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1229 5
	jmp	.L157	#
.L159:
# st_stuff.c:1230: 	Z_ChangeTag(keys[i], PU_CACHE);
	.loc 1 1230 2
	movl	-4(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp149
	leaq	keys(%rip), %rax	#, tmp150
	movq	(%rdx,%rax), %rax	# keys[i_39], _21
	subq	$40, %rax	#, _22
	movl	20(%rax), %eax	# _22->id, _23
	cmpl	$1919505, %eax	#, _23
	je	.L158	#,
# st_stuff.c:1230: 	Z_ChangeTag(keys[i], PU_CACHE);
	.loc 1 1230 2 is_stmt 0 discriminator 1
	movl	$1230, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L158:
# st_stuff.c:1230: 	Z_ChangeTag(keys[i], PU_CACHE);
	.loc 1 1230 2 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp154
	leaq	keys(%rip), %rax	#, tmp155
	movq	(%rdx,%rax), %rax	# keys[i_39], _24
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _24,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1229:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1229 26 is_stmt 1 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L157:
# st_stuff.c:1229:     for (i=0;i<NUMCARDS;i++)
	.loc 1 1229 15 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L159	#,
# st_stuff.c:1232:     Z_ChangeTag(sbar, PU_CACHE);
	.loc 1 1232 5
	movq	sbar(%rip), %rax	# sbar, sbar.160_25
	subq	$40, %rax	#, _26
	movl	20(%rax), %eax	# _26->id, _27
	cmpl	$1919505, %eax	#, _27
	je	.L160	#,
# st_stuff.c:1232:     Z_ChangeTag(sbar, PU_CACHE);
	.loc 1 1232 5 is_stmt 0 discriminator 1
	movl	$1232, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L160:
# st_stuff.c:1232:     Z_ChangeTag(sbar, PU_CACHE);
	.loc 1 1232 5 discriminator 3
	movq	sbar(%rip), %rax	# sbar, sbar.161_28
	movl	$101, %esi	#,
	movq	%rax, %rdi	# sbar.161_28,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1233:     Z_ChangeTag(faceback, PU_CACHE);
	.loc 1 1233 5 is_stmt 1
	movq	faceback(%rip), %rax	# faceback, faceback.162_29
	subq	$40, %rax	#, _30
	movl	20(%rax), %eax	# _30->id, _31
	cmpl	$1919505, %eax	#, _31
	je	.L161	#,
# st_stuff.c:1233:     Z_ChangeTag(faceback, PU_CACHE);
	.loc 1 1233 5 is_stmt 0 discriminator 1
	movl	$1233, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L161:
# st_stuff.c:1233:     Z_ChangeTag(faceback, PU_CACHE);
	.loc 1 1233 5 discriminator 3
	movq	faceback(%rip), %rax	# faceback, faceback.163_32
	movl	$101, %esi	#,
	movq	%rax, %rdi	# faceback.163_32,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1235:     for (i=0;i<ST_NUMFACES;i++)
	.loc 1 1235 11 is_stmt 1
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1235:     for (i=0;i<ST_NUMFACES;i++)
	.loc 1 1235 5
	jmp	.L162	#
.L164:
# st_stuff.c:1236: 	Z_ChangeTag(faces[i], PU_CACHE);
	.loc 1 1236 2
	movl	-4(%rbp), %eax	# i, tmp159
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp160
	leaq	faces(%rip), %rax	#, tmp161
	movq	(%rdx,%rax), %rax	# faces[i_40], _33
	subq	$40, %rax	#, _34
	movl	20(%rax), %eax	# _34->id, _35
	cmpl	$1919505, %eax	#, _35
	je	.L163	#,
# st_stuff.c:1236: 	Z_ChangeTag(faces[i], PU_CACHE);
	.loc 1 1236 2 is_stmt 0 discriminator 1
	movl	$1236, %esi	#,
	leaq	.LC30(%rip), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L163:
# st_stuff.c:1236: 	Z_ChangeTag(faces[i], PU_CACHE);
	.loc 1 1236 2 discriminator 3
	movl	-4(%rbp), %eax	# i, tmp164
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp165
	leaq	faces(%rip), %rax	#, tmp166
	movq	(%rdx,%rax), %rax	# faces[i_40], _36
	movl	$101, %esi	#,
	movq	%rax, %rdi	# _36,
	call	Z_ChangeTag2@PLT	#
# st_stuff.c:1235:     for (i=0;i<ST_NUMFACES;i++)
	.loc 1 1235 29 is_stmt 1 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L162:
# st_stuff.c:1235:     for (i=0;i<ST_NUMFACES;i++)
	.loc 1 1235 15 discriminator 1
	cmpl	$41, -4(%rbp)	#, i
	jle	.L164	#,
# st_stuff.c:1242: }
	.loc 1 1242 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	ST_unloadGraphics, .-ST_unloadGraphics
	.globl	ST_unloadData
	.type	ST_unloadData, @function
ST_unloadData:
.LFB14:
	.loc 1 1245 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:1246:     ST_unloadGraphics();
	.loc 1 1246 5
	call	ST_unloadGraphics	#
# st_stuff.c:1247: }
	.loc 1 1247 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	ST_unloadData, .-ST_unloadData
	.globl	ST_initData
	.type	ST_initData, @function
ST_initData:
.LFB15:
	.loc 1 1250 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# st_stuff.c:1254:     st_firsttime = true;
	.loc 1 1254 18
	movl	$1, st_firsttime(%rip)	#, st_firsttime
# st_stuff.c:1255:     plyr = &players[consoleplayer];
	.loc 1 1255 20
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.164_1
# st_stuff.c:1255:     plyr = &players[consoleplayer];
	.loc 1 1255 12
	movslq	%eax, %rdx	# consoleplayer.164_1, tmp87
	movq	%rdx, %rax	# tmp87, tmp88
	salq	$2, %rax	#, tmp88
	addq	%rdx, %rax	# tmp87, tmp88
	salq	$6, %rax	#, tmp89
	leaq	players(%rip), %rdx	#, tmp90
	addq	%rdx, %rax	# tmp90, _2
# st_stuff.c:1255:     plyr = &players[consoleplayer];
	.loc 1 1255 10
	movq	%rax, plyr(%rip)	# _2, plyr
# st_stuff.c:1257:     st_clock = 0;
	.loc 1 1257 14
	movl	$0, st_clock(%rip)	#, st_clock
# st_stuff.c:1258:     st_chatstate = StartChatState;
	.loc 1 1258 18
	movl	$0, st_chatstate(%rip)	#, st_chatstate
# st_stuff.c:1259:     st_gamestate = FirstPersonState;
	.loc 1 1259 18
	movl	$1, st_gamestate(%rip)	#, st_gamestate
# st_stuff.c:1261:     st_statusbaron = true;
	.loc 1 1261 20
	movl	$1, st_statusbaron(%rip)	#, st_statusbaron
# st_stuff.c:1262:     st_oldchat = st_chat = false;
	.loc 1 1262 26
	movl	$0, st_chat(%rip)	#, st_chat
# st_stuff.c:1262:     st_oldchat = st_chat = false;
	.loc 1 1262 16
	movl	st_chat(%rip), %eax	# st_chat, st_chat.165_3
	movl	%eax, st_oldchat(%rip)	# st_chat.165_3, st_oldchat
# st_stuff.c:1263:     st_cursoron = false;
	.loc 1 1263 17
	movl	$0, st_cursoron(%rip)	#, st_cursoron
# st_stuff.c:1265:     st_faceindex = 0;
	.loc 1 1265 18
	movl	$0, st_faceindex(%rip)	#, st_faceindex
# st_stuff.c:1266:     st_palette = -1;
	.loc 1 1266 16
	movl	$-1, st_palette(%rip)	#, st_palette
# st_stuff.c:1268:     st_oldhealth = -1;
	.loc 1 1268 18
	movl	$-1, st_oldhealth(%rip)	#, st_oldhealth
# st_stuff.c:1270:     for (i=0;i<NUMWEAPONS;i++)
	.loc 1 1270 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1270:     for (i=0;i<NUMWEAPONS;i++)
	.loc 1 1270 5
	jmp	.L167	#
.L168:
# st_stuff.c:1271: 	oldweaponsowned[i] = plyr->weaponowned[i];
	.loc 1 1271 27
	movq	plyr(%rip), %rax	# plyr, plyr.166_4
# st_stuff.c:1271: 	oldweaponsowned[i] = plyr->weaponowned[i];
	.loc 1 1271 40
	movl	-4(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, tmp91
	addq	$28, %rdx	#, tmp93
	movl	12(%rax,%rdx,4), %eax	# plyr.166_4->weaponowned[i_6], _5
# st_stuff.c:1271: 	oldweaponsowned[i] = plyr->weaponowned[i];
	.loc 1 1271 21
	movl	-4(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	leaq	0(,%rdx,4), %rcx	#, tmp96
	leaq	oldweaponsowned(%rip), %rdx	#, tmp97
	movl	%eax, (%rcx,%rdx)	# _5, oldweaponsowned[i_6]
# st_stuff.c:1270:     for (i=0;i<NUMWEAPONS;i++)
	.loc 1 1270 28 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L167:
# st_stuff.c:1270:     for (i=0;i<NUMWEAPONS;i++)
	.loc 1 1270 15 discriminator 1
	cmpl	$8, -4(%rbp)	#, i
	jle	.L168	#,
# st_stuff.c:1273:     for (i=0;i<3;i++)
	.loc 1 1273 11
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1273:     for (i=0;i<3;i++)
	.loc 1 1273 5
	jmp	.L169	#
.L170:
# st_stuff.c:1274: 	keyboxes[i] = -1;
	.loc 1 1274 14
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp100
	leaq	keyboxes(%rip), %rax	#, tmp101
	movl	$-1, (%rdx,%rax)	#, keyboxes[i_7]
# st_stuff.c:1273:     for (i=0;i<3;i++)
	.loc 1 1273 19 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L169:
# st_stuff.c:1273:     for (i=0;i<3;i++)
	.loc 1 1273 15 discriminator 1
	cmpl	$2, -4(%rbp)	#, i
	jle	.L170	#,
# st_stuff.c:1276:     STlib_init();
	.loc 1 1276 5
	call	STlib_init@PLT	#
# st_stuff.c:1278: }
	.loc 1 1278 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	ST_initData, .-ST_initData
	.globl	ST_createWidgets
	.type	ST_createWidgets, @function
ST_createWidgets:
.LFB16:
	.loc 1 1283 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# st_stuff.c:1292: 		  &plyr->ammo[weaponinfo[plyr->readyweapon].ammo],
	.loc 1 1292 10
	movq	plyr(%rip), %rdx	# plyr, plyr.167_1
# st_stuff.c:1292: 		  &plyr->ammo[weaponinfo[plyr->readyweapon].ammo],
	.loc 1 1292 32
	movq	plyr(%rip), %rax	# plyr, plyr.168_2
	movl	116(%rax), %eax	# plyr.168_2->readyweapon, _3
# st_stuff.c:1292: 		  &plyr->ammo[weaponinfo[plyr->readyweapon].ammo],
	.loc 1 1292 46
	movl	%eax, %ecx	# _3, tmp124
	movq	%rcx, %rax	# tmp124, tmp126
	addq	%rax, %rax	# tmp126
	addq	%rcx, %rax	# tmp124, tmp126
	salq	$3, %rax	#, tmp127
	movq	%rax, %rcx	# tmp126, tmp125
	leaq	weaponinfo(%rip), %rax	#, tmp128
	movl	(%rcx,%rax), %eax	# weaponinfo[_3].ammo, _4
# st_stuff.c:1288:     STlib_initNum(&w_ready,
	.loc 1 1288 5
	movl	%eax, %eax	# _4, tmp129
	addq	$40, %rax	#, tmp130
	salq	$2, %rax	#, tmp131
	addq	%rdx, %rax	# plyr.167_1, _5
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _5,
	leaq	tallnum(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$171, %edx	#,
	movl	$44, %esi	#,
	leaq	w_ready(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1297:     w_ready.data = plyr->readyweapon; 
	.loc 1 1297 24
	movq	plyr(%rip), %rax	# plyr, plyr.169_6
	movl	116(%rax), %eax	# plyr.169_6->readyweapon, _7
# st_stuff.c:1297:     w_ready.data = plyr->readyweapon; 
	.loc 1 1297 18
	movl	%eax, 40+w_ready(%rip)	# _8, w_ready.data
# st_stuff.c:1300:     STlib_initPercent(&w_health,
	.loc 1 1300 5
	movq	tallpercent(%rip), %rax	# tallpercent, tallpercent.170_9
# st_stuff.c:1304: 		      &plyr->health,
	.loc 1 1304 14
	movq	plyr(%rip), %rdx	# plyr, plyr.171_10
# st_stuff.c:1300:     STlib_initPercent(&w_health,
	.loc 1 1300 5
	addq	$36, %rdx	#, _11
	subq	$8, %rsp	#,
	pushq	%rax	# tallpercent.170_9
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rdx, %r8	# _11,
	leaq	tallnum(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$171, %edx	#,
	movl	$90, %esi	#,
	leaq	w_health(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	STlib_initPercent@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1309:     STlib_initBinIcon(&w_armsbg,
	.loc 1 1309 5
	movq	armsbg(%rip), %rax	# armsbg, armsbg.172_12
	leaq	st_statusbaron(%rip), %r9	#,
	leaq	st_notdeathmatch(%rip), %r8	#,
	movq	%rax, %rcx	# armsbg.172_12,
	movl	$168, %edx	#,
	movl	$104, %esi	#,
	leaq	w_armsbg(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	STlib_initBinIcon@PLT	#
# st_stuff.c:1317:     for(i=0;i<6;i++)
	.loc 1 1317 10
	movl	$0, -4(%rbp)	#, i
# st_stuff.c:1317:     for(i=0;i<6;i++)
	.loc 1 1317 5
	jmp	.L172	#
.L173:
# st_stuff.c:1322: 			   arms[i], (int *) &plyr->weaponowned[i+1],
	.loc 1 1322 29
	movq	plyr(%rip), %rax	# plyr, plyr.173_13
# st_stuff.c:1322: 			   arms[i], (int *) &plyr->weaponowned[i+1],
	.loc 1 1322 44
	movl	-4(%rbp), %edx	# i, tmp137
	addl	$1, %edx	#, _14
# st_stuff.c:1322: 			   arms[i], (int *) &plyr->weaponowned[i+1],
	.loc 1 1322 24
	movslq	%edx, %rdx	# _14, tmp138
	addq	$28, %rdx	#, tmp139
	salq	$2, %rdx	#, tmp140
	addq	%rdx, %rax	# tmp140, tmp141
	leaq	12(%rax), %r8	#, _15
# st_stuff.c:1322: 			   arms[i], (int *) &plyr->weaponowned[i+1],
	.loc 1 1322 11
	movl	-4(%rbp), %eax	# i, tmp143
	cltq
	salq	$4, %rax	#, tmp142
	movq	%rax, %rdx	# tmp142, tmp144
	leaq	arms(%rip), %rax	#, tmp145
	leaq	(%rdx,%rax), %r10	#, _16
# st_stuff.c:1321: 			   ST_ARMSY+(i/3)*ST_ARMSYSPACE,
	.loc 1 1321 18
	movl	-4(%rbp), %eax	# i, tmp146
	movslq	%eax, %rdx	# tmp146, tmp147
	imulq	$1431655766, %rdx, %rdx	#, tmp147, tmp148
	shrq	$32, %rdx	#, tmp149
	sarl	$31, %eax	#, tmp150
	subl	%eax, %edx	# tmp150, _17
# st_stuff.c:1321: 			   ST_ARMSY+(i/3)*ST_ARMSYSPACE,
	.loc 1 1321 21
	movl	%edx, %eax	# _17, tmp151
	sall	$2, %eax	#, tmp151
	addl	%edx, %eax	# _17, tmp151
	addl	%eax, %eax	# tmp152
# st_stuff.c:1319: 	STlib_initMultIcon(&w_arms[i],
	.loc 1 1319 2
	leal	172(%rax), %edi	#, _19
# st_stuff.c:1320: 			   ST_ARMSX+(i%3)*ST_ARMSXSPACE,
	.loc 1 1320 18
	movl	-4(%rbp), %ecx	# i, tmp153
	movslq	%ecx, %rax	# tmp153, tmp154
	imulq	$1431655766, %rax, %rax	#, tmp154, tmp155
	shrq	$32, %rax	#, tmp155
	movq	%rax, %rdx	# tmp155, tmp156
	movl	%ecx, %eax	# tmp153, tmp157
	sarl	$31, %eax	#, tmp157
	subl	%eax, %edx	# tmp157, _20
	movl	%edx, %eax	# _20, tmp158
	addl	%eax, %eax	# tmp158
	addl	%edx, %eax	# _20, tmp158
	subl	%eax, %ecx	# tmp158, tmp153
	movl	%ecx, %edx	# tmp153, _20
# st_stuff.c:1320: 			   ST_ARMSX+(i%3)*ST_ARMSXSPACE,
	.loc 1 1320 21
	movl	%edx, %eax	# _20, tmp159
	addl	%eax, %eax	# tmp159
	addl	%edx, %eax	# _20, tmp159
	sall	$2, %eax	#, tmp160
# st_stuff.c:1319: 	STlib_initMultIcon(&w_arms[i],
	.loc 1 1319 2
	leal	111(%rax), %esi	#, _22
	movl	-4(%rbp), %eax	# i, tmp162
	movslq	%eax, %rdx	# tmp162, tmp161
	movq	%rdx, %rax	# tmp161, tmp163
	addq	%rax, %rax	# tmp163
	addq	%rdx, %rax	# tmp161, tmp163
	salq	$4, %rax	#, tmp164
	leaq	w_arms(%rip), %rdx	#, tmp165
	addq	%rdx, %rax	# tmp165, _23
	leaq	st_armson(%rip), %r9	#,
	movq	%r10, %rcx	# _16,
	movl	%edi, %edx	# _19,
	movq	%rax, %rdi	# _23,
	call	STlib_initMultIcon@PLT	#
# st_stuff.c:1317:     for(i=0;i<6;i++)
	.loc 1 1317 18 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L172:
# st_stuff.c:1317:     for(i=0;i<6;i++)
	.loc 1 1317 14 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L173	#,
# st_stuff.c:1327:     STlib_initNum(&w_frags,
	.loc 1 1327 5
	subq	$8, %rsp	#,
	pushq	$2	#
	leaq	st_fragson(%rip), %r9	#,
	leaq	st_fragscount(%rip), %r8	#,
	leaq	tallnum(%rip), %rax	#, tmp166
	movq	%rax, %rcx	# tmp166,
	movl	$171, %edx	#,
	movl	$138, %esi	#,
	leaq	w_frags(%rip), %rax	#, tmp167
	movq	%rax, %rdi	# tmp167,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1336:     STlib_initMultIcon(&w_faces,
	.loc 1 1336 5
	leaq	st_statusbaron(%rip), %r9	#,
	leaq	st_faceindex(%rip), %r8	#,
	leaq	faces(%rip), %rax	#, tmp168
	movq	%rax, %rcx	# tmp168,
	movl	$168, %edx	#,
	movl	$143, %esi	#,
	leaq	w_faces(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	STlib_initMultIcon@PLT	#
# st_stuff.c:1344:     STlib_initPercent(&w_armor,
	.loc 1 1344 5
	movq	tallpercent(%rip), %rax	# tallpercent, tallpercent.174_24
# st_stuff.c:1348: 		      &plyr->armorpoints,
	.loc 1 1348 14
	movq	plyr(%rip), %rdx	# plyr, plyr.175_25
# st_stuff.c:1344:     STlib_initPercent(&w_armor,
	.loc 1 1344 5
	addq	$40, %rdx	#, _26
	subq	$8, %rsp	#,
	pushq	%rax	# tallpercent.174_24
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rdx, %r8	# _26,
	leaq	tallnum(%rip), %rax	#, tmp170
	movq	%rax, %rcx	# tmp170,
	movl	$171, %edx	#,
	movl	$221, %esi	#,
	leaq	w_armor(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	STlib_initPercent@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1352:     STlib_initMultIcon(&w_keyboxes[0],
	.loc 1 1352 5
	leaq	st_statusbaron(%rip), %r9	#,
	leaq	keyboxes(%rip), %r8	#,
	leaq	keys(%rip), %rax	#, tmp172
	movq	%rax, %rcx	# tmp172,
	movl	$171, %edx	#,
	movl	$239, %esi	#,
	leaq	w_keyboxes(%rip), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	call	STlib_initMultIcon@PLT	#
# st_stuff.c:1359:     STlib_initMultIcon(&w_keyboxes[1],
	.loc 1 1359 5
	leaq	st_statusbaron(%rip), %r9	#,
	leaq	4+keyboxes(%rip), %r8	#,
	leaq	keys(%rip), %rax	#, tmp174
	movq	%rax, %rcx	# tmp174,
	movl	$181, %edx	#,
	movl	$239, %esi	#,
	leaq	48+w_keyboxes(%rip), %rax	#, tmp175
	movq	%rax, %rdi	# tmp175,
	call	STlib_initMultIcon@PLT	#
# st_stuff.c:1366:     STlib_initMultIcon(&w_keyboxes[2],
	.loc 1 1366 5
	leaq	st_statusbaron(%rip), %r9	#,
	leaq	8+keyboxes(%rip), %r8	#,
	leaq	keys(%rip), %rax	#, tmp176
	movq	%rax, %rcx	# tmp176,
	movl	$191, %edx	#,
	movl	$239, %esi	#,
	leaq	96+w_keyboxes(%rip), %rax	#, tmp177
	movq	%rax, %rdi	# tmp177,
	call	STlib_initMultIcon@PLT	#
# st_stuff.c:1378: 		  &plyr->ammo[0],
	.loc 1 1378 10
	movq	plyr(%rip), %rax	# plyr, plyr.176_27
# st_stuff.c:1374:     STlib_initNum(&w_ammo[0],
	.loc 1 1374 5
	addq	$160, %rax	#, _28
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _28,
	leaq	shortnum(%rip), %rax	#, tmp178
	movq	%rax, %rcx	# tmp178,
	movl	$173, %edx	#,
	movl	$288, %esi	#,
	leaq	w_ammo(%rip), %rax	#, tmp179
	movq	%rax, %rdi	# tmp179,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1386: 		  &plyr->ammo[1],
	.loc 1 1386 10
	movq	plyr(%rip), %rax	# plyr, plyr.177_29
# st_stuff.c:1382:     STlib_initNum(&w_ammo[1],
	.loc 1 1382 5
	addq	$164, %rax	#, _30
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _30,
	leaq	shortnum(%rip), %rax	#, tmp180
	movq	%rax, %rcx	# tmp180,
	movl	$179, %edx	#,
	movl	$288, %esi	#,
	leaq	48+w_ammo(%rip), %rax	#, tmp181
	movq	%rax, %rdi	# tmp181,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1394: 		  &plyr->ammo[2],
	.loc 1 1394 10
	movq	plyr(%rip), %rax	# plyr, plyr.178_31
# st_stuff.c:1390:     STlib_initNum(&w_ammo[2],
	.loc 1 1390 5
	addq	$168, %rax	#, _32
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _32,
	leaq	shortnum(%rip), %rax	#, tmp182
	movq	%rax, %rcx	# tmp182,
	movl	$191, %edx	#,
	movl	$288, %esi	#,
	leaq	96+w_ammo(%rip), %rax	#, tmp183
	movq	%rax, %rdi	# tmp183,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1402: 		  &plyr->ammo[3],
	.loc 1 1402 10
	movq	plyr(%rip), %rax	# plyr, plyr.179_33
# st_stuff.c:1398:     STlib_initNum(&w_ammo[3],
	.loc 1 1398 5
	addq	$172, %rax	#, _34
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _34,
	leaq	shortnum(%rip), %rax	#, tmp184
	movq	%rax, %rcx	# tmp184,
	movl	$185, %edx	#,
	movl	$288, %esi	#,
	leaq	144+w_ammo(%rip), %rax	#, tmp185
	movq	%rax, %rdi	# tmp185,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1411: 		  &plyr->maxammo[0],
	.loc 1 1411 10
	movq	plyr(%rip), %rax	# plyr, plyr.180_35
# st_stuff.c:1407:     STlib_initNum(&w_maxammo[0],
	.loc 1 1407 5
	addq	$176, %rax	#, _36
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _36,
	leaq	shortnum(%rip), %rax	#, tmp186
	movq	%rax, %rcx	# tmp186,
	movl	$173, %edx	#,
	movl	$314, %esi	#,
	leaq	w_maxammo(%rip), %rax	#, tmp187
	movq	%rax, %rdi	# tmp187,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1419: 		  &plyr->maxammo[1],
	.loc 1 1419 10
	movq	plyr(%rip), %rax	# plyr, plyr.181_37
# st_stuff.c:1415:     STlib_initNum(&w_maxammo[1],
	.loc 1 1415 5
	addq	$180, %rax	#, _38
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _38,
	leaq	shortnum(%rip), %rax	#, tmp188
	movq	%rax, %rcx	# tmp188,
	movl	$179, %edx	#,
	movl	$314, %esi	#,
	leaq	48+w_maxammo(%rip), %rax	#, tmp189
	movq	%rax, %rdi	# tmp189,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1427: 		  &plyr->maxammo[2],
	.loc 1 1427 10
	movq	plyr(%rip), %rax	# plyr, plyr.182_39
# st_stuff.c:1423:     STlib_initNum(&w_maxammo[2],
	.loc 1 1423 5
	addq	$184, %rax	#, _40
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _40,
	leaq	shortnum(%rip), %rax	#, tmp190
	movq	%rax, %rcx	# tmp190,
	movl	$191, %edx	#,
	movl	$314, %esi	#,
	leaq	96+w_maxammo(%rip), %rax	#, tmp191
	movq	%rax, %rdi	# tmp191,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1435: 		  &plyr->maxammo[3],
	.loc 1 1435 10
	movq	plyr(%rip), %rax	# plyr, plyr.183_41
# st_stuff.c:1431:     STlib_initNum(&w_maxammo[3],
	.loc 1 1431 5
	addq	$188, %rax	#, _42
	subq	$8, %rsp	#,
	pushq	$3	#
	leaq	st_statusbaron(%rip), %r9	#,
	movq	%rax, %r8	# _42,
	leaq	shortnum(%rip), %rax	#, tmp192
	movq	%rax, %rcx	# tmp192,
	movl	$185, %edx	#,
	movl	$314, %esi	#,
	leaq	144+w_maxammo(%rip), %rax	#, tmp193
	movq	%rax, %rdi	# tmp193,
	call	STlib_initNum@PLT	#
	addq	$16, %rsp	#,
# st_stuff.c:1439: }
	.loc 1 1439 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	ST_createWidgets, .-ST_createWidgets
	.data
	.align 4
	.type	st_stopped, @object
	.size	st_stopped, 4
st_stopped:
	.long	1
	.text
	.globl	ST_Start
	.type	ST_Start, @function
ST_Start:
.LFB17:
	.loc 1 1445 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:1447:     if (!st_stopped)
	.loc 1 1447 9
	movl	st_stopped(%rip), %eax	# st_stopped, st_stopped.184_1
# st_stuff.c:1447:     if (!st_stopped)
	.loc 1 1447 8
	testl	%eax, %eax	# st_stopped.184_1
	jne	.L175	#,
# st_stuff.c:1448: 	ST_Stop();
	.loc 1 1448 2
	call	ST_Stop	#
.L175:
# st_stuff.c:1450:     ST_initData();
	.loc 1 1450 5
	call	ST_initData	#
# st_stuff.c:1451:     ST_createWidgets();
	.loc 1 1451 5
	call	ST_createWidgets	#
# st_stuff.c:1452:     st_stopped = false;
	.loc 1 1452 16
	movl	$0, st_stopped(%rip)	#, st_stopped
# st_stuff.c:1454: }
	.loc 1 1454 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	ST_Start, .-ST_Start
	.globl	ST_Stop
	.type	ST_Stop, @function
ST_Stop:
.LFB18:
	.loc 1 1457 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:1458:     if (st_stopped)
	.loc 1 1458 9
	movl	st_stopped(%rip), %eax	# st_stopped, st_stopped.185_1
# st_stuff.c:1458:     if (st_stopped)
	.loc 1 1458 8
	testl	%eax, %eax	# st_stopped.185_1
	jne	.L179	#,
# st_stuff.c:1461:     I_SetPalette (W_CacheLumpNum (lu_palette, PU_CACHE));
	.loc 1 1461 5
	movl	lu_palette(%rip), %eax	# lu_palette, lu_palette.186_2
# st_stuff.c:1461:     I_SetPalette (W_CacheLumpNum (lu_palette, PU_CACHE));
	.loc 1 1461 19
	movl	$101, %esi	#,
	movl	%eax, %edi	# lu_palette.186_2,
	call	W_CacheLumpNum@PLT	#
# st_stuff.c:1461:     I_SetPalette (W_CacheLumpNum (lu_palette, PU_CACHE));
	.loc 1 1461 5 discriminator 1
	movq	%rax, %rdi	# _3,
	call	I_SetPalette@PLT	#
# st_stuff.c:1463:     st_stopped = true;
	.loc 1 1463 16
	movl	$1, st_stopped(%rip)	#, st_stopped
	jmp	.L176	#
.L179:
# st_stuff.c:1459: 	return;
	.loc 1 1459 2
	nop	
.L176:
# st_stuff.c:1464: }
	.loc 1 1464 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	ST_Stop, .-ST_Stop
	.globl	ST_Init
	.type	ST_Init, @function
ST_Init:
.LFB19:
	.loc 1 1467 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# st_stuff.c:1468:     veryfirsttime = 0;
	.loc 1 1468 19
	movl	$0, veryfirsttime(%rip)	#, veryfirsttime
# st_stuff.c:1469:     ST_loadData();
	.loc 1 1469 5
	call	ST_loadData	#
# st_stuff.c:1470:     screens[4] = (byte *) Z_Malloc(ST_WIDTH*ST_HEIGHT, PU_STATIC, 0);
	.loc 1 1470 27
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	$10240, %edi	#,
	call	Z_Malloc@PLT	#
# st_stuff.c:1470:     screens[4] = (byte *) Z_Malloc(ST_WIDTH*ST_HEIGHT, PU_STATIC, 0);
	.loc 1 1470 16 discriminator 1
	movq	%rax, 32+screens(%rip)	# _1, screens[4]
# st_stuff.c:1471: }
	.loc 1 1471 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	ST_Init, .-ST_Init
	.local	buf.5
	.comm	buf.5,52,32
	.data
	.align 4
	.type	oldhealth.4, @object
	.size	oldhealth.4, 4
oldhealth.4:
	.long	-1
	.local	lastcalc.3
	.comm	lastcalc.3,4,4
	.local	priority.2
	.comm	priority.2,4,4
	.align 4
	.type	lastattackdown.1, @object
	.size	lastattackdown.1, 4
lastattackdown.1:
	.long	-1
	.align 4
	.type	largeammo.0, @object
	.size	largeammo.0, 4
largeammo.0:
	.long	1994
	.text
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "d_ticcmd.h"
	.file 4 "d_event.h"
	.file 5 "z_zone.h"
	.file 6 "doomdef.h"
	.file 7 "st_stuff.h"
	.file 8 "m_fixed.h"
	.file 9 "d_think.h"
	.file 10 "tables.h"
	.file 11 "doomdata.h"
	.file 12 "info.h"
	.file 13 "p_mobj.h"
	.file 14 "r_defs.h"
	.file 15 "d_player.h"
	.file 16 "st_lib.h"
	.file 17 "d_items.h"
	.file 18 "p_pspr.h"
	.file 19 "m_cheat.h"
	.file 20 "v_video.h"
	.file 21 "doomstat.h"
	.file 22 "sounds.h"
	.file 23 "i_system.h"
	.file 24 "w_wad.h"
	.file 25 "i_video.h"
	.file 26 "r_main.h"
	.file 27 "g_game.h"
	.file 28 "/usr/include/stdio.h"
	.file 29 "p_inter.h"
	.file 30 "s_sound.h"
	.file 31 "m_random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x41fb
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x20
	.long	.LASF1710
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	0x51
	.long	0x3e
	.uleb128 0x9
	.long	0x43
	.byte	0x32
	.byte	0
	.uleb128 0x1c
	.long	0x2e
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x1c
	.long	0x4a
	.uleb128 0x21
	.long	.LASF1587
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x22
	.byte	0x8
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0xb
	.long	0x4a
	.uleb128 0xb
	.long	0x51
	.uleb128 0xd
	.long	0x6c
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0xc2
	.uleb128 0x2
	.long	.LASF10
	.byte	0
	.uleb128 0x2
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0x22
	.byte	0x1c
	.long	0xa9
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0x75
	.uleb128 0x10
	.byte	0x8
	.byte	0x3
	.byte	0x24
	.long	0x131
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x28
	.byte	0xb
	.long	0x8a
	.byte	0x2
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0x29
	.byte	0xb
	.long	0x8a
	.byte	0x4
	.uleb128 0x3
	.long	.LASF18
	.byte	0x3
	.byte	0x2a
	.byte	0xa
	.long	0xce
	.byte	0x6
	.uleb128 0x3
	.long	.LASF19
	.byte	0x3
	.byte	0x2b
	.byte	0xa
	.long	0xce
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.long	0xda
	.uleb128 0xd
	.long	0x6c
	.byte	0x4
	.byte	0x24
	.byte	0x1
	.long	0x162
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
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x29
	.byte	0x3
	.long	0x13d
	.uleb128 0x10
	.byte	0x10
	.byte	0x4
	.byte	0x2c
	.long	0x1ab
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.long	0x162
	.byte	0
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x2f
	.byte	0xa
	.long	0x91
	.byte	0x4
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x30
	.byte	0xa
	.long	0x91
	.byte	0x8
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x31
	.byte	0xa
	.long	0x91
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x32
	.byte	0x3
	.long	0x16e
	.uleb128 0x17
	.long	.LASF96
	.byte	0x28
	.byte	0x5
	.byte	0x3a
	.long	0x211
	.uleb128 0x3
	.long	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0xb
	.long	0x91
	.byte	0
	.uleb128 0x3
	.long	.LASF32
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.long	0x211
	.byte	0x8
	.uleb128 0x7
	.string	"tag"
	.byte	0x5
	.byte	0x3e
	.byte	0xb
	.long	0x91
	.byte	0x10
	.uleb128 0x7
	.string	"id"
	.byte	0x5
	.byte	0x3f
	.byte	0xb
	.long	0x91
	.byte	0x14
	.uleb128 0x3
	.long	.LASF33
	.byte	0x5
	.byte	0x40
	.byte	0x18
	.long	0x216
	.byte	0x18
	.uleb128 0x3
	.long	.LASF34
	.byte	0x5
	.byte	0x41
	.byte	0x18
	.long	0x216
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	0x73
	.uleb128 0xb
	.long	0x1b7
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.byte	0x42
	.byte	0x3
	.long	0x1b7
	.uleb128 0xd
	.long	0x6c
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.long	0x252
	.uleb128 0x2
	.long	.LASF36
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x1
	.uleb128 0x2
	.long	.LASF38
	.byte	0x2
	.uleb128 0x2
	.long	.LASF39
	.byte	0x3
	.uleb128 0x2
	.long	.LASF40
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF41
	.byte	0x6
	.byte	0x2f
	.byte	0x3
	.long	0x227
	.uleb128 0xd
	.long	0x6c
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.long	0x289
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
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0x9a
	.byte	0x3
	.long	0x25e
	.uleb128 0xd
	.long	0x6c
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.long	0x2cc
	.uleb128 0x2
	.long	.LASF48
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x1
	.uleb128 0x2
	.long	.LASF50
	.byte	0x2
	.uleb128 0x2
	.long	.LASF51
	.byte	0x3
	.uleb128 0x2
	.long	.LASF52
	.byte	0x4
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x6c
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.long	0x31b
	.uleb128 0x2
	.long	.LASF55
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x1
	.uleb128 0x2
	.long	.LASF57
	.byte	0x2
	.uleb128 0x2
	.long	.LASF58
	.byte	0x3
	.uleb128 0x2
	.long	.LASF59
	.byte	0x4
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.uleb128 0x2
	.long	.LASF62
	.byte	0x7
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.uleb128 0x2
	.long	.LASF65
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0xc5
	.byte	0x3
	.long	0x2cc
	.uleb128 0xd
	.long	0x6c
	.byte	0x6
	.byte	0xca
	.byte	0x1
	.long	0x358
	.uleb128 0x2
	.long	.LASF67
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x1
	.uleb128 0x2
	.long	.LASF69
	.byte	0x2
	.uleb128 0x2
	.long	.LASF70
	.byte	0x3
	.uleb128 0x2
	.long	.LASF71
	.byte	0x4
	.uleb128 0x2
	.long	.LASF72
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0xd2
	.byte	0x3
	.long	0x327
	.uleb128 0xd
	.long	0x6c
	.byte	0x6
	.byte	0xd7
	.byte	0x1
	.long	0x39b
	.uleb128 0x2
	.long	.LASF74
	.byte	0
	.uleb128 0x2
	.long	.LASF75
	.byte	0x1
	.uleb128 0x2
	.long	.LASF76
	.byte	0x2
	.uleb128 0x2
	.long	.LASF77
	.byte	0x3
	.uleb128 0x2
	.long	.LASF78
	.byte	0x4
	.uleb128 0x2
	.long	.LASF79
	.byte	0x5
	.uleb128 0x2
	.long	.LASF80
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x6c
	.byte	0x7
	.byte	0x3c
	.byte	0x1
	.long	0x3b4
	.uleb128 0x2
	.long	.LASF81
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF83
	.byte	0x7
	.byte	0x40
	.byte	0x3
	.long	0x39b
	.uleb128 0xd
	.long	0x6c
	.byte	0x7
	.byte	0x45
	.byte	0x1
	.long	0x3df
	.uleb128 0x2
	.long	.LASF84
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x1
	.uleb128 0x2
	.long	.LASF86
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x7
	.byte	0x4a
	.byte	0x3
	.long	0x3c0
	.uleb128 0x8
	.long	.LASF88
	.byte	0x8
	.byte	0x26
	.byte	0xd
	.long	0x91
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x29
	.byte	0x11
	.long	0x403
	.uleb128 0xb
	.long	0x408
	.uleb128 0x24
	.long	0x40f
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x2a
	.byte	0x11
	.long	0x41b
	.uleb128 0xb
	.long	0x420
	.uleb128 0x1d
	.long	0x42b
	.uleb128 0x4
	.long	0x73
	.byte	0
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x2b
	.byte	0x11
	.long	0x437
	.uleb128 0xb
	.long	0x43c
	.uleb128 0x1d
	.long	0x44c
	.uleb128 0x4
	.long	0x73
	.uleb128 0x4
	.long	0x73
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.byte	0x9
	.byte	0x2d
	.byte	0x9
	.long	0x476
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x2f
	.long	0x40f
	.uleb128 0x26
	.string	"acv"
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.long	0x3f7
	.uleb128 0x1e
	.long	.LASF93
	.byte	0x31
	.long	0x42b
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x33
	.byte	0x3
	.long	0x44c
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.long	0x476
	.uleb128 0x17
	.long	.LASF97
	.byte	0x18
	.byte	0x9
	.byte	0x40
	.long	0x4c2
	.uleb128 0x3
	.long	.LASF34
	.byte	0x9
	.byte	0x42
	.byte	0x17
	.long	0x4c2
	.byte	0
	.uleb128 0x3
	.long	.LASF33
	.byte	0x9
	.byte	0x43
	.byte	0x17
	.long	0x4c2
	.byte	0x8
	.uleb128 0x3
	.long	.LASF98
	.byte	0x9
	.byte	0x44
	.byte	0xe
	.long	0x482
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	0x48e
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x46
	.byte	0x3
	.long	0x48e
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.long	.LASF100
	.uleb128 0x11
	.byte	0x8
	.byte	0x4
	.long	.LASF101
	.uleb128 0x8
	.long	.LASF102
	.byte	0xa
	.byte	0x4e
	.byte	0x12
	.long	0x6c
	.uleb128 0xa
	.long	0x8a
	.long	0x4fd
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0xa
	.byte	0xb
	.byte	0xcb
	.long	0x543
	.uleb128 0x7
	.string	"x"
	.byte	0xb
	.byte	0xcd
	.byte	0xc
	.long	0x8a
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xb
	.byte	0xce
	.byte	0xc
	.long	0x8a
	.byte	0x2
	.uleb128 0x3
	.long	.LASF103
	.byte	0xb
	.byte	0xcf
	.byte	0xc
	.long	0x8a
	.byte	0x4
	.uleb128 0x3
	.long	.LASF26
	.byte	0xb
	.byte	0xd0
	.byte	0xc
	.long	0x8a
	.byte	0x6
	.uleb128 0x3
	.long	.LASF104
	.byte	0xb
	.byte	0xd1
	.byte	0xc
	.long	0x8a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF105
	.byte	0xb
	.byte	0xd2
	.byte	0x3
	.long	0x4fd
	.uleb128 0xd
	.long	0x6c
	.byte	0xc
	.byte	0x1f
	.byte	0x1
	.long	0x89e
	.uleb128 0x2
	.long	.LASF106
	.byte	0
	.uleb128 0x2
	.long	.LASF107
	.byte	0x1
	.uleb128 0x2
	.long	.LASF108
	.byte	0x2
	.uleb128 0x2
	.long	.LASF109
	.byte	0x3
	.uleb128 0x2
	.long	.LASF110
	.byte	0x4
	.uleb128 0x2
	.long	.LASF111
	.byte	0x5
	.uleb128 0x2
	.long	.LASF112
	.byte	0x6
	.uleb128 0x2
	.long	.LASF113
	.byte	0x7
	.uleb128 0x2
	.long	.LASF114
	.byte	0x8
	.uleb128 0x2
	.long	.LASF115
	.byte	0x9
	.uleb128 0x2
	.long	.LASF116
	.byte	0xa
	.uleb128 0x2
	.long	.LASF117
	.byte	0xb
	.uleb128 0x2
	.long	.LASF118
	.byte	0xc
	.uleb128 0x2
	.long	.LASF119
	.byte	0xd
	.uleb128 0x2
	.long	.LASF120
	.byte	0xe
	.uleb128 0x2
	.long	.LASF121
	.byte	0xf
	.uleb128 0x2
	.long	.LASF122
	.byte	0x10
	.uleb128 0x2
	.long	.LASF123
	.byte	0x11
	.uleb128 0x2
	.long	.LASF124
	.byte	0x12
	.uleb128 0x2
	.long	.LASF125
	.byte	0x13
	.uleb128 0x2
	.long	.LASF126
	.byte	0x14
	.uleb128 0x2
	.long	.LASF127
	.byte	0x15
	.uleb128 0x2
	.long	.LASF128
	.byte	0x16
	.uleb128 0x2
	.long	.LASF129
	.byte	0x17
	.uleb128 0x2
	.long	.LASF130
	.byte	0x18
	.uleb128 0x2
	.long	.LASF131
	.byte	0x19
	.uleb128 0x2
	.long	.LASF132
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF133
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF134
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF135
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF136
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF137
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF138
	.byte	0x20
	.uleb128 0x2
	.long	.LASF139
	.byte	0x21
	.uleb128 0x2
	.long	.LASF140
	.byte	0x22
	.uleb128 0x2
	.long	.LASF141
	.byte	0x23
	.uleb128 0x2
	.long	.LASF142
	.byte	0x24
	.uleb128 0x2
	.long	.LASF143
	.byte	0x25
	.uleb128 0x2
	.long	.LASF144
	.byte	0x26
	.uleb128 0x2
	.long	.LASF145
	.byte	0x27
	.uleb128 0x2
	.long	.LASF146
	.byte	0x28
	.uleb128 0x2
	.long	.LASF147
	.byte	0x29
	.uleb128 0x2
	.long	.LASF148
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF149
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF150
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF151
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF152
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF153
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF154
	.byte	0x30
	.uleb128 0x2
	.long	.LASF155
	.byte	0x31
	.uleb128 0x2
	.long	.LASF156
	.byte	0x32
	.uleb128 0x2
	.long	.LASF157
	.byte	0x33
	.uleb128 0x2
	.long	.LASF158
	.byte	0x34
	.uleb128 0x2
	.long	.LASF159
	.byte	0x35
	.uleb128 0x2
	.long	.LASF160
	.byte	0x36
	.uleb128 0x2
	.long	.LASF161
	.byte	0x37
	.uleb128 0x2
	.long	.LASF162
	.byte	0x38
	.uleb128 0x2
	.long	.LASF163
	.byte	0x39
	.uleb128 0x2
	.long	.LASF164
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF165
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF166
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF167
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF168
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF169
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF170
	.byte	0x40
	.uleb128 0x2
	.long	.LASF171
	.byte	0x41
	.uleb128 0x2
	.long	.LASF172
	.byte	0x42
	.uleb128 0x2
	.long	.LASF173
	.byte	0x43
	.uleb128 0x2
	.long	.LASF174
	.byte	0x44
	.uleb128 0x2
	.long	.LASF175
	.byte	0x45
	.uleb128 0x2
	.long	.LASF176
	.byte	0x46
	.uleb128 0x2
	.long	.LASF177
	.byte	0x47
	.uleb128 0x2
	.long	.LASF178
	.byte	0x48
	.uleb128 0x2
	.long	.LASF179
	.byte	0x49
	.uleb128 0x2
	.long	.LASF180
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF181
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF182
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF183
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF184
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF185
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF186
	.byte	0x50
	.uleb128 0x2
	.long	.LASF187
	.byte	0x51
	.uleb128 0x2
	.long	.LASF188
	.byte	0x52
	.uleb128 0x2
	.long	.LASF189
	.byte	0x53
	.uleb128 0x2
	.long	.LASF190
	.byte	0x54
	.uleb128 0x2
	.long	.LASF191
	.byte	0x55
	.uleb128 0x2
	.long	.LASF192
	.byte	0x56
	.uleb128 0x2
	.long	.LASF193
	.byte	0x57
	.uleb128 0x2
	.long	.LASF194
	.byte	0x58
	.uleb128 0x2
	.long	.LASF195
	.byte	0x59
	.uleb128 0x2
	.long	.LASF196
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF197
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF198
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF199
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF200
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF201
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF202
	.byte	0x60
	.uleb128 0x2
	.long	.LASF203
	.byte	0x61
	.uleb128 0x2
	.long	.LASF204
	.byte	0x62
	.uleb128 0x2
	.long	.LASF205
	.byte	0x63
	.uleb128 0x2
	.long	.LASF206
	.byte	0x64
	.uleb128 0x2
	.long	.LASF207
	.byte	0x65
	.uleb128 0x2
	.long	.LASF208
	.byte	0x66
	.uleb128 0x2
	.long	.LASF209
	.byte	0x67
	.uleb128 0x2
	.long	.LASF210
	.byte	0x68
	.uleb128 0x2
	.long	.LASF211
	.byte	0x69
	.uleb128 0x2
	.long	.LASF212
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF213
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF214
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF215
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF216
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF217
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF218
	.byte	0x70
	.uleb128 0x2
	.long	.LASF219
	.byte	0x71
	.uleb128 0x2
	.long	.LASF220
	.byte	0x72
	.uleb128 0x2
	.long	.LASF221
	.byte	0x73
	.uleb128 0x2
	.long	.LASF222
	.byte	0x74
	.uleb128 0x2
	.long	.LASF223
	.byte	0x75
	.uleb128 0x2
	.long	.LASF224
	.byte	0x76
	.uleb128 0x2
	.long	.LASF225
	.byte	0x77
	.uleb128 0x2
	.long	.LASF226
	.byte	0x78
	.uleb128 0x2
	.long	.LASF227
	.byte	0x79
	.uleb128 0x2
	.long	.LASF228
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF229
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF230
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF231
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF232
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF233
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF234
	.byte	0x80
	.uleb128 0x2
	.long	.LASF235
	.byte	0x81
	.uleb128 0x2
	.long	.LASF236
	.byte	0x82
	.uleb128 0x2
	.long	.LASF237
	.byte	0x83
	.uleb128 0x2
	.long	.LASF238
	.byte	0x84
	.uleb128 0x2
	.long	.LASF239
	.byte	0x85
	.uleb128 0x2
	.long	.LASF240
	.byte	0x86
	.uleb128 0x2
	.long	.LASF241
	.byte	0x87
	.uleb128 0x2
	.long	.LASF242
	.byte	0x88
	.uleb128 0x2
	.long	.LASF243
	.byte	0x89
	.uleb128 0x2
	.long	.LASF244
	.byte	0x8a
	.byte	0
	.uleb128 0x8
	.long	.LASF245
	.byte	0xc
	.byte	0xac
	.byte	0x3
	.long	0x54f
	.uleb128 0xd
	.long	0x6c
	.byte	0xc
	.byte	0xaf
	.byte	0x1
	.long	0x222f
	.uleb128 0x2
	.long	.LASF246
	.byte	0
	.uleb128 0x2
	.long	.LASF247
	.byte	0x1
	.uleb128 0x2
	.long	.LASF248
	.byte	0x2
	.uleb128 0x2
	.long	.LASF249
	.byte	0x3
	.uleb128 0x2
	.long	.LASF250
	.byte	0x4
	.uleb128 0x2
	.long	.LASF251
	.byte	0x5
	.uleb128 0x2
	.long	.LASF252
	.byte	0x6
	.uleb128 0x2
	.long	.LASF253
	.byte	0x7
	.uleb128 0x2
	.long	.LASF254
	.byte	0x8
	.uleb128 0x2
	.long	.LASF255
	.byte	0x9
	.uleb128 0x2
	.long	.LASF256
	.byte	0xa
	.uleb128 0x2
	.long	.LASF257
	.byte	0xb
	.uleb128 0x2
	.long	.LASF258
	.byte	0xc
	.uleb128 0x2
	.long	.LASF259
	.byte	0xd
	.uleb128 0x2
	.long	.LASF260
	.byte	0xe
	.uleb128 0x2
	.long	.LASF261
	.byte	0xf
	.uleb128 0x2
	.long	.LASF262
	.byte	0x10
	.uleb128 0x2
	.long	.LASF263
	.byte	0x11
	.uleb128 0x2
	.long	.LASF264
	.byte	0x12
	.uleb128 0x2
	.long	.LASF265
	.byte	0x13
	.uleb128 0x2
	.long	.LASF266
	.byte	0x14
	.uleb128 0x2
	.long	.LASF267
	.byte	0x15
	.uleb128 0x2
	.long	.LASF268
	.byte	0x16
	.uleb128 0x2
	.long	.LASF269
	.byte	0x17
	.uleb128 0x2
	.long	.LASF270
	.byte	0x18
	.uleb128 0x2
	.long	.LASF271
	.byte	0x19
	.uleb128 0x2
	.long	.LASF272
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF273
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF274
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF275
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF276
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF277
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF278
	.byte	0x20
	.uleb128 0x2
	.long	.LASF279
	.byte	0x21
	.uleb128 0x2
	.long	.LASF280
	.byte	0x22
	.uleb128 0x2
	.long	.LASF281
	.byte	0x23
	.uleb128 0x2
	.long	.LASF282
	.byte	0x24
	.uleb128 0x2
	.long	.LASF283
	.byte	0x25
	.uleb128 0x2
	.long	.LASF284
	.byte	0x26
	.uleb128 0x2
	.long	.LASF285
	.byte	0x27
	.uleb128 0x2
	.long	.LASF286
	.byte	0x28
	.uleb128 0x2
	.long	.LASF287
	.byte	0x29
	.uleb128 0x2
	.long	.LASF288
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF289
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF290
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF291
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF292
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF293
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF294
	.byte	0x30
	.uleb128 0x2
	.long	.LASF295
	.byte	0x31
	.uleb128 0x2
	.long	.LASF296
	.byte	0x32
	.uleb128 0x2
	.long	.LASF297
	.byte	0x33
	.uleb128 0x2
	.long	.LASF298
	.byte	0x34
	.uleb128 0x2
	.long	.LASF299
	.byte	0x35
	.uleb128 0x2
	.long	.LASF300
	.byte	0x36
	.uleb128 0x2
	.long	.LASF301
	.byte	0x37
	.uleb128 0x2
	.long	.LASF302
	.byte	0x38
	.uleb128 0x2
	.long	.LASF303
	.byte	0x39
	.uleb128 0x2
	.long	.LASF304
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF305
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF306
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF307
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF308
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF309
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF310
	.byte	0x40
	.uleb128 0x2
	.long	.LASF311
	.byte	0x41
	.uleb128 0x2
	.long	.LASF312
	.byte	0x42
	.uleb128 0x2
	.long	.LASF313
	.byte	0x43
	.uleb128 0x2
	.long	.LASF314
	.byte	0x44
	.uleb128 0x2
	.long	.LASF315
	.byte	0x45
	.uleb128 0x2
	.long	.LASF316
	.byte	0x46
	.uleb128 0x2
	.long	.LASF317
	.byte	0x47
	.uleb128 0x2
	.long	.LASF318
	.byte	0x48
	.uleb128 0x2
	.long	.LASF319
	.byte	0x49
	.uleb128 0x2
	.long	.LASF320
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF321
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF322
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF323
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF324
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF325
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF326
	.byte	0x50
	.uleb128 0x2
	.long	.LASF327
	.byte	0x51
	.uleb128 0x2
	.long	.LASF328
	.byte	0x52
	.uleb128 0x2
	.long	.LASF329
	.byte	0x53
	.uleb128 0x2
	.long	.LASF330
	.byte	0x54
	.uleb128 0x2
	.long	.LASF331
	.byte	0x55
	.uleb128 0x2
	.long	.LASF332
	.byte	0x56
	.uleb128 0x2
	.long	.LASF333
	.byte	0x57
	.uleb128 0x2
	.long	.LASF334
	.byte	0x58
	.uleb128 0x2
	.long	.LASF335
	.byte	0x59
	.uleb128 0x2
	.long	.LASF336
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF337
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF338
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF339
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF340
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF341
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF342
	.byte	0x60
	.uleb128 0x2
	.long	.LASF343
	.byte	0x61
	.uleb128 0x2
	.long	.LASF344
	.byte	0x62
	.uleb128 0x2
	.long	.LASF345
	.byte	0x63
	.uleb128 0x2
	.long	.LASF346
	.byte	0x64
	.uleb128 0x2
	.long	.LASF347
	.byte	0x65
	.uleb128 0x2
	.long	.LASF348
	.byte	0x66
	.uleb128 0x2
	.long	.LASF349
	.byte	0x67
	.uleb128 0x2
	.long	.LASF350
	.byte	0x68
	.uleb128 0x2
	.long	.LASF351
	.byte	0x69
	.uleb128 0x2
	.long	.LASF352
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF353
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF354
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF355
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF356
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF357
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF358
	.byte	0x70
	.uleb128 0x2
	.long	.LASF359
	.byte	0x71
	.uleb128 0x2
	.long	.LASF360
	.byte	0x72
	.uleb128 0x2
	.long	.LASF361
	.byte	0x73
	.uleb128 0x2
	.long	.LASF362
	.byte	0x74
	.uleb128 0x2
	.long	.LASF363
	.byte	0x75
	.uleb128 0x2
	.long	.LASF364
	.byte	0x76
	.uleb128 0x2
	.long	.LASF365
	.byte	0x77
	.uleb128 0x2
	.long	.LASF366
	.byte	0x78
	.uleb128 0x2
	.long	.LASF367
	.byte	0x79
	.uleb128 0x2
	.long	.LASF368
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF369
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF370
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF371
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF372
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF373
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF374
	.byte	0x80
	.uleb128 0x2
	.long	.LASF375
	.byte	0x81
	.uleb128 0x2
	.long	.LASF376
	.byte	0x82
	.uleb128 0x2
	.long	.LASF377
	.byte	0x83
	.uleb128 0x2
	.long	.LASF378
	.byte	0x84
	.uleb128 0x2
	.long	.LASF379
	.byte	0x85
	.uleb128 0x2
	.long	.LASF380
	.byte	0x86
	.uleb128 0x2
	.long	.LASF381
	.byte	0x87
	.uleb128 0x2
	.long	.LASF382
	.byte	0x88
	.uleb128 0x2
	.long	.LASF383
	.byte	0x89
	.uleb128 0x2
	.long	.LASF384
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF385
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF386
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF387
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF388
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF389
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF390
	.byte	0x90
	.uleb128 0x2
	.long	.LASF391
	.byte	0x91
	.uleb128 0x2
	.long	.LASF392
	.byte	0x92
	.uleb128 0x2
	.long	.LASF393
	.byte	0x93
	.uleb128 0x2
	.long	.LASF394
	.byte	0x94
	.uleb128 0x2
	.long	.LASF395
	.byte	0x95
	.uleb128 0x2
	.long	.LASF396
	.byte	0x96
	.uleb128 0x2
	.long	.LASF397
	.byte	0x97
	.uleb128 0x2
	.long	.LASF398
	.byte	0x98
	.uleb128 0x2
	.long	.LASF399
	.byte	0x99
	.uleb128 0x2
	.long	.LASF400
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF401
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF402
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF403
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF404
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF405
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF406
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF407
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF408
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF409
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF410
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF411
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF412
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF413
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF414
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF415
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF416
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF417
	.byte	0xab
	.uleb128 0x2
	.long	.LASF418
	.byte	0xac
	.uleb128 0x2
	.long	.LASF419
	.byte	0xad
	.uleb128 0x2
	.long	.LASF420
	.byte	0xae
	.uleb128 0x2
	.long	.LASF421
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF422
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF423
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF424
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF425
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF426
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF427
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF428
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF429
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF430
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF431
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF432
	.byte	0xba
	.uleb128 0x2
	.long	.LASF433
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF434
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF435
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF436
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF437
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF438
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF439
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF440
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF441
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF442
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF443
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF444
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF445
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF446
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF447
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF448
	.byte	0xca
	.uleb128 0x2
	.long	.LASF449
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF450
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF451
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF452
	.byte	0xce
	.uleb128 0x2
	.long	.LASF453
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF454
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF455
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF456
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF457
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF458
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF459
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF460
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF461
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF462
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF463
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF464
	.byte	0xda
	.uleb128 0x2
	.long	.LASF465
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF466
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF467
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF468
	.byte	0xde
	.uleb128 0x2
	.long	.LASF469
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF470
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF471
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF472
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF473
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF474
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF475
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF476
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF477
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF478
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF479
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF480
	.byte	0xea
	.uleb128 0x2
	.long	.LASF481
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF482
	.byte	0xec
	.uleb128 0x2
	.long	.LASF483
	.byte	0xed
	.uleb128 0x2
	.long	.LASF484
	.byte	0xee
	.uleb128 0x2
	.long	.LASF485
	.byte	0xef
	.uleb128 0x2
	.long	.LASF486
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF487
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF488
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF489
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF490
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF491
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF492
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF493
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF494
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF495
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF496
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF497
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF498
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF499
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF500
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF501
	.byte	0xff
	.uleb128 0x1
	.long	.LASF502
	.value	0x100
	.uleb128 0x1
	.long	.LASF503
	.value	0x101
	.uleb128 0x1
	.long	.LASF504
	.value	0x102
	.uleb128 0x1
	.long	.LASF505
	.value	0x103
	.uleb128 0x1
	.long	.LASF506
	.value	0x104
	.uleb128 0x1
	.long	.LASF507
	.value	0x105
	.uleb128 0x1
	.long	.LASF508
	.value	0x106
	.uleb128 0x1
	.long	.LASF509
	.value	0x107
	.uleb128 0x1
	.long	.LASF510
	.value	0x108
	.uleb128 0x1
	.long	.LASF511
	.value	0x109
	.uleb128 0x1
	.long	.LASF512
	.value	0x10a
	.uleb128 0x1
	.long	.LASF513
	.value	0x10b
	.uleb128 0x1
	.long	.LASF514
	.value	0x10c
	.uleb128 0x1
	.long	.LASF515
	.value	0x10d
	.uleb128 0x1
	.long	.LASF516
	.value	0x10e
	.uleb128 0x1
	.long	.LASF517
	.value	0x10f
	.uleb128 0x1
	.long	.LASF518
	.value	0x110
	.uleb128 0x1
	.long	.LASF519
	.value	0x111
	.uleb128 0x1
	.long	.LASF520
	.value	0x112
	.uleb128 0x1
	.long	.LASF521
	.value	0x113
	.uleb128 0x1
	.long	.LASF522
	.value	0x114
	.uleb128 0x1
	.long	.LASF523
	.value	0x115
	.uleb128 0x1
	.long	.LASF524
	.value	0x116
	.uleb128 0x1
	.long	.LASF525
	.value	0x117
	.uleb128 0x1
	.long	.LASF526
	.value	0x118
	.uleb128 0x1
	.long	.LASF527
	.value	0x119
	.uleb128 0x1
	.long	.LASF528
	.value	0x11a
	.uleb128 0x1
	.long	.LASF529
	.value	0x11b
	.uleb128 0x1
	.long	.LASF530
	.value	0x11c
	.uleb128 0x1
	.long	.LASF531
	.value	0x11d
	.uleb128 0x1
	.long	.LASF532
	.value	0x11e
	.uleb128 0x1
	.long	.LASF533
	.value	0x11f
	.uleb128 0x1
	.long	.LASF534
	.value	0x120
	.uleb128 0x1
	.long	.LASF535
	.value	0x121
	.uleb128 0x1
	.long	.LASF536
	.value	0x122
	.uleb128 0x1
	.long	.LASF537
	.value	0x123
	.uleb128 0x1
	.long	.LASF538
	.value	0x124
	.uleb128 0x1
	.long	.LASF539
	.value	0x125
	.uleb128 0x1
	.long	.LASF540
	.value	0x126
	.uleb128 0x1
	.long	.LASF541
	.value	0x127
	.uleb128 0x1
	.long	.LASF542
	.value	0x128
	.uleb128 0x1
	.long	.LASF543
	.value	0x129
	.uleb128 0x1
	.long	.LASF544
	.value	0x12a
	.uleb128 0x1
	.long	.LASF545
	.value	0x12b
	.uleb128 0x1
	.long	.LASF546
	.value	0x12c
	.uleb128 0x1
	.long	.LASF547
	.value	0x12d
	.uleb128 0x1
	.long	.LASF548
	.value	0x12e
	.uleb128 0x1
	.long	.LASF549
	.value	0x12f
	.uleb128 0x1
	.long	.LASF550
	.value	0x130
	.uleb128 0x1
	.long	.LASF551
	.value	0x131
	.uleb128 0x1
	.long	.LASF552
	.value	0x132
	.uleb128 0x1
	.long	.LASF553
	.value	0x133
	.uleb128 0x1
	.long	.LASF554
	.value	0x134
	.uleb128 0x1
	.long	.LASF555
	.value	0x135
	.uleb128 0x1
	.long	.LASF556
	.value	0x136
	.uleb128 0x1
	.long	.LASF557
	.value	0x137
	.uleb128 0x1
	.long	.LASF558
	.value	0x138
	.uleb128 0x1
	.long	.LASF559
	.value	0x139
	.uleb128 0x1
	.long	.LASF560
	.value	0x13a
	.uleb128 0x1
	.long	.LASF561
	.value	0x13b
	.uleb128 0x1
	.long	.LASF562
	.value	0x13c
	.uleb128 0x1
	.long	.LASF563
	.value	0x13d
	.uleb128 0x1
	.long	.LASF564
	.value	0x13e
	.uleb128 0x1
	.long	.LASF565
	.value	0x13f
	.uleb128 0x1
	.long	.LASF566
	.value	0x140
	.uleb128 0x1
	.long	.LASF567
	.value	0x141
	.uleb128 0x1
	.long	.LASF568
	.value	0x142
	.uleb128 0x1
	.long	.LASF569
	.value	0x143
	.uleb128 0x1
	.long	.LASF570
	.value	0x144
	.uleb128 0x1
	.long	.LASF571
	.value	0x145
	.uleb128 0x1
	.long	.LASF572
	.value	0x146
	.uleb128 0x1
	.long	.LASF573
	.value	0x147
	.uleb128 0x1
	.long	.LASF574
	.value	0x148
	.uleb128 0x1
	.long	.LASF575
	.value	0x149
	.uleb128 0x1
	.long	.LASF576
	.value	0x14a
	.uleb128 0x1
	.long	.LASF577
	.value	0x14b
	.uleb128 0x1
	.long	.LASF578
	.value	0x14c
	.uleb128 0x1
	.long	.LASF579
	.value	0x14d
	.uleb128 0x1
	.long	.LASF580
	.value	0x14e
	.uleb128 0x1
	.long	.LASF581
	.value	0x14f
	.uleb128 0x1
	.long	.LASF582
	.value	0x150
	.uleb128 0x1
	.long	.LASF583
	.value	0x151
	.uleb128 0x1
	.long	.LASF584
	.value	0x152
	.uleb128 0x1
	.long	.LASF585
	.value	0x153
	.uleb128 0x1
	.long	.LASF586
	.value	0x154
	.uleb128 0x1
	.long	.LASF587
	.value	0x155
	.uleb128 0x1
	.long	.LASF588
	.value	0x156
	.uleb128 0x1
	.long	.LASF589
	.value	0x157
	.uleb128 0x1
	.long	.LASF590
	.value	0x158
	.uleb128 0x1
	.long	.LASF591
	.value	0x159
	.uleb128 0x1
	.long	.LASF592
	.value	0x15a
	.uleb128 0x1
	.long	.LASF593
	.value	0x15b
	.uleb128 0x1
	.long	.LASF594
	.value	0x15c
	.uleb128 0x1
	.long	.LASF595
	.value	0x15d
	.uleb128 0x1
	.long	.LASF596
	.value	0x15e
	.uleb128 0x1
	.long	.LASF597
	.value	0x15f
	.uleb128 0x1
	.long	.LASF598
	.value	0x160
	.uleb128 0x1
	.long	.LASF599
	.value	0x161
	.uleb128 0x1
	.long	.LASF600
	.value	0x162
	.uleb128 0x1
	.long	.LASF601
	.value	0x163
	.uleb128 0x1
	.long	.LASF602
	.value	0x164
	.uleb128 0x1
	.long	.LASF603
	.value	0x165
	.uleb128 0x1
	.long	.LASF604
	.value	0x166
	.uleb128 0x1
	.long	.LASF605
	.value	0x167
	.uleb128 0x1
	.long	.LASF606
	.value	0x168
	.uleb128 0x1
	.long	.LASF607
	.value	0x169
	.uleb128 0x1
	.long	.LASF608
	.value	0x16a
	.uleb128 0x1
	.long	.LASF609
	.value	0x16b
	.uleb128 0x1
	.long	.LASF610
	.value	0x16c
	.uleb128 0x1
	.long	.LASF611
	.value	0x16d
	.uleb128 0x1
	.long	.LASF612
	.value	0x16e
	.uleb128 0x1
	.long	.LASF613
	.value	0x16f
	.uleb128 0x1
	.long	.LASF614
	.value	0x170
	.uleb128 0x1
	.long	.LASF615
	.value	0x171
	.uleb128 0x1
	.long	.LASF616
	.value	0x172
	.uleb128 0x1
	.long	.LASF617
	.value	0x173
	.uleb128 0x1
	.long	.LASF618
	.value	0x174
	.uleb128 0x1
	.long	.LASF619
	.value	0x175
	.uleb128 0x1
	.long	.LASF620
	.value	0x176
	.uleb128 0x1
	.long	.LASF621
	.value	0x177
	.uleb128 0x1
	.long	.LASF622
	.value	0x178
	.uleb128 0x1
	.long	.LASF623
	.value	0x179
	.uleb128 0x1
	.long	.LASF624
	.value	0x17a
	.uleb128 0x1
	.long	.LASF625
	.value	0x17b
	.uleb128 0x1
	.long	.LASF626
	.value	0x17c
	.uleb128 0x1
	.long	.LASF627
	.value	0x17d
	.uleb128 0x1
	.long	.LASF628
	.value	0x17e
	.uleb128 0x1
	.long	.LASF629
	.value	0x17f
	.uleb128 0x1
	.long	.LASF630
	.value	0x180
	.uleb128 0x1
	.long	.LASF631
	.value	0x181
	.uleb128 0x1
	.long	.LASF632
	.value	0x182
	.uleb128 0x1
	.long	.LASF633
	.value	0x183
	.uleb128 0x1
	.long	.LASF634
	.value	0x184
	.uleb128 0x1
	.long	.LASF635
	.value	0x185
	.uleb128 0x1
	.long	.LASF636
	.value	0x186
	.uleb128 0x1
	.long	.LASF637
	.value	0x187
	.uleb128 0x1
	.long	.LASF638
	.value	0x188
	.uleb128 0x1
	.long	.LASF639
	.value	0x189
	.uleb128 0x1
	.long	.LASF640
	.value	0x18a
	.uleb128 0x1
	.long	.LASF641
	.value	0x18b
	.uleb128 0x1
	.long	.LASF642
	.value	0x18c
	.uleb128 0x1
	.long	.LASF643
	.value	0x18d
	.uleb128 0x1
	.long	.LASF644
	.value	0x18e
	.uleb128 0x1
	.long	.LASF645
	.value	0x18f
	.uleb128 0x1
	.long	.LASF646
	.value	0x190
	.uleb128 0x1
	.long	.LASF647
	.value	0x191
	.uleb128 0x1
	.long	.LASF648
	.value	0x192
	.uleb128 0x1
	.long	.LASF649
	.value	0x193
	.uleb128 0x1
	.long	.LASF650
	.value	0x194
	.uleb128 0x1
	.long	.LASF651
	.value	0x195
	.uleb128 0x1
	.long	.LASF652
	.value	0x196
	.uleb128 0x1
	.long	.LASF653
	.value	0x197
	.uleb128 0x1
	.long	.LASF654
	.value	0x198
	.uleb128 0x1
	.long	.LASF655
	.value	0x199
	.uleb128 0x1
	.long	.LASF656
	.value	0x19a
	.uleb128 0x1
	.long	.LASF657
	.value	0x19b
	.uleb128 0x1
	.long	.LASF658
	.value	0x19c
	.uleb128 0x1
	.long	.LASF659
	.value	0x19d
	.uleb128 0x1
	.long	.LASF660
	.value	0x19e
	.uleb128 0x1
	.long	.LASF661
	.value	0x19f
	.uleb128 0x1
	.long	.LASF662
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF663
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF664
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF665
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF666
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF667
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF668
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF669
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF670
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF671
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF672
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF673
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF674
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF675
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF676
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF677
	.value	0x1af
	.uleb128 0x1
	.long	.LASF678
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF679
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF680
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF681
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF682
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF683
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF684
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF685
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF686
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF687
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF688
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF689
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF690
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF691
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF692
	.value	0x1be
	.uleb128 0x1
	.long	.LASF693
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF694
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF695
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF696
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF697
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF698
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF699
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF700
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF701
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF702
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF703
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF704
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF705
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF706
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF707
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF708
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF709
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF710
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF711
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF712
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF713
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF714
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF715
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF716
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF717
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF718
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF719
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF720
	.value	0x1da
	.uleb128 0x1
	.long	.LASF721
	.value	0x1db
	.uleb128 0x1
	.long	.LASF722
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF723
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF724
	.value	0x1de
	.uleb128 0x1
	.long	.LASF725
	.value	0x1df
	.uleb128 0x1
	.long	.LASF726
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF727
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF728
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF729
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF730
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF731
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF732
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF733
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF734
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF735
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF736
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF737
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF738
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF739
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF740
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF741
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF742
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF743
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF744
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF745
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF746
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF747
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF748
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF749
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF750
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF751
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF752
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF753
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF754
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF755
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF756
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF757
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF758
	.value	0x200
	.uleb128 0x1
	.long	.LASF759
	.value	0x201
	.uleb128 0x1
	.long	.LASF760
	.value	0x202
	.uleb128 0x1
	.long	.LASF761
	.value	0x203
	.uleb128 0x1
	.long	.LASF762
	.value	0x204
	.uleb128 0x1
	.long	.LASF763
	.value	0x205
	.uleb128 0x1
	.long	.LASF764
	.value	0x206
	.uleb128 0x1
	.long	.LASF765
	.value	0x207
	.uleb128 0x1
	.long	.LASF766
	.value	0x208
	.uleb128 0x1
	.long	.LASF767
	.value	0x209
	.uleb128 0x1
	.long	.LASF768
	.value	0x20a
	.uleb128 0x1
	.long	.LASF769
	.value	0x20b
	.uleb128 0x1
	.long	.LASF770
	.value	0x20c
	.uleb128 0x1
	.long	.LASF771
	.value	0x20d
	.uleb128 0x1
	.long	.LASF772
	.value	0x20e
	.uleb128 0x1
	.long	.LASF773
	.value	0x20f
	.uleb128 0x1
	.long	.LASF774
	.value	0x210
	.uleb128 0x1
	.long	.LASF775
	.value	0x211
	.uleb128 0x1
	.long	.LASF776
	.value	0x212
	.uleb128 0x1
	.long	.LASF777
	.value	0x213
	.uleb128 0x1
	.long	.LASF778
	.value	0x214
	.uleb128 0x1
	.long	.LASF779
	.value	0x215
	.uleb128 0x1
	.long	.LASF780
	.value	0x216
	.uleb128 0x1
	.long	.LASF781
	.value	0x217
	.uleb128 0x1
	.long	.LASF782
	.value	0x218
	.uleb128 0x1
	.long	.LASF783
	.value	0x219
	.uleb128 0x1
	.long	.LASF784
	.value	0x21a
	.uleb128 0x1
	.long	.LASF785
	.value	0x21b
	.uleb128 0x1
	.long	.LASF786
	.value	0x21c
	.uleb128 0x1
	.long	.LASF787
	.value	0x21d
	.uleb128 0x1
	.long	.LASF788
	.value	0x21e
	.uleb128 0x1
	.long	.LASF789
	.value	0x21f
	.uleb128 0x1
	.long	.LASF790
	.value	0x220
	.uleb128 0x1
	.long	.LASF791
	.value	0x221
	.uleb128 0x1
	.long	.LASF792
	.value	0x222
	.uleb128 0x1
	.long	.LASF793
	.value	0x223
	.uleb128 0x1
	.long	.LASF794
	.value	0x224
	.uleb128 0x1
	.long	.LASF795
	.value	0x225
	.uleb128 0x1
	.long	.LASF796
	.value	0x226
	.uleb128 0x1
	.long	.LASF797
	.value	0x227
	.uleb128 0x1
	.long	.LASF798
	.value	0x228
	.uleb128 0x1
	.long	.LASF799
	.value	0x229
	.uleb128 0x1
	.long	.LASF800
	.value	0x22a
	.uleb128 0x1
	.long	.LASF801
	.value	0x22b
	.uleb128 0x1
	.long	.LASF802
	.value	0x22c
	.uleb128 0x1
	.long	.LASF803
	.value	0x22d
	.uleb128 0x1
	.long	.LASF804
	.value	0x22e
	.uleb128 0x1
	.long	.LASF805
	.value	0x22f
	.uleb128 0x1
	.long	.LASF806
	.value	0x230
	.uleb128 0x1
	.long	.LASF807
	.value	0x231
	.uleb128 0x1
	.long	.LASF808
	.value	0x232
	.uleb128 0x1
	.long	.LASF809
	.value	0x233
	.uleb128 0x1
	.long	.LASF810
	.value	0x234
	.uleb128 0x1
	.long	.LASF811
	.value	0x235
	.uleb128 0x1
	.long	.LASF812
	.value	0x236
	.uleb128 0x1
	.long	.LASF813
	.value	0x237
	.uleb128 0x1
	.long	.LASF814
	.value	0x238
	.uleb128 0x1
	.long	.LASF815
	.value	0x239
	.uleb128 0x1
	.long	.LASF816
	.value	0x23a
	.uleb128 0x1
	.long	.LASF817
	.value	0x23b
	.uleb128 0x1
	.long	.LASF818
	.value	0x23c
	.uleb128 0x1
	.long	.LASF819
	.value	0x23d
	.uleb128 0x1
	.long	.LASF820
	.value	0x23e
	.uleb128 0x1
	.long	.LASF821
	.value	0x23f
	.uleb128 0x1
	.long	.LASF822
	.value	0x240
	.uleb128 0x1
	.long	.LASF823
	.value	0x241
	.uleb128 0x1
	.long	.LASF824
	.value	0x242
	.uleb128 0x1
	.long	.LASF825
	.value	0x243
	.uleb128 0x1
	.long	.LASF826
	.value	0x244
	.uleb128 0x1
	.long	.LASF827
	.value	0x245
	.uleb128 0x1
	.long	.LASF828
	.value	0x246
	.uleb128 0x1
	.long	.LASF829
	.value	0x247
	.uleb128 0x1
	.long	.LASF830
	.value	0x248
	.uleb128 0x1
	.long	.LASF831
	.value	0x249
	.uleb128 0x1
	.long	.LASF832
	.value	0x24a
	.uleb128 0x1
	.long	.LASF833
	.value	0x24b
	.uleb128 0x1
	.long	.LASF834
	.value	0x24c
	.uleb128 0x1
	.long	.LASF835
	.value	0x24d
	.uleb128 0x1
	.long	.LASF836
	.value	0x24e
	.uleb128 0x1
	.long	.LASF837
	.value	0x24f
	.uleb128 0x1
	.long	.LASF838
	.value	0x250
	.uleb128 0x1
	.long	.LASF839
	.value	0x251
	.uleb128 0x1
	.long	.LASF840
	.value	0x252
	.uleb128 0x1
	.long	.LASF841
	.value	0x253
	.uleb128 0x1
	.long	.LASF842
	.value	0x254
	.uleb128 0x1
	.long	.LASF843
	.value	0x255
	.uleb128 0x1
	.long	.LASF844
	.value	0x256
	.uleb128 0x1
	.long	.LASF845
	.value	0x257
	.uleb128 0x1
	.long	.LASF846
	.value	0x258
	.uleb128 0x1
	.long	.LASF847
	.value	0x259
	.uleb128 0x1
	.long	.LASF848
	.value	0x25a
	.uleb128 0x1
	.long	.LASF849
	.value	0x25b
	.uleb128 0x1
	.long	.LASF850
	.value	0x25c
	.uleb128 0x1
	.long	.LASF851
	.value	0x25d
	.uleb128 0x1
	.long	.LASF852
	.value	0x25e
	.uleb128 0x1
	.long	.LASF853
	.value	0x25f
	.uleb128 0x1
	.long	.LASF854
	.value	0x260
	.uleb128 0x1
	.long	.LASF855
	.value	0x261
	.uleb128 0x1
	.long	.LASF856
	.value	0x262
	.uleb128 0x1
	.long	.LASF857
	.value	0x263
	.uleb128 0x1
	.long	.LASF858
	.value	0x264
	.uleb128 0x1
	.long	.LASF859
	.value	0x265
	.uleb128 0x1
	.long	.LASF860
	.value	0x266
	.uleb128 0x1
	.long	.LASF861
	.value	0x267
	.uleb128 0x1
	.long	.LASF862
	.value	0x268
	.uleb128 0x1
	.long	.LASF863
	.value	0x269
	.uleb128 0x1
	.long	.LASF864
	.value	0x26a
	.uleb128 0x1
	.long	.LASF865
	.value	0x26b
	.uleb128 0x1
	.long	.LASF866
	.value	0x26c
	.uleb128 0x1
	.long	.LASF867
	.value	0x26d
	.uleb128 0x1
	.long	.LASF868
	.value	0x26e
	.uleb128 0x1
	.long	.LASF869
	.value	0x26f
	.uleb128 0x1
	.long	.LASF870
	.value	0x270
	.uleb128 0x1
	.long	.LASF871
	.value	0x271
	.uleb128 0x1
	.long	.LASF872
	.value	0x272
	.uleb128 0x1
	.long	.LASF873
	.value	0x273
	.uleb128 0x1
	.long	.LASF874
	.value	0x274
	.uleb128 0x1
	.long	.LASF875
	.value	0x275
	.uleb128 0x1
	.long	.LASF876
	.value	0x276
	.uleb128 0x1
	.long	.LASF877
	.value	0x277
	.uleb128 0x1
	.long	.LASF878
	.value	0x278
	.uleb128 0x1
	.long	.LASF879
	.value	0x279
	.uleb128 0x1
	.long	.LASF880
	.value	0x27a
	.uleb128 0x1
	.long	.LASF881
	.value	0x27b
	.uleb128 0x1
	.long	.LASF882
	.value	0x27c
	.uleb128 0x1
	.long	.LASF883
	.value	0x27d
	.uleb128 0x1
	.long	.LASF884
	.value	0x27e
	.uleb128 0x1
	.long	.LASF885
	.value	0x27f
	.uleb128 0x1
	.long	.LASF886
	.value	0x280
	.uleb128 0x1
	.long	.LASF887
	.value	0x281
	.uleb128 0x1
	.long	.LASF888
	.value	0x282
	.uleb128 0x1
	.long	.LASF889
	.value	0x283
	.uleb128 0x1
	.long	.LASF890
	.value	0x284
	.uleb128 0x1
	.long	.LASF891
	.value	0x285
	.uleb128 0x1
	.long	.LASF892
	.value	0x286
	.uleb128 0x1
	.long	.LASF893
	.value	0x287
	.uleb128 0x1
	.long	.LASF894
	.value	0x288
	.uleb128 0x1
	.long	.LASF895
	.value	0x289
	.uleb128 0x1
	.long	.LASF896
	.value	0x28a
	.uleb128 0x1
	.long	.LASF897
	.value	0x28b
	.uleb128 0x1
	.long	.LASF898
	.value	0x28c
	.uleb128 0x1
	.long	.LASF899
	.value	0x28d
	.uleb128 0x1
	.long	.LASF900
	.value	0x28e
	.uleb128 0x1
	.long	.LASF901
	.value	0x28f
	.uleb128 0x1
	.long	.LASF902
	.value	0x290
	.uleb128 0x1
	.long	.LASF903
	.value	0x291
	.uleb128 0x1
	.long	.LASF904
	.value	0x292
	.uleb128 0x1
	.long	.LASF905
	.value	0x293
	.uleb128 0x1
	.long	.LASF906
	.value	0x294
	.uleb128 0x1
	.long	.LASF907
	.value	0x295
	.uleb128 0x1
	.long	.LASF908
	.value	0x296
	.uleb128 0x1
	.long	.LASF909
	.value	0x297
	.uleb128 0x1
	.long	.LASF910
	.value	0x298
	.uleb128 0x1
	.long	.LASF911
	.value	0x299
	.uleb128 0x1
	.long	.LASF912
	.value	0x29a
	.uleb128 0x1
	.long	.LASF913
	.value	0x29b
	.uleb128 0x1
	.long	.LASF914
	.value	0x29c
	.uleb128 0x1
	.long	.LASF915
	.value	0x29d
	.uleb128 0x1
	.long	.LASF916
	.value	0x29e
	.uleb128 0x1
	.long	.LASF917
	.value	0x29f
	.uleb128 0x1
	.long	.LASF918
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF919
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF920
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF921
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF922
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF923
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF924
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF925
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF926
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF927
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF928
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF929
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF930
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF931
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF932
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF933
	.value	0x2af
	.uleb128 0x1
	.long	.LASF934
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF935
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF936
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF937
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF938
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF939
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF940
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF941
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF942
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF943
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF944
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF945
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF946
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF947
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF948
	.value	0x2be
	.uleb128 0x1
	.long	.LASF949
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF950
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF951
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF952
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF953
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF954
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF955
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF956
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF957
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF958
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF959
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF960
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF961
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF962
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF963
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF964
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF965
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF966
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF967
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF968
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF969
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF970
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF971
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF972
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF973
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF974
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF975
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF976
	.value	0x2da
	.uleb128 0x1
	.long	.LASF977
	.value	0x2db
	.uleb128 0x1
	.long	.LASF978
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF979
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF980
	.value	0x2de
	.uleb128 0x1
	.long	.LASF981
	.value	0x2df
	.uleb128 0x1
	.long	.LASF982
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF983
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF984
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF985
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF986
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF987
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF988
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF989
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF990
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF991
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF992
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF993
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF994
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF995
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF996
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF997
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF998
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF999
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1008
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1009
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1010
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1011
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1012
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1013
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1014
	.value	0x300
	.uleb128 0x1
	.long	.LASF1015
	.value	0x301
	.uleb128 0x1
	.long	.LASF1016
	.value	0x302
	.uleb128 0x1
	.long	.LASF1017
	.value	0x303
	.uleb128 0x1
	.long	.LASF1018
	.value	0x304
	.uleb128 0x1
	.long	.LASF1019
	.value	0x305
	.uleb128 0x1
	.long	.LASF1020
	.value	0x306
	.uleb128 0x1
	.long	.LASF1021
	.value	0x307
	.uleb128 0x1
	.long	.LASF1022
	.value	0x308
	.uleb128 0x1
	.long	.LASF1023
	.value	0x309
	.uleb128 0x1
	.long	.LASF1024
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1025
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1026
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1027
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1028
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1029
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1030
	.value	0x310
	.uleb128 0x1
	.long	.LASF1031
	.value	0x311
	.uleb128 0x1
	.long	.LASF1032
	.value	0x312
	.uleb128 0x1
	.long	.LASF1033
	.value	0x313
	.uleb128 0x1
	.long	.LASF1034
	.value	0x314
	.uleb128 0x1
	.long	.LASF1035
	.value	0x315
	.uleb128 0x1
	.long	.LASF1036
	.value	0x316
	.uleb128 0x1
	.long	.LASF1037
	.value	0x317
	.uleb128 0x1
	.long	.LASF1038
	.value	0x318
	.uleb128 0x1
	.long	.LASF1039
	.value	0x319
	.uleb128 0x1
	.long	.LASF1040
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1041
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1042
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1043
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1044
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1045
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1046
	.value	0x320
	.uleb128 0x1
	.long	.LASF1047
	.value	0x321
	.uleb128 0x1
	.long	.LASF1048
	.value	0x322
	.uleb128 0x1
	.long	.LASF1049
	.value	0x323
	.uleb128 0x1
	.long	.LASF1050
	.value	0x324
	.uleb128 0x1
	.long	.LASF1051
	.value	0x325
	.uleb128 0x1
	.long	.LASF1052
	.value	0x326
	.uleb128 0x1
	.long	.LASF1053
	.value	0x327
	.uleb128 0x1
	.long	.LASF1054
	.value	0x328
	.uleb128 0x1
	.long	.LASF1055
	.value	0x329
	.uleb128 0x1
	.long	.LASF1056
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1057
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1058
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1059
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1060
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1061
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1062
	.value	0x330
	.uleb128 0x1
	.long	.LASF1063
	.value	0x331
	.uleb128 0x1
	.long	.LASF1064
	.value	0x332
	.uleb128 0x1
	.long	.LASF1065
	.value	0x333
	.uleb128 0x1
	.long	.LASF1066
	.value	0x334
	.uleb128 0x1
	.long	.LASF1067
	.value	0x335
	.uleb128 0x1
	.long	.LASF1068
	.value	0x336
	.uleb128 0x1
	.long	.LASF1069
	.value	0x337
	.uleb128 0x1
	.long	.LASF1070
	.value	0x338
	.uleb128 0x1
	.long	.LASF1071
	.value	0x339
	.uleb128 0x1
	.long	.LASF1072
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1073
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1074
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1075
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1076
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1077
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1078
	.value	0x340
	.uleb128 0x1
	.long	.LASF1079
	.value	0x341
	.uleb128 0x1
	.long	.LASF1080
	.value	0x342
	.uleb128 0x1
	.long	.LASF1081
	.value	0x343
	.uleb128 0x1
	.long	.LASF1082
	.value	0x344
	.uleb128 0x1
	.long	.LASF1083
	.value	0x345
	.uleb128 0x1
	.long	.LASF1084
	.value	0x346
	.uleb128 0x1
	.long	.LASF1085
	.value	0x347
	.uleb128 0x1
	.long	.LASF1086
	.value	0x348
	.uleb128 0x1
	.long	.LASF1087
	.value	0x349
	.uleb128 0x1
	.long	.LASF1088
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1089
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1090
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1091
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1092
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1093
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1094
	.value	0x350
	.uleb128 0x1
	.long	.LASF1095
	.value	0x351
	.uleb128 0x1
	.long	.LASF1096
	.value	0x352
	.uleb128 0x1
	.long	.LASF1097
	.value	0x353
	.uleb128 0x1
	.long	.LASF1098
	.value	0x354
	.uleb128 0x1
	.long	.LASF1099
	.value	0x355
	.uleb128 0x1
	.long	.LASF1100
	.value	0x356
	.uleb128 0x1
	.long	.LASF1101
	.value	0x357
	.uleb128 0x1
	.long	.LASF1102
	.value	0x358
	.uleb128 0x1
	.long	.LASF1103
	.value	0x359
	.uleb128 0x1
	.long	.LASF1104
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1105
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1106
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1107
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1108
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1109
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1110
	.value	0x360
	.uleb128 0x1
	.long	.LASF1111
	.value	0x361
	.uleb128 0x1
	.long	.LASF1112
	.value	0x362
	.uleb128 0x1
	.long	.LASF1113
	.value	0x363
	.uleb128 0x1
	.long	.LASF1114
	.value	0x364
	.uleb128 0x1
	.long	.LASF1115
	.value	0x365
	.uleb128 0x1
	.long	.LASF1116
	.value	0x366
	.uleb128 0x1
	.long	.LASF1117
	.value	0x367
	.uleb128 0x1
	.long	.LASF1118
	.value	0x368
	.uleb128 0x1
	.long	.LASF1119
	.value	0x369
	.uleb128 0x1
	.long	.LASF1120
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1121
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1122
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1123
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1124
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1125
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1126
	.value	0x370
	.uleb128 0x1
	.long	.LASF1127
	.value	0x371
	.uleb128 0x1
	.long	.LASF1128
	.value	0x372
	.uleb128 0x1
	.long	.LASF1129
	.value	0x373
	.uleb128 0x1
	.long	.LASF1130
	.value	0x374
	.uleb128 0x1
	.long	.LASF1131
	.value	0x375
	.uleb128 0x1
	.long	.LASF1132
	.value	0x376
	.uleb128 0x1
	.long	.LASF1133
	.value	0x377
	.uleb128 0x1
	.long	.LASF1134
	.value	0x378
	.uleb128 0x1
	.long	.LASF1135
	.value	0x379
	.uleb128 0x1
	.long	.LASF1136
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1137
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1138
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1139
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1140
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1141
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1142
	.value	0x380
	.uleb128 0x1
	.long	.LASF1143
	.value	0x381
	.uleb128 0x1
	.long	.LASF1144
	.value	0x382
	.uleb128 0x1
	.long	.LASF1145
	.value	0x383
	.uleb128 0x1
	.long	.LASF1146
	.value	0x384
	.uleb128 0x1
	.long	.LASF1147
	.value	0x385
	.uleb128 0x1
	.long	.LASF1148
	.value	0x386
	.uleb128 0x1
	.long	.LASF1149
	.value	0x387
	.uleb128 0x1
	.long	.LASF1150
	.value	0x388
	.uleb128 0x1
	.long	.LASF1151
	.value	0x389
	.uleb128 0x1
	.long	.LASF1152
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1153
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1154
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1155
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1156
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1157
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1158
	.value	0x390
	.uleb128 0x1
	.long	.LASF1159
	.value	0x391
	.uleb128 0x1
	.long	.LASF1160
	.value	0x392
	.uleb128 0x1
	.long	.LASF1161
	.value	0x393
	.uleb128 0x1
	.long	.LASF1162
	.value	0x394
	.uleb128 0x1
	.long	.LASF1163
	.value	0x395
	.uleb128 0x1
	.long	.LASF1164
	.value	0x396
	.uleb128 0x1
	.long	.LASF1165
	.value	0x397
	.uleb128 0x1
	.long	.LASF1166
	.value	0x398
	.uleb128 0x1
	.long	.LASF1167
	.value	0x399
	.uleb128 0x1
	.long	.LASF1168
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1169
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1170
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1171
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1172
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1173
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1189
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1190
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1191
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1192
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1193
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1194
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1195
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1196
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1197
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1198
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1199
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1200
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1201
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1202
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1203
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1204
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1205
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1206
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1207
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1208
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1209
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1210
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1211
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1212
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1213
	.value	0x3c7
	.byte	0
	.uleb128 0x16
	.long	.LASF1214
	.byte	0xc
	.value	0x478
	.long	0x8aa
	.uleb128 0x19
	.byte	0x38
	.byte	0xc
	.value	0x47b
	.long	0x22a7
	.uleb128 0x6
	.long	.LASF1215
	.byte	0xc
	.value	0x47d
	.byte	0xf
	.long	0x89e
	.byte	0
	.uleb128 0x6
	.long	.LASF1216
	.byte	0xc
	.value	0x47e
	.byte	0xa
	.long	0x98
	.byte	0x8
	.uleb128 0x6
	.long	.LASF1217
	.byte	0xc
	.value	0x47f
	.byte	0xa
	.long	0x98
	.byte	0x10
	.uleb128 0x6
	.long	.LASF1218
	.byte	0xc
	.value	0x481
	.byte	0xf
	.long	0x476
	.byte	0x18
	.uleb128 0x6
	.long	.LASF1219
	.byte	0xc
	.value	0x482
	.byte	0x10
	.long	0x222f
	.byte	0x20
	.uleb128 0x6
	.long	.LASF1220
	.byte	0xc
	.value	0x483
	.byte	0xa
	.long	0x98
	.byte	0x28
	.uleb128 0x6
	.long	.LASF1221
	.byte	0xc
	.value	0x483
	.byte	0x11
	.long	0x98
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF1222
	.byte	0xc
	.value	0x484
	.long	0x223b
	.uleb128 0x27
	.byte	0x7
	.byte	0x4
	.long	0x6c
	.byte	0xc
	.value	0x48b
	.byte	0xe
	.long	0x25ff
	.uleb128 0x2
	.long	.LASF1223
	.byte	0
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1233
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1234
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1235
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1236
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1237
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1238
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x89
	.byte	0
	.uleb128 0x16
	.long	.LASF1361
	.byte	0xc
	.value	0x517
	.long	0x22b3
	.uleb128 0x19
	.byte	0x5c
	.byte	0xc
	.value	0x519
	.long	0x2757
	.uleb128 0x6
	.long	.LASF1362
	.byte	0xc
	.value	0x51b
	.byte	0x9
	.long	0x91
	.byte	0
	.uleb128 0x6
	.long	.LASF1363
	.byte	0xc
	.value	0x51c
	.byte	0x9
	.long	0x91
	.byte	0x4
	.uleb128 0x6
	.long	.LASF1364
	.byte	0xc
	.value	0x51d
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x6
	.long	.LASF1365
	.byte	0xc
	.value	0x51e
	.byte	0x9
	.long	0x91
	.byte	0xc
	.uleb128 0x6
	.long	.LASF1366
	.byte	0xc
	.value	0x51f
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0x6
	.long	.LASF1367
	.byte	0xc
	.value	0x520
	.byte	0x9
	.long	0x91
	.byte	0x14
	.uleb128 0x6
	.long	.LASF1368
	.byte	0xc
	.value	0x521
	.byte	0x9
	.long	0x91
	.byte	0x18
	.uleb128 0x6
	.long	.LASF1369
	.byte	0xc
	.value	0x522
	.byte	0x9
	.long	0x91
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF1370
	.byte	0xc
	.value	0x523
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0x6
	.long	.LASF1371
	.byte	0xc
	.value	0x524
	.byte	0x9
	.long	0x91
	.byte	0x24
	.uleb128 0x6
	.long	.LASF1372
	.byte	0xc
	.value	0x525
	.byte	0x9
	.long	0x91
	.byte	0x28
	.uleb128 0x6
	.long	.LASF1373
	.byte	0xc
	.value	0x526
	.byte	0x9
	.long	0x91
	.byte	0x2c
	.uleb128 0x6
	.long	.LASF1374
	.byte	0xc
	.value	0x527
	.byte	0x9
	.long	0x91
	.byte	0x30
	.uleb128 0x6
	.long	.LASF1375
	.byte	0xc
	.value	0x528
	.byte	0x9
	.long	0x91
	.byte	0x34
	.uleb128 0x6
	.long	.LASF1376
	.byte	0xc
	.value	0x529
	.byte	0x9
	.long	0x91
	.byte	0x38
	.uleb128 0x6
	.long	.LASF1377
	.byte	0xc
	.value	0x52a
	.byte	0x9
	.long	0x91
	.byte	0x3c
	.uleb128 0x6
	.long	.LASF1378
	.byte	0xc
	.value	0x52b
	.byte	0x9
	.long	0x91
	.byte	0x40
	.uleb128 0x6
	.long	.LASF1379
	.byte	0xc
	.value	0x52c
	.byte	0x9
	.long	0x91
	.byte	0x44
	.uleb128 0x6
	.long	.LASF1380
	.byte	0xc
	.value	0x52d
	.byte	0x9
	.long	0x91
	.byte	0x48
	.uleb128 0x6
	.long	.LASF1381
	.byte	0xc
	.value	0x52e
	.byte	0x9
	.long	0x91
	.byte	0x4c
	.uleb128 0x6
	.long	.LASF1382
	.byte	0xc
	.value	0x52f
	.byte	0x9
	.long	0x91
	.byte	0x50
	.uleb128 0x6
	.long	.LASF1383
	.byte	0xc
	.value	0x530
	.byte	0x9
	.long	0x91
	.byte	0x54
	.uleb128 0x6
	.long	.LASF1384
	.byte	0xc
	.value	0x531
	.byte	0x9
	.long	0x91
	.byte	0x58
	.byte	0
	.uleb128 0x16
	.long	.LASF1385
	.byte	0xc
	.value	0x533
	.long	0x260b
	.uleb128 0x17
	.long	.LASF1386
	.byte	0xe0
	.byte	0xd
	.byte	0xcf
	.long	0x293a
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xd
	.byte	0xd2
	.byte	0x10
	.long	0x4c7
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xd
	.byte	0xd5
	.byte	0xe
	.long	0x3eb
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xd
	.byte	0xd6
	.byte	0xe
	.long	0x3eb
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xd
	.byte	0xd7
	.byte	0xe
	.long	0x3eb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xd
	.byte	0xda
	.byte	0x14
	.long	0x293a
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xd
	.byte	0xdb
	.byte	0x14
	.long	0x293a
	.byte	0x30
	.uleb128 0x3
	.long	.LASF103
	.byte	0xd
	.byte	0xde
	.byte	0xe
	.long	0x4e1
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1215
	.byte	0xd
	.byte	0xdf
	.byte	0x12
	.long	0x89e
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1216
	.byte	0xd
	.byte	0xe0
	.byte	0xb
	.long	0x91
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xd
	.byte	0xe4
	.byte	0x14
	.long	0x293a
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xd
	.byte	0xe5
	.byte	0x14
	.long	0x293a
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xd
	.byte	0xe7
	.byte	0x19
	.long	0x2973
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xd
	.byte	0xea
	.byte	0xe
	.long	0x3eb
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xd
	.byte	0xeb
	.byte	0xe
	.long	0x3eb
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xd
	.byte	0xee
	.byte	0xe
	.long	0x3eb
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xd
	.byte	0xef
	.byte	0xe
	.long	0x3eb
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xd
	.byte	0xf2
	.byte	0xe
	.long	0x3eb
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xd
	.byte	0xf3
	.byte	0xe
	.long	0x3eb
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xd
	.byte	0xf4
	.byte	0xe
	.long	0x3eb
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xd
	.byte	0xf7
	.byte	0xb
	.long	0x91
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF26
	.byte	0xd
	.byte	0xf9
	.byte	0x11
	.long	0x25ff
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xd
	.byte	0xfa
	.byte	0x12
	.long	0x2978
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1217
	.byte	0xd
	.byte	0xfc
	.byte	0xb
	.long	0x91
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xd
	.byte	0xfd
	.byte	0xf
	.long	0x297d
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xd
	.byte	0xfe
	.byte	0xb
	.long	0x91
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xd
	.byte	0xff
	.byte	0xb
	.long	0x91
	.byte	0xa4
	.uleb128 0x6
	.long	.LASF1402
	.byte	0xd
	.value	0x102
	.byte	0xb
	.long	0x91
	.byte	0xa8
	.uleb128 0x6
	.long	.LASF1403
	.byte	0xd
	.value	0x103
	.byte	0xb
	.long	0x91
	.byte	0xac
	.uleb128 0x6
	.long	.LASF1404
	.byte	0xd
	.value	0x107
	.byte	0x14
	.long	0x293a
	.byte	0xb0
	.uleb128 0x6
	.long	.LASF1367
	.byte	0xd
	.value	0x10b
	.byte	0xb
	.long	0x91
	.byte	0xb8
	.uleb128 0x6
	.long	.LASF1405
	.byte	0xd
	.value	0x10f
	.byte	0xb
	.long	0x91
	.byte	0xbc
	.uleb128 0x6
	.long	.LASF1406
	.byte	0xd
	.value	0x113
	.byte	0x16
	.long	0x2b57
	.byte	0xc0
	.uleb128 0x6
	.long	.LASF1407
	.byte	0xd
	.value	0x116
	.byte	0xb
	.long	0x91
	.byte	0xc8
	.uleb128 0x6
	.long	.LASF1408
	.byte	0xd
	.value	0x119
	.byte	0x11
	.long	0x543
	.byte	0xcc
	.uleb128 0x6
	.long	.LASF1409
	.byte	0xd
	.value	0x11c
	.byte	0x14
	.long	0x293a
	.byte	0xd8
	.byte	0
	.uleb128 0xb
	.long	0x2763
	.uleb128 0x17
	.long	.LASF1410
	.byte	0x10
	.byte	0xe
	.byte	0xe3
	.long	0x2973
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xe
	.byte	0xe5
	.byte	0xf
	.long	0x2d99
	.byte	0
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xe
	.byte	0xe6
	.byte	0xb
	.long	0x8a
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xe
	.byte	0xe7
	.byte	0xb
	.long	0x8a
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	0x293f
	.uleb128 0xb
	.long	0x2757
	.uleb128 0xb
	.long	0x22a7
	.uleb128 0x28
	.long	.LASF1414
	.value	0x140
	.byte	0xf
	.byte	0x53
	.byte	0x10
	.long	0x2b57
	.uleb128 0x7
	.string	"mo"
	.byte	0xf
	.byte	0x55
	.byte	0xe
	.long	0x2caf
	.byte	0
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xf
	.byte	0x56
	.byte	0x13
	.long	0x30db
	.byte	0x8
	.uleb128 0x7
	.string	"cmd"
	.byte	0xf
	.byte	0x57
	.byte	0xf
	.long	0x131
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xf
	.byte	0x5c
	.byte	0xe
	.long	0x3eb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xf
	.byte	0x5e
	.byte	0xe
	.long	0x3eb
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xf
	.byte	0x60
	.byte	0x16
	.long	0x3eb
	.byte	0x1c
	.uleb128 0x7
	.string	"bob"
	.byte	0xf
	.byte	0x62
	.byte	0x16
	.long	0x3eb
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xf
	.byte	0x66
	.byte	0xb
	.long	0x91
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xf
	.byte	0x67
	.byte	0xb
	.long	0x91
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x91
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xf
	.byte	0x6c
	.byte	0xb
	.long	0x3106
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xf
	.byte	0x6d
	.byte	0xe
	.long	0x3116
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xf
	.byte	0x6e
	.byte	0xe
	.long	0xc2
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xf
	.byte	0x71
	.byte	0xb
	.long	0x2cb4
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xf
	.byte	0x72
	.byte	0x12
	.long	0x31b
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xf
	.byte	0x75
	.byte	0x12
	.long	0x31b
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xf
	.byte	0x77
	.byte	0xe
	.long	0x3126
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xf
	.byte	0x78
	.byte	0xb
	.long	0x2cb4
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xf
	.byte	0x79
	.byte	0xb
	.long	0x2cb4
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xf
	.byte	0x7c
	.byte	0xb
	.long	0x91
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xf
	.byte	0x7d
	.byte	0xb
	.long	0x91
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xf
	.byte	0x81
	.byte	0xb
	.long	0x91
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xf
	.byte	0x84
	.byte	0xb
	.long	0x91
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xf
	.byte	0x87
	.byte	0xb
	.long	0x91
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xf
	.byte	0x88
	.byte	0xb
	.long	0x91
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xf
	.byte	0x89
	.byte	0xb
	.long	0x91
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xf
	.byte	0x8c
	.byte	0xc
	.long	0x9f
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xf
	.byte	0x8f
	.byte	0xb
	.long	0x91
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xf
	.byte	0x90
	.byte	0xb
	.long	0x91
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xf
	.byte	0x93
	.byte	0xe
	.long	0x2caf
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xf
	.byte	0x96
	.byte	0xb
	.long	0x91
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xf
	.byte	0x9a
	.byte	0xb
	.long	0x91
	.byte	0xfc
	.uleb128 0x1a
	.long	.LASF1443
	.byte	0x9e
	.byte	0xb
	.long	0x91
	.value	0x100
	.uleb128 0x1a
	.long	.LASF1444
	.byte	0xa1
	.byte	0xf
	.long	0x3136
	.value	0x108
	.uleb128 0x1a
	.long	.LASF1445
	.byte	0xa4
	.byte	0xe
	.long	0xc2
	.value	0x138
	.byte	0
	.uleb128 0xb
	.long	0x2982
	.uleb128 0x16
	.long	.LASF1446
	.byte	0xd
	.value	0x11e
	.long	0x2763
	.uleb128 0x10
	.byte	0x8
	.byte	0xe
	.byte	0x47
	.long	0x2b87
	.uleb128 0x7
	.string	"x"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0x3eb
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0xe
	.byte	0x4a
	.byte	0xd
	.long	0x3eb
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF1447
	.byte	0xe
	.byte	0x4c
	.byte	0x3
	.long	0x2b68
	.uleb128 0x10
	.byte	0x28
	.byte	0xe
	.byte	0x58
	.long	0x2bca
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xe
	.byte	0x5a
	.byte	0x10
	.long	0x4c7
	.byte	0
	.uleb128 0x7
	.string	"x"
	.byte	0xe
	.byte	0x5b
	.byte	0xe
	.long	0x3eb
	.byte	0x18
	.uleb128 0x7
	.string	"y"
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0x3eb
	.byte	0x1c
	.uleb128 0x7
	.string	"z"
	.byte	0xe
	.byte	0x5d
	.byte	0xe
	.long	0x3eb
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	.LASF1448
	.byte	0xe
	.byte	0x5f
	.byte	0x3
	.long	0x2b93
	.uleb128 0x10
	.byte	0x80
	.byte	0xe
	.byte	0x65
	.long	0x2caf
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xe
	.byte	0x67
	.byte	0xd
	.long	0x3eb
	.byte	0
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xe
	.byte	0x68
	.byte	0xd
	.long	0x3eb
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x8a
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xe
	.byte	0x6a
	.byte	0xb
	.long	0x8a
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xe
	.byte	0x6b
	.byte	0xb
	.long	0x8a
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x8a
	.byte	0xe
	.uleb128 0x7
	.string	"tag"
	.byte	0xe
	.byte	0x6d
	.byte	0xb
	.long	0x8a
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xe
	.byte	0x70
	.byte	0xa
	.long	0x91
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xe
	.byte	0x73
	.byte	0xd
	.long	0x2caf
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xe
	.byte	0x76
	.byte	0xa
	.long	0x2cb4
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xe
	.byte	0x79
	.byte	0x11
	.long	0x2bca
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xe
	.byte	0x7c
	.byte	0xa
	.long	0x91
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xe
	.byte	0x7f
	.byte	0xd
	.long	0x2caf
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xe
	.byte	0x82
	.byte	0xb
	.long	0x73
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x91
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xe
	.byte	0x85
	.byte	0x15
	.long	0x2d83
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0x2b5c
	.uleb128 0xa
	.long	0x91
	.long	0x2cc4
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF1463
	.byte	0x58
	.byte	0xe
	.byte	0xb3
	.long	0x2d83
	.uleb128 0x7
	.string	"v1"
	.byte	0xe
	.byte	0xb6
	.byte	0xf
	.long	0x2dcf
	.byte	0
	.uleb128 0x7
	.string	"v2"
	.byte	0xe
	.byte	0xb7
	.byte	0xf
	.long	0x2dcf
	.byte	0x8
	.uleb128 0x7
	.string	"dx"
	.byte	0xe
	.byte	0xba
	.byte	0xd
	.long	0x3eb
	.byte	0x10
	.uleb128 0x7
	.string	"dy"
	.byte	0xe
	.byte	0xbb
	.byte	0xd
	.long	0x3eb
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xe
	.byte	0xbe
	.byte	0xb
	.long	0x8a
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xe
	.byte	0xbf
	.byte	0xb
	.long	0x8a
	.byte	0x1a
	.uleb128 0x7
	.string	"tag"
	.byte	0xe
	.byte	0xc0
	.byte	0xb
	.long	0x8a
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xe
	.byte	0xc4
	.byte	0xb
	.long	0x4ed
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1465
	.byte	0xe
	.byte	0xc8
	.byte	0xd
	.long	0x2dd4
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xe
	.byte	0xcb
	.byte	0x11
	.long	0x2dc3
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xe
	.byte	0xcf
	.byte	0xf
	.long	0x2d99
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xe
	.byte	0xd0
	.byte	0xf
	.long	0x2d99
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xe
	.byte	0xd3
	.byte	0xa
	.long	0x91
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xe
	.byte	0xd6
	.byte	0xb
	.long	0x73
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	0x2d88
	.uleb128 0xb
	.long	0x2cc4
	.uleb128 0x8
	.long	.LASF1469
	.byte	0xe
	.byte	0x87
	.byte	0x3
	.long	0x2bd6
	.uleb128 0xb
	.long	0x2d8d
	.uleb128 0xd
	.long	0x6c
	.byte	0xe
	.byte	0xa9
	.byte	0x1
	.long	0x2dc3
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
	.byte	0
	.uleb128 0x8
	.long	.LASF1474
	.byte	0xe
	.byte	0xaf
	.byte	0x3
	.long	0x2d9e
	.uleb128 0xb
	.long	0x2b87
	.uleb128 0xa
	.long	0x3eb
	.long	0x2de4
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.byte	0x28
	.byte	0xe
	.value	0x164
	.long	0x2e34
	.uleb128 0x6
	.long	.LASF1475
	.byte	0xe
	.value	0x166
	.byte	0xc
	.long	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF1379
	.byte	0xe
	.value	0x167
	.byte	0xc
	.long	0x8a
	.byte	0x2
	.uleb128 0x6
	.long	.LASF1476
	.byte	0xe
	.value	0x168
	.byte	0xc
	.long	0x8a
	.byte	0x4
	.uleb128 0x6
	.long	.LASF1477
	.byte	0xe
	.value	0x169
	.byte	0xc
	.long	0x8a
	.byte	0x6
	.uleb128 0x6
	.long	.LASF1478
	.byte	0xe
	.value	0x16a
	.byte	0xb
	.long	0x2e34
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x91
	.long	0x2e44
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	.LASF1479
	.byte	0xe
	.value	0x16c
	.long	0x2de4
	.uleb128 0x10
	.byte	0x30
	.byte	0x10
	.byte	0x2c
	.long	0x2eba
	.uleb128 0x7
	.string	"x"
	.byte	0x10
	.byte	0x30
	.byte	0xa
	.long	0x91
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x10
	.byte	0x31
	.byte	0xa
	.long	0x91
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1475
	.byte	0x10
	.byte	0x34
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1480
	.byte	0x10
	.byte	0x37
	.byte	0xa
	.long	0x91
	.byte	0xc
	.uleb128 0x7
	.string	"num"
	.byte	0x10
	.byte	0x3a
	.byte	0xa
	.long	0x2eba
	.byte	0x10
	.uleb128 0x7
	.string	"on"
	.byte	0x10
	.byte	0x3e
	.byte	0xe
	.long	0x2ebf
	.byte	0x18
	.uleb128 0x7
	.string	"p"
	.byte	0x10
	.byte	0x41
	.byte	0xf
	.long	0x2ec4
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x10
	.byte	0x44
	.byte	0x9
	.long	0x91
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.long	0x91
	.uleb128 0xb
	.long	0xc2
	.uleb128 0xb
	.long	0x2ec9
	.uleb128 0xb
	.long	0x2e44
	.uleb128 0x8
	.long	.LASF1482
	.byte	0x10
	.byte	0x46
	.byte	0x3
	.long	0x2e50
	.uleb128 0x10
	.byte	0x38
	.byte	0x10
	.byte	0x4c
	.long	0x2ef9
	.uleb128 0x7
	.string	"n"
	.byte	0x10
	.byte	0x4f
	.byte	0x12
	.long	0x2ece
	.byte	0
	.uleb128 0x7
	.string	"p"
	.byte	0x10
	.byte	0x52
	.byte	0xf
	.long	0x2ec9
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.long	.LASF1483
	.byte	0x10
	.byte	0x54
	.byte	0x3
	.long	0x2eda
	.uleb128 0x10
	.byte	0x30
	.byte	0x10
	.byte	0x59
	.long	0x2f62
	.uleb128 0x7
	.string	"x"
	.byte	0x10
	.byte	0x5c
	.byte	0xb
	.long	0x91
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x10
	.byte	0x5d
	.byte	0xb
	.long	0x91
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1484
	.byte	0x10
	.byte	0x60
	.byte	0xb
	.long	0x91
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1485
	.byte	0x10
	.byte	0x63
	.byte	0xb
	.long	0x2eba
	.byte	0x10
	.uleb128 0x7
	.string	"on"
	.byte	0x10
	.byte	0x67
	.byte	0xf
	.long	0x2ebf
	.byte	0x18
	.uleb128 0x7
	.string	"p"
	.byte	0x10
	.byte	0x6a
	.byte	0x10
	.long	0x2ec4
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x10
	.byte	0x6d
	.byte	0xb
	.long	0x91
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.long	.LASF1486
	.byte	0x10
	.byte	0x6f
	.byte	0x3
	.long	0x2f05
	.uleb128 0x10
	.byte	0x30
	.byte	0x10
	.byte	0x76
	.long	0x2fcb
	.uleb128 0x7
	.string	"x"
	.byte	0x10
	.byte	0x79
	.byte	0xb
	.long	0x91
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x10
	.byte	0x7a
	.byte	0xb
	.long	0x91
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1487
	.byte	0x10
	.byte	0x7d
	.byte	0xb
	.long	0x91
	.byte	0x8
	.uleb128 0x7
	.string	"val"
	.byte	0x10
	.byte	0x80
	.byte	0xf
	.long	0x2ebf
	.byte	0x10
	.uleb128 0x7
	.string	"on"
	.byte	0x10
	.byte	0x84
	.byte	0xf
	.long	0x2ebf
	.byte	0x18
	.uleb128 0x7
	.string	"p"
	.byte	0x10
	.byte	0x87
	.byte	0xf
	.long	0x2ec9
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x10
	.byte	0x88
	.byte	0xb
	.long	0x91
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.long	.LASF1488
	.byte	0x10
	.byte	0x8a
	.byte	0x3
	.long	0x2f6e
	.uleb128 0x10
	.byte	0x18
	.byte	0x11
	.byte	0x22
	.long	0x302e
	.uleb128 0x3
	.long	.LASF1428
	.byte	0x11
	.byte	0x24
	.byte	0x10
	.long	0x358
	.byte	0
	.uleb128 0x3
	.long	.LASF1489
	.byte	0x11
	.byte	0x25
	.byte	0xa
	.long	0x91
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1490
	.byte	0x11
	.byte	0x26
	.byte	0xa
	.long	0x91
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1491
	.byte	0x11
	.byte	0x27
	.byte	0xa
	.long	0x91
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1492
	.byte	0x11
	.byte	0x28
	.byte	0xa
	.long	0x91
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1493
	.byte	0x11
	.byte	0x29
	.byte	0xa
	.long	0x91
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.long	.LASF1494
	.byte	0x11
	.byte	0x2b
	.byte	0x3
	.long	0x2fd7
	.uleb128 0xa
	.long	0x302e
	.long	0x304a
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF1509
	.byte	0x11
	.byte	0x2d
	.byte	0x19
	.long	0x303a
	.uleb128 0xd
	.long	0x6c
	.byte	0x12
	.byte	0x3d
	.byte	0x1
	.long	0x3075
	.uleb128 0x2
	.long	.LASF1495
	.byte	0
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1497
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x18
	.byte	0x12
	.byte	0x44
	.long	0x30b0
	.uleb128 0x3
	.long	.LASF1400
	.byte	0x12
	.byte	0x46
	.byte	0xe
	.long	0x297d
	.byte	0
	.uleb128 0x3
	.long	.LASF1217
	.byte	0x12
	.byte	0x47
	.byte	0xa
	.long	0x91
	.byte	0x8
	.uleb128 0x7
	.string	"sx"
	.byte	0x12
	.byte	0x48
	.byte	0xd
	.long	0x3eb
	.byte	0xc
	.uleb128 0x7
	.string	"sy"
	.byte	0x12
	.byte	0x49
	.byte	0xd
	.long	0x3eb
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF1498
	.byte	0x12
	.byte	0x4b
	.byte	0x3
	.long	0x3075
	.uleb128 0xd
	.long	0x6c
	.byte	0xf
	.byte	0x36
	.byte	0x1
	.long	0x30db
	.uleb128 0x2
	.long	.LASF1499
	.byte	0
	.uleb128 0x2
	.long	.LASF1500
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1501
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF1502
	.byte	0xf
	.byte	0x3e
	.byte	0x3
	.long	0x30bc
	.uleb128 0xd
	.long	0x6c
	.byte	0xf
	.byte	0x45
	.byte	0x1
	.long	0x3106
	.uleb128 0x2
	.long	.LASF1503
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1505
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	0x91
	.long	0x3116
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0xc2
	.long	0x3126
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0xc2
	.long	0x3136
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x30b0
	.long	0x3146
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF1506
	.byte	0xf
	.byte	0xa6
	.byte	0x3
	.long	0x2982
	.uleb128 0xb
	.long	0x3146
	.uleb128 0xb
	.long	0xce
	.uleb128 0xa
	.long	0x4a
	.long	0x316c
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x13
	.byte	0x22
	.long	0x318d
	.uleb128 0x3
	.long	.LASF1507
	.byte	0x13
	.byte	0x24
	.byte	0x14
	.long	0x318d
	.byte	0
	.uleb128 0x7
	.string	"p"
	.byte	0x13
	.byte	0x25
	.byte	0x14
	.long	0x318d
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x75
	.uleb128 0x8
	.long	.LASF1508
	.byte	0x13
	.byte	0x27
	.byte	0x3
	.long	0x316c
	.uleb128 0xa
	.long	0x3157
	.long	0x31ae
	.uleb128 0x9
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF1510
	.byte	0x14
	.byte	0x2f
	.byte	0xf
	.long	0x319e
	.uleb128 0x12
	.long	.LASF1511
	.byte	0x15
	.byte	0x3c
	.byte	0x13
	.long	0x252
	.uleb128 0x12
	.long	.LASF1512
	.byte	0x15
	.byte	0x54
	.byte	0x19
	.long	0x289
	.uleb128 0x12
	.long	.LASF1513
	.byte	0x15
	.byte	0x5c
	.byte	0x11
	.long	0xc2
	.uleb128 0x12
	.long	.LASF1514
	.byte	0x15
	.byte	0x60
	.byte	0x11
	.long	0xc2
	.uleb128 0x12
	.long	.LASF1515
	.byte	0x15
	.byte	0x84
	.byte	0x11
	.long	0xc2
	.uleb128 0x12
	.long	.LASF1516
	.byte	0x15
	.byte	0x9e
	.byte	0xd
	.long	0x91
	.uleb128 0xa
	.long	0x3146
	.long	0x3212
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF1517
	.byte	0x15
	.byte	0xd4
	.byte	0x11
	.long	0x3202
	.uleb128 0xd
	.long	0x6c
	.byte	0x16
	.byte	0x64
	.byte	0x1
	.long	0x33c9
	.uleb128 0x2
	.long	.LASF1518
	.byte	0
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1522
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1523
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1528
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1529
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1530
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1531
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1532
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1533
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1534
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1535
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1536
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1537
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1539
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1580
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1581
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1582
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1583
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1584
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x44
	.byte	0
	.uleb128 0x5
	.long	.LASF1588
	.value	0x10e
	.byte	0x12
	.long	0x3152
	.uleb128 0x9
	.byte	0x3
	.quad	plyr
	.uleb128 0x5
	.long	.LASF1589
	.value	0x111
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_firsttime
	.uleb128 0x5
	.long	.LASF1590
	.value	0x114
	.byte	0xd
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	veryfirsttime
	.uleb128 0x5
	.long	.LASF1591
	.value	0x117
	.byte	0xd
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	lu_palette
	.uleb128 0x5
	.long	.LASF1592
	.value	0x11a
	.byte	0x15
	.long	0x6c
	.uleb128 0x9
	.byte	0x3
	.quad	st_clock
	.uleb128 0x5
	.long	.LASF1593
	.value	0x11d
	.byte	0xd
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	st_msgcounter
	.uleb128 0x5
	.long	.LASF1594
	.value	0x120
	.byte	0x1b
	.long	0x3df
	.uleb128 0x9
	.byte	0x3
	.quad	st_chatstate
	.uleb128 0x5
	.long	.LASF1595
	.value	0x123
	.byte	0x17
	.long	0x3b4
	.uleb128 0x9
	.byte	0x3
	.quad	st_gamestate
	.uleb128 0x5
	.long	.LASF1596
	.value	0x126
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_statusbaron
	.uleb128 0x5
	.long	.LASF1597
	.value	0x129
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_chat
	.uleb128 0x5
	.long	.LASF1598
	.value	0x12c
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_oldchat
	.uleb128 0x5
	.long	.LASF1599
	.value	0x12f
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_cursoron
	.uleb128 0x5
	.long	.LASF1600
	.value	0x132
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_notdeathmatch
	.uleb128 0x5
	.long	.LASF1601
	.value	0x135
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_armson
	.uleb128 0x5
	.long	.LASF1602
	.value	0x138
	.byte	0x11
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_fragson
	.uleb128 0x5
	.long	.LASF1603
	.value	0x13b
	.byte	0x12
	.long	0x2ec9
	.uleb128 0x9
	.byte	0x3
	.quad	sbar
	.uleb128 0xa
	.long	0x2ec9
	.long	0x3539
	.uleb128 0x9
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	.LASF1604
	.value	0x13e
	.byte	0x12
	.long	0x3529
	.uleb128 0x9
	.byte	0x3
	.quad	tallnum
	.uleb128 0x5
	.long	.LASF1605
	.value	0x141
	.byte	0x12
	.long	0x2ec9
	.uleb128 0x9
	.byte	0x3
	.quad	tallpercent
	.uleb128 0x5
	.long	.LASF1606
	.value	0x144
	.byte	0x12
	.long	0x3529
	.uleb128 0x9
	.byte	0x3
	.quad	shortnum
	.uleb128 0xa
	.long	0x2ec9
	.long	0x358b
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF1607
	.value	0x147
	.byte	0x12
	.long	0x357b
	.uleb128 0x9
	.byte	0x3
	.quad	keys
	.uleb128 0xa
	.long	0x2ec9
	.long	0x35b1
	.uleb128 0x9
	.long	0x43
	.byte	0x29
	.byte	0
	.uleb128 0x5
	.long	.LASF1608
	.value	0x14a
	.byte	0x12
	.long	0x35a1
	.uleb128 0x9
	.byte	0x3
	.quad	faces
	.uleb128 0x5
	.long	.LASF1609
	.value	0x14d
	.byte	0x12
	.long	0x2ec9
	.uleb128 0x9
	.byte	0x3
	.quad	faceback
	.uleb128 0x5
	.long	.LASF1610
	.value	0x150
	.byte	0x12
	.long	0x2ec9
	.uleb128 0x9
	.byte	0x3
	.quad	armsbg
	.uleb128 0xa
	.long	0x2ec9
	.long	0x3609
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF1611
	.value	0x153
	.byte	0x12
	.long	0x35f3
	.uleb128 0x9
	.byte	0x3
	.quad	arms
	.uleb128 0x5
	.long	.LASF1612
	.value	0x156
	.byte	0x14
	.long	0x2ece
	.uleb128 0x9
	.byte	0x3
	.quad	w_ready
	.uleb128 0x5
	.long	.LASF1613
	.value	0x159
	.byte	0x14
	.long	0x2ece
	.uleb128 0x9
	.byte	0x3
	.quad	w_frags
	.uleb128 0x5
	.long	.LASF1614
	.value	0x15c
	.byte	0x15
	.long	0x2ef9
	.uleb128 0x9
	.byte	0x3
	.quad	w_health
	.uleb128 0x5
	.long	.LASF1615
	.value	0x15f
	.byte	0x15
	.long	0x2fcb
	.uleb128 0x9
	.byte	0x3
	.quad	w_armsbg
	.uleb128 0xa
	.long	0x2f62
	.long	0x3687
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF1616
	.value	0x163
	.byte	0x16
	.long	0x3677
	.uleb128 0x9
	.byte	0x3
	.quad	w_arms
	.uleb128 0x5
	.long	.LASF1617
	.value	0x166
	.byte	0x16
	.long	0x2f62
	.uleb128 0x9
	.byte	0x3
	.quad	w_faces
	.uleb128 0xa
	.long	0x2f62
	.long	0x36c3
	.uleb128 0x9
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1618
	.value	0x169
	.byte	0x16
	.long	0x36b3
	.uleb128 0x9
	.byte	0x3
	.quad	w_keyboxes
	.uleb128 0x5
	.long	.LASF1619
	.value	0x16c
	.byte	0x15
	.long	0x2ef9
	.uleb128 0x9
	.byte	0x3
	.quad	w_armor
	.uleb128 0xa
	.long	0x2ece
	.long	0x36ff
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1620
	.value	0x16f
	.byte	0x14
	.long	0x36ef
	.uleb128 0x9
	.byte	0x3
	.quad	w_ammo
	.uleb128 0x5
	.long	.LASF1621
	.value	0x172
	.byte	0x14
	.long	0x36ef
	.uleb128 0x9
	.byte	0x3
	.quad	w_maxammo
	.uleb128 0x5
	.long	.LASF1622
	.value	0x177
	.byte	0xc
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	st_fragscount
	.uleb128 0x5
	.long	.LASF1623
	.value	0x17a
	.byte	0xc
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	st_oldhealth
	.uleb128 0x5
	.long	.LASF1624
	.value	0x17d
	.byte	0x10
	.long	0x3126
	.uleb128 0x9
	.byte	0x3
	.quad	oldweaponsowned
	.uleb128 0x5
	.long	.LASF1625
	.value	0x180
	.byte	0xc
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	st_facecount
	.uleb128 0x5
	.long	.LASF1626
	.value	0x183
	.byte	0xc
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	st_faceindex
	.uleb128 0xa
	.long	0x91
	.long	0x37a9
	.uleb128 0x9
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1627
	.value	0x186
	.byte	0xc
	.long	0x3799
	.uleb128 0x9
	.byte	0x3
	.quad	keyboxes
	.uleb128 0x5
	.long	.LASF1628
	.value	0x189
	.byte	0xc
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	st_randomnumber
	.uleb128 0xa
	.long	0x75
	.long	0x37e5
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF1629
	.value	0x190
	.byte	0xf
	.long	0x37d5
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_mus_seq
	.uleb128 0xa
	.long	0x75
	.long	0x380b
	.uleb128 0x9
	.long	0x43
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	.LASF1630
	.value	0x195
	.byte	0xf
	.long	0x37fb
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_choppers_seq
	.uleb128 0xa
	.long	0x75
	.long	0x3831
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	.LASF1631
	.value	0x19a
	.byte	0xf
	.long	0x3821
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_god_seq
	.uleb128 0xc
	.long	.LASF1632
	.value	0x19f
	.byte	0xf
	.long	0x3821
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_ammo_seq
	.uleb128 0xa
	.long	0x75
	.long	0x386d
	.uleb128 0x9
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF1633
	.value	0x1a4
	.byte	0xf
	.long	0x385d
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_ammonokey_seq
	.uleb128 0xc
	.long	.LASF1634
	.value	0x1ab
	.byte	0xf
	.long	0x37fb
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_noclip_seq
	.uleb128 0xa
	.long	0x75
	.long	0x38a9
	.uleb128 0x9
	.long	0x43
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	.LASF1635
	.value	0x1b2
	.byte	0xf
	.long	0x3899
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_commercial_noclip_seq
	.uleb128 0xa
	.long	0x75
	.long	0x38d5
	.uleb128 0x9
	.long	0x43
	.byte	0x6
	.uleb128 0x9
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.long	.LASF1636
	.value	0x1b9
	.byte	0xf
	.long	0x38bf
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_powerup_seq
	.uleb128 0xa
	.long	0x75
	.long	0x38fb
	.uleb128 0x9
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.long	.LASF1637
	.value	0x1c5
	.byte	0xf
	.long	0x38eb
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_clev_seq
	.uleb128 0xa
	.long	0x75
	.long	0x3921
	.uleb128 0x9
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	.LASF1638
	.value	0x1cc
	.byte	0xf
	.long	0x3911
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_mypos_seq
	.uleb128 0xc
	.long	.LASF1639
	.value	0x1d3
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_mus
	.uleb128 0xc
	.long	.LASF1640
	.value	0x1d4
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_god
	.uleb128 0xc
	.long	.LASF1641
	.value	0x1d5
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_ammo
	.uleb128 0xc
	.long	.LASF1642
	.value	0x1d6
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_ammonokey
	.uleb128 0xc
	.long	.LASF1643
	.value	0x1d7
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_noclip
	.uleb128 0xc
	.long	.LASF1644
	.value	0x1d8
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_commercial_noclip
	.uleb128 0xa
	.long	0x3192
	.long	0x39cb
	.uleb128 0x9
	.long	0x43
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	.LASF1645
	.value	0x1da
	.byte	0xc
	.long	0x39bb
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_powerup
	.uleb128 0xc
	.long	.LASF1646
	.value	0x1e5
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_choppers
	.uleb128 0xc
	.long	.LASF1647
	.value	0x1e6
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_clev
	.uleb128 0xc
	.long	.LASF1648
	.value	0x1e7
	.byte	0xc
	.long	0x3192
	.uleb128 0x9
	.byte	0x3
	.quad	cheat_mypos
	.uleb128 0x5
	.long	.LASF1649
	.value	0x3e6
	.byte	0xc
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	st_palette
	.uleb128 0x5
	.long	.LASF1650
	.value	0x5a1
	.byte	0x10
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	st_stopped
	.uleb128 0x15
	.long	.LASF1657
	.byte	0x5
	.byte	0x30
	.byte	0x7
	.long	0x73
	.long	0x3a6f
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x73
	.byte	0
	.uleb128 0xe
	.long	.LASF1651
	.byte	0x10
	.byte	0xbf
	.byte	0x1
	.long	0x3a9a
	.uleb128 0x4
	.long	0x3a9a
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x2ec4
	.uleb128 0x4
	.long	0x2eba
	.uleb128 0x4
	.long	0x2ebf
	.byte	0
	.uleb128 0xb
	.long	0x2f62
	.uleb128 0xe
	.long	.LASF1652
	.byte	0x10
	.byte	0xd0
	.byte	0x1
	.long	0x3aca
	.uleb128 0x4
	.long	0x3aca
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x2ec9
	.uleb128 0x4
	.long	0x2ebf
	.uleb128 0x4
	.long	0x2ebf
	.byte	0
	.uleb128 0xb
	.long	0x2fcb
	.uleb128 0xe
	.long	.LASF1653
	.byte	0x10
	.byte	0xad
	.byte	0x1
	.long	0x3aff
	.uleb128 0x4
	.long	0x3aff
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x2ec4
	.uleb128 0x4
	.long	0x2eba
	.uleb128 0x4
	.long	0x2ebf
	.uleb128 0x4
	.long	0x2ec9
	.byte	0
	.uleb128 0xb
	.long	0x2ef9
	.uleb128 0xe
	.long	.LASF1654
	.byte	0x10
	.byte	0x9c
	.byte	0x1
	.long	0x3b34
	.uleb128 0x4
	.long	0x3b34
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x2ec4
	.uleb128 0x4
	.long	0x2eba
	.uleb128 0x4
	.long	0x2ebf
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0xb
	.long	0x2ece
	.uleb128 0x29
	.long	.LASF1711
	.byte	0x10
	.byte	0x96
	.byte	0x6
	.uleb128 0xe
	.long	.LASF1655
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x3b58
	.uleb128 0x4
	.long	0x73
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0xe
	.long	.LASF1656
	.byte	0x17
	.byte	0x59
	.byte	0x6
	.long	0x3b6b
	.uleb128 0x4
	.long	0x9f
	.uleb128 0x18
	.byte	0
	.uleb128 0x15
	.long	.LASF1658
	.byte	0x18
	.byte	0x49
	.byte	0x5
	.long	0x91
	.long	0x3b81
	.uleb128 0x4
	.long	0x9f
	.byte	0
	.uleb128 0x15
	.long	.LASF1659
	.byte	0x18
	.byte	0x4f
	.byte	0x7
	.long	0x73
	.long	0x3b9c
	.uleb128 0x4
	.long	0x9f
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0xe
	.long	.LASF1660
	.byte	0x10
	.byte	0xc9
	.byte	0x1
	.long	0x3bb3
	.uleb128 0x4
	.long	0x3a9a
	.uleb128 0x4
	.long	0xc2
	.byte	0
	.uleb128 0xe
	.long	.LASF1661
	.byte	0x10
	.byte	0xd9
	.byte	0x1
	.long	0x3bca
	.uleb128 0x4
	.long	0x3aca
	.uleb128 0x4
	.long	0xc2
	.byte	0
	.uleb128 0xe
	.long	.LASF1662
	.byte	0x10
	.byte	0xb8
	.byte	0x1
	.long	0x3be1
	.uleb128 0x4
	.long	0x3aff
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0xe
	.long	.LASF1663
	.byte	0x10
	.byte	0xa6
	.byte	0x1
	.long	0x3bf8
	.uleb128 0x4
	.long	0x3b34
	.uleb128 0x4
	.long	0xc2
	.byte	0
	.uleb128 0xe
	.long	.LASF1664
	.byte	0x19
	.byte	0x2b
	.byte	0x6
	.long	0x3c0a
	.uleb128 0x4
	.long	0x3157
	.byte	0
	.uleb128 0x15
	.long	.LASF1665
	.byte	0x18
	.byte	0x4e
	.byte	0x7
	.long	0x73
	.long	0x3c25
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0x2a
	.long	.LASF1712
	.byte	0x1f
	.byte	0x21
	.byte	0x5
	.long	0x91
	.uleb128 0x15
	.long	.LASF1666
	.byte	0x1a
	.byte	0x7f
	.byte	0x1
	.long	0x4e1
	.long	0x3c56
	.uleb128 0x4
	.long	0x3eb
	.uleb128 0x4
	.long	0x3eb
	.uleb128 0x4
	.long	0x3eb
	.uleb128 0x4
	.long	0x3eb
	.byte	0
	.uleb128 0xe
	.long	.LASF1667
	.byte	0x1b
	.byte	0x29
	.byte	0x6
	.long	0x3c72
	.uleb128 0x4
	.long	0x289
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0x2b
	.long	.LASF1668
	.byte	0x1c
	.value	0x16d
	.byte	0xc
	.long	0x91
	.long	0x3c8f
	.uleb128 0x4
	.long	0x9f
	.uleb128 0x4
	.long	0xa4
	.uleb128 0x18
	.byte	0
	.uleb128 0x15
	.long	.LASF1669
	.byte	0x1d
	.byte	0x20
	.byte	0x9
	.long	0xc2
	.long	0x3caa
	.uleb128 0x4
	.long	0x3152
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0xe
	.long	.LASF1670
	.byte	0x1e
	.byte	0x53
	.byte	0x1
	.long	0x3cc1
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0xe
	.long	.LASF1671
	.byte	0x13
	.byte	0x30
	.byte	0x1
	.long	0x3cd8
	.uleb128 0x4
	.long	0x3cd8
	.uleb128 0x4
	.long	0x9f
	.byte	0
	.uleb128 0xb
	.long	0x3192
	.uleb128 0x15
	.long	.LASF1672
	.byte	0x13
	.byte	0x2a
	.byte	0x1
	.long	0x91
	.long	0x3cf8
	.uleb128 0x4
	.long	0x3cd8
	.uleb128 0x4
	.long	0x4a
	.byte	0
	.uleb128 0xe
	.long	.LASF1673
	.byte	0x14
	.byte	0x3d
	.byte	0x1
	.long	0x3d2d
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.byte	0
	.uleb128 0xe
	.long	.LASF1674
	.byte	0x14
	.byte	0x48
	.byte	0x1
	.long	0x3d4e
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x91
	.uleb128 0x4
	.long	0x2ec9
	.byte	0
	.uleb128 0x13
	.long	.LASF1675
	.value	0x5ba
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF1676
	.value	0x5b0
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF1677
	.value	0x5a4
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF1678
	.value	0x502
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dc4
	.uleb128 0xf
	.string	"i"
	.value	0x505
	.byte	0x9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF1679
	.value	0x4e1
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3def
	.uleb128 0xf
	.string	"i"
	.value	0x4e4
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1680
	.value	0x4dc
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF1681
	.value	0x4b7
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e33
	.uleb128 0xf
	.string	"i"
	.value	0x4ba
	.byte	0x9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF1682
	.value	0x4b1
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF1683
	.value	0x464
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ea2
	.uleb128 0xf
	.string	"i"
	.value	0x467
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"j"
	.value	0x468
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x5
	.long	.LASF1684
	.value	0x469
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF1685
	.value	0x46b
	.byte	0xa
	.long	0x315c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.uleb128 0x14
	.long	.LASF1686
	.value	0x454
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ede
	.uleb128 0x1b
	.long	.LASF1687
	.value	0x454
	.byte	0x19
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.long	.LASF1688
	.value	0x454
	.byte	0x2d
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF1689
	.value	0x44e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF1690
	.value	0x441
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF1691
	.value	0x41e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f4a
	.uleb128 0x1b
	.long	.LASF1688
	.value	0x41e
	.byte	0x1d
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"i"
	.value	0x420
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF1692
	.value	0x3e8
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fa4
	.uleb128 0x5
	.long	.LASF1693
	.value	0x3eb
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"pal"
	.value	0x3ec
	.byte	0xb
	.long	0x3157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"cnt"
	.value	0x3ed
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"bzc"
	.value	0x3ee
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.long	.LASF1694
	.value	0x3dc
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF1695
	.value	0x39c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ffe
	.uleb128 0x5
	.long	.LASF1696
	.value	0x39e
	.byte	0x10
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	largeammo.0
	.uleb128 0xf
	.string	"i"
	.value	0x39f
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF1697
	.value	0x2f0
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4082
	.uleb128 0xf
	.string	"i"
	.value	0x2f2
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF1698
	.value	0x2f3
	.byte	0xd
	.long	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF1699
	.value	0x2f4
	.byte	0xd
	.long	0x4e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF1700
	.value	0x2f5
	.byte	0x10
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	lastattackdown.1
	.uleb128 0x5
	.long	.LASF1701
	.value	0x2f6
	.byte	0x10
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	priority.2
	.uleb128 0x5
	.long	.LASF1702
	.value	0x2f7
	.byte	0xd
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1705
	.byte	0x1
	.value	0x2d9
	.byte	0x5
	.long	0x91
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e1
	.uleb128 0x5
	.long	.LASF1401
	.value	0x2db
	.byte	0xa
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF1703
	.value	0x2dc
	.byte	0x10
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	lastcalc.3
	.uleb128 0x5
	.long	.LASF1704
	.value	0x2dd
	.byte	0x10
	.long	0x91
	.uleb128 0x9
	.byte	0x3
	.quad	oldhealth.4
	.byte	0
	.uleb128 0x2d
	.long	.LASF1706
	.byte	0x1
	.value	0x206
	.byte	0x1
	.long	0xc2
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x41c0
	.uleb128 0x2e
	.string	"ev"
	.byte	0x1
	.value	0x206
	.byte	0x18
	.long	0x41c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.value	0x208
	.byte	0x8
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x4154
	.uleb128 0xf
	.string	"buf"
	.value	0x256
	.byte	0x7
	.long	0x41c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x5
	.long	.LASF1707
	.value	0x257
	.byte	0x7
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x4180
	.uleb128 0xf
	.string	"buf"
	.value	0x29a
	.byte	0xe
	.long	0x41d5
	.uleb128 0x9
	.byte	0x3
	.quad	buf.5
	.byte	0
	.uleb128 0x2f
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0xf
	.string	"buf"
	.value	0x2a6
	.byte	0xd
	.long	0x41c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x5
	.long	.LASF1708
	.value	0x2a7
	.byte	0xc
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"map"
	.value	0x2a8
	.byte	0xc
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x1ab
	.uleb128 0xa
	.long	0x4a
	.long	0x41d5
	.uleb128 0x9
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	0x4a
	.long	0x41e5
	.uleb128 0x9
	.long	0x43
	.byte	0x33
	.byte	0
	.uleb128 0x13
	.long	.LASF1709
	.value	0x1f3
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0xf
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x3c
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF1504:
	.string	"CF_GODMODE"
.LASF1489:
	.string	"upstate"
.LASF1664:
	.string	"I_SetPalette"
.LASF883:
	.string	"S_BSPI_RUN3"
.LASF884:
	.string	"S_BSPI_RUN4"
.LASF885:
	.string	"S_BSPI_RUN5"
.LASF886:
	.string	"S_BSPI_RUN6"
.LASF887:
	.string	"S_BSPI_RUN7"
.LASF888:
	.string	"S_BSPI_RUN8"
.LASF889:
	.string	"S_BSPI_RUN9"
.LASF173:
	.string	"SPR_YSKU"
.LASF1440:
	.string	"attacker"
.LASF536:
	.string	"S_FIRE10"
.LASF537:
	.string	"S_FIRE11"
.LASF538:
	.string	"S_FIRE12"
.LASF539:
	.string	"S_FIRE13"
.LASF540:
	.string	"S_FIRE14"
.LASF541:
	.string	"S_FIRE15"
.LASF542:
	.string	"S_FIRE16"
.LASF543:
	.string	"S_FIRE17"
.LASF544:
	.string	"S_FIRE18"
.LASF545:
	.string	"S_FIRE19"
.LASF1357:
	.string	"MT_MISC84"
.LASF1290:
	.string	"MT_MISC20"
.LASF1104:
	.string	"S_MEGA2"
.LASF1105:
	.string	"S_MEGA3"
.LASF1106:
	.string	"S_MEGA4"
.LASF1294:
	.string	"MT_MISC24"
.LASF1295:
	.string	"MT_MISC25"
.LASF1297:
	.string	"MT_MISC26"
.LASF1298:
	.string	"MT_MISC27"
.LASF1299:
	.string	"MT_MISC28"
.LASF1302:
	.string	"MT_MISC29"
.LASF735:
	.string	"S_SARG_PAIN2"
.LASF1405:
	.string	"threshold"
.LASF56:
	.string	"wp_pistol"
.LASF1486:
	.string	"st_multicon_t"
.LASF214:
	.string	"SPR_COL1"
.LASF215:
	.string	"SPR_COL2"
.LASF216:
	.string	"SPR_COL3"
.LASF217:
	.string	"SPR_COL4"
.LASF226:
	.string	"SPR_COL5"
.LASF220:
	.string	"SPR_COL6"
.LASF1655:
	.string	"Z_ChangeTag2"
.LASF1583:
	.string	"mus_read_m"
.LASF546:
	.string	"S_FIRE20"
.LASF547:
	.string	"S_FIRE21"
.LASF548:
	.string	"S_FIRE22"
.LASF549:
	.string	"S_FIRE23"
.LASF550:
	.string	"S_FIRE24"
.LASF200:
	.string	"SPR_COLU"
.LASF552:
	.string	"S_FIRE26"
.LASF553:
	.string	"S_FIRE27"
.LASF554:
	.string	"S_FIRE28"
.LASF555:
	.string	"S_FIRE29"
.LASF1493:
	.string	"flashstate"
.LASF1303:
	.string	"MT_MISC30"
.LASF1218:
	.string	"action"
.LASF1305:
	.string	"MT_MISC32"
.LASF1032:
	.string	"S_BRAINEYE1"
.LASF897:
	.string	"S_BSPI_PAIN"
.LASF1308:
	.string	"MT_MISC35"
.LASF369:
	.string	"S_BFGEXP"
.LASF70:
	.string	"am_misl"
.LASF1311:
	.string	"MT_MISC38"
.LASF1312:
	.string	"MT_MISC39"
.LASF1451:
	.string	"floorpic"
.LASF1653:
	.string	"STlib_initPercent"
.LASF899:
	.string	"S_BSPI_DIE1"
.LASF1497:
	.string	"NUMPSPRITES"
.LASF1652:
	.string	"STlib_initBinIcon"
.LASF904:
	.string	"S_BSPI_DIE6"
.LASF1578:
	.string	"mus_tense"
.LASF1472:
	.string	"ST_POSITIVE"
.LASF1519:
	.string	"mus_e1m1"
.LASF1416:
	.string	"viewz"
.LASF1521:
	.string	"mus_e1m3"
.LASF1522:
	.string	"mus_e1m4"
.LASF1523:
	.string	"mus_e1m5"
.LASF1524:
	.string	"mus_e1m6"
.LASF1525:
	.string	"mus_e1m7"
.LASF1526:
	.string	"mus_e1m8"
.LASF1527:
	.string	"mus_e1m9"
.LASF795:
	.string	"S_BOSS_RAISE1"
.LASF796:
	.string	"S_BOSS_RAISE2"
.LASF1237:
	.string	"MT_HEAD"
.LASF797:
	.string	"S_BOSS_RAISE3"
.LASF556:
	.string	"S_FIRE30"
.LASF701:
	.string	"S_TROO_PAIN"
.LASF990:
	.string	"S_SSWV_DIE1"
.LASF800:
	.string	"S_BOSS_RAISE6"
.LASF992:
	.string	"S_SSWV_DIE3"
.LASF993:
	.string	"S_SSWV_DIE4"
.LASF994:
	.string	"S_SSWV_DIE5"
.LASF168:
	.string	"SPR_BKEY"
.LASF812:
	.string	"S_BOS2_ATK1"
.LASF813:
	.string	"S_BOS2_ATK2"
.LASF814:
	.string	"S_BOS2_ATK3"
.LASF202:
	.string	"SPR_GOR1"
.LASF209:
	.string	"SPR_GOR2"
.LASF210:
	.string	"SPR_GOR3"
.LASF211:
	.string	"SPR_GOR4"
.LASF212:
	.string	"SPR_GOR5"
.LASF1315:
	.string	"MT_MISC42"
.LASF1316:
	.string	"MT_MISC43"
.LASF569:
	.string	"S_SKEL_RUN1"
.LASF570:
	.string	"S_SKEL_RUN2"
.LASF571:
	.string	"S_SKEL_RUN3"
.LASF572:
	.string	"S_SKEL_RUN4"
.LASF573:
	.string	"S_SKEL_RUN5"
.LASF574:
	.string	"S_SKEL_RUN6"
.LASF575:
	.string	"S_SKEL_RUN7"
.LASF576:
	.string	"S_SKEL_RUN8"
.LASF577:
	.string	"S_SKEL_RUN9"
.LASF59:
	.string	"wp_missile"
.LASF1055:
	.string	"S_BEXP2"
.LASF1365:
	.string	"seestate"
.LASF750:
	.string	"S_HEAD_ATK1"
.LASF751:
	.string	"S_HEAD_ATK2"
.LASF752:
	.string	"S_HEAD_ATK3"
.LASF1466:
	.string	"slopetype"
.LASF1004:
	.string	"S_SSWV_RAISE1"
.LASF1005:
	.string	"S_SSWV_RAISE2"
.LASF1006:
	.string	"S_SSWV_RAISE3"
.LASF1007:
	.string	"S_SSWV_RAISE4"
.LASF1008:
	.string	"S_SSWV_RAISE5"
.LASF103:
	.string	"angle"
.LASF1232:
	.string	"MT_FATSHOT"
.LASF188:
	.string	"SPR_CELL"
.LASF189:
	.string	"SPR_CELP"
.LASF1170:
	.string	"S_HEARTCOL"
.LASF1412:
	.string	"numlines"
.LASF1087:
	.string	"S_MEDI"
.LASF1094:
	.string	"S_PINV"
.LASF1607:
	.string	"keys"
.LASF1281:
	.string	"MT_INS"
.LASF1324:
	.string	"MT_MISC51"
.LASF1325:
	.string	"MT_MISC52"
.LASF1279:
	.string	"MT_INV"
.LASF1327:
	.string	"MT_MISC54"
.LASF1184:
	.string	"S_BTORCHSHRT"
.LASF305:
	.string	"S_MISSILEUP"
.LASF1330:
	.string	"MT_MISC57"
.LASF1331:
	.string	"MT_MISC58"
.LASF1332:
	.string	"MT_MISC59"
.LASF482:
	.string	"S_SPOS_RAISE1"
.LASF276:
	.string	"S_SGUNFLASH1"
.LASF277:
	.string	"S_SGUNFLASH2"
.LASF824:
	.string	"S_BOS2_RAISE1"
.LASF825:
	.string	"S_BOS2_RAISE2"
.LASF826:
	.string	"S_BOS2_RAISE3"
.LASF827:
	.string	"S_BOS2_RAISE4"
.LASF828:
	.string	"S_BOS2_RAISE5"
.LASF829:
	.string	"S_BOS2_RAISE6"
.LASF830:
	.string	"S_BOS2_RAISE7"
.LASF589:
	.string	"S_SKEL_PAIN"
.LASF1076:
	.string	"S_RKEY"
.LASF33:
	.string	"next"
.LASF258:
	.string	"S_PISTOLUP"
.LASF944:
	.string	"S_CYBER_DIE8"
.LASF1683:
	.string	"ST_loadGraphics"
.LASF1333:
	.string	"MT_MISC60"
.LASF1334:
	.string	"MT_MISC61"
.LASF1335:
	.string	"MT_MISC62"
.LASF1336:
	.string	"MT_MISC63"
.LASF1337:
	.string	"MT_MISC64"
.LASF1338:
	.string	"MT_MISC65"
.LASF1339:
	.string	"MT_MISC66"
.LASF1340:
	.string	"MT_MISC67"
.LASF373:
	.string	"S_EXPLODE1"
.LASF374:
	.string	"S_EXPLODE2"
.LASF375:
	.string	"S_EXPLODE3"
.LASF1629:
	.string	"cheat_mus_seq"
.LASF564:
	.string	"S_TRACEEXP1"
.LASF565:
	.string	"S_TRACEEXP2"
.LASF566:
	.string	"S_TRACEEXP3"
.LASF952:
	.string	"S_PAIN_RUN5"
.LASF1054:
	.string	"S_BEXP"
.LASF953:
	.string	"S_PAIN_RUN6"
.LASF1441:
	.string	"extralight"
.LASF1171:
	.string	"S_HEARTCOL2"
.LASF350:
	.string	"S_RBALLX1"
.LASF1379:
	.string	"height"
.LASF1264:
	.string	"MT_TELEPORTMAN"
.LASF1641:
	.string	"cheat_ammo"
.LASF1669:
	.string	"P_GivePower"
.LASF1343:
	.string	"MT_MISC70"
.LASF133:
	.string	"SPR_IFOG"
.LASF1345:
	.string	"MT_MISC72"
.LASF1346:
	.string	"MT_MISC73"
.LASF1347:
	.string	"MT_MISC74"
.LASF1348:
	.string	"MT_MISC75"
.LASF1349:
	.string	"MT_MISC76"
.LASF1177:
	.string	"S_GREENTORCH2"
.LASF1178:
	.string	"S_GREENTORCH3"
.LASF1179:
	.string	"S_GREENTORCH4"
.LASF1018:
	.string	"S_COMMKEEN9"
.LASF667:
	.string	"S_CPOS_PAIN2"
.LASF890:
	.string	"S_BSPI_RUN10"
.LASF891:
	.string	"S_BSPI_RUN11"
.LASF892:
	.string	"S_BSPI_RUN12"
.LASF974:
	.string	"S_SSWV_RUN1"
.LASF975:
	.string	"S_SSWV_RUN2"
.LASF976:
	.string	"S_SSWV_RUN3"
.LASF977:
	.string	"S_SSWV_RUN4"
.LASF978:
	.string	"S_SSWV_RUN5"
.LASF979:
	.string	"S_SSWV_RUN6"
.LASF980:
	.string	"S_SSWV_RUN7"
.LASF981:
	.string	"S_SSWV_RUN8"
.LASF1159:
	.string	"S_SKULLCOL"
.LASF1548:
	.string	"mus_bunny"
.LASF1494:
	.string	"weaponinfo_t"
.LASF1231:
	.string	"MT_FATSO"
.LASF703:
	.string	"S_TROO_DIE1"
.LASF704:
	.string	"S_TROO_DIE2"
.LASF705:
	.string	"S_TROO_DIE3"
.LASF706:
	.string	"S_TROO_DIE4"
.LASF707:
	.string	"S_TROO_DIE5"
.LASF36:
	.string	"shareware"
.LASF1481:
	.string	"data"
.LASF1084:
	.string	"S_YSKULL"
.LASF1085:
	.string	"S_YSKULL2"
.LASF186:
	.string	"SPR_ROCK"
.LASF1256:
	.string	"MT_ROCKET"
.LASF1354:
	.string	"MT_MISC81"
.LASF1355:
	.string	"MT_MISC82"
.LASF1356:
	.string	"MT_MISC83"
.LASF662:
	.string	"S_CPOS_ATK1"
.LASF663:
	.string	"S_CPOS_ATK2"
.LASF664:
	.string	"S_CPOS_ATK3"
.LASF665:
	.string	"S_CPOS_ATK4"
.LASF1223:
	.string	"MT_PLAYER"
.LASF198:
	.string	"SPR_SHOT"
.LASF391:
	.string	"S_IFOG2"
.LASF392:
	.string	"S_IFOG3"
.LASF393:
	.string	"S_IFOG4"
.LASF394:
	.string	"S_IFOG5"
.LASF1552:
	.string	"mus_stalks"
.LASF127:
	.string	"SPR_PLSE"
.LASF119:
	.string	"SPR_PLSF"
.LASF118:
	.string	"SPR_PLSG"
.LASF787:
	.string	"S_BOSS_PAIN2"
.LASF1516:
	.string	"consoleplayer"
.LASF487:
	.string	"S_VILE_STND"
.LASF1015:
	.string	"S_COMMKEEN6"
.LASF1016:
	.string	"S_COMMKEEN7"
.LASF1017:
	.string	"S_COMMKEEN8"
.LASF126:
	.string	"SPR_PLSS"
.LASF866:
	.string	"S_SPID_PAIN2"
.LASF1380:
	.string	"mass"
.LASF1596:
	.string	"st_statusbaron"
.LASF239:
	.string	"SPR_POB1"
.LASF240:
	.string	"SPR_POB2"
.LASF1088:
	.string	"S_SOUL"
.LASF1098:
	.string	"S_PSTR"
.LASF1711:
	.string	"STlib_init"
.LASF45:
	.string	"sk_hard"
.LASF930:
	.string	"S_CYBER_ATK1"
.LASF931:
	.string	"S_CYBER_ATK2"
.LASF932:
	.string	"S_CYBER_ATK3"
.LASF933:
	.string	"S_CYBER_ATK4"
.LASF934:
	.string	"S_CYBER_ATK5"
.LASF935:
	.string	"S_CYBER_ATK6"
.LASF1125:
	.string	"S_BFUG"
.LASF165:
	.string	"SPR_FCAN"
.LASF608:
	.string	"S_FATT_STND"
.LASF1045:
	.string	"S_BRAINEXPLODE1"
.LASF1046:
	.string	"S_BRAINEXPLODE2"
.LASF1047:
	.string	"S_BRAINEXPLODE3"
.LASF329:
	.string	"S_BFGUP"
.LASF1528:
	.string	"mus_e2m1"
.LASF1529:
	.string	"mus_e2m2"
.LASF1530:
	.string	"mus_e2m3"
.LASF1531:
	.string	"mus_e2m4"
.LASF1276:
	.string	"MT_MISC10"
.LASF1533:
	.string	"mus_e2m6"
.LASF170:
	.string	"SPR_YKEY"
.LASF1535:
	.string	"mus_e2m8"
.LASF1536:
	.string	"mus_e2m9"
.LASF716:
	.string	"S_TROO_RAISE1"
.LASF717:
	.string	"S_TROO_RAISE2"
.LASF718:
	.string	"S_TROO_RAISE3"
.LASF719:
	.string	"S_TROO_RAISE4"
.LASF720:
	.string	"S_TROO_RAISE5"
.LASF1129:
	.string	"S_PLAS"
.LASF1011:
	.string	"S_COMMKEEN2"
.LASF1012:
	.string	"S_COMMKEEN3"
.LASF1013:
	.string	"S_COMMKEEN4"
.LASF1014:
	.string	"S_COMMKEEN5"
.LASF395:
	.string	"S_PLAY"
.LASF961:
	.string	"S_PAIN_DIE2"
.LASF962:
	.string	"S_PAIN_DIE3"
.LASF963:
	.string	"S_PAIN_DIE4"
.LASF964:
	.string	"S_PAIN_DIE5"
.LASF965:
	.string	"S_PAIN_DIE6"
.LASF1234:
	.string	"MT_TROOP"
.LASF516:
	.string	"S_VILE_PAIN2"
.LASF644:
	.string	"S_FATT_RAISE1"
.LASF60:
	.string	"wp_plasma"
.LASF646:
	.string	"S_FATT_RAISE3"
.LASF647:
	.string	"S_FATT_RAISE4"
.LASF648:
	.string	"S_FATT_RAISE5"
.LASF649:
	.string	"S_FATT_RAISE6"
.LASF650:
	.string	"S_FATT_RAISE7"
.LASF651:
	.string	"S_FATT_RAISE8"
.LASF360:
	.string	"S_ROCKET"
.LASF1255:
	.string	"MT_HEADSHOT"
.LASF1461:
	.string	"linecount"
.LASF1704:
	.string	"oldhealth"
.LASF1464:
	.string	"sidenum"
.LASF913:
	.string	"S_ARACH_PLAZ"
.LASF1152:
	.string	"S_STALAGTITE"
.LASF754:
	.string	"S_HEAD_PAIN2"
.LASF755:
	.string	"S_HEAD_PAIN3"
.LASF13:
	.string	"byte"
.LASF412:
	.string	"S_PLAY_XDIE2"
.LASF53:
	.string	"it_redskull"
.LASF1262:
	.string	"MT_TFOG"
.LASF463:
	.string	"S_SPOS_ATK1"
.LASF464:
	.string	"S_SPOS_ATK2"
.LASF465:
	.string	"S_SPOS_ATK3"
.LASF400:
	.string	"S_PLAY_ATK1"
.LASF401:
	.string	"S_PLAY_ATK2"
.LASF153:
	.string	"SPR_APLS"
.LASF1678:
	.string	"ST_createWidgets"
.LASF1433:
	.string	"refire"
.LASF30:
	.string	"event_t"
.LASF1554:
	.string	"mus_betwee"
.LASF1181:
	.string	"S_REDTORCH2"
.LASF1182:
	.string	"S_REDTORCH3"
.LASF1183:
	.string	"S_REDTORCH4"
.LASF1673:
	.string	"V_CopyRect"
.LASF690:
	.string	"S_TROO_RUN1"
.LASF691:
	.string	"S_TROO_RUN2"
.LASF692:
	.string	"S_TROO_RUN3"
.LASF693:
	.string	"S_TROO_RUN4"
.LASF694:
	.string	"S_TROO_RUN5"
.LASF695:
	.string	"S_TROO_RUN6"
.LASF696:
	.string	"S_TROO_RUN7"
.LASF697:
	.string	"S_TROO_RUN8"
.LASF1633:
	.string	"cheat_ammonokey_seq"
.LASF22:
	.string	"ev_keyup"
.LASF144:
	.string	"SPR_CPOS"
.LASF605:
	.string	"S_FATSHOTX1"
.LASF606:
	.string	"S_FATSHOTX2"
.LASF607:
	.string	"S_FATSHOTX3"
.LASF685:
	.string	"S_CPOS_RAISE5"
.LASF686:
	.string	"S_CPOS_RAISE6"
.LASF687:
	.string	"S_CPOS_RAISE7"
.LASF55:
	.string	"wp_fist"
.LASF1373:
	.string	"missilestate"
.LASF174:
	.string	"SPR_STIM"
.LASF1707:
	.string	"musnum"
.LASF721:
	.string	"S_SARG_STND"
.LASF946:
	.string	"S_CYBER_DIE10"
.LASF124:
	.string	"SPR_BAL1"
.LASF125:
	.string	"SPR_BAL2"
.LASF147:
	.string	"SPR_BAL7"
.LASF1399:
	.string	"info"
.LASF1140:
	.string	"S_HEADSONSTICK"
.LASF1507:
	.string	"sequence"
.LASF1394:
	.string	"ceilingz"
.LASF1611:
	.string	"arms"
.LASF597:
	.string	"S_SKEL_RAISE1"
.LASF112:
	.string	"SPR_SHT2"
.LASF251:
	.string	"S_PUNCH1"
.LASF252:
	.string	"S_PUNCH2"
.LASF253:
	.string	"S_PUNCH3"
.LASF254:
	.string	"S_PUNCH4"
.LASF255:
	.string	"S_PUNCH5"
.LASF614:
	.string	"S_FATT_RUN5"
.LASF250:
	.string	"S_PUNCHUP"
.LASF1532:
	.string	"mus_e2m5"
.LASF867:
	.string	"S_SPID_DIE1"
.LASF618:
	.string	"S_FATT_RUN9"
.LASF869:
	.string	"S_SPID_DIE3"
.LASF870:
	.string	"S_SPID_DIE4"
.LASF111:
	.string	"SPR_SHTF"
.LASF107:
	.string	"SPR_SHTG"
.LASF389:
	.string	"S_IFOG01"
.LASF390:
	.string	"S_IFOG02"
.LASF875:
	.string	"S_SPID_DIE9"
.LASF1117:
	.string	"S_AMMO"
.LASF1585:
	.string	"mus_dm2int"
.LASF1571:
	.string	"mus_count2"
.LASF23:
	.string	"ev_mouse"
.LASF71:
	.string	"NUMAMMO"
.LASF948:
	.string	"S_PAIN_RUN1"
.LASF949:
	.string	"S_PAIN_RUN2"
.LASF950:
	.string	"S_PAIN_RUN3"
.LASF951:
	.string	"S_PAIN_RUN4"
.LASF233:
	.string	"SPR_HDB1"
.LASF234:
	.string	"SPR_HDB2"
.LASF235:
	.string	"SPR_HDB3"
.LASF236:
	.string	"SPR_HDB4"
.LASF237:
	.string	"SPR_HDB5"
.LASF238:
	.string	"SPR_HDB6"
.LASF1224:
	.string	"MT_POSSESSED"
.LASF283:
	.string	"S_DSGUN3"
.LASF284:
	.string	"S_DSGUN4"
.LASF26:
	.string	"type"
.LASF303:
	.string	"S_MISSILE"
.LASF1617:
	.string	"w_faces"
.LASF1685:
	.string	"namebuf"
.LASF1584:
	.string	"mus_dm2ttl"
.LASF1131:
	.string	"S_SHOT2"
.LASF1198:
	.string	"S_HANGTLOOKDN"
.LASF1402:
	.string	"movedir"
.LASF675:
	.string	"S_CPOS_XDIE1"
.LASF1682:
	.string	"ST_loadData"
.LASF1668:
	.string	"sprintf"
.LASF1705:
	.string	"ST_calcPainOffset"
.LASF94:
	.string	"actionf_t"
.LASF89:
	.string	"actionf_v"
.LASF194:
	.string	"SPR_MGUN"
.LASF1236:
	.string	"MT_SHADOWS"
.LASF578:
	.string	"S_SKEL_RUN10"
.LASF579:
	.string	"S_SKEL_RUN11"
.LASF580:
	.string	"S_SKEL_RUN12"
.LASF246:
	.string	"S_NULL"
.LASF788:
	.string	"S_BOSS_DIE1"
.LASF789:
	.string	"S_BOSS_DIE2"
.LASF790:
	.string	"S_BOSS_DIE3"
.LASF791:
	.string	"S_BOSS_DIE4"
.LASF792:
	.string	"S_BOSS_DIE5"
.LASF793:
	.string	"S_BOSS_DIE6"
.LASF794:
	.string	"S_BOSS_DIE7"
.LASF958:
	.string	"S_PAIN_PAIN"
.LASF327:
	.string	"S_BFG"
.LASF1371:
	.string	"painsound"
.LASF1647:
	.string	"cheat_clev"
.LASF1537:
	.string	"mus_e3m1"
.LASF1506:
	.string	"player_t"
.LASF1454:
	.string	"special"
.LASF973:
	.string	"S_SSWV_STND2"
.LASF1541:
	.string	"mus_e3m5"
.LASF1542:
	.string	"mus_e3m6"
.LASF1543:
	.string	"mus_e3m7"
.LASF1544:
	.string	"mus_e3m8"
.LASF1545:
	.string	"mus_e3m9"
.LASF195:
	.string	"SPR_CSAW"
.LASF1108:
	.string	"S_PMAP"
.LASF1566:
	.string	"mus_dead2"
.LASF1114:
	.string	"S_PVIS"
.LASF328:
	.string	"S_BFGDOWN"
.LASF1248:
	.string	"MT_BOSSBRAIN"
.LASF141:
	.string	"SPR_SKEL"
.LASF323:
	.string	"S_PLASMA1"
.LASF324:
	.string	"S_PLASMA2"
.LASF1615:
	.string	"w_armsbg"
.LASF1188:
	.string	"S_GTORCHSHRT"
.LASF1413:
	.string	"firstline"
.LASF1122:
	.string	"S_SHEL"
.LASF1613:
	.string	"w_frags"
.LASF879:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF139:
	.string	"SPR_FATB"
.LASF244:
	.string	"NUMSPRITES"
.LASF145:
	.string	"SPR_SARG"
.LASF1534:
	.string	"mus_e2m7"
.LASF362:
	.string	"S_BFGSHOT2"
.LASF143:
	.string	"SPR_FATT"
.LASF1089:
	.string	"S_SOUL2"
.LASF1090:
	.string	"S_SOUL3"
.LASF1091:
	.string	"S_SOUL4"
.LASF1092:
	.string	"S_SOUL5"
.LASF1093:
	.string	"S_SOUL6"
.LASF1695:
	.string	"ST_updateWidgets"
.LASF849:
	.string	"S_SPID_RUN1"
.LASF850:
	.string	"S_SPID_RUN2"
.LASF851:
	.string	"S_SPID_RUN3"
.LASF852:
	.string	"S_SPID_RUN4"
.LASF853:
	.string	"S_SPID_RUN5"
.LASF854:
	.string	"S_SPID_RUN6"
.LASF855:
	.string	"S_SPID_RUN7"
.LASF856:
	.string	"S_SPID_RUN8"
.LASF100:
	.string	"float"
.LASF1056:
	.string	"S_BEXP3"
.LASF1057:
	.string	"S_BEXP4"
.LASF1606:
	.string	"shortnum"
.LASF1145:
	.string	"S_DEADSTICK"
.LASF1442:
	.string	"fixedcolormap"
.LASF1427:
	.string	"weaponowned"
.LASF1265:
	.string	"MT_EXTRABFG"
.LASF435:
	.string	"S_POSS_DIE1"
.LASF436:
	.string	"S_POSS_DIE2"
.LASF437:
	.string	"S_POSS_DIE3"
.LASF438:
	.string	"S_POSS_DIE4"
.LASF439:
	.string	"S_POSS_DIE5"
.LASF265:
	.string	"S_SGUNDOWN"
.LASF114:
	.string	"SPR_CHGF"
.LASF113:
	.string	"SPR_CHGG"
.LASF1512:
	.string	"gameskill"
.LASF658:
	.string	"S_CPOS_RUN5"
.LASF917:
	.string	"S_ARACH_PLEX3"
.LASF659:
	.string	"S_CPOS_RUN6"
.LASF919:
	.string	"S_ARACH_PLEX5"
.LASF660:
	.string	"S_CPOS_RUN7"
.LASF1404:
	.string	"target"
.LASF224:
	.string	"SPR_CEYE"
.LASF1470:
	.string	"ST_HORIZONTAL"
.LASF966:
	.string	"S_PAIN_RAISE1"
.LASF967:
	.string	"S_PAIN_RAISE2"
.LASF968:
	.string	"S_PAIN_RAISE3"
.LASF969:
	.string	"S_PAIN_RAISE4"
.LASF970:
	.string	"S_PAIN_RAISE5"
.LASF603:
	.string	"S_FATSHOT1"
.LASF604:
	.string	"S_FATSHOT2"
.LASF1471:
	.string	"ST_VERTICAL"
.LASF181:
	.string	"SPR_SUIT"
.LASF831:
	.string	"S_SKULL_STND"
.LASF1609:
	.string	"faceback"
.LASF865:
	.string	"S_SPID_PAIN"
.LASF1360:
	.string	"NUMMOBJTYPES"
.LASF163:
	.string	"SPR_BAR1"
.LASF278:
	.string	"S_DSGUN"
.LASF1157:
	.string	"S_CANDLESTIK"
.LASF78:
	.string	"pw_allmap"
.LASF1598:
	.string	"st_oldchat"
.LASF1213:
	.string	"NUMSTATES"
.LASF857:
	.string	"S_SPID_RUN9"
.LASF343:
	.string	"S_TBALL1"
.LASF344:
	.string	"S_TBALL2"
.LASF557:
	.string	"S_SMOKE1"
.LASF558:
	.string	"S_SMOKE2"
.LASF559:
	.string	"S_SMOKE3"
.LASF560:
	.string	"S_SMOKE4"
.LASF561:
	.string	"S_SMOKE5"
.LASF780:
	.string	"S_BOSS_RUN6"
.LASF781:
	.string	"S_BOSS_RUN7"
.LASF782:
	.string	"S_BOSS_RUN8"
.LASF146:
	.string	"SPR_HEAD"
.LASF1546:
	.string	"mus_inter"
.LASF1391:
	.string	"bprev"
.LASF207:
	.string	"SPR_POL1"
.LASF203:
	.string	"SPR_POL2"
.LASF206:
	.string	"SPR_POL3"
.LASF205:
	.string	"SPR_POL4"
.LASF204:
	.string	"SPR_POL5"
.LASF208:
	.string	"SPR_POL6"
.LASF1513:
	.string	"netgame"
.LASF1052:
	.string	"S_BAR1"
.LASF85:
	.string	"WaitDestState"
.LASF1266:
	.string	"MT_MISC0"
.LASF1138:
	.string	"S_DEADTORSO"
.LASF280:
	.string	"S_DSGUNUP"
.LASF1363:
	.string	"spawnstate"
.LASF1650:
	.string	"st_stopped"
.LASF689:
	.string	"S_TROO_STND2"
.LASF1209:
	.string	"S_TECH2LAMP"
.LASF1386:
	.string	"mobj_s"
.LASF1252:
	.string	"MT_SPAWNFIRE"
.LASF1692:
	.string	"ST_doPaletteStuff"
.LASF1227:
	.string	"MT_FIRE"
.LASF1219:
	.string	"nextstate"
.LASF786:
	.string	"S_BOSS_PAIN"
.LASF157:
	.string	"SPR_SSWV"
.LASF1580:
	.string	"mus_openin"
.LASF348:
	.string	"S_RBALL1"
.LASF349:
	.string	"S_RBALL2"
.LASF1395:
	.string	"momx"
.LASF1153:
	.string	"S_TALLGRNCOL"
.LASF1639:
	.string	"cheat_mus"
.LASF1407:
	.string	"lastlook"
.LASF1562:
	.string	"mus_theda2"
.LASF1502:
	.string	"playerstate_t"
.LASF1142:
	.string	"S_HEADONASTICK"
.LASF422:
	.string	"S_POSS_RUN1"
.LASF364:
	.string	"S_BFGLAND2"
.LASF365:
	.string	"S_BFGLAND3"
.LASF366:
	.string	"S_BFGLAND4"
.LASF367:
	.string	"S_BFGLAND5"
.LASF368:
	.string	"S_BFGLAND6"
.LASF428:
	.string	"S_POSS_RUN7"
.LASF429:
	.string	"S_POSS_RUN8"
.LASF411:
	.string	"S_PLAY_XDIE1"
.LASF46:
	.string	"sk_nightmare"
.LASF413:
	.string	"S_PLAY_XDIE3"
.LASF414:
	.string	"S_PLAY_XDIE4"
.LASF415:
	.string	"S_PLAY_XDIE5"
.LASF416:
	.string	"S_PLAY_XDIE6"
.LASF417:
	.string	"S_PLAY_XDIE7"
.LASF418:
	.string	"S_PLAY_XDIE8"
.LASF419:
	.string	"S_PLAY_XDIE9"
.LASF817:
	.string	"S_BOS2_DIE1"
.LASF818:
	.string	"S_BOS2_DIE2"
.LASF819:
	.string	"S_BOS2_DIE3"
.LASF820:
	.string	"S_BOS2_DIE4"
.LASF821:
	.string	"S_BOS2_DIE5"
.LASF822:
	.string	"S_BOS2_DIE6"
.LASF823:
	.string	"S_BOS2_DIE7"
.LASF1383:
	.string	"flags"
.LASF743:
	.string	"S_SARG_RAISE2"
.LASF1635:
	.string	"cheat_commercial_noclip_seq"
.LASF744:
	.string	"S_SARG_RAISE3"
.LASF387:
	.string	"S_TFOG10"
.LASF745:
	.string	"S_SARG_RAISE4"
.LASF1572:
	.string	"mus_ddtbl3"
.LASF440:
	.string	"S_POSS_XDIE1"
.LASF441:
	.string	"S_POSS_XDIE2"
.LASF442:
	.string	"S_POSS_XDIE3"
.LASF443:
	.string	"S_POSS_XDIE4"
.LASF444:
	.string	"S_POSS_XDIE5"
.LASF445:
	.string	"S_POSS_XDIE6"
.LASF446:
	.string	"S_POSS_XDIE7"
.LASF67:
	.string	"am_clip"
.LASF448:
	.string	"S_POSS_XDIE9"
.LASF1141:
	.string	"S_GIBS"
.LASF756:
	.string	"S_HEAD_DIE1"
.LASF757:
	.string	"S_HEAD_DIE2"
.LASF758:
	.string	"S_HEAD_DIE3"
.LASF759:
	.string	"S_HEAD_DIE4"
.LASF760:
	.string	"S_HEAD_DIE5"
.LASF31:
	.string	"size"
.LASF609:
	.string	"S_FATT_STND2"
.LASF1132:
	.string	"S_COLU"
.LASF259:
	.string	"S_PISTOL1"
.LASF260:
	.string	"S_PISTOL2"
.LASF261:
	.string	"S_PISTOL3"
.LASF262:
	.string	"S_PISTOL4"
.LASF598:
	.string	"S_SKEL_RAISE2"
.LASF599:
	.string	"S_SKEL_RAISE3"
.LASF600:
	.string	"S_SKEL_RAISE4"
.LASF601:
	.string	"S_SKEL_RAISE5"
.LASF602:
	.string	"S_SKEL_RAISE6"
.LASF1161:
	.string	"S_BIGTREE"
.LASF93:
	.string	"acp2"
.LASF1632:
	.string	"cheat_ammo_seq"
.LASF1473:
	.string	"ST_NEGATIVE"
.LASF1071:
	.string	"S_BON2C"
.LASF1072:
	.string	"S_BON2D"
.LASF377:
	.string	"S_TFOG01"
.LASF378:
	.string	"S_TFOG02"
.LASF196:
	.string	"SPR_LAUN"
.LASF433:
	.string	"S_POSS_PAIN"
.LASF727:
	.string	"S_SARG_RUN5"
.LASF728:
	.string	"S_SARG_RUN6"
.LASF1558:
	.string	"mus_ddtblu"
.LASF1230:
	.string	"MT_SMOKE"
.LASF1244:
	.string	"MT_CYBORG"
.LASF1381:
	.string	"damage"
.LASF473:
	.string	"S_SPOS_XDIE1"
.LASF474:
	.string	"S_SPOS_XDIE2"
.LASF475:
	.string	"S_SPOS_XDIE3"
.LASF476:
	.string	"S_SPOS_XDIE4"
.LASF477:
	.string	"S_SPOS_XDIE5"
.LASF478:
	.string	"S_SPOS_XDIE6"
.LASF479:
	.string	"S_SPOS_XDIE7"
.LASF480:
	.string	"S_SPOS_XDIE8"
.LASF481:
	.string	"S_SPOS_XDIE9"
.LASF1210:
	.string	"S_TECH2LAMP2"
.LASF1446:
	.string	"mobj_t"
.LASF1074:
	.string	"S_BKEY"
.LASF76:
	.string	"pw_invisibility"
.LASF1590:
	.string	"veryfirsttime"
.LASF161:
	.string	"SPR_ARM1"
.LASF162:
	.string	"SPR_ARM2"
.LASF1226:
	.string	"MT_VILE"
.LASF51:
	.string	"it_blueskull"
.LASF1458:
	.string	"soundorg"
.LASF321:
	.string	"S_PLASMADOWN"
.LASF633:
	.string	"S_FATT_PAIN2"
.LASF1031:
	.string	"S_BRAINEYESEE"
.LASF1474:
	.string	"slopetype_t"
.LASF568:
	.string	"S_SKEL_STND2"
.LASF1709:
	.string	"ST_refreshBackground"
.LASF921:
	.string	"S_CYBER_STND2"
.LASF1222:
	.string	"state_t"
.LASF765:
	.string	"S_HEAD_RAISE4"
.LASF991:
	.string	"S_SSWV_DIE2"
.LASF37:
	.string	"registered"
.LASF447:
	.string	"S_POSS_XDIE8"
.LASF1121:
	.string	"S_CELP"
.LASF1163:
	.string	"S_EVILEYE"
.LASF1189:
	.string	"S_GTORCHSHRT2"
.LASF1190:
	.string	"S_GTORCHSHRT3"
.LASF1191:
	.string	"S_GTORCHSHRT4"
.LASF768:
	.string	"S_BRBALL1"
.LASF769:
	.string	"S_BRBALL2"
.LASF1648:
	.string	"cheat_mypos"
.LASF1417:
	.string	"viewheight"
.LASF1390:
	.string	"bnext"
.LASF1654:
	.string	"STlib_initNum"
.LASF622:
	.string	"S_FATT_ATK1"
.LASF155:
	.string	"SPR_CYBR"
.LASF1490:
	.string	"downstate"
.LASF623:
	.string	"S_FATT_ATK2"
.LASF526:
	.string	"S_VILE_DIE10"
.LASF116:
	.string	"SPR_MISF"
.LASF115:
	.string	"SPR_MISG"
.LASF1514:
	.string	"deathmatch"
.LASF1693:
	.string	"palette"
.LASF128:
	.string	"SPR_MISL"
.LASF1080:
	.string	"S_BSKULL"
.LASF159:
	.string	"SPR_BBRN"
.LASF501:
	.string	"S_VILE_ATK1"
.LASF502:
	.string	"S_VILE_ATK2"
.LASF503:
	.string	"S_VILE_ATK3"
.LASF504:
	.string	"S_VILE_ATK4"
.LASF505:
	.string	"S_VILE_ATK5"
.LASF506:
	.string	"S_VILE_ATK6"
.LASF507:
	.string	"S_VILE_ATK7"
.LASF248:
	.string	"S_PUNCH"
.LASF509:
	.string	"S_VILE_ATK9"
.LASF230:
	.string	"SPR_SMBT"
.LASF1557:
	.string	"mus_shawn"
.LASF804:
	.string	"S_BOS2_RUN1"
.LASF805:
	.string	"S_BOS2_RUN2"
.LASF806:
	.string	"S_BOS2_RUN3"
.LASF807:
	.string	"S_BOS2_RUN4"
.LASF808:
	.string	"S_BOS2_RUN5"
.LASF809:
	.string	"S_BOS2_RUN6"
.LASF810:
	.string	"S_BOS2_RUN7"
.LASF811:
	.string	"S_BOS2_RUN8"
.LASF83:
	.string	"st_stateenum_t"
.LASF1453:
	.string	"lightlevel"
.LASF221:
	.string	"SPR_TRE1"
.LASF222:
	.string	"SPR_TRE2"
.LASF1601:
	.string	"st_armson"
.LASF1595:
	.string	"st_gamestate"
.LASF878:
	.string	"S_BSPI_STND"
.LASF1372:
	.string	"meleestate"
.LASF1428:
	.string	"ammo"
.LASF668:
	.string	"S_CPOS_DIE1"
.LASF229:
	.string	"SPR_TRED"
.LASF122:
	.string	"SPR_BLUD"
.LASF624:
	.string	"S_FATT_ATK3"
.LASF625:
	.string	"S_FATT_ATK4"
.LASF626:
	.string	"S_FATT_ATK5"
.LASF627:
	.string	"S_FATT_ATK6"
.LASF628:
	.string	"S_FATT_ATK7"
.LASF629:
	.string	"S_FATT_ATK8"
.LASF630:
	.string	"S_FATT_ATK9"
.LASF1651:
	.string	"STlib_initMultIcon"
.LASF132:
	.string	"SPR_TFOG"
.LASF336:
	.string	"S_BLOOD1"
.LASF337:
	.string	"S_BLOOD2"
.LASF338:
	.string	"S_BLOOD3"
.LASF1560:
	.string	"mus_dead"
.LASF1220:
	.string	"misc1"
.LASF1221:
	.string	"misc2"
.LASF1568:
	.string	"mus_romero"
.LASF16:
	.string	"angleturn"
.LASF1128:
	.string	"S_LAUN"
.LASF388:
	.string	"S_IFOG"
.LASF135:
	.string	"SPR_POSS"
.LASF140:
	.string	"SPR_FBXP"
.LASF1577:
	.string	"mus_romer2"
.LASF937:
	.string	"S_CYBER_DIE1"
.LASF938:
	.string	"S_CYBER_DIE2"
.LASF939:
	.string	"S_CYBER_DIE3"
.LASF940:
	.string	"S_CYBER_DIE4"
.LASF941:
	.string	"S_CYBER_DIE5"
.LASF942:
	.string	"S_CYBER_DIE6"
.LASF943:
	.string	"S_CYBER_DIE7"
.LASF815:
	.string	"S_BOS2_PAIN"
.LASF945:
	.string	"S_CYBER_DIE9"
.LASF1408:
	.string	"spawnpoint"
.LASF1215:
	.string	"sprite"
.LASF1658:
	.string	"W_GetNumForName"
.LASF1293:
	.string	"MT_MISC23"
.LASF1479:
	.string	"patch_t"
.LASF1565:
	.string	"mus_runni2"
.LASF1158:
	.string	"S_CANDELABRA"
.LASF498:
	.string	"S_VILE_RUN10"
.LASF499:
	.string	"S_VILE_RUN11"
.LASF500:
	.string	"S_VILE_RUN12"
.LASF1118:
	.string	"S_ROCK"
.LASF267:
	.string	"S_SGUN1"
.LASF268:
	.string	"S_SGUN2"
.LASF269:
	.string	"S_SGUN3"
.LASF270:
	.string	"S_SGUN4"
.LASF271:
	.string	"S_SGUN5"
.LASF272:
	.string	"S_SGUN6"
.LASF273:
	.string	"S_SGUN7"
.LASF274:
	.string	"S_SGUN8"
.LASF275:
	.string	"S_SGUN9"
.LASF1362:
	.string	"doomednum"
.LASF264:
	.string	"S_SGUN"
.LASF1154:
	.string	"S_SHRTGRNCOL"
.LASF1665:
	.string	"W_CacheLumpNum"
.LASF839:
	.string	"S_SKULL_PAIN"
.LASF1549:
	.string	"mus_victor"
.LASF1251:
	.string	"MT_SPAWNSHOT"
.LASF1675:
	.string	"ST_Init"
.LASF563:
	.string	"S_TRACER2"
.LASF1551:
	.string	"mus_runnin"
.LASF1696:
	.string	"largeammo"
.LASF1162:
	.string	"S_TECHPILLAR"
.LASF567:
	.string	"S_SKEL_STND"
.LASF1550:
	.string	"mus_introa"
.LASF722:
	.string	"S_SARG_STND2"
.LASF40:
	.string	"indetermined"
.LASF468:
	.string	"S_SPOS_DIE1"
.LASF469:
	.string	"S_SPOS_DIE2"
.LASF470:
	.string	"S_SPOS_DIE3"
.LASF471:
	.string	"S_SPOS_DIE4"
.LASF472:
	.string	"S_SPOS_DIE5"
.LASF1501:
	.string	"PST_REBORN"
.LASF1492:
	.string	"atkstate"
.LASF1197:
	.string	"S_HANGBNOBRAIN"
.LASF731:
	.string	"S_SARG_ATK1"
.LASF732:
	.string	"S_SARG_ATK2"
.LASF733:
	.string	"S_SARG_ATK3"
.LASF322:
	.string	"S_PLASMAUP"
.LASF1217:
	.string	"tics"
.LASF1078:
	.string	"S_YKEY"
.LASF1377:
	.string	"speed"
.LASF291:
	.string	"S_DSNR1"
.LASF960:
	.string	"S_PAIN_DIE1"
.LASF490:
	.string	"S_VILE_RUN2"
.LASF1579:
	.string	"mus_shawn3"
.LASF1208:
	.string	"S_TECHLAMP4"
.LASF654:
	.string	"S_CPOS_RUN1"
.LASF655:
	.string	"S_CPOS_RUN2"
.LASF656:
	.string	"S_CPOS_RUN3"
.LASF657:
	.string	"S_CPOS_RUN4"
.LASF90:
	.string	"actionf_p1"
.LASF91:
	.string	"actionf_p2"
.LASF192:
	.string	"SPR_BPAK"
.LASF661:
	.string	"S_CPOS_RUN8"
.LASF1058:
	.string	"S_BEXP5"
.LASF105:
	.string	"mapthing_t"
.LASF423:
	.string	"S_POSS_RUN2"
.LASF424:
	.string	"S_POSS_RUN3"
.LASF425:
	.string	"S_POSS_RUN4"
.LASF742:
	.string	"S_SARG_RAISE1"
.LASF426:
	.string	"S_POSS_RUN5"
.LASF92:
	.string	"acp1"
.LASF87:
	.string	"st_chatstateenum_t"
.LASF746:
	.string	"S_SARG_RAISE5"
.LASF747:
	.string	"S_SARG_RAISE6"
.LASF1326:
	.string	"MT_MISC53"
.LASF231:
	.string	"SPR_SMGT"
.LASF1022:
	.string	"S_KEENPAIN"
.LASF370:
	.string	"S_BFGEXP2"
.LASF371:
	.string	"S_BFGEXP3"
.LASF372:
	.string	"S_BFGEXP4"
.LASF1649:
	.string	"st_palette"
.LASF301:
	.string	"S_CHAINFLASH1"
.LASF302:
	.string	"S_CHAINFLASH2"
.LASF257:
	.string	"S_PISTOLDOWN"
.LASF96:
	.string	"memblock_s"
.LASF35:
	.string	"memblock_t"
.LASF922:
	.string	"S_CYBER_RUN1"
.LASF923:
	.string	"S_CYBER_RUN2"
.LASF924:
	.string	"S_CYBER_RUN3"
.LASF925:
	.string	"S_CYBER_RUN4"
.LASF926:
	.string	"S_CYBER_RUN5"
.LASF927:
	.string	"S_CYBER_RUN6"
.LASF928:
	.string	"S_CYBER_RUN7"
.LASF929:
	.string	"S_CYBER_RUN8"
.LASF1366:
	.string	"seesound"
.LASF1109:
	.string	"S_PMAP2"
.LASF1110:
	.string	"S_PMAP3"
.LASF1111:
	.string	"S_PMAP4"
.LASF1112:
	.string	"S_PMAP5"
.LASF1113:
	.string	"S_PMAP6"
.LASF1638:
	.string	"cheat_mypos_seq"
.LASF1642:
	.string	"cheat_ammonokey"
.LASF1439:
	.string	"bonuscount"
.LASF840:
	.string	"S_SKULL_PAIN2"
.LASF1485:
	.string	"inum"
.LASF1370:
	.string	"painchance"
.LASF666:
	.string	"S_CPOS_PAIN"
.LASF1450:
	.string	"ceilingheight"
.LASF38:
	.string	"commercial"
.LASF1604:
	.string	"tallnum"
.LASF1575:
	.string	"mus_adrian"
.LASF1582:
	.string	"mus_ultima"
.LASF1660:
	.string	"STlib_updateMultIcon"
.LASF971:
	.string	"S_PAIN_RAISE6"
.LASF1460:
	.string	"specialdata"
.LASF1309:
	.string	"MT_MISC36"
.LASF775:
	.string	"S_BOSS_RUN1"
.LASF776:
	.string	"S_BOSS_RUN2"
.LASF777:
	.string	"S_BOSS_RUN3"
.LASF778:
	.string	"S_BOSS_RUN4"
.LASF779:
	.string	"S_BOSS_RUN5"
.LASF297:
	.string	"S_CHAINUP"
.LASF1710:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1434:
	.string	"killcount"
.LASF916:
	.string	"S_ARACH_PLEX2"
.LASF1160:
	.string	"S_TORCHTREE"
.LASF972:
	.string	"S_SSWV_STND"
.LASF918:
	.string	"S_ARACH_PLEX4"
.LASF1019:
	.string	"S_COMMKEEN10"
.LASF1020:
	.string	"S_COMMKEEN11"
.LASF1021:
	.string	"S_COMMKEEN12"
.LASF936:
	.string	"S_CYBER_PAIN"
.LASF1146:
	.string	"S_LIVESTICK"
.LASF455:
	.string	"S_SPOS_RUN1"
.LASF213:
	.string	"SPR_SMIT"
.LASF12:
	.string	"boolean"
.LASF458:
	.string	"S_SPOS_RUN4"
.LASF459:
	.string	"S_SPOS_RUN5"
.LASF150:
	.string	"SPR_SKUL"
.LASF461:
	.string	"S_SPOS_RUN7"
.LASF462:
	.string	"S_SPOS_RUN8"
.LASF1119:
	.string	"S_BROK"
.LASF1364:
	.string	"spawnhealth"
.LASF249:
	.string	"S_PUNCHDOWN"
.LASF915:
	.string	"S_ARACH_PLEX"
.LASF1176:
	.string	"S_GREENTORCH"
.LASF63:
	.string	"wp_supershotgun"
.LASF315:
	.string	"S_SAWDOWN"
.LASF1214:
	.string	"statenum_t"
.LASF1254:
	.string	"MT_TROOPSHOT"
.LASF1239:
	.string	"MT_BRUISERSHOT"
.LASF1594:
	.string	"st_chatstate"
.LASF20:
	.string	"ticcmd_t"
.LASF1359:
	.string	"MT_MISC86"
.LASF920:
	.string	"S_CYBER_STND"
.LASF1621:
	.string	"w_maxammo"
.LASF403:
	.string	"S_PLAY_PAIN2"
.LASF798:
	.string	"S_BOSS_RAISE4"
.LASF799:
	.string	"S_BOSS_RAISE5"
.LASF1216:
	.string	"frame"
.LASF142:
	.string	"SPR_MANF"
.LASF653:
	.string	"S_CPOS_STND2"
.LASF466:
	.string	"S_SPOS_PAIN"
.LASF57:
	.string	"wp_shotgun"
.LASF434:
	.string	"S_POSS_PAIN2"
.LASF1260:
	.string	"MT_PUFF"
.LASF306:
	.string	"S_MISSILE1"
.LASF307:
	.string	"S_MISSILE2"
.LASF308:
	.string	"S_MISSILE3"
.LASF682:
	.string	"S_CPOS_RAISE2"
.LASF683:
	.string	"S_CPOS_RAISE3"
.LASF684:
	.string	"S_CPOS_RAISE4"
.LASF1444:
	.string	"psprites"
.LASF1126:
	.string	"S_MGUN"
.LASF1238:
	.string	"MT_BRUISER"
.LASF191:
	.string	"SPR_SBOX"
.LASF1538:
	.string	"mus_e3m2"
.LASF1436:
	.string	"secretcount"
.LASF1361:
	.string	"mobjtype_t"
.LASF1375:
	.string	"xdeathstate"
.LASF1540:
	.string	"mus_e3m4"
.LASF1677:
	.string	"ST_Start"
.LASF1421:
	.string	"powers"
.LASF835:
	.string	"S_SKULL_ATK1"
.LASF836:
	.string	"S_SKULL_ATK2"
.LASF837:
	.string	"S_SKULL_ATK3"
.LASF838:
	.string	"S_SKULL_ATK4"
.LASF816:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1240:
	.string	"MT_KNIGHT"
.LASF1480:
	.string	"oldnum"
.LASF7:
	.string	"signed char"
.LASF15:
	.string	"sidemove"
.LASF1382:
	.string	"activesound"
.LASF467:
	.string	"S_SPOS_PAIN2"
.LASF1620:
	.string	"w_ammo"
.LASF631:
	.string	"S_FATT_ATK10"
.LASF1688:
	.string	"refresh"
.LASF228:
	.string	"SPR_TGRN"
.LASF1495:
	.string	"ps_weapon"
.LASF1285:
	.string	"MT_MEGA"
.LASF130:
	.string	"SPR_BFE1"
.LASF131:
	.string	"SPR_BFE2"
.LASF1459:
	.string	"thinglist"
.LASF1319:
	.string	"MT_MISC46"
.LASF1645:
	.string	"cheat_powerup"
.LASF1586:
	.string	"NUMMUSIC"
.LASF1478:
	.string	"columnofs"
.LASF1247:
	.string	"MT_KEEN"
.LASF1457:
	.string	"blockbox"
.LASF73:
	.string	"ammotype_t"
.LASF688:
	.string	"S_TROO_STND"
.LASF635:
	.string	"S_FATT_DIE2"
.LASF326:
	.string	"S_PLASMAFLASH2"
.LASF1484:
	.string	"oldinum"
.LASF66:
	.string	"weapontype_t"
.LASF18:
	.string	"chatchar"
.LASF379:
	.string	"S_TFOG2"
.LASF380:
	.string	"S_TFOG3"
.LASF381:
	.string	"S_TFOG4"
.LASF382:
	.string	"S_TFOG5"
.LASF383:
	.string	"S_TFOG6"
.LASF384:
	.string	"S_TFOG7"
.LASF385:
	.string	"S_TFOG8"
.LASF386:
	.string	"S_TFOG9"
.LASF801:
	.string	"S_BOSS_RAISE7"
.LASF1430:
	.string	"attackdown"
.LASF106:
	.string	"SPR_TROO"
.LASF117:
	.string	"SPR_SAWG"
.LASF761:
	.string	"S_HEAD_DIE6"
.LASF166:
	.string	"SPR_BON1"
.LASF167:
	.string	"SPR_BON2"
.LASF1603:
	.string	"sbar"
.LASF1703:
	.string	"lastcalc"
.LASF50:
	.string	"it_redcard"
.LASF1155:
	.string	"S_TALLREDCOL"
.LASF1656:
	.string	"I_Error"
.LASF1667:
	.string	"G_DeferedInitNew"
.LASF1400:
	.string	"state"
.LASF1130:
	.string	"S_SHOT"
.LASF986:
	.string	"S_SSWV_ATK5"
.LASF1135:
	.string	"S_BLOODYTWITCH2"
.LASF1136:
	.string	"S_BLOODYTWITCH3"
.LASF1137:
	.string	"S_BLOODYTWITCH4"
.LASF876:
	.string	"S_SPID_DIE10"
.LASF877:
	.string	"S_SPID_DIE11"
.LASF1422:
	.string	"cards"
.LASF1553:
	.string	"mus_countd"
.LASF1702:
	.string	"doevilgrin"
.LASF1547:
	.string	"mus_intro"
.LASF223:
	.string	"SPR_ELEC"
.LASF1024:
	.string	"S_BRAIN"
.LASF1622:
	.string	"st_fragscount"
.LASF1661:
	.string	"STlib_updateBinIcon"
.LASF1242:
	.string	"MT_SPIDER"
.LASF1107:
	.string	"S_SUIT"
.LASF121:
	.string	"SPR_BFGF"
.LASF120:
	.string	"SPR_BFGG"
.LASF1698:
	.string	"badguyangle"
.LASF947:
	.string	"S_PAIN_STND"
.LASF363:
	.string	"S_BFGLAND"
.LASF1053:
	.string	"S_BAR2"
.LASF1426:
	.string	"pendingweapon"
.LASF1663:
	.string	"STlib_updateNum"
.LASF98:
	.string	"function"
.LASF1662:
	.string	"STlib_updatePercent"
.LASF68:
	.string	"am_shell"
.LASF1659:
	.string	"W_CacheLumpName"
.LASF1398:
	.string	"validcount"
.LASF1437:
	.string	"message"
.LASF643:
	.string	"S_FATT_DIE10"
.LASF54:
	.string	"NUMCARDS"
.LASF1180:
	.string	"S_REDTORCH"
.LASF1700:
	.string	"lastattackdown"
.LASF1605:
	.string	"tallpercent"
.LASF1569:
	.string	"mus_shawn2"
.LASF1258:
	.string	"MT_BFG"
.LASF427:
	.string	"S_POSS_RUN6"
.LASF1599:
	.string	"st_cursoron"
.LASF1505:
	.string	"CF_NOMOMENTUM"
.LASF137:
	.string	"SPR_VILE"
.LASF1261:
	.string	"MT_BLOOD"
.LASF256:
	.string	"S_PISTOL"
.LASF1690:
	.string	"ST_doRefresh"
.LASF1637:
	.string	"cheat_clev_seq"
.LASF11:
	.string	"true"
.LASF44:
	.string	"sk_medium"
.LASF1646:
	.string	"cheat_choppers"
.LASF906:
	.string	"S_BSPI_RAISE1"
.LASF907:
	.string	"S_BSPI_RAISE2"
.LASF908:
	.string	"S_BSPI_RAISE3"
.LASF909:
	.string	"S_BSPI_RAISE4"
.LASF910:
	.string	"S_BSPI_RAISE5"
.LASF911:
	.string	"S_BSPI_RAISE6"
.LASF912:
	.string	"S_BSPI_RAISE7"
.LASF24:
	.string	"ev_joystick"
.LASF1396:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF995:
	.string	"S_SSWV_XDIE1"
.LASF996:
	.string	"S_SSWV_XDIE2"
.LASF997:
	.string	"S_SSWV_XDIE3"
.LASF998:
	.string	"S_SSWV_XDIE4"
.LASF999:
	.string	"S_SSWV_XDIE5"
.LASF1000:
	.string	"S_SSWV_XDIE6"
.LASF1001:
	.string	"S_SSWV_XDIE7"
.LASF1002:
	.string	"S_SSWV_XDIE8"
.LASF1003:
	.string	"S_SSWV_XDIE9"
.LASF293:
	.string	"S_DSGUNFLASH1"
.LASF294:
	.string	"S_DSGUNFLASH2"
.LASF1292:
	.string	"MT_MISC22"
.LASF1445:
	.string	"didsecret"
.LASF551:
	.string	"S_FIRE25"
.LASF645:
	.string	"S_FATT_RAISE2"
.LASF1328:
	.string	"MT_MISC55"
.LASF1418:
	.string	"deltaviewheight"
.LASF52:
	.string	"it_yellowskull"
.LASF1083:
	.string	"S_RSKULL2"
.LASF1409:
	.string	"tracer"
.LASF858:
	.string	"S_SPID_RUN10"
.LASF859:
	.string	"S_SPID_RUN11"
.LASF860:
	.string	"S_SPID_RUN12"
.LASF1602:
	.string	"st_fragson"
.LASF1587:
	.string	"rcsid"
.LASF1674:
	.string	"V_DrawPatch"
.LASF1631:
	.string	"cheat_god_seq"
.LASF1384:
	.string	"raisestate"
.LASF1624:
	.string	"oldweaponsowned"
.LASF309:
	.string	"S_MISSILEFLASH1"
.LASF310:
	.string	"S_MISSILEFLASH2"
.LASF311:
	.string	"S_MISSILEFLASH3"
.LASF312:
	.string	"S_MISSILEFLASH4"
.LASF172:
	.string	"SPR_RSKU"
.LASF1636:
	.string	"cheat_powerup_seq"
.LASF1691:
	.string	"ST_drawWidgets"
.LASF1640:
	.string	"cheat_god"
.LASF95:
	.string	"think_t"
.LASF14:
	.string	"forwardmove"
.LASF670:
	.string	"S_CPOS_DIE3"
.LASF671:
	.string	"S_CPOS_DIE4"
.LASF1680:
	.string	"ST_unloadData"
.LASF672:
	.string	"S_CPOS_DIE5"
.LASF673:
	.string	"S_CPOS_DIE6"
.LASF674:
	.string	"S_CPOS_DIE7"
.LASF1503:
	.string	"CF_NOCLIP"
.LASF1555:
	.string	"mus_doom"
.LASF1115:
	.string	"S_PVIS2"
.LASF1253:
	.string	"MT_BARREL"
.LASF847:
	.string	"S_SPID_STND"
.LASF619:
	.string	"S_FATT_RUN10"
.LASF620:
	.string	"S_FATT_RUN11"
.LASF621:
	.string	"S_FATT_RUN12"
.LASF1245:
	.string	"MT_PAIN"
.LASF1173:
	.string	"S_BLUETORCH2"
.LASF1385:
	.string	"mobjinfo_t"
.LASF1174:
	.string	"S_BLUETORCH3"
.LASF1608:
	.string	"faces"
.LASF1175:
	.string	"S_BLUETORCH4"
.LASF232:
	.string	"SPR_SMRT"
.LASF334:
	.string	"S_BFGFLASH1"
.LASF335:
	.string	"S_BFGFLASH2"
.LASF1689:
	.string	"ST_diffDraw"
.LASF868:
	.string	"S_SPID_DIE2"
.LASF1591:
	.string	"lu_palette"
.LASF149:
	.string	"SPR_BOS2"
.LASF871:
	.string	"S_SPID_DIE5"
.LASF872:
	.string	"S_SPID_DIE6"
.LASF873:
	.string	"S_SPID_DIE7"
.LASF1628:
	.string	"st_randomnumber"
.LASF874:
	.string	"S_SPID_DIE8"
.LASF1164:
	.string	"S_EVILEYE2"
.LASF1165:
	.string	"S_EVILEYE3"
.LASF1166:
	.string	"S_EVILEYE4"
.LASF339:
	.string	"S_PUFF1"
.LASF340:
	.string	"S_PUFF2"
.LASF341:
	.string	"S_PUFF3"
.LASF160:
	.string	"SPR_BOSF"
.LASF1462:
	.string	"lines"
.LASF1623:
	.string	"st_oldhealth"
.LASF148:
	.string	"SPR_BOSS"
.LASF1257:
	.string	"MT_PLASMA"
.LASF893:
	.string	"S_BSPI_ATK1"
.LASF894:
	.string	"S_BSPI_ATK2"
.LASF895:
	.string	"S_BSPI_ATK3"
.LASF896:
	.string	"S_BSPI_ATK4"
.LASF1075:
	.string	"S_BKEY2"
.LASF64:
	.string	"NUMWEAPONS"
.LASF1488:
	.string	"st_binicon_t"
.LASF1581:
	.string	"mus_evil"
.LASF880:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF1482:
	.string	"st_number_t"
.LASF882:
	.string	"S_BSPI_RUN2"
.LASF1026:
	.string	"S_BRAIN_DIE1"
.LASF1027:
	.string	"S_BRAIN_DIE2"
.LASF1028:
	.string	"S_BRAIN_DIE3"
.LASF1029:
	.string	"S_BRAIN_DIE4"
.LASF1589:
	.string	"st_firsttime"
.LASF361:
	.string	"S_BFGSHOT"
.LASF1167:
	.string	"S_FLOATSKULL"
.LASF517:
	.string	"S_VILE_DIE1"
.LASF518:
	.string	"S_VILE_DIE2"
.LASF519:
	.string	"S_VILE_DIE3"
.LASF520:
	.string	"S_VILE_DIE4"
.LASF521:
	.string	"S_VILE_DIE5"
.LASF522:
	.string	"S_VILE_DIE6"
.LASF523:
	.string	"S_VILE_DIE7"
.LASF524:
	.string	"S_VILE_DIE8"
.LASF525:
	.string	"S_VILE_DIE9"
.LASF1438:
	.string	"damagecount"
.LASF201:
	.string	"SPR_SMT2"
.LASF1077:
	.string	"S_RKEY2"
.LASF1048:
	.string	"S_ARM1"
.LASF1050:
	.string	"S_ARM2"
.LASF1143:
	.string	"S_HEADCANDLES"
.LASF179:
	.string	"SPR_PINS"
.LASF773:
	.string	"S_BOSS_STND"
.LASF753:
	.string	"S_HEAD_PAIN"
.LASF49:
	.string	"it_yellowcard"
.LASF81:
	.string	"AutomapState"
.LASF1701:
	.string	"priority"
.LASF1229:
	.string	"MT_TRACER"
.LASF634:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF636:
	.string	"S_FATT_DIE3"
.LASF637:
	.string	"S_FATT_DIE4"
.LASF638:
	.string	"S_FATT_DIE5"
.LASF639:
	.string	"S_FATT_DIE6"
.LASF640:
	.string	"S_FATT_DIE7"
.LASF641:
	.string	"S_FATT_DIE8"
.LASF642:
	.string	"S_FATT_DIE9"
.LASF709:
	.string	"S_TROO_XDIE2"
.LASF710:
	.string	"S_TROO_XDIE3"
.LASF711:
	.string	"S_TROO_XDIE4"
.LASF712:
	.string	"S_TROO_XDIE5"
.LASF713:
	.string	"S_TROO_XDIE6"
.LASF714:
	.string	"S_TROO_XDIE7"
.LASF715:
	.string	"S_TROO_XDIE8"
.LASF1612:
	.string	"w_ready"
.LASF184:
	.string	"SPR_CLIP"
.LASF1156:
	.string	"S_SHRTREDCOL"
.LASF1199:
	.string	"S_HANGTSKULL"
.LASF1517:
	.string	"players"
.LASF80:
	.string	"NUMPOWERS"
.LASF984:
	.string	"S_SSWV_ATK3"
.LASF985:
	.string	"S_SSWV_ATK4"
.LASF290:
	.string	"S_DSGUN10"
.LASF75:
	.string	"pw_strength"
.LASF488:
	.string	"S_VILE_STND2"
.LASF218:
	.string	"SPR_CAND"
.LASF1235:
	.string	"MT_SERGEANT"
.LASF43:
	.string	"sk_easy"
.LASF1679:
	.string	"ST_initData"
.LASF1086:
	.string	"S_STIM"
.LASF69:
	.string	"am_cell"
.LASF48:
	.string	"it_bluecard"
.LASF1393:
	.string	"floorz"
.LASF749:
	.string	"S_HEAD_RUN1"
.LASF404:
	.string	"S_PLAY_DIE1"
.LASF405:
	.string	"S_PLAY_DIE2"
.LASF406:
	.string	"S_PLAY_DIE3"
.LASF407:
	.string	"S_PLAY_DIE4"
.LASF408:
	.string	"S_PLAY_DIE5"
.LASF409:
	.string	"S_PLAY_DIE6"
.LASF410:
	.string	"S_PLAY_DIE7"
.LASF1708:
	.string	"epsd"
.LASF420:
	.string	"S_POSS_STND"
.LASF1618:
	.string	"w_keyboxes"
.LASF376:
	.string	"S_TFOG"
.LASF1313:
	.string	"MT_MISC40"
.LASF1314:
	.string	"MT_MISC41"
.LASF1410:
	.string	"subsector_s"
.LASF736:
	.string	"S_SARG_DIE1"
.LASF737:
	.string	"S_SARG_DIE2"
.LASF738:
	.string	"S_SARG_DIE3"
.LASF739:
	.string	"S_SARG_DIE4"
.LASF1037:
	.string	"S_SPAWNFIRE1"
.LASF1038:
	.string	"S_SPAWNFIRE2"
.LASF1039:
	.string	"S_SPAWNFIRE3"
.LASF1040:
	.string	"S_SPAWNFIRE4"
.LASF1041:
	.string	"S_SPAWNFIRE5"
.LASF1042:
	.string	"S_SPAWNFIRE6"
.LASF1043:
	.string	"S_SPAWNFIRE7"
.LASF1044:
	.string	"S_SPAWNFIRE8"
.LASF708:
	.string	"S_TROO_XDIE1"
.LASF17:
	.string	"consistancy"
.LASF1411:
	.string	"sector"
.LASF1681:
	.string	"ST_unloadGraphics"
.LASF1201:
	.string	"S_HANGTNOBRAIN"
.LASF84:
	.string	"StartChatState"
.LASF356:
	.string	"S_PLASEXP2"
.LASF357:
	.string	"S_PLASEXP3"
.LASF358:
	.string	"S_PLASEXP4"
.LASF359:
	.string	"S_PLASEXP5"
.LASF61:
	.string	"wp_bfg"
.LASF1185:
	.string	"S_BTORCHSHRT2"
.LASF1186:
	.string	"S_BTORCHSHRT3"
.LASF1187:
	.string	"S_BTORCHSHRT4"
.LASF489:
	.string	"S_VILE_RUN1"
.LASF279:
	.string	"S_DSGUNDOWN"
.LASF491:
	.string	"S_VILE_RUN3"
.LASF492:
	.string	"S_VILE_RUN4"
.LASF493:
	.string	"S_VILE_RUN5"
.LASF494:
	.string	"S_VILE_RUN6"
.LASF495:
	.string	"S_VILE_RUN7"
.LASF496:
	.string	"S_VILE_RUN8"
.LASF497:
	.string	"S_VILE_RUN9"
.LASF740:
	.string	"S_SARG_DIE5"
.LASF741:
	.string	"S_SARG_DIE6"
.LASF1588:
	.string	"plyr"
.LASF1387:
	.string	"thinker"
.LASF1616:
	.string	"w_arms"
.LASF581:
	.string	"S_SKEL_FIST1"
.LASF582:
	.string	"S_SKEL_FIST2"
.LASF583:
	.string	"S_SKEL_FIST3"
.LASF584:
	.string	"S_SKEL_FIST4"
.LASF320:
	.string	"S_PLASMA"
.LASF1099:
	.string	"S_PINS"
.LASF1694:
	.string	"ST_Ticker"
.LASF1491:
	.string	"readystate"
.LASF1172:
	.string	"S_BLUETORCH"
.LASF610:
	.string	"S_FATT_RUN1"
.LASF611:
	.string	"S_FATT_RUN2"
.LASF612:
	.string	"S_FATT_RUN3"
.LASF613:
	.string	"S_FATT_RUN4"
.LASF77:
	.string	"pw_ironfeet"
.LASF615:
	.string	"S_FATT_RUN6"
.LASF616:
	.string	"S_FATT_RUN7"
.LASF617:
	.string	"S_FATT_RUN8"
.LASF1148:
	.string	"S_MEAT2"
.LASF1149:
	.string	"S_MEAT3"
.LASF1150:
	.string	"S_MEAT4"
.LASF1151:
	.string	"S_MEAT5"
.LASF263:
	.string	"S_PISTOLFLASH"
.LASF1449:
	.string	"floorheight"
.LASF483:
	.string	"S_SPOS_RAISE2"
.LASF484:
	.string	"S_SPOS_RAISE3"
.LASF485:
	.string	"S_SPOS_RAISE4"
.LASF486:
	.string	"S_SPOS_RAISE5"
.LASF1626:
	.string	"st_faceindex"
.LASF175:
	.string	"SPR_MEDI"
.LASF177:
	.string	"SPR_PINV"
.LASF1025:
	.string	"S_BRAIN_PAIN"
.LASF296:
	.string	"S_CHAINDOWN"
.LASF1670:
	.string	"S_ChangeMusic"
.LASF515:
	.string	"S_VILE_PAIN"
.LASF562:
	.string	"S_TRACER"
.LASF1564:
	.string	"mus_ddtbl2"
.LASF1687:
	.string	"fullscreen"
.LASF982:
	.string	"S_SSWV_ATK1"
.LASF983:
	.string	"S_SSWV_ATK2"
.LASF512:
	.string	"S_VILE_HEAL1"
.LASF513:
	.string	"S_VILE_HEAL2"
.LASF514:
	.string	"S_VILE_HEAL3"
.LASF987:
	.string	"S_SSWV_ATK6"
.LASF1403:
	.string	"movecount"
.LASF169:
	.string	"SPR_RKEY"
.LASF1686:
	.string	"ST_Drawer"
.LASF1133:
	.string	"S_STALAG"
.LASF1510:
	.string	"screens"
.LASF1657:
	.string	"Z_Malloc"
.LASF848:
	.string	"S_SPID_STND2"
.LASF102:
	.string	"angle_t"
.LASF1559:
	.string	"mus_in_cit"
.LASF1452:
	.string	"ceilingpic"
.LASF1134:
	.string	"S_BLOODYTWITCH"
.LASF1203:
	.string	"S_SMALLPOOL"
.LASF1498:
	.string	"pspdef_t"
.LASF1329:
	.string	"MT_MISC56"
.LASF632:
	.string	"S_FATT_PAIN"
.LASF396:
	.string	"S_PLAY_RUN1"
.LASF397:
	.string	"S_PLAY_RUN2"
.LASF398:
	.string	"S_PLAY_RUN3"
.LASF399:
	.string	"S_PLAY_RUN4"
.LASF1124:
	.string	"S_BPAK"
.LASF101:
	.string	"double"
.LASF164:
	.string	"SPR_BEXP"
.LASF1614:
	.string	"w_health"
.LASF1414:
	.string	"player_s"
.LASF1081:
	.string	"S_BSKULL2"
.LASF123:
	.string	"SPR_PUFF"
.LASF1010:
	.string	"S_COMMKEEN"
.LASF1431:
	.string	"usedown"
.LASF802:
	.string	"S_BOS2_STND"
.LASF129:
	.string	"SPR_BFS1"
.LASF1033:
	.string	"S_SPAWN1"
.LASF1034:
	.string	"S_SPAWN2"
.LASF1035:
	.string	"S_SPAWN3"
.LASF1036:
	.string	"S_SPAWN4"
.LASF1206:
	.string	"S_TECHLAMP2"
.LASF1207:
	.string	"S_TECHLAMP3"
.LASF62:
	.string	"wp_chainsaw"
.LASF1243:
	.string	"MT_BABY"
.LASF1429:
	.string	"maxammo"
.LASF1147:
	.string	"S_LIVESTICK2"
.LASF1192:
	.string	"S_RTORCHSHRT"
.LASF86:
	.string	"GetChatState"
.LASF1289:
	.string	"MT_MISC19"
.LASF151:
	.string	"SPR_SPID"
.LASF748:
	.string	"S_HEAD_STND"
.LASF1515:
	.string	"automapactive"
.LASF723:
	.string	"S_SARG_RUN1"
.LASF724:
	.string	"S_SARG_RUN2"
.LASF27:
	.string	"data1"
.LASF28:
	.string	"data2"
.LASF29:
	.string	"data3"
.LASF729:
	.string	"S_SARG_RUN7"
.LASF730:
	.string	"S_SARG_RUN8"
.LASF1267:
	.string	"MT_MISC1"
.LASF1268:
	.string	"MT_MISC2"
.LASF1269:
	.string	"MT_MISC3"
.LASF1270:
	.string	"MT_MISC4"
.LASF1271:
	.string	"MT_MISC5"
.LASF1272:
	.string	"MT_MISC6"
.LASF1273:
	.string	"MT_MISC7"
.LASF1274:
	.string	"MT_MISC8"
.LASF1275:
	.string	"MT_MISC9"
.LASF313:
	.string	"S_SAW"
.LASF180:
	.string	"SPR_MEGA"
.LASF402:
	.string	"S_PLAY_PAIN"
.LASF354:
	.string	"S_PLASBALL2"
.LASF1496:
	.string	"ps_flash"
.LASF1415:
	.string	"playerstate"
.LASF82:
	.string	"FirstPersonState"
.LASF158:
	.string	"SPR_KEEN"
.LASF988:
	.string	"S_SSWV_PAIN"
.LASF1369:
	.string	"painstate"
.LASF1023:
	.string	"S_KEENPAIN2"
.LASF79:
	.string	"pw_infrared"
.LASF510:
	.string	"S_VILE_ATK10"
.LASF511:
	.string	"S_VILE_ATK11"
.LASF1477:
	.string	"topoffset"
.LASF989:
	.string	"S_SSWV_PAIN2"
.LASF1353:
	.string	"MT_MISC80"
.LASF1376:
	.string	"deathsound"
.LASF1063:
	.string	"S_BON1A"
.LASF1064:
	.string	"S_BON1B"
.LASF1065:
	.string	"S_BON1C"
.LASF1066:
	.string	"S_BON1D"
.LASF1067:
	.string	"S_BON1E"
.LASF1469:
	.string	"sector_t"
.LASF1475:
	.string	"width"
.LASF178:
	.string	"SPR_PSTR"
.LASF1291:
	.string	"MT_MISC21"
.LASF734:
	.string	"S_SARG_PAIN"
.LASF1286:
	.string	"MT_CLIP"
.LASF193:
	.string	"SPR_BFUG"
.LASF1341:
	.string	"MT_MISC68"
.LASF1059:
	.string	"S_BBAR1"
.LASF1060:
	.string	"S_BBAR2"
.LASF1061:
	.string	"S_BBAR3"
.LASF247:
	.string	"S_LIGHTDONE"
.LASF898:
	.string	"S_BSPI_PAIN2"
.LASF1483:
	.string	"st_percent_t"
.LASF1423:
	.string	"backpack"
.LASF1570:
	.string	"mus_messag"
.LASF1643:
	.string	"cheat_noclip"
.LASF698:
	.string	"S_TROO_ATK1"
.LASF699:
	.string	"S_TROO_ATK2"
.LASF700:
	.string	"S_TROO_ATK3"
.LASF842:
	.string	"S_SKULL_DIE2"
.LASF843:
	.string	"S_SKULL_DIE3"
.LASF844:
	.string	"S_SKULL_DIE4"
.LASF845:
	.string	"S_SKULL_DIE5"
.LASF846:
	.string	"S_SKULL_DIE6"
.LASF197:
	.string	"SPR_PLAS"
.LASF1069:
	.string	"S_BON2A"
.LASF1070:
	.string	"S_BON2B"
.LASF110:
	.string	"SPR_PISF"
.LASF109:
	.string	"SPR_PISG"
.LASF1073:
	.string	"S_BON2E"
.LASF1296:
	.string	"MT_CHAINGUN"
.LASF345:
	.string	"S_TBALLX1"
.LASF346:
	.string	"S_TBALLX2"
.LASF347:
	.string	"S_TBALLX3"
.LASF65:
	.string	"wp_nochange"
.LASF1233:
	.string	"MT_CHAINGUY"
.LASF1448:
	.string	"degenmobj_t"
.LASF841:
	.string	"S_SKULL_DIE1"
.LASF1500:
	.string	"PST_DEAD"
.LASF1204:
	.string	"S_BRAINSTEM"
.LASF1009:
	.string	"S_KEENSTND"
.LASF134:
	.string	"SPR_PLAY"
.LASF1563:
	.string	"mus_doom2"
.LASF1425:
	.string	"readyweapon"
.LASF1634:
	.string	"cheat_noclip_seq"
.LASF1539:
	.string	"mus_e3m3"
.LASF1144:
	.string	"S_HEADCANDLES2"
.LASF1263:
	.string	"MT_IFOG"
.LASF1561:
	.string	"mus_stlks2"
.LASF1567:
	.string	"mus_stlks3"
.LASF225:
	.string	"SPR_FSKU"
.LASF1508:
	.string	"cheatseq_t"
.LASF460:
	.string	"S_SPOS_RUN6"
.LASF1644:
	.string	"cheat_commercial_noclip"
.LASF316:
	.string	"S_SAWUP"
.LASF1049:
	.string	"S_ARM1A"
.LASF652:
	.string	"S_CPOS_STND"
.LASF1304:
	.string	"MT_MISC31"
.LASF1397:
	.string	"momz"
.LASF1123:
	.string	"S_SBOX"
.LASF1306:
	.string	"MT_MISC33"
.LASF1307:
	.string	"MT_MISC34"
.LASF1465:
	.string	"bbox"
.LASF355:
	.string	"S_PLASEXP"
.LASF1310:
	.string	"MT_MISC37"
.LASF1139:
	.string	"S_DEADBOTTOM"
.LASF1196:
	.string	"S_HANGNOGUTS"
.LASF1368:
	.string	"attacksound"
.LASF1100:
	.string	"S_PINS2"
.LASF1101:
	.string	"S_PINS3"
.LASF1102:
	.string	"S_PINS4"
.LASF954:
	.string	"S_PAIN_ATK1"
.LASF955:
	.string	"S_PAIN_ATK2"
.LASF956:
	.string	"S_PAIN_ATK3"
.LASF957:
	.string	"S_PAIN_ATK4"
.LASF266:
	.string	"S_SGUNUP"
.LASF1712:
	.string	"M_Random"
.LASF1467:
	.string	"frontsector"
.LASF219:
	.string	"SPR_CBRA"
.LASF1374:
	.string	"deathstate"
.LASF1051:
	.string	"S_ARM2A"
.LASF21:
	.string	"ev_keydown"
.LASF1597:
	.string	"st_chat"
.LASF1476:
	.string	"leftoffset"
.LASF1079:
	.string	"S_YKEY2"
.LASF529:
	.string	"S_FIRE3"
.LASF1367:
	.string	"reactiontime"
.LASF534:
	.string	"S_FIRE8"
.LASF774:
	.string	"S_BOSS_STND2"
.LASF1684:
	.string	"facenum"
.LASF669:
	.string	"S_CPOS_DIE2"
.LASF1389:
	.string	"sprev"
.LASF317:
	.string	"S_SAW1"
.LASF318:
	.string	"S_SAW2"
.LASF319:
	.string	"S_SAW3"
.LASF1630:
	.string	"cheat_choppers_seq"
.LASF1062:
	.string	"S_BON1"
.LASF1068:
	.string	"S_BON2"
.LASF1406:
	.string	"player"
.LASF1556:
	.string	"mus_the_da"
.LASF314:
	.string	"S_SAWB"
.LASF702:
	.string	"S_TROO_PAIN2"
.LASF1249:
	.string	"MT_BOSSSPIT"
.LASF527:
	.string	"S_FIRE1"
.LASF528:
	.string	"S_FIRE2"
.LASF88:
	.string	"fixed_t"
.LASF530:
	.string	"S_FIRE4"
.LASF531:
	.string	"S_FIRE5"
.LASF532:
	.string	"S_FIRE6"
.LASF533:
	.string	"S_FIRE7"
.LASF187:
	.string	"SPR_BROK"
.LASF535:
	.string	"S_FIRE9"
.LASF1317:
	.string	"MT_MISC44"
.LASF1318:
	.string	"MT_MISC45"
.LASF1120:
	.string	"S_CELL"
.LASF1320:
	.string	"MT_MISC47"
.LASF185:
	.string	"SPR_AMMO"
.LASF1321:
	.string	"MT_MISC48"
.LASF1322:
	.string	"MT_MISC49"
.LASF833:
	.string	"S_SKULL_RUN1"
.LASF834:
	.string	"S_SKULL_RUN2"
.LASF1200:
	.string	"S_HANGTLOOKUP"
.LASF295:
	.string	"S_CHAIN"
.LASF25:
	.string	"evtype_t"
.LASF325:
	.string	"S_PLASMAFLASH1"
.LASF281:
	.string	"S_DSGUN1"
.LASF282:
	.string	"S_DSGUN2"
.LASF176:
	.string	"SPR_SOUL"
.LASF136:
	.string	"SPR_SPOS"
.LASF285:
	.string	"S_DSGUN5"
.LASF286:
	.string	"S_DSGUN6"
.LASF287:
	.string	"S_DSGUN7"
.LASF288:
	.string	"S_DSGUN8"
.LASF289:
	.string	"S_DSGUN9"
.LASF453:
	.string	"S_SPOS_STND"
.LASF156:
	.string	"SPR_PAIN"
.LASF681:
	.string	"S_CPOS_RAISE1"
.LASF1424:
	.string	"frags"
.LASF1419:
	.string	"armorpoints"
.LASF19:
	.string	"buttons"
.LASF330:
	.string	"S_BFG1"
.LASF331:
	.string	"S_BFG2"
.LASF332:
	.string	"S_BFG3"
.LASF333:
	.string	"S_BFG4"
.LASF245:
	.string	"spritenum_t"
.LASF292:
	.string	"S_DSNR2"
.LASF1593:
	.string	"st_msgcounter"
.LASF832:
	.string	"S_SKULL_STND2"
.LASF1095:
	.string	"S_PINV2"
.LASF1096:
	.string	"S_PINV3"
.LASF725:
	.string	"S_SARG_RUN3"
.LASF726:
	.string	"S_SARG_RUN4"
.LASF1211:
	.string	"S_TECH2LAMP3"
.LASF1212:
	.string	"S_TECH2LAMP4"
.LASF1463:
	.string	"line_s"
.LASF108:
	.string	"SPR_PUNG"
.LASF676:
	.string	"S_CPOS_XDIE2"
.LASF677:
	.string	"S_CPOS_XDIE3"
.LASF678:
	.string	"S_CPOS_XDIE4"
.LASF679:
	.string	"S_CPOS_XDIE5"
.LASF680:
	.string	"S_CPOS_XDIE6"
.LASF1576:
	.string	"mus_messg2"
.LASF861:
	.string	"S_SPID_ATK1"
.LASF862:
	.string	"S_SPID_ATK2"
.LASF863:
	.string	"S_SPID_ATK3"
.LASF864:
	.string	"S_SPID_ATK4"
.LASF585:
	.string	"S_SKEL_MISS1"
.LASF586:
	.string	"S_SKEL_MISS2"
.LASF587:
	.string	"S_SKEL_MISS3"
.LASF588:
	.string	"S_SKEL_MISS4"
.LASF342:
	.string	"S_PUFF4"
.LASF1082:
	.string	"S_RSKULL"
.LASF914:
	.string	"S_ARACH_PLAZ2"
.LASF1697:
	.string	"ST_updateFaceWidget"
.LASF1323:
	.string	"MT_MISC50"
.LASF762:
	.string	"S_HEAD_RAISE1"
.LASF1358:
	.string	"MT_MISC85"
.LASF763:
	.string	"S_HEAD_RAISE2"
.LASF764:
	.string	"S_HEAD_RAISE3"
.LASF1432:
	.string	"cheats"
.LASF171:
	.string	"SPR_BSKU"
.LASF766:
	.string	"S_HEAD_RAISE5"
.LASF767:
	.string	"S_HEAD_RAISE6"
.LASF1509:
	.string	"weaponinfo"
.LASF1301:
	.string	"MT_SUPERSHOTGUN"
.LASF182:
	.string	"SPR_PMAP"
.LASF1030:
	.string	"S_BRAINEYE"
.LASF183:
	.string	"SPR_PVIS"
.LASF1672:
	.string	"cht_CheckCheat"
.LASF1499:
	.string	"PST_LIVE"
.LASF1666:
	.string	"R_PointToAngle2"
.LASF1259:
	.string	"MT_ARACHPLAZ"
.LASF32:
	.string	"user"
.LASF508:
	.string	"S_VILE_ATK8"
.LASF449:
	.string	"S_POSS_RAISE1"
.LASF450:
	.string	"S_POSS_RAISE2"
.LASF451:
	.string	"S_POSS_RAISE3"
.LASF452:
	.string	"S_POSS_RAISE4"
.LASF304:
	.string	"S_MISSILEDOWN"
.LASF1487:
	.string	"oldval"
.LASF1168:
	.string	"S_FLOATSKULL2"
.LASF1169:
	.string	"S_FLOATSKULL3"
.LASF1676:
	.string	"ST_Stop"
.LASF1625:
	.string	"st_facecount"
.LASF1103:
	.string	"S_MEGA"
.LASF783:
	.string	"S_BOSS_ATK1"
.LASF784:
	.string	"S_BOSS_ATK2"
.LASF785:
	.string	"S_BOSS_ATK3"
.LASF1392:
	.string	"subsector"
.LASF241:
	.string	"SPR_BRS1"
.LASF1447:
	.string	"vertex_t"
.LASF590:
	.string	"S_SKEL_PAIN2"
.LASF1127:
	.string	"S_CSAW"
.LASF74:
	.string	"pw_invulnerability"
.LASF770:
	.string	"S_BRBALLX1"
.LASF771:
	.string	"S_BRBALLX2"
.LASF772:
	.string	"S_BRBALLX3"
.LASF900:
	.string	"S_BSPI_DIE2"
.LASF901:
	.string	"S_BSPI_DIE3"
.LASF902:
	.string	"S_BSPI_DIE4"
.LASF903:
	.string	"S_BSPI_DIE5"
.LASF58:
	.string	"wp_chaingun"
.LASF905:
	.string	"S_BSPI_DIE7"
.LASF1574:
	.string	"mus_theda3"
.LASF47:
	.string	"skill_t"
.LASF456:
	.string	"S_SPOS_RUN2"
.LASF1468:
	.string	"backsector"
.LASF457:
	.string	"S_SPOS_RUN3"
.LASF959:
	.string	"S_PAIN_PAIN2"
.LASF594:
	.string	"S_SKEL_DIE4"
.LASF190:
	.string	"SPR_SHEL"
.LASF1342:
	.string	"MT_MISC69"
.LASF1420:
	.string	"armortype"
.LASF10:
	.string	"false"
.LASF242:
	.string	"SPR_TLMP"
.LASF421:
	.string	"S_POSS_STND2"
.LASF1300:
	.string	"MT_SHOTGUN"
.LASF1225:
	.string	"MT_SHOTGUY"
.LASF1610:
	.string	"armsbg"
.LASF1435:
	.string	"itemcount"
.LASF1205:
	.string	"S_TECHLAMP"
.LASF1706:
	.string	"ST_Responder"
.LASF1246:
	.string	"MT_WOLFSS"
.LASF803:
	.string	"S_BOS2_STND2"
.LASF1456:
	.string	"soundtarget"
.LASF298:
	.string	"S_CHAIN1"
.LASF299:
	.string	"S_CHAIN2"
.LASF300:
	.string	"S_CHAIN3"
.LASF351:
	.string	"S_RBALLX2"
.LASF352:
	.string	"S_RBALLX3"
.LASF227:
	.string	"SPR_TBLU"
.LASF454:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1619:
	.string	"w_armor"
.LASF1388:
	.string	"snext"
.LASF1592:
	.string	"st_clock"
.LASF72:
	.string	"am_noammo"
.LASF97:
	.string	"thinker_s"
.LASF99:
	.string	"thinker_t"
.LASF1518:
	.string	"mus_None"
.LASF1573:
	.string	"mus_ampie"
.LASF1699:
	.string	"diffang"
.LASF430:
	.string	"S_POSS_ATK1"
.LASF431:
	.string	"S_POSS_ATK2"
.LASF432:
	.string	"S_POSS_ATK3"
.LASF42:
	.string	"sk_baby"
.LASF1344:
	.string	"MT_MISC71"
.LASF1193:
	.string	"S_RTORCHSHRT2"
.LASF1194:
	.string	"S_RTORCHSHRT3"
.LASF1195:
	.string	"S_RTORCHSHRT4"
.LASF1097:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF881:
	.string	"S_BSPI_RUN1"
.LASF1350:
	.string	"MT_MISC77"
.LASF1351:
	.string	"MT_MISC78"
.LASF1352:
	.string	"MT_MISC79"
.LASF1241:
	.string	"MT_SKULL"
.LASF1671:
	.string	"cht_GetParam"
.LASF1228:
	.string	"MT_UNDEAD"
.LASF41:
	.string	"GameMode_t"
.LASF34:
	.string	"prev"
.LASF591:
	.string	"S_SKEL_DIE1"
.LASF592:
	.string	"S_SKEL_DIE2"
.LASF593:
	.string	"S_SKEL_DIE3"
.LASF138:
	.string	"SPR_FIRE"
.LASF595:
	.string	"S_SKEL_DIE5"
.LASF596:
	.string	"S_SKEL_DIE6"
.LASF1202:
	.string	"S_COLONGIBS"
.LASF1511:
	.string	"gamemode"
.LASF243:
	.string	"SPR_TLP2"
.LASF353:
	.string	"S_PLASBALL"
.LASF199:
	.string	"SPR_SGN2"
.LASF104:
	.string	"options"
.LASF152:
	.string	"SPR_BSPI"
.LASF1627:
	.string	"keyboxes"
.LASF1520:
	.string	"mus_e1m2"
.LASF154:
	.string	"SPR_APBX"
.LASF1443:
	.string	"colormap"
.LASF39:
	.string	"retail"
.LASF1277:
	.string	"MT_MISC11"
.LASF1278:
	.string	"MT_MISC12"
.LASF1280:
	.string	"MT_MISC13"
.LASF1282:
	.string	"MT_MISC14"
.LASF1283:
	.string	"MT_MISC15"
.LASF1284:
	.string	"MT_MISC16"
.LASF1287:
	.string	"MT_MISC17"
.LASF1288:
	.string	"MT_MISC18"
.LASF1116:
	.string	"S_CLIP"
.LASF1378:
	.string	"radius"
.LASF1401:
	.string	"health"
.LASF1250:
	.string	"MT_BOSSTARGET"
.LASF1600:
	.string	"st_notdeathmatch"
.LASF1455:
	.string	"soundtraversed"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"st_stuff.c"
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
