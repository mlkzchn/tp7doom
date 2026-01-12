	.file	"d_main.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "d_main.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: d_main.c,v 1.8 1997/02/03 22:45:09 b1 Exp $"
	.globl	wadfiles
	.bss
	.align 32
	.type	wadfiles, @object
	.size	wadfiles, 160
wadfiles:
	.zero	160
	.globl	devparm
	.align 4
	.type	devparm, @object
	.size	devparm, 4
devparm:
	.zero	4
	.globl	nomonsters
	.align 4
	.type	nomonsters, @object
	.size	nomonsters, 4
nomonsters:
	.zero	4
	.globl	respawnparm
	.align 4
	.type	respawnparm, @object
	.size	respawnparm, 4
respawnparm:
	.zero	4
	.globl	fastparm
	.align 4
	.type	fastparm, @object
	.size	fastparm, 4
fastparm:
	.zero	4
	.globl	drone
	.align 4
	.type	drone, @object
	.size	drone, 4
drone:
	.zero	4
	.globl	singletics
	.align 4
	.type	singletics, @object
	.size	singletics, 4
singletics:
	.zero	4
	.globl	startskill
	.align 4
	.type	startskill, @object
	.size	startskill, 4
startskill:
	.zero	4
	.globl	startepisode
	.align 4
	.type	startepisode, @object
	.size	startepisode, 4
startepisode:
	.zero	4
	.globl	startmap
	.align 4
	.type	startmap, @object
	.size	startmap, 4
startmap:
	.zero	4
	.globl	autostart
	.align 4
	.type	autostart, @object
	.size	autostart, 4
autostart:
	.zero	4
	.globl	debugfile
	.align 8
	.type	debugfile, @object
	.size	debugfile, 8
debugfile:
	.zero	8
	.globl	advancedemo
	.align 4
	.type	advancedemo, @object
	.size	advancedemo, 4
advancedemo:
	.zero	4
	.globl	wadfile
	.align 32
	.type	wadfile, @object
	.size	wadfile, 1024
wadfile:
	.zero	1024
	.globl	mapdir
	.align 32
	.type	mapdir, @object
	.size	mapdir, 1024
mapdir:
	.zero	1024
	.globl	basedefault
	.align 32
	.type	basedefault, @object
	.size	basedefault, 1024
basedefault:
	.zero	1024
	.globl	events
	.align 32
	.type	events, @object
	.size	events, 1024
events:
	.zero	1024
	.globl	eventhead
	.align 4
	.type	eventhead, @object
	.size	eventhead, 4
eventhead:
	.zero	4
	.globl	eventtail
	.align 4
	.type	eventtail, @object
	.size	eventtail, 4
eventtail:
	.zero	4
	.text
	.globl	D_PostEvent
	.type	D_PostEvent, @function
D_PostEvent:
.LFB6:
	.file 1 "d_main.c"
	.loc 1 151 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ev, ev
# d_main.c:152:     events[eventhead] = *ev;
	.loc 1 152 11
	movl	eventhead(%rip), %eax	# eventhead, eventhead.0_1
# d_main.c:152:     events[eventhead] = *ev;
	.loc 1 152 23
	cltq
	salq	$4, %rax	#, tmp87
	movq	%rax, %rsi	# tmp87, tmp88
	leaq	events(%rip), %rcx	#, tmp89
	movq	-8(%rbp), %rax	# ev, tmp90
	movq	8(%rax), %rdx	# *ev_7(D),
	movq	(%rax), %rax	# *ev_7(D), tmp91
	movq	%rax, (%rsi,%rcx)	# tmp91, events[eventhead.0_1]
	movq	%rdx, 8(%rsi,%rcx)	#, events[eventhead.0_1]
# d_main.c:153:     eventhead = (++eventhead)&(MAXEVENTS-1);
	.loc 1 153 18
	movl	eventhead(%rip), %eax	# eventhead, eventhead.1_2
	addl	$1, %eax	#, _3
# d_main.c:153:     eventhead = (++eventhead)&(MAXEVENTS-1);
	.loc 1 153 15
	movl	%eax, eventhead(%rip)	# _3, eventhead
# d_main.c:153:     eventhead = (++eventhead)&(MAXEVENTS-1);
	.loc 1 153 18
	movl	eventhead(%rip), %eax	# eventhead, eventhead.2_4
# d_main.c:153:     eventhead = (++eventhead)&(MAXEVENTS-1);
	.loc 1 153 30
	andl	$63, %eax	#, _5
# d_main.c:153:     eventhead = (++eventhead)&(MAXEVENTS-1);
	.loc 1 153 15
	movl	%eax, eventhead(%rip)	# _5, eventhead
# d_main.c:154: }
	.loc 1 154 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	D_PostEvent, .-D_PostEvent
	.section	.rodata
.LC0:
	.string	"map01"
	.text
	.globl	D_ProcessEvents
	.type	D_ProcessEvents, @function
D_ProcessEvents:
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
# d_main.c:166:     if ( ( gamemode == commercial )
	.loc 1 166 21
	movl	gamemode(%rip), %eax	# gamemode, gamemode.3_1
# d_main.c:166:     if ( ( gamemode == commercial )
	.loc 1 166 8
	cmpl	$2, %eax	#, gamemode.3_1
	jne	.L5	#,
# d_main.c:167: 	 && (W_CheckNumForName("map01")<0) )
	.loc 1 167 7
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	W_CheckNumForName@PLT	#
# d_main.c:167: 	 && (W_CheckNumForName("map01")<0) )
	.loc 1 167 3 discriminator 1
	testl	%eax, %eax	# _2
	js	.L9	#,
# d_main.c:170:     for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
	.loc 1 170 5
	jmp	.L5	#
.L8:
# d_main.c:172: 	ev = &events[eventtail];
	.loc 1 172 14
	movl	eventtail(%rip), %eax	# eventtail, eventtail.4_3
# d_main.c:172: 	ev = &events[eventtail];
	.loc 1 172 5
	cltq
	salq	$4, %rax	#, tmp93
	movq	%rax, %rdx	# tmp93, tmp94
	leaq	events(%rip), %rax	#, tmp95
	addq	%rdx, %rax	# tmp94, tmp96
	movq	%rax, -8(%rbp)	# tmp96, ev
# d_main.c:173: 	if (M_Responder (ev))
	.loc 1 173 6
	movq	-8(%rbp), %rax	# ev, tmp97
	movq	%rax, %rdi	# tmp97,
	call	M_Responder@PLT	#
# d_main.c:173: 	if (M_Responder (ev))
	.loc 1 173 5 discriminator 1
	testl	%eax, %eax	# _4
	jne	.L10	#,
# d_main.c:175: 	G_Responder (ev);
	.loc 1 175 2
	movq	-8(%rbp), %rax	# ev, tmp98
	movq	%rax, %rdi	# tmp98,
	call	G_Responder@PLT	#
	jmp	.L7	#
.L10:
# d_main.c:174: 	    continue;               // menu ate the event
	.loc 1 174 6
	nop	
.L7:
# d_main.c:170:     for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
	.loc 1 170 51
	movl	eventtail(%rip), %eax	# eventtail, eventtail.5_5
	addl	$1, %eax	#, _6
# d_main.c:170:     for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
	.loc 1 170 48
	movl	%eax, eventtail(%rip)	# _6, eventtail
# d_main.c:170:     for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
	.loc 1 170 51
	movl	eventtail(%rip), %eax	# eventtail, eventtail.6_7
# d_main.c:170:     for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
	.loc 1 170 63
	andl	$63, %eax	#, _8
# d_main.c:170:     for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
	.loc 1 170 48
	movl	%eax, eventtail(%rip)	# _8, eventtail
.L5:
# d_main.c:170:     for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
	.loc 1 170 23 discriminator 1
	movl	eventtail(%rip), %edx	# eventtail, eventtail.7_9
	movl	eventhead(%rip), %eax	# eventhead, eventhead.8_10
	cmpl	%eax, %edx	# eventhead.8_10, eventtail.7_9
	jne	.L8	#,
	jmp	.L2	#
.L9:
# d_main.c:168:       return;
	.loc 1 168 7
	nop	
.L2:
# d_main.c:177: }
	.loc 1 177 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	D_ProcessEvents, .-D_ProcessEvents
	.globl	wipegamestate
	.data
	.align 4
	.type	wipegamestate, @object
	.size	wipegamestate, 4
wipegamestate:
	.long	3
	.section	.rodata
.LC1:
	.string	"PLAYPAL"
.LC2:
	.string	"M_PAUSE"
	.text
	.globl	D_Display
	.type	D_Display, @function
D_Display:
.LFB8:
	.loc 1 194 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# d_main.c:209:     if (nodrawers)
	.loc 1 209 9
	movl	nodrawers(%rip), %eax	# nodrawers, nodrawers.9_1
# d_main.c:209:     if (nodrawers)
	.loc 1 209 8
	testl	%eax, %eax	# nodrawers.9_1
	jne	.L41	#,
# d_main.c:212:     redrawsbar = false;
	.loc 1 212 16
	movl	$0, -16(%rbp)	#, redrawsbar
# d_main.c:215:     if (setsizeneeded)
	.loc 1 215 9
	movl	setsizeneeded(%rip), %eax	# setsizeneeded, setsizeneeded.10_2
# d_main.c:215:     if (setsizeneeded)
	.loc 1 215 8
	testl	%eax, %eax	# setsizeneeded.10_2
	je	.L14	#,
# d_main.c:217: 	R_ExecuteSetViewSize ();
	.loc 1 217 2
	call	R_ExecuteSetViewSize@PLT	#
# d_main.c:218: 	oldgamestate = -1;                      // force background redraw
	.loc 1 218 15
	movl	$-1, oldgamestate.5(%rip)	#, oldgamestate
# d_main.c:219: 	borderdrawcount = 3;
	.loc 1 219 18
	movl	$3, borderdrawcount.4(%rip)	#, borderdrawcount
.L14:
# d_main.c:223:     if (gamestate != wipegamestate)
	.loc 1 223 19
	movl	gamestate(%rip), %edx	# gamestate, gamestate.11_3
	movl	wipegamestate(%rip), %eax	# wipegamestate, wipegamestate.12_4
# d_main.c:223:     if (gamestate != wipegamestate)
	.loc 1 223 8
	cmpl	%eax, %edx	# wipegamestate.12_4, gamestate.11_3
	je	.L15	#,
# d_main.c:225: 	wipe = true;
	.loc 1 225 7
	movl	$1, -20(%rbp)	#, wipe
# d_main.c:226: 	wipe_StartScreen(0, 0, SCREENWIDTH, SCREENHEIGHT);
	.loc 1 226 2
	movl	$200, %ecx	#,
	movl	$320, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	wipe_StartScreen@PLT	#
	jmp	.L16	#
.L15:
# d_main.c:229: 	wipe = false;
	.loc 1 229 7
	movl	$0, -20(%rbp)	#, wipe
.L16:
# d_main.c:231:     if (gamestate == GS_LEVEL && gametic)
	.loc 1 231 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.13_5
# d_main.c:231:     if (gamestate == GS_LEVEL && gametic)
	.loc 1 231 8
	testl	%eax, %eax	# gamestate.13_5
	jne	.L17	#,
# d_main.c:231:     if (gamestate == GS_LEVEL && gametic)
	.loc 1 231 31 discriminator 1
	movl	gametic(%rip), %eax	# gametic, gametic.14_6
	testl	%eax, %eax	# gametic.14_6
	je	.L17	#,
# d_main.c:232: 	HU_Erase();
	.loc 1 232 2
	call	HU_Erase@PLT	#
.L17:
# d_main.c:235:     switch (gamestate)
	.loc 1 235 5
	movl	gamestate(%rip), %eax	# gamestate, gamestate.15_7
	cmpl	$3, %eax	#, gamestate.15_7
	je	.L18	#,
	cmpl	$3, %eax	#, gamestate.15_7
	ja	.L19	#,
	cmpl	$2, %eax	#, gamestate.15_7
	je	.L20	#,
	cmpl	$2, %eax	#, gamestate.15_7
	ja	.L19	#,
	testl	%eax, %eax	# gamestate.15_7
	je	.L21	#,
	cmpl	$1, %eax	#, gamestate.15_7
	je	.L22	#,
	jmp	.L19	#
.L21:
# d_main.c:238: 	if (!gametic)
	.loc 1 238 6
	movl	gametic(%rip), %eax	# gametic, gametic.16_8
# d_main.c:238: 	if (!gametic)
	.loc 1 238 5
	testl	%eax, %eax	# gametic.16_8
	je	.L42	#,
# d_main.c:240: 	if (automapactive)
	.loc 1 240 6
	movl	automapactive(%rip), %eax	# automapactive, automapactive.17_9
# d_main.c:240: 	if (automapactive)
	.loc 1 240 5
	testl	%eax, %eax	# automapactive.17_9
	je	.L24	#,
# d_main.c:241: 	    AM_Drawer ();
	.loc 1 241 6
	call	AM_Drawer@PLT	#
.L24:
# d_main.c:242: 	if (wipe || (viewheight != 200 && fullscreen) )
	.loc 1 242 5
	cmpl	$0, -20(%rbp)	#, wipe
	jne	.L25	#,
# d_main.c:242: 	if (wipe || (viewheight != 200 && fullscreen) )
	.loc 1 242 26 discriminator 1
	movl	viewheight(%rip), %eax	# viewheight, viewheight.18_10
# d_main.c:242: 	if (wipe || (viewheight != 200 && fullscreen) )
	.loc 1 242 11 discriminator 1
	cmpl	$200, %eax	#, viewheight.18_10
	je	.L26	#,
# d_main.c:242: 	if (wipe || (viewheight != 200 && fullscreen) )
	.loc 1 242 33 discriminator 2
	movl	fullscreen.3(%rip), %eax	# fullscreen, fullscreen.19_11
	testl	%eax, %eax	# fullscreen.19_11
	je	.L26	#,
.L25:
# d_main.c:243: 	    redrawsbar = true;
	.loc 1 243 17
	movl	$1, -16(%rbp)	#, redrawsbar
.L26:
# d_main.c:244: 	if (inhelpscreensstate && !inhelpscreens)
	.loc 1 244 6
	movl	inhelpscreensstate.2(%rip), %eax	# inhelpscreensstate, inhelpscreensstate.20_12
# d_main.c:244: 	if (inhelpscreensstate && !inhelpscreens)
	.loc 1 244 5
	testl	%eax, %eax	# inhelpscreensstate.20_12
	je	.L27	#,
# d_main.c:244: 	if (inhelpscreensstate && !inhelpscreens)
	.loc 1 244 28 discriminator 1
	movl	inhelpscreens(%rip), %eax	# inhelpscreens, inhelpscreens.21_13
# d_main.c:244: 	if (inhelpscreensstate && !inhelpscreens)
	.loc 1 244 25 discriminator 1
	testl	%eax, %eax	# inhelpscreens.21_13
	jne	.L27	#,
# d_main.c:245: 	    redrawsbar = true;              // just put away the help screen
	.loc 1 245 17
	movl	$1, -16(%rbp)	#, redrawsbar
.L27:
# d_main.c:246: 	ST_Drawer (viewheight == 200, redrawsbar );
	.loc 1 246 2
	movl	viewheight(%rip), %eax	# viewheight, viewheight.22_14
	cmpl	$200, %eax	#, viewheight.22_14
	sete	%al	#, _15
	movzbl	%al, %eax	# _15, _16
	movl	-16(%rbp), %edx	# redrawsbar, tmp139
	movl	%edx, %esi	# tmp139,
	movl	%eax, %edi	# _16,
	call	ST_Drawer@PLT	#
# d_main.c:247: 	fullscreen = viewheight == 200;
	.loc 1 247 26
	movl	viewheight(%rip), %eax	# viewheight, viewheight.23_17
	cmpl	$200, %eax	#, viewheight.23_17
	sete	%al	#, _18
	movzbl	%al, %eax	# _18, _19
# d_main.c:247: 	fullscreen = viewheight == 200;
	.loc 1 247 13
	movl	%eax, fullscreen.3(%rip)	# _19, fullscreen
# d_main.c:248: 	break;
	.loc 1 248 2
	jmp	.L19	#
.L22:
# d_main.c:251: 	WI_Drawer ();
	.loc 1 251 2
	call	WI_Drawer@PLT	#
# d_main.c:252: 	break;
	.loc 1 252 2
	jmp	.L19	#
.L20:
# d_main.c:255: 	F_Drawer ();
	.loc 1 255 2
	call	F_Drawer@PLT	#
# d_main.c:256: 	break;
	.loc 1 256 2
	jmp	.L19	#
.L18:
# d_main.c:259: 	D_PageDrawer ();
	.loc 1 259 2
	call	D_PageDrawer	#
# d_main.c:260: 	break;
	.loc 1 260 2
	jmp	.L19	#
.L42:
# d_main.c:239: 	    break;
	.loc 1 239 6
	nop	
.L19:
# d_main.c:264:     I_UpdateNoBlit ();
	.loc 1 264 5
	call	I_UpdateNoBlit@PLT	#
# d_main.c:267:     if (gamestate == GS_LEVEL && !automapactive && gametic)
	.loc 1 267 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.24_20
# d_main.c:267:     if (gamestate == GS_LEVEL && !automapactive && gametic)
	.loc 1 267 8
	testl	%eax, %eax	# gamestate.24_20
	jne	.L28	#,
# d_main.c:267:     if (gamestate == GS_LEVEL && !automapactive && gametic)
	.loc 1 267 34 discriminator 1
	movl	automapactive(%rip), %eax	# automapactive, automapactive.25_21
# d_main.c:267:     if (gamestate == GS_LEVEL && !automapactive && gametic)
	.loc 1 267 31 discriminator 1
	testl	%eax, %eax	# automapactive.25_21
	jne	.L28	#,
# d_main.c:267:     if (gamestate == GS_LEVEL && !automapactive && gametic)
	.loc 1 267 49 discriminator 2
	movl	gametic(%rip), %eax	# gametic, gametic.26_22
	testl	%eax, %eax	# gametic.26_22
	je	.L28	#,
# d_main.c:268: 	R_RenderPlayerView (&players[displayplayer]);
	.loc 1 268 30
	movl	displayplayer(%rip), %eax	# displayplayer, displayplayer.27_23
# d_main.c:268: 	R_RenderPlayerView (&players[displayplayer]);
	.loc 1 268 2
	movslq	%eax, %rdx	# displayplayer.27_23, tmp140
	movq	%rdx, %rax	# tmp140, tmp141
	salq	$2, %rax	#, tmp141
	addq	%rdx, %rax	# tmp140, tmp141
	salq	$6, %rax	#, tmp142
	leaq	players(%rip), %rdx	#, tmp143
	addq	%rdx, %rax	# tmp143, _24
	movq	%rax, %rdi	# _24,
	call	R_RenderPlayerView@PLT	#
.L28:
# d_main.c:270:     if (gamestate == GS_LEVEL && gametic)
	.loc 1 270 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.28_25
# d_main.c:270:     if (gamestate == GS_LEVEL && gametic)
	.loc 1 270 8
	testl	%eax, %eax	# gamestate.28_25
	jne	.L29	#,
# d_main.c:270:     if (gamestate == GS_LEVEL && gametic)
	.loc 1 270 31 discriminator 1
	movl	gametic(%rip), %eax	# gametic, gametic.29_26
	testl	%eax, %eax	# gametic.29_26
	je	.L29	#,
# d_main.c:271: 	HU_Drawer ();
	.loc 1 271 2
	call	HU_Drawer@PLT	#
.L29:
# d_main.c:274:     if (gamestate != oldgamestate && gamestate != GS_LEVEL)
	.loc 1 274 19
	movl	gamestate(%rip), %edx	# gamestate, gamestate.30_27
	movl	oldgamestate.5(%rip), %eax	# oldgamestate, oldgamestate.31_28
# d_main.c:274:     if (gamestate != oldgamestate && gamestate != GS_LEVEL)
	.loc 1 274 8
	cmpl	%eax, %edx	# oldgamestate.31_28, gamestate.30_27
	je	.L30	#,
# d_main.c:274:     if (gamestate != oldgamestate && gamestate != GS_LEVEL)
	.loc 1 274 48 discriminator 1
	movl	gamestate(%rip), %eax	# gamestate, gamestate.32_29
# d_main.c:274:     if (gamestate != oldgamestate && gamestate != GS_LEVEL)
	.loc 1 274 35 discriminator 1
	testl	%eax, %eax	# gamestate.32_29
	je	.L30	#,
# d_main.c:275: 	I_SetPalette (W_CacheLumpName ("PLAYPAL",PU_CACHE));
	.loc 1 275 16
	movl	$101, %esi	#,
	leaq	.LC1(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	W_CacheLumpName@PLT	#
# d_main.c:275: 	I_SetPalette (W_CacheLumpName ("PLAYPAL",PU_CACHE));
	.loc 1 275 2 discriminator 1
	movq	%rax, %rdi	# _30,
	call	I_SetPalette@PLT	#
.L30:
# d_main.c:278:     if (gamestate == GS_LEVEL && oldgamestate != GS_LEVEL)
	.loc 1 278 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.33_31
# d_main.c:278:     if (gamestate == GS_LEVEL && oldgamestate != GS_LEVEL)
	.loc 1 278 8
	testl	%eax, %eax	# gamestate.33_31
	jne	.L31	#,
# d_main.c:278:     if (gamestate == GS_LEVEL && oldgamestate != GS_LEVEL)
	.loc 1 278 47 discriminator 1
	movl	oldgamestate.5(%rip), %eax	# oldgamestate, oldgamestate.34_32
# d_main.c:278:     if (gamestate == GS_LEVEL && oldgamestate != GS_LEVEL)
	.loc 1 278 31 discriminator 1
	testl	%eax, %eax	# oldgamestate.34_32
	je	.L31	#,
# d_main.c:280: 	viewactivestate = false;        // view was not active
	.loc 1 280 18
	movl	$0, viewactivestate.1(%rip)	#, viewactivestate
# d_main.c:281: 	R_FillBackScreen ();    // draw the pattern into the back screen
	.loc 1 281 2
	call	R_FillBackScreen@PLT	#
.L31:
# d_main.c:285:     if (gamestate == GS_LEVEL && !automapactive && scaledviewwidth != 320)
	.loc 1 285 19
	movl	gamestate(%rip), %eax	# gamestate, gamestate.35_33
# d_main.c:285:     if (gamestate == GS_LEVEL && !automapactive && scaledviewwidth != 320)
	.loc 1 285 8
	testl	%eax, %eax	# gamestate.35_33
	jne	.L32	#,
# d_main.c:285:     if (gamestate == GS_LEVEL && !automapactive && scaledviewwidth != 320)
	.loc 1 285 34 discriminator 1
	movl	automapactive(%rip), %eax	# automapactive, automapactive.36_34
# d_main.c:285:     if (gamestate == GS_LEVEL && !automapactive && scaledviewwidth != 320)
	.loc 1 285 31 discriminator 1
	testl	%eax, %eax	# automapactive.36_34
	jne	.L32	#,
# d_main.c:285:     if (gamestate == GS_LEVEL && !automapactive && scaledviewwidth != 320)
	.loc 1 285 68 discriminator 2
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.37_35
# d_main.c:285:     if (gamestate == GS_LEVEL && !automapactive && scaledviewwidth != 320)
	.loc 1 285 49 discriminator 2
	cmpl	$320, %eax	#, scaledviewwidth.37_35
	je	.L32	#,
# d_main.c:287: 	if (menuactive || menuactivestate || !viewactivestate)
	.loc 1 287 6
	movl	menuactive(%rip), %eax	# menuactive, menuactive.38_36
# d_main.c:287: 	if (menuactive || menuactivestate || !viewactivestate)
	.loc 1 287 5
	testl	%eax, %eax	# menuactive.38_36
	jne	.L33	#,
# d_main.c:287: 	if (menuactive || menuactivestate || !viewactivestate)
	.loc 1 287 17 discriminator 1
	movl	menuactivestate.0(%rip), %eax	# menuactivestate, menuactivestate.39_37
	testl	%eax, %eax	# menuactivestate.39_37
	jne	.L33	#,
# d_main.c:287: 	if (menuactive || menuactivestate || !viewactivestate)
	.loc 1 287 39 discriminator 2
	movl	viewactivestate.1(%rip), %eax	# viewactivestate, viewactivestate.40_38
# d_main.c:287: 	if (menuactive || menuactivestate || !viewactivestate)
	.loc 1 287 36 discriminator 2
	testl	%eax, %eax	# viewactivestate.40_38
	jne	.L34	#,
.L33:
# d_main.c:288: 	    borderdrawcount = 3;
	.loc 1 288 22
	movl	$3, borderdrawcount.4(%rip)	#, borderdrawcount
.L34:
# d_main.c:289: 	if (borderdrawcount)
	.loc 1 289 6
	movl	borderdrawcount.4(%rip), %eax	# borderdrawcount, borderdrawcount.41_39
# d_main.c:289: 	if (borderdrawcount)
	.loc 1 289 5
	testl	%eax, %eax	# borderdrawcount.41_39
	je	.L32	#,
# d_main.c:291: 	    R_DrawViewBorder ();    // erase old menu stuff
	.loc 1 291 6
	call	R_DrawViewBorder@PLT	#
# d_main.c:292: 	    borderdrawcount--;
	.loc 1 292 21
	movl	borderdrawcount.4(%rip), %eax	# borderdrawcount, borderdrawcount.42_40
	subl	$1, %eax	#, _41
	movl	%eax, borderdrawcount.4(%rip)	# _41, borderdrawcount
.L32:
# d_main.c:297:     menuactivestate = menuactive;
	.loc 1 297 21
	movl	menuactive(%rip), %eax	# menuactive, menuactive.43_42
	movl	%eax, menuactivestate.0(%rip)	# menuactive.43_42, menuactivestate
# d_main.c:298:     viewactivestate = viewactive;
	.loc 1 298 21
	movl	viewactive(%rip), %eax	# viewactive, viewactive.44_43
	movl	%eax, viewactivestate.1(%rip)	# viewactive.44_43, viewactivestate
# d_main.c:299:     inhelpscreensstate = inhelpscreens;
	.loc 1 299 24
	movl	inhelpscreens(%rip), %eax	# inhelpscreens, inhelpscreens.45_44
	movl	%eax, inhelpscreensstate.2(%rip)	# inhelpscreens.45_44, inhelpscreensstate
# d_main.c:300:     oldgamestate = wipegamestate = gamestate;
	.loc 1 300 34
	movl	gamestate(%rip), %eax	# gamestate, gamestate.46_45
	movl	%eax, wipegamestate(%rip)	# gamestate.46_45, wipegamestate
# d_main.c:300:     oldgamestate = wipegamestate = gamestate;
	.loc 1 300 18
	movl	wipegamestate(%rip), %eax	# wipegamestate, wipegamestate.47_46
	movl	%eax, oldgamestate.5(%rip)	# wipegamestate.47_46, oldgamestate
# d_main.c:303:     if (paused)
	.loc 1 303 9
	movl	paused(%rip), %eax	# paused, paused.48_47
# d_main.c:303:     if (paused)
	.loc 1 303 8
	testl	%eax, %eax	# paused.48_47
	je	.L35	#,
# d_main.c:305: 	if (automapactive)
	.loc 1 305 6
	movl	automapactive(%rip), %eax	# automapactive, automapactive.49_48
# d_main.c:305: 	if (automapactive)
	.loc 1 305 5
	testl	%eax, %eax	# automapactive.49_48
	je	.L36	#,
# d_main.c:306: 	    y = 4;
	.loc 1 306 8
	movl	$4, -24(%rbp)	#, y
	jmp	.L37	#
.L36:
# d_main.c:308: 	    y = viewwindowy+4;
	.loc 1 308 21
	movl	viewwindowy(%rip), %eax	# viewwindowy, viewwindowy.50_49
# d_main.c:308: 	    y = viewwindowy+4;
	.loc 1 308 8
	addl	$4, %eax	#, tmp145
	movl	%eax, -24(%rbp)	# tmp145, y
.L37:
# d_main.c:310: 			  y,0,W_CacheLumpName ("M_PAUSE", PU_CACHE));
	.loc 1 310 10
	movl	$101, %esi	#,
	leaq	.LC2(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _50
# d_main.c:309: 	V_DrawPatchDirect(viewwindowx+(scaledviewwidth-68)/2,
	.loc 1 309 48
	movl	scaledviewwidth(%rip), %eax	# scaledviewwidth, scaledviewwidth.51_51
	subl	$68, %eax	#, _52
# d_main.c:309: 	V_DrawPatchDirect(viewwindowx+(scaledviewwidth-68)/2,
	.loc 1 309 52
	movl	%eax, %ecx	# _52, tmp147
	shrl	$31, %ecx	#, tmp147
	addl	%ecx, %eax	# tmp147, tmp148
	sarl	%eax	# tmp149
	movl	%eax, %ecx	# tmp149, _53
# d_main.c:309: 	V_DrawPatchDirect(viewwindowx+(scaledviewwidth-68)/2,
	.loc 1 309 2
	movl	viewwindowx(%rip), %eax	# viewwindowx, viewwindowx.52_54
	leal	(%rcx,%rax), %edi	#, _55
	movl	-24(%rbp), %eax	# y, tmp150
	movq	%rdx, %rcx	# _50,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp150,
	call	V_DrawPatchDirect@PLT	#
.L35:
# d_main.c:315:     M_Drawer ();          // menu is drawn even on top of everything
	.loc 1 315 5
	call	M_Drawer@PLT	#
# d_main.c:316:     NetUpdate ();         // send out any new accumulation
	.loc 1 316 5
	call	NetUpdate@PLT	#
# d_main.c:320:     if (!wipe)
	.loc 1 320 8
	cmpl	$0, -20(%rbp)	#, wipe
	jne	.L38	#,
# d_main.c:322: 	I_FinishUpdate ();              // page flip or blit buffer
	.loc 1 322 2
	call	I_FinishUpdate@PLT	#
# d_main.c:323: 	return;
	.loc 1 323 2
	jmp	.L11	#
.L38:
# d_main.c:327:     wipe_EndScreen(0, 0, SCREENWIDTH, SCREENHEIGHT);
	.loc 1 327 5
	movl	$200, %ecx	#,
	movl	$320, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	wipe_EndScreen@PLT	#
# d_main.c:329:     wipestart = I_GetTime () - 1;
	.loc 1 329 17
	call	I_GetTime@PLT	#
# d_main.c:329:     wipestart = I_GetTime () - 1;
	.loc 1 329 15 discriminator 1
	subl	$1, %eax	#, tmp151
	movl	%eax, -28(%rbp)	# tmp151, wipestart
.L39:
# d_main.c:335: 	    nowtime = I_GetTime ();
	.loc 1 335 16
	call	I_GetTime@PLT	#
	movl	%eax, -12(%rbp)	# tmp152, nowtime
# d_main.c:336: 	    tics = nowtime - wipestart;
	.loc 1 336 11
	movl	-12(%rbp), %eax	# nowtime, tmp156
	subl	-28(%rbp), %eax	# wipestart, tmp155
	movl	%eax, -8(%rbp)	# tmp155, tics
# d_main.c:337: 	} while (!tics);
	.loc 1 337 11 discriminator 1
	cmpl	$0, -8(%rbp)	#, tics
	je	.L39	#,
# d_main.c:338: 	wipestart = nowtime;
	.loc 1 338 12
	movl	-12(%rbp), %eax	# nowtime, tmp157
	movl	%eax, -28(%rbp)	# tmp157, wipestart
# d_main.c:339: 	done = wipe_ScreenWipe(wipe_Melt
	.loc 1 339 9
	movl	-8(%rbp), %eax	# tics, tmp158
	movl	%eax, %r9d	# tmp158,
	movl	$200, %r8d	#,
	movl	$320, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	wipe_ScreenWipe@PLT	#
# d_main.c:339: 	done = wipe_ScreenWipe(wipe_Melt
	.loc 1 339 7 discriminator 1
	movl	%eax, -4(%rbp)	# _57, done
# d_main.c:341: 	I_UpdateNoBlit ();
	.loc 1 341 2
	call	I_UpdateNoBlit@PLT	#
# d_main.c:342: 	M_Drawer ();                            // menu is drawn even on top of wipes
	.loc 1 342 2
	call	M_Drawer@PLT	#
# d_main.c:343: 	I_FinishUpdate ();                      // page flip or blit buffer
	.loc 1 343 2
	call	I_FinishUpdate@PLT	#
# d_main.c:344:     } while (!done);
	.loc 1 344 14
	cmpl	$0, -4(%rbp)	#, done
	je	.L39	#,
	jmp	.L11	#
.L41:
# d_main.c:210: 	return;                    // for comparative timing / profiling
	.loc 1 210 2
	nop	
.L11:
# d_main.c:345: }
	.loc 1 345 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	D_Display, .-D_Display
	.section	.rodata
.LC3:
	.string	"-debugfile"
.LC4:
	.string	"debug%i.txt"
.LC5:
	.string	"debug output to: %s\n"
.LC6:
	.string	"w"
	.text
	.globl	D_DoomLoop
	.type	D_DoomLoop, @function
D_DoomLoop:
.LFB9:
	.loc 1 355 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# d_main.c:355: {
	.loc 1 355 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.8959
	xorl	%eax, %eax	# tmp125
# d_main.c:356:     if (demorecording)
	.loc 1 356 9
	movl	demorecording(%rip), %eax	# demorecording, demorecording.53_1
# d_main.c:356:     if (demorecording)
	.loc 1 356 8
	testl	%eax, %eax	# demorecording.53_1
	je	.L44	#,
# d_main.c:357: 	G_BeginRecording ();
	.loc 1 357 2
	call	G_BeginRecording@PLT	#
.L44:
# d_main.c:359:     if (M_CheckParm ("-debugfile"))
	.loc 1 359 9
	leaq	.LC3(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	M_CheckParm@PLT	#
# d_main.c:359:     if (M_CheckParm ("-debugfile"))
	.loc 1 359 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L45	#,
.LBB2:
# d_main.c:362: 	sprintf (filename,"debug%i.txt",consoleplayer);
	.loc 1 362 2
	movl	consoleplayer(%rip), %edx	# consoleplayer, consoleplayer.54_3
	leaq	-32(%rbp), %rax	#, tmp99
	leaq	.LC4(%rip), %rcx	#, tmp100
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:363: 	printf ("debug output to: %s\n",filename);
	.loc 1 363 2
	leaq	-32(%rbp), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC5(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:364: 	debugfile = fopen (filename,"w");
	.loc 1 364 14
	leaq	-32(%rbp), %rax	#, tmp103
	leaq	.LC6(%rip), %rdx	#, tmp104
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp103,
	call	fopen@PLT	#
# d_main.c:364: 	debugfile = fopen (filename,"w");
	.loc 1 364 12 discriminator 1
	movq	%rax, debugfile(%rip)	# _4, debugfile
.L45:
.LBE2:
# d_main.c:367:     I_InitGraphics ();
	.loc 1 367 5
	call	I_InitGraphics@PLT	#
.L49:
# d_main.c:372: 	I_StartFrame ();                
	.loc 1 372 2
	call	I_StartFrame@PLT	#
# d_main.c:375: 	if (singletics)
	.loc 1 375 6
	movl	singletics(%rip), %eax	# singletics, singletics.55_5
# d_main.c:375: 	if (singletics)
	.loc 1 375 5
	testl	%eax, %eax	# singletics.55_5
	je	.L46	#,
# d_main.c:377: 	    I_StartTic ();
	.loc 1 377 6
	call	I_StartTic@PLT	#
# d_main.c:378: 	    D_ProcessEvents ();
	.loc 1 378 6
	call	D_ProcessEvents	#
# d_main.c:379: 	    G_BuildTiccmd (&netcmds[consoleplayer][maketic%BACKUPTICS]);
	.loc 1 379 44
	movl	consoleplayer(%rip), %esi	# consoleplayer, consoleplayer.56_6
# d_main.c:379: 	    G_BuildTiccmd (&netcmds[consoleplayer][maketic%BACKUPTICS]);
	.loc 1 379 52
	movl	maketic(%rip), %ecx	# maketic, maketic.57_7
	movslq	%ecx, %rax	# maketic.57_7, tmp106
	imulq	$715827883, %rax, %rax	#, tmp106, tmp107
	shrq	$32, %rax	#, tmp108
	movl	%eax, %edx	# tmp108, tmp109
	sarl	%edx	# tmp109
	movl	%ecx, %eax	# maketic.57_7, tmp110
	sarl	$31, %eax	#, tmp110
	subl	%eax, %edx	# tmp110, _8
	movl	%edx, %eax	# _8, tmp111
	addl	%eax, %eax	# tmp111
	addl	%edx, %eax	# _8, tmp111
	sall	$2, %eax	#, tmp112
	subl	%eax, %ecx	# tmp111, maketic.57_7
	movl	%ecx, %edx	# maketic.57_7, _8
# d_main.c:379: 	    G_BuildTiccmd (&netcmds[consoleplayer][maketic%BACKUPTICS]);
	.loc 1 379 6
	movslq	%edx, %rcx	# _8, tmp113
	movslq	%esi, %rdx	# consoleplayer.56_6, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	salq	$2, %rax	#, tmp116
	addq	%rcx, %rax	# tmp113, tmp117
	leaq	0(,%rax,8), %rdx	#, tmp118
	leaq	netcmds(%rip), %rax	#, tmp119
	addq	%rdx, %rax	# tmp118, _9
	movq	%rax, %rdi	# _9,
	call	G_BuildTiccmd@PLT	#
# d_main.c:380: 	    if (advancedemo)
	.loc 1 380 10
	movl	advancedemo(%rip), %eax	# advancedemo, advancedemo.58_10
# d_main.c:380: 	    if (advancedemo)
	.loc 1 380 9
	testl	%eax, %eax	# advancedemo.58_10
	je	.L47	#,
# d_main.c:381: 		D_DoAdvanceDemo ();
	.loc 1 381 3
	call	D_DoAdvanceDemo	#
.L47:
# d_main.c:382: 	    M_Ticker ();
	.loc 1 382 6
	call	M_Ticker@PLT	#
# d_main.c:383: 	    G_Ticker ();
	.loc 1 383 6
	call	G_Ticker@PLT	#
# d_main.c:384: 	    gametic++;
	.loc 1 384 13
	movl	gametic(%rip), %eax	# gametic, gametic.59_11
	addl	$1, %eax	#, _12
	movl	%eax, gametic(%rip)	# _12, gametic
# d_main.c:385: 	    maketic++;
	.loc 1 385 13
	movl	maketic(%rip), %eax	# maketic, maketic.60_13
	addl	$1, %eax	#, _14
	movl	%eax, maketic(%rip)	# _14, maketic
	jmp	.L48	#
.L46:
# d_main.c:389: 	    TryRunTics (); // will run at least one tic
	.loc 1 389 6
	call	TryRunTics@PLT	#
.L48:
# d_main.c:392: 	S_UpdateSounds (players[consoleplayer].mo);// move positional sounds
	.loc 1 392 2
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.61_15
# d_main.c:392: 	S_UpdateSounds (players[consoleplayer].mo);// move positional sounds
	.loc 1 392 40
	movslq	%eax, %rdx	# consoleplayer.61_15, tmp120
	movq	%rdx, %rax	# tmp120, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rdx, %rax	# tmp120, tmp122
	salq	$6, %rax	#, tmp123
	movq	%rax, %rdx	# tmp122, tmp121
	leaq	players(%rip), %rax	#, tmp124
	movq	(%rdx,%rax), %rax	# players[consoleplayer.61_15].mo, _16
# d_main.c:392: 	S_UpdateSounds (players[consoleplayer].mo);// move positional sounds
	.loc 1 392 2
	movq	%rax, %rdi	# _16,
	call	S_UpdateSounds@PLT	#
# d_main.c:395: 	D_Display ();
	.loc 1 395 2
	call	D_Display	#
# d_main.c:404: 	I_SubmitSound();
	.loc 1 404 2
	call	I_SubmitSound@PLT	#
# d_main.c:372: 	I_StartFrame ();                
	.loc 1 372 2
	jmp	.L49	#
	.cfi_endproc
.LFE9:
	.size	D_DoomLoop, .-D_DoomLoop
	.globl	demosequence
	.bss
	.align 4
	.type	demosequence, @object
	.size	demosequence, 4
demosequence:
	.zero	4
	.globl	pagetic
	.align 4
	.type	pagetic, @object
	.size	pagetic, 4
pagetic:
	.zero	4
	.globl	pagename
	.align 8
	.type	pagename, @object
	.size	pagename, 8
pagename:
	.zero	8
	.text
	.globl	D_PageTicker
	.type	D_PageTicker, @function
D_PageTicker:
.LFB10:
	.loc 1 424 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# d_main.c:425:     if (--pagetic < 0)
	.loc 1 425 9
	movl	pagetic(%rip), %eax	# pagetic, pagetic.62_1
	subl	$1, %eax	#, _2
# d_main.c:425:     if (--pagetic < 0)
	.loc 1 425 8
	movl	%eax, pagetic(%rip)	# _2, pagetic
# d_main.c:425:     if (--pagetic < 0)
	.loc 1 425 9
	movl	pagetic(%rip), %eax	# pagetic, pagetic.63_3
# d_main.c:425:     if (--pagetic < 0)
	.loc 1 425 8
	testl	%eax, %eax	# pagetic.63_3
	jns	.L53	#,
# d_main.c:426: 	D_AdvanceDemo ();
	.loc 1 426 2
	call	D_AdvanceDemo	#
.L53:
# d_main.c:427: }
	.loc 1 427 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	D_PageTicker, .-D_PageTicker
	.globl	D_PageDrawer
	.type	D_PageDrawer, @function
D_PageDrawer:
.LFB11:
	.loc 1 435 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# d_main.c:436:     V_DrawPatch (0,0, 0, W_CacheLumpName(pagename, PU_CACHE));
	.loc 1 436 5
	movq	pagename(%rip), %rax	# pagename, pagename.64_1
# d_main.c:436:     V_DrawPatch (0,0, 0, W_CacheLumpName(pagename, PU_CACHE));
	.loc 1 436 26
	movl	$101, %esi	#,
	movq	%rax, %rdi	# pagename.64_1,
	call	W_CacheLumpName@PLT	#
# d_main.c:436:     V_DrawPatch (0,0, 0, W_CacheLumpName(pagename, PU_CACHE));
	.loc 1 436 5 discriminator 1
	movq	%rax, %rcx	# _2,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatch@PLT	#
# d_main.c:437: }
	.loc 1 437 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	D_PageDrawer, .-D_PageDrawer
	.globl	D_AdvanceDemo
	.type	D_AdvanceDemo, @function
D_AdvanceDemo:
.LFB12:
	.loc 1 445 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# d_main.c:446:     advancedemo = true;
	.loc 1 446 17
	movl	$1, advancedemo(%rip)	#, advancedemo
# d_main.c:447: }
	.loc 1 447 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	D_AdvanceDemo, .-D_AdvanceDemo
	.section	.rodata
.LC7:
	.string	"TITLEPIC"
.LC8:
	.string	"demo1"
.LC9:
	.string	"CREDIT"
.LC10:
	.string	"demo2"
.LC11:
	.string	"HELP2"
.LC12:
	.string	"demo3"
.LC13:
	.string	"demo4"
	.text
	.globl	D_DoAdvanceDemo
	.type	D_DoAdvanceDemo, @function
D_DoAdvanceDemo:
.LFB13:
	.loc 1 455 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# d_main.c:456:     players[consoleplayer].playerstate = PST_LIVE;  // not reborn
	.loc 1 456 27
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.65_1
# d_main.c:456:     players[consoleplayer].playerstate = PST_LIVE;  // not reborn
	.loc 1 456 40
	movslq	%eax, %rdx	# consoleplayer.65_1, tmp95
	movq	%rdx, %rax	# tmp95, tmp97
	salq	$2, %rax	#, tmp97
	addq	%rdx, %rax	# tmp95, tmp97
	salq	$6, %rax	#, tmp98
	movq	%rax, %rdx	# tmp97, tmp96
	leaq	8+players(%rip), %rax	#, tmp99
	movl	$0, (%rdx,%rax)	#, players[consoleplayer.65_1].playerstate
# d_main.c:457:     advancedemo = false;
	.loc 1 457 17
	movl	$0, advancedemo(%rip)	#, advancedemo
# d_main.c:458:     usergame = false;               // no save / end game here
	.loc 1 458 14
	movl	$0, usergame(%rip)	#, usergame
# d_main.c:459:     paused = false;
	.loc 1 459 12
	movl	$0, paused(%rip)	#, paused
# d_main.c:460:     gameaction = ga_nothing;
	.loc 1 460 16
	movl	$0, gameaction(%rip)	#, gameaction
# d_main.c:462:     if ( gamemode == retail )
	.loc 1 462 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.66_2
# d_main.c:462:     if ( gamemode == retail )
	.loc 1 462 8
	cmpl	$3, %eax	#, gamemode.66_2
	jne	.L57	#,
# d_main.c:463:       demosequence = (demosequence+1)%7;
	.loc 1 463 35
	movl	demosequence(%rip), %eax	# demosequence, demosequence.67_3
	addl	$1, %eax	#, _4
# d_main.c:463:       demosequence = (demosequence+1)%7;
	.loc 1 463 38
	movslq	%eax, %rdx	# _4, tmp100
	imulq	$-1840700269, %rdx, %rdx	#, tmp100, tmp101
	shrq	$32, %rdx	#, tmp102
	addl	%eax, %edx	# _4, tmp103
	sarl	$2, %edx	#, tmp104
	movl	%eax, %ecx	# _4, tmp105
	sarl	$31, %ecx	#, tmp105
	subl	%ecx, %edx	# tmp105, _5
	movl	%edx, %ecx	# _5, tmp106
	sall	$3, %ecx	#, tmp107
	subl	%edx, %ecx	# _5, tmp106
	subl	%ecx, %eax	# tmp106, _4
	movl	%eax, %edx	# _4, _5
# d_main.c:463:       demosequence = (demosequence+1)%7;
	.loc 1 463 20
	movl	%edx, demosequence(%rip)	# _5, demosequence
	jmp	.L58	#
.L57:
# d_main.c:465:       demosequence = (demosequence+1)%6;
	.loc 1 465 35
	movl	demosequence(%rip), %eax	# demosequence, demosequence.68_6
	leal	1(%rax), %ecx	#, _7
# d_main.c:465:       demosequence = (demosequence+1)%6;
	.loc 1 465 38
	movslq	%ecx, %rax	# _7, tmp108
	imulq	$715827883, %rax, %rax	#, tmp108, tmp109
	shrq	$32, %rax	#, tmp109
	movq	%rax, %rdx	# tmp109, tmp110
	movl	%ecx, %eax	# _7, tmp111
	sarl	$31, %eax	#, tmp111
	subl	%eax, %edx	# tmp111, _8
	movl	%edx, %eax	# _8, tmp112
	addl	%eax, %eax	# tmp112
	addl	%edx, %eax	# _8, tmp112
	addl	%eax, %eax	# tmp113
	subl	%eax, %ecx	# tmp112, _7
	movl	%ecx, %edx	# _7, _8
# d_main.c:465:       demosequence = (demosequence+1)%6;
	.loc 1 465 20
	movl	%edx, demosequence(%rip)	# _8, demosequence
.L58:
# d_main.c:467:     switch (demosequence)
	.loc 1 467 5
	movl	demosequence(%rip), %eax	# demosequence, demosequence.69_9
	cmpl	$6, %eax	#, demosequence.69_9
	ja	.L75	#,
	movl	%eax, %eax	# demosequence.69_9, tmp114
	leaq	0(,%rax,4), %rdx	#, tmp115
	leaq	.L61(%rip), %rax	#, tmp116
	movl	(%rdx,%rax), %eax	#, tmp117
	cltq
	leaq	.L61(%rip), %rdx	#, tmp120
	addq	%rdx, %rax	# tmp120, tmp119
	notrack jmp	*%rax	# tmp119
	.section	.rodata
	.align 4
	.align 4
.L61:
	.long	.L67-.L61
	.long	.L66-.L61
	.long	.L65-.L61
	.long	.L64-.L61
	.long	.L63-.L61
	.long	.L62-.L61
	.long	.L60-.L61
	.text
.L67:
# d_main.c:470: 	if ( gamemode == commercial )
	.loc 1 470 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.70_10
# d_main.c:470: 	if ( gamemode == commercial )
	.loc 1 470 5
	cmpl	$2, %eax	#, gamemode.70_10
	jne	.L68	#,
# d_main.c:471: 	    pagetic = 35 * 11;
	.loc 1 471 14
	movl	$385, pagetic(%rip)	#, pagetic
	jmp	.L69	#
.L68:
# d_main.c:473: 	    pagetic = 170;
	.loc 1 473 14
	movl	$170, pagetic(%rip)	#, pagetic
.L69:
# d_main.c:474: 	gamestate = GS_DEMOSCREEN;
	.loc 1 474 12
	movl	$3, gamestate(%rip)	#, gamestate
# d_main.c:475: 	pagename = "TITLEPIC";
	.loc 1 475 11
	leaq	.LC7(%rip), %rax	#, tmp121
	movq	%rax, pagename(%rip)	# tmp121, pagename
# d_main.c:476: 	if ( gamemode == commercial )
	.loc 1 476 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.71_11
# d_main.c:476: 	if ( gamemode == commercial )
	.loc 1 476 5
	cmpl	$2, %eax	#, gamemode.71_11
	jne	.L70	#,
# d_main.c:477: 	  S_StartMusic(mus_dm2ttl);
	.loc 1 477 4
	movl	$66, %edi	#,
	call	S_StartMusic@PLT	#
# d_main.c:480: 	break;
	.loc 1 480 2
	jmp	.L59	#
.L70:
# d_main.c:479: 	  S_StartMusic (mus_intro);
	.loc 1 479 4
	movl	$29, %edi	#,
	call	S_StartMusic@PLT	#
# d_main.c:480: 	break;
	.loc 1 480 2
	jmp	.L59	#
.L66:
# d_main.c:482: 	G_DeferedPlayDemo ("demo1");
	.loc 1 482 2
	leaq	.LC8(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	G_DeferedPlayDemo@PLT	#
# d_main.c:483: 	break;
	.loc 1 483 2
	jmp	.L59	#
.L65:
# d_main.c:485: 	pagetic = 200;
	.loc 1 485 10
	movl	$200, pagetic(%rip)	#, pagetic
# d_main.c:486: 	gamestate = GS_DEMOSCREEN;
	.loc 1 486 12
	movl	$3, gamestate(%rip)	#, gamestate
# d_main.c:487: 	pagename = "CREDIT";
	.loc 1 487 11
	leaq	.LC9(%rip), %rax	#, tmp123
	movq	%rax, pagename(%rip)	# tmp123, pagename
# d_main.c:488: 	break;
	.loc 1 488 2
	jmp	.L59	#
.L64:
# d_main.c:490: 	G_DeferedPlayDemo ("demo2");
	.loc 1 490 2
	leaq	.LC10(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	G_DeferedPlayDemo@PLT	#
# d_main.c:491: 	break;
	.loc 1 491 2
	jmp	.L59	#
.L63:
# d_main.c:493: 	gamestate = GS_DEMOSCREEN;
	.loc 1 493 12
	movl	$3, gamestate(%rip)	#, gamestate
# d_main.c:494: 	if ( gamemode == commercial)
	.loc 1 494 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.72_12
# d_main.c:494: 	if ( gamemode == commercial)
	.loc 1 494 5
	cmpl	$2, %eax	#, gamemode.72_12
	jne	.L72	#,
# d_main.c:496: 	    pagetic = 35 * 11;
	.loc 1 496 14
	movl	$385, pagetic(%rip)	#, pagetic
# d_main.c:497: 	    pagename = "TITLEPIC";
	.loc 1 497 15
	leaq	.LC7(%rip), %rax	#, tmp125
	movq	%rax, pagename(%rip)	# tmp125, pagename
# d_main.c:498: 	    S_StartMusic(mus_dm2ttl);
	.loc 1 498 6
	movl	$66, %edi	#,
	call	S_StartMusic@PLT	#
# d_main.c:509: 	break;
	.loc 1 509 2
	jmp	.L59	#
.L72:
# d_main.c:502: 	    pagetic = 200;
	.loc 1 502 14
	movl	$200, pagetic(%rip)	#, pagetic
# d_main.c:504: 	    if ( gamemode == retail )
	.loc 1 504 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.73_13
# d_main.c:504: 	    if ( gamemode == retail )
	.loc 1 504 9
	cmpl	$3, %eax	#, gamemode.73_13
	jne	.L74	#,
# d_main.c:505: 	      pagename = "CREDIT";
	.loc 1 505 17
	leaq	.LC9(%rip), %rax	#, tmp126
	movq	%rax, pagename(%rip)	# tmp126, pagename
# d_main.c:509: 	break;
	.loc 1 509 2
	jmp	.L59	#
.L74:
# d_main.c:507: 	      pagename = "HELP2";
	.loc 1 507 17
	leaq	.LC11(%rip), %rax	#, tmp127
	movq	%rax, pagename(%rip)	# tmp127, pagename
# d_main.c:509: 	break;
	.loc 1 509 2
	jmp	.L59	#
.L62:
# d_main.c:511: 	G_DeferedPlayDemo ("demo3");
	.loc 1 511 2
	leaq	.LC12(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	G_DeferedPlayDemo@PLT	#
# d_main.c:512: 	break;
	.loc 1 512 2
	jmp	.L59	#
.L60:
# d_main.c:515: 	G_DeferedPlayDemo ("demo4");
	.loc 1 515 2
	leaq	.LC13(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	G_DeferedPlayDemo@PLT	#
# d_main.c:516: 	break;
	.loc 1 516 2
	nop	
.L59:
.L75:
# d_main.c:518: }
	.loc 1 518 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	D_DoAdvanceDemo, .-D_DoAdvanceDemo
	.globl	D_StartTitle
	.type	D_StartTitle, @function
D_StartTitle:
.LFB14:
	.loc 1 526 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# d_main.c:527:     gameaction = ga_nothing;
	.loc 1 527 16
	movl	$0, gameaction(%rip)	#, gameaction
# d_main.c:528:     demosequence = -1;
	.loc 1 528 18
	movl	$-1, demosequence(%rip)	#, demosequence
# d_main.c:529:     D_AdvanceDemo ();
	.loc 1 529 5
	call	D_AdvanceDemo	#
# d_main.c:530: }
	.loc 1 530 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	D_StartTitle, .-D_StartTitle
	.globl	title
	.bss
	.align 32
	.type	title, @object
	.size	title, 128
title:
	.zero	128
	.text
	.globl	D_AddFile
	.type	D_AddFile, @function
D_AddFile:
.LFB15:
	.loc 1 544 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
# d_main.c:548:     for (numwadfiles = 0 ; wadfiles[numwadfiles] ; numwadfiles++)
	.loc 1 548 22
	movl	$0, -12(%rbp)	#, numwadfiles
# d_main.c:548:     for (numwadfiles = 0 ; wadfiles[numwadfiles] ; numwadfiles++)
	.loc 1 548 5
	jmp	.L78	#
.L79:
# d_main.c:548:     for (numwadfiles = 0 ; wadfiles[numwadfiles] ; numwadfiles++)
	.loc 1 548 63 discriminator 3
	addl	$1, -12(%rbp)	#, numwadfiles
.L78:
# d_main.c:548:     for (numwadfiles = 0 ; wadfiles[numwadfiles] ; numwadfiles++)
	.loc 1 548 36 discriminator 1
	movl	-12(%rbp), %eax	# numwadfiles, tmp86
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp87
	leaq	wadfiles(%rip), %rax	#, tmp88
	movq	(%rdx,%rax), %rax	# wadfiles[numwadfiles_4], _1
# d_main.c:548:     for (numwadfiles = 0 ; wadfiles[numwadfiles] ; numwadfiles++)
	.loc 1 548 28 discriminator 1
	testq	%rax, %rax	# _1
	jne	.L79	#,
# d_main.c:551:     newfile = malloc (strlen(file)+1);
	.loc 1 551 23
	movq	-24(%rbp), %rax	# file, tmp89
	movq	%rax, %rdi	# tmp89,
	call	strlen@PLT	#
# d_main.c:551:     newfile = malloc (strlen(file)+1);
	.loc 1 551 15 discriminator 1
	addq	$1, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp90, newfile
# d_main.c:552:     strcpy (newfile, file);
	.loc 1 552 5
	movq	-24(%rbp), %rdx	# file, tmp91
	movq	-8(%rbp), %rax	# newfile, tmp92
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	strcpy@PLT	#
# d_main.c:554:     wadfiles[numwadfiles] = newfile;
	.loc 1 554 27
	movl	-12(%rbp), %eax	# numwadfiles, tmp94
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp95
	leaq	wadfiles(%rip), %rdx	#, tmp96
	movq	-8(%rbp), %rax	# newfile, tmp97
	movq	%rax, (%rcx,%rdx)	# tmp97, wadfiles[numwadfiles_4]
# d_main.c:555: }
	.loc 1 555 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	D_AddFile, .-D_AddFile
	.section	.rodata
.LC14:
	.string	"DOOMWADDIR"
.LC15:
	.string	"."
.LC16:
	.string	"%s/doom2.wad"
.LC17:
	.string	"%s/doomu.wad"
.LC18:
	.string	"%s/doom.wad"
.LC19:
	.string	"%s/doom1.wad"
.LC20:
	.string	"%s/plutonia.wad"
.LC21:
	.string	"%s/tnt.wad"
.LC22:
	.string	"%s/doom2f.wad"
.LC23:
	.string	"HOME"
	.align 8
.LC24:
	.string	"Please set $HOME to your home directory"
.LC25:
	.string	"%s/.doomrc"
.LC26:
	.string	"-shdev"
.LC27:
	.string	"devdatadoom1.wad"
.LC28:
	.string	"devmapsdata_se/texture1.lmp"
.LC29:
	.string	"devmapsdata_se/pnames.lmp"
.LC30:
	.string	"-regdev"
.LC31:
	.string	"devdatadoom.wad"
.LC32:
	.string	"devmapsdata_se/texture2.lmp"
.LC33:
	.string	"-comdev"
.LC34:
	.string	"devdatadoom2.wad"
.LC35:
	.string	"devmapscdata/texture1.lmp"
.LC36:
	.string	"devmapscdata/pnames.lmp"
.LC37:
	.string	"French version"
.LC38:
	.string	"Game mode indeterminate."
	.text
	.globl	IdentifyVersion
	.type	IdentifyVersion, @function
IdentifyVersion:
.LFB16:
	.loc 1 564 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
# d_main.c:578:     doomwaddir = getenv("DOOMWADDIR");
	.loc 1 578 18
	leaq	.LC14(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	getenv@PLT	#
	movq	%rax, -72(%rbp)	# tmp107, doomwaddir
# d_main.c:579:     if (!doomwaddir)
	.loc 1 579 8
	cmpq	$0, -72(%rbp)	#, doomwaddir
	jne	.L81	#,
# d_main.c:580: 	doomwaddir = ".";
	.loc 1 580 13
	leaq	.LC15(%rip), %rax	#, tmp108
	movq	%rax, -72(%rbp)	# tmp108, doomwaddir
.L81:
# d_main.c:583:     doom2wad = malloc(strlen(doomwaddir)+1+9+1);
	.loc 1 583 23
	movq	-72(%rbp), %rax	# doomwaddir, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen@PLT	#
# d_main.c:583:     doom2wad = malloc(strlen(doomwaddir)+1+9+1);
	.loc 1 583 16 discriminator 1
	addq	$11, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -64(%rbp)	# tmp110, doom2wad
# d_main.c:584:     sprintf(doom2wad, "%s/doom2.wad", doomwaddir);
	.loc 1 584 5
	movq	-72(%rbp), %rdx	# doomwaddir, tmp111
	movq	-64(%rbp), %rax	# doom2wad, tmp112
	leaq	.LC16(%rip), %rcx	#, tmp113
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:587:     doomuwad = malloc(strlen(doomwaddir)+1+8+1);
	.loc 1 587 23
	movq	-72(%rbp), %rax	# doomwaddir, tmp114
	movq	%rax, %rdi	# tmp114,
	call	strlen@PLT	#
# d_main.c:587:     doomuwad = malloc(strlen(doomwaddir)+1+8+1);
	.loc 1 587 16 discriminator 1
	addq	$10, %rax	#, _4
	movq	%rax, %rdi	# _4,
	call	malloc@PLT	#
	movq	%rax, -56(%rbp)	# tmp115, doomuwad
# d_main.c:588:     sprintf(doomuwad, "%s/doomu.wad", doomwaddir);
	.loc 1 588 5
	movq	-72(%rbp), %rdx	# doomwaddir, tmp116
	movq	-56(%rbp), %rax	# doomuwad, tmp117
	leaq	.LC17(%rip), %rcx	#, tmp118
	movq	%rcx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp117,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:591:     doomwad = malloc(strlen(doomwaddir)+1+8+1);
	.loc 1 591 22
	movq	-72(%rbp), %rax	# doomwaddir, tmp119
	movq	%rax, %rdi	# tmp119,
	call	strlen@PLT	#
# d_main.c:591:     doomwad = malloc(strlen(doomwaddir)+1+8+1);
	.loc 1 591 15 discriminator 1
	addq	$10, %rax	#, _6
	movq	%rax, %rdi	# _6,
	call	malloc@PLT	#
	movq	%rax, -48(%rbp)	# tmp120, doomwad
# d_main.c:592:     sprintf(doomwad, "%s/doom.wad", doomwaddir);
	.loc 1 592 5
	movq	-72(%rbp), %rdx	# doomwaddir, tmp121
	movq	-48(%rbp), %rax	# doomwad, tmp122
	leaq	.LC18(%rip), %rcx	#, tmp123
	movq	%rcx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:595:     doom1wad = malloc(strlen(doomwaddir)+1+9+1);
	.loc 1 595 23
	movq	-72(%rbp), %rax	# doomwaddir, tmp124
	movq	%rax, %rdi	# tmp124,
	call	strlen@PLT	#
# d_main.c:595:     doom1wad = malloc(strlen(doomwaddir)+1+9+1);
	.loc 1 595 16 discriminator 1
	addq	$11, %rax	#, _8
	movq	%rax, %rdi	# _8,
	call	malloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp125, doom1wad
# d_main.c:596:     sprintf(doom1wad, "%s/doom1.wad", doomwaddir);
	.loc 1 596 5
	movq	-72(%rbp), %rdx	# doomwaddir, tmp126
	movq	-40(%rbp), %rax	# doom1wad, tmp127
	leaq	.LC19(%rip), %rcx	#, tmp128
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# tmp127,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:600:     plutoniawad = malloc(strlen(doomwaddir)+1+/*9*/12+1);
	.loc 1 600 26
	movq	-72(%rbp), %rax	# doomwaddir, tmp129
	movq	%rax, %rdi	# tmp129,
	call	strlen@PLT	#
# d_main.c:600:     plutoniawad = malloc(strlen(doomwaddir)+1+/*9*/12+1);
	.loc 1 600 19 discriminator 1
	addq	$14, %rax	#, _10
	movq	%rax, %rdi	# _10,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp130, plutoniawad
# d_main.c:601:     sprintf(plutoniawad, "%s/plutonia.wad", doomwaddir);
	.loc 1 601 5
	movq	-72(%rbp), %rdx	# doomwaddir, tmp131
	movq	-32(%rbp), %rax	# plutoniawad, tmp132
	leaq	.LC20(%rip), %rcx	#, tmp133
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp132,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:603:     tntwad = malloc(strlen(doomwaddir)+1+9+1);
	.loc 1 603 21
	movq	-72(%rbp), %rax	# doomwaddir, tmp134
	movq	%rax, %rdi	# tmp134,
	call	strlen@PLT	#
# d_main.c:603:     tntwad = malloc(strlen(doomwaddir)+1+9+1);
	.loc 1 603 14 discriminator 1
	addq	$11, %rax	#, _12
	movq	%rax, %rdi	# _12,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp135, tntwad
# d_main.c:604:     sprintf(tntwad, "%s/tnt.wad", doomwaddir);
	.loc 1 604 5
	movq	-72(%rbp), %rdx	# doomwaddir, tmp136
	movq	-24(%rbp), %rax	# tntwad, tmp137
	leaq	.LC21(%rip), %rcx	#, tmp138
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:608:     doom2fwad = malloc(strlen(doomwaddir)+1+10+1);
	.loc 1 608 24
	movq	-72(%rbp), %rax	# doomwaddir, tmp139
	movq	%rax, %rdi	# tmp139,
	call	strlen@PLT	#
# d_main.c:608:     doom2fwad = malloc(strlen(doomwaddir)+1+10+1);
	.loc 1 608 17 discriminator 1
	addq	$12, %rax	#, _14
	movq	%rax, %rdi	# _14,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp140, doom2fwad
# d_main.c:609:     sprintf(doom2fwad, "%s/doom2f.wad", doomwaddir);
	.loc 1 609 5
	movq	-72(%rbp), %rdx	# doomwaddir, tmp141
	movq	-16(%rbp), %rax	# doom2fwad, tmp142
	leaq	.LC22(%rip), %rcx	#, tmp143
	movq	%rcx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp142,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:611:     home = getenv("HOME");
	.loc 1 611 12
	leaq	.LC23(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	getenv@PLT	#
	movq	%rax, -8(%rbp)	# tmp145, home
# d_main.c:612:     if (!home)
	.loc 1 612 8
	cmpq	$0, -8(%rbp)	#, home
	jne	.L82	#,
# d_main.c:613:       I_Error("Please set $HOME to your home directory");
	.loc 1 613 7
	leaq	.LC24(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L82:
# d_main.c:614:     sprintf(basedefault, "%s/.doomrc", home);
	.loc 1 614 5
	movq	-8(%rbp), %rax	# home, tmp147
	movq	%rax, %rdx	# tmp147,
	leaq	.LC25(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	basedefault(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:617:     if (M_CheckParm ("-shdev"))
	.loc 1 617 9
	leaq	.LC26(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	M_CheckParm@PLT	#
# d_main.c:617:     if (M_CheckParm ("-shdev"))
	.loc 1 617 8 discriminator 1
	testl	%eax, %eax	# _15
	je	.L83	#,
# d_main.c:619: 	gamemode = shareware;
	.loc 1 619 11
	movl	$0, gamemode(%rip)	#, gamemode
# d_main.c:620: 	devparm = true;
	.loc 1 620 10
	movl	$1, devparm(%rip)	#, devparm
# d_main.c:621: 	D_AddFile (DEVDATA"doom1.wad");
	.loc 1 621 2
	leaq	.LC27(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	D_AddFile	#
# d_main.c:622: 	D_AddFile (DEVMAPS"data_se/texture1.lmp");
	.loc 1 622 2
	leaq	.LC28(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	D_AddFile	#
# d_main.c:623: 	D_AddFile (DEVMAPS"data_se/pnames.lmp");
	.loc 1 623 2
	leaq	.LC29(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	D_AddFile	#
# d_main.c:624: 	strcpy (basedefault,DEVDATA"default.cfg");
	.loc 1 624 2
	movabsq	$7233190438179857764, %rax	#, tmp180
	movabsq	$7146777667858163301, %rdx	#,
	movq	%rax, basedefault(%rip)	# tmp180, MEM <char[1:19]> [(void *)&basedefault]
	movq	%rdx, 8+basedefault(%rip)	#, MEM <char[1:19]> [(void *)&basedefault]
	movl	$6776419, 15+basedefault(%rip)	#, MEM <char[1:19]> [(void *)&basedefault]
# d_main.c:625: 	return;
	.loc 1 625 2
	jmp	.L80	#
.L83:
# d_main.c:628:     if (M_CheckParm ("-regdev"))
	.loc 1 628 9
	leaq	.LC30(%rip), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	M_CheckParm@PLT	#
# d_main.c:628:     if (M_CheckParm ("-regdev"))
	.loc 1 628 8 discriminator 1
	testl	%eax, %eax	# _16
	je	.L85	#,
# d_main.c:630: 	gamemode = registered;
	.loc 1 630 11
	movl	$1, gamemode(%rip)	#, gamemode
# d_main.c:631: 	devparm = true;
	.loc 1 631 10
	movl	$1, devparm(%rip)	#, devparm
# d_main.c:632: 	D_AddFile (DEVDATA"doom.wad");
	.loc 1 632 2
	leaq	.LC31(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	D_AddFile	#
# d_main.c:633: 	D_AddFile (DEVMAPS"data_se/texture1.lmp");
	.loc 1 633 2
	leaq	.LC28(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	D_AddFile	#
# d_main.c:634: 	D_AddFile (DEVMAPS"data_se/texture2.lmp");
	.loc 1 634 2
	leaq	.LC32(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	D_AddFile	#
# d_main.c:635: 	D_AddFile (DEVMAPS"data_se/pnames.lmp");
	.loc 1 635 2
	leaq	.LC29(%rip), %rax	#, tmp158
	movq	%rax, %rdi	# tmp158,
	call	D_AddFile	#
# d_main.c:636: 	strcpy (basedefault,DEVDATA"default.cfg");
	.loc 1 636 2
	movabsq	$7233190438179857764, %rax	#, tmp181
	movabsq	$7146777667858163301, %rdx	#,
	movq	%rax, basedefault(%rip)	# tmp181, MEM <char[1:19]> [(void *)&basedefault]
	movq	%rdx, 8+basedefault(%rip)	#, MEM <char[1:19]> [(void *)&basedefault]
	movl	$6776419, 15+basedefault(%rip)	#, MEM <char[1:19]> [(void *)&basedefault]
# d_main.c:637: 	return;
	.loc 1 637 2
	jmp	.L80	#
.L85:
# d_main.c:640:     if (M_CheckParm ("-comdev"))
	.loc 1 640 9
	leaq	.LC33(%rip), %rax	#, tmp159
	movq	%rax, %rdi	# tmp159,
	call	M_CheckParm@PLT	#
# d_main.c:640:     if (M_CheckParm ("-comdev"))
	.loc 1 640 8 discriminator 1
	testl	%eax, %eax	# _17
	je	.L86	#,
# d_main.c:642: 	gamemode = commercial;
	.loc 1 642 11
	movl	$2, gamemode(%rip)	#, gamemode
# d_main.c:643: 	devparm = true;
	.loc 1 643 10
	movl	$1, devparm(%rip)	#, devparm
# d_main.c:650: 	    D_AddFile (DEVDATA"doom2.wad");
	.loc 1 650 6
	leaq	.LC34(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	D_AddFile	#
# d_main.c:652: 	D_AddFile (DEVMAPS"cdata/texture1.lmp");
	.loc 1 652 2
	leaq	.LC35(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	D_AddFile	#
# d_main.c:653: 	D_AddFile (DEVMAPS"cdata/pnames.lmp");
	.loc 1 653 2
	leaq	.LC36(%rip), %rax	#, tmp162
	movq	%rax, %rdi	# tmp162,
	call	D_AddFile	#
# d_main.c:654: 	strcpy (basedefault,DEVDATA"default.cfg");
	.loc 1 654 2
	movabsq	$7233190438179857764, %rax	#, tmp182
	movabsq	$7146777667858163301, %rdx	#,
	movq	%rax, basedefault(%rip)	# tmp182, MEM <char[1:19]> [(void *)&basedefault]
	movq	%rdx, 8+basedefault(%rip)	#, MEM <char[1:19]> [(void *)&basedefault]
	movl	$6776419, 15+basedefault(%rip)	#, MEM <char[1:19]> [(void *)&basedefault]
# d_main.c:655: 	return;
	.loc 1 655 2
	jmp	.L80	#
.L86:
# d_main.c:658:     if ( !access (doom2fwad,R_OK) )
	.loc 1 658 11
	movq	-16(%rbp), %rax	# doom2fwad, tmp163
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp163,
	call	access@PLT	#
# d_main.c:658:     if ( !access (doom2fwad,R_OK) )
	.loc 1 658 8 discriminator 1
	testl	%eax, %eax	# _18
	jne	.L87	#,
# d_main.c:660: 	gamemode = commercial;
	.loc 1 660 11
	movl	$2, gamemode(%rip)	#, gamemode
# d_main.c:663: 	language = french;
	.loc 1 663 11
	movl	$1, language(%rip)	#, language
# d_main.c:664: 	printf("French version\n");
	.loc 1 664 2
	leaq	.LC37(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	puts@PLT	#
# d_main.c:665: 	D_AddFile (doom2fwad);
	.loc 1 665 2
	movq	-16(%rbp), %rax	# doom2fwad, tmp165
	movq	%rax, %rdi	# tmp165,
	call	D_AddFile	#
# d_main.c:666: 	return;
	.loc 1 666 2
	jmp	.L80	#
.L87:
# d_main.c:669:     if ( !access (doom2wad,R_OK) )
	.loc 1 669 11
	movq	-64(%rbp), %rax	# doom2wad, tmp166
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp166,
	call	access@PLT	#
# d_main.c:669:     if ( !access (doom2wad,R_OK) )
	.loc 1 669 8 discriminator 1
	testl	%eax, %eax	# _19
	jne	.L88	#,
# d_main.c:671: 	gamemode = commercial;
	.loc 1 671 11
	movl	$2, gamemode(%rip)	#, gamemode
# d_main.c:672: 	D_AddFile (doom2wad);
	.loc 1 672 2
	movq	-64(%rbp), %rax	# doom2wad, tmp167
	movq	%rax, %rdi	# tmp167,
	call	D_AddFile	#
# d_main.c:673: 	return;
	.loc 1 673 2
	jmp	.L80	#
.L88:
# d_main.c:676:     if ( !access (plutoniawad, R_OK ) )
	.loc 1 676 11
	movq	-32(%rbp), %rax	# plutoniawad, tmp168
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	access@PLT	#
# d_main.c:676:     if ( !access (plutoniawad, R_OK ) )
	.loc 1 676 8 discriminator 1
	testl	%eax, %eax	# _20
	jne	.L89	#,
# d_main.c:678:       gamemode = commercial;
	.loc 1 678 16
	movl	$2, gamemode(%rip)	#, gamemode
# d_main.c:679:       D_AddFile (plutoniawad);
	.loc 1 679 7
	movq	-32(%rbp), %rax	# plutoniawad, tmp169
	movq	%rax, %rdi	# tmp169,
	call	D_AddFile	#
# d_main.c:680:       return;
	.loc 1 680 7
	jmp	.L80	#
.L89:
# d_main.c:683:     if ( !access ( tntwad, R_OK ) )
	.loc 1 683 11
	movq	-24(%rbp), %rax	# tntwad, tmp170
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	access@PLT	#
# d_main.c:683:     if ( !access ( tntwad, R_OK ) )
	.loc 1 683 8 discriminator 1
	testl	%eax, %eax	# _21
	jne	.L90	#,
# d_main.c:685:       gamemode = commercial;
	.loc 1 685 16
	movl	$2, gamemode(%rip)	#, gamemode
# d_main.c:686:       D_AddFile (tntwad);
	.loc 1 686 7
	movq	-24(%rbp), %rax	# tntwad, tmp171
	movq	%rax, %rdi	# tmp171,
	call	D_AddFile	#
# d_main.c:687:       return;
	.loc 1 687 7
	jmp	.L80	#
.L90:
# d_main.c:690:     if ( !access (doomuwad,R_OK) )
	.loc 1 690 11
	movq	-56(%rbp), %rax	# doomuwad, tmp172
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp172,
	call	access@PLT	#
# d_main.c:690:     if ( !access (doomuwad,R_OK) )
	.loc 1 690 8 discriminator 1
	testl	%eax, %eax	# _22
	jne	.L91	#,
# d_main.c:692:       gamemode = retail;
	.loc 1 692 16
	movl	$3, gamemode(%rip)	#, gamemode
# d_main.c:693:       D_AddFile (doomuwad);
	.loc 1 693 7
	movq	-56(%rbp), %rax	# doomuwad, tmp173
	movq	%rax, %rdi	# tmp173,
	call	D_AddFile	#
# d_main.c:694:       return;
	.loc 1 694 7
	jmp	.L80	#
.L91:
# d_main.c:697:     if ( !access (doomwad,R_OK) )
	.loc 1 697 11
	movq	-48(%rbp), %rax	# doomwad, tmp174
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	access@PLT	#
# d_main.c:697:     if ( !access (doomwad,R_OK) )
	.loc 1 697 8 discriminator 1
	testl	%eax, %eax	# _23
	jne	.L92	#,
# d_main.c:699:       gamemode = registered;
	.loc 1 699 16
	movl	$1, gamemode(%rip)	#, gamemode
# d_main.c:700:       D_AddFile (doomwad);
	.loc 1 700 7
	movq	-48(%rbp), %rax	# doomwad, tmp175
	movq	%rax, %rdi	# tmp175,
	call	D_AddFile	#
# d_main.c:701:       return;
	.loc 1 701 7
	jmp	.L80	#
.L92:
# d_main.c:704:     if ( !access (doom1wad,R_OK) )
	.loc 1 704 11
	movq	-40(%rbp), %rax	# doom1wad, tmp176
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp176,
	call	access@PLT	#
# d_main.c:704:     if ( !access (doom1wad,R_OK) )
	.loc 1 704 8 discriminator 1
	testl	%eax, %eax	# _24
	jne	.L93	#,
# d_main.c:706:       gamemode = shareware;
	.loc 1 706 16
	movl	$0, gamemode(%rip)	#, gamemode
# d_main.c:707:       D_AddFile (doom1wad);
	.loc 1 707 7
	movq	-40(%rbp), %rax	# doom1wad, tmp177
	movq	%rax, %rdi	# tmp177,
	call	D_AddFile	#
# d_main.c:708:       return;
	.loc 1 708 7
	jmp	.L80	#
.L93:
# d_main.c:711:     printf("Game mode indeterminate.\n");
	.loc 1 711 5
	leaq	.LC38(%rip), %rax	#, tmp178
	movq	%rax, %rdi	# tmp178,
	call	puts@PLT	#
# d_main.c:712:     gamemode = indetermined;
	.loc 1 712 14
	movl	$4, gamemode(%rip)	#, gamemode
.L80:
# d_main.c:717: }
	.loc 1 717 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	IdentifyVersion, .-IdentifyVersion
	.section	.rodata
.LC39:
	.string	"rb"
.LC40:
	.string	"\nNo such response file!"
.LC41:
	.string	"Found response file %s!\n"
.LC42:
	.string	"%d command-line args:\n"
	.text
	.globl	FindResponseFile
	.type	FindResponseFile, @function
FindResponseFile:
.LFB17:
	.loc 1 723 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
# d_main.c:723: {
	.loc 1 723 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp200
	movq	%rax, -8(%rbp)	# tmp200, D.8997
	xorl	%eax, %eax	# tmp200
# d_main.c:727:     for (i = 1;i < myargc;i++)
	.loc 1 727 12
	movl	$1, -228(%rbp)	#, i
# d_main.c:727:     for (i = 1;i < myargc;i++)
	.loc 1 727 5
	jmp	.L95	#
.L112:
# d_main.c:728: 	if (myargv[i][0] == '@')
	.loc 1 728 12
	movq	myargv(%rip), %rax	# myargv, myargv.74_1
	movl	-228(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
	movq	(%rax), %rax	# *_4, _5
# d_main.c:728: 	if (myargv[i][0] == '@')
	.loc 1 728 15
	movzbl	(%rax), %eax	# *_5, _6
# d_main.c:728: 	if (myargv[i][0] == '@')
	.loc 1 728 5
	cmpb	$64, %al	#, _6
	jne	.L96	#,
.LBB3:
# d_main.c:741: 	    handle = fopen (&myargv[i][1],"rb");
	.loc 1 741 29
	movq	myargv(%rip), %rax	# myargv, myargv.75_7
	movl	-228(%rbp), %edx	# i, tmp150
	movslq	%edx, %rdx	# tmp150, _8
	salq	$3, %rdx	#, _9
	addq	%rdx, %rax	# _9, _10
	movq	(%rax), %rax	# *_10, _11
# d_main.c:741: 	    handle = fopen (&myargv[i][1],"rb");
	.loc 1 741 22
	addq	$1, %rax	#, _12
# d_main.c:741: 	    handle = fopen (&myargv[i][1],"rb");
	.loc 1 741 15
	leaq	.LC39(%rip), %rdx	#, tmp151
	movq	%rdx, %rsi	# tmp151,
	movq	%rax, %rdi	# _12,
	call	fopen@PLT	#
	movq	%rax, -208(%rbp)	# tmp152, handle
# d_main.c:742: 	    if (!handle)
	.loc 1 742 9
	cmpq	$0, -208(%rbp)	#, handle
	jne	.L97	#,
# d_main.c:744: 		printf ("\nNo such response file!");
	.loc 1 744 3
	leaq	.LC40(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:745: 		exit(1);
	.loc 1 745 3
	movl	$1, %edi	#,
	call	exit@PLT	#
.L97:
# d_main.c:747: 	    printf("Found response file %s!\n",&myargv[i][1]);
	.loc 1 747 48
	movq	myargv(%rip), %rax	# myargv, myargv.76_13
	movl	-228(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, _14
	salq	$3, %rdx	#, _15
	addq	%rdx, %rax	# _15, _16
	movq	(%rax), %rax	# *_16, _17
# d_main.c:747: 	    printf("Found response file %s!\n",&myargv[i][1]);
	.loc 1 747 6
	addq	$1, %rax	#, _18
	movq	%rax, %rsi	# _18,
	leaq	.LC41(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:748: 	    fseek (handle,0,SEEK_END);
	.loc 1 748 6
	movq	-208(%rbp), %rax	# handle, tmp156
	movl	$2, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	fseek@PLT	#
# d_main.c:749: 	    size = ftell(handle);
	.loc 1 749 13
	movq	-208(%rbp), %rax	# handle, tmp157
	movq	%rax, %rdi	# tmp157,
	call	ftell@PLT	#
# d_main.c:749: 	    size = ftell(handle);
	.loc 1 749 11 discriminator 1
	movl	%eax, -212(%rbp)	# _19, size
# d_main.c:750: 	    fseek (handle,0,SEEK_SET);
	.loc 1 750 6
	movq	-208(%rbp), %rax	# handle, tmp158
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp158,
	call	fseek@PLT	#
# d_main.c:751: 	    file = malloc (size);
	.loc 1 751 13
	movl	-212(%rbp), %eax	# size, tmp159
	cltq
	movq	%rax, %rdi	# _20,
	call	malloc@PLT	#
	movq	%rax, -200(%rbp)	# tmp160, file
# d_main.c:752: 	    fread (file,size,1,handle);
	.loc 1 752 6
	movl	-212(%rbp), %eax	# size, tmp161
	movslq	%eax, %rsi	# tmp161, _21
	movq	-208(%rbp), %rdx	# handle, tmp162
	movq	-200(%rbp), %rax	# file, tmp163
	movq	%rdx, %rcx	# tmp162,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp163,
	call	fread@PLT	#
# d_main.c:753: 	    fclose (handle);
	.loc 1 753 6
	movq	-208(%rbp), %rax	# handle, tmp164
	movq	%rax, %rdi	# tmp164,
	call	fclose@PLT	#
# d_main.c:756: 	    for (index = 0,k = i+1; k < myargc; k++)
	.loc 1 756 17
	movl	$0, -220(%rbp)	#, index
# d_main.c:756: 	    for (index = 0,k = i+1; k < myargc; k++)
	.loc 1 756 23
	movl	-228(%rbp), %eax	# i, tmp168
	addl	$1, %eax	#, tmp167
	movl	%eax, -224(%rbp)	# tmp167, k
# d_main.c:756: 	    for (index = 0,k = i+1; k < myargc; k++)
	.loc 1 756 6
	jmp	.L98	#
.L99:
# d_main.c:757: 		moreargs[index++] = myargv[k];
	.loc 1 757 29
	movq	myargv(%rip), %rax	# myargv, myargv.77_22
	movl	-224(%rbp), %edx	# k, tmp169
	movslq	%edx, %rdx	# tmp169, _23
	salq	$3, %rdx	#, _24
	leaq	(%rax,%rdx), %rcx	#, _25
# d_main.c:757: 		moreargs[index++] = myargv[k];
	.loc 1 757 17
	movl	-220(%rbp), %eax	# index, index.78_26
	leal	1(%rax), %edx	#, tmp170
	movl	%edx, -220(%rbp)	# tmp170, index
# d_main.c:757: 		moreargs[index++] = myargv[k];
	.loc 1 757 29
	movq	(%rcx), %rdx	# *_25, _27
# d_main.c:757: 		moreargs[index++] = myargv[k];
	.loc 1 757 21
	cltq
	movq	%rdx, -176(%rbp,%rax,8)	# _27, moreargs[index.78_26]
# d_main.c:756: 	    for (index = 0,k = i+1; k < myargc; k++)
	.loc 1 756 43 discriminator 3
	addl	$1, -224(%rbp)	#, k
.L98:
# d_main.c:756: 	    for (index = 0,k = i+1; k < myargc; k++)
	.loc 1 756 32 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.79_28
	cmpl	%eax, -224(%rbp)	# myargc.79_28, k
	jl	.L99	#,
# d_main.c:759: 	    firstargv = myargv[0];
	.loc 1 759 24
	movq	myargv(%rip), %rax	# myargv, myargv.80_29
# d_main.c:759: 	    firstargv = myargv[0];
	.loc 1 759 16
	movq	(%rax), %rax	# *myargv.80_29, tmp172
	movq	%rax, -192(%rbp)	# tmp172, firstargv
# d_main.c:760: 	    myargv = malloc(sizeof(char *)*MAXARGVS);
	.loc 1 760 15
	movl	$800, %edi	#,
	call	malloc@PLT	#
# d_main.c:760: 	    myargv = malloc(sizeof(char *)*MAXARGVS);
	.loc 1 760 13 discriminator 1
	movq	%rax, myargv(%rip)	# _30, myargv
# d_main.c:761: 	    memset(myargv,0,sizeof(char *)*MAXARGVS);
	.loc 1 761 6
	movq	myargv(%rip), %rax	# myargv, myargv.81_31
	movl	$800, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# myargv.81_31,
	call	memset@PLT	#
# d_main.c:762: 	    myargv[0] = firstargv;
	.loc 1 762 12
	movq	myargv(%rip), %rax	# myargv, myargv.82_32
# d_main.c:762: 	    myargv[0] = firstargv;
	.loc 1 762 16
	movq	-192(%rbp), %rdx	# firstargv, tmp174
	movq	%rdx, (%rax)	# tmp174, *myargv.82_32
# d_main.c:764: 	    infile = file;
	.loc 1 764 13
	movq	-200(%rbp), %rax	# file, tmp175
	movq	%rax, -184(%rbp)	# tmp175, infile
# d_main.c:765: 	    indexinfile = k = 0;
	.loc 1 765 22
	movl	$0, -224(%rbp)	#, k
# d_main.c:765: 	    indexinfile = k = 0;
	.loc 1 765 18
	movl	-224(%rbp), %eax	# k, tmp176
	movl	%eax, -216(%rbp)	# tmp176, indexinfile
# d_main.c:766: 	    indexinfile++;  // SKIP PAST ARGV[0] (KEEP IT)
	.loc 1 766 17
	addl	$1, -216(%rbp)	#, indexinfile
.L106:
# d_main.c:769: 		myargv[indexinfile++] = infile+k;
	.loc 1 769 33
	movl	-224(%rbp), %eax	# k, tmp177
	movslq	%eax, %rcx	# tmp177, _33
# d_main.c:769: 		myargv[indexinfile++] = infile+k;
	.loc 1 769 9
	movq	myargv(%rip), %rsi	# myargv, myargv.83_34
# d_main.c:769: 		myargv[indexinfile++] = infile+k;
	.loc 1 769 21
	movl	-216(%rbp), %eax	# indexinfile, indexinfile.84_35
	leal	1(%rax), %edx	#, tmp178
	movl	%edx, -216(%rbp)	# tmp178, indexinfile
	cltq
# d_main.c:769: 		myargv[indexinfile++] = infile+k;
	.loc 1 769 9
	salq	$3, %rax	#, _37
	addq	%rsi, %rax	# myargv.83_34, _38
# d_main.c:769: 		myargv[indexinfile++] = infile+k;
	.loc 1 769 33
	movq	-184(%rbp), %rdx	# infile, tmp179
	addq	%rcx, %rdx	# _33, _39
# d_main.c:769: 		myargv[indexinfile++] = infile+k;
	.loc 1 769 25
	movq	%rdx, (%rax)	# _39, *_38
# d_main.c:770: 		while(k < size &&
	.loc 1 770 8
	jmp	.L100	#
.L102:
# d_main.c:772: 		    k++;
	.loc 1 772 8
	addl	$1, -224(%rbp)	#, k
.L100:
# d_main.c:770: 		while(k < size &&
	.loc 1 770 18
	movl	-224(%rbp), %eax	# k, tmp180
	cmpl	-212(%rbp), %eax	# size, tmp180
	jge	.L101	#,
# d_main.c:771: 		      ((*(infile+k)>= ' '+1) && (*(infile+k)<='z')))
	.loc 1 771 19
	movl	-224(%rbp), %eax	# k, tmp181
	movslq	%eax, %rdx	# tmp181, _40
	movq	-184(%rbp), %rax	# infile, tmp182
	addq	%rdx, %rax	# _40, _41
# d_main.c:771: 		      ((*(infile+k)>= ' '+1) && (*(infile+k)<='z')))
	.loc 1 771 11
	movzbl	(%rax), %eax	# *_41, _42
# d_main.c:770: 		while(k < size &&
	.loc 1 770 18 discriminator 1
	cmpb	$32, %al	#, _42
	jle	.L101	#,
# d_main.c:771: 		      ((*(infile+k)>= ' '+1) && (*(infile+k)<='z')))
	.loc 1 771 44
	movl	-224(%rbp), %eax	# k, tmp183
	movslq	%eax, %rdx	# tmp183, _43
	movq	-184(%rbp), %rax	# infile, tmp184
	addq	%rdx, %rax	# _43, _44
# d_main.c:771: 		      ((*(infile+k)>= ' '+1) && (*(infile+k)<='z')))
	.loc 1 771 36
	movzbl	(%rax), %eax	# *_44, _45
# d_main.c:771: 		      ((*(infile+k)>= ' '+1) && (*(infile+k)<='z')))
	.loc 1 771 32
	cmpb	$122, %al	#, _45
	jle	.L102	#,
.L101:
# d_main.c:773: 		*(infile+k) = 0;
	.loc 1 773 11
	movl	-224(%rbp), %eax	# k, tmp185
	movslq	%eax, %rdx	# tmp185, _46
	movq	-184(%rbp), %rax	# infile, tmp186
	addq	%rdx, %rax	# _46, _47
# d_main.c:773: 		*(infile+k) = 0;
	.loc 1 773 15
	movb	$0, (%rax)	#, *_47
# d_main.c:774: 		while(k < size &&
	.loc 1 774 8
	jmp	.L103	#
.L105:
# d_main.c:776: 		    k++;
	.loc 1 776 8
	addl	$1, -224(%rbp)	#, k
.L103:
# d_main.c:774: 		while(k < size &&
	.loc 1 774 18
	movl	-224(%rbp), %eax	# k, tmp187
	cmpl	-212(%rbp), %eax	# size, tmp187
	jge	.L104	#,
# d_main.c:775: 		      ((*(infile+k)<= ' ') || (*(infile+k)>'z')))
	.loc 1 775 19
	movl	-224(%rbp), %eax	# k, tmp188
	movslq	%eax, %rdx	# tmp188, _48
	movq	-184(%rbp), %rax	# infile, tmp189
	addq	%rdx, %rax	# _48, _49
# d_main.c:775: 		      ((*(infile+k)<= ' ') || (*(infile+k)>'z')))
	.loc 1 775 11
	movzbl	(%rax), %eax	# *_49, _50
# d_main.c:774: 		while(k < size &&
	.loc 1 774 18 discriminator 1
	cmpb	$32, %al	#, _50
	jle	.L105	#,
# d_main.c:775: 		      ((*(infile+k)<= ' ') || (*(infile+k)>'z')))
	.loc 1 775 42
	movl	-224(%rbp), %eax	# k, tmp190
	movslq	%eax, %rdx	# tmp190, _51
	movq	-184(%rbp), %rax	# infile, tmp191
	addq	%rdx, %rax	# _51, _52
# d_main.c:775: 		      ((*(infile+k)<= ' ') || (*(infile+k)>'z')))
	.loc 1 775 34
	movzbl	(%rax), %eax	# *_52, _53
# d_main.c:775: 		      ((*(infile+k)<= ' ') || (*(infile+k)>'z')))
	.loc 1 775 30
	cmpb	$122, %al	#, _53
	jg	.L105	#,
.L104:
# d_main.c:777: 	    } while(k < size);
	.loc 1 777 16
	movl	-224(%rbp), %eax	# k, tmp192
	cmpl	-212(%rbp), %eax	# size, tmp192
	jl	.L106	#,
# d_main.c:779: 	    for (k = 0;k < index;k++)
	.loc 1 779 13
	movl	$0, -224(%rbp)	#, k
# d_main.c:779: 	    for (k = 0;k < index;k++)
	.loc 1 779 6
	jmp	.L107	#
.L108:
# d_main.c:780: 		myargv[indexinfile++] = moreargs[k];
	.loc 1 780 9
	movq	myargv(%rip), %rcx	# myargv, myargv.85_54
# d_main.c:780: 		myargv[indexinfile++] = moreargs[k];
	.loc 1 780 21
	movl	-216(%rbp), %eax	# indexinfile, indexinfile.86_55
	leal	1(%rax), %edx	#, tmp193
	movl	%edx, -216(%rbp)	# tmp193, indexinfile
	cltq
# d_main.c:780: 		myargv[indexinfile++] = moreargs[k];
	.loc 1 780 9
	salq	$3, %rax	#, _57
	leaq	(%rcx,%rax), %rdx	#, _58
# d_main.c:780: 		myargv[indexinfile++] = moreargs[k];
	.loc 1 780 35
	movl	-224(%rbp), %eax	# k, tmp195
	cltq
	movq	-176(%rbp,%rax,8), %rax	# moreargs[k_73], _59
# d_main.c:780: 		myargv[indexinfile++] = moreargs[k];
	.loc 1 780 25
	movq	%rax, (%rdx)	# _59, *_58
# d_main.c:779: 	    for (k = 0;k < index;k++)
	.loc 1 779 28 discriminator 3
	addl	$1, -224(%rbp)	#, k
.L107:
# d_main.c:779: 	    for (k = 0;k < index;k++)
	.loc 1 779 19 discriminator 1
	movl	-224(%rbp), %eax	# k, tmp196
	cmpl	-220(%rbp), %eax	# index, tmp196
	jl	.L108	#,
# d_main.c:781: 	    myargc = indexinfile;
	.loc 1 781 13
	movl	-216(%rbp), %eax	# indexinfile, tmp197
	movl	%eax, myargc(%rip)	# tmp197, myargc
# d_main.c:784: 	    printf("%d command-line args:\n",myargc);
	.loc 1 784 6
	movl	myargc(%rip), %eax	# myargc, myargc.87_60
	movl	%eax, %esi	# myargc.87_60,
	leaq	.LC42(%rip), %rax	#, tmp198
	movq	%rax, %rdi	# tmp198,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:785: 	    for (k=1;k<myargc;k++)
	.loc 1 785 12
	movl	$1, -224(%rbp)	#, k
# d_main.c:785: 	    for (k=1;k<myargc;k++)
	.loc 1 785 6
	jmp	.L109	#
.L110:
# d_main.c:786: 		printf("%s\n",myargv[k]);
	.loc 1 786 23
	movq	myargv(%rip), %rax	# myargv, myargv.88_61
	movl	-224(%rbp), %edx	# k, tmp199
	movslq	%edx, %rdx	# tmp199, _62
	salq	$3, %rdx	#, _63
	addq	%rdx, %rax	# _63, _64
# d_main.c:786: 		printf("%s\n",myargv[k]);
	.loc 1 786 3
	movq	(%rax), %rax	# *_64, _65
	movq	%rax, %rdi	# _65,
	call	puts@PLT	#
# d_main.c:785: 	    for (k=1;k<myargc;k++)
	.loc 1 785 25 discriminator 3
	addl	$1, -224(%rbp)	#, k
.L109:
# d_main.c:785: 	    for (k=1;k<myargc;k++)
	.loc 1 785 16 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.89_66
	cmpl	%eax, -224(%rbp)	# myargc.89_66, k
	jl	.L110	#,
# d_main.c:788: 	    break;
	.loc 1 788 6
	jmp	.L111	#
.L96:
.LBE3:
# d_main.c:727:     for (i = 1;i < myargc;i++)
	.loc 1 727 28 discriminator 2
	addl	$1, -228(%rbp)	#, i
.L95:
# d_main.c:727:     for (i = 1;i < myargc;i++)
	.loc 1 727 18 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.90_67
	cmpl	%eax, -228(%rbp)	# myargc.90_67, i
	jl	.L112	#,
.L111:
# d_main.c:790: }
	.loc 1 790 1
	nop	
	movq	-8(%rbp), %rax	# D.8997, tmp201
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp201
	je	.L113	#,
	call	__stack_chk_fail@PLT	#
.L113:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	FindResponseFile, .-FindResponseFile
	.section	.rodata
.LC43:
	.string	"-nomonsters"
.LC44:
	.string	"-respawn"
.LC45:
	.string	"-fast"
.LC46:
	.string	"-devparm"
.LC47:
	.string	"-altdeath"
.LC48:
	.string	"-deathmatch"
	.align 8
.LC49:
	.string	"                         The Ultimate DOOM Startup v%i.%i                           "
	.align 8
.LC50:
	.string	"                            DOOM Shareware Startup v%i.%i                           "
	.align 8
.LC51:
	.string	"                            DOOM Registered Startup v%i.%i                           "
	.align 8
.LC52:
	.string	"                         DOOM 2: Hell on Earth v%i.%i                           "
	.align 8
.LC53:
	.string	"                     Public DOOM - v%i.%i                           "
.LC54:
	.string	"Development mode ON."
.LC55:
	.string	"-cdrom"
	.align 8
.LC56:
	.string	"CD-ROM Version: default.cfg from c:\\doomdata"
.LC57:
	.string	"c:\\doomdata"
.LC58:
	.string	"-turbo"
.LC59:
	.string	"turbo scale: %i%%\n"
.LC60:
	.string	"-wart"
.LC61:
	.string	"~devmapsE%cM%c.wad"
	.align 8
.LC62:
	.string	"Warping to Episode %s, Map %s.\n"
.LC63:
	.string	"~devmapscdata/map0%i.wad"
.LC64:
	.string	"~devmapscdata/map%i.wad"
.LC65:
	.string	"-file"
.LC66:
	.string	"-playdemo"
.LC67:
	.string	"-timedemo"
.LC68:
	.string	"%s.lmp"
.LC69:
	.string	"Playing demo %s.lmp.\n"
.LC70:
	.string	"-skill"
.LC71:
	.string	"-episode"
.LC72:
	.string	"-timer"
	.align 8
.LC73:
	.string	"Levels will end after %d minute"
.LC74:
	.string	"-avg"
	.align 8
.LC75:
	.string	"Austin Virtual Gaming: Levels will end after 20 minutes"
.LC76:
	.string	"-warp"
.LC77:
	.string	"V_Init: allocate screens."
	.align 8
.LC78:
	.string	"M_LoadDefaults: Load system defaults."
	.align 8
.LC79:
	.string	"Z_Init: Init zone memory allocation daemon. "
.LC80:
	.string	"W_Init: Init WADfiles."
	.align 8
.LC81:
	.string	"\nYou cannot -file with the shareware version. Register!"
	.align 8
.LC82:
	.string	"\nThis is not the registered version."
	.align 8
.LC83:
	.ascii	"============================================================"
	.ascii	"===============\nATTENTION:  This version of DOOM has been m"
	.ascii	"odified.  If you would like to\nget a co"
	.string	"py of the original game, call 1-800-IDGAMES or see the readme file.\n        You will not receive technical support for modified games.\n                      press enter to continue\n==========================================================================="
	.align 8
.LC84:
	.string	"===========================================================================\n                                Shareware!\n==========================================================================="
	.align 8
.LC85:
	.ascii	"=================="
	.string	"=========================================================\n                 Commercial product - do not distribute!\n         Please report software piracy to the SPA: 1-800-388-PIR8\n==========================================================================="
	.align 8
.LC86:
	.string	"M_Init: Init miscellaneous info."
	.align 8
.LC87:
	.string	"R_Init: Init DOOM refresh daemon - "
.LC88:
	.string	"\nP_Init: Init Playloop state."
	.align 8
.LC89:
	.string	"I_Init: Setting up machine state."
	.align 8
.LC90:
	.string	"D_CheckNetGame: Checking network game status."
.LC91:
	.string	"S_Init: Setting up sound."
	.align 8
.LC92:
	.string	"HU_Init: Setting up heads up display."
.LC93:
	.string	"ST_Init: Init status bar."
.LC94:
	.string	"-statcopy"
	.align 8
.LC95:
	.string	"External statistics registered."
.LC96:
	.string	"-record"
.LC97:
	.string	"-loadgame"
.LC98:
	.string	"c:\\doomdata\\doomsav%c.dsg"
.LC99:
	.string	"doomsav%c.dsg"
	.text
	.globl	D_DoomMain
	.type	D_DoomMain, @function
D_DoomMain:
.LFB18:
	.loc 1 797 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$480, %rsp	#,
# d_main.c:797: {
	.loc 1 797 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp462
	movq	%rax, -8(%rbp)	# tmp462, D.9002
	xorl	%eax, %eax	# tmp462
# d_main.c:801:     FindResponseFile ();
	.loc 1 801 5
	call	FindResponseFile	#
# d_main.c:803:     IdentifyVersion ();
	.loc 1 803 5
	call	IdentifyVersion	#
# d_main.c:805:     setbuf (stdout, NULL);
	.loc 1 805 5
	movq	stdout(%rip), %rax	# stdout, stdout.91_1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.91_1,
	call	setbuf@PLT	#
# d_main.c:806:     modifiedgame = false;
	.loc 1 806 18
	movl	$0, modifiedgame(%rip)	#, modifiedgame
# d_main.c:808:     nomonsters = M_CheckParm ("-nomonsters");
	.loc 1 808 18
	leaq	.LC43(%rip), %rax	#, tmp316
	movq	%rax, %rdi	# tmp316,
	call	M_CheckParm@PLT	#
# d_main.c:808:     nomonsters = M_CheckParm ("-nomonsters");
	.loc 1 808 16 discriminator 1
	movl	%eax, nomonsters(%rip)	# _3, nomonsters
# d_main.c:809:     respawnparm = M_CheckParm ("-respawn");
	.loc 1 809 19
	leaq	.LC44(%rip), %rax	#, tmp317
	movq	%rax, %rdi	# tmp317,
	call	M_CheckParm@PLT	#
# d_main.c:809:     respawnparm = M_CheckParm ("-respawn");
	.loc 1 809 17 discriminator 1
	movl	%eax, respawnparm(%rip)	# _5, respawnparm
# d_main.c:810:     fastparm = M_CheckParm ("-fast");
	.loc 1 810 16
	leaq	.LC45(%rip), %rax	#, tmp318
	movq	%rax, %rdi	# tmp318,
	call	M_CheckParm@PLT	#
# d_main.c:810:     fastparm = M_CheckParm ("-fast");
	.loc 1 810 14 discriminator 1
	movl	%eax, fastparm(%rip)	# _7, fastparm
# d_main.c:811:     devparm = M_CheckParm ("-devparm");
	.loc 1 811 15
	leaq	.LC46(%rip), %rax	#, tmp319
	movq	%rax, %rdi	# tmp319,
	call	M_CheckParm@PLT	#
# d_main.c:811:     devparm = M_CheckParm ("-devparm");
	.loc 1 811 13 discriminator 1
	movl	%eax, devparm(%rip)	# _9, devparm
# d_main.c:812:     if (M_CheckParm ("-altdeath"))
	.loc 1 812 9
	leaq	.LC47(%rip), %rax	#, tmp320
	movq	%rax, %rdi	# tmp320,
	call	M_CheckParm@PLT	#
# d_main.c:812:     if (M_CheckParm ("-altdeath"))
	.loc 1 812 8 discriminator 1
	testl	%eax, %eax	# _10
	je	.L115	#,
# d_main.c:813: 	deathmatch = 2;
	.loc 1 813 13
	movl	$2, deathmatch(%rip)	#, deathmatch
	jmp	.L116	#
.L115:
# d_main.c:814:     else if (M_CheckParm ("-deathmatch"))
	.loc 1 814 14
	leaq	.LC48(%rip), %rax	#, tmp321
	movq	%rax, %rdi	# tmp321,
	call	M_CheckParm@PLT	#
# d_main.c:814:     else if (M_CheckParm ("-deathmatch"))
	.loc 1 814 13 discriminator 1
	testl	%eax, %eax	# _11
	je	.L116	#,
# d_main.c:815: 	deathmatch = 1;
	.loc 1 815 13
	movl	$1, deathmatch(%rip)	#, deathmatch
.L116:
# d_main.c:817:     switch ( gamemode )
	.loc 1 817 5
	movl	gamemode(%rip), %eax	# gamemode, gamemode.92_12
	cmpl	$3, %eax	#, gamemode.92_12
	je	.L117	#,
	cmpl	$3, %eax	#, gamemode.92_12
	ja	.L118	#,
	cmpl	$2, %eax	#, gamemode.92_12
	je	.L119	#,
	cmpl	$2, %eax	#, gamemode.92_12
	ja	.L118	#,
	testl	%eax, %eax	# gamemode.92_12
	je	.L120	#,
	cmpl	$1, %eax	#, gamemode.92_12
	je	.L121	#,
	jmp	.L118	#
.L117:
# d_main.c:820: 	sprintf (title,
	.loc 1 820 2
	movl	$10, %ecx	#,
	movl	$1, %edx	#,
	leaq	.LC49(%rip), %rax	#, tmp322
	movq	%rax, %rsi	# tmp322,
	leaq	title(%rip), %rax	#, tmp323
	movq	%rax, %rdi	# tmp323,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:825: 	break;
	.loc 1 825 2
	jmp	.L122	#
.L120:
# d_main.c:827: 	sprintf (title,
	.loc 1 827 2
	movl	$10, %ecx	#,
	movl	$1, %edx	#,
	leaq	.LC50(%rip), %rax	#, tmp324
	movq	%rax, %rsi	# tmp324,
	leaq	title(%rip), %rax	#, tmp325
	movq	%rax, %rdi	# tmp325,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:832: 	break;
	.loc 1 832 2
	jmp	.L122	#
.L121:
# d_main.c:834: 	sprintf (title,
	.loc 1 834 2
	movl	$10, %ecx	#,
	movl	$1, %edx	#,
	leaq	.LC51(%rip), %rax	#, tmp326
	movq	%rax, %rsi	# tmp326,
	leaq	title(%rip), %rax	#, tmp327
	movq	%rax, %rdi	# tmp327,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:839: 	break;
	.loc 1 839 2
	jmp	.L122	#
.L119:
# d_main.c:841: 	sprintf (title,
	.loc 1 841 2
	movl	$10, %ecx	#,
	movl	$1, %edx	#,
	leaq	.LC52(%rip), %rax	#, tmp328
	movq	%rax, %rsi	# tmp328,
	leaq	title(%rip), %rax	#, tmp329
	movq	%rax, %rdi	# tmp329,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:846: 	break;
	.loc 1 846 2
	jmp	.L122	#
.L118:
# d_main.c:864: 	sprintf (title,
	.loc 1 864 2
	movl	$10, %ecx	#,
	movl	$1, %edx	#,
	leaq	.LC53(%rip), %rax	#, tmp330
	movq	%rax, %rsi	# tmp330,
	leaq	title(%rip), %rax	#, tmp331
	movq	%rax, %rdi	# tmp331,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:869: 	break;
	.loc 1 869 2
	nop	
.L122:
# d_main.c:872:     printf ("%s\n",title);
	.loc 1 872 5
	leaq	title(%rip), %rax	#, tmp332
	movq	%rax, %rdi	# tmp332,
	call	puts@PLT	#
# d_main.c:874:     if (devparm)
	.loc 1 874 9
	movl	devparm(%rip), %eax	# devparm, devparm.93_13
# d_main.c:874:     if (devparm)
	.loc 1 874 8
	testl	%eax, %eax	# devparm.93_13
	je	.L123	#,
# d_main.c:875: 	printf(D_DEVSTR);
	.loc 1 875 2
	leaq	.LC54(%rip), %rax	#, tmp333
	movq	%rax, %rdi	# tmp333,
	call	puts@PLT	#
.L123:
# d_main.c:877:     if (M_CheckParm("-cdrom"))
	.loc 1 877 9
	leaq	.LC55(%rip), %rax	#, tmp334
	movq	%rax, %rdi	# tmp334,
	call	M_CheckParm@PLT	#
# d_main.c:877:     if (M_CheckParm("-cdrom"))
	.loc 1 877 8 discriminator 1
	testl	%eax, %eax	# _14
	je	.L124	#,
# d_main.c:879: 	printf(D_CDROM);
	.loc 1 879 2
	leaq	.LC56(%rip), %rax	#, tmp335
	movq	%rax, %rdi	# tmp335,
	call	puts@PLT	#
# d_main.c:880: 	mkdir("c:\\doomdata",0);
	.loc 1 880 2
	movl	$0, %esi	#,
	leaq	.LC57(%rip), %rax	#, tmp336
	movq	%rax, %rdi	# tmp336,
	call	mkdir@PLT	#
# d_main.c:881: 	strcpy (basedefault,"c:/doomdata/default.cfg");
	.loc 1 881 2
	movabsq	$7236562700467124835, %rax	#, tmp465
	movabsq	$7018408550269547617, %rdx	#,
	movq	%rax, basedefault(%rip)	# tmp465, MEM <char[1:24]> [(void *)&basedefault]
	movq	%rdx, 8+basedefault(%rip)	#, MEM <char[1:24]> [(void *)&basedefault]
	movabsq	$29104498768374901, %rax	#, tmp466
	movq	%rax, 16+basedefault(%rip)	# tmp466, MEM <char[1:24]> [(void *)&basedefault]
.L124:
# d_main.c:885:     if ( (p=M_CheckParm ("-turbo")) )
	.loc 1 885 13
	leaq	.LC58(%rip), %rax	#, tmp337
	movq	%rax, %rdi	# tmp337,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp338, p
# d_main.c:885:     if ( (p=M_CheckParm ("-turbo")) )
	.loc 1 885 8 discriminator 1
	cmpl	$0, -480(%rbp)	#, p
	je	.L125	#,
.LBB4:
# d_main.c:887: 	int     scale = 200;
	.loc 1 887 10
	movl	$200, -476(%rbp)	#, scale
# d_main.c:891: 	if (p<myargc-1)
	.loc 1 891 14
	movl	myargc(%rip), %eax	# myargc, myargc.94_15
	subl	$1, %eax	#, _16
# d_main.c:891: 	if (p<myargc-1)
	.loc 1 891 5
	cmpl	%eax, -480(%rbp)	# _16, p
	jge	.L126	#,
# d_main.c:892: 	    scale = atoi (myargv[p+1]);
	.loc 1 892 26
	movq	myargv(%rip), %rax	# myargv, myargv.95_17
	movl	-480(%rbp), %edx	# p, tmp339
	movslq	%edx, %rdx	# tmp339, _18
	addq	$1, %rdx	#, _19
	salq	$3, %rdx	#, _20
	addq	%rdx, %rax	# _20, _21
# d_main.c:892: 	    scale = atoi (myargv[p+1]);
	.loc 1 892 14
	movq	(%rax), %rax	# *_21, _22
	movq	%rax, %rdi	# _22,
	call	atoi@PLT	#
	movl	%eax, -476(%rbp)	# tmp340, scale
.L126:
# d_main.c:893: 	if (scale < 10)
	.loc 1 893 5
	cmpl	$9, -476(%rbp)	#, scale
	jg	.L127	#,
# d_main.c:894: 	    scale = 10;
	.loc 1 894 12
	movl	$10, -476(%rbp)	#, scale
.L127:
# d_main.c:895: 	if (scale > 400)
	.loc 1 895 5
	cmpl	$400, -476(%rbp)	#, scale
	jle	.L128	#,
# d_main.c:896: 	    scale = 400;
	.loc 1 896 12
	movl	$400, -476(%rbp)	#, scale
.L128:
# d_main.c:897: 	printf ("turbo scale: %i%%\n",scale);
	.loc 1 897 2
	movl	-476(%rbp), %eax	# scale, tmp341
	movl	%eax, %esi	# tmp341,
	leaq	.LC59(%rip), %rax	#, tmp342
	movq	%rax, %rdi	# tmp342,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:898: 	forwardmove[0] = forwardmove[0]*scale/100;
	.loc 1 898 30
	movl	forwardmove(%rip), %eax	# forwardmove[0], _23
# d_main.c:898: 	forwardmove[0] = forwardmove[0]*scale/100;
	.loc 1 898 33
	imull	-476(%rbp), %eax	# scale, _24
# d_main.c:898: 	forwardmove[0] = forwardmove[0]*scale/100;
	.loc 1 898 39
	movslq	%eax, %rdx	# _24, tmp343
	imulq	$1374389535, %rdx, %rdx	#, tmp343, tmp344
	shrq	$32, %rdx	#, tmp345
	movl	%edx, %ecx	# tmp345, tmp346
	sarl	$5, %ecx	#, tmp346
	cltd
	movl	%ecx, %eax	# tmp346, tmp346
	subl	%edx, %eax	# tmp347, tmp346
# d_main.c:898: 	forwardmove[0] = forwardmove[0]*scale/100;
	.loc 1 898 17
	movl	%eax, forwardmove(%rip)	# _25, forwardmove[0]
# d_main.c:899: 	forwardmove[1] = forwardmove[1]*scale/100;
	.loc 1 899 30
	movl	4+forwardmove(%rip), %eax	# forwardmove[1], _26
# d_main.c:899: 	forwardmove[1] = forwardmove[1]*scale/100;
	.loc 1 899 33
	imull	-476(%rbp), %eax	# scale, _27
# d_main.c:899: 	forwardmove[1] = forwardmove[1]*scale/100;
	.loc 1 899 39
	movslq	%eax, %rdx	# _27, tmp348
	imulq	$1374389535, %rdx, %rdx	#, tmp348, tmp349
	shrq	$32, %rdx	#, tmp350
	movl	%edx, %ecx	# tmp350, tmp351
	sarl	$5, %ecx	#, tmp351
	cltd
	movl	%ecx, %eax	# tmp351, tmp351
	subl	%edx, %eax	# tmp352, tmp351
# d_main.c:899: 	forwardmove[1] = forwardmove[1]*scale/100;
	.loc 1 899 17
	movl	%eax, 4+forwardmove(%rip)	# _28, forwardmove[1]
# d_main.c:900: 	sidemove[0] = sidemove[0]*scale/100;
	.loc 1 900 24
	movl	sidemove(%rip), %eax	# sidemove[0], _29
# d_main.c:900: 	sidemove[0] = sidemove[0]*scale/100;
	.loc 1 900 27
	imull	-476(%rbp), %eax	# scale, _30
# d_main.c:900: 	sidemove[0] = sidemove[0]*scale/100;
	.loc 1 900 33
	movslq	%eax, %rdx	# _30, tmp353
	imulq	$1374389535, %rdx, %rdx	#, tmp353, tmp354
	shrq	$32, %rdx	#, tmp355
	movl	%edx, %ecx	# tmp355, tmp356
	sarl	$5, %ecx	#, tmp356
	cltd
	movl	%ecx, %eax	# tmp356, tmp356
	subl	%edx, %eax	# tmp357, tmp356
# d_main.c:900: 	sidemove[0] = sidemove[0]*scale/100;
	.loc 1 900 14
	movl	%eax, sidemove(%rip)	# _31, sidemove[0]
# d_main.c:901: 	sidemove[1] = sidemove[1]*scale/100;
	.loc 1 901 24
	movl	4+sidemove(%rip), %eax	# sidemove[1], _32
# d_main.c:901: 	sidemove[1] = sidemove[1]*scale/100;
	.loc 1 901 27
	imull	-476(%rbp), %eax	# scale, _33
# d_main.c:901: 	sidemove[1] = sidemove[1]*scale/100;
	.loc 1 901 33
	movslq	%eax, %rdx	# _33, tmp358
	imulq	$1374389535, %rdx, %rdx	#, tmp358, tmp359
	shrq	$32, %rdx	#, tmp360
	movl	%edx, %ecx	# tmp360, tmp361
	sarl	$5, %ecx	#, tmp361
	cltd
	movl	%ecx, %eax	# tmp361, tmp361
	subl	%edx, %eax	# tmp362, tmp361
# d_main.c:901: 	sidemove[1] = sidemove[1]*scale/100;
	.loc 1 901 14
	movl	%eax, 4+sidemove(%rip)	# _34, sidemove[1]
.L125:
.LBE4:
# d_main.c:909:     p = M_CheckParm ("-wart");
	.loc 1 909 9
	leaq	.LC60(%rip), %rax	#, tmp363
	movq	%rax, %rdi	# tmp363,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp364, p
# d_main.c:910:     if (p)
	.loc 1 910 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L129	#,
# d_main.c:912: 	myargv[p][4] = 'p';     // big hack, change to -warp
	.loc 1 912 8
	movq	myargv(%rip), %rax	# myargv, myargv.96_35
	movl	-480(%rbp), %edx	# p, tmp365
	movslq	%edx, %rdx	# tmp365, _36
	salq	$3, %rdx	#, _37
	addq	%rdx, %rax	# _37, _38
	movq	(%rax), %rax	# *_38, _39
# d_main.c:912: 	myargv[p][4] = 'p';     // big hack, change to -warp
	.loc 1 912 11
	addq	$4, %rax	#, _40
# d_main.c:912: 	myargv[p][4] = 'p';     // big hack, change to -warp
	.loc 1 912 15
	movb	$112, (%rax)	#, *_40
# d_main.c:915: 	switch (gamemode )
	.loc 1 915 2
	movl	gamemode(%rip), %eax	# gamemode, gamemode.97_41
	cmpl	$1, %eax	#, gamemode.97_41
	jbe	.L130	#,
	cmpl	$3, %eax	#, gamemode.97_41
	jne	.L131	#,
.L130:
# d_main.c:921: 		     myargv[p+1][0], myargv[p+2][0]);
	.loc 1 921 30
	movq	myargv(%rip), %rax	# myargv, myargv.98_42
	movl	-480(%rbp), %edx	# p, tmp366
	movslq	%edx, %rdx	# tmp366, _43
	addq	$2, %rdx	#, _44
	salq	$3, %rdx	#, _45
	addq	%rdx, %rax	# _45, _46
	movq	(%rax), %rax	# *_46, _47
# d_main.c:921: 		     myargv[p+1][0], myargv[p+2][0]);
	.loc 1 921 35
	movzbl	(%rax), %eax	# *_47, _48
# d_main.c:920: 	    sprintf (file,"~"DEVMAPS"E%cM%c.wad",
	.loc 1 920 6
	movsbl	%al, %ecx	# _48, _49
# d_main.c:921: 		     myargv[p+1][0], myargv[p+2][0]);
	.loc 1 921 14
	movq	myargv(%rip), %rax	# myargv, myargv.99_50
	movl	-480(%rbp), %edx	# p, tmp367
	movslq	%edx, %rdx	# tmp367, _51
	addq	$1, %rdx	#, _52
	salq	$3, %rdx	#, _53
	addq	%rdx, %rax	# _53, _54
	movq	(%rax), %rax	# *_54, _55
# d_main.c:921: 		     myargv[p+1][0], myargv[p+2][0]);
	.loc 1 921 19
	movzbl	(%rax), %eax	# *_55, _56
# d_main.c:920: 	    sprintf (file,"~"DEVMAPS"E%cM%c.wad",
	.loc 1 920 6
	movsbl	%al, %edx	# _56, _57
	leaq	-272(%rbp), %rax	#, tmp368
	leaq	.LC61(%rip), %rsi	#, tmp369
	movq	%rax, %rdi	# tmp368,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:923: 		   myargv[p+1],myargv[p+2]);
	.loc 1 923 24
	movq	myargv(%rip), %rax	# myargv, myargv.100_58
	movl	-480(%rbp), %edx	# p, tmp370
	movslq	%edx, %rdx	# tmp370, _59
	addq	$2, %rdx	#, _60
	salq	$3, %rdx	#, _61
	addq	%rdx, %rax	# _61, _62
# d_main.c:922: 	    printf("Warping to Episode %s, Map %s.\n",
	.loc 1 922 6
	movq	(%rax), %rdx	# *_62, _63
# d_main.c:923: 		   myargv[p+1],myargv[p+2]);
	.loc 1 923 12
	movq	myargv(%rip), %rax	# myargv, myargv.101_64
	movl	-480(%rbp), %ecx	# p, tmp371
	movslq	%ecx, %rcx	# tmp371, _65
	addq	$1, %rcx	#, _66
	salq	$3, %rcx	#, _67
	addq	%rcx, %rax	# _67, _68
# d_main.c:922: 	    printf("Warping to Episode %s, Map %s.\n",
	.loc 1 922 6
	movq	(%rax), %rax	# *_68, _69
	movq	%rax, %rsi	# _69,
	leaq	.LC62(%rip), %rax	#, tmp372
	movq	%rax, %rdi	# tmp372,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:924: 	    break;
	.loc 1 924 6
	jmp	.L132	#
.L131:
# d_main.c:928: 	    p = atoi (myargv[p+1]);
	.loc 1 928 22
	movq	myargv(%rip), %rax	# myargv, myargv.102_70
	movl	-480(%rbp), %edx	# p, tmp373
	movslq	%edx, %rdx	# tmp373, _71
	addq	$1, %rdx	#, _72
	salq	$3, %rdx	#, _73
	addq	%rdx, %rax	# _73, _74
# d_main.c:928: 	    p = atoi (myargv[p+1]);
	.loc 1 928 10
	movq	(%rax), %rax	# *_74, _75
	movq	%rax, %rdi	# _75,
	call	atoi@PLT	#
	movl	%eax, -480(%rbp)	# tmp374, p
# d_main.c:929: 	    if (p<10)
	.loc 1 929 9
	cmpl	$9, -480(%rbp)	#, p
	jg	.L133	#,
# d_main.c:930: 	      sprintf (file,"~"DEVMAPS"cdata/map0%i.wad", p);
	.loc 1 930 8
	movl	-480(%rbp), %edx	# p, tmp375
	leaq	-272(%rbp), %rax	#, tmp376
	leaq	.LC63(%rip), %rcx	#, tmp377
	movq	%rcx, %rsi	# tmp377,
	movq	%rax, %rdi	# tmp376,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:933: 	    break;
	.loc 1 933 6
	jmp	.L171	#
.L133:
# d_main.c:932: 	      sprintf (file,"~"DEVMAPS"cdata/map%i.wad", p);
	.loc 1 932 8
	movl	-480(%rbp), %edx	# p, tmp378
	leaq	-272(%rbp), %rax	#, tmp379
	leaq	.LC64(%rip), %rcx	#, tmp380
	movq	%rcx, %rsi	# tmp380,
	movq	%rax, %rdi	# tmp379,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L171:
# d_main.c:933: 	    break;
	.loc 1 933 6
	nop	
.L132:
# d_main.c:935: 	D_AddFile (file);
	.loc 1 935 2
	leaq	-272(%rbp), %rax	#, tmp381
	movq	%rax, %rdi	# tmp381,
	call	D_AddFile	#
.L129:
# d_main.c:938:     p = M_CheckParm ("-file");
	.loc 1 938 9
	leaq	.LC65(%rip), %rax	#, tmp382
	movq	%rax, %rdi	# tmp382,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp383, p
# d_main.c:939:     if (p)
	.loc 1 939 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L135	#,
# d_main.c:943: 	modifiedgame = true;            // homebrew levels
	.loc 1 943 15
	movl	$1, modifiedgame(%rip)	#, modifiedgame
# d_main.c:944: 	while (++p != myargc && myargv[p][0] != '-')
	.loc 1 944 8
	jmp	.L136	#
.L137:
# d_main.c:945: 	    D_AddFile (myargv[p]);
	.loc 1 945 23
	movq	myargv(%rip), %rax	# myargv, myargv.103_76
	movl	-480(%rbp), %edx	# p, tmp384
	movslq	%edx, %rdx	# tmp384, _77
	salq	$3, %rdx	#, _78
	addq	%rdx, %rax	# _78, _79
# d_main.c:945: 	    D_AddFile (myargv[p]);
	.loc 1 945 6
	movq	(%rax), %rax	# *_79, _80
	movq	%rax, %rdi	# _80,
	call	D_AddFile	#
.L136:
# d_main.c:944: 	while (++p != myargc && myargv[p][0] != '-')
	.loc 1 944 23
	addl	$1, -480(%rbp)	#, p
# d_main.c:944: 	while (++p != myargc && myargv[p][0] != '-')
	.loc 1 944 13
	movl	myargc(%rip), %eax	# myargc, myargc.104_81
# d_main.c:944: 	while (++p != myargc && myargv[p][0] != '-')
	.loc 1 944 23
	cmpl	%eax, -480(%rbp)	# myargc.104_81, p
	je	.L135	#,
# d_main.c:944: 	while (++p != myargc && myargv[p][0] != '-')
	.loc 1 944 32 discriminator 1
	movq	myargv(%rip), %rax	# myargv, myargv.105_82
	movl	-480(%rbp), %edx	# p, tmp385
	movslq	%edx, %rdx	# tmp385, _83
	salq	$3, %rdx	#, _84
	addq	%rdx, %rax	# _84, _85
	movq	(%rax), %rax	# *_85, _86
# d_main.c:944: 	while (++p != myargc && myargv[p][0] != '-')
	.loc 1 944 35 discriminator 1
	movzbl	(%rax), %eax	# *_86, _87
# d_main.c:944: 	while (++p != myargc && myargv[p][0] != '-')
	.loc 1 944 23 discriminator 1
	cmpb	$45, %al	#, _87
	jne	.L137	#,
.L135:
# d_main.c:948:     p = M_CheckParm ("-playdemo");
	.loc 1 948 9
	leaq	.LC66(%rip), %rax	#, tmp386
	movq	%rax, %rdi	# tmp386,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp387, p
# d_main.c:950:     if (!p)
	.loc 1 950 8
	cmpl	$0, -480(%rbp)	#, p
	jne	.L138	#,
# d_main.c:951: 	p = M_CheckParm ("-timedemo");
	.loc 1 951 6
	leaq	.LC67(%rip), %rax	#, tmp388
	movq	%rax, %rdi	# tmp388,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp389, p
.L138:
# d_main.c:953:     if (p && p < myargc-1)
	.loc 1 953 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L139	#,
# d_main.c:953:     if (p && p < myargc-1)
	.loc 1 953 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.106_88
	subl	$1, %eax	#, _89
# d_main.c:953:     if (p && p < myargc-1)
	.loc 1 953 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _89, p
	jge	.L139	#,
# d_main.c:955: 	sprintf (file,"%s.lmp", myargv[p+1]);
	.loc 1 955 32
	movq	myargv(%rip), %rax	# myargv, myargv.107_90
	movl	-480(%rbp), %edx	# p, tmp390
	movslq	%edx, %rdx	# tmp390, _91
	addq	$1, %rdx	#, _92
	salq	$3, %rdx	#, _93
	addq	%rdx, %rax	# _93, _94
# d_main.c:955: 	sprintf (file,"%s.lmp", myargv[p+1]);
	.loc 1 955 2
	movq	(%rax), %rdx	# *_94, _95
	leaq	-272(%rbp), %rax	#, tmp391
	leaq	.LC68(%rip), %rcx	#, tmp392
	movq	%rcx, %rsi	# tmp392,
	movq	%rax, %rdi	# tmp391,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# d_main.c:956: 	D_AddFile (file);
	.loc 1 956 2
	leaq	-272(%rbp), %rax	#, tmp393
	movq	%rax, %rdi	# tmp393,
	call	D_AddFile	#
# d_main.c:957: 	printf("Playing demo %s.lmp.\n",myargv[p+1]);
	.loc 1 957 40
	movq	myargv(%rip), %rax	# myargv, myargv.108_96
	movl	-480(%rbp), %edx	# p, tmp394
	movslq	%edx, %rdx	# tmp394, _97
	addq	$1, %rdx	#, _98
	salq	$3, %rdx	#, _99
	addq	%rdx, %rax	# _99, _100
# d_main.c:957: 	printf("Playing demo %s.lmp.\n",myargv[p+1]);
	.loc 1 957 2
	movq	(%rax), %rax	# *_100, _101
	movq	%rax, %rsi	# _101,
	leaq	.LC69(%rip), %rax	#, tmp395
	movq	%rax, %rdi	# tmp395,
	movl	$0, %eax	#,
	call	printf@PLT	#
.L139:
# d_main.c:961:     startskill = sk_medium;
	.loc 1 961 16
	movl	$2, startskill(%rip)	#, startskill
# d_main.c:962:     startepisode = 1;
	.loc 1 962 18
	movl	$1, startepisode(%rip)	#, startepisode
# d_main.c:963:     startmap = 1;
	.loc 1 963 14
	movl	$1, startmap(%rip)	#, startmap
# d_main.c:964:     autostart = false;
	.loc 1 964 15
	movl	$0, autostart(%rip)	#, autostart
# d_main.c:967:     p = M_CheckParm ("-skill");
	.loc 1 967 9
	leaq	.LC70(%rip), %rax	#, tmp396
	movq	%rax, %rdi	# tmp396,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp397, p
# d_main.c:968:     if (p && p < myargc-1)
	.loc 1 968 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L140	#,
# d_main.c:968:     if (p && p < myargc-1)
	.loc 1 968 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.109_102
	subl	$1, %eax	#, _103
# d_main.c:968:     if (p && p < myargc-1)
	.loc 1 968 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _103, p
	jge	.L140	#,
# d_main.c:970: 	startskill = myargv[p+1][0]-'1';
	.loc 1 970 21
	movq	myargv(%rip), %rax	# myargv, myargv.110_104
	movl	-480(%rbp), %edx	# p, tmp398
	movslq	%edx, %rdx	# tmp398, _105
	addq	$1, %rdx	#, _106
	salq	$3, %rdx	#, _107
	addq	%rdx, %rax	# _107, _108
	movq	(%rax), %rax	# *_108, _109
# d_main.c:970: 	startskill = myargv[p+1][0]-'1';
	.loc 1 970 26
	movzbl	(%rax), %eax	# *_109, _110
	movsbl	%al, %eax	# _110, _111
# d_main.c:970: 	startskill = myargv[p+1][0]-'1';
	.loc 1 970 29
	subl	$49, %eax	#, _112
# d_main.c:970: 	startskill = myargv[p+1][0]-'1';
	.loc 1 970 13
	movl	%eax, startskill(%rip)	# _113, startskill
# d_main.c:971: 	autostart = true;
	.loc 1 971 12
	movl	$1, autostart(%rip)	#, autostart
.L140:
# d_main.c:974:     p = M_CheckParm ("-episode");
	.loc 1 974 9
	leaq	.LC71(%rip), %rax	#, tmp399
	movq	%rax, %rdi	# tmp399,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp400, p
# d_main.c:975:     if (p && p < myargc-1)
	.loc 1 975 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L141	#,
# d_main.c:975:     if (p && p < myargc-1)
	.loc 1 975 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.111_114
	subl	$1, %eax	#, _115
# d_main.c:975:     if (p && p < myargc-1)
	.loc 1 975 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _115, p
	jge	.L141	#,
# d_main.c:977: 	startepisode = myargv[p+1][0]-'0';
	.loc 1 977 23
	movq	myargv(%rip), %rax	# myargv, myargv.112_116
	movl	-480(%rbp), %edx	# p, tmp401
	movslq	%edx, %rdx	# tmp401, _117
	addq	$1, %rdx	#, _118
	salq	$3, %rdx	#, _119
	addq	%rdx, %rax	# _119, _120
	movq	(%rax), %rax	# *_120, _121
# d_main.c:977: 	startepisode = myargv[p+1][0]-'0';
	.loc 1 977 28
	movzbl	(%rax), %eax	# *_121, _122
	movsbl	%al, %eax	# _122, _123
# d_main.c:977: 	startepisode = myargv[p+1][0]-'0';
	.loc 1 977 31
	subl	$48, %eax	#, _124
# d_main.c:977: 	startepisode = myargv[p+1][0]-'0';
	.loc 1 977 15
	movl	%eax, startepisode(%rip)	# _124, startepisode
# d_main.c:978: 	startmap = 1;
	.loc 1 978 11
	movl	$1, startmap(%rip)	#, startmap
# d_main.c:979: 	autostart = true;
	.loc 1 979 12
	movl	$1, autostart(%rip)	#, autostart
.L141:
# d_main.c:982:     p = M_CheckParm ("-timer");
	.loc 1 982 9
	leaq	.LC72(%rip), %rax	#, tmp402
	movq	%rax, %rdi	# tmp402,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp403, p
# d_main.c:983:     if (p && p < myargc-1 && deathmatch)
	.loc 1 983 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L142	#,
# d_main.c:983:     if (p && p < myargc-1 && deathmatch)
	.loc 1 983 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.113_125
	subl	$1, %eax	#, _126
# d_main.c:983:     if (p && p < myargc-1 && deathmatch)
	.loc 1 983 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _126, p
	jge	.L142	#,
# d_main.c:983:     if (p && p < myargc-1 && deathmatch)
	.loc 1 983 27 discriminator 2
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.114_127
	testl	%eax, %eax	# deathmatch.114_127
	je	.L142	#,
.LBB5:
# d_main.c:986: 	time = atoi(myargv[p+1]);
	.loc 1 986 20
	movq	myargv(%rip), %rax	# myargv, myargv.115_128
	movl	-480(%rbp), %edx	# p, tmp404
	movslq	%edx, %rdx	# tmp404, _129
	addq	$1, %rdx	#, _130
	salq	$3, %rdx	#, _131
	addq	%rdx, %rax	# _131, _132
# d_main.c:986: 	time = atoi(myargv[p+1]);
	.loc 1 986 9
	movq	(%rax), %rax	# *_132, _133
	movq	%rax, %rdi	# _133,
	call	atoi@PLT	#
	movl	%eax, -468(%rbp)	# tmp405, time
# d_main.c:987: 	printf("Levels will end after %d minute",time);
	.loc 1 987 2
	movl	-468(%rbp), %eax	# time, tmp406
	movl	%eax, %esi	# tmp406,
	leaq	.LC73(%rip), %rax	#, tmp407
	movq	%rax, %rdi	# tmp407,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:988: 	if (time>1)
	.loc 1 988 5
	cmpl	$1, -468(%rbp)	#, time
	jle	.L143	#,
# d_main.c:989: 	    printf("s");
	.loc 1 989 6
	movl	$115, %edi	#,
	call	putchar@PLT	#
.L143:
# d_main.c:990: 	printf(".\n");
	.loc 1 990 2
	leaq	.LC15(%rip), %rax	#, tmp408
	movq	%rax, %rdi	# tmp408,
	call	puts@PLT	#
.L142:
.LBE5:
# d_main.c:993:     p = M_CheckParm ("-avg");
	.loc 1 993 9
	leaq	.LC74(%rip), %rax	#, tmp409
	movq	%rax, %rdi	# tmp409,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp410, p
# d_main.c:994:     if (p && p < myargc-1 && deathmatch)
	.loc 1 994 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L144	#,
# d_main.c:994:     if (p && p < myargc-1 && deathmatch)
	.loc 1 994 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.116_134
	subl	$1, %eax	#, _135
# d_main.c:994:     if (p && p < myargc-1 && deathmatch)
	.loc 1 994 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _135, p
	jge	.L144	#,
# d_main.c:994:     if (p && p < myargc-1 && deathmatch)
	.loc 1 994 27 discriminator 2
	movl	deathmatch(%rip), %eax	# deathmatch, deathmatch.117_136
	testl	%eax, %eax	# deathmatch.117_136
	je	.L144	#,
# d_main.c:995: 	printf("Austin Virtual Gaming: Levels will end after 20 minutes\n");
	.loc 1 995 2
	leaq	.LC75(%rip), %rax	#, tmp411
	movq	%rax, %rdi	# tmp411,
	call	puts@PLT	#
.L144:
# d_main.c:997:     p = M_CheckParm ("-warp");
	.loc 1 997 9
	leaq	.LC76(%rip), %rax	#, tmp412
	movq	%rax, %rdi	# tmp412,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp413, p
# d_main.c:998:     if (p && p < myargc-1)
	.loc 1 998 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L145	#,
# d_main.c:998:     if (p && p < myargc-1)
	.loc 1 998 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.118_137
	subl	$1, %eax	#, _138
# d_main.c:998:     if (p && p < myargc-1)
	.loc 1 998 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _138, p
	jge	.L145	#,
# d_main.c:1000: 	if (gamemode == commercial)
	.loc 1 1000 15
	movl	gamemode(%rip), %eax	# gamemode, gamemode.119_139
# d_main.c:1000: 	if (gamemode == commercial)
	.loc 1 1000 5
	cmpl	$2, %eax	#, gamemode.119_139
	jne	.L146	#,
# d_main.c:1001: 	    startmap = atoi (myargv[p+1]);
	.loc 1 1001 29
	movq	myargv(%rip), %rax	# myargv, myargv.120_140
	movl	-480(%rbp), %edx	# p, tmp414
	movslq	%edx, %rdx	# tmp414, _141
	addq	$1, %rdx	#, _142
	salq	$3, %rdx	#, _143
	addq	%rdx, %rax	# _143, _144
# d_main.c:1001: 	    startmap = atoi (myargv[p+1]);
	.loc 1 1001 17
	movq	(%rax), %rax	# *_144, _145
	movq	%rax, %rdi	# _145,
	call	atoi@PLT	#
# d_main.c:1001: 	    startmap = atoi (myargv[p+1]);
	.loc 1 1001 15 discriminator 1
	movl	%eax, startmap(%rip)	# _146, startmap
	jmp	.L147	#
.L146:
# d_main.c:1004: 	    startepisode = myargv[p+1][0]-'0';
	.loc 1 1004 27
	movq	myargv(%rip), %rax	# myargv, myargv.121_147
	movl	-480(%rbp), %edx	# p, tmp415
	movslq	%edx, %rdx	# tmp415, _148
	addq	$1, %rdx	#, _149
	salq	$3, %rdx	#, _150
	addq	%rdx, %rax	# _150, _151
	movq	(%rax), %rax	# *_151, _152
# d_main.c:1004: 	    startepisode = myargv[p+1][0]-'0';
	.loc 1 1004 32
	movzbl	(%rax), %eax	# *_152, _153
	movsbl	%al, %eax	# _153, _154
# d_main.c:1004: 	    startepisode = myargv[p+1][0]-'0';
	.loc 1 1004 35
	subl	$48, %eax	#, _155
# d_main.c:1004: 	    startepisode = myargv[p+1][0]-'0';
	.loc 1 1004 19
	movl	%eax, startepisode(%rip)	# _155, startepisode
# d_main.c:1005: 	    startmap = myargv[p+2][0]-'0';
	.loc 1 1005 23
	movq	myargv(%rip), %rax	# myargv, myargv.122_156
	movl	-480(%rbp), %edx	# p, tmp416
	movslq	%edx, %rdx	# tmp416, _157
	addq	$2, %rdx	#, _158
	salq	$3, %rdx	#, _159
	addq	%rdx, %rax	# _159, _160
	movq	(%rax), %rax	# *_160, _161
# d_main.c:1005: 	    startmap = myargv[p+2][0]-'0';
	.loc 1 1005 28
	movzbl	(%rax), %eax	# *_161, _162
	movsbl	%al, %eax	# _162, _163
# d_main.c:1005: 	    startmap = myargv[p+2][0]-'0';
	.loc 1 1005 31
	subl	$48, %eax	#, _164
# d_main.c:1005: 	    startmap = myargv[p+2][0]-'0';
	.loc 1 1005 15
	movl	%eax, startmap(%rip)	# _164, startmap
.L147:
# d_main.c:1007: 	autostart = true;
	.loc 1 1007 12
	movl	$1, autostart(%rip)	#, autostart
.L145:
# d_main.c:1011:     printf ("V_Init: allocate screens.\n");
	.loc 1 1011 5
	leaq	.LC77(%rip), %rax	#, tmp417
	movq	%rax, %rdi	# tmp417,
	call	puts@PLT	#
# d_main.c:1012:     V_Init ();
	.loc 1 1012 5
	call	V_Init@PLT	#
# d_main.c:1014:     printf ("M_LoadDefaults: Load system defaults.\n");
	.loc 1 1014 5
	leaq	.LC78(%rip), %rax	#, tmp418
	movq	%rax, %rdi	# tmp418,
	call	puts@PLT	#
# d_main.c:1015:     M_LoadDefaults ();              // load before initing other systems
	.loc 1 1015 5
	call	M_LoadDefaults@PLT	#
# d_main.c:1017:     printf ("Z_Init: Init zone memory allocation daemon. \n");
	.loc 1 1017 5
	leaq	.LC79(%rip), %rax	#, tmp419
	movq	%rax, %rdi	# tmp419,
	call	puts@PLT	#
# d_main.c:1018:     Z_Init ();
	.loc 1 1018 5
	call	Z_Init@PLT	#
# d_main.c:1020:     printf ("W_Init: Init WADfiles.\n");
	.loc 1 1020 5
	leaq	.LC80(%rip), %rax	#, tmp420
	movq	%rax, %rdi	# tmp420,
	call	puts@PLT	#
# d_main.c:1021:     W_InitMultipleFiles (wadfiles);
	.loc 1 1021 5
	leaq	wadfiles(%rip), %rax	#, tmp421
	movq	%rax, %rdi	# tmp421,
	call	W_InitMultipleFiles@PLT	#
# d_main.c:1025:     if (modifiedgame)
	.loc 1 1025 9
	movl	modifiedgame(%rip), %eax	# modifiedgame, modifiedgame.123_165
# d_main.c:1025:     if (modifiedgame)
	.loc 1 1025 8
	testl	%eax, %eax	# modifiedgame.123_165
	je	.L148	#,
.LBB6:
# d_main.c:1029: 	char name[23][8]=
	.loc 1 1029 7
	movq	$829239909, -464(%rbp)	#, name[0]
	movq	$846017125, -456(%rbp)	#, name[1]
	movq	$862794341, -448(%rbp)	#, name[2]
	movq	$879571557, -440(%rbp)	#, name[3]
	movq	$896348773, -432(%rbp)	#, name[4]
	movq	$913125989, -424(%rbp)	#, name[5]
	movq	$929903205, -416(%rbp)	#, name[6]
	movq	$946680421, -408(%rbp)	#, name[7]
	movq	$963457637, -400(%rbp)	#, name[8]
	movq	$829240165, -392(%rbp)	#, name[9]
	movq	$862794597, -384(%rbp)	#, name[10]
	movq	$862794597, -376(%rbp)	#, name[11]
	movq	$879571813, -368(%rbp)	#, name[12]
	movq	$896349029, -360(%rbp)	#, name[13]
	movq	$913126245, -352(%rbp)	#, name[14]
	movq	$929903461, -344(%rbp)	#, name[15]
	movq	$946680677, -336(%rbp)	#, name[16]
	movq	$963457893, -328(%rbp)	#, name[17]
	movabsq	$112628796518500, %rax	#, tmp475
	movq	%rax, -320(%rbp)	# tmp475, name[18]
	movabsq	$53194904790626, %rax	#, tmp476
	movq	%rax, -312(%rbp)	# tmp476, name[19]
	movabsq	$54294365693288, %rax	#, tmp477
	movq	%rax, -304(%rbp)	# tmp477, name[20]
	movabsq	$54294600644963, %rax	#, tmp478
	movq	%rax, -296(%rbp)	# tmp478, name[21]
	movabsq	$3559023899895754867, %rax	#, tmp479
	movq	%rax, -288(%rbp)	# tmp479, name[22]
# d_main.c:1037: 	if ( gamemode == shareware)
	.loc 1 1037 16
	movl	gamemode(%rip), %eax	# gamemode, gamemode.124_166
# d_main.c:1037: 	if ( gamemode == shareware)
	.loc 1 1037 5
	testl	%eax, %eax	# gamemode.124_166
	jne	.L149	#,
# d_main.c:1038: 	    I_Error("\nYou cannot -file with the shareware "
	.loc 1 1038 6
	leaq	.LC81(%rip), %rax	#, tmp422
	movq	%rax, %rdi	# tmp422,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L149:
# d_main.c:1043: 	if (gamemode == registered)
	.loc 1 1043 15
	movl	gamemode(%rip), %eax	# gamemode, gamemode.125_167
# d_main.c:1043: 	if (gamemode == registered)
	.loc 1 1043 5
	cmpl	$1, %eax	#, gamemode.125_167
	jne	.L148	#,
# d_main.c:1044: 	    for (i = 0;i < 23; i++)
	.loc 1 1044 13
	movl	$0, -472(%rbp)	#, i
# d_main.c:1044: 	    for (i = 0;i < 23; i++)
	.loc 1 1044 6
	jmp	.L151	#
.L153:
# d_main.c:1045: 		if (W_CheckNumForName(name[i])<0)
	.loc 1 1045 29
	leaq	-464(%rbp), %rax	#, tmp423
	movl	-472(%rbp), %edx	# i, tmp425
	movslq	%edx, %rdx	# tmp425, tmp424
	salq	$3, %rdx	#, tmp426
	addq	%rdx, %rax	# tmp426, _168
# d_main.c:1045: 		if (W_CheckNumForName(name[i])<0)
	.loc 1 1045 7
	movq	%rax, %rdi	# _168,
	call	W_CheckNumForName@PLT	#
# d_main.c:1045: 		if (W_CheckNumForName(name[i])<0)
	.loc 1 1045 6 discriminator 1
	testl	%eax, %eax	# _169
	jns	.L152	#,
# d_main.c:1046: 		    I_Error("\nThis is not the registered version.");
	.loc 1 1046 7
	leaq	.LC82(%rip), %rax	#, tmp427
	movq	%rax, %rdi	# tmp427,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L152:
# d_main.c:1044: 	    for (i = 0;i < 23; i++)
	.loc 1 1044 26 discriminator 2
	addl	$1, -472(%rbp)	#, i
.L151:
# d_main.c:1044: 	    for (i = 0;i < 23; i++)
	.loc 1 1044 19 discriminator 1
	cmpl	$22, -472(%rbp)	#, i
	jle	.L153	#,
.L148:
.LBE6:
# d_main.c:1050:     if (modifiedgame)
	.loc 1 1050 9
	movl	modifiedgame(%rip), %eax	# modifiedgame, modifiedgame.126_170
# d_main.c:1050:     if (modifiedgame)
	.loc 1 1050 8
	testl	%eax, %eax	# modifiedgame.126_170
	je	.L154	#,
# d_main.c:1052: 	/*m*/printf (
	.loc 1 1052 7
	leaq	.LC83(%rip), %rax	#, tmp428
	movq	%rax, %rdi	# tmp428,
	call	puts@PLT	#
# d_main.c:1060: 	getchar ();
	.loc 1 1060 2
	call	getchar@PLT	#
.L154:
# d_main.c:1065:     switch ( gamemode )
	.loc 1 1065 5
	movl	gamemode(%rip), %eax	# gamemode, gamemode.127_171
	cmpl	$4, %eax	#, gamemode.127_171
	je	.L155	#,
	cmpl	$4, %eax	#, gamemode.127_171
	ja	.L172	#,
	testl	%eax, %eax	# gamemode.127_171
	je	.L155	#,
	subl	$1, %eax	#, _445
	cmpl	$2, %eax	#, _445
	ja	.L172	#,
	jmp	.L170	#
.L155:
# d_main.c:1069: 	printf (
	.loc 1 1069 2
	leaq	.LC84(%rip), %rax	#, tmp429
	movq	%rax, %rdi	# tmp429,
	call	puts@PLT	#
# d_main.c:1074: 	break;
	.loc 1 1074 2
	jmp	.L158	#
.L170:
# d_main.c:1078: 	printf (
	.loc 1 1078 2
	leaq	.LC85(%rip), %rax	#, tmp430
	movq	%rax, %rdi	# tmp430,
	call	puts@PLT	#
# d_main.c:1084: 	break;
	.loc 1 1084 2
	jmp	.L158	#
.L172:
# d_main.c:1088: 	break;
	.loc 1 1088 2
	nop	
.L158:
# d_main.c:1091:     printf ("M_Init: Init miscellaneous info.\n");
	.loc 1 1091 5
	leaq	.LC86(%rip), %rax	#, tmp431
	movq	%rax, %rdi	# tmp431,
	call	puts@PLT	#
# d_main.c:1092:     M_Init ();
	.loc 1 1092 5
	call	M_Init@PLT	#
# d_main.c:1094:     printf ("R_Init: Init DOOM refresh daemon - ");
	.loc 1 1094 5
	leaq	.LC87(%rip), %rax	#, tmp432
	movq	%rax, %rdi	# tmp432,
	movl	$0, %eax	#,
	call	printf@PLT	#
# d_main.c:1095:     R_Init ();
	.loc 1 1095 5
	call	R_Init@PLT	#
# d_main.c:1097:     printf ("\nP_Init: Init Playloop state.\n");
	.loc 1 1097 5
	leaq	.LC88(%rip), %rax	#, tmp433
	movq	%rax, %rdi	# tmp433,
	call	puts@PLT	#
# d_main.c:1098:     P_Init ();
	.loc 1 1098 5
	call	P_Init@PLT	#
# d_main.c:1100:     printf ("I_Init: Setting up machine state.\n");
	.loc 1 1100 5
	leaq	.LC89(%rip), %rax	#, tmp434
	movq	%rax, %rdi	# tmp434,
	call	puts@PLT	#
# d_main.c:1101:     I_Init ();
	.loc 1 1101 5
	call	I_Init@PLT	#
# d_main.c:1103:     printf ("D_CheckNetGame: Checking network game status.\n");
	.loc 1 1103 5
	leaq	.LC90(%rip), %rax	#, tmp435
	movq	%rax, %rdi	# tmp435,
	call	puts@PLT	#
# d_main.c:1104:     D_CheckNetGame ();
	.loc 1 1104 5
	call	D_CheckNetGame@PLT	#
# d_main.c:1106:     printf ("S_Init: Setting up sound.\n");
	.loc 1 1106 5
	leaq	.LC91(%rip), %rax	#, tmp436
	movq	%rax, %rdi	# tmp436,
	call	puts@PLT	#
# d_main.c:1107:     S_Init (snd_SfxVolume /* *8 */, snd_MusicVolume /* *8*/ );
	.loc 1 1107 5
	movl	snd_MusicVolume(%rip), %edx	# snd_MusicVolume, snd_MusicVolume.128_172
	movl	snd_SfxVolume(%rip), %eax	# snd_SfxVolume, snd_SfxVolume.129_173
	movl	%edx, %esi	# snd_MusicVolume.128_172,
	movl	%eax, %edi	# snd_SfxVolume.129_173,
	call	S_Init@PLT	#
# d_main.c:1109:     printf ("HU_Init: Setting up heads up display.\n");
	.loc 1 1109 5
	leaq	.LC92(%rip), %rax	#, tmp437
	movq	%rax, %rdi	# tmp437,
	call	puts@PLT	#
# d_main.c:1110:     HU_Init ();
	.loc 1 1110 5
	call	HU_Init@PLT	#
# d_main.c:1112:     printf ("ST_Init: Init status bar.\n");
	.loc 1 1112 5
	leaq	.LC93(%rip), %rax	#, tmp438
	movq	%rax, %rdi	# tmp438,
	call	puts@PLT	#
# d_main.c:1113:     ST_Init ();
	.loc 1 1113 5
	call	ST_Init@PLT	#
# d_main.c:1116:     p = M_CheckParm ("-statcopy");
	.loc 1 1116 9
	leaq	.LC94(%rip), %rax	#, tmp439
	movq	%rax, %rdi	# tmp439,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp440, p
# d_main.c:1117:     if (p && p<myargc-1)
	.loc 1 1117 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L159	#,
# d_main.c:1117:     if (p && p<myargc-1)
	.loc 1 1117 22 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.130_174
	subl	$1, %eax	#, _175
# d_main.c:1117:     if (p && p<myargc-1)
	.loc 1 1117 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _175, p
	jge	.L159	#,
.LBB7:
# d_main.c:1122: 	statcopy = (void*)atoi(myargv[p+1]);
	.loc 1 1122 31
	movq	myargv(%rip), %rax	# myargv, myargv.131_176
	movl	-480(%rbp), %edx	# p, tmp441
	movslq	%edx, %rdx	# tmp441, _177
	addq	$1, %rdx	#, _178
	salq	$3, %rdx	#, _179
	addq	%rdx, %rax	# _179, _180
# d_main.c:1122: 	statcopy = (void*)atoi(myargv[p+1]);
	.loc 1 1122 20
	movq	(%rax), %rax	# *_180, _181
	movq	%rax, %rdi	# _181,
	call	atoi@PLT	#
# d_main.c:1122: 	statcopy = (void*)atoi(myargv[p+1]);
	.loc 1 1122 20 is_stmt 0 discriminator 1
	cltq
# d_main.c:1122: 	statcopy = (void*)atoi(myargv[p+1]);
	.loc 1 1122 11 is_stmt 1 discriminator 1
	movq	%rax, statcopy(%rip)	# _184, statcopy
# d_main.c:1123: 	printf ("External statistics registered.\n");
	.loc 1 1123 2
	leaq	.LC95(%rip), %rax	#, tmp442
	movq	%rax, %rdi	# tmp442,
	call	puts@PLT	#
.L159:
.LBE7:
# d_main.c:1127:     p = M_CheckParm ("-record");
	.loc 1 1127 9
	leaq	.LC96(%rip), %rax	#, tmp443
	movq	%rax, %rdi	# tmp443,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp444, p
# d_main.c:1129:     if (p && p < myargc-1)
	.loc 1 1129 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L160	#,
# d_main.c:1129:     if (p && p < myargc-1)
	.loc 1 1129 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.132_185
	subl	$1, %eax	#, _186
# d_main.c:1129:     if (p && p < myargc-1)
	.loc 1 1129 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _186, p
	jge	.L160	#,
# d_main.c:1131: 	G_RecordDemo (myargv[p+1]);
	.loc 1 1131 22
	movq	myargv(%rip), %rax	# myargv, myargv.133_187
	movl	-480(%rbp), %edx	# p, tmp445
	movslq	%edx, %rdx	# tmp445, _188
	addq	$1, %rdx	#, _189
	salq	$3, %rdx	#, _190
	addq	%rdx, %rax	# _190, _191
# d_main.c:1131: 	G_RecordDemo (myargv[p+1]);
	.loc 1 1131 2
	movq	(%rax), %rax	# *_191, _192
	movq	%rax, %rdi	# _192,
	call	G_RecordDemo@PLT	#
# d_main.c:1132: 	autostart = true;
	.loc 1 1132 12
	movl	$1, autostart(%rip)	#, autostart
.L160:
# d_main.c:1135:     p = M_CheckParm ("-playdemo");
	.loc 1 1135 9
	leaq	.LC66(%rip), %rax	#, tmp446
	movq	%rax, %rdi	# tmp446,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp447, p
# d_main.c:1136:     if (p && p < myargc-1)
	.loc 1 1136 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L161	#,
# d_main.c:1136:     if (p && p < myargc-1)
	.loc 1 1136 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.134_193
	subl	$1, %eax	#, _194
# d_main.c:1136:     if (p && p < myargc-1)
	.loc 1 1136 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _194, p
	jge	.L161	#,
# d_main.c:1138: 	singledemo = true;              // quit after one demo
	.loc 1 1138 13
	movl	$1, singledemo(%rip)	#, singledemo
# d_main.c:1139: 	G_DeferedPlayDemo (myargv[p+1]);
	.loc 1 1139 27
	movq	myargv(%rip), %rax	# myargv, myargv.135_195
	movl	-480(%rbp), %edx	# p, tmp448
	movslq	%edx, %rdx	# tmp448, _196
	addq	$1, %rdx	#, _197
	salq	$3, %rdx	#, _198
	addq	%rdx, %rax	# _198, _199
# d_main.c:1139: 	G_DeferedPlayDemo (myargv[p+1]);
	.loc 1 1139 2
	movq	(%rax), %rax	# *_199, _200
	movq	%rax, %rdi	# _200,
	call	G_DeferedPlayDemo@PLT	#
# d_main.c:1140: 	D_DoomLoop ();  // never returns
	.loc 1 1140 2
	call	D_DoomLoop	#
.L161:
# d_main.c:1143:     p = M_CheckParm ("-timedemo");
	.loc 1 1143 9
	leaq	.LC67(%rip), %rax	#, tmp449
	movq	%rax, %rdi	# tmp449,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp450, p
# d_main.c:1144:     if (p && p < myargc-1)
	.loc 1 1144 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L162	#,
# d_main.c:1144:     if (p && p < myargc-1)
	.loc 1 1144 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.136_201
	subl	$1, %eax	#, _202
# d_main.c:1144:     if (p && p < myargc-1)
	.loc 1 1144 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _202, p
	jge	.L162	#,
# d_main.c:1146: 	G_TimeDemo (myargv[p+1]);
	.loc 1 1146 20
	movq	myargv(%rip), %rax	# myargv, myargv.137_203
	movl	-480(%rbp), %edx	# p, tmp451
	movslq	%edx, %rdx	# tmp451, _204
	addq	$1, %rdx	#, _205
	salq	$3, %rdx	#, _206
	addq	%rdx, %rax	# _206, _207
# d_main.c:1146: 	G_TimeDemo (myargv[p+1]);
	.loc 1 1146 2
	movq	(%rax), %rax	# *_207, _208
	movq	%rax, %rdi	# _208,
	call	G_TimeDemo@PLT	#
# d_main.c:1147: 	D_DoomLoop ();  // never returns
	.loc 1 1147 2
	call	D_DoomLoop	#
.L162:
# d_main.c:1150:     p = M_CheckParm ("-loadgame");
	.loc 1 1150 9
	leaq	.LC97(%rip), %rax	#, tmp452
	movq	%rax, %rdi	# tmp452,
	call	M_CheckParm@PLT	#
	movl	%eax, -480(%rbp)	# tmp453, p
# d_main.c:1151:     if (p && p < myargc-1)
	.loc 1 1151 8
	cmpl	$0, -480(%rbp)	#, p
	je	.L163	#,
# d_main.c:1151:     if (p && p < myargc-1)
	.loc 1 1151 24 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.138_209
	subl	$1, %eax	#, _210
# d_main.c:1151:     if (p && p < myargc-1)
	.loc 1 1151 11 discriminator 1
	cmpl	%eax, -480(%rbp)	# _210, p
	jge	.L163	#,
# d_main.c:1153: 	if (M_CheckParm("-cdrom"))
	.loc 1 1153 6
	leaq	.LC55(%rip), %rax	#, tmp454
	movq	%rax, %rdi	# tmp454,
	call	M_CheckParm@PLT	#
# d_main.c:1153: 	if (M_CheckParm("-cdrom"))
	.loc 1 1153 5 discriminator 1
	testl	%eax, %eax	# _211
	je	.L164	#,
# d_main.c:1154: 	    sprintf(file, "c:\\doomdata\\"SAVEGAMENAME"%c.dsg",myargv[p+1][0]);
	.loc 1 1154 63
	movq	myargv(%rip), %rax	# myargv, myargv.139_212
	movl	-480(%rbp), %edx	# p, tmp455
	movslq	%edx, %rdx	# tmp455, _213
	addq	$1, %rdx	#, _214
	salq	$3, %rdx	#, _215
	addq	%rdx, %rax	# _215, _216
	movq	(%rax), %rax	# *_216, _217
# d_main.c:1154: 	    sprintf(file, "c:\\doomdata\\"SAVEGAMENAME"%c.dsg",myargv[p+1][0]);
	.loc 1 1154 68
	movzbl	(%rax), %eax	# *_217, _218
# d_main.c:1154: 	    sprintf(file, "c:\\doomdata\\"SAVEGAMENAME"%c.dsg",myargv[p+1][0]);
	.loc 1 1154 6
	movsbl	%al, %edx	# _218, _219
	leaq	-272(%rbp), %rax	#, tmp456
	leaq	.LC98(%rip), %rcx	#, tmp457
	movq	%rcx, %rsi	# tmp457,
	movq	%rax, %rdi	# tmp456,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
	jmp	.L165	#
.L164:
# d_main.c:1156: 	    sprintf(file, SAVEGAMENAME"%c.dsg",myargv[p+1][0]);
	.loc 1 1156 47
	movq	myargv(%rip), %rax	# myargv, myargv.140_220
	movl	-480(%rbp), %edx	# p, tmp458
	movslq	%edx, %rdx	# tmp458, _221
	addq	$1, %rdx	#, _222
	salq	$3, %rdx	#, _223
	addq	%rdx, %rax	# _223, _224
	movq	(%rax), %rax	# *_224, _225
# d_main.c:1156: 	    sprintf(file, SAVEGAMENAME"%c.dsg",myargv[p+1][0]);
	.loc 1 1156 52
	movzbl	(%rax), %eax	# *_225, _226
# d_main.c:1156: 	    sprintf(file, SAVEGAMENAME"%c.dsg",myargv[p+1][0]);
	.loc 1 1156 6
	movsbl	%al, %edx	# _226, _227
	leaq	-272(%rbp), %rax	#, tmp459
	leaq	.LC99(%rip), %rcx	#, tmp460
	movq	%rcx, %rsi	# tmp460,
	movq	%rax, %rdi	# tmp459,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
.L165:
# d_main.c:1157: 	G_LoadGame (file);
	.loc 1 1157 2
	leaq	-272(%rbp), %rax	#, tmp461
	movq	%rax, %rdi	# tmp461,
	call	G_LoadGame@PLT	#
.L163:
# d_main.c:1161:     if ( gameaction != ga_loadgame )
	.loc 1 1161 21
	movl	gameaction(%rip), %eax	# gameaction, gameaction.141_228
# d_main.c:1161:     if ( gameaction != ga_loadgame )
	.loc 1 1161 8
	cmpl	$3, %eax	#, gameaction.141_228
	je	.L166	#,
# d_main.c:1163: 	if (autostart || netgame)
	.loc 1 1163 6
	movl	autostart(%rip), %eax	# autostart, autostart.142_229
# d_main.c:1163: 	if (autostart || netgame)
	.loc 1 1163 5
	testl	%eax, %eax	# autostart.142_229
	jne	.L167	#,
# d_main.c:1163: 	if (autostart || netgame)
	.loc 1 1163 16 discriminator 1
	movl	netgame(%rip), %eax	# netgame, netgame.143_230
	testl	%eax, %eax	# netgame.143_230
	je	.L168	#,
.L167:
# d_main.c:1164: 	    G_InitNew (startskill, startepisode, startmap);
	.loc 1 1164 6
	movl	startmap(%rip), %edx	# startmap, startmap.144_231
	movl	startepisode(%rip), %ecx	# startepisode, startepisode.145_232
	movl	startskill(%rip), %eax	# startskill, startskill.146_233
	movl	%ecx, %esi	# startepisode.145_232,
	movl	%eax, %edi	# startskill.146_233,
	call	G_InitNew@PLT	#
	jmp	.L166	#
.L168:
# d_main.c:1166: 	    D_StartTitle ();                // start up intro loop
	.loc 1 1166 6
	call	D_StartTitle	#
.L166:
# d_main.c:1170:     D_DoomLoop ();  // never returns
	.loc 1 1170 5
	call	D_DoomLoop	#
# d_main.c:1171: }
	.loc 1 1171 1
	nop	
	movq	-8(%rbp), %rax	# D.9002, tmp463
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp463
	je	.L169	#,
	call	__stack_chk_fail@PLT	#
.L169:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	D_DoomMain, .-D_DoomMain
	.data
	.align 4
	.type	oldgamestate.5, @object
	.size	oldgamestate.5, 4
oldgamestate.5:
	.long	-1
	.local	borderdrawcount.4
	.comm	borderdrawcount.4,4,4
	.local	fullscreen.3
	.comm	fullscreen.3,4,4
	.local	inhelpscreensstate.2
	.comm	inhelpscreensstate.2,4,4
	.local	viewactivestate.1
	.comm	viewactivestate.1,4,4
	.local	menuactivestate.0
	.comm	menuactivestate.0,4,4
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "doomdef.h"
	.file 7 "doomtype.h"
	.file 8 "doomdata.h"
	.file 9 "m_fixed.h"
	.file 10 "tables.h"
	.file 11 "d_think.h"
	.file 12 "info.h"
	.file 13 "p_pspr.h"
	.file 14 "p_mobj.h"
	.file 15 "r_defs.h"
	.file 16 "d_player.h"
	.file 17 "d_ticcmd.h"
	.file 18 "/usr/include/stdio.h"
	.file 19 "doomstat.h"
	.file 20 "sounds.h"
	.file 21 "d_event.h"
	.file 22 "f_wipe.h"
	.file 23 "m_argv.h"
	.file 24 "d_main.h"
	.file 25 "g_game.h"
	.file 26 "st_stuff.h"
	.file 27 "hu_stuff.h"
	.file 28 "s_sound.h"
	.file 29 "i_system.h"
	.file 30 "p_setup.h"
	.file 31 "r_main.h"
	.file 32 "m_menu.h"
	.file 33 "w_wad.h"
	.file 34 "z_zone.h"
	.file 35 "m_misc.h"
	.file 36 "v_video.h"
	.file 37 "/usr/include/stdlib.h"
	.file 38 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 39 "/usr/include/string.h"
	.file 40 "/usr/include/unistd.h"
	.file 41 "i_sound.h"
	.file 42 "d_net.h"
	.file 43 "i_video.h"
	.file 44 "r_draw.h"
	.file 45 "f_finale.h"
	.file 46 "wi_stuff.h"
	.file 47 "am_map.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4193
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2b
	.long	.LASF1787
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xd
	.long	0x51
	.long	0x3e
	.uleb128 0xb
	.long	0x43
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.long	0x2e
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x26
	.long	0x4a
	.uleb128 0x10
	.long	.LASF1739
	.byte	0x1c
	.byte	0x13
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2c
	.byte	0x8
	.uleb128 0x1a
	.long	0x7e
	.uleb128 0x12
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x12
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x12
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x12
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF11
	.byte	0x3
	.byte	0x96
	.byte	0x1a
	.long	0x77
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0xa8
	.uleb128 0x7
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0xa8
	.uleb128 0xd
	.long	0xa1
	.long	0xe3
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.uleb128 0x1a
	.long	0xe3
	.uleb128 0x18
	.long	.LASF123
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x274
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0xa1
	.byte	0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xe3
	.byte	0x8
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xe3
	.byte	0x10
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xe3
	.byte	0x18
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xe3
	.byte	0x20
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xe3
	.byte	0x28
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xe3
	.byte	0x30
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xe3
	.byte	0x38
	.uleb128 0x3
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xe3
	.byte	0x40
	.uleb128 0x3
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xe3
	.byte	0x48
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xe3
	.byte	0x50
	.uleb128 0x3
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xe3
	.byte	0x58
	.uleb128 0x3
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x28d
	.byte	0x60
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x292
	.byte	0x68
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0xa1
	.byte	0x70
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0xa1
	.byte	0x74
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0xbb
	.byte	0x78
	.uleb128 0x3
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x8c
	.byte	0x80
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x93
	.byte	0x82
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x297
	.byte	0x83
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x2a7
	.byte	0x88
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0xc7
	.byte	0x90
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x2b1
	.byte	0x98
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x2bb
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x292
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x6b
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0xa1
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x2c0
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xed
	.uleb128 0x2e
	.long	.LASF1788
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x20
	.long	.LASF44
	.uleb128 0x9
	.long	0x288
	.uleb128 0x9
	.long	0xed
	.uleb128 0xd
	.long	0x4a
	.long	0x2a7
	.uleb128 0xb
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x280
	.uleb128 0x20
	.long	.LASF45
	.uleb128 0x9
	.long	0x2ac
	.uleb128 0x20
	.long	.LASF46
	.uleb128 0x9
	.long	0x2b6
	.uleb128 0xd
	.long	0x4a
	.long	0x2d0
	.uleb128 0xb
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.long	0x51
	.uleb128 0x1a
	.long	0x2d0
	.uleb128 0x9
	.long	0x274
	.uleb128 0x1a
	.long	0x2da
	.uleb128 0x5
	.long	.LASF1486
	.byte	0x12
	.byte	0x96
	.byte	0xe
	.long	0x2da
	.uleb128 0x12
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x9
	.long	0xe3
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0x21
	.byte	0x6
	.long	0x316
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6e
	.byte	0
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.long	0x341
	.uleb128 0x2
	.long	.LASF50
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x1
	.uleb128 0x2
	.long	.LASF52
	.byte	0x2
	.uleb128 0x2
	.long	.LASF53
	.byte	0x3
	.uleb128 0x2
	.long	.LASF54
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x6
	.byte	0x2f
	.byte	0x3
	.long	0x316
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0x40
	.byte	0x1
	.long	0x372
	.uleb128 0x2
	.long	.LASF56
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x1
	.uleb128 0x2
	.long	.LASF58
	.byte	0x2
	.uleb128 0x2
	.long	.LASF59
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF60
	.byte	0x6
	.byte	0x46
	.byte	0x3
	.long	0x34d
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.long	0x3a3
	.uleb128 0x2
	.long	.LASF61
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x1
	.uleb128 0x2
	.long	.LASF63
	.byte	0x2
	.uleb128 0x2
	.long	.LASF64
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF65
	.byte	0x6
	.byte	0x85
	.byte	0x3
	.long	0x37e
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.long	0x3da
	.uleb128 0x2
	.long	.LASF66
	.byte	0
	.uleb128 0x2
	.long	.LASF67
	.byte	0x1
	.uleb128 0x2
	.long	.LASF68
	.byte	0x2
	.uleb128 0x2
	.long	.LASF69
	.byte	0x3
	.uleb128 0x2
	.long	.LASF70
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF71
	.byte	0x6
	.byte	0x9a
	.byte	0x3
	.long	0x3af
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.long	0x41d
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
	.byte	0
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.long	0x46c
	.uleb128 0x2
	.long	.LASF79
	.byte	0
	.uleb128 0x2
	.long	.LASF80
	.byte	0x1
	.uleb128 0x2
	.long	.LASF81
	.byte	0x2
	.uleb128 0x2
	.long	.LASF82
	.byte	0x3
	.uleb128 0x2
	.long	.LASF83
	.byte	0x4
	.uleb128 0x2
	.long	.LASF84
	.byte	0x5
	.uleb128 0x2
	.long	.LASF85
	.byte	0x6
	.uleb128 0x2
	.long	.LASF86
	.byte	0x7
	.uleb128 0x2
	.long	.LASF87
	.byte	0x8
	.uleb128 0x2
	.long	.LASF88
	.byte	0x9
	.uleb128 0x2
	.long	.LASF89
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF90
	.byte	0x6
	.byte	0xc5
	.byte	0x3
	.long	0x41d
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0xca
	.byte	0x1
	.long	0x4a9
	.uleb128 0x2
	.long	.LASF91
	.byte	0
	.uleb128 0x2
	.long	.LASF92
	.byte	0x1
	.uleb128 0x2
	.long	.LASF93
	.byte	0x2
	.uleb128 0x2
	.long	.LASF94
	.byte	0x3
	.uleb128 0x2
	.long	.LASF95
	.byte	0x4
	.uleb128 0x2
	.long	.LASF96
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x77
	.byte	0x6
	.byte	0xd7
	.byte	0x1
	.long	0x4e0
	.uleb128 0x2
	.long	.LASF97
	.byte	0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x1
	.uleb128 0x2
	.long	.LASF99
	.byte	0x2
	.uleb128 0x2
	.long	.LASF100
	.byte	0x3
	.uleb128 0x2
	.long	.LASF101
	.byte	0x4
	.uleb128 0x2
	.long	.LASF102
	.byte	0x5
	.uleb128 0x2
	.long	.LASF103
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.long	0x77
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.long	0x4f9
	.uleb128 0x2
	.long	.LASF104
	.byte	0
	.uleb128 0x2
	.long	.LASF105
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF106
	.byte	0x7
	.byte	0x22
	.byte	0x1c
	.long	0x4e0
	.uleb128 0x7
	.long	.LASF107
	.byte	0x7
	.byte	0x24
	.byte	0x17
	.long	0x85
	.uleb128 0xd
	.long	0x9a
	.long	0x521
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x567
	.uleb128 0xc
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x9a
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x9a
	.byte	0x2
	.uleb128 0x3
	.long	.LASF108
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x9a
	.byte	0x4
	.uleb128 0x3
	.long	.LASF109
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x9a
	.byte	0x6
	.uleb128 0x3
	.long	.LASF110
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF111
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x521
	.uleb128 0x7
	.long	.LASF112
	.byte	0x9
	.byte	0x26
	.byte	0xd
	.long	0xa1
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.long	.LASF113
	.uleb128 0x12
	.byte	0x8
	.byte	0x4
	.long	.LASF114
	.uleb128 0x7
	.long	.LASF115
	.byte	0xa
	.byte	0x4e
	.byte	0x12
	.long	0x77
	.uleb128 0x7
	.long	.LASF116
	.byte	0xb
	.byte	0x29
	.byte	0x11
	.long	0x5a5
	.uleb128 0x9
	.long	0x5aa
	.uleb128 0x2f
	.long	0x5b1
	.uleb128 0x1b
	.byte	0
	.uleb128 0x7
	.long	.LASF117
	.byte	0xb
	.byte	0x2a
	.byte	0x11
	.long	0x5bd
	.uleb128 0x9
	.long	0x5c2
	.uleb128 0x27
	.long	0x5cd
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x7
	.long	.LASF118
	.byte	0xb
	.byte	0x2b
	.byte	0x11
	.long	0x5d9
	.uleb128 0x9
	.long	0x5de
	.uleb128 0x27
	.long	0x5ee
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x30
	.byte	0x8
	.byte	0xb
	.byte	0x2d
	.byte	0x9
	.long	0x618
	.uleb128 0x28
	.long	.LASF119
	.byte	0x2f
	.long	0x5b1
	.uleb128 0x31
	.string	"acv"
	.byte	0xb
	.byte	0x30
	.byte	0xd
	.long	0x599
	.uleb128 0x28
	.long	.LASF120
	.byte	0x31
	.long	0x5cd
	.byte	0
	.uleb128 0x7
	.long	.LASF121
	.byte	0xb
	.byte	0x33
	.byte	0x3
	.long	0x5ee
	.uleb128 0x7
	.long	.LASF122
	.byte	0xb
	.byte	0x3c
	.byte	0x14
	.long	0x618
	.uleb128 0x18
	.long	.LASF124
	.byte	0x18
	.byte	0xb
	.byte	0x40
	.byte	0x10
	.long	0x665
	.uleb128 0x3
	.long	.LASF125
	.byte	0xb
	.byte	0x42
	.byte	0x17
	.long	0x665
	.byte	0
	.uleb128 0x3
	.long	.LASF126
	.byte	0xb
	.byte	0x43
	.byte	0x17
	.long	0x665
	.byte	0x8
	.uleb128 0x3
	.long	.LASF127
	.byte	0xb
	.byte	0x44
	.byte	0xe
	.long	0x624
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	0x630
	.uleb128 0x7
	.long	.LASF128
	.byte	0xb
	.byte	0x46
	.byte	0x3
	.long	0x630
	.uleb128 0xe
	.long	0x77
	.byte	0xc
	.byte	0x1f
	.byte	0x1
	.long	0x9c5
	.uleb128 0x2
	.long	.LASF129
	.byte	0
	.uleb128 0x2
	.long	.LASF130
	.byte	0x1
	.uleb128 0x2
	.long	.LASF131
	.byte	0x2
	.uleb128 0x2
	.long	.LASF132
	.byte	0x3
	.uleb128 0x2
	.long	.LASF133
	.byte	0x4
	.uleb128 0x2
	.long	.LASF134
	.byte	0x5
	.uleb128 0x2
	.long	.LASF135
	.byte	0x6
	.uleb128 0x2
	.long	.LASF136
	.byte	0x7
	.uleb128 0x2
	.long	.LASF137
	.byte	0x8
	.uleb128 0x2
	.long	.LASF138
	.byte	0x9
	.uleb128 0x2
	.long	.LASF139
	.byte	0xa
	.uleb128 0x2
	.long	.LASF140
	.byte	0xb
	.uleb128 0x2
	.long	.LASF141
	.byte	0xc
	.uleb128 0x2
	.long	.LASF142
	.byte	0xd
	.uleb128 0x2
	.long	.LASF143
	.byte	0xe
	.uleb128 0x2
	.long	.LASF144
	.byte	0xf
	.uleb128 0x2
	.long	.LASF145
	.byte	0x10
	.uleb128 0x2
	.long	.LASF146
	.byte	0x11
	.uleb128 0x2
	.long	.LASF147
	.byte	0x12
	.uleb128 0x2
	.long	.LASF148
	.byte	0x13
	.uleb128 0x2
	.long	.LASF149
	.byte	0x14
	.uleb128 0x2
	.long	.LASF150
	.byte	0x15
	.uleb128 0x2
	.long	.LASF151
	.byte	0x16
	.uleb128 0x2
	.long	.LASF152
	.byte	0x17
	.uleb128 0x2
	.long	.LASF153
	.byte	0x18
	.uleb128 0x2
	.long	.LASF154
	.byte	0x19
	.uleb128 0x2
	.long	.LASF155
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF156
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF157
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF158
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF159
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF160
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF161
	.byte	0x20
	.uleb128 0x2
	.long	.LASF162
	.byte	0x21
	.uleb128 0x2
	.long	.LASF163
	.byte	0x22
	.uleb128 0x2
	.long	.LASF164
	.byte	0x23
	.uleb128 0x2
	.long	.LASF165
	.byte	0x24
	.uleb128 0x2
	.long	.LASF166
	.byte	0x25
	.uleb128 0x2
	.long	.LASF167
	.byte	0x26
	.uleb128 0x2
	.long	.LASF168
	.byte	0x27
	.uleb128 0x2
	.long	.LASF169
	.byte	0x28
	.uleb128 0x2
	.long	.LASF170
	.byte	0x29
	.uleb128 0x2
	.long	.LASF171
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF172
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF173
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF174
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF175
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF176
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF177
	.byte	0x30
	.uleb128 0x2
	.long	.LASF178
	.byte	0x31
	.uleb128 0x2
	.long	.LASF179
	.byte	0x32
	.uleb128 0x2
	.long	.LASF180
	.byte	0x33
	.uleb128 0x2
	.long	.LASF181
	.byte	0x34
	.uleb128 0x2
	.long	.LASF182
	.byte	0x35
	.uleb128 0x2
	.long	.LASF183
	.byte	0x36
	.uleb128 0x2
	.long	.LASF184
	.byte	0x37
	.uleb128 0x2
	.long	.LASF185
	.byte	0x38
	.uleb128 0x2
	.long	.LASF186
	.byte	0x39
	.uleb128 0x2
	.long	.LASF187
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF188
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF189
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF190
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF191
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF192
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF193
	.byte	0x40
	.uleb128 0x2
	.long	.LASF194
	.byte	0x41
	.uleb128 0x2
	.long	.LASF195
	.byte	0x42
	.uleb128 0x2
	.long	.LASF196
	.byte	0x43
	.uleb128 0x2
	.long	.LASF197
	.byte	0x44
	.uleb128 0x2
	.long	.LASF198
	.byte	0x45
	.uleb128 0x2
	.long	.LASF199
	.byte	0x46
	.uleb128 0x2
	.long	.LASF200
	.byte	0x47
	.uleb128 0x2
	.long	.LASF201
	.byte	0x48
	.uleb128 0x2
	.long	.LASF202
	.byte	0x49
	.uleb128 0x2
	.long	.LASF203
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF204
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF205
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF206
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF207
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF208
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF209
	.byte	0x50
	.uleb128 0x2
	.long	.LASF210
	.byte	0x51
	.uleb128 0x2
	.long	.LASF211
	.byte	0x52
	.uleb128 0x2
	.long	.LASF212
	.byte	0x53
	.uleb128 0x2
	.long	.LASF213
	.byte	0x54
	.uleb128 0x2
	.long	.LASF214
	.byte	0x55
	.uleb128 0x2
	.long	.LASF215
	.byte	0x56
	.uleb128 0x2
	.long	.LASF216
	.byte	0x57
	.uleb128 0x2
	.long	.LASF217
	.byte	0x58
	.uleb128 0x2
	.long	.LASF218
	.byte	0x59
	.uleb128 0x2
	.long	.LASF219
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF220
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF221
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF222
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF223
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF224
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF225
	.byte	0x60
	.uleb128 0x2
	.long	.LASF226
	.byte	0x61
	.uleb128 0x2
	.long	.LASF227
	.byte	0x62
	.uleb128 0x2
	.long	.LASF228
	.byte	0x63
	.uleb128 0x2
	.long	.LASF229
	.byte	0x64
	.uleb128 0x2
	.long	.LASF230
	.byte	0x65
	.uleb128 0x2
	.long	.LASF231
	.byte	0x66
	.uleb128 0x2
	.long	.LASF232
	.byte	0x67
	.uleb128 0x2
	.long	.LASF233
	.byte	0x68
	.uleb128 0x2
	.long	.LASF234
	.byte	0x69
	.uleb128 0x2
	.long	.LASF235
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF236
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF237
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF238
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF239
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF240
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF241
	.byte	0x70
	.uleb128 0x2
	.long	.LASF242
	.byte	0x71
	.uleb128 0x2
	.long	.LASF243
	.byte	0x72
	.uleb128 0x2
	.long	.LASF244
	.byte	0x73
	.uleb128 0x2
	.long	.LASF245
	.byte	0x74
	.uleb128 0x2
	.long	.LASF246
	.byte	0x75
	.uleb128 0x2
	.long	.LASF247
	.byte	0x76
	.uleb128 0x2
	.long	.LASF248
	.byte	0x77
	.uleb128 0x2
	.long	.LASF249
	.byte	0x78
	.uleb128 0x2
	.long	.LASF250
	.byte	0x79
	.uleb128 0x2
	.long	.LASF251
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF252
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF253
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF254
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF255
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF256
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF257
	.byte	0x80
	.uleb128 0x2
	.long	.LASF258
	.byte	0x81
	.uleb128 0x2
	.long	.LASF259
	.byte	0x82
	.uleb128 0x2
	.long	.LASF260
	.byte	0x83
	.uleb128 0x2
	.long	.LASF261
	.byte	0x84
	.uleb128 0x2
	.long	.LASF262
	.byte	0x85
	.uleb128 0x2
	.long	.LASF263
	.byte	0x86
	.uleb128 0x2
	.long	.LASF264
	.byte	0x87
	.uleb128 0x2
	.long	.LASF265
	.byte	0x88
	.uleb128 0x2
	.long	.LASF266
	.byte	0x89
	.uleb128 0x2
	.long	.LASF267
	.byte	0x8a
	.byte	0
	.uleb128 0x7
	.long	.LASF268
	.byte	0xc
	.byte	0xac
	.byte	0x3
	.long	0x676
	.uleb128 0xe
	.long	0x77
	.byte	0xc
	.byte	0xaf
	.byte	0x1
	.long	0x2356
	.uleb128 0x2
	.long	.LASF269
	.byte	0
	.uleb128 0x2
	.long	.LASF270
	.byte	0x1
	.uleb128 0x2
	.long	.LASF271
	.byte	0x2
	.uleb128 0x2
	.long	.LASF272
	.byte	0x3
	.uleb128 0x2
	.long	.LASF273
	.byte	0x4
	.uleb128 0x2
	.long	.LASF274
	.byte	0x5
	.uleb128 0x2
	.long	.LASF275
	.byte	0x6
	.uleb128 0x2
	.long	.LASF276
	.byte	0x7
	.uleb128 0x2
	.long	.LASF277
	.byte	0x8
	.uleb128 0x2
	.long	.LASF278
	.byte	0x9
	.uleb128 0x2
	.long	.LASF279
	.byte	0xa
	.uleb128 0x2
	.long	.LASF280
	.byte	0xb
	.uleb128 0x2
	.long	.LASF281
	.byte	0xc
	.uleb128 0x2
	.long	.LASF282
	.byte	0xd
	.uleb128 0x2
	.long	.LASF283
	.byte	0xe
	.uleb128 0x2
	.long	.LASF284
	.byte	0xf
	.uleb128 0x2
	.long	.LASF285
	.byte	0x10
	.uleb128 0x2
	.long	.LASF286
	.byte	0x11
	.uleb128 0x2
	.long	.LASF287
	.byte	0x12
	.uleb128 0x2
	.long	.LASF288
	.byte	0x13
	.uleb128 0x2
	.long	.LASF289
	.byte	0x14
	.uleb128 0x2
	.long	.LASF290
	.byte	0x15
	.uleb128 0x2
	.long	.LASF291
	.byte	0x16
	.uleb128 0x2
	.long	.LASF292
	.byte	0x17
	.uleb128 0x2
	.long	.LASF293
	.byte	0x18
	.uleb128 0x2
	.long	.LASF294
	.byte	0x19
	.uleb128 0x2
	.long	.LASF295
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF296
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF297
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF298
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF299
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF300
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF301
	.byte	0x20
	.uleb128 0x2
	.long	.LASF302
	.byte	0x21
	.uleb128 0x2
	.long	.LASF303
	.byte	0x22
	.uleb128 0x2
	.long	.LASF304
	.byte	0x23
	.uleb128 0x2
	.long	.LASF305
	.byte	0x24
	.uleb128 0x2
	.long	.LASF306
	.byte	0x25
	.uleb128 0x2
	.long	.LASF307
	.byte	0x26
	.uleb128 0x2
	.long	.LASF308
	.byte	0x27
	.uleb128 0x2
	.long	.LASF309
	.byte	0x28
	.uleb128 0x2
	.long	.LASF310
	.byte	0x29
	.uleb128 0x2
	.long	.LASF311
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF312
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF313
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF314
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF315
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF316
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF317
	.byte	0x30
	.uleb128 0x2
	.long	.LASF318
	.byte	0x31
	.uleb128 0x2
	.long	.LASF319
	.byte	0x32
	.uleb128 0x2
	.long	.LASF320
	.byte	0x33
	.uleb128 0x2
	.long	.LASF321
	.byte	0x34
	.uleb128 0x2
	.long	.LASF322
	.byte	0x35
	.uleb128 0x2
	.long	.LASF323
	.byte	0x36
	.uleb128 0x2
	.long	.LASF324
	.byte	0x37
	.uleb128 0x2
	.long	.LASF325
	.byte	0x38
	.uleb128 0x2
	.long	.LASF326
	.byte	0x39
	.uleb128 0x2
	.long	.LASF327
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF328
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF329
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF330
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF331
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF332
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF333
	.byte	0x40
	.uleb128 0x2
	.long	.LASF334
	.byte	0x41
	.uleb128 0x2
	.long	.LASF335
	.byte	0x42
	.uleb128 0x2
	.long	.LASF336
	.byte	0x43
	.uleb128 0x2
	.long	.LASF337
	.byte	0x44
	.uleb128 0x2
	.long	.LASF338
	.byte	0x45
	.uleb128 0x2
	.long	.LASF339
	.byte	0x46
	.uleb128 0x2
	.long	.LASF340
	.byte	0x47
	.uleb128 0x2
	.long	.LASF341
	.byte	0x48
	.uleb128 0x2
	.long	.LASF342
	.byte	0x49
	.uleb128 0x2
	.long	.LASF343
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF344
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF345
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF346
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF347
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF348
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF349
	.byte	0x50
	.uleb128 0x2
	.long	.LASF350
	.byte	0x51
	.uleb128 0x2
	.long	.LASF351
	.byte	0x52
	.uleb128 0x2
	.long	.LASF352
	.byte	0x53
	.uleb128 0x2
	.long	.LASF353
	.byte	0x54
	.uleb128 0x2
	.long	.LASF354
	.byte	0x55
	.uleb128 0x2
	.long	.LASF355
	.byte	0x56
	.uleb128 0x2
	.long	.LASF356
	.byte	0x57
	.uleb128 0x2
	.long	.LASF357
	.byte	0x58
	.uleb128 0x2
	.long	.LASF358
	.byte	0x59
	.uleb128 0x2
	.long	.LASF359
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF360
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF361
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF362
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF363
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF364
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF365
	.byte	0x60
	.uleb128 0x2
	.long	.LASF366
	.byte	0x61
	.uleb128 0x2
	.long	.LASF367
	.byte	0x62
	.uleb128 0x2
	.long	.LASF368
	.byte	0x63
	.uleb128 0x2
	.long	.LASF369
	.byte	0x64
	.uleb128 0x2
	.long	.LASF370
	.byte	0x65
	.uleb128 0x2
	.long	.LASF371
	.byte	0x66
	.uleb128 0x2
	.long	.LASF372
	.byte	0x67
	.uleb128 0x2
	.long	.LASF373
	.byte	0x68
	.uleb128 0x2
	.long	.LASF374
	.byte	0x69
	.uleb128 0x2
	.long	.LASF375
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF376
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF377
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF378
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF379
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF380
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF381
	.byte	0x70
	.uleb128 0x2
	.long	.LASF382
	.byte	0x71
	.uleb128 0x2
	.long	.LASF383
	.byte	0x72
	.uleb128 0x2
	.long	.LASF384
	.byte	0x73
	.uleb128 0x2
	.long	.LASF385
	.byte	0x74
	.uleb128 0x2
	.long	.LASF386
	.byte	0x75
	.uleb128 0x2
	.long	.LASF387
	.byte	0x76
	.uleb128 0x2
	.long	.LASF388
	.byte	0x77
	.uleb128 0x2
	.long	.LASF389
	.byte	0x78
	.uleb128 0x2
	.long	.LASF390
	.byte	0x79
	.uleb128 0x2
	.long	.LASF391
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF392
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF393
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF394
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF395
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF396
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF397
	.byte	0x80
	.uleb128 0x2
	.long	.LASF398
	.byte	0x81
	.uleb128 0x2
	.long	.LASF399
	.byte	0x82
	.uleb128 0x2
	.long	.LASF400
	.byte	0x83
	.uleb128 0x2
	.long	.LASF401
	.byte	0x84
	.uleb128 0x2
	.long	.LASF402
	.byte	0x85
	.uleb128 0x2
	.long	.LASF403
	.byte	0x86
	.uleb128 0x2
	.long	.LASF404
	.byte	0x87
	.uleb128 0x2
	.long	.LASF405
	.byte	0x88
	.uleb128 0x2
	.long	.LASF406
	.byte	0x89
	.uleb128 0x2
	.long	.LASF407
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF408
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF409
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF410
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF411
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF412
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF413
	.byte	0x90
	.uleb128 0x2
	.long	.LASF414
	.byte	0x91
	.uleb128 0x2
	.long	.LASF415
	.byte	0x92
	.uleb128 0x2
	.long	.LASF416
	.byte	0x93
	.uleb128 0x2
	.long	.LASF417
	.byte	0x94
	.uleb128 0x2
	.long	.LASF418
	.byte	0x95
	.uleb128 0x2
	.long	.LASF419
	.byte	0x96
	.uleb128 0x2
	.long	.LASF420
	.byte	0x97
	.uleb128 0x2
	.long	.LASF421
	.byte	0x98
	.uleb128 0x2
	.long	.LASF422
	.byte	0x99
	.uleb128 0x2
	.long	.LASF423
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF424
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF425
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF426
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF427
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF428
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF429
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF430
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF431
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF432
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF433
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF434
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF435
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF436
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF437
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF438
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF439
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF440
	.byte	0xab
	.uleb128 0x2
	.long	.LASF441
	.byte	0xac
	.uleb128 0x2
	.long	.LASF442
	.byte	0xad
	.uleb128 0x2
	.long	.LASF443
	.byte	0xae
	.uleb128 0x2
	.long	.LASF444
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF445
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF446
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF447
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF448
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF449
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF450
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF451
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF452
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF453
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF454
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF455
	.byte	0xba
	.uleb128 0x2
	.long	.LASF456
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF457
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF458
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF459
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF460
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF461
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF462
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF463
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF464
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF465
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF466
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF467
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF468
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF469
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF470
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF471
	.byte	0xca
	.uleb128 0x2
	.long	.LASF472
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF473
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF474
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF475
	.byte	0xce
	.uleb128 0x2
	.long	.LASF476
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF477
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF478
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF479
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF480
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF481
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF482
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF483
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF484
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF485
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF486
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF487
	.byte	0xda
	.uleb128 0x2
	.long	.LASF488
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF489
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF490
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF491
	.byte	0xde
	.uleb128 0x2
	.long	.LASF492
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF493
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF494
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF495
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF496
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF497
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF498
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF499
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF500
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF501
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF502
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF503
	.byte	0xea
	.uleb128 0x2
	.long	.LASF504
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF505
	.byte	0xec
	.uleb128 0x2
	.long	.LASF506
	.byte	0xed
	.uleb128 0x2
	.long	.LASF507
	.byte	0xee
	.uleb128 0x2
	.long	.LASF508
	.byte	0xef
	.uleb128 0x2
	.long	.LASF509
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF510
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF511
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF512
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF513
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF514
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF515
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF516
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF517
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF518
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF519
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF520
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF521
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF522
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF523
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF524
	.byte	0xff
	.uleb128 0x1
	.long	.LASF525
	.value	0x100
	.uleb128 0x1
	.long	.LASF526
	.value	0x101
	.uleb128 0x1
	.long	.LASF527
	.value	0x102
	.uleb128 0x1
	.long	.LASF528
	.value	0x103
	.uleb128 0x1
	.long	.LASF529
	.value	0x104
	.uleb128 0x1
	.long	.LASF530
	.value	0x105
	.uleb128 0x1
	.long	.LASF531
	.value	0x106
	.uleb128 0x1
	.long	.LASF532
	.value	0x107
	.uleb128 0x1
	.long	.LASF533
	.value	0x108
	.uleb128 0x1
	.long	.LASF534
	.value	0x109
	.uleb128 0x1
	.long	.LASF535
	.value	0x10a
	.uleb128 0x1
	.long	.LASF536
	.value	0x10b
	.uleb128 0x1
	.long	.LASF537
	.value	0x10c
	.uleb128 0x1
	.long	.LASF538
	.value	0x10d
	.uleb128 0x1
	.long	.LASF539
	.value	0x10e
	.uleb128 0x1
	.long	.LASF540
	.value	0x10f
	.uleb128 0x1
	.long	.LASF541
	.value	0x110
	.uleb128 0x1
	.long	.LASF542
	.value	0x111
	.uleb128 0x1
	.long	.LASF543
	.value	0x112
	.uleb128 0x1
	.long	.LASF544
	.value	0x113
	.uleb128 0x1
	.long	.LASF545
	.value	0x114
	.uleb128 0x1
	.long	.LASF546
	.value	0x115
	.uleb128 0x1
	.long	.LASF547
	.value	0x116
	.uleb128 0x1
	.long	.LASF548
	.value	0x117
	.uleb128 0x1
	.long	.LASF549
	.value	0x118
	.uleb128 0x1
	.long	.LASF550
	.value	0x119
	.uleb128 0x1
	.long	.LASF551
	.value	0x11a
	.uleb128 0x1
	.long	.LASF552
	.value	0x11b
	.uleb128 0x1
	.long	.LASF553
	.value	0x11c
	.uleb128 0x1
	.long	.LASF554
	.value	0x11d
	.uleb128 0x1
	.long	.LASF555
	.value	0x11e
	.uleb128 0x1
	.long	.LASF556
	.value	0x11f
	.uleb128 0x1
	.long	.LASF557
	.value	0x120
	.uleb128 0x1
	.long	.LASF558
	.value	0x121
	.uleb128 0x1
	.long	.LASF559
	.value	0x122
	.uleb128 0x1
	.long	.LASF560
	.value	0x123
	.uleb128 0x1
	.long	.LASF561
	.value	0x124
	.uleb128 0x1
	.long	.LASF562
	.value	0x125
	.uleb128 0x1
	.long	.LASF563
	.value	0x126
	.uleb128 0x1
	.long	.LASF564
	.value	0x127
	.uleb128 0x1
	.long	.LASF565
	.value	0x128
	.uleb128 0x1
	.long	.LASF566
	.value	0x129
	.uleb128 0x1
	.long	.LASF567
	.value	0x12a
	.uleb128 0x1
	.long	.LASF568
	.value	0x12b
	.uleb128 0x1
	.long	.LASF569
	.value	0x12c
	.uleb128 0x1
	.long	.LASF570
	.value	0x12d
	.uleb128 0x1
	.long	.LASF571
	.value	0x12e
	.uleb128 0x1
	.long	.LASF572
	.value	0x12f
	.uleb128 0x1
	.long	.LASF573
	.value	0x130
	.uleb128 0x1
	.long	.LASF574
	.value	0x131
	.uleb128 0x1
	.long	.LASF575
	.value	0x132
	.uleb128 0x1
	.long	.LASF576
	.value	0x133
	.uleb128 0x1
	.long	.LASF577
	.value	0x134
	.uleb128 0x1
	.long	.LASF578
	.value	0x135
	.uleb128 0x1
	.long	.LASF579
	.value	0x136
	.uleb128 0x1
	.long	.LASF580
	.value	0x137
	.uleb128 0x1
	.long	.LASF581
	.value	0x138
	.uleb128 0x1
	.long	.LASF582
	.value	0x139
	.uleb128 0x1
	.long	.LASF583
	.value	0x13a
	.uleb128 0x1
	.long	.LASF584
	.value	0x13b
	.uleb128 0x1
	.long	.LASF585
	.value	0x13c
	.uleb128 0x1
	.long	.LASF586
	.value	0x13d
	.uleb128 0x1
	.long	.LASF587
	.value	0x13e
	.uleb128 0x1
	.long	.LASF588
	.value	0x13f
	.uleb128 0x1
	.long	.LASF589
	.value	0x140
	.uleb128 0x1
	.long	.LASF590
	.value	0x141
	.uleb128 0x1
	.long	.LASF591
	.value	0x142
	.uleb128 0x1
	.long	.LASF592
	.value	0x143
	.uleb128 0x1
	.long	.LASF593
	.value	0x144
	.uleb128 0x1
	.long	.LASF594
	.value	0x145
	.uleb128 0x1
	.long	.LASF595
	.value	0x146
	.uleb128 0x1
	.long	.LASF596
	.value	0x147
	.uleb128 0x1
	.long	.LASF597
	.value	0x148
	.uleb128 0x1
	.long	.LASF598
	.value	0x149
	.uleb128 0x1
	.long	.LASF599
	.value	0x14a
	.uleb128 0x1
	.long	.LASF600
	.value	0x14b
	.uleb128 0x1
	.long	.LASF601
	.value	0x14c
	.uleb128 0x1
	.long	.LASF602
	.value	0x14d
	.uleb128 0x1
	.long	.LASF603
	.value	0x14e
	.uleb128 0x1
	.long	.LASF604
	.value	0x14f
	.uleb128 0x1
	.long	.LASF605
	.value	0x150
	.uleb128 0x1
	.long	.LASF606
	.value	0x151
	.uleb128 0x1
	.long	.LASF607
	.value	0x152
	.uleb128 0x1
	.long	.LASF608
	.value	0x153
	.uleb128 0x1
	.long	.LASF609
	.value	0x154
	.uleb128 0x1
	.long	.LASF610
	.value	0x155
	.uleb128 0x1
	.long	.LASF611
	.value	0x156
	.uleb128 0x1
	.long	.LASF612
	.value	0x157
	.uleb128 0x1
	.long	.LASF613
	.value	0x158
	.uleb128 0x1
	.long	.LASF614
	.value	0x159
	.uleb128 0x1
	.long	.LASF615
	.value	0x15a
	.uleb128 0x1
	.long	.LASF616
	.value	0x15b
	.uleb128 0x1
	.long	.LASF617
	.value	0x15c
	.uleb128 0x1
	.long	.LASF618
	.value	0x15d
	.uleb128 0x1
	.long	.LASF619
	.value	0x15e
	.uleb128 0x1
	.long	.LASF620
	.value	0x15f
	.uleb128 0x1
	.long	.LASF621
	.value	0x160
	.uleb128 0x1
	.long	.LASF622
	.value	0x161
	.uleb128 0x1
	.long	.LASF623
	.value	0x162
	.uleb128 0x1
	.long	.LASF624
	.value	0x163
	.uleb128 0x1
	.long	.LASF625
	.value	0x164
	.uleb128 0x1
	.long	.LASF626
	.value	0x165
	.uleb128 0x1
	.long	.LASF627
	.value	0x166
	.uleb128 0x1
	.long	.LASF628
	.value	0x167
	.uleb128 0x1
	.long	.LASF629
	.value	0x168
	.uleb128 0x1
	.long	.LASF630
	.value	0x169
	.uleb128 0x1
	.long	.LASF631
	.value	0x16a
	.uleb128 0x1
	.long	.LASF632
	.value	0x16b
	.uleb128 0x1
	.long	.LASF633
	.value	0x16c
	.uleb128 0x1
	.long	.LASF634
	.value	0x16d
	.uleb128 0x1
	.long	.LASF635
	.value	0x16e
	.uleb128 0x1
	.long	.LASF636
	.value	0x16f
	.uleb128 0x1
	.long	.LASF637
	.value	0x170
	.uleb128 0x1
	.long	.LASF638
	.value	0x171
	.uleb128 0x1
	.long	.LASF639
	.value	0x172
	.uleb128 0x1
	.long	.LASF640
	.value	0x173
	.uleb128 0x1
	.long	.LASF641
	.value	0x174
	.uleb128 0x1
	.long	.LASF642
	.value	0x175
	.uleb128 0x1
	.long	.LASF643
	.value	0x176
	.uleb128 0x1
	.long	.LASF644
	.value	0x177
	.uleb128 0x1
	.long	.LASF645
	.value	0x178
	.uleb128 0x1
	.long	.LASF646
	.value	0x179
	.uleb128 0x1
	.long	.LASF647
	.value	0x17a
	.uleb128 0x1
	.long	.LASF648
	.value	0x17b
	.uleb128 0x1
	.long	.LASF649
	.value	0x17c
	.uleb128 0x1
	.long	.LASF650
	.value	0x17d
	.uleb128 0x1
	.long	.LASF651
	.value	0x17e
	.uleb128 0x1
	.long	.LASF652
	.value	0x17f
	.uleb128 0x1
	.long	.LASF653
	.value	0x180
	.uleb128 0x1
	.long	.LASF654
	.value	0x181
	.uleb128 0x1
	.long	.LASF655
	.value	0x182
	.uleb128 0x1
	.long	.LASF656
	.value	0x183
	.uleb128 0x1
	.long	.LASF657
	.value	0x184
	.uleb128 0x1
	.long	.LASF658
	.value	0x185
	.uleb128 0x1
	.long	.LASF659
	.value	0x186
	.uleb128 0x1
	.long	.LASF660
	.value	0x187
	.uleb128 0x1
	.long	.LASF661
	.value	0x188
	.uleb128 0x1
	.long	.LASF662
	.value	0x189
	.uleb128 0x1
	.long	.LASF663
	.value	0x18a
	.uleb128 0x1
	.long	.LASF664
	.value	0x18b
	.uleb128 0x1
	.long	.LASF665
	.value	0x18c
	.uleb128 0x1
	.long	.LASF666
	.value	0x18d
	.uleb128 0x1
	.long	.LASF667
	.value	0x18e
	.uleb128 0x1
	.long	.LASF668
	.value	0x18f
	.uleb128 0x1
	.long	.LASF669
	.value	0x190
	.uleb128 0x1
	.long	.LASF670
	.value	0x191
	.uleb128 0x1
	.long	.LASF671
	.value	0x192
	.uleb128 0x1
	.long	.LASF672
	.value	0x193
	.uleb128 0x1
	.long	.LASF673
	.value	0x194
	.uleb128 0x1
	.long	.LASF674
	.value	0x195
	.uleb128 0x1
	.long	.LASF675
	.value	0x196
	.uleb128 0x1
	.long	.LASF676
	.value	0x197
	.uleb128 0x1
	.long	.LASF677
	.value	0x198
	.uleb128 0x1
	.long	.LASF678
	.value	0x199
	.uleb128 0x1
	.long	.LASF679
	.value	0x19a
	.uleb128 0x1
	.long	.LASF680
	.value	0x19b
	.uleb128 0x1
	.long	.LASF681
	.value	0x19c
	.uleb128 0x1
	.long	.LASF682
	.value	0x19d
	.uleb128 0x1
	.long	.LASF683
	.value	0x19e
	.uleb128 0x1
	.long	.LASF684
	.value	0x19f
	.uleb128 0x1
	.long	.LASF685
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF686
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF687
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF688
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF689
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF690
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF691
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF692
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF693
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF694
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF695
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF696
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF697
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF698
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF699
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF700
	.value	0x1af
	.uleb128 0x1
	.long	.LASF701
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF702
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF703
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF704
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF705
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF706
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF707
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF708
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF709
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF710
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF711
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF712
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF713
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF714
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF715
	.value	0x1be
	.uleb128 0x1
	.long	.LASF716
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF717
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF718
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF719
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF720
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF721
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF722
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF723
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF724
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF725
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF726
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF727
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF728
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF729
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF730
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF731
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF732
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF733
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF734
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF735
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF736
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF737
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF738
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF739
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF740
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF741
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF742
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF743
	.value	0x1da
	.uleb128 0x1
	.long	.LASF744
	.value	0x1db
	.uleb128 0x1
	.long	.LASF745
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF746
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF747
	.value	0x1de
	.uleb128 0x1
	.long	.LASF748
	.value	0x1df
	.uleb128 0x1
	.long	.LASF749
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF750
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF751
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF752
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF753
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF754
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF755
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF756
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF757
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF758
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF759
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF760
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF761
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF762
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF763
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF764
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF765
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF766
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF767
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF768
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF769
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF770
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF771
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF772
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF773
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF774
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF775
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF776
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF777
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF778
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF779
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF780
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF781
	.value	0x200
	.uleb128 0x1
	.long	.LASF782
	.value	0x201
	.uleb128 0x1
	.long	.LASF783
	.value	0x202
	.uleb128 0x1
	.long	.LASF784
	.value	0x203
	.uleb128 0x1
	.long	.LASF785
	.value	0x204
	.uleb128 0x1
	.long	.LASF786
	.value	0x205
	.uleb128 0x1
	.long	.LASF787
	.value	0x206
	.uleb128 0x1
	.long	.LASF788
	.value	0x207
	.uleb128 0x1
	.long	.LASF789
	.value	0x208
	.uleb128 0x1
	.long	.LASF790
	.value	0x209
	.uleb128 0x1
	.long	.LASF791
	.value	0x20a
	.uleb128 0x1
	.long	.LASF792
	.value	0x20b
	.uleb128 0x1
	.long	.LASF793
	.value	0x20c
	.uleb128 0x1
	.long	.LASF794
	.value	0x20d
	.uleb128 0x1
	.long	.LASF795
	.value	0x20e
	.uleb128 0x1
	.long	.LASF796
	.value	0x20f
	.uleb128 0x1
	.long	.LASF797
	.value	0x210
	.uleb128 0x1
	.long	.LASF798
	.value	0x211
	.uleb128 0x1
	.long	.LASF799
	.value	0x212
	.uleb128 0x1
	.long	.LASF800
	.value	0x213
	.uleb128 0x1
	.long	.LASF801
	.value	0x214
	.uleb128 0x1
	.long	.LASF802
	.value	0x215
	.uleb128 0x1
	.long	.LASF803
	.value	0x216
	.uleb128 0x1
	.long	.LASF804
	.value	0x217
	.uleb128 0x1
	.long	.LASF805
	.value	0x218
	.uleb128 0x1
	.long	.LASF806
	.value	0x219
	.uleb128 0x1
	.long	.LASF807
	.value	0x21a
	.uleb128 0x1
	.long	.LASF808
	.value	0x21b
	.uleb128 0x1
	.long	.LASF809
	.value	0x21c
	.uleb128 0x1
	.long	.LASF810
	.value	0x21d
	.uleb128 0x1
	.long	.LASF811
	.value	0x21e
	.uleb128 0x1
	.long	.LASF812
	.value	0x21f
	.uleb128 0x1
	.long	.LASF813
	.value	0x220
	.uleb128 0x1
	.long	.LASF814
	.value	0x221
	.uleb128 0x1
	.long	.LASF815
	.value	0x222
	.uleb128 0x1
	.long	.LASF816
	.value	0x223
	.uleb128 0x1
	.long	.LASF817
	.value	0x224
	.uleb128 0x1
	.long	.LASF818
	.value	0x225
	.uleb128 0x1
	.long	.LASF819
	.value	0x226
	.uleb128 0x1
	.long	.LASF820
	.value	0x227
	.uleb128 0x1
	.long	.LASF821
	.value	0x228
	.uleb128 0x1
	.long	.LASF822
	.value	0x229
	.uleb128 0x1
	.long	.LASF823
	.value	0x22a
	.uleb128 0x1
	.long	.LASF824
	.value	0x22b
	.uleb128 0x1
	.long	.LASF825
	.value	0x22c
	.uleb128 0x1
	.long	.LASF826
	.value	0x22d
	.uleb128 0x1
	.long	.LASF827
	.value	0x22e
	.uleb128 0x1
	.long	.LASF828
	.value	0x22f
	.uleb128 0x1
	.long	.LASF829
	.value	0x230
	.uleb128 0x1
	.long	.LASF830
	.value	0x231
	.uleb128 0x1
	.long	.LASF831
	.value	0x232
	.uleb128 0x1
	.long	.LASF832
	.value	0x233
	.uleb128 0x1
	.long	.LASF833
	.value	0x234
	.uleb128 0x1
	.long	.LASF834
	.value	0x235
	.uleb128 0x1
	.long	.LASF835
	.value	0x236
	.uleb128 0x1
	.long	.LASF836
	.value	0x237
	.uleb128 0x1
	.long	.LASF837
	.value	0x238
	.uleb128 0x1
	.long	.LASF838
	.value	0x239
	.uleb128 0x1
	.long	.LASF839
	.value	0x23a
	.uleb128 0x1
	.long	.LASF840
	.value	0x23b
	.uleb128 0x1
	.long	.LASF841
	.value	0x23c
	.uleb128 0x1
	.long	.LASF842
	.value	0x23d
	.uleb128 0x1
	.long	.LASF843
	.value	0x23e
	.uleb128 0x1
	.long	.LASF844
	.value	0x23f
	.uleb128 0x1
	.long	.LASF845
	.value	0x240
	.uleb128 0x1
	.long	.LASF846
	.value	0x241
	.uleb128 0x1
	.long	.LASF847
	.value	0x242
	.uleb128 0x1
	.long	.LASF848
	.value	0x243
	.uleb128 0x1
	.long	.LASF849
	.value	0x244
	.uleb128 0x1
	.long	.LASF850
	.value	0x245
	.uleb128 0x1
	.long	.LASF851
	.value	0x246
	.uleb128 0x1
	.long	.LASF852
	.value	0x247
	.uleb128 0x1
	.long	.LASF853
	.value	0x248
	.uleb128 0x1
	.long	.LASF854
	.value	0x249
	.uleb128 0x1
	.long	.LASF855
	.value	0x24a
	.uleb128 0x1
	.long	.LASF856
	.value	0x24b
	.uleb128 0x1
	.long	.LASF857
	.value	0x24c
	.uleb128 0x1
	.long	.LASF858
	.value	0x24d
	.uleb128 0x1
	.long	.LASF859
	.value	0x24e
	.uleb128 0x1
	.long	.LASF860
	.value	0x24f
	.uleb128 0x1
	.long	.LASF861
	.value	0x250
	.uleb128 0x1
	.long	.LASF862
	.value	0x251
	.uleb128 0x1
	.long	.LASF863
	.value	0x252
	.uleb128 0x1
	.long	.LASF864
	.value	0x253
	.uleb128 0x1
	.long	.LASF865
	.value	0x254
	.uleb128 0x1
	.long	.LASF866
	.value	0x255
	.uleb128 0x1
	.long	.LASF867
	.value	0x256
	.uleb128 0x1
	.long	.LASF868
	.value	0x257
	.uleb128 0x1
	.long	.LASF869
	.value	0x258
	.uleb128 0x1
	.long	.LASF870
	.value	0x259
	.uleb128 0x1
	.long	.LASF871
	.value	0x25a
	.uleb128 0x1
	.long	.LASF872
	.value	0x25b
	.uleb128 0x1
	.long	.LASF873
	.value	0x25c
	.uleb128 0x1
	.long	.LASF874
	.value	0x25d
	.uleb128 0x1
	.long	.LASF875
	.value	0x25e
	.uleb128 0x1
	.long	.LASF876
	.value	0x25f
	.uleb128 0x1
	.long	.LASF877
	.value	0x260
	.uleb128 0x1
	.long	.LASF878
	.value	0x261
	.uleb128 0x1
	.long	.LASF879
	.value	0x262
	.uleb128 0x1
	.long	.LASF880
	.value	0x263
	.uleb128 0x1
	.long	.LASF881
	.value	0x264
	.uleb128 0x1
	.long	.LASF882
	.value	0x265
	.uleb128 0x1
	.long	.LASF883
	.value	0x266
	.uleb128 0x1
	.long	.LASF884
	.value	0x267
	.uleb128 0x1
	.long	.LASF885
	.value	0x268
	.uleb128 0x1
	.long	.LASF886
	.value	0x269
	.uleb128 0x1
	.long	.LASF887
	.value	0x26a
	.uleb128 0x1
	.long	.LASF888
	.value	0x26b
	.uleb128 0x1
	.long	.LASF889
	.value	0x26c
	.uleb128 0x1
	.long	.LASF890
	.value	0x26d
	.uleb128 0x1
	.long	.LASF891
	.value	0x26e
	.uleb128 0x1
	.long	.LASF892
	.value	0x26f
	.uleb128 0x1
	.long	.LASF893
	.value	0x270
	.uleb128 0x1
	.long	.LASF894
	.value	0x271
	.uleb128 0x1
	.long	.LASF895
	.value	0x272
	.uleb128 0x1
	.long	.LASF896
	.value	0x273
	.uleb128 0x1
	.long	.LASF897
	.value	0x274
	.uleb128 0x1
	.long	.LASF898
	.value	0x275
	.uleb128 0x1
	.long	.LASF899
	.value	0x276
	.uleb128 0x1
	.long	.LASF900
	.value	0x277
	.uleb128 0x1
	.long	.LASF901
	.value	0x278
	.uleb128 0x1
	.long	.LASF902
	.value	0x279
	.uleb128 0x1
	.long	.LASF903
	.value	0x27a
	.uleb128 0x1
	.long	.LASF904
	.value	0x27b
	.uleb128 0x1
	.long	.LASF905
	.value	0x27c
	.uleb128 0x1
	.long	.LASF906
	.value	0x27d
	.uleb128 0x1
	.long	.LASF907
	.value	0x27e
	.uleb128 0x1
	.long	.LASF908
	.value	0x27f
	.uleb128 0x1
	.long	.LASF909
	.value	0x280
	.uleb128 0x1
	.long	.LASF910
	.value	0x281
	.uleb128 0x1
	.long	.LASF911
	.value	0x282
	.uleb128 0x1
	.long	.LASF912
	.value	0x283
	.uleb128 0x1
	.long	.LASF913
	.value	0x284
	.uleb128 0x1
	.long	.LASF914
	.value	0x285
	.uleb128 0x1
	.long	.LASF915
	.value	0x286
	.uleb128 0x1
	.long	.LASF916
	.value	0x287
	.uleb128 0x1
	.long	.LASF917
	.value	0x288
	.uleb128 0x1
	.long	.LASF918
	.value	0x289
	.uleb128 0x1
	.long	.LASF919
	.value	0x28a
	.uleb128 0x1
	.long	.LASF920
	.value	0x28b
	.uleb128 0x1
	.long	.LASF921
	.value	0x28c
	.uleb128 0x1
	.long	.LASF922
	.value	0x28d
	.uleb128 0x1
	.long	.LASF923
	.value	0x28e
	.uleb128 0x1
	.long	.LASF924
	.value	0x28f
	.uleb128 0x1
	.long	.LASF925
	.value	0x290
	.uleb128 0x1
	.long	.LASF926
	.value	0x291
	.uleb128 0x1
	.long	.LASF927
	.value	0x292
	.uleb128 0x1
	.long	.LASF928
	.value	0x293
	.uleb128 0x1
	.long	.LASF929
	.value	0x294
	.uleb128 0x1
	.long	.LASF930
	.value	0x295
	.uleb128 0x1
	.long	.LASF931
	.value	0x296
	.uleb128 0x1
	.long	.LASF932
	.value	0x297
	.uleb128 0x1
	.long	.LASF933
	.value	0x298
	.uleb128 0x1
	.long	.LASF934
	.value	0x299
	.uleb128 0x1
	.long	.LASF935
	.value	0x29a
	.uleb128 0x1
	.long	.LASF936
	.value	0x29b
	.uleb128 0x1
	.long	.LASF937
	.value	0x29c
	.uleb128 0x1
	.long	.LASF938
	.value	0x29d
	.uleb128 0x1
	.long	.LASF939
	.value	0x29e
	.uleb128 0x1
	.long	.LASF940
	.value	0x29f
	.uleb128 0x1
	.long	.LASF941
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF942
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF943
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF944
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF945
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF946
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF947
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF948
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF949
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF950
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF951
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF952
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF953
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF954
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF955
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF956
	.value	0x2af
	.uleb128 0x1
	.long	.LASF957
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF958
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF959
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF960
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF961
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF962
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF963
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF964
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF965
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF966
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF967
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF968
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF969
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF970
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF971
	.value	0x2be
	.uleb128 0x1
	.long	.LASF972
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF973
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF974
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF975
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF976
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF977
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF978
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF979
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF980
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF981
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF982
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF983
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF984
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF985
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF986
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF987
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF988
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF989
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF990
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF991
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF992
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF993
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF994
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF995
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF996
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF997
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF998
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF999
	.value	0x2da
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1008
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1009
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1010
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1011
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1012
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1013
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1014
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1015
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1016
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1017
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1018
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1019
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1020
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1021
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1022
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1023
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1024
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1025
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1026
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1027
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1028
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1029
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1030
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1031
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1032
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1033
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1034
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1035
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1036
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1037
	.value	0x300
	.uleb128 0x1
	.long	.LASF1038
	.value	0x301
	.uleb128 0x1
	.long	.LASF1039
	.value	0x302
	.uleb128 0x1
	.long	.LASF1040
	.value	0x303
	.uleb128 0x1
	.long	.LASF1041
	.value	0x304
	.uleb128 0x1
	.long	.LASF1042
	.value	0x305
	.uleb128 0x1
	.long	.LASF1043
	.value	0x306
	.uleb128 0x1
	.long	.LASF1044
	.value	0x307
	.uleb128 0x1
	.long	.LASF1045
	.value	0x308
	.uleb128 0x1
	.long	.LASF1046
	.value	0x309
	.uleb128 0x1
	.long	.LASF1047
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1048
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1049
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1050
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1051
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1052
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1053
	.value	0x310
	.uleb128 0x1
	.long	.LASF1054
	.value	0x311
	.uleb128 0x1
	.long	.LASF1055
	.value	0x312
	.uleb128 0x1
	.long	.LASF1056
	.value	0x313
	.uleb128 0x1
	.long	.LASF1057
	.value	0x314
	.uleb128 0x1
	.long	.LASF1058
	.value	0x315
	.uleb128 0x1
	.long	.LASF1059
	.value	0x316
	.uleb128 0x1
	.long	.LASF1060
	.value	0x317
	.uleb128 0x1
	.long	.LASF1061
	.value	0x318
	.uleb128 0x1
	.long	.LASF1062
	.value	0x319
	.uleb128 0x1
	.long	.LASF1063
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1064
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1065
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1066
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1067
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1068
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1069
	.value	0x320
	.uleb128 0x1
	.long	.LASF1070
	.value	0x321
	.uleb128 0x1
	.long	.LASF1071
	.value	0x322
	.uleb128 0x1
	.long	.LASF1072
	.value	0x323
	.uleb128 0x1
	.long	.LASF1073
	.value	0x324
	.uleb128 0x1
	.long	.LASF1074
	.value	0x325
	.uleb128 0x1
	.long	.LASF1075
	.value	0x326
	.uleb128 0x1
	.long	.LASF1076
	.value	0x327
	.uleb128 0x1
	.long	.LASF1077
	.value	0x328
	.uleb128 0x1
	.long	.LASF1078
	.value	0x329
	.uleb128 0x1
	.long	.LASF1079
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1080
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1081
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1082
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1083
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1084
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1085
	.value	0x330
	.uleb128 0x1
	.long	.LASF1086
	.value	0x331
	.uleb128 0x1
	.long	.LASF1087
	.value	0x332
	.uleb128 0x1
	.long	.LASF1088
	.value	0x333
	.uleb128 0x1
	.long	.LASF1089
	.value	0x334
	.uleb128 0x1
	.long	.LASF1090
	.value	0x335
	.uleb128 0x1
	.long	.LASF1091
	.value	0x336
	.uleb128 0x1
	.long	.LASF1092
	.value	0x337
	.uleb128 0x1
	.long	.LASF1093
	.value	0x338
	.uleb128 0x1
	.long	.LASF1094
	.value	0x339
	.uleb128 0x1
	.long	.LASF1095
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1096
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1097
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1098
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1099
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1100
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1101
	.value	0x340
	.uleb128 0x1
	.long	.LASF1102
	.value	0x341
	.uleb128 0x1
	.long	.LASF1103
	.value	0x342
	.uleb128 0x1
	.long	.LASF1104
	.value	0x343
	.uleb128 0x1
	.long	.LASF1105
	.value	0x344
	.uleb128 0x1
	.long	.LASF1106
	.value	0x345
	.uleb128 0x1
	.long	.LASF1107
	.value	0x346
	.uleb128 0x1
	.long	.LASF1108
	.value	0x347
	.uleb128 0x1
	.long	.LASF1109
	.value	0x348
	.uleb128 0x1
	.long	.LASF1110
	.value	0x349
	.uleb128 0x1
	.long	.LASF1111
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1112
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1113
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1114
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1115
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1116
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1117
	.value	0x350
	.uleb128 0x1
	.long	.LASF1118
	.value	0x351
	.uleb128 0x1
	.long	.LASF1119
	.value	0x352
	.uleb128 0x1
	.long	.LASF1120
	.value	0x353
	.uleb128 0x1
	.long	.LASF1121
	.value	0x354
	.uleb128 0x1
	.long	.LASF1122
	.value	0x355
	.uleb128 0x1
	.long	.LASF1123
	.value	0x356
	.uleb128 0x1
	.long	.LASF1124
	.value	0x357
	.uleb128 0x1
	.long	.LASF1125
	.value	0x358
	.uleb128 0x1
	.long	.LASF1126
	.value	0x359
	.uleb128 0x1
	.long	.LASF1127
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1128
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1129
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1130
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1131
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1132
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1133
	.value	0x360
	.uleb128 0x1
	.long	.LASF1134
	.value	0x361
	.uleb128 0x1
	.long	.LASF1135
	.value	0x362
	.uleb128 0x1
	.long	.LASF1136
	.value	0x363
	.uleb128 0x1
	.long	.LASF1137
	.value	0x364
	.uleb128 0x1
	.long	.LASF1138
	.value	0x365
	.uleb128 0x1
	.long	.LASF1139
	.value	0x366
	.uleb128 0x1
	.long	.LASF1140
	.value	0x367
	.uleb128 0x1
	.long	.LASF1141
	.value	0x368
	.uleb128 0x1
	.long	.LASF1142
	.value	0x369
	.uleb128 0x1
	.long	.LASF1143
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1144
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1145
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1146
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1147
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1148
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1149
	.value	0x370
	.uleb128 0x1
	.long	.LASF1150
	.value	0x371
	.uleb128 0x1
	.long	.LASF1151
	.value	0x372
	.uleb128 0x1
	.long	.LASF1152
	.value	0x373
	.uleb128 0x1
	.long	.LASF1153
	.value	0x374
	.uleb128 0x1
	.long	.LASF1154
	.value	0x375
	.uleb128 0x1
	.long	.LASF1155
	.value	0x376
	.uleb128 0x1
	.long	.LASF1156
	.value	0x377
	.uleb128 0x1
	.long	.LASF1157
	.value	0x378
	.uleb128 0x1
	.long	.LASF1158
	.value	0x379
	.uleb128 0x1
	.long	.LASF1159
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1160
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1161
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1162
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1163
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1164
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1165
	.value	0x380
	.uleb128 0x1
	.long	.LASF1166
	.value	0x381
	.uleb128 0x1
	.long	.LASF1167
	.value	0x382
	.uleb128 0x1
	.long	.LASF1168
	.value	0x383
	.uleb128 0x1
	.long	.LASF1169
	.value	0x384
	.uleb128 0x1
	.long	.LASF1170
	.value	0x385
	.uleb128 0x1
	.long	.LASF1171
	.value	0x386
	.uleb128 0x1
	.long	.LASF1172
	.value	0x387
	.uleb128 0x1
	.long	.LASF1173
	.value	0x388
	.uleb128 0x1
	.long	.LASF1174
	.value	0x389
	.uleb128 0x1
	.long	.LASF1175
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1176
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1177
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1178
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1179
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1180
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1181
	.value	0x390
	.uleb128 0x1
	.long	.LASF1182
	.value	0x391
	.uleb128 0x1
	.long	.LASF1183
	.value	0x392
	.uleb128 0x1
	.long	.LASF1184
	.value	0x393
	.uleb128 0x1
	.long	.LASF1185
	.value	0x394
	.uleb128 0x1
	.long	.LASF1186
	.value	0x395
	.uleb128 0x1
	.long	.LASF1187
	.value	0x396
	.uleb128 0x1
	.long	.LASF1188
	.value	0x397
	.uleb128 0x1
	.long	.LASF1189
	.value	0x398
	.uleb128 0x1
	.long	.LASF1190
	.value	0x399
	.uleb128 0x1
	.long	.LASF1191
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1192
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1193
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1194
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1195
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1196
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1197
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1198
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1199
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1200
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1201
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1202
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1203
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1204
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1205
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1206
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1207
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1208
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1209
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1210
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1211
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1212
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1213
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1214
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1215
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1216
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1217
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1218
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1219
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1220
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1221
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1222
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1223
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1224
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1225
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1226
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1227
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1228
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1229
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1230
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1231
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1232
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1233
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1234
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1235
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1236
	.value	0x3c7
	.byte	0
	.uleb128 0x16
	.long	.LASF1237
	.byte	0xc
	.value	0x478
	.long	0x9d1
	.uleb128 0x21
	.byte	0x38
	.byte	0xc
	.value	0x47b
	.long	0x23ce
	.uleb128 0x6
	.long	.LASF1238
	.byte	0xc
	.value	0x47d
	.byte	0xf
	.long	0x9c5
	.byte	0
	.uleb128 0x6
	.long	.LASF1239
	.byte	0xc
	.value	0x47e
	.byte	0xa
	.long	0xa8
	.byte	0x8
	.uleb128 0x6
	.long	.LASF1240
	.byte	0xc
	.value	0x47f
	.byte	0xa
	.long	0xa8
	.byte	0x10
	.uleb128 0x6
	.long	.LASF1241
	.byte	0xc
	.value	0x481
	.byte	0xf
	.long	0x618
	.byte	0x18
	.uleb128 0x6
	.long	.LASF1242
	.byte	0xc
	.value	0x482
	.byte	0x10
	.long	0x2356
	.byte	0x20
	.uleb128 0x6
	.long	.LASF1243
	.byte	0xc
	.value	0x483
	.byte	0xa
	.long	0xa8
	.byte	0x28
	.uleb128 0x6
	.long	.LASF1244
	.byte	0xc
	.value	0x483
	.byte	0x11
	.long	0xa8
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF1245
	.byte	0xc
	.value	0x484
	.long	0x2362
	.uleb128 0x32
	.byte	0x7
	.byte	0x4
	.long	0x77
	.byte	0xc
	.value	0x48b
	.byte	0xe
	.long	0x2726
	.uleb128 0x2
	.long	.LASF1246
	.byte	0
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1256
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1257
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1258
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1259
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1260
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1261
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1374
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1375
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1376
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1377
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1379
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1380
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1381
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1382
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1383
	.byte	0x89
	.byte	0
	.uleb128 0x16
	.long	.LASF1384
	.byte	0xc
	.value	0x517
	.long	0x23da
	.uleb128 0x21
	.byte	0x5c
	.byte	0xc
	.value	0x519
	.long	0x287e
	.uleb128 0x6
	.long	.LASF1385
	.byte	0xc
	.value	0x51b
	.byte	0x9
	.long	0xa1
	.byte	0
	.uleb128 0x6
	.long	.LASF1386
	.byte	0xc
	.value	0x51c
	.byte	0x9
	.long	0xa1
	.byte	0x4
	.uleb128 0x6
	.long	.LASF1387
	.byte	0xc
	.value	0x51d
	.byte	0x9
	.long	0xa1
	.byte	0x8
	.uleb128 0x6
	.long	.LASF1388
	.byte	0xc
	.value	0x51e
	.byte	0x9
	.long	0xa1
	.byte	0xc
	.uleb128 0x6
	.long	.LASF1389
	.byte	0xc
	.value	0x51f
	.byte	0x9
	.long	0xa1
	.byte	0x10
	.uleb128 0x6
	.long	.LASF1390
	.byte	0xc
	.value	0x520
	.byte	0x9
	.long	0xa1
	.byte	0x14
	.uleb128 0x6
	.long	.LASF1391
	.byte	0xc
	.value	0x521
	.byte	0x9
	.long	0xa1
	.byte	0x18
	.uleb128 0x6
	.long	.LASF1392
	.byte	0xc
	.value	0x522
	.byte	0x9
	.long	0xa1
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF1393
	.byte	0xc
	.value	0x523
	.byte	0x9
	.long	0xa1
	.byte	0x20
	.uleb128 0x6
	.long	.LASF1394
	.byte	0xc
	.value	0x524
	.byte	0x9
	.long	0xa1
	.byte	0x24
	.uleb128 0x6
	.long	.LASF1395
	.byte	0xc
	.value	0x525
	.byte	0x9
	.long	0xa1
	.byte	0x28
	.uleb128 0x6
	.long	.LASF1396
	.byte	0xc
	.value	0x526
	.byte	0x9
	.long	0xa1
	.byte	0x2c
	.uleb128 0x6
	.long	.LASF1397
	.byte	0xc
	.value	0x527
	.byte	0x9
	.long	0xa1
	.byte	0x30
	.uleb128 0x6
	.long	.LASF1398
	.byte	0xc
	.value	0x528
	.byte	0x9
	.long	0xa1
	.byte	0x34
	.uleb128 0x6
	.long	.LASF1399
	.byte	0xc
	.value	0x529
	.byte	0x9
	.long	0xa1
	.byte	0x38
	.uleb128 0x6
	.long	.LASF1400
	.byte	0xc
	.value	0x52a
	.byte	0x9
	.long	0xa1
	.byte	0x3c
	.uleb128 0x6
	.long	.LASF1401
	.byte	0xc
	.value	0x52b
	.byte	0x9
	.long	0xa1
	.byte	0x40
	.uleb128 0x6
	.long	.LASF1402
	.byte	0xc
	.value	0x52c
	.byte	0x9
	.long	0xa1
	.byte	0x44
	.uleb128 0x6
	.long	.LASF1403
	.byte	0xc
	.value	0x52d
	.byte	0x9
	.long	0xa1
	.byte	0x48
	.uleb128 0x6
	.long	.LASF1404
	.byte	0xc
	.value	0x52e
	.byte	0x9
	.long	0xa1
	.byte	0x4c
	.uleb128 0x6
	.long	.LASF1405
	.byte	0xc
	.value	0x52f
	.byte	0x9
	.long	0xa1
	.byte	0x50
	.uleb128 0x6
	.long	.LASF1406
	.byte	0xc
	.value	0x530
	.byte	0x9
	.long	0xa1
	.byte	0x54
	.uleb128 0x6
	.long	.LASF1407
	.byte	0xc
	.value	0x531
	.byte	0x9
	.long	0xa1
	.byte	0x58
	.byte	0
	.uleb128 0x16
	.long	.LASF1408
	.byte	0xc
	.value	0x533
	.long	0x2732
	.uleb128 0xe
	.long	0x77
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.long	0x28a9
	.uleb128 0x2
	.long	.LASF1409
	.byte	0
	.uleb128 0x2
	.long	.LASF1410
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1411
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.byte	0x18
	.byte	0xd
	.byte	0x44
	.long	0x28e4
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xd
	.byte	0x46
	.byte	0xe
	.long	0x28e4
	.byte	0
	.uleb128 0x3
	.long	.LASF1240
	.byte	0xd
	.byte	0x47
	.byte	0xa
	.long	0xa1
	.byte	0x8
	.uleb128 0xc
	.string	"sx"
	.byte	0xd
	.byte	0x48
	.byte	0xd
	.long	0x573
	.byte	0xc
	.uleb128 0xc
	.string	"sy"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x573
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	0x23ce
	.uleb128 0x7
	.long	.LASF1413
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x28a9
	.uleb128 0x18
	.long	.LASF1414
	.byte	0xe0
	.byte	0xe
	.byte	0xcf
	.byte	0x10
	.long	0x2acd
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xe
	.byte	0xd2
	.byte	0x10
	.long	0x66a
	.byte	0
	.uleb128 0xc
	.string	"x"
	.byte	0xe
	.byte	0xd5
	.byte	0xe
	.long	0x573
	.byte	0x18
	.uleb128 0xc
	.string	"y"
	.byte	0xe
	.byte	0xd6
	.byte	0xe
	.long	0x573
	.byte	0x1c
	.uleb128 0xc
	.string	"z"
	.byte	0xe
	.byte	0xd7
	.byte	0xe
	.long	0x573
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xe
	.byte	0xda
	.byte	0x14
	.long	0x2acd
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xe
	.byte	0xdb
	.byte	0x14
	.long	0x2acd
	.byte	0x30
	.uleb128 0x3
	.long	.LASF108
	.byte	0xe
	.byte	0xde
	.byte	0xe
	.long	0x58d
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1238
	.byte	0xe
	.byte	0xdf
	.byte	0x12
	.long	0x9c5
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1239
	.byte	0xe
	.byte	0xe0
	.byte	0xb
	.long	0xa1
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xe
	.byte	0xe4
	.byte	0x14
	.long	0x2acd
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xe
	.byte	0xe5
	.byte	0x14
	.long	0x2acd
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xe
	.byte	0xe7
	.byte	0x19
	.long	0x2b07
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xe
	.byte	0xea
	.byte	0xe
	.long	0x573
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xe
	.byte	0xeb
	.byte	0xe
	.long	0x573
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xe
	.byte	0xee
	.byte	0xe
	.long	0x573
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xe
	.byte	0xef
	.byte	0xe
	.long	0x573
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xe
	.byte	0xf2
	.byte	0xe
	.long	0x573
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xe
	.byte	0xf3
	.byte	0xe
	.long	0x573
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xe
	.byte	0xf4
	.byte	0xe
	.long	0x573
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xe
	.byte	0xf7
	.byte	0xb
	.long	0xa1
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF109
	.byte	0xe
	.byte	0xf9
	.byte	0x11
	.long	0x2726
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xe
	.byte	0xfa
	.byte	0x12
	.long	0x2b0c
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1240
	.byte	0xe
	.byte	0xfc
	.byte	0xb
	.long	0xa1
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xe
	.byte	0xfd
	.byte	0xf
	.long	0x28e4
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xe
	.byte	0xfe
	.byte	0xb
	.long	0xa1
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xe
	.byte	0xff
	.byte	0xb
	.long	0xa1
	.byte	0xa4
	.uleb128 0x6
	.long	.LASF1429
	.byte	0xe
	.value	0x102
	.byte	0xb
	.long	0xa1
	.byte	0xa8
	.uleb128 0x6
	.long	.LASF1430
	.byte	0xe
	.value	0x103
	.byte	0xb
	.long	0xa1
	.byte	0xac
	.uleb128 0x6
	.long	.LASF1431
	.byte	0xe
	.value	0x107
	.byte	0x14
	.long	0x2acd
	.byte	0xb0
	.uleb128 0x6
	.long	.LASF1390
	.byte	0xe
	.value	0x10b
	.byte	0xb
	.long	0xa1
	.byte	0xb8
	.uleb128 0x6
	.long	.LASF1432
	.byte	0xe
	.value	0x10f
	.byte	0xb
	.long	0xa1
	.byte	0xbc
	.uleb128 0x6
	.long	.LASF1433
	.byte	0xe
	.value	0x113
	.byte	0x16
	.long	0x2ce6
	.byte	0xc0
	.uleb128 0x6
	.long	.LASF1434
	.byte	0xe
	.value	0x116
	.byte	0xb
	.long	0xa1
	.byte	0xc8
	.uleb128 0x6
	.long	.LASF1435
	.byte	0xe
	.value	0x119
	.byte	0x11
	.long	0x567
	.byte	0xcc
	.uleb128 0x6
	.long	.LASF1436
	.byte	0xe
	.value	0x11c
	.byte	0x14
	.long	0x2acd
	.byte	0xd8
	.byte	0
	.uleb128 0x9
	.long	0x28f5
	.uleb128 0x18
	.long	.LASF1437
	.byte	0x10
	.byte	0xf
	.byte	0xe3
	.byte	0x10
	.long	0x2b07
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xf
	.byte	0xe5
	.byte	0xf
	.long	0x33c0
	.byte	0
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xf
	.byte	0xe6
	.byte	0xb
	.long	0x9a
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xf
	.byte	0xe7
	.byte	0xb
	.long	0x9a
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.long	0x2ad2
	.uleb128 0x9
	.long	0x287e
	.uleb128 0x33
	.long	.LASF1441
	.value	0x140
	.byte	0x10
	.byte	0x53
	.byte	0x10
	.long	0x2ce6
	.uleb128 0xc
	.string	"mo"
	.byte	0x10
	.byte	0x55
	.byte	0xe
	.long	0x2d85
	.byte	0
	.uleb128 0x3
	.long	.LASF1442
	.byte	0x10
	.byte	0x56
	.byte	0x13
	.long	0x2d79
	.byte	0x8
	.uleb128 0xc
	.string	"cmd"
	.byte	0x10
	.byte	0x57
	.byte	0xf
	.long	0x2d4e
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1443
	.byte	0x10
	.byte	0x5c
	.byte	0xe
	.long	0x573
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1444
	.byte	0x10
	.byte	0x5e
	.byte	0xe
	.long	0x573
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1445
	.byte	0x10
	.byte	0x60
	.byte	0x16
	.long	0x573
	.byte	0x1c
	.uleb128 0xc
	.string	"bob"
	.byte	0x10
	.byte	0x62
	.byte	0x16
	.long	0x573
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1428
	.byte	0x10
	.byte	0x66
	.byte	0xb
	.long	0xa1
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1446
	.byte	0x10
	.byte	0x67
	.byte	0xb
	.long	0xa1
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1447
	.byte	0x10
	.byte	0x69
	.byte	0xb
	.long	0xa1
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1448
	.byte	0x10
	.byte	0x6c
	.byte	0xb
	.long	0x2d8a
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1449
	.byte	0x10
	.byte	0x6d
	.byte	0xe
	.long	0x2d9a
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1450
	.byte	0x10
	.byte	0x6e
	.byte	0xe
	.long	0x4f9
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1451
	.byte	0x10
	.byte	0x71
	.byte	0xb
	.long	0x2daa
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1452
	.byte	0x10
	.byte	0x72
	.byte	0x12
	.long	0x46c
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1453
	.byte	0x10
	.byte	0x75
	.byte	0x12
	.long	0x46c
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1454
	.byte	0x10
	.byte	0x77
	.byte	0xe
	.long	0x2dba
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1455
	.byte	0x10
	.byte	0x78
	.byte	0xb
	.long	0x2daa
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1456
	.byte	0x10
	.byte	0x79
	.byte	0xb
	.long	0x2daa
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1457
	.byte	0x10
	.byte	0x7c
	.byte	0xb
	.long	0xa1
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1458
	.byte	0x10
	.byte	0x7d
	.byte	0xb
	.long	0xa1
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1459
	.byte	0x10
	.byte	0x81
	.byte	0xb
	.long	0xa1
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1460
	.byte	0x10
	.byte	0x84
	.byte	0xb
	.long	0xa1
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1461
	.byte	0x10
	.byte	0x87
	.byte	0xb
	.long	0xa1
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1462
	.byte	0x10
	.byte	0x88
	.byte	0xb
	.long	0xa1
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1463
	.byte	0x10
	.byte	0x89
	.byte	0xb
	.long	0xa1
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1464
	.byte	0x10
	.byte	0x8c
	.byte	0xc
	.long	0xe3
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1465
	.byte	0x10
	.byte	0x8f
	.byte	0xb
	.long	0xa1
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1466
	.byte	0x10
	.byte	0x90
	.byte	0xb
	.long	0xa1
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1467
	.byte	0x10
	.byte	0x93
	.byte	0xe
	.long	0x2d85
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1468
	.byte	0x10
	.byte	0x96
	.byte	0xb
	.long	0xa1
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1469
	.byte	0x10
	.byte	0x9a
	.byte	0xb
	.long	0xa1
	.byte	0xfc
	.uleb128 0x22
	.long	.LASF1470
	.byte	0x9e
	.byte	0xb
	.long	0xa1
	.value	0x100
	.uleb128 0x22
	.long	.LASF1471
	.byte	0xa1
	.byte	0xf
	.long	0x2dca
	.value	0x108
	.uleb128 0x22
	.long	.LASF1472
	.byte	0xa4
	.byte	0xe
	.long	0x4f9
	.value	0x138
	.byte	0
	.uleb128 0x9
	.long	0x2b11
	.uleb128 0x16
	.long	.LASF1473
	.byte	0xe
	.value	0x11e
	.long	0x28f5
	.uleb128 0x15
	.byte	0x8
	.byte	0x11
	.byte	0x24
	.long	0x2d4e
	.uleb128 0x3
	.long	.LASF1474
	.byte	0x11
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1475
	.byte	0x11
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1476
	.byte	0x11
	.byte	0x28
	.byte	0xb
	.long	0x9a
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1477
	.byte	0x11
	.byte	0x29
	.byte	0xb
	.long	0x9a
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1478
	.byte	0x11
	.byte	0x2a
	.byte	0xa
	.long	0x505
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1479
	.byte	0x11
	.byte	0x2b
	.byte	0xa
	.long	0x505
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF1480
	.byte	0x11
	.byte	0x2c
	.byte	0x3
	.long	0x2cf7
	.uleb128 0xe
	.long	0x77
	.byte	0x10
	.byte	0x36
	.byte	0x1
	.long	0x2d79
	.uleb128 0x2
	.long	.LASF1481
	.byte	0
	.uleb128 0x2
	.long	.LASF1482
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1483
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF1484
	.byte	0x10
	.byte	0x3e
	.byte	0x3
	.long	0x2d5a
	.uleb128 0x9
	.long	0x2ceb
	.uleb128 0xd
	.long	0xa1
	.long	0x2d9a
	.uleb128 0xb
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x4f9
	.long	0x2daa
	.uleb128 0xb
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0xa1
	.long	0x2dba
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	0x4f9
	.long	0x2dca
	.uleb128 0xb
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x28e9
	.long	0x2dda
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1485
	.byte	0x10
	.byte	0xa6
	.byte	0x3
	.long	0x2b11
	.uleb128 0x5
	.long	.LASF1487
	.byte	0x13
	.byte	0x31
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1488
	.byte	0x13
	.byte	0x32
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1489
	.byte	0x13
	.byte	0x33
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1490
	.byte	0x13
	.byte	0x35
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1491
	.byte	0x13
	.byte	0x3c
	.byte	0x13
	.long	0x341
	.uleb128 0x5
	.long	.LASF1492
	.byte	0x13
	.byte	0x40
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1493
	.byte	0x13
	.byte	0x45
	.byte	0x16
	.long	0x372
	.uleb128 0x5
	.long	.LASF1494
	.byte	0x13
	.byte	0x4d
	.byte	0x12
	.long	0x3da
	.uleb128 0x5
	.long	.LASF1495
	.byte	0x13
	.byte	0x4e
	.byte	0x19
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1496
	.byte	0x13
	.byte	0x4f
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1497
	.byte	0x13
	.byte	0x51
	.byte	0x12
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1498
	.byte	0x13
	.byte	0x5c
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1499
	.byte	0x13
	.byte	0x60
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1500
	.byte	0x13
	.byte	0x6d
	.byte	0xc
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1501
	.byte	0x13
	.byte	0x6e
	.byte	0xc
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1502
	.byte	0x13
	.byte	0x84
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1503
	.byte	0x13
	.byte	0x85
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1504
	.byte	0x13
	.byte	0x86
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1505
	.byte	0x13
	.byte	0x89
	.byte	0x12
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1506
	.byte	0x13
	.byte	0x8b
	.byte	0x12
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1507
	.byte	0x13
	.byte	0x8e
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1508
	.byte	0x13
	.byte	0x8f
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1444
	.byte	0x13
	.byte	0x90
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1509
	.byte	0x13
	.byte	0x92
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1510
	.byte	0x13
	.byte	0x9e
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1511
	.byte	0x13
	.byte	0x9f
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1512
	.byte	0x13
	.byte	0xb4
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1513
	.byte	0x13
	.byte	0xb8
	.byte	0x11
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1514
	.byte	0x13
	.byte	0xbb
	.byte	0x12
	.long	0x4f9
	.uleb128 0x5
	.long	.LASF1515
	.byte	0x13
	.byte	0xc1
	.byte	0x19
	.long	0x3a3
	.uleb128 0x5
	.long	.LASF1516
	.byte	0x13
	.byte	0xd0
	.byte	0xd
	.long	0xa1
	.uleb128 0xd
	.long	0x2dda
	.long	0x2f6a
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF1517
	.byte	0x13
	.byte	0xd4
	.byte	0x11
	.long	0x2f5a
	.uleb128 0xd
	.long	0x4a
	.long	0x2f87
	.uleb128 0x34
	.long	0x43
	.value	0x3ff
	.byte	0
	.uleb128 0x5
	.long	.LASF1518
	.byte	0x13
	.byte	0xf4
	.byte	0xe
	.long	0x2f76
	.uleb128 0x5
	.long	.LASF1519
	.byte	0x13
	.byte	0xf5
	.byte	0x10
	.long	0x2da
	.uleb128 0x5
	.long	.LASF1520
	.byte	0x13
	.byte	0xfd
	.byte	0x19
	.long	0x3a3
	.uleb128 0x17
	.long	.LASF1521
	.byte	0x13
	.value	0x102
	.byte	0x19
	.long	0x4f9
	.uleb128 0x17
	.long	.LASF1522
	.byte	0x13
	.value	0x11b
	.byte	0xd
	.long	0xa1
	.uleb128 0xd
	.long	0xa1
	.long	0x2fd5
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	0x2d4e
	.long	0x2feb
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.uleb128 0xb
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.long	.LASF1523
	.byte	0x13
	.value	0x11e
	.byte	0x19
	.long	0x2fd5
	.uleb128 0xe
	.long	0x77
	.byte	0x14
	.byte	0x64
	.byte	0x1
	.long	0x31a3
	.uleb128 0x2
	.long	.LASF1524
	.byte	0
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1529
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1530
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1533
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1534
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1535
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1536
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1537
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1538
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1539
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1580
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1581
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1582
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1583
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1584
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1587
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1588
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1589
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1590
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1591
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1592
	.byte	0x44
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0xf
	.byte	0x47
	.long	0x31c2
	.uleb128 0xc
	.string	"x"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0x573
	.byte	0
	.uleb128 0xc
	.string	"y"
	.byte	0xf
	.byte	0x4a
	.byte	0xd
	.long	0x573
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF1593
	.byte	0xf
	.byte	0x4c
	.byte	0x3
	.long	0x31a3
	.uleb128 0x15
	.byte	0x28
	.byte	0xf
	.byte	0x58
	.long	0x3205
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xf
	.byte	0x5a
	.byte	0x10
	.long	0x66a
	.byte	0
	.uleb128 0xc
	.string	"x"
	.byte	0xf
	.byte	0x5b
	.byte	0xe
	.long	0x573
	.byte	0x18
	.uleb128 0xc
	.string	"y"
	.byte	0xf
	.byte	0x5c
	.byte	0xe
	.long	0x573
	.byte	0x1c
	.uleb128 0xc
	.string	"z"
	.byte	0xf
	.byte	0x5d
	.byte	0xe
	.long	0x573
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1594
	.byte	0xf
	.byte	0x5f
	.byte	0x3
	.long	0x31ce
	.uleb128 0x15
	.byte	0x80
	.byte	0xf
	.byte	0x65
	.long	0x32ea
	.uleb128 0x3
	.long	.LASF1595
	.byte	0xf
	.byte	0x67
	.byte	0xd
	.long	0x573
	.byte	0
	.uleb128 0x3
	.long	.LASF1596
	.byte	0xf
	.byte	0x68
	.byte	0xd
	.long	0x573
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1597
	.byte	0xf
	.byte	0x69
	.byte	0xb
	.long	0x9a
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1598
	.byte	0xf
	.byte	0x6a
	.byte	0xb
	.long	0x9a
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1599
	.byte	0xf
	.byte	0x6b
	.byte	0xb
	.long	0x9a
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1600
	.byte	0xf
	.byte	0x6c
	.byte	0xb
	.long	0x9a
	.byte	0xe
	.uleb128 0xc
	.string	"tag"
	.byte	0xf
	.byte	0x6d
	.byte	0xb
	.long	0x9a
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1601
	.byte	0xf
	.byte	0x70
	.byte	0xa
	.long	0xa1
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1602
	.byte	0xf
	.byte	0x73
	.byte	0xd
	.long	0x2d85
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1603
	.byte	0xf
	.byte	0x76
	.byte	0xa
	.long	0x2daa
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1604
	.byte	0xf
	.byte	0x79
	.byte	0x11
	.long	0x3205
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xf
	.byte	0x7c
	.byte	0xa
	.long	0xa1
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1605
	.byte	0xf
	.byte	0x7f
	.byte	0xd
	.long	0x2d85
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1606
	.byte	0xf
	.byte	0x82
	.byte	0xb
	.long	0x7e
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1607
	.byte	0xf
	.byte	0x84
	.byte	0xb
	.long	0xa1
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1608
	.byte	0xf
	.byte	0x85
	.byte	0x15
	.long	0x33aa
	.byte	0x78
	.byte	0
	.uleb128 0x18
	.long	.LASF1609
	.byte	0x58
	.byte	0xf
	.byte	0xb3
	.byte	0x10
	.long	0x33aa
	.uleb128 0xc
	.string	"v1"
	.byte	0xf
	.byte	0xb6
	.byte	0xf
	.long	0x33f6
	.byte	0
	.uleb128 0xc
	.string	"v2"
	.byte	0xf
	.byte	0xb7
	.byte	0xf
	.long	0x33f6
	.byte	0x8
	.uleb128 0xc
	.string	"dx"
	.byte	0xf
	.byte	0xba
	.byte	0xd
	.long	0x573
	.byte	0x10
	.uleb128 0xc
	.string	"dy"
	.byte	0xf
	.byte	0xbb
	.byte	0xd
	.long	0x573
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xf
	.byte	0xbe
	.byte	0xb
	.long	0x9a
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1600
	.byte	0xf
	.byte	0xbf
	.byte	0xb
	.long	0x9a
	.byte	0x1a
	.uleb128 0xc
	.string	"tag"
	.byte	0xf
	.byte	0xc0
	.byte	0xb
	.long	0x9a
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1610
	.byte	0xf
	.byte	0xc4
	.byte	0xb
	.long	0x511
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1611
	.byte	0xf
	.byte	0xc8
	.byte	0xd
	.long	0x33fb
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1612
	.byte	0xf
	.byte	0xcb
	.byte	0x11
	.long	0x33ea
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1613
	.byte	0xf
	.byte	0xcf
	.byte	0xf
	.long	0x33c0
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1614
	.byte	0xf
	.byte	0xd0
	.byte	0xf
	.long	0x33c0
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xf
	.byte	0xd3
	.byte	0xa
	.long	0xa1
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1606
	.byte	0xf
	.byte	0xd6
	.byte	0xb
	.long	0x7e
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.long	0x33af
	.uleb128 0x9
	.long	0x32ea
	.uleb128 0x7
	.long	.LASF1615
	.byte	0xf
	.byte	0x87
	.byte	0x3
	.long	0x3211
	.uleb128 0x9
	.long	0x33b4
	.uleb128 0xe
	.long	0x77
	.byte	0xf
	.byte	0xa9
	.byte	0x1
	.long	0x33ea
	.uleb128 0x2
	.long	.LASF1616
	.byte	0
	.uleb128 0x2
	.long	.LASF1617
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1618
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1619
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1620
	.byte	0xf
	.byte	0xaf
	.byte	0x3
	.long	0x33c5
	.uleb128 0x9
	.long	0x31c2
	.uleb128 0xd
	.long	0x573
	.long	0x340b
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.byte	0x28
	.byte	0xf
	.value	0x164
	.long	0x345b
	.uleb128 0x6
	.long	.LASF1621
	.byte	0xf
	.value	0x166
	.byte	0xc
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF1402
	.byte	0xf
	.value	0x167
	.byte	0xc
	.long	0x9a
	.byte	0x2
	.uleb128 0x6
	.long	.LASF1622
	.byte	0xf
	.value	0x168
	.byte	0xc
	.long	0x9a
	.byte	0x4
	.uleb128 0x6
	.long	.LASF1623
	.byte	0xf
	.value	0x169
	.byte	0xc
	.long	0x9a
	.byte	0x6
	.uleb128 0x6
	.long	.LASF1624
	.byte	0xf
	.value	0x16a
	.byte	0xb
	.long	0x2fc5
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	.LASF1625
	.byte	0xf
	.value	0x16c
	.long	0x340b
	.uleb128 0x9
	.long	0x2dda
	.uleb128 0x9
	.long	0x505
	.uleb128 0xe
	.long	0x77
	.byte	0x15
	.byte	0x24
	.byte	0x1
	.long	0x3496
	.uleb128 0x2
	.long	.LASF1626
	.byte	0
	.uleb128 0x2
	.long	.LASF1627
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1628
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1629
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1630
	.byte	0x15
	.byte	0x29
	.byte	0x3
	.long	0x3471
	.uleb128 0x15
	.byte	0x10
	.byte	0x15
	.byte	0x2c
	.long	0x34df
	.uleb128 0x3
	.long	.LASF109
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x3496
	.byte	0
	.uleb128 0x3
	.long	.LASF1631
	.byte	0x15
	.byte	0x2f
	.byte	0xa
	.long	0xa1
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1632
	.byte	0x15
	.byte	0x30
	.byte	0xa
	.long	0xa1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1633
	.byte	0x15
	.byte	0x31
	.byte	0xa
	.long	0xa1
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF1634
	.byte	0x15
	.byte	0x32
	.byte	0x3
	.long	0x34a2
	.uleb128 0xe
	.long	0x77
	.byte	0x15
	.byte	0x36
	.byte	0x1
	.long	0x3534
	.uleb128 0x2
	.long	.LASF1635
	.byte	0
	.uleb128 0x2
	.long	.LASF1636
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1637
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1638
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1639
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1640
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1641
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1642
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1643
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1644
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.long	.LASF1645
	.byte	0x15
	.byte	0x41
	.byte	0x3
	.long	0x34eb
	.uleb128 0xd
	.long	0x34df
	.long	0x3550
	.uleb128 0xb
	.long	0x43
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.long	.LASF1646
	.byte	0x15
	.byte	0x6e
	.byte	0x12
	.long	0x3540
	.uleb128 0x5
	.long	.LASF1647
	.byte	0x15
	.byte	0x6f
	.byte	0x19
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1648
	.byte	0x15
	.byte	0x70
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1649
	.byte	0x15
	.byte	0x72
	.byte	0x19
	.long	0x3534
	.uleb128 0xe
	.long	0x77
	.byte	0x16
	.byte	0x1f
	.byte	0x1
	.long	0x359f
	.uleb128 0x2
	.long	.LASF1650
	.byte	0
	.uleb128 0x2
	.long	.LASF1651
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1652
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF1653
	.byte	0x17
	.byte	0x1d
	.byte	0xd
	.long	0xa1
	.uleb128 0x5
	.long	.LASF1654
	.byte	0x17
	.byte	0x1e
	.byte	0x10
	.long	0x2fe
	.uleb128 0xd
	.long	0xe3
	.long	0x35c7
	.uleb128 0xb
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF1655
	.byte	0x18
	.byte	0x25
	.byte	0xf
	.long	0x35b7
	.uleb128 0x11
	.long	0x35c7
	.byte	0x5c
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	wadfiles
	.uleb128 0x11
	.long	0x2e0a
	.byte	0x5f
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	devparm
	.uleb128 0x23
	.long	0x2de6
	.byte	0x60
	.uleb128 0x9
	.byte	0x3
	.quad	nomonsters
	.uleb128 0x23
	.long	0x2df2
	.byte	0x61
	.uleb128 0x9
	.byte	0x3
	.quad	respawnparm
	.uleb128 0x23
	.long	0x2dfe
	.byte	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	fastparm
	.uleb128 0x1c
	.long	.LASF1656
	.byte	0x64
	.byte	0x11
	.long	0x4f9
	.uleb128 0x9
	.byte	0x3
	.quad	drone
	.uleb128 0x11
	.long	0x2fab
	.byte	0x66
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	singletics
	.uleb128 0x5
	.long	.LASF1657
	.byte	0x1
	.byte	0x6e
	.byte	0x11
	.long	0x4f9
	.uleb128 0x11
	.long	0x2e3a
	.byte	0x70
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	startskill
	.uleb128 0x11
	.long	0x2e46
	.byte	0x71
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	startepisode
	.uleb128 0x11
	.long	0x2e52
	.byte	0x72
	.byte	0x6
	.uleb128 0x9
	.byte	0x3
	.quad	startmap
	.uleb128 0x11
	.long	0x2e5e
	.byte	0x73
	.byte	0xa
	.uleb128 0x9
	.byte	0x3
	.quad	autostart
	.uleb128 0x11
	.long	0x2f93
	.byte	0x75
	.byte	0x8
	.uleb128 0x9
	.byte	0x3
	.quad	debugfile
	.uleb128 0x1c
	.long	.LASF1658
	.byte	0x77
	.byte	0xa
	.long	0x4f9
	.uleb128 0x9
	.byte	0x3
	.quad	advancedemo
	.uleb128 0x1c
	.long	.LASF1659
	.byte	0x7c
	.byte	0x7
	.long	0x2f76
	.uleb128 0x9
	.byte	0x3
	.quad	wadfile
	.uleb128 0x1c
	.long	.LASF1660
	.byte	0x7d
	.byte	0x7
	.long	0x2f76
	.uleb128 0x9
	.byte	0x3
	.quad	mapdir
	.uleb128 0x11
	.long	0x2f87
	.byte	0x7e
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	basedefault
	.uleb128 0x11
	.long	0x3550
	.byte	0x8d
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	events
	.uleb128 0x11
	.long	0x355c
	.byte	0x8e
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	eventhead
	.uleb128 0x11
	.long	0x3568
	.byte	0x8f
	.byte	0x7
	.uleb128 0x9
	.byte	0x3
	.quad	eventtail
	.uleb128 0x11
	.long	0x2f9f
	.byte	0xbc
	.byte	0x11
	.uleb128 0x9
	.byte	0x3
	.quad	wipegamestate
	.uleb128 0x5
	.long	.LASF1661
	.byte	0x1
	.byte	0xbd
	.byte	0x11
	.long	0x4f9
	.uleb128 0x1d
	.long	.LASF1662
	.value	0x19e
	.byte	0x11
	.long	0xa1
	.uleb128 0x9
	.byte	0x3
	.quad	demosequence
	.uleb128 0x1d
	.long	.LASF1663
	.value	0x19f
	.byte	0x11
	.long	0xa1
	.uleb128 0x9
	.byte	0x3
	.quad	pagetic
	.uleb128 0x1d
	.long	.LASF1664
	.value	0x1a0
	.byte	0x1a
	.long	0xe3
	.uleb128 0x9
	.byte	0x3
	.quad	pagename
	.uleb128 0xd
	.long	0x4a
	.long	0x379e
	.uleb128 0xb
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x1d
	.long	.LASF1665
	.value	0x218
	.byte	0x11
	.long	0x378e
	.uleb128 0x9
	.byte	0x3
	.quad	title
	.uleb128 0xf
	.long	.LASF1666
	.byte	0x19
	.byte	0x24
	.byte	0x6
	.long	0x37d0
	.uleb128 0x4
	.long	0x3da
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0xf
	.long	.LASF1667
	.byte	0x19
	.byte	0x2f
	.byte	0x6
	.long	0x37e2
	.uleb128 0x4
	.long	0xe3
	.byte	0
	.uleb128 0xf
	.long	.LASF1668
	.byte	0x19
	.byte	0x3c
	.byte	0x6
	.long	0x37f4
	.uleb128 0x4
	.long	0xe3
	.byte	0
	.uleb128 0xf
	.long	.LASF1669
	.byte	0x19
	.byte	0x37
	.byte	0x6
	.long	0x3806
	.uleb128 0x4
	.long	0xe3
	.byte	0
	.uleb128 0x8
	.long	.LASF1670
	.byte	0x1a
	.byte	0x36
	.uleb128 0x8
	.long	.LASF1671
	.byte	0x1b
	.byte	0x32
	.uleb128 0xf
	.long	.LASF1672
	.byte	0x1c
	.byte	0x27
	.byte	0x1
	.long	0x382b
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF1673
	.byte	0x1
	.byte	0x81
	.uleb128 0x8
	.long	.LASF1674
	.byte	0x1d
	.byte	0x23
	.uleb128 0x8
	.long	.LASF1675
	.byte	0x1e
	.byte	0x29
	.uleb128 0x8
	.long	.LASF1676
	.byte	0x1f
	.byte	0xa2
	.uleb128 0x8
	.long	.LASF1677
	.byte	0x20
	.byte	0x33
	.uleb128 0x35
	.long	.LASF1715
	.byte	0x12
	.value	0x246
	.byte	0xc
	.long	0xa1
	.uleb128 0xf
	.long	.LASF1678
	.byte	0x21
	.byte	0x45
	.byte	0x9
	.long	0x386d
	.uleb128 0x4
	.long	0x2fe
	.byte	0
	.uleb128 0x8
	.long	.LASF1679
	.byte	0x22
	.byte	0x2f
	.uleb128 0x8
	.long	.LASF1680
	.byte	0x23
	.byte	0x2f
	.uleb128 0x8
	.long	.LASF1681
	.byte	0x24
	.byte	0x39
	.uleb128 0x13
	.long	.LASF1682
	.byte	0x25
	.byte	0x69
	.byte	0xc
	.long	0xa1
	.long	0x3898
	.uleb128 0x4
	.long	0x2d0
	.byte	0
	.uleb128 0x14
	.long	.LASF1683
	.byte	0x26
	.value	0x185
	.byte	0xc
	.long	0xa1
	.long	0x38b4
	.uleb128 0x4
	.long	0x2d0
	.uleb128 0x4
	.long	0xaf
	.byte	0
	.uleb128 0x36
	.long	.LASF1684
	.byte	0x12
	.value	0x14e
	.byte	0xd
	.long	0x38cc
	.uleb128 0x4
	.long	0x2df
	.uleb128 0x4
	.long	0xe8
	.byte	0
	.uleb128 0x13
	.long	.LASF1685
	.byte	0x27
	.byte	0x3d
	.byte	0xe
	.long	0x7e
	.long	0x38ec
	.uleb128 0x4
	.long	0x7e
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x13
	.long	.LASF1686
	.byte	0x12
	.byte	0xb8
	.byte	0xc
	.long	0xa1
	.long	0x3902
	.uleb128 0x4
	.long	0x2da
	.byte	0
	.uleb128 0x14
	.long	.LASF1687
	.byte	0x12
	.value	0x2e2
	.byte	0xf
	.long	0x6b
	.long	0x3928
	.uleb128 0x4
	.long	0x80
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x2df
	.byte	0
	.uleb128 0x14
	.long	.LASF1688
	.byte	0x12
	.value	0x311
	.byte	0x11
	.long	0xa8
	.long	0x393f
	.uleb128 0x4
	.long	0x2da
	.byte	0
	.uleb128 0x14
	.long	.LASF1689
	.byte	0x12
	.value	0x30b
	.byte	0xc
	.long	0xa1
	.long	0x3960
	.uleb128 0x4
	.long	0x2da
	.uleb128 0x4
	.long	0xa8
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0x37
	.long	.LASF1690
	.byte	0x25
	.value	0x2f4
	.byte	0xd
	.long	0x3973
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0x14
	.long	.LASF1691
	.byte	0x28
	.value	0x11f
	.byte	0xc
	.long	0xa1
	.long	0x398f
	.uleb128 0x4
	.long	0x2d0
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0xf
	.long	.LASF1692
	.byte	0x1d
	.byte	0x59
	.byte	0x6
	.long	0x39a2
	.uleb128 0x4
	.long	0xe3
	.uleb128 0x1b
	.byte	0
	.uleb128 0x14
	.long	.LASF1693
	.byte	0x25
	.value	0x305
	.byte	0xe
	.long	0xe3
	.long	0x39b9
	.uleb128 0x4
	.long	0x2d0
	.byte	0
	.uleb128 0x13
	.long	.LASF1694
	.byte	0x27
	.byte	0x8d
	.byte	0xe
	.long	0xe3
	.long	0x39d4
	.uleb128 0x4
	.long	0xe3
	.uleb128 0x4
	.long	0x2d0
	.byte	0
	.uleb128 0x14
	.long	.LASF1695
	.byte	0x25
	.value	0x2a0
	.byte	0xe
	.long	0x7e
	.long	0x39eb
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x14
	.long	.LASF1696
	.byte	0x27
	.value	0x197
	.byte	0xf
	.long	0x6b
	.long	0x3a02
	.uleb128 0x4
	.long	0x2d0
	.byte	0
	.uleb128 0xf
	.long	.LASF1697
	.byte	0x19
	.byte	0x2b
	.byte	0x6
	.long	0x3a14
	.uleb128 0x4
	.long	0xe3
	.byte	0
	.uleb128 0xf
	.long	.LASF1698
	.byte	0x1c
	.byte	0x4e
	.byte	0x6
	.long	0x3a26
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0xf
	.long	.LASF1699
	.byte	0x24
	.byte	0x48
	.byte	0x1
	.long	0x3a47
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0x3a47
	.byte	0
	.uleb128 0x9
	.long	0x345b
	.uleb128 0x8
	.long	.LASF1700
	.byte	0x29
	.byte	0x2d
	.uleb128 0xf
	.long	.LASF1701
	.byte	0x1c
	.byte	0x62
	.byte	0x6
	.long	0x3a65
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x8
	.long	.LASF1702
	.byte	0x2a
	.byte	0x8b
	.uleb128 0x8
	.long	.LASF1703
	.byte	0x19
	.byte	0x44
	.uleb128 0x8
	.long	.LASF1704
	.byte	0x20
	.byte	0x2b
	.uleb128 0xf
	.long	.LASF1705
	.byte	0x1
	.byte	0x83
	.byte	0x6
	.long	0x3a8c
	.uleb128 0x4
	.long	0x3a8c
	.byte	0
	.uleb128 0x9
	.long	0x2d4e
	.uleb128 0x8
	.long	.LASF1706
	.byte	0x1d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1707
	.byte	0x1d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1708
	.byte	0x2b
	.byte	0x25
	.uleb128 0x14
	.long	.LASF1709
	.byte	0x12
	.value	0x108
	.byte	0xe
	.long	0x2da
	.long	0x3ac2
	.uleb128 0x4
	.long	0x2d5
	.uleb128 0x4
	.long	0x2d5
	.byte	0
	.uleb128 0x14
	.long	.LASF1710
	.byte	0x12
	.value	0x16b
	.byte	0xc
	.long	0xa1
	.long	0x3ada
	.uleb128 0x4
	.long	0x2d0
	.uleb128 0x1b
	.byte	0
	.uleb128 0x14
	.long	.LASF1711
	.byte	0x12
	.value	0x16d
	.byte	0xc
	.long	0xa1
	.long	0x3af7
	.uleb128 0x4
	.long	0xe3
	.uleb128 0x4
	.long	0x2d0
	.uleb128 0x1b
	.byte	0
	.uleb128 0x13
	.long	.LASF1712
	.byte	0x17
	.byte	0x22
	.byte	0x5
	.long	0xa1
	.long	0x3b0d
	.uleb128 0x4
	.long	0xe3
	.byte	0
	.uleb128 0x8
	.long	.LASF1713
	.byte	0x19
	.byte	0x39
	.uleb128 0x13
	.long	.LASF1714
	.byte	0x16
	.byte	0x3a
	.byte	0x1
	.long	0xa1
	.long	0x3b43
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0x38
	.long	.LASF1716
	.byte	0x1d
	.byte	0x2d
	.byte	0x5
	.long	0xa1
	.uleb128 0x13
	.long	.LASF1717
	.byte	0x16
	.byte	0x32
	.byte	0x1
	.long	0xa1
	.long	0x3b74
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF1718
	.byte	0x2b
	.byte	0x2e
	.uleb128 0x8
	.long	.LASF1719
	.byte	0x2a
	.byte	0x84
	.uleb128 0x8
	.long	.LASF1720
	.byte	0x20
	.byte	0x2f
	.uleb128 0xf
	.long	.LASF1721
	.byte	0x24
	.byte	0x4f
	.byte	0x1
	.long	0x3baa
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0x3a47
	.byte	0
	.uleb128 0x8
	.long	.LASF1722
	.byte	0x2c
	.byte	0x6a
	.uleb128 0x8
	.long	.LASF1723
	.byte	0x2c
	.byte	0x67
	.uleb128 0xf
	.long	.LASF1724
	.byte	0x2b
	.byte	0x2b
	.byte	0x6
	.long	0x3bca
	.uleb128 0x4
	.long	0x346c
	.byte	0
	.uleb128 0x13
	.long	.LASF1725
	.byte	0x21
	.byte	0x4f
	.byte	0x7
	.long	0x7e
	.long	0x3be5
	.uleb128 0x4
	.long	0xe3
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF1726
	.byte	0x1b
	.byte	0x38
	.uleb128 0xf
	.long	.LASF1727
	.byte	0x1f
	.byte	0x9f
	.byte	0x6
	.long	0x3bfe
	.uleb128 0x4
	.long	0x3467
	.byte	0
	.uleb128 0x8
	.long	.LASF1728
	.byte	0x2b
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF1729
	.byte	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1730
	.byte	0x2e
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF1731
	.byte	0x1a
	.byte	0x30
	.byte	0x6
	.long	0x3c2a
	.uleb128 0x4
	.long	0x4f9
	.uleb128 0x4
	.long	0x4f9
	.byte	0
	.uleb128 0x8
	.long	.LASF1732
	.byte	0x2f
	.byte	0x27
	.uleb128 0x8
	.long	.LASF1733
	.byte	0x1b
	.byte	0x3a
	.uleb128 0x13
	.long	.LASF1734
	.byte	0x16
	.byte	0x2a
	.byte	0x1
	.long	0xa1
	.long	0x3c5d
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.uleb128 0x4
	.long	0xa1
	.byte	0
	.uleb128 0x8
	.long	.LASF1735
	.byte	0x1
	.byte	0xbf
	.uleb128 0x13
	.long	.LASF1736
	.byte	0x19
	.byte	0x45
	.byte	0x9
	.long	0x4f9
	.long	0x3c7a
	.uleb128 0x4
	.long	0x3c7a
	.byte	0
	.uleb128 0x9
	.long	0x34df
	.uleb128 0x13
	.long	.LASF1737
	.byte	0x20
	.byte	0x26
	.byte	0x9
	.long	0x4f9
	.long	0x3c95
	.uleb128 0x4
	.long	0x3c7a
	.byte	0
	.uleb128 0x13
	.long	.LASF1738
	.byte	0x21
	.byte	0x48
	.byte	0x5
	.long	0xa1
	.long	0x3cab
	.uleb128 0x4
	.long	0xe3
	.byte	0
	.uleb128 0x19
	.long	.LASF1745
	.value	0x31c
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da0
	.uleb128 0x1e
	.string	"p"
	.value	0x31e
	.byte	0x15
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0xa
	.long	.LASF1740
	.value	0x31f
	.byte	0x1d
	.long	0x3da0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x3d26
	.uleb128 0xa
	.long	.LASF1741
	.value	0x377
	.byte	0xa
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x17
	.long	.LASF1474
	.byte	0x1
	.value	0x378
	.byte	0xd
	.long	0xd3
	.uleb128 0x17
	.long	.LASF1475
	.byte	0x1
	.value	0x379
	.byte	0xd
	.long	0xd3
	.byte	0
	.uleb128 0x24
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x3d4c
	.uleb128 0xa
	.long	.LASF1742
	.value	0x3d9
	.byte	0xa
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.byte	0
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x3d80
	.uleb128 0xa
	.long	.LASF1743
	.value	0x405
	.byte	0x7
	.long	0x3db0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x1e
	.string	"i"
	.value	0x40b
	.byte	0x6
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.byte	0
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x17
	.long	.LASF1744
	.byte	0x1
	.value	0x460
	.byte	0x10
	.long	0x7e
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x4a
	.long	0x3db0
	.uleb128 0xb
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.long	0x4a
	.long	0x3dc6
	.uleb128 0xb
	.long	0x43
	.byte	0x16
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x19
	.long	.LASF1746
	.value	0x2d2
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e92
	.uleb128 0x1e
	.string	"i"
	.value	0x2d4
	.byte	0x15
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xa
	.long	.LASF1747
	.value	0x2da
	.byte	0x16
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xa
	.long	.LASF1748
	.value	0x2db
	.byte	0x16
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x1e
	.string	"k"
	.value	0x2dc
	.byte	0x16
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0xa
	.long	.LASF1749
	.value	0x2dd
	.byte	0x16
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0xa
	.long	.LASF1750
	.value	0x2de
	.byte	0x16
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xa
	.long	.LASF1751
	.value	0x2df
	.byte	0xf
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0xa
	.long	.LASF1740
	.value	0x2e0
	.byte	0xf
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0xa
	.long	.LASF1752
	.value	0x2e1
	.byte	0xf
	.long	0x35b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xa
	.long	.LASF1753
	.value	0x2e2
	.byte	0xf
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF1754
	.value	0x233
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f3a
	.uleb128 0xa
	.long	.LASF1755
	.value	0x236
	.byte	0xb
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF1756
	.value	0x237
	.byte	0xb
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.long	.LASF1757
	.value	0x238
	.byte	0xb
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.long	.LASF1758
	.value	0x239
	.byte	0xb
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.long	.LASF1759
	.value	0x23b
	.byte	0xb
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.long	.LASF1760
	.value	0x23c
	.byte	0xb
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF1761
	.value	0x23d
	.byte	0xb
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF1762
	.value	0x240
	.byte	0xb
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF1763
	.value	0x241
	.byte	0xb
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x19
	.long	.LASF1764
	.value	0x21f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f86
	.uleb128 0x39
	.long	.LASF1740
	.byte	0x1
	.value	0x21f
	.byte	0x17
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF1765
	.value	0x221
	.byte	0xd
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	.LASF1766
	.value	0x222
	.byte	0xe
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF1767
	.value	0x20d
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF1768
	.value	0x1c6
	.byte	0x7
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF1769
	.byte	0x1
	.value	0x1bc
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF1770
	.value	0x1b2
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF1771
	.value	0x1a7
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF1772
	.value	0x162
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4048
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xa
	.long	.LASF1773
	.value	0x169
	.byte	0xa
	.long	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF1774
	.byte	0xc1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4143
	.uleb128 0x10
	.long	.LASF1775
	.byte	0xc3
	.byte	0x16
	.long	0x4f9
	.uleb128 0x9
	.byte	0x3
	.quad	viewactivestate.1
	.uleb128 0x10
	.long	.LASF1776
	.byte	0xc4
	.byte	0x16
	.long	0x4f9
	.uleb128 0x9
	.byte	0x3
	.quad	menuactivestate.0
	.uleb128 0x10
	.long	.LASF1777
	.byte	0xc5
	.byte	0x16
	.long	0x4f9
	.uleb128 0x9
	.byte	0x3
	.quad	inhelpscreensstate.2
	.uleb128 0x10
	.long	.LASF1778
	.byte	0xc6
	.byte	0x16
	.long	0x4f9
	.uleb128 0x9
	.byte	0x3
	.quad	fullscreen.3
	.uleb128 0x10
	.long	.LASF1779
	.byte	0xc7
	.byte	0x1a
	.long	0x3a3
	.uleb128 0x9
	.byte	0x3
	.quad	oldgamestate.5
	.uleb128 0x10
	.long	.LASF1780
	.byte	0xc8
	.byte	0x13
	.long	0xa1
	.uleb128 0x9
	.byte	0x3
	.quad	borderdrawcount.4
	.uleb128 0x10
	.long	.LASF1781
	.byte	0xc9
	.byte	0xc
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF1240
	.byte	0xca
	.byte	0xc
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF1782
	.byte	0xcb
	.byte	0xc
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"y"
	.byte	0xcc
	.byte	0xc
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF1783
	.byte	0xcd
	.byte	0xf
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF1784
	.byte	0xce
	.byte	0xf
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF1785
	.byte	0xcf
	.byte	0xf
	.long	0x4f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF1786
	.byte	0xa1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x416d
	.uleb128 0x2a
	.string	"ev"
	.byte	0xa3
	.byte	0xe
	.long	0x3c7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1789
	.byte	0x1
	.byte	0x96
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.string	"ev"
	.byte	0x1
	.byte	0x96
	.byte	0x1c
	.long	0x3c7a
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
.LASF1724:
	.string	"I_SetPalette"
.LASF906:
	.string	"S_BSPI_RUN3"
.LASF907:
	.string	"S_BSPI_RUN4"
.LASF908:
	.string	"S_BSPI_RUN5"
.LASF909:
	.string	"S_BSPI_RUN6"
.LASF910:
	.string	"S_BSPI_RUN7"
.LASF911:
	.string	"S_BSPI_RUN8"
.LASF912:
	.string	"S_BSPI_RUN9"
.LASF196:
	.string	"SPR_YSKU"
.LASF1467:
	.string	"attacker"
.LASF559:
	.string	"S_FIRE10"
.LASF560:
	.string	"S_FIRE11"
.LASF561:
	.string	"S_FIRE12"
.LASF562:
	.string	"S_FIRE13"
.LASF563:
	.string	"S_FIRE14"
.LASF564:
	.string	"S_FIRE15"
.LASF565:
	.string	"S_FIRE16"
.LASF566:
	.string	"S_FIRE17"
.LASF42:
	.string	"_unused2"
.LASF568:
	.string	"S_FIRE19"
.LASF1495:
	.string	"startepisode"
.LASF1760:
	.string	"plutoniawad"
.LASF1380:
	.string	"MT_MISC84"
.LASF1313:
	.string	"MT_MISC20"
.LASF1127:
	.string	"S_MEGA2"
.LASF28:
	.string	"_fileno"
.LASF1129:
	.string	"S_MEGA4"
.LASF1317:
	.string	"MT_MISC24"
.LASF1318:
	.string	"MT_MISC25"
.LASF1320:
	.string	"MT_MISC26"
.LASF1321:
	.string	"MT_MISC27"
.LASF1322:
	.string	"MT_MISC28"
.LASF1325:
	.string	"MT_MISC29"
.LASF758:
	.string	"S_SARG_PAIN2"
.LASF1432:
	.string	"threshold"
.LASF80:
	.string	"wp_pistol"
.LASF237:
	.string	"SPR_COL1"
.LASF238:
	.string	"SPR_COL2"
.LASF239:
	.string	"SPR_COL3"
.LASF240:
	.string	"SPR_COL4"
.LASF249:
	.string	"SPR_COL5"
.LASF243:
	.string	"SPR_COL6"
.LASF1747:
	.string	"handle"
.LASF1774:
	.string	"D_Display"
.LASF1720:
	.string	"M_Drawer"
.LASF1589:
	.string	"mus_read_m"
.LASF569:
	.string	"S_FIRE20"
.LASF570:
	.string	"S_FIRE21"
.LASF571:
	.string	"S_FIRE22"
.LASF572:
	.string	"S_FIRE23"
.LASF573:
	.string	"S_FIRE24"
.LASF223:
	.string	"SPR_COLU"
.LASF575:
	.string	"S_FIRE26"
.LASF63:
	.string	"GS_FINALE"
.LASF577:
	.string	"S_FIRE28"
.LASF578:
	.string	"S_FIRE29"
.LASF1722:
	.string	"R_DrawViewBorder"
.LASF1474:
	.string	"forwardmove"
.LASF1326:
	.string	"MT_MISC30"
.LASF1241:
	.string	"action"
.LASF1328:
	.string	"MT_MISC32"
.LASF1329:
	.string	"MT_MISC33"
.LASF920:
	.string	"S_BSPI_PAIN"
.LASF1331:
	.string	"MT_MISC35"
.LASF392:
	.string	"S_BFGEXP"
.LASF94:
	.string	"am_misl"
.LASF1334:
	.string	"MT_MISC38"
.LASF1335:
	.string	"MT_MISC39"
.LASF1597:
	.string	"floorpic"
.LASF922:
	.string	"S_BSPI_DIE1"
.LASF1411:
	.string	"NUMPSPRITES"
.LASF927:
	.string	"S_BSPI_DIE6"
.LASF1584:
	.string	"mus_tense"
.LASF623:
	.string	"S_SKEL_RAISE4"
.LASF1525:
	.string	"mus_e1m1"
.LASF1443:
	.string	"viewz"
.LASF1527:
	.string	"mus_e1m3"
.LASF1528:
	.string	"mus_e1m4"
.LASF1529:
	.string	"mus_e1m5"
.LASF59:
	.string	"unknown"
.LASF1531:
	.string	"mus_e1m7"
.LASF1487:
	.string	"nomonsters"
.LASF1533:
	.string	"mus_e1m9"
.LASF818:
	.string	"S_BOSS_RAISE1"
.LASF1680:
	.string	"M_LoadDefaults"
.LASF819:
	.string	"S_BOSS_RAISE2"
.LASF1260:
	.string	"MT_HEAD"
.LASF820:
	.string	"S_BOSS_RAISE3"
.LASF579:
	.string	"S_FIRE30"
.LASF724:
	.string	"S_TROO_PAIN"
.LASF1013:
	.string	"S_SSWV_DIE1"
.LASF823:
	.string	"S_BOSS_RAISE6"
.LASF1015:
	.string	"S_SSWV_DIE3"
.LASF1016:
	.string	"S_SSWV_DIE4"
.LASF1017:
	.string	"S_SSWV_DIE5"
.LASF191:
	.string	"SPR_BKEY"
.LASF835:
	.string	"S_BOS2_ATK1"
.LASF836:
	.string	"S_BOS2_ATK2"
.LASF837:
	.string	"S_BOS2_ATK3"
.LASF225:
	.string	"SPR_GOR1"
.LASF232:
	.string	"SPR_GOR2"
.LASF33:
	.string	"_shortbuf"
.LASF234:
	.string	"SPR_GOR4"
.LASF235:
	.string	"SPR_GOR5"
.LASF1338:
	.string	"MT_MISC42"
.LASF1339:
	.string	"MT_MISC43"
.LASF592:
	.string	"S_SKEL_RUN1"
.LASF593:
	.string	"S_SKEL_RUN2"
.LASF594:
	.string	"S_SKEL_RUN3"
.LASF595:
	.string	"S_SKEL_RUN4"
.LASF596:
	.string	"S_SKEL_RUN5"
.LASF597:
	.string	"S_SKEL_RUN6"
.LASF598:
	.string	"S_SKEL_RUN7"
.LASF599:
	.string	"S_SKEL_RUN8"
.LASF600:
	.string	"S_SKEL_RUN9"
.LASF83:
	.string	"wp_missile"
.LASF1644:
	.string	"ga_screenshot"
.LASF1078:
	.string	"S_BEXP2"
.LASF1388:
	.string	"seestate"
.LASF1783:
	.string	"done"
.LASF773:
	.string	"S_HEAD_ATK1"
.LASF774:
	.string	"S_HEAD_ATK2"
.LASF775:
	.string	"S_HEAD_ATK3"
.LASF1612:
	.string	"slopetype"
.LASF1027:
	.string	"S_SSWV_RAISE1"
.LASF1028:
	.string	"S_SSWV_RAISE2"
.LASF1029:
	.string	"S_SSWV_RAISE3"
.LASF1030:
	.string	"S_SSWV_RAISE4"
.LASF1031:
	.string	"S_SSWV_RAISE5"
.LASF108:
	.string	"angle"
.LASF1255:
	.string	"MT_FATSHOT"
.LASF211:
	.string	"SPR_CELL"
.LASF1662:
	.string	"demosequence"
.LASF212:
	.string	"SPR_CELP"
.LASF1193:
	.string	"S_HEARTCOL"
.LASF1607:
	.string	"linecount"
.LASF1439:
	.string	"numlines"
.LASF1110:
	.string	"S_MEDI"
.LASF1117:
	.string	"S_PINV"
.LASF1304:
	.string	"MT_INS"
.LASF1347:
	.string	"MT_MISC51"
.LASF1348:
	.string	"MT_MISC52"
.LASF1302:
	.string	"MT_INV"
.LASF1350:
	.string	"MT_MISC54"
.LASF1207:
	.string	"S_BTORCHSHRT"
.LASF328:
	.string	"S_MISSILEUP"
.LASF1353:
	.string	"MT_MISC57"
.LASF60:
	.string	"Language_t"
.LASF1355:
	.string	"MT_MISC59"
.LASF505:
	.string	"S_SPOS_RAISE1"
.LASF1780:
	.string	"borderdrawcount"
.LASF299:
	.string	"S_SGUNFLASH1"
.LASF300:
	.string	"S_SGUNFLASH2"
.LASF847:
	.string	"S_BOS2_RAISE1"
.LASF848:
	.string	"S_BOS2_RAISE2"
.LASF849:
	.string	"S_BOS2_RAISE3"
.LASF850:
	.string	"S_BOS2_RAISE4"
.LASF851:
	.string	"S_BOS2_RAISE5"
.LASF14:
	.string	"_flags"
.LASF853:
	.string	"S_BOS2_RAISE7"
.LASF612:
	.string	"S_SKEL_PAIN"
.LASF1099:
	.string	"S_RKEY"
.LASF126:
	.string	"next"
.LASF1642:
	.string	"ga_victory"
.LASF281:
	.string	"S_PISTOLUP"
.LASF967:
	.string	"S_CYBER_DIE8"
.LASF1671:
	.string	"HU_Init"
.LASF12:
	.string	"__off_t"
.LASF1356:
	.string	"MT_MISC60"
.LASF1357:
	.string	"MT_MISC61"
.LASF1358:
	.string	"MT_MISC62"
.LASF1359:
	.string	"MT_MISC63"
.LASF1360:
	.string	"MT_MISC64"
.LASF1361:
	.string	"MT_MISC65"
.LASF1362:
	.string	"MT_MISC66"
.LASF1363:
	.string	"MT_MISC67"
.LASF396:
	.string	"S_EXPLODE1"
.LASF397:
	.string	"S_EXPLODE2"
.LASF398:
	.string	"S_EXPLODE3"
.LASF1710:
	.string	"printf"
.LASF587:
	.string	"S_TRACEEXP1"
.LASF588:
	.string	"S_TRACEEXP2"
.LASF589:
	.string	"S_TRACEEXP3"
.LASF975:
	.string	"S_PAIN_RUN5"
.LASF1077:
	.string	"S_BEXP"
.LASF976:
	.string	"S_PAIN_RUN6"
.LASF1468:
	.string	"extralight"
.LASF1730:
	.string	"WI_Drawer"
.LASF1194:
	.string	"S_HEARTCOL2"
.LASF373:
	.string	"S_RBALLX1"
.LASF1402:
	.string	"height"
.LASF1287:
	.string	"MT_TELEPORTMAN"
.LASF1727:
	.string	"R_RenderPlayerView"
.LASF34:
	.string	"_lock"
.LASF1713:
	.string	"G_BeginRecording"
.LASF61:
	.string	"GS_LEVEL"
.LASF1366:
	.string	"MT_MISC70"
.LASF156:
	.string	"SPR_IFOG"
.LASF1368:
	.string	"MT_MISC72"
.LASF1369:
	.string	"MT_MISC73"
.LASF1370:
	.string	"MT_MISC74"
.LASF1371:
	.string	"MT_MISC75"
.LASF1372:
	.string	"MT_MISC76"
.LASF1200:
	.string	"S_GREENTORCH2"
.LASF1201:
	.string	"S_GREENTORCH3"
.LASF1202:
	.string	"S_GREENTORCH4"
.LASF1041:
	.string	"S_COMMKEEN9"
.LASF1652:
	.string	"wipe_NUMWIPES"
.LASF690:
	.string	"S_CPOS_PAIN2"
.LASF913:
	.string	"S_BSPI_RUN10"
.LASF914:
	.string	"S_BSPI_RUN11"
.LASF915:
	.string	"S_BSPI_RUN12"
.LASF997:
	.string	"S_SSWV_RUN1"
.LASF998:
	.string	"S_SSWV_RUN2"
.LASF999:
	.string	"S_SSWV_RUN3"
.LASF1000:
	.string	"S_SSWV_RUN4"
.LASF1001:
	.string	"S_SSWV_RUN5"
.LASF1002:
	.string	"S_SSWV_RUN6"
.LASF1003:
	.string	"S_SSWV_RUN7"
.LASF1004:
	.string	"S_SSWV_RUN8"
.LASF1182:
	.string	"S_SKULLCOL"
.LASF1554:
	.string	"mus_bunny"
.LASF1637:
	.string	"ga_newgame"
.LASF1254:
	.string	"MT_FATSO"
.LASF726:
	.string	"S_TROO_DIE1"
.LASF727:
	.string	"S_TROO_DIE2"
.LASF728:
	.string	"S_TROO_DIE3"
.LASF729:
	.string	"S_TROO_DIE4"
.LASF730:
	.string	"S_TROO_DIE5"
.LASF1781:
	.string	"nowtime"
.LASF50:
	.string	"shareware"
.LASF1107:
	.string	"S_YSKULL"
.LASF1108:
	.string	"S_YSKULL2"
.LASF209:
	.string	"SPR_ROCK"
.LASF1279:
	.string	"MT_ROCKET"
.LASF1377:
	.string	"MT_MISC81"
.LASF1378:
	.string	"MT_MISC82"
.LASF1379:
	.string	"MT_MISC83"
.LASF685:
	.string	"S_CPOS_ATK1"
.LASF686:
	.string	"S_CPOS_ATK2"
.LASF687:
	.string	"S_CPOS_ATK3"
.LASF688:
	.string	"S_CPOS_ATK4"
.LASF1246:
	.string	"MT_PLAYER"
.LASF221:
	.string	"SPR_SHOT"
.LASF414:
	.string	"S_IFOG2"
.LASF415:
	.string	"S_IFOG3"
.LASF416:
	.string	"S_IFOG4"
.LASF417:
	.string	"S_IFOG5"
.LASF1558:
	.string	"mus_stalks"
.LASF150:
	.string	"SPR_PLSE"
.LASF142:
	.string	"SPR_PLSF"
.LASF141:
	.string	"SPR_PLSG"
.LASF810:
	.string	"S_BOSS_PAIN2"
.LASF1510:
	.string	"consoleplayer"
.LASF510:
	.string	"S_VILE_STND"
.LASF1690:
	.string	"exit"
.LASF1496:
	.string	"startmap"
.LASF1038:
	.string	"S_COMMKEEN6"
.LASF1039:
	.string	"S_COMMKEEN7"
.LASF1040:
	.string	"S_COMMKEEN8"
.LASF149:
	.string	"SPR_PLSS"
.LASF889:
	.string	"S_SPID_PAIN2"
.LASF1721:
	.string	"V_DrawPatchDirect"
.LASF1403:
	.string	"mass"
.LASF262:
	.string	"SPR_POB1"
.LASF263:
	.string	"SPR_POB2"
.LASF1111:
	.string	"S_SOUL"
.LASF1121:
	.string	"S_PSTR"
.LASF69:
	.string	"sk_hard"
.LASF953:
	.string	"S_CYBER_ATK1"
.LASF954:
	.string	"S_CYBER_ATK2"
.LASF955:
	.string	"S_CYBER_ATK3"
.LASF956:
	.string	"S_CYBER_ATK4"
.LASF957:
	.string	"S_CYBER_ATK5"
.LASF958:
	.string	"S_CYBER_ATK6"
.LASF1148:
	.string	"S_BFUG"
.LASF188:
	.string	"SPR_FCAN"
.LASF631:
	.string	"S_FATT_STND"
.LASF1068:
	.string	"S_BRAINEXPLODE1"
.LASF1069:
	.string	"S_BRAINEXPLODE2"
.LASF1070:
	.string	"S_BRAINEXPLODE3"
.LASF352:
	.string	"S_BFGUP"
.LASF1534:
	.string	"mus_e2m1"
.LASF1535:
	.string	"mus_e2m2"
.LASF1536:
	.string	"mus_e2m3"
.LASF1537:
	.string	"mus_e2m4"
.LASF1538:
	.string	"mus_e2m5"
.LASF1539:
	.string	"mus_e2m6"
.LASF193:
	.string	"SPR_YKEY"
.LASF1541:
	.string	"mus_e2m8"
.LASF1542:
	.string	"mus_e2m9"
.LASF739:
	.string	"S_TROO_RAISE1"
.LASF740:
	.string	"S_TROO_RAISE2"
.LASF741:
	.string	"S_TROO_RAISE3"
.LASF742:
	.string	"S_TROO_RAISE4"
.LASF743:
	.string	"S_TROO_RAISE5"
.LASF1152:
	.string	"S_PLAS"
.LASF1034:
	.string	"S_COMMKEEN2"
.LASF1035:
	.string	"S_COMMKEEN3"
.LASF1036:
	.string	"S_COMMKEEN4"
.LASF1037:
	.string	"S_COMMKEEN5"
.LASF418:
	.string	"S_PLAY"
.LASF984:
	.string	"S_PAIN_DIE2"
.LASF985:
	.string	"S_PAIN_DIE3"
.LASF986:
	.string	"S_PAIN_DIE4"
.LASF987:
	.string	"S_PAIN_DIE5"
.LASF988:
	.string	"S_PAIN_DIE6"
.LASF1257:
	.string	"MT_TROOP"
.LASF539:
	.string	"S_VILE_PAIN2"
.LASF667:
	.string	"S_FATT_RAISE1"
.LASF84:
	.string	"wp_plasma"
.LASF669:
	.string	"S_FATT_RAISE3"
.LASF670:
	.string	"S_FATT_RAISE4"
.LASF671:
	.string	"S_FATT_RAISE5"
.LASF672:
	.string	"S_FATT_RAISE6"
.LASF20:
	.string	"_IO_write_end"
.LASF674:
	.string	"S_FATT_RAISE8"
.LASF383:
	.string	"S_ROCKET"
.LASF1278:
	.string	"MT_HEADSHOT"
.LASF1756:
	.string	"doomwad"
.LASF1610:
	.string	"sidenum"
.LASF936:
	.string	"S_ARACH_PLAZ"
.LASF1175:
	.string	"S_STALAGTITE"
.LASF777:
	.string	"S_HEAD_PAIN2"
.LASF778:
	.string	"S_HEAD_PAIN3"
.LASF107:
	.string	"byte"
.LASF1702:
	.string	"TryRunTics"
.LASF1706:
	.string	"I_StartTic"
.LASF435:
	.string	"S_PLAY_XDIE2"
.LASF77:
	.string	"it_redskull"
.LASF1285:
	.string	"MT_TFOG"
.LASF486:
	.string	"S_SPOS_ATK1"
.LASF487:
	.string	"S_SPOS_ATK2"
.LASF488:
	.string	"S_SPOS_ATK3"
.LASF1782:
	.string	"wipestart"
.LASF423:
	.string	"S_PLAY_ATK1"
.LASF424:
	.string	"S_PLAY_ATK2"
.LASF176:
	.string	"SPR_APLS"
.LASF1703:
	.string	"G_Ticker"
.LASF1749:
	.string	"index"
.LASF1460:
	.string	"refire"
.LASF1634:
	.string	"event_t"
.LASF1560:
	.string	"mus_betwee"
.LASF1204:
	.string	"S_REDTORCH2"
.LASF1205:
	.string	"S_REDTORCH3"
.LASF1206:
	.string	"S_REDTORCH4"
.LASF713:
	.string	"S_TROO_RUN1"
.LASF714:
	.string	"S_TROO_RUN2"
.LASF715:
	.string	"S_TROO_RUN3"
.LASF716:
	.string	"S_TROO_RUN4"
.LASF717:
	.string	"S_TROO_RUN5"
.LASF718:
	.string	"S_TROO_RUN6"
.LASF719:
	.string	"S_TROO_RUN7"
.LASF720:
	.string	"S_TROO_RUN8"
.LASF1627:
	.string	"ev_keyup"
.LASF167:
	.string	"SPR_CPOS"
.LASF628:
	.string	"S_FATSHOTX1"
.LASF629:
	.string	"S_FATSHOTX2"
.LASF630:
	.string	"S_FATSHOTX3"
.LASF708:
	.string	"S_CPOS_RAISE5"
.LASF709:
	.string	"S_CPOS_RAISE6"
.LASF710:
	.string	"S_CPOS_RAISE7"
.LASF1709:
	.string	"fopen"
.LASF1737:
	.string	"M_Responder"
.LASF79:
	.string	"wp_fist"
.LASF1396:
	.string	"missilestate"
.LASF197:
	.string	"SPR_STIM"
.LASF1687:
	.string	"fread"
.LASF744:
	.string	"S_SARG_STND"
.LASF969:
	.string	"S_CYBER_DIE10"
.LASF147:
	.string	"SPR_BAL1"
.LASF148:
	.string	"SPR_BAL2"
.LASF170:
	.string	"SPR_BAL7"
.LASF1427:
	.string	"info"
.LASF1492:
	.string	"modifiedgame"
.LASF1163:
	.string	"S_HEADSONSTICK"
.LASF1422:
	.string	"ceilingz"
.LASF1704:
	.string	"M_Ticker"
.LASF1707:
	.string	"I_StartFrame"
.LASF620:
	.string	"S_SKEL_RAISE1"
.LASF135:
	.string	"SPR_SHT2"
.LASF274:
	.string	"S_PUNCH1"
.LASF275:
	.string	"S_PUNCH2"
.LASF276:
	.string	"S_PUNCH3"
.LASF277:
	.string	"S_PUNCH4"
.LASF278:
	.string	"S_PUNCH5"
.LASF637:
	.string	"S_FATT_RUN5"
.LASF273:
	.string	"S_PUNCHUP"
.LASF890:
	.string	"S_SPID_DIE1"
.LASF641:
	.string	"S_FATT_RUN9"
.LASF892:
	.string	"S_SPID_DIE3"
.LASF893:
	.string	"S_SPID_DIE4"
.LASF134:
	.string	"SPR_SHTF"
.LASF130:
	.string	"SPR_SHTG"
.LASF412:
	.string	"S_IFOG01"
.LASF413:
	.string	"S_IFOG02"
.LASF898:
	.string	"S_SPID_DIE9"
.LASF1140:
	.string	"S_AMMO"
.LASF1591:
	.string	"mus_dm2int"
.LASF1577:
	.string	"mus_count2"
.LASF1628:
	.string	"ev_mouse"
.LASF1755:
	.string	"doom1wad"
.LASF95:
	.string	"NUMAMMO"
.LASF971:
	.string	"S_PAIN_RUN1"
.LASF972:
	.string	"S_PAIN_RUN2"
.LASF973:
	.string	"S_PAIN_RUN3"
.LASF974:
	.string	"S_PAIN_RUN4"
.LASF256:
	.string	"SPR_HDB1"
.LASF257:
	.string	"SPR_HDB2"
.LASF258:
	.string	"SPR_HDB3"
.LASF259:
	.string	"SPR_HDB4"
.LASF260:
	.string	"SPR_HDB5"
.LASF261:
	.string	"SPR_HDB6"
.LASF1247:
	.string	"MT_POSSESSED"
.LASF306:
	.string	"S_DSGUN3"
.LASF307:
	.string	"S_DSGUN4"
.LASF109:
	.string	"type"
.LASF326:
	.string	"S_MISSILE"
.LASF1696:
	.string	"strlen"
.LASF1590:
	.string	"mus_dm2ttl"
.LASF1154:
	.string	"S_SHOT2"
.LASF1221:
	.string	"S_HANGTLOOKDN"
.LASF1705:
	.string	"G_BuildTiccmd"
.LASF1683:
	.string	"mkdir"
.LASF1429:
	.string	"movedir"
.LASF1657:
	.string	"inhelpscreens"
.LASF698:
	.string	"S_CPOS_XDIE1"
.LASF1688:
	.string	"ftell"
.LASF1711:
	.string	"sprintf"
.LASF121:
	.string	"actionf_t"
.LASF116:
	.string	"actionf_v"
.LASF217:
	.string	"SPR_MGUN"
.LASF1259:
	.string	"MT_SHADOWS"
.LASF601:
	.string	"S_SKEL_RUN10"
.LASF602:
	.string	"S_SKEL_RUN11"
.LASF603:
	.string	"S_SKEL_RUN12"
.LASF269:
	.string	"S_NULL"
.LASF811:
	.string	"S_BOSS_DIE1"
.LASF812:
	.string	"S_BOSS_DIE2"
.LASF813:
	.string	"S_BOSS_DIE3"
.LASF814:
	.string	"S_BOSS_DIE4"
.LASF815:
	.string	"S_BOSS_DIE5"
.LASF816:
	.string	"S_BOSS_DIE6"
.LASF817:
	.string	"S_BOSS_DIE7"
.LASF981:
	.string	"S_PAIN_PAIN"
.LASF350:
	.string	"S_BFG"
.LASF1775:
	.string	"viewactivestate"
.LASF1394:
	.string	"painsound"
.LASF1543:
	.string	"mus_e3m1"
.LASF1485:
	.string	"player_t"
.LASF1545:
	.string	"mus_e3m3"
.LASF996:
	.string	"S_SSWV_STND2"
.LASF1547:
	.string	"mus_e3m5"
.LASF1548:
	.string	"mus_e3m6"
.LASF1549:
	.string	"mus_e3m7"
.LASF1550:
	.string	"mus_e3m8"
.LASF1551:
	.string	"mus_e3m9"
.LASF218:
	.string	"SPR_CSAW"
.LASF1131:
	.string	"S_PMAP"
.LASF27:
	.string	"_chain"
.LASF1137:
	.string	"S_PVIS"
.LASF351:
	.string	"S_BFGDOWN"
.LASF1271:
	.string	"MT_BOSSBRAIN"
.LASF164:
	.string	"SPR_SKEL"
.LASF346:
	.string	"S_PLASMA1"
.LASF347:
	.string	"S_PLASMA2"
.LASF1211:
	.string	"S_GTORCHSHRT"
.LASF1440:
	.string	"firstline"
.LASF1145:
	.string	"S_SHEL"
.LASF1695:
	.string	"malloc"
.LASF902:
	.string	"S_BSPI_STND2"
.LASF5:
	.string	"unsigned char"
.LASF162:
	.string	"SPR_FATB"
.LASF583:
	.string	"S_SMOKE4"
.LASF1567:
	.string	"mus_stlks2"
.LASF267:
	.string	"NUMSPRITES"
.LASF888:
	.string	"S_SPID_PAIN"
.LASF1522:
	.string	"maketic"
.LASF168:
	.string	"SPR_SARG"
.LASF1540:
	.string	"mus_e2m7"
.LASF385:
	.string	"S_BFGSHOT2"
.LASF166:
	.string	"SPR_FATT"
.LASF1112:
	.string	"S_SOUL2"
.LASF1113:
	.string	"S_SOUL3"
.LASF1114:
	.string	"S_SOUL4"
.LASF1115:
	.string	"S_SOUL5"
.LASF1116:
	.string	"S_SOUL6"
.LASF1788:
	.string	"_IO_lock_t"
.LASF872:
	.string	"S_SPID_RUN1"
.LASF873:
	.string	"S_SPID_RUN2"
.LASF874:
	.string	"S_SPID_RUN3"
.LASF875:
	.string	"S_SPID_RUN4"
.LASF876:
	.string	"S_SPID_RUN5"
.LASF877:
	.string	"S_SPID_RUN6"
.LASF878:
	.string	"S_SPID_RUN7"
.LASF879:
	.string	"S_SPID_RUN8"
.LASF113:
	.string	"float"
.LASF1079:
	.string	"S_BEXP3"
.LASF1080:
	.string	"S_BEXP4"
.LASF1168:
	.string	"S_DEADSTICK"
.LASF1469:
	.string	"fixedcolormap"
.LASF1454:
	.string	"weaponowned"
.LASF1288:
	.string	"MT_EXTRABFG"
.LASF1497:
	.string	"autostart"
.LASF458:
	.string	"S_POSS_DIE1"
.LASF459:
	.string	"S_POSS_DIE2"
.LASF460:
	.string	"S_POSS_DIE3"
.LASF461:
	.string	"S_POSS_DIE4"
.LASF462:
	.string	"S_POSS_DIE5"
.LASF288:
	.string	"S_SGUNDOWN"
.LASF137:
	.string	"SPR_CHGF"
.LASF136:
	.string	"SPR_CHGG"
.LASF681:
	.string	"S_CPOS_RUN5"
.LASF940:
	.string	"S_ARACH_PLEX3"
.LASF682:
	.string	"S_CPOS_RUN6"
.LASF942:
	.string	"S_ARACH_PLEX5"
.LASF683:
	.string	"S_CPOS_RUN7"
.LASF1431:
	.string	"target"
.LASF247:
	.string	"SPR_CEYE"
.LASF1616:
	.string	"ST_HORIZONTAL"
.LASF989:
	.string	"S_PAIN_RAISE1"
.LASF990:
	.string	"S_PAIN_RAISE2"
.LASF991:
	.string	"S_PAIN_RAISE3"
.LASF992:
	.string	"S_PAIN_RAISE4"
.LASF993:
	.string	"S_PAIN_RAISE5"
.LASF626:
	.string	"S_FATSHOT1"
.LASF627:
	.string	"S_FATSHOT2"
.LASF1743:
	.string	"name"
.LASF1617:
	.string	"ST_VERTICAL"
.LASF1684:
	.string	"setbuf"
.LASF204:
	.string	"SPR_SUIT"
.LASF854:
	.string	"S_SKULL_STND"
.LASF1519:
	.string	"debugfile"
.LASF49:
	.string	"VERSION"
.LASF1383:
	.string	"NUMMOBJTYPES"
.LASF186:
	.string	"SPR_BAR1"
.LASF301:
	.string	"S_DSGUN"
.LASF1180:
	.string	"S_CANDLESTIK"
.LASF101:
	.string	"pw_allmap"
.LASF1236:
	.string	"NUMSTATES"
.LASF880:
	.string	"S_SPID_RUN9"
.LASF366:
	.string	"S_TBALL1"
.LASF367:
	.string	"S_TBALL2"
.LASF580:
	.string	"S_SMOKE1"
.LASF581:
	.string	"S_SMOKE2"
.LASF582:
	.string	"S_SMOKE3"
.LASF11:
	.string	"__mode_t"
.LASF584:
	.string	"S_SMOKE5"
.LASF803:
	.string	"S_BOSS_RUN6"
.LASF804:
	.string	"S_BOSS_RUN7"
.LASF805:
	.string	"S_BOSS_RUN8"
.LASF169:
	.string	"SPR_HEAD"
.LASF1552:
	.string	"mus_inter"
.LASF1419:
	.string	"bprev"
.LASF230:
	.string	"SPR_POL1"
.LASF226:
	.string	"SPR_POL2"
.LASF229:
	.string	"SPR_POL3"
.LASF228:
	.string	"SPR_POL4"
.LASF227:
	.string	"SPR_POL5"
.LASF231:
	.string	"SPR_POL6"
.LASF1498:
	.string	"netgame"
.LASF1075:
	.string	"S_BAR1"
.LASF1665:
	.string	"title"
.LASF1173:
	.string	"S_MEAT4"
.LASF567:
	.string	"S_FIRE18"
.LASF1777:
	.string	"inhelpscreensstate"
.LASF1289:
	.string	"MT_MISC0"
.LASF1161:
	.string	"S_DEADTORSO"
.LASF303:
	.string	"S_DSGUNUP"
.LASF1691:
	.string	"access"
.LASF1493:
	.string	"language"
.LASF1500:
	.string	"snd_SfxVolume"
.LASF1386:
	.string	"spawnstate"
.LASF712:
	.string	"S_TROO_STND2"
.LASF1494:
	.string	"startskill"
.LASF1232:
	.string	"S_TECH2LAMP"
.LASF1501:
	.string	"snd_MusicVolume"
.LASF1660:
	.string	"mapdir"
.LASF1275:
	.string	"MT_SPAWNFIRE"
.LASF1250:
	.string	"MT_FIRE"
.LASF1242:
	.string	"nextstate"
.LASF1789:
	.string	"D_PostEvent"
.LASF1693:
	.string	"getenv"
.LASF1769:
	.string	"D_AdvanceDemo"
.LASF809:
	.string	"S_BOSS_PAIN"
.LASF180:
	.string	"SPR_SSWV"
.LASF19:
	.string	"_IO_write_ptr"
.LASF1586:
	.string	"mus_openin"
.LASF1640:
	.string	"ga_playdemo"
.LASF1218:
	.string	"S_RTORCHSHRT4"
.LASF371:
	.string	"S_RBALL1"
.LASF372:
	.string	"S_RBALL2"
.LASF1176:
	.string	"S_TALLGRNCOL"
.LASF1658:
	.string	"advancedemo"
.LASF1742:
	.string	"time"
.LASF1434:
	.string	"lastlook"
.LASF1650:
	.string	"wipe_ColorXForm"
.LASF1568:
	.string	"mus_theda2"
.LASF1484:
	.string	"playerstate_t"
.LASF1165:
	.string	"S_HEADONASTICK"
.LASF1675:
	.string	"P_Init"
.LASF445:
	.string	"S_POSS_RUN1"
.LASF387:
	.string	"S_BFGLAND2"
.LASF388:
	.string	"S_BFGLAND3"
.LASF389:
	.string	"S_BFGLAND4"
.LASF390:
	.string	"S_BFGLAND5"
.LASF391:
	.string	"S_BFGLAND6"
.LASF451:
	.string	"S_POSS_RUN7"
.LASF452:
	.string	"S_POSS_RUN8"
.LASF434:
	.string	"S_PLAY_XDIE1"
.LASF70:
	.string	"sk_nightmare"
.LASF436:
	.string	"S_PLAY_XDIE3"
.LASF437:
	.string	"S_PLAY_XDIE4"
.LASF438:
	.string	"S_PLAY_XDIE5"
.LASF439:
	.string	"S_PLAY_XDIE6"
.LASF440:
	.string	"S_PLAY_XDIE7"
.LASF441:
	.string	"S_PLAY_XDIE8"
.LASF442:
	.string	"S_PLAY_XDIE9"
.LASF56:
	.string	"english"
.LASF841:
	.string	"S_BOS2_DIE2"
.LASF842:
	.string	"S_BOS2_DIE3"
.LASF843:
	.string	"S_BOS2_DIE4"
.LASF844:
	.string	"S_BOS2_DIE5"
.LASF845:
	.string	"S_BOS2_DIE6"
.LASF846:
	.string	"S_BOS2_DIE7"
.LASF1406:
	.string	"flags"
.LASF766:
	.string	"S_SARG_RAISE2"
.LASF767:
	.string	"S_SARG_RAISE3"
.LASF410:
	.string	"S_TFOG10"
.LASF768:
	.string	"S_SARG_RAISE4"
.LASF1578:
	.string	"mus_ddtbl3"
.LASF463:
	.string	"S_POSS_XDIE1"
.LASF464:
	.string	"S_POSS_XDIE2"
.LASF465:
	.string	"S_POSS_XDIE3"
.LASF466:
	.string	"S_POSS_XDIE4"
.LASF467:
	.string	"S_POSS_XDIE5"
.LASF468:
	.string	"S_POSS_XDIE6"
.LASF469:
	.string	"S_POSS_XDIE7"
.LASF91:
	.string	"am_clip"
.LASF471:
	.string	"S_POSS_XDIE9"
.LASF1164:
	.string	"S_GIBS"
.LASF779:
	.string	"S_HEAD_DIE1"
.LASF780:
	.string	"S_HEAD_DIE2"
.LASF781:
	.string	"S_HEAD_DIE3"
.LASF782:
	.string	"S_HEAD_DIE4"
.LASF783:
	.string	"S_HEAD_DIE5"
.LASF784:
	.string	"S_HEAD_DIE6"
.LASF632:
	.string	"S_FATT_STND2"
.LASF1155:
	.string	"S_COLU"
.LASF282:
	.string	"S_PISTOL1"
.LASF283:
	.string	"S_PISTOL2"
.LASF284:
	.string	"S_PISTOL3"
.LASF285:
	.string	"S_PISTOL4"
.LASF621:
	.string	"S_SKEL_RAISE2"
.LASF622:
	.string	"S_SKEL_RAISE3"
.LASF43:
	.string	"FILE"
.LASF624:
	.string	"S_SKEL_RAISE5"
.LASF625:
	.string	"S_SKEL_RAISE6"
.LASF1184:
	.string	"S_BIGTREE"
.LASF1619:
	.string	"ST_NEGATIVE"
.LASF1094:
	.string	"S_BON2C"
.LASF1095:
	.string	"S_BON2D"
.LASF400:
	.string	"S_TFOG01"
.LASF401:
	.string	"S_TFOG02"
.LASF219:
	.string	"SPR_LAUN"
.LASF456:
	.string	"S_POSS_PAIN"
.LASF791:
	.string	"S_BRBALL1"
.LASF792:
	.string	"S_BRBALL2"
.LASF1564:
	.string	"mus_ddtblu"
.LASF1253:
	.string	"MT_SMOKE"
.LASF1267:
	.string	"MT_CYBORG"
.LASF1404:
	.string	"damage"
.LASF496:
	.string	"S_SPOS_XDIE1"
.LASF497:
	.string	"S_SPOS_XDIE2"
.LASF498:
	.string	"S_SPOS_XDIE3"
.LASF499:
	.string	"S_SPOS_XDIE4"
.LASF500:
	.string	"S_SPOS_XDIE5"
.LASF501:
	.string	"S_SPOS_XDIE6"
.LASF502:
	.string	"S_SPOS_XDIE7"
.LASF503:
	.string	"S_SPOS_XDIE8"
.LASF504:
	.string	"S_SPOS_XDIE9"
.LASF10:
	.string	"size_t"
.LASF1414:
	.string	"mobj_s"
.LASF1473:
	.string	"mobj_t"
.LASF1097:
	.string	"S_BKEY"
.LASF99:
	.string	"pw_invisibility"
.LASF1511:
	.string	"displayplayer"
.LASF184:
	.string	"SPR_ARM1"
.LASF185:
	.string	"SPR_ARM2"
.LASF1249:
	.string	"MT_VILE"
.LASF1667:
	.string	"G_LoadGame"
.LASF75:
	.string	"it_blueskull"
.LASF1604:
	.string	"soundorg"
.LASF344:
	.string	"S_PLASMADOWN"
.LASF656:
	.string	"S_FATT_PAIN2"
.LASF1054:
	.string	"S_BRAINEYESEE"
.LASF1620:
	.string	"slopetype_t"
.LASF591:
	.string	"S_SKEL_STND2"
.LASF944:
	.string	"S_CYBER_STND2"
.LASF1245:
	.string	"state_t"
.LASF788:
	.string	"S_HEAD_RAISE4"
.LASF1014:
	.string	"S_SSWV_DIE2"
.LASF51:
	.string	"registered"
.LASF1489:
	.string	"fastparm"
.LASF470:
	.string	"S_POSS_XDIE8"
.LASF1144:
	.string	"S_CELP"
.LASF1186:
	.string	"S_EVILEYE"
.LASF1651:
	.string	"wipe_Melt"
.LASF1212:
	.string	"S_GTORCHSHRT2"
.LASF1213:
	.string	"S_GTORCHSHRT3"
.LASF1214:
	.string	"S_GTORCHSHRT4"
.LASF1785:
	.string	"redrawsbar"
.LASF1444:
	.string	"viewheight"
.LASF1418:
	.string	"bnext"
.LASF1649:
	.string	"gameaction"
.LASF1698:
	.string	"S_StartMusic"
.LASF1523:
	.string	"netcmds"
.LASF23:
	.string	"_IO_save_base"
.LASF645:
	.string	"S_FATT_ATK1"
.LASF178:
	.string	"SPR_CYBR"
.LASF646:
	.string	"S_FATT_ATK2"
.LASF549:
	.string	"S_VILE_DIE10"
.LASF139:
	.string	"SPR_MISF"
.LASF138:
	.string	"SPR_MISG"
.LASF1499:
	.string	"deathmatch"
.LASF151:
	.string	"SPR_MISL"
.LASF1103:
	.string	"S_BSKULL"
.LASF182:
	.string	"SPR_BBRN"
.LASF524:
	.string	"S_VILE_ATK1"
.LASF525:
	.string	"S_VILE_ATK2"
.LASF526:
	.string	"S_VILE_ATK3"
.LASF527:
	.string	"S_VILE_ATK4"
.LASF528:
	.string	"S_VILE_ATK5"
.LASF529:
	.string	"S_VILE_ATK6"
.LASF530:
	.string	"S_VILE_ATK7"
.LASF271:
	.string	"S_PUNCH"
.LASF532:
	.string	"S_VILE_ATK9"
.LASF253:
	.string	"SPR_SMBT"
.LASF1563:
	.string	"mus_shawn"
.LASF827:
	.string	"S_BOS2_RUN1"
.LASF828:
	.string	"S_BOS2_RUN2"
.LASF829:
	.string	"S_BOS2_RUN3"
.LASF830:
	.string	"S_BOS2_RUN4"
.LASF831:
	.string	"S_BOS2_RUN5"
.LASF832:
	.string	"S_BOS2_RUN6"
.LASF833:
	.string	"S_BOS2_RUN7"
.LASF834:
	.string	"S_BOS2_RUN8"
.LASF1599:
	.string	"lightlevel"
.LASF244:
	.string	"SPR_TRE1"
.LASF245:
	.string	"SPR_TRE2"
.LASF901:
	.string	"S_BSPI_STND"
.LASF1395:
	.string	"meleestate"
.LASF1455:
	.string	"ammo"
.LASF691:
	.string	"S_CPOS_DIE1"
.LASF252:
	.string	"SPR_TRED"
.LASF145:
	.string	"SPR_BLUD"
.LASF647:
	.string	"S_FATT_ATK3"
.LASF648:
	.string	"S_FATT_ATK4"
.LASF649:
	.string	"S_FATT_ATK5"
.LASF650:
	.string	"S_FATT_ATK6"
.LASF651:
	.string	"S_FATT_ATK7"
.LASF652:
	.string	"S_FATT_ATK8"
.LASF653:
	.string	"S_FATT_ATK9"
.LASF155:
	.string	"SPR_TFOG"
.LASF359:
	.string	"S_BLOOD1"
.LASF360:
	.string	"S_BLOOD2"
.LASF361:
	.string	"S_BLOOD3"
.LASF1648:
	.string	"eventtail"
.LASF1566:
	.string	"mus_dead"
.LASF1740:
	.string	"file"
.LASF1243:
	.string	"misc1"
.LASF1244:
	.string	"misc2"
.LASF1574:
	.string	"mus_romero"
.LASF1518:
	.string	"basedefault"
.LASF1476:
	.string	"angleturn"
.LASF37:
	.string	"_wide_data"
.LASF1151:
	.string	"S_LAUN"
.LASF411:
	.string	"S_IFOG"
.LASF1572:
	.string	"mus_dead2"
.LASF158:
	.string	"SPR_POSS"
.LASF163:
	.string	"SPR_FBXP"
.LASF1583:
	.string	"mus_romer2"
.LASF960:
	.string	"S_CYBER_DIE1"
.LASF961:
	.string	"S_CYBER_DIE2"
.LASF962:
	.string	"S_CYBER_DIE3"
.LASF963:
	.string	"S_CYBER_DIE4"
.LASF964:
	.string	"S_CYBER_DIE5"
.LASF965:
	.string	"S_CYBER_DIE6"
.LASF966:
	.string	"S_CYBER_DIE7"
.LASF838:
	.string	"S_BOS2_PAIN"
.LASF968:
	.string	"S_CYBER_DIE9"
.LASF1435:
	.string	"spawnpoint"
.LASF1784:
	.string	"wipe"
.LASF1238:
	.string	"sprite"
.LASF57:
	.string	"french"
.LASF1316:
	.string	"MT_MISC23"
.LASF1625:
	.string	"patch_t"
.LASF1571:
	.string	"mus_runni2"
.LASF1181:
	.string	"S_CANDELABRA"
.LASF521:
	.string	"S_VILE_RUN10"
.LASF522:
	.string	"S_VILE_RUN11"
.LASF523:
	.string	"S_VILE_RUN12"
.LASF1141:
	.string	"S_ROCK"
.LASF290:
	.string	"S_SGUN1"
.LASF291:
	.string	"S_SGUN2"
.LASF292:
	.string	"S_SGUN3"
.LASF293:
	.string	"S_SGUN4"
.LASF294:
	.string	"S_SGUN5"
.LASF295:
	.string	"S_SGUN6"
.LASF296:
	.string	"S_SGUN7"
.LASF297:
	.string	"S_SGUN8"
.LASF298:
	.string	"S_SGUN9"
.LASF1385:
	.string	"doomednum"
.LASF1714:
	.string	"wipe_ScreenWipe"
.LASF287:
	.string	"S_SGUN"
.LASF1505:
	.string	"viewactive"
.LASF1177:
	.string	"S_SHRTGRNCOL"
.LASF862:
	.string	"S_SKULL_PAIN"
.LASF1555:
	.string	"mus_victor"
.LASF1274:
	.string	"MT_SPAWNSHOT"
.LASF1670:
	.string	"ST_Init"
.LASF586:
	.string	"S_TRACER2"
.LASF1557:
	.string	"mus_runnin"
.LASF1185:
	.string	"S_TECHPILLAR"
.LASF590:
	.string	"S_SKEL_STND"
.LASF1556:
	.string	"mus_introa"
.LASF745:
	.string	"S_SARG_STND2"
.LASF1712:
	.string	"M_CheckParm"
.LASF54:
	.string	"indetermined"
.LASF491:
	.string	"S_SPOS_DIE1"
.LASF492:
	.string	"S_SPOS_DIE2"
.LASF493:
	.string	"S_SPOS_DIE3"
.LASF494:
	.string	"S_SPOS_DIE4"
.LASF495:
	.string	"S_SPOS_DIE5"
.LASF1483:
	.string	"PST_REBORN"
.LASF1663:
	.string	"pagetic"
.LASF1220:
	.string	"S_HANGBNOBRAIN"
.LASF754:
	.string	"S_SARG_ATK1"
.LASF755:
	.string	"S_SARG_ATK2"
.LASF756:
	.string	"S_SARG_ATK3"
.LASF345:
	.string	"S_PLASMAUP"
.LASF1240:
	.string	"tics"
.LASF1101:
	.string	"S_YKEY"
.LASF1400:
	.string	"speed"
.LASF1654:
	.string	"myargv"
.LASF1641:
	.string	"ga_completed"
.LASF314:
	.string	"S_DSNR1"
.LASF983:
	.string	"S_PAIN_DIE1"
.LASF1686:
	.string	"fclose"
.LASF1764:
	.string	"D_AddFile"
.LASF513:
	.string	"S_VILE_RUN2"
.LASF1585:
	.string	"mus_shawn3"
.LASF1231:
	.string	"S_TECHLAMP4"
.LASF677:
	.string	"S_CPOS_RUN1"
.LASF678:
	.string	"S_CPOS_RUN2"
.LASF679:
	.string	"S_CPOS_RUN3"
.LASF680:
	.string	"S_CPOS_RUN4"
.LASF117:
	.string	"actionf_p1"
.LASF118:
	.string	"actionf_p2"
.LASF215:
	.string	"SPR_BPAK"
.LASF684:
	.string	"S_CPOS_RUN8"
.LASF1081:
	.string	"S_BEXP5"
.LASF111:
	.string	"mapthing_t"
.LASF446:
	.string	"S_POSS_RUN2"
.LASF447:
	.string	"S_POSS_RUN3"
.LASF448:
	.string	"S_POSS_RUN4"
.LASF765:
	.string	"S_SARG_RAISE1"
.LASF449:
	.string	"S_POSS_RUN5"
.LASF119:
	.string	"acp1"
.LASF120:
	.string	"acp2"
.LASF769:
	.string	"S_SARG_RAISE5"
.LASF770:
	.string	"S_SARG_RAISE6"
.LASF1697:
	.string	"G_DeferedPlayDemo"
.LASF1636:
	.string	"ga_loadlevel"
.LASF1349:
	.string	"MT_MISC53"
.LASF1506:
	.string	"nodrawers"
.LASF254:
	.string	"SPR_SMGT"
.LASF1045:
	.string	"S_KEENPAIN"
.LASF393:
	.string	"S_BFGEXP2"
.LASF394:
	.string	"S_BFGEXP3"
.LASF395:
	.string	"S_BFGEXP4"
.LASF324:
	.string	"S_CHAINFLASH1"
.LASF325:
	.string	"S_CHAINFLASH2"
.LASF280:
	.string	"S_PISTOLDOWN"
.LASF58:
	.string	"german"
.LASF945:
	.string	"S_CYBER_RUN1"
.LASF946:
	.string	"S_CYBER_RUN2"
.LASF947:
	.string	"S_CYBER_RUN3"
.LASF948:
	.string	"S_CYBER_RUN4"
.LASF949:
	.string	"S_CYBER_RUN5"
.LASF950:
	.string	"S_CYBER_RUN6"
.LASF951:
	.string	"S_CYBER_RUN7"
.LASF952:
	.string	"S_CYBER_RUN8"
.LASF1389:
	.string	"seesound"
.LASF65:
	.string	"gamestate_t"
.LASF1133:
	.string	"S_PMAP3"
.LASF1134:
	.string	"S_PMAP4"
.LASF1135:
	.string	"S_PMAP5"
.LASF1136:
	.string	"S_PMAP6"
.LASF1466:
	.string	"bonuscount"
.LASF863:
	.string	"S_SKULL_PAIN2"
.LASF1393:
	.string	"painchance"
.LASF689:
	.string	"S_CPOS_PAIN"
.LASF1596:
	.string	"ceilingheight"
.LASF52:
	.string	"commercial"
.LASF1581:
	.string	"mus_adrian"
.LASF1588:
	.string	"mus_ultima"
.LASF994:
	.string	"S_PAIN_RAISE6"
.LASF1606:
	.string	"specialdata"
.LASF1332:
	.string	"MT_MISC36"
.LASF1679:
	.string	"Z_Init"
.LASF798:
	.string	"S_BOSS_RUN1"
.LASF799:
	.string	"S_BOSS_RUN2"
.LASF800:
	.string	"S_BOSS_RUN3"
.LASF801:
	.string	"S_BOSS_RUN4"
.LASF802:
	.string	"S_BOSS_RUN5"
.LASF320:
	.string	"S_CHAINUP"
.LASF1787:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1461:
	.string	"killcount"
.LASF1504:
	.string	"paused"
.LASF939:
	.string	"S_ARACH_PLEX2"
.LASF1183:
	.string	"S_TORCHTREE"
.LASF995:
	.string	"S_SSWV_STND"
.LASF941:
	.string	"S_ARACH_PLEX4"
.LASF1752:
	.string	"moreargs"
.LASF1042:
	.string	"S_COMMKEEN10"
.LASF1043:
	.string	"S_COMMKEEN11"
.LASF1044:
	.string	"S_COMMKEEN12"
.LASF959:
	.string	"S_CYBER_PAIN"
.LASF1169:
	.string	"S_LIVESTICK"
.LASF478:
	.string	"S_SPOS_RUN1"
.LASF236:
	.string	"SPR_SMIT"
.LASF106:
	.string	"boolean"
.LASF481:
	.string	"S_SPOS_RUN4"
.LASF482:
	.string	"S_SPOS_RUN5"
.LASF173:
	.string	"SPR_SKUL"
.LASF484:
	.string	"S_SPOS_RUN7"
.LASF485:
	.string	"S_SPOS_RUN8"
.LASF1142:
	.string	"S_BROK"
.LASF1387:
	.string	"spawnhealth"
.LASF1718:
	.string	"I_FinishUpdate"
.LASF1766:
	.string	"newfile"
.LASF1750:
	.string	"indexinfile"
.LASF272:
	.string	"S_PUNCHDOWN"
.LASF938:
	.string	"S_ARACH_PLEX"
.LASF1199:
	.string	"S_GREENTORCH"
.LASF87:
	.string	"wp_supershotgun"
.LASF338:
	.string	"S_SAWDOWN"
.LASF25:
	.string	"_IO_save_end"
.LASF1237:
	.string	"statenum_t"
.LASF1277:
	.string	"MT_TROOPSHOT"
.LASF1262:
	.string	"MT_BRUISERSHOT"
.LASF1678:
	.string	"W_InitMultipleFiles"
.LASF1480:
	.string	"ticcmd_t"
.LASF1486:
	.string	"stdout"
.LASF1382:
	.string	"MT_MISC86"
.LASF1409:
	.string	"ps_weapon"
.LASF426:
	.string	"S_PLAY_PAIN2"
.LASF821:
	.string	"S_BOSS_RAISE4"
.LASF822:
	.string	"S_BOSS_RAISE5"
.LASF1239:
	.string	"frame"
.LASF165:
	.string	"SPR_MANF"
.LASF676:
	.string	"S_CPOS_STND2"
.LASF1618:
	.string	"ST_POSITIVE"
.LASF489:
	.string	"S_SPOS_PAIN"
.LASF840:
	.string	"S_BOS2_DIE1"
.LASF81:
	.string	"wp_shotgun"
.LASF457:
	.string	"S_POSS_PAIN2"
.LASF1283:
	.string	"MT_PUFF"
.LASF1668:
	.string	"G_TimeDemo"
.LASF329:
	.string	"S_MISSILE1"
.LASF330:
	.string	"S_MISSILE2"
.LASF331:
	.string	"S_MISSILE3"
.LASF705:
	.string	"S_CPOS_RAISE2"
.LASF706:
	.string	"S_CPOS_RAISE3"
.LASF707:
	.string	"S_CPOS_RAISE4"
.LASF1471:
	.string	"psprites"
.LASF1149:
	.string	"S_MGUN"
.LASF1261:
	.string	"MT_BRUISER"
.LASF214:
	.string	"SPR_SBOX"
.LASF1544:
	.string	"mus_e3m2"
.LASF1463:
	.string	"secretcount"
.LASF1384:
	.string	"mobjtype_t"
.LASF1398:
	.string	"xdeathstate"
.LASF1546:
	.string	"mus_e3m4"
.LASF1448:
	.string	"powers"
.LASF858:
	.string	"S_SKULL_ATK1"
.LASF859:
	.string	"S_SKULL_ATK2"
.LASF860:
	.string	"S_SKULL_ATK3"
.LASF861:
	.string	"S_SKULL_ATK4"
.LASF839:
	.string	"S_BOS2_PAIN2"
.LASF6:
	.string	"short unsigned int"
.LASF1263:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF1475:
	.string	"sidemove"
.LASF1405:
	.string	"activesound"
.LASF490:
	.string	"S_SPOS_PAIN2"
.LASF1659:
	.string	"wadfile"
.LASF654:
	.string	"S_FATT_ATK10"
.LASF1336:
	.string	"MT_MISC40"
.LASF1674:
	.string	"I_Init"
.LASF251:
	.string	"SPR_TGRN"
.LASF1629:
	.string	"ev_joystick"
.LASF1308:
	.string	"MT_MEGA"
.LASF153:
	.string	"SPR_BFE1"
.LASF154:
	.string	"SPR_BFE2"
.LASF1786:
	.string	"D_ProcessEvents"
.LASF1605:
	.string	"thinglist"
.LASF1342:
	.string	"MT_MISC46"
.LASF1592:
	.string	"NUMMUSIC"
.LASF1624:
	.string	"columnofs"
.LASF1270:
	.string	"MT_KEEN"
.LASF1603:
	.string	"blockbox"
.LASF1055:
	.string	"S_BRAINEYE1"
.LASF711:
	.string	"S_TROO_STND"
.LASF658:
	.string	"S_FATT_DIE2"
.LASF349:
	.string	"S_PLASMAFLASH2"
.LASF90:
	.string	"weapontype_t"
.LASF1478:
	.string	"chatchar"
.LASF402:
	.string	"S_TFOG2"
.LASF403:
	.string	"S_TFOG3"
.LASF404:
	.string	"S_TFOG4"
.LASF405:
	.string	"S_TFOG5"
.LASF406:
	.string	"S_TFOG6"
.LASF407:
	.string	"S_TFOG7"
.LASF408:
	.string	"S_TFOG8"
.LASF409:
	.string	"S_TFOG9"
.LASF824:
	.string	"S_BOSS_RAISE7"
.LASF1457:
	.string	"attackdown"
.LASF1736:
	.string	"G_Responder"
.LASF129:
	.string	"SPR_TROO"
.LASF13:
	.string	"__off64_t"
.LASF140:
	.string	"SPR_SAWG"
.LASF1299:
	.string	"MT_MISC10"
.LASF189:
	.string	"SPR_BON1"
.LASF17:
	.string	"_IO_read_base"
.LASF35:
	.string	"_offset"
.LASF74:
	.string	"it_redcard"
.LASF1178:
	.string	"S_TALLREDCOL"
.LASF1692:
	.string	"I_Error"
.LASF1645:
	.string	"gameaction_t"
.LASF1412:
	.string	"state"
.LASF22:
	.string	"_IO_buf_end"
.LASF1153:
	.string	"S_SHOT"
.LASF1009:
	.string	"S_SSWV_ATK5"
.LASF1158:
	.string	"S_BLOODYTWITCH2"
.LASF1159:
	.string	"S_BLOODYTWITCH3"
.LASF1160:
	.string	"S_BLOODYTWITCH4"
.LASF899:
	.string	"S_SPID_DIE10"
.LASF900:
	.string	"S_SPID_DIE11"
.LASF1449:
	.string	"cards"
.LASF1559:
	.string	"mus_countd"
.LASF1553:
	.string	"mus_intro"
.LASF246:
	.string	"SPR_ELEC"
.LASF1047:
	.string	"S_BRAIN"
.LASF1767:
	.string	"D_StartTitle"
.LASF1639:
	.string	"ga_savegame"
.LASF1265:
	.string	"MT_SPIDER"
.LASF1130:
	.string	"S_SUIT"
.LASF144:
	.string	"SPR_BFGF"
.LASF143:
	.string	"SPR_BFGG"
.LASF1512:
	.string	"usergame"
.LASF41:
	.string	"_mode"
.LASF1521:
	.string	"singletics"
.LASF970:
	.string	"S_PAIN_STND"
.LASF18:
	.string	"_IO_write_base"
.LASF386:
	.string	"S_BFGLAND"
.LASF1076:
	.string	"S_BAR2"
.LASF1453:
	.string	"pendingweapon"
.LASF127:
	.string	"function"
.LASF1520:
	.string	"wipegamestate"
.LASF92:
	.string	"am_shell"
.LASF1516:
	.string	"gametic"
.LASF1725:
	.string	"W_CacheLumpName"
.LASF1426:
	.string	"validcount"
.LASF1503:
	.string	"menuactive"
.LASF1464:
	.string	"message"
.LASF666:
	.string	"S_FATT_DIE10"
.LASF78:
	.string	"NUMCARDS"
.LASF1203:
	.string	"S_REDTORCH"
.LASF1575:
	.string	"mus_shawn2"
.LASF1281:
	.string	"MT_BFG"
.LASF450:
	.string	"S_POSS_RUN6"
.LASF160:
	.string	"SPR_VILE"
.LASF1635:
	.string	"ga_nothing"
.LASF1284:
	.string	"MT_BLOOD"
.LASF279:
	.string	"S_PISTOL"
.LASF105:
	.string	"true"
.LASF1509:
	.string	"scaledviewwidth"
.LASF68:
	.string	"sk_medium"
.LASF929:
	.string	"S_BSPI_RAISE1"
.LASF930:
	.string	"S_BSPI_RAISE2"
.LASF931:
	.string	"S_BSPI_RAISE3"
.LASF932:
	.string	"S_BSPI_RAISE4"
.LASF933:
	.string	"S_BSPI_RAISE5"
.LASF934:
	.string	"S_BSPI_RAISE6"
.LASF935:
	.string	"S_BSPI_RAISE7"
.LASF1423:
	.string	"momx"
.LASF1424:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF1018:
	.string	"S_SSWV_XDIE1"
.LASF1019:
	.string	"S_SSWV_XDIE2"
.LASF1020:
	.string	"S_SSWV_XDIE3"
.LASF1021:
	.string	"S_SSWV_XDIE4"
.LASF1022:
	.string	"S_SSWV_XDIE5"
.LASF1023:
	.string	"S_SSWV_XDIE6"
.LASF1024:
	.string	"S_SSWV_XDIE7"
.LASF1025:
	.string	"S_SSWV_XDIE8"
.LASF1026:
	.string	"S_SSWV_XDIE9"
.LASF316:
	.string	"S_DSGUNFLASH1"
.LASF317:
	.string	"S_DSGUNFLASH2"
.LASF1315:
	.string	"MT_MISC22"
.LASF1472:
	.string	"didsecret"
.LASF574:
	.string	"S_FIRE25"
.LASF668:
	.string	"S_FATT_RAISE2"
.LASF1351:
	.string	"MT_MISC55"
.LASF1445:
	.string	"deltaviewheight"
.LASF576:
	.string	"S_FIRE27"
.LASF76:
	.string	"it_yellowskull"
.LASF1106:
	.string	"S_RSKULL2"
.LASF1436:
	.string	"tracer"
.LASF673:
	.string	"S_FATT_RAISE7"
.LASF1771:
	.string	"D_PageTicker"
.LASF881:
	.string	"S_SPID_RUN10"
.LASF882:
	.string	"S_SPID_RUN11"
.LASF883:
	.string	"S_SPID_RUN12"
.LASF44:
	.string	"_IO_marker"
.LASF1694:
	.string	"strcpy"
.LASF1739:
	.string	"rcsid"
.LASF1699:
	.string	"V_DrawPatch"
.LASF1626:
	.string	"ev_keydown"
.LASF1735:
	.string	"R_ExecuteSetViewSize"
.LASF1407:
	.string	"raisestate"
.LASF332:
	.string	"S_MISSILEFLASH1"
.LASF333:
	.string	"S_MISSILEFLASH2"
.LASF334:
	.string	"S_MISSILEFLASH3"
.LASF335:
	.string	"S_MISSILEFLASH4"
.LASF195:
	.string	"SPR_RSKU"
.LASF122:
	.string	"think_t"
.LASF692:
	.string	"S_CPOS_DIE2"
.LASF693:
	.string	"S_CPOS_DIE3"
.LASF1682:
	.string	"atoi"
.LASF694:
	.string	"S_CPOS_DIE4"
.LASF695:
	.string	"S_CPOS_DIE5"
.LASF696:
	.string	"S_CPOS_DIE6"
.LASF697:
	.string	"S_CPOS_DIE7"
.LASF1561:
	.string	"mus_doom"
.LASF1138:
	.string	"S_PVIS2"
.LASF1276:
	.string	"MT_BARREL"
.LASF870:
	.string	"S_SPID_STND"
.LASF642:
	.string	"S_FATT_RUN10"
.LASF643:
	.string	"S_FATT_RUN11"
.LASF644:
	.string	"S_FATT_RUN12"
.LASF1268:
	.string	"MT_PAIN"
.LASF45:
	.string	"_IO_codecvt"
.LASF1196:
	.string	"S_BLUETORCH2"
.LASF1408:
	.string	"mobjinfo_t"
.LASF1197:
	.string	"S_BLUETORCH3"
.LASF1726:
	.string	"HU_Drawer"
.LASF1198:
	.string	"S_BLUETORCH4"
.LASF255:
	.string	"SPR_SMRT"
.LASF357:
	.string	"S_BFGFLASH1"
.LASF358:
	.string	"S_BFGFLASH2"
.LASF891:
	.string	"S_SPID_DIE2"
.LASF1514:
	.string	"singledemo"
.LASF172:
	.string	"SPR_BOS2"
.LASF894:
	.string	"S_SPID_DIE5"
.LASF895:
	.string	"S_SPID_DIE6"
.LASF896:
	.string	"S_SPID_DIE7"
.LASF897:
	.string	"S_SPID_DIE8"
.LASF1729:
	.string	"F_Drawer"
.LASF1187:
	.string	"S_EVILEYE2"
.LASF1188:
	.string	"S_EVILEYE3"
.LASF1189:
	.string	"S_EVILEYE4"
.LASF362:
	.string	"S_PUFF1"
.LASF363:
	.string	"S_PUFF2"
.LASF364:
	.string	"S_PUFF3"
.LASF183:
	.string	"SPR_BOSF"
.LASF1608:
	.string	"lines"
.LASF171:
	.string	"SPR_BOSS"
.LASF1280:
	.string	"MT_PLASMA"
.LASF916:
	.string	"S_BSPI_ATK1"
.LASF917:
	.string	"S_BSPI_ATK2"
.LASF918:
	.string	"S_BSPI_ATK3"
.LASF919:
	.string	"S_BSPI_ATK4"
.LASF1098:
	.string	"S_BKEY2"
.LASF88:
	.string	"NUMWEAPONS"
.LASF1587:
	.string	"mus_evil"
.LASF903:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF1669:
	.string	"G_RecordDemo"
.LASF905:
	.string	"S_BSPI_RUN2"
.LASF1049:
	.string	"S_BRAIN_DIE1"
.LASF1050:
	.string	"S_BRAIN_DIE2"
.LASF1051:
	.string	"S_BRAIN_DIE3"
.LASF1052:
	.string	"S_BRAIN_DIE4"
.LASF384:
	.string	"S_BFGSHOT"
.LASF1190:
	.string	"S_FLOATSKULL"
.LASF540:
	.string	"S_VILE_DIE1"
.LASF541:
	.string	"S_VILE_DIE2"
.LASF542:
	.string	"S_VILE_DIE3"
.LASF543:
	.string	"S_VILE_DIE4"
.LASF544:
	.string	"S_VILE_DIE5"
.LASF545:
	.string	"S_VILE_DIE6"
.LASF546:
	.string	"S_VILE_DIE7"
.LASF547:
	.string	"S_VILE_DIE8"
.LASF548:
	.string	"S_VILE_DIE9"
.LASF1465:
	.string	"damagecount"
.LASF224:
	.string	"SPR_SMT2"
.LASF1100:
	.string	"S_RKEY2"
.LASF1071:
	.string	"S_ARM1"
.LASF1073:
	.string	"S_ARM2"
.LASF1166:
	.string	"S_HEADCANDLES"
.LASF202:
	.string	"SPR_PINS"
.LASF796:
	.string	"S_BOSS_STND"
.LASF1738:
	.string	"W_CheckNumForName"
.LASF776:
	.string	"S_HEAD_PAIN"
.LASF73:
	.string	"it_yellowcard"
.LASF1252:
	.string	"MT_TRACER"
.LASF1758:
	.string	"doom2wad"
.LASF1770:
	.string	"D_PageDrawer"
.LASF657:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF659:
	.string	"S_FATT_DIE3"
.LASF660:
	.string	"S_FATT_DIE4"
.LASF661:
	.string	"S_FATT_DIE5"
.LASF662:
	.string	"S_FATT_DIE6"
.LASF663:
	.string	"S_FATT_DIE7"
.LASF664:
	.string	"S_FATT_DIE8"
.LASF665:
	.string	"S_FATT_DIE9"
.LASF732:
	.string	"S_TROO_XDIE2"
.LASF733:
	.string	"S_TROO_XDIE3"
.LASF734:
	.string	"S_TROO_XDIE4"
.LASF735:
	.string	"S_TROO_XDIE5"
.LASF736:
	.string	"S_TROO_XDIE6"
.LASF737:
	.string	"S_TROO_XDIE7"
.LASF738:
	.string	"S_TROO_XDIE8"
.LASF207:
	.string	"SPR_CLIP"
.LASF1179:
	.string	"S_SHRTREDCOL"
.LASF1222:
	.string	"S_HANGTSKULL"
.LASF1751:
	.string	"infile"
.LASF1517:
	.string	"players"
.LASF1488:
	.string	"respawnparm"
.LASF1754:
	.string	"IdentifyVersion"
.LASF21:
	.string	"_IO_buf_base"
.LASF103:
	.string	"NUMPOWERS"
.LASF1765:
	.string	"numwadfiles"
.LASF1007:
	.string	"S_SSWV_ATK3"
.LASF1008:
	.string	"S_SSWV_ATK4"
.LASF313:
	.string	"S_DSGUN10"
.LASF1753:
	.string	"firstargv"
.LASF98:
	.string	"pw_strength"
.LASF511:
	.string	"S_VILE_STND2"
.LASF241:
	.string	"SPR_CAND"
.LASF1258:
	.string	"MT_SERGEANT"
.LASF67:
	.string	"sk_easy"
.LASF16:
	.string	"_IO_read_end"
.LASF1109:
	.string	"S_STIM"
.LASF93:
	.string	"am_cell"
.LASF72:
	.string	"it_bluecard"
.LASF1421:
	.string	"floorz"
.LASF772:
	.string	"S_HEAD_RUN1"
.LASF427:
	.string	"S_PLAY_DIE1"
.LASF428:
	.string	"S_PLAY_DIE2"
.LASF429:
	.string	"S_PLAY_DIE3"
.LASF430:
	.string	"S_PLAY_DIE4"
.LASF123:
	.string	"_IO_FILE"
.LASF432:
	.string	"S_PLAY_DIE6"
.LASF433:
	.string	"S_PLAY_DIE7"
.LASF443:
	.string	"S_POSS_STND"
.LASF1744:
	.string	"statcopy"
.LASF399:
	.string	"S_TFOG"
.LASF46:
	.string	"_IO_wide_data"
.LASF1337:
	.string	"MT_MISC41"
.LASF1672:
	.string	"S_Init"
.LASF1437:
	.string	"subsector_s"
.LASF759:
	.string	"S_SARG_DIE1"
.LASF1631:
	.string	"data1"
.LASF760:
	.string	"S_SARG_DIE2"
.LASF1632:
	.string	"data2"
.LASF761:
	.string	"S_SARG_DIE3"
.LASF1633:
	.string	"data3"
.LASF762:
	.string	"S_SARG_DIE4"
.LASF1060:
	.string	"S_SPAWNFIRE1"
.LASF1061:
	.string	"S_SPAWNFIRE2"
.LASF1062:
	.string	"S_SPAWNFIRE3"
.LASF1063:
	.string	"S_SPAWNFIRE4"
.LASF1064:
	.string	"S_SPAWNFIRE5"
.LASF1065:
	.string	"S_SPAWNFIRE6"
.LASF1066:
	.string	"S_SPAWNFIRE7"
.LASF64:
	.string	"GS_DEMOSCREEN"
.LASF731:
	.string	"S_TROO_XDIE1"
.LASF1477:
	.string	"consistancy"
.LASF1438:
	.string	"sector"
.LASF1224:
	.string	"S_HANGTNOBRAIN"
.LASF379:
	.string	"S_PLASEXP2"
.LASF380:
	.string	"S_PLASEXP3"
.LASF381:
	.string	"S_PLASEXP4"
.LASF382:
	.string	"S_PLASEXP5"
.LASF85:
	.string	"wp_bfg"
.LASF1208:
	.string	"S_BTORCHSHRT2"
.LASF1209:
	.string	"S_BTORCHSHRT3"
.LASF1210:
	.string	"S_BTORCHSHRT4"
.LASF512:
	.string	"S_VILE_RUN1"
.LASF302:
	.string	"S_DSGUNDOWN"
.LASF514:
	.string	"S_VILE_RUN3"
.LASF515:
	.string	"S_VILE_RUN4"
.LASF516:
	.string	"S_VILE_RUN5"
.LASF517:
	.string	"S_VILE_RUN6"
.LASF518:
	.string	"S_VILE_RUN7"
.LASF519:
	.string	"S_VILE_RUN8"
.LASF520:
	.string	"S_VILE_RUN9"
.LASF763:
	.string	"S_SARG_DIE5"
.LASF764:
	.string	"S_SARG_DIE6"
.LASF1656:
	.string	"drone"
.LASF1415:
	.string	"thinker"
.LASF604:
	.string	"S_SKEL_FIST1"
.LASF605:
	.string	"S_SKEL_FIST2"
.LASF606:
	.string	"S_SKEL_FIST3"
.LASF607:
	.string	"S_SKEL_FIST4"
.LASF343:
	.string	"S_PLASMA"
.LASF1122:
	.string	"S_PINS"
.LASF1768:
	.string	"D_DoAdvanceDemo"
.LASF1195:
	.string	"S_BLUETORCH"
.LASF1748:
	.string	"size"
.LASF633:
	.string	"S_FATT_RUN1"
.LASF634:
	.string	"S_FATT_RUN2"
.LASF635:
	.string	"S_FATT_RUN3"
.LASF636:
	.string	"S_FATT_RUN4"
.LASF100:
	.string	"pw_ironfeet"
.LASF638:
	.string	"S_FATT_RUN6"
.LASF639:
	.string	"S_FATT_RUN7"
.LASF640:
	.string	"S_FATT_RUN8"
.LASF1171:
	.string	"S_MEAT2"
.LASF1172:
	.string	"S_MEAT3"
.LASF40:
	.string	"__pad5"
.LASF1174:
	.string	"S_MEAT5"
.LASF286:
	.string	"S_PISTOLFLASH"
.LASF1595:
	.string	"floorheight"
.LASF506:
	.string	"S_SPOS_RAISE2"
.LASF507:
	.string	"S_SPOS_RAISE3"
.LASF508:
	.string	"S_SPOS_RAISE4"
.LASF509:
	.string	"S_SPOS_RAISE5"
.LASF1655:
	.string	"wadfiles"
.LASF198:
	.string	"SPR_MEDI"
.LASF200:
	.string	"SPR_PINV"
.LASF1048:
	.string	"S_BRAIN_PAIN"
.LASF319:
	.string	"S_CHAINDOWN"
.LASF538:
	.string	"S_VILE_PAIN"
.LASF585:
	.string	"S_TRACER"
.LASF62:
	.string	"GS_INTERMISSION"
.LASF26:
	.string	"_markers"
.LASF1570:
	.string	"mus_ddtbl2"
.LASF1778:
	.string	"fullscreen"
.LASF1005:
	.string	"S_SSWV_ATK1"
.LASF1006:
	.string	"S_SSWV_ATK2"
.LASF535:
	.string	"S_VILE_HEAL1"
.LASF536:
	.string	"S_VILE_HEAL2"
.LASF537:
	.string	"S_VILE_HEAL3"
.LASF1010:
	.string	"S_SSWV_ATK6"
.LASF1430:
	.string	"movecount"
.LASF192:
	.string	"SPR_RKEY"
.LASF1731:
	.string	"ST_Drawer"
.LASF1156:
	.string	"S_STALAG"
.LASF871:
	.string	"S_SPID_STND2"
.LASF115:
	.string	"angle_t"
.LASF36:
	.string	"_codecvt"
.LASF1598:
	.string	"ceilingpic"
.LASF1157:
	.string	"S_BLOODYTWITCH"
.LASF1226:
	.string	"S_SMALLPOOL"
.LASF1413:
	.string	"pspdef_t"
.LASF1352:
	.string	"MT_MISC56"
.LASF655:
	.string	"S_FATT_PAIN"
.LASF419:
	.string	"S_PLAY_RUN1"
.LASF420:
	.string	"S_PLAY_RUN2"
.LASF421:
	.string	"S_PLAY_RUN3"
.LASF422:
	.string	"S_PLAY_RUN4"
.LASF1147:
	.string	"S_BPAK"
.LASF114:
	.string	"double"
.LASF187:
	.string	"SPR_BEXP"
.LASF1490:
	.string	"devparm"
.LASF1441:
	.string	"player_s"
.LASF1104:
	.string	"S_BSKULL2"
.LASF146:
	.string	"SPR_PUFF"
.LASF1033:
	.string	"S_COMMKEEN"
.LASF1458:
	.string	"usedown"
.LASF825:
	.string	"S_BOS2_STND"
.LASF152:
	.string	"SPR_BFS1"
.LASF1056:
	.string	"S_SPAWN1"
.LASF1057:
	.string	"S_SPAWN2"
.LASF1058:
	.string	"S_SPAWN3"
.LASF1059:
	.string	"S_SPAWN4"
.LASF1229:
	.string	"S_TECHLAMP2"
.LASF1230:
	.string	"S_TECHLAMP3"
.LASF86:
	.string	"wp_chainsaw"
.LASF1266:
	.string	"MT_BABY"
.LASF1456:
	.string	"maxammo"
.LASF1723:
	.string	"R_FillBackScreen"
.LASF1761:
	.string	"tntwad"
.LASF1170:
	.string	"S_LIVESTICK2"
.LASF1773:
	.string	"filename"
.LASF1215:
	.string	"S_RTORCHSHRT"
.LASF1312:
	.string	"MT_MISC19"
.LASF174:
	.string	"SPR_SPID"
.LASF771:
	.string	"S_HEAD_STND"
.LASF1502:
	.string	"automapactive"
.LASF1741:
	.string	"scale"
.LASF1719:
	.string	"NetUpdate"
.LASF746:
	.string	"S_SARG_RUN1"
.LASF747:
	.string	"S_SARG_RUN2"
.LASF749:
	.string	"S_SARG_RUN4"
.LASF750:
	.string	"S_SARG_RUN5"
.LASF751:
	.string	"S_SARG_RUN6"
.LASF752:
	.string	"S_SARG_RUN7"
.LASF753:
	.string	"S_SARG_RUN8"
.LASF1290:
	.string	"MT_MISC1"
.LASF1291:
	.string	"MT_MISC2"
.LASF1292:
	.string	"MT_MISC3"
.LASF1293:
	.string	"MT_MISC4"
.LASF1294:
	.string	"MT_MISC5"
.LASF1295:
	.string	"MT_MISC6"
.LASF1296:
	.string	"MT_MISC7"
.LASF1297:
	.string	"MT_MISC8"
.LASF1298:
	.string	"MT_MISC9"
.LASF336:
	.string	"S_SAW"
.LASF203:
	.string	"SPR_MEGA"
.LASF425:
	.string	"S_PLAY_PAIN"
.LASF377:
	.string	"S_PLASBALL2"
.LASF1410:
	.string	"ps_flash"
.LASF1442:
	.string	"playerstate"
.LASF1673:
	.string	"D_CheckNetGame"
.LASF181:
	.string	"SPR_KEEN"
.LASF1011:
	.string	"S_SSWV_PAIN"
.LASF1392:
	.string	"painstate"
.LASF1046:
	.string	"S_KEENPAIN2"
.LASF102:
	.string	"pw_infrared"
.LASF533:
	.string	"S_VILE_ATK10"
.LASF534:
	.string	"S_VILE_ATK11"
.LASF1772:
	.string	"D_DoomLoop"
.LASF1623:
	.string	"topoffset"
.LASF1012:
	.string	"S_SSWV_PAIN2"
.LASF1376:
	.string	"MT_MISC80"
.LASF1399:
	.string	"deathsound"
.LASF1086:
	.string	"S_BON1A"
.LASF1087:
	.string	"S_BON1B"
.LASF1088:
	.string	"S_BON1C"
.LASF1089:
	.string	"S_BON1D"
.LASF1090:
	.string	"S_BON1E"
.LASF1646:
	.string	"events"
.LASF1615:
	.string	"sector_t"
.LASF1666:
	.string	"G_InitNew"
.LASF1621:
	.string	"width"
.LASF201:
	.string	"SPR_PSTR"
.LASF1314:
	.string	"MT_MISC21"
.LASF757:
	.string	"S_SARG_PAIN"
.LASF190:
	.string	"SPR_BON2"
.LASF1309:
	.string	"MT_CLIP"
.LASF216:
	.string	"SPR_BFUG"
.LASF1364:
	.string	"MT_MISC68"
.LASF1082:
	.string	"S_BBAR1"
.LASF1083:
	.string	"S_BBAR2"
.LASF1084:
	.string	"S_BBAR3"
.LASF270:
	.string	"S_LIGHTDONE"
.LASF921:
	.string	"S_BSPI_PAIN2"
.LASF1450:
	.string	"backpack"
.LASF1576:
	.string	"mus_messag"
.LASF721:
	.string	"S_TROO_ATK1"
.LASF722:
	.string	"S_TROO_ATK2"
.LASF723:
	.string	"S_TROO_ATK3"
.LASF865:
	.string	"S_SKULL_DIE2"
.LASF866:
	.string	"S_SKULL_DIE3"
.LASF867:
	.string	"S_SKULL_DIE4"
.LASF868:
	.string	"S_SKULL_DIE5"
.LASF869:
	.string	"S_SKULL_DIE6"
.LASF220:
	.string	"SPR_PLAS"
.LASF1092:
	.string	"S_BON2A"
.LASF1093:
	.string	"S_BON2B"
.LASF133:
	.string	"SPR_PISF"
.LASF132:
	.string	"SPR_PISG"
.LASF1096:
	.string	"S_BON2E"
.LASF1319:
	.string	"MT_CHAINGUN"
.LASF368:
	.string	"S_TBALLX1"
.LASF369:
	.string	"S_TBALLX2"
.LASF370:
	.string	"S_TBALLX3"
.LASF89:
	.string	"wp_nochange"
.LASF431:
	.string	"S_PLAY_DIE5"
.LASF1256:
	.string	"MT_CHAINGUY"
.LASF1594:
	.string	"degenmobj_t"
.LASF1128:
	.string	"S_MEGA3"
.LASF864:
	.string	"S_SKULL_DIE1"
.LASF1482:
	.string	"PST_DEAD"
.LASF1227:
	.string	"S_BRAINSTEM"
.LASF1032:
	.string	"S_KEENSTND"
.LASF1132:
	.string	"S_PMAP2"
.LASF157:
	.string	"SPR_PLAY"
.LASF39:
	.string	"_freeres_buf"
.LASF1569:
	.string	"mus_doom2"
.LASF1452:
	.string	"readyweapon"
.LASF1745:
	.string	"D_DoomMain"
.LASF1708:
	.string	"I_InitGraphics"
.LASF48:
	.string	"long long unsigned int"
.LASF1167:
	.string	"S_HEADCANDLES2"
.LASF1286:
	.string	"MT_IFOG"
.LASF31:
	.string	"_cur_column"
.LASF1573:
	.string	"mus_stlks3"
.LASF248:
	.string	"SPR_FSKU"
.LASF483:
	.string	"S_SPOS_RUN6"
.LASF339:
	.string	"S_SAWUP"
.LASF1072:
	.string	"S_ARM1A"
.LASF675:
	.string	"S_CPOS_STND"
.LASF1327:
	.string	"MT_MISC31"
.LASF1425:
	.string	"momz"
.LASF1146:
	.string	"S_SBOX"
.LASF1601:
	.string	"soundtraversed"
.LASF1330:
	.string	"MT_MISC34"
.LASF1611:
	.string	"bbox"
.LASF378:
	.string	"S_PLASEXP"
.LASF1333:
	.string	"MT_MISC37"
.LASF1162:
	.string	"S_DEADBOTTOM"
.LASF1219:
	.string	"S_HANGNOGUTS"
.LASF233:
	.string	"SPR_GOR3"
.LASF1391:
	.string	"attacksound"
.LASF1123:
	.string	"S_PINS2"
.LASF1124:
	.string	"S_PINS3"
.LASF1125:
	.string	"S_PINS4"
.LASF977:
	.string	"S_PAIN_ATK1"
.LASF978:
	.string	"S_PAIN_ATK2"
.LASF979:
	.string	"S_PAIN_ATK3"
.LASF980:
	.string	"S_PAIN_ATK4"
.LASF289:
	.string	"S_SGUNUP"
.LASF1613:
	.string	"frontsector"
.LASF242:
	.string	"SPR_CBRA"
.LASF1397:
	.string	"deathstate"
.LASF1074:
	.string	"S_ARM2A"
.LASF943:
	.string	"S_CYBER_STND"
.LASF1622:
	.string	"leftoffset"
.LASF1102:
	.string	"S_YKEY2"
.LASF552:
	.string	"S_FIRE3"
.LASF1390:
	.string	"reactiontime"
.LASF24:
	.string	"_IO_backup_base"
.LASF1643:
	.string	"ga_worlddone"
.LASF557:
	.string	"S_FIRE8"
.LASF797:
	.string	"S_BOSS_STND2"
.LASF1647:
	.string	"eventhead"
.LASF15:
	.string	"_IO_read_ptr"
.LASF1417:
	.string	"sprev"
.LASF340:
	.string	"S_SAW1"
.LASF341:
	.string	"S_SAW2"
.LASF342:
	.string	"S_SAW3"
.LASF1085:
	.string	"S_BON1"
.LASF1091:
	.string	"S_BON2"
.LASF1433:
	.string	"player"
.LASF1733:
	.string	"HU_Erase"
.LASF1562:
	.string	"mus_the_da"
.LASF337:
	.string	"S_SAWB"
.LASF1763:
	.string	"doomwaddir"
.LASF725:
	.string	"S_TROO_PAIN2"
.LASF38:
	.string	"_freeres_list"
.LASF1272:
	.string	"MT_BOSSSPIT"
.LASF550:
	.string	"S_FIRE1"
.LASF551:
	.string	"S_FIRE2"
.LASF112:
	.string	"fixed_t"
.LASF553:
	.string	"S_FIRE4"
.LASF554:
	.string	"S_FIRE5"
.LASF555:
	.string	"S_FIRE6"
.LASF556:
	.string	"S_FIRE7"
.LASF210:
	.string	"SPR_BROK"
.LASF558:
	.string	"S_FIRE9"
.LASF1340:
	.string	"MT_MISC44"
.LASF1341:
	.string	"MT_MISC45"
.LASF1143:
	.string	"S_CELL"
.LASF1343:
	.string	"MT_MISC47"
.LASF208:
	.string	"SPR_AMMO"
.LASF1344:
	.string	"MT_MISC48"
.LASF1345:
	.string	"MT_MISC49"
.LASF856:
	.string	"S_SKULL_RUN1"
.LASF857:
	.string	"S_SKULL_RUN2"
.LASF1223:
	.string	"S_HANGTLOOKUP"
.LASF318:
	.string	"S_CHAIN"
.LASF1515:
	.string	"gamestate"
.LASF1630:
	.string	"evtype_t"
.LASF348:
	.string	"S_PLASMAFLASH1"
.LASF304:
	.string	"S_DSGUN1"
.LASF305:
	.string	"S_DSGUN2"
.LASF199:
	.string	"SPR_SOUL"
.LASF159:
	.string	"SPR_SPOS"
.LASF308:
	.string	"S_DSGUN5"
.LASF309:
	.string	"S_DSGUN6"
.LASF310:
	.string	"S_DSGUN7"
.LASF311:
	.string	"S_DSGUN8"
.LASF312:
	.string	"S_DSGUN9"
.LASF1746:
	.string	"FindResponseFile"
.LASF476:
	.string	"S_SPOS_STND"
.LASF179:
	.string	"SPR_PAIN"
.LASF704:
	.string	"S_CPOS_RAISE1"
.LASF1451:
	.string	"frags"
.LASF1600:
	.string	"special"
.LASF1716:
	.string	"I_GetTime"
.LASF30:
	.string	"_old_offset"
.LASF1446:
	.string	"armorpoints"
.LASF1479:
	.string	"buttons"
.LASF1779:
	.string	"oldgamestate"
.LASF353:
	.string	"S_BFG1"
.LASF354:
	.string	"S_BFG2"
.LASF355:
	.string	"S_BFG3"
.LASF356:
	.string	"S_BFG4"
.LASF1664:
	.string	"pagename"
.LASF268:
	.string	"spritenum_t"
.LASF315:
	.string	"S_DSNR2"
.LASF855:
	.string	"S_SKULL_STND2"
.LASF1118:
	.string	"S_PINV2"
.LASF1119:
	.string	"S_PINV3"
.LASF748:
	.string	"S_SARG_RUN3"
.LASF1233:
	.string	"S_TECH2LAMP2"
.LASF1234:
	.string	"S_TECH2LAMP3"
.LASF1235:
	.string	"S_TECH2LAMP4"
.LASF1653:
	.string	"myargc"
.LASF1609:
	.string	"line_s"
.LASF47:
	.string	"long long int"
.LASF131:
	.string	"SPR_PUNG"
.LASF699:
	.string	"S_CPOS_XDIE2"
.LASF700:
	.string	"S_CPOS_XDIE3"
.LASF701:
	.string	"S_CPOS_XDIE4"
.LASF702:
	.string	"S_CPOS_XDIE5"
.LASF703:
	.string	"S_CPOS_XDIE6"
.LASF1582:
	.string	"mus_messg2"
.LASF884:
	.string	"S_SPID_ATK1"
.LASF885:
	.string	"S_SPID_ATK2"
.LASF886:
	.string	"S_SPID_ATK3"
.LASF29:
	.string	"_flags2"
.LASF608:
	.string	"S_SKEL_MISS1"
.LASF609:
	.string	"S_SKEL_MISS2"
.LASF610:
	.string	"S_SKEL_MISS3"
.LASF611:
	.string	"S_SKEL_MISS4"
.LASF365:
	.string	"S_PUFF4"
.LASF1105:
	.string	"S_RSKULL"
.LASF937:
	.string	"S_ARACH_PLAZ2"
.LASF1346:
	.string	"MT_MISC50"
.LASF785:
	.string	"S_HEAD_RAISE1"
.LASF1381:
	.string	"MT_MISC85"
.LASF786:
	.string	"S_HEAD_RAISE2"
.LASF787:
	.string	"S_HEAD_RAISE3"
.LASF1459:
	.string	"cheats"
.LASF194:
	.string	"SPR_BSKU"
.LASF789:
	.string	"S_HEAD_RAISE5"
.LASF790:
	.string	"S_HEAD_RAISE6"
.LASF1700:
	.string	"I_SubmitSound"
.LASF1354:
	.string	"MT_MISC58"
.LASF1685:
	.string	"memset"
.LASF1324:
	.string	"MT_SUPERSHOTGUN"
.LASF205:
	.string	"SPR_PMAP"
.LASF1053:
	.string	"S_BRAINEYE"
.LASF206:
	.string	"SPR_PVIS"
.LASF1481:
	.string	"PST_LIVE"
.LASF1677:
	.string	"M_Init"
.LASF1282:
	.string	"MT_ARACHPLAZ"
.LASF531:
	.string	"S_VILE_ATK8"
.LASF472:
	.string	"S_POSS_RAISE1"
.LASF473:
	.string	"S_POSS_RAISE2"
.LASF474:
	.string	"S_POSS_RAISE3"
.LASF475:
	.string	"S_POSS_RAISE4"
.LASF327:
	.string	"S_MISSILEDOWN"
.LASF1681:
	.string	"V_Init"
.LASF1191:
	.string	"S_FLOATSKULL2"
.LASF1192:
	.string	"S_FLOATSKULL3"
.LASF1638:
	.string	"ga_loadgame"
.LASF1126:
	.string	"S_MEGA"
.LASF806:
	.string	"S_BOSS_ATK1"
.LASF807:
	.string	"S_BOSS_ATK2"
.LASF808:
	.string	"S_BOSS_ATK3"
.LASF1420:
	.string	"subsector"
.LASF264:
	.string	"SPR_BRS1"
.LASF1593:
	.string	"vertex_t"
.LASF613:
	.string	"S_SKEL_PAIN2"
.LASF1150:
	.string	"S_CSAW"
.LASF97:
	.string	"pw_invulnerability"
.LASF1661:
	.string	"setsizeneeded"
.LASF793:
	.string	"S_BRBALLX1"
.LASF794:
	.string	"S_BRBALLX2"
.LASF795:
	.string	"S_BRBALLX3"
.LASF923:
	.string	"S_BSPI_DIE2"
.LASF924:
	.string	"S_BSPI_DIE3"
.LASF925:
	.string	"S_BSPI_DIE4"
.LASF926:
	.string	"S_BSPI_DIE5"
.LASF82:
	.string	"wp_chaingun"
.LASF928:
	.string	"S_BSPI_DIE7"
.LASF1580:
	.string	"mus_theda3"
.LASF71:
	.string	"skill_t"
.LASF852:
	.string	"S_BOS2_RAISE6"
.LASF479:
	.string	"S_SPOS_RUN2"
.LASF1614:
	.string	"backsector"
.LASF480:
	.string	"S_SPOS_RUN3"
.LASF982:
	.string	"S_PAIN_PAIN2"
.LASF617:
	.string	"S_SKEL_DIE4"
.LASF213:
	.string	"SPR_SHEL"
.LASF1365:
	.string	"MT_MISC69"
.LASF1447:
	.string	"armortype"
.LASF104:
	.string	"false"
.LASF265:
	.string	"SPR_TLMP"
.LASF1602:
	.string	"soundtarget"
.LASF444:
	.string	"S_POSS_STND2"
.LASF1323:
	.string	"MT_SHOTGUN"
.LASF1728:
	.string	"I_UpdateNoBlit"
.LASF1701:
	.string	"S_UpdateSounds"
.LASF1717:
	.string	"wipe_EndScreen"
.LASF1248:
	.string	"MT_SHOTGUY"
.LASF1530:
	.string	"mus_e1m6"
.LASF1462:
	.string	"itemcount"
.LASF1532:
	.string	"mus_e1m8"
.LASF1228:
	.string	"S_TECHLAMP"
.LASF1759:
	.string	"doom2fwad"
.LASF1269:
	.string	"MT_WOLFSS"
.LASF1762:
	.string	"home"
.LASF826:
	.string	"S_BOS2_STND2"
.LASF1565:
	.string	"mus_in_cit"
.LASF1507:
	.string	"viewwindowx"
.LASF1508:
	.string	"viewwindowy"
.LASF321:
	.string	"S_CHAIN1"
.LASF322:
	.string	"S_CHAIN2"
.LASF323:
	.string	"S_CHAIN3"
.LASF374:
	.string	"S_RBALLX2"
.LASF375:
	.string	"S_RBALLX3"
.LASF1676:
	.string	"R_Init"
.LASF250:
	.string	"SPR_TBLU"
.LASF477:
	.string	"S_SPOS_STND2"
.LASF4:
	.string	"unsigned int"
.LASF1416:
	.string	"snext"
.LASF96:
	.string	"am_noammo"
.LASF124:
	.string	"thinker_s"
.LASF128:
	.string	"thinker_t"
.LASF1524:
	.string	"mus_None"
.LASF1579:
	.string	"mus_ampie"
.LASF1732:
	.string	"AM_Drawer"
.LASF1067:
	.string	"S_SPAWNFIRE8"
.LASF453:
	.string	"S_POSS_ATK1"
.LASF454:
	.string	"S_POSS_ATK2"
.LASF455:
	.string	"S_POSS_ATK3"
.LASF66:
	.string	"sk_baby"
.LASF1734:
	.string	"wipe_StartScreen"
.LASF1367:
	.string	"MT_MISC71"
.LASF1216:
	.string	"S_RTORCHSHRT2"
.LASF1217:
	.string	"S_RTORCHSHRT3"
.LASF887:
	.string	"S_SPID_ATK4"
.LASF1120:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF904:
	.string	"S_BSPI_RUN1"
.LASF1373:
	.string	"MT_MISC77"
.LASF1374:
	.string	"MT_MISC78"
.LASF1375:
	.string	"MT_MISC79"
.LASF1264:
	.string	"MT_SKULL"
.LASF1689:
	.string	"fseek"
.LASF1251:
	.string	"MT_UNDEAD"
.LASF55:
	.string	"GameMode_t"
.LASF125:
	.string	"prev"
.LASF32:
	.string	"_vtable_offset"
.LASF614:
	.string	"S_SKEL_DIE1"
.LASF615:
	.string	"S_SKEL_DIE2"
.LASF616:
	.string	"S_SKEL_DIE3"
.LASF161:
	.string	"SPR_FIRE"
.LASF618:
	.string	"S_SKEL_DIE5"
.LASF619:
	.string	"S_SKEL_DIE6"
.LASF1513:
	.string	"demorecording"
.LASF1776:
	.string	"menuactivestate"
.LASF1225:
	.string	"S_COLONGIBS"
.LASF1715:
	.string	"getchar"
.LASF1491:
	.string	"gamemode"
.LASF266:
	.string	"SPR_TLP2"
.LASF376:
	.string	"S_PLASBALL"
.LASF222:
	.string	"SPR_SGN2"
.LASF110:
	.string	"options"
.LASF175:
	.string	"SPR_BSPI"
.LASF1757:
	.string	"doomuwad"
.LASF1526:
	.string	"mus_e1m2"
.LASF177:
	.string	"SPR_APBX"
.LASF1470:
	.string	"colormap"
.LASF53:
	.string	"retail"
.LASF1300:
	.string	"MT_MISC11"
.LASF1301:
	.string	"MT_MISC12"
.LASF1303:
	.string	"MT_MISC13"
.LASF1305:
	.string	"MT_MISC14"
.LASF1306:
	.string	"MT_MISC15"
.LASF1307:
	.string	"MT_MISC16"
.LASF1310:
	.string	"MT_MISC17"
.LASF1311:
	.string	"MT_MISC18"
.LASF1139:
	.string	"S_CLIP"
.LASF1401:
	.string	"radius"
.LASF1428:
	.string	"health"
.LASF1273:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"d_main.c"
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
