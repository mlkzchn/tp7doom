	.file	"hu_lib.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "hu_lib.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 49
rcsid:
	.string	"$Id: hu_lib.c,v 1.3 1997/01/26 07:44:58 b1 Exp $"
	.text
	.globl	HUlib_init
	.type	HUlib_init, @function
HUlib_init:
.LFB0:
	.file 1 "hu_lib.c"
	.loc 1 43 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# hu_lib.c:44: }
	.loc 1 44 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	HUlib_init, .-HUlib_init
	.globl	HUlib_clearTextLine
	.type	HUlib_clearTextLine, @function
HUlib_clearTextLine:
.LFB1:
	.loc 1 47 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# t, t
# hu_lib.c:48:     t->len = 0;
	.loc 1 48 12
	movq	-8(%rbp), %rax	# t, tmp82
	movl	$0, 104(%rax)	#, t_2(D)->len
# hu_lib.c:49:     t->l[0] = 0;
	.loc 1 49 13
	movq	-8(%rbp), %rax	# t, tmp83
	movb	$0, 20(%rax)	#, t_2(D)->l[0]
# hu_lib.c:50:     t->needsupdate = true;
	.loc 1 50 20
	movq	-8(%rbp), %rax	# t, tmp84
	movl	$1, 108(%rax)	#, t_2(D)->needsupdate
# hu_lib.c:51: }
	.loc 1 51 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	HUlib_clearTextLine, .-HUlib_clearTextLine
	.globl	HUlib_initTextLine
	.type	HUlib_initTextLine, @function
HUlib_initTextLine:
.LFB2:
	.loc 1 60 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# t, t
	movl	%esi, -12(%rbp)	# x, x
	movl	%edx, -16(%rbp)	# y, y
	movq	%rcx, -24(%rbp)	# f, f
	movl	%r8d, -28(%rbp)	# sc, sc
# hu_lib.c:61:     t->x = x;
	.loc 1 61 10
	movq	-8(%rbp), %rax	# t, tmp82
	movl	-12(%rbp), %edx	# x, tmp83
	movl	%edx, (%rax)	# tmp83, t_2(D)->x
# hu_lib.c:62:     t->y = y;
	.loc 1 62 10
	movq	-8(%rbp), %rax	# t, tmp84
	movl	-16(%rbp), %edx	# y, tmp85
	movl	%edx, 4(%rax)	# tmp85, t_2(D)->y
# hu_lib.c:63:     t->f = f;
	.loc 1 63 10
	movq	-8(%rbp), %rax	# t, tmp86
	movq	-24(%rbp), %rdx	# f, tmp87
	movq	%rdx, 8(%rax)	# tmp87, t_2(D)->f
# hu_lib.c:64:     t->sc = sc;
	.loc 1 64 11
	movq	-8(%rbp), %rax	# t, tmp88
	movl	-28(%rbp), %edx	# sc, tmp89
	movl	%edx, 16(%rax)	# tmp89, t_2(D)->sc
# hu_lib.c:65:     HUlib_clearTextLine(t);
	.loc 1 65 5
	movq	-8(%rbp), %rax	# t, tmp90
	movq	%rax, %rdi	# tmp90,
	call	HUlib_clearTextLine	#
# hu_lib.c:66: }
	.loc 1 66 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	HUlib_initTextLine, .-HUlib_initTextLine
	.globl	HUlib_addCharToTextLine
	.type	HUlib_addCharToTextLine, @function
HUlib_addCharToTextLine:
.LFB3:
	.loc 1 72 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# t, t
	movl	%esi, %eax	# ch, tmp88
	movb	%al, -12(%rbp)	# tmp89, ch
# hu_lib.c:74:     if (t->len == HU_MAXLINELENGTH)
	.loc 1 74 10
	movq	-8(%rbp), %rax	# t, tmp90
	movl	104(%rax), %eax	# t_9(D)->len, _1
# hu_lib.c:74:     if (t->len == HU_MAXLINELENGTH)
	.loc 1 74 8
	cmpl	$80, %eax	#, _1
	jne	.L5	#,
# hu_lib.c:75: 	return false;
	.loc 1 75 9
	movl	$0, %eax	#, _6
	jmp	.L6	#
.L5:
# hu_lib.c:78: 	t->l[t->len++] = ch;
	.loc 1 78 8
	movq	-8(%rbp), %rax	# t, tmp91
	movl	104(%rax), %eax	# t_9(D)->len, _2
# hu_lib.c:78: 	t->l[t->len++] = ch;
	.loc 1 78 13
	leal	1(%rax), %ecx	#, _4
	movq	-8(%rbp), %rdx	# t, tmp92
	movl	%ecx, 104(%rdx)	# _4, t_9(D)->len
# hu_lib.c:78: 	t->l[t->len++] = ch;
	.loc 1 78 17
	movq	-8(%rbp), %rdx	# t, tmp93
	cltq
	movzbl	-12(%rbp), %ecx	# ch, tmp95
	movb	%cl, 20(%rdx,%rax)	# tmp95, t_9(D)->l[_3]
# hu_lib.c:79: 	t->l[t->len] = 0;
	.loc 1 79 8
	movq	-8(%rbp), %rax	# t, tmp96
	movl	104(%rax), %eax	# t_9(D)->len, _5
# hu_lib.c:79: 	t->l[t->len] = 0;
	.loc 1 79 15
	movq	-8(%rbp), %rdx	# t, tmp97
	cltq
	movb	$0, 20(%rdx,%rax)	#, t_9(D)->l[_5]
# hu_lib.c:80: 	t->needsupdate = 4;
	.loc 1 80 17
	movq	-8(%rbp), %rax	# t, tmp99
	movl	$4, 108(%rax)	#, t_9(D)->needsupdate
# hu_lib.c:81: 	return true;
	.loc 1 81 9
	movl	$1, %eax	#, _6
.L6:
# hu_lib.c:84: }
	.loc 1 84 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	HUlib_addCharToTextLine, .-HUlib_addCharToTextLine
	.globl	HUlib_delCharFromTextLine
	.type	HUlib_delCharFromTextLine, @function
HUlib_delCharFromTextLine:
.LFB4:
	.loc 1 87 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# t, t
# hu_lib.c:89:     if (!t->len) return false;
	.loc 1 89 11
	movq	-8(%rbp), %rax	# t, tmp88
	movl	104(%rax), %eax	# t_8(D)->len, _1
# hu_lib.c:89:     if (!t->len) return false;
	.loc 1 89 8
	testl	%eax, %eax	# _1
	jne	.L8	#,
# hu_lib.c:89:     if (!t->len) return false;
	.loc 1 89 25 discriminator 1
	movl	$0, %eax	#, _5
# hu_lib.c:89:     if (!t->len) return false;
	.loc 1 89 25 is_stmt 0
	jmp	.L9	#
.L8:
# hu_lib.c:92: 	t->l[--t->len] = 0;
	.loc 1 92 10 is_stmt 1
	movq	-8(%rbp), %rax	# t, tmp89
	movl	104(%rax), %eax	# t_8(D)->len, _2
# hu_lib.c:92: 	t->l[--t->len] = 0;
	.loc 1 92 7
	leal	-1(%rax), %edx	#, _3
# hu_lib.c:92: 	t->l[--t->len] = 0;
	.loc 1 92 17
	movq	-8(%rbp), %rax	# t, tmp90
	movl	%edx, 104(%rax)	# _3, t_8(D)->len
# hu_lib.c:92: 	t->l[--t->len] = 0;
	.loc 1 92 10
	movq	-8(%rbp), %rax	# t, tmp91
	movl	104(%rax), %eax	# t_8(D)->len, _4
# hu_lib.c:92: 	t->l[--t->len] = 0;
	.loc 1 92 17
	movq	-8(%rbp), %rdx	# t, tmp92
	cltq
	movb	$0, 20(%rdx,%rax)	#, t_8(D)->l[_4]
# hu_lib.c:93: 	t->needsupdate = 4;
	.loc 1 93 17
	movq	-8(%rbp), %rax	# t, tmp94
	movl	$4, 108(%rax)	#, t_8(D)->needsupdate
# hu_lib.c:94: 	return true;
	.loc 1 94 9
	movl	$1, %eax	#, _5
.L9:
# hu_lib.c:97: }
	.loc 1 97 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	HUlib_delCharFromTextLine, .-HUlib_delCharFromTextLine
	.globl	HUlib_drawTextLine
	.type	HUlib_drawTextLine, @function
HUlib_drawTextLine:
.LFB5:
	.loc 1 103 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
	movl	%esi, -28(%rbp)	# drawcursor, drawcursor
# hu_lib.c:111:     x = l->x;
	.loc 1 111 7
	movq	-24(%rbp), %rax	# l, tmp125
	movl	(%rax), %eax	# l_52(D)->x, tmp126
	movl	%eax, -8(%rbp)	# tmp126, x
# hu_lib.c:112:     for (i=0;i<l->len;i++)
	.loc 1 112 11
	movl	$0, -12(%rbp)	#, i
# hu_lib.c:112:     for (i=0;i<l->len;i++)
	.loc 1 112 5
	jmp	.L11	#
.L16:
# hu_lib.c:114: 	c = toupper(l->l[i]);
	.loc 1 114 18
	movq	-24(%rbp), %rdx	# l, tmp127
	movl	-12(%rbp), %eax	# i, tmp129
	cltq
	movzbl	20(%rdx,%rax), %eax	# l_52(D)->l[i_44], _1
# hu_lib.c:114: 	c = toupper(l->l[i]);
	.loc 1 114 6
	movsbl	%al, %eax	# _1, _2
	movl	%eax, %edi	# _2,
	call	toupper@PLT	#
# hu_lib.c:114: 	c = toupper(l->l[i]);
	.loc 1 114 4 discriminator 1
	movb	%al, -13(%rbp)	# _3, c
# hu_lib.c:115: 	if (c != ' '
	.loc 1 115 5
	cmpb	$32, -13(%rbp)	#, c
	je	.L12	#,
# hu_lib.c:116: 	    && c >= l->sc
	.loc 1 116 11
	movzbl	-13(%rbp), %edx	# c, _4
# hu_lib.c:116: 	    && c >= l->sc
	.loc 1 116 15
	movq	-24(%rbp), %rax	# l, tmp130
	movl	16(%rax), %eax	# l_52(D)->sc, _5
# hu_lib.c:116: 	    && c >= l->sc
	.loc 1 116 6
	cmpl	%eax, %edx	# _5, _4
	jl	.L12	#,
# hu_lib.c:117: 	    && c <= '_')
	.loc 1 117 6
	cmpb	$95, -13(%rbp)	#, c
	ja	.L12	#,
# hu_lib.c:119: 	    w = SHORT(l->f[c - l->sc]->width);
	.loc 1 119 10
	movq	-24(%rbp), %rax	# l, tmp131
	movq	8(%rax), %rdx	# l_52(D)->f, _6
	movzbl	-13(%rbp), %ecx	# c, _7
	movq	-24(%rbp), %rax	# l, tmp132
	movl	16(%rax), %eax	# l_52(D)->sc, _8
	subl	%eax, %ecx	# _8, _9
	movslq	%ecx, %rax	# _9, _10
	salq	$3, %rax	#, _11
	addq	%rdx, %rax	# _6, _12
	movq	(%rax), %rax	# *_12, _13
	movzwl	(%rax), %eax	# _13->width, _14
# hu_lib.c:119: 	    w = SHORT(l->f[c - l->sc]->width);
	.loc 1 119 8
	cwtl
	movl	%eax, -4(%rbp)	# tmp133, w
# hu_lib.c:120: 	    if (x+w > SCREENWIDTH)
	.loc 1 120 11
	movl	-8(%rbp), %edx	# x, tmp134
	movl	-4(%rbp), %eax	# w, tmp135
	addl	%edx, %eax	# tmp134, _15
# hu_lib.c:120: 	    if (x+w > SCREENWIDTH)
	.loc 1 120 9
	cmpl	$320, %eax	#, _15
	jg	.L18	#,
# hu_lib.c:122: 	    V_DrawPatchDirect(x, l->y, FG, l->f[c - l->sc]);
	.loc 1 122 38
	movq	-24(%rbp), %rax	# l, tmp136
	movq	8(%rax), %rdx	# l_52(D)->f, _16
# hu_lib.c:122: 	    V_DrawPatchDirect(x, l->y, FG, l->f[c - l->sc]);
	.loc 1 122 44
	movzbl	-13(%rbp), %ecx	# c, _17
# hu_lib.c:122: 	    V_DrawPatchDirect(x, l->y, FG, l->f[c - l->sc]);
	.loc 1 122 47
	movq	-24(%rbp), %rax	# l, tmp137
	movl	16(%rax), %eax	# l_52(D)->sc, _18
# hu_lib.c:122: 	    V_DrawPatchDirect(x, l->y, FG, l->f[c - l->sc]);
	.loc 1 122 44
	subl	%eax, %ecx	# _18, _19
	movslq	%ecx, %rax	# _19, _20
# hu_lib.c:122: 	    V_DrawPatchDirect(x, l->y, FG, l->f[c - l->sc]);
	.loc 1 122 41
	salq	$3, %rax	#, _21
	addq	%rdx, %rax	# _16, _22
# hu_lib.c:122: 	    V_DrawPatchDirect(x, l->y, FG, l->f[c - l->sc]);
	.loc 1 122 6
	movq	(%rax), %rdx	# *_22, _23
	movq	-24(%rbp), %rax	# l, tmp138
	movl	4(%rax), %esi	# l_52(D)->y, _24
	movl	-8(%rbp), %eax	# x, tmp139
	movq	%rdx, %rcx	# _23,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp139,
	call	V_DrawPatchDirect@PLT	#
# hu_lib.c:123: 	    x += w;
	.loc 1 123 8
	movl	-4(%rbp), %eax	# w, tmp140
	addl	%eax, -8(%rbp)	# tmp140, x
	jmp	.L15	#
.L12:
# hu_lib.c:127: 	    x += 4;
	.loc 1 127 8
	addl	$4, -8(%rbp)	#, x
# hu_lib.c:128: 	    if (x >= SCREENWIDTH)
	.loc 1 128 9
	cmpl	$319, -8(%rbp)	#, x
	jg	.L19	#,
.L15:
# hu_lib.c:112:     for (i=0;i<l->len;i++)
	.loc 1 112 24 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L11:
# hu_lib.c:112:     for (i=0;i<l->len;i++)
	.loc 1 112 17 discriminator 1
	movq	-24(%rbp), %rax	# l, tmp141
	movl	104(%rax), %eax	# l_52(D)->len, _25
# hu_lib.c:112:     for (i=0;i<l->len;i++)
	.loc 1 112 15 discriminator 1
	cmpl	%eax, -12(%rbp)	# _25, i
	jl	.L16	#,
	jmp	.L14	#
.L18:
# hu_lib.c:121: 		break;
	.loc 1 121 3
	nop	
	jmp	.L14	#
.L19:
# hu_lib.c:129: 		break;
	.loc 1 129 3
	nop	
.L14:
# hu_lib.c:134:     if (drawcursor
	.loc 1 134 8
	cmpl	$0, -28(%rbp)	#, drawcursor
	je	.L20	#,
# hu_lib.c:135: 	&& x + SHORT(l->f['_' - l->sc]->width) <= SCREENWIDTH)
	.loc 1 135 9
	movq	-24(%rbp), %rax	# l, tmp142
	movq	8(%rax), %rdx	# l_52(D)->f, _26
	movq	-24(%rbp), %rax	# l, tmp143
	movl	16(%rax), %eax	# l_52(D)->sc, _27
	movl	$95, %ecx	#, tmp144
	subl	%eax, %ecx	# _27, _28
	movslq	%ecx, %rax	# _28, _29
	salq	$3, %rax	#, _30
	addq	%rdx, %rax	# _26, _31
	movq	(%rax), %rax	# *_31, _32
	movzwl	(%rax), %eax	# _32->width, _33
	movswl	%ax, %edx	# _33, _34
# hu_lib.c:135: 	&& x + SHORT(l->f['_' - l->sc]->width) <= SCREENWIDTH)
	.loc 1 135 7
	movl	-8(%rbp), %eax	# x, tmp145
	addl	%edx, %eax	# _34, _35
# hu_lib.c:135: 	&& x + SHORT(l->f['_' - l->sc]->width) <= SCREENWIDTH)
	.loc 1 135 2
	cmpl	$320, %eax	#, _35
	jg	.L20	#,
# hu_lib.c:137: 	V_DrawPatchDirect(x, l->y, FG, l->f['_' - l->sc]);
	.loc 1 137 34
	movq	-24(%rbp), %rax	# l, tmp146
	movq	8(%rax), %rdx	# l_52(D)->f, _36
# hu_lib.c:137: 	V_DrawPatchDirect(x, l->y, FG, l->f['_' - l->sc]);
	.loc 1 137 45
	movq	-24(%rbp), %rax	# l, tmp147
	movl	16(%rax), %eax	# l_52(D)->sc, _37
# hu_lib.c:137: 	V_DrawPatchDirect(x, l->y, FG, l->f['_' - l->sc]);
	.loc 1 137 42
	movl	$95, %ecx	#, tmp148
	subl	%eax, %ecx	# _37, _38
	movslq	%ecx, %rax	# _38, _39
# hu_lib.c:137: 	V_DrawPatchDirect(x, l->y, FG, l->f['_' - l->sc]);
	.loc 1 137 37
	salq	$3, %rax	#, _40
	addq	%rdx, %rax	# _36, _41
# hu_lib.c:137: 	V_DrawPatchDirect(x, l->y, FG, l->f['_' - l->sc]);
	.loc 1 137 2
	movq	(%rax), %rdx	# *_41, _42
	movq	-24(%rbp), %rax	# l, tmp149
	movl	4(%rax), %esi	# l_52(D)->y, _43
	movl	-8(%rbp), %eax	# x, tmp150
	movq	%rdx, %rcx	# _42,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp150,
	call	V_DrawPatchDirect@PLT	#
.L20:
# hu_lib.c:139: }
	.loc 1 139 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	HUlib_drawTextLine, .-HUlib_drawTextLine
	.globl	HUlib_eraseTextLine
	.type	HUlib_eraseTextLine, @function
HUlib_eraseTextLine:
.LFB6:
	.loc 1 144 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# l, l
# hu_lib.c:154:     if (!automapactive &&
	.loc 1 154 9
	movl	automapactive(%rip), %eax	# automapactive, automapactive.0_1
# hu_lib.c:154:     if (!automapactive &&
	.loc 1 154 8
	testl	%eax, %eax	# automapactive.0_1
	jne	.L22	#,
# hu_lib.c:154:     if (!automapactive &&
	.loc 1 154 24 discriminator 1
	movl	viewwindowx(%rip), %eax	# viewwindowx, viewwindowx.1_2
	testl	%eax, %eax	# viewwindowx.1_2
	je	.L22	#,
# hu_lib.c:155: 	viewwindowx && l->needsupdate)
	.loc 1 155 18
	movq	-24(%rbp), %rax	# l, tmp108
	movl	108(%rax), %eax	# l_34(D)->needsupdate, _3
# hu_lib.c:155: 	viewwindowx && l->needsupdate)
	.loc 1 155 14
	testl	%eax, %eax	# _3
	je	.L22	#,
# hu_lib.c:157: 	lh = SHORT(l->f[0]->height) + 1;
	.loc 1 157 7
	movq	-24(%rbp), %rax	# l, tmp109
	movq	8(%rax), %rax	# l_34(D)->f, _4
	movq	(%rax), %rax	# *_4, _5
	movzwl	2(%rax), %eax	# _5->height, _6
	cwtl
# hu_lib.c:157: 	lh = SHORT(l->f[0]->height) + 1;
	.loc 1 157 5
	addl	$1, %eax	#, tmp110
	movl	%eax, -4(%rbp)	# tmp110, lh
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 8
	movq	-24(%rbp), %rax	# l, tmp111
	movl	4(%rax), %eax	# l_34(D)->y, tmp112
	movl	%eax, -12(%rbp)	# tmp112, y
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 21
	movl	-12(%rbp), %edx	# y, tmp113
	movl	%edx, %eax	# tmp113, tmp114
	sall	$2, %eax	#, tmp114
	addl	%edx, %eax	# tmp113, tmp114
	sall	$6, %eax	#, tmp115
	movl	%eax, -8(%rbp)	# tmp114, yoffset
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 2
	jmp	.L23	#
.L27:
# hu_lib.c:160: 	    if (y < viewwindowy || y >= viewwindowy + viewheight)
	.loc 1 160 12
	movl	viewwindowy(%rip), %eax	# viewwindowy, viewwindowy.2_8
# hu_lib.c:160: 	    if (y < viewwindowy || y >= viewwindowy + viewheight)
	.loc 1 160 9
	cmpl	%eax, -12(%rbp)	# viewwindowy.2_8, y
	jl	.L24	#,
# hu_lib.c:160: 	    if (y < viewwindowy || y >= viewwindowy + viewheight)
	.loc 1 160 46 discriminator 1
	movl	viewwindowy(%rip), %edx	# viewwindowy, viewwindowy.3_9
	movl	viewheight(%rip), %eax	# viewheight, viewheight.4_10
	addl	%edx, %eax	# viewwindowy.3_9, _11
# hu_lib.c:160: 	    if (y < viewwindowy || y >= viewwindowy + viewheight)
	.loc 1 160 26 discriminator 1
	cmpl	%eax, -12(%rbp)	# _11, y
	jl	.L25	#,
.L24:
# hu_lib.c:161: 		R_VideoErase(yoffset, SCREENWIDTH); // erase entire line
	.loc 1 161 3
	movl	-8(%rbp), %eax	# yoffset, yoffset.5_12
	movl	$320, %esi	#,
	movl	%eax, %edi	# yoffset.5_12,
	call	R_VideoErase@PLT	#
	jmp	.L26	#
.L25:
# hu_lib.c:164: 		R_VideoErase(yoffset, viewwindowx); // erase left border
	.loc 1 164 3
	movl	viewwindowx(%rip), %edx	# viewwindowx, viewwindowx.6_13
	movl	-8(%rbp), %eax	# yoffset, yoffset.7_14
	movl	%edx, %esi	# viewwindowx.6_13,
	movl	%eax, %edi	# yoffset.7_14,
	call	R_VideoErase@PLT	#
# hu_lib.c:165: 		R_VideoErase(yoffset + viewwindowx + viewwidth, viewwindowx);
	.loc 1 165 3
	movl	viewwindowx(%rip), %eax	# viewwindowx, viewwindowx.8_15
# hu_lib.c:165: 		R_VideoErase(yoffset + viewwindowx + viewwidth, viewwindowx);
	.loc 1 165 24
	movl	viewwindowx(%rip), %ecx	# viewwindowx, viewwindowx.9_16
	movl	-8(%rbp), %edx	# yoffset, tmp116
	addl	%edx, %ecx	# tmp116, _17
# hu_lib.c:165: 		R_VideoErase(yoffset + viewwindowx + viewwidth, viewwindowx);
	.loc 1 165 38
	movl	viewwidth(%rip), %edx	# viewwidth, viewwidth.10_18
	addl	%ecx, %edx	# _17, _19
# hu_lib.c:165: 		R_VideoErase(yoffset + viewwindowx + viewwidth, viewwindowx);
	.loc 1 165 3
	movl	%eax, %esi	# viewwindowx.8_15,
	movl	%edx, %edi	# _20,
	call	R_VideoErase@PLT	#
.L26:
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 51 discriminator 2
	addl	$1, -12(%rbp)	#, y
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 61 discriminator 2
	addl	$320, -8(%rbp)	#, yoffset
.L23:
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 41 discriminator 1
	movq	-24(%rbp), %rax	# l, tmp117
	movl	4(%rax), %edx	# l_34(D)->y, _21
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 44 discriminator 1
	movl	-4(%rbp), %eax	# lh, tmp118
	addl	%edx, %eax	# _21, _22
# hu_lib.c:158: 	for (y=l->y,yoffset=y*SCREENWIDTH ; y<l->y+lh ; y++,yoffset+=SCREENWIDTH)
	.loc 1 158 39 discriminator 1
	cmpl	%eax, -12(%rbp)	# _22, y
	jl	.L27	#,
.L22:
# hu_lib.c:171:     lastautomapactive = automapactive;
	.loc 1 171 23
	movl	automapactive(%rip), %eax	# automapactive, automapactive.11_23
	movl	%eax, lastautomapactive.0(%rip)	# automapactive.11_23, lastautomapactive
# hu_lib.c:172:     if (l->needsupdate) l->needsupdate--;
	.loc 1 172 10
	movq	-24(%rbp), %rax	# l, tmp119
	movl	108(%rax), %eax	# l_34(D)->needsupdate, _24
# hu_lib.c:172:     if (l->needsupdate) l->needsupdate--;
	.loc 1 172 8
	testl	%eax, %eax	# _24
	je	.L29	#,
# hu_lib.c:172:     if (l->needsupdate) l->needsupdate--;
	.loc 1 172 26 discriminator 1
	movq	-24(%rbp), %rax	# l, tmp120
	movl	108(%rax), %eax	# l_34(D)->needsupdate, _25
# hu_lib.c:172:     if (l->needsupdate) l->needsupdate--;
	.loc 1 172 39 discriminator 1
	leal	-1(%rax), %edx	#, _26
	movq	-24(%rbp), %rax	# l, tmp121
	movl	%edx, 108(%rax)	# _26, l_34(D)->needsupdate
.L29:
# hu_lib.c:174: }
	.loc 1 174 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	HUlib_eraseTextLine, .-HUlib_eraseTextLine
	.globl	HUlib_initSText
	.type	HUlib_initSText, @function
HUlib_initSText:
.LFB7:
	.loc 1 185 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movl	%esi, -28(%rbp)	# x, x
	movl	%edx, -32(%rbp)	# y, y
	movl	%ecx, -36(%rbp)	# h, h
	movq	%r8, -48(%rbp)	# font, font
	movl	%r9d, -40(%rbp)	# startchar, startchar
# hu_lib.c:189:     s->h = h;
	.loc 1 189 10
	movq	-24(%rbp), %rax	# s, tmp89
	movl	-36(%rbp), %edx	# h, tmp90
	movl	%edx, 448(%rax)	# tmp90, s_11(D)->h
# hu_lib.c:190:     s->on = on;
	.loc 1 190 11
	movq	-24(%rbp), %rax	# s, tmp91
	movq	16(%rbp), %rdx	# on, tmp92
	movq	%rdx, 456(%rax)	# tmp92, s_11(D)->on
# hu_lib.c:191:     s->laston = true;
	.loc 1 191 15
	movq	-24(%rbp), %rax	# s, tmp93
	movl	$1, 464(%rax)	#, s_11(D)->laston
# hu_lib.c:192:     s->cl = 0;
	.loc 1 192 11
	movq	-24(%rbp), %rax	# s, tmp94
	movl	$0, 452(%rax)	#, s_11(D)->cl
# hu_lib.c:193:     for (i=0;i<h;i++)
	.loc 1 193 11
	movl	$0, -4(%rbp)	#, i
# hu_lib.c:193:     for (i=0;i<h;i++)
	.loc 1 193 5
	jmp	.L31	#
.L32:
# hu_lib.c:195: 			   x, y - i*(SHORT(font[0]->height)+1),
	.loc 1 195 17
	movq	-48(%rbp), %rax	# font, tmp95
	movq	(%rax), %rax	# *font_19(D), _1
	movzwl	2(%rax), %eax	# _1->height, _2
	cwtl
# hu_lib.c:195: 			   x, y - i*(SHORT(font[0]->height)+1),
	.loc 1 195 39
	addl	$1, %eax	#, _4
# hu_lib.c:195: 			   x, y - i*(SHORT(font[0]->height)+1),
	.loc 1 195 15
	imull	-4(%rbp), %eax	# i, _5
# hu_lib.c:194: 	HUlib_initTextLine(&s->l[i],
	.loc 1 194 2
	movl	-32(%rbp), %edx	# y, tmp96
	movl	%edx, %esi	# tmp96, tmp96
	subl	%eax, %esi	# _5, tmp96
	movl	-4(%rbp), %eax	# i, tmp98
	movslq	%eax, %rdx	# tmp98, tmp97
	movq	%rdx, %rax	# tmp97, tmp99
	salq	$3, %rax	#, tmp100
	subq	%rdx, %rax	# tmp97, tmp99
	salq	$4, %rax	#, tmp101
	movq	-24(%rbp), %rdx	# s, tmp102
	leaq	(%rax,%rdx), %rdi	#, _7
	movl	-40(%rbp), %ecx	# startchar, tmp103
	movq	-48(%rbp), %rdx	# font, tmp104
	movl	-28(%rbp), %eax	# x, tmp105
	movl	%ecx, %r8d	# tmp103,
	movq	%rdx, %rcx	# tmp104,
	movl	%esi, %edx	# _6,
	movl	%eax, %esi	# tmp105,
	call	HUlib_initTextLine	#
# hu_lib.c:193:     for (i=0;i<h;i++)
	.loc 1 193 19 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L31:
# hu_lib.c:193:     for (i=0;i<h;i++)
	.loc 1 193 15 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp106
	cmpl	-36(%rbp), %eax	# h, tmp106
	jl	.L32	#,
# hu_lib.c:198: }
	.loc 1 198 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	HUlib_initSText, .-HUlib_initSText
	.globl	HUlib_addLineToSText
	.type	HUlib_addLineToSText, @function
HUlib_addLineToSText:
.LFB8:
	.loc 1 201 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
# hu_lib.c:206:     if (++s->cl == s->h)
	.loc 1 206 12
	movq	-24(%rbp), %rax	# s, tmp89
	movl	452(%rax), %eax	# s_12(D)->cl, _1
# hu_lib.c:206:     if (++s->cl == s->h)
	.loc 1 206 9
	leal	1(%rax), %edx	#, _2
# hu_lib.c:206:     if (++s->cl == s->h)
	.loc 1 206 8
	movq	-24(%rbp), %rax	# s, tmp90
	movl	%edx, 452(%rax)	# _2, s_12(D)->cl
# hu_lib.c:206:     if (++s->cl == s->h)
	.loc 1 206 12
	movq	-24(%rbp), %rax	# s, tmp91
	movl	452(%rax), %edx	# s_12(D)->cl, _3
# hu_lib.c:206:     if (++s->cl == s->h)
	.loc 1 206 21
	movq	-24(%rbp), %rax	# s, tmp92
	movl	448(%rax), %eax	# s_12(D)->h, _4
# hu_lib.c:206:     if (++s->cl == s->h)
	.loc 1 206 8
	cmpl	%eax, %edx	# _4, _3
	jne	.L34	#,
# hu_lib.c:207: 	s->cl = 0;
	.loc 1 207 8
	movq	-24(%rbp), %rax	# s, tmp93
	movl	$0, 452(%rax)	#, s_12(D)->cl
.L34:
# hu_lib.c:208:     HUlib_clearTextLine(&s->l[s->cl]);
	.loc 1 208 32
	movq	-24(%rbp), %rax	# s, tmp94
	movl	452(%rax), %eax	# s_12(D)->cl, _5
# hu_lib.c:208:     HUlib_clearTextLine(&s->l[s->cl]);
	.loc 1 208 5
	movslq	%eax, %rdx	# _5, tmp95
	movq	%rdx, %rax	# tmp95, tmp96
	salq	$3, %rax	#, tmp97
	subq	%rdx, %rax	# tmp95, tmp96
	salq	$4, %rax	#, tmp98
	movq	-24(%rbp), %rdx	# s, tmp99
	addq	%rdx, %rax	# tmp99, _6
	movq	%rax, %rdi	# _6,
	call	HUlib_clearTextLine	#
# hu_lib.c:211:     for (i=0 ; i<s->h ; i++)
	.loc 1 211 11
	movl	$0, -4(%rbp)	#, i
# hu_lib.c:211:     for (i=0 ; i<s->h ; i++)
	.loc 1 211 5
	jmp	.L35	#
.L36:
# hu_lib.c:212: 	s->l[i].needsupdate = 4;
	.loc 1 212 22
	movq	-24(%rbp), %rcx	# s, tmp100
	movl	-4(%rbp), %eax	# i, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	salq	$3, %rax	#, tmp104
	subq	%rdx, %rax	# tmp101, tmp103
	salq	$4, %rax	#, tmp105
	addq	%rcx, %rax	# tmp100, tmp106
	addq	$108, %rax	#, tmp107
	movl	$4, (%rax)	#, s_12(D)->l[i_8].needsupdate
# hu_lib.c:211:     for (i=0 ; i<s->h ; i++)
	.loc 1 211 26 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L35:
# hu_lib.c:211:     for (i=0 ; i<s->h ; i++)
	.loc 1 211 19 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp108
	movl	448(%rax), %eax	# s_12(D)->h, _7
# hu_lib.c:211:     for (i=0 ; i<s->h ; i++)
	.loc 1 211 17 discriminator 1
	cmpl	%eax, -4(%rbp)	# _7, i
	jl	.L36	#,
# hu_lib.c:214: }
	.loc 1 214 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	HUlib_addLineToSText, .-HUlib_addLineToSText
	.globl	HUlib_addMessageToSText
	.type	HUlib_addMessageToSText, @function
HUlib_addMessageToSText:
.LFB9:
	.loc 1 221 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# prefix, prefix
	movq	%rdx, -24(%rbp)	# msg, msg
# hu_lib.c:222:     HUlib_addLineToSText(s);
	.loc 1 222 5
	movq	-8(%rbp), %rax	# s, tmp94
	movq	%rax, %rdi	# tmp94,
	call	HUlib_addLineToSText	#
# hu_lib.c:223:     if (prefix)
	.loc 1 223 8
	cmpq	$0, -16(%rbp)	#, prefix
	je	.L41	#,
# hu_lib.c:224: 	while (*prefix)
	.loc 1 224 8
	jmp	.L39	#
.L40:
# hu_lib.c:225: 	    HUlib_addCharToTextLine(&s->l[s->cl], *(prefix++));
	.loc 1 225 52
	movq	-16(%rbp), %rax	# prefix, prefix.12_1
	leaq	1(%rax), %rdx	#, tmp95
	movq	%rdx, -16(%rbp)	# tmp95, prefix
# hu_lib.c:225: 	    HUlib_addCharToTextLine(&s->l[s->cl], *(prefix++));
	.loc 1 225 44
	movzbl	(%rax), %eax	# *prefix.12_1, _2
# hu_lib.c:225: 	    HUlib_addCharToTextLine(&s->l[s->cl], *(prefix++));
	.loc 1 225 6
	movsbl	%al, %ecx	# _2, _3
# hu_lib.c:225: 	    HUlib_addCharToTextLine(&s->l[s->cl], *(prefix++));
	.loc 1 225 37
	movq	-8(%rbp), %rax	# s, tmp96
	movl	452(%rax), %eax	# s_19(D)->cl, _4
# hu_lib.c:225: 	    HUlib_addCharToTextLine(&s->l[s->cl], *(prefix++));
	.loc 1 225 6
	movslq	%eax, %rdx	# _4, tmp97
	movq	%rdx, %rax	# tmp97, tmp98
	salq	$3, %rax	#, tmp99
	subq	%rdx, %rax	# tmp97, tmp98
	salq	$4, %rax	#, tmp100
	movq	-8(%rbp), %rdx	# s, tmp101
	addq	%rdx, %rax	# tmp101, _5
	movl	%ecx, %esi	# _3,
	movq	%rax, %rdi	# _5,
	call	HUlib_addCharToTextLine	#
.L39:
# hu_lib.c:224: 	while (*prefix)
	.loc 1 224 9
	movq	-16(%rbp), %rax	# prefix, tmp102
	movzbl	(%rax), %eax	# *prefix_13, _6
	testb	%al, %al	# _6
	jne	.L40	#,
# hu_lib.c:227:     while (*msg)
	.loc 1 227 11
	jmp	.L41	#
.L42:
# hu_lib.c:228: 	HUlib_addCharToTextLine(&s->l[s->cl], *(msg++));
	.loc 1 228 45
	movq	-24(%rbp), %rax	# msg, msg.13_7
	leaq	1(%rax), %rdx	#, tmp103
	movq	%rdx, -24(%rbp)	# tmp103, msg
# hu_lib.c:228: 	HUlib_addCharToTextLine(&s->l[s->cl], *(msg++));
	.loc 1 228 40
	movzbl	(%rax), %eax	# *msg.13_7, _8
# hu_lib.c:228: 	HUlib_addCharToTextLine(&s->l[s->cl], *(msg++));
	.loc 1 228 2
	movsbl	%al, %ecx	# _8, _9
# hu_lib.c:228: 	HUlib_addCharToTextLine(&s->l[s->cl], *(msg++));
	.loc 1 228 33
	movq	-8(%rbp), %rax	# s, tmp104
	movl	452(%rax), %eax	# s_19(D)->cl, _10
# hu_lib.c:228: 	HUlib_addCharToTextLine(&s->l[s->cl], *(msg++));
	.loc 1 228 2
	movslq	%eax, %rdx	# _10, tmp105
	movq	%rdx, %rax	# tmp105, tmp106
	salq	$3, %rax	#, tmp107
	subq	%rdx, %rax	# tmp105, tmp106
	salq	$4, %rax	#, tmp108
	movq	-8(%rbp), %rdx	# s, tmp109
	addq	%rdx, %rax	# tmp109, _11
	movl	%ecx, %esi	# _9,
	movq	%rax, %rdi	# _11,
	call	HUlib_addCharToTextLine	#
.L41:
# hu_lib.c:227:     while (*msg)
	.loc 1 227 12
	movq	-24(%rbp), %rax	# msg, tmp110
	movzbl	(%rax), %eax	# *msg_14, _12
	testb	%al, %al	# _12
	jne	.L42	#,
# hu_lib.c:229: }
	.loc 1 229 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	HUlib_addMessageToSText, .-HUlib_addMessageToSText
	.globl	HUlib_drawSText
	.type	HUlib_drawSText, @function
HUlib_drawSText:
.LFB10:
	.loc 1 232 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
# hu_lib.c:236:     if (!*s->on)
	.loc 1 236 12
	movq	-24(%rbp), %rax	# s, tmp87
	movq	456(%rax), %rax	# s_11(D)->on, _1
# hu_lib.c:236:     if (!*s->on)
	.loc 1 236 10
	movl	(%rax), %eax	# *_1, _2
# hu_lib.c:236:     if (!*s->on)
	.loc 1 236 8
	testl	%eax, %eax	# _2
	je	.L49	#,
# hu_lib.c:240:     for (i=0 ; i<s->h ; i++)
	.loc 1 240 11
	movl	$0, -16(%rbp)	#, i
# hu_lib.c:240:     for (i=0 ; i<s->h ; i++)
	.loc 1 240 5
	jmp	.L46	#
.L48:
# hu_lib.c:242: 	idx = s->cl - i;
	.loc 1 242 9
	movq	-24(%rbp), %rax	# s, tmp88
	movl	452(%rax), %eax	# s_11(D)->cl, _3
# hu_lib.c:242: 	idx = s->cl - i;
	.loc 1 242 6
	subl	-16(%rbp), %eax	# i, tmp90
	movl	%eax, -12(%rbp)	# tmp90, idx
# hu_lib.c:243: 	if (idx < 0)
	.loc 1 243 5
	cmpl	$0, -12(%rbp)	#, idx
	jns	.L47	#,
# hu_lib.c:244: 	    idx += s->h; // handle queue of lines
	.loc 1 244 14
	movq	-24(%rbp), %rax	# s, tmp91
	movl	448(%rax), %eax	# s_11(D)->h, _4
# hu_lib.c:244: 	    idx += s->h; // handle queue of lines
	.loc 1 244 10
	addl	%eax, -12(%rbp)	# _4, idx
.L47:
# hu_lib.c:246: 	l = &s->l[idx];
	.loc 1 246 4
	movl	-12(%rbp), %eax	# idx, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	subq	%rdx, %rax	# tmp92, tmp94
	salq	$4, %rax	#, tmp96
	movq	-24(%rbp), %rdx	# s, tmp100
	addq	%rdx, %rax	# tmp100, tmp99
	movq	%rax, -8(%rbp)	# tmp99, l
# hu_lib.c:249: 	HUlib_drawTextLine(l, false); // no cursor, please
	.loc 1 249 2
	movq	-8(%rbp), %rax	# l, tmp101
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	HUlib_drawTextLine	#
# hu_lib.c:240:     for (i=0 ; i<s->h ; i++)
	.loc 1 240 26 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L46:
# hu_lib.c:240:     for (i=0 ; i<s->h ; i++)
	.loc 1 240 19 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp102
	movl	448(%rax), %eax	# s_11(D)->h, _5
# hu_lib.c:240:     for (i=0 ; i<s->h ; i++)
	.loc 1 240 17 discriminator 1
	cmpl	%eax, -16(%rbp)	# _5, i
	jl	.L48	#,
	jmp	.L43	#
.L49:
# hu_lib.c:237: 	return; // if not on, don't draw
	.loc 1 237 2
	nop	
.L43:
# hu_lib.c:252: }
	.loc 1 252 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	HUlib_drawSText, .-HUlib_drawSText
	.globl	HUlib_eraseSText
	.type	HUlib_eraseSText, @function
HUlib_eraseSText:
.LFB11:
	.loc 1 255 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
# hu_lib.c:259:     for (i=0 ; i<s->h ; i++)
	.loc 1 259 11
	movl	$0, -4(%rbp)	#, i
# hu_lib.c:259:     for (i=0 ; i<s->h ; i++)
	.loc 1 259 5
	jmp	.L51	#
.L53:
# hu_lib.c:261: 	if (s->laston && !*s->on)
	.loc 1 261 7
	movq	-24(%rbp), %rax	# s, tmp89
	movl	464(%rax), %eax	# s_13(D)->laston, _1
# hu_lib.c:261: 	if (s->laston && !*s->on)
	.loc 1 261 5
	testl	%eax, %eax	# _1
	je	.L52	#,
# hu_lib.c:261: 	if (s->laston && !*s->on)
	.loc 1 261 22 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp90
	movq	456(%rax), %rax	# s_13(D)->on, _2
# hu_lib.c:261: 	if (s->laston && !*s->on)
	.loc 1 261 20 discriminator 1
	movl	(%rax), %eax	# *_2, _3
# hu_lib.c:261: 	if (s->laston && !*s->on)
	.loc 1 261 16 discriminator 1
	testl	%eax, %eax	# _3
	jne	.L52	#,
# hu_lib.c:262: 	    s->l[i].needsupdate = 4;
	.loc 1 262 26
	movq	-24(%rbp), %rcx	# s, tmp91
	movl	-4(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, tmp92
	movq	%rdx, %rax	# tmp92, tmp94
	salq	$3, %rax	#, tmp95
	subq	%rdx, %rax	# tmp92, tmp94
	salq	$4, %rax	#, tmp96
	addq	%rcx, %rax	# tmp91, tmp97
	addq	$108, %rax	#, tmp98
	movl	$4, (%rax)	#, s_13(D)->l[i_8].needsupdate
.L52:
# hu_lib.c:263: 	HUlib_eraseTextLine(&s->l[i]);
	.loc 1 263 2
	movl	-4(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, tmp99
	movq	%rdx, %rax	# tmp99, tmp101
	salq	$3, %rax	#, tmp102
	subq	%rdx, %rax	# tmp99, tmp101
	salq	$4, %rax	#, tmp103
	movq	-24(%rbp), %rdx	# s, tmp104
	addq	%rdx, %rax	# tmp104, _4
	movq	%rax, %rdi	# _4,
	call	HUlib_eraseTextLine	#
# hu_lib.c:259:     for (i=0 ; i<s->h ; i++)
	.loc 1 259 26 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L51:
# hu_lib.c:259:     for (i=0 ; i<s->h ; i++)
	.loc 1 259 19 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp105
	movl	448(%rax), %eax	# s_13(D)->h, _5
# hu_lib.c:259:     for (i=0 ; i<s->h ; i++)
	.loc 1 259 17 discriminator 1
	cmpl	%eax, -4(%rbp)	# _5, i
	jl	.L53	#,
# hu_lib.c:265:     s->laston = *s->on;
	.loc 1 265 19
	movq	-24(%rbp), %rax	# s, tmp106
	movq	456(%rax), %rax	# s_13(D)->on, _6
# hu_lib.c:265:     s->laston = *s->on;
	.loc 1 265 17
	movl	(%rax), %edx	# *_6, _7
# hu_lib.c:265:     s->laston = *s->on;
	.loc 1 265 15
	movq	-24(%rbp), %rax	# s, tmp107
	movl	%edx, 464(%rax)	# _7, s_13(D)->laston
# hu_lib.c:267: }
	.loc 1 267 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	HUlib_eraseSText, .-HUlib_eraseSText
	.globl	HUlib_initIText
	.type	HUlib_initIText, @function
HUlib_initIText:
.LFB12:
	.loc 1 277 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -8(%rbp)	# it, it
	movl	%esi, -12(%rbp)	# x, x
	movl	%edx, -16(%rbp)	# y, y
	movq	%rcx, -24(%rbp)	# font, font
	movl	%r8d, -28(%rbp)	# startchar, startchar
	movq	%r9, -40(%rbp)	# on, on
# hu_lib.c:278:     it->lm = 0; // default left margin is start of text
	.loc 1 278 12
	movq	-8(%rbp), %rax	# it, tmp83
	movl	$0, 112(%rax)	#, it_3(D)->lm
# hu_lib.c:279:     it->on = on;
	.loc 1 279 12
	movq	-8(%rbp), %rax	# it, tmp84
	movq	-40(%rbp), %rdx	# on, tmp85
	movq	%rdx, 120(%rax)	# tmp85, it_3(D)->on
# hu_lib.c:280:     it->laston = true;
	.loc 1 280 16
	movq	-8(%rbp), %rax	# it, tmp86
	movl	$1, 128(%rax)	#, it_3(D)->laston
# hu_lib.c:281:     HUlib_initTextLine(&it->l, x, y, font, startchar);
	.loc 1 281 5
	movq	-8(%rbp), %rax	# it, _1
	movl	-28(%rbp), %edi	# startchar, tmp87
	movq	-24(%rbp), %rcx	# font, tmp88
	movl	-16(%rbp), %edx	# y, tmp89
	movl	-12(%rbp), %esi	# x, tmp90
	movl	%edi, %r8d	# tmp87,
	movq	%rax, %rdi	# _1,
	call	HUlib_initTextLine	#
# hu_lib.c:282: }
	.loc 1 282 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	HUlib_initIText, .-HUlib_initIText
	.globl	HUlib_delCharFromIText
	.type	HUlib_delCharFromIText, @function
HUlib_delCharFromIText:
.LFB13:
	.loc 1 287 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# it, it
# hu_lib.c:288:     if (it->l.len != it->lm)
	.loc 1 288 14
	movq	-8(%rbp), %rax	# it, tmp85
	movl	104(%rax), %edx	# it_6(D)->l.len, _1
# hu_lib.c:288:     if (it->l.len != it->lm)
	.loc 1 288 24
	movq	-8(%rbp), %rax	# it, tmp86
	movl	112(%rax), %eax	# it_6(D)->lm, _2
# hu_lib.c:288:     if (it->l.len != it->lm)
	.loc 1 288 8
	cmpl	%eax, %edx	# _2, _1
	je	.L57	#,
# hu_lib.c:289: 	HUlib_delCharFromTextLine(&it->l);
	.loc 1 289 2
	movq	-8(%rbp), %rax	# it, _3
	movq	%rax, %rdi	# _3,
	call	HUlib_delCharFromTextLine	#
.L57:
# hu_lib.c:290: }
	.loc 1 290 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	HUlib_delCharFromIText, .-HUlib_delCharFromIText
	.globl	HUlib_eraseLineFromIText
	.type	HUlib_eraseLineFromIText, @function
HUlib_eraseLineFromIText:
.LFB14:
	.loc 1 293 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# it, it
# hu_lib.c:294:     while (it->lm != it->l.len)
	.loc 1 294 11
	jmp	.L59	#
.L60:
# hu_lib.c:295: 	HUlib_delCharFromTextLine(&it->l);
	.loc 1 295 2
	movq	-8(%rbp), %rax	# it, _1
	movq	%rax, %rdi	# _1,
	call	HUlib_delCharFromTextLine	#
.L59:
# hu_lib.c:294:     while (it->lm != it->l.len)
	.loc 1 294 14
	movq	-8(%rbp), %rax	# it, tmp85
	movl	112(%rax), %edx	# it_6(D)->lm, _2
# hu_lib.c:294:     while (it->lm != it->l.len)
	.loc 1 294 27
	movq	-8(%rbp), %rax	# it, tmp86
	movl	104(%rax), %eax	# it_6(D)->l.len, _3
# hu_lib.c:294:     while (it->lm != it->l.len)
	.loc 1 294 19
	cmpl	%eax, %edx	# _3, _2
	jne	.L60	#,
# hu_lib.c:296: }
	.loc 1 296 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	HUlib_eraseLineFromIText, .-HUlib_eraseLineFromIText
	.globl	HUlib_resetIText
	.type	HUlib_resetIText, @function
HUlib_resetIText:
.LFB15:
	.loc 1 300 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# it, it
# hu_lib.c:301:     it->lm = 0;
	.loc 1 301 12
	movq	-8(%rbp), %rax	# it, tmp83
	movl	$0, 112(%rax)	#, it_3(D)->lm
# hu_lib.c:302:     HUlib_clearTextLine(&it->l);
	.loc 1 302 5
	movq	-8(%rbp), %rax	# it, _1
	movq	%rax, %rdi	# _1,
	call	HUlib_clearTextLine	#
# hu_lib.c:303: }
	.loc 1 303 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	HUlib_resetIText, .-HUlib_resetIText
	.globl	HUlib_addPrefixToIText
	.type	HUlib_addPrefixToIText, @function
HUlib_addPrefixToIText:
.LFB16:
	.loc 1 309 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# it, it
	movq	%rsi, -16(%rbp)	# str, str
# hu_lib.c:310:     while (*str)
	.loc 1 310 11
	jmp	.L63	#
.L64:
# hu_lib.c:311: 	HUlib_addCharToTextLine(&it->l, *(str++));
	.loc 1 311 39
	movq	-16(%rbp), %rax	# str, str.14_1
	leaq	1(%rax), %rdx	#, tmp88
	movq	%rdx, -16(%rbp)	# tmp88, str
# hu_lib.c:311: 	HUlib_addCharToTextLine(&it->l, *(str++));
	.loc 1 311 34
	movzbl	(%rax), %eax	# *str.14_1, _2
# hu_lib.c:311: 	HUlib_addCharToTextLine(&it->l, *(str++));
	.loc 1 311 2
	movsbl	%al, %edx	# _2, _3
	movq	-8(%rbp), %rax	# it, _4
	movl	%edx, %esi	# _3,
	movq	%rax, %rdi	# _4,
	call	HUlib_addCharToTextLine	#
.L63:
# hu_lib.c:310:     while (*str)
	.loc 1 310 12
	movq	-16(%rbp), %rax	# str, tmp89
	movzbl	(%rax), %eax	# *str_7, _5
	testb	%al, %al	# _5
	jne	.L64	#,
# hu_lib.c:312:     it->lm = it->l.len;
	.loc 1 312 19
	movq	-8(%rbp), %rax	# it, tmp90
	movl	104(%rax), %edx	# it_11(D)->l.len, _6
# hu_lib.c:312:     it->lm = it->l.len;
	.loc 1 312 12
	movq	-8(%rbp), %rax	# it, tmp91
	movl	%edx, 112(%rax)	# _6, it_11(D)->lm
# hu_lib.c:313: }
	.loc 1 313 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	HUlib_addPrefixToIText, .-HUlib_addPrefixToIText
	.globl	HUlib_keyInIText
	.type	HUlib_keyInIText, @function
HUlib_keyInIText:
.LFB17:
	.loc 1 321 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# it, it
	movl	%esi, %eax	# ch, tmp87
	movb	%al, -12(%rbp)	# tmp88, ch
# hu_lib.c:323:     if (ch >= ' ' && ch <= '_') 
	.loc 1 323 8
	cmpb	$31, -12(%rbp)	#, ch
	jbe	.L66	#,
# hu_lib.c:323:     if (ch >= ' ' && ch <= '_') 
	.loc 1 323 19 discriminator 1
	cmpb	$95, -12(%rbp)	#, ch
	ja	.L66	#,
# hu_lib.c:324:   	HUlib_addCharToTextLine(&it->l, (char) ch);
	.loc 1 324 36
	movzbl	-12(%rbp), %eax	# ch, ch.15_1
# hu_lib.c:324:   	HUlib_addCharToTextLine(&it->l, (char) ch);
	.loc 1 324 4
	movsbl	%al, %edx	# ch.15_1, _2
	movq	-8(%rbp), %rax	# it, _3
	movl	%edx, %esi	# _2,
	movq	%rax, %rdi	# _3,
	call	HUlib_addCharToTextLine	#
	jmp	.L67	#
.L66:
# hu_lib.c:326: 	if (ch == KEY_BACKSPACE) 
	.loc 1 326 5
	cmpb	$127, -12(%rbp)	#, ch
	jne	.L68	#,
# hu_lib.c:327: 	    HUlib_delCharFromIText(it);
	.loc 1 327 6
	movq	-8(%rbp), %rax	# it, tmp89
	movq	%rax, %rdi	# tmp89,
	call	HUlib_delCharFromIText	#
	jmp	.L67	#
.L68:
# hu_lib.c:329: 	    if (ch != KEY_ENTER) 
	.loc 1 329 9
	cmpb	$13, -12(%rbp)	#, ch
	je	.L67	#,
# hu_lib.c:330: 		return false; // did not eat key
	.loc 1 330 10
	movl	$0, %eax	#, _4
	jmp	.L69	#
.L67:
# hu_lib.c:332:     return true; // ate the key
	.loc 1 332 12
	movl	$1, %eax	#, _4
.L69:
# hu_lib.c:334: }
	.loc 1 334 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	HUlib_keyInIText, .-HUlib_keyInIText
	.globl	HUlib_drawIText
	.type	HUlib_drawIText, @function
HUlib_drawIText:
.LFB18:
	.loc 1 337 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# it, it
# hu_lib.c:339:     hu_textline_t *l = &it->l;
	.loc 1 339 20
	movq	-24(%rbp), %rax	# it, tmp84
	movq	%rax, -8(%rbp)	# tmp84, l
# hu_lib.c:341:     if (!*it->on)
	.loc 1 341 13
	movq	-24(%rbp), %rax	# it, tmp85
	movq	120(%rax), %rax	# it_4(D)->on, _1
# hu_lib.c:341:     if (!*it->on)
	.loc 1 341 10
	movl	(%rax), %eax	# *_1, _2
# hu_lib.c:341:     if (!*it->on)
	.loc 1 341 8
	testl	%eax, %eax	# _2
	je	.L73	#,
# hu_lib.c:343:     HUlib_drawTextLine(l, true); // draw the line w/ cursor
	.loc 1 343 5
	movq	-8(%rbp), %rax	# l, tmp86
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	HUlib_drawTextLine	#
	jmp	.L70	#
.L73:
# hu_lib.c:342: 	return;
	.loc 1 342 2
	nop	
.L70:
# hu_lib.c:345: }
	.loc 1 345 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	HUlib_drawIText, .-HUlib_drawIText
	.globl	HUlib_eraseIText
	.type	HUlib_eraseIText, @function
HUlib_eraseIText:
.LFB19:
	.loc 1 348 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# it, it
# hu_lib.c:349:     if (it->laston && !*it->on)
	.loc 1 349 11
	movq	-8(%rbp), %rax	# it, tmp88
	movl	128(%rax), %eax	# it_9(D)->laston, _1
# hu_lib.c:349:     if (it->laston && !*it->on)
	.loc 1 349 8
	testl	%eax, %eax	# _1
	je	.L75	#,
# hu_lib.c:349:     if (it->laston && !*it->on)
	.loc 1 349 27 discriminator 1
	movq	-8(%rbp), %rax	# it, tmp89
	movq	120(%rax), %rax	# it_9(D)->on, _2
# hu_lib.c:349:     if (it->laston && !*it->on)
	.loc 1 349 24 discriminator 1
	movl	(%rax), %eax	# *_2, _3
# hu_lib.c:349:     if (it->laston && !*it->on)
	.loc 1 349 20 discriminator 1
	testl	%eax, %eax	# _3
	jne	.L75	#,
# hu_lib.c:350: 	it->l.needsupdate = 4;
	.loc 1 350 20
	movq	-8(%rbp), %rax	# it, tmp90
	movl	$4, 108(%rax)	#, it_9(D)->l.needsupdate
.L75:
# hu_lib.c:351:     HUlib_eraseTextLine(&it->l);
	.loc 1 351 5
	movq	-8(%rbp), %rax	# it, _4
	movq	%rax, %rdi	# _4,
	call	HUlib_eraseTextLine	#
# hu_lib.c:352:     it->laston = *it->on;
	.loc 1 352 21
	movq	-8(%rbp), %rax	# it, tmp91
	movq	120(%rax), %rax	# it_9(D)->on, _5
# hu_lib.c:352:     it->laston = *it->on;
	.loc 1 352 18
	movl	(%rax), %edx	# *_5, _6
# hu_lib.c:352:     it->laston = *it->on;
	.loc 1 352 16
	movq	-8(%rbp), %rax	# it, tmp92
	movl	%edx, 128(%rax)	# _6, it_9(D)->laston
# hu_lib.c:353: }
	.loc 1 353 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	HUlib_eraseIText, .-HUlib_eraseIText
	.data
	.align 4
	.type	lastautomapactive.0, @object
	.size	lastautomapactive.0, 4
lastautomapactive.0:
	.long	1
	.text
.Letext0:
	.file 2 "r_defs.h"
	.file 3 "doomtype.h"
	.file 4 "r_state.h"
	.file 5 "hu_lib.h"
	.file 6 "r_main.h"
	.file 7 "r_draw.h"
	.file 8 "v_video.h"
	.file 9 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x82d
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1a
	.long	.LASF59
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
	.uleb128 0x12
	.long	0x2e
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x12
	.long	0x4a
	.uleb128 0x10
	.long	.LASF35
	.byte	0x18
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	0x4a
	.uleb128 0x1c
	.byte	0x7
	.byte	0x4
	.long	0x79
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.long	0xbc
	.uleb128 0x13
	.long	.LASF10
	.byte	0
	.uleb128 0x13
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x3
	.byte	0x22
	.byte	0x1c
	.long	0xa1
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x1d
	.byte	0x28
	.byte	0x2
	.value	0x164
	.byte	0x9
	.long	0x122
	.uleb128 0xa
	.long	.LASF14
	.value	0x166
	.byte	0xc
	.long	0x87
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.value	0x167
	.byte	0xc
	.long	0x87
	.byte	0x2
	.uleb128 0xa
	.long	.LASF16
	.value	0x168
	.byte	0xc
	.long	0x87
	.byte	0x4
	.uleb128 0xa
	.long	.LASF17
	.value	0x169
	.byte	0xc
	.long	0x87
	.byte	0x6
	.uleb128 0xa
	.long	.LASF18
	.value	0x16a
	.byte	0xb
	.long	0x122
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x8e
	.long	0x132
	.uleb128 0xd
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x1e
	.long	.LASF20
	.byte	0x2
	.value	0x16c
	.byte	0x3
	.long	0xd6
	.uleb128 0xb
	.long	.LASF21
	.byte	0x4
	.byte	0x36
	.byte	0xd
	.long	0x8e
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.byte	0x38
	.byte	0xd
	.long	0x8e
	.uleb128 0x14
	.byte	0x70
	.byte	0x2d
	.long	0x1aa
	.uleb128 0x5
	.string	"x"
	.byte	0x30
	.byte	0xa
	.long	0x8e
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x31
	.byte	0xa
	.long	0x8e
	.byte	0x4
	.uleb128 0x5
	.string	"f"
	.byte	0x33
	.byte	0xf
	.long	0x1aa
	.byte	0x8
	.uleb128 0x5
	.string	"sc"
	.byte	0x34
	.byte	0xa
	.long	0x8e
	.byte	0x10
	.uleb128 0x5
	.string	"l"
	.byte	0x35
	.byte	0xa
	.long	0x1b4
	.byte	0x14
	.uleb128 0x5
	.string	"len"
	.byte	0x36
	.byte	0xa
	.long	0x8e
	.byte	0x68
	.uleb128 0x15
	.long	.LASF23
	.byte	0x39
	.byte	0xa
	.long	0x8e
	.byte	0x6c
	.byte	0
	.uleb128 0x7
	.long	0x1af
	.uleb128 0x7
	.long	0x132
	.uleb128 0xc
	.long	0x4a
	.long	0x1c4
	.uleb128 0xd
	.long	0x43
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.long	.LASF24
	.byte	0x5
	.byte	0x3b
	.byte	0x3
	.long	0x157
	.uleb128 0x1f
	.value	0x1d8
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x216
	.uleb128 0x5
	.string	"l"
	.byte	0x43
	.byte	0x13
	.long	0x216
	.byte	0
	.uleb128 0x11
	.string	"h"
	.byte	0x44
	.byte	0xb
	.long	0x8e
	.value	0x1c0
	.uleb128 0x11
	.string	"cl"
	.byte	0x45
	.byte	0xb
	.long	0x8e
	.value	0x1c4
	.uleb128 0x11
	.string	"on"
	.byte	0x48
	.byte	0xf
	.long	0x226
	.value	0x1c8
	.uleb128 0x20
	.long	.LASF25
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.long	0xbc
	.value	0x1d0
	.byte	0
	.uleb128 0xc
	.long	0x1c4
	.long	0x226
	.uleb128 0xd
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0xbc
	.uleb128 0xe
	.long	.LASF26
	.byte	0x5
	.byte	0x4b
	.byte	0x3
	.long	0x1d0
	.uleb128 0x14
	.byte	0x88
	.byte	0x51
	.long	0x26b
	.uleb128 0x5
	.string	"l"
	.byte	0x53
	.byte	0x13
	.long	0x1c4
	.byte	0
	.uleb128 0x5
	.string	"lm"
	.byte	0x56
	.byte	0xb
	.long	0x8e
	.byte	0x70
	.uleb128 0x5
	.string	"on"
	.byte	0x59
	.byte	0xf
	.long	0x226
	.byte	0x78
	.uleb128 0x15
	.long	.LASF25
	.byte	0x5a
	.byte	0xe
	.long	0xbc
	.byte	0x80
	.byte	0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x5
	.byte	0x5c
	.byte	0x3
	.long	0x237
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.byte	0x2b
	.byte	0xd
	.long	0x8e
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.byte	0x2c
	.byte	0xd
	.long	0x8e
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.byte	0x28
	.byte	0x10
	.long	0xbc
	.uleb128 0x16
	.long	.LASF31
	.byte	0x7
	.byte	0x3c
	.long	0x2b1
	.uleb128 0x8
	.long	0x79
	.uleb128 0x8
	.long	0x8e
	.byte	0
	.uleb128 0x16
	.long	.LASF32
	.byte	0x8
	.byte	0x4f
	.long	0x2d1
	.uleb128 0x8
	.long	0x8e
	.uleb128 0x8
	.long	0x8e
	.uleb128 0x8
	.long	0x8e
	.uleb128 0x8
	.long	0x1af
	.byte	0
	.uleb128 0x21
	.long	.LASF60
	.byte	0x9
	.byte	0x7d
	.byte	0xc
	.long	0x8e
	.long	0x2e7
	.uleb128 0x8
	.long	0x8e
	.byte	0
	.uleb128 0x9
	.long	.LASF33
	.value	0x15b
	.byte	0x6
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x314
	.uleb128 0x2
	.string	"it"
	.value	0x15b
	.byte	0x23
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0x26b
	.uleb128 0x9
	.long	.LASF34
	.value	0x150
	.byte	0x6
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x353
	.uleb128 0x2
	.string	"it"
	.value	0x150
	.byte	0x22
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"l"
	.value	0x153
	.byte	0x14
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.long	0x1c4
	.uleb128 0x22
	.long	.LASF54
	.byte	0x1
	.value	0x13e
	.byte	0x1
	.long	0xbc
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x398
	.uleb128 0x2
	.string	"it"
	.value	0x13f
	.byte	0xf
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"ch"
	.value	0x140
	.byte	0x11
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.long	.LASF36
	.value	0x132
	.byte	0x1
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d4
	.uleb128 0x2
	.string	"it"
	.value	0x133
	.byte	0xf
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"str"
	.value	0x134
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x9
	.long	.LASF37
	.value	0x12b
	.byte	0x6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x401
	.uleb128 0x2
	.string	"it"
	.value	0x12b
	.byte	0x23
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF38
	.value	0x124
	.byte	0x6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e
	.uleb128 0x2
	.string	"it"
	.value	0x124
	.byte	0x2b
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.value	0x11e
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x45b
	.uleb128 0x2
	.string	"it"
	.value	0x11e
	.byte	0x29
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF40
	.value	0x10e
	.byte	0x1
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ce
	.uleb128 0x2
	.string	"it"
	.value	0x10f
	.byte	0xf
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.string	"x"
	.value	0x110
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2
	.string	"y"
	.value	0x111
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF41
	.value	0x112
	.byte	0xd
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF42
	.value	0x113
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.string	"on"
	.value	0x114
	.byte	0xc
	.long	0x226
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.long	.LASF43
	.byte	0xfe
	.byte	0x6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x505
	.uleb128 0x1
	.string	"s"
	.byte	0xfe
	.byte	0x23
	.long	0x505
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.value	0x101
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.long	0x22b
	.uleb128 0x6
	.long	.LASF44
	.byte	0xe7
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x55a
	.uleb128 0x1
	.string	"s"
	.byte	0xe7
	.byte	0x22
	.long	0x505
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"i"
	.byte	0xe9
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"idx"
	.byte	0xe9
	.byte	0xc
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"l"
	.byte	0xea
	.byte	0x14
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.long	.LASF45
	.byte	0xd9
	.byte	0x1
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a0
	.uleb128 0x1
	.string	"s"
	.byte	0xda
	.byte	0xf
	.long	0x505
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF46
	.byte	0xdb
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"msg"
	.byte	0xdc
	.byte	0xa
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.long	.LASF47
	.byte	0xc8
	.byte	0x6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d6
	.uleb128 0x1
	.string	"s"
	.byte	0xc8
	.byte	0x27
	.long	0x505
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"i"
	.byte	0xcb
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF48
	.byte	0xb1
	.byte	0x1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x659
	.uleb128 0x1
	.string	"s"
	.byte	0xb2
	.byte	0xf
	.long	0x505
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"x"
	.byte	0xb3
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"y"
	.byte	0xb4
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"h"
	.byte	0xb5
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.long	.LASF41
	.byte	0xb6
	.byte	0xd
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF42
	.byte	0xb7
	.byte	0x8
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"on"
	.byte	0xb8
	.byte	0xc
	.long	0x226
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"i"
	.byte	0xbb
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x8f
	.byte	0x6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bf
	.uleb128 0x1
	.string	"l"
	.byte	0x8f
	.byte	0x29
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"lh"
	.byte	0x91
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"y"
	.byte	0x92
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF50
	.byte	0x93
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF51
	.byte	0x94
	.byte	0x14
	.long	0xbc
	.uleb128 0x9
	.byte	0x3
	.quad	lastautomapactive.0
	.byte	0
	.uleb128 0x6
	.long	.LASF52
	.byte	0x64
	.byte	0x1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x727
	.uleb128 0x1
	.string	"l"
	.byte	0x65
	.byte	0x12
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF53
	.byte	0x66
	.byte	0xc
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"i"
	.byte	0x69
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"w"
	.byte	0x6a
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"x"
	.byte	0x6b
	.byte	0xb
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"c"
	.byte	0x6c
	.byte	0x13
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x19
	.long	.LASF55
	.byte	0x56
	.byte	0x9
	.long	0xbc
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x755
	.uleb128 0x1
	.string	"t"
	.byte	0x56
	.byte	0x32
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF56
	.byte	0x45
	.byte	0x1
	.long	0xbc
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x790
	.uleb128 0x1
	.string	"t"
	.byte	0x46
	.byte	0x12
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"ch"
	.byte	0x47
	.byte	0xa
	.long	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.long	.LASF57
	.byte	0x36
	.byte	0x1
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x7eb
	.uleb128 0x1
	.string	"t"
	.byte	0x37
	.byte	0x12
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"x"
	.byte	0x38
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"y"
	.byte	0x39
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"f"
	.byte	0x3a
	.byte	0xe
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"sc"
	.byte	0x3b
	.byte	0x9
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x23
	.long	.LASF58
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x816
	.uleb128 0x1
	.string	"t"
	.byte	0x2e
	.byte	0x29
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF61
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x16
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
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
.LASF52:
	.string	"HUlib_drawTextLine"
.LASF23:
	.string	"needsupdate"
.LASF50:
	.string	"yoffset"
.LASF45:
	.string	"HUlib_addMessageToSText"
.LASF47:
	.string	"HUlib_addLineToSText"
.LASF25:
	.string	"laston"
.LASF53:
	.string	"drawcursor"
.LASF41:
	.string	"font"
.LASF33:
	.string	"HUlib_eraseIText"
.LASF32:
	.string	"V_DrawPatchDirect"
.LASF55:
	.string	"HUlib_delCharFromTextLine"
.LASF18:
	.string	"columnofs"
.LASF34:
	.string	"HUlib_drawIText"
.LASF57:
	.string	"HUlib_initTextLine"
.LASF39:
	.string	"HUlib_delCharFromIText"
.LASF21:
	.string	"viewwidth"
.LASF51:
	.string	"lastautomapactive"
.LASF60:
	.string	"toupper"
.LASF54:
	.string	"HUlib_keyInIText"
.LASF20:
	.string	"patch_t"
.LASF10:
	.string	"false"
.LASF31:
	.string	"R_VideoErase"
.LASF17:
	.string	"topoffset"
.LASF30:
	.string	"automapactive"
.LASF40:
	.string	"HUlib_initIText"
.LASF16:
	.string	"leftoffset"
.LASF8:
	.string	"short int"
.LASF14:
	.string	"width"
.LASF35:
	.string	"rcsid"
.LASF12:
	.string	"float"
.LASF24:
	.string	"hu_textline_t"
.LASF37:
	.string	"HUlib_resetIText"
.LASF22:
	.string	"viewheight"
.LASF46:
	.string	"prefix"
.LASF61:
	.string	"HUlib_init"
.LASF59:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"unsigned char"
.LASF28:
	.string	"viewwindowx"
.LASF7:
	.string	"signed char"
.LASF15:
	.string	"height"
.LASF6:
	.string	"unsigned int"
.LASF36:
	.string	"HUlib_addPrefixToIText"
.LASF27:
	.string	"hu_itext_t"
.LASF43:
	.string	"HUlib_eraseSText"
.LASF58:
	.string	"HUlib_clearTextLine"
.LASF42:
	.string	"startchar"
.LASF44:
	.string	"HUlib_drawSText"
.LASF3:
	.string	"char"
.LASF9:
	.string	"long int"
.LASF5:
	.string	"short unsigned int"
.LASF11:
	.string	"true"
.LASF29:
	.string	"viewwindowy"
.LASF2:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF48:
	.string	"HUlib_initSText"
.LASF38:
	.string	"HUlib_eraseLineFromIText"
.LASF26:
	.string	"hu_stext_t"
.LASF56:
	.string	"HUlib_addCharToTextLine"
.LASF19:
	.string	"boolean"
.LASF49:
	.string	"HUlib_eraseTextLine"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"hu_lib.c"
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
