	.file	"g_game.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "g_game.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: g_game.c,v 1.8 1997/02/03 22:45:09 b1 Exp $"
	.globl	gameaction
	.bss
	.align 4
	.type	gameaction, @object
	.size	gameaction, 4
gameaction:
	.zero	4
	.globl	gamestate
	.align 4
	.type	gamestate, @object
	.size	gamestate, 4
gamestate:
	.zero	4
	.globl	gameskill
	.align 4
	.type	gameskill, @object
	.size	gameskill, 4
gameskill:
	.zero	4
	.globl	respawnmonsters
	.align 4
	.type	respawnmonsters, @object
	.size	respawnmonsters, 4
respawnmonsters:
	.zero	4
	.globl	gameepisode
	.align 4
	.type	gameepisode, @object
	.size	gameepisode, 4
gameepisode:
	.zero	4
	.globl	gamemap
	.align 4
	.type	gamemap, @object
	.size	gamemap, 4
gamemap:
	.zero	4
	.globl	paused
	.align 4
	.type	paused, @object
	.size	paused, 4
paused:
	.zero	4
	.globl	sendpause
	.align 4
	.type	sendpause, @object
	.size	sendpause, 4
sendpause:
	.zero	4
	.globl	sendsave
	.align 4
	.type	sendsave, @object
	.size	sendsave, 4
sendsave:
	.zero	4
	.globl	usergame
	.align 4
	.type	usergame, @object
	.size	usergame, 4
usergame:
	.zero	4
	.globl	timingdemo
	.align 4
	.type	timingdemo, @object
	.size	timingdemo, 4
timingdemo:
	.zero	4
	.globl	nodrawers
	.align 4
	.type	nodrawers, @object
	.size	nodrawers, 4
nodrawers:
	.zero	4
	.globl	noblit
	.align 4
	.type	noblit, @object
	.size	noblit, 4
noblit:
	.zero	4
	.globl	starttime
	.align 4
	.type	starttime, @object
	.size	starttime, 4
starttime:
	.zero	4
	.globl	viewactive
	.align 4
	.type	viewactive, @object
	.size	viewactive, 4
viewactive:
	.zero	4
	.globl	deathmatch
	.align 4
	.type	deathmatch, @object
	.size	deathmatch, 4
deathmatch:
	.zero	4
	.globl	netgame
	.align 4
	.type	netgame, @object
	.size	netgame, 4
netgame:
	.zero	4
	.globl	playeringame
	.align 16
	.type	playeringame, @object
	.size	playeringame, 16
playeringame:
	.zero	16
	.globl	players
	.align 32
	.type	players, @object
	.size	players, 1280
players:
	.zero	1280
	.globl	consoleplayer
	.align 4
	.type	consoleplayer, @object
	.size	consoleplayer, 4
consoleplayer:
	.zero	4
	.globl	displayplayer
	.align 4
	.type	displayplayer, @object
	.size	displayplayer, 4
displayplayer:
	.zero	4
	.globl	gametic
	.align 4
	.type	gametic, @object
	.size	gametic, 4
gametic:
	.zero	4
	.globl	levelstarttic
	.align 4
	.type	levelstarttic, @object
	.size	levelstarttic, 4
levelstarttic:
	.zero	4
	.globl	totalkills
	.align 4
	.type	totalkills, @object
	.size	totalkills, 4
totalkills:
	.zero	4
	.globl	totalitems
	.align 4
	.type	totalitems, @object
	.size	totalitems, 4
totalitems:
	.zero	4
	.globl	totalsecret
	.align 4
	.type	totalsecret, @object
	.size	totalsecret, 4
totalsecret:
	.zero	4
	.globl	demoname
	.align 32
	.type	demoname, @object
	.size	demoname, 32
demoname:
	.zero	32
	.globl	demorecording
	.align 4
	.type	demorecording, @object
	.size	demorecording, 4
demorecording:
	.zero	4
	.globl	demoplayback
	.align 4
	.type	demoplayback, @object
	.size	demoplayback, 4
demoplayback:
	.zero	4
	.globl	netdemo
	.align 4
	.type	netdemo, @object
	.size	netdemo, 4
netdemo:
	.zero	4
	.globl	demobuffer
	.align 8
	.type	demobuffer, @object
	.size	demobuffer, 8
demobuffer:
	.zero	8
	.globl	demo_p
	.align 8
	.type	demo_p, @object
	.size	demo_p, 8
demo_p:
	.zero	8
	.globl	demoend
	.align 8
	.type	demoend, @object
	.size	demoend, 8
demoend:
	.zero	8
	.globl	singledemo
	.align 4
	.type	singledemo, @object
	.size	singledemo, 4
singledemo:
	.zero	4
	.globl	precache
	.data
	.align 4
	.type	precache, @object
	.size	precache, 4
precache:
	.long	1
	.globl	wminfo
	.bss
	.align 32
	.type	wminfo, @object
	.size	wminfo, 200
wminfo:
	.zero	200
	.globl	consistancy
	.align 32
	.type	consistancy, @object
	.size	consistancy, 96
consistancy:
	.zero	96
	.globl	savebuffer
	.align 8
	.type	savebuffer, @object
	.size	savebuffer, 8
savebuffer:
	.zero	8
	.globl	key_right
	.align 4
	.type	key_right, @object
	.size	key_right, 4
key_right:
	.zero	4
	.globl	key_left
	.align 4
	.type	key_left, @object
	.size	key_left, 4
key_left:
	.zero	4
	.globl	key_up
	.align 4
	.type	key_up, @object
	.size	key_up, 4
key_up:
	.zero	4
	.globl	key_down
	.align 4
	.type	key_down, @object
	.size	key_down, 4
key_down:
	.zero	4
	.globl	key_strafeleft
	.align 4
	.type	key_strafeleft, @object
	.size	key_strafeleft, 4
key_strafeleft:
	.zero	4
	.globl	key_straferight
	.align 4
	.type	key_straferight, @object
	.size	key_straferight, 4
key_straferight:
	.zero	4
	.globl	key_fire
	.align 4
	.type	key_fire, @object
	.size	key_fire, 4
key_fire:
	.zero	4
	.globl	key_use
	.align 4
	.type	key_use, @object
	.size	key_use, 4
key_use:
	.zero	4
	.globl	key_strafe
	.align 4
	.type	key_strafe, @object
	.size	key_strafe, 4
key_strafe:
	.zero	4
	.globl	key_speed
	.align 4
	.type	key_speed, @object
	.size	key_speed, 4
key_speed:
	.zero	4
	.globl	mousebfire
	.align 4
	.type	mousebfire, @object
	.size	mousebfire, 4
mousebfire:
	.zero	4
	.globl	mousebstrafe
	.align 4
	.type	mousebstrafe, @object
	.size	mousebstrafe, 4
mousebstrafe:
	.zero	4
	.globl	mousebforward
	.align 4
	.type	mousebforward, @object
	.size	mousebforward, 4
mousebforward:
	.zero	4
	.globl	joybfire
	.align 4
	.type	joybfire, @object
	.size	joybfire, 4
joybfire:
	.zero	4
	.globl	joybstrafe
	.align 4
	.type	joybstrafe, @object
	.size	joybstrafe, 4
joybstrafe:
	.zero	4
	.globl	joybuse
	.align 4
	.type	joybuse, @object
	.size	joybuse, 4
joybuse:
	.zero	4
	.globl	joybspeed
	.align 4
	.type	joybspeed, @object
	.size	joybspeed, 4
joybspeed:
	.zero	4
	.globl	forwardmove
	.data
	.align 8
	.type	forwardmove, @object
	.size	forwardmove, 8
forwardmove:
	.long	25
	.long	50
	.globl	sidemove
	.align 8
	.type	sidemove, @object
	.size	sidemove, 8
sidemove:
	.long	24
	.long	40
	.globl	angleturn
	.align 8
	.type	angleturn, @object
	.size	angleturn, 12
angleturn:
	.long	640
	.long	1280
	.long	320
	.globl	gamekeydown
	.bss
	.align 32
	.type	gamekeydown, @object
	.size	gamekeydown, 1024
gamekeydown:
	.zero	1024
	.globl	turnheld
	.align 4
	.type	turnheld, @object
	.size	turnheld, 4
turnheld:
	.zero	4
	.globl	mousearray
	.align 16
	.type	mousearray, @object
	.size	mousearray, 16
mousearray:
	.zero	16
	.globl	mousebuttons
	.section	.data.rel.local,"aw"
	.align 8
	.type	mousebuttons, @object
	.size	mousebuttons, 8
mousebuttons:
	.quad	mousearray+4
	.globl	mousex
	.bss
	.align 4
	.type	mousex, @object
	.size	mousex, 4
mousex:
	.zero	4
	.globl	mousey
	.align 4
	.type	mousey, @object
	.size	mousey, 4
mousey:
	.zero	4
	.globl	dclicktime
	.align 4
	.type	dclicktime, @object
	.size	dclicktime, 4
dclicktime:
	.zero	4
	.globl	dclickstate
	.align 4
	.type	dclickstate, @object
	.size	dclickstate, 4
dclickstate:
	.zero	4
	.globl	dclicks
	.align 4
	.type	dclicks, @object
	.size	dclicks, 4
dclicks:
	.zero	4
	.globl	dclicktime2
	.align 4
	.type	dclicktime2, @object
	.size	dclicktime2, 4
dclicktime2:
	.zero	4
	.globl	dclickstate2
	.align 4
	.type	dclickstate2, @object
	.size	dclickstate2, 4
dclickstate2:
	.zero	4
	.globl	dclicks2
	.align 4
	.type	dclicks2, @object
	.size	dclicks2, 4
dclicks2:
	.zero	4
	.globl	joyxmove
	.align 4
	.type	joyxmove, @object
	.size	joyxmove, 4
joyxmove:
	.zero	4
	.globl	joyymove
	.align 4
	.type	joyymove, @object
	.size	joyymove, 4
joyymove:
	.zero	4
	.globl	joyarray
	.align 16
	.type	joyarray, @object
	.size	joyarray, 20
joyarray:
	.zero	20
	.globl	joybuttons
	.section	.data.rel.local
	.align 8
	.type	joybuttons, @object
	.size	joybuttons, 8
joybuttons:
	.quad	joyarray+4
	.globl	savegameslot
	.bss
	.align 4
	.type	savegameslot, @object
	.size	savegameslot, 4
savegameslot:
	.zero	4
	.globl	savedescription
	.align 32
	.type	savedescription, @object
	.size	savedescription, 32
savedescription:
	.zero	32
	.globl	bodyque
	.align 32
	.type	bodyque, @object
	.size	bodyque, 256
bodyque:
	.zero	256
	.globl	bodyqueslot
	.align 4
	.type	bodyqueslot, @object
	.size	bodyqueslot, 4
bodyqueslot:
	.zero	4
	.globl	statcopy
	.align 8
	.type	statcopy, @object
	.size	statcopy, 8
statcopy:
	.zero	8
	.text
	.globl	G_CmdChecksum
	.type	G_CmdChecksum, @function
G_CmdChecksum:
.LFB6:
	.file 1 "g_game.c"
	.loc 1 220 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# cmd, cmd
# g_game.c:222:     int		sum = 0; 
	.loc 1 222 10
	movl	$0, -4(%rbp)	#, sum
# g_game.c:224:     for (i=0 ; i< sizeof(*cmd)/4 - 1 ; i++) 
	.loc 1 224 11
	movl	$0, -8(%rbp)	#, i
# g_game.c:224:     for (i=0 ; i< sizeof(*cmd)/4 - 1 ; i++) 
	.loc 1 224 5
	jmp	.L2	#
.L3:
# g_game.c:225: 	sum += ((int *)cmd)[i]; 
	.loc 1 225 21
	movl	-8(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# cmd, tmp89
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# g_game.c:225: 	sum += ((int *)cmd)[i]; 
	.loc 1 225 6
	addl	%eax, -4(%rbp)	# _4, sum
# g_game.c:224:     for (i=0 ; i< sizeof(*cmd)/4 - 1 ; i++) 
	.loc 1 224 41 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L2:
# g_game.c:224:     for (i=0 ; i< sizeof(*cmd)/4 - 1 ; i++) 
	.loc 1 224 17 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	je	.L3	#,
# g_game.c:227:     return sum; 
	.loc 1 227 12
	movl	-4(%rbp), %eax	# sum, _9
# g_game.c:228: } 
	.loc 1 228 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	G_CmdChecksum, .-G_CmdChecksum
	.globl	G_BuildTiccmd
	.type	G_BuildTiccmd, @function
G_BuildTiccmd:
.LFB7:
	.loc 1 238 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cmd, cmd
# g_game.c:249:     base = I_BaseTiccmd ();		// empty, or external driver
	.loc 1 249 12
	call	I_BaseTiccmd@PLT	#
	movq	%rax, -8(%rbp)	# tmp311, base
# g_game.c:250:     memcpy (cmd,base,sizeof(*cmd)); 
	.loc 1 250 5
	movq	-8(%rbp), %rax	# base, tmp312
	movq	(%rax), %rdx	# MEM <unsigned long> [(char * {ref-all})base_264], _265
	movq	-56(%rbp), %rax	# cmd, tmp313
	movq	%rdx, (%rax)	# _265, MEM <unsigned long> [(char * {ref-all})cmd_266(D)]
# g_game.c:253: 	consistancy[consoleplayer][maketic%BACKUPTICS]; 
	.loc 1 253 28
	movl	consoleplayer(%rip), %esi	# consoleplayer, consoleplayer.0_1
# g_game.c:253: 	consistancy[consoleplayer][maketic%BACKUPTICS]; 
	.loc 1 253 36
	movl	maketic(%rip), %ecx	# maketic, maketic.1_2
	movslq	%ecx, %rax	# maketic.1_2, tmp314
	imulq	$715827883, %rax, %rax	#, tmp314, tmp315
	shrq	$32, %rax	#, tmp316
	movl	%eax, %edx	# tmp316, tmp317
	sarl	%edx	# tmp317
	movl	%ecx, %eax	# maketic.1_2, tmp318
	sarl	$31, %eax	#, tmp318
	subl	%eax, %edx	# tmp318, _3
	movl	%edx, %eax	# _3, tmp319
	addl	%eax, %eax	# tmp319
	addl	%edx, %eax	# _3, tmp319
	sall	$2, %eax	#, tmp320
	subl	%eax, %ecx	# tmp319, maketic.1_2
	movl	%ecx, %edx	# maketic.1_2, _3
# g_game.c:253: 	consistancy[consoleplayer][maketic%BACKUPTICS]; 
	.loc 1 253 28
	movslq	%edx, %rcx	# _3, tmp321
	movslq	%esi, %rdx	# consoleplayer.0_1, tmp322
	movq	%rdx, %rax	# tmp322, tmp323
	addq	%rax, %rax	# tmp323
	addq	%rdx, %rax	# tmp322, tmp323
	salq	$2, %rax	#, tmp324
	addq	%rcx, %rax	# tmp321, tmp325
	leaq	(%rax,%rax), %rdx	#, tmp326
	leaq	consistancy(%rip), %rax	#, tmp327
	movzwl	(%rdx,%rax), %edx	# consistancy[consoleplayer.0_1][_3], _4
# g_game.c:252:     cmd->consistancy = 
	.loc 1 252 22
	movq	-56(%rbp), %rax	# cmd, tmp328
	movw	%dx, 4(%rax)	# _4, cmd_266(D)->consistancy
# g_game.c:256:     strafe = gamekeydown[key_strafe] || mousebuttons[mousebstrafe] 
	.loc 1 256 25
	movl	key_strafe(%rip), %eax	# key_strafe, key_strafe.3_5
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp330
	leaq	gamekeydown(%rip), %rax	#, tmp331
	movl	(%rdx,%rax), %eax	# gamekeydown[key_strafe.3_5], _6
# g_game.c:257: 	|| joybuttons[joybstrafe]; 
	.loc 1 257 2
	testl	%eax, %eax	# _6
	jne	.L6	#,
# g_game.c:256:     strafe = gamekeydown[key_strafe] || mousebuttons[mousebstrafe] 
	.loc 1 256 53
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.4_7
	movl	mousebstrafe(%rip), %edx	# mousebstrafe, mousebstrafe.5_8
	movslq	%edx, %rdx	# mousebstrafe.5_8, _9
	salq	$2, %rdx	#, _10
	addq	%rdx, %rax	# _10, _11
	movl	(%rax), %eax	# *_11, _12
# g_game.c:256:     strafe = gamekeydown[key_strafe] || mousebuttons[mousebstrafe] 
	.loc 1 256 38
	testl	%eax, %eax	# _12
	jne	.L6	#,
# g_game.c:257: 	|| joybuttons[joybstrafe]; 
	.loc 1 257 15 discriminator 2
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.6_13
	movl	joybstrafe(%rip), %edx	# joybstrafe, joybstrafe.7_14
	movslq	%edx, %rdx	# joybstrafe.7_14, _15
	salq	$2, %rdx	#, _16
	addq	%rdx, %rax	# _16, _17
	movl	(%rax), %eax	# *_17, _18
# g_game.c:257: 	|| joybuttons[joybstrafe]; 
	.loc 1 257 2 discriminator 2
	testl	%eax, %eax	# _18
	je	.L7	#,
.L6:
# g_game.c:257: 	|| joybuttons[joybstrafe]; 
	.loc 1 257 2 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.2_242
# g_game.c:257: 	|| joybuttons[joybstrafe]; 
	.loc 1 257 2
	jmp	.L8	#
.L7:
# g_game.c:257: 	|| joybuttons[joybstrafe]; 
	.loc 1 257 2 discriminator 3
	movl	$0, %eax	#, iftmp.2_242
.L8:
# g_game.c:256:     strafe = gamekeydown[key_strafe] || mousebuttons[mousebstrafe] 
	.loc 1 256 12 is_stmt 1
	movl	%eax, -20(%rbp)	# iftmp.2_242, strafe
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 24
	movl	key_speed(%rip), %eax	# key_speed, key_speed.9_19
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp333
	leaq	gamekeydown(%rip), %rax	#, tmp334
	movl	(%rdx,%rax), %eax	# gamekeydown[key_speed.9_19], _20
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 36
	testl	%eax, %eax	# _20
	jne	.L9	#,
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 49 discriminator 2
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.10_21
	movl	joybspeed(%rip), %edx	# joybspeed, joybspeed.11_22
	movslq	%edx, %rdx	# joybspeed.11_22, _23
	salq	$2, %rdx	#, _24
	addq	%rdx, %rax	# _24, _25
	movl	(%rax), %eax	# *_25, _26
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 36 discriminator 2
	testl	%eax, %eax	# _26
	je	.L10	#,
.L9:
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 36 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.8_243
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 36
	jmp	.L11	#
.L10:
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 36 discriminator 4
	movl	$0, %eax	#, iftmp.8_243
.L11:
# g_game.c:258:     speed = gamekeydown[key_speed] || joybuttons[joybspeed];
	.loc 1 258 11 is_stmt 1 discriminator 6
	movl	%eax, -16(%rbp)	# iftmp.8_243, speed
# g_game.c:260:     forward = side = 0;
	.loc 1 260 20
	movl	$0, -24(%rbp)	#, side
# g_game.c:260:     forward = side = 0;
	.loc 1 260 13
	movl	-24(%rbp), %eax	# side, tmp335
	movl	%eax, -28(%rbp)	# tmp335, forward
# g_game.c:264:     if (joyxmove < 0
	.loc 1 264 18
	movl	joyxmove(%rip), %eax	# joyxmove, joyxmove.12_27
# g_game.c:264:     if (joyxmove < 0
	.loc 1 264 8
	testl	%eax, %eax	# joyxmove.12_27
	js	.L12	#,
# g_game.c:265: 	|| joyxmove > 0  
	.loc 1 265 14
	movl	joyxmove(%rip), %eax	# joyxmove, joyxmove.13_28
# g_game.c:265: 	|| joyxmove > 0  
	.loc 1 265 2
	testl	%eax, %eax	# joyxmove.13_28
	jg	.L12	#,
# g_game.c:266: 	|| gamekeydown[key_right]
	.loc 1 266 16
	movl	key_right(%rip), %eax	# key_right, key_right.14_29
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp337
	leaq	gamekeydown(%rip), %rax	#, tmp338
	movl	(%rdx,%rax), %eax	# gamekeydown[key_right.14_29], _30
# g_game.c:266: 	|| gamekeydown[key_right]
	.loc 1 266 2
	testl	%eax, %eax	# _30
	jne	.L12	#,
# g_game.c:267: 	|| gamekeydown[key_left]) 
	.loc 1 267 16
	movl	key_left(%rip), %eax	# key_left, key_left.15_31
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp340
	leaq	gamekeydown(%rip), %rax	#, tmp341
	movl	(%rdx,%rax), %eax	# gamekeydown[key_left.15_31], _32
# g_game.c:267: 	|| gamekeydown[key_left]) 
	.loc 1 267 2
	testl	%eax, %eax	# _32
	je	.L13	#,
.L12:
# g_game.c:268: 	turnheld += ticdup; 
	.loc 1 268 11
	movl	turnheld(%rip), %edx	# turnheld, turnheld.16_33
	movl	ticdup(%rip), %eax	# ticdup, ticdup.17_34
	addl	%edx, %eax	# turnheld.16_33, _35
	movl	%eax, turnheld(%rip)	# _35, turnheld
	jmp	.L14	#
.L13:
# g_game.c:270: 	turnheld = 0; 
	.loc 1 270 11
	movl	$0, turnheld(%rip)	#, turnheld
.L14:
# g_game.c:272:     if (turnheld < SLOWTURNTICS) 
	.loc 1 272 18
	movl	turnheld(%rip), %eax	# turnheld, turnheld.18_36
# g_game.c:272:     if (turnheld < SLOWTURNTICS) 
	.loc 1 272 8
	cmpl	$5, %eax	#, turnheld.18_36
	jg	.L15	#,
# g_game.c:273: 	tspeed = 2;             // slow turn 
	.loc 1 273 9
	movl	$2, -32(%rbp)	#, tspeed
	jmp	.L16	#
.L15:
# g_game.c:275: 	tspeed = speed;
	.loc 1 275 9
	movl	-16(%rbp), %eax	# speed, tmp342
	movl	%eax, -32(%rbp)	# tmp342, tspeed
.L16:
# g_game.c:278:     if (strafe) 
	.loc 1 278 8
	cmpl	$0, -20(%rbp)	#, strafe
	je	.L17	#,
# g_game.c:280: 	if (gamekeydown[key_right]) 
	.loc 1 280 17
	movl	key_right(%rip), %eax	# key_right, key_right.19_37
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp344
	leaq	gamekeydown(%rip), %rax	#, tmp345
	movl	(%rdx,%rax), %eax	# gamekeydown[key_right.19_37], _38
# g_game.c:280: 	if (gamekeydown[key_right]) 
	.loc 1 280 5
	testl	%eax, %eax	# _38
	je	.L18	#,
# g_game.c:283: 	    side += sidemove[speed]; 
	.loc 1 283 22
	movl	-16(%rbp), %eax	# speed, tmp347
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp348
	leaq	sidemove(%rip), %rax	#, tmp349
	movl	(%rdx,%rax), %eax	# sidemove[speed_274], _39
# g_game.c:283: 	    side += sidemove[speed]; 
	.loc 1 283 11
	addl	%eax, -24(%rbp)	# _39, side
.L18:
# g_game.c:285: 	if (gamekeydown[key_left]) 
	.loc 1 285 17
	movl	key_left(%rip), %eax	# key_left, key_left.20_40
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp351
	leaq	gamekeydown(%rip), %rax	#, tmp352
	movl	(%rdx,%rax), %eax	# gamekeydown[key_left.20_40], _41
# g_game.c:285: 	if (gamekeydown[key_left]) 
	.loc 1 285 5
	testl	%eax, %eax	# _41
	je	.L19	#,
# g_game.c:288: 	    side -= sidemove[speed]; 
	.loc 1 288 22
	movl	-16(%rbp), %eax	# speed, tmp354
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp355
	leaq	sidemove(%rip), %rax	#, tmp356
	movl	(%rdx,%rax), %eax	# sidemove[speed_274], _42
# g_game.c:288: 	    side -= sidemove[speed]; 
	.loc 1 288 11
	subl	%eax, -24(%rbp)	# _42, side
.L19:
# g_game.c:290: 	if (joyxmove > 0) 
	.loc 1 290 15
	movl	joyxmove(%rip), %eax	# joyxmove, joyxmove.21_43
# g_game.c:290: 	if (joyxmove > 0) 
	.loc 1 290 5
	testl	%eax, %eax	# joyxmove.21_43
	jle	.L20	#,
# g_game.c:291: 	    side += sidemove[speed]; 
	.loc 1 291 22
	movl	-16(%rbp), %eax	# speed, tmp358
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp359
	leaq	sidemove(%rip), %rax	#, tmp360
	movl	(%rdx,%rax), %eax	# sidemove[speed_274], _44
# g_game.c:291: 	    side += sidemove[speed]; 
	.loc 1 291 11
	addl	%eax, -24(%rbp)	# _44, side
.L20:
# g_game.c:292: 	if (joyxmove < 0) 
	.loc 1 292 15
	movl	joyxmove(%rip), %eax	# joyxmove, joyxmove.22_45
# g_game.c:292: 	if (joyxmove < 0) 
	.loc 1 292 5
	testl	%eax, %eax	# joyxmove.22_45
	jns	.L21	#,
# g_game.c:293: 	    side -= sidemove[speed]; 
	.loc 1 293 22
	movl	-16(%rbp), %eax	# speed, tmp362
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp363
	leaq	sidemove(%rip), %rax	#, tmp364
	movl	(%rdx,%rax), %eax	# sidemove[speed_274], _46
# g_game.c:293: 	    side -= sidemove[speed]; 
	.loc 1 293 11
	subl	%eax, -24(%rbp)	# _46, side
	jmp	.L21	#
.L17:
# g_game.c:298: 	if (gamekeydown[key_right]) 
	.loc 1 298 17
	movl	key_right(%rip), %eax	# key_right, key_right.23_47
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp366
	leaq	gamekeydown(%rip), %rax	#, tmp367
	movl	(%rdx,%rax), %eax	# gamekeydown[key_right.23_47], _48
# g_game.c:298: 	if (gamekeydown[key_right]) 
	.loc 1 298 5
	testl	%eax, %eax	# _48
	je	.L22	#,
# g_game.c:299: 	    cmd->angleturn -= angleturn[tspeed]; 
	.loc 1 299 9
	movq	-56(%rbp), %rax	# cmd, tmp368
	movzwl	2(%rax), %eax	# cmd_266(D)->angleturn, _49
	movl	%eax, %ecx	# _49, _50
# g_game.c:299: 	    cmd->angleturn -= angleturn[tspeed]; 
	.loc 1 299 33
	movl	-32(%rbp), %eax	# tspeed, tmp370
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp371
	leaq	angleturn(%rip), %rax	#, tmp372
	movl	(%rdx,%rax), %eax	# angleturn[tspeed_227], _51
# g_game.c:299: 	    cmd->angleturn -= angleturn[tspeed]; 
	.loc 1 299 21
	movl	%eax, %edx	# _51, _52
	movl	%ecx, %eax	# _50, _50
	subl	%edx, %eax	# _52, _50
	movl	%eax, %edx	# _53, _54
	movq	-56(%rbp), %rax	# cmd, tmp373
	movw	%dx, 2(%rax)	# _54, cmd_266(D)->angleturn
.L22:
# g_game.c:300: 	if (gamekeydown[key_left]) 
	.loc 1 300 17
	movl	key_left(%rip), %eax	# key_left, key_left.24_55
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp375
	leaq	gamekeydown(%rip), %rax	#, tmp376
	movl	(%rdx,%rax), %eax	# gamekeydown[key_left.24_55], _56
# g_game.c:300: 	if (gamekeydown[key_left]) 
	.loc 1 300 5
	testl	%eax, %eax	# _56
	je	.L23	#,
# g_game.c:301: 	    cmd->angleturn += angleturn[tspeed]; 
	.loc 1 301 9
	movq	-56(%rbp), %rax	# cmd, tmp377
	movzwl	2(%rax), %eax	# cmd_266(D)->angleturn, _57
	movl	%eax, %ecx	# _57, _58
# g_game.c:301: 	    cmd->angleturn += angleturn[tspeed]; 
	.loc 1 301 33
	movl	-32(%rbp), %eax	# tspeed, tmp379
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp380
	leaq	angleturn(%rip), %rax	#, tmp381
	movl	(%rdx,%rax), %eax	# angleturn[tspeed_227], _59
# g_game.c:301: 	    cmd->angleturn += angleturn[tspeed]; 
	.loc 1 301 21
	addl	%ecx, %eax	# _58, _61
	movl	%eax, %edx	# _61, _62
	movq	-56(%rbp), %rax	# cmd, tmp382
	movw	%dx, 2(%rax)	# _62, cmd_266(D)->angleturn
.L23:
# g_game.c:302: 	if (joyxmove > 0) 
	.loc 1 302 15
	movl	joyxmove(%rip), %eax	# joyxmove, joyxmove.25_63
# g_game.c:302: 	if (joyxmove > 0) 
	.loc 1 302 5
	testl	%eax, %eax	# joyxmove.25_63
	jle	.L24	#,
# g_game.c:303: 	    cmd->angleturn -= angleturn[tspeed]; 
	.loc 1 303 9
	movq	-56(%rbp), %rax	# cmd, tmp383
	movzwl	2(%rax), %eax	# cmd_266(D)->angleturn, _64
	movl	%eax, %ecx	# _64, _65
# g_game.c:303: 	    cmd->angleturn -= angleturn[tspeed]; 
	.loc 1 303 33
	movl	-32(%rbp), %eax	# tspeed, tmp385
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp386
	leaq	angleturn(%rip), %rax	#, tmp387
	movl	(%rdx,%rax), %eax	# angleturn[tspeed_227], _66
# g_game.c:303: 	    cmd->angleturn -= angleturn[tspeed]; 
	.loc 1 303 21
	movl	%eax, %edx	# _66, _67
	movl	%ecx, %eax	# _65, _65
	subl	%edx, %eax	# _67, _65
	movl	%eax, %edx	# _68, _69
	movq	-56(%rbp), %rax	# cmd, tmp388
	movw	%dx, 2(%rax)	# _69, cmd_266(D)->angleturn
.L24:
# g_game.c:304: 	if (joyxmove < 0) 
	.loc 1 304 15
	movl	joyxmove(%rip), %eax	# joyxmove, joyxmove.26_70
# g_game.c:304: 	if (joyxmove < 0) 
	.loc 1 304 5
	testl	%eax, %eax	# joyxmove.26_70
	jns	.L21	#,
# g_game.c:305: 	    cmd->angleturn += angleturn[tspeed]; 
	.loc 1 305 9
	movq	-56(%rbp), %rax	# cmd, tmp389
	movzwl	2(%rax), %eax	# cmd_266(D)->angleturn, _71
	movl	%eax, %ecx	# _71, _72
# g_game.c:305: 	    cmd->angleturn += angleturn[tspeed]; 
	.loc 1 305 33
	movl	-32(%rbp), %eax	# tspeed, tmp391
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp392
	leaq	angleturn(%rip), %rax	#, tmp393
	movl	(%rdx,%rax), %eax	# angleturn[tspeed_227], _73
# g_game.c:305: 	    cmd->angleturn += angleturn[tspeed]; 
	.loc 1 305 21
	addl	%ecx, %eax	# _72, _75
	movl	%eax, %edx	# _75, _76
	movq	-56(%rbp), %rax	# cmd, tmp394
	movw	%dx, 2(%rax)	# _76, cmd_266(D)->angleturn
.L21:
# g_game.c:308:     if (gamekeydown[key_up]) 
	.loc 1 308 20
	movl	key_up(%rip), %eax	# key_up, key_up.27_77
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp396
	leaq	gamekeydown(%rip), %rax	#, tmp397
	movl	(%rdx,%rax), %eax	# gamekeydown[key_up.27_77], _78
# g_game.c:308:     if (gamekeydown[key_up]) 
	.loc 1 308 8
	testl	%eax, %eax	# _78
	je	.L25	#,
# g_game.c:311: 	forward += forwardmove[speed]; 
	.loc 1 311 24
	movl	-16(%rbp), %eax	# speed, tmp399
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp400
	leaq	forwardmove(%rip), %rax	#, tmp401
	movl	(%rdx,%rax), %eax	# forwardmove[speed_274], _79
# g_game.c:311: 	forward += forwardmove[speed]; 
	.loc 1 311 10
	addl	%eax, -28(%rbp)	# _79, forward
.L25:
# g_game.c:313:     if (gamekeydown[key_down]) 
	.loc 1 313 20
	movl	key_down(%rip), %eax	# key_down, key_down.28_80
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp403
	leaq	gamekeydown(%rip), %rax	#, tmp404
	movl	(%rdx,%rax), %eax	# gamekeydown[key_down.28_80], _81
# g_game.c:313:     if (gamekeydown[key_down]) 
	.loc 1 313 8
	testl	%eax, %eax	# _81
	je	.L26	#,
# g_game.c:316: 	forward -= forwardmove[speed]; 
	.loc 1 316 24
	movl	-16(%rbp), %eax	# speed, tmp406
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp407
	leaq	forwardmove(%rip), %rax	#, tmp408
	movl	(%rdx,%rax), %eax	# forwardmove[speed_274], _82
# g_game.c:316: 	forward -= forwardmove[speed]; 
	.loc 1 316 10
	subl	%eax, -28(%rbp)	# _82, forward
.L26:
# g_game.c:318:     if (joyymove < 0) 
	.loc 1 318 18
	movl	joyymove(%rip), %eax	# joyymove, joyymove.29_83
# g_game.c:318:     if (joyymove < 0) 
	.loc 1 318 8
	testl	%eax, %eax	# joyymove.29_83
	jns	.L27	#,
# g_game.c:319: 	forward += forwardmove[speed]; 
	.loc 1 319 24
	movl	-16(%rbp), %eax	# speed, tmp410
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp411
	leaq	forwardmove(%rip), %rax	#, tmp412
	movl	(%rdx,%rax), %eax	# forwardmove[speed_274], _84
# g_game.c:319: 	forward += forwardmove[speed]; 
	.loc 1 319 10
	addl	%eax, -28(%rbp)	# _84, forward
.L27:
# g_game.c:320:     if (joyymove > 0) 
	.loc 1 320 18
	movl	joyymove(%rip), %eax	# joyymove, joyymove.30_85
# g_game.c:320:     if (joyymove > 0) 
	.loc 1 320 8
	testl	%eax, %eax	# joyymove.30_85
	jle	.L28	#,
# g_game.c:321: 	forward -= forwardmove[speed]; 
	.loc 1 321 24
	movl	-16(%rbp), %eax	# speed, tmp414
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp415
	leaq	forwardmove(%rip), %rax	#, tmp416
	movl	(%rdx,%rax), %eax	# forwardmove[speed_274], _86
# g_game.c:321: 	forward -= forwardmove[speed]; 
	.loc 1 321 10
	subl	%eax, -28(%rbp)	# _86, forward
.L28:
# g_game.c:322:     if (gamekeydown[key_straferight]) 
	.loc 1 322 20
	movl	key_straferight(%rip), %eax	# key_straferight, key_straferight.31_87
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp418
	leaq	gamekeydown(%rip), %rax	#, tmp419
	movl	(%rdx,%rax), %eax	# gamekeydown[key_straferight.31_87], _88
# g_game.c:322:     if (gamekeydown[key_straferight]) 
	.loc 1 322 8
	testl	%eax, %eax	# _88
	je	.L29	#,
# g_game.c:323: 	side += sidemove[speed]; 
	.loc 1 323 18
	movl	-16(%rbp), %eax	# speed, tmp421
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp422
	leaq	sidemove(%rip), %rax	#, tmp423
	movl	(%rdx,%rax), %eax	# sidemove[speed_274], _89
# g_game.c:323: 	side += sidemove[speed]; 
	.loc 1 323 7
	addl	%eax, -24(%rbp)	# _89, side
.L29:
# g_game.c:324:     if (gamekeydown[key_strafeleft]) 
	.loc 1 324 20
	movl	key_strafeleft(%rip), %eax	# key_strafeleft, key_strafeleft.32_90
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp425
	leaq	gamekeydown(%rip), %rax	#, tmp426
	movl	(%rdx,%rax), %eax	# gamekeydown[key_strafeleft.32_90], _91
# g_game.c:324:     if (gamekeydown[key_strafeleft]) 
	.loc 1 324 8
	testl	%eax, %eax	# _91
	je	.L30	#,
# g_game.c:325: 	side -= sidemove[speed];
	.loc 1 325 18
	movl	-16(%rbp), %eax	# speed, tmp428
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp429
	leaq	sidemove(%rip), %rax	#, tmp430
	movl	(%rdx,%rax), %eax	# sidemove[speed_274], _92
# g_game.c:325: 	side -= sidemove[speed];
	.loc 1 325 7
	subl	%eax, -24(%rbp)	# _92, side
.L30:
# g_game.c:328:     cmd->chatchar = HU_dequeueChatChar(); 
	.loc 1 328 21
	call	HU_dequeueChatChar@PLT	#
# g_game.c:328:     cmd->chatchar = HU_dequeueChatChar(); 
	.loc 1 328 21 is_stmt 0 discriminator 1
	movl	%eax, %edx	# _93, _94
# g_game.c:328:     cmd->chatchar = HU_dequeueChatChar(); 
	.loc 1 328 19 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# cmd, tmp431
	movb	%dl, 6(%rax)	# _94, cmd_266(D)->chatchar
# g_game.c:330:     if (gamekeydown[key_fire] || mousebuttons[mousebfire] 
	.loc 1 330 20
	movl	key_fire(%rip), %eax	# key_fire, key_fire.33_95
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp433
	leaq	gamekeydown(%rip), %rax	#, tmp434
	movl	(%rdx,%rax), %eax	# gamekeydown[key_fire.33_95], _96
# g_game.c:330:     if (gamekeydown[key_fire] || mousebuttons[mousebfire] 
	.loc 1 330 8
	testl	%eax, %eax	# _96
	jne	.L31	#,
# g_game.c:330:     if (gamekeydown[key_fire] || mousebuttons[mousebfire] 
	.loc 1 330 46 discriminator 1
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.34_97
	movl	mousebfire(%rip), %edx	# mousebfire, mousebfire.35_98
	movslq	%edx, %rdx	# mousebfire.35_98, _99
	salq	$2, %rdx	#, _100
	addq	%rdx, %rax	# _100, _101
	movl	(%rax), %eax	# *_101, _102
# g_game.c:330:     if (gamekeydown[key_fire] || mousebuttons[mousebfire] 
	.loc 1 330 31 discriminator 1
	testl	%eax, %eax	# _102
	jne	.L31	#,
# g_game.c:331: 	|| joybuttons[joybfire]) 
	.loc 1 331 15
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.36_103
	movl	joybfire(%rip), %edx	# joybfire, joybfire.37_104
	movslq	%edx, %rdx	# joybfire.37_104, _105
	salq	$2, %rdx	#, _106
	addq	%rdx, %rax	# _106, _107
	movl	(%rax), %eax	# *_107, _108
# g_game.c:331: 	|| joybuttons[joybfire]) 
	.loc 1 331 2
	testl	%eax, %eax	# _108
	je	.L32	#,
.L31:
# g_game.c:332: 	cmd->buttons |= BT_ATTACK; 
	.loc 1 332 5
	movq	-56(%rbp), %rax	# cmd, tmp435
	movzbl	7(%rax), %eax	# cmd_266(D)->buttons, _109
# g_game.c:332: 	cmd->buttons |= BT_ATTACK; 
	.loc 1 332 15
	orl	$1, %eax	#, _109
	movl	%eax, %edx	# _109, _110
	movq	-56(%rbp), %rax	# cmd, tmp436
	movb	%dl, 7(%rax)	# _110, cmd_266(D)->buttons
.L32:
# g_game.c:334:     if (gamekeydown[key_use] || joybuttons[joybuse] ) 
	.loc 1 334 20
	movl	key_use(%rip), %eax	# key_use, key_use.38_111
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp438
	leaq	gamekeydown(%rip), %rax	#, tmp439
	movl	(%rdx,%rax), %eax	# gamekeydown[key_use.38_111], _112
# g_game.c:334:     if (gamekeydown[key_use] || joybuttons[joybuse] ) 
	.loc 1 334 8
	testl	%eax, %eax	# _112
	jne	.L33	#,
# g_game.c:334:     if (gamekeydown[key_use] || joybuttons[joybuse] ) 
	.loc 1 334 43 discriminator 1
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.39_113
	movl	joybuse(%rip), %edx	# joybuse, joybuse.40_114
	movslq	%edx, %rdx	# joybuse.40_114, _115
	salq	$2, %rdx	#, _116
	addq	%rdx, %rax	# _116, _117
	movl	(%rax), %eax	# *_117, _118
# g_game.c:334:     if (gamekeydown[key_use] || joybuttons[joybuse] ) 
	.loc 1 334 30 discriminator 1
	testl	%eax, %eax	# _118
	je	.L34	#,
.L33:
# g_game.c:336: 	cmd->buttons |= BT_USE;
	.loc 1 336 5
	movq	-56(%rbp), %rax	# cmd, tmp440
	movzbl	7(%rax), %eax	# cmd_266(D)->buttons, _119
# g_game.c:336: 	cmd->buttons |= BT_USE;
	.loc 1 336 15
	orl	$2, %eax	#, _119
	movl	%eax, %edx	# _119, _120
	movq	-56(%rbp), %rax	# cmd, tmp441
	movb	%dl, 7(%rax)	# _120, cmd_266(D)->buttons
# g_game.c:338: 	dclicks = 0;                   
	.loc 1 338 10
	movl	$0, dclicks(%rip)	#, dclicks
.L34:
# g_game.c:342:     for (i=0 ; i<NUMWEAPONS-1 ; i++)        
	.loc 1 342 11
	movl	$0, -36(%rbp)	#, i
# g_game.c:342:     for (i=0 ; i<NUMWEAPONS-1 ; i++)        
	.loc 1 342 5
	jmp	.L35	#
.L38:
# g_game.c:343: 	if (gamekeydown['1'+i]) 
	.loc 1 343 21
	movl	-36(%rbp), %eax	# i, tmp442
	addl	$49, %eax	#, _121
# g_game.c:343: 	if (gamekeydown['1'+i]) 
	.loc 1 343 17
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp444
	leaq	gamekeydown(%rip), %rax	#, tmp445
	movl	(%rdx,%rax), %eax	# gamekeydown[_121], _122
# g_game.c:343: 	if (gamekeydown['1'+i]) 
	.loc 1 343 5
	testl	%eax, %eax	# _122
	je	.L36	#,
# g_game.c:345: 	    cmd->buttons |= BT_CHANGE; 
	.loc 1 345 9
	movq	-56(%rbp), %rax	# cmd, tmp446
	movzbl	7(%rax), %eax	# cmd_266(D)->buttons, _123
# g_game.c:345: 	    cmd->buttons |= BT_CHANGE; 
	.loc 1 345 19
	orl	$4, %eax	#, _123
	movl	%eax, %edx	# _123, _124
	movq	-56(%rbp), %rax	# cmd, tmp447
	movb	%dl, 7(%rax)	# _124, cmd_266(D)->buttons
# g_game.c:346: 	    cmd->buttons |= i<<BT_WEAPONSHIFT; 
	.loc 1 346 9
	movq	-56(%rbp), %rax	# cmd, tmp448
	movzbl	7(%rax), %eax	# cmd_266(D)->buttons, _125
	movl	%eax, %edx	# _125, _126
# g_game.c:346: 	    cmd->buttons |= i<<BT_WEAPONSHIFT; 
	.loc 1 346 19
	movl	-36(%rbp), %eax	# i, tmp449
	sall	$3, %eax	#, _128
	orl	%edx, %eax	# _126, _129
	movl	%eax, %edx	# _129, _130
	movq	-56(%rbp), %rax	# cmd, tmp450
	movb	%dl, 7(%rax)	# _130, cmd_266(D)->buttons
# g_game.c:347: 	    break; 
	.loc 1 347 6
	jmp	.L37	#
.L36:
# g_game.c:342:     for (i=0 ; i<NUMWEAPONS-1 ; i++)        
	.loc 1 342 34 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L35:
# g_game.c:342:     for (i=0 ; i<NUMWEAPONS-1 ; i++)        
	.loc 1 342 17 discriminator 1
	cmpl	$7, -36(%rbp)	#, i
	jle	.L38	#,
.L37:
# g_game.c:351:     if (mousebuttons[mousebforward]) 
	.loc 1 351 21
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.41_131
	movl	mousebforward(%rip), %edx	# mousebforward, mousebforward.42_132
	movslq	%edx, %rdx	# mousebforward.42_132, _133
	salq	$2, %rdx	#, _134
	addq	%rdx, %rax	# _134, _135
	movl	(%rax), %eax	# *_135, _136
# g_game.c:351:     if (mousebuttons[mousebforward]) 
	.loc 1 351 8
	testl	%eax, %eax	# _136
	je	.L39	#,
# g_game.c:352: 	forward += forwardmove[speed];
	.loc 1 352 24
	movl	-16(%rbp), %eax	# speed, tmp452
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp453
	leaq	forwardmove(%rip), %rax	#, tmp454
	movl	(%rdx,%rax), %eax	# forwardmove[speed_274], _137
# g_game.c:352: 	forward += forwardmove[speed];
	.loc 1 352 10
	addl	%eax, -28(%rbp)	# _137, forward
.L39:
# g_game.c:355:     if (mousebuttons[mousebforward] != dclickstate && dclicktime > 1 ) 
	.loc 1 355 21
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.43_138
	movl	mousebforward(%rip), %edx	# mousebforward, mousebforward.44_139
	movslq	%edx, %rdx	# mousebforward.44_139, _140
	salq	$2, %rdx	#, _141
	addq	%rdx, %rax	# _141, _142
	movl	(%rax), %eax	# *_142, _143
# g_game.c:355:     if (mousebuttons[mousebforward] != dclickstate && dclicktime > 1 ) 
	.loc 1 355 37
	movl	dclickstate(%rip), %edx	# dclickstate, dclickstate.45_144
# g_game.c:355:     if (mousebuttons[mousebforward] != dclickstate && dclicktime > 1 ) 
	.loc 1 355 8
	cmpl	%edx, %eax	# dclickstate.46_145, _143
	je	.L40	#,
# g_game.c:355:     if (mousebuttons[mousebforward] != dclickstate && dclicktime > 1 ) 
	.loc 1 355 66 discriminator 1
	movl	dclicktime(%rip), %eax	# dclicktime, dclicktime.47_146
# g_game.c:355:     if (mousebuttons[mousebforward] != dclickstate && dclicktime > 1 ) 
	.loc 1 355 52 discriminator 1
	cmpl	$1, %eax	#, dclicktime.47_146
	jle	.L40	#,
# g_game.c:357: 	dclickstate = mousebuttons[mousebforward]; 
	.loc 1 357 28
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.48_147
	movl	mousebforward(%rip), %edx	# mousebforward, mousebforward.49_148
	movslq	%edx, %rdx	# mousebforward.49_148, _149
	salq	$2, %rdx	#, _150
	addq	%rdx, %rax	# _150, _151
	movl	(%rax), %eax	# *_151, _152
# g_game.c:357: 	dclickstate = mousebuttons[mousebforward]; 
	.loc 1 357 14
	movl	%eax, dclickstate(%rip)	# _153, dclickstate
# g_game.c:358: 	if (dclickstate) 
	.loc 1 358 6
	movl	dclickstate(%rip), %eax	# dclickstate, dclickstate.50_154
# g_game.c:358: 	if (dclickstate) 
	.loc 1 358 5
	testl	%eax, %eax	# dclickstate.50_154
	je	.L41	#,
# g_game.c:359: 	    dclicks++; 
	.loc 1 359 13
	movl	dclicks(%rip), %eax	# dclicks, dclicks.51_155
	addl	$1, %eax	#, _156
	movl	%eax, dclicks(%rip)	# _156, dclicks
.L41:
# g_game.c:360: 	if (dclicks == 2) 
	.loc 1 360 14
	movl	dclicks(%rip), %eax	# dclicks, dclicks.52_157
# g_game.c:360: 	if (dclicks == 2) 
	.loc 1 360 5
	cmpl	$2, %eax	#, dclicks.52_157
	jne	.L42	#,
# g_game.c:362: 	    cmd->buttons |= BT_USE; 
	.loc 1 362 9
	movq	-56(%rbp), %rax	# cmd, tmp455
	movzbl	7(%rax), %eax	# cmd_266(D)->buttons, _158
# g_game.c:362: 	    cmd->buttons |= BT_USE; 
	.loc 1 362 19
	orl	$2, %eax	#, _158
	movl	%eax, %edx	# _158, _159
	movq	-56(%rbp), %rax	# cmd, tmp456
	movb	%dl, 7(%rax)	# _159, cmd_266(D)->buttons
# g_game.c:363: 	    dclicks = 0; 
	.loc 1 363 14
	movl	$0, dclicks(%rip)	#, dclicks
# g_game.c:360: 	if (dclicks == 2) 
	.loc 1 360 5
	jmp	.L44	#
.L42:
# g_game.c:366: 	    dclicktime = 0; 
	.loc 1 366 17
	movl	$0, dclicktime(%rip)	#, dclicktime
# g_game.c:360: 	if (dclicks == 2) 
	.loc 1 360 5
	jmp	.L44	#
.L40:
# g_game.c:370: 	dclicktime += ticdup; 
	.loc 1 370 13
	movl	dclicktime(%rip), %edx	# dclicktime, dclicktime.53_160
	movl	ticdup(%rip), %eax	# ticdup, ticdup.54_161
	addl	%edx, %eax	# dclicktime.53_160, _162
	movl	%eax, dclicktime(%rip)	# _162, dclicktime
# g_game.c:371: 	if (dclicktime > 20) 
	.loc 1 371 17
	movl	dclicktime(%rip), %eax	# dclicktime, dclicktime.55_163
# g_game.c:371: 	if (dclicktime > 20) 
	.loc 1 371 5
	cmpl	$20, %eax	#, dclicktime.55_163
	jle	.L44	#,
# g_game.c:373: 	    dclicks = 0; 
	.loc 1 373 14
	movl	$0, dclicks(%rip)	#, dclicks
# g_game.c:374: 	    dclickstate = 0; 
	.loc 1 374 18
	movl	$0, dclickstate(%rip)	#, dclickstate
.L44:
# g_game.c:380: 	mousebuttons[mousebstrafe] 
	.loc 1 380 14
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.57_164
	movl	mousebstrafe(%rip), %edx	# mousebstrafe, mousebstrafe.58_165
	movslq	%edx, %rdx	# mousebstrafe.58_165, _166
	salq	$2, %rdx	#, _167
	addq	%rdx, %rax	# _167, _168
	movl	(%rax), %eax	# *_168, _169
# g_game.c:381: 	|| joybuttons[joybstrafe]; 
	.loc 1 381 2
	testl	%eax, %eax	# _169
	jne	.L45	#,
# g_game.c:381: 	|| joybuttons[joybstrafe]; 
	.loc 1 381 15 discriminator 2
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.59_170
	movl	joybstrafe(%rip), %edx	# joybstrafe, joybstrafe.60_171
	movslq	%edx, %rdx	# joybstrafe.60_171, _172
	salq	$2, %rdx	#, _173
	addq	%rdx, %rax	# _173, _174
	movl	(%rax), %eax	# *_174, _175
# g_game.c:381: 	|| joybuttons[joybstrafe]; 
	.loc 1 381 2 discriminator 2
	testl	%eax, %eax	# _175
	je	.L46	#,
.L45:
# g_game.c:381: 	|| joybuttons[joybstrafe]; 
	.loc 1 381 2 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.56_244
# g_game.c:381: 	|| joybuttons[joybstrafe]; 
	.loc 1 381 2
	jmp	.L47	#
.L46:
# g_game.c:381: 	|| joybuttons[joybstrafe]; 
	.loc 1 381 2 discriminator 4
	movl	$0, %eax	#, iftmp.56_244
.L47:
# g_game.c:379:     bstrafe =
	.loc 1 379 13 is_stmt 1
	movl	%eax, -12(%rbp)	# iftmp.56_244, bstrafe
# g_game.c:382:     if (bstrafe != dclickstate2 && dclicktime2 > 1 ) 
	.loc 1 382 17
	movl	dclickstate2(%rip), %eax	# dclickstate2, dclickstate2.61_176
# g_game.c:382:     if (bstrafe != dclickstate2 && dclicktime2 > 1 ) 
	.loc 1 382 8
	cmpl	%eax, -12(%rbp)	# dclickstate2.62_177, bstrafe
	je	.L48	#,
# g_game.c:382:     if (bstrafe != dclickstate2 && dclicktime2 > 1 ) 
	.loc 1 382 48 discriminator 1
	movl	dclicktime2(%rip), %eax	# dclicktime2, dclicktime2.63_178
# g_game.c:382:     if (bstrafe != dclickstate2 && dclicktime2 > 1 ) 
	.loc 1 382 33 discriminator 1
	cmpl	$1, %eax	#, dclicktime2.63_178
	jle	.L48	#,
# g_game.c:384: 	dclickstate2 = bstrafe; 
	.loc 1 384 15
	movl	-12(%rbp), %eax	# bstrafe, bstrafe.64_179
	movl	%eax, dclickstate2(%rip)	# bstrafe.64_179, dclickstate2
# g_game.c:385: 	if (dclickstate2) 
	.loc 1 385 6
	movl	dclickstate2(%rip), %eax	# dclickstate2, dclickstate2.65_180
# g_game.c:385: 	if (dclickstate2) 
	.loc 1 385 5
	testl	%eax, %eax	# dclickstate2.65_180
	je	.L49	#,
# g_game.c:386: 	    dclicks2++; 
	.loc 1 386 14
	movl	dclicks2(%rip), %eax	# dclicks2, dclicks2.66_181
	addl	$1, %eax	#, _182
	movl	%eax, dclicks2(%rip)	# _182, dclicks2
.L49:
# g_game.c:387: 	if (dclicks2 == 2) 
	.loc 1 387 15
	movl	dclicks2(%rip), %eax	# dclicks2, dclicks2.67_183
# g_game.c:387: 	if (dclicks2 == 2) 
	.loc 1 387 5
	cmpl	$2, %eax	#, dclicks2.67_183
	jne	.L50	#,
# g_game.c:389: 	    cmd->buttons |= BT_USE; 
	.loc 1 389 9
	movq	-56(%rbp), %rax	# cmd, tmp457
	movzbl	7(%rax), %eax	# cmd_266(D)->buttons, _184
# g_game.c:389: 	    cmd->buttons |= BT_USE; 
	.loc 1 389 19
	orl	$2, %eax	#, _184
	movl	%eax, %edx	# _184, _185
	movq	-56(%rbp), %rax	# cmd, tmp458
	movb	%dl, 7(%rax)	# _185, cmd_266(D)->buttons
# g_game.c:390: 	    dclicks2 = 0; 
	.loc 1 390 15
	movl	$0, dclicks2(%rip)	#, dclicks2
# g_game.c:387: 	if (dclicks2 == 2) 
	.loc 1 387 5
	jmp	.L52	#
.L50:
# g_game.c:393: 	    dclicktime2 = 0; 
	.loc 1 393 18
	movl	$0, dclicktime2(%rip)	#, dclicktime2
# g_game.c:387: 	if (dclicks2 == 2) 
	.loc 1 387 5
	jmp	.L52	#
.L48:
# g_game.c:397: 	dclicktime2 += ticdup; 
	.loc 1 397 14
	movl	dclicktime2(%rip), %edx	# dclicktime2, dclicktime2.68_186
	movl	ticdup(%rip), %eax	# ticdup, ticdup.69_187
	addl	%edx, %eax	# dclicktime2.68_186, _188
	movl	%eax, dclicktime2(%rip)	# _188, dclicktime2
# g_game.c:398: 	if (dclicktime2 > 20) 
	.loc 1 398 18
	movl	dclicktime2(%rip), %eax	# dclicktime2, dclicktime2.70_189
# g_game.c:398: 	if (dclicktime2 > 20) 
	.loc 1 398 5
	cmpl	$20, %eax	#, dclicktime2.70_189
	jle	.L52	#,
# g_game.c:400: 	    dclicks2 = 0; 
	.loc 1 400 15
	movl	$0, dclicks2(%rip)	#, dclicks2
# g_game.c:401: 	    dclickstate2 = 0; 
	.loc 1 401 19
	movl	$0, dclickstate2(%rip)	#, dclickstate2
.L52:
# g_game.c:405:     forward += mousey; 
	.loc 1 405 13
	movl	mousey(%rip), %eax	# mousey, mousey.71_190
	addl	%eax, -28(%rbp)	# mousey.71_190, forward
# g_game.c:406:     if (strafe) 
	.loc 1 406 8
	cmpl	$0, -20(%rbp)	#, strafe
	je	.L53	#,
# g_game.c:407: 	side += mousex*2; 
	.loc 1 407 16
	movl	mousex(%rip), %eax	# mousex, mousex.72_191
	addl	%eax, %eax	# _192
# g_game.c:407: 	side += mousex*2; 
	.loc 1 407 7
	addl	%eax, -24(%rbp)	# _192, side
	jmp	.L54	#
.L53:
# g_game.c:409: 	cmd->angleturn -= mousex*0x8; 
	.loc 1 409 5
	movq	-56(%rbp), %rax	# cmd, tmp459
	movzwl	2(%rax), %eax	# cmd_266(D)->angleturn, _193
	movl	%eax, %ecx	# _193, _194
# g_game.c:409: 	cmd->angleturn -= mousex*0x8; 
	.loc 1 409 17
	movl	mousex(%rip), %eax	# mousex, mousex.73_195
	leal	0(,%rax,8), %edx	#, _197
	movl	%ecx, %eax	# _194, _194
	subl	%edx, %eax	# _197, _194
	movl	%eax, %edx	# _198, _199
	movq	-56(%rbp), %rax	# cmd, tmp460
	movw	%dx, 2(%rax)	# _199, cmd_266(D)->angleturn
.L54:
# g_game.c:411:     mousex = mousey = 0; 
	.loc 1 411 21
	movl	$0, mousey(%rip)	#, mousey
# g_game.c:411:     mousex = mousey = 0; 
	.loc 1 411 12
	movl	mousey(%rip), %eax	# mousey, mousey.74_200
	movl	%eax, mousex(%rip)	# mousey.74_200, mousex
# g_game.c:413:     if (forward > MAXPLMOVE) 
	.loc 1 413 19
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], _201
# g_game.c:413:     if (forward > MAXPLMOVE) 
	.loc 1 413 8
	cmpl	%eax, -28(%rbp)	# _201, forward
	jle	.L55	#,
# g_game.c:414: 	forward = MAXPLMOVE; 
	.loc 1 414 10
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], tmp461
	movl	%eax, -28(%rbp)	# tmp461, forward
	jmp	.L56	#
.L55:
# g_game.c:415:     else if (forward < -MAXPLMOVE) 
	.loc 1 415 25
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], _202
# g_game.c:415:     else if (forward < -MAXPLMOVE) 
	.loc 1 415 24
	negl	%eax	# _203
# g_game.c:415:     else if (forward < -MAXPLMOVE) 
	.loc 1 415 13
	cmpl	%eax, -28(%rbp)	# _203, forward
	jge	.L56	#,
# g_game.c:416: 	forward = -MAXPLMOVE; 
	.loc 1 416 13
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], _204
# g_game.c:416: 	forward = -MAXPLMOVE; 
	.loc 1 416 10
	negl	%eax	# tmp462
	movl	%eax, -28(%rbp)	# tmp462, forward
.L56:
# g_game.c:417:     if (side > MAXPLMOVE) 
	.loc 1 417 16
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], _205
# g_game.c:417:     if (side > MAXPLMOVE) 
	.loc 1 417 8
	cmpl	%eax, -24(%rbp)	# _205, side
	jle	.L57	#,
# g_game.c:418: 	side = MAXPLMOVE; 
	.loc 1 418 7
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], tmp463
	movl	%eax, -24(%rbp)	# tmp463, side
	jmp	.L58	#
.L57:
# g_game.c:419:     else if (side < -MAXPLMOVE) 
	.loc 1 419 22
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], _206
# g_game.c:419:     else if (side < -MAXPLMOVE) 
	.loc 1 419 21
	negl	%eax	# _207
# g_game.c:419:     else if (side < -MAXPLMOVE) 
	.loc 1 419 13
	cmpl	%eax, -24(%rbp)	# _207, side
	jge	.L58	#,
# g_game.c:420: 	side = -MAXPLMOVE; 
	.loc 1 420 10
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], _208
# g_game.c:420: 	side = -MAXPLMOVE; 
	.loc 1 420 7
	negl	%eax	# tmp464
	movl	%eax, -24(%rbp)	# tmp464, side
.L58:
# g_game.c:422:     cmd->forwardmove += forward; 
	.loc 1 422 8
	movq	-56(%rbp), %rax	# cmd, tmp465
	movzbl	(%rax), %eax	# cmd_266(D)->forwardmove, _209
	movl	%eax, %edx	# _209, _210
# g_game.c:422:     cmd->forwardmove += forward; 
	.loc 1 422 22
	movl	-28(%rbp), %eax	# forward, tmp466
	addl	%edx, %eax	# _210, _212
	movl	%eax, %edx	# _212, _213
	movq	-56(%rbp), %rax	# cmd, tmp467
	movb	%dl, (%rax)	# _213, cmd_266(D)->forwardmove
# g_game.c:423:     cmd->sidemove += side;
	.loc 1 423 8
	movq	-56(%rbp), %rax	# cmd, tmp468
	movzbl	1(%rax), %eax	# cmd_266(D)->sidemove, _214
	movl	%eax, %edx	# _214, _215
# g_game.c:423:     cmd->sidemove += side;
	.loc 1 423 19
	movl	-24(%rbp), %eax	# side, tmp469
	addl	%edx, %eax	# _215, _217
	movl	%eax, %edx	# _217, _218
	movq	-56(%rbp), %rax	# cmd, tmp470
	movb	%dl, 1(%rax)	# _218, cmd_266(D)->sidemove
# g_game.c:426:     if (sendpause) 
	.loc 1 426 9
	movl	sendpause(%rip), %eax	# sendpause, sendpause.75_219
# g_game.c:426:     if (sendpause) 
	.loc 1 426 8
	testl	%eax, %eax	# sendpause.75_219
	je	.L59	#,
# g_game.c:428: 	sendpause = false; 
	.loc 1 428 12
	movl	$0, sendpause(%rip)	#, sendpause
# g_game.c:429: 	cmd->buttons = BT_SPECIAL | BTS_PAUSE; 
	.loc 1 429 15
	movq	-56(%rbp), %rax	# cmd, tmp471
	movb	$-127, 7(%rax)	#, cmd_266(D)->buttons
.L59:
# g_game.c:432:     if (sendsave) 
	.loc 1 432 9
	movl	sendsave(%rip), %eax	# sendsave, sendsave.76_220
# g_game.c:432:     if (sendsave) 
	.loc 1 432 8
	testl	%eax, %eax	# sendsave.76_220
	je	.L61	#,
# g_game.c:434: 	sendsave = false; 
	.loc 1 434 11
	movl	$0, sendsave(%rip)	#, sendsave
# g_game.c:435: 	cmd->buttons = BT_SPECIAL | BTS_SAVEGAME | (savegameslot<<BTS_SAVESHIFT); 
	.loc 1 435 43
	movl	savegameslot(%rip), %eax	# savegameslot, savegameslot.77_221
	sall	$2, %eax	#, _223
	orl	$-126, %eax	#, _224
	movl	%eax, %edx	# _224, _225
# g_game.c:435: 	cmd->buttons = BT_SPECIAL | BTS_SAVEGAME | (savegameslot<<BTS_SAVESHIFT); 
	.loc 1 435 15
	movq	-56(%rbp), %rax	# cmd, tmp472
	movb	%dl, 7(%rax)	# _225, cmd_266(D)->buttons
.L61:
# g_game.c:437: } 
	.loc 1 437 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	G_BuildTiccmd, .-G_BuildTiccmd
	.section	.rodata
.LC0:
	.string	"F_SKY1"
.LC1:
	.string	"SKY3"
.LC2:
	.string	"SKY1"
.LC3:
	.string	"SKY2"
	.text
	.globl	G_DoLoadLevel
	.type	G_DoLoadLevel, @function
G_DoLoadLevel:
.LFB8:
	.loc 1 446 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# g_game.c:454:     skyflatnum = R_FlatNumForName ( SKYFLATNAME );
	.loc 1 454 18
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	R_FlatNumForName@PLT	#
# g_game.c:454:     skyflatnum = R_FlatNumForName ( SKYFLATNAME );
	.loc 1 454 16 discriminator 1
	movl	%eax, skyflatnum(%rip)	# _1, skyflatnum
# g_game.c:458:     if ( (gamemode == commercial)
	.loc 1 458 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.78_2
# g_game.c:458:     if ( (gamemode == commercial)
	.loc 1 458 8
	cmpl	$2, %eax	#, gamemode.78_2
	je	.L63	#,
# g_game.c:459: 	 || ( gamemode == pack_tnt )
	.loc 1 459 17
	movl	gamemode(%rip), %eax	# gamemode, gamemode.79_3
# g_game.c:459: 	 || ( gamemode == pack_tnt )
	.loc 1 459 3
	cmpl	$2, %eax	#, gamemode.79_3
	je	.L63	#,
# g_game.c:460: 	 || ( gamemode == pack_plut ) )
	.loc 1 460 17
	movl	gamemode(%rip), %eax	# gamemode, gamemode.80_4
# g_game.c:460: 	 || ( gamemode == pack_plut ) )
	.loc 1 460 3
	cmpl	$3, %eax	#, gamemode.80_4
	jne	.L64	#,
.L63:
# g_game.c:462: 	skytexture = R_TextureNumForName ("SKY3");
	.loc 1 462 15
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	R_TextureNumForName@PLT	#
# g_game.c:462: 	skytexture = R_TextureNumForName ("SKY3");
	.loc 1 462 13 discriminator 1
	movl	%eax, skytexture(%rip)	# _5, skytexture
# g_game.c:463: 	if (gamemap < 12)
	.loc 1 463 14
	movl	gamemap(%rip), %eax	# gamemap, gamemap.81_6
# g_game.c:463: 	if (gamemap < 12)
	.loc 1 463 5
	cmpl	$11, %eax	#, gamemap.81_6
	jg	.L65	#,
# g_game.c:464: 	    skytexture = R_TextureNumForName ("SKY1");
	.loc 1 464 19
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	R_TextureNumForName@PLT	#
# g_game.c:464: 	    skytexture = R_TextureNumForName ("SKY1");
	.loc 1 464 17 discriminator 1
	movl	%eax, skytexture(%rip)	# _7, skytexture
	jmp	.L64	#
.L65:
# g_game.c:466: 	    if (gamemap < 21)
	.loc 1 466 18
	movl	gamemap(%rip), %eax	# gamemap, gamemap.82_8
# g_game.c:466: 	    if (gamemap < 21)
	.loc 1 466 9
	cmpl	$20, %eax	#, gamemap.82_8
	jg	.L64	#,
# g_game.c:467: 		skytexture = R_TextureNumForName ("SKY2");
	.loc 1 467 16
	leaq	.LC3(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	R_TextureNumForName@PLT	#
# g_game.c:467: 		skytexture = R_TextureNumForName ("SKY2");
	.loc 1 467 14 discriminator 1
	movl	%eax, skytexture(%rip)	# _9, skytexture
.L64:
# g_game.c:470:     levelstarttic = gametic;        // for time calculation
	.loc 1 470 19
	movl	gametic(%rip), %eax	# gametic, gametic.83_10
	movl	%eax, levelstarttic(%rip)	# gametic.83_10, levelstarttic
# g_game.c:472:     if (wipegamestate == GS_LEVEL) 
	.loc 1 472 23
	movl	wipegamestate(%rip), %eax	# wipegamestate, wipegamestate.84_11
# g_game.c:472:     if (wipegamestate == GS_LEVEL) 
	.loc 1 472 8
	testl	%eax, %eax	# wipegamestate.84_11
	jne	.L66	#,
# g_game.c:473: 	wipegamestate = -1;             // force a wipe 
	.loc 1 473 16
	movl	$-1, wipegamestate(%rip)	#, wipegamestate
.L66:
# g_game.c:475:     gamestate = GS_LEVEL; 
	.loc 1 475 15
	movl	$0, gamestate(%rip)	#, gamestate
# g_game.c:477:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 477 11
	movl	$0, -4(%rbp)	#, i
# g_game.c:477:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 477 5
	jmp	.L67	#
.L69:
# g_game.c:479: 	if (playeringame[i] && players[i].playerstate == PST_DEAD) 
	.loc 1 479 18
	movl	-4(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp113
	leaq	playeringame(%rip), %rax	#, tmp114
	movl	(%rdx,%rax), %eax	# playeringame[i_26], _12
# g_game.c:479: 	if (playeringame[i] && players[i].playerstate == PST_DEAD) 
	.loc 1 479 5
	testl	%eax, %eax	# _12
	je	.L68	#,
# g_game.c:479: 	if (playeringame[i] && players[i].playerstate == PST_DEAD) 
	.loc 1 479 35 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp118
	salq	$2, %rax	#, tmp118
	addq	%rdx, %rax	# tmp115, tmp118
	salq	$6, %rax	#, tmp119
	movq	%rax, %rdx	# tmp118, tmp117
	leaq	8+players(%rip), %rax	#, tmp120
	movl	(%rdx,%rax), %eax	# players[i_26].playerstate, _13
# g_game.c:479: 	if (playeringame[i] && players[i].playerstate == PST_DEAD) 
	.loc 1 479 22 discriminator 1
	cmpl	$1, %eax	#, _13
	jne	.L68	#,
# g_game.c:480: 	    players[i].playerstate = PST_REBORN; 
	.loc 1 480 29
	movl	-4(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, tmp121
	movq	%rdx, %rax	# tmp121, tmp124
	salq	$2, %rax	#, tmp124
	addq	%rdx, %rax	# tmp121, tmp124
	salq	$6, %rax	#, tmp125
	movq	%rax, %rdx	# tmp124, tmp123
	leaq	8+players(%rip), %rax	#, tmp126
	movl	$2, (%rdx,%rax)	#, players[i_26].playerstate
.L68:
# g_game.c:481: 	memset (players[i].frags,0,sizeof(players[i].frags)); 
	.loc 1 481 20
	movl	-4(%rbp), %eax	# i, tmp128
	movslq	%eax, %rdx	# tmp128, tmp127
	movq	%rdx, %rax	# tmp127, tmp129
	salq	$2, %rax	#, tmp129
	addq	%rdx, %rax	# tmp127, tmp129
	salq	$6, %rax	#, tmp130
	leaq	96(%rax), %rdx	#, tmp131
	leaq	players(%rip), %rax	#, tmp133
	addq	%rdx, %rax	# tmp131, tmp132
	addq	$4, %rax	#, _14
# g_game.c:481: 	memset (players[i].frags,0,sizeof(players[i].frags)); 
	.loc 1 481 2
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _14,
	call	memset@PLT	#
# g_game.c:477:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 477 32 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L67:
# g_game.c:477:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 477 17 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L69	#,
# g_game.c:484:     P_SetupLevel (gameepisode, gamemap, 0, gameskill);    
	.loc 1 484 5
	movl	gameskill(%rip), %edx	# gameskill, gameskill.85_15
	movl	gamemap(%rip), %esi	# gamemap, gamemap.86_16
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.87_17
	movl	%edx, %ecx	# gameskill.85_15,
	movl	$0, %edx	#,
	movl	%eax, %edi	# gameepisode.87_17,
	call	P_SetupLevel@PLT	#
# g_game.c:485:     displayplayer = consoleplayer;		// view the guy you are playing    
	.loc 1 485 19
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.88_18
	movl	%eax, displayplayer(%rip)	# consoleplayer.88_18, displayplayer
# g_game.c:486:     starttime = I_GetTime (); 
	.loc 1 486 17
	call	I_GetTime@PLT	#
# g_game.c:486:     starttime = I_GetTime (); 
	.loc 1 486 15 discriminator 1
	movl	%eax, starttime(%rip)	# _19, starttime
# g_game.c:487:     gameaction = ga_nothing; 
	.loc 1 487 16
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:488:     Z_CheckHeap ();
	.loc 1 488 5
	call	Z_CheckHeap@PLT	#
# g_game.c:491:     memset (gamekeydown, 0, sizeof(gamekeydown)); 
	.loc 1 491 5
	movl	$1024, %edx	#,
	movl	$0, %esi	#,
	leaq	gamekeydown(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	memset@PLT	#
# g_game.c:492:     joyxmove = joyymove = 0; 
	.loc 1 492 25
	movl	$0, joyymove(%rip)	#, joyymove
# g_game.c:492:     joyxmove = joyymove = 0; 
	.loc 1 492 14
	movl	joyymove(%rip), %eax	# joyymove, joyymove.89_20
	movl	%eax, joyxmove(%rip)	# joyymove.89_20, joyxmove
# g_game.c:493:     mousex = mousey = 0; 
	.loc 1 493 21
	movl	$0, mousey(%rip)	#, mousey
# g_game.c:493:     mousex = mousey = 0; 
	.loc 1 493 12
	movl	mousey(%rip), %eax	# mousey, mousey.90_21
	movl	%eax, mousex(%rip)	# mousey.90_21, mousex
# g_game.c:494:     sendpause = sendsave = paused = false; 
	.loc 1 494 35
	movl	$0, paused(%rip)	#, paused
# g_game.c:494:     sendpause = sendsave = paused = false; 
	.loc 1 494 26
	movl	paused(%rip), %eax	# paused, paused.91_22
	movl	%eax, sendsave(%rip)	# paused.91_22, sendsave
# g_game.c:494:     sendpause = sendsave = paused = false; 
	.loc 1 494 15
	movl	sendsave(%rip), %eax	# sendsave, sendsave.92_23
	movl	%eax, sendpause(%rip)	# sendsave.92_23, sendpause
# g_game.c:495:     memset (mousebuttons, 0, sizeof(mousebuttons)); 
	.loc 1 495 5
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.93_24
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# mousebuttons.93_24,
	call	memset@PLT	#
# g_game.c:496:     memset (joybuttons, 0, sizeof(joybuttons)); 
	.loc 1 496 5
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.94_25
	movl	$8, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# joybuttons.94_25,
	call	memset@PLT	#
# g_game.c:497: } 
	.loc 1 497 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	G_DoLoadLevel, .-G_DoLoadLevel
	.globl	G_Responder
	.type	G_Responder, @function
G_Responder:
.LFB9:
	.loc 1 505 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ev, ev
# g_game.c:507:     if (gamestate == GS_LEVEL && ev->type == ev_keydown 
	.loc 1 507 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.95_1
# g_game.c:507:     if (gamestate == GS_LEVEL && ev->type == ev_keydown 
	.loc 1 507 8
	testl	%eax, %eax	# gamestate.95_1
	jne	.L71	#,
# g_game.c:507:     if (gamestate == GS_LEVEL && ev->type == ev_keydown 
	.loc 1 507 36 discriminator 1
	movq	-8(%rbp), %rax	# ev, tmp162
	movl	(%rax), %eax	# ev_88(D)->type, _2
# g_game.c:507:     if (gamestate == GS_LEVEL && ev->type == ev_keydown 
	.loc 1 507 31 discriminator 1
	testl	%eax, %eax	# _2
	jne	.L71	#,
# g_game.c:508: 	&& ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
	.loc 1 508 7
	movq	-8(%rbp), %rax	# ev, tmp163
	movl	4(%rax), %eax	# ev_88(D)->data1, _3
# g_game.c:508: 	&& ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
	.loc 1 508 2
	cmpl	$216, %eax	#, _3
	jne	.L71	#,
# g_game.c:508: 	&& ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
	.loc 1 508 30 discriminator 1
	movl	singledemo(%rip), %eax	# singledemo, singledemo.96_4
# g_game.c:508: 	&& ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
	.loc 1 508 26 discriminator 1
	testl	%eax, %eax	# singledemo.96_4
	jne	.L75	#,
# g_game.c:508: 	&& ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
	.loc 1 508 44 discriminator 2
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.97_5
# g_game.c:508: 	&& ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
	.loc 1 508 41 discriminator 2
	testl	%eax, %eax	# deathmatch.97_5
	jne	.L71	#,
.L75:
# g_game.c:513: 	    displayplayer++; 
	.loc 1 513 19
	movl	displayplayer(%rip), %eax	# displayplayer, displayplayer.98_6
	addl	$1, %eax	#, _7
	movl	%eax, displayplayer(%rip)	# _7, displayplayer
# g_game.c:514: 	    if (displayplayer == MAXPLAYERS) 
	.loc 1 514 24
	movl	displayplayer(%rip), %eax	# displayplayer, displayplayer.99_8
# g_game.c:514: 	    if (displayplayer == MAXPLAYERS) 
	.loc 1 514 9
	cmpl	$4, %eax	#, displayplayer.99_8
	jne	.L73	#,
# g_game.c:515: 		displayplayer = 0; 
	.loc 1 515 17
	movl	$0, displayplayer(%rip)	#, displayplayer
.L73:
# g_game.c:516: 	} while (!playeringame[displayplayer] && displayplayer != consoleplayer); 
	.loc 1 516 24
	movl	displayplayer(%rip), %eax	# displayplayer, displayplayer.100_9
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp165
	leaq	playeringame(%rip), %rax	#, tmp166
	movl	(%rdx,%rax), %eax	# playeringame[displayplayer.100_9], _10
# g_game.c:516: 	} while (!playeringame[displayplayer] && displayplayer != consoleplayer); 
	.loc 1 516 40
	testl	%eax, %eax	# _10
	jne	.L74	#,
# g_game.c:516: 	} while (!playeringame[displayplayer] && displayplayer != consoleplayer); 
	.loc 1 516 57 discriminator 1
	movl	displayplayer(%rip), %edx	# displayplayer, displayplayer.101_11
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.102_12
# g_game.c:516: 	} while (!playeringame[displayplayer] && displayplayer != consoleplayer); 
	.loc 1 516 40 discriminator 1
	cmpl	%eax, %edx	# consoleplayer.102_12, displayplayer.101_11
	jne	.L75	#,
.L74:
# g_game.c:517: 	return true; 
	.loc 1 517 9
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L71:
# g_game.c:521:     if (gameaction == ga_nothing && !singledemo && 
	.loc 1 521 20
	movl	gameaction(%rip), %eax	# gameaction, gameaction.103_13
# g_game.c:521:     if (gameaction == ga_nothing && !singledemo && 
	.loc 1 521 8
	testl	%eax, %eax	# gameaction.103_13
	jne	.L77	#,
# g_game.c:521:     if (gameaction == ga_nothing && !singledemo && 
	.loc 1 521 37 discriminator 1
	movl	singledemo(%rip), %eax	# singledemo, singledemo.104_14
# g_game.c:521:     if (gameaction == ga_nothing && !singledemo && 
	.loc 1 521 34 discriminator 1
	testl	%eax, %eax	# singledemo.104_14
	jne	.L77	#,
# g_game.c:522: 	(demoplayback || gamestate == GS_DEMOSCREEN) 
	.loc 1 522 3
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.105_15
# g_game.c:521:     if (gameaction == ga_nothing && !singledemo && 
	.loc 1 521 49 discriminator 2
	testl	%eax, %eax	# demoplayback.105_15
	jne	.L78	#,
# g_game.c:522: 	(demoplayback || gamestate == GS_DEMOSCREEN) 
	.loc 1 522 29
	movl	gamestate(%rip), %eax	# gamestate, gamestate.106_16
# g_game.c:522: 	(demoplayback || gamestate == GS_DEMOSCREEN) 
	.loc 1 522 16
	cmpl	$3, %eax	#, gamestate.106_16
	jne	.L77	#,
.L78:
# g_game.c:525: 	if (ev->type == ev_keydown ||  
	.loc 1 525 8
	movq	-8(%rbp), %rax	# ev, tmp167
	movl	(%rax), %eax	# ev_88(D)->type, _17
# g_game.c:525: 	if (ev->type == ev_keydown ||  
	.loc 1 525 5
	testl	%eax, %eax	# _17
	je	.L79	#,
# g_game.c:526: 	    (ev->type == ev_mouse && ev->data1) || 
	.loc 1 526 9
	movq	-8(%rbp), %rax	# ev, tmp168
	movl	(%rax), %eax	# ev_88(D)->type, _18
# g_game.c:525: 	if (ev->type == ev_keydown ||  
	.loc 1 525 29 discriminator 1
	cmpl	$2, %eax	#, _18
	jne	.L80	#,
# g_game.c:526: 	    (ev->type == ev_mouse && ev->data1) || 
	.loc 1 526 33
	movq	-8(%rbp), %rax	# ev, tmp169
	movl	4(%rax), %eax	# ev_88(D)->data1, _19
# g_game.c:526: 	    (ev->type == ev_mouse && ev->data1) || 
	.loc 1 526 28
	testl	%eax, %eax	# _19
	jne	.L79	#,
.L80:
# g_game.c:527: 	    (ev->type == ev_joystick && ev->data1) ) 
	.loc 1 527 9
	movq	-8(%rbp), %rax	# ev, tmp170
	movl	(%rax), %eax	# ev_88(D)->type, _20
# g_game.c:526: 	    (ev->type == ev_mouse && ev->data1) || 
	.loc 1 526 42 discriminator 1
	cmpl	$3, %eax	#, _20
	jne	.L81	#,
# g_game.c:527: 	    (ev->type == ev_joystick && ev->data1) ) 
	.loc 1 527 36
	movq	-8(%rbp), %rax	# ev, tmp171
	movl	4(%rax), %eax	# ev_88(D)->data1, _21
# g_game.c:527: 	    (ev->type == ev_joystick && ev->data1) ) 
	.loc 1 527 31
	testl	%eax, %eax	# _21
	je	.L81	#,
.L79:
# g_game.c:529: 	    M_StartControlPanel (); 
	.loc 1 529 6
	call	M_StartControlPanel@PLT	#
# g_game.c:530: 	    return true; 
	.loc 1 530 13
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L81:
# g_game.c:532: 	return false; 
	.loc 1 532 9
	movl	$0, %eax	#, _79
	jmp	.L76	#
.L77:
# g_game.c:535:     if (gamestate == GS_LEVEL) 
	.loc 1 535 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.107_22
# g_game.c:535:     if (gamestate == GS_LEVEL) 
	.loc 1 535 8
	testl	%eax, %eax	# gamestate.107_22
	jne	.L82	#,
# g_game.c:544: 	if (HU_Responder (ev)) 
	.loc 1 544 6
	movq	-8(%rbp), %rax	# ev, tmp172
	movq	%rax, %rdi	# tmp172,
	call	HU_Responder@PLT	#
# g_game.c:544: 	if (HU_Responder (ev)) 
	.loc 1 544 5 discriminator 1
	testl	%eax, %eax	# _23
	je	.L83	#,
# g_game.c:545: 	    return true;	// chat ate the event 
	.loc 1 545 13
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L83:
# g_game.c:546: 	if (ST_Responder (ev)) 
	.loc 1 546 6
	movq	-8(%rbp), %rax	# ev, tmp173
	movq	%rax, %rdi	# tmp173,
	call	ST_Responder@PLT	#
# g_game.c:546: 	if (ST_Responder (ev)) 
	.loc 1 546 5 discriminator 1
	testl	%eax, %eax	# _24
	je	.L84	#,
# g_game.c:547: 	    return true;	// status window ate it 
	.loc 1 547 13
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L84:
# g_game.c:548: 	if (AM_Responder (ev)) 
	.loc 1 548 6
	movq	-8(%rbp), %rax	# ev, tmp174
	movq	%rax, %rdi	# tmp174,
	call	AM_Responder@PLT	#
# g_game.c:548: 	if (AM_Responder (ev)) 
	.loc 1 548 5 discriminator 1
	testl	%eax, %eax	# _25
	je	.L82	#,
# g_game.c:549: 	    return true;	// automap ate it 
	.loc 1 549 13
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L82:
# g_game.c:552:     if (gamestate == GS_FINALE) 
	.loc 1 552 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.108_26
# g_game.c:552:     if (gamestate == GS_FINALE) 
	.loc 1 552 8
	cmpl	$2, %eax	#, gamestate.108_26
	jne	.L85	#,
# g_game.c:554: 	if (F_Responder (ev)) 
	.loc 1 554 6
	movq	-8(%rbp), %rax	# ev, tmp175
	movq	%rax, %rdi	# tmp175,
	call	F_Responder@PLT	#
# g_game.c:554: 	if (F_Responder (ev)) 
	.loc 1 554 5 discriminator 1
	testl	%eax, %eax	# _27
	je	.L85	#,
# g_game.c:555: 	    return true;	// finale ate the event 
	.loc 1 555 13
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L85:
# g_game.c:558:     switch (ev->type) 
	.loc 1 558 15
	movq	-8(%rbp), %rax	# ev, tmp176
	movl	(%rax), %eax	# ev_88(D)->type, _28
# g_game.c:558:     switch (ev->type) 
	.loc 1 558 5
	cmpl	$3, %eax	#, _28
	je	.L86	#,
	cmpl	$3, %eax	#, _28
	ja	.L95	#,
	cmpl	$2, %eax	#, _28
	je	.L88	#,
	cmpl	$2, %eax	#, _28
	ja	.L95	#,
	testl	%eax, %eax	# _28
	je	.L89	#,
	cmpl	$1, %eax	#, _28
	je	.L90	#,
# g_game.c:593: 	break; 
	.loc 1 593 2
	jmp	.L95	#
.L89:
# g_game.c:561: 	if (ev->data1 == KEY_PAUSE) 
	.loc 1 561 8
	movq	-8(%rbp), %rax	# ev, tmp177
	movl	4(%rax), %eax	# ev_88(D)->data1, _29
# g_game.c:561: 	if (ev->data1 == KEY_PAUSE) 
	.loc 1 561 5
	cmpl	$255, %eax	#, _29
	jne	.L91	#,
# g_game.c:563: 	    sendpause = true; 
	.loc 1 563 16
	movl	$1, sendpause(%rip)	#, sendpause
# g_game.c:564: 	    return true; 
	.loc 1 564 13
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L91:
# g_game.c:566: 	if (ev->data1 <NUMKEYS) 
	.loc 1 566 8
	movq	-8(%rbp), %rax	# ev, tmp178
	movl	4(%rax), %eax	# ev_88(D)->data1, _30
# g_game.c:566: 	if (ev->data1 <NUMKEYS) 
	.loc 1 566 5
	cmpl	$255, %eax	#, _30
	jg	.L92	#,
# g_game.c:567: 	    gamekeydown[ev->data1] = true; 
	.loc 1 567 20
	movq	-8(%rbp), %rax	# ev, tmp179
	movl	4(%rax), %eax	# ev_88(D)->data1, _31
# g_game.c:567: 	    gamekeydown[ev->data1] = true; 
	.loc 1 567 29
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp181
	leaq	gamekeydown(%rip), %rax	#, tmp182
	movl	$1, (%rdx,%rax)	#, gamekeydown[_31]
.L92:
# g_game.c:568: 	return true;    // eat key down events 
	.loc 1 568 9
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L90:
# g_game.c:571: 	if (ev->data1 <NUMKEYS) 
	.loc 1 571 8
	movq	-8(%rbp), %rax	# ev, tmp183
	movl	4(%rax), %eax	# ev_88(D)->data1, _32
# g_game.c:571: 	if (ev->data1 <NUMKEYS) 
	.loc 1 571 5
	cmpl	$255, %eax	#, _32
	jg	.L93	#,
# g_game.c:572: 	    gamekeydown[ev->data1] = false; 
	.loc 1 572 20
	movq	-8(%rbp), %rax	# ev, tmp184
	movl	4(%rax), %eax	# ev_88(D)->data1, _33
# g_game.c:572: 	    gamekeydown[ev->data1] = false; 
	.loc 1 572 29
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp186
	leaq	gamekeydown(%rip), %rax	#, tmp187
	movl	$0, (%rdx,%rax)	#, gamekeydown[_33]
.L93:
# g_game.c:573: 	return false;   // always let key up events filter down 
	.loc 1 573 9
	movl	$0, %eax	#, _79
	jmp	.L76	#
.L88:
# g_game.c:576: 	mousebuttons[0] = ev->data1 & 1; 
	.loc 1 576 22
	movq	-8(%rbp), %rax	# ev, tmp188
	movl	4(%rax), %eax	# ev_88(D)->data1, _34
# g_game.c:576: 	mousebuttons[0] = ev->data1 & 1; 
	.loc 1 576 30
	andl	$1, %eax	#, _34
	movl	%eax, %edx	# _34, _35
# g_game.c:576: 	mousebuttons[0] = ev->data1 & 1; 
	.loc 1 576 14
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.109_36
# g_game.c:576: 	mousebuttons[0] = ev->data1 & 1; 
	.loc 1 576 18
	movl	%edx, (%rax)	# _37, *mousebuttons.109_36
# g_game.c:577: 	mousebuttons[1] = ev->data1 & 2; 
	.loc 1 577 22
	movq	-8(%rbp), %rax	# ev, tmp189
	movl	4(%rax), %eax	# ev_88(D)->data1, _38
# g_game.c:577: 	mousebuttons[1] = ev->data1 & 2; 
	.loc 1 577 30
	andl	$2, %eax	#, _38
	movl	%eax, %edx	# _38, _39
# g_game.c:577: 	mousebuttons[1] = ev->data1 & 2; 
	.loc 1 577 14
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.110_40
	addq	$4, %rax	#, _41
# g_game.c:577: 	mousebuttons[1] = ev->data1 & 2; 
	.loc 1 577 18
	movl	%edx, (%rax)	# _42, *_41
# g_game.c:578: 	mousebuttons[2] = ev->data1 & 4; 
	.loc 1 578 22
	movq	-8(%rbp), %rax	# ev, tmp190
	movl	4(%rax), %eax	# ev_88(D)->data1, _43
# g_game.c:578: 	mousebuttons[2] = ev->data1 & 4; 
	.loc 1 578 30
	andl	$4, %eax	#, _43
	movl	%eax, %edx	# _43, _44
# g_game.c:578: 	mousebuttons[2] = ev->data1 & 4; 
	.loc 1 578 14
	movq	mousebuttons(%rip), %rax	# mousebuttons, mousebuttons.111_45
	addq	$8, %rax	#, _46
# g_game.c:578: 	mousebuttons[2] = ev->data1 & 4; 
	.loc 1 578 18
	movl	%edx, (%rax)	# _47, *_46
# g_game.c:579: 	mousex = ev->data2*(mouseSensitivity+5)/10; 
	.loc 1 579 13
	movq	-8(%rbp), %rax	# ev, tmp191
	movl	8(%rax), %eax	# ev_88(D)->data2, _48
# g_game.c:579: 	mousex = ev->data2*(mouseSensitivity+5)/10; 
	.loc 1 579 38
	movl	mouseSensitivity(%rip), %edx	# mouseSensitivity, mouseSensitivity.112_49
	addl	$5, %edx	#, _50
# g_game.c:579: 	mousex = ev->data2*(mouseSensitivity+5)/10; 
	.loc 1 579 20
	imull	%edx, %eax	# _50, _51
# g_game.c:579: 	mousex = ev->data2*(mouseSensitivity+5)/10; 
	.loc 1 579 41
	movslq	%eax, %rdx	# _51, tmp192
	imulq	$1717986919, %rdx, %rdx	#, tmp192, tmp193
	shrq	$32, %rdx	#, tmp194
	movl	%edx, %ecx	# tmp194, tmp195
	sarl	$2, %ecx	#, tmp195
	cltd
	movl	%ecx, %eax	# tmp195, tmp195
	subl	%edx, %eax	# tmp196, tmp195
# g_game.c:579: 	mousex = ev->data2*(mouseSensitivity+5)/10; 
	.loc 1 579 9
	movl	%eax, mousex(%rip)	# _52, mousex
# g_game.c:580: 	mousey = ev->data3*(mouseSensitivity+5)/10; 
	.loc 1 580 13
	movq	-8(%rbp), %rax	# ev, tmp197
	movl	12(%rax), %eax	# ev_88(D)->data3, _53
# g_game.c:580: 	mousey = ev->data3*(mouseSensitivity+5)/10; 
	.loc 1 580 38
	movl	mouseSensitivity(%rip), %edx	# mouseSensitivity, mouseSensitivity.113_54
	addl	$5, %edx	#, _55
# g_game.c:580: 	mousey = ev->data3*(mouseSensitivity+5)/10; 
	.loc 1 580 20
	imull	%edx, %eax	# _55, _56
# g_game.c:580: 	mousey = ev->data3*(mouseSensitivity+5)/10; 
	.loc 1 580 41
	movslq	%eax, %rdx	# _56, tmp198
	imulq	$1717986919, %rdx, %rdx	#, tmp198, tmp199
	shrq	$32, %rdx	#, tmp200
	movl	%edx, %ecx	# tmp200, tmp201
	sarl	$2, %ecx	#, tmp201
	cltd
	movl	%ecx, %eax	# tmp201, tmp201
	subl	%edx, %eax	# tmp202, tmp201
# g_game.c:580: 	mousey = ev->data3*(mouseSensitivity+5)/10; 
	.loc 1 580 9
	movl	%eax, mousey(%rip)	# _57, mousey
# g_game.c:581: 	return true;    // eat events 
	.loc 1 581 9
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L86:
# g_game.c:584: 	joybuttons[0] = ev->data1 & 1; 
	.loc 1 584 20
	movq	-8(%rbp), %rax	# ev, tmp203
	movl	4(%rax), %eax	# ev_88(D)->data1, _58
# g_game.c:584: 	joybuttons[0] = ev->data1 & 1; 
	.loc 1 584 28
	andl	$1, %eax	#, _58
	movl	%eax, %edx	# _58, _59
# g_game.c:584: 	joybuttons[0] = ev->data1 & 1; 
	.loc 1 584 12
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.114_60
# g_game.c:584: 	joybuttons[0] = ev->data1 & 1; 
	.loc 1 584 16
	movl	%edx, (%rax)	# _61, *joybuttons.114_60
# g_game.c:585: 	joybuttons[1] = ev->data1 & 2; 
	.loc 1 585 20
	movq	-8(%rbp), %rax	# ev, tmp204
	movl	4(%rax), %eax	# ev_88(D)->data1, _62
# g_game.c:585: 	joybuttons[1] = ev->data1 & 2; 
	.loc 1 585 28
	andl	$2, %eax	#, _62
	movl	%eax, %edx	# _62, _63
# g_game.c:585: 	joybuttons[1] = ev->data1 & 2; 
	.loc 1 585 12
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.115_64
	addq	$4, %rax	#, _65
# g_game.c:585: 	joybuttons[1] = ev->data1 & 2; 
	.loc 1 585 16
	movl	%edx, (%rax)	# _66, *_65
# g_game.c:586: 	joybuttons[2] = ev->data1 & 4; 
	.loc 1 586 20
	movq	-8(%rbp), %rax	# ev, tmp205
	movl	4(%rax), %eax	# ev_88(D)->data1, _67
# g_game.c:586: 	joybuttons[2] = ev->data1 & 4; 
	.loc 1 586 28
	andl	$4, %eax	#, _67
	movl	%eax, %edx	# _67, _68
# g_game.c:586: 	joybuttons[2] = ev->data1 & 4; 
	.loc 1 586 12
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.116_69
	addq	$8, %rax	#, _70
# g_game.c:586: 	joybuttons[2] = ev->data1 & 4; 
	.loc 1 586 16
	movl	%edx, (%rax)	# _71, *_70
# g_game.c:587: 	joybuttons[3] = ev->data1 & 8; 
	.loc 1 587 20
	movq	-8(%rbp), %rax	# ev, tmp206
	movl	4(%rax), %eax	# ev_88(D)->data1, _72
# g_game.c:587: 	joybuttons[3] = ev->data1 & 8; 
	.loc 1 587 28
	andl	$8, %eax	#, _72
	movl	%eax, %edx	# _72, _73
# g_game.c:587: 	joybuttons[3] = ev->data1 & 8; 
	.loc 1 587 12
	movq	joybuttons(%rip), %rax	# joybuttons, joybuttons.117_74
	addq	$12, %rax	#, _75
# g_game.c:587: 	joybuttons[3] = ev->data1 & 8; 
	.loc 1 587 16
	movl	%edx, (%rax)	# _76, *_75
# g_game.c:588: 	joyxmove = ev->data2; 
	.loc 1 588 15
	movq	-8(%rbp), %rax	# ev, tmp207
	movl	8(%rax), %eax	# ev_88(D)->data2, _77
# g_game.c:588: 	joyxmove = ev->data2; 
	.loc 1 588 11
	movl	%eax, joyxmove(%rip)	# _77, joyxmove
# g_game.c:589: 	joyymove = ev->data3; 
	.loc 1 589 15
	movq	-8(%rbp), %rax	# ev, tmp208
	movl	12(%rax), %eax	# ev_88(D)->data3, _78
# g_game.c:589: 	joyymove = ev->data3; 
	.loc 1 589 11
	movl	%eax, joyymove(%rip)	# _78, joyymove
# g_game.c:590: 	return true;    // eat events 
	.loc 1 590 9
	movl	$1, %eax	#, _79
	jmp	.L76	#
.L95:
# g_game.c:593: 	break; 
	.loc 1 593 2
	nop	
# g_game.c:596:     return false; 
	.loc 1 596 12
	movl	$0, %eax	#, _79
.L76:
# g_game.c:597: } 
	.loc 1 597 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	G_Responder, .-G_Responder
	.section	.rodata
.LC4:
	.string	"%s is turbo!"
	.align 8
.LC5:
	.string	"consistency failure (%i should be %i)"
	.text
	.globl	G_Ticker
	.type	G_Ticker, @function
G_Ticker:
.LFB10:
	.loc 1 606 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# g_game.c:612:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 612 11
	movl	$0, -16(%rbp)	#, i
# g_game.c:612:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 612 5
	jmp	.L97	#
.L99:
# g_game.c:613: 	if (playeringame[i] && players[i].playerstate == PST_REBORN) 
	.loc 1 613 18
	movl	-16(%rbp), %eax	# i, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp137
	leaq	playeringame(%rip), %rax	#, tmp138
	movl	(%rdx,%rax), %eax	# playeringame[i_53], _1
# g_game.c:613: 	if (playeringame[i] && players[i].playerstate == PST_REBORN) 
	.loc 1 613 5
	testl	%eax, %eax	# _1
	je	.L98	#,
# g_game.c:613: 	if (playeringame[i] && players[i].playerstate == PST_REBORN) 
	.loc 1 613 35 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, tmp139
	movq	%rdx, %rax	# tmp139, tmp142
	salq	$2, %rax	#, tmp142
	addq	%rdx, %rax	# tmp139, tmp142
	salq	$6, %rax	#, tmp143
	movq	%rax, %rdx	# tmp142, tmp141
	leaq	8+players(%rip), %rax	#, tmp144
	movl	(%rdx,%rax), %eax	# players[i_53].playerstate, _2
# g_game.c:613: 	if (playeringame[i] && players[i].playerstate == PST_REBORN) 
	.loc 1 613 22 discriminator 1
	cmpl	$2, %eax	#, _2
	jne	.L98	#,
# g_game.c:614: 	    G_DoReborn (i);
	.loc 1 614 6
	movl	-16(%rbp), %eax	# i, tmp145
	movl	%eax, %edi	# tmp145,
	call	G_DoReborn	#
.L98:
# g_game.c:612:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 612 32 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L97:
# g_game.c:612:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 612 17 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L99	#,
# g_game.c:617:     while (gameaction != ga_nothing) 
	.loc 1 617 11
	jmp	.L101	#
.L114:
# g_game.c:619: 	switch (gameaction) 
	.loc 1 619 2
	movl	gameaction(%rip), %eax	# gameaction, gameaction.118_3
	cmpl	$9, %eax	#, gameaction.118_3
	ja	.L101	#,
	movl	%eax, %eax	# gameaction.118_3, tmp146
	leaq	0(,%rax,4), %rdx	#, tmp147
	leaq	.L103(%rip), %rax	#, tmp148
	movl	(%rdx,%rax), %eax	#, tmp149
	cltq
	leaq	.L103(%rip), %rdx	#, tmp152
	addq	%rdx, %rax	# tmp152, tmp151
	notrack jmp	*%rax	# tmp151
	.section	.rodata
	.align 4
	.align 4
.L103:
	.long	.L136-.L103
	.long	.L111-.L103
	.long	.L110-.L103
	.long	.L109-.L103
	.long	.L108-.L103
	.long	.L107-.L103
	.long	.L106-.L103
	.long	.L105-.L103
	.long	.L104-.L103
	.long	.L102-.L103
	.text
.L111:
# g_game.c:622: 	    G_DoLoadLevel (); 
	.loc 1 622 6
	call	G_DoLoadLevel	#
# g_game.c:623: 	    break; 
	.loc 1 623 6
	jmp	.L101	#
.L110:
# g_game.c:625: 	    G_DoNewGame (); 
	.loc 1 625 6
	call	G_DoNewGame	#
# g_game.c:626: 	    break; 
	.loc 1 626 6
	jmp	.L101	#
.L109:
# g_game.c:628: 	    G_DoLoadGame (); 
	.loc 1 628 6
	call	G_DoLoadGame	#
# g_game.c:629: 	    break; 
	.loc 1 629 6
	jmp	.L101	#
.L108:
# g_game.c:631: 	    G_DoSaveGame (); 
	.loc 1 631 6
	call	G_DoSaveGame	#
# g_game.c:632: 	    break; 
	.loc 1 632 6
	jmp	.L101	#
.L107:
# g_game.c:634: 	    G_DoPlayDemo (); 
	.loc 1 634 6
	call	G_DoPlayDemo	#
# g_game.c:635: 	    break; 
	.loc 1 635 6
	jmp	.L101	#
.L106:
# g_game.c:637: 	    G_DoCompleted (); 
	.loc 1 637 6
	call	G_DoCompleted	#
# g_game.c:638: 	    break; 
	.loc 1 638 6
	jmp	.L101	#
.L105:
# g_game.c:640: 	    F_StartFinale (); 
	.loc 1 640 6
	call	F_StartFinale@PLT	#
# g_game.c:641: 	    break; 
	.loc 1 641 6
	jmp	.L101	#
.L104:
# g_game.c:643: 	    G_DoWorldDone (); 
	.loc 1 643 6
	call	G_DoWorldDone	#
# g_game.c:644: 	    break; 
	.loc 1 644 6
	jmp	.L101	#
.L102:
# g_game.c:646: 	    M_ScreenShot (); 
	.loc 1 646 6
	call	M_ScreenShot@PLT	#
# g_game.c:647: 	    gameaction = ga_nothing; 
	.loc 1 647 17
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:648: 	    break; 
	.loc 1 648 6
	jmp	.L101	#
.L136:
# g_game.c:650: 	    break; 
	.loc 1 650 6
	nop	
.L101:
# g_game.c:617:     while (gameaction != ga_nothing) 
	.loc 1 617 23
	movl	gameaction(%rip), %eax	# gameaction, gameaction.119_4
	testl	%eax, %eax	# gameaction.119_4
	jne	.L114	#,
# g_game.c:656:     buf = (gametic/ticdup)%BACKUPTICS; 
	.loc 1 656 19
	movl	gametic(%rip), %eax	# gametic, gametic.120_5
	movl	ticdup(%rip), %edi	# ticdup, ticdup.121_6
	cltd
	idivl	%edi	# ticdup.121_6
	movl	%eax, %edx	# tmp153, _7
# g_game.c:656:     buf = (gametic/ticdup)%BACKUPTICS; 
	.loc 1 656 9
	movslq	%edx, %rax	# _7, tmp155
	imulq	$715827883, %rax, %rax	#, tmp155, tmp156
	shrq	$32, %rax	#, tmp157
	sarl	%eax	# tmp158
	movl	%edx, %ecx	# _7, tmp159
	sarl	$31, %ecx	#, tmp159
	subl	%ecx, %eax	# tmp159, tmp160
	movl	%eax, -12(%rbp)	# tmp160, buf
	movl	-12(%rbp), %ecx	# buf, tmp161
	movl	%ecx, %eax	# tmp161, tmp162
	addl	%eax, %eax	# tmp162
	addl	%ecx, %eax	# tmp161, tmp162
	sall	$2, %eax	#, tmp163
	subl	%eax, %edx	# tmp162, tmp164
	movl	%edx, -12(%rbp)	# tmp164, buf
# g_game.c:658:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 658 11
	movl	$0, -16(%rbp)	#, i
# g_game.c:658:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 658 5
	jmp	.L115	#
.L122:
# g_game.c:660: 	if (playeringame[i]) 
	.loc 1 660 18
	movl	-16(%rbp), %eax	# i, tmp166
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp167
	leaq	playeringame(%rip), %rax	#, tmp168
	movl	(%rdx,%rax), %eax	# playeringame[i_54], _8
# g_game.c:660: 	if (playeringame[i]) 
	.loc 1 660 5
	testl	%eax, %eax	# _8
	je	.L116	#,
# g_game.c:662: 	    cmd = &players[i].cmd; 
	.loc 1 662 10
	movl	-16(%rbp), %eax	# i, tmp170
	movslq	%eax, %rdx	# tmp170, tmp169
	movq	%rdx, %rax	# tmp169, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# tmp169, tmp171
	salq	$6, %rax	#, tmp172
	leaq	players(%rip), %rdx	#, tmp174
	addq	%rdx, %rax	# tmp174, tmp173
	addq	$12, %rax	#, tmp175
	movq	%rax, -8(%rbp)	# tmp175, cmd
# g_game.c:664: 	    memcpy (cmd, &netcmds[i][buf], sizeof(ticcmd_t)); 
	.loc 1 664 19
	movl	-12(%rbp), %eax	# buf, tmp177
	movslq	%eax, %rcx	# tmp177, tmp176
	movl	-16(%rbp), %eax	# i, tmp179
	movslq	%eax, %rdx	# tmp179, tmp178
	movq	%rdx, %rax	# tmp178, tmp180
	addq	%rax, %rax	# tmp180
	addq	%rdx, %rax	# tmp178, tmp180
	salq	$2, %rax	#, tmp181
	addq	%rcx, %rax	# tmp176, tmp182
	leaq	0(,%rax,8), %rdx	#, tmp183
	leaq	netcmds(%rip), %rax	#, tmp184
	addq	%rdx, %rax	# tmp183, _9
# g_game.c:664: 	    memcpy (cmd, &netcmds[i][buf], sizeof(ticcmd_t)); 
	.loc 1 664 6
	movq	(%rax), %rdx	# MEM <unsigned long> [(char * {ref-all})_9], _90
	movq	-8(%rbp), %rax	# cmd, tmp185
	movq	%rdx, (%rax)	# _90, MEM <unsigned long> [(char * {ref-all})cmd_89]
# g_game.c:666: 	    if (demoplayback) 
	.loc 1 666 10
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.122_10
# g_game.c:666: 	    if (demoplayback) 
	.loc 1 666 9
	testl	%eax, %eax	# demoplayback.122_10
	je	.L117	#,
# g_game.c:667: 		G_ReadDemoTiccmd (cmd); 
	.loc 1 667 3
	movq	-8(%rbp), %rax	# cmd, tmp186
	movq	%rax, %rdi	# tmp186,
	call	G_ReadDemoTiccmd	#
.L117:
# g_game.c:668: 	    if (demorecording) 
	.loc 1 668 10
	movl	demorecording(%rip), %eax	# demorecording, demorecording.123_11
# g_game.c:668: 	    if (demorecording) 
	.loc 1 668 9
	testl	%eax, %eax	# demorecording.123_11
	je	.L118	#,
# g_game.c:669: 		G_WriteDemoTiccmd (cmd);
	.loc 1 669 3
	movq	-8(%rbp), %rax	# cmd, tmp187
	movq	%rax, %rdi	# tmp187,
	call	G_WriteDemoTiccmd	#
.L118:
# g_game.c:672: 	    if (cmd->forwardmove > TURBOTHRESHOLD 
	.loc 1 672 13
	movq	-8(%rbp), %rax	# cmd, tmp188
	movzbl	(%rax), %eax	# cmd_89->forwardmove, _12
# g_game.c:672: 	    if (cmd->forwardmove > TURBOTHRESHOLD 
	.loc 1 672 9
	cmpb	$50, %al	#, _12
	jle	.L119	#,
# g_game.c:673: 		&& !(gametic&31) && ((gametic>>5)&3) == i )
	.loc 1 673 15
	movl	gametic(%rip), %eax	# gametic, gametic.124_13
	andl	$31, %eax	#, _14
# g_game.c:673: 		&& !(gametic&31) && ((gametic>>5)&3) == i )
	.loc 1 673 3
	testl	%eax, %eax	# _14
	jne	.L119	#,
# g_game.c:673: 		&& !(gametic&31) && ((gametic>>5)&3) == i )
	.loc 1 673 32 discriminator 1
	movl	gametic(%rip), %eax	# gametic, gametic.125_15
	sarl	$5, %eax	#, _16
# g_game.c:673: 		&& !(gametic&31) && ((gametic>>5)&3) == i )
	.loc 1 673 36 discriminator 1
	andl	$3, %eax	#, _17
# g_game.c:673: 		&& !(gametic&31) && ((gametic>>5)&3) == i )
	.loc 1 673 20 discriminator 1
	cmpl	%eax, -16(%rbp)	# _17, i
	jne	.L119	#,
.LBB2:
# g_game.c:677: 		sprintf (turbomessage, "%s is turbo!",player_names[i]);
	.loc 1 677 3
	movl	-16(%rbp), %eax	# i, tmp190
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp191
	leaq	player_names(%rip), %rax	#, tmp192
	movq	(%rdx,%rax), %rax	# player_names[i_54], _18
	movq	%rax, %rdx	# _18,
	leaq	.LC4(%rip), %rax	#, tmp193
	movq	%rax, %rsi	# tmp193,
	leaq	turbomessage.0(%rip), %rax	#, tmp194
	movq	%rax, %rdi	# tmp194,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# g_game.c:678: 		players[consoleplayer].message = turbomessage;
	.loc 1 678 25
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.126_19
# g_game.c:678: 		players[consoleplayer].message = turbomessage;
	.loc 1 678 34
	movslq	%eax, %rdx	# consoleplayer.126_19, tmp195
	movq	%rdx, %rax	# tmp195, tmp197
	salq	$2, %rax	#, tmp197
	addq	%rdx, %rax	# tmp195, tmp197
	salq	$6, %rax	#, tmp198
	movq	%rax, %rcx	# tmp197, tmp196
	leaq	224+players(%rip), %rax	#, tmp199
	leaq	turbomessage.0(%rip), %rdx	#, tmp200
	movq	%rdx, (%rcx,%rax)	# tmp200, players[consoleplayer.126_19].message
.L119:
.LBE2:
# g_game.c:681: 	    if (netgame && !netdemo && !(gametic%ticdup) ) 
	.loc 1 681 10
	movl	netgame(%rip), %eax	# netgame, netgame.127_20
# g_game.c:681: 	    if (netgame && !netdemo && !(gametic%ticdup) ) 
	.loc 1 681 9
	testl	%eax, %eax	# netgame.127_20
	je	.L116	#,
# g_game.c:681: 	    if (netgame && !netdemo && !(gametic%ticdup) ) 
	.loc 1 681 21 discriminator 1
	movl	netdemo(%rip), %eax	# netdemo, netdemo.128_21
# g_game.c:681: 	    if (netgame && !netdemo && !(gametic%ticdup) ) 
	.loc 1 681 18 discriminator 1
	testl	%eax, %eax	# netdemo.128_21
	jne	.L116	#,
# g_game.c:681: 	    if (netgame && !netdemo && !(gametic%ticdup) ) 
	.loc 1 681 42 discriminator 2
	movl	gametic(%rip), %eax	# gametic, gametic.129_22
	movl	ticdup(%rip), %esi	# ticdup, ticdup.130_23
	cltd
	idivl	%esi	# ticdup.130_23
	movl	%edx, %ecx	# tmp201, tmp201
	movl	%ecx, %eax	# tmp201, _24
# g_game.c:681: 	    if (netgame && !netdemo && !(gametic%ticdup) ) 
	.loc 1 681 30 discriminator 2
	testl	%eax, %eax	# _24
	jne	.L116	#,
# g_game.c:683: 		if (gametic > BACKUPTICS 
	.loc 1 683 15
	movl	gametic(%rip), %eax	# gametic, gametic.131_25
# g_game.c:683: 		if (gametic > BACKUPTICS 
	.loc 1 683 6
	cmpl	$12, %eax	#, gametic.131_25
	jle	.L120	#,
# g_game.c:684: 		    && consistancy[i][buf] != cmd->consistancy) 
	.loc 1 684 24
	movl	-12(%rbp), %eax	# buf, tmp204
	movslq	%eax, %rcx	# tmp204, tmp203
	movl	-16(%rbp), %eax	# i, tmp206
	movslq	%eax, %rdx	# tmp206, tmp205
	movq	%rdx, %rax	# tmp205, tmp207
	addq	%rax, %rax	# tmp207
	addq	%rdx, %rax	# tmp205, tmp207
	salq	$2, %rax	#, tmp208
	addq	%rcx, %rax	# tmp203, tmp209
	leaq	(%rax,%rax), %rdx	#, tmp210
	leaq	consistancy(%rip), %rax	#, tmp211
	movzwl	(%rdx,%rax), %edx	# consistancy[i_54][buf_72], _26
# g_game.c:684: 		    && consistancy[i][buf] != cmd->consistancy) 
	.loc 1 684 36
	movq	-8(%rbp), %rax	# cmd, tmp212
	movzwl	4(%rax), %eax	# cmd_89->consistancy, _27
# g_game.c:684: 		    && consistancy[i][buf] != cmd->consistancy) 
	.loc 1 684 7
	cmpw	%ax, %dx	# _27, _26
	je	.L120	#,
# g_game.c:687: 			     cmd->consistancy, consistancy[i][buf]); 
	.loc 1 687 41
	movl	-12(%rbp), %eax	# buf, tmp214
	movslq	%eax, %rcx	# tmp214, tmp213
	movl	-16(%rbp), %eax	# i, tmp216
	movslq	%eax, %rdx	# tmp216, tmp215
	movq	%rdx, %rax	# tmp215, tmp217
	addq	%rax, %rax	# tmp217
	addq	%rdx, %rax	# tmp215, tmp217
	salq	$2, %rax	#, tmp218
	addq	%rcx, %rax	# tmp213, tmp219
	leaq	(%rax,%rax), %rdx	#, tmp220
	leaq	consistancy(%rip), %rax	#, tmp221
	movzwl	(%rdx,%rax), %eax	# consistancy[i_54][buf_72], _28
# g_game.c:686: 		    I_Error ("consistency failure (%i should be %i)",
	.loc 1 686 7
	movswl	%ax, %edx	# _28, _29
# g_game.c:687: 			     cmd->consistancy, consistancy[i][buf]); 
	.loc 1 687 12
	movq	-8(%rbp), %rax	# cmd, tmp222
	movzwl	4(%rax), %eax	# cmd_89->consistancy, _30
# g_game.c:686: 		    I_Error ("consistency failure (%i should be %i)",
	.loc 1 686 7
	cwtl
	movl	%eax, %esi	# _31,
	leaq	.LC5(%rip), %rax	#, tmp223
	movq	%rax, %rdi	# tmp223,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L120:
# g_game.c:689: 		if (players[i].mo) 
	.loc 1 689 17
	movl	-16(%rbp), %eax	# i, tmp225
	movslq	%eax, %rdx	# tmp225, tmp224
	movq	%rdx, %rax	# tmp224, tmp227
	salq	$2, %rax	#, tmp227
	addq	%rdx, %rax	# tmp224, tmp227
	salq	$6, %rax	#, tmp228
	movq	%rax, %rdx	# tmp227, tmp226
	leaq	players(%rip), %rax	#, tmp229
	movq	(%rdx,%rax), %rax	# players[i_54].mo, _32
# g_game.c:689: 		if (players[i].mo) 
	.loc 1 689 6
	testq	%rax, %rax	# _32
	je	.L121	#,
# g_game.c:690: 		    consistancy[i][buf] = players[i].mo->x; 
	.loc 1 690 39
	movl	-16(%rbp), %eax	# i, tmp231
	movslq	%eax, %rdx	# tmp231, tmp230
	movq	%rdx, %rax	# tmp230, tmp233
	salq	$2, %rax	#, tmp233
	addq	%rdx, %rax	# tmp230, tmp233
	salq	$6, %rax	#, tmp234
	movq	%rax, %rdx	# tmp233, tmp232
	leaq	players(%rip), %rax	#, tmp235
	movq	(%rdx,%rax), %rax	# players[i_54].mo, _33
# g_game.c:690: 		    consistancy[i][buf] = players[i].mo->x; 
	.loc 1 690 42
	movl	24(%rax), %eax	# _33->x, _34
# g_game.c:690: 		    consistancy[i][buf] = players[i].mo->x; 
	.loc 1 690 27
	movl	%eax, %esi	# _34, _35
	movl	-12(%rbp), %eax	# buf, tmp237
	movslq	%eax, %rcx	# tmp237, tmp236
	movl	-16(%rbp), %eax	# i, tmp239
	movslq	%eax, %rdx	# tmp239, tmp238
	movq	%rdx, %rax	# tmp238, tmp240
	addq	%rax, %rax	# tmp240
	addq	%rdx, %rax	# tmp238, tmp240
	salq	$2, %rax	#, tmp241
	addq	%rcx, %rax	# tmp236, tmp242
	leaq	(%rax,%rax), %rdx	#, tmp243
	leaq	consistancy(%rip), %rax	#, tmp244
	movw	%si, (%rdx,%rax)	# _35, consistancy[i_54][buf_72]
	jmp	.L116	#
.L121:
# g_game.c:692: 		    consistancy[i][buf] = rndindex; 
	.loc 1 692 27
	movl	rndindex(%rip), %eax	# rndindex, rndindex.132_36
	movl	%eax, %esi	# rndindex.132_36, _37
	movl	-12(%rbp), %eax	# buf, tmp246
	movslq	%eax, %rcx	# tmp246, tmp245
	movl	-16(%rbp), %eax	# i, tmp248
	movslq	%eax, %rdx	# tmp248, tmp247
	movq	%rdx, %rax	# tmp247, tmp249
	addq	%rax, %rax	# tmp249
	addq	%rdx, %rax	# tmp247, tmp249
	salq	$2, %rax	#, tmp250
	addq	%rcx, %rax	# tmp245, tmp251
	leaq	(%rax,%rax), %rdx	#, tmp252
	leaq	consistancy(%rip), %rax	#, tmp253
	movw	%si, (%rdx,%rax)	# _37, consistancy[i_54][buf_72]
.L116:
# g_game.c:658:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 658 32 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L115:
# g_game.c:658:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 658 17 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L122	#,
# g_game.c:698:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 698 11
	movl	$0, -16(%rbp)	#, i
# g_game.c:698:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 698 5
	jmp	.L123	#
.L130:
# g_game.c:700: 	if (playeringame[i]) 
	.loc 1 700 18
	movl	-16(%rbp), %eax	# i, tmp255
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp256
	leaq	playeringame(%rip), %rax	#, tmp257
	movl	(%rdx,%rax), %eax	# playeringame[i_55], _38
# g_game.c:700: 	if (playeringame[i]) 
	.loc 1 700 5
	testl	%eax, %eax	# _38
	je	.L124	#,
# g_game.c:702: 	    if (players[i].cmd.buttons & BT_SPECIAL) 
	.loc 1 702 24
	movl	-16(%rbp), %eax	# i, tmp259
	movslq	%eax, %rdx	# tmp259, tmp258
	movq	%rdx, %rax	# tmp258, tmp261
	salq	$2, %rax	#, tmp261
	addq	%rdx, %rax	# tmp258, tmp261
	salq	$6, %rax	#, tmp262
	movq	%rax, %rdx	# tmp261, tmp260
	leaq	19+players(%rip), %rax	#, tmp263
	movzbl	(%rdx,%rax), %eax	# players[i_55].cmd.buttons, _39
# g_game.c:702: 	    if (players[i].cmd.buttons & BT_SPECIAL) 
	.loc 1 702 9
	testb	%al, %al	# _40
	jns	.L124	#,
# g_game.c:704: 		switch (players[i].cmd.buttons & BT_SPECIALMASK) 
	.loc 1 704 25
	movl	-16(%rbp), %eax	# i, tmp265
	movslq	%eax, %rdx	# tmp265, tmp264
	movq	%rdx, %rax	# tmp264, tmp267
	salq	$2, %rax	#, tmp267
	addq	%rdx, %rax	# tmp264, tmp267
	salq	$6, %rax	#, tmp268
	movq	%rax, %rdx	# tmp267, tmp266
	leaq	19+players(%rip), %rax	#, tmp269
	movzbl	(%rdx,%rax), %eax	# players[i_55].cmd.buttons, _41
# g_game.c:704: 		switch (players[i].cmd.buttons & BT_SPECIALMASK) 
	.loc 1 704 34
	movzbl	%al, %eax	# _41, _42
	andl	$3, %eax	#, _43
# g_game.c:704: 		switch (players[i].cmd.buttons & BT_SPECIALMASK) 
	.loc 1 704 3
	cmpl	$1, %eax	#, _43
	je	.L125	#,
	cmpl	$2, %eax	#, _43
	je	.L126	#,
	jmp	.L124	#
.L125:
# g_game.c:707: 		    paused ^= 1; 
	.loc 1 707 14
	movl	paused(%rip), %eax	# paused, paused.133_44
	xorl	$1, %eax	#, _45
	movl	%eax, paused(%rip)	# _45, paused
# g_game.c:708: 		    if (paused) 
	.loc 1 708 11
	movl	paused(%rip), %eax	# paused, paused.134_46
# g_game.c:708: 		    if (paused) 
	.loc 1 708 10
	testl	%eax, %eax	# paused.134_46
	je	.L127	#,
# g_game.c:709: 			S_PauseSound (); 
	.loc 1 709 4
	call	S_PauseSound@PLT	#
# g_game.c:712: 		    break; 
	.loc 1 712 7
	jmp	.L124	#
.L127:
# g_game.c:711: 			S_ResumeSound (); 
	.loc 1 711 4
	call	S_ResumeSound@PLT	#
# g_game.c:712: 		    break; 
	.loc 1 712 7
	jmp	.L124	#
.L126:
# g_game.c:715: 		    if (!savedescription[0]) 
	.loc 1 715 27
	movzbl	savedescription(%rip), %eax	# savedescription[0], _47
# g_game.c:715: 		    if (!savedescription[0]) 
	.loc 1 715 10
	testb	%al, %al	# _47
	jne	.L129	#,
# g_game.c:716: 			strcpy (savedescription, "NET GAME"); 
	.loc 1 716 4
	movabsq	$4993719335564625230, %rax	#, tmp280
	movq	%rax, savedescription(%rip)	# tmp280, MEM <char[1:9]> [(void *)&savedescription]
	movb	$0, 8+savedescription(%rip)	#, MEM <char[1:9]> [(void *)&savedescription]
.L129:
# g_game.c:718: 			(players[i].cmd.buttons & BTS_SAVEMASK)>>BTS_SAVESHIFT; 
	.loc 1 718 19
	movl	-16(%rbp), %eax	# i, tmp271
	movslq	%eax, %rdx	# tmp271, tmp270
	movq	%rdx, %rax	# tmp270, tmp273
	salq	$2, %rax	#, tmp273
	addq	%rdx, %rax	# tmp270, tmp273
	salq	$6, %rax	#, tmp274
	movq	%rax, %rdx	# tmp273, tmp272
	leaq	19+players(%rip), %rax	#, tmp275
	movzbl	(%rdx,%rax), %eax	# players[i_55].cmd.buttons, _48
# g_game.c:718: 			(players[i].cmd.buttons & BTS_SAVEMASK)>>BTS_SAVESHIFT; 
	.loc 1 718 43
	movzbl	%al, %eax	# _48, _49
	sarl	$2, %eax	#, _50
	andl	$7, %eax	#, _51
# g_game.c:717: 		    savegameslot =  
	.loc 1 717 20
	movl	%eax, savegameslot(%rip)	# _51, savegameslot
# g_game.c:719: 		    gameaction = ga_savegame; 
	.loc 1 719 18
	movl	$4, gameaction(%rip)	#, gameaction
# g_game.c:720: 		    break; 
	.loc 1 720 7
	nop	
.L124:
# g_game.c:698:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 698 32 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L123:
# g_game.c:698:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 698 17 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L130	#,
# g_game.c:727:     switch (gamestate) 
	.loc 1 727 5
	movl	gamestate(%rip), %eax	# gamestate, gamestate.135_52
	cmpl	$3, %eax	#, gamestate.135_52
	je	.L131	#,
	cmpl	$3, %eax	#, gamestate.135_52
	ja	.L137	#,
	cmpl	$2, %eax	#, gamestate.135_52
	je	.L133	#,
	cmpl	$2, %eax	#, gamestate.135_52
	ja	.L137	#,
	testl	%eax, %eax	# gamestate.135_52
	je	.L134	#,
	cmpl	$1, %eax	#, gamestate.135_52
	je	.L135	#,
# g_game.c:748: } 
	.loc 1 748 1
	jmp	.L137	#
.L134:
# g_game.c:730: 	P_Ticker (); 
	.loc 1 730 2
	call	P_Ticker@PLT	#
# g_game.c:731: 	ST_Ticker (); 
	.loc 1 731 2
	call	ST_Ticker@PLT	#
# g_game.c:732: 	AM_Ticker (); 
	.loc 1 732 2
	call	AM_Ticker@PLT	#
# g_game.c:733: 	HU_Ticker ();            
	.loc 1 733 2
	call	HU_Ticker@PLT	#
# g_game.c:734: 	break; 
	.loc 1 734 2
	jmp	.L132	#
.L135:
# g_game.c:737: 	WI_Ticker (); 
	.loc 1 737 2
	call	WI_Ticker@PLT	#
# g_game.c:738: 	break; 
	.loc 1 738 2
	jmp	.L132	#
.L133:
# g_game.c:741: 	F_Ticker (); 
	.loc 1 741 2
	call	F_Ticker@PLT	#
# g_game.c:742: 	break; 
	.loc 1 742 2
	jmp	.L132	#
.L131:
# g_game.c:745: 	D_PageTicker (); 
	.loc 1 745 2
	call	D_PageTicker@PLT	#
# g_game.c:746: 	break; 
	.loc 1 746 2
	nop	
.L132:
.L137:
# g_game.c:748: } 
	.loc 1 748 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	G_Ticker, .-G_Ticker
	.globl	G_InitPlayer
	.type	G_InitPlayer, @function
G_InitPlayer:
.LFB11:
	.loc 1 762 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# player, player
# g_game.c:766:     p = &players[player]; 
	.loc 1 766 7
	movl	-20(%rbp), %eax	# player, tmp83
	movslq	%eax, %rdx	# tmp83, tmp82
	movq	%rdx, %rax	# tmp82, tmp84
	salq	$2, %rax	#, tmp84
	addq	%rdx, %rax	# tmp82, tmp84
	salq	$6, %rax	#, tmp85
	leaq	players(%rip), %rdx	#, tmp86
	addq	%rdx, %rax	# tmp86, tmp87
	movq	%rax, -8(%rbp)	# tmp87, p
# g_game.c:769:     G_PlayerReborn (player); 
	.loc 1 769 5
	movl	-20(%rbp), %eax	# player, tmp88
	movl	%eax, %edi	# tmp88,
	call	G_PlayerReborn	#
# g_game.c:771: } 
	.loc 1 771 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	G_InitPlayer, .-G_InitPlayer
	.globl	G_PlayerFinishLevel
	.type	G_PlayerFinishLevel, @function
G_PlayerFinishLevel:
.LFB12:
	.loc 1 780 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# player, player
# g_game.c:783:     p = &players[player]; 
	.loc 1 783 7
	movl	-20(%rbp), %eax	# player, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	salq	$2, %rax	#, tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$6, %rax	#, tmp91
	leaq	players(%rip), %rdx	#, tmp92
	addq	%rdx, %rax	# tmp92, tmp93
	movq	%rax, -8(%rbp)	# tmp93, p
# g_game.c:785:     memset (p->powers, 0, sizeof (p->powers)); 
	.loc 1 785 14
	movq	-8(%rbp), %rax	# p, tmp94
	addq	$48, %rax	#, _1
# g_game.c:785:     memset (p->powers, 0, sizeof (p->powers)); 
	.loc 1 785 5
	movl	$24, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _1,
	call	memset@PLT	#
# g_game.c:786:     memset (p->cards, 0, sizeof (p->cards)); 
	.loc 1 786 14
	movq	-8(%rbp), %rax	# p, tmp95
	addq	$72, %rax	#, _2
# g_game.c:786:     memset (p->cards, 0, sizeof (p->cards)); 
	.loc 1 786 5
	movl	$24, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _2,
	call	memset@PLT	#
# g_game.c:787:     p->mo->flags &= ~MF_SHADOW;		// cancel invisibility 
	.loc 1 787 6
	movq	-8(%rbp), %rax	# p, tmp96
	movq	(%rax), %rax	# p_8->mo, _3
# g_game.c:787:     p->mo->flags &= ~MF_SHADOW;		// cancel invisibility 
	.loc 1 787 10
	movl	160(%rax), %edx	# _3->flags, _4
# g_game.c:787:     p->mo->flags &= ~MF_SHADOW;		// cancel invisibility 
	.loc 1 787 6
	movq	-8(%rbp), %rax	# p, tmp97
	movq	(%rax), %rax	# p_8->mo, _5
# g_game.c:787:     p->mo->flags &= ~MF_SHADOW;		// cancel invisibility 
	.loc 1 787 18
	andl	$-262145, %edx	#, _6
	movl	%edx, 160(%rax)	# _6, _5->flags
# g_game.c:788:     p->extralight = 0;			// cancel gun flashes 
	.loc 1 788 19
	movq	-8(%rbp), %rax	# p, tmp98
	movl	$0, 248(%rax)	#, p_8->extralight
# g_game.c:789:     p->fixedcolormap = 0;		// cancel ir gogles 
	.loc 1 789 22
	movq	-8(%rbp), %rax	# p, tmp99
	movl	$0, 252(%rax)	#, p_8->fixedcolormap
# g_game.c:790:     p->damagecount = 0;			// no palette changes 
	.loc 1 790 20
	movq	-8(%rbp), %rax	# p, tmp100
	movl	$0, 232(%rax)	#, p_8->damagecount
# g_game.c:791:     p->bonuscount = 0; 
	.loc 1 791 19
	movq	-8(%rbp), %rax	# p, tmp101
	movl	$0, 236(%rax)	#, p_8->bonuscount
# g_game.c:792: } 
	.loc 1 792 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	G_PlayerFinishLevel, .-G_PlayerFinishLevel
	.globl	G_PlayerReborn
	.type	G_PlayerReborn, @function
G_PlayerReborn:
.LFB13:
	.loc 1 801 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# player, player
# g_game.c:801: { 
	.loc 1 801 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp171
	movq	%rax, -8(%rbp)	# tmp171, D.9082
	xorl	%eax, %eax	# tmp171
# g_game.c:809:     memcpy (frags,players[player].frags,sizeof(frags)); 
	.loc 1 809 34
	movl	-68(%rbp), %eax	# player, tmp90
	movslq	%eax, %rdx	# tmp90, tmp89
	movq	%rdx, %rax	# tmp89, tmp91
	salq	$2, %rax	#, tmp91
	addq	%rdx, %rax	# tmp89, tmp91
	salq	$6, %rax	#, tmp92
	leaq	96(%rax), %rdx	#, tmp93
	leaq	players(%rip), %rax	#, tmp95
	addq	%rdx, %rax	# tmp93, tmp94
	addq	$4, %rax	#, _1
# g_game.c:809:     memcpy (frags,players[player].frags,sizeof(frags)); 
	.loc 1 809 5
	movq	8(%rax), %rdx	# MEM <uint128_t> [(char * {ref-all})_1], _10
	movq	(%rax), %rax	# MEM <uint128_t> [(char * {ref-all})_1], _10
	movq	%rax, -32(%rbp)	# _10, MEM <uint128_t> [(char * {ref-all})&frags]
	movq	%rdx, -24(%rbp)	# _10, MEM <uint128_t> [(char * {ref-all})&frags]
# g_game.c:810:     killcount = players[player].killcount; 
	.loc 1 810 15
	movl	-68(%rbp), %eax	# player, tmp97
	movslq	%eax, %rdx	# tmp97, tmp96
	movq	%rdx, %rax	# tmp96, tmp99
	salq	$2, %rax	#, tmp99
	addq	%rdx, %rax	# tmp96, tmp99
	salq	$6, %rax	#, tmp100
	movq	%rax, %rdx	# tmp99, tmp98
	leaq	208+players(%rip), %rax	#, tmp101
	movl	(%rdx,%rax), %eax	# players[player_8(D)].killcount, tmp102
	movl	%eax, -52(%rbp)	# tmp102, killcount
# g_game.c:811:     itemcount = players[player].itemcount; 
	.loc 1 811 15
	movl	-68(%rbp), %eax	# player, tmp104
	movslq	%eax, %rdx	# tmp104, tmp103
	movq	%rdx, %rax	# tmp103, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# tmp103, tmp106
	salq	$6, %rax	#, tmp107
	movq	%rax, %rdx	# tmp106, tmp105
	leaq	212+players(%rip), %rax	#, tmp108
	movl	(%rdx,%rax), %eax	# players[player_8(D)].itemcount, tmp109
	movl	%eax, -48(%rbp)	# tmp109, itemcount
# g_game.c:812:     secretcount = players[player].secretcount; 
	.loc 1 812 17
	movl	-68(%rbp), %eax	# player, tmp111
	movslq	%eax, %rdx	# tmp111, tmp110
	movq	%rdx, %rax	# tmp110, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# tmp110, tmp113
	salq	$6, %rax	#, tmp114
	movq	%rax, %rdx	# tmp113, tmp112
	leaq	216+players(%rip), %rax	#, tmp115
	movl	(%rdx,%rax), %eax	# players[player_8(D)].secretcount, tmp116
	movl	%eax, -44(%rbp)	# tmp116, secretcount
# g_game.c:814:     p = &players[player]; 
	.loc 1 814 7
	movl	-68(%rbp), %eax	# player, tmp118
	movslq	%eax, %rdx	# tmp118, tmp117
	movq	%rdx, %rax	# tmp117, tmp119
	salq	$2, %rax	#, tmp119
	addq	%rdx, %rax	# tmp117, tmp119
	salq	$6, %rax	#, tmp120
	leaq	players(%rip), %rdx	#, tmp121
	addq	%rdx, %rax	# tmp121, tmp122
	movq	%rax, -40(%rbp)	# tmp122, p
# g_game.c:815:     memset (p, 0, sizeof(*p)); 
	.loc 1 815 5
	movq	-40(%rbp), %rax	# p, tmp123
	movl	$320, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	memset@PLT	#
# g_game.c:817:     memcpy (players[player].frags, frags, sizeof(players[player].frags)); 
	.loc 1 817 28
	movl	-68(%rbp), %eax	# player, tmp125
	movslq	%eax, %rdx	# tmp125, tmp124
	movq	%rdx, %rax	# tmp124, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# tmp124, tmp126
	salq	$6, %rax	#, tmp127
	leaq	96(%rax), %rdx	#, tmp128
	leaq	players(%rip), %rax	#, tmp130
	addq	%rdx, %rax	# tmp128, tmp129
	leaq	4(%rax), %rcx	#, _2
# g_game.c:817:     memcpy (players[player].frags, frags, sizeof(players[player].frags)); 
	.loc 1 817 5
	movq	-32(%rbp), %rax	# MEM <uint128_t> [(char * {ref-all})&frags], _17
	movq	-24(%rbp), %rdx	# MEM <uint128_t> [(char * {ref-all})&frags], _17
	movq	%rax, (%rcx)	# _17, MEM <uint128_t> [(char * {ref-all})_2]
	movq	%rdx, 8(%rcx)	# _17, MEM <uint128_t> [(char * {ref-all})_2]
# g_game.c:818:     players[player].killcount = killcount; 
	.loc 1 818 31
	movl	-68(%rbp), %eax	# player, tmp132
	movslq	%eax, %rdx	# tmp132, tmp131
	movq	%rdx, %rax	# tmp131, tmp134
	salq	$2, %rax	#, tmp134
	addq	%rdx, %rax	# tmp131, tmp134
	salq	$6, %rax	#, tmp135
	movq	%rax, %rcx	# tmp134, tmp133
	leaq	208+players(%rip), %rdx	#, tmp136
	movl	-52(%rbp), %eax	# killcount, tmp137
	movl	%eax, (%rcx,%rdx)	# tmp137, players[player_8(D)].killcount
# g_game.c:819:     players[player].itemcount = itemcount; 
	.loc 1 819 31
	movl	-68(%rbp), %eax	# player, tmp139
	movslq	%eax, %rdx	# tmp139, tmp138
	movq	%rdx, %rax	# tmp138, tmp141
	salq	$2, %rax	#, tmp141
	addq	%rdx, %rax	# tmp138, tmp141
	salq	$6, %rax	#, tmp142
	movq	%rax, %rcx	# tmp141, tmp140
	leaq	212+players(%rip), %rdx	#, tmp143
	movl	-48(%rbp), %eax	# itemcount, tmp144
	movl	%eax, (%rcx,%rdx)	# tmp144, players[player_8(D)].itemcount
# g_game.c:820:     players[player].secretcount = secretcount; 
	.loc 1 820 33
	movl	-68(%rbp), %eax	# player, tmp146
	movslq	%eax, %rdx	# tmp146, tmp145
	movq	%rdx, %rax	# tmp145, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# tmp145, tmp148
	salq	$6, %rax	#, tmp149
	movq	%rax, %rcx	# tmp148, tmp147
	leaq	216+players(%rip), %rdx	#, tmp150
	movl	-44(%rbp), %eax	# secretcount, tmp151
	movl	%eax, (%rcx,%rdx)	# tmp151, players[player_8(D)].secretcount
# g_game.c:822:     p->usedown = p->attackdown = true;	// don't do anything immediately 
	.loc 1 822 32
	movq	-40(%rbp), %rax	# p, tmp152
	movl	$1, 192(%rax)	#, p_15->attackdown
# g_game.c:822:     p->usedown = p->attackdown = true;	// don't do anything immediately 
	.loc 1 822 19
	movq	-40(%rbp), %rax	# p, tmp153
	movl	192(%rax), %edx	# p_15->attackdown, _3
# g_game.c:822:     p->usedown = p->attackdown = true;	// don't do anything immediately 
	.loc 1 822 16
	movq	-40(%rbp), %rax	# p, tmp154
	movl	%edx, 196(%rax)	# _3, p_15->usedown
# g_game.c:823:     p->playerstate = PST_LIVE;       
	.loc 1 823 20
	movq	-40(%rbp), %rax	# p, tmp155
	movl	$0, 8(%rax)	#, p_15->playerstate
# g_game.c:824:     p->health = MAXHEALTH; 
	.loc 1 824 15
	movq	-40(%rbp), %rax	# p, tmp156
	movl	$100, 36(%rax)	#, p_15->health
# g_game.c:825:     p->readyweapon = p->pendingweapon = wp_pistol; 
	.loc 1 825 39
	movq	-40(%rbp), %rax	# p, tmp157
	movl	$1, 120(%rax)	#, p_15->pendingweapon
# g_game.c:825:     p->readyweapon = p->pendingweapon = wp_pistol; 
	.loc 1 825 23
	movq	-40(%rbp), %rax	# p, tmp158
	movl	120(%rax), %edx	# p_15->pendingweapon, _4
# g_game.c:825:     p->readyweapon = p->pendingweapon = wp_pistol; 
	.loc 1 825 20
	movq	-40(%rbp), %rax	# p, tmp159
	movl	%edx, 116(%rax)	# _4, p_15->readyweapon
# g_game.c:826:     p->weaponowned[wp_fist] = true; 
	.loc 1 826 29
	movq	-40(%rbp), %rax	# p, tmp160
	movl	$1, 124(%rax)	#, p_15->weaponowned[0]
# g_game.c:827:     p->weaponowned[wp_pistol] = true; 
	.loc 1 827 31
	movq	-40(%rbp), %rax	# p, tmp161
	movl	$1, 128(%rax)	#, p_15->weaponowned[1]
# g_game.c:828:     p->ammo[am_clip] = 50; 
	.loc 1 828 22
	movq	-40(%rbp), %rax	# p, tmp162
	movl	$50, 160(%rax)	#, p_15->ammo[0]
# g_game.c:830:     for (i=0 ; i<NUMAMMO ; i++) 
	.loc 1 830 11
	movl	$0, -56(%rbp)	#, i
# g_game.c:830:     for (i=0 ; i<NUMAMMO ; i++) 
	.loc 1 830 5
	jmp	.L141	#
.L142:
# g_game.c:831: 	p->maxammo[i] = maxammo[i]; 
	.loc 1 831 25
	movl	-56(%rbp), %eax	# i, tmp164
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp165
	leaq	maxammo(%rip), %rax	#, tmp166
	movl	(%rdx,%rax), %edx	# maxammo[i_6], _5
# g_game.c:831: 	p->maxammo[i] = maxammo[i]; 
	.loc 1 831 16
	movq	-40(%rbp), %rax	# p, tmp167
	movl	-56(%rbp), %ecx	# i, tmp169
	movslq	%ecx, %rcx	# tmp169, tmp168
	addq	$44, %rcx	#, tmp170
	movl	%edx, (%rax,%rcx,4)	# _5, p_15->maxammo[i_6]
# g_game.c:830:     for (i=0 ; i<NUMAMMO ; i++) 
	.loc 1 830 29 discriminator 3
	addl	$1, -56(%rbp)	#, i
.L141:
# g_game.c:830:     for (i=0 ; i<NUMAMMO ; i++) 
	.loc 1 830 17 discriminator 1
	cmpl	$3, -56(%rbp)	#, i
	jle	.L142	#,
# g_game.c:833: }
	.loc 1 833 1
	nop	
	movq	-8(%rbp), %rax	# D.9082, tmp172
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp172
	je	.L143	#,
	call	__stack_chk_fail@PLT	#
.L143:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	G_PlayerReborn, .-G_PlayerReborn
	.globl	G_CheckSpot
	.type	G_CheckSpot, @function
G_CheckSpot:
.LFB14:
	.loc 1 847 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# playernum, playernum
	movq	%rsi, -48(%rbp)	# mthing, mthing
# g_game.c:855:     if (!players[playernum].mo)
	.loc 1 855 28
	movl	-36(%rbp), %eax	# playernum, tmp130
	movslq	%eax, %rdx	# tmp130, tmp129
	movq	%rdx, %rax	# tmp129, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# tmp129, tmp132
	salq	$6, %rax	#, tmp133
	movq	%rax, %rdx	# tmp132, tmp131
	leaq	players(%rip), %rax	#, tmp134
	movq	(%rdx,%rax), %rax	# players[playernum_52(D)].mo, _1
# g_game.c:855:     if (!players[playernum].mo)
	.loc 1 855 8
	testq	%rax, %rax	# _1
	jne	.L145	#,
# g_game.c:858: 	for (i=0 ; i<playernum ; i++)
	.loc 1 858 8
	movl	$0, -32(%rbp)	#, i
# g_game.c:858: 	for (i=0 ; i<playernum ; i++)
	.loc 1 858 2
	jmp	.L146	#
.L149:
# g_game.c:859: 	    if (players[i].mo->x == mthing->x << FRACBITS
	.loc 1 859 20
	movl	-32(%rbp), %eax	# i, tmp136
	movslq	%eax, %rdx	# tmp136, tmp135
	movq	%rdx, %rax	# tmp135, tmp138
	salq	$2, %rax	#, tmp138
	addq	%rdx, %rax	# tmp135, tmp138
	salq	$6, %rax	#, tmp139
	movq	%rax, %rdx	# tmp138, tmp137
	leaq	players(%rip), %rax	#, tmp140
	movq	(%rdx,%rax), %rax	# players[i_46].mo, _2
# g_game.c:859: 	    if (players[i].mo->x == mthing->x << FRACBITS
	.loc 1 859 23
	movl	24(%rax), %edx	# _2->x, _3
# g_game.c:859: 	    if (players[i].mo->x == mthing->x << FRACBITS
	.loc 1 859 36
	movq	-48(%rbp), %rax	# mthing, tmp141
	movzwl	(%rax), %eax	# mthing_53(D)->x, _4
	cwtl
# g_game.c:859: 	    if (players[i].mo->x == mthing->x << FRACBITS
	.loc 1 859 40
	sall	$16, %eax	#, _6
# g_game.c:859: 	    if (players[i].mo->x == mthing->x << FRACBITS
	.loc 1 859 9
	cmpl	%eax, %edx	# _6, _3
	jne	.L147	#,
# g_game.c:860: 		&& players[i].mo->y == mthing->y << FRACBITS)
	.loc 1 860 16
	movl	-32(%rbp), %eax	# i, tmp143
	movslq	%eax, %rdx	# tmp143, tmp142
	movq	%rdx, %rax	# tmp142, tmp145
	salq	$2, %rax	#, tmp145
	addq	%rdx, %rax	# tmp142, tmp145
	salq	$6, %rax	#, tmp146
	movq	%rax, %rdx	# tmp145, tmp144
	leaq	players(%rip), %rax	#, tmp147
	movq	(%rdx,%rax), %rax	# players[i_46].mo, _7
# g_game.c:860: 		&& players[i].mo->y == mthing->y << FRACBITS)
	.loc 1 860 19
	movl	28(%rax), %edx	# _7->y, _8
# g_game.c:860: 		&& players[i].mo->y == mthing->y << FRACBITS)
	.loc 1 860 32
	movq	-48(%rbp), %rax	# mthing, tmp148
	movzwl	2(%rax), %eax	# mthing_53(D)->y, _9
	cwtl
# g_game.c:860: 		&& players[i].mo->y == mthing->y << FRACBITS)
	.loc 1 860 36
	sall	$16, %eax	#, _11
# g_game.c:860: 		&& players[i].mo->y == mthing->y << FRACBITS)
	.loc 1 860 3
	cmpl	%eax, %edx	# _11, _8
	jne	.L147	#,
# g_game.c:861: 		return false;	
	.loc 1 861 10
	movl	$0, %eax	#, _47
	jmp	.L148	#
.L147:
# g_game.c:858: 	for (i=0 ; i<playernum ; i++)
	.loc 1 858 28 discriminator 2
	addl	$1, -32(%rbp)	#, i
.L146:
# g_game.c:858: 	for (i=0 ; i<playernum ; i++)
	.loc 1 858 14 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp149
	cmpl	-36(%rbp), %eax	# playernum, tmp149
	jl	.L149	#,
# g_game.c:862: 	return true;
	.loc 1 862 9
	movl	$1, %eax	#, _47
	jmp	.L148	#
.L145:
# g_game.c:865:     x = mthing->x << FRACBITS; 
	.loc 1 865 15
	movq	-48(%rbp), %rax	# mthing, tmp150
	movzwl	(%rax), %eax	# mthing_53(D)->x, _12
	cwtl
# g_game.c:865:     x = mthing->x << FRACBITS; 
	.loc 1 865 7
	sall	$16, %eax	#, tmp151
	movl	%eax, -28(%rbp)	# tmp151, x
# g_game.c:866:     y = mthing->y << FRACBITS; 
	.loc 1 866 15
	movq	-48(%rbp), %rax	# mthing, tmp152
	movzwl	2(%rax), %eax	# mthing_53(D)->y, _14
	cwtl
# g_game.c:866:     y = mthing->y << FRACBITS; 
	.loc 1 866 7
	sall	$16, %eax	#, tmp153
	movl	%eax, -24(%rbp)	# tmp153, y
# g_game.c:868:     if (!P_CheckPosition (players[playernum].mo, x, y) ) 
	.loc 1 868 10
	movl	-36(%rbp), %eax	# playernum, tmp155
	movslq	%eax, %rdx	# tmp155, tmp154
	movq	%rdx, %rax	# tmp154, tmp157
	salq	$2, %rax	#, tmp157
	addq	%rdx, %rax	# tmp154, tmp157
	salq	$6, %rax	#, tmp158
	movq	%rax, %rdx	# tmp157, tmp156
	leaq	players(%rip), %rax	#, tmp159
	movq	(%rdx,%rax), %rax	# players[playernum_52(D)].mo, _16
	movl	-24(%rbp), %edx	# y, tmp160
	movl	-28(%rbp), %ecx	# x, tmp161
	movl	%ecx, %esi	# tmp161,
	movq	%rax, %rdi	# _16,
	call	P_CheckPosition@PLT	#
# g_game.c:868:     if (!P_CheckPosition (players[playernum].mo, x, y) ) 
	.loc 1 868 8 discriminator 1
	testl	%eax, %eax	# _17
	jne	.L150	#,
# g_game.c:869: 	return false; 
	.loc 1 869 9
	movl	$0, %eax	#, _47
	jmp	.L148	#
.L150:
# g_game.c:872:     if (bodyqueslot >= BODYQUESIZE) 
	.loc 1 872 21
	movl	bodyqueslot(%rip), %eax	# bodyqueslot, bodyqueslot.136_18
# g_game.c:872:     if (bodyqueslot >= BODYQUESIZE) 
	.loc 1 872 8
	cmpl	$31, %eax	#, bodyqueslot.136_18
	jle	.L151	#,
# g_game.c:873: 	P_RemoveMobj (bodyque[bodyqueslot%BODYQUESIZE]); 
	.loc 1 873 35
	movl	bodyqueslot(%rip), %edx	# bodyqueslot, bodyqueslot.137_19
	movl	%edx, %eax	# bodyqueslot.137_19, tmp162
	sarl	$31, %eax	#, tmp162
	shrl	$27, %eax	#, tmp163
	addl	%eax, %edx	# tmp163, tmp164
	andl	$31, %edx	#, tmp165
	subl	%eax, %edx	# tmp163, tmp166
	movl	%edx, %eax	# tmp166, _20
# g_game.c:873: 	P_RemoveMobj (bodyque[bodyqueslot%BODYQUESIZE]); 
	.loc 1 873 2
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp168
	leaq	bodyque(%rip), %rax	#, tmp169
	movq	(%rdx,%rax), %rax	# bodyque[_20], _21
	movq	%rax, %rdi	# _21,
	call	P_RemoveMobj@PLT	#
.L151:
# g_game.c:874:     bodyque[bodyqueslot%BODYQUESIZE] = players[playernum].mo; 
	.loc 1 874 24
	movl	bodyqueslot(%rip), %edx	# bodyqueslot, bodyqueslot.138_22
	movl	%edx, %eax	# bodyqueslot.138_22, tmp170
	sarl	$31, %eax	#, tmp170
	shrl	$27, %eax	#, tmp171
	addl	%eax, %edx	# tmp171, tmp172
	andl	$31, %edx	#, tmp173
	subl	%eax, %edx	# tmp171, tmp174
	movl	%edx, %ecx	# tmp174, _23
# g_game.c:874:     bodyque[bodyqueslot%BODYQUESIZE] = players[playernum].mo; 
	.loc 1 874 58
	movl	-36(%rbp), %eax	# playernum, tmp176
	movslq	%eax, %rdx	# tmp176, tmp175
	movq	%rdx, %rax	# tmp175, tmp178
	salq	$2, %rax	#, tmp178
	addq	%rdx, %rax	# tmp175, tmp178
	salq	$6, %rax	#, tmp179
	movq	%rax, %rdx	# tmp178, tmp177
	leaq	players(%rip), %rax	#, tmp180
	movq	(%rdx,%rax), %rax	# players[playernum_52(D)].mo, _24
# g_game.c:874:     bodyque[bodyqueslot%BODYQUESIZE] = players[playernum].mo; 
	.loc 1 874 38
	movslq	%ecx, %rdx	# _23, tmp181
	leaq	0(,%rdx,8), %rcx	#, tmp182
	leaq	bodyque(%rip), %rdx	#, tmp183
	movq	%rax, (%rcx,%rdx)	# _24, bodyque[_23]
# g_game.c:875:     bodyqueslot++; 
	.loc 1 875 16
	movl	bodyqueslot(%rip), %eax	# bodyqueslot, bodyqueslot.139_25
	addl	$1, %eax	#, _26
	movl	%eax, bodyqueslot(%rip)	# _26, bodyqueslot
# g_game.c:878:     ss = R_PointInSubsector (x,y); 
	.loc 1 878 10
	movl	-24(%rbp), %edx	# y, tmp184
	movl	-28(%rbp), %eax	# x, tmp185
	movl	%edx, %esi	# tmp184,
	movl	%eax, %edi	# tmp185,
	call	R_PointInSubsector@PLT	#
	movq	%rax, -16(%rbp)	# tmp186, ss
# g_game.c:879:     an = ( ANG45 * (mthing->angle/45) ) >> ANGLETOFINESHIFT; 
	.loc 1 879 27
	movq	-48(%rbp), %rax	# mthing, tmp187
	movzwl	4(%rax), %eax	# mthing_53(D)->angle, _27
# g_game.c:879:     an = ( ANG45 * (mthing->angle/45) ) >> ANGLETOFINESHIFT; 
	.loc 1 879 34
	movswl	%ax, %edx	# _27, tmp188
	imull	$11651, %edx, %edx	#, tmp188, tmp189
	shrl	$16, %edx	#, tmp190
	sarw	$3, %dx	#, tmp191
	sarw	$15, %ax	#, _27
	movl	%eax, %ecx	# _27, tmp192
	movl	%edx, %eax	# tmp191, tmp191
	subl	%ecx, %eax	# tmp192, tmp191
	cwtl
# g_game.c:879:     an = ( ANG45 * (mthing->angle/45) ) >> ANGLETOFINESHIFT; 
	.loc 1 879 18
	sall	$29, %eax	#, _30
# g_game.c:879:     an = ( ANG45 * (mthing->angle/45) ) >> ANGLETOFINESHIFT; 
	.loc 1 879 41
	sarl	$19, %eax	#, _31
# g_game.c:879:     an = ( ANG45 * (mthing->angle/45) ) >> ANGLETOFINESHIFT; 
	.loc 1 879 8
	movl	%eax, -20(%rbp)	# _31, an
# g_game.c:882: 		      , ss->sector->floorheight 
	.loc 1 882 13
	movq	-16(%rbp), %rax	# ss, tmp193
	movq	(%rax), %rax	# ss_61->sector, _32
# g_game.c:881:     mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an] 
	.loc 1 881 10
	movl	(%rax), %esi	# _32->floorheight, _33
# g_game.c:881:     mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an] 
	.loc 1 881 57
	movl	-20(%rbp), %eax	# an, tmp194
	leaq	0(,%rax,4), %rdx	#, tmp195
	leaq	finesine(%rip), %rax	#, tmp196
	movl	(%rdx,%rax), %edx	# finesine[an_62], _34
# g_game.c:881:     mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an] 
	.loc 1 881 48
	movl	%edx, %eax	# _34, tmp197
	sall	$2, %eax	#, tmp197
	addl	%edx, %eax	# _34, tmp197
	sall	$2, %eax	#, tmp198
	movl	%eax, %edx	# tmp197, _35
# g_game.c:881:     mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an] 
	.loc 1 881 10
	movl	-24(%rbp), %eax	# y, tmp199
	leal	(%rdx,%rax), %edi	#, _36
# g_game.c:881:     mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an] 
	.loc 1 881 38
	movq	finecosine(%rip), %rax	# finecosine, finecosine.140_37
	movl	-20(%rbp), %edx	# an, _38
	salq	$2, %rdx	#, _39
	addq	%rdx, %rax	# _39, _40
	movl	(%rax), %edx	# *_40, _41
# g_game.c:881:     mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an] 
	.loc 1 881 27
	movl	%edx, %eax	# _41, tmp200
	sall	$2, %eax	#, tmp200
	addl	%edx, %eax	# _41, tmp200
	sall	$2, %eax	#, tmp201
	movl	%eax, %edx	# tmp200, _42
# g_game.c:881:     mo = P_SpawnMobj (x+20*finecosine[an], y+20*finesine[an] 
	.loc 1 881 10
	movl	-28(%rbp), %eax	# x, tmp202
	addl	%edx, %eax	# _42, _43
	movl	$39, %ecx	#,
	movl	%esi, %edx	# _33,
	movl	%edi, %esi	# _36,
	movl	%eax, %edi	# _43,
	call	P_SpawnMobj@PLT	#
	movq	%rax, -8(%rbp)	# tmp203, mo
# g_game.c:885:     if (players[consoleplayer].viewz != 1) 
	.loc 1 885 31
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.141_44
	movslq	%eax, %rdx	# consoleplayer.141_44, tmp204
	movq	%rdx, %rax	# tmp204, tmp206
	salq	$2, %rax	#, tmp206
	addq	%rdx, %rax	# tmp204, tmp206
	salq	$6, %rax	#, tmp207
	movq	%rax, %rdx	# tmp206, tmp205
	leaq	20+players(%rip), %rax	#, tmp208
	movl	(%rdx,%rax), %eax	# players[consoleplayer.141_44].viewz, _45
# g_game.c:885:     if (players[consoleplayer].viewz != 1) 
	.loc 1 885 8
	cmpl	$1, %eax	#, _45
	je	.L152	#,
# g_game.c:886: 	S_StartSound (mo, sfx_telept);	// don't start sound on first frame 
	.loc 1 886 2
	movq	-8(%rbp), %rax	# mo, tmp209
	movl	$35, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	S_StartSound@PLT	#
.L152:
# g_game.c:888:     return true; 
	.loc 1 888 12
	movl	$1, %eax	#, _47
.L148:
# g_game.c:889: } 
	.loc 1 889 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	G_CheckSpot, .-G_CheckSpot
	.section	.rodata
	.align 8
.LC6:
	.string	"Only %i deathmatch spots, 4 required"
	.text
	.globl	G_DeathMatchSpawnPlayer
	.type	G_DeathMatchSpawnPlayer, @function
G_DeathMatchSpawnPlayer:
.LFB15:
	.loc 1 898 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# playernum, playernum
# g_game.c:902:     selections = deathmatch_p - deathmatchstarts; 
	.loc 1 902 31
	movq	deathmatch_p(%rip), %rdx	# deathmatch_p, deathmatch_p.142_1
	leaq	deathmatchstarts(%rip), %rax	#, tmp93
	subq	%rax, %rdx	# tmp93, _2
	sarq	%rdx	# tmp94
	movabsq	$-3689348814741910323, %rax	#, tmp96
	imulq	%rdx, %rax	# tmp94, tmp95
# g_game.c:902:     selections = deathmatch_p - deathmatchstarts; 
	.loc 1 902 16
	movl	%eax, -8(%rbp)	# _3, selections
# g_game.c:903:     if (selections < 4) 
	.loc 1 903 8
	cmpl	$3, -8(%rbp)	#, selections
	jg	.L154	#,
# g_game.c:904: 	I_Error ("Only %i deathmatch spots, 4 required", selections); 
	.loc 1 904 2
	movl	-8(%rbp), %eax	# selections, tmp97
	movl	%eax, %esi	# tmp97,
	leaq	.LC6(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L154:
# g_game.c:906:     for (j=0 ; j<20 ; j++) 
	.loc 1 906 11
	movl	$0, -12(%rbp)	#, j
# g_game.c:906:     for (j=0 ; j<20 ; j++) 
	.loc 1 906 5
	jmp	.L155	#
.L158:
# g_game.c:908: 	i = P_Random() % selections; 
	.loc 1 908 6
	call	P_Random@PLT	#
# g_game.c:908: 	i = P_Random() % selections; 
	.loc 1 908 4 discriminator 1
	cltd
	idivl	-8(%rbp)	# selections
	movl	%edx, -4(%rbp)	# tmp100, i
# g_game.c:909: 	if (G_CheckSpot (playernum, &deathmatchstarts[i]) ) 
	.loc 1 909 6
	movl	-4(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, tmp102
	movq	%rdx, %rax	# tmp102, tmp104
	salq	$2, %rax	#, tmp104
	addq	%rdx, %rax	# tmp102, tmp104
	addq	%rax, %rax	# tmp105
	leaq	deathmatchstarts(%rip), %rdx	#, tmp106
	addq	%rax, %rdx	# tmp104, _5
	movl	-20(%rbp), %eax	# playernum, tmp107
	movq	%rdx, %rsi	# _5,
	movl	%eax, %edi	# tmp107,
	call	G_CheckSpot	#
# g_game.c:909: 	if (G_CheckSpot (playernum, &deathmatchstarts[i]) ) 
	.loc 1 909 5 discriminator 1
	testl	%eax, %eax	# _6
	je	.L156	#,
# g_game.c:911: 	    deathmatchstarts[i].type = playernum+1; 
	.loc 1 911 42
	movl	-20(%rbp), %eax	# playernum, tmp108
	addl	$1, %eax	#, _8
	movl	%eax, %ecx	# _8, _9
# g_game.c:911: 	    deathmatchstarts[i].type = playernum+1; 
	.loc 1 911 31
	movl	-4(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, tmp109
	movq	%rdx, %rax	# tmp109, tmp112
	salq	$2, %rax	#, tmp112
	addq	%rdx, %rax	# tmp109, tmp112
	addq	%rax, %rax	# tmp113
	movq	%rax, %rdx	# tmp112, tmp111
	leaq	6+deathmatchstarts(%rip), %rax	#, tmp114
	movw	%cx, (%rdx,%rax)	# _9, deathmatchstarts[i_23].type
# g_game.c:912: 	    P_SpawnPlayer (&deathmatchstarts[i]); 
	.loc 1 912 6
	movl	-4(%rbp), %eax	# i, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	salq	$2, %rax	#, tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	addq	%rax, %rax	# tmp118
	leaq	deathmatchstarts(%rip), %rdx	#, tmp119
	addq	%rdx, %rax	# tmp119, _10
	movq	%rax, %rdi	# _10,
	call	P_SpawnPlayer@PLT	#
# g_game.c:913: 	    return; 
	.loc 1 913 6
	jmp	.L153	#
.L156:
# g_game.c:906:     for (j=0 ; j<20 ; j++) 
	.loc 1 906 24 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L155:
# g_game.c:906:     for (j=0 ; j<20 ; j++) 
	.loc 1 906 17 discriminator 1
	cmpl	$19, -12(%rbp)	#, j
	jle	.L158	#,
# g_game.c:918:     P_SpawnPlayer (&playerstarts[playernum]); 
	.loc 1 918 5
	movl	-20(%rbp), %eax	# playernum, tmp121
	movslq	%eax, %rdx	# tmp121, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rdx, %rax	# tmp120, tmp122
	addq	%rax, %rax	# tmp123
	leaq	playerstarts(%rip), %rdx	#, tmp124
	addq	%rdx, %rax	# tmp124, _11
	movq	%rax, %rdi	# _11,
	call	P_SpawnPlayer@PLT	#
.L153:
# g_game.c:919: } 
	.loc 1 919 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	G_DeathMatchSpawnPlayer, .-G_DeathMatchSpawnPlayer
	.globl	G_DoReborn
	.type	G_DoReborn, @function
G_DoReborn:
.LFB16:
	.loc 1 925 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# playernum, playernum
# g_game.c:928:     if (!netgame)
	.loc 1 928 9
	movl	netgame(%rip), %eax	# netgame, netgame.143_1
# g_game.c:928:     if (!netgame)
	.loc 1 928 8
	testl	%eax, %eax	# netgame.143_1
	jne	.L160	#,
# g_game.c:931: 	gameaction = ga_loadlevel;  
	.loc 1 931 13
	movl	$1, gameaction(%rip)	#, gameaction
	jmp	.L159	#
.L160:
# g_game.c:938: 	players[playernum].mo->player = NULL;   
	.loc 1 938 20
	movl	-20(%rbp), %eax	# playernum, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp101
	salq	$2, %rax	#, tmp101
	addq	%rdx, %rax	# tmp98, tmp101
	salq	$6, %rax	#, tmp102
	movq	%rax, %rdx	# tmp101, tmp100
	leaq	players(%rip), %rax	#, tmp103
	movq	(%rdx,%rax), %rax	# players[playernum_21(D)].mo, _2
# g_game.c:938: 	players[playernum].mo->player = NULL;   
	.loc 1 938 32
	movq	$0, 192(%rax)	#, _2->player
# g_game.c:941: 	if (deathmatch) 
	.loc 1 941 6
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.144_3
# g_game.c:941: 	if (deathmatch) 
	.loc 1 941 5
	testl	%eax, %eax	# deathmatch.144_3
	je	.L162	#,
# g_game.c:943: 	    G_DeathMatchSpawnPlayer (playernum); 
	.loc 1 943 6
	movl	-20(%rbp), %eax	# playernum, tmp104
	movl	%eax, %edi	# tmp104,
	call	G_DeathMatchSpawnPlayer	#
# g_game.c:944: 	    return; 
	.loc 1 944 6
	jmp	.L159	#
.L162:
# g_game.c:947: 	if (G_CheckSpot (playernum, &playerstarts[playernum]) ) 
	.loc 1 947 6
	movl	-20(%rbp), %eax	# playernum, tmp106
	movslq	%eax, %rdx	# tmp106, tmp105
	movq	%rdx, %rax	# tmp105, tmp107
	salq	$2, %rax	#, tmp107
	addq	%rdx, %rax	# tmp105, tmp107
	addq	%rax, %rax	# tmp108
	leaq	playerstarts(%rip), %rdx	#, tmp109
	addq	%rax, %rdx	# tmp107, _4
	movl	-20(%rbp), %eax	# playernum, tmp110
	movq	%rdx, %rsi	# _4,
	movl	%eax, %edi	# tmp110,
	call	G_CheckSpot	#
# g_game.c:947: 	if (G_CheckSpot (playernum, &playerstarts[playernum]) ) 
	.loc 1 947 5 discriminator 1
	testl	%eax, %eax	# _5
	je	.L163	#,
# g_game.c:949: 	    P_SpawnPlayer (&playerstarts[playernum]); 
	.loc 1 949 6
	movl	-20(%rbp), %eax	# playernum, tmp112
	movslq	%eax, %rdx	# tmp112, tmp111
	movq	%rdx, %rax	# tmp111, tmp113
	salq	$2, %rax	#, tmp113
	addq	%rdx, %rax	# tmp111, tmp113
	addq	%rax, %rax	# tmp114
	leaq	playerstarts(%rip), %rdx	#, tmp115
	addq	%rdx, %rax	# tmp115, _6
	movq	%rax, %rdi	# _6,
	call	P_SpawnPlayer@PLT	#
# g_game.c:950: 	    return; 
	.loc 1 950 6
	jmp	.L159	#
.L163:
# g_game.c:954: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 954 8
	movl	$0, -4(%rbp)	#, i
# g_game.c:954: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 954 2
	jmp	.L164	#
.L166:
# g_game.c:956: 	    if (G_CheckSpot (playernum, &playerstarts[i]) ) 
	.loc 1 956 10
	movl	-4(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, tmp116
	movq	%rdx, %rax	# tmp116, tmp118
	salq	$2, %rax	#, tmp118
	addq	%rdx, %rax	# tmp116, tmp118
	addq	%rax, %rax	# tmp119
	leaq	playerstarts(%rip), %rdx	#, tmp120
	addq	%rax, %rdx	# tmp118, _7
	movl	-20(%rbp), %eax	# playernum, tmp121
	movq	%rdx, %rsi	# _7,
	movl	%eax, %edi	# tmp121,
	call	G_CheckSpot	#
# g_game.c:956: 	    if (G_CheckSpot (playernum, &playerstarts[i]) ) 
	.loc 1 956 9 discriminator 1
	testl	%eax, %eax	# _8
	je	.L165	#,
# g_game.c:958: 		playerstarts[i].type = playernum+1;	// fake as other player 
	.loc 1 958 35
	movl	-20(%rbp), %eax	# playernum, tmp122
	addl	$1, %eax	#, _10
	movl	%eax, %ecx	# _10, _11
# g_game.c:958: 		playerstarts[i].type = playernum+1;	// fake as other player 
	.loc 1 958 24
	movl	-4(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, tmp123
	movq	%rdx, %rax	# tmp123, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# tmp123, tmp126
	addq	%rax, %rax	# tmp127
	movq	%rax, %rdx	# tmp126, tmp125
	leaq	6+playerstarts(%rip), %rax	#, tmp128
	movw	%cx, (%rdx,%rax)	# _11, playerstarts[i_17].type
# g_game.c:959: 		P_SpawnPlayer (&playerstarts[i]); 
	.loc 1 959 3
	movl	-4(%rbp), %eax	# i, tmp130
	movslq	%eax, %rdx	# tmp130, tmp129
	movq	%rdx, %rax	# tmp129, tmp131
	salq	$2, %rax	#, tmp131
	addq	%rdx, %rax	# tmp129, tmp131
	addq	%rax, %rax	# tmp132
	leaq	playerstarts(%rip), %rdx	#, tmp133
	addq	%rdx, %rax	# tmp133, _12
	movq	%rax, %rdi	# _12,
	call	P_SpawnPlayer@PLT	#
# g_game.c:960: 		playerstarts[i].type = i+1;		// restore 
	.loc 1 960 27
	movl	-4(%rbp), %eax	# i, tmp134
	addl	$1, %eax	#, _14
	movl	%eax, %ecx	# _14, _15
# g_game.c:960: 		playerstarts[i].type = i+1;		// restore 
	.loc 1 960 24
	movl	-4(%rbp), %eax	# i, tmp136
	movslq	%eax, %rdx	# tmp136, tmp135
	movq	%rdx, %rax	# tmp135, tmp138
	salq	$2, %rax	#, tmp138
	addq	%rdx, %rax	# tmp135, tmp138
	addq	%rax, %rax	# tmp139
	movq	%rax, %rdx	# tmp138, tmp137
	leaq	6+playerstarts(%rip), %rax	#, tmp140
	movw	%cx, (%rdx,%rax)	# _15, playerstarts[i_17].type
# g_game.c:961: 		return; 
	.loc 1 961 3
	jmp	.L159	#
.L165:
# g_game.c:954: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 954 29 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L164:
# g_game.c:954: 	for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 954 14 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L166	#,
# g_game.c:965: 	P_SpawnPlayer (&playerstarts[playernum]); 
	.loc 1 965 2
	movl	-20(%rbp), %eax	# playernum, tmp142
	movslq	%eax, %rdx	# tmp142, tmp141
	movq	%rdx, %rax	# tmp141, tmp143
	salq	$2, %rax	#, tmp143
	addq	%rdx, %rax	# tmp141, tmp143
	addq	%rax, %rax	# tmp144
	leaq	playerstarts(%rip), %rdx	#, tmp145
	addq	%rdx, %rax	# tmp145, _16
	movq	%rax, %rdi	# _16,
	call	P_SpawnPlayer@PLT	#
.L159:
# g_game.c:967: } 
	.loc 1 967 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	G_DoReborn, .-G_DoReborn
	.globl	G_ScreenShot
	.type	G_ScreenShot, @function
G_ScreenShot:
.LFB17:
	.loc 1 971 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# g_game.c:972:     gameaction = ga_screenshot; 
	.loc 1 972 16
	movl	$9, gameaction(%rip)	#, gameaction
# g_game.c:973: } 
	.loc 1 973 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	G_ScreenShot, .-G_ScreenShot
	.globl	pars
	.data
	.align 32
	.type	pars, @object
	.size	pars, 160
pars:
	.long	0
	.zero	36
	.long	0
	.long	30
	.long	75
	.long	120
	.long	90
	.long	165
	.long	180
	.long	180
	.long	30
	.long	165
	.long	0
	.long	90
	.long	90
	.long	90
	.long	120
	.long	90
	.long	360
	.long	240
	.long	30
	.long	170
	.long	0
	.long	90
	.long	45
	.long	90
	.long	150
	.long	90
	.long	90
	.long	165
	.long	30
	.long	135
	.globl	cpars
	.align 32
	.type	cpars, @object
	.size	cpars, 128
cpars:
	.long	30
	.long	90
	.long	120
	.long	120
	.long	90
	.long	150
	.long	120
	.long	120
	.long	270
	.long	90
	.long	210
	.long	150
	.long	150
	.long	150
	.long	210
	.long	150
	.long	420
	.long	150
	.long	210
	.long	150
	.long	240
	.long	150
	.long	180
	.long	150
	.long	150
	.long	300
	.long	330
	.long	420
	.long	300
	.long	180
	.long	120
	.long	30
	.globl	secretexit
	.bss
	.align 4
	.type	secretexit, @object
	.size	secretexit, 4
secretexit:
	.zero	4
	.text
	.globl	G_ExitLevel
	.type	G_ExitLevel, @function
G_ExitLevel:
.LFB18:
	.loc 1 1003 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# g_game.c:1004:     secretexit = false; 
	.loc 1 1004 16
	movl	$0, secretexit(%rip)	#, secretexit
# g_game.c:1005:     gameaction = ga_completed; 
	.loc 1 1005 16
	movl	$6, gameaction(%rip)	#, gameaction
# g_game.c:1006: } 
	.loc 1 1006 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	G_ExitLevel, .-G_ExitLevel
	.section	.rodata
.LC7:
	.string	"map31"
	.text
	.globl	G_SecretExitLevel
	.type	G_SecretExitLevel, @function
G_SecretExitLevel:
.LFB19:
	.loc 1 1010 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# g_game.c:1012:     if ( (gamemode == commercial)
	.loc 1 1012 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.145_1
# g_game.c:1012:     if ( (gamemode == commercial)
	.loc 1 1012 8
	cmpl	$2, %eax	#, gamemode.145_1
	jne	.L170	#,
# g_game.c:1013:       && (W_CheckNumForName("map31")<0))
	.loc 1 1013 11
	leaq	.LC7(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	W_CheckNumForName@PLT	#
# g_game.c:1013:       && (W_CheckNumForName("map31")<0))
	.loc 1 1013 7 discriminator 1
	testl	%eax, %eax	# _2
	jns	.L170	#,
# g_game.c:1014: 	secretexit = false;
	.loc 1 1014 13
	movl	$0, secretexit(%rip)	#, secretexit
	jmp	.L171	#
.L170:
# g_game.c:1016: 	secretexit = true; 
	.loc 1 1016 13
	movl	$1, secretexit(%rip)	#, secretexit
.L171:
# g_game.c:1017:     gameaction = ga_completed; 
	.loc 1 1017 16
	movl	$6, gameaction(%rip)	#, gameaction
# g_game.c:1018: } 
	.loc 1 1018 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	G_SecretExitLevel, .-G_SecretExitLevel
	.globl	G_DoCompleted
	.type	G_DoCompleted, @function
G_DoCompleted:
.LFB20:
	.loc 1 1021 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# g_game.c:1024:     gameaction = ga_nothing; 
	.loc 1 1024 16
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:1026:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1026 11
	movl	$0, -4(%rbp)	#, i
# g_game.c:1026:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1026 5
	jmp	.L173	#
.L175:
# g_game.c:1027: 	if (playeringame[i]) 
	.loc 1 1027 18
	movl	-4(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp132
	leaq	playeringame(%rip), %rax	#, tmp133
	movl	(%rdx,%rax), %eax	# playeringame[i_46], _1
# g_game.c:1027: 	if (playeringame[i]) 
	.loc 1 1027 5
	testl	%eax, %eax	# _1
	je	.L174	#,
# g_game.c:1028: 	    G_PlayerFinishLevel (i);        // take away cards and stuff 
	.loc 1 1028 6
	movl	-4(%rbp), %eax	# i, tmp134
	movl	%eax, %edi	# tmp134,
	call	G_PlayerFinishLevel	#
.L174:
# g_game.c:1026:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1026 32 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L173:
# g_game.c:1026:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1026 17 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L175	#,
# g_game.c:1030:     if (automapactive) 
	.loc 1 1030 9
	movl	automapactive(%rip), %eax	# automapactive, automapactive.146_2
# g_game.c:1030:     if (automapactive) 
	.loc 1 1030 8
	testl	%eax, %eax	# automapactive.146_2
	je	.L176	#,
# g_game.c:1031: 	AM_Stop (); 
	.loc 1 1031 2
	call	AM_Stop@PLT	#
.L176:
# g_game.c:1033:     if ( gamemode != commercial)
	.loc 1 1033 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.147_3
# g_game.c:1033:     if ( gamemode != commercial)
	.loc 1 1033 8
	cmpl	$2, %eax	#, gamemode.147_3
	je	.L177	#,
# g_game.c:1034: 	switch(gamemap)
	.loc 1 1034 2
	movl	gamemap(%rip), %eax	# gamemap, gamemap.148_4
	cmpl	$8, %eax	#, gamemap.148_4
	je	.L178	#,
	cmpl	$9, %eax	#, gamemap.148_4
	je	.L179	#,
	jmp	.L177	#
.L178:
# g_game.c:1037: 	    gameaction = ga_victory;
	.loc 1 1037 17
	movl	$7, gameaction(%rip)	#, gameaction
# g_game.c:1038: 	    return;
	.loc 1 1038 6
	jmp	.L172	#
.L179:
# g_game.c:1040: 	    for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1040 12
	movl	$0, -4(%rbp)	#, i
# g_game.c:1040: 	    for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1040 6
	jmp	.L181	#
.L182:
# g_game.c:1041: 		players[i].didsecret = true; 
	.loc 1 1041 24
	movl	-4(%rbp), %eax	# i, tmp136
	movslq	%eax, %rdx	# tmp136, tmp135
	movq	%rdx, %rax	# tmp135, tmp138
	salq	$2, %rax	#, tmp138
	addq	%rdx, %rax	# tmp135, tmp138
	salq	$6, %rax	#, tmp139
	movq	%rax, %rdx	# tmp138, tmp137
	leaq	312+players(%rip), %rax	#, tmp140
	movl	$1, (%rdx,%rax)	#, players[i_47].didsecret
# g_game.c:1040: 	    for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1040 33 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L181:
# g_game.c:1040: 	    for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1040 18 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L182	#,
# g_game.c:1042: 	    break;
	.loc 1 1042 6
	nop	
.L177:
# g_game.c:1046:     if ( (gamemap == 8)
	.loc 1 1046 19
	movl	gamemap(%rip), %eax	# gamemap, gamemap.149_5
# g_game.c:1046:     if ( (gamemap == 8)
	.loc 1 1046 8
	cmpl	$8, %eax	#, gamemap.149_5
	jne	.L183	#,
# g_game.c:1047: 	 && (gamemode != commercial) ) 
	.loc 1 1047 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.150_6
# g_game.c:1047: 	 && (gamemode != commercial) ) 
	.loc 1 1047 3
	cmpl	$2, %eax	#, gamemode.150_6
	je	.L183	#,
# g_game.c:1050: 	gameaction = ga_victory; 
	.loc 1 1050 13
	movl	$7, gameaction(%rip)	#, gameaction
# g_game.c:1051: 	return; 
	.loc 1 1051 2
	jmp	.L172	#
.L183:
# g_game.c:1054:     if ( (gamemap == 9)
	.loc 1 1054 19
	movl	gamemap(%rip), %eax	# gamemap, gamemap.151_7
# g_game.c:1054:     if ( (gamemap == 9)
	.loc 1 1054 8
	cmpl	$9, %eax	#, gamemap.151_7
	jne	.L184	#,
# g_game.c:1055: 	 && (gamemode != commercial) ) 
	.loc 1 1055 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.152_8
# g_game.c:1055: 	 && (gamemode != commercial) ) 
	.loc 1 1055 3
	cmpl	$2, %eax	#, gamemode.152_8
	je	.L184	#,
# g_game.c:1058: 	for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1058 8
	movl	$0, -4(%rbp)	#, i
# g_game.c:1058: 	for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1058 2
	jmp	.L185	#
.L186:
# g_game.c:1059: 	    players[i].didsecret = true; 
	.loc 1 1059 27
	movl	-4(%rbp), %eax	# i, tmp142
	movslq	%eax, %rdx	# tmp142, tmp141
	movq	%rdx, %rax	# tmp141, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# tmp141, tmp144
	salq	$6, %rax	#, tmp145
	movq	%rax, %rdx	# tmp144, tmp143
	leaq	312+players(%rip), %rax	#, tmp146
	movl	$1, (%rdx,%rax)	#, players[i_48].didsecret
# g_game.c:1058: 	for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1058 29 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L185:
# g_game.c:1058: 	for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1058 14 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L186	#,
.L184:
# g_game.c:1064:     wminfo.didsecret = players[consoleplayer].didsecret; 
	.loc 1 1064 46
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.153_9
	movslq	%eax, %rdx	# consoleplayer.153_9, tmp147
	movq	%rdx, %rax	# tmp147, tmp149
	salq	$2, %rax	#, tmp149
	addq	%rdx, %rax	# tmp147, tmp149
	salq	$6, %rax	#, tmp150
	movq	%rax, %rdx	# tmp149, tmp148
	leaq	312+players(%rip), %rax	#, tmp151
	movl	(%rdx,%rax), %eax	# players[consoleplayer.153_9].didsecret, _10
# g_game.c:1064:     wminfo.didsecret = players[consoleplayer].didsecret; 
	.loc 1 1064 22
	movl	%eax, 4+wminfo(%rip)	# _10, wminfo.didsecret
# g_game.c:1065:     wminfo.epsd = gameepisode -1; 
	.loc 1 1065 31
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.154_11
	subl	$1, %eax	#, _12
# g_game.c:1065:     wminfo.epsd = gameepisode -1; 
	.loc 1 1065 17
	movl	%eax, wminfo(%rip)	# _12, wminfo.epsd
# g_game.c:1066:     wminfo.last = gamemap -1;
	.loc 1 1066 27
	movl	gamemap(%rip), %eax	# gamemap, gamemap.155_13
	subl	$1, %eax	#, _14
# g_game.c:1066:     wminfo.last = gamemap -1;
	.loc 1 1066 17
	movl	%eax, 8+wminfo(%rip)	# _14, wminfo.last
# g_game.c:1069:     if ( gamemode == commercial)
	.loc 1 1069 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.156_15
# g_game.c:1069:     if ( gamemode == commercial)
	.loc 1 1069 8
	cmpl	$2, %eax	#, gamemode.156_15
	jne	.L187	#,
# g_game.c:1071: 	if (secretexit)
	.loc 1 1071 6
	movl	secretexit(%rip), %eax	# secretexit, secretexit.157_16
# g_game.c:1071: 	if (secretexit)
	.loc 1 1071 5
	testl	%eax, %eax	# secretexit.157_16
	je	.L188	#,
# g_game.c:1072: 	    switch(gamemap)
	.loc 1 1072 6
	movl	gamemap(%rip), %eax	# gamemap, gamemap.158_17
	cmpl	$15, %eax	#, gamemap.158_17
	je	.L189	#,
	cmpl	$31, %eax	#, gamemap.158_17
	je	.L190	#,
	jmp	.L194	#
.L189:
# g_game.c:1074: 	      case 15: wminfo.next = 30; break;
	.loc 1 1074 29
	movl	$30, 12+wminfo(%rip)	#, wminfo.next
# g_game.c:1074: 	      case 15: wminfo.next = 30; break;
	.loc 1 1074 35
	jmp	.L194	#
.L190:
# g_game.c:1075: 	      case 31: wminfo.next = 31; break;
	.loc 1 1075 29
	movl	$31, 12+wminfo(%rip)	#, wminfo.next
# g_game.c:1075: 	      case 31: wminfo.next = 31; break;
	.loc 1 1075 35
	jmp	.L194	#
.L188:
# g_game.c:1078: 	    switch(gamemap)
	.loc 1 1078 6
	movl	gamemap(%rip), %eax	# gamemap, gamemap.159_18
	subl	$31, %eax	#, _87
	cmpl	$1, %eax	#, _87
	ja	.L193	#,
# g_game.c:1081: 	      case 32: wminfo.next = 15; break;
	.loc 1 1081 29
	movl	$15, 12+wminfo(%rip)	#, wminfo.next
# g_game.c:1081: 	      case 32: wminfo.next = 15; break;
	.loc 1 1081 35
	jmp	.L194	#
.L193:
# g_game.c:1082: 	      default: wminfo.next = gamemap;
	.loc 1 1082 29
	movl	gamemap(%rip), %eax	# gamemap, gamemap.160_19
	movl	%eax, 12+wminfo(%rip)	# gamemap.160_19, wminfo.next
	jmp	.L194	#
.L187:
# g_game.c:1087: 	if (secretexit) 
	.loc 1 1087 6
	movl	secretexit(%rip), %eax	# secretexit, secretexit.161_20
# g_game.c:1087: 	if (secretexit) 
	.loc 1 1087 5
	testl	%eax, %eax	# secretexit.161_20
	je	.L195	#,
# g_game.c:1088: 	    wminfo.next = 8; 	// go to secret level 
	.loc 1 1088 18
	movl	$8, 12+wminfo(%rip)	#, wminfo.next
	jmp	.L194	#
.L195:
# g_game.c:1089: 	else if (gamemap == 9) 
	.loc 1 1089 19
	movl	gamemap(%rip), %eax	# gamemap, gamemap.162_21
# g_game.c:1089: 	else if (gamemap == 9) 
	.loc 1 1089 10
	cmpl	$9, %eax	#, gamemap.162_21
	jne	.L196	#,
# g_game.c:1092: 	    switch (gameepisode) 
	.loc 1 1092 6
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.163_22
	cmpl	$4, %eax	#, gameepisode.163_22
	je	.L197	#,
	cmpl	$4, %eax	#, gameepisode.163_22
	jg	.L194	#,
	cmpl	$3, %eax	#, gameepisode.163_22
	je	.L199	#,
	cmpl	$3, %eax	#, gameepisode.163_22
	jg	.L194	#,
	cmpl	$1, %eax	#, gameepisode.163_22
	je	.L200	#,
	cmpl	$2, %eax	#, gameepisode.163_22
	je	.L201	#,
	jmp	.L194	#
.L200:
# g_game.c:1095: 		wminfo.next = 3; 
	.loc 1 1095 15
	movl	$3, 12+wminfo(%rip)	#, wminfo.next
# g_game.c:1096: 		break; 
	.loc 1 1096 3
	jmp	.L194	#
.L201:
# g_game.c:1098: 		wminfo.next = 5; 
	.loc 1 1098 15
	movl	$5, 12+wminfo(%rip)	#, wminfo.next
# g_game.c:1099: 		break; 
	.loc 1 1099 3
	jmp	.L194	#
.L199:
# g_game.c:1101: 		wminfo.next = 6; 
	.loc 1 1101 15
	movl	$6, 12+wminfo(%rip)	#, wminfo.next
# g_game.c:1102: 		break; 
	.loc 1 1102 3
	jmp	.L194	#
.L197:
# g_game.c:1104: 		wminfo.next = 2;
	.loc 1 1104 15
	movl	$2, 12+wminfo(%rip)	#, wminfo.next
# g_game.c:1105: 		break;
	.loc 1 1105 3
	jmp	.L194	#
.L196:
# g_game.c:1109: 	    wminfo.next = gamemap;          // go to next level 
	.loc 1 1109 18
	movl	gamemap(%rip), %eax	# gamemap, gamemap.164_23
	movl	%eax, 12+wminfo(%rip)	# gamemap.164_23, wminfo.next
.L194:
# g_game.c:1112:     wminfo.maxkills = totalkills; 
	.loc 1 1112 21
	movl	totalkills(%rip), %eax	# totalkills, totalkills.165_24
	movl	%eax, 16+wminfo(%rip)	# totalkills.165_24, wminfo.maxkills
# g_game.c:1113:     wminfo.maxitems = totalitems; 
	.loc 1 1113 21
	movl	totalitems(%rip), %eax	# totalitems, totalitems.166_25
	movl	%eax, 20+wminfo(%rip)	# totalitems.166_25, wminfo.maxitems
# g_game.c:1114:     wminfo.maxsecret = totalsecret; 
	.loc 1 1114 22
	movl	totalsecret(%rip), %eax	# totalsecret, totalsecret.167_26
	movl	%eax, 24+wminfo(%rip)	# totalsecret.167_26, wminfo.maxsecret
# g_game.c:1115:     wminfo.maxfrags = 0; 
	.loc 1 1115 21
	movl	$0, 28+wminfo(%rip)	#, wminfo.maxfrags
# g_game.c:1116:     if ( gamemode == commercial )
	.loc 1 1116 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.168_27
# g_game.c:1116:     if ( gamemode == commercial )
	.loc 1 1116 8
	cmpl	$2, %eax	#, gamemode.168_27
	jne	.L202	#,
# g_game.c:1117: 	wminfo.partime = 35*cpars[gamemap-1]; 
	.loc 1 1117 35
	movl	gamemap(%rip), %eax	# gamemap, gamemap.169_28
	subl	$1, %eax	#, _29
# g_game.c:1117: 	wminfo.partime = 35*cpars[gamemap-1]; 
	.loc 1 1117 27
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp153
	leaq	cpars(%rip), %rax	#, tmp154
	movl	(%rdx,%rax), %eax	# cpars[_29], _30
# g_game.c:1117: 	wminfo.partime = 35*cpars[gamemap-1]; 
	.loc 1 1117 21
	imull	$35, %eax, %eax	#, _30, _31
# g_game.c:1117: 	wminfo.partime = 35*cpars[gamemap-1]; 
	.loc 1 1117 17
	movl	%eax, 32+wminfo(%rip)	# _31, wminfo.partime
	jmp	.L203	#
.L202:
# g_game.c:1119: 	wminfo.partime = 35*pars[gameepisode][gamemap]; 
	.loc 1 1119 39
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.170_32
	movl	gamemap(%rip), %edx	# gamemap, gamemap.171_33
	movslq	%edx, %rcx	# gamemap.171_33, tmp155
	movslq	%eax, %rdx	# gameepisode.170_32, tmp156
	movq	%rdx, %rax	# tmp156, tmp157
	salq	$2, %rax	#, tmp157
	addq	%rdx, %rax	# tmp156, tmp157
	addq	%rax, %rax	# tmp158
	addq	%rcx, %rax	# tmp155, tmp159
	leaq	0(,%rax,4), %rdx	#, tmp160
	leaq	pars(%rip), %rax	#, tmp161
	movl	(%rdx,%rax), %eax	# pars[gameepisode.170_32][gamemap.171_33], _34
# g_game.c:1119: 	wminfo.partime = 35*pars[gameepisode][gamemap]; 
	.loc 1 1119 21
	imull	$35, %eax, %eax	#, _34, _35
# g_game.c:1119: 	wminfo.partime = 35*pars[gameepisode][gamemap]; 
	.loc 1 1119 17
	movl	%eax, 32+wminfo(%rip)	# _35, wminfo.partime
.L203:
# g_game.c:1120:     wminfo.pnum = consoleplayer; 
	.loc 1 1120 17
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.172_36
	movl	%eax, 36+wminfo(%rip)	# consoleplayer.172_36, wminfo.pnum
# g_game.c:1122:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1122 11
	movl	$0, -4(%rbp)	#, i
# g_game.c:1122:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1122 5
	jmp	.L204	#
.L205:
# g_game.c:1124: 	wminfo.plyr[i].in = playeringame[i]; 
	.loc 1 1124 34
	movl	-4(%rbp), %eax	# i, tmp163
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp164
	leaq	playeringame(%rip), %rax	#, tmp165
	movl	(%rdx,%rax), %ecx	# playeringame[i_49], _37
# g_game.c:1124: 	wminfo.plyr[i].in = playeringame[i]; 
	.loc 1 1124 20
	movl	-4(%rbp), %eax	# i, tmp167
	movslq	%eax, %rdx	# tmp167, tmp166
	movq	%rdx, %rax	# tmp166, tmp169
	salq	$2, %rax	#, tmp169
	addq	%rdx, %rax	# tmp166, tmp169
	salq	$3, %rax	#, tmp170
	movq	%rax, %rdx	# tmp169, tmp168
	leaq	40+wminfo(%rip), %rax	#, tmp171
	movl	%ecx, (%rdx,%rax)	# _37, wminfo.plyr[i_49].in
# g_game.c:1125: 	wminfo.plyr[i].skills = players[i].killcount; 
	.loc 1 1125 36
	movl	-4(%rbp), %eax	# i, tmp173
	movslq	%eax, %rdx	# tmp173, tmp172
	movq	%rdx, %rax	# tmp172, tmp175
	salq	$2, %rax	#, tmp175
	addq	%rdx, %rax	# tmp172, tmp175
	salq	$6, %rax	#, tmp176
	movq	%rax, %rdx	# tmp175, tmp174
	leaq	208+players(%rip), %rax	#, tmp177
	movl	(%rdx,%rax), %ecx	# players[i_49].killcount, _38
# g_game.c:1125: 	wminfo.plyr[i].skills = players[i].killcount; 
	.loc 1 1125 24
	movl	-4(%rbp), %eax	# i, tmp179
	movslq	%eax, %rdx	# tmp179, tmp178
	movq	%rdx, %rax	# tmp178, tmp181
	salq	$2, %rax	#, tmp181
	addq	%rdx, %rax	# tmp178, tmp181
	salq	$3, %rax	#, tmp182
	movq	%rax, %rdx	# tmp181, tmp180
	leaq	44+wminfo(%rip), %rax	#, tmp183
	movl	%ecx, (%rdx,%rax)	# _38, wminfo.plyr[i_49].skills
# g_game.c:1126: 	wminfo.plyr[i].sitems = players[i].itemcount; 
	.loc 1 1126 36
	movl	-4(%rbp), %eax	# i, tmp185
	movslq	%eax, %rdx	# tmp185, tmp184
	movq	%rdx, %rax	# tmp184, tmp187
	salq	$2, %rax	#, tmp187
	addq	%rdx, %rax	# tmp184, tmp187
	salq	$6, %rax	#, tmp188
	movq	%rax, %rdx	# tmp187, tmp186
	leaq	212+players(%rip), %rax	#, tmp189
	movl	(%rdx,%rax), %ecx	# players[i_49].itemcount, _39
# g_game.c:1126: 	wminfo.plyr[i].sitems = players[i].itemcount; 
	.loc 1 1126 24
	movl	-4(%rbp), %eax	# i, tmp191
	movslq	%eax, %rdx	# tmp191, tmp190
	movq	%rdx, %rax	# tmp190, tmp193
	salq	$2, %rax	#, tmp193
	addq	%rdx, %rax	# tmp190, tmp193
	salq	$3, %rax	#, tmp194
	movq	%rax, %rdx	# tmp193, tmp192
	leaq	48+wminfo(%rip), %rax	#, tmp195
	movl	%ecx, (%rdx,%rax)	# _39, wminfo.plyr[i_49].sitems
# g_game.c:1127: 	wminfo.plyr[i].ssecret = players[i].secretcount; 
	.loc 1 1127 37
	movl	-4(%rbp), %eax	# i, tmp197
	movslq	%eax, %rdx	# tmp197, tmp196
	movq	%rdx, %rax	# tmp196, tmp199
	salq	$2, %rax	#, tmp199
	addq	%rdx, %rax	# tmp196, tmp199
	salq	$6, %rax	#, tmp200
	movq	%rax, %rdx	# tmp199, tmp198
	leaq	216+players(%rip), %rax	#, tmp201
	movl	(%rdx,%rax), %ecx	# players[i_49].secretcount, _40
# g_game.c:1127: 	wminfo.plyr[i].ssecret = players[i].secretcount; 
	.loc 1 1127 25
	movl	-4(%rbp), %eax	# i, tmp203
	movslq	%eax, %rdx	# tmp203, tmp202
	movq	%rdx, %rax	# tmp202, tmp205
	salq	$2, %rax	#, tmp205
	addq	%rdx, %rax	# tmp202, tmp205
	salq	$3, %rax	#, tmp206
	movq	%rax, %rdx	# tmp205, tmp204
	leaq	52+wminfo(%rip), %rax	#, tmp207
	movl	%ecx, (%rdx,%rax)	# _40, wminfo.plyr[i_49].ssecret
# g_game.c:1128: 	wminfo.plyr[i].stime = leveltime; 
	.loc 1 1128 23
	movl	leveltime(%rip), %ecx	# leveltime, leveltime.173_41
	movl	-4(%rbp), %eax	# i, tmp209
	movslq	%eax, %rdx	# tmp209, tmp208
	movq	%rdx, %rax	# tmp208, tmp211
	salq	$2, %rax	#, tmp211
	addq	%rdx, %rax	# tmp208, tmp211
	salq	$3, %rax	#, tmp212
	movq	%rax, %rdx	# tmp211, tmp210
	leaq	56+wminfo(%rip), %rax	#, tmp213
	movl	%ecx, (%rdx,%rax)	# leveltime.173_41, wminfo.plyr[i_49].stime
# g_game.c:1129: 	memcpy (wminfo.plyr[i].frags, players[i].frags 
	.loc 1 1129 42
	movl	-4(%rbp), %eax	# i, tmp215
	movslq	%eax, %rdx	# tmp215, tmp214
	movq	%rdx, %rax	# tmp214, tmp216
	salq	$2, %rax	#, tmp216
	addq	%rdx, %rax	# tmp214, tmp216
	salq	$6, %rax	#, tmp217
	leaq	96(%rax), %rdx	#, tmp218
	leaq	players(%rip), %rax	#, tmp220
	addq	%rdx, %rax	# tmp218, tmp219
	leaq	4(%rax), %rsi	#, _42
# g_game.c:1129: 	memcpy (wminfo.plyr[i].frags, players[i].frags 
	.loc 1 1129 24
	movl	-4(%rbp), %eax	# i, tmp222
	movslq	%eax, %rdx	# tmp222, tmp221
	movq	%rdx, %rax	# tmp221, tmp223
	salq	$2, %rax	#, tmp223
	addq	%rdx, %rax	# tmp221, tmp223
	salq	$3, %rax	#, tmp224
	leaq	48(%rax), %rdx	#, tmp225
	leaq	wminfo(%rip), %rax	#, tmp227
	addq	%rdx, %rax	# tmp225, tmp226
	leaq	12(%rax), %rcx	#, _43
# g_game.c:1129: 	memcpy (wminfo.plyr[i].frags, players[i].frags 
	.loc 1 1129 2
	movq	(%rsi), %rax	# MEM <uint128_t> [(char * {ref-all})_42], _110
	movq	8(%rsi), %rdx	# MEM <uint128_t> [(char * {ref-all})_42], _110
	movq	%rax, (%rcx)	# _110, MEM <uint128_t> [(char * {ref-all})_43]
	movq	%rdx, 8(%rcx)	# _110, MEM <uint128_t> [(char * {ref-all})_43]
# g_game.c:1122:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1122 32 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L204:
# g_game.c:1122:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1122 17 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L205	#,
# g_game.c:1133:     gamestate = GS_INTERMISSION; 
	.loc 1 1133 15
	movl	$1, gamestate(%rip)	#, gamestate
# g_game.c:1134:     viewactive = false; 
	.loc 1 1134 16
	movl	$0, viewactive(%rip)	#, viewactive
# g_game.c:1135:     automapactive = false; 
	.loc 1 1135 19
	movl	$0, automapactive(%rip)	#, automapactive
# g_game.c:1137:     if (statcopy)
	.loc 1 1137 9
	movq	statcopy(%rip), %rax	# statcopy, statcopy.174_44
# g_game.c:1137:     if (statcopy)
	.loc 1 1137 8
	testq	%rax, %rax	# statcopy.174_44
	je	.L206	#,
# g_game.c:1138: 	memcpy (statcopy, &wminfo, sizeof(wminfo));
	.loc 1 1138 2
	movq	statcopy(%rip), %rax	# statcopy, statcopy.175_45
	movl	$200, %edx	#,
	leaq	wminfo(%rip), %rcx	#, tmp228
	movq	%rcx, %rsi	# tmp228,
	movq	%rax, %rdi	# statcopy.175_45,
	call	memcpy@PLT	#
.L206:
# g_game.c:1140:     WI_Start (&wminfo); 
	.loc 1 1140 5
	leaq	wminfo(%rip), %rax	#, tmp229
	movq	%rax, %rdi	# tmp229,
	call	WI_Start@PLT	#
.L172:
# g_game.c:1141: } 
	.loc 1 1141 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	G_DoCompleted, .-G_DoCompleted
	.globl	G_WorldDone
	.type	G_WorldDone, @function
G_WorldDone:
.LFB21:
	.loc 1 1148 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# g_game.c:1149:     gameaction = ga_worlddone; 
	.loc 1 1149 16
	movl	$8, gameaction(%rip)	#, gameaction
# g_game.c:1151:     if (secretexit) 
	.loc 1 1151 9
	movl	secretexit(%rip), %eax	# secretexit, secretexit.176_1
# g_game.c:1151:     if (secretexit) 
	.loc 1 1151 8
	testl	%eax, %eax	# secretexit.176_1
	je	.L208	#,
# g_game.c:1152: 	players[consoleplayer].didsecret = true; 
	.loc 1 1152 24
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.177_2
# g_game.c:1152: 	players[consoleplayer].didsecret = true; 
	.loc 1 1152 35
	movslq	%eax, %rdx	# consoleplayer.177_2, tmp94
	movq	%rdx, %rax	# tmp94, tmp96
	salq	$2, %rax	#, tmp96
	addq	%rdx, %rax	# tmp94, tmp96
	salq	$6, %rax	#, tmp97
	movq	%rax, %rdx	# tmp96, tmp95
	leaq	312+players(%rip), %rax	#, tmp98
	movl	$1, (%rdx,%rax)	#, players[consoleplayer.177_2].didsecret
.L208:
# g_game.c:1154:     if ( gamemode == commercial )
	.loc 1 1154 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.178_3
# g_game.c:1154:     if ( gamemode == commercial )
	.loc 1 1154 8
	cmpl	$2, %eax	#, gamemode.178_3
	jne	.L211	#,
# g_game.c:1156: 	switch (gamemap)
	.loc 1 1156 2
	movl	gamemap(%rip), %eax	# gamemap, gamemap.179_4
	cmpl	$31, %eax	#, _12
	seta	%dl	#, _13
	testb	%dl, %dl	# _13
	jne	.L211	#,
	movl	$1, %edx	#, tmp99
	movl	%eax, %ecx	# _12, tmp102
	salq	%cl, %rdx	# tmp102, tmp99
	movq	%rdx, %rax	# tmp99, _14
	movq	%rax, %rdx	# _14, _15
	andl	$1074792512, %edx	#, _15
	testq	%rdx, %rdx	# _15
	setne	%dl	#, _16
	testb	%dl, %dl	# _16
	jne	.L210	#,
	andl	$2147516416, %eax	#, _17
	testq	%rax, %rax	# _17
	setne	%al	#, _18
	testb	%al, %al	# _18
	je	.L211	#,
# g_game.c:1160: 	    if (!secretexit)
	.loc 1 1160 10
	movl	secretexit(%rip), %eax	# secretexit, secretexit.180_5
# g_game.c:1160: 	    if (!secretexit)
	.loc 1 1160 9
	testl	%eax, %eax	# secretexit.180_5
	je	.L212	#,
.L210:
# g_game.c:1166: 	    F_StartFinale ();
	.loc 1 1166 6
	call	F_StartFinale@PLT	#
# g_game.c:1167: 	    break;
	.loc 1 1167 6
	jmp	.L209	#
.L212:
# g_game.c:1161: 		break;
	.loc 1 1161 3
	nop	
.L209:
.L211:
# g_game.c:1170: } 
	.loc 1 1170 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	G_WorldDone, .-G_WorldDone
	.globl	G_DoWorldDone
	.type	G_DoWorldDone, @function
G_DoWorldDone:
.LFB22:
	.loc 1 1173 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# g_game.c:1174:     gamestate = GS_LEVEL; 
	.loc 1 1174 15
	movl	$0, gamestate(%rip)	#, gamestate
# g_game.c:1175:     gamemap = wminfo.next+1; 
	.loc 1 1175 21
	movl	12+wminfo(%rip), %eax	# wminfo.next, _1
# g_game.c:1175:     gamemap = wminfo.next+1; 
	.loc 1 1175 26
	addl	$1, %eax	#, _2
# g_game.c:1175:     gamemap = wminfo.next+1; 
	.loc 1 1175 13
	movl	%eax, gamemap(%rip)	# _2, gamemap
# g_game.c:1176:     G_DoLoadLevel (); 
	.loc 1 1176 5
	call	G_DoLoadLevel	#
# g_game.c:1177:     gameaction = ga_nothing; 
	.loc 1 1177 16
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:1178:     viewactive = true; 
	.loc 1 1178 16
	movl	$1, viewactive(%rip)	#, viewactive
# g_game.c:1179: } 
	.loc 1 1179 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	G_DoWorldDone, .-G_DoWorldDone
	.globl	savename
	.bss
	.align 32
	.type	savename, @object
	.size	savename, 256
savename:
	.zero	256
	.text
	.globl	G_LoadGame
	.type	G_LoadGame, @function
G_LoadGame:
.LFB23:
	.loc 1 1193 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
# g_game.c:1194:     strcpy (savename, name); 
	.loc 1 1194 5
	movq	-8(%rbp), %rax	# name, tmp82
	movq	%rax, %rsi	# tmp82,
	leaq	savename(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	strcpy@PLT	#
# g_game.c:1195:     gameaction = ga_loadgame; 
	.loc 1 1195 16
	movl	$3, gameaction(%rip)	#, gameaction
# g_game.c:1196: } 
	.loc 1 1196 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	G_LoadGame, .-G_LoadGame
	.section	.rodata
.LC8:
	.string	"version %i"
.LC9:
	.string	"Bad savegame"
	.text
	.globl	G_DoLoadGame
	.type	G_DoLoadGame, @function
G_DoLoadGame:
.LFB24:
	.loc 1 1202 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# g_game.c:1202: { 
	.loc 1 1202 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	movq	%rax, -8(%rbp)	# tmp142, D.9086
	xorl	%eax, %eax	# tmp142
# g_game.c:1208:     gameaction = ga_nothing; 
	.loc 1 1208 16
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:1210:     length = M_ReadFile (savename, &savebuffer); 
	.loc 1 1210 14
	leaq	savebuffer(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	savename(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	M_ReadFile@PLT	#
	movl	%eax, -48(%rbp)	# tmp126, length
# g_game.c:1211:     save_p = savebuffer + SAVESTRINGSIZE;
	.loc 1 1211 25
	movq	savebuffer(%rip), %rax	# savebuffer, savebuffer.181_1
	addq	$24, %rax	#, _2
# g_game.c:1211:     save_p = savebuffer + SAVESTRINGSIZE;
	.loc 1 1211 12
	movq	%rax, save_p(%rip)	# _2, save_p
# g_game.c:1214:     memset (vcheck,0,sizeof(vcheck)); 
	.loc 1 1214 5
	leaq	-32(%rbp), %rax	#, tmp127
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	memset@PLT	#
# g_game.c:1215:     sprintf (vcheck,"version %i",VERSION); 
	.loc 1 1215 5
	leaq	-32(%rbp), %rax	#, tmp128
	movl	$110, %edx	#,
	leaq	.LC8(%rip), %rcx	#, tmp129
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# g_game.c:1216:     if (strcmp (save_p, vcheck)) 
	.loc 1 1216 9
	movq	save_p(%rip), %rax	# save_p, save_p.182_3
	leaq	-32(%rbp), %rdx	#, tmp130
	movq	%rdx, %rsi	# tmp130,
	movq	%rax, %rdi	# save_p.182_3,
	call	strcmp@PLT	#
# g_game.c:1216:     if (strcmp (save_p, vcheck)) 
	.loc 1 1216 8 discriminator 1
	testl	%eax, %eax	# _4
	jne	.L223	#,
# g_game.c:1218:     save_p += VERSIONSIZE; 
	.loc 1 1218 12
	movq	save_p(%rip), %rax	# save_p, save_p.183_5
	addq	$16, %rax	#, _6
	movq	%rax, save_p(%rip)	# _6, save_p
# g_game.c:1220:     gameskill = *save_p++; 
	.loc 1 1220 24
	movq	save_p(%rip), %rax	# save_p, save_p.184_7
	leaq	1(%rax), %rdx	#, _9
	movq	%rdx, save_p(%rip)	# _9, save_p
# g_game.c:1220:     gameskill = *save_p++; 
	.loc 1 1220 17
	movzbl	(%rax), %eax	# *save_p.185_8, _10
	movzbl	%al, %eax	# _10, _11
# g_game.c:1220:     gameskill = *save_p++; 
	.loc 1 1220 15
	movl	%eax, gameskill(%rip)	# _11, gameskill
# g_game.c:1221:     gameepisode = *save_p++; 
	.loc 1 1221 26
	movq	save_p(%rip), %rax	# save_p, save_p.186_12
	leaq	1(%rax), %rdx	#, _14
	movq	%rdx, save_p(%rip)	# _14, save_p
# g_game.c:1221:     gameepisode = *save_p++; 
	.loc 1 1221 19
	movzbl	(%rax), %eax	# *save_p.187_13, _15
	movzbl	%al, %eax	# _15, _16
# g_game.c:1221:     gameepisode = *save_p++; 
	.loc 1 1221 17
	movl	%eax, gameepisode(%rip)	# _16, gameepisode
# g_game.c:1222:     gamemap = *save_p++; 
	.loc 1 1222 22
	movq	save_p(%rip), %rax	# save_p, save_p.188_17
	leaq	1(%rax), %rdx	#, _19
	movq	%rdx, save_p(%rip)	# _19, save_p
# g_game.c:1222:     gamemap = *save_p++; 
	.loc 1 1222 15
	movzbl	(%rax), %eax	# *save_p.189_18, _20
	movzbl	%al, %eax	# _20, _21
# g_game.c:1222:     gamemap = *save_p++; 
	.loc 1 1222 13
	movl	%eax, gamemap(%rip)	# _21, gamemap
# g_game.c:1223:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1223 11
	movl	$0, -52(%rbp)	#, i
# g_game.c:1223:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1223 5
	jmp	.L218	#
.L219:
# g_game.c:1224: 	playeringame[i] = *save_p++; 
	.loc 1 1224 27
	movq	save_p(%rip), %rax	# save_p, save_p.190_22
	leaq	1(%rax), %rdx	#, _24
	movq	%rdx, save_p(%rip)	# _24, save_p
# g_game.c:1224: 	playeringame[i] = *save_p++; 
	.loc 1 1224 20
	movzbl	(%rax), %eax	# *save_p.191_23, _25
	movzbl	%al, %eax	# _25, _26
# g_game.c:1224: 	playeringame[i] = *save_p++; 
	.loc 1 1224 18
	movl	-52(%rbp), %edx	# i, tmp132
	movslq	%edx, %rdx	# tmp132, tmp131
	leaq	0(,%rdx,4), %rcx	#, tmp133
	leaq	playeringame(%rip), %rdx	#, tmp134
	movl	%eax, (%rcx,%rdx)	# _26, playeringame[i_50]
# g_game.c:1223:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1223 32 discriminator 3
	addl	$1, -52(%rbp)	#, i
.L218:
# g_game.c:1223:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1223 17 discriminator 1
	cmpl	$3, -52(%rbp)	#, i
	jle	.L219	#,
# g_game.c:1227:     G_InitNew (gameskill, gameepisode, gamemap); 
	.loc 1 1227 5
	movl	gamemap(%rip), %edx	# gamemap, gamemap.192_27
	movl	gameepisode(%rip), %ecx	# gameepisode, gameepisode.193_28
	movl	gameskill(%rip), %eax	# gameskill, gameskill.194_29
	movl	%ecx, %esi	# gameepisode.193_28,
	movl	%eax, %edi	# gameskill.194_29,
	call	G_InitNew	#
# g_game.c:1230:     a = *save_p++; 
	.loc 1 1230 16
	movq	save_p(%rip), %rax	# save_p, save_p.195_30
	leaq	1(%rax), %rdx	#, _32
	movq	%rdx, save_p(%rip)	# _32, save_p
# g_game.c:1230:     a = *save_p++; 
	.loc 1 1230 9
	movzbl	(%rax), %eax	# *save_p.196_31, _33
# g_game.c:1230:     a = *save_p++; 
	.loc 1 1230 7
	movzbl	%al, %eax	# _33, tmp135
	movl	%eax, -44(%rbp)	# tmp135, a
# g_game.c:1231:     b = *save_p++; 
	.loc 1 1231 16
	movq	save_p(%rip), %rax	# save_p, save_p.197_34
	leaq	1(%rax), %rdx	#, _36
	movq	%rdx, save_p(%rip)	# _36, save_p
# g_game.c:1231:     b = *save_p++; 
	.loc 1 1231 9
	movzbl	(%rax), %eax	# *save_p.198_35, _37
# g_game.c:1231:     b = *save_p++; 
	.loc 1 1231 7
	movzbl	%al, %eax	# _37, tmp136
	movl	%eax, -40(%rbp)	# tmp136, b
# g_game.c:1232:     c = *save_p++; 
	.loc 1 1232 16
	movq	save_p(%rip), %rax	# save_p, save_p.199_38
	leaq	1(%rax), %rdx	#, _40
	movq	%rdx, save_p(%rip)	# _40, save_p
# g_game.c:1232:     c = *save_p++; 
	.loc 1 1232 9
	movzbl	(%rax), %eax	# *save_p.200_39, _41
# g_game.c:1232:     c = *save_p++; 
	.loc 1 1232 7
	movzbl	%al, %eax	# _41, tmp137
	movl	%eax, -36(%rbp)	# tmp137, c
# g_game.c:1233:     leveltime = (a<<16) + (b<<8) + c; 
	.loc 1 1233 19
	movl	-44(%rbp), %eax	# a, tmp138
	sall	$16, %eax	#, tmp138
	movl	%eax, %edx	# tmp138, _42
# g_game.c:1233:     leveltime = (a<<16) + (b<<8) + c; 
	.loc 1 1233 29
	movl	-40(%rbp), %eax	# b, tmp139
	sall	$8, %eax	#, _43
# g_game.c:1233:     leveltime = (a<<16) + (b<<8) + c; 
	.loc 1 1233 25
	addl	%eax, %edx	# _43, _44
# g_game.c:1233:     leveltime = (a<<16) + (b<<8) + c; 
	.loc 1 1233 34
	movl	-36(%rbp), %eax	# c, tmp140
	addl	%edx, %eax	# _44, _45
# g_game.c:1233:     leveltime = (a<<16) + (b<<8) + c; 
	.loc 1 1233 15
	movl	%eax, leveltime(%rip)	# _45, leveltime
# g_game.c:1236:     P_UnArchivePlayers (); 
	.loc 1 1236 5
	call	P_UnArchivePlayers@PLT	#
# g_game.c:1237:     P_UnArchiveWorld (); 
	.loc 1 1237 5
	call	P_UnArchiveWorld@PLT	#
# g_game.c:1238:     P_UnArchiveThinkers (); 
	.loc 1 1238 5
	call	P_UnArchiveThinkers@PLT	#
# g_game.c:1239:     P_UnArchiveSpecials (); 
	.loc 1 1239 5
	call	P_UnArchiveSpecials@PLT	#
# g_game.c:1241:     if (*save_p != 0x1d) 
	.loc 1 1241 9
	movq	save_p(%rip), %rax	# save_p, save_p.201_46
	movzbl	(%rax), %eax	# *save_p.201_46, _47
# g_game.c:1241:     if (*save_p != 0x1d) 
	.loc 1 1241 8
	cmpb	$29, %al	#, _47
	je	.L220	#,
# g_game.c:1242: 	I_Error ("Bad savegame");
	.loc 1 1242 2
	leaq	.LC9(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L220:
# g_game.c:1245:     Z_Free (savebuffer); 
	.loc 1 1245 5
	movq	savebuffer(%rip), %rax	# savebuffer, savebuffer.202_48
	movq	%rax, %rdi	# savebuffer.202_48,
	call	Z_Free@PLT	#
# g_game.c:1247:     if (setsizeneeded)
	.loc 1 1247 9
	movl	setsizeneeded(%rip), %eax	# setsizeneeded, setsizeneeded.203_49
# g_game.c:1247:     if (setsizeneeded)
	.loc 1 1247 8
	testl	%eax, %eax	# setsizeneeded.203_49
	je	.L221	#,
# g_game.c:1248: 	R_ExecuteSetViewSize ();
	.loc 1 1248 2
	call	R_ExecuteSetViewSize@PLT	#
.L221:
# g_game.c:1251:     R_FillBackScreen ();   
	.loc 1 1251 5
	call	R_FillBackScreen@PLT	#
	jmp	.L215	#
.L223:
# g_game.c:1217: 	return;				// bad version 
	.loc 1 1217 2 discriminator 1
	nop	
.L215:
# g_game.c:1252: } 
	.loc 1 1252 1
	movq	-8(%rbp), %rax	# D.9086, tmp143
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp143
	je	.L222	#,
	call	__stack_chk_fail@PLT	#
.L222:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	G_DoLoadGame, .-G_DoLoadGame
	.globl	G_SaveGame
	.type	G_SaveGame, @function
G_SaveGame:
.LFB25:
	.loc 1 1264 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# slot, slot
	movq	%rsi, -16(%rbp)	# description, description
# g_game.c:1265:     savegameslot = slot; 
	.loc 1 1265 18
	movl	-4(%rbp), %eax	# slot, tmp82
	movl	%eax, savegameslot(%rip)	# tmp82, savegameslot
# g_game.c:1266:     strcpy (savedescription, description); 
	.loc 1 1266 5
	movq	-16(%rbp), %rax	# description, tmp83
	movq	%rax, %rsi	# tmp83,
	leaq	savedescription(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	strcpy@PLT	#
# g_game.c:1267:     sendsave = true; 
	.loc 1 1267 14
	movl	$1, sendsave(%rip)	#, sendsave
# g_game.c:1268: } 
	.loc 1 1268 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	G_SaveGame, .-G_SaveGame
	.section	.rodata
.LC10:
	.string	"-cdrom"
.LC11:
	.string	"c:\\doomdata\\doomsav%d.dsg"
.LC12:
	.string	"doomsav%d.dsg"
.LC13:
	.string	"Savegame buffer overrun"
.LC14:
	.string	"game saved."
	.text
	.globl	G_DoSaveGame
	.type	G_DoSaveGame, @function
G_DoSaveGame:
.LFB26:
	.loc 1 1271 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
# g_game.c:1271: { 
	.loc 1 1271 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	movq	%rax, -8(%rbp)	# tmp155, D.9089
	xorl	%eax, %eax	# tmp155
# g_game.c:1278:     if (M_CheckParm("-cdrom"))
	.loc 1 1278 9
	leaq	.LC10(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	M_CheckParm@PLT	#
# g_game.c:1278:     if (M_CheckParm("-cdrom"))
	.loc 1 1278 8 discriminator 1
	testl	%eax, %eax	# _1
	je	.L226	#,
# g_game.c:1279: 	sprintf(name,"c:\\doomdata\\"SAVEGAMENAME"%d.dsg",savegameslot);
	.loc 1 1279 2
	movl	savegameslot(%rip), %edx	# savegameslot, savegameslot.204_2
	leaq	-112(%rbp), %rax	#, tmp133
	leaq	.LC11(%rip), %rcx	#, tmp134
	movq	%rcx, %rsi	# tmp134,
	movq	%rax, %rdi	# tmp133,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L227	#
.L226:
# g_game.c:1281: 	sprintf (name,SAVEGAMENAME"%d.dsg",savegameslot); 
	.loc 1 1281 2
	movl	savegameslot(%rip), %edx	# savegameslot, savegameslot.205_3
	leaq	-112(%rbp), %rax	#, tmp135
	leaq	.LC12(%rip), %rcx	#, tmp136
	movq	%rcx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp135,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L227:
# g_game.c:1282:     description = savedescription; 
	.loc 1 1282 17
	leaq	savedescription(%rip), %rax	#, tmp137
	movq	%rax, -136(%rbp)	# tmp137, description
# g_game.c:1284:     save_p = savebuffer = screens[1]+0x4000; 
	.loc 1 1284 34
	movq	8+screens(%rip), %rax	# screens[1], _4
# g_game.c:1284:     save_p = savebuffer = screens[1]+0x4000; 
	.loc 1 1284 37
	addq	$16384, %rax	#, _5
# g_game.c:1284:     save_p = savebuffer = screens[1]+0x4000; 
	.loc 1 1284 25
	movq	%rax, savebuffer(%rip)	# _5, savebuffer
# g_game.c:1284:     save_p = savebuffer = screens[1]+0x4000; 
	.loc 1 1284 12
	movq	savebuffer(%rip), %rax	# savebuffer, savebuffer.206_6
	movq	%rax, save_p(%rip)	# savebuffer.206_6, save_p
# g_game.c:1286:     memcpy (save_p, description, SAVESTRINGSIZE); 
	.loc 1 1286 5
	movq	save_p(%rip), %rax	# save_p, save_p.207_7
	movq	-136(%rbp), %rcx	# description, tmp138
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# save_p.207_7,
	call	memcpy@PLT	#
# g_game.c:1287:     save_p += SAVESTRINGSIZE; 
	.loc 1 1287 12
	movq	save_p(%rip), %rax	# save_p, save_p.208_8
	addq	$24, %rax	#, _9
	movq	%rax, save_p(%rip)	# _9, save_p
# g_game.c:1288:     memset (name2,0,sizeof(name2)); 
	.loc 1 1288 5
	leaq	-128(%rbp), %rax	#, tmp139
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	memset@PLT	#
# g_game.c:1289:     sprintf (name2,"version %i",VERSION); 
	.loc 1 1289 5
	leaq	-128(%rbp), %rax	#, tmp140
	movl	$110, %edx	#,
	leaq	.LC8(%rip), %rcx	#, tmp141
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp140,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# g_game.c:1290:     memcpy (save_p, name2, VERSIONSIZE); 
	.loc 1 1290 5
	movq	save_p(%rip), %rcx	# save_p, save_p.209_10
	movq	-128(%rbp), %rax	# MEM <uint128_t> [(char * {ref-all})&name2], _73
	movq	-120(%rbp), %rdx	# MEM <uint128_t> [(char * {ref-all})&name2], _73
	movq	%rax, (%rcx)	# _73, MEM <uint128_t> [(char * {ref-all})save_p.209_10]
	movq	%rdx, 8(%rcx)	# _73, MEM <uint128_t> [(char * {ref-all})save_p.209_10]
# g_game.c:1291:     save_p += VERSIONSIZE; 
	.loc 1 1291 12
	movq	save_p(%rip), %rax	# save_p, save_p.210_11
	addq	$16, %rax	#, _12
	movq	%rax, save_p(%rip)	# _12, save_p
# g_game.c:1293:     *save_p++ = gameskill; 
	.loc 1 1293 15
	movl	gameskill(%rip), %ecx	# gameskill, gameskill.211_13
# g_game.c:1293:     *save_p++ = gameskill; 
	.loc 1 1293 12
	movq	save_p(%rip), %rax	# save_p, save_p.212_14
	leaq	1(%rax), %rdx	#, _16
	movq	%rdx, save_p(%rip)	# _16, save_p
# g_game.c:1293:     *save_p++ = gameskill; 
	.loc 1 1293 15
	movl	%ecx, %edx	# gameskill.211_13, _17
	movb	%dl, (%rax)	# _17, *save_p.213_15
# g_game.c:1294:     *save_p++ = gameepisode; 
	.loc 1 1294 15
	movl	gameepisode(%rip), %ecx	# gameepisode, gameepisode.214_18
# g_game.c:1294:     *save_p++ = gameepisode; 
	.loc 1 1294 12
	movq	save_p(%rip), %rax	# save_p, save_p.215_19
	leaq	1(%rax), %rdx	#, _21
	movq	%rdx, save_p(%rip)	# _21, save_p
# g_game.c:1294:     *save_p++ = gameepisode; 
	.loc 1 1294 15
	movl	%ecx, %edx	# gameepisode.214_18, _22
	movb	%dl, (%rax)	# _22, *save_p.216_20
# g_game.c:1295:     *save_p++ = gamemap; 
	.loc 1 1295 15
	movl	gamemap(%rip), %ecx	# gamemap, gamemap.217_23
# g_game.c:1295:     *save_p++ = gamemap; 
	.loc 1 1295 12
	movq	save_p(%rip), %rax	# save_p, save_p.218_24
	leaq	1(%rax), %rdx	#, _26
	movq	%rdx, save_p(%rip)	# _26, save_p
# g_game.c:1295:     *save_p++ = gamemap; 
	.loc 1 1295 15
	movl	%ecx, %edx	# gamemap.217_23, _27
	movb	%dl, (%rax)	# _27, *save_p.219_25
# g_game.c:1296:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1296 11
	movl	$0, -144(%rbp)	#, i
# g_game.c:1296:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1296 5
	jmp	.L228	#
.L229:
# g_game.c:1297: 	*save_p++ = playeringame[i]; 
	.loc 1 1297 26
	movl	-144(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp144
	leaq	playeringame(%rip), %rax	#, tmp145
	movl	(%rdx,%rax), %ecx	# playeringame[i_58], _28
# g_game.c:1297: 	*save_p++ = playeringame[i]; 
	.loc 1 1297 9
	movq	save_p(%rip), %rax	# save_p, save_p.220_29
	leaq	1(%rax), %rdx	#, _31
	movq	%rdx, save_p(%rip)	# _31, save_p
# g_game.c:1297: 	*save_p++ = playeringame[i]; 
	.loc 1 1297 12
	movl	%ecx, %edx	# _28, _32
	movb	%dl, (%rax)	# _32, *save_p.221_30
# g_game.c:1296:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1296 32 discriminator 3
	addl	$1, -144(%rbp)	#, i
.L228:
# g_game.c:1296:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1296 17 discriminator 1
	cmpl	$3, -144(%rbp)	#, i
	jle	.L229	#,
# g_game.c:1298:     *save_p++ = leveltime>>16; 
	.loc 1 1298 26
	movl	leveltime(%rip), %eax	# leveltime, leveltime.222_33
	sarl	$16, %eax	#, leveltime.222_33
	movl	%eax, %ecx	# leveltime.222_33, _34
# g_game.c:1298:     *save_p++ = leveltime>>16; 
	.loc 1 1298 12
	movq	save_p(%rip), %rax	# save_p, save_p.223_35
	leaq	1(%rax), %rdx	#, _37
	movq	%rdx, save_p(%rip)	# _37, save_p
# g_game.c:1298:     *save_p++ = leveltime>>16; 
	.loc 1 1298 15
	movl	%ecx, %edx	# _34, _38
	movb	%dl, (%rax)	# _38, *save_p.224_36
# g_game.c:1299:     *save_p++ = leveltime>>8; 
	.loc 1 1299 26
	movl	leveltime(%rip), %eax	# leveltime, leveltime.225_39
	sarl	$8, %eax	#, leveltime.225_39
	movl	%eax, %ecx	# leveltime.225_39, _40
# g_game.c:1299:     *save_p++ = leveltime>>8; 
	.loc 1 1299 12
	movq	save_p(%rip), %rax	# save_p, save_p.226_41
	leaq	1(%rax), %rdx	#, _43
	movq	%rdx, save_p(%rip)	# _43, save_p
# g_game.c:1299:     *save_p++ = leveltime>>8; 
	.loc 1 1299 15
	movl	%ecx, %edx	# _40, _44
	movb	%dl, (%rax)	# _44, *save_p.227_42
# g_game.c:1300:     *save_p++ = leveltime; 
	.loc 1 1300 15
	movl	leveltime(%rip), %ecx	# leveltime, leveltime.228_45
# g_game.c:1300:     *save_p++ = leveltime; 
	.loc 1 1300 12
	movq	save_p(%rip), %rax	# save_p, save_p.229_46
	leaq	1(%rax), %rdx	#, _48
	movq	%rdx, save_p(%rip)	# _48, save_p
# g_game.c:1300:     *save_p++ = leveltime; 
	.loc 1 1300 15
	movl	%ecx, %edx	# leveltime.228_45, _49
	movb	%dl, (%rax)	# _49, *save_p.230_47
# g_game.c:1302:     P_ArchivePlayers (); 
	.loc 1 1302 5
	call	P_ArchivePlayers@PLT	#
# g_game.c:1303:     P_ArchiveWorld (); 
	.loc 1 1303 5
	call	P_ArchiveWorld@PLT	#
# g_game.c:1304:     P_ArchiveThinkers (); 
	.loc 1 1304 5
	call	P_ArchiveThinkers@PLT	#
# g_game.c:1305:     P_ArchiveSpecials (); 
	.loc 1 1305 5
	call	P_ArchiveSpecials@PLT	#
# g_game.c:1307:     *save_p++ = 0x1d;		// consistancy marker 
	.loc 1 1307 12
	movq	save_p(%rip), %rax	# save_p, save_p.231_50
	leaq	1(%rax), %rdx	#, _52
	movq	%rdx, save_p(%rip)	# _52, save_p
# g_game.c:1307:     *save_p++ = 0x1d;		// consistancy marker 
	.loc 1 1307 15
	movb	$29, (%rax)	#, *save_p.232_51
# g_game.c:1309:     length = save_p - savebuffer; 
	.loc 1 1309 21
	movq	save_p(%rip), %rdx	# save_p, save_p.233_53
	movq	savebuffer(%rip), %rax	# savebuffer, savebuffer.234_54
	subq	%rax, %rdx	# savebuffer.234_54, _55
# g_game.c:1309:     length = save_p - savebuffer; 
	.loc 1 1309 12
	movl	%edx, -140(%rbp)	# _55, length
# g_game.c:1310:     if (length > SAVEGAMESIZE) 
	.loc 1 1310 8
	cmpl	$180224, -140(%rbp)	#, length
	jle	.L230	#,
# g_game.c:1311: 	I_Error ("Savegame buffer overrun"); 
	.loc 1 1311 2
	leaq	.LC13(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L230:
# g_game.c:1312:     M_WriteFile (name, savebuffer, length); 
	.loc 1 1312 5
	movq	savebuffer(%rip), %rcx	# savebuffer, savebuffer.235_56
	movl	-140(%rbp), %edx	# length, tmp147
	leaq	-112(%rbp), %rax	#, tmp148
	movq	%rcx, %rsi	# savebuffer.235_56,
	movq	%rax, %rdi	# tmp148,
	call	M_WriteFile@PLT	#
# g_game.c:1313:     gameaction = ga_nothing; 
	.loc 1 1313 16
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:1314:     savedescription[0] = 0;		 
	.loc 1 1314 24
	movb	$0, savedescription(%rip)	#, savedescription[0]
# g_game.c:1316:     players[consoleplayer].message = GGSAVED; 
	.loc 1 1316 27
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.236_57
# g_game.c:1316:     players[consoleplayer].message = GGSAVED; 
	.loc 1 1316 36
	movslq	%eax, %rdx	# consoleplayer.236_57, tmp149
	movq	%rdx, %rax	# tmp149, tmp151
	salq	$2, %rax	#, tmp151
	addq	%rdx, %rax	# tmp149, tmp151
	salq	$6, %rax	#, tmp152
	movq	%rax, %rcx	# tmp151, tmp150
	leaq	224+players(%rip), %rax	#, tmp153
	leaq	.LC14(%rip), %rdx	#, tmp154
	movq	%rdx, (%rcx,%rax)	# tmp154, players[consoleplayer.236_57].message
# g_game.c:1319:     R_FillBackScreen ();	
	.loc 1 1319 5
	call	R_FillBackScreen@PLT	#
# g_game.c:1320: } 
	.loc 1 1320 1
	nop	
	movq	-8(%rbp), %rax	# D.9089, tmp156
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp156
	je	.L231	#,
	call	__stack_chk_fail@PLT	#
.L231:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	G_DoSaveGame, .-G_DoSaveGame
	.globl	d_skill
	.bss
	.align 4
	.type	d_skill, @object
	.size	d_skill, 4
d_skill:
	.zero	4
	.globl	d_episode
	.align 4
	.type	d_episode, @object
	.size	d_episode, 4
d_episode:
	.zero	4
	.globl	d_map
	.align 4
	.type	d_map, @object
	.size	d_map, 4
d_map:
	.zero	4
	.text
	.globl	G_DeferedInitNew
	.type	G_DeferedInitNew, @function
G_DeferedInitNew:
.LFB27:
	.loc 1 1337 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# skill, skill
	movl	%esi, -8(%rbp)	# episode, episode
	movl	%edx, -12(%rbp)	# map, map
# g_game.c:1338:     d_skill = skill; 
	.loc 1 1338 13
	movl	-4(%rbp), %eax	# skill, tmp82
	movl	%eax, d_skill(%rip)	# tmp82, d_skill
# g_game.c:1339:     d_episode = episode; 
	.loc 1 1339 15
	movl	-8(%rbp), %eax	# episode, tmp83
	movl	%eax, d_episode(%rip)	# tmp83, d_episode
# g_game.c:1340:     d_map = map; 
	.loc 1 1340 11
	movl	-12(%rbp), %eax	# map, tmp84
	movl	%eax, d_map(%rip)	# tmp84, d_map
# g_game.c:1341:     gameaction = ga_newgame; 
	.loc 1 1341 16
	movl	$2, gameaction(%rip)	#, gameaction
# g_game.c:1342: } 
	.loc 1 1342 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	G_DeferedInitNew, .-G_DeferedInitNew
	.globl	G_DoNewGame
	.type	G_DoNewGame, @function
G_DoNewGame:
.LFB28:
	.loc 1 1346 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# g_game.c:1347:     demoplayback = false; 
	.loc 1 1347 18
	movl	$0, demoplayback(%rip)	#, demoplayback
# g_game.c:1348:     netdemo = false;
	.loc 1 1348 13
	movl	$0, netdemo(%rip)	#, netdemo
# g_game.c:1349:     netgame = false;
	.loc 1 1349 13
	movl	$0, netgame(%rip)	#, netgame
# g_game.c:1350:     deathmatch = false;
	.loc 1 1350 16
	movl	$0, deathmatch(%rip)	#, deathmatch
# g_game.c:1351:     playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1351 57
	movl	$0, 12+playeringame(%rip)	#, playeringame[3]
# g_game.c:1351:     playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1351 53
	movl	12+playeringame(%rip), %eax	# playeringame[3], _1
# g_game.c:1351:     playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1351 39
	movl	%eax, 8+playeringame(%rip)	# _1, playeringame[2]
# g_game.c:1351:     playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1351 35
	movl	8+playeringame(%rip), %eax	# playeringame[2], _2
# g_game.c:1351:     playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1351 21
	movl	%eax, 4+playeringame(%rip)	# _2, playeringame[1]
# g_game.c:1352:     respawnparm = false;
	.loc 1 1352 17
	movl	$0, respawnparm(%rip)	#, respawnparm
# g_game.c:1353:     fastparm = false;
	.loc 1 1353 14
	movl	$0, fastparm(%rip)	#, fastparm
# g_game.c:1354:     nomonsters = false;
	.loc 1 1354 16
	movl	$0, nomonsters(%rip)	#, nomonsters
# g_game.c:1355:     consoleplayer = 0;
	.loc 1 1355 19
	movl	$0, consoleplayer(%rip)	#, consoleplayer
# g_game.c:1356:     G_InitNew (d_skill, d_episode, d_map); 
	.loc 1 1356 5
	movl	d_map(%rip), %edx	# d_map, d_map.237_3
	movl	d_episode(%rip), %ecx	# d_episode, d_episode.238_4
	movl	d_skill(%rip), %eax	# d_skill, d_skill.239_5
	movl	%ecx, %esi	# d_episode.238_4,
	movl	%eax, %edi	# d_skill.239_5,
	call	G_InitNew	#
# g_game.c:1357:     gameaction = ga_nothing; 
	.loc 1 1357 16
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:1358: } 
	.loc 1 1358 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE28:
	.size	G_DoNewGame, .-G_DoNewGame
	.section	.rodata
.LC15:
	.string	"SKY4"
	.text
	.globl	G_InitNew
	.type	G_InitNew, @function
G_InitNew:
.LFB29:
	.loc 1 1369 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# skill, skill
	movl	%esi, -24(%rbp)	# episode, episode
	movl	%edx, -28(%rbp)	# map, map
# g_game.c:1372:     if (paused) 
	.loc 1 1372 9
	movl	paused(%rip), %eax	# paused, paused.240_1
# g_game.c:1372:     if (paused) 
	.loc 1 1372 8
	testl	%eax, %eax	# paused.240_1
	je	.L235	#,
# g_game.c:1374: 	paused = false; 
	.loc 1 1374 9
	movl	$0, paused(%rip)	#, paused
# g_game.c:1375: 	S_ResumeSound (); 
	.loc 1 1375 2
	call	S_ResumeSound@PLT	#
.L235:
# g_game.c:1379:     if (skill > sk_nightmare) 
	.loc 1 1379 8
	cmpl	$4, -20(%rbp)	#, skill
	jbe	.L236	#,
# g_game.c:1380: 	skill = sk_nightmare;
	.loc 1 1380 8
	movl	$4, -20(%rbp)	#, skill
.L236:
# g_game.c:1386:     if (episode < 1)
	.loc 1 1386 8
	cmpl	$0, -24(%rbp)	#, episode
	jg	.L237	#,
# g_game.c:1387:       episode = 1; 
	.loc 1 1387 15
	movl	$1, -24(%rbp)	#, episode
.L237:
# g_game.c:1389:     if ( gamemode == retail )
	.loc 1 1389 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.241_2
# g_game.c:1389:     if ( gamemode == retail )
	.loc 1 1389 8
	cmpl	$3, %eax	#, gamemode.241_2
	jne	.L238	#,
# g_game.c:1391:       if (episode > 4)
	.loc 1 1391 10
	cmpl	$4, -24(%rbp)	#, episode
	jle	.L239	#,
# g_game.c:1392: 	episode = 4;
	.loc 1 1392 10
	movl	$4, -24(%rbp)	#, episode
	jmp	.L239	#
.L238:
# g_game.c:1394:     else if ( gamemode == shareware )
	.loc 1 1394 24
	movl	gamemode(%rip), %eax	# gamemode, gamemode.242_3
# g_game.c:1394:     else if ( gamemode == shareware )
	.loc 1 1394 13
	testl	%eax, %eax	# gamemode.242_3
	jne	.L240	#,
# g_game.c:1396:       if (episode > 1) 
	.loc 1 1396 10
	cmpl	$1, -24(%rbp)	#, episode
	jle	.L239	#,
# g_game.c:1397: 	   episode = 1;	// only start episode 1 on shareware
	.loc 1 1397 13
	movl	$1, -24(%rbp)	#, episode
	jmp	.L239	#
.L240:
# g_game.c:1401:       if (episode > 3)
	.loc 1 1401 10
	cmpl	$3, -24(%rbp)	#, episode
	jle	.L239	#,
# g_game.c:1402: 	episode = 3;
	.loc 1 1402 10
	movl	$3, -24(%rbp)	#, episode
.L239:
# g_game.c:1407:     if (map < 1) 
	.loc 1 1407 8
	cmpl	$0, -28(%rbp)	#, map
	jg	.L241	#,
# g_game.c:1408: 	map = 1;
	.loc 1 1408 6
	movl	$1, -28(%rbp)	#, map
.L241:
# g_game.c:1410:     if ( (map > 9)
	.loc 1 1410 8
	cmpl	$9, -28(%rbp)	#, map
	jle	.L242	#,
# g_game.c:1411: 	 && ( gamemode != commercial) )
	.loc 1 1411 17
	movl	gamemode(%rip), %eax	# gamemode, gamemode.243_4
# g_game.c:1411: 	 && ( gamemode != commercial) )
	.loc 1 1411 3
	cmpl	$2, %eax	#, gamemode.243_4
	je	.L242	#,
# g_game.c:1412:       map = 9; 
	.loc 1 1412 11
	movl	$9, -28(%rbp)	#, map
.L242:
# g_game.c:1414:     M_ClearRandom (); 
	.loc 1 1414 5
	call	M_ClearRandom@PLT	#
# g_game.c:1416:     if (skill == sk_nightmare || respawnparm )
	.loc 1 1416 8
	cmpl	$4, -20(%rbp)	#, skill
	je	.L243	#,
# g_game.c:1416:     if (skill == sk_nightmare || respawnparm )
	.loc 1 1416 31 discriminator 1
	movl	respawnparm(%rip), %eax	# respawnparm, respawnparm.244_5
	testl	%eax, %eax	# respawnparm.244_5
	je	.L244	#,
.L243:
# g_game.c:1417: 	respawnmonsters = true;
	.loc 1 1417 18
	movl	$1, respawnmonsters(%rip)	#, respawnmonsters
	jmp	.L245	#
.L244:
# g_game.c:1419: 	respawnmonsters = false;
	.loc 1 1419 18
	movl	$0, respawnmonsters(%rip)	#, respawnmonsters
.L245:
# g_game.c:1421:     if (fastparm || (skill == sk_nightmare && gameskill != sk_nightmare) )
	.loc 1 1421 9
	movl	fastparm(%rip), %eax	# fastparm, fastparm.245_6
# g_game.c:1421:     if (fastparm || (skill == sk_nightmare && gameskill != sk_nightmare) )
	.loc 1 1421 8
	testl	%eax, %eax	# fastparm.245_6
	jne	.L246	#,
# g_game.c:1421:     if (fastparm || (skill == sk_nightmare && gameskill != sk_nightmare) )
	.loc 1 1421 18 discriminator 1
	cmpl	$4, -20(%rbp)	#, skill
	jne	.L247	#,
# g_game.c:1421:     if (fastparm || (skill == sk_nightmare && gameskill != sk_nightmare) )
	.loc 1 1421 57 discriminator 2
	movl	gameskill(%rip), %eax	# gameskill, gameskill.246_7
# g_game.c:1421:     if (fastparm || (skill == sk_nightmare && gameskill != sk_nightmare) )
	.loc 1 1421 44 discriminator 2
	cmpl	$4, %eax	#, gameskill.246_7
	je	.L247	#,
.L246:
# g_game.c:1423: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1423 8
	movl	$477, -4(%rbp)	#, i
# g_game.c:1423: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1423 2
	jmp	.L248	#
.L249:
# g_game.c:1424: 	    states[i].tics >>= 1; 
	.loc 1 1424 15
	movl	-4(%rbp), %eax	# i, tmp105
	movslq	%eax, %rdx	# tmp105, tmp104
	movq	%rdx, %rax	# tmp104, tmp107
	salq	$3, %rax	#, tmp108
	subq	%rdx, %rax	# tmp104, tmp107
	salq	$3, %rax	#, tmp109
	movq	%rax, %rdx	# tmp107, tmp106
	leaq	16+states(%rip), %rax	#, tmp110
	movq	(%rdx,%rax), %rax	# states[i_28].tics, _8
# g_game.c:1424: 	    states[i].tics >>= 1; 
	.loc 1 1424 21
	sarq	%rax	# _8
	movq	%rax, %rcx	# _8, _9
	movl	-4(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, tmp111
	movq	%rdx, %rax	# tmp111, tmp114
	salq	$3, %rax	#, tmp115
	subq	%rdx, %rax	# tmp111, tmp114
	salq	$3, %rax	#, tmp116
	movq	%rax, %rdx	# tmp114, tmp113
	leaq	16+states(%rip), %rax	#, tmp117
	movq	%rcx, (%rdx,%rax)	# _9, states[i_28].tics
# g_game.c:1423: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1423 42 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L248:
# g_game.c:1423: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1423 24 discriminator 1
	cmpl	$489, -4(%rbp)	#, i
	jle	.L249	#,
# g_game.c:1425: 	mobjinfo[MT_BRUISERSHOT].speed = 20*FRACUNIT; 
	.loc 1 1425 33
	movl	$1310720, 1532+mobjinfo(%rip)	#, mobjinfo[16].speed
# g_game.c:1426: 	mobjinfo[MT_HEADSHOT].speed = 20*FRACUNIT; 
	.loc 1 1426 30
	movl	$1310720, 3004+mobjinfo(%rip)	#, mobjinfo[32].speed
# g_game.c:1427: 	mobjinfo[MT_TROOPSHOT].speed = 20*FRACUNIT; 
	.loc 1 1427 31
	movl	$1310720, 2912+mobjinfo(%rip)	#, mobjinfo[31].speed
	jmp	.L250	#
.L247:
# g_game.c:1429:     else if (skill != sk_nightmare && gameskill == sk_nightmare) 
	.loc 1 1429 13
	cmpl	$4, -20(%rbp)	#, skill
	je	.L250	#,
# g_game.c:1429:     else if (skill != sk_nightmare && gameskill == sk_nightmare) 
	.loc 1 1429 49 discriminator 1
	movl	gameskill(%rip), %eax	# gameskill, gameskill.247_10
# g_game.c:1429:     else if (skill != sk_nightmare && gameskill == sk_nightmare) 
	.loc 1 1429 36 discriminator 1
	cmpl	$4, %eax	#, gameskill.247_10
	jne	.L250	#,
# g_game.c:1431: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1431 8
	movl	$477, -4(%rbp)	#, i
# g_game.c:1431: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1431 2
	jmp	.L251	#
.L252:
# g_game.c:1432: 	    states[i].tics <<= 1; 
	.loc 1 1432 15
	movl	-4(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, tmp118
	movq	%rdx, %rax	# tmp118, tmp121
	salq	$3, %rax	#, tmp122
	subq	%rdx, %rax	# tmp118, tmp121
	salq	$3, %rax	#, tmp123
	movq	%rax, %rdx	# tmp121, tmp120
	leaq	16+states(%rip), %rax	#, tmp124
	movq	(%rdx,%rax), %rax	# states[i_29].tics, _11
# g_game.c:1432: 	    states[i].tics <<= 1; 
	.loc 1 1432 21
	leaq	(%rax,%rax), %rcx	#, _12
	movl	-4(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp128
	salq	$3, %rax	#, tmp129
	subq	%rdx, %rax	# tmp125, tmp128
	salq	$3, %rax	#, tmp130
	movq	%rax, %rdx	# tmp128, tmp127
	leaq	16+states(%rip), %rax	#, tmp131
	movq	%rcx, (%rdx,%rax)	# _12, states[i_29].tics
# g_game.c:1431: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1431 42 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L251:
# g_game.c:1431: 	for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++) 
	.loc 1 1431 24 discriminator 1
	cmpl	$489, -4(%rbp)	#, i
	jle	.L252	#,
# g_game.c:1433: 	mobjinfo[MT_BRUISERSHOT].speed = 15*FRACUNIT; 
	.loc 1 1433 33
	movl	$983040, 1532+mobjinfo(%rip)	#, mobjinfo[16].speed
# g_game.c:1434: 	mobjinfo[MT_HEADSHOT].speed = 10*FRACUNIT; 
	.loc 1 1434 30
	movl	$655360, 3004+mobjinfo(%rip)	#, mobjinfo[32].speed
# g_game.c:1435: 	mobjinfo[MT_TROOPSHOT].speed = 10*FRACUNIT; 
	.loc 1 1435 31
	movl	$655360, 2912+mobjinfo(%rip)	#, mobjinfo[31].speed
.L250:
# g_game.c:1440:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1440 11
	movl	$0, -4(%rbp)	#, i
# g_game.c:1440:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1440 5
	jmp	.L253	#
.L254:
# g_game.c:1441: 	players[i].playerstate = PST_REBORN; 
	.loc 1 1441 25
	movl	-4(%rbp), %eax	# i, tmp133
	movslq	%eax, %rdx	# tmp133, tmp132
	movq	%rdx, %rax	# tmp132, tmp135
	salq	$2, %rax	#, tmp135
	addq	%rdx, %rax	# tmp132, tmp135
	salq	$6, %rax	#, tmp136
	movq	%rax, %rdx	# tmp135, tmp134
	leaq	8+players(%rip), %rax	#, tmp137
	movl	$2, (%rdx,%rax)	#, players[i_30].playerstate
# g_game.c:1440:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1440 32 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L253:
# g_game.c:1440:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1440 17 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L254	#,
# g_game.c:1443:     usergame = true;                // will be set false if a demo 
	.loc 1 1443 14
	movl	$1, usergame(%rip)	#, usergame
# g_game.c:1444:     paused = false; 
	.loc 1 1444 12
	movl	$0, paused(%rip)	#, paused
# g_game.c:1445:     demoplayback = false; 
	.loc 1 1445 18
	movl	$0, demoplayback(%rip)	#, demoplayback
# g_game.c:1446:     automapactive = false; 
	.loc 1 1446 19
	movl	$0, automapactive(%rip)	#, automapactive
# g_game.c:1447:     viewactive = true; 
	.loc 1 1447 16
	movl	$1, viewactive(%rip)	#, viewactive
# g_game.c:1448:     gameepisode = episode; 
	.loc 1 1448 17
	movl	-24(%rbp), %eax	# episode, tmp138
	movl	%eax, gameepisode(%rip)	# tmp138, gameepisode
# g_game.c:1449:     gamemap = map; 
	.loc 1 1449 13
	movl	-28(%rbp), %eax	# map, tmp139
	movl	%eax, gamemap(%rip)	# tmp139, gamemap
# g_game.c:1450:     gameskill = skill; 
	.loc 1 1450 15
	movl	-20(%rbp), %eax	# skill, tmp140
	movl	%eax, gameskill(%rip)	# tmp140, gameskill
# g_game.c:1452:     viewactive = true;
	.loc 1 1452 16
	movl	$1, viewactive(%rip)	#, viewactive
# g_game.c:1455:     if ( gamemode == commercial)
	.loc 1 1455 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.248_13
# g_game.c:1455:     if ( gamemode == commercial)
	.loc 1 1455 8
	cmpl	$2, %eax	#, gamemode.248_13
	jne	.L255	#,
# g_game.c:1457: 	skytexture = R_TextureNumForName ("SKY3");
	.loc 1 1457 15
	leaq	.LC1(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	R_TextureNumForName@PLT	#
# g_game.c:1457: 	skytexture = R_TextureNumForName ("SKY3");
	.loc 1 1457 13 discriminator 1
	movl	%eax, skytexture(%rip)	# _14, skytexture
# g_game.c:1458: 	if (gamemap < 12)
	.loc 1 1458 14
	movl	gamemap(%rip), %eax	# gamemap, gamemap.249_15
# g_game.c:1458: 	if (gamemap < 12)
	.loc 1 1458 5
	cmpl	$11, %eax	#, gamemap.249_15
	jg	.L256	#,
# g_game.c:1459: 	    skytexture = R_TextureNumForName ("SKY1");
	.loc 1 1459 19
	leaq	.LC2(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	R_TextureNumForName@PLT	#
# g_game.c:1459: 	    skytexture = R_TextureNumForName ("SKY1");
	.loc 1 1459 17 discriminator 1
	movl	%eax, skytexture(%rip)	# _16, skytexture
	jmp	.L257	#
.L256:
# g_game.c:1461: 	    if (gamemap < 21)
	.loc 1 1461 18
	movl	gamemap(%rip), %eax	# gamemap, gamemap.250_17
# g_game.c:1461: 	    if (gamemap < 21)
	.loc 1 1461 9
	cmpl	$20, %eax	#, gamemap.250_17
	jg	.L257	#,
# g_game.c:1462: 		skytexture = R_TextureNumForName ("SKY2");
	.loc 1 1462 16
	leaq	.LC3(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	R_TextureNumForName@PLT	#
# g_game.c:1462: 		skytexture = R_TextureNumForName ("SKY2");
	.loc 1 1462 14 discriminator 1
	movl	%eax, skytexture(%rip)	# _18, skytexture
	jmp	.L257	#
.L255:
# g_game.c:1465: 	switch (episode) 
	.loc 1 1465 2
	cmpl	$4, -24(%rbp)	#, episode
	je	.L258	#,
	cmpl	$4, -24(%rbp)	#, episode
	jg	.L257	#,
	cmpl	$3, -24(%rbp)	#, episode
	je	.L259	#,
	cmpl	$3, -24(%rbp)	#, episode
	jg	.L257	#,
	cmpl	$1, -24(%rbp)	#, episode
	je	.L260	#,
	cmpl	$2, -24(%rbp)	#, episode
	je	.L261	#,
	jmp	.L257	#
.L260:
# g_game.c:1468: 	    skytexture = R_TextureNumForName ("SKY1"); 
	.loc 1 1468 19
	leaq	.LC2(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	R_TextureNumForName@PLT	#
# g_game.c:1468: 	    skytexture = R_TextureNumForName ("SKY1"); 
	.loc 1 1468 17 discriminator 1
	movl	%eax, skytexture(%rip)	# _19, skytexture
# g_game.c:1469: 	    break; 
	.loc 1 1469 6
	jmp	.L257	#
.L261:
# g_game.c:1471: 	    skytexture = R_TextureNumForName ("SKY2"); 
	.loc 1 1471 19
	leaq	.LC3(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	R_TextureNumForName@PLT	#
# g_game.c:1471: 	    skytexture = R_TextureNumForName ("SKY2"); 
	.loc 1 1471 17 discriminator 1
	movl	%eax, skytexture(%rip)	# _20, skytexture
# g_game.c:1472: 	    break; 
	.loc 1 1472 6
	jmp	.L257	#
.L259:
# g_game.c:1474: 	    skytexture = R_TextureNumForName ("SKY3"); 
	.loc 1 1474 19
	leaq	.LC1(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	R_TextureNumForName@PLT	#
# g_game.c:1474: 	    skytexture = R_TextureNumForName ("SKY3"); 
	.loc 1 1474 17 discriminator 1
	movl	%eax, skytexture(%rip)	# _21, skytexture
# g_game.c:1475: 	    break; 
	.loc 1 1475 6
	jmp	.L257	#
.L258:
# g_game.c:1477: 	    skytexture = R_TextureNumForName ("SKY4");
	.loc 1 1477 19
	leaq	.LC15(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	R_TextureNumForName@PLT	#
# g_game.c:1477: 	    skytexture = R_TextureNumForName ("SKY4");
	.loc 1 1477 17 discriminator 1
	movl	%eax, skytexture(%rip)	# _22, skytexture
# g_game.c:1478: 	    break;
	.loc 1 1478 6
	nop	
.L257:
# g_game.c:1481:     G_DoLoadLevel (); 
	.loc 1 1481 5
	call	G_DoLoadLevel	#
# g_game.c:1482: } 
	.loc 1 1482 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	G_InitNew, .-G_InitNew
	.globl	G_ReadDemoTiccmd
	.type	G_ReadDemoTiccmd, @function
G_ReadDemoTiccmd:
.LFB30:
	.loc 1 1492 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cmd, cmd
# g_game.c:1493:     if (*demo_p == DEMOMARKER) 
	.loc 1 1493 9
	movq	demo_p(%rip), %rax	# demo_p, demo_p.251_1
	movzbl	(%rax), %eax	# *demo_p.251_1, _2
# g_game.c:1493:     if (*demo_p == DEMOMARKER) 
	.loc 1 1493 8
	cmpb	$-128, %al	#, _2
	jne	.L263	#,
# g_game.c:1496: 	G_CheckDemoStatus (); 
	.loc 1 1496 2
	call	G_CheckDemoStatus	#
# g_game.c:1497: 	return; 
	.loc 1 1497 2
	jmp	.L262	#
.L263:
# g_game.c:1499:     cmd->forwardmove = ((signed char)*demo_p++); 
	.loc 1 1499 45
	movq	demo_p(%rip), %rax	# demo_p, demo_p.252_3
	leaq	1(%rax), %rdx	#, _5
	movq	%rdx, demo_p(%rip)	# _5, demo_p
# g_game.c:1499:     cmd->forwardmove = ((signed char)*demo_p++); 
	.loc 1 1499 38
	movzbl	(%rax), %eax	# *demo_p.253_4, _6
# g_game.c:1499:     cmd->forwardmove = ((signed char)*demo_p++); 
	.loc 1 1499 25
	movl	%eax, %edx	# _6, _7
# g_game.c:1499:     cmd->forwardmove = ((signed char)*demo_p++); 
	.loc 1 1499 22
	movq	-8(%rbp), %rax	# cmd, tmp100
	movb	%dl, (%rax)	# _7, cmd_26(D)->forwardmove
# g_game.c:1500:     cmd->sidemove = ((signed char)*demo_p++); 
	.loc 1 1500 42
	movq	demo_p(%rip), %rax	# demo_p, demo_p.254_8
	leaq	1(%rax), %rdx	#, _10
	movq	%rdx, demo_p(%rip)	# _10, demo_p
# g_game.c:1500:     cmd->sidemove = ((signed char)*demo_p++); 
	.loc 1 1500 35
	movzbl	(%rax), %eax	# *demo_p.255_9, _11
# g_game.c:1500:     cmd->sidemove = ((signed char)*demo_p++); 
	.loc 1 1500 22
	movl	%eax, %edx	# _11, _12
# g_game.c:1500:     cmd->sidemove = ((signed char)*demo_p++); 
	.loc 1 1500 19
	movq	-8(%rbp), %rax	# cmd, tmp101
	movb	%dl, 1(%rax)	# _12, cmd_26(D)->sidemove
# g_game.c:1501:     cmd->angleturn = ((unsigned char)*demo_p++)<<8; 
	.loc 1 1501 45
	movq	demo_p(%rip), %rax	# demo_p, demo_p.256_13
	leaq	1(%rax), %rdx	#, _15
	movq	%rdx, demo_p(%rip)	# _15, demo_p
# g_game.c:1501:     cmd->angleturn = ((unsigned char)*demo_p++)<<8; 
	.loc 1 1501 38
	movzbl	(%rax), %eax	# *demo_p.257_14, _16
# g_game.c:1501:     cmd->angleturn = ((unsigned char)*demo_p++)<<8; 
	.loc 1 1501 20
	movzbl	%al, %eax	# _16, _17
	sall	$8, %eax	#, _17
	movl	%eax, %edx	# _17, _18
	movq	-8(%rbp), %rax	# cmd, tmp102
	movw	%dx, 2(%rax)	# _18, cmd_26(D)->angleturn
# g_game.c:1502:     cmd->buttons = (unsigned char)*demo_p++; 
	.loc 1 1502 42
	movq	demo_p(%rip), %rax	# demo_p, demo_p.258_19
	leaq	1(%rax), %rdx	#, _21
	movq	%rdx, demo_p(%rip)	# _21, demo_p
# g_game.c:1502:     cmd->buttons = (unsigned char)*demo_p++; 
	.loc 1 1502 20
	movzbl	(%rax), %edx	# *demo_p.259_20, _22
# g_game.c:1502:     cmd->buttons = (unsigned char)*demo_p++; 
	.loc 1 1502 18
	movq	-8(%rbp), %rax	# cmd, tmp103
	movb	%dl, 7(%rax)	# _22, cmd_26(D)->buttons
.L262:
# g_game.c:1503: } 
	.loc 1 1503 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE30:
	.size	G_ReadDemoTiccmd, .-G_ReadDemoTiccmd
	.globl	G_WriteDemoTiccmd
	.type	G_WriteDemoTiccmd, @function
G_WriteDemoTiccmd:
.LFB31:
	.loc 1 1507 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cmd, cmd
# g_game.c:1508:     if (gamekeydown['q'])           // press q to end demo recording 
	.loc 1 1508 20
	movl	452+gamekeydown(%rip), %eax	# gamekeydown[113], _1
# g_game.c:1508:     if (gamekeydown['q'])           // press q to end demo recording 
	.loc 1 1508 8
	testl	%eax, %eax	# _1
	je	.L266	#,
# g_game.c:1509: 	G_CheckDemoStatus (); 
	.loc 1 1509 2
	call	G_CheckDemoStatus	#
.L266:
# g_game.c:1510:     *demo_p++ = cmd->forwardmove; 
	.loc 1 1510 20
	movq	-8(%rbp), %rax	# cmd, tmp106
	movzbl	(%rax), %ecx	# cmd_33(D)->forwardmove, _2
# g_game.c:1510:     *demo_p++ = cmd->forwardmove; 
	.loc 1 1510 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.260_3
	leaq	1(%rax), %rdx	#, _5
	movq	%rdx, demo_p(%rip)	# _5, demo_p
# g_game.c:1510:     *demo_p++ = cmd->forwardmove; 
	.loc 1 1510 20
	movl	%ecx, %edx	# _2, _6
# g_game.c:1510:     *demo_p++ = cmd->forwardmove; 
	.loc 1 1510 15
	movb	%dl, (%rax)	# _6, *demo_p.261_4
# g_game.c:1511:     *demo_p++ = cmd->sidemove; 
	.loc 1 1511 20
	movq	-8(%rbp), %rax	# cmd, tmp107
	movzbl	1(%rax), %ecx	# cmd_33(D)->sidemove, _7
# g_game.c:1511:     *demo_p++ = cmd->sidemove; 
	.loc 1 1511 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.262_8
	leaq	1(%rax), %rdx	#, _10
	movq	%rdx, demo_p(%rip)	# _10, demo_p
# g_game.c:1511:     *demo_p++ = cmd->sidemove; 
	.loc 1 1511 20
	movl	%ecx, %edx	# _7, _11
# g_game.c:1511:     *demo_p++ = cmd->sidemove; 
	.loc 1 1511 15
	movb	%dl, (%rax)	# _11, *demo_p.263_9
# g_game.c:1512:     *demo_p++ = (cmd->angleturn+128)>>8; 
	.loc 1 1512 21
	movq	-8(%rbp), %rax	# cmd, tmp108
	movzwl	2(%rax), %eax	# cmd_33(D)->angleturn, _12
	cwtl
# g_game.c:1512:     *demo_p++ = (cmd->angleturn+128)>>8; 
	.loc 1 1512 32
	subl	$-128, %eax	#, _14
# g_game.c:1512:     *demo_p++ = (cmd->angleturn+128)>>8; 
	.loc 1 1512 37
	sarl	$8, %eax	#, _14
	movl	%eax, %ecx	# _14, _15
# g_game.c:1512:     *demo_p++ = (cmd->angleturn+128)>>8; 
	.loc 1 1512 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.264_16
	leaq	1(%rax), %rdx	#, _18
	movq	%rdx, demo_p(%rip)	# _18, demo_p
# g_game.c:1512:     *demo_p++ = (cmd->angleturn+128)>>8; 
	.loc 1 1512 15
	movl	%ecx, %edx	# _15, _19
	movb	%dl, (%rax)	# _19, *demo_p.265_17
# g_game.c:1513:     *demo_p++ = cmd->buttons; 
	.loc 1 1513 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.266_20
	leaq	1(%rax), %rdx	#, _22
	movq	%rdx, demo_p(%rip)	# _22, demo_p
# g_game.c:1513:     *demo_p++ = cmd->buttons; 
	.loc 1 1513 20
	movq	-8(%rbp), %rdx	# cmd, tmp109
	movzbl	7(%rdx), %edx	# cmd_33(D)->buttons, _23
# g_game.c:1513:     *demo_p++ = cmd->buttons; 
	.loc 1 1513 15
	movb	%dl, (%rax)	# _23, *demo_p.267_21
# g_game.c:1514:     demo_p -= 4; 
	.loc 1 1514 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.268_24
	subq	$4, %rax	#, _25
	movq	%rax, demo_p(%rip)	# _25, demo_p
# g_game.c:1515:     if (demo_p > demoend - 16)
	.loc 1 1515 26
	movq	demoend(%rip), %rax	# demoend, demoend.269_26
	leaq	-16(%rax), %rdx	#, _27
# g_game.c:1515:     if (demo_p > demoend - 16)
	.loc 1 1515 16
	movq	demo_p(%rip), %rax	# demo_p, demo_p.270_28
# g_game.c:1515:     if (demo_p > demoend - 16)
	.loc 1 1515 8
	cmpq	%rax, %rdx	# demo_p.270_28, _27
	jnb	.L267	#,
# g_game.c:1518: 	G_CheckDemoStatus (); 
	.loc 1 1518 2
	call	G_CheckDemoStatus	#
# g_game.c:1519: 	return; 
	.loc 1 1519 2
	jmp	.L265	#
.L267:
# g_game.c:1522:     G_ReadDemoTiccmd (cmd);         // make SURE it is exactly the same 
	.loc 1 1522 5
	movq	-8(%rbp), %rax	# cmd, tmp110
	movq	%rax, %rdi	# tmp110,
	call	G_ReadDemoTiccmd	#
.L265:
# g_game.c:1523: } 
	.loc 1 1523 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE31:
	.size	G_WriteDemoTiccmd, .-G_WriteDemoTiccmd
	.section	.rodata
.LC16:
	.string	"-maxdemo"
	.text
	.globl	G_RecordDemo
	.type	G_RecordDemo, @function
G_RecordDemo:
.LFB32:
	.loc 1 1531 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
# g_game.c:1535:     usergame = false; 
	.loc 1 1535 14
	movl	$0, usergame(%rip)	#, usergame
# g_game.c:1536:     strcpy (demoname, name); 
	.loc 1 1536 5
	movq	-24(%rbp), %rax	# name, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	demoname(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	strcpy@PLT	#
# g_game.c:1537:     strcat (demoname, ".lmp"); 
	.loc 1 1537 5
	leaq	demoname(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp102, _19
# g_game.c:1537:     strcat (demoname, ".lmp"); 
	.loc 1 1537 5 is_stmt 0 discriminator 1
	leaq	demoname(%rip), %rax	#, tmp103
	addq	%rdx, %rax	# _19, _20
	movl	$1886219310, (%rax)	#, MEM <char[1:5]> [(void *)_20]
	movb	$0, 4(%rax)	#, MEM <char[1:5]> [(void *)_20]
# g_game.c:1538:     maxsize = 0x20000;
	.loc 1 1538 13 is_stmt 1
	movl	$131072, -8(%rbp)	#, maxsize
# g_game.c:1539:     i = M_CheckParm ("-maxdemo");
	.loc 1 1539 9
	leaq	.LC16(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	M_CheckParm@PLT	#
	movl	%eax, -4(%rbp)	# tmp105, i
# g_game.c:1540:     if (i && i<myargc-1)
	.loc 1 1540 8
	cmpl	$0, -4(%rbp)	#, i
	je	.L270	#,
# g_game.c:1540:     if (i && i<myargc-1)
	.loc 1 1540 22 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.271_1
	subl	$1, %eax	#, _2
# g_game.c:1540:     if (i && i<myargc-1)
	.loc 1 1540 11 discriminator 1
	cmpl	%eax, -4(%rbp)	# _2, i
	jge	.L270	#,
# g_game.c:1541: 	maxsize = atoi(myargv[i+1])*1024;
	.loc 1 1541 23
	movq	myargv(%rip), %rax	# myargv, myargv.272_3
	movl	-4(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, _4
	addq	$1, %rdx	#, _5
	salq	$3, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
# g_game.c:1541: 	maxsize = atoi(myargv[i+1])*1024;
	.loc 1 1541 12
	movq	(%rax), %rax	# *_7, _8
	movq	%rax, %rdi	# _8,
	call	atoi@PLT	#
# g_game.c:1541: 	maxsize = atoi(myargv[i+1])*1024;
	.loc 1 1541 10 discriminator 1
	sall	$10, %eax	#, tmp107
	movl	%eax, -8(%rbp)	# tmp107, maxsize
.L270:
# g_game.c:1542:     demobuffer = Z_Malloc (maxsize,PU_STATIC,NULL); 
	.loc 1 1542 18
	movl	-8(%rbp), %eax	# maxsize, tmp108
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp108,
	call	Z_Malloc@PLT	#
# g_game.c:1542:     demobuffer = Z_Malloc (maxsize,PU_STATIC,NULL); 
	.loc 1 1542 16 discriminator 1
	movq	%rax, demobuffer(%rip)	# _10, demobuffer
# g_game.c:1543:     demoend = demobuffer + maxsize;
	.loc 1 1543 26
	movq	demobuffer(%rip), %rdx	# demobuffer, demobuffer.273_11
	movl	-8(%rbp), %eax	# maxsize, tmp109
	cltq
	addq	%rdx, %rax	# demobuffer.273_11, _13
# g_game.c:1543:     demoend = demobuffer + maxsize;
	.loc 1 1543 13
	movq	%rax, demoend(%rip)	# _13, demoend
# g_game.c:1545:     demorecording = true; 
	.loc 1 1545 19
	movl	$1, demorecording(%rip)	#, demorecording
# g_game.c:1546: } 
	.loc 1 1546 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE32:
	.size	G_RecordDemo, .-G_RecordDemo
	.globl	G_BeginRecording
	.type	G_BeginRecording, @function
G_BeginRecording:
.LFB33:
	.loc 1 1550 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# g_game.c:1553:     demo_p = demobuffer;
	.loc 1 1553 12
	movq	demobuffer(%rip), %rax	# demobuffer, demobuffer.274_1
	movq	%rax, demo_p(%rip)	# demobuffer.274_1, demo_p
# g_game.c:1555:     *demo_p++ = VERSION;
	.loc 1 1555 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.275_2
	leaq	1(%rax), %rdx	#, _4
	movq	%rdx, demo_p(%rip)	# _4, demo_p
# g_game.c:1555:     *demo_p++ = VERSION;
	.loc 1 1555 15
	movb	$110, (%rax)	#, *demo_p.276_3
# g_game.c:1556:     *demo_p++ = gameskill; 
	.loc 1 1556 15
	movl	gameskill(%rip), %ecx	# gameskill, gameskill.277_5
# g_game.c:1556:     *demo_p++ = gameskill; 
	.loc 1 1556 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.278_6
	leaq	1(%rax), %rdx	#, _8
	movq	%rdx, demo_p(%rip)	# _8, demo_p
# g_game.c:1556:     *demo_p++ = gameskill; 
	.loc 1 1556 15
	movl	%ecx, %edx	# gameskill.277_5, _9
	movb	%dl, (%rax)	# _9, *demo_p.279_7
# g_game.c:1557:     *demo_p++ = gameepisode; 
	.loc 1 1557 15
	movl	gameepisode(%rip), %ecx	# gameepisode, gameepisode.280_10
# g_game.c:1557:     *demo_p++ = gameepisode; 
	.loc 1 1557 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.281_11
	leaq	1(%rax), %rdx	#, _13
	movq	%rdx, demo_p(%rip)	# _13, demo_p
# g_game.c:1557:     *demo_p++ = gameepisode; 
	.loc 1 1557 15
	movl	%ecx, %edx	# gameepisode.280_10, _14
	movb	%dl, (%rax)	# _14, *demo_p.282_12
# g_game.c:1558:     *demo_p++ = gamemap; 
	.loc 1 1558 15
	movl	gamemap(%rip), %ecx	# gamemap, gamemap.283_15
# g_game.c:1558:     *demo_p++ = gamemap; 
	.loc 1 1558 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.284_16
	leaq	1(%rax), %rdx	#, _18
	movq	%rdx, demo_p(%rip)	# _18, demo_p
# g_game.c:1558:     *demo_p++ = gamemap; 
	.loc 1 1558 15
	movl	%ecx, %edx	# gamemap.283_15, _19
	movb	%dl, (%rax)	# _19, *demo_p.285_17
# g_game.c:1559:     *demo_p++ = deathmatch; 
	.loc 1 1559 15
	movl	deathmatch(%rip), %ecx	# deathmatch, deathmatch.286_20
# g_game.c:1559:     *demo_p++ = deathmatch; 
	.loc 1 1559 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.287_21
	leaq	1(%rax), %rdx	#, _23
	movq	%rdx, demo_p(%rip)	# _23, demo_p
# g_game.c:1559:     *demo_p++ = deathmatch; 
	.loc 1 1559 15
	movl	%ecx, %edx	# deathmatch.286_20, _24
	movb	%dl, (%rax)	# _24, *demo_p.288_22
# g_game.c:1560:     *demo_p++ = respawnparm;
	.loc 1 1560 15
	movl	respawnparm(%rip), %ecx	# respawnparm, respawnparm.289_25
# g_game.c:1560:     *demo_p++ = respawnparm;
	.loc 1 1560 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.290_26
	leaq	1(%rax), %rdx	#, _28
	movq	%rdx, demo_p(%rip)	# _28, demo_p
# g_game.c:1560:     *demo_p++ = respawnparm;
	.loc 1 1560 15
	movl	%ecx, %edx	# respawnparm.289_25, _29
	movb	%dl, (%rax)	# _29, *demo_p.291_27
# g_game.c:1561:     *demo_p++ = fastparm;
	.loc 1 1561 15
	movl	fastparm(%rip), %ecx	# fastparm, fastparm.292_30
# g_game.c:1561:     *demo_p++ = fastparm;
	.loc 1 1561 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.293_31
	leaq	1(%rax), %rdx	#, _33
	movq	%rdx, demo_p(%rip)	# _33, demo_p
# g_game.c:1561:     *demo_p++ = fastparm;
	.loc 1 1561 15
	movl	%ecx, %edx	# fastparm.292_30, _34
	movb	%dl, (%rax)	# _34, *demo_p.294_32
# g_game.c:1562:     *demo_p++ = nomonsters;
	.loc 1 1562 15
	movl	nomonsters(%rip), %ecx	# nomonsters, nomonsters.295_35
# g_game.c:1562:     *demo_p++ = nomonsters;
	.loc 1 1562 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.296_36
	leaq	1(%rax), %rdx	#, _38
	movq	%rdx, demo_p(%rip)	# _38, demo_p
# g_game.c:1562:     *demo_p++ = nomonsters;
	.loc 1 1562 15
	movl	%ecx, %edx	# nomonsters.295_35, _39
	movb	%dl, (%rax)	# _39, *demo_p.297_37
# g_game.c:1563:     *demo_p++ = consoleplayer;
	.loc 1 1563 15
	movl	consoleplayer(%rip), %ecx	# consoleplayer, consoleplayer.298_40
# g_game.c:1563:     *demo_p++ = consoleplayer;
	.loc 1 1563 12
	movq	demo_p(%rip), %rax	# demo_p, demo_p.299_41
	leaq	1(%rax), %rdx	#, _43
	movq	%rdx, demo_p(%rip)	# _43, demo_p
# g_game.c:1563:     *demo_p++ = consoleplayer;
	.loc 1 1563 15
	movl	%ecx, %edx	# consoleplayer.298_40, _44
	movb	%dl, (%rax)	# _44, *demo_p.300_42
# g_game.c:1565:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1565 11
	movl	$0, -4(%rbp)	#, i
# g_game.c:1565:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1565 5
	jmp	.L272	#
.L273:
# g_game.c:1566: 	*demo_p++ = playeringame[i]; 		 
	.loc 1 1566 26
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp123
	leaq	playeringame(%rip), %rax	#, tmp124
	movl	(%rdx,%rax), %ecx	# playeringame[i_50], _45
# g_game.c:1566: 	*demo_p++ = playeringame[i]; 		 
	.loc 1 1566 9
	movq	demo_p(%rip), %rax	# demo_p, demo_p.301_46
	leaq	1(%rax), %rdx	#, _48
	movq	%rdx, demo_p(%rip)	# _48, demo_p
# g_game.c:1566: 	*demo_p++ = playeringame[i]; 		 
	.loc 1 1566 12
	movl	%ecx, %edx	# _45, _49
	movb	%dl, (%rax)	# _49, *demo_p.302_47
# g_game.c:1565:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1565 32 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L272:
# g_game.c:1565:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1565 17 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L273	#,
# g_game.c:1567: } 
	.loc 1 1567 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE33:
	.size	G_BeginRecording, .-G_BeginRecording
	.globl	defdemoname
	.bss
	.align 8
	.type	defdemoname, @object
	.size	defdemoname, 8
defdemoname:
	.zero	8
	.text
	.globl	G_DeferedPlayDemo
	.type	G_DeferedPlayDemo, @function
G_DeferedPlayDemo:
.LFB34:
	.loc 1 1577 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# name, name
# g_game.c:1578:     defdemoname = name; 
	.loc 1 1578 17
	movq	-8(%rbp), %rax	# name, tmp82
	movq	%rax, defdemoname(%rip)	# tmp82, defdemoname
# g_game.c:1579:     gameaction = ga_playdemo; 
	.loc 1 1579 16
	movl	$5, gameaction(%rip)	#, gameaction
# g_game.c:1580: } 
	.loc 1 1580 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	G_DeferedPlayDemo, .-G_DeferedPlayDemo
	.section	.rodata
	.align 8
.LC17:
	.string	"Demo is from a different game version!\n"
	.text
	.globl	G_DoPlayDemo
	.type	G_DoPlayDemo, @function
G_DoPlayDemo:
.LFB35:
	.loc 1 1583 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# g_game.c:1587:     gameaction = ga_nothing; 
	.loc 1 1587 16
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:1588:     demobuffer = demo_p = W_CacheLumpName (defdemoname, PU_STATIC); 
	.loc 1 1588 27
	movq	defdemoname(%rip), %rax	# defdemoname, defdemoname.303_1
	movl	$1, %esi	#,
	movq	%rax, %rdi	# defdemoname.303_1,
	call	W_CacheLumpName@PLT	#
# g_game.c:1588:     demobuffer = demo_p = W_CacheLumpName (defdemoname, PU_STATIC); 
	.loc 1 1588 25 discriminator 1
	movq	%rax, demo_p(%rip)	# _2, demo_p
# g_game.c:1588:     demobuffer = demo_p = W_CacheLumpName (defdemoname, PU_STATIC); 
	.loc 1 1588 16 discriminator 1
	movq	demo_p(%rip), %rax	# demo_p, demo_p.304_3
	movq	%rax, demobuffer(%rip)	# demo_p.304_3, demobuffer
# g_game.c:1589:     if ( *demo_p++ != VERSION)
	.loc 1 1589 17
	movq	demo_p(%rip), %rax	# demo_p, demo_p.305_4
	leaq	1(%rax), %rdx	#, _6
	movq	%rdx, demo_p(%rip)	# _6, demo_p
# g_game.c:1589:     if ( *demo_p++ != VERSION)
	.loc 1 1589 10
	movzbl	(%rax), %eax	# *demo_p.306_5, _7
# g_game.c:1589:     if ( *demo_p++ != VERSION)
	.loc 1 1589 8
	cmpb	$110, %al	#, _7
	je	.L276	#,
# g_game.c:1591:       fprintf( stderr, "Demo is from a different game version!\n");
	.loc 1 1591 7
	movq	stderr(%rip), %rax	# stderr, stderr.307_8
	movq	%rax, %rcx	# stderr.307_8,
	movl	$39, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC17(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	fwrite@PLT	#
# g_game.c:1592:       gameaction = ga_nothing;
	.loc 1 1592 18
	movl	$0, gameaction(%rip)	#, gameaction
# g_game.c:1593:       return;
	.loc 1 1593 7
	jmp	.L275	#
.L276:
# g_game.c:1596:     skill = *demo_p++; 
	.loc 1 1596 20
	movq	demo_p(%rip), %rax	# demo_p, demo_p.308_9
	leaq	1(%rax), %rdx	#, _11
	movq	%rdx, demo_p(%rip)	# _11, demo_p
# g_game.c:1596:     skill = *demo_p++; 
	.loc 1 1596 13
	movzbl	(%rax), %eax	# *demo_p.309_10, _12
# g_game.c:1596:     skill = *demo_p++; 
	.loc 1 1596 11
	movzbl	%al, %eax	# _12, tmp124
	movl	%eax, -12(%rbp)	# tmp124, skill
# g_game.c:1597:     episode = *demo_p++; 
	.loc 1 1597 22
	movq	demo_p(%rip), %rax	# demo_p, demo_p.310_13
	leaq	1(%rax), %rdx	#, _15
	movq	%rdx, demo_p(%rip)	# _15, demo_p
# g_game.c:1597:     episode = *demo_p++; 
	.loc 1 1597 15
	movzbl	(%rax), %eax	# *demo_p.311_14, _16
# g_game.c:1597:     episode = *demo_p++; 
	.loc 1 1597 13
	movzbl	%al, %eax	# _16, tmp125
	movl	%eax, -8(%rbp)	# tmp125, episode
# g_game.c:1598:     map = *demo_p++; 
	.loc 1 1598 18
	movq	demo_p(%rip), %rax	# demo_p, demo_p.312_17
	leaq	1(%rax), %rdx	#, _19
	movq	%rdx, demo_p(%rip)	# _19, demo_p
# g_game.c:1598:     map = *demo_p++; 
	.loc 1 1598 11
	movzbl	(%rax), %eax	# *demo_p.313_18, _20
# g_game.c:1598:     map = *demo_p++; 
	.loc 1 1598 9
	movzbl	%al, %eax	# _20, tmp126
	movl	%eax, -4(%rbp)	# tmp126, map
# g_game.c:1599:     deathmatch = *demo_p++;
	.loc 1 1599 25
	movq	demo_p(%rip), %rax	# demo_p, demo_p.314_21
	leaq	1(%rax), %rdx	#, _23
	movq	%rdx, demo_p(%rip)	# _23, demo_p
# g_game.c:1599:     deathmatch = *demo_p++;
	.loc 1 1599 18
	movzbl	(%rax), %eax	# *demo_p.315_22, _24
	movzbl	%al, %eax	# _24, _25
# g_game.c:1599:     deathmatch = *demo_p++;
	.loc 1 1599 16
	movl	%eax, deathmatch(%rip)	# _25, deathmatch
# g_game.c:1600:     respawnparm = *demo_p++;
	.loc 1 1600 26
	movq	demo_p(%rip), %rax	# demo_p, demo_p.316_26
	leaq	1(%rax), %rdx	#, _28
	movq	%rdx, demo_p(%rip)	# _28, demo_p
# g_game.c:1600:     respawnparm = *demo_p++;
	.loc 1 1600 19
	movzbl	(%rax), %eax	# *demo_p.317_27, _29
	movzbl	%al, %eax	# _29, _30
# g_game.c:1600:     respawnparm = *demo_p++;
	.loc 1 1600 17
	movl	%eax, respawnparm(%rip)	# _30, respawnparm
# g_game.c:1601:     fastparm = *demo_p++;
	.loc 1 1601 23
	movq	demo_p(%rip), %rax	# demo_p, demo_p.318_31
	leaq	1(%rax), %rdx	#, _33
	movq	%rdx, demo_p(%rip)	# _33, demo_p
# g_game.c:1601:     fastparm = *demo_p++;
	.loc 1 1601 16
	movzbl	(%rax), %eax	# *demo_p.319_32, _34
	movzbl	%al, %eax	# _34, _35
# g_game.c:1601:     fastparm = *demo_p++;
	.loc 1 1601 14
	movl	%eax, fastparm(%rip)	# _35, fastparm
# g_game.c:1602:     nomonsters = *demo_p++;
	.loc 1 1602 25
	movq	demo_p(%rip), %rax	# demo_p, demo_p.320_36
	leaq	1(%rax), %rdx	#, _38
	movq	%rdx, demo_p(%rip)	# _38, demo_p
# g_game.c:1602:     nomonsters = *demo_p++;
	.loc 1 1602 18
	movzbl	(%rax), %eax	# *demo_p.321_37, _39
	movzbl	%al, %eax	# _39, _40
# g_game.c:1602:     nomonsters = *demo_p++;
	.loc 1 1602 16
	movl	%eax, nomonsters(%rip)	# _40, nomonsters
# g_game.c:1603:     consoleplayer = *demo_p++;
	.loc 1 1603 28
	movq	demo_p(%rip), %rax	# demo_p, demo_p.322_41
	leaq	1(%rax), %rdx	#, _43
	movq	%rdx, demo_p(%rip)	# _43, demo_p
# g_game.c:1603:     consoleplayer = *demo_p++;
	.loc 1 1603 21
	movzbl	(%rax), %eax	# *demo_p.323_42, _44
	movzbl	%al, %eax	# _44, _45
# g_game.c:1603:     consoleplayer = *demo_p++;
	.loc 1 1603 19
	movl	%eax, consoleplayer(%rip)	# _45, consoleplayer
# g_game.c:1605:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1605 11
	movl	$0, -16(%rbp)	#, i
# g_game.c:1605:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1605 5
	jmp	.L278	#
.L279:
# g_game.c:1606: 	playeringame[i] = *demo_p++; 
	.loc 1 1606 27
	movq	demo_p(%rip), %rax	# demo_p, demo_p.324_46
	leaq	1(%rax), %rdx	#, _48
	movq	%rdx, demo_p(%rip)	# _48, demo_p
# g_game.c:1606: 	playeringame[i] = *demo_p++; 
	.loc 1 1606 20
	movzbl	(%rax), %eax	# *demo_p.325_47, _49
	movzbl	%al, %eax	# _49, _50
# g_game.c:1606: 	playeringame[i] = *demo_p++; 
	.loc 1 1606 18
	movl	-16(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, tmp127
	leaq	0(,%rdx,4), %rcx	#, tmp129
	leaq	playeringame(%rip), %rdx	#, tmp130
	movl	%eax, (%rcx,%rdx)	# _50, playeringame[i_52]
# g_game.c:1605:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1605 32 discriminator 3
	addl	$1, -16(%rbp)	#, i
.L278:
# g_game.c:1605:     for (i=0 ; i<MAXPLAYERS ; i++) 
	.loc 1 1605 17 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L279	#,
# g_game.c:1607:     if (playeringame[1]) 
	.loc 1 1607 21
	movl	4+playeringame(%rip), %eax	# playeringame[1], _51
# g_game.c:1607:     if (playeringame[1]) 
	.loc 1 1607 8
	testl	%eax, %eax	# _51
	je	.L280	#,
# g_game.c:1609: 	netgame = true; 
	.loc 1 1609 10
	movl	$1, netgame(%rip)	#, netgame
# g_game.c:1610: 	netdemo = true; 
	.loc 1 1610 10
	movl	$1, netdemo(%rip)	#, netdemo
.L280:
# g_game.c:1614:     precache = false;
	.loc 1 1614 14
	movl	$0, precache(%rip)	#, precache
# g_game.c:1615:     G_InitNew (skill, episode, map); 
	.loc 1 1615 5
	movl	-4(%rbp), %edx	# map, tmp131
	movl	-8(%rbp), %ecx	# episode, tmp132
	movl	-12(%rbp), %eax	# skill, tmp133
	movl	%ecx, %esi	# tmp132,
	movl	%eax, %edi	# tmp133,
	call	G_InitNew	#
# g_game.c:1616:     precache = true; 
	.loc 1 1616 14
	movl	$1, precache(%rip)	#, precache
# g_game.c:1618:     usergame = false; 
	.loc 1 1618 14
	movl	$0, usergame(%rip)	#, usergame
# g_game.c:1619:     demoplayback = true; 
	.loc 1 1619 18
	movl	$1, demoplayback(%rip)	#, demoplayback
.L275:
# g_game.c:1620: } 
	.loc 1 1620 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	G_DoPlayDemo, .-G_DoPlayDemo
	.section	.rodata
.LC18:
	.string	"-nodraw"
.LC19:
	.string	"-noblit"
	.text
	.globl	G_TimeDemo
	.type	G_TimeDemo, @function
G_TimeDemo:
.LFB36:
	.loc 1 1626 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
# g_game.c:1627:     nodrawers = M_CheckParm ("-nodraw"); 
	.loc 1 1627 17
	leaq	.LC18(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	M_CheckParm@PLT	#
# g_game.c:1627:     nodrawers = M_CheckParm ("-nodraw"); 
	.loc 1 1627 15 discriminator 1
	movl	%eax, nodrawers(%rip)	# _2, nodrawers
# g_game.c:1628:     noblit = M_CheckParm ("-noblit"); 
	.loc 1 1628 14
	leaq	.LC19(%rip), %rax	#, tmp87
	movq	%rax, %rdi	# tmp87,
	call	M_CheckParm@PLT	#
# g_game.c:1628:     noblit = M_CheckParm ("-noblit"); 
	.loc 1 1628 12 discriminator 1
	movl	%eax, noblit(%rip)	# _4, noblit
# g_game.c:1629:     timingdemo = true; 
	.loc 1 1629 16
	movl	$1, timingdemo(%rip)	#, timingdemo
# g_game.c:1630:     singletics = true; 
	.loc 1 1630 16
	movl	$1, singletics(%rip)	#, singletics
# g_game.c:1632:     defdemoname = name; 
	.loc 1 1632 17
	movq	-8(%rbp), %rax	# name, tmp88
	movq	%rax, defdemoname(%rip)	# tmp88, defdemoname
# g_game.c:1633:     gameaction = ga_playdemo; 
	.loc 1 1633 16
	movl	$5, gameaction(%rip)	#, gameaction
# g_game.c:1634: } 
	.loc 1 1634 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	G_TimeDemo, .-G_TimeDemo
	.section	.rodata
	.align 8
.LC20:
	.string	"timed %i gametics in %i realtics"
.LC21:
	.string	"Z_CT at g_game.c:%i"
.LC22:
	.string	"Demo %s recorded"
	.text
	.globl	G_CheckDemoStatus
	.type	G_CheckDemoStatus, @function
G_CheckDemoStatus:
.LFB37:
	.loc 1 1648 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# g_game.c:1651:     if (timingdemo) 
	.loc 1 1651 9
	movl	timingdemo(%rip), %eax	# timingdemo, timingdemo.326_1
# g_game.c:1651:     if (timingdemo) 
	.loc 1 1651 8
	testl	%eax, %eax	# timingdemo.326_1
	je	.L283	#,
# g_game.c:1653: 	endtime = I_GetTime (); 
	.loc 1 1653 12
	call	I_GetTime@PLT	#
	movl	%eax, -4(%rbp)	# tmp105, endtime
# g_game.c:1654: 	I_Error ("timed %i gametics in %i realtics",gametic 
	.loc 1 1654 2
	movl	starttime(%rip), %eax	# starttime, starttime.327_2
	movl	-4(%rbp), %edx	# endtime, tmp106
	subl	%eax, %edx	# starttime.327_2, _3
	movl	gametic(%rip), %eax	# gametic, gametic.328_4
	movl	%eax, %esi	# gametic.328_4,
	leaq	.LC20(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L283:
# g_game.c:1658:     if (demoplayback) 
	.loc 1 1658 9
	movl	demoplayback(%rip), %eax	# demoplayback, demoplayback.329_5
# g_game.c:1658:     if (demoplayback) 
	.loc 1 1658 8
	testl	%eax, %eax	# demoplayback.329_5
	je	.L284	#,
# g_game.c:1660: 	if (singledemo) 
	.loc 1 1660 6
	movl	singledemo(%rip), %eax	# singledemo, singledemo.330_6
# g_game.c:1660: 	if (singledemo) 
	.loc 1 1660 5
	testl	%eax, %eax	# singledemo.330_6
	je	.L285	#,
# g_game.c:1661: 	    I_Quit (); 
	.loc 1 1661 6
	call	I_Quit@PLT	#
.L285:
# g_game.c:1663: 	Z_ChangeTag (demobuffer, PU_CACHE); 
	.loc 1 1663 2
	movq	demobuffer(%rip), %rax	# demobuffer, demobuffer.331_7
	subq	$40, %rax	#, _8
	movl	20(%rax), %eax	# MEM[(struct memblock_t *)_8].id, _9
	cmpl	$1919505, %eax	#, _9
	je	.L286	#,
# g_game.c:1663: 	Z_ChangeTag (demobuffer, PU_CACHE); 
	.loc 1 1663 2 is_stmt 0 discriminator 1
	movl	$1663, %esi	#,
	leaq	.LC21(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L286:
# g_game.c:1663: 	Z_ChangeTag (demobuffer, PU_CACHE); 
	.loc 1 1663 2 discriminator 3
	movq	demobuffer(%rip), %rax	# demobuffer, demobuffer.332_10
	movl	$101, %esi	#,
	movq	%rax, %rdi	# demobuffer.332_10,
	call	Z_ChangeTag2@PLT	#
# g_game.c:1664: 	demoplayback = false; 
	.loc 1 1664 15 is_stmt 1
	movl	$0, demoplayback(%rip)	#, demoplayback
# g_game.c:1665: 	netdemo = false;
	.loc 1 1665 10
	movl	$0, netdemo(%rip)	#, netdemo
# g_game.c:1666: 	netgame = false;
	.loc 1 1666 10
	movl	$0, netgame(%rip)	#, netgame
# g_game.c:1667: 	deathmatch = false;
	.loc 1 1667 13
	movl	$0, deathmatch(%rip)	#, deathmatch
# g_game.c:1668: 	playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1668 54
	movl	$0, 12+playeringame(%rip)	#, playeringame[3]
# g_game.c:1668: 	playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1668 50
	movl	12+playeringame(%rip), %eax	# playeringame[3], _11
# g_game.c:1668: 	playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1668 36
	movl	%eax, 8+playeringame(%rip)	# _11, playeringame[2]
# g_game.c:1668: 	playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1668 32
	movl	8+playeringame(%rip), %eax	# playeringame[2], _12
# g_game.c:1668: 	playeringame[1] = playeringame[2] = playeringame[3] = 0;
	.loc 1 1668 18
	movl	%eax, 4+playeringame(%rip)	# _12, playeringame[1]
# g_game.c:1669: 	respawnparm = false;
	.loc 1 1669 14
	movl	$0, respawnparm(%rip)	#, respawnparm
# g_game.c:1670: 	fastparm = false;
	.loc 1 1670 11
	movl	$0, fastparm(%rip)	#, fastparm
# g_game.c:1671: 	nomonsters = false;
	.loc 1 1671 13
	movl	$0, nomonsters(%rip)	#, nomonsters
# g_game.c:1672: 	consoleplayer = 0;
	.loc 1 1672 16
	movl	$0, consoleplayer(%rip)	#, consoleplayer
# g_game.c:1673: 	D_AdvanceDemo (); 
	.loc 1 1673 2
	call	D_AdvanceDemo@PLT	#
# g_game.c:1674: 	return true; 
	.loc 1 1674 9
	movl	$1, %eax	#, _23
	jmp	.L287	#
.L284:
# g_game.c:1677:     if (demorecording) 
	.loc 1 1677 9
	movl	demorecording(%rip), %eax	# demorecording, demorecording.333_13
# g_game.c:1677:     if (demorecording) 
	.loc 1 1677 8
	testl	%eax, %eax	# demorecording.333_13
	je	.L288	#,
# g_game.c:1679: 	*demo_p++ = DEMOMARKER; 
	.loc 1 1679 9
	movq	demo_p(%rip), %rax	# demo_p, demo_p.334_14
	leaq	1(%rax), %rdx	#, _16
	movq	%rdx, demo_p(%rip)	# _16, demo_p
# g_game.c:1679: 	*demo_p++ = DEMOMARKER; 
	.loc 1 1679 12
	movb	$-128, (%rax)	#, *demo_p.335_15
# g_game.c:1680: 	M_WriteFile (demoname, demobuffer, demo_p - demobuffer); 
	.loc 1 1680 44
	movq	demo_p(%rip), %rdx	# demo_p, demo_p.336_17
	movq	demobuffer(%rip), %rax	# demobuffer, demobuffer.337_18
	subq	%rax, %rdx	# demobuffer.337_18, _19
# g_game.c:1680: 	M_WriteFile (demoname, demobuffer, demo_p - demobuffer); 
	.loc 1 1680 2
	movq	demobuffer(%rip), %rax	# demobuffer, demobuffer.338_21
	movq	%rax, %rsi	# demobuffer.338_21,
	leaq	demoname(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	M_WriteFile@PLT	#
# g_game.c:1681: 	Z_Free (demobuffer); 
	.loc 1 1681 2
	movq	demobuffer(%rip), %rax	# demobuffer, demobuffer.339_22
	movq	%rax, %rdi	# demobuffer.339_22,
	call	Z_Free@PLT	#
# g_game.c:1682: 	demorecording = false; 
	.loc 1 1682 16
	movl	$0, demorecording(%rip)	#, demorecording
# g_game.c:1683: 	I_Error ("Demo %s recorded",demoname); 
	.loc 1 1683 2
	leaq	demoname(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC22(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L288:
# g_game.c:1686:     return false; 
	.loc 1 1686 12
	movl	$0, %eax	#, _23
.L287:
# g_game.c:1687: } 
	.loc 1 1687 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE37:
	.size	G_CheckDemoStatus, .-G_CheckDemoStatus
	.local	turbomessage.0
	.comm	turbomessage.0,80,32
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "doomdef.h"
	.file 7 "doomtype.h"
	.file 8 "doomdata.h"
	.file 9 "m_fixed.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "tables.h"
	.file 12 "d_think.h"
	.file 13 "info.h"
	.file 14 "p_pspr.h"
	.file 15 "p_mobj.h"
	.file 16 "r_defs.h"
	.file 17 "d_player.h"
	.file 18 "d_ticcmd.h"
	.file 19 "doomstat.h"
	.file 20 "z_zone.h"
	.file 21 "d_event.h"
	.file 22 "m_argv.h"
	.file 23 "p_saveg.h"
	.file 24 "v_video.h"
	.file 25 "sounds.h"
	.file 26 "r_sky.h"
	.file 27 "d_main.h"
	.file 28 "i_system.h"
	.file 29 "w_wad.h"
	.file 30 "/usr/include/stdlib.h"
	.file 31 "m_random.h"
	.file 32 "m_misc.h"
	.file 33 "r_draw.h"
	.file 34 "/usr/include/string.h"
	.file 35 "wi_stuff.h"
	.file 36 "am_map.h"
	.file 37 "s_sound.h"
	.file 38 "p_local.h"
	.file 39 "r_main.h"
	.file 40 "f_finale.h"
	.file 41 "hu_stuff.h"
	.file 42 "st_stuff.h"
	.file 43 "p_tick.h"
	.file 44 "m_menu.h"
	.file 45 "p_setup.h"
	.file 46 "r_data.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4d94
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2f
	.long	.LASF1928
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xb
	.long	0x51
	.long	0x3e
	.uleb128 0x9
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.long	0x2e
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x28
	.long	0x4a
	.uleb128 0x19
	.long	.LASF1874
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xa
	.long	.LASF11
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x15
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x30
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	0x51
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x15
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x15
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0xa
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x8a
	.uleb128 0xa
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x8a
	.uleb128 0x31
	.byte	0x8
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0xb
	.long	0x4a
	.long	0xea
	.uleb128 0x9
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.long	0xef
	.uleb128 0x32
	.uleb128 0x1d
	.long	.LASF125
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x277
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xce
	.byte	0x8
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xce
	.byte	0x10
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xce
	.byte	0x18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xce
	.byte	0x20
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xce
	.byte	0x28
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xce
	.byte	0x30
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xce
	.byte	0x38
	.uleb128 0x3
	.long	.LASF23
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xce
	.byte	0x40
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xce
	.byte	0x48
	.uleb128 0x3
	.long	.LASF25
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xce
	.byte	0x50
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xce
	.byte	0x58
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x290
	.byte	0x60
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x295
	.byte	0x68
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x7e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x7e
	.byte	0x74
	.uleb128 0x3
	.long	.LASF31
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xb4
	.byte	0x78
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x77
	.byte	0x80
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0xa6
	.byte	0x82
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x29a
	.byte	0x83
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x2aa
	.byte	0x88
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xc0
	.byte	0x90
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x2b4
	.byte	0x98
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2be
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF39
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x295
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF40
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0xcc
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF41
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x6b
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF42
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x7e
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF43
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2c3
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xf0
	.uleb128 0x33
	.long	.LASF1929
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x22
	.long	.LASF45
	.uleb128 0x8
	.long	0x28b
	.uleb128 0x8
	.long	0xf0
	.uleb128 0xb
	.long	0x4a
	.long	0x2aa
	.uleb128 0x9
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x283
	.uleb128 0x22
	.long	.LASF46
	.uleb128 0x8
	.long	0x2af
	.uleb128 0x22
	.long	.LASF47
	.uleb128 0x8
	.long	0x2b9
	.uleb128 0xb
	.long	0x4a
	.long	0x2d3
	.uleb128 0x9
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0x277
	.uleb128 0x6
	.long	.LASF114
	.byte	0xa
	.byte	0x97
	.byte	0xe
	.long	0x2d3
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0x21
	.byte	0x6
	.long	0x2f7
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6e
	.byte	0
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.long	0x322
	.uleb128 0x1
	.long	.LASF49
	.byte	0
	.uleb128 0x1
	.long	.LASF50
	.byte	0x1
	.uleb128 0x1
	.long	.LASF51
	.byte	0x2
	.uleb128 0x1
	.long	.LASF52
	.byte	0x3
	.uleb128 0x1
	.long	.LASF53
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x6
	.byte	0x2f
	.byte	0x3
	.long	0x2f7
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0x34
	.byte	0x1
	.long	0x359
	.uleb128 0x1
	.long	.LASF55
	.byte	0
	.uleb128 0x1
	.long	.LASF56
	.byte	0x1
	.uleb128 0x1
	.long	.LASF57
	.byte	0x2
	.uleb128 0x1
	.long	.LASF58
	.byte	0x3
	.uleb128 0x1
	.long	.LASF59
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.long	0x37e
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
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0x6
	.byte	0x85
	.byte	0x3
	.long	0x359
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.long	0x3b5
	.uleb128 0x1
	.long	.LASF65
	.byte	0
	.uleb128 0x1
	.long	.LASF66
	.byte	0x1
	.uleb128 0x1
	.long	.LASF67
	.byte	0x2
	.uleb128 0x1
	.long	.LASF68
	.byte	0x3
	.uleb128 0x1
	.long	.LASF69
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF70
	.byte	0x6
	.byte	0x9a
	.byte	0x3
	.long	0x38a
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.long	0x3f8
	.uleb128 0x1
	.long	.LASF71
	.byte	0
	.uleb128 0x1
	.long	.LASF72
	.byte	0x1
	.uleb128 0x1
	.long	.LASF73
	.byte	0x2
	.uleb128 0x1
	.long	.LASF74
	.byte	0x3
	.uleb128 0x1
	.long	.LASF75
	.byte	0x4
	.uleb128 0x1
	.long	.LASF76
	.byte	0x5
	.uleb128 0x1
	.long	.LASF77
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.long	0x447
	.uleb128 0x1
	.long	.LASF78
	.byte	0
	.uleb128 0x1
	.long	.LASF79
	.byte	0x1
	.uleb128 0x1
	.long	.LASF80
	.byte	0x2
	.uleb128 0x1
	.long	.LASF81
	.byte	0x3
	.uleb128 0x1
	.long	.LASF82
	.byte	0x4
	.uleb128 0x1
	.long	.LASF83
	.byte	0x5
	.uleb128 0x1
	.long	.LASF84
	.byte	0x6
	.uleb128 0x1
	.long	.LASF85
	.byte	0x7
	.uleb128 0x1
	.long	.LASF86
	.byte	0x8
	.uleb128 0x1
	.long	.LASF87
	.byte	0x9
	.uleb128 0x1
	.long	.LASF88
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x6
	.byte	0xc5
	.byte	0x3
	.long	0x3f8
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0xca
	.byte	0x1
	.long	0x484
	.uleb128 0x1
	.long	.LASF90
	.byte	0
	.uleb128 0x1
	.long	.LASF91
	.byte	0x1
	.uleb128 0x1
	.long	.LASF92
	.byte	0x2
	.uleb128 0x1
	.long	.LASF93
	.byte	0x3
	.uleb128 0x1
	.long	.LASF94
	.byte	0x4
	.uleb128 0x1
	.long	.LASF95
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	0x9f
	.byte	0x6
	.byte	0xd7
	.byte	0x1
	.long	0x4bb
	.uleb128 0x1
	.long	.LASF96
	.byte	0
	.uleb128 0x1
	.long	.LASF97
	.byte	0x1
	.uleb128 0x1
	.long	.LASF98
	.byte	0x2
	.uleb128 0x1
	.long	.LASF99
	.byte	0x3
	.uleb128 0x1
	.long	.LASF100
	.byte	0x4
	.uleb128 0x1
	.long	.LASF101
	.byte	0x5
	.uleb128 0x1
	.long	.LASF102
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.long	0x9f
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.long	0x4d4
	.uleb128 0x1
	.long	.LASF103
	.byte	0
	.uleb128 0x1
	.long	.LASF104
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF105
	.byte	0x7
	.byte	0x22
	.byte	0x1c
	.long	0x4bb
	.uleb128 0xa
	.long	.LASF106
	.byte	0x7
	.byte	0x24
	.byte	0x17
	.long	0x98
	.uleb128 0xb
	.long	0xad
	.long	0x4fc
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x542
	.uleb128 0xe
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0xad
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0xad
	.byte	0x2
	.uleb128 0x3
	.long	.LASF107
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0xad
	.byte	0x4
	.uleb128 0x3
	.long	.LASF108
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0xad
	.byte	0x6
	.uleb128 0x3
	.long	.LASF109
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0xad
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF110
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x4fc
	.uleb128 0xa
	.long	.LASF111
	.byte	0x9
	.byte	0x26
	.byte	0xd
	.long	0x7e
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.long	.LASF112
	.uleb128 0x15
	.byte	0x8
	.byte	0x4
	.long	.LASF113
	.uleb128 0xb
	.long	0x54e
	.long	0x579
	.uleb128 0x29
	.long	0x43
	.value	0x27ff
	.byte	0
	.uleb128 0x6
	.long	.LASF115
	.byte	0xb
	.byte	0x3a
	.byte	0x12
	.long	0x568
	.uleb128 0x6
	.long	.LASF116
	.byte	0xb
	.byte	0x3d
	.byte	0x12
	.long	0x591
	.uleb128 0x8
	.long	0x54e
	.uleb128 0xa
	.long	.LASF117
	.byte	0xb
	.byte	0x4e
	.byte	0x12
	.long	0x9f
	.uleb128 0xa
	.long	.LASF118
	.byte	0xc
	.byte	0x29
	.byte	0x11
	.long	0x5ae
	.uleb128 0x8
	.long	0x5b3
	.uleb128 0x34
	.long	0x5ba
	.uleb128 0x23
	.byte	0
	.uleb128 0xa
	.long	.LASF119
	.byte	0xc
	.byte	0x2a
	.byte	0x11
	.long	0x5c6
	.uleb128 0x8
	.long	0x5cb
	.uleb128 0x2a
	.long	0x5d6
	.uleb128 0x4
	.long	0xcc
	.byte	0
	.uleb128 0xa
	.long	.LASF120
	.byte	0xc
	.byte	0x2b
	.byte	0x11
	.long	0x5e2
	.uleb128 0x8
	.long	0x5e7
	.uleb128 0x2a
	.long	0x5f7
	.uleb128 0x4
	.long	0xcc
	.uleb128 0x4
	.long	0xcc
	.byte	0
	.uleb128 0x35
	.byte	0x8
	.byte	0xc
	.byte	0x2d
	.byte	0x9
	.long	0x621
	.uleb128 0x2b
	.long	.LASF121
	.byte	0x2f
	.long	0x5ba
	.uleb128 0x36
	.string	"acv"
	.byte	0xc
	.byte	0x30
	.byte	0xd
	.long	0x5a2
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x31
	.long	0x5d6
	.byte	0
	.uleb128 0xa
	.long	.LASF123
	.byte	0xc
	.byte	0x33
	.byte	0x3
	.long	0x5f7
	.uleb128 0xa
	.long	.LASF124
	.byte	0xc
	.byte	0x3c
	.byte	0x14
	.long	0x621
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x18
	.byte	0xc
	.byte	0x40
	.byte	0x10
	.long	0x66e
	.uleb128 0x3
	.long	.LASF127
	.byte	0xc
	.byte	0x42
	.byte	0x17
	.long	0x66e
	.byte	0
	.uleb128 0x3
	.long	.LASF128
	.byte	0xc
	.byte	0x43
	.byte	0x17
	.long	0x66e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF129
	.byte	0xc
	.byte	0x44
	.byte	0xe
	.long	0x62d
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x639
	.uleb128 0xa
	.long	.LASF130
	.byte	0xc
	.byte	0x46
	.byte	0x3
	.long	0x639
	.uleb128 0x10
	.long	0x9f
	.byte	0xd
	.byte	0x1f
	.byte	0x1
	.long	0x9ce
	.uleb128 0x1
	.long	.LASF131
	.byte	0
	.uleb128 0x1
	.long	.LASF132
	.byte	0x1
	.uleb128 0x1
	.long	.LASF133
	.byte	0x2
	.uleb128 0x1
	.long	.LASF134
	.byte	0x3
	.uleb128 0x1
	.long	.LASF135
	.byte	0x4
	.uleb128 0x1
	.long	.LASF136
	.byte	0x5
	.uleb128 0x1
	.long	.LASF137
	.byte	0x6
	.uleb128 0x1
	.long	.LASF138
	.byte	0x7
	.uleb128 0x1
	.long	.LASF139
	.byte	0x8
	.uleb128 0x1
	.long	.LASF140
	.byte	0x9
	.uleb128 0x1
	.long	.LASF141
	.byte	0xa
	.uleb128 0x1
	.long	.LASF142
	.byte	0xb
	.uleb128 0x1
	.long	.LASF143
	.byte	0xc
	.uleb128 0x1
	.long	.LASF144
	.byte	0xd
	.uleb128 0x1
	.long	.LASF145
	.byte	0xe
	.uleb128 0x1
	.long	.LASF146
	.byte	0xf
	.uleb128 0x1
	.long	.LASF147
	.byte	0x10
	.uleb128 0x1
	.long	.LASF148
	.byte	0x11
	.uleb128 0x1
	.long	.LASF149
	.byte	0x12
	.uleb128 0x1
	.long	.LASF150
	.byte	0x13
	.uleb128 0x1
	.long	.LASF151
	.byte	0x14
	.uleb128 0x1
	.long	.LASF152
	.byte	0x15
	.uleb128 0x1
	.long	.LASF153
	.byte	0x16
	.uleb128 0x1
	.long	.LASF154
	.byte	0x17
	.uleb128 0x1
	.long	.LASF155
	.byte	0x18
	.uleb128 0x1
	.long	.LASF156
	.byte	0x19
	.uleb128 0x1
	.long	.LASF157
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF158
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF159
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF160
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF161
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF162
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF163
	.byte	0x20
	.uleb128 0x1
	.long	.LASF164
	.byte	0x21
	.uleb128 0x1
	.long	.LASF165
	.byte	0x22
	.uleb128 0x1
	.long	.LASF166
	.byte	0x23
	.uleb128 0x1
	.long	.LASF167
	.byte	0x24
	.uleb128 0x1
	.long	.LASF168
	.byte	0x25
	.uleb128 0x1
	.long	.LASF169
	.byte	0x26
	.uleb128 0x1
	.long	.LASF170
	.byte	0x27
	.uleb128 0x1
	.long	.LASF171
	.byte	0x28
	.uleb128 0x1
	.long	.LASF172
	.byte	0x29
	.uleb128 0x1
	.long	.LASF173
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF174
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF175
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF176
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF177
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF178
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF179
	.byte	0x30
	.uleb128 0x1
	.long	.LASF180
	.byte	0x31
	.uleb128 0x1
	.long	.LASF181
	.byte	0x32
	.uleb128 0x1
	.long	.LASF182
	.byte	0x33
	.uleb128 0x1
	.long	.LASF183
	.byte	0x34
	.uleb128 0x1
	.long	.LASF184
	.byte	0x35
	.uleb128 0x1
	.long	.LASF185
	.byte	0x36
	.uleb128 0x1
	.long	.LASF186
	.byte	0x37
	.uleb128 0x1
	.long	.LASF187
	.byte	0x38
	.uleb128 0x1
	.long	.LASF188
	.byte	0x39
	.uleb128 0x1
	.long	.LASF189
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF190
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF191
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF192
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF193
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF194
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF195
	.byte	0x40
	.uleb128 0x1
	.long	.LASF196
	.byte	0x41
	.uleb128 0x1
	.long	.LASF197
	.byte	0x42
	.uleb128 0x1
	.long	.LASF198
	.byte	0x43
	.uleb128 0x1
	.long	.LASF199
	.byte	0x44
	.uleb128 0x1
	.long	.LASF200
	.byte	0x45
	.uleb128 0x1
	.long	.LASF201
	.byte	0x46
	.uleb128 0x1
	.long	.LASF202
	.byte	0x47
	.uleb128 0x1
	.long	.LASF203
	.byte	0x48
	.uleb128 0x1
	.long	.LASF204
	.byte	0x49
	.uleb128 0x1
	.long	.LASF205
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF206
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF207
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF208
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF209
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF210
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF211
	.byte	0x50
	.uleb128 0x1
	.long	.LASF212
	.byte	0x51
	.uleb128 0x1
	.long	.LASF213
	.byte	0x52
	.uleb128 0x1
	.long	.LASF214
	.byte	0x53
	.uleb128 0x1
	.long	.LASF215
	.byte	0x54
	.uleb128 0x1
	.long	.LASF216
	.byte	0x55
	.uleb128 0x1
	.long	.LASF217
	.byte	0x56
	.uleb128 0x1
	.long	.LASF218
	.byte	0x57
	.uleb128 0x1
	.long	.LASF219
	.byte	0x58
	.uleb128 0x1
	.long	.LASF220
	.byte	0x59
	.uleb128 0x1
	.long	.LASF221
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF222
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF223
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF224
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF225
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF226
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF227
	.byte	0x60
	.uleb128 0x1
	.long	.LASF228
	.byte	0x61
	.uleb128 0x1
	.long	.LASF229
	.byte	0x62
	.uleb128 0x1
	.long	.LASF230
	.byte	0x63
	.uleb128 0x1
	.long	.LASF231
	.byte	0x64
	.uleb128 0x1
	.long	.LASF232
	.byte	0x65
	.uleb128 0x1
	.long	.LASF233
	.byte	0x66
	.uleb128 0x1
	.long	.LASF234
	.byte	0x67
	.uleb128 0x1
	.long	.LASF235
	.byte	0x68
	.uleb128 0x1
	.long	.LASF236
	.byte	0x69
	.uleb128 0x1
	.long	.LASF237
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF238
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF239
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF240
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF241
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF242
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF243
	.byte	0x70
	.uleb128 0x1
	.long	.LASF244
	.byte	0x71
	.uleb128 0x1
	.long	.LASF245
	.byte	0x72
	.uleb128 0x1
	.long	.LASF246
	.byte	0x73
	.uleb128 0x1
	.long	.LASF247
	.byte	0x74
	.uleb128 0x1
	.long	.LASF248
	.byte	0x75
	.uleb128 0x1
	.long	.LASF249
	.byte	0x76
	.uleb128 0x1
	.long	.LASF250
	.byte	0x77
	.uleb128 0x1
	.long	.LASF251
	.byte	0x78
	.uleb128 0x1
	.long	.LASF252
	.byte	0x79
	.uleb128 0x1
	.long	.LASF253
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF254
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF255
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF256
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF257
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF258
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF259
	.byte	0x80
	.uleb128 0x1
	.long	.LASF260
	.byte	0x81
	.uleb128 0x1
	.long	.LASF261
	.byte	0x82
	.uleb128 0x1
	.long	.LASF262
	.byte	0x83
	.uleb128 0x1
	.long	.LASF263
	.byte	0x84
	.uleb128 0x1
	.long	.LASF264
	.byte	0x85
	.uleb128 0x1
	.long	.LASF265
	.byte	0x86
	.uleb128 0x1
	.long	.LASF266
	.byte	0x87
	.uleb128 0x1
	.long	.LASF267
	.byte	0x88
	.uleb128 0x1
	.long	.LASF268
	.byte	0x89
	.uleb128 0x1
	.long	.LASF269
	.byte	0x8a
	.byte	0
	.uleb128 0xa
	.long	.LASF270
	.byte	0xd
	.byte	0xac
	.byte	0x3
	.long	0x67f
	.uleb128 0x10
	.long	0x9f
	.byte	0xd
	.byte	0xaf
	.byte	0x1
	.long	0x235f
	.uleb128 0x1
	.long	.LASF271
	.byte	0
	.uleb128 0x1
	.long	.LASF272
	.byte	0x1
	.uleb128 0x1
	.long	.LASF273
	.byte	0x2
	.uleb128 0x1
	.long	.LASF274
	.byte	0x3
	.uleb128 0x1
	.long	.LASF275
	.byte	0x4
	.uleb128 0x1
	.long	.LASF276
	.byte	0x5
	.uleb128 0x1
	.long	.LASF277
	.byte	0x6
	.uleb128 0x1
	.long	.LASF278
	.byte	0x7
	.uleb128 0x1
	.long	.LASF279
	.byte	0x8
	.uleb128 0x1
	.long	.LASF280
	.byte	0x9
	.uleb128 0x1
	.long	.LASF281
	.byte	0xa
	.uleb128 0x1
	.long	.LASF282
	.byte	0xb
	.uleb128 0x1
	.long	.LASF283
	.byte	0xc
	.uleb128 0x1
	.long	.LASF284
	.byte	0xd
	.uleb128 0x1
	.long	.LASF285
	.byte	0xe
	.uleb128 0x1
	.long	.LASF286
	.byte	0xf
	.uleb128 0x1
	.long	.LASF287
	.byte	0x10
	.uleb128 0x1
	.long	.LASF288
	.byte	0x11
	.uleb128 0x1
	.long	.LASF289
	.byte	0x12
	.uleb128 0x1
	.long	.LASF290
	.byte	0x13
	.uleb128 0x1
	.long	.LASF291
	.byte	0x14
	.uleb128 0x1
	.long	.LASF292
	.byte	0x15
	.uleb128 0x1
	.long	.LASF293
	.byte	0x16
	.uleb128 0x1
	.long	.LASF294
	.byte	0x17
	.uleb128 0x1
	.long	.LASF295
	.byte	0x18
	.uleb128 0x1
	.long	.LASF296
	.byte	0x19
	.uleb128 0x1
	.long	.LASF297
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF298
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF299
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF300
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF301
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF302
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF303
	.byte	0x20
	.uleb128 0x1
	.long	.LASF304
	.byte	0x21
	.uleb128 0x1
	.long	.LASF305
	.byte	0x22
	.uleb128 0x1
	.long	.LASF306
	.byte	0x23
	.uleb128 0x1
	.long	.LASF307
	.byte	0x24
	.uleb128 0x1
	.long	.LASF308
	.byte	0x25
	.uleb128 0x1
	.long	.LASF309
	.byte	0x26
	.uleb128 0x1
	.long	.LASF310
	.byte	0x27
	.uleb128 0x1
	.long	.LASF311
	.byte	0x28
	.uleb128 0x1
	.long	.LASF312
	.byte	0x29
	.uleb128 0x1
	.long	.LASF313
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF314
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF315
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF316
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF317
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF318
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF319
	.byte	0x30
	.uleb128 0x1
	.long	.LASF320
	.byte	0x31
	.uleb128 0x1
	.long	.LASF321
	.byte	0x32
	.uleb128 0x1
	.long	.LASF322
	.byte	0x33
	.uleb128 0x1
	.long	.LASF323
	.byte	0x34
	.uleb128 0x1
	.long	.LASF324
	.byte	0x35
	.uleb128 0x1
	.long	.LASF325
	.byte	0x36
	.uleb128 0x1
	.long	.LASF326
	.byte	0x37
	.uleb128 0x1
	.long	.LASF327
	.byte	0x38
	.uleb128 0x1
	.long	.LASF328
	.byte	0x39
	.uleb128 0x1
	.long	.LASF329
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF330
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF331
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF332
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF333
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF334
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF335
	.byte	0x40
	.uleb128 0x1
	.long	.LASF336
	.byte	0x41
	.uleb128 0x1
	.long	.LASF337
	.byte	0x42
	.uleb128 0x1
	.long	.LASF338
	.byte	0x43
	.uleb128 0x1
	.long	.LASF339
	.byte	0x44
	.uleb128 0x1
	.long	.LASF340
	.byte	0x45
	.uleb128 0x1
	.long	.LASF341
	.byte	0x46
	.uleb128 0x1
	.long	.LASF342
	.byte	0x47
	.uleb128 0x1
	.long	.LASF343
	.byte	0x48
	.uleb128 0x1
	.long	.LASF344
	.byte	0x49
	.uleb128 0x1
	.long	.LASF345
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF346
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF347
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF348
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF349
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF350
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF351
	.byte	0x50
	.uleb128 0x1
	.long	.LASF352
	.byte	0x51
	.uleb128 0x1
	.long	.LASF353
	.byte	0x52
	.uleb128 0x1
	.long	.LASF354
	.byte	0x53
	.uleb128 0x1
	.long	.LASF355
	.byte	0x54
	.uleb128 0x1
	.long	.LASF356
	.byte	0x55
	.uleb128 0x1
	.long	.LASF357
	.byte	0x56
	.uleb128 0x1
	.long	.LASF358
	.byte	0x57
	.uleb128 0x1
	.long	.LASF359
	.byte	0x58
	.uleb128 0x1
	.long	.LASF360
	.byte	0x59
	.uleb128 0x1
	.long	.LASF361
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF362
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF363
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF364
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF365
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF366
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF367
	.byte	0x60
	.uleb128 0x1
	.long	.LASF368
	.byte	0x61
	.uleb128 0x1
	.long	.LASF369
	.byte	0x62
	.uleb128 0x1
	.long	.LASF370
	.byte	0x63
	.uleb128 0x1
	.long	.LASF371
	.byte	0x64
	.uleb128 0x1
	.long	.LASF372
	.byte	0x65
	.uleb128 0x1
	.long	.LASF373
	.byte	0x66
	.uleb128 0x1
	.long	.LASF374
	.byte	0x67
	.uleb128 0x1
	.long	.LASF375
	.byte	0x68
	.uleb128 0x1
	.long	.LASF376
	.byte	0x69
	.uleb128 0x1
	.long	.LASF377
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF378
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF379
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF380
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF381
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF382
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF383
	.byte	0x70
	.uleb128 0x1
	.long	.LASF384
	.byte	0x71
	.uleb128 0x1
	.long	.LASF385
	.byte	0x72
	.uleb128 0x1
	.long	.LASF386
	.byte	0x73
	.uleb128 0x1
	.long	.LASF387
	.byte	0x74
	.uleb128 0x1
	.long	.LASF388
	.byte	0x75
	.uleb128 0x1
	.long	.LASF389
	.byte	0x76
	.uleb128 0x1
	.long	.LASF390
	.byte	0x77
	.uleb128 0x1
	.long	.LASF391
	.byte	0x78
	.uleb128 0x1
	.long	.LASF392
	.byte	0x79
	.uleb128 0x1
	.long	.LASF393
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF394
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF395
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF396
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF397
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF398
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF399
	.byte	0x80
	.uleb128 0x1
	.long	.LASF400
	.byte	0x81
	.uleb128 0x1
	.long	.LASF401
	.byte	0x82
	.uleb128 0x1
	.long	.LASF402
	.byte	0x83
	.uleb128 0x1
	.long	.LASF403
	.byte	0x84
	.uleb128 0x1
	.long	.LASF404
	.byte	0x85
	.uleb128 0x1
	.long	.LASF405
	.byte	0x86
	.uleb128 0x1
	.long	.LASF406
	.byte	0x87
	.uleb128 0x1
	.long	.LASF407
	.byte	0x88
	.uleb128 0x1
	.long	.LASF408
	.byte	0x89
	.uleb128 0x1
	.long	.LASF409
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF410
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF411
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF412
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF413
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF414
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF415
	.byte	0x90
	.uleb128 0x1
	.long	.LASF416
	.byte	0x91
	.uleb128 0x1
	.long	.LASF417
	.byte	0x92
	.uleb128 0x1
	.long	.LASF418
	.byte	0x93
	.uleb128 0x1
	.long	.LASF419
	.byte	0x94
	.uleb128 0x1
	.long	.LASF420
	.byte	0x95
	.uleb128 0x1
	.long	.LASF421
	.byte	0x96
	.uleb128 0x1
	.long	.LASF422
	.byte	0x97
	.uleb128 0x1
	.long	.LASF423
	.byte	0x98
	.uleb128 0x1
	.long	.LASF424
	.byte	0x99
	.uleb128 0x1
	.long	.LASF425
	.byte	0x9a
	.uleb128 0x1
	.long	.LASF426
	.byte	0x9b
	.uleb128 0x1
	.long	.LASF427
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF428
	.byte	0x9d
	.uleb128 0x1
	.long	.LASF429
	.byte	0x9e
	.uleb128 0x1
	.long	.LASF430
	.byte	0x9f
	.uleb128 0x1
	.long	.LASF431
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF432
	.byte	0xa1
	.uleb128 0x1
	.long	.LASF433
	.byte	0xa2
	.uleb128 0x1
	.long	.LASF434
	.byte	0xa3
	.uleb128 0x1
	.long	.LASF435
	.byte	0xa4
	.uleb128 0x1
	.long	.LASF436
	.byte	0xa5
	.uleb128 0x1
	.long	.LASF437
	.byte	0xa6
	.uleb128 0x1
	.long	.LASF438
	.byte	0xa7
	.uleb128 0x1
	.long	.LASF439
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF440
	.byte	0xa9
	.uleb128 0x1
	.long	.LASF441
	.byte	0xaa
	.uleb128 0x1
	.long	.LASF442
	.byte	0xab
	.uleb128 0x1
	.long	.LASF443
	.byte	0xac
	.uleb128 0x1
	.long	.LASF444
	.byte	0xad
	.uleb128 0x1
	.long	.LASF445
	.byte	0xae
	.uleb128 0x1
	.long	.LASF446
	.byte	0xaf
	.uleb128 0x1
	.long	.LASF447
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF448
	.byte	0xb1
	.uleb128 0x1
	.long	.LASF449
	.byte	0xb2
	.uleb128 0x1
	.long	.LASF450
	.byte	0xb3
	.uleb128 0x1
	.long	.LASF451
	.byte	0xb4
	.uleb128 0x1
	.long	.LASF452
	.byte	0xb5
	.uleb128 0x1
	.long	.LASF453
	.byte	0xb6
	.uleb128 0x1
	.long	.LASF454
	.byte	0xb7
	.uleb128 0x1
	.long	.LASF455
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF456
	.byte	0xb9
	.uleb128 0x1
	.long	.LASF457
	.byte	0xba
	.uleb128 0x1
	.long	.LASF458
	.byte	0xbb
	.uleb128 0x1
	.long	.LASF459
	.byte	0xbc
	.uleb128 0x1
	.long	.LASF460
	.byte	0xbd
	.uleb128 0x1
	.long	.LASF461
	.byte	0xbe
	.uleb128 0x1
	.long	.LASF462
	.byte	0xbf
	.uleb128 0x1
	.long	.LASF463
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF464
	.byte	0xc1
	.uleb128 0x1
	.long	.LASF465
	.byte	0xc2
	.uleb128 0x1
	.long	.LASF466
	.byte	0xc3
	.uleb128 0x1
	.long	.LASF467
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF468
	.byte	0xc5
	.uleb128 0x1
	.long	.LASF469
	.byte	0xc6
	.uleb128 0x1
	.long	.LASF470
	.byte	0xc7
	.uleb128 0x1
	.long	.LASF471
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF472
	.byte	0xc9
	.uleb128 0x1
	.long	.LASF473
	.byte	0xca
	.uleb128 0x1
	.long	.LASF474
	.byte	0xcb
	.uleb128 0x1
	.long	.LASF475
	.byte	0xcc
	.uleb128 0x1
	.long	.LASF476
	.byte	0xcd
	.uleb128 0x1
	.long	.LASF477
	.byte	0xce
	.uleb128 0x1
	.long	.LASF478
	.byte	0xcf
	.uleb128 0x1
	.long	.LASF479
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF480
	.byte	0xd1
	.uleb128 0x1
	.long	.LASF481
	.byte	0xd2
	.uleb128 0x1
	.long	.LASF482
	.byte	0xd3
	.uleb128 0x1
	.long	.LASF483
	.byte	0xd4
	.uleb128 0x1
	.long	.LASF484
	.byte	0xd5
	.uleb128 0x1
	.long	.LASF485
	.byte	0xd6
	.uleb128 0x1
	.long	.LASF486
	.byte	0xd7
	.uleb128 0x1
	.long	.LASF487
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF488
	.byte	0xd9
	.uleb128 0x1
	.long	.LASF489
	.byte	0xda
	.uleb128 0x1
	.long	.LASF490
	.byte	0xdb
	.uleb128 0x1
	.long	.LASF491
	.byte	0xdc
	.uleb128 0x1
	.long	.LASF492
	.byte	0xdd
	.uleb128 0x1
	.long	.LASF493
	.byte	0xde
	.uleb128 0x1
	.long	.LASF494
	.byte	0xdf
	.uleb128 0x1
	.long	.LASF495
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF496
	.byte	0xe1
	.uleb128 0x1
	.long	.LASF497
	.byte	0xe2
	.uleb128 0x1
	.long	.LASF498
	.byte	0xe3
	.uleb128 0x1
	.long	.LASF499
	.byte	0xe4
	.uleb128 0x1
	.long	.LASF500
	.byte	0xe5
	.uleb128 0x1
	.long	.LASF501
	.byte	0xe6
	.uleb128 0x1
	.long	.LASF502
	.byte	0xe7
	.uleb128 0x1
	.long	.LASF503
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF504
	.byte	0xe9
	.uleb128 0x1
	.long	.LASF505
	.byte	0xea
	.uleb128 0x1
	.long	.LASF506
	.byte	0xeb
	.uleb128 0x1
	.long	.LASF507
	.byte	0xec
	.uleb128 0x1
	.long	.LASF508
	.byte	0xed
	.uleb128 0x1
	.long	.LASF509
	.byte	0xee
	.uleb128 0x1
	.long	.LASF510
	.byte	0xef
	.uleb128 0x1
	.long	.LASF511
	.byte	0xf0
	.uleb128 0x1
	.long	.LASF512
	.byte	0xf1
	.uleb128 0x1
	.long	.LASF513
	.byte	0xf2
	.uleb128 0x1
	.long	.LASF514
	.byte	0xf3
	.uleb128 0x1
	.long	.LASF515
	.byte	0xf4
	.uleb128 0x1
	.long	.LASF516
	.byte	0xf5
	.uleb128 0x1
	.long	.LASF517
	.byte	0xf6
	.uleb128 0x1
	.long	.LASF518
	.byte	0xf7
	.uleb128 0x1
	.long	.LASF519
	.byte	0xf8
	.uleb128 0x1
	.long	.LASF520
	.byte	0xf9
	.uleb128 0x1
	.long	.LASF521
	.byte	0xfa
	.uleb128 0x1
	.long	.LASF522
	.byte	0xfb
	.uleb128 0x1
	.long	.LASF523
	.byte	0xfc
	.uleb128 0x1
	.long	.LASF524
	.byte	0xfd
	.uleb128 0x1
	.long	.LASF525
	.byte	0xfe
	.uleb128 0x1
	.long	.LASF526
	.byte	0xff
	.uleb128 0x2
	.long	.LASF527
	.value	0x100
	.uleb128 0x2
	.long	.LASF528
	.value	0x101
	.uleb128 0x2
	.long	.LASF529
	.value	0x102
	.uleb128 0x2
	.long	.LASF530
	.value	0x103
	.uleb128 0x2
	.long	.LASF531
	.value	0x104
	.uleb128 0x2
	.long	.LASF532
	.value	0x105
	.uleb128 0x2
	.long	.LASF533
	.value	0x106
	.uleb128 0x2
	.long	.LASF534
	.value	0x107
	.uleb128 0x2
	.long	.LASF535
	.value	0x108
	.uleb128 0x2
	.long	.LASF536
	.value	0x109
	.uleb128 0x2
	.long	.LASF537
	.value	0x10a
	.uleb128 0x2
	.long	.LASF538
	.value	0x10b
	.uleb128 0x2
	.long	.LASF539
	.value	0x10c
	.uleb128 0x2
	.long	.LASF540
	.value	0x10d
	.uleb128 0x2
	.long	.LASF541
	.value	0x10e
	.uleb128 0x2
	.long	.LASF542
	.value	0x10f
	.uleb128 0x2
	.long	.LASF543
	.value	0x110
	.uleb128 0x2
	.long	.LASF544
	.value	0x111
	.uleb128 0x2
	.long	.LASF545
	.value	0x112
	.uleb128 0x2
	.long	.LASF546
	.value	0x113
	.uleb128 0x2
	.long	.LASF547
	.value	0x114
	.uleb128 0x2
	.long	.LASF548
	.value	0x115
	.uleb128 0x2
	.long	.LASF549
	.value	0x116
	.uleb128 0x2
	.long	.LASF550
	.value	0x117
	.uleb128 0x2
	.long	.LASF551
	.value	0x118
	.uleb128 0x2
	.long	.LASF552
	.value	0x119
	.uleb128 0x2
	.long	.LASF553
	.value	0x11a
	.uleb128 0x2
	.long	.LASF554
	.value	0x11b
	.uleb128 0x2
	.long	.LASF555
	.value	0x11c
	.uleb128 0x2
	.long	.LASF556
	.value	0x11d
	.uleb128 0x2
	.long	.LASF557
	.value	0x11e
	.uleb128 0x2
	.long	.LASF558
	.value	0x11f
	.uleb128 0x2
	.long	.LASF559
	.value	0x120
	.uleb128 0x2
	.long	.LASF560
	.value	0x121
	.uleb128 0x2
	.long	.LASF561
	.value	0x122
	.uleb128 0x2
	.long	.LASF562
	.value	0x123
	.uleb128 0x2
	.long	.LASF563
	.value	0x124
	.uleb128 0x2
	.long	.LASF564
	.value	0x125
	.uleb128 0x2
	.long	.LASF565
	.value	0x126
	.uleb128 0x2
	.long	.LASF566
	.value	0x127
	.uleb128 0x2
	.long	.LASF567
	.value	0x128
	.uleb128 0x2
	.long	.LASF568
	.value	0x129
	.uleb128 0x2
	.long	.LASF569
	.value	0x12a
	.uleb128 0x2
	.long	.LASF570
	.value	0x12b
	.uleb128 0x2
	.long	.LASF571
	.value	0x12c
	.uleb128 0x2
	.long	.LASF572
	.value	0x12d
	.uleb128 0x2
	.long	.LASF573
	.value	0x12e
	.uleb128 0x2
	.long	.LASF574
	.value	0x12f
	.uleb128 0x2
	.long	.LASF575
	.value	0x130
	.uleb128 0x2
	.long	.LASF576
	.value	0x131
	.uleb128 0x2
	.long	.LASF577
	.value	0x132
	.uleb128 0x2
	.long	.LASF578
	.value	0x133
	.uleb128 0x2
	.long	.LASF579
	.value	0x134
	.uleb128 0x2
	.long	.LASF580
	.value	0x135
	.uleb128 0x2
	.long	.LASF581
	.value	0x136
	.uleb128 0x2
	.long	.LASF582
	.value	0x137
	.uleb128 0x2
	.long	.LASF583
	.value	0x138
	.uleb128 0x2
	.long	.LASF584
	.value	0x139
	.uleb128 0x2
	.long	.LASF585
	.value	0x13a
	.uleb128 0x2
	.long	.LASF586
	.value	0x13b
	.uleb128 0x2
	.long	.LASF587
	.value	0x13c
	.uleb128 0x2
	.long	.LASF588
	.value	0x13d
	.uleb128 0x2
	.long	.LASF589
	.value	0x13e
	.uleb128 0x2
	.long	.LASF590
	.value	0x13f
	.uleb128 0x2
	.long	.LASF591
	.value	0x140
	.uleb128 0x2
	.long	.LASF592
	.value	0x141
	.uleb128 0x2
	.long	.LASF593
	.value	0x142
	.uleb128 0x2
	.long	.LASF594
	.value	0x143
	.uleb128 0x2
	.long	.LASF595
	.value	0x144
	.uleb128 0x2
	.long	.LASF596
	.value	0x145
	.uleb128 0x2
	.long	.LASF597
	.value	0x146
	.uleb128 0x2
	.long	.LASF598
	.value	0x147
	.uleb128 0x2
	.long	.LASF599
	.value	0x148
	.uleb128 0x2
	.long	.LASF600
	.value	0x149
	.uleb128 0x2
	.long	.LASF601
	.value	0x14a
	.uleb128 0x2
	.long	.LASF602
	.value	0x14b
	.uleb128 0x2
	.long	.LASF603
	.value	0x14c
	.uleb128 0x2
	.long	.LASF604
	.value	0x14d
	.uleb128 0x2
	.long	.LASF605
	.value	0x14e
	.uleb128 0x2
	.long	.LASF606
	.value	0x14f
	.uleb128 0x2
	.long	.LASF607
	.value	0x150
	.uleb128 0x2
	.long	.LASF608
	.value	0x151
	.uleb128 0x2
	.long	.LASF609
	.value	0x152
	.uleb128 0x2
	.long	.LASF610
	.value	0x153
	.uleb128 0x2
	.long	.LASF611
	.value	0x154
	.uleb128 0x2
	.long	.LASF612
	.value	0x155
	.uleb128 0x2
	.long	.LASF613
	.value	0x156
	.uleb128 0x2
	.long	.LASF614
	.value	0x157
	.uleb128 0x2
	.long	.LASF615
	.value	0x158
	.uleb128 0x2
	.long	.LASF616
	.value	0x159
	.uleb128 0x2
	.long	.LASF617
	.value	0x15a
	.uleb128 0x2
	.long	.LASF618
	.value	0x15b
	.uleb128 0x2
	.long	.LASF619
	.value	0x15c
	.uleb128 0x2
	.long	.LASF620
	.value	0x15d
	.uleb128 0x2
	.long	.LASF621
	.value	0x15e
	.uleb128 0x2
	.long	.LASF622
	.value	0x15f
	.uleb128 0x2
	.long	.LASF623
	.value	0x160
	.uleb128 0x2
	.long	.LASF624
	.value	0x161
	.uleb128 0x2
	.long	.LASF625
	.value	0x162
	.uleb128 0x2
	.long	.LASF626
	.value	0x163
	.uleb128 0x2
	.long	.LASF627
	.value	0x164
	.uleb128 0x2
	.long	.LASF628
	.value	0x165
	.uleb128 0x2
	.long	.LASF629
	.value	0x166
	.uleb128 0x2
	.long	.LASF630
	.value	0x167
	.uleb128 0x2
	.long	.LASF631
	.value	0x168
	.uleb128 0x2
	.long	.LASF632
	.value	0x169
	.uleb128 0x2
	.long	.LASF633
	.value	0x16a
	.uleb128 0x2
	.long	.LASF634
	.value	0x16b
	.uleb128 0x2
	.long	.LASF635
	.value	0x16c
	.uleb128 0x2
	.long	.LASF636
	.value	0x16d
	.uleb128 0x2
	.long	.LASF637
	.value	0x16e
	.uleb128 0x2
	.long	.LASF638
	.value	0x16f
	.uleb128 0x2
	.long	.LASF639
	.value	0x170
	.uleb128 0x2
	.long	.LASF640
	.value	0x171
	.uleb128 0x2
	.long	.LASF641
	.value	0x172
	.uleb128 0x2
	.long	.LASF642
	.value	0x173
	.uleb128 0x2
	.long	.LASF643
	.value	0x174
	.uleb128 0x2
	.long	.LASF644
	.value	0x175
	.uleb128 0x2
	.long	.LASF645
	.value	0x176
	.uleb128 0x2
	.long	.LASF646
	.value	0x177
	.uleb128 0x2
	.long	.LASF647
	.value	0x178
	.uleb128 0x2
	.long	.LASF648
	.value	0x179
	.uleb128 0x2
	.long	.LASF649
	.value	0x17a
	.uleb128 0x2
	.long	.LASF650
	.value	0x17b
	.uleb128 0x2
	.long	.LASF651
	.value	0x17c
	.uleb128 0x2
	.long	.LASF652
	.value	0x17d
	.uleb128 0x2
	.long	.LASF653
	.value	0x17e
	.uleb128 0x2
	.long	.LASF654
	.value	0x17f
	.uleb128 0x2
	.long	.LASF655
	.value	0x180
	.uleb128 0x2
	.long	.LASF656
	.value	0x181
	.uleb128 0x2
	.long	.LASF657
	.value	0x182
	.uleb128 0x2
	.long	.LASF658
	.value	0x183
	.uleb128 0x2
	.long	.LASF659
	.value	0x184
	.uleb128 0x2
	.long	.LASF660
	.value	0x185
	.uleb128 0x2
	.long	.LASF661
	.value	0x186
	.uleb128 0x2
	.long	.LASF662
	.value	0x187
	.uleb128 0x2
	.long	.LASF663
	.value	0x188
	.uleb128 0x2
	.long	.LASF664
	.value	0x189
	.uleb128 0x2
	.long	.LASF665
	.value	0x18a
	.uleb128 0x2
	.long	.LASF666
	.value	0x18b
	.uleb128 0x2
	.long	.LASF667
	.value	0x18c
	.uleb128 0x2
	.long	.LASF668
	.value	0x18d
	.uleb128 0x2
	.long	.LASF669
	.value	0x18e
	.uleb128 0x2
	.long	.LASF670
	.value	0x18f
	.uleb128 0x2
	.long	.LASF671
	.value	0x190
	.uleb128 0x2
	.long	.LASF672
	.value	0x191
	.uleb128 0x2
	.long	.LASF673
	.value	0x192
	.uleb128 0x2
	.long	.LASF674
	.value	0x193
	.uleb128 0x2
	.long	.LASF675
	.value	0x194
	.uleb128 0x2
	.long	.LASF676
	.value	0x195
	.uleb128 0x2
	.long	.LASF677
	.value	0x196
	.uleb128 0x2
	.long	.LASF678
	.value	0x197
	.uleb128 0x2
	.long	.LASF679
	.value	0x198
	.uleb128 0x2
	.long	.LASF680
	.value	0x199
	.uleb128 0x2
	.long	.LASF681
	.value	0x19a
	.uleb128 0x2
	.long	.LASF682
	.value	0x19b
	.uleb128 0x2
	.long	.LASF683
	.value	0x19c
	.uleb128 0x2
	.long	.LASF684
	.value	0x19d
	.uleb128 0x2
	.long	.LASF685
	.value	0x19e
	.uleb128 0x2
	.long	.LASF686
	.value	0x19f
	.uleb128 0x2
	.long	.LASF687
	.value	0x1a0
	.uleb128 0x2
	.long	.LASF688
	.value	0x1a1
	.uleb128 0x2
	.long	.LASF689
	.value	0x1a2
	.uleb128 0x2
	.long	.LASF690
	.value	0x1a3
	.uleb128 0x2
	.long	.LASF691
	.value	0x1a4
	.uleb128 0x2
	.long	.LASF692
	.value	0x1a5
	.uleb128 0x2
	.long	.LASF693
	.value	0x1a6
	.uleb128 0x2
	.long	.LASF694
	.value	0x1a7
	.uleb128 0x2
	.long	.LASF695
	.value	0x1a8
	.uleb128 0x2
	.long	.LASF696
	.value	0x1a9
	.uleb128 0x2
	.long	.LASF697
	.value	0x1aa
	.uleb128 0x2
	.long	.LASF698
	.value	0x1ab
	.uleb128 0x2
	.long	.LASF699
	.value	0x1ac
	.uleb128 0x2
	.long	.LASF700
	.value	0x1ad
	.uleb128 0x2
	.long	.LASF701
	.value	0x1ae
	.uleb128 0x2
	.long	.LASF702
	.value	0x1af
	.uleb128 0x2
	.long	.LASF703
	.value	0x1b0
	.uleb128 0x2
	.long	.LASF704
	.value	0x1b1
	.uleb128 0x2
	.long	.LASF705
	.value	0x1b2
	.uleb128 0x2
	.long	.LASF706
	.value	0x1b3
	.uleb128 0x2
	.long	.LASF707
	.value	0x1b4
	.uleb128 0x2
	.long	.LASF708
	.value	0x1b5
	.uleb128 0x2
	.long	.LASF709
	.value	0x1b6
	.uleb128 0x2
	.long	.LASF710
	.value	0x1b7
	.uleb128 0x2
	.long	.LASF711
	.value	0x1b8
	.uleb128 0x2
	.long	.LASF712
	.value	0x1b9
	.uleb128 0x2
	.long	.LASF713
	.value	0x1ba
	.uleb128 0x2
	.long	.LASF714
	.value	0x1bb
	.uleb128 0x2
	.long	.LASF715
	.value	0x1bc
	.uleb128 0x2
	.long	.LASF716
	.value	0x1bd
	.uleb128 0x2
	.long	.LASF717
	.value	0x1be
	.uleb128 0x2
	.long	.LASF718
	.value	0x1bf
	.uleb128 0x2
	.long	.LASF719
	.value	0x1c0
	.uleb128 0x2
	.long	.LASF720
	.value	0x1c1
	.uleb128 0x2
	.long	.LASF721
	.value	0x1c2
	.uleb128 0x2
	.long	.LASF722
	.value	0x1c3
	.uleb128 0x2
	.long	.LASF723
	.value	0x1c4
	.uleb128 0x2
	.long	.LASF724
	.value	0x1c5
	.uleb128 0x2
	.long	.LASF725
	.value	0x1c6
	.uleb128 0x2
	.long	.LASF726
	.value	0x1c7
	.uleb128 0x2
	.long	.LASF727
	.value	0x1c8
	.uleb128 0x2
	.long	.LASF728
	.value	0x1c9
	.uleb128 0x2
	.long	.LASF729
	.value	0x1ca
	.uleb128 0x2
	.long	.LASF730
	.value	0x1cb
	.uleb128 0x2
	.long	.LASF731
	.value	0x1cc
	.uleb128 0x2
	.long	.LASF732
	.value	0x1cd
	.uleb128 0x2
	.long	.LASF733
	.value	0x1ce
	.uleb128 0x2
	.long	.LASF734
	.value	0x1cf
	.uleb128 0x2
	.long	.LASF735
	.value	0x1d0
	.uleb128 0x2
	.long	.LASF736
	.value	0x1d1
	.uleb128 0x2
	.long	.LASF737
	.value	0x1d2
	.uleb128 0x2
	.long	.LASF738
	.value	0x1d3
	.uleb128 0x2
	.long	.LASF739
	.value	0x1d4
	.uleb128 0x2
	.long	.LASF740
	.value	0x1d5
	.uleb128 0x2
	.long	.LASF741
	.value	0x1d6
	.uleb128 0x2
	.long	.LASF742
	.value	0x1d7
	.uleb128 0x2
	.long	.LASF743
	.value	0x1d8
	.uleb128 0x2
	.long	.LASF744
	.value	0x1d9
	.uleb128 0x2
	.long	.LASF745
	.value	0x1da
	.uleb128 0x2
	.long	.LASF746
	.value	0x1db
	.uleb128 0x2
	.long	.LASF747
	.value	0x1dc
	.uleb128 0x2
	.long	.LASF748
	.value	0x1dd
	.uleb128 0x2
	.long	.LASF749
	.value	0x1de
	.uleb128 0x2
	.long	.LASF750
	.value	0x1df
	.uleb128 0x2
	.long	.LASF751
	.value	0x1e0
	.uleb128 0x2
	.long	.LASF752
	.value	0x1e1
	.uleb128 0x2
	.long	.LASF753
	.value	0x1e2
	.uleb128 0x2
	.long	.LASF754
	.value	0x1e3
	.uleb128 0x2
	.long	.LASF755
	.value	0x1e4
	.uleb128 0x2
	.long	.LASF756
	.value	0x1e5
	.uleb128 0x2
	.long	.LASF757
	.value	0x1e6
	.uleb128 0x2
	.long	.LASF758
	.value	0x1e7
	.uleb128 0x2
	.long	.LASF759
	.value	0x1e8
	.uleb128 0x2
	.long	.LASF760
	.value	0x1e9
	.uleb128 0x2
	.long	.LASF761
	.value	0x1ea
	.uleb128 0x2
	.long	.LASF762
	.value	0x1eb
	.uleb128 0x2
	.long	.LASF763
	.value	0x1ec
	.uleb128 0x2
	.long	.LASF764
	.value	0x1ed
	.uleb128 0x2
	.long	.LASF765
	.value	0x1ee
	.uleb128 0x2
	.long	.LASF766
	.value	0x1ef
	.uleb128 0x2
	.long	.LASF767
	.value	0x1f0
	.uleb128 0x2
	.long	.LASF768
	.value	0x1f1
	.uleb128 0x2
	.long	.LASF769
	.value	0x1f2
	.uleb128 0x2
	.long	.LASF770
	.value	0x1f3
	.uleb128 0x2
	.long	.LASF771
	.value	0x1f4
	.uleb128 0x2
	.long	.LASF772
	.value	0x1f5
	.uleb128 0x2
	.long	.LASF773
	.value	0x1f6
	.uleb128 0x2
	.long	.LASF774
	.value	0x1f7
	.uleb128 0x2
	.long	.LASF775
	.value	0x1f8
	.uleb128 0x2
	.long	.LASF776
	.value	0x1f9
	.uleb128 0x2
	.long	.LASF777
	.value	0x1fa
	.uleb128 0x2
	.long	.LASF778
	.value	0x1fb
	.uleb128 0x2
	.long	.LASF779
	.value	0x1fc
	.uleb128 0x2
	.long	.LASF780
	.value	0x1fd
	.uleb128 0x2
	.long	.LASF781
	.value	0x1fe
	.uleb128 0x2
	.long	.LASF782
	.value	0x1ff
	.uleb128 0x2
	.long	.LASF783
	.value	0x200
	.uleb128 0x2
	.long	.LASF784
	.value	0x201
	.uleb128 0x2
	.long	.LASF785
	.value	0x202
	.uleb128 0x2
	.long	.LASF786
	.value	0x203
	.uleb128 0x2
	.long	.LASF787
	.value	0x204
	.uleb128 0x2
	.long	.LASF788
	.value	0x205
	.uleb128 0x2
	.long	.LASF789
	.value	0x206
	.uleb128 0x2
	.long	.LASF790
	.value	0x207
	.uleb128 0x2
	.long	.LASF791
	.value	0x208
	.uleb128 0x2
	.long	.LASF792
	.value	0x209
	.uleb128 0x2
	.long	.LASF793
	.value	0x20a
	.uleb128 0x2
	.long	.LASF794
	.value	0x20b
	.uleb128 0x2
	.long	.LASF795
	.value	0x20c
	.uleb128 0x2
	.long	.LASF796
	.value	0x20d
	.uleb128 0x2
	.long	.LASF797
	.value	0x20e
	.uleb128 0x2
	.long	.LASF798
	.value	0x20f
	.uleb128 0x2
	.long	.LASF799
	.value	0x210
	.uleb128 0x2
	.long	.LASF800
	.value	0x211
	.uleb128 0x2
	.long	.LASF801
	.value	0x212
	.uleb128 0x2
	.long	.LASF802
	.value	0x213
	.uleb128 0x2
	.long	.LASF803
	.value	0x214
	.uleb128 0x2
	.long	.LASF804
	.value	0x215
	.uleb128 0x2
	.long	.LASF805
	.value	0x216
	.uleb128 0x2
	.long	.LASF806
	.value	0x217
	.uleb128 0x2
	.long	.LASF807
	.value	0x218
	.uleb128 0x2
	.long	.LASF808
	.value	0x219
	.uleb128 0x2
	.long	.LASF809
	.value	0x21a
	.uleb128 0x2
	.long	.LASF810
	.value	0x21b
	.uleb128 0x2
	.long	.LASF811
	.value	0x21c
	.uleb128 0x2
	.long	.LASF812
	.value	0x21d
	.uleb128 0x2
	.long	.LASF813
	.value	0x21e
	.uleb128 0x2
	.long	.LASF814
	.value	0x21f
	.uleb128 0x2
	.long	.LASF815
	.value	0x220
	.uleb128 0x2
	.long	.LASF816
	.value	0x221
	.uleb128 0x2
	.long	.LASF817
	.value	0x222
	.uleb128 0x2
	.long	.LASF818
	.value	0x223
	.uleb128 0x2
	.long	.LASF819
	.value	0x224
	.uleb128 0x2
	.long	.LASF820
	.value	0x225
	.uleb128 0x2
	.long	.LASF821
	.value	0x226
	.uleb128 0x2
	.long	.LASF822
	.value	0x227
	.uleb128 0x2
	.long	.LASF823
	.value	0x228
	.uleb128 0x2
	.long	.LASF824
	.value	0x229
	.uleb128 0x2
	.long	.LASF825
	.value	0x22a
	.uleb128 0x2
	.long	.LASF826
	.value	0x22b
	.uleb128 0x2
	.long	.LASF827
	.value	0x22c
	.uleb128 0x2
	.long	.LASF828
	.value	0x22d
	.uleb128 0x2
	.long	.LASF829
	.value	0x22e
	.uleb128 0x2
	.long	.LASF830
	.value	0x22f
	.uleb128 0x2
	.long	.LASF831
	.value	0x230
	.uleb128 0x2
	.long	.LASF832
	.value	0x231
	.uleb128 0x2
	.long	.LASF833
	.value	0x232
	.uleb128 0x2
	.long	.LASF834
	.value	0x233
	.uleb128 0x2
	.long	.LASF835
	.value	0x234
	.uleb128 0x2
	.long	.LASF836
	.value	0x235
	.uleb128 0x2
	.long	.LASF837
	.value	0x236
	.uleb128 0x2
	.long	.LASF838
	.value	0x237
	.uleb128 0x2
	.long	.LASF839
	.value	0x238
	.uleb128 0x2
	.long	.LASF840
	.value	0x239
	.uleb128 0x2
	.long	.LASF841
	.value	0x23a
	.uleb128 0x2
	.long	.LASF842
	.value	0x23b
	.uleb128 0x2
	.long	.LASF843
	.value	0x23c
	.uleb128 0x2
	.long	.LASF844
	.value	0x23d
	.uleb128 0x2
	.long	.LASF845
	.value	0x23e
	.uleb128 0x2
	.long	.LASF846
	.value	0x23f
	.uleb128 0x2
	.long	.LASF847
	.value	0x240
	.uleb128 0x2
	.long	.LASF848
	.value	0x241
	.uleb128 0x2
	.long	.LASF849
	.value	0x242
	.uleb128 0x2
	.long	.LASF850
	.value	0x243
	.uleb128 0x2
	.long	.LASF851
	.value	0x244
	.uleb128 0x2
	.long	.LASF852
	.value	0x245
	.uleb128 0x2
	.long	.LASF853
	.value	0x246
	.uleb128 0x2
	.long	.LASF854
	.value	0x247
	.uleb128 0x2
	.long	.LASF855
	.value	0x248
	.uleb128 0x2
	.long	.LASF856
	.value	0x249
	.uleb128 0x2
	.long	.LASF857
	.value	0x24a
	.uleb128 0x2
	.long	.LASF858
	.value	0x24b
	.uleb128 0x2
	.long	.LASF859
	.value	0x24c
	.uleb128 0x2
	.long	.LASF860
	.value	0x24d
	.uleb128 0x2
	.long	.LASF861
	.value	0x24e
	.uleb128 0x2
	.long	.LASF862
	.value	0x24f
	.uleb128 0x2
	.long	.LASF863
	.value	0x250
	.uleb128 0x2
	.long	.LASF864
	.value	0x251
	.uleb128 0x2
	.long	.LASF865
	.value	0x252
	.uleb128 0x2
	.long	.LASF866
	.value	0x253
	.uleb128 0x2
	.long	.LASF867
	.value	0x254
	.uleb128 0x2
	.long	.LASF868
	.value	0x255
	.uleb128 0x2
	.long	.LASF869
	.value	0x256
	.uleb128 0x2
	.long	.LASF870
	.value	0x257
	.uleb128 0x2
	.long	.LASF871
	.value	0x258
	.uleb128 0x2
	.long	.LASF872
	.value	0x259
	.uleb128 0x2
	.long	.LASF873
	.value	0x25a
	.uleb128 0x2
	.long	.LASF874
	.value	0x25b
	.uleb128 0x2
	.long	.LASF875
	.value	0x25c
	.uleb128 0x2
	.long	.LASF876
	.value	0x25d
	.uleb128 0x2
	.long	.LASF877
	.value	0x25e
	.uleb128 0x2
	.long	.LASF878
	.value	0x25f
	.uleb128 0x2
	.long	.LASF879
	.value	0x260
	.uleb128 0x2
	.long	.LASF880
	.value	0x261
	.uleb128 0x2
	.long	.LASF881
	.value	0x262
	.uleb128 0x2
	.long	.LASF882
	.value	0x263
	.uleb128 0x2
	.long	.LASF883
	.value	0x264
	.uleb128 0x2
	.long	.LASF884
	.value	0x265
	.uleb128 0x2
	.long	.LASF885
	.value	0x266
	.uleb128 0x2
	.long	.LASF886
	.value	0x267
	.uleb128 0x2
	.long	.LASF887
	.value	0x268
	.uleb128 0x2
	.long	.LASF888
	.value	0x269
	.uleb128 0x2
	.long	.LASF889
	.value	0x26a
	.uleb128 0x2
	.long	.LASF890
	.value	0x26b
	.uleb128 0x2
	.long	.LASF891
	.value	0x26c
	.uleb128 0x2
	.long	.LASF892
	.value	0x26d
	.uleb128 0x2
	.long	.LASF893
	.value	0x26e
	.uleb128 0x2
	.long	.LASF894
	.value	0x26f
	.uleb128 0x2
	.long	.LASF895
	.value	0x270
	.uleb128 0x2
	.long	.LASF896
	.value	0x271
	.uleb128 0x2
	.long	.LASF897
	.value	0x272
	.uleb128 0x2
	.long	.LASF898
	.value	0x273
	.uleb128 0x2
	.long	.LASF899
	.value	0x274
	.uleb128 0x2
	.long	.LASF900
	.value	0x275
	.uleb128 0x2
	.long	.LASF901
	.value	0x276
	.uleb128 0x2
	.long	.LASF902
	.value	0x277
	.uleb128 0x2
	.long	.LASF903
	.value	0x278
	.uleb128 0x2
	.long	.LASF904
	.value	0x279
	.uleb128 0x2
	.long	.LASF905
	.value	0x27a
	.uleb128 0x2
	.long	.LASF906
	.value	0x27b
	.uleb128 0x2
	.long	.LASF907
	.value	0x27c
	.uleb128 0x2
	.long	.LASF908
	.value	0x27d
	.uleb128 0x2
	.long	.LASF909
	.value	0x27e
	.uleb128 0x2
	.long	.LASF910
	.value	0x27f
	.uleb128 0x2
	.long	.LASF911
	.value	0x280
	.uleb128 0x2
	.long	.LASF912
	.value	0x281
	.uleb128 0x2
	.long	.LASF913
	.value	0x282
	.uleb128 0x2
	.long	.LASF914
	.value	0x283
	.uleb128 0x2
	.long	.LASF915
	.value	0x284
	.uleb128 0x2
	.long	.LASF916
	.value	0x285
	.uleb128 0x2
	.long	.LASF917
	.value	0x286
	.uleb128 0x2
	.long	.LASF918
	.value	0x287
	.uleb128 0x2
	.long	.LASF919
	.value	0x288
	.uleb128 0x2
	.long	.LASF920
	.value	0x289
	.uleb128 0x2
	.long	.LASF921
	.value	0x28a
	.uleb128 0x2
	.long	.LASF922
	.value	0x28b
	.uleb128 0x2
	.long	.LASF923
	.value	0x28c
	.uleb128 0x2
	.long	.LASF924
	.value	0x28d
	.uleb128 0x2
	.long	.LASF925
	.value	0x28e
	.uleb128 0x2
	.long	.LASF926
	.value	0x28f
	.uleb128 0x2
	.long	.LASF927
	.value	0x290
	.uleb128 0x2
	.long	.LASF928
	.value	0x291
	.uleb128 0x2
	.long	.LASF929
	.value	0x292
	.uleb128 0x2
	.long	.LASF930
	.value	0x293
	.uleb128 0x2
	.long	.LASF931
	.value	0x294
	.uleb128 0x2
	.long	.LASF932
	.value	0x295
	.uleb128 0x2
	.long	.LASF933
	.value	0x296
	.uleb128 0x2
	.long	.LASF934
	.value	0x297
	.uleb128 0x2
	.long	.LASF935
	.value	0x298
	.uleb128 0x2
	.long	.LASF936
	.value	0x299
	.uleb128 0x2
	.long	.LASF937
	.value	0x29a
	.uleb128 0x2
	.long	.LASF938
	.value	0x29b
	.uleb128 0x2
	.long	.LASF939
	.value	0x29c
	.uleb128 0x2
	.long	.LASF940
	.value	0x29d
	.uleb128 0x2
	.long	.LASF941
	.value	0x29e
	.uleb128 0x2
	.long	.LASF942
	.value	0x29f
	.uleb128 0x2
	.long	.LASF943
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF944
	.value	0x2a1
	.uleb128 0x2
	.long	.LASF945
	.value	0x2a2
	.uleb128 0x2
	.long	.LASF946
	.value	0x2a3
	.uleb128 0x2
	.long	.LASF947
	.value	0x2a4
	.uleb128 0x2
	.long	.LASF948
	.value	0x2a5
	.uleb128 0x2
	.long	.LASF949
	.value	0x2a6
	.uleb128 0x2
	.long	.LASF950
	.value	0x2a7
	.uleb128 0x2
	.long	.LASF951
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF952
	.value	0x2a9
	.uleb128 0x2
	.long	.LASF953
	.value	0x2aa
	.uleb128 0x2
	.long	.LASF954
	.value	0x2ab
	.uleb128 0x2
	.long	.LASF955
	.value	0x2ac
	.uleb128 0x2
	.long	.LASF956
	.value	0x2ad
	.uleb128 0x2
	.long	.LASF957
	.value	0x2ae
	.uleb128 0x2
	.long	.LASF958
	.value	0x2af
	.uleb128 0x2
	.long	.LASF959
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF960
	.value	0x2b1
	.uleb128 0x2
	.long	.LASF961
	.value	0x2b2
	.uleb128 0x2
	.long	.LASF962
	.value	0x2b3
	.uleb128 0x2
	.long	.LASF963
	.value	0x2b4
	.uleb128 0x2
	.long	.LASF964
	.value	0x2b5
	.uleb128 0x2
	.long	.LASF965
	.value	0x2b6
	.uleb128 0x2
	.long	.LASF966
	.value	0x2b7
	.uleb128 0x2
	.long	.LASF967
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF968
	.value	0x2b9
	.uleb128 0x2
	.long	.LASF969
	.value	0x2ba
	.uleb128 0x2
	.long	.LASF970
	.value	0x2bb
	.uleb128 0x2
	.long	.LASF971
	.value	0x2bc
	.uleb128 0x2
	.long	.LASF972
	.value	0x2bd
	.uleb128 0x2
	.long	.LASF973
	.value	0x2be
	.uleb128 0x2
	.long	.LASF974
	.value	0x2bf
	.uleb128 0x2
	.long	.LASF975
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF976
	.value	0x2c1
	.uleb128 0x2
	.long	.LASF977
	.value	0x2c2
	.uleb128 0x2
	.long	.LASF978
	.value	0x2c3
	.uleb128 0x2
	.long	.LASF979
	.value	0x2c4
	.uleb128 0x2
	.long	.LASF980
	.value	0x2c5
	.uleb128 0x2
	.long	.LASF981
	.value	0x2c6
	.uleb128 0x2
	.long	.LASF982
	.value	0x2c7
	.uleb128 0x2
	.long	.LASF983
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF984
	.value	0x2c9
	.uleb128 0x2
	.long	.LASF985
	.value	0x2ca
	.uleb128 0x2
	.long	.LASF986
	.value	0x2cb
	.uleb128 0x2
	.long	.LASF987
	.value	0x2cc
	.uleb128 0x2
	.long	.LASF988
	.value	0x2cd
	.uleb128 0x2
	.long	.LASF989
	.value	0x2ce
	.uleb128 0x2
	.long	.LASF990
	.value	0x2cf
	.uleb128 0x2
	.long	.LASF991
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF992
	.value	0x2d1
	.uleb128 0x2
	.long	.LASF993
	.value	0x2d2
	.uleb128 0x2
	.long	.LASF994
	.value	0x2d3
	.uleb128 0x2
	.long	.LASF995
	.value	0x2d4
	.uleb128 0x2
	.long	.LASF996
	.value	0x2d5
	.uleb128 0x2
	.long	.LASF997
	.value	0x2d6
	.uleb128 0x2
	.long	.LASF998
	.value	0x2d7
	.uleb128 0x2
	.long	.LASF999
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF1000
	.value	0x2d9
	.uleb128 0x2
	.long	.LASF1001
	.value	0x2da
	.uleb128 0x2
	.long	.LASF1002
	.value	0x2db
	.uleb128 0x2
	.long	.LASF1003
	.value	0x2dc
	.uleb128 0x2
	.long	.LASF1004
	.value	0x2dd
	.uleb128 0x2
	.long	.LASF1005
	.value	0x2de
	.uleb128 0x2
	.long	.LASF1006
	.value	0x2df
	.uleb128 0x2
	.long	.LASF1007
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF1008
	.value	0x2e1
	.uleb128 0x2
	.long	.LASF1009
	.value	0x2e2
	.uleb128 0x2
	.long	.LASF1010
	.value	0x2e3
	.uleb128 0x2
	.long	.LASF1011
	.value	0x2e4
	.uleb128 0x2
	.long	.LASF1012
	.value	0x2e5
	.uleb128 0x2
	.long	.LASF1013
	.value	0x2e6
	.uleb128 0x2
	.long	.LASF1014
	.value	0x2e7
	.uleb128 0x2
	.long	.LASF1015
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF1016
	.value	0x2e9
	.uleb128 0x2
	.long	.LASF1017
	.value	0x2ea
	.uleb128 0x2
	.long	.LASF1018
	.value	0x2eb
	.uleb128 0x2
	.long	.LASF1019
	.value	0x2ec
	.uleb128 0x2
	.long	.LASF1020
	.value	0x2ed
	.uleb128 0x2
	.long	.LASF1021
	.value	0x2ee
	.uleb128 0x2
	.long	.LASF1022
	.value	0x2ef
	.uleb128 0x2
	.long	.LASF1023
	.value	0x2f0
	.uleb128 0x2
	.long	.LASF1024
	.value	0x2f1
	.uleb128 0x2
	.long	.LASF1025
	.value	0x2f2
	.uleb128 0x2
	.long	.LASF1026
	.value	0x2f3
	.uleb128 0x2
	.long	.LASF1027
	.value	0x2f4
	.uleb128 0x2
	.long	.LASF1028
	.value	0x2f5
	.uleb128 0x2
	.long	.LASF1029
	.value	0x2f6
	.uleb128 0x2
	.long	.LASF1030
	.value	0x2f7
	.uleb128 0x2
	.long	.LASF1031
	.value	0x2f8
	.uleb128 0x2
	.long	.LASF1032
	.value	0x2f9
	.uleb128 0x2
	.long	.LASF1033
	.value	0x2fa
	.uleb128 0x2
	.long	.LASF1034
	.value	0x2fb
	.uleb128 0x2
	.long	.LASF1035
	.value	0x2fc
	.uleb128 0x2
	.long	.LASF1036
	.value	0x2fd
	.uleb128 0x2
	.long	.LASF1037
	.value	0x2fe
	.uleb128 0x2
	.long	.LASF1038
	.value	0x2ff
	.uleb128 0x2
	.long	.LASF1039
	.value	0x300
	.uleb128 0x2
	.long	.LASF1040
	.value	0x301
	.uleb128 0x2
	.long	.LASF1041
	.value	0x302
	.uleb128 0x2
	.long	.LASF1042
	.value	0x303
	.uleb128 0x2
	.long	.LASF1043
	.value	0x304
	.uleb128 0x2
	.long	.LASF1044
	.value	0x305
	.uleb128 0x2
	.long	.LASF1045
	.value	0x306
	.uleb128 0x2
	.long	.LASF1046
	.value	0x307
	.uleb128 0x2
	.long	.LASF1047
	.value	0x308
	.uleb128 0x2
	.long	.LASF1048
	.value	0x309
	.uleb128 0x2
	.long	.LASF1049
	.value	0x30a
	.uleb128 0x2
	.long	.LASF1050
	.value	0x30b
	.uleb128 0x2
	.long	.LASF1051
	.value	0x30c
	.uleb128 0x2
	.long	.LASF1052
	.value	0x30d
	.uleb128 0x2
	.long	.LASF1053
	.value	0x30e
	.uleb128 0x2
	.long	.LASF1054
	.value	0x30f
	.uleb128 0x2
	.long	.LASF1055
	.value	0x310
	.uleb128 0x2
	.long	.LASF1056
	.value	0x311
	.uleb128 0x2
	.long	.LASF1057
	.value	0x312
	.uleb128 0x2
	.long	.LASF1058
	.value	0x313
	.uleb128 0x2
	.long	.LASF1059
	.value	0x314
	.uleb128 0x2
	.long	.LASF1060
	.value	0x315
	.uleb128 0x2
	.long	.LASF1061
	.value	0x316
	.uleb128 0x2
	.long	.LASF1062
	.value	0x317
	.uleb128 0x2
	.long	.LASF1063
	.value	0x318
	.uleb128 0x2
	.long	.LASF1064
	.value	0x319
	.uleb128 0x2
	.long	.LASF1065
	.value	0x31a
	.uleb128 0x2
	.long	.LASF1066
	.value	0x31b
	.uleb128 0x2
	.long	.LASF1067
	.value	0x31c
	.uleb128 0x2
	.long	.LASF1068
	.value	0x31d
	.uleb128 0x2
	.long	.LASF1069
	.value	0x31e
	.uleb128 0x2
	.long	.LASF1070
	.value	0x31f
	.uleb128 0x2
	.long	.LASF1071
	.value	0x320
	.uleb128 0x2
	.long	.LASF1072
	.value	0x321
	.uleb128 0x2
	.long	.LASF1073
	.value	0x322
	.uleb128 0x2
	.long	.LASF1074
	.value	0x323
	.uleb128 0x2
	.long	.LASF1075
	.value	0x324
	.uleb128 0x2
	.long	.LASF1076
	.value	0x325
	.uleb128 0x2
	.long	.LASF1077
	.value	0x326
	.uleb128 0x2
	.long	.LASF1078
	.value	0x327
	.uleb128 0x2
	.long	.LASF1079
	.value	0x328
	.uleb128 0x2
	.long	.LASF1080
	.value	0x329
	.uleb128 0x2
	.long	.LASF1081
	.value	0x32a
	.uleb128 0x2
	.long	.LASF1082
	.value	0x32b
	.uleb128 0x2
	.long	.LASF1083
	.value	0x32c
	.uleb128 0x2
	.long	.LASF1084
	.value	0x32d
	.uleb128 0x2
	.long	.LASF1085
	.value	0x32e
	.uleb128 0x2
	.long	.LASF1086
	.value	0x32f
	.uleb128 0x2
	.long	.LASF1087
	.value	0x330
	.uleb128 0x2
	.long	.LASF1088
	.value	0x331
	.uleb128 0x2
	.long	.LASF1089
	.value	0x332
	.uleb128 0x2
	.long	.LASF1090
	.value	0x333
	.uleb128 0x2
	.long	.LASF1091
	.value	0x334
	.uleb128 0x2
	.long	.LASF1092
	.value	0x335
	.uleb128 0x2
	.long	.LASF1093
	.value	0x336
	.uleb128 0x2
	.long	.LASF1094
	.value	0x337
	.uleb128 0x2
	.long	.LASF1095
	.value	0x338
	.uleb128 0x2
	.long	.LASF1096
	.value	0x339
	.uleb128 0x2
	.long	.LASF1097
	.value	0x33a
	.uleb128 0x2
	.long	.LASF1098
	.value	0x33b
	.uleb128 0x2
	.long	.LASF1099
	.value	0x33c
	.uleb128 0x2
	.long	.LASF1100
	.value	0x33d
	.uleb128 0x2
	.long	.LASF1101
	.value	0x33e
	.uleb128 0x2
	.long	.LASF1102
	.value	0x33f
	.uleb128 0x2
	.long	.LASF1103
	.value	0x340
	.uleb128 0x2
	.long	.LASF1104
	.value	0x341
	.uleb128 0x2
	.long	.LASF1105
	.value	0x342
	.uleb128 0x2
	.long	.LASF1106
	.value	0x343
	.uleb128 0x2
	.long	.LASF1107
	.value	0x344
	.uleb128 0x2
	.long	.LASF1108
	.value	0x345
	.uleb128 0x2
	.long	.LASF1109
	.value	0x346
	.uleb128 0x2
	.long	.LASF1110
	.value	0x347
	.uleb128 0x2
	.long	.LASF1111
	.value	0x348
	.uleb128 0x2
	.long	.LASF1112
	.value	0x349
	.uleb128 0x2
	.long	.LASF1113
	.value	0x34a
	.uleb128 0x2
	.long	.LASF1114
	.value	0x34b
	.uleb128 0x2
	.long	.LASF1115
	.value	0x34c
	.uleb128 0x2
	.long	.LASF1116
	.value	0x34d
	.uleb128 0x2
	.long	.LASF1117
	.value	0x34e
	.uleb128 0x2
	.long	.LASF1118
	.value	0x34f
	.uleb128 0x2
	.long	.LASF1119
	.value	0x350
	.uleb128 0x2
	.long	.LASF1120
	.value	0x351
	.uleb128 0x2
	.long	.LASF1121
	.value	0x352
	.uleb128 0x2
	.long	.LASF1122
	.value	0x353
	.uleb128 0x2
	.long	.LASF1123
	.value	0x354
	.uleb128 0x2
	.long	.LASF1124
	.value	0x355
	.uleb128 0x2
	.long	.LASF1125
	.value	0x356
	.uleb128 0x2
	.long	.LASF1126
	.value	0x357
	.uleb128 0x2
	.long	.LASF1127
	.value	0x358
	.uleb128 0x2
	.long	.LASF1128
	.value	0x359
	.uleb128 0x2
	.long	.LASF1129
	.value	0x35a
	.uleb128 0x2
	.long	.LASF1130
	.value	0x35b
	.uleb128 0x2
	.long	.LASF1131
	.value	0x35c
	.uleb128 0x2
	.long	.LASF1132
	.value	0x35d
	.uleb128 0x2
	.long	.LASF1133
	.value	0x35e
	.uleb128 0x2
	.long	.LASF1134
	.value	0x35f
	.uleb128 0x2
	.long	.LASF1135
	.value	0x360
	.uleb128 0x2
	.long	.LASF1136
	.value	0x361
	.uleb128 0x2
	.long	.LASF1137
	.value	0x362
	.uleb128 0x2
	.long	.LASF1138
	.value	0x363
	.uleb128 0x2
	.long	.LASF1139
	.value	0x364
	.uleb128 0x2
	.long	.LASF1140
	.value	0x365
	.uleb128 0x2
	.long	.LASF1141
	.value	0x366
	.uleb128 0x2
	.long	.LASF1142
	.value	0x367
	.uleb128 0x2
	.long	.LASF1143
	.value	0x368
	.uleb128 0x2
	.long	.LASF1144
	.value	0x369
	.uleb128 0x2
	.long	.LASF1145
	.value	0x36a
	.uleb128 0x2
	.long	.LASF1146
	.value	0x36b
	.uleb128 0x2
	.long	.LASF1147
	.value	0x36c
	.uleb128 0x2
	.long	.LASF1148
	.value	0x36d
	.uleb128 0x2
	.long	.LASF1149
	.value	0x36e
	.uleb128 0x2
	.long	.LASF1150
	.value	0x36f
	.uleb128 0x2
	.long	.LASF1151
	.value	0x370
	.uleb128 0x2
	.long	.LASF1152
	.value	0x371
	.uleb128 0x2
	.long	.LASF1153
	.value	0x372
	.uleb128 0x2
	.long	.LASF1154
	.value	0x373
	.uleb128 0x2
	.long	.LASF1155
	.value	0x374
	.uleb128 0x2
	.long	.LASF1156
	.value	0x375
	.uleb128 0x2
	.long	.LASF1157
	.value	0x376
	.uleb128 0x2
	.long	.LASF1158
	.value	0x377
	.uleb128 0x2
	.long	.LASF1159
	.value	0x378
	.uleb128 0x2
	.long	.LASF1160
	.value	0x379
	.uleb128 0x2
	.long	.LASF1161
	.value	0x37a
	.uleb128 0x2
	.long	.LASF1162
	.value	0x37b
	.uleb128 0x2
	.long	.LASF1163
	.value	0x37c
	.uleb128 0x2
	.long	.LASF1164
	.value	0x37d
	.uleb128 0x2
	.long	.LASF1165
	.value	0x37e
	.uleb128 0x2
	.long	.LASF1166
	.value	0x37f
	.uleb128 0x2
	.long	.LASF1167
	.value	0x380
	.uleb128 0x2
	.long	.LASF1168
	.value	0x381
	.uleb128 0x2
	.long	.LASF1169
	.value	0x382
	.uleb128 0x2
	.long	.LASF1170
	.value	0x383
	.uleb128 0x2
	.long	.LASF1171
	.value	0x384
	.uleb128 0x2
	.long	.LASF1172
	.value	0x385
	.uleb128 0x2
	.long	.LASF1173
	.value	0x386
	.uleb128 0x2
	.long	.LASF1174
	.value	0x387
	.uleb128 0x2
	.long	.LASF1175
	.value	0x388
	.uleb128 0x2
	.long	.LASF1176
	.value	0x389
	.uleb128 0x2
	.long	.LASF1177
	.value	0x38a
	.uleb128 0x2
	.long	.LASF1178
	.value	0x38b
	.uleb128 0x2
	.long	.LASF1179
	.value	0x38c
	.uleb128 0x2
	.long	.LASF1180
	.value	0x38d
	.uleb128 0x2
	.long	.LASF1181
	.value	0x38e
	.uleb128 0x2
	.long	.LASF1182
	.value	0x38f
	.uleb128 0x2
	.long	.LASF1183
	.value	0x390
	.uleb128 0x2
	.long	.LASF1184
	.value	0x391
	.uleb128 0x2
	.long	.LASF1185
	.value	0x392
	.uleb128 0x2
	.long	.LASF1186
	.value	0x393
	.uleb128 0x2
	.long	.LASF1187
	.value	0x394
	.uleb128 0x2
	.long	.LASF1188
	.value	0x395
	.uleb128 0x2
	.long	.LASF1189
	.value	0x396
	.uleb128 0x2
	.long	.LASF1190
	.value	0x397
	.uleb128 0x2
	.long	.LASF1191
	.value	0x398
	.uleb128 0x2
	.long	.LASF1192
	.value	0x399
	.uleb128 0x2
	.long	.LASF1193
	.value	0x39a
	.uleb128 0x2
	.long	.LASF1194
	.value	0x39b
	.uleb128 0x2
	.long	.LASF1195
	.value	0x39c
	.uleb128 0x2
	.long	.LASF1196
	.value	0x39d
	.uleb128 0x2
	.long	.LASF1197
	.value	0x39e
	.uleb128 0x2
	.long	.LASF1198
	.value	0x39f
	.uleb128 0x2
	.long	.LASF1199
	.value	0x3a0
	.uleb128 0x2
	.long	.LASF1200
	.value	0x3a1
	.uleb128 0x2
	.long	.LASF1201
	.value	0x3a2
	.uleb128 0x2
	.long	.LASF1202
	.value	0x3a3
	.uleb128 0x2
	.long	.LASF1203
	.value	0x3a4
	.uleb128 0x2
	.long	.LASF1204
	.value	0x3a5
	.uleb128 0x2
	.long	.LASF1205
	.value	0x3a6
	.uleb128 0x2
	.long	.LASF1206
	.value	0x3a7
	.uleb128 0x2
	.long	.LASF1207
	.value	0x3a8
	.uleb128 0x2
	.long	.LASF1208
	.value	0x3a9
	.uleb128 0x2
	.long	.LASF1209
	.value	0x3aa
	.uleb128 0x2
	.long	.LASF1210
	.value	0x3ab
	.uleb128 0x2
	.long	.LASF1211
	.value	0x3ac
	.uleb128 0x2
	.long	.LASF1212
	.value	0x3ad
	.uleb128 0x2
	.long	.LASF1213
	.value	0x3ae
	.uleb128 0x2
	.long	.LASF1214
	.value	0x3af
	.uleb128 0x2
	.long	.LASF1215
	.value	0x3b0
	.uleb128 0x2
	.long	.LASF1216
	.value	0x3b1
	.uleb128 0x2
	.long	.LASF1217
	.value	0x3b2
	.uleb128 0x2
	.long	.LASF1218
	.value	0x3b3
	.uleb128 0x2
	.long	.LASF1219
	.value	0x3b4
	.uleb128 0x2
	.long	.LASF1220
	.value	0x3b5
	.uleb128 0x2
	.long	.LASF1221
	.value	0x3b6
	.uleb128 0x2
	.long	.LASF1222
	.value	0x3b7
	.uleb128 0x2
	.long	.LASF1223
	.value	0x3b8
	.uleb128 0x2
	.long	.LASF1224
	.value	0x3b9
	.uleb128 0x2
	.long	.LASF1225
	.value	0x3ba
	.uleb128 0x2
	.long	.LASF1226
	.value	0x3bb
	.uleb128 0x2
	.long	.LASF1227
	.value	0x3bc
	.uleb128 0x2
	.long	.LASF1228
	.value	0x3bd
	.uleb128 0x2
	.long	.LASF1229
	.value	0x3be
	.uleb128 0x2
	.long	.LASF1230
	.value	0x3bf
	.uleb128 0x2
	.long	.LASF1231
	.value	0x3c0
	.uleb128 0x2
	.long	.LASF1232
	.value	0x3c1
	.uleb128 0x2
	.long	.LASF1233
	.value	0x3c2
	.uleb128 0x2
	.long	.LASF1234
	.value	0x3c3
	.uleb128 0x2
	.long	.LASF1235
	.value	0x3c4
	.uleb128 0x2
	.long	.LASF1236
	.value	0x3c5
	.uleb128 0x2
	.long	.LASF1237
	.value	0x3c6
	.uleb128 0x2
	.long	.LASF1238
	.value	0x3c7
	.byte	0
	.uleb128 0x1e
	.long	.LASF1239
	.byte	0xd
	.value	0x478
	.long	0x9da
	.uleb128 0x2c
	.byte	0x38
	.value	0x47b
	.long	0x23d6
	.uleb128 0x7
	.long	.LASF1240
	.byte	0xd
	.value	0x47d
	.byte	0xf
	.long	0x9ce
	.byte	0
	.uleb128 0x7
	.long	.LASF1241
	.byte	0xd
	.value	0x47e
	.byte	0xa
	.long	0x8a
	.byte	0x8
	.uleb128 0x7
	.long	.LASF1242
	.byte	0xd
	.value	0x47f
	.byte	0xa
	.long	0x8a
	.byte	0x10
	.uleb128 0x7
	.long	.LASF1243
	.byte	0xd
	.value	0x481
	.byte	0xf
	.long	0x621
	.byte	0x18
	.uleb128 0x7
	.long	.LASF1244
	.byte	0xd
	.value	0x482
	.byte	0x10
	.long	0x235f
	.byte	0x20
	.uleb128 0x7
	.long	.LASF1245
	.byte	0xd
	.value	0x483
	.byte	0xa
	.long	0x8a
	.byte	0x28
	.uleb128 0x7
	.long	.LASF1246
	.byte	0xd
	.value	0x483
	.byte	0x11
	.long	0x8a
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.long	.LASF1247
	.byte	0xd
	.value	0x484
	.long	0x236b
	.uleb128 0xb
	.long	0x23d6
	.long	0x23f3
	.uleb128 0x29
	.long	0x43
	.value	0x3c6
	.byte	0
	.uleb128 0x16
	.long	.LASF1248
	.byte	0xd
	.value	0x486
	.byte	0x10
	.long	0x23e2
	.uleb128 0x37
	.byte	0x7
	.byte	0x4
	.long	0x9f
	.byte	0xd
	.value	0x48b
	.byte	0xe
	.long	0x274c
	.uleb128 0x1
	.long	.LASF1249
	.byte	0
	.uleb128 0x1
	.long	.LASF1250
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1251
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1252
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1253
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1254
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1255
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1256
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1257
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1258
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1259
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1260
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1261
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1262
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1263
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1264
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1265
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1266
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1267
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1268
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1269
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1270
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1271
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1272
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1273
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1274
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1275
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1276
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1277
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1278
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1279
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1280
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1281
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1282
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1283
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1284
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1285
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1286
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1287
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1288
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1289
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1290
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1291
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1292
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1293
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1294
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1295
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1296
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1297
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1298
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1299
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1300
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1301
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1302
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1303
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1304
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1305
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1306
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1307
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1308
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1309
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1310
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1311
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1312
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1313
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1314
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1315
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1316
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1317
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1318
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1319
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1320
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1321
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1322
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1323
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1324
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1325
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1326
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1327
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1328
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1329
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1330
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1331
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1332
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1333
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1334
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1335
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1336
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1337
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1338
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1339
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1340
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1341
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1342
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1343
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1344
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1345
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1346
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1347
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1348
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1349
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1350
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1351
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1352
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1353
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1354
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1355
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1356
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1357
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1358
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF1359
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF1360
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF1361
	.byte	0x70
	.uleb128 0x1
	.long	.LASF1362
	.byte	0x71
	.uleb128 0x1
	.long	.LASF1363
	.byte	0x72
	.uleb128 0x1
	.long	.LASF1364
	.byte	0x73
	.uleb128 0x1
	.long	.LASF1365
	.byte	0x74
	.uleb128 0x1
	.long	.LASF1366
	.byte	0x75
	.uleb128 0x1
	.long	.LASF1367
	.byte	0x76
	.uleb128 0x1
	.long	.LASF1368
	.byte	0x77
	.uleb128 0x1
	.long	.LASF1369
	.byte	0x78
	.uleb128 0x1
	.long	.LASF1370
	.byte	0x79
	.uleb128 0x1
	.long	.LASF1371
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF1372
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF1373
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF1374
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF1375
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF1376
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF1377
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1378
	.byte	0x81
	.uleb128 0x1
	.long	.LASF1379
	.byte	0x82
	.uleb128 0x1
	.long	.LASF1380
	.byte	0x83
	.uleb128 0x1
	.long	.LASF1381
	.byte	0x84
	.uleb128 0x1
	.long	.LASF1382
	.byte	0x85
	.uleb128 0x1
	.long	.LASF1383
	.byte	0x86
	.uleb128 0x1
	.long	.LASF1384
	.byte	0x87
	.uleb128 0x1
	.long	.LASF1385
	.byte	0x88
	.uleb128 0x1
	.long	.LASF1386
	.byte	0x89
	.byte	0
	.uleb128 0x1e
	.long	.LASF1387
	.byte	0xd
	.value	0x517
	.long	0x2400
	.uleb128 0x2c
	.byte	0x5c
	.value	0x519
	.long	0x28a3
	.uleb128 0x7
	.long	.LASF1388
	.byte	0xd
	.value	0x51b
	.byte	0x9
	.long	0x7e
	.byte	0
	.uleb128 0x7
	.long	.LASF1389
	.byte	0xd
	.value	0x51c
	.byte	0x9
	.long	0x7e
	.byte	0x4
	.uleb128 0x7
	.long	.LASF1390
	.byte	0xd
	.value	0x51d
	.byte	0x9
	.long	0x7e
	.byte	0x8
	.uleb128 0x7
	.long	.LASF1391
	.byte	0xd
	.value	0x51e
	.byte	0x9
	.long	0x7e
	.byte	0xc
	.uleb128 0x7
	.long	.LASF1392
	.byte	0xd
	.value	0x51f
	.byte	0x9
	.long	0x7e
	.byte	0x10
	.uleb128 0x7
	.long	.LASF1393
	.byte	0xd
	.value	0x520
	.byte	0x9
	.long	0x7e
	.byte	0x14
	.uleb128 0x7
	.long	.LASF1394
	.byte	0xd
	.value	0x521
	.byte	0x9
	.long	0x7e
	.byte	0x18
	.uleb128 0x7
	.long	.LASF1395
	.byte	0xd
	.value	0x522
	.byte	0x9
	.long	0x7e
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF1396
	.byte	0xd
	.value	0x523
	.byte	0x9
	.long	0x7e
	.byte	0x20
	.uleb128 0x7
	.long	.LASF1397
	.byte	0xd
	.value	0x524
	.byte	0x9
	.long	0x7e
	.byte	0x24
	.uleb128 0x7
	.long	.LASF1398
	.byte	0xd
	.value	0x525
	.byte	0x9
	.long	0x7e
	.byte	0x28
	.uleb128 0x7
	.long	.LASF1399
	.byte	0xd
	.value	0x526
	.byte	0x9
	.long	0x7e
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF1400
	.byte	0xd
	.value	0x527
	.byte	0x9
	.long	0x7e
	.byte	0x30
	.uleb128 0x7
	.long	.LASF1401
	.byte	0xd
	.value	0x528
	.byte	0x9
	.long	0x7e
	.byte	0x34
	.uleb128 0x7
	.long	.LASF1402
	.byte	0xd
	.value	0x529
	.byte	0x9
	.long	0x7e
	.byte	0x38
	.uleb128 0x7
	.long	.LASF1403
	.byte	0xd
	.value	0x52a
	.byte	0x9
	.long	0x7e
	.byte	0x3c
	.uleb128 0x7
	.long	.LASF1404
	.byte	0xd
	.value	0x52b
	.byte	0x9
	.long	0x7e
	.byte	0x40
	.uleb128 0x7
	.long	.LASF1405
	.byte	0xd
	.value	0x52c
	.byte	0x9
	.long	0x7e
	.byte	0x44
	.uleb128 0x7
	.long	.LASF1406
	.byte	0xd
	.value	0x52d
	.byte	0x9
	.long	0x7e
	.byte	0x48
	.uleb128 0x7
	.long	.LASF1407
	.byte	0xd
	.value	0x52e
	.byte	0x9
	.long	0x7e
	.byte	0x4c
	.uleb128 0x7
	.long	.LASF1408
	.byte	0xd
	.value	0x52f
	.byte	0x9
	.long	0x7e
	.byte	0x50
	.uleb128 0x7
	.long	.LASF1409
	.byte	0xd
	.value	0x530
	.byte	0x9
	.long	0x7e
	.byte	0x54
	.uleb128 0x7
	.long	.LASF1410
	.byte	0xd
	.value	0x531
	.byte	0x9
	.long	0x7e
	.byte	0x58
	.byte	0
	.uleb128 0x1e
	.long	.LASF1411
	.byte	0xd
	.value	0x533
	.long	0x2758
	.uleb128 0xb
	.long	0x28a3
	.long	0x28bf
	.uleb128 0x9
	.long	0x43
	.byte	0x88
	.byte	0
	.uleb128 0x16
	.long	.LASF1412
	.byte	0xd
	.value	0x535
	.byte	0x13
	.long	0x28af
	.uleb128 0x10
	.long	0x9f
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x28eb
	.uleb128 0x1
	.long	.LASF1413
	.byte	0
	.uleb128 0x1
	.long	.LASF1414
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1415
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.byte	0x18
	.byte	0xe
	.byte	0x44
	.long	0x2926
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xe
	.byte	0x46
	.byte	0xe
	.long	0x2926
	.byte	0
	.uleb128 0x3
	.long	.LASF1242
	.byte	0xe
	.byte	0x47
	.byte	0xa
	.long	0x7e
	.byte	0x8
	.uleb128 0xe
	.string	"sx"
	.byte	0xe
	.byte	0x48
	.byte	0xd
	.long	0x54e
	.byte	0xc
	.uleb128 0xe
	.string	"sy"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0x54e
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x23d6
	.uleb128 0xa
	.long	.LASF1417
	.byte	0xe
	.byte	0x4b
	.byte	0x3
	.long	0x28eb
	.uleb128 0x10
	.long	0x9f
	.byte	0xf
	.byte	0x76
	.byte	0x1
	.long	0x2a15
	.uleb128 0x1
	.long	.LASF1418
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1419
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1420
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1421
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1422
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1423
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1424
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1425
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1426
	.value	0x100
	.uleb128 0x2
	.long	.LASF1427
	.value	0x200
	.uleb128 0x2
	.long	.LASF1428
	.value	0x400
	.uleb128 0x2
	.long	.LASF1429
	.value	0x800
	.uleb128 0x2
	.long	.LASF1430
	.value	0x1000
	.uleb128 0x2
	.long	.LASF1431
	.value	0x2000
	.uleb128 0x2
	.long	.LASF1432
	.value	0x4000
	.uleb128 0x2
	.long	.LASF1433
	.value	0x8000
	.uleb128 0x17
	.long	.LASF1434
	.long	0x10000
	.uleb128 0x17
	.long	.LASF1435
	.long	0x20000
	.uleb128 0x17
	.long	.LASF1436
	.long	0x40000
	.uleb128 0x17
	.long	.LASF1437
	.long	0x80000
	.uleb128 0x17
	.long	.LASF1438
	.long	0x100000
	.uleb128 0x17
	.long	.LASF1439
	.long	0x200000
	.uleb128 0x17
	.long	.LASF1440
	.long	0x400000
	.uleb128 0x17
	.long	.LASF1441
	.long	0x800000
	.uleb128 0x17
	.long	.LASF1442
	.long	0x1000000
	.uleb128 0x17
	.long	.LASF1443
	.long	0x2000000
	.uleb128 0x17
	.long	.LASF1444
	.long	0xc000000
	.uleb128 0x1
	.long	.LASF1445
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.long	.LASF1446
	.byte	0xe0
	.byte	0xf
	.byte	0xcf
	.byte	0x10
	.long	0x2bed
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xf
	.byte	0xd2
	.byte	0x10
	.long	0x673
	.byte	0
	.uleb128 0xe
	.string	"x"
	.byte	0xf
	.byte	0xd5
	.byte	0xe
	.long	0x54e
	.byte	0x18
	.uleb128 0xe
	.string	"y"
	.byte	0xf
	.byte	0xd6
	.byte	0xe
	.long	0x54e
	.byte	0x1c
	.uleb128 0xe
	.string	"z"
	.byte	0xf
	.byte	0xd7
	.byte	0xe
	.long	0x54e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xf
	.byte	0xda
	.byte	0x14
	.long	0x2bed
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xf
	.byte	0xdb
	.byte	0x14
	.long	0x2bed
	.byte	0x30
	.uleb128 0x3
	.long	.LASF107
	.byte	0xf
	.byte	0xde
	.byte	0xe
	.long	0x596
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1240
	.byte	0xf
	.byte	0xdf
	.byte	0x12
	.long	0x9ce
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1241
	.byte	0xf
	.byte	0xe0
	.byte	0xb
	.long	0x7e
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xf
	.byte	0xe4
	.byte	0x14
	.long	0x2bed
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xf
	.byte	0xe5
	.byte	0x14
	.long	0x2bed
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xf
	.byte	0xe7
	.byte	0x19
	.long	0x2c27
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xf
	.byte	0xea
	.byte	0xe
	.long	0x54e
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xf
	.byte	0xeb
	.byte	0xe
	.long	0x54e
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xf
	.byte	0xee
	.byte	0xe
	.long	0x54e
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xf
	.byte	0xef
	.byte	0xe
	.long	0x54e
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xf
	.byte	0xf2
	.byte	0xe
	.long	0x54e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xf
	.byte	0xf3
	.byte	0xe
	.long	0x54e
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xf
	.byte	0xf4
	.byte	0xe
	.long	0x54e
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xf
	.byte	0xf7
	.byte	0xb
	.long	0x7e
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF108
	.byte	0xf
	.byte	0xf9
	.byte	0x11
	.long	0x274c
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xf
	.byte	0xfa
	.byte	0x12
	.long	0x2c2c
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1242
	.byte	0xf
	.byte	0xfc
	.byte	0xb
	.long	0x7e
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xf
	.byte	0xfd
	.byte	0xf
	.long	0x2926
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xf
	.byte	0xfe
	.byte	0xb
	.long	0x7e
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xf
	.byte	0xff
	.byte	0xb
	.long	0x7e
	.byte	0xa4
	.uleb128 0x7
	.long	.LASF1461
	.byte	0xf
	.value	0x102
	.byte	0xb
	.long	0x7e
	.byte	0xa8
	.uleb128 0x7
	.long	.LASF1462
	.byte	0xf
	.value	0x103
	.byte	0xb
	.long	0x7e
	.byte	0xac
	.uleb128 0x7
	.long	.LASF1463
	.byte	0xf
	.value	0x107
	.byte	0x14
	.long	0x2bed
	.byte	0xb0
	.uleb128 0x7
	.long	.LASF1393
	.byte	0xf
	.value	0x10b
	.byte	0xb
	.long	0x7e
	.byte	0xb8
	.uleb128 0x7
	.long	.LASF1464
	.byte	0xf
	.value	0x10f
	.byte	0xb
	.long	0x7e
	.byte	0xbc
	.uleb128 0x7
	.long	.LASF1465
	.byte	0xf
	.value	0x113
	.byte	0x16
	.long	0x2e06
	.byte	0xc0
	.uleb128 0x7
	.long	.LASF1466
	.byte	0xf
	.value	0x116
	.byte	0xb
	.long	0x7e
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF1467
	.byte	0xf
	.value	0x119
	.byte	0x11
	.long	0x542
	.byte	0xcc
	.uleb128 0x7
	.long	.LASF1468
	.byte	0xf
	.value	0x11c
	.byte	0x14
	.long	0x2bed
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x2a15
	.uleb128 0x1d
	.long	.LASF1469
	.byte	0x10
	.byte	0x10
	.byte	0xe3
	.byte	0x10
	.long	0x2c27
	.uleb128 0x3
	.long	.LASF1470
	.byte	0x10
	.byte	0xe5
	.byte	0xf
	.long	0x368d
	.byte	0
	.uleb128 0x3
	.long	.LASF1471
	.byte	0x10
	.byte	0xe6
	.byte	0xb
	.long	0xad
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1472
	.byte	0x10
	.byte	0xe7
	.byte	0xb
	.long	0xad
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x2bf2
	.uleb128 0x8
	.long	0x28a3
	.uleb128 0x38
	.long	.LASF1473
	.value	0x140
	.byte	0x11
	.byte	0x53
	.byte	0x10
	.long	0x2e06
	.uleb128 0xe
	.string	"mo"
	.byte	0x11
	.byte	0x55
	.byte	0xe
	.long	0x2ea5
	.byte	0
	.uleb128 0x3
	.long	.LASF1474
	.byte	0x11
	.byte	0x56
	.byte	0x13
	.long	0x2e99
	.byte	0x8
	.uleb128 0xe
	.string	"cmd"
	.byte	0x11
	.byte	0x57
	.byte	0xf
	.long	0x2e6e
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1475
	.byte	0x11
	.byte	0x5c
	.byte	0xe
	.long	0x54e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1476
	.byte	0x11
	.byte	0x5e
	.byte	0xe
	.long	0x54e
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1477
	.byte	0x11
	.byte	0x60
	.byte	0x16
	.long	0x54e
	.byte	0x1c
	.uleb128 0xe
	.string	"bob"
	.byte	0x11
	.byte	0x62
	.byte	0x16
	.long	0x54e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1460
	.byte	0x11
	.byte	0x66
	.byte	0xb
	.long	0x7e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1478
	.byte	0x11
	.byte	0x67
	.byte	0xb
	.long	0x7e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1479
	.byte	0x11
	.byte	0x69
	.byte	0xb
	.long	0x7e
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1480
	.byte	0x11
	.byte	0x6c
	.byte	0xb
	.long	0x2eaa
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x11
	.byte	0x6d
	.byte	0xe
	.long	0x2eba
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1482
	.byte	0x11
	.byte	0x6e
	.byte	0xe
	.long	0x4d4
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1483
	.byte	0x11
	.byte	0x71
	.byte	0xb
	.long	0x2eca
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1484
	.byte	0x11
	.byte	0x72
	.byte	0x12
	.long	0x447
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1485
	.byte	0x11
	.byte	0x75
	.byte	0x12
	.long	0x447
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1486
	.byte	0x11
	.byte	0x77
	.byte	0xe
	.long	0x2eda
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1487
	.byte	0x11
	.byte	0x78
	.byte	0xb
	.long	0x2eca
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1488
	.byte	0x11
	.byte	0x79
	.byte	0xb
	.long	0x2eca
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1489
	.byte	0x11
	.byte	0x7c
	.byte	0xb
	.long	0x7e
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1490
	.byte	0x11
	.byte	0x7d
	.byte	0xb
	.long	0x7e
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1491
	.byte	0x11
	.byte	0x81
	.byte	0xb
	.long	0x7e
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1492
	.byte	0x11
	.byte	0x84
	.byte	0xb
	.long	0x7e
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1493
	.byte	0x11
	.byte	0x87
	.byte	0xb
	.long	0x7e
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1494
	.byte	0x11
	.byte	0x88
	.byte	0xb
	.long	0x7e
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1495
	.byte	0x11
	.byte	0x89
	.byte	0xb
	.long	0x7e
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1496
	.byte	0x11
	.byte	0x8c
	.byte	0xc
	.long	0xce
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1497
	.byte	0x11
	.byte	0x8f
	.byte	0xb
	.long	0x7e
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1498
	.byte	0x11
	.byte	0x90
	.byte	0xb
	.long	0x7e
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1499
	.byte	0x11
	.byte	0x93
	.byte	0xe
	.long	0x2ea5
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1500
	.byte	0x11
	.byte	0x96
	.byte	0xb
	.long	0x7e
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1501
	.byte	0x11
	.byte	0x9a
	.byte	0xb
	.long	0x7e
	.byte	0xfc
	.uleb128 0x24
	.long	.LASF1502
	.byte	0x9e
	.byte	0xb
	.long	0x7e
	.value	0x100
	.uleb128 0x24
	.long	.LASF1503
	.byte	0xa1
	.byte	0xf
	.long	0x2eea
	.value	0x108
	.uleb128 0x24
	.long	.LASF1504
	.byte	0xa4
	.byte	0xe
	.long	0x4d4
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x2c31
	.uleb128 0x1e
	.long	.LASF1505
	.byte	0xf
	.value	0x11e
	.long	0x2a15
	.uleb128 0x18
	.byte	0x8
	.byte	0x12
	.byte	0x24
	.long	0x2e6e
	.uleb128 0x3
	.long	.LASF1506
	.byte	0x12
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1507
	.byte	0x12
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1508
	.byte	0x12
	.byte	0x28
	.byte	0xb
	.long	0xad
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1509
	.byte	0x12
	.byte	0x29
	.byte	0xb
	.long	0xad
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1510
	.byte	0x12
	.byte	0x2a
	.byte	0xa
	.long	0x4e0
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1511
	.byte	0x12
	.byte	0x2b
	.byte	0xa
	.long	0x4e0
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	.LASF1512
	.byte	0x12
	.byte	0x2c
	.byte	0x3
	.long	0x2e17
	.uleb128 0x10
	.long	0x9f
	.byte	0x11
	.byte	0x36
	.byte	0x1
	.long	0x2e99
	.uleb128 0x1
	.long	.LASF1513
	.byte	0
	.uleb128 0x1
	.long	.LASF1514
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1515
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	.LASF1516
	.byte	0x11
	.byte	0x3e
	.byte	0x3
	.long	0x2e7a
	.uleb128 0x8
	.long	0x2e0b
	.uleb128 0xb
	.long	0x7e
	.long	0x2eba
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x4d4
	.long	0x2eca
	.uleb128 0x9
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x7e
	.long	0x2eda
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x4d4
	.long	0x2eea
	.uleb128 0x9
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x292b
	.long	0x2efa
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	.LASF1517
	.byte	0x11
	.byte	0xa6
	.byte	0x3
	.long	0x2c31
	.uleb128 0x18
	.byte	0x28
	.byte	0x11
	.byte	0xad
	.long	0x2f69
	.uleb128 0xe
	.string	"in"
	.byte	0x11
	.byte	0xaf
	.byte	0xd
	.long	0x4d4
	.byte	0
	.uleb128 0x3
	.long	.LASF1518
	.byte	0x11
	.byte	0xb2
	.byte	0xa
	.long	0x7e
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1519
	.byte	0x11
	.byte	0xb3
	.byte	0xa
	.long	0x7e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1520
	.byte	0x11
	.byte	0xb4
	.byte	0xa
	.long	0x7e
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1521
	.byte	0x11
	.byte	0xb5
	.byte	0xa
	.long	0x7e
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1483
	.byte	0x11
	.byte	0xb6
	.byte	0xa
	.long	0x2eca
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1522
	.byte	0x11
	.byte	0xb7
	.byte	0xa
	.long	0x7e
	.byte	0x24
	.byte	0
	.uleb128 0xa
	.long	.LASF1523
	.byte	0x11
	.byte	0xb9
	.byte	0x3
	.long	0x2f06
	.uleb128 0x18
	.byte	0xc8
	.byte	0x11
	.byte	0xbb
	.long	0x300d
	.uleb128 0x3
	.long	.LASF1524
	.byte	0x11
	.byte	0xbd
	.byte	0xa
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF1504
	.byte	0x11
	.byte	0xc0
	.byte	0xd
	.long	0x4d4
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1525
	.byte	0x11
	.byte	0xc3
	.byte	0xa
	.long	0x7e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF128
	.byte	0x11
	.byte	0xc4
	.byte	0xa
	.long	0x7e
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1526
	.byte	0x11
	.byte	0xc6
	.byte	0xa
	.long	0x7e
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1527
	.byte	0x11
	.byte	0xc7
	.byte	0xa
	.long	0x7e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1528
	.byte	0x11
	.byte	0xc8
	.byte	0xa
	.long	0x7e
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1529
	.byte	0x11
	.byte	0xc9
	.byte	0xa
	.long	0x7e
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1530
	.byte	0x11
	.byte	0xcc
	.byte	0xa
	.long	0x7e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1531
	.byte	0x11
	.byte	0xcf
	.byte	0xa
	.long	0x7e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1532
	.byte	0x11
	.byte	0xd1
	.byte	0x16
	.long	0x300d
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.long	0x2f69
	.long	0x301d
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF1533
	.byte	0x11
	.byte	0xd3
	.byte	0x3
	.long	0x2f75
	.uleb128 0x6
	.long	.LASF1534
	.byte	0x13
	.byte	0x31
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1535
	.byte	0x13
	.byte	0x32
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1536
	.byte	0x13
	.byte	0x33
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1537
	.byte	0x13
	.byte	0x3c
	.byte	0x13
	.long	0x322
	.uleb128 0x6
	.long	.LASF1538
	.byte	0x13
	.byte	0x54
	.byte	0x19
	.long	0x3b5
	.uleb128 0x6
	.long	.LASF1539
	.byte	0x13
	.byte	0x55
	.byte	0xe
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1540
	.byte	0x13
	.byte	0x56
	.byte	0xe
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1541
	.byte	0x13
	.byte	0x59
	.byte	0x19
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1542
	.byte	0x13
	.byte	0x5c
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1543
	.byte	0x13
	.byte	0x60
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1544
	.byte	0x13
	.byte	0x84
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1545
	.byte	0x13
	.byte	0x86
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1546
	.byte	0x13
	.byte	0x89
	.byte	0x12
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1547
	.byte	0x13
	.byte	0x8b
	.byte	0x12
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1548
	.byte	0x13
	.byte	0x8c
	.byte	0x12
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1549
	.byte	0x13
	.byte	0x9e
	.byte	0xd
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1550
	.byte	0x13
	.byte	0x9f
	.byte	0xd
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1551
	.byte	0x13
	.byte	0xa6
	.byte	0xd
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1552
	.byte	0x13
	.byte	0xa7
	.byte	0xc
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1553
	.byte	0x13
	.byte	0xa8
	.byte	0xc
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1554
	.byte	0x13
	.byte	0xab
	.byte	0xd
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1555
	.byte	0x13
	.byte	0xac
	.byte	0xd
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1556
	.byte	0x13
	.byte	0xb4
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1557
	.byte	0x13
	.byte	0xb7
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1558
	.byte	0x13
	.byte	0xb8
	.byte	0x11
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1559
	.byte	0x13
	.byte	0xbb
	.byte	0x12
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1560
	.byte	0x13
	.byte	0xc1
	.byte	0x19
	.long	0x37e
	.uleb128 0x6
	.long	.LASF1561
	.byte	0x13
	.byte	0xd0
	.byte	0xd
	.long	0x7e
	.uleb128 0xb
	.long	0x2efa
	.long	0x3189
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1562
	.byte	0x13
	.byte	0xd4
	.byte	0x11
	.long	0x3179
	.uleb128 0xb
	.long	0x4d4
	.long	0x31a5
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1563
	.byte	0x13
	.byte	0xd7
	.byte	0x12
	.long	0x3195
	.uleb128 0xb
	.long	0x542
	.long	0x31c1
	.uleb128 0x9
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.long	.LASF1564
	.byte	0x13
	.byte	0xdc
	.byte	0x19
	.long	0x31b1
	.uleb128 0x6
	.long	.LASF1565
	.byte	0x13
	.byte	0xdd
	.byte	0x15
	.long	0x31d9
	.uleb128 0x8
	.long	0x542
	.uleb128 0xb
	.long	0x542
	.long	0x31ee
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1566
	.byte	0x13
	.byte	0xe0
	.byte	0x19
	.long	0x31de
	.uleb128 0x6
	.long	.LASF1567
	.byte	0x13
	.byte	0xe4
	.byte	0x1a
	.long	0x301d
	.uleb128 0x6
	.long	.LASF1488
	.byte	0x13
	.byte	0xe9
	.byte	0xe
	.long	0x2eca
	.uleb128 0x6
	.long	.LASF1568
	.byte	0x13
	.byte	0xf8
	.byte	0x19
	.long	0x4d4
	.uleb128 0x6
	.long	.LASF1569
	.byte	0x13
	.byte	0xfd
	.byte	0x19
	.long	0x37e
	.uleb128 0x6
	.long	.LASF1570
	.byte	0x13
	.byte	0xff
	.byte	0x19
	.long	0x7e
	.uleb128 0x16
	.long	.LASF1571
	.byte	0x13
	.value	0x102
	.byte	0x19
	.long	0x4d4
	.uleb128 0x16
	.long	.LASF1572
	.byte	0x13
	.value	0x104
	.byte	0x19
	.long	0x7e
	.uleb128 0x16
	.long	.LASF1573
	.byte	0x13
	.value	0x10b
	.byte	0xd
	.long	0x7e
	.uleb128 0x16
	.long	.LASF1574
	.byte	0x13
	.value	0x119
	.byte	0xd
	.long	0x7e
	.uleb128 0x16
	.long	.LASF1575
	.byte	0x13
	.value	0x11b
	.byte	0xd
	.long	0x7e
	.uleb128 0xb
	.long	0x2e6e
	.long	0x328d
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.uleb128 0x9
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x16
	.long	.LASF1576
	.byte	0x13
	.value	0x11e
	.byte	0x19
	.long	0x3277
	.uleb128 0x16
	.long	.LASF1577
	.byte	0x13
	.value	0x11f
	.byte	0xd
	.long	0x7e
	.uleb128 0x1d
	.long	.LASF1578
	.byte	0x28
	.byte	0x14
	.byte	0x3a
	.byte	0x10
	.long	0x3302
	.uleb128 0x3
	.long	.LASF1579
	.byte	0x14
	.byte	0x3c
	.byte	0xb
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF1580
	.byte	0x14
	.byte	0x3d
	.byte	0xd
	.long	0x3302
	.byte	0x8
	.uleb128 0xe
	.string	"tag"
	.byte	0x14
	.byte	0x3e
	.byte	0xb
	.long	0x7e
	.byte	0x10
	.uleb128 0xe
	.string	"id"
	.byte	0x14
	.byte	0x3f
	.byte	0xb
	.long	0x7e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF128
	.byte	0x14
	.byte	0x40
	.byte	0x18
	.long	0x3307
	.byte	0x18
	.uleb128 0x3
	.long	.LASF127
	.byte	0x14
	.byte	0x41
	.byte	0x18
	.long	0x3307
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	0xcc
	.uleb128 0x8
	.long	0x32a7
	.uleb128 0xa
	.long	.LASF1581
	.byte	0x14
	.byte	0x42
	.byte	0x3
	.long	0x32a7
	.uleb128 0x10
	.long	0x9f
	.byte	0x15
	.byte	0x24
	.byte	0x1
	.long	0x333d
	.uleb128 0x1
	.long	.LASF1582
	.byte	0
	.uleb128 0x1
	.long	.LASF1583
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1584
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1585
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF1586
	.byte	0x15
	.byte	0x29
	.byte	0x3
	.long	0x3318
	.uleb128 0x18
	.byte	0x10
	.byte	0x15
	.byte	0x2c
	.long	0x3386
	.uleb128 0x3
	.long	.LASF108
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x333d
	.byte	0
	.uleb128 0x3
	.long	.LASF1587
	.byte	0x15
	.byte	0x2f
	.byte	0xa
	.long	0x7e
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1588
	.byte	0x15
	.byte	0x30
	.byte	0xa
	.long	0x7e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1589
	.byte	0x15
	.byte	0x31
	.byte	0xa
	.long	0x7e
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	.LASF1590
	.byte	0x15
	.byte	0x32
	.byte	0x3
	.long	0x3349
	.uleb128 0x10
	.long	0x9f
	.byte	0x15
	.byte	0x36
	.byte	0x1
	.long	0x33db
	.uleb128 0x1
	.long	.LASF1591
	.byte	0
	.uleb128 0x1
	.long	.LASF1592
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1593
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1594
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1595
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1596
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1597
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1598
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1599
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1600
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.long	.LASF1601
	.byte	0x15
	.byte	0x41
	.byte	0x3
	.long	0x3392
	.uleb128 0x10
	.long	0x9f
	.byte	0x15
	.byte	0x49
	.byte	0x1
	.long	0x3436
	.uleb128 0x1
	.long	.LASF1602
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1603
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1604
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1605
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1606
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1607
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1608
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1609
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1610
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1611
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1612
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1613
	.byte	0x15
	.byte	0x72
	.byte	0x19
	.long	0x33db
	.uleb128 0x6
	.long	.LASF1614
	.byte	0x16
	.byte	0x1d
	.byte	0xd
	.long	0x7e
	.uleb128 0x6
	.long	.LASF1615
	.byte	0x16
	.byte	0x1e
	.byte	0x10
	.long	0x345a
	.uleb128 0x8
	.long	0xce
	.uleb128 0x6
	.long	.LASF1616
	.byte	0x17
	.byte	0x2b
	.byte	0xf
	.long	0x346b
	.uleb128 0x8
	.long	0x4e0
	.uleb128 0x18
	.byte	0x8
	.byte	0x10
	.byte	0x47
	.long	0x348f
	.uleb128 0xe
	.string	"x"
	.byte	0x10
	.byte	0x49
	.byte	0xd
	.long	0x54e
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x10
	.byte	0x4a
	.byte	0xd
	.long	0x54e
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF1617
	.byte	0x10
	.byte	0x4c
	.byte	0x3
	.long	0x3470
	.uleb128 0x18
	.byte	0x28
	.byte	0x10
	.byte	0x58
	.long	0x34d2
	.uleb128 0x3
	.long	.LASF1447
	.byte	0x10
	.byte	0x5a
	.byte	0x10
	.long	0x673
	.byte	0
	.uleb128 0xe
	.string	"x"
	.byte	0x10
	.byte	0x5b
	.byte	0xe
	.long	0x54e
	.byte	0x18
	.uleb128 0xe
	.string	"y"
	.byte	0x10
	.byte	0x5c
	.byte	0xe
	.long	0x54e
	.byte	0x1c
	.uleb128 0xe
	.string	"z"
	.byte	0x10
	.byte	0x5d
	.byte	0xe
	.long	0x54e
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.long	.LASF1618
	.byte	0x10
	.byte	0x5f
	.byte	0x3
	.long	0x349b
	.uleb128 0x18
	.byte	0x80
	.byte	0x10
	.byte	0x65
	.long	0x35b7
	.uleb128 0x3
	.long	.LASF1619
	.byte	0x10
	.byte	0x67
	.byte	0xd
	.long	0x54e
	.byte	0
	.uleb128 0x3
	.long	.LASF1620
	.byte	0x10
	.byte	0x68
	.byte	0xd
	.long	0x54e
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1621
	.byte	0x10
	.byte	0x69
	.byte	0xb
	.long	0xad
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1622
	.byte	0x10
	.byte	0x6a
	.byte	0xb
	.long	0xad
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1623
	.byte	0x10
	.byte	0x6b
	.byte	0xb
	.long	0xad
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1624
	.byte	0x10
	.byte	0x6c
	.byte	0xb
	.long	0xad
	.byte	0xe
	.uleb128 0xe
	.string	"tag"
	.byte	0x10
	.byte	0x6d
	.byte	0xb
	.long	0xad
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1625
	.byte	0x10
	.byte	0x70
	.byte	0xa
	.long	0x7e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1626
	.byte	0x10
	.byte	0x73
	.byte	0xd
	.long	0x2ea5
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1627
	.byte	0x10
	.byte	0x76
	.byte	0xa
	.long	0x2eca
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1628
	.byte	0x10
	.byte	0x79
	.byte	0x11
	.long	0x34d2
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1458
	.byte	0x10
	.byte	0x7c
	.byte	0xa
	.long	0x7e
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1629
	.byte	0x10
	.byte	0x7f
	.byte	0xd
	.long	0x2ea5
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1630
	.byte	0x10
	.byte	0x82
	.byte	0xb
	.long	0xcc
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1631
	.byte	0x10
	.byte	0x84
	.byte	0xb
	.long	0x7e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1632
	.byte	0x10
	.byte	0x85
	.byte	0x15
	.long	0x3677
	.byte	0x78
	.byte	0
	.uleb128 0x1d
	.long	.LASF1633
	.byte	0x58
	.byte	0x10
	.byte	0xb3
	.byte	0x10
	.long	0x3677
	.uleb128 0xe
	.string	"v1"
	.byte	0x10
	.byte	0xb6
	.byte	0xf
	.long	0x36c3
	.byte	0
	.uleb128 0xe
	.string	"v2"
	.byte	0x10
	.byte	0xb7
	.byte	0xf
	.long	0x36c3
	.byte	0x8
	.uleb128 0xe
	.string	"dx"
	.byte	0x10
	.byte	0xba
	.byte	0xd
	.long	0x54e
	.byte	0x10
	.uleb128 0xe
	.string	"dy"
	.byte	0x10
	.byte	0xbb
	.byte	0xd
	.long	0x54e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1409
	.byte	0x10
	.byte	0xbe
	.byte	0xb
	.long	0xad
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1624
	.byte	0x10
	.byte	0xbf
	.byte	0xb
	.long	0xad
	.byte	0x1a
	.uleb128 0xe
	.string	"tag"
	.byte	0x10
	.byte	0xc0
	.byte	0xb
	.long	0xad
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1634
	.byte	0x10
	.byte	0xc4
	.byte	0xb
	.long	0x4ec
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1635
	.byte	0x10
	.byte	0xc8
	.byte	0xd
	.long	0x36c8
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1636
	.byte	0x10
	.byte	0xcb
	.byte	0x11
	.long	0x36b7
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1637
	.byte	0x10
	.byte	0xcf
	.byte	0xf
	.long	0x368d
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1638
	.byte	0x10
	.byte	0xd0
	.byte	0xf
	.long	0x368d
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1458
	.byte	0x10
	.byte	0xd3
	.byte	0xa
	.long	0x7e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1630
	.byte	0x10
	.byte	0xd6
	.byte	0xb
	.long	0xcc
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x367c
	.uleb128 0x8
	.long	0x35b7
	.uleb128 0xa
	.long	.LASF1639
	.byte	0x10
	.byte	0x87
	.byte	0x3
	.long	0x34de
	.uleb128 0x8
	.long	0x3681
	.uleb128 0x10
	.long	0x9f
	.byte	0x10
	.byte	0xa9
	.byte	0x1
	.long	0x36b7
	.uleb128 0x1
	.long	.LASF1640
	.byte	0
	.uleb128 0x1
	.long	.LASF1641
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1642
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1643
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF1644
	.byte	0x10
	.byte	0xaf
	.byte	0x3
	.long	0x3692
	.uleb128 0x8
	.long	0x348f
	.uleb128 0xb
	.long	0x54e
	.long	0x36d8
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF1645
	.byte	0x10
	.byte	0xe9
	.byte	0x3
	.long	0x2bf2
	.uleb128 0x8
	.long	0x36d8
	.uleb128 0x8
	.long	0x2efa
	.uleb128 0xb
	.long	0x346b
	.long	0x36fe
	.uleb128 0x9
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1646
	.byte	0x18
	.byte	0x2f
	.byte	0xf
	.long	0x36ee
	.uleb128 0x10
	.long	0x9f
	.byte	0x19
	.byte	0xb2
	.byte	0x1
	.long	0x39ab
	.uleb128 0x1
	.long	.LASF1647
	.byte	0
	.uleb128 0x1
	.long	.LASF1648
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1649
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1650
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1651
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1652
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1653
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1654
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1655
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1656
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1657
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1658
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1659
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1660
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1661
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1662
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1663
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1664
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1665
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1666
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1667
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1668
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1669
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1670
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1671
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1672
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1673
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1674
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1675
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1676
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1677
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1678
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1679
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1680
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1681
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1682
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1683
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1684
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1685
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1686
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1687
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1688
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1689
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1690
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1691
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1692
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1693
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1694
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1695
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1696
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1697
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1698
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1699
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1700
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1701
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1702
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1703
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1704
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1705
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1706
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1707
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1708
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1709
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1710
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1711
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1712
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1713
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1714
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1715
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1716
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1717
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1718
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1719
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1720
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1721
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1722
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1723
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1724
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1725
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1726
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1727
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1728
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1729
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1730
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1731
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1732
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1733
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1734
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1735
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1736
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1737
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1738
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1739
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1740
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1741
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1742
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1743
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1744
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1745
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1746
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1747
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1748
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1749
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1750
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1751
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1752
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1753
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1754
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1755
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1756
	.byte	0x6d
	.byte	0
	.uleb128 0x6
	.long	.LASF1757
	.byte	0x1a
	.byte	0x25
	.byte	0xe
	.long	0x7e
	.uleb128 0xf
	.long	0x3436
	.byte	0x61
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	gameaction
	.uleb128 0xf
	.long	0x3161
	.byte	0x62
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	gamestate
	.uleb128 0xf
	.long	0x3059
	.byte	0x63
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	gameskill
	.uleb128 0xf
	.long	0x307d
	.byte	0x64
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	respawnmonsters
	.uleb128 0xf
	.long	0x3065
	.byte	0x65
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	gameepisode
	.uleb128 0xf
	.long	0x3071
	.byte	0x66
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	gamemap
	.uleb128 0x1b
	.long	0x30ad
	.byte	0x68
	.uleb128 0x9
	.byte	0x3
	.quad	paused
	.uleb128 0x5
	.long	.LASF1758
	.byte	0x69
	.byte	0x11
	.long	0x4d4
	.uleb128 0x9
	.byte	0x3
	.quad	sendpause
	.uleb128 0x5
	.long	.LASF1759
	.byte	0x6a
	.byte	0x11
	.long	0x4d4
	.uleb128 0x9
	.byte	0x3
	.quad	sendsave
	.uleb128 0x1b
	.long	0x3131
	.byte	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	usergame
	.uleb128 0x5
	.long	.LASF1760
	.byte	0x6d
	.byte	0x11
	.long	0x4d4
	.uleb128 0x9
	.byte	0x3
	.quad	timingdemo
	.uleb128 0xf
	.long	0x30c5
	.byte	0x6e
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	nodrawers
	.uleb128 0xf
	.long	0x30d1
	.byte	0x6f
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	noblit
	.uleb128 0x5
	.long	.LASF1761
	.byte	0x70
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	starttime
	.uleb128 0xf
	.long	0x30b9
	.byte	0x72
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	viewactive
	.uleb128 0x1b
	.long	0x3095
	.byte	0x74
	.uleb128 0x9
	.byte	0x3
	.quad	deathmatch
	.uleb128 0x1b
	.long	0x3089
	.byte	0x75
	.uleb128 0x9
	.byte	0x3
	.quad	netgame
	.uleb128 0xf
	.long	0x31a5
	.byte	0x76
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	playeringame
	.uleb128 0x1b
	.long	0x3189
	.byte	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	players
	.uleb128 0xf
	.long	0x30dd
	.byte	0x79
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	consoleplayer
	.uleb128 0xf
	.long	0x30e9
	.byte	0x7a
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	displayplayer
	.uleb128 0xf
	.long	0x316d
	.byte	0x7b
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	gametic
	.uleb128 0xf
	.long	0x3119
	.byte	0x7c
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	levelstarttic
	.uleb128 0xf
	.long	0x30f5
	.byte	0x7d
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	totalkills
	.uleb128 0xf
	.long	0x3101
	.byte	0x7d
	.byte	0x1d
	.uleb128 0x9
	.byte	0x3
	.quad	totalitems
	.uleb128 0xf
	.long	0x310d
	.byte	0x7d
	.byte	0x29
	.uleb128 0x9
	.byte	0x3
	.quad	totalsecret
	.uleb128 0x5
	.long	.LASF1762
	.byte	0x7f
	.byte	0x11
	.long	0xda
	.uleb128 0x9
	.byte	0x3
	.quad	demoname
	.uleb128 0x1b
	.long	0x3149
	.byte	0x80
	.uleb128 0x9
	.byte	0x3
	.quad	demorecording
	.uleb128 0x1b
	.long	0x313d
	.byte	0x81
	.uleb128 0x9
	.byte	0x3
	.quad	demoplayback
	.uleb128 0x5
	.long	.LASF1763
	.byte	0x82
	.byte	0xa
	.long	0x4d4
	.uleb128 0x9
	.byte	0x3
	.quad	netdemo
	.uleb128 0x5
	.long	.LASF1764
	.byte	0x83
	.byte	0x8
	.long	0x346b
	.uleb128 0x9
	.byte	0x3
	.quad	demobuffer
	.uleb128 0x5
	.long	.LASF1765
	.byte	0x84
	.byte	0x8
	.long	0x346b
	.uleb128 0x9
	.byte	0x3
	.quad	demo_p
	.uleb128 0x5
	.long	.LASF1766
	.byte	0x85
	.byte	0x8
	.long	0x346b
	.uleb128 0x9
	.byte	0x3
	.quad	demoend
	.uleb128 0xf
	.long	0x3155
	.byte	0x86
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	singledemo
	.uleb128 0xf
	.long	0x3212
	.byte	0x88
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	precache
	.uleb128 0xf
	.long	0x31fa
	.byte	0x8a
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	wminfo
	.uleb128 0xb
	.long	0xad
	.long	0x3c4e
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.uleb128 0x9
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	.LASF1509
	.byte	0x8c
	.byte	0x8
	.long	0x3c38
	.uleb128 0x9
	.byte	0x3
	.quad	consistancy
	.uleb128 0x5
	.long	.LASF1767
	.byte	0x8e
	.byte	0x8
	.long	0x346b
	.uleb128 0x9
	.byte	0x3
	.quad	savebuffer
	.uleb128 0x5
	.long	.LASF1768
	.byte	0x94
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_right
	.uleb128 0x5
	.long	.LASF1769
	.byte	0x95
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_left
	.uleb128 0x5
	.long	.LASF1770
	.byte	0x97
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_up
	.uleb128 0x5
	.long	.LASF1771
	.byte	0x98
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_down
	.uleb128 0x5
	.long	.LASF1772
	.byte	0x99
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_strafeleft
	.uleb128 0x5
	.long	.LASF1773
	.byte	0x9a
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_straferight
	.uleb128 0x5
	.long	.LASF1774
	.byte	0x9b
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_fire
	.uleb128 0x5
	.long	.LASF1775
	.byte	0x9c
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_use
	.uleb128 0x5
	.long	.LASF1776
	.byte	0x9d
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_strafe
	.uleb128 0x5
	.long	.LASF1777
	.byte	0x9e
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	key_speed
	.uleb128 0x5
	.long	.LASF1778
	.byte	0xa0
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	mousebfire
	.uleb128 0x5
	.long	.LASF1779
	.byte	0xa1
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	mousebstrafe
	.uleb128 0x5
	.long	.LASF1780
	.byte	0xa2
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	mousebforward
	.uleb128 0x5
	.long	.LASF1781
	.byte	0xa4
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	joybfire
	.uleb128 0x5
	.long	.LASF1782
	.byte	0xa5
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	joybstrafe
	.uleb128 0x5
	.long	.LASF1783
	.byte	0xa6
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	joybuse
	.uleb128 0x5
	.long	.LASF1784
	.byte	0xa7
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	joybspeed
	.uleb128 0xb
	.long	0x54e
	.long	0x3ded
	.uleb128 0x9
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF1506
	.byte	0xaf
	.byte	0xa
	.long	0x3ddd
	.uleb128 0x9
	.byte	0x3
	.quad	forwardmove
	.uleb128 0x5
	.long	.LASF1507
	.byte	0xb0
	.byte	0xa
	.long	0x3ddd
	.uleb128 0x9
	.byte	0x3
	.quad	sidemove
	.uleb128 0xb
	.long	0x54e
	.long	0x3e27
	.uleb128 0x9
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1508
	.byte	0xb1
	.byte	0xa
	.long	0x3e17
	.uleb128 0x9
	.byte	0x3
	.quad	angleturn
	.uleb128 0xb
	.long	0x4d4
	.long	0x3e4c
	.uleb128 0x9
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.long	.LASF1785
	.byte	0xb7
	.byte	0x11
	.long	0x3e3c
	.uleb128 0x9
	.byte	0x3
	.quad	gamekeydown
	.uleb128 0x5
	.long	.LASF1786
	.byte	0xb8
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	turnheld
	.uleb128 0x5
	.long	.LASF1787
	.byte	0xba
	.byte	0xa
	.long	0x3195
	.uleb128 0x9
	.byte	0x3
	.quad	mousearray
	.uleb128 0x5
	.long	.LASF1788
	.byte	0xbb
	.byte	0xa
	.long	0x3ea0
	.uleb128 0x9
	.byte	0x3
	.quad	mousebuttons
	.uleb128 0x8
	.long	0x4d4
	.uleb128 0x5
	.long	.LASF1789
	.byte	0xbe
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	mousex
	.uleb128 0x5
	.long	.LASF1790
	.byte	0xbf
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	mousey
	.uleb128 0x5
	.long	.LASF1791
	.byte	0xc1
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	dclicktime
	.uleb128 0x5
	.long	.LASF1792
	.byte	0xc2
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	dclickstate
	.uleb128 0x5
	.long	.LASF1793
	.byte	0xc3
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	dclicks
	.uleb128 0x5
	.long	.LASF1794
	.byte	0xc4
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	dclicktime2
	.uleb128 0x5
	.long	.LASF1795
	.byte	0xc5
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	dclickstate2
	.uleb128 0x5
	.long	.LASF1796
	.byte	0xc6
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	dclicks2
	.uleb128 0x5
	.long	.LASF1797
	.byte	0xc9
	.byte	0x11
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	joyxmove
	.uleb128 0x5
	.long	.LASF1798
	.byte	0xca
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	joyymove
	.uleb128 0xb
	.long	0x4d4
	.long	0x3f87
	.uleb128 0x9
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF1799
	.byte	0xcb
	.byte	0x11
	.long	0x3f77
	.uleb128 0x9
	.byte	0x3
	.quad	joyarray
	.uleb128 0x5
	.long	.LASF1800
	.byte	0xcc
	.byte	0xa
	.long	0x3ea0
	.uleb128 0x9
	.byte	0x3
	.quad	joybuttons
	.uleb128 0x5
	.long	.LASF1801
	.byte	0xce
	.byte	0x6
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	savegameslot
	.uleb128 0x5
	.long	.LASF1802
	.byte	0xcf
	.byte	0x7
	.long	0xda
	.uleb128 0x9
	.byte	0x3
	.quad	savedescription
	.uleb128 0xb
	.long	0x2ea5
	.long	0x3feb
	.uleb128 0x9
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.long	.LASF1803
	.byte	0xd4
	.byte	0xa
	.long	0x3fdb
	.uleb128 0x9
	.byte	0x3
	.quad	bodyque
	.uleb128 0xf
	.long	0x3243
	.byte	0xd5
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	bodyqueslot
	.uleb128 0x5
	.long	.LASF1804
	.byte	0xd7
	.byte	0x8
	.long	0xcc
	.uleb128 0x9
	.byte	0x3
	.quad	statcopy
	.uleb128 0xb
	.long	0x7e
	.long	0x403c
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.uleb128 0x9
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x1a
	.long	.LASF1805
	.value	0x3d2
	.byte	0x5
	.long	0x4026
	.uleb128 0x9
	.byte	0x3
	.quad	pars
	.uleb128 0xb
	.long	0x7e
	.long	0x4062
	.uleb128 0x9
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x1a
	.long	.LASF1806
	.value	0x3db
	.byte	0x5
	.long	0x4052
	.uleb128 0x9
	.byte	0x3
	.quad	cpars
	.uleb128 0x1a
	.long	.LASF1807
	.value	0x3e7
	.byte	0xa
	.long	0x4d4
	.uleb128 0x9
	.byte	0x3
	.quad	secretexit
	.uleb128 0x16
	.long	.LASF1808
	.byte	0x1
	.value	0x4a3
	.byte	0x10
	.long	0x4d4
	.uleb128 0xb
	.long	0x4a
	.long	0x40ab
	.uleb128 0x9
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.long	.LASF1809
	.value	0x4a6
	.byte	0x6
	.long	0x409b
	.uleb128 0x9
	.byte	0x3
	.quad	savename
	.uleb128 0x1a
	.long	.LASF1810
	.value	0x530
	.byte	0x9
	.long	0x3b5
	.uleb128 0x9
	.byte	0x3
	.quad	d_skill
	.uleb128 0x1a
	.long	.LASF1811
	.value	0x531
	.byte	0x9
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	d_episode
	.uleb128 0x1a
	.long	.LASF1812
	.value	0x532
	.byte	0x9
	.long	0x7e
	.uleb128 0x9
	.byte	0x3
	.quad	d_map
	.uleb128 0x1a
	.long	.LASF1813
	.value	0x626
	.byte	0x7
	.long	0xce
	.uleb128 0x9
	.byte	0x3
	.quad	defdemoname
	.uleb128 0xd
	.long	.LASF1814
	.byte	0x1b
	.byte	0x3d
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF1828
	.byte	0x14
	.byte	0x36
	.byte	0x9
	.long	0x4138
	.uleb128 0x4
	.long	0xcc
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0xd
	.long	.LASF1815
	.byte	0x1c
	.byte	0x4f
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1816
	.byte	0x1d
	.byte	0x4f
	.byte	0x7
	.long	0xcc
	.long	0x415b
	.uleb128 0x4
	.long	0xce
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x11
	.long	.LASF1817
	.byte	0x14
	.byte	0x30
	.byte	0x7
	.long	0xcc
	.long	0x417b
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0xcc
	.byte	0
	.uleb128 0x11
	.long	.LASF1818
	.byte	0x1e
	.byte	0x69
	.byte	0xc
	.long	0x7e
	.long	0x4191
	.uleb128 0x4
	.long	0x85
	.byte	0
	.uleb128 0xd
	.long	.LASF1819
	.byte	0x1f
	.byte	0x27
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1820
	.byte	0x20
	.byte	0x23
	.byte	0x1
	.long	0x4d4
	.long	0x41b9
	.uleb128 0x4
	.long	0x85
	.uleb128 0x4
	.long	0xcc
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0xd
	.long	.LASF1821
	.byte	0x17
	.byte	0x28
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1822
	.byte	0x17
	.byte	0x26
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1823
	.byte	0x17
	.byte	0x24
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1824
	.byte	0x17
	.byte	0x22
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1825
	.byte	0x16
	.byte	0x22
	.byte	0x5
	.long	0x7e
	.long	0x41ef
	.uleb128 0x4
	.long	0xce
	.byte	0
	.uleb128 0xd
	.long	.LASF1826
	.byte	0x21
	.byte	0x67
	.byte	0x6
	.uleb128 0x39
	.long	.LASF1827
	.byte	0x1
	.value	0x4a4
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF1829
	.byte	0x14
	.byte	0x31
	.byte	0x9
	.long	0x4212
	.uleb128 0x4
	.long	0xcc
	.byte	0
	.uleb128 0xd
	.long	.LASF1830
	.byte	0x17
	.byte	0x29
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1831
	.byte	0x17
	.byte	0x27
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1832
	.byte	0x17
	.byte	0x25
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1833
	.byte	0x17
	.byte	0x23
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1834
	.byte	0x22
	.byte	0x9c
	.byte	0xc
	.long	0x7e
	.long	0x424d
	.uleb128 0x4
	.long	0x85
	.uleb128 0x4
	.long	0x85
	.byte	0
	.uleb128 0x11
	.long	.LASF1835
	.byte	0x20
	.byte	0x29
	.byte	0x1
	.long	0x7e
	.long	0x4268
	.uleb128 0x4
	.long	0x85
	.uleb128 0x4
	.long	0x4268
	.byte	0
	.uleb128 0x8
	.long	0x346b
	.uleb128 0x11
	.long	.LASF1836
	.byte	0x22
	.byte	0x8d
	.byte	0xe
	.long	0xce
	.long	0x4288
	.uleb128 0x4
	.long	0xce
	.uleb128 0x4
	.long	0x85
	.byte	0
	.uleb128 0x1c
	.long	.LASF1837
	.byte	0x23
	.byte	0x2f
	.byte	0x6
	.long	0x429a
	.uleb128 0x4
	.long	0x429a
	.byte	0
	.uleb128 0x8
	.long	0x301d
	.uleb128 0x11
	.long	.LASF1838
	.byte	0x22
	.byte	0x2b
	.byte	0xe
	.long	0xcc
	.long	0x42bf
	.uleb128 0x4
	.long	0xcc
	.uleb128 0x4
	.long	0xea
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0xd
	.long	.LASF1839
	.byte	0x24
	.byte	0x2b
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1840
	.byte	0x1d
	.byte	0x48
	.byte	0x5
	.long	0x7e
	.long	0x42dd
	.uleb128 0x4
	.long	0xce
	.byte	0
	.uleb128 0x3a
	.long	.LASF1841
	.byte	0x1
	.value	0x349
	.byte	0x6
	.long	0x42f0
	.uleb128 0x4
	.long	0x31d9
	.byte	0
	.uleb128 0x20
	.long	.LASF1866
	.byte	0x1f
	.byte	0x24
	.byte	0x5
	.long	0x7e
	.uleb128 0x1c
	.long	.LASF1842
	.byte	0x25
	.byte	0x3b
	.byte	0x1
	.long	0x4313
	.uleb128 0x4
	.long	0xcc
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x11
	.long	.LASF1843
	.byte	0x26
	.byte	0x6e
	.byte	0x1
	.long	0x2ea5
	.long	0x4338
	.uleb128 0x4
	.long	0x54e
	.uleb128 0x4
	.long	0x54e
	.uleb128 0x4
	.long	0x54e
	.uleb128 0x4
	.long	0x274c
	.byte	0
	.uleb128 0x11
	.long	.LASF1844
	.byte	0x27
	.byte	0x8e
	.byte	0x1
	.long	0x36e4
	.long	0x4353
	.uleb128 0x4
	.long	0x54e
	.uleb128 0x4
	.long	0x54e
	.byte	0
	.uleb128 0x1c
	.long	.LASF1845
	.byte	0x26
	.byte	0x74
	.byte	0x7
	.long	0x4365
	.uleb128 0x4
	.long	0x2ea5
	.byte	0
	.uleb128 0x11
	.long	.LASF1846
	.byte	0x26
	.byte	0xd2
	.byte	0x9
	.long	0x4d4
	.long	0x4385
	.uleb128 0x4
	.long	0x2ea5
	.uleb128 0x4
	.long	0x54e
	.uleb128 0x4
	.long	0x54e
	.byte	0
	.uleb128 0xd
	.long	.LASF1847
	.byte	0x1b
	.byte	0x3b
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1848
	.byte	0x28
	.byte	0x25
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1849
	.byte	0x23
	.byte	0x28
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1850
	.byte	0x29
	.byte	0x37
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1851
	.byte	0x24
	.byte	0x23
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1852
	.byte	0x2a
	.byte	0x2d
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1853
	.byte	0x2b
	.byte	0x23
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1854
	.byte	0x25
	.byte	0x5c
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1855
	.byte	0x25
	.byte	0x5b
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF1856
	.byte	0x1c
	.byte	0x59
	.byte	0x6
	.long	0x43e0
	.uleb128 0x4
	.long	0xce
	.uleb128 0x23
	.byte	0
	.uleb128 0x3b
	.long	.LASF1857
	.byte	0xa
	.value	0x16d
	.byte	0xc
	.long	0x7e
	.long	0x43fd
	.uleb128 0x4
	.long	0xce
	.uleb128 0x4
	.long	0x85
	.uleb128 0x23
	.byte	0
	.uleb128 0xd
	.long	.LASF1858
	.byte	0x20
	.byte	0x2d
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1859
	.byte	0x28
	.byte	0x2b
	.byte	0x6
	.uleb128 0x11
	.long	.LASF1860
	.byte	0x28
	.byte	0x22
	.byte	0x9
	.long	0x4d4
	.long	0x4423
	.uleb128 0x4
	.long	0x4423
	.byte	0
	.uleb128 0x8
	.long	0x3386
	.uleb128 0x11
	.long	.LASF1861
	.byte	0x24
	.byte	0x20
	.byte	0x9
	.long	0x4d4
	.long	0x443e
	.uleb128 0x4
	.long	0x4423
	.byte	0
	.uleb128 0x11
	.long	.LASF1862
	.byte	0x2a
	.byte	0x4d
	.byte	0x9
	.long	0x4d4
	.long	0x4454
	.uleb128 0x4
	.long	0x4423
	.byte	0
	.uleb128 0x11
	.long	.LASF1863
	.byte	0x29
	.byte	0x35
	.byte	0x9
	.long	0x4d4
	.long	0x446a
	.uleb128 0x4
	.long	0x4423
	.byte	0
	.uleb128 0xd
	.long	.LASF1864
	.byte	0x2c
	.byte	0x37
	.byte	0x6
	.uleb128 0xd
	.long	.LASF1865
	.byte	0x14
	.byte	0x35
	.byte	0x9
	.uleb128 0x20
	.long	.LASF1867
	.byte	0x1c
	.byte	0x2d
	.byte	0x5
	.long	0x7e
	.uleb128 0x1c
	.long	.LASF1868
	.byte	0x2d
	.byte	0x22
	.byte	0x1
	.long	0x44a7
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x3b5
	.byte	0
	.uleb128 0x11
	.long	.LASF1869
	.byte	0x22
	.byte	0x3d
	.byte	0xe
	.long	0xcc
	.long	0x44c7
	.uleb128 0x4
	.long	0xcc
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x11
	.long	.LASF1870
	.byte	0x2e
	.byte	0x36
	.byte	0x5
	.long	0x7e
	.long	0x44dd
	.uleb128 0x4
	.long	0xce
	.byte	0
	.uleb128 0x11
	.long	.LASF1871
	.byte	0x2e
	.byte	0x31
	.byte	0x5
	.long	0x7e
	.long	0x44f3
	.uleb128 0x4
	.long	0xce
	.byte	0
	.uleb128 0x20
	.long	.LASF1872
	.byte	0x29
	.byte	0x39
	.byte	0x6
	.long	0x4a
	.uleb128 0x20
	.long	.LASF1873
	.byte	0x1c
	.byte	0x4a
	.byte	0xb
	.long	0x450b
	.uleb128 0x8
	.long	0x2e6e
	.uleb128 0x25
	.long	.LASF1909
	.value	0x66f
	.byte	0x9
	.long	0x4d4
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4542
	.uleb128 0x14
	.long	.LASF1875
	.value	0x671
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF1876
	.value	0x659
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4570
	.uleb128 0x13
	.long	.LASF1881
	.value	0x659
	.byte	0x18
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1877
	.value	0x62e
	.byte	0x6
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x45c9
	.uleb128 0x14
	.long	.LASF1878
	.value	0x630
	.byte	0xd
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"i"
	.value	0x631
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF1879
	.value	0x631
	.byte	0x18
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"map"
	.value	0x631
	.byte	0x21
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF1880
	.value	0x628
	.byte	0x6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x45f7
	.uleb128 0x13
	.long	.LASF1881
	.value	0x628
	.byte	0x1f
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF1882
	.value	0x60d
	.byte	0x6
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4623
	.uleb128 0xc
	.string	"i"
	.value	0x60f
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF1883
	.value	0x5fa
	.byte	0x6
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x466d
	.uleb128 0x13
	.long	.LASF1881
	.value	0x5fa
	.byte	0x1a
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"i"
	.value	0x5fc
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.long	.LASF1884
	.value	0x5fd
	.byte	0xc
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1885
	.value	0x5e2
	.byte	0x6
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x469b
	.uleb128 0x1f
	.string	"cmd"
	.value	0x5e2
	.byte	0x23
	.long	0x450b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1886
	.value	0x5d3
	.byte	0x6
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x46c9
	.uleb128 0x1f
	.string	"cmd"
	.value	0x5d3
	.byte	0x22
	.long	0x450b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1887
	.value	0x555
	.byte	0x1
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4722
	.uleb128 0x13
	.long	.LASF1878
	.value	0x556
	.byte	0xb
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.long	.LASF1879
	.value	0x557
	.byte	0x8
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"map"
	.value	0x558
	.byte	0x8
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"i"
	.value	0x55a
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF1898
	.value	0x541
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF1888
	.value	0x535
	.byte	0x1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4787
	.uleb128 0x13
	.long	.LASF1878
	.value	0x536
	.byte	0xb
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.long	.LASF1879
	.value	0x537
	.byte	0x8
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"map"
	.value	0x538
	.byte	0x8
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.long	.LASF1889
	.value	0x4f6
	.byte	0x6
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x47f4
	.uleb128 0x14
	.long	.LASF1881
	.value	0x4f8
	.byte	0xa
	.long	0x47f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.long	.LASF1890
	.value	0x4f9
	.byte	0xa
	.long	0x4804
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x14
	.long	.LASF1891
	.value	0x4fa
	.byte	0xb
	.long	0xce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x14
	.long	.LASF1892
	.value	0x4fb
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0xc
	.string	"i"
	.value	0x4fc
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0xb
	.long	0x4a
	.long	0x4804
	.uleb128 0x9
	.long	0x43
	.byte	0x63
	.byte	0
	.uleb128 0xb
	.long	0x4a
	.long	0x4814
	.uleb128 0x9
	.long	0x43
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.long	.LASF1893
	.value	0x4ed
	.byte	0x1
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x4851
	.uleb128 0x13
	.long	.LASF1894
	.value	0x4ee
	.byte	0x7
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.long	.LASF1891
	.value	0x4ef
	.byte	0x9
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x12
	.long	.LASF1895
	.value	0x4b1
	.byte	0x6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x48c3
	.uleb128 0x14
	.long	.LASF1892
	.value	0x4b3
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"i"
	.value	0x4b4
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"a"
	.value	0x4b5
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"b"
	.value	0x4b5
	.byte	0xc
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"c"
	.value	0x4b5
	.byte	0xe
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF1896
	.value	0x4b6
	.byte	0xa
	.long	0x4804
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.long	.LASF1897
	.value	0x4a8
	.byte	0x6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x48f1
	.uleb128 0x13
	.long	.LASF1881
	.value	0x4a8
	.byte	0x18
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF1899
	.value	0x494
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF1900
	.value	0x47b
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF1901
	.value	0x3fc
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x494f
	.uleb128 0xc
	.string	"i"
	.value	0x3fe
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF1902
	.value	0x3f1
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1903
	.value	0x3ea
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1904
	.value	0x3ca
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF1905
	.value	0x39c
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x49d5
	.uleb128 0x13
	.long	.LASF1906
	.value	0x39c
	.byte	0x16
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"i"
	.value	0x39e
	.byte	0x25
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF1907
	.value	0x381
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a2c
	.uleb128 0x13
	.long	.LASF1906
	.value	0x381
	.byte	0x23
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"i"
	.value	0x383
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xc
	.string	"j"
	.value	0x383
	.byte	0x17
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.long	.LASF1908
	.value	0x384
	.byte	0xc
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF1910
	.value	0x34c
	.byte	0x1
	.long	0x4d4
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4abe
	.uleb128 0x13
	.long	.LASF1906
	.value	0x34d
	.byte	0x8
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF1911
	.value	0x34e
	.byte	0xf
	.long	0x31d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"x"
	.value	0x350
	.byte	0xe
	.long	0x54e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"y"
	.value	0x351
	.byte	0xe
	.long	0x54e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"ss"
	.value	0x352
	.byte	0x12
	.long	0x36e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"an"
	.value	0x353
	.byte	0xf
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"mo"
	.value	0x354
	.byte	0xe
	.long	0x2ea5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"i"
	.value	0x355
	.byte	0xb
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.long	.LASF1912
	.value	0x320
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b45
	.uleb128 0x13
	.long	.LASF1465
	.value	0x320
	.byte	0x1a
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.string	"p"
	.value	0x322
	.byte	0xf
	.long	0x36e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"i"
	.value	0x323
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.long	.LASF1483
	.value	0x324
	.byte	0xa
	.long	0x2eca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF1493
	.value	0x325
	.byte	0xa
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.long	.LASF1494
	.value	0x326
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF1495
	.value	0x327
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x12
	.long	.LASF1913
	.value	0x30b
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b80
	.uleb128 0x13
	.long	.LASF1465
	.value	0x30b
	.byte	0x1f
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"p"
	.value	0x30d
	.byte	0xf
	.long	0x36e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1914
	.value	0x2f9
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bbb
	.uleb128 0x13
	.long	.LASF1465
	.value	0x2f9
	.byte	0x18
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"p"
	.value	0x2fb
	.byte	0xf
	.long	0x36e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1915
	.value	0x25d
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c3a
	.uleb128 0xc
	.string	"i"
	.value	0x25f
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"buf"
	.value	0x260
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"cmd"
	.value	0x261
	.byte	0xf
	.long	0x450b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x14
	.long	.LASF1916
	.value	0x2a3
	.byte	0xf
	.long	0x4c3a
	.uleb128 0x9
	.byte	0x3
	.quad	turbomessage.0
	.uleb128 0x16
	.long	.LASF1917
	.byte	0x1
	.value	0x2a4
	.byte	0x10
	.long	0x4c4a
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x4a
	.long	0x4c4a
	.uleb128 0x9
	.long	0x43
	.byte	0x4f
	.byte	0
	.uleb128 0xb
	.long	0xce
	.long	0x4c5a
	.uleb128 0x9
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x25
	.long	.LASF1918
	.value	0x1f8
	.byte	0x9
	.long	0x4d4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c8b
	.uleb128 0x1f
	.string	"ev"
	.value	0x1f8
	.byte	0x1f
	.long	0x4423
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF1919
	.value	0x1bd
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cb7
	.uleb128 0xc
	.string	"i"
	.value	0x1bf
	.byte	0x15
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3d
	.long	.LASF1920
	.byte	0x1
	.byte	0xed
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d52
	.uleb128 0x2e
	.string	"cmd"
	.byte	0xed
	.byte	0x1f
	.long	0x450b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"i"
	.byte	0xef
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF1921
	.byte	0xf0
	.byte	0xd
	.long	0x4d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF1922
	.byte	0xf1
	.byte	0xd
	.long	0x4d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF1403
	.byte	0xf2
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF1923
	.byte	0xf3
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF1924
	.byte	0xf4
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF1925
	.byte	0xf5
	.byte	0xa
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF1926
	.byte	0xf7
	.byte	0xf
	.long	0x450b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3e
	.long	.LASF1927
	.byte	0x1
	.byte	0xdb
	.byte	0x5
	.long	0x7e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.string	"cmd"
	.byte	0xdb
	.byte	0x1e
	.long	0x450b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"i"
	.byte	0xdd
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"sum"
	.byte	0xde
	.long	0x7e
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
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
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x7a
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
.LASF1430:
	.string	"MF_NOCLIP"
.LASF908:
	.string	"S_BSPI_RUN3"
.LASF909:
	.string	"S_BSPI_RUN4"
.LASF910:
	.string	"S_BSPI_RUN5"
.LASF911:
	.string	"S_BSPI_RUN6"
.LASF912:
	.string	"S_BSPI_RUN7"
.LASF913:
	.string	"S_BSPI_RUN8"
.LASF914:
	.string	"S_BSPI_RUN9"
.LASF1566:
	.string	"playerstarts"
.LASF1691:
	.string	"sfx_cybsit"
.LASF198:
	.string	"SPR_YSKU"
.LASF1657:
	.string	"sfx_sawup"
.LASF1499:
	.string	"attacker"
.LASF561:
	.string	"S_FIRE10"
.LASF562:
	.string	"S_FIRE11"
.LASF563:
	.string	"S_FIRE12"
.LASF564:
	.string	"S_FIRE13"
.LASF565:
	.string	"S_FIRE14"
.LASF566:
	.string	"S_FIRE15"
.LASF567:
	.string	"S_FIRE16"
.LASF568:
	.string	"S_FIRE17"
.LASF43:
	.string	"_unused2"
.LASF570:
	.string	"S_FIRE19"
.LASF1568:
	.string	"precache"
.LASF1383:
	.string	"MT_MISC84"
.LASF1316:
	.string	"MT_MISC20"
.LASF1129:
	.string	"S_MEGA2"
.LASF29:
	.string	"_fileno"
.LASF1131:
	.string	"S_MEGA4"
.LASF1320:
	.string	"MT_MISC24"
.LASF1321:
	.string	"MT_MISC25"
.LASF1323:
	.string	"MT_MISC26"
.LASF1324:
	.string	"MT_MISC27"
.LASF1325:
	.string	"MT_MISC28"
.LASF1328:
	.string	"MT_MISC29"
.LASF760:
	.string	"S_SARG_PAIN2"
.LASF1773:
	.string	"key_straferight"
.LASF1464:
	.string	"threshold"
.LASF1765:
	.string	"demo_p"
.LASF79:
	.string	"wp_pistol"
.LASF1440:
	.string	"MF_COUNTKILL"
.LASF239:
	.string	"SPR_COL1"
.LASF240:
	.string	"SPR_COL2"
.LASF241:
	.string	"SPR_COL3"
.LASF242:
	.string	"SPR_COL4"
.LASF251:
	.string	"SPR_COL5"
.LASF245:
	.string	"SPR_COL6"
.LASF1828:
	.string	"Z_ChangeTag2"
.LASF58:
	.string	"pack_plut"
.LASF1439:
	.string	"MF_INFLOAT"
.LASF1753:
	.string	"sfx_skesit"
.LASF1734:
	.string	"sfx_tink"
.LASF571:
	.string	"S_FIRE20"
.LASF572:
	.string	"S_FIRE21"
.LASF573:
	.string	"S_FIRE22"
.LASF574:
	.string	"S_FIRE23"
.LASF575:
	.string	"S_FIRE24"
.LASF225:
	.string	"SPR_COLU"
.LASF577:
	.string	"S_FIRE26"
.LASF62:
	.string	"GS_FINALE"
.LASF579:
	.string	"S_FIRE28"
.LASF580:
	.string	"S_FIRE29"
.LASF1506:
	.string	"forwardmove"
.LASF1329:
	.string	"MT_MISC30"
.LASF1243:
	.string	"action"
.LASF1331:
	.string	"MT_MISC32"
.LASF1332:
	.string	"MT_MISC33"
.LASF922:
	.string	"S_BSPI_PAIN"
.LASF1334:
	.string	"MT_MISC35"
.LASF394:
	.string	"S_BFGEXP"
.LASF93:
	.string	"am_misl"
.LASF1337:
	.string	"MT_MISC38"
.LASF1338:
	.string	"MT_MISC39"
.LASF1922:
	.string	"bstrafe"
.LASF1621:
	.string	"floorpic"
.LASF924:
	.string	"S_BSPI_DIE1"
.LASF1764:
	.string	"demobuffer"
.LASF1415:
	.string	"NUMPSPRITES"
.LASF929:
	.string	"S_BSPI_DIE6"
.LASF1740:
	.string	"sfx_getpow"
.LASF625:
	.string	"S_SKEL_RAISE4"
.LASF1475:
	.string	"viewz"
.LASF1534:
	.string	"nomonsters"
.LASF820:
	.string	"S_BOSS_RAISE1"
.LASF821:
	.string	"S_BOSS_RAISE2"
.LASF1263:
	.string	"MT_HEAD"
.LASF822:
	.string	"S_BOSS_RAISE3"
.LASF581:
	.string	"S_FIRE30"
.LASF1923:
	.string	"tspeed"
.LASF726:
	.string	"S_TROO_PAIN"
.LASF1015:
	.string	"S_SSWV_DIE1"
.LASF825:
	.string	"S_BOSS_RAISE6"
.LASF1017:
	.string	"S_SSWV_DIE3"
.LASF1018:
	.string	"S_SSWV_DIE4"
.LASF1019:
	.string	"S_SSWV_DIE5"
.LASF193:
	.string	"SPR_BKEY"
.LASF837:
	.string	"S_BOS2_ATK1"
.LASF838:
	.string	"S_BOS2_ATK2"
.LASF839:
	.string	"S_BOS2_ATK3"
.LASF227:
	.string	"SPR_GOR1"
.LASF234:
	.string	"SPR_GOR2"
.LASF34:
	.string	"_shortbuf"
.LASF236:
	.string	"SPR_GOR4"
.LASF237:
	.string	"SPR_GOR5"
.LASF1341:
	.string	"MT_MISC42"
.LASF1342:
	.string	"MT_MISC43"
.LASF594:
	.string	"S_SKEL_RUN1"
.LASF595:
	.string	"S_SKEL_RUN2"
.LASF596:
	.string	"S_SKEL_RUN3"
.LASF597:
	.string	"S_SKEL_RUN4"
.LASF598:
	.string	"S_SKEL_RUN5"
.LASF599:
	.string	"S_SKEL_RUN6"
.LASF600:
	.string	"S_SKEL_RUN7"
.LASF601:
	.string	"S_SKEL_RUN8"
.LASF602:
	.string	"S_SKEL_RUN9"
.LASF82:
	.string	"wp_missile"
.LASF1528:
	.string	"maxsecret"
.LASF1600:
	.string	"ga_screenshot"
.LASF1080:
	.string	"S_BEXP2"
.LASF1391:
	.string	"seestate"
.LASF1758:
	.string	"sendpause"
.LASF1082:
	.string	"S_BEXP4"
.LASF775:
	.string	"S_HEAD_ATK1"
.LASF776:
	.string	"S_HEAD_ATK2"
.LASF777:
	.string	"S_HEAD_ATK3"
.LASF1636:
	.string	"slopetype"
.LASF1822:
	.string	"P_ArchiveThinkers"
.LASF1029:
	.string	"S_SSWV_RAISE1"
.LASF1030:
	.string	"S_SSWV_RAISE2"
.LASF1031:
	.string	"S_SSWV_RAISE3"
.LASF1032:
	.string	"S_SSWV_RAISE4"
.LASF1033:
	.string	"S_SSWV_RAISE5"
.LASF107:
	.string	"angle"
.LASF1837:
	.string	"WI_Start"
.LASF1258:
	.string	"MT_FATSHOT"
.LASF213:
	.string	"SPR_CELL"
.LASF1851:
	.string	"AM_Ticker"
.LASF214:
	.string	"SPR_CELP"
.LASF1195:
	.string	"S_HEARTCOL"
.LASF1631:
	.string	"linecount"
.LASF1471:
	.string	"numlines"
.LASF1112:
	.string	"S_MEDI"
.LASF1119:
	.string	"S_PINV"
.LASF1307:
	.string	"MT_INS"
.LASF1350:
	.string	"MT_MISC51"
.LASF1351:
	.string	"MT_MISC52"
.LASF1305:
	.string	"MT_INV"
.LASF1353:
	.string	"MT_MISC54"
.LASF1209:
	.string	"S_BTORCHSHRT"
.LASF330:
	.string	"S_MISSILEUP"
.LASF1356:
	.string	"MT_MISC57"
.LASF1357:
	.string	"MT_MISC58"
.LASF1358:
	.string	"MT_MISC59"
.LASF1899:
	.string	"G_DoWorldDone"
.LASF507:
	.string	"S_SPOS_RAISE1"
.LASF1757:
	.string	"skytexture"
.LASF1779:
	.string	"mousebstrafe"
.LASF55:
	.string	"doom"
.LASF1651:
	.string	"sfx_dshtgn"
.LASF301:
	.string	"S_SGUNFLASH1"
.LASF302:
	.string	"S_SGUNFLASH2"
.LASF849:
	.string	"S_BOS2_RAISE1"
.LASF850:
	.string	"S_BOS2_RAISE2"
.LASF851:
	.string	"S_BOS2_RAISE3"
.LASF852:
	.string	"S_BOS2_RAISE4"
.LASF853:
	.string	"S_BOS2_RAISE5"
.LASF15:
	.string	"_flags"
.LASF855:
	.string	"S_BOS2_RAISE7"
.LASF614:
	.string	"S_SKEL_PAIN"
.LASF1101:
	.string	"S_RKEY"
.LASF128:
	.string	"next"
.LASF1598:
	.string	"ga_victory"
.LASF1842:
	.string	"S_StartSound"
.LASF1663:
	.string	"sfx_firsht"
.LASF1655:
	.string	"sfx_plasma"
.LASF283:
	.string	"S_PISTOLUP"
.LASF969:
	.string	"S_CYBER_DIE8"
.LASF1668:
	.string	"sfx_dorcls"
.LASF12:
	.string	"__off_t"
.LASF1359:
	.string	"MT_MISC60"
.LASF1360:
	.string	"MT_MISC61"
.LASF1361:
	.string	"MT_MISC62"
.LASF1362:
	.string	"MT_MISC63"
.LASF1363:
	.string	"MT_MISC64"
.LASF1364:
	.string	"MT_MISC65"
.LASF1365:
	.string	"MT_MISC66"
.LASF1366:
	.string	"MT_MISC67"
.LASF398:
	.string	"S_EXPLODE1"
.LASF399:
	.string	"S_EXPLODE2"
.LASF400:
	.string	"S_EXPLODE3"
.LASF1746:
	.string	"sfx_manatk"
.LASF589:
	.string	"S_TRACEEXP1"
.LASF590:
	.string	"S_TRACEEXP2"
.LASF591:
	.string	"S_TRACEEXP3"
.LASF1864:
	.string	"M_StartControlPanel"
.LASF1608:
	.string	"BT_WEAPONSHIFT"
.LASF977:
	.string	"S_PAIN_RUN5"
.LASF1079:
	.string	"S_BEXP"
.LASF978:
	.string	"S_PAIN_RUN6"
.LASF1500:
	.string	"extralight"
.LASF1196:
	.string	"S_HEARTCOL2"
.LASF375:
	.string	"S_RBALLX1"
.LASF1654:
	.string	"sfx_dbload"
.LASF1525:
	.string	"last"
.LASF1405:
	.string	"height"
.LASF1290:
	.string	"MT_TELEPORTMAN"
.LASF1563:
	.string	"playeringame"
.LASF35:
	.string	"_lock"
.LASF1877:
	.string	"G_DoPlayDemo"
.LASF1882:
	.string	"G_BeginRecording"
.LASF60:
	.string	"GS_LEVEL"
.LASF1369:
	.string	"MT_MISC70"
.LASF158:
	.string	"SPR_IFOG"
.LASF1371:
	.string	"MT_MISC72"
.LASF1372:
	.string	"MT_MISC73"
.LASF1373:
	.string	"MT_MISC74"
.LASF1374:
	.string	"MT_MISC75"
.LASF1375:
	.string	"MT_MISC76"
.LASF1202:
	.string	"S_GREENTORCH2"
.LASF1203:
	.string	"S_GREENTORCH3"
.LASF1204:
	.string	"S_GREENTORCH4"
.LASF1043:
	.string	"S_COMMKEEN9"
.LASF1526:
	.string	"maxkills"
.LASF692:
	.string	"S_CPOS_PAIN2"
.LASF915:
	.string	"S_BSPI_RUN10"
.LASF916:
	.string	"S_BSPI_RUN11"
.LASF917:
	.string	"S_BSPI_RUN12"
.LASF999:
	.string	"S_SSWV_RUN1"
.LASF1000:
	.string	"S_SSWV_RUN2"
.LASF1001:
	.string	"S_SSWV_RUN3"
.LASF1002:
	.string	"S_SSWV_RUN4"
.LASF1003:
	.string	"S_SSWV_RUN5"
.LASF1004:
	.string	"S_SSWV_RUN6"
.LASF1005:
	.string	"S_SSWV_RUN7"
.LASF1006:
	.string	"S_SSWV_RUN8"
.LASF1184:
	.string	"S_SKULLCOL"
.LASF1593:
	.string	"ga_newgame"
.LASF1257:
	.string	"MT_FATSO"
.LASF728:
	.string	"S_TROO_DIE1"
.LASF729:
	.string	"S_TROO_DIE2"
.LASF730:
	.string	"S_TROO_DIE3"
.LASF731:
	.string	"S_TROO_DIE4"
.LASF732:
	.string	"S_TROO_DIE5"
.LASF49:
	.string	"shareware"
.LASF1109:
	.string	"S_YSKULL"
.LASF1110:
	.string	"S_YSKULL2"
.LASF211:
	.string	"SPR_ROCK"
.LASF1282:
	.string	"MT_ROCKET"
.LASF1380:
	.string	"MT_MISC81"
.LASF1381:
	.string	"MT_MISC82"
.LASF1382:
	.string	"MT_MISC83"
.LASF687:
	.string	"S_CPOS_ATK1"
.LASF688:
	.string	"S_CPOS_ATK2"
.LASF689:
	.string	"S_CPOS_ATK3"
.LASF690:
	.string	"S_CPOS_ATK4"
.LASF1249:
	.string	"MT_PLAYER"
.LASF223:
	.string	"SPR_SHOT"
.LASF416:
	.string	"S_IFOG2"
.LASF417:
	.string	"S_IFOG3"
.LASF418:
	.string	"S_IFOG4"
.LASF419:
	.string	"S_IFOG5"
.LASF152:
	.string	"SPR_PLSE"
.LASF144:
	.string	"SPR_PLSF"
.LASF143:
	.string	"SPR_PLSG"
.LASF812:
	.string	"S_BOSS_PAIN2"
.LASF1549:
	.string	"consoleplayer"
.LASF512:
	.string	"S_VILE_STND"
.LASF1527:
	.string	"maxitems"
.LASF1040:
	.string	"S_COMMKEEN6"
.LASF1041:
	.string	"S_COMMKEEN7"
.LASF1042:
	.string	"S_COMMKEEN8"
.LASF151:
	.string	"SPR_PLSS"
.LASF891:
	.string	"S_SPID_PAIN2"
.LASF1681:
	.string	"sfx_oof"
.LASF1406:
	.string	"mass"
.LASF1722:
	.string	"sfx_posact"
.LASF264:
	.string	"SPR_POB1"
.LASF265:
	.string	"SPR_POB2"
.LASF1548:
	.string	"noblit"
.LASF1113:
	.string	"S_SOUL"
.LASF1713:
	.string	"sfx_skldth"
.LASF1123:
	.string	"S_PSTR"
.LASF68:
	.string	"sk_hard"
.LASF955:
	.string	"S_CYBER_ATK1"
.LASF956:
	.string	"S_CYBER_ATK2"
.LASF957:
	.string	"S_CYBER_ATK3"
.LASF958:
	.string	"S_CYBER_ATK4"
.LASF959:
	.string	"S_CYBER_ATK5"
.LASF960:
	.string	"S_CYBER_ATK6"
.LASF1838:
	.string	"memcpy"
.LASF1150:
	.string	"S_BFUG"
.LASF190:
	.string	"SPR_FCAN"
.LASF633:
	.string	"S_FATT_STND"
.LASF1070:
	.string	"S_BRAINEXPLODE1"
.LASF1071:
	.string	"S_BRAINEXPLODE2"
.LASF1072:
	.string	"S_BRAINEXPLODE3"
.LASF354:
	.string	"S_BFGUP"
.LASF195:
	.string	"SPR_YKEY"
.LASF741:
	.string	"S_TROO_RAISE1"
.LASF742:
	.string	"S_TROO_RAISE2"
.LASF743:
	.string	"S_TROO_RAISE3"
.LASF744:
	.string	"S_TROO_RAISE4"
.LASF745:
	.string	"S_TROO_RAISE5"
.LASF1154:
	.string	"S_PLAS"
.LASF1036:
	.string	"S_COMMKEEN2"
.LASF1037:
	.string	"S_COMMKEEN3"
.LASF1038:
	.string	"S_COMMKEEN4"
.LASF1039:
	.string	"S_COMMKEEN5"
.LASF420:
	.string	"S_PLAY"
.LASF986:
	.string	"S_PAIN_DIE2"
.LASF987:
	.string	"S_PAIN_DIE3"
.LASF988:
	.string	"S_PAIN_DIE4"
.LASF989:
	.string	"S_PAIN_DIE5"
.LASF990:
	.string	"S_PAIN_DIE6"
.LASF1260:
	.string	"MT_TROOP"
.LASF541:
	.string	"S_VILE_PAIN2"
.LASF669:
	.string	"S_FATT_RAISE1"
.LASF83:
	.string	"wp_plasma"
.LASF671:
	.string	"S_FATT_RAISE3"
.LASF672:
	.string	"S_FATT_RAISE4"
.LASF673:
	.string	"S_FATT_RAISE5"
.LASF674:
	.string	"S_FATT_RAISE6"
.LASF21:
	.string	"_IO_write_end"
.LASF676:
	.string	"S_FATT_RAISE8"
.LASF1422:
	.string	"MF_NOBLOCKMAP"
.LASF1794:
	.string	"dclicktime2"
.LASF385:
	.string	"S_ROCKET"
.LASF1281:
	.string	"MT_HEADSHOT"
.LASF1444:
	.string	"MF_TRANSLATION"
.LASF1634:
	.string	"sidenum"
.LASF1603:
	.string	"BT_USE"
.LASF938:
	.string	"S_ARACH_PLAZ"
.LASF1177:
	.string	"S_STALAGTITE"
.LASF779:
	.string	"S_HEAD_PAIN2"
.LASF780:
	.string	"S_HEAD_PAIN3"
.LASF1609:
	.string	"BTS_PAUSE"
.LASF106:
	.string	"byte"
.LASF437:
	.string	"S_PLAY_XDIE2"
.LASF76:
	.string	"it_redskull"
.LASF1723:
	.string	"sfx_bgact"
.LASF1288:
	.string	"MT_TFOG"
.LASF488:
	.string	"S_SPOS_ATK1"
.LASF489:
	.string	"S_SPOS_ATK2"
.LASF490:
	.string	"S_SPOS_ATK3"
.LASF425:
	.string	"S_PLAY_ATK1"
.LASF426:
	.string	"S_PLAY_ATK2"
.LASF178:
	.string	"SPR_APLS"
.LASF1915:
	.string	"G_Ticker"
.LASF1656:
	.string	"sfx_bfg"
.LASF1792:
	.string	"dclickstate"
.LASF115:
	.string	"finesine"
.LASF1812:
	.string	"d_map"
.LASF1492:
	.string	"refire"
.LASF1590:
	.string	"event_t"
.LASF1885:
	.string	"G_WriteDemoTiccmd"
.LASF1777:
	.string	"key_speed"
.LASF1206:
	.string	"S_REDTORCH2"
.LASF1207:
	.string	"S_REDTORCH3"
.LASF1208:
	.string	"S_REDTORCH4"
.LASF715:
	.string	"S_TROO_RUN1"
.LASF716:
	.string	"S_TROO_RUN2"
.LASF717:
	.string	"S_TROO_RUN3"
.LASF718:
	.string	"S_TROO_RUN4"
.LASF719:
	.string	"S_TROO_RUN5"
.LASF720:
	.string	"S_TROO_RUN6"
.LASF721:
	.string	"S_TROO_RUN7"
.LASF722:
	.string	"S_TROO_RUN8"
.LASF1747:
	.string	"sfx_mandth"
.LASF1583:
	.string	"ev_keyup"
.LASF1533:
	.string	"wbstartstruct_t"
.LASF169:
	.string	"SPR_CPOS"
.LASF630:
	.string	"S_FATSHOTX1"
.LASF631:
	.string	"S_FATSHOTX2"
.LASF632:
	.string	"S_FATSHOTX3"
.LASF710:
	.string	"S_CPOS_RAISE5"
.LASF711:
	.string	"S_CPOS_RAISE6"
.LASF712:
	.string	"S_CPOS_RAISE7"
.LASF78:
	.string	"wp_fist"
.LASF1399:
	.string	"missilestate"
.LASF199:
	.string	"SPR_STIM"
.LASF1425:
	.string	"MF_JUSTATTACKED"
.LASF746:
	.string	"S_SARG_STND"
.LASF971:
	.string	"S_CYBER_DIE10"
.LASF149:
	.string	"SPR_BAL1"
.LASF150:
	.string	"SPR_BAL2"
.LASF1839:
	.string	"AM_Stop"
.LASF172:
	.string	"SPR_BAL7"
.LASF1459:
	.string	"info"
.LASF1717:
	.string	"sfx_bspdth"
.LASF1165:
	.string	"S_HEADSONSTICK"
.LASF1752:
	.string	"sfx_skeact"
.LASF1910:
	.string	"G_CheckSpot"
.LASF1454:
	.string	"ceilingz"
.LASF1748:
	.string	"sfx_sssit"
.LASF622:
	.string	"S_SKEL_RAISE1"
.LASF137:
	.string	"SPR_SHT2"
.LASF276:
	.string	"S_PUNCH1"
.LASF277:
	.string	"S_PUNCH2"
.LASF278:
	.string	"S_PUNCH3"
.LASF279:
	.string	"S_PUNCH4"
.LASF280:
	.string	"S_PUNCH5"
.LASF639:
	.string	"S_FATT_RUN5"
.LASF275:
	.string	"S_PUNCHUP"
.LASF892:
	.string	"S_SPID_DIE1"
.LASF643:
	.string	"S_FATT_RUN9"
.LASF894:
	.string	"S_SPID_DIE3"
.LASF895:
	.string	"S_SPID_DIE4"
.LASF136:
	.string	"SPR_SHTF"
.LASF132:
	.string	"SPR_SHTG"
.LASF414:
	.string	"S_IFOG01"
.LASF415:
	.string	"S_IFOG02"
.LASF900:
	.string	"S_SPID_DIE9"
.LASF1901:
	.string	"G_DoCompleted"
.LASF1567:
	.string	"wminfo"
.LASF1142:
	.string	"S_AMMO"
.LASF1584:
	.string	"ev_mouse"
.LASF1891:
	.string	"description"
.LASF94:
	.string	"NUMAMMO"
.LASF973:
	.string	"S_PAIN_RUN1"
.LASF974:
	.string	"S_PAIN_RUN2"
.LASF975:
	.string	"S_PAIN_RUN3"
.LASF976:
	.string	"S_PAIN_RUN4"
.LASF258:
	.string	"SPR_HDB1"
.LASF259:
	.string	"SPR_HDB2"
.LASF260:
	.string	"SPR_HDB3"
.LASF261:
	.string	"SPR_HDB4"
.LASF262:
	.string	"SPR_HDB5"
.LASF263:
	.string	"SPR_HDB6"
.LASF1250:
	.string	"MT_POSSESSED"
.LASF308:
	.string	"S_DSGUN3"
.LASF309:
	.string	"S_DSGUN4"
.LASF108:
	.string	"type"
.LASF328:
	.string	"S_MISSILE"
.LASF1907:
	.string	"G_DeathMatchSpawnPlayer"
.LASF1854:
	.string	"S_ResumeSound"
.LASF1868:
	.string	"P_SetupLevel"
.LASF1156:
	.string	"S_SHOT2"
.LASF1859:
	.string	"F_StartFinale"
.LASF1418:
	.string	"MF_SPECIAL"
.LASF1223:
	.string	"S_HANGTLOOKDN"
.LASF1529:
	.string	"maxfrags"
.LASF1920:
	.string	"G_BuildTiccmd"
.LASF1461:
	.string	"movedir"
.LASF1900:
	.string	"G_WorldDone"
.LASF700:
	.string	"S_CPOS_XDIE1"
.LASF1909:
	.string	"G_CheckDemoStatus"
.LASF1432:
	.string	"MF_FLOAT"
.LASF1857:
	.string	"sprintf"
.LASF1759:
	.string	"sendsave"
.LASF123:
	.string	"actionf_t"
.LASF1815:
	.string	"I_Quit"
.LASF118:
	.string	"actionf_v"
.LASF219:
	.string	"SPR_MGUN"
.LASF1262:
	.string	"MT_SHADOWS"
.LASF603:
	.string	"S_SKEL_RUN10"
.LASF604:
	.string	"S_SKEL_RUN11"
.LASF605:
	.string	"S_SKEL_RUN12"
.LASF271:
	.string	"S_NULL"
.LASF813:
	.string	"S_BOSS_DIE1"
.LASF814:
	.string	"S_BOSS_DIE2"
.LASF815:
	.string	"S_BOSS_DIE3"
.LASF816:
	.string	"S_BOSS_DIE4"
.LASF817:
	.string	"S_BOSS_DIE5"
.LASF818:
	.string	"S_BOSS_DIE6"
.LASF819:
	.string	"S_BOSS_DIE7"
.LASF1860:
	.string	"F_Responder"
.LASF983:
	.string	"S_PAIN_PAIN"
.LASF352:
	.string	"S_BFG"
.LASF1397:
	.string	"painsound"
.LASF1880:
	.string	"G_DeferedPlayDemo"
.LASF1849:
	.string	"WI_Ticker"
.LASF1763:
	.string	"netdemo"
.LASF1517:
	.string	"player_t"
.LASF1624:
	.string	"special"
.LASF998:
	.string	"S_SSWV_STND2"
.LASF220:
	.string	"SPR_CSAW"
.LASF1133:
	.string	"S_PMAP"
.LASF28:
	.string	"_chain"
.LASF1659:
	.string	"sfx_sawful"
.LASF1606:
	.string	"BT_CHANGE"
.LASF1139:
	.string	"S_PVIS"
.LASF1620:
	.string	"ceilingheight"
.LASF353:
	.string	"S_BFGDOWN"
.LASF1695:
	.string	"sfx_vilsit"
.LASF1274:
	.string	"MT_BOSSBRAIN"
.LASF166:
	.string	"SPR_SKEL"
.LASF348:
	.string	"S_PLASMA1"
.LASF349:
	.string	"S_PLASMA2"
.LASF1213:
	.string	"S_GTORCHSHRT"
.LASF1564:
	.string	"deathmatchstarts"
.LASF1682:
	.string	"sfx_telept"
.LASF1472:
	.string	"firstline"
.LASF1147:
	.string	"S_SHEL"
.LASF904:
	.string	"S_BSPI_STND2"
.LASF7:
	.string	"unsigned char"
.LASF1716:
	.string	"sfx_spidth"
.LASF164:
	.string	"SPR_FATB"
.LASF1582:
	.string	"ev_keydown"
.LASF269:
	.string	"NUMSPRITES"
.LASF890:
	.string	"S_SPID_PAIN"
.LASF1575:
	.string	"maketic"
.LASF170:
	.string	"SPR_SARG"
.LASF387:
	.string	"S_BFGSHOT2"
.LASF168:
	.string	"SPR_FATT"
.LASF1703:
	.string	"sfx_skeswg"
.LASF1114:
	.string	"S_SOUL2"
.LASF1115:
	.string	"S_SOUL3"
.LASF1116:
	.string	"S_SOUL4"
.LASF1117:
	.string	"S_SOUL5"
.LASF1118:
	.string	"S_SOUL6"
.LASF1929:
	.string	"_IO_lock_t"
.LASF874:
	.string	"S_SPID_RUN1"
.LASF875:
	.string	"S_SPID_RUN2"
.LASF876:
	.string	"S_SPID_RUN3"
.LASF877:
	.string	"S_SPID_RUN4"
.LASF878:
	.string	"S_SPID_RUN5"
.LASF879:
	.string	"S_SPID_RUN6"
.LASF880:
	.string	"S_SPID_RUN7"
.LASF881:
	.string	"S_SPID_RUN8"
.LASF112:
	.string	"float"
.LASF1081:
	.string	"S_BEXP3"
.LASF56:
	.string	"doom2"
.LASF1661:
	.string	"sfx_rlaunc"
.LASF1170:
	.string	"S_DEADSTICK"
.LASF1790:
	.string	"mousey"
.LASF1501:
	.string	"fixedcolormap"
.LASF1780:
	.string	"mousebforward"
.LASF1486:
	.string	"weaponowned"
.LASF1291:
	.string	"MT_EXTRABFG"
.LASF460:
	.string	"S_POSS_DIE1"
.LASF461:
	.string	"S_POSS_DIE2"
.LASF462:
	.string	"S_POSS_DIE3"
.LASF463:
	.string	"S_POSS_DIE4"
.LASF464:
	.string	"S_POSS_DIE5"
.LASF290:
	.string	"S_SGUNDOWN"
.LASF1750:
	.string	"sfx_keenpn"
.LASF139:
	.string	"SPR_CHGF"
.LASF138:
	.string	"SPR_CHGG"
.LASF1538:
	.string	"gameskill"
.LASF683:
	.string	"S_CPOS_RUN5"
.LASF942:
	.string	"S_ARACH_PLEX3"
.LASF684:
	.string	"S_CPOS_RUN6"
.LASF944:
	.string	"S_ARACH_PLEX5"
.LASF685:
	.string	"S_CPOS_RUN7"
.LASF1679:
	.string	"sfx_itemup"
.LASF1463:
	.string	"target"
.LASF249:
	.string	"SPR_CEYE"
.LASF1771:
	.string	"key_down"
.LASF1640:
	.string	"ST_HORIZONTAL"
.LASF991:
	.string	"S_PAIN_RAISE1"
.LASF992:
	.string	"S_PAIN_RAISE2"
.LASF993:
	.string	"S_PAIN_RAISE3"
.LASF994:
	.string	"S_PAIN_RAISE4"
.LASF995:
	.string	"S_PAIN_RAISE5"
.LASF628:
	.string	"S_FATSHOT1"
.LASF629:
	.string	"S_FATSHOT2"
.LASF1881:
	.string	"name"
.LASF1641:
	.string	"ST_VERTICAL"
.LASF206:
	.string	"SPR_SUIT"
.LASF856:
	.string	"S_SKULL_STND"
.LASF1424:
	.string	"MF_JUSTHIT"
.LASF1445:
	.string	"MF_TRANSSHIFT"
.LASF48:
	.string	"VERSION"
.LASF1386:
	.string	"NUMMOBJTYPES"
.LASF188:
	.string	"SPR_BAR1"
.LASF303:
	.string	"S_DSGUN"
.LASF1182:
	.string	"S_CANDLESTIK"
.LASF100:
	.string	"pw_allmap"
.LASF1238:
	.string	"NUMSTATES"
.LASF882:
	.string	"S_SPID_RUN9"
.LASF368:
	.string	"S_TBALL1"
.LASF369:
	.string	"S_TBALL2"
.LASF582:
	.string	"S_SMOKE1"
.LASF583:
	.string	"S_SMOKE2"
.LASF584:
	.string	"S_SMOKE3"
.LASF585:
	.string	"S_SMOKE4"
.LASF586:
	.string	"S_SMOKE5"
.LASF805:
	.string	"S_BOSS_RUN6"
.LASF806:
	.string	"S_BOSS_RUN7"
.LASF807:
	.string	"S_BOSS_RUN8"
.LASF171:
	.string	"SPR_HEAD"
.LASF1884:
	.string	"maxsize"
.LASF1451:
	.string	"bprev"
.LASF232:
	.string	"SPR_POL1"
.LASF228:
	.string	"SPR_POL2"
.LASF231:
	.string	"SPR_POL3"
.LASF230:
	.string	"SPR_POL4"
.LASF229:
	.string	"SPR_POL5"
.LASF233:
	.string	"SPR_POL6"
.LASF1542:
	.string	"netgame"
.LASF1077:
	.string	"S_BAR1"
.LASF1175:
	.string	"S_MEAT4"
.LASF569:
	.string	"S_FIRE18"
.LASF1248:
	.string	"states"
.LASF1292:
	.string	"MT_MISC0"
.LASF1163:
	.string	"S_DEADTORSO"
.LASF1429:
	.string	"MF_PICKUP"
.LASF1438:
	.string	"MF_CORPSE"
.LASF305:
	.string	"S_DSGUNUP"
.LASF1742:
	.string	"sfx_boscub"
.LASF1704:
	.string	"sfx_pldeth"
.LASF1389:
	.string	"spawnstate"
.LASF1858:
	.string	"M_ScreenShot"
.LASF714:
	.string	"S_TROO_STND2"
.LASF1234:
	.string	"S_TECH2LAMP"
.LASF1667:
	.string	"sfx_doropn"
.LASF1278:
	.string	"MT_SPAWNFIRE"
.LASF1253:
	.string	"MT_FIRE"
.LASF1244:
	.string	"nextstate"
.LASF1810:
	.string	"d_skill"
.LASF1540:
	.string	"gamemap"
.LASF811:
	.string	"S_BOSS_PAIN"
.LASF182:
	.string	"SPR_SSWV"
.LASF20:
	.string	"_IO_write_ptr"
.LASF1890:
	.string	"name2"
.LASF1423:
	.string	"MF_AMBUSH"
.LASF1596:
	.string	"ga_playdemo"
.LASF1220:
	.string	"S_RTORCHSHRT4"
.LASF373:
	.string	"S_RBALL1"
.LASF374:
	.string	"S_RBALL2"
.LASF1677:
	.string	"sfx_pepain"
.LASF1896:
	.string	"vcheck"
.LASF1611:
	.string	"BTS_SAVEMASK"
.LASF1178:
	.string	"S_TALLGRNCOL"
.LASF1530:
	.string	"partime"
.LASF1466:
	.string	"lastlook"
.LASF1714:
	.string	"sfx_brsdth"
.LASF1650:
	.string	"sfx_sgcock"
.LASF1516:
	.string	"playerstate_t"
.LASF1167:
	.string	"S_HEADONASTICK"
.LASF447:
	.string	"S_POSS_RUN1"
.LASF389:
	.string	"S_BFGLAND2"
.LASF390:
	.string	"S_BFGLAND3"
.LASF391:
	.string	"S_BFGLAND4"
.LASF392:
	.string	"S_BFGLAND5"
.LASF393:
	.string	"S_BFGLAND6"
.LASF453:
	.string	"S_POSS_RUN7"
.LASF454:
	.string	"S_POSS_RUN8"
.LASF436:
	.string	"S_PLAY_XDIE1"
.LASF69:
	.string	"sk_nightmare"
.LASF438:
	.string	"S_PLAY_XDIE3"
.LASF439:
	.string	"S_PLAY_XDIE4"
.LASF440:
	.string	"S_PLAY_XDIE5"
.LASF441:
	.string	"S_PLAY_XDIE6"
.LASF442:
	.string	"S_PLAY_XDIE7"
.LASF443:
	.string	"S_PLAY_XDIE8"
.LASF444:
	.string	"S_PLAY_XDIE9"
.LASF1514:
	.string	"PST_DEAD"
.LASF842:
	.string	"S_BOS2_DIE1"
.LASF843:
	.string	"S_BOS2_DIE2"
.LASF844:
	.string	"S_BOS2_DIE3"
.LASF845:
	.string	"S_BOS2_DIE4"
.LASF846:
	.string	"S_BOS2_DIE5"
.LASF847:
	.string	"S_BOS2_DIE6"
.LASF848:
	.string	"S_BOS2_DIE7"
.LASF1409:
	.string	"flags"
.LASF768:
	.string	"S_SARG_RAISE2"
.LASF769:
	.string	"S_SARG_RAISE3"
.LASF412:
	.string	"S_TFOG10"
.LASF770:
	.string	"S_SARG_RAISE4"
.LASF1879:
	.string	"episode"
.LASF465:
	.string	"S_POSS_XDIE1"
.LASF466:
	.string	"S_POSS_XDIE2"
.LASF467:
	.string	"S_POSS_XDIE3"
.LASF468:
	.string	"S_POSS_XDIE4"
.LASF469:
	.string	"S_POSS_XDIE5"
.LASF470:
	.string	"S_POSS_XDIE6"
.LASF471:
	.string	"S_POSS_XDIE7"
.LASF90:
	.string	"am_clip"
.LASF473:
	.string	"S_POSS_XDIE9"
.LASF1166:
	.string	"S_GIBS"
.LASF781:
	.string	"S_HEAD_DIE1"
.LASF782:
	.string	"S_HEAD_DIE2"
.LASF783:
	.string	"S_HEAD_DIE3"
.LASF784:
	.string	"S_HEAD_DIE4"
.LASF785:
	.string	"S_HEAD_DIE5"
.LASF786:
	.string	"S_HEAD_DIE6"
.LASF634:
	.string	"S_FATT_STND2"
.LASF1157:
	.string	"S_COLU"
.LASF284:
	.string	"S_PISTOL1"
.LASF285:
	.string	"S_PISTOL2"
.LASF286:
	.string	"S_PISTOL3"
.LASF287:
	.string	"S_PISTOL4"
.LASF623:
	.string	"S_SKEL_RAISE2"
.LASF624:
	.string	"S_SKEL_RAISE3"
.LASF44:
	.string	"FILE"
.LASF626:
	.string	"S_SKEL_RAISE5"
.LASF627:
	.string	"S_SKEL_RAISE6"
.LASF1186:
	.string	"S_BIGTREE"
.LASF1926:
	.string	"base"
.LASF1643:
	.string	"ST_NEGATIVE"
.LASF1096:
	.string	"S_BON2C"
.LASF1097:
	.string	"S_BON2D"
.LASF402:
	.string	"S_TFOG01"
.LASF403:
	.string	"S_TFOG02"
.LASF221:
	.string	"SPR_LAUN"
.LASF1843:
	.string	"P_SpawnMobj"
.LASF458:
	.string	"S_POSS_PAIN"
.LASF793:
	.string	"S_BRBALL1"
.LASF794:
	.string	"S_BRBALL2"
.LASF1256:
	.string	"MT_SMOKE"
.LASF1270:
	.string	"MT_CYBORG"
.LASF1407:
	.string	"damage"
.LASF498:
	.string	"S_SPOS_XDIE1"
.LASF499:
	.string	"S_SPOS_XDIE2"
.LASF500:
	.string	"S_SPOS_XDIE3"
.LASF501:
	.string	"S_SPOS_XDIE4"
.LASF502:
	.string	"S_SPOS_XDIE5"
.LASF503:
	.string	"S_SPOS_XDIE6"
.LASF504:
	.string	"S_SPOS_XDIE7"
.LASF505:
	.string	"S_SPOS_XDIE8"
.LASF506:
	.string	"S_SPOS_XDIE9"
.LASF1442:
	.string	"MF_SKULLFLY"
.LASF1675:
	.string	"sfx_vipain"
.LASF11:
	.string	"size_t"
.LASF1446:
	.string	"mobj_s"
.LASF1505:
	.string	"mobj_t"
.LASF1099:
	.string	"S_BKEY"
.LASF98:
	.string	"pw_invisibility"
.LASF1570:
	.string	"mouseSensitivity"
.LASF1550:
	.string	"displayplayer"
.LASF1829:
	.string	"Z_Free"
.LASF186:
	.string	"SPR_ARM1"
.LASF187:
	.string	"SPR_ARM2"
.LASF1252:
	.string	"MT_VILE"
.LASF1666:
	.string	"sfx_pstop"
.LASF74:
	.string	"it_blueskull"
.LASF1628:
	.string	"soundorg"
.LASF1853:
	.string	"P_Ticker"
.LASF346:
	.string	"S_PLASMADOWN"
.LASF658:
	.string	"S_FATT_PAIN2"
.LASF1751:
	.string	"sfx_keendt"
.LASF1056:
	.string	"S_BRAINEYESEE"
.LASF1644:
	.string	"slopetype_t"
.LASF593:
	.string	"S_SKEL_STND2"
.LASF946:
	.string	"S_CYBER_STND2"
.LASF1247:
	.string	"state_t"
.LASF790:
	.string	"S_HEAD_RAISE4"
.LASF1016:
	.string	"S_SSWV_DIE2"
.LASF50:
	.string	"registered"
.LASF1797:
	.string	"joyxmove"
.LASF1536:
	.string	"fastparm"
.LASF1726:
	.string	"sfx_bspwlk"
.LASF472:
	.string	"S_POSS_XDIE8"
.LASF1146:
	.string	"S_CELP"
.LASF1188:
	.string	"S_EVILEYE"
.LASF1214:
	.string	"S_GTORCHSHRT2"
.LASF1215:
	.string	"S_GTORCHSHRT3"
.LASF1216:
	.string	"S_GTORCHSHRT4"
.LASF1476:
	.string	"viewheight"
.LASF1914:
	.string	"G_InitPlayer"
.LASF1450:
	.string	"bnext"
.LASF1613:
	.string	"gameaction"
.LASF1576:
	.string	"netcmds"
.LASF1745:
	.string	"sfx_bosdth"
.LASF24:
	.string	"_IO_save_base"
.LASF647:
	.string	"S_FATT_ATK1"
.LASF180:
	.string	"SPR_CYBR"
.LASF648:
	.string	"S_FATT_ATK2"
.LASF551:
	.string	"S_VILE_DIE10"
.LASF141:
	.string	"SPR_MISF"
.LASF140:
	.string	"SPR_MISG"
.LASF1543:
	.string	"deathmatch"
.LASF153:
	.string	"SPR_MISL"
.LASF1786:
	.string	"turnheld"
.LASF1521:
	.string	"stime"
.LASF1105:
	.string	"S_BSKULL"
.LASF184:
	.string	"SPR_BBRN"
.LASF526:
	.string	"S_VILE_ATK1"
.LASF527:
	.string	"S_VILE_ATK2"
.LASF528:
	.string	"S_VILE_ATK3"
.LASF529:
	.string	"S_VILE_ATK4"
.LASF530:
	.string	"S_VILE_ATK5"
.LASF531:
	.string	"S_VILE_ATK6"
.LASF532:
	.string	"S_VILE_ATK7"
.LASF273:
	.string	"S_PUNCH"
.LASF534:
	.string	"S_VILE_ATK9"
.LASF255:
	.string	"SPR_SMBT"
.LASF1731:
	.string	"sfx_hoof"
.LASF1908:
	.string	"selections"
.LASF829:
	.string	"S_BOS2_RUN1"
.LASF830:
	.string	"S_BOS2_RUN2"
.LASF831:
	.string	"S_BOS2_RUN3"
.LASF832:
	.string	"S_BOS2_RUN4"
.LASF833:
	.string	"S_BOS2_RUN5"
.LASF834:
	.string	"S_BOS2_RUN6"
.LASF835:
	.string	"S_BOS2_RUN7"
.LASF836:
	.string	"S_BOS2_RUN8"
.LASF1623:
	.string	"lightlevel"
.LASF246:
	.string	"SPR_TRE1"
.LASF247:
	.string	"SPR_TRE2"
.LASF903:
	.string	"S_BSPI_STND"
.LASF1662:
	.string	"sfx_rxplod"
.LASF1398:
	.string	"meleestate"
.LASF1487:
	.string	"ammo"
.LASF693:
	.string	"S_CPOS_DIE1"
.LASF254:
	.string	"SPR_TRED"
.LASF147:
	.string	"SPR_BLUD"
.LASF649:
	.string	"S_FATT_ATK3"
.LASF650:
	.string	"S_FATT_ATK4"
.LASF651:
	.string	"S_FATT_ATK5"
.LASF652:
	.string	"S_FATT_ATK6"
.LASF653:
	.string	"S_FATT_ATK7"
.LASF654:
	.string	"S_FATT_ATK8"
.LASF655:
	.string	"S_FATT_ATK9"
.LASF157:
	.string	"SPR_TFOG"
.LASF361:
	.string	"S_BLOOD1"
.LASF362:
	.string	"S_BLOOD2"
.LASF363:
	.string	"S_BLOOD3"
.LASF1647:
	.string	"sfx_None"
.LASF1245:
	.string	"misc1"
.LASF1246:
	.string	"misc2"
.LASF1673:
	.string	"sfx_dmpain"
.LASF1508:
	.string	"angleturn"
.LASF1846:
	.string	"P_CheckPosition"
.LASF38:
	.string	"_wide_data"
.LASF1153:
	.string	"S_LAUN"
.LASF413:
	.string	"S_IFOG"
.LASF160:
	.string	"SPR_POSS"
.LASF165:
	.string	"SPR_FBXP"
.LASF1565:
	.string	"deathmatch_p"
.LASF962:
	.string	"S_CYBER_DIE1"
.LASF963:
	.string	"S_CYBER_DIE2"
.LASF964:
	.string	"S_CYBER_DIE3"
.LASF965:
	.string	"S_CYBER_DIE4"
.LASF966:
	.string	"S_CYBER_DIE5"
.LASF967:
	.string	"S_CYBER_DIE6"
.LASF968:
	.string	"S_CYBER_DIE7"
.LASF840:
	.string	"S_BOS2_PAIN"
.LASF970:
	.string	"S_CYBER_DIE9"
.LASF1467:
	.string	"spawnpoint"
.LASF1240:
	.string	"sprite"
.LASF1831:
	.string	"P_UnArchiveThinkers"
.LASF1319:
	.string	"MT_MISC23"
.LASF1183:
	.string	"S_CANDELABRA"
.LASF523:
	.string	"S_VILE_RUN10"
.LASF524:
	.string	"S_VILE_RUN11"
.LASF525:
	.string	"S_VILE_RUN12"
.LASF1143:
	.string	"S_ROCK"
.LASF292:
	.string	"S_SGUN1"
.LASF293:
	.string	"S_SGUN2"
.LASF294:
	.string	"S_SGUN3"
.LASF295:
	.string	"S_SGUN4"
.LASF296:
	.string	"S_SGUN5"
.LASF297:
	.string	"S_SGUN6"
.LASF298:
	.string	"S_SGUN7"
.LASF299:
	.string	"S_SGUN8"
.LASF300:
	.string	"S_SGUN9"
.LASF1388:
	.string	"doomednum"
.LASF289:
	.string	"S_SGUN"
.LASF1546:
	.string	"viewactive"
.LASF1179:
	.string	"S_SHRTGRNCOL"
.LASF1749:
	.string	"sfx_ssdth"
.LASF1739:
	.string	"sfx_flamst"
.LASF864:
	.string	"S_SKULL_PAIN"
.LASF1802:
	.string	"savedescription"
.LASF1277:
	.string	"MT_SPAWNSHOT"
.LASF588:
	.string	"S_TRACER2"
.LASF1895:
	.string	"G_DoLoadGame"
.LASF1187:
	.string	"S_TECHPILLAR"
.LASF592:
	.string	"S_SKEL_STND"
.LASF1927:
	.string	"G_CmdChecksum"
.LASF747:
	.string	"S_SARG_STND2"
.LASF1732:
	.string	"sfx_metal"
.LASF53:
	.string	"indetermined"
.LASF493:
	.string	"S_SPOS_DIE1"
.LASF494:
	.string	"S_SPOS_DIE2"
.LASF495:
	.string	"S_SPOS_DIE3"
.LASF496:
	.string	"S_SPOS_DIE4"
.LASF497:
	.string	"S_SPOS_DIE5"
.LASF1515:
	.string	"PST_REBORN"
.LASF1699:
	.string	"sfx_sgtatk"
.LASF1806:
	.string	"cpars"
.LASF1614:
	.string	"myargc"
.LASF1824:
	.string	"P_ArchivePlayers"
.LASF1222:
	.string	"S_HANGBNOBRAIN"
.LASF1696:
	.string	"sfx_mansit"
.LASF756:
	.string	"S_SARG_ATK1"
.LASF757:
	.string	"S_SARG_ATK2"
.LASF758:
	.string	"S_SARG_ATK3"
.LASF347:
	.string	"S_PLASMAUP"
.LASF1242:
	.string	"tics"
.LASF1103:
	.string	"S_YKEY"
.LASF1670:
	.string	"sfx_swtchn"
.LASF1403:
	.string	"speed"
.LASF1615:
	.string	"myargv"
.LASF1894:
	.string	"slot"
.LASF1597:
	.string	"ga_completed"
.LASF316:
	.string	"S_DSNR1"
.LASF985:
	.string	"S_PAIN_DIE1"
.LASF1671:
	.string	"sfx_swtchx"
.LASF515:
	.string	"S_VILE_RUN2"
.LASF1737:
	.string	"sfx_itmbk"
.LASF1233:
	.string	"S_TECHLAMP4"
.LASF679:
	.string	"S_CPOS_RUN1"
.LASF680:
	.string	"S_CPOS_RUN2"
.LASF681:
	.string	"S_CPOS_RUN3"
.LASF682:
	.string	"S_CPOS_RUN4"
.LASF119:
	.string	"actionf_p1"
.LASF120:
	.string	"actionf_p2"
.LASF217:
	.string	"SPR_BPAK"
.LASF686:
	.string	"S_CPOS_RUN8"
.LASF1083:
	.string	"S_BEXP5"
.LASF1833:
	.string	"P_UnArchivePlayers"
.LASF1754:
	.string	"sfx_skeatk"
.LASF1821:
	.string	"P_ArchiveSpecials"
.LASF110:
	.string	"mapthing_t"
.LASF448:
	.string	"S_POSS_RUN2"
.LASF449:
	.string	"S_POSS_RUN3"
.LASF450:
	.string	"S_POSS_RUN4"
.LASF767:
	.string	"S_SARG_RAISE1"
.LASF451:
	.string	"S_POSS_RUN5"
.LASF121:
	.string	"acp1"
.LASF122:
	.string	"acp2"
.LASF771:
	.string	"S_SARG_RAISE5"
.LASF772:
	.string	"S_SARG_RAISE6"
.LASF1706:
	.string	"sfx_podth1"
.LASF1707:
	.string	"sfx_podth2"
.LASF1708:
	.string	"sfx_podth3"
.LASF1592:
	.string	"ga_loadlevel"
.LASF1352:
	.string	"MT_MISC53"
.LASF1547:
	.string	"nodrawers"
.LASF1756:
	.string	"NUMSFX"
.LASF256:
	.string	"SPR_SMGT"
.LASF1814:
	.string	"D_AdvanceDemo"
.LASF1047:
	.string	"S_KEENPAIN"
.LASF395:
	.string	"S_BFGEXP2"
.LASF396:
	.string	"S_BFGEXP3"
.LASF397:
	.string	"S_BFGEXP4"
.LASF326:
	.string	"S_CHAINFLASH1"
.LASF327:
	.string	"S_CHAINFLASH2"
.LASF282:
	.string	"S_PISTOLDOWN"
.LASF1861:
	.string	"AM_Responder"
.LASF1578:
	.string	"memblock_s"
.LASF1581:
	.string	"memblock_t"
.LASF947:
	.string	"S_CYBER_RUN1"
.LASF948:
	.string	"S_CYBER_RUN2"
.LASF949:
	.string	"S_CYBER_RUN3"
.LASF950:
	.string	"S_CYBER_RUN4"
.LASF951:
	.string	"S_CYBER_RUN5"
.LASF952:
	.string	"S_CYBER_RUN6"
.LASF953:
	.string	"S_CYBER_RUN7"
.LASF954:
	.string	"S_CYBER_RUN8"
.LASF1392:
	.string	"seesound"
.LASF1553:
	.string	"totalsecret"
.LASF64:
	.string	"gamestate_t"
.LASF1135:
	.string	"S_PMAP3"
.LASF1136:
	.string	"S_PMAP4"
.LASF1137:
	.string	"S_PMAP5"
.LASF1138:
	.string	"S_PMAP6"
.LASF1434:
	.string	"MF_MISSILE"
.LASF1498:
	.string	"bonuscount"
.LASF1807:
	.string	"secretexit"
.LASF865:
	.string	"S_SKULL_PAIN2"
.LASF1557:
	.string	"demoplayback"
.LASF1396:
	.string	"painchance"
.LASF691:
	.string	"S_CPOS_PAIN"
.LASF1572:
	.string	"bodyqueslot"
.LASF51:
	.string	"commercial"
.LASF1803:
	.string	"bodyque"
.LASF1841:
	.string	"P_SpawnPlayer"
.LASF1612:
	.string	"BTS_SAVESHIFT"
.LASF1924:
	.string	"forward"
.LASF996:
	.string	"S_PAIN_RAISE6"
.LASF1630:
	.string	"specialdata"
.LASF1335:
	.string	"MT_MISC36"
.LASF1789:
	.string	"mousex"
.LASF800:
	.string	"S_BOSS_RUN1"
.LASF801:
	.string	"S_BOSS_RUN2"
.LASF802:
	.string	"S_BOSS_RUN3"
.LASF803:
	.string	"S_BOSS_RUN4"
.LASF804:
	.string	"S_BOSS_RUN5"
.LASF322:
	.string	"S_CHAINUP"
.LASF1928:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1493:
	.string	"killcount"
.LASF1545:
	.string	"paused"
.LASF941:
	.string	"S_ARACH_PLEX2"
.LASF1185:
	.string	"S_TORCHTREE"
.LASF1774:
	.string	"key_fire"
.LASF997:
	.string	"S_SSWV_STND"
.LASF943:
	.string	"S_ARACH_PLEX4"
.LASF1788:
	.string	"mousebuttons"
.LASF1427:
	.string	"MF_NOGRAVITY"
.LASF1044:
	.string	"S_COMMKEEN10"
.LASF1045:
	.string	"S_COMMKEEN11"
.LASF1046:
	.string	"S_COMMKEEN12"
.LASF961:
	.string	"S_CYBER_PAIN"
.LASF1171:
	.string	"S_LIVESTICK"
.LASF114:
	.string	"stderr"
.LASF480:
	.string	"S_SPOS_RUN1"
.LASF238:
	.string	"SPR_SMIT"
.LASF105:
	.string	"boolean"
.LASF483:
	.string	"S_SPOS_RUN4"
.LASF484:
	.string	"S_SPOS_RUN5"
.LASF175:
	.string	"SPR_SKUL"
.LASF486:
	.string	"S_SPOS_RUN7"
.LASF487:
	.string	"S_SPOS_RUN8"
.LASF1144:
	.string	"S_BROK"
.LASF1390:
	.string	"spawnhealth"
.LASF1715:
	.string	"sfx_cybdth"
.LASF274:
	.string	"S_PUNCHDOWN"
.LASF940:
	.string	"S_ARACH_PLEX"
.LASF1201:
	.string	"S_GREENTORCH"
.LASF86:
	.string	"wp_supershotgun"
.LASF340:
	.string	"S_SAWDOWN"
.LASF26:
	.string	"_IO_save_end"
.LASF1660:
	.string	"sfx_sawhit"
.LASF1577:
	.string	"ticdup"
.LASF1239:
	.string	"statenum_t"
.LASF1280:
	.string	"MT_TROOPSHOT"
.LASF1265:
	.string	"MT_BRUISERSHOT"
.LASF1875:
	.string	"endtime"
.LASF1766:
	.string	"demoend"
.LASF1727:
	.string	"sfx_vilact"
.LASF1512:
	.string	"ticcmd_t"
.LASF1385:
	.string	"MT_MISC86"
.LASF1413:
	.string	"ps_weapon"
.LASF1692:
	.string	"sfx_spisit"
.LASF428:
	.string	"S_PLAY_PAIN2"
.LASF1658:
	.string	"sfx_sawidl"
.LASF823:
	.string	"S_BOSS_RAISE4"
.LASF824:
	.string	"S_BOSS_RAISE5"
.LASF1241:
	.string	"frame"
.LASF167:
	.string	"SPR_MANF"
.LASF678:
	.string	"S_CPOS_STND2"
.LASF1642:
	.string	"ST_POSITIVE"
.LASF1725:
	.string	"sfx_bspact"
.LASF491:
	.string	"S_SPOS_PAIN"
.LASF80:
	.string	"wp_shotgun"
.LASF459:
	.string	"S_POSS_PAIN2"
.LASF1286:
	.string	"MT_PUFF"
.LASF1813:
	.string	"defdemoname"
.LASF1876:
	.string	"G_TimeDemo"
.LASF331:
	.string	"S_MISSILE1"
.LASF332:
	.string	"S_MISSILE2"
.LASF333:
	.string	"S_MISSILE3"
.LASF707:
	.string	"S_CPOS_RAISE2"
.LASF708:
	.string	"S_CPOS_RAISE3"
.LASF709:
	.string	"S_CPOS_RAISE4"
.LASF1503:
	.string	"psprites"
.LASF1151:
	.string	"S_MGUN"
.LASF1264:
	.string	"MT_BRUISER"
.LASF216:
	.string	"SPR_SBOX"
.LASF1495:
	.string	"secretcount"
.LASF1387:
	.string	"mobjtype_t"
.LASF1401:
	.string	"xdeathstate"
.LASF1480:
	.string	"powers"
.LASF860:
	.string	"S_SKULL_ATK1"
.LASF861:
	.string	"S_SKULL_ATK2"
.LASF862:
	.string	"S_SKULL_ATK3"
.LASF863:
	.string	"S_SKULL_ATK4"
.LASF841:
	.string	"S_BOS2_PAIN2"
.LASF4:
	.string	"short unsigned int"
.LASF1266:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF1873:
	.string	"I_BaseTiccmd"
.LASF1507:
	.string	"sidemove"
.LASF1408:
	.string	"activesound"
.LASF492:
	.string	"S_SPOS_PAIN2"
.LASF1730:
	.string	"sfx_punch"
.LASF656:
	.string	"S_FATT_ATK10"
.LASF1339:
	.string	"MT_MISC40"
.LASF253:
	.string	"SPR_TGRN"
.LASF1585:
	.string	"ev_joystick"
.LASF1791:
	.string	"dclicktime"
.LASF1311:
	.string	"MT_MEGA"
.LASF155:
	.string	"SPR_BFE1"
.LASF156:
	.string	"SPR_BFE2"
.LASF1629:
	.string	"thinglist"
.LASF1805:
	.string	"pars"
.LASF1345:
	.string	"MT_MISC46"
.LASF1273:
	.string	"MT_KEEN"
.LASF1627:
	.string	"blockbox"
.LASF1057:
	.string	"S_BRAINEYE1"
.LASF713:
	.string	"S_TROO_STND"
.LASF660:
	.string	"S_FATT_DIE2"
.LASF351:
	.string	"S_PLASMAFLASH2"
.LASF1412:
	.string	"mobjinfo"
.LASF89:
	.string	"weapontype_t"
.LASF1510:
	.string	"chatchar"
.LASF404:
	.string	"S_TFOG2"
.LASF405:
	.string	"S_TFOG3"
.LASF406:
	.string	"S_TFOG4"
.LASF407:
	.string	"S_TFOG5"
.LASF408:
	.string	"S_TFOG6"
.LASF409:
	.string	"S_TFOG7"
.LASF410:
	.string	"S_TFOG8"
.LASF411:
	.string	"S_TFOG9"
.LASF826:
	.string	"S_BOSS_RAISE7"
.LASF1489:
	.string	"attackdown"
.LASF1918:
	.string	"G_Responder"
.LASF131:
	.string	"SPR_TROO"
.LASF13:
	.string	"__off64_t"
.LASF142:
	.string	"SPR_SAWG"
.LASF1552:
	.string	"totalitems"
.LASF1302:
	.string	"MT_MISC10"
.LASF1688:
	.string	"sfx_sgtsit"
.LASF1866:
	.string	"P_Random"
.LASF1443:
	.string	"MF_NOTDMATCH"
.LASF191:
	.string	"SPR_BON1"
.LASF18:
	.string	"_IO_read_base"
.LASF36:
	.string	"_offset"
.LASF1419:
	.string	"MF_SOLID"
.LASF73:
	.string	"it_redcard"
.LASF1180:
	.string	"S_TALLREDCOL"
.LASF1856:
	.string	"I_Error"
.LASF1601:
	.string	"gameaction_t"
.LASF1888:
	.string	"G_DeferedInitNew"
.LASF1416:
	.string	"state"
.LASF23:
	.string	"_IO_buf_end"
.LASF1155:
	.string	"S_SHOT"
.LASF1011:
	.string	"S_SSWV_ATK5"
.LASF1160:
	.string	"S_BLOODYTWITCH2"
.LASF1161:
	.string	"S_BLOODYTWITCH3"
.LASF1162:
	.string	"S_BLOODYTWITCH4"
.LASF901:
	.string	"S_SPID_DIE10"
.LASF902:
	.string	"S_SPID_DIE11"
.LASF1481:
	.string	"cards"
.LASF1912:
	.string	"G_PlayerReborn"
.LASF248:
	.string	"SPR_ELEC"
.LASF1049:
	.string	"S_BRAIN"
.LASF1595:
	.string	"ga_savegame"
.LASF1268:
	.string	"MT_SPIDER"
.LASF1132:
	.string	"S_SUIT"
.LASF146:
	.string	"SPR_BFGF"
.LASF145:
	.string	"SPR_BFGG"
.LASF1556:
	.string	"usergame"
.LASF1772:
	.string	"key_strafeleft"
.LASF42:
	.string	"_mode"
.LASF1571:
	.string	"singletics"
.LASF972:
	.string	"S_PAIN_STND"
.LASF1573:
	.string	"skyflatnum"
.LASF19:
	.string	"_IO_write_base"
.LASF1848:
	.string	"F_Ticker"
.LASF388:
	.string	"S_BFGLAND"
.LASF1078:
	.string	"S_BAR2"
.LASF1485:
	.string	"pendingweapon"
.LASF1767:
	.string	"savebuffer"
.LASF129:
	.string	"function"
.LASF1518:
	.string	"skills"
.LASF1733:
	.string	"sfx_chgun"
.LASF91:
	.string	"am_shell"
.LASF1561:
	.string	"gametic"
.LASF1816:
	.string	"W_CacheLumpName"
.LASF1458:
	.string	"validcount"
.LASF1496:
	.string	"message"
.LASF1865:
	.string	"Z_CheckHeap"
.LASF668:
	.string	"S_FATT_DIE10"
.LASF1825:
	.string	"M_CheckParm"
.LASF77:
	.string	"NUMCARDS"
.LASF1205:
	.string	"S_REDTORCH"
.LASF1903:
	.string	"G_ExitLevel"
.LASF1284:
	.string	"MT_BFG"
.LASF452:
	.string	"S_POSS_RUN6"
.LASF1701:
	.string	"sfx_vilatk"
.LASF1778:
	.string	"mousebfire"
.LASF1844:
	.string	"R_PointInSubsector"
.LASF162:
	.string	"SPR_VILE"
.LASF1893:
	.string	"G_SaveGame"
.LASF1736:
	.string	"sfx_bdcls"
.LASF1591:
	.string	"ga_nothing"
.LASF1287:
	.string	"MT_BLOOD"
.LASF281:
	.string	"S_PISTOL"
.LASF104:
	.string	"true"
.LASF1892:
	.string	"length"
.LASF67:
	.string	"sk_medium"
.LASF931:
	.string	"S_BSPI_RAISE1"
.LASF932:
	.string	"S_BSPI_RAISE2"
.LASF933:
	.string	"S_BSPI_RAISE3"
.LASF934:
	.string	"S_BSPI_RAISE4"
.LASF935:
	.string	"S_BSPI_RAISE5"
.LASF936:
	.string	"S_BSPI_RAISE6"
.LASF937:
	.string	"S_BSPI_RAISE7"
.LASF1455:
	.string	"momx"
.LASF1435:
	.string	"MF_DROPPED"
.LASF1456:
	.string	"momy"
.LASF5:
	.string	"long int"
.LASF1020:
	.string	"S_SSWV_XDIE1"
.LASF1021:
	.string	"S_SSWV_XDIE2"
.LASF1022:
	.string	"S_SSWV_XDIE3"
.LASF1023:
	.string	"S_SSWV_XDIE4"
.LASF1024:
	.string	"S_SSWV_XDIE5"
.LASF1025:
	.string	"S_SSWV_XDIE6"
.LASF1026:
	.string	"S_SSWV_XDIE7"
.LASF1027:
	.string	"S_SSWV_XDIE8"
.LASF1028:
	.string	"S_SSWV_XDIE9"
.LASF318:
	.string	"S_DSGUNFLASH1"
.LASF319:
	.string	"S_DSGUNFLASH2"
.LASF1318:
	.string	"MT_MISC22"
.LASF1504:
	.string	"didsecret"
.LASF576:
	.string	"S_FIRE25"
.LASF670:
	.string	"S_FATT_RAISE2"
.LASF1354:
	.string	"MT_MISC55"
.LASF1477:
	.string	"deltaviewheight"
.LASF578:
	.string	"S_FIRE27"
.LASF75:
	.string	"it_yellowskull"
.LASF1108:
	.string	"S_RSKULL2"
.LASF1468:
	.string	"tracer"
.LASF675:
	.string	"S_FATT_RAISE7"
.LASF1847:
	.string	"D_PageTicker"
.LASF883:
	.string	"S_SPID_RUN10"
.LASF884:
	.string	"S_SPID_RUN11"
.LASF885:
	.string	"S_SPID_RUN12"
.LASF45:
	.string	"_IO_marker"
.LASF1836:
	.string	"strcpy"
.LASF1874:
	.string	"rcsid"
.LASF1870:
	.string	"R_TextureNumForName"
.LASF1680:
	.string	"sfx_wpnup"
.LASF1897:
	.string	"G_LoadGame"
.LASF1917:
	.string	"player_names"
.LASF1827:
	.string	"R_ExecuteSetViewSize"
.LASF1410:
	.string	"raisestate"
.LASF334:
	.string	"S_MISSILEFLASH1"
.LASF335:
	.string	"S_MISSILEFLASH2"
.LASF336:
	.string	"S_MISSILEFLASH3"
.LASF337:
	.string	"S_MISSILEFLASH4"
.LASF1809:
	.string	"savename"
.LASF197:
	.string	"SPR_RSKU"
.LASF1700:
	.string	"sfx_skepch"
.LASF1653:
	.string	"sfx_dbcls"
.LASF124:
	.string	"think_t"
.LASF694:
	.string	"S_CPOS_DIE2"
.LASF695:
	.string	"S_CPOS_DIE3"
.LASF1818:
	.string	"atoi"
.LASF696:
	.string	"S_CPOS_DIE4"
.LASF1436:
	.string	"MF_SHADOW"
.LASF697:
	.string	"S_CPOS_DIE5"
.LASF698:
	.string	"S_CPOS_DIE6"
.LASF699:
	.string	"S_CPOS_DIE7"
.LASF1916:
	.string	"turbomessage"
.LASF1770:
	.string	"key_up"
.LASF1140:
	.string	"S_PVIS2"
.LASF1279:
	.string	"MT_BARREL"
.LASF872:
	.string	"S_SPID_STND"
.LASF644:
	.string	"S_FATT_RUN10"
.LASF645:
	.string	"S_FATT_RUN11"
.LASF646:
	.string	"S_FATT_RUN12"
.LASF1271:
	.string	"MT_PAIN"
.LASF46:
	.string	"_IO_codecvt"
.LASF1198:
	.string	"S_BLUETORCH2"
.LASF1411:
	.string	"mobjinfo_t"
.LASF1199:
	.string	"S_BLUETORCH3"
.LASF1683:
	.string	"sfx_posit1"
.LASF1200:
	.string	"S_BLUETORCH4"
.LASF257:
	.string	"SPR_SMRT"
.LASF1685:
	.string	"sfx_posit3"
.LASF359:
	.string	"S_BFGFLASH1"
.LASF360:
	.string	"S_BFGFLASH2"
.LASF893:
	.string	"S_SPID_DIE2"
.LASF1559:
	.string	"singledemo"
.LASF1800:
	.string	"joybuttons"
.LASF174:
	.string	"SPR_BOS2"
.LASF896:
	.string	"S_SPID_DIE5"
.LASF897:
	.string	"S_SPID_DIE6"
.LASF1743:
	.string	"sfx_bossit"
.LASF898:
	.string	"S_SPID_DIE7"
.LASF899:
	.string	"S_SPID_DIE8"
.LASF1811:
	.string	"d_episode"
.LASF1189:
	.string	"S_EVILEYE2"
.LASF1190:
	.string	"S_EVILEYE3"
.LASF1191:
	.string	"S_EVILEYE4"
.LASF364:
	.string	"S_PUFF1"
.LASF365:
	.string	"S_PUFF2"
.LASF366:
	.string	"S_PUFF3"
.LASF185:
	.string	"SPR_BOSF"
.LASF1632:
	.string	"lines"
.LASF1886:
	.string	"G_ReadDemoTiccmd"
.LASF173:
	.string	"SPR_BOSS"
.LASF1283:
	.string	"MT_PLASMA"
.LASF1755:
	.string	"sfx_radio"
.LASF918:
	.string	"S_BSPI_ATK1"
.LASF919:
	.string	"S_BSPI_ATK2"
.LASF920:
	.string	"S_BSPI_ATK3"
.LASF921:
	.string	"S_BSPI_ATK4"
.LASF1100:
	.string	"S_BKEY2"
.LASF87:
	.string	"NUMWEAPONS"
.LASF905:
	.string	"S_BSPI_SIGHT"
.LASF1672:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF1883:
	.string	"G_RecordDemo"
.LASF907:
	.string	"S_BSPI_RUN2"
.LASF1051:
	.string	"S_BRAIN_DIE1"
.LASF1052:
	.string	"S_BRAIN_DIE2"
.LASF1053:
	.string	"S_BRAIN_DIE3"
.LASF1054:
	.string	"S_BRAIN_DIE4"
.LASF1921:
	.string	"strafe"
.LASF386:
	.string	"S_BFGSHOT"
.LASF1192:
	.string	"S_FLOATSKULL"
.LASF542:
	.string	"S_VILE_DIE1"
.LASF543:
	.string	"S_VILE_DIE2"
.LASF544:
	.string	"S_VILE_DIE3"
.LASF545:
	.string	"S_VILE_DIE4"
.LASF546:
	.string	"S_VILE_DIE5"
.LASF547:
	.string	"S_VILE_DIE6"
.LASF548:
	.string	"S_VILE_DIE7"
.LASF549:
	.string	"S_VILE_DIE8"
.LASF550:
	.string	"S_VILE_DIE9"
.LASF1497:
	.string	"damagecount"
.LASF1420:
	.string	"MF_SHOOTABLE"
.LASF226:
	.string	"SPR_SMT2"
.LASF1102:
	.string	"S_RKEY2"
.LASF1073:
	.string	"S_ARM1"
.LASF1075:
	.string	"S_ARM2"
.LASF1720:
	.string	"sfx_pedth"
.LASF1168:
	.string	"S_HEADCANDLES"
.LASF204:
	.string	"SPR_PINS"
.LASF798:
	.string	"S_BOSS_STND"
.LASF1724:
	.string	"sfx_dmact"
.LASF1840:
	.string	"W_CheckNumForName"
.LASF778:
	.string	"S_HEAD_PAIN"
.LASF72:
	.string	"it_yellowcard"
.LASF1255:
	.string	"MT_TRACER"
.LASF659:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF661:
	.string	"S_FATT_DIE3"
.LASF662:
	.string	"S_FATT_DIE4"
.LASF663:
	.string	"S_FATT_DIE5"
.LASF664:
	.string	"S_FATT_DIE6"
.LASF665:
	.string	"S_FATT_DIE7"
.LASF666:
	.string	"S_FATT_DIE8"
.LASF667:
	.string	"S_FATT_DIE9"
.LASF734:
	.string	"S_TROO_XDIE2"
.LASF735:
	.string	"S_TROO_XDIE3"
.LASF736:
	.string	"S_TROO_XDIE4"
.LASF737:
	.string	"S_TROO_XDIE5"
.LASF738:
	.string	"S_TROO_XDIE6"
.LASF739:
	.string	"S_TROO_XDIE7"
.LASF740:
	.string	"S_TROO_XDIE8"
.LASF209:
	.string	"SPR_CLIP"
.LASF1181:
	.string	"S_SHRTREDCOL"
.LASF1224:
	.string	"S_HANGTSKULL"
.LASF1562:
	.string	"players"
.LASF1535:
	.string	"respawnparm"
.LASF1850:
	.string	"HU_Ticker"
.LASF22:
	.string	"_IO_buf_base"
.LASF102:
	.string	"NUMPOWERS"
.LASF1785:
	.string	"gamekeydown"
.LASF1009:
	.string	"S_SSWV_ATK3"
.LASF1010:
	.string	"S_SSWV_ATK4"
.LASF315:
	.string	"S_DSGUN10"
.LASF1712:
	.string	"sfx_cacdth"
.LASF97:
	.string	"pw_strength"
.LASF513:
	.string	"S_VILE_STND2"
.LASF243:
	.string	"SPR_CAND"
.LASF1669:
	.string	"sfx_stnmov"
.LASF1522:
	.string	"score"
.LASF1261:
	.string	"MT_SERGEANT"
.LASF1604:
	.string	"BT_SPECIAL"
.LASF1664:
	.string	"sfx_firxpl"
.LASF66:
	.string	"sk_easy"
.LASF17:
	.string	"_IO_read_end"
.LASF1111:
	.string	"S_STIM"
.LASF92:
	.string	"am_cell"
.LASF71:
	.string	"it_bluecard"
.LASF1453:
	.string	"floorz"
.LASF774:
	.string	"S_HEAD_RUN1"
.LASF429:
	.string	"S_PLAY_DIE1"
.LASF430:
	.string	"S_PLAY_DIE2"
.LASF431:
	.string	"S_PLAY_DIE3"
.LASF432:
	.string	"S_PLAY_DIE4"
.LASF125:
	.string	"_IO_FILE"
.LASF434:
	.string	"S_PLAY_DIE6"
.LASF435:
	.string	"S_PLAY_DIE7"
.LASF1524:
	.string	"epsd"
.LASF445:
	.string	"S_POSS_STND"
.LASF1804:
	.string	"statcopy"
.LASF1867:
	.string	"I_GetTime"
.LASF401:
	.string	"S_TFOG"
.LASF47:
	.string	"_IO_wide_data"
.LASF1340:
	.string	"MT_MISC41"
.LASF1469:
	.string	"subsector_s"
.LASF761:
	.string	"S_SARG_DIE1"
.LASF1587:
	.string	"data1"
.LASF762:
	.string	"S_SARG_DIE2"
.LASF1588:
	.string	"data2"
.LASF763:
	.string	"S_SARG_DIE3"
.LASF1589:
	.string	"data3"
.LASF764:
	.string	"S_SARG_DIE4"
.LASF1062:
	.string	"S_SPAWNFIRE1"
.LASF1063:
	.string	"S_SPAWNFIRE2"
.LASF1064:
	.string	"S_SPAWNFIRE3"
.LASF1065:
	.string	"S_SPAWNFIRE4"
.LASF1066:
	.string	"S_SPAWNFIRE5"
.LASF1067:
	.string	"S_SPAWNFIRE6"
.LASF1068:
	.string	"S_SPAWNFIRE7"
.LASF63:
	.string	"GS_DEMOSCREEN"
.LASF733:
	.string	"S_TROO_XDIE1"
.LASF1509:
	.string	"consistancy"
.LASF1835:
	.string	"M_ReadFile"
.LASF1470:
	.string	"sector"
.LASF1226:
	.string	"S_HANGTNOBRAIN"
.LASF381:
	.string	"S_PLASEXP2"
.LASF382:
	.string	"S_PLASEXP3"
.LASF383:
	.string	"S_PLASEXP4"
.LASF384:
	.string	"S_PLASEXP5"
.LASF84:
	.string	"wp_bfg"
.LASF1210:
	.string	"S_BTORCHSHRT2"
.LASF1211:
	.string	"S_BTORCHSHRT3"
.LASF1212:
	.string	"S_BTORCHSHRT4"
.LASF1719:
	.string	"sfx_kntdth"
.LASF514:
	.string	"S_VILE_RUN1"
.LASF304:
	.string	"S_DSGUNDOWN"
.LASF516:
	.string	"S_VILE_RUN3"
.LASF517:
	.string	"S_VILE_RUN4"
.LASF518:
	.string	"S_VILE_RUN5"
.LASF519:
	.string	"S_VILE_RUN6"
.LASF520:
	.string	"S_VILE_RUN7"
.LASF521:
	.string	"S_VILE_RUN8"
.LASF522:
	.string	"S_VILE_RUN9"
.LASF765:
	.string	"S_SARG_DIE5"
.LASF766:
	.string	"S_SARG_DIE6"
.LASF1532:
	.string	"plyr"
.LASF1447:
	.string	"thinker"
.LASF1741:
	.string	"sfx_bospit"
.LASF606:
	.string	"S_SKEL_FIST1"
.LASF607:
	.string	"S_SKEL_FIST2"
.LASF608:
	.string	"S_SKEL_FIST3"
.LASF609:
	.string	"S_SKEL_FIST4"
.LASF345:
	.string	"S_PLASMA"
.LASF1124:
	.string	"S_PINS"
.LASF1852:
	.string	"ST_Ticker"
.LASF1676:
	.string	"sfx_mnpain"
.LASF1197:
	.string	"S_BLUETORCH"
.LASF1579:
	.string	"size"
.LASF635:
	.string	"S_FATT_RUN1"
.LASF636:
	.string	"S_FATT_RUN2"
.LASF637:
	.string	"S_FATT_RUN3"
.LASF638:
	.string	"S_FATT_RUN4"
.LASF99:
	.string	"pw_ironfeet"
.LASF640:
	.string	"S_FATT_RUN6"
.LASF641:
	.string	"S_FATT_RUN7"
.LASF642:
	.string	"S_FATT_RUN8"
.LASF1173:
	.string	"S_MEAT2"
.LASF1174:
	.string	"S_MEAT3"
.LASF41:
	.string	"__pad5"
.LASF1176:
	.string	"S_MEAT5"
.LASF1697:
	.string	"sfx_pesit"
.LASF288:
	.string	"S_PISTOLFLASH"
.LASF1619:
	.string	"floorheight"
.LASF508:
	.string	"S_SPOS_RAISE2"
.LASF509:
	.string	"S_SPOS_RAISE3"
.LASF1519:
	.string	"sitems"
.LASF510:
	.string	"S_SPOS_RAISE4"
.LASF511:
	.string	"S_SPOS_RAISE5"
.LASF200:
	.string	"SPR_MEDI"
.LASF202:
	.string	"SPR_PINV"
.LASF1686:
	.string	"sfx_bgsit1"
.LASF1687:
	.string	"sfx_bgsit2"
.LASF1721:
	.string	"sfx_skedth"
.LASF1050:
	.string	"S_BRAIN_PAIN"
.LASF321:
	.string	"S_CHAINDOWN"
.LASF1431:
	.string	"MF_SLIDE"
.LASF1863:
	.string	"HU_Responder"
.LASF540:
	.string	"S_VILE_PAIN"
.LASF1781:
	.string	"joybfire"
.LASF587:
	.string	"S_TRACER"
.LASF61:
	.string	"GS_INTERMISSION"
.LASF27:
	.string	"_markers"
.LASF1554:
	.string	"levelstarttic"
.LASF1007:
	.string	"S_SSWV_ATK1"
.LASF1008:
	.string	"S_SSWV_ATK2"
.LASF537:
	.string	"S_VILE_HEAL1"
.LASF538:
	.string	"S_VILE_HEAL2"
.LASF539:
	.string	"S_VILE_HEAL3"
.LASF1012:
	.string	"S_SSWV_ATK6"
.LASF1462:
	.string	"movecount"
.LASF1761:
	.string	"starttime"
.LASF194:
	.string	"SPR_RKEY"
.LASF1693:
	.string	"sfx_bspsit"
.LASF1158:
	.string	"S_STALAG"
.LASF1646:
	.string	"screens"
.LASF1817:
	.string	"Z_Malloc"
.LASF1674:
	.string	"sfx_popain"
.LASF873:
	.string	"S_SPID_STND2"
.LASF117:
	.string	"angle_t"
.LASF37:
	.string	"_codecvt"
.LASF1622:
	.string	"ceilingpic"
.LASF1159:
	.string	"S_BLOODYTWITCH"
.LASF1228:
	.string	"S_SMALLPOOL"
.LASF1417:
	.string	"pspdef_t"
.LASF1355:
	.string	"MT_MISC56"
.LASF657:
	.string	"S_FATT_PAIN"
.LASF421:
	.string	"S_PLAY_RUN1"
.LASF422:
	.string	"S_PLAY_RUN2"
.LASF423:
	.string	"S_PLAY_RUN3"
.LASF424:
	.string	"S_PLAY_RUN4"
.LASF1523:
	.string	"wbplayerstruct_t"
.LASF1149:
	.string	"S_BPAK"
.LASF113:
	.string	"double"
.LASF189:
	.string	"SPR_BEXP"
.LASF1607:
	.string	"BT_WEAPONMASK"
.LASF1872:
	.string	"HU_dequeueChatChar"
.LASF1473:
	.string	"player_s"
.LASF1106:
	.string	"S_BSKULL2"
.LASF1762:
	.string	"demoname"
.LASF1426:
	.string	"MF_SPAWNCEILING"
.LASF148:
	.string	"SPR_PUFF"
.LASF1035:
	.string	"S_COMMKEEN"
.LASF1665:
	.string	"sfx_pstart"
.LASF1490:
	.string	"usedown"
.LASF1845:
	.string	"P_RemoveMobj"
.LASF1541:
	.string	"respawnmonsters"
.LASF827:
	.string	"S_BOS2_STND"
.LASF154:
	.string	"SPR_BFS1"
.LASF1058:
	.string	"S_SPAWN1"
.LASF1059:
	.string	"S_SPAWN2"
.LASF1060:
	.string	"S_SPAWN3"
.LASF1061:
	.string	"S_SPAWN4"
.LASF1231:
	.string	"S_TECHLAMP2"
.LASF1232:
	.string	"S_TECHLAMP3"
.LASF85:
	.string	"wp_chainsaw"
.LASF1269:
	.string	"MT_BABY"
.LASF1488:
	.string	"maxammo"
.LASF1826:
	.string	"R_FillBackScreen"
.LASF1738:
	.string	"sfx_flame"
.LASF1172:
	.string	"S_LIVESTICK2"
.LASF1217:
	.string	"S_RTORCHSHRT"
.LASF1315:
	.string	"MT_MISC19"
.LASF176:
	.string	"SPR_SPID"
.LASF1905:
	.string	"G_DoReborn"
.LASF773:
	.string	"S_HEAD_STND"
.LASF1544:
	.string	"automapactive"
.LASF748:
	.string	"S_SARG_RUN1"
.LASF749:
	.string	"S_SARG_RUN2"
.LASF751:
	.string	"S_SARG_RUN4"
.LASF752:
	.string	"S_SARG_RUN5"
.LASF753:
	.string	"S_SARG_RUN6"
.LASF754:
	.string	"S_SARG_RUN7"
.LASF755:
	.string	"S_SARG_RUN8"
.LASF1293:
	.string	"MT_MISC1"
.LASF1294:
	.string	"MT_MISC2"
.LASF1295:
	.string	"MT_MISC3"
.LASF1296:
	.string	"MT_MISC4"
.LASF1297:
	.string	"MT_MISC5"
.LASF1298:
	.string	"MT_MISC6"
.LASF1299:
	.string	"MT_MISC7"
.LASF1300:
	.string	"MT_MISC8"
.LASF1301:
	.string	"MT_MISC9"
.LASF338:
	.string	"S_SAW"
.LASF1796:
	.string	"dclicks2"
.LASF1823:
	.string	"P_ArchiveWorld"
.LASF205:
	.string	"SPR_MEGA"
.LASF427:
	.string	"S_PLAY_PAIN"
.LASF1702:
	.string	"sfx_claw"
.LASF379:
	.string	"S_PLASBALL2"
.LASF1414:
	.string	"ps_flash"
.LASF1474:
	.string	"playerstate"
.LASF1520:
	.string	"ssecret"
.LASF183:
	.string	"SPR_KEEN"
.LASF1013:
	.string	"S_SSWV_PAIN"
.LASF1395:
	.string	"painstate"
.LASF1048:
	.string	"S_KEENPAIN2"
.LASF101:
	.string	"pw_infrared"
.LASF535:
	.string	"S_VILE_ATK10"
.LASF536:
	.string	"S_VILE_ATK11"
.LASF1769:
	.string	"key_left"
.LASF1014:
	.string	"S_SSWV_PAIN2"
.LASF1379:
	.string	"MT_MISC80"
.LASF1402:
	.string	"deathsound"
.LASF1088:
	.string	"S_BON1A"
.LASF1089:
	.string	"S_BON1B"
.LASF1090:
	.string	"S_BON1C"
.LASF1091:
	.string	"S_BON1D"
.LASF1092:
	.string	"S_BON1E"
.LASF1555:
	.string	"leveltime"
.LASF1639:
	.string	"sector_t"
.LASF1887:
	.string	"G_InitNew"
.LASF203:
	.string	"SPR_PSTR"
.LASF1317:
	.string	"MT_MISC21"
.LASF759:
	.string	"S_SARG_PAIN"
.LASF192:
	.string	"SPR_BON2"
.LASF1312:
	.string	"MT_CLIP"
.LASF218:
	.string	"SPR_BFUG"
.LASF1367:
	.string	"MT_MISC68"
.LASF1084:
	.string	"S_BBAR1"
.LASF1085:
	.string	"S_BBAR2"
.LASF1086:
	.string	"S_BBAR3"
.LASF1798:
	.string	"joyymove"
.LASF272:
	.string	"S_LIGHTDONE"
.LASF1782:
	.string	"joybstrafe"
.LASF923:
	.string	"S_BSPI_PAIN2"
.LASF1482:
	.string	"backpack"
.LASF723:
	.string	"S_TROO_ATK1"
.LASF724:
	.string	"S_TROO_ATK2"
.LASF725:
	.string	"S_TROO_ATK3"
.LASF867:
	.string	"S_SKULL_DIE2"
.LASF868:
	.string	"S_SKULL_DIE3"
.LASF869:
	.string	"S_SKULL_DIE4"
.LASF870:
	.string	"S_SKULL_DIE5"
.LASF871:
	.string	"S_SKULL_DIE6"
.LASF222:
	.string	"SPR_PLAS"
.LASF1830:
	.string	"P_UnArchiveSpecials"
.LASF1094:
	.string	"S_BON2A"
.LASF1095:
	.string	"S_BON2B"
.LASF135:
	.string	"SPR_PISF"
.LASF134:
	.string	"SPR_PISG"
.LASF1098:
	.string	"S_BON2E"
.LASF1322:
	.string	"MT_CHAINGUN"
.LASF370:
	.string	"S_TBALLX1"
.LASF371:
	.string	"S_TBALLX2"
.LASF372:
	.string	"S_TBALLX3"
.LASF88:
	.string	"wp_nochange"
.LASF433:
	.string	"S_PLAY_DIE5"
.LASF1259:
	.string	"MT_CHAINGUY"
.LASF1760:
	.string	"timingdemo"
.LASF1618:
	.string	"degenmobj_t"
.LASF1684:
	.string	"sfx_posit2"
.LASF1130:
	.string	"S_MEGA3"
.LASF866:
	.string	"S_SKULL_DIE1"
.LASF57:
	.string	"pack_tnt"
.LASF1229:
	.string	"S_BRAINSTEM"
.LASF1034:
	.string	"S_KEENSTND"
.LASF1134:
	.string	"S_PMAP2"
.LASF159:
	.string	"SPR_PLAY"
.LASF40:
	.string	"_freeres_buf"
.LASF1484:
	.string	"readyweapon"
.LASF1689:
	.string	"sfx_cacsit"
.LASF1698:
	.string	"sfx_sklatk"
.LASF1776:
	.string	"key_strafe"
.LASF1904:
	.string	"G_ScreenShot"
.LASF1795:
	.string	"dclickstate2"
.LASF1784:
	.string	"joybspeed"
.LASF14:
	.string	"long long unsigned int"
.LASF1169:
	.string	"S_HEADCANDLES2"
.LASF1289:
	.string	"MT_IFOG"
.LASF32:
	.string	"_cur_column"
.LASF250:
	.string	"SPR_FSKU"
.LASF1744:
	.string	"sfx_bospn"
.LASF485:
	.string	"S_SPOS_RUN6"
.LASF341:
	.string	"S_SAWUP"
.LASF1074:
	.string	"S_ARM1A"
.LASF677:
	.string	"S_CPOS_STND"
.LASF1330:
	.string	"MT_MISC31"
.LASF1457:
	.string	"momz"
.LASF1148:
	.string	"S_SBOX"
.LASF1625:
	.string	"soundtraversed"
.LASF1333:
	.string	"MT_MISC34"
.LASF1645:
	.string	"subsector_t"
.LASF1635:
	.string	"bbox"
.LASF380:
	.string	"S_PLASEXP"
.LASF1711:
	.string	"sfx_sgtdth"
.LASF1336:
	.string	"MT_MISC37"
.LASF1678:
	.string	"sfx_slop"
.LASF1164:
	.string	"S_DEADBOTTOM"
.LASF1735:
	.string	"sfx_bdopn"
.LASF1221:
	.string	"S_HANGNOGUTS"
.LASF235:
	.string	"SPR_GOR3"
.LASF1394:
	.string	"attacksound"
.LASF1125:
	.string	"S_PINS2"
.LASF1126:
	.string	"S_PINS3"
.LASF1127:
	.string	"S_PINS4"
.LASF1610:
	.string	"BTS_SAVEGAME"
.LASF979:
	.string	"S_PAIN_ATK1"
.LASF980:
	.string	"S_PAIN_ATK2"
.LASF981:
	.string	"S_PAIN_ATK3"
.LASF982:
	.string	"S_PAIN_ATK4"
.LASF1531:
	.string	"pnum"
.LASF291:
	.string	"S_SGUNUP"
.LASF1819:
	.string	"M_ClearRandom"
.LASF1428:
	.string	"MF_DROPOFF"
.LASF1637:
	.string	"frontsector"
.LASF1605:
	.string	"BT_SPECIALMASK"
.LASF1906:
	.string	"playernum"
.LASF244:
	.string	"SPR_CBRA"
.LASF1400:
	.string	"deathstate"
.LASF1076:
	.string	"S_ARM2A"
.LASF945:
	.string	"S_CYBER_STND"
.LASF1602:
	.string	"BT_ATTACK"
.LASF1104:
	.string	"S_YKEY2"
.LASF554:
	.string	"S_FIRE3"
.LASF1690:
	.string	"sfx_brssit"
.LASF1393:
	.string	"reactiontime"
.LASF25:
	.string	"_IO_backup_base"
.LASF1599:
	.string	"ga_worlddone"
.LASF559:
	.string	"S_FIRE8"
.LASF799:
	.string	"S_BOSS_STND2"
.LASF1728:
	.string	"sfx_noway"
.LASF16:
	.string	"_IO_read_ptr"
.LASF1449:
	.string	"sprev"
.LASF342:
	.string	"S_SAW1"
.LASF343:
	.string	"S_SAW2"
.LASF344:
	.string	"S_SAW3"
.LASF59:
	.string	"none"
.LASF1087:
	.string	"S_BON1"
.LASF1093:
	.string	"S_BON2"
.LASF1855:
	.string	"S_PauseSound"
.LASF1465:
	.string	"player"
.LASF1783:
	.string	"joybuse"
.LASF339:
	.string	"S_SAWB"
.LASF1832:
	.string	"P_UnArchiveWorld"
.LASF727:
	.string	"S_TROO_PAIN2"
.LASF39:
	.string	"_freeres_list"
.LASF1878:
	.string	"skill"
.LASF1275:
	.string	"MT_BOSSSPIT"
.LASF552:
	.string	"S_FIRE1"
.LASF553:
	.string	"S_FIRE2"
.LASF111:
	.string	"fixed_t"
.LASF555:
	.string	"S_FIRE4"
.LASF556:
	.string	"S_FIRE5"
.LASF557:
	.string	"S_FIRE6"
.LASF558:
	.string	"S_FIRE7"
.LASF212:
	.string	"SPR_BROK"
.LASF560:
	.string	"S_FIRE9"
.LASF1343:
	.string	"MT_MISC44"
.LASF1344:
	.string	"MT_MISC45"
.LASF1145:
	.string	"S_CELL"
.LASF1346:
	.string	"MT_MISC47"
.LASF210:
	.string	"SPR_AMMO"
.LASF1347:
	.string	"MT_MISC48"
.LASF1348:
	.string	"MT_MISC49"
.LASF858:
	.string	"S_SKULL_RUN1"
.LASF859:
	.string	"S_SKULL_RUN2"
.LASF1225:
	.string	"S_HANGTLOOKUP"
.LASF1421:
	.string	"MF_NOSECTOR"
.LASF320:
	.string	"S_CHAIN"
.LASF1560:
	.string	"gamestate"
.LASF1586:
	.string	"evtype_t"
.LASF350:
	.string	"S_PLASMAFLASH1"
.LASF306:
	.string	"S_DSGUN1"
.LASF307:
	.string	"S_DSGUN2"
.LASF201:
	.string	"SPR_SOUL"
.LASF161:
	.string	"SPR_SPOS"
.LASF310:
	.string	"S_DSGUN5"
.LASF311:
	.string	"S_DSGUN6"
.LASF312:
	.string	"S_DSGUN7"
.LASF313:
	.string	"S_DSGUN8"
.LASF314:
	.string	"S_DSGUN9"
.LASF478:
	.string	"S_SPOS_STND"
.LASF181:
	.string	"SPR_PAIN"
.LASF706:
	.string	"S_CPOS_RAISE1"
.LASF1483:
	.string	"frags"
.LASF1718:
	.string	"sfx_vildth"
.LASF31:
	.string	"_old_offset"
.LASF1478:
	.string	"armorpoints"
.LASF1511:
	.string	"buttons"
.LASF355:
	.string	"S_BFG1"
.LASF356:
	.string	"S_BFG2"
.LASF357:
	.string	"S_BFG3"
.LASF358:
	.string	"S_BFG4"
.LASF1898:
	.string	"G_DoNewGame"
.LASF1871:
	.string	"R_FlatNumForName"
.LASF270:
	.string	"spritenum_t"
.LASF317:
	.string	"S_DSNR2"
.LASF857:
	.string	"S_SKULL_STND2"
.LASF1120:
	.string	"S_PINV2"
.LASF1121:
	.string	"S_PINV3"
.LASF750:
	.string	"S_SARG_RUN3"
.LASF1235:
	.string	"S_TECH2LAMP2"
.LASF1236:
	.string	"S_TECH2LAMP3"
.LASF1237:
	.string	"S_TECH2LAMP4"
.LASF116:
	.string	"finecosine"
.LASF1633:
	.string	"line_s"
.LASF6:
	.string	"long long int"
.LASF133:
	.string	"SPR_PUNG"
.LASF701:
	.string	"S_CPOS_XDIE2"
.LASF702:
	.string	"S_CPOS_XDIE3"
.LASF703:
	.string	"S_CPOS_XDIE4"
.LASF704:
	.string	"S_CPOS_XDIE5"
.LASF705:
	.string	"S_CPOS_XDIE6"
.LASF886:
	.string	"S_SPID_ATK1"
.LASF887:
	.string	"S_SPID_ATK2"
.LASF888:
	.string	"S_SPID_ATK3"
.LASF30:
	.string	"_flags2"
.LASF610:
	.string	"S_SKEL_MISS1"
.LASF611:
	.string	"S_SKEL_MISS2"
.LASF612:
	.string	"S_SKEL_MISS3"
.LASF613:
	.string	"S_SKEL_MISS4"
.LASF367:
	.string	"S_PUFF4"
.LASF1107:
	.string	"S_RSKULL"
.LASF939:
	.string	"S_ARACH_PLAZ2"
.LASF1349:
	.string	"MT_MISC50"
.LASF787:
	.string	"S_HEAD_RAISE1"
.LASF1384:
	.string	"MT_MISC85"
.LASF788:
	.string	"S_HEAD_RAISE2"
.LASF789:
	.string	"S_HEAD_RAISE3"
.LASF1491:
	.string	"cheats"
.LASF196:
	.string	"SPR_BSKU"
.LASF791:
	.string	"S_HEAD_RAISE5"
.LASF792:
	.string	"S_HEAD_RAISE6"
.LASF1616:
	.string	"save_p"
.LASF1869:
	.string	"memset"
.LASF1327:
	.string	"MT_SUPERSHOTGUN"
.LASF207:
	.string	"SPR_PMAP"
.LASF1055:
	.string	"S_BRAINEYE"
.LASF208:
	.string	"SPR_PVIS"
.LASF1799:
	.string	"joyarray"
.LASF1513:
	.string	"PST_LIVE"
.LASF1539:
	.string	"gameepisode"
.LASF1285:
	.string	"MT_ARACHPLAZ"
.LASF1437:
	.string	"MF_NOBLOOD"
.LASF1580:
	.string	"user"
.LASF1889:
	.string	"G_DoSaveGame"
.LASF533:
	.string	"S_VILE_ATK8"
.LASF474:
	.string	"S_POSS_RAISE1"
.LASF475:
	.string	"S_POSS_RAISE2"
.LASF476:
	.string	"S_POSS_RAISE3"
.LASF477:
	.string	"S_POSS_RAISE4"
.LASF329:
	.string	"S_MISSILEDOWN"
.LASF1729:
	.string	"sfx_barexp"
.LASF1193:
	.string	"S_FLOATSKULL2"
.LASF1194:
	.string	"S_FLOATSKULL3"
.LASF1652:
	.string	"sfx_dbopn"
.LASF1793:
	.string	"dclicks"
.LASF1594:
	.string	"ga_loadgame"
.LASF1569:
	.string	"wipegamestate"
.LASF1128:
	.string	"S_MEGA"
.LASF808:
	.string	"S_BOSS_ATK1"
.LASF809:
	.string	"S_BOSS_ATK2"
.LASF810:
	.string	"S_BOSS_ATK3"
.LASF1452:
	.string	"subsector"
.LASF266:
	.string	"SPR_BRS1"
.LASF1617:
	.string	"vertex_t"
.LASF615:
	.string	"S_SKEL_PAIN2"
.LASF1152:
	.string	"S_CSAW"
.LASF96:
	.string	"pw_invulnerability"
.LASF1808:
	.string	"setsizeneeded"
.LASF795:
	.string	"S_BRBALLX1"
.LASF796:
	.string	"S_BRBALLX2"
.LASF797:
	.string	"S_BRBALLX3"
.LASF925:
	.string	"S_BSPI_DIE2"
.LASF926:
	.string	"S_BSPI_DIE3"
.LASF927:
	.string	"S_BSPI_DIE4"
.LASF928:
	.string	"S_BSPI_DIE5"
.LASF81:
	.string	"wp_chaingun"
.LASF930:
	.string	"S_BSPI_DIE7"
.LASF1919:
	.string	"G_DoLoadLevel"
.LASF70:
	.string	"skill_t"
.LASF854:
	.string	"S_BOS2_RAISE6"
.LASF481:
	.string	"S_SPOS_RUN2"
.LASF1638:
	.string	"backsector"
.LASF482:
	.string	"S_SPOS_RUN3"
.LASF984:
	.string	"S_PAIN_PAIN2"
.LASF619:
	.string	"S_SKEL_DIE4"
.LASF1648:
	.string	"sfx_pistol"
.LASF215:
	.string	"SPR_SHEL"
.LASF1368:
	.string	"MT_MISC69"
.LASF1479:
	.string	"armortype"
.LASF103:
	.string	"false"
.LASF267:
	.string	"SPR_TLMP"
.LASF1433:
	.string	"MF_TELEPORT"
.LASF446:
	.string	"S_POSS_STND2"
.LASF1326:
	.string	"MT_SHOTGUN"
.LASF1551:
	.string	"totalkills"
.LASF1902:
	.string	"G_SecretExitLevel"
.LASF1775:
	.string	"key_use"
.LASF1251:
	.string	"MT_SHOTGUY"
.LASF1494:
	.string	"itemcount"
.LASF1230:
	.string	"S_TECHLAMP"
.LASF1801:
	.string	"savegameslot"
.LASF1862:
	.string	"ST_Responder"
.LASF1272:
	.string	"MT_WOLFSS"
.LASF1911:
	.string	"mthing"
.LASF1768:
	.string	"key_right"
.LASF1787:
	.string	"mousearray"
.LASF828:
	.string	"S_BOS2_STND2"
.LASF1626:
	.string	"soundtarget"
.LASF323:
	.string	"S_CHAIN1"
.LASF324:
	.string	"S_CHAIN2"
.LASF325:
	.string	"S_CHAIN3"
.LASF376:
	.string	"S_RBALLX2"
.LASF377:
	.string	"S_RBALLX3"
.LASF1913:
	.string	"G_PlayerFinishLevel"
.LASF252:
	.string	"SPR_TBLU"
.LASF479:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1649:
	.string	"sfx_shotgn"
.LASF1448:
	.string	"snext"
.LASF1820:
	.string	"M_WriteFile"
.LASF95:
	.string	"am_noammo"
.LASF126:
	.string	"thinker_s"
.LASF130:
	.string	"thinker_t"
.LASF1709:
	.string	"sfx_bgdth1"
.LASF1710:
	.string	"sfx_bgdth2"
.LASF1834:
	.string	"strcmp"
.LASF1069:
	.string	"S_SPAWNFIRE8"
.LASF455:
	.string	"S_POSS_ATK1"
.LASF456:
	.string	"S_POSS_ATK2"
.LASF457:
	.string	"S_POSS_ATK3"
.LASF65:
	.string	"sk_baby"
.LASF1925:
	.string	"side"
.LASF1370:
	.string	"MT_MISC71"
.LASF1218:
	.string	"S_RTORCHSHRT2"
.LASF1219:
	.string	"S_RTORCHSHRT3"
.LASF889:
	.string	"S_SPID_ATK4"
.LASF1122:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF906:
	.string	"S_BSPI_RUN1"
.LASF1376:
	.string	"MT_MISC77"
.LASF1377:
	.string	"MT_MISC78"
.LASF1378:
	.string	"MT_MISC79"
.LASF1267:
	.string	"MT_SKULL"
.LASF1574:
	.string	"rndindex"
.LASF1254:
	.string	"MT_UNDEAD"
.LASF54:
	.string	"GameMode_t"
.LASF127:
	.string	"prev"
.LASF33:
	.string	"_vtable_offset"
.LASF616:
	.string	"S_SKEL_DIE1"
.LASF617:
	.string	"S_SKEL_DIE2"
.LASF618:
	.string	"S_SKEL_DIE3"
.LASF163:
	.string	"SPR_FIRE"
.LASF620:
	.string	"S_SKEL_DIE5"
.LASF621:
	.string	"S_SKEL_DIE6"
.LASF1558:
	.string	"demorecording"
.LASF1227:
	.string	"S_COLONGIBS"
.LASF1537:
	.string	"gamemode"
.LASF268:
	.string	"SPR_TLP2"
.LASF378:
	.string	"S_PLASBALL"
.LASF1705:
	.string	"sfx_pdiehi"
.LASF224:
	.string	"SPR_SGN2"
.LASF109:
	.string	"options"
.LASF177:
	.string	"SPR_BSPI"
.LASF179:
	.string	"SPR_APBX"
.LASF1502:
	.string	"colormap"
.LASF52:
	.string	"retail"
.LASF1303:
	.string	"MT_MISC11"
.LASF1304:
	.string	"MT_MISC12"
.LASF1306:
	.string	"MT_MISC13"
.LASF1308:
	.string	"MT_MISC14"
.LASF1309:
	.string	"MT_MISC15"
.LASF1310:
	.string	"MT_MISC16"
.LASF1313:
	.string	"MT_MISC17"
.LASF1314:
	.string	"MT_MISC18"
.LASF1141:
	.string	"S_CLIP"
.LASF1404:
	.string	"radius"
.LASF1460:
	.string	"health"
.LASF1276:
	.string	"MT_BOSSTARGET"
.LASF1694:
	.string	"sfx_kntsit"
.LASF1441:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"g_game.c"
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
