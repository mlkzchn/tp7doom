	.file	"i_video.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "i_video.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 46
rcsid:
	.string	"$Id: i_x.c,v 1.6 1997/02/03 22:45:10 b1 Exp $"
	.globl	X_display
	.bss
	.align 8
	.type	X_display, @object
	.size	X_display, 8
X_display:
	.zero	8
	.globl	X_mainWindow
	.align 8
	.type	X_mainWindow, @object
	.size	X_mainWindow, 8
X_mainWindow:
	.zero	8
	.globl	X_cmap
	.align 8
	.type	X_cmap, @object
	.size	X_cmap, 8
X_cmap:
	.zero	8
	.globl	X_visual
	.align 8
	.type	X_visual, @object
	.size	X_visual, 8
X_visual:
	.zero	8
	.globl	X_gc
	.align 8
	.type	X_gc, @object
	.size	X_gc, 8
X_gc:
	.zero	8
	.globl	X_event
	.align 32
	.type	X_event, @object
	.size	X_event, 192
X_event:
	.zero	192
	.globl	X_screen
	.align 4
	.type	X_screen, @object
	.size	X_screen, 4
X_screen:
	.zero	4
	.globl	X_visualinfo
	.align 32
	.type	X_visualinfo, @object
	.size	X_visualinfo, 64
X_visualinfo:
	.zero	64
	.globl	image
	.align 8
	.type	image, @object
	.size	image, 8
image:
	.zero	8
	.globl	X_width
	.align 4
	.type	X_width, @object
	.size	X_width, 4
X_width:
	.zero	4
	.globl	X_height
	.align 4
	.type	X_height, @object
	.size	X_height, 4
X_height:
	.zero	4
	.globl	doShm
	.align 4
	.type	doShm, @object
	.size	doShm, 4
doShm:
	.zero	4
	.globl	X_shminfo
	.align 32
	.type	X_shminfo, @object
	.size	X_shminfo, 32
X_shminfo:
	.zero	32
	.globl	X_shmeventtype
	.align 4
	.type	X_shmeventtype, @object
	.size	X_shmeventtype, 4
X_shmeventtype:
	.zero	4
	.globl	grabMouse
	.align 4
	.type	grabMouse, @object
	.size	grabMouse, 4
grabMouse:
	.zero	4
	.globl	doPointerWarp
	.data
	.align 4
	.type	doPointerWarp, @object
	.size	doPointerWarp, 4
doPointerWarp:
	.long	1
	.align 4
	.type	multiply, @object
	.size	multiply, 4
multiply:
	.long	1
	.text
	.globl	xlatekey
	.type	xlatekey, @function
xlatekey:
.LFB6:
	.file 1 "i_video.c"
	.loc 1 98 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# i_video.c:102:     switch(rc = XKeycodeToKeysym(X_display, X_event.xkey.keycode, 0))
	.loc 1 102 57
	movl	84+X_event(%rip), %eax	# X_event.xkey.keycode, _1
# i_video.c:102:     switch(rc = XKeycodeToKeysym(X_display, X_event.xkey.keycode, 0))
	.loc 1 102 17
	movzbl	%al, %ecx	# _2, _3
	movq	X_display(%rip), %rax	# X_display, X_display.0_4
	movl	$0, %edx	#,
	movl	%ecx, %esi	# _3,
	movq	%rax, %rdi	# X_display.0_4,
	call	XKeycodeToKeysym@PLT	#
# i_video.c:102:     switch(rc = XKeycodeToKeysym(X_display, X_event.xkey.keycode, 0))
	.loc 1 102 15 discriminator 1
	movl	%eax, -4(%rbp)	# _5, rc
# i_video.c:102:     switch(rc = XKeycodeToKeysym(X_display, X_event.xkey.keycode, 0))
	.loc 1 102 5 discriminator 1
	cmpl	$65535, -4(%rbp)	#, rc
	jg	.L2	#,
	cmpl	$65361, -4(%rbp)	#, rc
	jge	.L3	#,
	cmpl	$65307, -4(%rbp)	#, rc
	jg	.L2	#,
	cmpl	$65288, -4(%rbp)	#, rc
	jge	.L4	#,
	cmpl	$45, -4(%rbp)	#, rc
	je	.L5	#,
	cmpl	$61, -4(%rbp)	#, rc
	je	.L6	#,
	jmp	.L2	#
.L3:
	movl	-4(%rbp), %eax	# rc, tmp90
	subl	$65361, %eax	#, tmp89
	cmpl	$174, %eax	#, tmp89
	ja	.L2	#,
	movl	%eax, %eax	# tmp89, tmp91
	leaq	0(,%rax,4), %rdx	#, tmp92
	leaq	.L8(%rip), %rax	#, tmp93
	movl	(%rdx,%rax), %eax	#, tmp94
	cltq
	leaq	.L8(%rip), %rdx	#, tmp97
	addq	%rdx, %rax	# tmp97, tmp96
	notrack jmp	*%rax	# tmp96
	.section	.rodata
	.align 4
	.align 4
.L8:
	.long	.L27-.L8
	.long	.L26-.L8
	.long	.L25-.L8
	.long	.L24-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L5-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L6-.L8
	.long	.L23-.L8
	.long	.L22-.L8
	.long	.L21-.L8
	.long	.L20-.L8
	.long	.L19-.L8
	.long	.L18-.L8
	.long	.L17-.L8
	.long	.L16-.L8
	.long	.L15-.L8
	.long	.L14-.L8
	.long	.L13-.L8
	.long	.L12-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L11-.L8
	.long	.L11-.L8
	.long	.L10-.L8
	.long	.L10-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L9-.L8
	.long	.L9-.L8
	.long	.L9-.L8
	.long	.L9-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L2-.L8
	.long	.L7-.L8
	.text
.L4:
	movl	-4(%rbp), %eax	# rc, tmp99
	subl	$65288, %eax	#, tmp98
	cmpl	$19, %eax	#, tmp98
	ja	.L2	#,
	movl	%eax, %eax	# tmp98, tmp100
	leaq	0(,%rax,4), %rdx	#, tmp101
	leaq	.L29(%rip), %rax	#, tmp102
	movl	(%rdx,%rax), %eax	#, tmp103
	cltq
	leaq	.L29(%rip), %rdx	#, tmp106
	addq	%rdx, %rax	# tmp106, tmp105
	notrack jmp	*%rax	# tmp105
	.section	.rodata
	.align 4
	.align 4
.L29:
	.long	.L7-.L29
	.long	.L32-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L31-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L30-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L2-.L29
	.long	.L28-.L29
	.text
.L27:
# i_video.c:104:       case XK_Left:	rc = KEY_LEFTARROW;	break;
	.loc 1 104 24
	movl	$172, -4(%rbp)	#, rc
# i_video.c:104:       case XK_Left:	rc = KEY_LEFTARROW;	break;
	.loc 1 104 41
	jmp	.L33	#
.L25:
# i_video.c:105:       case XK_Right:	rc = KEY_RIGHTARROW;	break;
	.loc 1 105 25
	movl	$174, -4(%rbp)	#, rc
# i_video.c:105:       case XK_Right:	rc = KEY_RIGHTARROW;	break;
	.loc 1 105 43
	jmp	.L33	#
.L24:
# i_video.c:106:       case XK_Down:	rc = KEY_DOWNARROW;	break;
	.loc 1 106 24
	movl	$175, -4(%rbp)	#, rc
# i_video.c:106:       case XK_Down:	rc = KEY_DOWNARROW;	break;
	.loc 1 106 41
	jmp	.L33	#
.L26:
# i_video.c:107:       case XK_Up:	rc = KEY_UPARROW;	break;
	.loc 1 107 22
	movl	$173, -4(%rbp)	#, rc
# i_video.c:107:       case XK_Up:	rc = KEY_UPARROW;	break;
	.loc 1 107 37
	jmp	.L33	#
.L28:
# i_video.c:108:       case XK_Escape:	rc = KEY_ESCAPE;	break;
	.loc 1 108 26
	movl	$27, -4(%rbp)	#, rc
# i_video.c:108:       case XK_Escape:	rc = KEY_ESCAPE;	break;
	.loc 1 108 40
	jmp	.L33	#
.L31:
# i_video.c:109:       case XK_Return:	rc = KEY_ENTER;		break;
	.loc 1 109 26
	movl	$13, -4(%rbp)	#, rc
# i_video.c:109:       case XK_Return:	rc = KEY_ENTER;		break;
	.loc 1 109 40
	jmp	.L33	#
.L32:
# i_video.c:110:       case XK_Tab:	rc = KEY_TAB;		break;
	.loc 1 110 23
	movl	$9, -4(%rbp)	#, rc
# i_video.c:110:       case XK_Tab:	rc = KEY_TAB;		break;
	.loc 1 110 35
	jmp	.L33	#
.L23:
# i_video.c:111:       case XK_F1:	rc = KEY_F1;		break;
	.loc 1 111 22
	movl	$187, -4(%rbp)	#, rc
# i_video.c:111:       case XK_F1:	rc = KEY_F1;		break;
	.loc 1 111 33
	jmp	.L33	#
.L22:
# i_video.c:112:       case XK_F2:	rc = KEY_F2;		break;
	.loc 1 112 22
	movl	$188, -4(%rbp)	#, rc
# i_video.c:112:       case XK_F2:	rc = KEY_F2;		break;
	.loc 1 112 33
	jmp	.L33	#
.L21:
# i_video.c:113:       case XK_F3:	rc = KEY_F3;		break;
	.loc 1 113 22
	movl	$189, -4(%rbp)	#, rc
# i_video.c:113:       case XK_F3:	rc = KEY_F3;		break;
	.loc 1 113 33
	jmp	.L33	#
.L20:
# i_video.c:114:       case XK_F4:	rc = KEY_F4;		break;
	.loc 1 114 22
	movl	$190, -4(%rbp)	#, rc
# i_video.c:114:       case XK_F4:	rc = KEY_F4;		break;
	.loc 1 114 33
	jmp	.L33	#
.L19:
# i_video.c:115:       case XK_F5:	rc = KEY_F5;		break;
	.loc 1 115 22
	movl	$191, -4(%rbp)	#, rc
# i_video.c:115:       case XK_F5:	rc = KEY_F5;		break;
	.loc 1 115 33
	jmp	.L33	#
.L18:
# i_video.c:116:       case XK_F6:	rc = KEY_F6;		break;
	.loc 1 116 22
	movl	$192, -4(%rbp)	#, rc
# i_video.c:116:       case XK_F6:	rc = KEY_F6;		break;
	.loc 1 116 33
	jmp	.L33	#
.L17:
# i_video.c:117:       case XK_F7:	rc = KEY_F7;		break;
	.loc 1 117 22
	movl	$193, -4(%rbp)	#, rc
# i_video.c:117:       case XK_F7:	rc = KEY_F7;		break;
	.loc 1 117 33
	jmp	.L33	#
.L16:
# i_video.c:118:       case XK_F8:	rc = KEY_F8;		break;
	.loc 1 118 22
	movl	$194, -4(%rbp)	#, rc
# i_video.c:118:       case XK_F8:	rc = KEY_F8;		break;
	.loc 1 118 33
	jmp	.L33	#
.L15:
# i_video.c:119:       case XK_F9:	rc = KEY_F9;		break;
	.loc 1 119 22
	movl	$195, -4(%rbp)	#, rc
# i_video.c:119:       case XK_F9:	rc = KEY_F9;		break;
	.loc 1 119 33
	jmp	.L33	#
.L14:
# i_video.c:120:       case XK_F10:	rc = KEY_F10;		break;
	.loc 1 120 23
	movl	$196, -4(%rbp)	#, rc
# i_video.c:120:       case XK_F10:	rc = KEY_F10;		break;
	.loc 1 120 35
	jmp	.L33	#
.L13:
# i_video.c:121:       case XK_F11:	rc = KEY_F11;		break;
	.loc 1 121 23
	movl	$215, -4(%rbp)	#, rc
# i_video.c:121:       case XK_F11:	rc = KEY_F11;		break;
	.loc 1 121 35
	jmp	.L33	#
.L12:
# i_video.c:122:       case XK_F12:	rc = KEY_F12;		break;
	.loc 1 122 23
	movl	$216, -4(%rbp)	#, rc
# i_video.c:122:       case XK_F12:	rc = KEY_F12;		break;
	.loc 1 122 35
	jmp	.L33	#
.L7:
# i_video.c:125:       case XK_Delete:	rc = KEY_BACKSPACE;	break;
	.loc 1 125 26
	movl	$127, -4(%rbp)	#, rc
# i_video.c:125:       case XK_Delete:	rc = KEY_BACKSPACE;	break;
	.loc 1 125 43
	jmp	.L33	#
.L30:
# i_video.c:127:       case XK_Pause:	rc = KEY_PAUSE;		break;
	.loc 1 127 25
	movl	$255, -4(%rbp)	#, rc
# i_video.c:127:       case XK_Pause:	rc = KEY_PAUSE;		break;
	.loc 1 127 39
	jmp	.L33	#
.L6:
# i_video.c:130:       case XK_equal:	rc = KEY_EQUALS;	break;
	.loc 1 130 25
	movl	$61, -4(%rbp)	#, rc
# i_video.c:130:       case XK_equal:	rc = KEY_EQUALS;	break;
	.loc 1 130 39
	jmp	.L33	#
.L5:
# i_video.c:133:       case XK_minus:	rc = KEY_MINUS;		break;
	.loc 1 133 25
	movl	$45, -4(%rbp)	#, rc
# i_video.c:133:       case XK_minus:	rc = KEY_MINUS;		break;
	.loc 1 133 39
	jmp	.L33	#
.L11:
# i_video.c:137: 	rc = KEY_RSHIFT;
	.loc 1 137 5
	movl	$182, -4(%rbp)	#, rc
# i_video.c:138: 	break;
	.loc 1 138 2
	jmp	.L33	#
.L10:
# i_video.c:142: 	rc = KEY_RCTRL;
	.loc 1 142 5
	movl	$157, -4(%rbp)	#, rc
# i_video.c:143: 	break;
	.loc 1 143 2
	jmp	.L33	#
.L9:
# i_video.c:149: 	rc = KEY_RALT;
	.loc 1 149 5
	movl	$184, -4(%rbp)	#, rc
# i_video.c:150: 	break;
	.loc 1 150 2
	jmp	.L33	#
.L2:
# i_video.c:153: 	if (rc >= XK_space && rc <= XK_asciitilde)
	.loc 1 153 5
	cmpl	$31, -4(%rbp)	#, rc
	jle	.L34	#,
# i_video.c:153: 	if (rc >= XK_space && rc <= XK_asciitilde)
	.loc 1 153 21 discriminator 1
	cmpl	$126, -4(%rbp)	#, rc
.L34:
# i_video.c:155: 	if (rc >= 'A' && rc <= 'Z')
	.loc 1 155 5
	cmpl	$64, -4(%rbp)	#, rc
	jle	.L37	#,
# i_video.c:155: 	if (rc >= 'A' && rc <= 'Z')
	.loc 1 155 16 discriminator 1
	cmpl	$90, -4(%rbp)	#, rc
	jg	.L37	#,
# i_video.c:156: 	    rc = rc - 'A' + 'a';
	.loc 1 156 9
	addl	$32, -4(%rbp)	#, rc
.L37:
# i_video.c:157: 	break;
	.loc 1 157 2
	nop	
.L33:
# i_video.c:160:     return rc;
	.loc 1 160 12
	movl	-4(%rbp), %eax	# rc, _40
# i_video.c:162: }
	.loc 1 162 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	xlatekey, .-xlatekey
	.section	.rodata
	.align 8
.LC0:
	.string	"XShmDetach() failed in I_ShutdownGraphics()"
	.text
	.globl	I_ShutdownGraphics
	.type	I_ShutdownGraphics, @function
I_ShutdownGraphics:
.LFB7:
	.loc 1 165 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_video.c:167:   if (!XShmDetach(X_display, &X_shminfo))
	.loc 1 167 8
	movq	X_display(%rip), %rax	# X_display, X_display.1_1
	leaq	X_shminfo(%rip), %rdx	#, tmp87
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# X_display.1_1,
	call	XShmDetach@PLT	#
# i_video.c:167:   if (!XShmDetach(X_display, &X_shminfo))
	.loc 1 167 6 discriminator 1
	testl	%eax, %eax	# _2
	jne	.L39	#,
# i_video.c:168: 	    I_Error("XShmDetach() failed in I_ShutdownGraphics()");
	.loc 1 168 6
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L39:
# i_video.c:171:   shmdt(X_shminfo.shmaddr);
	.loc 1 171 18
	movq	16+X_shminfo(%rip), %rax	# X_shminfo.shmaddr, _3
# i_video.c:171:   shmdt(X_shminfo.shmaddr);
	.loc 1 171 3
	movq	%rax, %rdi	# _3,
	call	shmdt@PLT	#
# i_video.c:172:   shmctl(X_shminfo.shmid, IPC_RMID, 0);
	.loc 1 172 3
	movl	8+X_shminfo(%rip), %eax	# X_shminfo.shmid, _4
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# _4,
	call	shmctl@PLT	#
# i_video.c:175:   image->data = NULL;
	.loc 1 175 8
	movq	image(%rip), %rax	# image, image.2_5
# i_video.c:175:   image->data = NULL;
	.loc 1 175 15
	movq	$0, 16(%rax)	#, image.2_5->data
# i_video.c:176: }
	.loc 1 176 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	I_ShutdownGraphics, .-I_ShutdownGraphics
	.globl	I_StartFrame
	.type	I_StartFrame, @function
I_StartFrame:
.LFB8:
	.loc 1 184 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_video.c:187: }
	.loc 1 187 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	I_StartFrame, .-I_StartFrame
	.local	lastmousex
	.comm	lastmousex,4,4
	.local	lastmousey
	.comm	lastmousey,4,4
	.globl	mousemoved
	.bss
	.align 4
	.type	mousemoved, @object
	.size	mousemoved, 4
mousemoved:
	.zero	4
	.globl	shmFinished
	.align 4
	.type	shmFinished, @object
	.size	shmFinished, 4
shmFinished:
	.zero	4
	.text
	.globl	I_GetEvent
	.type	I_GetEvent, @function
I_GetEvent:
.LFB9:
	.loc 1 195 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# i_video.c:195: {
	.loc 1 195 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp182
	movq	%rax, -8(%rbp)	# tmp182, D.12185
	xorl	%eax, %eax	# tmp182
# i_video.c:200:     XNextEvent(X_display, &X_event);
	.loc 1 200 5
	movq	X_display(%rip), %rax	# X_display, X_display.3_1
	leaq	X_event(%rip), %rdx	#, tmp163
	movq	%rdx, %rsi	# tmp163,
	movq	%rax, %rdi	# X_display.3_1,
	call	XNextEvent@PLT	#
# i_video.c:201:     switch (X_event.type)
	.loc 1 201 20
	movl	X_event(%rip), %eax	# X_event.type, _2
# i_video.c:201:     switch (X_event.type)
	.loc 1 201 5
	cmpl	$22, %eax	#, _2
	ja	.L42	#,
	movl	%eax, %eax	# _2, tmp164
	leaq	0(,%rax,4), %rdx	#, tmp165
	leaq	.L44(%rip), %rax	#, tmp166
	movl	(%rdx,%rax), %eax	#, tmp167
	cltq
	leaq	.L44(%rip), %rdx	#, tmp170
	addq	%rdx, %rax	# tmp170, tmp169
	notrack jmp	*%rax	# tmp169
	.section	.rodata
	.align 4
	.align 4
.L44:
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L49-.L44
	.long	.L48-.L44
	.long	.L47-.L44
	.long	.L46-.L44
	.long	.L45-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L64-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L42-.L44
	.long	.L64-.L44
	.text
.L49:
# i_video.c:204: 	event.type = ev_keydown;
	.loc 1 204 13
	movl	$0, -32(%rbp)	#, event.type
# i_video.c:205: 	event.data1 = xlatekey();
	.loc 1 205 16
	call	xlatekey	#
# i_video.c:205: 	event.data1 = xlatekey();
	.loc 1 205 14 discriminator 1
	movl	%eax, -28(%rbp)	# _3, event.data1
# i_video.c:206: 	D_PostEvent(&event);
	.loc 1 206 2
	leaq	-32(%rbp), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	D_PostEvent@PLT	#
# i_video.c:208: 	break;
	.loc 1 208 2
	jmp	.L50	#
.L48:
# i_video.c:210: 	event.type = ev_keyup;
	.loc 1 210 13
	movl	$1, -32(%rbp)	#, event.type
# i_video.c:211: 	event.data1 = xlatekey();
	.loc 1 211 16
	call	xlatekey	#
# i_video.c:211: 	event.data1 = xlatekey();
	.loc 1 211 14 discriminator 1
	movl	%eax, -28(%rbp)	# _4, event.data1
# i_video.c:212: 	D_PostEvent(&event);
	.loc 1 212 2
	leaq	-32(%rbp), %rax	#, tmp172
	movq	%rax, %rdi	# tmp172,
	call	D_PostEvent@PLT	#
# i_video.c:214: 	break;
	.loc 1 214 2
	jmp	.L50	#
.L47:
# i_video.c:216: 	event.type = ev_mouse;
	.loc 1 216 13
	movl	$2, -32(%rbp)	#, event.type
# i_video.c:218: 	    (X_event.xbutton.state & Button1Mask)
	.loc 1 218 22
	movl	80+X_event(%rip), %eax	# X_event.xbutton.state, _5
# i_video.c:218: 	    (X_event.xbutton.state & Button1Mask)
	.loc 1 218 29
	andl	$256, %eax	#, _5
	movl	%eax, %edx	# _5, _6
# i_video.c:219: 	    | (X_event.xbutton.state & Button2Mask ? 2 : 0)
	.loc 1 219 24
	movl	80+X_event(%rip), %eax	# X_event.xbutton.state, _7
# i_video.c:219: 	    | (X_event.xbutton.state & Button2Mask ? 2 : 0)
	.loc 1 219 49
	shrl	$8, %eax	#, _8
	andl	$2, %eax	#, _9
# i_video.c:219: 	    | (X_event.xbutton.state & Button2Mask ? 2 : 0)
	.loc 1 219 6
	orl	%eax, %edx	# _9, _10
# i_video.c:220: 	    | (X_event.xbutton.state & Button3Mask ? 4 : 0)
	.loc 1 220 24
	movl	80+X_event(%rip), %eax	# X_event.xbutton.state, _11
# i_video.c:220: 	    | (X_event.xbutton.state & Button3Mask ? 4 : 0)
	.loc 1 220 49
	shrl	$8, %eax	#, _12
	andl	$4, %eax	#, _13
# i_video.c:220: 	    | (X_event.xbutton.state & Button3Mask ? 4 : 0)
	.loc 1 220 6
	orl	%eax, %edx	# _13, _14
# i_video.c:221: 	    | (X_event.xbutton.button == Button1)
	.loc 1 221 24
	movl	84+X_event(%rip), %eax	# X_event.xbutton.button, _15
# i_video.c:221: 	    | (X_event.xbutton.button == Button1)
	.loc 1 221 32
	cmpl	$1, %eax	#, _15
	sete	%al	#, _16
	movzbl	%al, %eax	# _16, _17
# i_video.c:221: 	    | (X_event.xbutton.button == Button1)
	.loc 1 221 6
	orl	%eax, %edx	# _17, _18
# i_video.c:222: 	    | (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 222 24
	movl	84+X_event(%rip), %eax	# X_event.xbutton.button, _19
# i_video.c:222: 	    | (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 222 47
	cmpl	$2, %eax	#, _19
	jne	.L51	#,
# i_video.c:222: 	    | (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 222 47 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.4_78
	jmp	.L52	#
.L51:
# i_video.c:222: 	    | (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 222 47 discriminator 2
	movl	$0, %eax	#, iftmp.4_78
.L52:
# i_video.c:222: 	    | (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 222 6 is_stmt 1 discriminator 4
	orl	%eax, %edx	# iftmp.4_78, _20
# i_video.c:223: 	    | (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 223 24
	movl	84+X_event(%rip), %eax	# X_event.xbutton.button, _21
# i_video.c:223: 	    | (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 223 47
	cmpl	$3, %eax	#, _21
	jne	.L53	#,
# i_video.c:223: 	    | (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 223 47 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.5_79
	jmp	.L54	#
.L53:
# i_video.c:223: 	    | (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 223 47 discriminator 2
	movl	$0, %eax	#, iftmp.5_79
.L54:
# i_video.c:223: 	    | (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 223 6 is_stmt 1 discriminator 4
	orl	%edx, %eax	# _20, _22
# i_video.c:217: 	event.data1 =
	.loc 1 217 14
	movl	%eax, -28(%rbp)	# _23, event.data1
# i_video.c:224: 	event.data2 = event.data3 = 0;
	.loc 1 224 28
	movl	$0, -20(%rbp)	#, event.data3
# i_video.c:224: 	event.data2 = event.data3 = 0;
	.loc 1 224 21
	movl	-20(%rbp), %eax	# event.data3, _24
# i_video.c:224: 	event.data2 = event.data3 = 0;
	.loc 1 224 14
	movl	%eax, -24(%rbp)	# _24, event.data2
# i_video.c:225: 	D_PostEvent(&event);
	.loc 1 225 2
	leaq	-32(%rbp), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	call	D_PostEvent@PLT	#
# i_video.c:227: 	break;
	.loc 1 227 2
	jmp	.L50	#
.L46:
# i_video.c:229: 	event.type = ev_mouse;
	.loc 1 229 13
	movl	$2, -32(%rbp)	#, event.type
# i_video.c:231: 	    (X_event.xbutton.state & Button1Mask)
	.loc 1 231 22
	movl	80+X_event(%rip), %eax	# X_event.xbutton.state, _25
# i_video.c:231: 	    (X_event.xbutton.state & Button1Mask)
	.loc 1 231 29
	andl	$256, %eax	#, _25
	movl	%eax, %edx	# _25, _26
# i_video.c:232: 	    | (X_event.xbutton.state & Button2Mask ? 2 : 0)
	.loc 1 232 24
	movl	80+X_event(%rip), %eax	# X_event.xbutton.state, _27
# i_video.c:232: 	    | (X_event.xbutton.state & Button2Mask ? 2 : 0)
	.loc 1 232 49
	shrl	$8, %eax	#, _28
	andl	$2, %eax	#, _29
# i_video.c:232: 	    | (X_event.xbutton.state & Button2Mask ? 2 : 0)
	.loc 1 232 6
	orl	%eax, %edx	# _29, _30
# i_video.c:233: 	    | (X_event.xbutton.state & Button3Mask ? 4 : 0);
	.loc 1 233 24
	movl	80+X_event(%rip), %eax	# X_event.xbutton.state, _31
# i_video.c:233: 	    | (X_event.xbutton.state & Button3Mask ? 4 : 0);
	.loc 1 233 49
	shrl	$8, %eax	#, _32
	andl	$4, %eax	#, _33
# i_video.c:233: 	    | (X_event.xbutton.state & Button3Mask ? 4 : 0);
	.loc 1 233 6
	orl	%edx, %eax	# _30, _34
# i_video.c:230: 	event.data1 =
	.loc 1 230 14
	movl	%eax, -28(%rbp)	# _35, event.data1
# i_video.c:236: 	    event.data1
	.loc 1 236 11
	movl	-28(%rbp), %edx	# event.data1, _36
# i_video.c:237: 	    ^ (X_event.xbutton.button == Button1 ? 1 : 0)
	.loc 1 237 24
	movl	84+X_event(%rip), %eax	# X_event.xbutton.button, _37
# i_video.c:237: 	    ^ (X_event.xbutton.button == Button1 ? 1 : 0)
	.loc 1 237 47
	cmpl	$1, %eax	#, _37
	sete	%al	#, _38
	movzbl	%al, %eax	# _38, _39
# i_video.c:237: 	    ^ (X_event.xbutton.button == Button1 ? 1 : 0)
	.loc 1 237 6
	xorl	%eax, %edx	# _39, _40
# i_video.c:238: 	    ^ (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 238 24
	movl	84+X_event(%rip), %eax	# X_event.xbutton.button, _41
# i_video.c:238: 	    ^ (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 238 47
	cmpl	$2, %eax	#, _41
	jne	.L55	#,
# i_video.c:238: 	    ^ (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 238 47 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.6_80
	jmp	.L56	#
.L55:
# i_video.c:238: 	    ^ (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 238 47 discriminator 2
	movl	$0, %eax	#, iftmp.6_80
.L56:
# i_video.c:238: 	    ^ (X_event.xbutton.button == Button2 ? 2 : 0)
	.loc 1 238 6 is_stmt 1 discriminator 4
	xorl	%eax, %edx	# iftmp.6_80, _42
# i_video.c:239: 	    ^ (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 239 24
	movl	84+X_event(%rip), %eax	# X_event.xbutton.button, _43
# i_video.c:239: 	    ^ (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 239 47
	cmpl	$3, %eax	#, _43
	jne	.L57	#,
# i_video.c:239: 	    ^ (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 239 47 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.7_81
	jmp	.L58	#
.L57:
# i_video.c:239: 	    ^ (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 239 47 discriminator 2
	movl	$0, %eax	#, iftmp.7_81
.L58:
# i_video.c:239: 	    ^ (X_event.xbutton.button == Button3 ? 4 : 0);
	.loc 1 239 6 is_stmt 1 discriminator 4
	xorl	%edx, %eax	# _42, _44
# i_video.c:235: 	event.data1 =
	.loc 1 235 14
	movl	%eax, -28(%rbp)	# _44, event.data1
# i_video.c:240: 	event.data2 = event.data3 = 0;
	.loc 1 240 28
	movl	$0, -20(%rbp)	#, event.data3
# i_video.c:240: 	event.data2 = event.data3 = 0;
	.loc 1 240 21
	movl	-20(%rbp), %eax	# event.data3, _45
# i_video.c:240: 	event.data2 = event.data3 = 0;
	.loc 1 240 14
	movl	%eax, -24(%rbp)	# _45, event.data2
# i_video.c:241: 	D_PostEvent(&event);
	.loc 1 241 2
	leaq	-32(%rbp), %rax	#, tmp174
	movq	%rax, %rdi	# tmp174,
	call	D_PostEvent@PLT	#
# i_video.c:243: 	break;
	.loc 1 243 2
	jmp	.L50	#
.L45:
# i_video.c:245: 	event.type = ev_mouse;
	.loc 1 245 13
	movl	$2, -32(%rbp)	#, event.type
# i_video.c:247: 	    (X_event.xmotion.state & Button1Mask)
	.loc 1 247 22
	movl	80+X_event(%rip), %eax	# X_event.xmotion.state, _46
# i_video.c:247: 	    (X_event.xmotion.state & Button1Mask)
	.loc 1 247 29
	andl	$256, %eax	#, _46
	movl	%eax, %edx	# _46, _47
# i_video.c:248: 	    | (X_event.xmotion.state & Button2Mask ? 2 : 0)
	.loc 1 248 24
	movl	80+X_event(%rip), %eax	# X_event.xmotion.state, _48
# i_video.c:248: 	    | (X_event.xmotion.state & Button2Mask ? 2 : 0)
	.loc 1 248 49
	shrl	$8, %eax	#, _49
	andl	$2, %eax	#, _50
# i_video.c:248: 	    | (X_event.xmotion.state & Button2Mask ? 2 : 0)
	.loc 1 248 6
	orl	%eax, %edx	# _50, _51
# i_video.c:249: 	    | (X_event.xmotion.state & Button3Mask ? 4 : 0);
	.loc 1 249 24
	movl	80+X_event(%rip), %eax	# X_event.xmotion.state, _52
# i_video.c:249: 	    | (X_event.xmotion.state & Button3Mask ? 4 : 0);
	.loc 1 249 49
	shrl	$8, %eax	#, _53
	andl	$4, %eax	#, _54
# i_video.c:249: 	    | (X_event.xmotion.state & Button3Mask ? 4 : 0);
	.loc 1 249 6
	orl	%edx, %eax	# _51, _55
# i_video.c:246: 	event.data1 =
	.loc 1 246 14
	movl	%eax, -28(%rbp)	# _56, event.data1
# i_video.c:250: 	event.data2 = (X_event.xmotion.x - lastmousex) << 2;
	.loc 1 250 32
	movl	64+X_event(%rip), %edx	# X_event.xmotion.x, _57
# i_video.c:250: 	event.data2 = (X_event.xmotion.x - lastmousex) << 2;
	.loc 1 250 35
	movl	lastmousex(%rip), %eax	# lastmousex, lastmousex.8_58
	subl	%eax, %edx	# lastmousex.8_58, _59
# i_video.c:250: 	event.data2 = (X_event.xmotion.x - lastmousex) << 2;
	.loc 1 250 49
	leal	0(,%rdx,4), %eax	#, _60
# i_video.c:250: 	event.data2 = (X_event.xmotion.x - lastmousex) << 2;
	.loc 1 250 14
	movl	%eax, -24(%rbp)	# _60, event.data2
# i_video.c:251: 	event.data3 = (lastmousey - X_event.xmotion.y) << 2;
	.loc 1 251 28
	movl	lastmousey(%rip), %edx	# lastmousey, lastmousey.9_61
# i_video.c:251: 	event.data3 = (lastmousey - X_event.xmotion.y) << 2;
	.loc 1 251 45
	movl	68+X_event(%rip), %eax	# X_event.xmotion.y, _62
# i_video.c:251: 	event.data3 = (lastmousey - X_event.xmotion.y) << 2;
	.loc 1 251 28
	subl	%eax, %edx	# _62, _63
# i_video.c:251: 	event.data3 = (lastmousey - X_event.xmotion.y) << 2;
	.loc 1 251 49
	leal	0(,%rdx,4), %eax	#, _64
# i_video.c:251: 	event.data3 = (lastmousey - X_event.xmotion.y) << 2;
	.loc 1 251 14
	movl	%eax, -20(%rbp)	# _64, event.data3
# i_video.c:253: 	if (event.data2 || event.data3)
	.loc 1 253 11
	movl	-24(%rbp), %eax	# event.data2, _65
# i_video.c:253: 	if (event.data2 || event.data3)
	.loc 1 253 5
	testl	%eax, %eax	# _65
	jne	.L59	#,
# i_video.c:253: 	if (event.data2 || event.data3)
	.loc 1 253 26 discriminator 1
	movl	-20(%rbp), %eax	# event.data3, _66
# i_video.c:253: 	if (event.data2 || event.data3)
	.loc 1 253 18 discriminator 1
	testl	%eax, %eax	# _66
	je	.L65	#,
.L59:
# i_video.c:255: 	    lastmousex = X_event.xmotion.x;
	.loc 1 255 34
	movl	64+X_event(%rip), %eax	# X_event.xmotion.x, _67
# i_video.c:255: 	    lastmousex = X_event.xmotion.x;
	.loc 1 255 17
	movl	%eax, lastmousex(%rip)	# _67, lastmousex
# i_video.c:256: 	    lastmousey = X_event.xmotion.y;
	.loc 1 256 34
	movl	68+X_event(%rip), %eax	# X_event.xmotion.y, _68
# i_video.c:256: 	    lastmousey = X_event.xmotion.y;
	.loc 1 256 17
	movl	%eax, lastmousey(%rip)	# _68, lastmousey
# i_video.c:257: 	    if (X_event.xmotion.x != X_width/2 &&
	.loc 1 257 25
	movl	64+X_event(%rip), %edx	# X_event.xmotion.x, _69
# i_video.c:257: 	    if (X_event.xmotion.x != X_width/2 &&
	.loc 1 257 38
	movl	X_width(%rip), %eax	# X_width, X_width.10_70
	movl	%eax, %ecx	# X_width.10_70, tmp175
	shrl	$31, %ecx	#, tmp175
	addl	%ecx, %eax	# tmp175, tmp176
	sarl	%eax	# tmp177
# i_video.c:257: 	    if (X_event.xmotion.x != X_width/2 &&
	.loc 1 257 9
	cmpl	%eax, %edx	# _71, _69
	je	.L61	#,
# i_video.c:258: 		X_event.xmotion.y != X_height/2)
	.loc 1 258 18
	movl	68+X_event(%rip), %edx	# X_event.xmotion.y, _72
# i_video.c:258: 		X_event.xmotion.y != X_height/2)
	.loc 1 258 32
	movl	X_height(%rip), %eax	# X_height, X_height.11_73
	movl	%eax, %ecx	# X_height.11_73, tmp178
	shrl	$31, %ecx	#, tmp178
	addl	%ecx, %eax	# tmp178, tmp179
	sarl	%eax	# tmp180
# i_video.c:257: 	    if (X_event.xmotion.x != X_width/2 &&
	.loc 1 257 41 discriminator 1
	cmpl	%eax, %edx	# _74, _72
	je	.L61	#,
# i_video.c:260: 		D_PostEvent(&event);
	.loc 1 260 3
	leaq	-32(%rbp), %rax	#, tmp181
	movq	%rax, %rdi	# tmp181,
	call	D_PostEvent@PLT	#
# i_video.c:262: 		mousemoved = false;
	.loc 1 262 14
	movl	$0, mousemoved(%rip)	#, mousemoved
# i_video.c:268: 	break;
	.loc 1 268 2
	jmp	.L65	#
.L61:
# i_video.c:265: 		mousemoved = true;
	.loc 1 265 14
	movl	$1, mousemoved(%rip)	#, mousemoved
# i_video.c:268: 	break;
	.loc 1 268 2
	jmp	.L65	#
.L42:
# i_video.c:275: 	if (doShm && X_event.type == X_shmeventtype) shmFinished = true;
	.loc 1 275 6
	movl	doShm(%rip), %eax	# doShm, doShm.12_75
# i_video.c:275: 	if (doShm && X_event.type == X_shmeventtype) shmFinished = true;
	.loc 1 275 5
	testl	%eax, %eax	# doShm.12_75
	je	.L66	#,
# i_video.c:275: 	if (doShm && X_event.type == X_shmeventtype) shmFinished = true;
	.loc 1 275 22 discriminator 1
	movl	X_event(%rip), %edx	# X_event.type, _76
# i_video.c:275: 	if (doShm && X_event.type == X_shmeventtype) shmFinished = true;
	.loc 1 275 28 discriminator 1
	movl	X_shmeventtype(%rip), %eax	# X_shmeventtype, X_shmeventtype.13_77
# i_video.c:275: 	if (doShm && X_event.type == X_shmeventtype) shmFinished = true;
	.loc 1 275 12 discriminator 1
	cmpl	%eax, %edx	# X_shmeventtype.13_77, _76
	jne	.L66	#,
# i_video.c:275: 	if (doShm && X_event.type == X_shmeventtype) shmFinished = true;
	.loc 1 275 59 discriminator 2
	movl	$1, shmFinished(%rip)	#, shmFinished
# i_video.c:276: 	break;
	.loc 1 276 2
	jmp	.L66	#
.L64:
# i_video.c:272: 	break;
	.loc 1 272 2
	nop	
	jmp	.L50	#
.L65:
# i_video.c:268: 	break;
	.loc 1 268 2
	nop	
	jmp	.L50	#
.L66:
# i_video.c:276: 	break;
	.loc 1 276 2
	nop	
.L50:
# i_video.c:279: }
	.loc 1 279 1
	nop	
	movq	-8(%rbp), %rax	# D.12185, tmp183
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp183
	je	.L63	#,
	call	__stack_chk_fail@PLT	#
.L63:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	I_GetEvent, .-I_GetEvent
	.globl	createnullcursor
	.type	createnullcursor, @function
createnullcursor:
.LFB10:
	.loc 1 285 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -200(%rbp)	# display, display
	movq	%rsi, -208(%rbp)	# root, root
# i_video.c:285: {
	.loc 1 285 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	movq	%rax, -8(%rbp)	# tmp105, D.12187
	xorl	%eax, %eax	# tmp105
# i_video.c:292:     cursormask = XCreatePixmap(display, root, 1, 1, 1/*depth*/);
	.loc 1 292 18
	movq	-208(%rbp), %rsi	# root, tmp84
	movq	-200(%rbp), %rax	# display, tmp85
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp85,
	call	XCreatePixmap@PLT	#
	movq	%rax, -184(%rbp)	# tmp86, cursormask
# i_video.c:293:     xgc.function = GXclear;
	.loc 1 293 18
	movl	$0, -144(%rbp)	#, xgc.function
# i_video.c:294:     gc =  XCreateGC(display, cursormask, GCFunction, &xgc);
	.loc 1 294 11
	leaq	-144(%rbp), %rdx	#, tmp87
	movq	-184(%rbp), %rsi	# cursormask, tmp88
	movq	-200(%rbp), %rax	# display, tmp89
	movq	%rdx, %rcx	# tmp87,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp89,
	call	XCreateGC@PLT	#
	movq	%rax, -176(%rbp)	# tmp90, gc
# i_video.c:295:     XFillRectangle(display, cursormask, gc, 0, 0, 1, 1);
	.loc 1 295 5
	movq	-176(%rbp), %rdx	# gc, tmp91
	movq	-184(%rbp), %rsi	# cursormask, tmp92
	movq	-200(%rbp), %rax	# display, tmp93
	subq	$8, %rsp	#,
	pushq	$1	#
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp93,
	call	XFillRectangle@PLT	#
	addq	$16, %rsp	#,
# i_video.c:296:     dummycolour.pixel = 0;
	.loc 1 296 23
	movq	$0, -160(%rbp)	#, dummycolour.pixel
# i_video.c:297:     dummycolour.red = 0;
	.loc 1 297 21
	movw	$0, -152(%rbp)	#, dummycolour.red
# i_video.c:298:     dummycolour.flags = 04;
	.loc 1 298 23
	movb	$4, -146(%rbp)	#, dummycolour.flags
# i_video.c:299:     cursor = XCreatePixmapCursor(display, cursormask, cursormask,
	.loc 1 299 14
	leaq	-160(%rbp), %rdi	#, tmp94
	leaq	-160(%rbp), %rcx	#, tmp95
	movq	-184(%rbp), %rdx	# cursormask, tmp96
	movq	-184(%rbp), %rsi	# cursormask, tmp97
	movq	-200(%rbp), %rax	# display, tmp98
	subq	$8, %rsp	#,
	pushq	$0	#
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp94,
	movq	%rax, %rdi	# tmp98,
	call	XCreatePixmapCursor@PLT	#
	addq	$16, %rsp	#,
	movq	%rax, -168(%rbp)	# tmp99, cursor
# i_video.c:301:     XFreePixmap(display,cursormask);
	.loc 1 301 5
	movq	-184(%rbp), %rdx	# cursormask, tmp100
	movq	-200(%rbp), %rax	# display, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	XFreePixmap@PLT	#
# i_video.c:302:     XFreeGC(display,gc);
	.loc 1 302 5
	movq	-176(%rbp), %rdx	# gc, tmp102
	movq	-200(%rbp), %rax	# display, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	XFreeGC@PLT	#
# i_video.c:303:     return cursor;
	.loc 1 303 12
	movq	-168(%rbp), %rax	# cursor, _17
# i_video.c:304: }
	.loc 1 304 1
	movq	-8(%rbp), %rdx	# D.12187, tmp106
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	je	.L69	#,
	call	__stack_chk_fail@PLT	#
.L69:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	createnullcursor, .-createnullcursor
	.globl	I_StartTic
	.type	I_StartTic, @function
I_StartTic:
.LFB11:
	.loc 1 310 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_video.c:312:     if (!X_display)
	.loc 1 312 9
	movq	X_display(%rip), %rax	# X_display, X_display.14_1
# i_video.c:312:     if (!X_display)
	.loc 1 312 8
	testq	%rax, %rax	# X_display.14_1
	je	.L76	#,
# i_video.c:315:     while (XPending(X_display))
	.loc 1 315 11
	jmp	.L73	#
.L74:
# i_video.c:316: 	I_GetEvent();
	.loc 1 316 2
	call	I_GetEvent	#
.L73:
# i_video.c:315:     while (XPending(X_display))
	.loc 1 315 12
	movq	X_display(%rip), %rax	# X_display, X_display.15_2
	movq	%rax, %rdi	# X_display.15_2,
	call	XPending@PLT	#
# i_video.c:315:     while (XPending(X_display))
	.loc 1 315 12 is_stmt 0 discriminator 1
	testl	%eax, %eax	# _3
	jne	.L74	#,
# i_video.c:321:     if (grabMouse)
	.loc 1 321 9 is_stmt 1
	movl	grabMouse(%rip), %eax	# grabMouse, grabMouse.16_4
# i_video.c:321:     if (grabMouse)
	.loc 1 321 8
	testl	%eax, %eax	# grabMouse.16_4
	je	.L75	#,
# i_video.c:323: 	if (!--doPointerWarp)
	.loc 1 323 7
	movl	doPointerWarp(%rip), %eax	# doPointerWarp, doPointerWarp.17_5
	subl	$1, %eax	#, _6
# i_video.c:323: 	if (!--doPointerWarp)
	.loc 1 323 5
	movl	%eax, doPointerWarp(%rip)	# _6, doPointerWarp
# i_video.c:323: 	if (!--doPointerWarp)
	.loc 1 323 7
	movl	doPointerWarp(%rip), %eax	# doPointerWarp, doPointerWarp.18_7
# i_video.c:323: 	if (!--doPointerWarp)
	.loc 1 323 5
	testl	%eax, %eax	# doPointerWarp.18_7
	jne	.L75	#,
# i_video.c:325: 	    XWarpPointer( X_display,
	.loc 1 325 6
	movl	X_height(%rip), %eax	# X_height, X_height.19_8
	movl	%eax, %edx	# X_height.19_8, tmp95
	shrl	$31, %edx	#, tmp95
	addl	%edx, %eax	# tmp95, tmp96
	sarl	%eax	# tmp97
	movl	%eax, %esi	# tmp97, _9
	movl	X_width(%rip), %eax	# X_width, X_width.20_10
	movl	%eax, %edx	# X_width.20_10, tmp98
	shrl	$31, %edx	#, tmp98
	addl	%edx, %eax	# tmp98, tmp99
	sarl	%eax	# tmp100
	movl	%eax, %ecx	# tmp100, _11
	movq	X_mainWindow(%rip), %rdx	# X_mainWindow, X_mainWindow.21_12
	movq	X_display(%rip), %rax	# X_display, X_display.22_13
	subq	$8, %rsp	#,
	pushq	%rsi	# _9
	pushq	%rcx	# _11
	pushq	$0	#
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# X_display.22_13,
	call	XWarpPointer@PLT	#
	addq	$32, %rsp	#,
# i_video.c:332: 	    doPointerWarp = POINTER_WARP_COUNTDOWN;
	.loc 1 332 20
	movl	$1, doPointerWarp(%rip)	#, doPointerWarp
.L75:
# i_video.c:336:     mousemoved = false;
	.loc 1 336 16
	movl	$0, mousemoved(%rip)	#, mousemoved
	jmp	.L70	#
.L76:
# i_video.c:313: 	return;
	.loc 1 313 2
	nop	
.L70:
# i_video.c:338: }
	.loc 1 338 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	I_StartTic, .-I_StartTic
	.globl	I_UpdateNoBlit
	.type	I_UpdateNoBlit, @function
I_UpdateNoBlit:
.LFB12:
	.loc 1 345 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_video.c:347: }
	.loc 1 347 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	I_UpdateNoBlit, .-I_UpdateNoBlit
	.section	.rodata
.LC1:
	.string	"XShmPutImage() failed\n"
	.text
	.globl	I_FinishUpdate
	.type	I_FinishUpdate, @function
I_FinishUpdate:
.LFB13:
	.loc 1 353 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
# i_video.c:353: {
	.loc 1 353 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp289
	movq	%rax, -8(%rbp)	# tmp289, D.12189
	xorl	%eax, %eax	# tmp289
# i_video.c:361:     if (devparm)
	.loc 1 361 9
	movl	devparm(%rip), %eax	# devparm, devparm.23_1
# i_video.c:361:     if (devparm)
	.loc 1 361 8
	testl	%eax, %eax	# devparm.23_1
	je	.L79	#,
# i_video.c:364: 	i = I_GetTime();
	.loc 1 364 6
	call	I_GetTime@PLT	#
	movl	%eax, -108(%rbp)	# tmp231, i
# i_video.c:365: 	tics = i - lasttic;
	.loc 1 365 11
	movl	lasttic.2(%rip), %eax	# lasttic, lasttic.24_2
# i_video.c:365: 	tics = i - lasttic;
	.loc 1 365 7
	movl	-108(%rbp), %edx	# i, tmp235
	subl	%eax, %edx	# lasttic.24_2, tmp234
	movl	%edx, -112(%rbp)	# tmp234, tics
# i_video.c:366: 	lasttic = i;
	.loc 1 366 10
	movl	-108(%rbp), %eax	# i, tmp236
	movl	%eax, lasttic.2(%rip)	# tmp236, lasttic
# i_video.c:367: 	if (tics > 20) tics = 20;
	.loc 1 367 5
	cmpl	$20, -112(%rbp)	#, tics
	jle	.L80	#,
# i_video.c:367: 	if (tics > 20) tics = 20;
	.loc 1 367 22 discriminator 1
	movl	$20, -112(%rbp)	#, tics
.L80:
# i_video.c:369: 	for (i=0 ; i<tics*2 ; i+=2)
	.loc 1 369 8
	movl	$0, -108(%rbp)	#, i
# i_video.c:369: 	for (i=0 ; i<tics*2 ; i+=2)
	.loc 1 369 2
	jmp	.L81	#
.L82:
# i_video.c:370: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0xff;
	.loc 1 370 13
	movq	screens(%rip), %rdx	# screens[0], _3
# i_video.c:370: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0xff;
	.loc 1 370 47
	movl	-108(%rbp), %eax	# i, tmp237
	addl	$63680, %eax	#, _4
	cltq
# i_video.c:370: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0xff;
	.loc 1 370 16
	addq	%rdx, %rax	# _3, _6
# i_video.c:370: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0xff;
	.loc 1 370 52
	movb	$-1, (%rax)	#, *_6
# i_video.c:369: 	for (i=0 ; i<tics*2 ; i+=2)
	.loc 1 369 25 discriminator 3
	addl	$2, -108(%rbp)	#, i
.L81:
# i_video.c:369: 	for (i=0 ; i<tics*2 ; i+=2)
	.loc 1 369 19 discriminator 1
	movl	-112(%rbp), %eax	# tics, tmp238
	addl	%eax, %eax	# _7
# i_video.c:369: 	for (i=0 ; i<tics*2 ; i+=2)
	.loc 1 369 14 discriminator 1
	cmpl	%eax, -108(%rbp)	# _7, i
	jl	.L82	#,
# i_video.c:371: 	for ( ; i<20*2 ; i+=2)
	.loc 1 371 2
	jmp	.L83	#
.L84:
# i_video.c:372: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0x0;
	.loc 1 372 13
	movq	screens(%rip), %rdx	# screens[0], _8
# i_video.c:372: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0x0;
	.loc 1 372 47
	movl	-108(%rbp), %eax	# i, tmp239
	addl	$63680, %eax	#, _9
	cltq
# i_video.c:372: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0x0;
	.loc 1 372 16
	addq	%rdx, %rax	# _8, _11
# i_video.c:372: 	    screens[0][ (SCREENHEIGHT-1)*SCREENWIDTH + i] = 0x0;
	.loc 1 372 52
	movb	$0, (%rax)	#, *_11
# i_video.c:371: 	for ( ; i<20*2 ; i+=2)
	.loc 1 371 20 discriminator 2
	addl	$2, -108(%rbp)	#, i
.L83:
# i_video.c:371: 	for ( ; i<20*2 ; i+=2)
	.loc 1 371 11 discriminator 1
	cmpl	$39, -108(%rbp)	#, i
	jle	.L84	#,
.L79:
# i_video.c:377:     if (multiply == 2)
	.loc 1 377 18
	movl	multiply(%rip), %eax	# multiply, multiply.25_12
# i_video.c:377:     if (multiply == 2)
	.loc 1 377 8
	cmpl	$2, %eax	#, multiply.25_12
	jne	.L85	#,
.LBB2:
# i_video.c:386: 	ilineptr = (unsigned int *) (screens[0]);
	.loc 1 386 11
	movq	screens(%rip), %rax	# screens[0], tmp240
	movq	%rax, -64(%rbp)	# tmp240, ilineptr
# i_video.c:387: 	for (i=0 ; i<2 ; i++)
	.loc 1 387 8
	movl	$0, -96(%rbp)	#, i
# i_video.c:387: 	for (i=0 ; i<2 ; i++)
	.loc 1 387 2
	jmp	.L86	#
.L87:
# i_video.c:388: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 388 44
	movq	image(%rip), %rax	# image, image.26_13
	movq	16(%rax), %rdx	# image.26_13->data, _14
# i_video.c:388: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 388 52
	movl	X_width(%rip), %eax	# X_width, X_width.27_15
	imull	-96(%rbp), %eax	# i, _16
	cltq
# i_video.c:388: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 388 38
	addq	%rax, %rdx	# _17, _18
# i_video.c:388: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 388 19
	movl	-96(%rbp), %eax	# i, tmp242
	cltq
	movq	%rdx, -32(%rbp,%rax,8)	# _18, MEM[(unsigned int *[2] *)_266][i_170]
# i_video.c:387: 	for (i=0 ; i<2 ; i++)
	.loc 1 387 20 discriminator 3
	addl	$1, -96(%rbp)	#, i
.L86:
# i_video.c:387: 	for (i=0 ; i<2 ; i++)
	.loc 1 387 14 discriminator 1
	cmpl	$1, -96(%rbp)	#, i
	jle	.L87	#,
# i_video.c:390: 	y = SCREENHEIGHT;
	.loc 1 390 4
	movl	$200, -100(%rbp)	#, y
# i_video.c:391: 	while (y--)
	.loc 1 391 8
	jmp	.L88	#
.L90:
# i_video.c:393: 	    x = SCREENWIDTH;
	.loc 1 393 8
	movl	$320, -104(%rbp)	#, x
.L89:
# i_video.c:396: 		fouripixels = *ilineptr++;
	.loc 1 396 26
	movq	-64(%rbp), %rax	# ilineptr, ilineptr.28_19
	leaq	4(%rax), %rdx	#, tmp243
	movq	%rdx, -64(%rbp)	# tmp243, ilineptr
# i_video.c:396: 		fouripixels = *ilineptr++;
	.loc 1 396 15
	movl	(%rax), %eax	# *ilineptr.28_19, tmp244
	movl	%eax, -76(%rbp)	# tmp244, fouripixels
# i_video.c:397: 		twoopixels =	(fouripixels & 0xff000000)
	.loc 1 397 29
	movl	-76(%rbp), %eax	# fouripixels, tmp245
	andl	$-16777216, %eax	#, tmp245
	movl	%eax, %edx	# tmp245, _20
# i_video.c:398: 		    |	((fouripixels>>8) & 0xffff00)
	.loc 1 398 22
	movl	-76(%rbp), %eax	# fouripixels, tmp246
	shrl	$8, %eax	#, _21
# i_video.c:398: 		    |	((fouripixels>>8) & 0xffff00)
	.loc 1 398 27
	andl	$16776960, %eax	#, _22
# i_video.c:398: 		    |	((fouripixels>>8) & 0xffff00)
	.loc 1 398 7
	orl	%eax, %edx	# _22, _23
# i_video.c:399: 		    |	((fouripixels>>16) & 0xff);
	.loc 1 399 22
	movl	-76(%rbp), %eax	# fouripixels, tmp247
	shrl	$16, %eax	#, _24
# i_video.c:399: 		    |	((fouripixels>>16) & 0xff);
	.loc 1 399 28
	movzbl	%al, %eax	# _24, _25
# i_video.c:397: 		twoopixels =	(fouripixels & 0xff000000)
	.loc 1 397 14
	orl	%edx, %eax	# _23, tmp248
	movl	%eax, -72(%rbp)	# tmp248, twoopixels
# i_video.c:400: 		twomoreopixels =	((fouripixels<<16) & 0xff000000)
	.loc 1 400 33
	movl	-76(%rbp), %eax	# fouripixels, tmp249
	sall	$16, %eax	#, _26
# i_video.c:400: 		twomoreopixels =	((fouripixels<<16) & 0xff000000)
	.loc 1 400 39
	andl	$-16777216, %eax	#, _26
	movl	%eax, %edx	# _26, _27
# i_video.c:401: 		    |	((fouripixels<<8) & 0xffff00)
	.loc 1 401 22
	movl	-76(%rbp), %eax	# fouripixels, tmp250
	sall	$8, %eax	#, _28
# i_video.c:401: 		    |	((fouripixels<<8) & 0xffff00)
	.loc 1 401 27
	andl	$16776960, %eax	#, _29
# i_video.c:401: 		    |	((fouripixels<<8) & 0xffff00)
	.loc 1 401 7
	orl	%eax, %edx	# _29, _30
# i_video.c:402: 		    |	(fouripixels & 0xff);
	.loc 1 402 22
	movl	-76(%rbp), %eax	# fouripixels, tmp251
	movzbl	%al, %eax	# tmp251, _31
# i_video.c:400: 		twomoreopixels =	((fouripixels<<16) & 0xff000000)
	.loc 1 400 18
	orl	%edx, %eax	# _30, tmp252
	movl	%eax, -68(%rbp)	# tmp252, twomoreopixels
# i_video.c:409: 		*olineptrs[0]++ = twomoreopixels;
	.loc 1 409 13
	movq	-32(%rbp), %rax	# MEM[(unsigned int *[2] *)_266][0], _32
# i_video.c:409: 		*olineptrs[0]++ = twomoreopixels;
	.loc 1 409 16
	leaq	4(%rax), %rdx	#, _34
	movq	%rdx, -32(%rbp)	# _34, MEM[(unsigned int *[2] *)_266][0]
# i_video.c:409: 		*olineptrs[0]++ = twomoreopixels;
	.loc 1 409 19
	movl	-68(%rbp), %edx	# twomoreopixels, tmp253
	movl	%edx, (%rax)	# tmp253, *_33
# i_video.c:410: 		*olineptrs[1]++ = twomoreopixels;
	.loc 1 410 13
	movq	-24(%rbp), %rax	# MEM[(unsigned int *[2] *)_266][1], _35
# i_video.c:410: 		*olineptrs[1]++ = twomoreopixels;
	.loc 1 410 16
	leaq	4(%rax), %rdx	#, _37
	movq	%rdx, -24(%rbp)	# _37, MEM[(unsigned int *[2] *)_266][1]
# i_video.c:410: 		*olineptrs[1]++ = twomoreopixels;
	.loc 1 410 19
	movl	-68(%rbp), %edx	# twomoreopixels, tmp254
	movl	%edx, (%rax)	# tmp254, *_36
# i_video.c:411: 		*olineptrs[0]++ = twoopixels;
	.loc 1 411 13
	movq	-32(%rbp), %rax	# MEM[(unsigned int *[2] *)_266][0], _38
# i_video.c:411: 		*olineptrs[0]++ = twoopixels;
	.loc 1 411 16
	leaq	4(%rax), %rdx	#, _40
	movq	%rdx, -32(%rbp)	# _40, MEM[(unsigned int *[2] *)_266][0]
# i_video.c:411: 		*olineptrs[0]++ = twoopixels;
	.loc 1 411 19
	movl	-72(%rbp), %edx	# twoopixels, tmp255
	movl	%edx, (%rax)	# tmp255, *_39
# i_video.c:412: 		*olineptrs[1]++ = twoopixels;
	.loc 1 412 13
	movq	-24(%rbp), %rax	# MEM[(unsigned int *[2] *)_266][1], _41
# i_video.c:412: 		*olineptrs[1]++ = twoopixels;
	.loc 1 412 16
	leaq	4(%rax), %rdx	#, _43
	movq	%rdx, -24(%rbp)	# _43, MEM[(unsigned int *[2] *)_266][1]
# i_video.c:412: 		*olineptrs[1]++ = twoopixels;
	.loc 1 412 19
	movl	-72(%rbp), %edx	# twoopixels, tmp256
	movl	%edx, (%rax)	# tmp256, *_42
# i_video.c:414: 	    } while (x-=4);
	.loc 1 414 16 discriminator 1
	subl	$4, -104(%rbp)	#, x
# i_video.c:414: 	    } while (x-=4);
	.loc 1 414 15 discriminator 1
	cmpl	$0, -104(%rbp)	#, x
	jne	.L89	#,
# i_video.c:415: 	    olineptrs[0] += X_width/4;
	.loc 1 415 15
	movq	-32(%rbp), %rdx	# MEM[(unsigned int *[2] *)_266][0], _44
# i_video.c:415: 	    olineptrs[0] += X_width/4;
	.loc 1 415 29
	movl	X_width(%rip), %eax	# X_width, X_width.29_45
	leal	3(%rax), %ecx	#, tmp258
	testl	%eax, %eax	# tmp257
	cmovs	%ecx, %eax	# tmp258,, tmp257
	sarl	$2, %eax	#, tmp259
	cltq
# i_video.c:415: 	    olineptrs[0] += X_width/4;
	.loc 1 415 19
	salq	$2, %rax	#, _48
	addq	%rdx, %rax	# _44, _49
	movq	%rax, -32(%rbp)	# _49, MEM[(unsigned int *[2] *)_266][0]
# i_video.c:416: 	    olineptrs[1] += X_width/4;
	.loc 1 416 15
	movq	-24(%rbp), %rdx	# MEM[(unsigned int *[2] *)_266][1], _50
# i_video.c:416: 	    olineptrs[1] += X_width/4;
	.loc 1 416 29
	movl	X_width(%rip), %eax	# X_width, X_width.30_51
	leal	3(%rax), %ecx	#, tmp261
	testl	%eax, %eax	# tmp260
	cmovs	%ecx, %eax	# tmp261,, tmp260
	sarl	$2, %eax	#, tmp262
	cltq
# i_video.c:416: 	    olineptrs[1] += X_width/4;
	.loc 1 416 19
	salq	$2, %rax	#, _54
	addq	%rdx, %rax	# _50, _55
	movq	%rax, -24(%rbp)	# _55, MEM[(unsigned int *[2] *)_266][1]
.L88:
# i_video.c:391: 	while (y--)
	.loc 1 391 10
	movl	-100(%rbp), %eax	# y, y.31_56
	leal	-1(%rax), %edx	#, tmp263
	movl	%edx, -100(%rbp)	# tmp263, y
# i_video.c:391: 	while (y--)
	.loc 1 391 9
	testl	%eax, %eax	# y.31_56
	jne	.L90	#,
	jmp	.L91	#
.L85:
.LBE2:
# i_video.c:420:     else if (multiply == 3)
	.loc 1 420 23
	movl	multiply(%rip), %eax	# multiply, multiply.32_57
# i_video.c:420:     else if (multiply == 3)
	.loc 1 420 13
	cmpl	$3, %eax	#, multiply.32_57
	jne	.L92	#,
.LBB3:
# i_video.c:428: 	ilineptr = (unsigned int *) (screens[0]);
	.loc 1 428 11
	movq	screens(%rip), %rax	# screens[0], tmp264
	movq	%rax, -56(%rbp)	# tmp264, ilineptr
# i_video.c:429: 	for (i=0 ; i<3 ; i++)
	.loc 1 429 8
	movl	$0, -84(%rbp)	#, i
# i_video.c:429: 	for (i=0 ; i<3 ; i++)
	.loc 1 429 2
	jmp	.L93	#
.L94:
# i_video.c:430: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 430 44
	movq	image(%rip), %rax	# image, image.33_58
	movq	16(%rax), %rdx	# image.33_58->data, _59
# i_video.c:430: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 430 52
	movl	X_width(%rip), %eax	# X_width, X_width.34_60
	imull	-84(%rbp), %eax	# i, _61
	cltq
# i_video.c:430: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 430 38
	addq	%rax, %rdx	# _62, _63
# i_video.c:430: 	    olineptrs[i] = (unsigned int *) &image->data[i*X_width];
	.loc 1 430 19
	movl	-84(%rbp), %eax	# i, tmp266
	cltq
	movq	%rdx, -32(%rbp,%rax,8)	# _63, MEM[(unsigned int *[3] *)_266][i_175]
# i_video.c:429: 	for (i=0 ; i<3 ; i++)
	.loc 1 429 20 discriminator 3
	addl	$1, -84(%rbp)	#, i
.L93:
# i_video.c:429: 	for (i=0 ; i<3 ; i++)
	.loc 1 429 14 discriminator 1
	cmpl	$2, -84(%rbp)	#, i
	jle	.L94	#,
# i_video.c:432: 	y = SCREENHEIGHT;
	.loc 1 432 4
	movl	$200, -88(%rbp)	#, y
# i_video.c:433: 	while (y--)
	.loc 1 433 8
	jmp	.L95	#
.L97:
# i_video.c:435: 	    x = SCREENWIDTH;
	.loc 1 435 8
	movl	$320, -92(%rbp)	#, x
.L96:
# i_video.c:438: 		fouripixels = *ilineptr++;
	.loc 1 438 26
	movq	-56(%rbp), %rax	# ilineptr, ilineptr.35_64
	leaq	4(%rax), %rdx	#, tmp267
	movq	%rdx, -56(%rbp)	# tmp267, ilineptr
# i_video.c:438: 		fouripixels = *ilineptr++;
	.loc 1 438 15
	movl	(%rax), %eax	# *ilineptr.35_64, tmp268
	movl	%eax, -80(%rbp)	# tmp268, fouripixels
# i_video.c:439: 		fouropixels[0] = (fouripixels & 0xff000000)
	.loc 1 439 33
	movl	-80(%rbp), %eax	# fouripixels, tmp269
	andl	$-16777216, %eax	#, tmp269
	movl	%eax, %edx	# tmp269, _65
# i_video.c:440: 		    |	((fouripixels>>8) & 0xff0000)
	.loc 1 440 22
	movl	-80(%rbp), %eax	# fouripixels, tmp270
	shrl	$8, %eax	#, _66
# i_video.c:440: 		    |	((fouripixels>>8) & 0xff0000)
	.loc 1 440 27
	andl	$16711680, %eax	#, _67
# i_video.c:440: 		    |	((fouripixels>>8) & 0xff0000)
	.loc 1 440 7
	orl	%eax, %edx	# _67, _68
# i_video.c:441: 		    |	((fouripixels>>16) & 0xffff);
	.loc 1 441 28
	movl	-80(%rbp), %eax	# fouripixels, tmp271
	shrl	$16, %eax	#, _69
# i_video.c:441: 		    |	((fouripixels>>16) & 0xffff);
	.loc 1 441 7
	orl	%edx, %eax	# _68, _70
# i_video.c:439: 		fouropixels[0] = (fouripixels & 0xff000000)
	.loc 1 439 18
	movl	%eax, -44(%rbp)	# _70, fouropixels[0]
# i_video.c:442: 		fouropixels[1] = ((fouripixels<<8) & 0xff000000)
	.loc 1 442 33
	movl	-80(%rbp), %eax	# fouripixels, tmp272
	sall	$8, %eax	#, _71
# i_video.c:442: 		fouropixels[1] = ((fouripixels<<8) & 0xff000000)
	.loc 1 442 38
	andl	$-16777216, %eax	#, _71
	movl	%eax, %edx	# _71, _72
# i_video.c:443: 		    |	(fouripixels & 0xffff00)
	.loc 1 443 22
	movl	-80(%rbp), %eax	# fouripixels, tmp273
	andl	$16776960, %eax	#, _73
# i_video.c:443: 		    |	(fouripixels & 0xffff00)
	.loc 1 443 7
	orl	%eax, %edx	# _73, _74
# i_video.c:444: 		    |	((fouripixels>>8) & 0xff);
	.loc 1 444 22
	movl	-80(%rbp), %eax	# fouripixels, tmp274
	shrl	$8, %eax	#, _75
# i_video.c:444: 		    |	((fouripixels>>8) & 0xff);
	.loc 1 444 27
	movzbl	%al, %eax	# _75, _76
# i_video.c:444: 		    |	((fouripixels>>8) & 0xff);
	.loc 1 444 7
	orl	%edx, %eax	# _74, _77
# i_video.c:442: 		fouropixels[1] = ((fouripixels<<8) & 0xff000000)
	.loc 1 442 18
	movl	%eax, -40(%rbp)	# _77, fouropixels[1]
# i_video.c:445: 		fouropixels[2] = ((fouripixels<<16) & 0xffff0000)
	.loc 1 445 39
	movl	-80(%rbp), %eax	# fouripixels, tmp275
	sall	$16, %eax	#, tmp275
	movl	%eax, %edx	# tmp275, _78
# i_video.c:446: 		    |	((fouripixels<<8) & 0xff00)
	.loc 1 446 22
	movl	-80(%rbp), %eax	# fouripixels, tmp276
	sall	$8, %eax	#, _79
# i_video.c:446: 		    |	((fouripixels<<8) & 0xff00)
	.loc 1 446 27
	movzwl	%ax, %eax	# _79, _80
# i_video.c:446: 		    |	((fouripixels<<8) & 0xff00)
	.loc 1 446 7
	orl	%eax, %edx	# _80, _81
# i_video.c:447: 		    |	(fouripixels & 0xff);
	.loc 1 447 22
	movl	-80(%rbp), %eax	# fouripixels, tmp277
	movzbl	%al, %eax	# tmp277, _82
# i_video.c:447: 		    |	(fouripixels & 0xff);
	.loc 1 447 7
	orl	%edx, %eax	# _81, _83
# i_video.c:445: 		fouropixels[2] = ((fouripixels<<16) & 0xffff0000)
	.loc 1 445 18
	movl	%eax, -36(%rbp)	# _83, fouropixels[2]
# i_video.c:459: 		*olineptrs[0]++ = fouropixels[2];
	.loc 1 459 13
	movq	-32(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][0], _84
# i_video.c:459: 		*olineptrs[0]++ = fouropixels[2];
	.loc 1 459 16
	leaq	4(%rax), %rdx	#, _86
	movq	%rdx, -32(%rbp)	# _86, MEM[(unsigned int *[3] *)_266][0]
# i_video.c:459: 		*olineptrs[0]++ = fouropixels[2];
	.loc 1 459 32
	movl	-36(%rbp), %edx	# fouropixels[2], _87
# i_video.c:459: 		*olineptrs[0]++ = fouropixels[2];
	.loc 1 459 19
	movl	%edx, (%rax)	# _87, *_85
# i_video.c:460: 		*olineptrs[1]++ = fouropixels[2];
	.loc 1 460 13
	movq	-24(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][1], _88
# i_video.c:460: 		*olineptrs[1]++ = fouropixels[2];
	.loc 1 460 16
	leaq	4(%rax), %rdx	#, _90
	movq	%rdx, -24(%rbp)	# _90, MEM[(unsigned int *[3] *)_266][1]
# i_video.c:460: 		*olineptrs[1]++ = fouropixels[2];
	.loc 1 460 32
	movl	-36(%rbp), %edx	# fouropixels[2], _91
# i_video.c:460: 		*olineptrs[1]++ = fouropixels[2];
	.loc 1 460 19
	movl	%edx, (%rax)	# _91, *_89
# i_video.c:461: 		*olineptrs[2]++ = fouropixels[2];
	.loc 1 461 13
	movq	-16(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][2], _92
# i_video.c:461: 		*olineptrs[2]++ = fouropixels[2];
	.loc 1 461 16
	leaq	4(%rax), %rdx	#, _94
	movq	%rdx, -16(%rbp)	# _94, MEM[(unsigned int *[3] *)_266][2]
# i_video.c:461: 		*olineptrs[2]++ = fouropixels[2];
	.loc 1 461 32
	movl	-36(%rbp), %edx	# fouropixels[2], _95
# i_video.c:461: 		*olineptrs[2]++ = fouropixels[2];
	.loc 1 461 19
	movl	%edx, (%rax)	# _95, *_93
# i_video.c:462: 		*olineptrs[0]++ = fouropixels[1];
	.loc 1 462 13
	movq	-32(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][0], _96
# i_video.c:462: 		*olineptrs[0]++ = fouropixels[1];
	.loc 1 462 16
	leaq	4(%rax), %rdx	#, _98
	movq	%rdx, -32(%rbp)	# _98, MEM[(unsigned int *[3] *)_266][0]
# i_video.c:462: 		*olineptrs[0]++ = fouropixels[1];
	.loc 1 462 32
	movl	-40(%rbp), %edx	# fouropixels[1], _99
# i_video.c:462: 		*olineptrs[0]++ = fouropixels[1];
	.loc 1 462 19
	movl	%edx, (%rax)	# _99, *_97
# i_video.c:463: 		*olineptrs[1]++ = fouropixels[1];
	.loc 1 463 13
	movq	-24(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][1], _100
# i_video.c:463: 		*olineptrs[1]++ = fouropixels[1];
	.loc 1 463 16
	leaq	4(%rax), %rdx	#, _102
	movq	%rdx, -24(%rbp)	# _102, MEM[(unsigned int *[3] *)_266][1]
# i_video.c:463: 		*olineptrs[1]++ = fouropixels[1];
	.loc 1 463 32
	movl	-40(%rbp), %edx	# fouropixels[1], _103
# i_video.c:463: 		*olineptrs[1]++ = fouropixels[1];
	.loc 1 463 19
	movl	%edx, (%rax)	# _103, *_101
# i_video.c:464: 		*olineptrs[2]++ = fouropixels[1];
	.loc 1 464 13
	movq	-16(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][2], _104
# i_video.c:464: 		*olineptrs[2]++ = fouropixels[1];
	.loc 1 464 16
	leaq	4(%rax), %rdx	#, _106
	movq	%rdx, -16(%rbp)	# _106, MEM[(unsigned int *[3] *)_266][2]
# i_video.c:464: 		*olineptrs[2]++ = fouropixels[1];
	.loc 1 464 32
	movl	-40(%rbp), %edx	# fouropixels[1], _107
# i_video.c:464: 		*olineptrs[2]++ = fouropixels[1];
	.loc 1 464 19
	movl	%edx, (%rax)	# _107, *_105
# i_video.c:465: 		*olineptrs[0]++ = fouropixels[0];
	.loc 1 465 13
	movq	-32(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][0], _108
# i_video.c:465: 		*olineptrs[0]++ = fouropixels[0];
	.loc 1 465 16
	leaq	4(%rax), %rdx	#, _110
	movq	%rdx, -32(%rbp)	# _110, MEM[(unsigned int *[3] *)_266][0]
# i_video.c:465: 		*olineptrs[0]++ = fouropixels[0];
	.loc 1 465 32
	movl	-44(%rbp), %edx	# fouropixels[0], _111
# i_video.c:465: 		*olineptrs[0]++ = fouropixels[0];
	.loc 1 465 19
	movl	%edx, (%rax)	# _111, *_109
# i_video.c:466: 		*olineptrs[1]++ = fouropixels[0];
	.loc 1 466 13
	movq	-24(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][1], _112
# i_video.c:466: 		*olineptrs[1]++ = fouropixels[0];
	.loc 1 466 16
	leaq	4(%rax), %rdx	#, _114
	movq	%rdx, -24(%rbp)	# _114, MEM[(unsigned int *[3] *)_266][1]
# i_video.c:466: 		*olineptrs[1]++ = fouropixels[0];
	.loc 1 466 32
	movl	-44(%rbp), %edx	# fouropixels[0], _115
# i_video.c:466: 		*olineptrs[1]++ = fouropixels[0];
	.loc 1 466 19
	movl	%edx, (%rax)	# _115, *_113
# i_video.c:467: 		*olineptrs[2]++ = fouropixels[0];
	.loc 1 467 13
	movq	-16(%rbp), %rax	# MEM[(unsigned int *[3] *)_266][2], _116
# i_video.c:467: 		*olineptrs[2]++ = fouropixels[0];
	.loc 1 467 16
	leaq	4(%rax), %rdx	#, _118
	movq	%rdx, -16(%rbp)	# _118, MEM[(unsigned int *[3] *)_266][2]
# i_video.c:467: 		*olineptrs[2]++ = fouropixels[0];
	.loc 1 467 32
	movl	-44(%rbp), %edx	# fouropixels[0], _119
# i_video.c:467: 		*olineptrs[2]++ = fouropixels[0];
	.loc 1 467 19
	movl	%edx, (%rax)	# _119, *_117
# i_video.c:469: 	    } while (x-=4);
	.loc 1 469 16 discriminator 1
	subl	$4, -92(%rbp)	#, x
# i_video.c:469: 	    } while (x-=4);
	.loc 1 469 15 discriminator 1
	cmpl	$0, -92(%rbp)	#, x
	jne	.L96	#,
# i_video.c:470: 	    olineptrs[0] += 2*X_width/4;
	.loc 1 470 15
	movq	-32(%rbp), %rdx	# MEM[(unsigned int *[3] *)_266][0], _120
# i_video.c:470: 	    olineptrs[0] += 2*X_width/4;
	.loc 1 470 31
	movl	X_width(%rip), %eax	# X_width, X_width.36_121
	movl	%eax, %ecx	# X_width.36_121, tmp278
	shrl	$31, %ecx	#, tmp278
	addl	%ecx, %eax	# tmp278, tmp279
	sarl	%eax	# tmp280
	cltq
# i_video.c:470: 	    olineptrs[0] += 2*X_width/4;
	.loc 1 470 19
	salq	$2, %rax	#, _124
	addq	%rdx, %rax	# _120, _125
	movq	%rax, -32(%rbp)	# _125, MEM[(unsigned int *[3] *)_266][0]
# i_video.c:471: 	    olineptrs[1] += 2*X_width/4;
	.loc 1 471 15
	movq	-24(%rbp), %rdx	# MEM[(unsigned int *[3] *)_266][1], _126
# i_video.c:471: 	    olineptrs[1] += 2*X_width/4;
	.loc 1 471 31
	movl	X_width(%rip), %eax	# X_width, X_width.37_127
	movl	%eax, %ecx	# X_width.37_127, tmp281
	shrl	$31, %ecx	#, tmp281
	addl	%ecx, %eax	# tmp281, tmp282
	sarl	%eax	# tmp283
	cltq
# i_video.c:471: 	    olineptrs[1] += 2*X_width/4;
	.loc 1 471 19
	salq	$2, %rax	#, _130
	addq	%rdx, %rax	# _126, _131
	movq	%rax, -24(%rbp)	# _131, MEM[(unsigned int *[3] *)_266][1]
# i_video.c:472: 	    olineptrs[2] += 2*X_width/4;
	.loc 1 472 15
	movq	-16(%rbp), %rdx	# MEM[(unsigned int *[3] *)_266][2], _132
# i_video.c:472: 	    olineptrs[2] += 2*X_width/4;
	.loc 1 472 31
	movl	X_width(%rip), %eax	# X_width, X_width.38_133
	movl	%eax, %ecx	# X_width.38_133, tmp284
	shrl	$31, %ecx	#, tmp284
	addl	%ecx, %eax	# tmp284, tmp285
	sarl	%eax	# tmp286
	cltq
# i_video.c:472: 	    olineptrs[2] += 2*X_width/4;
	.loc 1 472 19
	salq	$2, %rax	#, _136
	addq	%rdx, %rax	# _132, _137
	movq	%rax, -16(%rbp)	# _137, MEM[(unsigned int *[3] *)_266][2]
.L95:
# i_video.c:433: 	while (y--)
	.loc 1 433 10
	movl	-88(%rbp), %eax	# y, y.39_138
	leal	-1(%rax), %edx	#, tmp287
	movl	%edx, -88(%rbp)	# tmp287, y
# i_video.c:433: 	while (y--)
	.loc 1 433 9
	testl	%eax, %eax	# y.39_138
	jne	.L97	#,
	jmp	.L91	#
.L92:
.LBE3:
# i_video.c:476:     else if (multiply == 4)
	.loc 1 476 23
	movl	multiply(%rip), %eax	# multiply, multiply.40_139
# i_video.c:476:     else if (multiply == 4)
	.loc 1 476 13
	cmpl	$4, %eax	#, multiply.40_139
	jne	.L91	#,
.LBB4:
# i_video.c:480:   	Expand4 ((unsigned *)(screens[0]), (double *) (image->data));
	.loc 1 480 56
	movq	image(%rip), %rax	# image, image.41_140
	movq	16(%rax), %rdx	# image.41_140->data, _141
# i_video.c:480:   	Expand4 ((unsigned *)(screens[0]), (double *) (image->data));
	.loc 1 480 33
	movq	screens(%rip), %rax	# screens[0], _142
# i_video.c:480:   	Expand4 ((unsigned *)(screens[0]), (double *) (image->data));
	.loc 1 480 4
	movq	%rdx, %rsi	# _141,
	movq	%rax, %rdi	# _142,
	call	Expand4	#
.L91:
.LBE4:
# i_video.c:483:     if (doShm)
	.loc 1 483 9
	movl	doShm(%rip), %eax	# doShm, doShm.42_143
# i_video.c:483:     if (doShm)
	.loc 1 483 8
	testl	%eax, %eax	# doShm.42_143
	je	.L98	#,
# i_video.c:486: 	if (!XShmPutImage(	X_display,
	.loc 1 486 7
	movl	X_height(%rip), %eax	# X_height, X_height.43_144
	movl	%eax, %r8d	# X_height.43_144, X_height.44_145
	movl	X_width(%rip), %eax	# X_width, X_width.45_146
	movl	%eax, %edi	# X_width.45_146, X_width.46_147
	movq	image(%rip), %rcx	# image, image.47_148
	movq	X_gc(%rip), %rdx	# X_gc, X_gc.48_149
	movq	X_mainWindow(%rip), %rsi	# X_mainWindow, X_mainWindow.49_150
	movq	X_display(%rip), %rax	# X_display, X_display.50_151
	subq	$8, %rsp	#,
	pushq	$1	#
	pushq	%r8	# X_height.44_145
	pushq	%rdi	# X_width.46_147
	pushq	$0	#
	pushq	$0	#
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# X_display.50_151,
	call	XShmPutImage@PLT	#
	addq	$48, %rsp	#,
# i_video.c:486: 	if (!XShmPutImage(	X_display,
	.loc 1 486 5 discriminator 1
	testl	%eax, %eax	# _152
	jne	.L99	#,
# i_video.c:494: 	    I_Error("XShmPutImage() failed\n");
	.loc 1 494 6
	leaq	.LC1(%rip), %rax	#, tmp288
	movq	%rax, %rdi	# tmp288,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L99:
# i_video.c:497: 	shmFinished = false;
	.loc 1 497 14
	movl	$0, shmFinished(%rip)	#, shmFinished
.L100:
# i_video.c:500: 	    I_GetEvent();
	.loc 1 500 6
	call	I_GetEvent	#
# i_video.c:501: 	} while (!shmFinished);
	.loc 1 501 11 discriminator 1
	movl	shmFinished(%rip), %eax	# shmFinished, shmFinished.51_153
	testl	%eax, %eax	# shmFinished.51_153
	je	.L100	#,
# i_video.c:521: }
	.loc 1 521 1
	jmp	.L103	#
.L98:
# i_video.c:508: 	XPutImage(	X_display,
	.loc 1 508 2
	movl	X_height(%rip), %eax	# X_height, X_height.52_154
	movl	%eax, %r8d	# X_height.52_154, X_height.53_155
	movl	X_width(%rip), %eax	# X_width, X_width.54_156
	movl	%eax, %edi	# X_width.54_156, X_width.55_157
	movq	image(%rip), %rcx	# image, image.56_158
	movq	X_gc(%rip), %rdx	# X_gc, X_gc.57_159
	movq	X_mainWindow(%rip), %rsi	# X_mainWindow, X_mainWindow.58_160
	movq	X_display(%rip), %rax	# X_display, X_display.59_161
	pushq	%r8	# X_height.53_155
	pushq	%rdi	# X_width.55_157
	pushq	$0	#
	pushq	$0	#
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# X_display.59_161,
	call	XPutImage@PLT	#
	addq	$32, %rsp	#,
# i_video.c:517: 	XSync(X_display, False);
	.loc 1 517 2
	movq	X_display(%rip), %rax	# X_display, X_display.60_162
	movl	$0, %esi	#,
	movq	%rax, %rdi	# X_display.60_162,
	call	XSync@PLT	#
.L103:
# i_video.c:521: }
	.loc 1 521 1
	nop	
	movq	-8(%rbp), %rax	# D.12189, tmp290
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp290
	je	.L102	#,
	call	__stack_chk_fail@PLT	#
.L102:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	I_FinishUpdate, .-I_FinishUpdate
	.globl	I_ReadScreen
	.type	I_ReadScreen, @function
I_ReadScreen:
.LFB14:
	.loc 1 528 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# scr, scr
# i_video.c:529:     memcpy (scr, screens[0], SCREENWIDTH*SCREENHEIGHT);
	.loc 1 529 25
	movq	screens(%rip), %rcx	# screens[0], _1
# i_video.c:529:     memcpy (scr, screens[0], SCREENWIDTH*SCREENHEIGHT);
	.loc 1 529 5
	movq	-8(%rbp), %rax	# scr, tmp83
	movl	$64000, %edx	#,
	movq	%rcx, %rsi	# _1,
	movq	%rax, %rdi	# tmp83,
	call	memcpy@PLT	#
# i_video.c:530: }
	.loc 1 530 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	I_ReadScreen, .-I_ReadScreen
	.local	colors
	.comm	colors,4096,32
	.globl	UploadNewPalette
	.type	UploadNewPalette, @function
UploadNewPalette:
.LFB15:
	.loc 1 539 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)	# cmap, cmap
	movq	%rsi, -32(%rbp)	# palette, palette
# i_video.c:548:     if (X_visualinfo.class == PseudoColor && X_visualinfo.depth == 8)
	.loc 1 548 21
	movl	24+X_visualinfo(%rip), %eax	# X_visualinfo.class, _1
# i_video.c:548:     if (X_visualinfo.class == PseudoColor && X_visualinfo.depth == 8)
	.loc 1 548 8
	cmpl	$3, %eax	#, _1
	jne	.L112	#,
# i_video.c:548:     if (X_visualinfo.class == PseudoColor && X_visualinfo.depth == 8)
	.loc 1 548 58 discriminator 1
	movl	20+X_visualinfo(%rip), %eax	# X_visualinfo.depth, _2
# i_video.c:548:     if (X_visualinfo.class == PseudoColor && X_visualinfo.depth == 8)
	.loc 1 548 43 discriminator 1
	cmpl	$8, %eax	#, _2
	jne	.L112	#,
# i_video.c:552: 	    if (firstcall)
	.loc 1 552 10
	movl	firstcall.1(%rip), %eax	# firstcall, firstcall.61_3
# i_video.c:552: 	    if (firstcall)
	.loc 1 552 9
	testl	%eax, %eax	# firstcall.61_3
	je	.L107	#,
# i_video.c:554: 		firstcall = false;
	.loc 1 554 13
	movl	$0, firstcall.1(%rip)	#, firstcall
# i_video.c:555: 		for (i=0 ; i<256 ; i++)
	.loc 1 555 9
	movl	$0, %ebx	#, i
# i_video.c:555: 		for (i=0 ; i<256 ; i++)
	.loc 1 555 3
	jmp	.L108	#
.L109:
# i_video.c:557: 		    colors[i].pixel = i;
	.loc 1 557 23
	movslq	%ebx, %rax	# i, _4
	movslq	%ebx, %rdx	# i, tmp116
	movq	%rdx, %rcx	# tmp116, tmp116
	salq	$4, %rcx	#, tmp116
	leaq	colors(%rip), %rdx	#, tmp118
	movq	%rax, (%rcx,%rdx)	# _4, colors[i_34].pixel
# i_video.c:558: 		    colors[i].flags = DoRed|DoGreen|DoBlue;
	.loc 1 558 23
	movslq	%ebx, %rax	# i, tmp119
	salq	$4, %rax	#, tmp119
	movq	%rax, %rdx	# tmp119, tmp120
	leaq	14+colors(%rip), %rax	#, tmp121
	movb	$7, (%rdx,%rax)	#, colors[i_34].flags
# i_video.c:555: 		for (i=0 ; i<256 ; i++)
	.loc 1 555 23 discriminator 3
	addl	$1, %ebx	#, i
.L108:
# i_video.c:555: 		for (i=0 ; i<256 ; i++)
	.loc 1 555 15 discriminator 1
	cmpl	$255, %ebx	#, i
	jle	.L109	#,
.L107:
# i_video.c:563: 	    for (i=0 ; i<256 ; i++)
	.loc 1 563 12
	movl	$0, %ebx	#, i
# i_video.c:563: 	    for (i=0 ; i<256 ; i++)
	.loc 1 563 6
	jmp	.L110	#
.L111:
# i_video.c:565: 		c = gammatable[usegamma][*palette++];
	.loc 1 565 27
	movl	usegamma(%rip), %ecx	# usegamma, usegamma.62_5
# i_video.c:565: 		c = gammatable[usegamma][*palette++];
	.loc 1 565 36
	movq	-32(%rbp), %rax	# palette, palette.63_6
	leaq	1(%rax), %rdx	#, tmp122
	movq	%rdx, -32(%rbp)	# tmp122, palette
# i_video.c:565: 		c = gammatable[usegamma][*palette++];
	.loc 1 565 28
	movzbl	(%rax), %eax	# *palette.63_6, _7
	movzbl	%al, %eax	# _7, _8
# i_video.c:565: 		c = gammatable[usegamma][*palette++];
	.loc 1 565 27
	cltq
	movslq	%ecx, %rdx	# usegamma.62_5, tmp124
	salq	$8, %rdx	#, tmp125
	addq	%rax, %rdx	# tmp123, tmp126
	leaq	gammatable(%rip), %rax	#, tmp128
	addq	%rdx, %rax	# tmp126, tmp127
	movzbl	(%rax), %eax	# gammatable[usegamma.62_5][_8], _9
# i_video.c:565: 		c = gammatable[usegamma][*palette++];
	.loc 1 565 5
	movzbl	%al, %r12d	# _9, c
# i_video.c:566: 		colors[i].red = (c<<8) + c;
	.loc 1 566 21
	movl	%r12d, %eax	# c, _10
	sall	$8, %eax	#, _11
# i_video.c:566: 		colors[i].red = (c<<8) + c;
	.loc 1 566 26
	movl	%r12d, %edx	# c, _12
	leal	(%rax,%rdx), %ecx	#, _13
# i_video.c:566: 		colors[i].red = (c<<8) + c;
	.loc 1 566 17
	movslq	%ebx, %rax	# i, tmp129
	salq	$4, %rax	#, tmp129
	movq	%rax, %rdx	# tmp129, tmp130
	leaq	8+colors(%rip), %rax	#, tmp131
	movw	%cx, (%rdx,%rax)	# _13, colors[i_35].red
# i_video.c:567: 		c = gammatable[usegamma][*palette++];
	.loc 1 567 27
	movl	usegamma(%rip), %ecx	# usegamma, usegamma.64_14
# i_video.c:567: 		c = gammatable[usegamma][*palette++];
	.loc 1 567 36
	movq	-32(%rbp), %rax	# palette, palette.65_15
	leaq	1(%rax), %rdx	#, tmp132
	movq	%rdx, -32(%rbp)	# tmp132, palette
# i_video.c:567: 		c = gammatable[usegamma][*palette++];
	.loc 1 567 28
	movzbl	(%rax), %eax	# *palette.65_15, _16
	movzbl	%al, %eax	# _16, _17
# i_video.c:567: 		c = gammatable[usegamma][*palette++];
	.loc 1 567 27
	cltq
	movslq	%ecx, %rdx	# usegamma.64_14, tmp134
	salq	$8, %rdx	#, tmp135
	addq	%rax, %rdx	# tmp133, tmp136
	leaq	gammatable(%rip), %rax	#, tmp138
	addq	%rdx, %rax	# tmp136, tmp137
	movzbl	(%rax), %eax	# gammatable[usegamma.64_14][_17], _18
# i_video.c:567: 		c = gammatable[usegamma][*palette++];
	.loc 1 567 5
	movzbl	%al, %r12d	# _18, c
# i_video.c:568: 		colors[i].green = (c<<8) + c;
	.loc 1 568 23
	movl	%r12d, %eax	# c, _19
	sall	$8, %eax	#, _20
# i_video.c:568: 		colors[i].green = (c<<8) + c;
	.loc 1 568 28
	movl	%r12d, %edx	# c, _21
	leal	(%rax,%rdx), %ecx	#, _22
# i_video.c:568: 		colors[i].green = (c<<8) + c;
	.loc 1 568 19
	movslq	%ebx, %rax	# i, tmp139
	salq	$4, %rax	#, tmp139
	movq	%rax, %rdx	# tmp139, tmp140
	leaq	10+colors(%rip), %rax	#, tmp141
	movw	%cx, (%rdx,%rax)	# _22, colors[i_35].green
# i_video.c:569: 		c = gammatable[usegamma][*palette++];
	.loc 1 569 27
	movl	usegamma(%rip), %ecx	# usegamma, usegamma.66_23
# i_video.c:569: 		c = gammatable[usegamma][*palette++];
	.loc 1 569 36
	movq	-32(%rbp), %rax	# palette, palette.67_24
	leaq	1(%rax), %rdx	#, tmp142
	movq	%rdx, -32(%rbp)	# tmp142, palette
# i_video.c:569: 		c = gammatable[usegamma][*palette++];
	.loc 1 569 28
	movzbl	(%rax), %eax	# *palette.67_24, _25
	movzbl	%al, %eax	# _25, _26
# i_video.c:569: 		c = gammatable[usegamma][*palette++];
	.loc 1 569 27
	cltq
	movslq	%ecx, %rdx	# usegamma.66_23, tmp144
	salq	$8, %rdx	#, tmp145
	addq	%rax, %rdx	# tmp143, tmp146
	leaq	gammatable(%rip), %rax	#, tmp148
	addq	%rdx, %rax	# tmp146, tmp147
	movzbl	(%rax), %eax	# gammatable[usegamma.66_23][_26], _27
# i_video.c:569: 		c = gammatable[usegamma][*palette++];
	.loc 1 569 5
	movzbl	%al, %r12d	# _27, c
# i_video.c:570: 		colors[i].blue = (c<<8) + c;
	.loc 1 570 22
	movl	%r12d, %eax	# c, _28
	sall	$8, %eax	#, _29
# i_video.c:570: 		colors[i].blue = (c<<8) + c;
	.loc 1 570 27
	movl	%r12d, %edx	# c, _30
	leal	(%rax,%rdx), %ecx	#, _31
# i_video.c:570: 		colors[i].blue = (c<<8) + c;
	.loc 1 570 18
	movslq	%ebx, %rax	# i, tmp149
	salq	$4, %rax	#, tmp149
	movq	%rax, %rdx	# tmp149, tmp150
	leaq	12+colors(%rip), %rax	#, tmp151
	movw	%cx, (%rdx,%rax)	# _31, colors[i_35].blue
# i_video.c:563: 	    for (i=0 ; i<256 ; i++)
	.loc 1 563 26 discriminator 3
	addl	$1, %ebx	#, i
.L110:
# i_video.c:563: 	    for (i=0 ; i<256 ; i++)
	.loc 1 563 18 discriminator 1
	cmpl	$255, %ebx	#, i
	jle	.L111	#,
# i_video.c:574: 	    XStoreColors(X_display, cmap, colors, 256);
	.loc 1 574 6
	movq	X_display(%rip), %rax	# X_display, X_display.68_32
	movq	-24(%rbp), %rsi	# cmap, tmp152
	movl	$256, %ecx	#,
	leaq	colors(%rip), %rdx	#, tmp153
	movq	%rax, %rdi	# X_display.68_32,
	call	XStoreColors@PLT	#
.L112:
# i_video.c:577: }
	.loc 1 577 1
	nop	
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	UploadNewPalette, .-UploadNewPalette
	.globl	I_SetPalette
	.type	I_SetPalette, @function
I_SetPalette:
.LFB16:
	.loc 1 583 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# palette, palette
# i_video.c:584:     UploadNewPalette(X_cmap, palette);
	.loc 1 584 5
	movq	X_cmap(%rip), %rax	# X_cmap, X_cmap.69_1
	movq	-8(%rbp), %rdx	# palette, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# X_cmap.69_1,
	call	UploadNewPalette	#
# i_video.c:585: }
	.loc 1 585 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	I_SetPalette, .-I_SetPalette
	.section	.rodata
	.align 8
.LC2:
	.string	"User %d appears to be running DOOM.  Is that wise?\n"
	.align 8
.LC3:
	.string	"Was able to kill my old shared memory\n"
	.align 8
.LC4:
	.string	"Was NOT able to kill my old shared memory"
.LC5:
	.string	"Could not get shared memory"
	.align 8
.LC6:
	.string	"will use %d's stale shared memory\n"
	.align 8
.LC7:
	.string	"warning: can't use stale shared memory belonging to id %d, key=0x%x\n"
.LC8:
	.string	"could not get stats on key=%d"
.LC9:
	.string	"errno=%d\n"
	.align 8
.LC10:
	.string	"Could not get any shared memory"
	.align 8
.LC11:
	.string	"Sorry, system too polluted with stale shared memory segments.\n"
	.align 8
.LC12:
	.string	"shared memory id=%d, addr=0x%x\n"
	.text
	.globl	grabsharedmemory
	.type	grabsharedmemory, @function
grabsharedmemory:
.LFB17:
	.loc 1 596 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movl	%edi, -164(%rbp)	# size, size
# i_video.c:596: {
	.loc 1 596 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	movq	%rax, -8(%rbp)	# tmp142, D.12191
	xorl	%eax, %eax	# tmp142
# i_video.c:598:   int			key = ('d'<<24) | ('o'<<16) | ('o'<<8) | 'm';
	.loc 1 598 9
	movl	$1685024621, -148(%rbp)	#, key
# i_video.c:600:   int			minsize = 320*200;
	.loc 1 600 9
	movl	$64000, -136(%rbp)	#, minsize
# i_video.c:604:   int			pollution=5;
	.loc 1 604 9
	movl	$5, -140(%rbp)	#, pollution
.L126:
# i_video.c:609:     id = shmget((key_t) key, minsize, 0777); // just get the id
	.loc 1 609 10
	movl	-136(%rbp), %eax	# minsize, tmp108
	movslq	%eax, %rcx	# tmp108, _1
	movl	-148(%rbp), %eax	# key, tmp109
	movl	$511, %edx	#,
	movq	%rcx, %rsi	# _1,
	movl	%eax, %edi	# tmp109,
	call	shmget@PLT	#
	movl	%eax, -144(%rbp)	# tmp110, id
# i_video.c:610:     if (id != -1)
	.loc 1 610 8
	cmpl	$-1, -144(%rbp)	#, id
	je	.L115	#,
# i_video.c:612:       rc=shmctl(id, IPC_STAT, &shminfo); // get stats on it
	.loc 1 612 10
	leaq	-128(%rbp), %rdx	#, tmp111
	movl	-144(%rbp), %eax	# id, tmp112
	movl	$2, %esi	#,
	movl	%eax, %edi	# tmp112,
	call	shmctl@PLT	#
	movl	%eax, -132(%rbp)	# tmp113, rc
# i_video.c:613:       if (!rc) 
	.loc 1 613 10
	cmpl	$0, -132(%rbp)	#, rc
	jne	.L116	#,
# i_video.c:615: 	if (shminfo.shm_nattch)
	.loc 1 615 13
	movq	-40(%rbp), %rax	# shminfo.shm_nattch, _2
# i_video.c:615: 	if (shminfo.shm_nattch)
	.loc 1 615 5
	testq	%rax, %rax	# _2
	je	.L117	#,
# i_video.c:617: 	  fprintf(stderr, "User %d appears to be running "
	.loc 1 617 4
	movl	-48(%rbp), %edx	# shminfo.shm_cpid, _3
	movq	stderr(%rip), %rax	# stderr, stderr.70_4
	leaq	.LC2(%rip), %rcx	#, tmp114
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# stderr.70_4,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_video.c:619: 	  key++;
	.loc 1 619 7
	addl	$1, -148(%rbp)	#, key
	jmp	.L118	#
.L117:
# i_video.c:623: 	  if (getuid() == shminfo.shm_perm.cuid)
	.loc 1 623 8
	call	getuid@PLT	#
	movl	%eax, %edx	#, _5
# i_video.c:623: 	  if (getuid() == shminfo.shm_perm.cuid)
	.loc 1 623 36 discriminator 1
	movl	-116(%rbp), %eax	# shminfo.shm_perm.cuid, _6
# i_video.c:623: 	  if (getuid() == shminfo.shm_perm.cuid)
	.loc 1 623 7 discriminator 1
	cmpl	%eax, %edx	# _6, _5
	jne	.L119	#,
# i_video.c:625: 	    rc = shmctl(id, IPC_RMID, 0);
	.loc 1 625 11
	movl	-144(%rbp), %eax	# id, tmp115
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp115,
	call	shmctl@PLT	#
	movl	%eax, -132(%rbp)	# tmp116, rc
# i_video.c:626: 	    if (!rc)
	.loc 1 626 9
	cmpl	$0, -132(%rbp)	#, rc
	jne	.L120	#,
# i_video.c:627: 	      fprintf(stderr,
	.loc 1 627 8
	movq	stderr(%rip), %rax	# stderr, stderr.71_7
	movq	%rax, %rcx	# stderr.71_7,
	movl	$38, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC3(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	fwrite@PLT	#
	jmp	.L121	#
.L120:
# i_video.c:630: 	      I_Error("Was NOT able to kill my old shared memory");
	.loc 1 630 8
	leaq	.LC4(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L121:
# i_video.c:632: 	    id = shmget((key_t)key, size, IPC_CREAT|0777);
	.loc 1 632 11
	movl	-164(%rbp), %eax	# size, tmp119
	movslq	%eax, %rcx	# tmp119, _8
	movl	-148(%rbp), %eax	# key, tmp120
	movl	$1023, %edx	#,
	movq	%rcx, %rsi	# _8,
	movl	%eax, %edi	# tmp120,
	call	shmget@PLT	#
	movl	%eax, -144(%rbp)	# tmp121, id
# i_video.c:633: 	    if (id==-1)
	.loc 1 633 9
	cmpl	$-1, -144(%rbp)	#, id
	jne	.L122	#,
# i_video.c:634: 	      I_Error("Could not get shared memory");
	.loc 1 634 8
	leaq	.LC5(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L122:
# i_video.c:636: 	    rc=shmctl(id, IPC_STAT, &shminfo);
	.loc 1 636 9
	leaq	-128(%rbp), %rdx	#, tmp123
	movl	-144(%rbp), %eax	# id, tmp124
	movl	$2, %esi	#,
	movl	%eax, %edi	# tmp124,
	call	shmctl@PLT	#
	movl	%eax, -132(%rbp)	# tmp125, rc
# i_video.c:638: 	    break;
	.loc 1 638 6
	jmp	.L123	#
.L119:
# i_video.c:641: 	  if (size >= shminfo.shm_segsz)
	.loc 1 641 13
	movl	-164(%rbp), %eax	# size, tmp126
	movslq	%eax, %rdx	# tmp126, _9
# i_video.c:641: 	  if (size >= shminfo.shm_segsz)
	.loc 1 641 23
	movq	-80(%rbp), %rax	# shminfo.shm_segsz, _10
# i_video.c:641: 	  if (size >= shminfo.shm_segsz)
	.loc 1 641 7
	cmpq	%rax, %rdx	# _10, _9
	jb	.L124	#,
# i_video.c:643: 	    fprintf(stderr,
	.loc 1 643 6
	movl	-48(%rbp), %edx	# shminfo.shm_cpid, _11
	movq	stderr(%rip), %rax	# stderr, stderr.72_12
	leaq	.LC6(%rip), %rcx	#, tmp127
	movq	%rcx, %rsi	# tmp127,
	movq	%rax, %rdi	# stderr.72_12,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_video.c:646: 	    break;
	.loc 1 646 6
	jmp	.L123	#
.L124:
# i_video.c:650: 	    fprintf(stderr,
	.loc 1 650 6
	movl	-48(%rbp), %edx	# shminfo.shm_cpid, _13
	movq	stderr(%rip), %rax	# stderr, stderr.73_14
	movl	-148(%rbp), %ecx	# key, tmp128
	leaq	.LC7(%rip), %rsi	#, tmp129
	movq	%rax, %rdi	# stderr.73_14,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_video.c:655: 	    key++;
	.loc 1 655 9
	addl	$1, -148(%rbp)	#, key
	jmp	.L118	#
.L116:
# i_video.c:661: 	I_Error("could not get stats on key=%d", key);
	.loc 1 661 2
	movl	-148(%rbp), %eax	# key, tmp130
	movl	%eax, %esi	# tmp130,
	leaq	.LC8(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
	jmp	.L118	#
.L115:
# i_video.c:666:       id = shmget((key_t)key, size, IPC_CREAT|0777);
	.loc 1 666 12
	movl	-164(%rbp), %eax	# size, tmp132
	movslq	%eax, %rcx	# tmp132, _15
	movl	-148(%rbp), %eax	# key, tmp133
	movl	$1023, %edx	#,
	movq	%rcx, %rsi	# _15,
	movl	%eax, %edi	# tmp133,
	call	shmget@PLT	#
	movl	%eax, -144(%rbp)	# tmp134, id
# i_video.c:667:       if (id==-1)
	.loc 1 667 10
	cmpl	$-1, -144(%rbp)	#, id
	jne	.L129	#,
.LBB5:
# i_video.c:670: 	fprintf(stderr, "errno=%d\n", errno);
	.loc 1 670 32
	call	__errno_location@PLT	#
# i_video.c:670: 	fprintf(stderr, "errno=%d\n", errno);
	.loc 1 670 2 discriminator 1
	movl	(%rax), %edx	# *_16, _17
	movq	stderr(%rip), %rax	# stderr, stderr.74_18
	leaq	.LC9(%rip), %rcx	#, tmp135
	movq	%rcx, %rsi	# tmp135,
	movq	%rax, %rdi	# stderr.74_18,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_video.c:671: 	I_Error("Could not get any shared memory");
	.loc 1 671 2
	leaq	.LC10(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.LBE5:
# i_video.c:673:       break;
	.loc 1 673 7
	jmp	.L129	#
.L118:
# i_video.c:675:   } while (--pollution);
	.loc 1 675 12
	subl	$1, -140(%rbp)	#, pollution
	cmpl	$0, -140(%rbp)	#, pollution
	jne	.L126	#,
	jmp	.L123	#
.L129:
# i_video.c:673:       break;
	.loc 1 673 7
	nop	
.L123:
# i_video.c:677:   if (!pollution)
	.loc 1 677 6
	cmpl	$0, -140(%rbp)	#, pollution
	jne	.L127	#,
# i_video.c:679:     I_Error("Sorry, system too polluted with stale "
	.loc 1 679 5
	leaq	.LC11(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L127:
# i_video.c:683:   X_shminfo.shmid = id;
	.loc 1 683 19
	movl	-144(%rbp), %eax	# id, tmp138
	movl	%eax, 8+X_shminfo(%rip)	# tmp138, X_shminfo.shmid
# i_video.c:686:   image->data = X_shminfo.shmaddr = shmat(id, 0, 0);
	.loc 1 686 37
	movl	-144(%rbp), %eax	# id, tmp139
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp139,
	call	shmat@PLT	#
# i_video.c:686:   image->data = X_shminfo.shmaddr = shmat(id, 0, 0);
	.loc 1 686 35 discriminator 1
	movq	%rax, 16+X_shminfo(%rip)	# _19, X_shminfo.shmaddr
# i_video.c:686:   image->data = X_shminfo.shmaddr = shmat(id, 0, 0);
	.loc 1 686 8 discriminator 1
	movq	image(%rip), %rax	# image, image.75_20
# i_video.c:686:   image->data = X_shminfo.shmaddr = shmat(id, 0, 0);
	.loc 1 686 26 discriminator 1
	movq	16+X_shminfo(%rip), %rdx	# X_shminfo.shmaddr, _21
# i_video.c:686:   image->data = X_shminfo.shmaddr = shmat(id, 0, 0);
	.loc 1 686 15 discriminator 1
	movq	%rdx, 16(%rax)	# _21, image.75_20->data
# i_video.c:689: 	  (int) (image->data));
	.loc 1 689 16
	movq	image(%rip), %rax	# image, image.76_22
	movq	16(%rax), %rax	# image.76_22->data, _23
# i_video.c:688:   fprintf(stderr, "shared memory id=%d, addr=0x%x\n", id,
	.loc 1 688 3
	movl	%eax, %ecx	# _24, _25
	movq	stderr(%rip), %rax	# stderr, stderr.77_26
	movl	-144(%rbp), %edx	# id, tmp140
	leaq	.LC12(%rip), %rsi	#, tmp141
	movq	%rax, %rdi	# stderr.77_26,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# i_video.c:690: }
	.loc 1 690 1
	nop	
	movq	-8(%rbp), %rax	# D.12191, tmp143
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp143
	je	.L128	#,
	call	__stack_chk_fail@PLT	#
.L128:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	grabsharedmemory, .-grabsharedmemory
	.section	.rodata
.LC13:
	.string	"-2"
.LC14:
	.string	"-3"
.LC15:
	.string	"-4"
.LC16:
	.string	"-disp"
.LC17:
	.string	"-grabmouse"
.LC18:
	.string	"-geom"
.LC19:
	.string	"%c%d%c%d"
.LC20:
	.string	"bad -geom parameter"
.LC21:
	.string	"Could not open display [%s]"
.LC22:
	.string	"DISPLAY"
	.align 8
.LC23:
	.string	"Could not open display (DISPLAY=[%s])"
	.align 8
.LC24:
	.string	"xdoom currently only supports 256-color PseudoColor screens"
.LC25:
	.string	"unix"
.LC26:
	.string	"Using MITSHM extension\n"
.LC27:
	.string	""
	.align 8
.LC28:
	.string	"shmat() failed in InitGraphics()"
	.align 8
.LC29:
	.string	"XShmAttach() failed in InitGraphics()"
	.text
	.globl	I_InitGraphics
	.type	I_InitGraphics, @function
I_InitGraphics:
.LFB18:
	.loc 1 693 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$328, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
# i_video.c:693: {
	.loc 1 693 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp262
	movq	%rax, -40(%rbp)	# tmp262, D.12203
	xorl	%eax, %eax	# tmp262
# i_video.c:699:     int			x=0;
	.loc 1 699 11
	movl	$0, -336(%rbp)	#, x
# i_video.c:700:     int			y=0;
	.loc 1 700 11
	movl	$0, -332(%rbp)	#, y
# i_video.c:703:     char		xsign=' ';
	.loc 1 703 11
	movb	$32, -338(%rbp)	#, xsign
# i_video.c:704:     char		ysign=' ';
	.loc 1 704 11
	movb	$32, -337(%rbp)	#, ysign
# i_video.c:713:     if (!firsttime)
	.loc 1 713 9
	movl	firsttime.0(%rip), %eax	# firsttime, firsttime.78_1
# i_video.c:713:     if (!firsttime)
	.loc 1 713 8
	testl	%eax, %eax	# firsttime.78_1
	je	.L161	#,
# i_video.c:715:     firsttime = 0;
	.loc 1 715 15
	movl	$0, firsttime.0(%rip)	#, firsttime
# i_video.c:717:     signal(SIGINT, (void (*)(int)) I_Quit);
	.loc 1 717 5
	movq	I_Quit@GOTPCREL(%rip), %rax	#, tmp214
	movq	%rax, %rsi	# tmp213,
	movl	$2, %edi	#,
	call	signal@PLT	#
# i_video.c:719:     if (M_CheckParm("-2"))
	.loc 1 719 9
	leaq	.LC13(%rip), %rax	#, tmp215
	movq	%rax, %rdi	# tmp215,
	call	M_CheckParm@PLT	#
# i_video.c:719:     if (M_CheckParm("-2"))
	.loc 1 719 8 discriminator 1
	testl	%eax, %eax	# _2
	je	.L133	#,
# i_video.c:720: 	multiply = 2;
	.loc 1 720 11
	movl	$2, multiply(%rip)	#, multiply
.L133:
# i_video.c:722:     if (M_CheckParm("-3"))
	.loc 1 722 9
	leaq	.LC14(%rip), %rax	#, tmp216
	movq	%rax, %rdi	# tmp216,
	call	M_CheckParm@PLT	#
# i_video.c:722:     if (M_CheckParm("-3"))
	.loc 1 722 8 discriminator 1
	testl	%eax, %eax	# _3
	je	.L134	#,
# i_video.c:723: 	multiply = 3;
	.loc 1 723 11
	movl	$3, multiply(%rip)	#, multiply
.L134:
# i_video.c:725:     if (M_CheckParm("-4"))
	.loc 1 725 9
	leaq	.LC15(%rip), %rax	#, tmp217
	movq	%rax, %rdi	# tmp217,
	call	M_CheckParm@PLT	#
# i_video.c:725:     if (M_CheckParm("-4"))
	.loc 1 725 8 discriminator 1
	testl	%eax, %eax	# _4
	je	.L135	#,
# i_video.c:726: 	multiply = 4;
	.loc 1 726 11
	movl	$4, multiply(%rip)	#, multiply
.L135:
# i_video.c:728:     X_width = SCREENWIDTH * multiply;
	.loc 1 728 27
	movl	multiply(%rip), %edx	# multiply, multiply.79_5
	movl	%edx, %eax	# multiply.79_5, tmp218
	sall	$2, %eax	#, tmp218
	addl	%edx, %eax	# multiply.79_5, tmp218
	sall	$6, %eax	#, tmp219
# i_video.c:728:     X_width = SCREENWIDTH * multiply;
	.loc 1 728 13
	movl	%eax, X_width(%rip)	# _6, X_width
# i_video.c:729:     X_height = SCREENHEIGHT * multiply;
	.loc 1 729 29
	movl	multiply(%rip), %eax	# multiply, multiply.80_7
	imull	$200, %eax, %eax	#, multiply.80_7, _8
# i_video.c:729:     X_height = SCREENHEIGHT * multiply;
	.loc 1 729 14
	movl	%eax, X_height(%rip)	# _8, X_height
# i_video.c:732:     if ( (pnum=M_CheckParm("-disp")) ) // suggest parentheses around assignment
	.loc 1 732 16
	leaq	.LC16(%rip), %rax	#, tmp220
	movq	%rax, %rdi	# tmp220,
	call	M_CheckParm@PLT	#
	movl	%eax, -324(%rbp)	# tmp221, pnum
# i_video.c:732:     if ( (pnum=M_CheckParm("-disp")) ) // suggest parentheses around assignment
	.loc 1 732 8 discriminator 1
	cmpl	$0, -324(%rbp)	#, pnum
	je	.L136	#,
# i_video.c:733: 	displayname = myargv[pnum+1];
	.loc 1 733 22
	movq	myargv(%rip), %rax	# myargv, myargv.81_9
	movl	-324(%rbp), %edx	# pnum, tmp222
	movslq	%edx, %rdx	# tmp222, _10
	addq	$1, %rdx	#, _11
	salq	$3, %rdx	#, _12
	addq	%rdx, %rax	# _12, _13
# i_video.c:733: 	displayname = myargv[pnum+1];
	.loc 1 733 14
	movq	(%rax), %rax	# *_13, tmp223
	movq	%rax, -312(%rbp)	# tmp223, displayname
	jmp	.L137	#
.L136:
# i_video.c:735: 	displayname = 0;
	.loc 1 735 14
	movq	$0, -312(%rbp)	#, displayname
.L137:
# i_video.c:738:     grabMouse = !!M_CheckParm("-grabmouse");
	.loc 1 738 19
	leaq	.LC17(%rip), %rax	#, tmp224
	movq	%rax, %rdi	# tmp224,
	call	M_CheckParm@PLT	#
# i_video.c:738:     grabMouse = !!M_CheckParm("-grabmouse");
	.loc 1 738 17 discriminator 1
	testl	%eax, %eax	# _14
	setne	%al	#, _15
	movzbl	%al, %eax	# _15, _16
# i_video.c:738:     grabMouse = !!M_CheckParm("-grabmouse");
	.loc 1 738 15 discriminator 1
	movl	%eax, grabMouse(%rip)	# _16, grabMouse
# i_video.c:741:     if ( (pnum=M_CheckParm("-geom")) ) // suggest parentheses around assignment
	.loc 1 741 16
	leaq	.LC18(%rip), %rax	#, tmp225
	movq	%rax, %rdi	# tmp225,
	call	M_CheckParm@PLT	#
	movl	%eax, -324(%rbp)	# tmp226, pnum
# i_video.c:741:     if ( (pnum=M_CheckParm("-geom")) ) // suggest parentheses around assignment
	.loc 1 741 8 discriminator 1
	cmpl	$0, -324(%rbp)	#, pnum
	je	.L138	#,
# i_video.c:744: 	n = sscanf(myargv[pnum+1], "%c%d%c%d", &xsign, &x, &ysign, &y);
	.loc 1 744 19
	movq	myargv(%rip), %rax	# myargv, myargv.82_17
	movl	-324(%rbp), %edx	# pnum, tmp227
	movslq	%edx, %rdx	# tmp227, _18
	addq	$1, %rdx	#, _19
	salq	$3, %rdx	#, _20
	addq	%rdx, %rax	# _20, _21
# i_video.c:744: 	n = sscanf(myargv[pnum+1], "%c%d%c%d", &xsign, &x, &ysign, &y);
	.loc 1 744 6
	movq	(%rax), %rax	# *_21, _22
	leaq	-332(%rbp), %rdi	#, tmp228
	leaq	-337(%rbp), %rsi	#, tmp229
	leaq	-336(%rbp), %rcx	#, tmp230
	leaq	-338(%rbp), %rdx	#, tmp231
	movq	%rdi, %r9	# tmp228,
	movq	%rsi, %r8	# tmp229,
	leaq	.LC19(%rip), %rsi	#, tmp232
	movq	%rax, %rdi	# _22,
	movl	$0, %eax	#,
	call	__isoc99_sscanf@PLT	#
	movl	%eax, -320(%rbp)	# tmp233, n
# i_video.c:746: 	if (n==2)
	.loc 1 746 5
	cmpl	$2, -320(%rbp)	#, n
	jne	.L139	#,
# i_video.c:747: 	    x = y = 0;
	.loc 1 747 12
	movl	$0, -332(%rbp)	#, y
# i_video.c:747: 	    x = y = 0;
	.loc 1 747 8
	movl	-332(%rbp), %eax	# y, y.83_23
	movl	%eax, -336(%rbp)	# y.83_23, x
	jmp	.L138	#
.L139:
# i_video.c:748: 	else if (n==6)
	.loc 1 748 10
	cmpl	$6, -320(%rbp)	#, n
	jne	.L140	#,
# i_video.c:750: 	    if (xsign == '-')
	.loc 1 750 16
	movzbl	-338(%rbp), %eax	# xsign, xsign.84_24
# i_video.c:750: 	    if (xsign == '-')
	.loc 1 750 9
	cmpb	$45, %al	#, xsign.84_24
	jne	.L141	#,
# i_video.c:751: 		x = -x;
	.loc 1 751 7
	movl	-336(%rbp), %eax	# x, x.85_25
	negl	%eax	# _26
# i_video.c:751: 		x = -x;
	.loc 1 751 5
	movl	%eax, -336(%rbp)	# _26, x
.L141:
# i_video.c:752: 	    if (ysign == '-')
	.loc 1 752 16
	movzbl	-337(%rbp), %eax	# ysign, ysign.86_27
# i_video.c:752: 	    if (ysign == '-')
	.loc 1 752 9
	cmpb	$45, %al	#, ysign.86_27
	jne	.L138	#,
# i_video.c:753: 		y = -y;
	.loc 1 753 7
	movl	-332(%rbp), %eax	# y, y.87_28
	negl	%eax	# _29
# i_video.c:753: 		y = -y;
	.loc 1 753 5
	movl	%eax, -332(%rbp)	# _29, y
	jmp	.L138	#
.L140:
# i_video.c:756: 	    I_Error("bad -geom parameter");
	.loc 1 756 6
	leaq	.LC20(%rip), %rax	#, tmp234
	movq	%rax, %rdi	# tmp234,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L138:
# i_video.c:760:     X_display = XOpenDisplay(displayname);
	.loc 1 760 17
	movq	-312(%rbp), %rax	# displayname, tmp235
	movq	%rax, %rdi	# tmp235,
	call	XOpenDisplay@PLT	#
# i_video.c:760:     X_display = XOpenDisplay(displayname);
	.loc 1 760 15 discriminator 1
	movq	%rax, X_display(%rip)	# _30, X_display
# i_video.c:761:     if (!X_display)
	.loc 1 761 9
	movq	X_display(%rip), %rax	# X_display, X_display.88_31
# i_video.c:761:     if (!X_display)
	.loc 1 761 8
	testq	%rax, %rax	# X_display.88_31
	jne	.L142	#,
# i_video.c:763: 	if (displayname)
	.loc 1 763 5
	cmpq	$0, -312(%rbp)	#, displayname
	je	.L143	#,
# i_video.c:764: 	    I_Error("Could not open display [%s]", displayname);
	.loc 1 764 6
	movq	-312(%rbp), %rax	# displayname, tmp236
	movq	%rax, %rsi	# tmp236,
	leaq	.LC21(%rip), %rax	#, tmp237
	movq	%rax, %rdi	# tmp237,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
	jmp	.L142	#
.L143:
# i_video.c:766: 	    I_Error("Could not open display (DISPLAY=[%s])", getenv("DISPLAY"));
	.loc 1 766 6
	leaq	.LC22(%rip), %rax	#, tmp238
	movq	%rax, %rdi	# tmp238,
	call	getenv@PLT	#
# i_video.c:766: 	    I_Error("Could not open display (DISPLAY=[%s])", getenv("DISPLAY"));
	.loc 1 766 6 is_stmt 0 discriminator 1
	movq	%rax, %rsi	# _32,
	leaq	.LC23(%rip), %rax	#, tmp239
	movq	%rax, %rdi	# tmp239,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L142:
# i_video.c:770:     X_screen = DefaultScreen(X_display);
	.loc 1 770 16 is_stmt 1
	movq	X_display(%rip), %rax	# X_display, X_display.89_33
	movl	224(%rax), %eax	# MEM[(struct  *)X_display.89_33].default_screen, _34
# i_video.c:770:     X_screen = DefaultScreen(X_display);
	.loc 1 770 14
	movl	%eax, X_screen(%rip)	# _34, X_screen
# i_video.c:771:     if (!XMatchVisualInfo(X_display, X_screen, 8, PseudoColor, &X_visualinfo))
	.loc 1 771 10
	movl	X_screen(%rip), %esi	# X_screen, X_screen.90_35
	movq	X_display(%rip), %rax	# X_display, X_display.91_36
	leaq	X_visualinfo(%rip), %r8	#,
	movl	$3, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# X_display.91_36,
	call	XMatchVisualInfo@PLT	#
# i_video.c:771:     if (!XMatchVisualInfo(X_display, X_screen, 8, PseudoColor, &X_visualinfo))
	.loc 1 771 8 discriminator 1
	testl	%eax, %eax	# _37
	jne	.L144	#,
# i_video.c:772: 	I_Error("xdoom currently only supports 256-color PseudoColor screens");
	.loc 1 772 2
	leaq	.LC24(%rip), %rax	#, tmp240
	movq	%rax, %rdi	# tmp240,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L144:
# i_video.c:773:     X_visual = X_visualinfo.visual;
	.loc 1 773 28
	movq	X_visualinfo(%rip), %rax	# X_visualinfo.visual, _38
# i_video.c:773:     X_visual = X_visualinfo.visual;
	.loc 1 773 14
	movq	%rax, X_visual(%rip)	# _38, X_visual
# i_video.c:776:     doShm = XShmQueryExtension(X_display);
	.loc 1 776 13
	movq	X_display(%rip), %rax	# X_display, X_display.92_39
	movq	%rax, %rdi	# X_display.92_39,
	call	XShmQueryExtension@PLT	#
# i_video.c:776:     doShm = XShmQueryExtension(X_display);
	.loc 1 776 11 discriminator 1
	movl	%eax, doShm(%rip)	# _41, doShm
# i_video.c:779:     if (doShm)
	.loc 1 779 9
	movl	doShm(%rip), %eax	# doShm, doShm.93_42
# i_video.c:779:     if (doShm)
	.loc 1 779 8
	testl	%eax, %eax	# doShm.93_42
	je	.L145	#,
# i_video.c:781: 	if (!displayname) displayname = (char *) getenv("DISPLAY");
	.loc 1 781 5
	cmpq	$0, -312(%rbp)	#, displayname
	jne	.L146	#,
# i_video.c:781: 	if (!displayname) displayname = (char *) getenv("DISPLAY");
	.loc 1 781 34 discriminator 1
	leaq	.LC22(%rip), %rax	#, tmp241
	movq	%rax, %rdi	# tmp241,
	call	getenv@PLT	#
	movq	%rax, -312(%rbp)	# tmp242, displayname
.L146:
# i_video.c:782: 	if (displayname)
	.loc 1 782 5
	cmpq	$0, -312(%rbp)	#, displayname
	je	.L145	#,
# i_video.c:784: 	    d = displayname;
	.loc 1 784 8
	movq	-312(%rbp), %rax	# displayname, tmp243
	movq	%rax, -304(%rbp)	# tmp243, d
# i_video.c:785: 	    while (*d && (*d != ':')) d++;
	.loc 1 785 12
	jmp	.L147	#
.L149:
# i_video.c:785: 	    while (*d && (*d != ':')) d++;
	.loc 1 785 33 discriminator 3
	addq	$1, -304(%rbp)	#, d
.L147:
# i_video.c:785: 	    while (*d && (*d != ':')) d++;
	.loc 1 785 13 discriminator 1
	movq	-304(%rbp), %rax	# d, tmp244
	movzbl	(%rax), %eax	# *d_134, _43
# i_video.c:785: 	    while (*d && (*d != ':')) d++;
	.loc 1 785 16 discriminator 1
	testb	%al, %al	# _43
	je	.L148	#,
# i_video.c:785: 	    while (*d && (*d != ':')) d++;
	.loc 1 785 20 discriminator 2
	movq	-304(%rbp), %rax	# d, tmp245
	movzbl	(%rax), %eax	# *d_134, _44
# i_video.c:785: 	    while (*d && (*d != ':')) d++;
	.loc 1 785 16 discriminator 2
	cmpb	$58, %al	#, _44
	jne	.L149	#,
.L148:
# i_video.c:786: 	    if (*d) *d = 0;
	.loc 1 786 10
	movq	-304(%rbp), %rax	# d, tmp246
	movzbl	(%rax), %eax	# *d_134, _45
# i_video.c:786: 	    if (*d) *d = 0;
	.loc 1 786 9
	testb	%al, %al	# _45
	je	.L150	#,
# i_video.c:786: 	    if (*d) *d = 0;
	.loc 1 786 17 discriminator 1
	movq	-304(%rbp), %rax	# d, tmp247
	movb	$0, (%rax)	#, *d_134
.L150:
# i_video.c:787: 	    if (!(!strcasecmp(displayname, "unix") || !*displayname)) doShm = false;
	.loc 1 787 13
	movq	-312(%rbp), %rax	# displayname, tmp248
	leaq	.LC25(%rip), %rdx	#, tmp249
	movq	%rdx, %rsi	# tmp249,
	movq	%rax, %rdi	# tmp248,
	call	strcasecmp@PLT	#
# i_video.c:787: 	    if (!(!strcasecmp(displayname, "unix") || !*displayname)) doShm = false;
	.loc 1 787 9 discriminator 1
	testl	%eax, %eax	# _46
	je	.L145	#,
# i_video.c:787: 	    if (!(!strcasecmp(displayname, "unix") || !*displayname)) doShm = false;
	.loc 1 787 49 discriminator 1
	movq	-312(%rbp), %rax	# displayname, tmp250
	movzbl	(%rax), %eax	# *displayname_133, _47
# i_video.c:787: 	    if (!(!strcasecmp(displayname, "unix") || !*displayname)) doShm = false;
	.loc 1 787 10 discriminator 1
	testb	%al, %al	# _47
	je	.L145	#,
# i_video.c:787: 	    if (!(!strcasecmp(displayname, "unix") || !*displayname)) doShm = false;
	.loc 1 787 70 discriminator 2
	movl	$0, doShm(%rip)	#, doShm
.L145:
# i_video.c:791:     fprintf(stderr, "Using MITSHM extension\n");
	.loc 1 791 5
	movq	stderr(%rip), %rax	# stderr, stderr.94_48
	movq	%rax, %rcx	# stderr.94_48,
	movl	$23, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC26(%rip), %rax	#, tmp251
	movq	%rax, %rdi	# tmp251,
	call	fwrite@PLT	#
# i_video.c:794:     X_cmap = XCreateColormap(X_display, RootWindow(X_display,
	.loc 1 794 14
	movq	X_visual(%rip), %rdx	# X_visual, X_visual.95_49
# i_video.c:794:     X_cmap = XCreateColormap(X_display, RootWindow(X_display,
	.loc 1 794 41
	movq	X_display(%rip), %rax	# X_display, X_display.96_50
	movq	232(%rax), %rax	# MEM[(struct  *)X_display.96_50].screens, _51
	movl	X_screen(%rip), %ecx	# X_screen, X_screen.97_52
	movslq	%ecx, %rcx	# X_screen.97_52, _53
	salq	$7, %rcx	#, _54
	addq	%rcx, %rax	# _54, _55
# i_video.c:794:     X_cmap = XCreateColormap(X_display, RootWindow(X_display,
	.loc 1 794 14
	movq	16(%rax), %rsi	# _55->root, _56
	movq	X_display(%rip), %rax	# X_display, X_display.98_57
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# X_display.98_57,
	call	XCreateColormap@PLT	#
# i_video.c:794:     X_cmap = XCreateColormap(X_display, RootWindow(X_display,
	.loc 1 794 12 discriminator 1
	movq	%rax, X_cmap(%rip)	# _58, X_cmap
# i_video.c:798:     attribmask = CWEventMask | CWColormap | CWBorderPixel;
	.loc 1 798 16
	movq	$10248, -296(%rbp)	#, attribmask
# i_video.c:799:     attribs.event_mask =
	.loc 1 799 24
	movq	$32771, -216(%rbp)	#, attribs.event_mask
# i_video.c:805:     attribs.colormap = X_cmap;
	.loc 1 805 22
	movq	X_cmap(%rip), %rax	# X_cmap, X_cmap.99_59
	movq	%rax, -192(%rbp)	# X_cmap.99_59, attribs.colormap
# i_video.c:806:     attribs.border_pixel = 0;
	.loc 1 806 26
	movq	$0, -264(%rbp)	#, attribs.border_pixel
# i_video.c:809:     X_mainWindow = XCreateWindow(	X_display,
	.loc 1 809 20
	movq	X_visual(%rip), %rdi	# X_visual, X_visual.100_60
	movl	X_height(%rip), %eax	# X_height, X_height.101_61
	movl	%eax, %r9d	# X_height.101_61, X_height.102_62
	movl	X_width(%rip), %eax	# X_width, X_width.103_63
	movl	%eax, %r10d	# X_width.103_63, X_width.104_64
	movl	-332(%rbp), %ecx	# y, y.105_65
	movl	-336(%rbp), %edx	# x, x.106_66
# i_video.c:810: 					RootWindow(X_display, X_screen),
	.loc 1 810 6
	movq	X_display(%rip), %rax	# X_display, X_display.107_67
	movq	232(%rax), %rax	# MEM[(struct  *)X_display.107_67].screens, _68
	movl	X_screen(%rip), %esi	# X_screen, X_screen.108_69
	movslq	%esi, %rsi	# X_screen.108_69, _70
	salq	$7, %rsi	#, _71
	addq	%rsi, %rax	# _71, _72
# i_video.c:809:     X_mainWindow = XCreateWindow(	X_display,
	.loc 1 809 20
	movq	16(%rax), %rsi	# _72->root, _73
	movq	X_display(%rip), %rax	# X_display, X_display.109_74
	leaq	-288(%rbp), %r8	#, tmp252
	pushq	%r8	# tmp252
	pushq	-296(%rbp)	# attribmask
	pushq	%rdi	# X_visual.100_60
	pushq	$1	#
	pushq	$8	#
	pushq	$0	#
	movl	%r10d, %r8d	# X_width.104_64,
	movq	%rax, %rdi	# X_display.109_74,
	call	XCreateWindow@PLT	#
	addq	$48, %rsp	#,
# i_video.c:809:     X_mainWindow = XCreateWindow(	X_display,
	.loc 1 809 18 discriminator 1
	movq	%rax, X_mainWindow(%rip)	# _75, X_mainWindow
# i_video.c:820:     XDefineCursor(X_display, X_mainWindow,
	.loc 1 820 5
	movq	X_mainWindow(%rip), %rdx	# X_mainWindow, X_mainWindow.110_76
	movq	X_display(%rip), %rax	# X_display, X_display.111_77
	movq	%rdx, %rsi	# X_mainWindow.110_76,
	movq	%rax, %rdi	# X_display.111_77,
	call	createnullcursor	#
	movq	%rax, %rdx	#, _78
# i_video.c:820:     XDefineCursor(X_display, X_mainWindow,
	.loc 1 820 5 is_stmt 0 discriminator 1
	movq	X_mainWindow(%rip), %rcx	# X_mainWindow, X_mainWindow.112_79
	movq	X_display(%rip), %rax	# X_display, X_display.113_80
	movq	%rcx, %rsi	# X_mainWindow.112_79,
	movq	%rax, %rdi	# X_display.113_80,
	call	XDefineCursor@PLT	#
# i_video.c:824:     valuemask = GCGraphicsExposures;
	.loc 1 824 15 is_stmt 1
	movl	$65536, -316(%rbp)	#, valuemask
# i_video.c:825:     xgcvalues.graphics_exposures = False;
	.loc 1 825 34
	movl	$0, -76(%rbp)	#, xgcvalues.graphics_exposures
# i_video.c:826:     X_gc = XCreateGC(	X_display,
	.loc 1 826 12
	movl	-316(%rbp), %eax	# valuemask, tmp253
	movslq	%eax, %rdx	# tmp253, _81
	movq	X_mainWindow(%rip), %rsi	# X_mainWindow, X_mainWindow.114_82
	movq	X_display(%rip), %rax	# X_display, X_display.115_83
	leaq	-176(%rbp), %rcx	#, tmp254
	movq	%rax, %rdi	# X_display.115_83,
	call	XCreateGC@PLT	#
# i_video.c:826:     X_gc = XCreateGC(	X_display,
	.loc 1 826 10 discriminator 1
	movq	%rax, X_gc(%rip)	# _84, X_gc
# i_video.c:831:     XInstallColormap( X_display, X_cmap );
	.loc 1 831 5
	movq	X_cmap(%rip), %rdx	# X_cmap, X_cmap.116_85
	movq	X_display(%rip), %rax	# X_display, X_display.117_86
	movq	%rdx, %rsi	# X_cmap.116_85,
	movq	%rax, %rdi	# X_display.117_86,
	call	XInstallColormap@PLT	#
# i_video.c:833:     XMapWindow(X_display, X_mainWindow);
	.loc 1 833 5
	movq	X_mainWindow(%rip), %rdx	# X_mainWindow, X_mainWindow.118_87
	movq	X_display(%rip), %rax	# X_display, X_display.119_88
	movq	%rdx, %rsi	# X_mainWindow.118_87,
	movq	%rax, %rdi	# X_display.119_88,
	call	XMapWindow@PLT	#
# i_video.c:836:     oktodraw = 0;
	.loc 1 836 14
	movl	$0, -328(%rbp)	#, oktodraw
# i_video.c:837:     while (!oktodraw)
	.loc 1 837 11
	jmp	.L151	#
.L153:
# i_video.c:839: 	XNextEvent(X_display, &X_event);
	.loc 1 839 2
	movq	X_display(%rip), %rax	# X_display, X_display.120_89
	leaq	X_event(%rip), %rdx	#, tmp255
	movq	%rdx, %rsi	# tmp255,
	movq	%rax, %rdi	# X_display.120_89,
	call	XNextEvent@PLT	#
# i_video.c:840: 	if (X_event.type == Expose
	.loc 1 840 13
	movl	X_event(%rip), %eax	# X_event.type, _90
# i_video.c:840: 	if (X_event.type == Expose
	.loc 1 840 5
	cmpl	$12, %eax	#, _90
	jne	.L151	#,
# i_video.c:841: 	    && !X_event.xexpose.count)
	.loc 1 841 25
	movl	56+X_event(%rip), %eax	# X_event.xexpose.count, _91
# i_video.c:841: 	    && !X_event.xexpose.count)
	.loc 1 841 6
	testl	%eax, %eax	# _91
	jne	.L151	#,
# i_video.c:843: 	    oktodraw = 1;
	.loc 1 843 15
	movl	$1, -328(%rbp)	#, oktodraw
.L151:
# i_video.c:837:     while (!oktodraw)
	.loc 1 837 12
	cmpl	$0, -328(%rbp)	#, oktodraw
	je	.L153	#,
# i_video.c:848:     if (grabMouse)
	.loc 1 848 9
	movl	grabMouse(%rip), %eax	# grabMouse, grabMouse.121_92
# i_video.c:848:     if (grabMouse)
	.loc 1 848 8
	testl	%eax, %eax	# grabMouse.121_92
	je	.L154	#,
# i_video.c:849: 	XGrabPointer(X_display, X_mainWindow, True,
	.loc 1 849 2
	movq	X_mainWindow(%rip), %rdx	# X_mainWindow, X_mainWindow.122_93
	movq	X_mainWindow(%rip), %rsi	# X_mainWindow, X_mainWindow.123_94
	movq	X_display(%rip), %rax	# X_display, X_display.124_95
	subq	$8, %rsp	#,
	pushq	$0	#
	pushq	$0	#
	pushq	%rdx	# X_mainWindow.122_93
	movl	$1, %r9d	#,
	movl	$1, %r8d	#,
	movl	$76, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# X_display.124_95,
	call	XGrabPointer@PLT	#
	addq	$32, %rsp	#,
.L154:
# i_video.c:854:     if (doShm)
	.loc 1 854 9
	movl	doShm(%rip), %eax	# doShm, doShm.125_96
# i_video.c:854:     if (doShm)
	.loc 1 854 8
	testl	%eax, %eax	# doShm.125_96
	je	.L155	#,
# i_video.c:857: 	X_shmeventtype = XShmGetEventBase(X_display) + ShmCompletion;
	.loc 1 857 47
	movq	X_display(%rip), %rax	# X_display, X_display.126_97
	movq	%rax, %rdi	# X_display.126_97,
	call	XShmGetEventBase@PLT	#
# i_video.c:857: 	X_shmeventtype = XShmGetEventBase(X_display) + ShmCompletion;
	.loc 1 857 17 discriminator 1
	movl	%eax, X_shmeventtype(%rip)	# _98, X_shmeventtype
# i_video.c:860: 	image = XShmCreateImage(	X_display,
	.loc 1 860 10
	movl	X_height(%rip), %eax	# X_height, X_height.127_99
	movl	%eax, %ecx	# X_height.127_99, X_height.128_100
	movl	X_width(%rip), %eax	# X_width, X_width.129_101
	movl	%eax, %edx	# X_width.129_101, X_width.130_102
	movq	X_visual(%rip), %rsi	# X_visual, X_visual.131_103
	movq	X_display(%rip), %rax	# X_display, X_display.132_104
	pushq	%rcx	# X_height.128_100
	pushq	%rdx	# X_width.130_102
	leaq	X_shminfo(%rip), %r9	#,
	movl	$0, %r8d	#,
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# X_display.132_104,
	call	XShmCreateImage@PLT	#
	addq	$16, %rsp	#,
# i_video.c:860: 	image = XShmCreateImage(	X_display,
	.loc 1 860 8 discriminator 1
	movq	%rax, image(%rip)	# _105, image
# i_video.c:869: 	grabsharedmemory(image->bytes_per_line * image->height);
	.loc 1 869 24
	movq	image(%rip), %rax	# image, image.133_106
	movl	44(%rax), %edx	# image.133_106->bytes_per_line, _107
# i_video.c:869: 	grabsharedmemory(image->bytes_per_line * image->height);
	.loc 1 869 48
	movq	image(%rip), %rax	# image, image.134_108
	movl	4(%rax), %eax	# image.134_108->height, _109
# i_video.c:869: 	grabsharedmemory(image->bytes_per_line * image->height);
	.loc 1 869 2
	imull	%edx, %eax	# _107, _110
	movl	%eax, %edi	# _110,
	call	grabsharedmemory	#
# i_video.c:886: 	if (!image->data)
	.loc 1 886 12
	movq	image(%rip), %rax	# image, image.135_111
	movq	16(%rax), %rax	# image.135_111->data, _112
# i_video.c:886: 	if (!image->data)
	.loc 1 886 5
	testq	%rax, %rax	# _112
	jne	.L156	#,
# i_video.c:888: 	    perror("");
	.loc 1 888 6
	leaq	.LC27(%rip), %rax	#, tmp256
	movq	%rax, %rdi	# tmp256,
	call	perror@PLT	#
# i_video.c:889: 	    I_Error("shmat() failed in InitGraphics()");
	.loc 1 889 6
	leaq	.LC28(%rip), %rax	#, tmp257
	movq	%rax, %rdi	# tmp257,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
.L156:
# i_video.c:893: 	if (!XShmAttach(X_display, &X_shminfo))
	.loc 1 893 7
	movq	X_display(%rip), %rax	# X_display, X_display.136_113
	leaq	X_shminfo(%rip), %rdx	#, tmp258
	movq	%rdx, %rsi	# tmp258,
	movq	%rax, %rdi	# X_display.136_113,
	call	XShmAttach@PLT	#
# i_video.c:893: 	if (!XShmAttach(X_display, &X_shminfo))
	.loc 1 893 5 discriminator 1
	testl	%eax, %eax	# _114
	jne	.L157	#,
# i_video.c:894: 	    I_Error("XShmAttach() failed in InitGraphics()");
	.loc 1 894 6
	leaq	.LC29(%rip), %rax	#, tmp259
	movq	%rax, %rdi	# tmp259,
	movl	$0, %eax	#,
	call	I_Error@PLT	#
	jmp	.L157	#
.L155:
# i_video.c:899: 	image = XCreateImage(	X_display,
	.loc 1 899 10
	movl	X_width(%rip), %ebx	# X_width, X_width.137_115
	movl	X_height(%rip), %eax	# X_height, X_height.138_116
	movl	%eax, %r13d	# X_height.138_116, X_height.139_117
	movl	X_width(%rip), %eax	# X_width, X_width.140_118
	movl	%eax, %r12d	# X_width.140_118, X_width.141_119
# i_video.c:904:     				(char*)malloc(X_width * X_height),
	.loc 1 904 31
	movl	X_width(%rip), %edx	# X_width, X_width.142_120
	movl	X_height(%rip), %eax	# X_height, X_height.143_121
	imull	%edx, %eax	# X_width.142_120, _122
# i_video.c:904:     				(char*)malloc(X_width * X_height),
	.loc 1 904 16
	cltq
	movq	%rax, %rdi	# _123,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp260, _124
# i_video.c:899: 	image = XCreateImage(	X_display,
	.loc 1 899 10
	movq	X_visual(%rip), %rsi	# X_visual, X_visual.144_125
	movq	X_display(%rip), %rax	# X_display, X_display.145_126
	pushq	%rbx	# X_width.137_115
	pushq	$8	#
	pushq	%r13	# X_height.139_117
	pushq	%r12	# X_width.141_119
	movq	%rdx, %r9	# _124,
	movl	$0, %r8d	#,
	movl	$2, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# X_display.145_126,
	call	XCreateImage@PLT	#
	addq	$32, %rsp	#,
# i_video.c:899: 	image = XCreateImage(	X_display,
	.loc 1 899 8 discriminator 1
	movq	%rax, image(%rip)	# _127, image
.L157:
# i_video.c:911:     if (multiply == 1)
	.loc 1 911 18
	movl	multiply(%rip), %eax	# multiply, multiply.146_128
# i_video.c:911:     if (multiply == 1)
	.loc 1 911 8
	cmpl	$1, %eax	#, multiply.146_128
	jne	.L158	#,
# i_video.c:912: 	screens[0] = (unsigned char *) (image->data);
	.loc 1 912 39
	movq	image(%rip), %rax	# image, image.147_129
	movq	16(%rax), %rax	# image.147_129->data, _130
# i_video.c:912: 	screens[0] = (unsigned char *) (image->data);
	.loc 1 912 13
	movq	%rax, screens(%rip)	# _130, screens[0]
	jmp	.L130	#
.L158:
# i_video.c:914: 	screens[0] = (unsigned char *) malloc (SCREENWIDTH * SCREENHEIGHT);
	.loc 1 914 33
	movl	$64000, %edi	#,
	call	malloc@PLT	#
# i_video.c:914: 	screens[0] = (unsigned char *) malloc (SCREENWIDTH * SCREENHEIGHT);
	.loc 1 914 13 discriminator 1
	movq	%rax, screens(%rip)	# _131, screens[0]
	jmp	.L130	#
.L161:
# i_video.c:714: 	return;
	.loc 1 714 2 discriminator 1
	nop	
.L130:
# i_video.c:916: }
	.loc 1 916 1
	movq	-40(%rbp), %rax	# D.12203, tmp263
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp263
	je	.L160	#,
	call	__stack_chk_fail@PLT	#
.L160:
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	I_InitGraphics, .-I_InitGraphics
	.globl	exptable
	.bss
	.align 32
	.type	exptable, @object
	.size	exptable, 1024
exptable:
	.zero	1024
	.text
	.globl	InitExpand
	.type	InitExpand, @function
InitExpand:
.LFB19:
	.loc 1 922 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# i_video.c:925:     for (i=0 ; i<256 ; i++)
	.loc 1 925 11
	movl	$0, -4(%rbp)	#, i
# i_video.c:925:     for (i=0 ; i<256 ; i++)
	.loc 1 925 5
	jmp	.L163	#
.L164:
# i_video.c:926: 	exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 926 22
	movl	-4(%rbp), %eax	# i, tmp89
	sall	$8, %eax	#, _1
# i_video.c:926: 	exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 926 18
	orl	-4(%rbp), %eax	# i, _2
# i_video.c:926: 	exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 926 31
	movl	-4(%rbp), %edx	# i, tmp90
	sall	$16, %edx	#, _3
# i_video.c:926: 	exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 926 27
	orl	%eax, %edx	# _2, _4
# i_video.c:926: 	exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 926 41
	movl	-4(%rbp), %eax	# i, tmp91
	sall	$24, %eax	#, _5
# i_video.c:926: 	exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 926 37
	orl	%edx, %eax	# _4, _6
	movl	%eax, %ecx	# _6, _7
# i_video.c:926: 	exptable[i] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 926 14
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, tmp94
	leaq	exptable(%rip), %rax	#, tmp95
	movl	%ecx, (%rdx,%rax)	# _7, exptable[i_8]
# i_video.c:925:     for (i=0 ; i<256 ; i++)
	.loc 1 925 25 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L163:
# i_video.c:925:     for (i=0 ; i<256 ; i++)
	.loc 1 925 17 discriminator 1
	cmpl	$255, -4(%rbp)	#, i
	jle	.L164	#,
# i_video.c:927: }
	.loc 1 927 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	InitExpand, .-InitExpand
	.globl	exptable2
	.bss
	.align 32
	.type	exptable2, @object
	.size	exptable2, 524288
exptable2:
	.zero	524288
	.section	.rodata
.LC30:
	.string	"building exptable2..."
.LC31:
	.string	"done."
	.text
	.globl	InitExpand2
	.type	InitExpand2, @function
InitExpand2:
.LFB20:
	.loc 1 932 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# i_video.c:932: {
	.loc 1 932 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	movq	%rax, -8(%rbp)	# tmp108, D.12221
	xorl	%eax, %eax	# tmp108
# i_video.c:943:     printf ("building exptable2...\n");
	.loc 1 943 5
	leaq	.LC30(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	puts@PLT	#
# i_video.c:944:     exp = exptable2;
	.loc 1 944 9
	leaq	exptable2(%rip), %rax	#, tmp99
	movq	%rax, -24(%rbp)	# tmp99, exp
# i_video.c:945:     for (i=0 ; i<256 ; i++)
	.loc 1 945 11
	movl	$0, -32(%rbp)	#, i
# i_video.c:945:     for (i=0 ; i<256 ; i++)
	.loc 1 945 5
	jmp	.L166	#
.L169:
# i_video.c:947: 	pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 947 21
	movl	-32(%rbp), %eax	# i, tmp100
	sall	$8, %eax	#, _1
# i_video.c:947: 	pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 947 17
	orl	-32(%rbp), %eax	# i, _2
# i_video.c:947: 	pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 947 30
	movl	-32(%rbp), %edx	# i, tmp101
	sall	$16, %edx	#, _3
# i_video.c:947: 	pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 947 26
	orl	%eax, %edx	# _2, _4
# i_video.c:947: 	pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 947 40
	movl	-32(%rbp), %eax	# i, tmp102
	sall	$24, %eax	#, _5
# i_video.c:947: 	pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 947 36
	orl	%edx, %eax	# _4, _6
# i_video.c:947: 	pixel.u[0] = i | (i<<8) | (i<<16) | (i<<24);
	.loc 1 947 13
	movl	%eax, -16(%rbp)	# _7, pixel.u[0]
# i_video.c:948: 	for (j=0 ; j<256 ; j++)
	.loc 1 948 8
	movl	$0, -28(%rbp)	#, j
# i_video.c:948: 	for (j=0 ; j<256 ; j++)
	.loc 1 948 2
	jmp	.L167	#
.L168:
# i_video.c:950: 	    pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
	.loc 1 950 25
	movl	-28(%rbp), %eax	# j, tmp103
	sall	$8, %eax	#, _8
# i_video.c:950: 	    pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
	.loc 1 950 21
	orl	-28(%rbp), %eax	# j, _9
# i_video.c:950: 	    pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
	.loc 1 950 34
	movl	-28(%rbp), %edx	# j, tmp104
	sall	$16, %edx	#, _10
# i_video.c:950: 	    pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
	.loc 1 950 30
	orl	%eax, %edx	# _9, _11
# i_video.c:950: 	    pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
	.loc 1 950 44
	movl	-28(%rbp), %eax	# j, tmp105
	sall	$24, %eax	#, _12
# i_video.c:950: 	    pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
	.loc 1 950 40
	orl	%edx, %eax	# _11, _13
# i_video.c:950: 	    pixel.u[1] = j | (j<<8) | (j<<16) | (j<<24);
	.loc 1 950 17
	movl	%eax, -12(%rbp)	# _14, pixel.u[1]
# i_video.c:951: 	    *exp++ = pixel.d;
	.loc 1 951 10
	movq	-24(%rbp), %rax	# exp, exp.148_15
	leaq	8(%rax), %rdx	#, tmp106
	movq	%rdx, -24(%rbp)	# tmp106, exp
# i_video.c:951: 	    *exp++ = pixel.d;
	.loc 1 951 20
	movsd	-16(%rbp), %xmm0	# pixel.d, _16
# i_video.c:951: 	    *exp++ = pixel.d;
	.loc 1 951 13
	movsd	%xmm0, (%rax)	# _16, *exp.148_15
# i_video.c:948: 	for (j=0 ; j<256 ; j++)
	.loc 1 948 22 discriminator 3
	addl	$1, -28(%rbp)	#, j
.L167:
# i_video.c:948: 	for (j=0 ; j<256 ; j++)
	.loc 1 948 14 discriminator 1
	cmpl	$255, -28(%rbp)	#, j
	jle	.L168	#,
# i_video.c:945:     for (i=0 ; i<256 ; i++)
	.loc 1 945 25 discriminator 2
	addl	$1, -32(%rbp)	#, i
.L166:
# i_video.c:945:     for (i=0 ; i<256 ; i++)
	.loc 1 945 17 discriminator 1
	cmpl	$255, -32(%rbp)	#, i
	jle	.L169	#,
# i_video.c:954:     printf ("done.\n");
	.loc 1 954 5
	leaq	.LC31(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	puts@PLT	#
# i_video.c:955: }
	.loc 1 955 1
	nop	
	movq	-8(%rbp), %rax	# D.12221, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L170	#,
	call	__stack_chk_fail@PLT	#
.L170:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	InitExpand2, .-InitExpand2
	.globl	inited
	.bss
	.align 4
	.type	inited, @object
	.size	inited, 4
inited:
	.zero	4
	.text
	.globl	Expand4
	.type	Expand4, @function
Expand4:
.LFB21:
	.loc 1 963 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# lineptr, lineptr
	movq	%rsi, -48(%rbp)	# xline, xline
# i_video.c:971:     exp = exptable2;
	.loc 1 971 9
	leaq	exptable2(%rip), %rax	#, tmp173
	movq	%rax, -16(%rbp)	# tmp173, exp
# i_video.c:972:     if (!inited)
	.loc 1 972 9
	movl	inited(%rip), %eax	# inited, inited.149_1
# i_video.c:972:     if (!inited)
	.loc 1 972 8
	testl	%eax, %eax	# inited.149_1
	jne	.L172	#,
# i_video.c:974: 	inited = 1;
	.loc 1 974 9
	movl	$1, inited(%rip)	#, inited
# i_video.c:975: 	InitExpand2 ();
	.loc 1 975 2
	call	InitExpand2	#
.L172:
# i_video.c:979:     step = 3*SCREENWIDTH/2;
	.loc 1 979 10
	movl	$480, -24(%rbp)	#, step
# i_video.c:981:     y = SCREENHEIGHT-1;
	.loc 1 981 7
	movl	$199, -28(%rbp)	#, y
.L174:
# i_video.c:984: 	x = SCREENWIDTH;
	.loc 1 984 4
	movl	$320, -32(%rbp)	#, x
.L173:
# i_video.c:988: 	    fourpixels = lineptr[0];
	.loc 1 988 17
	movq	-40(%rbp), %rax	# lineptr, tmp174
	movl	(%rax), %eax	# *lineptr_93, tmp175
	movl	%eax, -20(%rbp)	# tmp175, fourpixels
# i_video.c:990: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 990 28
	movq	-16(%rbp), %rax	# exp, exp.150_2
	movl	%eax, %edx	# exp.150_2, _3
# i_video.c:990: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 990 64
	movl	-20(%rbp), %eax	# fourpixels, tmp176
	shrl	$13, %eax	#, _4
	andl	$524280, %eax	#, _5
# i_video.c:990: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 990 37
	addl	%edx, %eax	# _3, _6
	movl	%eax, %eax	# _6, _7
# i_video.c:990: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 990 13
	movsd	(%rax), %xmm0	# *_8, tmp177
	movsd	%xmm0, -8(%rbp)	# tmp177, dpixel
# i_video.c:991: 	    xline[0] = dpixel;
	.loc 1 991 15
	movq	-48(%rbp), %rax	# xline, tmp178
	movsd	-8(%rbp), %xmm0	# dpixel, tmp179
	movsd	%xmm0, (%rax)	# tmp179, *xline_95
# i_video.c:992: 	    xline[160] = dpixel;
	.loc 1 992 11
	movq	-48(%rbp), %rax	# xline, tmp180
	addq	$1280, %rax	#, _9
# i_video.c:992: 	    xline[160] = dpixel;
	.loc 1 992 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp181
	movsd	%xmm0, (%rax)	# tmp181, *_9
# i_video.c:993: 	    xline[320] = dpixel;
	.loc 1 993 11
	movq	-48(%rbp), %rax	# xline, tmp182
	addq	$2560, %rax	#, _10
# i_video.c:993: 	    xline[320] = dpixel;
	.loc 1 993 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp183
	movsd	%xmm0, (%rax)	# tmp183, *_10
# i_video.c:994: 	    xline[480] = dpixel;
	.loc 1 994 11
	movq	-48(%rbp), %rax	# xline, tmp184
	addq	$3840, %rax	#, _11
# i_video.c:994: 	    xline[480] = dpixel;
	.loc 1 994 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp185
	movsd	%xmm0, (%rax)	# tmp185, *_11
# i_video.c:996: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 996 28
	movq	-16(%rbp), %rax	# exp, exp.151_12
	movl	%eax, %edx	# exp.151_12, _13
# i_video.c:996: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 996 60
	movl	-20(%rbp), %eax	# fourpixels, tmp186
	sall	$3, %eax	#, _14
	andl	$524280, %eax	#, _15
# i_video.c:996: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 996 37
	addl	%edx, %eax	# _13, _16
	movl	%eax, %eax	# _16, _17
# i_video.c:996: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 996 13
	movsd	(%rax), %xmm0	# *_18, tmp187
	movsd	%xmm0, -8(%rbp)	# tmp187, dpixel
# i_video.c:997: 	    xline[1] = dpixel;
	.loc 1 997 11
	movq	-48(%rbp), %rax	# xline, tmp188
	addq	$8, %rax	#, _19
# i_video.c:997: 	    xline[1] = dpixel;
	.loc 1 997 15
	movsd	-8(%rbp), %xmm0	# dpixel, tmp189
	movsd	%xmm0, (%rax)	# tmp189, *_19
# i_video.c:998: 	    xline[161] = dpixel;
	.loc 1 998 11
	movq	-48(%rbp), %rax	# xline, tmp190
	addq	$1288, %rax	#, _20
# i_video.c:998: 	    xline[161] = dpixel;
	.loc 1 998 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp191
	movsd	%xmm0, (%rax)	# tmp191, *_20
# i_video.c:999: 	    xline[321] = dpixel;
	.loc 1 999 11
	movq	-48(%rbp), %rax	# xline, tmp192
	addq	$2568, %rax	#, _21
# i_video.c:999: 	    xline[321] = dpixel;
	.loc 1 999 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp193
	movsd	%xmm0, (%rax)	# tmp193, *_21
# i_video.c:1000: 	    xline[481] = dpixel;
	.loc 1 1000 11
	movq	-48(%rbp), %rax	# xline, tmp194
	addq	$3848, %rax	#, _22
# i_video.c:1000: 	    xline[481] = dpixel;
	.loc 1 1000 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp195
	movsd	%xmm0, (%rax)	# tmp195, *_22
# i_video.c:1002: 	    fourpixels = lineptr[1];
	.loc 1 1002 17
	movq	-40(%rbp), %rax	# lineptr, tmp196
	movl	4(%rax), %eax	# MEM[(unsigned int *)lineptr_93 + 4B], tmp197
	movl	%eax, -20(%rbp)	# tmp197, fourpixels
# i_video.c:1004: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1004 28
	movq	-16(%rbp), %rax	# exp, exp.152_23
	movl	%eax, %edx	# exp.152_23, _24
# i_video.c:1004: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1004 64
	movl	-20(%rbp), %eax	# fourpixels, tmp198
	shrl	$13, %eax	#, _25
	andl	$524280, %eax	#, _26
# i_video.c:1004: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1004 37
	addl	%edx, %eax	# _24, _27
	movl	%eax, %eax	# _27, _28
# i_video.c:1004: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1004 13
	movsd	(%rax), %xmm0	# *_29, tmp199
	movsd	%xmm0, -8(%rbp)	# tmp199, dpixel
# i_video.c:1005: 	    xline[2] = dpixel;
	.loc 1 1005 11
	movq	-48(%rbp), %rax	# xline, tmp200
	addq	$16, %rax	#, _30
# i_video.c:1005: 	    xline[2] = dpixel;
	.loc 1 1005 15
	movsd	-8(%rbp), %xmm0	# dpixel, tmp201
	movsd	%xmm0, (%rax)	# tmp201, *_30
# i_video.c:1006: 	    xline[162] = dpixel;
	.loc 1 1006 11
	movq	-48(%rbp), %rax	# xline, tmp202
	addq	$1296, %rax	#, _31
# i_video.c:1006: 	    xline[162] = dpixel;
	.loc 1 1006 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp203
	movsd	%xmm0, (%rax)	# tmp203, *_31
# i_video.c:1007: 	    xline[322] = dpixel;
	.loc 1 1007 11
	movq	-48(%rbp), %rax	# xline, tmp204
	addq	$2576, %rax	#, _32
# i_video.c:1007: 	    xline[322] = dpixel;
	.loc 1 1007 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp205
	movsd	%xmm0, (%rax)	# tmp205, *_32
# i_video.c:1008: 	    xline[482] = dpixel;
	.loc 1 1008 11
	movq	-48(%rbp), %rax	# xline, tmp206
	addq	$3856, %rax	#, _33
# i_video.c:1008: 	    xline[482] = dpixel;
	.loc 1 1008 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp207
	movsd	%xmm0, (%rax)	# tmp207, *_33
# i_video.c:1010: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1010 28
	movq	-16(%rbp), %rax	# exp, exp.153_34
	movl	%eax, %edx	# exp.153_34, _35
# i_video.c:1010: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1010 60
	movl	-20(%rbp), %eax	# fourpixels, tmp208
	sall	$3, %eax	#, _36
	andl	$524280, %eax	#, _37
# i_video.c:1010: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1010 37
	addl	%edx, %eax	# _35, _38
	movl	%eax, %eax	# _38, _39
# i_video.c:1010: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1010 13
	movsd	(%rax), %xmm0	# *_40, tmp209
	movsd	%xmm0, -8(%rbp)	# tmp209, dpixel
# i_video.c:1011: 	    xline[3] = dpixel;
	.loc 1 1011 11
	movq	-48(%rbp), %rax	# xline, tmp210
	addq	$24, %rax	#, _41
# i_video.c:1011: 	    xline[3] = dpixel;
	.loc 1 1011 15
	movsd	-8(%rbp), %xmm0	# dpixel, tmp211
	movsd	%xmm0, (%rax)	# tmp211, *_41
# i_video.c:1012: 	    xline[163] = dpixel;
	.loc 1 1012 11
	movq	-48(%rbp), %rax	# xline, tmp212
	addq	$1304, %rax	#, _42
# i_video.c:1012: 	    xline[163] = dpixel;
	.loc 1 1012 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp213
	movsd	%xmm0, (%rax)	# tmp213, *_42
# i_video.c:1013: 	    xline[323] = dpixel;
	.loc 1 1013 11
	movq	-48(%rbp), %rax	# xline, tmp214
	addq	$2584, %rax	#, _43
# i_video.c:1013: 	    xline[323] = dpixel;
	.loc 1 1013 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp215
	movsd	%xmm0, (%rax)	# tmp215, *_43
# i_video.c:1014: 	    xline[483] = dpixel;
	.loc 1 1014 11
	movq	-48(%rbp), %rax	# xline, tmp216
	addq	$3864, %rax	#, _44
# i_video.c:1014: 	    xline[483] = dpixel;
	.loc 1 1014 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp217
	movsd	%xmm0, (%rax)	# tmp217, *_44
# i_video.c:1016: 	    fourpixels = lineptr[2];
	.loc 1 1016 17
	movq	-40(%rbp), %rax	# lineptr, tmp218
	movl	8(%rax), %eax	# MEM[(unsigned int *)lineptr_93 + 8B], tmp219
	movl	%eax, -20(%rbp)	# tmp219, fourpixels
# i_video.c:1018: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1018 28
	movq	-16(%rbp), %rax	# exp, exp.154_45
	movl	%eax, %edx	# exp.154_45, _46
# i_video.c:1018: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1018 64
	movl	-20(%rbp), %eax	# fourpixels, tmp220
	shrl	$13, %eax	#, _47
	andl	$524280, %eax	#, _48
# i_video.c:1018: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1018 37
	addl	%edx, %eax	# _46, _49
	movl	%eax, %eax	# _49, _50
# i_video.c:1018: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1018 13
	movsd	(%rax), %xmm0	# *_51, tmp221
	movsd	%xmm0, -8(%rbp)	# tmp221, dpixel
# i_video.c:1019: 	    xline[4] = dpixel;
	.loc 1 1019 11
	movq	-48(%rbp), %rax	# xline, tmp222
	addq	$32, %rax	#, _52
# i_video.c:1019: 	    xline[4] = dpixel;
	.loc 1 1019 15
	movsd	-8(%rbp), %xmm0	# dpixel, tmp223
	movsd	%xmm0, (%rax)	# tmp223, *_52
# i_video.c:1020: 	    xline[164] = dpixel;
	.loc 1 1020 11
	movq	-48(%rbp), %rax	# xline, tmp224
	addq	$1312, %rax	#, _53
# i_video.c:1020: 	    xline[164] = dpixel;
	.loc 1 1020 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp225
	movsd	%xmm0, (%rax)	# tmp225, *_53
# i_video.c:1021: 	    xline[324] = dpixel;
	.loc 1 1021 11
	movq	-48(%rbp), %rax	# xline, tmp226
	addq	$2592, %rax	#, _54
# i_video.c:1021: 	    xline[324] = dpixel;
	.loc 1 1021 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp227
	movsd	%xmm0, (%rax)	# tmp227, *_54
# i_video.c:1022: 	    xline[484] = dpixel;
	.loc 1 1022 11
	movq	-48(%rbp), %rax	# xline, tmp228
	addq	$3872, %rax	#, _55
# i_video.c:1022: 	    xline[484] = dpixel;
	.loc 1 1022 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp229
	movsd	%xmm0, (%rax)	# tmp229, *_55
# i_video.c:1024: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1024 28
	movq	-16(%rbp), %rax	# exp, exp.155_56
	movl	%eax, %edx	# exp.155_56, _57
# i_video.c:1024: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1024 60
	movl	-20(%rbp), %eax	# fourpixels, tmp230
	sall	$3, %eax	#, _58
	andl	$524280, %eax	#, _59
# i_video.c:1024: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1024 37
	addl	%edx, %eax	# _57, _60
	movl	%eax, %eax	# _60, _61
# i_video.c:1024: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1024 13
	movsd	(%rax), %xmm0	# *_62, tmp231
	movsd	%xmm0, -8(%rbp)	# tmp231, dpixel
# i_video.c:1025: 	    xline[5] = dpixel;
	.loc 1 1025 11
	movq	-48(%rbp), %rax	# xline, tmp232
	addq	$40, %rax	#, _63
# i_video.c:1025: 	    xline[5] = dpixel;
	.loc 1 1025 15
	movsd	-8(%rbp), %xmm0	# dpixel, tmp233
	movsd	%xmm0, (%rax)	# tmp233, *_63
# i_video.c:1026: 	    xline[165] = dpixel;
	.loc 1 1026 11
	movq	-48(%rbp), %rax	# xline, tmp234
	addq	$1320, %rax	#, _64
# i_video.c:1026: 	    xline[165] = dpixel;
	.loc 1 1026 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp235
	movsd	%xmm0, (%rax)	# tmp235, *_64
# i_video.c:1027: 	    xline[325] = dpixel;
	.loc 1 1027 11
	movq	-48(%rbp), %rax	# xline, tmp236
	addq	$2600, %rax	#, _65
# i_video.c:1027: 	    xline[325] = dpixel;
	.loc 1 1027 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp237
	movsd	%xmm0, (%rax)	# tmp237, *_65
# i_video.c:1028: 	    xline[485] = dpixel;
	.loc 1 1028 11
	movq	-48(%rbp), %rax	# xline, tmp238
	addq	$3880, %rax	#, _66
# i_video.c:1028: 	    xline[485] = dpixel;
	.loc 1 1028 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp239
	movsd	%xmm0, (%rax)	# tmp239, *_66
# i_video.c:1030: 	    fourpixels = lineptr[3];
	.loc 1 1030 17
	movq	-40(%rbp), %rax	# lineptr, tmp240
	movl	12(%rax), %eax	# MEM[(unsigned int *)lineptr_93 + 12B], tmp241
	movl	%eax, -20(%rbp)	# tmp241, fourpixels
# i_video.c:1032: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1032 28
	movq	-16(%rbp), %rax	# exp, exp.156_67
	movl	%eax, %edx	# exp.156_67, _68
# i_video.c:1032: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1032 64
	movl	-20(%rbp), %eax	# fourpixels, tmp242
	shrl	$13, %eax	#, _69
	andl	$524280, %eax	#, _70
# i_video.c:1032: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1032 37
	addl	%edx, %eax	# _68, _71
	movl	%eax, %eax	# _71, _72
# i_video.c:1032: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff0000)>>13) );
	.loc 1 1032 13
	movsd	(%rax), %xmm0	# *_73, tmp243
	movsd	%xmm0, -8(%rbp)	# tmp243, dpixel
# i_video.c:1033: 	    xline[6] = dpixel;
	.loc 1 1033 11
	movq	-48(%rbp), %rax	# xline, tmp244
	addq	$48, %rax	#, _74
# i_video.c:1033: 	    xline[6] = dpixel;
	.loc 1 1033 15
	movsd	-8(%rbp), %xmm0	# dpixel, tmp245
	movsd	%xmm0, (%rax)	# tmp245, *_74
# i_video.c:1034: 	    xline[166] = dpixel;
	.loc 1 1034 11
	movq	-48(%rbp), %rax	# xline, tmp246
	addq	$1328, %rax	#, _75
# i_video.c:1034: 	    xline[166] = dpixel;
	.loc 1 1034 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp247
	movsd	%xmm0, (%rax)	# tmp247, *_75
# i_video.c:1035: 	    xline[326] = dpixel;
	.loc 1 1035 11
	movq	-48(%rbp), %rax	# xline, tmp248
	addq	$2608, %rax	#, _76
# i_video.c:1035: 	    xline[326] = dpixel;
	.loc 1 1035 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp249
	movsd	%xmm0, (%rax)	# tmp249, *_76
# i_video.c:1036: 	    xline[486] = dpixel;
	.loc 1 1036 11
	movq	-48(%rbp), %rax	# xline, tmp250
	addq	$3888, %rax	#, _77
# i_video.c:1036: 	    xline[486] = dpixel;
	.loc 1 1036 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp251
	movsd	%xmm0, (%rax)	# tmp251, *_77
# i_video.c:1038: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1038 28
	movq	-16(%rbp), %rax	# exp, exp.157_78
	movl	%eax, %edx	# exp.157_78, _79
# i_video.c:1038: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1038 60
	movl	-20(%rbp), %eax	# fourpixels, tmp252
	sall	$3, %eax	#, _80
	andl	$524280, %eax	#, _81
# i_video.c:1038: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1038 37
	addl	%edx, %eax	# _79, _82
	movl	%eax, %eax	# _82, _83
# i_video.c:1038: 	    dpixel = *(double *)( (int)exp + ( (fourpixels&0xffff)<<3 ) );
	.loc 1 1038 13
	movsd	(%rax), %xmm0	# *_84, tmp253
	movsd	%xmm0, -8(%rbp)	# tmp253, dpixel
# i_video.c:1039: 	    xline[7] = dpixel;
	.loc 1 1039 11
	movq	-48(%rbp), %rax	# xline, tmp254
	addq	$56, %rax	#, _85
# i_video.c:1039: 	    xline[7] = dpixel;
	.loc 1 1039 15
	movsd	-8(%rbp), %xmm0	# dpixel, tmp255
	movsd	%xmm0, (%rax)	# tmp255, *_85
# i_video.c:1040: 	    xline[167] = dpixel;
	.loc 1 1040 11
	movq	-48(%rbp), %rax	# xline, tmp256
	addq	$1336, %rax	#, _86
# i_video.c:1040: 	    xline[167] = dpixel;
	.loc 1 1040 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp257
	movsd	%xmm0, (%rax)	# tmp257, *_86
# i_video.c:1041: 	    xline[327] = dpixel;
	.loc 1 1041 11
	movq	-48(%rbp), %rax	# xline, tmp258
	addq	$2616, %rax	#, _87
# i_video.c:1041: 	    xline[327] = dpixel;
	.loc 1 1041 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp259
	movsd	%xmm0, (%rax)	# tmp259, *_87
# i_video.c:1042: 	    xline[487] = dpixel;
	.loc 1 1042 11
	movq	-48(%rbp), %rax	# xline, tmp260
	addq	$3896, %rax	#, _88
# i_video.c:1042: 	    xline[487] = dpixel;
	.loc 1 1042 17
	movsd	-8(%rbp), %xmm0	# dpixel, tmp261
	movsd	%xmm0, (%rax)	# tmp261, *_88
# i_video.c:1044: 	    lineptr+=4;
	.loc 1 1044 13
	addq	$16, -40(%rbp)	#, lineptr
# i_video.c:1045: 	    xline+=8;
	.loc 1 1045 11
	addq	$64, -48(%rbp)	#, xline
# i_video.c:1046: 	} while (x-=16);
	.loc 1 1046 12 discriminator 1
	subl	$16, -32(%rbp)	#, x
# i_video.c:1046: 	} while (x-=16);
	.loc 1 1046 11 discriminator 1
	cmpl	$0, -32(%rbp)	#, x
	jne	.L173	#,
# i_video.c:1047: 	xline += step;
	.loc 1 1047 8
	movl	-24(%rbp), %eax	# step, _89
	salq	$3, %rax	#, _90
	addq	%rax, -48(%rbp)	# _90, xline
# i_video.c:1048:     } while (y--);
	.loc 1 1048 15
	movl	-28(%rbp), %eax	# y, y.158_91
	leal	-1(%rax), %edx	#, tmp262
	movl	%edx, -28(%rbp)	# tmp262, y
# i_video.c:1048:     } while (y--);
	.loc 1 1048 14
	testl	%eax, %eax	# y.158_91
	jne	.L174	#,
# i_video.c:1049: }
	.loc 1 1049 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	Expand4, .-Expand4
	.local	lasttic.2
	.comm	lasttic.2,4,4
	.data
	.align 4
	.type	firstcall.1, @object
	.size	firstcall.1, 4
firstcall.1:
	.long	1
	.align 4
	.type	firsttime.0, @object
	.size	firsttime.0, 4
firsttime.0:
	.long	1
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/ipc-perm.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/shm.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_shmid_ds.h"
	.file 8 "/usr/include/X11/X.h"
	.file 9 "/usr/include/X11/Xlib.h"
	.file 10 "/usr/include/X11/Xutil.h"
	.file 11 "/usr/include/X11/extensions/XShm.h"
	.file 12 "/usr/include/signal.h"
	.file 13 "doomtype.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 16 "doomdef.h"
	.file 17 "info.h"
	.file 18 "p_pspr.h"
	.file 19 "/usr/include/stdio.h"
	.file 20 "doomstat.h"
	.file 21 "d_event.h"
	.file 22 "v_video.h"
	.file 23 "m_argv.h"
	.file 24 "/usr/include/stdlib.h"
	.file 25 "/usr/include/strings.h"
	.file 26 "/usr/include/x86_64-linux-gnu/sys/shm.h"
	.file 27 "/usr/include/errno.h"
	.file 28 "/usr/include/unistd.h"
	.file 29 "/usr/include/string.h"
	.file 30 "i_system.h"
	.file 31 "d_main.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x578b
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2c
	.long	.LASF1773
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x10
	.long	0x51
	.long	0x3e
	.uleb128 0x11
	.long	0x43
	.byte	0x2d
	.byte	0
	.uleb128 0x21
	.long	0x2e
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x21
	.long	0x4a
	.uleb128 0x1c
	.long	.LASF1672
	.byte	0x19
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x9
	.long	.LASF11
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x43
	.uleb128 0x2d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x13
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x13
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x9
	.long	.LASF12
	.byte	0x3
	.byte	0x92
	.byte	0x19
	.long	0x9a
	.uleb128 0x9
	.long	.LASF13
	.byte	0x3
	.byte	0x93
	.byte	0x19
	.long	0x9a
	.uleb128 0x9
	.long	.LASF14
	.byte	0x3
	.byte	0x96
	.byte	0x1a
	.long	0x9a
	.uleb128 0x9
	.long	.LASF15
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x7e
	.uleb128 0x9
	.long	.LASF16
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x7e
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.byte	0x9a
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.long	.LASF18
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x7e
	.uleb128 0x9
	.long	.LASF19
	.byte	0x3
	.byte	0xa6
	.byte	0x19
	.long	0x77
	.uleb128 0x2e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.byte	0xc7
	.byte	0x21
	.long	0x43
	.uleb128 0x6
	.long	0x4a
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x79
	.byte	0x11
	.long	0x103
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0x10
	.long	0x9a
	.long	0x145
	.uleb128 0x11
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	0x4a
	.long	0x155
	.uleb128 0x11
	.long	0x43
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.long	0x15a
	.uleb128 0x2f
	.uleb128 0x6
	.long	0x11d
	.uleb128 0x1e
	.long	.LASF32
	.byte	0x30
	.byte	0x5
	.byte	0x1c
	.byte	0x8
	.long	0x1ec
	.uleb128 0x5
	.long	.LASF23
	.byte	0x5
	.byte	0x1e
	.byte	0xb
	.long	0x103
	.byte	0
	.uleb128 0x22
	.string	"uid"
	.byte	0x1f
	.long	0xaf
	.byte	0x4
	.uleb128 0x22
	.string	"gid"
	.byte	0x20
	.long	0xbb
	.byte	0x8
	.uleb128 0x5
	.long	.LASF24
	.byte	0x5
	.byte	0x21
	.byte	0xb
	.long	0xaf
	.byte	0xc
	.uleb128 0x5
	.long	.LASF25
	.byte	0x5
	.byte	0x22
	.byte	0xb
	.long	0xbb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF26
	.byte	0x5
	.byte	0x23
	.byte	0xc
	.long	0xc7
	.byte	0x14
	.uleb128 0x5
	.long	.LASF27
	.byte	0x5
	.byte	0x24
	.byte	0x16
	.long	0x93
	.byte	0x18
	.uleb128 0x5
	.long	.LASF28
	.byte	0x5
	.byte	0x25
	.byte	0x16
	.long	0x93
	.byte	0x1a
	.uleb128 0x5
	.long	.LASF29
	.byte	0x5
	.byte	0x26
	.byte	0x15
	.long	0x111
	.byte	0x20
	.uleb128 0x5
	.long	.LASF30
	.byte	0x5
	.byte	0x27
	.byte	0x15
	.long	0x111
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.byte	0x2b
	.byte	0x1b
	.long	0x111
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0x18
	.byte	0x8
	.long	0x288
	.uleb128 0x5
	.long	.LASF34
	.byte	0x7
	.byte	0x1d
	.byte	0x15
	.long	0x160
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.long	0x6b
	.byte	0x30
	.uleb128 0x5
	.long	.LASF36
	.byte	0x7
	.byte	0x27
	.byte	0xe
	.long	0xf7
	.byte	0x38
	.uleb128 0x5
	.long	.LASF37
	.byte	0x7
	.byte	0x28
	.byte	0xe
	.long	0xf7
	.byte	0x40
	.uleb128 0x5
	.long	.LASF38
	.byte	0x7
	.byte	0x29
	.byte	0xe
	.long	0xf7
	.byte	0x48
	.uleb128 0x5
	.long	.LASF39
	.byte	0x7
	.byte	0x2b
	.byte	0xd
	.long	0xeb
	.byte	0x50
	.uleb128 0x5
	.long	.LASF40
	.byte	0x7
	.byte	0x2c
	.byte	0xd
	.long	0xeb
	.byte	0x54
	.uleb128 0x5
	.long	.LASF41
	.byte	0x7
	.byte	0x2d
	.byte	0xe
	.long	0x1ec
	.byte	0x58
	.uleb128 0x5
	.long	.LASF42
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.long	0x111
	.byte	0x60
	.uleb128 0x5
	.long	.LASF43
	.byte	0x7
	.byte	0x2f
	.byte	0x17
	.long	0x111
	.byte	0x68
	.byte	0
	.uleb128 0x23
	.string	"XID"
	.byte	0x8
	.byte	0x42
	.byte	0x17
	.long	0x43
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x4a
	.byte	0x17
	.long	0x43
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x4c
	.byte	0x17
	.long	0x43
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x4d
	.byte	0x17
	.long	0x43
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x60
	.byte	0xd
	.long	0x288
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x61
	.byte	0xd
	.long	0x288
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x64
	.byte	0xd
	.long	0x288
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x66
	.byte	0xd
	.long	0x288
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x67
	.byte	0xd
	.long	0x288
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x68
	.byte	0xd
	.long	0x288
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x6a
	.byte	0xd
	.long	0x288
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x6c
	.byte	0x17
	.long	0x8c
	.uleb128 0x13
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0x9
	.long	.LASF56
	.byte	0x9
	.byte	0x50
	.byte	0xf
	.long	0x11d
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x20
	.byte	0x9
	.byte	0x94
	.byte	0x10
	.long	0x36d
	.uleb128 0x5
	.long	.LASF58
	.byte	0x9
	.byte	0x95
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x5
	.long	.LASF59
	.byte	0x9
	.byte	0x96
	.byte	0x14
	.long	0x36d
	.byte	0x8
	.uleb128 0x5
	.long	.LASF60
	.byte	0x9
	.byte	0x97
	.byte	0x8
	.long	0x381
	.byte	0x10
	.uleb128 0x5
	.long	.LASF61
	.byte	0x9
	.byte	0x9a
	.byte	0xb
	.long	0x31f
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	0x32b
	.uleb128 0x14
	.long	0x77
	.long	0x381
	.uleb128 0x4
	.long	0x36d
	.byte	0
	.uleb128 0x6
	.long	0x372
	.uleb128 0x9
	.long	.LASF62
	.byte	0x9
	.byte	0x9b
	.byte	0x3
	.long	0x32b
	.uleb128 0x1d
	.byte	0x80
	.byte	0x9
	.byte	0xb5
	.long	0x4c6
	.uleb128 0x5
	.long	.LASF63
	.byte	0x9
	.byte	0xb6
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x5
	.long	.LASF64
	.byte	0x9
	.byte	0xb7
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x5
	.long	.LASF65
	.byte	0x9
	.byte	0xb8
	.byte	0x10
	.long	0x43
	.byte	0x10
	.uleb128 0x5
	.long	.LASF66
	.byte	0x9
	.byte	0xb9
	.byte	0x10
	.long	0x43
	.byte	0x18
	.uleb128 0x5
	.long	.LASF67
	.byte	0x9
	.byte	0xba
	.byte	0x6
	.long	0x77
	.byte	0x20
	.uleb128 0x5
	.long	.LASF68
	.byte	0x9
	.byte	0xbb
	.byte	0x6
	.long	0x77
	.byte	0x24
	.uleb128 0x5
	.long	.LASF69
	.byte	0x9
	.byte	0xbc
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0x5
	.long	.LASF70
	.byte	0x9
	.byte	0xbe
	.byte	0x6
	.long	0x77
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF71
	.byte	0x9
	.byte	0xbf
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0x5
	.long	.LASF72
	.byte	0x9
	.byte	0xc1
	.byte	0x6
	.long	0x77
	.byte	0x34
	.uleb128 0x5
	.long	.LASF73
	.byte	0x9
	.byte	0xc2
	.byte	0x6
	.long	0x77
	.byte	0x38
	.uleb128 0x5
	.long	.LASF74
	.byte	0x9
	.byte	0xc3
	.byte	0x9
	.long	0x2dc
	.byte	0x40
	.uleb128 0x5
	.long	.LASF75
	.byte	0x9
	.byte	0xc4
	.byte	0x9
	.long	0x2dc
	.byte	0x48
	.uleb128 0x5
	.long	.LASF76
	.byte	0x9
	.byte	0xc5
	.byte	0x6
	.long	0x77
	.byte	0x50
	.uleb128 0x5
	.long	.LASF77
	.byte	0x9
	.byte	0xc6
	.byte	0x6
	.long	0x77
	.byte	0x54
	.uleb128 0x5
	.long	.LASF78
	.byte	0x9
	.byte	0xc7
	.byte	0xe
	.long	0x2d0
	.byte	0x58
	.uleb128 0x5
	.long	.LASF79
	.byte	0x9
	.byte	0xc8
	.byte	0x6
	.long	0x77
	.byte	0x60
	.uleb128 0x5
	.long	.LASF80
	.byte	0x9
	.byte	0xc9
	.byte	0x7
	.long	0x77
	.byte	0x64
	.uleb128 0x5
	.long	.LASF81
	.byte	0x9
	.byte	0xca
	.byte	0x6
	.long	0x77
	.byte	0x68
	.uleb128 0x5
	.long	.LASF82
	.byte	0x9
	.byte	0xcb
	.byte	0x6
	.long	0x77
	.byte	0x6c
	.uleb128 0x5
	.long	.LASF83
	.byte	0x9
	.byte	0xcc
	.byte	0x9
	.long	0x2dc
	.byte	0x70
	.uleb128 0x5
	.long	.LASF84
	.byte	0x9
	.byte	0xcd
	.byte	0x6
	.long	0x77
	.byte	0x78
	.uleb128 0x5
	.long	.LASF85
	.byte	0x9
	.byte	0xce
	.byte	0x7
	.long	0x4a
	.byte	0x7c
	.byte	0
	.uleb128 0x9
	.long	.LASF86
	.byte	0x9
	.byte	0xcf
	.byte	0x3
	.long	0x392
	.uleb128 0x23
	.string	"GC"
	.byte	0x9
	.byte	0xde
	.byte	0x2
	.long	0x4dd
	.uleb128 0x6
	.long	0x4e2
	.uleb128 0x18
	.long	.LASF119
	.uleb128 0x1d
	.byte	0x38
	.byte	0x9
	.byte	0xe3
	.long	0x558
	.uleb128 0x5
	.long	.LASF87
	.byte	0x9
	.byte	0xe4
	.byte	0xc
	.long	0x558
	.byte	0
	.uleb128 0x5
	.long	.LASF88
	.byte	0x9
	.byte	0xe5
	.byte	0xb
	.long	0x2a0
	.byte	0x8
	.uleb128 0x5
	.long	.LASF89
	.byte	0x9
	.byte	0xe9
	.byte	0x6
	.long	0x77
	.byte	0x10
	.uleb128 0x5
	.long	.LASF90
	.byte	0x9
	.byte	0xeb
	.byte	0x10
	.long	0x43
	.byte	0x18
	.uleb128 0x5
	.long	.LASF91
	.byte	0x9
	.byte	0xeb
	.byte	0x1a
	.long	0x43
	.byte	0x20
	.uleb128 0x5
	.long	.LASF92
	.byte	0x9
	.byte	0xeb
	.byte	0x26
	.long	0x43
	.byte	0x28
	.uleb128 0x5
	.long	.LASF93
	.byte	0x9
	.byte	0xec
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0x5
	.long	.LASF94
	.byte	0x9
	.byte	0xed
	.byte	0x6
	.long	0x77
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.long	0x386
	.uleb128 0x9
	.long	.LASF95
	.byte	0x9
	.byte	0xee
	.byte	0x3
	.long	0x4e7
	.uleb128 0x1d
	.byte	0x10
	.byte	0x9
	.byte	0xf3
	.long	0x599
	.uleb128 0x5
	.long	.LASF96
	.byte	0x9
	.byte	0xf4
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x5
	.long	.LASF97
	.byte	0x9
	.byte	0xf5
	.byte	0x6
	.long	0x77
	.byte	0x4
	.uleb128 0x5
	.long	.LASF98
	.byte	0x9
	.byte	0xf6
	.byte	0xa
	.long	0x599
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x55d
	.uleb128 0x9
	.long	.LASF99
	.byte	0x9
	.byte	0xf7
	.byte	0x3
	.long	0x569
	.uleb128 0x8
	.byte	0x80
	.byte	0x9
	.value	0x101
	.long	0x6cc
	.uleb128 0x3
	.long	.LASF87
	.byte	0x9
	.value	0x102
	.byte	0xc
	.long	0x558
	.byte	0
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x103
	.byte	0x14
	.long	0x6d1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF101
	.byte	0x9
	.value	0x104
	.byte	0x9
	.long	0x2b8
	.byte	0x10
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x105
	.byte	0x6
	.long	0x77
	.byte	0x18
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x105
	.byte	0xd
	.long	0x77
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF104
	.byte	0x9
	.value	0x106
	.byte	0x6
	.long	0x77
	.byte	0x20
	.uleb128 0x3
	.long	.LASF105
	.byte	0x9
	.value	0x106
	.byte	0xe
	.long	0x77
	.byte	0x24
	.uleb128 0x3
	.long	.LASF106
	.byte	0x9
	.value	0x107
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF107
	.byte	0x9
	.value	0x108
	.byte	0x9
	.long	0x6d6
	.byte	0x30
	.uleb128 0x3
	.long	.LASF108
	.byte	0x9
	.value	0x109
	.byte	0x6
	.long	0x77
	.byte	0x38
	.uleb128 0x3
	.long	.LASF109
	.byte	0x9
	.value	0x10a
	.byte	0xa
	.long	0x599
	.byte	0x40
	.uleb128 0x3
	.long	.LASF110
	.byte	0x9
	.value	0x10b
	.byte	0x5
	.long	0x4d2
	.byte	0x48
	.uleb128 0x3
	.long	.LASF111
	.byte	0x9
	.value	0x10c
	.byte	0xb
	.long	0x2f4
	.byte	0x50
	.uleb128 0x3
	.long	.LASF112
	.byte	0x9
	.value	0x10d
	.byte	0x10
	.long	0x43
	.byte	0x58
	.uleb128 0x3
	.long	.LASF113
	.byte	0x9
	.value	0x10e
	.byte	0x10
	.long	0x43
	.byte	0x60
	.uleb128 0x3
	.long	.LASF114
	.byte	0x9
	.value	0x10f
	.byte	0x6
	.long	0x77
	.byte	0x68
	.uleb128 0x3
	.long	.LASF115
	.byte	0x9
	.value	0x10f
	.byte	0x10
	.long	0x77
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF116
	.byte	0x9
	.value	0x110
	.byte	0x6
	.long	0x77
	.byte	0x70
	.uleb128 0x3
	.long	.LASF117
	.byte	0x9
	.value	0x111
	.byte	0x7
	.long	0x77
	.byte	0x74
	.uleb128 0x3
	.long	.LASF118
	.byte	0x9
	.value	0x112
	.byte	0x7
	.long	0x7e
	.byte	0x78
	.byte	0
	.uleb128 0x18
	.long	.LASF120
	.uleb128 0x6
	.long	0x6cc
	.uleb128 0x6
	.long	0x59e
	.uleb128 0x7
	.long	.LASF121
	.byte	0x9
	.value	0x113
	.byte	0x3
	.long	0x5aa
	.uleb128 0x8
	.byte	0x18
	.byte	0x9
	.value	0x118
	.long	0x72a
	.uleb128 0x3
	.long	.LASF87
	.byte	0x9
	.value	0x119
	.byte	0xc
	.long	0x558
	.byte	0
	.uleb128 0x3
	.long	.LASF96
	.byte	0x9
	.value	0x11a
	.byte	0x6
	.long	0x77
	.byte	0x8
	.uleb128 0x3
	.long	.LASF122
	.byte	0x9
	.value	0x11b
	.byte	0x6
	.long	0x77
	.byte	0xc
	.uleb128 0x3
	.long	.LASF123
	.byte	0x9
	.value	0x11c
	.byte	0x6
	.long	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF124
	.byte	0x9
	.value	0x11d
	.byte	0x3
	.long	0x6e8
	.uleb128 0x8
	.byte	0x70
	.byte	0x9
	.value	0x122
	.long	0x813
	.uleb128 0x3
	.long	.LASF125
	.byte	0x9
	.value	0x123
	.byte	0xc
	.long	0x2dc
	.byte	0
	.uleb128 0x3
	.long	.LASF126
	.byte	0x9
	.value	0x124
	.byte	0x13
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF127
	.byte	0x9
	.value	0x125
	.byte	0xc
	.long	0x2dc
	.byte	0x10
	.uleb128 0x3
	.long	.LASF128
	.byte	0x9
	.value	0x126
	.byte	0x13
	.long	0x43
	.byte	0x18
	.uleb128 0x3
	.long	.LASF129
	.byte	0x9
	.value	0x127
	.byte	0x9
	.long	0x77
	.byte	0x20
	.uleb128 0x3
	.long	.LASF130
	.byte	0x9
	.value	0x128
	.byte	0x9
	.long	0x77
	.byte	0x24
	.uleb128 0x3
	.long	.LASF116
	.byte	0x9
	.value	0x129
	.byte	0x9
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF131
	.byte	0x9
	.value	0x12a
	.byte	0x13
	.long	0x43
	.byte	0x30
	.uleb128 0x3
	.long	.LASF132
	.byte	0x9
	.value	0x12b
	.byte	0x13
	.long	0x43
	.byte	0x38
	.uleb128 0x3
	.long	.LASF133
	.byte	0x9
	.value	0x12c
	.byte	0xa
	.long	0x77
	.byte	0x40
	.uleb128 0x3
	.long	.LASF134
	.byte	0x9
	.value	0x12d
	.byte	0xa
	.long	0x7e
	.byte	0x48
	.uleb128 0x3
	.long	.LASF135
	.byte	0x9
	.value	0x12e
	.byte	0xa
	.long	0x7e
	.byte	0x50
	.uleb128 0x3
	.long	.LASF136
	.byte	0x9
	.value	0x12f
	.byte	0xa
	.long	0x77
	.byte	0x58
	.uleb128 0x3
	.long	.LASF137
	.byte	0x9
	.value	0x130
	.byte	0xe
	.long	0x2f4
	.byte	0x60
	.uleb128 0x3
	.long	.LASF138
	.byte	0x9
	.value	0x131
	.byte	0xc
	.long	0x2e8
	.byte	0x68
	.byte	0
	.uleb128 0x7
	.long	.LASF139
	.byte	0x9
	.value	0x132
	.byte	0x3
	.long	0x737
	.uleb128 0x6
	.long	0x6db
	.uleb128 0x24
	.long	.LASF140
	.byte	0x30
	.value	0x178
	.byte	0xc
	.long	0x887
	.uleb128 0x3
	.long	.LASF141
	.byte	0x9
	.value	0x179
	.byte	0x14
	.long	0x9c1
	.byte	0
	.uleb128 0x3
	.long	.LASF142
	.byte	0x9
	.value	0x184
	.byte	0x8
	.long	0x9d5
	.byte	0x8
	.uleb128 0x3
	.long	.LASF143
	.byte	0x9
	.value	0x185
	.byte	0x12
	.long	0x9f3
	.byte	0x10
	.uleb128 0x3
	.long	.LASF144
	.byte	0x9
	.value	0x186
	.byte	0x8
	.long	0xa16
	.byte	0x18
	.uleb128 0x3
	.long	.LASF145
	.byte	0x9
	.value	0x187
	.byte	0x14
	.long	0xa3e
	.byte	0x20
	.uleb128 0x3
	.long	.LASF146
	.byte	0x9
	.value	0x188
	.byte	0x8
	.long	0xa57
	.byte	0x28
	.byte	0
	.uleb128 0x24
	.long	.LASF147
	.byte	0x88
	.value	0x168
	.byte	0x10
	.long	0x980
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x169
	.byte	0x9
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x169
	.byte	0x10
	.long	0x77
	.byte	0x4
	.uleb128 0x3
	.long	.LASF148
	.byte	0x9
	.value	0x16a
	.byte	0x9
	.long	0x77
	.byte	0x8
	.uleb128 0x3
	.long	.LASF149
	.byte	0x9
	.value	0x16b
	.byte	0x9
	.long	0x77
	.byte	0xc
	.uleb128 0x3
	.long	.LASF150
	.byte	0x9
	.value	0x16c
	.byte	0xb
	.long	0x11d
	.byte	0x10
	.uleb128 0x3
	.long	.LASF151
	.byte	0x9
	.value	0x16d
	.byte	0x9
	.long	0x77
	.byte	0x18
	.uleb128 0x3
	.long	.LASF152
	.byte	0x9
	.value	0x16e
	.byte	0x9
	.long	0x77
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF153
	.byte	0x9
	.value	0x16f
	.byte	0x9
	.long	0x77
	.byte	0x20
	.uleb128 0x3
	.long	.LASF154
	.byte	0x9
	.value	0x170
	.byte	0x9
	.long	0x77
	.byte	0x24
	.uleb128 0x3
	.long	.LASF96
	.byte	0x9
	.value	0x171
	.byte	0x9
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF155
	.byte	0x9
	.value	0x172
	.byte	0x9
	.long	0x77
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF122
	.byte	0x9
	.value	0x173
	.byte	0x9
	.long	0x77
	.byte	0x30
	.uleb128 0x3
	.long	.LASF90
	.byte	0x9
	.value	0x174
	.byte	0x13
	.long	0x43
	.byte	0x38
	.uleb128 0x3
	.long	.LASF91
	.byte	0x9
	.value	0x175
	.byte	0x13
	.long	0x43
	.byte	0x40
	.uleb128 0x3
	.long	.LASF92
	.byte	0x9
	.value	0x176
	.byte	0x13
	.long	0x43
	.byte	0x48
	.uleb128 0x3
	.long	.LASF156
	.byte	0x9
	.value	0x177
	.byte	0xe
	.long	0x31f
	.byte	0x50
	.uleb128 0xc
	.string	"f"
	.value	0x189
	.byte	0x4
	.long	0x825
	.byte	0x58
	.byte	0
	.uleb128 0x14
	.long	0x9bc
	.long	0x9bc
	.uleb128 0x4
	.long	0x6d1
	.uleb128 0x4
	.long	0x599
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x11d
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x6
	.long	0x887
	.uleb128 0x6
	.long	0x980
	.uleb128 0x14
	.long	0x77
	.long	0x9d5
	.uleb128 0x4
	.long	0x9bc
	.byte	0
	.uleb128 0x6
	.long	0x9c6
	.uleb128 0x14
	.long	0x43
	.long	0x9f3
	.uleb128 0x4
	.long	0x9bc
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x6
	.long	0x9da
	.uleb128 0x14
	.long	0x77
	.long	0xa16
	.uleb128 0x4
	.long	0x9bc
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x43
	.byte	0
	.uleb128 0x6
	.long	0x9f8
	.uleb128 0x14
	.long	0x9bc
	.long	0xa3e
	.uleb128 0x4
	.long	0x9bc
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	0xa1b
	.uleb128 0x14
	.long	0x77
	.long	0xa57
	.uleb128 0x4
	.long	0x9bc
	.uleb128 0x4
	.long	0x7e
	.byte	0
	.uleb128 0x6
	.long	0xa43
	.uleb128 0x7
	.long	.LASF157
	.byte	0x9
	.value	0x18a
	.byte	0x3
	.long	0x887
	.uleb128 0x8
	.byte	0x10
	.byte	0x9
	.value	0x19a
	.long	0xac5
	.uleb128 0x3
	.long	.LASF158
	.byte	0x9
	.value	0x19b
	.byte	0x10
	.long	0x43
	.byte	0
	.uleb128 0xc
	.string	"red"
	.value	0x19c
	.byte	0x11
	.long	0x93
	.byte	0x8
	.uleb128 0x3
	.long	.LASF159
	.byte	0x9
	.value	0x19c
	.byte	0x16
	.long	0x93
	.byte	0xa
	.uleb128 0x3
	.long	.LASF160
	.byte	0x9
	.value	0x19c
	.byte	0x1d
	.long	0x93
	.byte	0xc
	.uleb128 0x3
	.long	.LASF161
	.byte	0x9
	.value	0x19d
	.byte	0x7
	.long	0x4a
	.byte	0xe
	.uleb128 0xc
	.string	"pad"
	.value	0x19e
	.byte	0x7
	.long	0x4a
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.long	.LASF162
	.byte	0x9
	.value	0x19f
	.byte	0x3
	.long	0xa69
	.uleb128 0x7
	.long	.LASF163
	.byte	0x9
	.value	0x1e7
	.byte	0x1a
	.long	0x6cc
	.uleb128 0x30
	.value	0x128
	.byte	0x9
	.value	0x1ed
	.byte	0x9
	.long	0xd4f
	.uleb128 0x3
	.long	.LASF87
	.byte	0x9
	.value	0x1f2
	.byte	0xc
	.long	0x558
	.byte	0
	.uleb128 0x3
	.long	.LASF164
	.byte	0x9
	.value	0x1f3
	.byte	0x14
	.long	0xd54
	.byte	0x8
	.uleb128 0xc
	.string	"fd"
	.value	0x1f4
	.byte	0x6
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF165
	.byte	0x9
	.value	0x1f5
	.byte	0x6
	.long	0x77
	.byte	0x14
	.uleb128 0x3
	.long	.LASF166
	.byte	0x9
	.value	0x1f6
	.byte	0x6
	.long	0x77
	.byte	0x18
	.uleb128 0x3
	.long	.LASF167
	.byte	0x9
	.value	0x1f7
	.byte	0x6
	.long	0x77
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF168
	.byte	0x9
	.value	0x1f8
	.byte	0x8
	.long	0x11d
	.byte	0x20
	.uleb128 0x3
	.long	.LASF169
	.byte	0x9
	.value	0x1f9
	.byte	0xd
	.long	0x288
	.byte	0x28
	.uleb128 0x3
	.long	.LASF170
	.byte	0x9
	.value	0x1fa
	.byte	0x6
	.long	0x288
	.byte	0x30
	.uleb128 0x3
	.long	.LASF171
	.byte	0x9
	.value	0x1fb
	.byte	0x6
	.long	0x288
	.byte	0x38
	.uleb128 0x3
	.long	.LASF172
	.byte	0x9
	.value	0x1fc
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0x3
	.long	.LASF173
	.byte	0x9
	.value	0x1fd
	.byte	0x8
	.long	0xd68
	.byte	0x48
	.uleb128 0x3
	.long	.LASF151
	.byte	0x9
	.value	0x200
	.byte	0x6
	.long	0x77
	.byte	0x50
	.uleb128 0x3
	.long	.LASF152
	.byte	0x9
	.value	0x201
	.byte	0x6
	.long	0x77
	.byte	0x54
	.uleb128 0x3
	.long	.LASF154
	.byte	0x9
	.value	0x202
	.byte	0x6
	.long	0x77
	.byte	0x58
	.uleb128 0x3
	.long	.LASF153
	.byte	0x9
	.value	0x203
	.byte	0x6
	.long	0x77
	.byte	0x5c
	.uleb128 0x3
	.long	.LASF174
	.byte	0x9
	.value	0x204
	.byte	0x6
	.long	0x77
	.byte	0x60
	.uleb128 0x3
	.long	.LASF175
	.byte	0x9
	.value	0x205
	.byte	0x10
	.long	0xd6d
	.byte	0x68
	.uleb128 0x3
	.long	.LASF176
	.byte	0x9
	.value	0x206
	.byte	0x6
	.long	0x77
	.byte	0x70
	.uleb128 0x3
	.long	.LASF177
	.byte	0x9
	.value	0x207
	.byte	0x6
	.long	0x77
	.byte	0x74
	.uleb128 0x3
	.long	.LASF178
	.byte	0x9
	.value	0x208
	.byte	0x14
	.long	0xd54
	.byte	0x78
	.uleb128 0x3
	.long	.LASF179
	.byte	0x9
	.value	0x208
	.byte	0x1f
	.long	0xd54
	.byte	0x80
	.uleb128 0x3
	.long	.LASF180
	.byte	0x9
	.value	0x209
	.byte	0x6
	.long	0x77
	.byte	0x88
	.uleb128 0x3
	.long	.LASF181
	.byte	0x9
	.value	0x20a
	.byte	0x10
	.long	0x43
	.byte	0x90
	.uleb128 0x3
	.long	.LASF182
	.byte	0x9
	.value	0x20b
	.byte	0x10
	.long	0x43
	.byte	0x98
	.uleb128 0x3
	.long	.LASF183
	.byte	0x9
	.value	0x20c
	.byte	0xb
	.long	0x31f
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF184
	.byte	0x9
	.value	0x20d
	.byte	0xb
	.long	0x31f
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF185
	.byte	0x9
	.value	0x20e
	.byte	0xb
	.long	0x31f
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF186
	.byte	0x9
	.value	0x20f
	.byte	0xb
	.long	0x31f
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF187
	.byte	0x9
	.value	0x210
	.byte	0xb
	.long	0x9a
	.byte	0xc0
	.uleb128 0xc
	.string	"db"
	.value	0x211
	.byte	0x1c
	.long	0xd77
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF188
	.byte	0x9
	.value	0x212
	.byte	0x8
	.long	0xd8b
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF189
	.byte	0x9
	.value	0x215
	.byte	0x8
	.long	0x11d
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF190
	.byte	0x9
	.value	0x216
	.byte	0x6
	.long	0x77
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF191
	.byte	0x9
	.value	0x217
	.byte	0x6
	.long	0x77
	.byte	0xe4
	.uleb128 0x3
	.long	.LASF192
	.byte	0x9
	.value	0x218
	.byte	0xa
	.long	0x820
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF193
	.byte	0x9
	.value	0x219
	.byte	0x10
	.long	0x43
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF194
	.byte	0x9
	.value	0x21a
	.byte	0x10
	.long	0x43
	.byte	0xf8
	.uleb128 0x19
	.long	.LASF195
	.value	0x21b
	.byte	0x6
	.long	0x77
	.value	0x100
	.uleb128 0x19
	.long	.LASF196
	.value	0x21c
	.byte	0x6
	.long	0x77
	.value	0x104
	.uleb128 0x19
	.long	.LASF197
	.value	0x21d
	.byte	0xb
	.long	0x31f
	.value	0x108
	.uleb128 0x19
	.long	.LASF198
	.value	0x21e
	.byte	0xb
	.long	0x31f
	.value	0x110
	.uleb128 0x19
	.long	.LASF199
	.value	0x21f
	.byte	0x6
	.long	0x77
	.value	0x118
	.uleb128 0x19
	.long	.LASF200
	.value	0x220
	.byte	0x8
	.long	0x11d
	.value	0x120
	.byte	0
	.uleb128 0x18
	.long	.LASF201
	.uleb128 0x6
	.long	0xd4f
	.uleb128 0x14
	.long	0x288
	.long	0xd68
	.uleb128 0x4
	.long	0x6d1
	.byte	0
	.uleb128 0x6
	.long	0xd59
	.uleb128 0x6
	.long	0x72a
	.uleb128 0x18
	.long	.LASF202
	.uleb128 0x6
	.long	0xd72
	.uleb128 0x14
	.long	0x77
	.long	0xd8b
	.uleb128 0x4
	.long	0x6d1
	.byte	0
	.uleb128 0x6
	.long	0xd7c
	.uleb128 0x7
	.long	.LASF203
	.byte	0x9
	.value	0x226
	.byte	0x2
	.long	0xd9d
	.uleb128 0x6
	.long	0xadf
	.uleb128 0x8
	.byte	0x60
	.byte	0x9
	.value	0x22d
	.long	0xe78
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x22e
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x22f
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x230
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x231
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x232
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF101
	.byte	0x9
	.value	0x233
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF208
	.byte	0x9
	.value	0x234
	.byte	0x9
	.long	0x2b8
	.byte	0x30
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x235
	.byte	0x7
	.long	0x2ac
	.byte	0x38
	.uleb128 0xc
	.string	"x"
	.value	0x236
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0xc
	.string	"y"
	.value	0x236
	.byte	0x9
	.long	0x77
	.byte	0x44
	.uleb128 0x3
	.long	.LASF210
	.byte	0x9
	.value	0x237
	.byte	0x6
	.long	0x77
	.byte	0x48
	.uleb128 0x3
	.long	.LASF211
	.byte	0x9
	.value	0x237
	.byte	0xe
	.long	0x77
	.byte	0x4c
	.uleb128 0x3
	.long	.LASF212
	.byte	0x9
	.value	0x238
	.byte	0xf
	.long	0x9a
	.byte	0x50
	.uleb128 0x3
	.long	.LASF213
	.byte	0x9
	.value	0x239
	.byte	0xf
	.long	0x9a
	.byte	0x54
	.uleb128 0x3
	.long	.LASF214
	.byte	0x9
	.value	0x23a
	.byte	0x7
	.long	0x77
	.byte	0x58
	.byte	0
	.uleb128 0x6
	.long	0xad2
	.uleb128 0x7
	.long	.LASF215
	.byte	0x9
	.value	0x23b
	.byte	0x3
	.long	0xda2
	.uleb128 0x8
	.byte	0x60
	.byte	0x9
	.value	0x23f
	.long	0xf60
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x240
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x241
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x242
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x243
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x244
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF101
	.byte	0x9
	.value	0x245
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF208
	.byte	0x9
	.value	0x246
	.byte	0x9
	.long	0x2b8
	.byte	0x30
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x247
	.byte	0x7
	.long	0x2ac
	.byte	0x38
	.uleb128 0xc
	.string	"x"
	.value	0x248
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0xc
	.string	"y"
	.value	0x248
	.byte	0x9
	.long	0x77
	.byte	0x44
	.uleb128 0x3
	.long	.LASF210
	.byte	0x9
	.value	0x249
	.byte	0x6
	.long	0x77
	.byte	0x48
	.uleb128 0x3
	.long	.LASF211
	.byte	0x9
	.value	0x249
	.byte	0xe
	.long	0x77
	.byte	0x4c
	.uleb128 0x3
	.long	.LASF212
	.byte	0x9
	.value	0x24a
	.byte	0xf
	.long	0x9a
	.byte	0x50
	.uleb128 0x3
	.long	.LASF216
	.byte	0x9
	.value	0x24b
	.byte	0xf
	.long	0x9a
	.byte	0x54
	.uleb128 0x3
	.long	.LASF214
	.byte	0x9
	.value	0x24c
	.byte	0x7
	.long	0x77
	.byte	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF217
	.byte	0x9
	.value	0x24d
	.byte	0x3
	.long	0xe8a
	.uleb128 0x8
	.byte	0x60
	.byte	0x9
	.value	0x251
	.long	0x1043
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x252
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x253
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x254
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x255
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x256
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF101
	.byte	0x9
	.value	0x257
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF208
	.byte	0x9
	.value	0x258
	.byte	0x9
	.long	0x2b8
	.byte	0x30
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x259
	.byte	0x7
	.long	0x2ac
	.byte	0x38
	.uleb128 0xc
	.string	"x"
	.value	0x25a
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0xc
	.string	"y"
	.value	0x25a
	.byte	0x9
	.long	0x77
	.byte	0x44
	.uleb128 0x3
	.long	.LASF210
	.byte	0x9
	.value	0x25b
	.byte	0x6
	.long	0x77
	.byte	0x48
	.uleb128 0x3
	.long	.LASF211
	.byte	0x9
	.value	0x25b
	.byte	0xe
	.long	0x77
	.byte	0x4c
	.uleb128 0x3
	.long	.LASF212
	.byte	0x9
	.value	0x25c
	.byte	0xf
	.long	0x9a
	.byte	0x50
	.uleb128 0x3
	.long	.LASF218
	.byte	0x9
	.value	0x25d
	.byte	0x7
	.long	0x4a
	.byte	0x54
	.uleb128 0x3
	.long	.LASF214
	.byte	0x9
	.value	0x25e
	.byte	0x7
	.long	0x77
	.byte	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF219
	.byte	0x9
	.value	0x25f
	.byte	0x3
	.long	0xf6d
	.uleb128 0x8
	.byte	0x68
	.byte	0x9
	.value	0x262
	.long	0x1142
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x263
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x264
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x265
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x266
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x267
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF101
	.byte	0x9
	.value	0x268
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF208
	.byte	0x9
	.value	0x269
	.byte	0x9
	.long	0x2b8
	.byte	0x30
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x26a
	.byte	0x7
	.long	0x2ac
	.byte	0x38
	.uleb128 0xc
	.string	"x"
	.value	0x26b
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0xc
	.string	"y"
	.value	0x26b
	.byte	0x9
	.long	0x77
	.byte	0x44
	.uleb128 0x3
	.long	.LASF210
	.byte	0x9
	.value	0x26c
	.byte	0x6
	.long	0x77
	.byte	0x48
	.uleb128 0x3
	.long	.LASF211
	.byte	0x9
	.value	0x26c
	.byte	0xe
	.long	0x77
	.byte	0x4c
	.uleb128 0x3
	.long	.LASF26
	.byte	0x9
	.value	0x26d
	.byte	0x6
	.long	0x77
	.byte	0x50
	.uleb128 0x3
	.long	.LASF220
	.byte	0x9
	.value	0x26e
	.byte	0x6
	.long	0x77
	.byte	0x54
	.uleb128 0x3
	.long	.LASF214
	.byte	0x9
	.value	0x273
	.byte	0x7
	.long	0x77
	.byte	0x58
	.uleb128 0x3
	.long	.LASF221
	.byte	0x9
	.value	0x274
	.byte	0x7
	.long	0x77
	.byte	0x5c
	.uleb128 0x3
	.long	.LASF212
	.byte	0x9
	.value	0x275
	.byte	0xf
	.long	0x9a
	.byte	0x60
	.byte	0
	.uleb128 0x7
	.long	.LASF222
	.byte	0x9
	.value	0x276
	.byte	0x3
	.long	0x1050
	.uleb128 0x8
	.byte	0x30
	.byte	0x9
	.value	0x27a
	.long	0x11bb
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x27b
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x27c
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x27d
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x27e
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x27f
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF26
	.byte	0x9
	.value	0x280
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF220
	.byte	0x9
	.value	0x282
	.byte	0x6
	.long	0x77
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.long	.LASF223
	.byte	0x9
	.value	0x288
	.byte	0x3
	.long	0x114f
	.uleb128 0x8
	.byte	0x48
	.byte	0x9
	.value	0x28d
	.long	0x1226
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x28e
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x28f
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x290
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x291
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x292
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF224
	.byte	0x9
	.value	0x293
	.byte	0x7
	.long	0x145
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.long	.LASF225
	.byte	0x9
	.value	0x294
	.byte	0x3
	.long	0x11c8
	.uleb128 0x8
	.byte	0x40
	.byte	0x9
	.value	0x296
	.long	0x12c3
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x297
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x298
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x299
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x29a
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x29b
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0xc
	.string	"x"
	.value	0x29c
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0xc
	.string	"y"
	.value	0x29c
	.byte	0x9
	.long	0x77
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x29d
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x29d
	.byte	0xd
	.long	0x77
	.byte	0x34
	.uleb128 0x3
	.long	.LASF226
	.byte	0x9
	.value	0x29e
	.byte	0x6
	.long	0x77
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF227
	.byte	0x9
	.value	0x29f
	.byte	0x3
	.long	0x1233
	.uleb128 0x8
	.byte	0x48
	.byte	0x9
	.value	0x2a1
	.long	0x137c
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2a2
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2a3
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2a4
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2a5
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF228
	.byte	0x9
	.value	0x2a6
	.byte	0xb
	.long	0x2c4
	.byte	0x20
	.uleb128 0xc
	.string	"x"
	.value	0x2a7
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0xc
	.string	"y"
	.value	0x2a7
	.byte	0x9
	.long	0x77
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x2a8
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x2a8
	.byte	0xd
	.long	0x77
	.byte	0x34
	.uleb128 0x3
	.long	.LASF226
	.byte	0x9
	.value	0x2a9
	.byte	0x6
	.long	0x77
	.byte	0x38
	.uleb128 0x3
	.long	.LASF229
	.byte	0x9
	.value	0x2aa
	.byte	0x6
	.long	0x77
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF230
	.byte	0x9
	.value	0x2ab
	.byte	0x6
	.long	0x77
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF231
	.byte	0x9
	.value	0x2ac
	.byte	0x3
	.long	0x12d0
	.uleb128 0x8
	.byte	0x30
	.byte	0x9
	.value	0x2ae
	.long	0x13f5
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2af
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2b0
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2b1
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2b2
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF228
	.byte	0x9
	.value	0x2b3
	.byte	0xb
	.long	0x2c4
	.byte	0x20
	.uleb128 0x3
	.long	.LASF229
	.byte	0x9
	.value	0x2b4
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF230
	.byte	0x9
	.value	0x2b5
	.byte	0x6
	.long	0x77
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.long	.LASF232
	.byte	0x9
	.value	0x2b6
	.byte	0x3
	.long	0x1389
	.uleb128 0x8
	.byte	0x30
	.byte	0x9
	.value	0x2b8
	.long	0x1460
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2b9
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2ba
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2bb
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2bc
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x2bd
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF212
	.byte	0x9
	.value	0x2be
	.byte	0x6
	.long	0x77
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.long	.LASF233
	.byte	0x9
	.value	0x2bf
	.byte	0x3
	.long	0x1402
	.uleb128 0x8
	.byte	0x48
	.byte	0x9
	.value	0x2c1
	.long	0x1519
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2c2
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2c3
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2c4
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2c5
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF234
	.byte	0x9
	.value	0x2c6
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x2c7
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0xc
	.string	"x"
	.value	0x2c8
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0xc
	.string	"y"
	.value	0x2c8
	.byte	0x9
	.long	0x77
	.byte	0x34
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x2c9
	.byte	0x6
	.long	0x77
	.byte	0x38
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x2c9
	.byte	0xd
	.long	0x77
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF235
	.byte	0x9
	.value	0x2ca
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0x3
	.long	.LASF136
	.byte	0x9
	.value	0x2cb
	.byte	0x7
	.long	0x77
	.byte	0x44
	.byte	0
	.uleb128 0x7
	.long	.LASF236
	.byte	0x9
	.value	0x2cc
	.byte	0x3
	.long	0x146d
	.uleb128 0x8
	.byte	0x30
	.byte	0x9
	.value	0x2ce
	.long	0x1584
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2cf
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2d0
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2d1
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2d2
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x9
	.value	0x2d3
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x2d4
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.long	.LASF238
	.byte	0x9
	.value	0x2d5
	.byte	0x3
	.long	0x1526
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x2d7
	.long	0x15fd
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2d8
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2d9
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2da
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2db
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x9
	.value	0x2dc
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x2dd
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF239
	.byte	0x9
	.value	0x2de
	.byte	0x7
	.long	0x77
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF240
	.byte	0x9
	.value	0x2df
	.byte	0x3
	.long	0x1591
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x2e1
	.long	0x1676
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2e2
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2e3
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2e4
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2e5
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x9
	.value	0x2e6
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x2e7
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF136
	.byte	0x9
	.value	0x2e8
	.byte	0x7
	.long	0x77
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF241
	.byte	0x9
	.value	0x2e9
	.byte	0x3
	.long	0x160a
	.uleb128 0x8
	.byte	0x30
	.byte	0x9
	.value	0x2eb
	.long	0x16e1
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2ec
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2ed
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2ee
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2ef
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF234
	.byte	0x9
	.value	0x2f0
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x2f1
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.byte	0
	.uleb128 0x7
	.long	.LASF242
	.byte	0x9
	.value	0x2f2
	.byte	0x3
	.long	0x1683
	.uleb128 0x8
	.byte	0x48
	.byte	0x9
	.value	0x2f4
	.long	0x177e
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x2f5
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x2f6
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x2f7
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x2f8
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x9
	.value	0x2f9
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x2fa
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF234
	.byte	0x9
	.value	0x2fb
	.byte	0x9
	.long	0x2b8
	.byte	0x30
	.uleb128 0xc
	.string	"x"
	.value	0x2fc
	.byte	0x6
	.long	0x77
	.byte	0x38
	.uleb128 0xc
	.string	"y"
	.value	0x2fc
	.byte	0x9
	.long	0x77
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF136
	.byte	0x9
	.value	0x2fd
	.byte	0x7
	.long	0x77
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF243
	.byte	0x9
	.value	0x2fe
	.byte	0x3
	.long	0x16ee
	.uleb128 0x8
	.byte	0x58
	.byte	0x9
	.value	0x300
	.long	0x1845
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x301
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x302
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x303
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x304
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x9
	.value	0x305
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x306
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0xc
	.string	"x"
	.value	0x307
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0xc
	.string	"y"
	.value	0x307
	.byte	0x9
	.long	0x77
	.byte	0x34
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x308
	.byte	0x6
	.long	0x77
	.byte	0x38
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x308
	.byte	0xd
	.long	0x77
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF235
	.byte	0x9
	.value	0x309
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0x3
	.long	.LASF244
	.byte	0x9
	.value	0x30a
	.byte	0x9
	.long	0x2b8
	.byte	0x48
	.uleb128 0x3
	.long	.LASF136
	.byte	0x9
	.value	0x30b
	.byte	0x7
	.long	0x77
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF245
	.byte	0x9
	.value	0x30c
	.byte	0x3
	.long	0x178b
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x30e
	.long	0x18c6
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x30f
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x310
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x311
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x312
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x9
	.value	0x313
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x314
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0xc
	.string	"x"
	.value	0x315
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0xc
	.string	"y"
	.value	0x315
	.byte	0x9
	.long	0x77
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	.LASF246
	.byte	0x9
	.value	0x316
	.byte	0x3
	.long	0x1852
	.uleb128 0x8
	.byte	0x30
	.byte	0x9
	.value	0x318
	.long	0x193f
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x319
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x31a
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x31b
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x31c
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x31d
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x31e
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x31e
	.byte	0xd
	.long	0x77
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.long	.LASF247
	.byte	0x9
	.value	0x31f
	.byte	0x3
	.long	0x18d3
	.uleb128 0x8
	.byte	0x60
	.byte	0x9
	.value	0x321
	.long	0x1a14
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x322
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x323
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x324
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x325
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF234
	.byte	0x9
	.value	0x326
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x327
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0xc
	.string	"x"
	.value	0x328
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0xc
	.string	"y"
	.value	0x328
	.byte	0x9
	.long	0x77
	.byte	0x34
	.uleb128 0x3
	.long	.LASF102
	.byte	0x9
	.value	0x329
	.byte	0x6
	.long	0x77
	.byte	0x38
	.uleb128 0x3
	.long	.LASF103
	.byte	0x9
	.value	0x329
	.byte	0xd
	.long	0x77
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF235
	.byte	0x9
	.value	0x32a
	.byte	0x6
	.long	0x77
	.byte	0x40
	.uleb128 0x3
	.long	.LASF244
	.byte	0x9
	.value	0x32b
	.byte	0x9
	.long	0x2b8
	.byte	0x48
	.uleb128 0x3
	.long	.LASF220
	.byte	0x9
	.value	0x32c
	.byte	0x6
	.long	0x77
	.byte	0x50
	.uleb128 0x3
	.long	.LASF248
	.byte	0x9
	.value	0x32d
	.byte	0x10
	.long	0x43
	.byte	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF249
	.byte	0x9
	.value	0x32e
	.byte	0x3
	.long	0x194c
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x330
	.long	0x1a8d
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x331
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x332
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x333
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x334
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF237
	.byte	0x9
	.value	0x335
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x336
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF250
	.byte	0x9
	.value	0x337
	.byte	0x6
	.long	0x77
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF251
	.byte	0x9
	.value	0x338
	.byte	0x3
	.long	0x1a21
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x33a
	.long	0x1b06
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x33b
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x33c
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x33d
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x33e
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF234
	.byte	0x9
	.value	0x33f
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x340
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF250
	.byte	0x9
	.value	0x341
	.byte	0x6
	.long	0x77
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF252
	.byte	0x9
	.value	0x342
	.byte	0x3
	.long	0x1a9a
	.uleb128 0x8
	.byte	0x40
	.byte	0x9
	.value	0x344
	.long	0x1b8d
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x345
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x346
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x347
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x348
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x349
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF253
	.byte	0x9
	.value	0x34a
	.byte	0x7
	.long	0x294
	.byte	0x28
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x34b
	.byte	0x7
	.long	0x2ac
	.byte	0x30
	.uleb128 0x3
	.long	.LASF212
	.byte	0x9
	.value	0x34c
	.byte	0x6
	.long	0x77
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF254
	.byte	0x9
	.value	0x34d
	.byte	0x3
	.long	0x1b13
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x34f
	.long	0x1c06
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x350
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x351
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x352
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x353
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x354
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF255
	.byte	0x9
	.value	0x355
	.byte	0x7
	.long	0x294
	.byte	0x28
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x356
	.byte	0x7
	.long	0x2ac
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF256
	.byte	0x9
	.value	0x357
	.byte	0x3
	.long	0x1b9a
	.uleb128 0x8
	.byte	0x50
	.byte	0x9
	.value	0x359
	.long	0x1ca9
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x35a
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x35b
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x35c
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x35d
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF257
	.byte	0x9
	.value	0x35e
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF258
	.byte	0x9
	.value	0x35f
	.byte	0x9
	.long	0x2b8
	.byte	0x28
	.uleb128 0x3
	.long	.LASF255
	.byte	0x9
	.value	0x360
	.byte	0x7
	.long	0x294
	.byte	0x30
	.uleb128 0x3
	.long	.LASF259
	.byte	0x9
	.value	0x361
	.byte	0x7
	.long	0x294
	.byte	0x38
	.uleb128 0x3
	.long	.LASF260
	.byte	0x9
	.value	0x362
	.byte	0x7
	.long	0x294
	.byte	0x40
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x363
	.byte	0x7
	.long	0x2ac
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF261
	.byte	0x9
	.value	0x364
	.byte	0x3
	.long	0x1c13
	.uleb128 0x8
	.byte	0x48
	.byte	0x9
	.value	0x366
	.long	0x1d3e
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x367
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x368
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x369
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x36a
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF258
	.byte	0x9
	.value	0x36b
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF255
	.byte	0x9
	.value	0x36c
	.byte	0x7
	.long	0x294
	.byte	0x28
	.uleb128 0x3
	.long	.LASF259
	.byte	0x9
	.value	0x36d
	.byte	0x7
	.long	0x294
	.byte	0x30
	.uleb128 0x3
	.long	.LASF260
	.byte	0x9
	.value	0x36e
	.byte	0x7
	.long	0x294
	.byte	0x38
	.uleb128 0x3
	.long	.LASF209
	.byte	0x9
	.value	0x36f
	.byte	0x7
	.long	0x2ac
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF262
	.byte	0x9
	.value	0x370
	.byte	0x3
	.long	0x1cb6
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x372
	.long	0x1dc4
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x373
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x374
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x375
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x376
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x377
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF137
	.byte	0x9
	.value	0x378
	.byte	0xb
	.long	0x2f4
	.byte	0x28
	.uleb128 0xc
	.string	"new"
	.value	0x37c
	.byte	0x7
	.long	0x77
	.byte	0x30
	.uleb128 0x3
	.long	.LASF212
	.byte	0x9
	.value	0x37e
	.byte	0x6
	.long	0x77
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	.LASF263
	.byte	0x9
	.value	0x37f
	.byte	0x3
	.long	0x1d4b
	.uleb128 0x25
	.byte	0x28
	.byte	0x9
	.value	0x389
	.byte	0x2
	.long	0x1dfd
	.uleb128 0x1a
	.string	"b"
	.byte	0x9
	.value	0x38a
	.byte	0x8
	.long	0x1dfd
	.uleb128 0x1a
	.string	"s"
	.byte	0x9
	.value	0x38b
	.byte	0x9
	.long	0x1e0d
	.uleb128 0x1a
	.string	"l"
	.byte	0x9
	.value	0x38c
	.byte	0x8
	.long	0x1e1d
	.byte	0
	.uleb128 0x10
	.long	0x4a
	.long	0x1e0d
	.uleb128 0x11
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	0xa8
	.long	0x1e1d
	.uleb128 0x11
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.long	0x7e
	.long	0x1e2d
	.uleb128 0x11
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x60
	.byte	0x9
	.value	0x381
	.long	0x1ea7
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x382
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x383
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x384
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x385
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x386
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF264
	.byte	0x9
	.value	0x387
	.byte	0x7
	.long	0x294
	.byte	0x28
	.uleb128 0x3
	.long	.LASF149
	.byte	0x9
	.value	0x388
	.byte	0x6
	.long	0x77
	.byte	0x30
	.uleb128 0x3
	.long	.LASF150
	.byte	0x9
	.value	0x38d
	.byte	0x5
	.long	0x1dd1
	.byte	0x38
	.byte	0
	.uleb128 0x7
	.long	.LASF265
	.byte	0x9
	.value	0x38e
	.byte	0x3
	.long	0x1e2d
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x390
	.long	0x1f2e
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x391
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x392
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x393
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x394
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x395
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.uleb128 0x3
	.long	.LASF182
	.byte	0x9
	.value	0x396
	.byte	0x6
	.long	0x77
	.byte	0x28
	.uleb128 0x3
	.long	.LASF266
	.byte	0x9
	.value	0x398
	.byte	0x6
	.long	0x77
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF226
	.byte	0x9
	.value	0x399
	.byte	0x6
	.long	0x77
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF267
	.byte	0x9
	.value	0x39a
	.byte	0x3
	.long	0x1eb4
	.uleb128 0x8
	.byte	0x28
	.byte	0x9
	.value	0x39c
	.long	0x1fa7
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x39d
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x39e
	.byte	0xb
	.long	0xe78
	.byte	0x8
	.uleb128 0x3
	.long	.LASF268
	.byte	0x9
	.value	0x39f
	.byte	0x6
	.long	0x288
	.byte	0x10
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x3a0
	.byte	0x10
	.long	0x43
	.byte	0x18
	.uleb128 0x3
	.long	.LASF269
	.byte	0x9
	.value	0x3a1
	.byte	0x10
	.long	0x8c
	.byte	0x20
	.uleb128 0x3
	.long	.LASF270
	.byte	0x9
	.value	0x3a2
	.byte	0x10
	.long	0x8c
	.byte	0x21
	.uleb128 0x3
	.long	.LASF230
	.byte	0x9
	.value	0x3a3
	.byte	0x10
	.long	0x8c
	.byte	0x22
	.byte	0
	.uleb128 0x7
	.long	.LASF271
	.byte	0x9
	.value	0x3a4
	.byte	0x3
	.long	0x1f3b
	.uleb128 0x8
	.byte	0x28
	.byte	0x9
	.value	0x3a6
	.long	0x2004
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x3a7
	.byte	0x6
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x3a8
	.byte	0x10
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x3a9
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x3aa
	.byte	0xb
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF207
	.byte	0x9
	.value	0x3ab
	.byte	0x9
	.long	0x2b8
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF272
	.byte	0x9
	.value	0x3ac
	.byte	0x3
	.long	0x1fb4
	.uleb128 0x8
	.byte	0x28
	.byte	0x9
	.value	0x3b4
	.long	0x206f
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x3b6
	.byte	0x14
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x3b7
	.byte	0x14
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x3b8
	.byte	0x14
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x3b9
	.byte	0x15
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF273
	.byte	0x9
	.value	0x3ba
	.byte	0x14
	.long	0x77
	.byte	0x20
	.uleb128 0x3
	.long	.LASF274
	.byte	0x9
	.value	0x3bb
	.byte	0x14
	.long	0x77
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.long	.LASF275
	.byte	0x9
	.value	0x3bc
	.byte	0x7
	.long	0x2011
	.uleb128 0x8
	.byte	0x38
	.byte	0x9
	.value	0x3be
	.long	0x20f6
	.uleb128 0x3
	.long	.LASF204
	.byte	0x9
	.value	0x3bf
	.byte	0x14
	.long	0x77
	.byte	0
	.uleb128 0x3
	.long	.LASF205
	.byte	0x9
	.value	0x3c0
	.byte	0x14
	.long	0x43
	.byte	0x8
	.uleb128 0x3
	.long	.LASF206
	.byte	0x9
	.value	0x3c1
	.byte	0x14
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.value	0x3c2
	.byte	0x15
	.long	0xe78
	.byte	0x18
	.uleb128 0x3
	.long	.LASF273
	.byte	0x9
	.value	0x3c3
	.byte	0x14
	.long	0x77
	.byte	0x20
	.uleb128 0x3
	.long	.LASF274
	.byte	0x9
	.value	0x3c4
	.byte	0x14
	.long	0x77
	.byte	0x24
	.uleb128 0x3
	.long	.LASF276
	.byte	0x9
	.value	0x3c5
	.byte	0x14
	.long	0x9a
	.byte	0x28
	.uleb128 0x3
	.long	.LASF150
	.byte	0x9
	.value	0x3c6
	.byte	0x15
	.long	0x10f
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF277
	.byte	0x9
	.value	0x3c7
	.byte	0x3
	.long	0x207c
	.uleb128 0x31
	.long	.LASF1774
	.byte	0xc0
	.byte	0x9
	.value	0x3cd
	.byte	0xf
	.long	0x22b7
	.uleb128 0xa
	.long	.LASF204
	.value	0x3ce
	.byte	0xd
	.long	0x77
	.uleb128 0xa
	.long	.LASF278
	.value	0x3cf
	.byte	0xc
	.long	0x2004
	.uleb128 0xa
	.long	.LASF279
	.value	0x3d0
	.byte	0xc
	.long	0xe7d
	.uleb128 0xa
	.long	.LASF280
	.value	0x3d1
	.byte	0xf
	.long	0xf60
	.uleb128 0xa
	.long	.LASF281
	.value	0x3d2
	.byte	0xf
	.long	0x1043
	.uleb128 0xa
	.long	.LASF282
	.value	0x3d3
	.byte	0x11
	.long	0x1142
	.uleb128 0xa
	.long	.LASF283
	.value	0x3d4
	.byte	0x14
	.long	0x11bb
	.uleb128 0xa
	.long	.LASF284
	.value	0x3d5
	.byte	0xf
	.long	0x12c3
	.uleb128 0xa
	.long	.LASF285
	.value	0x3d6
	.byte	0x17
	.long	0x137c
	.uleb128 0xa
	.long	.LASF286
	.value	0x3d7
	.byte	0x11
	.long	0x13f5
	.uleb128 0xa
	.long	.LASF287
	.value	0x3d8
	.byte	0x13
	.long	0x1460
	.uleb128 0xa
	.long	.LASF288
	.value	0x3d9
	.byte	0x15
	.long	0x1519
	.uleb128 0xa
	.long	.LASF289
	.value	0x3da
	.byte	0x16
	.long	0x1584
	.uleb128 0xa
	.long	.LASF290
	.value	0x3db
	.byte	0xe
	.long	0x15fd
	.uleb128 0xa
	.long	.LASF291
	.value	0x3dc
	.byte	0xc
	.long	0x1676
	.uleb128 0xa
	.long	.LASF292
	.value	0x3dd
	.byte	0x13
	.long	0x16e1
	.uleb128 0xa
	.long	.LASF293
	.value	0x3de
	.byte	0x11
	.long	0x177e
	.uleb128 0xa
	.long	.LASF294
	.value	0x3df
	.byte	0x12
	.long	0x1845
	.uleb128 0xa
	.long	.LASF295
	.value	0x3e0
	.byte	0x10
	.long	0x18c6
	.uleb128 0xa
	.long	.LASF296
	.value	0x3e1
	.byte	0x16
	.long	0x193f
	.uleb128 0xa
	.long	.LASF297
	.value	0x3e2
	.byte	0x19
	.long	0x1a14
	.uleb128 0xa
	.long	.LASF298
	.value	0x3e3
	.byte	0x12
	.long	0x1a8d
	.uleb128 0xa
	.long	.LASF299
	.value	0x3e4
	.byte	0x19
	.long	0x1b06
	.uleb128 0xa
	.long	.LASF300
	.value	0x3e5
	.byte	0x11
	.long	0x1b8d
	.uleb128 0xa
	.long	.LASF301
	.value	0x3e6
	.byte	0x17
	.long	0x1c06
	.uleb128 0xa
	.long	.LASF302
	.value	0x3e7
	.byte	0x19
	.long	0x1ca9
	.uleb128 0xa
	.long	.LASF303
	.value	0x3e8
	.byte	0x12
	.long	0x1d3e
	.uleb128 0xa
	.long	.LASF304
	.value	0x3e9
	.byte	0x11
	.long	0x1dc4
	.uleb128 0xa
	.long	.LASF305
	.value	0x3ea
	.byte	0x16
	.long	0x1ea7
	.uleb128 0xa
	.long	.LASF306
	.value	0x3eb
	.byte	0x10
	.long	0x1f2e
	.uleb128 0xa
	.long	.LASF307
	.value	0x3ec
	.byte	0xe
	.long	0x1fa7
	.uleb128 0xa
	.long	.LASF308
	.value	0x3ed
	.byte	0xf
	.long	0x1226
	.uleb128 0xa
	.long	.LASF309
	.value	0x3ee
	.byte	0x10
	.long	0x206f
	.uleb128 0xa
	.long	.LASF310
	.value	0x3ef
	.byte	0x16
	.long	0x20f6
	.uleb128 0x1a
	.string	"pad"
	.byte	0x9
	.value	0x3f0
	.byte	0x7
	.long	0x22b7
	.byte	0
	.uleb128 0x10
	.long	0x7e
	.long	0x22c7
	.uleb128 0x11
	.long	0x43
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.long	.LASF311
	.byte	0x9
	.value	0x3f1
	.byte	0x3
	.long	0x2103
	.uleb128 0x8
	.byte	0x40
	.byte	0xa
	.value	0x11f
	.long	0x236a
	.uleb128 0x3
	.long	.LASF312
	.byte	0xa
	.value	0x120
	.byte	0xb
	.long	0x599
	.byte	0
	.uleb128 0x3
	.long	.LASF88
	.byte	0xa
	.value	0x121
	.byte	0xc
	.long	0x2a0
	.byte	0x8
	.uleb128 0x3
	.long	.LASF313
	.byte	0xa
	.value	0x122
	.byte	0x7
	.long	0x77
	.byte	0x10
	.uleb128 0x3
	.long	.LASF96
	.byte	0xa
	.value	0x123
	.byte	0x7
	.long	0x77
	.byte	0x14
	.uleb128 0x3
	.long	.LASF89
	.byte	0xa
	.value	0x127
	.byte	0x7
	.long	0x77
	.byte	0x18
	.uleb128 0x3
	.long	.LASF90
	.byte	0xa
	.value	0x129
	.byte	0x11
	.long	0x43
	.byte	0x20
	.uleb128 0x3
	.long	.LASF91
	.byte	0xa
	.value	0x12a
	.byte	0x11
	.long	0x43
	.byte	0x28
	.uleb128 0x3
	.long	.LASF92
	.byte	0xa
	.value	0x12b
	.byte	0x11
	.long	0x43
	.byte	0x30
	.uleb128 0x3
	.long	.LASF314
	.byte	0xa
	.value	0x12c
	.byte	0x7
	.long	0x77
	.byte	0x38
	.uleb128 0x3
	.long	.LASF93
	.byte	0xa
	.value	0x12d
	.byte	0x7
	.long	0x77
	.byte	0x3c
	.byte	0
	.uleb128 0x7
	.long	.LASF315
	.byte	0xa
	.value	0x12e
	.byte	0x3
	.long	0x22d4
	.uleb128 0x9
	.long	.LASF316
	.byte	0xb
	.byte	0x24
	.byte	0x17
	.long	0x43
	.uleb128 0x1d
	.byte	0x20
	.byte	0xb
	.byte	0x32
	.long	0x23c0
	.uleb128 0x5
	.long	.LASF317
	.byte	0xb
	.byte	0x33
	.byte	0xc
	.long	0x2377
	.byte	0
	.uleb128 0x5
	.long	.LASF318
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.long	0x77
	.byte	0x8
	.uleb128 0x5
	.long	.LASF319
	.byte	0xb
	.byte	0x35
	.byte	0xb
	.long	0x11d
	.byte	0x10
	.uleb128 0x5
	.long	.LASF320
	.byte	0xb
	.byte	0x36
	.byte	0xa
	.long	0x77
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	.LASF321
	.byte	0xb
	.byte	0x37
	.byte	0x3
	.long	0x2383
	.uleb128 0x6
	.long	0x23d1
	.uleb128 0x32
	.long	0x23dc
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x9
	.long	.LASF322
	.byte	0xc
	.byte	0x48
	.byte	0x10
	.long	0x23cc
	.uleb128 0x15
	.long	0x9a
	.byte	0xd
	.byte	0x22
	.byte	0xe
	.long	0x2401
	.uleb128 0x2
	.long	.LASF323
	.byte	0
	.uleb128 0x2
	.long	.LASF324
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF325
	.byte	0xd
	.byte	0x22
	.byte	0x1c
	.long	0x23e8
	.uleb128 0x9
	.long	.LASF326
	.byte	0xd
	.byte	0x24
	.byte	0x17
	.long	0x8c
	.uleb128 0x1e
	.long	.LASF327
	.byte	0xd8
	.byte	0xe
	.byte	0x31
	.byte	0x8
	.long	0x25a0
	.uleb128 0x5
	.long	.LASF328
	.byte	0xe
	.byte	0x33
	.byte	0x7
	.long	0x77
	.byte	0
	.uleb128 0x5
	.long	.LASF329
	.byte	0xe
	.byte	0x36
	.byte	0x9
	.long	0x11d
	.byte	0x8
	.uleb128 0x5
	.long	.LASF330
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.long	0x11d
	.byte	0x10
	.uleb128 0x5
	.long	.LASF331
	.byte	0xe
	.byte	0x38
	.byte	0x9
	.long	0x11d
	.byte	0x18
	.uleb128 0x5
	.long	.LASF332
	.byte	0xe
	.byte	0x39
	.byte	0x9
	.long	0x11d
	.byte	0x20
	.uleb128 0x5
	.long	.LASF333
	.byte	0xe
	.byte	0x3a
	.byte	0x9
	.long	0x11d
	.byte	0x28
	.uleb128 0x5
	.long	.LASF334
	.byte	0xe
	.byte	0x3b
	.byte	0x9
	.long	0x11d
	.byte	0x30
	.uleb128 0x5
	.long	.LASF335
	.byte	0xe
	.byte	0x3c
	.byte	0x9
	.long	0x11d
	.byte	0x38
	.uleb128 0x5
	.long	.LASF336
	.byte	0xe
	.byte	0x3d
	.byte	0x9
	.long	0x11d
	.byte	0x40
	.uleb128 0x5
	.long	.LASF337
	.byte	0xe
	.byte	0x40
	.byte	0x9
	.long	0x11d
	.byte	0x48
	.uleb128 0x5
	.long	.LASF338
	.byte	0xe
	.byte	0x41
	.byte	0x9
	.long	0x11d
	.byte	0x50
	.uleb128 0x5
	.long	.LASF339
	.byte	0xe
	.byte	0x42
	.byte	0x9
	.long	0x11d
	.byte	0x58
	.uleb128 0x5
	.long	.LASF340
	.byte	0xe
	.byte	0x44
	.byte	0x16
	.long	0x25b9
	.byte	0x60
	.uleb128 0x5
	.long	.LASF341
	.byte	0xe
	.byte	0x46
	.byte	0x14
	.long	0x25be
	.byte	0x68
	.uleb128 0x5
	.long	.LASF342
	.byte	0xe
	.byte	0x48
	.byte	0x7
	.long	0x77
	.byte	0x70
	.uleb128 0x5
	.long	.LASF343
	.byte	0xe
	.byte	0x49
	.byte	0x7
	.long	0x77
	.byte	0x74
	.uleb128 0x5
	.long	.LASF344
	.byte	0xe
	.byte	0x4a
	.byte	0xb
	.long	0xd3
	.byte	0x78
	.uleb128 0x5
	.long	.LASF345
	.byte	0xe
	.byte	0x4d
	.byte	0x12
	.long	0x93
	.byte	0x80
	.uleb128 0x5
	.long	.LASF346
	.byte	0xe
	.byte	0x4e
	.byte	0xf
	.long	0xa1
	.byte	0x82
	.uleb128 0x5
	.long	.LASF347
	.byte	0xe
	.byte	0x4f
	.byte	0x8
	.long	0x25c3
	.byte	0x83
	.uleb128 0x5
	.long	.LASF348
	.byte	0xe
	.byte	0x51
	.byte	0xf
	.long	0x25d3
	.byte	0x88
	.uleb128 0x5
	.long	.LASF349
	.byte	0xe
	.byte	0x59
	.byte	0xd
	.long	0xdf
	.byte	0x90
	.uleb128 0x5
	.long	.LASF350
	.byte	0xe
	.byte	0x5b
	.byte	0x17
	.long	0x25dd
	.byte	0x98
	.uleb128 0x5
	.long	.LASF351
	.byte	0xe
	.byte	0x5c
	.byte	0x19
	.long	0x25e7
	.byte	0xa0
	.uleb128 0x5
	.long	.LASF352
	.byte	0xe
	.byte	0x5d
	.byte	0x14
	.long	0x25be
	.byte	0xa8
	.uleb128 0x5
	.long	.LASF353
	.byte	0xe
	.byte	0x5e
	.byte	0x9
	.long	0x10f
	.byte	0xb0
	.uleb128 0x5
	.long	.LASF354
	.byte	0xe
	.byte	0x5f
	.byte	0xa
	.long	0x6b
	.byte	0xb8
	.uleb128 0x5
	.long	.LASF355
	.byte	0xe
	.byte	0x60
	.byte	0x7
	.long	0x77
	.byte	0xc0
	.uleb128 0x5
	.long	.LASF356
	.byte	0xe
	.byte	0x62
	.byte	0x8
	.long	0x1dfd
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF357
	.byte	0xf
	.byte	0x7
	.byte	0x19
	.long	0x2419
	.uleb128 0x33
	.long	.LASF1775
	.byte	0xe
	.byte	0x2b
	.byte	0xe
	.uleb128 0x18
	.long	.LASF358
	.uleb128 0x6
	.long	0x25b4
	.uleb128 0x6
	.long	0x2419
	.uleb128 0x10
	.long	0x4a
	.long	0x25d3
	.uleb128 0x11
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x25ac
	.uleb128 0x18
	.long	.LASF359
	.uleb128 0x6
	.long	0x25d8
	.uleb128 0x18
	.long	.LASF360
	.uleb128 0x6
	.long	0x25e2
	.uleb128 0x6
	.long	0x51
	.uleb128 0x26
	.long	0x25ec
	.uleb128 0x6
	.long	0x25a0
	.uleb128 0x26
	.long	0x25f6
	.uleb128 0x1b
	.long	.LASF1642
	.byte	0x13
	.byte	0x97
	.byte	0xe
	.long	0x25f6
	.uleb128 0x15
	.long	0x9a
	.byte	0x10
	.byte	0xa3
	.byte	0x1
	.long	0x2643
	.uleb128 0x2
	.long	.LASF361
	.byte	0
	.uleb128 0x2
	.long	.LASF362
	.byte	0x1
	.uleb128 0x2
	.long	.LASF363
	.byte	0x2
	.uleb128 0x2
	.long	.LASF364
	.byte	0x3
	.uleb128 0x2
	.long	.LASF365
	.byte	0x4
	.uleb128 0x2
	.long	.LASF366
	.byte	0x5
	.uleb128 0x2
	.long	.LASF367
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.long	0x9a
	.byte	0x10
	.byte	0xb5
	.byte	0x1
	.long	0x2692
	.uleb128 0x2
	.long	.LASF368
	.byte	0
	.uleb128 0x2
	.long	.LASF369
	.byte	0x1
	.uleb128 0x2
	.long	.LASF370
	.byte	0x2
	.uleb128 0x2
	.long	.LASF371
	.byte	0x3
	.uleb128 0x2
	.long	.LASF372
	.byte	0x4
	.uleb128 0x2
	.long	.LASF373
	.byte	0x5
	.uleb128 0x2
	.long	.LASF374
	.byte	0x6
	.uleb128 0x2
	.long	.LASF375
	.byte	0x7
	.uleb128 0x2
	.long	.LASF376
	.byte	0x8
	.uleb128 0x2
	.long	.LASF377
	.byte	0x9
	.uleb128 0x2
	.long	.LASF378
	.byte	0xa
	.byte	0
	.uleb128 0x15
	.long	0x9a
	.byte	0x10
	.byte	0xca
	.byte	0x1
	.long	0x26c3
	.uleb128 0x2
	.long	.LASF379
	.byte	0
	.uleb128 0x2
	.long	.LASF380
	.byte	0x1
	.uleb128 0x2
	.long	.LASF381
	.byte	0x2
	.uleb128 0x2
	.long	.LASF382
	.byte	0x3
	.uleb128 0x2
	.long	.LASF383
	.byte	0x4
	.uleb128 0x2
	.long	.LASF384
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.long	0x9a
	.byte	0x10
	.byte	0xd7
	.byte	0x1
	.long	0x26fa
	.uleb128 0x2
	.long	.LASF385
	.byte	0
	.uleb128 0x2
	.long	.LASF386
	.byte	0x1
	.uleb128 0x2
	.long	.LASF387
	.byte	0x2
	.uleb128 0x2
	.long	.LASF388
	.byte	0x3
	.uleb128 0x2
	.long	.LASF389
	.byte	0x4
	.uleb128 0x2
	.long	.LASF390
	.byte	0x5
	.uleb128 0x2
	.long	.LASF391
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.long	.LASF392
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.long	.LASF393
	.uleb128 0x15
	.long	0x9a
	.byte	0x11
	.byte	0x1f
	.byte	0x1
	.long	0x2a57
	.uleb128 0x2
	.long	.LASF394
	.byte	0
	.uleb128 0x2
	.long	.LASF395
	.byte	0x1
	.uleb128 0x2
	.long	.LASF396
	.byte	0x2
	.uleb128 0x2
	.long	.LASF397
	.byte	0x3
	.uleb128 0x2
	.long	.LASF398
	.byte	0x4
	.uleb128 0x2
	.long	.LASF399
	.byte	0x5
	.uleb128 0x2
	.long	.LASF400
	.byte	0x6
	.uleb128 0x2
	.long	.LASF401
	.byte	0x7
	.uleb128 0x2
	.long	.LASF402
	.byte	0x8
	.uleb128 0x2
	.long	.LASF403
	.byte	0x9
	.uleb128 0x2
	.long	.LASF404
	.byte	0xa
	.uleb128 0x2
	.long	.LASF405
	.byte	0xb
	.uleb128 0x2
	.long	.LASF406
	.byte	0xc
	.uleb128 0x2
	.long	.LASF407
	.byte	0xd
	.uleb128 0x2
	.long	.LASF408
	.byte	0xe
	.uleb128 0x2
	.long	.LASF409
	.byte	0xf
	.uleb128 0x2
	.long	.LASF410
	.byte	0x10
	.uleb128 0x2
	.long	.LASF411
	.byte	0x11
	.uleb128 0x2
	.long	.LASF412
	.byte	0x12
	.uleb128 0x2
	.long	.LASF413
	.byte	0x13
	.uleb128 0x2
	.long	.LASF414
	.byte	0x14
	.uleb128 0x2
	.long	.LASF415
	.byte	0x15
	.uleb128 0x2
	.long	.LASF416
	.byte	0x16
	.uleb128 0x2
	.long	.LASF417
	.byte	0x17
	.uleb128 0x2
	.long	.LASF418
	.byte	0x18
	.uleb128 0x2
	.long	.LASF419
	.byte	0x19
	.uleb128 0x2
	.long	.LASF420
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF421
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF422
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF423
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF424
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF425
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF426
	.byte	0x20
	.uleb128 0x2
	.long	.LASF427
	.byte	0x21
	.uleb128 0x2
	.long	.LASF428
	.byte	0x22
	.uleb128 0x2
	.long	.LASF429
	.byte	0x23
	.uleb128 0x2
	.long	.LASF430
	.byte	0x24
	.uleb128 0x2
	.long	.LASF431
	.byte	0x25
	.uleb128 0x2
	.long	.LASF432
	.byte	0x26
	.uleb128 0x2
	.long	.LASF433
	.byte	0x27
	.uleb128 0x2
	.long	.LASF434
	.byte	0x28
	.uleb128 0x2
	.long	.LASF435
	.byte	0x29
	.uleb128 0x2
	.long	.LASF436
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF437
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF438
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF439
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF440
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF441
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF442
	.byte	0x30
	.uleb128 0x2
	.long	.LASF443
	.byte	0x31
	.uleb128 0x2
	.long	.LASF444
	.byte	0x32
	.uleb128 0x2
	.long	.LASF445
	.byte	0x33
	.uleb128 0x2
	.long	.LASF446
	.byte	0x34
	.uleb128 0x2
	.long	.LASF447
	.byte	0x35
	.uleb128 0x2
	.long	.LASF448
	.byte	0x36
	.uleb128 0x2
	.long	.LASF449
	.byte	0x37
	.uleb128 0x2
	.long	.LASF450
	.byte	0x38
	.uleb128 0x2
	.long	.LASF451
	.byte	0x39
	.uleb128 0x2
	.long	.LASF452
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF453
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF454
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF455
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF456
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF457
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF458
	.byte	0x40
	.uleb128 0x2
	.long	.LASF459
	.byte	0x41
	.uleb128 0x2
	.long	.LASF460
	.byte	0x42
	.uleb128 0x2
	.long	.LASF461
	.byte	0x43
	.uleb128 0x2
	.long	.LASF462
	.byte	0x44
	.uleb128 0x2
	.long	.LASF463
	.byte	0x45
	.uleb128 0x2
	.long	.LASF464
	.byte	0x46
	.uleb128 0x2
	.long	.LASF465
	.byte	0x47
	.uleb128 0x2
	.long	.LASF466
	.byte	0x48
	.uleb128 0x2
	.long	.LASF467
	.byte	0x49
	.uleb128 0x2
	.long	.LASF468
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF469
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF470
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF471
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF472
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF473
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF474
	.byte	0x50
	.uleb128 0x2
	.long	.LASF475
	.byte	0x51
	.uleb128 0x2
	.long	.LASF476
	.byte	0x52
	.uleb128 0x2
	.long	.LASF477
	.byte	0x53
	.uleb128 0x2
	.long	.LASF478
	.byte	0x54
	.uleb128 0x2
	.long	.LASF479
	.byte	0x55
	.uleb128 0x2
	.long	.LASF480
	.byte	0x56
	.uleb128 0x2
	.long	.LASF481
	.byte	0x57
	.uleb128 0x2
	.long	.LASF482
	.byte	0x58
	.uleb128 0x2
	.long	.LASF483
	.byte	0x59
	.uleb128 0x2
	.long	.LASF484
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF485
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF486
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF487
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF488
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF489
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF490
	.byte	0x60
	.uleb128 0x2
	.long	.LASF491
	.byte	0x61
	.uleb128 0x2
	.long	.LASF492
	.byte	0x62
	.uleb128 0x2
	.long	.LASF493
	.byte	0x63
	.uleb128 0x2
	.long	.LASF494
	.byte	0x64
	.uleb128 0x2
	.long	.LASF495
	.byte	0x65
	.uleb128 0x2
	.long	.LASF496
	.byte	0x66
	.uleb128 0x2
	.long	.LASF497
	.byte	0x67
	.uleb128 0x2
	.long	.LASF498
	.byte	0x68
	.uleb128 0x2
	.long	.LASF499
	.byte	0x69
	.uleb128 0x2
	.long	.LASF500
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF501
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF502
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF503
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF504
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF505
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF506
	.byte	0x70
	.uleb128 0x2
	.long	.LASF507
	.byte	0x71
	.uleb128 0x2
	.long	.LASF508
	.byte	0x72
	.uleb128 0x2
	.long	.LASF509
	.byte	0x73
	.uleb128 0x2
	.long	.LASF510
	.byte	0x74
	.uleb128 0x2
	.long	.LASF511
	.byte	0x75
	.uleb128 0x2
	.long	.LASF512
	.byte	0x76
	.uleb128 0x2
	.long	.LASF513
	.byte	0x77
	.uleb128 0x2
	.long	.LASF514
	.byte	0x78
	.uleb128 0x2
	.long	.LASF515
	.byte	0x79
	.uleb128 0x2
	.long	.LASF516
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF517
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF518
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF519
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF520
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF521
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF522
	.byte	0x80
	.uleb128 0x2
	.long	.LASF523
	.byte	0x81
	.uleb128 0x2
	.long	.LASF524
	.byte	0x82
	.uleb128 0x2
	.long	.LASF525
	.byte	0x83
	.uleb128 0x2
	.long	.LASF526
	.byte	0x84
	.uleb128 0x2
	.long	.LASF527
	.byte	0x85
	.uleb128 0x2
	.long	.LASF528
	.byte	0x86
	.uleb128 0x2
	.long	.LASF529
	.byte	0x87
	.uleb128 0x2
	.long	.LASF530
	.byte	0x88
	.uleb128 0x2
	.long	.LASF531
	.byte	0x89
	.uleb128 0x2
	.long	.LASF532
	.byte	0x8a
	.byte	0
	.uleb128 0x15
	.long	0x9a
	.byte	0x11
	.byte	0xaf
	.byte	0x1
	.long	0x43dc
	.uleb128 0x2
	.long	.LASF533
	.byte	0
	.uleb128 0x2
	.long	.LASF534
	.byte	0x1
	.uleb128 0x2
	.long	.LASF535
	.byte	0x2
	.uleb128 0x2
	.long	.LASF536
	.byte	0x3
	.uleb128 0x2
	.long	.LASF537
	.byte	0x4
	.uleb128 0x2
	.long	.LASF538
	.byte	0x5
	.uleb128 0x2
	.long	.LASF539
	.byte	0x6
	.uleb128 0x2
	.long	.LASF540
	.byte	0x7
	.uleb128 0x2
	.long	.LASF541
	.byte	0x8
	.uleb128 0x2
	.long	.LASF542
	.byte	0x9
	.uleb128 0x2
	.long	.LASF543
	.byte	0xa
	.uleb128 0x2
	.long	.LASF544
	.byte	0xb
	.uleb128 0x2
	.long	.LASF545
	.byte	0xc
	.uleb128 0x2
	.long	.LASF546
	.byte	0xd
	.uleb128 0x2
	.long	.LASF547
	.byte	0xe
	.uleb128 0x2
	.long	.LASF548
	.byte	0xf
	.uleb128 0x2
	.long	.LASF549
	.byte	0x10
	.uleb128 0x2
	.long	.LASF550
	.byte	0x11
	.uleb128 0x2
	.long	.LASF551
	.byte	0x12
	.uleb128 0x2
	.long	.LASF552
	.byte	0x13
	.uleb128 0x2
	.long	.LASF553
	.byte	0x14
	.uleb128 0x2
	.long	.LASF554
	.byte	0x15
	.uleb128 0x2
	.long	.LASF555
	.byte	0x16
	.uleb128 0x2
	.long	.LASF556
	.byte	0x17
	.uleb128 0x2
	.long	.LASF557
	.byte	0x18
	.uleb128 0x2
	.long	.LASF558
	.byte	0x19
	.uleb128 0x2
	.long	.LASF559
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF560
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF561
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF562
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF563
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF564
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF565
	.byte	0x20
	.uleb128 0x2
	.long	.LASF566
	.byte	0x21
	.uleb128 0x2
	.long	.LASF567
	.byte	0x22
	.uleb128 0x2
	.long	.LASF568
	.byte	0x23
	.uleb128 0x2
	.long	.LASF569
	.byte	0x24
	.uleb128 0x2
	.long	.LASF570
	.byte	0x25
	.uleb128 0x2
	.long	.LASF571
	.byte	0x26
	.uleb128 0x2
	.long	.LASF572
	.byte	0x27
	.uleb128 0x2
	.long	.LASF573
	.byte	0x28
	.uleb128 0x2
	.long	.LASF574
	.byte	0x29
	.uleb128 0x2
	.long	.LASF575
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF576
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF577
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF578
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF579
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF580
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF581
	.byte	0x30
	.uleb128 0x2
	.long	.LASF582
	.byte	0x31
	.uleb128 0x2
	.long	.LASF583
	.byte	0x32
	.uleb128 0x2
	.long	.LASF584
	.byte	0x33
	.uleb128 0x2
	.long	.LASF585
	.byte	0x34
	.uleb128 0x2
	.long	.LASF586
	.byte	0x35
	.uleb128 0x2
	.long	.LASF587
	.byte	0x36
	.uleb128 0x2
	.long	.LASF588
	.byte	0x37
	.uleb128 0x2
	.long	.LASF589
	.byte	0x38
	.uleb128 0x2
	.long	.LASF590
	.byte	0x39
	.uleb128 0x2
	.long	.LASF591
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF592
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF593
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF594
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF595
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF596
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF597
	.byte	0x40
	.uleb128 0x2
	.long	.LASF598
	.byte	0x41
	.uleb128 0x2
	.long	.LASF599
	.byte	0x42
	.uleb128 0x2
	.long	.LASF600
	.byte	0x43
	.uleb128 0x2
	.long	.LASF601
	.byte	0x44
	.uleb128 0x2
	.long	.LASF602
	.byte	0x45
	.uleb128 0x2
	.long	.LASF603
	.byte	0x46
	.uleb128 0x2
	.long	.LASF604
	.byte	0x47
	.uleb128 0x2
	.long	.LASF605
	.byte	0x48
	.uleb128 0x2
	.long	.LASF606
	.byte	0x49
	.uleb128 0x2
	.long	.LASF607
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF608
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF609
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF610
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF611
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF612
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF613
	.byte	0x50
	.uleb128 0x2
	.long	.LASF614
	.byte	0x51
	.uleb128 0x2
	.long	.LASF615
	.byte	0x52
	.uleb128 0x2
	.long	.LASF616
	.byte	0x53
	.uleb128 0x2
	.long	.LASF617
	.byte	0x54
	.uleb128 0x2
	.long	.LASF618
	.byte	0x55
	.uleb128 0x2
	.long	.LASF619
	.byte	0x56
	.uleb128 0x2
	.long	.LASF620
	.byte	0x57
	.uleb128 0x2
	.long	.LASF621
	.byte	0x58
	.uleb128 0x2
	.long	.LASF622
	.byte	0x59
	.uleb128 0x2
	.long	.LASF623
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF624
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF625
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF626
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF627
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF628
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF629
	.byte	0x60
	.uleb128 0x2
	.long	.LASF630
	.byte	0x61
	.uleb128 0x2
	.long	.LASF631
	.byte	0x62
	.uleb128 0x2
	.long	.LASF632
	.byte	0x63
	.uleb128 0x2
	.long	.LASF633
	.byte	0x64
	.uleb128 0x2
	.long	.LASF634
	.byte	0x65
	.uleb128 0x2
	.long	.LASF635
	.byte	0x66
	.uleb128 0x2
	.long	.LASF636
	.byte	0x67
	.uleb128 0x2
	.long	.LASF637
	.byte	0x68
	.uleb128 0x2
	.long	.LASF638
	.byte	0x69
	.uleb128 0x2
	.long	.LASF639
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF640
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF641
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF642
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF643
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF644
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF645
	.byte	0x70
	.uleb128 0x2
	.long	.LASF646
	.byte	0x71
	.uleb128 0x2
	.long	.LASF647
	.byte	0x72
	.uleb128 0x2
	.long	.LASF648
	.byte	0x73
	.uleb128 0x2
	.long	.LASF649
	.byte	0x74
	.uleb128 0x2
	.long	.LASF650
	.byte	0x75
	.uleb128 0x2
	.long	.LASF651
	.byte	0x76
	.uleb128 0x2
	.long	.LASF652
	.byte	0x77
	.uleb128 0x2
	.long	.LASF653
	.byte	0x78
	.uleb128 0x2
	.long	.LASF654
	.byte	0x79
	.uleb128 0x2
	.long	.LASF655
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF656
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF657
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF658
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF659
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF660
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF661
	.byte	0x80
	.uleb128 0x2
	.long	.LASF662
	.byte	0x81
	.uleb128 0x2
	.long	.LASF663
	.byte	0x82
	.uleb128 0x2
	.long	.LASF664
	.byte	0x83
	.uleb128 0x2
	.long	.LASF665
	.byte	0x84
	.uleb128 0x2
	.long	.LASF666
	.byte	0x85
	.uleb128 0x2
	.long	.LASF667
	.byte	0x86
	.uleb128 0x2
	.long	.LASF668
	.byte	0x87
	.uleb128 0x2
	.long	.LASF669
	.byte	0x88
	.uleb128 0x2
	.long	.LASF670
	.byte	0x89
	.uleb128 0x2
	.long	.LASF671
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF672
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF673
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF674
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF675
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF676
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF677
	.byte	0x90
	.uleb128 0x2
	.long	.LASF678
	.byte	0x91
	.uleb128 0x2
	.long	.LASF679
	.byte	0x92
	.uleb128 0x2
	.long	.LASF680
	.byte	0x93
	.uleb128 0x2
	.long	.LASF681
	.byte	0x94
	.uleb128 0x2
	.long	.LASF682
	.byte	0x95
	.uleb128 0x2
	.long	.LASF683
	.byte	0x96
	.uleb128 0x2
	.long	.LASF684
	.byte	0x97
	.uleb128 0x2
	.long	.LASF685
	.byte	0x98
	.uleb128 0x2
	.long	.LASF686
	.byte	0x99
	.uleb128 0x2
	.long	.LASF687
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF688
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF689
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF690
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF691
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF692
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF693
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF694
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF695
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF696
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF697
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF698
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF699
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF700
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF701
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF702
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF703
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF704
	.byte	0xab
	.uleb128 0x2
	.long	.LASF705
	.byte	0xac
	.uleb128 0x2
	.long	.LASF706
	.byte	0xad
	.uleb128 0x2
	.long	.LASF707
	.byte	0xae
	.uleb128 0x2
	.long	.LASF708
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF709
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF710
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF711
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF712
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF713
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF714
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF715
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF716
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF717
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF718
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF719
	.byte	0xba
	.uleb128 0x2
	.long	.LASF720
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF721
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF722
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF723
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF724
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF725
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF726
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF727
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF728
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF729
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF730
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF731
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF732
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF733
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF734
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF735
	.byte	0xca
	.uleb128 0x2
	.long	.LASF736
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF737
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF738
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF739
	.byte	0xce
	.uleb128 0x2
	.long	.LASF740
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF741
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF742
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF743
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF744
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF745
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF746
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF747
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF748
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF749
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF750
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF751
	.byte	0xda
	.uleb128 0x2
	.long	.LASF752
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF753
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF754
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF755
	.byte	0xde
	.uleb128 0x2
	.long	.LASF756
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF757
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF758
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF759
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF760
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF761
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF762
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF763
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF764
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF765
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF766
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF767
	.byte	0xea
	.uleb128 0x2
	.long	.LASF768
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF769
	.byte	0xec
	.uleb128 0x2
	.long	.LASF770
	.byte	0xed
	.uleb128 0x2
	.long	.LASF771
	.byte	0xee
	.uleb128 0x2
	.long	.LASF772
	.byte	0xef
	.uleb128 0x2
	.long	.LASF773
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF774
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF775
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF776
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF777
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF778
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF779
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF780
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF781
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF782
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF783
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF784
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF785
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF786
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF787
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF788
	.byte	0xff
	.uleb128 0x1
	.long	.LASF789
	.value	0x100
	.uleb128 0x1
	.long	.LASF790
	.value	0x101
	.uleb128 0x1
	.long	.LASF791
	.value	0x102
	.uleb128 0x1
	.long	.LASF792
	.value	0x103
	.uleb128 0x1
	.long	.LASF793
	.value	0x104
	.uleb128 0x1
	.long	.LASF794
	.value	0x105
	.uleb128 0x1
	.long	.LASF795
	.value	0x106
	.uleb128 0x1
	.long	.LASF796
	.value	0x107
	.uleb128 0x1
	.long	.LASF797
	.value	0x108
	.uleb128 0x1
	.long	.LASF798
	.value	0x109
	.uleb128 0x1
	.long	.LASF799
	.value	0x10a
	.uleb128 0x1
	.long	.LASF800
	.value	0x10b
	.uleb128 0x1
	.long	.LASF801
	.value	0x10c
	.uleb128 0x1
	.long	.LASF802
	.value	0x10d
	.uleb128 0x1
	.long	.LASF803
	.value	0x10e
	.uleb128 0x1
	.long	.LASF804
	.value	0x10f
	.uleb128 0x1
	.long	.LASF805
	.value	0x110
	.uleb128 0x1
	.long	.LASF806
	.value	0x111
	.uleb128 0x1
	.long	.LASF807
	.value	0x112
	.uleb128 0x1
	.long	.LASF808
	.value	0x113
	.uleb128 0x1
	.long	.LASF809
	.value	0x114
	.uleb128 0x1
	.long	.LASF810
	.value	0x115
	.uleb128 0x1
	.long	.LASF811
	.value	0x116
	.uleb128 0x1
	.long	.LASF812
	.value	0x117
	.uleb128 0x1
	.long	.LASF813
	.value	0x118
	.uleb128 0x1
	.long	.LASF814
	.value	0x119
	.uleb128 0x1
	.long	.LASF815
	.value	0x11a
	.uleb128 0x1
	.long	.LASF816
	.value	0x11b
	.uleb128 0x1
	.long	.LASF817
	.value	0x11c
	.uleb128 0x1
	.long	.LASF818
	.value	0x11d
	.uleb128 0x1
	.long	.LASF819
	.value	0x11e
	.uleb128 0x1
	.long	.LASF820
	.value	0x11f
	.uleb128 0x1
	.long	.LASF821
	.value	0x120
	.uleb128 0x1
	.long	.LASF822
	.value	0x121
	.uleb128 0x1
	.long	.LASF823
	.value	0x122
	.uleb128 0x1
	.long	.LASF824
	.value	0x123
	.uleb128 0x1
	.long	.LASF825
	.value	0x124
	.uleb128 0x1
	.long	.LASF826
	.value	0x125
	.uleb128 0x1
	.long	.LASF827
	.value	0x126
	.uleb128 0x1
	.long	.LASF828
	.value	0x127
	.uleb128 0x1
	.long	.LASF829
	.value	0x128
	.uleb128 0x1
	.long	.LASF830
	.value	0x129
	.uleb128 0x1
	.long	.LASF831
	.value	0x12a
	.uleb128 0x1
	.long	.LASF832
	.value	0x12b
	.uleb128 0x1
	.long	.LASF833
	.value	0x12c
	.uleb128 0x1
	.long	.LASF834
	.value	0x12d
	.uleb128 0x1
	.long	.LASF835
	.value	0x12e
	.uleb128 0x1
	.long	.LASF836
	.value	0x12f
	.uleb128 0x1
	.long	.LASF837
	.value	0x130
	.uleb128 0x1
	.long	.LASF838
	.value	0x131
	.uleb128 0x1
	.long	.LASF839
	.value	0x132
	.uleb128 0x1
	.long	.LASF840
	.value	0x133
	.uleb128 0x1
	.long	.LASF841
	.value	0x134
	.uleb128 0x1
	.long	.LASF842
	.value	0x135
	.uleb128 0x1
	.long	.LASF843
	.value	0x136
	.uleb128 0x1
	.long	.LASF844
	.value	0x137
	.uleb128 0x1
	.long	.LASF845
	.value	0x138
	.uleb128 0x1
	.long	.LASF846
	.value	0x139
	.uleb128 0x1
	.long	.LASF847
	.value	0x13a
	.uleb128 0x1
	.long	.LASF848
	.value	0x13b
	.uleb128 0x1
	.long	.LASF849
	.value	0x13c
	.uleb128 0x1
	.long	.LASF850
	.value	0x13d
	.uleb128 0x1
	.long	.LASF851
	.value	0x13e
	.uleb128 0x1
	.long	.LASF852
	.value	0x13f
	.uleb128 0x1
	.long	.LASF853
	.value	0x140
	.uleb128 0x1
	.long	.LASF854
	.value	0x141
	.uleb128 0x1
	.long	.LASF855
	.value	0x142
	.uleb128 0x1
	.long	.LASF856
	.value	0x143
	.uleb128 0x1
	.long	.LASF857
	.value	0x144
	.uleb128 0x1
	.long	.LASF858
	.value	0x145
	.uleb128 0x1
	.long	.LASF859
	.value	0x146
	.uleb128 0x1
	.long	.LASF860
	.value	0x147
	.uleb128 0x1
	.long	.LASF861
	.value	0x148
	.uleb128 0x1
	.long	.LASF862
	.value	0x149
	.uleb128 0x1
	.long	.LASF863
	.value	0x14a
	.uleb128 0x1
	.long	.LASF864
	.value	0x14b
	.uleb128 0x1
	.long	.LASF865
	.value	0x14c
	.uleb128 0x1
	.long	.LASF866
	.value	0x14d
	.uleb128 0x1
	.long	.LASF867
	.value	0x14e
	.uleb128 0x1
	.long	.LASF868
	.value	0x14f
	.uleb128 0x1
	.long	.LASF869
	.value	0x150
	.uleb128 0x1
	.long	.LASF870
	.value	0x151
	.uleb128 0x1
	.long	.LASF871
	.value	0x152
	.uleb128 0x1
	.long	.LASF872
	.value	0x153
	.uleb128 0x1
	.long	.LASF873
	.value	0x154
	.uleb128 0x1
	.long	.LASF874
	.value	0x155
	.uleb128 0x1
	.long	.LASF875
	.value	0x156
	.uleb128 0x1
	.long	.LASF876
	.value	0x157
	.uleb128 0x1
	.long	.LASF877
	.value	0x158
	.uleb128 0x1
	.long	.LASF878
	.value	0x159
	.uleb128 0x1
	.long	.LASF879
	.value	0x15a
	.uleb128 0x1
	.long	.LASF880
	.value	0x15b
	.uleb128 0x1
	.long	.LASF881
	.value	0x15c
	.uleb128 0x1
	.long	.LASF882
	.value	0x15d
	.uleb128 0x1
	.long	.LASF883
	.value	0x15e
	.uleb128 0x1
	.long	.LASF884
	.value	0x15f
	.uleb128 0x1
	.long	.LASF885
	.value	0x160
	.uleb128 0x1
	.long	.LASF886
	.value	0x161
	.uleb128 0x1
	.long	.LASF887
	.value	0x162
	.uleb128 0x1
	.long	.LASF888
	.value	0x163
	.uleb128 0x1
	.long	.LASF889
	.value	0x164
	.uleb128 0x1
	.long	.LASF890
	.value	0x165
	.uleb128 0x1
	.long	.LASF891
	.value	0x166
	.uleb128 0x1
	.long	.LASF892
	.value	0x167
	.uleb128 0x1
	.long	.LASF893
	.value	0x168
	.uleb128 0x1
	.long	.LASF894
	.value	0x169
	.uleb128 0x1
	.long	.LASF895
	.value	0x16a
	.uleb128 0x1
	.long	.LASF896
	.value	0x16b
	.uleb128 0x1
	.long	.LASF897
	.value	0x16c
	.uleb128 0x1
	.long	.LASF898
	.value	0x16d
	.uleb128 0x1
	.long	.LASF899
	.value	0x16e
	.uleb128 0x1
	.long	.LASF900
	.value	0x16f
	.uleb128 0x1
	.long	.LASF901
	.value	0x170
	.uleb128 0x1
	.long	.LASF902
	.value	0x171
	.uleb128 0x1
	.long	.LASF903
	.value	0x172
	.uleb128 0x1
	.long	.LASF904
	.value	0x173
	.uleb128 0x1
	.long	.LASF905
	.value	0x174
	.uleb128 0x1
	.long	.LASF906
	.value	0x175
	.uleb128 0x1
	.long	.LASF907
	.value	0x176
	.uleb128 0x1
	.long	.LASF908
	.value	0x177
	.uleb128 0x1
	.long	.LASF909
	.value	0x178
	.uleb128 0x1
	.long	.LASF910
	.value	0x179
	.uleb128 0x1
	.long	.LASF911
	.value	0x17a
	.uleb128 0x1
	.long	.LASF912
	.value	0x17b
	.uleb128 0x1
	.long	.LASF913
	.value	0x17c
	.uleb128 0x1
	.long	.LASF914
	.value	0x17d
	.uleb128 0x1
	.long	.LASF915
	.value	0x17e
	.uleb128 0x1
	.long	.LASF916
	.value	0x17f
	.uleb128 0x1
	.long	.LASF917
	.value	0x180
	.uleb128 0x1
	.long	.LASF918
	.value	0x181
	.uleb128 0x1
	.long	.LASF919
	.value	0x182
	.uleb128 0x1
	.long	.LASF920
	.value	0x183
	.uleb128 0x1
	.long	.LASF921
	.value	0x184
	.uleb128 0x1
	.long	.LASF922
	.value	0x185
	.uleb128 0x1
	.long	.LASF923
	.value	0x186
	.uleb128 0x1
	.long	.LASF924
	.value	0x187
	.uleb128 0x1
	.long	.LASF925
	.value	0x188
	.uleb128 0x1
	.long	.LASF926
	.value	0x189
	.uleb128 0x1
	.long	.LASF927
	.value	0x18a
	.uleb128 0x1
	.long	.LASF928
	.value	0x18b
	.uleb128 0x1
	.long	.LASF929
	.value	0x18c
	.uleb128 0x1
	.long	.LASF930
	.value	0x18d
	.uleb128 0x1
	.long	.LASF931
	.value	0x18e
	.uleb128 0x1
	.long	.LASF932
	.value	0x18f
	.uleb128 0x1
	.long	.LASF933
	.value	0x190
	.uleb128 0x1
	.long	.LASF934
	.value	0x191
	.uleb128 0x1
	.long	.LASF935
	.value	0x192
	.uleb128 0x1
	.long	.LASF936
	.value	0x193
	.uleb128 0x1
	.long	.LASF937
	.value	0x194
	.uleb128 0x1
	.long	.LASF938
	.value	0x195
	.uleb128 0x1
	.long	.LASF939
	.value	0x196
	.uleb128 0x1
	.long	.LASF940
	.value	0x197
	.uleb128 0x1
	.long	.LASF941
	.value	0x198
	.uleb128 0x1
	.long	.LASF942
	.value	0x199
	.uleb128 0x1
	.long	.LASF943
	.value	0x19a
	.uleb128 0x1
	.long	.LASF944
	.value	0x19b
	.uleb128 0x1
	.long	.LASF945
	.value	0x19c
	.uleb128 0x1
	.long	.LASF946
	.value	0x19d
	.uleb128 0x1
	.long	.LASF947
	.value	0x19e
	.uleb128 0x1
	.long	.LASF948
	.value	0x19f
	.uleb128 0x1
	.long	.LASF949
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF950
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF951
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF952
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF953
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF954
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF955
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF956
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF957
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF958
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF959
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF960
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF961
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF962
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF963
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF964
	.value	0x1af
	.uleb128 0x1
	.long	.LASF965
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF966
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF967
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF968
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF969
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF970
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF971
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF972
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF973
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF974
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF975
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF976
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF977
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF978
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF979
	.value	0x1be
	.uleb128 0x1
	.long	.LASF980
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF981
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF982
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF983
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF984
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF985
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF986
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF987
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF988
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF989
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF990
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF991
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF992
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF993
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF994
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF995
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF996
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF997
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF998
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF999
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF1000
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF1001
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF1002
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF1003
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF1004
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF1005
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF1006
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF1007
	.value	0x1da
	.uleb128 0x1
	.long	.LASF1008
	.value	0x1db
	.uleb128 0x1
	.long	.LASF1009
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF1010
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF1011
	.value	0x1de
	.uleb128 0x1
	.long	.LASF1012
	.value	0x1df
	.uleb128 0x1
	.long	.LASF1013
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF1014
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF1015
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF1016
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF1017
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF1018
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF1019
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF1020
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF1021
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF1022
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF1023
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF1024
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF1025
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF1026
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF1027
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF1028
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF1029
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF1030
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF1031
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF1032
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF1033
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF1034
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF1035
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF1036
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF1037
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF1038
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF1039
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF1040
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF1041
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF1042
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF1043
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF1044
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF1045
	.value	0x200
	.uleb128 0x1
	.long	.LASF1046
	.value	0x201
	.uleb128 0x1
	.long	.LASF1047
	.value	0x202
	.uleb128 0x1
	.long	.LASF1048
	.value	0x203
	.uleb128 0x1
	.long	.LASF1049
	.value	0x204
	.uleb128 0x1
	.long	.LASF1050
	.value	0x205
	.uleb128 0x1
	.long	.LASF1051
	.value	0x206
	.uleb128 0x1
	.long	.LASF1052
	.value	0x207
	.uleb128 0x1
	.long	.LASF1053
	.value	0x208
	.uleb128 0x1
	.long	.LASF1054
	.value	0x209
	.uleb128 0x1
	.long	.LASF1055
	.value	0x20a
	.uleb128 0x1
	.long	.LASF1056
	.value	0x20b
	.uleb128 0x1
	.long	.LASF1057
	.value	0x20c
	.uleb128 0x1
	.long	.LASF1058
	.value	0x20d
	.uleb128 0x1
	.long	.LASF1059
	.value	0x20e
	.uleb128 0x1
	.long	.LASF1060
	.value	0x20f
	.uleb128 0x1
	.long	.LASF1061
	.value	0x210
	.uleb128 0x1
	.long	.LASF1062
	.value	0x211
	.uleb128 0x1
	.long	.LASF1063
	.value	0x212
	.uleb128 0x1
	.long	.LASF1064
	.value	0x213
	.uleb128 0x1
	.long	.LASF1065
	.value	0x214
	.uleb128 0x1
	.long	.LASF1066
	.value	0x215
	.uleb128 0x1
	.long	.LASF1067
	.value	0x216
	.uleb128 0x1
	.long	.LASF1068
	.value	0x217
	.uleb128 0x1
	.long	.LASF1069
	.value	0x218
	.uleb128 0x1
	.long	.LASF1070
	.value	0x219
	.uleb128 0x1
	.long	.LASF1071
	.value	0x21a
	.uleb128 0x1
	.long	.LASF1072
	.value	0x21b
	.uleb128 0x1
	.long	.LASF1073
	.value	0x21c
	.uleb128 0x1
	.long	.LASF1074
	.value	0x21d
	.uleb128 0x1
	.long	.LASF1075
	.value	0x21e
	.uleb128 0x1
	.long	.LASF1076
	.value	0x21f
	.uleb128 0x1
	.long	.LASF1077
	.value	0x220
	.uleb128 0x1
	.long	.LASF1078
	.value	0x221
	.uleb128 0x1
	.long	.LASF1079
	.value	0x222
	.uleb128 0x1
	.long	.LASF1080
	.value	0x223
	.uleb128 0x1
	.long	.LASF1081
	.value	0x224
	.uleb128 0x1
	.long	.LASF1082
	.value	0x225
	.uleb128 0x1
	.long	.LASF1083
	.value	0x226
	.uleb128 0x1
	.long	.LASF1084
	.value	0x227
	.uleb128 0x1
	.long	.LASF1085
	.value	0x228
	.uleb128 0x1
	.long	.LASF1086
	.value	0x229
	.uleb128 0x1
	.long	.LASF1087
	.value	0x22a
	.uleb128 0x1
	.long	.LASF1088
	.value	0x22b
	.uleb128 0x1
	.long	.LASF1089
	.value	0x22c
	.uleb128 0x1
	.long	.LASF1090
	.value	0x22d
	.uleb128 0x1
	.long	.LASF1091
	.value	0x22e
	.uleb128 0x1
	.long	.LASF1092
	.value	0x22f
	.uleb128 0x1
	.long	.LASF1093
	.value	0x230
	.uleb128 0x1
	.long	.LASF1094
	.value	0x231
	.uleb128 0x1
	.long	.LASF1095
	.value	0x232
	.uleb128 0x1
	.long	.LASF1096
	.value	0x233
	.uleb128 0x1
	.long	.LASF1097
	.value	0x234
	.uleb128 0x1
	.long	.LASF1098
	.value	0x235
	.uleb128 0x1
	.long	.LASF1099
	.value	0x236
	.uleb128 0x1
	.long	.LASF1100
	.value	0x237
	.uleb128 0x1
	.long	.LASF1101
	.value	0x238
	.uleb128 0x1
	.long	.LASF1102
	.value	0x239
	.uleb128 0x1
	.long	.LASF1103
	.value	0x23a
	.uleb128 0x1
	.long	.LASF1104
	.value	0x23b
	.uleb128 0x1
	.long	.LASF1105
	.value	0x23c
	.uleb128 0x1
	.long	.LASF1106
	.value	0x23d
	.uleb128 0x1
	.long	.LASF1107
	.value	0x23e
	.uleb128 0x1
	.long	.LASF1108
	.value	0x23f
	.uleb128 0x1
	.long	.LASF1109
	.value	0x240
	.uleb128 0x1
	.long	.LASF1110
	.value	0x241
	.uleb128 0x1
	.long	.LASF1111
	.value	0x242
	.uleb128 0x1
	.long	.LASF1112
	.value	0x243
	.uleb128 0x1
	.long	.LASF1113
	.value	0x244
	.uleb128 0x1
	.long	.LASF1114
	.value	0x245
	.uleb128 0x1
	.long	.LASF1115
	.value	0x246
	.uleb128 0x1
	.long	.LASF1116
	.value	0x247
	.uleb128 0x1
	.long	.LASF1117
	.value	0x248
	.uleb128 0x1
	.long	.LASF1118
	.value	0x249
	.uleb128 0x1
	.long	.LASF1119
	.value	0x24a
	.uleb128 0x1
	.long	.LASF1120
	.value	0x24b
	.uleb128 0x1
	.long	.LASF1121
	.value	0x24c
	.uleb128 0x1
	.long	.LASF1122
	.value	0x24d
	.uleb128 0x1
	.long	.LASF1123
	.value	0x24e
	.uleb128 0x1
	.long	.LASF1124
	.value	0x24f
	.uleb128 0x1
	.long	.LASF1125
	.value	0x250
	.uleb128 0x1
	.long	.LASF1126
	.value	0x251
	.uleb128 0x1
	.long	.LASF1127
	.value	0x252
	.uleb128 0x1
	.long	.LASF1128
	.value	0x253
	.uleb128 0x1
	.long	.LASF1129
	.value	0x254
	.uleb128 0x1
	.long	.LASF1130
	.value	0x255
	.uleb128 0x1
	.long	.LASF1131
	.value	0x256
	.uleb128 0x1
	.long	.LASF1132
	.value	0x257
	.uleb128 0x1
	.long	.LASF1133
	.value	0x258
	.uleb128 0x1
	.long	.LASF1134
	.value	0x259
	.uleb128 0x1
	.long	.LASF1135
	.value	0x25a
	.uleb128 0x1
	.long	.LASF1136
	.value	0x25b
	.uleb128 0x1
	.long	.LASF1137
	.value	0x25c
	.uleb128 0x1
	.long	.LASF1138
	.value	0x25d
	.uleb128 0x1
	.long	.LASF1139
	.value	0x25e
	.uleb128 0x1
	.long	.LASF1140
	.value	0x25f
	.uleb128 0x1
	.long	.LASF1141
	.value	0x260
	.uleb128 0x1
	.long	.LASF1142
	.value	0x261
	.uleb128 0x1
	.long	.LASF1143
	.value	0x262
	.uleb128 0x1
	.long	.LASF1144
	.value	0x263
	.uleb128 0x1
	.long	.LASF1145
	.value	0x264
	.uleb128 0x1
	.long	.LASF1146
	.value	0x265
	.uleb128 0x1
	.long	.LASF1147
	.value	0x266
	.uleb128 0x1
	.long	.LASF1148
	.value	0x267
	.uleb128 0x1
	.long	.LASF1149
	.value	0x268
	.uleb128 0x1
	.long	.LASF1150
	.value	0x269
	.uleb128 0x1
	.long	.LASF1151
	.value	0x26a
	.uleb128 0x1
	.long	.LASF1152
	.value	0x26b
	.uleb128 0x1
	.long	.LASF1153
	.value	0x26c
	.uleb128 0x1
	.long	.LASF1154
	.value	0x26d
	.uleb128 0x1
	.long	.LASF1155
	.value	0x26e
	.uleb128 0x1
	.long	.LASF1156
	.value	0x26f
	.uleb128 0x1
	.long	.LASF1157
	.value	0x270
	.uleb128 0x1
	.long	.LASF1158
	.value	0x271
	.uleb128 0x1
	.long	.LASF1159
	.value	0x272
	.uleb128 0x1
	.long	.LASF1160
	.value	0x273
	.uleb128 0x1
	.long	.LASF1161
	.value	0x274
	.uleb128 0x1
	.long	.LASF1162
	.value	0x275
	.uleb128 0x1
	.long	.LASF1163
	.value	0x276
	.uleb128 0x1
	.long	.LASF1164
	.value	0x277
	.uleb128 0x1
	.long	.LASF1165
	.value	0x278
	.uleb128 0x1
	.long	.LASF1166
	.value	0x279
	.uleb128 0x1
	.long	.LASF1167
	.value	0x27a
	.uleb128 0x1
	.long	.LASF1168
	.value	0x27b
	.uleb128 0x1
	.long	.LASF1169
	.value	0x27c
	.uleb128 0x1
	.long	.LASF1170
	.value	0x27d
	.uleb128 0x1
	.long	.LASF1171
	.value	0x27e
	.uleb128 0x1
	.long	.LASF1172
	.value	0x27f
	.uleb128 0x1
	.long	.LASF1173
	.value	0x280
	.uleb128 0x1
	.long	.LASF1174
	.value	0x281
	.uleb128 0x1
	.long	.LASF1175
	.value	0x282
	.uleb128 0x1
	.long	.LASF1176
	.value	0x283
	.uleb128 0x1
	.long	.LASF1177
	.value	0x284
	.uleb128 0x1
	.long	.LASF1178
	.value	0x285
	.uleb128 0x1
	.long	.LASF1179
	.value	0x286
	.uleb128 0x1
	.long	.LASF1180
	.value	0x287
	.uleb128 0x1
	.long	.LASF1181
	.value	0x288
	.uleb128 0x1
	.long	.LASF1182
	.value	0x289
	.uleb128 0x1
	.long	.LASF1183
	.value	0x28a
	.uleb128 0x1
	.long	.LASF1184
	.value	0x28b
	.uleb128 0x1
	.long	.LASF1185
	.value	0x28c
	.uleb128 0x1
	.long	.LASF1186
	.value	0x28d
	.uleb128 0x1
	.long	.LASF1187
	.value	0x28e
	.uleb128 0x1
	.long	.LASF1188
	.value	0x28f
	.uleb128 0x1
	.long	.LASF1189
	.value	0x290
	.uleb128 0x1
	.long	.LASF1190
	.value	0x291
	.uleb128 0x1
	.long	.LASF1191
	.value	0x292
	.uleb128 0x1
	.long	.LASF1192
	.value	0x293
	.uleb128 0x1
	.long	.LASF1193
	.value	0x294
	.uleb128 0x1
	.long	.LASF1194
	.value	0x295
	.uleb128 0x1
	.long	.LASF1195
	.value	0x296
	.uleb128 0x1
	.long	.LASF1196
	.value	0x297
	.uleb128 0x1
	.long	.LASF1197
	.value	0x298
	.uleb128 0x1
	.long	.LASF1198
	.value	0x299
	.uleb128 0x1
	.long	.LASF1199
	.value	0x29a
	.uleb128 0x1
	.long	.LASF1200
	.value	0x29b
	.uleb128 0x1
	.long	.LASF1201
	.value	0x29c
	.uleb128 0x1
	.long	.LASF1202
	.value	0x29d
	.uleb128 0x1
	.long	.LASF1203
	.value	0x29e
	.uleb128 0x1
	.long	.LASF1204
	.value	0x29f
	.uleb128 0x1
	.long	.LASF1205
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF1206
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF1207
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF1208
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF1209
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF1210
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF1211
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF1212
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF1213
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF1214
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF1215
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF1216
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF1217
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF1218
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF1219
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF1220
	.value	0x2af
	.uleb128 0x1
	.long	.LASF1221
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF1222
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF1223
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF1224
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF1225
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF1226
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF1227
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF1228
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF1229
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF1230
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF1231
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF1232
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF1233
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF1234
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF1235
	.value	0x2be
	.uleb128 0x1
	.long	.LASF1236
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF1237
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF1238
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF1239
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF1240
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF1241
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF1242
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF1243
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF1244
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF1245
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF1246
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF1247
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF1248
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF1249
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF1250
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF1251
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF1252
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF1253
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF1254
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF1255
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF1256
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF1257
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF1258
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF1259
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF1260
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF1261
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF1262
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF1263
	.value	0x2da
	.uleb128 0x1
	.long	.LASF1264
	.value	0x2db
	.uleb128 0x1
	.long	.LASF1265
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF1266
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF1267
	.value	0x2de
	.uleb128 0x1
	.long	.LASF1268
	.value	0x2df
	.uleb128 0x1
	.long	.LASF1269
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF1270
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF1271
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF1272
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF1273
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF1274
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF1275
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF1276
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF1277
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF1278
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF1279
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF1280
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF1281
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF1282
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF1283
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF1284
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF1285
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF1286
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF1287
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF1288
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF1289
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF1290
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF1291
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF1292
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF1293
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF1294
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF1295
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF1296
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF1297
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF1298
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF1299
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF1300
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF1301
	.value	0x300
	.uleb128 0x1
	.long	.LASF1302
	.value	0x301
	.uleb128 0x1
	.long	.LASF1303
	.value	0x302
	.uleb128 0x1
	.long	.LASF1304
	.value	0x303
	.uleb128 0x1
	.long	.LASF1305
	.value	0x304
	.uleb128 0x1
	.long	.LASF1306
	.value	0x305
	.uleb128 0x1
	.long	.LASF1307
	.value	0x306
	.uleb128 0x1
	.long	.LASF1308
	.value	0x307
	.uleb128 0x1
	.long	.LASF1309
	.value	0x308
	.uleb128 0x1
	.long	.LASF1310
	.value	0x309
	.uleb128 0x1
	.long	.LASF1311
	.value	0x30a
	.uleb128 0x1
	.long	.LASF1312
	.value	0x30b
	.uleb128 0x1
	.long	.LASF1313
	.value	0x30c
	.uleb128 0x1
	.long	.LASF1314
	.value	0x30d
	.uleb128 0x1
	.long	.LASF1315
	.value	0x30e
	.uleb128 0x1
	.long	.LASF1316
	.value	0x30f
	.uleb128 0x1
	.long	.LASF1317
	.value	0x310
	.uleb128 0x1
	.long	.LASF1318
	.value	0x311
	.uleb128 0x1
	.long	.LASF1319
	.value	0x312
	.uleb128 0x1
	.long	.LASF1320
	.value	0x313
	.uleb128 0x1
	.long	.LASF1321
	.value	0x314
	.uleb128 0x1
	.long	.LASF1322
	.value	0x315
	.uleb128 0x1
	.long	.LASF1323
	.value	0x316
	.uleb128 0x1
	.long	.LASF1324
	.value	0x317
	.uleb128 0x1
	.long	.LASF1325
	.value	0x318
	.uleb128 0x1
	.long	.LASF1326
	.value	0x319
	.uleb128 0x1
	.long	.LASF1327
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1328
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1329
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1330
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1331
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1332
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1333
	.value	0x320
	.uleb128 0x1
	.long	.LASF1334
	.value	0x321
	.uleb128 0x1
	.long	.LASF1335
	.value	0x322
	.uleb128 0x1
	.long	.LASF1336
	.value	0x323
	.uleb128 0x1
	.long	.LASF1337
	.value	0x324
	.uleb128 0x1
	.long	.LASF1338
	.value	0x325
	.uleb128 0x1
	.long	.LASF1339
	.value	0x326
	.uleb128 0x1
	.long	.LASF1340
	.value	0x327
	.uleb128 0x1
	.long	.LASF1341
	.value	0x328
	.uleb128 0x1
	.long	.LASF1342
	.value	0x329
	.uleb128 0x1
	.long	.LASF1343
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1344
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1345
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1346
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1347
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1348
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1349
	.value	0x330
	.uleb128 0x1
	.long	.LASF1350
	.value	0x331
	.uleb128 0x1
	.long	.LASF1351
	.value	0x332
	.uleb128 0x1
	.long	.LASF1352
	.value	0x333
	.uleb128 0x1
	.long	.LASF1353
	.value	0x334
	.uleb128 0x1
	.long	.LASF1354
	.value	0x335
	.uleb128 0x1
	.long	.LASF1355
	.value	0x336
	.uleb128 0x1
	.long	.LASF1356
	.value	0x337
	.uleb128 0x1
	.long	.LASF1357
	.value	0x338
	.uleb128 0x1
	.long	.LASF1358
	.value	0x339
	.uleb128 0x1
	.long	.LASF1359
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1360
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1361
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1362
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1363
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1364
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1365
	.value	0x340
	.uleb128 0x1
	.long	.LASF1366
	.value	0x341
	.uleb128 0x1
	.long	.LASF1367
	.value	0x342
	.uleb128 0x1
	.long	.LASF1368
	.value	0x343
	.uleb128 0x1
	.long	.LASF1369
	.value	0x344
	.uleb128 0x1
	.long	.LASF1370
	.value	0x345
	.uleb128 0x1
	.long	.LASF1371
	.value	0x346
	.uleb128 0x1
	.long	.LASF1372
	.value	0x347
	.uleb128 0x1
	.long	.LASF1373
	.value	0x348
	.uleb128 0x1
	.long	.LASF1374
	.value	0x349
	.uleb128 0x1
	.long	.LASF1375
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1376
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1377
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1378
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1379
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1380
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1381
	.value	0x350
	.uleb128 0x1
	.long	.LASF1382
	.value	0x351
	.uleb128 0x1
	.long	.LASF1383
	.value	0x352
	.uleb128 0x1
	.long	.LASF1384
	.value	0x353
	.uleb128 0x1
	.long	.LASF1385
	.value	0x354
	.uleb128 0x1
	.long	.LASF1386
	.value	0x355
	.uleb128 0x1
	.long	.LASF1387
	.value	0x356
	.uleb128 0x1
	.long	.LASF1388
	.value	0x357
	.uleb128 0x1
	.long	.LASF1389
	.value	0x358
	.uleb128 0x1
	.long	.LASF1390
	.value	0x359
	.uleb128 0x1
	.long	.LASF1391
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1392
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1393
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1394
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1395
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1396
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1397
	.value	0x360
	.uleb128 0x1
	.long	.LASF1398
	.value	0x361
	.uleb128 0x1
	.long	.LASF1399
	.value	0x362
	.uleb128 0x1
	.long	.LASF1400
	.value	0x363
	.uleb128 0x1
	.long	.LASF1401
	.value	0x364
	.uleb128 0x1
	.long	.LASF1402
	.value	0x365
	.uleb128 0x1
	.long	.LASF1403
	.value	0x366
	.uleb128 0x1
	.long	.LASF1404
	.value	0x367
	.uleb128 0x1
	.long	.LASF1405
	.value	0x368
	.uleb128 0x1
	.long	.LASF1406
	.value	0x369
	.uleb128 0x1
	.long	.LASF1407
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1408
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1409
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1410
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1411
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1412
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1413
	.value	0x370
	.uleb128 0x1
	.long	.LASF1414
	.value	0x371
	.uleb128 0x1
	.long	.LASF1415
	.value	0x372
	.uleb128 0x1
	.long	.LASF1416
	.value	0x373
	.uleb128 0x1
	.long	.LASF1417
	.value	0x374
	.uleb128 0x1
	.long	.LASF1418
	.value	0x375
	.uleb128 0x1
	.long	.LASF1419
	.value	0x376
	.uleb128 0x1
	.long	.LASF1420
	.value	0x377
	.uleb128 0x1
	.long	.LASF1421
	.value	0x378
	.uleb128 0x1
	.long	.LASF1422
	.value	0x379
	.uleb128 0x1
	.long	.LASF1423
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1424
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1425
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1426
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1427
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1428
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1429
	.value	0x380
	.uleb128 0x1
	.long	.LASF1430
	.value	0x381
	.uleb128 0x1
	.long	.LASF1431
	.value	0x382
	.uleb128 0x1
	.long	.LASF1432
	.value	0x383
	.uleb128 0x1
	.long	.LASF1433
	.value	0x384
	.uleb128 0x1
	.long	.LASF1434
	.value	0x385
	.uleb128 0x1
	.long	.LASF1435
	.value	0x386
	.uleb128 0x1
	.long	.LASF1436
	.value	0x387
	.uleb128 0x1
	.long	.LASF1437
	.value	0x388
	.uleb128 0x1
	.long	.LASF1438
	.value	0x389
	.uleb128 0x1
	.long	.LASF1439
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1440
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1441
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1442
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1443
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1444
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1445
	.value	0x390
	.uleb128 0x1
	.long	.LASF1446
	.value	0x391
	.uleb128 0x1
	.long	.LASF1447
	.value	0x392
	.uleb128 0x1
	.long	.LASF1448
	.value	0x393
	.uleb128 0x1
	.long	.LASF1449
	.value	0x394
	.uleb128 0x1
	.long	.LASF1450
	.value	0x395
	.uleb128 0x1
	.long	.LASF1451
	.value	0x396
	.uleb128 0x1
	.long	.LASF1452
	.value	0x397
	.uleb128 0x1
	.long	.LASF1453
	.value	0x398
	.uleb128 0x1
	.long	.LASF1454
	.value	0x399
	.uleb128 0x1
	.long	.LASF1455
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1456
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1457
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1458
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1459
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1460
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1461
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1462
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1463
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1464
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1465
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1466
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1467
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1468
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1469
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1470
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1471
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1472
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1473
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1474
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1475
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1476
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1477
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1478
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1479
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1480
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1481
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1482
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1483
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1484
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1485
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1486
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1487
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1488
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1489
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1490
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1491
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1492
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1493
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1494
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1495
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1496
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1497
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1498
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1499
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1500
	.value	0x3c7
	.byte	0
	.uleb128 0x34
	.byte	0x7
	.byte	0x4
	.long	0x9a
	.byte	0x11
	.value	0x48b
	.byte	0xe
	.long	0x4728
	.uleb128 0x2
	.long	.LASF1501
	.byte	0
	.uleb128 0x2
	.long	.LASF1502
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1503
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1504
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1505
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1506
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1507
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1508
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1509
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1510
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1511
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1512
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1513
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1514
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1515
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1516
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1517
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1518
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1519
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1520
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1521
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1522
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1523
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1524
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1525
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1526
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1527
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1528
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1529
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1530
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1531
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1532
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1533
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1534
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1535
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1536
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1537
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1538
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1539
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1540
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1541
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1542
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1543
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1544
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1545
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1546
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1547
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1548
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1549
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1550
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1551
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1552
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1553
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1554
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1555
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1556
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1557
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1558
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1559
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1560
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1561
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1562
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1563
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1564
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1565
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1566
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1567
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1568
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1569
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1570
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1571
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1572
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1573
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1574
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1575
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1576
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1577
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1578
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1579
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1580
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1581
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1582
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1583
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1584
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1585
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1586
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1587
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1588
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1589
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1590
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1591
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1592
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1593
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1594
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1595
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1596
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1597
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1598
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1599
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1600
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1601
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1602
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1603
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1604
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1605
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1606
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1607
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1608
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1609
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1610
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1611
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1612
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1613
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1614
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1615
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1616
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1617
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1618
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1619
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1620
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1621
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1622
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1623
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1624
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1625
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1626
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1627
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1628
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1629
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1630
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1631
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1632
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1633
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1634
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1635
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1636
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1637
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1638
	.byte	0x89
	.byte	0
	.uleb128 0x15
	.long	0x9a
	.byte	0x12
	.byte	0x3d
	.byte	0x1
	.long	0x4747
	.uleb128 0x2
	.long	.LASF1639
	.byte	0
	.uleb128 0x2
	.long	.LASF1640
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1641
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.long	.LASF1643
	.byte	0x14
	.byte	0x35
	.byte	0x11
	.long	0x2401
	.uleb128 0x15
	.long	0x9a
	.byte	0x15
	.byte	0x24
	.byte	0x1
	.long	0x4778
	.uleb128 0x2
	.long	.LASF1644
	.byte	0
	.uleb128 0x2
	.long	.LASF1645
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1646
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1647
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF1648
	.byte	0x15
	.byte	0x29
	.byte	0x3
	.long	0x4753
	.uleb128 0x1d
	.byte	0x10
	.byte	0x15
	.byte	0x2c
	.long	0x47c1
	.uleb128 0x5
	.long	.LASF204
	.byte	0x15
	.byte	0x2e
	.byte	0xe
	.long	0x4778
	.byte	0
	.uleb128 0x5
	.long	.LASF1649
	.byte	0x15
	.byte	0x2f
	.byte	0xa
	.long	0x77
	.byte	0x4
	.uleb128 0x5
	.long	.LASF1650
	.byte	0x15
	.byte	0x30
	.byte	0xa
	.long	0x77
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1651
	.byte	0x15
	.byte	0x31
	.byte	0xa
	.long	0x77
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	.LASF1652
	.byte	0x15
	.byte	0x32
	.byte	0x3
	.long	0x4784
	.uleb128 0x6
	.long	0x77
	.uleb128 0x10
	.long	0x47e2
	.long	0x47e2
	.uleb128 0x11
	.long	0x43
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	0x240d
	.uleb128 0x1b
	.long	.LASF192
	.byte	0x16
	.byte	0x2f
	.byte	0xf
	.long	0x47d2
	.uleb128 0x10
	.long	0x240d
	.long	0x4809
	.uleb128 0x11
	.long	0x43
	.byte	0x4
	.uleb128 0x11
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x1b
	.long	.LASF1653
	.byte	0x16
	.byte	0x33
	.byte	0xd
	.long	0x47f3
	.uleb128 0x1b
	.long	.LASF1654
	.byte	0x16
	.byte	0x34
	.byte	0xc
	.long	0x77
	.uleb128 0x1b
	.long	.LASF1655
	.byte	0x17
	.byte	0x1e
	.byte	0x10
	.long	0x15b
	.uleb128 0xf
	.long	.LASF1656
	.byte	0x3e
	.byte	0xa
	.long	0xe78
	.uleb128 0x9
	.byte	0x3
	.quad	X_display
	.uleb128 0xf
	.long	.LASF1657
	.byte	0x3f
	.byte	0x9
	.long	0x2b8
	.uleb128 0x9
	.byte	0x3
	.quad	X_mainWindow
	.uleb128 0xf
	.long	.LASF1658
	.byte	0x40
	.byte	0xa
	.long	0x2f4
	.uleb128 0x9
	.byte	0x3
	.quad	X_cmap
	.uleb128 0xf
	.long	.LASF1659
	.byte	0x41
	.byte	0xa
	.long	0x599
	.uleb128 0x9
	.byte	0x3
	.quad	X_visual
	.uleb128 0xf
	.long	.LASF1660
	.byte	0x42
	.byte	0x5
	.long	0x4d2
	.uleb128 0x9
	.byte	0x3
	.quad	X_gc
	.uleb128 0xf
	.long	.LASF1661
	.byte	0x43
	.byte	0x9
	.long	0x22c7
	.uleb128 0x9
	.byte	0x3
	.quad	X_event
	.uleb128 0xf
	.long	.LASF1662
	.byte	0x44
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	X_screen
	.uleb128 0xf
	.long	.LASF1663
	.byte	0x45
	.byte	0xd
	.long	0x236a
	.uleb128 0x9
	.byte	0x3
	.quad	X_visualinfo
	.uleb128 0xf
	.long	.LASF1664
	.byte	0x46
	.byte	0xa
	.long	0x48ea
	.uleb128 0x9
	.byte	0x3
	.quad	image
	.uleb128 0x6
	.long	0xa5c
	.uleb128 0xf
	.long	.LASF1665
	.byte	0x47
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	X_width
	.uleb128 0xf
	.long	.LASF1666
	.byte	0x48
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	X_height
	.uleb128 0xf
	.long	.LASF1667
	.byte	0x4b
	.byte	0xa
	.long	0x2401
	.uleb128 0x9
	.byte	0x3
	.quad	doShm
	.uleb128 0xf
	.long	.LASF1668
	.byte	0x4d
	.byte	0x11
	.long	0x23c0
	.uleb128 0x9
	.byte	0x3
	.quad	X_shminfo
	.uleb128 0xf
	.long	.LASF1669
	.byte	0x4e
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	X_shmeventtype
	.uleb128 0xf
	.long	.LASF1670
	.byte	0x53
	.byte	0xa
	.long	0x2401
	.uleb128 0x9
	.byte	0x3
	.quad	grabMouse
	.uleb128 0xf
	.long	.LASF1671
	.byte	0x54
	.byte	0x6
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	doPointerWarp
	.uleb128 0x1c
	.long	.LASF1673
	.byte	0x5a
	.byte	0xc
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	multiply
	.uleb128 0x1c
	.long	.LASF1674
	.byte	0xbd
	.byte	0xc
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	lastmousex
	.uleb128 0x1c
	.long	.LASF1675
	.byte	0xbe
	.byte	0xc
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	lastmousey
	.uleb128 0xf
	.long	.LASF1676
	.byte	0xbf
	.byte	0xa
	.long	0x2401
	.uleb128 0x9
	.byte	0x3
	.quad	mousemoved
	.uleb128 0xf
	.long	.LASF1677
	.byte	0xc0
	.byte	0xa
	.long	0x2401
	.uleb128 0x9
	.byte	0x3
	.quad	shmFinished
	.uleb128 0x10
	.long	0xac5
	.long	0x49fb
	.uleb128 0x11
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	.LASF1678
	.value	0x218
	.byte	0xf
	.long	0x49eb
	.uleb128 0x9
	.byte	0x3
	.quad	colors
	.uleb128 0x10
	.long	0x9a
	.long	0x4a21
	.uleb128 0x11
	.long	0x43
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.long	.LASF1679
	.value	0x397
	.byte	0xa
	.long	0x4a11
	.uleb128 0x9
	.byte	0x3
	.quad	exptable
	.uleb128 0x10
	.long	0x2701
	.long	0x4a48
	.uleb128 0x35
	.long	0x43
	.value	0xffff
	.byte	0
	.uleb128 0x1f
	.long	.LASF1680
	.value	0x3a1
	.byte	0x9
	.long	0x4a37
	.uleb128 0x9
	.byte	0x3
	.quad	exptable2
	.uleb128 0x1f
	.long	.LASF1681
	.value	0x3bd
	.byte	0x5
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	inited
	.uleb128 0xd
	.long	.LASF1682
	.byte	0x9
	.value	0x5a1
	.byte	0x10
	.long	0x48ea
	.long	0x4ab8
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x599
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x11d
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0xd
	.long	.LASF1683
	.byte	0x18
	.value	0x2a0
	.byte	0xe
	.long	0x10f
	.long	0x4acf
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0x12
	.long	.LASF1684
	.byte	0xb
	.byte	0x4e
	.byte	0x6
	.long	0x77
	.long	0x4aea
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x4aea
	.byte	0
	.uleb128 0x6
	.long	0x23c0
	.uleb128 0x36
	.long	.LASF1719
	.byte	0x13
	.value	0x36e
	.byte	0xd
	.long	0x4b02
	.uleb128 0x4
	.long	0x25ec
	.byte	0
	.uleb128 0x12
	.long	.LASF1685
	.byte	0xb
	.byte	0x6f
	.byte	0x9
	.long	0x48ea
	.long	0x4b3b
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x599
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x11d
	.uleb128 0x4
	.long	0x4aea
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.byte	0
	.uleb128 0x12
	.long	.LASF1686
	.byte	0xb
	.byte	0x3f
	.byte	0x5
	.long	0x77
	.long	0x4b51
	.uleb128 0x4
	.long	0xe78
	.byte	0
	.uleb128 0xd
	.long	.LASF1687
	.byte	0x9
	.value	0xab7
	.byte	0xc
	.long	0x77
	.long	0x4b90
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x2e8
	.uleb128 0x4
	.long	0x2ac
	.byte	0
	.uleb128 0xd
	.long	.LASF1688
	.byte	0x9
	.value	0xb04
	.byte	0xc
	.long	0x77
	.long	0x4bac
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2b8
	.byte	0
	.uleb128 0xd
	.long	.LASF1689
	.byte	0x9
	.value	0xade
	.byte	0xc
	.long	0x77
	.long	0x4bc8
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2f4
	.byte	0
	.uleb128 0xd
	.long	.LASF1690
	.byte	0x9
	.value	0x8c5
	.byte	0xc
	.long	0x77
	.long	0x4be9
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x2e8
	.byte	0
	.uleb128 0xd
	.long	.LASF1691
	.byte	0x9
	.value	0x664
	.byte	0xf
	.long	0x2b8
	.long	0x4c37
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x599
	.uleb128 0x4
	.long	0x43
	.uleb128 0x4
	.long	0x4c37
	.byte	0
	.uleb128 0x6
	.long	0x813
	.uleb128 0xd
	.long	.LASF1692
	.byte	0x9
	.value	0x610
	.byte	0x11
	.long	0x2f4
	.long	0x4c62
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x599
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x12
	.long	.LASF1693
	.byte	0x19
	.byte	0x74
	.byte	0xc
	.long	0x77
	.long	0x4c7d
	.uleb128 0x4
	.long	0x25ec
	.uleb128 0x4
	.long	0x25ec
	.byte	0
	.uleb128 0x12
	.long	.LASF1694
	.byte	0xb
	.byte	0x3b
	.byte	0x6
	.long	0x77
	.long	0x4c93
	.uleb128 0x4
	.long	0xe78
	.byte	0
	.uleb128 0xd
	.long	.LASF1695
	.byte	0xa
	.value	0x21e
	.byte	0xf
	.long	0x77
	.long	0x4cbe
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x4cbe
	.byte	0
	.uleb128 0x6
	.long	0x236a
	.uleb128 0xd
	.long	.LASF1696
	.byte	0x18
	.value	0x305
	.byte	0xe
	.long	0x11d
	.long	0x4cda
	.uleb128 0x4
	.long	0x25ec
	.byte	0
	.uleb128 0xd
	.long	.LASF1697
	.byte	0x9
	.value	0x5cb
	.byte	0x11
	.long	0xe78
	.long	0x4cf1
	.uleb128 0x4
	.long	0x25ec
	.byte	0
	.uleb128 0x37
	.long	.LASF1776
	.byte	0x13
	.value	0x1d4
	.byte	0xc
	.long	.LASF1777
	.long	0x77
	.long	0x4d12
	.uleb128 0x4
	.long	0x25ec
	.uleb128 0x4
	.long	0x25ec
	.uleb128 0x20
	.byte	0
	.uleb128 0x12
	.long	.LASF1698
	.byte	0x17
	.byte	0x22
	.byte	0x5
	.long	0x77
	.long	0x4d28
	.uleb128 0x4
	.long	0x11d
	.byte	0
	.uleb128 0x38
	.long	.LASF1778
	.byte	0x1e
	.byte	0x4f
	.byte	0x6
	.uleb128 0x12
	.long	.LASF1699
	.byte	0xc
	.byte	0x58
	.byte	0x17
	.long	0x23dc
	.long	0x4d4b
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x23dc
	.byte	0
	.uleb128 0x12
	.long	.LASF1700
	.byte	0x1a
	.byte	0x41
	.byte	0xe
	.long	0x10f
	.long	0x4d6b
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x155
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x27
	.long	.LASF1701
	.byte	0x1b
	.byte	0x25
	.byte	0xd
	.long	0x47cd
	.uleb128 0x28
	.long	.LASF1702
	.byte	0x1c
	.value	0x2b9
	.byte	0x10
	.long	0xaf
	.uleb128 0xd
	.long	.LASF1703
	.byte	0x13
	.value	0x165
	.byte	0xc
	.long	0x77
	.long	0x4da1
	.uleb128 0x4
	.long	0x25fb
	.uleb128 0x4
	.long	0x25f1
	.uleb128 0x20
	.byte	0
	.uleb128 0x12
	.long	.LASF1704
	.byte	0x1a
	.byte	0x3e
	.byte	0xc
	.long	0x77
	.long	0x4dc1
	.uleb128 0x4
	.long	0x122
	.uleb128 0x4
	.long	0x6b
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0xd
	.long	.LASF1705
	.byte	0x9
	.value	0xd4a
	.byte	0xc
	.long	0x77
	.long	0x4de7
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2f4
	.uleb128 0x4
	.long	0x4de7
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x6
	.long	0xac5
	.uleb128 0x12
	.long	.LASF1706
	.byte	0x1d
	.byte	0x2b
	.byte	0xe
	.long	0x10f
	.long	0x4e0c
	.uleb128 0x4
	.long	0x10f
	.uleb128 0x4
	.long	0x155
	.uleb128 0x4
	.long	0x6b
	.byte	0
	.uleb128 0xd
	.long	.LASF1707
	.byte	0x9
	.value	0xd5f
	.byte	0xc
	.long	0x77
	.long	0x4e28
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0xd
	.long	.LASF1708
	.byte	0x9
	.value	0xb65
	.byte	0xc
	.long	0x77
	.long	0x4e6c
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2c4
	.uleb128 0x4
	.long	0x4d2
	.uleb128 0x4
	.long	0x48ea
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.byte	0
	.uleb128 0x12
	.long	.LASF1709
	.byte	0xb
	.byte	0x58
	.byte	0x6
	.long	0x77
	.long	0x4eb4
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2c4
	.uleb128 0x4
	.long	0x4d2
	.uleb128 0x4
	.long	0x48ea
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x27
	.long	.LASF1710
	.byte	0x1e
	.byte	0x2d
	.byte	0x5
	.long	0x77
	.uleb128 0xd
	.long	.LASF1711
	.byte	0x9
	.value	0xdc8
	.byte	0xc
	.long	0x77
	.long	0x4eff
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x2b8
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0xd
	.long	.LASF1712
	.byte	0x9
	.value	0xb4f
	.byte	0xc
	.long	0x77
	.long	0x4f16
	.uleb128 0x4
	.long	0xe78
	.byte	0
	.uleb128 0xd
	.long	.LASF1713
	.byte	0x9
	.value	0xa0f
	.byte	0xc
	.long	0x77
	.long	0x4f32
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x4d2
	.byte	0
	.uleb128 0xd
	.long	.LASF1714
	.byte	0x9
	.value	0xa18
	.byte	0xc
	.long	0x77
	.long	0x4f4e
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2dc
	.byte	0
	.uleb128 0xd
	.long	.LASF1715
	.byte	0x9
	.value	0x616
	.byte	0xf
	.long	0x2e8
	.long	0x4f83
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2dc
	.uleb128 0x4
	.long	0x2dc
	.uleb128 0x4
	.long	0x4de7
	.uleb128 0x4
	.long	0x4de7
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.byte	0
	.uleb128 0xd
	.long	.LASF1716
	.byte	0x9
	.value	0x9c7
	.byte	0xc
	.long	0x77
	.long	0x4fb8
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2c4
	.uleb128 0x4
	.long	0x4d2
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.byte	0
	.uleb128 0xd
	.long	.LASF1717
	.byte	0x9
	.value	0x630
	.byte	0xb
	.long	0x4d2
	.long	0x4fde
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2c4
	.uleb128 0x4
	.long	0x43
	.uleb128 0x4
	.long	0x4fde
	.byte	0
	.uleb128 0x6
	.long	0x4c6
	.uleb128 0xd
	.long	.LASF1718
	.byte	0x9
	.value	0x63d
	.byte	0xf
	.long	0x2dc
	.long	0x500e
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x2c4
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.uleb128 0x4
	.long	0x9a
	.byte	0
	.uleb128 0x29
	.long	.LASF1720
	.byte	0x1f
	.byte	0x34
	.long	0x501f
	.uleb128 0x4
	.long	0x501f
	.byte	0
	.uleb128 0x6
	.long	0x47c1
	.uleb128 0xd
	.long	.LASF1721
	.byte	0x9
	.value	0xb27
	.byte	0xc
	.long	0x77
	.long	0x5040
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x5040
	.byte	0
	.uleb128 0x6
	.long	0x22c7
	.uleb128 0x12
	.long	.LASF1722
	.byte	0x1a
	.byte	0x32
	.byte	0xc
	.long	0x77
	.long	0x5065
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x77
	.uleb128 0x4
	.long	0x5065
	.byte	0
	.uleb128 0x6
	.long	0x1f8
	.uleb128 0x12
	.long	.LASF1723
	.byte	0x1a
	.byte	0x45
	.byte	0xc
	.long	0x77
	.long	0x5080
	.uleb128 0x4
	.long	0x155
	.byte	0
	.uleb128 0x29
	.long	.LASF1724
	.byte	0x1e
	.byte	0x59
	.long	0x5092
	.uleb128 0x4
	.long	0x11d
	.uleb128 0x20
	.byte	0
	.uleb128 0x12
	.long	.LASF1725
	.byte	0xb
	.byte	0x53
	.byte	0x6
	.long	0x77
	.long	0x50ad
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x4aea
	.byte	0
	.uleb128 0xd
	.long	.LASF1726
	.byte	0x9
	.value	0x697
	.byte	0xf
	.long	0x300
	.long	0x50ce
	.uleb128 0x4
	.long	0xe78
	.uleb128 0x4
	.long	0x30c
	.uleb128 0x4
	.long	0x77
	.byte	0
	.uleb128 0x16
	.long	.LASF1732
	.value	0x3c0
	.byte	0x1
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x5161
	.uleb128 0x17
	.long	.LASF1727
	.value	0x3c1
	.byte	0xd
	.long	0x5161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF1728
	.value	0x3c2
	.byte	0xb
	.long	0x5166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.long	.LASF1729
	.value	0x3c4
	.byte	0xc
	.long	0x2701
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"x"
	.value	0x3c5
	.byte	0xe
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"y"
	.value	0x3c6
	.byte	0xf
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF1730
	.value	0x3c7
	.byte	0xe
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF1731
	.value	0x3c8
	.byte	0xe
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"exp"
	.value	0x3c9
	.byte	0xd
	.long	0x5166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	0x9a
	.uleb128 0x6
	.long	0x2701
	.uleb128 0x16
	.long	.LASF1733
	.value	0x3a3
	.byte	0x6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x51e3
	.uleb128 0xe
	.string	"i"
	.value	0x3a5
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"j"
	.value	0x3a6
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"exp"
	.value	0x3a8
	.byte	0xd
	.long	0x5166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.byte	0x8
	.byte	0x1
	.value	0x3a9
	.byte	0x5
	.long	0x51d3
	.uleb128 0x1a
	.string	"d"
	.byte	0x1
	.value	0x3ab
	.byte	0xb
	.long	0x2701
	.uleb128 0x1a
	.string	"u"
	.byte	0x1
	.value	0x3ac
	.byte	0xb
	.long	0x135
	.byte	0
	.uleb128 0xb
	.long	.LASF158
	.value	0x3ad
	.byte	0x7
	.long	0x51b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF1734
	.byte	0x1
	.value	0x399
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x5210
	.uleb128 0xe
	.string	"i"
	.value	0x39b
	.byte	0xa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF1735
	.value	0x2b4
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x530d
	.uleb128 0xb
	.long	.LASF1736
	.value	0x2b7
	.byte	0xc
	.long	0x11d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0xe
	.string	"d"
	.value	0x2b8
	.byte	0xc
	.long	0x11d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0xe
	.string	"n"
	.value	0x2b9
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0xb
	.long	.LASF1737
	.value	0x2ba
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0xe
	.string	"x"
	.value	0x2bb
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0xe
	.string	"y"
	.value	0x2bc
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0xb
	.long	.LASF1738
	.value	0x2bf
	.byte	0xb
	.long	0x4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -354
	.uleb128 0xb
	.long	.LASF1739
	.value	0x2c0
	.byte	0xb
	.long	0x4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -353
	.uleb128 0xb
	.long	.LASF1740
	.value	0x2c2
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0xb
	.long	.LASF1741
	.value	0x2c3
	.byte	0x13
	.long	0x43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0xb
	.long	.LASF1742
	.value	0x2c4
	.byte	0x1a
	.long	0x813
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0xb
	.long	.LASF1743
	.value	0x2c5
	.byte	0x10
	.long	0x4c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xb
	.long	.LASF1744
	.value	0x2c6
	.byte	0xb
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0xb
	.long	.LASF1745
	.value	0x2c7
	.byte	0x11
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	firsttime.0
	.byte	0
	.uleb128 0x16
	.long	.LASF1746
	.value	0x253
	.byte	0x6
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x53b9
	.uleb128 0x17
	.long	.LASF1747
	.value	0x253
	.byte	0x1b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0xe
	.string	"key"
	.value	0x256
	.byte	0x9
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0xb
	.long	.LASF1748
	.value	0x257
	.byte	0x13
	.long	0x1f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xb
	.long	.LASF1749
	.value	0x258
	.byte	0x9
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xe
	.string	"id"
	.value	0x259
	.byte	0x9
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xe
	.string	"rc"
	.value	0x25a
	.byte	0x9
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xb
	.long	.LASF1750
	.value	0x25c
	.byte	0x9
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x28
	.long	.LASF1701
	.byte	0x1
	.value	0x29d
	.byte	0xd
	.long	0x47cd
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF1751
	.value	0x246
	.byte	0x6
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x53e7
	.uleb128 0x17
	.long	.LASF1752
	.value	0x246
	.byte	0x1a
	.long	0x47e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF1753
	.value	0x21a
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x5452
	.uleb128 0x17
	.long	.LASF111
	.value	0x21a
	.byte	0x20
	.long	0x2f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF1752
	.value	0x21a
	.byte	0x2c
	.long	0x47e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"i"
	.value	0x21d
	.byte	0x12
	.long	0x77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"c"
	.value	0x21e
	.byte	0x12
	.long	0x77
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF1754
	.value	0x21f
	.byte	0x14
	.long	0x2401
	.uleb128 0x9
	.byte	0x3
	.quad	firstcall.1
	.byte	0
	.uleb128 0x16
	.long	.LASF1755
	.value	0x20f
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x5481
	.uleb128 0x3a
	.string	"scr"
	.byte	0x1
	.value	0x20f
	.byte	0x1a
	.long	0x47e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF1756
	.value	0x160
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x5607
	.uleb128 0xb
	.long	.LASF1757
	.value	0x163
	.byte	0x10
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	lasttic.2
	.uleb128 0xb
	.long	.LASF1758
	.value	0x164
	.byte	0xa
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xe
	.string	"i"
	.value	0x165
	.byte	0xa
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x5562
	.uleb128 0xb
	.long	.LASF1759
	.value	0x17b
	.byte	0x10
	.long	0x5607
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF1760
	.value	0x17c
	.byte	0x10
	.long	0x5161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.string	"x"
	.value	0x17d
	.byte	0x6
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xe
	.string	"y"
	.value	0x17d
	.byte	0x9
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xe
	.string	"i"
	.value	0x17d
	.byte	0xc
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xb
	.long	.LASF1761
	.value	0x17e
	.byte	0xf
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xb
	.long	.LASF1762
	.value	0x17f
	.byte	0xf
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xb
	.long	.LASF1763
	.value	0x180
	.byte	0xf
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x55e0
	.uleb128 0xb
	.long	.LASF1759
	.value	0x1a6
	.byte	0x10
	.long	0x5617
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF1760
	.value	0x1a7
	.byte	0x10
	.long	0x5161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.string	"x"
	.value	0x1a8
	.byte	0x6
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xe
	.string	"y"
	.value	0x1a8
	.byte	0x9
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xe
	.string	"i"
	.value	0x1a8
	.byte	0xc
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xb
	.long	.LASF1764
	.value	0x1a9
	.byte	0xf
	.long	0x5627
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.long	.LASF1763
	.value	0x1aa
	.byte	0xf
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x3b
	.long	.LASF1732
	.byte	0x1
	.value	0x1df
	.byte	0x7
	.uleb128 0x4
	.long	0x5161
	.uleb128 0x4
	.long	0x5166
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x5161
	.long	0x5617
	.uleb128 0x11
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	0x5161
	.long	0x5627
	.uleb128 0x11
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	0x9a
	.long	0x5637
	.uleb128 0x11
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x3c
	.long	.LASF1765
	.byte	0x1
	.value	0x158
	.byte	0x6
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.long	.LASF1766
	.byte	0x1
	.value	0x135
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.long	.LASF1779
	.byte	0x1
	.value	0x11a
	.byte	0x1
	.long	0x2e8
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x5700
	.uleb128 0x17
	.long	.LASF100
	.value	0x11b
	.byte	0xc
	.long	0xe78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x17
	.long	.LASF101
	.value	0x11c
	.byte	0xa
	.long	0x2b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xb
	.long	.LASF1767
	.value	0x11e
	.byte	0xc
	.long	0x2dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0xe
	.string	"xgc"
	.value	0x11f
	.byte	0xf
	.long	0x4c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xe
	.string	"gc"
	.value	0x120
	.byte	0x8
	.long	0x4d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0xb
	.long	.LASF1768
	.value	0x121
	.byte	0xc
	.long	0xac5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xb
	.long	.LASF138
	.value	0x122
	.byte	0xc
	.long	0x2e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x3f
	.long	.LASF1769
	.byte	0x1
	.byte	0xc2
	.byte	0x6
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x572d
	.uleb128 0x1c
	.long	.LASF237
	.byte	0xc5
	.byte	0xd
	.long	0x47c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x40
	.long	.LASF1770
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x41
	.long	.LASF1771
	.byte	0x1
	.byte	0xa4
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x42
	.long	.LASF1772
	.byte	0x1
	.byte	0x61
	.byte	0x5
	.long	0x77
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x43
	.string	"rc"
	.byte	0x1
	.byte	0x64
	.byte	0x9
	.long	0x77
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x16
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
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x32
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x7c
	.uleb128 0x19
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
.LASF123:
	.string	"scanline_pad"
.LASF5:
	.string	"long long int"
.LASF484:
	.string	"SPR_LAUN"
.LASF1111:
	.string	"S_BOS2_RAISE1"
.LASF128:
	.string	"border_pixel"
.LASF1113:
	.string	"S_BOS2_RAISE3"
.LASF1114:
	.string	"S_BOS2_RAISE4"
.LASF1115:
	.string	"S_BOS2_RAISE5"
.LASF1116:
	.string	"S_BOS2_RAISE6"
.LASF1117:
	.string	"S_BOS2_RAISE7"
.LASF1648:
	.string	"evtype_t"
.LASF433:
	.string	"SPR_SARG"
.LASF482:
	.string	"SPR_MGUN"
.LASF141:
	.string	"create_image"
.LASF28:
	.string	"__pad2"
.LASF354:
	.string	"__pad5"
.LASF1649:
	.string	"data1"
.LASF1650:
	.string	"data2"
.LASF1278:
	.string	"S_SSWV_DIE2"
.LASF2:
	.string	"long unsigned int"
.LASF1507:
	.string	"MT_TRACER"
.LASF1774:
	.string	"_XEvent"
.LASF34:
	.string	"shm_perm"
.LASF271:
	.string	"XErrorEvent"
.LASF516:
	.string	"SPR_TGRN"
.LASF579:
	.string	"S_DSNR2"
.LASF1486:
	.string	"S_HANGTSKULL"
.LASF1237:
	.string	"S_PAIN_RUN3"
.LASF353:
	.string	"_freeres_buf"
.LASF1239:
	.string	"S_PAIN_RUN5"
.LASF262:
	.string	"XSelectionEvent"
.LASF577:
	.string	"S_DSGUN10"
.LASF1336:
	.string	"S_ARM1A"
.LASF394:
	.string	"SPR_TROO"
.LASF119:
	.string	"_XGC"
.LASF1530:
	.string	"MT_SPAWNFIRE"
.LASF210:
	.string	"x_root"
.LASF177:
	.string	"release"
.LASF1401:
	.string	"S_PVIS"
.LASF608:
	.string	"S_PLASMADOWN"
.LASF1490:
	.string	"S_SMALLPOOL"
.LASF1395:
	.string	"S_PMAP"
.LASF590:
	.string	"S_MISSILE"
.LASF610:
	.string	"S_PLASMA1"
.LASF611:
	.string	"S_PLASMA2"
.LASF1010:
	.string	"S_SARG_RUN1"
.LASF1011:
	.string	"S_SARG_RUN2"
.LASF1012:
	.string	"S_SARG_RUN3"
.LASF1013:
	.string	"S_SARG_RUN4"
.LASF1014:
	.string	"S_SARG_RUN5"
.LASF1015:
	.string	"S_SARG_RUN6"
.LASF1016:
	.string	"S_SARG_RUN7"
.LASF1017:
	.string	"S_SARG_RUN8"
.LASF174:
	.string	"nformats"
.LASF195:
	.string	"min_keycode"
.LASF452:
	.string	"SPR_BEXP"
.LASF592:
	.string	"S_MISSILEUP"
.LASF975:
	.string	"S_TROO_STND"
.LASF267:
	.string	"XMappingEvent"
.LASF114:
	.string	"max_maps"
.LASF92:
	.string	"blue_mask"
.LASF968:
	.string	"S_CPOS_RAISE1"
.LASF969:
	.string	"S_CPOS_RAISE2"
.LASF970:
	.string	"S_CPOS_RAISE3"
.LASF971:
	.string	"S_CPOS_RAISE4"
.LASF972:
	.string	"S_CPOS_RAISE5"
.LASF973:
	.string	"S_CPOS_RAISE6"
.LASF974:
	.string	"S_CPOS_RAISE7"
.LASF1504:
	.string	"MT_VILE"
.LASF1658:
	.string	"X_cmap"
.LASF103:
	.string	"height"
.LASF1369:
	.string	"S_RSKULL"
.LASF1476:
	.string	"S_GTORCHSHRT2"
.LASF1477:
	.string	"S_GTORCHSHRT3"
.LASF1478:
	.string	"S_GTORCHSHRT4"
.LASF1471:
	.string	"S_BTORCHSHRT"
.LASF1367:
	.string	"S_BSKULL"
.LASF1741:
	.string	"attribmask"
.LASF673:
	.string	"S_TFOG9"
.LASF84:
	.string	"dash_offset"
.LASF1738:
	.string	"xsign"
.LASF138:
	.string	"cursor"
.LASF1664:
	.string	"image"
.LASF426:
	.string	"SPR_FIRE"
.LASF405:
	.string	"SPR_SAWG"
.LASF302:
	.string	"xselectionrequest"
.LASF681:
	.string	"S_IFOG5"
.LASF1180:
	.string	"S_BSPI_ATK1"
.LASF1181:
	.string	"S_BSPI_ATK2"
.LASF1182:
	.string	"S_BSPI_ATK3"
.LASF1183:
	.string	"S_BSPI_ATK4"
.LASF325:
	.string	"boolean"
.LASF1247:
	.string	"S_PAIN_DIE1"
.LASF1248:
	.string	"S_PAIN_DIE2"
.LASF1249:
	.string	"S_PAIN_DIE3"
.LASF1250:
	.string	"S_PAIN_DIE4"
.LASF1251:
	.string	"S_PAIN_DIE5"
.LASF1252:
	.string	"S_PAIN_DIE6"
.LASF490:
	.string	"SPR_GOR1"
.LASF497:
	.string	"SPR_GOR2"
.LASF498:
	.string	"SPR_GOR3"
.LASF499:
	.string	"SPR_GOR4"
.LASF500:
	.string	"SPR_GOR5"
.LASF1312:
	.string	"S_BRAIN_PAIN"
.LASF597:
	.string	"S_MISSILEFLASH2"
.LASF551:
	.string	"S_SGUN"
.LASF507:
	.string	"SPR_CBRA"
.LASF256:
	.string	"XSelectionClearEvent"
.LASF51:
	.string	"Cursor"
.LASF1310:
	.string	"S_KEENPAIN2"
.LASF533:
	.string	"S_NULL"
.LASF155:
	.string	"bytes_per_line"
.LASF1514:
	.string	"MT_SHADOWS"
.LASF1695:
	.string	"XMatchVisualInfo"
.LASF112:
	.string	"white_pixel"
.LASF607:
	.string	"S_PLASMA"
.LASF52:
	.string	"Colormap"
.LASF1072:
	.string	"S_BOSS_ATK3"
.LASF1502:
	.string	"MT_POSSESSED"
.LASF248:
	.string	"value_mask"
.LASF1318:
	.string	"S_BRAINEYESEE"
.LASF1645:
	.string	"ev_keyup"
.LASF1082:
	.string	"S_BOSS_RAISE1"
.LASF1083:
	.string	"S_BOSS_RAISE2"
.LASF1084:
	.string	"S_BOSS_RAISE3"
.LASF1085:
	.string	"S_BOSS_RAISE4"
.LASF1086:
	.string	"S_BOSS_RAISE5"
.LASF1087:
	.string	"S_BOSS_RAISE6"
.LASF1088:
	.string	"S_BOSS_RAISE7"
.LASF24:
	.string	"cuid"
.LASF985:
	.string	"S_TROO_ATK1"
.LASF986:
	.string	"S_TROO_ATK2"
.LASF987:
	.string	"S_TROO_ATK3"
.LASF163:
	.string	"Display"
.LASF102:
	.string	"width"
.LASF1728:
	.string	"xline"
.LASF1779:
	.string	"createnullcursor"
.LASF133:
	.string	"save_under"
.LASF377:
	.string	"NUMWEAPONS"
.LASF65:
	.string	"foreground"
.LASF1335:
	.string	"S_ARM1"
.LASF1337:
	.string	"S_ARM2"
.LASF1776:
	.string	"sscanf"
.LASF1373:
	.string	"S_STIM"
.LASF475:
	.string	"SPR_BROK"
.LASF1362:
	.string	"S_BKEY2"
.LASF564:
	.string	"S_SGUNFLASH2"
.LASF760:
	.string	"S_SPOS_XDIE1"
.LASF761:
	.string	"S_SPOS_XDIE2"
.LASF762:
	.string	"S_SPOS_XDIE3"
.LASF763:
	.string	"S_SPOS_XDIE4"
.LASF764:
	.string	"S_SPOS_XDIE5"
.LASF765:
	.string	"S_SPOS_XDIE6"
.LASF766:
	.string	"S_SPOS_XDIE7"
.LASF767:
	.string	"S_SPOS_XDIE8"
.LASF768:
	.string	"S_SPOS_XDIE9"
.LASF55:
	.string	"long double"
.LASF93:
	.string	"bits_per_rgb"
.LASF1425:
	.string	"S_DEADTORSO"
.LASF404:
	.string	"SPR_MISF"
.LASF403:
	.string	"SPR_MISG"
.LASF323:
	.string	"false"
.LASF132:
	.string	"backing_pixel"
.LASF1660:
	.string	"X_gc"
.LASF1319:
	.string	"S_BRAINEYE1"
.LASF40:
	.string	"shm_lpid"
.LASF1719:
	.string	"perror"
.LASF360:
	.string	"_IO_wide_data"
.LASF460:
	.string	"SPR_RSKU"
.LASF389:
	.string	"pw_allmap"
.LASF1435:
	.string	"S_MEAT2"
.LASF1436:
	.string	"S_MEAT3"
.LASF1437:
	.string	"S_MEAT4"
.LASF1438:
	.string	"S_MEAT5"
.LASF609:
	.string	"S_PLASMAUP"
.LASF1756:
	.string	"I_FinishUpdate"
.LASF543:
	.string	"S_PISTOL"
.LASF1450:
	.string	"S_EVILEYE"
.LASF532:
	.string	"NUMSPRITES"
.LASF687:
	.string	"S_PLAY_ATK1"
.LASF688:
	.string	"S_PLAY_ATK2"
.LASF109:
	.string	"root_visual"
.LASF382:
	.string	"am_misl"
.LASF1342:
	.string	"S_BEXP2"
.LASF1343:
	.string	"S_BEXP3"
.LASF1344:
	.string	"S_BEXP4"
.LASF1345:
	.string	"S_BEXP5"
.LASF486:
	.string	"SPR_SHOT"
.LASF1439:
	.string	"S_STALAGTITE"
.LASF308:
	.string	"xkeymap"
.LASF529:
	.string	"SPR_BRS1"
.LASF1690:
	.string	"XDefineCursor"
.LASF1670:
	.string	"grabMouse"
.LASF552:
	.string	"S_SGUNDOWN"
.LASF1672:
	.string	"rcsid"
.LASF215:
	.string	"XKeyEvent"
.LASF1717:
	.string	"XCreateGC"
.LASF1551:
	.string	"MT_MISC7"
.LASF1552:
	.string	"MT_MISC8"
.LASF1553:
	.string	"MT_MISC9"
.LASF57:
	.string	"_XExtData"
.LASF1760:
	.string	"ilineptr"
.LASF1673:
	.string	"multiply"
.LASF280:
	.string	"xbutton"
.LASF1747:
	.string	"size"
.LASF126:
	.string	"background_pixel"
.LASF640:
	.string	"S_PLASBALL"
.LASF1190:
	.string	"S_BSPI_DIE5"
.LASF1186:
	.string	"S_BSPI_DIE1"
.LASF214:
	.string	"same_screen"
.LASF263:
	.string	"XColormapEvent"
.LASF461:
	.string	"SPR_YSKU"
.LASF504:
	.string	"SPR_COL3"
.LASF505:
	.string	"SPR_COL4"
.LASF514:
	.string	"SPR_COL5"
.LASF508:
	.string	"SPR_COL6"
.LASF1441:
	.string	"S_SHRTGRNCOL"
.LASF1651:
	.string	"data3"
.LASF488:
	.string	"SPR_COLU"
.LASF253:
	.string	"atom"
.LASF44:
	.string	"Atom"
.LASF80:
	.string	"graphics_exposures"
.LASF77:
	.string	"ts_y_origin"
.LASF368:
	.string	"wp_fist"
.LASF647:
	.string	"S_ROCKET"
.LASF356:
	.string	"_unused2"
.LASF11:
	.string	"size_t"
.LASF892:
	.string	"S_FATSHOTX1"
.LASF893:
	.string	"S_FATSHOTX2"
.LASF894:
	.string	"S_FATSHOTX3"
.LASF388:
	.string	"pw_ironfeet"
.LASF1422:
	.string	"S_BLOODYTWITCH2"
.LASF990:
	.string	"S_TROO_DIE1"
.LASF991:
	.string	"S_TROO_DIE2"
.LASF992:
	.string	"S_TROO_DIE3"
.LASF993:
	.string	"S_TROO_DIE4"
.LASF994:
	.string	"S_TROO_DIE5"
.LASF1429:
	.string	"S_HEADONASTICK"
.LASF237:
	.string	"event"
.LASF742:
	.string	"S_SPOS_RUN1"
.LASF743:
	.string	"S_SPOS_RUN2"
.LASF744:
	.string	"S_SPOS_RUN3"
.LASF745:
	.string	"S_SPOS_RUN4"
.LASF746:
	.string	"S_SPOS_RUN5"
.LASF747:
	.string	"S_SPOS_RUN6"
.LASF748:
	.string	"S_SPOS_RUN7"
.LASF749:
	.string	"S_SPOS_RUN8"
.LASF439:
	.string	"SPR_SPID"
.LASF1317:
	.string	"S_BRAINEYE"
.LASF434:
	.string	"SPR_HEAD"
.LASF1120:
	.string	"S_SKULL_RUN1"
.LASF1121:
	.string	"S_SKULL_RUN2"
.LASF1134:
	.string	"S_SPID_STND"
.LASF355:
	.string	"_mode"
.LASF1090:
	.string	"S_BOS2_STND2"
.LASF882:
	.string	"S_SKEL_DIE5"
.LASF803:
	.string	"S_VILE_PAIN2"
.LASF1307:
	.string	"S_COMMKEEN11"
.LASF1308:
	.string	"S_COMMKEEN12"
.LASF1349:
	.string	"S_BON1"
.LASF1355:
	.string	"S_BON2"
.LASF954:
	.string	"S_CPOS_PAIN2"
.LASF117:
	.string	"save_unders"
.LASF442:
	.string	"SPR_APBX"
.LASF391:
	.string	"NUMPOWERS"
.LASF243:
	.string	"XReparentEvent"
.LASF456:
	.string	"SPR_BKEY"
.LASF362:
	.string	"it_yellowcard"
.LASF180:
	.string	"qlen"
.LASF1427:
	.string	"S_HEADSONSTICK"
.LASF61:
	.string	"private_data"
.LASF617:
	.string	"S_BFG1"
.LASF618:
	.string	"S_BFG2"
.LASF619:
	.string	"S_BFG3"
.LASF620:
	.string	"S_BFG4"
.LASF580:
	.string	"S_DSGUNFLASH1"
.LASF581:
	.string	"S_DSGUNFLASH2"
.LASF1489:
	.string	"S_COLONGIBS"
.LASF632:
	.string	"S_TBALLX1"
.LASF633:
	.string	"S_TBALLX2"
.LASF634:
	.string	"S_TBALLX3"
.LASF663:
	.string	"S_TFOG"
.LASF593:
	.string	"S_MISSILE1"
.LASF594:
	.string	"S_MISSILE2"
.LASF595:
	.string	"S_MISSILE3"
.LASF69:
	.string	"cap_style"
.LASF285:
	.string	"xgraphicsexpose"
.LASF275:
	.string	"XGenericEvent"
.LASF1073:
	.string	"S_BOSS_PAIN"
.LASF1642:
	.string	"stderr"
.LASF50:
	.string	"Pixmap"
.LASF535:
	.string	"S_PUNCH"
.LASF148:
	.string	"xoffset"
.LASF1135:
	.string	"S_SPID_STND2"
.LASF1464:
	.string	"S_GREENTORCH2"
.LASF919:
	.string	"S_FATT_PAIN"
.LASF320:
	.string	"readOnly"
.LASF691:
	.string	"S_PLAY_DIE1"
.LASF692:
	.string	"S_PLAY_DIE2"
.LASF693:
	.string	"S_PLAY_DIE3"
.LASF694:
	.string	"S_PLAY_DIE4"
.LASF695:
	.string	"S_PLAY_DIE5"
.LASF696:
	.string	"S_PLAY_DIE6"
.LASF697:
	.string	"S_PLAY_DIE7"
.LASF87:
	.string	"ext_data"
.LASF1558:
	.string	"MT_MISC13"
.LASF383:
	.string	"NUMAMMO"
.LASF373:
	.string	"wp_plasma"
.LASF1657:
	.string	"X_mainWindow"
.LASF1148:
	.string	"S_SPID_ATK1"
.LASF1149:
	.string	"S_SPID_ATK2"
.LASF1150:
	.string	"S_SPID_ATK3"
.LASF1151:
	.string	"S_SPID_ATK4"
.LASF125:
	.string	"background_pixmap"
.LASF563:
	.string	"S_SGUNFLASH1"
.LASF190:
	.string	"default_screen"
.LASF1403:
	.string	"S_CLIP"
.LASF240:
	.string	"XUnmapEvent"
.LASF1537:
	.string	"MT_ARACHPLAZ"
.LASF1638:
	.string	"NUMMOBJTYPES"
.LASF1008:
	.string	"S_SARG_STND"
.LASF920:
	.string	"S_FATT_PAIN2"
.LASF676:
	.string	"S_IFOG01"
.LASF677:
	.string	"S_IFOG02"
.LASF1739:
	.string	"ysign"
.LASF346:
	.string	"_vtable_offset"
.LASF241:
	.string	"XMapEvent"
.LASF467:
	.string	"SPR_PINS"
.LASF465:
	.string	"SPR_PINV"
.LASF424:
	.string	"SPR_SPOS"
.LASF565:
	.string	"S_DSGUN"
.LASF106:
	.string	"ndepths"
.LASF1656:
	.string	"X_display"
.LASF230:
	.string	"minor_code"
.LASF989:
	.string	"S_TROO_PAIN2"
.LASF1715:
	.string	"XCreatePixmapCursor"
.LASF1332:
	.string	"S_BRAINEXPLODE1"
.LASF1698:
	.string	"M_CheckParm"
.LASF1333:
	.string	"S_BRAINEXPLODE2"
.LASF1334:
	.string	"S_BRAINEXPLODE3"
.LASF1447:
	.string	"S_TORCHTREE"
.LASF1531:
	.string	"MT_BARREL"
.LASF1555:
	.string	"MT_MISC11"
.LASF1556:
	.string	"MT_MISC12"
.LASF233:
	.string	"XVisibilityEvent"
.LASF1560:
	.string	"MT_MISC14"
.LASF1561:
	.string	"MT_MISC15"
.LASF1562:
	.string	"MT_MISC16"
.LASF1565:
	.string	"MT_MISC17"
.LASF1566:
	.string	"MT_MISC18"
.LASF1567:
	.string	"MT_MISC19"
.LASF1341:
	.string	"S_BEXP"
.LASF1185:
	.string	"S_BSPI_PAIN2"
.LASF814:
	.string	"S_FIRE1"
.LASF815:
	.string	"S_FIRE2"
.LASF816:
	.string	"S_FIRE3"
.LASF817:
	.string	"S_FIRE4"
.LASF818:
	.string	"S_FIRE5"
.LASF819:
	.string	"S_FIRE6"
.LASF820:
	.string	"S_FIRE7"
.LASF821:
	.string	"S_FIRE8"
.LASF822:
	.string	"S_FIRE9"
.LASF365:
	.string	"it_yellowskull"
.LASF75:
	.string	"stipple"
.LASF1539:
	.string	"MT_BLOOD"
.LASF115:
	.string	"min_maps"
.LASF1568:
	.string	"MT_MISC20"
.LASF1569:
	.string	"MT_MISC21"
.LASF1570:
	.string	"MT_MISC22"
.LASF1564:
	.string	"MT_CLIP"
.LASF1572:
	.string	"MT_MISC24"
.LASF1573:
	.string	"MT_MISC25"
.LASF1575:
	.string	"MT_MISC26"
.LASF515:
	.string	"SPR_TBLU"
.LASF1371:
	.string	"S_YSKULL"
.LASF602:
	.string	"S_SAWDOWN"
.LASF1694:
	.string	"XShmQueryExtension"
.LASF1261:
	.string	"S_SSWV_RUN1"
.LASF1262:
	.string	"S_SSWV_RUN2"
.LASF1263:
	.string	"S_SSWV_RUN3"
.LASF1264:
	.string	"S_SSWV_RUN4"
.LASF1265:
	.string	"S_SSWV_RUN5"
.LASF1266:
	.string	"S_SSWV_RUN6"
.LASF1267:
	.string	"S_SSWV_RUN7"
.LASF1268:
	.string	"S_SSWV_RUN8"
.LASF369:
	.string	"wp_pistol"
.LASF698:
	.string	"S_PLAY_XDIE1"
.LASF699:
	.string	"S_PLAY_XDIE2"
.LASF700:
	.string	"S_PLAY_XDIE3"
.LASF701:
	.string	"S_PLAY_XDIE4"
.LASF702:
	.string	"S_PLAY_XDIE5"
.LASF703:
	.string	"S_PLAY_XDIE6"
.LASF704:
	.string	"S_PLAY_XDIE7"
.LASF705:
	.string	"S_PLAY_XDIE8"
.LASF706:
	.string	"S_PLAY_XDIE9"
.LASF1559:
	.string	"MT_INS"
.LASF1557:
	.string	"MT_INV"
.LASF612:
	.string	"S_PLASMAFLASH1"
.LASF613:
	.string	"S_PLASMAFLASH2"
.LASF1583:
	.string	"MT_MISC32"
.LASF1584:
	.string	"MT_MISC33"
.LASF1585:
	.string	"MT_MISC34"
.LASF1586:
	.string	"MT_MISC35"
.LASF1587:
	.string	"MT_MISC36"
.LASF1588:
	.string	"MT_MISC37"
.LASF1589:
	.string	"MT_MISC38"
.LASF1590:
	.string	"MT_MISC39"
.LASF483:
	.string	"SPR_CSAW"
.LASF1018:
	.string	"S_SARG_ATK1"
.LASF221:
	.string	"focus"
.LASF315:
	.string	"XVisualInfo"
.LASF146:
	.string	"add_pixel"
.LASF1376:
	.string	"S_SOUL2"
.LASF1377:
	.string	"S_SOUL3"
.LASF1378:
	.string	"S_SOUL4"
.LASF1379:
	.string	"S_SOUL5"
.LASF278:
	.string	"xany"
.LASF1701:
	.string	"__errno_location"
.LASF1770:
	.string	"I_StartFrame"
.LASF386:
	.string	"pw_strength"
.LASF235:
	.string	"border_width"
.LASF1591:
	.string	"MT_MISC40"
.LASF1592:
	.string	"MT_MISC41"
.LASF1593:
	.string	"MT_MISC42"
.LASF1594:
	.string	"MT_MISC43"
.LASF1595:
	.string	"MT_MISC44"
.LASF1596:
	.string	"MT_MISC45"
.LASF1597:
	.string	"MT_MISC46"
.LASF1598:
	.string	"MT_MISC47"
.LASF1599:
	.string	"MT_MISC48"
.LASF1600:
	.string	"MT_MISC49"
.LASF441:
	.string	"SPR_APLS"
.LASF398:
	.string	"SPR_PISF"
.LASF397:
	.string	"SPR_PISG"
.LASF1644:
	.string	"ev_keydown"
.LASF328:
	.string	"_flags"
.LASF1193:
	.string	"S_BSPI_RAISE1"
.LASF1194:
	.string	"S_BSPI_RAISE2"
.LASF1195:
	.string	"S_BSPI_RAISE3"
.LASF1196:
	.string	"S_BSPI_RAISE4"
.LASF1197:
	.string	"S_BSPI_RAISE5"
.LASF1198:
	.string	"S_BSPI_RAISE6"
.LASF1199:
	.string	"S_BSPI_RAISE7"
.LASF1286:
	.string	"S_SSWV_XDIE5"
.LASF1287:
	.string	"S_SSWV_XDIE6"
.LASF1288:
	.string	"S_SSWV_XDIE7"
.LASF1289:
	.string	"S_SSWV_XDIE8"
.LASF1290:
	.string	"S_SSWV_XDIE9"
.LASF1536:
	.string	"MT_BFG"
.LASF1601:
	.string	"MT_MISC50"
.LASF1602:
	.string	"MT_MISC51"
.LASF1603:
	.string	"MT_MISC52"
.LASF1604:
	.string	"MT_MISC53"
.LASF1605:
	.string	"MT_MISC54"
.LASF1606:
	.string	"MT_MISC55"
.LASF1607:
	.string	"MT_MISC56"
.LASF1608:
	.string	"MT_MISC57"
.LASF1609:
	.string	"MT_MISC58"
.LASF1516:
	.string	"MT_BRUISER"
.LASF393:
	.string	"double"
.LASF1352:
	.string	"S_BON1C"
.LASF402:
	.string	"SPR_CHGF"
.LASF401:
	.string	"SPR_CHGG"
.LASF301:
	.string	"xselectionclear"
.LASF1697:
	.string	"XOpenDisplay"
.LASF338:
	.string	"_IO_backup_base"
.LASF1663:
	.string	"X_visualinfo"
.LASF1611:
	.string	"MT_MISC60"
.LASF1612:
	.string	"MT_MISC61"
.LASF1613:
	.string	"MT_MISC62"
.LASF1614:
	.string	"MT_MISC63"
.LASF1615:
	.string	"MT_MISC64"
.LASF1616:
	.string	"MT_MISC65"
.LASF1617:
	.string	"MT_MISC66"
.LASF1618:
	.string	"MT_MISC67"
.LASF1619:
	.string	"MT_MISC68"
.LASF1620:
	.string	"MT_MISC69"
.LASF674:
	.string	"S_TFOG10"
.LASF487:
	.string	"SPR_SGN2"
.LASF31:
	.string	"shmatt_t"
.LASF428:
	.string	"SPR_FBXP"
.LASF1689:
	.string	"XInstallColormap"
.LASF1711:
	.string	"XWarpPointer"
.LASF1410:
	.string	"S_SBOX"
.LASF1621:
	.string	"MT_MISC70"
.LASF1622:
	.string	"MT_MISC71"
.LASF1623:
	.string	"MT_MISC72"
.LASF1624:
	.string	"MT_MISC73"
.LASF1625:
	.string	"MT_MISC74"
.LASF1626:
	.string	"MT_MISC75"
.LASF1627:
	.string	"MT_MISC76"
.LASF1527:
	.string	"MT_BOSSSPIT"
.LASF1629:
	.string	"MT_MISC78"
.LASF1630:
	.string	"MT_MISC79"
.LASF257:
	.string	"owner"
.LASF675:
	.string	"S_IFOG"
.LASF1154:
	.string	"S_SPID_DIE1"
.LASF1155:
	.string	"S_SPID_DIE2"
.LASF1156:
	.string	"S_SPID_DIE3"
.LASF1157:
	.string	"S_SPID_DIE4"
.LASF1158:
	.string	"S_SPID_DIE5"
.LASF1159:
	.string	"S_SPID_DIE6"
.LASF1160:
	.string	"S_SPID_DIE7"
.LASF1161:
	.string	"S_SPID_DIE8"
.LASF1162:
	.string	"S_SPID_DIE9"
.LASF1631:
	.string	"MT_MISC80"
.LASF1632:
	.string	"MT_MISC81"
.LASF1633:
	.string	"MT_MISC82"
.LASF1634:
	.string	"MT_MISC83"
.LASF1635:
	.string	"MT_MISC84"
.LASF1636:
	.string	"MT_MISC85"
.LASF1637:
	.string	"MT_MISC86"
.LASF1515:
	.string	"MT_HEAD"
.LASF330:
	.string	"_IO_read_end"
.LASF60:
	.string	"free_private"
.LASF1724:
	.string	"I_Error"
.LASF566:
	.string	"S_DSGUNDOWN"
.LASF1762:
	.string	"twomoreopixels"
.LASF1233:
	.string	"S_CYBER_DIE10"
.LASF1009:
	.string	"S_SARG_STND2"
.LASF35:
	.string	"shm_segsz"
.LASF72:
	.string	"fill_rule"
.LASF337:
	.string	"_IO_save_base"
.LASF1750:
	.string	"pollution"
.LASF1402:
	.string	"S_PVIS2"
.LASF1412:
	.string	"S_BFUG"
.LASF471:
	.string	"SPR_PVIS"
.LASF387:
	.string	"pw_invisibility"
.LASF470:
	.string	"SPR_PMAP"
.LASF1167:
	.string	"S_BSPI_SIGHT"
.LASF251:
	.string	"XCirculateEvent"
.LASF1751:
	.string	"I_SetPalette"
.LASF27:
	.string	"__seq"
.LASF891:
	.string	"S_FATSHOT2"
.LASF334:
	.string	"_IO_write_end"
.LASF129:
	.string	"bit_gravity"
.LASF630:
	.string	"S_TBALL1"
.LASF1420:
	.string	"S_STALAG"
.LASF445:
	.string	"SPR_SSWV"
.LASF635:
	.string	"S_RBALL1"
.LASF636:
	.string	"S_RBALL2"
.LASF124:
	.string	"ScreenFormat"
.LASF1484:
	.string	"S_HANGBNOBRAIN"
.LASF385:
	.string	"pw_invulnerability"
.LASF73:
	.string	"arc_mode"
.LASF63:
	.string	"function"
.LASF1578:
	.string	"MT_SHOTGUN"
.LASF1503:
	.string	"MT_SHOTGUY"
.LASF113:
	.string	"black_pixel"
.LASF1512:
	.string	"MT_TROOP"
.LASF1091:
	.string	"S_BOS2_RUN1"
.LASF1092:
	.string	"S_BOS2_RUN2"
.LASF1093:
	.string	"S_BOS2_RUN3"
.LASF1094:
	.string	"S_BOS2_RUN4"
.LASF1095:
	.string	"S_BOS2_RUN5"
.LASF1096:
	.string	"S_BOS2_RUN6"
.LASF1097:
	.string	"S_BOS2_RUN7"
.LASF335:
	.string	"_IO_buf_base"
.LASF1765:
	.string	"I_UpdateNoBlit"
.LASF130:
	.string	"win_gravity"
.LASF349:
	.string	"_offset"
.LASF1023:
	.string	"S_SARG_DIE1"
.LASF1024:
	.string	"S_SARG_DIE2"
.LASF1025:
	.string	"S_SARG_DIE3"
.LASF1026:
	.string	"S_SARG_DIE4"
.LASF1027:
	.string	"S_SARG_DIE5"
.LASF1028:
	.string	"S_SARG_DIE6"
.LASF709:
	.string	"S_POSS_RUN1"
.LASF710:
	.string	"S_POSS_RUN2"
.LASF711:
	.string	"S_POSS_RUN3"
.LASF712:
	.string	"S_POSS_RUN4"
.LASF713:
	.string	"S_POSS_RUN5"
.LASF714:
	.string	"S_POSS_RUN6"
.LASF715:
	.string	"S_POSS_RUN7"
.LASF716:
	.string	"S_POSS_RUN8"
.LASF567:
	.string	"S_DSGUNUP"
.LASF901:
	.string	"S_FATT_RUN5"
.LASF1702:
	.string	"getuid"
.LASF1224:
	.string	"S_CYBER_DIE1"
.LASF157:
	.string	"XImage"
.LASF363:
	.string	"it_redcard"
.LASF1449:
	.string	"S_TECHPILLAR"
.LASF290:
	.string	"xunmap"
.LASF223:
	.string	"XFocusChangeEvent"
.LASF1713:
	.string	"XFreeGC"
.LASF371:
	.string	"wp_chaingun"
.LASF740:
	.string	"S_SPOS_STND"
.LASF1434:
	.string	"S_LIVESTICK2"
.LASF868:
	.string	"S_SKEL_FIST1"
.LASF869:
	.string	"S_SKEL_FIST2"
.LASF870:
	.string	"S_SKEL_FIST3"
.LASF871:
	.string	"S_SKEL_FIST4"
.LASF1118:
	.string	"S_SKULL_STND"
.LASF1245:
	.string	"S_PAIN_PAIN"
.LASF59:
	.string	"next"
.LASF776:
	.string	"S_VILE_RUN1"
.LASF777:
	.string	"S_VILE_RUN2"
.LASF778:
	.string	"S_VILE_RUN3"
.LASF779:
	.string	"S_VILE_RUN4"
.LASF780:
	.string	"S_VILE_RUN5"
.LASF781:
	.string	"S_VILE_RUN6"
.LASF782:
	.string	"S_VILE_RUN7"
.LASF783:
	.string	"S_VILE_RUN8"
.LASF784:
	.string	"S_VILE_RUN9"
.LASF211:
	.string	"y_root"
.LASF1667:
	.string	"doShm"
.LASF614:
	.string	"S_BFG"
.LASF100:
	.string	"display"
.LASF1061:
	.string	"S_BOSS_STND2"
.LASF1753:
	.string	"UploadNewPalette"
.LASF447:
	.string	"SPR_BBRN"
.LASF1035:
	.string	"S_HEAD_STND"
.LASF1433:
	.string	"S_LIVESTICK"
.LASF358:
	.string	"_IO_marker"
.LASF1758:
	.string	"tics"
.LASF1404:
	.string	"S_AMMO"
.LASF449:
	.string	"SPR_ARM1"
.LASF450:
	.string	"SPR_ARM2"
.LASF785:
	.string	"S_VILE_RUN10"
.LASF446:
	.string	"SPR_KEEN"
.LASF787:
	.string	"S_VILE_RUN12"
.LASF1324:
	.string	"S_SPAWNFIRE1"
.LASF1325:
	.string	"S_SPAWNFIRE2"
.LASF1326:
	.string	"S_SPAWNFIRE3"
.LASF1327:
	.string	"S_SPAWNFIRE4"
.LASF1328:
	.string	"S_SPAWNFIRE5"
.LASF36:
	.string	"shm_atime"
.LASF1330:
	.string	"S_SPAWNFIRE7"
.LASF1331:
	.string	"S_SPAWNFIRE8"
.LASF1170:
	.string	"S_BSPI_RUN3"
.LASF234:
	.string	"parent"
.LASF462:
	.string	"SPR_STIM"
.LASF603:
	.string	"S_SAWUP"
.LASF637:
	.string	"S_RBALLX1"
.LASF638:
	.string	"S_RBALLX2"
.LASF639:
	.string	"S_RBALLX3"
.LASF207:
	.string	"window"
.LASF1098:
	.string	"S_BOS2_RUN8"
.LASF1526:
	.string	"MT_BOSSBRAIN"
.LASF261:
	.string	"XSelectionRequestEvent"
.LASF1706:
	.string	"memcpy"
.LASF175:
	.string	"pixmap_format"
.LASF1046:
	.string	"S_HEAD_DIE4"
.LASF151:
	.string	"byte_order"
.LASF1775:
	.string	"_IO_lock_t"
.LASF13:
	.string	"__gid_t"
.LASF329:
	.string	"_IO_read_ptr"
.LASF1532:
	.string	"MT_TROOPSHOT"
.LASF284:
	.string	"xexpose"
.LASF47:
	.string	"Window"
.LASF750:
	.string	"S_SPOS_ATK1"
.LASF751:
	.string	"S_SPOS_ATK2"
.LASF752:
	.string	"S_SPOS_ATK3"
.LASF855:
	.string	"S_SKEL_STND2"
.LASF1391:
	.string	"S_MEGA2"
.LASF1392:
	.string	"S_MEGA3"
.LASF1393:
	.string	"S_MEGA4"
.LASF657:
	.string	"S_BFGEXP2"
.LASF317:
	.string	"shmseg"
.LASF659:
	.string	"S_BFGEXP4"
.LASF798:
	.string	"S_VILE_ATK11"
.LASF1125:
	.string	"S_SKULL_ATK4"
.LASF1346:
	.string	"S_BBAR1"
.LASF1347:
	.string	"S_BBAR2"
.LASF1348:
	.string	"S_BBAR3"
.LASF343:
	.string	"_flags2"
.LASF1200:
	.string	"S_ARACH_PLAZ"
.LASF1752:
	.string	"palette"
.LASF708:
	.string	"S_POSS_STND2"
.LASF736:
	.string	"S_POSS_RAISE1"
.LASF737:
	.string	"S_POSS_RAISE2"
.LASF738:
	.string	"S_POSS_RAISE3"
.LASF739:
	.string	"S_POSS_RAISE4"
.LASF350:
	.string	"_codecvt"
.LASF294:
	.string	"xconfigure"
.LASF1428:
	.string	"S_GIBS"
.LASF250:
	.string	"place"
.LASF1001:
	.string	"S_TROO_XDIE7"
.LASF1037:
	.string	"S_HEAD_ATK1"
.LASF1038:
	.string	"S_HEAD_ATK2"
.LASF1039:
	.string	"S_HEAD_ATK3"
.LASF333:
	.string	"_IO_write_ptr"
.LASF1460:
	.string	"S_BLUETORCH2"
.LASF1461:
	.string	"S_BLUETORCH3"
.LASF1462:
	.string	"S_BLUETORCH4"
.LASF725:
	.string	"S_POSS_DIE4"
.LASF1443:
	.string	"S_SHRTREDCOL"
.LASF1103:
	.string	"S_BOS2_PAIN2"
.LASF429:
	.string	"SPR_SKEL"
.LASF127:
	.string	"border_pixmap"
.LASF906:
	.string	"S_FATT_RUN10"
.LASF907:
	.string	"S_FATT_RUN11"
.LASF908:
	.string	"S_FATT_RUN12"
.LASF1408:
	.string	"S_CELP"
.LASF105:
	.string	"mheight"
.LASF1007:
	.string	"S_TROO_RAISE5"
.LASF527:
	.string	"SPR_POB1"
.LASF528:
	.string	"SPR_POB2"
.LASF1662:
	.string	"X_screen"
.LASF64:
	.string	"plane_mask"
.LASF578:
	.string	"S_DSNR1"
.LASF192:
	.string	"screens"
.LASF1513:
	.string	"MT_SERGEANT"
.LASF641:
	.string	"S_PLASBALL2"
.LASF1491:
	.string	"S_BRAINSTEM"
.LASF1771:
	.string	"I_ShutdownGraphics"
.LASF872:
	.string	"S_SKEL_MISS1"
.LASF873:
	.string	"S_SKEL_MISS2"
.LASF874:
	.string	"S_SKEL_MISS3"
.LASF875:
	.string	"S_SKEL_MISS4"
.LASF25:
	.string	"cgid"
.LASF110:
	.string	"default_gc"
.LASF1363:
	.string	"S_RKEY"
.LASF604:
	.string	"S_SAW1"
.LASF173:
	.string	"resource_alloc"
.LASF849:
	.string	"S_TRACER"
.LASF236:
	.string	"XCreateWindowEvent"
.LASF1202:
	.string	"S_ARACH_PLEX"
.LASF1259:
	.string	"S_SSWV_STND"
.LASF799:
	.string	"S_VILE_HEAL1"
.LASF800:
	.string	"S_VILE_HEAL2"
.LASF801:
	.string	"S_VILE_HEAL3"
.LASF376:
	.string	"wp_supershotgun"
.LASF224:
	.string	"key_vector"
.LASF1184:
	.string	"S_BSPI_PAIN"
.LASF918:
	.string	"S_FATT_ATK10"
.LASF1153:
	.string	"S_SPID_PAIN2"
.LASF364:
	.string	"it_blueskull"
.LASF1177:
	.string	"S_BSPI_RUN10"
.LASF1178:
	.string	"S_BSPI_RUN11"
.LASF1179:
	.string	"S_BSPI_RUN12"
.LASF1768:
	.string	"dummycolour"
.LASF292:
	.string	"xmaprequest"
.LASF1396:
	.string	"S_PMAP2"
.LASF1397:
	.string	"S_PMAP3"
.LASF1398:
	.string	"S_PMAP4"
.LASF1399:
	.string	"S_PMAP5"
.LASF1400:
	.string	"S_PMAP6"
.LASF283:
	.string	"xfocus"
.LASF1143:
	.string	"S_SPID_RUN8"
.LASF70:
	.string	"join_style"
.LASF168:
	.string	"vendor"
.LASF418:
	.string	"SPR_BFE1"
.LASF419:
	.string	"SPR_BFE2"
.LASF220:
	.string	"detail"
.LASF311:
	.string	"XEvent"
.LASF1481:
	.string	"S_RTORCHSHRT3"
.LASF1482:
	.string	"S_RTORCHSHRT4"
.LASF584:
	.string	"S_CHAINUP"
.LASF1705:
	.string	"XStoreColors"
.LASF988:
	.string	"S_TROO_PAIN"
.LASF454:
	.string	"SPR_BON1"
.LASF455:
	.string	"SPR_BON2"
.LASF309:
	.string	"xgeneric"
.LASF1524:
	.string	"MT_WOLFSS"
.LASF140:
	.string	"funcs"
.LASF29:
	.string	"__glibc_reserved1"
.LASF30:
	.string	"__glibc_reserved2"
.LASF42:
	.string	"__glibc_reserved5"
.LASF43:
	.string	"__glibc_reserved6"
.LASF348:
	.string	"_lock"
.LASF166:
	.string	"proto_major_version"
.LASF1276:
	.string	"S_SSWV_PAIN2"
.LASF1699:
	.string	"signal"
.LASF1457:
	.string	"S_HEARTCOL"
.LASF1685:
	.string	"XShmCreateImage"
.LASF1726:
	.string	"XKeycodeToKeysym"
.LASF252:
	.string	"XCirculateRequestEvent"
.LASF1269:
	.string	"S_SSWV_ATK1"
.LASF1270:
	.string	"S_SSWV_ATK2"
.LASF1271:
	.string	"S_SSWV_ATK3"
.LASF1272:
	.string	"S_SSWV_ATK4"
.LASF1273:
	.string	"S_SSWV_ATK5"
.LASF1274:
	.string	"S_SSWV_ATK6"
.LASF1499:
	.string	"S_TECH2LAMP4"
.LASF1375:
	.string	"S_SOUL"
.LASF409:
	.string	"SPR_BFGF"
.LASF408:
	.string	"SPR_BFGG"
.LASF755:
	.string	"S_SPOS_DIE1"
.LASF756:
	.string	"S_SPOS_DIE2"
.LASF757:
	.string	"S_SPOS_DIE3"
.LASF758:
	.string	"S_SPOS_DIE4"
.LASF759:
	.string	"S_SPOS_DIE5"
.LASF420:
	.string	"SPR_TFOG"
.LASF1128:
	.string	"S_SKULL_DIE1"
.LASF1129:
	.string	"S_SKULL_DIE2"
.LASF1130:
	.string	"S_SKULL_DIE3"
.LASF1131:
	.string	"S_SKULL_DIE4"
.LASF1132:
	.string	"S_SKULL_DIE5"
.LASF1133:
	.string	"S_SKULL_DIE6"
.LASF856:
	.string	"S_SKEL_RUN1"
.LASF857:
	.string	"S_SKEL_RUN2"
.LASF858:
	.string	"S_SKEL_RUN3"
.LASF859:
	.string	"S_SKEL_RUN4"
.LASF860:
	.string	"S_SKEL_RUN5"
.LASF861:
	.string	"S_SKEL_RUN6"
.LASF862:
	.string	"S_SKEL_RUN7"
.LASF336:
	.string	"_IO_buf_end"
.LASF864:
	.string	"S_SKEL_RUN9"
.LASF7:
	.string	"short unsigned int"
.LASF848:
	.string	"S_SMOKE5"
.LASF1019:
	.string	"S_SARG_ATK2"
.LASF1020:
	.string	"S_SARG_ATK3"
.LASF222:
	.string	"XCrossingEvent"
.LASF62:
	.string	"XExtData"
.LASF1043:
	.string	"S_HEAD_DIE1"
.LASF1044:
	.string	"S_HEAD_DIE2"
.LASF1045:
	.string	"S_HEAD_DIE3"
.LASF98:
	.string	"visuals"
.LASF1047:
	.string	"S_HEAD_DIE5"
.LASF1048:
	.string	"S_HEAD_DIE6"
.LASF518:
	.string	"SPR_SMBT"
.LASF1754:
	.string	"firstcall"
.LASF1480:
	.string	"S_RTORCHSHRT2"
.LASF359:
	.string	"_IO_codecvt"
.LASF1187:
	.string	"S_BSPI_DIE2"
.LASF1188:
	.string	"S_BSPI_DIE3"
.LASF1189:
	.string	"S_BSPI_DIE4"
.LASF32:
	.string	"ipc_perm"
.LASF689:
	.string	"S_PLAY_PAIN"
.LASF1191:
	.string	"S_BSPI_DIE6"
.LASF1432:
	.string	"S_DEADSTICK"
.LASF366:
	.string	"it_redskull"
.LASF472:
	.string	"SPR_CLIP"
.LASF1525:
	.string	"MT_KEEN"
.LASF437:
	.string	"SPR_BOS2"
.LASF1298:
	.string	"S_COMMKEEN2"
.LASF1299:
	.string	"S_COMMKEEN3"
.LASF1300:
	.string	"S_COMMKEEN4"
.LASF1301:
	.string	"S_COMMKEEN5"
.LASF1302:
	.string	"S_COMMKEEN6"
.LASF1303:
	.string	"S_COMMKEEN7"
.LASF1304:
	.string	"S_COMMKEEN8"
.LASF1305:
	.string	"S_COMMKEEN9"
.LASF448:
	.string	"SPR_BOSF"
.LASF1329:
	.string	"S_SPAWNFIRE6"
.LASF314:
	.string	"colormap_size"
.LASF436:
	.string	"SPR_BOSS"
.LASF1409:
	.string	"S_SHEL"
.LASF495:
	.string	"SPR_POL1"
.LASF491:
	.string	"SPR_POL2"
.LASF494:
	.string	"SPR_POL3"
.LASF493:
	.string	"SPR_POL4"
.LASF492:
	.string	"SPR_POL5"
.LASF496:
	.string	"SPR_POL6"
.LASF513:
	.string	"SPR_FSKU"
.LASF54:
	.string	"KeyCode"
.LASF1716:
	.string	"XFillRectangle"
.LASF506:
	.string	"SPR_CAND"
.LASF962:
	.string	"S_CPOS_XDIE1"
.LASF963:
	.string	"S_CPOS_XDIE2"
.LASF964:
	.string	"S_CPOS_XDIE3"
.LASF374:
	.string	"wp_bfg"
.LASF966:
	.string	"S_CPOS_XDIE5"
.LASF967:
	.string	"S_CPOS_XDIE6"
.LASF1296:
	.string	"S_KEENSTND"
.LASF682:
	.string	"S_PLAY"
.LASF925:
	.string	"S_FATT_DIE5"
.LASF1757:
	.string	"lasttic"
.LASF926:
	.string	"S_FATT_DIE6"
.LASF927:
	.string	"S_FATT_DIE7"
.LASF928:
	.string	"S_FATT_DIE8"
.LASF1475:
	.string	"S_GTORCHSHRT"
.LASF227:
	.string	"XExposeEvent"
.LASF1089:
	.string	"S_BOS2_STND"
.LASF219:
	.string	"XMotionEvent"
.LASF347:
	.string	"_shortbuf"
.LASF379:
	.string	"am_clip"
.LASF182:
	.string	"request"
.LASF58:
	.string	"number"
.LASF623:
	.string	"S_BLOOD1"
.LASF624:
	.string	"S_BLOOD2"
.LASF625:
	.string	"S_BLOOD3"
.LASF56:
	.string	"XPointer"
.LASF266:
	.string	"first_keycode"
.LASF707:
	.string	"S_POSS_STND"
.LASF321:
	.string	"XShmSegmentInfo"
.LASF198:
	.string	"private18"
.LASF1430:
	.string	"S_HEADCANDLES"
.LASF189:
	.string	"display_name"
.LASF392:
	.string	"float"
.LASF1209:
	.string	"S_CYBER_RUN1"
.LASF1210:
	.string	"S_CYBER_RUN2"
.LASF1211:
	.string	"S_CYBER_RUN3"
.LASF1212:
	.string	"S_CYBER_RUN4"
.LASF1213:
	.string	"S_CYBER_RUN5"
.LASF1214:
	.string	"S_CYBER_RUN6"
.LASF1215:
	.string	"S_CYBER_RUN7"
.LASF1216:
	.string	"S_CYBER_RUN8"
.LASF6:
	.string	"unsigned char"
.LASF519:
	.string	"SPR_SMGT"
.LASF1763:
	.string	"fouripixels"
.LASF1679:
	.string	"exptable"
.LASF1455:
	.string	"S_FLOATSKULL2"
.LASF1456:
	.string	"S_FLOATSKULL3"
.LASF1727:
	.string	"lineptr"
.LASF425:
	.string	"SPR_VILE"
.LASF1712:
	.string	"XPending"
.LASF656:
	.string	"S_BFGEXP"
.LASF1659:
	.string	"X_visual"
.LASF1418:
	.string	"S_SHOT2"
.LASF1472:
	.string	"S_BTORCHSHRT2"
.LASF1473:
	.string	"S_BTORCHSHRT3"
.LASF1474:
	.string	"S_BTORCHSHRT4"
.LASF293:
	.string	"xreparent"
.LASF554:
	.string	"S_SGUN1"
.LASF555:
	.string	"S_SGUN2"
.LASF556:
	.string	"S_SGUN3"
.LASF557:
	.string	"S_SGUN4"
.LASF558:
	.string	"S_SGUN5"
.LASF559:
	.string	"S_SGUN6"
.LASF560:
	.string	"S_SGUN7"
.LASF561:
	.string	"S_SGUN8"
.LASF562:
	.string	"S_SGUN9"
.LASF1677:
	.string	"shmFinished"
.LASF89:
	.string	"class"
.LASF1374:
	.string	"S_MEDI"
.LASF1022:
	.string	"S_SARG_PAIN2"
.LASF774:
	.string	"S_VILE_STND"
.LASF1684:
	.string	"XShmAttach"
.LASF1749:
	.string	"minsize"
.LASF1647:
	.string	"ev_joystick"
.LASF206:
	.string	"send_event"
.LASF79:
	.string	"subwindow_mode"
.LASF159:
	.string	"green"
.LASF1533:
	.string	"MT_HEADSHOT"
.LASF501:
	.string	"SPR_SMIT"
.LASF228:
	.string	"drawable"
.LASF1446:
	.string	"S_SKULLCOL"
.LASF438:
	.string	"SPR_SKUL"
.LASF12:
	.string	"__uid_t"
.LASF1700:
	.string	"shmat"
.LASF1277:
	.string	"S_SSWV_DIE1"
.LASF313:
	.string	"screen"
.LASF1279:
	.string	"S_SSWV_DIE3"
.LASF1280:
	.string	"S_SSWV_DIE4"
.LASF1281:
	.string	"S_SSWV_DIE5"
.LASF160:
	.string	"blue"
.LASF890:
	.string	"S_FATSHOT1"
.LASF1099:
	.string	"S_BOS2_ATK1"
.LASF1100:
	.string	"S_BOS2_ATK2"
.LASF1101:
	.string	"S_BOS2_ATK3"
.LASF884:
	.string	"S_SKEL_RAISE1"
.LASF885:
	.string	"S_SKEL_RAISE2"
.LASF886:
	.string	"S_SKEL_RAISE3"
.LASF887:
	.string	"S_SKEL_RAISE4"
.LASF888:
	.string	"S_SKEL_RAISE5"
.LASF889:
	.string	"S_SKEL_RAISE6"
.LASF322:
	.string	"__sighandler_t"
.LASF1060:
	.string	"S_BOSS_STND"
.LASF1340:
	.string	"S_BAR2"
.LASF203:
	.string	"_XPrivDisplay"
.LASF1445:
	.string	"S_CANDELABRA"
.LASF717:
	.string	"S_POSS_ATK1"
.LASF718:
	.string	"S_POSS_ATK2"
.LASF719:
	.string	"S_POSS_ATK3"
.LASF995:
	.string	"S_TROO_XDIE1"
.LASF996:
	.string	"S_TROO_XDIE2"
.LASF997:
	.string	"S_TROO_XDIE3"
.LASF998:
	.string	"S_TROO_XDIE4"
.LASF999:
	.string	"S_TROO_XDIE5"
.LASF1000:
	.string	"S_TROO_XDIE6"
.LASF33:
	.string	"shmid_ds"
.LASF1002:
	.string	"S_TROO_XDIE8"
.LASF121:
	.string	"Screen"
.LASF1508:
	.string	"MT_SMOKE"
.LASF204:
	.string	"type"
.LASF1390:
	.string	"S_MEGA"
.LASF15:
	.string	"__off_t"
.LASF443:
	.string	"SPR_CYBR"
.LASF276:
	.string	"cookie"
.LASF479:
	.string	"SPR_SBOX"
.LASF423:
	.string	"SPR_POSS"
.LASF417:
	.string	"SPR_BFS1"
.LASF421:
	.string	"SPR_IFOG"
.LASF1423:
	.string	"S_BLOODYTWITCH3"
.LASF1424:
	.string	"S_BLOODYTWITCH4"
.LASF1723:
	.string	"shmdt"
.LASF208:
	.string	"subwindow"
.LASF372:
	.string	"wp_missile"
.LASF788:
	.string	"S_VILE_ATK1"
.LASF789:
	.string	"S_VILE_ATK2"
.LASF790:
	.string	"S_VILE_ATK3"
.LASF791:
	.string	"S_VILE_ATK4"
.LASF792:
	.string	"S_VILE_ATK5"
.LASF793:
	.string	"S_VILE_ATK6"
.LASF794:
	.string	"S_VILE_ATK7"
.LASF795:
	.string	"S_VILE_ATK8"
.LASF796:
	.string	"S_VILE_ATK9"
.LASF1703:
	.string	"fprintf"
.LASF741:
	.string	"S_SPOS_STND2"
.LASF1364:
	.string	"S_RKEY2"
.LASF1152:
	.string	"S_SPID_PAIN"
.LASF380:
	.string	"am_shell"
.LASF1653:
	.string	"gammatable"
.LASF201:
	.string	"_XPrivate"
.LASF149:
	.string	"format"
.LASF1407:
	.string	"S_CELL"
.LASF1509:
	.string	"MT_FATSO"
.LASF481:
	.string	"SPR_BFUG"
.LASF1417:
	.string	"S_SHOT"
.LASF274:
	.string	"evtype"
.LASF1511:
	.string	"MT_CHAINGUY"
.LASF1518:
	.string	"MT_KNIGHT"
.LASF616:
	.string	"S_BFGUP"
.LASF1041:
	.string	"S_HEAD_PAIN2"
.LASF1042:
	.string	"S_HEAD_PAIN3"
.LASF265:
	.string	"XClientMessageEvent"
.LASF1029:
	.string	"S_SARG_RAISE1"
.LASF1030:
	.string	"S_SARG_RAISE2"
.LASF1031:
	.string	"S_SARG_RAISE3"
.LASF1032:
	.string	"S_SARG_RAISE4"
.LASF1033:
	.string	"S_SARG_RAISE5"
.LASF1034:
	.string	"S_SARG_RAISE6"
.LASF1370:
	.string	"S_RSKULL2"
.LASF1074:
	.string	"S_BOSS_PAIN2"
.LASF1350:
	.string	"S_BON1A"
.LASF1351:
	.string	"S_BON1B"
.LASF191:
	.string	"nscreens"
.LASF1353:
	.string	"S_BON1D"
.LASF1354:
	.string	"S_BON1E"
.LASF200:
	.string	"xdefaults"
.LASF351:
	.string	"_wide_data"
.LASF1669:
	.string	"X_shmeventtype"
.LASF167:
	.string	"proto_minor_version"
.LASF1743:
	.string	"xgcvalues"
.LASF1356:
	.string	"S_BON2A"
.LASF1357:
	.string	"S_BON2B"
.LASF1358:
	.string	"S_BON2C"
.LASF1359:
	.string	"S_BON2D"
.LASF1360:
	.string	"S_BON2E"
.LASF249:
	.string	"XConfigureRequestEvent"
.LASF1246:
	.string	"S_PAIN_PAIN2"
.LASF536:
	.string	"S_PUNCHDOWN"
.LASF318:
	.string	"shmid"
.LASF1049:
	.string	"S_HEAD_RAISE1"
.LASF1050:
	.string	"S_HEAD_RAISE2"
.LASF1051:
	.string	"S_HEAD_RAISE3"
.LASF1052:
	.string	"S_HEAD_RAISE4"
.LASF1053:
	.string	"S_HEAD_RAISE5"
.LASF1054:
	.string	"S_HEAD_RAISE6"
.LASF226:
	.string	"count"
.LASF258:
	.string	"requestor"
.LASF912:
	.string	"S_FATT_ATK4"
.LASF1112:
	.string	"S_BOS2_RAISE2"
.LASF502:
	.string	"SPR_COL1"
.LASF503:
	.string	"SPR_COL2"
.LASF239:
	.string	"from_configure"
.LASF596:
	.string	"S_MISSILEFLASH1"
.LASF520:
	.string	"SPR_SMRT"
.LASF598:
	.string	"S_MISSILEFLASH3"
.LASF599:
	.string	"S_MISSILEFLASH4"
.LASF1208:
	.string	"S_CYBER_STND2"
.LASF877:
	.string	"S_SKEL_PAIN2"
.LASF66:
	.string	"background"
.LASF143:
	.string	"get_pixel"
.LASF534:
	.string	"S_LIGHTDONE"
.LASF378:
	.string	"wp_nochange"
.LASF1145:
	.string	"S_SPID_RUN10"
.LASF1146:
	.string	"S_SPID_RUN11"
.LASF1147:
	.string	"S_SPID_RUN12"
.LASF1021:
	.string	"S_SARG_PAIN"
.LASF344:
	.string	"_old_offset"
.LASF416:
	.string	"SPR_MISL"
.LASF1696:
	.string	"getenv"
.LASF1528:
	.string	"MT_BOSSTARGET"
.LASF1542:
	.string	"MT_TELEPORTMAN"
.LASF1540:
	.string	"MT_TFOG"
.LASF666:
	.string	"S_TFOG2"
.LASF667:
	.string	"S_TFOG3"
.LASF668:
	.string	"S_TFOG4"
.LASF669:
	.string	"S_TFOG5"
.LASF670:
	.string	"S_TFOG6"
.LASF671:
	.string	"S_TFOG7"
.LASF672:
	.string	"S_TFOG8"
.LASF94:
	.string	"map_entries"
.LASF721:
	.string	"S_POSS_PAIN2"
.LASF550:
	.string	"S_PISTOLFLASH"
.LASF1665:
	.string	"X_width"
.LASF1104:
	.string	"S_BOS2_DIE1"
.LASF1105:
	.string	"S_BOS2_DIE2"
.LASF1106:
	.string	"S_BOS2_DIE3"
.LASF489:
	.string	"SPR_SMT2"
.LASF1108:
	.string	"S_BOS2_DIE5"
.LASF1110:
	.string	"S_BOS2_DIE7"
.LASF459:
	.string	"SPR_BSKU"
.LASF181:
	.string	"last_request_read"
.LASF281:
	.string	"xmotion"
.LASF1688:
	.string	"XMapWindow"
.LASF1468:
	.string	"S_REDTORCH2"
.LASF1469:
	.string	"S_REDTORCH3"
.LASF1470:
	.string	"S_REDTORCH4"
.LASF1440:
	.string	"S_TALLGRNCOL"
.LASF621:
	.string	"S_BFGFLASH1"
.LASF367:
	.string	"NUMCARDS"
.LASF1338:
	.string	"S_ARM2A"
.LASF722:
	.string	"S_POSS_DIE1"
.LASF723:
	.string	"S_POSS_DIE2"
.LASF724:
	.string	"S_POSS_DIE3"
.LASF545:
	.string	"S_PISTOLUP"
.LASF726:
	.string	"S_POSS_DIE5"
.LASF1411:
	.string	"S_BPAK"
.LASF1767:
	.string	"cursormask"
.LASF101:
	.string	"root"
.LASF272:
	.string	"XAnyEvent"
.LASF473:
	.string	"SPR_AMMO"
.LASF131:
	.string	"backing_planes"
.LASF273:
	.string	"extension"
.LASF19:
	.string	"__key_t"
.LASF339:
	.string	"_IO_save_end"
.LASF136:
	.string	"override_redirect"
.LASF660:
	.string	"S_EXPLODE1"
.LASF661:
	.string	"S_EXPLODE2"
.LASF662:
	.string	"S_EXPLODE3"
.LASF521:
	.string	"SPR_HDB1"
.LASF522:
	.string	"SPR_HDB2"
.LASF523:
	.string	"SPR_HDB3"
.LASF524:
	.string	"SPR_HDB4"
.LASF525:
	.string	"SPR_HDB5"
.LASF526:
	.string	"SPR_HDB6"
.LASF1062:
	.string	"S_BOSS_RUN1"
.LASF1063:
	.string	"S_BOSS_RUN2"
.LASF1064:
	.string	"S_BOSS_RUN3"
.LASF1065:
	.string	"S_BOSS_RUN4"
.LASF600:
	.string	"S_SAW"
.LASF1067:
	.string	"S_BOSS_RUN6"
.LASF1068:
	.string	"S_BOSS_RUN7"
.LASF1069:
	.string	"S_BOSS_RUN8"
.LASF1493:
	.string	"S_TECHLAMP2"
.LASF1494:
	.string	"S_TECHLAMP3"
.LASF1495:
	.string	"S_TECHLAMP4"
.LASF1682:
	.string	"XCreateImage"
.LASF1057:
	.string	"S_BRBALLX1"
.LASF1058:
	.string	"S_BRBALLX2"
.LASF1059:
	.string	"S_BRBALLX3"
.LASF854:
	.string	"S_SKEL_STND"
.LASF153:
	.string	"bitmap_bit_order"
.LASF259:
	.string	"target"
.LASF897:
	.string	"S_FATT_RUN1"
.LASF898:
	.string	"S_FATT_RUN2"
.LASF899:
	.string	"S_FATT_RUN3"
.LASF900:
	.string	"S_FATT_RUN4"
.LASF111:
	.string	"cmap"
.LASF902:
	.string	"S_FATT_RUN6"
.LASF903:
	.string	"S_FATT_RUN7"
.LASF904:
	.string	"S_FATT_RUN8"
.LASF905:
	.string	"S_FATT_RUN9"
.LASF453:
	.string	"SPR_FCAN"
.LASF804:
	.string	"S_VILE_DIE1"
.LASF805:
	.string	"S_VILE_DIE2"
.LASF806:
	.string	"S_VILE_DIE3"
.LASF807:
	.string	"S_VILE_DIE4"
.LASF808:
	.string	"S_VILE_DIE5"
.LASF809:
	.string	"S_VILE_DIE6"
.LASF810:
	.string	"S_VILE_DIE7"
.LASF811:
	.string	"S_VILE_DIE8"
.LASF812:
	.string	"S_VILE_DIE9"
.LASF583:
	.string	"S_CHAINDOWN"
.LASF1366:
	.string	"S_YKEY2"
.LASF39:
	.string	"shm_cpid"
.LASF135:
	.string	"do_not_propagate_mask"
.LASF97:
	.string	"nvisuals"
.LASF851:
	.string	"S_TRACEEXP1"
.LASF852:
	.string	"S_TRACEEXP2"
.LASF853:
	.string	"S_TRACEEXP3"
.LASF116:
	.string	"backing_store"
.LASF1394:
	.string	"S_SUIT"
.LASF1734:
	.string	"InitExpand"
.LASF813:
	.string	"S_VILE_DIE10"
.LASF326:
	.string	"byte"
.LASF282:
	.string	"xcrossing"
.LASF41:
	.string	"shm_nattch"
.LASF941:
	.string	"S_CPOS_RUN1"
.LASF942:
	.string	"S_CPOS_RUN2"
.LASF943:
	.string	"S_CPOS_RUN3"
.LASF944:
	.string	"S_CPOS_RUN4"
.LASF945:
	.string	"S_CPOS_RUN5"
.LASF946:
	.string	"S_CPOS_RUN6"
.LASF947:
	.string	"S_CPOS_RUN7"
.LASF948:
	.string	"S_CPOS_RUN8"
.LASF440:
	.string	"SPR_BSPI"
.LASF664:
	.string	"S_TFOG01"
.LASF665:
	.string	"S_TFOG02"
.LASF331:
	.string	"_IO_read_base"
.LASF1444:
	.string	"S_CANDLESTIK"
.LASF1678:
	.string	"colors"
.LASF279:
	.string	"xkey"
.LASF81:
	.string	"clip_x_origin"
.LASF254:
	.string	"XPropertyEvent"
.LASF1119:
	.string	"S_SKULL_STND2"
.LASF187:
	.string	"max_request_size"
.LASF193:
	.string	"motion_buffer"
.LASF1639:
	.string	"ps_weapon"
.LASF1479:
	.string	"S_RTORCHSHRT"
.LASF1759:
	.string	"olineptrs"
.LASF476:
	.string	"SPR_CELL"
.LASF477:
	.string	"SPR_CELP"
.LASF152:
	.string	"bitmap_unit"
.LASF648:
	.string	"S_BFGSHOT"
.LASF38:
	.string	"shm_ctime"
.LASF1674:
	.string	"lastmousex"
.LASF1675:
	.string	"lastmousey"
.LASF144:
	.string	"put_pixel"
.LASF1643:
	.string	"devparm"
.LASF1541:
	.string	"MT_IFOG"
.LASF218:
	.string	"is_hint"
.LASF10:
	.string	"short int"
.LASF430:
	.string	"SPR_MANF"
.LASF1459:
	.string	"S_BLUETORCH"
.LASF300:
	.string	"xproperty"
.LASF457:
	.string	"SPR_RKEY"
.LASF1207:
	.string	"S_CYBER_STND"
.LASF1740:
	.string	"oktodraw"
.LASF1661:
	.string	"X_event"
.LASF289:
	.string	"xdestroywindow"
.LASF1275:
	.string	"S_SSWV_PAIN"
.LASF53:
	.string	"KeySym"
.LASF269:
	.string	"error_code"
.LASF381:
	.string	"am_cell"
.LASF930:
	.string	"S_FATT_DIE10"
.LASF1655:
	.string	"myargv"
.LASF1735:
	.string	"I_InitGraphics"
.LASF319:
	.string	"shmaddr"
.LASF134:
	.string	"event_mask"
.LASF1737:
	.string	"pnum"
.LASF1535:
	.string	"MT_PLASMA"
.LASF340:
	.string	"_markers"
.LASF427:
	.string	"SPR_FATB"
.LASF342:
	.string	"_fileno"
.LASF431:
	.string	"SPR_FATT"
.LASF1387:
	.string	"S_PINS2"
.LASF1388:
	.string	"S_PINS3"
.LASF1389:
	.string	"S_PINS4"
.LASF1693:
	.string	"strcasecmp"
.LASF1485:
	.string	"S_HANGTLOOKDN"
.LASF68:
	.string	"line_style"
.LASF21:
	.string	"key_t"
.LASF1201:
	.string	"S_ARACH_PLAZ2"
.LASF458:
	.string	"SPR_YKEY"
.LASF1520:
	.string	"MT_SPIDER"
.LASF179:
	.string	"private10"
.LASF183:
	.string	"private11"
.LASF184:
	.string	"private12"
.LASF185:
	.string	"private13"
.LASF186:
	.string	"private14"
.LASF188:
	.string	"private15"
.LASF194:
	.string	"private16"
.LASF197:
	.string	"private17"
.LASF4:
	.string	"long int"
.LASF199:
	.string	"private19"
.LASF1773:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1165:
	.string	"S_BSPI_STND"
.LASF1554:
	.string	"MT_MISC10"
.LASF1217:
	.string	"S_CYBER_ATK1"
.LASF1218:
	.string	"S_CYBER_ATK2"
.LASF1219:
	.string	"S_CYBER_ATK3"
.LASF1220:
	.string	"S_CYBER_ATK4"
.LASF1221:
	.string	"S_CYBER_ATK5"
.LASF1222:
	.string	"S_CYBER_ATK6"
.LASF18:
	.string	"__time_t"
.LASF1448:
	.string	"S_BIGTREE"
.LASF464:
	.string	"SPR_SOUL"
.LASF432:
	.string	"SPR_CPOS"
.LASF244:
	.string	"above"
.LASF304:
	.string	"xcolormap"
.LASF291:
	.string	"xmap"
.LASF307:
	.string	"xerror"
.LASF287:
	.string	"xvisibility"
.LASF1382:
	.string	"S_PINV2"
.LASF1383:
	.string	"S_PINV3"
.LASF1384:
	.string	"S_PINV4"
.LASF1666:
	.string	"X_height"
.LASF591:
	.string	"S_MISSILEDOWN"
.LASF1260:
	.string	"S_SSWV_STND2"
.LASF863:
	.string	"S_SKEL_RUN8"
.LASF238:
	.string	"XDestroyWindowEvent"
.LASF1718:
	.string	"XCreatePixmap"
.LASF411:
	.string	"SPR_PUFF"
.LASF530:
	.string	"SPR_TLMP"
.LASF1454:
	.string	"S_FLOATSKULL"
.LASF212:
	.string	"state"
.LASF753:
	.string	"S_SPOS_PAIN"
.LASF216:
	.string	"button"
.LASF649:
	.string	"S_BFGSHOT2"
.LASF1722:
	.string	"shmctl"
.LASF264:
	.string	"message_type"
.LASF1126:
	.string	"S_SKULL_PAIN"
.LASF1571:
	.string	"MT_MISC23"
.LASF1483:
	.string	"S_HANGNOGUTS"
.LASF1576:
	.string	"MT_MISC27"
.LASF1577:
	.string	"MT_MISC28"
.LASF1580:
	.string	"MT_MISC29"
.LASF332:
	.string	"_IO_write_base"
.LASF48:
	.string	"Drawable"
.LASF1297:
	.string	"S_COMMKEEN"
.LASF74:
	.string	"tile"
.LASF1339:
	.string	"S_BAR1"
.LASF1040:
	.string	"S_HEAD_PAIN"
.LASF1522:
	.string	"MT_CYBORG"
.LASF1652:
	.string	"event_t"
.LASF878:
	.string	"S_SKEL_DIE1"
.LASF879:
	.string	"S_SKEL_DIE2"
.LASF880:
	.string	"S_SKEL_DIE3"
.LASF881:
	.string	"S_SKEL_DIE4"
.LASF466:
	.string	"SPR_PSTR"
.LASF883:
	.string	"S_SKEL_DIE6"
.LASF286:
	.string	"xnoexpose"
.LASF324:
	.string	"true"
.LASF296:
	.string	"xresizerequest"
.LASF1581:
	.string	"MT_MISC30"
.LASF1582:
	.string	"MT_MISC31"
.LASF1415:
	.string	"S_LAUN"
.LASF531:
	.string	"SPR_TLP2"
.LASF1687:
	.string	"XGrabPointer"
.LASF209:
	.string	"time"
.LASF375:
	.string	"wp_chainsaw"
.LASF412:
	.string	"SPR_BAL1"
.LASF413:
	.string	"SPR_BAL2"
.LASF213:
	.string	"keycode"
.LASF478:
	.string	"SPR_SHEL"
.LASF435:
	.string	"SPR_BAL7"
.LASF277:
	.string	"XGenericEventCookie"
.LASF1003:
	.string	"S_TROO_RAISE1"
.LASF1004:
	.string	"S_TROO_RAISE2"
.LASF1005:
	.string	"S_TROO_RAISE3"
.LASF1006:
	.string	"S_TROO_RAISE4"
.LASF485:
	.string	"SPR_PLAS"
.LASF1413:
	.string	"S_MGUN"
.LASF422:
	.string	"SPR_PLAY"
.LASF1732:
	.string	"Expand4"
.LASF17:
	.string	"__pid_t"
.LASF46:
	.string	"Time"
.LASF1574:
	.string	"MT_CHAINGUN"
.LASF245:
	.string	"XConfigureEvent"
.LASF1385:
	.string	"S_PSTR"
.LASF1534:
	.string	"MT_ROCKET"
.LASF1458:
	.string	"S_HEARTCOL2"
.LASF1365:
	.string	"S_YKEY"
.LASF345:
	.string	"_cur_column"
.LASF1686:
	.string	"XShmGetEventBase"
.LASF582:
	.string	"S_CHAIN"
.LASF20:
	.string	"__syscall_ulong_t"
.LASF1497:
	.string	"S_TECH2LAMP2"
.LASF1498:
	.string	"S_TECH2LAMP3"
.LASF1235:
	.string	"S_PAIN_RUN1"
.LASF1236:
	.string	"S_PAIN_RUN2"
.LASF921:
	.string	"S_FATT_DIE1"
.LASF1238:
	.string	"S_PAIN_RUN4"
.LASF922:
	.string	"S_FATT_DIE2"
.LASF1240:
	.string	"S_PAIN_RUN6"
.LASF923:
	.string	"S_FATT_DIE3"
.LASF924:
	.string	"S_FATT_DIE4"
.LASF844:
	.string	"S_SMOKE1"
.LASF845:
	.string	"S_SMOKE2"
.LASF846:
	.string	"S_SMOKE3"
.LASF847:
	.string	"S_SMOKE4"
.LASF546:
	.string	"S_PISTOL1"
.LASF547:
	.string	"S_PISTOL2"
.LASF548:
	.string	"S_PISTOL3"
.LASF549:
	.string	"S_PISTOL4"
.LASF1416:
	.string	"S_PLAS"
.LASF1746:
	.string	"grabsharedmemory"
.LASF754:
	.string	"S_SPOS_PAIN2"
.LASF1610:
	.string	"MT_MISC59"
.LASF537:
	.string	"S_PUNCHUP"
.LASF865:
	.string	"S_SKEL_RUN10"
.LASF866:
	.string	"S_SKEL_RUN11"
.LASF867:
	.string	"S_SKEL_RUN12"
.LASF463:
	.string	"SPR_MEDI"
.LASF615:
	.string	"S_BFGDOWN"
.LASF650:
	.string	"S_BFGLAND"
.LASF1313:
	.string	"S_BRAIN_DIE1"
.LASF1314:
	.string	"S_BRAIN_DIE2"
.LASF1315:
	.string	"S_BRAIN_DIE3"
.LASF1316:
	.string	"S_BRAIN_DIE4"
.LASF444:
	.string	"SPR_PAIN"
.LASF396:
	.string	"SPR_PUNG"
.LASF605:
	.string	"S_SAW2"
.LASF606:
	.string	"S_SAW3"
.LASF1431:
	.string	"S_HEADCANDLES2"
.LASF1579:
	.string	"MT_SUPERSHOTGUN"
.LASF601:
	.string	"S_SAWB"
.LASF1225:
	.string	"S_CYBER_DIE2"
.LASF1226:
	.string	"S_CYBER_DIE3"
.LASF1227:
	.string	"S_CYBER_DIE4"
.LASF1228:
	.string	"S_CYBER_DIE5"
.LASF1229:
	.string	"S_CYBER_DIE6"
.LASF1230:
	.string	"S_CYBER_DIE7"
.LASF1231:
	.string	"S_CYBER_DIE8"
.LASF1232:
	.string	"S_CYBER_DIE9"
.LASF1510:
	.string	"MT_FATSHOT"
.LASF1521:
	.string	"MT_BABY"
.LASF451:
	.string	"SPR_BAR1"
.LASF16:
	.string	"__off64_t"
.LASF1769:
	.string	"I_GetEvent"
.LASF1463:
	.string	"S_GREENTORCH"
.LASF1704:
	.string	"shmget"
.LASF1766:
	.string	"I_StartTic"
.LASF786:
	.string	"S_VILE_RUN11"
.LASF1529:
	.string	"MT_SPAWNSHOT"
.LASF1668:
	.string	"X_shminfo"
.LASF9:
	.string	"signed char"
.LASF1136:
	.string	"S_SPID_RUN1"
.LASF1137:
	.string	"S_SPID_RUN2"
.LASF895:
	.string	"S_FATT_STND"
.LASF1311:
	.string	"S_BRAIN"
.LASF823:
	.string	"S_FIRE10"
.LASF824:
	.string	"S_FIRE11"
.LASF825:
	.string	"S_FIRE12"
.LASF826:
	.string	"S_FIRE13"
.LASF827:
	.string	"S_FIRE14"
.LASF828:
	.string	"S_FIRE15"
.LASF829:
	.string	"S_FIRE16"
.LASF830:
	.string	"S_FIRE17"
.LASF831:
	.string	"S_FIRE18"
.LASF832:
	.string	"S_FIRE19"
.LASF1192:
	.string	"S_BSPI_DIE7"
.LASF468:
	.string	"SPR_MEGA"
.LASF242:
	.string	"XMapRequestEvent"
.LASF1755:
	.string	"I_ReadScreen"
.LASF1761:
	.string	"twoopixels"
.LASF1066:
	.string	"S_BOSS_RUN5"
.LASF1107:
	.string	"S_BOS2_DIE4"
.LASF370:
	.string	"wp_shotgun"
.LASF1109:
	.string	"S_BOS2_DIE6"
.LASF255:
	.string	"selection"
.LASF196:
	.string	"max_keycode"
.LASF1676:
	.string	"mousemoved"
.LASF1628:
	.string	"MT_MISC77"
.LASF1206:
	.string	"S_ARACH_PLEX5"
.LASF833:
	.string	"S_FIRE20"
.LASF834:
	.string	"S_FIRE21"
.LASF835:
	.string	"S_FIRE22"
.LASF836:
	.string	"S_FIRE23"
.LASF837:
	.string	"S_FIRE24"
.LASF838:
	.string	"S_FIRE25"
.LASF839:
	.string	"S_FIRE26"
.LASF840:
	.string	"S_FIRE27"
.LASF841:
	.string	"S_FIRE28"
.LASF842:
	.string	"S_FIRE29"
.LASF568:
	.string	"S_DSGUN1"
.LASF569:
	.string	"S_DSGUN2"
.LASF570:
	.string	"S_DSGUN3"
.LASF571:
	.string	"S_DSGUN4"
.LASF572:
	.string	"S_DSGUN5"
.LASF573:
	.string	"S_DSGUN6"
.LASF574:
	.string	"S_DSGUN7"
.LASF575:
	.string	"S_DSGUN8"
.LASF576:
	.string	"S_DSGUN9"
.LASF37:
	.string	"shm_dtime"
.LASF1721:
	.string	"XNextEvent"
.LASF939:
	.string	"S_CPOS_STND"
.LASF1710:
	.string	"I_GetTime"
.LASF1772:
	.string	"xlatekey"
.LASF843:
	.string	"S_FIRE30"
.LASF1519:
	.string	"MT_SKULL"
.LASF260:
	.string	"property"
.LASF850:
	.string	"S_TRACER2"
.LASF1380:
	.string	"S_SOUL6"
.LASF71:
	.string	"fill_style"
.LASF246:
	.string	"XGravityEvent"
.LASF1320:
	.string	"S_SPAWN1"
.LASF1321:
	.string	"S_SPAWN2"
.LASF1322:
	.string	"S_SPAWN3"
.LASF1323:
	.string	"S_SPAWN4"
.LASF1406:
	.string	"S_BROK"
.LASF876:
	.string	"S_SKEL_PAIN"
.LASF626:
	.string	"S_PUFF1"
.LASF627:
	.string	"S_PUFF2"
.LASF628:
	.string	"S_PUFF3"
.LASF629:
	.string	"S_PUFF4"
.LASF268:
	.string	"resourceid"
.LASF154:
	.string	"bitmap_pad"
.LASF622:
	.string	"S_BFGFLASH2"
.LASF390:
	.string	"pw_infrared"
.LASF303:
	.string	"xselection"
.LASF1070:
	.string	"S_BOSS_ATK1"
.LASF1071:
	.string	"S_BOSS_ATK2"
.LASF86:
	.string	"XGCValues"
.LASF1725:
	.string	"XShmDetach"
.LASF104:
	.string	"mwidth"
.LASF1523:
	.string	"MT_PAIN"
.LASF909:
	.string	"S_FATT_ATK1"
.LASF910:
	.string	"S_FATT_ATK2"
.LASF911:
	.string	"S_FATT_ATK3"
.LASF312:
	.string	"visual"
.LASF913:
	.string	"S_FATT_ATK5"
.LASF914:
	.string	"S_FATT_ATK6"
.LASF915:
	.string	"S_FATT_ATK7"
.LASF916:
	.string	"S_FATT_ATK8"
.LASF917:
	.string	"S_FATT_ATK9"
.LASF1487:
	.string	"S_HANGTLOOKUP"
.LASF642:
	.string	"S_PLASEXP"
.LASF22:
	.string	"long long unsigned int"
.LASF1123:
	.string	"S_SKULL_ATK2"
.LASF1538:
	.string	"MT_PUFF"
.LASF247:
	.string	"XResizeRequestEvent"
.LASF316:
	.string	"ShmSeg"
.LASF1681:
	.string	"inited"
.LASF474:
	.string	"SPR_ROCK"
.LASF512:
	.string	"SPR_CEYE"
.LASF1708:
	.string	"XPutImage"
.LASF1500:
	.string	"NUMSTATES"
.LASF158:
	.string	"pixel"
.LASF1168:
	.string	"S_BSPI_RUN1"
.LASF1169:
	.string	"S_BSPI_RUN2"
.LASF95:
	.string	"Visual"
.LASF1171:
	.string	"S_BSPI_RUN4"
.LASF1172:
	.string	"S_BSPI_RUN5"
.LASF1173:
	.string	"S_BSPI_RUN6"
.LASF1174:
	.string	"S_BSPI_RUN7"
.LASF1175:
	.string	"S_BSPI_RUN8"
.LASF1176:
	.string	"S_BSPI_RUN9"
.LASF410:
	.string	"SPR_BLUD"
.LASF1517:
	.string	"MT_BRUISERSHOT"
.LASF90:
	.string	"red_mask"
.LASF217:
	.string	"XButtonEvent"
.LASF949:
	.string	"S_CPOS_ATK1"
.LASF950:
	.string	"S_CPOS_ATK2"
.LASF951:
	.string	"S_CPOS_ATK3"
.LASF952:
	.string	"S_CPOS_ATK4"
.LASF1709:
	.string	"XShmPutImage"
.LASF1543:
	.string	"MT_EXTRABFG"
.LASF1421:
	.string	"S_BLOODYTWITCH"
.LASF1744:
	.string	"valuemask"
.LASF1442:
	.string	"S_TALLREDCOL"
.LASF797:
	.string	"S_VILE_ATK10"
.LASF1544:
	.string	"MT_MISC0"
.LASF1545:
	.string	"MT_MISC1"
.LASF1546:
	.string	"MT_MISC2"
.LASF1547:
	.string	"MT_MISC3"
.LASF1548:
	.string	"MT_MISC4"
.LASF1549:
	.string	"MT_MISC5"
.LASF1550:
	.string	"MT_MISC6"
.LASF1122:
	.string	"S_SKULL_ATK1"
.LASF1055:
	.string	"S_BRBALL1"
.LASF1056:
	.string	"S_BRBALL2"
.LASF1124:
	.string	"S_SKULL_ATK3"
.LASF137:
	.string	"colormap"
.LASF96:
	.string	"depth"
.LASF147:
	.string	"_XImage"
.LASF400:
	.string	"SPR_SHT2"
.LASF229:
	.string	"major_code"
.LASF399:
	.string	"SPR_SHTF"
.LASF395:
	.string	"SPR_SHTG"
.LASF1506:
	.string	"MT_UNDEAD"
.LASF977:
	.string	"S_TROO_RUN1"
.LASF978:
	.string	"S_TROO_RUN2"
.LASF979:
	.string	"S_TROO_RUN3"
.LASF980:
	.string	"S_TROO_RUN4"
.LASF981:
	.string	"S_TROO_RUN5"
.LASF982:
	.string	"S_TROO_RUN6"
.LASF983:
	.string	"S_TROO_RUN7"
.LASF984:
	.string	"S_TROO_RUN8"
.LASF658:
	.string	"S_BFGEXP3"
.LASF295:
	.string	"xgravity"
.LASF118:
	.string	"root_input_mask"
.LASF1419:
	.string	"S_COLU"
.LASF511:
	.string	"SPR_ELEC"
.LASF1309:
	.string	"S_KEENPAIN"
.LASF76:
	.string	"ts_x_origin"
.LASF161:
	.string	"flags"
.LASF1127:
	.string	"S_SKULL_PAIN2"
.LASF1729:
	.string	"dpixel"
.LASF480:
	.string	"SPR_BPAK"
.LASF1203:
	.string	"S_ARACH_PLEX2"
.LASF1204:
	.string	"S_ARACH_PLEX3"
.LASF1205:
	.string	"S_ARACH_PLEX4"
.LASF357:
	.string	"FILE"
.LASF120:
	.string	"_XDisplay"
.LASF1778:
	.string	"I_Quit"
.LASF1306:
	.string	"S_COMMKEEN10"
.LASF1102:
	.string	"S_BOS2_PAIN"
.LASF1163:
	.string	"S_SPID_DIE10"
.LASF1164:
	.string	"S_SPID_DIE11"
.LASF1692:
	.string	"XCreateColormap"
.LASF720:
	.string	"S_POSS_PAIN"
.LASF3:
	.string	"char"
.LASF1465:
	.string	"S_GREENTORCH3"
.LASF1466:
	.string	"S_GREENTORCH4"
.LASF288:
	.string	"xcreatewindow"
.LASF1745:
	.string	"firsttime"
.LASF297:
	.string	"xconfigurerequest"
.LASF415:
	.string	"SPR_PLSE"
.LASF407:
	.string	"SPR_PLSF"
.LASF406:
	.string	"SPR_PLSG"
.LASF414:
	.string	"SPR_PLSS"
.LASF85:
	.string	"dashes"
.LASF1282:
	.string	"S_SSWV_XDIE1"
.LASF1283:
	.string	"S_SSWV_XDIE2"
.LASF1284:
	.string	"S_SSWV_XDIE3"
.LASF1285:
	.string	"S_SSWV_XDIE4"
.LASF1253:
	.string	"S_PAIN_RAISE1"
.LASF1254:
	.string	"S_PAIN_RAISE2"
.LASF1255:
	.string	"S_PAIN_RAISE3"
.LASF1256:
	.string	"S_PAIN_RAISE4"
.LASF231:
	.string	"XGraphicsExposeEvent"
.LASF1258:
	.string	"S_PAIN_RAISE6"
.LASF122:
	.string	"bits_per_pixel"
.LASF1426:
	.string	"S_DEADBOTTOM"
.LASF1691:
	.string	"XCreateWindow"
.LASF469:
	.string	"SPR_SUIT"
.LASF1640:
	.string	"ps_flash"
.LASF1777:
	.string	"__isoc99_sscanf"
.LASF683:
	.string	"S_PLAY_RUN1"
.LASF684:
	.string	"S_PLAY_RUN2"
.LASF685:
	.string	"S_PLAY_RUN3"
.LASF686:
	.string	"S_PLAY_RUN4"
.LASF108:
	.string	"root_depth"
.LASF802:
	.string	"S_VILE_PAIN"
.LASF1730:
	.string	"fourpixels"
.LASF1361:
	.string	"S_BKEY"
.LASF678:
	.string	"S_IFOG2"
.LASF679:
	.string	"S_IFOG3"
.LASF680:
	.string	"S_IFOG4"
.LASF83:
	.string	"clip_mask"
.LASF1671:
	.string	"doPointerWarp"
.LASF1075:
	.string	"S_BOSS_DIE1"
.LASF1076:
	.string	"S_BOSS_DIE2"
.LASF1077:
	.string	"S_BOSS_DIE3"
.LASF1078:
	.string	"S_BOSS_DIE4"
.LASF1079:
	.string	"S_BOSS_DIE5"
.LASF1080:
	.string	"S_BOSS_DIE6"
.LASF1081:
	.string	"S_BOSS_DIE7"
.LASF1501:
	.string	"MT_PLAYER"
.LASF299:
	.string	"xcirculaterequest"
.LASF1036:
	.string	"S_HEAD_RUN1"
.LASF965:
	.string	"S_CPOS_XDIE4"
.LASF1291:
	.string	"S_SSWV_RAISE1"
.LASF1292:
	.string	"S_SSWV_RAISE2"
.LASF1293:
	.string	"S_SSWV_RAISE3"
.LASF1294:
	.string	"S_SSWV_RAISE4"
.LASF1295:
	.string	"S_SSWV_RAISE5"
.LASF727:
	.string	"S_POSS_XDIE1"
.LASF728:
	.string	"S_POSS_XDIE2"
.LASF729:
	.string	"S_POSS_XDIE3"
.LASF730:
	.string	"S_POSS_XDIE4"
.LASF731:
	.string	"S_POSS_XDIE5"
.LASF732:
	.string	"S_POSS_XDIE6"
.LASF733:
	.string	"S_POSS_XDIE7"
.LASF734:
	.string	"S_POSS_XDIE8"
.LASF735:
	.string	"S_POSS_XDIE9"
.LASF929:
	.string	"S_FATT_DIE9"
.LASF305:
	.string	"xclient"
.LASF1488:
	.string	"S_HANGTNOBRAIN"
.LASF23:
	.string	"__key"
.LASF643:
	.string	"S_PLASEXP2"
.LASF644:
	.string	"S_PLASEXP3"
.LASF645:
	.string	"S_PLASEXP4"
.LASF646:
	.string	"S_PLASEXP5"
.LASF585:
	.string	"S_CHAIN1"
.LASF586:
	.string	"S_CHAIN2"
.LASF587:
	.string	"S_CHAIN3"
.LASF690:
	.string	"S_PLAY_PAIN2"
.LASF150:
	.string	"data"
.LASF1563:
	.string	"MT_MEGA"
.LASF82:
	.string	"clip_y_origin"
.LASF1641:
	.string	"NUMPSPRITES"
.LASF1748:
	.string	"shminfo"
.LASF1654:
	.string	"usegamma"
.LASF91:
	.string	"green_mask"
.LASF1452:
	.string	"S_EVILEYE3"
.LASF1453:
	.string	"S_EVILEYE4"
.LASF341:
	.string	"_chain"
.LASF955:
	.string	"S_CPOS_DIE1"
.LASF957:
	.string	"S_CPOS_DIE3"
.LASF956:
	.string	"S_CPOS_DIE2"
.LASF959:
	.string	"S_CPOS_DIE5"
.LASF960:
	.string	"S_CPOS_DIE6"
.LASF961:
	.string	"S_CPOS_DIE7"
.LASF958:
	.string	"S_CPOS_DIE4"
.LASF26:
	.string	"mode"
.LASF162:
	.string	"XColor"
.LASF1496:
	.string	"S_TECH2LAMP"
.LASF1646:
	.string	"ev_mouse"
.LASF1368:
	.string	"S_BSKULL2"
.LASF99:
	.string	"Depth"
.LASF631:
	.string	"S_TBALL2"
.LASF310:
	.string	"xcookie"
.LASF651:
	.string	"S_BFGLAND2"
.LASF652:
	.string	"S_BFGLAND3"
.LASF653:
	.string	"S_BFGLAND4"
.LASF654:
	.string	"S_BFGLAND5"
.LASF655:
	.string	"S_BFGLAND6"
.LASF1733:
	.string	"InitExpand2"
.LASF553:
	.string	"S_SGUNUP"
.LASF509:
	.string	"SPR_TRE1"
.LASF510:
	.string	"SPR_TRE2"
.LASF775:
	.string	"S_VILE_STND2"
.LASF139:
	.string	"XSetWindowAttributes"
.LASF517:
	.string	"SPR_TRED"
.LASF1234:
	.string	"S_PAIN_STND"
.LASF940:
	.string	"S_CPOS_STND2"
.LASF225:
	.string	"XKeymapEvent"
.LASF298:
	.string	"xcirculate"
.LASF1386:
	.string	"S_PINS"
.LASF1381:
	.string	"S_PINV"
.LASF1714:
	.string	"XFreePixmap"
.LASF45:
	.string	"VisualID"
.LASF1736:
	.string	"displayname"
.LASF1683:
	.string	"malloc"
.LASF931:
	.string	"S_FATT_RAISE1"
.LASF932:
	.string	"S_FATT_RAISE2"
.LASF933:
	.string	"S_FATT_RAISE3"
.LASF934:
	.string	"S_FATT_RAISE4"
.LASF935:
	.string	"S_FATT_RAISE5"
.LASF936:
	.string	"S_FATT_RAISE6"
.LASF937:
	.string	"S_FATT_RAISE7"
.LASF938:
	.string	"S_FATT_RAISE8"
.LASF142:
	.string	"destroy_image"
.LASF145:
	.string	"sub_image"
.LASF352:
	.string	"_freeres_list"
.LASF107:
	.string	"depths"
.LASF164:
	.string	"private1"
.LASF165:
	.string	"private2"
.LASF169:
	.string	"private3"
.LASF170:
	.string	"private4"
.LASF171:
	.string	"private5"
.LASF172:
	.string	"private6"
.LASF176:
	.string	"private8"
.LASF178:
	.string	"private9"
.LASF1492:
	.string	"S_TECHLAMP"
.LASF1707:
	.string	"XSync"
.LASF588:
	.string	"S_CHAINFLASH1"
.LASF589:
	.string	"S_CHAINFLASH2"
.LASF1467:
	.string	"S_REDTORCH"
.LASF384:
	.string	"am_noammo"
.LASF361:
	.string	"it_bluecard"
.LASF327:
	.string	"_IO_FILE"
.LASF769:
	.string	"S_SPOS_RAISE1"
.LASF770:
	.string	"S_SPOS_RAISE2"
.LASF771:
	.string	"S_SPOS_RAISE3"
.LASF772:
	.string	"S_SPOS_RAISE4"
.LASF773:
	.string	"S_SPOS_RAISE5"
.LASF67:
	.string	"line_width"
.LASF1720:
	.string	"D_PostEvent"
.LASF1451:
	.string	"S_EVILEYE2"
.LASF1372:
	.string	"S_YSKULL2"
.LASF953:
	.string	"S_CPOS_PAIN"
.LASF1414:
	.string	"S_CSAW"
.LASF1680:
	.string	"exptable2"
.LASF14:
	.string	"__mode_t"
.LASF542:
	.string	"S_PUNCH5"
.LASF1241:
	.string	"S_PAIN_ATK1"
.LASF1242:
	.string	"S_PAIN_ATK2"
.LASF1243:
	.string	"S_PAIN_ATK3"
.LASF1244:
	.string	"S_PAIN_ATK4"
.LASF896:
	.string	"S_FATT_STND2"
.LASF544:
	.string	"S_PISTOLDOWN"
.LASF1223:
	.string	"S_CYBER_PAIN"
.LASF156:
	.string	"obdata"
.LASF1405:
	.string	"S_ROCK"
.LASF1257:
	.string	"S_PAIN_RAISE5"
.LASF78:
	.string	"font"
.LASF49:
	.string	"Font"
.LASF1731:
	.string	"step"
.LASF232:
	.string	"XNoExposeEvent"
.LASF538:
	.string	"S_PUNCH1"
.LASF539:
	.string	"S_PUNCH2"
.LASF540:
	.string	"S_PUNCH3"
.LASF541:
	.string	"S_PUNCH4"
.LASF202:
	.string	"_XrmHashBucketRec"
.LASF1138:
	.string	"S_SPID_RUN3"
.LASF1139:
	.string	"S_SPID_RUN4"
.LASF1140:
	.string	"S_SPID_RUN5"
.LASF1141:
	.string	"S_SPID_RUN6"
.LASF1142:
	.string	"S_SPID_RUN7"
.LASF205:
	.string	"serial"
.LASF1144:
	.string	"S_SPID_RUN9"
.LASF1742:
	.string	"attribs"
.LASF1764:
	.string	"fouropixels"
.LASF270:
	.string	"request_code"
.LASF976:
	.string	"S_TROO_STND2"
.LASF306:
	.string	"xmapping"
.LASF8:
	.string	"unsigned int"
.LASF1505:
	.string	"MT_FIRE"
.LASF88:
	.string	"visualid"
.LASF1166:
	.string	"S_BSPI_STND2"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"i_video.c"
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
