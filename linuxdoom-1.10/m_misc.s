	.file	"m_misc.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "m_misc.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: m_misc.c,v 1.6 1997/02/03 22:45:10 b1 Exp $"
	.text
	.globl	M_DrawText
	.type	M_DrawText, @function
M_DrawText:
.LFB6:
	.file 1 "m_misc.c"
	.loc 1 75 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movl	%edx, -28(%rbp)	# direct, direct
	movq	%rcx, -40(%rbp)	# string, string
# m_misc.c:79:     while (*string)
	.loc 1 79 11
	jmp	.L2	#
.L10:
# m_misc.c:81: 	c = toupper(*string) - HU_FONTSTART;
	.loc 1 81 14
	movq	-40(%rbp), %rax	# string, tmp93
	movzbl	(%rax), %eax	# *string_11, _1
# m_misc.c:81: 	c = toupper(*string) - HU_FONTSTART;
	.loc 1 81 6
	movsbl	%al, %eax	# _1, _2
	movl	%eax, %edi	# _2,
	call	toupper@PLT	#
# m_misc.c:81: 	c = toupper(*string) - HU_FONTSTART;
	.loc 1 81 4 discriminator 1
	subl	$33, %eax	#, tmp94
	movl	%eax, -8(%rbp)	# tmp94, c
# m_misc.c:82: 	string++;
	.loc 1 82 8
	addq	$1, -40(%rbp)	#, string
# m_misc.c:83: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 83 5
	cmpl	$0, -8(%rbp)	#, c
	js	.L3	#,
# m_misc.c:83: 	if (c < 0 || c> HU_FONTSIZE)
	.loc 1 83 12 discriminator 2
	cmpl	$63, -8(%rbp)	#, c
	jle	.L4	#,
.L3:
# m_misc.c:85: 	    x += 4;
	.loc 1 85 8
	addl	$4, -20(%rbp)	#, x
# m_misc.c:86: 	    continue;
	.loc 1 86 6
	jmp	.L2	#
.L4:
# m_misc.c:89: 	w = SHORT (hu_font[c]->width);
	.loc 1 89 6
	movl	-8(%rbp), %eax	# c, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp97
	leaq	hu_font(%rip), %rax	#, tmp98
	movq	(%rdx,%rax), %rax	# hu_font[c_17], _4
	movzwl	(%rax), %eax	# _4->width, _5
# m_misc.c:89: 	w = SHORT (hu_font[c]->width);
	.loc 1 89 4
	cwtl
	movl	%eax, -4(%rbp)	# tmp99, w
# m_misc.c:90: 	if (x+w > SCREENWIDTH)
	.loc 1 90 7
	movl	-20(%rbp), %edx	# x, tmp100
	movl	-4(%rbp), %eax	# w, tmp101
	addl	%edx, %eax	# tmp100, _6
# m_misc.c:90: 	if (x+w > SCREENWIDTH)
	.loc 1 90 5
	cmpl	$320, %eax	#, _6
	jg	.L12	#,
# m_misc.c:92: 	if (direct)
	.loc 1 92 5
	cmpl	$0, -28(%rbp)	#, direct
	je	.L8	#,
# m_misc.c:93: 	    V_DrawPatchDirect(x, y, 0, hu_font[c]);
	.loc 1 93 6
	movl	-8(%rbp), %eax	# c, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp104
	leaq	hu_font(%rip), %rax	#, tmp105
	movq	(%rdx,%rax), %rdx	# hu_font[c_17], _7
	movl	-24(%rbp), %esi	# y, tmp106
	movl	-20(%rbp), %eax	# x, tmp107
	movq	%rdx, %rcx	# _7,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp107,
	call	V_DrawPatchDirect@PLT	#
	jmp	.L9	#
.L8:
# m_misc.c:95: 	    V_DrawPatch(x, y, 0, hu_font[c]);
	.loc 1 95 6
	movl	-8(%rbp), %eax	# c, tmp109
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp110
	leaq	hu_font(%rip), %rax	#, tmp111
	movq	(%rdx,%rax), %rdx	# hu_font[c_17], _8
	movl	-24(%rbp), %esi	# y, tmp112
	movl	-20(%rbp), %eax	# x, tmp113
	movq	%rdx, %rcx	# _8,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp113,
	call	V_DrawPatch@PLT	#
.L9:
# m_misc.c:96: 	x+=w;
	.loc 1 96 3
	movl	-4(%rbp), %eax	# w, tmp114
	addl	%eax, -20(%rbp)	# tmp114, x
.L2:
# m_misc.c:79:     while (*string)
	.loc 1 79 12
	movq	-40(%rbp), %rax	# string, tmp115
	movzbl	(%rax), %eax	# *string_11, _9
	testb	%al, %al	# _9
	jne	.L10	#,
	jmp	.L7	#
.L12:
# m_misc.c:91: 	    break;
	.loc 1 91 6
	nop	
.L7:
# m_misc.c:99:     return x;
	.loc 1 99 12
	movl	-20(%rbp), %eax	# x, _26
# m_misc.c:100: }
	.loc 1 100 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	M_DrawText, .-M_DrawText
	.globl	M_WriteFile
	.type	M_WriteFile, @function
M_WriteFile:
.LFB7:
	.loc 1 117 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movq	%rsi, -32(%rbp)	# source, source
	movl	%edx, -36(%rbp)	# length, length
# m_misc.c:121:     handle = open ( name, O_WRONLY | O_CREAT | O_TRUNC | O_BINARY, 0666);
	.loc 1 121 14
	movq	-24(%rbp), %rax	# name, tmp86
	movl	$438, %edx	#,
	movl	$577, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -8(%rbp)	# tmp87, handle
# m_misc.c:123:     if (handle == -1)
	.loc 1 123 8
	cmpl	$-1, -8(%rbp)	#, handle
	jne	.L14	#,
# m_misc.c:124: 	return false;
	.loc 1 124 9
	movl	$0, %eax	#, _3
	jmp	.L15	#
.L14:
# m_misc.c:126:     count = write (handle, source, length);
	.loc 1 126 13
	movl	-36(%rbp), %eax	# length, tmp88
	movslq	%eax, %rdx	# tmp88, _1
	movq	-32(%rbp), %rcx	# source, tmp89
	movl	-8(%rbp), %eax	# handle, tmp90
	movq	%rcx, %rsi	# tmp89,
	movl	%eax, %edi	# tmp90,
	call	write@PLT	#
# m_misc.c:126:     count = write (handle, source, length);
	.loc 1 126 11 discriminator 1
	movl	%eax, -4(%rbp)	# _2, count
# m_misc.c:127:     close (handle);
	.loc 1 127 5
	movl	-8(%rbp), %eax	# handle, tmp91
	movl	%eax, %edi	# tmp91,
	call	close@PLT	#
# m_misc.c:129:     if (count < length)
	.loc 1 129 8
	movl	-4(%rbp), %eax	# count, tmp92
	cmpl	-36(%rbp), %eax	# length, tmp92
	jge	.L16	#,
# m_misc.c:130: 	return false;
	.loc 1 130 9
	movl	$0, %eax	#, _3
	jmp	.L15	#
.L16:
# m_misc.c:132:     return true;
	.loc 1 132 12
	movl	$1, %eax	#, _3
.L15:
# m_misc.c:133: }
	.loc 1 133 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	M_WriteFile, .-M_WriteFile
	.section	.rodata
.LC0:
	.string	"Couldn't read file %s"
	.text
	.globl	M_ReadFile
	.type	M_ReadFile, @function
M_ReadFile:
.LFB8:
	.loc 1 143 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -200(%rbp)	# name, name
	movq	%rsi, -208(%rbp)	# buffer, buffer
# m_misc.c:143: {
	.loc 1 143 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	movq	%rax, -8(%rbp)	# tmp108, D.8194
	xorl	%eax, %eax	# tmp108
# m_misc.c:148:     handle = open (name, O_RDONLY | O_BINARY, 0666);
	.loc 1 148 14
	movq	-200(%rbp), %rax	# name, tmp88
	movl	$438, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -180(%rbp)	# tmp89, handle
# m_misc.c:149:     if (handle == -1)
	.loc 1 149 8
	cmpl	$-1, -180(%rbp)	#, handle
	jne	.L18	#,
# m_misc.c:150: 	I_Error ("Couldn't read file %s", name);
	.loc 1 150 2
	movq	-200(%rbp), %rax	# name, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L18:
# m_misc.c:151:     if (fstat (handle,&fileinfo) == -1)
	.loc 1 151 9
	leaq	-160(%rbp), %rdx	#, tmp92
	movl	-180(%rbp), %eax	# handle, tmp93
	movq	%rdx, %rsi	# tmp92,
	movl	%eax, %edi	# tmp93,
	call	fstat@PLT	#
# m_misc.c:151:     if (fstat (handle,&fileinfo) == -1)
	.loc 1 151 8 discriminator 1
	cmpl	$-1, %eax	#, _1
	jne	.L19	#,
# m_misc.c:152: 	I_Error ("Couldn't read file %s", name);
	.loc 1 152 2
	movq	-200(%rbp), %rax	# name, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L19:
# m_misc.c:153:     length = fileinfo.st_size;
	.loc 1 153 22
	movq	-112(%rbp), %rax	# fileinfo.st_size, _2
# m_misc.c:153:     length = fileinfo.st_size;
	.loc 1 153 12
	movl	%eax, -176(%rbp)	# _2, length
# m_misc.c:154:     buf = Z_Malloc (length, PU_STATIC, NULL);
	.loc 1 154 11
	movl	-176(%rbp), %eax	# length, tmp96
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp96,
	call	Z_Malloc@PLT	#
	movq	%rax, -168(%rbp)	# tmp97, buf
# m_misc.c:155:     count = read (handle, buf, length);
	.loc 1 155 13
	movl	-176(%rbp), %eax	# length, tmp98
	movslq	%eax, %rdx	# tmp98, _3
	movq	-168(%rbp), %rcx	# buf, tmp99
	movl	-180(%rbp), %eax	# handle, tmp100
	movq	%rcx, %rsi	# tmp99,
	movl	%eax, %edi	# tmp100,
	call	read@PLT	#
# m_misc.c:155:     count = read (handle, buf, length);
	.loc 1 155 11 discriminator 1
	movl	%eax, -172(%rbp)	# _4, count
# m_misc.c:156:     close (handle);
	.loc 1 156 5
	movl	-180(%rbp), %eax	# handle, tmp101
	movl	%eax, %edi	# tmp101,
	call	close@PLT	#
# m_misc.c:158:     if (count < length)
	.loc 1 158 8
	movl	-172(%rbp), %eax	# count, tmp102
	cmpl	-176(%rbp), %eax	# length, tmp102
	jge	.L20	#,
# m_misc.c:159: 	I_Error ("Couldn't read file %s", name);
	.loc 1 159 2
	movq	-200(%rbp), %rax	# name, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L20:
# m_misc.c:161:     *buffer = buf;
	.loc 1 161 13
	movq	-208(%rbp), %rax	# buffer, tmp105
	movq	-168(%rbp), %rdx	# buf, tmp106
	movq	%rdx, (%rax)	# tmp106, *buffer_22(D)
# m_misc.c:162:     return length;
	.loc 1 162 12
	movl	-176(%rbp), %eax	# length, _24
# m_misc.c:163: }
	.loc 1 163 1
	movq	-8(%rbp), %rdx	# D.8194, tmp109
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L22	#,
	call	__stack_chk_fail@PLT	#
.L22:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	M_ReadFile, .-M_ReadFile
	.globl	usemouse
	.bss
	.align 4
	.type	usemouse, @object
	.size	usemouse, 4
usemouse:
	.zero	4
	.globl	usejoystick
	.align 4
	.type	usejoystick, @object
	.size	usejoystick, 4
usejoystick:
	.zero	4
	.globl	mousetype
	.align 8
	.type	mousetype, @object
	.size	mousetype, 8
mousetype:
	.zero	8
	.globl	mousedev
	.align 8
	.type	mousedev, @object
	.size	mousedev, 8
mousedev:
	.zero	8
	.globl	defaults
	.section	.rodata
.LC1:
	.string	"mouse_sensitivity"
.LC2:
	.string	"sfx_volume"
.LC3:
	.string	"music_volume"
.LC4:
	.string	"show_messages"
.LC5:
	.string	"key_right"
.LC6:
	.string	"key_left"
.LC7:
	.string	"key_up"
.LC8:
	.string	"key_down"
.LC9:
	.string	"key_strafeleft"
.LC10:
	.string	"key_straferight"
.LC11:
	.string	"key_fire"
.LC12:
	.string	"key_use"
.LC13:
	.string	"key_strafe"
.LC14:
	.string	"key_speed"
.LC15:
	.string	"sndserver"
.LC16:
	.string	"mb_used"
.LC17:
	.string	"mousedev"
.LC18:
	.string	"/dev/ttyS0"
.LC19:
	.string	"mousetype"
.LC20:
	.string	"microsoft"
.LC21:
	.string	"use_mouse"
.LC22:
	.string	"mouseb_fire"
.LC23:
	.string	"mouseb_strafe"
.LC24:
	.string	"mouseb_forward"
.LC25:
	.string	"use_joystick"
.LC26:
	.string	"joyb_fire"
.LC27:
	.string	"joyb_strafe"
.LC28:
	.string	"joyb_use"
.LC29:
	.string	"joyb_speed"
.LC30:
	.string	"screenblocks"
.LC31:
	.string	"detaillevel"
.LC32:
	.string	"snd_channels"
.LC33:
	.string	"usegamma"
.LC34:
	.string	"chatmacro0"
.LC35:
	.string	"No"
.LC36:
	.string	"chatmacro1"
.LC37:
	.string	"I'm ready to kick butt!"
.LC38:
	.string	"chatmacro2"
.LC39:
	.string	"I'm OK."
.LC40:
	.string	"chatmacro3"
.LC41:
	.string	"I'm not looking too good!"
.LC42:
	.string	"chatmacro4"
.LC43:
	.string	"Help!"
.LC44:
	.string	"chatmacro5"
.LC45:
	.string	"You suck!"
.LC46:
	.string	"chatmacro6"
.LC47:
	.string	"Next time, scumbag..."
.LC48:
	.string	"chatmacro7"
.LC49:
	.string	"Come here!"
.LC50:
	.string	"chatmacro8"
.LC51:
	.string	"I'll take care of it."
.LC52:
	.string	"chatmacro9"
.LC53:
	.string	"Yes"
	.section	.data.rel,"aw"
	.align 32
	.type	defaults, @object
	.size	defaults, 1312
defaults:
# name:
	.quad	.LC1
# location:
	.quad	mouseSensitivity
# defaultvalue:
	.quad	5
	.zero	8
# name:
	.quad	.LC2
# location:
	.quad	snd_SfxVolume
# defaultvalue:
	.quad	8
	.zero	8
# name:
	.quad	.LC3
# location:
	.quad	snd_MusicVolume
# defaultvalue:
	.quad	8
	.zero	8
# name:
	.quad	.LC4
# location:
	.quad	showMessages
# defaultvalue:
	.quad	1
	.zero	8
# name:
	.quad	.LC5
# location:
	.quad	key_right
# defaultvalue:
	.quad	174
	.zero	8
# name:
	.quad	.LC6
# location:
	.quad	key_left
# defaultvalue:
	.quad	172
	.zero	8
# name:
	.quad	.LC7
# location:
	.quad	key_up
# defaultvalue:
	.quad	173
	.zero	8
# name:
	.quad	.LC8
# location:
	.quad	key_down
# defaultvalue:
	.quad	175
	.zero	8
# name:
	.quad	.LC9
# location:
	.quad	key_strafeleft
# defaultvalue:
	.quad	44
	.zero	8
# name:
	.quad	.LC10
# location:
	.quad	key_straferight
# defaultvalue:
	.quad	46
	.zero	8
# name:
	.quad	.LC11
# location:
	.quad	key_fire
# defaultvalue:
	.quad	157
	.zero	8
# name:
	.quad	.LC12
# location:
	.quad	key_use
# defaultvalue:
	.quad	32
	.zero	8
# name:
	.quad	.LC13
# location:
	.quad	key_strafe
# defaultvalue:
	.quad	184
	.zero	8
# name:
	.quad	.LC14
# location:
	.quad	key_speed
# defaultvalue:
	.quad	182
	.zero	8
# name:
	.quad	.LC15
# location:
	.quad	sndserver_filename
# defaultvalue:
	.quad	.LC15
	.zero	8
# name:
	.quad	.LC16
# location:
	.quad	mb_used
# defaultvalue:
	.quad	2
	.zero	8
# name:
	.quad	.LC17
# location:
	.quad	mousedev
# defaultvalue:
	.quad	.LC18
	.zero	8
# name:
	.quad	.LC19
# location:
	.quad	mousetype
# defaultvalue:
	.quad	.LC20
	.zero	8
# name:
	.quad	.LC21
# location:
	.quad	usemouse
# defaultvalue:
	.quad	1
	.zero	8
# name:
	.quad	.LC22
# location:
	.quad	mousebfire
# defaultvalue:
	.quad	0
	.zero	8
# name:
	.quad	.LC23
# location:
	.quad	mousebstrafe
# defaultvalue:
	.quad	1
	.zero	8
# name:
	.quad	.LC24
# location:
	.quad	mousebforward
# defaultvalue:
	.quad	2
	.zero	8
# name:
	.quad	.LC25
# location:
	.quad	usejoystick
# defaultvalue:
	.quad	0
	.zero	8
# name:
	.quad	.LC26
# location:
	.quad	joybfire
# defaultvalue:
	.quad	0
	.zero	8
# name:
	.quad	.LC27
# location:
	.quad	joybstrafe
# defaultvalue:
	.quad	1
	.zero	8
# name:
	.quad	.LC28
# location:
	.quad	joybuse
# defaultvalue:
	.quad	3
	.zero	8
# name:
	.quad	.LC29
# location:
	.quad	joybspeed
# defaultvalue:
	.quad	2
	.zero	8
# name:
	.quad	.LC30
# location:
	.quad	screenblocks
# defaultvalue:
	.quad	9
	.zero	8
# name:
	.quad	.LC31
# location:
	.quad	detailLevel
# defaultvalue:
	.quad	0
	.zero	8
# name:
	.quad	.LC32
# location:
	.quad	numChannels
# defaultvalue:
	.quad	3
	.zero	8
# name:
	.quad	.LC33
# location:
	.quad	usegamma
# defaultvalue:
	.quad	0
	.zero	8
# name:
	.quad	.LC34
# location:
	.quad	chat_macros
# defaultvalue:
	.quad	.LC35
	.zero	8
# name:
	.quad	.LC36
# location:
	.quad	chat_macros+8
# defaultvalue:
	.quad	.LC37
	.zero	8
# name:
	.quad	.LC38
# location:
	.quad	chat_macros+16
# defaultvalue:
	.quad	.LC39
	.zero	8
# name:
	.quad	.LC40
# location:
	.quad	chat_macros+24
# defaultvalue:
	.quad	.LC41
	.zero	8
# name:
	.quad	.LC42
# location:
	.quad	chat_macros+32
# defaultvalue:
	.quad	.LC43
	.zero	8
# name:
	.quad	.LC44
# location:
	.quad	chat_macros+40
# defaultvalue:
	.quad	.LC45
	.zero	8
# name:
	.quad	.LC46
# location:
	.quad	chat_macros+48
# defaultvalue:
	.quad	.LC47
	.zero	8
# name:
	.quad	.LC48
# location:
	.quad	chat_macros+56
# defaultvalue:
	.quad	.LC49
	.zero	8
# name:
	.quad	.LC50
# location:
	.quad	chat_macros+64
# defaultvalue:
	.quad	.LC51
	.zero	8
# name:
	.quad	.LC52
# location:
	.quad	chat_macros+72
# defaultvalue:
	.quad	.LC53
	.zero	8
	.globl	numdefaults
	.bss
	.align 4
	.type	numdefaults, @object
	.size	numdefaults, 4
numdefaults:
	.zero	4
	.globl	defaultfile
	.align 8
	.type	defaultfile, @object
	.size	defaultfile, 8
defaultfile:
	.zero	8
	.section	.rodata
.LC54:
	.string	"w"
.LC55:
	.string	"%s\t\t%i\n"
.LC56:
	.string	"%s\t\t\"%s\"\n"
	.text
	.globl	M_SaveDefaults
	.type	M_SaveDefaults, @function
M_SaveDefaults:
.LFB9:
	.loc 1 309 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# m_misc.c:314:     f = fopen (defaultfile, "w");
	.loc 1 314 9
	movq	defaultfile(%rip), %rax	# defaultfile, defaultfile.0_1
	leaq	.LC54(%rip), %rdx	#, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# defaultfile.0_1,
	call	fopen@PLT	#
	movq	%rax, -8(%rbp)	# tmp92, f
# m_misc.c:315:     if (!f)
	.loc 1 315 8
	cmpq	$0, -8(%rbp)	#, f
	je	.L30	#,
# m_misc.c:318:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 318 11
	movl	$0, -16(%rbp)	#, i
# m_misc.c:318:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 318 5
	jmp	.L26	#
.L29:
# m_misc.c:320: 	if (defaults[i].defaultvalue > -0xfff
	.loc 1 320 17
	movl	-16(%rbp), %eax	# i, tmp94
	cltq
	salq	$5, %rax	#, tmp93
	movq	%rax, %rdx	# tmp93, tmp95
	leaq	16+defaults(%rip), %rax	#, tmp96
	movq	(%rdx,%rax), %rax	# defaults[i_10].defaultvalue, _2
# m_misc.c:320: 	if (defaults[i].defaultvalue > -0xfff
	.loc 1 320 5
	cmpq	$-4094, %rax	#, _2
	jl	.L27	#,
# m_misc.c:321: 	    && defaults[i].defaultvalue < 0xfff)
	.loc 1 321 20
	movl	-16(%rbp), %eax	# i, tmp98
	cltq
	salq	$5, %rax	#, tmp97
	movq	%rax, %rdx	# tmp97, tmp99
	leaq	16+defaults(%rip), %rax	#, tmp100
	movq	(%rdx,%rax), %rax	# defaults[i_10].defaultvalue, _3
# m_misc.c:321: 	    && defaults[i].defaultvalue < 0xfff)
	.loc 1 321 6
	cmpq	$4094, %rax	#, _3
	jg	.L27	#,
# m_misc.c:323: 	    v = *defaults[i].location;
	.loc 1 323 22
	movl	-16(%rbp), %eax	# i, tmp102
	cltq
	salq	$5, %rax	#, tmp101
	movq	%rax, %rdx	# tmp101, tmp103
	leaq	8+defaults(%rip), %rax	#, tmp104
	movq	(%rdx,%rax), %rax	# defaults[i_10].location, _4
# m_misc.c:323: 	    v = *defaults[i].location;
	.loc 1 323 8
	movl	(%rax), %eax	# *_4, tmp105
	movl	%eax, -12(%rbp)	# tmp105, v
# m_misc.c:324: 	    fprintf (f,"%s\t\t%i\n",defaults[i].name,v);
	.loc 1 324 6
	movl	-16(%rbp), %eax	# i, tmp107
	cltq
	salq	$5, %rax	#, tmp106
	movq	%rax, %rdx	# tmp106, tmp108
	leaq	defaults(%rip), %rax	#, tmp109
	movq	(%rdx,%rax), %rdx	# defaults[i_10].name, _5
	movl	-12(%rbp), %ecx	# v, tmp110
	movq	-8(%rbp), %rax	# f, tmp111
	leaq	.LC55(%rip), %rsi	#, tmp112
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
	jmp	.L28	#
.L27:
# m_misc.c:327: 		     * (char **) (defaults[i].location));
	.loc 1 327 32
	movl	-16(%rbp), %eax	# i, tmp114
	cltq
	salq	$5, %rax	#, tmp113
	movq	%rax, %rdx	# tmp113, tmp115
	leaq	8+defaults(%rip), %rax	#, tmp116
	movq	(%rdx,%rax), %rax	# defaults[i_10].location, _6
# m_misc.c:326: 	    fprintf (f,"%s\t\t\"%s\"\n",defaults[i].name,
	.loc 1 326 6
	movq	(%rax), %rcx	# MEM[(char * *)_6], _7
	movl	-16(%rbp), %eax	# i, tmp118
	cltq
	salq	$5, %rax	#, tmp117
	movq	%rax, %rdx	# tmp117, tmp119
	leaq	defaults(%rip), %rax	#, tmp120
	movq	(%rdx,%rax), %rdx	# defaults[i_10].name, _8
	movq	-8(%rbp), %rax	# f, tmp121
	leaq	.LC56(%rip), %rsi	#, tmp122
	movq	%rax, %rdi	# tmp121,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
.L28:
# m_misc.c:318:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 318 33 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L26:
# m_misc.c:318:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 318 17 discriminator 1
	movl	numdefaults(%rip), %eax	# numdefaults, numdefaults.1_9
	cmpl	%eax, -16(%rbp)	# numdefaults.1_9, i
	jl	.L29	#,
# m_misc.c:331:     fclose (f);
	.loc 1 331 5
	movq	-8(%rbp), %rax	# f, tmp123
	movq	%rax, %rdi	# tmp123,
	call	fclose@PLT	#
	jmp	.L23	#
.L30:
# m_misc.c:316: 	return; // can't write the file, but don't complain
	.loc 1 316 2
	nop	
.L23:
# m_misc.c:332: }
	.loc 1 332 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	M_SaveDefaults, .-M_SaveDefaults
	.section	.rodata
.LC57:
	.string	"-config"
.LC58:
	.string	"\tdefault file: %s\n"
.LC59:
	.string	"r"
.LC60:
	.string	"%79s %[^\n]\n"
.LC61:
	.string	"%x"
.LC62:
	.string	"%i"
	.text
	.globl	M_LoadDefaults
	.type	M_LoadDefaults, @function
M_LoadDefaults:
.LFB10:
	.loc 1 341 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
# m_misc.c:341: {
	.loc 1 341 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp159
	movq	%rax, -8(%rbp)	# tmp159, D.8253
	xorl	%eax, %eax	# tmp159
# m_misc.c:352:     numdefaults = sizeof(defaults)/sizeof(defaults[0]);
	.loc 1 352 17
	movl	$41, numdefaults(%rip)	#, numdefaults
# m_misc.c:353:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 353 11
	movl	$0, -220(%rbp)	#, i
# m_misc.c:353:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 353 5
	jmp	.L32	#
.L33:
# m_misc.c:354: 	*defaults[i].location = defaults[i].defaultvalue;
	.loc 1 354 37
	movl	-220(%rbp), %eax	# i, tmp115
	cltq
	salq	$5, %rax	#, tmp114
	movq	%rax, %rdx	# tmp114, tmp116
	leaq	16+defaults(%rip), %rax	#, tmp117
	movq	(%rdx,%rax), %rcx	# defaults[i_33].defaultvalue, _1
# m_misc.c:354: 	*defaults[i].location = defaults[i].defaultvalue;
	.loc 1 354 14
	movl	-220(%rbp), %eax	# i, tmp119
	cltq
	salq	$5, %rax	#, tmp118
	movq	%rax, %rdx	# tmp118, tmp120
	leaq	8+defaults(%rip), %rax	#, tmp121
	movq	(%rdx,%rax), %rax	# defaults[i_33].location, _2
# m_misc.c:354: 	*defaults[i].location = defaults[i].defaultvalue;
	.loc 1 354 24
	movl	%ecx, %edx	# _1, _3
	movl	%edx, (%rax)	# _3, *_2
# m_misc.c:353:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 353 33 discriminator 3
	addl	$1, -220(%rbp)	#, i
.L32:
# m_misc.c:353:     for (i=0 ; i<numdefaults ; i++)
	.loc 1 353 17 discriminator 1
	movl	numdefaults(%rip), %eax	# numdefaults, numdefaults.2_4
	cmpl	%eax, -220(%rbp)	# numdefaults.2_4, i
	jl	.L33	#,
# m_misc.c:357:     i = M_CheckParm ("-config");
	.loc 1 357 9
	leaq	.LC57(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	M_CheckParm@PLT	#
	movl	%eax, -220(%rbp)	# tmp123, i
# m_misc.c:358:     if (i && i<myargc-1)
	.loc 1 358 8
	cmpl	$0, -220(%rbp)	#, i
	je	.L34	#,
# m_misc.c:358:     if (i && i<myargc-1)
	.loc 1 358 22 discriminator 1
	movl	myargc(%rip), %eax	# myargc, myargc.3_5
	subl	$1, %eax	#, _6
# m_misc.c:358:     if (i && i<myargc-1)
	.loc 1 358 11 discriminator 1
	cmpl	%eax, -220(%rbp)	# _6, i
	jge	.L34	#,
# m_misc.c:360: 	defaultfile = myargv[i+1];
	.loc 1 360 22
	movq	myargv(%rip), %rax	# myargv, myargv.4_7
	movl	-220(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, _8
	addq	$1, %rdx	#, _9
	salq	$3, %rdx	#, _10
	addq	%rdx, %rax	# _10, _11
	movq	(%rax), %rax	# *_11, _12
# m_misc.c:360: 	defaultfile = myargv[i+1];
	.loc 1 360 14
	movq	%rax, defaultfile(%rip)	# _12, defaultfile
# m_misc.c:361: 	printf ("	default file: %s\n",defaultfile);
	.loc 1 361 2
	movq	defaultfile(%rip), %rax	# defaultfile, defaultfile.5_13
	movq	%rax, %rsi	# defaultfile.5_13,
	leaq	.LC58(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	movl	$0, %eax	#,
	call	printf@PLT	#
	jmp	.L35	#
.L34:
# m_misc.c:364: 	defaultfile = basedefault;
	.loc 1 364 14
	leaq	basedefault(%rip), %rax	#, tmp126
	movq	%rax, defaultfile(%rip)	# tmp126, defaultfile
.L35:
# m_misc.c:367:     f = fopen (defaultfile, "r");
	.loc 1 367 9
	movq	defaultfile(%rip), %rax	# defaultfile, defaultfile.6_14
	leaq	.LC59(%rip), %rdx	#, tmp127
	movq	%rdx, %rsi	# tmp127,
	movq	%rax, %rdi	# defaultfile.6_14,
	call	fopen@PLT	#
	movq	%rax, -200(%rbp)	# tmp128, f
# m_misc.c:368:     if (f)
	.loc 1 368 8
	cmpq	$0, -200(%rbp)	#, f
	je	.L50	#,
# m_misc.c:370: 	while (!feof(f))
	.loc 1 370 8
	jmp	.L38	#
.L48:
# m_misc.c:372: 	    isstring = false;
	.loc 1 372 15
	movl	$0, -216(%rbp)	#, isstring
# m_misc.c:373: 	    if (fscanf (f, "%79s %[^\n]\n", def, strparm) == 2)
	.loc 1 373 10
	leaq	-112(%rbp), %rcx	#, tmp129
	leaq	-192(%rbp), %rdx	#, tmp130
	movq	-200(%rbp), %rax	# f, tmp131
	leaq	.LC60(%rip), %rsi	#, tmp132
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	__isoc99_fscanf@PLT	#
# m_misc.c:373: 	    if (fscanf (f, "%79s %[^\n]\n", def, strparm) == 2)
	.loc 1 373 9 discriminator 1
	cmpl	$2, %eax	#, _15
	jne	.L38	#,
# m_misc.c:375: 		if (strparm[0] == '"')
	.loc 1 375 14
	movzbl	-112(%rbp), %eax	# strparm[0], _16
# m_misc.c:375: 		if (strparm[0] == '"')
	.loc 1 375 6
	cmpb	$34, %al	#, _16
	jne	.L39	#,
# m_misc.c:378: 		    isstring = true;
	.loc 1 378 16
	movl	$1, -216(%rbp)	#, isstring
# m_misc.c:379: 		    len = strlen(strparm);
	.loc 1 379 13
	leaq	-112(%rbp), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	strlen@PLT	#
# m_misc.c:379: 		    len = strlen(strparm);
	.loc 1 379 11 discriminator 1
	movl	%eax, -212(%rbp)	# _17, len
# m_misc.c:380: 		    newstring = (char *) malloc(len);
	.loc 1 380 28
	movl	-212(%rbp), %eax	# len, tmp134
	cltq
	movq	%rax, %rdi	# _18,
	call	malloc@PLT	#
	movq	%rax, -208(%rbp)	# tmp135, newstring
# m_misc.c:381: 		    strparm[len-1] = 0;
	.loc 1 381 18
	movl	-212(%rbp), %eax	# len, tmp136
	subl	$1, %eax	#, _19
# m_misc.c:381: 		    strparm[len-1] = 0;
	.loc 1 381 22
	cltq
	movb	$0, -112(%rbp,%rax)	#, strparm[_19]
# m_misc.c:382: 		    strcpy(newstring, strparm+1);
	.loc 1 382 7
	leaq	-112(%rbp), %rax	#, _20
	addq	$1, %rax	#, _20
	movq	-208(%rbp), %rdx	# newstring, tmp138
	movq	%rax, %rsi	# _20,
	movq	%rdx, %rdi	# tmp138,
	call	strcpy@PLT	#
	jmp	.L40	#
.L39:
# m_misc.c:384: 		else if (strparm[0] == '0' && strparm[1] == 'x')
	.loc 1 384 19
	movzbl	-112(%rbp), %eax	# strparm[0], _21
# m_misc.c:384: 		else if (strparm[0] == '0' && strparm[1] == 'x')
	.loc 1 384 11
	cmpb	$48, %al	#, _21
	jne	.L41	#,
# m_misc.c:384: 		else if (strparm[0] == '0' && strparm[1] == 'x')
	.loc 1 384 40 discriminator 1
	movzbl	-111(%rbp), %eax	# strparm[1], _22
# m_misc.c:384: 		else if (strparm[0] == '0' && strparm[1] == 'x')
	.loc 1 384 30 discriminator 1
	cmpb	$120, %al	#, _22
	jne	.L41	#,
# m_misc.c:385: 		    sscanf(strparm+2, "%x", &parm);
	.loc 1 385 7
	leaq	-112(%rbp), %rax	#, _23
	addq	$2, %rax	#, _23
	leaq	-224(%rbp), %rdx	#, tmp139
	leaq	.LC61(%rip), %rcx	#, tmp140
	movq	%rcx, %rsi	# tmp140,
	movq	%rax, %rdi	# _23,
	movl	$0, %eax	#,
	call	__isoc99_sscanf@PLT	#
	jmp	.L40	#
.L41:
# m_misc.c:387: 		    sscanf(strparm, "%i", &parm);
	.loc 1 387 7
	leaq	-224(%rbp), %rdx	#, tmp141
	leaq	-112(%rbp), %rax	#, tmp142
	leaq	.LC62(%rip), %rcx	#, tmp143
	movq	%rcx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp142,
	movl	$0, %eax	#,
	call	__isoc99_sscanf@PLT	#
.L40:
# m_misc.c:388: 		for (i=0 ; i<numdefaults ; i++)
	.loc 1 388 9
	movl	$0, -220(%rbp)	#, i
# m_misc.c:388: 		for (i=0 ; i<numdefaults ; i++)
	.loc 1 388 3
	jmp	.L42	#
.L47:
# m_misc.c:389: 		    if (!strcmp(def, defaults[i].name))
	.loc 1 389 35
	movl	-220(%rbp), %eax	# i, tmp145
	cltq
	salq	$5, %rax	#, tmp144
	movq	%rax, %rdx	# tmp144, tmp146
	leaq	defaults(%rip), %rax	#, tmp147
	movq	(%rdx,%rax), %rdx	# defaults[i_34].name, _24
# m_misc.c:389: 		    if (!strcmp(def, defaults[i].name))
	.loc 1 389 12
	leaq	-192(%rbp), %rax	#, tmp148
	movq	%rdx, %rsi	# _24,
	movq	%rax, %rdi	# tmp148,
	call	strcmp@PLT	#
# m_misc.c:389: 		    if (!strcmp(def, defaults[i].name))
	.loc 1 389 10 discriminator 1
	testl	%eax, %eax	# _25
	jne	.L43	#,
# m_misc.c:391: 			if (!isstring)
	.loc 1 391 7
	cmpl	$0, -216(%rbp)	#, isstring
	jne	.L44	#,
# m_misc.c:392: 			    *defaults[i].location = parm;
	.loc 1 392 20
	movl	-220(%rbp), %eax	# i, tmp150
	cltq
	salq	$5, %rax	#, tmp149
	movq	%rax, %rdx	# tmp149, tmp151
	leaq	8+defaults(%rip), %rax	#, tmp152
	movq	(%rdx,%rax), %rax	# defaults[i_34].location, _26
# m_misc.c:392: 			    *defaults[i].location = parm;
	.loc 1 392 30
	movl	-224(%rbp), %edx	# parm, parm.7_27
	movl	%edx, (%rax)	# parm.7_27, *_26
# m_misc.c:396: 			break;
	.loc 1 396 4
	jmp	.L38	#
.L44:
# m_misc.c:394: 			    *defaults[i].location =
	.loc 1 394 30
	movq	-208(%rbp), %rcx	# newstring, newstring.8_28
# m_misc.c:394: 			    *defaults[i].location =
	.loc 1 394 20
	movl	-220(%rbp), %eax	# i, tmp154
	cltq
	salq	$5, %rax	#, tmp153
	movq	%rax, %rdx	# tmp153, tmp155
	leaq	8+defaults(%rip), %rax	#, tmp156
	movq	(%rdx,%rax), %rax	# defaults[i_34].location, _29
# m_misc.c:394: 			    *defaults[i].location =
	.loc 1 394 30
	movl	%ecx, %edx	# newstring.8_28, _30
	movl	%edx, (%rax)	# _30, *_29
# m_misc.c:396: 			break;
	.loc 1 396 4
	jmp	.L38	#
.L43:
# m_misc.c:388: 		for (i=0 ; i<numdefaults ; i++)
	.loc 1 388 31 discriminator 2
	addl	$1, -220(%rbp)	#, i
.L42:
# m_misc.c:388: 		for (i=0 ; i<numdefaults ; i++)
	.loc 1 388 15 discriminator 1
	movl	numdefaults(%rip), %eax	# numdefaults, numdefaults.9_31
	cmpl	%eax, -220(%rbp)	# numdefaults.9_31, i
	jl	.L47	#,
.L38:
# m_misc.c:370: 	while (!feof(f))
	.loc 1 370 10
	movq	-200(%rbp), %rax	# f, tmp157
	movq	%rax, %rdi	# tmp157,
	call	feof@PLT	#
# m_misc.c:370: 	while (!feof(f))
	.loc 1 370 9 discriminator 1
	testl	%eax, %eax	# _32
	je	.L48	#,
# m_misc.c:401: 	fclose (f);
	.loc 1 401 2
	movq	-200(%rbp), %rax	# f, tmp158
	movq	%rax, %rdi	# tmp158,
	call	fclose@PLT	#
.L50:
# m_misc.c:403: }
	.loc 1 403 1
	nop	
	movq	-8(%rbp), %rax	# D.8253, tmp160
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp160
	je	.L49	#,
	call	__stack_chk_fail@PLT	#
.L49:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	M_LoadDefaults, .-M_LoadDefaults
	.globl	WritePCXfile
	.type	WritePCXfile, @function
WritePCXfile:
.LFB11:
	.loc 1 448 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# filename, filename
	movq	%rsi, -48(%rbp)	# data, data
	movl	%edx, -52(%rbp)	# width, width
	movl	%ecx, -56(%rbp)	# height, height
	movq	%r8, -64(%rbp)	# palette, palette
# m_misc.c:454:     pcx = Z_Malloc (width*height*2+1000, PU_STATIC, NULL);
	.loc 1 454 26
	movl	-52(%rbp), %eax	# width, tmp110
	imull	-56(%rbp), %eax	# height, _1
# m_misc.c:454:     pcx = Z_Malloc (width*height*2+1000, PU_STATIC, NULL);
	.loc 1 454 35
	addl	$500, %eax	#, _2
# m_misc.c:454:     pcx = Z_Malloc (width*height*2+1000, PU_STATIC, NULL);
	.loc 1 454 11
	addl	%eax, %eax	# _3
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# _3,
	call	Z_Malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp111, pcx
# m_misc.c:456:     pcx->manufacturer = 0x0a;		// PCX id
	.loc 1 456 23
	movq	-8(%rbp), %rax	# pcx, tmp112
	movb	$10, (%rax)	#, pcx_44->manufacturer
# m_misc.c:457:     pcx->version = 5;			// 256 color
	.loc 1 457 18
	movq	-8(%rbp), %rax	# pcx, tmp113
	movb	$5, 1(%rax)	#, pcx_44->version
# m_misc.c:458:     pcx->encoding = 1;			// uncompressed
	.loc 1 458 19
	movq	-8(%rbp), %rax	# pcx, tmp114
	movb	$1, 2(%rax)	#, pcx_44->encoding
# m_misc.c:459:     pcx->bits_per_pixel = 8;		// 256 color
	.loc 1 459 25
	movq	-8(%rbp), %rax	# pcx, tmp115
	movb	$8, 3(%rax)	#, pcx_44->bits_per_pixel
# m_misc.c:460:     pcx->xmin = 0;
	.loc 1 460 15
	movq	-8(%rbp), %rax	# pcx, tmp116
	movw	$0, 4(%rax)	#, pcx_44->xmin
# m_misc.c:461:     pcx->ymin = 0;
	.loc 1 461 15
	movq	-8(%rbp), %rax	# pcx, tmp117
	movw	$0, 6(%rax)	#, pcx_44->ymin
# m_misc.c:462:     pcx->xmax = SHORT(width-1);
	.loc 1 462 17
	movl	-52(%rbp), %eax	# width, tmp118
	leal	-1(%rax), %edx	#, _5
# m_misc.c:462:     pcx->xmax = SHORT(width-1);
	.loc 1 462 15
	movq	-8(%rbp), %rax	# pcx, tmp119
	movw	%dx, 8(%rax)	# _5, pcx_44->xmax
# m_misc.c:463:     pcx->ymax = SHORT(height-1);
	.loc 1 463 17
	movl	-56(%rbp), %eax	# height, tmp120
	leal	-1(%rax), %edx	#, _7
# m_misc.c:463:     pcx->ymax = SHORT(height-1);
	.loc 1 463 15
	movq	-8(%rbp), %rax	# pcx, tmp121
	movw	%dx, 10(%rax)	# _7, pcx_44->ymax
# m_misc.c:464:     pcx->hres = SHORT(width);
	.loc 1 464 15
	movl	-52(%rbp), %eax	# width, tmp122
	movl	%eax, %edx	# tmp122, _8
	movq	-8(%rbp), %rax	# pcx, tmp123
	movw	%dx, 12(%rax)	# _8, pcx_44->hres
# m_misc.c:465:     pcx->vres = SHORT(height);
	.loc 1 465 15
	movl	-56(%rbp), %eax	# height, tmp124
	movl	%eax, %edx	# tmp124, _9
	movq	-8(%rbp), %rax	# pcx, tmp125
	movw	%dx, 14(%rax)	# _9, pcx_44->vres
# m_misc.c:466:     memset (pcx->palette,0,sizeof(pcx->palette));
	.loc 1 466 16
	movq	-8(%rbp), %rax	# pcx, tmp126
	addq	$16, %rax	#, _10
# m_misc.c:466:     memset (pcx->palette,0,sizeof(pcx->palette));
	.loc 1 466 5
	movl	$48, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _10,
	call	memset@PLT	#
# m_misc.c:467:     pcx->color_planes = 1;		// chunky image
	.loc 1 467 23
	movq	-8(%rbp), %rax	# pcx, tmp127
	movb	$1, 65(%rax)	#, pcx_44->color_planes
# m_misc.c:468:     pcx->bytes_per_line = SHORT(width);
	.loc 1 468 25
	movl	-52(%rbp), %eax	# width, tmp128
	movl	%eax, %edx	# tmp128, _11
	movq	-8(%rbp), %rax	# pcx, tmp129
	movw	%dx, 66(%rax)	# _11, pcx_44->bytes_per_line
# m_misc.c:469:     pcx->palette_type = SHORT(2);	// not a grey scale
	.loc 1 469 23
	movq	-8(%rbp), %rax	# pcx, tmp130
	movw	$2, 68(%rax)	#, pcx_44->palette_type
# m_misc.c:470:     memset (pcx->filler,0,sizeof(pcx->filler));
	.loc 1 470 16
	movq	-8(%rbp), %rax	# pcx, tmp131
	addq	$70, %rax	#, _12
# m_misc.c:470:     memset (pcx->filler,0,sizeof(pcx->filler));
	.loc 1 470 5
	movl	$58, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _12,
	call	memset@PLT	#
# m_misc.c:474:     pack = &pcx->data;
	.loc 1 474 10
	movq	-8(%rbp), %rax	# pcx, tmp135
	subq	$-128, %rax	#, tmp134
	movq	%rax, -16(%rbp)	# tmp134, pack
# m_misc.c:476:     for (i=0 ; i<width*height ; i++)
	.loc 1 476 11
	movl	$0, -24(%rbp)	#, i
# m_misc.c:476:     for (i=0 ; i<width*height ; i++)
	.loc 1 476 5
	jmp	.L52	#
.L55:
# m_misc.c:478: 	if ( (*data & 0xc0) != 0xc0)
	.loc 1 478 8
	movq	-48(%rbp), %rax	# data, tmp136
	movzbl	(%rax), %eax	# *data_30, _13
# m_misc.c:478: 	if ( (*data & 0xc0) != 0xc0)
	.loc 1 478 14
	movzbl	%al, %eax	# _13, _14
	andl	$192, %eax	#, _15
# m_misc.c:478: 	if ( (*data & 0xc0) != 0xc0)
	.loc 1 478 5
	cmpl	$192, %eax	#, _15
	je	.L53	#,
# m_misc.c:479: 	    *pack++ = *data++;
	.loc 1 479 21
	movq	-48(%rbp), %rdx	# data, data.10_16
	leaq	1(%rdx), %rax	#, tmp137
	movq	%rax, -48(%rbp)	# tmp137, data
# m_misc.c:479: 	    *pack++ = *data++;
	.loc 1 479 11
	movq	-16(%rbp), %rax	# pack, pack.11_17
	leaq	1(%rax), %rcx	#, tmp138
	movq	%rcx, -16(%rbp)	# tmp138, pack
# m_misc.c:479: 	    *pack++ = *data++;
	.loc 1 479 16
	movzbl	(%rdx), %edx	# *data.10_16, _18
# m_misc.c:479: 	    *pack++ = *data++;
	.loc 1 479 14
	movb	%dl, (%rax)	# _18, *pack.11_17
	jmp	.L54	#
.L53:
# m_misc.c:482: 	    *pack++ = 0xc1;
	.loc 1 482 11
	movq	-16(%rbp), %rax	# pack, pack.12_19
	leaq	1(%rax), %rdx	#, tmp139
	movq	%rdx, -16(%rbp)	# tmp139, pack
# m_misc.c:482: 	    *pack++ = 0xc1;
	.loc 1 482 14
	movb	$-63, (%rax)	#, *pack.12_19
# m_misc.c:483: 	    *pack++ = *data++;
	.loc 1 483 21
	movq	-48(%rbp), %rdx	# data, data.13_20
	leaq	1(%rdx), %rax	#, tmp140
	movq	%rax, -48(%rbp)	# tmp140, data
# m_misc.c:483: 	    *pack++ = *data++;
	.loc 1 483 11
	movq	-16(%rbp), %rax	# pack, pack.14_21
	leaq	1(%rax), %rcx	#, tmp141
	movq	%rcx, -16(%rbp)	# tmp141, pack
# m_misc.c:483: 	    *pack++ = *data++;
	.loc 1 483 16
	movzbl	(%rdx), %edx	# *data.13_20, _22
# m_misc.c:483: 	    *pack++ = *data++;
	.loc 1 483 14
	movb	%dl, (%rax)	# _22, *pack.14_21
.L54:
# m_misc.c:476:     for (i=0 ; i<width*height ; i++)
	.loc 1 476 34 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L52:
# m_misc.c:476:     for (i=0 ; i<width*height ; i++)
	.loc 1 476 23 discriminator 1
	movl	-52(%rbp), %eax	# width, tmp142
	imull	-56(%rbp), %eax	# height, _23
# m_misc.c:476:     for (i=0 ; i<width*height ; i++)
	.loc 1 476 17 discriminator 1
	cmpl	%eax, -24(%rbp)	# _23, i
	jl	.L55	#,
# m_misc.c:488:     *pack++ = 0x0c;	// palette ID byte
	.loc 1 488 10
	movq	-16(%rbp), %rax	# pack, pack.15_24
	leaq	1(%rax), %rdx	#, tmp143
	movq	%rdx, -16(%rbp)	# tmp143, pack
# m_misc.c:488:     *pack++ = 0x0c;	// palette ID byte
	.loc 1 488 13
	movb	$12, (%rax)	#, *pack.15_24
# m_misc.c:489:     for (i=0 ; i<768 ; i++)
	.loc 1 489 11
	movl	$0, -24(%rbp)	#, i
# m_misc.c:489:     for (i=0 ; i<768 ; i++)
	.loc 1 489 5
	jmp	.L56	#
.L57:
# m_misc.c:490: 	*pack++ = *palette++;
	.loc 1 490 20
	movq	-64(%rbp), %rdx	# palette, palette.16_25
	leaq	1(%rdx), %rax	#, tmp144
	movq	%rax, -64(%rbp)	# tmp144, palette
# m_misc.c:490: 	*pack++ = *palette++;
	.loc 1 490 7
	movq	-16(%rbp), %rax	# pack, pack.17_26
	leaq	1(%rax), %rcx	#, tmp145
	movq	%rcx, -16(%rbp)	# tmp145, pack
# m_misc.c:490: 	*pack++ = *palette++;
	.loc 1 490 12
	movzbl	(%rdx), %edx	# *palette.16_25, _27
# m_misc.c:490: 	*pack++ = *palette++;
	.loc 1 490 10
	movb	%dl, (%rax)	# _27, *pack.17_26
# m_misc.c:489:     for (i=0 ; i<768 ; i++)
	.loc 1 489 25 discriminator 3
	addl	$1, -24(%rbp)	#, i
.L56:
# m_misc.c:489:     for (i=0 ; i<768 ; i++)
	.loc 1 489 17 discriminator 1
	cmpl	$767, -24(%rbp)	#, i
	jle	.L57	#,
# m_misc.c:493:     length = pack - (byte *)pcx;
	.loc 1 493 19
	movq	-16(%rbp), %rax	# pack, tmp146
	subq	-8(%rbp), %rax	# pcx, _28
# m_misc.c:493:     length = pack - (byte *)pcx;
	.loc 1 493 12
	movl	%eax, -20(%rbp)	# _28, length
# m_misc.c:494:     M_WriteFile (filename, pcx, length);
	.loc 1 494 5
	movl	-20(%rbp), %edx	# length, tmp147
	movq	-8(%rbp), %rcx	# pcx, tmp148
	movq	-40(%rbp), %rax	# filename, tmp149
	movq	%rcx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	M_WriteFile	#
# m_misc.c:496:     Z_Free (pcx);
	.loc 1 496 5
	movq	-8(%rbp), %rax	# pcx, tmp150
	movq	%rax, %rdi	# tmp150,
	call	Z_Free@PLT	#
# m_misc.c:497: }
	.loc 1 497 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	WritePCXfile, .-WritePCXfile
	.section	.rodata
	.align 8
.LC63:
	.string	"M_ScreenShot: Couldn't create a PCX"
.LC64:
	.string	"PLAYPAL"
.LC65:
	.string	"screen shot"
	.text
	.globl	M_ScreenShot
	.type	M_ScreenShot, @function
M_ScreenShot:
.LFB12:
	.loc 1 504 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# m_misc.c:504: {
	.loc 1 504 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, -8(%rbp)	# tmp121, D.8260
	xorl	%eax, %eax	# tmp121
# m_misc.c:510:     linear = screens[2];
	.loc 1 510 12
	movq	16+screens(%rip), %rax	# screens[2], tmp93
	movq	%rax, -32(%rbp)	# tmp93, linear
# m_misc.c:511:     I_ReadScreen (linear);
	.loc 1 511 5
	movq	-32(%rbp), %rax	# linear, tmp94
	movq	%rax, %rdi	# tmp94,
	call	I_ReadScreen@PLT	#
# m_misc.c:514:     strcpy(lbmname,"DOOM00.pcx");
	.loc 1 514 5
	leaq	-20(%rbp), %rax	#, tmp95
	movabsq	$8083451365190225732, %rsi	#, tmp124
	movq	%rsi, (%rax)	# tmp124, MEM <char[1:11]> [(void *)&lbmname]
	movl	$7889776, 7(%rax)	#, MEM <char[1:11]> [(void *)&lbmname]
# m_misc.c:516:     for (i=0 ; i<=99 ; i++)
	.loc 1 516 11
	movl	$0, -36(%rbp)	#, i
# m_misc.c:516:     for (i=0 ; i<=99 ; i++)
	.loc 1 516 5
	jmp	.L59	#
.L62:
# m_misc.c:518: 	lbmname[4] = i/10 + '0';
	.loc 1 518 16
	movl	-36(%rbp), %eax	# i, tmp96
	movslq	%eax, %rdx	# tmp96, tmp97
	imulq	$1717986919, %rdx, %rdx	#, tmp97, tmp98
	shrq	$32, %rdx	#, tmp99
	sarl	$2, %edx	#, tmp100
	sarl	$31, %eax	#, tmp101
	subl	%eax, %edx	# tmp101, _1
# m_misc.c:518: 	lbmname[4] = i/10 + '0';
	.loc 1 518 20
	movl	%edx, %eax	# _1, _2
	addl	$48, %eax	#, _3
# m_misc.c:518: 	lbmname[4] = i/10 + '0';
	.loc 1 518 13
	movb	%al, -16(%rbp)	# _4, lbmname[4]
# m_misc.c:519: 	lbmname[5] = i%10 + '0';
	.loc 1 519 16
	movl	-36(%rbp), %edx	# i, tmp102
	movslq	%edx, %rax	# tmp102, tmp103
	imulq	$1717986919, %rax, %rax	#, tmp103, tmp104
	shrq	$32, %rax	#, tmp105
	movl	%eax, %ecx	# tmp105, tmp106
	sarl	$2, %ecx	#, tmp106
	movl	%edx, %eax	# tmp102, tmp107
	sarl	$31, %eax	#, tmp107
	subl	%eax, %ecx	# tmp107, _5
	movl	%ecx, %eax	# _5, tmp108
	sall	$2, %eax	#, tmp108
	addl	%ecx, %eax	# _5, tmp108
	addl	%eax, %eax	# tmp109
	movl	%edx, %ecx	# tmp102, tmp102
	subl	%eax, %ecx	# tmp108, tmp102
# m_misc.c:519: 	lbmname[5] = i%10 + '0';
	.loc 1 519 20
	movl	%ecx, %eax	# _5, _6
	addl	$48, %eax	#, _7
# m_misc.c:519: 	lbmname[5] = i%10 + '0';
	.loc 1 519 13
	movb	%al, -15(%rbp)	# _8, lbmname[5]
# m_misc.c:520: 	if (access(lbmname,0) == -1)
	.loc 1 520 6
	leaq	-20(%rbp), %rax	#, tmp110
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	access@PLT	#
# m_misc.c:520: 	if (access(lbmname,0) == -1)
	.loc 1 520 5 discriminator 1
	cmpl	$-1, %eax	#, _9
	je	.L65	#,
# m_misc.c:516:     for (i=0 ; i<=99 ; i++)
	.loc 1 516 25 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L59:
# m_misc.c:516:     for (i=0 ; i<=99 ; i++)
	.loc 1 516 17 discriminator 1
	cmpl	$99, -36(%rbp)	#, i
	jle	.L62	#,
	jmp	.L61	#
.L65:
# m_misc.c:521: 	    break;	// file doesn't exist
	.loc 1 521 6
	nop	
.L61:
# m_misc.c:523:     if (i==100)
	.loc 1 523 8
	cmpl	$100, -36(%rbp)	#, i
	jne	.L63	#,
# m_misc.c:524: 	I_Error ("M_ScreenShot: Couldn't create a PCX");
	.loc 1 524 2
	leaq	.LC63(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L63:
# m_misc.c:529: 		  W_CacheLumpName ("PLAYPAL",PU_CACHE));
	.loc 1 529 5
	movl	$101, %esi	#,
	leaq	.LC64(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	W_CacheLumpName@PLT	#
	movq	%rax, %rdx	#, _10
# m_misc.c:527:     WritePCXfile (lbmname, linear,
	.loc 1 527 5
	movq	-32(%rbp), %rsi	# linear, tmp113
	leaq	-20(%rbp), %rax	#, tmp114
	movq	%rdx, %r8	# _10,
	movl	$200, %ecx	#,
	movl	$320, %edx	#,
	movq	%rax, %rdi	# tmp114,
	call	WritePCXfile	#
# m_misc.c:531:     players[consoleplayer].message = "screen shot";
	.loc 1 531 27
	movl	consoleplayer(%rip), %eax	# consoleplayer, consoleplayer.18_11
# m_misc.c:531:     players[consoleplayer].message = "screen shot";
	.loc 1 531 36
	movslq	%eax, %rdx	# consoleplayer.18_11, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	salq	$2, %rax	#, tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	salq	$6, %rax	#, tmp118
	movq	%rax, %rcx	# tmp117, tmp116
	leaq	224+players(%rip), %rax	#, tmp119
	leaq	.LC65(%rip), %rdx	#, tmp120
	movq	%rdx, (%rcx,%rax)	# tmp120, players[consoleplayer.18_11].message
# m_misc.c:532: }
	.loc 1 532 1
	nop	
	movq	-8(%rbp), %rax	# D.8260, tmp122
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	je	.L64	#,
	call	__stack_chk_fail@PLT	#
.L64:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	M_ScreenShot, .-M_ScreenShot
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/struct_stat.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 9 "doomdef.h"
	.file 10 "m_argv.h"
	.file 11 "doomtype.h"
	.file 12 "d_ticcmd.h"
	.file 13 "m_fixed.h"
	.file 14 "d_think.h"
	.file 15 "tables.h"
	.file 16 "doomdata.h"
	.file 17 "info.h"
	.file 18 "p_mobj.h"
	.file 19 "r_defs.h"
	.file 20 "d_player.h"
	.file 21 "p_pspr.h"
	.file 22 "v_video.h"
	.file 23 "doomstat.h"
	.file 24 "w_wad.h"
	.file 25 "/usr/include/unistd.h"
	.file 26 "i_video.h"
	.file 27 "z_zone.h"
	.file 28 "/usr/include/string.h"
	.file 29 "/usr/include/stdio.h"
	.file 30 "/usr/include/stdlib.h"
	.file 31 "/usr/include/x86_64-linux-gnu/sys/stat.h"
	.file 32 "i_system.h"
	.file 33 "/usr/include/fcntl.h"
	.file 34 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3b96
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x28
	.long	.LASF1645
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
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.long	0x2e
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x20
	.long	0x4a
	.uleb128 0x12
	.long	.LASF1621
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x29
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x91
	.byte	0x19
	.long	0x43
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x92
	.byte	0x19
	.long	0x79
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0x93
	.byte	0x19
	.long	0x79
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x94
	.byte	0x19
	.long	0x43
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x96
	.byte	0x1a
	.long	0x79
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x97
	.byte	0x1b
	.long	0x43
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x98
	.byte	0x19
	.long	0x95
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x99
	.byte	0x1b
	.long	0x95
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0xa0
	.byte	0x1a
	.long	0x95
	.uleb128 0x2a
	.byte	0x8
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0xaf
	.byte	0x1d
	.long	0x95
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0xb4
	.byte	0x1c
	.long	0x95
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0xc2
	.byte	0x1b
	.long	0x95
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0xc5
	.byte	0x21
	.long	0x95
	.uleb128 0x8
	.long	0x4a
	.uleb128 0x13
	.long	.LASF25
	.byte	0x10
	.byte	0x3
	.byte	0xb
	.byte	0x8
	.long	0x167
	.uleb128 0x3
	.long	.LASF23
	.byte	0x3
	.byte	0x10
	.byte	0xc
	.long	0xfc
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x3
	.byte	0x15
	.byte	0x15
	.long	0x12e
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF26
	.byte	0x90
	.byte	0x4
	.byte	0x1a
	.byte	0x8
	.long	0x238
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x1f
	.byte	0xd
	.long	0x9c
	.byte	0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x4
	.byte	0x24
	.byte	0xd
	.long	0xc0
	.byte	0x8
	.uleb128 0x3
	.long	.LASF29
	.byte	0x4
	.byte	0x2c
	.byte	0xf
	.long	0xd8
	.byte	0x10
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x2d
	.byte	0xe
	.long	0xcc
	.byte	0x18
	.uleb128 0x3
	.long	.LASF31
	.byte	0x4
	.byte	0x2f
	.byte	0xd
	.long	0xa8
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4
	.byte	0x30
	.byte	0xd
	.long	0xb4
	.byte	0x20
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4
	.byte	0x32
	.byte	0x9
	.long	0x8e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0x34
	.byte	0xd
	.long	0x9c
	.byte	0x28
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4
	.byte	0x39
	.byte	0xd
	.long	0xe4
	.byte	0x30
	.uleb128 0x3
	.long	.LASF36
	.byte	0x4
	.byte	0x3d
	.byte	0x11
	.long	0x10a
	.byte	0x38
	.uleb128 0x3
	.long	.LASF37
	.byte	0x4
	.byte	0x3f
	.byte	0x10
	.long	0x116
	.byte	0x40
	.uleb128 0x3
	.long	.LASF38
	.byte	0x4
	.byte	0x4a
	.byte	0x15
	.long	0x13f
	.byte	0x48
	.uleb128 0x3
	.long	.LASF39
	.byte	0x4
	.byte	0x4b
	.byte	0x15
	.long	0x13f
	.byte	0x58
	.uleb128 0x3
	.long	.LASF40
	.byte	0x4
	.byte	0x4c
	.byte	0x15
	.long	0x13f
	.byte	0x68
	.uleb128 0x3
	.long	.LASF41
	.byte	0x4
	.byte	0x59
	.byte	0x17
	.long	0x238
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0x12e
	.long	0x248
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.byte	0x6c
	.byte	0x13
	.long	0x122
	.uleb128 0x6
	.long	.LASF43
	.byte	0x6
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF44
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF45
	.uleb128 0x8
	.long	0x273
	.uleb128 0x2b
	.uleb128 0x8
	.long	0x13a
	.uleb128 0x8
	.long	0x51
	.uleb128 0x21
	.long	0x279
	.uleb128 0x13
	.long	.LASF46
	.byte	0xd8
	.byte	0x7
	.byte	0x31
	.byte	0x8
	.long	0x40a
	.uleb128 0x3
	.long	.LASF47
	.byte	0x7
	.byte	0x33
	.byte	0x7
	.long	0x8e
	.byte	0
	.uleb128 0x3
	.long	.LASF48
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.long	0x13a
	.byte	0x8
	.uleb128 0x3
	.long	.LASF49
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x13a
	.byte	0x10
	.uleb128 0x3
	.long	.LASF50
	.byte	0x7
	.byte	0x38
	.byte	0x9
	.long	0x13a
	.byte	0x18
	.uleb128 0x3
	.long	.LASF51
	.byte	0x7
	.byte	0x39
	.byte	0x9
	.long	0x13a
	.byte	0x20
	.uleb128 0x3
	.long	.LASF52
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.long	0x13a
	.byte	0x28
	.uleb128 0x3
	.long	.LASF53
	.byte	0x7
	.byte	0x3b
	.byte	0x9
	.long	0x13a
	.byte	0x30
	.uleb128 0x3
	.long	.LASF54
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.long	0x13a
	.byte	0x38
	.uleb128 0x3
	.long	.LASF55
	.byte	0x7
	.byte	0x3d
	.byte	0x9
	.long	0x13a
	.byte	0x40
	.uleb128 0x3
	.long	.LASF56
	.byte	0x7
	.byte	0x40
	.byte	0x9
	.long	0x13a
	.byte	0x48
	.uleb128 0x3
	.long	.LASF57
	.byte	0x7
	.byte	0x41
	.byte	0x9
	.long	0x13a
	.byte	0x50
	.uleb128 0x3
	.long	.LASF58
	.byte	0x7
	.byte	0x42
	.byte	0x9
	.long	0x13a
	.byte	0x58
	.uleb128 0x3
	.long	.LASF59
	.byte	0x7
	.byte	0x44
	.byte	0x16
	.long	0x423
	.byte	0x60
	.uleb128 0x3
	.long	.LASF60
	.byte	0x7
	.byte	0x46
	.byte	0x14
	.long	0x428
	.byte	0x68
	.uleb128 0x3
	.long	.LASF61
	.byte	0x7
	.byte	0x48
	.byte	0x7
	.long	0x8e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF62
	.byte	0x7
	.byte	0x49
	.byte	0x7
	.long	0x8e
	.byte	0x74
	.uleb128 0x3
	.long	.LASF63
	.byte	0x7
	.byte	0x4a
	.byte	0xb
	.long	0xe4
	.byte	0x78
	.uleb128 0x3
	.long	.LASF64
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.long	0x72
	.byte	0x80
	.uleb128 0x3
	.long	.LASF65
	.byte	0x7
	.byte	0x4e
	.byte	0xf
	.long	0x80
	.byte	0x82
	.uleb128 0x3
	.long	.LASF66
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.long	0x42d
	.byte	0x83
	.uleb128 0x3
	.long	.LASF67
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.long	0x43d
	.byte	0x88
	.uleb128 0x3
	.long	.LASF68
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.long	0xf0
	.byte	0x90
	.uleb128 0x3
	.long	.LASF69
	.byte	0x7
	.byte	0x5b
	.byte	0x17
	.long	0x447
	.byte	0x98
	.uleb128 0x3
	.long	.LASF70
	.byte	0x7
	.byte	0x5c
	.byte	0x19
	.long	0x451
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF71
	.byte	0x7
	.byte	0x5d
	.byte	0x14
	.long	0x428
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF72
	.byte	0x7
	.byte	0x5e
	.byte	0x9
	.long	0x108
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF73
	.byte	0x7
	.byte	0x5f
	.byte	0xa
	.long	0x254
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF74
	.byte	0x7
	.byte	0x60
	.byte	0x7
	.long	0x8e
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF75
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.long	0x456
	.byte	0xc4
	.byte	0
	.uleb128 0x6
	.long	.LASF76
	.byte	0x8
	.byte	0x7
	.byte	0x19
	.long	0x283
	.uleb128 0x2c
	.long	.LASF1646
	.byte	0x7
	.byte	0x2b
	.byte	0xe
	.uleb128 0x1d
	.long	.LASF77
	.uleb128 0x8
	.long	0x41e
	.uleb128 0x8
	.long	0x283
	.uleb128 0x9
	.long	0x4a
	.long	0x43d
	.uleb128 0xa
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x416
	.uleb128 0x1d
	.long	.LASF78
	.uleb128 0x8
	.long	0x442
	.uleb128 0x1d
	.long	.LASF79
	.uleb128 0x8
	.long	0x44c
	.uleb128 0x9
	.long	0x4a
	.long	0x466
	.uleb128 0xa
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0x40a
	.uleb128 0x21
	.long	0x466
	.uleb128 0xd
	.long	0x79
	.byte	0x9
	.byte	0xa3
	.byte	0x1
	.long	0x4a7
	.uleb128 0x2
	.long	.LASF80
	.byte	0
	.uleb128 0x2
	.long	.LASF81
	.byte	0x1
	.uleb128 0x2
	.long	.LASF82
	.byte	0x2
	.uleb128 0x2
	.long	.LASF83
	.byte	0x3
	.uleb128 0x2
	.long	.LASF84
	.byte	0x4
	.uleb128 0x2
	.long	.LASF85
	.byte	0x5
	.uleb128 0x2
	.long	.LASF86
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	0x79
	.byte	0x9
	.byte	0xb5
	.byte	0x1
	.long	0x4f6
	.uleb128 0x2
	.long	.LASF87
	.byte	0
	.uleb128 0x2
	.long	.LASF88
	.byte	0x1
	.uleb128 0x2
	.long	.LASF89
	.byte	0x2
	.uleb128 0x2
	.long	.LASF90
	.byte	0x3
	.uleb128 0x2
	.long	.LASF91
	.byte	0x4
	.uleb128 0x2
	.long	.LASF92
	.byte	0x5
	.uleb128 0x2
	.long	.LASF93
	.byte	0x6
	.uleb128 0x2
	.long	.LASF94
	.byte	0x7
	.uleb128 0x2
	.long	.LASF95
	.byte	0x8
	.uleb128 0x2
	.long	.LASF96
	.byte	0x9
	.uleb128 0x2
	.long	.LASF97
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.long	.LASF98
	.byte	0x9
	.byte	0xc5
	.byte	0x3
	.long	0x4a7
	.uleb128 0xd
	.long	0x79
	.byte	0x9
	.byte	0xca
	.byte	0x1
	.long	0x533
	.uleb128 0x2
	.long	.LASF99
	.byte	0
	.uleb128 0x2
	.long	.LASF100
	.byte	0x1
	.uleb128 0x2
	.long	.LASF101
	.byte	0x2
	.uleb128 0x2
	.long	.LASF102
	.byte	0x3
	.uleb128 0x2
	.long	.LASF103
	.byte	0x4
	.uleb128 0x2
	.long	.LASF104
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x79
	.byte	0x9
	.byte	0xd7
	.byte	0x1
	.long	0x56a
	.uleb128 0x2
	.long	.LASF105
	.byte	0
	.uleb128 0x2
	.long	.LASF106
	.byte	0x1
	.uleb128 0x2
	.long	.LASF107
	.byte	0x2
	.uleb128 0x2
	.long	.LASF108
	.byte	0x3
	.uleb128 0x2
	.long	.LASF109
	.byte	0x4
	.uleb128 0x2
	.long	.LASF110
	.byte	0x5
	.uleb128 0x2
	.long	.LASF111
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF112
	.byte	0xa
	.byte	0x1d
	.byte	0xd
	.long	0x8e
	.uleb128 0x7
	.long	.LASF113
	.byte	0xa
	.byte	0x1e
	.byte	0x10
	.long	0x274
	.uleb128 0xd
	.long	0x79
	.byte	0xb
	.byte	0x22
	.byte	0xe
	.long	0x59b
	.uleb128 0x2
	.long	.LASF114
	.byte	0
	.uleb128 0x2
	.long	.LASF115
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF116
	.byte	0xb
	.byte	0x22
	.byte	0x1c
	.long	0x582
	.uleb128 0x6
	.long	.LASF117
	.byte	0xb
	.byte	0x24
	.byte	0x17
	.long	0x6b
	.uleb128 0x14
	.byte	0x8
	.byte	0xc
	.byte	0x24
	.long	0x60a
	.uleb128 0x3
	.long	.LASF118
	.byte	0xc
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF119
	.byte	0xc
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF120
	.byte	0xc
	.byte	0x28
	.byte	0xb
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF121
	.byte	0xc
	.byte	0x29
	.byte	0xb
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF122
	.byte	0xc
	.byte	0x2a
	.byte	0xa
	.long	0x5a7
	.byte	0x6
	.uleb128 0x3
	.long	.LASF123
	.byte	0xc
	.byte	0x2b
	.byte	0xa
	.long	0x5a7
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF124
	.byte	0xc
	.byte	0x2c
	.byte	0x3
	.long	0x5b3
	.uleb128 0x6
	.long	.LASF125
	.byte	0xd
	.byte	0x26
	.byte	0xd
	.long	0x8e
	.uleb128 0x6
	.long	.LASF126
	.byte	0xe
	.byte	0x29
	.byte	0x11
	.long	0x62e
	.uleb128 0x8
	.long	0x633
	.uleb128 0x2d
	.long	0x63a
	.uleb128 0x15
	.byte	0
	.uleb128 0x6
	.long	.LASF127
	.byte	0xe
	.byte	0x2a
	.byte	0x11
	.long	0x646
	.uleb128 0x8
	.long	0x64b
	.uleb128 0x22
	.long	0x656
	.uleb128 0x5
	.long	0x108
	.byte	0
	.uleb128 0x6
	.long	.LASF128
	.byte	0xe
	.byte	0x2b
	.byte	0x11
	.long	0x662
	.uleb128 0x8
	.long	0x667
	.uleb128 0x22
	.long	0x677
	.uleb128 0x5
	.long	0x108
	.uleb128 0x5
	.long	0x108
	.byte	0
	.uleb128 0x2e
	.byte	0x8
	.byte	0xe
	.byte	0x2d
	.byte	0x9
	.long	0x6a1
	.uleb128 0x23
	.long	.LASF129
	.byte	0x2f
	.long	0x63a
	.uleb128 0x2f
	.string	"acv"
	.byte	0xe
	.byte	0x30
	.byte	0xd
	.long	0x622
	.uleb128 0x23
	.long	.LASF130
	.byte	0x31
	.long	0x656
	.byte	0
	.uleb128 0x6
	.long	.LASF131
	.byte	0xe
	.byte	0x33
	.byte	0x3
	.long	0x677
	.uleb128 0x6
	.long	.LASF132
	.byte	0xe
	.byte	0x3c
	.byte	0x14
	.long	0x6a1
	.uleb128 0x13
	.long	.LASF133
	.byte	0x18
	.byte	0xe
	.byte	0x40
	.byte	0x10
	.long	0x6ee
	.uleb128 0x3
	.long	.LASF134
	.byte	0xe
	.byte	0x42
	.byte	0x17
	.long	0x6ee
	.byte	0
	.uleb128 0x3
	.long	.LASF135
	.byte	0xe
	.byte	0x43
	.byte	0x17
	.long	0x6ee
	.byte	0x8
	.uleb128 0x3
	.long	.LASF136
	.byte	0xe
	.byte	0x44
	.byte	0xe
	.long	0x6ad
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x6b9
	.uleb128 0x6
	.long	.LASF137
	.byte	0xe
	.byte	0x46
	.byte	0x3
	.long	0x6b9
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF138
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.long	.LASF139
	.uleb128 0x6
	.long	.LASF140
	.byte	0xf
	.byte	0x4e
	.byte	0x12
	.long	0x79
	.uleb128 0x9
	.long	0x87
	.long	0x729
	.uleb128 0xa
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0xa
	.byte	0x10
	.byte	0xcb
	.long	0x76f
	.uleb128 0xb
	.string	"x"
	.byte	0x10
	.byte	0xcd
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0xb
	.string	"y"
	.byte	0x10
	.byte	0xce
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF141
	.byte	0x10
	.byte	0xcf
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x3
	.long	.LASF142
	.byte	0x10
	.byte	0xd0
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x3
	.long	.LASF143
	.byte	0x10
	.byte	0xd1
	.byte	0xc
	.long	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF144
	.byte	0x10
	.byte	0xd2
	.byte	0x3
	.long	0x729
	.uleb128 0xd
	.long	0x79
	.byte	0x11
	.byte	0x1f
	.byte	0x1
	.long	0xaca
	.uleb128 0x2
	.long	.LASF145
	.byte	0
	.uleb128 0x2
	.long	.LASF146
	.byte	0x1
	.uleb128 0x2
	.long	.LASF147
	.byte	0x2
	.uleb128 0x2
	.long	.LASF148
	.byte	0x3
	.uleb128 0x2
	.long	.LASF149
	.byte	0x4
	.uleb128 0x2
	.long	.LASF150
	.byte	0x5
	.uleb128 0x2
	.long	.LASF151
	.byte	0x6
	.uleb128 0x2
	.long	.LASF152
	.byte	0x7
	.uleb128 0x2
	.long	.LASF153
	.byte	0x8
	.uleb128 0x2
	.long	.LASF154
	.byte	0x9
	.uleb128 0x2
	.long	.LASF155
	.byte	0xa
	.uleb128 0x2
	.long	.LASF156
	.byte	0xb
	.uleb128 0x2
	.long	.LASF157
	.byte	0xc
	.uleb128 0x2
	.long	.LASF158
	.byte	0xd
	.uleb128 0x2
	.long	.LASF159
	.byte	0xe
	.uleb128 0x2
	.long	.LASF160
	.byte	0xf
	.uleb128 0x2
	.long	.LASF161
	.byte	0x10
	.uleb128 0x2
	.long	.LASF162
	.byte	0x11
	.uleb128 0x2
	.long	.LASF163
	.byte	0x12
	.uleb128 0x2
	.long	.LASF164
	.byte	0x13
	.uleb128 0x2
	.long	.LASF165
	.byte	0x14
	.uleb128 0x2
	.long	.LASF166
	.byte	0x15
	.uleb128 0x2
	.long	.LASF167
	.byte	0x16
	.uleb128 0x2
	.long	.LASF168
	.byte	0x17
	.uleb128 0x2
	.long	.LASF169
	.byte	0x18
	.uleb128 0x2
	.long	.LASF170
	.byte	0x19
	.uleb128 0x2
	.long	.LASF171
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF172
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF173
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF174
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF175
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF176
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF177
	.byte	0x20
	.uleb128 0x2
	.long	.LASF178
	.byte	0x21
	.uleb128 0x2
	.long	.LASF179
	.byte	0x22
	.uleb128 0x2
	.long	.LASF180
	.byte	0x23
	.uleb128 0x2
	.long	.LASF181
	.byte	0x24
	.uleb128 0x2
	.long	.LASF182
	.byte	0x25
	.uleb128 0x2
	.long	.LASF183
	.byte	0x26
	.uleb128 0x2
	.long	.LASF184
	.byte	0x27
	.uleb128 0x2
	.long	.LASF185
	.byte	0x28
	.uleb128 0x2
	.long	.LASF186
	.byte	0x29
	.uleb128 0x2
	.long	.LASF187
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF188
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF189
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF190
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF191
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF192
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF193
	.byte	0x30
	.uleb128 0x2
	.long	.LASF194
	.byte	0x31
	.uleb128 0x2
	.long	.LASF195
	.byte	0x32
	.uleb128 0x2
	.long	.LASF196
	.byte	0x33
	.uleb128 0x2
	.long	.LASF197
	.byte	0x34
	.uleb128 0x2
	.long	.LASF198
	.byte	0x35
	.uleb128 0x2
	.long	.LASF199
	.byte	0x36
	.uleb128 0x2
	.long	.LASF200
	.byte	0x37
	.uleb128 0x2
	.long	.LASF201
	.byte	0x38
	.uleb128 0x2
	.long	.LASF202
	.byte	0x39
	.uleb128 0x2
	.long	.LASF203
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF204
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF205
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF206
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF207
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF208
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF209
	.byte	0x40
	.uleb128 0x2
	.long	.LASF210
	.byte	0x41
	.uleb128 0x2
	.long	.LASF211
	.byte	0x42
	.uleb128 0x2
	.long	.LASF212
	.byte	0x43
	.uleb128 0x2
	.long	.LASF213
	.byte	0x44
	.uleb128 0x2
	.long	.LASF214
	.byte	0x45
	.uleb128 0x2
	.long	.LASF215
	.byte	0x46
	.uleb128 0x2
	.long	.LASF216
	.byte	0x47
	.uleb128 0x2
	.long	.LASF217
	.byte	0x48
	.uleb128 0x2
	.long	.LASF218
	.byte	0x49
	.uleb128 0x2
	.long	.LASF219
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF220
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF221
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF222
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF223
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF224
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF225
	.byte	0x50
	.uleb128 0x2
	.long	.LASF226
	.byte	0x51
	.uleb128 0x2
	.long	.LASF227
	.byte	0x52
	.uleb128 0x2
	.long	.LASF228
	.byte	0x53
	.uleb128 0x2
	.long	.LASF229
	.byte	0x54
	.uleb128 0x2
	.long	.LASF230
	.byte	0x55
	.uleb128 0x2
	.long	.LASF231
	.byte	0x56
	.uleb128 0x2
	.long	.LASF232
	.byte	0x57
	.uleb128 0x2
	.long	.LASF233
	.byte	0x58
	.uleb128 0x2
	.long	.LASF234
	.byte	0x59
	.uleb128 0x2
	.long	.LASF235
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF236
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF237
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF238
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF239
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF240
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF241
	.byte	0x60
	.uleb128 0x2
	.long	.LASF242
	.byte	0x61
	.uleb128 0x2
	.long	.LASF243
	.byte	0x62
	.uleb128 0x2
	.long	.LASF244
	.byte	0x63
	.uleb128 0x2
	.long	.LASF245
	.byte	0x64
	.uleb128 0x2
	.long	.LASF246
	.byte	0x65
	.uleb128 0x2
	.long	.LASF247
	.byte	0x66
	.uleb128 0x2
	.long	.LASF248
	.byte	0x67
	.uleb128 0x2
	.long	.LASF249
	.byte	0x68
	.uleb128 0x2
	.long	.LASF250
	.byte	0x69
	.uleb128 0x2
	.long	.LASF251
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF252
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF253
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF254
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF255
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF256
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF257
	.byte	0x70
	.uleb128 0x2
	.long	.LASF258
	.byte	0x71
	.uleb128 0x2
	.long	.LASF259
	.byte	0x72
	.uleb128 0x2
	.long	.LASF260
	.byte	0x73
	.uleb128 0x2
	.long	.LASF261
	.byte	0x74
	.uleb128 0x2
	.long	.LASF262
	.byte	0x75
	.uleb128 0x2
	.long	.LASF263
	.byte	0x76
	.uleb128 0x2
	.long	.LASF264
	.byte	0x77
	.uleb128 0x2
	.long	.LASF265
	.byte	0x78
	.uleb128 0x2
	.long	.LASF266
	.byte	0x79
	.uleb128 0x2
	.long	.LASF267
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF268
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF269
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF270
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF271
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF272
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF273
	.byte	0x80
	.uleb128 0x2
	.long	.LASF274
	.byte	0x81
	.uleb128 0x2
	.long	.LASF275
	.byte	0x82
	.uleb128 0x2
	.long	.LASF276
	.byte	0x83
	.uleb128 0x2
	.long	.LASF277
	.byte	0x84
	.uleb128 0x2
	.long	.LASF278
	.byte	0x85
	.uleb128 0x2
	.long	.LASF279
	.byte	0x86
	.uleb128 0x2
	.long	.LASF280
	.byte	0x87
	.uleb128 0x2
	.long	.LASF281
	.byte	0x88
	.uleb128 0x2
	.long	.LASF282
	.byte	0x89
	.uleb128 0x2
	.long	.LASF283
	.byte	0x8a
	.byte	0
	.uleb128 0x6
	.long	.LASF284
	.byte	0x11
	.byte	0xac
	.byte	0x3
	.long	0x77b
	.uleb128 0xd
	.long	0x79
	.byte	0x11
	.byte	0xaf
	.byte	0x1
	.long	0x245b
	.uleb128 0x2
	.long	.LASF285
	.byte	0
	.uleb128 0x2
	.long	.LASF286
	.byte	0x1
	.uleb128 0x2
	.long	.LASF287
	.byte	0x2
	.uleb128 0x2
	.long	.LASF288
	.byte	0x3
	.uleb128 0x2
	.long	.LASF289
	.byte	0x4
	.uleb128 0x2
	.long	.LASF290
	.byte	0x5
	.uleb128 0x2
	.long	.LASF291
	.byte	0x6
	.uleb128 0x2
	.long	.LASF292
	.byte	0x7
	.uleb128 0x2
	.long	.LASF293
	.byte	0x8
	.uleb128 0x2
	.long	.LASF294
	.byte	0x9
	.uleb128 0x2
	.long	.LASF295
	.byte	0xa
	.uleb128 0x2
	.long	.LASF296
	.byte	0xb
	.uleb128 0x2
	.long	.LASF297
	.byte	0xc
	.uleb128 0x2
	.long	.LASF298
	.byte	0xd
	.uleb128 0x2
	.long	.LASF299
	.byte	0xe
	.uleb128 0x2
	.long	.LASF300
	.byte	0xf
	.uleb128 0x2
	.long	.LASF301
	.byte	0x10
	.uleb128 0x2
	.long	.LASF302
	.byte	0x11
	.uleb128 0x2
	.long	.LASF303
	.byte	0x12
	.uleb128 0x2
	.long	.LASF304
	.byte	0x13
	.uleb128 0x2
	.long	.LASF305
	.byte	0x14
	.uleb128 0x2
	.long	.LASF306
	.byte	0x15
	.uleb128 0x2
	.long	.LASF307
	.byte	0x16
	.uleb128 0x2
	.long	.LASF308
	.byte	0x17
	.uleb128 0x2
	.long	.LASF309
	.byte	0x18
	.uleb128 0x2
	.long	.LASF310
	.byte	0x19
	.uleb128 0x2
	.long	.LASF311
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF312
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF313
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF314
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF315
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF316
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF317
	.byte	0x20
	.uleb128 0x2
	.long	.LASF318
	.byte	0x21
	.uleb128 0x2
	.long	.LASF319
	.byte	0x22
	.uleb128 0x2
	.long	.LASF320
	.byte	0x23
	.uleb128 0x2
	.long	.LASF321
	.byte	0x24
	.uleb128 0x2
	.long	.LASF322
	.byte	0x25
	.uleb128 0x2
	.long	.LASF323
	.byte	0x26
	.uleb128 0x2
	.long	.LASF324
	.byte	0x27
	.uleb128 0x2
	.long	.LASF325
	.byte	0x28
	.uleb128 0x2
	.long	.LASF326
	.byte	0x29
	.uleb128 0x2
	.long	.LASF327
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF328
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF329
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF330
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF331
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF332
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF333
	.byte	0x30
	.uleb128 0x2
	.long	.LASF334
	.byte	0x31
	.uleb128 0x2
	.long	.LASF335
	.byte	0x32
	.uleb128 0x2
	.long	.LASF336
	.byte	0x33
	.uleb128 0x2
	.long	.LASF337
	.byte	0x34
	.uleb128 0x2
	.long	.LASF338
	.byte	0x35
	.uleb128 0x2
	.long	.LASF339
	.byte	0x36
	.uleb128 0x2
	.long	.LASF340
	.byte	0x37
	.uleb128 0x2
	.long	.LASF341
	.byte	0x38
	.uleb128 0x2
	.long	.LASF342
	.byte	0x39
	.uleb128 0x2
	.long	.LASF343
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF344
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF345
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF346
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF347
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF348
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF349
	.byte	0x40
	.uleb128 0x2
	.long	.LASF350
	.byte	0x41
	.uleb128 0x2
	.long	.LASF351
	.byte	0x42
	.uleb128 0x2
	.long	.LASF352
	.byte	0x43
	.uleb128 0x2
	.long	.LASF353
	.byte	0x44
	.uleb128 0x2
	.long	.LASF354
	.byte	0x45
	.uleb128 0x2
	.long	.LASF355
	.byte	0x46
	.uleb128 0x2
	.long	.LASF356
	.byte	0x47
	.uleb128 0x2
	.long	.LASF357
	.byte	0x48
	.uleb128 0x2
	.long	.LASF358
	.byte	0x49
	.uleb128 0x2
	.long	.LASF359
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF360
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF361
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF362
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF363
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF364
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF365
	.byte	0x50
	.uleb128 0x2
	.long	.LASF366
	.byte	0x51
	.uleb128 0x2
	.long	.LASF367
	.byte	0x52
	.uleb128 0x2
	.long	.LASF368
	.byte	0x53
	.uleb128 0x2
	.long	.LASF369
	.byte	0x54
	.uleb128 0x2
	.long	.LASF370
	.byte	0x55
	.uleb128 0x2
	.long	.LASF371
	.byte	0x56
	.uleb128 0x2
	.long	.LASF372
	.byte	0x57
	.uleb128 0x2
	.long	.LASF373
	.byte	0x58
	.uleb128 0x2
	.long	.LASF374
	.byte	0x59
	.uleb128 0x2
	.long	.LASF375
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF376
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF377
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF378
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF379
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF380
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF381
	.byte	0x60
	.uleb128 0x2
	.long	.LASF382
	.byte	0x61
	.uleb128 0x2
	.long	.LASF383
	.byte	0x62
	.uleb128 0x2
	.long	.LASF384
	.byte	0x63
	.uleb128 0x2
	.long	.LASF385
	.byte	0x64
	.uleb128 0x2
	.long	.LASF386
	.byte	0x65
	.uleb128 0x2
	.long	.LASF387
	.byte	0x66
	.uleb128 0x2
	.long	.LASF388
	.byte	0x67
	.uleb128 0x2
	.long	.LASF389
	.byte	0x68
	.uleb128 0x2
	.long	.LASF390
	.byte	0x69
	.uleb128 0x2
	.long	.LASF391
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF392
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF393
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF394
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF395
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF396
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF397
	.byte	0x70
	.uleb128 0x2
	.long	.LASF398
	.byte	0x71
	.uleb128 0x2
	.long	.LASF399
	.byte	0x72
	.uleb128 0x2
	.long	.LASF400
	.byte	0x73
	.uleb128 0x2
	.long	.LASF401
	.byte	0x74
	.uleb128 0x2
	.long	.LASF402
	.byte	0x75
	.uleb128 0x2
	.long	.LASF403
	.byte	0x76
	.uleb128 0x2
	.long	.LASF404
	.byte	0x77
	.uleb128 0x2
	.long	.LASF405
	.byte	0x78
	.uleb128 0x2
	.long	.LASF406
	.byte	0x79
	.uleb128 0x2
	.long	.LASF407
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF408
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF409
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF410
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF411
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF412
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF413
	.byte	0x80
	.uleb128 0x2
	.long	.LASF414
	.byte	0x81
	.uleb128 0x2
	.long	.LASF415
	.byte	0x82
	.uleb128 0x2
	.long	.LASF416
	.byte	0x83
	.uleb128 0x2
	.long	.LASF417
	.byte	0x84
	.uleb128 0x2
	.long	.LASF418
	.byte	0x85
	.uleb128 0x2
	.long	.LASF419
	.byte	0x86
	.uleb128 0x2
	.long	.LASF420
	.byte	0x87
	.uleb128 0x2
	.long	.LASF421
	.byte	0x88
	.uleb128 0x2
	.long	.LASF422
	.byte	0x89
	.uleb128 0x2
	.long	.LASF423
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF424
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF425
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF426
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF427
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF428
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF429
	.byte	0x90
	.uleb128 0x2
	.long	.LASF430
	.byte	0x91
	.uleb128 0x2
	.long	.LASF431
	.byte	0x92
	.uleb128 0x2
	.long	.LASF432
	.byte	0x93
	.uleb128 0x2
	.long	.LASF433
	.byte	0x94
	.uleb128 0x2
	.long	.LASF434
	.byte	0x95
	.uleb128 0x2
	.long	.LASF435
	.byte	0x96
	.uleb128 0x2
	.long	.LASF436
	.byte	0x97
	.uleb128 0x2
	.long	.LASF437
	.byte	0x98
	.uleb128 0x2
	.long	.LASF438
	.byte	0x99
	.uleb128 0x2
	.long	.LASF439
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF440
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF441
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF442
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF443
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF444
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF445
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF446
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF447
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF448
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF449
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF450
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF451
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF452
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF453
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF454
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF455
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF456
	.byte	0xab
	.uleb128 0x2
	.long	.LASF457
	.byte	0xac
	.uleb128 0x2
	.long	.LASF458
	.byte	0xad
	.uleb128 0x2
	.long	.LASF459
	.byte	0xae
	.uleb128 0x2
	.long	.LASF460
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF461
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF462
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF463
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF464
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF465
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF466
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF467
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF468
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF469
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF470
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF471
	.byte	0xba
	.uleb128 0x2
	.long	.LASF472
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF473
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF474
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF475
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF476
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF477
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF478
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF479
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF480
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF481
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF482
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF483
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF484
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF485
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF486
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF487
	.byte	0xca
	.uleb128 0x2
	.long	.LASF488
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF489
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF490
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF491
	.byte	0xce
	.uleb128 0x2
	.long	.LASF492
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF493
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF494
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF495
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF496
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF497
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF498
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF499
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF500
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF501
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF502
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF503
	.byte	0xda
	.uleb128 0x2
	.long	.LASF504
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF505
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF506
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF507
	.byte	0xde
	.uleb128 0x2
	.long	.LASF508
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF509
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF510
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF511
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF512
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF513
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF514
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF515
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF516
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF517
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF518
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF519
	.byte	0xea
	.uleb128 0x2
	.long	.LASF520
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF521
	.byte	0xec
	.uleb128 0x2
	.long	.LASF522
	.byte	0xed
	.uleb128 0x2
	.long	.LASF523
	.byte	0xee
	.uleb128 0x2
	.long	.LASF524
	.byte	0xef
	.uleb128 0x2
	.long	.LASF525
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF526
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF527
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF528
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF529
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF530
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF531
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF532
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF533
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF534
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF535
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF536
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF537
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF538
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF539
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF540
	.byte	0xff
	.uleb128 0x1
	.long	.LASF541
	.value	0x100
	.uleb128 0x1
	.long	.LASF542
	.value	0x101
	.uleb128 0x1
	.long	.LASF543
	.value	0x102
	.uleb128 0x1
	.long	.LASF544
	.value	0x103
	.uleb128 0x1
	.long	.LASF545
	.value	0x104
	.uleb128 0x1
	.long	.LASF546
	.value	0x105
	.uleb128 0x1
	.long	.LASF547
	.value	0x106
	.uleb128 0x1
	.long	.LASF548
	.value	0x107
	.uleb128 0x1
	.long	.LASF549
	.value	0x108
	.uleb128 0x1
	.long	.LASF550
	.value	0x109
	.uleb128 0x1
	.long	.LASF551
	.value	0x10a
	.uleb128 0x1
	.long	.LASF552
	.value	0x10b
	.uleb128 0x1
	.long	.LASF553
	.value	0x10c
	.uleb128 0x1
	.long	.LASF554
	.value	0x10d
	.uleb128 0x1
	.long	.LASF555
	.value	0x10e
	.uleb128 0x1
	.long	.LASF556
	.value	0x10f
	.uleb128 0x1
	.long	.LASF557
	.value	0x110
	.uleb128 0x1
	.long	.LASF558
	.value	0x111
	.uleb128 0x1
	.long	.LASF559
	.value	0x112
	.uleb128 0x1
	.long	.LASF560
	.value	0x113
	.uleb128 0x1
	.long	.LASF561
	.value	0x114
	.uleb128 0x1
	.long	.LASF562
	.value	0x115
	.uleb128 0x1
	.long	.LASF563
	.value	0x116
	.uleb128 0x1
	.long	.LASF564
	.value	0x117
	.uleb128 0x1
	.long	.LASF565
	.value	0x118
	.uleb128 0x1
	.long	.LASF566
	.value	0x119
	.uleb128 0x1
	.long	.LASF567
	.value	0x11a
	.uleb128 0x1
	.long	.LASF568
	.value	0x11b
	.uleb128 0x1
	.long	.LASF569
	.value	0x11c
	.uleb128 0x1
	.long	.LASF570
	.value	0x11d
	.uleb128 0x1
	.long	.LASF571
	.value	0x11e
	.uleb128 0x1
	.long	.LASF572
	.value	0x11f
	.uleb128 0x1
	.long	.LASF573
	.value	0x120
	.uleb128 0x1
	.long	.LASF574
	.value	0x121
	.uleb128 0x1
	.long	.LASF575
	.value	0x122
	.uleb128 0x1
	.long	.LASF576
	.value	0x123
	.uleb128 0x1
	.long	.LASF577
	.value	0x124
	.uleb128 0x1
	.long	.LASF578
	.value	0x125
	.uleb128 0x1
	.long	.LASF579
	.value	0x126
	.uleb128 0x1
	.long	.LASF580
	.value	0x127
	.uleb128 0x1
	.long	.LASF581
	.value	0x128
	.uleb128 0x1
	.long	.LASF582
	.value	0x129
	.uleb128 0x1
	.long	.LASF583
	.value	0x12a
	.uleb128 0x1
	.long	.LASF584
	.value	0x12b
	.uleb128 0x1
	.long	.LASF585
	.value	0x12c
	.uleb128 0x1
	.long	.LASF586
	.value	0x12d
	.uleb128 0x1
	.long	.LASF587
	.value	0x12e
	.uleb128 0x1
	.long	.LASF588
	.value	0x12f
	.uleb128 0x1
	.long	.LASF589
	.value	0x130
	.uleb128 0x1
	.long	.LASF590
	.value	0x131
	.uleb128 0x1
	.long	.LASF591
	.value	0x132
	.uleb128 0x1
	.long	.LASF592
	.value	0x133
	.uleb128 0x1
	.long	.LASF593
	.value	0x134
	.uleb128 0x1
	.long	.LASF594
	.value	0x135
	.uleb128 0x1
	.long	.LASF595
	.value	0x136
	.uleb128 0x1
	.long	.LASF596
	.value	0x137
	.uleb128 0x1
	.long	.LASF597
	.value	0x138
	.uleb128 0x1
	.long	.LASF598
	.value	0x139
	.uleb128 0x1
	.long	.LASF599
	.value	0x13a
	.uleb128 0x1
	.long	.LASF600
	.value	0x13b
	.uleb128 0x1
	.long	.LASF601
	.value	0x13c
	.uleb128 0x1
	.long	.LASF602
	.value	0x13d
	.uleb128 0x1
	.long	.LASF603
	.value	0x13e
	.uleb128 0x1
	.long	.LASF604
	.value	0x13f
	.uleb128 0x1
	.long	.LASF605
	.value	0x140
	.uleb128 0x1
	.long	.LASF606
	.value	0x141
	.uleb128 0x1
	.long	.LASF607
	.value	0x142
	.uleb128 0x1
	.long	.LASF608
	.value	0x143
	.uleb128 0x1
	.long	.LASF609
	.value	0x144
	.uleb128 0x1
	.long	.LASF610
	.value	0x145
	.uleb128 0x1
	.long	.LASF611
	.value	0x146
	.uleb128 0x1
	.long	.LASF612
	.value	0x147
	.uleb128 0x1
	.long	.LASF613
	.value	0x148
	.uleb128 0x1
	.long	.LASF614
	.value	0x149
	.uleb128 0x1
	.long	.LASF615
	.value	0x14a
	.uleb128 0x1
	.long	.LASF616
	.value	0x14b
	.uleb128 0x1
	.long	.LASF617
	.value	0x14c
	.uleb128 0x1
	.long	.LASF618
	.value	0x14d
	.uleb128 0x1
	.long	.LASF619
	.value	0x14e
	.uleb128 0x1
	.long	.LASF620
	.value	0x14f
	.uleb128 0x1
	.long	.LASF621
	.value	0x150
	.uleb128 0x1
	.long	.LASF622
	.value	0x151
	.uleb128 0x1
	.long	.LASF623
	.value	0x152
	.uleb128 0x1
	.long	.LASF624
	.value	0x153
	.uleb128 0x1
	.long	.LASF625
	.value	0x154
	.uleb128 0x1
	.long	.LASF626
	.value	0x155
	.uleb128 0x1
	.long	.LASF627
	.value	0x156
	.uleb128 0x1
	.long	.LASF628
	.value	0x157
	.uleb128 0x1
	.long	.LASF629
	.value	0x158
	.uleb128 0x1
	.long	.LASF630
	.value	0x159
	.uleb128 0x1
	.long	.LASF631
	.value	0x15a
	.uleb128 0x1
	.long	.LASF632
	.value	0x15b
	.uleb128 0x1
	.long	.LASF633
	.value	0x15c
	.uleb128 0x1
	.long	.LASF634
	.value	0x15d
	.uleb128 0x1
	.long	.LASF635
	.value	0x15e
	.uleb128 0x1
	.long	.LASF636
	.value	0x15f
	.uleb128 0x1
	.long	.LASF637
	.value	0x160
	.uleb128 0x1
	.long	.LASF638
	.value	0x161
	.uleb128 0x1
	.long	.LASF639
	.value	0x162
	.uleb128 0x1
	.long	.LASF640
	.value	0x163
	.uleb128 0x1
	.long	.LASF641
	.value	0x164
	.uleb128 0x1
	.long	.LASF642
	.value	0x165
	.uleb128 0x1
	.long	.LASF643
	.value	0x166
	.uleb128 0x1
	.long	.LASF644
	.value	0x167
	.uleb128 0x1
	.long	.LASF645
	.value	0x168
	.uleb128 0x1
	.long	.LASF646
	.value	0x169
	.uleb128 0x1
	.long	.LASF647
	.value	0x16a
	.uleb128 0x1
	.long	.LASF648
	.value	0x16b
	.uleb128 0x1
	.long	.LASF649
	.value	0x16c
	.uleb128 0x1
	.long	.LASF650
	.value	0x16d
	.uleb128 0x1
	.long	.LASF651
	.value	0x16e
	.uleb128 0x1
	.long	.LASF652
	.value	0x16f
	.uleb128 0x1
	.long	.LASF653
	.value	0x170
	.uleb128 0x1
	.long	.LASF654
	.value	0x171
	.uleb128 0x1
	.long	.LASF655
	.value	0x172
	.uleb128 0x1
	.long	.LASF656
	.value	0x173
	.uleb128 0x1
	.long	.LASF657
	.value	0x174
	.uleb128 0x1
	.long	.LASF658
	.value	0x175
	.uleb128 0x1
	.long	.LASF659
	.value	0x176
	.uleb128 0x1
	.long	.LASF660
	.value	0x177
	.uleb128 0x1
	.long	.LASF661
	.value	0x178
	.uleb128 0x1
	.long	.LASF662
	.value	0x179
	.uleb128 0x1
	.long	.LASF663
	.value	0x17a
	.uleb128 0x1
	.long	.LASF664
	.value	0x17b
	.uleb128 0x1
	.long	.LASF665
	.value	0x17c
	.uleb128 0x1
	.long	.LASF666
	.value	0x17d
	.uleb128 0x1
	.long	.LASF667
	.value	0x17e
	.uleb128 0x1
	.long	.LASF668
	.value	0x17f
	.uleb128 0x1
	.long	.LASF669
	.value	0x180
	.uleb128 0x1
	.long	.LASF670
	.value	0x181
	.uleb128 0x1
	.long	.LASF671
	.value	0x182
	.uleb128 0x1
	.long	.LASF672
	.value	0x183
	.uleb128 0x1
	.long	.LASF673
	.value	0x184
	.uleb128 0x1
	.long	.LASF674
	.value	0x185
	.uleb128 0x1
	.long	.LASF675
	.value	0x186
	.uleb128 0x1
	.long	.LASF676
	.value	0x187
	.uleb128 0x1
	.long	.LASF677
	.value	0x188
	.uleb128 0x1
	.long	.LASF678
	.value	0x189
	.uleb128 0x1
	.long	.LASF679
	.value	0x18a
	.uleb128 0x1
	.long	.LASF680
	.value	0x18b
	.uleb128 0x1
	.long	.LASF681
	.value	0x18c
	.uleb128 0x1
	.long	.LASF682
	.value	0x18d
	.uleb128 0x1
	.long	.LASF683
	.value	0x18e
	.uleb128 0x1
	.long	.LASF684
	.value	0x18f
	.uleb128 0x1
	.long	.LASF685
	.value	0x190
	.uleb128 0x1
	.long	.LASF686
	.value	0x191
	.uleb128 0x1
	.long	.LASF687
	.value	0x192
	.uleb128 0x1
	.long	.LASF688
	.value	0x193
	.uleb128 0x1
	.long	.LASF689
	.value	0x194
	.uleb128 0x1
	.long	.LASF690
	.value	0x195
	.uleb128 0x1
	.long	.LASF691
	.value	0x196
	.uleb128 0x1
	.long	.LASF692
	.value	0x197
	.uleb128 0x1
	.long	.LASF693
	.value	0x198
	.uleb128 0x1
	.long	.LASF694
	.value	0x199
	.uleb128 0x1
	.long	.LASF695
	.value	0x19a
	.uleb128 0x1
	.long	.LASF696
	.value	0x19b
	.uleb128 0x1
	.long	.LASF697
	.value	0x19c
	.uleb128 0x1
	.long	.LASF698
	.value	0x19d
	.uleb128 0x1
	.long	.LASF699
	.value	0x19e
	.uleb128 0x1
	.long	.LASF700
	.value	0x19f
	.uleb128 0x1
	.long	.LASF701
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF702
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF703
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF704
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF705
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF706
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF707
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF708
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF709
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF710
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF711
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF712
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF713
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF714
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF715
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF716
	.value	0x1af
	.uleb128 0x1
	.long	.LASF717
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF718
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF719
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF720
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF721
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF722
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF723
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF724
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF725
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF726
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF727
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF728
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF729
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF730
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF731
	.value	0x1be
	.uleb128 0x1
	.long	.LASF732
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF733
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF734
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF735
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF736
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF737
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF738
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF739
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF740
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF741
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF742
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF743
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF744
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF745
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF746
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF747
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF748
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF749
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF750
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF751
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF752
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF753
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF754
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF755
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF756
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF757
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF758
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF759
	.value	0x1da
	.uleb128 0x1
	.long	.LASF760
	.value	0x1db
	.uleb128 0x1
	.long	.LASF761
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF762
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF763
	.value	0x1de
	.uleb128 0x1
	.long	.LASF764
	.value	0x1df
	.uleb128 0x1
	.long	.LASF765
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF766
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF767
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF768
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF769
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF770
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF771
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF772
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF773
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF774
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF775
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF776
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF777
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF778
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF779
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF780
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF781
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF782
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF783
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF784
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF785
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF786
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF787
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF788
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF789
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF790
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF791
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF792
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF793
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF794
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF795
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF796
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF797
	.value	0x200
	.uleb128 0x1
	.long	.LASF798
	.value	0x201
	.uleb128 0x1
	.long	.LASF799
	.value	0x202
	.uleb128 0x1
	.long	.LASF800
	.value	0x203
	.uleb128 0x1
	.long	.LASF801
	.value	0x204
	.uleb128 0x1
	.long	.LASF802
	.value	0x205
	.uleb128 0x1
	.long	.LASF803
	.value	0x206
	.uleb128 0x1
	.long	.LASF804
	.value	0x207
	.uleb128 0x1
	.long	.LASF805
	.value	0x208
	.uleb128 0x1
	.long	.LASF806
	.value	0x209
	.uleb128 0x1
	.long	.LASF807
	.value	0x20a
	.uleb128 0x1
	.long	.LASF808
	.value	0x20b
	.uleb128 0x1
	.long	.LASF809
	.value	0x20c
	.uleb128 0x1
	.long	.LASF810
	.value	0x20d
	.uleb128 0x1
	.long	.LASF811
	.value	0x20e
	.uleb128 0x1
	.long	.LASF812
	.value	0x20f
	.uleb128 0x1
	.long	.LASF813
	.value	0x210
	.uleb128 0x1
	.long	.LASF814
	.value	0x211
	.uleb128 0x1
	.long	.LASF815
	.value	0x212
	.uleb128 0x1
	.long	.LASF816
	.value	0x213
	.uleb128 0x1
	.long	.LASF817
	.value	0x214
	.uleb128 0x1
	.long	.LASF818
	.value	0x215
	.uleb128 0x1
	.long	.LASF819
	.value	0x216
	.uleb128 0x1
	.long	.LASF820
	.value	0x217
	.uleb128 0x1
	.long	.LASF821
	.value	0x218
	.uleb128 0x1
	.long	.LASF822
	.value	0x219
	.uleb128 0x1
	.long	.LASF823
	.value	0x21a
	.uleb128 0x1
	.long	.LASF824
	.value	0x21b
	.uleb128 0x1
	.long	.LASF825
	.value	0x21c
	.uleb128 0x1
	.long	.LASF826
	.value	0x21d
	.uleb128 0x1
	.long	.LASF827
	.value	0x21e
	.uleb128 0x1
	.long	.LASF828
	.value	0x21f
	.uleb128 0x1
	.long	.LASF829
	.value	0x220
	.uleb128 0x1
	.long	.LASF830
	.value	0x221
	.uleb128 0x1
	.long	.LASF831
	.value	0x222
	.uleb128 0x1
	.long	.LASF832
	.value	0x223
	.uleb128 0x1
	.long	.LASF833
	.value	0x224
	.uleb128 0x1
	.long	.LASF834
	.value	0x225
	.uleb128 0x1
	.long	.LASF835
	.value	0x226
	.uleb128 0x1
	.long	.LASF836
	.value	0x227
	.uleb128 0x1
	.long	.LASF837
	.value	0x228
	.uleb128 0x1
	.long	.LASF838
	.value	0x229
	.uleb128 0x1
	.long	.LASF839
	.value	0x22a
	.uleb128 0x1
	.long	.LASF840
	.value	0x22b
	.uleb128 0x1
	.long	.LASF841
	.value	0x22c
	.uleb128 0x1
	.long	.LASF842
	.value	0x22d
	.uleb128 0x1
	.long	.LASF843
	.value	0x22e
	.uleb128 0x1
	.long	.LASF844
	.value	0x22f
	.uleb128 0x1
	.long	.LASF845
	.value	0x230
	.uleb128 0x1
	.long	.LASF846
	.value	0x231
	.uleb128 0x1
	.long	.LASF847
	.value	0x232
	.uleb128 0x1
	.long	.LASF848
	.value	0x233
	.uleb128 0x1
	.long	.LASF849
	.value	0x234
	.uleb128 0x1
	.long	.LASF850
	.value	0x235
	.uleb128 0x1
	.long	.LASF851
	.value	0x236
	.uleb128 0x1
	.long	.LASF852
	.value	0x237
	.uleb128 0x1
	.long	.LASF853
	.value	0x238
	.uleb128 0x1
	.long	.LASF854
	.value	0x239
	.uleb128 0x1
	.long	.LASF855
	.value	0x23a
	.uleb128 0x1
	.long	.LASF856
	.value	0x23b
	.uleb128 0x1
	.long	.LASF857
	.value	0x23c
	.uleb128 0x1
	.long	.LASF858
	.value	0x23d
	.uleb128 0x1
	.long	.LASF859
	.value	0x23e
	.uleb128 0x1
	.long	.LASF860
	.value	0x23f
	.uleb128 0x1
	.long	.LASF861
	.value	0x240
	.uleb128 0x1
	.long	.LASF862
	.value	0x241
	.uleb128 0x1
	.long	.LASF863
	.value	0x242
	.uleb128 0x1
	.long	.LASF864
	.value	0x243
	.uleb128 0x1
	.long	.LASF865
	.value	0x244
	.uleb128 0x1
	.long	.LASF866
	.value	0x245
	.uleb128 0x1
	.long	.LASF867
	.value	0x246
	.uleb128 0x1
	.long	.LASF868
	.value	0x247
	.uleb128 0x1
	.long	.LASF869
	.value	0x248
	.uleb128 0x1
	.long	.LASF870
	.value	0x249
	.uleb128 0x1
	.long	.LASF871
	.value	0x24a
	.uleb128 0x1
	.long	.LASF872
	.value	0x24b
	.uleb128 0x1
	.long	.LASF873
	.value	0x24c
	.uleb128 0x1
	.long	.LASF874
	.value	0x24d
	.uleb128 0x1
	.long	.LASF875
	.value	0x24e
	.uleb128 0x1
	.long	.LASF876
	.value	0x24f
	.uleb128 0x1
	.long	.LASF877
	.value	0x250
	.uleb128 0x1
	.long	.LASF878
	.value	0x251
	.uleb128 0x1
	.long	.LASF879
	.value	0x252
	.uleb128 0x1
	.long	.LASF880
	.value	0x253
	.uleb128 0x1
	.long	.LASF881
	.value	0x254
	.uleb128 0x1
	.long	.LASF882
	.value	0x255
	.uleb128 0x1
	.long	.LASF883
	.value	0x256
	.uleb128 0x1
	.long	.LASF884
	.value	0x257
	.uleb128 0x1
	.long	.LASF885
	.value	0x258
	.uleb128 0x1
	.long	.LASF886
	.value	0x259
	.uleb128 0x1
	.long	.LASF887
	.value	0x25a
	.uleb128 0x1
	.long	.LASF888
	.value	0x25b
	.uleb128 0x1
	.long	.LASF889
	.value	0x25c
	.uleb128 0x1
	.long	.LASF890
	.value	0x25d
	.uleb128 0x1
	.long	.LASF891
	.value	0x25e
	.uleb128 0x1
	.long	.LASF892
	.value	0x25f
	.uleb128 0x1
	.long	.LASF893
	.value	0x260
	.uleb128 0x1
	.long	.LASF894
	.value	0x261
	.uleb128 0x1
	.long	.LASF895
	.value	0x262
	.uleb128 0x1
	.long	.LASF896
	.value	0x263
	.uleb128 0x1
	.long	.LASF897
	.value	0x264
	.uleb128 0x1
	.long	.LASF898
	.value	0x265
	.uleb128 0x1
	.long	.LASF899
	.value	0x266
	.uleb128 0x1
	.long	.LASF900
	.value	0x267
	.uleb128 0x1
	.long	.LASF901
	.value	0x268
	.uleb128 0x1
	.long	.LASF902
	.value	0x269
	.uleb128 0x1
	.long	.LASF903
	.value	0x26a
	.uleb128 0x1
	.long	.LASF904
	.value	0x26b
	.uleb128 0x1
	.long	.LASF905
	.value	0x26c
	.uleb128 0x1
	.long	.LASF906
	.value	0x26d
	.uleb128 0x1
	.long	.LASF907
	.value	0x26e
	.uleb128 0x1
	.long	.LASF908
	.value	0x26f
	.uleb128 0x1
	.long	.LASF909
	.value	0x270
	.uleb128 0x1
	.long	.LASF910
	.value	0x271
	.uleb128 0x1
	.long	.LASF911
	.value	0x272
	.uleb128 0x1
	.long	.LASF912
	.value	0x273
	.uleb128 0x1
	.long	.LASF913
	.value	0x274
	.uleb128 0x1
	.long	.LASF914
	.value	0x275
	.uleb128 0x1
	.long	.LASF915
	.value	0x276
	.uleb128 0x1
	.long	.LASF916
	.value	0x277
	.uleb128 0x1
	.long	.LASF917
	.value	0x278
	.uleb128 0x1
	.long	.LASF918
	.value	0x279
	.uleb128 0x1
	.long	.LASF919
	.value	0x27a
	.uleb128 0x1
	.long	.LASF920
	.value	0x27b
	.uleb128 0x1
	.long	.LASF921
	.value	0x27c
	.uleb128 0x1
	.long	.LASF922
	.value	0x27d
	.uleb128 0x1
	.long	.LASF923
	.value	0x27e
	.uleb128 0x1
	.long	.LASF924
	.value	0x27f
	.uleb128 0x1
	.long	.LASF925
	.value	0x280
	.uleb128 0x1
	.long	.LASF926
	.value	0x281
	.uleb128 0x1
	.long	.LASF927
	.value	0x282
	.uleb128 0x1
	.long	.LASF928
	.value	0x283
	.uleb128 0x1
	.long	.LASF929
	.value	0x284
	.uleb128 0x1
	.long	.LASF930
	.value	0x285
	.uleb128 0x1
	.long	.LASF931
	.value	0x286
	.uleb128 0x1
	.long	.LASF932
	.value	0x287
	.uleb128 0x1
	.long	.LASF933
	.value	0x288
	.uleb128 0x1
	.long	.LASF934
	.value	0x289
	.uleb128 0x1
	.long	.LASF935
	.value	0x28a
	.uleb128 0x1
	.long	.LASF936
	.value	0x28b
	.uleb128 0x1
	.long	.LASF937
	.value	0x28c
	.uleb128 0x1
	.long	.LASF938
	.value	0x28d
	.uleb128 0x1
	.long	.LASF939
	.value	0x28e
	.uleb128 0x1
	.long	.LASF940
	.value	0x28f
	.uleb128 0x1
	.long	.LASF941
	.value	0x290
	.uleb128 0x1
	.long	.LASF942
	.value	0x291
	.uleb128 0x1
	.long	.LASF943
	.value	0x292
	.uleb128 0x1
	.long	.LASF944
	.value	0x293
	.uleb128 0x1
	.long	.LASF945
	.value	0x294
	.uleb128 0x1
	.long	.LASF946
	.value	0x295
	.uleb128 0x1
	.long	.LASF947
	.value	0x296
	.uleb128 0x1
	.long	.LASF948
	.value	0x297
	.uleb128 0x1
	.long	.LASF949
	.value	0x298
	.uleb128 0x1
	.long	.LASF950
	.value	0x299
	.uleb128 0x1
	.long	.LASF951
	.value	0x29a
	.uleb128 0x1
	.long	.LASF952
	.value	0x29b
	.uleb128 0x1
	.long	.LASF953
	.value	0x29c
	.uleb128 0x1
	.long	.LASF954
	.value	0x29d
	.uleb128 0x1
	.long	.LASF955
	.value	0x29e
	.uleb128 0x1
	.long	.LASF956
	.value	0x29f
	.uleb128 0x1
	.long	.LASF957
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF958
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF959
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF960
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF961
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF962
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF963
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF964
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF965
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF966
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF967
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF968
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF969
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF970
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF971
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF972
	.value	0x2af
	.uleb128 0x1
	.long	.LASF973
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF974
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF975
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF976
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF977
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF978
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF979
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF980
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF981
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF982
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF983
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF984
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF985
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF986
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF987
	.value	0x2be
	.uleb128 0x1
	.long	.LASF988
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF989
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF990
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF991
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF992
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF993
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF994
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF995
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF996
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF997
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF998
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF999
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF1000
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF1001
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF1002
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF1003
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF1004
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF1005
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF1006
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF1007
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF1008
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF1009
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF1010
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF1011
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF1012
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF1013
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF1014
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF1015
	.value	0x2da
	.uleb128 0x1
	.long	.LASF1016
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1017
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1018
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1019
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1020
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1021
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1022
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1023
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1024
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1025
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1026
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1027
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1028
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1029
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1030
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1031
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1032
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1033
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1034
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1035
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1036
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1037
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1038
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1039
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1040
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1041
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1042
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1043
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1044
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1045
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1046
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1047
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1048
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1049
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1050
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1051
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1052
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1053
	.value	0x300
	.uleb128 0x1
	.long	.LASF1054
	.value	0x301
	.uleb128 0x1
	.long	.LASF1055
	.value	0x302
	.uleb128 0x1
	.long	.LASF1056
	.value	0x303
	.uleb128 0x1
	.long	.LASF1057
	.value	0x304
	.uleb128 0x1
	.long	.LASF1058
	.value	0x305
	.uleb128 0x1
	.long	.LASF1059
	.value	0x306
	.uleb128 0x1
	.long	.LASF1060
	.value	0x307
	.uleb128 0x1
	.long	.LASF1061
	.value	0x308
	.uleb128 0x1
	.long	.LASF1062
	.value	0x309
	.uleb128 0x1
	.long	.LASF1063
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1064
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1065
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1066
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1067
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1068
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1069
	.value	0x310
	.uleb128 0x1
	.long	.LASF1070
	.value	0x311
	.uleb128 0x1
	.long	.LASF1071
	.value	0x312
	.uleb128 0x1
	.long	.LASF1072
	.value	0x313
	.uleb128 0x1
	.long	.LASF1073
	.value	0x314
	.uleb128 0x1
	.long	.LASF1074
	.value	0x315
	.uleb128 0x1
	.long	.LASF1075
	.value	0x316
	.uleb128 0x1
	.long	.LASF1076
	.value	0x317
	.uleb128 0x1
	.long	.LASF1077
	.value	0x318
	.uleb128 0x1
	.long	.LASF1078
	.value	0x319
	.uleb128 0x1
	.long	.LASF1079
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1080
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1081
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1082
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1083
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1084
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1085
	.value	0x320
	.uleb128 0x1
	.long	.LASF1086
	.value	0x321
	.uleb128 0x1
	.long	.LASF1087
	.value	0x322
	.uleb128 0x1
	.long	.LASF1088
	.value	0x323
	.uleb128 0x1
	.long	.LASF1089
	.value	0x324
	.uleb128 0x1
	.long	.LASF1090
	.value	0x325
	.uleb128 0x1
	.long	.LASF1091
	.value	0x326
	.uleb128 0x1
	.long	.LASF1092
	.value	0x327
	.uleb128 0x1
	.long	.LASF1093
	.value	0x328
	.uleb128 0x1
	.long	.LASF1094
	.value	0x329
	.uleb128 0x1
	.long	.LASF1095
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1096
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1097
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1098
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1099
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1100
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1101
	.value	0x330
	.uleb128 0x1
	.long	.LASF1102
	.value	0x331
	.uleb128 0x1
	.long	.LASF1103
	.value	0x332
	.uleb128 0x1
	.long	.LASF1104
	.value	0x333
	.uleb128 0x1
	.long	.LASF1105
	.value	0x334
	.uleb128 0x1
	.long	.LASF1106
	.value	0x335
	.uleb128 0x1
	.long	.LASF1107
	.value	0x336
	.uleb128 0x1
	.long	.LASF1108
	.value	0x337
	.uleb128 0x1
	.long	.LASF1109
	.value	0x338
	.uleb128 0x1
	.long	.LASF1110
	.value	0x339
	.uleb128 0x1
	.long	.LASF1111
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1112
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1113
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1114
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1115
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1116
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1117
	.value	0x340
	.uleb128 0x1
	.long	.LASF1118
	.value	0x341
	.uleb128 0x1
	.long	.LASF1119
	.value	0x342
	.uleb128 0x1
	.long	.LASF1120
	.value	0x343
	.uleb128 0x1
	.long	.LASF1121
	.value	0x344
	.uleb128 0x1
	.long	.LASF1122
	.value	0x345
	.uleb128 0x1
	.long	.LASF1123
	.value	0x346
	.uleb128 0x1
	.long	.LASF1124
	.value	0x347
	.uleb128 0x1
	.long	.LASF1125
	.value	0x348
	.uleb128 0x1
	.long	.LASF1126
	.value	0x349
	.uleb128 0x1
	.long	.LASF1127
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1128
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1129
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1130
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1131
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1132
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1133
	.value	0x350
	.uleb128 0x1
	.long	.LASF1134
	.value	0x351
	.uleb128 0x1
	.long	.LASF1135
	.value	0x352
	.uleb128 0x1
	.long	.LASF1136
	.value	0x353
	.uleb128 0x1
	.long	.LASF1137
	.value	0x354
	.uleb128 0x1
	.long	.LASF1138
	.value	0x355
	.uleb128 0x1
	.long	.LASF1139
	.value	0x356
	.uleb128 0x1
	.long	.LASF1140
	.value	0x357
	.uleb128 0x1
	.long	.LASF1141
	.value	0x358
	.uleb128 0x1
	.long	.LASF1142
	.value	0x359
	.uleb128 0x1
	.long	.LASF1143
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1144
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1145
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1146
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1147
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1148
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1149
	.value	0x360
	.uleb128 0x1
	.long	.LASF1150
	.value	0x361
	.uleb128 0x1
	.long	.LASF1151
	.value	0x362
	.uleb128 0x1
	.long	.LASF1152
	.value	0x363
	.uleb128 0x1
	.long	.LASF1153
	.value	0x364
	.uleb128 0x1
	.long	.LASF1154
	.value	0x365
	.uleb128 0x1
	.long	.LASF1155
	.value	0x366
	.uleb128 0x1
	.long	.LASF1156
	.value	0x367
	.uleb128 0x1
	.long	.LASF1157
	.value	0x368
	.uleb128 0x1
	.long	.LASF1158
	.value	0x369
	.uleb128 0x1
	.long	.LASF1159
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1160
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1161
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1162
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1163
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1164
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1165
	.value	0x370
	.uleb128 0x1
	.long	.LASF1166
	.value	0x371
	.uleb128 0x1
	.long	.LASF1167
	.value	0x372
	.uleb128 0x1
	.long	.LASF1168
	.value	0x373
	.uleb128 0x1
	.long	.LASF1169
	.value	0x374
	.uleb128 0x1
	.long	.LASF1170
	.value	0x375
	.uleb128 0x1
	.long	.LASF1171
	.value	0x376
	.uleb128 0x1
	.long	.LASF1172
	.value	0x377
	.uleb128 0x1
	.long	.LASF1173
	.value	0x378
	.uleb128 0x1
	.long	.LASF1174
	.value	0x379
	.uleb128 0x1
	.long	.LASF1175
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1176
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1177
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1178
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1179
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1180
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1181
	.value	0x380
	.uleb128 0x1
	.long	.LASF1182
	.value	0x381
	.uleb128 0x1
	.long	.LASF1183
	.value	0x382
	.uleb128 0x1
	.long	.LASF1184
	.value	0x383
	.uleb128 0x1
	.long	.LASF1185
	.value	0x384
	.uleb128 0x1
	.long	.LASF1186
	.value	0x385
	.uleb128 0x1
	.long	.LASF1187
	.value	0x386
	.uleb128 0x1
	.long	.LASF1188
	.value	0x387
	.uleb128 0x1
	.long	.LASF1189
	.value	0x388
	.uleb128 0x1
	.long	.LASF1190
	.value	0x389
	.uleb128 0x1
	.long	.LASF1191
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1192
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1193
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1194
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1195
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1196
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1197
	.value	0x390
	.uleb128 0x1
	.long	.LASF1198
	.value	0x391
	.uleb128 0x1
	.long	.LASF1199
	.value	0x392
	.uleb128 0x1
	.long	.LASF1200
	.value	0x393
	.uleb128 0x1
	.long	.LASF1201
	.value	0x394
	.uleb128 0x1
	.long	.LASF1202
	.value	0x395
	.uleb128 0x1
	.long	.LASF1203
	.value	0x396
	.uleb128 0x1
	.long	.LASF1204
	.value	0x397
	.uleb128 0x1
	.long	.LASF1205
	.value	0x398
	.uleb128 0x1
	.long	.LASF1206
	.value	0x399
	.uleb128 0x1
	.long	.LASF1207
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1208
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1209
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1210
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1211
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1212
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1213
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1214
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1215
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1216
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1217
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1218
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1219
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1220
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1221
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1222
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1223
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1224
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1225
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1226
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1227
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1228
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1229
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1230
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1231
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1232
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1233
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1234
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1235
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1236
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1237
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1238
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1239
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1240
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1241
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1242
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1243
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1244
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1245
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1246
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1247
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1248
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1249
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1250
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1251
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1252
	.value	0x3c7
	.byte	0
	.uleb128 0x16
	.long	.LASF1253
	.byte	0x11
	.value	0x478
	.long	0xad6
	.uleb128 0x1b
	.byte	0x38
	.byte	0x11
	.value	0x47b
	.long	0x24d3
	.uleb128 0x4
	.long	.LASF1254
	.byte	0x11
	.value	0x47d
	.byte	0xf
	.long	0xaca
	.byte	0
	.uleb128 0x4
	.long	.LASF1255
	.byte	0x11
	.value	0x47e
	.byte	0xa
	.long	0x95
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1256
	.byte	0x11
	.value	0x47f
	.byte	0xa
	.long	0x95
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1257
	.byte	0x11
	.value	0x481
	.byte	0xf
	.long	0x6a1
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1258
	.byte	0x11
	.value	0x482
	.byte	0x10
	.long	0x245b
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1259
	.byte	0x11
	.value	0x483
	.byte	0xa
	.long	0x95
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1260
	.byte	0x11
	.value	0x483
	.byte	0x11
	.long	0x95
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF1261
	.byte	0x11
	.value	0x484
	.long	0x2467
	.uleb128 0x30
	.byte	0x7
	.byte	0x4
	.long	0x79
	.byte	0x11
	.value	0x48b
	.byte	0xe
	.long	0x282b
	.uleb128 0x2
	.long	.LASF1262
	.byte	0
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1272
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1273
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1274
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1275
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1276
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1277
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1326
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1327
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1328
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1329
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1330
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1331
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1332
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1333
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1334
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1335
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1336
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1337
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1338
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1339
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1340
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1341
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1342
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1343
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1344
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1345
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1346
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1347
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1348
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1349
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1350
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1359
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1360
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1361
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1362
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1363
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1364
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1365
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1366
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1367
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1368
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1369
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1370
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1371
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1372
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1373
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1374
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1375
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1376
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1377
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1379
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1380
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1381
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1382
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1383
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1384
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1385
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1386
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1387
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1388
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1389
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1390
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1391
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1392
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1393
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1394
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1395
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1396
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1397
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1398
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1399
	.byte	0x89
	.byte	0
	.uleb128 0x16
	.long	.LASF1400
	.byte	0x11
	.value	0x517
	.long	0x24df
	.uleb128 0x1b
	.byte	0x5c
	.byte	0x11
	.value	0x519
	.long	0x2983
	.uleb128 0x4
	.long	.LASF1401
	.byte	0x11
	.value	0x51b
	.byte	0x9
	.long	0x8e
	.byte	0
	.uleb128 0x4
	.long	.LASF1402
	.byte	0x11
	.value	0x51c
	.byte	0x9
	.long	0x8e
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1403
	.byte	0x11
	.value	0x51d
	.byte	0x9
	.long	0x8e
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1404
	.byte	0x11
	.value	0x51e
	.byte	0x9
	.long	0x8e
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1405
	.byte	0x11
	.value	0x51f
	.byte	0x9
	.long	0x8e
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1406
	.byte	0x11
	.value	0x520
	.byte	0x9
	.long	0x8e
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1407
	.byte	0x11
	.value	0x521
	.byte	0x9
	.long	0x8e
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1408
	.byte	0x11
	.value	0x522
	.byte	0x9
	.long	0x8e
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1409
	.byte	0x11
	.value	0x523
	.byte	0x9
	.long	0x8e
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1410
	.byte	0x11
	.value	0x524
	.byte	0x9
	.long	0x8e
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1411
	.byte	0x11
	.value	0x525
	.byte	0x9
	.long	0x8e
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1412
	.byte	0x11
	.value	0x526
	.byte	0x9
	.long	0x8e
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1413
	.byte	0x11
	.value	0x527
	.byte	0x9
	.long	0x8e
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1414
	.byte	0x11
	.value	0x528
	.byte	0x9
	.long	0x8e
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1415
	.byte	0x11
	.value	0x529
	.byte	0x9
	.long	0x8e
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1416
	.byte	0x11
	.value	0x52a
	.byte	0x9
	.long	0x8e
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1417
	.byte	0x11
	.value	0x52b
	.byte	0x9
	.long	0x8e
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1418
	.byte	0x11
	.value	0x52c
	.byte	0x9
	.long	0x8e
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1419
	.byte	0x11
	.value	0x52d
	.byte	0x9
	.long	0x8e
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1420
	.byte	0x11
	.value	0x52e
	.byte	0x9
	.long	0x8e
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1421
	.byte	0x11
	.value	0x52f
	.byte	0x9
	.long	0x8e
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1422
	.byte	0x11
	.value	0x530
	.byte	0x9
	.long	0x8e
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1423
	.byte	0x11
	.value	0x531
	.byte	0x9
	.long	0x8e
	.byte	0x58
	.byte	0
	.uleb128 0x16
	.long	.LASF1424
	.byte	0x11
	.value	0x533
	.long	0x2837
	.uleb128 0x13
	.long	.LASF1425
	.byte	0xe0
	.byte	0x12
	.byte	0xcf
	.byte	0x10
	.long	0x2b67
	.uleb128 0x3
	.long	.LASF1426
	.byte	0x12
	.byte	0xd2
	.byte	0x10
	.long	0x6f3
	.byte	0
	.uleb128 0xb
	.string	"x"
	.byte	0x12
	.byte	0xd5
	.byte	0xe
	.long	0x616
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0x12
	.byte	0xd6
	.byte	0xe
	.long	0x616
	.byte	0x1c
	.uleb128 0xb
	.string	"z"
	.byte	0x12
	.byte	0xd7
	.byte	0xe
	.long	0x616
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1427
	.byte	0x12
	.byte	0xda
	.byte	0x14
	.long	0x2b67
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1428
	.byte	0x12
	.byte	0xdb
	.byte	0x14
	.long	0x2b67
	.byte	0x30
	.uleb128 0x3
	.long	.LASF141
	.byte	0x12
	.byte	0xde
	.byte	0xe
	.long	0x70d
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1254
	.byte	0x12
	.byte	0xdf
	.byte	0x12
	.long	0xaca
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1255
	.byte	0x12
	.byte	0xe0
	.byte	0xb
	.long	0x8e
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1429
	.byte	0x12
	.byte	0xe4
	.byte	0x14
	.long	0x2b67
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1430
	.byte	0x12
	.byte	0xe5
	.byte	0x14
	.long	0x2b67
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1431
	.byte	0x12
	.byte	0xe7
	.byte	0x19
	.long	0x2ba1
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1432
	.byte	0x12
	.byte	0xea
	.byte	0xe
	.long	0x616
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1433
	.byte	0x12
	.byte	0xeb
	.byte	0xe
	.long	0x616
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1417
	.byte	0x12
	.byte	0xee
	.byte	0xe
	.long	0x616
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1418
	.byte	0x12
	.byte	0xef
	.byte	0xe
	.long	0x616
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1434
	.byte	0x12
	.byte	0xf2
	.byte	0xe
	.long	0x616
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1435
	.byte	0x12
	.byte	0xf3
	.byte	0xe
	.long	0x616
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1436
	.byte	0x12
	.byte	0xf4
	.byte	0xe
	.long	0x616
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1437
	.byte	0x12
	.byte	0xf7
	.byte	0xb
	.long	0x8e
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF142
	.byte	0x12
	.byte	0xf9
	.byte	0x11
	.long	0x282b
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1438
	.byte	0x12
	.byte	0xfa
	.byte	0x12
	.long	0x2ba6
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1256
	.byte	0x12
	.byte	0xfc
	.byte	0xb
	.long	0x8e
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x12
	.byte	0xfd
	.byte	0xf
	.long	0x2bab
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1422
	.byte	0x12
	.byte	0xfe
	.byte	0xb
	.long	0x8e
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1440
	.byte	0x12
	.byte	0xff
	.byte	0xb
	.long	0x8e
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1441
	.byte	0x12
	.value	0x102
	.byte	0xb
	.long	0x8e
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1442
	.byte	0x12
	.value	0x103
	.byte	0xb
	.long	0x8e
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1443
	.byte	0x12
	.value	0x107
	.byte	0x14
	.long	0x2b67
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1406
	.byte	0x12
	.value	0x10b
	.byte	0xb
	.long	0x8e
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1444
	.byte	0x12
	.value	0x10f
	.byte	0xb
	.long	0x8e
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1445
	.byte	0x12
	.value	0x113
	.byte	0x16
	.long	0x2d85
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1446
	.byte	0x12
	.value	0x116
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1447
	.byte	0x12
	.value	0x119
	.byte	0x11
	.long	0x76f
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1448
	.byte	0x12
	.value	0x11c
	.byte	0x14
	.long	0x2b67
	.byte	0xd8
	.byte	0
	.uleb128 0x8
	.long	0x298f
	.uleb128 0x13
	.long	.LASF1449
	.byte	0x10
	.byte	0x13
	.byte	0xe3
	.byte	0x10
	.long	0x2ba1
	.uleb128 0x3
	.long	.LASF1450
	.byte	0x13
	.byte	0xe5
	.byte	0xf
	.long	0x2fc8
	.byte	0
	.uleb128 0x3
	.long	.LASF1451
	.byte	0x13
	.byte	0xe6
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1452
	.byte	0x13
	.byte	0xe7
	.byte	0xb
	.long	0x87
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x2b6c
	.uleb128 0x8
	.long	0x2983
	.uleb128 0x8
	.long	0x24d3
	.uleb128 0x31
	.long	.LASF1453
	.value	0x140
	.byte	0x14
	.byte	0x53
	.byte	0x10
	.long	0x2d85
	.uleb128 0xb
	.string	"mo"
	.byte	0x14
	.byte	0x55
	.byte	0xe
	.long	0x2edd
	.byte	0
	.uleb128 0x3
	.long	.LASF1454
	.byte	0x14
	.byte	0x56
	.byte	0x13
	.long	0x3104
	.byte	0x8
	.uleb128 0xb
	.string	"cmd"
	.byte	0x14
	.byte	0x57
	.byte	0xf
	.long	0x60a
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1455
	.byte	0x14
	.byte	0x5c
	.byte	0xe
	.long	0x616
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1456
	.byte	0x14
	.byte	0x5e
	.byte	0xe
	.long	0x616
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1457
	.byte	0x14
	.byte	0x60
	.byte	0x16
	.long	0x616
	.byte	0x1c
	.uleb128 0xb
	.string	"bob"
	.byte	0x14
	.byte	0x62
	.byte	0x16
	.long	0x616
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1440
	.byte	0x14
	.byte	0x66
	.byte	0xb
	.long	0x8e
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1458
	.byte	0x14
	.byte	0x67
	.byte	0xb
	.long	0x8e
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1459
	.byte	0x14
	.byte	0x69
	.byte	0xb
	.long	0x8e
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1460
	.byte	0x14
	.byte	0x6c
	.byte	0xb
	.long	0x3110
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1461
	.byte	0x14
	.byte	0x6d
	.byte	0xe
	.long	0x3120
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1462
	.byte	0x14
	.byte	0x6e
	.byte	0xe
	.long	0x59b
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1463
	.byte	0x14
	.byte	0x71
	.byte	0xb
	.long	0x2ee2
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1464
	.byte	0x14
	.byte	0x72
	.byte	0x12
	.long	0x4f6
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1465
	.byte	0x14
	.byte	0x75
	.byte	0x12
	.long	0x4f6
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1466
	.byte	0x14
	.byte	0x77
	.byte	0xe
	.long	0x3130
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1467
	.byte	0x14
	.byte	0x78
	.byte	0xb
	.long	0x2ee2
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1468
	.byte	0x14
	.byte	0x79
	.byte	0xb
	.long	0x2ee2
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1469
	.byte	0x14
	.byte	0x7c
	.byte	0xb
	.long	0x8e
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1470
	.byte	0x14
	.byte	0x7d
	.byte	0xb
	.long	0x8e
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1471
	.byte	0x14
	.byte	0x81
	.byte	0xb
	.long	0x8e
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1472
	.byte	0x14
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1473
	.byte	0x14
	.byte	0x87
	.byte	0xb
	.long	0x8e
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1474
	.byte	0x14
	.byte	0x88
	.byte	0xb
	.long	0x8e
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1475
	.byte	0x14
	.byte	0x89
	.byte	0xb
	.long	0x8e
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1476
	.byte	0x14
	.byte	0x8c
	.byte	0xc
	.long	0x13a
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1477
	.byte	0x14
	.byte	0x8f
	.byte	0xb
	.long	0x8e
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1478
	.byte	0x14
	.byte	0x90
	.byte	0xb
	.long	0x8e
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1479
	.byte	0x14
	.byte	0x93
	.byte	0xe
	.long	0x2edd
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1480
	.byte	0x14
	.byte	0x96
	.byte	0xb
	.long	0x8e
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1481
	.byte	0x14
	.byte	0x9a
	.byte	0xb
	.long	0x8e
	.byte	0xfc
	.uleb128 0x1e
	.long	.LASF1482
	.byte	0x9e
	.byte	0xb
	.long	0x8e
	.value	0x100
	.uleb128 0x1e
	.long	.LASF1483
	.byte	0xa1
	.byte	0xf
	.long	0x3140
	.value	0x108
	.uleb128 0x1e
	.long	.LASF1484
	.byte	0xa4
	.byte	0xe
	.long	0x59b
	.value	0x138
	.byte	0
	.uleb128 0x8
	.long	0x2bb0
	.uleb128 0x16
	.long	.LASF1485
	.byte	0x12
	.value	0x11e
	.long	0x298f
	.uleb128 0x14
	.byte	0x8
	.byte	0x13
	.byte	0x47
	.long	0x2db5
	.uleb128 0xb
	.string	"x"
	.byte	0x13
	.byte	0x49
	.byte	0xd
	.long	0x616
	.byte	0
	.uleb128 0xb
	.string	"y"
	.byte	0x13
	.byte	0x4a
	.byte	0xd
	.long	0x616
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF1486
	.byte	0x13
	.byte	0x4c
	.byte	0x3
	.long	0x2d96
	.uleb128 0x14
	.byte	0x28
	.byte	0x13
	.byte	0x58
	.long	0x2df8
	.uleb128 0x3
	.long	.LASF1426
	.byte	0x13
	.byte	0x5a
	.byte	0x10
	.long	0x6f3
	.byte	0
	.uleb128 0xb
	.string	"x"
	.byte	0x13
	.byte	0x5b
	.byte	0xe
	.long	0x616
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.byte	0x13
	.byte	0x5c
	.byte	0xe
	.long	0x616
	.byte	0x1c
	.uleb128 0xb
	.string	"z"
	.byte	0x13
	.byte	0x5d
	.byte	0xe
	.long	0x616
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	.LASF1487
	.byte	0x13
	.byte	0x5f
	.byte	0x3
	.long	0x2dc1
	.uleb128 0x14
	.byte	0x80
	.byte	0x13
	.byte	0x65
	.long	0x2edd
	.uleb128 0x3
	.long	.LASF1488
	.byte	0x13
	.byte	0x67
	.byte	0xd
	.long	0x616
	.byte	0
	.uleb128 0x3
	.long	.LASF1489
	.byte	0x13
	.byte	0x68
	.byte	0xd
	.long	0x616
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1490
	.byte	0x13
	.byte	0x69
	.byte	0xb
	.long	0x87
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1491
	.byte	0x13
	.byte	0x6a
	.byte	0xb
	.long	0x87
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1492
	.byte	0x13
	.byte	0x6b
	.byte	0xb
	.long	0x87
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1493
	.byte	0x13
	.byte	0x6c
	.byte	0xb
	.long	0x87
	.byte	0xe
	.uleb128 0xb
	.string	"tag"
	.byte	0x13
	.byte	0x6d
	.byte	0xb
	.long	0x87
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1494
	.byte	0x13
	.byte	0x70
	.byte	0xa
	.long	0x8e
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1495
	.byte	0x13
	.byte	0x73
	.byte	0xd
	.long	0x2edd
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1496
	.byte	0x13
	.byte	0x76
	.byte	0xa
	.long	0x2ee2
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1497
	.byte	0x13
	.byte	0x79
	.byte	0x11
	.long	0x2df8
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1437
	.byte	0x13
	.byte	0x7c
	.byte	0xa
	.long	0x8e
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1498
	.byte	0x13
	.byte	0x7f
	.byte	0xd
	.long	0x2edd
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1499
	.byte	0x13
	.byte	0x82
	.byte	0xb
	.long	0x108
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1500
	.byte	0x13
	.byte	0x84
	.byte	0xb
	.long	0x8e
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1501
	.byte	0x13
	.byte	0x85
	.byte	0x15
	.long	0x2fb2
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2d8a
	.uleb128 0x9
	.long	0x8e
	.long	0x2ef2
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF1502
	.byte	0x58
	.byte	0x13
	.byte	0xb3
	.byte	0x10
	.long	0x2fb2
	.uleb128 0xb
	.string	"v1"
	.byte	0x13
	.byte	0xb6
	.byte	0xf
	.long	0x2ffe
	.byte	0
	.uleb128 0xb
	.string	"v2"
	.byte	0x13
	.byte	0xb7
	.byte	0xf
	.long	0x2ffe
	.byte	0x8
	.uleb128 0xb
	.string	"dx"
	.byte	0x13
	.byte	0xba
	.byte	0xd
	.long	0x616
	.byte	0x10
	.uleb128 0xb
	.string	"dy"
	.byte	0x13
	.byte	0xbb
	.byte	0xd
	.long	0x616
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1422
	.byte	0x13
	.byte	0xbe
	.byte	0xb
	.long	0x87
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1493
	.byte	0x13
	.byte	0xbf
	.byte	0xb
	.long	0x87
	.byte	0x1a
	.uleb128 0xb
	.string	"tag"
	.byte	0x13
	.byte	0xc0
	.byte	0xb
	.long	0x87
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1503
	.byte	0x13
	.byte	0xc4
	.byte	0xb
	.long	0x719
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1504
	.byte	0x13
	.byte	0xc8
	.byte	0xd
	.long	0x3003
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1505
	.byte	0x13
	.byte	0xcb
	.byte	0x11
	.long	0x2ff2
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1506
	.byte	0x13
	.byte	0xcf
	.byte	0xf
	.long	0x2fc8
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1507
	.byte	0x13
	.byte	0xd0
	.byte	0xf
	.long	0x2fc8
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1437
	.byte	0x13
	.byte	0xd3
	.byte	0xa
	.long	0x8e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1499
	.byte	0x13
	.byte	0xd6
	.byte	0xb
	.long	0x108
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	0x2fb7
	.uleb128 0x8
	.long	0x2ef2
	.uleb128 0x6
	.long	.LASF1508
	.byte	0x13
	.byte	0x87
	.byte	0x3
	.long	0x2e04
	.uleb128 0x8
	.long	0x2fbc
	.uleb128 0xd
	.long	0x79
	.byte	0x13
	.byte	0xa9
	.byte	0x1
	.long	0x2ff2
	.uleb128 0x2
	.long	.LASF1509
	.byte	0
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1511
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1512
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF1513
	.byte	0x13
	.byte	0xaf
	.byte	0x3
	.long	0x2fcd
	.uleb128 0x8
	.long	0x2db5
	.uleb128 0x9
	.long	0x616
	.long	0x3013
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.byte	0x28
	.byte	0x13
	.value	0x164
	.long	0x3063
	.uleb128 0x4
	.long	.LASF1514
	.byte	0x13
	.value	0x166
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0x4
	.long	.LASF1418
	.byte	0x13
	.value	0x167
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0x4
	.long	.LASF1515
	.byte	0x13
	.value	0x168
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1516
	.byte	0x13
	.value	0x169
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0x4
	.long	.LASF1517
	.byte	0x13
	.value	0x16a
	.byte	0xb
	.long	0x3063
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x8e
	.long	0x3073
	.uleb128 0xa
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	.LASF1518
	.byte	0x13
	.value	0x16c
	.long	0x3013
	.uleb128 0xd
	.long	0x79
	.byte	0x15
	.byte	0x3d
	.byte	0x1
	.long	0x309e
	.uleb128 0x2
	.long	.LASF1519
	.byte	0
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x18
	.byte	0x15
	.byte	0x44
	.long	0x30d9
	.uleb128 0x3
	.long	.LASF1439
	.byte	0x15
	.byte	0x46
	.byte	0xe
	.long	0x2bab
	.byte	0
	.uleb128 0x3
	.long	.LASF1256
	.byte	0x15
	.byte	0x47
	.byte	0xa
	.long	0x8e
	.byte	0x8
	.uleb128 0xb
	.string	"sx"
	.byte	0x15
	.byte	0x48
	.byte	0xd
	.long	0x616
	.byte	0xc
	.uleb128 0xb
	.string	"sy"
	.byte	0x15
	.byte	0x49
	.byte	0xd
	.long	0x616
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF1522
	.byte	0x15
	.byte	0x4b
	.byte	0x3
	.long	0x309e
	.uleb128 0xd
	.long	0x79
	.byte	0x14
	.byte	0x36
	.byte	0x1
	.long	0x3104
	.uleb128 0x2
	.long	.LASF1523
	.byte	0
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF1526
	.byte	0x14
	.byte	0x3e
	.byte	0x3
	.long	0x30e5
	.uleb128 0x9
	.long	0x8e
	.long	0x3120
	.uleb128 0xa
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0x59b
	.long	0x3130
	.uleb128 0xa
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0x59b
	.long	0x3140
	.uleb128 0xa
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	0x30d9
	.long	0x3150
	.uleb128 0xa
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF1527
	.byte	0x14
	.byte	0xa6
	.byte	0x3
	.long	0x2bb0
	.uleb128 0x8
	.long	0x8e
	.uleb128 0x9
	.long	0x3171
	.long	0x3171
	.uleb128 0xa
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x5a7
	.uleb128 0x7
	.long	.LASF1528
	.byte	0x16
	.byte	0x2f
	.byte	0xf
	.long	0x3161
	.uleb128 0x7
	.long	.LASF1529
	.byte	0x16
	.byte	0x34
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1530
	.byte	0x17
	.byte	0x6d
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1531
	.byte	0x17
	.byte	0x6e
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1532
	.byte	0x17
	.byte	0x9e
	.byte	0xd
	.long	0x8e
	.uleb128 0x9
	.long	0x3150
	.long	0x31c2
	.uleb128 0xa
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF1533
	.byte	0x17
	.byte	0xd4
	.byte	0x11
	.long	0x31b2
	.uleb128 0x9
	.long	0x4a
	.long	0x31df
	.uleb128 0x32
	.long	0x43
	.value	0x3ff
	.byte	0
	.uleb128 0x7
	.long	.LASF1534
	.byte	0x17
	.byte	0xf4
	.byte	0xe
	.long	0x31ce
	.uleb128 0x7
	.long	.LASF1535
	.byte	0x17
	.byte	0xff
	.byte	0x19
	.long	0x8e
	.uleb128 0x9
	.long	0x13a
	.long	0x3202
	.uleb128 0x33
	.byte	0
	.uleb128 0x9
	.long	0x3212
	.long	0x3212
	.uleb128 0xa
	.long	0x43
	.byte	0x3e
	.byte	0
	.uleb128 0x8
	.long	0x3073
	.uleb128 0x7
	.long	.LASF1536
	.byte	0x1
	.byte	0x43
	.byte	0x12
	.long	0x3202
	.uleb128 0x18
	.long	.LASF1537
	.byte	0xa9
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	usemouse
	.uleb128 0x18
	.long	.LASF1538
	.byte	0xaa
	.byte	0x6
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	usejoystick
	.uleb128 0x7
	.long	.LASF1539
	.byte	0x1
	.byte	0xac
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1540
	.byte	0x1
	.byte	0xad
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1541
	.byte	0x1
	.byte	0xae
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1542
	.byte	0x1
	.byte	0xaf
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1543
	.byte	0x1
	.byte	0xb1
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1544
	.byte	0x1
	.byte	0xb2
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1545
	.byte	0x1
	.byte	0xb4
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1546
	.byte	0x1
	.byte	0xb5
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1547
	.byte	0x1
	.byte	0xb6
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1548
	.byte	0x1
	.byte	0xb7
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1549
	.byte	0x1
	.byte	0xb9
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1550
	.byte	0x1
	.byte	0xba
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1551
	.byte	0x1
	.byte	0xbb
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1552
	.byte	0x1
	.byte	0xbd
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1553
	.byte	0x1
	.byte	0xbe
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1554
	.byte	0x1
	.byte	0xbf
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1555
	.byte	0x1
	.byte	0xc0
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1556
	.byte	0x1
	.byte	0xc6
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1557
	.byte	0x1
	.byte	0xc8
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1558
	.byte	0x1
	.byte	0xca
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1559
	.byte	0x1
	.byte	0xcf
	.byte	0xc
	.long	0x8e
	.uleb128 0x7
	.long	.LASF1560
	.byte	0x1
	.byte	0xd4
	.byte	0xe
	.long	0x13a
	.uleb128 0x7
	.long	.LASF1561
	.byte	0x1
	.byte	0xd5
	.byte	0xc
	.long	0x8e
	.uleb128 0x18
	.long	.LASF1562
	.byte	0xd9
	.byte	0x8
	.long	0x13a
	.uleb128 0x9
	.byte	0x3
	.quad	mousetype
	.uleb128 0x18
	.long	.LASF1563
	.byte	0xda
	.byte	0x8
	.long	0x13a
	.uleb128 0x9
	.byte	0x3
	.quad	mousedev
	.uleb128 0x7
	.long	.LASF1564
	.byte	0x1
	.byte	0xdd
	.byte	0xe
	.long	0x31f7
	.uleb128 0x14
	.byte	0x20
	.byte	0x1
	.byte	0xe1
	.long	0x33e1
	.uleb128 0x3
	.long	.LASF1565
	.byte	0x1
	.byte	0xe3
	.byte	0xb
	.long	0x13a
	.byte	0
	.uleb128 0x3
	.long	.LASF1566
	.byte	0x1
	.byte	0xe4
	.byte	0xa
	.long	0x315c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1567
	.byte	0x1
	.byte	0xe5
	.byte	0xf
	.long	0x267
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1568
	.byte	0x1
	.byte	0xe6
	.byte	0xa
	.long	0x8e
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1569
	.byte	0x1
	.byte	0xe7
	.byte	0xa
	.long	0x8e
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.long	.LASF1570
	.byte	0x1
	.byte	0xe8
	.byte	0x3
	.long	0x3397
	.uleb128 0x9
	.long	0x33e1
	.long	0x33fd
	.uleb128 0xa
	.long	0x43
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.long	.LASF1571
	.byte	0xea
	.byte	0xb
	.long	0x33ed
	.uleb128 0x9
	.byte	0x3
	.quad	defaults
	.uleb128 0x24
	.long	.LASF1572
	.value	0x12d
	.byte	0x5
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	numdefaults
	.uleb128 0x24
	.long	.LASF1573
	.value	0x12e
	.byte	0x7
	.long	0x13a
	.uleb128 0x9
	.byte	0x3
	.quad	defaultfile
	.uleb128 0x1b
	.byte	0x82
	.byte	0x1
	.value	0x19b
	.long	0x3536
	.uleb128 0x4
	.long	.LASF1574
	.byte	0x1
	.value	0x19d
	.byte	0xb
	.long	0x4a
	.byte	0
	.uleb128 0x4
	.long	.LASF1575
	.byte	0x1
	.value	0x19e
	.byte	0xb
	.long	0x4a
	.byte	0x1
	.uleb128 0x4
	.long	.LASF1576
	.byte	0x1
	.value	0x19f
	.byte	0xb
	.long	0x4a
	.byte	0x2
	.uleb128 0x4
	.long	.LASF1577
	.byte	0x1
	.value	0x1a0
	.byte	0xb
	.long	0x4a
	.byte	0x3
	.uleb128 0x4
	.long	.LASF1578
	.byte	0x1
	.value	0x1a2
	.byte	0x14
	.long	0x72
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1579
	.byte	0x1
	.value	0x1a3
	.byte	0x14
	.long	0x72
	.byte	0x6
	.uleb128 0x4
	.long	.LASF1580
	.byte	0x1
	.value	0x1a4
	.byte	0x14
	.long	0x72
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1581
	.byte	0x1
	.value	0x1a5
	.byte	0x14
	.long	0x72
	.byte	0xa
	.uleb128 0x4
	.long	.LASF1582
	.byte	0x1
	.value	0x1a7
	.byte	0x14
	.long	0x72
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1583
	.byte	0x1
	.value	0x1a8
	.byte	0x14
	.long	0x72
	.byte	0xe
	.uleb128 0x4
	.long	.LASF1584
	.byte	0x1
	.value	0x1aa
	.byte	0x13
	.long	0x3536
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1585
	.byte	0x1
	.value	0x1ac
	.byte	0xb
	.long	0x4a
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1586
	.byte	0x1
	.value	0x1ad
	.byte	0xb
	.long	0x4a
	.byte	0x41
	.uleb128 0x4
	.long	.LASF1587
	.byte	0x1
	.value	0x1ae
	.byte	0x14
	.long	0x72
	.byte	0x42
	.uleb128 0x4
	.long	.LASF1588
	.byte	0x1
	.value	0x1af
	.byte	0x14
	.long	0x72
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1589
	.byte	0x1
	.value	0x1b1
	.byte	0xb
	.long	0x3546
	.byte	0x46
	.uleb128 0x4
	.long	.LASF1590
	.byte	0x1
	.value	0x1b2
	.byte	0x13
	.long	0x6b
	.byte	0x80
	.byte	0
	.uleb128 0x9
	.long	0x6b
	.long	0x3546
	.uleb128 0xa
	.long	0x43
	.byte	0x2f
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.long	0x3556
	.uleb128 0xa
	.long	0x43
	.byte	0x39
	.byte	0
	.uleb128 0x16
	.long	.LASF1591
	.byte	0x1
	.value	0x1b3
	.long	0x343e
	.uleb128 0xe
	.long	.LASF1592
	.byte	0x18
	.byte	0x4f
	.byte	0x7
	.long	0x108
	.long	0x357d
	.uleb128 0x5
	.long	0x13a
	.uleb128 0x5
	.long	0x8e
	.byte	0
	.uleb128 0xf
	.long	.LASF1593
	.byte	0x19
	.value	0x11f
	.byte	0xc
	.long	0x8e
	.long	0x3599
	.uleb128 0x5
	.long	0x279
	.uleb128 0x5
	.long	0x8e
	.byte	0
	.uleb128 0x19
	.long	.LASF1594
	.byte	0x1a
	.byte	0x33
	.byte	0x6
	.long	0x35ab
	.uleb128 0x5
	.long	0x3171
	.byte	0
	.uleb128 0x19
	.long	.LASF1595
	.byte	0x1b
	.byte	0x31
	.byte	0x9
	.long	0x35bd
	.uleb128 0x5
	.long	0x108
	.byte	0
	.uleb128 0xe
	.long	.LASF1596
	.byte	0x1c
	.byte	0x3d
	.byte	0xe
	.long	0x108
	.long	0x35dd
	.uleb128 0x5
	.long	0x108
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x254
	.byte	0
	.uleb128 0xf
	.long	.LASF1597
	.byte	0x1d
	.value	0x35e
	.byte	0xc
	.long	0x8e
	.long	0x35f4
	.uleb128 0x5
	.long	0x466
	.byte	0
	.uleb128 0xe
	.long	.LASF1598
	.byte	0x1c
	.byte	0x9c
	.byte	0xc
	.long	0x8e
	.long	0x360f
	.uleb128 0x5
	.long	0x279
	.uleb128 0x5
	.long	0x279
	.byte	0
	.uleb128 0x25
	.long	.LASF1602
	.value	0x1d4
	.long	.LASF1604
	.long	0x8e
	.long	0x362e
	.uleb128 0x5
	.long	0x279
	.uleb128 0x5
	.long	0x279
	.uleb128 0x15
	.byte	0
	.uleb128 0xe
	.long	.LASF1599
	.byte	0x1c
	.byte	0x8d
	.byte	0xe
	.long	0x13a
	.long	0x3649
	.uleb128 0x5
	.long	0x13a
	.uleb128 0x5
	.long	0x279
	.byte	0
	.uleb128 0xf
	.long	.LASF1600
	.byte	0x1e
	.value	0x2a0
	.byte	0xe
	.long	0x108
	.long	0x3660
	.uleb128 0x5
	.long	0x254
	.byte	0
	.uleb128 0xf
	.long	.LASF1601
	.byte	0x1c
	.value	0x197
	.byte	0xf
	.long	0x254
	.long	0x3677
	.uleb128 0x5
	.long	0x279
	.byte	0
	.uleb128 0x25
	.long	.LASF1603
	.value	0x1cf
	.long	.LASF1605
	.long	0x8e
	.long	0x3696
	.uleb128 0x5
	.long	0x46b
	.uleb128 0x5
	.long	0x27e
	.uleb128 0x15
	.byte	0
	.uleb128 0xf
	.long	.LASF1606
	.byte	0x1d
	.value	0x16b
	.byte	0xc
	.long	0x8e
	.long	0x36ae
	.uleb128 0x5
	.long	0x279
	.uleb128 0x15
	.byte	0
	.uleb128 0xe
	.long	.LASF1607
	.byte	0xa
	.byte	0x22
	.byte	0x5
	.long	0x8e
	.long	0x36c4
	.uleb128 0x5
	.long	0x13a
	.byte	0
	.uleb128 0xe
	.long	.LASF1608
	.byte	0x1d
	.byte	0xb8
	.byte	0xc
	.long	0x8e
	.long	0x36da
	.uleb128 0x5
	.long	0x466
	.byte	0
	.uleb128 0xf
	.long	.LASF1609
	.byte	0x1d
	.value	0x165
	.byte	0xc
	.long	0x8e
	.long	0x36f7
	.uleb128 0x5
	.long	0x46b
	.uleb128 0x5
	.long	0x27e
	.uleb128 0x15
	.byte	0
	.uleb128 0xf
	.long	.LASF1610
	.byte	0x1d
	.value	0x108
	.byte	0xe
	.long	0x466
	.long	0x3713
	.uleb128 0x5
	.long	0x27e
	.uleb128 0x5
	.long	0x27e
	.byte	0
	.uleb128 0xf
	.long	.LASF1611
	.byte	0x19
	.value	0x173
	.byte	0x10
	.long	0x248
	.long	0x3734
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x108
	.uleb128 0x5
	.long	0x254
	.byte	0
	.uleb128 0xe
	.long	.LASF1612
	.byte	0x1b
	.byte	0x30
	.byte	0x7
	.long	0x108
	.long	0x3754
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x108
	.byte	0
	.uleb128 0xe
	.long	.LASF1613
	.byte	0x1f
	.byte	0xd2
	.byte	0xc
	.long	0x8e
	.long	0x376f
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x376f
	.byte	0
	.uleb128 0x8
	.long	0x167
	.uleb128 0x19
	.long	.LASF1614
	.byte	0x20
	.byte	0x59
	.byte	0x6
	.long	0x3787
	.uleb128 0x5
	.long	0x13a
	.uleb128 0x15
	.byte	0
	.uleb128 0xf
	.long	.LASF1615
	.byte	0x19
	.value	0x166
	.byte	0xc
	.long	0x8e
	.long	0x379e
	.uleb128 0x5
	.long	0x8e
	.byte	0
	.uleb128 0xf
	.long	.LASF1616
	.byte	0x19
	.value	0x17a
	.byte	0x10
	.long	0x248
	.long	0x37bf
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x26e
	.uleb128 0x5
	.long	0x254
	.byte	0
	.uleb128 0xe
	.long	.LASF1617
	.byte	0x21
	.byte	0xd1
	.byte	0xc
	.long	0x8e
	.long	0x37db
	.uleb128 0x5
	.long	0x279
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x15
	.byte	0
	.uleb128 0x19
	.long	.LASF1618
	.byte	0x16
	.byte	0x48
	.byte	0x1
	.long	0x37fc
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x3212
	.byte	0
	.uleb128 0x19
	.long	.LASF1619
	.byte	0x16
	.byte	0x4f
	.byte	0x1
	.long	0x381d
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x8e
	.uleb128 0x5
	.long	0x3212
	.byte	0
	.uleb128 0xe
	.long	.LASF1620
	.byte	0x22
	.byte	0x7d
	.byte	0xc
	.long	0x8e
	.long	0x3833
	.uleb128 0x5
	.long	0x8e
	.byte	0
	.uleb128 0x1c
	.long	.LASF1624
	.value	0x1f7
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x387d
	.uleb128 0x10
	.string	"i"
	.value	0x1f9
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.long	.LASF1622
	.value	0x1fa
	.byte	0xb
	.long	0x3171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF1623
	.value	0x1fb
	.byte	0xa
	.long	0x387d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.long	0x388d
	.uleb128 0xa
	.long	0x43
	.byte	0xb
	.byte	0
	.uleb128 0x1c
	.long	.LASF1625
	.value	0x1ba
	.byte	0x1
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3934
	.uleb128 0x1a
	.long	.LASF1626
	.value	0x1bb
	.byte	0xa
	.long	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF1590
	.value	0x1bc
	.byte	0xa
	.long	0x3171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF1514
	.value	0x1bd
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.long	.LASF1418
	.value	0x1be
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF1584
	.value	0x1bf
	.byte	0xa
	.long	0x3171
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"i"
	.value	0x1c1
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF1627
	.value	0x1c2
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.string	"pcx"
	.value	0x1c3
	.byte	0xc
	.long	0x3934
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF1628
	.value	0x1c4
	.byte	0xb
	.long	0x3171
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0x3556
	.uleb128 0x1c
	.long	.LASF1629
	.value	0x154
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x39d4
	.uleb128 0x10
	.string	"i"
	.value	0x156
	.byte	0xa
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x10
	.string	"len"
	.value	0x157
	.byte	0xa
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x10
	.string	"f"
	.value	0x158
	.byte	0xb
	.long	0x466
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x10
	.string	"def"
	.value	0x159
	.byte	0xa
	.long	0x39d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x11
	.long	.LASF1630
	.value	0x15a
	.byte	0xa
	.long	0x39e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x11
	.long	.LASF1631
	.value	0x15b
	.byte	0xb
	.long	0x13a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x11
	.long	.LASF1632
	.value	0x15c
	.byte	0xa
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x11
	.long	.LASF1633
	.value	0x15d
	.byte	0xd
	.long	0x59b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.long	0x39e4
	.uleb128 0xa
	.long	0x43
	.byte	0x4f
	.byte	0
	.uleb128 0x9
	.long	0x4a
	.long	0x39f4
	.uleb128 0xa
	.long	0x43
	.byte	0x63
	.byte	0
	.uleb128 0x1c
	.long	.LASF1634
	.value	0x134
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a3a
	.uleb128 0x10
	.string	"i"
	.value	0x136
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"v"
	.value	0x137
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"f"
	.value	0x138
	.byte	0xb
	.long	0x466
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF1639
	.byte	0x8c
	.long	0x8e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ac4
	.uleb128 0x17
	.long	.LASF1565
	.byte	0x8d
	.byte	0xf
	.long	0x279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x17
	.long	.LASF1635
	.byte	0x8e
	.byte	0xa
	.long	0x3ac4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x12
	.long	.LASF1636
	.byte	0x90
	.byte	0x9
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x12
	.long	.LASF1637
	.byte	0x90
	.byte	0x11
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x12
	.long	.LASF1627
	.byte	0x90
	.byte	0x18
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x12
	.long	.LASF1638
	.byte	0x91
	.byte	0x11
	.long	0x167
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.string	"buf"
	.byte	0x92
	.byte	0xc
	.long	0x3171
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x8
	.long	0x3171
	.uleb128 0x26
	.long	.LASF1640
	.byte	0x71
	.long	0x59b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b30
	.uleb128 0x17
	.long	.LASF1565
	.byte	0x72
	.byte	0xf
	.long	0x279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF1641
	.byte	0x73
	.byte	0xa
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LASF1627
	.byte	0x74
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.long	.LASF1636
	.byte	0x76
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF1637
	.byte	0x77
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF1642
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	0x8e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.string	"x"
	.byte	0x47
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.string	"y"
	.byte	0x48
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF1643
	.byte	0x49
	.byte	0xb
	.long	0x59b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF1644
	.byte	0x4a
	.byte	0xa
	.long	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"c"
	.byte	0x4c
	.byte	0xa
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"w"
	.byte	0x4d
	.byte	0xa
	.long	0x8e
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
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 20
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 29
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
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
.LASF294:
	.string	"S_PUNCH5"
.LASF922:
	.string	"S_BSPI_RUN3"
.LASF923:
	.string	"S_BSPI_RUN4"
.LASF924:
	.string	"S_BSPI_RUN5"
.LASF925:
	.string	"S_BSPI_RUN6"
.LASF926:
	.string	"S_BSPI_RUN7"
.LASF927:
	.string	"S_BSPI_RUN8"
.LASF928:
	.string	"S_BSPI_RUN9"
.LASF212:
	.string	"SPR_YSKU"
.LASF1479:
	.string	"attacker"
.LASF575:
	.string	"S_FIRE10"
.LASF576:
	.string	"S_FIRE11"
.LASF577:
	.string	"S_FIRE12"
.LASF578:
	.string	"S_FIRE13"
.LASF579:
	.string	"S_FIRE14"
.LASF580:
	.string	"S_FIRE15"
.LASF581:
	.string	"S_FIRE16"
.LASF582:
	.string	"S_FIRE17"
.LASF75:
	.string	"_unused2"
.LASF584:
	.string	"S_FIRE19"
.LASF1396:
	.string	"MT_MISC84"
.LASF1329:
	.string	"MT_MISC20"
.LASF1143:
	.string	"S_MEGA2"
.LASF61:
	.string	"_fileno"
.LASF1145:
	.string	"S_MEGA4"
.LASF1333:
	.string	"MT_MISC24"
.LASF1334:
	.string	"MT_MISC25"
.LASF1336:
	.string	"MT_MISC26"
.LASF1337:
	.string	"MT_MISC27"
.LASF1338:
	.string	"MT_MISC28"
.LASF1341:
	.string	"MT_MISC29"
.LASF774:
	.string	"S_SARG_PAIN2"
.LASF1544:
	.string	"key_straferight"
.LASF1444:
	.string	"threshold"
.LASF88:
	.string	"wp_pistol"
.LASF253:
	.string	"SPR_COL1"
.LASF254:
	.string	"SPR_COL2"
.LASF255:
	.string	"SPR_COL3"
.LASF256:
	.string	"SPR_COL4"
.LASF265:
	.string	"SPR_COL5"
.LASF259:
	.string	"SPR_COL6"
.LASF1636:
	.string	"handle"
.LASF585:
	.string	"S_FIRE20"
.LASF586:
	.string	"S_FIRE21"
.LASF587:
	.string	"S_FIRE22"
.LASF588:
	.string	"S_FIRE23"
.LASF589:
	.string	"S_FIRE24"
.LASF239:
	.string	"SPR_COLU"
.LASF591:
	.string	"S_FIRE26"
.LASF592:
	.string	"S_FIRE27"
.LASF593:
	.string	"S_FIRE28"
.LASF594:
	.string	"S_FIRE29"
.LASF1511:
	.string	"ST_POSITIVE"
.LASF1342:
	.string	"MT_MISC30"
.LASF1257:
	.string	"action"
.LASF1344:
	.string	"MT_MISC32"
.LASF1345:
	.string	"MT_MISC33"
.LASF936:
	.string	"S_BSPI_PAIN"
.LASF1347:
	.string	"MT_MISC35"
.LASF408:
	.string	"S_BFGEXP"
.LASF102:
	.string	"am_misl"
.LASF1350:
	.string	"MT_MISC38"
.LASF1351:
	.string	"MT_MISC39"
.LASF1490:
	.string	"floorpic"
.LASF938:
	.string	"S_BSPI_DIE1"
.LASF1521:
	.string	"NUMPSPRITES"
.LASF943:
	.string	"S_BSPI_DIE6"
.LASF639:
	.string	"S_SKEL_RAISE4"
.LASF1455:
	.string	"viewz"
.LASF834:
	.string	"S_BOSS_RAISE1"
.LASF1629:
	.string	"M_LoadDefaults"
.LASF835:
	.string	"S_BOSS_RAISE2"
.LASF1276:
	.string	"MT_HEAD"
.LASF836:
	.string	"S_BOSS_RAISE3"
.LASF595:
	.string	"S_FIRE30"
.LASF740:
	.string	"S_TROO_PAIN"
.LASF1029:
	.string	"S_SSWV_DIE1"
.LASF839:
	.string	"S_BOSS_RAISE6"
.LASF1031:
	.string	"S_SSWV_DIE3"
.LASF1032:
	.string	"S_SSWV_DIE4"
.LASF1033:
	.string	"S_SSWV_DIE5"
.LASF207:
	.string	"SPR_BKEY"
.LASF851:
	.string	"S_BOS2_ATK1"
.LASF852:
	.string	"S_BOS2_ATK2"
.LASF853:
	.string	"S_BOS2_ATK3"
.LASF241:
	.string	"SPR_GOR1"
.LASF248:
	.string	"SPR_GOR2"
.LASF66:
	.string	"_shortbuf"
.LASF250:
	.string	"SPR_GOR4"
.LASF251:
	.string	"SPR_GOR5"
.LASF1354:
	.string	"MT_MISC42"
.LASF1355:
	.string	"MT_MISC43"
.LASF608:
	.string	"S_SKEL_RUN1"
.LASF609:
	.string	"S_SKEL_RUN2"
.LASF610:
	.string	"S_SKEL_RUN3"
.LASF611:
	.string	"S_SKEL_RUN4"
.LASF612:
	.string	"S_SKEL_RUN5"
.LASF613:
	.string	"S_SKEL_RUN6"
.LASF614:
	.string	"S_SKEL_RUN7"
.LASF615:
	.string	"S_SKEL_RUN8"
.LASF616:
	.string	"S_SKEL_RUN9"
.LASF91:
	.string	"wp_missile"
.LASF1094:
	.string	"S_BEXP2"
.LASF1404:
	.string	"seestate"
.LASF789:
	.string	"S_HEAD_ATK1"
.LASF790:
	.string	"S_HEAD_ATK2"
.LASF791:
	.string	"S_HEAD_ATK3"
.LASF1505:
	.string	"slopetype"
.LASF1043:
	.string	"S_SSWV_RAISE1"
.LASF1044:
	.string	"S_SSWV_RAISE2"
.LASF1045:
	.string	"S_SSWV_RAISE3"
.LASF1046:
	.string	"S_SSWV_RAISE4"
.LASF1047:
	.string	"S_SSWV_RAISE5"
.LASF141:
	.string	"angle"
.LASF1271:
	.string	"MT_FATSHOT"
.LASF227:
	.string	"SPR_CELL"
.LASF228:
	.string	"SPR_CELP"
.LASF1209:
	.string	"S_HEARTCOL"
.LASF1500:
	.string	"linecount"
.LASF1561:
	.string	"mb_used"
.LASF1451:
	.string	"numlines"
.LASF1126:
	.string	"S_MEDI"
.LASF1133:
	.string	"S_PINV"
.LASF1320:
	.string	"MT_INS"
.LASF1363:
	.string	"MT_MISC51"
.LASF1364:
	.string	"MT_MISC52"
.LASF1318:
	.string	"MT_INV"
.LASF1366:
	.string	"MT_MISC54"
.LASF1223:
	.string	"S_BTORCHSHRT"
.LASF344:
	.string	"S_MISSILEUP"
.LASF1369:
	.string	"MT_MISC57"
.LASF1370:
	.string	"MT_MISC58"
.LASF1371:
	.string	"MT_MISC59"
.LASF521:
	.string	"S_SPOS_RAISE1"
.LASF1550:
	.string	"mousebstrafe"
.LASF315:
	.string	"S_SGUNFLASH1"
.LASF316:
	.string	"S_SGUNFLASH2"
.LASF863:
	.string	"S_BOS2_RAISE1"
.LASF864:
	.string	"S_BOS2_RAISE2"
.LASF865:
	.string	"S_BOS2_RAISE3"
.LASF866:
	.string	"S_BOS2_RAISE4"
.LASF867:
	.string	"S_BOS2_RAISE5"
.LASF47:
	.string	"_flags"
.LASF869:
	.string	"S_BOS2_RAISE7"
.LASF628:
	.string	"S_SKEL_PAIN"
.LASF1115:
	.string	"S_RKEY"
.LASF135:
	.string	"next"
.LASF1627:
	.string	"length"
.LASF297:
	.string	"S_PISTOLUP"
.LASF983:
	.string	"S_CYBER_DIE8"
.LASF984:
	.string	"S_CYBER_DIE9"
.LASF16:
	.string	"__off_t"
.LASF1372:
	.string	"MT_MISC60"
.LASF1373:
	.string	"MT_MISC61"
.LASF1374:
	.string	"MT_MISC62"
.LASF1375:
	.string	"MT_MISC63"
.LASF1376:
	.string	"MT_MISC64"
.LASF1377:
	.string	"MT_MISC65"
.LASF1378:
	.string	"MT_MISC66"
.LASF1379:
	.string	"MT_MISC67"
.LASF412:
	.string	"S_EXPLODE1"
.LASF413:
	.string	"S_EXPLODE2"
.LASF414:
	.string	"S_EXPLODE3"
.LASF1577:
	.string	"bits_per_pixel"
.LASF603:
	.string	"S_TRACEEXP1"
.LASF35:
	.string	"st_size"
.LASF605:
	.string	"S_TRACEEXP3"
.LASF991:
	.string	"S_PAIN_RUN5"
.LASF1093:
	.string	"S_BEXP"
.LASF992:
	.string	"S_PAIN_RUN6"
.LASF1480:
	.string	"extralight"
.LASF1210:
	.string	"S_HEARTCOL2"
.LASF389:
	.string	"S_RBALLX1"
.LASF1418:
	.string	"height"
.LASF1303:
	.string	"MT_TELEPORTMAN"
.LASF67:
	.string	"_lock"
.LASF1382:
	.string	"MT_MISC70"
.LASF172:
	.string	"SPR_IFOG"
.LASF1384:
	.string	"MT_MISC72"
.LASF1385:
	.string	"MT_MISC73"
.LASF1386:
	.string	"MT_MISC74"
.LASF1387:
	.string	"MT_MISC75"
.LASF1388:
	.string	"MT_MISC76"
.LASF1216:
	.string	"S_GREENTORCH2"
.LASF1217:
	.string	"S_GREENTORCH3"
.LASF1218:
	.string	"S_GREENTORCH4"
.LASF1057:
	.string	"S_COMMKEEN9"
.LASF706:
	.string	"S_CPOS_PAIN2"
.LASF929:
	.string	"S_BSPI_RUN10"
.LASF930:
	.string	"S_BSPI_RUN11"
.LASF931:
	.string	"S_BSPI_RUN12"
.LASF1013:
	.string	"S_SSWV_RUN1"
.LASF1014:
	.string	"S_SSWV_RUN2"
.LASF1015:
	.string	"S_SSWV_RUN3"
.LASF1016:
	.string	"S_SSWV_RUN4"
.LASF1017:
	.string	"S_SSWV_RUN5"
.LASF1018:
	.string	"S_SSWV_RUN6"
.LASF1019:
	.string	"S_SSWV_RUN7"
.LASF1020:
	.string	"S_SSWV_RUN8"
.LASF1198:
	.string	"S_SKULLCOL"
.LASF1270:
	.string	"MT_FATSO"
.LASF742:
	.string	"S_TROO_DIE1"
.LASF743:
	.string	"S_TROO_DIE2"
.LASF744:
	.string	"S_TROO_DIE3"
.LASF745:
	.string	"S_TROO_DIE4"
.LASF746:
	.string	"S_TROO_DIE5"
.LASF1590:
	.string	"data"
.LASF1123:
	.string	"S_YSKULL"
.LASF1124:
	.string	"S_YSKULL2"
.LASF225:
	.string	"SPR_ROCK"
.LASF1295:
	.string	"MT_ROCKET"
.LASF1393:
	.string	"MT_MISC81"
.LASF1394:
	.string	"MT_MISC82"
.LASF1395:
	.string	"MT_MISC83"
.LASF701:
	.string	"S_CPOS_ATK1"
.LASF702:
	.string	"S_CPOS_ATK2"
.LASF703:
	.string	"S_CPOS_ATK3"
.LASF704:
	.string	"S_CPOS_ATK4"
.LASF36:
	.string	"st_blksize"
.LASF1131:
	.string	"S_SOUL5"
.LASF237:
	.string	"SPR_SHOT"
.LASF430:
	.string	"S_IFOG2"
.LASF431:
	.string	"S_IFOG3"
.LASF432:
	.string	"S_IFOG4"
.LASF433:
	.string	"S_IFOG5"
.LASF166:
	.string	"SPR_PLSE"
.LASF158:
	.string	"SPR_PLSF"
.LASF157:
	.string	"SPR_PLSG"
.LASF826:
	.string	"S_BOSS_PAIN2"
.LASF1532:
	.string	"consoleplayer"
.LASF526:
	.string	"S_VILE_STND"
.LASF1054:
	.string	"S_COMMKEEN6"
.LASF1055:
	.string	"S_COMMKEEN7"
.LASF1056:
	.string	"S_COMMKEEN8"
.LASF165:
	.string	"SPR_PLSS"
.LASF905:
	.string	"S_SPID_PAIN2"
.LASF1619:
	.string	"V_DrawPatchDirect"
.LASF1630:
	.string	"strparm"
.LASF1419:
	.string	"mass"
.LASF278:
	.string	"SPR_POB1"
.LASF279:
	.string	"SPR_POB2"
.LASF1127:
	.string	"S_SOUL"
.LASF1582:
	.string	"hres"
.LASF1137:
	.string	"S_PSTR"
.LASF969:
	.string	"S_CYBER_ATK1"
.LASF970:
	.string	"S_CYBER_ATK2"
.LASF971:
	.string	"S_CYBER_ATK3"
.LASF972:
	.string	"S_CYBER_ATK4"
.LASF973:
	.string	"S_CYBER_ATK5"
.LASF974:
	.string	"S_CYBER_ATK6"
.LASF1164:
	.string	"S_BFUG"
.LASF204:
	.string	"SPR_FCAN"
.LASF32:
	.string	"st_gid"
.LASF647:
	.string	"S_FATT_STND"
.LASF1084:
	.string	"S_BRAINEXPLODE1"
.LASF1085:
	.string	"S_BRAINEXPLODE2"
.LASF1086:
	.string	"S_BRAINEXPLODE3"
.LASF1631:
	.string	"newstring"
.LASF368:
	.string	"S_BFGUP"
.LASF1641:
	.string	"source"
.LASF209:
	.string	"SPR_YKEY"
.LASF755:
	.string	"S_TROO_RAISE1"
.LASF756:
	.string	"S_TROO_RAISE2"
.LASF757:
	.string	"S_TROO_RAISE3"
.LASF758:
	.string	"S_TROO_RAISE4"
.LASF759:
	.string	"S_TROO_RAISE5"
.LASF1168:
	.string	"S_PLAS"
.LASF1050:
	.string	"S_COMMKEEN2"
.LASF1051:
	.string	"S_COMMKEEN3"
.LASF1052:
	.string	"S_COMMKEEN4"
.LASF1053:
	.string	"S_COMMKEEN5"
.LASF434:
	.string	"S_PLAY"
.LASF1000:
	.string	"S_PAIN_DIE2"
.LASF1001:
	.string	"S_PAIN_DIE3"
.LASF1002:
	.string	"S_PAIN_DIE4"
.LASF1003:
	.string	"S_PAIN_DIE5"
.LASF1004:
	.string	"S_PAIN_DIE6"
.LASF22:
	.string	"__syscall_slong_t"
.LASF555:
	.string	"S_VILE_PAIN2"
.LASF1537:
	.string	"usemouse"
.LASF683:
	.string	"S_FATT_RAISE1"
.LASF92:
	.string	"wp_plasma"
.LASF685:
	.string	"S_FATT_RAISE3"
.LASF604:
	.string	"S_TRACEEXP2"
.LASF687:
	.string	"S_FATT_RAISE5"
.LASF688:
	.string	"S_FATT_RAISE6"
.LASF53:
	.string	"_IO_write_end"
.LASF690:
	.string	"S_FATT_RAISE8"
.LASF399:
	.string	"S_ROCKET"
.LASF1294:
	.string	"MT_HEADSHOT"
.LASF1608:
	.string	"fclose"
.LASF1503:
	.string	"sidenum"
.LASF29:
	.string	"st_nlink"
.LASF1555:
	.string	"joybspeed"
.LASF952:
	.string	"S_ARACH_PLAZ"
.LASF1191:
	.string	"S_STALAGTITE"
.LASF793:
	.string	"S_HEAD_PAIN2"
.LASF794:
	.string	"S_HEAD_PAIN3"
.LASF117:
	.string	"byte"
.LASF40:
	.string	"st_ctim"
.LASF1301:
	.string	"MT_TFOG"
.LASF502:
	.string	"S_SPOS_ATK1"
.LASF503:
	.string	"S_SPOS_ATK2"
.LASF504:
	.string	"S_SPOS_ATK3"
.LASF439:
	.string	"S_PLAY_ATK1"
.LASF440:
	.string	"S_PLAY_ATK2"
.LASF192:
	.string	"SPR_APLS"
.LASF470:
	.string	"S_POSS_ATK2"
.LASF1273:
	.string	"MT_TROOP"
.LASF1472:
	.string	"refire"
.LASF381:
	.string	"S_PUFF4"
.LASF1548:
	.string	"key_speed"
.LASF1220:
	.string	"S_REDTORCH2"
.LASF1221:
	.string	"S_REDTORCH3"
.LASF1222:
	.string	"S_REDTORCH4"
.LASF729:
	.string	"S_TROO_RUN1"
.LASF730:
	.string	"S_TROO_RUN2"
.LASF731:
	.string	"S_TROO_RUN3"
.LASF732:
	.string	"S_TROO_RUN4"
.LASF733:
	.string	"S_TROO_RUN5"
.LASF734:
	.string	"S_TROO_RUN6"
.LASF735:
	.string	"S_TROO_RUN7"
.LASF736:
	.string	"S_TROO_RUN8"
.LASF183:
	.string	"SPR_CPOS"
.LASF644:
	.string	"S_FATSHOTX1"
.LASF645:
	.string	"S_FATSHOTX2"
.LASF646:
	.string	"S_FATSHOTX3"
.LASF724:
	.string	"S_CPOS_RAISE5"
.LASF725:
	.string	"S_CPOS_RAISE6"
.LASF726:
	.string	"S_CPOS_RAISE7"
.LASF1571:
	.string	"defaults"
.LASF1610:
	.string	"fopen"
.LASF1588:
	.string	"palette_type"
.LASF87:
	.string	"wp_fist"
.LASF1412:
	.string	"missilestate"
.LASF213:
	.string	"SPR_STIM"
.LASF760:
	.string	"S_SARG_STND"
.LASF985:
	.string	"S_CYBER_DIE10"
.LASF163:
	.string	"SPR_BAL1"
.LASF164:
	.string	"SPR_BAL2"
.LASF186:
	.string	"SPR_BAL7"
.LASF1438:
	.string	"info"
.LASF1179:
	.string	"S_HEADSONSTICK"
.LASF1433:
	.string	"ceilingz"
.LASF636:
	.string	"S_SKEL_RAISE1"
.LASF151:
	.string	"SPR_SHT2"
.LASF290:
	.string	"S_PUNCH1"
.LASF291:
	.string	"S_PUNCH2"
.LASF292:
	.string	"S_PUNCH3"
.LASF293:
	.string	"S_PUNCH4"
.LASF38:
	.string	"st_atim"
.LASF653:
	.string	"S_FATT_RUN5"
.LASF289:
	.string	"S_PUNCHUP"
.LASF655:
	.string	"S_FATT_RUN7"
.LASF906:
	.string	"S_SPID_DIE1"
.LASF657:
	.string	"S_FATT_RUN9"
.LASF908:
	.string	"S_SPID_DIE3"
.LASF909:
	.string	"S_SPID_DIE4"
.LASF150:
	.string	"SPR_SHTF"
.LASF146:
	.string	"SPR_SHTG"
.LASF428:
	.string	"S_IFOG01"
.LASF429:
	.string	"S_IFOG02"
.LASF914:
	.string	"S_SPID_DIE9"
.LASF1156:
	.string	"S_AMMO"
.LASF103:
	.string	"NUMAMMO"
.LASF987:
	.string	"S_PAIN_RUN1"
.LASF988:
	.string	"S_PAIN_RUN2"
.LASF989:
	.string	"S_PAIN_RUN3"
.LASF990:
	.string	"S_PAIN_RUN4"
.LASF272:
	.string	"SPR_HDB1"
.LASF273:
	.string	"SPR_HDB2"
.LASF274:
	.string	"SPR_HDB3"
.LASF275:
	.string	"SPR_HDB4"
.LASF276:
	.string	"SPR_HDB5"
.LASF277:
	.string	"SPR_HDB6"
.LASF1263:
	.string	"MT_POSSESSED"
.LASF322:
	.string	"S_DSGUN3"
.LASF323:
	.string	"S_DSGUN4"
.LASF142:
	.string	"type"
.LASF342:
	.string	"S_MISSILE"
.LASF1601:
	.string	"strlen"
.LASF1170:
	.string	"S_SHOT2"
.LASF1237:
	.string	"S_HANGTLOOKDN"
.LASF11:
	.string	"__uid_t"
.LASF714:
	.string	"S_CPOS_XDIE1"
.LASF1562:
	.string	"mousetype"
.LASF1581:
	.string	"ymax"
.LASF1623:
	.string	"lbmname"
.LASF131:
	.string	"actionf_t"
.LASF126:
	.string	"actionf_v"
.LASF233:
	.string	"SPR_MGUN"
.LASF1275:
	.string	"MT_SHADOWS"
.LASF617:
	.string	"S_SKEL_RUN10"
.LASF618:
	.string	"S_SKEL_RUN11"
.LASF619:
	.string	"S_SKEL_RUN12"
.LASF285:
	.string	"S_NULL"
.LASF827:
	.string	"S_BOSS_DIE1"
.LASF828:
	.string	"S_BOSS_DIE2"
.LASF829:
	.string	"S_BOSS_DIE3"
.LASF830:
	.string	"S_BOSS_DIE4"
.LASF831:
	.string	"S_BOSS_DIE5"
.LASF832:
	.string	"S_BOSS_DIE6"
.LASF833:
	.string	"S_BOSS_DIE7"
.LASF997:
	.string	"S_PAIN_PAIN"
.LASF366:
	.string	"S_BFG"
.LASF1410:
	.string	"painsound"
.LASF1634:
	.string	"M_SaveDefaults"
.LASF1611:
	.string	"read"
.LASF1527:
	.string	"player_t"
.LASF1493:
	.string	"special"
.LASF1012:
	.string	"S_SSWV_STND2"
.LASF234:
	.string	"SPR_CSAW"
.LASF1147:
	.string	"S_PMAP"
.LASF60:
	.string	"_chain"
.LASF1153:
	.string	"S_PVIS"
.LASF1586:
	.string	"color_planes"
.LASF367:
	.string	"S_BFGDOWN"
.LASF1287:
	.string	"MT_BOSSBRAIN"
.LASF180:
	.string	"SPR_SKEL"
.LASF362:
	.string	"S_PLASMA1"
.LASF363:
	.string	"S_PLASMA2"
.LASF1227:
	.string	"S_GTORCHSHRT"
.LASF1452:
	.string	"firstline"
.LASF1161:
	.string	"S_SHEL"
.LASF1600:
	.string	"malloc"
.LASF918:
	.string	"S_BSPI_STND2"
.LASF4:
	.string	"unsigned char"
.LASF178:
	.string	"SPR_FATB"
.LASF599:
	.string	"S_SMOKE4"
.LASF283:
	.string	"NUMSPRITES"
.LASF1602:
	.string	"sscanf"
.LASF401:
	.string	"S_BFGSHOT2"
.LASF182:
	.string	"SPR_FATT"
.LASF1128:
	.string	"S_SOUL2"
.LASF1129:
	.string	"S_SOUL3"
.LASF1130:
	.string	"S_SOUL4"
.LASF20:
	.string	"__blkcnt_t"
.LASF1132:
	.string	"S_SOUL6"
.LASF1646:
	.string	"_IO_lock_t"
.LASF888:
	.string	"S_SPID_RUN1"
.LASF889:
	.string	"S_SPID_RUN2"
.LASF890:
	.string	"S_SPID_RUN3"
.LASF891:
	.string	"S_SPID_RUN4"
.LASF892:
	.string	"S_SPID_RUN5"
.LASF893:
	.string	"S_SPID_RUN6"
.LASF894:
	.string	"S_SPID_RUN7"
.LASF895:
	.string	"S_SPID_RUN8"
.LASF138:
	.string	"float"
.LASF1095:
	.string	"S_BEXP3"
.LASF1096:
	.string	"S_BEXP4"
.LASF1097:
	.string	"S_BEXP5"
.LASF1184:
	.string	"S_DEADSTICK"
.LASF1481:
	.string	"fixedcolormap"
.LASF1551:
	.string	"mousebforward"
.LASF1466:
	.string	"weaponowned"
.LASF1304:
	.string	"MT_EXTRABFG"
.LASF474:
	.string	"S_POSS_DIE1"
.LASF475:
	.string	"S_POSS_DIE2"
.LASF476:
	.string	"S_POSS_DIE3"
.LASF477:
	.string	"S_POSS_DIE4"
.LASF478:
	.string	"S_POSS_DIE5"
.LASF304:
	.string	"S_SGUNDOWN"
.LASF153:
	.string	"SPR_CHGF"
.LASF152:
	.string	"SPR_CHGG"
.LASF697:
	.string	"S_CPOS_RUN5"
.LASF956:
	.string	"S_ARACH_PLEX3"
.LASF698:
	.string	"S_CPOS_RUN6"
.LASF958:
	.string	"S_ARACH_PLEX5"
.LASF699:
	.string	"S_CPOS_RUN7"
.LASF1443:
	.string	"target"
.LASF263:
	.string	"SPR_CEYE"
.LASF1542:
	.string	"key_down"
.LASF1509:
	.string	"ST_HORIZONTAL"
.LASF1642:
	.string	"M_DrawText"
.LASF1005:
	.string	"S_PAIN_RAISE1"
.LASF1006:
	.string	"S_PAIN_RAISE2"
.LASF1007:
	.string	"S_PAIN_RAISE3"
.LASF1008:
	.string	"S_PAIN_RAISE4"
.LASF1009:
	.string	"S_PAIN_RAISE5"
.LASF642:
	.string	"S_FATSHOT1"
.LASF643:
	.string	"S_FATSHOT2"
.LASF1565:
	.string	"name"
.LASF1510:
	.string	"ST_VERTICAL"
.LASF220:
	.string	"SPR_SUIT"
.LASF870:
	.string	"S_SKULL_STND"
.LASF904:
	.string	"S_SPID_PAIN"
.LASF1399:
	.string	"NUMMOBJTYPES"
.LASF202:
	.string	"SPR_BAR1"
.LASF317:
	.string	"S_DSGUN"
.LASF1196:
	.string	"S_CANDLESTIK"
.LASF109:
	.string	"pw_allmap"
.LASF1252:
	.string	"NUMSTATES"
.LASF896:
	.string	"S_SPID_RUN9"
.LASF382:
	.string	"S_TBALL1"
.LASF383:
	.string	"S_TBALL2"
.LASF596:
	.string	"S_SMOKE1"
.LASF597:
	.string	"S_SMOKE2"
.LASF598:
	.string	"S_SMOKE3"
.LASF14:
	.string	"__mode_t"
.LASF600:
	.string	"S_SMOKE5"
.LASF819:
	.string	"S_BOSS_RUN6"
.LASF820:
	.string	"S_BOSS_RUN7"
.LASF821:
	.string	"S_BOSS_RUN8"
.LASF185:
	.string	"SPR_HEAD"
.LASF1430:
	.string	"bprev"
.LASF246:
	.string	"SPR_POL1"
.LASF242:
	.string	"SPR_POL2"
.LASF245:
	.string	"SPR_POL3"
.LASF244:
	.string	"SPR_POL4"
.LASF243:
	.string	"SPR_POL5"
.LASF247:
	.string	"SPR_POL6"
.LASF1091:
	.string	"S_BAR1"
.LASF1189:
	.string	"S_MEAT4"
.LASF583:
	.string	"S_FIRE18"
.LASF1305:
	.string	"MT_MISC0"
.LASF1177:
	.string	"S_DEADTORSO"
.LASF319:
	.string	"S_DSGUNUP"
.LASF1593:
	.string	"access"
.LASF1530:
	.string	"snd_SfxVolume"
.LASF1402:
	.string	"spawnstate"
.LASF728:
	.string	"S_TROO_STND2"
.LASF1560:
	.string	"sndserver_filename"
.LASF1248:
	.string	"S_TECH2LAMP"
.LASF1531:
	.string	"snd_MusicVolume"
.LASF1291:
	.string	"MT_SPAWNFIRE"
.LASF1628:
	.string	"pack"
.LASF1266:
	.string	"MT_FIRE"
.LASF1617:
	.string	"open"
.LASF1258:
	.string	"nextstate"
.LASF825:
	.string	"S_BOSS_PAIN"
.LASF196:
	.string	"SPR_SSWV"
.LASF52:
	.string	"_IO_write_ptr"
.LASF1234:
	.string	"S_RTORCHSHRT4"
.LASF387:
	.string	"S_RBALL1"
.LASF388:
	.string	"S_RBALL2"
.LASF1192:
	.string	"S_TALLGRNCOL"
.LASF1583:
	.string	"vres"
.LASF1446:
	.string	"lastlook"
.LASF1526:
	.string	"playerstate_t"
.LASF1181:
	.string	"S_HEADONASTICK"
.LASF461:
	.string	"S_POSS_RUN1"
.LASF403:
	.string	"S_BFGLAND2"
.LASF404:
	.string	"S_BFGLAND3"
.LASF405:
	.string	"S_BFGLAND4"
.LASF406:
	.string	"S_BFGLAND5"
.LASF407:
	.string	"S_BFGLAND6"
.LASF467:
	.string	"S_POSS_RUN7"
.LASF468:
	.string	"S_POSS_RUN8"
.LASF450:
	.string	"S_PLAY_XDIE1"
.LASF451:
	.string	"S_PLAY_XDIE2"
.LASF452:
	.string	"S_PLAY_XDIE3"
.LASF453:
	.string	"S_PLAY_XDIE4"
.LASF454:
	.string	"S_PLAY_XDIE5"
.LASF455:
	.string	"S_PLAY_XDIE6"
.LASF456:
	.string	"S_PLAY_XDIE7"
.LASF457:
	.string	"S_PLAY_XDIE8"
.LASF458:
	.string	"S_PLAY_XDIE9"
.LASF1441:
	.string	"movedir"
.LASF856:
	.string	"S_BOS2_DIE1"
.LASF857:
	.string	"S_BOS2_DIE2"
.LASF858:
	.string	"S_BOS2_DIE3"
.LASF859:
	.string	"S_BOS2_DIE4"
.LASF860:
	.string	"S_BOS2_DIE5"
.LASF861:
	.string	"S_BOS2_DIE6"
.LASF862:
	.string	"S_BOS2_DIE7"
.LASF1422:
	.string	"flags"
.LASF782:
	.string	"S_SARG_RAISE2"
.LASF783:
	.string	"S_SARG_RAISE3"
.LASF426:
	.string	"S_TFOG10"
.LASF784:
	.string	"S_SARG_RAISE4"
.LASF1604:
	.string	"__isoc99_sscanf"
.LASF479:
	.string	"S_POSS_XDIE1"
.LASF480:
	.string	"S_POSS_XDIE2"
.LASF481:
	.string	"S_POSS_XDIE3"
.LASF482:
	.string	"S_POSS_XDIE4"
.LASF483:
	.string	"S_POSS_XDIE5"
.LASF484:
	.string	"S_POSS_XDIE6"
.LASF485:
	.string	"S_POSS_XDIE7"
.LASF99:
	.string	"am_clip"
.LASF487:
	.string	"S_POSS_XDIE9"
.LASF1180:
	.string	"S_GIBS"
.LASF795:
	.string	"S_HEAD_DIE1"
.LASF796:
	.string	"S_HEAD_DIE2"
.LASF797:
	.string	"S_HEAD_DIE3"
.LASF798:
	.string	"S_HEAD_DIE4"
.LASF799:
	.string	"S_HEAD_DIE5"
.LASF800:
	.string	"S_HEAD_DIE6"
.LASF648:
	.string	"S_FATT_STND2"
.LASF1171:
	.string	"S_COLU"
.LASF298:
	.string	"S_PISTOL1"
.LASF299:
	.string	"S_PISTOL2"
.LASF300:
	.string	"S_PISTOL3"
.LASF301:
	.string	"S_PISTOL4"
.LASF637:
	.string	"S_SKEL_RAISE2"
.LASF638:
	.string	"S_SKEL_RAISE3"
.LASF76:
	.string	"FILE"
.LASF640:
	.string	"S_SKEL_RAISE5"
.LASF641:
	.string	"S_SKEL_RAISE6"
.LASF1200:
	.string	"S_BIGTREE"
.LASF1579:
	.string	"ymin"
.LASF1512:
	.string	"ST_NEGATIVE"
.LASF1110:
	.string	"S_BON2C"
.LASF1111:
	.string	"S_BON2D"
.LASF416:
	.string	"S_TFOG01"
.LASF417:
	.string	"S_TFOG02"
.LASF235:
	.string	"SPR_LAUN"
.LASF472:
	.string	"S_POSS_PAIN"
.LASF807:
	.string	"S_BRBALL1"
.LASF808:
	.string	"S_BRBALL2"
.LASF1269:
	.string	"MT_SMOKE"
.LASF1283:
	.string	"MT_CYBORG"
.LASF1420:
	.string	"damage"
.LASF512:
	.string	"S_SPOS_XDIE1"
.LASF513:
	.string	"S_SPOS_XDIE2"
.LASF514:
	.string	"S_SPOS_XDIE3"
.LASF515:
	.string	"S_SPOS_XDIE4"
.LASF516:
	.string	"S_SPOS_XDIE5"
.LASF517:
	.string	"S_SPOS_XDIE6"
.LASF518:
	.string	"S_SPOS_XDIE7"
.LASF519:
	.string	"S_SPOS_XDIE8"
.LASF520:
	.string	"S_SPOS_XDIE9"
.LASF43:
	.string	"size_t"
.LASF1425:
	.string	"mobj_s"
.LASF1485:
	.string	"mobj_t"
.LASF1559:
	.string	"numChannels"
.LASF1113:
	.string	"S_BKEY"
.LASF107:
	.string	"pw_invisibility"
.LASF1535:
	.string	"mouseSensitivity"
.LASF1595:
	.string	"Z_Free"
.LASF200:
	.string	"SPR_ARM1"
.LASF201:
	.string	"SPR_ARM2"
.LASF1265:
	.string	"MT_VILE"
.LASF83:
	.string	"it_blueskull"
.LASF1497:
	.string	"soundorg"
.LASF360:
	.string	"S_PLASMADOWN"
.LASF672:
	.string	"S_FATT_PAIN2"
.LASF1070:
	.string	"S_BRAINEYESEE"
.LASF1513:
	.string	"slopetype_t"
.LASF607:
	.string	"S_SKEL_STND2"
.LASF960:
	.string	"S_CYBER_STND2"
.LASF1261:
	.string	"state_t"
.LASF804:
	.string	"S_HEAD_RAISE4"
.LASF1030:
	.string	"S_SSWV_DIE2"
.LASF486:
	.string	"S_POSS_XDIE8"
.LASF1160:
	.string	"S_CELP"
.LASF1202:
	.string	"S_EVILEYE"
.LASF1228:
	.string	"S_GTORCHSHRT2"
.LASF1229:
	.string	"S_GTORCHSHRT3"
.LASF1230:
	.string	"S_GTORCHSHRT4"
.LASF1606:
	.string	"printf"
.LASF1456:
	.string	"viewheight"
.LASF1429:
	.string	"bnext"
.LASF1573:
	.string	"defaultfile"
.LASF56:
	.string	"_IO_save_base"
.LASF661:
	.string	"S_FATT_ATK1"
.LASF194:
	.string	"SPR_CYBR"
.LASF662:
	.string	"S_FATT_ATK2"
.LASF565:
	.string	"S_VILE_DIE10"
.LASF155:
	.string	"SPR_MISF"
.LASF154:
	.string	"SPR_MISG"
.LASF1584:
	.string	"palette"
.LASF167:
	.string	"SPR_MISL"
.LASF1119:
	.string	"S_BSKULL"
.LASF198:
	.string	"SPR_BBRN"
.LASF540:
	.string	"S_VILE_ATK1"
.LASF541:
	.string	"S_VILE_ATK2"
.LASF542:
	.string	"S_VILE_ATK3"
.LASF543:
	.string	"S_VILE_ATK4"
.LASF544:
	.string	"S_VILE_ATK5"
.LASF545:
	.string	"S_VILE_ATK6"
.LASF546:
	.string	"S_VILE_ATK7"
.LASF287:
	.string	"S_PUNCH"
.LASF548:
	.string	"S_VILE_ATK9"
.LASF269:
	.string	"SPR_SMBT"
.LASF1262:
	.string	"MT_PLAYER"
.LASF1597:
	.string	"feof"
.LASF843:
	.string	"S_BOS2_RUN1"
.LASF844:
	.string	"S_BOS2_RUN2"
.LASF845:
	.string	"S_BOS2_RUN3"
.LASF846:
	.string	"S_BOS2_RUN4"
.LASF847:
	.string	"S_BOS2_RUN5"
.LASF848:
	.string	"S_BOS2_RUN6"
.LASF849:
	.string	"S_BOS2_RUN7"
.LASF850:
	.string	"S_BOS2_RUN8"
.LASF1492:
	.string	"lightlevel"
.LASF260:
	.string	"SPR_TRE1"
.LASF261:
	.string	"SPR_TRE2"
.LASF917:
	.string	"S_BSPI_STND"
.LASF1411:
	.string	"meleestate"
.LASF1467:
	.string	"ammo"
.LASF707:
	.string	"S_CPOS_DIE1"
.LASF268:
	.string	"SPR_TRED"
.LASF161:
	.string	"SPR_BLUD"
.LASF663:
	.string	"S_FATT_ATK3"
.LASF664:
	.string	"S_FATT_ATK4"
.LASF665:
	.string	"S_FATT_ATK5"
.LASF666:
	.string	"S_FATT_ATK6"
.LASF667:
	.string	"S_FATT_ATK7"
.LASF668:
	.string	"S_FATT_ATK8"
.LASF669:
	.string	"S_FATT_ATK9"
.LASF171:
	.string	"SPR_TFOG"
.LASF375:
	.string	"S_BLOOD1"
.LASF376:
	.string	"S_BLOOD2"
.LASF377:
	.string	"S_BLOOD3"
.LASF1259:
	.string	"misc1"
.LASF1260:
	.string	"misc2"
.LASF1534:
	.string	"basedefault"
.LASF120:
	.string	"angleturn"
.LASF70:
	.string	"_wide_data"
.LASF1167:
	.string	"S_LAUN"
.LASF15:
	.string	"__nlink_t"
.LASF427:
	.string	"S_IFOG"
.LASF28:
	.string	"st_ino"
.LASF30:
	.string	"st_mode"
.LASF174:
	.string	"SPR_POSS"
.LASF179:
	.string	"SPR_FBXP"
.LASF976:
	.string	"S_CYBER_DIE1"
.LASF977:
	.string	"S_CYBER_DIE2"
.LASF978:
	.string	"S_CYBER_DIE3"
.LASF979:
	.string	"S_CYBER_DIE4"
.LASF980:
	.string	"S_CYBER_DIE5"
.LASF981:
	.string	"S_CYBER_DIE6"
.LASF982:
	.string	"S_CYBER_DIE7"
.LASF854:
	.string	"S_BOS2_PAIN"
.LASF85:
	.string	"it_redskull"
.LASF1447:
	.string	"spawnpoint"
.LASF1254:
	.string	"sprite"
.LASF1332:
	.string	"MT_MISC23"
.LASF1518:
	.string	"patch_t"
.LASF1197:
	.string	"S_CANDELABRA"
.LASF537:
	.string	"S_VILE_RUN10"
.LASF538:
	.string	"S_VILE_RUN11"
.LASF539:
	.string	"S_VILE_RUN12"
.LASF1157:
	.string	"S_ROCK"
.LASF306:
	.string	"S_SGUN1"
.LASF307:
	.string	"S_SGUN2"
.LASF308:
	.string	"S_SGUN3"
.LASF309:
	.string	"S_SGUN4"
.LASF310:
	.string	"S_SGUN5"
.LASF311:
	.string	"S_SGUN6"
.LASF312:
	.string	"S_SGUN7"
.LASF313:
	.string	"S_SGUN8"
.LASF314:
	.string	"S_SGUN9"
.LASF1401:
	.string	"doomednum"
.LASF303:
	.string	"S_SGUN"
.LASF1193:
	.string	"S_SHRTGRNCOL"
.LASF878:
	.string	"S_SKULL_PAIN"
.LASF1594:
	.string	"I_ReadScreen"
.LASF1290:
	.string	"MT_SPAWNSHOT"
.LASF602:
	.string	"S_TRACER2"
.LASF1201:
	.string	"S_TECHPILLAR"
.LASF606:
	.string	"S_SKEL_STND"
.LASF761:
	.string	"S_SARG_STND2"
.LASF1607:
	.string	"M_CheckParm"
.LASF507:
	.string	"S_SPOS_DIE1"
.LASF508:
	.string	"S_SPOS_DIE2"
.LASF509:
	.string	"S_SPOS_DIE3"
.LASF510:
	.string	"S_SPOS_DIE4"
.LASF511:
	.string	"S_SPOS_DIE5"
.LASF1525:
	.string	"PST_REBORN"
.LASF1236:
	.string	"S_HANGBNOBRAIN"
.LASF770:
	.string	"S_SARG_ATK1"
.LASF771:
	.string	"S_SARG_ATK2"
.LASF772:
	.string	"S_SARG_ATK3"
.LASF361:
	.string	"S_PLASMAUP"
.LASF1256:
	.string	"tics"
.LASF1609:
	.string	"fprintf"
.LASF1117:
	.string	"S_YKEY"
.LASF1416:
	.string	"speed"
.LASF1585:
	.string	"reserved"
.LASF330:
	.string	"S_DSNR1"
.LASF999:
	.string	"S_PAIN_DIE1"
.LASF21:
	.string	"__ssize_t"
.LASF1567:
	.string	"defaultvalue"
.LASF529:
	.string	"S_VILE_RUN2"
.LASF1624:
	.string	"M_ScreenShot"
.LASF1247:
	.string	"S_TECHLAMP4"
.LASF693:
	.string	"S_CPOS_RUN1"
.LASF694:
	.string	"S_CPOS_RUN2"
.LASF695:
	.string	"S_CPOS_RUN3"
.LASF696:
	.string	"S_CPOS_RUN4"
.LASF127:
	.string	"actionf_p1"
.LASF128:
	.string	"actionf_p2"
.LASF231:
	.string	"SPR_BPAK"
.LASF700:
	.string	"S_CPOS_RUN8"
.LASF25:
	.string	"timespec"
.LASF144:
	.string	"mapthing_t"
.LASF462:
	.string	"S_POSS_RUN2"
.LASF463:
	.string	"S_POSS_RUN3"
.LASF464:
	.string	"S_POSS_RUN4"
.LASF781:
	.string	"S_SARG_RAISE1"
.LASF465:
	.string	"S_POSS_RUN5"
.LASF129:
	.string	"acp1"
.LASF130:
	.string	"acp2"
.LASF785:
	.string	"S_SARG_RAISE5"
.LASF786:
	.string	"S_SARG_RAISE6"
.LASF1365:
	.string	"MT_MISC53"
.LASF270:
	.string	"SPR_SMGT"
.LASF1061:
	.string	"S_KEENPAIN"
.LASF409:
	.string	"S_BFGEXP2"
.LASF410:
	.string	"S_BFGEXP3"
.LASF411:
	.string	"S_BFGEXP4"
.LASF340:
	.string	"S_CHAINFLASH1"
.LASF341:
	.string	"S_CHAINFLASH2"
.LASF296:
	.string	"S_PISTOLDOWN"
.LASF961:
	.string	"S_CYBER_RUN1"
.LASF962:
	.string	"S_CYBER_RUN2"
.LASF963:
	.string	"S_CYBER_RUN3"
.LASF964:
	.string	"S_CYBER_RUN4"
.LASF965:
	.string	"S_CYBER_RUN5"
.LASF966:
	.string	"S_CYBER_RUN6"
.LASF967:
	.string	"S_CYBER_RUN7"
.LASF968:
	.string	"S_CYBER_RUN8"
.LASF1405:
	.string	"seesound"
.LASF1148:
	.string	"S_PMAP2"
.LASF1149:
	.string	"S_PMAP3"
.LASF1150:
	.string	"S_PMAP4"
.LASF1151:
	.string	"S_PMAP5"
.LASF1152:
	.string	"S_PMAP6"
.LASF1478:
	.string	"bonuscount"
.LASF879:
	.string	"S_SKULL_PAIN2"
.LASF1073:
	.string	"S_SPAWN2"
.LASF1409:
	.string	"painchance"
.LASF705:
	.string	"S_CPOS_PAIN"
.LASF1489:
	.string	"ceilingheight"
.LASF184:
	.string	"SPR_SARG"
.LASF31:
	.string	"st_uid"
.LASF1010:
	.string	"S_PAIN_RAISE6"
.LASF1499:
	.string	"specialdata"
.LASF1348:
	.string	"MT_MISC36"
.LASF814:
	.string	"S_BOSS_RUN1"
.LASF815:
	.string	"S_BOSS_RUN2"
.LASF816:
	.string	"S_BOSS_RUN3"
.LASF817:
	.string	"S_BOSS_RUN4"
.LASF818:
	.string	"S_BOSS_RUN5"
.LASF336:
	.string	"S_CHAINUP"
.LASF1645:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1473:
	.string	"killcount"
.LASF955:
	.string	"S_ARACH_PLEX2"
.LASF1199:
	.string	"S_TORCHTREE"
.LASF1545:
	.string	"key_fire"
.LASF1011:
	.string	"S_SSWV_STND"
.LASF957:
	.string	"S_ARACH_PLEX4"
.LASF1058:
	.string	"S_COMMKEEN10"
.LASF1059:
	.string	"S_COMMKEEN11"
.LASF1060:
	.string	"S_COMMKEEN12"
.LASF975:
	.string	"S_CYBER_PAIN"
.LASF494:
	.string	"S_SPOS_RUN1"
.LASF252:
	.string	"SPR_SMIT"
.LASF116:
	.string	"boolean"
.LASF497:
	.string	"S_SPOS_RUN4"
.LASF498:
	.string	"S_SPOS_RUN5"
.LASF189:
	.string	"SPR_SKUL"
.LASF500:
	.string	"S_SPOS_RUN7"
.LASF501:
	.string	"S_SPOS_RUN8"
.LASF1158:
	.string	"S_BROK"
.LASF1403:
	.string	"spawnhealth"
.LASF288:
	.string	"S_PUNCHDOWN"
.LASF954:
	.string	"S_ARACH_PLEX"
.LASF1215:
	.string	"S_GREENTORCH"
.LASF95:
	.string	"wp_supershotgun"
.LASF354:
	.string	"S_SAWDOWN"
.LASF58:
	.string	"_IO_save_end"
.LASF1253:
	.string	"statenum_t"
.LASF1293:
	.string	"MT_TROOPSHOT"
.LASF1278:
	.string	"MT_BRUISERSHOT"
.LASF1633:
	.string	"isstring"
.LASF1576:
	.string	"encoding"
.LASF124:
	.string	"ticcmd_t"
.LASF1398:
	.string	"MT_MISC86"
.LASF1519:
	.string	"ps_weapon"
.LASF18:
	.string	"__time_t"
.LASF442:
	.string	"S_PLAY_PAIN2"
.LASF837:
	.string	"S_BOSS_RAISE4"
.LASF838:
	.string	"S_BOSS_RAISE5"
.LASF1255:
	.string	"frame"
.LASF181:
	.string	"SPR_MANF"
.LASF692:
	.string	"S_CPOS_STND2"
.LASF1572:
	.string	"numdefaults"
.LASF505:
	.string	"S_SPOS_PAIN"
.LASF89:
	.string	"wp_shotgun"
.LASF1557:
	.string	"detailLevel"
.LASF473:
	.string	"S_POSS_PAIN2"
.LASF1299:
	.string	"MT_PUFF"
.LASF345:
	.string	"S_MISSILE1"
.LASF346:
	.string	"S_MISSILE2"
.LASF347:
	.string	"S_MISSILE3"
.LASF721:
	.string	"S_CPOS_RAISE2"
.LASF722:
	.string	"S_CPOS_RAISE3"
.LASF723:
	.string	"S_CPOS_RAISE4"
.LASF1483:
	.string	"psprites"
.LASF1165:
	.string	"S_MGUN"
.LASF1613:
	.string	"fstat"
.LASF1277:
	.string	"MT_BRUISER"
.LASF230:
	.string	"SPR_SBOX"
.LASF1475:
	.string	"secretcount"
.LASF1400:
	.string	"mobjtype_t"
.LASF1414:
	.string	"xdeathstate"
.LASF1460:
	.string	"powers"
.LASF874:
	.string	"S_SKULL_ATK1"
.LASF875:
	.string	"S_SKULL_ATK2"
.LASF876:
	.string	"S_SKULL_ATK3"
.LASF877:
	.string	"S_SKULL_ATK4"
.LASF855:
	.string	"S_BOS2_PAIN2"
.LASF5:
	.string	"short unsigned int"
.LASF1279:
	.string	"MT_KNIGHT"
.LASF7:
	.string	"signed char"
.LASF119:
	.string	"sidemove"
.LASF1421:
	.string	"activesound"
.LASF506:
	.string	"S_SPOS_PAIN2"
.LASF19:
	.string	"__blksize_t"
.LASF670:
	.string	"S_FATT_ATK10"
.LASF1352:
	.string	"MT_MISC40"
.LASF267:
	.string	"SPR_TGRN"
.LASF1324:
	.string	"MT_MEGA"
.LASF169:
	.string	"SPR_BFE1"
.LASF170:
	.string	"SPR_BFE2"
.LASF1632:
	.string	"parm"
.LASF1498:
	.string	"thinglist"
.LASF1643:
	.string	"direct"
.LASF1358:
	.string	"MT_MISC46"
.LASF1517:
	.string	"columnofs"
.LASF1637:
	.string	"count"
.LASF1286:
	.string	"MT_KEEN"
.LASF1496:
	.string	"blockbox"
.LASF1071:
	.string	"S_BRAINEYE1"
.LASF727:
	.string	"S_TROO_STND"
.LASF674:
	.string	"S_FATT_DIE2"
.LASF365:
	.string	"S_PLASMAFLASH2"
.LASF98:
	.string	"weapontype_t"
.LASF122:
	.string	"chatchar"
.LASF418:
	.string	"S_TFOG2"
.LASF419:
	.string	"S_TFOG3"
.LASF420:
	.string	"S_TFOG4"
.LASF421:
	.string	"S_TFOG5"
.LASF422:
	.string	"S_TFOG6"
.LASF423:
	.string	"S_TFOG7"
.LASF424:
	.string	"S_TFOG8"
.LASF425:
	.string	"S_TFOG9"
.LASF840:
	.string	"S_BOSS_RAISE7"
.LASF1469:
	.string	"attackdown"
.LASF145:
	.string	"SPR_TROO"
.LASF17:
	.string	"__off64_t"
.LASF156:
	.string	"SPR_SAWG"
.LASF1315:
	.string	"MT_MISC10"
.LASF205:
	.string	"SPR_BON1"
.LASF50:
	.string	"_IO_read_base"
.LASF68:
	.string	"_offset"
.LASF1644:
	.string	"string"
.LASF82:
	.string	"it_redcard"
.LASF1194:
	.string	"S_TALLREDCOL"
.LASF1614:
	.string	"I_Error"
.LASF1439:
	.string	"state"
.LASF55:
	.string	"_IO_buf_end"
.LASF1169:
	.string	"S_SHOT"
.LASF1025:
	.string	"S_SSWV_ATK5"
.LASF1174:
	.string	"S_BLOODYTWITCH2"
.LASF1175:
	.string	"S_BLOODYTWITCH3"
.LASF1176:
	.string	"S_BLOODYTWITCH4"
.LASF915:
	.string	"S_SPID_DIE10"
.LASF916:
	.string	"S_SPID_DIE11"
.LASF1461:
	.string	"cards"
.LASF262:
	.string	"SPR_ELEC"
.LASF1063:
	.string	"S_BRAIN"
.LASF1281:
	.string	"MT_SPIDER"
.LASF1146:
	.string	"S_SUIT"
.LASF160:
	.string	"SPR_BFGF"
.LASF159:
	.string	"SPR_BFGG"
.LASF1543:
	.string	"key_strafeleft"
.LASF74:
	.string	"_mode"
.LASF986:
	.string	"S_PAIN_STND"
.LASF51:
	.string	"_IO_write_base"
.LASF402:
	.string	"S_BFGLAND"
.LASF1092:
	.string	"S_BAR2"
.LASF1465:
	.string	"pendingweapon"
.LASF136:
	.string	"function"
.LASF1558:
	.string	"screenblocks"
.LASF100:
	.string	"am_shell"
.LASF1592:
	.string	"W_CacheLumpName"
.LASF1437:
	.string	"validcount"
.LASF1476:
	.string	"message"
.LASF682:
	.string	"S_FATT_DIE10"
.LASF86:
	.string	"NUMCARDS"
.LASF1219:
	.string	"S_REDTORCH"
.LASF1297:
	.string	"MT_BFG"
.LASF466:
	.string	"S_POSS_RUN6"
.LASF1556:
	.string	"showMessages"
.LASF1549:
	.string	"mousebfire"
.LASF176:
	.string	"SPR_VILE"
.LASF1615:
	.string	"close"
.LASF1300:
	.string	"MT_BLOOD"
.LASF295:
	.string	"S_PISTOL"
.LASF115:
	.string	"true"
.LASF527:
	.string	"S_VILE_STND2"
.LASF945:
	.string	"S_BSPI_RAISE1"
.LASF946:
	.string	"S_BSPI_RAISE2"
.LASF947:
	.string	"S_BSPI_RAISE3"
.LASF948:
	.string	"S_BSPI_RAISE4"
.LASF949:
	.string	"S_BSPI_RAISE5"
.LASF950:
	.string	"S_BSPI_RAISE6"
.LASF951:
	.string	"S_BSPI_RAISE7"
.LASF1434:
	.string	"momx"
.LASF1435:
	.string	"momy"
.LASF9:
	.string	"long int"
.LASF1034:
	.string	"S_SSWV_XDIE1"
.LASF1035:
	.string	"S_SSWV_XDIE2"
.LASF1036:
	.string	"S_SSWV_XDIE3"
.LASF1037:
	.string	"S_SSWV_XDIE4"
.LASF1038:
	.string	"S_SSWV_XDIE5"
.LASF1039:
	.string	"S_SSWV_XDIE6"
.LASF1040:
	.string	"S_SSWV_XDIE7"
.LASF1041:
	.string	"S_SSWV_XDIE8"
.LASF1042:
	.string	"S_SSWV_XDIE9"
.LASF332:
	.string	"S_DSGUNFLASH1"
.LASF333:
	.string	"S_DSGUNFLASH2"
.LASF1331:
	.string	"MT_MISC22"
.LASF1484:
	.string	"didsecret"
.LASF590:
	.string	"S_FIRE25"
.LASF684:
	.string	"S_FATT_RAISE2"
.LASF1367:
	.string	"MT_MISC55"
.LASF686:
	.string	"S_FATT_RAISE4"
.LASF84:
	.string	"it_yellowskull"
.LASF1122:
	.string	"S_RSKULL2"
.LASF1448:
	.string	"tracer"
.LASF689:
	.string	"S_FATT_RAISE7"
.LASF897:
	.string	"S_SPID_RUN10"
.LASF898:
	.string	"S_SPID_RUN11"
.LASF899:
	.string	"S_SPID_RUN12"
.LASF77:
	.string	"_IO_marker"
.LASF1599:
	.string	"strcpy"
.LASF1621:
	.string	"rcsid"
.LASF1618:
	.string	"V_DrawPatch"
.LASF1423:
	.string	"raisestate"
.LASF348:
	.string	"S_MISSILEFLASH1"
.LASF349:
	.string	"S_MISSILEFLASH2"
.LASF350:
	.string	"S_MISSILEFLASH3"
.LASF351:
	.string	"S_MISSILEFLASH4"
.LASF211:
	.string	"SPR_RSKU"
.LASF132:
	.string	"think_t"
.LASF118:
	.string	"forwardmove"
.LASF709:
	.string	"S_CPOS_DIE3"
.LASF710:
	.string	"S_CPOS_DIE4"
.LASF711:
	.string	"S_CPOS_DIE5"
.LASF712:
	.string	"S_CPOS_DIE6"
.LASF713:
	.string	"S_CPOS_DIE7"
.LASF1529:
	.string	"usegamma"
.LASF1541:
	.string	"key_up"
.LASF1154:
	.string	"S_PVIS2"
.LASF1292:
	.string	"MT_BARREL"
.LASF886:
	.string	"S_SPID_STND"
.LASF658:
	.string	"S_FATT_RUN10"
.LASF659:
	.string	"S_FATT_RUN11"
.LASF660:
	.string	"S_FATT_RUN12"
.LASF1284:
	.string	"MT_PAIN"
.LASF78:
	.string	"_IO_codecvt"
.LASF1212:
	.string	"S_BLUETORCH2"
.LASF1424:
	.string	"mobjinfo_t"
.LASF1213:
	.string	"S_BLUETORCH3"
.LASF1214:
	.string	"S_BLUETORCH4"
.LASF271:
	.string	"SPR_SMRT"
.LASF373:
	.string	"S_BFGFLASH1"
.LASF374:
	.string	"S_BFGFLASH2"
.LASF907:
	.string	"S_SPID_DIE2"
.LASF1605:
	.string	"__isoc99_fscanf"
.LASF188:
	.string	"SPR_BOS2"
.LASF910:
	.string	"S_SPID_DIE5"
.LASF911:
	.string	"S_SPID_DIE6"
.LASF912:
	.string	"S_SPID_DIE7"
.LASF913:
	.string	"S_SPID_DIE8"
.LASF1203:
	.string	"S_EVILEYE2"
.LASF1204:
	.string	"S_EVILEYE3"
.LASF1205:
	.string	"S_EVILEYE4"
.LASF378:
	.string	"S_PUFF1"
.LASF379:
	.string	"S_PUFF2"
.LASF380:
	.string	"S_PUFF3"
.LASF199:
	.string	"SPR_BOSF"
.LASF1501:
	.string	"lines"
.LASF187:
	.string	"SPR_BOSS"
.LASF1296:
	.string	"MT_PLASMA"
.LASF932:
	.string	"S_BSPI_ATK1"
.LASF933:
	.string	"S_BSPI_ATK2"
.LASF934:
	.string	"S_BSPI_ATK3"
.LASF935:
	.string	"S_BSPI_ATK4"
.LASF1114:
	.string	"S_BKEY2"
.LASF96:
	.string	"NUMWEAPONS"
.LASF919:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF921:
	.string	"S_BSPI_RUN2"
.LASF1065:
	.string	"S_BRAIN_DIE1"
.LASF1066:
	.string	"S_BRAIN_DIE2"
.LASF1067:
	.string	"S_BRAIN_DIE3"
.LASF1068:
	.string	"S_BRAIN_DIE4"
.LASF400:
	.string	"S_BFGSHOT"
.LASF1206:
	.string	"S_FLOATSKULL"
.LASF556:
	.string	"S_VILE_DIE1"
.LASF557:
	.string	"S_VILE_DIE2"
.LASF558:
	.string	"S_VILE_DIE3"
.LASF559:
	.string	"S_VILE_DIE4"
.LASF560:
	.string	"S_VILE_DIE5"
.LASF561:
	.string	"S_VILE_DIE6"
.LASF562:
	.string	"S_VILE_DIE7"
.LASF563:
	.string	"S_VILE_DIE8"
.LASF564:
	.string	"S_VILE_DIE9"
.LASF1477:
	.string	"damagecount"
.LASF1566:
	.string	"location"
.LASF240:
	.string	"SPR_SMT2"
.LASF1116:
	.string	"S_RKEY2"
.LASF1087:
	.string	"S_ARM1"
.LASF1089:
	.string	"S_ARM2"
.LASF1182:
	.string	"S_HEADCANDLES"
.LASF218:
	.string	"SPR_PINS"
.LASF812:
	.string	"S_BOSS_STND"
.LASF792:
	.string	"S_HEAD_PAIN"
.LASF81:
	.string	"it_yellowcard"
.LASF1268:
	.string	"MT_TRACER"
.LASF673:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF675:
	.string	"S_FATT_DIE3"
.LASF676:
	.string	"S_FATT_DIE4"
.LASF677:
	.string	"S_FATT_DIE5"
.LASF678:
	.string	"S_FATT_DIE6"
.LASF679:
	.string	"S_FATT_DIE7"
.LASF680:
	.string	"S_FATT_DIE8"
.LASF681:
	.string	"S_FATT_DIE9"
.LASF748:
	.string	"S_TROO_XDIE2"
.LASF749:
	.string	"S_TROO_XDIE3"
.LASF750:
	.string	"S_TROO_XDIE4"
.LASF751:
	.string	"S_TROO_XDIE5"
.LASF752:
	.string	"S_TROO_XDIE6"
.LASF753:
	.string	"S_TROO_XDIE7"
.LASF754:
	.string	"S_TROO_XDIE8"
.LASF223:
	.string	"SPR_CLIP"
.LASF1195:
	.string	"S_SHRTREDCOL"
.LASF1603:
	.string	"fscanf"
.LASF1238:
	.string	"S_HANGTSKULL"
.LASF1533:
	.string	"players"
.LASF54:
	.string	"_IO_buf_base"
.LASF111:
	.string	"NUMPOWERS"
.LASF1023:
	.string	"S_SSWV_ATK3"
.LASF1024:
	.string	"S_SSWV_ATK4"
.LASF329:
	.string	"S_DSGUN10"
.LASF10:
	.string	"__dev_t"
.LASF106:
	.string	"pw_strength"
.LASF41:
	.string	"__glibc_reserved"
.LASF257:
	.string	"SPR_CAND"
.LASF1274:
	.string	"MT_SERGEANT"
.LASF1185:
	.string	"S_LIVESTICK"
.LASF49:
	.string	"_IO_read_end"
.LASF1125:
	.string	"S_STIM"
.LASF101:
	.string	"am_cell"
.LASF80:
	.string	"it_bluecard"
.LASF1587:
	.string	"bytes_per_line"
.LASF1432:
	.string	"floorz"
.LASF788:
	.string	"S_HEAD_RUN1"
.LASF443:
	.string	"S_PLAY_DIE1"
.LASF444:
	.string	"S_PLAY_DIE2"
.LASF445:
	.string	"S_PLAY_DIE3"
.LASF446:
	.string	"S_PLAY_DIE4"
.LASF46:
	.string	"_IO_FILE"
.LASF448:
	.string	"S_PLAY_DIE6"
.LASF449:
	.string	"S_PLAY_DIE7"
.LASF1620:
	.string	"toupper"
.LASF459:
	.string	"S_POSS_STND"
.LASF415:
	.string	"S_TFOG"
.LASF79:
	.string	"_IO_wide_data"
.LASF1353:
	.string	"MT_MISC41"
.LASF1449:
	.string	"subsector_s"
.LASF775:
	.string	"S_SARG_DIE1"
.LASF776:
	.string	"S_SARG_DIE2"
.LASF777:
	.string	"S_SARG_DIE3"
.LASF778:
	.string	"S_SARG_DIE4"
.LASF1076:
	.string	"S_SPAWNFIRE1"
.LASF1077:
	.string	"S_SPAWNFIRE2"
.LASF1078:
	.string	"S_SPAWNFIRE3"
.LASF1079:
	.string	"S_SPAWNFIRE4"
.LASF1080:
	.string	"S_SPAWNFIRE5"
.LASF1081:
	.string	"S_SPAWNFIRE6"
.LASF1082:
	.string	"S_SPAWNFIRE7"
.LASF1083:
	.string	"S_SPAWNFIRE8"
.LASF747:
	.string	"S_TROO_XDIE1"
.LASF121:
	.string	"consistancy"
.LASF1639:
	.string	"M_ReadFile"
.LASF1450:
	.string	"sector"
.LASF1240:
	.string	"S_HANGTNOBRAIN"
.LASF395:
	.string	"S_PLASEXP2"
.LASF396:
	.string	"S_PLASEXP3"
.LASF397:
	.string	"S_PLASEXP4"
.LASF398:
	.string	"S_PLASEXP5"
.LASF93:
	.string	"wp_bfg"
.LASF1224:
	.string	"S_BTORCHSHRT2"
.LASF1225:
	.string	"S_BTORCHSHRT3"
.LASF1226:
	.string	"S_BTORCHSHRT4"
.LASF528:
	.string	"S_VILE_RUN1"
.LASF318:
	.string	"S_DSGUNDOWN"
.LASF530:
	.string	"S_VILE_RUN3"
.LASF531:
	.string	"S_VILE_RUN4"
.LASF532:
	.string	"S_VILE_RUN5"
.LASF533:
	.string	"S_VILE_RUN6"
.LASF534:
	.string	"S_VILE_RUN7"
.LASF535:
	.string	"S_VILE_RUN8"
.LASF536:
	.string	"S_VILE_RUN9"
.LASF779:
	.string	"S_SARG_DIE5"
.LASF780:
	.string	"S_SARG_DIE6"
.LASF1426:
	.string	"thinker"
.LASF1580:
	.string	"xmax"
.LASF620:
	.string	"S_SKEL_FIST1"
.LASF621:
	.string	"S_SKEL_FIST2"
.LASF622:
	.string	"S_SKEL_FIST3"
.LASF623:
	.string	"S_SKEL_FIST4"
.LASF359:
	.string	"S_PLASMA"
.LASF1138:
	.string	"S_PINS"
.LASF1211:
	.string	"S_BLUETORCH"
.LASF649:
	.string	"S_FATT_RUN1"
.LASF650:
	.string	"S_FATT_RUN2"
.LASF651:
	.string	"S_FATT_RUN3"
.LASF652:
	.string	"S_FATT_RUN4"
.LASF108:
	.string	"pw_ironfeet"
.LASF654:
	.string	"S_FATT_RUN6"
.LASF33:
	.string	"__pad0"
.LASF656:
	.string	"S_FATT_RUN8"
.LASF1187:
	.string	"S_MEAT2"
.LASF1188:
	.string	"S_MEAT3"
.LASF73:
	.string	"__pad5"
.LASF1190:
	.string	"S_MEAT5"
.LASF302:
	.string	"S_PISTOLFLASH"
.LASF1488:
	.string	"floorheight"
.LASF522:
	.string	"S_SPOS_RAISE2"
.LASF523:
	.string	"S_SPOS_RAISE3"
.LASF524:
	.string	"S_SPOS_RAISE4"
.LASF525:
	.string	"S_SPOS_RAISE5"
.LASF214:
	.string	"SPR_MEDI"
.LASF216:
	.string	"SPR_PINV"
.LASF1064:
	.string	"S_BRAIN_PAIN"
.LASF335:
	.string	"S_CHAINDOWN"
.LASF554:
	.string	"S_VILE_PAIN"
.LASF1552:
	.string	"joybfire"
.LASF601:
	.string	"S_TRACER"
.LASF59:
	.string	"_markers"
.LASF1635:
	.string	"buffer"
.LASF1021:
	.string	"S_SSWV_ATK1"
.LASF1022:
	.string	"S_SSWV_ATK2"
.LASF551:
	.string	"S_VILE_HEAL1"
.LASF552:
	.string	"S_VILE_HEAL2"
.LASF553:
	.string	"S_VILE_HEAL3"
.LASF1026:
	.string	"S_SSWV_ATK6"
.LASF1442:
	.string	"movecount"
.LASF208:
	.string	"SPR_RKEY"
.LASF1172:
	.string	"S_STALAG"
.LASF1528:
	.string	"screens"
.LASF1612:
	.string	"Z_Malloc"
.LASF887:
	.string	"S_SPID_STND2"
.LASF140:
	.string	"angle_t"
.LASF69:
	.string	"_codecvt"
.LASF1491:
	.string	"ceilingpic"
.LASF1173:
	.string	"S_BLOODYTWITCH"
.LASF1242:
	.string	"S_SMALLPOOL"
.LASF1522:
	.string	"pspdef_t"
.LASF1368:
	.string	"MT_MISC56"
.LASF671:
	.string	"S_FATT_PAIN"
.LASF435:
	.string	"S_PLAY_RUN1"
.LASF436:
	.string	"S_PLAY_RUN2"
.LASF437:
	.string	"S_PLAY_RUN3"
.LASF438:
	.string	"S_PLAY_RUN4"
.LASF1163:
	.string	"S_BPAK"
.LASF139:
	.string	"double"
.LASF203:
	.string	"SPR_BEXP"
.LASF1453:
	.string	"player_s"
.LASF1120:
	.string	"S_BSKULL2"
.LASF162:
	.string	"SPR_PUFF"
.LASF1049:
	.string	"S_COMMKEEN"
.LASF1470:
	.string	"usedown"
.LASF34:
	.string	"st_rdev"
.LASF841:
	.string	"S_BOS2_STND"
.LASF168:
	.string	"SPR_BFS1"
.LASF27:
	.string	"st_dev"
.LASF1072:
	.string	"S_SPAWN1"
.LASF42:
	.string	"ssize_t"
.LASF1074:
	.string	"S_SPAWN3"
.LASF1075:
	.string	"S_SPAWN4"
.LASF1245:
	.string	"S_TECHLAMP2"
.LASF1246:
	.string	"S_TECHLAMP3"
.LASF94:
	.string	"wp_chainsaw"
.LASF1282:
	.string	"MT_BABY"
.LASF1468:
	.string	"maxammo"
.LASF1457:
	.string	"deltaviewheight"
.LASF1186:
	.string	"S_LIVESTICK2"
.LASF1626:
	.string	"filename"
.LASF1231:
	.string	"S_RTORCHSHRT"
.LASF1328:
	.string	"MT_MISC19"
.LASF190:
	.string	"SPR_SPID"
.LASF787:
	.string	"S_HEAD_STND"
.LASF762:
	.string	"S_SARG_RUN1"
.LASF763:
	.string	"S_SARG_RUN2"
.LASF765:
	.string	"S_SARG_RUN4"
.LASF766:
	.string	"S_SARG_RUN5"
.LASF767:
	.string	"S_SARG_RUN6"
.LASF768:
	.string	"S_SARG_RUN7"
.LASF769:
	.string	"S_SARG_RUN8"
.LASF1306:
	.string	"MT_MISC1"
.LASF1307:
	.string	"MT_MISC2"
.LASF1308:
	.string	"MT_MISC3"
.LASF1309:
	.string	"MT_MISC4"
.LASF1310:
	.string	"MT_MISC5"
.LASF1311:
	.string	"MT_MISC6"
.LASF1312:
	.string	"MT_MISC7"
.LASF1313:
	.string	"MT_MISC8"
.LASF1314:
	.string	"MT_MISC9"
.LASF352:
	.string	"S_SAW"
.LASF219:
	.string	"SPR_MEGA"
.LASF441:
	.string	"S_PLAY_PAIN"
.LASF393:
	.string	"S_PLASBALL2"
.LASF1520:
	.string	"ps_flash"
.LASF1454:
	.string	"playerstate"
.LASF197:
	.string	"SPR_KEEN"
.LASF1027:
	.string	"S_SSWV_PAIN"
.LASF1408:
	.string	"painstate"
.LASF1062:
	.string	"S_KEENPAIN2"
.LASF110:
	.string	"pw_infrared"
.LASF549:
	.string	"S_VILE_ATK10"
.LASF550:
	.string	"S_VILE_ATK11"
.LASF1540:
	.string	"key_left"
.LASF1516:
	.string	"topoffset"
.LASF1028:
	.string	"S_SSWV_PAIN2"
.LASF1392:
	.string	"MT_MISC80"
.LASF1415:
	.string	"deathsound"
.LASF1102:
	.string	"S_BON1A"
.LASF1103:
	.string	"S_BON1B"
.LASF1104:
	.string	"S_BON1C"
.LASF1105:
	.string	"S_BON1D"
.LASF1106:
	.string	"S_BON1E"
.LASF1508:
	.string	"sector_t"
.LASF1514:
	.string	"width"
.LASF217:
	.string	"SPR_PSTR"
.LASF1574:
	.string	"manufacturer"
.LASF1330:
	.string	"MT_MISC21"
.LASF773:
	.string	"S_SARG_PAIN"
.LASF206:
	.string	"SPR_BON2"
.LASF1325:
	.string	"MT_CLIP"
.LASF1589:
	.string	"filler"
.LASF232:
	.string	"SPR_BFUG"
.LASF1380:
	.string	"MT_MISC68"
.LASF1098:
	.string	"S_BBAR1"
.LASF1099:
	.string	"S_BBAR2"
.LASF1100:
	.string	"S_BBAR3"
.LASF286:
	.string	"S_LIGHTDONE"
.LASF1553:
	.string	"joybstrafe"
.LASF937:
	.string	"S_BSPI_PAIN2"
.LASF1462:
	.string	"backpack"
.LASF737:
	.string	"S_TROO_ATK1"
.LASF738:
	.string	"S_TROO_ATK2"
.LASF739:
	.string	"S_TROO_ATK3"
.LASF881:
	.string	"S_SKULL_DIE2"
.LASF882:
	.string	"S_SKULL_DIE3"
.LASF883:
	.string	"S_SKULL_DIE4"
.LASF884:
	.string	"S_SKULL_DIE5"
.LASF885:
	.string	"S_SKULL_DIE6"
.LASF236:
	.string	"SPR_PLAS"
.LASF1622:
	.string	"linear"
.LASF12:
	.string	"__gid_t"
.LASF1108:
	.string	"S_BON2A"
.LASF1109:
	.string	"S_BON2B"
.LASF149:
	.string	"SPR_PISF"
.LASF148:
	.string	"SPR_PISG"
.LASF1112:
	.string	"S_BON2E"
.LASF1335:
	.string	"MT_CHAINGUN"
.LASF384:
	.string	"S_TBALLX1"
.LASF385:
	.string	"S_TBALLX2"
.LASF386:
	.string	"S_TBALLX3"
.LASF97:
	.string	"wp_nochange"
.LASF447:
	.string	"S_PLAY_DIE5"
.LASF1272:
	.string	"MT_CHAINGUY"
.LASF1487:
	.string	"degenmobj_t"
.LASF1144:
	.string	"S_MEGA3"
.LASF880:
	.string	"S_SKULL_DIE1"
.LASF1538:
	.string	"usejoystick"
.LASF1524:
	.string	"PST_DEAD"
.LASF1243:
	.string	"S_BRAINSTEM"
.LASF1048:
	.string	"S_KEENSTND"
.LASF173:
	.string	"SPR_PLAY"
.LASF72:
	.string	"_freeres_buf"
.LASF1464:
	.string	"readyweapon"
.LASF1547:
	.string	"key_strafe"
.LASF23:
	.string	"tv_sec"
.LASF44:
	.string	"long long unsigned int"
.LASF1183:
	.string	"S_HEADCANDLES2"
.LASF1302:
	.string	"MT_IFOG"
.LASF1536:
	.string	"hu_font"
.LASF64:
	.string	"_cur_column"
.LASF264:
	.string	"SPR_FSKU"
.LASF499:
	.string	"S_SPOS_RUN6"
.LASF355:
	.string	"S_SAWUP"
.LASF1088:
	.string	"S_ARM1A"
.LASF691:
	.string	"S_CPOS_STND"
.LASF1343:
	.string	"MT_MISC31"
.LASF1436:
	.string	"momz"
.LASF1162:
	.string	"S_SBOX"
.LASF1494:
	.string	"soundtraversed"
.LASF1346:
	.string	"MT_MISC34"
.LASF1504:
	.string	"bbox"
.LASF394:
	.string	"S_PLASEXP"
.LASF1349:
	.string	"MT_MISC37"
.LASF1616:
	.string	"write"
.LASF1178:
	.string	"S_DEADBOTTOM"
.LASF37:
	.string	"st_blocks"
.LASF1235:
	.string	"S_HANGNOGUTS"
.LASF249:
	.string	"SPR_GOR3"
.LASF1407:
	.string	"attacksound"
.LASF1139:
	.string	"S_PINS2"
.LASF1140:
	.string	"S_PINS3"
.LASF1141:
	.string	"S_PINS4"
.LASF993:
	.string	"S_PAIN_ATK1"
.LASF994:
	.string	"S_PAIN_ATK2"
.LASF995:
	.string	"S_PAIN_ATK3"
.LASF996:
	.string	"S_PAIN_ATK4"
.LASF305:
	.string	"S_SGUNUP"
.LASF1591:
	.string	"pcx_t"
.LASF1506:
	.string	"frontsector"
.LASF258:
	.string	"SPR_CBRA"
.LASF1413:
	.string	"deathstate"
.LASF1090:
	.string	"S_ARM2A"
.LASF959:
	.string	"S_CYBER_STND"
.LASF1515:
	.string	"leftoffset"
.LASF1118:
	.string	"S_YKEY2"
.LASF568:
	.string	"S_FIRE3"
.LASF1406:
	.string	"reactiontime"
.LASF57:
	.string	"_IO_backup_base"
.LASF573:
	.string	"S_FIRE8"
.LASF813:
	.string	"S_BOSS_STND2"
.LASF48:
	.string	"_IO_read_ptr"
.LASF708:
	.string	"S_CPOS_DIE2"
.LASF1638:
	.string	"fileinfo"
.LASF1428:
	.string	"sprev"
.LASF356:
	.string	"S_SAW1"
.LASF357:
	.string	"S_SAW2"
.LASF358:
	.string	"S_SAW3"
.LASF1101:
	.string	"S_BON1"
.LASF1107:
	.string	"S_BON2"
.LASF1445:
	.string	"player"
.LASF1554:
	.string	"joybuse"
.LASF353:
	.string	"S_SAWB"
.LASF741:
	.string	"S_TROO_PAIN2"
.LASF71:
	.string	"_freeres_list"
.LASF1288:
	.string	"MT_BOSSSPIT"
.LASF566:
	.string	"S_FIRE1"
.LASF567:
	.string	"S_FIRE2"
.LASF125:
	.string	"fixed_t"
.LASF569:
	.string	"S_FIRE4"
.LASF570:
	.string	"S_FIRE5"
.LASF571:
	.string	"S_FIRE6"
.LASF572:
	.string	"S_FIRE7"
.LASF226:
	.string	"SPR_BROK"
.LASF574:
	.string	"S_FIRE9"
.LASF1356:
	.string	"MT_MISC44"
.LASF1357:
	.string	"MT_MISC45"
.LASF1159:
	.string	"S_CELL"
.LASF1359:
	.string	"MT_MISC47"
.LASF224:
	.string	"SPR_AMMO"
.LASF1360:
	.string	"MT_MISC48"
.LASF1361:
	.string	"MT_MISC49"
.LASF872:
	.string	"S_SKULL_RUN1"
.LASF873:
	.string	"S_SKULL_RUN2"
.LASF1239:
	.string	"S_HANGTLOOKUP"
.LASF334:
	.string	"S_CHAIN"
.LASF1563:
	.string	"mousedev"
.LASF364:
	.string	"S_PLASMAFLASH1"
.LASF320:
	.string	"S_DSGUN1"
.LASF321:
	.string	"S_DSGUN2"
.LASF215:
	.string	"SPR_SOUL"
.LASF175:
	.string	"SPR_SPOS"
.LASF324:
	.string	"S_DSGUN5"
.LASF325:
	.string	"S_DSGUN6"
.LASF326:
	.string	"S_DSGUN7"
.LASF327:
	.string	"S_DSGUN8"
.LASF328:
	.string	"S_DSGUN9"
.LASF492:
	.string	"S_SPOS_STND"
.LASF195:
	.string	"SPR_PAIN"
.LASF720:
	.string	"S_CPOS_RAISE1"
.LASF1463:
	.string	"frags"
.LASF63:
	.string	"_old_offset"
.LASF1458:
	.string	"armorpoints"
.LASF123:
	.string	"buttons"
.LASF369:
	.string	"S_BFG1"
.LASF370:
	.string	"S_BFG2"
.LASF371:
	.string	"S_BFG3"
.LASF372:
	.string	"S_BFG4"
.LASF284:
	.string	"spritenum_t"
.LASF331:
	.string	"S_DSNR2"
.LASF1568:
	.string	"scantranslate"
.LASF871:
	.string	"S_SKULL_STND2"
.LASF1134:
	.string	"S_PINV2"
.LASF1135:
	.string	"S_PINV3"
.LASF764:
	.string	"S_SARG_RUN3"
.LASF1249:
	.string	"S_TECH2LAMP2"
.LASF1250:
	.string	"S_TECH2LAMP3"
.LASF1251:
	.string	"S_TECH2LAMP4"
.LASF112:
	.string	"myargc"
.LASF1502:
	.string	"line_s"
.LASF45:
	.string	"long long int"
.LASF147:
	.string	"SPR_PUNG"
.LASF715:
	.string	"S_CPOS_XDIE2"
.LASF716:
	.string	"S_CPOS_XDIE3"
.LASF717:
	.string	"S_CPOS_XDIE4"
.LASF718:
	.string	"S_CPOS_XDIE5"
.LASF719:
	.string	"S_CPOS_XDIE6"
.LASF900:
	.string	"S_SPID_ATK1"
.LASF901:
	.string	"S_SPID_ATK2"
.LASF902:
	.string	"S_SPID_ATK3"
.LASF62:
	.string	"_flags2"
.LASF624:
	.string	"S_SKEL_MISS1"
.LASF625:
	.string	"S_SKEL_MISS2"
.LASF626:
	.string	"S_SKEL_MISS3"
.LASF627:
	.string	"S_SKEL_MISS4"
.LASF113:
	.string	"myargv"
.LASF1121:
	.string	"S_RSKULL"
.LASF953:
	.string	"S_ARACH_PLAZ2"
.LASF1362:
	.string	"MT_MISC50"
.LASF801:
	.string	"S_HEAD_RAISE1"
.LASF1397:
	.string	"MT_MISC85"
.LASF802:
	.string	"S_HEAD_RAISE2"
.LASF803:
	.string	"S_HEAD_RAISE3"
.LASF1471:
	.string	"cheats"
.LASF210:
	.string	"SPR_BSKU"
.LASF805:
	.string	"S_HEAD_RAISE5"
.LASF806:
	.string	"S_HEAD_RAISE6"
.LASF24:
	.string	"tv_nsec"
.LASF1596:
	.string	"memset"
.LASF1340:
	.string	"MT_SUPERSHOTGUN"
.LASF221:
	.string	"SPR_PMAP"
.LASF1069:
	.string	"S_BRAINEYE"
.LASF222:
	.string	"SPR_PVIS"
.LASF1523:
	.string	"PST_LIVE"
.LASF1570:
	.string	"default_t"
.LASF1298:
	.string	"MT_ARACHPLAZ"
.LASF13:
	.string	"__ino_t"
.LASF547:
	.string	"S_VILE_ATK8"
.LASF488:
	.string	"S_POSS_RAISE1"
.LASF489:
	.string	"S_POSS_RAISE2"
.LASF490:
	.string	"S_POSS_RAISE3"
.LASF491:
	.string	"S_POSS_RAISE4"
.LASF343:
	.string	"S_MISSILEDOWN"
.LASF1207:
	.string	"S_FLOATSKULL2"
.LASF1208:
	.string	"S_FLOATSKULL3"
.LASF1142:
	.string	"S_MEGA"
.LASF822:
	.string	"S_BOSS_ATK1"
.LASF823:
	.string	"S_BOSS_ATK2"
.LASF824:
	.string	"S_BOSS_ATK3"
.LASF1431:
	.string	"subsector"
.LASF280:
	.string	"SPR_BRS1"
.LASF1486:
	.string	"vertex_t"
.LASF629:
	.string	"S_SKEL_PAIN2"
.LASF1166:
	.string	"S_CSAW"
.LASF105:
	.string	"pw_invulnerability"
.LASF809:
	.string	"S_BRBALLX1"
.LASF810:
	.string	"S_BRBALLX2"
.LASF811:
	.string	"S_BRBALLX3"
.LASF939:
	.string	"S_BSPI_DIE2"
.LASF940:
	.string	"S_BSPI_DIE3"
.LASF941:
	.string	"S_BSPI_DIE4"
.LASF942:
	.string	"S_BSPI_DIE5"
.LASF90:
	.string	"wp_chaingun"
.LASF944:
	.string	"S_BSPI_DIE7"
.LASF868:
	.string	"S_BOS2_RAISE6"
.LASF495:
	.string	"S_SPOS_RUN2"
.LASF1507:
	.string	"backsector"
.LASF496:
	.string	"S_SPOS_RUN3"
.LASF998:
	.string	"S_PAIN_PAIN2"
.LASF633:
	.string	"S_SKEL_DIE4"
.LASF229:
	.string	"SPR_SHEL"
.LASF1381:
	.string	"MT_MISC69"
.LASF1459:
	.string	"armortype"
.LASF114:
	.string	"false"
.LASF281:
	.string	"SPR_TLMP"
.LASF460:
	.string	"S_POSS_STND2"
.LASF1339:
	.string	"MT_SHOTGUN"
.LASF1546:
	.string	"key_use"
.LASF1264:
	.string	"MT_SHOTGUY"
.LASF1474:
	.string	"itemcount"
.LASF1244:
	.string	"S_TECHLAMP"
.LASF1569:
	.string	"untranslated"
.LASF1285:
	.string	"MT_WOLFSS"
.LASF1539:
	.string	"key_right"
.LASF1575:
	.string	"version"
.LASF842:
	.string	"S_BOS2_STND2"
.LASF1495:
	.string	"soundtarget"
.LASF337:
	.string	"S_CHAIN1"
.LASF338:
	.string	"S_CHAIN2"
.LASF339:
	.string	"S_CHAIN3"
.LASF390:
	.string	"S_RBALLX2"
.LASF391:
	.string	"S_RBALLX3"
.LASF1578:
	.string	"xmin"
.LASF266:
	.string	"SPR_TBLU"
.LASF493:
	.string	"S_SPOS_STND2"
.LASF6:
	.string	"unsigned int"
.LASF1427:
	.string	"snext"
.LASF1640:
	.string	"M_WriteFile"
.LASF104:
	.string	"am_noammo"
.LASF133:
	.string	"thinker_s"
.LASF137:
	.string	"thinker_t"
.LASF1598:
	.string	"strcmp"
.LASF469:
	.string	"S_POSS_ATK1"
.LASF39:
	.string	"st_mtim"
.LASF471:
	.string	"S_POSS_ATK3"
.LASF1383:
	.string	"MT_MISC71"
.LASF1232:
	.string	"S_RTORCHSHRT2"
.LASF1233:
	.string	"S_RTORCHSHRT3"
.LASF903:
	.string	"S_SPID_ATK4"
.LASF1136:
	.string	"S_PINV4"
.LASF8:
	.string	"short int"
.LASF920:
	.string	"S_BSPI_RUN1"
.LASF1389:
	.string	"MT_MISC77"
.LASF1390:
	.string	"MT_MISC78"
.LASF1391:
	.string	"MT_MISC79"
.LASF1280:
	.string	"MT_SKULL"
.LASF1267:
	.string	"MT_UNDEAD"
.LASF134:
	.string	"prev"
.LASF65:
	.string	"_vtable_offset"
.LASF630:
	.string	"S_SKEL_DIE1"
.LASF631:
	.string	"S_SKEL_DIE2"
.LASF632:
	.string	"S_SKEL_DIE3"
.LASF177:
	.string	"SPR_FIRE"
.LASF634:
	.string	"S_SKEL_DIE5"
.LASF635:
	.string	"S_SKEL_DIE6"
.LASF1241:
	.string	"S_COLONGIBS"
.LASF1564:
	.string	"chat_macros"
.LASF282:
	.string	"SPR_TLP2"
.LASF1625:
	.string	"WritePCXfile"
.LASF392:
	.string	"S_PLASBALL"
.LASF238:
	.string	"SPR_SGN2"
.LASF143:
	.string	"options"
.LASF191:
	.string	"SPR_BSPI"
.LASF193:
	.string	"SPR_APBX"
.LASF1482:
	.string	"colormap"
.LASF26:
	.string	"stat"
.LASF1316:
	.string	"MT_MISC11"
.LASF1317:
	.string	"MT_MISC12"
.LASF1319:
	.string	"MT_MISC13"
.LASF1321:
	.string	"MT_MISC14"
.LASF1322:
	.string	"MT_MISC15"
.LASF1323:
	.string	"MT_MISC16"
.LASF1326:
	.string	"MT_MISC17"
.LASF1327:
	.string	"MT_MISC18"
.LASF1155:
	.string	"S_CLIP"
.LASF1417:
	.string	"radius"
.LASF1440:
	.string	"health"
.LASF1289:
	.string	"MT_BOSSTARGET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"m_misc.c"
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
