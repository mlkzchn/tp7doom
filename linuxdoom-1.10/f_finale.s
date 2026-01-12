	.file	"f_finale.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "f_finale.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: f_finale.c,v 1.5 1997/02/03 21:26:34 b1 Exp $"
	.globl	finalestage
	.bss
	.align 4
	.type	finalestage, @object
	.size	finalestage, 4
finalestage:
	.zero	4
	.globl	finalecount
	.align 4
	.type	finalecount, @object
	.size	finalecount, 4
finalecount:
	.zero	4
	.globl	e1text
	.section	.rodata
	.align 8
.LC0:
	.ascii	"Once you beat the big badasses and\nclean out the moon base "
	.ascii	"you're supposed\nto win, aren't you? Aren't you? Where's\nyo"
	.ascii	"ur fat reward and ticket home? What\nthe hell is this? It's "
	.ascii	"not supp"
	.string	"osed to\nend this way!\n\nIt stinks like rotten meat, but looks\nlike the lost Deimos base.  Looks like\nyou're stuck on The Shores of Hell.\nThe only way out is through.\n\nTo continue the DOOM experience, play\nThe Shores of Hell and its amazing\nsequel, Inferno!\n"
	.section	.data.rel.local,"aw"
	.align 8
	.type	e1text, @object
	.size	e1text, 8
e1text:
	.quad	.LC0
	.globl	e2text
	.section	.rodata
	.align 8
.LC1:
	.ascii	"You've done it! The hideous cyber-\ndemon lord that ruled th"
	.ascii	"e lost Deimos\nmoon base has been slain and you\nare triumph"
	.ascii	"ant! But ... where are\nyou? You clamber to the edge of the\n"
	.ascii	"moon and look down to see the awfu"
	.string	"l\ntruth.\n\nDeimos floats above Hell itself!\nYou've never heard of anyone escaping\nfrom Hell, but you'll make the bastards\nsorry they ever heard of you! Quickly,\nyou rappel down to  the surface of\nHell.\n\nNow, it's on to the final chapter of\nDOOM! -- Inferno."
	.section	.data.rel.local
	.align 8
	.type	e2text, @object
	.size	e2text, 8
e2text:
	.quad	.LC1
	.globl	e3text
	.section	.rodata
	.align 8
.LC2:
	.ascii	"The loathsome spiderdemon that\nmasterminded the invasion of"
	.ascii	" the moon\nbases and caused so much death has had\nits ass k"
	.ascii	"icked for all time.\n\nA hidden doorway opens and you enter."
	.ascii	"\nYou've proven too tough for Hell to\ncontain, and now Hell"
	.ascii	" at"
	.string	" last plays\nfair -- for you emerge from the door\nto see the green fields of Earth!\nHome at last.\n\nYou wonder what's been happening on\nEarth while you were battling evil\nunleashed. It's good that no Hell-\nspawn could have come through that\ndoor with you ..."
	.section	.data.rel.local
	.align 8
	.type	e3text, @object
	.size	e3text, 8
e3text:
	.quad	.LC2
	.globl	e4text
	.section	.rodata
	.align 8
.LC3:
	.ascii	"the spider mastermind must have sent forth\nits legions of h"
	.ascii	"ellspawn before your\nfinal confrontation with that terrible"
	.ascii	"\nbeast from hell.  but you stepped forward\nand brought for"
	.ascii	"th eternal damnation and\nsuffering upon the horde as a true"
	.ascii	" hero\nwould "
	.string	"in the face of something so evil.\n\nbesides, someone was gonna pay for what\nhappened to daisy, your pet rabbit.\n\nbut now, you see spread before you more\npotential pain and gibbitude as a nation\nof demons run amok among our cities.\n\nnext stop, hell on earth!"
	.section	.data.rel.local
	.align 8
	.type	e4text, @object
	.size	e4text, 8
e4text:
	.quad	.LC3
	.globl	c1text
	.section	.rodata
	.align 8
.LC4:
	.ascii	"YOU HAVE ENTERED DEEPLY INTO THE INFESTED\nSTARPORT. BUT SOM"
	.ascii	"ETHING IS WRONG. THE\nMONSTERS HAVE BROUGHT THEIR OWN REALIT"
	.ascii	"Y\nWITH THEM, AND THE STARPORT'S"
	.string	" TECHNOLOGY\nIS BEING SUBVERTED BY THEIR PRESENCE.\n\nAHEAD, YOU SEE AN OUTPOST OF HELL, A\nFORTIFIED ZONE. IF YOU CAN GET PAST IT,\nYOU CAN PENETRATE INTO THE HAUNTED HEART\nOF THE STARBASE AND FIND THE CONTROLLING\nSWITCH WHICH HOLDS EARTH'S POPULATION\nHOSTAGE."
	.section	.data.rel.local
	.align 8
	.type	c1text, @object
	.size	c1text, 8
c1text:
	.quad	.LC4
	.globl	c2text
	.section	.rodata
	.align 8
.LC5:
	.ascii	"YOU HAVE WON! YOUR VICTORY HAS ENABLED\nHUMANKIND TO EVACUAT"
	.ascii	"E EARTH AND ESCAPE\nTHE NIGHTMARE.  NOW YOU ARE THE ONLY\nHU"
	.ascii	"MAN LEFT ON THE FACE OF THE PLANET.\nCANNIBAL MUTATIONS, CAR"
	.ascii	"NIVOROUS ALIENS,\nAND EVIL SPIRITS ARE YOUR ONLY NEIGHBORS.\n"
	.ascii	"YOU SIT BACK AND WAIT FOR DEATH, CONTENT\nTHAT YOU HAVE SAVE"
	.ascii	"D YOUR SPECIES.\n\nBUT THEN, EARTH CONTROL BEAMS DOWN A\nMES"
	.ascii	"SAGE FROM "
	.string	"SPACE: \"SENSORS HAVE LOCATED\nTHE SOURCE OF THE ALIEN INVASION. IF YOU\nGO THERE, YOU MAY BE ABLE TO BLOCK THEIR\nENTRY.  THE ALIEN BASE IS IN THE HEART OF\nYOUR OWN HOME CITY, NOT FAR FROM THE\nSTARPORT.\" SLOWLY AND PAINFULLY YOU GET\nUP AND RETURN TO THE FRAY."
	.section	.data.rel.local
	.align 8
	.type	c2text, @object
	.size	c2text, 8
c2text:
	.quad	.LC5
	.globl	c3text
	.section	.rodata
	.align 8
.LC6:
	.ascii	"YOU ARE AT THE CORRUPT HEART OF THE CITY,\nSURROUNDED BY "
	.string	"THE CORPSES OF YOUR ENEMIES.\nYOU SEE NO WAY TO DESTROY THE CREATURES'\nENTRYWAY ON THIS SIDE, SO YOU CLENCH YOUR\nTEETH AND PLUNGE THROUGH IT.\n\nTHERE MUST BE A WAY TO CLOSE IT ON THE\nOTHER SIDE. WHAT DO YOU CARE IF YOU'VE\nGOT TO GO THROUGH HELL TO GET TO IT?"
	.section	.data.rel.local
	.align 8
	.type	c3text, @object
	.size	c3text, 8
c3text:
	.quad	.LC6
	.globl	c4text
	.section	.rodata
	.align 8
.LC7:
	.ascii	"THE HORRENDOUS VISAGE OF THE BIGGEST\nDEMON YOU'VE EVER SEEN"
	.ascii	" CRUMBLES BEFORE\nYOU, AFTER YOU PUMP YOUR ROCKETS INTO\nHIS"
	.ascii	" EXPOSED BRAIN. THE MONSTER SHRIVELS\nUP AND DIES, ITS THRAS"
	.ascii	"HING LIMBS\nDEVASTATING UNTOLD MILES OF HELL'S\nSURFACE.\n\n"
	.ascii	"YOU'VE"
	.string	" DONE IT. THE INVASION IS OVER.\nEARTH IS SAVED. HELL IS A WRECK. YOU\nWONDER WHERE BAD FOLKS WILL GO WHEN THEY\nDIE, NOW. WIPING THE SWEAT FROM YOUR\nFOREHEAD YOU BEGIN THE LONG TREK BACK\nHOME. REBUILDING EARTH OUGHT TO BE A\nLOT MORE FUN THAN RUINING IT WAS.\n"
	.section	.data.rel.local
	.align 8
	.type	c4text, @object
	.size	c4text, 8
c4text:
	.quad	.LC7
	.globl	c5text
	.section	.rodata
	.align 8
.LC8:
	.string	"CONGRATULATIONS, YOU'VE FOUND THE SECRET\nLEVEL! LOOKS LIKE IT'S BEEN BUILT BY\nHUMANS, RATHER THAN DEMONS. YOU WONDER\nWHO THE INMATES OF THIS CORNER OF HELL\nWILL BE."
	.section	.data.rel.local
	.align 8
	.type	c5text, @object
	.size	c5text, 8
c5text:
	.quad	.LC8
	.globl	c6text
	.section	.rodata
	.align 8
.LC9:
	.string	"CONGRATULATIONS, YOU'VE FOUND THE\nSUPER SECRET LEVEL!  YOU'D BETTER\nBLAZE THROUGH THIS ONE!\n"
	.section	.data.rel.local
	.align 8
	.type	c6text, @object
	.size	c6text, 8
c6text:
	.quad	.LC9
	.globl	p1text
	.section	.rodata
	.align 8
.LC10:
	.ascii	"You gloat over the steaming carcass of the\nGuardian.  With "
	.ascii	"its death, you've wrested\nthe Accelerator from the stinking"
	.ascii	" claws\nof Hell.  You relax and glance around the\nroom.  Da"
	.ascii	"m"
	.string	"n!  There was supposed to be at\nleast one working prototype, but you can't\nsee it. The demons must have taken it.\n\nYou must find the prototype, or all your\nstruggles will have been wasted. Keep\nmoving, keep fighting, keep killing.\nOh yes, keep living, too."
	.section	.data.rel.local
	.align 8
	.type	p1text, @object
	.size	p1text, 8
p1text:
	.quad	.LC10
	.globl	p2text
	.section	.rodata
	.align 8
.LC11:
	.string	"Even the deadly Arch-Vile labyrinth could\nnot stop you, and you've gotten to the\nprototype Accelerator which is soon\nefficiently and permanently deactivated.\n\nYou're good at that kind of thing."
	.section	.data.rel.local
	.align 8
	.type	p2text, @object
	.size	p2text, 8
p2text:
	.quad	.LC11
	.globl	p3text
	.section	.rodata
	.align 8
.LC12:
	.ascii	"You've bashed and battered your way into\nthe heart of the d"
	.ascii	"evil-hive.  T"
	.string	"ime for a\nSearch-and-Destroy mission, aimed at the\nGatekeeper, whose foul offspring is\ncascading to Earth.  Yeah, he's bad. But\nyou know who's worse!\n\nGrinning evilly, you check your gear, and\nget ready to give the bastard a little Hell\nof your own making!"
	.section	.data.rel.local
	.align 8
	.type	p3text, @object
	.size	p3text, 8
p3text:
	.quad	.LC12
	.globl	p4text
	.section	.rodata
	.align 8
.LC13:
	.ascii	"The Gatekeeper's evil face is splattered\nall over the place"
	.ascii	".  As its tattered corpse\ncollapses, an inverted Gate forms"
	.ascii	" and\nsucks down the shards of the last\nprototype Accelerat"
	.ascii	"or, not to mention the\nfew r"
	.string	"emaining demons.  You're done. Hell\nhas gone back to pounding bad dead folks \ninstead of good live ones.  Remember to\ntell your grandkids to put a rocket\nlauncher in your coffin. If you go to Hell\nwhen you die, you'll need it for some\nfinal cleaning-up ..."
	.section	.data.rel.local
	.align 8
	.type	p4text, @object
	.size	p4text, 8
p4text:
	.quad	.LC13
	.globl	p5text
	.section	.rodata
	.align 8
.LC14:
	.string	"You've found the second-hardest level we\ngot. Hope you have a saved game a level or\ntwo previous.  If not, be prepared to die\naplenty. For master marines only."
	.section	.data.rel.local
	.align 8
	.type	p5text, @object
	.size	p5text, 8
p5text:
	.quad	.LC14
	.globl	p6text
	.section	.rodata
	.align 8
.LC15:
	.string	"Betcha wondered just what WAS the hardest\nlevel we had ready for ya?  Now you know.\nNo one gets out alive."
	.section	.data.rel.local
	.align 8
	.type	p6text, @object
	.size	p6text, 8
p6text:
	.quad	.LC15
	.globl	t1text
	.section	.rodata
	.align 8
.LC16:
	.ascii	"You've fought your way out of the infested\nexperimental lab"
	.ascii	"s.   It seems that UAC has\nonce again gulped it down.  With"
	.ascii	" their\nhigh tur"
	.string	"nover, it must be hard for poor\nold UAC to buy corporate health insurance\nnowadays..\n\nAhead lies the military complex, now\nswarming with diseased horrors hot to get\ntheir teeth into you. With luck, the\ncomplex still has some warlike ordnance\nlaying around."
	.section	.data.rel.local
	.align 8
	.type	t1text, @object
	.size	t1text, 8
t1text:
	.quad	.LC16
	.globl	t2text
	.section	.rodata
	.align 8
.LC17:
	.ascii	"You hear the grinding of heavy machinery\nahead.  You s"
	.string	"ure hope they're not stamping\nout new hellspawn, but you're ready to\nream out a whole herd if you have to.\nThey might be planning a blood feast, but\nyou feel about as mean as two thousand\nmaniacs packed into one mad killer.\n\nYou don't plan to go down easy."
	.section	.data.rel.local
	.align 8
	.type	t2text, @object
	.size	t2text, 8
t2text:
	.quad	.LC17
	.globl	t3text
	.section	.rodata
	.align 8
.LC18:
	.ascii	"The vista opening ahead looks real damn\nfamiliar. Sme"
	.string	"lls familiar, too -- like\nfried excrement. You didn't like this\nplace before, and you sure as hell ain't\nplanning to like it now. The more you\nbrood on it, the madder you get.\nHefting your gun, an evil grin trickles\nonto your face. Time to take some names."
	.section	.data.rel.local
	.align 8
	.type	t3text, @object
	.size	t3text, 8
t3text:
	.quad	.LC18
	.globl	t4text
	.section	.rodata
	.align 8
.LC19:
	.ascii	"Suddenly, all is silent, from one horizon\nto the other. The"
	.ascii	" agonizing echo of Hell\nfades away, the nightmare sky turns"
	.ascii	" to\nblue, t"
	.string	"he heaps of monster corpses start \nto evaporate along with the evil stench \nthat filled the air. Jeeze, maybe you've\ndone it. Have you really won?\n\nSomething rumbles in the distance.\nA blue light begins to glow inside the\nruined skull of the demon-spitter."
	.section	.data.rel.local
	.align 8
	.type	t4text, @object
	.size	t4text, 8
t4text:
	.quad	.LC19
	.globl	t5text
	.section	.rodata
	.align 8
.LC20:
	.string	"What now? Looks totally different. Kind\nof like King Tut's condo. Well,\nwhatever's here can't be any worse\nthan usual. Can it?  Or maybe it's best\nto let sleeping gods lie.."
	.section	.data.rel.local
	.align 8
	.type	t5text, @object
	.size	t5text, 8
t5text:
	.quad	.LC20
	.globl	t6text
	.section	.rodata
	.align 8
.LC21:
	.ascii	"Time for a vacation. You've burst the\nbowels of hell and by"
	.ascii	" golly you're ready\nfor a break. You m"
	.string	"utter to yourself,\nMaybe someone else can kick Hell's ass\nnext time around. Ahead lies a quiet town,\nwith peaceful flowing water, quaint\nbuildings, and presumably no Hellspawn.\n\nAs you step off the transport, you hear\nthe stomp of a cyberdemon's iron shoe."
	.section	.data.rel.local
	.align 8
	.type	t6text, @object
	.size	t6text, 8
t6text:
	.quad	.LC21
	.globl	finaletext
	.bss
	.align 8
	.type	finaletext, @object
	.size	finaletext, 8
finaletext:
	.zero	8
	.globl	finaleflat
	.align 8
	.type	finaleflat, @object
	.size	finaleflat, 8
finaleflat:
	.zero	8
	.section	.rodata
.LC22:
	.string	"FLOOR4_8"
.LC23:
	.string	"SFLR6_1"
.LC24:
	.string	"MFLR8_4"
.LC25:
	.string	"MFLR8_3"
.LC26:
	.string	"SLIME16"
.LC27:
	.string	"RROCK14"
.LC28:
	.string	"RROCK07"
.LC29:
	.string	"RROCK17"
.LC30:
	.string	"RROCK13"
.LC31:
	.string	"RROCK19"
.LC32:
	.string	"F_SKY1"
	.text
	.globl	F_StartFinale
	.type	F_StartFinale, @function
F_StartFinale:
.LFB0:
	.file 1 "f_finale.c"
	.loc 1 97 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# f_finale.c:98:     gameaction = ga_nothing;
	.loc 1 98 16
	movl	$0, gameaction(%rip)	#, gameaction
# f_finale.c:99:     gamestate = GS_FINALE;
	.loc 1 99 15
	movl	$2, gamestate(%rip)	#, gamestate
# f_finale.c:100:     viewactive = false;
	.loc 1 100 16
	movl	$0, viewactive(%rip)	#, viewactive
# f_finale.c:101:     automapactive = false;
	.loc 1 101 19
	movl	$0, automapactive(%rip)	#, automapactive
# f_finale.c:106:     switch ( gamemode )
	.loc 1 106 5
	movl	gamemode(%rip), %eax	# gamemode, gamemode.0_1
	cmpl	$3, %eax	#, gamemode.0_1
	je	.L2	#,
	cmpl	$3, %eax	#, gamemode.0_1
	ja	.L3	#,
	cmpl	$1, %eax	#, gamemode.0_1
	jbe	.L2	#,
	cmpl	$2, %eax	#, gamemode.0_1
	je	.L4	#,
	jmp	.L3	#
.L2:
# f_finale.c:114: 	S_ChangeMusic(mus_victor, true);
	.loc 1 114 2
	movl	$1, %esi	#,
	movl	$31, %edi	#,
	call	S_ChangeMusic@PLT	#
# f_finale.c:116: 	switch (gameepisode)
	.loc 1 116 2
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.1_2
	cmpl	$4, %eax	#, gameepisode.1_2
	je	.L5	#,
	cmpl	$4, %eax	#, gameepisode.1_2
	jg	.L21	#,
	cmpl	$3, %eax	#, gameepisode.1_2
	je	.L7	#,
	cmpl	$3, %eax	#, gameepisode.1_2
	jg	.L21	#,
	cmpl	$1, %eax	#, gameepisode.1_2
	je	.L8	#,
	cmpl	$2, %eax	#, gameepisode.1_2
	je	.L9	#,
# f_finale.c:136: 	    break;
	.loc 1 136 6
	jmp	.L21	#
.L8:
# f_finale.c:119: 	    finaleflat = "FLOOR4_8";
	.loc 1 119 17
	leaq	.LC22(%rip), %rax	#, tmp96
	movq	%rax, finaleflat(%rip)	# tmp96, finaleflat
# f_finale.c:120: 	    finaletext = e1text;
	.loc 1 120 17
	movq	e1text(%rip), %rax	# e1text, e1text.2_3
	movq	%rax, finaletext(%rip)	# e1text.2_3, finaletext
# f_finale.c:121: 	    break;
	.loc 1 121 6
	jmp	.L10	#
.L9:
# f_finale.c:123: 	    finaleflat = "SFLR6_1";
	.loc 1 123 17
	leaq	.LC23(%rip), %rax	#, tmp97
	movq	%rax, finaleflat(%rip)	# tmp97, finaleflat
# f_finale.c:124: 	    finaletext = e2text;
	.loc 1 124 17
	movq	e2text(%rip), %rax	# e2text, e2text.3_4
	movq	%rax, finaletext(%rip)	# e2text.3_4, finaletext
# f_finale.c:125: 	    break;
	.loc 1 125 6
	jmp	.L10	#
.L7:
# f_finale.c:127: 	    finaleflat = "MFLR8_4";
	.loc 1 127 17
	leaq	.LC24(%rip), %rax	#, tmp98
	movq	%rax, finaleflat(%rip)	# tmp98, finaleflat
# f_finale.c:128: 	    finaletext = e3text;
	.loc 1 128 17
	movq	e3text(%rip), %rax	# e3text, e3text.4_5
	movq	%rax, finaletext(%rip)	# e3text.4_5, finaletext
# f_finale.c:129: 	    break;
	.loc 1 129 6
	jmp	.L10	#
.L5:
# f_finale.c:131: 	    finaleflat = "MFLR8_3";
	.loc 1 131 17
	leaq	.LC25(%rip), %rax	#, tmp99
	movq	%rax, finaleflat(%rip)	# tmp99, finaleflat
# f_finale.c:132: 	    finaletext = e4text;
	.loc 1 132 17
	movq	e4text(%rip), %rax	# e4text, e4text.5_6
	movq	%rax, finaletext(%rip)	# e4text.5_6, finaletext
# f_finale.c:133: 	    break;
	.loc 1 133 6
	jmp	.L10	#
.L21:
# f_finale.c:136: 	    break;
	.loc 1 136 6
	nop	
.L10:
# f_finale.c:138: 	break;
	.loc 1 138 2
	jmp	.L11	#
.L4:
# f_finale.c:144: 	  S_ChangeMusic(mus_read_m, true);
	.loc 1 144 4
	movl	$1, %esi	#,
	movl	$65, %edi	#,
	call	S_ChangeMusic@PLT	#
# f_finale.c:146: 	  switch (gamemap)
	.loc 1 146 4
	movl	gamemap(%rip), %eax	# gamemap, gamemap.6_7
	subl	$6, %eax	#, tmp100
	cmpl	$25, %eax	#, tmp100
	ja	.L22	#,
	movl	%eax, %eax	# tmp100, tmp101
	leaq	0(,%rax,4), %rdx	#, tmp102
	leaq	.L14(%rip), %rax	#, tmp103
	movl	(%rdx,%rax), %eax	#, tmp104
	cltq
	leaq	.L14(%rip), %rdx	#, tmp107
	addq	%rdx, %rax	# tmp107, tmp106
	notrack jmp	*%rax	# tmp106
	.section	.rodata
	.align 4
	.align 4
.L14:
	.long	.L19-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L18-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L17-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L16-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L22-.L14
	.long	.L15-.L14
	.long	.L13-.L14
	.text
.L19:
# f_finale.c:149: 	      finaleflat = "SLIME16";
	.loc 1 149 19
	leaq	.LC26(%rip), %rax	#, tmp108
	movq	%rax, finaleflat(%rip)	# tmp108, finaleflat
# f_finale.c:150: 	      finaletext = c1text;
	.loc 1 150 19
	movq	c1text(%rip), %rax	# c1text, c1text.7_8
	movq	%rax, finaletext(%rip)	# c1text.7_8, finaletext
# f_finale.c:151: 	      break;
	.loc 1 151 8
	jmp	.L20	#
.L18:
# f_finale.c:153: 	      finaleflat = "RROCK14";
	.loc 1 153 19
	leaq	.LC27(%rip), %rax	#, tmp109
	movq	%rax, finaleflat(%rip)	# tmp109, finaleflat
# f_finale.c:154: 	      finaletext = c2text;
	.loc 1 154 19
	movq	c2text(%rip), %rax	# c2text, c2text.8_9
	movq	%rax, finaletext(%rip)	# c2text.8_9, finaletext
# f_finale.c:155: 	      break;
	.loc 1 155 8
	jmp	.L20	#
.L16:
# f_finale.c:157: 	      finaleflat = "RROCK07";
	.loc 1 157 19
	leaq	.LC28(%rip), %rax	#, tmp110
	movq	%rax, finaleflat(%rip)	# tmp110, finaleflat
# f_finale.c:158: 	      finaletext = c3text;
	.loc 1 158 19
	movq	c3text(%rip), %rax	# c3text, c3text.9_10
	movq	%rax, finaletext(%rip)	# c3text.9_10, finaletext
# f_finale.c:159: 	      break;
	.loc 1 159 8
	jmp	.L20	#
.L15:
# f_finale.c:161: 	      finaleflat = "RROCK17";
	.loc 1 161 19
	leaq	.LC29(%rip), %rax	#, tmp111
	movq	%rax, finaleflat(%rip)	# tmp111, finaleflat
# f_finale.c:162: 	      finaletext = c4text;
	.loc 1 162 19
	movq	c4text(%rip), %rax	# c4text, c4text.10_11
	movq	%rax, finaletext(%rip)	# c4text.10_11, finaletext
# f_finale.c:163: 	      break;
	.loc 1 163 8
	jmp	.L20	#
.L17:
# f_finale.c:165: 	      finaleflat = "RROCK13";
	.loc 1 165 19
	leaq	.LC30(%rip), %rax	#, tmp112
	movq	%rax, finaleflat(%rip)	# tmp112, finaleflat
# f_finale.c:166: 	      finaletext = c5text;
	.loc 1 166 19
	movq	c5text(%rip), %rax	# c5text, c5text.11_12
	movq	%rax, finaletext(%rip)	# c5text.11_12, finaletext
# f_finale.c:167: 	      break;
	.loc 1 167 8
	jmp	.L20	#
.L13:
# f_finale.c:169: 	      finaleflat = "RROCK19";
	.loc 1 169 19
	leaq	.LC31(%rip), %rax	#, tmp113
	movq	%rax, finaleflat(%rip)	# tmp113, finaleflat
# f_finale.c:170: 	      finaletext = c6text;
	.loc 1 170 19
	movq	c6text(%rip), %rax	# c6text, c6text.12_13
	movq	%rax, finaletext(%rip)	# c6text.12_13, finaletext
# f_finale.c:171: 	      break;
	.loc 1 171 8
	jmp	.L20	#
.L22:
# f_finale.c:174: 	      break;
	.loc 1 174 8
	nop	
.L20:
# f_finale.c:176: 	  break;
	.loc 1 176 4
	jmp	.L11	#
.L3:
# f_finale.c:182: 	S_ChangeMusic(mus_read_m, true);
	.loc 1 182 2
	movl	$1, %esi	#,
	movl	$65, %edi	#,
	call	S_ChangeMusic@PLT	#
# f_finale.c:183: 	finaleflat = "F_SKY1"; // Not used anywhere else.
	.loc 1 183 13
	leaq	.LC32(%rip), %rax	#, tmp114
	movq	%rax, finaleflat(%rip)	# tmp114, finaleflat
# f_finale.c:184: 	finaletext = c1text;  // FIXME - other text, music?
	.loc 1 184 13
	movq	c1text(%rip), %rax	# c1text, c1text.13_14
	movq	%rax, finaletext(%rip)	# c1text.13_14, finaletext
# f_finale.c:185: 	break;
	.loc 1 185 2
	nop	
.L11:
# f_finale.c:188:     finalestage = 0;
	.loc 1 188 17
	movl	$0, finalestage(%rip)	#, finalestage
# f_finale.c:189:     finalecount = 0;
	.loc 1 189 17
	movl	$0, finalecount(%rip)	#, finalecount
# f_finale.c:191: }
	.loc 1 191 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	F_StartFinale, .-F_StartFinale
	.globl	F_Responder
	.type	F_Responder, @function
F_Responder:
.LFB1:
	.loc 1 196 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# event, event
# f_finale.c:197:     if (finalestage == 2)
	.loc 1 197 21
	movl	finalestage(%rip), %eax	# finalestage, finalestage.14_1
# f_finale.c:197:     if (finalestage == 2)
	.loc 1 197 8
	cmpl	$2, %eax	#, finalestage.14_1
	jne	.L24	#,
# f_finale.c:198: 	return F_CastResponder (event);
	.loc 1 198 9
	movq	-8(%rbp), %rax	# event, tmp85
	movq	%rax, %rdi	# tmp85,
	call	F_CastResponder	#
	jmp	.L25	#
.L24:
# f_finale.c:200:     return false;
	.loc 1 200 12
	movl	$0, %eax	#, _2
.L25:
# f_finale.c:201: }
	.loc 1 201 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	F_Responder, .-F_Responder
	.globl	F_Ticker
	.type	F_Ticker, @function
F_Ticker:
.LFB2:
	.loc 1 208 1
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
# f_finale.c:212:     if ( (gamemode == commercial)
	.loc 1 212 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.15_1
# f_finale.c:212:     if ( (gamemode == commercial)
	.loc 1 212 8
	cmpl	$2, %eax	#, gamemode.15_1
	jne	.L27	#,
# f_finale.c:213:       && ( finalecount > 50) )
	.loc 1 213 24
	movl	finalecount(%rip), %eax	# finalecount, finalecount.16_2
# f_finale.c:213:       && ( finalecount > 50) )
	.loc 1 213 7
	cmpl	$50, %eax	#, finalecount.16_2
	jle	.L27	#,
# f_finale.c:216:       for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 216 13
	movl	$0, -20(%rbp)	#, i
# f_finale.c:216:       for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 216 7
	jmp	.L28	#
.L31:
# f_finale.c:217: 	if (players[i].cmd.buttons)
	.loc 1 217 20
	movl	-20(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp101
	salq	$2, %rax	#, tmp101
	addq	%rdx, %rax	# tmp98, tmp101
	salq	$6, %rax	#, tmp102
	movq	%rax, %rdx	# tmp101, tmp100
	leaq	19+players(%rip), %rax	#, tmp103
	movzbl	(%rdx,%rax), %eax	# players[i_17].cmd.buttons, _3
# f_finale.c:217: 	if (players[i].cmd.buttons)
	.loc 1 217 5
	testb	%al, %al	# _3
	jne	.L36	#,
# f_finale.c:216:       for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 216 34 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L28:
# f_finale.c:216:       for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 216 19 discriminator 1
	cmpl	$3, -20(%rbp)	#, i
	jle	.L31	#,
	jmp	.L30	#
.L36:
# f_finale.c:218: 	  break;
	.loc 1 218 4
	nop	
.L30:
# f_finale.c:220:       if (i < MAXPLAYERS)
	.loc 1 220 10
	cmpl	$3, -20(%rbp)	#, i
	jg	.L27	#,
# f_finale.c:222: 	if (gamemap == 30)
	.loc 1 222 14
	movl	gamemap(%rip), %eax	# gamemap, gamemap.17_4
# f_finale.c:222: 	if (gamemap == 30)
	.loc 1 222 5
	cmpl	$30, %eax	#, gamemap.17_4
	jne	.L32	#,
# f_finale.c:223: 	  F_StartCast ();
	.loc 1 223 4
	call	F_StartCast	#
	jmp	.L27	#
.L32:
# f_finale.c:225: 	  gameaction = ga_worlddone;
	.loc 1 225 15
	movl	$8, gameaction(%rip)	#, gameaction
.L27:
# f_finale.c:230:     finalecount++;
	.loc 1 230 16
	movl	finalecount(%rip), %eax	# finalecount, finalecount.18_5
	addl	$1, %eax	#, _6
	movl	%eax, finalecount(%rip)	# _6, finalecount
# f_finale.c:232:     if (finalestage == 2)
	.loc 1 232 21
	movl	finalestage(%rip), %eax	# finalestage, finalestage.19_7
# f_finale.c:232:     if (finalestage == 2)
	.loc 1 232 8
	cmpl	$2, %eax	#, finalestage.19_7
	jne	.L33	#,
# f_finale.c:234: 	F_CastTicker ();
	.loc 1 234 2
	call	F_CastTicker	#
# f_finale.c:235: 	return;
	.loc 1 235 2
	jmp	.L26	#
.L33:
# f_finale.c:238:     if ( gamemode == commercial)
	.loc 1 238 19
	movl	gamemode(%rip), %eax	# gamemode, gamemode.20_8
# f_finale.c:238:     if ( gamemode == commercial)
	.loc 1 238 8
	cmpl	$2, %eax	#, gamemode.20_8
	je	.L37	#,
# f_finale.c:241:     if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
	.loc 1 241 9
	movl	finalestage(%rip), %eax	# finalestage, finalestage.21_9
# f_finale.c:241:     if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
	.loc 1 241 8
	testl	%eax, %eax	# finalestage.21_9
	jne	.L26	#,
# f_finale.c:241:     if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
	.loc 1 241 36 discriminator 1
	movl	finalecount(%rip), %eax	# finalecount, finalecount.22_10
	movslq	%eax, %rbx	# finalecount.22_10, _11
# f_finale.c:241:     if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
	.loc 1 241 37 discriminator 1
	movq	finaletext(%rip), %rax	# finaletext, finaletext.23_12
	movq	%rax, %rdi	# finaletext.23_12,
	call	strlen@PLT	#
	movq	%rax, %rdx	#, _13
# f_finale.c:241:     if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
	.loc 1 241 56 discriminator 1
	movq	%rdx, %rax	# _13, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# _13, _14
# f_finale.c:241:     if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
	.loc 1 241 67 discriminator 1
	addq	$250, %rax	#, _15
# f_finale.c:241:     if (!finalestage && finalecount>strlen (finaletext)*TEXTSPEED + TEXTWAIT)
	.loc 1 241 22 discriminator 1
	cmpq	%rbx, %rax	# _11, _15
	jnb	.L26	#,
# f_finale.c:243: 	finalecount = 0;
	.loc 1 243 14
	movl	$0, finalecount(%rip)	#, finalecount
# f_finale.c:244: 	finalestage = 1;
	.loc 1 244 14
	movl	$1, finalestage(%rip)	#, finalestage
# f_finale.c:245: 	wipegamestate = -1;		// force a wipe
	.loc 1 245 16
	movl	$-1, wipegamestate(%rip)	#, wipegamestate
# f_finale.c:246: 	if (gameepisode == 3)
	.loc 1 246 18
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.24_16
# f_finale.c:246: 	if (gameepisode == 3)
	.loc 1 246 5
	cmpl	$3, %eax	#, gameepisode.24_16
	jne	.L26	#,
# f_finale.c:247: 	    S_StartMusic (mus_bunny);
	.loc 1 247 6
	movl	$30, %edi	#,
	call	S_StartMusic@PLT	#
	jmp	.L26	#
.L37:
# f_finale.c:239: 	return;
	.loc 1 239 2
	nop	
.L26:
# f_finale.c:249: }
	.loc 1 249 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	F_Ticker, .-F_Ticker
	.globl	F_TextWrite
	.type	F_TextWrite, @function
F_TextWrite:
.LFB3:
	.loc 1 262 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# f_finale.c:274:     src = W_CacheLumpName ( finaleflat , PU_CACHE);
	.loc 1 274 11
	movq	finaleflat(%rip), %rax	# finaleflat, finaleflat.25_1
	movl	$101, %esi	#,
	movq	%rax, %rdi	# finaleflat.25_1,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -8(%rbp)	# tmp96, src
# f_finale.c:275:     dest = screens[0];
	.loc 1 275 10
	movq	screens(%rip), %rax	# screens[0], tmp97
	movq	%rax, -24(%rbp)	# tmp97, dest
# f_finale.c:277:     for (y=0 ; y<SCREENHEIGHT ; y++)
	.loc 1 277 11
	movl	$0, -48(%rbp)	#, y
# f_finale.c:277:     for (y=0 ; y<SCREENHEIGHT ; y++)
	.loc 1 277 5
	jmp	.L39	#
.L42:
# f_finale.c:279: 	for (x=0 ; x<SCREENWIDTH/64 ; x++)
	.loc 1 279 8
	movl	$0, -52(%rbp)	#, x
# f_finale.c:279: 	for (x=0 ; x<SCREENWIDTH/64 ; x++)
	.loc 1 279 2
	jmp	.L40	#
.L41:
# f_finale.c:281: 	    memcpy (dest, src+((y&63)<<6), 64);
	.loc 1 281 31
	movl	-48(%rbp), %eax	# y, tmp98
	sall	$6, %eax	#, _2
	cltq
	andl	$4032, %eax	#, _3
	movq	%rax, %rdx	# _3, _4
# f_finale.c:281: 	    memcpy (dest, src+((y&63)<<6), 64);
	.loc 1 281 23
	movq	-8(%rbp), %rax	# src, tmp99
	leaq	(%rdx,%rax), %rcx	#, _5
# f_finale.c:281: 	    memcpy (dest, src+((y&63)<<6), 64);
	.loc 1 281 6
	movq	-24(%rbp), %rax	# dest, tmp100
	movl	$64, %edx	#,
	movq	%rcx, %rsi	# _5,
	movq	%rax, %rdi	# tmp100,
	call	memcpy@PLT	#
# f_finale.c:282: 	    dest += 64;
	.loc 1 282 11
	addq	$64, -24(%rbp)	#, dest
# f_finale.c:279: 	for (x=0 ; x<SCREENWIDTH/64 ; x++)
	.loc 1 279 33 discriminator 3
	addl	$1, -52(%rbp)	#, x
.L40:
# f_finale.c:279: 	for (x=0 ; x<SCREENWIDTH/64 ; x++)
	.loc 1 279 14 discriminator 1
	cmpl	$4, -52(%rbp)	#, x
	jle	.L41	#,
# f_finale.c:277:     for (y=0 ; y<SCREENHEIGHT ; y++)
	.loc 1 277 34 discriminator 2
	addl	$1, -48(%rbp)	#, y
.L39:
# f_finale.c:277:     for (y=0 ; y<SCREENHEIGHT ; y++)
	.loc 1 277 17 discriminator 1
	cmpl	$199, -48(%rbp)	#, y
	jle	.L42	#,
# f_finale.c:291:     V_MarkRect (0, 0, SCREENWIDTH, SCREENHEIGHT);
	.loc 1 291 5
	movl	$200, %ecx	#,
	movl	$320, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_MarkRect@PLT	#
# f_finale.c:294:     cx = 10;
	.loc 1 294 8
	movl	$10, -40(%rbp)	#, cx
# f_finale.c:295:     cy = 10;
	.loc 1 295 8
	movl	$10, -36(%rbp)	#, cy
# f_finale.c:296:     ch = finaletext;
	.loc 1 296 8
	movq	finaletext(%rip), %rax	# finaletext, tmp101
	movq	%rax, -16(%rbp)	# tmp101, ch
# f_finale.c:298:     count = (finalecount - 10)/TEXTSPEED;
	.loc 1 298 26
	movl	finalecount(%rip), %eax	# finalecount, finalecount.26_10
	subl	$10, %eax	#, _11
# f_finale.c:298:     count = (finalecount - 10)/TEXTSPEED;
	.loc 1 298 11
	movslq	%eax, %rdx	# _11, tmp102
	imulq	$1431655766, %rdx, %rdx	#, tmp102, tmp103
	movq	%rdx, %rcx	# tmp103, tmp103
	shrq	$32, %rcx	#, tmp103
	cltd
	movl	%ecx, %eax	# tmp104, tmp106
	subl	%edx, %eax	# tmp105, tmp106
	movl	%eax, -44(%rbp)	# tmp106, count
# f_finale.c:299:     if (count < 0)
	.loc 1 299 8
	cmpl	$0, -44(%rbp)	#, count
	jns	.L44	#,
# f_finale.c:300: 	count = 0;
	.loc 1 300 8
	movl	$0, -44(%rbp)	#, count
# f_finale.c:301:     for ( ; count ; count-- )
	.loc 1 301 5
	jmp	.L44	#
.L52:
# f_finale.c:303: 	c = *ch++;
	.loc 1 303 9
	movq	-16(%rbp), %rax	# ch, ch.27_12
	leaq	1(%rax), %rdx	#, tmp107
	movq	%rdx, -16(%rbp)	# tmp107, ch
# f_finale.c:303: 	c = *ch++;
	.loc 1 303 6
	movzbl	(%rax), %eax	# *ch.27_12, _13
# f_finale.c:303: 	c = *ch++;
	.loc 1 303 4
	movsbl	%al, %eax	# _13, tmp108
	movl	%eax, -32(%rbp)	# tmp108, c
# f_finale.c:304: 	if (!c)
	.loc 1 304 5
	cmpl	$0, -32(%rbp)	#, c
	je	.L53	#,
# f_finale.c:306: 	if (c == '\n')
	.loc 1 306 5
	cmpl	$10, -32(%rbp)	#, c
	jne	.L47	#,
# f_finale.c:308: 	    cx = 10;
	.loc 1 308 9
	movl	$10, -40(%rbp)	#, cx
# f_finale.c:309: 	    cy += 11;
	.loc 1 309 9
	addl	$11, -36(%rbp)	#, cy
# f_finale.c:310: 	    continue;
	.loc 1 310 6
	jmp	.L48	#
.L47:
# f_finale.c:313: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 313 6
	movl	-32(%rbp), %eax	# c, tmp109
	movl	%eax, %edi	# tmp109,
	call	toupper@PLT	#
# f_finale.c:313: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 313 4 discriminator 1
	subl	$33, %eax	#, tmp110
	movl	%eax, -32(%rbp)	# tmp110, c
# f_finale.c:314: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 314 5
	cmpl	$0, -32(%rbp)	#, c
	js	.L49	#,
# f_finale.c:314: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 314 12 discriminator 2
	cmpl	$63, -32(%rbp)	#, c
	jle	.L50	#,
.L49:
# f_finale.c:316: 	    cx += 4;
	.loc 1 316 9
	addl	$4, -40(%rbp)	#, cx
# f_finale.c:317: 	    continue;
	.loc 1 317 6
	jmp	.L48	#
.L50:
# f_finale.c:320: 	w = SHORT (hu_font[c]->width);
	.loc 1 320 6
	movl	-32(%rbp), %eax	# c, tmp112
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp113
	leaq	hu_font(%rip), %rax	#, tmp114
	movq	(%rdx,%rax), %rax	# hu_font[c_43], _15
	movzwl	(%rax), %eax	# _15->width, _16
# f_finale.c:320: 	w = SHORT (hu_font[c]->width);
	.loc 1 320 4
	cwtl
	movl	%eax, -28(%rbp)	# tmp115, w
# f_finale.c:321: 	if (cx+w > SCREENWIDTH)
	.loc 1 321 8
	movl	-40(%rbp), %edx	# cx, tmp116
	movl	-28(%rbp), %eax	# w, tmp117
	addl	%edx, %eax	# tmp116, _17
# f_finale.c:321: 	if (cx+w > SCREENWIDTH)
	.loc 1 321 5
	cmpl	$320, %eax	#, _17
	jg	.L54	#,
# f_finale.c:323: 	V_DrawPatch(cx, cy, 0, hu_font[c]);
	.loc 1 323 2
	movl	-32(%rbp), %eax	# c, tmp119
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp120
	leaq	hu_font(%rip), %rax	#, tmp121
	movq	(%rdx,%rax), %rdx	# hu_font[c_43], _18
	movl	-36(%rbp), %esi	# cy, tmp122
	movl	-40(%rbp), %eax	# cx, tmp123
	movq	%rdx, %rcx	# _18,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp123,
	call	V_DrawPatch@PLT	#
# f_finale.c:324: 	cx+=w;
	.loc 1 324 4
	movl	-28(%rbp), %eax	# w, tmp124
	addl	%eax, -40(%rbp)	# tmp124, cx
.L48:
# f_finale.c:301:     for ( ; count ; count-- )
	.loc 1 301 26
	subl	$1, -44(%rbp)	#, count
.L44:
# f_finale.c:301:     for ( ; count ; count-- )
	.loc 1 301 13 discriminator 1
	cmpl	$0, -44(%rbp)	#, count
	jne	.L52	#,
# f_finale.c:327: }
	.loc 1 327 1
	jmp	.L55	#
.L53:
# f_finale.c:305: 	    break;
	.loc 1 305 6
	nop	
	jmp	.L55	#
.L54:
# f_finale.c:322: 	    break;
	.loc 1 322 6
	nop	
.L55:
# f_finale.c:327: }
	.loc 1 327 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	F_TextWrite, .-F_TextWrite
	.globl	castorder
	.section	.rodata
.LC33:
	.string	"ZOMBIEMAN"
.LC34:
	.string	"SHOTGUN GUY"
.LC35:
	.string	"HEAVY WEAPON DUDE"
.LC36:
	.string	"IMP"
.LC37:
	.string	"DEMON"
.LC38:
	.string	"LOST SOUL"
.LC39:
	.string	"CACODEMON"
.LC40:
	.string	"HELL KNIGHT"
.LC41:
	.string	"BARON OF HELL"
.LC42:
	.string	"ARACHNOTRON"
.LC43:
	.string	"PAIN ELEMENTAL"
.LC44:
	.string	"REVENANT"
.LC45:
	.string	"MANCUBUS"
.LC46:
	.string	"ARCH-VILE"
.LC47:
	.string	"THE SPIDER MASTERMIND"
.LC48:
	.string	"THE CYBERDEMON"
.LC49:
	.string	"OUR HERO"
	.section	.data.rel.local
	.align 32
	.type	castorder, @object
	.size	castorder, 288
castorder:
# name:
	.quad	.LC33
# type:
	.long	1
	.zero	4
# name:
	.quad	.LC34
# type:
	.long	2
	.zero	4
# name:
	.quad	.LC35
# type:
	.long	10
	.zero	4
# name:
	.quad	.LC36
# type:
	.long	11
	.zero	4
# name:
	.quad	.LC37
# type:
	.long	12
	.zero	4
# name:
	.quad	.LC38
# type:
	.long	18
	.zero	4
# name:
	.quad	.LC39
# type:
	.long	14
	.zero	4
# name:
	.quad	.LC40
# type:
	.long	17
	.zero	4
# name:
	.quad	.LC41
# type:
	.long	15
	.zero	4
# name:
	.quad	.LC42
# type:
	.long	20
	.zero	4
# name:
	.quad	.LC43
# type:
	.long	22
	.zero	4
# name:
	.quad	.LC44
# type:
	.long	5
	.zero	4
# name:
	.quad	.LC45
# type:
	.long	8
	.zero	4
# name:
	.quad	.LC46
# type:
	.long	3
	.zero	4
# name:
	.quad	.LC47
# type:
	.long	19
	.zero	4
# name:
	.quad	.LC48
# type:
	.long	21
	.zero	4
# name:
	.quad	.LC49
# type:
	.long	0
	.zero	4
# name:
	.quad	0
# type:
	.long	0
	.zero	4
	.globl	castnum
	.bss
	.align 4
	.type	castnum, @object
	.size	castnum, 4
castnum:
	.zero	4
	.globl	casttics
	.align 4
	.type	casttics, @object
	.size	casttics, 4
casttics:
	.zero	4
	.globl	caststate
	.align 8
	.type	caststate, @object
	.size	caststate, 8
caststate:
	.zero	8
	.globl	castdeath
	.align 4
	.type	castdeath, @object
	.size	castdeath, 4
castdeath:
	.zero	4
	.globl	castframes
	.align 4
	.type	castframes, @object
	.size	castframes, 4
castframes:
	.zero	4
	.globl	castonmelee
	.align 4
	.type	castonmelee, @object
	.size	castonmelee, 4
castonmelee:
	.zero	4
	.globl	castattacking
	.align 4
	.type	castattacking, @object
	.size	castattacking, 4
castattacking:
	.zero	4
	.text
	.globl	F_StartCast
	.type	F_StartCast, @function
F_StartCast:
.LFB4:
	.loc 1 378 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# f_finale.c:379:     wipegamestate = -1;		// force a screen wipe
	.loc 1 379 19
	movl	$-1, wipegamestate(%rip)	#, wipegamestate
# f_finale.c:380:     castnum = 0;
	.loc 1 380 13
	movl	$0, castnum(%rip)	#, castnum
# f_finale.c:381:     caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 381 52
	movl	castnum(%rip), %eax	# castnum, castnum.28_1
	cltq
	salq	$4, %rax	#, tmp89
	movq	%rax, %rdx	# tmp89, tmp90
	leaq	8+castorder(%rip), %rax	#, tmp91
	movl	(%rdx,%rax), %eax	# castorder[castnum.28_1].type, _2
# f_finale.c:381:     caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 381 58
	movl	%eax, %eax	# _2, tmp92
	imulq	$92, %rax, %rax	#, tmp92, tmp93
	leaq	12+mobjinfo(%rip), %rdx	#, tmp94
	movl	(%rax,%rdx), %eax	# mobjinfo[_2].seestate, _3
# f_finale.c:381:     caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 381 17
	movslq	%eax, %rdx	# _3, tmp95
	movq	%rdx, %rax	# tmp95, tmp96
	salq	$3, %rax	#, tmp97
	subq	%rdx, %rax	# tmp95, tmp96
	salq	$3, %rax	#, tmp98
	leaq	states(%rip), %rdx	#, tmp99
	addq	%rdx, %rax	# tmp99, _4
# f_finale.c:381:     caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 381 15
	movq	%rax, caststate(%rip)	# _4, caststate
# f_finale.c:382:     casttics = caststate->tics;
	.loc 1 382 25
	movq	caststate(%rip), %rax	# caststate, caststate.29_5
	movq	16(%rax), %rax	# caststate.29_5->tics, _6
# f_finale.c:382:     casttics = caststate->tics;
	.loc 1 382 14
	movl	%eax, casttics(%rip)	# _7, casttics
# f_finale.c:383:     castdeath = false;
	.loc 1 383 15
	movl	$0, castdeath(%rip)	#, castdeath
# f_finale.c:384:     finalestage = 2;	
	.loc 1 384 17
	movl	$2, finalestage(%rip)	#, finalestage
# f_finale.c:385:     castframes = 0;
	.loc 1 385 16
	movl	$0, castframes(%rip)	#, castframes
# f_finale.c:386:     castonmelee = 0;
	.loc 1 386 17
	movl	$0, castonmelee(%rip)	#, castonmelee
# f_finale.c:387:     castattacking = false;
	.loc 1 387 19
	movl	$0, castattacking(%rip)	#, castattacking
# f_finale.c:388:     S_ChangeMusic(mus_evil, true);
	.loc 1 388 5
	movl	$1, %esi	#,
	movl	$63, %edi	#,
	call	S_ChangeMusic@PLT	#
# f_finale.c:389: }
	.loc 1 389 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	F_StartCast, .-F_StartCast
	.globl	F_CastTicker
	.type	F_CastTicker, @function
F_CastTicker:
.LFB5:
	.loc 1 396 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# f_finale.c:400:     if (--casttics > 0)
	.loc 1 400 9
	movl	casttics(%rip), %eax	# casttics, casttics.30_1
	subl	$1, %eax	#, _2
# f_finale.c:400:     if (--casttics > 0)
	.loc 1 400 8
	movl	%eax, casttics(%rip)	# _2, casttics
# f_finale.c:400:     if (--casttics > 0)
	.loc 1 400 9
	movl	casttics(%rip), %eax	# casttics, casttics.31_3
# f_finale.c:400:     if (--casttics > 0)
	.loc 1 400 8
	testl	%eax, %eax	# casttics.31_3
	jg	.L93	#,
# f_finale.c:403:     if (caststate->tics == -1 || caststate->nextstate == S_NULL)
	.loc 1 403 18
	movq	caststate(%rip), %rax	# caststate, caststate.32_4
	movq	16(%rax), %rax	# caststate.32_4->tics, _5
# f_finale.c:403:     if (caststate->tics == -1 || caststate->nextstate == S_NULL)
	.loc 1 403 8
	cmpq	$-1, %rax	#, _5
	je	.L60	#,
# f_finale.c:403:     if (caststate->tics == -1 || caststate->nextstate == S_NULL)
	.loc 1 403 43 discriminator 1
	movq	caststate(%rip), %rax	# caststate, caststate.33_6
	movl	32(%rax), %eax	# caststate.33_6->nextstate, _7
# f_finale.c:403:     if (caststate->tics == -1 || caststate->nextstate == S_NULL)
	.loc 1 403 31 discriminator 1
	testl	%eax, %eax	# _7
	jne	.L61	#,
.L60:
# f_finale.c:406: 	castnum++;
	.loc 1 406 9
	movl	castnum(%rip), %eax	# castnum, castnum.34_8
	addl	$1, %eax	#, _9
	movl	%eax, castnum(%rip)	# _9, castnum
# f_finale.c:407: 	castdeath = false;
	.loc 1 407 12
	movl	$0, castdeath(%rip)	#, castdeath
# f_finale.c:408: 	if (castorder[castnum].name == NULL)
	.loc 1 408 24
	movl	castnum(%rip), %eax	# castnum, castnum.35_10
	cltq
	salq	$4, %rax	#, tmp146
	movq	%rax, %rdx	# tmp146, tmp147
	leaq	castorder(%rip), %rax	#, tmp148
	movq	(%rdx,%rax), %rax	# castorder[castnum.35_10].name, _11
# f_finale.c:408: 	if (castorder[castnum].name == NULL)
	.loc 1 408 5
	testq	%rax, %rax	# _11
	jne	.L62	#,
# f_finale.c:409: 	    castnum = 0;
	.loc 1 409 14
	movl	$0, castnum(%rip)	#, castnum
.L62:
# f_finale.c:410: 	if (mobjinfo[castorder[castnum].type].seesound)
	.loc 1 410 33
	movl	castnum(%rip), %eax	# castnum, castnum.36_12
	cltq
	salq	$4, %rax	#, tmp149
	movq	%rax, %rdx	# tmp149, tmp150
	leaq	8+castorder(%rip), %rax	#, tmp151
	movl	(%rdx,%rax), %eax	# castorder[castnum.36_12].type, _13
# f_finale.c:410: 	if (mobjinfo[castorder[castnum].type].seesound)
	.loc 1 410 39
	movl	%eax, %eax	# _13, tmp152
	imulq	$92, %rax, %rax	#, tmp152, tmp153
	leaq	16+mobjinfo(%rip), %rdx	#, tmp154
	movl	(%rax,%rdx), %eax	# mobjinfo[_13].seesound, _14
# f_finale.c:410: 	if (mobjinfo[castorder[castnum].type].seesound)
	.loc 1 410 5
	testl	%eax, %eax	# _14
	je	.L63	#,
# f_finale.c:411: 	    S_StartSound (NULL, mobjinfo[castorder[castnum].type].seesound);
	.loc 1 411 53
	movl	castnum(%rip), %eax	# castnum, castnum.37_15
	cltq
	salq	$4, %rax	#, tmp155
	movq	%rax, %rdx	# tmp155, tmp156
	leaq	8+castorder(%rip), %rax	#, tmp157
	movl	(%rdx,%rax), %eax	# castorder[castnum.37_15].type, _16
# f_finale.c:411: 	    S_StartSound (NULL, mobjinfo[castorder[castnum].type].seesound);
	.loc 1 411 6
	movl	%eax, %eax	# _16, tmp158
	imulq	$92, %rax, %rax	#, tmp158, tmp159
	leaq	16+mobjinfo(%rip), %rdx	#, tmp160
	movl	(%rax,%rdx), %eax	# mobjinfo[_16].seesound, _17
	movl	%eax, %esi	# _17,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L63:
# f_finale.c:412: 	caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 412 49
	movl	castnum(%rip), %eax	# castnum, castnum.38_18
	cltq
	salq	$4, %rax	#, tmp161
	movq	%rax, %rdx	# tmp161, tmp162
	leaq	8+castorder(%rip), %rax	#, tmp163
	movl	(%rdx,%rax), %eax	# castorder[castnum.38_18].type, _19
# f_finale.c:412: 	caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 412 55
	movl	%eax, %eax	# _19, tmp164
	imulq	$92, %rax, %rax	#, tmp164, tmp165
	leaq	12+mobjinfo(%rip), %rdx	#, tmp166
	movl	(%rax,%rdx), %eax	# mobjinfo[_19].seestate, _20
# f_finale.c:412: 	caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 412 14
	movslq	%eax, %rdx	# _20, tmp167
	movq	%rdx, %rax	# tmp167, tmp168
	salq	$3, %rax	#, tmp169
	subq	%rdx, %rax	# tmp167, tmp168
	salq	$3, %rax	#, tmp170
	leaq	states(%rip), %rdx	#, tmp171
	addq	%rdx, %rax	# tmp171, _21
# f_finale.c:412: 	caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 412 12
	movq	%rax, caststate(%rip)	# _21, caststate
# f_finale.c:413: 	castframes = 0;
	.loc 1 413 13
	movl	$0, castframes(%rip)	#, castframes
	jmp	.L64	#
.L61:
# f_finale.c:418: 	if (caststate == &states[S_PLAY_ATK1])
	.loc 1 418 16
	movq	caststate(%rip), %rdx	# caststate, caststate.39_22
# f_finale.c:418: 	if (caststate == &states[S_PLAY_ATK1])
	.loc 1 418 5
	leaq	8624+states(%rip), %rax	#, tmp172
	cmpq	%rax, %rdx	# tmp172, caststate.39_22
	je	.L94	#,
# f_finale.c:420: 	st = caststate->nextstate;
	.loc 1 420 16
	movq	caststate(%rip), %rax	# caststate, caststate.40_23
	movl	32(%rax), %eax	# caststate.40_23->nextstate, _24
# f_finale.c:420: 	st = caststate->nextstate;
	.loc 1 420 5
	movl	%eax, -4(%rbp)	# _24, st
# f_finale.c:421: 	caststate = &states[st];
	.loc 1 421 14
	movl	-4(%rbp), %eax	# st, tmp174
	movslq	%eax, %rdx	# tmp174, tmp173
	movq	%rdx, %rax	# tmp173, tmp175
	salq	$3, %rax	#, tmp176
	subq	%rdx, %rax	# tmp173, tmp175
	salq	$3, %rax	#, tmp177
	leaq	states(%rip), %rdx	#, tmp178
	addq	%rdx, %rax	# tmp178, _25
# f_finale.c:421: 	caststate = &states[st];
	.loc 1 421 12
	movq	%rax, caststate(%rip)	# _25, caststate
# f_finale.c:422: 	castframes++;
	.loc 1 422 12
	movl	castframes(%rip), %eax	# castframes, castframes.41_26
	addl	$1, %eax	#, _27
	movl	%eax, castframes(%rip)	# _27, castframes
# f_finale.c:425: 	switch (st)
	.loc 1 425 2
	cmpl	$710, -4(%rbp)	#, st
	je	.L67	#,
	cmpl	$710, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$689, -4(%rbp)	#, st
	je	.L69	#,
	cmpl	$689, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$687, -4(%rbp)	#, st
	je	.L69	#,
	cmpl	$687, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$685, -4(%rbp)	#, st
	je	.L69	#,
	cmpl	$685, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$648, -4(%rbp)	#, st
	je	.L70	#,
	cmpl	$648, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$617, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$616, -4(%rbp)	#, st
	jge	.L71	#,
	cmpl	$590, -4(%rbp)	#, st
	je	.L72	#,
	cmpl	$590, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$567, -4(%rbp)	#, st
	je	.L73	#,
	cmpl	$567, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$538, -4(%rbp)	#, st
	je	.L73	#,
	cmpl	$538, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$505, -4(%rbp)	#, st
	je	.L73	#,
	cmpl	$505, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$486, -4(%rbp)	#, st
	je	.L74	#,
	cmpl	$486, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$454, -4(%rbp)	#, st
	je	.L75	#,
	cmpl	$454, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$419, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$417, -4(%rbp)	#, st
	jge	.L76	#,
	cmpl	$383, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$336, -4(%rbp)	#, st
	jge	.L77	#,
	cmpl	$256, -4(%rbp)	#, st
	je	.L78	#,
	cmpl	$256, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$218, -4(%rbp)	#, st
	je	.L79	#,
	cmpl	$218, -4(%rbp)	#, st
	jg	.L68	#,
	cmpl	$154, -4(%rbp)	#, st
	je	.L80	#,
	cmpl	$185, -4(%rbp)	#, st
	je	.L81	#,
	jmp	.L68	#
.L77:
	movl	-4(%rbp), %eax	# st, tmp180
	subl	$336, %eax	#, tmp179
	cmpl	$47, %eax	#, tmp179
	ja	.L68	#,
	movl	%eax, %eax	# tmp179, tmp181
	leaq	0(,%rax,4), %rdx	#, tmp182
	leaq	.L83(%rip), %rax	#, tmp183
	movl	(%rdx,%rax), %eax	#, tmp184
	cltq
	leaq	.L83(%rip), %rdx	#, tmp187
	addq	%rdx, %rax	# tmp187, tmp186
	notrack jmp	*%rax	# tmp186
	.section	.rodata
	.align 4
	.align 4
.L83:
	.long	.L86-.L83
	.long	.L68-.L83
	.long	.L85-.L83
	.long	.L68-.L83
	.long	.L84-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L82-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L82-.L83
	.long	.L68-.L83
	.long	.L68-.L83
	.long	.L82-.L83
	.text
.L80:
# f_finale.c:427: 	  case S_PLAY_ATK1:	sfx = sfx_dshtgn; break;
	.loc 1 427 26
	movl	$4, -8(%rbp)	#, sfx
# f_finale.c:427: 	  case S_PLAY_ATK1:	sfx = sfx_dshtgn; break;
	.loc 1 427 40
	jmp	.L87	#
.L81:
# f_finale.c:428: 	  case S_POSS_ATK2:	sfx = sfx_pistol; break;
	.loc 1 428 26
	movl	$1, -8(%rbp)	#, sfx
# f_finale.c:428: 	  case S_POSS_ATK2:	sfx = sfx_pistol; break;
	.loc 1 428 40
	jmp	.L87	#
.L79:
# f_finale.c:429: 	  case S_SPOS_ATK2:	sfx = sfx_shotgn; break;
	.loc 1 429 26
	movl	$2, -8(%rbp)	#, sfx
# f_finale.c:429: 	  case S_SPOS_ATK2:	sfx = sfx_shotgn; break;
	.loc 1 429 40
	jmp	.L87	#
.L78:
# f_finale.c:430: 	  case S_VILE_ATK2:	sfx = sfx_vilatk; break;
	.loc 1 430 26
	movl	$54, -8(%rbp)	#, sfx
# f_finale.c:430: 	  case S_VILE_ATK2:	sfx = sfx_vilatk; break;
	.loc 1 430 40
	jmp	.L87	#
.L86:
# f_finale.c:431: 	  case S_SKEL_FIST2:	sfx = sfx_skeswg; break;
	.loc 1 431 27
	movl	$56, -8(%rbp)	#, sfx
# f_finale.c:431: 	  case S_SKEL_FIST2:	sfx = sfx_skeswg; break;
	.loc 1 431 41
	jmp	.L87	#
.L85:
# f_finale.c:432: 	  case S_SKEL_FIST4:	sfx = sfx_skepch; break;
	.loc 1 432 27
	movl	$53, -8(%rbp)	#, sfx
# f_finale.c:432: 	  case S_SKEL_FIST4:	sfx = sfx_skepch; break;
	.loc 1 432 41
	jmp	.L87	#
.L84:
# f_finale.c:433: 	  case S_SKEL_MISS2:	sfx = sfx_skeatk; break;
	.loc 1 433 27
	movl	$107, -8(%rbp)	#, sfx
# f_finale.c:433: 	  case S_SKEL_MISS2:	sfx = sfx_skeatk; break;
	.loc 1 433 41
	jmp	.L87	#
.L82:
# f_finale.c:436: 	  case S_FATT_ATK2:	sfx = sfx_firsht; break;
	.loc 1 436 26
	movl	$16, -8(%rbp)	#, sfx
# f_finale.c:436: 	  case S_FATT_ATK2:	sfx = sfx_firsht; break;
	.loc 1 436 40
	jmp	.L87	#
.L76:
# f_finale.c:439: 	  case S_CPOS_ATK4:	sfx = sfx_shotgn; break;
	.loc 1 439 26
	movl	$2, -8(%rbp)	#, sfx
# f_finale.c:439: 	  case S_CPOS_ATK4:	sfx = sfx_shotgn; break;
	.loc 1 439 40
	jmp	.L87	#
.L75:
# f_finale.c:440: 	  case S_TROO_ATK3:	sfx = sfx_claw; break;
	.loc 1 440 26
	movl	$55, -8(%rbp)	#, sfx
# f_finale.c:440: 	  case S_TROO_ATK3:	sfx = sfx_claw; break;
	.loc 1 440 38
	jmp	.L87	#
.L74:
# f_finale.c:441: 	  case S_SARG_ATK2:	sfx = sfx_sgtatk; break;
	.loc 1 441 26
	movl	$52, -8(%rbp)	#, sfx
# f_finale.c:441: 	  case S_SARG_ATK2:	sfx = sfx_sgtatk; break;
	.loc 1 441 40
	jmp	.L87	#
.L73:
# f_finale.c:444: 	  case S_HEAD_ATK2:	sfx = sfx_firsht; break;
	.loc 1 444 26
	movl	$16, -8(%rbp)	#, sfx
# f_finale.c:444: 	  case S_HEAD_ATK2:	sfx = sfx_firsht; break;
	.loc 1 444 40
	jmp	.L87	#
.L72:
# f_finale.c:445: 	  case S_SKULL_ATK2:	sfx = sfx_sklatk; break;
	.loc 1 445 27
	movl	$51, -8(%rbp)	#, sfx
# f_finale.c:445: 	  case S_SKULL_ATK2:	sfx = sfx_sklatk; break;
	.loc 1 445 41
	jmp	.L87	#
.L71:
# f_finale.c:447: 	  case S_SPID_ATK3:	sfx = sfx_shotgn; break;
	.loc 1 447 26
	movl	$2, -8(%rbp)	#, sfx
# f_finale.c:447: 	  case S_SPID_ATK3:	sfx = sfx_shotgn; break;
	.loc 1 447 40
	jmp	.L87	#
.L70:
# f_finale.c:448: 	  case S_BSPI_ATK2:	sfx = sfx_plasma; break;
	.loc 1 448 26
	movl	$8, -8(%rbp)	#, sfx
# f_finale.c:448: 	  case S_BSPI_ATK2:	sfx = sfx_plasma; break;
	.loc 1 448 40
	jmp	.L87	#
.L69:
# f_finale.c:451: 	  case S_CYBER_ATK6:	sfx = sfx_rlaunc; break;
	.loc 1 451 27
	movl	$14, -8(%rbp)	#, sfx
# f_finale.c:451: 	  case S_CYBER_ATK6:	sfx = sfx_rlaunc; break;
	.loc 1 451 41
	jmp	.L87	#
.L67:
# f_finale.c:452: 	  case S_PAIN_ATK3:	sfx = sfx_sklatk; break;
	.loc 1 452 26
	movl	$51, -8(%rbp)	#, sfx
# f_finale.c:452: 	  case S_PAIN_ATK3:	sfx = sfx_sklatk; break;
	.loc 1 452 40
	jmp	.L87	#
.L68:
# f_finale.c:453: 	  default: sfx = 0; break;
	.loc 1 453 17
	movl	$0, -8(%rbp)	#, sfx
# f_finale.c:453: 	  default: sfx = 0; break;
	.loc 1 453 22
	nop	
.L87:
# f_finale.c:456: 	if (sfx)
	.loc 1 456 5
	cmpl	$0, -8(%rbp)	#, sfx
	je	.L64	#,
# f_finale.c:457: 	    S_StartSound (NULL, sfx);
	.loc 1 457 6
	movl	-8(%rbp), %eax	# sfx, tmp188
	movl	%eax, %esi	# tmp188,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L64:
# f_finale.c:460:     if (castframes == 12)
	.loc 1 460 20
	movl	castframes(%rip), %eax	# castframes, castframes.42_28
# f_finale.c:460:     if (castframes == 12)
	.loc 1 460 8
	cmpl	$12, %eax	#, castframes.42_28
	jne	.L88	#,
# f_finale.c:463: 	castattacking = true;
	.loc 1 463 16
	movl	$1, castattacking(%rip)	#, castattacking
# f_finale.c:464: 	if (castonmelee)
	.loc 1 464 6
	movl	castonmelee(%rip), %eax	# castonmelee, castonmelee.43_29
# f_finale.c:464: 	if (castonmelee)
	.loc 1 464 5
	testl	%eax, %eax	# castonmelee.43_29
	je	.L89	#,
# f_finale.c:465: 	    caststate=&states[mobjinfo[castorder[castnum].type].meleestate];
	.loc 1 465 51
	movl	castnum(%rip), %eax	# castnum, castnum.44_30
	cltq
	salq	$4, %rax	#, tmp189
	movq	%rax, %rdx	# tmp189, tmp190
	leaq	8+castorder(%rip), %rax	#, tmp191
	movl	(%rdx,%rax), %eax	# castorder[castnum.44_30].type, _31
# f_finale.c:465: 	    caststate=&states[mobjinfo[castorder[castnum].type].meleestate];
	.loc 1 465 57
	movl	%eax, %eax	# _31, tmp192
	imulq	$92, %rax, %rax	#, tmp192, tmp193
	leaq	40+mobjinfo(%rip), %rdx	#, tmp194
	movl	(%rax,%rdx), %eax	# mobjinfo[_31].meleestate, _32
# f_finale.c:465: 	    caststate=&states[mobjinfo[castorder[castnum].type].meleestate];
	.loc 1 465 16
	movslq	%eax, %rdx	# _32, tmp195
	movq	%rdx, %rax	# tmp195, tmp196
	salq	$3, %rax	#, tmp197
	subq	%rdx, %rax	# tmp195, tmp196
	salq	$3, %rax	#, tmp198
	leaq	states(%rip), %rdx	#, tmp199
	addq	%rdx, %rax	# tmp199, _33
# f_finale.c:465: 	    caststate=&states[mobjinfo[castorder[castnum].type].meleestate];
	.loc 1 465 15
	movq	%rax, caststate(%rip)	# _33, caststate
	jmp	.L90	#
.L89:
# f_finale.c:467: 	    caststate=&states[mobjinfo[castorder[castnum].type].missilestate];
	.loc 1 467 51
	movl	castnum(%rip), %eax	# castnum, castnum.45_34
	cltq
	salq	$4, %rax	#, tmp200
	movq	%rax, %rdx	# tmp200, tmp201
	leaq	8+castorder(%rip), %rax	#, tmp202
	movl	(%rdx,%rax), %eax	# castorder[castnum.45_34].type, _35
# f_finale.c:467: 	    caststate=&states[mobjinfo[castorder[castnum].type].missilestate];
	.loc 1 467 57
	movl	%eax, %eax	# _35, tmp203
	imulq	$92, %rax, %rax	#, tmp203, tmp204
	leaq	44+mobjinfo(%rip), %rdx	#, tmp205
	movl	(%rax,%rdx), %eax	# mobjinfo[_35].missilestate, _36
# f_finale.c:467: 	    caststate=&states[mobjinfo[castorder[castnum].type].missilestate];
	.loc 1 467 16
	movslq	%eax, %rdx	# _36, tmp206
	movq	%rdx, %rax	# tmp206, tmp207
	salq	$3, %rax	#, tmp208
	subq	%rdx, %rax	# tmp206, tmp207
	salq	$3, %rax	#, tmp209
	leaq	states(%rip), %rdx	#, tmp210
	addq	%rdx, %rax	# tmp210, _37
# f_finale.c:467: 	    caststate=&states[mobjinfo[castorder[castnum].type].missilestate];
	.loc 1 467 15
	movq	%rax, caststate(%rip)	# _37, caststate
.L90:
# f_finale.c:468: 	castonmelee ^= 1;
	.loc 1 468 14
	movl	castonmelee(%rip), %eax	# castonmelee, castonmelee.46_38
	xorl	$1, %eax	#, _39
	movl	%eax, castonmelee(%rip)	# _39, castonmelee
# f_finale.c:469: 	if (caststate == &states[S_NULL])
	.loc 1 469 16
	movq	caststate(%rip), %rdx	# caststate, caststate.47_40
# f_finale.c:469: 	if (caststate == &states[S_NULL])
	.loc 1 469 5
	leaq	states(%rip), %rax	#, tmp211
	cmpq	%rax, %rdx	# tmp211, caststate.47_40
	jne	.L88	#,
# f_finale.c:471: 	    if (castonmelee)
	.loc 1 471 10
	movl	castonmelee(%rip), %eax	# castonmelee, castonmelee.48_41
# f_finale.c:471: 	    if (castonmelee)
	.loc 1 471 9
	testl	%eax, %eax	# castonmelee.48_41
	je	.L91	#,
# f_finale.c:473: 		    &states[mobjinfo[castorder[castnum].type].meleestate];
	.loc 1 473 42
	movl	castnum(%rip), %eax	# castnum, castnum.49_42
	cltq
	salq	$4, %rax	#, tmp212
	movq	%rax, %rdx	# tmp212, tmp213
	leaq	8+castorder(%rip), %rax	#, tmp214
	movl	(%rdx,%rax), %eax	# castorder[castnum.49_42].type, _43
# f_finale.c:473: 		    &states[mobjinfo[castorder[castnum].type].meleestate];
	.loc 1 473 48
	movl	%eax, %eax	# _43, tmp215
	imulq	$92, %rax, %rax	#, tmp215, tmp216
	leaq	40+mobjinfo(%rip), %rdx	#, tmp217
	movl	(%rax,%rdx), %eax	# mobjinfo[_43].meleestate, _44
# f_finale.c:473: 		    &states[mobjinfo[castorder[castnum].type].meleestate];
	.loc 1 473 7
	movslq	%eax, %rdx	# _44, tmp218
	movq	%rdx, %rax	# tmp218, tmp219
	salq	$3, %rax	#, tmp220
	subq	%rdx, %rax	# tmp218, tmp219
	salq	$3, %rax	#, tmp221
	leaq	states(%rip), %rdx	#, tmp222
	addq	%rdx, %rax	# tmp222, _45
# f_finale.c:472: 		caststate=
	.loc 1 472 12
	movq	%rax, caststate(%rip)	# _45, caststate
	jmp	.L88	#
.L91:
# f_finale.c:476: 		    &states[mobjinfo[castorder[castnum].type].missilestate];
	.loc 1 476 42
	movl	castnum(%rip), %eax	# castnum, castnum.50_46
	cltq
	salq	$4, %rax	#, tmp223
	movq	%rax, %rdx	# tmp223, tmp224
	leaq	8+castorder(%rip), %rax	#, tmp225
	movl	(%rdx,%rax), %eax	# castorder[castnum.50_46].type, _47
# f_finale.c:476: 		    &states[mobjinfo[castorder[castnum].type].missilestate];
	.loc 1 476 48
	movl	%eax, %eax	# _47, tmp226
	imulq	$92, %rax, %rax	#, tmp226, tmp227
	leaq	44+mobjinfo(%rip), %rdx	#, tmp228
	movl	(%rax,%rdx), %eax	# mobjinfo[_47].missilestate, _48
# f_finale.c:476: 		    &states[mobjinfo[castorder[castnum].type].missilestate];
	.loc 1 476 7
	movslq	%eax, %rdx	# _48, tmp229
	movq	%rdx, %rax	# tmp229, tmp230
	salq	$3, %rax	#, tmp231
	subq	%rdx, %rax	# tmp229, tmp230
	salq	$3, %rax	#, tmp232
	leaq	states(%rip), %rdx	#, tmp233
	addq	%rdx, %rax	# tmp233, _49
# f_finale.c:475: 		caststate=
	.loc 1 475 12
	movq	%rax, caststate(%rip)	# _49, caststate
.L88:
# f_finale.c:480:     if (castattacking)
	.loc 1 480 9
	movl	castattacking(%rip), %eax	# castattacking, castattacking.51_50
# f_finale.c:480:     if (castattacking)
	.loc 1 480 8
	testl	%eax, %eax	# castattacking.51_50
	je	.L92	#,
# f_finale.c:482: 	if (castframes == 24
	.loc 1 482 17
	movl	castframes(%rip), %eax	# castframes, castframes.52_51
# f_finale.c:482: 	if (castframes == 24
	.loc 1 482 5
	cmpl	$24, %eax	#, castframes.52_51
	je	.L95	#,
# f_finale.c:483: 	    ||	caststate == &states[mobjinfo[castorder[castnum].type].seestate] )
	.loc 1 483 57
	movl	castnum(%rip), %eax	# castnum, castnum.53_52
	cltq
	salq	$4, %rax	#, tmp234
	movq	%rax, %rdx	# tmp234, tmp235
	leaq	8+castorder(%rip), %rax	#, tmp236
	movl	(%rdx,%rax), %eax	# castorder[castnum.53_52].type, _53
# f_finale.c:483: 	    ||	caststate == &states[mobjinfo[castorder[castnum].type].seestate] )
	.loc 1 483 63
	movl	%eax, %eax	# _53, tmp237
	imulq	$92, %rax, %rax	#, tmp237, tmp238
	leaq	12+mobjinfo(%rip), %rdx	#, tmp239
	movl	(%rax,%rdx), %eax	# mobjinfo[_53].seestate, _54
# f_finale.c:483: 	    ||	caststate == &states[mobjinfo[castorder[castnum].type].seestate] )
	.loc 1 483 22
	movslq	%eax, %rdx	# _54, tmp240
	movq	%rdx, %rax	# tmp240, tmp241
	salq	$3, %rax	#, tmp242
	subq	%rdx, %rax	# tmp240, tmp241
	salq	$3, %rax	#, tmp243
	leaq	states(%rip), %rdx	#, tmp244
	addq	%rax, %rdx	# tmp241, _55
# f_finale.c:483: 	    ||	caststate == &states[mobjinfo[castorder[castnum].type].seestate] )
	.loc 1 483 19
	movq	caststate(%rip), %rax	# caststate, caststate.54_56
# f_finale.c:483: 	    ||	caststate == &states[mobjinfo[castorder[castnum].type].seestate] )
	.loc 1 483 6
	cmpq	%rax, %rdx	# caststate.54_56, _55
	jne	.L92	#,
# f_finale.c:485: 	  stopattack:
	.loc 1 485 4
	jmp	.L95	#
.L94:
# f_finale.c:419: 	    goto stopattack;	// Oh, gross hack!
	.loc 1 419 6
	nop	
	jmp	.L66	#
.L95:
# f_finale.c:485: 	  stopattack:
	.loc 1 485 4
	nop	
.L66:
# f_finale.c:486: 	    castattacking = false;
	.loc 1 486 20
	movl	$0, castattacking(%rip)	#, castattacking
# f_finale.c:487: 	    castframes = 0;
	.loc 1 487 17
	movl	$0, castframes(%rip)	#, castframes
# f_finale.c:488: 	    caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 488 53
	movl	castnum(%rip), %eax	# castnum, castnum.55_57
	cltq
	salq	$4, %rax	#, tmp245
	movq	%rax, %rdx	# tmp245, tmp246
	leaq	8+castorder(%rip), %rax	#, tmp247
	movl	(%rdx,%rax), %eax	# castorder[castnum.55_57].type, _58
# f_finale.c:488: 	    caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 488 59
	movl	%eax, %eax	# _58, tmp248
	imulq	$92, %rax, %rax	#, tmp248, tmp249
	leaq	12+mobjinfo(%rip), %rdx	#, tmp250
	movl	(%rax,%rdx), %eax	# mobjinfo[_58].seestate, _59
# f_finale.c:488: 	    caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 488 18
	movslq	%eax, %rdx	# _59, tmp251
	movq	%rdx, %rax	# tmp251, tmp252
	salq	$3, %rax	#, tmp253
	subq	%rdx, %rax	# tmp251, tmp252
	salq	$3, %rax	#, tmp254
	leaq	states(%rip), %rdx	#, tmp255
	addq	%rdx, %rax	# tmp255, _60
# f_finale.c:488: 	    caststate = &states[mobjinfo[castorder[castnum].type].seestate];
	.loc 1 488 16
	movq	%rax, caststate(%rip)	# _60, caststate
.L92:
# f_finale.c:492:     casttics = caststate->tics;
	.loc 1 492 25
	movq	caststate(%rip), %rax	# caststate, caststate.56_61
	movq	16(%rax), %rax	# caststate.56_61->tics, _62
# f_finale.c:492:     casttics = caststate->tics;
	.loc 1 492 14
	movl	%eax, casttics(%rip)	# _63, casttics
# f_finale.c:493:     if (casttics == -1)
	.loc 1 493 18
	movl	casttics(%rip), %eax	# casttics, casttics.57_64
# f_finale.c:493:     if (casttics == -1)
	.loc 1 493 8
	cmpl	$-1, %eax	#, casttics.57_64
	jne	.L57	#,
# f_finale.c:494: 	casttics = 15;
	.loc 1 494 11
	movl	$15, casttics(%rip)	#, casttics
	jmp	.L57	#
.L93:
# f_finale.c:401: 	return;			// not time to change state yet
	.loc 1 401 2
	nop	
.L57:
# f_finale.c:495: }
	.loc 1 495 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	F_CastTicker, .-F_CastTicker
	.globl	F_CastResponder
	.type	F_CastResponder, @function
F_CastResponder:
.LFB6:
	.loc 1 503 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# ev, ev
# f_finale.c:504:     if (ev->type != ev_keydown)
	.loc 1 504 11
	movq	-8(%rbp), %rax	# ev, tmp99
	movl	(%rax), %eax	# ev_20(D)->type, _1
# f_finale.c:504:     if (ev->type != ev_keydown)
	.loc 1 504 8
	testl	%eax, %eax	# _1
	je	.L97	#,
# f_finale.c:505: 	return false;
	.loc 1 505 9
	movl	$0, %eax	#, _16
	jmp	.L98	#
.L97:
# f_finale.c:507:     if (castdeath)
	.loc 1 507 9
	movl	castdeath(%rip), %eax	# castdeath, castdeath.58_2
# f_finale.c:507:     if (castdeath)
	.loc 1 507 8
	testl	%eax, %eax	# castdeath.58_2
	je	.L99	#,
# f_finale.c:508: 	return true;			// already in dying frames
	.loc 1 508 9
	movl	$1, %eax	#, _16
	jmp	.L98	#
.L99:
# f_finale.c:511:     castdeath = true;
	.loc 1 511 15
	movl	$1, castdeath(%rip)	#, castdeath
# f_finale.c:512:     caststate = &states[mobjinfo[castorder[castnum].type].deathstate];
	.loc 1 512 52
	movl	castnum(%rip), %eax	# castnum, castnum.59_3
	cltq
	salq	$4, %rax	#, tmp100
	movq	%rax, %rdx	# tmp100, tmp101
	leaq	8+castorder(%rip), %rax	#, tmp102
	movl	(%rdx,%rax), %eax	# castorder[castnum.59_3].type, _4
# f_finale.c:512:     caststate = &states[mobjinfo[castorder[castnum].type].deathstate];
	.loc 1 512 58
	movl	%eax, %eax	# _4, tmp103
	imulq	$92, %rax, %rax	#, tmp103, tmp104
	leaq	48+mobjinfo(%rip), %rdx	#, tmp105
	movl	(%rax,%rdx), %eax	# mobjinfo[_4].deathstate, _5
# f_finale.c:512:     caststate = &states[mobjinfo[castorder[castnum].type].deathstate];
	.loc 1 512 17
	movslq	%eax, %rdx	# _5, tmp106
	movq	%rdx, %rax	# tmp106, tmp107
	salq	$3, %rax	#, tmp108
	subq	%rdx, %rax	# tmp106, tmp107
	salq	$3, %rax	#, tmp109
	leaq	states(%rip), %rdx	#, tmp110
	addq	%rdx, %rax	# tmp110, _6
# f_finale.c:512:     caststate = &states[mobjinfo[castorder[castnum].type].deathstate];
	.loc 1 512 15
	movq	%rax, caststate(%rip)	# _6, caststate
# f_finale.c:513:     casttics = caststate->tics;
	.loc 1 513 25
	movq	caststate(%rip), %rax	# caststate, caststate.60_7
	movq	16(%rax), %rax	# caststate.60_7->tics, _8
# f_finale.c:513:     casttics = caststate->tics;
	.loc 1 513 14
	movl	%eax, casttics(%rip)	# _9, casttics
# f_finale.c:514:     castframes = 0;
	.loc 1 514 16
	movl	$0, castframes(%rip)	#, castframes
# f_finale.c:515:     castattacking = false;
	.loc 1 515 19
	movl	$0, castattacking(%rip)	#, castattacking
# f_finale.c:516:     if (mobjinfo[castorder[castnum].type].deathsound)
	.loc 1 516 36
	movl	castnum(%rip), %eax	# castnum, castnum.61_10
	cltq
	salq	$4, %rax	#, tmp111
	movq	%rax, %rdx	# tmp111, tmp112
	leaq	8+castorder(%rip), %rax	#, tmp113
	movl	(%rdx,%rax), %eax	# castorder[castnum.61_10].type, _11
# f_finale.c:516:     if (mobjinfo[castorder[castnum].type].deathsound)
	.loc 1 516 42
	movl	%eax, %eax	# _11, tmp114
	imulq	$92, %rax, %rax	#, tmp114, tmp115
	leaq	56+mobjinfo(%rip), %rdx	#, tmp116
	movl	(%rax,%rdx), %eax	# mobjinfo[_11].deathsound, _12
# f_finale.c:516:     if (mobjinfo[castorder[castnum].type].deathsound)
	.loc 1 516 8
	testl	%eax, %eax	# _12
	je	.L100	#,
# f_finale.c:517: 	S_StartSound (NULL, mobjinfo[castorder[castnum].type].deathsound);
	.loc 1 517 49
	movl	castnum(%rip), %eax	# castnum, castnum.62_13
	cltq
	salq	$4, %rax	#, tmp117
	movq	%rax, %rdx	# tmp117, tmp118
	leaq	8+castorder(%rip), %rax	#, tmp119
	movl	(%rdx,%rax), %eax	# castorder[castnum.62_13].type, _14
# f_finale.c:517: 	S_StartSound (NULL, mobjinfo[castorder[castnum].type].deathsound);
	.loc 1 517 2
	movl	%eax, %eax	# _14, tmp120
	imulq	$92, %rax, %rax	#, tmp120, tmp121
	leaq	56+mobjinfo(%rip), %rdx	#, tmp122
	movl	(%rax,%rdx), %eax	# mobjinfo[_14].deathsound, _15
	movl	%eax, %esi	# _15,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L100:
# f_finale.c:519:     return true;
	.loc 1 519 12
	movl	$1, %eax	#, _16
.L98:
# f_finale.c:520: }
	.loc 1 520 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	F_CastResponder, .-F_CastResponder
	.globl	F_CastPrint
	.type	F_CastPrint, @function
F_CastPrint:
.LFB7:
	.loc 1 524 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# text, text
# f_finale.c:532:     ch = text;
	.loc 1 532 8
	movq	-40(%rbp), %rax	# text, tmp94
	movq	%rax, -8(%rbp)	# tmp94, ch
# f_finale.c:533:     width = 0;
	.loc 1 533 11
	movl	$0, -20(%rbp)	#, width
# f_finale.c:535:     while (ch)
	.loc 1 535 11
	jmp	.L102	#
.L108:
# f_finale.c:537: 	c = *ch++;
	.loc 1 537 9
	movq	-8(%rbp), %rax	# ch, ch.63_1
	leaq	1(%rax), %rdx	#, tmp95
	movq	%rdx, -8(%rbp)	# tmp95, ch
# f_finale.c:537: 	c = *ch++;
	.loc 1 537 6
	movzbl	(%rax), %eax	# *ch.63_1, _2
# f_finale.c:537: 	c = *ch++;
	.loc 1 537 4
	movsbl	%al, %eax	# _2, tmp96
	movl	%eax, -16(%rbp)	# tmp96, c
# f_finale.c:538: 	if (!c)
	.loc 1 538 5
	cmpl	$0, -16(%rbp)	#, c
	je	.L116	#,
# f_finale.c:540: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 540 6
	movl	-16(%rbp), %eax	# c, tmp97
	movl	%eax, %edi	# tmp97,
	call	toupper@PLT	#
# f_finale.c:540: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 540 4 discriminator 1
	subl	$33, %eax	#, tmp98
	movl	%eax, -16(%rbp)	# tmp98, c
# f_finale.c:541: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 541 5
	cmpl	$0, -16(%rbp)	#, c
	js	.L105	#,
# f_finale.c:541: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 541 12 discriminator 2
	cmpl	$63, -16(%rbp)	#, c
	jle	.L106	#,
.L105:
# f_finale.c:543: 	    width += 4;
	.loc 1 543 12
	addl	$4, -20(%rbp)	#, width
# f_finale.c:544: 	    continue;
	.loc 1 544 6
	jmp	.L102	#
.L106:
# f_finale.c:547: 	w = SHORT (hu_font[c]->width);
	.loc 1 547 6
	movl	-16(%rbp), %eax	# c, tmp100
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp101
	leaq	hu_font(%rip), %rax	#, tmp102
	movq	(%rdx,%rax), %rax	# hu_font[c_24], _4
	movzwl	(%rax), %eax	# _4->width, _5
# f_finale.c:547: 	w = SHORT (hu_font[c]->width);
	.loc 1 547 4
	cwtl
	movl	%eax, -12(%rbp)	# tmp103, w
# f_finale.c:548: 	width += w;
	.loc 1 548 8
	movl	-12(%rbp), %eax	# w, tmp104
	addl	%eax, -20(%rbp)	# tmp104, width
.L102:
# f_finale.c:535:     while (ch)
	.loc 1 535 12
	cmpq	$0, -8(%rbp)	#, ch
	jne	.L108	#,
	jmp	.L104	#
.L116:
# f_finale.c:539: 	    break;
	.loc 1 539 6
	nop	
.L104:
# f_finale.c:552:     cx = 160-width/2;
	.loc 1 552 19
	movl	-20(%rbp), %eax	# width, tmp105
	movl	%eax, %edx	# tmp105, tmp106
	shrl	$31, %edx	#, tmp106
	addl	%edx, %eax	# tmp106, tmp107
	sarl	%eax	# tmp108
	negl	%eax	# tmp108
# f_finale.c:552:     cx = 160-width/2;
	.loc 1 552 8
	addl	$160, %eax	#, tmp109
	movl	%eax, -24(%rbp)	# tmp109, cx
# f_finale.c:553:     ch = text;
	.loc 1 553 8
	movq	-40(%rbp), %rax	# text, tmp110
	movq	%rax, -8(%rbp)	# tmp110, ch
# f_finale.c:554:     while (ch)
	.loc 1 554 11
	jmp	.L109	#
.L115:
# f_finale.c:556: 	c = *ch++;
	.loc 1 556 9
	movq	-8(%rbp), %rax	# ch, ch.64_7
	leaq	1(%rax), %rdx	#, tmp111
	movq	%rdx, -8(%rbp)	# tmp111, ch
# f_finale.c:556: 	c = *ch++;
	.loc 1 556 6
	movzbl	(%rax), %eax	# *ch.64_7, _8
# f_finale.c:556: 	c = *ch++;
	.loc 1 556 4
	movsbl	%al, %eax	# _8, tmp112
	movl	%eax, -16(%rbp)	# tmp112, c
# f_finale.c:557: 	if (!c)
	.loc 1 557 5
	cmpl	$0, -16(%rbp)	#, c
	je	.L117	#,
# f_finale.c:559: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 559 6
	movl	-16(%rbp), %eax	# c, tmp113
	movl	%eax, %edi	# tmp113,
	call	toupper@PLT	#
# f_finale.c:559: 	c = toupper(c) - HU_FONTSTART;
	.loc 1 559 4 discriminator 1
	subl	$33, %eax	#, tmp114
	movl	%eax, -16(%rbp)	# tmp114, c
# f_finale.c:560: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 560 5
	cmpl	$0, -16(%rbp)	#, c
	js	.L112	#,
# f_finale.c:560: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 560 12 discriminator 2
	cmpl	$63, -16(%rbp)	#, c
	jle	.L113	#,
.L112:
# f_finale.c:562: 	    cx += 4;
	.loc 1 562 9
	addl	$4, -24(%rbp)	#, cx
# f_finale.c:563: 	    continue;
	.loc 1 563 6
	jmp	.L109	#
.L113:
# f_finale.c:566: 	w = SHORT (hu_font[c]->width);
	.loc 1 566 6
	movl	-16(%rbp), %eax	# c, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp117
	leaq	hu_font(%rip), %rax	#, tmp118
	movq	(%rdx,%rax), %rax	# hu_font[c_32], _10
	movzwl	(%rax), %eax	# _10->width, _11
# f_finale.c:566: 	w = SHORT (hu_font[c]->width);
	.loc 1 566 4
	cwtl
	movl	%eax, -12(%rbp)	# tmp119, w
# f_finale.c:567: 	V_DrawPatch(cx, 180, 0, hu_font[c]);
	.loc 1 567 2
	movl	-16(%rbp), %eax	# c, tmp121
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp122
	leaq	hu_font(%rip), %rax	#, tmp123
	movq	(%rdx,%rax), %rdx	# hu_font[c_32], _12
	movl	-24(%rbp), %eax	# cx, tmp124
	movq	%rdx, %rcx	# _12,
	movl	$0, %edx	#,
	movl	$180, %esi	#,
	movl	%eax, %edi	# tmp124,
	call	V_DrawPatch@PLT	#
# f_finale.c:568: 	cx+=w;
	.loc 1 568 4
	movl	-12(%rbp), %eax	# w, tmp125
	addl	%eax, -24(%rbp)	# tmp125, cx
.L109:
# f_finale.c:554:     while (ch)
	.loc 1 554 12
	cmpq	$0, -8(%rbp)	#, ch
	jne	.L115	#,
# f_finale.c:571: }
	.loc 1 571 1
	jmp	.L118	#
.L117:
# f_finale.c:558: 	    break;
	.loc 1 558 6
	nop	
.L118:
# f_finale.c:571: }
	.loc 1 571 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	F_CastPrint, .-F_CastPrint
	.section	.rodata
.LC50:
	.string	"BOSSBACK"
	.text
	.globl	F_CastDrawer
	.type	F_CastDrawer, @function
F_CastDrawer:
.LFB8:
	.loc 1 580 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# f_finale.c:588:     V_DrawPatch (0,0,0, W_CacheLumpName ("BOSSBACK", PU_CACHE));
	.loc 1 588 25
	movl	$101, %esi	#,
	leaq	.LC50(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	W_CacheLumpName@PLT	#
# f_finale.c:588:     V_DrawPatch (0,0,0, W_CacheLumpName ("BOSSBACK", PU_CACHE));
	.loc 1 588 5 discriminator 1
	movq	%rax, %rcx	# _1,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatch@PLT	#
# f_finale.c:590:     F_CastPrint (castorder[castnum].name);
	.loc 1 590 5
	movl	castnum(%rip), %eax	# castnum, castnum.65_2
	cltq
	salq	$4, %rax	#, tmp101
	movq	%rax, %rdx	# tmp101, tmp102
	leaq	castorder(%rip), %rax	#, tmp103
	movq	(%rdx,%rax), %rax	# castorder[castnum.65_2].name, _3
	movq	%rax, %rdi	# _3,
	call	F_CastPrint	#
# f_finale.c:593:     sprdef = &sprites[caststate->sprite];
	.loc 1 593 14
	movq	sprites(%rip), %rdx	# sprites, sprites.66_4
# f_finale.c:593:     sprdef = &sprites[caststate->sprite];
	.loc 1 593 32
	movq	caststate(%rip), %rax	# caststate, caststate.67_5
	movl	(%rax), %eax	# caststate.67_5->sprite, _6
	movl	%eax, %eax	# _6, _7
# f_finale.c:593:     sprdef = &sprites[caststate->sprite];
	.loc 1 593 22
	salq	$4, %rax	#, _8
# f_finale.c:593:     sprdef = &sprites[caststate->sprite];
	.loc 1 593 12
	addq	%rdx, %rax	# sprites.66_4, tmp104
	movq	%rax, -24(%rbp)	# tmp104, sprdef
# f_finale.c:594:     sprframe = &sprdef->spriteframes[ caststate->frame & FF_FRAMEMASK];
	.loc 1 594 23
	movq	-24(%rbp), %rax	# sprdef, tmp105
	movq	8(%rax), %rcx	# sprdef_24->spriteframes, _9
# f_finale.c:594:     sprframe = &sprdef->spriteframes[ caststate->frame & FF_FRAMEMASK];
	.loc 1 594 48
	movq	caststate(%rip), %rax	# caststate, caststate.68_10
	movq	8(%rax), %rax	# caststate.68_10->frame, _11
# f_finale.c:594:     sprframe = &sprdef->spriteframes[ caststate->frame & FF_FRAMEMASK];
	.loc 1 594 56
	andl	$32767, %eax	#, _12
	movq	%rax, %rdx	# _12, _13
# f_finale.c:594:     sprframe = &sprdef->spriteframes[ caststate->frame & FF_FRAMEMASK];
	.loc 1 594 37
	movq	%rdx, %rax	# _13, tmp106
	salq	$3, %rax	#, tmp107
	subq	%rdx, %rax	# _13, tmp106
	salq	$2, %rax	#, tmp108
# f_finale.c:594:     sprframe = &sprdef->spriteframes[ caststate->frame & FF_FRAMEMASK];
	.loc 1 594 14
	addq	%rcx, %rax	# _9, tmp109
	movq	%rax, -16(%rbp)	# tmp109, sprframe
# f_finale.c:595:     lump = sprframe->lump[0];
	.loc 1 595 26
	movq	-16(%rbp), %rax	# sprframe, tmp110
	movzwl	4(%rax), %eax	# sprframe_25->lump[0], _15
# f_finale.c:595:     lump = sprframe->lump[0];
	.loc 1 595 10
	cwtl
	movl	%eax, -32(%rbp)	# tmp111, lump
# f_finale.c:596:     flip = (boolean)sprframe->flip[0];
	.loc 1 596 35
	movq	-16(%rbp), %rax	# sprframe, tmp112
	movzbl	20(%rax), %eax	# sprframe_25->flip[0], _16
# f_finale.c:596:     flip = (boolean)sprframe->flip[0];
	.loc 1 596 10
	movzbl	%al, %eax	# _16, tmp113
	movl	%eax, -28(%rbp)	# tmp113, flip
# f_finale.c:598:     patch = W_CacheLumpNum (lump+firstspritelump, PU_CACHE);
	.loc 1 598 13
	movl	firstspritelump(%rip), %edx	# firstspritelump, firstspritelump.69_17
	movl	-32(%rbp), %eax	# lump, tmp114
	addl	%edx, %eax	# firstspritelump.69_17, _18
	movl	$101, %esi	#,
	movl	%eax, %edi	# _18,
	call	W_CacheLumpNum@PLT	#
	movq	%rax, -8(%rbp)	# tmp115, patch
# f_finale.c:599:     if (flip)
	.loc 1 599 8
	cmpl	$0, -28(%rbp)	#, flip
	je	.L120	#,
# f_finale.c:600: 	V_DrawPatchFlipped (160,170,0,patch);
	.loc 1 600 2
	movq	-8(%rbp), %rax	# patch, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$0, %edx	#,
	movl	$170, %esi	#,
	movl	$160, %edi	#,
	call	V_DrawPatchFlipped@PLT	#
# f_finale.c:603: }
	.loc 1 603 1
	jmp	.L122	#
.L120:
# f_finale.c:602: 	V_DrawPatch (160,170,0,patch);
	.loc 1 602 2
	movq	-8(%rbp), %rax	# patch, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$0, %edx	#,
	movl	$170, %esi	#,
	movl	$160, %edi	#,
	call	V_DrawPatch@PLT	#
.L122:
# f_finale.c:603: }
	.loc 1 603 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	F_CastDrawer, .-F_CastDrawer
	.globl	F_DrawPatchCol
	.type	F_DrawPatchCol, @function
F_DrawPatchCol:
.LFB9:
	.loc 1 614 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -52(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# patch, patch
	movl	%edx, -56(%rbp)	# col, col
# f_finale.c:621:     column = (column_t *)((byte *)patch + LONG(patch->columnofs[col]));
	.loc 1 621 43
	movq	-64(%rbp), %rax	# patch, tmp98
	movl	-56(%rbp), %edx	# col, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movl	8(%rax,%rdx,4), %eax	# patch_24(D)->columnofs[col_25(D)], _1
	movslq	%eax, %rdx	# _1, _2
# f_finale.c:621:     column = (column_t *)((byte *)patch + LONG(patch->columnofs[col]));
	.loc 1 621 12
	movq	-64(%rbp), %rax	# patch, tmp104
	addq	%rdx, %rax	# _2, tmp103
	movq	%rax, -32(%rbp)	# tmp103, column
# f_finale.c:622:     desttop = screens[0]+x;
	.loc 1 622 22
	movq	screens(%rip), %rdx	# screens[0], _3
# f_finale.c:622:     desttop = screens[0]+x;
	.loc 1 622 25
	movl	-52(%rbp), %eax	# x, tmp105
	cltq
# f_finale.c:622:     desttop = screens[0]+x;
	.loc 1 622 13
	addq	%rdx, %rax	# _3, tmp106
	movq	%rax, -8(%rbp)	# tmp106, desttop
# f_finale.c:625:     while (column->topdelta != 0xff )
	.loc 1 625 11
	jmp	.L124	#
.L127:
# f_finale.c:627: 	source = (byte *)column + 3;
	.loc 1 627 9
	movq	-32(%rbp), %rax	# column, tmp110
	addq	$3, %rax	#, tmp109
	movq	%rax, -24(%rbp)	# tmp109, source
# f_finale.c:628: 	dest = desttop + column->topdelta*SCREENWIDTH;
	.loc 1 628 25
	movq	-32(%rbp), %rax	# column, tmp111
	movzbl	(%rax), %eax	# column_17->topdelta, _5
	movzbl	%al, %edx	# _5, _6
# f_finale.c:628: 	dest = desttop + column->topdelta*SCREENWIDTH;
	.loc 1 628 35
	movl	%edx, %eax	# _6, tmp112
	sall	$2, %eax	#, tmp112
	addl	%edx, %eax	# _6, tmp112
	sall	$6, %eax	#, tmp113
	movslq	%eax, %rdx	# _7, _8
# f_finale.c:628: 	dest = desttop + column->topdelta*SCREENWIDTH;
	.loc 1 628 7
	movq	-8(%rbp), %rax	# desttop, tmp117
	addq	%rdx, %rax	# _8, tmp116
	movq	%rax, -16(%rbp)	# tmp116, dest
# f_finale.c:629: 	count = column->length;
	.loc 1 629 16
	movq	-32(%rbp), %rax	# column, tmp118
	movzbl	1(%rax), %eax	# column_17->length, _9
# f_finale.c:629: 	count = column->length;
	.loc 1 629 8
	movzbl	%al, %eax	# _9, tmp119
	movl	%eax, -36(%rbp)	# tmp119, count
# f_finale.c:631: 	while (count--)
	.loc 1 631 8
	jmp	.L125	#
.L126:
# f_finale.c:633: 	    *dest = *source++;
	.loc 1 633 21
	movq	-24(%rbp), %rax	# source, source.70_10
	leaq	1(%rax), %rdx	#, tmp120
	movq	%rdx, -24(%rbp)	# tmp120, source
# f_finale.c:633: 	    *dest = *source++;
	.loc 1 633 14
	movzbl	(%rax), %edx	# *source.70_10, _11
# f_finale.c:633: 	    *dest = *source++;
	.loc 1 633 12
	movq	-16(%rbp), %rax	# dest, tmp121
	movb	%dl, (%rax)	# _11, *dest_19
# f_finale.c:634: 	    dest += SCREENWIDTH;
	.loc 1 634 11
	addq	$320, -16(%rbp)	#, dest
.L125:
# f_finale.c:631: 	while (count--)
	.loc 1 631 14
	movl	-36(%rbp), %eax	# count, count.71_12
	leal	-1(%rax), %edx	#, tmp122
	movl	%edx, -36(%rbp)	# tmp122, count
# f_finale.c:631: 	while (count--)
	.loc 1 631 9
	testl	%eax, %eax	# count.71_12
	jne	.L126	#,
# f_finale.c:636: 	column = (column_t *)(  (byte *)column + column->length + 4 );
	.loc 1 636 49
	movq	-32(%rbp), %rax	# column, tmp123
	movzbl	1(%rax), %eax	# column_17->length, _13
	movzbl	%al, %eax	# _13, _14
# f_finale.c:636: 	column = (column_t *)(  (byte *)column + column->length + 4 );
	.loc 1 636 58
	addq	$4, %rax	#, _15
# f_finale.c:636: 	column = (column_t *)(  (byte *)column + column->length + 4 );
	.loc 1 636 9
	addq	%rax, -32(%rbp)	# _15, column
.L124:
# f_finale.c:625:     while (column->topdelta != 0xff )
	.loc 1 625 18
	movq	-32(%rbp), %rax	# column, tmp124
	movzbl	(%rax), %eax	# column_17->topdelta, _16
# f_finale.c:625:     while (column->topdelta != 0xff )
	.loc 1 625 29
	cmpb	$-1, %al	#, _16
	jne	.L127	#,
# f_finale.c:638: }
	.loc 1 638 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	F_DrawPatchCol, .-F_DrawPatchCol
	.section	.rodata
.LC51:
	.string	"PFUB2"
.LC52:
	.string	"PFUB1"
.LC53:
	.string	"END0"
.LC54:
	.string	"END%i"
	.text
	.globl	F_BunnyScroll
	.type	F_BunnyScroll, @function
F_BunnyScroll:
.LFB10:
	.loc 1 645 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# f_finale.c:645: {
	.loc 1 645 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	movq	%rax, -8(%rbp)	# tmp126, D.7329
	xorl	%eax, %eax	# tmp126
# f_finale.c:654:     p1 = W_CacheLumpName ("PFUB2", PU_LEVEL);
	.loc 1 654 10
	movl	$50, %esi	#,
	leaq	.LC51(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -40(%rbp)	# tmp97, p1
# f_finale.c:655:     p2 = W_CacheLumpName ("PFUB1", PU_LEVEL);
	.loc 1 655 10
	movl	$50, %esi	#,
	leaq	.LC52(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	W_CacheLumpName@PLT	#
	movq	%rax, -32(%rbp)	# tmp99, p2
# f_finale.c:657:     V_MarkRect (0, 0, SCREENWIDTH, SCREENHEIGHT);
	.loc 1 657 5
	movl	$200, %ecx	#,
	movl	$320, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_MarkRect@PLT	#
# f_finale.c:659:     scrolled = 320 - (finalecount-230)/2;
	.loc 1 659 34
	movl	finalecount(%rip), %eax	# finalecount, finalecount.72_1
	subl	$230, %eax	#, _2
# f_finale.c:659:     scrolled = 320 - (finalecount-230)/2;
	.loc 1 659 39
	movl	%eax, %edx	# _2, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
	negl	%eax	# tmp102
# f_finale.c:659:     scrolled = 320 - (finalecount-230)/2;
	.loc 1 659 14
	addl	$320, %eax	#, tmp103
	movl	%eax, -52(%rbp)	# tmp103, scrolled
# f_finale.c:660:     if (scrolled > 320)
	.loc 1 660 8
	cmpl	$320, -52(%rbp)	#, scrolled
	jle	.L129	#,
# f_finale.c:661: 	scrolled = 320;
	.loc 1 661 11
	movl	$320, -52(%rbp)	#, scrolled
.L129:
# f_finale.c:662:     if (scrolled < 0)
	.loc 1 662 8
	cmpl	$0, -52(%rbp)	#, scrolled
	jns	.L130	#,
# f_finale.c:663: 	scrolled = 0;
	.loc 1 663 11
	movl	$0, -52(%rbp)	#, scrolled
.L130:
# f_finale.c:665:     for ( x=0 ; x<SCREENWIDTH ; x++)
	.loc 1 665 12
	movl	$0, -48(%rbp)	#, x
# f_finale.c:665:     for ( x=0 ; x<SCREENWIDTH ; x++)
	.loc 1 665 5
	jmp	.L131	#
.L134:
# f_finale.c:667: 	if (x+scrolled < 320)
	.loc 1 667 7
	movl	-48(%rbp), %edx	# x, tmp104
	movl	-52(%rbp), %eax	# scrolled, tmp105
	addl	%edx, %eax	# tmp104, _4
# f_finale.c:667: 	if (x+scrolled < 320)
	.loc 1 667 5
	cmpl	$319, %eax	#, _4
	jg	.L132	#,
# f_finale.c:668: 	    F_DrawPatchCol (x, p1, x+scrolled);
	.loc 1 668 6
	movl	-48(%rbp), %edx	# x, tmp106
	movl	-52(%rbp), %eax	# scrolled, tmp107
	addl	%eax, %edx	# tmp107, _5
	movq	-40(%rbp), %rcx	# p1, tmp108
	movl	-48(%rbp), %eax	# x, tmp109
	movq	%rcx, %rsi	# tmp108,
	movl	%eax, %edi	# tmp109,
	call	F_DrawPatchCol	#
	jmp	.L133	#
.L132:
# f_finale.c:670: 	    F_DrawPatchCol (x, p2, x+scrolled - 320);		
	.loc 1 670 30
	movl	-48(%rbp), %edx	# x, tmp110
	movl	-52(%rbp), %eax	# scrolled, tmp111
	addl	%edx, %eax	# tmp110, _6
# f_finale.c:670: 	    F_DrawPatchCol (x, p2, x+scrolled - 320);		
	.loc 1 670 6
	leal	-320(%rax), %edx	#, _7
	movq	-32(%rbp), %rcx	# p2, tmp112
	movl	-48(%rbp), %eax	# x, tmp113
	movq	%rcx, %rsi	# tmp112,
	movl	%eax, %edi	# tmp113,
	call	F_DrawPatchCol	#
.L133:
# f_finale.c:665:     for ( x=0 ; x<SCREENWIDTH ; x++)
	.loc 1 665 34 discriminator 2
	addl	$1, -48(%rbp)	#, x
.L131:
# f_finale.c:665:     for ( x=0 ; x<SCREENWIDTH ; x++)
	.loc 1 665 18 discriminator 1
	cmpl	$319, -48(%rbp)	#, x
	jle	.L134	#,
# f_finale.c:673:     if (finalecount < 1130)
	.loc 1 673 21
	movl	finalecount(%rip), %eax	# finalecount, finalecount.73_8
# f_finale.c:673:     if (finalecount < 1130)
	.loc 1 673 8
	cmpl	$1129, %eax	#, finalecount.73_8
	jle	.L142	#,
# f_finale.c:675:     if (finalecount < 1180)
	.loc 1 675 21
	movl	finalecount(%rip), %eax	# finalecount, finalecount.74_9
# f_finale.c:675:     if (finalecount < 1180)
	.loc 1 675 8
	cmpl	$1179, %eax	#, finalecount.74_9
	jg	.L137	#,
# f_finale.c:678: 		     (SCREENHEIGHT-8*8)/2,0, W_CacheLumpName ("END0",PU_CACHE));
	.loc 1 678 32
	movl	$101, %esi	#,
	leaq	.LC53(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	W_CacheLumpName@PLT	#
# f_finale.c:677: 	V_DrawPatch ((SCREENWIDTH-13*8)/2,
	.loc 1 677 2
	movq	%rax, %rcx	# _10,
	movl	$0, %edx	#,
	movl	$68, %esi	#,
	movl	$108, %edi	#,
	call	V_DrawPatch@PLT	#
# f_finale.c:679: 	laststage = 0;
	.loc 1 679 12
	movl	$0, laststage.0(%rip)	#, laststage
# f_finale.c:680: 	return;
	.loc 1 680 2
	jmp	.L128	#
.L137:
# f_finale.c:683:     stage = (finalecount-1180) / 5;
	.loc 1 683 25
	movl	finalecount(%rip), %eax	# finalecount, finalecount.75_11
	subl	$1180, %eax	#, _12
# f_finale.c:683:     stage = (finalecount-1180) / 5;
	.loc 1 683 11
	movslq	%eax, %rdx	# _12, tmp115
	imulq	$1717986919, %rdx, %rdx	#, tmp115, tmp116
	shrq	$32, %rdx	#, tmp117
	movl	%edx, %ecx	# tmp117, tmp118
	sarl	%ecx	# tmp118
	cltd
	movl	%ecx, %eax	# tmp118, tmp118
	subl	%edx, %eax	# tmp119, tmp118
	movl	%eax, -44(%rbp)	# tmp120, stage
# f_finale.c:684:     if (stage > 6)
	.loc 1 684 8
	cmpl	$6, -44(%rbp)	#, stage
	jle	.L138	#,
# f_finale.c:685: 	stage = 6;
	.loc 1 685 8
	movl	$6, -44(%rbp)	#, stage
.L138:
# f_finale.c:686:     if (stage > laststage)
	.loc 1 686 15
	movl	laststage.0(%rip), %eax	# laststage, laststage.76_13
# f_finale.c:686:     if (stage > laststage)
	.loc 1 686 8
	cmpl	%eax, -44(%rbp)	# laststage.76_13, stage
	jle	.L139	#,
# f_finale.c:688: 	S_StartSound (NULL, sfx_pistol);
	.loc 1 688 2
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
# f_finale.c:689: 	laststage = stage;
	.loc 1 689 12
	movl	-44(%rbp), %eax	# stage, tmp121
	movl	%eax, laststage.0(%rip)	# tmp121, laststage
.L139:
# f_finale.c:692:     sprintf (name,"END%i",stage);
	.loc 1 692 5
	movl	-44(%rbp), %edx	# stage, tmp122
	leaq	-18(%rbp), %rax	#, tmp123
	leaq	.LC54(%rip), %rcx	#, tmp124
	movq	%rcx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# f_finale.c:693:     V_DrawPatch ((SCREENWIDTH-13*8)/2, (SCREENHEIGHT-8*8)/2,0, W_CacheLumpName (name,PU_CACHE));
	.loc 1 693 64
	leaq	-18(%rbp), %rax	#, tmp125
	movl	$101, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	W_CacheLumpName@PLT	#
# f_finale.c:693:     V_DrawPatch ((SCREENWIDTH-13*8)/2, (SCREENHEIGHT-8*8)/2,0, W_CacheLumpName (name,PU_CACHE));
	.loc 1 693 5 discriminator 1
	movq	%rax, %rcx	# _14,
	movl	$0, %edx	#,
	movl	$68, %esi	#,
	movl	$108, %edi	#,
	call	V_DrawPatch@PLT	#
	jmp	.L128	#
.L142:
# f_finale.c:674: 	return;
	.loc 1 674 2
	nop	
.L128:
# f_finale.c:694: }
	.loc 1 694 1
	movq	-8(%rbp), %rax	# D.7329, tmp127
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	je	.L141	#,
	call	__stack_chk_fail@PLT	#
.L141:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	F_BunnyScroll, .-F_BunnyScroll
	.section	.rodata
.LC55:
	.string	"CREDIT"
.LC56:
	.string	"HELP2"
.LC57:
	.string	"VICTORY2"
.LC58:
	.string	"ENDPIC"
	.text
	.globl	F_Drawer
	.type	F_Drawer, @function
F_Drawer:
.LFB11:
	.loc 1 701 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# f_finale.c:702:     if (finalestage == 2)
	.loc 1 702 21
	movl	finalestage(%rip), %eax	# finalestage, finalestage.77_1
# f_finale.c:702:     if (finalestage == 2)
	.loc 1 702 8
	cmpl	$2, %eax	#, finalestage.77_1
	jne	.L144	#,
# f_finale.c:704: 	F_CastDrawer ();
	.loc 1 704 2
	call	F_CastDrawer	#
# f_finale.c:705: 	return;
	.loc 1 705 2
	jmp	.L143	#
.L144:
# f_finale.c:708:     if (!finalestage)
	.loc 1 708 9
	movl	finalestage(%rip), %eax	# finalestage, finalestage.78_2
# f_finale.c:708:     if (!finalestage)
	.loc 1 708 8
	testl	%eax, %eax	# finalestage.78_2
	jne	.L146	#,
# f_finale.c:709: 	F_TextWrite ();
	.loc 1 709 2
	call	F_TextWrite	#
	jmp	.L143	#
.L146:
# f_finale.c:712: 	switch (gameepisode)
	.loc 1 712 2
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.79_3
	cmpl	$4, %eax	#, gameepisode.79_3
	je	.L147	#,
	cmpl	$4, %eax	#, gameepisode.79_3
	jg	.L143	#,
	cmpl	$3, %eax	#, gameepisode.79_3
	je	.L148	#,
	cmpl	$3, %eax	#, gameepisode.79_3
	jg	.L143	#,
	cmpl	$1, %eax	#, gameepisode.79_3
	je	.L149	#,
	cmpl	$2, %eax	#, gameepisode.79_3
	je	.L150	#,
	jmp	.L143	#
.L149:
# f_finale.c:715: 	    if ( gamemode == retail )
	.loc 1 715 20
	movl	gamemode(%rip), %eax	# gamemode, gamemode.80_4
# f_finale.c:715: 	    if ( gamemode == retail )
	.loc 1 715 9
	cmpl	$3, %eax	#, gamemode.80_4
	jne	.L151	#,
# f_finale.c:717: 			 W_CacheLumpName("CREDIT",PU_CACHE));
	.loc 1 717 5
	movl	$101, %esi	#,
	leaq	.LC55(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	W_CacheLumpName@PLT	#
# f_finale.c:716: 	      V_DrawPatch (0,0,0,
	.loc 1 716 8
	movq	%rax, %rcx	# _5,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatch@PLT	#
# f_finale.c:721: 	    break;
	.loc 1 721 6
	jmp	.L143	#
.L151:
# f_finale.c:720: 			 W_CacheLumpName("HELP2",PU_CACHE));
	.loc 1 720 5
	movl	$101, %esi	#,
	leaq	.LC56(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	W_CacheLumpName@PLT	#
# f_finale.c:719: 	      V_DrawPatch (0,0,0,
	.loc 1 719 8
	movq	%rax, %rcx	# _6,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatch@PLT	#
# f_finale.c:721: 	    break;
	.loc 1 721 6
	jmp	.L143	#
.L150:
# f_finale.c:724: 			W_CacheLumpName("VICTORY2",PU_CACHE));
	.loc 1 724 4
	movl	$101, %esi	#,
	leaq	.LC57(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	W_CacheLumpName@PLT	#
# f_finale.c:723: 	    V_DrawPatch(0,0,0,
	.loc 1 723 6
	movq	%rax, %rcx	# _7,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatch@PLT	#
# f_finale.c:725: 	    break;
	.loc 1 725 6
	jmp	.L143	#
.L148:
# f_finale.c:727: 	    F_BunnyScroll ();
	.loc 1 727 6
	call	F_BunnyScroll	#
# f_finale.c:728: 	    break;
	.loc 1 728 6
	jmp	.L143	#
.L147:
# f_finale.c:731: 			 W_CacheLumpName("ENDPIC",PU_CACHE));
	.loc 1 731 5
	movl	$101, %esi	#,
	leaq	.LC58(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	W_CacheLumpName@PLT	#
# f_finale.c:730: 	    V_DrawPatch (0,0,0,
	.loc 1 730 6
	movq	%rax, %rcx	# _8,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	V_DrawPatch@PLT	#
# f_finale.c:732: 	    break;
	.loc 1 732 6
	nop	
.L143:
# f_finale.c:736: }
	.loc 1 736 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	F_Drawer, .-F_Drawer
	.local	laststage.0
	.comm	laststage.0,4,4
.Letext0:
	.file 2 "doomtype.h"
	.file 3 "d_ticcmd.h"
	.file 4 "d_event.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 6 "doomdef.h"
	.file 7 "m_fixed.h"
	.file 8 "d_think.h"
	.file 9 "tables.h"
	.file 10 "doomdata.h"
	.file 11 "info.h"
	.file 12 "p_mobj.h"
	.file 13 "r_defs.h"
	.file 14 "d_player.h"
	.file 15 "p_pspr.h"
	.file 16 "r_state.h"
	.file 17 "v_video.h"
	.file 18 "sounds.h"
	.file 19 "doomstat.h"
	.file 20 "/usr/include/stdio.h"
	.file 21 "w_wad.h"
	.file 22 "s_sound.h"
	.file 23 "/usr/include/ctype.h"
	.file 24 "/usr/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3d45
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x23
	.long	.LASF1767
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.long	0x51
	.long	0x3e
	.uleb128 0xb
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
	.uleb128 0x24
	.long	.LASF1741
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x11
	.byte	0x4
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
	.uleb128 0x25
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x26
	.byte	0x8
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x8
	.long	0x51
	.uleb128 0xe
	.long	0x7a
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.long	0xc2
	.uleb128 0x1
	.long	.LASF10
	.byte	0
	.uleb128 0x1
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0x22
	.byte	0x1c
	.long	0xa9
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x24
	.byte	0x17
	.long	0x6c
	.uleb128 0x13
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
	.long	0x88
	.byte	0x2
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0x29
	.byte	0xb
	.long	0x88
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
	.uleb128 0x6
	.long	.LASF20
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.long	0xda
	.uleb128 0xe
	.long	0x7a
	.byte	0x4
	.byte	0x24
	.byte	0x1
	.long	0x162
	.uleb128 0x1
	.long	.LASF21
	.byte	0
	.uleb128 0x1
	.long	.LASF22
	.byte	0x1
	.uleb128 0x1
	.long	.LASF23
	.byte	0x2
	.uleb128 0x1
	.long	.LASF24
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF25
	.byte	0x4
	.byte	0x29
	.byte	0x3
	.long	0x13d
	.uleb128 0x13
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
	.long	0x8f
	.byte	0x4
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x30
	.byte	0xa
	.long	0x8f
	.byte	0x8
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x31
	.byte	0xa
	.long	0x8f
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF30
	.byte	0x4
	.byte	0x32
	.byte	0x3
	.long	0x16e
	.uleb128 0xe
	.long	0x7a
	.byte	0x4
	.byte	0x36
	.byte	0x1
	.long	0x200
	.uleb128 0x1
	.long	.LASF31
	.byte	0
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1
	.uleb128 0x1
	.long	.LASF33
	.byte	0x2
	.uleb128 0x1
	.long	.LASF34
	.byte	0x3
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.uleb128 0x1
	.long	.LASF37
	.byte	0x6
	.uleb128 0x1
	.long	.LASF38
	.byte	0x7
	.uleb128 0x1
	.long	.LASF39
	.byte	0x8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.long	.LASF41
	.byte	0x4
	.byte	0x41
	.byte	0x3
	.long	0x1b7
	.uleb128 0xf
	.long	.LASF1221
	.byte	0x4
	.byte	0x72
	.byte	0x19
	.long	0x200
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0xe
	.long	0x7a
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.long	0x24f
	.uleb128 0x1
	.long	.LASF43
	.byte	0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x1
	.uleb128 0x1
	.long	.LASF45
	.byte	0x2
	.uleb128 0x1
	.long	.LASF46
	.byte	0x3
	.uleb128 0x1
	.long	.LASF47
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x6
	.byte	0x2f
	.byte	0x3
	.long	0x224
	.uleb128 0xe
	.long	0x7a
	.byte	0x6
	.byte	0x80
	.byte	0x1
	.long	0x280
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
	.byte	0
	.uleb128 0x6
	.long	.LASF53
	.byte	0x6
	.byte	0x85
	.byte	0x3
	.long	0x25b
	.uleb128 0xe
	.long	0x7a
	.byte	0x6
	.byte	0xa3
	.byte	0x1
	.long	0x2c3
	.uleb128 0x1
	.long	.LASF54
	.byte	0
	.uleb128 0x1
	.long	.LASF55
	.byte	0x1
	.uleb128 0x1
	.long	.LASF56
	.byte	0x2
	.uleb128 0x1
	.long	.LASF57
	.byte	0x3
	.uleb128 0x1
	.long	.LASF58
	.byte	0x4
	.uleb128 0x1
	.long	.LASF59
	.byte	0x5
	.uleb128 0x1
	.long	.LASF60
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.long	0x7a
	.byte	0x6
	.byte	0xb5
	.byte	0x1
	.long	0x312
	.uleb128 0x1
	.long	.LASF61
	.byte	0
	.uleb128 0x1
	.long	.LASF62
	.byte	0x1
	.uleb128 0x1
	.long	.LASF63
	.byte	0x2
	.uleb128 0x1
	.long	.LASF64
	.byte	0x3
	.uleb128 0x1
	.long	.LASF65
	.byte	0x4
	.uleb128 0x1
	.long	.LASF66
	.byte	0x5
	.uleb128 0x1
	.long	.LASF67
	.byte	0x6
	.uleb128 0x1
	.long	.LASF68
	.byte	0x7
	.uleb128 0x1
	.long	.LASF69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF70
	.byte	0x9
	.uleb128 0x1
	.long	.LASF71
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF72
	.byte	0x6
	.byte	0xc5
	.byte	0x3
	.long	0x2c3
	.uleb128 0xe
	.long	0x7a
	.byte	0x6
	.byte	0xca
	.byte	0x1
	.long	0x34f
	.uleb128 0x1
	.long	.LASF73
	.byte	0
	.uleb128 0x1
	.long	.LASF74
	.byte	0x1
	.uleb128 0x1
	.long	.LASF75
	.byte	0x2
	.uleb128 0x1
	.long	.LASF76
	.byte	0x3
	.uleb128 0x1
	.long	.LASF77
	.byte	0x4
	.uleb128 0x1
	.long	.LASF78
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x7a
	.byte	0x6
	.byte	0xd7
	.byte	0x1
	.long	0x386
	.uleb128 0x1
	.long	.LASF79
	.byte	0
	.uleb128 0x1
	.long	.LASF80
	.byte	0x1
	.uleb128 0x1
	.long	.LASF81
	.byte	0x2
	.uleb128 0x1
	.long	.LASF82
	.byte	0x3
	.uleb128 0x1
	.long	.LASF83
	.byte	0x4
	.uleb128 0x1
	.long	.LASF84
	.byte	0x5
	.uleb128 0x1
	.long	.LASF85
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.long	.LASF86
	.byte	0x7
	.byte	0x26
	.byte	0xd
	.long	0x8f
	.uleb128 0x6
	.long	.LASF87
	.byte	0x8
	.byte	0x29
	.byte	0x11
	.long	0x39e
	.uleb128 0x8
	.long	0x3a3
	.uleb128 0x27
	.long	0x3aa
	.uleb128 0x1d
	.byte	0
	.uleb128 0x6
	.long	.LASF88
	.byte	0x8
	.byte	0x2a
	.byte	0x11
	.long	0x3b6
	.uleb128 0x8
	.long	0x3bb
	.uleb128 0x1e
	.long	0x3c6
	.uleb128 0x5
	.long	0x9d
	.byte	0
	.uleb128 0x6
	.long	.LASF89
	.byte	0x8
	.byte	0x2b
	.byte	0x11
	.long	0x3d2
	.uleb128 0x8
	.long	0x3d7
	.uleb128 0x1e
	.long	0x3e7
	.uleb128 0x5
	.long	0x9d
	.uleb128 0x5
	.long	0x9d
	.byte	0
	.uleb128 0x28
	.byte	0x8
	.byte	0x8
	.byte	0x2d
	.byte	0x9
	.long	0x411
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x2f
	.long	0x3aa
	.uleb128 0x29
	.string	"acv"
	.byte	0x8
	.byte	0x30
	.byte	0xd
	.long	0x392
	.uleb128 0x1f
	.long	.LASF91
	.byte	0x31
	.long	0x3c6
	.byte	0
	.uleb128 0x6
	.long	.LASF92
	.byte	0x8
	.byte	0x33
	.byte	0x3
	.long	0x3e7
	.uleb128 0x6
	.long	.LASF93
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.long	0x411
	.uleb128 0x17
	.long	.LASF1387
	.byte	0x18
	.byte	0x8
	.byte	0x40
	.long	0x45d
	.uleb128 0x3
	.long	.LASF94
	.byte	0x8
	.byte	0x42
	.byte	0x17
	.long	0x45d
	.byte	0
	.uleb128 0x3
	.long	.LASF95
	.byte	0x8
	.byte	0x43
	.byte	0x17
	.long	0x45d
	.byte	0x8
	.uleb128 0x3
	.long	.LASF96
	.byte	0x8
	.byte	0x44
	.byte	0xe
	.long	0x41d
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x429
	.uleb128 0x6
	.long	.LASF97
	.byte	0x8
	.byte	0x46
	.byte	0x3
	.long	0x429
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.long	.LASF98
	.uleb128 0x11
	.byte	0x8
	.byte	0x4
	.long	.LASF99
	.uleb128 0x6
	.long	.LASF100
	.byte	0x9
	.byte	0x4e
	.byte	0x12
	.long	0x7a
	.uleb128 0xa
	.long	0x88
	.long	0x498
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.byte	0xa
	.byte	0xa
	.byte	0xcb
	.long	0x4de
	.uleb128 0x9
	.string	"x"
	.byte	0xa
	.byte	0xcd
	.byte	0xc
	.long	0x88
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0xa
	.byte	0xce
	.byte	0xc
	.long	0x88
	.byte	0x2
	.uleb128 0x3
	.long	.LASF101
	.byte	0xa
	.byte	0xcf
	.byte	0xc
	.long	0x88
	.byte	0x4
	.uleb128 0x3
	.long	.LASF26
	.byte	0xa
	.byte	0xd0
	.byte	0xc
	.long	0x88
	.byte	0x6
	.uleb128 0x3
	.long	.LASF102
	.byte	0xa
	.byte	0xd1
	.byte	0xc
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF103
	.byte	0xa
	.byte	0xd2
	.byte	0x3
	.long	0x498
	.uleb128 0xe
	.long	0x7a
	.byte	0xb
	.byte	0x1f
	.byte	0x1
	.long	0x839
	.uleb128 0x1
	.long	.LASF104
	.byte	0
	.uleb128 0x1
	.long	.LASF105
	.byte	0x1
	.uleb128 0x1
	.long	.LASF106
	.byte	0x2
	.uleb128 0x1
	.long	.LASF107
	.byte	0x3
	.uleb128 0x1
	.long	.LASF108
	.byte	0x4
	.uleb128 0x1
	.long	.LASF109
	.byte	0x5
	.uleb128 0x1
	.long	.LASF110
	.byte	0x6
	.uleb128 0x1
	.long	.LASF111
	.byte	0x7
	.uleb128 0x1
	.long	.LASF112
	.byte	0x8
	.uleb128 0x1
	.long	.LASF113
	.byte	0x9
	.uleb128 0x1
	.long	.LASF114
	.byte	0xa
	.uleb128 0x1
	.long	.LASF115
	.byte	0xb
	.uleb128 0x1
	.long	.LASF116
	.byte	0xc
	.uleb128 0x1
	.long	.LASF117
	.byte	0xd
	.uleb128 0x1
	.long	.LASF118
	.byte	0xe
	.uleb128 0x1
	.long	.LASF119
	.byte	0xf
	.uleb128 0x1
	.long	.LASF120
	.byte	0x10
	.uleb128 0x1
	.long	.LASF121
	.byte	0x11
	.uleb128 0x1
	.long	.LASF122
	.byte	0x12
	.uleb128 0x1
	.long	.LASF123
	.byte	0x13
	.uleb128 0x1
	.long	.LASF124
	.byte	0x14
	.uleb128 0x1
	.long	.LASF125
	.byte	0x15
	.uleb128 0x1
	.long	.LASF126
	.byte	0x16
	.uleb128 0x1
	.long	.LASF127
	.byte	0x17
	.uleb128 0x1
	.long	.LASF128
	.byte	0x18
	.uleb128 0x1
	.long	.LASF129
	.byte	0x19
	.uleb128 0x1
	.long	.LASF130
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF131
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF132
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF133
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF134
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF135
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF136
	.byte	0x20
	.uleb128 0x1
	.long	.LASF137
	.byte	0x21
	.uleb128 0x1
	.long	.LASF138
	.byte	0x22
	.uleb128 0x1
	.long	.LASF139
	.byte	0x23
	.uleb128 0x1
	.long	.LASF140
	.byte	0x24
	.uleb128 0x1
	.long	.LASF141
	.byte	0x25
	.uleb128 0x1
	.long	.LASF142
	.byte	0x26
	.uleb128 0x1
	.long	.LASF143
	.byte	0x27
	.uleb128 0x1
	.long	.LASF144
	.byte	0x28
	.uleb128 0x1
	.long	.LASF145
	.byte	0x29
	.uleb128 0x1
	.long	.LASF146
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF147
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF148
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF149
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF150
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF151
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF152
	.byte	0x30
	.uleb128 0x1
	.long	.LASF153
	.byte	0x31
	.uleb128 0x1
	.long	.LASF154
	.byte	0x32
	.uleb128 0x1
	.long	.LASF155
	.byte	0x33
	.uleb128 0x1
	.long	.LASF156
	.byte	0x34
	.uleb128 0x1
	.long	.LASF157
	.byte	0x35
	.uleb128 0x1
	.long	.LASF158
	.byte	0x36
	.uleb128 0x1
	.long	.LASF159
	.byte	0x37
	.uleb128 0x1
	.long	.LASF160
	.byte	0x38
	.uleb128 0x1
	.long	.LASF161
	.byte	0x39
	.uleb128 0x1
	.long	.LASF162
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF163
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF164
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF165
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF166
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF167
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF168
	.byte	0x40
	.uleb128 0x1
	.long	.LASF169
	.byte	0x41
	.uleb128 0x1
	.long	.LASF170
	.byte	0x42
	.uleb128 0x1
	.long	.LASF171
	.byte	0x43
	.uleb128 0x1
	.long	.LASF172
	.byte	0x44
	.uleb128 0x1
	.long	.LASF173
	.byte	0x45
	.uleb128 0x1
	.long	.LASF174
	.byte	0x46
	.uleb128 0x1
	.long	.LASF175
	.byte	0x47
	.uleb128 0x1
	.long	.LASF176
	.byte	0x48
	.uleb128 0x1
	.long	.LASF177
	.byte	0x49
	.uleb128 0x1
	.long	.LASF178
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF179
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF180
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF181
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF182
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF183
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF184
	.byte	0x50
	.uleb128 0x1
	.long	.LASF185
	.byte	0x51
	.uleb128 0x1
	.long	.LASF186
	.byte	0x52
	.uleb128 0x1
	.long	.LASF187
	.byte	0x53
	.uleb128 0x1
	.long	.LASF188
	.byte	0x54
	.uleb128 0x1
	.long	.LASF189
	.byte	0x55
	.uleb128 0x1
	.long	.LASF190
	.byte	0x56
	.uleb128 0x1
	.long	.LASF191
	.byte	0x57
	.uleb128 0x1
	.long	.LASF192
	.byte	0x58
	.uleb128 0x1
	.long	.LASF193
	.byte	0x59
	.uleb128 0x1
	.long	.LASF194
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF195
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF196
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF197
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF198
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF199
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF200
	.byte	0x60
	.uleb128 0x1
	.long	.LASF201
	.byte	0x61
	.uleb128 0x1
	.long	.LASF202
	.byte	0x62
	.uleb128 0x1
	.long	.LASF203
	.byte	0x63
	.uleb128 0x1
	.long	.LASF204
	.byte	0x64
	.uleb128 0x1
	.long	.LASF205
	.byte	0x65
	.uleb128 0x1
	.long	.LASF206
	.byte	0x66
	.uleb128 0x1
	.long	.LASF207
	.byte	0x67
	.uleb128 0x1
	.long	.LASF208
	.byte	0x68
	.uleb128 0x1
	.long	.LASF209
	.byte	0x69
	.uleb128 0x1
	.long	.LASF210
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF211
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF212
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF213
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF214
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF215
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF216
	.byte	0x70
	.uleb128 0x1
	.long	.LASF217
	.byte	0x71
	.uleb128 0x1
	.long	.LASF218
	.byte	0x72
	.uleb128 0x1
	.long	.LASF219
	.byte	0x73
	.uleb128 0x1
	.long	.LASF220
	.byte	0x74
	.uleb128 0x1
	.long	.LASF221
	.byte	0x75
	.uleb128 0x1
	.long	.LASF222
	.byte	0x76
	.uleb128 0x1
	.long	.LASF223
	.byte	0x77
	.uleb128 0x1
	.long	.LASF224
	.byte	0x78
	.uleb128 0x1
	.long	.LASF225
	.byte	0x79
	.uleb128 0x1
	.long	.LASF226
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF227
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF228
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF229
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF230
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF231
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF232
	.byte	0x80
	.uleb128 0x1
	.long	.LASF233
	.byte	0x81
	.uleb128 0x1
	.long	.LASF234
	.byte	0x82
	.uleb128 0x1
	.long	.LASF235
	.byte	0x83
	.uleb128 0x1
	.long	.LASF236
	.byte	0x84
	.uleb128 0x1
	.long	.LASF237
	.byte	0x85
	.uleb128 0x1
	.long	.LASF238
	.byte	0x86
	.uleb128 0x1
	.long	.LASF239
	.byte	0x87
	.uleb128 0x1
	.long	.LASF240
	.byte	0x88
	.uleb128 0x1
	.long	.LASF241
	.byte	0x89
	.uleb128 0x1
	.long	.LASF242
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF243
	.byte	0xb
	.byte	0xac
	.byte	0x3
	.long	0x4ea
	.uleb128 0xe
	.long	0x7a
	.byte	0xb
	.byte	0xaf
	.byte	0x1
	.long	0x21ca
	.uleb128 0x1
	.long	.LASF244
	.byte	0
	.uleb128 0x1
	.long	.LASF245
	.byte	0x1
	.uleb128 0x1
	.long	.LASF246
	.byte	0x2
	.uleb128 0x1
	.long	.LASF247
	.byte	0x3
	.uleb128 0x1
	.long	.LASF248
	.byte	0x4
	.uleb128 0x1
	.long	.LASF249
	.byte	0x5
	.uleb128 0x1
	.long	.LASF250
	.byte	0x6
	.uleb128 0x1
	.long	.LASF251
	.byte	0x7
	.uleb128 0x1
	.long	.LASF252
	.byte	0x8
	.uleb128 0x1
	.long	.LASF253
	.byte	0x9
	.uleb128 0x1
	.long	.LASF254
	.byte	0xa
	.uleb128 0x1
	.long	.LASF255
	.byte	0xb
	.uleb128 0x1
	.long	.LASF256
	.byte	0xc
	.uleb128 0x1
	.long	.LASF257
	.byte	0xd
	.uleb128 0x1
	.long	.LASF258
	.byte	0xe
	.uleb128 0x1
	.long	.LASF259
	.byte	0xf
	.uleb128 0x1
	.long	.LASF260
	.byte	0x10
	.uleb128 0x1
	.long	.LASF261
	.byte	0x11
	.uleb128 0x1
	.long	.LASF262
	.byte	0x12
	.uleb128 0x1
	.long	.LASF263
	.byte	0x13
	.uleb128 0x1
	.long	.LASF264
	.byte	0x14
	.uleb128 0x1
	.long	.LASF265
	.byte	0x15
	.uleb128 0x1
	.long	.LASF266
	.byte	0x16
	.uleb128 0x1
	.long	.LASF267
	.byte	0x17
	.uleb128 0x1
	.long	.LASF268
	.byte	0x18
	.uleb128 0x1
	.long	.LASF269
	.byte	0x19
	.uleb128 0x1
	.long	.LASF270
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF271
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF272
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF273
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF274
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF275
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF276
	.byte	0x20
	.uleb128 0x1
	.long	.LASF277
	.byte	0x21
	.uleb128 0x1
	.long	.LASF278
	.byte	0x22
	.uleb128 0x1
	.long	.LASF279
	.byte	0x23
	.uleb128 0x1
	.long	.LASF280
	.byte	0x24
	.uleb128 0x1
	.long	.LASF281
	.byte	0x25
	.uleb128 0x1
	.long	.LASF282
	.byte	0x26
	.uleb128 0x1
	.long	.LASF283
	.byte	0x27
	.uleb128 0x1
	.long	.LASF284
	.byte	0x28
	.uleb128 0x1
	.long	.LASF285
	.byte	0x29
	.uleb128 0x1
	.long	.LASF286
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF287
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF288
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF289
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF290
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF291
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF292
	.byte	0x30
	.uleb128 0x1
	.long	.LASF293
	.byte	0x31
	.uleb128 0x1
	.long	.LASF294
	.byte	0x32
	.uleb128 0x1
	.long	.LASF295
	.byte	0x33
	.uleb128 0x1
	.long	.LASF296
	.byte	0x34
	.uleb128 0x1
	.long	.LASF297
	.byte	0x35
	.uleb128 0x1
	.long	.LASF298
	.byte	0x36
	.uleb128 0x1
	.long	.LASF299
	.byte	0x37
	.uleb128 0x1
	.long	.LASF300
	.byte	0x38
	.uleb128 0x1
	.long	.LASF301
	.byte	0x39
	.uleb128 0x1
	.long	.LASF302
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF303
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF304
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF305
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF306
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF307
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF308
	.byte	0x40
	.uleb128 0x1
	.long	.LASF309
	.byte	0x41
	.uleb128 0x1
	.long	.LASF310
	.byte	0x42
	.uleb128 0x1
	.long	.LASF311
	.byte	0x43
	.uleb128 0x1
	.long	.LASF312
	.byte	0x44
	.uleb128 0x1
	.long	.LASF313
	.byte	0x45
	.uleb128 0x1
	.long	.LASF314
	.byte	0x46
	.uleb128 0x1
	.long	.LASF315
	.byte	0x47
	.uleb128 0x1
	.long	.LASF316
	.byte	0x48
	.uleb128 0x1
	.long	.LASF317
	.byte	0x49
	.uleb128 0x1
	.long	.LASF318
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF319
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF320
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF321
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF322
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF323
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF324
	.byte	0x50
	.uleb128 0x1
	.long	.LASF325
	.byte	0x51
	.uleb128 0x1
	.long	.LASF326
	.byte	0x52
	.uleb128 0x1
	.long	.LASF327
	.byte	0x53
	.uleb128 0x1
	.long	.LASF328
	.byte	0x54
	.uleb128 0x1
	.long	.LASF329
	.byte	0x55
	.uleb128 0x1
	.long	.LASF330
	.byte	0x56
	.uleb128 0x1
	.long	.LASF331
	.byte	0x57
	.uleb128 0x1
	.long	.LASF332
	.byte	0x58
	.uleb128 0x1
	.long	.LASF333
	.byte	0x59
	.uleb128 0x1
	.long	.LASF334
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF335
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF336
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF337
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF338
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF339
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF340
	.byte	0x60
	.uleb128 0x1
	.long	.LASF341
	.byte	0x61
	.uleb128 0x1
	.long	.LASF342
	.byte	0x62
	.uleb128 0x1
	.long	.LASF343
	.byte	0x63
	.uleb128 0x1
	.long	.LASF344
	.byte	0x64
	.uleb128 0x1
	.long	.LASF345
	.byte	0x65
	.uleb128 0x1
	.long	.LASF346
	.byte	0x66
	.uleb128 0x1
	.long	.LASF347
	.byte	0x67
	.uleb128 0x1
	.long	.LASF348
	.byte	0x68
	.uleb128 0x1
	.long	.LASF349
	.byte	0x69
	.uleb128 0x1
	.long	.LASF350
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF351
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF352
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF353
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF354
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF355
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF356
	.byte	0x70
	.uleb128 0x1
	.long	.LASF357
	.byte	0x71
	.uleb128 0x1
	.long	.LASF358
	.byte	0x72
	.uleb128 0x1
	.long	.LASF359
	.byte	0x73
	.uleb128 0x1
	.long	.LASF360
	.byte	0x74
	.uleb128 0x1
	.long	.LASF361
	.byte	0x75
	.uleb128 0x1
	.long	.LASF362
	.byte	0x76
	.uleb128 0x1
	.long	.LASF363
	.byte	0x77
	.uleb128 0x1
	.long	.LASF364
	.byte	0x78
	.uleb128 0x1
	.long	.LASF365
	.byte	0x79
	.uleb128 0x1
	.long	.LASF366
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF367
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF368
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF369
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF370
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF371
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF372
	.byte	0x80
	.uleb128 0x1
	.long	.LASF373
	.byte	0x81
	.uleb128 0x1
	.long	.LASF374
	.byte	0x82
	.uleb128 0x1
	.long	.LASF375
	.byte	0x83
	.uleb128 0x1
	.long	.LASF376
	.byte	0x84
	.uleb128 0x1
	.long	.LASF377
	.byte	0x85
	.uleb128 0x1
	.long	.LASF378
	.byte	0x86
	.uleb128 0x1
	.long	.LASF379
	.byte	0x87
	.uleb128 0x1
	.long	.LASF380
	.byte	0x88
	.uleb128 0x1
	.long	.LASF381
	.byte	0x89
	.uleb128 0x1
	.long	.LASF382
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF383
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF384
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF385
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF386
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF387
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF388
	.byte	0x90
	.uleb128 0x1
	.long	.LASF389
	.byte	0x91
	.uleb128 0x1
	.long	.LASF390
	.byte	0x92
	.uleb128 0x1
	.long	.LASF391
	.byte	0x93
	.uleb128 0x1
	.long	.LASF392
	.byte	0x94
	.uleb128 0x1
	.long	.LASF393
	.byte	0x95
	.uleb128 0x1
	.long	.LASF394
	.byte	0x96
	.uleb128 0x1
	.long	.LASF395
	.byte	0x97
	.uleb128 0x1
	.long	.LASF396
	.byte	0x98
	.uleb128 0x1
	.long	.LASF397
	.byte	0x99
	.uleb128 0x1
	.long	.LASF398
	.byte	0x9a
	.uleb128 0x1
	.long	.LASF399
	.byte	0x9b
	.uleb128 0x1
	.long	.LASF400
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF401
	.byte	0x9d
	.uleb128 0x1
	.long	.LASF402
	.byte	0x9e
	.uleb128 0x1
	.long	.LASF403
	.byte	0x9f
	.uleb128 0x1
	.long	.LASF404
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF405
	.byte	0xa1
	.uleb128 0x1
	.long	.LASF406
	.byte	0xa2
	.uleb128 0x1
	.long	.LASF407
	.byte	0xa3
	.uleb128 0x1
	.long	.LASF408
	.byte	0xa4
	.uleb128 0x1
	.long	.LASF409
	.byte	0xa5
	.uleb128 0x1
	.long	.LASF410
	.byte	0xa6
	.uleb128 0x1
	.long	.LASF411
	.byte	0xa7
	.uleb128 0x1
	.long	.LASF412
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF413
	.byte	0xa9
	.uleb128 0x1
	.long	.LASF414
	.byte	0xaa
	.uleb128 0x1
	.long	.LASF415
	.byte	0xab
	.uleb128 0x1
	.long	.LASF416
	.byte	0xac
	.uleb128 0x1
	.long	.LASF417
	.byte	0xad
	.uleb128 0x1
	.long	.LASF418
	.byte	0xae
	.uleb128 0x1
	.long	.LASF419
	.byte	0xaf
	.uleb128 0x1
	.long	.LASF420
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF421
	.byte	0xb1
	.uleb128 0x1
	.long	.LASF422
	.byte	0xb2
	.uleb128 0x1
	.long	.LASF423
	.byte	0xb3
	.uleb128 0x1
	.long	.LASF424
	.byte	0xb4
	.uleb128 0x1
	.long	.LASF425
	.byte	0xb5
	.uleb128 0x1
	.long	.LASF426
	.byte	0xb6
	.uleb128 0x1
	.long	.LASF427
	.byte	0xb7
	.uleb128 0x1
	.long	.LASF428
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF429
	.byte	0xb9
	.uleb128 0x1
	.long	.LASF430
	.byte	0xba
	.uleb128 0x1
	.long	.LASF431
	.byte	0xbb
	.uleb128 0x1
	.long	.LASF432
	.byte	0xbc
	.uleb128 0x1
	.long	.LASF433
	.byte	0xbd
	.uleb128 0x1
	.long	.LASF434
	.byte	0xbe
	.uleb128 0x1
	.long	.LASF435
	.byte	0xbf
	.uleb128 0x1
	.long	.LASF436
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF437
	.byte	0xc1
	.uleb128 0x1
	.long	.LASF438
	.byte	0xc2
	.uleb128 0x1
	.long	.LASF439
	.byte	0xc3
	.uleb128 0x1
	.long	.LASF440
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF441
	.byte	0xc5
	.uleb128 0x1
	.long	.LASF442
	.byte	0xc6
	.uleb128 0x1
	.long	.LASF443
	.byte	0xc7
	.uleb128 0x1
	.long	.LASF444
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF445
	.byte	0xc9
	.uleb128 0x1
	.long	.LASF446
	.byte	0xca
	.uleb128 0x1
	.long	.LASF447
	.byte	0xcb
	.uleb128 0x1
	.long	.LASF448
	.byte	0xcc
	.uleb128 0x1
	.long	.LASF449
	.byte	0xcd
	.uleb128 0x1
	.long	.LASF450
	.byte	0xce
	.uleb128 0x1
	.long	.LASF451
	.byte	0xcf
	.uleb128 0x1
	.long	.LASF452
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF453
	.byte	0xd1
	.uleb128 0x1
	.long	.LASF454
	.byte	0xd2
	.uleb128 0x1
	.long	.LASF455
	.byte	0xd3
	.uleb128 0x1
	.long	.LASF456
	.byte	0xd4
	.uleb128 0x1
	.long	.LASF457
	.byte	0xd5
	.uleb128 0x1
	.long	.LASF458
	.byte	0xd6
	.uleb128 0x1
	.long	.LASF459
	.byte	0xd7
	.uleb128 0x1
	.long	.LASF460
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF461
	.byte	0xd9
	.uleb128 0x1
	.long	.LASF462
	.byte	0xda
	.uleb128 0x1
	.long	.LASF463
	.byte	0xdb
	.uleb128 0x1
	.long	.LASF464
	.byte	0xdc
	.uleb128 0x1
	.long	.LASF465
	.byte	0xdd
	.uleb128 0x1
	.long	.LASF466
	.byte	0xde
	.uleb128 0x1
	.long	.LASF467
	.byte	0xdf
	.uleb128 0x1
	.long	.LASF468
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF469
	.byte	0xe1
	.uleb128 0x1
	.long	.LASF470
	.byte	0xe2
	.uleb128 0x1
	.long	.LASF471
	.byte	0xe3
	.uleb128 0x1
	.long	.LASF472
	.byte	0xe4
	.uleb128 0x1
	.long	.LASF473
	.byte	0xe5
	.uleb128 0x1
	.long	.LASF474
	.byte	0xe6
	.uleb128 0x1
	.long	.LASF475
	.byte	0xe7
	.uleb128 0x1
	.long	.LASF476
	.byte	0xe8
	.uleb128 0x1
	.long	.LASF477
	.byte	0xe9
	.uleb128 0x1
	.long	.LASF478
	.byte	0xea
	.uleb128 0x1
	.long	.LASF479
	.byte	0xeb
	.uleb128 0x1
	.long	.LASF480
	.byte	0xec
	.uleb128 0x1
	.long	.LASF481
	.byte	0xed
	.uleb128 0x1
	.long	.LASF482
	.byte	0xee
	.uleb128 0x1
	.long	.LASF483
	.byte	0xef
	.uleb128 0x1
	.long	.LASF484
	.byte	0xf0
	.uleb128 0x1
	.long	.LASF485
	.byte	0xf1
	.uleb128 0x1
	.long	.LASF486
	.byte	0xf2
	.uleb128 0x1
	.long	.LASF487
	.byte	0xf3
	.uleb128 0x1
	.long	.LASF488
	.byte	0xf4
	.uleb128 0x1
	.long	.LASF489
	.byte	0xf5
	.uleb128 0x1
	.long	.LASF490
	.byte	0xf6
	.uleb128 0x1
	.long	.LASF491
	.byte	0xf7
	.uleb128 0x1
	.long	.LASF492
	.byte	0xf8
	.uleb128 0x1
	.long	.LASF493
	.byte	0xf9
	.uleb128 0x1
	.long	.LASF494
	.byte	0xfa
	.uleb128 0x1
	.long	.LASF495
	.byte	0xfb
	.uleb128 0x1
	.long	.LASF496
	.byte	0xfc
	.uleb128 0x1
	.long	.LASF497
	.byte	0xfd
	.uleb128 0x1
	.long	.LASF498
	.byte	0xfe
	.uleb128 0x1
	.long	.LASF499
	.byte	0xff
	.uleb128 0x2
	.long	.LASF500
	.value	0x100
	.uleb128 0x2
	.long	.LASF501
	.value	0x101
	.uleb128 0x2
	.long	.LASF502
	.value	0x102
	.uleb128 0x2
	.long	.LASF503
	.value	0x103
	.uleb128 0x2
	.long	.LASF504
	.value	0x104
	.uleb128 0x2
	.long	.LASF505
	.value	0x105
	.uleb128 0x2
	.long	.LASF506
	.value	0x106
	.uleb128 0x2
	.long	.LASF507
	.value	0x107
	.uleb128 0x2
	.long	.LASF508
	.value	0x108
	.uleb128 0x2
	.long	.LASF509
	.value	0x109
	.uleb128 0x2
	.long	.LASF510
	.value	0x10a
	.uleb128 0x2
	.long	.LASF511
	.value	0x10b
	.uleb128 0x2
	.long	.LASF512
	.value	0x10c
	.uleb128 0x2
	.long	.LASF513
	.value	0x10d
	.uleb128 0x2
	.long	.LASF514
	.value	0x10e
	.uleb128 0x2
	.long	.LASF515
	.value	0x10f
	.uleb128 0x2
	.long	.LASF516
	.value	0x110
	.uleb128 0x2
	.long	.LASF517
	.value	0x111
	.uleb128 0x2
	.long	.LASF518
	.value	0x112
	.uleb128 0x2
	.long	.LASF519
	.value	0x113
	.uleb128 0x2
	.long	.LASF520
	.value	0x114
	.uleb128 0x2
	.long	.LASF521
	.value	0x115
	.uleb128 0x2
	.long	.LASF522
	.value	0x116
	.uleb128 0x2
	.long	.LASF523
	.value	0x117
	.uleb128 0x2
	.long	.LASF524
	.value	0x118
	.uleb128 0x2
	.long	.LASF525
	.value	0x119
	.uleb128 0x2
	.long	.LASF526
	.value	0x11a
	.uleb128 0x2
	.long	.LASF527
	.value	0x11b
	.uleb128 0x2
	.long	.LASF528
	.value	0x11c
	.uleb128 0x2
	.long	.LASF529
	.value	0x11d
	.uleb128 0x2
	.long	.LASF530
	.value	0x11e
	.uleb128 0x2
	.long	.LASF531
	.value	0x11f
	.uleb128 0x2
	.long	.LASF532
	.value	0x120
	.uleb128 0x2
	.long	.LASF533
	.value	0x121
	.uleb128 0x2
	.long	.LASF534
	.value	0x122
	.uleb128 0x2
	.long	.LASF535
	.value	0x123
	.uleb128 0x2
	.long	.LASF536
	.value	0x124
	.uleb128 0x2
	.long	.LASF537
	.value	0x125
	.uleb128 0x2
	.long	.LASF538
	.value	0x126
	.uleb128 0x2
	.long	.LASF539
	.value	0x127
	.uleb128 0x2
	.long	.LASF540
	.value	0x128
	.uleb128 0x2
	.long	.LASF541
	.value	0x129
	.uleb128 0x2
	.long	.LASF542
	.value	0x12a
	.uleb128 0x2
	.long	.LASF543
	.value	0x12b
	.uleb128 0x2
	.long	.LASF544
	.value	0x12c
	.uleb128 0x2
	.long	.LASF545
	.value	0x12d
	.uleb128 0x2
	.long	.LASF546
	.value	0x12e
	.uleb128 0x2
	.long	.LASF547
	.value	0x12f
	.uleb128 0x2
	.long	.LASF548
	.value	0x130
	.uleb128 0x2
	.long	.LASF549
	.value	0x131
	.uleb128 0x2
	.long	.LASF550
	.value	0x132
	.uleb128 0x2
	.long	.LASF551
	.value	0x133
	.uleb128 0x2
	.long	.LASF552
	.value	0x134
	.uleb128 0x2
	.long	.LASF553
	.value	0x135
	.uleb128 0x2
	.long	.LASF554
	.value	0x136
	.uleb128 0x2
	.long	.LASF555
	.value	0x137
	.uleb128 0x2
	.long	.LASF556
	.value	0x138
	.uleb128 0x2
	.long	.LASF557
	.value	0x139
	.uleb128 0x2
	.long	.LASF558
	.value	0x13a
	.uleb128 0x2
	.long	.LASF559
	.value	0x13b
	.uleb128 0x2
	.long	.LASF560
	.value	0x13c
	.uleb128 0x2
	.long	.LASF561
	.value	0x13d
	.uleb128 0x2
	.long	.LASF562
	.value	0x13e
	.uleb128 0x2
	.long	.LASF563
	.value	0x13f
	.uleb128 0x2
	.long	.LASF564
	.value	0x140
	.uleb128 0x2
	.long	.LASF565
	.value	0x141
	.uleb128 0x2
	.long	.LASF566
	.value	0x142
	.uleb128 0x2
	.long	.LASF567
	.value	0x143
	.uleb128 0x2
	.long	.LASF568
	.value	0x144
	.uleb128 0x2
	.long	.LASF569
	.value	0x145
	.uleb128 0x2
	.long	.LASF570
	.value	0x146
	.uleb128 0x2
	.long	.LASF571
	.value	0x147
	.uleb128 0x2
	.long	.LASF572
	.value	0x148
	.uleb128 0x2
	.long	.LASF573
	.value	0x149
	.uleb128 0x2
	.long	.LASF574
	.value	0x14a
	.uleb128 0x2
	.long	.LASF575
	.value	0x14b
	.uleb128 0x2
	.long	.LASF576
	.value	0x14c
	.uleb128 0x2
	.long	.LASF577
	.value	0x14d
	.uleb128 0x2
	.long	.LASF578
	.value	0x14e
	.uleb128 0x2
	.long	.LASF579
	.value	0x14f
	.uleb128 0x2
	.long	.LASF580
	.value	0x150
	.uleb128 0x2
	.long	.LASF581
	.value	0x151
	.uleb128 0x2
	.long	.LASF582
	.value	0x152
	.uleb128 0x2
	.long	.LASF583
	.value	0x153
	.uleb128 0x2
	.long	.LASF584
	.value	0x154
	.uleb128 0x2
	.long	.LASF585
	.value	0x155
	.uleb128 0x2
	.long	.LASF586
	.value	0x156
	.uleb128 0x2
	.long	.LASF587
	.value	0x157
	.uleb128 0x2
	.long	.LASF588
	.value	0x158
	.uleb128 0x2
	.long	.LASF589
	.value	0x159
	.uleb128 0x2
	.long	.LASF590
	.value	0x15a
	.uleb128 0x2
	.long	.LASF591
	.value	0x15b
	.uleb128 0x2
	.long	.LASF592
	.value	0x15c
	.uleb128 0x2
	.long	.LASF593
	.value	0x15d
	.uleb128 0x2
	.long	.LASF594
	.value	0x15e
	.uleb128 0x2
	.long	.LASF595
	.value	0x15f
	.uleb128 0x2
	.long	.LASF596
	.value	0x160
	.uleb128 0x2
	.long	.LASF597
	.value	0x161
	.uleb128 0x2
	.long	.LASF598
	.value	0x162
	.uleb128 0x2
	.long	.LASF599
	.value	0x163
	.uleb128 0x2
	.long	.LASF600
	.value	0x164
	.uleb128 0x2
	.long	.LASF601
	.value	0x165
	.uleb128 0x2
	.long	.LASF602
	.value	0x166
	.uleb128 0x2
	.long	.LASF603
	.value	0x167
	.uleb128 0x2
	.long	.LASF604
	.value	0x168
	.uleb128 0x2
	.long	.LASF605
	.value	0x169
	.uleb128 0x2
	.long	.LASF606
	.value	0x16a
	.uleb128 0x2
	.long	.LASF607
	.value	0x16b
	.uleb128 0x2
	.long	.LASF608
	.value	0x16c
	.uleb128 0x2
	.long	.LASF609
	.value	0x16d
	.uleb128 0x2
	.long	.LASF610
	.value	0x16e
	.uleb128 0x2
	.long	.LASF611
	.value	0x16f
	.uleb128 0x2
	.long	.LASF612
	.value	0x170
	.uleb128 0x2
	.long	.LASF613
	.value	0x171
	.uleb128 0x2
	.long	.LASF614
	.value	0x172
	.uleb128 0x2
	.long	.LASF615
	.value	0x173
	.uleb128 0x2
	.long	.LASF616
	.value	0x174
	.uleb128 0x2
	.long	.LASF617
	.value	0x175
	.uleb128 0x2
	.long	.LASF618
	.value	0x176
	.uleb128 0x2
	.long	.LASF619
	.value	0x177
	.uleb128 0x2
	.long	.LASF620
	.value	0x178
	.uleb128 0x2
	.long	.LASF621
	.value	0x179
	.uleb128 0x2
	.long	.LASF622
	.value	0x17a
	.uleb128 0x2
	.long	.LASF623
	.value	0x17b
	.uleb128 0x2
	.long	.LASF624
	.value	0x17c
	.uleb128 0x2
	.long	.LASF625
	.value	0x17d
	.uleb128 0x2
	.long	.LASF626
	.value	0x17e
	.uleb128 0x2
	.long	.LASF627
	.value	0x17f
	.uleb128 0x2
	.long	.LASF628
	.value	0x180
	.uleb128 0x2
	.long	.LASF629
	.value	0x181
	.uleb128 0x2
	.long	.LASF630
	.value	0x182
	.uleb128 0x2
	.long	.LASF631
	.value	0x183
	.uleb128 0x2
	.long	.LASF632
	.value	0x184
	.uleb128 0x2
	.long	.LASF633
	.value	0x185
	.uleb128 0x2
	.long	.LASF634
	.value	0x186
	.uleb128 0x2
	.long	.LASF635
	.value	0x187
	.uleb128 0x2
	.long	.LASF636
	.value	0x188
	.uleb128 0x2
	.long	.LASF637
	.value	0x189
	.uleb128 0x2
	.long	.LASF638
	.value	0x18a
	.uleb128 0x2
	.long	.LASF639
	.value	0x18b
	.uleb128 0x2
	.long	.LASF640
	.value	0x18c
	.uleb128 0x2
	.long	.LASF641
	.value	0x18d
	.uleb128 0x2
	.long	.LASF642
	.value	0x18e
	.uleb128 0x2
	.long	.LASF643
	.value	0x18f
	.uleb128 0x2
	.long	.LASF644
	.value	0x190
	.uleb128 0x2
	.long	.LASF645
	.value	0x191
	.uleb128 0x2
	.long	.LASF646
	.value	0x192
	.uleb128 0x2
	.long	.LASF647
	.value	0x193
	.uleb128 0x2
	.long	.LASF648
	.value	0x194
	.uleb128 0x2
	.long	.LASF649
	.value	0x195
	.uleb128 0x2
	.long	.LASF650
	.value	0x196
	.uleb128 0x2
	.long	.LASF651
	.value	0x197
	.uleb128 0x2
	.long	.LASF652
	.value	0x198
	.uleb128 0x2
	.long	.LASF653
	.value	0x199
	.uleb128 0x2
	.long	.LASF654
	.value	0x19a
	.uleb128 0x2
	.long	.LASF655
	.value	0x19b
	.uleb128 0x2
	.long	.LASF656
	.value	0x19c
	.uleb128 0x2
	.long	.LASF657
	.value	0x19d
	.uleb128 0x2
	.long	.LASF658
	.value	0x19e
	.uleb128 0x2
	.long	.LASF659
	.value	0x19f
	.uleb128 0x2
	.long	.LASF660
	.value	0x1a0
	.uleb128 0x2
	.long	.LASF661
	.value	0x1a1
	.uleb128 0x2
	.long	.LASF662
	.value	0x1a2
	.uleb128 0x2
	.long	.LASF663
	.value	0x1a3
	.uleb128 0x2
	.long	.LASF664
	.value	0x1a4
	.uleb128 0x2
	.long	.LASF665
	.value	0x1a5
	.uleb128 0x2
	.long	.LASF666
	.value	0x1a6
	.uleb128 0x2
	.long	.LASF667
	.value	0x1a7
	.uleb128 0x2
	.long	.LASF668
	.value	0x1a8
	.uleb128 0x2
	.long	.LASF669
	.value	0x1a9
	.uleb128 0x2
	.long	.LASF670
	.value	0x1aa
	.uleb128 0x2
	.long	.LASF671
	.value	0x1ab
	.uleb128 0x2
	.long	.LASF672
	.value	0x1ac
	.uleb128 0x2
	.long	.LASF673
	.value	0x1ad
	.uleb128 0x2
	.long	.LASF674
	.value	0x1ae
	.uleb128 0x2
	.long	.LASF675
	.value	0x1af
	.uleb128 0x2
	.long	.LASF676
	.value	0x1b0
	.uleb128 0x2
	.long	.LASF677
	.value	0x1b1
	.uleb128 0x2
	.long	.LASF678
	.value	0x1b2
	.uleb128 0x2
	.long	.LASF679
	.value	0x1b3
	.uleb128 0x2
	.long	.LASF680
	.value	0x1b4
	.uleb128 0x2
	.long	.LASF681
	.value	0x1b5
	.uleb128 0x2
	.long	.LASF682
	.value	0x1b6
	.uleb128 0x2
	.long	.LASF683
	.value	0x1b7
	.uleb128 0x2
	.long	.LASF684
	.value	0x1b8
	.uleb128 0x2
	.long	.LASF685
	.value	0x1b9
	.uleb128 0x2
	.long	.LASF686
	.value	0x1ba
	.uleb128 0x2
	.long	.LASF687
	.value	0x1bb
	.uleb128 0x2
	.long	.LASF688
	.value	0x1bc
	.uleb128 0x2
	.long	.LASF689
	.value	0x1bd
	.uleb128 0x2
	.long	.LASF690
	.value	0x1be
	.uleb128 0x2
	.long	.LASF691
	.value	0x1bf
	.uleb128 0x2
	.long	.LASF692
	.value	0x1c0
	.uleb128 0x2
	.long	.LASF693
	.value	0x1c1
	.uleb128 0x2
	.long	.LASF694
	.value	0x1c2
	.uleb128 0x2
	.long	.LASF695
	.value	0x1c3
	.uleb128 0x2
	.long	.LASF696
	.value	0x1c4
	.uleb128 0x2
	.long	.LASF697
	.value	0x1c5
	.uleb128 0x2
	.long	.LASF698
	.value	0x1c6
	.uleb128 0x2
	.long	.LASF699
	.value	0x1c7
	.uleb128 0x2
	.long	.LASF700
	.value	0x1c8
	.uleb128 0x2
	.long	.LASF701
	.value	0x1c9
	.uleb128 0x2
	.long	.LASF702
	.value	0x1ca
	.uleb128 0x2
	.long	.LASF703
	.value	0x1cb
	.uleb128 0x2
	.long	.LASF704
	.value	0x1cc
	.uleb128 0x2
	.long	.LASF705
	.value	0x1cd
	.uleb128 0x2
	.long	.LASF706
	.value	0x1ce
	.uleb128 0x2
	.long	.LASF707
	.value	0x1cf
	.uleb128 0x2
	.long	.LASF708
	.value	0x1d0
	.uleb128 0x2
	.long	.LASF709
	.value	0x1d1
	.uleb128 0x2
	.long	.LASF710
	.value	0x1d2
	.uleb128 0x2
	.long	.LASF711
	.value	0x1d3
	.uleb128 0x2
	.long	.LASF712
	.value	0x1d4
	.uleb128 0x2
	.long	.LASF713
	.value	0x1d5
	.uleb128 0x2
	.long	.LASF714
	.value	0x1d6
	.uleb128 0x2
	.long	.LASF715
	.value	0x1d7
	.uleb128 0x2
	.long	.LASF716
	.value	0x1d8
	.uleb128 0x2
	.long	.LASF717
	.value	0x1d9
	.uleb128 0x2
	.long	.LASF718
	.value	0x1da
	.uleb128 0x2
	.long	.LASF719
	.value	0x1db
	.uleb128 0x2
	.long	.LASF720
	.value	0x1dc
	.uleb128 0x2
	.long	.LASF721
	.value	0x1dd
	.uleb128 0x2
	.long	.LASF722
	.value	0x1de
	.uleb128 0x2
	.long	.LASF723
	.value	0x1df
	.uleb128 0x2
	.long	.LASF724
	.value	0x1e0
	.uleb128 0x2
	.long	.LASF725
	.value	0x1e1
	.uleb128 0x2
	.long	.LASF726
	.value	0x1e2
	.uleb128 0x2
	.long	.LASF727
	.value	0x1e3
	.uleb128 0x2
	.long	.LASF728
	.value	0x1e4
	.uleb128 0x2
	.long	.LASF729
	.value	0x1e5
	.uleb128 0x2
	.long	.LASF730
	.value	0x1e6
	.uleb128 0x2
	.long	.LASF731
	.value	0x1e7
	.uleb128 0x2
	.long	.LASF732
	.value	0x1e8
	.uleb128 0x2
	.long	.LASF733
	.value	0x1e9
	.uleb128 0x2
	.long	.LASF734
	.value	0x1ea
	.uleb128 0x2
	.long	.LASF735
	.value	0x1eb
	.uleb128 0x2
	.long	.LASF736
	.value	0x1ec
	.uleb128 0x2
	.long	.LASF737
	.value	0x1ed
	.uleb128 0x2
	.long	.LASF738
	.value	0x1ee
	.uleb128 0x2
	.long	.LASF739
	.value	0x1ef
	.uleb128 0x2
	.long	.LASF740
	.value	0x1f0
	.uleb128 0x2
	.long	.LASF741
	.value	0x1f1
	.uleb128 0x2
	.long	.LASF742
	.value	0x1f2
	.uleb128 0x2
	.long	.LASF743
	.value	0x1f3
	.uleb128 0x2
	.long	.LASF744
	.value	0x1f4
	.uleb128 0x2
	.long	.LASF745
	.value	0x1f5
	.uleb128 0x2
	.long	.LASF746
	.value	0x1f6
	.uleb128 0x2
	.long	.LASF747
	.value	0x1f7
	.uleb128 0x2
	.long	.LASF748
	.value	0x1f8
	.uleb128 0x2
	.long	.LASF749
	.value	0x1f9
	.uleb128 0x2
	.long	.LASF750
	.value	0x1fa
	.uleb128 0x2
	.long	.LASF751
	.value	0x1fb
	.uleb128 0x2
	.long	.LASF752
	.value	0x1fc
	.uleb128 0x2
	.long	.LASF753
	.value	0x1fd
	.uleb128 0x2
	.long	.LASF754
	.value	0x1fe
	.uleb128 0x2
	.long	.LASF755
	.value	0x1ff
	.uleb128 0x2
	.long	.LASF756
	.value	0x200
	.uleb128 0x2
	.long	.LASF757
	.value	0x201
	.uleb128 0x2
	.long	.LASF758
	.value	0x202
	.uleb128 0x2
	.long	.LASF759
	.value	0x203
	.uleb128 0x2
	.long	.LASF760
	.value	0x204
	.uleb128 0x2
	.long	.LASF761
	.value	0x205
	.uleb128 0x2
	.long	.LASF762
	.value	0x206
	.uleb128 0x2
	.long	.LASF763
	.value	0x207
	.uleb128 0x2
	.long	.LASF764
	.value	0x208
	.uleb128 0x2
	.long	.LASF765
	.value	0x209
	.uleb128 0x2
	.long	.LASF766
	.value	0x20a
	.uleb128 0x2
	.long	.LASF767
	.value	0x20b
	.uleb128 0x2
	.long	.LASF768
	.value	0x20c
	.uleb128 0x2
	.long	.LASF769
	.value	0x20d
	.uleb128 0x2
	.long	.LASF770
	.value	0x20e
	.uleb128 0x2
	.long	.LASF771
	.value	0x20f
	.uleb128 0x2
	.long	.LASF772
	.value	0x210
	.uleb128 0x2
	.long	.LASF773
	.value	0x211
	.uleb128 0x2
	.long	.LASF774
	.value	0x212
	.uleb128 0x2
	.long	.LASF775
	.value	0x213
	.uleb128 0x2
	.long	.LASF776
	.value	0x214
	.uleb128 0x2
	.long	.LASF777
	.value	0x215
	.uleb128 0x2
	.long	.LASF778
	.value	0x216
	.uleb128 0x2
	.long	.LASF779
	.value	0x217
	.uleb128 0x2
	.long	.LASF780
	.value	0x218
	.uleb128 0x2
	.long	.LASF781
	.value	0x219
	.uleb128 0x2
	.long	.LASF782
	.value	0x21a
	.uleb128 0x2
	.long	.LASF783
	.value	0x21b
	.uleb128 0x2
	.long	.LASF784
	.value	0x21c
	.uleb128 0x2
	.long	.LASF785
	.value	0x21d
	.uleb128 0x2
	.long	.LASF786
	.value	0x21e
	.uleb128 0x2
	.long	.LASF787
	.value	0x21f
	.uleb128 0x2
	.long	.LASF788
	.value	0x220
	.uleb128 0x2
	.long	.LASF789
	.value	0x221
	.uleb128 0x2
	.long	.LASF790
	.value	0x222
	.uleb128 0x2
	.long	.LASF791
	.value	0x223
	.uleb128 0x2
	.long	.LASF792
	.value	0x224
	.uleb128 0x2
	.long	.LASF793
	.value	0x225
	.uleb128 0x2
	.long	.LASF794
	.value	0x226
	.uleb128 0x2
	.long	.LASF795
	.value	0x227
	.uleb128 0x2
	.long	.LASF796
	.value	0x228
	.uleb128 0x2
	.long	.LASF797
	.value	0x229
	.uleb128 0x2
	.long	.LASF798
	.value	0x22a
	.uleb128 0x2
	.long	.LASF799
	.value	0x22b
	.uleb128 0x2
	.long	.LASF800
	.value	0x22c
	.uleb128 0x2
	.long	.LASF801
	.value	0x22d
	.uleb128 0x2
	.long	.LASF802
	.value	0x22e
	.uleb128 0x2
	.long	.LASF803
	.value	0x22f
	.uleb128 0x2
	.long	.LASF804
	.value	0x230
	.uleb128 0x2
	.long	.LASF805
	.value	0x231
	.uleb128 0x2
	.long	.LASF806
	.value	0x232
	.uleb128 0x2
	.long	.LASF807
	.value	0x233
	.uleb128 0x2
	.long	.LASF808
	.value	0x234
	.uleb128 0x2
	.long	.LASF809
	.value	0x235
	.uleb128 0x2
	.long	.LASF810
	.value	0x236
	.uleb128 0x2
	.long	.LASF811
	.value	0x237
	.uleb128 0x2
	.long	.LASF812
	.value	0x238
	.uleb128 0x2
	.long	.LASF813
	.value	0x239
	.uleb128 0x2
	.long	.LASF814
	.value	0x23a
	.uleb128 0x2
	.long	.LASF815
	.value	0x23b
	.uleb128 0x2
	.long	.LASF816
	.value	0x23c
	.uleb128 0x2
	.long	.LASF817
	.value	0x23d
	.uleb128 0x2
	.long	.LASF818
	.value	0x23e
	.uleb128 0x2
	.long	.LASF819
	.value	0x23f
	.uleb128 0x2
	.long	.LASF820
	.value	0x240
	.uleb128 0x2
	.long	.LASF821
	.value	0x241
	.uleb128 0x2
	.long	.LASF822
	.value	0x242
	.uleb128 0x2
	.long	.LASF823
	.value	0x243
	.uleb128 0x2
	.long	.LASF824
	.value	0x244
	.uleb128 0x2
	.long	.LASF825
	.value	0x245
	.uleb128 0x2
	.long	.LASF826
	.value	0x246
	.uleb128 0x2
	.long	.LASF827
	.value	0x247
	.uleb128 0x2
	.long	.LASF828
	.value	0x248
	.uleb128 0x2
	.long	.LASF829
	.value	0x249
	.uleb128 0x2
	.long	.LASF830
	.value	0x24a
	.uleb128 0x2
	.long	.LASF831
	.value	0x24b
	.uleb128 0x2
	.long	.LASF832
	.value	0x24c
	.uleb128 0x2
	.long	.LASF833
	.value	0x24d
	.uleb128 0x2
	.long	.LASF834
	.value	0x24e
	.uleb128 0x2
	.long	.LASF835
	.value	0x24f
	.uleb128 0x2
	.long	.LASF836
	.value	0x250
	.uleb128 0x2
	.long	.LASF837
	.value	0x251
	.uleb128 0x2
	.long	.LASF838
	.value	0x252
	.uleb128 0x2
	.long	.LASF839
	.value	0x253
	.uleb128 0x2
	.long	.LASF840
	.value	0x254
	.uleb128 0x2
	.long	.LASF841
	.value	0x255
	.uleb128 0x2
	.long	.LASF842
	.value	0x256
	.uleb128 0x2
	.long	.LASF843
	.value	0x257
	.uleb128 0x2
	.long	.LASF844
	.value	0x258
	.uleb128 0x2
	.long	.LASF845
	.value	0x259
	.uleb128 0x2
	.long	.LASF846
	.value	0x25a
	.uleb128 0x2
	.long	.LASF847
	.value	0x25b
	.uleb128 0x2
	.long	.LASF848
	.value	0x25c
	.uleb128 0x2
	.long	.LASF849
	.value	0x25d
	.uleb128 0x2
	.long	.LASF850
	.value	0x25e
	.uleb128 0x2
	.long	.LASF851
	.value	0x25f
	.uleb128 0x2
	.long	.LASF852
	.value	0x260
	.uleb128 0x2
	.long	.LASF853
	.value	0x261
	.uleb128 0x2
	.long	.LASF854
	.value	0x262
	.uleb128 0x2
	.long	.LASF855
	.value	0x263
	.uleb128 0x2
	.long	.LASF856
	.value	0x264
	.uleb128 0x2
	.long	.LASF857
	.value	0x265
	.uleb128 0x2
	.long	.LASF858
	.value	0x266
	.uleb128 0x2
	.long	.LASF859
	.value	0x267
	.uleb128 0x2
	.long	.LASF860
	.value	0x268
	.uleb128 0x2
	.long	.LASF861
	.value	0x269
	.uleb128 0x2
	.long	.LASF862
	.value	0x26a
	.uleb128 0x2
	.long	.LASF863
	.value	0x26b
	.uleb128 0x2
	.long	.LASF864
	.value	0x26c
	.uleb128 0x2
	.long	.LASF865
	.value	0x26d
	.uleb128 0x2
	.long	.LASF866
	.value	0x26e
	.uleb128 0x2
	.long	.LASF867
	.value	0x26f
	.uleb128 0x2
	.long	.LASF868
	.value	0x270
	.uleb128 0x2
	.long	.LASF869
	.value	0x271
	.uleb128 0x2
	.long	.LASF870
	.value	0x272
	.uleb128 0x2
	.long	.LASF871
	.value	0x273
	.uleb128 0x2
	.long	.LASF872
	.value	0x274
	.uleb128 0x2
	.long	.LASF873
	.value	0x275
	.uleb128 0x2
	.long	.LASF874
	.value	0x276
	.uleb128 0x2
	.long	.LASF875
	.value	0x277
	.uleb128 0x2
	.long	.LASF876
	.value	0x278
	.uleb128 0x2
	.long	.LASF877
	.value	0x279
	.uleb128 0x2
	.long	.LASF878
	.value	0x27a
	.uleb128 0x2
	.long	.LASF879
	.value	0x27b
	.uleb128 0x2
	.long	.LASF880
	.value	0x27c
	.uleb128 0x2
	.long	.LASF881
	.value	0x27d
	.uleb128 0x2
	.long	.LASF882
	.value	0x27e
	.uleb128 0x2
	.long	.LASF883
	.value	0x27f
	.uleb128 0x2
	.long	.LASF884
	.value	0x280
	.uleb128 0x2
	.long	.LASF885
	.value	0x281
	.uleb128 0x2
	.long	.LASF886
	.value	0x282
	.uleb128 0x2
	.long	.LASF887
	.value	0x283
	.uleb128 0x2
	.long	.LASF888
	.value	0x284
	.uleb128 0x2
	.long	.LASF889
	.value	0x285
	.uleb128 0x2
	.long	.LASF890
	.value	0x286
	.uleb128 0x2
	.long	.LASF891
	.value	0x287
	.uleb128 0x2
	.long	.LASF892
	.value	0x288
	.uleb128 0x2
	.long	.LASF893
	.value	0x289
	.uleb128 0x2
	.long	.LASF894
	.value	0x28a
	.uleb128 0x2
	.long	.LASF895
	.value	0x28b
	.uleb128 0x2
	.long	.LASF896
	.value	0x28c
	.uleb128 0x2
	.long	.LASF897
	.value	0x28d
	.uleb128 0x2
	.long	.LASF898
	.value	0x28e
	.uleb128 0x2
	.long	.LASF899
	.value	0x28f
	.uleb128 0x2
	.long	.LASF900
	.value	0x290
	.uleb128 0x2
	.long	.LASF901
	.value	0x291
	.uleb128 0x2
	.long	.LASF902
	.value	0x292
	.uleb128 0x2
	.long	.LASF903
	.value	0x293
	.uleb128 0x2
	.long	.LASF904
	.value	0x294
	.uleb128 0x2
	.long	.LASF905
	.value	0x295
	.uleb128 0x2
	.long	.LASF906
	.value	0x296
	.uleb128 0x2
	.long	.LASF907
	.value	0x297
	.uleb128 0x2
	.long	.LASF908
	.value	0x298
	.uleb128 0x2
	.long	.LASF909
	.value	0x299
	.uleb128 0x2
	.long	.LASF910
	.value	0x29a
	.uleb128 0x2
	.long	.LASF911
	.value	0x29b
	.uleb128 0x2
	.long	.LASF912
	.value	0x29c
	.uleb128 0x2
	.long	.LASF913
	.value	0x29d
	.uleb128 0x2
	.long	.LASF914
	.value	0x29e
	.uleb128 0x2
	.long	.LASF915
	.value	0x29f
	.uleb128 0x2
	.long	.LASF916
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF917
	.value	0x2a1
	.uleb128 0x2
	.long	.LASF918
	.value	0x2a2
	.uleb128 0x2
	.long	.LASF919
	.value	0x2a3
	.uleb128 0x2
	.long	.LASF920
	.value	0x2a4
	.uleb128 0x2
	.long	.LASF921
	.value	0x2a5
	.uleb128 0x2
	.long	.LASF922
	.value	0x2a6
	.uleb128 0x2
	.long	.LASF923
	.value	0x2a7
	.uleb128 0x2
	.long	.LASF924
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF925
	.value	0x2a9
	.uleb128 0x2
	.long	.LASF926
	.value	0x2aa
	.uleb128 0x2
	.long	.LASF927
	.value	0x2ab
	.uleb128 0x2
	.long	.LASF928
	.value	0x2ac
	.uleb128 0x2
	.long	.LASF929
	.value	0x2ad
	.uleb128 0x2
	.long	.LASF930
	.value	0x2ae
	.uleb128 0x2
	.long	.LASF931
	.value	0x2af
	.uleb128 0x2
	.long	.LASF932
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF933
	.value	0x2b1
	.uleb128 0x2
	.long	.LASF934
	.value	0x2b2
	.uleb128 0x2
	.long	.LASF935
	.value	0x2b3
	.uleb128 0x2
	.long	.LASF936
	.value	0x2b4
	.uleb128 0x2
	.long	.LASF937
	.value	0x2b5
	.uleb128 0x2
	.long	.LASF938
	.value	0x2b6
	.uleb128 0x2
	.long	.LASF939
	.value	0x2b7
	.uleb128 0x2
	.long	.LASF940
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF941
	.value	0x2b9
	.uleb128 0x2
	.long	.LASF942
	.value	0x2ba
	.uleb128 0x2
	.long	.LASF943
	.value	0x2bb
	.uleb128 0x2
	.long	.LASF944
	.value	0x2bc
	.uleb128 0x2
	.long	.LASF945
	.value	0x2bd
	.uleb128 0x2
	.long	.LASF946
	.value	0x2be
	.uleb128 0x2
	.long	.LASF947
	.value	0x2bf
	.uleb128 0x2
	.long	.LASF948
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF949
	.value	0x2c1
	.uleb128 0x2
	.long	.LASF950
	.value	0x2c2
	.uleb128 0x2
	.long	.LASF951
	.value	0x2c3
	.uleb128 0x2
	.long	.LASF952
	.value	0x2c4
	.uleb128 0x2
	.long	.LASF953
	.value	0x2c5
	.uleb128 0x2
	.long	.LASF954
	.value	0x2c6
	.uleb128 0x2
	.long	.LASF955
	.value	0x2c7
	.uleb128 0x2
	.long	.LASF956
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF957
	.value	0x2c9
	.uleb128 0x2
	.long	.LASF958
	.value	0x2ca
	.uleb128 0x2
	.long	.LASF959
	.value	0x2cb
	.uleb128 0x2
	.long	.LASF960
	.value	0x2cc
	.uleb128 0x2
	.long	.LASF961
	.value	0x2cd
	.uleb128 0x2
	.long	.LASF962
	.value	0x2ce
	.uleb128 0x2
	.long	.LASF963
	.value	0x2cf
	.uleb128 0x2
	.long	.LASF964
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF965
	.value	0x2d1
	.uleb128 0x2
	.long	.LASF966
	.value	0x2d2
	.uleb128 0x2
	.long	.LASF967
	.value	0x2d3
	.uleb128 0x2
	.long	.LASF968
	.value	0x2d4
	.uleb128 0x2
	.long	.LASF969
	.value	0x2d5
	.uleb128 0x2
	.long	.LASF970
	.value	0x2d6
	.uleb128 0x2
	.long	.LASF971
	.value	0x2d7
	.uleb128 0x2
	.long	.LASF972
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF973
	.value	0x2d9
	.uleb128 0x2
	.long	.LASF974
	.value	0x2da
	.uleb128 0x2
	.long	.LASF975
	.value	0x2db
	.uleb128 0x2
	.long	.LASF976
	.value	0x2dc
	.uleb128 0x2
	.long	.LASF977
	.value	0x2dd
	.uleb128 0x2
	.long	.LASF978
	.value	0x2de
	.uleb128 0x2
	.long	.LASF979
	.value	0x2df
	.uleb128 0x2
	.long	.LASF980
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF981
	.value	0x2e1
	.uleb128 0x2
	.long	.LASF982
	.value	0x2e2
	.uleb128 0x2
	.long	.LASF983
	.value	0x2e3
	.uleb128 0x2
	.long	.LASF984
	.value	0x2e4
	.uleb128 0x2
	.long	.LASF985
	.value	0x2e5
	.uleb128 0x2
	.long	.LASF986
	.value	0x2e6
	.uleb128 0x2
	.long	.LASF987
	.value	0x2e7
	.uleb128 0x2
	.long	.LASF988
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF989
	.value	0x2e9
	.uleb128 0x2
	.long	.LASF990
	.value	0x2ea
	.uleb128 0x2
	.long	.LASF991
	.value	0x2eb
	.uleb128 0x2
	.long	.LASF992
	.value	0x2ec
	.uleb128 0x2
	.long	.LASF993
	.value	0x2ed
	.uleb128 0x2
	.long	.LASF994
	.value	0x2ee
	.uleb128 0x2
	.long	.LASF995
	.value	0x2ef
	.uleb128 0x2
	.long	.LASF996
	.value	0x2f0
	.uleb128 0x2
	.long	.LASF997
	.value	0x2f1
	.uleb128 0x2
	.long	.LASF998
	.value	0x2f2
	.uleb128 0x2
	.long	.LASF999
	.value	0x2f3
	.uleb128 0x2
	.long	.LASF1000
	.value	0x2f4
	.uleb128 0x2
	.long	.LASF1001
	.value	0x2f5
	.uleb128 0x2
	.long	.LASF1002
	.value	0x2f6
	.uleb128 0x2
	.long	.LASF1003
	.value	0x2f7
	.uleb128 0x2
	.long	.LASF1004
	.value	0x2f8
	.uleb128 0x2
	.long	.LASF1005
	.value	0x2f9
	.uleb128 0x2
	.long	.LASF1006
	.value	0x2fa
	.uleb128 0x2
	.long	.LASF1007
	.value	0x2fb
	.uleb128 0x2
	.long	.LASF1008
	.value	0x2fc
	.uleb128 0x2
	.long	.LASF1009
	.value	0x2fd
	.uleb128 0x2
	.long	.LASF1010
	.value	0x2fe
	.uleb128 0x2
	.long	.LASF1011
	.value	0x2ff
	.uleb128 0x2
	.long	.LASF1012
	.value	0x300
	.uleb128 0x2
	.long	.LASF1013
	.value	0x301
	.uleb128 0x2
	.long	.LASF1014
	.value	0x302
	.uleb128 0x2
	.long	.LASF1015
	.value	0x303
	.uleb128 0x2
	.long	.LASF1016
	.value	0x304
	.uleb128 0x2
	.long	.LASF1017
	.value	0x305
	.uleb128 0x2
	.long	.LASF1018
	.value	0x306
	.uleb128 0x2
	.long	.LASF1019
	.value	0x307
	.uleb128 0x2
	.long	.LASF1020
	.value	0x308
	.uleb128 0x2
	.long	.LASF1021
	.value	0x309
	.uleb128 0x2
	.long	.LASF1022
	.value	0x30a
	.uleb128 0x2
	.long	.LASF1023
	.value	0x30b
	.uleb128 0x2
	.long	.LASF1024
	.value	0x30c
	.uleb128 0x2
	.long	.LASF1025
	.value	0x30d
	.uleb128 0x2
	.long	.LASF1026
	.value	0x30e
	.uleb128 0x2
	.long	.LASF1027
	.value	0x30f
	.uleb128 0x2
	.long	.LASF1028
	.value	0x310
	.uleb128 0x2
	.long	.LASF1029
	.value	0x311
	.uleb128 0x2
	.long	.LASF1030
	.value	0x312
	.uleb128 0x2
	.long	.LASF1031
	.value	0x313
	.uleb128 0x2
	.long	.LASF1032
	.value	0x314
	.uleb128 0x2
	.long	.LASF1033
	.value	0x315
	.uleb128 0x2
	.long	.LASF1034
	.value	0x316
	.uleb128 0x2
	.long	.LASF1035
	.value	0x317
	.uleb128 0x2
	.long	.LASF1036
	.value	0x318
	.uleb128 0x2
	.long	.LASF1037
	.value	0x319
	.uleb128 0x2
	.long	.LASF1038
	.value	0x31a
	.uleb128 0x2
	.long	.LASF1039
	.value	0x31b
	.uleb128 0x2
	.long	.LASF1040
	.value	0x31c
	.uleb128 0x2
	.long	.LASF1041
	.value	0x31d
	.uleb128 0x2
	.long	.LASF1042
	.value	0x31e
	.uleb128 0x2
	.long	.LASF1043
	.value	0x31f
	.uleb128 0x2
	.long	.LASF1044
	.value	0x320
	.uleb128 0x2
	.long	.LASF1045
	.value	0x321
	.uleb128 0x2
	.long	.LASF1046
	.value	0x322
	.uleb128 0x2
	.long	.LASF1047
	.value	0x323
	.uleb128 0x2
	.long	.LASF1048
	.value	0x324
	.uleb128 0x2
	.long	.LASF1049
	.value	0x325
	.uleb128 0x2
	.long	.LASF1050
	.value	0x326
	.uleb128 0x2
	.long	.LASF1051
	.value	0x327
	.uleb128 0x2
	.long	.LASF1052
	.value	0x328
	.uleb128 0x2
	.long	.LASF1053
	.value	0x329
	.uleb128 0x2
	.long	.LASF1054
	.value	0x32a
	.uleb128 0x2
	.long	.LASF1055
	.value	0x32b
	.uleb128 0x2
	.long	.LASF1056
	.value	0x32c
	.uleb128 0x2
	.long	.LASF1057
	.value	0x32d
	.uleb128 0x2
	.long	.LASF1058
	.value	0x32e
	.uleb128 0x2
	.long	.LASF1059
	.value	0x32f
	.uleb128 0x2
	.long	.LASF1060
	.value	0x330
	.uleb128 0x2
	.long	.LASF1061
	.value	0x331
	.uleb128 0x2
	.long	.LASF1062
	.value	0x332
	.uleb128 0x2
	.long	.LASF1063
	.value	0x333
	.uleb128 0x2
	.long	.LASF1064
	.value	0x334
	.uleb128 0x2
	.long	.LASF1065
	.value	0x335
	.uleb128 0x2
	.long	.LASF1066
	.value	0x336
	.uleb128 0x2
	.long	.LASF1067
	.value	0x337
	.uleb128 0x2
	.long	.LASF1068
	.value	0x338
	.uleb128 0x2
	.long	.LASF1069
	.value	0x339
	.uleb128 0x2
	.long	.LASF1070
	.value	0x33a
	.uleb128 0x2
	.long	.LASF1071
	.value	0x33b
	.uleb128 0x2
	.long	.LASF1072
	.value	0x33c
	.uleb128 0x2
	.long	.LASF1073
	.value	0x33d
	.uleb128 0x2
	.long	.LASF1074
	.value	0x33e
	.uleb128 0x2
	.long	.LASF1075
	.value	0x33f
	.uleb128 0x2
	.long	.LASF1076
	.value	0x340
	.uleb128 0x2
	.long	.LASF1077
	.value	0x341
	.uleb128 0x2
	.long	.LASF1078
	.value	0x342
	.uleb128 0x2
	.long	.LASF1079
	.value	0x343
	.uleb128 0x2
	.long	.LASF1080
	.value	0x344
	.uleb128 0x2
	.long	.LASF1081
	.value	0x345
	.uleb128 0x2
	.long	.LASF1082
	.value	0x346
	.uleb128 0x2
	.long	.LASF1083
	.value	0x347
	.uleb128 0x2
	.long	.LASF1084
	.value	0x348
	.uleb128 0x2
	.long	.LASF1085
	.value	0x349
	.uleb128 0x2
	.long	.LASF1086
	.value	0x34a
	.uleb128 0x2
	.long	.LASF1087
	.value	0x34b
	.uleb128 0x2
	.long	.LASF1088
	.value	0x34c
	.uleb128 0x2
	.long	.LASF1089
	.value	0x34d
	.uleb128 0x2
	.long	.LASF1090
	.value	0x34e
	.uleb128 0x2
	.long	.LASF1091
	.value	0x34f
	.uleb128 0x2
	.long	.LASF1092
	.value	0x350
	.uleb128 0x2
	.long	.LASF1093
	.value	0x351
	.uleb128 0x2
	.long	.LASF1094
	.value	0x352
	.uleb128 0x2
	.long	.LASF1095
	.value	0x353
	.uleb128 0x2
	.long	.LASF1096
	.value	0x354
	.uleb128 0x2
	.long	.LASF1097
	.value	0x355
	.uleb128 0x2
	.long	.LASF1098
	.value	0x356
	.uleb128 0x2
	.long	.LASF1099
	.value	0x357
	.uleb128 0x2
	.long	.LASF1100
	.value	0x358
	.uleb128 0x2
	.long	.LASF1101
	.value	0x359
	.uleb128 0x2
	.long	.LASF1102
	.value	0x35a
	.uleb128 0x2
	.long	.LASF1103
	.value	0x35b
	.uleb128 0x2
	.long	.LASF1104
	.value	0x35c
	.uleb128 0x2
	.long	.LASF1105
	.value	0x35d
	.uleb128 0x2
	.long	.LASF1106
	.value	0x35e
	.uleb128 0x2
	.long	.LASF1107
	.value	0x35f
	.uleb128 0x2
	.long	.LASF1108
	.value	0x360
	.uleb128 0x2
	.long	.LASF1109
	.value	0x361
	.uleb128 0x2
	.long	.LASF1110
	.value	0x362
	.uleb128 0x2
	.long	.LASF1111
	.value	0x363
	.uleb128 0x2
	.long	.LASF1112
	.value	0x364
	.uleb128 0x2
	.long	.LASF1113
	.value	0x365
	.uleb128 0x2
	.long	.LASF1114
	.value	0x366
	.uleb128 0x2
	.long	.LASF1115
	.value	0x367
	.uleb128 0x2
	.long	.LASF1116
	.value	0x368
	.uleb128 0x2
	.long	.LASF1117
	.value	0x369
	.uleb128 0x2
	.long	.LASF1118
	.value	0x36a
	.uleb128 0x2
	.long	.LASF1119
	.value	0x36b
	.uleb128 0x2
	.long	.LASF1120
	.value	0x36c
	.uleb128 0x2
	.long	.LASF1121
	.value	0x36d
	.uleb128 0x2
	.long	.LASF1122
	.value	0x36e
	.uleb128 0x2
	.long	.LASF1123
	.value	0x36f
	.uleb128 0x2
	.long	.LASF1124
	.value	0x370
	.uleb128 0x2
	.long	.LASF1125
	.value	0x371
	.uleb128 0x2
	.long	.LASF1126
	.value	0x372
	.uleb128 0x2
	.long	.LASF1127
	.value	0x373
	.uleb128 0x2
	.long	.LASF1128
	.value	0x374
	.uleb128 0x2
	.long	.LASF1129
	.value	0x375
	.uleb128 0x2
	.long	.LASF1130
	.value	0x376
	.uleb128 0x2
	.long	.LASF1131
	.value	0x377
	.uleb128 0x2
	.long	.LASF1132
	.value	0x378
	.uleb128 0x2
	.long	.LASF1133
	.value	0x379
	.uleb128 0x2
	.long	.LASF1134
	.value	0x37a
	.uleb128 0x2
	.long	.LASF1135
	.value	0x37b
	.uleb128 0x2
	.long	.LASF1136
	.value	0x37c
	.uleb128 0x2
	.long	.LASF1137
	.value	0x37d
	.uleb128 0x2
	.long	.LASF1138
	.value	0x37e
	.uleb128 0x2
	.long	.LASF1139
	.value	0x37f
	.uleb128 0x2
	.long	.LASF1140
	.value	0x380
	.uleb128 0x2
	.long	.LASF1141
	.value	0x381
	.uleb128 0x2
	.long	.LASF1142
	.value	0x382
	.uleb128 0x2
	.long	.LASF1143
	.value	0x383
	.uleb128 0x2
	.long	.LASF1144
	.value	0x384
	.uleb128 0x2
	.long	.LASF1145
	.value	0x385
	.uleb128 0x2
	.long	.LASF1146
	.value	0x386
	.uleb128 0x2
	.long	.LASF1147
	.value	0x387
	.uleb128 0x2
	.long	.LASF1148
	.value	0x388
	.uleb128 0x2
	.long	.LASF1149
	.value	0x389
	.uleb128 0x2
	.long	.LASF1150
	.value	0x38a
	.uleb128 0x2
	.long	.LASF1151
	.value	0x38b
	.uleb128 0x2
	.long	.LASF1152
	.value	0x38c
	.uleb128 0x2
	.long	.LASF1153
	.value	0x38d
	.uleb128 0x2
	.long	.LASF1154
	.value	0x38e
	.uleb128 0x2
	.long	.LASF1155
	.value	0x38f
	.uleb128 0x2
	.long	.LASF1156
	.value	0x390
	.uleb128 0x2
	.long	.LASF1157
	.value	0x391
	.uleb128 0x2
	.long	.LASF1158
	.value	0x392
	.uleb128 0x2
	.long	.LASF1159
	.value	0x393
	.uleb128 0x2
	.long	.LASF1160
	.value	0x394
	.uleb128 0x2
	.long	.LASF1161
	.value	0x395
	.uleb128 0x2
	.long	.LASF1162
	.value	0x396
	.uleb128 0x2
	.long	.LASF1163
	.value	0x397
	.uleb128 0x2
	.long	.LASF1164
	.value	0x398
	.uleb128 0x2
	.long	.LASF1165
	.value	0x399
	.uleb128 0x2
	.long	.LASF1166
	.value	0x39a
	.uleb128 0x2
	.long	.LASF1167
	.value	0x39b
	.uleb128 0x2
	.long	.LASF1168
	.value	0x39c
	.uleb128 0x2
	.long	.LASF1169
	.value	0x39d
	.uleb128 0x2
	.long	.LASF1170
	.value	0x39e
	.uleb128 0x2
	.long	.LASF1171
	.value	0x39f
	.uleb128 0x2
	.long	.LASF1172
	.value	0x3a0
	.uleb128 0x2
	.long	.LASF1173
	.value	0x3a1
	.uleb128 0x2
	.long	.LASF1174
	.value	0x3a2
	.uleb128 0x2
	.long	.LASF1175
	.value	0x3a3
	.uleb128 0x2
	.long	.LASF1176
	.value	0x3a4
	.uleb128 0x2
	.long	.LASF1177
	.value	0x3a5
	.uleb128 0x2
	.long	.LASF1178
	.value	0x3a6
	.uleb128 0x2
	.long	.LASF1179
	.value	0x3a7
	.uleb128 0x2
	.long	.LASF1180
	.value	0x3a8
	.uleb128 0x2
	.long	.LASF1181
	.value	0x3a9
	.uleb128 0x2
	.long	.LASF1182
	.value	0x3aa
	.uleb128 0x2
	.long	.LASF1183
	.value	0x3ab
	.uleb128 0x2
	.long	.LASF1184
	.value	0x3ac
	.uleb128 0x2
	.long	.LASF1185
	.value	0x3ad
	.uleb128 0x2
	.long	.LASF1186
	.value	0x3ae
	.uleb128 0x2
	.long	.LASF1187
	.value	0x3af
	.uleb128 0x2
	.long	.LASF1188
	.value	0x3b0
	.uleb128 0x2
	.long	.LASF1189
	.value	0x3b1
	.uleb128 0x2
	.long	.LASF1190
	.value	0x3b2
	.uleb128 0x2
	.long	.LASF1191
	.value	0x3b3
	.uleb128 0x2
	.long	.LASF1192
	.value	0x3b4
	.uleb128 0x2
	.long	.LASF1193
	.value	0x3b5
	.uleb128 0x2
	.long	.LASF1194
	.value	0x3b6
	.uleb128 0x2
	.long	.LASF1195
	.value	0x3b7
	.uleb128 0x2
	.long	.LASF1196
	.value	0x3b8
	.uleb128 0x2
	.long	.LASF1197
	.value	0x3b9
	.uleb128 0x2
	.long	.LASF1198
	.value	0x3ba
	.uleb128 0x2
	.long	.LASF1199
	.value	0x3bb
	.uleb128 0x2
	.long	.LASF1200
	.value	0x3bc
	.uleb128 0x2
	.long	.LASF1201
	.value	0x3bd
	.uleb128 0x2
	.long	.LASF1202
	.value	0x3be
	.uleb128 0x2
	.long	.LASF1203
	.value	0x3bf
	.uleb128 0x2
	.long	.LASF1204
	.value	0x3c0
	.uleb128 0x2
	.long	.LASF1205
	.value	0x3c1
	.uleb128 0x2
	.long	.LASF1206
	.value	0x3c2
	.uleb128 0x2
	.long	.LASF1207
	.value	0x3c3
	.uleb128 0x2
	.long	.LASF1208
	.value	0x3c4
	.uleb128 0x2
	.long	.LASF1209
	.value	0x3c5
	.uleb128 0x2
	.long	.LASF1210
	.value	0x3c6
	.uleb128 0x2
	.long	.LASF1211
	.value	0x3c7
	.byte	0
	.uleb128 0x10
	.long	.LASF1212
	.byte	0xb
	.value	0x478
	.byte	0x3
	.long	0x845
	.uleb128 0x14
	.byte	0x38
	.byte	0xb
	.value	0x47b
	.long	0x2243
	.uleb128 0x4
	.long	.LASF1213
	.byte	0xb
	.value	0x47d
	.byte	0xf
	.long	0x839
	.byte	0
	.uleb128 0x4
	.long	.LASF1214
	.byte	0xb
	.value	0x47e
	.byte	0xa
	.long	0x96
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1215
	.byte	0xb
	.value	0x47f
	.byte	0xa
	.long	0x96
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1216
	.byte	0xb
	.value	0x481
	.byte	0xf
	.long	0x411
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1217
	.byte	0xb
	.value	0x482
	.byte	0x10
	.long	0x21ca
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1218
	.byte	0xb
	.value	0x483
	.byte	0xa
	.long	0x96
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1219
	.byte	0xb
	.value	0x483
	.byte	0x11
	.long	0x96
	.byte	0x30
	.byte	0
	.uleb128 0x10
	.long	.LASF1220
	.byte	0xb
	.value	0x484
	.byte	0x3
	.long	0x21d7
	.uleb128 0xa
	.long	0x2243
	.long	0x2261
	.uleb128 0x2a
	.long	0x43
	.value	0x3c6
	.byte	0
	.uleb128 0x19
	.long	.LASF1222
	.byte	0xb
	.value	0x486
	.byte	0x10
	.long	0x2250
	.uleb128 0x2b
	.byte	0x7
	.byte	0x4
	.long	0x7a
	.byte	0xb
	.value	0x48b
	.byte	0xe
	.long	0x25ba
	.uleb128 0x1
	.long	.LASF1223
	.byte	0
	.uleb128 0x1
	.long	.LASF1224
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1225
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1226
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1227
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1228
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1229
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1230
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1231
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1232
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1233
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1234
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1235
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1236
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1237
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1238
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1239
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1240
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1241
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1242
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1243
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1244
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1245
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1246
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1247
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1248
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1249
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1250
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1251
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1252
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1253
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1254
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1255
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1256
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1257
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1258
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1259
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1260
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1261
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1262
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1263
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1264
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1265
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1266
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1267
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1268
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1269
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1270
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1271
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1272
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1273
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1274
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1275
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1276
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1277
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1278
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1279
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1280
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1281
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1282
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1283
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1284
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1285
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1286
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1287
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1288
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1289
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1290
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1291
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1292
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1293
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1294
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1295
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1296
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1297
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1298
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1299
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1300
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1301
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1302
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1303
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1304
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1305
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1306
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1307
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1308
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1309
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1310
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1311
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1312
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1313
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1314
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1315
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1316
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1317
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1318
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1319
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1320
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1321
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1322
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1323
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1324
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1325
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1326
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1327
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1328
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1329
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1330
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1331
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1332
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF1333
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF1334
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF1335
	.byte	0x70
	.uleb128 0x1
	.long	.LASF1336
	.byte	0x71
	.uleb128 0x1
	.long	.LASF1337
	.byte	0x72
	.uleb128 0x1
	.long	.LASF1338
	.byte	0x73
	.uleb128 0x1
	.long	.LASF1339
	.byte	0x74
	.uleb128 0x1
	.long	.LASF1340
	.byte	0x75
	.uleb128 0x1
	.long	.LASF1341
	.byte	0x76
	.uleb128 0x1
	.long	.LASF1342
	.byte	0x77
	.uleb128 0x1
	.long	.LASF1343
	.byte	0x78
	.uleb128 0x1
	.long	.LASF1344
	.byte	0x79
	.uleb128 0x1
	.long	.LASF1345
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF1346
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF1347
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF1348
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF1349
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF1350
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF1351
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1352
	.byte	0x81
	.uleb128 0x1
	.long	.LASF1353
	.byte	0x82
	.uleb128 0x1
	.long	.LASF1354
	.byte	0x83
	.uleb128 0x1
	.long	.LASF1355
	.byte	0x84
	.uleb128 0x1
	.long	.LASF1356
	.byte	0x85
	.uleb128 0x1
	.long	.LASF1357
	.byte	0x86
	.uleb128 0x1
	.long	.LASF1358
	.byte	0x87
	.uleb128 0x1
	.long	.LASF1359
	.byte	0x88
	.uleb128 0x1
	.long	.LASF1360
	.byte	0x89
	.byte	0
	.uleb128 0x10
	.long	.LASF1361
	.byte	0xb
	.value	0x517
	.byte	0x3
	.long	0x226e
	.uleb128 0x14
	.byte	0x5c
	.byte	0xb
	.value	0x519
	.long	0x2713
	.uleb128 0x4
	.long	.LASF1362
	.byte	0xb
	.value	0x51b
	.byte	0x9
	.long	0x8f
	.byte	0
	.uleb128 0x4
	.long	.LASF1363
	.byte	0xb
	.value	0x51c
	.byte	0x9
	.long	0x8f
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1364
	.byte	0xb
	.value	0x51d
	.byte	0x9
	.long	0x8f
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1365
	.byte	0xb
	.value	0x51e
	.byte	0x9
	.long	0x8f
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1366
	.byte	0xb
	.value	0x51f
	.byte	0x9
	.long	0x8f
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1367
	.byte	0xb
	.value	0x520
	.byte	0x9
	.long	0x8f
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1368
	.byte	0xb
	.value	0x521
	.byte	0x9
	.long	0x8f
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1369
	.byte	0xb
	.value	0x522
	.byte	0x9
	.long	0x8f
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1370
	.byte	0xb
	.value	0x523
	.byte	0x9
	.long	0x8f
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1371
	.byte	0xb
	.value	0x524
	.byte	0x9
	.long	0x8f
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1372
	.byte	0xb
	.value	0x525
	.byte	0x9
	.long	0x8f
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1373
	.byte	0xb
	.value	0x526
	.byte	0x9
	.long	0x8f
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1374
	.byte	0xb
	.value	0x527
	.byte	0x9
	.long	0x8f
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1375
	.byte	0xb
	.value	0x528
	.byte	0x9
	.long	0x8f
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1376
	.byte	0xb
	.value	0x529
	.byte	0x9
	.long	0x8f
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1377
	.byte	0xb
	.value	0x52a
	.byte	0x9
	.long	0x8f
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1378
	.byte	0xb
	.value	0x52b
	.byte	0x9
	.long	0x8f
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1379
	.byte	0xb
	.value	0x52c
	.byte	0x9
	.long	0x8f
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1380
	.byte	0xb
	.value	0x52d
	.byte	0x9
	.long	0x8f
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1381
	.byte	0xb
	.value	0x52e
	.byte	0x9
	.long	0x8f
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1382
	.byte	0xb
	.value	0x52f
	.byte	0x9
	.long	0x8f
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1383
	.byte	0xb
	.value	0x530
	.byte	0x9
	.long	0x8f
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1384
	.byte	0xb
	.value	0x531
	.byte	0x9
	.long	0x8f
	.byte	0x58
	.byte	0
	.uleb128 0x10
	.long	.LASF1385
	.byte	0xb
	.value	0x533
	.byte	0x3
	.long	0x25c7
	.uleb128 0xa
	.long	0x2713
	.long	0x2730
	.uleb128 0xb
	.long	0x43
	.byte	0x88
	.byte	0
	.uleb128 0x19
	.long	.LASF1386
	.byte	0xb
	.value	0x535
	.byte	0x13
	.long	0x2720
	.uleb128 0x17
	.long	.LASF1388
	.byte	0xe0
	.byte	0xc
	.byte	0xcf
	.long	0x2914
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xc
	.byte	0xd2
	.byte	0x10
	.long	0x462
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xc
	.byte	0xd5
	.byte	0xe
	.long	0x386
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xc
	.byte	0xd6
	.byte	0xe
	.long	0x386
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xc
	.byte	0xd7
	.byte	0xe
	.long	0x386
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xc
	.byte	0xda
	.byte	0x14
	.long	0x2914
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xc
	.byte	0xdb
	.byte	0x14
	.long	0x2914
	.byte	0x30
	.uleb128 0x3
	.long	.LASF101
	.byte	0xc
	.byte	0xde
	.byte	0xe
	.long	0x47c
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1213
	.byte	0xc
	.byte	0xdf
	.byte	0x12
	.long	0x839
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1214
	.byte	0xc
	.byte	0xe0
	.byte	0xb
	.long	0x8f
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xc
	.byte	0xe4
	.byte	0x14
	.long	0x2914
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xc
	.byte	0xe5
	.byte	0x14
	.long	0x2914
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xc
	.byte	0xe7
	.byte	0x19
	.long	0x294d
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xc
	.byte	0xea
	.byte	0xe
	.long	0x386
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xc
	.byte	0xeb
	.byte	0xe
	.long	0x386
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xc
	.byte	0xee
	.byte	0xe
	.long	0x386
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xc
	.byte	0xef
	.byte	0xe
	.long	0x386
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xc
	.byte	0xf2
	.byte	0xe
	.long	0x386
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xc
	.byte	0xf3
	.byte	0xe
	.long	0x386
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xc
	.byte	0xf4
	.byte	0xe
	.long	0x386
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xc
	.byte	0xf7
	.byte	0xb
	.long	0x8f
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF26
	.byte	0xc
	.byte	0xf9
	.byte	0x11
	.long	0x25ba
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0xfa
	.byte	0x12
	.long	0x2952
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1215
	.byte	0xc
	.byte	0xfc
	.byte	0xb
	.long	0x8f
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xc
	.byte	0xfd
	.byte	0xf
	.long	0x2957
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xc
	.byte	0xfe
	.byte	0xb
	.long	0x8f
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xc
	.byte	0xff
	.byte	0xb
	.long	0x8f
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1404
	.byte	0xc
	.value	0x102
	.byte	0xb
	.long	0x8f
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1405
	.byte	0xc
	.value	0x103
	.byte	0xb
	.long	0x8f
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1406
	.byte	0xc
	.value	0x107
	.byte	0x14
	.long	0x2914
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1367
	.byte	0xc
	.value	0x10b
	.byte	0xb
	.long	0x8f
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1407
	.byte	0xc
	.value	0x10f
	.byte	0xb
	.long	0x8f
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1408
	.byte	0xc
	.value	0x113
	.byte	0x16
	.long	0x2b31
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1409
	.byte	0xc
	.value	0x116
	.byte	0xb
	.long	0x8f
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1410
	.byte	0xc
	.value	0x119
	.byte	0x11
	.long	0x4de
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1411
	.byte	0xc
	.value	0x11c
	.byte	0x14
	.long	0x2914
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x273d
	.uleb128 0x17
	.long	.LASF1412
	.byte	0x10
	.byte	0xd
	.byte	0xe3
	.long	0x294d
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xd
	.byte	0xe5
	.byte	0xf
	.long	0x2d74
	.byte	0
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xd
	.byte	0xe6
	.byte	0xb
	.long	0x88
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xd
	.byte	0xe7
	.byte	0xb
	.long	0x88
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x2919
	.uleb128 0x8
	.long	0x2713
	.uleb128 0x8
	.long	0x2243
	.uleb128 0x2c
	.long	.LASF1416
	.value	0x140
	.byte	0xe
	.byte	0x53
	.byte	0x10
	.long	0x2b31
	.uleb128 0x9
	.string	"mo"
	.byte	0xe
	.byte	0x55
	.byte	0xe
	.long	0x2c8a
	.byte	0
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xe
	.byte	0x56
	.byte	0x13
	.long	0x2f8a
	.byte	0x8
	.uleb128 0x9
	.string	"cmd"
	.byte	0xe
	.byte	0x57
	.byte	0xf
	.long	0x131
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.long	0x386
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xe
	.byte	0x5e
	.byte	0xe
	.long	0x386
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xe
	.byte	0x60
	.byte	0x16
	.long	0x386
	.byte	0x1c
	.uleb128 0x9
	.string	"bob"
	.byte	0xe
	.byte	0x62
	.byte	0x16
	.long	0x386
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xe
	.byte	0x66
	.byte	0xb
	.long	0x8f
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xe
	.byte	0x67
	.byte	0xb
	.long	0x8f
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xe
	.byte	0x69
	.byte	0xb
	.long	0x8f
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xe
	.byte	0x6c
	.byte	0xb
	.long	0x2f96
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xe
	.byte	0x6d
	.byte	0xe
	.long	0x2fa6
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xe
	.byte	0x6e
	.byte	0xe
	.long	0xc2
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xe
	.byte	0x71
	.byte	0xb
	.long	0x2c8f
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xe
	.byte	0x72
	.byte	0x12
	.long	0x312
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xe
	.byte	0x75
	.byte	0x12
	.long	0x312
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xe
	.byte	0x77
	.byte	0xe
	.long	0x2fb6
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xe
	.byte	0x78
	.byte	0xb
	.long	0x2c8f
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xe
	.byte	0x79
	.byte	0xb
	.long	0x2c8f
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xe
	.byte	0x7c
	.byte	0xb
	.long	0x8f
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xe
	.byte	0x7d
	.byte	0xb
	.long	0x8f
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xe
	.byte	0x81
	.byte	0xb
	.long	0x8f
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xe
	.byte	0x84
	.byte	0xb
	.long	0x8f
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xe
	.byte	0x87
	.byte	0xb
	.long	0x8f
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xe
	.byte	0x88
	.byte	0xb
	.long	0x8f
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xe
	.byte	0x89
	.byte	0xb
	.long	0x8f
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xe
	.byte	0x8c
	.byte	0xc
	.long	0x9f
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xe
	.byte	0x8f
	.byte	0xb
	.long	0x8f
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xe
	.byte	0x90
	.byte	0xb
	.long	0x8f
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1442
	.byte	0xe
	.byte	0x93
	.byte	0xe
	.long	0x2c8a
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xe
	.byte	0x96
	.byte	0xb
	.long	0x8f
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xe
	.byte	0x9a
	.byte	0xb
	.long	0x8f
	.byte	0xfc
	.uleb128 0x1a
	.long	.LASF1445
	.byte	0x9e
	.byte	0xb
	.long	0x8f
	.value	0x100
	.uleb128 0x1a
	.long	.LASF1446
	.byte	0xa1
	.byte	0xf
	.long	0x2fc6
	.value	0x108
	.uleb128 0x1a
	.long	.LASF1447
	.byte	0xa4
	.byte	0xe
	.long	0xc2
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x295c
	.uleb128 0x10
	.long	.LASF1448
	.byte	0xc
	.value	0x11e
	.byte	0x3
	.long	0x273d
	.uleb128 0x13
	.byte	0x8
	.byte	0xd
	.byte	0x47
	.long	0x2b62
	.uleb128 0x9
	.string	"x"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0x386
	.byte	0
	.uleb128 0x9
	.string	"y"
	.byte	0xd
	.byte	0x4a
	.byte	0xd
	.long	0x386
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1449
	.byte	0xd
	.byte	0x4c
	.byte	0x3
	.long	0x2b43
	.uleb128 0x13
	.byte	0x28
	.byte	0xd
	.byte	0x58
	.long	0x2ba5
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xd
	.byte	0x5a
	.byte	0x10
	.long	0x462
	.byte	0
	.uleb128 0x9
	.string	"x"
	.byte	0xd
	.byte	0x5b
	.byte	0xe
	.long	0x386
	.byte	0x18
	.uleb128 0x9
	.string	"y"
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.long	0x386
	.byte	0x1c
	.uleb128 0x9
	.string	"z"
	.byte	0xd
	.byte	0x5d
	.byte	0xe
	.long	0x386
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1450
	.byte	0xd
	.byte	0x5f
	.byte	0x3
	.long	0x2b6e
	.uleb128 0x13
	.byte	0x80
	.byte	0xd
	.byte	0x65
	.long	0x2c8a
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xd
	.byte	0x67
	.byte	0xd
	.long	0x386
	.byte	0
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xd
	.byte	0x68
	.byte	0xd
	.long	0x386
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xd
	.byte	0x69
	.byte	0xb
	.long	0x88
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xd
	.byte	0x6a
	.byte	0xb
	.long	0x88
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xd
	.byte	0x6b
	.byte	0xb
	.long	0x88
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xd
	.byte	0x6c
	.byte	0xb
	.long	0x88
	.byte	0xe
	.uleb128 0x9
	.string	"tag"
	.byte	0xd
	.byte	0x6d
	.byte	0xb
	.long	0x88
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1457
	.byte	0xd
	.byte	0x70
	.byte	0xa
	.long	0x8f
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xd
	.byte	0x73
	.byte	0xd
	.long	0x2c8a
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xd
	.byte	0x76
	.byte	0xa
	.long	0x2c8f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xd
	.byte	0x79
	.byte	0x11
	.long	0x2ba5
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xd
	.byte	0x7c
	.byte	0xa
	.long	0x8f
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xd
	.byte	0x7f
	.byte	0xd
	.long	0x2c8a
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xd
	.byte	0x82
	.byte	0xb
	.long	0x9d
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1463
	.byte	0xd
	.byte	0x84
	.byte	0xb
	.long	0x8f
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1464
	.byte	0xd
	.byte	0x85
	.byte	0x15
	.long	0x2d5e
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2b36
	.uleb128 0xa
	.long	0x8f
	.long	0x2c9f
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF1465
	.byte	0x58
	.byte	0xd
	.byte	0xb3
	.long	0x2d5e
	.uleb128 0x9
	.string	"v1"
	.byte	0xd
	.byte	0xb6
	.byte	0xf
	.long	0x2daa
	.byte	0
	.uleb128 0x9
	.string	"v2"
	.byte	0xd
	.byte	0xb7
	.byte	0xf
	.long	0x2daa
	.byte	0x8
	.uleb128 0x9
	.string	"dx"
	.byte	0xd
	.byte	0xba
	.byte	0xd
	.long	0x386
	.byte	0x10
	.uleb128 0x9
	.string	"dy"
	.byte	0xd
	.byte	0xbb
	.byte	0xd
	.long	0x386
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xd
	.byte	0xbe
	.byte	0xb
	.long	0x88
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xd
	.byte	0xbf
	.byte	0xb
	.long	0x88
	.byte	0x1a
	.uleb128 0x9
	.string	"tag"
	.byte	0xd
	.byte	0xc0
	.byte	0xb
	.long	0x88
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1466
	.byte	0xd
	.byte	0xc4
	.byte	0xb
	.long	0x488
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1467
	.byte	0xd
	.byte	0xc8
	.byte	0xd
	.long	0x2daf
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xd
	.byte	0xcb
	.byte	0x11
	.long	0x2d9e
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xd
	.byte	0xcf
	.byte	0xf
	.long	0x2d74
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xd
	.byte	0xd0
	.byte	0xf
	.long	0x2d74
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xd
	.byte	0xd3
	.byte	0xa
	.long	0x8f
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xd
	.byte	0xd6
	.byte	0xb
	.long	0x9d
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x2d63
	.uleb128 0x8
	.long	0x2c9f
	.uleb128 0x6
	.long	.LASF1471
	.byte	0xd
	.byte	0x87
	.byte	0x3
	.long	0x2bb1
	.uleb128 0x8
	.long	0x2d68
	.uleb128 0xe
	.long	0x7a
	.byte	0xd
	.byte	0xa9
	.byte	0x1
	.long	0x2d9e
	.uleb128 0x1
	.long	.LASF1472
	.byte	0
	.uleb128 0x1
	.long	.LASF1473
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1474
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1475
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1476
	.byte	0xd
	.byte	0xaf
	.byte	0x3
	.long	0x2d79
	.uleb128 0x8
	.long	0x2b62
	.uleb128 0xa
	.long	0x386
	.long	0x2dbf
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.byte	0x2
	.byte	0xd
	.value	0x11d
	.long	0x2de5
	.uleb128 0x4
	.long	.LASF1477
	.byte	0xd
	.value	0x11f
	.byte	0xb
	.long	0xce
	.byte	0
	.uleb128 0x4
	.long	.LASF1478
	.byte	0xd
	.value	0x120
	.byte	0xb
	.long	0xce
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF1479
	.byte	0xd
	.value	0x121
	.byte	0x3
	.long	0x2dbf
	.uleb128 0x10
	.long	.LASF1480
	.byte	0xd
	.value	0x124
	.byte	0x10
	.long	0x2de5
	.uleb128 0x14
	.byte	0x28
	.byte	0xd
	.value	0x164
	.long	0x2e4f
	.uleb128 0x4
	.long	.LASF1481
	.byte	0xd
	.value	0x166
	.byte	0xc
	.long	0x88
	.byte	0
	.uleb128 0x4
	.long	.LASF1379
	.byte	0xd
	.value	0x167
	.byte	0xc
	.long	0x88
	.byte	0x2
	.uleb128 0x4
	.long	.LASF1482
	.byte	0xd
	.value	0x168
	.byte	0xc
	.long	0x88
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1483
	.byte	0xd
	.value	0x169
	.byte	0xc
	.long	0x88
	.byte	0x6
	.uleb128 0x4
	.long	.LASF1484
	.byte	0xd
	.value	0x16a
	.byte	0xb
	.long	0x2e4f
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x8f
	.long	0x2e5f
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF1485
	.byte	0xd
	.value	0x16c
	.byte	0x3
	.long	0x2dff
	.uleb128 0x14
	.byte	0x1c
	.byte	0xd
	.value	0x1ab
	.long	0x2ea0
	.uleb128 0x4
	.long	.LASF1486
	.byte	0xd
	.value	0x1b0
	.byte	0xd
	.long	0xc2
	.byte	0
	.uleb128 0x4
	.long	.LASF1487
	.byte	0xd
	.value	0x1b3
	.byte	0xb
	.long	0x2ea0
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1488
	.byte	0xd
	.value	0x1b6
	.byte	0xa
	.long	0x2eb0
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.long	0x88
	.long	0x2eb0
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.long	0xce
	.long	0x2ec0
	.uleb128 0xb
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF1489
	.byte	0xd
	.value	0x1b8
	.byte	0x3
	.long	0x2e6c
	.uleb128 0x14
	.byte	0x10
	.byte	0xd
	.value	0x1c0
	.long	0x2ef3
	.uleb128 0x4
	.long	.LASF1490
	.byte	0xd
	.value	0x1c2
	.byte	0xb
	.long	0x8f
	.byte	0
	.uleb128 0x4
	.long	.LASF1491
	.byte	0xd
	.value	0x1c3
	.byte	0x14
	.long	0x2ef3
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	0x2ec0
	.uleb128 0x10
	.long	.LASF1492
	.byte	0xd
	.value	0x1c5
	.byte	0x3
	.long	0x2ecd
	.uleb128 0xe
	.long	0x7a
	.byte	0xf
	.byte	0x3d
	.byte	0x1
	.long	0x2f24
	.uleb128 0x1
	.long	.LASF1493
	.byte	0
	.uleb128 0x1
	.long	.LASF1494
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1495
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.byte	0x18
	.byte	0xf
	.byte	0x44
	.long	0x2f5f
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xf
	.byte	0x46
	.byte	0xe
	.long	0x2957
	.byte	0
	.uleb128 0x3
	.long	.LASF1215
	.byte	0xf
	.byte	0x47
	.byte	0xa
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.string	"sx"
	.byte	0xf
	.byte	0x48
	.byte	0xd
	.long	0x386
	.byte	0xc
	.uleb128 0x9
	.string	"sy"
	.byte	0xf
	.byte	0x49
	.byte	0xd
	.long	0x386
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1496
	.byte	0xf
	.byte	0x4b
	.byte	0x3
	.long	0x2f24
	.uleb128 0xe
	.long	0x7a
	.byte	0xe
	.byte	0x36
	.byte	0x1
	.long	0x2f8a
	.uleb128 0x1
	.long	.LASF1497
	.byte	0
	.uleb128 0x1
	.long	.LASF1498
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1499
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1500
	.byte	0xe
	.byte	0x3e
	.byte	0x3
	.long	0x2f6b
	.uleb128 0xa
	.long	0x8f
	.long	0x2fa6
	.uleb128 0xb
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0xc2
	.long	0x2fb6
	.uleb128 0xb
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0xc2
	.long	0x2fc6
	.uleb128 0xb
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x2f5f
	.long	0x2fd6
	.uleb128 0xb
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF1501
	.byte	0xe
	.byte	0xa6
	.byte	0x3
	.long	0x295c
	.uleb128 0xf
	.long	.LASF1502
	.byte	0x10
	.byte	0x42
	.byte	0xd
	.long	0x8f
	.uleb128 0xf
	.long	.LASF1503
	.byte	0x10
	.byte	0x4c
	.byte	0x15
	.long	0x2ffa
	.uleb128 0x8
	.long	0x2ef8
	.uleb128 0xa
	.long	0x300f
	.long	0x300f
	.uleb128 0xb
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0xce
	.uleb128 0xf
	.long	.LASF1504
	.byte	0x11
	.byte	0x2f
	.byte	0xf
	.long	0x2fff
	.uleb128 0xe
	.long	0x7a
	.byte	0x12
	.byte	0x64
	.byte	0x1
	.long	0x31cb
	.uleb128 0x1
	.long	.LASF1505
	.byte	0
	.uleb128 0x1
	.long	.LASF1506
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1507
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1508
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1509
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1510
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1511
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1512
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1513
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1514
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1515
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1516
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1517
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1518
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1519
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1520
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1521
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1522
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1523
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1524
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1525
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1526
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1527
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1528
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1529
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1530
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1531
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1532
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1533
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1534
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1535
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1536
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1537
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1538
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1539
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1540
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1541
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1542
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1543
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1544
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1545
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1546
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1547
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1548
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1549
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1550
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1551
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1552
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1553
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1554
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1555
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1556
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1557
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1558
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1559
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1560
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1561
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1562
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1563
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1564
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1565
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1566
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1567
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1568
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1569
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1570
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1571
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1572
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1573
	.byte	0x44
	.byte	0
	.uleb128 0xe
	.long	0x7a
	.byte	0x12
	.byte	0xb2
	.byte	0x1
	.long	0x346c
	.uleb128 0x1
	.long	.LASF1574
	.byte	0
	.uleb128 0x1
	.long	.LASF1575
	.byte	0x1
	.uleb128 0x1
	.long	.LASF1576
	.byte	0x2
	.uleb128 0x1
	.long	.LASF1577
	.byte	0x3
	.uleb128 0x1
	.long	.LASF1578
	.byte	0x4
	.uleb128 0x1
	.long	.LASF1579
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1580
	.byte	0x6
	.uleb128 0x1
	.long	.LASF1581
	.byte	0x7
	.uleb128 0x1
	.long	.LASF1582
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1583
	.byte	0x9
	.uleb128 0x1
	.long	.LASF1584
	.byte	0xa
	.uleb128 0x1
	.long	.LASF1585
	.byte	0xb
	.uleb128 0x1
	.long	.LASF1586
	.byte	0xc
	.uleb128 0x1
	.long	.LASF1587
	.byte	0xd
	.uleb128 0x1
	.long	.LASF1588
	.byte	0xe
	.uleb128 0x1
	.long	.LASF1589
	.byte	0xf
	.uleb128 0x1
	.long	.LASF1590
	.byte	0x10
	.uleb128 0x1
	.long	.LASF1591
	.byte	0x11
	.uleb128 0x1
	.long	.LASF1592
	.byte	0x12
	.uleb128 0x1
	.long	.LASF1593
	.byte	0x13
	.uleb128 0x1
	.long	.LASF1594
	.byte	0x14
	.uleb128 0x1
	.long	.LASF1595
	.byte	0x15
	.uleb128 0x1
	.long	.LASF1596
	.byte	0x16
	.uleb128 0x1
	.long	.LASF1597
	.byte	0x17
	.uleb128 0x1
	.long	.LASF1598
	.byte	0x18
	.uleb128 0x1
	.long	.LASF1599
	.byte	0x19
	.uleb128 0x1
	.long	.LASF1600
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF1601
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF1602
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF1603
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF1604
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF1605
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF1606
	.byte	0x20
	.uleb128 0x1
	.long	.LASF1607
	.byte	0x21
	.uleb128 0x1
	.long	.LASF1608
	.byte	0x22
	.uleb128 0x1
	.long	.LASF1609
	.byte	0x23
	.uleb128 0x1
	.long	.LASF1610
	.byte	0x24
	.uleb128 0x1
	.long	.LASF1611
	.byte	0x25
	.uleb128 0x1
	.long	.LASF1612
	.byte	0x26
	.uleb128 0x1
	.long	.LASF1613
	.byte	0x27
	.uleb128 0x1
	.long	.LASF1614
	.byte	0x28
	.uleb128 0x1
	.long	.LASF1615
	.byte	0x29
	.uleb128 0x1
	.long	.LASF1616
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF1617
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF1618
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF1619
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF1620
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF1621
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF1622
	.byte	0x30
	.uleb128 0x1
	.long	.LASF1623
	.byte	0x31
	.uleb128 0x1
	.long	.LASF1624
	.byte	0x32
	.uleb128 0x1
	.long	.LASF1625
	.byte	0x33
	.uleb128 0x1
	.long	.LASF1626
	.byte	0x34
	.uleb128 0x1
	.long	.LASF1627
	.byte	0x35
	.uleb128 0x1
	.long	.LASF1628
	.byte	0x36
	.uleb128 0x1
	.long	.LASF1629
	.byte	0x37
	.uleb128 0x1
	.long	.LASF1630
	.byte	0x38
	.uleb128 0x1
	.long	.LASF1631
	.byte	0x39
	.uleb128 0x1
	.long	.LASF1632
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF1633
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF1634
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF1635
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF1636
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF1637
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF1638
	.byte	0x40
	.uleb128 0x1
	.long	.LASF1639
	.byte	0x41
	.uleb128 0x1
	.long	.LASF1640
	.byte	0x42
	.uleb128 0x1
	.long	.LASF1641
	.byte	0x43
	.uleb128 0x1
	.long	.LASF1642
	.byte	0x44
	.uleb128 0x1
	.long	.LASF1643
	.byte	0x45
	.uleb128 0x1
	.long	.LASF1644
	.byte	0x46
	.uleb128 0x1
	.long	.LASF1645
	.byte	0x47
	.uleb128 0x1
	.long	.LASF1646
	.byte	0x48
	.uleb128 0x1
	.long	.LASF1647
	.byte	0x49
	.uleb128 0x1
	.long	.LASF1648
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF1649
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF1650
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF1651
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF1652
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF1653
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF1654
	.byte	0x50
	.uleb128 0x1
	.long	.LASF1655
	.byte	0x51
	.uleb128 0x1
	.long	.LASF1656
	.byte	0x52
	.uleb128 0x1
	.long	.LASF1657
	.byte	0x53
	.uleb128 0x1
	.long	.LASF1658
	.byte	0x54
	.uleb128 0x1
	.long	.LASF1659
	.byte	0x55
	.uleb128 0x1
	.long	.LASF1660
	.byte	0x56
	.uleb128 0x1
	.long	.LASF1661
	.byte	0x57
	.uleb128 0x1
	.long	.LASF1662
	.byte	0x58
	.uleb128 0x1
	.long	.LASF1663
	.byte	0x59
	.uleb128 0x1
	.long	.LASF1664
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF1665
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF1666
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF1667
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF1668
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF1669
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF1670
	.byte	0x60
	.uleb128 0x1
	.long	.LASF1671
	.byte	0x61
	.uleb128 0x1
	.long	.LASF1672
	.byte	0x62
	.uleb128 0x1
	.long	.LASF1673
	.byte	0x63
	.uleb128 0x1
	.long	.LASF1674
	.byte	0x64
	.uleb128 0x1
	.long	.LASF1675
	.byte	0x65
	.uleb128 0x1
	.long	.LASF1676
	.byte	0x66
	.uleb128 0x1
	.long	.LASF1677
	.byte	0x67
	.uleb128 0x1
	.long	.LASF1678
	.byte	0x68
	.uleb128 0x1
	.long	.LASF1679
	.byte	0x69
	.uleb128 0x1
	.long	.LASF1680
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF1681
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF1682
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF1683
	.byte	0x6d
	.byte	0
	.uleb128 0xf
	.long	.LASF1684
	.byte	0x13
	.byte	0x3c
	.byte	0x13
	.long	0x24f
	.uleb128 0xf
	.long	.LASF1685
	.byte	0x13
	.byte	0x55
	.byte	0xe
	.long	0x8f
	.uleb128 0xf
	.long	.LASF1686
	.byte	0x13
	.byte	0x56
	.byte	0xe
	.long	0x8f
	.uleb128 0xf
	.long	.LASF1687
	.byte	0x13
	.byte	0x84
	.byte	0x11
	.long	0xc2
	.uleb128 0xf
	.long	.LASF1688
	.byte	0x13
	.byte	0x89
	.byte	0x12
	.long	0xc2
	.uleb128 0xf
	.long	.LASF1689
	.byte	0x13
	.byte	0xc1
	.byte	0x19
	.long	0x280
	.uleb128 0xa
	.long	0x2fd6
	.long	0x34c4
	.uleb128 0xb
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF1690
	.byte	0x13
	.byte	0xd4
	.byte	0x11
	.long	0x34b4
	.uleb128 0xf
	.long	.LASF1691
	.byte	0x13
	.byte	0xfd
	.byte	0x19
	.long	0x280
	.uleb128 0x7
	.long	.LASF1692
	.byte	0x34
	.byte	0x6
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	finalestage
	.uleb128 0x7
	.long	.LASF1693
	.byte	0x36
	.byte	0x6
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	finalecount
	.uleb128 0x7
	.long	.LASF1694
	.byte	0x3b
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	e1text
	.uleb128 0x7
	.long	.LASF1695
	.byte	0x3c
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	e2text
	.uleb128 0x7
	.long	.LASF1696
	.byte	0x3d
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	e3text
	.uleb128 0x7
	.long	.LASF1697
	.byte	0x3e
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	e4text
	.uleb128 0x7
	.long	.LASF1698
	.byte	0x40
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	c1text
	.uleb128 0x7
	.long	.LASF1699
	.byte	0x41
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	c2text
	.uleb128 0x7
	.long	.LASF1700
	.byte	0x42
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	c3text
	.uleb128 0x7
	.long	.LASF1701
	.byte	0x43
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	c4text
	.uleb128 0x7
	.long	.LASF1702
	.byte	0x44
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	c5text
	.uleb128 0x7
	.long	.LASF1703
	.byte	0x45
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	c6text
	.uleb128 0x7
	.long	.LASF1704
	.byte	0x47
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	p1text
	.uleb128 0x7
	.long	.LASF1705
	.byte	0x48
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	p2text
	.uleb128 0x7
	.long	.LASF1706
	.byte	0x49
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	p3text
	.uleb128 0x7
	.long	.LASF1707
	.byte	0x4a
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	p4text
	.uleb128 0x7
	.long	.LASF1708
	.byte	0x4b
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	p5text
	.uleb128 0x7
	.long	.LASF1709
	.byte	0x4c
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	p6text
	.uleb128 0x7
	.long	.LASF1710
	.byte	0x4e
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	t1text
	.uleb128 0x7
	.long	.LASF1711
	.byte	0x4f
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	t2text
	.uleb128 0x7
	.long	.LASF1712
	.byte	0x50
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	t3text
	.uleb128 0x7
	.long	.LASF1713
	.byte	0x51
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	t4text
	.uleb128 0x7
	.long	.LASF1714
	.byte	0x52
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	t5text
	.uleb128 0x7
	.long	.LASF1715
	.byte	0x53
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	t6text
	.uleb128 0x7
	.long	.LASF1716
	.byte	0x55
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	finaletext
	.uleb128 0x7
	.long	.LASF1717
	.byte	0x56
	.byte	0x7
	.long	0x9f
	.uleb128 0x9
	.byte	0x3
	.quad	finaleflat
	.uleb128 0xa
	.long	0x370e
	.long	0x370e
	.uleb128 0xb
	.long	0x43
	.byte	0x3e
	.byte	0
	.uleb128 0x8
	.long	0x2e5f
	.uleb128 0x19
	.long	.LASF1718
	.byte	0x1
	.value	0x102
	.byte	0x11
	.long	0x36fe
	.uleb128 0x14
	.byte	0x10
	.byte	0x1
	.value	0x14e
	.long	0x3746
	.uleb128 0x4
	.long	.LASF1719
	.byte	0x1
	.value	0x150
	.byte	0xc
	.long	0x9f
	.byte	0
	.uleb128 0x4
	.long	.LASF26
	.byte	0x1
	.value	0x151
	.byte	0x10
	.long	0x25ba
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF1720
	.byte	0x1
	.value	0x152
	.byte	0x3
	.long	0x3720
	.uleb128 0xa
	.long	0x3746
	.long	0x3763
	.uleb128 0xb
	.long	0x43
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF1721
	.value	0x154
	.byte	0xc
	.long	0x3753
	.uleb128 0x9
	.byte	0x3
	.quad	castorder
	.uleb128 0x12
	.long	.LASF1722
	.value	0x16a
	.byte	0x6
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	castnum
	.uleb128 0x12
	.long	.LASF1723
	.value	0x16b
	.byte	0x6
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	casttics
	.uleb128 0x12
	.long	.LASF1724
	.value	0x16c
	.byte	0xa
	.long	0x2957
	.uleb128 0x9
	.byte	0x3
	.quad	caststate
	.uleb128 0x12
	.long	.LASF1725
	.value	0x16d
	.byte	0xa
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	castdeath
	.uleb128 0x12
	.long	.LASF1726
	.value	0x16e
	.byte	0x6
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	castframes
	.uleb128 0x12
	.long	.LASF1727
	.value	0x16f
	.byte	0x6
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	castonmelee
	.uleb128 0x12
	.long	.LASF1728
	.value	0x170
	.byte	0xa
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	castattacking
	.uleb128 0x20
	.long	.LASF1729
	.byte	0x14
	.value	0x16d
	.byte	0xc
	.long	0x8f
	.long	0x3830
	.uleb128 0x5
	.long	0x9f
	.uleb128 0x5
	.long	0xa4
	.uleb128 0x1d
	.byte	0
	.uleb128 0x2d
	.long	.LASF1731
	.byte	0x1
	.value	0x241
	.byte	0x6
	.long	0x3852
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x370e
	.byte	0
	.uleb128 0x18
	.long	.LASF1730
	.byte	0x15
	.byte	0x4e
	.byte	0x7
	.long	0x9d
	.long	0x386d
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1732
	.byte	0x16
	.byte	0x3b
	.byte	0x1
	.long	0x3884
	.uleb128 0x5
	.long	0x9d
	.uleb128 0x5
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1733
	.byte	0x11
	.byte	0x48
	.byte	0x1
	.long	0x38a5
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x370e
	.byte	0
	.uleb128 0x18
	.long	.LASF1734
	.byte	0x17
	.byte	0x7d
	.byte	0xc
	.long	0x8f
	.long	0x38bb
	.uleb128 0x5
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1735
	.byte	0x11
	.byte	0x6c
	.byte	0x1
	.long	0x38dc
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.byte	0
	.uleb128 0x18
	.long	.LASF1736
	.byte	0x18
	.byte	0x2b
	.byte	0xe
	.long	0x9d
	.long	0x38fc
	.uleb128 0x5
	.long	0x9d
	.uleb128 0x5
	.long	0x38fc
	.uleb128 0x5
	.long	0x218
	.byte	0
	.uleb128 0x8
	.long	0x3901
	.uleb128 0x2e
	.uleb128 0x18
	.long	.LASF1737
	.byte	0x15
	.byte	0x4f
	.byte	0x7
	.long	0x9d
	.long	0x391d
	.uleb128 0x5
	.long	0x9f
	.uleb128 0x5
	.long	0x8f
	.byte	0
	.uleb128 0x15
	.long	.LASF1738
	.byte	0x16
	.byte	0x4e
	.byte	0x6
	.long	0x392f
	.uleb128 0x5
	.long	0x8f
	.byte	0
	.uleb128 0x20
	.long	.LASF1739
	.byte	0x18
	.value	0x197
	.byte	0xf
	.long	0x218
	.long	0x3946
	.uleb128 0x5
	.long	0xa4
	.byte	0
	.uleb128 0x15
	.long	.LASF1740
	.byte	0x16
	.byte	0x53
	.byte	0x1
	.long	0x395d
	.uleb128 0x5
	.long	0x8f
	.uleb128 0x5
	.long	0x8f
	.byte	0
	.uleb128 0x21
	.long	.LASF1759
	.value	0x2bc
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF1745
	.value	0x284
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a01
	.uleb128 0xc
	.long	.LASF1742
	.value	0x286
	.byte	0xa
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.string	"x"
	.value	0x287
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"p1"
	.value	0x288
	.byte	0xe
	.long	0x370e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"p2"
	.value	0x289
	.byte	0xe
	.long	0x370e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF1719
	.value	0x28a
	.byte	0xa
	.long	0x3a01
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0xc
	.long	.LASF1743
	.value	0x28b
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.long	.LASF1744
	.value	0x28c
	.byte	0x10
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	laststage.0
	.byte	0
	.uleb128 0xa
	.long	0x4a
	.long	0x3a11
	.uleb128 0xb
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x2f
	.long	.LASF1746
	.byte	0x1
	.value	0x262
	.byte	0x1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aaa
	.uleb128 0x1b
	.string	"x"
	.value	0x263
	.byte	0x8
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.long	.LASF1747
	.value	0x264
	.byte	0xc
	.long	0x370e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"col"
	.value	0x265
	.byte	0x8
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.long	.LASF1748
	.value	0x267
	.byte	0xf
	.long	0x3aaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF1749
	.value	0x268
	.byte	0xb
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1750
	.value	0x269
	.byte	0xb
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF1751
	.value	0x26a
	.byte	0xb
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF1752
	.value	0x26b
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x8
	.long	0x2df2
	.uleb128 0x16
	.long	.LASF1753
	.value	0x243
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b18
	.uleb128 0xc
	.long	.LASF1754
	.value	0x245
	.byte	0x12
	.long	0x2ffa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1755
	.value	0x246
	.byte	0x14
	.long	0x2ef3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF1487
	.value	0x247
	.byte	0xb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF1488
	.value	0x248
	.byte	0xe
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF1747
	.value	0x249
	.byte	0xf
	.long	0x370e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF1756
	.value	0x20b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b8a
	.uleb128 0x22
	.long	.LASF1757
	.value	0x20b
	.byte	0x19
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"ch"
	.value	0x20d
	.byte	0xb
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.string	"c"
	.value	0x20e
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"cx"
	.value	0x20f
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"w"
	.value	0x210
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF1481
	.value	0x211
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x30
	.long	.LASF1763
	.byte	0x1
	.value	0x1f6
	.byte	0x9
	.long	0xc2
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bbc
	.uleb128 0x1b
	.string	"ev"
	.value	0x1f6
	.byte	0x23
	.long	0x3bbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	0x1ab
	.uleb128 0x16
	.long	.LASF1758
	.value	0x18b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c0d
	.uleb128 0xd
	.string	"st"
	.value	0x18d
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"sfx"
	.value	0x18e
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF1768
	.byte	0x1
	.value	0x1e5
	.byte	0x4
	.quad	.L66
	.byte	0
	.uleb128 0x21
	.long	.LASF1760
	.value	0x179
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF1761
	.value	0x105
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cd0
	.uleb128 0xd
	.string	"src"
	.value	0x107
	.byte	0xb
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF1750
	.value	0x108
	.byte	0xb
	.long	0x300f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"x"
	.value	0x10a
	.byte	0xa
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xd
	.string	"y"
	.value	0x10a
	.byte	0xc
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"w"
	.value	0x10a
	.byte	0xe
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF1752
	.value	0x10b
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.string	"ch"
	.value	0x10c
	.byte	0xb
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.string	"c"
	.value	0x10d
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.string	"cx"
	.value	0x10e
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"cy"
	.value	0x10f
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x32
	.long	.LASF1762
	.byte	0x1
	.byte	0xcf
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cfc
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.byte	0xd1
	.byte	0xa
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x34
	.long	.LASF1764
	.byte	0x1
	.byte	0xc3
	.byte	0x9
	.long	0xc2
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d2e
	.uleb128 0x35
	.long	.LASF1765
	.byte	0x1
	.byte	0xc3
	.byte	0x1f
	.long	0x3bbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1766
	.byte	0x1
	.byte	0x60
	.byte	0x6
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x16
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x31
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
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
	.uleb128 0x36
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
.LASF881:
	.string	"S_BSPI_RUN3"
.LASF882:
	.string	"S_BSPI_RUN4"
.LASF883:
	.string	"S_BSPI_RUN5"
.LASF884:
	.string	"S_BSPI_RUN6"
.LASF885:
	.string	"S_BSPI_RUN7"
.LASF886:
	.string	"S_BSPI_RUN8"
.LASF887:
	.string	"S_BSPI_RUN9"
.LASF1618:
	.string	"sfx_cybsit"
.LASF171:
	.string	"SPR_YSKU"
.LASF1584:
	.string	"sfx_sawup"
.LASF1442:
	.string	"attacker"
.LASF534:
	.string	"S_FIRE10"
.LASF535:
	.string	"S_FIRE11"
.LASF536:
	.string	"S_FIRE12"
.LASF537:
	.string	"S_FIRE13"
.LASF538:
	.string	"S_FIRE14"
.LASF539:
	.string	"S_FIRE15"
.LASF540:
	.string	"S_FIRE16"
.LASF541:
	.string	"S_FIRE17"
.LASF542:
	.string	"S_FIRE18"
.LASF543:
	.string	"S_FIRE19"
.LASF1357:
	.string	"MT_MISC84"
.LASF1290:
	.string	"MT_MISC20"
.LASF1102:
	.string	"S_MEGA2"
.LASF1103:
	.string	"S_MEGA3"
.LASF1104:
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
.LASF733:
	.string	"S_SARG_PAIN2"
.LASF1407:
	.string	"threshold"
.LASF62:
	.string	"wp_pistol"
.LASF212:
	.string	"SPR_COL1"
.LASF213:
	.string	"SPR_COL2"
.LASF214:
	.string	"SPR_COL3"
.LASF215:
	.string	"SPR_COL4"
.LASF224:
	.string	"SPR_COL5"
.LASF218:
	.string	"SPR_COL6"
.LASF1570:
	.string	"mus_read_m"
.LASF1680:
	.string	"sfx_skesit"
.LASF1661:
	.string	"sfx_tink"
.LASF544:
	.string	"S_FIRE20"
.LASF545:
	.string	"S_FIRE21"
.LASF546:
	.string	"S_FIRE22"
.LASF547:
	.string	"S_FIRE23"
.LASF548:
	.string	"S_FIRE24"
.LASF198:
	.string	"SPR_COLU"
.LASF550:
	.string	"S_FIRE26"
.LASF51:
	.string	"GS_FINALE"
.LASF552:
	.string	"S_FIRE28"
.LASF553:
	.string	"S_FIRE29"
.LASF1303:
	.string	"MT_MISC30"
.LASF1216:
	.string	"action"
.LASF1305:
	.string	"MT_MISC32"
.LASF1306:
	.string	"MT_MISC33"
.LASF895:
	.string	"S_BSPI_PAIN"
.LASF1308:
	.string	"MT_MISC35"
.LASF367:
	.string	"S_BFGEXP"
.LASF76:
	.string	"am_misl"
.LASF1311:
	.string	"MT_MISC38"
.LASF1312:
	.string	"MT_MISC39"
.LASF1453:
	.string	"floorpic"
.LASF897:
	.string	"S_BSPI_DIE1"
.LASF1495:
	.string	"NUMPSPRITES"
.LASF596:
	.string	"S_SKEL_RAISE2"
.LASF902:
	.string	"S_BSPI_DIE6"
.LASF1667:
	.string	"sfx_getpow"
.LASF1565:
	.string	"mus_tense"
.LASF1474:
	.string	"ST_POSITIVE"
.LASF1506:
	.string	"mus_e1m1"
.LASF1418:
	.string	"viewz"
.LASF1508:
	.string	"mus_e1m3"
.LASF1509:
	.string	"mus_e1m4"
.LASF1510:
	.string	"mus_e1m5"
.LASF1511:
	.string	"mus_e1m6"
.LASF1512:
	.string	"mus_e1m7"
.LASF1513:
	.string	"mus_e1m8"
.LASF1514:
	.string	"mus_e1m9"
.LASF793:
	.string	"S_BOSS_RAISE1"
.LASF794:
	.string	"S_BOSS_RAISE2"
.LASF1237:
	.string	"MT_HEAD"
.LASF795:
	.string	"S_BOSS_RAISE3"
.LASF554:
	.string	"S_FIRE30"
.LASF699:
	.string	"S_TROO_PAIN"
.LASF988:
	.string	"S_SSWV_DIE1"
.LASF798:
	.string	"S_BOSS_RAISE6"
.LASF990:
	.string	"S_SSWV_DIE3"
.LASF991:
	.string	"S_SSWV_DIE4"
.LASF992:
	.string	"S_SSWV_DIE5"
.LASF166:
	.string	"SPR_BKEY"
.LASF1502:
	.string	"firstspritelump"
.LASF810:
	.string	"S_BOS2_ATK1"
.LASF811:
	.string	"S_BOS2_ATK2"
.LASF812:
	.string	"S_BOS2_ATK3"
.LASF200:
	.string	"SPR_GOR1"
.LASF207:
	.string	"SPR_GOR2"
.LASF208:
	.string	"SPR_GOR3"
.LASF209:
	.string	"SPR_GOR4"
.LASF210:
	.string	"SPR_GOR5"
.LASF1315:
	.string	"MT_MISC42"
.LASF1316:
	.string	"MT_MISC43"
.LASF567:
	.string	"S_SKEL_RUN1"
.LASF568:
	.string	"S_SKEL_RUN2"
.LASF569:
	.string	"S_SKEL_RUN3"
.LASF570:
	.string	"S_SKEL_RUN4"
.LASF571:
	.string	"S_SKEL_RUN5"
.LASF572:
	.string	"S_SKEL_RUN6"
.LASF573:
	.string	"S_SKEL_RUN7"
.LASF574:
	.string	"S_SKEL_RUN8"
.LASF575:
	.string	"S_SKEL_RUN9"
.LASF65:
	.string	"wp_missile"
.LASF40:
	.string	"ga_screenshot"
.LASF1053:
	.string	"S_BEXP2"
.LASF1365:
	.string	"seestate"
.LASF1503:
	.string	"sprites"
.LASF1744:
	.string	"laststage"
.LASF748:
	.string	"S_HEAD_ATK1"
.LASF749:
	.string	"S_HEAD_ATK2"
.LASF750:
	.string	"S_HEAD_ATK3"
.LASF1468:
	.string	"slopetype"
.LASF1002:
	.string	"S_SSWV_RAISE1"
.LASF1003:
	.string	"S_SSWV_RAISE2"
.LASF1004:
	.string	"S_SSWV_RAISE3"
.LASF1005:
	.string	"S_SSWV_RAISE4"
.LASF1006:
	.string	"S_SSWV_RAISE5"
.LASF101:
	.string	"angle"
.LASF1232:
	.string	"MT_FATSHOT"
.LASF186:
	.string	"SPR_CELL"
.LASF187:
	.string	"SPR_CELP"
.LASF1168:
	.string	"S_HEARTCOL"
.LASF1414:
	.string	"numlines"
.LASF1085:
	.string	"S_MEDI"
.LASF1092:
	.string	"S_PINV"
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
.LASF1182:
	.string	"S_BTORCHSHRT"
.LASF303:
	.string	"S_MISSILEUP"
.LASF1330:
	.string	"MT_MISC57"
.LASF1331:
	.string	"MT_MISC58"
.LASF1332:
	.string	"MT_MISC59"
.LASF480:
	.string	"S_SPOS_RAISE1"
.LASF1578:
	.string	"sfx_dshtgn"
.LASF274:
	.string	"S_SGUNFLASH1"
.LASF275:
	.string	"S_SGUNFLASH2"
.LASF822:
	.string	"S_BOS2_RAISE1"
.LASF823:
	.string	"S_BOS2_RAISE2"
.LASF824:
	.string	"S_BOS2_RAISE3"
.LASF825:
	.string	"S_BOS2_RAISE4"
.LASF826:
	.string	"S_BOS2_RAISE5"
.LASF827:
	.string	"S_BOS2_RAISE6"
.LASF828:
	.string	"S_BOS2_RAISE7"
.LASF587:
	.string	"S_SKEL_PAIN"
.LASF1074:
	.string	"S_RKEY"
.LASF95:
	.string	"next"
.LASF38:
	.string	"ga_victory"
.LASF1732:
	.string	"S_StartSound"
.LASF1590:
	.string	"sfx_firsht"
.LASF1478:
	.string	"length"
.LASF256:
	.string	"S_PISTOLUP"
.LASF942:
	.string	"S_CYBER_DIE8"
.LASF1595:
	.string	"sfx_dorcls"
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
.LASF371:
	.string	"S_EXPLODE1"
.LASF372:
	.string	"S_EXPLODE2"
.LASF373:
	.string	"S_EXPLODE3"
.LASF1673:
	.string	"sfx_manatk"
.LASF562:
	.string	"S_TRACEEXP1"
.LASF563:
	.string	"S_TRACEEXP2"
.LASF564:
	.string	"S_TRACEEXP3"
.LASF950:
	.string	"S_PAIN_RUN5"
.LASF1052:
	.string	"S_BEXP"
.LASF951:
	.string	"S_PAIN_RUN6"
.LASF1443:
	.string	"extralight"
.LASF1169:
	.string	"S_HEARTCOL2"
.LASF348:
	.string	"S_RBALLX1"
.LASF1581:
	.string	"sfx_dbload"
.LASF1379:
	.string	"height"
.LASF1264:
	.string	"MT_TELEPORTMAN"
.LASF49:
	.string	"GS_LEVEL"
.LASF1343:
	.string	"MT_MISC70"
.LASF131:
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
.LASF1175:
	.string	"S_GREENTORCH2"
.LASF1176:
	.string	"S_GREENTORCH3"
.LASF1177:
	.string	"S_GREENTORCH4"
.LASF1016:
	.string	"S_COMMKEEN9"
.LASF665:
	.string	"S_CPOS_PAIN2"
.LASF888:
	.string	"S_BSPI_RUN10"
.LASF889:
	.string	"S_BSPI_RUN11"
.LASF890:
	.string	"S_BSPI_RUN12"
.LASF972:
	.string	"S_SSWV_RUN1"
.LASF973:
	.string	"S_SSWV_RUN2"
.LASF974:
	.string	"S_SSWV_RUN3"
.LASF975:
	.string	"S_SSWV_RUN4"
.LASF976:
	.string	"S_SSWV_RUN5"
.LASF977:
	.string	"S_SSWV_RUN6"
.LASF978:
	.string	"S_SSWV_RUN7"
.LASF979:
	.string	"S_SSWV_RUN8"
.LASF1157:
	.string	"S_SKULLCOL"
.LASF1535:
	.string	"mus_bunny"
.LASF33:
	.string	"ga_newgame"
.LASF1231:
	.string	"MT_FATSO"
.LASF701:
	.string	"S_TROO_DIE1"
.LASF702:
	.string	"S_TROO_DIE2"
.LASF703:
	.string	"S_TROO_DIE3"
.LASF704:
	.string	"S_TROO_DIE4"
.LASF705:
	.string	"S_TROO_DIE5"
.LASF43:
	.string	"shareware"
.LASF1082:
	.string	"S_YSKULL"
.LASF1083:
	.string	"S_YSKULL2"
.LASF184:
	.string	"SPR_ROCK"
.LASF1256:
	.string	"MT_ROCKET"
.LASF1354:
	.string	"MT_MISC81"
.LASF1355:
	.string	"MT_MISC82"
.LASF1356:
	.string	"MT_MISC83"
.LASF660:
	.string	"S_CPOS_ATK1"
.LASF661:
	.string	"S_CPOS_ATK2"
.LASF662:
	.string	"S_CPOS_ATK3"
.LASF663:
	.string	"S_CPOS_ATK4"
.LASF1223:
	.string	"MT_PLAYER"
.LASF196:
	.string	"SPR_SHOT"
.LASF389:
	.string	"S_IFOG2"
.LASF390:
	.string	"S_IFOG3"
.LASF391:
	.string	"S_IFOG4"
.LASF392:
	.string	"S_IFOG5"
.LASF1539:
	.string	"mus_stalks"
.LASF125:
	.string	"SPR_PLSE"
.LASF117:
	.string	"SPR_PLSF"
.LASF116:
	.string	"SPR_PLSG"
.LASF785:
	.string	"S_BOSS_PAIN2"
.LASF485:
	.string	"S_VILE_STND"
.LASF1013:
	.string	"S_COMMKEEN6"
.LASF1014:
	.string	"S_COMMKEEN7"
.LASF1015:
	.string	"S_COMMKEEN8"
.LASF124:
	.string	"SPR_PLSS"
.LASF864:
	.string	"S_SPID_PAIN2"
.LASF1608:
	.string	"sfx_oof"
.LASF1380:
	.string	"mass"
.LASF1649:
	.string	"sfx_posact"
.LASF1724:
	.string	"caststate"
.LASF237:
	.string	"SPR_POB1"
.LASF238:
	.string	"SPR_POB2"
.LASF1086:
	.string	"S_SOUL"
.LASF1640:
	.string	"sfx_skldth"
.LASF1096:
	.string	"S_PSTR"
.LASF1749:
	.string	"source"
.LASF928:
	.string	"S_CYBER_ATK1"
.LASF929:
	.string	"S_CYBER_ATK2"
.LASF930:
	.string	"S_CYBER_ATK3"
.LASF931:
	.string	"S_CYBER_ATK4"
.LASF932:
	.string	"S_CYBER_ATK5"
.LASF933:
	.string	"S_CYBER_ATK6"
.LASF1736:
	.string	"memcpy"
.LASF1123:
	.string	"S_BFUG"
.LASF163:
	.string	"SPR_FCAN"
.LASF606:
	.string	"S_FATT_STND"
.LASF1043:
	.string	"S_BRAINEXPLODE1"
.LASF1044:
	.string	"S_BRAINEXPLODE2"
.LASF1045:
	.string	"S_BRAINEXPLODE3"
.LASF327:
	.string	"S_BFGUP"
.LASF1515:
	.string	"mus_e2m1"
.LASF1516:
	.string	"mus_e2m2"
.LASF1517:
	.string	"mus_e2m3"
.LASF1518:
	.string	"mus_e2m4"
.LASF1519:
	.string	"mus_e2m5"
.LASF1520:
	.string	"mus_e2m6"
.LASF168:
	.string	"SPR_YKEY"
.LASF1522:
	.string	"mus_e2m8"
.LASF1523:
	.string	"mus_e2m9"
.LASF714:
	.string	"S_TROO_RAISE1"
.LASF715:
	.string	"S_TROO_RAISE2"
.LASF716:
	.string	"S_TROO_RAISE3"
.LASF717:
	.string	"S_TROO_RAISE4"
.LASF718:
	.string	"S_TROO_RAISE5"
.LASF1730:
	.string	"W_CacheLumpNum"
.LASF1127:
	.string	"S_PLAS"
.LASF1009:
	.string	"S_COMMKEEN2"
.LASF1010:
	.string	"S_COMMKEEN3"
.LASF1011:
	.string	"S_COMMKEEN4"
.LASF1012:
	.string	"S_COMMKEEN5"
.LASF393:
	.string	"S_PLAY"
.LASF959:
	.string	"S_PAIN_DIE2"
.LASF960:
	.string	"S_PAIN_DIE3"
.LASF961:
	.string	"S_PAIN_DIE4"
.LASF962:
	.string	"S_PAIN_DIE5"
.LASF963:
	.string	"S_PAIN_DIE6"
.LASF1234:
	.string	"MT_TROOP"
.LASF514:
	.string	"S_VILE_PAIN2"
.LASF642:
	.string	"S_FATT_RAISE1"
.LASF66:
	.string	"wp_plasma"
.LASF644:
	.string	"S_FATT_RAISE3"
.LASF645:
	.string	"S_FATT_RAISE4"
.LASF646:
	.string	"S_FATT_RAISE5"
.LASF647:
	.string	"S_FATT_RAISE6"
.LASF648:
	.string	"S_FATT_RAISE7"
.LASF649:
	.string	"S_FATT_RAISE8"
.LASF358:
	.string	"S_ROCKET"
.LASF1255:
	.string	"MT_HEADSHOT"
.LASF1463:
	.string	"linecount"
.LASF1466:
	.string	"sidenum"
.LASF911:
	.string	"S_ARACH_PLAZ"
.LASF1150:
	.string	"S_STALAGTITE"
.LASF752:
	.string	"S_HEAD_PAIN2"
.LASF753:
	.string	"S_HEAD_PAIN3"
.LASF13:
	.string	"byte"
.LASF59:
	.string	"it_redskull"
.LASF1650:
	.string	"sfx_bgact"
.LASF1262:
	.string	"MT_TFOG"
.LASF461:
	.string	"S_SPOS_ATK1"
.LASF462:
	.string	"S_SPOS_ATK2"
.LASF463:
	.string	"S_SPOS_ATK3"
.LASF1727:
	.string	"castonmelee"
.LASF398:
	.string	"S_PLAY_ATK1"
.LASF399:
	.string	"S_PLAY_ATK2"
.LASF151:
	.string	"SPR_APLS"
.LASF835:
	.string	"S_SKULL_ATK3"
.LASF1728:
	.string	"castattacking"
.LASF1435:
	.string	"refire"
.LASF30:
	.string	"event_t"
.LASF1541:
	.string	"mus_betwee"
.LASF1179:
	.string	"S_REDTORCH2"
.LASF1180:
	.string	"S_REDTORCH3"
.LASF1181:
	.string	"S_REDTORCH4"
.LASF688:
	.string	"S_TROO_RUN1"
.LASF689:
	.string	"S_TROO_RUN2"
.LASF690:
	.string	"S_TROO_RUN3"
.LASF691:
	.string	"S_TROO_RUN4"
.LASF692:
	.string	"S_TROO_RUN5"
.LASF693:
	.string	"S_TROO_RUN6"
.LASF694:
	.string	"S_TROO_RUN7"
.LASF695:
	.string	"S_TROO_RUN8"
.LASF1674:
	.string	"sfx_mandth"
.LASF22:
	.string	"ev_keyup"
.LASF142:
	.string	"SPR_CPOS"
.LASF603:
	.string	"S_FATSHOTX1"
.LASF604:
	.string	"S_FATSHOTX2"
.LASF605:
	.string	"S_FATSHOTX3"
.LASF683:
	.string	"S_CPOS_RAISE5"
.LASF684:
	.string	"S_CPOS_RAISE6"
.LASF685:
	.string	"S_CPOS_RAISE7"
.LASF61:
	.string	"wp_fist"
.LASF1373:
	.string	"missilestate"
.LASF172:
	.string	"SPR_STIM"
.LASF1491:
	.string	"spriteframes"
.LASF719:
	.string	"S_SARG_STND"
.LASF944:
	.string	"S_CYBER_DIE10"
.LASF122:
	.string	"SPR_BAL1"
.LASF123:
	.string	"SPR_BAL2"
.LASF145:
	.string	"SPR_BAL7"
.LASF1401:
	.string	"info"
.LASF1644:
	.string	"sfx_bspdth"
.LASF1138:
	.string	"S_HEADSONSTICK"
.LASF1679:
	.string	"sfx_skeact"
.LASF1396:
	.string	"ceilingz"
.LASF1763:
	.string	"F_CastResponder"
.LASF1675:
	.string	"sfx_sssit"
.LASF595:
	.string	"S_SKEL_RAISE1"
.LASF110:
	.string	"SPR_SHT2"
.LASF1708:
	.string	"p5text"
.LASF249:
	.string	"S_PUNCH1"
.LASF250:
	.string	"S_PUNCH2"
.LASF251:
	.string	"S_PUNCH3"
.LASF252:
	.string	"S_PUNCH4"
.LASF253:
	.string	"S_PUNCH5"
.LASF612:
	.string	"S_FATT_RUN5"
.LASF248:
	.string	"S_PUNCHUP"
.LASF1725:
	.string	"castdeath"
.LASF865:
	.string	"S_SPID_DIE1"
.LASF616:
	.string	"S_FATT_RUN9"
.LASF867:
	.string	"S_SPID_DIE3"
.LASF868:
	.string	"S_SPID_DIE4"
.LASF109:
	.string	"SPR_SHTF"
.LASF105:
	.string	"SPR_SHTG"
.LASF387:
	.string	"S_IFOG01"
.LASF388:
	.string	"S_IFOG02"
.LASF873:
	.string	"S_SPID_DIE9"
.LASF1726:
	.string	"castframes"
.LASF1115:
	.string	"S_AMMO"
.LASF1572:
	.string	"mus_dm2int"
.LASF1558:
	.string	"mus_count2"
.LASF23:
	.string	"ev_mouse"
.LASF77:
	.string	"NUMAMMO"
.LASF946:
	.string	"S_PAIN_RUN1"
.LASF947:
	.string	"S_PAIN_RUN2"
.LASF948:
	.string	"S_PAIN_RUN3"
.LASF949:
	.string	"S_PAIN_RUN4"
.LASF231:
	.string	"SPR_HDB1"
.LASF232:
	.string	"SPR_HDB2"
.LASF233:
	.string	"SPR_HDB3"
.LASF234:
	.string	"SPR_HDB4"
.LASF235:
	.string	"SPR_HDB5"
.LASF236:
	.string	"SPR_HDB6"
.LASF1765:
	.string	"event"
.LASF1224:
	.string	"MT_POSSESSED"
.LASF281:
	.string	"S_DSGUN3"
.LASF282:
	.string	"S_DSGUN4"
.LASF26:
	.string	"type"
.LASF301:
	.string	"S_MISSILE"
.LASF1739:
	.string	"strlen"
.LASF1571:
	.string	"mus_dm2ttl"
.LASF1129:
	.string	"S_SHOT2"
.LASF1766:
	.string	"F_StartFinale"
.LASF1196:
	.string	"S_HANGTLOOKDN"
.LASF1404:
	.string	"movedir"
.LASF673:
	.string	"S_CPOS_XDIE1"
.LASF1729:
	.string	"sprintf"
.LASF92:
	.string	"actionf_t"
.LASF87:
	.string	"actionf_v"
.LASF192:
	.string	"SPR_MGUN"
.LASF1236:
	.string	"MT_SHADOWS"
.LASF576:
	.string	"S_SKEL_RUN10"
.LASF577:
	.string	"S_SKEL_RUN11"
.LASF578:
	.string	"S_SKEL_RUN12"
.LASF244:
	.string	"S_NULL"
.LASF786:
	.string	"S_BOSS_DIE1"
.LASF787:
	.string	"S_BOSS_DIE2"
.LASF788:
	.string	"S_BOSS_DIE3"
.LASF789:
	.string	"S_BOSS_DIE4"
.LASF790:
	.string	"S_BOSS_DIE5"
.LASF791:
	.string	"S_BOSS_DIE6"
.LASF792:
	.string	"S_BOSS_DIE7"
.LASF1764:
	.string	"F_Responder"
.LASF956:
	.string	"S_PAIN_PAIN"
.LASF325:
	.string	"S_BFG"
.LASF1371:
	.string	"painsound"
.LASF1524:
	.string	"mus_e3m1"
.LASF1501:
	.string	"player_t"
.LASF1456:
	.string	"special"
.LASF971:
	.string	"S_SSWV_STND2"
.LASF1528:
	.string	"mus_e3m5"
.LASF1529:
	.string	"mus_e3m6"
.LASF1530:
	.string	"mus_e3m7"
.LASF1531:
	.string	"mus_e3m8"
.LASF1532:
	.string	"mus_e3m9"
.LASF1761:
	.string	"F_TextWrite"
.LASF193:
	.string	"SPR_CSAW"
.LASF1106:
	.string	"S_PMAP"
.LASF1553:
	.string	"mus_dead2"
.LASF1112:
	.string	"S_PVIS"
.LASF326:
	.string	"S_BFGDOWN"
.LASF1622:
	.string	"sfx_vilsit"
.LASF1248:
	.string	"MT_BOSSBRAIN"
.LASF139:
	.string	"SPR_SKEL"
.LASF321:
	.string	"S_PLASMA1"
.LASF322:
	.string	"S_PLASMA2"
.LASF1755:
	.string	"sprframe"
.LASF1186:
	.string	"S_GTORCHSHRT"
.LASF1609:
	.string	"sfx_telept"
.LASF1415:
	.string	"firstline"
.LASF1120:
	.string	"S_SHEL"
.LASF877:
	.string	"S_BSPI_STND2"
.LASF4:
	.string	"unsigned char"
.LASF1643:
	.string	"sfx_spidth"
.LASF137:
	.string	"SPR_FATB"
.LASF242:
	.string	"NUMSPRITES"
.LASF143:
	.string	"SPR_SARG"
.LASF1521:
	.string	"mus_e2m7"
.LASF1705:
	.string	"p2text"
.LASF360:
	.string	"S_BFGSHOT2"
.LASF141:
	.string	"SPR_FATT"
.LASF1630:
	.string	"sfx_skeswg"
.LASF1087:
	.string	"S_SOUL2"
.LASF1088:
	.string	"S_SOUL3"
.LASF1089:
	.string	"S_SOUL4"
.LASF1090:
	.string	"S_SOUL5"
.LASF1091:
	.string	"S_SOUL6"
.LASF847:
	.string	"S_SPID_RUN1"
.LASF848:
	.string	"S_SPID_RUN2"
.LASF849:
	.string	"S_SPID_RUN3"
.LASF850:
	.string	"S_SPID_RUN4"
.LASF851:
	.string	"S_SPID_RUN5"
.LASF852:
	.string	"S_SPID_RUN6"
.LASF853:
	.string	"S_SPID_RUN7"
.LASF854:
	.string	"S_SPID_RUN8"
.LASF98:
	.string	"float"
.LASF1054:
	.string	"S_BEXP3"
.LASF1055:
	.string	"S_BEXP4"
.LASF1588:
	.string	"sfx_rlaunc"
.LASF1143:
	.string	"S_DEADSTICK"
.LASF1444:
	.string	"fixedcolormap"
.LASF1429:
	.string	"weaponowned"
.LASF1265:
	.string	"MT_EXTRABFG"
.LASF433:
	.string	"S_POSS_DIE1"
.LASF434:
	.string	"S_POSS_DIE2"
.LASF435:
	.string	"S_POSS_DIE3"
.LASF436:
	.string	"S_POSS_DIE4"
.LASF437:
	.string	"S_POSS_DIE5"
.LASF263:
	.string	"S_SGUNDOWN"
.LASF1677:
	.string	"sfx_keenpn"
.LASF112:
	.string	"SPR_CHGF"
.LASF111:
	.string	"SPR_CHGG"
.LASF656:
	.string	"S_CPOS_RUN5"
.LASF915:
	.string	"S_ARACH_PLEX3"
.LASF657:
	.string	"S_CPOS_RUN6"
.LASF917:
	.string	"S_ARACH_PLEX5"
.LASF658:
	.string	"S_CPOS_RUN7"
.LASF1406:
	.string	"target"
.LASF222:
	.string	"SPR_CEYE"
.LASF1472:
	.string	"ST_HORIZONTAL"
.LASF964:
	.string	"S_PAIN_RAISE1"
.LASF965:
	.string	"S_PAIN_RAISE2"
.LASF966:
	.string	"S_PAIN_RAISE3"
.LASF967:
	.string	"S_PAIN_RAISE4"
.LASF968:
	.string	"S_PAIN_RAISE5"
.LASF601:
	.string	"S_FATSHOT1"
.LASF602:
	.string	"S_FATSHOT2"
.LASF1745:
	.string	"F_BunnyScroll"
.LASF1719:
	.string	"name"
.LASF1582:
	.string	"sfx_plasma"
.LASF1473:
	.string	"ST_VERTICAL"
.LASF179:
	.string	"SPR_SUIT"
.LASF829:
	.string	"S_SKULL_STND"
.LASF1752:
	.string	"count"
.LASF1574:
	.string	"sfx_None"
.LASF1717:
	.string	"finaleflat"
.LASF863:
	.string	"S_SPID_PAIN"
.LASF1360:
	.string	"NUMMOBJTYPES"
.LASF1693:
	.string	"finalecount"
.LASF161:
	.string	"SPR_BAR1"
.LASF276:
	.string	"S_DSGUN"
.LASF1155:
	.string	"S_CANDLESTIK"
.LASF83:
	.string	"pw_allmap"
.LASF1211:
	.string	"NUMSTATES"
.LASF855:
	.string	"S_SPID_RUN9"
.LASF341:
	.string	"S_TBALL1"
.LASF342:
	.string	"S_TBALL2"
.LASF555:
	.string	"S_SMOKE1"
.LASF556:
	.string	"S_SMOKE2"
.LASF557:
	.string	"S_SMOKE3"
.LASF558:
	.string	"S_SMOKE4"
.LASF559:
	.string	"S_SMOKE5"
.LASF778:
	.string	"S_BOSS_RUN6"
.LASF779:
	.string	"S_BOSS_RUN7"
.LASF780:
	.string	"S_BOSS_RUN8"
.LASF144:
	.string	"SPR_HEAD"
.LASF1533:
	.string	"mus_inter"
.LASF1393:
	.string	"bprev"
.LASF205:
	.string	"SPR_POL1"
.LASF201:
	.string	"SPR_POL2"
.LASF204:
	.string	"SPR_POL3"
.LASF203:
	.string	"SPR_POL4"
.LASF202:
	.string	"SPR_POL5"
.LASF206:
	.string	"SPR_POL6"
.LASF1050:
	.string	"S_BAR1"
.LASF1647:
	.string	"sfx_pedth"
.LASF1606:
	.string	"sfx_itemup"
.LASF1222:
	.string	"states"
.LASF1266:
	.string	"MT_MISC0"
.LASF1136:
	.string	"S_DEADTORSO"
.LASF278:
	.string	"S_DSGUNUP"
.LASF1669:
	.string	"sfx_boscub"
.LASF1631:
	.string	"sfx_pldeth"
.LASF1363:
	.string	"spawnstate"
.LASF687:
	.string	"S_TROO_STND2"
.LASF1748:
	.string	"column"
.LASF1207:
	.string	"S_TECH2LAMP"
.LASF1388:
	.string	"mobj_s"
.LASF1594:
	.string	"sfx_doropn"
.LASF1252:
	.string	"MT_SPAWNFIRE"
.LASF1227:
	.string	"MT_FIRE"
.LASF1486:
	.string	"rotate"
.LASF1217:
	.string	"nextstate"
.LASF1703:
	.string	"c6text"
.LASF1756:
	.string	"F_CastPrint"
.LASF1686:
	.string	"gamemap"
.LASF784:
	.string	"S_BOSS_PAIN"
.LASF155:
	.string	"SPR_SSWV"
.LASF1567:
	.string	"mus_openin"
.LASF36:
	.string	"ga_playdemo"
.LASF346:
	.string	"S_RBALL1"
.LASF347:
	.string	"S_RBALL2"
.LASF1397:
	.string	"momx"
.LASF1151:
	.string	"S_TALLGRNCOL"
.LASF1701:
	.string	"c4text"
.LASF1710:
	.string	"t1text"
.LASF1409:
	.string	"lastlook"
.LASF1641:
	.string	"sfx_brsdth"
.LASF1549:
	.string	"mus_theda2"
.LASF1500:
	.string	"playerstate_t"
.LASF1140:
	.string	"S_HEADONASTICK"
.LASF420:
	.string	"S_POSS_RUN1"
.LASF362:
	.string	"S_BFGLAND2"
.LASF363:
	.string	"S_BFGLAND3"
.LASF364:
	.string	"S_BFGLAND4"
.LASF365:
	.string	"S_BFGLAND5"
.LASF366:
	.string	"S_BFGLAND6"
.LASF426:
	.string	"S_POSS_RUN7"
.LASF427:
	.string	"S_POSS_RUN8"
.LASF1480:
	.string	"column_t"
.LASF409:
	.string	"S_PLAY_XDIE1"
.LASF410:
	.string	"S_PLAY_XDIE2"
.LASF411:
	.string	"S_PLAY_XDIE3"
.LASF412:
	.string	"S_PLAY_XDIE4"
.LASF413:
	.string	"S_PLAY_XDIE5"
.LASF414:
	.string	"S_PLAY_XDIE6"
.LASF415:
	.string	"S_PLAY_XDIE7"
.LASF416:
	.string	"S_PLAY_XDIE8"
.LASF417:
	.string	"S_PLAY_XDIE9"
.LASF815:
	.string	"S_BOS2_DIE1"
.LASF816:
	.string	"S_BOS2_DIE2"
.LASF817:
	.string	"S_BOS2_DIE3"
.LASF818:
	.string	"S_BOS2_DIE4"
.LASF819:
	.string	"S_BOS2_DIE5"
.LASF820:
	.string	"S_BOS2_DIE6"
.LASF821:
	.string	"S_BOS2_DIE7"
.LASF1383:
	.string	"flags"
.LASF741:
	.string	"S_SARG_RAISE2"
.LASF742:
	.string	"S_SARG_RAISE3"
.LASF385:
	.string	"S_TFOG10"
.LASF743:
	.string	"S_SARG_RAISE4"
.LASF1559:
	.string	"mus_ddtbl3"
.LASF438:
	.string	"S_POSS_XDIE1"
.LASF439:
	.string	"S_POSS_XDIE2"
.LASF440:
	.string	"S_POSS_XDIE3"
.LASF441:
	.string	"S_POSS_XDIE4"
.LASF442:
	.string	"S_POSS_XDIE5"
.LASF443:
	.string	"S_POSS_XDIE6"
.LASF444:
	.string	"S_POSS_XDIE7"
.LASF73:
	.string	"am_clip"
.LASF446:
	.string	"S_POSS_XDIE9"
.LASF1139:
	.string	"S_GIBS"
.LASF754:
	.string	"S_HEAD_DIE1"
.LASF755:
	.string	"S_HEAD_DIE2"
.LASF756:
	.string	"S_HEAD_DIE3"
.LASF757:
	.string	"S_HEAD_DIE4"
.LASF758:
	.string	"S_HEAD_DIE5"
.LASF759:
	.string	"S_HEAD_DIE6"
.LASF607:
	.string	"S_FATT_STND2"
.LASF1130:
	.string	"S_COLU"
.LASF257:
	.string	"S_PISTOL1"
.LASF258:
	.string	"S_PISTOL2"
.LASF259:
	.string	"S_PISTOL3"
.LASF260:
	.string	"S_PISTOL4"
.LASF34:
	.string	"ga_loadgame"
.LASF597:
	.string	"S_SKEL_RAISE3"
.LASF598:
	.string	"S_SKEL_RAISE4"
.LASF599:
	.string	"S_SKEL_RAISE5"
.LASF600:
	.string	"S_SKEL_RAISE6"
.LASF1159:
	.string	"S_BIGTREE"
.LASF1475:
	.string	"ST_NEGATIVE"
.LASF1069:
	.string	"S_BON2C"
.LASF1070:
	.string	"S_BON2D"
.LASF1694:
	.string	"e1text"
.LASF375:
	.string	"S_TFOG01"
.LASF376:
	.string	"S_TFOG02"
.LASF194:
	.string	"SPR_LAUN"
.LASF431:
	.string	"S_POSS_PAIN"
.LASF725:
	.string	"S_SARG_RUN5"
.LASF726:
	.string	"S_SARG_RUN6"
.LASF1545:
	.string	"mus_ddtblu"
.LASF1230:
	.string	"MT_SMOKE"
.LASF1244:
	.string	"MT_CYBORG"
.LASF1381:
	.string	"damage"
.LASF471:
	.string	"S_SPOS_XDIE1"
.LASF472:
	.string	"S_SPOS_XDIE2"
.LASF473:
	.string	"S_SPOS_XDIE3"
.LASF474:
	.string	"S_SPOS_XDIE4"
.LASF475:
	.string	"S_SPOS_XDIE5"
.LASF476:
	.string	"S_SPOS_XDIE6"
.LASF477:
	.string	"S_SPOS_XDIE7"
.LASF478:
	.string	"S_SPOS_XDIE8"
.LASF479:
	.string	"S_SPOS_XDIE9"
.LASF1602:
	.string	"sfx_vipain"
.LASF42:
	.string	"size_t"
.LASF1208:
	.string	"S_TECH2LAMP2"
.LASF1448:
	.string	"mobj_t"
.LASF1072:
	.string	"S_BKEY"
.LASF81:
	.string	"pw_invisibility"
.LASF159:
	.string	"SPR_ARM1"
.LASF160:
	.string	"SPR_ARM2"
.LASF1226:
	.string	"MT_VILE"
.LASF1593:
	.string	"sfx_pstop"
.LASF57:
	.string	"it_blueskull"
.LASF1460:
	.string	"soundorg"
.LASF1743:
	.string	"stage"
.LASF319:
	.string	"S_PLASMADOWN"
.LASF1760:
	.string	"F_StartCast"
.LASF631:
	.string	"S_FATT_PAIN2"
.LASF1678:
	.string	"sfx_keendt"
.LASF1029:
	.string	"S_BRAINEYESEE"
.LASF1476:
	.string	"slopetype_t"
.LASF566:
	.string	"S_SKEL_STND2"
.LASF919:
	.string	"S_CYBER_STND2"
.LASF1220:
	.string	"state_t"
.LASF763:
	.string	"S_HEAD_RAISE4"
.LASF989:
	.string	"S_SSWV_DIE2"
.LASF44:
	.string	"registered"
.LASF1653:
	.string	"sfx_bspwlk"
.LASF445:
	.string	"S_POSS_XDIE8"
.LASF1119:
	.string	"S_CELP"
.LASF1161:
	.string	"S_EVILEYE"
.LASF1187:
	.string	"S_GTORCHSHRT2"
.LASF1188:
	.string	"S_GTORCHSHRT3"
.LASF1189:
	.string	"S_GTORCHSHRT4"
.LASF766:
	.string	"S_BRBALL1"
.LASF767:
	.string	"S_BRBALL2"
.LASF1419:
	.string	"viewheight"
.LASF1698:
	.string	"c1text"
.LASF1392:
	.string	"bnext"
.LASF1221:
	.string	"gameaction"
.LASF1492:
	.string	"spritedef_t"
.LASF1672:
	.string	"sfx_bosdth"
.LASF620:
	.string	"S_FATT_ATK1"
.LASF153:
	.string	"SPR_CYBR"
.LASF621:
	.string	"S_FATT_ATK2"
.LASF524:
	.string	"S_VILE_DIE10"
.LASF114:
	.string	"SPR_MISF"
.LASF113:
	.string	"SPR_MISG"
.LASF126:
	.string	"SPR_MISL"
.LASF1078:
	.string	"S_BSKULL"
.LASF157:
	.string	"SPR_BBRN"
.LASF499:
	.string	"S_VILE_ATK1"
.LASF500:
	.string	"S_VILE_ATK2"
.LASF501:
	.string	"S_VILE_ATK3"
.LASF502:
	.string	"S_VILE_ATK4"
.LASF503:
	.string	"S_VILE_ATK5"
.LASF504:
	.string	"S_VILE_ATK6"
.LASF505:
	.string	"S_VILE_ATK7"
.LASF246:
	.string	"S_PUNCH"
.LASF507:
	.string	"S_VILE_ATK9"
.LASF228:
	.string	"SPR_SMBT"
.LASF1658:
	.string	"sfx_hoof"
.LASF1544:
	.string	"mus_shawn"
.LASF802:
	.string	"S_BOS2_RUN1"
.LASF803:
	.string	"S_BOS2_RUN2"
.LASF804:
	.string	"S_BOS2_RUN3"
.LASF805:
	.string	"S_BOS2_RUN4"
.LASF806:
	.string	"S_BOS2_RUN5"
.LASF807:
	.string	"S_BOS2_RUN6"
.LASF808:
	.string	"S_BOS2_RUN7"
.LASF809:
	.string	"S_BOS2_RUN8"
.LASF1455:
	.string	"lightlevel"
.LASF219:
	.string	"SPR_TRE1"
.LASF220:
	.string	"SPR_TRE2"
.LASF876:
	.string	"S_BSPI_STND"
.LASF1589:
	.string	"sfx_rxplod"
.LASF1372:
	.string	"meleestate"
.LASF1430:
	.string	"ammo"
.LASF666:
	.string	"S_CPOS_DIE1"
.LASF227:
	.string	"SPR_TRED"
.LASF120:
	.string	"SPR_BLUD"
.LASF622:
	.string	"S_FATT_ATK3"
.LASF623:
	.string	"S_FATT_ATK4"
.LASF624:
	.string	"S_FATT_ATK5"
.LASF625:
	.string	"S_FATT_ATK6"
.LASF626:
	.string	"S_FATT_ATK7"
.LASF627:
	.string	"S_FATT_ATK8"
.LASF628:
	.string	"S_FATT_ATK9"
.LASF130:
	.string	"SPR_TFOG"
.LASF334:
	.string	"S_BLOOD1"
.LASF335:
	.string	"S_BLOOD2"
.LASF336:
	.string	"S_BLOOD3"
.LASF1547:
	.string	"mus_dead"
.LASF1218:
	.string	"misc1"
.LASF1219:
	.string	"misc2"
.LASF1555:
	.string	"mus_romero"
.LASF1757:
	.string	"text"
.LASF1600:
	.string	"sfx_dmpain"
.LASF16:
	.string	"angleturn"
.LASF1126:
	.string	"S_LAUN"
.LASF386:
	.string	"S_IFOG"
.LASF133:
	.string	"SPR_POSS"
.LASF138:
	.string	"SPR_FBXP"
.LASF1564:
	.string	"mus_romer2"
.LASF935:
	.string	"S_CYBER_DIE1"
.LASF936:
	.string	"S_CYBER_DIE2"
.LASF937:
	.string	"S_CYBER_DIE3"
.LASF938:
	.string	"S_CYBER_DIE4"
.LASF939:
	.string	"S_CYBER_DIE5"
.LASF940:
	.string	"S_CYBER_DIE6"
.LASF941:
	.string	"S_CYBER_DIE7"
.LASF813:
	.string	"S_BOS2_PAIN"
.LASF943:
	.string	"S_CYBER_DIE9"
.LASF1410:
	.string	"spawnpoint"
.LASF1213:
	.string	"sprite"
.LASF1293:
	.string	"MT_MISC23"
.LASF1485:
	.string	"patch_t"
.LASF1723:
	.string	"casttics"
.LASF1552:
	.string	"mus_runni2"
.LASF1706:
	.string	"p3text"
.LASF1156:
	.string	"S_CANDELABRA"
.LASF496:
	.string	"S_VILE_RUN10"
.LASF497:
	.string	"S_VILE_RUN11"
.LASF498:
	.string	"S_VILE_RUN12"
.LASF1116:
	.string	"S_ROCK"
.LASF265:
	.string	"S_SGUN1"
.LASF266:
	.string	"S_SGUN2"
.LASF267:
	.string	"S_SGUN3"
.LASF268:
	.string	"S_SGUN4"
.LASF269:
	.string	"S_SGUN5"
.LASF270:
	.string	"S_SGUN6"
.LASF271:
	.string	"S_SGUN7"
.LASF272:
	.string	"S_SGUN8"
.LASF273:
	.string	"S_SGUN9"
.LASF1362:
	.string	"doomednum"
.LASF262:
	.string	"S_SGUN"
.LASF1688:
	.string	"viewactive"
.LASF1152:
	.string	"S_SHRTGRNCOL"
.LASF1676:
	.string	"sfx_ssdth"
.LASF1604:
	.string	"sfx_pepain"
.LASF1666:
	.string	"sfx_flamst"
.LASF837:
	.string	"S_SKULL_PAIN"
.LASF1536:
	.string	"mus_victor"
.LASF1251:
	.string	"MT_SPAWNSHOT"
.LASF561:
	.string	"S_TRACER2"
.LASF1538:
	.string	"mus_runnin"
.LASF1160:
	.string	"S_TECHPILLAR"
.LASF565:
	.string	"S_SKEL_STND"
.LASF1537:
	.string	"mus_introa"
.LASF720:
	.string	"S_SARG_STND2"
.LASF1659:
	.string	"sfx_metal"
.LASF47:
	.string	"indetermined"
.LASF466:
	.string	"S_SPOS_DIE1"
.LASF467:
	.string	"S_SPOS_DIE2"
.LASF468:
	.string	"S_SPOS_DIE3"
.LASF469:
	.string	"S_SPOS_DIE4"
.LASF470:
	.string	"S_SPOS_DIE5"
.LASF1499:
	.string	"PST_REBORN"
.LASF1626:
	.string	"sfx_sgtatk"
.LASF1195:
	.string	"S_HANGBNOBRAIN"
.LASF1623:
	.string	"sfx_mansit"
.LASF729:
	.string	"S_SARG_ATK1"
.LASF730:
	.string	"S_SARG_ATK2"
.LASF731:
	.string	"S_SARG_ATK3"
.LASF320:
	.string	"S_PLASMAUP"
.LASF1215:
	.string	"tics"
.LASF1076:
	.string	"S_YKEY"
.LASF1597:
	.string	"sfx_swtchn"
.LASF1377:
	.string	"speed"
.LASF37:
	.string	"ga_completed"
.LASF289:
	.string	"S_DSNR1"
.LASF958:
	.string	"S_PAIN_DIE1"
.LASF1598:
	.string	"sfx_swtchx"
.LASF488:
	.string	"S_VILE_RUN2"
.LASF1566:
	.string	"mus_shawn3"
.LASF1664:
	.string	"sfx_itmbk"
.LASF1206:
	.string	"S_TECHLAMP4"
.LASF652:
	.string	"S_CPOS_RUN1"
.LASF653:
	.string	"S_CPOS_RUN2"
.LASF654:
	.string	"S_CPOS_RUN3"
.LASF655:
	.string	"S_CPOS_RUN4"
.LASF88:
	.string	"actionf_p1"
.LASF89:
	.string	"actionf_p2"
.LASF190:
	.string	"SPR_BPAK"
.LASF659:
	.string	"S_CPOS_RUN8"
.LASF1056:
	.string	"S_BEXP5"
.LASF1681:
	.string	"sfx_skeatk"
.LASF103:
	.string	"mapthing_t"
.LASF421:
	.string	"S_POSS_RUN2"
.LASF422:
	.string	"S_POSS_RUN3"
.LASF423:
	.string	"S_POSS_RUN4"
.LASF740:
	.string	"S_SARG_RAISE1"
.LASF424:
	.string	"S_POSS_RUN5"
.LASF90:
	.string	"acp1"
.LASF91:
	.string	"acp2"
.LASF744:
	.string	"S_SARG_RAISE5"
.LASF745:
	.string	"S_SARG_RAISE6"
.LASF1633:
	.string	"sfx_podth1"
.LASF1634:
	.string	"sfx_podth2"
.LASF1635:
	.string	"sfx_podth3"
.LASF1326:
	.string	"MT_MISC53"
.LASF1683:
	.string	"NUMSFX"
.LASF229:
	.string	"SPR_SMGT"
.LASF1020:
	.string	"S_KEENPAIN"
.LASF368:
	.string	"S_BFGEXP2"
.LASF369:
	.string	"S_BFGEXP3"
.LASF370:
	.string	"S_BFGEXP4"
.LASF299:
	.string	"S_CHAINFLASH1"
.LASF300:
	.string	"S_CHAINFLASH2"
.LASF255:
	.string	"S_PISTOLDOWN"
.LASF920:
	.string	"S_CYBER_RUN1"
.LASF921:
	.string	"S_CYBER_RUN2"
.LASF922:
	.string	"S_CYBER_RUN3"
.LASF923:
	.string	"S_CYBER_RUN4"
.LASF924:
	.string	"S_CYBER_RUN5"
.LASF925:
	.string	"S_CYBER_RUN6"
.LASF926:
	.string	"S_CYBER_RUN7"
.LASF927:
	.string	"S_CYBER_RUN8"
.LASF1366:
	.string	"seesound"
.LASF1487:
	.string	"lump"
.LASF1722:
	.string	"castnum"
.LASF53:
	.string	"gamestate_t"
.LASF1108:
	.string	"S_PMAP3"
.LASF1109:
	.string	"S_PMAP4"
.LASF1110:
	.string	"S_PMAP5"
.LASF1111:
	.string	"S_PMAP6"
.LASF1441:
	.string	"bonuscount"
.LASF838:
	.string	"S_SKULL_PAIN2"
.LASF1370:
	.string	"painchance"
.LASF664:
	.string	"S_CPOS_PAIN"
.LASF1452:
	.string	"ceilingheight"
.LASF45:
	.string	"commercial"
.LASF1562:
	.string	"mus_adrian"
.LASF1569:
	.string	"mus_ultima"
.LASF969:
	.string	"S_PAIN_RAISE6"
.LASF1462:
	.string	"specialdata"
.LASF1309:
	.string	"MT_MISC36"
.LASF773:
	.string	"S_BOSS_RUN1"
.LASF774:
	.string	"S_BOSS_RUN2"
.LASF775:
	.string	"S_BOSS_RUN3"
.LASF776:
	.string	"S_BOSS_RUN4"
.LASF777:
	.string	"S_BOSS_RUN5"
.LASF295:
	.string	"S_CHAINUP"
.LASF1767:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1436:
	.string	"killcount"
.LASF914:
	.string	"S_ARACH_PLEX2"
.LASF1158:
	.string	"S_TORCHTREE"
.LASF970:
	.string	"S_SSWV_STND"
.LASF916:
	.string	"S_ARACH_PLEX4"
.LASF1017:
	.string	"S_COMMKEEN10"
.LASF1018:
	.string	"S_COMMKEEN11"
.LASF1019:
	.string	"S_COMMKEEN12"
.LASF934:
	.string	"S_CYBER_PAIN"
.LASF453:
	.string	"S_SPOS_RUN1"
.LASF211:
	.string	"SPR_SMIT"
.LASF12:
	.string	"boolean"
.LASF456:
	.string	"S_SPOS_RUN4"
.LASF457:
	.string	"S_SPOS_RUN5"
.LASF148:
	.string	"SPR_SKUL"
.LASF459:
	.string	"S_SPOS_RUN7"
.LASF460:
	.string	"S_SPOS_RUN8"
.LASF1117:
	.string	"S_BROK"
.LASF1364:
	.string	"spawnhealth"
.LASF1642:
	.string	"sfx_cybdth"
.LASF247:
	.string	"S_PUNCHDOWN"
.LASF913:
	.string	"S_ARACH_PLEX"
.LASF1174:
	.string	"S_GREENTORCH"
.LASF69:
	.string	"wp_supershotgun"
.LASF313:
	.string	"S_SAWDOWN"
.LASF1587:
	.string	"sfx_sawhit"
.LASF1586:
	.string	"sfx_sawful"
.LASF1212:
	.string	"statenum_t"
.LASF1254:
	.string	"MT_TROOPSHOT"
.LASF1477:
	.string	"topdelta"
.LASF1239:
	.string	"MT_BRUISERSHOT"
.LASF1654:
	.string	"sfx_vilact"
.LASF20:
	.string	"ticcmd_t"
.LASF1359:
	.string	"MT_MISC86"
.LASF918:
	.string	"S_CYBER_STND"
.LASF1619:
	.string	"sfx_spisit"
.LASF401:
	.string	"S_PLAY_PAIN2"
.LASF1585:
	.string	"sfx_sawidl"
.LASF796:
	.string	"S_BOSS_RAISE4"
.LASF797:
	.string	"S_BOSS_RAISE5"
.LASF1214:
	.string	"frame"
.LASF140:
	.string	"SPR_MANF"
.LASF651:
	.string	"S_CPOS_STND2"
.LASF1652:
	.string	"sfx_bspact"
.LASF464:
	.string	"S_SPOS_PAIN"
.LASF63:
	.string	"wp_shotgun"
.LASF432:
	.string	"S_POSS_PAIN2"
.LASF1260:
	.string	"MT_PUFF"
.LASF304:
	.string	"S_MISSILE1"
.LASF305:
	.string	"S_MISSILE2"
.LASF306:
	.string	"S_MISSILE3"
.LASF680:
	.string	"S_CPOS_RAISE2"
.LASF681:
	.string	"S_CPOS_RAISE3"
.LASF682:
	.string	"S_CPOS_RAISE4"
.LASF1446:
	.string	"psprites"
.LASF1124:
	.string	"S_MGUN"
.LASF1712:
	.string	"t3text"
.LASF1238:
	.string	"MT_BRUISER"
.LASF189:
	.string	"SPR_SBOX"
.LASF1525:
	.string	"mus_e3m2"
.LASF1438:
	.string	"secretcount"
.LASF1361:
	.string	"mobjtype_t"
.LASF1375:
	.string	"xdeathstate"
.LASF1527:
	.string	"mus_e3m4"
.LASF1423:
	.string	"powers"
.LASF833:
	.string	"S_SKULL_ATK1"
.LASF834:
	.string	"S_SKULL_ATK2"
.LASF32:
	.string	"ga_loadlevel"
.LASF836:
	.string	"S_SKULL_ATK4"
.LASF814:
	.string	"S_BOS2_PAIN2"
.LASF5:
	.string	"short unsigned int"
.LASF1240:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF15:
	.string	"sidemove"
.LASF1382:
	.string	"activesound"
.LASF465:
	.string	"S_SPOS_PAIN2"
.LASF1657:
	.string	"sfx_punch"
.LASF629:
	.string	"S_FATT_ATK10"
.LASF226:
	.string	"SPR_TGRN"
.LASF1493:
	.string	"ps_weapon"
.LASF1285:
	.string	"MT_MEGA"
.LASF128:
	.string	"SPR_BFE1"
.LASF129:
	.string	"SPR_BFE2"
.LASF1751:
	.string	"desttop"
.LASF1461:
	.string	"thinglist"
.LASF1319:
	.string	"MT_MISC46"
.LASF1573:
	.string	"NUMMUSIC"
.LASF1484:
	.string	"columnofs"
.LASF1697:
	.string	"e4text"
.LASF1247:
	.string	"MT_KEEN"
.LASF1750:
	.string	"dest"
.LASF1459:
	.string	"blockbox"
.LASF1030:
	.string	"S_BRAINEYE1"
.LASF686:
	.string	"S_TROO_STND"
.LASF633:
	.string	"S_FATT_DIE2"
.LASF324:
	.string	"S_PLASMAFLASH2"
.LASF1386:
	.string	"mobjinfo"
.LASF72:
	.string	"weapontype_t"
.LASF18:
	.string	"chatchar"
.LASF377:
	.string	"S_TFOG2"
.LASF378:
	.string	"S_TFOG3"
.LASF379:
	.string	"S_TFOG4"
.LASF380:
	.string	"S_TFOG5"
.LASF381:
	.string	"S_TFOG6"
.LASF382:
	.string	"S_TFOG7"
.LASF383:
	.string	"S_TFOG8"
.LASF384:
	.string	"S_TFOG9"
.LASF799:
	.string	"S_BOSS_RAISE7"
.LASF1432:
	.string	"attackdown"
.LASF104:
	.string	"SPR_TROO"
.LASF115:
	.string	"SPR_SAWG"
.LASF1276:
	.string	"MT_MISC10"
.LASF1615:
	.string	"sfx_sgtsit"
.LASF1714:
	.string	"t5text"
.LASF164:
	.string	"SPR_BON1"
.LASF165:
	.string	"SPR_BON2"
.LASF1746:
	.string	"F_DrawPatchCol"
.LASF56:
	.string	"it_redcard"
.LASF1153:
	.string	"S_TALLREDCOL"
.LASF1713:
	.string	"t4text"
.LASF1402:
	.string	"state"
.LASF1128:
	.string	"S_SHOT"
.LASF984:
	.string	"S_SSWV_ATK5"
.LASF1133:
	.string	"S_BLOODYTWITCH2"
.LASF1134:
	.string	"S_BLOODYTWITCH3"
.LASF1135:
	.string	"S_BLOODYTWITCH4"
.LASF874:
	.string	"S_SPID_DIE10"
.LASF875:
	.string	"S_SPID_DIE11"
.LASF1424:
	.string	"cards"
.LASF1540:
	.string	"mus_countd"
.LASF1534:
	.string	"mus_intro"
.LASF1577:
	.string	"sfx_sgcock"
.LASF221:
	.string	"SPR_ELEC"
.LASF1022:
	.string	"S_BRAIN"
.LASF35:
	.string	"ga_savegame"
.LASF1242:
	.string	"MT_SPIDER"
.LASF1105:
	.string	"S_SUIT"
.LASF119:
	.string	"SPR_BFGF"
.LASF118:
	.string	"SPR_BFGG"
.LASF945:
	.string	"S_PAIN_STND"
.LASF1617:
	.string	"sfx_brssit"
.LASF1762:
	.string	"F_Ticker"
.LASF361:
	.string	"S_BFGLAND"
.LASF1051:
	.string	"S_BAR2"
.LASF1428:
	.string	"pendingweapon"
.LASF96:
	.string	"function"
.LASF1691:
	.string	"wipegamestate"
.LASF1747:
	.string	"patch"
.LASF1660:
	.string	"sfx_chgun"
.LASF74:
	.string	"am_shell"
.LASF1737:
	.string	"W_CacheLumpName"
.LASF1400:
	.string	"validcount"
.LASF1439:
	.string	"message"
.LASF1731:
	.string	"V_DrawPatchFlipped"
.LASF641:
	.string	"S_FATT_DIE10"
.LASF60:
	.string	"NUMCARDS"
.LASF1178:
	.string	"S_REDTORCH"
.LASF1556:
	.string	"mus_shawn2"
.LASF1258:
	.string	"MT_BFG"
.LASF425:
	.string	"S_POSS_RUN6"
.LASF1628:
	.string	"sfx_vilatk"
.LASF135:
	.string	"SPR_VILE"
.LASF1758:
	.string	"F_CastTicker"
.LASF1663:
	.string	"sfx_bdcls"
.LASF31:
	.string	"ga_nothing"
.LASF1261:
	.string	"MT_BLOOD"
.LASF254:
	.string	"S_PISTOL"
.LASF11:
	.string	"true"
.LASF486:
	.string	"S_VILE_STND2"
.LASF904:
	.string	"S_BSPI_RAISE1"
.LASF905:
	.string	"S_BSPI_RAISE2"
.LASF906:
	.string	"S_BSPI_RAISE3"
.LASF907:
	.string	"S_BSPI_RAISE4"
.LASF908:
	.string	"S_BSPI_RAISE5"
.LASF909:
	.string	"S_BSPI_RAISE6"
.LASF910:
	.string	"S_BSPI_RAISE7"
.LASF24:
	.string	"ev_joystick"
.LASF1398:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF993:
	.string	"S_SSWV_XDIE1"
.LASF994:
	.string	"S_SSWV_XDIE2"
.LASF995:
	.string	"S_SSWV_XDIE3"
.LASF996:
	.string	"S_SSWV_XDIE4"
.LASF997:
	.string	"S_SSWV_XDIE5"
.LASF998:
	.string	"S_SSWV_XDIE6"
.LASF999:
	.string	"S_SSWV_XDIE7"
.LASF1000:
	.string	"S_SSWV_XDIE8"
.LASF1001:
	.string	"S_SSWV_XDIE9"
.LASF291:
	.string	"S_DSGUNFLASH1"
.LASF292:
	.string	"S_DSGUNFLASH2"
.LASF1292:
	.string	"MT_MISC22"
.LASF1447:
	.string	"didsecret"
.LASF549:
	.string	"S_FIRE25"
.LASF643:
	.string	"S_FATT_RAISE2"
.LASF1328:
	.string	"MT_MISC55"
.LASF1420:
	.string	"deltaviewheight"
.LASF551:
	.string	"S_FIRE27"
.LASF58:
	.string	"it_yellowskull"
.LASF1081:
	.string	"S_RSKULL2"
.LASF1411:
	.string	"tracer"
.LASF856:
	.string	"S_SPID_RUN10"
.LASF857:
	.string	"S_SPID_RUN11"
.LASF858:
	.string	"S_SPID_RUN12"
.LASF1741:
	.string	"rcsid"
.LASF1607:
	.string	"sfx_wpnup"
.LASF1733:
	.string	"V_DrawPatch"
.LASF1702:
	.string	"c5text"
.LASF1711:
	.string	"t2text"
.LASF1384:
	.string	"raisestate"
.LASF307:
	.string	"S_MISSILEFLASH1"
.LASF308:
	.string	"S_MISSILEFLASH2"
.LASF309:
	.string	"S_MISSILEFLASH3"
.LASF310:
	.string	"S_MISSILEFLASH4"
.LASF170:
	.string	"SPR_RSKU"
.LASF1627:
	.string	"sfx_skepch"
.LASF93:
	.string	"think_t"
.LASF14:
	.string	"forwardmove"
.LASF668:
	.string	"S_CPOS_DIE3"
.LASF669:
	.string	"S_CPOS_DIE4"
.LASF670:
	.string	"S_CPOS_DIE5"
.LASF671:
	.string	"S_CPOS_DIE6"
.LASF672:
	.string	"S_CPOS_DIE7"
.LASF1542:
	.string	"mus_doom"
.LASF1113:
	.string	"S_PVIS2"
.LASF1715:
	.string	"t6text"
.LASF1253:
	.string	"MT_BARREL"
.LASF845:
	.string	"S_SPID_STND"
.LASF617:
	.string	"S_FATT_RUN10"
.LASF618:
	.string	"S_FATT_RUN11"
.LASF619:
	.string	"S_FATT_RUN12"
.LASF1245:
	.string	"MT_PAIN"
.LASF1488:
	.string	"flip"
.LASF1171:
	.string	"S_BLUETORCH2"
.LASF1385:
	.string	"mobjinfo_t"
.LASF1172:
	.string	"S_BLUETORCH3"
.LASF1610:
	.string	"sfx_posit1"
.LASF1173:
	.string	"S_BLUETORCH4"
.LASF230:
	.string	"SPR_SMRT"
.LASF332:
	.string	"S_BFGFLASH1"
.LASF333:
	.string	"S_BFGFLASH2"
.LASF866:
	.string	"S_SPID_DIE2"
.LASF147:
	.string	"SPR_BOS2"
.LASF869:
	.string	"S_SPID_DIE5"
.LASF870:
	.string	"S_SPID_DIE6"
.LASF1670:
	.string	"sfx_bossit"
.LASF871:
	.string	"S_SPID_DIE7"
.LASF872:
	.string	"S_SPID_DIE8"
.LASF1759:
	.string	"F_Drawer"
.LASF1162:
	.string	"S_EVILEYE2"
.LASF1163:
	.string	"S_EVILEYE3"
.LASF1164:
	.string	"S_EVILEYE4"
.LASF337:
	.string	"S_PUFF1"
.LASF338:
	.string	"S_PUFF2"
.LASF339:
	.string	"S_PUFF3"
.LASF158:
	.string	"SPR_BOSF"
.LASF1464:
	.string	"lines"
.LASF1490:
	.string	"numframes"
.LASF146:
	.string	"SPR_BOSS"
.LASF1695:
	.string	"e2text"
.LASF1257:
	.string	"MT_PLASMA"
.LASF1682:
	.string	"sfx_radio"
.LASF891:
	.string	"S_BSPI_ATK1"
.LASF892:
	.string	"S_BSPI_ATK2"
.LASF893:
	.string	"S_BSPI_ATK3"
.LASF894:
	.string	"S_BSPI_ATK4"
.LASF1073:
	.string	"S_BKEY2"
.LASF70:
	.string	"NUMWEAPONS"
.LASF1568:
	.string	"mus_evil"
.LASF878:
	.string	"S_BSPI_SIGHT"
.LASF1599:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF880:
	.string	"S_BSPI_RUN2"
.LASF1024:
	.string	"S_BRAIN_DIE1"
.LASF1025:
	.string	"S_BRAIN_DIE2"
.LASF1026:
	.string	"S_BRAIN_DIE3"
.LASF1027:
	.string	"S_BRAIN_DIE4"
.LASF359:
	.string	"S_BFGSHOT"
.LASF1165:
	.string	"S_FLOATSKULL"
.LASF1753:
	.string	"F_CastDrawer"
.LASF1704:
	.string	"p1text"
.LASF515:
	.string	"S_VILE_DIE1"
.LASF516:
	.string	"S_VILE_DIE2"
.LASF517:
	.string	"S_VILE_DIE3"
.LASF518:
	.string	"S_VILE_DIE4"
.LASF519:
	.string	"S_VILE_DIE5"
.LASF520:
	.string	"S_VILE_DIE6"
.LASF521:
	.string	"S_VILE_DIE7"
.LASF522:
	.string	"S_VILE_DIE8"
.LASF523:
	.string	"S_VILE_DIE9"
.LASF1440:
	.string	"damagecount"
.LASF1580:
	.string	"sfx_dbcls"
.LASF199:
	.string	"SPR_SMT2"
.LASF1075:
	.string	"S_RKEY2"
.LASF1046:
	.string	"S_ARM1"
.LASF1048:
	.string	"S_ARM2"
.LASF1141:
	.string	"S_HEADCANDLES"
.LASF177:
	.string	"SPR_PINS"
.LASF771:
	.string	"S_BOSS_STND"
.LASF1651:
	.string	"sfx_dmact"
.LASF1696:
	.string	"e3text"
.LASF751:
	.string	"S_HEAD_PAIN"
.LASF55:
	.string	"it_yellowcard"
.LASF1768:
	.string	"stopattack"
.LASF1229:
	.string	"MT_TRACER"
.LASF632:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF634:
	.string	"S_FATT_DIE3"
.LASF635:
	.string	"S_FATT_DIE4"
.LASF636:
	.string	"S_FATT_DIE5"
.LASF637:
	.string	"S_FATT_DIE6"
.LASF638:
	.string	"S_FATT_DIE7"
.LASF639:
	.string	"S_FATT_DIE8"
.LASF640:
	.string	"S_FATT_DIE9"
.LASF707:
	.string	"S_TROO_XDIE2"
.LASF708:
	.string	"S_TROO_XDIE3"
.LASF709:
	.string	"S_TROO_XDIE4"
.LASF710:
	.string	"S_TROO_XDIE5"
.LASF711:
	.string	"S_TROO_XDIE6"
.LASF712:
	.string	"S_TROO_XDIE7"
.LASF713:
	.string	"S_TROO_XDIE8"
.LASF182:
	.string	"SPR_CLIP"
.LASF1754:
	.string	"sprdef"
.LASF1154:
	.string	"S_SHRTREDCOL"
.LASF1699:
	.string	"c2text"
.LASF1197:
	.string	"S_HANGTSKULL"
.LASF1690:
	.string	"players"
.LASF1738:
	.string	"S_StartMusic"
.LASF85:
	.string	"NUMPOWERS"
.LASF982:
	.string	"S_SSWV_ATK3"
.LASF983:
	.string	"S_SSWV_ATK4"
.LASF288:
	.string	"S_DSGUN10"
.LASF1639:
	.string	"sfx_cacdth"
.LASF80:
	.string	"pw_strength"
.LASF216:
	.string	"SPR_CAND"
.LASF1596:
	.string	"sfx_stnmov"
.LASF1235:
	.string	"MT_SERGEANT"
.LASF1591:
	.string	"sfx_firxpl"
.LASF1144:
	.string	"S_LIVESTICK"
.LASF1084:
	.string	"S_STIM"
.LASF75:
	.string	"am_cell"
.LASF54:
	.string	"it_bluecard"
.LASF1395:
	.string	"floorz"
.LASF747:
	.string	"S_HEAD_RUN1"
.LASF402:
	.string	"S_PLAY_DIE1"
.LASF403:
	.string	"S_PLAY_DIE2"
.LASF404:
	.string	"S_PLAY_DIE3"
.LASF405:
	.string	"S_PLAY_DIE4"
.LASF406:
	.string	"S_PLAY_DIE5"
.LASF407:
	.string	"S_PLAY_DIE6"
.LASF408:
	.string	"S_PLAY_DIE7"
.LASF1734:
	.string	"toupper"
.LASF418:
	.string	"S_POSS_STND"
.LASF374:
	.string	"S_TFOG"
.LASF1313:
	.string	"MT_MISC40"
.LASF1314:
	.string	"MT_MISC41"
.LASF1412:
	.string	"subsector_s"
.LASF734:
	.string	"S_SARG_DIE1"
.LASF735:
	.string	"S_SARG_DIE2"
.LASF736:
	.string	"S_SARG_DIE3"
.LASF737:
	.string	"S_SARG_DIE4"
.LASF1035:
	.string	"S_SPAWNFIRE1"
.LASF1036:
	.string	"S_SPAWNFIRE2"
.LASF1037:
	.string	"S_SPAWNFIRE3"
.LASF1038:
	.string	"S_SPAWNFIRE4"
.LASF1039:
	.string	"S_SPAWNFIRE5"
.LASF1040:
	.string	"S_SPAWNFIRE6"
.LASF1041:
	.string	"S_SPAWNFIRE7"
.LASF52:
	.string	"GS_DEMOSCREEN"
.LASF706:
	.string	"S_TROO_XDIE1"
.LASF17:
	.string	"consistancy"
.LASF1413:
	.string	"sector"
.LASF1199:
	.string	"S_HANGTNOBRAIN"
.LASF354:
	.string	"S_PLASEXP2"
.LASF355:
	.string	"S_PLASEXP3"
.LASF356:
	.string	"S_PLASEXP4"
.LASF357:
	.string	"S_PLASEXP5"
.LASF67:
	.string	"wp_bfg"
.LASF1183:
	.string	"S_BTORCHSHRT2"
.LASF1184:
	.string	"S_BTORCHSHRT3"
.LASF1185:
	.string	"S_BTORCHSHRT4"
.LASF1481:
	.string	"width"
.LASF1646:
	.string	"sfx_kntdth"
.LASF487:
	.string	"S_VILE_RUN1"
.LASF277:
	.string	"S_DSGUNDOWN"
.LASF489:
	.string	"S_VILE_RUN3"
.LASF490:
	.string	"S_VILE_RUN4"
.LASF491:
	.string	"S_VILE_RUN5"
.LASF492:
	.string	"S_VILE_RUN6"
.LASF493:
	.string	"S_VILE_RUN7"
.LASF494:
	.string	"S_VILE_RUN8"
.LASF495:
	.string	"S_VILE_RUN9"
.LASF738:
	.string	"S_SARG_DIE5"
.LASF739:
	.string	"S_SARG_DIE6"
.LASF1638:
	.string	"sfx_sgtdth"
.LASF1389:
	.string	"thinker"
.LASF1668:
	.string	"sfx_bospit"
.LASF579:
	.string	"S_SKEL_FIST1"
.LASF580:
	.string	"S_SKEL_FIST2"
.LASF581:
	.string	"S_SKEL_FIST3"
.LASF582:
	.string	"S_SKEL_FIST4"
.LASF318:
	.string	"S_PLASMA"
.LASF1097:
	.string	"S_PINS"
.LASF1479:
	.string	"post_t"
.LASF1603:
	.string	"sfx_mnpain"
.LASF1170:
	.string	"S_BLUETORCH"
.LASF608:
	.string	"S_FATT_RUN1"
.LASF609:
	.string	"S_FATT_RUN2"
.LASF610:
	.string	"S_FATT_RUN3"
.LASF611:
	.string	"S_FATT_RUN4"
.LASF82:
	.string	"pw_ironfeet"
.LASF613:
	.string	"S_FATT_RUN6"
.LASF614:
	.string	"S_FATT_RUN7"
.LASF615:
	.string	"S_FATT_RUN8"
.LASF1146:
	.string	"S_MEAT2"
.LASF1147:
	.string	"S_MEAT3"
.LASF1148:
	.string	"S_MEAT4"
.LASF1149:
	.string	"S_MEAT5"
.LASF1624:
	.string	"sfx_pesit"
.LASF261:
	.string	"S_PISTOLFLASH"
.LASF1451:
	.string	"floorheight"
.LASF481:
	.string	"S_SPOS_RAISE2"
.LASF482:
	.string	"S_SPOS_RAISE3"
.LASF483:
	.string	"S_SPOS_RAISE4"
.LASF484:
	.string	"S_SPOS_RAISE5"
.LASF173:
	.string	"SPR_MEDI"
.LASF175:
	.string	"SPR_PINV"
.LASF1613:
	.string	"sfx_bgsit1"
.LASF1614:
	.string	"sfx_bgsit2"
.LASF1648:
	.string	"sfx_skedth"
.LASF1023:
	.string	"S_BRAIN_PAIN"
.LASF294:
	.string	"S_CHAINDOWN"
.LASF1740:
	.string	"S_ChangeMusic"
.LASF513:
	.string	"S_VILE_PAIN"
.LASF560:
	.string	"S_TRACER"
.LASF50:
	.string	"GS_INTERMISSION"
.LASF1551:
	.string	"mus_ddtbl2"
.LASF980:
	.string	"S_SSWV_ATK1"
.LASF981:
	.string	"S_SSWV_ATK2"
.LASF510:
	.string	"S_VILE_HEAL1"
.LASF511:
	.string	"S_VILE_HEAL2"
.LASF512:
	.string	"S_VILE_HEAL3"
.LASF985:
	.string	"S_SSWV_ATK6"
.LASF1405:
	.string	"movecount"
.LASF167:
	.string	"SPR_RKEY"
.LASF1620:
	.string	"sfx_bspsit"
.LASF1131:
	.string	"S_STALAG"
.LASF1504:
	.string	"screens"
.LASF1601:
	.string	"sfx_popain"
.LASF846:
	.string	"S_SPID_STND2"
.LASF100:
	.string	"angle_t"
.LASF1546:
	.string	"mus_in_cit"
.LASF1454:
	.string	"ceilingpic"
.LASF1132:
	.string	"S_BLOODYTWITCH"
.LASF1201:
	.string	"S_SMALLPOOL"
.LASF1496:
	.string	"pspdef_t"
.LASF1329:
	.string	"MT_MISC56"
.LASF630:
	.string	"S_FATT_PAIN"
.LASF394:
	.string	"S_PLAY_RUN1"
.LASF395:
	.string	"S_PLAY_RUN2"
.LASF396:
	.string	"S_PLAY_RUN3"
.LASF397:
	.string	"S_PLAY_RUN4"
.LASF1122:
	.string	"S_BPAK"
.LASF99:
	.string	"double"
.LASF162:
	.string	"SPR_BEXP"
.LASF1416:
	.string	"player_s"
.LASF1079:
	.string	"S_BSKULL2"
.LASF121:
	.string	"SPR_PUFF"
.LASF1008:
	.string	"S_COMMKEEN"
.LASF1592:
	.string	"sfx_pstart"
.LASF1433:
	.string	"usedown"
.LASF800:
	.string	"S_BOS2_STND"
.LASF127:
	.string	"SPR_BFS1"
.LASF1031:
	.string	"S_SPAWN1"
.LASF1032:
	.string	"S_SPAWN2"
.LASF1033:
	.string	"S_SPAWN3"
.LASF1034:
	.string	"S_SPAWN4"
.LASF1204:
	.string	"S_TECHLAMP2"
.LASF1205:
	.string	"S_TECHLAMP3"
.LASF68:
	.string	"wp_chainsaw"
.LASF1243:
	.string	"MT_BABY"
.LASF1431:
	.string	"maxammo"
.LASF1665:
	.string	"sfx_flame"
.LASF1145:
	.string	"S_LIVESTICK2"
.LASF1190:
	.string	"S_RTORCHSHRT"
.LASF1289:
	.string	"MT_MISC19"
.LASF149:
	.string	"SPR_SPID"
.LASF746:
	.string	"S_HEAD_STND"
.LASF1687:
	.string	"automapactive"
.LASF721:
	.string	"S_SARG_RUN1"
.LASF722:
	.string	"S_SARG_RUN2"
.LASF27:
	.string	"data1"
.LASF28:
	.string	"data2"
.LASF29:
	.string	"data3"
.LASF727:
	.string	"S_SARG_RUN7"
.LASF728:
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
.LASF311:
	.string	"S_SAW"
.LASF178:
	.string	"SPR_MEGA"
.LASF400:
	.string	"S_PLAY_PAIN"
.LASF1629:
	.string	"sfx_claw"
.LASF352:
	.string	"S_PLASBALL2"
.LASF1494:
	.string	"ps_flash"
.LASF1417:
	.string	"playerstate"
.LASF156:
	.string	"SPR_KEEN"
.LASF986:
	.string	"S_SSWV_PAIN"
.LASF1369:
	.string	"painstate"
.LASF1021:
	.string	"S_KEENPAIN2"
.LASF84:
	.string	"pw_infrared"
.LASF508:
	.string	"S_VILE_ATK10"
.LASF509:
	.string	"S_VILE_ATK11"
.LASF1692:
	.string	"finalestage"
.LASF1483:
	.string	"topoffset"
.LASF987:
	.string	"S_SSWV_PAIN2"
.LASF1353:
	.string	"MT_MISC80"
.LASF1376:
	.string	"deathsound"
.LASF1061:
	.string	"S_BON1A"
.LASF41:
	.string	"gameaction_t"
.LASF1063:
	.string	"S_BON1C"
.LASF1064:
	.string	"S_BON1D"
.LASF1065:
	.string	"S_BON1E"
.LASF1471:
	.string	"sector_t"
.LASF1062:
	.string	"S_BON1B"
.LASF176:
	.string	"SPR_PSTR"
.LASF1291:
	.string	"MT_MISC21"
.LASF732:
	.string	"S_SARG_PAIN"
.LASF1286:
	.string	"MT_CLIP"
.LASF191:
	.string	"SPR_BFUG"
.LASF1341:
	.string	"MT_MISC68"
.LASF1057:
	.string	"S_BBAR1"
.LASF1058:
	.string	"S_BBAR2"
.LASF1059:
	.string	"S_BBAR3"
.LASF245:
	.string	"S_LIGHTDONE"
.LASF896:
	.string	"S_BSPI_PAIN2"
.LASF1425:
	.string	"backpack"
.LASF1557:
	.string	"mus_messag"
.LASF696:
	.string	"S_TROO_ATK1"
.LASF697:
	.string	"S_TROO_ATK2"
.LASF698:
	.string	"S_TROO_ATK3"
.LASF840:
	.string	"S_SKULL_DIE2"
.LASF841:
	.string	"S_SKULL_DIE3"
.LASF842:
	.string	"S_SKULL_DIE4"
.LASF843:
	.string	"S_SKULL_DIE5"
.LASF844:
	.string	"S_SKULL_DIE6"
.LASF195:
	.string	"SPR_PLAS"
.LASF1067:
	.string	"S_BON2A"
.LASF1068:
	.string	"S_BON2B"
.LASF108:
	.string	"SPR_PISF"
.LASF107:
	.string	"SPR_PISG"
.LASF1071:
	.string	"S_BON2E"
.LASF1296:
	.string	"MT_CHAINGUN"
.LASF343:
	.string	"S_TBALLX1"
.LASF344:
	.string	"S_TBALLX2"
.LASF345:
	.string	"S_TBALLX3"
.LASF71:
	.string	"wp_nochange"
.LASF1720:
	.string	"castinfo_t"
.LASF1233:
	.string	"MT_CHAINGUY"
.LASF1450:
	.string	"degenmobj_t"
.LASF1611:
	.string	"sfx_posit2"
.LASF1612:
	.string	"sfx_posit3"
.LASF839:
	.string	"S_SKULL_DIE1"
.LASF1498:
	.string	"PST_DEAD"
.LASF1202:
	.string	"S_BRAINSTEM"
.LASF1007:
	.string	"S_KEENSTND"
.LASF1107:
	.string	"S_PMAP2"
.LASF132:
	.string	"SPR_PLAY"
.LASF1709:
	.string	"p6text"
.LASF1550:
	.string	"mus_doom2"
.LASF1427:
	.string	"readyweapon"
.LASF1616:
	.string	"sfx_cacsit"
.LASF1625:
	.string	"sfx_sklatk"
.LASF1735:
	.string	"V_MarkRect"
.LASF1526:
	.string	"mus_e3m3"
.LASF1142:
	.string	"S_HEADCANDLES2"
.LASF1263:
	.string	"MT_IFOG"
.LASF1718:
	.string	"hu_font"
.LASF1548:
	.string	"mus_stlks2"
.LASF1554:
	.string	"mus_stlks3"
.LASF223:
	.string	"SPR_FSKU"
.LASF1671:
	.string	"sfx_bospn"
.LASF458:
	.string	"S_SPOS_RUN6"
.LASF314:
	.string	"S_SAWUP"
.LASF1047:
	.string	"S_ARM1A"
.LASF650:
	.string	"S_CPOS_STND"
.LASF1304:
	.string	"MT_MISC31"
.LASF1399:
	.string	"momz"
.LASF1121:
	.string	"S_SBOX"
.LASF1457:
	.string	"soundtraversed"
.LASF1307:
	.string	"MT_MISC34"
.LASF1467:
	.string	"bbox"
.LASF353:
	.string	"S_PLASEXP"
.LASF1310:
	.string	"MT_MISC37"
.LASF1605:
	.string	"sfx_slop"
.LASF1137:
	.string	"S_DEADBOTTOM"
.LASF1662:
	.string	"sfx_bdopn"
.LASF1194:
	.string	"S_HANGNOGUTS"
.LASF1368:
	.string	"attacksound"
.LASF1098:
	.string	"S_PINS2"
.LASF1099:
	.string	"S_PINS3"
.LASF1100:
	.string	"S_PINS4"
.LASF952:
	.string	"S_PAIN_ATK1"
.LASF953:
	.string	"S_PAIN_ATK2"
.LASF954:
	.string	"S_PAIN_ATK3"
.LASF955:
	.string	"S_PAIN_ATK4"
.LASF264:
	.string	"S_SGUNUP"
.LASF1469:
	.string	"frontsector"
.LASF217:
	.string	"SPR_CBRA"
.LASF1374:
	.string	"deathstate"
.LASF1049:
	.string	"S_ARM2A"
.LASF21:
	.string	"ev_keydown"
.LASF1482:
	.string	"leftoffset"
.LASF1077:
	.string	"S_YKEY2"
.LASF527:
	.string	"S_FIRE3"
.LASF1367:
	.string	"reactiontime"
.LASF39:
	.string	"ga_worlddone"
.LASF532:
	.string	"S_FIRE8"
.LASF772:
	.string	"S_BOSS_STND2"
.LASF1655:
	.string	"sfx_noway"
.LASF667:
	.string	"S_CPOS_DIE2"
.LASF1391:
	.string	"sprev"
.LASF315:
	.string	"S_SAW1"
.LASF316:
	.string	"S_SAW2"
.LASF317:
	.string	"S_SAW3"
.LASF1060:
	.string	"S_BON1"
.LASF1066:
	.string	"S_BON2"
.LASF1707:
	.string	"p4text"
.LASF1408:
	.string	"player"
.LASF1543:
	.string	"mus_the_da"
.LASF312:
	.string	"S_SAWB"
.LASF700:
	.string	"S_TROO_PAIN2"
.LASF1249:
	.string	"MT_BOSSSPIT"
.LASF525:
	.string	"S_FIRE1"
.LASF526:
	.string	"S_FIRE2"
.LASF86:
	.string	"fixed_t"
.LASF528:
	.string	"S_FIRE4"
.LASF529:
	.string	"S_FIRE5"
.LASF530:
	.string	"S_FIRE6"
.LASF531:
	.string	"S_FIRE7"
.LASF185:
	.string	"SPR_BROK"
.LASF533:
	.string	"S_FIRE9"
.LASF1317:
	.string	"MT_MISC44"
.LASF1318:
	.string	"MT_MISC45"
.LASF1118:
	.string	"S_CELL"
.LASF1320:
	.string	"MT_MISC47"
.LASF183:
	.string	"SPR_AMMO"
.LASF1321:
	.string	"MT_MISC48"
.LASF1322:
	.string	"MT_MISC49"
.LASF831:
	.string	"S_SKULL_RUN1"
.LASF832:
	.string	"S_SKULL_RUN2"
.LASF1198:
	.string	"S_HANGTLOOKUP"
.LASF293:
	.string	"S_CHAIN"
.LASF1689:
	.string	"gamestate"
.LASF25:
	.string	"evtype_t"
.LASF323:
	.string	"S_PLASMAFLASH1"
.LASF279:
	.string	"S_DSGUN1"
.LASF280:
	.string	"S_DSGUN2"
.LASF174:
	.string	"SPR_SOUL"
.LASF134:
	.string	"SPR_SPOS"
.LASF283:
	.string	"S_DSGUN5"
.LASF284:
	.string	"S_DSGUN6"
.LASF285:
	.string	"S_DSGUN7"
.LASF286:
	.string	"S_DSGUN8"
.LASF287:
	.string	"S_DSGUN9"
.LASF451:
	.string	"S_SPOS_STND"
.LASF154:
	.string	"SPR_PAIN"
.LASF679:
	.string	"S_CPOS_RAISE1"
.LASF1426:
	.string	"frags"
.LASF1742:
	.string	"scrolled"
.LASF1645:
	.string	"sfx_vildth"
.LASF1421:
	.string	"armorpoints"
.LASF19:
	.string	"buttons"
.LASF328:
	.string	"S_BFG1"
.LASF329:
	.string	"S_BFG2"
.LASF330:
	.string	"S_BFG3"
.LASF331:
	.string	"S_BFG4"
.LASF243:
	.string	"spritenum_t"
.LASF290:
	.string	"S_DSNR2"
.LASF830:
	.string	"S_SKULL_STND2"
.LASF1093:
	.string	"S_PINV2"
.LASF1094:
	.string	"S_PINV3"
.LASF723:
	.string	"S_SARG_RUN3"
.LASF724:
	.string	"S_SARG_RUN4"
.LASF1209:
	.string	"S_TECH2LAMP3"
.LASF1210:
	.string	"S_TECH2LAMP4"
.LASF1465:
	.string	"line_s"
.LASF106:
	.string	"SPR_PUNG"
.LASF674:
	.string	"S_CPOS_XDIE2"
.LASF675:
	.string	"S_CPOS_XDIE3"
.LASF676:
	.string	"S_CPOS_XDIE4"
.LASF677:
	.string	"S_CPOS_XDIE5"
.LASF678:
	.string	"S_CPOS_XDIE6"
.LASF1563:
	.string	"mus_messg2"
.LASF859:
	.string	"S_SPID_ATK1"
.LASF860:
	.string	"S_SPID_ATK2"
.LASF861:
	.string	"S_SPID_ATK3"
.LASF862:
	.string	"S_SPID_ATK4"
.LASF583:
	.string	"S_SKEL_MISS1"
.LASF584:
	.string	"S_SKEL_MISS2"
.LASF585:
	.string	"S_SKEL_MISS3"
.LASF586:
	.string	"S_SKEL_MISS4"
.LASF340:
	.string	"S_PUFF4"
.LASF1080:
	.string	"S_RSKULL"
.LASF912:
	.string	"S_ARACH_PLAZ2"
.LASF1323:
	.string	"MT_MISC50"
.LASF760:
	.string	"S_HEAD_RAISE1"
.LASF1358:
	.string	"MT_MISC85"
.LASF761:
	.string	"S_HEAD_RAISE2"
.LASF762:
	.string	"S_HEAD_RAISE3"
.LASF1434:
	.string	"cheats"
.LASF169:
	.string	"SPR_BSKU"
.LASF764:
	.string	"S_HEAD_RAISE5"
.LASF765:
	.string	"S_HEAD_RAISE6"
.LASF1301:
	.string	"MT_SUPERSHOTGUN"
.LASF180:
	.string	"SPR_PMAP"
.LASF1028:
	.string	"S_BRAINEYE"
.LASF181:
	.string	"SPR_PVIS"
.LASF1497:
	.string	"PST_LIVE"
.LASF1685:
	.string	"gameepisode"
.LASF1259:
	.string	"MT_ARACHPLAZ"
.LASF1716:
	.string	"finaletext"
.LASF506:
	.string	"S_VILE_ATK8"
.LASF447:
	.string	"S_POSS_RAISE1"
.LASF448:
	.string	"S_POSS_RAISE2"
.LASF449:
	.string	"S_POSS_RAISE3"
.LASF450:
	.string	"S_POSS_RAISE4"
.LASF302:
	.string	"S_MISSILEDOWN"
.LASF1656:
	.string	"sfx_barexp"
.LASF1166:
	.string	"S_FLOATSKULL2"
.LASF1167:
	.string	"S_FLOATSKULL3"
.LASF1579:
	.string	"sfx_dbopn"
.LASF1583:
	.string	"sfx_bfg"
.LASF1101:
	.string	"S_MEGA"
.LASF781:
	.string	"S_BOSS_ATK1"
.LASF782:
	.string	"S_BOSS_ATK2"
.LASF783:
	.string	"S_BOSS_ATK3"
.LASF1394:
	.string	"subsector"
.LASF239:
	.string	"SPR_BRS1"
.LASF1449:
	.string	"vertex_t"
.LASF588:
	.string	"S_SKEL_PAIN2"
.LASF1125:
	.string	"S_CSAW"
.LASF79:
	.string	"pw_invulnerability"
.LASF768:
	.string	"S_BRBALLX1"
.LASF769:
	.string	"S_BRBALLX2"
.LASF770:
	.string	"S_BRBALLX3"
.LASF898:
	.string	"S_BSPI_DIE2"
.LASF899:
	.string	"S_BSPI_DIE3"
.LASF900:
	.string	"S_BSPI_DIE4"
.LASF901:
	.string	"S_BSPI_DIE5"
.LASF64:
	.string	"wp_chaingun"
.LASF903:
	.string	"S_BSPI_DIE7"
.LASF1561:
	.string	"mus_theda3"
.LASF454:
	.string	"S_SPOS_RUN2"
.LASF1470:
	.string	"backsector"
.LASF455:
	.string	"S_SPOS_RUN3"
.LASF957:
	.string	"S_PAIN_PAIN2"
.LASF592:
	.string	"S_SKEL_DIE4"
.LASF1575:
	.string	"sfx_pistol"
.LASF188:
	.string	"SPR_SHEL"
.LASF1342:
	.string	"MT_MISC69"
.LASF1422:
	.string	"armortype"
.LASF10:
	.string	"false"
.LASF240:
	.string	"SPR_TLMP"
.LASF419:
	.string	"S_POSS_STND2"
.LASF1300:
	.string	"MT_SHOTGUN"
.LASF1721:
	.string	"castorder"
.LASF1225:
	.string	"MT_SHOTGUY"
.LASF1437:
	.string	"itemcount"
.LASF1203:
	.string	"S_TECHLAMP"
.LASF1246:
	.string	"MT_WOLFSS"
.LASF801:
	.string	"S_BOS2_STND2"
.LASF1458:
	.string	"soundtarget"
.LASF296:
	.string	"S_CHAIN1"
.LASF297:
	.string	"S_CHAIN2"
.LASF298:
	.string	"S_CHAIN3"
.LASF349:
	.string	"S_RBALLX2"
.LASF350:
	.string	"S_RBALLX3"
.LASF225:
	.string	"SPR_TBLU"
.LASF452:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1576:
	.string	"sfx_shotgn"
.LASF1390:
	.string	"snext"
.LASF78:
	.string	"am_noammo"
.LASF1387:
	.string	"thinker_s"
.LASF97:
	.string	"thinker_t"
.LASF1505:
	.string	"mus_None"
.LASF1560:
	.string	"mus_ampie"
.LASF1636:
	.string	"sfx_bgdth1"
.LASF1637:
	.string	"sfx_bgdth2"
.LASF1042:
	.string	"S_SPAWNFIRE8"
.LASF428:
	.string	"S_POSS_ATK1"
.LASF429:
	.string	"S_POSS_ATK2"
.LASF430:
	.string	"S_POSS_ATK3"
.LASF1344:
	.string	"MT_MISC71"
.LASF1191:
	.string	"S_RTORCHSHRT2"
.LASF1192:
	.string	"S_RTORCHSHRT3"
.LASF1193:
	.string	"S_RTORCHSHRT4"
.LASF1095:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF879:
	.string	"S_BSPI_RUN1"
.LASF1350:
	.string	"MT_MISC77"
.LASF1351:
	.string	"MT_MISC78"
.LASF1352:
	.string	"MT_MISC79"
.LASF1489:
	.string	"spriteframe_t"
.LASF1241:
	.string	"MT_SKULL"
.LASF1228:
	.string	"MT_UNDEAD"
.LASF48:
	.string	"GameMode_t"
.LASF94:
	.string	"prev"
.LASF589:
	.string	"S_SKEL_DIE1"
.LASF590:
	.string	"S_SKEL_DIE2"
.LASF591:
	.string	"S_SKEL_DIE3"
.LASF136:
	.string	"SPR_FIRE"
.LASF593:
	.string	"S_SKEL_DIE5"
.LASF594:
	.string	"S_SKEL_DIE6"
.LASF1200:
	.string	"S_COLONGIBS"
.LASF1684:
	.string	"gamemode"
.LASF241:
	.string	"SPR_TLP2"
.LASF351:
	.string	"S_PLASBALL"
.LASF1632:
	.string	"sfx_pdiehi"
.LASF197:
	.string	"SPR_SGN2"
.LASF102:
	.string	"options"
.LASF150:
	.string	"SPR_BSPI"
.LASF1507:
	.string	"mus_e1m2"
.LASF152:
	.string	"SPR_APBX"
.LASF1445:
	.string	"colormap"
.LASF46:
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
.LASF1114:
	.string	"S_CLIP"
.LASF1378:
	.string	"radius"
.LASF1403:
	.string	"health"
.LASF1250:
	.string	"MT_BOSSTARGET"
.LASF1700:
	.string	"c3text"
.LASF1621:
	.string	"sfx_kntsit"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"f_finale.c"
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
