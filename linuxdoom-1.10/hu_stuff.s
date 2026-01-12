	.file	"hu_stuff.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "hu_stuff.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: hu_stuff.c,v 1.4 1997/02/03 16:47:52 b1 Exp $"
	.globl	chat_macros
.LC0:
	.string	"No"
.LC1:
	.string	"I'm ready to kick butt!"
.LC2:
	.string	"I'm OK."
.LC3:
	.string	"I'm not looking too good!"
.LC4:
	.string	"Help!"
.LC5:
	.string	"You suck!"
.LC6:
	.string	"Next time, scumbag..."
.LC7:
	.string	"Come here!"
.LC8:
	.string	"I'll take care of it."
.LC9:
	.string	"Yes"
	.section	.data.rel.local,"aw"
	.align 32
	.type	chat_macros, @object
	.size	chat_macros, 80
chat_macros:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.globl	player_names
	.section	.rodata
.LC10:
	.string	"Green: "
.LC11:
	.string	"Indigo: "
.LC12:
	.string	"Brown: "
.LC13:
	.string	"Red: "
	.section	.data.rel.local
	.align 32
	.type	player_names, @object
	.size	player_names, 32
player_names:
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.globl	chat_char
	.bss
	.type	chat_char, @object
	.size	chat_char, 1
chat_char:
	.zero	1
	.local	plr
	.comm	plr,8,8
	.globl	hu_font
	.align 32
	.type	hu_font, @object
	.size	hu_font, 504
hu_font:
	.zero	504
	.local	w_title
	.comm	w_title,112,32
	.globl	chat_on
	.align 4
	.type	chat_on, @object
	.size	chat_on, 4
chat_on:
	.zero	4
	.local	w_chat
	.comm	w_chat,136,32
	.local	always_off
	.comm	always_off,4,4
	.local	chat_dest
	.comm	chat_dest,4,1
	.local	w_inputbuffer
	.comm	w_inputbuffer,544,32
	.local	message_on
	.comm	message_on,4,4
	.globl	message_dontfuckwithme
	.align 4
	.type	message_dontfuckwithme, @object
	.size	message_dontfuckwithme, 4
message_dontfuckwithme:
	.zero	4
	.local	message_nottobefuckedwith
	.comm	message_nottobefuckedwith,4,4
	.local	w_message
	.comm	w_message,472,32
	.local	message_counter
	.comm	message_counter,4,4
	.local	headsupactive
	.comm	headsupactive,4,4
	.globl	mapnames
	.section	.rodata
.LC14:
	.string	"E1M1: Hangar"
.LC15:
	.string	"E1M2: Nuclear Plant"
.LC16:
	.string	"E1M3: Toxin Refinery"
.LC17:
	.string	"E1M4: Command Control"
.LC18:
	.string	"E1M5: Phobos Lab"
.LC19:
	.string	"E1M6: Central Processing"
.LC20:
	.string	"E1M7: Computer Station"
.LC21:
	.string	"E1M8: Phobos Anomaly"
.LC22:
	.string	"E1M9: Military Base"
.LC23:
	.string	"E2M1: Deimos Anomaly"
.LC24:
	.string	"E2M2: Containment Area"
.LC25:
	.string	"E2M3: Refinery"
.LC26:
	.string	"E2M4: Deimos Lab"
.LC27:
	.string	"E2M5: Command Center"
.LC28:
	.string	"E2M6: Halls of the Damned"
.LC29:
	.string	"E2M7: Spawning Vats"
.LC30:
	.string	"E2M8: Tower of Babel"
.LC31:
	.string	"E2M9: Fortress of Mystery"
.LC32:
	.string	"E3M1: Hell Keep"
.LC33:
	.string	"E3M2: Slough of Despair"
.LC34:
	.string	"E3M3: Pandemonium"
.LC35:
	.string	"E3M4: House of Pain"
.LC36:
	.string	"E3M5: Unholy Cathedral"
.LC37:
	.string	"E3M6: Mt. Erebus"
.LC38:
	.string	"E3M7: Limbo"
.LC39:
	.string	"E3M8: Dis"
.LC40:
	.string	"E3M9: Warrens"
.LC41:
	.string	"E4M1: Hell Beneath"
.LC42:
	.string	"E4M2: Perfect Hatred"
.LC43:
	.string	"E4M3: Sever The Wicked"
.LC44:
	.string	"E4M4: Unruly Evil"
.LC45:
	.string	"E4M5: They Will Repent"
.LC46:
	.string	"E4M6: Against Thee Wickedly"
.LC47:
	.string	"E4M7: And Hell Followed"
.LC48:
	.string	"E4M8: Unto The Cruel"
.LC49:
	.string	"E4M9: Fear"
.LC50:
	.string	"NEWLEVEL"
	.section	.data.rel.local
	.align 32
	.type	mapnames, @object
	.size	mapnames, 360
mapnames:
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC50
	.quad	.LC50
	.quad	.LC50
	.quad	.LC50
	.quad	.LC50
	.quad	.LC50
	.quad	.LC50
	.quad	.LC50
	.globl	mapnames2
	.section	.rodata
.LC51:
	.string	"level 1: entryway"
.LC52:
	.string	"level 2: underhalls"
.LC53:
	.string	"level 3: the gantlet"
.LC54:
	.string	"level 4: the focus"
.LC55:
	.string	"level 5: the waste tunnels"
.LC56:
	.string	"level 6: the crusher"
.LC57:
	.string	"level 7: dead simple"
.LC58:
	.string	"level 8: tricks and traps"
.LC59:
	.string	"level 9: the pit"
.LC60:
	.string	"level 10: refueling base"
.LC61:
	.string	"level 11: 'o' of destruction!"
.LC62:
	.string	"level 12: the factory"
.LC63:
	.string	"level 13: downtown"
.LC64:
	.string	"level 14: the inmost dens"
.LC65:
	.string	"level 15: industrial zone"
.LC66:
	.string	"level 16: suburbs"
.LC67:
	.string	"level 17: tenements"
.LC68:
	.string	"level 18: the courtyard"
.LC69:
	.string	"level 19: the citadel"
.LC70:
	.string	"level 20: gotcha!"
.LC71:
	.string	"level 21: nirvana"
.LC72:
	.string	"level 22: the catacombs"
.LC73:
	.string	"level 23: barrels o' fun"
.LC74:
	.string	"level 24: the chasm"
.LC75:
	.string	"level 25: bloodfalls"
.LC76:
	.string	"level 26: the abandoned mines"
.LC77:
	.string	"level 27: monster condo"
.LC78:
	.string	"level 28: the spirit world"
.LC79:
	.string	"level 29: the living end"
.LC80:
	.string	"level 30: icon of sin"
.LC81:
	.string	"level 31: wolfenstein"
.LC82:
	.string	"level 32: grosse"
	.section	.data.rel.local
	.align 32
	.type	mapnames2, @object
	.size	mapnames2, 256
mapnames2:
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.globl	mapnamesp
	.section	.rodata
.LC83:
	.string	"level 1: congo"
.LC84:
	.string	"level 2: well of souls"
.LC85:
	.string	"level 3: aztec"
.LC86:
	.string	"level 4: caged"
.LC87:
	.string	"level 5: ghost town"
.LC88:
	.string	"level 6: baron's lair"
.LC89:
	.string	"level 7: caughtyard"
.LC90:
	.string	"level 8: realm"
.LC91:
	.string	"level 9: abattoire"
.LC92:
	.string	"level 10: onslaught"
.LC93:
	.string	"level 11: hunted"
.LC94:
	.string	"level 12: speed"
.LC95:
	.string	"level 13: the crypt"
.LC96:
	.string	"level 14: genesis"
.LC97:
	.string	"level 15: the twilight"
.LC98:
	.string	"level 16: the omen"
.LC99:
	.string	"level 17: compound"
.LC100:
	.string	"level 18: neurosphere"
.LC101:
	.string	"level 19: nme"
.LC102:
	.string	"level 20: the death domain"
.LC103:
	.string	"level 21: slayer"
.LC104:
	.string	"level 22: impossible mission"
.LC105:
	.string	"level 23: tombstone"
.LC106:
	.string	"level 24: the final frontier"
	.align 8
.LC107:
	.string	"level 25: the temple of darkness"
.LC108:
	.string	"level 26: bunker"
.LC109:
	.string	"level 27: anti-christ"
.LC110:
	.string	"level 28: the sewers"
.LC111:
	.string	"level 29: odyssey of noises"
.LC112:
	.string	"level 30: the gateway of hell"
.LC113:
	.string	"level 31: cyberden"
.LC114:
	.string	"level 32: go 2 it"
	.section	.data.rel.local
	.align 32
	.type	mapnamesp, @object
	.size	mapnamesp, 256
mapnamesp:
	.quad	.LC83
	.quad	.LC84
	.quad	.LC85
	.quad	.LC86
	.quad	.LC87
	.quad	.LC88
	.quad	.LC89
	.quad	.LC90
	.quad	.LC91
	.quad	.LC92
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC99
	.quad	.LC100
	.quad	.LC101
	.quad	.LC102
	.quad	.LC103
	.quad	.LC104
	.quad	.LC105
	.quad	.LC106
	.quad	.LC107
	.quad	.LC108
	.quad	.LC109
	.quad	.LC110
	.quad	.LC111
	.quad	.LC112
	.quad	.LC113
	.quad	.LC114
	.globl	mapnamest
	.section	.rodata
.LC115:
	.string	"level 1: system control"
.LC116:
	.string	"level 2: human bbq"
.LC117:
	.string	"level 3: power control"
.LC118:
	.string	"level 4: wormhole"
.LC119:
	.string	"level 5: hanger"
.LC120:
	.string	"level 6: open season"
.LC121:
	.string	"level 7: prison"
.LC122:
	.string	"level 8: metal"
.LC123:
	.string	"level 9: stronghold"
.LC124:
	.string	"level 10: redemption"
.LC125:
	.string	"level 11: storage facility"
.LC126:
	.string	"level 12: crater"
.LC127:
	.string	"level 13: nukage processing"
.LC128:
	.string	"level 14: steel works"
.LC129:
	.string	"level 15: dead zone"
.LC130:
	.string	"level 16: deepest reaches"
.LC131:
	.string	"level 17: processing area"
.LC132:
	.string	"level 18: mill"
.LC133:
	.string	"level 19: shipping/respawning"
.LC134:
	.string	"level 20: central processing"
	.align 8
.LC135:
	.string	"level 21: administration center"
.LC136:
	.string	"level 22: habitat"
	.align 8
.LC137:
	.string	"level 23: lunar mining project"
.LC138:
	.string	"level 24: quarry"
.LC139:
	.string	"level 25: baron's den"
.LC140:
	.string	"level 26: ballistyx"
.LC141:
	.string	"level 27: mount pain"
.LC142:
	.string	"level 28: heck"
.LC143:
	.string	"level 29: river styx"
.LC144:
	.string	"level 30: last call"
.LC145:
	.string	"level 31: pharaoh"
.LC146:
	.string	"level 32: caribbean"
	.section	.data.rel.local
	.align 32
	.type	mapnamest, @object
	.size	mapnamest, 256
mapnamest:
	.quad	.LC115
	.quad	.LC116
	.quad	.LC117
	.quad	.LC118
	.quad	.LC119
	.quad	.LC120
	.quad	.LC121
	.quad	.LC122
	.quad	.LC123
	.quad	.LC124
	.quad	.LC125
	.quad	.LC126
	.quad	.LC127
	.quad	.LC128
	.quad	.LC129
	.quad	.LC130
	.quad	.LC131
	.quad	.LC132
	.quad	.LC133
	.quad	.LC134
	.quad	.LC135
	.quad	.LC136
	.quad	.LC137
	.quad	.LC138
	.quad	.LC139
	.quad	.LC140
	.quad	.LC141
	.quad	.LC142
	.quad	.LC143
	.quad	.LC144
	.quad	.LC145
	.quad	.LC146
	.globl	shiftxform
	.bss
	.align 8
	.type	shiftxform, @object
	.size	shiftxform, 8
shiftxform:
	.zero	8
	.globl	french_shiftxform
	.section	.rodata
	.align 32
	.type	french_shiftxform, @object
	.size	french_shiftxform, 128
french_shiftxform:
	.string	""
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.ascii	"\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&"
	.ascii	"\"()*+?_>?0123456789/.<+>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[!]\"_'"
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\177"
	.globl	english_shiftxform
	.align 32
	.type	english_shiftxform, @object
	.size	english_shiftxform, 128
english_shiftxform:
	.string	""
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.ascii	"\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&"
	.ascii	"\"()*+<_>?)!@#$%^&*(::<+>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[!]\"_'"
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\177"
	.globl	frenchKeyMap
	.data
	.align 32
	.type	frenchKeyMap, @object
	.size	frenchKeyMap, 128
frenchKeyMap:
	.string	""
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022"
	.ascii	"\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&"
	.ascii	"%()*+;-:!0123456789:M<=>?@QBCDEFGHIJKL,NOPARSTUVZXYW^\\$^_@Q"
	.ascii	"BCDEFGHIJKL,NOPARSTUVZXYW^\\$^\177"
	.text
	.globl	ForeignTranslation
	.type	ForeignTranslation, @function
ForeignTranslation:
.LFB0:
	.file 1 "hu_stuff.c"
	.loc 1 388 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# ch, tmp86
	movb	%al, -4(%rbp)	# tmp87, ch
# hu_stuff.c:389:     return ch < 128 ? frenchKeyMap[ch] : ch;
	.loc 1 389 15
	movzbl	-4(%rbp), %eax	# ch, ch.1_1
# hu_stuff.c:389:     return ch < 128 ? frenchKeyMap[ch] : ch;
	.loc 1 389 40
	testb	%al, %al	# ch.1_1
	js	.L2	#,
# hu_stuff.c:389:     return ch < 128 ? frenchKeyMap[ch] : ch;
	.loc 1 389 35 discriminator 1
	movzbl	-4(%rbp), %eax	# ch, _2
# hu_stuff.c:389:     return ch < 128 ? frenchKeyMap[ch] : ch;
	.loc 1 389 40 discriminator 1
	cltq
	leaq	frenchKeyMap(%rip), %rdx	#, tmp89
	movzbl	(%rax,%rdx), %eax	# frenchKeyMap[_2], iftmp.0_3
# hu_stuff.c:389:     return ch < 128 ? frenchKeyMap[ch] : ch;
	.loc 1 389 40 is_stmt 0
	jmp	.L4	#
.L2:
# hu_stuff.c:389:     return ch < 128 ? frenchKeyMap[ch] : ch;
	.loc 1 389 40 discriminator 2
	movzbl	-4(%rbp), %eax	# ch, iftmp.0_3
.L4:
# hu_stuff.c:390: }
	.loc 1 390 1 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	ForeignTranslation, .-ForeignTranslation
	.section	.rodata
.LC147:
	.string	"STCFN%.3d"
	.text
	.globl	HU_Init
	.type	HU_Init, @function
HU_Init:
.LFB1:
	.loc 1 393 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# hu_stuff.c:393: {
	.loc 1 393 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	movq	%rax, -8(%rbp)	# tmp93, D.7282
	xorl	%eax, %eax	# tmp93
# hu_stuff.c:400: 	shiftxform = french_shiftxform;
	.loc 1 400 13
	leaq	french_shiftxform(%rip), %rax	#, tmp84
	movq	%rax, shiftxform(%rip)	# tmp84, shiftxform
# hu_stuff.c:405:     j = HU_FONTSTART;
	.loc 1 405 7
	movl	$33, -24(%rbp)	#, j
# hu_stuff.c:406:     for (i=0;i<HU_FONTSIZE;i++)
	.loc 1 406 11
	movl	$0, -28(%rbp)	#, i
# hu_stuff.c:406:     for (i=0;i<HU_FONTSIZE;i++)
	.loc 1 406 5
	jmp	.L6	#
.L7:
# hu_stuff.c:408: 	sprintf(buffer, "STCFN%.3d", j++);
	.loc 1 408 2
	movl	-24(%rbp), %eax	# j, j.2_1
	leal	1(%rax), %edx	#, tmp85
	movl	%edx, -24(%rbp)	# tmp85, j
	leaq	-17(%rbp), %rcx	#, tmp86
	movl	%eax, %edx	# j.2_1,
	leaq	.LC147(%rip), %rax	#, tmp87
	movq	%rax, %rsi	# tmp87,
	movq	%rcx, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# hu_stuff.c:409: 	hu_font[i] = (patch_t *) W_CacheLumpName(buffer, PU_STATIC);
	.loc 1 409 27
	leaq	-17(%rbp), %rax	#, tmp88
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	W_CacheLumpName@PLT	#
# hu_stuff.c:409: 	hu_font[i] = (patch_t *) W_CacheLumpName(buffer, PU_STATIC);
	.loc 1 409 13 discriminator 1
	movl	-28(%rbp), %edx	# i, tmp90
	movslq	%edx, %rdx	# tmp90, tmp89
	leaq	0(,%rdx,8), %rcx	#, tmp91
	leaq	hu_font(%rip), %rdx	#, tmp92
	movq	%rax, (%rcx,%rdx)	# _2, hu_font[i_3]
# hu_stuff.c:406:     for (i=0;i<HU_FONTSIZE;i++)
	.loc 1 406 29 discriminator 3
	addl	$1, -28(%rbp)	#, i
.L6:
# hu_stuff.c:406:     for (i=0;i<HU_FONTSIZE;i++)
	.loc 1 406 15 discriminator 1
	cmpl	$62, -28(%rbp)	#, i
	jle	.L7	#,
# hu_stuff.c:412: }
	.loc 1 412 1
	nop	
	movq	-8(%rbp), %rax	# D.7282, tmp94
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp94
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	HU_Init, .-HU_Init
	.globl	HU_Stop
	.type	HU_Stop, @function
HU_Stop:
.LFB2:
	.loc 1 415 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# hu_stuff.c:416:     headsupactive = false;
	.loc 1 416 19
	movl	$0, headsupactive(%rip)	#, headsupactive
# hu_stuff.c:417: }
	.loc 1 417 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	HU_Stop, .-HU_Stop
	.globl	HU_Start
	.type	HU_Start, @function
HU_Start:
.LFB3:
	.loc 1 420 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# hu_stuff.c:425:     if (headsupactive)
	.loc 1 425 9
	movl	headsupactive(%rip), %eax	# headsupactive, headsupactive.3_1
# hu_stuff.c:425:     if (headsupactive)
	.loc 1 425 8
	testl	%eax, %eax	# headsupactive.3_1
	je	.L11	#,
# hu_stuff.c:426: 	HU_Stop();
	.loc 1 426 2
	call	HU_Stop	#
.L11:
# hu_stuff.c:428:     plr = &players[consoleplayer];
	.loc 1 428 19
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.4_2
# hu_stuff.c:428:     plr = &players[consoleplayer];
	.loc 1 428 11
	movslq	%eax, %rdx	# consoleplayer.4_2, tmp107
	movq	%rdx, %rax	# tmp107, tmp108
	salq	$2, %rax	#, tmp108
	addq	%rdx, %rax	# tmp107, tmp108
	salq	$6, %rax	#, tmp109
	leaq	players(%rip), %rdx	#, tmp110
	addq	%rdx, %rax	# tmp110, _3
# hu_stuff.c:428:     plr = &players[consoleplayer];
	.loc 1 428 9
	movq	%rax, plr(%rip)	# _3, plr
# hu_stuff.c:429:     message_on = false;
	.loc 1 429 16
	movl	$0, message_on(%rip)	#, message_on
# hu_stuff.c:430:     message_dontfuckwithme = false;
	.loc 1 430 28
	movl	$0, message_dontfuckwithme(%rip)	#, message_dontfuckwithme
# hu_stuff.c:431:     message_nottobefuckedwith = false;
	.loc 1 431 31
	movl	$0, message_nottobefuckedwith(%rip)	#, message_nottobefuckedwith
# hu_stuff.c:432:     chat_on = false;
	.loc 1 432 13
	movl	$0, chat_on(%rip)	#, chat_on
# hu_stuff.c:435:     HUlib_initSText(&w_message,
	.loc 1 435 5
	subq	$8, %rsp	#,
	leaq	message_on(%rip), %rax	#, tmp111
	pushq	%rax	# tmp111
	movl	$33, %r9d	#,
	leaq	hu_font(%rip), %r8	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	leaq	w_message(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	HUlib_initSText@PLT	#
	addq	$16, %rsp	#,
# hu_stuff.c:442: 		       HU_TITLEX, HU_TITLEY,
	.loc 1 442 21
	movq	hu_font(%rip), %rax	# hu_font[0], _4
	movzwl	2(%rax), %eax	# _4->height, _5
	movswl	%ax, %edx	# _5, _6
# hu_stuff.c:441:     HUlib_initTextLine(&w_title,
	.loc 1 441 5
	movl	$167, %eax	#, tmp113
	subl	%edx, %eax	# _6, _7
	movl	$33, %r8d	#,
	leaq	hu_font(%rip), %rdx	#, tmp114
	movq	%rdx, %rcx	# tmp114,
	movl	%eax, %edx	# _7,
	movl	$0, %esi	#,
	leaq	w_title(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	HUlib_initTextLine@PLT	#
# hu_stuff.c:446:     switch ( gamemode )
	.loc 1 446 5
	movl	gamemode(%rip), %eax	# gamemode, gamemode.5_8
	cmpl	$1, %eax	#, gamemode.5_8
	jbe	.L12	#,
	cmpl	$3, %eax	#, gamemode.5_8
	jne	.L13	#,
.L12:
# hu_stuff.c:451: 	s = HU_TITLE;
	.loc 1 451 6
	movl	gameepisode(%rip), %eax	# gameepisode, gameepisode.6_9
	leal	-1(%rax), %edx	#, _10
	movl	%edx, %eax	# _10, tmp116
	sall	$3, %eax	#, tmp116
	addl	%eax, %edx	# tmp116, _11
	movl	gamemap(%rip), %eax	# gamemap, gamemap.7_12
	addl	%edx, %eax	# _11, _13
	subl	$1, %eax	#, _14
# hu_stuff.c:451: 	s = HU_TITLE;
	.loc 1 451 4
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp118
	leaq	mapnames(%rip), %rax	#, tmp119
	movq	(%rdx,%rax), %rax	# mapnames[_14], tmp120
	movq	%rax, -8(%rbp)	# tmp120, s
# hu_stuff.c:452: 	break;
	.loc 1 452 2
	jmp	.L14	#
.L13:
# hu_stuff.c:465: 	 s = HU_TITLE2;
	.loc 1 465 7
	movl	gamemap(%rip), %eax	# gamemap, gamemap.8_15
	subl	$1, %eax	#, _16
# hu_stuff.c:465: 	 s = HU_TITLE2;
	.loc 1 465 5
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp122
	leaq	mapnames2(%rip), %rax	#, tmp123
	movq	(%rdx,%rax), %rax	# mapnames2[_16], tmp124
	movq	%rax, -8(%rbp)	# tmp124, s
# hu_stuff.c:466: 	 break;
	.loc 1 466 3
	nop	
.L14:
# hu_stuff.c:469:     while (*s)
	.loc 1 469 11
	jmp	.L15	#
.L16:
# hu_stuff.c:470: 	HUlib_addCharToTextLine(&w_title, *(s++));
	.loc 1 470 39
	movq	-8(%rbp), %rax	# s, s.9_17
	leaq	1(%rax), %rdx	#, tmp125
	movq	%rdx, -8(%rbp)	# tmp125, s
# hu_stuff.c:470: 	HUlib_addCharToTextLine(&w_title, *(s++));
	.loc 1 470 36
	movzbl	(%rax), %eax	# *s.9_17, _18
# hu_stuff.c:470: 	HUlib_addCharToTextLine(&w_title, *(s++));
	.loc 1 470 2
	movsbl	%al, %eax	# _18, _19
	movl	%eax, %esi	# _19,
	leaq	w_title(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	HUlib_addCharToTextLine@PLT	#
.L15:
# hu_stuff.c:469:     while (*s)
	.loc 1 469 12
	movq	-8(%rbp), %rax	# s, tmp127
	movzbl	(%rax), %eax	# *s_28, _20
	testb	%al, %al	# _20
	jne	.L16	#,
# hu_stuff.c:474: 		    HU_INPUTX, HU_INPUTY,
	.loc 1 474 18
	movq	hu_font(%rip), %rax	# hu_font[0], _21
	movzwl	2(%rax), %eax	# _21->height, _22
	cwtl
# hu_stuff.c:473:     HUlib_initIText(&w_chat,
	.loc 1 473 5
	addl	$1, %eax	#, _24
	leaq	chat_on(%rip), %r9	#,
	movl	$33, %r8d	#,
	leaq	hu_font(%rip), %rdx	#, tmp128
	movq	%rdx, %rcx	# tmp128,
	movl	%eax, %edx	# _24,
	movl	$0, %esi	#,
	leaq	w_chat(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	HUlib_initIText@PLT	#
# hu_stuff.c:479:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 479 11
	movl	$0, -12(%rbp)	#, i
# hu_stuff.c:479:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 479 5
	jmp	.L17	#
.L18:
# hu_stuff.c:480: 	HUlib_initIText(&w_inputbuffer[i], 0, 0, 0, 0, &always_off);
	.loc 1 480 2
	movl	-12(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, tmp130
	movq	%rdx, %rax	# tmp130, tmp132
	salq	$4, %rax	#, tmp133
	addq	%rdx, %rax	# tmp130, tmp132
	salq	$3, %rax	#, tmp134
	leaq	w_inputbuffer(%rip), %rdx	#, tmp135
	addq	%rdx, %rax	# tmp135, _25
	leaq	always_off(%rip), %r9	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _25,
	call	HUlib_initIText@PLT	#
# hu_stuff.c:479:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 479 32 discriminator 3
	addl	$1, -12(%rbp)	#, i
.L17:
# hu_stuff.c:479:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 479 17 discriminator 1
	cmpl	$3, -12(%rbp)	#, i
	jle	.L18	#,
# hu_stuff.c:482:     headsupactive = true;
	.loc 1 482 19
	movl	$1, headsupactive(%rip)	#, headsupactive
# hu_stuff.c:484: }
	.loc 1 484 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	HU_Start, .-HU_Start
	.globl	HU_Drawer
	.type	HU_Drawer, @function
HU_Drawer:
.LFB4:
	.loc 1 487 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# hu_stuff.c:489:     HUlib_drawSText(&w_message);
	.loc 1 489 5
	leaq	w_message(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	HUlib_drawSText@PLT	#
# hu_stuff.c:490:     HUlib_drawIText(&w_chat);
	.loc 1 490 5
	leaq	w_chat(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	HUlib_drawIText@PLT	#
# hu_stuff.c:491:     if (automapactive)
	.loc 1 491 9
	movl	automapactive(%rip), %eax	# automapactive, automapactive.10_1
# hu_stuff.c:491:     if (automapactive)
	.loc 1 491 8
	testl	%eax, %eax	# automapactive.10_1
	je	.L21	#,
# hu_stuff.c:492: 	HUlib_drawTextLine(&w_title, false);
	.loc 1 492 2
	movl	$0, %esi	#,
	leaq	w_title(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	HUlib_drawTextLine@PLT	#
.L21:
# hu_stuff.c:494: }
	.loc 1 494 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	HU_Drawer, .-HU_Drawer
	.globl	HU_Erase
	.type	HU_Erase, @function
HU_Erase:
.LFB5:
	.loc 1 497 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# hu_stuff.c:499:     HUlib_eraseSText(&w_message);
	.loc 1 499 5
	leaq	w_message(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	HUlib_eraseSText@PLT	#
# hu_stuff.c:500:     HUlib_eraseIText(&w_chat);
	.loc 1 500 5
	leaq	w_chat(%rip), %rax	#, tmp83
	movq	%rax, %rdi	# tmp83,
	call	HUlib_eraseIText@PLT	#
# hu_stuff.c:501:     HUlib_eraseTextLine(&w_title);
	.loc 1 501 5
	leaq	w_title(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	call	HUlib_eraseTextLine@PLT	#
# hu_stuff.c:503: }
	.loc 1 503 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	HU_Erase, .-HU_Erase
	.globl	HU_Ticker
	.type	HU_Ticker, @function
HU_Ticker:
.LFB6:
	.loc 1 506 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# hu_stuff.c:512:     if (message_counter && !--message_counter)
	.loc 1 512 9
	movl	message_counter(%rip), %eax	# message_counter, message_counter.11_1
# hu_stuff.c:512:     if (message_counter && !--message_counter)
	.loc 1 512 8
	testl	%eax, %eax	# message_counter.11_1
	je	.L24	#,
# hu_stuff.c:512:     if (message_counter && !--message_counter)
	.loc 1 512 29 discriminator 1
	movl	message_counter(%rip), %eax	# message_counter, message_counter.12_2
	subl	$1, %eax	#, _3
# hu_stuff.c:512:     if (message_counter && !--message_counter)
	.loc 1 512 25 discriminator 1
	movl	%eax, message_counter(%rip)	# _3, message_counter
# hu_stuff.c:512:     if (message_counter && !--message_counter)
	.loc 1 512 29 discriminator 1
	movl	message_counter(%rip), %eax	# message_counter, message_counter.13_4
# hu_stuff.c:512:     if (message_counter && !--message_counter)
	.loc 1 512 25 discriminator 1
	testl	%eax, %eax	# message_counter.13_4
	jne	.L24	#,
# hu_stuff.c:514: 	message_on = false;
	.loc 1 514 13
	movl	$0, message_on(%rip)	#, message_on
# hu_stuff.c:515: 	message_nottobefuckedwith = false;
	.loc 1 515 28
	movl	$0, message_nottobefuckedwith(%rip)	#, message_nottobefuckedwith
.L24:
# hu_stuff.c:518:     if (showMessages || message_dontfuckwithme)
	.loc 1 518 9
	movl	showMessages(%rip), %eax	# showMessages, showMessages.14_5
# hu_stuff.c:518:     if (showMessages || message_dontfuckwithme)
	.loc 1 518 8
	testl	%eax, %eax	# showMessages.14_5
	jne	.L25	#,
# hu_stuff.c:518:     if (showMessages || message_dontfuckwithme)
	.loc 1 518 22 discriminator 1
	movl	message_dontfuckwithme(%rip), %eax	# message_dontfuckwithme, message_dontfuckwithme.15_6
	testl	%eax, %eax	# message_dontfuckwithme.15_6
	je	.L26	#,
.L25:
# hu_stuff.c:522: 	if ((plr->message && !message_nottobefuckedwith)
	.loc 1 522 10
	movq	plr(%rip), %rax	# plr, plr.16_7
	movq	224(%rax), %rax	# plr.16_7->message, _8
# hu_stuff.c:522: 	if ((plr->message && !message_nottobefuckedwith)
	.loc 1 522 5
	testq	%rax, %rax	# _8
	je	.L27	#,
# hu_stuff.c:522: 	if ((plr->message && !message_nottobefuckedwith)
	.loc 1 522 23 discriminator 1
	movl	message_nottobefuckedwith(%rip), %eax	# message_nottobefuckedwith, message_nottobefuckedwith.17_9
# hu_stuff.c:522: 	if ((plr->message && !message_nottobefuckedwith)
	.loc 1 522 20 discriminator 1
	testl	%eax, %eax	# message_nottobefuckedwith.17_9
	je	.L28	#,
.L27:
# hu_stuff.c:523: 	    || (plr->message && message_dontfuckwithme))
	.loc 1 523 13
	movq	plr(%rip), %rax	# plr, plr.18_10
	movq	224(%rax), %rax	# plr.18_10->message, _11
# hu_stuff.c:523: 	    || (plr->message && message_dontfuckwithme))
	.loc 1 523 6
	testq	%rax, %rax	# _11
	je	.L26	#,
# hu_stuff.c:523: 	    || (plr->message && message_dontfuckwithme))
	.loc 1 523 23 discriminator 1
	movl	message_dontfuckwithme(%rip), %eax	# message_dontfuckwithme, message_dontfuckwithme.19_12
	testl	%eax, %eax	# message_dontfuckwithme.19_12
	je	.L26	#,
.L28:
# hu_stuff.c:525: 	    HUlib_addMessageToSText(&w_message, 0, plr->message);
	.loc 1 525 48
	movq	plr(%rip), %rax	# plr, plr.20_13
# hu_stuff.c:525: 	    HUlib_addMessageToSText(&w_message, 0, plr->message);
	.loc 1 525 6
	movq	224(%rax), %rax	# plr.20_13->message, _14
	movq	%rax, %rdx	# _14,
	movl	$0, %esi	#,
	leaq	w_message(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	HUlib_addMessageToSText@PLT	#
# hu_stuff.c:526: 	    plr->message = 0;
	.loc 1 526 9
	movq	plr(%rip), %rax	# plr, plr.21_15
# hu_stuff.c:526: 	    plr->message = 0;
	.loc 1 526 19
	movq	$0, 224(%rax)	#, plr.21_15->message
# hu_stuff.c:527: 	    message_on = true;
	.loc 1 527 17
	movl	$1, message_on(%rip)	#, message_on
# hu_stuff.c:528: 	    message_counter = HU_MSGTIMEOUT;
	.loc 1 528 22
	movl	$140, message_counter(%rip)	#, message_counter
# hu_stuff.c:529: 	    message_nottobefuckedwith = message_dontfuckwithme;
	.loc 1 529 32
	movl	message_dontfuckwithme(%rip), %eax	# message_dontfuckwithme, message_dontfuckwithme.22_16
	movl	%eax, message_nottobefuckedwith(%rip)	# message_dontfuckwithme.22_16, message_nottobefuckedwith
# hu_stuff.c:530: 	    message_dontfuckwithme = 0;
	.loc 1 530 29
	movl	$0, message_dontfuckwithme(%rip)	#, message_dontfuckwithme
.L26:
# hu_stuff.c:536:     if (netgame)
	.loc 1 536 9
	movl	netgame(%rip), %eax	# netgame, netgame.23_17
# hu_stuff.c:536:     if (netgame)
	.loc 1 536 8
	testl	%eax, %eax	# netgame.23_17
	je	.L40	#,
# hu_stuff.c:538: 	for (i=0 ; i<MAXPLAYERS; i++)
	.loc 1 538 8
	movl	$0, -8(%rbp)	#, i
# hu_stuff.c:538: 	for (i=0 ; i<MAXPLAYERS; i++)
	.loc 1 538 2
	jmp	.L30	#
.L39:
# hu_stuff.c:540: 	    if (!playeringame[i])
	.loc 1 540 23
	movl	-8(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp123
	leaq	playeringame(%rip), %rax	#, tmp124
	movl	(%rdx,%rax), %eax	# playeringame[i_39], _18
# hu_stuff.c:540: 	    if (!playeringame[i])
	.loc 1 540 9
	testl	%eax, %eax	# _18
	je	.L41	#,
# hu_stuff.c:542: 	    if (i != consoleplayer
	.loc 1 542 12
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.24_19
# hu_stuff.c:542: 	    if (i != consoleplayer
	.loc 1 542 9
	cmpl	%eax, -8(%rbp)	# consoleplayer.24_19, i
	je	.L32	#,
# hu_stuff.c:543: 		&& (c = players[i].cmd.chatchar))
	.loc 1 543 25
	movl	-8(%rbp), %eax	# i, tmp126
	movslq	%eax, %rdx	# tmp126, tmp125
	movq	%rdx, %rax	# tmp125, tmp128
	salq	$2, %rax	#, tmp128
	addq	%rdx, %rax	# tmp125, tmp128
	salq	$6, %rax	#, tmp129
	movq	%rax, %rdx	# tmp128, tmp127
	leaq	18+players(%rip), %rax	#, tmp130
	movzbl	(%rdx,%rax), %eax	# players[i_39].cmd.chatchar, _20
# hu_stuff.c:543: 		&& (c = players[i].cmd.chatchar))
	.loc 1 543 9
	movb	%al, -9(%rbp)	# _20, c
# hu_stuff.c:543: 		&& (c = players[i].cmd.chatchar))
	.loc 1 543 3
	cmpb	$0, -9(%rbp)	#, c
	je	.L32	#,
# hu_stuff.c:545: 		if (c <= HU_BROADCAST)
	.loc 1 545 6
	cmpb	$5, -9(%rbp)	#, c
	jg	.L33	#,
# hu_stuff.c:546: 		    chat_dest[i] = c;
	.loc 1 546 20
	movl	-8(%rbp), %eax	# i, tmp132
	cltq
	leaq	chat_dest(%rip), %rcx	#, tmp133
	movzbl	-9(%rbp), %edx	# c, tmp134
	movb	%dl, (%rax,%rcx)	# tmp134, chat_dest[i_39]
	jmp	.L34	#
.L33:
# hu_stuff.c:549: 		    if (c >= 'a' && c <= 'z')
	.loc 1 549 10
	cmpb	$96, -9(%rbp)	#, c
	jle	.L35	#,
# hu_stuff.c:549: 		    if (c >= 'a' && c <= 'z')
	.loc 1 549 20 discriminator 1
	cmpb	$122, -9(%rbp)	#, c
	jg	.L35	#,
# hu_stuff.c:550: 			c = (char) shiftxform[(unsigned char) c];
	.loc 1 550 25
	movq	shiftxform(%rip), %rdx	# shiftxform, shiftxform.25_21
# hu_stuff.c:550: 			c = (char) shiftxform[(unsigned char) c];
	.loc 1 550 26
	movzbl	-9(%rbp), %eax	# c, c.26_22
	movzbl	%al, %eax	# c.26_22, _23
# hu_stuff.c:550: 			c = (char) shiftxform[(unsigned char) c];
	.loc 1 550 25
	addq	%rdx, %rax	# shiftxform.25_21, _24
# hu_stuff.c:550: 			c = (char) shiftxform[(unsigned char) c];
	.loc 1 550 6
	movzbl	(%rax), %eax	# *_24, tmp135
	movb	%al, -9(%rbp)	# tmp135, c
.L35:
# hu_stuff.c:551: 		    rc = HUlib_keyInIText(&w_inputbuffer[i], c);
	.loc 1 551 12
	movzbl	-9(%rbp), %eax	# c, c.27_25
	movzbl	%al, %ecx	# c.27_25, _26
	movl	-8(%rbp), %eax	# i, tmp137
	movslq	%eax, %rdx	# tmp137, tmp136
	movq	%rdx, %rax	# tmp136, tmp138
	salq	$4, %rax	#, tmp139
	addq	%rdx, %rax	# tmp136, tmp138
	salq	$3, %rax	#, tmp140
	leaq	w_inputbuffer(%rip), %rdx	#, tmp141
	addq	%rdx, %rax	# tmp141, _27
	movl	%ecx, %esi	# _26,
	movq	%rax, %rdi	# _27,
	call	HUlib_keyInIText@PLT	#
# hu_stuff.c:551: 		    rc = HUlib_keyInIText(&w_inputbuffer[i], c);
	.loc 1 551 10 discriminator 1
	movl	%eax, -4(%rbp)	# _28, rc
# hu_stuff.c:552: 		    if (rc && c == KEY_ENTER)
	.loc 1 552 10
	cmpl	$0, -4(%rbp)	#, rc
	je	.L34	#,
# hu_stuff.c:552: 		    if (rc && c == KEY_ENTER)
	.loc 1 552 14 discriminator 1
	cmpb	$13, -9(%rbp)	#, c
	jne	.L34	#,
# hu_stuff.c:554: 			if (w_inputbuffer[i].l.len
	.loc 1 554 26
	movl	-8(%rbp), %eax	# i, tmp143
	movslq	%eax, %rdx	# tmp143, tmp142
	movq	%rdx, %rax	# tmp142, tmp145
	salq	$4, %rax	#, tmp146
	addq	%rdx, %rax	# tmp142, tmp145
	salq	$3, %rax	#, tmp147
	movq	%rax, %rdx	# tmp145, tmp144
	leaq	104+w_inputbuffer(%rip), %rax	#, tmp148
	movl	(%rdx,%rax), %eax	# w_inputbuffer[i_39].l.len, _29
# hu_stuff.c:554: 			if (w_inputbuffer[i].l.len
	.loc 1 554 7
	testl	%eax, %eax	# _29
	je	.L36	#,
# hu_stuff.c:555: 			    && (chat_dest[i] == consoleplayer+1
	.loc 1 555 21
	movl	-8(%rbp), %eax	# i, tmp150
	cltq
	leaq	chat_dest(%rip), %rdx	#, tmp151
	movzbl	(%rax,%rdx), %eax	# chat_dest[i_39], _30
	movsbl	%al, %edx	# _30, _31
# hu_stuff.c:555: 			    && (chat_dest[i] == consoleplayer+1
	.loc 1 555 41
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.28_32
	addl	$1, %eax	#, _33
# hu_stuff.c:555: 			    && (chat_dest[i] == consoleplayer+1
	.loc 1 555 8
	cmpl	%eax, %edx	# _33, _31
	je	.L37	#,
# hu_stuff.c:556: 				|| chat_dest[i] == HU_BROADCAST))
	.loc 1 556 17
	movl	-8(%rbp), %eax	# i, tmp153
	cltq
	leaq	chat_dest(%rip), %rdx	#, tmp154
	movzbl	(%rax,%rdx), %eax	# chat_dest[i_39], _34
# hu_stuff.c:556: 				|| chat_dest[i] == HU_BROADCAST))
	.loc 1 556 5
	cmpb	$5, %al	#, _34
	jne	.L36	#,
.L37:
# hu_stuff.c:560: 						    w_inputbuffer[i].l.l);
	.loc 1 560 29
	movl	-8(%rbp), %eax	# i, tmp156
	movslq	%eax, %rdx	# tmp156, tmp155
	movq	%rdx, %rax	# tmp155, tmp157
	salq	$4, %rax	#, tmp158
	addq	%rdx, %rax	# tmp155, tmp157
	salq	$3, %rax	#, tmp159
	leaq	16(%rax), %rdx	#, tmp160
	leaq	w_inputbuffer(%rip), %rax	#, tmp162
	addq	%rdx, %rax	# tmp160, tmp161
	leaq	4(%rax), %rdx	#, _35
# hu_stuff.c:558: 			    HUlib_addMessageToSText(&w_message,
	.loc 1 558 8
	movl	-8(%rbp), %eax	# i, tmp164
	cltq
	leaq	0(,%rax,8), %rcx	#, tmp165
	leaq	player_names(%rip), %rax	#, tmp166
	movq	(%rcx,%rax), %rax	# player_names[i_39], _36
	movq	%rax, %rsi	# _36,
	leaq	w_message(%rip), %rax	#, tmp167
	movq	%rax, %rdi	# tmp167,
	call	HUlib_addMessageToSText@PLT	#
# hu_stuff.c:562: 			    message_nottobefuckedwith = true;
	.loc 1 562 34
	movl	$1, message_nottobefuckedwith(%rip)	#, message_nottobefuckedwith
# hu_stuff.c:563: 			    message_on = true;
	.loc 1 563 19
	movl	$1, message_on(%rip)	#, message_on
# hu_stuff.c:564: 			    message_counter = HU_MSGTIMEOUT;
	.loc 1 564 24
	movl	$140, message_counter(%rip)	#, message_counter
# hu_stuff.c:565: 			    if ( gamemode == commercial )
	.loc 1 565 22
	movl	gamemode(%rip), %eax	# gamemode, gamemode.29_37
# hu_stuff.c:565: 			    if ( gamemode == commercial )
	.loc 1 565 11
	cmpl	$2, %eax	#, gamemode.29_37
	jne	.L38	#,
# hu_stuff.c:566: 			      S_StartSound(0, sfx_radio);
	.loc 1 566 10
	movl	$108, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
	jmp	.L36	#
.L38:
# hu_stuff.c:568: 			      S_StartSound(0, sfx_tink);
	.loc 1 568 10
	movl	$87, %esi	#,
	movl	$0, %edi	#,
	call	S_StartSound@PLT	#
.L36:
# hu_stuff.c:570: 			HUlib_resetIText(&w_inputbuffer[i]);
	.loc 1 570 4
	movl	-8(%rbp), %eax	# i, tmp169
	movslq	%eax, %rdx	# tmp169, tmp168
	movq	%rdx, %rax	# tmp168, tmp170
	salq	$4, %rax	#, tmp171
	addq	%rdx, %rax	# tmp168, tmp170
	salq	$3, %rax	#, tmp172
	leaq	w_inputbuffer(%rip), %rdx	#, tmp173
	addq	%rdx, %rax	# tmp173, _38
	movq	%rax, %rdi	# _38,
	call	HUlib_resetIText@PLT	#
.L34:
# hu_stuff.c:573: 		players[i].cmd.chatchar = 0;
	.loc 1 573 27
	movl	-8(%rbp), %eax	# i, tmp175
	movslq	%eax, %rdx	# tmp175, tmp174
	movq	%rdx, %rax	# tmp174, tmp177
	salq	$2, %rax	#, tmp177
	addq	%rdx, %rax	# tmp174, tmp177
	salq	$6, %rax	#, tmp178
	movq	%rax, %rdx	# tmp177, tmp176
	leaq	18+players(%rip), %rax	#, tmp179
	movb	$0, (%rdx,%rax)	#, players[i_39].cmd.chatchar
	jmp	.L32	#
.L41:
# hu_stuff.c:541: 		continue;
	.loc 1 541 3
	nop	
.L32:
# hu_stuff.c:538: 	for (i=0 ; i<MAXPLAYERS; i++)
	.loc 1 538 28 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L30:
# hu_stuff.c:538: 	for (i=0 ; i<MAXPLAYERS; i++)
	.loc 1 538 14 discriminator 1
	cmpl	$3, -8(%rbp)	#, i
	jle	.L39	#,
.L40:
# hu_stuff.c:578: }
	.loc 1 578 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	HU_Ticker, .-HU_Ticker
	.local	chatchars
	.comm	chatchars,128,32
	.local	head
	.comm	head,4,4
	.local	tail
	.comm	tail,4,4
	.section	.rodata
.LC148:
	.string	"[Message unsent]"
	.text
	.globl	HU_queueChatChar
	.type	HU_queueChatChar, @function
HU_queueChatChar:
.LFB7:
	.loc 1 588 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# c, tmp91
	movb	%al, -4(%rbp)	# tmp92, c
# hu_stuff.c:589:     if (((head + 1) & (QUEUESIZE-1)) == tail)
	.loc 1 589 16
	movl	head(%rip), %eax	# head, head.30_1
	addl	$1, %eax	#, _2
# hu_stuff.c:589:     if (((head + 1) & (QUEUESIZE-1)) == tail)
	.loc 1 589 21
	andl	$127, %eax	#, _2
	movl	%eax, %edx	# _2, _3
# hu_stuff.c:589:     if (((head + 1) & (QUEUESIZE-1)) == tail)
	.loc 1 589 38
	movl	tail(%rip), %eax	# tail, tail.31_4
# hu_stuff.c:589:     if (((head + 1) & (QUEUESIZE-1)) == tail)
	.loc 1 589 8
	cmpl	%eax, %edx	# tail.31_4, _3
	jne	.L43	#,
# hu_stuff.c:591: 	plr->message = HUSTR_MSGU;
	.loc 1 591 5
	movq	plr(%rip), %rax	# plr, plr.32_5
# hu_stuff.c:591: 	plr->message = HUSTR_MSGU;
	.loc 1 591 15
	leaq	.LC148(%rip), %rdx	#, tmp93
	movq	%rdx, 224(%rax)	# tmp93, plr.32_5->message
# hu_stuff.c:598: }
	.loc 1 598 1
	jmp	.L45	#
.L43:
# hu_stuff.c:595: 	chatchars[head] = c;
	.loc 1 595 11
	movl	head(%rip), %eax	# head, head.33_6
# hu_stuff.c:595: 	chatchars[head] = c;
	.loc 1 595 18
	cltq
	leaq	chatchars(%rip), %rcx	#, tmp95
	movzbl	-4(%rbp), %edx	# c, tmp96
	movb	%dl, (%rax,%rcx)	# tmp96, chatchars[head.33_6]
# hu_stuff.c:596: 	head = (head + 1) & (QUEUESIZE-1);
	.loc 1 596 15
	movl	head(%rip), %eax	# head, head.34_7
	addl	$1, %eax	#, _8
# hu_stuff.c:596: 	head = (head + 1) & (QUEUESIZE-1);
	.loc 1 596 20
	andl	$127, %eax	#, _9
# hu_stuff.c:596: 	head = (head + 1) & (QUEUESIZE-1);
	.loc 1 596 7
	movl	%eax, head(%rip)	# _9, head
.L45:
# hu_stuff.c:598: }
	.loc 1 598 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	HU_queueChatChar, .-HU_queueChatChar
	.globl	HU_dequeueChatChar
	.type	HU_dequeueChatChar, @function
HU_dequeueChatChar:
.LFB8:
	.loc 1 601 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# hu_stuff.c:604:     if (head != tail)
	.loc 1 604 14
	movl	head(%rip), %edx	# head, head.35_1
	movl	tail(%rip), %eax	# tail, tail.36_2
# hu_stuff.c:604:     if (head != tail)
	.loc 1 604 8
	cmpl	%eax, %edx	# tail.36_2, head.35_1
	je	.L47	#,
# hu_stuff.c:606: 	c = chatchars[tail];
	.loc 1 606 15
	movl	tail(%rip), %eax	# tail, tail.37_3
# hu_stuff.c:606: 	c = chatchars[tail];
	.loc 1 606 4
	cltq
	leaq	chatchars(%rip), %rdx	#, tmp91
	movzbl	(%rax,%rdx), %eax	# chatchars[tail.37_3], tmp92
	movb	%al, -1(%rbp)	# tmp92, c
# hu_stuff.c:607: 	tail = (tail + 1) & (QUEUESIZE-1);
	.loc 1 607 15
	movl	tail(%rip), %eax	# tail, tail.38_4
	addl	$1, %eax	#, _5
# hu_stuff.c:607: 	tail = (tail + 1) & (QUEUESIZE-1);
	.loc 1 607 20
	andl	$127, %eax	#, _6
# hu_stuff.c:607: 	tail = (tail + 1) & (QUEUESIZE-1);
	.loc 1 607 7
	movl	%eax, tail(%rip)	# _6, tail
	jmp	.L48	#
.L47:
# hu_stuff.c:611: 	c = 0;
	.loc 1 611 4
	movb	$0, -1(%rbp)	#, c
.L48:
# hu_stuff.c:614:     return c;
	.loc 1 614 12
	movzbl	-1(%rbp), %eax	# c, _13
# hu_stuff.c:615: }
	.loc 1 615 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	HU_dequeueChatChar, .-HU_dequeueChatChar
	.section	.rodata
.LC149:
	.string	"You mumble to yourself"
.LC150:
	.string	"Who's there?"
.LC151:
	.string	"You scare yourself"
.LC152:
	.string	"You start to rave"
.LC153:
	.string	"You've lost it..."
	.text
	.globl	HU_Responder
	.type	HU_Responder, @function
HU_Responder:
.LFB9:
	.loc 1 618 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# ev, ev
# hu_stuff.c:622:     boolean		eatkey = false;
	.loc 1 622 14
	movl	$0, -20(%rbp)	#, eatkey
# hu_stuff.c:639:     numplayers = 0;
	.loc 1 639 16
	movl	$0, -12(%rbp)	#, numplayers
# hu_stuff.c:640:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 640 11
	movl	$0, -16(%rbp)	#, i
# hu_stuff.c:640:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 640 5
	jmp	.L51	#
.L52:
# hu_stuff.c:641: 	numplayers += playeringame[i];
	.loc 1 641 28
	movl	-16(%rbp), %eax	# i, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp147
	leaq	playeringame(%rip), %rax	#, tmp148
	movl	(%rdx,%rax), %edx	# playeringame[i_66], _1
# hu_stuff.c:641: 	numplayers += playeringame[i];
	.loc 1 641 13
	movl	-12(%rbp), %eax	# numplayers, numplayers.39_2
	addl	%edx, %eax	# _1, _3
	movl	%eax, -12(%rbp)	# _3, numplayers
# hu_stuff.c:640:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 640 32 discriminator 3
	addl	$1, -16(%rbp)	#, i
.L51:
# hu_stuff.c:640:     for (i=0 ; i<MAXPLAYERS ; i++)
	.loc 1 640 17 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L52	#,
# hu_stuff.c:643:     if (ev->data1 == KEY_RSHIFT)
	.loc 1 643 11
	movq	-40(%rbp), %rax	# ev, tmp149
	movl	4(%rax), %eax	# ev_81(D)->data1, _4
# hu_stuff.c:643:     if (ev->data1 == KEY_RSHIFT)
	.loc 1 643 8
	cmpl	$182, %eax	#, _4
	jne	.L53	#,
# hu_stuff.c:645: 	shiftdown = ev->type == ev_keydown;
	.loc 1 645 16
	movq	-40(%rbp), %rax	# ev, tmp150
	movl	(%rax), %eax	# ev_81(D)->type, _5
# hu_stuff.c:645: 	shiftdown = ev->type == ev_keydown;
	.loc 1 645 23
	testl	%eax, %eax	# _5
	sete	%al	#, _6
	movzbl	%al, %eax	# _6, _7
# hu_stuff.c:645: 	shiftdown = ev->type == ev_keydown;
	.loc 1 645 12
	movl	%eax, shiftdown.4(%rip)	# _7, shiftdown
# hu_stuff.c:646: 	return false;
	.loc 1 646 9
	movl	$0, %eax	#, _69
	jmp	.L54	#
.L53:
# hu_stuff.c:648:     else if (ev->data1 == KEY_RALT || ev->data1 == KEY_LALT)
	.loc 1 648 16
	movq	-40(%rbp), %rax	# ev, tmp151
	movl	4(%rax), %eax	# ev_81(D)->data1, _8
# hu_stuff.c:648:     else if (ev->data1 == KEY_RALT || ev->data1 == KEY_LALT)
	.loc 1 648 13
	cmpl	$184, %eax	#, _8
	je	.L55	#,
# hu_stuff.c:648:     else if (ev->data1 == KEY_RALT || ev->data1 == KEY_LALT)
	.loc 1 648 41 discriminator 1
	movq	-40(%rbp), %rax	# ev, tmp152
	movl	4(%rax), %eax	# ev_81(D)->data1, _9
# hu_stuff.c:648:     else if (ev->data1 == KEY_RALT || ev->data1 == KEY_LALT)
	.loc 1 648 36 discriminator 1
	cmpl	$184, %eax	#, _9
	jne	.L56	#,
.L55:
# hu_stuff.c:650: 	altdown = ev->type == ev_keydown;
	.loc 1 650 14
	movq	-40(%rbp), %rax	# ev, tmp153
	movl	(%rax), %eax	# ev_81(D)->type, _10
# hu_stuff.c:650: 	altdown = ev->type == ev_keydown;
	.loc 1 650 21
	testl	%eax, %eax	# _10
	sete	%al	#, _11
	movzbl	%al, %eax	# _11, _12
# hu_stuff.c:650: 	altdown = ev->type == ev_keydown;
	.loc 1 650 10
	movl	%eax, altdown.3(%rip)	# _12, altdown
# hu_stuff.c:651: 	return false;
	.loc 1 651 9
	movl	$0, %eax	#, _69
	jmp	.L54	#
.L56:
# hu_stuff.c:654:     if (ev->type != ev_keydown)
	.loc 1 654 11
	movq	-40(%rbp), %rax	# ev, tmp154
	movl	(%rax), %eax	# ev_81(D)->type, _13
# hu_stuff.c:654:     if (ev->type != ev_keydown)
	.loc 1 654 8
	testl	%eax, %eax	# _13
	je	.L57	#,
# hu_stuff.c:655: 	return false;
	.loc 1 655 9
	movl	$0, %eax	#, _69
	jmp	.L54	#
.L57:
# hu_stuff.c:657:     if (!chat_on)
	.loc 1 657 9
	movl	chat_on(%rip), %eax	# chat_on, chat_on.40_14
# hu_stuff.c:657:     if (!chat_on)
	.loc 1 657 8
	testl	%eax, %eax	# chat_on.40_14
	jne	.L58	#,
# hu_stuff.c:659: 	if (ev->data1 == HU_MSGREFRESH)
	.loc 1 659 8
	movq	-40(%rbp), %rax	# ev, tmp155
	movl	4(%rax), %eax	# ev_81(D)->data1, _15
# hu_stuff.c:659: 	if (ev->data1 == HU_MSGREFRESH)
	.loc 1 659 5
	cmpl	$13, %eax	#, _15
	jne	.L59	#,
# hu_stuff.c:661: 	    message_on = true;
	.loc 1 661 17
	movl	$1, message_on(%rip)	#, message_on
# hu_stuff.c:662: 	    message_counter = HU_MSGTIMEOUT;
	.loc 1 662 22
	movl	$140, message_counter(%rip)	#, message_counter
# hu_stuff.c:663: 	    eatkey = true;
	.loc 1 663 13
	movl	$1, -20(%rbp)	#, eatkey
	jmp	.L70	#
.L59:
# hu_stuff.c:665: 	else if (netgame && ev->data1 == HU_INPUTTOGGLE)
	.loc 1 665 11
	movl	netgame(%rip), %eax	# netgame, netgame.41_16
# hu_stuff.c:665: 	else if (netgame && ev->data1 == HU_INPUTTOGGLE)
	.loc 1 665 10
	testl	%eax, %eax	# netgame.41_16
	je	.L61	#,
# hu_stuff.c:665: 	else if (netgame && ev->data1 == HU_INPUTTOGGLE)
	.loc 1 665 24 discriminator 1
	movq	-40(%rbp), %rax	# ev, tmp156
	movl	4(%rax), %eax	# ev_81(D)->data1, _17
# hu_stuff.c:665: 	else if (netgame && ev->data1 == HU_INPUTTOGGLE)
	.loc 1 665 19 discriminator 1
	cmpl	$116, %eax	#, _17
	jne	.L61	#,
# hu_stuff.c:667: 	    eatkey = chat_on = true;
	.loc 1 667 23
	movl	$1, chat_on(%rip)	#, chat_on
# hu_stuff.c:667: 	    eatkey = chat_on = true;
	.loc 1 667 13
	movl	chat_on(%rip), %eax	# chat_on, tmp157
	movl	%eax, -20(%rbp)	# tmp157, eatkey
# hu_stuff.c:668: 	    HUlib_resetIText(&w_chat);
	.loc 1 668 6
	leaq	w_chat(%rip), %rax	#, tmp158
	movq	%rax, %rdi	# tmp158,
	call	HUlib_resetIText@PLT	#
# hu_stuff.c:669: 	    HU_queueChatChar(HU_BROADCAST);
	.loc 1 669 6
	movl	$5, %edi	#,
	call	HU_queueChatChar	#
	jmp	.L70	#
.L61:
# hu_stuff.c:671: 	else if (netgame && numplayers > 2)
	.loc 1 671 11
	movl	netgame(%rip), %eax	# netgame, netgame.42_18
# hu_stuff.c:671: 	else if (netgame && numplayers > 2)
	.loc 1 671 10
	testl	%eax, %eax	# netgame.42_18
	je	.L70	#,
# hu_stuff.c:671: 	else if (netgame && numplayers > 2)
	.loc 1 671 19 discriminator 1
	cmpl	$2, -12(%rbp)	#, numplayers
	jle	.L70	#,
# hu_stuff.c:673: 	    for (i=0; i<MAXPLAYERS ; i++)
	.loc 1 673 12
	movl	$0, -16(%rbp)	#, i
# hu_stuff.c:673: 	    for (i=0; i<MAXPLAYERS ; i++)
	.loc 1 673 6
	jmp	.L62	#
.L69:
# hu_stuff.c:675: 		if (ev->data1 == destination_keys[i])
	.loc 1 675 9
	movq	-40(%rbp), %rax	# ev, tmp159
	movl	4(%rax), %edx	# ev_81(D)->data1, _19
# hu_stuff.c:675: 		if (ev->data1 == destination_keys[i])
	.loc 1 675 36
	movl	-16(%rbp), %eax	# i, tmp161
	cltq
	leaq	destination_keys.2(%rip), %rcx	#, tmp162
	movzbl	(%rax,%rcx), %eax	# destination_keys[i_67], _20
	movsbl	%al, %eax	# _20, _21
# hu_stuff.c:675: 		if (ev->data1 == destination_keys[i])
	.loc 1 675 6
	cmpl	%eax, %edx	# _21, _19
	jne	.L63	#,
# hu_stuff.c:677: 		    if (playeringame[i] && i!=consoleplayer)
	.loc 1 677 23
	movl	-16(%rbp), %eax	# i, tmp164
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp165
	leaq	playeringame(%rip), %rax	#, tmp166
	movl	(%rdx,%rax), %eax	# playeringame[i_67], _22
# hu_stuff.c:677: 		    if (playeringame[i] && i!=consoleplayer)
	.loc 1 677 10
	testl	%eax, %eax	# _22
	je	.L64	#,
# hu_stuff.c:677: 		    if (playeringame[i] && i!=consoleplayer)
	.loc 1 677 31 discriminator 1
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.43_23
# hu_stuff.c:677: 		    if (playeringame[i] && i!=consoleplayer)
	.loc 1 677 27 discriminator 1
	cmpl	%eax, -16(%rbp)	# consoleplayer.43_23, i
	je	.L64	#,
# hu_stuff.c:679: 			eatkey = chat_on = true;
	.loc 1 679 21
	movl	$1, chat_on(%rip)	#, chat_on
# hu_stuff.c:679: 			eatkey = chat_on = true;
	.loc 1 679 11
	movl	chat_on(%rip), %eax	# chat_on, tmp167
	movl	%eax, -20(%rbp)	# tmp167, eatkey
# hu_stuff.c:680: 			HUlib_resetIText(&w_chat);
	.loc 1 680 4
	leaq	w_chat(%rip), %rax	#, tmp168
	movq	%rax, %rdi	# tmp168,
	call	HUlib_resetIText@PLT	#
# hu_stuff.c:681: 			HU_queueChatChar(i+1);
	.loc 1 681 22
	movl	-16(%rbp), %eax	# i, tmp169
	addl	$1, %eax	#, _25
# hu_stuff.c:681: 			HU_queueChatChar(i+1);
	.loc 1 681 4
	movsbl	%al, %eax	# _26, _27
	movl	%eax, %edi	# _27,
	call	HU_queueChatChar	#
# hu_stuff.c:682: 			break;
	.loc 1 682 4
	jmp	.L70	#
.L64:
# hu_stuff.c:684: 		    else if (i == consoleplayer)
	.loc 1 684 18
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.44_28
# hu_stuff.c:684: 		    else if (i == consoleplayer)
	.loc 1 684 15
	cmpl	%eax, -16(%rbp)	# consoleplayer.44_28, i
	jne	.L63	#,
# hu_stuff.c:686: 			num_nobrainers++;
	.loc 1 686 18
	movl	num_nobrainers.1(%rip), %eax	# num_nobrainers, num_nobrainers.45_29
	addl	$1, %eax	#, _30
	movl	%eax, num_nobrainers.1(%rip)	# _30, num_nobrainers
# hu_stuff.c:687: 			if (num_nobrainers < 3)
	.loc 1 687 23
	movl	num_nobrainers.1(%rip), %eax	# num_nobrainers, num_nobrainers.46_31
# hu_stuff.c:687: 			if (num_nobrainers < 3)
	.loc 1 687 7
	cmpl	$2, %eax	#, num_nobrainers.46_31
	jg	.L65	#,
# hu_stuff.c:688: 			    plr->message = HUSTR_TALKTOSELF1;
	.loc 1 688 11
	movq	plr(%rip), %rax	# plr, plr.47_32
# hu_stuff.c:688: 			    plr->message = HUSTR_TALKTOSELF1;
	.loc 1 688 21
	leaq	.LC149(%rip), %rdx	#, tmp170
	movq	%rdx, 224(%rax)	# tmp170, plr.47_32->message
	jmp	.L63	#
.L65:
# hu_stuff.c:689: 			else if (num_nobrainers < 6)
	.loc 1 689 28
	movl	num_nobrainers.1(%rip), %eax	# num_nobrainers, num_nobrainers.48_33
# hu_stuff.c:689: 			else if (num_nobrainers < 6)
	.loc 1 689 12
	cmpl	$5, %eax	#, num_nobrainers.48_33
	jg	.L66	#,
# hu_stuff.c:690: 			    plr->message = HUSTR_TALKTOSELF2;
	.loc 1 690 11
	movq	plr(%rip), %rax	# plr, plr.49_34
# hu_stuff.c:690: 			    plr->message = HUSTR_TALKTOSELF2;
	.loc 1 690 21
	leaq	.LC150(%rip), %rdx	#, tmp171
	movq	%rdx, 224(%rax)	# tmp171, plr.49_34->message
	jmp	.L63	#
.L66:
# hu_stuff.c:691: 			else if (num_nobrainers < 9)
	.loc 1 691 28
	movl	num_nobrainers.1(%rip), %eax	# num_nobrainers, num_nobrainers.50_35
# hu_stuff.c:691: 			else if (num_nobrainers < 9)
	.loc 1 691 12
	cmpl	$8, %eax	#, num_nobrainers.50_35
	jg	.L67	#,
# hu_stuff.c:692: 			    plr->message = HUSTR_TALKTOSELF3;
	.loc 1 692 11
	movq	plr(%rip), %rax	# plr, plr.51_36
# hu_stuff.c:692: 			    plr->message = HUSTR_TALKTOSELF3;
	.loc 1 692 21
	leaq	.LC151(%rip), %rdx	#, tmp172
	movq	%rdx, 224(%rax)	# tmp172, plr.51_36->message
	jmp	.L63	#
.L67:
# hu_stuff.c:693: 			else if (num_nobrainers < 32)
	.loc 1 693 28
	movl	num_nobrainers.1(%rip), %eax	# num_nobrainers, num_nobrainers.52_37
# hu_stuff.c:693: 			else if (num_nobrainers < 32)
	.loc 1 693 12
	cmpl	$31, %eax	#, num_nobrainers.52_37
	jg	.L68	#,
# hu_stuff.c:694: 			    plr->message = HUSTR_TALKTOSELF4;
	.loc 1 694 11
	movq	plr(%rip), %rax	# plr, plr.53_38
# hu_stuff.c:694: 			    plr->message = HUSTR_TALKTOSELF4;
	.loc 1 694 21
	leaq	.LC152(%rip), %rdx	#, tmp173
	movq	%rdx, 224(%rax)	# tmp173, plr.53_38->message
	jmp	.L63	#
.L68:
# hu_stuff.c:696: 			    plr->message = HUSTR_TALKTOSELF5;
	.loc 1 696 11
	movq	plr(%rip), %rax	# plr, plr.54_39
# hu_stuff.c:696: 			    plr->message = HUSTR_TALKTOSELF5;
	.loc 1 696 21
	leaq	.LC153(%rip), %rdx	#, tmp174
	movq	%rdx, 224(%rax)	# tmp174, plr.54_39->message
.L63:
# hu_stuff.c:673: 	    for (i=0; i<MAXPLAYERS ; i++)
	.loc 1 673 32 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L62:
# hu_stuff.c:673: 	    for (i=0; i<MAXPLAYERS ; i++)
	.loc 1 673 17 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L69	#,
	jmp	.L70	#
.L58:
# hu_stuff.c:704: 	c = ev->data1;
	.loc 1 704 8
	movq	-40(%rbp), %rax	# ev, tmp175
	movl	4(%rax), %eax	# ev_81(D)->data1, _40
# hu_stuff.c:704: 	c = ev->data1;
	.loc 1 704 4
	movb	%al, -21(%rbp)	# _40, c
# hu_stuff.c:706: 	if (altdown)
	.loc 1 706 6
	movl	altdown.3(%rip), %eax	# altdown, altdown.55_41
# hu_stuff.c:706: 	if (altdown)
	.loc 1 706 5
	testl	%eax, %eax	# altdown.55_41
	je	.L71	#,
# hu_stuff.c:708: 	    c = c - '0';
	.loc 1 708 8
	subb	$48, -21(%rbp)	#, c
# hu_stuff.c:709: 	    if (c > 9)
	.loc 1 709 9
	cmpb	$9, -21(%rbp)	#, c
	jbe	.L72	#,
# hu_stuff.c:710: 		return false;
	.loc 1 710 10
	movl	$0, %eax	#, _69
	jmp	.L54	#
.L72:
# hu_stuff.c:712: 	    macromessage = chat_macros[c];
	.loc 1 712 32
	movzbl	-21(%rbp), %eax	# c, _42
# hu_stuff.c:712: 	    macromessage = chat_macros[c];
	.loc 1 712 19
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp177
	leaq	chat_macros(%rip), %rax	#, tmp178
	movq	(%rdx,%rax), %rax	# chat_macros[_42], tmp179
	movq	%rax, -8(%rbp)	# tmp179, macromessage
# hu_stuff.c:715: 	    HU_queueChatChar(KEY_ENTER); // DEBUG!!!
	.loc 1 715 6
	movl	$13, %edi	#,
	call	HU_queueChatChar	#
# hu_stuff.c:718: 	    while (*macromessage)
	.loc 1 718 12
	jmp	.L73	#
.L74:
# hu_stuff.c:719: 		HU_queueChatChar(*macromessage++);
	.loc 1 719 33
	movq	-8(%rbp), %rax	# macromessage, macromessage.56_43
	leaq	1(%rax), %rdx	#, tmp180
	movq	%rdx, -8(%rbp)	# tmp180, macromessage
# hu_stuff.c:719: 		HU_queueChatChar(*macromessage++);
	.loc 1 719 20
	movzbl	(%rax), %eax	# *macromessage.56_43, _44
# hu_stuff.c:719: 		HU_queueChatChar(*macromessage++);
	.loc 1 719 3
	movsbl	%al, %eax	# _44, _45
	movl	%eax, %edi	# _45,
	call	HU_queueChatChar	#
.L73:
# hu_stuff.c:718: 	    while (*macromessage)
	.loc 1 718 13
	movq	-8(%rbp), %rax	# macromessage, tmp181
	movzbl	(%rax), %eax	# *macromessage_62, _46
	testb	%al, %al	# _46
	jne	.L74	#,
# hu_stuff.c:720: 	    HU_queueChatChar(KEY_ENTER);
	.loc 1 720 6
	movl	$13, %edi	#,
	call	HU_queueChatChar	#
# hu_stuff.c:723: 	    chat_on = false;
	.loc 1 723 14
	movl	$0, chat_on(%rip)	#, chat_on
# hu_stuff.c:724: 	    strcpy(lastmessage, chat_macros[c]);
	.loc 1 724 6
	movzbl	-21(%rbp), %eax	# c, _47
# hu_stuff.c:724: 	    strcpy(lastmessage, chat_macros[c]);
	.loc 1 724 37
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp183
	leaq	chat_macros(%rip), %rax	#, tmp184
	movq	(%rdx,%rax), %rax	# chat_macros[_47], _48
# hu_stuff.c:724: 	    strcpy(lastmessage, chat_macros[c]);
	.loc 1 724 6
	movq	%rax, %rsi	# _48,
	leaq	lastmessage.0(%rip), %rax	#, tmp185
	movq	%rax, %rdi	# tmp185,
	call	strcpy@PLT	#
# hu_stuff.c:725: 	    plr->message = lastmessage;
	.loc 1 725 9
	movq	plr(%rip), %rax	# plr, plr.57_49
# hu_stuff.c:725: 	    plr->message = lastmessage;
	.loc 1 725 19
	leaq	lastmessage.0(%rip), %rdx	#, tmp186
	movq	%rdx, 224(%rax)	# tmp186, plr.57_49->message
# hu_stuff.c:726: 	    eatkey = true;
	.loc 1 726 13
	movl	$1, -20(%rbp)	#, eatkey
	jmp	.L70	#
.L71:
# hu_stuff.c:731: 		c = ForeignTranslation(c);
	.loc 1 731 7
	movzbl	-21(%rbp), %eax	# c, _50
	movl	%eax, %edi	# _50,
	call	ForeignTranslation	#
# hu_stuff.c:731: 		c = ForeignTranslation(c);
	.loc 1 731 5 discriminator 1
	movb	%al, -21(%rbp)	# _51, c
# hu_stuff.c:732: 	    if (shiftdown || (c >= 'a' && c <= 'z'))
	.loc 1 732 10
	movl	shiftdown.4(%rip), %eax	# shiftdown, shiftdown.58_52
# hu_stuff.c:732: 	    if (shiftdown || (c >= 'a' && c <= 'z'))
	.loc 1 732 9
	testl	%eax, %eax	# shiftdown.58_52
	jne	.L75	#,
# hu_stuff.c:732: 	    if (shiftdown || (c >= 'a' && c <= 'z'))
	.loc 1 732 20 discriminator 1
	cmpb	$96, -21(%rbp)	#, c
	jbe	.L76	#,
# hu_stuff.c:732: 	    if (shiftdown || (c >= 'a' && c <= 'z'))
	.loc 1 732 33 discriminator 2
	cmpb	$122, -21(%rbp)	#, c
	ja	.L76	#,
.L75:
# hu_stuff.c:733: 		c = shiftxform[c];
	.loc 1 733 17
	movq	shiftxform(%rip), %rdx	# shiftxform, shiftxform.59_53
	movzbl	-21(%rbp), %eax	# c, _54
	addq	%rdx, %rax	# shiftxform.59_53, _55
	movzbl	(%rax), %eax	# *_55, _56
# hu_stuff.c:733: 		c = shiftxform[c];
	.loc 1 733 5
	movb	%al, -21(%rbp)	# _56, c
.L76:
# hu_stuff.c:734: 	    eatkey = HUlib_keyInIText(&w_chat, c);
	.loc 1 734 15
	movzbl	-21(%rbp), %eax	# c, _57
	movl	%eax, %esi	# _57,
	leaq	w_chat(%rip), %rax	#, tmp187
	movq	%rax, %rdi	# tmp187,
	call	HUlib_keyInIText@PLT	#
	movl	%eax, -20(%rbp)	# tmp188, eatkey
# hu_stuff.c:735: 	    if (eatkey)
	.loc 1 735 9
	cmpl	$0, -20(%rbp)	#, eatkey
	je	.L77	#,
# hu_stuff.c:738: 		HU_queueChatChar(c);
	.loc 1 738 3
	movzbl	-21(%rbp), %eax	# c, c.60_58
	movsbl	%al, %eax	# c.60_58, _59
	movl	%eax, %edi	# _59,
	call	HU_queueChatChar	#
.L77:
# hu_stuff.c:743: 	    if (c == KEY_ENTER)
	.loc 1 743 9
	cmpb	$13, -21(%rbp)	#, c
	jne	.L78	#,
# hu_stuff.c:745: 		chat_on = false;
	.loc 1 745 11
	movl	$0, chat_on(%rip)	#, chat_on
# hu_stuff.c:746: 		if (w_chat.l.len)
	.loc 1 746 15
	movl	104+w_chat(%rip), %eax	# w_chat.l.len, _60
# hu_stuff.c:746: 		if (w_chat.l.len)
	.loc 1 746 6
	testl	%eax, %eax	# _60
	je	.L70	#,
# hu_stuff.c:748: 		    strcpy(lastmessage, w_chat.l.l);
	.loc 1 748 7
	leaq	20+w_chat(%rip), %rax	#, tmp189
	movq	%rax, %rsi	# tmp189,
	leaq	lastmessage.0(%rip), %rax	#, tmp190
	movq	%rax, %rdi	# tmp190,
	call	strcpy@PLT	#
# hu_stuff.c:749: 		    plr->message = lastmessage;
	.loc 1 749 10
	movq	plr(%rip), %rax	# plr, plr.61_61
# hu_stuff.c:749: 		    plr->message = lastmessage;
	.loc 1 749 20
	leaq	lastmessage.0(%rip), %rdx	#, tmp191
	movq	%rdx, 224(%rax)	# tmp191, plr.61_61->message
	jmp	.L70	#
.L78:
# hu_stuff.c:752: 	    else if (c == KEY_ESCAPE)
	.loc 1 752 14
	cmpb	$27, -21(%rbp)	#, c
	jne	.L70	#,
# hu_stuff.c:753: 		chat_on = false;
	.loc 1 753 11
	movl	$0, chat_on(%rip)	#, chat_on
.L70:
# hu_stuff.c:757:     return eatkey;
	.loc 1 757 12
	movl	-20(%rbp), %eax	# eatkey, _69
.L54:
# hu_stuff.c:759: }
	.loc 1 759 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	HU_Responder, .-HU_Responder
	.local	shiftdown.4
	.comm	shiftdown.4,4,4
	.local	altdown.3
	.comm	altdown.3,4,4
	.data
	.type	destination_keys.2, @object
	.size	destination_keys.2, 4
destination_keys.2:
	.ascii	"gibr"
	.local	num_nobrainers.1
	.comm	num_nobrainers.1,4,4
	.local	lastmessage.0
	.comm	lastmessage.0,81,32
	.text
.Letext0:
	.file 2 "doomdef.h"
	.file 3 "doomtype.h"
	.file 4 "d_event.h"
	.file 5 "m_fixed.h"
	.file 6 "d_think.h"
	.file 7 "tables.h"
	.file 8 "doomdata.h"
	.file 9 "info.h"
	.file 10 "p_mobj.h"
	.file 11 "r_defs.h"
	.file 12 "d_player.h"
	.file 13 "hu_lib.h"
	.file 14 "p_pspr.h"
	.file 15 "d_ticcmd.h"
	.file 16 "doomstat.h"
	.file 17 "sounds.h"
	.file 18 "s_sound.h"
	.file 19 "/usr/include/string.h"
	.file 20 "w_wad.h"
	.file 21 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3a00
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x22
	.long	.LASF1663
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x9
	.long	0x51
	.long	0x3e
	.uleb128 0xa
	.long	0x43
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.long	0x2e
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xf
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x19
	.long	0x4a
	.uleb128 0xe
	.long	.LASF1601
	.byte	0x18
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xf
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0xf
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0xf
	.byte	0x4
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
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xf
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x24
	.byte	0x8
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x8
	.long	0x51
	.uleb128 0x9
	.long	0x4a
	.long	0xb8
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x79
	.byte	0x2
	.byte	0x27
	.byte	0x1
	.long	0xe3
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
	.uleb128 0x7
	.long	.LASF37
	.byte	0x2
	.byte	0x2f
	.byte	0x3
	.long	0xb8
	.uleb128 0xb
	.long	0x79
	.byte	0x2
	.byte	0x40
	.byte	0x1
	.long	0x114
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
	.byte	0
	.uleb128 0xb
	.long	0x79
	.byte	0x2
	.byte	0xa3
	.byte	0x1
	.long	0x14b
	.uleb128 0x2
	.long	.LASF19
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x1
	.uleb128 0x2
	.long	.LASF21
	.byte	0x2
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.uleb128 0x2
	.long	.LASF25
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x79
	.byte	0x2
	.byte	0xb5
	.byte	0x1
	.long	0x19a
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
	.uleb128 0x2
	.long	.LASF33
	.byte	0x7
	.uleb128 0x2
	.long	.LASF34
	.byte	0x8
	.uleb128 0x2
	.long	.LASF35
	.byte	0x9
	.uleb128 0x2
	.long	.LASF36
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	.LASF38
	.byte	0x2
	.byte	0xc5
	.byte	0x3
	.long	0x14b
	.uleb128 0xb
	.long	0x79
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.long	0x1d7
	.uleb128 0x2
	.long	.LASF39
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x1
	.uleb128 0x2
	.long	.LASF41
	.byte	0x2
	.uleb128 0x2
	.long	.LASF42
	.byte	0x3
	.uleb128 0x2
	.long	.LASF43
	.byte	0x4
	.uleb128 0x2
	.long	.LASF44
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x79
	.byte	0x2
	.byte	0xd7
	.byte	0x1
	.long	0x20e
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
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x79
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0x227
	.uleb128 0x2
	.long	.LASF52
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF54
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0x20e
	.uleb128 0x7
	.long	.LASF55
	.byte	0x3
	.byte	0x24
	.byte	0x17
	.long	0x6b
	.uleb128 0xb
	.long	0x79
	.byte	0x4
	.byte	0x24
	.byte	0x1
	.long	0x264
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
	.byte	0x4
	.byte	0x29
	.byte	0x3
	.long	0x23f
	.uleb128 0x12
	.byte	0x10
	.byte	0x4
	.byte	0x2c
	.long	0x2ad
	.uleb128 0x3
	.long	.LASF61
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.long	0x264
	.byte	0
	.uleb128 0x3
	.long	.LASF62
	.byte	0x4
	.byte	0x2f
	.byte	0xa
	.long	0x8e
	.byte	0x4
	.uleb128 0x3
	.long	.LASF63
	.byte	0x4
	.byte	0x30
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x3
	.long	.LASF64
	.byte	0x4
	.byte	0x31
	.byte	0xa
	.long	0x8e
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF65
	.byte	0x4
	.byte	0x32
	.byte	0x3
	.long	0x270
	.uleb128 0x7
	.long	.LASF66
	.byte	0x5
	.byte	0x26
	.byte	0xd
	.long	0x8e
	.uleb128 0x7
	.long	.LASF67
	.byte	0x6
	.byte	0x29
	.byte	0x11
	.long	0x2d1
	.uleb128 0x8
	.long	0x2d6
	.uleb128 0x25
	.long	0x2dd
	.uleb128 0x1e
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x6
	.byte	0x2a
	.byte	0x11
	.long	0x2e9
	.uleb128 0x8
	.long	0x2ee
	.uleb128 0x1f
	.long	0x2f9
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x7
	.long	.LASF69
	.byte	0x6
	.byte	0x2b
	.byte	0x11
	.long	0x305
	.uleb128 0x8
	.long	0x30a
	.uleb128 0x1f
	.long	0x31a
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x9c
	.byte	0
	.uleb128 0x26
	.byte	0x8
	.byte	0x6
	.byte	0x2d
	.byte	0x9
	.long	0x344
	.uleb128 0x20
	.long	.LASF70
	.byte	0x2f
	.long	0x2dd
	.uleb128 0x27
	.string	"acv"
	.byte	0x6
	.byte	0x30
	.byte	0xd
	.long	0x2c5
	.uleb128 0x20
	.long	.LASF71
	.byte	0x31
	.long	0x2f9
	.byte	0
	.uleb128 0x7
	.long	.LASF72
	.byte	0x6
	.byte	0x33
	.byte	0x3
	.long	0x31a
	.uleb128 0x7
	.long	.LASF73
	.byte	0x6
	.byte	0x3c
	.byte	0x14
	.long	0x344
	.uleb128 0x15
	.long	.LASF1364
	.byte	0x18
	.byte	0x6
	.byte	0x40
	.long	0x390
	.uleb128 0x3
	.long	.LASF74
	.byte	0x6
	.byte	0x42
	.byte	0x17
	.long	0x390
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0x6
	.byte	0x43
	.byte	0x17
	.long	0x390
	.byte	0x8
	.uleb128 0x3
	.long	.LASF76
	.byte	0x6
	.byte	0x44
	.byte	0xe
	.long	0x350
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x35c
	.uleb128 0x7
	.long	.LASF77
	.byte	0x6
	.byte	0x46
	.byte	0x3
	.long	0x35c
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.long	.LASF78
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.long	.LASF79
	.uleb128 0x7
	.long	.LASF80
	.byte	0x7
	.byte	0x4e
	.byte	0x12
	.long	0x79
	.uleb128 0x9
	.long	0x87
	.long	0x3cb
	.uleb128 0xa
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x411
	.uleb128 0x6
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF81
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF61
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x3
	.long	.LASF82
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF83
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x3cb
	.uleb128 0xb
	.long	0x79
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x76c
	.uleb128 0x2
	.long	.LASF84
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x1
	.uleb128 0x2
	.long	.LASF86
	.byte	0x2
	.uleb128 0x2
	.long	.LASF87
	.byte	0x3
	.uleb128 0x2
	.long	.LASF88
	.byte	0x4
	.uleb128 0x2
	.long	.LASF89
	.byte	0x5
	.uleb128 0x2
	.long	.LASF90
	.byte	0x6
	.uleb128 0x2
	.long	.LASF91
	.byte	0x7
	.uleb128 0x2
	.long	.LASF92
	.byte	0x8
	.uleb128 0x2
	.long	.LASF93
	.byte	0x9
	.uleb128 0x2
	.long	.LASF94
	.byte	0xa
	.uleb128 0x2
	.long	.LASF95
	.byte	0xb
	.uleb128 0x2
	.long	.LASF96
	.byte	0xc
	.uleb128 0x2
	.long	.LASF97
	.byte	0xd
	.uleb128 0x2
	.long	.LASF98
	.byte	0xe
	.uleb128 0x2
	.long	.LASF99
	.byte	0xf
	.uleb128 0x2
	.long	.LASF100
	.byte	0x10
	.uleb128 0x2
	.long	.LASF101
	.byte	0x11
	.uleb128 0x2
	.long	.LASF102
	.byte	0x12
	.uleb128 0x2
	.long	.LASF103
	.byte	0x13
	.uleb128 0x2
	.long	.LASF104
	.byte	0x14
	.uleb128 0x2
	.long	.LASF105
	.byte	0x15
	.uleb128 0x2
	.long	.LASF106
	.byte	0x16
	.uleb128 0x2
	.long	.LASF107
	.byte	0x17
	.uleb128 0x2
	.long	.LASF108
	.byte	0x18
	.uleb128 0x2
	.long	.LASF109
	.byte	0x19
	.uleb128 0x2
	.long	.LASF110
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF113
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF114
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF115
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF116
	.byte	0x20
	.uleb128 0x2
	.long	.LASF117
	.byte	0x21
	.uleb128 0x2
	.long	.LASF118
	.byte	0x22
	.uleb128 0x2
	.long	.LASF119
	.byte	0x23
	.uleb128 0x2
	.long	.LASF120
	.byte	0x24
	.uleb128 0x2
	.long	.LASF121
	.byte	0x25
	.uleb128 0x2
	.long	.LASF122
	.byte	0x26
	.uleb128 0x2
	.long	.LASF123
	.byte	0x27
	.uleb128 0x2
	.long	.LASF124
	.byte	0x28
	.uleb128 0x2
	.long	.LASF125
	.byte	0x29
	.uleb128 0x2
	.long	.LASF126
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF127
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF128
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF129
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF130
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF131
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF132
	.byte	0x30
	.uleb128 0x2
	.long	.LASF133
	.byte	0x31
	.uleb128 0x2
	.long	.LASF134
	.byte	0x32
	.uleb128 0x2
	.long	.LASF135
	.byte	0x33
	.uleb128 0x2
	.long	.LASF136
	.byte	0x34
	.uleb128 0x2
	.long	.LASF137
	.byte	0x35
	.uleb128 0x2
	.long	.LASF138
	.byte	0x36
	.uleb128 0x2
	.long	.LASF139
	.byte	0x37
	.uleb128 0x2
	.long	.LASF140
	.byte	0x38
	.uleb128 0x2
	.long	.LASF141
	.byte	0x39
	.uleb128 0x2
	.long	.LASF142
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF143
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF144
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF145
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF146
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF147
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF148
	.byte	0x40
	.uleb128 0x2
	.long	.LASF149
	.byte	0x41
	.uleb128 0x2
	.long	.LASF150
	.byte	0x42
	.uleb128 0x2
	.long	.LASF151
	.byte	0x43
	.uleb128 0x2
	.long	.LASF152
	.byte	0x44
	.uleb128 0x2
	.long	.LASF153
	.byte	0x45
	.uleb128 0x2
	.long	.LASF154
	.byte	0x46
	.uleb128 0x2
	.long	.LASF155
	.byte	0x47
	.uleb128 0x2
	.long	.LASF156
	.byte	0x48
	.uleb128 0x2
	.long	.LASF157
	.byte	0x49
	.uleb128 0x2
	.long	.LASF158
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF159
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF160
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF161
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF162
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF163
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF164
	.byte	0x50
	.uleb128 0x2
	.long	.LASF165
	.byte	0x51
	.uleb128 0x2
	.long	.LASF166
	.byte	0x52
	.uleb128 0x2
	.long	.LASF167
	.byte	0x53
	.uleb128 0x2
	.long	.LASF168
	.byte	0x54
	.uleb128 0x2
	.long	.LASF169
	.byte	0x55
	.uleb128 0x2
	.long	.LASF170
	.byte	0x56
	.uleb128 0x2
	.long	.LASF171
	.byte	0x57
	.uleb128 0x2
	.long	.LASF172
	.byte	0x58
	.uleb128 0x2
	.long	.LASF173
	.byte	0x59
	.uleb128 0x2
	.long	.LASF174
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF175
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF176
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF177
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF178
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF179
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF180
	.byte	0x60
	.uleb128 0x2
	.long	.LASF181
	.byte	0x61
	.uleb128 0x2
	.long	.LASF182
	.byte	0x62
	.uleb128 0x2
	.long	.LASF183
	.byte	0x63
	.uleb128 0x2
	.long	.LASF184
	.byte	0x64
	.uleb128 0x2
	.long	.LASF185
	.byte	0x65
	.uleb128 0x2
	.long	.LASF186
	.byte	0x66
	.uleb128 0x2
	.long	.LASF187
	.byte	0x67
	.uleb128 0x2
	.long	.LASF188
	.byte	0x68
	.uleb128 0x2
	.long	.LASF189
	.byte	0x69
	.uleb128 0x2
	.long	.LASF190
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF191
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF192
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF193
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF194
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF195
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF196
	.byte	0x70
	.uleb128 0x2
	.long	.LASF197
	.byte	0x71
	.uleb128 0x2
	.long	.LASF198
	.byte	0x72
	.uleb128 0x2
	.long	.LASF199
	.byte	0x73
	.uleb128 0x2
	.long	.LASF200
	.byte	0x74
	.uleb128 0x2
	.long	.LASF201
	.byte	0x75
	.uleb128 0x2
	.long	.LASF202
	.byte	0x76
	.uleb128 0x2
	.long	.LASF203
	.byte	0x77
	.uleb128 0x2
	.long	.LASF204
	.byte	0x78
	.uleb128 0x2
	.long	.LASF205
	.byte	0x79
	.uleb128 0x2
	.long	.LASF206
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF207
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF208
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF209
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF210
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF211
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF212
	.byte	0x80
	.uleb128 0x2
	.long	.LASF213
	.byte	0x81
	.uleb128 0x2
	.long	.LASF214
	.byte	0x82
	.uleb128 0x2
	.long	.LASF215
	.byte	0x83
	.uleb128 0x2
	.long	.LASF216
	.byte	0x84
	.uleb128 0x2
	.long	.LASF217
	.byte	0x85
	.uleb128 0x2
	.long	.LASF218
	.byte	0x86
	.uleb128 0x2
	.long	.LASF219
	.byte	0x87
	.uleb128 0x2
	.long	.LASF220
	.byte	0x88
	.uleb128 0x2
	.long	.LASF221
	.byte	0x89
	.uleb128 0x2
	.long	.LASF222
	.byte	0x8a
	.byte	0
	.uleb128 0x7
	.long	.LASF223
	.byte	0x9
	.byte	0xac
	.byte	0x3
	.long	0x41d
	.uleb128 0xb
	.long	0x79
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x20fd
	.uleb128 0x2
	.long	.LASF224
	.byte	0
	.uleb128 0x2
	.long	.LASF225
	.byte	0x1
	.uleb128 0x2
	.long	.LASF226
	.byte	0x2
	.uleb128 0x2
	.long	.LASF227
	.byte	0x3
	.uleb128 0x2
	.long	.LASF228
	.byte	0x4
	.uleb128 0x2
	.long	.LASF229
	.byte	0x5
	.uleb128 0x2
	.long	.LASF230
	.byte	0x6
	.uleb128 0x2
	.long	.LASF231
	.byte	0x7
	.uleb128 0x2
	.long	.LASF232
	.byte	0x8
	.uleb128 0x2
	.long	.LASF233
	.byte	0x9
	.uleb128 0x2
	.long	.LASF234
	.byte	0xa
	.uleb128 0x2
	.long	.LASF235
	.byte	0xb
	.uleb128 0x2
	.long	.LASF236
	.byte	0xc
	.uleb128 0x2
	.long	.LASF237
	.byte	0xd
	.uleb128 0x2
	.long	.LASF238
	.byte	0xe
	.uleb128 0x2
	.long	.LASF239
	.byte	0xf
	.uleb128 0x2
	.long	.LASF240
	.byte	0x10
	.uleb128 0x2
	.long	.LASF241
	.byte	0x11
	.uleb128 0x2
	.long	.LASF242
	.byte	0x12
	.uleb128 0x2
	.long	.LASF243
	.byte	0x13
	.uleb128 0x2
	.long	.LASF244
	.byte	0x14
	.uleb128 0x2
	.long	.LASF245
	.byte	0x15
	.uleb128 0x2
	.long	.LASF246
	.byte	0x16
	.uleb128 0x2
	.long	.LASF247
	.byte	0x17
	.uleb128 0x2
	.long	.LASF248
	.byte	0x18
	.uleb128 0x2
	.long	.LASF249
	.byte	0x19
	.uleb128 0x2
	.long	.LASF250
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF251
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF252
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF253
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF254
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF255
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF256
	.byte	0x20
	.uleb128 0x2
	.long	.LASF257
	.byte	0x21
	.uleb128 0x2
	.long	.LASF258
	.byte	0x22
	.uleb128 0x2
	.long	.LASF259
	.byte	0x23
	.uleb128 0x2
	.long	.LASF260
	.byte	0x24
	.uleb128 0x2
	.long	.LASF261
	.byte	0x25
	.uleb128 0x2
	.long	.LASF262
	.byte	0x26
	.uleb128 0x2
	.long	.LASF263
	.byte	0x27
	.uleb128 0x2
	.long	.LASF264
	.byte	0x28
	.uleb128 0x2
	.long	.LASF265
	.byte	0x29
	.uleb128 0x2
	.long	.LASF266
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF267
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF268
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF269
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF270
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF271
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF272
	.byte	0x30
	.uleb128 0x2
	.long	.LASF273
	.byte	0x31
	.uleb128 0x2
	.long	.LASF274
	.byte	0x32
	.uleb128 0x2
	.long	.LASF275
	.byte	0x33
	.uleb128 0x2
	.long	.LASF276
	.byte	0x34
	.uleb128 0x2
	.long	.LASF277
	.byte	0x35
	.uleb128 0x2
	.long	.LASF278
	.byte	0x36
	.uleb128 0x2
	.long	.LASF279
	.byte	0x37
	.uleb128 0x2
	.long	.LASF280
	.byte	0x38
	.uleb128 0x2
	.long	.LASF281
	.byte	0x39
	.uleb128 0x2
	.long	.LASF282
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF283
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF284
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF285
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF286
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF287
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF288
	.byte	0x40
	.uleb128 0x2
	.long	.LASF289
	.byte	0x41
	.uleb128 0x2
	.long	.LASF290
	.byte	0x42
	.uleb128 0x2
	.long	.LASF291
	.byte	0x43
	.uleb128 0x2
	.long	.LASF292
	.byte	0x44
	.uleb128 0x2
	.long	.LASF293
	.byte	0x45
	.uleb128 0x2
	.long	.LASF294
	.byte	0x46
	.uleb128 0x2
	.long	.LASF295
	.byte	0x47
	.uleb128 0x2
	.long	.LASF296
	.byte	0x48
	.uleb128 0x2
	.long	.LASF297
	.byte	0x49
	.uleb128 0x2
	.long	.LASF298
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF299
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF300
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF301
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF302
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF303
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF304
	.byte	0x50
	.uleb128 0x2
	.long	.LASF305
	.byte	0x51
	.uleb128 0x2
	.long	.LASF306
	.byte	0x52
	.uleb128 0x2
	.long	.LASF307
	.byte	0x53
	.uleb128 0x2
	.long	.LASF308
	.byte	0x54
	.uleb128 0x2
	.long	.LASF309
	.byte	0x55
	.uleb128 0x2
	.long	.LASF310
	.byte	0x56
	.uleb128 0x2
	.long	.LASF311
	.byte	0x57
	.uleb128 0x2
	.long	.LASF312
	.byte	0x58
	.uleb128 0x2
	.long	.LASF313
	.byte	0x59
	.uleb128 0x2
	.long	.LASF314
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF315
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF316
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF317
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF318
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF319
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF320
	.byte	0x60
	.uleb128 0x2
	.long	.LASF321
	.byte	0x61
	.uleb128 0x2
	.long	.LASF322
	.byte	0x62
	.uleb128 0x2
	.long	.LASF323
	.byte	0x63
	.uleb128 0x2
	.long	.LASF324
	.byte	0x64
	.uleb128 0x2
	.long	.LASF325
	.byte	0x65
	.uleb128 0x2
	.long	.LASF326
	.byte	0x66
	.uleb128 0x2
	.long	.LASF327
	.byte	0x67
	.uleb128 0x2
	.long	.LASF328
	.byte	0x68
	.uleb128 0x2
	.long	.LASF329
	.byte	0x69
	.uleb128 0x2
	.long	.LASF330
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF331
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF332
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF333
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF334
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF335
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF336
	.byte	0x70
	.uleb128 0x2
	.long	.LASF337
	.byte	0x71
	.uleb128 0x2
	.long	.LASF338
	.byte	0x72
	.uleb128 0x2
	.long	.LASF339
	.byte	0x73
	.uleb128 0x2
	.long	.LASF340
	.byte	0x74
	.uleb128 0x2
	.long	.LASF341
	.byte	0x75
	.uleb128 0x2
	.long	.LASF342
	.byte	0x76
	.uleb128 0x2
	.long	.LASF343
	.byte	0x77
	.uleb128 0x2
	.long	.LASF344
	.byte	0x78
	.uleb128 0x2
	.long	.LASF345
	.byte	0x79
	.uleb128 0x2
	.long	.LASF346
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF347
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF348
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF349
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF350
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF351
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF352
	.byte	0x80
	.uleb128 0x2
	.long	.LASF353
	.byte	0x81
	.uleb128 0x2
	.long	.LASF354
	.byte	0x82
	.uleb128 0x2
	.long	.LASF355
	.byte	0x83
	.uleb128 0x2
	.long	.LASF356
	.byte	0x84
	.uleb128 0x2
	.long	.LASF357
	.byte	0x85
	.uleb128 0x2
	.long	.LASF358
	.byte	0x86
	.uleb128 0x2
	.long	.LASF359
	.byte	0x87
	.uleb128 0x2
	.long	.LASF360
	.byte	0x88
	.uleb128 0x2
	.long	.LASF361
	.byte	0x89
	.uleb128 0x2
	.long	.LASF362
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF363
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF364
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF365
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF366
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF367
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF368
	.byte	0x90
	.uleb128 0x2
	.long	.LASF369
	.byte	0x91
	.uleb128 0x2
	.long	.LASF370
	.byte	0x92
	.uleb128 0x2
	.long	.LASF371
	.byte	0x93
	.uleb128 0x2
	.long	.LASF372
	.byte	0x94
	.uleb128 0x2
	.long	.LASF373
	.byte	0x95
	.uleb128 0x2
	.long	.LASF374
	.byte	0x96
	.uleb128 0x2
	.long	.LASF375
	.byte	0x97
	.uleb128 0x2
	.long	.LASF376
	.byte	0x98
	.uleb128 0x2
	.long	.LASF377
	.byte	0x99
	.uleb128 0x2
	.long	.LASF378
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF379
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF380
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF381
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF382
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF383
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF384
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF385
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF386
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF387
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF388
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF389
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF390
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF391
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF392
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF393
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF394
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF395
	.byte	0xab
	.uleb128 0x2
	.long	.LASF396
	.byte	0xac
	.uleb128 0x2
	.long	.LASF397
	.byte	0xad
	.uleb128 0x2
	.long	.LASF398
	.byte	0xae
	.uleb128 0x2
	.long	.LASF399
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF400
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF401
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF402
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF403
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF404
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF406
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF407
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF408
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF409
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF410
	.byte	0xba
	.uleb128 0x2
	.long	.LASF411
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF412
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF413
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF414
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF415
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF416
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF417
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF418
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF419
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF420
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF421
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF422
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF423
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF424
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF425
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF426
	.byte	0xca
	.uleb128 0x2
	.long	.LASF427
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF428
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF429
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF430
	.byte	0xce
	.uleb128 0x2
	.long	.LASF431
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF432
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF433
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF434
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF435
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF436
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF437
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF438
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF439
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF440
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF441
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF442
	.byte	0xda
	.uleb128 0x2
	.long	.LASF443
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF444
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF445
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF446
	.byte	0xde
	.uleb128 0x2
	.long	.LASF447
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF448
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF449
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF450
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF451
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF452
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF453
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF454
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF455
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF456
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF457
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF458
	.byte	0xea
	.uleb128 0x2
	.long	.LASF459
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF460
	.byte	0xec
	.uleb128 0x2
	.long	.LASF461
	.byte	0xed
	.uleb128 0x2
	.long	.LASF462
	.byte	0xee
	.uleb128 0x2
	.long	.LASF463
	.byte	0xef
	.uleb128 0x2
	.long	.LASF464
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF465
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF466
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF467
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF468
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF469
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF470
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF471
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF472
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF473
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF474
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF475
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF476
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF477
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF478
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF479
	.byte	0xff
	.uleb128 0x1
	.long	.LASF480
	.value	0x100
	.uleb128 0x1
	.long	.LASF481
	.value	0x101
	.uleb128 0x1
	.long	.LASF482
	.value	0x102
	.uleb128 0x1
	.long	.LASF483
	.value	0x103
	.uleb128 0x1
	.long	.LASF484
	.value	0x104
	.uleb128 0x1
	.long	.LASF485
	.value	0x105
	.uleb128 0x1
	.long	.LASF486
	.value	0x106
	.uleb128 0x1
	.long	.LASF487
	.value	0x107
	.uleb128 0x1
	.long	.LASF488
	.value	0x108
	.uleb128 0x1
	.long	.LASF489
	.value	0x109
	.uleb128 0x1
	.long	.LASF490
	.value	0x10a
	.uleb128 0x1
	.long	.LASF491
	.value	0x10b
	.uleb128 0x1
	.long	.LASF492
	.value	0x10c
	.uleb128 0x1
	.long	.LASF493
	.value	0x10d
	.uleb128 0x1
	.long	.LASF494
	.value	0x10e
	.uleb128 0x1
	.long	.LASF495
	.value	0x10f
	.uleb128 0x1
	.long	.LASF496
	.value	0x110
	.uleb128 0x1
	.long	.LASF497
	.value	0x111
	.uleb128 0x1
	.long	.LASF498
	.value	0x112
	.uleb128 0x1
	.long	.LASF499
	.value	0x113
	.uleb128 0x1
	.long	.LASF500
	.value	0x114
	.uleb128 0x1
	.long	.LASF501
	.value	0x115
	.uleb128 0x1
	.long	.LASF502
	.value	0x116
	.uleb128 0x1
	.long	.LASF503
	.value	0x117
	.uleb128 0x1
	.long	.LASF504
	.value	0x118
	.uleb128 0x1
	.long	.LASF505
	.value	0x119
	.uleb128 0x1
	.long	.LASF506
	.value	0x11a
	.uleb128 0x1
	.long	.LASF507
	.value	0x11b
	.uleb128 0x1
	.long	.LASF508
	.value	0x11c
	.uleb128 0x1
	.long	.LASF509
	.value	0x11d
	.uleb128 0x1
	.long	.LASF510
	.value	0x11e
	.uleb128 0x1
	.long	.LASF511
	.value	0x11f
	.uleb128 0x1
	.long	.LASF512
	.value	0x120
	.uleb128 0x1
	.long	.LASF513
	.value	0x121
	.uleb128 0x1
	.long	.LASF514
	.value	0x122
	.uleb128 0x1
	.long	.LASF515
	.value	0x123
	.uleb128 0x1
	.long	.LASF516
	.value	0x124
	.uleb128 0x1
	.long	.LASF517
	.value	0x125
	.uleb128 0x1
	.long	.LASF518
	.value	0x126
	.uleb128 0x1
	.long	.LASF519
	.value	0x127
	.uleb128 0x1
	.long	.LASF520
	.value	0x128
	.uleb128 0x1
	.long	.LASF521
	.value	0x129
	.uleb128 0x1
	.long	.LASF522
	.value	0x12a
	.uleb128 0x1
	.long	.LASF523
	.value	0x12b
	.uleb128 0x1
	.long	.LASF524
	.value	0x12c
	.uleb128 0x1
	.long	.LASF525
	.value	0x12d
	.uleb128 0x1
	.long	.LASF526
	.value	0x12e
	.uleb128 0x1
	.long	.LASF527
	.value	0x12f
	.uleb128 0x1
	.long	.LASF528
	.value	0x130
	.uleb128 0x1
	.long	.LASF529
	.value	0x131
	.uleb128 0x1
	.long	.LASF530
	.value	0x132
	.uleb128 0x1
	.long	.LASF531
	.value	0x133
	.uleb128 0x1
	.long	.LASF532
	.value	0x134
	.uleb128 0x1
	.long	.LASF533
	.value	0x135
	.uleb128 0x1
	.long	.LASF534
	.value	0x136
	.uleb128 0x1
	.long	.LASF535
	.value	0x137
	.uleb128 0x1
	.long	.LASF536
	.value	0x138
	.uleb128 0x1
	.long	.LASF537
	.value	0x139
	.uleb128 0x1
	.long	.LASF538
	.value	0x13a
	.uleb128 0x1
	.long	.LASF539
	.value	0x13b
	.uleb128 0x1
	.long	.LASF540
	.value	0x13c
	.uleb128 0x1
	.long	.LASF541
	.value	0x13d
	.uleb128 0x1
	.long	.LASF542
	.value	0x13e
	.uleb128 0x1
	.long	.LASF543
	.value	0x13f
	.uleb128 0x1
	.long	.LASF544
	.value	0x140
	.uleb128 0x1
	.long	.LASF545
	.value	0x141
	.uleb128 0x1
	.long	.LASF546
	.value	0x142
	.uleb128 0x1
	.long	.LASF547
	.value	0x143
	.uleb128 0x1
	.long	.LASF548
	.value	0x144
	.uleb128 0x1
	.long	.LASF549
	.value	0x145
	.uleb128 0x1
	.long	.LASF550
	.value	0x146
	.uleb128 0x1
	.long	.LASF551
	.value	0x147
	.uleb128 0x1
	.long	.LASF552
	.value	0x148
	.uleb128 0x1
	.long	.LASF553
	.value	0x149
	.uleb128 0x1
	.long	.LASF554
	.value	0x14a
	.uleb128 0x1
	.long	.LASF555
	.value	0x14b
	.uleb128 0x1
	.long	.LASF556
	.value	0x14c
	.uleb128 0x1
	.long	.LASF557
	.value	0x14d
	.uleb128 0x1
	.long	.LASF558
	.value	0x14e
	.uleb128 0x1
	.long	.LASF559
	.value	0x14f
	.uleb128 0x1
	.long	.LASF560
	.value	0x150
	.uleb128 0x1
	.long	.LASF561
	.value	0x151
	.uleb128 0x1
	.long	.LASF562
	.value	0x152
	.uleb128 0x1
	.long	.LASF563
	.value	0x153
	.uleb128 0x1
	.long	.LASF564
	.value	0x154
	.uleb128 0x1
	.long	.LASF565
	.value	0x155
	.uleb128 0x1
	.long	.LASF566
	.value	0x156
	.uleb128 0x1
	.long	.LASF567
	.value	0x157
	.uleb128 0x1
	.long	.LASF568
	.value	0x158
	.uleb128 0x1
	.long	.LASF569
	.value	0x159
	.uleb128 0x1
	.long	.LASF570
	.value	0x15a
	.uleb128 0x1
	.long	.LASF571
	.value	0x15b
	.uleb128 0x1
	.long	.LASF572
	.value	0x15c
	.uleb128 0x1
	.long	.LASF573
	.value	0x15d
	.uleb128 0x1
	.long	.LASF574
	.value	0x15e
	.uleb128 0x1
	.long	.LASF575
	.value	0x15f
	.uleb128 0x1
	.long	.LASF576
	.value	0x160
	.uleb128 0x1
	.long	.LASF577
	.value	0x161
	.uleb128 0x1
	.long	.LASF578
	.value	0x162
	.uleb128 0x1
	.long	.LASF579
	.value	0x163
	.uleb128 0x1
	.long	.LASF580
	.value	0x164
	.uleb128 0x1
	.long	.LASF581
	.value	0x165
	.uleb128 0x1
	.long	.LASF582
	.value	0x166
	.uleb128 0x1
	.long	.LASF583
	.value	0x167
	.uleb128 0x1
	.long	.LASF584
	.value	0x168
	.uleb128 0x1
	.long	.LASF585
	.value	0x169
	.uleb128 0x1
	.long	.LASF586
	.value	0x16a
	.uleb128 0x1
	.long	.LASF587
	.value	0x16b
	.uleb128 0x1
	.long	.LASF588
	.value	0x16c
	.uleb128 0x1
	.long	.LASF589
	.value	0x16d
	.uleb128 0x1
	.long	.LASF590
	.value	0x16e
	.uleb128 0x1
	.long	.LASF591
	.value	0x16f
	.uleb128 0x1
	.long	.LASF592
	.value	0x170
	.uleb128 0x1
	.long	.LASF593
	.value	0x171
	.uleb128 0x1
	.long	.LASF594
	.value	0x172
	.uleb128 0x1
	.long	.LASF595
	.value	0x173
	.uleb128 0x1
	.long	.LASF596
	.value	0x174
	.uleb128 0x1
	.long	.LASF597
	.value	0x175
	.uleb128 0x1
	.long	.LASF598
	.value	0x176
	.uleb128 0x1
	.long	.LASF599
	.value	0x177
	.uleb128 0x1
	.long	.LASF600
	.value	0x178
	.uleb128 0x1
	.long	.LASF601
	.value	0x179
	.uleb128 0x1
	.long	.LASF602
	.value	0x17a
	.uleb128 0x1
	.long	.LASF603
	.value	0x17b
	.uleb128 0x1
	.long	.LASF604
	.value	0x17c
	.uleb128 0x1
	.long	.LASF605
	.value	0x17d
	.uleb128 0x1
	.long	.LASF606
	.value	0x17e
	.uleb128 0x1
	.long	.LASF607
	.value	0x17f
	.uleb128 0x1
	.long	.LASF608
	.value	0x180
	.uleb128 0x1
	.long	.LASF609
	.value	0x181
	.uleb128 0x1
	.long	.LASF610
	.value	0x182
	.uleb128 0x1
	.long	.LASF611
	.value	0x183
	.uleb128 0x1
	.long	.LASF612
	.value	0x184
	.uleb128 0x1
	.long	.LASF613
	.value	0x185
	.uleb128 0x1
	.long	.LASF614
	.value	0x186
	.uleb128 0x1
	.long	.LASF615
	.value	0x187
	.uleb128 0x1
	.long	.LASF616
	.value	0x188
	.uleb128 0x1
	.long	.LASF617
	.value	0x189
	.uleb128 0x1
	.long	.LASF618
	.value	0x18a
	.uleb128 0x1
	.long	.LASF619
	.value	0x18b
	.uleb128 0x1
	.long	.LASF620
	.value	0x18c
	.uleb128 0x1
	.long	.LASF621
	.value	0x18d
	.uleb128 0x1
	.long	.LASF622
	.value	0x18e
	.uleb128 0x1
	.long	.LASF623
	.value	0x18f
	.uleb128 0x1
	.long	.LASF624
	.value	0x190
	.uleb128 0x1
	.long	.LASF625
	.value	0x191
	.uleb128 0x1
	.long	.LASF626
	.value	0x192
	.uleb128 0x1
	.long	.LASF627
	.value	0x193
	.uleb128 0x1
	.long	.LASF628
	.value	0x194
	.uleb128 0x1
	.long	.LASF629
	.value	0x195
	.uleb128 0x1
	.long	.LASF630
	.value	0x196
	.uleb128 0x1
	.long	.LASF631
	.value	0x197
	.uleb128 0x1
	.long	.LASF632
	.value	0x198
	.uleb128 0x1
	.long	.LASF633
	.value	0x199
	.uleb128 0x1
	.long	.LASF634
	.value	0x19a
	.uleb128 0x1
	.long	.LASF635
	.value	0x19b
	.uleb128 0x1
	.long	.LASF636
	.value	0x19c
	.uleb128 0x1
	.long	.LASF637
	.value	0x19d
	.uleb128 0x1
	.long	.LASF638
	.value	0x19e
	.uleb128 0x1
	.long	.LASF639
	.value	0x19f
	.uleb128 0x1
	.long	.LASF640
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF641
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF642
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF643
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF644
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF645
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF646
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF647
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF648
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF649
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF650
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF651
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF652
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF653
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF654
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF655
	.value	0x1af
	.uleb128 0x1
	.long	.LASF656
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF657
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF658
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF659
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF660
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF661
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF662
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF663
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF664
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF665
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF666
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF667
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF668
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF669
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF670
	.value	0x1be
	.uleb128 0x1
	.long	.LASF671
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF672
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF673
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF674
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF675
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF676
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF677
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF678
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF679
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF680
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF681
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF682
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF683
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF684
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF685
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF686
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF687
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF688
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF689
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF690
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF691
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF692
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF693
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF694
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF695
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF696
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF697
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF698
	.value	0x1da
	.uleb128 0x1
	.long	.LASF699
	.value	0x1db
	.uleb128 0x1
	.long	.LASF700
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF701
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF702
	.value	0x1de
	.uleb128 0x1
	.long	.LASF703
	.value	0x1df
	.uleb128 0x1
	.long	.LASF704
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF705
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF706
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF707
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF708
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF709
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF710
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF711
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF712
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF713
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF715
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF716
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF717
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF718
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF719
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF720
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF721
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF722
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF723
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF724
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF725
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF726
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF727
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF728
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF729
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF730
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF731
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF732
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF733
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF734
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF735
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF736
	.value	0x200
	.uleb128 0x1
	.long	.LASF737
	.value	0x201
	.uleb128 0x1
	.long	.LASF738
	.value	0x202
	.uleb128 0x1
	.long	.LASF739
	.value	0x203
	.uleb128 0x1
	.long	.LASF740
	.value	0x204
	.uleb128 0x1
	.long	.LASF741
	.value	0x205
	.uleb128 0x1
	.long	.LASF742
	.value	0x206
	.uleb128 0x1
	.long	.LASF743
	.value	0x207
	.uleb128 0x1
	.long	.LASF744
	.value	0x208
	.uleb128 0x1
	.long	.LASF745
	.value	0x209
	.uleb128 0x1
	.long	.LASF746
	.value	0x20a
	.uleb128 0x1
	.long	.LASF747
	.value	0x20b
	.uleb128 0x1
	.long	.LASF748
	.value	0x20c
	.uleb128 0x1
	.long	.LASF749
	.value	0x20d
	.uleb128 0x1
	.long	.LASF750
	.value	0x20e
	.uleb128 0x1
	.long	.LASF751
	.value	0x20f
	.uleb128 0x1
	.long	.LASF752
	.value	0x210
	.uleb128 0x1
	.long	.LASF753
	.value	0x211
	.uleb128 0x1
	.long	.LASF754
	.value	0x212
	.uleb128 0x1
	.long	.LASF755
	.value	0x213
	.uleb128 0x1
	.long	.LASF756
	.value	0x214
	.uleb128 0x1
	.long	.LASF757
	.value	0x215
	.uleb128 0x1
	.long	.LASF758
	.value	0x216
	.uleb128 0x1
	.long	.LASF759
	.value	0x217
	.uleb128 0x1
	.long	.LASF760
	.value	0x218
	.uleb128 0x1
	.long	.LASF761
	.value	0x219
	.uleb128 0x1
	.long	.LASF762
	.value	0x21a
	.uleb128 0x1
	.long	.LASF763
	.value	0x21b
	.uleb128 0x1
	.long	.LASF764
	.value	0x21c
	.uleb128 0x1
	.long	.LASF765
	.value	0x21d
	.uleb128 0x1
	.long	.LASF766
	.value	0x21e
	.uleb128 0x1
	.long	.LASF767
	.value	0x21f
	.uleb128 0x1
	.long	.LASF768
	.value	0x220
	.uleb128 0x1
	.long	.LASF769
	.value	0x221
	.uleb128 0x1
	.long	.LASF770
	.value	0x222
	.uleb128 0x1
	.long	.LASF771
	.value	0x223
	.uleb128 0x1
	.long	.LASF772
	.value	0x224
	.uleb128 0x1
	.long	.LASF773
	.value	0x225
	.uleb128 0x1
	.long	.LASF774
	.value	0x226
	.uleb128 0x1
	.long	.LASF775
	.value	0x227
	.uleb128 0x1
	.long	.LASF776
	.value	0x228
	.uleb128 0x1
	.long	.LASF777
	.value	0x229
	.uleb128 0x1
	.long	.LASF778
	.value	0x22a
	.uleb128 0x1
	.long	.LASF779
	.value	0x22b
	.uleb128 0x1
	.long	.LASF780
	.value	0x22c
	.uleb128 0x1
	.long	.LASF781
	.value	0x22d
	.uleb128 0x1
	.long	.LASF782
	.value	0x22e
	.uleb128 0x1
	.long	.LASF783
	.value	0x22f
	.uleb128 0x1
	.long	.LASF784
	.value	0x230
	.uleb128 0x1
	.long	.LASF785
	.value	0x231
	.uleb128 0x1
	.long	.LASF786
	.value	0x232
	.uleb128 0x1
	.long	.LASF787
	.value	0x233
	.uleb128 0x1
	.long	.LASF788
	.value	0x234
	.uleb128 0x1
	.long	.LASF789
	.value	0x235
	.uleb128 0x1
	.long	.LASF790
	.value	0x236
	.uleb128 0x1
	.long	.LASF791
	.value	0x237
	.uleb128 0x1
	.long	.LASF792
	.value	0x238
	.uleb128 0x1
	.long	.LASF793
	.value	0x239
	.uleb128 0x1
	.long	.LASF794
	.value	0x23a
	.uleb128 0x1
	.long	.LASF795
	.value	0x23b
	.uleb128 0x1
	.long	.LASF796
	.value	0x23c
	.uleb128 0x1
	.long	.LASF797
	.value	0x23d
	.uleb128 0x1
	.long	.LASF798
	.value	0x23e
	.uleb128 0x1
	.long	.LASF799
	.value	0x23f
	.uleb128 0x1
	.long	.LASF800
	.value	0x240
	.uleb128 0x1
	.long	.LASF801
	.value	0x241
	.uleb128 0x1
	.long	.LASF802
	.value	0x242
	.uleb128 0x1
	.long	.LASF803
	.value	0x243
	.uleb128 0x1
	.long	.LASF804
	.value	0x244
	.uleb128 0x1
	.long	.LASF805
	.value	0x245
	.uleb128 0x1
	.long	.LASF806
	.value	0x246
	.uleb128 0x1
	.long	.LASF807
	.value	0x247
	.uleb128 0x1
	.long	.LASF808
	.value	0x248
	.uleb128 0x1
	.long	.LASF809
	.value	0x249
	.uleb128 0x1
	.long	.LASF810
	.value	0x24a
	.uleb128 0x1
	.long	.LASF811
	.value	0x24b
	.uleb128 0x1
	.long	.LASF812
	.value	0x24c
	.uleb128 0x1
	.long	.LASF813
	.value	0x24d
	.uleb128 0x1
	.long	.LASF814
	.value	0x24e
	.uleb128 0x1
	.long	.LASF815
	.value	0x24f
	.uleb128 0x1
	.long	.LASF816
	.value	0x250
	.uleb128 0x1
	.long	.LASF817
	.value	0x251
	.uleb128 0x1
	.long	.LASF818
	.value	0x252
	.uleb128 0x1
	.long	.LASF819
	.value	0x253
	.uleb128 0x1
	.long	.LASF820
	.value	0x254
	.uleb128 0x1
	.long	.LASF821
	.value	0x255
	.uleb128 0x1
	.long	.LASF822
	.value	0x256
	.uleb128 0x1
	.long	.LASF823
	.value	0x257
	.uleb128 0x1
	.long	.LASF824
	.value	0x258
	.uleb128 0x1
	.long	.LASF825
	.value	0x259
	.uleb128 0x1
	.long	.LASF826
	.value	0x25a
	.uleb128 0x1
	.long	.LASF827
	.value	0x25b
	.uleb128 0x1
	.long	.LASF828
	.value	0x25c
	.uleb128 0x1
	.long	.LASF829
	.value	0x25d
	.uleb128 0x1
	.long	.LASF830
	.value	0x25e
	.uleb128 0x1
	.long	.LASF831
	.value	0x25f
	.uleb128 0x1
	.long	.LASF832
	.value	0x260
	.uleb128 0x1
	.long	.LASF833
	.value	0x261
	.uleb128 0x1
	.long	.LASF834
	.value	0x262
	.uleb128 0x1
	.long	.LASF835
	.value	0x263
	.uleb128 0x1
	.long	.LASF836
	.value	0x264
	.uleb128 0x1
	.long	.LASF837
	.value	0x265
	.uleb128 0x1
	.long	.LASF838
	.value	0x266
	.uleb128 0x1
	.long	.LASF839
	.value	0x267
	.uleb128 0x1
	.long	.LASF840
	.value	0x268
	.uleb128 0x1
	.long	.LASF841
	.value	0x269
	.uleb128 0x1
	.long	.LASF842
	.value	0x26a
	.uleb128 0x1
	.long	.LASF843
	.value	0x26b
	.uleb128 0x1
	.long	.LASF844
	.value	0x26c
	.uleb128 0x1
	.long	.LASF845
	.value	0x26d
	.uleb128 0x1
	.long	.LASF846
	.value	0x26e
	.uleb128 0x1
	.long	.LASF847
	.value	0x26f
	.uleb128 0x1
	.long	.LASF848
	.value	0x270
	.uleb128 0x1
	.long	.LASF849
	.value	0x271
	.uleb128 0x1
	.long	.LASF850
	.value	0x272
	.uleb128 0x1
	.long	.LASF851
	.value	0x273
	.uleb128 0x1
	.long	.LASF852
	.value	0x274
	.uleb128 0x1
	.long	.LASF853
	.value	0x275
	.uleb128 0x1
	.long	.LASF854
	.value	0x276
	.uleb128 0x1
	.long	.LASF855
	.value	0x277
	.uleb128 0x1
	.long	.LASF856
	.value	0x278
	.uleb128 0x1
	.long	.LASF857
	.value	0x279
	.uleb128 0x1
	.long	.LASF858
	.value	0x27a
	.uleb128 0x1
	.long	.LASF859
	.value	0x27b
	.uleb128 0x1
	.long	.LASF860
	.value	0x27c
	.uleb128 0x1
	.long	.LASF861
	.value	0x27d
	.uleb128 0x1
	.long	.LASF862
	.value	0x27e
	.uleb128 0x1
	.long	.LASF863
	.value	0x27f
	.uleb128 0x1
	.long	.LASF864
	.value	0x280
	.uleb128 0x1
	.long	.LASF865
	.value	0x281
	.uleb128 0x1
	.long	.LASF866
	.value	0x282
	.uleb128 0x1
	.long	.LASF867
	.value	0x283
	.uleb128 0x1
	.long	.LASF868
	.value	0x284
	.uleb128 0x1
	.long	.LASF869
	.value	0x285
	.uleb128 0x1
	.long	.LASF870
	.value	0x286
	.uleb128 0x1
	.long	.LASF871
	.value	0x287
	.uleb128 0x1
	.long	.LASF872
	.value	0x288
	.uleb128 0x1
	.long	.LASF873
	.value	0x289
	.uleb128 0x1
	.long	.LASF874
	.value	0x28a
	.uleb128 0x1
	.long	.LASF875
	.value	0x28b
	.uleb128 0x1
	.long	.LASF876
	.value	0x28c
	.uleb128 0x1
	.long	.LASF877
	.value	0x28d
	.uleb128 0x1
	.long	.LASF878
	.value	0x28e
	.uleb128 0x1
	.long	.LASF879
	.value	0x28f
	.uleb128 0x1
	.long	.LASF880
	.value	0x290
	.uleb128 0x1
	.long	.LASF881
	.value	0x291
	.uleb128 0x1
	.long	.LASF882
	.value	0x292
	.uleb128 0x1
	.long	.LASF883
	.value	0x293
	.uleb128 0x1
	.long	.LASF884
	.value	0x294
	.uleb128 0x1
	.long	.LASF885
	.value	0x295
	.uleb128 0x1
	.long	.LASF886
	.value	0x296
	.uleb128 0x1
	.long	.LASF887
	.value	0x297
	.uleb128 0x1
	.long	.LASF888
	.value	0x298
	.uleb128 0x1
	.long	.LASF889
	.value	0x299
	.uleb128 0x1
	.long	.LASF890
	.value	0x29a
	.uleb128 0x1
	.long	.LASF891
	.value	0x29b
	.uleb128 0x1
	.long	.LASF892
	.value	0x29c
	.uleb128 0x1
	.long	.LASF893
	.value	0x29d
	.uleb128 0x1
	.long	.LASF894
	.value	0x29e
	.uleb128 0x1
	.long	.LASF895
	.value	0x29f
	.uleb128 0x1
	.long	.LASF896
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF897
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF898
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF899
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF900
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF901
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF902
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF903
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF904
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF905
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF906
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF907
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF908
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF909
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF910
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF911
	.value	0x2af
	.uleb128 0x1
	.long	.LASF912
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF913
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF914
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF915
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF916
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF917
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF918
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF919
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF920
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF921
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF922
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF923
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF924
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF925
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF926
	.value	0x2be
	.uleb128 0x1
	.long	.LASF927
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF928
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF929
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF930
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF931
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF932
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF933
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF934
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF935
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF936
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF937
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF938
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF939
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF940
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF941
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF942
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF943
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF944
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF945
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF946
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF947
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF948
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF949
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF950
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF951
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF952
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF953
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF954
	.value	0x2da
	.uleb128 0x1
	.long	.LASF955
	.value	0x2db
	.uleb128 0x1
	.long	.LASF956
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF957
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF958
	.value	0x2de
	.uleb128 0x1
	.long	.LASF959
	.value	0x2df
	.uleb128 0x1
	.long	.LASF960
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF961
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF962
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF963
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF964
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF965
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF966
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF967
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF968
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF969
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF971
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF972
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF973
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF974
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF975
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF976
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF977
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF978
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF979
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF980
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF981
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF982
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF983
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF984
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF985
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF986
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF987
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF988
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF989
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF990
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF991
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF992
	.value	0x300
	.uleb128 0x1
	.long	.LASF993
	.value	0x301
	.uleb128 0x1
	.long	.LASF994
	.value	0x302
	.uleb128 0x1
	.long	.LASF995
	.value	0x303
	.uleb128 0x1
	.long	.LASF996
	.value	0x304
	.uleb128 0x1
	.long	.LASF997
	.value	0x305
	.uleb128 0x1
	.long	.LASF998
	.value	0x306
	.uleb128 0x1
	.long	.LASF999
	.value	0x307
	.uleb128 0x1
	.long	.LASF1000
	.value	0x308
	.uleb128 0x1
	.long	.LASF1001
	.value	0x309
	.uleb128 0x1
	.long	.LASF1002
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1003
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1004
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1005
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1006
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1007
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1008
	.value	0x310
	.uleb128 0x1
	.long	.LASF1009
	.value	0x311
	.uleb128 0x1
	.long	.LASF1010
	.value	0x312
	.uleb128 0x1
	.long	.LASF1011
	.value	0x313
	.uleb128 0x1
	.long	.LASF1012
	.value	0x314
	.uleb128 0x1
	.long	.LASF1013
	.value	0x315
	.uleb128 0x1
	.long	.LASF1014
	.value	0x316
	.uleb128 0x1
	.long	.LASF1015
	.value	0x317
	.uleb128 0x1
	.long	.LASF1016
	.value	0x318
	.uleb128 0x1
	.long	.LASF1017
	.value	0x319
	.uleb128 0x1
	.long	.LASF1018
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1019
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1020
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1021
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1022
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1023
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1024
	.value	0x320
	.uleb128 0x1
	.long	.LASF1025
	.value	0x321
	.uleb128 0x1
	.long	.LASF1026
	.value	0x322
	.uleb128 0x1
	.long	.LASF1027
	.value	0x323
	.uleb128 0x1
	.long	.LASF1028
	.value	0x324
	.uleb128 0x1
	.long	.LASF1029
	.value	0x325
	.uleb128 0x1
	.long	.LASF1030
	.value	0x326
	.uleb128 0x1
	.long	.LASF1031
	.value	0x327
	.uleb128 0x1
	.long	.LASF1032
	.value	0x328
	.uleb128 0x1
	.long	.LASF1033
	.value	0x329
	.uleb128 0x1
	.long	.LASF1034
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1035
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1036
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1037
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1038
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1039
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1040
	.value	0x330
	.uleb128 0x1
	.long	.LASF1041
	.value	0x331
	.uleb128 0x1
	.long	.LASF1042
	.value	0x332
	.uleb128 0x1
	.long	.LASF1043
	.value	0x333
	.uleb128 0x1
	.long	.LASF1044
	.value	0x334
	.uleb128 0x1
	.long	.LASF1045
	.value	0x335
	.uleb128 0x1
	.long	.LASF1046
	.value	0x336
	.uleb128 0x1
	.long	.LASF1047
	.value	0x337
	.uleb128 0x1
	.long	.LASF1048
	.value	0x338
	.uleb128 0x1
	.long	.LASF1049
	.value	0x339
	.uleb128 0x1
	.long	.LASF1050
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1051
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1052
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1053
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1054
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1055
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1056
	.value	0x340
	.uleb128 0x1
	.long	.LASF1057
	.value	0x341
	.uleb128 0x1
	.long	.LASF1058
	.value	0x342
	.uleb128 0x1
	.long	.LASF1059
	.value	0x343
	.uleb128 0x1
	.long	.LASF1060
	.value	0x344
	.uleb128 0x1
	.long	.LASF1061
	.value	0x345
	.uleb128 0x1
	.long	.LASF1062
	.value	0x346
	.uleb128 0x1
	.long	.LASF1063
	.value	0x347
	.uleb128 0x1
	.long	.LASF1064
	.value	0x348
	.uleb128 0x1
	.long	.LASF1065
	.value	0x349
	.uleb128 0x1
	.long	.LASF1066
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1067
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1068
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1069
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1070
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1071
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1072
	.value	0x350
	.uleb128 0x1
	.long	.LASF1073
	.value	0x351
	.uleb128 0x1
	.long	.LASF1074
	.value	0x352
	.uleb128 0x1
	.long	.LASF1075
	.value	0x353
	.uleb128 0x1
	.long	.LASF1076
	.value	0x354
	.uleb128 0x1
	.long	.LASF1077
	.value	0x355
	.uleb128 0x1
	.long	.LASF1078
	.value	0x356
	.uleb128 0x1
	.long	.LASF1079
	.value	0x357
	.uleb128 0x1
	.long	.LASF1080
	.value	0x358
	.uleb128 0x1
	.long	.LASF1081
	.value	0x359
	.uleb128 0x1
	.long	.LASF1082
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1083
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1084
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1085
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1086
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1087
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1088
	.value	0x360
	.uleb128 0x1
	.long	.LASF1089
	.value	0x361
	.uleb128 0x1
	.long	.LASF1090
	.value	0x362
	.uleb128 0x1
	.long	.LASF1091
	.value	0x363
	.uleb128 0x1
	.long	.LASF1092
	.value	0x364
	.uleb128 0x1
	.long	.LASF1093
	.value	0x365
	.uleb128 0x1
	.long	.LASF1094
	.value	0x366
	.uleb128 0x1
	.long	.LASF1095
	.value	0x367
	.uleb128 0x1
	.long	.LASF1096
	.value	0x368
	.uleb128 0x1
	.long	.LASF1097
	.value	0x369
	.uleb128 0x1
	.long	.LASF1098
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1099
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1100
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1101
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1102
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1103
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1104
	.value	0x370
	.uleb128 0x1
	.long	.LASF1105
	.value	0x371
	.uleb128 0x1
	.long	.LASF1106
	.value	0x372
	.uleb128 0x1
	.long	.LASF1107
	.value	0x373
	.uleb128 0x1
	.long	.LASF1108
	.value	0x374
	.uleb128 0x1
	.long	.LASF1109
	.value	0x375
	.uleb128 0x1
	.long	.LASF1110
	.value	0x376
	.uleb128 0x1
	.long	.LASF1111
	.value	0x377
	.uleb128 0x1
	.long	.LASF1112
	.value	0x378
	.uleb128 0x1
	.long	.LASF1113
	.value	0x379
	.uleb128 0x1
	.long	.LASF1114
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1115
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1116
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1117
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1118
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1119
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1120
	.value	0x380
	.uleb128 0x1
	.long	.LASF1121
	.value	0x381
	.uleb128 0x1
	.long	.LASF1122
	.value	0x382
	.uleb128 0x1
	.long	.LASF1123
	.value	0x383
	.uleb128 0x1
	.long	.LASF1124
	.value	0x384
	.uleb128 0x1
	.long	.LASF1125
	.value	0x385
	.uleb128 0x1
	.long	.LASF1126
	.value	0x386
	.uleb128 0x1
	.long	.LASF1127
	.value	0x387
	.uleb128 0x1
	.long	.LASF1128
	.value	0x388
	.uleb128 0x1
	.long	.LASF1129
	.value	0x389
	.uleb128 0x1
	.long	.LASF1130
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1131
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1132
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1133
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1134
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1135
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1136
	.value	0x390
	.uleb128 0x1
	.long	.LASF1137
	.value	0x391
	.uleb128 0x1
	.long	.LASF1138
	.value	0x392
	.uleb128 0x1
	.long	.LASF1139
	.value	0x393
	.uleb128 0x1
	.long	.LASF1140
	.value	0x394
	.uleb128 0x1
	.long	.LASF1141
	.value	0x395
	.uleb128 0x1
	.long	.LASF1142
	.value	0x396
	.uleb128 0x1
	.long	.LASF1143
	.value	0x397
	.uleb128 0x1
	.long	.LASF1144
	.value	0x398
	.uleb128 0x1
	.long	.LASF1145
	.value	0x399
	.uleb128 0x1
	.long	.LASF1146
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1147
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1148
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1149
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1150
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1151
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1179
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1180
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1181
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1182
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1183
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1184
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1185
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1186
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1187
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1188
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1189
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1190
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1191
	.value	0x3c7
	.byte	0
	.uleb128 0x14
	.long	.LASF1192
	.byte	0x9
	.value	0x478
	.long	0x778
	.uleb128 0x1a
	.byte	0x38
	.byte	0x9
	.value	0x47b
	.long	0x2175
	.uleb128 0x5
	.long	.LASF1193
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x76c
	.byte	0
	.uleb128 0x5
	.long	.LASF1194
	.byte	0x9
	.value	0x47e
	.byte	0xa
	.long	0x95
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1195
	.byte	0x9
	.value	0x47f
	.byte	0xa
	.long	0x95
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1196
	.byte	0x9
	.value	0x481
	.byte	0xf
	.long	0x344
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1197
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x20fd
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1198
	.byte	0x9
	.value	0x483
	.byte	0xa
	.long	0x95
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1199
	.byte	0x9
	.value	0x483
	.byte	0x11
	.long	0x95
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LASF1200
	.byte	0x9
	.value	0x484
	.long	0x2109
	.uleb128 0x28
	.byte	0x7
	.byte	0x4
	.long	0x79
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x24cd
	.uleb128 0x2
	.long	.LASF1201
	.byte	0
	.uleb128 0x2
	.long	.LASF1202
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1203
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1211
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1212
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1213
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1214
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1215
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1216
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x89
	.byte	0
	.uleb128 0x14
	.long	.LASF1339
	.byte	0x9
	.value	0x517
	.long	0x2181
	.uleb128 0x1a
	.byte	0x5c
	.byte	0x9
	.value	0x519
	.long	0x2625
	.uleb128 0x5
	.long	.LASF1340
	.byte	0x9
	.value	0x51b
	.byte	0x9
	.long	0x8e
	.byte	0
	.uleb128 0x5
	.long	.LASF1341
	.byte	0x9
	.value	0x51c
	.byte	0x9
	.long	0x8e
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1342
	.byte	0x9
	.value	0x51d
	.byte	0x9
	.long	0x8e
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1343
	.byte	0x9
	.value	0x51e
	.byte	0x9
	.long	0x8e
	.byte	0xc
	.uleb128 0x5
	.long	.LASF1344
	.byte	0x9
	.value	0x51f
	.byte	0x9
	.long	0x8e
	.byte	0x10
	.uleb128 0x5
	.long	.LASF1345
	.byte	0x9
	.value	0x520
	.byte	0x9
	.long	0x8e
	.byte	0x14
	.uleb128 0x5
	.long	.LASF1346
	.byte	0x9
	.value	0x521
	.byte	0x9
	.long	0x8e
	.byte	0x18
	.uleb128 0x5
	.long	.LASF1347
	.byte	0x9
	.value	0x522
	.byte	0x9
	.long	0x8e
	.byte	0x1c
	.uleb128 0x5
	.long	.LASF1348
	.byte	0x9
	.value	0x523
	.byte	0x9
	.long	0x8e
	.byte	0x20
	.uleb128 0x5
	.long	.LASF1349
	.byte	0x9
	.value	0x524
	.byte	0x9
	.long	0x8e
	.byte	0x24
	.uleb128 0x5
	.long	.LASF1350
	.byte	0x9
	.value	0x525
	.byte	0x9
	.long	0x8e
	.byte	0x28
	.uleb128 0x5
	.long	.LASF1351
	.byte	0x9
	.value	0x526
	.byte	0x9
	.long	0x8e
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF1352
	.byte	0x9
	.value	0x527
	.byte	0x9
	.long	0x8e
	.byte	0x30
	.uleb128 0x5
	.long	.LASF1353
	.byte	0x9
	.value	0x528
	.byte	0x9
	.long	0x8e
	.byte	0x34
	.uleb128 0x5
	.long	.LASF1354
	.byte	0x9
	.value	0x529
	.byte	0x9
	.long	0x8e
	.byte	0x38
	.uleb128 0x5
	.long	.LASF1355
	.byte	0x9
	.value	0x52a
	.byte	0x9
	.long	0x8e
	.byte	0x3c
	.uleb128 0x5
	.long	.LASF1356
	.byte	0x9
	.value	0x52b
	.byte	0x9
	.long	0x8e
	.byte	0x40
	.uleb128 0x5
	.long	.LASF1357
	.byte	0x9
	.value	0x52c
	.byte	0x9
	.long	0x8e
	.byte	0x44
	.uleb128 0x5
	.long	.LASF1358
	.byte	0x9
	.value	0x52d
	.byte	0x9
	.long	0x8e
	.byte	0x48
	.uleb128 0x5
	.long	.LASF1359
	.byte	0x9
	.value	0x52e
	.byte	0x9
	.long	0x8e
	.byte	0x4c
	.uleb128 0x5
	.long	.LASF1360
	.byte	0x9
	.value	0x52f
	.byte	0x9
	.long	0x8e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF1361
	.byte	0x9
	.value	0x530
	.byte	0x9
	.long	0x8e
	.byte	0x54
	.uleb128 0x5
	.long	.LASF1362
	.byte	0x9
	.value	0x531
	.byte	0x9
	.long	0x8e
	.byte	0x58
	.byte	0
	.uleb128 0x14
	.long	.LASF1363
	.byte	0x9
	.value	0x533
	.long	0x24d9
	.uleb128 0x15
	.long	.LASF1365
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x2808
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x395
	.byte	0
	.uleb128 0x6
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0x2b9
	.byte	0x18
	.uleb128 0x6
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x6
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0x2b9
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1367
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x2808
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1368
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x2808
	.byte	0x30
	.uleb128 0x3
	.long	.LASF81
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x3af
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1193
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x76c
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1194
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x8e
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1369
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x2808
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1370
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x2808
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1371
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x2841
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1372
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0x2b9
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1373
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0x2b9
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1356
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0x2b9
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1357
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0x2b9
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1374
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0x2b9
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1375
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0x2b9
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1376
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0x2b9
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x8e
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF61
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x24cd
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1378
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x2846
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1195
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x8e
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x284b
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x8e
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1380
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x8e
	.byte	0xa4
	.uleb128 0x5
	.long	.LASF1381
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x8e
	.byte	0xa8
	.uleb128 0x5
	.long	.LASF1382
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x8e
	.byte	0xac
	.uleb128 0x5
	.long	.LASF1383
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x2808
	.byte	0xb0
	.uleb128 0x5
	.long	.LASF1345
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x8e
	.byte	0xb8
	.uleb128 0x5
	.long	.LASF1384
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x8e
	.byte	0xbc
	.uleb128 0x5
	.long	.LASF1385
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x2a28
	.byte	0xc0
	.uleb128 0x5
	.long	.LASF1386
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x5
	.long	.LASF1387
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x411
	.byte	0xcc
	.uleb128 0x5
	.long	.LASF1388
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x2808
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x2631
	.uleb128 0x15
	.long	.LASF1389
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x2841
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2c6a
	.byte	0
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x87
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x280d
	.uleb128 0x8
	.long	0x2625
	.uleb128 0x8
	.long	0x2175
	.uleb128 0x29
	.long	.LASF1393
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x2a28
	.uleb128 0x6
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2b80
	.byte	0
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2f37
	.byte	0x8
	.uleb128 0x6
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x2f0c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0x2b9
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1396
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0x2b9
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1397
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x6
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0x2b9
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1380
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x8e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1398
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x8e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1399
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x8e
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1400
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2f43
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1401
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2f53
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1402
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0x227
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1403
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2b85
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1404
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x19a
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x19a
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2f63
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2b85
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1408
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2b85
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x8e
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x8e
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x8e
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x8e
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x8e
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0x9e
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x8e
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x8e
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2b80
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x8e
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x8e
	.byte	0xfc
	.uleb128 0x16
	.long	.LASF1422
	.byte	0xc
	.byte	0x9e
	.byte	0xb
	.long	0x8e
	.value	0x100
	.uleb128 0x16
	.long	.LASF1423
	.byte	0xc
	.byte	0xa1
	.byte	0xf
	.long	0x2f73
	.value	0x108
	.uleb128 0x16
	.long	.LASF1424
	.byte	0xc
	.byte	0xa4
	.byte	0xe
	.long	0x227
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x2850
	.uleb128 0x14
	.long	.LASF1425
	.byte	0xa
	.value	0x11e
	.long	0x2631
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x2a58
	.uleb128 0x6
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0x2b9
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF1426
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x2a39
	.uleb128 0x12
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2a9b
	.uleb128 0x3
	.long	.LASF1366
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x395
	.byte	0
	.uleb128 0x6
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0x2b9
	.byte	0x18
	.uleb128 0x6
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x6
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1427
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x2a64
	.uleb128 0x12
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2b80
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0x2b9
	.byte	0
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0x2b9
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x87
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x87
	.byte	0xe
	.uleb128 0x6
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x87
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x8e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2b80
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2b85
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1437
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2a9b
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x8e
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1438
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2b80
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0x9c
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1440
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1441
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2c54
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2a2d
	.uleb128 0x9
	.long	0x8e
	.long	0x2b95
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.long	.LASF1442
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2c54
	.uleb128 0x6
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2ca0
	.byte	0
	.uleb128 0x6
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2ca0
	.byte	0x8
	.uleb128 0x6
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0x2b9
	.byte	0x10
	.uleb128 0x6
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0x2b9
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1361
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x87
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x87
	.byte	0x1a
	.uleb128 0x6
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x87
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x3bb
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2ca5
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2c94
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2c6a
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2c6a
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1377
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x8e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1439
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0x9c
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x2c59
	.uleb128 0x8
	.long	0x2b95
	.uleb128 0x7
	.long	.LASF1448
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2aa7
	.uleb128 0x8
	.long	0x2c5e
	.uleb128 0xb
	.long	0x79
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2c94
	.uleb128 0x2
	.long	.LASF1449
	.byte	0
	.uleb128 0x2
	.long	.LASF1450
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1451
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1452
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1453
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2c6f
	.uleb128 0x8
	.long	0x2a58
	.uleb128 0x9
	.long	0x2b9
	.long	0x2cb5
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.byte	0x28
	.byte	0xb
	.value	0x164
	.long	0x2d05
	.uleb128 0x5
	.long	.LASF1454
	.byte	0xb
	.value	0x166
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0x5
	.long	.LASF1357
	.byte	0xb
	.value	0x167
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x5
	.long	.LASF1455
	.byte	0xb
	.value	0x168
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1456
	.byte	0xb
	.value	0x169
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x5
	.long	.LASF1457
	.byte	0xb
	.value	0x16a
	.byte	0xb
	.long	0x2d05
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x8e
	.long	0x2d15
	.uleb128 0xa
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.long	.LASF1458
	.byte	0xb
	.value	0x16c
	.long	0x2cb5
	.uleb128 0x12
	.byte	0x70
	.byte	0xd
	.byte	0x2d
	.long	0x2d7c
	.uleb128 0x6
	.string	"x"
	.byte	0xd
	.byte	0x30
	.byte	0xa
	.long	0x8e
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0xd
	.byte	0x31
	.byte	0xa
	.long	0x8e
	.byte	0x4
	.uleb128 0x6
	.string	"f"
	.byte	0xd
	.byte	0x33
	.byte	0xf
	.long	0x2d7c
	.byte	0x8
	.uleb128 0x6
	.string	"sc"
	.byte	0xd
	.byte	0x34
	.byte	0xa
	.long	0x8e
	.byte	0x10
	.uleb128 0x6
	.string	"l"
	.byte	0xd
	.byte	0x35
	.byte	0xa
	.long	0x2d86
	.byte	0x14
	.uleb128 0x6
	.string	"len"
	.byte	0xd
	.byte	0x36
	.byte	0xa
	.long	0x8e
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xd
	.byte	0x39
	.byte	0xa
	.long	0x8e
	.byte	0x6c
	.byte	0
	.uleb128 0x8
	.long	0x2d81
	.uleb128 0x8
	.long	0x2d15
	.uleb128 0x9
	.long	0x4a
	.long	0x2d96
	.uleb128 0xa
	.long	0x43
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF1460
	.byte	0xd
	.byte	0x3b
	.byte	0x3
	.long	0x2d21
	.uleb128 0x2a
	.value	0x1d8
	.byte	0xd
	.byte	0x41
	.byte	0x9
	.long	0x2de9
	.uleb128 0x6
	.string	"l"
	.byte	0xd
	.byte	0x43
	.byte	0x13
	.long	0x2de9
	.byte	0
	.uleb128 0x1b
	.string	"h"
	.byte	0x44
	.byte	0xb
	.long	0x8e
	.value	0x1c0
	.uleb128 0x1b
	.string	"cl"
	.byte	0x45
	.byte	0xb
	.long	0x8e
	.value	0x1c4
	.uleb128 0x1b
	.string	"on"
	.byte	0x48
	.byte	0xf
	.long	0x2df9
	.value	0x1c8
	.uleb128 0x16
	.long	.LASF1461
	.byte	0xd
	.byte	0x49
	.byte	0xe
	.long	0x227
	.value	0x1d0
	.byte	0
	.uleb128 0x9
	.long	0x2d96
	.long	0x2df9
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x227
	.uleb128 0x7
	.long	.LASF1462
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x2da2
	.uleb128 0x12
	.byte	0x88
	.byte	0xd
	.byte	0x51
	.long	0x2e43
	.uleb128 0x6
	.string	"l"
	.byte	0xd
	.byte	0x53
	.byte	0x13
	.long	0x2d96
	.byte	0
	.uleb128 0x6
	.string	"lm"
	.byte	0xd
	.byte	0x56
	.byte	0xb
	.long	0x8e
	.byte	0x70
	.uleb128 0x6
	.string	"on"
	.byte	0xd
	.byte	0x59
	.byte	0xf
	.long	0x2df9
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xd
	.byte	0x5a
	.byte	0xe
	.long	0x227
	.byte	0x80
	.byte	0
	.uleb128 0x7
	.long	.LASF1463
	.byte	0xd
	.byte	0x5c
	.byte	0x3
	.long	0x2e0a
	.uleb128 0xb
	.long	0x79
	.byte	0xe
	.byte	0x3d
	.byte	0x1
	.long	0x2e6e
	.uleb128 0x2
	.long	.LASF1464
	.byte	0
	.uleb128 0x2
	.long	.LASF1465
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1466
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0x18
	.byte	0xe
	.byte	0x44
	.long	0x2ea9
	.uleb128 0x3
	.long	.LASF1379
	.byte	0xe
	.byte	0x46
	.byte	0xe
	.long	0x284b
	.byte	0
	.uleb128 0x3
	.long	.LASF1195
	.byte	0xe
	.byte	0x47
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0x6
	.string	"sx"
	.byte	0xe
	.byte	0x48
	.byte	0xd
	.long	0x2b9
	.byte	0xc
	.uleb128 0x6
	.string	"sy"
	.byte	0xe
	.byte	0x49
	.byte	0xd
	.long	0x2b9
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF1467
	.byte	0xe
	.byte	0x4b
	.byte	0x3
	.long	0x2e6e
	.uleb128 0x12
	.byte	0x8
	.byte	0xf
	.byte	0x24
	.long	0x2f0c
	.uleb128 0x3
	.long	.LASF1468
	.byte	0xf
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1469
	.byte	0xf
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1470
	.byte	0xf
	.byte	0x28
	.byte	0xb
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1471
	.byte	0xf
	.byte	0x29
	.byte	0xb
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1472
	.byte	0xf
	.byte	0x2a
	.byte	0xa
	.long	0x233
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1473
	.byte	0xf
	.byte	0x2b
	.byte	0xa
	.long	0x233
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	.LASF1474
	.byte	0xf
	.byte	0x2c
	.byte	0x3
	.long	0x2eb5
	.uleb128 0xb
	.long	0x79
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2f37
	.uleb128 0x2
	.long	.LASF1475
	.byte	0
	.uleb128 0x2
	.long	.LASF1476
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1477
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF1478
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2f18
	.uleb128 0x9
	.long	0x8e
	.long	0x2f53
	.uleb128 0xa
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0x227
	.long	0x2f63
	.uleb128 0xa
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0x227
	.long	0x2f73
	.uleb128 0xa
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x2ea9
	.long	0x2f83
	.uleb128 0xa
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1479
	.byte	0xc
	.byte	0xa6
	.byte	0x3
	.long	0x2850
	.uleb128 0x13
	.long	.LASF1480
	.byte	0x10
	.byte	0x3c
	.byte	0x13
	.long	0xe3
	.uleb128 0x13
	.long	.LASF1481
	.byte	0x10
	.byte	0x55
	.byte	0xe
	.long	0x8e
	.uleb128 0x13
	.long	.LASF1482
	.byte	0x10
	.byte	0x56
	.byte	0xe
	.long	0x8e
	.uleb128 0x13
	.long	.LASF1483
	.byte	0x10
	.byte	0x5c
	.byte	0x11
	.long	0x227
	.uleb128 0x13
	.long	.LASF1484
	.byte	0x10
	.byte	0x84
	.byte	0x11
	.long	0x227
	.uleb128 0x13
	.long	.LASF1485
	.byte	0x10
	.byte	0x9e
	.byte	0xd
	.long	0x8e
	.uleb128 0x9
	.long	0x2f83
	.long	0x2fe7
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF1486
	.byte	0x10
	.byte	0xd4
	.byte	0x11
	.long	0x2fd7
	.uleb128 0x9
	.long	0x227
	.long	0x3003
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF1487
	.byte	0x10
	.byte	0xd7
	.byte	0x12
	.long	0x2ff3
	.uleb128 0xb
	.long	0x79
	.byte	0x11
	.byte	0xb2
	.byte	0x1
	.long	0x32b0
	.uleb128 0x2
	.long	.LASF1488
	.byte	0
	.uleb128 0x2
	.long	.LASF1489
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1490
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1491
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1492
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1494
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1495
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1496
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1497
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1498
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1499
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1500
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1501
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1502
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1503
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1505
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1506
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1508
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1509
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1511
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1512
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1513
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1514
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1515
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1516
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1522
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1523
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1529
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1530
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1533
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1534
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1535
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1536
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1537
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1539
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1580
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1581
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1582
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1583
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1584
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1587
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1588
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1589
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1590
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1591
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1592
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1593
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1594
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1595
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1596
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1597
	.byte	0x6d
	.byte	0
	.uleb128 0x9
	.long	0x9e
	.long	0x32c0
	.uleb128 0xa
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.long	.LASF1598
	.byte	0x41
	.byte	0x7
	.long	0x32b0
	.uleb128 0x9
	.byte	0x3
	.quad	chat_macros
	.uleb128 0x9
	.long	0x9e
	.long	0x32e5
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF1599
	.byte	0x4f
	.byte	0x7
	.long	0x32d5
	.uleb128 0x9
	.byte	0x3
	.quad	player_names
	.uleb128 0x10
	.long	.LASF1600
	.byte	0x58
	.byte	0x8
	.long	0x4a
	.uleb128 0x9
	.byte	0x3
	.quad	chat_char
	.uleb128 0x2b
	.string	"plr"
	.byte	0x1
	.byte	0x59
	.byte	0x12
	.long	0x3325
	.uleb128 0x9
	.byte	0x3
	.quad	plr
	.uleb128 0x8
	.long	0x2f83
	.uleb128 0x9
	.long	0x2d81
	.long	0x333a
	.uleb128 0xa
	.long	0x43
	.byte	0x3e
	.byte	0
	.uleb128 0x10
	.long	.LASF1602
	.byte	0x5a
	.byte	0xb
	.long	0x332a
	.uleb128 0x9
	.byte	0x3
	.quad	hu_font
	.uleb128 0xe
	.long	.LASF1603
	.byte	0x5b
	.byte	0x16
	.long	0x2d96
	.uleb128 0x9
	.byte	0x3
	.quad	w_title
	.uleb128 0x10
	.long	.LASF1604
	.byte	0x5c
	.byte	0xb
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	chat_on
	.uleb128 0xe
	.long	.LASF1605
	.byte	0x5d
	.byte	0x13
	.long	0x2e43
	.uleb128 0x9
	.byte	0x3
	.quad	w_chat
	.uleb128 0xe
	.long	.LASF1606
	.byte	0x5e
	.byte	0x11
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	always_off
	.uleb128 0xe
	.long	.LASF1607
	.byte	0x5f
	.byte	0xe
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	chat_dest
	.uleb128 0x9
	.long	0x2e43
	.long	0x33c8
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF1608
	.byte	0x60
	.byte	0x13
	.long	0x33b8
	.uleb128 0x9
	.byte	0x3
	.quad	w_inputbuffer
	.uleb128 0xe
	.long	.LASF1609
	.byte	0x62
	.byte	0x11
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	message_on
	.uleb128 0x10
	.long	.LASF1610
	.byte	0x63
	.byte	0xb
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	message_dontfuckwithme
	.uleb128 0xe
	.long	.LASF1611
	.byte	0x64
	.byte	0x11
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	message_nottobefuckedwith
	.uleb128 0xe
	.long	.LASF1612
	.byte	0x66
	.byte	0x13
	.long	0x2dfe
	.uleb128 0x9
	.byte	0x3
	.quad	w_message
	.uleb128 0xe
	.long	.LASF1613
	.byte	0x67
	.byte	0xd
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	message_counter
	.uleb128 0x13
	.long	.LASF1614
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.long	0x8e
	.uleb128 0xe
	.long	.LASF1615
	.byte	0x6c
	.byte	0x11
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	headsupactive
	.uleb128 0x9
	.long	0x9e
	.long	0x3477
	.uleb128 0xa
	.long	0x43
	.byte	0x2c
	.byte	0
	.uleb128 0x10
	.long	.LASF1616
	.byte	0x73
	.byte	0x7
	.long	0x3467
	.uleb128 0x9
	.byte	0x3
	.quad	mapnames
	.uleb128 0x9
	.long	0x9e
	.long	0x349c
	.uleb128 0xa
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF1617
	.byte	0xa9
	.byte	0x7
	.long	0x348c
	.uleb128 0x9
	.byte	0x3
	.quad	mapnames2
	.uleb128 0x10
	.long	.LASF1618
	.byte	0xd0
	.byte	0x7
	.long	0x348c
	.uleb128 0x9
	.byte	0x3
	.quad	mapnamesp
	.uleb128 0x10
	.long	.LASF1619
	.byte	0xf7
	.byte	0x7
	.long	0x348c
	.uleb128 0x9
	.byte	0x3
	.quad	mapnamest
	.uleb128 0x17
	.long	.LASF1620
	.value	0x11e
	.byte	0xd
	.long	0xa3
	.uleb128 0x9
	.byte	0x3
	.quad	shiftxform
	.uleb128 0x9
	.long	0x51
	.long	0x3501
	.uleb128 0xa
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x19
	.long	0x34f1
	.uleb128 0x17
	.long	.LASF1621
	.value	0x120
	.byte	0xc
	.long	0x3501
	.uleb128 0x9
	.byte	0x3
	.quad	french_shiftxform
	.uleb128 0x17
	.long	.LASF1622
	.value	0x14a
	.byte	0xc
	.long	0x3501
	.uleb128 0x9
	.byte	0x3
	.quad	english_shiftxform
	.uleb128 0x9
	.long	0x4a
	.long	0x3542
	.uleb128 0xa
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0x17
	.long	.LASF1623
	.value	0x174
	.byte	0x6
	.long	0x3532
	.uleb128 0x9
	.byte	0x3
	.quad	frenchKeyMap
	.uleb128 0xc
	.long	.LASF1624
	.value	0x246
	.byte	0xd
	.long	0x3532
	.uleb128 0x9
	.byte	0x3
	.quad	chatchars
	.uleb128 0xc
	.long	.LASF1625
	.value	0x247
	.byte	0xc
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	head
	.uleb128 0xc
	.long	.LASF1626
	.value	0x248
	.byte	0xc
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	tail
	.uleb128 0x18
	.long	.LASF1629
	.byte	0x13
	.byte	0x8d
	.byte	0xe
	.long	0x9e
	.long	0x35b5
	.uleb128 0x4
	.long	0x9e
	.uleb128 0x4
	.long	0xa3
	.byte	0
	.uleb128 0xd
	.long	.LASF1627
	.byte	0xd
	.byte	0xac
	.byte	0x6
	.long	0x35c7
	.uleb128 0x4
	.long	0x35c7
	.byte	0
	.uleb128 0x8
	.long	0x2e43
	.uleb128 0xd
	.long	.LASF1628
	.byte	0x12
	.byte	0x3b
	.byte	0x1
	.long	0x35e3
	.uleb128 0x4
	.long	0x9c
	.uleb128 0x4
	.long	0x8e
	.byte	0
	.uleb128 0x18
	.long	.LASF1630
	.byte	0xd
	.byte	0xb6
	.byte	0x1
	.long	0x227
	.long	0x35fe
	.uleb128 0x4
	.long	0x35c7
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0xd
	.long	.LASF1631
	.byte	0xd
	.byte	0x90
	.byte	0x1
	.long	0x361a
	.uleb128 0x4
	.long	0x361a
	.uleb128 0x4
	.long	0x9e
	.uleb128 0x4
	.long	0x9e
	.byte	0
	.uleb128 0x8
	.long	0x2dfe
	.uleb128 0xd
	.long	.LASF1632
	.byte	0xd
	.byte	0x79
	.byte	0x6
	.long	0x3631
	.uleb128 0x4
	.long	0x3631
	.byte	0
	.uleb128 0x8
	.long	0x2d96
	.uleb128 0xd
	.long	.LASF1633
	.byte	0xd
	.byte	0xbd
	.byte	0x6
	.long	0x3648
	.uleb128 0x4
	.long	0x35c7
	.byte	0
	.uleb128 0xd
	.long	.LASF1634
	.byte	0xd
	.byte	0x99
	.byte	0x6
	.long	0x365a
	.uleb128 0x4
	.long	0x361a
	.byte	0
	.uleb128 0xd
	.long	.LASF1635
	.byte	0xd
	.byte	0x76
	.byte	0x6
	.long	0x3671
	.uleb128 0x4
	.long	0x3631
	.uleb128 0x4
	.long	0x227
	.byte	0
	.uleb128 0xd
	.long	.LASF1636
	.byte	0xd
	.byte	0xba
	.byte	0x6
	.long	0x3683
	.uleb128 0x4
	.long	0x35c7
	.byte	0
	.uleb128 0xd
	.long	.LASF1637
	.byte	0xd
	.byte	0x96
	.byte	0x6
	.long	0x3695
	.uleb128 0x4
	.long	0x361a
	.byte	0
	.uleb128 0xd
	.long	.LASF1638
	.byte	0xd
	.byte	0x9d
	.byte	0x1
	.long	0x36c0
	.uleb128 0x4
	.long	0x35c7
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x2d7c
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x2df9
	.byte	0
	.uleb128 0x18
	.long	.LASF1639
	.byte	0xd
	.byte	0x70
	.byte	0x9
	.long	0x227
	.long	0x36db
	.uleb128 0x4
	.long	0x3631
	.uleb128 0x4
	.long	0x4a
	.byte	0
	.uleb128 0xd
	.long	.LASF1640
	.byte	0xd
	.byte	0x6d
	.byte	0x6
	.long	0x3701
	.uleb128 0x4
	.long	0x3631
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x2d7c
	.uleb128 0x4
	.long	0x8e
	.byte	0
	.uleb128 0xd
	.long	.LASF1641
	.byte	0xd
	.byte	0x82
	.byte	0x1
	.long	0x3731
	.uleb128 0x4
	.long	0x361a
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x2d7c
	.uleb128 0x4
	.long	0x8e
	.uleb128 0x4
	.long	0x2df9
	.byte	0
	.uleb128 0x18
	.long	.LASF1642
	.byte	0x14
	.byte	0x4f
	.byte	0x7
	.long	0x9c
	.long	0x374c
	.uleb128 0x4
	.long	0x9e
	.uleb128 0x4
	.long	0x8e
	.byte	0
	.uleb128 0x2c
	.long	.LASF1643
	.byte	0x15
	.value	0x16d
	.byte	0xc
	.long	0x8e
	.long	0x3769
	.uleb128 0x4
	.long	0x9e
	.uleb128 0x4
	.long	0xa3
	.uleb128 0x1e
	.byte	0
	.uleb128 0x2d
	.long	.LASF1652
	.byte	0x1
	.value	0x269
	.byte	0x9
	.long	0x227
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3850
	.uleb128 0x1c
	.string	"ev"
	.value	0x269
	.byte	0x1f
	.long	0x3850
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.long	.LASF1644
	.value	0x26c
	.byte	0x12
	.long	0x2d86
	.uleb128 0x9
	.byte	0x3
	.quad	lastmessage.0
	.uleb128 0xc
	.long	.LASF1645
	.value	0x26d
	.byte	0xc
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF1646
	.value	0x26e
	.byte	0xe
	.long	0x227
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF1647
	.value	0x26f
	.byte	0x14
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	shiftdown.4
	.uleb128 0xc
	.long	.LASF1648
	.value	0x270
	.byte	0x14
	.long	0x227
	.uleb128 0x9
	.byte	0x3
	.quad	altdown.3
	.uleb128 0x11
	.string	"c"
	.value	0x271
	.byte	0x14
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x11
	.string	"i"
	.value	0x272
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF1649
	.value	0x273
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF1650
	.value	0x275
	.byte	0x12
	.long	0xa8
	.uleb128 0x9
	.byte	0x3
	.quad	destination_keys.2
	.uleb128 0xc
	.long	.LASF1651
	.value	0x27d
	.byte	0x11
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	num_nobrainers.1
	.byte	0
	.uleb128 0x8
	.long	0x2ad
	.uleb128 0x2e
	.long	.LASF1653
	.byte	0x1
	.value	0x258
	.byte	0x6
	.long	0x4a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3886
	.uleb128 0x11
	.string	"c"
	.value	0x25a
	.byte	0xa
	.long	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2f
	.long	.LASF1654
	.byte	0x1
	.value	0x24b
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b3
	.uleb128 0x1c
	.string	"c"
	.value	0x24b
	.byte	0x1c
	.long	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF1655
	.value	0x1f9
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f9
	.uleb128 0x11
	.string	"i"
	.value	0x1fc
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"rc"
	.value	0x1fc
	.byte	0xc
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.string	"c"
	.value	0x1fd
	.byte	0xa
	.long	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x21
	.long	.LASF1656
	.value	0x1f0
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF1657
	.value	0x1e6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF1658
	.value	0x1a3
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3963
	.uleb128 0x11
	.string	"i"
	.value	0x1a6
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"s"
	.value	0x1a7
	.byte	0xb
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF1659
	.byte	0x1
	.value	0x19e
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF1660
	.value	0x188
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x39c5
	.uleb128 0x11
	.string	"i"
	.value	0x18b
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"j"
	.value	0x18c
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF1661
	.value	0x18d
	.byte	0xa
	.long	0x39c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.long	0x39d5
	.uleb128 0xa
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x31
	.long	.LASF1662
	.byte	0x1
	.value	0x183
	.byte	0x6
	.long	0x4a
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.string	"ch"
	.value	0x183
	.byte	0x27
	.long	0x6b
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1c
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
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x2b
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
	.uleb128 0x3c
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
.LASF861:
	.string	"S_BSPI_RUN3"
.LASF862:
	.string	"S_BSPI_RUN4"
.LASF863:
	.string	"S_BSPI_RUN5"
.LASF864:
	.string	"S_BSPI_RUN6"
.LASF865:
	.string	"S_BSPI_RUN7"
.LASF866:
	.string	"S_BSPI_RUN8"
.LASF867:
	.string	"S_BSPI_RUN9"
.LASF1532:
	.string	"sfx_cybsit"
.LASF151:
	.string	"SPR_YSKU"
.LASF1498:
	.string	"sfx_sawup"
.LASF1419:
	.string	"attacker"
.LASF514:
	.string	"S_FIRE10"
.LASF515:
	.string	"S_FIRE11"
.LASF516:
	.string	"S_FIRE12"
.LASF517:
	.string	"S_FIRE13"
.LASF518:
	.string	"S_FIRE14"
.LASF519:
	.string	"S_FIRE15"
.LASF520:
	.string	"S_FIRE16"
.LASF521:
	.string	"S_FIRE17"
.LASF522:
	.string	"S_FIRE18"
.LASF523:
	.string	"S_FIRE19"
.LASF1335:
	.string	"MT_MISC84"
.LASF1268:
	.string	"MT_MISC20"
.LASF1082:
	.string	"S_MEGA2"
.LASF1083:
	.string	"S_MEGA3"
.LASF1084:
	.string	"S_MEGA4"
.LASF1272:
	.string	"MT_MISC24"
.LASF1273:
	.string	"MT_MISC25"
.LASF1275:
	.string	"MT_MISC26"
.LASF1276:
	.string	"MT_MISC27"
.LASF1277:
	.string	"MT_MISC28"
.LASF1280:
	.string	"MT_MISC29"
.LASF713:
	.string	"S_SARG_PAIN2"
.LASF1384:
	.string	"threshold"
.LASF27:
	.string	"wp_pistol"
.LASF192:
	.string	"SPR_COL1"
.LASF193:
	.string	"SPR_COL2"
.LASF194:
	.string	"SPR_COL3"
.LASF195:
	.string	"SPR_COL4"
.LASF204:
	.string	"SPR_COL5"
.LASF198:
	.string	"SPR_COL6"
.LASF1654:
	.string	"HU_queueChatChar"
.LASF1459:
	.string	"needsupdate"
.LASF1594:
	.string	"sfx_skesit"
.LASF1575:
	.string	"sfx_tink"
.LASF524:
	.string	"S_FIRE20"
.LASF525:
	.string	"S_FIRE21"
.LASF526:
	.string	"S_FIRE22"
.LASF527:
	.string	"S_FIRE23"
.LASF528:
	.string	"S_FIRE24"
.LASF178:
	.string	"SPR_COLU"
.LASF530:
	.string	"S_FIRE26"
.LASF531:
	.string	"S_FIRE27"
.LASF532:
	.string	"S_FIRE28"
.LASF533:
	.string	"S_FIRE29"
.LASF1281:
	.string	"MT_MISC30"
.LASF1196:
	.string	"action"
.LASF1283:
	.string	"MT_MISC32"
.LASF1284:
	.string	"MT_MISC33"
.LASF875:
	.string	"S_BSPI_PAIN"
.LASF1286:
	.string	"MT_MISC35"
.LASF347:
	.string	"S_BFGEXP"
.LASF42:
	.string	"am_misl"
.LASF1289:
	.string	"MT_MISC38"
.LASF1290:
	.string	"MT_MISC39"
.LASF1430:
	.string	"floorpic"
.LASF877:
	.string	"S_BSPI_DIE1"
.LASF1466:
	.string	"NUMPSPRITES"
.LASF882:
	.string	"S_BSPI_DIE6"
.LASF1581:
	.string	"sfx_getpow"
.LASF1451:
	.string	"ST_POSITIVE"
.LASF1395:
	.string	"viewz"
.LASF18:
	.string	"unknown"
.LASF773:
	.string	"S_BOSS_RAISE1"
.LASF774:
	.string	"S_BOSS_RAISE2"
.LASF1215:
	.string	"MT_HEAD"
.LASF775:
	.string	"S_BOSS_RAISE3"
.LASF534:
	.string	"S_FIRE30"
.LASF679:
	.string	"S_TROO_PAIN"
.LASF968:
	.string	"S_SSWV_DIE1"
.LASF778:
	.string	"S_BOSS_RAISE6"
.LASF970:
	.string	"S_SSWV_DIE3"
.LASF971:
	.string	"S_SSWV_DIE4"
.LASF972:
	.string	"S_SSWV_DIE5"
.LASF146:
	.string	"SPR_BKEY"
.LASF790:
	.string	"S_BOS2_ATK1"
.LASF791:
	.string	"S_BOS2_ATK2"
.LASF792:
	.string	"S_BOS2_ATK3"
.LASF180:
	.string	"SPR_GOR1"
.LASF187:
	.string	"SPR_GOR2"
.LASF188:
	.string	"SPR_GOR3"
.LASF189:
	.string	"SPR_GOR4"
.LASF190:
	.string	"SPR_GOR5"
.LASF1293:
	.string	"MT_MISC42"
.LASF1294:
	.string	"MT_MISC43"
.LASF547:
	.string	"S_SKEL_RUN1"
.LASF548:
	.string	"S_SKEL_RUN2"
.LASF549:
	.string	"S_SKEL_RUN3"
.LASF550:
	.string	"S_SKEL_RUN4"
.LASF551:
	.string	"S_SKEL_RUN5"
.LASF552:
	.string	"S_SKEL_RUN6"
.LASF553:
	.string	"S_SKEL_RUN7"
.LASF554:
	.string	"S_SKEL_RUN8"
.LASF555:
	.string	"S_SKEL_RUN9"
.LASF30:
	.string	"wp_missile"
.LASF1033:
	.string	"S_BEXP2"
.LASF1343:
	.string	"seestate"
.LASF728:
	.string	"S_HEAD_ATK1"
.LASF729:
	.string	"S_HEAD_ATK2"
.LASF730:
	.string	"S_HEAD_ATK3"
.LASF1445:
	.string	"slopetype"
.LASF982:
	.string	"S_SSWV_RAISE1"
.LASF983:
	.string	"S_SSWV_RAISE2"
.LASF984:
	.string	"S_SSWV_RAISE3"
.LASF985:
	.string	"S_SSWV_RAISE4"
.LASF986:
	.string	"S_SSWV_RAISE5"
.LASF81:
	.string	"angle"
.LASF1210:
	.string	"MT_FATSHOT"
.LASF166:
	.string	"SPR_CELL"
.LASF167:
	.string	"SPR_CELP"
.LASF1148:
	.string	"S_HEARTCOL"
.LASF1391:
	.string	"numlines"
.LASF1065:
	.string	"S_MEDI"
.LASF1072:
	.string	"S_PINV"
.LASF1259:
	.string	"MT_INS"
.LASF1302:
	.string	"MT_MISC51"
.LASF1303:
	.string	"MT_MISC52"
.LASF1257:
	.string	"MT_INV"
.LASF1305:
	.string	"MT_MISC54"
.LASF1162:
	.string	"S_BTORCHSHRT"
.LASF283:
	.string	"S_MISSILEUP"
.LASF1308:
	.string	"MT_MISC57"
.LASF1309:
	.string	"MT_MISC58"
.LASF1310:
	.string	"MT_MISC59"
.LASF460:
	.string	"S_SPOS_RAISE1"
.LASF1617:
	.string	"mapnames2"
.LASF1609:
	.string	"message_on"
.LASF1492:
	.string	"sfx_dshtgn"
.LASF254:
	.string	"S_SGUNFLASH1"
.LASF255:
	.string	"S_SGUNFLASH2"
.LASF802:
	.string	"S_BOS2_RAISE1"
.LASF803:
	.string	"S_BOS2_RAISE2"
.LASF804:
	.string	"S_BOS2_RAISE3"
.LASF805:
	.string	"S_BOS2_RAISE4"
.LASF806:
	.string	"S_BOS2_RAISE5"
.LASF807:
	.string	"S_BOS2_RAISE6"
.LASF808:
	.string	"S_BOS2_RAISE7"
.LASF567:
	.string	"S_SKEL_PAIN"
.LASF1054:
	.string	"S_RKEY"
.LASF75:
	.string	"next"
.LASF1628:
	.string	"S_StartSound"
.LASF1504:
	.string	"sfx_firsht"
.LASF1496:
	.string	"sfx_plasma"
.LASF236:
	.string	"S_PISTOLUP"
.LASF922:
	.string	"S_CYBER_DIE8"
.LASF1660:
	.string	"HU_Init"
.LASF1509:
	.string	"sfx_dorcls"
.LASF1311:
	.string	"MT_MISC60"
.LASF1312:
	.string	"MT_MISC61"
.LASF1313:
	.string	"MT_MISC62"
.LASF1314:
	.string	"MT_MISC63"
.LASF1315:
	.string	"MT_MISC64"
.LASF1316:
	.string	"MT_MISC65"
.LASF1317:
	.string	"MT_MISC66"
.LASF1318:
	.string	"MT_MISC67"
.LASF351:
	.string	"S_EXPLODE1"
.LASF352:
	.string	"S_EXPLODE2"
.LASF353:
	.string	"S_EXPLODE3"
.LASF1587:
	.string	"sfx_manatk"
.LASF1618:
	.string	"mapnamesp"
.LASF542:
	.string	"S_TRACEEXP1"
.LASF543:
	.string	"S_TRACEEXP2"
.LASF544:
	.string	"S_TRACEEXP3"
.LASF1619:
	.string	"mapnamest"
.LASF930:
	.string	"S_PAIN_RUN5"
.LASF1032:
	.string	"S_BEXP"
.LASF931:
	.string	"S_PAIN_RUN6"
.LASF1420:
	.string	"extralight"
.LASF1149:
	.string	"S_HEARTCOL2"
.LASF328:
	.string	"S_RBALLX1"
.LASF1495:
	.string	"sfx_dbload"
.LASF1357:
	.string	"height"
.LASF1242:
	.string	"MT_TELEPORTMAN"
.LASF1487:
	.string	"playeringame"
.LASF1321:
	.string	"MT_MISC70"
.LASF111:
	.string	"SPR_IFOG"
.LASF1323:
	.string	"MT_MISC72"
.LASF1324:
	.string	"MT_MISC73"
.LASF1325:
	.string	"MT_MISC74"
.LASF1326:
	.string	"MT_MISC75"
.LASF1327:
	.string	"MT_MISC76"
.LASF1155:
	.string	"S_GREENTORCH2"
.LASF1156:
	.string	"S_GREENTORCH3"
.LASF1157:
	.string	"S_GREENTORCH4"
.LASF996:
	.string	"S_COMMKEEN9"
.LASF645:
	.string	"S_CPOS_PAIN2"
.LASF868:
	.string	"S_BSPI_RUN10"
.LASF869:
	.string	"S_BSPI_RUN11"
.LASF870:
	.string	"S_BSPI_RUN12"
.LASF952:
	.string	"S_SSWV_RUN1"
.LASF953:
	.string	"S_SSWV_RUN2"
.LASF954:
	.string	"S_SSWV_RUN3"
.LASF955:
	.string	"S_SSWV_RUN4"
.LASF956:
	.string	"S_SSWV_RUN5"
.LASF957:
	.string	"S_SSWV_RUN6"
.LASF958:
	.string	"S_SSWV_RUN7"
.LASF959:
	.string	"S_SSWV_RUN8"
.LASF1137:
	.string	"S_SKULLCOL"
.LASF1209:
	.string	"MT_FATSO"
.LASF681:
	.string	"S_TROO_DIE1"
.LASF682:
	.string	"S_TROO_DIE2"
.LASF683:
	.string	"S_TROO_DIE3"
.LASF684:
	.string	"S_TROO_DIE4"
.LASF685:
	.string	"S_TROO_DIE5"
.LASF10:
	.string	"shareware"
.LASF1635:
	.string	"HUlib_drawTextLine"
.LASF1062:
	.string	"S_YSKULL"
.LASF1063:
	.string	"S_YSKULL2"
.LASF164:
	.string	"SPR_ROCK"
.LASF1234:
	.string	"MT_ROCKET"
.LASF1332:
	.string	"MT_MISC81"
.LASF1333:
	.string	"MT_MISC82"
.LASF1334:
	.string	"MT_MISC83"
.LASF640:
	.string	"S_CPOS_ATK1"
.LASF641:
	.string	"S_CPOS_ATK2"
.LASF642:
	.string	"S_CPOS_ATK3"
.LASF643:
	.string	"S_CPOS_ATK4"
.LASF1201:
	.string	"MT_PLAYER"
.LASF176:
	.string	"SPR_SHOT"
.LASF369:
	.string	"S_IFOG2"
.LASF370:
	.string	"S_IFOG3"
.LASF371:
	.string	"S_IFOG4"
.LASF372:
	.string	"S_IFOG5"
.LASF105:
	.string	"SPR_PLSE"
.LASF97:
	.string	"SPR_PLSF"
.LASF96:
	.string	"SPR_PLSG"
.LASF765:
	.string	"S_BOSS_PAIN2"
.LASF1485:
	.string	"consoleplayer"
.LASF465:
	.string	"S_VILE_STND"
.LASF993:
	.string	"S_COMMKEEN6"
.LASF994:
	.string	"S_COMMKEEN7"
.LASF995:
	.string	"S_COMMKEEN8"
.LASF104:
	.string	"SPR_PLSS"
.LASF844:
	.string	"S_SPID_PAIN2"
.LASF1522:
	.string	"sfx_oof"
.LASF1358:
	.string	"mass"
.LASF1563:
	.string	"sfx_posact"
.LASF217:
	.string	"SPR_POB1"
.LASF218:
	.string	"SPR_POB2"
.LASF1066:
	.string	"S_SOUL"
.LASF1554:
	.string	"sfx_skldth"
.LASF1076:
	.string	"S_PSTR"
.LASF908:
	.string	"S_CYBER_ATK1"
.LASF909:
	.string	"S_CYBER_ATK2"
.LASF910:
	.string	"S_CYBER_ATK3"
.LASF911:
	.string	"S_CYBER_ATK4"
.LASF912:
	.string	"S_CYBER_ATK5"
.LASF913:
	.string	"S_CYBER_ATK6"
.LASF1103:
	.string	"S_BFUG"
.LASF143:
	.string	"SPR_FCAN"
.LASF586:
	.string	"S_FATT_STND"
.LASF1023:
	.string	"S_BRAINEXPLODE1"
.LASF1024:
	.string	"S_BRAINEXPLODE2"
.LASF1025:
	.string	"S_BRAINEXPLODE3"
.LASF307:
	.string	"S_BFGUP"
.LASF148:
	.string	"SPR_YKEY"
.LASF694:
	.string	"S_TROO_RAISE1"
.LASF695:
	.string	"S_TROO_RAISE2"
.LASF696:
	.string	"S_TROO_RAISE3"
.LASF697:
	.string	"S_TROO_RAISE4"
.LASF698:
	.string	"S_TROO_RAISE5"
.LASF1107:
	.string	"S_PLAS"
.LASF989:
	.string	"S_COMMKEEN2"
.LASF990:
	.string	"S_COMMKEEN3"
.LASF991:
	.string	"S_COMMKEEN4"
.LASF992:
	.string	"S_COMMKEEN5"
.LASF373:
	.string	"S_PLAY"
.LASF939:
	.string	"S_PAIN_DIE2"
.LASF940:
	.string	"S_PAIN_DIE3"
.LASF941:
	.string	"S_PAIN_DIE4"
.LASF942:
	.string	"S_PAIN_DIE5"
.LASF943:
	.string	"S_PAIN_DIE6"
.LASF1212:
	.string	"MT_TROOP"
.LASF494:
	.string	"S_VILE_PAIN2"
.LASF1608:
	.string	"w_inputbuffer"
.LASF622:
	.string	"S_FATT_RAISE1"
.LASF31:
	.string	"wp_plasma"
.LASF624:
	.string	"S_FATT_RAISE3"
.LASF625:
	.string	"S_FATT_RAISE4"
.LASF626:
	.string	"S_FATT_RAISE5"
.LASF627:
	.string	"S_FATT_RAISE6"
.LASF628:
	.string	"S_FATT_RAISE7"
.LASF629:
	.string	"S_FATT_RAISE8"
.LASF1620:
	.string	"shiftxform"
.LASF338:
	.string	"S_ROCKET"
.LASF1233:
	.string	"MT_HEADSHOT"
.LASF1440:
	.string	"linecount"
.LASF1443:
	.string	"sidenum"
.LASF891:
	.string	"S_ARACH_PLAZ"
.LASF1130:
	.string	"S_STALAGTITE"
.LASF732:
	.string	"S_HEAD_PAIN2"
.LASF733:
	.string	"S_HEAD_PAIN3"
.LASF55:
	.string	"byte"
.LASF24:
	.string	"it_redskull"
.LASF1564:
	.string	"sfx_bgact"
.LASF1240:
	.string	"MT_TFOG"
.LASF441:
	.string	"S_SPOS_ATK1"
.LASF442:
	.string	"S_SPOS_ATK2"
.LASF443:
	.string	"S_SPOS_ATK3"
.LASF378:
	.string	"S_PLAY_ATK1"
.LASF379:
	.string	"S_PLAY_ATK2"
.LASF131:
	.string	"SPR_APLS"
.LASF1412:
	.string	"refire"
.LASF65:
	.string	"event_t"
.LASF1159:
	.string	"S_REDTORCH2"
.LASF1160:
	.string	"S_REDTORCH3"
.LASF1161:
	.string	"S_REDTORCH4"
.LASF668:
	.string	"S_TROO_RUN1"
.LASF669:
	.string	"S_TROO_RUN2"
.LASF670:
	.string	"S_TROO_RUN3"
.LASF671:
	.string	"S_TROO_RUN4"
.LASF672:
	.string	"S_TROO_RUN5"
.LASF673:
	.string	"S_TROO_RUN6"
.LASF674:
	.string	"S_TROO_RUN7"
.LASF675:
	.string	"S_TROO_RUN8"
.LASF1588:
	.string	"sfx_mandth"
.LASF57:
	.string	"ev_keyup"
.LASF122:
	.string	"SPR_CPOS"
.LASF583:
	.string	"S_FATSHOTX1"
.LASF584:
	.string	"S_FATSHOTX2"
.LASF585:
	.string	"S_FATSHOTX3"
.LASF663:
	.string	"S_CPOS_RAISE5"
.LASF664:
	.string	"S_CPOS_RAISE6"
.LASF665:
	.string	"S_CPOS_RAISE7"
.LASF1649:
	.string	"numplayers"
.LASF26:
	.string	"wp_fist"
.LASF1351:
	.string	"missilestate"
.LASF152:
	.string	"SPR_STIM"
.LASF699:
	.string	"S_SARG_STND"
.LASF1624:
	.string	"chatchars"
.LASF924:
	.string	"S_CYBER_DIE10"
.LASF102:
	.string	"SPR_BAL1"
.LASF103:
	.string	"SPR_BAL2"
.LASF125:
	.string	"SPR_BAL7"
.LASF1378:
	.string	"info"
.LASF1558:
	.string	"sfx_bspdth"
.LASF1118:
	.string	"S_HEADSONSTICK"
.LASF1593:
	.string	"sfx_skeact"
.LASF1373:
	.string	"ceilingz"
.LASF1589:
	.string	"sfx_sssit"
.LASF575:
	.string	"S_SKEL_RAISE1"
.LASF90:
	.string	"SPR_SHT2"
.LASF229:
	.string	"S_PUNCH1"
.LASF230:
	.string	"S_PUNCH2"
.LASF231:
	.string	"S_PUNCH3"
.LASF232:
	.string	"S_PUNCH4"
.LASF233:
	.string	"S_PUNCH5"
.LASF592:
	.string	"S_FATT_RUN5"
.LASF228:
	.string	"S_PUNCHUP"
.LASF845:
	.string	"S_SPID_DIE1"
.LASF596:
	.string	"S_FATT_RUN9"
.LASF847:
	.string	"S_SPID_DIE3"
.LASF848:
	.string	"S_SPID_DIE4"
.LASF89:
	.string	"SPR_SHTF"
.LASF85:
	.string	"SPR_SHTG"
.LASF367:
	.string	"S_IFOG01"
.LASF368:
	.string	"S_IFOG02"
.LASF853:
	.string	"S_SPID_DIE9"
.LASF1095:
	.string	"S_AMMO"
.LASF58:
	.string	"ev_mouse"
.LASF43:
	.string	"NUMAMMO"
.LASF926:
	.string	"S_PAIN_RUN1"
.LASF927:
	.string	"S_PAIN_RUN2"
.LASF928:
	.string	"S_PAIN_RUN3"
.LASF929:
	.string	"S_PAIN_RUN4"
.LASF211:
	.string	"SPR_HDB1"
.LASF212:
	.string	"SPR_HDB2"
.LASF213:
	.string	"SPR_HDB3"
.LASF214:
	.string	"SPR_HDB4"
.LASF215:
	.string	"SPR_HDB5"
.LASF216:
	.string	"SPR_HDB6"
.LASF1202:
	.string	"MT_POSSESSED"
.LASF261:
	.string	"S_DSGUN3"
.LASF262:
	.string	"S_DSGUN4"
.LASF61:
	.string	"type"
.LASF1603:
	.string	"w_title"
.LASF281:
	.string	"S_MISSILE"
.LASF1109:
	.string	"S_SHOT2"
.LASF1611:
	.string	"message_nottobefuckedwith"
.LASF1176:
	.string	"S_HANGTLOOKDN"
.LASF1381:
	.string	"movedir"
.LASF1647:
	.string	"shiftdown"
.LASF653:
	.string	"S_CPOS_XDIE1"
.LASF1662:
	.string	"ForeignTranslation"
.LASF1643:
	.string	"sprintf"
.LASF1460:
	.string	"hu_textline_t"
.LASF72:
	.string	"actionf_t"
.LASF67:
	.string	"actionf_v"
.LASF172:
	.string	"SPR_MGUN"
.LASF1214:
	.string	"MT_SHADOWS"
.LASF556:
	.string	"S_SKEL_RUN10"
.LASF557:
	.string	"S_SKEL_RUN11"
.LASF558:
	.string	"S_SKEL_RUN12"
.LASF224:
	.string	"S_NULL"
.LASF766:
	.string	"S_BOSS_DIE1"
.LASF767:
	.string	"S_BOSS_DIE2"
.LASF768:
	.string	"S_BOSS_DIE3"
.LASF769:
	.string	"S_BOSS_DIE4"
.LASF770:
	.string	"S_BOSS_DIE5"
.LASF771:
	.string	"S_BOSS_DIE6"
.LASF772:
	.string	"S_BOSS_DIE7"
.LASF936:
	.string	"S_PAIN_PAIN"
.LASF305:
	.string	"S_BFG"
.LASF1349:
	.string	"painsound"
.LASF1479:
	.string	"player_t"
.LASF1433:
	.string	"special"
.LASF951:
	.string	"S_SSWV_STND2"
.LASF173:
	.string	"SPR_CSAW"
.LASF1086:
	.string	"S_PMAP"
.LASF1092:
	.string	"S_PVIS"
.LASF306:
	.string	"S_BFGDOWN"
.LASF1536:
	.string	"sfx_vilsit"
.LASF1226:
	.string	"MT_BOSSBRAIN"
.LASF119:
	.string	"SPR_SKEL"
.LASF301:
	.string	"S_PLASMA1"
.LASF302:
	.string	"S_PLASMA2"
.LASF1166:
	.string	"S_GTORCHSHRT"
.LASF1523:
	.string	"sfx_telept"
.LASF1392:
	.string	"firstline"
.LASF1100:
	.string	"S_SHEL"
.LASF857:
	.string	"S_BSPI_STND2"
.LASF4:
	.string	"unsigned char"
.LASF1557:
	.string	"sfx_spidth"
.LASF117:
	.string	"SPR_FATB"
.LASF222:
	.string	"NUMSPRITES"
.LASF123:
	.string	"SPR_SARG"
.LASF340:
	.string	"S_BFGSHOT2"
.LASF121:
	.string	"SPR_FATT"
.LASF1544:
	.string	"sfx_skeswg"
.LASF1067:
	.string	"S_SOUL2"
.LASF1068:
	.string	"S_SOUL3"
.LASF1069:
	.string	"S_SOUL4"
.LASF1070:
	.string	"S_SOUL5"
.LASF1071:
	.string	"S_SOUL6"
.LASF827:
	.string	"S_SPID_RUN1"
.LASF828:
	.string	"S_SPID_RUN2"
.LASF829:
	.string	"S_SPID_RUN3"
.LASF830:
	.string	"S_SPID_RUN4"
.LASF831:
	.string	"S_SPID_RUN5"
.LASF832:
	.string	"S_SPID_RUN6"
.LASF833:
	.string	"S_SPID_RUN7"
.LASF834:
	.string	"S_SPID_RUN8"
.LASF78:
	.string	"float"
.LASF1034:
	.string	"S_BEXP3"
.LASF1035:
	.string	"S_BEXP4"
.LASF1502:
	.string	"sfx_rlaunc"
.LASF1123:
	.string	"S_DEADSTICK"
.LASF1421:
	.string	"fixedcolormap"
.LASF1406:
	.string	"weaponowned"
.LASF1243:
	.string	"MT_EXTRABFG"
.LASF413:
	.string	"S_POSS_DIE1"
.LASF414:
	.string	"S_POSS_DIE2"
.LASF415:
	.string	"S_POSS_DIE3"
.LASF416:
	.string	"S_POSS_DIE4"
.LASF417:
	.string	"S_POSS_DIE5"
.LASF243:
	.string	"S_SGUNDOWN"
.LASF1591:
	.string	"sfx_keenpn"
.LASF92:
	.string	"SPR_CHGF"
.LASF91:
	.string	"SPR_CHGG"
.LASF636:
	.string	"S_CPOS_RUN5"
.LASF895:
	.string	"S_ARACH_PLEX3"
.LASF637:
	.string	"S_CPOS_RUN6"
.LASF897:
	.string	"S_ARACH_PLEX5"
.LASF638:
	.string	"S_CPOS_RUN7"
.LASF1383:
	.string	"target"
.LASF202:
	.string	"SPR_CEYE"
.LASF1449:
	.string	"ST_HORIZONTAL"
.LASF944:
	.string	"S_PAIN_RAISE1"
.LASF945:
	.string	"S_PAIN_RAISE2"
.LASF946:
	.string	"S_PAIN_RAISE3"
.LASF947:
	.string	"S_PAIN_RAISE4"
.LASF948:
	.string	"S_PAIN_RAISE5"
.LASF581:
	.string	"S_FATSHOT1"
.LASF582:
	.string	"S_FATSHOT2"
.LASF1450:
	.string	"ST_VERTICAL"
.LASF159:
	.string	"SPR_SUIT"
.LASF809:
	.string	"S_SKULL_STND"
.LASF1630:
	.string	"HUlib_keyInIText"
.LASF1488:
	.string	"sfx_None"
.LASF843:
	.string	"S_SPID_PAIN"
.LASF1338:
	.string	"NUMMOBJTYPES"
.LASF141:
	.string	"SPR_BAR1"
.LASF1598:
	.string	"chat_macros"
.LASF256:
	.string	"S_DSGUN"
.LASF1135:
	.string	"S_CANDLESTIK"
.LASF49:
	.string	"pw_allmap"
.LASF1191:
	.string	"NUMSTATES"
.LASF835:
	.string	"S_SPID_RUN9"
.LASF321:
	.string	"S_TBALL1"
.LASF322:
	.string	"S_TBALL2"
.LASF535:
	.string	"S_SMOKE1"
.LASF536:
	.string	"S_SMOKE2"
.LASF537:
	.string	"S_SMOKE3"
.LASF538:
	.string	"S_SMOKE4"
.LASF539:
	.string	"S_SMOKE5"
.LASF758:
	.string	"S_BOSS_RUN6"
.LASF759:
	.string	"S_BOSS_RUN7"
.LASF760:
	.string	"S_BOSS_RUN8"
.LASF124:
	.string	"SPR_HEAD"
.LASF1370:
	.string	"bprev"
.LASF185:
	.string	"SPR_POL1"
.LASF181:
	.string	"SPR_POL2"
.LASF184:
	.string	"SPR_POL3"
.LASF183:
	.string	"SPR_POL4"
.LASF182:
	.string	"SPR_POL5"
.LASF186:
	.string	"SPR_POL6"
.LASF1483:
	.string	"netgame"
.LASF1030:
	.string	"S_BAR1"
.LASF1561:
	.string	"sfx_pedth"
.LASF1520:
	.string	"sfx_itemup"
.LASF1244:
	.string	"MT_MISC0"
.LASF1116:
	.string	"S_DEADTORSO"
.LASF258:
	.string	"S_DSGUNUP"
.LASF1583:
	.string	"sfx_boscub"
.LASF1545:
	.string	"sfx_pldeth"
.LASF1341:
	.string	"spawnstate"
.LASF1636:
	.string	"HUlib_drawIText"
.LASF667:
	.string	"S_TROO_STND2"
.LASF1187:
	.string	"S_TECH2LAMP"
.LASF1365:
	.string	"mobj_s"
.LASF1508:
	.string	"sfx_doropn"
.LASF1230:
	.string	"MT_SPAWNFIRE"
.LASF1651:
	.string	"num_nobrainers"
.LASF1205:
	.string	"MT_FIRE"
.LASF1197:
	.string	"nextstate"
.LASF1482:
	.string	"gamemap"
.LASF764:
	.string	"S_BOSS_PAIN"
.LASF135:
	.string	"SPR_SSWV"
.LASF326:
	.string	"S_RBALL1"
.LASF327:
	.string	"S_RBALL2"
.LASF1374:
	.string	"momx"
.LASF1131:
	.string	"S_TALLGRNCOL"
.LASF1386:
	.string	"lastlook"
.LASF1555:
	.string	"sfx_brsdth"
.LASF1491:
	.string	"sfx_sgcock"
.LASF1478:
	.string	"playerstate_t"
.LASF1120:
	.string	"S_HEADONASTICK"
.LASF400:
	.string	"S_POSS_RUN1"
.LASF342:
	.string	"S_BFGLAND2"
.LASF343:
	.string	"S_BFGLAND3"
.LASF344:
	.string	"S_BFGLAND4"
.LASF345:
	.string	"S_BFGLAND5"
.LASF346:
	.string	"S_BFGLAND6"
.LASF406:
	.string	"S_POSS_RUN7"
.LASF407:
	.string	"S_POSS_RUN8"
.LASF389:
	.string	"S_PLAY_XDIE1"
.LASF390:
	.string	"S_PLAY_XDIE2"
.LASF391:
	.string	"S_PLAY_XDIE3"
.LASF392:
	.string	"S_PLAY_XDIE4"
.LASF393:
	.string	"S_PLAY_XDIE5"
.LASF394:
	.string	"S_PLAY_XDIE6"
.LASF395:
	.string	"S_PLAY_XDIE7"
.LASF396:
	.string	"S_PLAY_XDIE8"
.LASF397:
	.string	"S_PLAY_XDIE9"
.LASF15:
	.string	"english"
.LASF796:
	.string	"S_BOS2_DIE2"
.LASF797:
	.string	"S_BOS2_DIE3"
.LASF798:
	.string	"S_BOS2_DIE4"
.LASF799:
	.string	"S_BOS2_DIE5"
.LASF800:
	.string	"S_BOS2_DIE6"
.LASF801:
	.string	"S_BOS2_DIE7"
.LASF1361:
	.string	"flags"
.LASF721:
	.string	"S_SARG_RAISE2"
.LASF722:
	.string	"S_SARG_RAISE3"
.LASF365:
	.string	"S_TFOG10"
.LASF723:
	.string	"S_SARG_RAISE4"
.LASF418:
	.string	"S_POSS_XDIE1"
.LASF419:
	.string	"S_POSS_XDIE2"
.LASF420:
	.string	"S_POSS_XDIE3"
.LASF421:
	.string	"S_POSS_XDIE4"
.LASF422:
	.string	"S_POSS_XDIE5"
.LASF423:
	.string	"S_POSS_XDIE6"
.LASF424:
	.string	"S_POSS_XDIE7"
.LASF39:
	.string	"am_clip"
.LASF426:
	.string	"S_POSS_XDIE9"
.LASF1119:
	.string	"S_GIBS"
.LASF734:
	.string	"S_HEAD_DIE1"
.LASF735:
	.string	"S_HEAD_DIE2"
.LASF736:
	.string	"S_HEAD_DIE3"
.LASF737:
	.string	"S_HEAD_DIE4"
.LASF738:
	.string	"S_HEAD_DIE5"
.LASF739:
	.string	"S_HEAD_DIE6"
.LASF587:
	.string	"S_FATT_STND2"
.LASF1110:
	.string	"S_COLU"
.LASF237:
	.string	"S_PISTOL1"
.LASF238:
	.string	"S_PISTOL2"
.LASF239:
	.string	"S_PISTOL3"
.LASF240:
	.string	"S_PISTOL4"
.LASF576:
	.string	"S_SKEL_RAISE2"
.LASF577:
	.string	"S_SKEL_RAISE3"
.LASF578:
	.string	"S_SKEL_RAISE4"
.LASF579:
	.string	"S_SKEL_RAISE5"
.LASF580:
	.string	"S_SKEL_RAISE6"
.LASF1139:
	.string	"S_BIGTREE"
.LASF1452:
	.string	"ST_NEGATIVE"
.LASF1049:
	.string	"S_BON2C"
.LASF1050:
	.string	"S_BON2D"
.LASF355:
	.string	"S_TFOG01"
.LASF356:
	.string	"S_TFOG02"
.LASF174:
	.string	"SPR_LAUN"
.LASF411:
	.string	"S_POSS_PAIN"
.LASF705:
	.string	"S_SARG_RUN5"
.LASF706:
	.string	"S_SARG_RUN6"
.LASF1208:
	.string	"MT_SMOKE"
.LASF1222:
	.string	"MT_CYBORG"
.LASF1359:
	.string	"damage"
.LASF451:
	.string	"S_SPOS_XDIE1"
.LASF452:
	.string	"S_SPOS_XDIE2"
.LASF453:
	.string	"S_SPOS_XDIE3"
.LASF454:
	.string	"S_SPOS_XDIE4"
.LASF455:
	.string	"S_SPOS_XDIE5"
.LASF456:
	.string	"S_SPOS_XDIE6"
.LASF457:
	.string	"S_SPOS_XDIE7"
.LASF458:
	.string	"S_SPOS_XDIE8"
.LASF459:
	.string	"S_SPOS_XDIE9"
.LASF1516:
	.string	"sfx_vipain"
.LASF1188:
	.string	"S_TECH2LAMP2"
.LASF1425:
	.string	"mobj_t"
.LASF1052:
	.string	"S_BKEY"
.LASF47:
	.string	"pw_invisibility"
.LASF139:
	.string	"SPR_ARM1"
.LASF140:
	.string	"SPR_ARM2"
.LASF1204:
	.string	"MT_VILE"
.LASF1507:
	.string	"sfx_pstop"
.LASF22:
	.string	"it_blueskull"
.LASF1437:
	.string	"soundorg"
.LASF299:
	.string	"S_PLASMADOWN"
.LASF611:
	.string	"S_FATT_PAIN2"
.LASF1592:
	.string	"sfx_keendt"
.LASF1009:
	.string	"S_BRAINEYESEE"
.LASF1453:
	.string	"slopetype_t"
.LASF546:
	.string	"S_SKEL_STND2"
.LASF899:
	.string	"S_CYBER_STND2"
.LASF1200:
	.string	"state_t"
.LASF743:
	.string	"S_HEAD_RAISE4"
.LASF969:
	.string	"S_SSWV_DIE2"
.LASF11:
	.string	"registered"
.LASF1567:
	.string	"sfx_bspwlk"
.LASF425:
	.string	"S_POSS_XDIE8"
.LASF1099:
	.string	"S_CELP"
.LASF1141:
	.string	"S_EVILEYE"
.LASF1167:
	.string	"S_GTORCHSHRT2"
.LASF1168:
	.string	"S_GTORCHSHRT3"
.LASF1169:
	.string	"S_GTORCHSHRT4"
.LASF746:
	.string	"S_BRBALL1"
.LASF747:
	.string	"S_BRBALL2"
.LASF1396:
	.string	"viewheight"
.LASF1369:
	.string	"bnext"
.LASF1586:
	.string	"sfx_bosdth"
.LASF600:
	.string	"S_FATT_ATK1"
.LASF133:
	.string	"SPR_CYBR"
.LASF601:
	.string	"S_FATT_ATK2"
.LASF504:
	.string	"S_VILE_DIE10"
.LASF94:
	.string	"SPR_MISF"
.LASF93:
	.string	"SPR_MISG"
.LASF106:
	.string	"SPR_MISL"
.LASF1058:
	.string	"S_BSKULL"
.LASF137:
	.string	"SPR_BBRN"
.LASF479:
	.string	"S_VILE_ATK1"
.LASF480:
	.string	"S_VILE_ATK2"
.LASF481:
	.string	"S_VILE_ATK3"
.LASF482:
	.string	"S_VILE_ATK4"
.LASF483:
	.string	"S_VILE_ATK5"
.LASF484:
	.string	"S_VILE_ATK6"
.LASF485:
	.string	"S_VILE_ATK7"
.LASF226:
	.string	"S_PUNCH"
.LASF487:
	.string	"S_VILE_ATK9"
.LASF208:
	.string	"SPR_SMBT"
.LASF1572:
	.string	"sfx_hoof"
.LASF782:
	.string	"S_BOS2_RUN1"
.LASF783:
	.string	"S_BOS2_RUN2"
.LASF784:
	.string	"S_BOS2_RUN3"
.LASF785:
	.string	"S_BOS2_RUN4"
.LASF786:
	.string	"S_BOS2_RUN5"
.LASF787:
	.string	"S_BOS2_RUN6"
.LASF788:
	.string	"S_BOS2_RUN7"
.LASF789:
	.string	"S_BOS2_RUN8"
.LASF1432:
	.string	"lightlevel"
.LASF199:
	.string	"SPR_TRE1"
.LASF200:
	.string	"SPR_TRE2"
.LASF856:
	.string	"S_BSPI_STND"
.LASF1503:
	.string	"sfx_rxplod"
.LASF1350:
	.string	"meleestate"
.LASF1407:
	.string	"ammo"
.LASF646:
	.string	"S_CPOS_DIE1"
.LASF207:
	.string	"SPR_TRED"
.LASF100:
	.string	"SPR_BLUD"
.LASF602:
	.string	"S_FATT_ATK3"
.LASF603:
	.string	"S_FATT_ATK4"
.LASF604:
	.string	"S_FATT_ATK5"
.LASF605:
	.string	"S_FATT_ATK6"
.LASF606:
	.string	"S_FATT_ATK7"
.LASF607:
	.string	"S_FATT_ATK8"
.LASF608:
	.string	"S_FATT_ATK9"
.LASF110:
	.string	"SPR_TFOG"
.LASF314:
	.string	"S_BLOOD1"
.LASF315:
	.string	"S_BLOOD2"
.LASF316:
	.string	"S_BLOOD3"
.LASF1607:
	.string	"chat_dest"
.LASF1198:
	.string	"misc1"
.LASF1199:
	.string	"misc2"
.LASF1514:
	.string	"sfx_dmpain"
.LASF1470:
	.string	"angleturn"
.LASF1616:
	.string	"mapnames"
.LASF1106:
	.string	"S_LAUN"
.LASF366:
	.string	"S_IFOG"
.LASF113:
	.string	"SPR_POSS"
.LASF118:
	.string	"SPR_FBXP"
.LASF915:
	.string	"S_CYBER_DIE1"
.LASF916:
	.string	"S_CYBER_DIE2"
.LASF917:
	.string	"S_CYBER_DIE3"
.LASF918:
	.string	"S_CYBER_DIE4"
.LASF919:
	.string	"S_CYBER_DIE5"
.LASF920:
	.string	"S_CYBER_DIE6"
.LASF921:
	.string	"S_CYBER_DIE7"
.LASF793:
	.string	"S_BOS2_PAIN"
.LASF923:
	.string	"S_CYBER_DIE9"
.LASF1387:
	.string	"spawnpoint"
.LASF1193:
	.string	"sprite"
.LASF16:
	.string	"french"
.LASF1463:
	.string	"hu_itext_t"
.LASF1615:
	.string	"headsupactive"
.LASF1271:
	.string	"MT_MISC23"
.LASF1458:
	.string	"patch_t"
.LASF1136:
	.string	"S_CANDELABRA"
.LASF476:
	.string	"S_VILE_RUN10"
.LASF477:
	.string	"S_VILE_RUN11"
.LASF478:
	.string	"S_VILE_RUN12"
.LASF1621:
	.string	"french_shiftxform"
.LASF1096:
	.string	"S_ROCK"
.LASF245:
	.string	"S_SGUN1"
.LASF246:
	.string	"S_SGUN2"
.LASF247:
	.string	"S_SGUN3"
.LASF248:
	.string	"S_SGUN4"
.LASF249:
	.string	"S_SGUN5"
.LASF250:
	.string	"S_SGUN6"
.LASF251:
	.string	"S_SGUN7"
.LASF252:
	.string	"S_SGUN8"
.LASF253:
	.string	"S_SGUN9"
.LASF1340:
	.string	"doomednum"
.LASF242:
	.string	"S_SGUN"
.LASF1132:
	.string	"S_SHRTGRNCOL"
.LASF1590:
	.string	"sfx_ssdth"
.LASF1518:
	.string	"sfx_pepain"
.LASF1580:
	.string	"sfx_flamst"
.LASF817:
	.string	"S_SKULL_PAIN"
.LASF1229:
	.string	"MT_SPAWNSHOT"
.LASF1657:
	.string	"HU_Drawer"
.LASF541:
	.string	"S_TRACER2"
.LASF1140:
	.string	"S_TECHPILLAR"
.LASF545:
	.string	"S_SKEL_STND"
.LASF700:
	.string	"S_SARG_STND2"
.LASF1573:
	.string	"sfx_metal"
.LASF14:
	.string	"indetermined"
.LASF446:
	.string	"S_SPOS_DIE1"
.LASF447:
	.string	"S_SPOS_DIE2"
.LASF448:
	.string	"S_SPOS_DIE3"
.LASF449:
	.string	"S_SPOS_DIE4"
.LASF450:
	.string	"S_SPOS_DIE5"
.LASF1477:
	.string	"PST_REBORN"
.LASF1540:
	.string	"sfx_sgtatk"
.LASF1175:
	.string	"S_HANGBNOBRAIN"
.LASF1537:
	.string	"sfx_mansit"
.LASF709:
	.string	"S_SARG_ATK1"
.LASF710:
	.string	"S_SARG_ATK2"
.LASF711:
	.string	"S_SARG_ATK3"
.LASF300:
	.string	"S_PLASMAUP"
.LASF1195:
	.string	"tics"
.LASF1639:
	.string	"HUlib_addCharToTextLine"
.LASF1056:
	.string	"S_YKEY"
.LASF1511:
	.string	"sfx_swtchn"
.LASF1355:
	.string	"speed"
.LASF1658:
	.string	"HU_Start"
.LASF269:
	.string	"S_DSNR1"
.LASF938:
	.string	"S_PAIN_DIE1"
.LASF1512:
	.string	"sfx_swtchx"
.LASF468:
	.string	"S_VILE_RUN2"
.LASF1578:
	.string	"sfx_itmbk"
.LASF1186:
	.string	"S_TECHLAMP4"
.LASF632:
	.string	"S_CPOS_RUN1"
.LASF633:
	.string	"S_CPOS_RUN2"
.LASF634:
	.string	"S_CPOS_RUN3"
.LASF635:
	.string	"S_CPOS_RUN4"
.LASF68:
	.string	"actionf_p1"
.LASF69:
	.string	"actionf_p2"
.LASF170:
	.string	"SPR_BPAK"
.LASF639:
	.string	"S_CPOS_RUN8"
.LASF1036:
	.string	"S_BEXP5"
.LASF1595:
	.string	"sfx_skeatk"
.LASF83:
	.string	"mapthing_t"
.LASF401:
	.string	"S_POSS_RUN2"
.LASF402:
	.string	"S_POSS_RUN3"
.LASF403:
	.string	"S_POSS_RUN4"
.LASF720:
	.string	"S_SARG_RAISE1"
.LASF404:
	.string	"S_POSS_RUN5"
.LASF70:
	.string	"acp1"
.LASF71:
	.string	"acp2"
.LASF724:
	.string	"S_SARG_RAISE5"
.LASF725:
	.string	"S_SARG_RAISE6"
.LASF1547:
	.string	"sfx_podth1"
.LASF1548:
	.string	"sfx_podth2"
.LASF1549:
	.string	"sfx_podth3"
.LASF1638:
	.string	"HUlib_initIText"
.LASF1304:
	.string	"MT_MISC53"
.LASF1597:
	.string	"NUMSFX"
.LASF209:
	.string	"SPR_SMGT"
.LASF1000:
	.string	"S_KEENPAIN"
.LASF348:
	.string	"S_BFGEXP2"
.LASF349:
	.string	"S_BFGEXP3"
.LASF350:
	.string	"S_BFGEXP4"
.LASF279:
	.string	"S_CHAINFLASH1"
.LASF280:
	.string	"S_CHAINFLASH2"
.LASF235:
	.string	"S_PISTOLDOWN"
.LASF17:
	.string	"german"
.LASF900:
	.string	"S_CYBER_RUN1"
.LASF901:
	.string	"S_CYBER_RUN2"
.LASF902:
	.string	"S_CYBER_RUN3"
.LASF903:
	.string	"S_CYBER_RUN4"
.LASF904:
	.string	"S_CYBER_RUN5"
.LASF905:
	.string	"S_CYBER_RUN6"
.LASF906:
	.string	"S_CYBER_RUN7"
.LASF907:
	.string	"S_CYBER_RUN8"
.LASF1344:
	.string	"seesound"
.LASF1087:
	.string	"S_PMAP2"
.LASF1088:
	.string	"S_PMAP3"
.LASF1089:
	.string	"S_PMAP4"
.LASF1090:
	.string	"S_PMAP5"
.LASF1091:
	.string	"S_PMAP6"
.LASF1418:
	.string	"bonuscount"
.LASF818:
	.string	"S_SKULL_PAIN2"
.LASF1348:
	.string	"painchance"
.LASF644:
	.string	"S_CPOS_PAIN"
.LASF1429:
	.string	"ceilingheight"
.LASF12:
	.string	"commercial"
.LASF949:
	.string	"S_PAIN_RAISE6"
.LASF1439:
	.string	"specialdata"
.LASF1287:
	.string	"MT_MISC36"
.LASF753:
	.string	"S_BOSS_RUN1"
.LASF754:
	.string	"S_BOSS_RUN2"
.LASF755:
	.string	"S_BOSS_RUN3"
.LASF756:
	.string	"S_BOSS_RUN4"
.LASF757:
	.string	"S_BOSS_RUN5"
.LASF275:
	.string	"S_CHAINUP"
.LASF1663:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1413:
	.string	"killcount"
.LASF894:
	.string	"S_ARACH_PLEX2"
.LASF1138:
	.string	"S_TORCHTREE"
.LASF950:
	.string	"S_SSWV_STND"
.LASF896:
	.string	"S_ARACH_PLEX4"
.LASF997:
	.string	"S_COMMKEEN10"
.LASF998:
	.string	"S_COMMKEEN11"
.LASF999:
	.string	"S_COMMKEEN12"
.LASF914:
	.string	"S_CYBER_PAIN"
.LASF433:
	.string	"S_SPOS_RUN1"
.LASF191:
	.string	"SPR_SMIT"
.LASF54:
	.string	"boolean"
.LASF436:
	.string	"S_SPOS_RUN4"
.LASF437:
	.string	"S_SPOS_RUN5"
.LASF128:
	.string	"SPR_SKUL"
.LASF439:
	.string	"S_SPOS_RUN7"
.LASF440:
	.string	"S_SPOS_RUN8"
.LASF1097:
	.string	"S_BROK"
.LASF1342:
	.string	"spawnhealth"
.LASF1556:
	.string	"sfx_cybdth"
.LASF1600:
	.string	"chat_char"
.LASF227:
	.string	"S_PUNCHDOWN"
.LASF893:
	.string	"S_ARACH_PLEX"
.LASF1154:
	.string	"S_GREENTORCH"
.LASF34:
	.string	"wp_supershotgun"
.LASF293:
	.string	"S_SAWDOWN"
.LASF1501:
	.string	"sfx_sawhit"
.LASF1500:
	.string	"sfx_sawful"
.LASF1192:
	.string	"statenum_t"
.LASF1232:
	.string	"MT_TROOPSHOT"
.LASF1217:
	.string	"MT_BRUISERSHOT"
.LASF1568:
	.string	"sfx_vilact"
.LASF1474:
	.string	"ticcmd_t"
.LASF1337:
	.string	"MT_MISC86"
.LASF898:
	.string	"S_CYBER_STND"
.LASF1533:
	.string	"sfx_spisit"
.LASF381:
	.string	"S_PLAY_PAIN2"
.LASF1499:
	.string	"sfx_sawidl"
.LASF776:
	.string	"S_BOSS_RAISE4"
.LASF777:
	.string	"S_BOSS_RAISE5"
.LASF1194:
	.string	"frame"
.LASF120:
	.string	"SPR_MANF"
.LASF631:
	.string	"S_CPOS_STND2"
.LASF1566:
	.string	"sfx_bspact"
.LASF444:
	.string	"S_SPOS_PAIN"
.LASF795:
	.string	"S_BOS2_DIE1"
.LASF28:
	.string	"wp_shotgun"
.LASF412:
	.string	"S_POSS_PAIN2"
.LASF1238:
	.string	"MT_PUFF"
.LASF284:
	.string	"S_MISSILE1"
.LASF285:
	.string	"S_MISSILE2"
.LASF286:
	.string	"S_MISSILE3"
.LASF660:
	.string	"S_CPOS_RAISE2"
.LASF661:
	.string	"S_CPOS_RAISE3"
.LASF662:
	.string	"S_CPOS_RAISE4"
.LASF1423:
	.string	"psprites"
.LASF1104:
	.string	"S_MGUN"
.LASF1216:
	.string	"MT_BRUISER"
.LASF169:
	.string	"SPR_SBOX"
.LASF1415:
	.string	"secretcount"
.LASF1339:
	.string	"mobjtype_t"
.LASF1353:
	.string	"xdeathstate"
.LASF1400:
	.string	"powers"
.LASF813:
	.string	"S_SKULL_ATK1"
.LASF814:
	.string	"S_SKULL_ATK2"
.LASF815:
	.string	"S_SKULL_ATK3"
.LASF816:
	.string	"S_SKULL_ATK4"
.LASF794:
	.string	"S_BOS2_PAIN2"
.LASF5:
	.string	"short unsigned int"
.LASF1218:
	.string	"MT_KNIGHT"
.LASF1633:
	.string	"HUlib_eraseIText"
.LASF7:
	.string	"signed char"
.LASF1469:
	.string	"sidemove"
.LASF1360:
	.string	"activesound"
.LASF445:
	.string	"S_SPOS_PAIN2"
.LASF1571:
	.string	"sfx_punch"
.LASF609:
	.string	"S_FATT_ATK10"
.LASF1623:
	.string	"frenchKeyMap"
.LASF206:
	.string	"SPR_TGRN"
.LASF1462:
	.string	"hu_stext_t"
.LASF1464:
	.string	"ps_weapon"
.LASF1263:
	.string	"MT_MEGA"
.LASF108:
	.string	"SPR_BFE1"
.LASF109:
	.string	"SPR_BFE2"
.LASF1438:
	.string	"thinglist"
.LASF1297:
	.string	"MT_MISC46"
.LASF1457:
	.string	"columnofs"
.LASF1225:
	.string	"MT_KEEN"
.LASF1436:
	.string	"blockbox"
.LASF1010:
	.string	"S_BRAINEYE1"
.LASF666:
	.string	"S_TROO_STND"
.LASF613:
	.string	"S_FATT_DIE2"
.LASF304:
	.string	"S_PLASMAFLASH2"
.LASF38:
	.string	"weapontype_t"
.LASF1472:
	.string	"chatchar"
.LASF357:
	.string	"S_TFOG2"
.LASF358:
	.string	"S_TFOG3"
.LASF359:
	.string	"S_TFOG4"
.LASF360:
	.string	"S_TFOG5"
.LASF361:
	.string	"S_TFOG6"
.LASF362:
	.string	"S_TFOG7"
.LASF363:
	.string	"S_TFOG8"
.LASF364:
	.string	"S_TFOG9"
.LASF779:
	.string	"S_BOSS_RAISE7"
.LASF1409:
	.string	"attackdown"
.LASF84:
	.string	"SPR_TROO"
.LASF95:
	.string	"SPR_SAWG"
.LASF1254:
	.string	"MT_MISC10"
.LASF1529:
	.string	"sfx_sgtsit"
.LASF144:
	.string	"SPR_BON1"
.LASF145:
	.string	"SPR_BON2"
.LASF21:
	.string	"it_redcard"
.LASF1133:
	.string	"S_TALLREDCOL"
.LASF1379:
	.string	"state"
.LASF1108:
	.string	"S_SHOT"
.LASF964:
	.string	"S_SSWV_ATK5"
.LASF1113:
	.string	"S_BLOODYTWITCH2"
.LASF1114:
	.string	"S_BLOODYTWITCH3"
.LASF1115:
	.string	"S_BLOODYTWITCH4"
.LASF1659:
	.string	"HU_Stop"
.LASF854:
	.string	"S_SPID_DIE10"
.LASF855:
	.string	"S_SPID_DIE11"
.LASF1401:
	.string	"cards"
.LASF201:
	.string	"SPR_ELEC"
.LASF1002:
	.string	"S_BRAIN"
.LASF1220:
	.string	"MT_SPIDER"
.LASF1085:
	.string	"S_SUIT"
.LASF99:
	.string	"SPR_BFGF"
.LASF98:
	.string	"SPR_BFGG"
.LASF1631:
	.string	"HUlib_addMessageToSText"
.LASF925:
	.string	"S_PAIN_STND"
.LASF1634:
	.string	"HUlib_eraseSText"
.LASF1531:
	.string	"sfx_brssit"
.LASF341:
	.string	"S_BFGLAND"
.LASF1031:
	.string	"S_BAR2"
.LASF1405:
	.string	"pendingweapon"
.LASF76:
	.string	"function"
.LASF1574:
	.string	"sfx_chgun"
.LASF40:
	.string	"am_shell"
.LASF1642:
	.string	"W_CacheLumpName"
.LASF1377:
	.string	"validcount"
.LASF1641:
	.string	"HUlib_initSText"
.LASF1416:
	.string	"message"
.LASF1606:
	.string	"always_off"
.LASF621:
	.string	"S_FATT_DIE10"
.LASF25:
	.string	"NUMCARDS"
.LASF1158:
	.string	"S_REDTORCH"
.LASF1236:
	.string	"MT_BFG"
.LASF405:
	.string	"S_POSS_RUN6"
.LASF1542:
	.string	"sfx_vilatk"
.LASF1614:
	.string	"showMessages"
.LASF115:
	.string	"SPR_VILE"
.LASF1577:
	.string	"sfx_bdcls"
.LASF1239:
	.string	"MT_BLOOD"
.LASF234:
	.string	"S_PISTOL"
.LASF53:
	.string	"true"
.LASF466:
	.string	"S_VILE_STND2"
.LASF884:
	.string	"S_BSPI_RAISE1"
.LASF885:
	.string	"S_BSPI_RAISE2"
.LASF886:
	.string	"S_BSPI_RAISE3"
.LASF887:
	.string	"S_BSPI_RAISE4"
.LASF888:
	.string	"S_BSPI_RAISE5"
.LASF889:
	.string	"S_BSPI_RAISE6"
.LASF890:
	.string	"S_BSPI_RAISE7"
.LASF59:
	.string	"ev_joystick"
.LASF1375:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF973:
	.string	"S_SSWV_XDIE1"
.LASF974:
	.string	"S_SSWV_XDIE2"
.LASF975:
	.string	"S_SSWV_XDIE3"
.LASF976:
	.string	"S_SSWV_XDIE4"
.LASF977:
	.string	"S_SSWV_XDIE5"
.LASF978:
	.string	"S_SSWV_XDIE6"
.LASF979:
	.string	"S_SSWV_XDIE7"
.LASF980:
	.string	"S_SSWV_XDIE8"
.LASF981:
	.string	"S_SSWV_XDIE9"
.LASF271:
	.string	"S_DSGUNFLASH1"
.LASF272:
	.string	"S_DSGUNFLASH2"
.LASF1270:
	.string	"MT_MISC22"
.LASF1424:
	.string	"didsecret"
.LASF529:
	.string	"S_FIRE25"
.LASF623:
	.string	"S_FATT_RAISE2"
.LASF1306:
	.string	"MT_MISC55"
.LASF1397:
	.string	"deltaviewheight"
.LASF23:
	.string	"it_yellowskull"
.LASF1061:
	.string	"S_RSKULL2"
.LASF1388:
	.string	"tracer"
.LASF836:
	.string	"S_SPID_RUN10"
.LASF837:
	.string	"S_SPID_RUN11"
.LASF838:
	.string	"S_SPID_RUN12"
.LASF1629:
	.string	"strcpy"
.LASF1601:
	.string	"rcsid"
.LASF1521:
	.string	"sfx_wpnup"
.LASF1646:
	.string	"eatkey"
.LASF1599:
	.string	"player_names"
.LASF1362:
	.string	"raisestate"
.LASF287:
	.string	"S_MISSILEFLASH1"
.LASF288:
	.string	"S_MISSILEFLASH2"
.LASF289:
	.string	"S_MISSILEFLASH3"
.LASF290:
	.string	"S_MISSILEFLASH4"
.LASF150:
	.string	"SPR_RSKU"
.LASF1541:
	.string	"sfx_skepch"
.LASF1637:
	.string	"HUlib_drawSText"
.LASF73:
	.string	"think_t"
.LASF647:
	.string	"S_CPOS_DIE2"
.LASF648:
	.string	"S_CPOS_DIE3"
.LASF649:
	.string	"S_CPOS_DIE4"
.LASF650:
	.string	"S_CPOS_DIE5"
.LASF651:
	.string	"S_CPOS_DIE6"
.LASF652:
	.string	"S_CPOS_DIE7"
.LASF1093:
	.string	"S_PVIS2"
.LASF1231:
	.string	"MT_BARREL"
.LASF825:
	.string	"S_SPID_STND"
.LASF597:
	.string	"S_FATT_RUN10"
.LASF598:
	.string	"S_FATT_RUN11"
.LASF599:
	.string	"S_FATT_RUN12"
.LASF1223:
	.string	"MT_PAIN"
.LASF1151:
	.string	"S_BLUETORCH2"
.LASF1363:
	.string	"mobjinfo_t"
.LASF1152:
	.string	"S_BLUETORCH3"
.LASF1524:
	.string	"sfx_posit1"
.LASF1153:
	.string	"S_BLUETORCH4"
.LASF210:
	.string	"SPR_SMRT"
.LASF1526:
	.string	"sfx_posit3"
.LASF312:
	.string	"S_BFGFLASH1"
.LASF313:
	.string	"S_BFGFLASH2"
.LASF846:
	.string	"S_SPID_DIE2"
.LASF127:
	.string	"SPR_BOS2"
.LASF849:
	.string	"S_SPID_DIE5"
.LASF850:
	.string	"S_SPID_DIE6"
.LASF1584:
	.string	"sfx_bossit"
.LASF851:
	.string	"S_SPID_DIE7"
.LASF852:
	.string	"S_SPID_DIE8"
.LASF1632:
	.string	"HUlib_eraseTextLine"
.LASF1142:
	.string	"S_EVILEYE2"
.LASF1143:
	.string	"S_EVILEYE3"
.LASF1144:
	.string	"S_EVILEYE4"
.LASF317:
	.string	"S_PUFF1"
.LASF318:
	.string	"S_PUFF2"
.LASF319:
	.string	"S_PUFF3"
.LASF138:
	.string	"SPR_BOSF"
.LASF1441:
	.string	"lines"
.LASF126:
	.string	"SPR_BOSS"
.LASF1235:
	.string	"MT_PLASMA"
.LASF1596:
	.string	"sfx_radio"
.LASF871:
	.string	"S_BSPI_ATK1"
.LASF872:
	.string	"S_BSPI_ATK2"
.LASF873:
	.string	"S_BSPI_ATK3"
.LASF874:
	.string	"S_BSPI_ATK4"
.LASF1053:
	.string	"S_BKEY2"
.LASF35:
	.string	"NUMWEAPONS"
.LASF858:
	.string	"S_BSPI_SIGHT"
.LASF1513:
	.string	"sfx_plpain"
.LASF2:
	.string	"long unsigned int"
.LASF860:
	.string	"S_BSPI_RUN2"
.LASF1004:
	.string	"S_BRAIN_DIE1"
.LASF1005:
	.string	"S_BRAIN_DIE2"
.LASF1006:
	.string	"S_BRAIN_DIE3"
.LASF1007:
	.string	"S_BRAIN_DIE4"
.LASF339:
	.string	"S_BFGSHOT"
.LASF1145:
	.string	"S_FLOATSKULL"
.LASF495:
	.string	"S_VILE_DIE1"
.LASF496:
	.string	"S_VILE_DIE2"
.LASF497:
	.string	"S_VILE_DIE3"
.LASF498:
	.string	"S_VILE_DIE4"
.LASF499:
	.string	"S_VILE_DIE5"
.LASF500:
	.string	"S_VILE_DIE6"
.LASF501:
	.string	"S_VILE_DIE7"
.LASF502:
	.string	"S_VILE_DIE8"
.LASF503:
	.string	"S_VILE_DIE9"
.LASF1417:
	.string	"damagecount"
.LASF1494:
	.string	"sfx_dbcls"
.LASF179:
	.string	"SPR_SMT2"
.LASF1055:
	.string	"S_RKEY2"
.LASF1026:
	.string	"S_ARM1"
.LASF1028:
	.string	"S_ARM2"
.LASF1121:
	.string	"S_HEADCANDLES"
.LASF157:
	.string	"SPR_PINS"
.LASF751:
	.string	"S_BOSS_STND"
.LASF1565:
	.string	"sfx_dmact"
.LASF731:
	.string	"S_HEAD_PAIN"
.LASF20:
	.string	"it_yellowcard"
.LASF1207:
	.string	"MT_TRACER"
.LASF612:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF614:
	.string	"S_FATT_DIE3"
.LASF615:
	.string	"S_FATT_DIE4"
.LASF616:
	.string	"S_FATT_DIE5"
.LASF617:
	.string	"S_FATT_DIE6"
.LASF618:
	.string	"S_FATT_DIE7"
.LASF619:
	.string	"S_FATT_DIE8"
.LASF620:
	.string	"S_FATT_DIE9"
.LASF687:
	.string	"S_TROO_XDIE2"
.LASF688:
	.string	"S_TROO_XDIE3"
.LASF689:
	.string	"S_TROO_XDIE4"
.LASF690:
	.string	"S_TROO_XDIE5"
.LASF691:
	.string	"S_TROO_XDIE6"
.LASF692:
	.string	"S_TROO_XDIE7"
.LASF693:
	.string	"S_TROO_XDIE8"
.LASF162:
	.string	"SPR_CLIP"
.LASF1134:
	.string	"S_SHRTREDCOL"
.LASF1177:
	.string	"S_HANGTSKULL"
.LASF1486:
	.string	"players"
.LASF1640:
	.string	"HUlib_initTextLine"
.LASF1655:
	.string	"HU_Ticker"
.LASF51:
	.string	"NUMPOWERS"
.LASF962:
	.string	"S_SSWV_ATK3"
.LASF963:
	.string	"S_SSWV_ATK4"
.LASF268:
	.string	"S_DSGUN10"
.LASF1553:
	.string	"sfx_cacdth"
.LASF46:
	.string	"pw_strength"
.LASF196:
	.string	"SPR_CAND"
.LASF1510:
	.string	"sfx_stnmov"
.LASF1213:
	.string	"MT_SERGEANT"
.LASF1505:
	.string	"sfx_firxpl"
.LASF1124:
	.string	"S_LIVESTICK"
.LASF1064:
	.string	"S_STIM"
.LASF41:
	.string	"am_cell"
.LASF19:
	.string	"it_bluecard"
.LASF1372:
	.string	"floorz"
.LASF727:
	.string	"S_HEAD_RUN1"
.LASF382:
	.string	"S_PLAY_DIE1"
.LASF383:
	.string	"S_PLAY_DIE2"
.LASF384:
	.string	"S_PLAY_DIE3"
.LASF385:
	.string	"S_PLAY_DIE4"
.LASF386:
	.string	"S_PLAY_DIE5"
.LASF387:
	.string	"S_PLAY_DIE6"
.LASF388:
	.string	"S_PLAY_DIE7"
.LASF398:
	.string	"S_POSS_STND"
.LASF354:
	.string	"S_TFOG"
.LASF1291:
	.string	"MT_MISC40"
.LASF1292:
	.string	"MT_MISC41"
.LASF1389:
	.string	"subsector_s"
.LASF714:
	.string	"S_SARG_DIE1"
.LASF715:
	.string	"S_SARG_DIE2"
.LASF716:
	.string	"S_SARG_DIE3"
.LASF717:
	.string	"S_SARG_DIE4"
.LASF1015:
	.string	"S_SPAWNFIRE1"
.LASF1016:
	.string	"S_SPAWNFIRE2"
.LASF1017:
	.string	"S_SPAWNFIRE3"
.LASF1018:
	.string	"S_SPAWNFIRE4"
.LASF1019:
	.string	"S_SPAWNFIRE5"
.LASF1020:
	.string	"S_SPAWNFIRE6"
.LASF1021:
	.string	"S_SPAWNFIRE7"
.LASF1022:
	.string	"S_SPAWNFIRE8"
.LASF686:
	.string	"S_TROO_XDIE1"
.LASF1471:
	.string	"consistancy"
.LASF1661:
	.string	"buffer"
.LASF1390:
	.string	"sector"
.LASF1179:
	.string	"S_HANGTNOBRAIN"
.LASF334:
	.string	"S_PLASEXP2"
.LASF335:
	.string	"S_PLASEXP3"
.LASF336:
	.string	"S_PLASEXP4"
.LASF337:
	.string	"S_PLASEXP5"
.LASF32:
	.string	"wp_bfg"
.LASF1163:
	.string	"S_BTORCHSHRT2"
.LASF1164:
	.string	"S_BTORCHSHRT3"
.LASF1165:
	.string	"S_BTORCHSHRT4"
.LASF1560:
	.string	"sfx_kntdth"
.LASF467:
	.string	"S_VILE_RUN1"
.LASF257:
	.string	"S_DSGUNDOWN"
.LASF469:
	.string	"S_VILE_RUN3"
.LASF470:
	.string	"S_VILE_RUN4"
.LASF471:
	.string	"S_VILE_RUN5"
.LASF472:
	.string	"S_VILE_RUN6"
.LASF473:
	.string	"S_VILE_RUN7"
.LASF474:
	.string	"S_VILE_RUN8"
.LASF475:
	.string	"S_VILE_RUN9"
.LASF718:
	.string	"S_SARG_DIE5"
.LASF719:
	.string	"S_SARG_DIE6"
.LASF1552:
	.string	"sfx_sgtdth"
.LASF1366:
	.string	"thinker"
.LASF1582:
	.string	"sfx_bospit"
.LASF559:
	.string	"S_SKEL_FIST1"
.LASF560:
	.string	"S_SKEL_FIST2"
.LASF561:
	.string	"S_SKEL_FIST3"
.LASF562:
	.string	"S_SKEL_FIST4"
.LASF298:
	.string	"S_PLASMA"
.LASF1077:
	.string	"S_PINS"
.LASF1461:
	.string	"laston"
.LASF1517:
	.string	"sfx_mnpain"
.LASF1150:
	.string	"S_BLUETORCH"
.LASF588:
	.string	"S_FATT_RUN1"
.LASF589:
	.string	"S_FATT_RUN2"
.LASF590:
	.string	"S_FATT_RUN3"
.LASF591:
	.string	"S_FATT_RUN4"
.LASF48:
	.string	"pw_ironfeet"
.LASF593:
	.string	"S_FATT_RUN6"
.LASF594:
	.string	"S_FATT_RUN7"
.LASF595:
	.string	"S_FATT_RUN8"
.LASF1126:
	.string	"S_MEAT2"
.LASF1127:
	.string	"S_MEAT3"
.LASF1128:
	.string	"S_MEAT4"
.LASF1129:
	.string	"S_MEAT5"
.LASF1538:
	.string	"sfx_pesit"
.LASF241:
	.string	"S_PISTOLFLASH"
.LASF1428:
	.string	"floorheight"
.LASF461:
	.string	"S_SPOS_RAISE2"
.LASF462:
	.string	"S_SPOS_RAISE3"
.LASF463:
	.string	"S_SPOS_RAISE4"
.LASF464:
	.string	"S_SPOS_RAISE5"
.LASF153:
	.string	"SPR_MEDI"
.LASF155:
	.string	"SPR_PINV"
.LASF1527:
	.string	"sfx_bgsit1"
.LASF1528:
	.string	"sfx_bgsit2"
.LASF1562:
	.string	"sfx_skedth"
.LASF1003:
	.string	"S_BRAIN_PAIN"
.LASF274:
	.string	"S_CHAINDOWN"
.LASF1612:
	.string	"w_message"
.LASF1652:
	.string	"HU_Responder"
.LASF493:
	.string	"S_VILE_PAIN"
.LASF540:
	.string	"S_TRACER"
.LASF960:
	.string	"S_SSWV_ATK1"
.LASF961:
	.string	"S_SSWV_ATK2"
.LASF490:
	.string	"S_VILE_HEAL1"
.LASF491:
	.string	"S_VILE_HEAL2"
.LASF492:
	.string	"S_VILE_HEAL3"
.LASF965:
	.string	"S_SSWV_ATK6"
.LASF1382:
	.string	"movecount"
.LASF147:
	.string	"SPR_RKEY"
.LASF1534:
	.string	"sfx_bspsit"
.LASF1111:
	.string	"S_STALAG"
.LASF1515:
	.string	"sfx_popain"
.LASF826:
	.string	"S_SPID_STND2"
.LASF80:
	.string	"angle_t"
.LASF1431:
	.string	"ceilingpic"
.LASF1112:
	.string	"S_BLOODYTWITCH"
.LASF1181:
	.string	"S_SMALLPOOL"
.LASF1467:
	.string	"pspdef_t"
.LASF1307:
	.string	"MT_MISC56"
.LASF610:
	.string	"S_FATT_PAIN"
.LASF1626:
	.string	"tail"
.LASF374:
	.string	"S_PLAY_RUN1"
.LASF375:
	.string	"S_PLAY_RUN2"
.LASF376:
	.string	"S_PLAY_RUN3"
.LASF377:
	.string	"S_PLAY_RUN4"
.LASF1102:
	.string	"S_BPAK"
.LASF79:
	.string	"double"
.LASF142:
	.string	"SPR_BEXP"
.LASF1653:
	.string	"HU_dequeueChatChar"
.LASF1393:
	.string	"player_s"
.LASF1059:
	.string	"S_BSKULL2"
.LASF101:
	.string	"SPR_PUFF"
.LASF988:
	.string	"S_COMMKEEN"
.LASF1506:
	.string	"sfx_pstart"
.LASF1410:
	.string	"usedown"
.LASF780:
	.string	"S_BOS2_STND"
.LASF107:
	.string	"SPR_BFS1"
.LASF1604:
	.string	"chat_on"
.LASF1011:
	.string	"S_SPAWN1"
.LASF1012:
	.string	"S_SPAWN2"
.LASF1013:
	.string	"S_SPAWN3"
.LASF1014:
	.string	"S_SPAWN4"
.LASF1184:
	.string	"S_TECHLAMP2"
.LASF1185:
	.string	"S_TECHLAMP3"
.LASF33:
	.string	"wp_chainsaw"
.LASF1221:
	.string	"MT_BABY"
.LASF1408:
	.string	"maxammo"
.LASF1579:
	.string	"sfx_flame"
.LASF1125:
	.string	"S_LIVESTICK2"
.LASF1170:
	.string	"S_RTORCHSHRT"
.LASF1267:
	.string	"MT_MISC19"
.LASF129:
	.string	"SPR_SPID"
.LASF726:
	.string	"S_HEAD_STND"
.LASF1484:
	.string	"automapactive"
.LASF701:
	.string	"S_SARG_RUN1"
.LASF702:
	.string	"S_SARG_RUN2"
.LASF62:
	.string	"data1"
.LASF63:
	.string	"data2"
.LASF64:
	.string	"data3"
.LASF707:
	.string	"S_SARG_RUN7"
.LASF708:
	.string	"S_SARG_RUN8"
.LASF1245:
	.string	"MT_MISC1"
.LASF1246:
	.string	"MT_MISC2"
.LASF1247:
	.string	"MT_MISC3"
.LASF1248:
	.string	"MT_MISC4"
.LASF1249:
	.string	"MT_MISC5"
.LASF1250:
	.string	"MT_MISC6"
.LASF1251:
	.string	"MT_MISC7"
.LASF1252:
	.string	"MT_MISC8"
.LASF1253:
	.string	"MT_MISC9"
.LASF291:
	.string	"S_SAW"
.LASF158:
	.string	"SPR_MEGA"
.LASF380:
	.string	"S_PLAY_PAIN"
.LASF1613:
	.string	"message_counter"
.LASF1543:
	.string	"sfx_claw"
.LASF332:
	.string	"S_PLASBALL2"
.LASF1465:
	.string	"ps_flash"
.LASF1394:
	.string	"playerstate"
.LASF1625:
	.string	"head"
.LASF136:
	.string	"SPR_KEEN"
.LASF966:
	.string	"S_SSWV_PAIN"
.LASF1347:
	.string	"painstate"
.LASF1001:
	.string	"S_KEENPAIN2"
.LASF50:
	.string	"pw_infrared"
.LASF488:
	.string	"S_VILE_ATK10"
.LASF489:
	.string	"S_VILE_ATK11"
.LASF1627:
	.string	"HUlib_resetIText"
.LASF1456:
	.string	"topoffset"
.LASF967:
	.string	"S_SSWV_PAIN2"
.LASF1331:
	.string	"MT_MISC80"
.LASF1354:
	.string	"deathsound"
.LASF1041:
	.string	"S_BON1A"
.LASF1042:
	.string	"S_BON1B"
.LASF1043:
	.string	"S_BON1C"
.LASF1044:
	.string	"S_BON1D"
.LASF1045:
	.string	"S_BON1E"
.LASF1448:
	.string	"sector_t"
.LASF1454:
	.string	"width"
.LASF156:
	.string	"SPR_PSTR"
.LASF1269:
	.string	"MT_MISC21"
.LASF712:
	.string	"S_SARG_PAIN"
.LASF1264:
	.string	"MT_CLIP"
.LASF171:
	.string	"SPR_BFUG"
.LASF1319:
	.string	"MT_MISC68"
.LASF1037:
	.string	"S_BBAR1"
.LASF1038:
	.string	"S_BBAR2"
.LASF1039:
	.string	"S_BBAR3"
.LASF225:
	.string	"S_LIGHTDONE"
.LASF876:
	.string	"S_BSPI_PAIN2"
.LASF1610:
	.string	"message_dontfuckwithme"
.LASF1402:
	.string	"backpack"
.LASF676:
	.string	"S_TROO_ATK1"
.LASF677:
	.string	"S_TROO_ATK2"
.LASF678:
	.string	"S_TROO_ATK3"
.LASF820:
	.string	"S_SKULL_DIE2"
.LASF821:
	.string	"S_SKULL_DIE3"
.LASF822:
	.string	"S_SKULL_DIE4"
.LASF823:
	.string	"S_SKULL_DIE5"
.LASF824:
	.string	"S_SKULL_DIE6"
.LASF175:
	.string	"SPR_PLAS"
.LASF1047:
	.string	"S_BON2A"
.LASF1048:
	.string	"S_BON2B"
.LASF88:
	.string	"SPR_PISF"
.LASF87:
	.string	"SPR_PISG"
.LASF1051:
	.string	"S_BON2E"
.LASF1274:
	.string	"MT_CHAINGUN"
.LASF323:
	.string	"S_TBALLX1"
.LASF324:
	.string	"S_TBALLX2"
.LASF325:
	.string	"S_TBALLX3"
.LASF36:
	.string	"wp_nochange"
.LASF1211:
	.string	"MT_CHAINGUY"
.LASF1427:
	.string	"degenmobj_t"
.LASF1525:
	.string	"sfx_posit2"
.LASF1468:
	.string	"forwardmove"
.LASF1605:
	.string	"w_chat"
.LASF819:
	.string	"S_SKULL_DIE1"
.LASF1476:
	.string	"PST_DEAD"
.LASF1182:
	.string	"S_BRAINSTEM"
.LASF987:
	.string	"S_KEENSTND"
.LASF112:
	.string	"SPR_PLAY"
.LASF1404:
	.string	"readyweapon"
.LASF1530:
	.string	"sfx_cacsit"
.LASF1539:
	.string	"sfx_sklatk"
.LASF1650:
	.string	"destination_keys"
.LASF1122:
	.string	"S_HEADCANDLES2"
.LASF1241:
	.string	"MT_IFOG"
.LASF1602:
	.string	"hu_font"
.LASF203:
	.string	"SPR_FSKU"
.LASF1585:
	.string	"sfx_bospn"
.LASF438:
	.string	"S_SPOS_RUN6"
.LASF294:
	.string	"S_SAWUP"
.LASF1027:
	.string	"S_ARM1A"
.LASF630:
	.string	"S_CPOS_STND"
.LASF1282:
	.string	"MT_MISC31"
.LASF1376:
	.string	"momz"
.LASF1101:
	.string	"S_SBOX"
.LASF1434:
	.string	"soundtraversed"
.LASF1285:
	.string	"MT_MISC34"
.LASF1444:
	.string	"bbox"
.LASF333:
	.string	"S_PLASEXP"
.LASF1288:
	.string	"MT_MISC37"
.LASF1519:
	.string	"sfx_slop"
.LASF1117:
	.string	"S_DEADBOTTOM"
.LASF1576:
	.string	"sfx_bdopn"
.LASF1174:
	.string	"S_HANGNOGUTS"
.LASF1346:
	.string	"attacksound"
.LASF1078:
	.string	"S_PINS2"
.LASF1079:
	.string	"S_PINS3"
.LASF1080:
	.string	"S_PINS4"
.LASF932:
	.string	"S_PAIN_ATK1"
.LASF933:
	.string	"S_PAIN_ATK2"
.LASF934:
	.string	"S_PAIN_ATK3"
.LASF935:
	.string	"S_PAIN_ATK4"
.LASF244:
	.string	"S_SGUNUP"
.LASF1446:
	.string	"frontsector"
.LASF197:
	.string	"SPR_CBRA"
.LASF1352:
	.string	"deathstate"
.LASF1029:
	.string	"S_ARM2A"
.LASF56:
	.string	"ev_keydown"
.LASF1455:
	.string	"leftoffset"
.LASF1057:
	.string	"S_YKEY2"
.LASF507:
	.string	"S_FIRE3"
.LASF1345:
	.string	"reactiontime"
.LASF512:
	.string	"S_FIRE8"
.LASF752:
	.string	"S_BOSS_STND2"
.LASF1569:
	.string	"sfx_noway"
.LASF1368:
	.string	"sprev"
.LASF295:
	.string	"S_SAW1"
.LASF296:
	.string	"S_SAW2"
.LASF297:
	.string	"S_SAW3"
.LASF1040:
	.string	"S_BON1"
.LASF1046:
	.string	"S_BON2"
.LASF1385:
	.string	"player"
.LASF1656:
	.string	"HU_Erase"
.LASF292:
	.string	"S_SAWB"
.LASF680:
	.string	"S_TROO_PAIN2"
.LASF1227:
	.string	"MT_BOSSSPIT"
.LASF505:
	.string	"S_FIRE1"
.LASF506:
	.string	"S_FIRE2"
.LASF66:
	.string	"fixed_t"
.LASF508:
	.string	"S_FIRE4"
.LASF509:
	.string	"S_FIRE5"
.LASF510:
	.string	"S_FIRE6"
.LASF511:
	.string	"S_FIRE7"
.LASF165:
	.string	"SPR_BROK"
.LASF513:
	.string	"S_FIRE9"
.LASF1295:
	.string	"MT_MISC44"
.LASF1296:
	.string	"MT_MISC45"
.LASF1098:
	.string	"S_CELL"
.LASF1298:
	.string	"MT_MISC47"
.LASF163:
	.string	"SPR_AMMO"
.LASF1299:
	.string	"MT_MISC48"
.LASF1300:
	.string	"MT_MISC49"
.LASF811:
	.string	"S_SKULL_RUN1"
.LASF812:
	.string	"S_SKULL_RUN2"
.LASF1178:
	.string	"S_HANGTLOOKUP"
.LASF273:
	.string	"S_CHAIN"
.LASF60:
	.string	"evtype_t"
.LASF303:
	.string	"S_PLASMAFLASH1"
.LASF259:
	.string	"S_DSGUN1"
.LASF260:
	.string	"S_DSGUN2"
.LASF154:
	.string	"SPR_SOUL"
.LASF114:
	.string	"SPR_SPOS"
.LASF263:
	.string	"S_DSGUN5"
.LASF264:
	.string	"S_DSGUN6"
.LASF265:
	.string	"S_DSGUN7"
.LASF266:
	.string	"S_DSGUN8"
.LASF267:
	.string	"S_DSGUN9"
.LASF431:
	.string	"S_SPOS_STND"
.LASF134:
	.string	"SPR_PAIN"
.LASF659:
	.string	"S_CPOS_RAISE1"
.LASF1403:
	.string	"frags"
.LASF1559:
	.string	"sfx_vildth"
.LASF1398:
	.string	"armorpoints"
.LASF1473:
	.string	"buttons"
.LASF308:
	.string	"S_BFG1"
.LASF309:
	.string	"S_BFG2"
.LASF310:
	.string	"S_BFG3"
.LASF311:
	.string	"S_BFG4"
.LASF223:
	.string	"spritenum_t"
.LASF270:
	.string	"S_DSNR2"
.LASF810:
	.string	"S_SKULL_STND2"
.LASF1073:
	.string	"S_PINV2"
.LASF1074:
	.string	"S_PINV3"
.LASF703:
	.string	"S_SARG_RUN3"
.LASF704:
	.string	"S_SARG_RUN4"
.LASF1189:
	.string	"S_TECH2LAMP3"
.LASF1190:
	.string	"S_TECH2LAMP4"
.LASF1442:
	.string	"line_s"
.LASF86:
	.string	"SPR_PUNG"
.LASF654:
	.string	"S_CPOS_XDIE2"
.LASF655:
	.string	"S_CPOS_XDIE3"
.LASF656:
	.string	"S_CPOS_XDIE4"
.LASF657:
	.string	"S_CPOS_XDIE5"
.LASF658:
	.string	"S_CPOS_XDIE6"
.LASF839:
	.string	"S_SPID_ATK1"
.LASF840:
	.string	"S_SPID_ATK2"
.LASF841:
	.string	"S_SPID_ATK3"
.LASF842:
	.string	"S_SPID_ATK4"
.LASF563:
	.string	"S_SKEL_MISS1"
.LASF564:
	.string	"S_SKEL_MISS2"
.LASF565:
	.string	"S_SKEL_MISS3"
.LASF566:
	.string	"S_SKEL_MISS4"
.LASF320:
	.string	"S_PUFF4"
.LASF1060:
	.string	"S_RSKULL"
.LASF892:
	.string	"S_ARACH_PLAZ2"
.LASF1301:
	.string	"MT_MISC50"
.LASF740:
	.string	"S_HEAD_RAISE1"
.LASF1336:
	.string	"MT_MISC85"
.LASF741:
	.string	"S_HEAD_RAISE2"
.LASF742:
	.string	"S_HEAD_RAISE3"
.LASF1411:
	.string	"cheats"
.LASF149:
	.string	"SPR_BSKU"
.LASF744:
	.string	"S_HEAD_RAISE5"
.LASF1644:
	.string	"lastmessage"
.LASF745:
	.string	"S_HEAD_RAISE6"
.LASF1279:
	.string	"MT_SUPERSHOTGUN"
.LASF160:
	.string	"SPR_PMAP"
.LASF1008:
	.string	"S_BRAINEYE"
.LASF161:
	.string	"SPR_PVIS"
.LASF1475:
	.string	"PST_LIVE"
.LASF1481:
	.string	"gameepisode"
.LASF1237:
	.string	"MT_ARACHPLAZ"
.LASF1648:
	.string	"altdown"
.LASF486:
	.string	"S_VILE_ATK8"
.LASF427:
	.string	"S_POSS_RAISE1"
.LASF428:
	.string	"S_POSS_RAISE2"
.LASF429:
	.string	"S_POSS_RAISE3"
.LASF430:
	.string	"S_POSS_RAISE4"
.LASF282:
	.string	"S_MISSILEDOWN"
.LASF1570:
	.string	"sfx_barexp"
.LASF1146:
	.string	"S_FLOATSKULL2"
.LASF1147:
	.string	"S_FLOATSKULL3"
.LASF1493:
	.string	"sfx_dbopn"
.LASF1497:
	.string	"sfx_bfg"
.LASF1081:
	.string	"S_MEGA"
.LASF761:
	.string	"S_BOSS_ATK1"
.LASF762:
	.string	"S_BOSS_ATK2"
.LASF763:
	.string	"S_BOSS_ATK3"
.LASF1371:
	.string	"subsector"
.LASF219:
	.string	"SPR_BRS1"
.LASF1426:
	.string	"vertex_t"
.LASF568:
	.string	"S_SKEL_PAIN2"
.LASF1105:
	.string	"S_CSAW"
.LASF45:
	.string	"pw_invulnerability"
.LASF748:
	.string	"S_BRBALLX1"
.LASF749:
	.string	"S_BRBALLX2"
.LASF750:
	.string	"S_BRBALLX3"
.LASF878:
	.string	"S_BSPI_DIE2"
.LASF879:
	.string	"S_BSPI_DIE3"
.LASF880:
	.string	"S_BSPI_DIE4"
.LASF881:
	.string	"S_BSPI_DIE5"
.LASF29:
	.string	"wp_chaingun"
.LASF883:
	.string	"S_BSPI_DIE7"
.LASF434:
	.string	"S_SPOS_RUN2"
.LASF1447:
	.string	"backsector"
.LASF435:
	.string	"S_SPOS_RUN3"
.LASF937:
	.string	"S_PAIN_PAIN2"
.LASF572:
	.string	"S_SKEL_DIE4"
.LASF1489:
	.string	"sfx_pistol"
.LASF168:
	.string	"SPR_SHEL"
.LASF1320:
	.string	"MT_MISC69"
.LASF1399:
	.string	"armortype"
.LASF52:
	.string	"false"
.LASF220:
	.string	"SPR_TLMP"
.LASF1622:
	.string	"english_shiftxform"
.LASF399:
	.string	"S_POSS_STND2"
.LASF1278:
	.string	"MT_SHOTGUN"
.LASF1203:
	.string	"MT_SHOTGUY"
.LASF1414:
	.string	"itemcount"
.LASF1183:
	.string	"S_TECHLAMP"
.LASF1224:
	.string	"MT_WOLFSS"
.LASF781:
	.string	"S_BOS2_STND2"
.LASF1435:
	.string	"soundtarget"
.LASF276:
	.string	"S_CHAIN1"
.LASF277:
	.string	"S_CHAIN2"
.LASF278:
	.string	"S_CHAIN3"
.LASF329:
	.string	"S_RBALLX2"
.LASF330:
	.string	"S_RBALLX3"
.LASF205:
	.string	"SPR_TBLU"
.LASF432:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1490:
	.string	"sfx_shotgn"
.LASF1367:
	.string	"snext"
.LASF44:
	.string	"am_noammo"
.LASF1364:
	.string	"thinker_s"
.LASF77:
	.string	"thinker_t"
.LASF1645:
	.string	"macromessage"
.LASF1550:
	.string	"sfx_bgdth1"
.LASF1551:
	.string	"sfx_bgdth2"
.LASF408:
	.string	"S_POSS_ATK1"
.LASF409:
	.string	"S_POSS_ATK2"
.LASF410:
	.string	"S_POSS_ATK3"
.LASF1322:
	.string	"MT_MISC71"
.LASF1171:
	.string	"S_RTORCHSHRT2"
.LASF1172:
	.string	"S_RTORCHSHRT3"
.LASF1173:
	.string	"S_RTORCHSHRT4"
.LASF1075:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF859:
	.string	"S_BSPI_RUN1"
.LASF1328:
	.string	"MT_MISC77"
.LASF1329:
	.string	"MT_MISC78"
.LASF1330:
	.string	"MT_MISC79"
.LASF1219:
	.string	"MT_SKULL"
.LASF1206:
	.string	"MT_UNDEAD"
.LASF37:
	.string	"GameMode_t"
.LASF74:
	.string	"prev"
.LASF569:
	.string	"S_SKEL_DIE1"
.LASF570:
	.string	"S_SKEL_DIE2"
.LASF571:
	.string	"S_SKEL_DIE3"
.LASF116:
	.string	"SPR_FIRE"
.LASF573:
	.string	"S_SKEL_DIE5"
.LASF574:
	.string	"S_SKEL_DIE6"
.LASF1180:
	.string	"S_COLONGIBS"
.LASF1480:
	.string	"gamemode"
.LASF221:
	.string	"SPR_TLP2"
.LASF331:
	.string	"S_PLASBALL"
.LASF1546:
	.string	"sfx_pdiehi"
.LASF177:
	.string	"SPR_SGN2"
.LASF82:
	.string	"options"
.LASF130:
	.string	"SPR_BSPI"
.LASF132:
	.string	"SPR_APBX"
.LASF1422:
	.string	"colormap"
.LASF13:
	.string	"retail"
.LASF1255:
	.string	"MT_MISC11"
.LASF1256:
	.string	"MT_MISC12"
.LASF1258:
	.string	"MT_MISC13"
.LASF1260:
	.string	"MT_MISC14"
.LASF1261:
	.string	"MT_MISC15"
.LASF1262:
	.string	"MT_MISC16"
.LASF1265:
	.string	"MT_MISC17"
.LASF1266:
	.string	"MT_MISC18"
.LASF1094:
	.string	"S_CLIP"
.LASF1356:
	.string	"radius"
.LASF1380:
	.string	"health"
.LASF1228:
	.string	"MT_BOSSTARGET"
.LASF1535:
	.string	"sfx_kntsit"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"hu_stuff.c"
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
