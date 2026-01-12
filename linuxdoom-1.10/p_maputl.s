	.file	"p_maputl.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/astrid/Documents/enseignements/DOOM/linuxdoom-1.10" "p_maputl.c"
	.section	.rodata
	.align 32
	.type	rcsid, @object
	.size	rcsid, 51
rcsid:
	.string	"$Id: p_maputl.c,v 1.5 1997/02/03 22:45:11 b1 Exp $"
	.text
	.globl	P_AproxDistance
	.type	P_AproxDistance, @function
P_AproxDistance:
.LFB6:
	.file 1 "p_maputl.c"
	.loc 1 52 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# dx, dx
	movl	%esi, -8(%rbp)	# dy, dy
# p_maputl.c:53:     dx = abs(dx);
	.loc 1 53 8
	movl	-4(%rbp), %eax	# dx, tmp98
	movl	%eax, %edx	# tmp98, tmp99
	negl	%edx	# tmp99
	cmovns	%edx, %eax	# tmp99,, tmp88
	movl	%eax, -4(%rbp)	# tmp88, dx
# p_maputl.c:54:     dy = abs(dy);
	.loc 1 54 8
	movl	-8(%rbp), %eax	# dy, tmp100
	movl	%eax, %edx	# tmp100, tmp101
	negl	%edx	# tmp101
	cmovns	%edx, %eax	# tmp101,, tmp89
	movl	%eax, -8(%rbp)	# tmp89, dy
# p_maputl.c:55:     if (dx < dy)
	.loc 1 55 8
	movl	-4(%rbp), %eax	# dx, tmp90
	cmpl	-8(%rbp), %eax	# dy, tmp90
	jge	.L2	#,
# p_maputl.c:56: 	return dx+dy-(dx>>1);
	.loc 1 56 11
	movl	-4(%rbp), %edx	# dx, tmp91
	movl	-8(%rbp), %eax	# dy, tmp92
	leal	(%rdx,%rax), %ecx	#, _1
# p_maputl.c:56: 	return dx+dy-(dx>>1);
	.loc 1 56 18
	movl	-4(%rbp), %eax	# dx, tmp93
	sarl	%eax	# tmp93
	movl	%eax, %edx	# tmp93, _2
# p_maputl.c:56: 	return dx+dy-(dx>>1);
	.loc 1 56 14
	movl	%ecx, %eax	# _1, _1
	subl	%edx, %eax	# _2, _1
	jmp	.L3	#
.L2:
# p_maputl.c:57:     return dx+dy-(dy>>1);
	.loc 1 57 14
	movl	-4(%rbp), %edx	# dx, tmp94
	movl	-8(%rbp), %eax	# dy, tmp95
	leal	(%rdx,%rax), %ecx	#, _3
# p_maputl.c:57:     return dx+dy-(dy>>1);
	.loc 1 57 21
	movl	-8(%rbp), %eax	# dy, tmp96
	sarl	%eax	# tmp96
	movl	%eax, %edx	# tmp96, _4
# p_maputl.c:57:     return dx+dy-(dy>>1);
	.loc 1 57 17
	movl	%ecx, %eax	# _3, _3
	subl	%edx, %eax	# _4, _3
.L3:
# p_maputl.c:58: }
	.loc 1 58 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	P_AproxDistance, .-P_AproxDistance
	.globl	P_PointOnLineSide
	.type	P_PointOnLineSide, @function
P_PointOnLineSide:
.LFB7:
	.loc 1 70 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movq	%rdx, -32(%rbp)	# line, line
# p_maputl.c:76:     if (!line->dx)
	.loc 1 76 14
	movq	-32(%rbp), %rax	# line, tmp106
	movl	16(%rax), %eax	# line_26(D)->dx, _1
# p_maputl.c:76:     if (!line->dx)
	.loc 1 76 8
	testl	%eax, %eax	# _1
	jne	.L5	#,
# p_maputl.c:78: 	if (x <= line->v1->x)
	.loc 1 78 15
	movq	-32(%rbp), %rax	# line, tmp107
	movq	(%rax), %rax	# line_26(D)->v1, _2
# p_maputl.c:78: 	if (x <= line->v1->x)
	.loc 1 78 19
	movl	(%rax), %eax	# _2->x, _3
# p_maputl.c:78: 	if (x <= line->v1->x)
	.loc 1 78 5
	cmpl	%eax, -20(%rbp)	# _3, x
	jg	.L6	#,
# p_maputl.c:79: 	    return line->dy > 0;
	.loc 1 79 17
	movq	-32(%rbp), %rax	# line, tmp108
	movl	20(%rax), %eax	# line_26(D)->dy, _4
# p_maputl.c:79: 	    return line->dy > 0;
	.loc 1 79 22
	testl	%eax, %eax	# _4
	setg	%al	#, _5
	movzbl	%al, %eax	# _5, _23
	jmp	.L7	#
.L6:
# p_maputl.c:81: 	return line->dy < 0;
	.loc 1 81 13
	movq	-32(%rbp), %rax	# line, tmp109
	movl	20(%rax), %eax	# line_26(D)->dy, _6
# p_maputl.c:81: 	return line->dy < 0;
	.loc 1 81 18
	shrl	$31, %eax	#, tmp110
	movzbl	%al, %eax	# _7, _23
	jmp	.L7	#
.L5:
# p_maputl.c:83:     if (!line->dy)
	.loc 1 83 14
	movq	-32(%rbp), %rax	# line, tmp111
	movl	20(%rax), %eax	# line_26(D)->dy, _8
# p_maputl.c:83:     if (!line->dy)
	.loc 1 83 8
	testl	%eax, %eax	# _8
	jne	.L8	#,
# p_maputl.c:85: 	if (y <= line->v1->y)
	.loc 1 85 15
	movq	-32(%rbp), %rax	# line, tmp112
	movq	(%rax), %rax	# line_26(D)->v1, _9
# p_maputl.c:85: 	if (y <= line->v1->y)
	.loc 1 85 19
	movl	4(%rax), %eax	# _9->y, _10
# p_maputl.c:85: 	if (y <= line->v1->y)
	.loc 1 85 5
	cmpl	%eax, -24(%rbp)	# _10, y
	jg	.L9	#,
# p_maputl.c:86: 	    return line->dx < 0;
	.loc 1 86 17
	movq	-32(%rbp), %rax	# line, tmp113
	movl	16(%rax), %eax	# line_26(D)->dx, _11
# p_maputl.c:86: 	    return line->dx < 0;
	.loc 1 86 22
	shrl	$31, %eax	#, tmp114
	movzbl	%al, %eax	# _12, _23
	jmp	.L7	#
.L9:
# p_maputl.c:88: 	return line->dx > 0;
	.loc 1 88 13
	movq	-32(%rbp), %rax	# line, tmp115
	movl	16(%rax), %eax	# line_26(D)->dx, _13
# p_maputl.c:88: 	return line->dx > 0;
	.loc 1 88 18
	testl	%eax, %eax	# _13
	setg	%al	#, _14
	movzbl	%al, %eax	# _14, _23
	jmp	.L7	#
.L8:
# p_maputl.c:91:     dx = (x - line->v1->x);
	.loc 1 91 19
	movq	-32(%rbp), %rax	# line, tmp116
	movq	(%rax), %rax	# line_26(D)->v1, _15
# p_maputl.c:91:     dx = (x - line->v1->x);
	.loc 1 91 23
	movl	(%rax), %eax	# _15->x, _16
# p_maputl.c:91:     dx = (x - line->v1->x);
	.loc 1 91 8
	movl	-20(%rbp), %edx	# x, tmp120
	subl	%eax, %edx	# _16, tmp119
	movl	%edx, -16(%rbp)	# tmp119, dx
# p_maputl.c:92:     dy = (y - line->v1->y);
	.loc 1 92 19
	movq	-32(%rbp), %rax	# line, tmp121
	movq	(%rax), %rax	# line_26(D)->v1, _17
# p_maputl.c:92:     dy = (y - line->v1->y);
	.loc 1 92 23
	movl	4(%rax), %eax	# _17->y, _18
# p_maputl.c:92:     dy = (y - line->v1->y);
	.loc 1 92 8
	movl	-24(%rbp), %edx	# y, tmp125
	subl	%eax, %edx	# _18, tmp124
	movl	%edx, -12(%rbp)	# tmp124, dy
# p_maputl.c:94:     left = FixedMul ( line->dy>>FRACBITS , dx );
	.loc 1 94 27
	movq	-32(%rbp), %rax	# line, tmp126
	movl	20(%rax), %eax	# line_26(D)->dy, _19
# p_maputl.c:94:     left = FixedMul ( line->dy>>FRACBITS , dx );
	.loc 1 94 12
	sarl	$16, %eax	#, _19
	movl	%eax, %edx	# _19, _20
	movl	-16(%rbp), %eax	# dx, tmp127
	movl	%eax, %esi	# tmp127,
	movl	%edx, %edi	# _20,
	call	FixedMul@PLT	#
	movl	%eax, -8(%rbp)	# tmp128, left
# p_maputl.c:95:     right = FixedMul ( dy , line->dx>>FRACBITS );
	.loc 1 95 33
	movq	-32(%rbp), %rax	# line, tmp129
	movl	16(%rax), %eax	# line_26(D)->dx, _21
# p_maputl.c:95:     right = FixedMul ( dy , line->dx>>FRACBITS );
	.loc 1 95 13
	sarl	$16, %eax	#, _21
	movl	%eax, %edx	# _21, _22
	movl	-12(%rbp), %eax	# dy, tmp130
	movl	%edx, %esi	# _22,
	movl	%eax, %edi	# tmp130,
	call	FixedMul@PLT	#
	movl	%eax, -4(%rbp)	# tmp131, right
# p_maputl.c:97:     if (right < left)
	.loc 1 97 8
	movl	-4(%rbp), %eax	# right, tmp132
	cmpl	-8(%rbp), %eax	# left, tmp132
	jge	.L10	#,
# p_maputl.c:98: 	return 0;		// front side
	.loc 1 98 9
	movl	$0, %eax	#, _23
	jmp	.L7	#
.L10:
# p_maputl.c:99:     return 1;			// back side
	.loc 1 99 12
	movl	$1, %eax	#, _23
.L7:
# p_maputl.c:100: }
	.loc 1 100 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	P_PointOnLineSide, .-P_PointOnLineSide
	.globl	P_BoxOnLineSide
	.type	P_BoxOnLineSide, @function
P_BoxOnLineSide:
.LFB8:
	.loc 1 113 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# tmbox, tmbox
	movq	%rsi, -32(%rbp)	# ld, ld
# p_maputl.c:117:     switch (ld->slopetype)
	.loc 1 117 15
	movq	-32(%rbp), %rax	# ld, tmp120
	movl	52(%rax), %eax	# ld_46(D)->slopetype, _1
# p_maputl.c:117:     switch (ld->slopetype)
	.loc 1 117 5
	cmpl	$3, %eax	#, _1
	je	.L12	#,
	cmpl	$3, %eax	#, _1
	ja	.L13	#,
	cmpl	$2, %eax	#, _1
	je	.L14	#,
	cmpl	$2, %eax	#, _1
	ja	.L13	#,
	testl	%eax, %eax	# _1
	je	.L15	#,
	cmpl	$1, %eax	#, _1
	je	.L16	#,
	jmp	.L13	#
.L15:
# p_maputl.c:120: 	p1 = tmbox[BOXTOP] > ld->v1->y;
	.loc 1 120 12
	movq	-24(%rbp), %rax	# tmbox, tmp121
	movl	(%rax), %edx	# *tmbox_49(D), _2
# p_maputl.c:120: 	p1 = tmbox[BOXTOP] > ld->v1->y;
	.loc 1 120 25
	movq	-32(%rbp), %rax	# ld, tmp122
	movq	(%rax), %rax	# ld_46(D)->v1, _3
# p_maputl.c:120: 	p1 = tmbox[BOXTOP] > ld->v1->y;
	.loc 1 120 29
	movl	4(%rax), %eax	# _3->y, _4
# p_maputl.c:120: 	p1 = tmbox[BOXTOP] > ld->v1->y;
	.loc 1 120 21
	cmpl	%eax, %edx	# _4, _2
	setg	%al	#, _5
# p_maputl.c:120: 	p1 = tmbox[BOXTOP] > ld->v1->y;
	.loc 1 120 5
	movzbl	%al, %eax	# _5, tmp123
	movl	%eax, -8(%rbp)	# tmp123, p1
# p_maputl.c:121: 	p2 = tmbox[BOXBOTTOM] > ld->v1->y;
	.loc 1 121 12
	movq	-24(%rbp), %rax	# tmbox, tmp124
	addq	$4, %rax	#, _6
	movl	(%rax), %edx	# *_6, _7
# p_maputl.c:121: 	p2 = tmbox[BOXBOTTOM] > ld->v1->y;
	.loc 1 121 28
	movq	-32(%rbp), %rax	# ld, tmp125
	movq	(%rax), %rax	# ld_46(D)->v1, _8
# p_maputl.c:121: 	p2 = tmbox[BOXBOTTOM] > ld->v1->y;
	.loc 1 121 32
	movl	4(%rax), %eax	# _8->y, _9
# p_maputl.c:121: 	p2 = tmbox[BOXBOTTOM] > ld->v1->y;
	.loc 1 121 24
	cmpl	%eax, %edx	# _9, _7
	setg	%al	#, _10
# p_maputl.c:121: 	p2 = tmbox[BOXBOTTOM] > ld->v1->y;
	.loc 1 121 5
	movzbl	%al, %eax	# _10, tmp126
	movl	%eax, -4(%rbp)	# tmp126, p2
# p_maputl.c:122: 	if (ld->dx < 0)
	.loc 1 122 8
	movq	-32(%rbp), %rax	# ld, tmp127
	movl	16(%rax), %eax	# ld_46(D)->dx, _11
# p_maputl.c:122: 	if (ld->dx < 0)
	.loc 1 122 5
	testl	%eax, %eax	# _11
	jns	.L21	#,
# p_maputl.c:124: 	    p1 ^= 1;
	.loc 1 124 9
	xorl	$1, -8(%rbp)	#, p1
# p_maputl.c:125: 	    p2 ^= 1;
	.loc 1 125 9
	xorl	$1, -4(%rbp)	#, p2
# p_maputl.c:127: 	break;
	.loc 1 127 2
	jmp	.L21	#
.L16:
# p_maputl.c:130: 	p1 = tmbox[BOXRIGHT] < ld->v1->x;
	.loc 1 130 12
	movq	-24(%rbp), %rax	# tmbox, tmp128
	addq	$12, %rax	#, _12
	movl	(%rax), %edx	# *_12, _13
# p_maputl.c:130: 	p1 = tmbox[BOXRIGHT] < ld->v1->x;
	.loc 1 130 27
	movq	-32(%rbp), %rax	# ld, tmp129
	movq	(%rax), %rax	# ld_46(D)->v1, _14
# p_maputl.c:130: 	p1 = tmbox[BOXRIGHT] < ld->v1->x;
	.loc 1 130 31
	movl	(%rax), %eax	# _14->x, _15
# p_maputl.c:130: 	p1 = tmbox[BOXRIGHT] < ld->v1->x;
	.loc 1 130 23
	cmpl	%eax, %edx	# _15, _13
	setl	%al	#, _16
# p_maputl.c:130: 	p1 = tmbox[BOXRIGHT] < ld->v1->x;
	.loc 1 130 5
	movzbl	%al, %eax	# _16, tmp130
	movl	%eax, -8(%rbp)	# tmp130, p1
# p_maputl.c:131: 	p2 = tmbox[BOXLEFT] < ld->v1->x;
	.loc 1 131 12
	movq	-24(%rbp), %rax	# tmbox, tmp131
	addq	$8, %rax	#, _17
	movl	(%rax), %edx	# *_17, _18
# p_maputl.c:131: 	p2 = tmbox[BOXLEFT] < ld->v1->x;
	.loc 1 131 26
	movq	-32(%rbp), %rax	# ld, tmp132
	movq	(%rax), %rax	# ld_46(D)->v1, _19
# p_maputl.c:131: 	p2 = tmbox[BOXLEFT] < ld->v1->x;
	.loc 1 131 30
	movl	(%rax), %eax	# _19->x, _20
# p_maputl.c:131: 	p2 = tmbox[BOXLEFT] < ld->v1->x;
	.loc 1 131 22
	cmpl	%eax, %edx	# _20, _18
	setl	%al	#, _21
# p_maputl.c:131: 	p2 = tmbox[BOXLEFT] < ld->v1->x;
	.loc 1 131 5
	movzbl	%al, %eax	# _21, tmp133
	movl	%eax, -4(%rbp)	# tmp133, p2
# p_maputl.c:132: 	if (ld->dy < 0)
	.loc 1 132 8
	movq	-32(%rbp), %rax	# ld, tmp134
	movl	20(%rax), %eax	# ld_46(D)->dy, _22
# p_maputl.c:132: 	if (ld->dy < 0)
	.loc 1 132 5
	testl	%eax, %eax	# _22
	jns	.L22	#,
# p_maputl.c:134: 	    p1 ^= 1;
	.loc 1 134 9
	xorl	$1, -8(%rbp)	#, p1
# p_maputl.c:135: 	    p2 ^= 1;
	.loc 1 135 9
	xorl	$1, -4(%rbp)	#, p2
# p_maputl.c:137: 	break;
	.loc 1 137 2
	jmp	.L22	#
.L14:
# p_maputl.c:140: 	p1 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXTOP], ld);
	.loc 1 140 7
	movq	-24(%rbp), %rax	# tmbox, tmp135
	movl	(%rax), %ecx	# *tmbox_49(D), _23
# p_maputl.c:140: 	p1 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXTOP], ld);
	.loc 1 140 31
	movq	-24(%rbp), %rax	# tmbox, tmp136
	addq	$8, %rax	#, _24
# p_maputl.c:140: 	p1 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXTOP], ld);
	.loc 1 140 7
	movl	(%rax), %eax	# *_24, _25
	movq	-32(%rbp), %rdx	# ld, tmp137
	movl	%ecx, %esi	# _23,
	movl	%eax, %edi	# _25,
	call	P_PointOnLineSide	#
	movl	%eax, -8(%rbp)	# tmp138, p1
# p_maputl.c:141: 	p2 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXBOTTOM], ld);
	.loc 1 141 48
	movq	-24(%rbp), %rax	# tmbox, tmp139
	addq	$4, %rax	#, _26
# p_maputl.c:141: 	p2 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXBOTTOM], ld);
	.loc 1 141 7
	movl	(%rax), %ecx	# *_26, _27
# p_maputl.c:141: 	p2 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXBOTTOM], ld);
	.loc 1 141 31
	movq	-24(%rbp), %rax	# tmbox, tmp140
	addq	$12, %rax	#, _28
# p_maputl.c:141: 	p2 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXBOTTOM], ld);
	.loc 1 141 7
	movl	(%rax), %eax	# *_28, _29
	movq	-32(%rbp), %rdx	# ld, tmp141
	movl	%ecx, %esi	# _27,
	movl	%eax, %edi	# _29,
	call	P_PointOnLineSide	#
	movl	%eax, -4(%rbp)	# tmp142, p2
# p_maputl.c:142: 	break;
	.loc 1 142 2
	jmp	.L13	#
.L12:
# p_maputl.c:145: 	p1 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXTOP], ld);
	.loc 1 145 7
	movq	-24(%rbp), %rax	# tmbox, tmp143
	movl	(%rax), %ecx	# *tmbox_49(D), _30
# p_maputl.c:145: 	p1 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXTOP], ld);
	.loc 1 145 31
	movq	-24(%rbp), %rax	# tmbox, tmp144
	addq	$12, %rax	#, _31
# p_maputl.c:145: 	p1 = P_PointOnLineSide (tmbox[BOXRIGHT], tmbox[BOXTOP], ld);
	.loc 1 145 7
	movl	(%rax), %eax	# *_31, _32
	movq	-32(%rbp), %rdx	# ld, tmp145
	movl	%ecx, %esi	# _30,
	movl	%eax, %edi	# _32,
	call	P_PointOnLineSide	#
	movl	%eax, -8(%rbp)	# tmp146, p1
# p_maputl.c:146: 	p2 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXBOTTOM], ld);
	.loc 1 146 47
	movq	-24(%rbp), %rax	# tmbox, tmp147
	addq	$4, %rax	#, _33
# p_maputl.c:146: 	p2 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXBOTTOM], ld);
	.loc 1 146 7
	movl	(%rax), %ecx	# *_33, _34
# p_maputl.c:146: 	p2 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXBOTTOM], ld);
	.loc 1 146 31
	movq	-24(%rbp), %rax	# tmbox, tmp148
	addq	$8, %rax	#, _35
# p_maputl.c:146: 	p2 = P_PointOnLineSide (tmbox[BOXLEFT], tmbox[BOXBOTTOM], ld);
	.loc 1 146 7
	movl	(%rax), %eax	# *_35, _36
	movq	-32(%rbp), %rdx	# ld, tmp149
	movl	%ecx, %esi	# _34,
	movl	%eax, %edi	# _36,
	call	P_PointOnLineSide	#
	movl	%eax, -4(%rbp)	# tmp150, p2
# p_maputl.c:147: 	break;
	.loc 1 147 2
	jmp	.L13	#
.L21:
# p_maputl.c:127: 	break;
	.loc 1 127 2
	nop	
	jmp	.L13	#
.L22:
# p_maputl.c:137: 	break;
	.loc 1 137 2
	nop	
.L13:
# p_maputl.c:150:     if (p1 == p2)
	.loc 1 150 8
	movl	-8(%rbp), %eax	# p1, tmp151
	cmpl	-4(%rbp), %eax	# p2, tmp151
	jne	.L19	#,
# p_maputl.c:151: 	return p1;
	.loc 1 151 9
	movl	-8(%rbp), %eax	# p1, _43
	jmp	.L20	#
.L19:
# p_maputl.c:152:     return -1;
	.loc 1 152 12
	movl	$-1, %eax	#, _43
.L20:
# p_maputl.c:153: }
	.loc 1 153 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	P_BoxOnLineSide, .-P_BoxOnLineSide
	.globl	P_PointOnDivlineSide
	.type	P_PointOnDivlineSide, @function
P_PointOnDivlineSide:
.LFB9:
	.loc 1 165 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movq	%rdx, -32(%rbp)	# line, line
# p_maputl.c:171:     if (!line->dx)
	.loc 1 171 14
	movq	-32(%rbp), %rax	# line, tmp111
	movl	8(%rax), %eax	# line_31(D)->dx, _1
# p_maputl.c:171:     if (!line->dx)
	.loc 1 171 8
	testl	%eax, %eax	# _1
	jne	.L24	#,
# p_maputl.c:173: 	if (x <= line->x)
	.loc 1 173 15
	movq	-32(%rbp), %rax	# line, tmp112
	movl	(%rax), %eax	# line_31(D)->x, _2
# p_maputl.c:173: 	if (x <= line->x)
	.loc 1 173 5
	cmpl	%eax, -20(%rbp)	# _2, x
	jg	.L25	#,
# p_maputl.c:174: 	    return line->dy > 0;
	.loc 1 174 17
	movq	-32(%rbp), %rax	# line, tmp113
	movl	12(%rax), %eax	# line_31(D)->dy, _3
# p_maputl.c:174: 	    return line->dy > 0;
	.loc 1 174 22
	testl	%eax, %eax	# _3
	setg	%al	#, _4
	movzbl	%al, %eax	# _4, _28
	jmp	.L26	#
.L25:
# p_maputl.c:176: 	return line->dy < 0;
	.loc 1 176 13
	movq	-32(%rbp), %rax	# line, tmp114
	movl	12(%rax), %eax	# line_31(D)->dy, _5
# p_maputl.c:176: 	return line->dy < 0;
	.loc 1 176 18
	shrl	$31, %eax	#, tmp115
	movzbl	%al, %eax	# _6, _28
	jmp	.L26	#
.L24:
# p_maputl.c:178:     if (!line->dy)
	.loc 1 178 14
	movq	-32(%rbp), %rax	# line, tmp116
	movl	12(%rax), %eax	# line_31(D)->dy, _7
# p_maputl.c:178:     if (!line->dy)
	.loc 1 178 8
	testl	%eax, %eax	# _7
	jne	.L27	#,
# p_maputl.c:180: 	if (y <= line->y)
	.loc 1 180 15
	movq	-32(%rbp), %rax	# line, tmp117
	movl	4(%rax), %eax	# line_31(D)->y, _8
# p_maputl.c:180: 	if (y <= line->y)
	.loc 1 180 5
	cmpl	%eax, -24(%rbp)	# _8, y
	jg	.L28	#,
# p_maputl.c:181: 	    return line->dx < 0;
	.loc 1 181 17
	movq	-32(%rbp), %rax	# line, tmp118
	movl	8(%rax), %eax	# line_31(D)->dx, _9
# p_maputl.c:181: 	    return line->dx < 0;
	.loc 1 181 22
	shrl	$31, %eax	#, tmp119
	movzbl	%al, %eax	# _10, _28
	jmp	.L26	#
.L28:
# p_maputl.c:183: 	return line->dx > 0;
	.loc 1 183 13
	movq	-32(%rbp), %rax	# line, tmp120
	movl	8(%rax), %eax	# line_31(D)->dx, _11
# p_maputl.c:183: 	return line->dx > 0;
	.loc 1 183 18
	testl	%eax, %eax	# _11
	setg	%al	#, _12
	movzbl	%al, %eax	# _12, _28
	jmp	.L26	#
.L27:
# p_maputl.c:186:     dx = (x - line->x);
	.loc 1 186 19
	movq	-32(%rbp), %rax	# line, tmp121
	movl	(%rax), %eax	# line_31(D)->x, _13
# p_maputl.c:186:     dx = (x - line->x);
	.loc 1 186 8
	movl	-20(%rbp), %edx	# x, tmp125
	subl	%eax, %edx	# _13, tmp124
	movl	%edx, -16(%rbp)	# tmp124, dx
# p_maputl.c:187:     dy = (y - line->y);
	.loc 1 187 19
	movq	-32(%rbp), %rax	# line, tmp126
	movl	4(%rax), %eax	# line_31(D)->y, _14
# p_maputl.c:187:     dy = (y - line->y);
	.loc 1 187 8
	movl	-24(%rbp), %edx	# y, tmp130
	subl	%eax, %edx	# _14, tmp129
	movl	%edx, -12(%rbp)	# tmp129, dy
# p_maputl.c:190:     if ( (line->dy ^ line->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 190 15
	movq	-32(%rbp), %rax	# line, tmp131
	movl	12(%rax), %edx	# line_31(D)->dy, _15
# p_maputl.c:190:     if ( (line->dy ^ line->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 190 26
	movq	-32(%rbp), %rax	# line, tmp132
	movl	8(%rax), %eax	# line_31(D)->dx, _16
# p_maputl.c:190:     if ( (line->dy ^ line->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 190 20
	xorl	%edx, %eax	# _15, _17
# p_maputl.c:190:     if ( (line->dy ^ line->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 190 31
	xorl	-16(%rbp), %eax	# dx, _18
# p_maputl.c:190:     if ( (line->dy ^ line->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 190 36
	xorl	-12(%rbp), %eax	# dy, _19
# p_maputl.c:190:     if ( (line->dy ^ line->dx ^ dx ^ dy)&0x80000000 )
	.loc 1 190 8
	testl	%eax, %eax	# _19
	jns	.L29	#,
# p_maputl.c:192: 	if ( (line->dy ^ dx) & 0x80000000 )
	.loc 1 192 12
	movq	-32(%rbp), %rax	# line, tmp133
	movl	12(%rax), %eax	# line_31(D)->dy, _20
# p_maputl.c:192: 	if ( (line->dy ^ dx) & 0x80000000 )
	.loc 1 192 17
	xorl	-16(%rbp), %eax	# dx, _21
# p_maputl.c:192: 	if ( (line->dy ^ dx) & 0x80000000 )
	.loc 1 192 5
	testl	%eax, %eax	# _21
	jns	.L30	#,
# p_maputl.c:193: 	    return 1;		// (left is negative)
	.loc 1 193 13
	movl	$1, %eax	#, _28
	jmp	.L26	#
.L30:
# p_maputl.c:194: 	return 0;
	.loc 1 194 9
	movl	$0, %eax	#, _28
	jmp	.L26	#
.L29:
# p_maputl.c:197:     left = FixedMul ( line->dy>>8, dx>>8 );
	.loc 1 197 12
	movl	-16(%rbp), %eax	# dx, tmp134
	sarl	$8, %eax	#, tmp134
	movl	%eax, %edx	# tmp134, _22
# p_maputl.c:197:     left = FixedMul ( line->dy>>8, dx>>8 );
	.loc 1 197 27
	movq	-32(%rbp), %rax	# line, tmp135
	movl	12(%rax), %eax	# line_31(D)->dy, _23
# p_maputl.c:197:     left = FixedMul ( line->dy>>8, dx>>8 );
	.loc 1 197 12
	sarl	$8, %eax	#, _24
	movl	%edx, %esi	# _22,
	movl	%eax, %edi	# _24,
	call	FixedMul@PLT	#
	movl	%eax, -8(%rbp)	# tmp136, left
# p_maputl.c:198:     right = FixedMul ( dy>>8 , line->dx>>8 );
	.loc 1 198 36
	movq	-32(%rbp), %rax	# line, tmp137
	movl	8(%rax), %eax	# line_31(D)->dx, _25
# p_maputl.c:198:     right = FixedMul ( dy>>8 , line->dx>>8 );
	.loc 1 198 13
	sarl	$8, %eax	#, _25
	movl	%eax, %edx	# _25, _26
	movl	-12(%rbp), %eax	# dy, tmp138
	sarl	$8, %eax	#, _27
	movl	%edx, %esi	# _26,
	movl	%eax, %edi	# _27,
	call	FixedMul@PLT	#
	movl	%eax, -4(%rbp)	# tmp139, right
# p_maputl.c:200:     if (right < left)
	.loc 1 200 8
	movl	-4(%rbp), %eax	# right, tmp140
	cmpl	-8(%rbp), %eax	# left, tmp140
	jge	.L31	#,
# p_maputl.c:201: 	return 0;		// front side
	.loc 1 201 9
	movl	$0, %eax	#, _28
	jmp	.L26	#
.L31:
# p_maputl.c:202:     return 1;			// back side
	.loc 1 202 12
	movl	$1, %eax	#, _28
.L26:
# p_maputl.c:203: }
	.loc 1 203 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	P_PointOnDivlineSide, .-P_PointOnDivlineSide
	.globl	P_MakeDivline
	.type	P_MakeDivline, @function
P_MakeDivline:
.LFB10:
	.loc 1 214 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# li, li
	movq	%rsi, -16(%rbp)	# dl, dl
# p_maputl.c:215:     dl->x = li->v1->x;
	.loc 1 215 15
	movq	-8(%rbp), %rax	# li, tmp88
	movq	(%rax), %rax	# li_8(D)->v1, _1
# p_maputl.c:215:     dl->x = li->v1->x;
	.loc 1 215 19
	movl	(%rax), %edx	# _1->x, _2
# p_maputl.c:215:     dl->x = li->v1->x;
	.loc 1 215 11
	movq	-16(%rbp), %rax	# dl, tmp89
	movl	%edx, (%rax)	# _2, dl_9(D)->x
# p_maputl.c:216:     dl->y = li->v1->y;
	.loc 1 216 15
	movq	-8(%rbp), %rax	# li, tmp90
	movq	(%rax), %rax	# li_8(D)->v1, _3
# p_maputl.c:216:     dl->y = li->v1->y;
	.loc 1 216 19
	movl	4(%rax), %edx	# _3->y, _4
# p_maputl.c:216:     dl->y = li->v1->y;
	.loc 1 216 11
	movq	-16(%rbp), %rax	# dl, tmp91
	movl	%edx, 4(%rax)	# _4, dl_9(D)->y
# p_maputl.c:217:     dl->dx = li->dx;
	.loc 1 217 16
	movq	-8(%rbp), %rax	# li, tmp92
	movl	16(%rax), %edx	# li_8(D)->dx, _5
# p_maputl.c:217:     dl->dx = li->dx;
	.loc 1 217 12
	movq	-16(%rbp), %rax	# dl, tmp93
	movl	%edx, 8(%rax)	# _5, dl_9(D)->dx
# p_maputl.c:218:     dl->dy = li->dy;
	.loc 1 218 16
	movq	-8(%rbp), %rax	# li, tmp94
	movl	20(%rax), %edx	# li_8(D)->dy, _6
# p_maputl.c:218:     dl->dy = li->dy;
	.loc 1 218 12
	movq	-16(%rbp), %rax	# dl, tmp95
	movl	%edx, 12(%rax)	# _6, dl_9(D)->dy
# p_maputl.c:219: }
	.loc 1 219 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	P_MakeDivline, .-P_MakeDivline
	.globl	P_InterceptVector
	.type	P_InterceptVector, @function
P_InterceptVector:
.LFB11:
	.loc 1 234 1
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
	movq	%rdi, -40(%rbp)	# v2, v2
	movq	%rsi, -48(%rbp)	# v1, v1
# p_maputl.c:240:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 240 11
	movq	-40(%rbp), %rax	# v2, tmp104
	movl	8(%rax), %eax	# v2_24(D)->dx, _1
# p_maputl.c:240:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 240 23
	movq	-48(%rbp), %rdx	# v1, tmp105
	movl	12(%rdx), %edx	# v1_25(D)->dy, _2
# p_maputl.c:240:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 240 11
	sarl	$8, %edx	#, _3
	movl	%eax, %esi	# _1,
	movl	%edx, %edi	# _3,
	call	FixedMul@PLT	#
	movl	%eax, %ebx	#, _4
# p_maputl.c:240:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 240 41 discriminator 1
	movq	-40(%rbp), %rax	# v2, tmp106
	movl	12(%rax), %eax	# v2_24(D)->dy, _5
# p_maputl.c:240:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 240 52 discriminator 1
	movq	-48(%rbp), %rdx	# v1, tmp107
	movl	8(%rdx), %edx	# v1_25(D)->dx, _6
# p_maputl.c:240:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 240 41 discriminator 1
	sarl	$8, %edx	#, _7
	movl	%eax, %esi	# _5,
	movl	%edx, %edi	# _7,
	call	FixedMul@PLT	#
# p_maputl.c:240:     den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);
	.loc 1 240 9 discriminator 2
	subl	%eax, %ebx	# _8, _4
	movl	%ebx, %edx	# _4, tmp108
	movl	%edx, -28(%rbp)	# tmp108, den
# p_maputl.c:242:     if (den == 0)
	.loc 1 242 8
	cmpl	$0, -28(%rbp)	#, den
	jne	.L34	#,
# p_maputl.c:243: 	return 0;
	.loc 1 243 9
	movl	$0, %eax	#, _21
	jmp	.L35	#
.L34:
# p_maputl.c:247: 	FixedMul ( (v1->x - v2->x)>>8 ,v1->dy )
	.loc 1 247 2
	movq	-48(%rbp), %rax	# v1, tmp109
	movl	12(%rax), %eax	# v1_25(D)->dy, _9
# p_maputl.c:247: 	FixedMul ( (v1->x - v2->x)>>8 ,v1->dy )
	.loc 1 247 16
	movq	-48(%rbp), %rdx	# v1, tmp110
	movl	(%rdx), %ecx	# v1_25(D)->x, _10
# p_maputl.c:247: 	FixedMul ( (v1->x - v2->x)>>8 ,v1->dy )
	.loc 1 247 24
	movq	-40(%rbp), %rdx	# v2, tmp111
	movl	(%rdx), %edx	# v2_24(D)->x, _11
# p_maputl.c:247: 	FixedMul ( (v1->x - v2->x)>>8 ,v1->dy )
	.loc 1 247 20
	subl	%edx, %ecx	# _11, _12
# p_maputl.c:247: 	FixedMul ( (v1->x - v2->x)>>8 ,v1->dy )
	.loc 1 247 2
	sarl	$8, %ecx	#, _12
	movl	%ecx, %edx	# _12, _13
	movl	%eax, %esi	# _9,
	movl	%edx, %edi	# _13,
	call	FixedMul@PLT	#
	movl	%eax, %ebx	#, _14
# p_maputl.c:248: 	+FixedMul ( (v2->y - v1->y)>>8, v1->dx );
	.loc 1 248 3
	movq	-48(%rbp), %rax	# v1, tmp112
	movl	8(%rax), %eax	# v1_25(D)->dx, _15
# p_maputl.c:248: 	+FixedMul ( (v2->y - v1->y)>>8, v1->dx );
	.loc 1 248 17
	movq	-40(%rbp), %rdx	# v2, tmp113
	movl	4(%rdx), %ecx	# v2_24(D)->y, _16
# p_maputl.c:248: 	+FixedMul ( (v2->y - v1->y)>>8, v1->dx );
	.loc 1 248 25
	movq	-48(%rbp), %rdx	# v1, tmp114
	movl	4(%rdx), %edx	# v1_25(D)->y, _17
# p_maputl.c:248: 	+FixedMul ( (v2->y - v1->y)>>8, v1->dx );
	.loc 1 248 21
	subl	%edx, %ecx	# _17, _18
# p_maputl.c:248: 	+FixedMul ( (v2->y - v1->y)>>8, v1->dx );
	.loc 1 248 3
	sarl	$8, %ecx	#, _18
	movl	%ecx, %edx	# _18, _19
	movl	%eax, %esi	# _15,
	movl	%edx, %edi	# _19,
	call	FixedMul@PLT	#
# p_maputl.c:246:     num =
	.loc 1 246 9
	addl	%ebx, %eax	# _14, tmp115
	movl	%eax, -24(%rbp)	# tmp115, num
# p_maputl.c:250:     frac = FixedDiv (num , den);
	.loc 1 250 12
	movl	-28(%rbp), %edx	# den, tmp116
	movl	-24(%rbp), %eax	# num, tmp117
	movl	%edx, %esi	# tmp116,
	movl	%eax, %edi	# tmp117,
	call	FixedDiv@PLT	#
	movl	%eax, -20(%rbp)	# tmp118, frac
# p_maputl.c:252:     return frac;
	.loc 1 252 12
	movl	-20(%rbp), %eax	# frac, _21
.L35:
# p_maputl.c:285: }
	.loc 1 285 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	P_InterceptVector, .-P_InterceptVector
	.globl	opentop
	.bss
	.align 4
	.type	opentop, @object
	.size	opentop, 4
opentop:
	.zero	4
	.globl	openbottom
	.align 4
	.type	openbottom, @object
	.size	openbottom, 4
openbottom:
	.zero	4
	.globl	openrange
	.align 4
	.type	openrange, @object
	.size	openrange, 4
openrange:
	.zero	4
	.globl	lowfloor
	.align 4
	.type	lowfloor, @object
	.size	lowfloor, 4
lowfloor:
	.zero	4
	.text
	.globl	P_LineOpening
	.type	P_LineOpening, @function
P_LineOpening:
.LFB12:
	.loc 1 301 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# linedef, linedef
# p_maputl.c:305:     if (linedef->sidenum[1] == -1)
	.loc 1 305 25
	movq	-24(%rbp), %rax	# linedef, tmp96
	movzwl	32(%rax), %eax	# linedef_19(D)->sidenum[1], _1
# p_maputl.c:305:     if (linedef->sidenum[1] == -1)
	.loc 1 305 8
	cmpw	$-1, %ax	#, _1
	jne	.L37	#,
# p_maputl.c:308: 	openrange = 0;
	.loc 1 308 12
	movl	$0, openrange(%rip)	#, openrange
# p_maputl.c:309: 	return;
	.loc 1 309 2
	jmp	.L36	#
.L37:
# p_maputl.c:312:     front = linedef->frontsector;
	.loc 1 312 11
	movq	-24(%rbp), %rax	# linedef, tmp97
	movq	56(%rax), %rax	# linedef_19(D)->frontsector, tmp98
	movq	%rax, -16(%rbp)	# tmp98, front
# p_maputl.c:313:     back = linedef->backsector;
	.loc 1 313 10
	movq	-24(%rbp), %rax	# linedef, tmp99
	movq	64(%rax), %rax	# linedef_19(D)->backsector, tmp100
	movq	%rax, -8(%rbp)	# tmp100, back
# p_maputl.c:315:     if (front->ceilingheight < back->ceilingheight)
	.loc 1 315 14
	movq	-16(%rbp), %rax	# front, tmp101
	movl	4(%rax), %edx	# front_20->ceilingheight, _2
# p_maputl.c:315:     if (front->ceilingheight < back->ceilingheight)
	.loc 1 315 36
	movq	-8(%rbp), %rax	# back, tmp102
	movl	4(%rax), %eax	# back_21->ceilingheight, _3
# p_maputl.c:315:     if (front->ceilingheight < back->ceilingheight)
	.loc 1 315 8
	cmpl	%eax, %edx	# _3, _2
	jge	.L39	#,
# p_maputl.c:316: 	opentop = front->ceilingheight;
	.loc 1 316 17
	movq	-16(%rbp), %rax	# front, tmp103
	movl	4(%rax), %eax	# front_20->ceilingheight, _4
# p_maputl.c:316: 	opentop = front->ceilingheight;
	.loc 1 316 10
	movl	%eax, opentop(%rip)	# _4, opentop
	jmp	.L40	#
.L39:
# p_maputl.c:318: 	opentop = back->ceilingheight;
	.loc 1 318 16
	movq	-8(%rbp), %rax	# back, tmp104
	movl	4(%rax), %eax	# back_21->ceilingheight, _5
# p_maputl.c:318: 	opentop = back->ceilingheight;
	.loc 1 318 10
	movl	%eax, opentop(%rip)	# _5, opentop
.L40:
# p_maputl.c:320:     if (front->floorheight > back->floorheight)
	.loc 1 320 14
	movq	-16(%rbp), %rax	# front, tmp105
	movl	(%rax), %edx	# front_20->floorheight, _6
# p_maputl.c:320:     if (front->floorheight > back->floorheight)
	.loc 1 320 34
	movq	-8(%rbp), %rax	# back, tmp106
	movl	(%rax), %eax	# back_21->floorheight, _7
# p_maputl.c:320:     if (front->floorheight > back->floorheight)
	.loc 1 320 8
	cmpl	%eax, %edx	# _7, _6
	jle	.L41	#,
# p_maputl.c:322: 	openbottom = front->floorheight;
	.loc 1 322 20
	movq	-16(%rbp), %rax	# front, tmp107
	movl	(%rax), %eax	# front_20->floorheight, _8
# p_maputl.c:322: 	openbottom = front->floorheight;
	.loc 1 322 13
	movl	%eax, openbottom(%rip)	# _8, openbottom
# p_maputl.c:323: 	lowfloor = back->floorheight;
	.loc 1 323 17
	movq	-8(%rbp), %rax	# back, tmp108
	movl	(%rax), %eax	# back_21->floorheight, _9
# p_maputl.c:323: 	lowfloor = back->floorheight;
	.loc 1 323 11
	movl	%eax, lowfloor(%rip)	# _9, lowfloor
	jmp	.L42	#
.L41:
# p_maputl.c:327: 	openbottom = back->floorheight;
	.loc 1 327 19
	movq	-8(%rbp), %rax	# back, tmp109
	movl	(%rax), %eax	# back_21->floorheight, _10
# p_maputl.c:327: 	openbottom = back->floorheight;
	.loc 1 327 13
	movl	%eax, openbottom(%rip)	# _10, openbottom
# p_maputl.c:328: 	lowfloor = front->floorheight;
	.loc 1 328 18
	movq	-16(%rbp), %rax	# front, tmp110
	movl	(%rax), %eax	# front_20->floorheight, _11
# p_maputl.c:328: 	lowfloor = front->floorheight;
	.loc 1 328 11
	movl	%eax, lowfloor(%rip)	# _11, lowfloor
.L42:
# p_maputl.c:331:     openrange = opentop - openbottom;
	.loc 1 331 25
	movl	opentop(%rip), %edx	# opentop, opentop.0_12
	movl	openbottom(%rip), %eax	# openbottom, openbottom.1_13
	subl	%eax, %edx	# openbottom.1_13, _14
# p_maputl.c:331:     openrange = opentop - openbottom;
	.loc 1 331 15
	movl	%edx, openrange(%rip)	# _14, openrange
.L36:
# p_maputl.c:332: }
	.loc 1 332 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	P_LineOpening, .-P_LineOpening
	.globl	P_UnsetThingPosition
	.type	P_UnsetThingPosition, @function
P_UnsetThingPosition:
.LFB13:
	.loc 1 348 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# thing, thing
# p_maputl.c:352:     if ( ! (thing->flags & MF_NOSECTOR) )
	.loc 1 352 18
	movq	-24(%rbp), %rax	# thing, tmp117
	movl	160(%rax), %eax	# thing_41(D)->flags, _1
# p_maputl.c:352:     if ( ! (thing->flags & MF_NOSECTOR) )
	.loc 1 352 26
	andl	$8, %eax	#, _2
# p_maputl.c:352:     if ( ! (thing->flags & MF_NOSECTOR) )
	.loc 1 352 8
	testl	%eax, %eax	# _2
	jne	.L44	#,
# p_maputl.c:356: 	if (thing->snext)
	.loc 1 356 11
	movq	-24(%rbp), %rax	# thing, tmp118
	movq	40(%rax), %rax	# thing_41(D)->snext, _3
# p_maputl.c:356: 	if (thing->snext)
	.loc 1 356 5
	testq	%rax, %rax	# _3
	je	.L45	#,
# p_maputl.c:357: 	    thing->snext->sprev = thing->sprev;
	.loc 1 357 11
	movq	-24(%rbp), %rax	# thing, tmp119
	movq	40(%rax), %rax	# thing_41(D)->snext, _4
# p_maputl.c:357: 	    thing->snext->sprev = thing->sprev;
	.loc 1 357 33
	movq	-24(%rbp), %rdx	# thing, tmp120
	movq	48(%rdx), %rdx	# thing_41(D)->sprev, _5
# p_maputl.c:357: 	    thing->snext->sprev = thing->sprev;
	.loc 1 357 26
	movq	%rdx, 48(%rax)	# _5, _4->sprev
.L45:
# p_maputl.c:359: 	if (thing->sprev)
	.loc 1 359 11
	movq	-24(%rbp), %rax	# thing, tmp121
	movq	48(%rax), %rax	# thing_41(D)->sprev, _6
# p_maputl.c:359: 	if (thing->sprev)
	.loc 1 359 5
	testq	%rax, %rax	# _6
	je	.L46	#,
# p_maputl.c:360: 	    thing->sprev->snext = thing->snext;
	.loc 1 360 11
	movq	-24(%rbp), %rax	# thing, tmp122
	movq	48(%rax), %rax	# thing_41(D)->sprev, _7
# p_maputl.c:360: 	    thing->sprev->snext = thing->snext;
	.loc 1 360 33
	movq	-24(%rbp), %rdx	# thing, tmp123
	movq	40(%rdx), %rdx	# thing_41(D)->snext, _8
# p_maputl.c:360: 	    thing->sprev->snext = thing->snext;
	.loc 1 360 26
	movq	%rdx, 40(%rax)	# _8, _7->snext
	jmp	.L44	#
.L46:
# p_maputl.c:362: 	    thing->subsector->sector->thinglist = thing->snext;
	.loc 1 362 11
	movq	-24(%rbp), %rax	# thing, tmp124
	movq	88(%rax), %rax	# thing_41(D)->subsector, _9
# p_maputl.c:362: 	    thing->subsector->sector->thinglist = thing->snext;
	.loc 1 362 22
	movq	(%rax), %rax	# _9->sector, _10
# p_maputl.c:362: 	    thing->subsector->sector->thinglist = thing->snext;
	.loc 1 362 49
	movq	-24(%rbp), %rdx	# thing, tmp125
	movq	40(%rdx), %rdx	# thing_41(D)->snext, _11
# p_maputl.c:362: 	    thing->subsector->sector->thinglist = thing->snext;
	.loc 1 362 42
	movq	%rdx, 96(%rax)	# _11, _10->thinglist
.L44:
# p_maputl.c:365:     if ( ! (thing->flags & MF_NOBLOCKMAP) )
	.loc 1 365 18
	movq	-24(%rbp), %rax	# thing, tmp126
	movl	160(%rax), %eax	# thing_41(D)->flags, _12
# p_maputl.c:365:     if ( ! (thing->flags & MF_NOBLOCKMAP) )
	.loc 1 365 26
	andl	$16, %eax	#, _13
# p_maputl.c:365:     if ( ! (thing->flags & MF_NOBLOCKMAP) )
	.loc 1 365 8
	testl	%eax, %eax	# _13
	jne	.L50	#,
# p_maputl.c:369: 	if (thing->bnext)
	.loc 1 369 11
	movq	-24(%rbp), %rax	# thing, tmp127
	movq	72(%rax), %rax	# thing_41(D)->bnext, _14
# p_maputl.c:369: 	if (thing->bnext)
	.loc 1 369 5
	testq	%rax, %rax	# _14
	je	.L48	#,
# p_maputl.c:370: 	    thing->bnext->bprev = thing->bprev;
	.loc 1 370 11
	movq	-24(%rbp), %rax	# thing, tmp128
	movq	72(%rax), %rax	# thing_41(D)->bnext, _15
# p_maputl.c:370: 	    thing->bnext->bprev = thing->bprev;
	.loc 1 370 33
	movq	-24(%rbp), %rdx	# thing, tmp129
	movq	80(%rdx), %rdx	# thing_41(D)->bprev, _16
# p_maputl.c:370: 	    thing->bnext->bprev = thing->bprev;
	.loc 1 370 26
	movq	%rdx, 80(%rax)	# _16, _15->bprev
.L48:
# p_maputl.c:372: 	if (thing->bprev)
	.loc 1 372 11
	movq	-24(%rbp), %rax	# thing, tmp130
	movq	80(%rax), %rax	# thing_41(D)->bprev, _17
# p_maputl.c:372: 	if (thing->bprev)
	.loc 1 372 5
	testq	%rax, %rax	# _17
	je	.L49	#,
# p_maputl.c:373: 	    thing->bprev->bnext = thing->bnext;
	.loc 1 373 11
	movq	-24(%rbp), %rax	# thing, tmp131
	movq	80(%rax), %rax	# thing_41(D)->bprev, _18
# p_maputl.c:373: 	    thing->bprev->bnext = thing->bnext;
	.loc 1 373 33
	movq	-24(%rbp), %rdx	# thing, tmp132
	movq	72(%rdx), %rdx	# thing_41(D)->bnext, _19
# p_maputl.c:373: 	    thing->bprev->bnext = thing->bnext;
	.loc 1 373 26
	movq	%rdx, 72(%rax)	# _19, _18->bnext
# p_maputl.c:386: }
	.loc 1 386 1
	jmp	.L50	#
.L49:
# p_maputl.c:376: 	    blockx = (thing->x - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 376 21
	movq	-24(%rbp), %rax	# thing, tmp133
	movl	24(%rax), %edx	# thing_41(D)->x, _20
# p_maputl.c:376: 	    blockx = (thing->x - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 376 25
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.2_21
	subl	%eax, %edx	# bmaporgx.2_21, _22
# p_maputl.c:376: 	    blockx = (thing->x - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 376 13
	movl	%edx, %eax	# _22, _22
	sarl	$23, %eax	#, _22
	movl	%eax, -8(%rbp)	# tmp134, blockx
# p_maputl.c:377: 	    blocky = (thing->y - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 377 21
	movq	-24(%rbp), %rax	# thing, tmp135
	movl	28(%rax), %edx	# thing_41(D)->y, _23
# p_maputl.c:377: 	    blocky = (thing->y - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 377 25
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.3_24
	subl	%eax, %edx	# bmaporgy.3_24, _25
# p_maputl.c:377: 	    blocky = (thing->y - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 377 13
	movl	%edx, %eax	# _25, _25
	sarl	$23, %eax	#, _25
	movl	%eax, -4(%rbp)	# tmp136, blocky
# p_maputl.c:379: 	    if (blockx>=0 && blockx < bmapwidth
	.loc 1 379 9
	cmpl	$0, -8(%rbp)	#, blockx
	js	.L50	#,
# p_maputl.c:379: 	    if (blockx>=0 && blockx < bmapwidth
	.loc 1 379 30 discriminator 1
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.4_26
# p_maputl.c:379: 	    if (blockx>=0 && blockx < bmapwidth
	.loc 1 379 20 discriminator 1
	cmpl	%eax, -8(%rbp)	# bmapwidth.4_26, blockx
	jge	.L50	#,
# p_maputl.c:380: 		&& blocky>=0 && blocky <bmapheight)
	.loc 1 380 3
	cmpl	$0, -4(%rbp)	#, blocky
	js	.L50	#,
# p_maputl.c:380: 		&& blocky>=0 && blocky <bmapheight)
	.loc 1 380 26 discriminator 1
	movl	bmapheight(%rip), %eax	# bmapheight, bmapheight.5_27
# p_maputl.c:380: 		&& blocky>=0 && blocky <bmapheight)
	.loc 1 380 16 discriminator 1
	cmpl	%eax, -4(%rbp)	# bmapheight.5_27, blocky
	jge	.L50	#,
# p_maputl.c:382: 		blocklinks[blocky*bmapwidth+blockx] = thing->bnext;
	.loc 1 382 13
	movq	blocklinks(%rip), %rdx	# blocklinks, blocklinks.6_28
# p_maputl.c:382: 		blocklinks[blocky*bmapwidth+blockx] = thing->bnext;
	.loc 1 382 20
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.7_29
	imull	-4(%rbp), %eax	# blocky, bmapwidth.7_29
	movl	%eax, %ecx	# bmapwidth.7_29, _30
# p_maputl.c:382: 		blocklinks[blocky*bmapwidth+blockx] = thing->bnext;
	.loc 1 382 30
	movl	-8(%rbp), %eax	# blockx, tmp137
	addl	%ecx, %eax	# _30, _31
	cltq
# p_maputl.c:382: 		blocklinks[blocky*bmapwidth+blockx] = thing->bnext;
	.loc 1 382 13
	salq	$3, %rax	#, _33
	addq	%rax, %rdx	# _33, _34
# p_maputl.c:382: 		blocklinks[blocky*bmapwidth+blockx] = thing->bnext;
	.loc 1 382 46
	movq	-24(%rbp), %rax	# thing, tmp138
	movq	72(%rax), %rax	# thing_41(D)->bnext, _35
# p_maputl.c:382: 		blocklinks[blocky*bmapwidth+blockx] = thing->bnext;
	.loc 1 382 39
	movq	%rax, (%rdx)	# _35, *_34
.L50:
# p_maputl.c:386: }
	.loc 1 386 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	P_UnsetThingPosition, .-P_UnsetThingPosition
	.globl	P_SetThingPosition
	.type	P_SetThingPosition, @function
P_SetThingPosition:
.LFB14:
	.loc 1 397 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# thing, thing
# p_maputl.c:406:     ss = R_PointInSubsector (thing->x,thing->y);
	.loc 1 406 10
	movq	-40(%rbp), %rax	# thing, tmp109
	movl	28(%rax), %edx	# thing_33(D)->y, _1
	movq	-40(%rbp), %rax	# thing, tmp110
	movl	24(%rax), %eax	# thing_33(D)->x, _2
	movl	%edx, %esi	# _1,
	movl	%eax, %edi	# _2,
	call	R_PointInSubsector@PLT	#
	movq	%rax, -24(%rbp)	# tmp111, ss
# p_maputl.c:407:     thing->subsector = ss;
	.loc 1 407 22
	movq	-40(%rbp), %rax	# thing, tmp112
	movq	-24(%rbp), %rdx	# ss, tmp113
	movq	%rdx, 88(%rax)	# tmp113, thing_33(D)->subsector
# p_maputl.c:409:     if ( ! (thing->flags & MF_NOSECTOR) )
	.loc 1 409 18
	movq	-40(%rbp), %rax	# thing, tmp114
	movl	160(%rax), %eax	# thing_33(D)->flags, _3
# p_maputl.c:409:     if ( ! (thing->flags & MF_NOSECTOR) )
	.loc 1 409 26
	andl	$8, %eax	#, _4
# p_maputl.c:409:     if ( ! (thing->flags & MF_NOSECTOR) )
	.loc 1 409 8
	testl	%eax, %eax	# _4
	jne	.L52	#,
# p_maputl.c:412: 	sec = ss->sector;
	.loc 1 412 6
	movq	-24(%rbp), %rax	# ss, tmp115
	movq	(%rax), %rax	# ss_35->sector, tmp116
	movq	%rax, -16(%rbp)	# tmp116, sec
# p_maputl.c:414: 	thing->sprev = NULL;
	.loc 1 414 15
	movq	-40(%rbp), %rax	# thing, tmp117
	movq	$0, 48(%rax)	#, thing_33(D)->sprev
# p_maputl.c:415: 	thing->snext = sec->thinglist;
	.loc 1 415 20
	movq	-16(%rbp), %rax	# sec, tmp118
	movq	96(%rax), %rdx	# sec_37->thinglist, _5
# p_maputl.c:415: 	thing->snext = sec->thinglist;
	.loc 1 415 15
	movq	-40(%rbp), %rax	# thing, tmp119
	movq	%rdx, 40(%rax)	# _5, thing_33(D)->snext
# p_maputl.c:417: 	if (sec->thinglist)
	.loc 1 417 9
	movq	-16(%rbp), %rax	# sec, tmp120
	movq	96(%rax), %rax	# sec_37->thinglist, _6
# p_maputl.c:417: 	if (sec->thinglist)
	.loc 1 417 5
	testq	%rax, %rax	# _6
	je	.L53	#,
# p_maputl.c:418: 	    sec->thinglist->sprev = thing;
	.loc 1 418 9
	movq	-16(%rbp), %rax	# sec, tmp121
	movq	96(%rax), %rax	# sec_37->thinglist, _7
# p_maputl.c:418: 	    sec->thinglist->sprev = thing;
	.loc 1 418 28
	movq	-40(%rbp), %rdx	# thing, tmp122
	movq	%rdx, 48(%rax)	# tmp122, _7->sprev
.L53:
# p_maputl.c:420: 	sec->thinglist = thing;
	.loc 1 420 17
	movq	-16(%rbp), %rax	# sec, tmp123
	movq	-40(%rbp), %rdx	# thing, tmp124
	movq	%rdx, 96(%rax)	# tmp124, sec_37->thinglist
.L52:
# p_maputl.c:425:     if ( ! (thing->flags & MF_NOBLOCKMAP) )
	.loc 1 425 18
	movq	-40(%rbp), %rax	# thing, tmp125
	movl	160(%rax), %eax	# thing_33(D)->flags, _8
# p_maputl.c:425:     if ( ! (thing->flags & MF_NOBLOCKMAP) )
	.loc 1 425 26
	andl	$16, %eax	#, _9
# p_maputl.c:425:     if ( ! (thing->flags & MF_NOBLOCKMAP) )
	.loc 1 425 8
	testl	%eax, %eax	# _9
	jne	.L57	#,
# p_maputl.c:428: 	blockx = (thing->x - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 428 17
	movq	-40(%rbp), %rax	# thing, tmp126
	movl	24(%rax), %edx	# thing_33(D)->x, _10
# p_maputl.c:428: 	blockx = (thing->x - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 428 21
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.8_11
	subl	%eax, %edx	# bmaporgx.8_11, _12
# p_maputl.c:428: 	blockx = (thing->x - bmaporgx)>>MAPBLOCKSHIFT;
	.loc 1 428 9
	movl	%edx, %eax	# _12, _12
	sarl	$23, %eax	#, _12
	movl	%eax, -32(%rbp)	# tmp127, blockx
# p_maputl.c:429: 	blocky = (thing->y - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 429 17
	movq	-40(%rbp), %rax	# thing, tmp128
	movl	28(%rax), %edx	# thing_33(D)->y, _13
# p_maputl.c:429: 	blocky = (thing->y - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 429 21
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.9_14
	subl	%eax, %edx	# bmaporgy.9_14, _15
# p_maputl.c:429: 	blocky = (thing->y - bmaporgy)>>MAPBLOCKSHIFT;
	.loc 1 429 9
	movl	%edx, %eax	# _15, _15
	sarl	$23, %eax	#, _15
	movl	%eax, -28(%rbp)	# tmp129, blocky
# p_maputl.c:431: 	if (blockx>=0
	.loc 1 431 5
	cmpl	$0, -32(%rbp)	#, blockx
	js	.L55	#,
# p_maputl.c:432: 	    && blockx < bmapwidth
	.loc 1 432 16
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.10_16
# p_maputl.c:432: 	    && blockx < bmapwidth
	.loc 1 432 6
	cmpl	%eax, -32(%rbp)	# bmapwidth.10_16, blockx
	jge	.L55	#,
# p_maputl.c:433: 	    && blocky>=0
	.loc 1 433 6
	cmpl	$0, -28(%rbp)	#, blocky
	js	.L55	#,
# p_maputl.c:434: 	    && blocky < bmapheight)
	.loc 1 434 16
	movl	bmapheight(%rip), %eax	# bmapheight, bmapheight.11_17
# p_maputl.c:434: 	    && blocky < bmapheight)
	.loc 1 434 6
	cmpl	%eax, -28(%rbp)	# bmapheight.11_17, blocky
	jge	.L55	#,
# p_maputl.c:436: 	    link = &blocklinks[blocky*bmapwidth+blockx];
	.loc 1 436 13
	movq	blocklinks(%rip), %rdx	# blocklinks, blocklinks.12_18
# p_maputl.c:436: 	    link = &blocklinks[blocky*bmapwidth+blockx];
	.loc 1 436 31
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.13_19
	imull	-28(%rbp), %eax	# blocky, bmapwidth.13_19
	movl	%eax, %ecx	# bmapwidth.13_19, _20
# p_maputl.c:436: 	    link = &blocklinks[blocky*bmapwidth+blockx];
	.loc 1 436 41
	movl	-32(%rbp), %eax	# blockx, tmp130
	addl	%ecx, %eax	# _20, _21
	cltq
# p_maputl.c:436: 	    link = &blocklinks[blocky*bmapwidth+blockx];
	.loc 1 436 24
	salq	$3, %rax	#, _23
# p_maputl.c:436: 	    link = &blocklinks[blocky*bmapwidth+blockx];
	.loc 1 436 11
	addq	%rdx, %rax	# blocklinks.12_18, tmp131
	movq	%rax, -8(%rbp)	# tmp131, link
# p_maputl.c:437: 	    thing->bprev = NULL;
	.loc 1 437 19
	movq	-40(%rbp), %rax	# thing, tmp132
	movq	$0, 80(%rax)	#, thing_33(D)->bprev
# p_maputl.c:438: 	    thing->bnext = *link;
	.loc 1 438 21
	movq	-8(%rbp), %rax	# link, tmp133
	movq	(%rax), %rdx	# *link_44, _24
# p_maputl.c:438: 	    thing->bnext = *link;
	.loc 1 438 19
	movq	-40(%rbp), %rax	# thing, tmp134
	movq	%rdx, 72(%rax)	# _24, thing_33(D)->bnext
# p_maputl.c:439: 	    if (*link)
	.loc 1 439 10
	movq	-8(%rbp), %rax	# link, tmp135
	movq	(%rax), %rax	# *link_44, _25
# p_maputl.c:439: 	    if (*link)
	.loc 1 439 9
	testq	%rax, %rax	# _25
	je	.L56	#,
# p_maputl.c:440: 		(*link)->bprev = thing;
	.loc 1 440 4
	movq	-8(%rbp), %rax	# link, tmp136
	movq	(%rax), %rax	# *link_44, _26
# p_maputl.c:440: 		(*link)->bprev = thing;
	.loc 1 440 18
	movq	-40(%rbp), %rdx	# thing, tmp137
	movq	%rdx, 80(%rax)	# tmp137, _26->bprev
.L56:
# p_maputl.c:442: 	    *link = thing;
	.loc 1 442 12
	movq	-8(%rbp), %rax	# link, tmp138
	movq	-40(%rbp), %rdx	# thing, tmp139
	movq	%rdx, (%rax)	# tmp139, *link_44
# p_maputl.c:450: }
	.loc 1 450 1
	jmp	.L57	#
.L55:
# p_maputl.c:447: 	    thing->bnext = thing->bprev = NULL;
	.loc 1 447 34
	movq	-40(%rbp), %rax	# thing, tmp140
	movq	$0, 80(%rax)	#, thing_33(D)->bprev
# p_maputl.c:447: 	    thing->bnext = thing->bprev = NULL;
	.loc 1 447 26
	movq	-40(%rbp), %rax	# thing, tmp141
	movq	80(%rax), %rdx	# thing_33(D)->bprev, _27
# p_maputl.c:447: 	    thing->bnext = thing->bprev = NULL;
	.loc 1 447 19
	movq	-40(%rbp), %rax	# thing, tmp142
	movq	%rdx, 72(%rax)	# _27, thing_33(D)->bnext
.L57:
# p_maputl.c:450: }
	.loc 1 450 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	P_SetThingPosition, .-P_SetThingPosition
	.globl	P_BlockLinesIterator
	.type	P_BlockLinesIterator, @function
P_BlockLinesIterator:
.LFB15:
	.loc 1 476 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# x, x
	movl	%esi, -40(%rbp)	# y, y
	movq	%rdx, -48(%rbp)	# func, func
# p_maputl.c:481:     if (x<0
	.loc 1 481 8
	cmpl	$0, -36(%rbp)	#, x
	js	.L59	#,
# p_maputl.c:482: 	|| y<0
	.loc 1 482 2
	cmpl	$0, -40(%rbp)	#, y
	js	.L59	#,
# p_maputl.c:483: 	|| x>=bmapwidth
	.loc 1 483 6
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.14_1
# p_maputl.c:483: 	|| x>=bmapwidth
	.loc 1 483 2
	cmpl	%eax, -36(%rbp)	# bmapwidth.14_1, x
	jge	.L59	#,
# p_maputl.c:484: 	|| y>=bmapheight)
	.loc 1 484 6
	movl	bmapheight(%rip), %eax	# bmapheight, bmapheight.15_2
# p_maputl.c:484: 	|| y>=bmapheight)
	.loc 1 484 2
	cmpl	%eax, -40(%rbp)	# bmapheight.15_2, y
	jl	.L60	#,
.L59:
# p_maputl.c:486: 	return true;
	.loc 1 486 9
	movl	$1, %eax	#, _23
	jmp	.L61	#
.L60:
# p_maputl.c:489:     offset = y*bmapwidth+x;
	.loc 1 489 15
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.16_3
	imull	-40(%rbp), %eax	# y, bmapwidth.16_3
	movl	%eax, %edx	# bmapwidth.16_3, _4
# p_maputl.c:489:     offset = y*bmapwidth+x;
	.loc 1 489 12
	movl	-36(%rbp), %eax	# x, tmp108
	addl	%edx, %eax	# _4, tmp107
	movl	%eax, -20(%rbp)	# tmp107, offset
# p_maputl.c:491:     offset = *(blockmap+offset);
	.loc 1 491 24
	movq	blockmap(%rip), %rax	# blockmap, blockmap.17_5
	movl	-20(%rbp), %edx	# offset, tmp109
	movslq	%edx, %rdx	# tmp109, _6
	addq	%rdx, %rdx	# _7
	addq	%rdx, %rax	# _7, _8
# p_maputl.c:491:     offset = *(blockmap+offset);
	.loc 1 491 14
	movzwl	(%rax), %eax	# *_8, _9
# p_maputl.c:491:     offset = *(blockmap+offset);
	.loc 1 491 12
	cwtl
	movl	%eax, -20(%rbp)	# tmp110, offset
# p_maputl.c:493:     for ( list = blockmaplump+offset ; *list != -1 ; list++)
	.loc 1 493 30
	movq	blockmaplump(%rip), %rax	# blockmaplump, blockmaplump.18_10
	movl	-20(%rbp), %edx	# offset, tmp111
	movslq	%edx, %rdx	# tmp111, _11
	addq	%rdx, %rdx	# _12
# p_maputl.c:493:     for ( list = blockmaplump+offset ; *list != -1 ; list++)
	.loc 1 493 16
	addq	%rdx, %rax	# _12, tmp112
	movq	%rax, -16(%rbp)	# tmp112, list
# p_maputl.c:493:     for ( list = blockmaplump+offset ; *list != -1 ; list++)
	.loc 1 493 5
	jmp	.L62	#
.L65:
# p_maputl.c:495: 	ld = &lines[*list];
	.loc 1 495 7
	movq	lines(%rip), %rcx	# lines, lines.19_13
# p_maputl.c:495: 	ld = &lines[*list];
	.loc 1 495 14
	movq	-16(%rbp), %rax	# list, tmp113
	movzwl	(%rax), %eax	# *list_22, _14
	movswq	%ax, %rdx	# _14, _15
# p_maputl.c:495: 	ld = &lines[*list];
	.loc 1 495 13
	movq	%rdx, %rax	# _15, tmp114
	salq	$2, %rax	#, tmp114
	addq	%rdx, %rax	# _15, tmp114
	addq	%rax, %rax	# tmp114
	addq	%rdx, %rax	# _15, tmp114
	salq	$3, %rax	#, tmp115
# p_maputl.c:495: 	ld = &lines[*list];
	.loc 1 495 5
	addq	%rcx, %rax	# lines.19_13, tmp116
	movq	%rax, -8(%rbp)	# tmp116, ld
# p_maputl.c:497: 	if (ld->validcount == validcount)
	.loc 1 497 8
	movq	-8(%rbp), %rax	# ld, tmp117
	movl	72(%rax), %edx	# ld_34->validcount, _17
# p_maputl.c:497: 	if (ld->validcount == validcount)
	.loc 1 497 21
	movl	validcount(%rip), %eax	# validcount, validcount.20_18
# p_maputl.c:497: 	if (ld->validcount == validcount)
	.loc 1 497 5
	cmpl	%eax, %edx	# validcount.20_18, _17
	je	.L66	#,
# p_maputl.c:500: 	ld->validcount = validcount;
	.loc 1 500 17
	movl	validcount(%rip), %edx	# validcount, validcount.21_19
	movq	-8(%rbp), %rax	# ld, tmp118
	movl	%edx, 72(%rax)	# validcount.21_19, ld_34->validcount
# p_maputl.c:502: 	if ( !func(ld) )
	.loc 1 502 8
	movq	-8(%rbp), %rax	# ld, tmp119
	movq	-48(%rbp), %rdx	# func, tmp120
	movq	%rax, %rdi	# tmp119,
	call	*%rdx	# tmp120
.LVL0:
# p_maputl.c:502: 	if ( !func(ld) )
	.loc 1 502 5 discriminator 1
	testl	%eax, %eax	# _20
	jne	.L64	#,
# p_maputl.c:503: 	    return false;
	.loc 1 503 13
	movl	$0, %eax	#, _23
	jmp	.L61	#
.L66:
# p_maputl.c:498: 	    continue; 	// line has already been checked
	.loc 1 498 6
	nop	
.L64:
# p_maputl.c:493:     for ( list = blockmaplump+offset ; *list != -1 ; list++)
	.loc 1 493 58 discriminator 2
	addq	$2, -16(%rbp)	#, list
.L62:
# p_maputl.c:493:     for ( list = blockmaplump+offset ; *list != -1 ; list++)
	.loc 1 493 40 discriminator 1
	movq	-16(%rbp), %rax	# list, tmp121
	movzwl	(%rax), %eax	# *list_22, _21
# p_maputl.c:493:     for ( list = blockmaplump+offset ; *list != -1 ; list++)
	.loc 1 493 46 discriminator 1
	cmpw	$-1, %ax	#, _21
	jne	.L65	#,
# p_maputl.c:505:     return true;	// everything was checked
	.loc 1 505 12
	movl	$1, %eax	#, _23
.L61:
# p_maputl.c:506: }
	.loc 1 506 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	P_BlockLinesIterator, .-P_BlockLinesIterator
	.globl	P_BlockThingsIterator
	.type	P_BlockThingsIterator, @function
P_BlockThingsIterator:
.LFB16:
	.loc 1 517 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# y, y
	movq	%rdx, -32(%rbp)	# func, func
# p_maputl.c:520:     if ( x<0
	.loc 1 520 8
	cmpl	$0, -20(%rbp)	#, x
	js	.L68	#,
# p_maputl.c:521: 	 || y<0
	.loc 1 521 3
	cmpl	$0, -24(%rbp)	#, y
	js	.L68	#,
# p_maputl.c:522: 	 || x>=bmapwidth
	.loc 1 522 7
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.22_1
# p_maputl.c:522: 	 || x>=bmapwidth
	.loc 1 522 3
	cmpl	%eax, -20(%rbp)	# bmapwidth.22_1, x
	jge	.L68	#,
# p_maputl.c:523: 	 || y>=bmapheight)
	.loc 1 523 7
	movl	bmapheight(%rip), %eax	# bmapheight, bmapheight.23_2
# p_maputl.c:523: 	 || y>=bmapheight)
	.loc 1 523 3
	cmpl	%eax, -24(%rbp)	# bmapheight.23_2, y
	jl	.L69	#,
.L68:
# p_maputl.c:525: 	return true;
	.loc 1 525 9
	movl	$1, %eax	#, _12
	jmp	.L70	#
.L69:
# p_maputl.c:529:     for (mobj = blocklinks[y*bmapwidth+x] ;
	.loc 1 529 27
	movq	blocklinks(%rip), %rdx	# blocklinks, blocklinks.24_3
# p_maputl.c:529:     for (mobj = blocklinks[y*bmapwidth+x] ;
	.loc 1 529 29
	movl	bmapwidth(%rip), %eax	# bmapwidth, bmapwidth.25_4
	imull	-24(%rbp), %eax	# y, bmapwidth.25_4
	movl	%eax, %ecx	# bmapwidth.25_4, _5
# p_maputl.c:529:     for (mobj = blocklinks[y*bmapwidth+x] ;
	.loc 1 529 39
	movl	-20(%rbp), %eax	# x, tmp94
	addl	%ecx, %eax	# _5, _6
	cltq
# p_maputl.c:529:     for (mobj = blocklinks[y*bmapwidth+x] ;
	.loc 1 529 27
	salq	$3, %rax	#, _8
	addq	%rdx, %rax	# blocklinks.24_3, _9
# p_maputl.c:529:     for (mobj = blocklinks[y*bmapwidth+x] ;
	.loc 1 529 15
	movq	(%rax), %rax	# *_9, tmp95
	movq	%rax, -8(%rbp)	# tmp95, mobj
# p_maputl.c:529:     for (mobj = blocklinks[y*bmapwidth+x] ;
	.loc 1 529 5
	jmp	.L71	#
.L73:
# p_maputl.c:533: 	if (!func( mobj ) )
	.loc 1 533 7
	movq	-8(%rbp), %rax	# mobj, tmp96
	movq	-32(%rbp), %rdx	# func, tmp97
	movq	%rax, %rdi	# tmp96,
	call	*%rdx	# tmp97
.LVL1:
# p_maputl.c:533: 	if (!func( mobj ) )
	.loc 1 533 5 discriminator 1
	testl	%eax, %eax	# _10
	jne	.L72	#,
# p_maputl.c:534: 	    return false;
	.loc 1 534 13
	movl	$0, %eax	#, _12
	jmp	.L70	#
.L72:
# p_maputl.c:531: 	 mobj = mobj->bnext)
	.loc 1 531 8
	movq	-8(%rbp), %rax	# mobj, tmp98
	movq	72(%rax), %rax	# mobj_11->bnext, tmp99
	movq	%rax, -8(%rbp)	# tmp99, mobj
.L71:
# p_maputl.c:530: 	 mobj ;
	.loc 1 530 3
	cmpq	$0, -8(%rbp)	#, mobj
	jne	.L73	#,
# p_maputl.c:536:     return true;
	.loc 1 536 12
	movl	$1, %eax	#, _12
.L70:
# p_maputl.c:537: }
	.loc 1 537 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	P_BlockThingsIterator, .-P_BlockThingsIterator
	.globl	intercepts
	.bss
	.align 32
	.type	intercepts, @object
	.size	intercepts, 2048
intercepts:
	.zero	2048
	.globl	intercept_p
	.align 8
	.type	intercept_p, @object
	.size	intercept_p, 8
intercept_p:
	.zero	8
	.globl	trace
	.align 16
	.type	trace, @object
	.size	trace, 16
trace:
	.zero	16
	.globl	earlyout
	.align 4
	.type	earlyout, @object
	.size	earlyout, 4
earlyout:
	.zero	4
	.globl	ptflags
	.align 4
	.type	ptflags, @object
	.size	ptflags, 4
ptflags:
	.zero	4
	.text
	.globl	PIT_AddLineIntercepts
	.type	PIT_AddLineIntercepts, @function
PIT_AddLineIntercepts:
.LFB17:
	.loc 1 563 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# ld, ld
# p_maputl.c:563: {
	.loc 1 563 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	movq	%rax, -8(%rbp)	# tmp133, D.7869
	xorl	%eax, %eax	# tmp133
# p_maputl.c:570:     if ( trace.dx > FRACUNIT*16
	.loc 1 570 15
	movl	8+trace(%rip), %eax	# trace.dx, _1
# p_maputl.c:570:     if ( trace.dx > FRACUNIT*16
	.loc 1 570 8
	cmpl	$1048576, %eax	#, _1
	jg	.L75	#,
# p_maputl.c:571: 	 || trace.dy > FRACUNIT*16
	.loc 1 571 11
	movl	12+trace(%rip), %eax	# trace.dy, _2
# p_maputl.c:571: 	 || trace.dy > FRACUNIT*16
	.loc 1 571 3
	cmpl	$1048576, %eax	#, _2
	jg	.L75	#,
# p_maputl.c:572: 	 || trace.dx < -FRACUNIT*16
	.loc 1 572 11
	movl	8+trace(%rip), %eax	# trace.dx, _3
# p_maputl.c:572: 	 || trace.dx < -FRACUNIT*16
	.loc 1 572 3
	cmpl	$-1048576, %eax	#, _3
	jl	.L75	#,
# p_maputl.c:573: 	 || trace.dy < -FRACUNIT*16)
	.loc 1 573 11
	movl	12+trace(%rip), %eax	# trace.dy, _4
# p_maputl.c:573: 	 || trace.dy < -FRACUNIT*16)
	.loc 1 573 3
	cmpl	$-1048576, %eax	#, _4
	jge	.L76	#,
.L75:
# p_maputl.c:575: 	s1 = P_PointOnDivlineSide (ld->v1->x, ld->v1->y, &trace);
	.loc 1 575 42
	movq	-56(%rbp), %rax	# ld, tmp111
	movq	(%rax), %rax	# ld_34(D)->v1, _5
# p_maputl.c:575: 	s1 = P_PointOnDivlineSide (ld->v1->x, ld->v1->y, &trace);
	.loc 1 575 7
	movl	4(%rax), %ecx	# _5->y, _6
# p_maputl.c:575: 	s1 = P_PointOnDivlineSide (ld->v1->x, ld->v1->y, &trace);
	.loc 1 575 31
	movq	-56(%rbp), %rax	# ld, tmp112
	movq	(%rax), %rax	# ld_34(D)->v1, _7
# p_maputl.c:575: 	s1 = P_PointOnDivlineSide (ld->v1->x, ld->v1->y, &trace);
	.loc 1 575 7
	movl	(%rax), %eax	# _7->x, _8
	leaq	trace(%rip), %rdx	#, tmp113
	movl	%ecx, %esi	# _6,
	movl	%eax, %edi	# _8,
	call	P_PointOnDivlineSide	#
	movl	%eax, -44(%rbp)	# tmp114, s1
# p_maputl.c:576: 	s2 = P_PointOnDivlineSide (ld->v2->x, ld->v2->y, &trace);
	.loc 1 576 42
	movq	-56(%rbp), %rax	# ld, tmp115
	movq	8(%rax), %rax	# ld_34(D)->v2, _9
# p_maputl.c:576: 	s2 = P_PointOnDivlineSide (ld->v2->x, ld->v2->y, &trace);
	.loc 1 576 7
	movl	4(%rax), %ecx	# _9->y, _10
# p_maputl.c:576: 	s2 = P_PointOnDivlineSide (ld->v2->x, ld->v2->y, &trace);
	.loc 1 576 31
	movq	-56(%rbp), %rax	# ld, tmp116
	movq	8(%rax), %rax	# ld_34(D)->v2, _11
# p_maputl.c:576: 	s2 = P_PointOnDivlineSide (ld->v2->x, ld->v2->y, &trace);
	.loc 1 576 7
	movl	(%rax), %eax	# _11->x, _12
	leaq	trace(%rip), %rdx	#, tmp117
	movl	%ecx, %esi	# _10,
	movl	%eax, %edi	# _12,
	call	P_PointOnDivlineSide	#
	movl	%eax, -40(%rbp)	# tmp118, s2
# p_maputl.c:576: 	s2 = P_PointOnDivlineSide (ld->v2->x, ld->v2->y, &trace);
	.loc 1 576 5
	jmp	.L77	#
.L76:
# p_maputl.c:580: 	s1 = P_PointOnLineSide (trace.x, trace.y, ld);
	.loc 1 580 7
	movl	4+trace(%rip), %ecx	# trace.y, _13
	movl	trace(%rip), %eax	# trace.x, _14
	movq	-56(%rbp), %rdx	# ld, tmp119
	movl	%ecx, %esi	# _13,
	movl	%eax, %edi	# _14,
	call	P_PointOnLineSide	#
	movl	%eax, -44(%rbp)	# tmp120, s1
# p_maputl.c:581: 	s2 = P_PointOnLineSide (trace.x+trace.dx, trace.y+trace.dy, ld);
	.loc 1 581 49
	movl	4+trace(%rip), %edx	# trace.y, _15
# p_maputl.c:581: 	s2 = P_PointOnLineSide (trace.x+trace.dx, trace.y+trace.dy, ld);
	.loc 1 581 57
	movl	12+trace(%rip), %eax	# trace.dy, _16
# p_maputl.c:581: 	s2 = P_PointOnLineSide (trace.x+trace.dx, trace.y+trace.dy, ld);
	.loc 1 581 7
	leal	(%rdx,%rax), %esi	#, _17
# p_maputl.c:581: 	s2 = P_PointOnLineSide (trace.x+trace.dx, trace.y+trace.dy, ld);
	.loc 1 581 31
	movl	trace(%rip), %edx	# trace.x, _18
# p_maputl.c:581: 	s2 = P_PointOnLineSide (trace.x+trace.dx, trace.y+trace.dy, ld);
	.loc 1 581 39
	movl	8+trace(%rip), %eax	# trace.dx, _19
# p_maputl.c:581: 	s2 = P_PointOnLineSide (trace.x+trace.dx, trace.y+trace.dy, ld);
	.loc 1 581 7
	leal	(%rdx,%rax), %ecx	#, _20
	movq	-56(%rbp), %rax	# ld, tmp121
	movq	%rax, %rdx	# tmp121,
	movl	%ecx, %edi	# _20,
	call	P_PointOnLineSide	#
	movl	%eax, -40(%rbp)	# tmp122, s2
.L77:
# p_maputl.c:584:     if (s1 == s2)
	.loc 1 584 8
	movl	-44(%rbp), %eax	# s1, tmp123
	cmpl	-40(%rbp), %eax	# s2, tmp123
	jne	.L78	#,
# p_maputl.c:585: 	return true;	// line isn't crossed
	.loc 1 585 9
	movl	$1, %eax	#, _30
	jmp	.L82	#
.L78:
# p_maputl.c:588:     P_MakeDivline (ld, &dl);
	.loc 1 588 5
	leaq	-32(%rbp), %rdx	#, tmp124
	movq	-56(%rbp), %rax	# ld, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	P_MakeDivline	#
# p_maputl.c:589:     frac = P_InterceptVector (&trace, &dl);
	.loc 1 589 12
	leaq	-32(%rbp), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	trace(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	P_InterceptVector	#
	movl	%eax, -36(%rbp)	# tmp128, frac
# p_maputl.c:591:     if (frac < 0)
	.loc 1 591 8
	cmpl	$0, -36(%rbp)	#, frac
	jns	.L80	#,
# p_maputl.c:592: 	return true;	// behind source
	.loc 1 592 9
	movl	$1, %eax	#, _30
	jmp	.L82	#
.L80:
# p_maputl.c:595:     if (earlyout
	.loc 1 595 9
	movl	earlyout(%rip), %eax	# earlyout, earlyout.26_21
# p_maputl.c:595:     if (earlyout
	.loc 1 595 8
	testl	%eax, %eax	# earlyout.26_21
	je	.L81	#,
# p_maputl.c:596: 	&& frac < FRACUNIT
	.loc 1 596 2
	cmpl	$65535, -36(%rbp)	#, frac
	jg	.L81	#,
# p_maputl.c:597: 	&& !ld->backsector)
	.loc 1 597 8
	movq	-56(%rbp), %rax	# ld, tmp129
	movq	64(%rax), %rax	# ld_34(D)->backsector, _22
# p_maputl.c:597: 	&& !ld->backsector)
	.loc 1 597 2
	testq	%rax, %rax	# _22
	jne	.L81	#,
# p_maputl.c:599: 	return false;	// stop checking
	.loc 1 599 9
	movl	$0, %eax	#, _30
	jmp	.L82	#
.L81:
# p_maputl.c:603:     intercept_p->frac = frac;
	.loc 1 603 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.27_23
# p_maputl.c:603:     intercept_p->frac = frac;
	.loc 1 603 23
	movl	-36(%rbp), %edx	# frac, tmp130
	movl	%edx, (%rax)	# tmp130, intercept_p.27_23->frac
# p_maputl.c:604:     intercept_p->isaline = true;
	.loc 1 604 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.28_24
# p_maputl.c:604:     intercept_p->isaline = true;
	.loc 1 604 26
	movl	$1, 4(%rax)	#, intercept_p.28_24->isaline
# p_maputl.c:605:     intercept_p->d.line = ld;
	.loc 1 605 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.29_25
# p_maputl.c:605:     intercept_p->d.line = ld;
	.loc 1 605 25
	movq	-56(%rbp), %rdx	# ld, tmp131
	movq	%rdx, 8(%rax)	# tmp131, intercept_p.29_25->d.line
# p_maputl.c:606:     intercept_p++;
	.loc 1 606 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.30_26
	addq	$16, %rax	#, _27
	movq	%rax, intercept_p(%rip)	# _27, intercept_p
# p_maputl.c:608:     return true;	// continue
	.loc 1 608 12
	movl	$1, %eax	#, _30
.L82:
# p_maputl.c:609: }
	.loc 1 609 1
	movq	-8(%rbp), %rdx	# D.7869, tmp134
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp134
	je	.L83	#,
	call	__stack_chk_fail@PLT	#
.L83:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	PIT_AddLineIntercepts, .-PIT_AddLineIntercepts
	.globl	PIT_AddThingIntercepts
	.type	PIT_AddThingIntercepts, @function
PIT_AddThingIntercepts:
.LFB18:
	.loc 1 617 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# thing, thing
# p_maputl.c:617: {
	.loc 1 617 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	movq	%rax, -8(%rbp)	# tmp155, D.7871
	xorl	%eax, %eax	# tmp155
# p_maputl.c:632:     tracepositive = (trace.dx ^ trace.dy)>0;
	.loc 1 632 27
	movl	8+trace(%rip), %edx	# trace.dx, _1
# p_maputl.c:632:     tracepositive = (trace.dx ^ trace.dy)>0;
	.loc 1 632 38
	movl	12+trace(%rip), %eax	# trace.dy, _2
# p_maputl.c:632:     tracepositive = (trace.dx ^ trace.dy)>0;
	.loc 1 632 31
	xorl	%edx, %eax	# _1, _3
# p_maputl.c:632:     tracepositive = (trace.dx ^ trace.dy)>0;
	.loc 1 632 42
	testl	%eax, %eax	# _3
	setg	%al	#, _4
# p_maputl.c:632:     tracepositive = (trace.dx ^ trace.dy)>0;
	.loc 1 632 19
	movzbl	%al, %eax	# _4, tmp111
	movl	%eax, -48(%rbp)	# tmp111, tracepositive
# p_maputl.c:635:     if (tracepositive)
	.loc 1 635 8
	cmpl	$0, -48(%rbp)	#, tracepositive
	je	.L85	#,
# p_maputl.c:637: 	x1 = thing->x - thing->radius;
	.loc 1 637 12
	movq	-72(%rbp), %rax	# thing, tmp112
	movl	24(%rax), %edx	# thing_36(D)->x, _5
# p_maputl.c:637: 	x1 = thing->x - thing->radius;
	.loc 1 637 23
	movq	-72(%rbp), %rax	# thing, tmp113
	movl	104(%rax), %eax	# thing_36(D)->radius, _6
# p_maputl.c:637: 	x1 = thing->x - thing->radius;
	.loc 1 637 5
	subl	%eax, %edx	# _6, tmp114
	movl	%edx, -64(%rbp)	# tmp114, x1
# p_maputl.c:638: 	y1 = thing->y + thing->radius;
	.loc 1 638 12
	movq	-72(%rbp), %rax	# thing, tmp115
	movl	28(%rax), %edx	# thing_36(D)->y, _7
# p_maputl.c:638: 	y1 = thing->y + thing->radius;
	.loc 1 638 23
	movq	-72(%rbp), %rax	# thing, tmp116
	movl	104(%rax), %eax	# thing_36(D)->radius, _8
# p_maputl.c:638: 	y1 = thing->y + thing->radius;
	.loc 1 638 5
	addl	%edx, %eax	# _7, tmp117
	movl	%eax, -60(%rbp)	# tmp117, y1
# p_maputl.c:640: 	x2 = thing->x + thing->radius;
	.loc 1 640 12
	movq	-72(%rbp), %rax	# thing, tmp118
	movl	24(%rax), %edx	# thing_36(D)->x, _9
# p_maputl.c:640: 	x2 = thing->x + thing->radius;
	.loc 1 640 23
	movq	-72(%rbp), %rax	# thing, tmp119
	movl	104(%rax), %eax	# thing_36(D)->radius, _10
# p_maputl.c:640: 	x2 = thing->x + thing->radius;
	.loc 1 640 5
	addl	%edx, %eax	# _9, tmp120
	movl	%eax, -56(%rbp)	# tmp120, x2
# p_maputl.c:641: 	y2 = thing->y - thing->radius;			
	.loc 1 641 12
	movq	-72(%rbp), %rax	# thing, tmp121
	movl	28(%rax), %edx	# thing_36(D)->y, _11
# p_maputl.c:641: 	y2 = thing->y - thing->radius;			
	.loc 1 641 23
	movq	-72(%rbp), %rax	# thing, tmp122
	movl	104(%rax), %eax	# thing_36(D)->radius, _12
# p_maputl.c:641: 	y2 = thing->y - thing->radius;			
	.loc 1 641 5
	subl	%eax, %edx	# _12, tmp123
	movl	%edx, -52(%rbp)	# tmp123, y2
	jmp	.L86	#
.L85:
# p_maputl.c:645: 	x1 = thing->x - thing->radius;
	.loc 1 645 12
	movq	-72(%rbp), %rax	# thing, tmp124
	movl	24(%rax), %edx	# thing_36(D)->x, _13
# p_maputl.c:645: 	x1 = thing->x - thing->radius;
	.loc 1 645 23
	movq	-72(%rbp), %rax	# thing, tmp125
	movl	104(%rax), %eax	# thing_36(D)->radius, _14
# p_maputl.c:645: 	x1 = thing->x - thing->radius;
	.loc 1 645 5
	subl	%eax, %edx	# _14, tmp126
	movl	%edx, -64(%rbp)	# tmp126, x1
# p_maputl.c:646: 	y1 = thing->y - thing->radius;
	.loc 1 646 12
	movq	-72(%rbp), %rax	# thing, tmp127
	movl	28(%rax), %edx	# thing_36(D)->y, _15
# p_maputl.c:646: 	y1 = thing->y - thing->radius;
	.loc 1 646 23
	movq	-72(%rbp), %rax	# thing, tmp128
	movl	104(%rax), %eax	# thing_36(D)->radius, _16
# p_maputl.c:646: 	y1 = thing->y - thing->radius;
	.loc 1 646 5
	subl	%eax, %edx	# _16, tmp129
	movl	%edx, -60(%rbp)	# tmp129, y1
# p_maputl.c:648: 	x2 = thing->x + thing->radius;
	.loc 1 648 12
	movq	-72(%rbp), %rax	# thing, tmp130
	movl	24(%rax), %edx	# thing_36(D)->x, _17
# p_maputl.c:648: 	x2 = thing->x + thing->radius;
	.loc 1 648 23
	movq	-72(%rbp), %rax	# thing, tmp131
	movl	104(%rax), %eax	# thing_36(D)->radius, _18
# p_maputl.c:648: 	x2 = thing->x + thing->radius;
	.loc 1 648 5
	addl	%edx, %eax	# _17, tmp132
	movl	%eax, -56(%rbp)	# tmp132, x2
# p_maputl.c:649: 	y2 = thing->y + thing->radius;			
	.loc 1 649 12
	movq	-72(%rbp), %rax	# thing, tmp133
	movl	28(%rax), %edx	# thing_36(D)->y, _19
# p_maputl.c:649: 	y2 = thing->y + thing->radius;			
	.loc 1 649 23
	movq	-72(%rbp), %rax	# thing, tmp134
	movl	104(%rax), %eax	# thing_36(D)->radius, _20
# p_maputl.c:649: 	y2 = thing->y + thing->radius;			
	.loc 1 649 5
	addl	%edx, %eax	# _19, tmp135
	movl	%eax, -52(%rbp)	# tmp135, y2
.L86:
# p_maputl.c:652:     s1 = P_PointOnDivlineSide (x1, y1, &trace);
	.loc 1 652 10
	movl	-60(%rbp), %ecx	# y1, tmp136
	movl	-64(%rbp), %eax	# x1, tmp137
	leaq	trace(%rip), %rdx	#, tmp138
	movl	%ecx, %esi	# tmp136,
	movl	%eax, %edi	# tmp137,
	call	P_PointOnDivlineSide	#
	movl	%eax, -44(%rbp)	# tmp139, s1
# p_maputl.c:653:     s2 = P_PointOnDivlineSide (x2, y2, &trace);
	.loc 1 653 10
	movl	-52(%rbp), %ecx	# y2, tmp140
	movl	-56(%rbp), %eax	# x2, tmp141
	leaq	trace(%rip), %rdx	#, tmp142
	movl	%ecx, %esi	# tmp140,
	movl	%eax, %edi	# tmp141,
	call	P_PointOnDivlineSide	#
	movl	%eax, -40(%rbp)	# tmp143, s2
# p_maputl.c:655:     if (s1 == s2)
	.loc 1 655 8
	movl	-44(%rbp), %eax	# s1, tmp144
	cmpl	-40(%rbp), %eax	# s2, tmp144
	jne	.L87	#,
# p_maputl.c:656: 	return true;		// line isn't crossed
	.loc 1 656 9
	movl	$1, %eax	#, _32
	jmp	.L90	#
.L87:
# p_maputl.c:658:     dl.x = x1;
	.loc 1 658 10
	movl	-64(%rbp), %eax	# x1, tmp145
	movl	%eax, -32(%rbp)	# tmp145, dl.x
# p_maputl.c:659:     dl.y = y1;
	.loc 1 659 10
	movl	-60(%rbp), %eax	# y1, tmp146
	movl	%eax, -28(%rbp)	# tmp146, dl.y
# p_maputl.c:660:     dl.dx = x2-x1;
	.loc 1 660 15
	movl	-56(%rbp), %eax	# x2, tmp147
	subl	-64(%rbp), %eax	# x1, _21
# p_maputl.c:660:     dl.dx = x2-x1;
	.loc 1 660 11
	movl	%eax, -24(%rbp)	# _21, dl.dx
# p_maputl.c:661:     dl.dy = y2-y1;
	.loc 1 661 15
	movl	-52(%rbp), %eax	# y2, tmp148
	subl	-60(%rbp), %eax	# y1, _22
# p_maputl.c:661:     dl.dy = y2-y1;
	.loc 1 661 11
	movl	%eax, -20(%rbp)	# _22, dl.dy
# p_maputl.c:663:     frac = P_InterceptVector (&trace, &dl);
	.loc 1 663 12
	leaq	-32(%rbp), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	trace(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	P_InterceptVector	#
	movl	%eax, -36(%rbp)	# tmp151, frac
# p_maputl.c:665:     if (frac < 0)
	.loc 1 665 8
	cmpl	$0, -36(%rbp)	#, frac
	jns	.L89	#,
# p_maputl.c:666: 	return true;		// behind source
	.loc 1 666 9
	movl	$1, %eax	#, _32
	jmp	.L90	#
.L89:
# p_maputl.c:668:     intercept_p->frac = frac;
	.loc 1 668 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.31_23
# p_maputl.c:668:     intercept_p->frac = frac;
	.loc 1 668 23
	movl	-36(%rbp), %edx	# frac, tmp152
	movl	%edx, (%rax)	# tmp152, intercept_p.31_23->frac
# p_maputl.c:669:     intercept_p->isaline = false;
	.loc 1 669 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.32_24
# p_maputl.c:669:     intercept_p->isaline = false;
	.loc 1 669 26
	movl	$0, 4(%rax)	#, intercept_p.32_24->isaline
# p_maputl.c:670:     intercept_p->d.thing = thing;
	.loc 1 670 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.33_25
# p_maputl.c:670:     intercept_p->d.thing = thing;
	.loc 1 670 26
	movq	-72(%rbp), %rdx	# thing, tmp153
	movq	%rdx, 8(%rax)	# tmp153, intercept_p.33_25->d.thing
# p_maputl.c:671:     intercept_p++;
	.loc 1 671 16
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.34_26
	addq	$16, %rax	#, _27
	movq	%rax, intercept_p(%rip)	# _27, intercept_p
# p_maputl.c:673:     return true;		// keep going
	.loc 1 673 12
	movl	$1, %eax	#, _32
.L90:
# p_maputl.c:674: }
	.loc 1 674 1
	movq	-8(%rbp), %rdx	# D.7871, tmp156
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp156
	je	.L91	#,
	call	__stack_chk_fail@PLT	#
.L91:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	PIT_AddThingIntercepts, .-PIT_AddThingIntercepts
	.globl	P_TraverseIntercepts
	.type	P_TraverseIntercepts, @function
P_TraverseIntercepts:
.LFB19:
	.loc 1 686 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# func, func
	movl	%esi, -44(%rbp)	# maxfrac, maxfrac
# p_maputl.c:692:     count = intercept_p - intercepts;
	.loc 1 692 25
	movq	intercept_p(%rip), %rdx	# intercept_p, intercept_p.35_1
	leaq	intercepts(%rip), %rax	#, tmp91
	subq	%rax, %rdx	# tmp91, _2
	movq	%rdx, %rax	# _2, _2
	sarq	$4, %rax	#, _2
# p_maputl.c:692:     count = intercept_p - intercepts;
	.loc 1 692 11
	movl	%eax, -24(%rbp)	# _3, count
# p_maputl.c:694:     in = 0;			// shut up compiler warning
	.loc 1 694 8
	movq	$0, -8(%rbp)	#, in
# p_maputl.c:696:     while (count--)
	.loc 1 696 11
	jmp	.L93	#
.L100:
# p_maputl.c:698: 	dist = MAXINT;
	.loc 1 698 7
	movl	$2147483647, -20(%rbp)	#, dist
# p_maputl.c:699: 	for (scan = intercepts ; scan<intercept_p ; scan++)
	.loc 1 699 12
	leaq	intercepts(%rip), %rax	#, tmp93
	movq	%rax, -16(%rbp)	# tmp93, scan
# p_maputl.c:699: 	for (scan = intercepts ; scan<intercept_p ; scan++)
	.loc 1 699 2
	jmp	.L94	#
.L96:
# p_maputl.c:701: 	    if (scan->frac < dist)
	.loc 1 701 14
	movq	-16(%rbp), %rax	# scan, tmp94
	movl	(%rax), %eax	# scan_11->frac, _4
# p_maputl.c:701: 	    if (scan->frac < dist)
	.loc 1 701 9
	cmpl	%eax, -20(%rbp)	# _4, dist
	jle	.L95	#,
# p_maputl.c:703: 		dist = scan->frac;
	.loc 1 703 8
	movq	-16(%rbp), %rax	# scan, tmp95
	movl	(%rax), %eax	# scan_11->frac, tmp96
	movl	%eax, -20(%rbp)	# tmp96, dist
# p_maputl.c:704: 		in = scan;
	.loc 1 704 6
	movq	-16(%rbp), %rax	# scan, tmp97
	movq	%rax, -8(%rbp)	# tmp97, in
.L95:
# p_maputl.c:699: 	for (scan = intercepts ; scan<intercept_p ; scan++)
	.loc 1 699 50 discriminator 2
	addq	$16, -16(%rbp)	#, scan
.L94:
# p_maputl.c:699: 	for (scan = intercepts ; scan<intercept_p ; scan++)
	.loc 1 699 31 discriminator 1
	movq	intercept_p(%rip), %rax	# intercept_p, intercept_p.36_5
	cmpq	%rax, -16(%rbp)	# intercept_p.36_5, scan
	jb	.L96	#,
# p_maputl.c:708: 	if (dist > maxfrac)
	.loc 1 708 5
	movl	-20(%rbp), %eax	# dist, tmp98
	cmpl	-44(%rbp), %eax	# maxfrac, tmp98
	jle	.L97	#,
# p_maputl.c:709: 	    return true;	// checked everything in range		
	.loc 1 709 13
	movl	$1, %eax	#, _15
	jmp	.L98	#
.L97:
# p_maputl.c:723:         if ( !func (in) )
	.loc 1 723 15
	movq	-8(%rbp), %rax	# in, tmp99
	movq	-40(%rbp), %rdx	# func, tmp100
	movq	%rax, %rdi	# tmp99,
	call	*%rdx	# tmp100
.LVL2:
# p_maputl.c:723:         if ( !func (in) )
	.loc 1 723 12 discriminator 1
	testl	%eax, %eax	# _6
	jne	.L99	#,
# p_maputl.c:724: 	    return false;	// don't bother going farther
	.loc 1 724 13
	movl	$0, %eax	#, _15
	jmp	.L98	#
.L99:
# p_maputl.c:726: 	in->frac = MAXINT;
	.loc 1 726 11
	movq	-8(%rbp), %rax	# in, tmp101
	movl	$2147483647, (%rax)	#, in_13->frac
.L93:
# p_maputl.c:696:     while (count--)
	.loc 1 696 17
	movl	-24(%rbp), %eax	# count, count.37_7
	leal	-1(%rax), %edx	#, tmp102
	movl	%edx, -24(%rbp)	# tmp102, count
# p_maputl.c:696:     while (count--)
	.loc 1 696 12
	testl	%eax, %eax	# count.37_7
	jne	.L100	#,
# p_maputl.c:729:     return true;		// everything was traversed
	.loc 1 729 12
	movl	$1, %eax	#, _15
.L98:
# p_maputl.c:730: }
	.loc 1 730 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	P_TraverseIntercepts, .-P_TraverseIntercepts
	.globl	P_PathTraverse
	.type	P_PathTraverse, @function
P_PathTraverse:
.LFB20:
	.loc 1 750 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)	# x1, x1
	movl	%esi, -88(%rbp)	# y1, y1
	movl	%edx, -92(%rbp)	# x2, x2
	movl	%ecx, -96(%rbp)	# y2, y2
	movl	%r8d, -100(%rbp)	# flags, flags
	movq	%r9, -112(%rbp)	# trav, trav
# p_maputl.c:772:     earlyout = flags & PT_EARLYOUT;
	.loc 1 772 22
	movl	-100(%rbp), %eax	# flags, tmp128
	andl	$4, %eax	#, _1
# p_maputl.c:772:     earlyout = flags & PT_EARLYOUT;
	.loc 1 772 14
	movl	%eax, earlyout(%rip)	# _2, earlyout
# p_maputl.c:774:     validcount++;
	.loc 1 774 15
	movl	validcount(%rip), %eax	# validcount, validcount.38_3
	addl	$1, %eax	#, _4
	movl	%eax, validcount(%rip)	# _4, validcount
# p_maputl.c:775:     intercept_p = intercepts;
	.loc 1 775 17
	leaq	intercepts(%rip), %rax	#, tmp129
	movq	%rax, intercept_p(%rip)	# tmp129, intercept_p
# p_maputl.c:777:     if ( ((x1-bmaporgx)&(MAPBLOCKSIZE-1)) == 0)
	.loc 1 777 14
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.39_5
	movl	-84(%rbp), %edx	# x1, tmp130
	subl	%eax, %edx	# bmaporgx.39_5, _6
# p_maputl.c:777:     if ( ((x1-bmaporgx)&(MAPBLOCKSIZE-1)) == 0)
	.loc 1 777 24
	movl	%edx, %eax	# _6, _6
	andl	$8388607, %eax	#, _6
# p_maputl.c:777:     if ( ((x1-bmaporgx)&(MAPBLOCKSIZE-1)) == 0)
	.loc 1 777 8
	testl	%eax, %eax	# _7
	jne	.L102	#,
# p_maputl.c:778: 	x1 += FRACUNIT;	// don't side exactly on a line
	.loc 1 778 5
	addl	$65536, -84(%rbp)	#, x1
.L102:
# p_maputl.c:780:     if ( ((y1-bmaporgy)&(MAPBLOCKSIZE-1)) == 0)
	.loc 1 780 14
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.40_8
	movl	-88(%rbp), %edx	# y1, tmp131
	subl	%eax, %edx	# bmaporgy.40_8, _9
# p_maputl.c:780:     if ( ((y1-bmaporgy)&(MAPBLOCKSIZE-1)) == 0)
	.loc 1 780 24
	movl	%edx, %eax	# _9, _9
	andl	$8388607, %eax	#, _9
# p_maputl.c:780:     if ( ((y1-bmaporgy)&(MAPBLOCKSIZE-1)) == 0)
	.loc 1 780 8
	testl	%eax, %eax	# _10
	jne	.L103	#,
# p_maputl.c:781: 	y1 += FRACUNIT;	// don't side exactly on a line
	.loc 1 781 5
	addl	$65536, -88(%rbp)	#, y1
.L103:
# p_maputl.c:783:     trace.x = x1;
	.loc 1 783 13
	movl	-84(%rbp), %eax	# x1, tmp132
	movl	%eax, trace(%rip)	# tmp132, trace.x
# p_maputl.c:784:     trace.y = y1;
	.loc 1 784 13
	movl	-88(%rbp), %eax	# y1, tmp133
	movl	%eax, 4+trace(%rip)	# tmp133, trace.y
# p_maputl.c:785:     trace.dx = x2 - x1;
	.loc 1 785 19
	movl	-92(%rbp), %eax	# x2, tmp134
	subl	-84(%rbp), %eax	# x1, _11
# p_maputl.c:785:     trace.dx = x2 - x1;
	.loc 1 785 14
	movl	%eax, 8+trace(%rip)	# _11, trace.dx
# p_maputl.c:786:     trace.dy = y2 - y1;
	.loc 1 786 19
	movl	-96(%rbp), %eax	# y2, tmp135
	subl	-88(%rbp), %eax	# y1, _12
# p_maputl.c:786:     trace.dy = y2 - y1;
	.loc 1 786 14
	movl	%eax, 12+trace(%rip)	# _12, trace.dy
# p_maputl.c:788:     x1 -= bmaporgx;
	.loc 1 788 8
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.41_13
	subl	%eax, -84(%rbp)	# bmaporgx.41_13, x1
# p_maputl.c:789:     y1 -= bmaporgy;
	.loc 1 789 8
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.42_14
	subl	%eax, -88(%rbp)	# bmaporgy.42_14, y1
# p_maputl.c:790:     xt1 = x1>>MAPBLOCKSHIFT;
	.loc 1 790 9
	movl	-84(%rbp), %eax	# x1, tmp139
	sarl	$23, %eax	#, tmp138
	movl	%eax, -32(%rbp)	# tmp138, xt1
# p_maputl.c:791:     yt1 = y1>>MAPBLOCKSHIFT;
	.loc 1 791 9
	movl	-88(%rbp), %eax	# y1, tmp143
	sarl	$23, %eax	#, tmp142
	movl	%eax, -28(%rbp)	# tmp142, yt1
# p_maputl.c:793:     x2 -= bmaporgx;
	.loc 1 793 8
	movl	bmaporgx(%rip), %eax	# bmaporgx, bmaporgx.43_15
	subl	%eax, -92(%rbp)	# bmaporgx.43_15, x2
# p_maputl.c:794:     y2 -= bmaporgy;
	.loc 1 794 8
	movl	bmaporgy(%rip), %eax	# bmaporgy, bmaporgy.44_16
	subl	%eax, -96(%rbp)	# bmaporgy.44_16, y2
# p_maputl.c:795:     xt2 = x2>>MAPBLOCKSHIFT;
	.loc 1 795 9
	movl	-92(%rbp), %eax	# x2, tmp147
	sarl	$23, %eax	#, tmp146
	movl	%eax, -24(%rbp)	# tmp146, xt2
# p_maputl.c:796:     yt2 = y2>>MAPBLOCKSHIFT;
	.loc 1 796 9
	movl	-96(%rbp), %eax	# y2, tmp151
	sarl	$23, %eax	#, tmp150
	movl	%eax, -20(%rbp)	# tmp150, yt2
# p_maputl.c:798:     if (xt2 > xt1)
	.loc 1 798 8
	movl	-24(%rbp), %eax	# xt2, tmp152
	cmpl	-32(%rbp), %eax	# xt1, tmp152
	jle	.L104	#,
# p_maputl.c:800: 	mapxstep = 1;
	.loc 1 800 11
	movl	$1, -44(%rbp)	#, mapxstep
# p_maputl.c:801: 	partial = FRACUNIT - ((x1>>MAPBTOFRAC)&(FRACUNIT-1));
	.loc 1 801 27
	movl	-84(%rbp), %eax	# x1, tmp153
	sarl	$7, %eax	#, _17
# p_maputl.c:801: 	partial = FRACUNIT - ((x1>>MAPBTOFRAC)&(FRACUNIT-1));
	.loc 1 801 40
	movzwl	%ax, %eax	# _17, _18
# p_maputl.c:801: 	partial = FRACUNIT - ((x1>>MAPBTOFRAC)&(FRACUNIT-1));
	.loc 1 801 10
	movl	$65536, %edx	#, tmp154
	subl	%eax, %edx	# _18, tmp155
	movl	%edx, -64(%rbp)	# tmp155, partial
# p_maputl.c:802: 	ystep = FixedDiv (y2-y1,abs(x2-x1));
	.loc 1 802 32
	movl	-92(%rbp), %eax	# x2, tmp156
	subl	-84(%rbp), %eax	# x1, _19
# p_maputl.c:802: 	ystep = FixedDiv (y2-y1,abs(x2-x1));
	.loc 1 802 10
	movl	%eax, %edx	# _19, tmp209
	negl	%edx	# tmp209
	cmovs	%eax, %edx	# tmp209,, _19, _20
	movl	-96(%rbp), %eax	# y2, tmp157
	subl	-88(%rbp), %eax	# y1, _21
	movl	%edx, %esi	# _20,
	movl	%eax, %edi	# _21,
	call	FixedDiv@PLT	#
	movl	%eax, -68(%rbp)	# tmp158, ystep
	jmp	.L105	#
.L104:
# p_maputl.c:804:     else if (xt2 < xt1)
	.loc 1 804 13
	movl	-24(%rbp), %eax	# xt2, tmp159
	cmpl	-32(%rbp), %eax	# xt1, tmp159
	jge	.L106	#,
# p_maputl.c:806: 	mapxstep = -1;
	.loc 1 806 11
	movl	$-1, -44(%rbp)	#, mapxstep
# p_maputl.c:807: 	partial = (x1>>MAPBTOFRAC)&(FRACUNIT-1);
	.loc 1 807 15
	movl	-84(%rbp), %eax	# x1, tmp160
	sarl	$7, %eax	#, _22
# p_maputl.c:807: 	partial = (x1>>MAPBTOFRAC)&(FRACUNIT-1);
	.loc 1 807 10
	andl	$65535, %eax	#, tmp161
	movl	%eax, -64(%rbp)	# tmp161, partial
# p_maputl.c:808: 	ystep = FixedDiv (y2-y1,abs(x2-x1));
	.loc 1 808 32
	movl	-92(%rbp), %eax	# x2, tmp162
	subl	-84(%rbp), %eax	# x1, _23
# p_maputl.c:808: 	ystep = FixedDiv (y2-y1,abs(x2-x1));
	.loc 1 808 10
	movl	%eax, %edx	# _23, tmp208
	negl	%edx	# tmp208
	cmovs	%eax, %edx	# tmp208,, _23, _24
	movl	-96(%rbp), %eax	# y2, tmp163
	subl	-88(%rbp), %eax	# y1, _25
	movl	%edx, %esi	# _24,
	movl	%eax, %edi	# _25,
	call	FixedDiv@PLT	#
	movl	%eax, -68(%rbp)	# tmp164, ystep
	jmp	.L105	#
.L106:
# p_maputl.c:812: 	mapxstep = 0;
	.loc 1 812 11
	movl	$0, -44(%rbp)	#, mapxstep
# p_maputl.c:813: 	partial = FRACUNIT;
	.loc 1 813 10
	movl	$65536, -64(%rbp)	#, partial
# p_maputl.c:814: 	ystep = 256*FRACUNIT;
	.loc 1 814 8
	movl	$16777216, -68(%rbp)	#, ystep
.L105:
# p_maputl.c:817:     yintercept = (y1>>MAPBTOFRAC) + FixedMul (partial, ystep);
	.loc 1 817 21
	movl	-88(%rbp), %eax	# y1, tmp165
	sarl	$7, %eax	#, tmp165
	movl	%eax, %ebx	# tmp165, _26
# p_maputl.c:817:     yintercept = (y1>>MAPBTOFRAC) + FixedMul (partial, ystep);
	.loc 1 817 37
	movl	-68(%rbp), %edx	# ystep, tmp166
	movl	-64(%rbp), %eax	# partial, tmp167
	movl	%edx, %esi	# tmp166,
	movl	%eax, %edi	# tmp167,
	call	FixedMul@PLT	#
# p_maputl.c:817:     yintercept = (y1>>MAPBTOFRAC) + FixedMul (partial, ystep);
	.loc 1 817 16 discriminator 1
	addl	%ebx, %eax	# _26, tmp168
	movl	%eax, -56(%rbp)	# tmp168, yintercept
# p_maputl.c:820:     if (yt2 > yt1)
	.loc 1 820 8
	movl	-20(%rbp), %eax	# yt2, tmp169
	cmpl	-28(%rbp), %eax	# yt1, tmp169
	jle	.L107	#,
# p_maputl.c:822: 	mapystep = 1;
	.loc 1 822 11
	movl	$1, -40(%rbp)	#, mapystep
# p_maputl.c:823: 	partial = FRACUNIT - ((y1>>MAPBTOFRAC)&(FRACUNIT-1));
	.loc 1 823 27
	movl	-88(%rbp), %eax	# y1, tmp170
	sarl	$7, %eax	#, _28
# p_maputl.c:823: 	partial = FRACUNIT - ((y1>>MAPBTOFRAC)&(FRACUNIT-1));
	.loc 1 823 40
	movzwl	%ax, %eax	# _28, _29
# p_maputl.c:823: 	partial = FRACUNIT - ((y1>>MAPBTOFRAC)&(FRACUNIT-1));
	.loc 1 823 10
	movl	$65536, %edx	#, tmp171
	subl	%eax, %edx	# _29, tmp172
	movl	%edx, -64(%rbp)	# tmp172, partial
# p_maputl.c:824: 	xstep = FixedDiv (x2-x1,abs(y2-y1));
	.loc 1 824 32
	movl	-96(%rbp), %eax	# y2, tmp173
	subl	-88(%rbp), %eax	# y1, _30
# p_maputl.c:824: 	xstep = FixedDiv (x2-x1,abs(y2-y1));
	.loc 1 824 10
	movl	%eax, %edx	# _30, tmp207
	negl	%edx	# tmp207
	cmovs	%eax, %edx	# tmp207,, _30, _31
	movl	-92(%rbp), %eax	# x2, tmp174
	subl	-84(%rbp), %eax	# x1, _32
	movl	%edx, %esi	# _31,
	movl	%eax, %edi	# _32,
	call	FixedDiv@PLT	#
	movl	%eax, -72(%rbp)	# tmp175, xstep
	jmp	.L108	#
.L107:
# p_maputl.c:826:     else if (yt2 < yt1)
	.loc 1 826 13
	movl	-20(%rbp), %eax	# yt2, tmp176
	cmpl	-28(%rbp), %eax	# yt1, tmp176
	jge	.L109	#,
# p_maputl.c:828: 	mapystep = -1;
	.loc 1 828 11
	movl	$-1, -40(%rbp)	#, mapystep
# p_maputl.c:829: 	partial = (y1>>MAPBTOFRAC)&(FRACUNIT-1);
	.loc 1 829 15
	movl	-88(%rbp), %eax	# y1, tmp177
	sarl	$7, %eax	#, _33
# p_maputl.c:829: 	partial = (y1>>MAPBTOFRAC)&(FRACUNIT-1);
	.loc 1 829 10
	andl	$65535, %eax	#, tmp178
	movl	%eax, -64(%rbp)	# tmp178, partial
# p_maputl.c:830: 	xstep = FixedDiv (x2-x1,abs(y2-y1));
	.loc 1 830 32
	movl	-96(%rbp), %eax	# y2, tmp179
	subl	-88(%rbp), %eax	# y1, _34
# p_maputl.c:830: 	xstep = FixedDiv (x2-x1,abs(y2-y1));
	.loc 1 830 10
	movl	%eax, %edx	# _34, tmp206
	negl	%edx	# tmp206
	cmovs	%eax, %edx	# tmp206,, _34, _35
	movl	-92(%rbp), %eax	# x2, tmp180
	subl	-84(%rbp), %eax	# x1, _36
	movl	%edx, %esi	# _35,
	movl	%eax, %edi	# _36,
	call	FixedDiv@PLT	#
	movl	%eax, -72(%rbp)	# tmp181, xstep
	jmp	.L108	#
.L109:
# p_maputl.c:834: 	mapystep = 0;
	.loc 1 834 11
	movl	$0, -40(%rbp)	#, mapystep
# p_maputl.c:835: 	partial = FRACUNIT;
	.loc 1 835 10
	movl	$65536, -64(%rbp)	#, partial
# p_maputl.c:836: 	xstep = 256*FRACUNIT;
	.loc 1 836 8
	movl	$16777216, -72(%rbp)	#, xstep
.L108:
# p_maputl.c:838:     xintercept = (x1>>MAPBTOFRAC) + FixedMul (partial, xstep);
	.loc 1 838 21
	movl	-84(%rbp), %eax	# x1, tmp182
	sarl	$7, %eax	#, tmp182
	movl	%eax, %ebx	# tmp182, _37
# p_maputl.c:838:     xintercept = (x1>>MAPBTOFRAC) + FixedMul (partial, xstep);
	.loc 1 838 37
	movl	-72(%rbp), %edx	# xstep, tmp183
	movl	-64(%rbp), %eax	# partial, tmp184
	movl	%edx, %esi	# tmp183,
	movl	%eax, %edi	# tmp184,
	call	FixedMul@PLT	#
# p_maputl.c:838:     xintercept = (x1>>MAPBTOFRAC) + FixedMul (partial, xstep);
	.loc 1 838 16 discriminator 1
	addl	%ebx, %eax	# _37, tmp185
	movl	%eax, -60(%rbp)	# tmp185, xintercept
# p_maputl.c:843:     mapx = xt1;
	.loc 1 843 10
	movl	-32(%rbp), %eax	# xt1, tmp186
	movl	%eax, -52(%rbp)	# tmp186, mapx
# p_maputl.c:844:     mapy = yt1;
	.loc 1 844 10
	movl	-28(%rbp), %eax	# yt1, tmp187
	movl	%eax, -48(%rbp)	# tmp187, mapy
# p_maputl.c:846:     for (count = 0 ; count < 64 ; count++)
	.loc 1 846 16
	movl	$0, -36(%rbp)	#, count
# p_maputl.c:846:     for (count = 0 ; count < 64 ; count++)
	.loc 1 846 5
	jmp	.L110	#
.L118:
# p_maputl.c:848: 	if (flags & PT_ADDLINES)
	.loc 1 848 12
	movl	-100(%rbp), %eax	# flags, tmp188
	andl	$1, %eax	#, _39
# p_maputl.c:848: 	if (flags & PT_ADDLINES)
	.loc 1 848 5
	testl	%eax, %eax	# _39
	je	.L111	#,
# p_maputl.c:850: 	    if (!P_BlockLinesIterator (mapx, mapy,PIT_AddLineIntercepts))
	.loc 1 850 11
	movl	-48(%rbp), %ecx	# mapy, tmp189
	movl	-52(%rbp), %eax	# mapx, tmp190
	leaq	PIT_AddLineIntercepts(%rip), %rdx	#, tmp191
	movl	%ecx, %esi	# tmp189,
	movl	%eax, %edi	# tmp190,
	call	P_BlockLinesIterator	#
# p_maputl.c:850: 	    if (!P_BlockLinesIterator (mapx, mapy,PIT_AddLineIntercepts))
	.loc 1 850 9 discriminator 1
	testl	%eax, %eax	# _40
	jne	.L111	#,
# p_maputl.c:851: 		return false;	// early out
	.loc 1 851 10
	movl	$0, %eax	#, _62
	jmp	.L112	#
.L111:
# p_maputl.c:854: 	if (flags & PT_ADDTHINGS)
	.loc 1 854 12
	movl	-100(%rbp), %eax	# flags, tmp192
	andl	$2, %eax	#, _41
# p_maputl.c:854: 	if (flags & PT_ADDTHINGS)
	.loc 1 854 5
	testl	%eax, %eax	# _41
	je	.L113	#,
# p_maputl.c:856: 	    if (!P_BlockThingsIterator (mapx, mapy,PIT_AddThingIntercepts))
	.loc 1 856 11
	movl	-48(%rbp), %ecx	# mapy, tmp193
	movl	-52(%rbp), %eax	# mapx, tmp194
	leaq	PIT_AddThingIntercepts(%rip), %rdx	#, tmp195
	movl	%ecx, %esi	# tmp193,
	movl	%eax, %edi	# tmp194,
	call	P_BlockThingsIterator	#
# p_maputl.c:856: 	    if (!P_BlockThingsIterator (mapx, mapy,PIT_AddThingIntercepts))
	.loc 1 856 9 discriminator 1
	testl	%eax, %eax	# _42
	jne	.L113	#,
# p_maputl.c:857: 		return false;	// early out
	.loc 1 857 10
	movl	$0, %eax	#, _62
	jmp	.L112	#
.L113:
# p_maputl.c:860: 	if (mapx == xt2
	.loc 1 860 5
	movl	-52(%rbp), %eax	# mapx, tmp196
	cmpl	-24(%rbp), %eax	# xt2, tmp196
	jne	.L114	#,
# p_maputl.c:861: 	    && mapy == yt2)
	.loc 1 861 6
	movl	-48(%rbp), %eax	# mapy, tmp197
	cmpl	-20(%rbp), %eax	# yt2, tmp197
	je	.L119	#,
.L114:
# p_maputl.c:866: 	if ( (yintercept >> FRACBITS) == mapy)
	.loc 1 866 19
	movl	-56(%rbp), %eax	# yintercept, tmp198
	sarl	$16, %eax	#, _43
# p_maputl.c:866: 	if ( (yintercept >> FRACBITS) == mapy)
	.loc 1 866 5
	cmpl	%eax, -48(%rbp)	# _43, mapy
	jne	.L116	#,
# p_maputl.c:868: 	    yintercept += ystep;
	.loc 1 868 17
	movl	-68(%rbp), %eax	# ystep, tmp199
	addl	%eax, -56(%rbp)	# tmp199, yintercept
# p_maputl.c:869: 	    mapx += mapxstep;
	.loc 1 869 11
	movl	-44(%rbp), %eax	# mapxstep, tmp200
	addl	%eax, -52(%rbp)	# tmp200, mapx
	jmp	.L117	#
.L116:
# p_maputl.c:871: 	else if ( (xintercept >> FRACBITS) == mapx)
	.loc 1 871 24
	movl	-60(%rbp), %eax	# xintercept, tmp201
	sarl	$16, %eax	#, _44
# p_maputl.c:871: 	else if ( (xintercept >> FRACBITS) == mapx)
	.loc 1 871 10
	cmpl	%eax, -52(%rbp)	# _44, mapx
	jne	.L117	#,
# p_maputl.c:873: 	    xintercept += xstep;
	.loc 1 873 17
	movl	-72(%rbp), %eax	# xstep, tmp202
	addl	%eax, -60(%rbp)	# tmp202, xintercept
# p_maputl.c:874: 	    mapy += mapystep;
	.loc 1 874 11
	movl	-40(%rbp), %eax	# mapystep, tmp203
	addl	%eax, -48(%rbp)	# tmp203, mapy
.L117:
# p_maputl.c:846:     for (count = 0 ; count < 64 ; count++)
	.loc 1 846 40 discriminator 2
	addl	$1, -36(%rbp)	#, count
.L110:
# p_maputl.c:846:     for (count = 0 ; count < 64 ; count++)
	.loc 1 846 28 discriminator 1
	cmpl	$63, -36(%rbp)	#, count
	jle	.L118	#,
	jmp	.L115	#
.L119:
# p_maputl.c:863: 	    break;
	.loc 1 863 6
	nop	
.L115:
# p_maputl.c:879:     return P_TraverseIntercepts ( trav, FRACUNIT );
	.loc 1 879 12
	movq	-112(%rbp), %rax	# trav, tmp204
	movl	$65536, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	P_TraverseIntercepts	#
.L112:
# p_maputl.c:880: }
	.loc 1 880 1
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	P_PathTraverse, .-P_PathTraverse
.Letext0:
	.file 2 "m_bbox.h"
	.file 3 "doomdef.h"
	.file 4 "m_fixed.h"
	.file 5 "tables.h"
	.file 6 "d_think.h"
	.file 7 "doomtype.h"
	.file 8 "doomdata.h"
	.file 9 "info.h"
	.file 10 "p_mobj.h"
	.file 11 "r_defs.h"
	.file 12 "d_player.h"
	.file 13 "p_pspr.h"
	.file 14 "d_ticcmd.h"
	.file 15 "r_state.h"
	.file 16 "r_main.h"
	.file 17 "p_local.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x37f4
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x27
	.long	.LASF1556
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x11
	.long	0x51
	.long	0x3e
	.uleb128 0x12
	.long	0x43
	.byte	0x32
	.byte	0
	.uleb128 0x21
	.long	0x2e
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x21
	.long	0x4a
	.uleb128 0x17
	.long	.LASF1513
	.byte	0x1c
	.byte	0x1
	.long	0x3e
	.uleb128 0x9
	.byte	0x3
	.quad	rcsid
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF10
	.uleb128 0x29
	.byte	0x8
	.uleb128 0x7
	.long	0x4a
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x26
	.byte	0xd
	.long	0x6b
	.uleb128 0xc
	.long	0x8e
	.byte	0x2
	.byte	0x21
	.byte	0x1
	.long	0xe2
	.uleb128 0x2
	.long	.LASF12
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x1
	.uleb128 0x2
	.long	.LASF14
	.byte	0x2
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x8e
	.byte	0x3
	.byte	0xa3
	.byte	0x1
	.long	0x119
	.uleb128 0x2
	.long	.LASF16
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x1
	.uleb128 0x2
	.long	.LASF18
	.byte	0x2
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.uleb128 0x2
	.long	.LASF20
	.byte	0x4
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.uleb128 0x2
	.long	.LASF22
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x8e
	.byte	0x3
	.byte	0xb5
	.byte	0x1
	.long	0x168
	.uleb128 0x2
	.long	.LASF23
	.byte	0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x1
	.uleb128 0x2
	.long	.LASF25
	.byte	0x2
	.uleb128 0x2
	.long	.LASF26
	.byte	0x3
	.uleb128 0x2
	.long	.LASF27
	.byte	0x4
	.uleb128 0x2
	.long	.LASF28
	.byte	0x5
	.uleb128 0x2
	.long	.LASF29
	.byte	0x6
	.uleb128 0x2
	.long	.LASF30
	.byte	0x7
	.uleb128 0x2
	.long	.LASF31
	.byte	0x8
	.uleb128 0x2
	.long	.LASF32
	.byte	0x9
	.uleb128 0x2
	.long	.LASF33
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.byte	0xc5
	.byte	0x3
	.long	0x119
	.uleb128 0xc
	.long	0x8e
	.byte	0x3
	.byte	0xca
	.byte	0x1
	.long	0x1a5
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
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x8e
	.byte	0x3
	.byte	0xd7
	.byte	0x1
	.long	0x1dc
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
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x7
	.long	0xb1
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x4e
	.byte	0x12
	.long	0x8e
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x29
	.byte	0x11
	.long	0x207
	.uleb128 0x7
	.long	0x20c
	.uleb128 0x2a
	.long	0x213
	.uleb128 0x2b
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.byte	0x11
	.long	0x21f
	.uleb128 0x7
	.long	0x224
	.uleb128 0x22
	.long	0x22f
	.uleb128 0xd
	.long	0xa3
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x2b
	.byte	0x11
	.long	0x23b
	.uleb128 0x7
	.long	0x240
	.uleb128 0x22
	.long	0x250
	.uleb128 0xd
	.long	0xa3
	.uleb128 0xd
	.long	0xa3
	.byte	0
	.uleb128 0x23
	.byte	0x6
	.byte	0x2d
	.byte	0x9
	.long	0x27d
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x6
	.byte	0x2f
	.byte	0xe
	.long	0x213
	.uleb128 0x2c
	.string	"acv"
	.byte	0x6
	.byte	0x30
	.byte	0xd
	.long	0x1fb
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x6
	.byte	0x31
	.byte	0xe
	.long	0x22f
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x33
	.byte	0x3
	.long	0x250
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x3c
	.byte	0x14
	.long	0x27d
	.uleb128 0x1b
	.long	.LASF1379
	.byte	0x18
	.byte	0x6
	.byte	0x40
	.long	0x2c9
	.uleb128 0x3
	.long	.LASF59
	.byte	0x6
	.byte	0x42
	.byte	0x17
	.long	0x2c9
	.byte	0
	.uleb128 0x3
	.long	.LASF60
	.byte	0x6
	.byte	0x43
	.byte	0x17
	.long	0x2c9
	.byte	0x8
	.uleb128 0x3
	.long	.LASF61
	.byte	0x6
	.byte	0x44
	.byte	0xe
	.long	0x289
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0x295
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x46
	.byte	0x3
	.long	0x295
	.uleb128 0xc
	.long	0x8e
	.byte	0x7
	.byte	0x22
	.byte	0xe
	.long	0x2f3
	.uleb128 0x2
	.long	.LASF63
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x22
	.byte	0x1c
	.long	0x2da
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x24
	.byte	0x17
	.long	0x80
	.uleb128 0x11
	.long	0x9c
	.long	0x31b
	.uleb128 0x12
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.byte	0xa
	.byte	0x8
	.byte	0xcb
	.long	0x361
	.uleb128 0x5
	.string	"x"
	.byte	0x8
	.byte	0xcd
	.byte	0xc
	.long	0x9c
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x8
	.byte	0xce
	.byte	0xc
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF67
	.byte	0x8
	.byte	0xcf
	.byte	0xc
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF68
	.byte	0x8
	.byte	0xd0
	.byte	0xc
	.long	0x9c
	.byte	0x6
	.uleb128 0x3
	.long	.LASF69
	.byte	0x8
	.byte	0xd1
	.byte	0xc
	.long	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.long	0x31b
	.uleb128 0xc
	.long	0x8e
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.long	0x6bc
	.uleb128 0x2
	.long	.LASF71
	.byte	0
	.uleb128 0x2
	.long	.LASF72
	.byte	0x1
	.uleb128 0x2
	.long	.LASF73
	.byte	0x2
	.uleb128 0x2
	.long	.LASF74
	.byte	0x3
	.uleb128 0x2
	.long	.LASF75
	.byte	0x4
	.uleb128 0x2
	.long	.LASF76
	.byte	0x5
	.uleb128 0x2
	.long	.LASF77
	.byte	0x6
	.uleb128 0x2
	.long	.LASF78
	.byte	0x7
	.uleb128 0x2
	.long	.LASF79
	.byte	0x8
	.uleb128 0x2
	.long	.LASF80
	.byte	0x9
	.uleb128 0x2
	.long	.LASF81
	.byte	0xa
	.uleb128 0x2
	.long	.LASF82
	.byte	0xb
	.uleb128 0x2
	.long	.LASF83
	.byte	0xc
	.uleb128 0x2
	.long	.LASF84
	.byte	0xd
	.uleb128 0x2
	.long	.LASF85
	.byte	0xe
	.uleb128 0x2
	.long	.LASF86
	.byte	0xf
	.uleb128 0x2
	.long	.LASF87
	.byte	0x10
	.uleb128 0x2
	.long	.LASF88
	.byte	0x11
	.uleb128 0x2
	.long	.LASF89
	.byte	0x12
	.uleb128 0x2
	.long	.LASF90
	.byte	0x13
	.uleb128 0x2
	.long	.LASF91
	.byte	0x14
	.uleb128 0x2
	.long	.LASF92
	.byte	0x15
	.uleb128 0x2
	.long	.LASF93
	.byte	0x16
	.uleb128 0x2
	.long	.LASF94
	.byte	0x17
	.uleb128 0x2
	.long	.LASF95
	.byte	0x18
	.uleb128 0x2
	.long	.LASF96
	.byte	0x19
	.uleb128 0x2
	.long	.LASF97
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF98
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF99
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF100
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF101
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF102
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF103
	.byte	0x20
	.uleb128 0x2
	.long	.LASF104
	.byte	0x21
	.uleb128 0x2
	.long	.LASF105
	.byte	0x22
	.uleb128 0x2
	.long	.LASF106
	.byte	0x23
	.uleb128 0x2
	.long	.LASF107
	.byte	0x24
	.uleb128 0x2
	.long	.LASF108
	.byte	0x25
	.uleb128 0x2
	.long	.LASF109
	.byte	0x26
	.uleb128 0x2
	.long	.LASF110
	.byte	0x27
	.uleb128 0x2
	.long	.LASF111
	.byte	0x28
	.uleb128 0x2
	.long	.LASF112
	.byte	0x29
	.uleb128 0x2
	.long	.LASF113
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF114
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF115
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF116
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF117
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF118
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF119
	.byte	0x30
	.uleb128 0x2
	.long	.LASF120
	.byte	0x31
	.uleb128 0x2
	.long	.LASF121
	.byte	0x32
	.uleb128 0x2
	.long	.LASF122
	.byte	0x33
	.uleb128 0x2
	.long	.LASF123
	.byte	0x34
	.uleb128 0x2
	.long	.LASF124
	.byte	0x35
	.uleb128 0x2
	.long	.LASF125
	.byte	0x36
	.uleb128 0x2
	.long	.LASF126
	.byte	0x37
	.uleb128 0x2
	.long	.LASF127
	.byte	0x38
	.uleb128 0x2
	.long	.LASF128
	.byte	0x39
	.uleb128 0x2
	.long	.LASF129
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF130
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF131
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF132
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF133
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF134
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF135
	.byte	0x40
	.uleb128 0x2
	.long	.LASF136
	.byte	0x41
	.uleb128 0x2
	.long	.LASF137
	.byte	0x42
	.uleb128 0x2
	.long	.LASF138
	.byte	0x43
	.uleb128 0x2
	.long	.LASF139
	.byte	0x44
	.uleb128 0x2
	.long	.LASF140
	.byte	0x45
	.uleb128 0x2
	.long	.LASF141
	.byte	0x46
	.uleb128 0x2
	.long	.LASF142
	.byte	0x47
	.uleb128 0x2
	.long	.LASF143
	.byte	0x48
	.uleb128 0x2
	.long	.LASF144
	.byte	0x49
	.uleb128 0x2
	.long	.LASF145
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF146
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF147
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF148
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF149
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF150
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF151
	.byte	0x50
	.uleb128 0x2
	.long	.LASF152
	.byte	0x51
	.uleb128 0x2
	.long	.LASF153
	.byte	0x52
	.uleb128 0x2
	.long	.LASF154
	.byte	0x53
	.uleb128 0x2
	.long	.LASF155
	.byte	0x54
	.uleb128 0x2
	.long	.LASF156
	.byte	0x55
	.uleb128 0x2
	.long	.LASF157
	.byte	0x56
	.uleb128 0x2
	.long	.LASF158
	.byte	0x57
	.uleb128 0x2
	.long	.LASF159
	.byte	0x58
	.uleb128 0x2
	.long	.LASF160
	.byte	0x59
	.uleb128 0x2
	.long	.LASF161
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF162
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF163
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF164
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF165
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF166
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF167
	.byte	0x60
	.uleb128 0x2
	.long	.LASF168
	.byte	0x61
	.uleb128 0x2
	.long	.LASF169
	.byte	0x62
	.uleb128 0x2
	.long	.LASF170
	.byte	0x63
	.uleb128 0x2
	.long	.LASF171
	.byte	0x64
	.uleb128 0x2
	.long	.LASF172
	.byte	0x65
	.uleb128 0x2
	.long	.LASF173
	.byte	0x66
	.uleb128 0x2
	.long	.LASF174
	.byte	0x67
	.uleb128 0x2
	.long	.LASF175
	.byte	0x68
	.uleb128 0x2
	.long	.LASF176
	.byte	0x69
	.uleb128 0x2
	.long	.LASF177
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF178
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF179
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF180
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF181
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF182
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF183
	.byte	0x70
	.uleb128 0x2
	.long	.LASF184
	.byte	0x71
	.uleb128 0x2
	.long	.LASF185
	.byte	0x72
	.uleb128 0x2
	.long	.LASF186
	.byte	0x73
	.uleb128 0x2
	.long	.LASF187
	.byte	0x74
	.uleb128 0x2
	.long	.LASF188
	.byte	0x75
	.uleb128 0x2
	.long	.LASF189
	.byte	0x76
	.uleb128 0x2
	.long	.LASF190
	.byte	0x77
	.uleb128 0x2
	.long	.LASF191
	.byte	0x78
	.uleb128 0x2
	.long	.LASF192
	.byte	0x79
	.uleb128 0x2
	.long	.LASF193
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF194
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF195
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF196
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF197
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF198
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF199
	.byte	0x80
	.uleb128 0x2
	.long	.LASF200
	.byte	0x81
	.uleb128 0x2
	.long	.LASF201
	.byte	0x82
	.uleb128 0x2
	.long	.LASF202
	.byte	0x83
	.uleb128 0x2
	.long	.LASF203
	.byte	0x84
	.uleb128 0x2
	.long	.LASF204
	.byte	0x85
	.uleb128 0x2
	.long	.LASF205
	.byte	0x86
	.uleb128 0x2
	.long	.LASF206
	.byte	0x87
	.uleb128 0x2
	.long	.LASF207
	.byte	0x88
	.uleb128 0x2
	.long	.LASF208
	.byte	0x89
	.uleb128 0x2
	.long	.LASF209
	.byte	0x8a
	.byte	0
	.uleb128 0x8
	.long	.LASF210
	.byte	0x9
	.byte	0xac
	.byte	0x3
	.long	0x36d
	.uleb128 0xc
	.long	0x8e
	.byte	0x9
	.byte	0xaf
	.byte	0x1
	.long	0x204d
	.uleb128 0x2
	.long	.LASF211
	.byte	0
	.uleb128 0x2
	.long	.LASF212
	.byte	0x1
	.uleb128 0x2
	.long	.LASF213
	.byte	0x2
	.uleb128 0x2
	.long	.LASF214
	.byte	0x3
	.uleb128 0x2
	.long	.LASF215
	.byte	0x4
	.uleb128 0x2
	.long	.LASF216
	.byte	0x5
	.uleb128 0x2
	.long	.LASF217
	.byte	0x6
	.uleb128 0x2
	.long	.LASF218
	.byte	0x7
	.uleb128 0x2
	.long	.LASF219
	.byte	0x8
	.uleb128 0x2
	.long	.LASF220
	.byte	0x9
	.uleb128 0x2
	.long	.LASF221
	.byte	0xa
	.uleb128 0x2
	.long	.LASF222
	.byte	0xb
	.uleb128 0x2
	.long	.LASF223
	.byte	0xc
	.uleb128 0x2
	.long	.LASF224
	.byte	0xd
	.uleb128 0x2
	.long	.LASF225
	.byte	0xe
	.uleb128 0x2
	.long	.LASF226
	.byte	0xf
	.uleb128 0x2
	.long	.LASF227
	.byte	0x10
	.uleb128 0x2
	.long	.LASF228
	.byte	0x11
	.uleb128 0x2
	.long	.LASF229
	.byte	0x12
	.uleb128 0x2
	.long	.LASF230
	.byte	0x13
	.uleb128 0x2
	.long	.LASF231
	.byte	0x14
	.uleb128 0x2
	.long	.LASF232
	.byte	0x15
	.uleb128 0x2
	.long	.LASF233
	.byte	0x16
	.uleb128 0x2
	.long	.LASF234
	.byte	0x17
	.uleb128 0x2
	.long	.LASF235
	.byte	0x18
	.uleb128 0x2
	.long	.LASF236
	.byte	0x19
	.uleb128 0x2
	.long	.LASF237
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF238
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF239
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF240
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF241
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF242
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF243
	.byte	0x20
	.uleb128 0x2
	.long	.LASF244
	.byte	0x21
	.uleb128 0x2
	.long	.LASF245
	.byte	0x22
	.uleb128 0x2
	.long	.LASF246
	.byte	0x23
	.uleb128 0x2
	.long	.LASF247
	.byte	0x24
	.uleb128 0x2
	.long	.LASF248
	.byte	0x25
	.uleb128 0x2
	.long	.LASF249
	.byte	0x26
	.uleb128 0x2
	.long	.LASF250
	.byte	0x27
	.uleb128 0x2
	.long	.LASF251
	.byte	0x28
	.uleb128 0x2
	.long	.LASF252
	.byte	0x29
	.uleb128 0x2
	.long	.LASF253
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF254
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF255
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF256
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF257
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF258
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF259
	.byte	0x30
	.uleb128 0x2
	.long	.LASF260
	.byte	0x31
	.uleb128 0x2
	.long	.LASF261
	.byte	0x32
	.uleb128 0x2
	.long	.LASF262
	.byte	0x33
	.uleb128 0x2
	.long	.LASF263
	.byte	0x34
	.uleb128 0x2
	.long	.LASF264
	.byte	0x35
	.uleb128 0x2
	.long	.LASF265
	.byte	0x36
	.uleb128 0x2
	.long	.LASF266
	.byte	0x37
	.uleb128 0x2
	.long	.LASF267
	.byte	0x38
	.uleb128 0x2
	.long	.LASF268
	.byte	0x39
	.uleb128 0x2
	.long	.LASF269
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF270
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF271
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF272
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF273
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF274
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF275
	.byte	0x40
	.uleb128 0x2
	.long	.LASF276
	.byte	0x41
	.uleb128 0x2
	.long	.LASF277
	.byte	0x42
	.uleb128 0x2
	.long	.LASF278
	.byte	0x43
	.uleb128 0x2
	.long	.LASF279
	.byte	0x44
	.uleb128 0x2
	.long	.LASF280
	.byte	0x45
	.uleb128 0x2
	.long	.LASF281
	.byte	0x46
	.uleb128 0x2
	.long	.LASF282
	.byte	0x47
	.uleb128 0x2
	.long	.LASF283
	.byte	0x48
	.uleb128 0x2
	.long	.LASF284
	.byte	0x49
	.uleb128 0x2
	.long	.LASF285
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF286
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF287
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF288
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF289
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF290
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF291
	.byte	0x50
	.uleb128 0x2
	.long	.LASF292
	.byte	0x51
	.uleb128 0x2
	.long	.LASF293
	.byte	0x52
	.uleb128 0x2
	.long	.LASF294
	.byte	0x53
	.uleb128 0x2
	.long	.LASF295
	.byte	0x54
	.uleb128 0x2
	.long	.LASF296
	.byte	0x55
	.uleb128 0x2
	.long	.LASF297
	.byte	0x56
	.uleb128 0x2
	.long	.LASF298
	.byte	0x57
	.uleb128 0x2
	.long	.LASF299
	.byte	0x58
	.uleb128 0x2
	.long	.LASF300
	.byte	0x59
	.uleb128 0x2
	.long	.LASF301
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF302
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF303
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF304
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF305
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF306
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF307
	.byte	0x60
	.uleb128 0x2
	.long	.LASF308
	.byte	0x61
	.uleb128 0x2
	.long	.LASF309
	.byte	0x62
	.uleb128 0x2
	.long	.LASF310
	.byte	0x63
	.uleb128 0x2
	.long	.LASF311
	.byte	0x64
	.uleb128 0x2
	.long	.LASF312
	.byte	0x65
	.uleb128 0x2
	.long	.LASF313
	.byte	0x66
	.uleb128 0x2
	.long	.LASF314
	.byte	0x67
	.uleb128 0x2
	.long	.LASF315
	.byte	0x68
	.uleb128 0x2
	.long	.LASF316
	.byte	0x69
	.uleb128 0x2
	.long	.LASF317
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF318
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF319
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF320
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF321
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF322
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF323
	.byte	0x70
	.uleb128 0x2
	.long	.LASF324
	.byte	0x71
	.uleb128 0x2
	.long	.LASF325
	.byte	0x72
	.uleb128 0x2
	.long	.LASF326
	.byte	0x73
	.uleb128 0x2
	.long	.LASF327
	.byte	0x74
	.uleb128 0x2
	.long	.LASF328
	.byte	0x75
	.uleb128 0x2
	.long	.LASF329
	.byte	0x76
	.uleb128 0x2
	.long	.LASF330
	.byte	0x77
	.uleb128 0x2
	.long	.LASF331
	.byte	0x78
	.uleb128 0x2
	.long	.LASF332
	.byte	0x79
	.uleb128 0x2
	.long	.LASF333
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF334
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF335
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF336
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF337
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF338
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF339
	.byte	0x80
	.uleb128 0x2
	.long	.LASF340
	.byte	0x81
	.uleb128 0x2
	.long	.LASF341
	.byte	0x82
	.uleb128 0x2
	.long	.LASF342
	.byte	0x83
	.uleb128 0x2
	.long	.LASF343
	.byte	0x84
	.uleb128 0x2
	.long	.LASF344
	.byte	0x85
	.uleb128 0x2
	.long	.LASF345
	.byte	0x86
	.uleb128 0x2
	.long	.LASF346
	.byte	0x87
	.uleb128 0x2
	.long	.LASF347
	.byte	0x88
	.uleb128 0x2
	.long	.LASF348
	.byte	0x89
	.uleb128 0x2
	.long	.LASF349
	.byte	0x8a
	.uleb128 0x2
	.long	.LASF350
	.byte	0x8b
	.uleb128 0x2
	.long	.LASF351
	.byte	0x8c
	.uleb128 0x2
	.long	.LASF352
	.byte	0x8d
	.uleb128 0x2
	.long	.LASF353
	.byte	0x8e
	.uleb128 0x2
	.long	.LASF354
	.byte	0x8f
	.uleb128 0x2
	.long	.LASF355
	.byte	0x90
	.uleb128 0x2
	.long	.LASF356
	.byte	0x91
	.uleb128 0x2
	.long	.LASF357
	.byte	0x92
	.uleb128 0x2
	.long	.LASF358
	.byte	0x93
	.uleb128 0x2
	.long	.LASF359
	.byte	0x94
	.uleb128 0x2
	.long	.LASF360
	.byte	0x95
	.uleb128 0x2
	.long	.LASF361
	.byte	0x96
	.uleb128 0x2
	.long	.LASF362
	.byte	0x97
	.uleb128 0x2
	.long	.LASF363
	.byte	0x98
	.uleb128 0x2
	.long	.LASF364
	.byte	0x99
	.uleb128 0x2
	.long	.LASF365
	.byte	0x9a
	.uleb128 0x2
	.long	.LASF366
	.byte	0x9b
	.uleb128 0x2
	.long	.LASF367
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF368
	.byte	0x9d
	.uleb128 0x2
	.long	.LASF369
	.byte	0x9e
	.uleb128 0x2
	.long	.LASF370
	.byte	0x9f
	.uleb128 0x2
	.long	.LASF371
	.byte	0xa0
	.uleb128 0x2
	.long	.LASF372
	.byte	0xa1
	.uleb128 0x2
	.long	.LASF373
	.byte	0xa2
	.uleb128 0x2
	.long	.LASF374
	.byte	0xa3
	.uleb128 0x2
	.long	.LASF375
	.byte	0xa4
	.uleb128 0x2
	.long	.LASF376
	.byte	0xa5
	.uleb128 0x2
	.long	.LASF377
	.byte	0xa6
	.uleb128 0x2
	.long	.LASF378
	.byte	0xa7
	.uleb128 0x2
	.long	.LASF379
	.byte	0xa8
	.uleb128 0x2
	.long	.LASF380
	.byte	0xa9
	.uleb128 0x2
	.long	.LASF381
	.byte	0xaa
	.uleb128 0x2
	.long	.LASF382
	.byte	0xab
	.uleb128 0x2
	.long	.LASF383
	.byte	0xac
	.uleb128 0x2
	.long	.LASF384
	.byte	0xad
	.uleb128 0x2
	.long	.LASF385
	.byte	0xae
	.uleb128 0x2
	.long	.LASF386
	.byte	0xaf
	.uleb128 0x2
	.long	.LASF387
	.byte	0xb0
	.uleb128 0x2
	.long	.LASF388
	.byte	0xb1
	.uleb128 0x2
	.long	.LASF389
	.byte	0xb2
	.uleb128 0x2
	.long	.LASF390
	.byte	0xb3
	.uleb128 0x2
	.long	.LASF391
	.byte	0xb4
	.uleb128 0x2
	.long	.LASF392
	.byte	0xb5
	.uleb128 0x2
	.long	.LASF393
	.byte	0xb6
	.uleb128 0x2
	.long	.LASF394
	.byte	0xb7
	.uleb128 0x2
	.long	.LASF395
	.byte	0xb8
	.uleb128 0x2
	.long	.LASF396
	.byte	0xb9
	.uleb128 0x2
	.long	.LASF397
	.byte	0xba
	.uleb128 0x2
	.long	.LASF398
	.byte	0xbb
	.uleb128 0x2
	.long	.LASF399
	.byte	0xbc
	.uleb128 0x2
	.long	.LASF400
	.byte	0xbd
	.uleb128 0x2
	.long	.LASF401
	.byte	0xbe
	.uleb128 0x2
	.long	.LASF402
	.byte	0xbf
	.uleb128 0x2
	.long	.LASF403
	.byte	0xc0
	.uleb128 0x2
	.long	.LASF404
	.byte	0xc1
	.uleb128 0x2
	.long	.LASF405
	.byte	0xc2
	.uleb128 0x2
	.long	.LASF406
	.byte	0xc3
	.uleb128 0x2
	.long	.LASF407
	.byte	0xc4
	.uleb128 0x2
	.long	.LASF408
	.byte	0xc5
	.uleb128 0x2
	.long	.LASF409
	.byte	0xc6
	.uleb128 0x2
	.long	.LASF410
	.byte	0xc7
	.uleb128 0x2
	.long	.LASF411
	.byte	0xc8
	.uleb128 0x2
	.long	.LASF412
	.byte	0xc9
	.uleb128 0x2
	.long	.LASF413
	.byte	0xca
	.uleb128 0x2
	.long	.LASF414
	.byte	0xcb
	.uleb128 0x2
	.long	.LASF415
	.byte	0xcc
	.uleb128 0x2
	.long	.LASF416
	.byte	0xcd
	.uleb128 0x2
	.long	.LASF417
	.byte	0xce
	.uleb128 0x2
	.long	.LASF418
	.byte	0xcf
	.uleb128 0x2
	.long	.LASF419
	.byte	0xd0
	.uleb128 0x2
	.long	.LASF420
	.byte	0xd1
	.uleb128 0x2
	.long	.LASF421
	.byte	0xd2
	.uleb128 0x2
	.long	.LASF422
	.byte	0xd3
	.uleb128 0x2
	.long	.LASF423
	.byte	0xd4
	.uleb128 0x2
	.long	.LASF424
	.byte	0xd5
	.uleb128 0x2
	.long	.LASF425
	.byte	0xd6
	.uleb128 0x2
	.long	.LASF426
	.byte	0xd7
	.uleb128 0x2
	.long	.LASF427
	.byte	0xd8
	.uleb128 0x2
	.long	.LASF428
	.byte	0xd9
	.uleb128 0x2
	.long	.LASF429
	.byte	0xda
	.uleb128 0x2
	.long	.LASF430
	.byte	0xdb
	.uleb128 0x2
	.long	.LASF431
	.byte	0xdc
	.uleb128 0x2
	.long	.LASF432
	.byte	0xdd
	.uleb128 0x2
	.long	.LASF433
	.byte	0xde
	.uleb128 0x2
	.long	.LASF434
	.byte	0xdf
	.uleb128 0x2
	.long	.LASF435
	.byte	0xe0
	.uleb128 0x2
	.long	.LASF436
	.byte	0xe1
	.uleb128 0x2
	.long	.LASF437
	.byte	0xe2
	.uleb128 0x2
	.long	.LASF438
	.byte	0xe3
	.uleb128 0x2
	.long	.LASF439
	.byte	0xe4
	.uleb128 0x2
	.long	.LASF440
	.byte	0xe5
	.uleb128 0x2
	.long	.LASF441
	.byte	0xe6
	.uleb128 0x2
	.long	.LASF442
	.byte	0xe7
	.uleb128 0x2
	.long	.LASF443
	.byte	0xe8
	.uleb128 0x2
	.long	.LASF444
	.byte	0xe9
	.uleb128 0x2
	.long	.LASF445
	.byte	0xea
	.uleb128 0x2
	.long	.LASF446
	.byte	0xeb
	.uleb128 0x2
	.long	.LASF447
	.byte	0xec
	.uleb128 0x2
	.long	.LASF448
	.byte	0xed
	.uleb128 0x2
	.long	.LASF449
	.byte	0xee
	.uleb128 0x2
	.long	.LASF450
	.byte	0xef
	.uleb128 0x2
	.long	.LASF451
	.byte	0xf0
	.uleb128 0x2
	.long	.LASF452
	.byte	0xf1
	.uleb128 0x2
	.long	.LASF453
	.byte	0xf2
	.uleb128 0x2
	.long	.LASF454
	.byte	0xf3
	.uleb128 0x2
	.long	.LASF455
	.byte	0xf4
	.uleb128 0x2
	.long	.LASF456
	.byte	0xf5
	.uleb128 0x2
	.long	.LASF457
	.byte	0xf6
	.uleb128 0x2
	.long	.LASF458
	.byte	0xf7
	.uleb128 0x2
	.long	.LASF459
	.byte	0xf8
	.uleb128 0x2
	.long	.LASF460
	.byte	0xf9
	.uleb128 0x2
	.long	.LASF461
	.byte	0xfa
	.uleb128 0x2
	.long	.LASF462
	.byte	0xfb
	.uleb128 0x2
	.long	.LASF463
	.byte	0xfc
	.uleb128 0x2
	.long	.LASF464
	.byte	0xfd
	.uleb128 0x2
	.long	.LASF465
	.byte	0xfe
	.uleb128 0x2
	.long	.LASF466
	.byte	0xff
	.uleb128 0x1
	.long	.LASF467
	.value	0x100
	.uleb128 0x1
	.long	.LASF468
	.value	0x101
	.uleb128 0x1
	.long	.LASF469
	.value	0x102
	.uleb128 0x1
	.long	.LASF470
	.value	0x103
	.uleb128 0x1
	.long	.LASF471
	.value	0x104
	.uleb128 0x1
	.long	.LASF472
	.value	0x105
	.uleb128 0x1
	.long	.LASF473
	.value	0x106
	.uleb128 0x1
	.long	.LASF474
	.value	0x107
	.uleb128 0x1
	.long	.LASF475
	.value	0x108
	.uleb128 0x1
	.long	.LASF476
	.value	0x109
	.uleb128 0x1
	.long	.LASF477
	.value	0x10a
	.uleb128 0x1
	.long	.LASF478
	.value	0x10b
	.uleb128 0x1
	.long	.LASF479
	.value	0x10c
	.uleb128 0x1
	.long	.LASF480
	.value	0x10d
	.uleb128 0x1
	.long	.LASF481
	.value	0x10e
	.uleb128 0x1
	.long	.LASF482
	.value	0x10f
	.uleb128 0x1
	.long	.LASF483
	.value	0x110
	.uleb128 0x1
	.long	.LASF484
	.value	0x111
	.uleb128 0x1
	.long	.LASF485
	.value	0x112
	.uleb128 0x1
	.long	.LASF486
	.value	0x113
	.uleb128 0x1
	.long	.LASF487
	.value	0x114
	.uleb128 0x1
	.long	.LASF488
	.value	0x115
	.uleb128 0x1
	.long	.LASF489
	.value	0x116
	.uleb128 0x1
	.long	.LASF490
	.value	0x117
	.uleb128 0x1
	.long	.LASF491
	.value	0x118
	.uleb128 0x1
	.long	.LASF492
	.value	0x119
	.uleb128 0x1
	.long	.LASF493
	.value	0x11a
	.uleb128 0x1
	.long	.LASF494
	.value	0x11b
	.uleb128 0x1
	.long	.LASF495
	.value	0x11c
	.uleb128 0x1
	.long	.LASF496
	.value	0x11d
	.uleb128 0x1
	.long	.LASF497
	.value	0x11e
	.uleb128 0x1
	.long	.LASF498
	.value	0x11f
	.uleb128 0x1
	.long	.LASF499
	.value	0x120
	.uleb128 0x1
	.long	.LASF500
	.value	0x121
	.uleb128 0x1
	.long	.LASF501
	.value	0x122
	.uleb128 0x1
	.long	.LASF502
	.value	0x123
	.uleb128 0x1
	.long	.LASF503
	.value	0x124
	.uleb128 0x1
	.long	.LASF504
	.value	0x125
	.uleb128 0x1
	.long	.LASF505
	.value	0x126
	.uleb128 0x1
	.long	.LASF506
	.value	0x127
	.uleb128 0x1
	.long	.LASF507
	.value	0x128
	.uleb128 0x1
	.long	.LASF508
	.value	0x129
	.uleb128 0x1
	.long	.LASF509
	.value	0x12a
	.uleb128 0x1
	.long	.LASF510
	.value	0x12b
	.uleb128 0x1
	.long	.LASF511
	.value	0x12c
	.uleb128 0x1
	.long	.LASF512
	.value	0x12d
	.uleb128 0x1
	.long	.LASF513
	.value	0x12e
	.uleb128 0x1
	.long	.LASF514
	.value	0x12f
	.uleb128 0x1
	.long	.LASF515
	.value	0x130
	.uleb128 0x1
	.long	.LASF516
	.value	0x131
	.uleb128 0x1
	.long	.LASF517
	.value	0x132
	.uleb128 0x1
	.long	.LASF518
	.value	0x133
	.uleb128 0x1
	.long	.LASF519
	.value	0x134
	.uleb128 0x1
	.long	.LASF520
	.value	0x135
	.uleb128 0x1
	.long	.LASF521
	.value	0x136
	.uleb128 0x1
	.long	.LASF522
	.value	0x137
	.uleb128 0x1
	.long	.LASF523
	.value	0x138
	.uleb128 0x1
	.long	.LASF524
	.value	0x139
	.uleb128 0x1
	.long	.LASF525
	.value	0x13a
	.uleb128 0x1
	.long	.LASF526
	.value	0x13b
	.uleb128 0x1
	.long	.LASF527
	.value	0x13c
	.uleb128 0x1
	.long	.LASF528
	.value	0x13d
	.uleb128 0x1
	.long	.LASF529
	.value	0x13e
	.uleb128 0x1
	.long	.LASF530
	.value	0x13f
	.uleb128 0x1
	.long	.LASF531
	.value	0x140
	.uleb128 0x1
	.long	.LASF532
	.value	0x141
	.uleb128 0x1
	.long	.LASF533
	.value	0x142
	.uleb128 0x1
	.long	.LASF534
	.value	0x143
	.uleb128 0x1
	.long	.LASF535
	.value	0x144
	.uleb128 0x1
	.long	.LASF536
	.value	0x145
	.uleb128 0x1
	.long	.LASF537
	.value	0x146
	.uleb128 0x1
	.long	.LASF538
	.value	0x147
	.uleb128 0x1
	.long	.LASF539
	.value	0x148
	.uleb128 0x1
	.long	.LASF540
	.value	0x149
	.uleb128 0x1
	.long	.LASF541
	.value	0x14a
	.uleb128 0x1
	.long	.LASF542
	.value	0x14b
	.uleb128 0x1
	.long	.LASF543
	.value	0x14c
	.uleb128 0x1
	.long	.LASF544
	.value	0x14d
	.uleb128 0x1
	.long	.LASF545
	.value	0x14e
	.uleb128 0x1
	.long	.LASF546
	.value	0x14f
	.uleb128 0x1
	.long	.LASF547
	.value	0x150
	.uleb128 0x1
	.long	.LASF548
	.value	0x151
	.uleb128 0x1
	.long	.LASF549
	.value	0x152
	.uleb128 0x1
	.long	.LASF550
	.value	0x153
	.uleb128 0x1
	.long	.LASF551
	.value	0x154
	.uleb128 0x1
	.long	.LASF552
	.value	0x155
	.uleb128 0x1
	.long	.LASF553
	.value	0x156
	.uleb128 0x1
	.long	.LASF554
	.value	0x157
	.uleb128 0x1
	.long	.LASF555
	.value	0x158
	.uleb128 0x1
	.long	.LASF556
	.value	0x159
	.uleb128 0x1
	.long	.LASF557
	.value	0x15a
	.uleb128 0x1
	.long	.LASF558
	.value	0x15b
	.uleb128 0x1
	.long	.LASF559
	.value	0x15c
	.uleb128 0x1
	.long	.LASF560
	.value	0x15d
	.uleb128 0x1
	.long	.LASF561
	.value	0x15e
	.uleb128 0x1
	.long	.LASF562
	.value	0x15f
	.uleb128 0x1
	.long	.LASF563
	.value	0x160
	.uleb128 0x1
	.long	.LASF564
	.value	0x161
	.uleb128 0x1
	.long	.LASF565
	.value	0x162
	.uleb128 0x1
	.long	.LASF566
	.value	0x163
	.uleb128 0x1
	.long	.LASF567
	.value	0x164
	.uleb128 0x1
	.long	.LASF568
	.value	0x165
	.uleb128 0x1
	.long	.LASF569
	.value	0x166
	.uleb128 0x1
	.long	.LASF570
	.value	0x167
	.uleb128 0x1
	.long	.LASF571
	.value	0x168
	.uleb128 0x1
	.long	.LASF572
	.value	0x169
	.uleb128 0x1
	.long	.LASF573
	.value	0x16a
	.uleb128 0x1
	.long	.LASF574
	.value	0x16b
	.uleb128 0x1
	.long	.LASF575
	.value	0x16c
	.uleb128 0x1
	.long	.LASF576
	.value	0x16d
	.uleb128 0x1
	.long	.LASF577
	.value	0x16e
	.uleb128 0x1
	.long	.LASF578
	.value	0x16f
	.uleb128 0x1
	.long	.LASF579
	.value	0x170
	.uleb128 0x1
	.long	.LASF580
	.value	0x171
	.uleb128 0x1
	.long	.LASF581
	.value	0x172
	.uleb128 0x1
	.long	.LASF582
	.value	0x173
	.uleb128 0x1
	.long	.LASF583
	.value	0x174
	.uleb128 0x1
	.long	.LASF584
	.value	0x175
	.uleb128 0x1
	.long	.LASF585
	.value	0x176
	.uleb128 0x1
	.long	.LASF586
	.value	0x177
	.uleb128 0x1
	.long	.LASF587
	.value	0x178
	.uleb128 0x1
	.long	.LASF588
	.value	0x179
	.uleb128 0x1
	.long	.LASF589
	.value	0x17a
	.uleb128 0x1
	.long	.LASF590
	.value	0x17b
	.uleb128 0x1
	.long	.LASF591
	.value	0x17c
	.uleb128 0x1
	.long	.LASF592
	.value	0x17d
	.uleb128 0x1
	.long	.LASF593
	.value	0x17e
	.uleb128 0x1
	.long	.LASF594
	.value	0x17f
	.uleb128 0x1
	.long	.LASF595
	.value	0x180
	.uleb128 0x1
	.long	.LASF596
	.value	0x181
	.uleb128 0x1
	.long	.LASF597
	.value	0x182
	.uleb128 0x1
	.long	.LASF598
	.value	0x183
	.uleb128 0x1
	.long	.LASF599
	.value	0x184
	.uleb128 0x1
	.long	.LASF600
	.value	0x185
	.uleb128 0x1
	.long	.LASF601
	.value	0x186
	.uleb128 0x1
	.long	.LASF602
	.value	0x187
	.uleb128 0x1
	.long	.LASF603
	.value	0x188
	.uleb128 0x1
	.long	.LASF604
	.value	0x189
	.uleb128 0x1
	.long	.LASF605
	.value	0x18a
	.uleb128 0x1
	.long	.LASF606
	.value	0x18b
	.uleb128 0x1
	.long	.LASF607
	.value	0x18c
	.uleb128 0x1
	.long	.LASF608
	.value	0x18d
	.uleb128 0x1
	.long	.LASF609
	.value	0x18e
	.uleb128 0x1
	.long	.LASF610
	.value	0x18f
	.uleb128 0x1
	.long	.LASF611
	.value	0x190
	.uleb128 0x1
	.long	.LASF612
	.value	0x191
	.uleb128 0x1
	.long	.LASF613
	.value	0x192
	.uleb128 0x1
	.long	.LASF614
	.value	0x193
	.uleb128 0x1
	.long	.LASF615
	.value	0x194
	.uleb128 0x1
	.long	.LASF616
	.value	0x195
	.uleb128 0x1
	.long	.LASF617
	.value	0x196
	.uleb128 0x1
	.long	.LASF618
	.value	0x197
	.uleb128 0x1
	.long	.LASF619
	.value	0x198
	.uleb128 0x1
	.long	.LASF620
	.value	0x199
	.uleb128 0x1
	.long	.LASF621
	.value	0x19a
	.uleb128 0x1
	.long	.LASF622
	.value	0x19b
	.uleb128 0x1
	.long	.LASF623
	.value	0x19c
	.uleb128 0x1
	.long	.LASF624
	.value	0x19d
	.uleb128 0x1
	.long	.LASF625
	.value	0x19e
	.uleb128 0x1
	.long	.LASF626
	.value	0x19f
	.uleb128 0x1
	.long	.LASF627
	.value	0x1a0
	.uleb128 0x1
	.long	.LASF628
	.value	0x1a1
	.uleb128 0x1
	.long	.LASF629
	.value	0x1a2
	.uleb128 0x1
	.long	.LASF630
	.value	0x1a3
	.uleb128 0x1
	.long	.LASF631
	.value	0x1a4
	.uleb128 0x1
	.long	.LASF632
	.value	0x1a5
	.uleb128 0x1
	.long	.LASF633
	.value	0x1a6
	.uleb128 0x1
	.long	.LASF634
	.value	0x1a7
	.uleb128 0x1
	.long	.LASF635
	.value	0x1a8
	.uleb128 0x1
	.long	.LASF636
	.value	0x1a9
	.uleb128 0x1
	.long	.LASF637
	.value	0x1aa
	.uleb128 0x1
	.long	.LASF638
	.value	0x1ab
	.uleb128 0x1
	.long	.LASF639
	.value	0x1ac
	.uleb128 0x1
	.long	.LASF640
	.value	0x1ad
	.uleb128 0x1
	.long	.LASF641
	.value	0x1ae
	.uleb128 0x1
	.long	.LASF642
	.value	0x1af
	.uleb128 0x1
	.long	.LASF643
	.value	0x1b0
	.uleb128 0x1
	.long	.LASF644
	.value	0x1b1
	.uleb128 0x1
	.long	.LASF645
	.value	0x1b2
	.uleb128 0x1
	.long	.LASF646
	.value	0x1b3
	.uleb128 0x1
	.long	.LASF647
	.value	0x1b4
	.uleb128 0x1
	.long	.LASF648
	.value	0x1b5
	.uleb128 0x1
	.long	.LASF649
	.value	0x1b6
	.uleb128 0x1
	.long	.LASF650
	.value	0x1b7
	.uleb128 0x1
	.long	.LASF651
	.value	0x1b8
	.uleb128 0x1
	.long	.LASF652
	.value	0x1b9
	.uleb128 0x1
	.long	.LASF653
	.value	0x1ba
	.uleb128 0x1
	.long	.LASF654
	.value	0x1bb
	.uleb128 0x1
	.long	.LASF655
	.value	0x1bc
	.uleb128 0x1
	.long	.LASF656
	.value	0x1bd
	.uleb128 0x1
	.long	.LASF657
	.value	0x1be
	.uleb128 0x1
	.long	.LASF658
	.value	0x1bf
	.uleb128 0x1
	.long	.LASF659
	.value	0x1c0
	.uleb128 0x1
	.long	.LASF660
	.value	0x1c1
	.uleb128 0x1
	.long	.LASF661
	.value	0x1c2
	.uleb128 0x1
	.long	.LASF662
	.value	0x1c3
	.uleb128 0x1
	.long	.LASF663
	.value	0x1c4
	.uleb128 0x1
	.long	.LASF664
	.value	0x1c5
	.uleb128 0x1
	.long	.LASF665
	.value	0x1c6
	.uleb128 0x1
	.long	.LASF666
	.value	0x1c7
	.uleb128 0x1
	.long	.LASF667
	.value	0x1c8
	.uleb128 0x1
	.long	.LASF668
	.value	0x1c9
	.uleb128 0x1
	.long	.LASF669
	.value	0x1ca
	.uleb128 0x1
	.long	.LASF670
	.value	0x1cb
	.uleb128 0x1
	.long	.LASF671
	.value	0x1cc
	.uleb128 0x1
	.long	.LASF672
	.value	0x1cd
	.uleb128 0x1
	.long	.LASF673
	.value	0x1ce
	.uleb128 0x1
	.long	.LASF674
	.value	0x1cf
	.uleb128 0x1
	.long	.LASF675
	.value	0x1d0
	.uleb128 0x1
	.long	.LASF676
	.value	0x1d1
	.uleb128 0x1
	.long	.LASF677
	.value	0x1d2
	.uleb128 0x1
	.long	.LASF678
	.value	0x1d3
	.uleb128 0x1
	.long	.LASF679
	.value	0x1d4
	.uleb128 0x1
	.long	.LASF680
	.value	0x1d5
	.uleb128 0x1
	.long	.LASF681
	.value	0x1d6
	.uleb128 0x1
	.long	.LASF682
	.value	0x1d7
	.uleb128 0x1
	.long	.LASF683
	.value	0x1d8
	.uleb128 0x1
	.long	.LASF684
	.value	0x1d9
	.uleb128 0x1
	.long	.LASF685
	.value	0x1da
	.uleb128 0x1
	.long	.LASF686
	.value	0x1db
	.uleb128 0x1
	.long	.LASF687
	.value	0x1dc
	.uleb128 0x1
	.long	.LASF688
	.value	0x1dd
	.uleb128 0x1
	.long	.LASF689
	.value	0x1de
	.uleb128 0x1
	.long	.LASF690
	.value	0x1df
	.uleb128 0x1
	.long	.LASF691
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF692
	.value	0x1e1
	.uleb128 0x1
	.long	.LASF693
	.value	0x1e2
	.uleb128 0x1
	.long	.LASF694
	.value	0x1e3
	.uleb128 0x1
	.long	.LASF695
	.value	0x1e4
	.uleb128 0x1
	.long	.LASF696
	.value	0x1e5
	.uleb128 0x1
	.long	.LASF697
	.value	0x1e6
	.uleb128 0x1
	.long	.LASF698
	.value	0x1e7
	.uleb128 0x1
	.long	.LASF699
	.value	0x1e8
	.uleb128 0x1
	.long	.LASF700
	.value	0x1e9
	.uleb128 0x1
	.long	.LASF701
	.value	0x1ea
	.uleb128 0x1
	.long	.LASF702
	.value	0x1eb
	.uleb128 0x1
	.long	.LASF703
	.value	0x1ec
	.uleb128 0x1
	.long	.LASF704
	.value	0x1ed
	.uleb128 0x1
	.long	.LASF705
	.value	0x1ee
	.uleb128 0x1
	.long	.LASF706
	.value	0x1ef
	.uleb128 0x1
	.long	.LASF707
	.value	0x1f0
	.uleb128 0x1
	.long	.LASF708
	.value	0x1f1
	.uleb128 0x1
	.long	.LASF709
	.value	0x1f2
	.uleb128 0x1
	.long	.LASF710
	.value	0x1f3
	.uleb128 0x1
	.long	.LASF711
	.value	0x1f4
	.uleb128 0x1
	.long	.LASF712
	.value	0x1f5
	.uleb128 0x1
	.long	.LASF713
	.value	0x1f6
	.uleb128 0x1
	.long	.LASF714
	.value	0x1f7
	.uleb128 0x1
	.long	.LASF715
	.value	0x1f8
	.uleb128 0x1
	.long	.LASF716
	.value	0x1f9
	.uleb128 0x1
	.long	.LASF717
	.value	0x1fa
	.uleb128 0x1
	.long	.LASF718
	.value	0x1fb
	.uleb128 0x1
	.long	.LASF719
	.value	0x1fc
	.uleb128 0x1
	.long	.LASF720
	.value	0x1fd
	.uleb128 0x1
	.long	.LASF721
	.value	0x1fe
	.uleb128 0x1
	.long	.LASF722
	.value	0x1ff
	.uleb128 0x1
	.long	.LASF723
	.value	0x200
	.uleb128 0x1
	.long	.LASF724
	.value	0x201
	.uleb128 0x1
	.long	.LASF725
	.value	0x202
	.uleb128 0x1
	.long	.LASF726
	.value	0x203
	.uleb128 0x1
	.long	.LASF727
	.value	0x204
	.uleb128 0x1
	.long	.LASF728
	.value	0x205
	.uleb128 0x1
	.long	.LASF729
	.value	0x206
	.uleb128 0x1
	.long	.LASF730
	.value	0x207
	.uleb128 0x1
	.long	.LASF731
	.value	0x208
	.uleb128 0x1
	.long	.LASF732
	.value	0x209
	.uleb128 0x1
	.long	.LASF733
	.value	0x20a
	.uleb128 0x1
	.long	.LASF734
	.value	0x20b
	.uleb128 0x1
	.long	.LASF735
	.value	0x20c
	.uleb128 0x1
	.long	.LASF736
	.value	0x20d
	.uleb128 0x1
	.long	.LASF737
	.value	0x20e
	.uleb128 0x1
	.long	.LASF738
	.value	0x20f
	.uleb128 0x1
	.long	.LASF739
	.value	0x210
	.uleb128 0x1
	.long	.LASF740
	.value	0x211
	.uleb128 0x1
	.long	.LASF741
	.value	0x212
	.uleb128 0x1
	.long	.LASF742
	.value	0x213
	.uleb128 0x1
	.long	.LASF743
	.value	0x214
	.uleb128 0x1
	.long	.LASF744
	.value	0x215
	.uleb128 0x1
	.long	.LASF745
	.value	0x216
	.uleb128 0x1
	.long	.LASF746
	.value	0x217
	.uleb128 0x1
	.long	.LASF747
	.value	0x218
	.uleb128 0x1
	.long	.LASF748
	.value	0x219
	.uleb128 0x1
	.long	.LASF749
	.value	0x21a
	.uleb128 0x1
	.long	.LASF750
	.value	0x21b
	.uleb128 0x1
	.long	.LASF751
	.value	0x21c
	.uleb128 0x1
	.long	.LASF752
	.value	0x21d
	.uleb128 0x1
	.long	.LASF753
	.value	0x21e
	.uleb128 0x1
	.long	.LASF754
	.value	0x21f
	.uleb128 0x1
	.long	.LASF755
	.value	0x220
	.uleb128 0x1
	.long	.LASF756
	.value	0x221
	.uleb128 0x1
	.long	.LASF757
	.value	0x222
	.uleb128 0x1
	.long	.LASF758
	.value	0x223
	.uleb128 0x1
	.long	.LASF759
	.value	0x224
	.uleb128 0x1
	.long	.LASF760
	.value	0x225
	.uleb128 0x1
	.long	.LASF761
	.value	0x226
	.uleb128 0x1
	.long	.LASF762
	.value	0x227
	.uleb128 0x1
	.long	.LASF763
	.value	0x228
	.uleb128 0x1
	.long	.LASF764
	.value	0x229
	.uleb128 0x1
	.long	.LASF765
	.value	0x22a
	.uleb128 0x1
	.long	.LASF766
	.value	0x22b
	.uleb128 0x1
	.long	.LASF767
	.value	0x22c
	.uleb128 0x1
	.long	.LASF768
	.value	0x22d
	.uleb128 0x1
	.long	.LASF769
	.value	0x22e
	.uleb128 0x1
	.long	.LASF770
	.value	0x22f
	.uleb128 0x1
	.long	.LASF771
	.value	0x230
	.uleb128 0x1
	.long	.LASF772
	.value	0x231
	.uleb128 0x1
	.long	.LASF773
	.value	0x232
	.uleb128 0x1
	.long	.LASF774
	.value	0x233
	.uleb128 0x1
	.long	.LASF775
	.value	0x234
	.uleb128 0x1
	.long	.LASF776
	.value	0x235
	.uleb128 0x1
	.long	.LASF777
	.value	0x236
	.uleb128 0x1
	.long	.LASF778
	.value	0x237
	.uleb128 0x1
	.long	.LASF779
	.value	0x238
	.uleb128 0x1
	.long	.LASF780
	.value	0x239
	.uleb128 0x1
	.long	.LASF781
	.value	0x23a
	.uleb128 0x1
	.long	.LASF782
	.value	0x23b
	.uleb128 0x1
	.long	.LASF783
	.value	0x23c
	.uleb128 0x1
	.long	.LASF784
	.value	0x23d
	.uleb128 0x1
	.long	.LASF785
	.value	0x23e
	.uleb128 0x1
	.long	.LASF786
	.value	0x23f
	.uleb128 0x1
	.long	.LASF787
	.value	0x240
	.uleb128 0x1
	.long	.LASF788
	.value	0x241
	.uleb128 0x1
	.long	.LASF789
	.value	0x242
	.uleb128 0x1
	.long	.LASF790
	.value	0x243
	.uleb128 0x1
	.long	.LASF791
	.value	0x244
	.uleb128 0x1
	.long	.LASF792
	.value	0x245
	.uleb128 0x1
	.long	.LASF793
	.value	0x246
	.uleb128 0x1
	.long	.LASF794
	.value	0x247
	.uleb128 0x1
	.long	.LASF795
	.value	0x248
	.uleb128 0x1
	.long	.LASF796
	.value	0x249
	.uleb128 0x1
	.long	.LASF797
	.value	0x24a
	.uleb128 0x1
	.long	.LASF798
	.value	0x24b
	.uleb128 0x1
	.long	.LASF799
	.value	0x24c
	.uleb128 0x1
	.long	.LASF800
	.value	0x24d
	.uleb128 0x1
	.long	.LASF801
	.value	0x24e
	.uleb128 0x1
	.long	.LASF802
	.value	0x24f
	.uleb128 0x1
	.long	.LASF803
	.value	0x250
	.uleb128 0x1
	.long	.LASF804
	.value	0x251
	.uleb128 0x1
	.long	.LASF805
	.value	0x252
	.uleb128 0x1
	.long	.LASF806
	.value	0x253
	.uleb128 0x1
	.long	.LASF807
	.value	0x254
	.uleb128 0x1
	.long	.LASF808
	.value	0x255
	.uleb128 0x1
	.long	.LASF809
	.value	0x256
	.uleb128 0x1
	.long	.LASF810
	.value	0x257
	.uleb128 0x1
	.long	.LASF811
	.value	0x258
	.uleb128 0x1
	.long	.LASF812
	.value	0x259
	.uleb128 0x1
	.long	.LASF813
	.value	0x25a
	.uleb128 0x1
	.long	.LASF814
	.value	0x25b
	.uleb128 0x1
	.long	.LASF815
	.value	0x25c
	.uleb128 0x1
	.long	.LASF816
	.value	0x25d
	.uleb128 0x1
	.long	.LASF817
	.value	0x25e
	.uleb128 0x1
	.long	.LASF818
	.value	0x25f
	.uleb128 0x1
	.long	.LASF819
	.value	0x260
	.uleb128 0x1
	.long	.LASF820
	.value	0x261
	.uleb128 0x1
	.long	.LASF821
	.value	0x262
	.uleb128 0x1
	.long	.LASF822
	.value	0x263
	.uleb128 0x1
	.long	.LASF823
	.value	0x264
	.uleb128 0x1
	.long	.LASF824
	.value	0x265
	.uleb128 0x1
	.long	.LASF825
	.value	0x266
	.uleb128 0x1
	.long	.LASF826
	.value	0x267
	.uleb128 0x1
	.long	.LASF827
	.value	0x268
	.uleb128 0x1
	.long	.LASF828
	.value	0x269
	.uleb128 0x1
	.long	.LASF829
	.value	0x26a
	.uleb128 0x1
	.long	.LASF830
	.value	0x26b
	.uleb128 0x1
	.long	.LASF831
	.value	0x26c
	.uleb128 0x1
	.long	.LASF832
	.value	0x26d
	.uleb128 0x1
	.long	.LASF833
	.value	0x26e
	.uleb128 0x1
	.long	.LASF834
	.value	0x26f
	.uleb128 0x1
	.long	.LASF835
	.value	0x270
	.uleb128 0x1
	.long	.LASF836
	.value	0x271
	.uleb128 0x1
	.long	.LASF837
	.value	0x272
	.uleb128 0x1
	.long	.LASF838
	.value	0x273
	.uleb128 0x1
	.long	.LASF839
	.value	0x274
	.uleb128 0x1
	.long	.LASF840
	.value	0x275
	.uleb128 0x1
	.long	.LASF841
	.value	0x276
	.uleb128 0x1
	.long	.LASF842
	.value	0x277
	.uleb128 0x1
	.long	.LASF843
	.value	0x278
	.uleb128 0x1
	.long	.LASF844
	.value	0x279
	.uleb128 0x1
	.long	.LASF845
	.value	0x27a
	.uleb128 0x1
	.long	.LASF846
	.value	0x27b
	.uleb128 0x1
	.long	.LASF847
	.value	0x27c
	.uleb128 0x1
	.long	.LASF848
	.value	0x27d
	.uleb128 0x1
	.long	.LASF849
	.value	0x27e
	.uleb128 0x1
	.long	.LASF850
	.value	0x27f
	.uleb128 0x1
	.long	.LASF851
	.value	0x280
	.uleb128 0x1
	.long	.LASF852
	.value	0x281
	.uleb128 0x1
	.long	.LASF853
	.value	0x282
	.uleb128 0x1
	.long	.LASF854
	.value	0x283
	.uleb128 0x1
	.long	.LASF855
	.value	0x284
	.uleb128 0x1
	.long	.LASF856
	.value	0x285
	.uleb128 0x1
	.long	.LASF857
	.value	0x286
	.uleb128 0x1
	.long	.LASF858
	.value	0x287
	.uleb128 0x1
	.long	.LASF859
	.value	0x288
	.uleb128 0x1
	.long	.LASF860
	.value	0x289
	.uleb128 0x1
	.long	.LASF861
	.value	0x28a
	.uleb128 0x1
	.long	.LASF862
	.value	0x28b
	.uleb128 0x1
	.long	.LASF863
	.value	0x28c
	.uleb128 0x1
	.long	.LASF864
	.value	0x28d
	.uleb128 0x1
	.long	.LASF865
	.value	0x28e
	.uleb128 0x1
	.long	.LASF866
	.value	0x28f
	.uleb128 0x1
	.long	.LASF867
	.value	0x290
	.uleb128 0x1
	.long	.LASF868
	.value	0x291
	.uleb128 0x1
	.long	.LASF869
	.value	0x292
	.uleb128 0x1
	.long	.LASF870
	.value	0x293
	.uleb128 0x1
	.long	.LASF871
	.value	0x294
	.uleb128 0x1
	.long	.LASF872
	.value	0x295
	.uleb128 0x1
	.long	.LASF873
	.value	0x296
	.uleb128 0x1
	.long	.LASF874
	.value	0x297
	.uleb128 0x1
	.long	.LASF875
	.value	0x298
	.uleb128 0x1
	.long	.LASF876
	.value	0x299
	.uleb128 0x1
	.long	.LASF877
	.value	0x29a
	.uleb128 0x1
	.long	.LASF878
	.value	0x29b
	.uleb128 0x1
	.long	.LASF879
	.value	0x29c
	.uleb128 0x1
	.long	.LASF880
	.value	0x29d
	.uleb128 0x1
	.long	.LASF881
	.value	0x29e
	.uleb128 0x1
	.long	.LASF882
	.value	0x29f
	.uleb128 0x1
	.long	.LASF883
	.value	0x2a0
	.uleb128 0x1
	.long	.LASF884
	.value	0x2a1
	.uleb128 0x1
	.long	.LASF885
	.value	0x2a2
	.uleb128 0x1
	.long	.LASF886
	.value	0x2a3
	.uleb128 0x1
	.long	.LASF887
	.value	0x2a4
	.uleb128 0x1
	.long	.LASF888
	.value	0x2a5
	.uleb128 0x1
	.long	.LASF889
	.value	0x2a6
	.uleb128 0x1
	.long	.LASF890
	.value	0x2a7
	.uleb128 0x1
	.long	.LASF891
	.value	0x2a8
	.uleb128 0x1
	.long	.LASF892
	.value	0x2a9
	.uleb128 0x1
	.long	.LASF893
	.value	0x2aa
	.uleb128 0x1
	.long	.LASF894
	.value	0x2ab
	.uleb128 0x1
	.long	.LASF895
	.value	0x2ac
	.uleb128 0x1
	.long	.LASF896
	.value	0x2ad
	.uleb128 0x1
	.long	.LASF897
	.value	0x2ae
	.uleb128 0x1
	.long	.LASF898
	.value	0x2af
	.uleb128 0x1
	.long	.LASF899
	.value	0x2b0
	.uleb128 0x1
	.long	.LASF900
	.value	0x2b1
	.uleb128 0x1
	.long	.LASF901
	.value	0x2b2
	.uleb128 0x1
	.long	.LASF902
	.value	0x2b3
	.uleb128 0x1
	.long	.LASF903
	.value	0x2b4
	.uleb128 0x1
	.long	.LASF904
	.value	0x2b5
	.uleb128 0x1
	.long	.LASF905
	.value	0x2b6
	.uleb128 0x1
	.long	.LASF906
	.value	0x2b7
	.uleb128 0x1
	.long	.LASF907
	.value	0x2b8
	.uleb128 0x1
	.long	.LASF908
	.value	0x2b9
	.uleb128 0x1
	.long	.LASF909
	.value	0x2ba
	.uleb128 0x1
	.long	.LASF910
	.value	0x2bb
	.uleb128 0x1
	.long	.LASF911
	.value	0x2bc
	.uleb128 0x1
	.long	.LASF912
	.value	0x2bd
	.uleb128 0x1
	.long	.LASF913
	.value	0x2be
	.uleb128 0x1
	.long	.LASF914
	.value	0x2bf
	.uleb128 0x1
	.long	.LASF915
	.value	0x2c0
	.uleb128 0x1
	.long	.LASF916
	.value	0x2c1
	.uleb128 0x1
	.long	.LASF917
	.value	0x2c2
	.uleb128 0x1
	.long	.LASF918
	.value	0x2c3
	.uleb128 0x1
	.long	.LASF919
	.value	0x2c4
	.uleb128 0x1
	.long	.LASF920
	.value	0x2c5
	.uleb128 0x1
	.long	.LASF921
	.value	0x2c6
	.uleb128 0x1
	.long	.LASF922
	.value	0x2c7
	.uleb128 0x1
	.long	.LASF923
	.value	0x2c8
	.uleb128 0x1
	.long	.LASF924
	.value	0x2c9
	.uleb128 0x1
	.long	.LASF925
	.value	0x2ca
	.uleb128 0x1
	.long	.LASF926
	.value	0x2cb
	.uleb128 0x1
	.long	.LASF927
	.value	0x2cc
	.uleb128 0x1
	.long	.LASF928
	.value	0x2cd
	.uleb128 0x1
	.long	.LASF929
	.value	0x2ce
	.uleb128 0x1
	.long	.LASF930
	.value	0x2cf
	.uleb128 0x1
	.long	.LASF931
	.value	0x2d0
	.uleb128 0x1
	.long	.LASF932
	.value	0x2d1
	.uleb128 0x1
	.long	.LASF933
	.value	0x2d2
	.uleb128 0x1
	.long	.LASF934
	.value	0x2d3
	.uleb128 0x1
	.long	.LASF935
	.value	0x2d4
	.uleb128 0x1
	.long	.LASF936
	.value	0x2d5
	.uleb128 0x1
	.long	.LASF937
	.value	0x2d6
	.uleb128 0x1
	.long	.LASF938
	.value	0x2d7
	.uleb128 0x1
	.long	.LASF939
	.value	0x2d8
	.uleb128 0x1
	.long	.LASF940
	.value	0x2d9
	.uleb128 0x1
	.long	.LASF941
	.value	0x2da
	.uleb128 0x1
	.long	.LASF942
	.value	0x2db
	.uleb128 0x1
	.long	.LASF943
	.value	0x2dc
	.uleb128 0x1
	.long	.LASF944
	.value	0x2dd
	.uleb128 0x1
	.long	.LASF945
	.value	0x2de
	.uleb128 0x1
	.long	.LASF946
	.value	0x2df
	.uleb128 0x1
	.long	.LASF947
	.value	0x2e0
	.uleb128 0x1
	.long	.LASF948
	.value	0x2e1
	.uleb128 0x1
	.long	.LASF949
	.value	0x2e2
	.uleb128 0x1
	.long	.LASF950
	.value	0x2e3
	.uleb128 0x1
	.long	.LASF951
	.value	0x2e4
	.uleb128 0x1
	.long	.LASF952
	.value	0x2e5
	.uleb128 0x1
	.long	.LASF953
	.value	0x2e6
	.uleb128 0x1
	.long	.LASF954
	.value	0x2e7
	.uleb128 0x1
	.long	.LASF955
	.value	0x2e8
	.uleb128 0x1
	.long	.LASF956
	.value	0x2e9
	.uleb128 0x1
	.long	.LASF957
	.value	0x2ea
	.uleb128 0x1
	.long	.LASF958
	.value	0x2eb
	.uleb128 0x1
	.long	.LASF959
	.value	0x2ec
	.uleb128 0x1
	.long	.LASF960
	.value	0x2ed
	.uleb128 0x1
	.long	.LASF961
	.value	0x2ee
	.uleb128 0x1
	.long	.LASF962
	.value	0x2ef
	.uleb128 0x1
	.long	.LASF963
	.value	0x2f0
	.uleb128 0x1
	.long	.LASF964
	.value	0x2f1
	.uleb128 0x1
	.long	.LASF965
	.value	0x2f2
	.uleb128 0x1
	.long	.LASF966
	.value	0x2f3
	.uleb128 0x1
	.long	.LASF967
	.value	0x2f4
	.uleb128 0x1
	.long	.LASF968
	.value	0x2f5
	.uleb128 0x1
	.long	.LASF969
	.value	0x2f6
	.uleb128 0x1
	.long	.LASF970
	.value	0x2f7
	.uleb128 0x1
	.long	.LASF971
	.value	0x2f8
	.uleb128 0x1
	.long	.LASF972
	.value	0x2f9
	.uleb128 0x1
	.long	.LASF973
	.value	0x2fa
	.uleb128 0x1
	.long	.LASF974
	.value	0x2fb
	.uleb128 0x1
	.long	.LASF975
	.value	0x2fc
	.uleb128 0x1
	.long	.LASF976
	.value	0x2fd
	.uleb128 0x1
	.long	.LASF977
	.value	0x2fe
	.uleb128 0x1
	.long	.LASF978
	.value	0x2ff
	.uleb128 0x1
	.long	.LASF979
	.value	0x300
	.uleb128 0x1
	.long	.LASF980
	.value	0x301
	.uleb128 0x1
	.long	.LASF981
	.value	0x302
	.uleb128 0x1
	.long	.LASF982
	.value	0x303
	.uleb128 0x1
	.long	.LASF983
	.value	0x304
	.uleb128 0x1
	.long	.LASF984
	.value	0x305
	.uleb128 0x1
	.long	.LASF985
	.value	0x306
	.uleb128 0x1
	.long	.LASF986
	.value	0x307
	.uleb128 0x1
	.long	.LASF987
	.value	0x308
	.uleb128 0x1
	.long	.LASF988
	.value	0x309
	.uleb128 0x1
	.long	.LASF989
	.value	0x30a
	.uleb128 0x1
	.long	.LASF990
	.value	0x30b
	.uleb128 0x1
	.long	.LASF991
	.value	0x30c
	.uleb128 0x1
	.long	.LASF992
	.value	0x30d
	.uleb128 0x1
	.long	.LASF993
	.value	0x30e
	.uleb128 0x1
	.long	.LASF994
	.value	0x30f
	.uleb128 0x1
	.long	.LASF995
	.value	0x310
	.uleb128 0x1
	.long	.LASF996
	.value	0x311
	.uleb128 0x1
	.long	.LASF997
	.value	0x312
	.uleb128 0x1
	.long	.LASF998
	.value	0x313
	.uleb128 0x1
	.long	.LASF999
	.value	0x314
	.uleb128 0x1
	.long	.LASF1000
	.value	0x315
	.uleb128 0x1
	.long	.LASF1001
	.value	0x316
	.uleb128 0x1
	.long	.LASF1002
	.value	0x317
	.uleb128 0x1
	.long	.LASF1003
	.value	0x318
	.uleb128 0x1
	.long	.LASF1004
	.value	0x319
	.uleb128 0x1
	.long	.LASF1005
	.value	0x31a
	.uleb128 0x1
	.long	.LASF1006
	.value	0x31b
	.uleb128 0x1
	.long	.LASF1007
	.value	0x31c
	.uleb128 0x1
	.long	.LASF1008
	.value	0x31d
	.uleb128 0x1
	.long	.LASF1009
	.value	0x31e
	.uleb128 0x1
	.long	.LASF1010
	.value	0x31f
	.uleb128 0x1
	.long	.LASF1011
	.value	0x320
	.uleb128 0x1
	.long	.LASF1012
	.value	0x321
	.uleb128 0x1
	.long	.LASF1013
	.value	0x322
	.uleb128 0x1
	.long	.LASF1014
	.value	0x323
	.uleb128 0x1
	.long	.LASF1015
	.value	0x324
	.uleb128 0x1
	.long	.LASF1016
	.value	0x325
	.uleb128 0x1
	.long	.LASF1017
	.value	0x326
	.uleb128 0x1
	.long	.LASF1018
	.value	0x327
	.uleb128 0x1
	.long	.LASF1019
	.value	0x328
	.uleb128 0x1
	.long	.LASF1020
	.value	0x329
	.uleb128 0x1
	.long	.LASF1021
	.value	0x32a
	.uleb128 0x1
	.long	.LASF1022
	.value	0x32b
	.uleb128 0x1
	.long	.LASF1023
	.value	0x32c
	.uleb128 0x1
	.long	.LASF1024
	.value	0x32d
	.uleb128 0x1
	.long	.LASF1025
	.value	0x32e
	.uleb128 0x1
	.long	.LASF1026
	.value	0x32f
	.uleb128 0x1
	.long	.LASF1027
	.value	0x330
	.uleb128 0x1
	.long	.LASF1028
	.value	0x331
	.uleb128 0x1
	.long	.LASF1029
	.value	0x332
	.uleb128 0x1
	.long	.LASF1030
	.value	0x333
	.uleb128 0x1
	.long	.LASF1031
	.value	0x334
	.uleb128 0x1
	.long	.LASF1032
	.value	0x335
	.uleb128 0x1
	.long	.LASF1033
	.value	0x336
	.uleb128 0x1
	.long	.LASF1034
	.value	0x337
	.uleb128 0x1
	.long	.LASF1035
	.value	0x338
	.uleb128 0x1
	.long	.LASF1036
	.value	0x339
	.uleb128 0x1
	.long	.LASF1037
	.value	0x33a
	.uleb128 0x1
	.long	.LASF1038
	.value	0x33b
	.uleb128 0x1
	.long	.LASF1039
	.value	0x33c
	.uleb128 0x1
	.long	.LASF1040
	.value	0x33d
	.uleb128 0x1
	.long	.LASF1041
	.value	0x33e
	.uleb128 0x1
	.long	.LASF1042
	.value	0x33f
	.uleb128 0x1
	.long	.LASF1043
	.value	0x340
	.uleb128 0x1
	.long	.LASF1044
	.value	0x341
	.uleb128 0x1
	.long	.LASF1045
	.value	0x342
	.uleb128 0x1
	.long	.LASF1046
	.value	0x343
	.uleb128 0x1
	.long	.LASF1047
	.value	0x344
	.uleb128 0x1
	.long	.LASF1048
	.value	0x345
	.uleb128 0x1
	.long	.LASF1049
	.value	0x346
	.uleb128 0x1
	.long	.LASF1050
	.value	0x347
	.uleb128 0x1
	.long	.LASF1051
	.value	0x348
	.uleb128 0x1
	.long	.LASF1052
	.value	0x349
	.uleb128 0x1
	.long	.LASF1053
	.value	0x34a
	.uleb128 0x1
	.long	.LASF1054
	.value	0x34b
	.uleb128 0x1
	.long	.LASF1055
	.value	0x34c
	.uleb128 0x1
	.long	.LASF1056
	.value	0x34d
	.uleb128 0x1
	.long	.LASF1057
	.value	0x34e
	.uleb128 0x1
	.long	.LASF1058
	.value	0x34f
	.uleb128 0x1
	.long	.LASF1059
	.value	0x350
	.uleb128 0x1
	.long	.LASF1060
	.value	0x351
	.uleb128 0x1
	.long	.LASF1061
	.value	0x352
	.uleb128 0x1
	.long	.LASF1062
	.value	0x353
	.uleb128 0x1
	.long	.LASF1063
	.value	0x354
	.uleb128 0x1
	.long	.LASF1064
	.value	0x355
	.uleb128 0x1
	.long	.LASF1065
	.value	0x356
	.uleb128 0x1
	.long	.LASF1066
	.value	0x357
	.uleb128 0x1
	.long	.LASF1067
	.value	0x358
	.uleb128 0x1
	.long	.LASF1068
	.value	0x359
	.uleb128 0x1
	.long	.LASF1069
	.value	0x35a
	.uleb128 0x1
	.long	.LASF1070
	.value	0x35b
	.uleb128 0x1
	.long	.LASF1071
	.value	0x35c
	.uleb128 0x1
	.long	.LASF1072
	.value	0x35d
	.uleb128 0x1
	.long	.LASF1073
	.value	0x35e
	.uleb128 0x1
	.long	.LASF1074
	.value	0x35f
	.uleb128 0x1
	.long	.LASF1075
	.value	0x360
	.uleb128 0x1
	.long	.LASF1076
	.value	0x361
	.uleb128 0x1
	.long	.LASF1077
	.value	0x362
	.uleb128 0x1
	.long	.LASF1078
	.value	0x363
	.uleb128 0x1
	.long	.LASF1079
	.value	0x364
	.uleb128 0x1
	.long	.LASF1080
	.value	0x365
	.uleb128 0x1
	.long	.LASF1081
	.value	0x366
	.uleb128 0x1
	.long	.LASF1082
	.value	0x367
	.uleb128 0x1
	.long	.LASF1083
	.value	0x368
	.uleb128 0x1
	.long	.LASF1084
	.value	0x369
	.uleb128 0x1
	.long	.LASF1085
	.value	0x36a
	.uleb128 0x1
	.long	.LASF1086
	.value	0x36b
	.uleb128 0x1
	.long	.LASF1087
	.value	0x36c
	.uleb128 0x1
	.long	.LASF1088
	.value	0x36d
	.uleb128 0x1
	.long	.LASF1089
	.value	0x36e
	.uleb128 0x1
	.long	.LASF1090
	.value	0x36f
	.uleb128 0x1
	.long	.LASF1091
	.value	0x370
	.uleb128 0x1
	.long	.LASF1092
	.value	0x371
	.uleb128 0x1
	.long	.LASF1093
	.value	0x372
	.uleb128 0x1
	.long	.LASF1094
	.value	0x373
	.uleb128 0x1
	.long	.LASF1095
	.value	0x374
	.uleb128 0x1
	.long	.LASF1096
	.value	0x375
	.uleb128 0x1
	.long	.LASF1097
	.value	0x376
	.uleb128 0x1
	.long	.LASF1098
	.value	0x377
	.uleb128 0x1
	.long	.LASF1099
	.value	0x378
	.uleb128 0x1
	.long	.LASF1100
	.value	0x379
	.uleb128 0x1
	.long	.LASF1101
	.value	0x37a
	.uleb128 0x1
	.long	.LASF1102
	.value	0x37b
	.uleb128 0x1
	.long	.LASF1103
	.value	0x37c
	.uleb128 0x1
	.long	.LASF1104
	.value	0x37d
	.uleb128 0x1
	.long	.LASF1105
	.value	0x37e
	.uleb128 0x1
	.long	.LASF1106
	.value	0x37f
	.uleb128 0x1
	.long	.LASF1107
	.value	0x380
	.uleb128 0x1
	.long	.LASF1108
	.value	0x381
	.uleb128 0x1
	.long	.LASF1109
	.value	0x382
	.uleb128 0x1
	.long	.LASF1110
	.value	0x383
	.uleb128 0x1
	.long	.LASF1111
	.value	0x384
	.uleb128 0x1
	.long	.LASF1112
	.value	0x385
	.uleb128 0x1
	.long	.LASF1113
	.value	0x386
	.uleb128 0x1
	.long	.LASF1114
	.value	0x387
	.uleb128 0x1
	.long	.LASF1115
	.value	0x388
	.uleb128 0x1
	.long	.LASF1116
	.value	0x389
	.uleb128 0x1
	.long	.LASF1117
	.value	0x38a
	.uleb128 0x1
	.long	.LASF1118
	.value	0x38b
	.uleb128 0x1
	.long	.LASF1119
	.value	0x38c
	.uleb128 0x1
	.long	.LASF1120
	.value	0x38d
	.uleb128 0x1
	.long	.LASF1121
	.value	0x38e
	.uleb128 0x1
	.long	.LASF1122
	.value	0x38f
	.uleb128 0x1
	.long	.LASF1123
	.value	0x390
	.uleb128 0x1
	.long	.LASF1124
	.value	0x391
	.uleb128 0x1
	.long	.LASF1125
	.value	0x392
	.uleb128 0x1
	.long	.LASF1126
	.value	0x393
	.uleb128 0x1
	.long	.LASF1127
	.value	0x394
	.uleb128 0x1
	.long	.LASF1128
	.value	0x395
	.uleb128 0x1
	.long	.LASF1129
	.value	0x396
	.uleb128 0x1
	.long	.LASF1130
	.value	0x397
	.uleb128 0x1
	.long	.LASF1131
	.value	0x398
	.uleb128 0x1
	.long	.LASF1132
	.value	0x399
	.uleb128 0x1
	.long	.LASF1133
	.value	0x39a
	.uleb128 0x1
	.long	.LASF1134
	.value	0x39b
	.uleb128 0x1
	.long	.LASF1135
	.value	0x39c
	.uleb128 0x1
	.long	.LASF1136
	.value	0x39d
	.uleb128 0x1
	.long	.LASF1137
	.value	0x39e
	.uleb128 0x1
	.long	.LASF1138
	.value	0x39f
	.uleb128 0x1
	.long	.LASF1139
	.value	0x3a0
	.uleb128 0x1
	.long	.LASF1140
	.value	0x3a1
	.uleb128 0x1
	.long	.LASF1141
	.value	0x3a2
	.uleb128 0x1
	.long	.LASF1142
	.value	0x3a3
	.uleb128 0x1
	.long	.LASF1143
	.value	0x3a4
	.uleb128 0x1
	.long	.LASF1144
	.value	0x3a5
	.uleb128 0x1
	.long	.LASF1145
	.value	0x3a6
	.uleb128 0x1
	.long	.LASF1146
	.value	0x3a7
	.uleb128 0x1
	.long	.LASF1147
	.value	0x3a8
	.uleb128 0x1
	.long	.LASF1148
	.value	0x3a9
	.uleb128 0x1
	.long	.LASF1149
	.value	0x3aa
	.uleb128 0x1
	.long	.LASF1150
	.value	0x3ab
	.uleb128 0x1
	.long	.LASF1151
	.value	0x3ac
	.uleb128 0x1
	.long	.LASF1152
	.value	0x3ad
	.uleb128 0x1
	.long	.LASF1153
	.value	0x3ae
	.uleb128 0x1
	.long	.LASF1154
	.value	0x3af
	.uleb128 0x1
	.long	.LASF1155
	.value	0x3b0
	.uleb128 0x1
	.long	.LASF1156
	.value	0x3b1
	.uleb128 0x1
	.long	.LASF1157
	.value	0x3b2
	.uleb128 0x1
	.long	.LASF1158
	.value	0x3b3
	.uleb128 0x1
	.long	.LASF1159
	.value	0x3b4
	.uleb128 0x1
	.long	.LASF1160
	.value	0x3b5
	.uleb128 0x1
	.long	.LASF1161
	.value	0x3b6
	.uleb128 0x1
	.long	.LASF1162
	.value	0x3b7
	.uleb128 0x1
	.long	.LASF1163
	.value	0x3b8
	.uleb128 0x1
	.long	.LASF1164
	.value	0x3b9
	.uleb128 0x1
	.long	.LASF1165
	.value	0x3ba
	.uleb128 0x1
	.long	.LASF1166
	.value	0x3bb
	.uleb128 0x1
	.long	.LASF1167
	.value	0x3bc
	.uleb128 0x1
	.long	.LASF1168
	.value	0x3bd
	.uleb128 0x1
	.long	.LASF1169
	.value	0x3be
	.uleb128 0x1
	.long	.LASF1170
	.value	0x3bf
	.uleb128 0x1
	.long	.LASF1171
	.value	0x3c0
	.uleb128 0x1
	.long	.LASF1172
	.value	0x3c1
	.uleb128 0x1
	.long	.LASF1173
	.value	0x3c2
	.uleb128 0x1
	.long	.LASF1174
	.value	0x3c3
	.uleb128 0x1
	.long	.LASF1175
	.value	0x3c4
	.uleb128 0x1
	.long	.LASF1176
	.value	0x3c5
	.uleb128 0x1
	.long	.LASF1177
	.value	0x3c6
	.uleb128 0x1
	.long	.LASF1178
	.value	0x3c7
	.byte	0
	.uleb128 0x19
	.long	.LASF1179
	.byte	0x9
	.value	0x478
	.long	0x6c8
	.uleb128 0x24
	.byte	0x38
	.value	0x47b
	.long	0x20c4
	.uleb128 0x4
	.long	.LASF1180
	.byte	0x9
	.value	0x47d
	.byte	0xf
	.long	0x6bc
	.byte	0
	.uleb128 0x4
	.long	.LASF1181
	.byte	0x9
	.value	0x47e
	.byte	0xa
	.long	0x72
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1182
	.byte	0x9
	.value	0x47f
	.byte	0xa
	.long	0x72
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1183
	.byte	0x9
	.value	0x481
	.byte	0xf
	.long	0x27d
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1184
	.byte	0x9
	.value	0x482
	.byte	0x10
	.long	0x204d
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1185
	.byte	0x9
	.value	0x483
	.byte	0xa
	.long	0x72
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1186
	.byte	0x9
	.value	0x483
	.byte	0x11
	.long	0x72
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	.LASF1187
	.byte	0x9
	.value	0x484
	.long	0x2059
	.uleb128 0x2d
	.byte	0x7
	.byte	0x4
	.long	0x8e
	.byte	0x9
	.value	0x48b
	.byte	0xe
	.long	0x241c
	.uleb128 0x2
	.long	.LASF1188
	.byte	0
	.uleb128 0x2
	.long	.LASF1189
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1190
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1191
	.byte	0x3
	.uleb128 0x2
	.long	.LASF1192
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1194
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1195
	.byte	0x7
	.uleb128 0x2
	.long	.LASF1196
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1197
	.byte	0x9
	.uleb128 0x2
	.long	.LASF1198
	.byte	0xa
	.uleb128 0x2
	.long	.LASF1199
	.byte	0xb
	.uleb128 0x2
	.long	.LASF1200
	.byte	0xc
	.uleb128 0x2
	.long	.LASF1201
	.byte	0xd
	.uleb128 0x2
	.long	.LASF1202
	.byte	0xe
	.uleb128 0x2
	.long	.LASF1203
	.byte	0xf
	.uleb128 0x2
	.long	.LASF1204
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1205
	.byte	0x11
	.uleb128 0x2
	.long	.LASF1206
	.byte	0x12
	.uleb128 0x2
	.long	.LASF1207
	.byte	0x13
	.uleb128 0x2
	.long	.LASF1208
	.byte	0x14
	.uleb128 0x2
	.long	.LASF1209
	.byte	0x15
	.uleb128 0x2
	.long	.LASF1210
	.byte	0x16
	.uleb128 0x2
	.long	.LASF1211
	.byte	0x17
	.uleb128 0x2
	.long	.LASF1212
	.byte	0x18
	.uleb128 0x2
	.long	.LASF1213
	.byte	0x19
	.uleb128 0x2
	.long	.LASF1214
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF1215
	.byte	0x1b
	.uleb128 0x2
	.long	.LASF1216
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF1217
	.byte	0x1d
	.uleb128 0x2
	.long	.LASF1218
	.byte	0x1e
	.uleb128 0x2
	.long	.LASF1219
	.byte	0x1f
	.uleb128 0x2
	.long	.LASF1220
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1221
	.byte	0x21
	.uleb128 0x2
	.long	.LASF1222
	.byte	0x22
	.uleb128 0x2
	.long	.LASF1223
	.byte	0x23
	.uleb128 0x2
	.long	.LASF1224
	.byte	0x24
	.uleb128 0x2
	.long	.LASF1225
	.byte	0x25
	.uleb128 0x2
	.long	.LASF1226
	.byte	0x26
	.uleb128 0x2
	.long	.LASF1227
	.byte	0x27
	.uleb128 0x2
	.long	.LASF1228
	.byte	0x28
	.uleb128 0x2
	.long	.LASF1229
	.byte	0x29
	.uleb128 0x2
	.long	.LASF1230
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF1231
	.byte	0x2b
	.uleb128 0x2
	.long	.LASF1232
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF1233
	.byte	0x2d
	.uleb128 0x2
	.long	.LASF1234
	.byte	0x2e
	.uleb128 0x2
	.long	.LASF1235
	.byte	0x2f
	.uleb128 0x2
	.long	.LASF1236
	.byte	0x30
	.uleb128 0x2
	.long	.LASF1237
	.byte	0x31
	.uleb128 0x2
	.long	.LASF1238
	.byte	0x32
	.uleb128 0x2
	.long	.LASF1239
	.byte	0x33
	.uleb128 0x2
	.long	.LASF1240
	.byte	0x34
	.uleb128 0x2
	.long	.LASF1241
	.byte	0x35
	.uleb128 0x2
	.long	.LASF1242
	.byte	0x36
	.uleb128 0x2
	.long	.LASF1243
	.byte	0x37
	.uleb128 0x2
	.long	.LASF1244
	.byte	0x38
	.uleb128 0x2
	.long	.LASF1245
	.byte	0x39
	.uleb128 0x2
	.long	.LASF1246
	.byte	0x3a
	.uleb128 0x2
	.long	.LASF1247
	.byte	0x3b
	.uleb128 0x2
	.long	.LASF1248
	.byte	0x3c
	.uleb128 0x2
	.long	.LASF1249
	.byte	0x3d
	.uleb128 0x2
	.long	.LASF1250
	.byte	0x3e
	.uleb128 0x2
	.long	.LASF1251
	.byte	0x3f
	.uleb128 0x2
	.long	.LASF1252
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1253
	.byte	0x41
	.uleb128 0x2
	.long	.LASF1254
	.byte	0x42
	.uleb128 0x2
	.long	.LASF1255
	.byte	0x43
	.uleb128 0x2
	.long	.LASF1256
	.byte	0x44
	.uleb128 0x2
	.long	.LASF1257
	.byte	0x45
	.uleb128 0x2
	.long	.LASF1258
	.byte	0x46
	.uleb128 0x2
	.long	.LASF1259
	.byte	0x47
	.uleb128 0x2
	.long	.LASF1260
	.byte	0x48
	.uleb128 0x2
	.long	.LASF1261
	.byte	0x49
	.uleb128 0x2
	.long	.LASF1262
	.byte	0x4a
	.uleb128 0x2
	.long	.LASF1263
	.byte	0x4b
	.uleb128 0x2
	.long	.LASF1264
	.byte	0x4c
	.uleb128 0x2
	.long	.LASF1265
	.byte	0x4d
	.uleb128 0x2
	.long	.LASF1266
	.byte	0x4e
	.uleb128 0x2
	.long	.LASF1267
	.byte	0x4f
	.uleb128 0x2
	.long	.LASF1268
	.byte	0x50
	.uleb128 0x2
	.long	.LASF1269
	.byte	0x51
	.uleb128 0x2
	.long	.LASF1270
	.byte	0x52
	.uleb128 0x2
	.long	.LASF1271
	.byte	0x53
	.uleb128 0x2
	.long	.LASF1272
	.byte	0x54
	.uleb128 0x2
	.long	.LASF1273
	.byte	0x55
	.uleb128 0x2
	.long	.LASF1274
	.byte	0x56
	.uleb128 0x2
	.long	.LASF1275
	.byte	0x57
	.uleb128 0x2
	.long	.LASF1276
	.byte	0x58
	.uleb128 0x2
	.long	.LASF1277
	.byte	0x59
	.uleb128 0x2
	.long	.LASF1278
	.byte	0x5a
	.uleb128 0x2
	.long	.LASF1279
	.byte	0x5b
	.uleb128 0x2
	.long	.LASF1280
	.byte	0x5c
	.uleb128 0x2
	.long	.LASF1281
	.byte	0x5d
	.uleb128 0x2
	.long	.LASF1282
	.byte	0x5e
	.uleb128 0x2
	.long	.LASF1283
	.byte	0x5f
	.uleb128 0x2
	.long	.LASF1284
	.byte	0x60
	.uleb128 0x2
	.long	.LASF1285
	.byte	0x61
	.uleb128 0x2
	.long	.LASF1286
	.byte	0x62
	.uleb128 0x2
	.long	.LASF1287
	.byte	0x63
	.uleb128 0x2
	.long	.LASF1288
	.byte	0x64
	.uleb128 0x2
	.long	.LASF1289
	.byte	0x65
	.uleb128 0x2
	.long	.LASF1290
	.byte	0x66
	.uleb128 0x2
	.long	.LASF1291
	.byte	0x67
	.uleb128 0x2
	.long	.LASF1292
	.byte	0x68
	.uleb128 0x2
	.long	.LASF1293
	.byte	0x69
	.uleb128 0x2
	.long	.LASF1294
	.byte	0x6a
	.uleb128 0x2
	.long	.LASF1295
	.byte	0x6b
	.uleb128 0x2
	.long	.LASF1296
	.byte	0x6c
	.uleb128 0x2
	.long	.LASF1297
	.byte	0x6d
	.uleb128 0x2
	.long	.LASF1298
	.byte	0x6e
	.uleb128 0x2
	.long	.LASF1299
	.byte	0x6f
	.uleb128 0x2
	.long	.LASF1300
	.byte	0x70
	.uleb128 0x2
	.long	.LASF1301
	.byte	0x71
	.uleb128 0x2
	.long	.LASF1302
	.byte	0x72
	.uleb128 0x2
	.long	.LASF1303
	.byte	0x73
	.uleb128 0x2
	.long	.LASF1304
	.byte	0x74
	.uleb128 0x2
	.long	.LASF1305
	.byte	0x75
	.uleb128 0x2
	.long	.LASF1306
	.byte	0x76
	.uleb128 0x2
	.long	.LASF1307
	.byte	0x77
	.uleb128 0x2
	.long	.LASF1308
	.byte	0x78
	.uleb128 0x2
	.long	.LASF1309
	.byte	0x79
	.uleb128 0x2
	.long	.LASF1310
	.byte	0x7a
	.uleb128 0x2
	.long	.LASF1311
	.byte	0x7b
	.uleb128 0x2
	.long	.LASF1312
	.byte	0x7c
	.uleb128 0x2
	.long	.LASF1313
	.byte	0x7d
	.uleb128 0x2
	.long	.LASF1314
	.byte	0x7e
	.uleb128 0x2
	.long	.LASF1315
	.byte	0x7f
	.uleb128 0x2
	.long	.LASF1316
	.byte	0x80
	.uleb128 0x2
	.long	.LASF1317
	.byte	0x81
	.uleb128 0x2
	.long	.LASF1318
	.byte	0x82
	.uleb128 0x2
	.long	.LASF1319
	.byte	0x83
	.uleb128 0x2
	.long	.LASF1320
	.byte	0x84
	.uleb128 0x2
	.long	.LASF1321
	.byte	0x85
	.uleb128 0x2
	.long	.LASF1322
	.byte	0x86
	.uleb128 0x2
	.long	.LASF1323
	.byte	0x87
	.uleb128 0x2
	.long	.LASF1324
	.byte	0x88
	.uleb128 0x2
	.long	.LASF1325
	.byte	0x89
	.byte	0
	.uleb128 0x19
	.long	.LASF1326
	.byte	0x9
	.value	0x517
	.long	0x20d0
	.uleb128 0x24
	.byte	0x5c
	.value	0x519
	.long	0x2573
	.uleb128 0x4
	.long	.LASF1327
	.byte	0x9
	.value	0x51b
	.byte	0x9
	.long	0x6b
	.byte	0
	.uleb128 0x4
	.long	.LASF1328
	.byte	0x9
	.value	0x51c
	.byte	0x9
	.long	0x6b
	.byte	0x4
	.uleb128 0x4
	.long	.LASF1329
	.byte	0x9
	.value	0x51d
	.byte	0x9
	.long	0x6b
	.byte	0x8
	.uleb128 0x4
	.long	.LASF1330
	.byte	0x9
	.value	0x51e
	.byte	0x9
	.long	0x6b
	.byte	0xc
	.uleb128 0x4
	.long	.LASF1331
	.byte	0x9
	.value	0x51f
	.byte	0x9
	.long	0x6b
	.byte	0x10
	.uleb128 0x4
	.long	.LASF1332
	.byte	0x9
	.value	0x520
	.byte	0x9
	.long	0x6b
	.byte	0x14
	.uleb128 0x4
	.long	.LASF1333
	.byte	0x9
	.value	0x521
	.byte	0x9
	.long	0x6b
	.byte	0x18
	.uleb128 0x4
	.long	.LASF1334
	.byte	0x9
	.value	0x522
	.byte	0x9
	.long	0x6b
	.byte	0x1c
	.uleb128 0x4
	.long	.LASF1335
	.byte	0x9
	.value	0x523
	.byte	0x9
	.long	0x6b
	.byte	0x20
	.uleb128 0x4
	.long	.LASF1336
	.byte	0x9
	.value	0x524
	.byte	0x9
	.long	0x6b
	.byte	0x24
	.uleb128 0x4
	.long	.LASF1337
	.byte	0x9
	.value	0x525
	.byte	0x9
	.long	0x6b
	.byte	0x28
	.uleb128 0x4
	.long	.LASF1338
	.byte	0x9
	.value	0x526
	.byte	0x9
	.long	0x6b
	.byte	0x2c
	.uleb128 0x4
	.long	.LASF1339
	.byte	0x9
	.value	0x527
	.byte	0x9
	.long	0x6b
	.byte	0x30
	.uleb128 0x4
	.long	.LASF1340
	.byte	0x9
	.value	0x528
	.byte	0x9
	.long	0x6b
	.byte	0x34
	.uleb128 0x4
	.long	.LASF1341
	.byte	0x9
	.value	0x529
	.byte	0x9
	.long	0x6b
	.byte	0x38
	.uleb128 0x4
	.long	.LASF1342
	.byte	0x9
	.value	0x52a
	.byte	0x9
	.long	0x6b
	.byte	0x3c
	.uleb128 0x4
	.long	.LASF1343
	.byte	0x9
	.value	0x52b
	.byte	0x9
	.long	0x6b
	.byte	0x40
	.uleb128 0x4
	.long	.LASF1344
	.byte	0x9
	.value	0x52c
	.byte	0x9
	.long	0x6b
	.byte	0x44
	.uleb128 0x4
	.long	.LASF1345
	.byte	0x9
	.value	0x52d
	.byte	0x9
	.long	0x6b
	.byte	0x48
	.uleb128 0x4
	.long	.LASF1346
	.byte	0x9
	.value	0x52e
	.byte	0x9
	.long	0x6b
	.byte	0x4c
	.uleb128 0x4
	.long	.LASF1347
	.byte	0x9
	.value	0x52f
	.byte	0x9
	.long	0x6b
	.byte	0x50
	.uleb128 0x4
	.long	.LASF1348
	.byte	0x9
	.value	0x530
	.byte	0x9
	.long	0x6b
	.byte	0x54
	.uleb128 0x4
	.long	.LASF1349
	.byte	0x9
	.value	0x531
	.byte	0x9
	.long	0x6b
	.byte	0x58
	.byte	0
	.uleb128 0x19
	.long	.LASF1350
	.byte	0x9
	.value	0x533
	.long	0x2428
	.uleb128 0xc
	.long	0x8e
	.byte	0xa
	.byte	0x76
	.byte	0x1
	.long	0x265d
	.uleb128 0x2
	.long	.LASF1351
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1352
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1353
	.byte	0x4
	.uleb128 0x2
	.long	.LASF1354
	.byte	0x8
	.uleb128 0x2
	.long	.LASF1355
	.byte	0x10
	.uleb128 0x2
	.long	.LASF1356
	.byte	0x20
	.uleb128 0x2
	.long	.LASF1357
	.byte	0x40
	.uleb128 0x2
	.long	.LASF1358
	.byte	0x80
	.uleb128 0x1
	.long	.LASF1359
	.value	0x100
	.uleb128 0x1
	.long	.LASF1360
	.value	0x200
	.uleb128 0x1
	.long	.LASF1361
	.value	0x400
	.uleb128 0x1
	.long	.LASF1362
	.value	0x800
	.uleb128 0x1
	.long	.LASF1363
	.value	0x1000
	.uleb128 0x1
	.long	.LASF1364
	.value	0x2000
	.uleb128 0x1
	.long	.LASF1365
	.value	0x4000
	.uleb128 0x1
	.long	.LASF1366
	.value	0x8000
	.uleb128 0xe
	.long	.LASF1367
	.long	0x10000
	.uleb128 0xe
	.long	.LASF1368
	.long	0x20000
	.uleb128 0xe
	.long	.LASF1369
	.long	0x40000
	.uleb128 0xe
	.long	.LASF1370
	.long	0x80000
	.uleb128 0xe
	.long	.LASF1371
	.long	0x100000
	.uleb128 0xe
	.long	.LASF1372
	.long	0x200000
	.uleb128 0xe
	.long	.LASF1373
	.long	0x400000
	.uleb128 0xe
	.long	.LASF1374
	.long	0x800000
	.uleb128 0xe
	.long	.LASF1375
	.long	0x1000000
	.uleb128 0xe
	.long	.LASF1376
	.long	0x2000000
	.uleb128 0xe
	.long	.LASF1377
	.long	0xc000000
	.uleb128 0x2
	.long	.LASF1378
	.byte	0x1a
	.byte	0
	.uleb128 0x1b
	.long	.LASF1380
	.byte	0xe0
	.byte	0xa
	.byte	0xcf
	.long	0x2834
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xa
	.byte	0xd2
	.byte	0x10
	.long	0x2ce
	.byte	0
	.uleb128 0x5
	.string	"x"
	.byte	0xa
	.byte	0xd5
	.byte	0xe
	.long	0xb1
	.byte	0x18
	.uleb128 0x5
	.string	"y"
	.byte	0xa
	.byte	0xd6
	.byte	0xe
	.long	0xb1
	.byte	0x1c
	.uleb128 0x5
	.string	"z"
	.byte	0xa
	.byte	0xd7
	.byte	0xe
	.long	0xb1
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1382
	.byte	0xa
	.byte	0xda
	.byte	0x14
	.long	0x2834
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1383
	.byte	0xa
	.byte	0xdb
	.byte	0x14
	.long	0x2834
	.byte	0x30
	.uleb128 0x3
	.long	.LASF67
	.byte	0xa
	.byte	0xde
	.byte	0xe
	.long	0x1ef
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1180
	.byte	0xa
	.byte	0xdf
	.byte	0x12
	.long	0x6bc
	.byte	0x3c
	.uleb128 0x3
	.long	.LASF1181
	.byte	0xa
	.byte	0xe0
	.byte	0xb
	.long	0x6b
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1384
	.byte	0xa
	.byte	0xe4
	.byte	0x14
	.long	0x2834
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1385
	.byte	0xa
	.byte	0xe5
	.byte	0x14
	.long	0x2834
	.byte	0x50
	.uleb128 0x3
	.long	.LASF1386
	.byte	0xa
	.byte	0xe7
	.byte	0x19
	.long	0x286d
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1387
	.byte	0xa
	.byte	0xea
	.byte	0xe
	.long	0xb1
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1388
	.byte	0xa
	.byte	0xeb
	.byte	0xe
	.long	0xb1
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1343
	.byte	0xa
	.byte	0xee
	.byte	0xe
	.long	0xb1
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1344
	.byte	0xa
	.byte	0xef
	.byte	0xe
	.long	0xb1
	.byte	0x6c
	.uleb128 0x3
	.long	.LASF1389
	.byte	0xa
	.byte	0xf2
	.byte	0xe
	.long	0xb1
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1390
	.byte	0xa
	.byte	0xf3
	.byte	0xe
	.long	0xb1
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1391
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.long	0xb1
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xa
	.byte	0xf7
	.byte	0xb
	.long	0x6b
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF68
	.byte	0xa
	.byte	0xf9
	.byte	0x11
	.long	0x241c
	.byte	0x80
	.uleb128 0x3
	.long	.LASF1393
	.byte	0xa
	.byte	0xfa
	.byte	0x12
	.long	0x2872
	.byte	0x88
	.uleb128 0x3
	.long	.LASF1182
	.byte	0xa
	.byte	0xfc
	.byte	0xb
	.long	0x6b
	.byte	0x90
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xa
	.byte	0xfd
	.byte	0xf
	.long	0x2877
	.byte	0x98
	.uleb128 0x3
	.long	.LASF1348
	.byte	0xa
	.byte	0xfe
	.byte	0xb
	.long	0x6b
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xa
	.byte	0xff
	.byte	0xb
	.long	0x6b
	.byte	0xa4
	.uleb128 0x4
	.long	.LASF1396
	.byte	0xa
	.value	0x102
	.byte	0xb
	.long	0x6b
	.byte	0xa8
	.uleb128 0x4
	.long	.LASF1397
	.byte	0xa
	.value	0x103
	.byte	0xb
	.long	0x6b
	.byte	0xac
	.uleb128 0x4
	.long	.LASF1398
	.byte	0xa
	.value	0x107
	.byte	0x14
	.long	0x2834
	.byte	0xb0
	.uleb128 0x4
	.long	.LASF1332
	.byte	0xa
	.value	0x10b
	.byte	0xb
	.long	0x6b
	.byte	0xb8
	.uleb128 0x4
	.long	.LASF1399
	.byte	0xa
	.value	0x10f
	.byte	0xb
	.long	0x6b
	.byte	0xbc
	.uleb128 0x4
	.long	.LASF1400
	.byte	0xa
	.value	0x113
	.byte	0x16
	.long	0x2a51
	.byte	0xc0
	.uleb128 0x4
	.long	.LASF1401
	.byte	0xa
	.value	0x116
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x4
	.long	.LASF1402
	.byte	0xa
	.value	0x119
	.byte	0x11
	.long	0x361
	.byte	0xcc
	.uleb128 0x4
	.long	.LASF1403
	.byte	0xa
	.value	0x11c
	.byte	0x14
	.long	0x2834
	.byte	0xd8
	.byte	0
	.uleb128 0x7
	.long	0x265d
	.uleb128 0x1b
	.long	.LASF1404
	.byte	0x10
	.byte	0xb
	.byte	0xe3
	.long	0x286d
	.uleb128 0x3
	.long	.LASF1405
	.byte	0xb
	.byte	0xe5
	.byte	0xf
	.long	0x2c93
	.byte	0
	.uleb128 0x3
	.long	.LASF1406
	.byte	0xb
	.byte	0xe6
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1407
	.byte	0xb
	.byte	0xe7
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x2839
	.uleb128 0x7
	.long	0x2573
	.uleb128 0x7
	.long	0x20c4
	.uleb128 0x2e
	.long	.LASF1408
	.value	0x140
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.long	0x2a51
	.uleb128 0x5
	.string	"mo"
	.byte	0xc
	.byte	0x55
	.byte	0xe
	.long	0x2ba9
	.byte	0
	.uleb128 0x3
	.long	.LASF1409
	.byte	0xc
	.byte	0x56
	.byte	0x13
	.long	0x2de8
	.byte	0x8
	.uleb128 0x5
	.string	"cmd"
	.byte	0xc
	.byte	0x57
	.byte	0xf
	.long	0x2dbd
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1410
	.byte	0xc
	.byte	0x5c
	.byte	0xe
	.long	0xb1
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1411
	.byte	0xc
	.byte	0x5e
	.byte	0xe
	.long	0xb1
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1412
	.byte	0xc
	.byte	0x60
	.byte	0x16
	.long	0xb1
	.byte	0x1c
	.uleb128 0x5
	.string	"bob"
	.byte	0xc
	.byte	0x62
	.byte	0x16
	.long	0xb1
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1395
	.byte	0xc
	.byte	0x66
	.byte	0xb
	.long	0x6b
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1413
	.byte	0xc
	.byte	0x67
	.byte	0xb
	.long	0x6b
	.byte	0x28
	.uleb128 0x3
	.long	.LASF1414
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0x6b
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF1415
	.byte	0xc
	.byte	0x6c
	.byte	0xb
	.long	0x2df4
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1416
	.byte	0xc
	.byte	0x6d
	.byte	0xe
	.long	0x2e04
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1417
	.byte	0xc
	.byte	0x6e
	.byte	0xe
	.long	0x2f3
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1418
	.byte	0xc
	.byte	0x71
	.byte	0xb
	.long	0x2bae
	.byte	0x64
	.uleb128 0x3
	.long	.LASF1419
	.byte	0xc
	.byte	0x72
	.byte	0x12
	.long	0x168
	.byte	0x74
	.uleb128 0x3
	.long	.LASF1420
	.byte	0xc
	.byte	0x75
	.byte	0x12
	.long	0x168
	.byte	0x78
	.uleb128 0x3
	.long	.LASF1421
	.byte	0xc
	.byte	0x77
	.byte	0xe
	.long	0x2e14
	.byte	0x7c
	.uleb128 0x3
	.long	.LASF1422
	.byte	0xc
	.byte	0x78
	.byte	0xb
	.long	0x2bae
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF1423
	.byte	0xc
	.byte	0x79
	.byte	0xb
	.long	0x2bae
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF1424
	.byte	0xc
	.byte	0x7c
	.byte	0xb
	.long	0x6b
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF1425
	.byte	0xc
	.byte	0x7d
	.byte	0xb
	.long	0x6b
	.byte	0xc4
	.uleb128 0x3
	.long	.LASF1426
	.byte	0xc
	.byte	0x81
	.byte	0xb
	.long	0x6b
	.byte	0xc8
	.uleb128 0x3
	.long	.LASF1427
	.byte	0xc
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0xcc
	.uleb128 0x3
	.long	.LASF1428
	.byte	0xc
	.byte	0x87
	.byte	0xb
	.long	0x6b
	.byte	0xd0
	.uleb128 0x3
	.long	.LASF1429
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0x6b
	.byte	0xd4
	.uleb128 0x3
	.long	.LASF1430
	.byte	0xc
	.byte	0x89
	.byte	0xb
	.long	0x6b
	.byte	0xd8
	.uleb128 0x3
	.long	.LASF1431
	.byte	0xc
	.byte	0x8c
	.byte	0xc
	.long	0xa5
	.byte	0xe0
	.uleb128 0x3
	.long	.LASF1432
	.byte	0xc
	.byte	0x8f
	.byte	0xb
	.long	0x6b
	.byte	0xe8
	.uleb128 0x3
	.long	.LASF1433
	.byte	0xc
	.byte	0x90
	.byte	0xb
	.long	0x6b
	.byte	0xec
	.uleb128 0x3
	.long	.LASF1434
	.byte	0xc
	.byte	0x93
	.byte	0xe
	.long	0x2ba9
	.byte	0xf0
	.uleb128 0x3
	.long	.LASF1435
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0x6b
	.byte	0xf8
	.uleb128 0x3
	.long	.LASF1436
	.byte	0xc
	.byte	0x9a
	.byte	0xb
	.long	0x6b
	.byte	0xfc
	.uleb128 0x1d
	.long	.LASF1437
	.byte	0x9e
	.byte	0xb
	.long	0x6b
	.value	0x100
	.uleb128 0x1d
	.long	.LASF1438
	.byte	0xa1
	.byte	0xf
	.long	0x2e24
	.value	0x108
	.uleb128 0x1d
	.long	.LASF1439
	.byte	0xa4
	.byte	0xe
	.long	0x2f3
	.value	0x138
	.byte	0
	.uleb128 0x7
	.long	0x287c
	.uleb128 0x19
	.long	.LASF1440
	.byte	0xa
	.value	0x11e
	.long	0x265d
	.uleb128 0x14
	.byte	0x8
	.byte	0xb
	.byte	0x47
	.long	0x2a81
	.uleb128 0x5
	.string	"x"
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.long	0xb1
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF1441
	.byte	0xb
	.byte	0x4c
	.byte	0x3
	.long	0x2a62
	.uleb128 0x14
	.byte	0x28
	.byte	0xb
	.byte	0x58
	.long	0x2ac4
	.uleb128 0x3
	.long	.LASF1381
	.byte	0xb
	.byte	0x5a
	.byte	0x10
	.long	0x2ce
	.byte	0
	.uleb128 0x5
	.string	"x"
	.byte	0xb
	.byte	0x5b
	.byte	0xe
	.long	0xb1
	.byte	0x18
	.uleb128 0x5
	.string	"y"
	.byte	0xb
	.byte	0x5c
	.byte	0xe
	.long	0xb1
	.byte	0x1c
	.uleb128 0x5
	.string	"z"
	.byte	0xb
	.byte	0x5d
	.byte	0xe
	.long	0xb1
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.long	.LASF1442
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.long	0x2a8d
	.uleb128 0x14
	.byte	0x80
	.byte	0xb
	.byte	0x65
	.long	0x2ba9
	.uleb128 0x3
	.long	.LASF1443
	.byte	0xb
	.byte	0x67
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x3
	.long	.LASF1444
	.byte	0xb
	.byte	0x68
	.byte	0xd
	.long	0xb1
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1445
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0x9c
	.byte	0x8
	.uleb128 0x3
	.long	.LASF1446
	.byte	0xb
	.byte	0x6a
	.byte	0xb
	.long	0x9c
	.byte	0xa
	.uleb128 0x3
	.long	.LASF1447
	.byte	0xb
	.byte	0x6b
	.byte	0xb
	.long	0x9c
	.byte	0xc
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xb
	.byte	0x6c
	.byte	0xb
	.long	0x9c
	.byte	0xe
	.uleb128 0x5
	.string	"tag"
	.byte	0xb
	.byte	0x6d
	.byte	0xb
	.long	0x9c
	.byte	0x10
	.uleb128 0x3
	.long	.LASF1449
	.byte	0xb
	.byte	0x70
	.byte	0xa
	.long	0x6b
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1450
	.byte	0xb
	.byte	0x73
	.byte	0xd
	.long	0x2ba9
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1451
	.byte	0xb
	.byte	0x76
	.byte	0xa
	.long	0x2bae
	.byte	0x20
	.uleb128 0x3
	.long	.LASF1452
	.byte	0xb
	.byte	0x79
	.byte	0x11
	.long	0x2ac4
	.byte	0x30
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xb
	.byte	0x7c
	.byte	0xa
	.long	0x6b
	.byte	0x58
	.uleb128 0x3
	.long	.LASF1453
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.long	0x2ba9
	.byte	0x60
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xb
	.byte	0x82
	.byte	0xb
	.long	0xa3
	.byte	0x68
	.uleb128 0x3
	.long	.LASF1455
	.byte	0xb
	.byte	0x84
	.byte	0xb
	.long	0x6b
	.byte	0x70
	.uleb128 0x3
	.long	.LASF1456
	.byte	0xb
	.byte	0x85
	.byte	0x15
	.long	0x2c7d
	.byte	0x78
	.byte	0
	.uleb128 0x7
	.long	0x2a56
	.uleb128 0x11
	.long	0x6b
	.long	0x2bbe
	.uleb128 0x12
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.long	.LASF1457
	.byte	0x58
	.byte	0xb
	.byte	0xb3
	.long	0x2c7d
	.uleb128 0x5
	.string	"v1"
	.byte	0xb
	.byte	0xb6
	.byte	0xf
	.long	0x2cc9
	.byte	0
	.uleb128 0x5
	.string	"v2"
	.byte	0xb
	.byte	0xb7
	.byte	0xf
	.long	0x2cc9
	.byte	0x8
	.uleb128 0x5
	.string	"dx"
	.byte	0xb
	.byte	0xba
	.byte	0xd
	.long	0xb1
	.byte	0x10
	.uleb128 0x5
	.string	"dy"
	.byte	0xb
	.byte	0xbb
	.byte	0xd
	.long	0xb1
	.byte	0x14
	.uleb128 0x3
	.long	.LASF1348
	.byte	0xb
	.byte	0xbe
	.byte	0xb
	.long	0x9c
	.byte	0x18
	.uleb128 0x3
	.long	.LASF1448
	.byte	0xb
	.byte	0xbf
	.byte	0xb
	.long	0x9c
	.byte	0x1a
	.uleb128 0x5
	.string	"tag"
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0x9c
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF1458
	.byte	0xb
	.byte	0xc4
	.byte	0xb
	.long	0x30b
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF1459
	.byte	0xb
	.byte	0xc8
	.byte	0xd
	.long	0x2cce
	.byte	0x24
	.uleb128 0x3
	.long	.LASF1460
	.byte	0xb
	.byte	0xcb
	.byte	0x11
	.long	0x2cbd
	.byte	0x34
	.uleb128 0x3
	.long	.LASF1461
	.byte	0xb
	.byte	0xcf
	.byte	0xf
	.long	0x2c93
	.byte	0x38
	.uleb128 0x3
	.long	.LASF1462
	.byte	0xb
	.byte	0xd0
	.byte	0xf
	.long	0x2c93
	.byte	0x40
	.uleb128 0x3
	.long	.LASF1392
	.byte	0xb
	.byte	0xd3
	.byte	0xa
	.long	0x6b
	.byte	0x48
	.uleb128 0x3
	.long	.LASF1454
	.byte	0xb
	.byte	0xd6
	.byte	0xb
	.long	0xa3
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	0x2c82
	.uleb128 0x7
	.long	0x2bbe
	.uleb128 0x8
	.long	.LASF1463
	.byte	0xb
	.byte	0x87
	.byte	0x3
	.long	0x2ad0
	.uleb128 0x7
	.long	0x2c87
	.uleb128 0xc
	.long	0x8e
	.byte	0xb
	.byte	0xa9
	.byte	0x1
	.long	0x2cbd
	.uleb128 0x2
	.long	.LASF1464
	.byte	0
	.uleb128 0x2
	.long	.LASF1465
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1466
	.byte	0x2
	.uleb128 0x2
	.long	.LASF1467
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF1468
	.byte	0xb
	.byte	0xaf
	.byte	0x3
	.long	0x2c98
	.uleb128 0x7
	.long	0x2a81
	.uleb128 0x11
	.long	0xb1
	.long	0x2cde
	.uleb128 0x12
	.long	0x43
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF1469
	.byte	0xb
	.byte	0xd7
	.byte	0x3
	.long	0x2bbe
	.uleb128 0x8
	.long	.LASF1470
	.byte	0xb
	.byte	0xe9
	.byte	0x3
	.long	0x2839
	.uleb128 0x7
	.long	0x2cde
	.uleb128 0x7
	.long	0x9c
	.uleb128 0xc
	.long	0x8e
	.byte	0xd
	.byte	0x3d
	.byte	0x1
	.long	0x2d1f
	.uleb128 0x2
	.long	.LASF1471
	.byte	0
	.uleb128 0x2
	.long	.LASF1472
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1473
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.byte	0x18
	.byte	0xd
	.byte	0x44
	.long	0x2d5a
	.uleb128 0x3
	.long	.LASF1394
	.byte	0xd
	.byte	0x46
	.byte	0xe
	.long	0x2877
	.byte	0
	.uleb128 0x3
	.long	.LASF1182
	.byte	0xd
	.byte	0x47
	.byte	0xa
	.long	0x6b
	.byte	0x8
	.uleb128 0x5
	.string	"sx"
	.byte	0xd
	.byte	0x48
	.byte	0xd
	.long	0xb1
	.byte	0xc
	.uleb128 0x5
	.string	"sy"
	.byte	0xd
	.byte	0x49
	.byte	0xd
	.long	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF1474
	.byte	0xd
	.byte	0x4b
	.byte	0x3
	.long	0x2d1f
	.uleb128 0x14
	.byte	0x8
	.byte	0xe
	.byte	0x24
	.long	0x2dbd
	.uleb128 0x3
	.long	.LASF1475
	.byte	0xe
	.byte	0x26
	.byte	0xa
	.long	0x4a
	.byte	0
	.uleb128 0x3
	.long	.LASF1476
	.byte	0xe
	.byte	0x27
	.byte	0xa
	.long	0x4a
	.byte	0x1
	.uleb128 0x3
	.long	.LASF1477
	.byte	0xe
	.byte	0x28
	.byte	0xb
	.long	0x9c
	.byte	0x2
	.uleb128 0x3
	.long	.LASF1478
	.byte	0xe
	.byte	0x29
	.byte	0xb
	.long	0x9c
	.byte	0x4
	.uleb128 0x3
	.long	.LASF1479
	.byte	0xe
	.byte	0x2a
	.byte	0xa
	.long	0x2ff
	.byte	0x6
	.uleb128 0x3
	.long	.LASF1480
	.byte	0xe
	.byte	0x2b
	.byte	0xa
	.long	0x2ff
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	.LASF1481
	.byte	0xe
	.byte	0x2c
	.byte	0x3
	.long	0x2d66
	.uleb128 0xc
	.long	0x8e
	.byte	0xc
	.byte	0x36
	.byte	0x1
	.long	0x2de8
	.uleb128 0x2
	.long	.LASF1482
	.byte	0
	.uleb128 0x2
	.long	.LASF1483
	.byte	0x1
	.uleb128 0x2
	.long	.LASF1484
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF1485
	.byte	0xc
	.byte	0x3e
	.byte	0x3
	.long	0x2dc9
	.uleb128 0x11
	.long	0x6b
	.long	0x2e04
	.uleb128 0x12
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	0x2f3
	.long	0x2e14
	.uleb128 0x12
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	0x2f3
	.long	0x2e24
	.uleb128 0x12
	.long	0x43
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	0x2d5a
	.long	0x2e34
	.uleb128 0x12
	.long	0x43
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	0x2cea
	.uleb128 0xa
	.long	.LASF1456
	.byte	0xf
	.byte	0x5e
	.byte	0x11
	.long	0x2cf6
	.uleb128 0xa
	.long	.LASF1392
	.byte	0x10
	.byte	0x37
	.byte	0xd
	.long	0x6b
	.uleb128 0x14
	.byte	0x10
	.byte	0x11
	.byte	0x87
	.long	0x2e88
	.uleb128 0x5
	.string	"x"
	.byte	0x11
	.byte	0x89
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x11
	.byte	0x8a
	.byte	0xd
	.long	0xb1
	.byte	0x4
	.uleb128 0x5
	.string	"dx"
	.byte	0x11
	.byte	0x8b
	.byte	0xd
	.long	0xb1
	.byte	0x8
	.uleb128 0x5
	.string	"dy"
	.byte	0x11
	.byte	0x8c
	.byte	0xd
	.long	0xb1
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	.LASF1486
	.byte	0x11
	.byte	0x8e
	.byte	0x3
	.long	0x2e51
	.uleb128 0x23
	.byte	0x11
	.byte	0x94
	.byte	0x5
	.long	0x2eb5
	.uleb128 0x1a
	.long	.LASF1487
	.byte	0x11
	.byte	0x95
	.byte	0xa
	.long	0x2ba9
	.uleb128 0x1a
	.long	.LASF1488
	.byte	0x11
	.byte	0x96
	.byte	0xa
	.long	0x2cf6
	.byte	0
	.uleb128 0x14
	.byte	0x10
	.byte	0x11
	.byte	0x90
	.long	0x2ee3
	.uleb128 0x3
	.long	.LASF1489
	.byte	0x11
	.byte	0x92
	.byte	0xd
	.long	0xb1
	.byte	0
	.uleb128 0x3
	.long	.LASF1490
	.byte	0x11
	.byte	0x93
	.byte	0xd
	.long	0x2f3
	.byte	0x4
	.uleb128 0x5
	.string	"d"
	.byte	0x11
	.byte	0x97
	.byte	0x9
	.long	0x2e94
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF1491
	.byte	0x11
	.byte	0x98
	.byte	0x3
	.long	0x2eb5
	.uleb128 0x11
	.long	0x2ee3
	.long	0x2eff
	.uleb128 0x12
	.long	0x43
	.byte	0x7f
	.byte	0
	.uleb128 0xa
	.long	.LASF1492
	.byte	0x11
	.byte	0x9c
	.byte	0x14
	.long	0x2eef
	.uleb128 0xa
	.long	.LASF1493
	.byte	0x11
	.byte	0x9d
	.byte	0x15
	.long	0x2f17
	.uleb128 0x7
	.long	0x2ee3
	.uleb128 0x8
	.long	.LASF1494
	.byte	0x11
	.byte	0x9f
	.byte	0x13
	.long	0x2f28
	.uleb128 0x7
	.long	0x2f2d
	.uleb128 0x1e
	.long	0x2f3
	.long	0x2f3c
	.uleb128 0xd
	.long	0x2f17
	.byte	0
	.uleb128 0xa
	.long	.LASF1495
	.byte	0x11
	.byte	0xa8
	.byte	0x11
	.long	0xb1
	.uleb128 0xa
	.long	.LASF1496
	.byte	0x11
	.byte	0xa9
	.byte	0x12
	.long	0xb1
	.uleb128 0xa
	.long	.LASF1497
	.byte	0x11
	.byte	0xaa
	.byte	0x11
	.long	0xb1
	.uleb128 0xa
	.long	.LASF1498
	.byte	0x11
	.byte	0xab
	.byte	0x11
	.long	0xb1
	.uleb128 0xa
	.long	.LASF1499
	.byte	0x11
	.byte	0xb6
	.byte	0x12
	.long	0x2e88
	.uleb128 0xa
	.long	.LASF1500
	.byte	0x11
	.byte	0xf7
	.byte	0x10
	.long	0x2cfb
	.uleb128 0xa
	.long	.LASF1501
	.byte	0x11
	.byte	0xf8
	.byte	0x10
	.long	0x2cfb
	.uleb128 0xa
	.long	.LASF1502
	.byte	0x11
	.byte	0xf9
	.byte	0xd
	.long	0x6b
	.uleb128 0xa
	.long	.LASF1503
	.byte	0x11
	.byte	0xfa
	.byte	0xd
	.long	0x6b
	.uleb128 0xa
	.long	.LASF1504
	.byte	0x11
	.byte	0xfb
	.byte	0x11
	.long	0xb1
	.uleb128 0xa
	.long	.LASF1505
	.byte	0x11
	.byte	0xfc
	.byte	0x11
	.long	0xb1
	.uleb128 0xa
	.long	.LASF1506
	.byte	0x11
	.byte	0xfd
	.byte	0x12
	.long	0x2fcc
	.uleb128 0x7
	.long	0x2ba9
	.uleb128 0x16
	.long	0x2f3c
	.value	0x126
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	opentop
	.uleb128 0x16
	.long	0x2f48
	.value	0x127
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	openbottom
	.uleb128 0x16
	.long	0x2f54
	.value	0x128
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	openrange
	.uleb128 0x16
	.long	0x2f60
	.value	0x129
	.byte	0x9
	.uleb128 0x9
	.byte	0x3
	.quad	lowfloor
	.uleb128 0x16
	.long	0x2eff
	.value	0x220
	.byte	0xd
	.uleb128 0x9
	.byte	0x3
	.quad	intercepts
	.uleb128 0x16
	.long	0x2f0b
	.value	0x221
	.byte	0xe
	.uleb128 0x9
	.byte	0x3
	.quad	intercept_p
	.uleb128 0x16
	.long	0x2f6c
	.value	0x223
	.byte	0xc
	.uleb128 0x9
	.byte	0x3
	.quad	trace
	.uleb128 0x25
	.long	.LASF1507
	.value	0x224
	.byte	0xa
	.long	0x2f3
	.uleb128 0x9
	.byte	0x3
	.quad	earlyout
	.uleb128 0x25
	.long	.LASF1508
	.value	0x225
	.byte	0x6
	.long	0x6b
	.uleb128 0x9
	.byte	0x3
	.quad	ptflags
	.uleb128 0x1f
	.long	.LASF1509
	.byte	0x10
	.byte	0x8e
	.byte	0x1
	.long	0x2e34
	.long	0x3096
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x1f
	.long	.LASF1510
	.byte	0x4
	.byte	0x29
	.byte	0x9
	.long	0xb1
	.long	0x30b1
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x1f
	.long	.LASF1511
	.byte	0x4
	.byte	0x28
	.byte	0x9
	.long	0xb1
	.long	0x30cc
	.uleb128 0xd
	.long	0xb1
	.uleb128 0xd
	.long	0xb1
	.byte	0
	.uleb128 0x18
	.long	.LASF1524
	.value	0x2e7
	.byte	0x1
	.long	0x2f3
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3223
	.uleb128 0x13
	.string	"x1"
	.value	0x2e8
	.byte	0xc
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x13
	.string	"y1"
	.value	0x2e9
	.byte	0xc
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.string	"x2"
	.value	0x2ea
	.byte	0xc
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x13
	.string	"y2"
	.value	0x2eb
	.byte	0xc
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.long	.LASF1348
	.value	0x2ec
	.byte	0x9
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x10
	.long	.LASF1512
	.value	0x2ed
	.byte	0xd
	.long	0x2f28
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x9
	.string	"xt1"
	.value	0x2ef
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"yt1"
	.value	0x2f0
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"xt2"
	.value	0x2f1
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"yt2"
	.value	0x2f2
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.long	.LASF1514
	.value	0x2f4
	.byte	0xd
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x6
	.long	.LASF1515
	.value	0x2f5
	.byte	0xd
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.long	.LASF1516
	.value	0x2f7
	.byte	0xd
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x6
	.long	.LASF1517
	.value	0x2f9
	.byte	0xd
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x6
	.long	.LASF1518
	.value	0x2fa
	.byte	0xd
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF1519
	.value	0x2fc
	.byte	0xa
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.long	.LASF1520
	.value	0x2fd
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF1521
	.value	0x2ff
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.long	.LASF1522
	.value	0x300
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF1523
	.value	0x302
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x18
	.long	.LASF1525
	.value	0x2ab
	.byte	0x1
	.long	0x2f3
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x329f
	.uleb128 0x10
	.long	.LASF1526
	.value	0x2ac
	.byte	0xf
	.long	0x2f1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF1527
	.value	0x2ad
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x6
	.long	.LASF1523
	.value	0x2af
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1528
	.value	0x2b0
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.long	.LASF1529
	.value	0x2b1
	.byte	0x12
	.long	0x2f17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"in"
	.value	0x2b2
	.byte	0x12
	.long	0x2f17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF1530
	.value	0x268
	.byte	0x9
	.long	0x2f3
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3356
	.uleb128 0x10
	.long	.LASF1487
	.value	0x268
	.byte	0x29
	.long	0x2ba9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.string	"x1"
	.value	0x26a
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.string	"y1"
	.value	0x26b
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x9
	.string	"x2"
	.value	0x26c
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.string	"y2"
	.value	0x26d
	.byte	0xe
	.long	0xb1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.string	"s1"
	.value	0x26f
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"s2"
	.value	0x270
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF1531
	.value	0x272
	.byte	0xe
	.long	0x2f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"dl"
	.value	0x274
	.byte	0x10
	.long	0x2e88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF1489
	.value	0x276
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x18
	.long	.LASF1532
	.value	0x232
	.byte	0x1
	.long	0x2f3
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c1
	.uleb128 0x13
	.string	"ld"
	.value	0x232
	.byte	0x20
	.long	0x2cf6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x9
	.string	"s1"
	.value	0x234
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.string	"s2"
	.value	0x235
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF1489
	.value	0x236
	.byte	0xe
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.string	"dl"
	.value	0x237
	.byte	0x10
	.long	0x2e88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.long	.LASF1533
	.value	0x201
	.byte	0x1
	.long	0x2f3
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x341c
	.uleb128 0x13
	.string	"x"
	.value	0x202
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"y"
	.value	0x203
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF1526
	.value	0x204
	.byte	0xc
	.long	0x342b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF1534
	.value	0x206
	.byte	0xe
	.long	0x2ba9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	0x2f3
	.long	0x342b
	.uleb128 0xd
	.long	0x2ba9
	.byte	0
	.uleb128 0x7
	.long	0x341c
	.uleb128 0x18
	.long	.LASF1535
	.value	0x1d8
	.byte	0x1
	.long	0x2f3
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x34a8
	.uleb128 0x13
	.string	"x"
	.value	0x1d9
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"y"
	.value	0x1da
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF1526
	.value	0x1db
	.byte	0xc
	.long	0x34b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF1536
	.value	0x1dd
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.long	.LASF1537
	.value	0x1de
	.byte	0xd
	.long	0x2cfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"ld"
	.value	0x1df
	.byte	0xe
	.long	0x2cf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	0x2f3
	.long	0x34b7
	.uleb128 0xd
	.long	0x2cf6
	.byte	0
	.uleb128 0x7
	.long	0x34a8
	.uleb128 0x2f
	.long	.LASF1541
	.byte	0x1
	.value	0x18c
	.byte	0x1
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3535
	.uleb128 0x10
	.long	.LASF1487
	.value	0x18c
	.byte	0x1d
	.long	0x2ba9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.string	"ss"
	.value	0x18e
	.byte	0x12
	.long	0x2e34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"sec"
	.value	0x18f
	.byte	0x10
	.long	0x2c93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF1538
	.value	0x190
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.long	.LASF1539
	.value	0x191
	.byte	0xb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.long	.LASF1540
	.value	0x192
	.byte	0xf
	.long	0x2fcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF1542
	.value	0x15b
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3580
	.uleb128 0x10
	.long	.LASF1487
	.value	0x15b
	.byte	0x24
	.long	0x2ba9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1538
	.value	0x15d
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.long	.LASF1539
	.value	0x15e
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF1543
	.value	0x12c
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x35cb
	.uleb128 0x10
	.long	.LASF1544
	.value	0x12c
	.byte	0x1d
	.long	0x2cf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF1545
	.value	0x12e
	.byte	0xf
	.long	0x2c93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.long	.LASF1546
	.value	0x12f
	.byte	0xf
	.long	0x2c93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF1547
	.byte	0xe7
	.long	0xb1
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3630
	.uleb128 0xf
	.string	"v2"
	.byte	0xe8
	.byte	0xe
	.long	0x3630
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"v1"
	.byte	0xe9
	.byte	0xe
	.long	0x3630
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF1489
	.byte	0xec
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"num"
	.byte	0xed
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"den"
	.byte	0xee
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x7
	.long	0x2e88
	.uleb128 0x30
	.long	.LASF1548
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x366e
	.uleb128 0xf
	.string	"li"
	.byte	0xd4
	.byte	0xb
	.long	0x2cf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"dl"
	.byte	0xd5
	.byte	0xe
	.long	0x3630
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF1549
	.byte	0xa1
	.long	0x6b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x36eb
	.uleb128 0xf
	.string	"x"
	.byte	0xa2
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"y"
	.byte	0xa3
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF1488
	.byte	0xa4
	.byte	0xe
	.long	0x3630
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"dx"
	.byte	0xa6
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"dy"
	.byte	0xa7
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF1550
	.byte	0xa8
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF1551
	.byte	0xa9
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF1552
	.byte	0x6e
	.long	0x6b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3741
	.uleb128 0x20
	.long	.LASF1553
	.byte	0x6f
	.byte	0xc
	.long	0x1ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"ld"
	.byte	0x70
	.byte	0xb
	.long	0x2cf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"p1"
	.byte	0x72
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"p2"
	.byte	0x73
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF1554
	.byte	0x42
	.long	0x6b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x37be
	.uleb128 0xf
	.string	"x"
	.byte	0x43
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xf
	.string	"y"
	.byte	0x44
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF1488
	.byte	0x45
	.byte	0xb
	.long	0x2cf6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"dx"
	.byte	0x47
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"dy"
	.byte	0x48
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.long	.LASF1550
	.byte	0x49
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.long	.LASF1551
	.byte	0x4a
	.byte	0xd
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF1555
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.long	0xb1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.string	"dx"
	.byte	0x32
	.byte	0xb
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"dy"
	.byte	0x33
	.byte	0xb
	.long	0xb1
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
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
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
.LASF848:
	.string	"S_BSPI_RUN3"
.LASF849:
	.string	"S_BSPI_RUN4"
.LASF850:
	.string	"S_BSPI_RUN5"
.LASF851:
	.string	"S_BSPI_RUN6"
.LASF852:
	.string	"S_BSPI_RUN7"
.LASF853:
	.string	"S_BSPI_RUN8"
.LASF854:
	.string	"S_BSPI_RUN9"
.LASF138:
	.string	"SPR_YSKU"
.LASF1434:
	.string	"attacker"
.LASF501:
	.string	"S_FIRE10"
.LASF502:
	.string	"S_FIRE11"
.LASF503:
	.string	"S_FIRE12"
.LASF504:
	.string	"S_FIRE13"
.LASF505:
	.string	"S_FIRE14"
.LASF506:
	.string	"S_FIRE15"
.LASF507:
	.string	"S_FIRE16"
.LASF508:
	.string	"S_FIRE17"
.LASF509:
	.string	"S_FIRE18"
.LASF510:
	.string	"S_FIRE19"
.LASF1322:
	.string	"MT_MISC84"
.LASF1255:
	.string	"MT_MISC20"
.LASF1069:
	.string	"S_MEGA2"
.LASF1070:
	.string	"S_MEGA3"
.LASF1071:
	.string	"S_MEGA4"
.LASF1259:
	.string	"MT_MISC24"
.LASF1260:
	.string	"MT_MISC25"
.LASF1262:
	.string	"MT_MISC26"
.LASF1263:
	.string	"MT_MISC27"
.LASF1264:
	.string	"MT_MISC28"
.LASF1267:
	.string	"MT_MISC29"
.LASF700:
	.string	"S_SARG_PAIN2"
.LASF1399:
	.string	"threshold"
.LASF24:
	.string	"wp_pistol"
.LASF1373:
	.string	"MF_COUNTKILL"
.LASF179:
	.string	"SPR_COL1"
.LASF180:
	.string	"SPR_COL2"
.LASF181:
	.string	"SPR_COL3"
.LASF182:
	.string	"SPR_COL4"
.LASF191:
	.string	"SPR_COL5"
.LASF185:
	.string	"SPR_COL6"
.LASF1490:
	.string	"isaline"
.LASF1372:
	.string	"MF_INFLOAT"
.LASF511:
	.string	"S_FIRE20"
.LASF512:
	.string	"S_FIRE21"
.LASF513:
	.string	"S_FIRE22"
.LASF514:
	.string	"S_FIRE23"
.LASF515:
	.string	"S_FIRE24"
.LASF165:
	.string	"SPR_COLU"
.LASF517:
	.string	"S_FIRE26"
.LASF518:
	.string	"S_FIRE27"
.LASF519:
	.string	"S_FIRE28"
.LASF520:
	.string	"S_FIRE29"
.LASF1268:
	.string	"MT_MISC30"
.LASF1183:
	.string	"action"
.LASF1270:
	.string	"MT_MISC32"
.LASF1271:
	.string	"MT_MISC33"
.LASF862:
	.string	"S_BSPI_PAIN"
.LASF1273:
	.string	"MT_MISC35"
.LASF334:
	.string	"S_BFGEXP"
.LASF39:
	.string	"am_misl"
.LASF1276:
	.string	"MT_MISC38"
.LASF1277:
	.string	"MT_MISC39"
.LASF1445:
	.string	"floorpic"
.LASF864:
	.string	"S_BSPI_DIE1"
.LASF1473:
	.string	"NUMPSPRITES"
.LASF1511:
	.string	"FixedMul"
.LASF869:
	.string	"S_BSPI_DIE6"
.LASF1466:
	.string	"ST_POSITIVE"
.LASF1410:
	.string	"viewz"
.LASF760:
	.string	"S_BOSS_RAISE1"
.LASF761:
	.string	"S_BOSS_RAISE2"
.LASF1202:
	.string	"MT_HEAD"
.LASF762:
	.string	"S_BOSS_RAISE3"
.LASF521:
	.string	"S_FIRE30"
.LASF666:
	.string	"S_TROO_PAIN"
.LASF955:
	.string	"S_SSWV_DIE1"
.LASF765:
	.string	"S_BOSS_RAISE6"
.LASF957:
	.string	"S_SSWV_DIE3"
.LASF958:
	.string	"S_SSWV_DIE4"
.LASF959:
	.string	"S_SSWV_DIE5"
.LASF133:
	.string	"SPR_BKEY"
.LASF777:
	.string	"S_BOS2_ATK1"
.LASF778:
	.string	"S_BOS2_ATK2"
.LASF779:
	.string	"S_BOS2_ATK3"
.LASF167:
	.string	"SPR_GOR1"
.LASF174:
	.string	"SPR_GOR2"
.LASF175:
	.string	"SPR_GOR3"
.LASF176:
	.string	"SPR_GOR4"
.LASF177:
	.string	"SPR_GOR5"
.LASF1280:
	.string	"MT_MISC42"
.LASF1281:
	.string	"MT_MISC43"
.LASF534:
	.string	"S_SKEL_RUN1"
.LASF535:
	.string	"S_SKEL_RUN2"
.LASF12:
	.string	"BOXTOP"
.LASF537:
	.string	"S_SKEL_RUN4"
.LASF538:
	.string	"S_SKEL_RUN5"
.LASF539:
	.string	"S_SKEL_RUN6"
.LASF540:
	.string	"S_SKEL_RUN7"
.LASF541:
	.string	"S_SKEL_RUN8"
.LASF542:
	.string	"S_SKEL_RUN9"
.LASF27:
	.string	"wp_missile"
.LASF1020:
	.string	"S_BEXP2"
.LASF1330:
	.string	"seestate"
.LASF1538:
	.string	"blockx"
.LASF715:
	.string	"S_HEAD_ATK1"
.LASF716:
	.string	"S_HEAD_ATK2"
.LASF717:
	.string	"S_HEAD_ATK3"
.LASF1460:
	.string	"slopetype"
.LASF969:
	.string	"S_SSWV_RAISE1"
.LASF970:
	.string	"S_SSWV_RAISE2"
.LASF971:
	.string	"S_SSWV_RAISE3"
.LASF972:
	.string	"S_SSWV_RAISE4"
.LASF973:
	.string	"S_SSWV_RAISE5"
.LASF67:
	.string	"angle"
.LASF1197:
	.string	"MT_FATSHOT"
.LASF153:
	.string	"SPR_CELL"
.LASF154:
	.string	"SPR_CELP"
.LASF1135:
	.string	"S_HEARTCOL"
.LASF1455:
	.string	"linecount"
.LASF1406:
	.string	"numlines"
.LASF1052:
	.string	"S_MEDI"
.LASF1539:
	.string	"blocky"
.LASF1059:
	.string	"S_PINV"
.LASF1246:
	.string	"MT_INS"
.LASF1289:
	.string	"MT_MISC51"
.LASF1290:
	.string	"MT_MISC52"
.LASF1244:
	.string	"MT_INV"
.LASF1292:
	.string	"MT_MISC54"
.LASF1149:
	.string	"S_BTORCHSHRT"
.LASF270:
	.string	"S_MISSILEUP"
.LASF1295:
	.string	"MT_MISC57"
.LASF1296:
	.string	"MT_MISC58"
.LASF1297:
	.string	"MT_MISC59"
.LASF447:
	.string	"S_SPOS_RAISE1"
.LASF241:
	.string	"S_SGUNFLASH1"
.LASF242:
	.string	"S_SGUNFLASH2"
.LASF789:
	.string	"S_BOS2_RAISE1"
.LASF790:
	.string	"S_BOS2_RAISE2"
.LASF791:
	.string	"S_BOS2_RAISE3"
.LASF792:
	.string	"S_BOS2_RAISE4"
.LASF793:
	.string	"S_BOS2_RAISE5"
.LASF794:
	.string	"S_BOS2_RAISE6"
.LASF795:
	.string	"S_BOS2_RAISE7"
.LASF554:
	.string	"S_SKEL_PAIN"
.LASF1041:
	.string	"S_RKEY"
.LASF60:
	.string	"next"
.LASF1519:
	.string	"mapx"
.LASF1520:
	.string	"mapy"
.LASF223:
	.string	"S_PISTOLUP"
.LASF909:
	.string	"S_CYBER_DIE8"
.LASF1298:
	.string	"MT_MISC60"
.LASF1299:
	.string	"MT_MISC61"
.LASF1300:
	.string	"MT_MISC62"
.LASF1301:
	.string	"MT_MISC63"
.LASF1302:
	.string	"MT_MISC64"
.LASF1303:
	.string	"MT_MISC65"
.LASF1304:
	.string	"MT_MISC66"
.LASF1305:
	.string	"MT_MISC67"
.LASF338:
	.string	"S_EXPLODE1"
.LASF339:
	.string	"S_EXPLODE2"
.LASF340:
	.string	"S_EXPLODE3"
.LASF529:
	.string	"S_TRACEEXP1"
.LASF530:
	.string	"S_TRACEEXP2"
.LASF531:
	.string	"S_TRACEEXP3"
.LASF917:
	.string	"S_PAIN_RUN5"
.LASF1019:
	.string	"S_BEXP"
.LASF918:
	.string	"S_PAIN_RUN6"
.LASF1435:
	.string	"extralight"
.LASF1494:
	.string	"traverser_t"
.LASF1136:
	.string	"S_HEARTCOL2"
.LASF315:
	.string	"S_RBALLX1"
.LASF1344:
	.string	"height"
.LASF1229:
	.string	"MT_TELEPORTMAN"
.LASF1532:
	.string	"PIT_AddLineIntercepts"
.LASF1489:
	.string	"frac"
.LASF1308:
	.string	"MT_MISC70"
.LASF98:
	.string	"SPR_IFOG"
.LASF1310:
	.string	"MT_MISC72"
.LASF1311:
	.string	"MT_MISC73"
.LASF1312:
	.string	"MT_MISC74"
.LASF1313:
	.string	"MT_MISC75"
.LASF1314:
	.string	"MT_MISC76"
.LASF1142:
	.string	"S_GREENTORCH2"
.LASF1143:
	.string	"S_GREENTORCH3"
.LASF1144:
	.string	"S_GREENTORCH4"
.LASF983:
	.string	"S_COMMKEEN9"
.LASF632:
	.string	"S_CPOS_PAIN2"
.LASF855:
	.string	"S_BSPI_RUN10"
.LASF856:
	.string	"S_BSPI_RUN11"
.LASF857:
	.string	"S_BSPI_RUN12"
.LASF939:
	.string	"S_SSWV_RUN1"
.LASF940:
	.string	"S_SSWV_RUN2"
.LASF941:
	.string	"S_SSWV_RUN3"
.LASF942:
	.string	"S_SSWV_RUN4"
.LASF943:
	.string	"S_SSWV_RUN5"
.LASF944:
	.string	"S_SSWV_RUN6"
.LASF945:
	.string	"S_SSWV_RUN7"
.LASF946:
	.string	"S_SSWV_RUN8"
.LASF1124:
	.string	"S_SKULLCOL"
.LASF1196:
	.string	"MT_FATSO"
.LASF668:
	.string	"S_TROO_DIE1"
.LASF669:
	.string	"S_TROO_DIE2"
.LASF670:
	.string	"S_TROO_DIE3"
.LASF671:
	.string	"S_TROO_DIE4"
.LASF672:
	.string	"S_TROO_DIE5"
.LASF1049:
	.string	"S_YSKULL"
.LASF1050:
	.string	"S_YSKULL2"
.LASF151:
	.string	"SPR_ROCK"
.LASF1221:
	.string	"MT_ROCKET"
.LASF1319:
	.string	"MT_MISC81"
.LASF1320:
	.string	"MT_MISC82"
.LASF1321:
	.string	"MT_MISC83"
.LASF627:
	.string	"S_CPOS_ATK1"
.LASF628:
	.string	"S_CPOS_ATK2"
.LASF629:
	.string	"S_CPOS_ATK3"
.LASF630:
	.string	"S_CPOS_ATK4"
.LASF1188:
	.string	"MT_PLAYER"
.LASF163:
	.string	"SPR_SHOT"
.LASF356:
	.string	"S_IFOG2"
.LASF357:
	.string	"S_IFOG3"
.LASF358:
	.string	"S_IFOG4"
.LASF359:
	.string	"S_IFOG5"
.LASF92:
	.string	"SPR_PLSE"
.LASF84:
	.string	"SPR_PLSF"
.LASF83:
	.string	"SPR_PLSG"
.LASF752:
	.string	"S_BOSS_PAIN2"
.LASF452:
	.string	"S_VILE_STND"
.LASF980:
	.string	"S_COMMKEEN6"
.LASF981:
	.string	"S_COMMKEEN7"
.LASF982:
	.string	"S_COMMKEEN8"
.LASF91:
	.string	"SPR_PLSS"
.LASF831:
	.string	"S_SPID_PAIN2"
.LASF1516:
	.string	"partial"
.LASF1345:
	.string	"mass"
.LASF204:
	.string	"SPR_POB1"
.LASF205:
	.string	"SPR_POB2"
.LASF1053:
	.string	"S_SOUL"
.LASF1063:
	.string	"S_PSTR"
.LASF895:
	.string	"S_CYBER_ATK1"
.LASF896:
	.string	"S_CYBER_ATK2"
.LASF897:
	.string	"S_CYBER_ATK3"
.LASF898:
	.string	"S_CYBER_ATK4"
.LASF899:
	.string	"S_CYBER_ATK5"
.LASF900:
	.string	"S_CYBER_ATK6"
.LASF1090:
	.string	"S_BFUG"
.LASF130:
	.string	"SPR_FCAN"
.LASF1469:
	.string	"line_t"
.LASF573:
	.string	"S_FATT_STND"
.LASF1010:
	.string	"S_BRAINEXPLODE1"
.LASF1011:
	.string	"S_BRAINEXPLODE2"
.LASF1012:
	.string	"S_BRAINEXPLODE3"
.LASF294:
	.string	"S_BFGUP"
.LASF135:
	.string	"SPR_YKEY"
.LASF681:
	.string	"S_TROO_RAISE1"
.LASF682:
	.string	"S_TROO_RAISE2"
.LASF683:
	.string	"S_TROO_RAISE3"
.LASF684:
	.string	"S_TROO_RAISE4"
.LASF685:
	.string	"S_TROO_RAISE5"
.LASF1094:
	.string	"S_PLAS"
.LASF976:
	.string	"S_COMMKEEN2"
.LASF977:
	.string	"S_COMMKEEN3"
.LASF978:
	.string	"S_COMMKEEN4"
.LASF979:
	.string	"S_COMMKEEN5"
.LASF360:
	.string	"S_PLAY"
.LASF926:
	.string	"S_PAIN_DIE2"
.LASF927:
	.string	"S_PAIN_DIE3"
.LASF928:
	.string	"S_PAIN_DIE4"
.LASF929:
	.string	"S_PAIN_DIE5"
.LASF930:
	.string	"S_PAIN_DIE6"
.LASF1199:
	.string	"MT_TROOP"
.LASF481:
	.string	"S_VILE_PAIN2"
.LASF609:
	.string	"S_FATT_RAISE1"
.LASF28:
	.string	"wp_plasma"
.LASF611:
	.string	"S_FATT_RAISE3"
.LASF612:
	.string	"S_FATT_RAISE4"
.LASF613:
	.string	"S_FATT_RAISE5"
.LASF614:
	.string	"S_FATT_RAISE6"
.LASF615:
	.string	"S_FATT_RAISE7"
.LASF616:
	.string	"S_FATT_RAISE8"
.LASF1355:
	.string	"MF_NOBLOCKMAP"
.LASF325:
	.string	"S_ROCKET"
.LASF1220:
	.string	"MT_HEADSHOT"
.LASF1377:
	.string	"MF_TRANSLATION"
.LASF1458:
	.string	"sidenum"
.LASF878:
	.string	"S_ARACH_PLAZ"
.LASF1117:
	.string	"S_STALAGTITE"
.LASF719:
	.string	"S_HEAD_PAIN2"
.LASF720:
	.string	"S_HEAD_PAIN3"
.LASF66:
	.string	"byte"
.LASF21:
	.string	"it_redskull"
.LASF1227:
	.string	"MT_TFOG"
.LASF428:
	.string	"S_SPOS_ATK1"
.LASF429:
	.string	"S_SPOS_ATK2"
.LASF430:
	.string	"S_SPOS_ATK3"
.LASF382:
	.string	"S_PLAY_XDIE7"
.LASF365:
	.string	"S_PLAY_ATK1"
.LASF366:
	.string	"S_PLAY_ATK2"
.LASF118:
	.string	"SPR_APLS"
.LASF1507:
	.string	"earlyout"
.LASF1427:
	.string	"refire"
.LASF1146:
	.string	"S_REDTORCH2"
.LASF1147:
	.string	"S_REDTORCH3"
.LASF1148:
	.string	"S_REDTORCH4"
.LASF655:
	.string	"S_TROO_RUN1"
.LASF656:
	.string	"S_TROO_RUN2"
.LASF657:
	.string	"S_TROO_RUN3"
.LASF658:
	.string	"S_TROO_RUN4"
.LASF659:
	.string	"S_TROO_RUN5"
.LASF660:
	.string	"S_TROO_RUN6"
.LASF661:
	.string	"S_TROO_RUN7"
.LASF662:
	.string	"S_TROO_RUN8"
.LASF109:
	.string	"SPR_CPOS"
.LASF570:
	.string	"S_FATSHOTX1"
.LASF571:
	.string	"S_FATSHOTX2"
.LASF572:
	.string	"S_FATSHOTX3"
.LASF650:
	.string	"S_CPOS_RAISE5"
.LASF651:
	.string	"S_CPOS_RAISE6"
.LASF652:
	.string	"S_CPOS_RAISE7"
.LASF23:
	.string	"wp_fist"
.LASF1338:
	.string	"missilestate"
.LASF139:
	.string	"SPR_STIM"
.LASF1358:
	.string	"MF_JUSTATTACKED"
.LASF1508:
	.string	"ptflags"
.LASF686:
	.string	"S_SARG_STND"
.LASF911:
	.string	"S_CYBER_DIE10"
.LASF89:
	.string	"SPR_BAL1"
.LASF90:
	.string	"SPR_BAL2"
.LASF112:
	.string	"SPR_BAL7"
.LASF1393:
	.string	"info"
.LASF1105:
	.string	"S_HEADSONSTICK"
.LASF1388:
	.string	"ceilingz"
.LASF1517:
	.string	"xintercept"
.LASF562:
	.string	"S_SKEL_RAISE1"
.LASF77:
	.string	"SPR_SHT2"
.LASF216:
	.string	"S_PUNCH1"
.LASF217:
	.string	"S_PUNCH2"
.LASF218:
	.string	"S_PUNCH3"
.LASF219:
	.string	"S_PUNCH4"
.LASF220:
	.string	"S_PUNCH5"
.LASF579:
	.string	"S_FATT_RUN5"
.LASF215:
	.string	"S_PUNCHUP"
.LASF832:
	.string	"S_SPID_DIE1"
.LASF583:
	.string	"S_FATT_RUN9"
.LASF834:
	.string	"S_SPID_DIE3"
.LASF835:
	.string	"S_SPID_DIE4"
.LASF76:
	.string	"SPR_SHTF"
.LASF72:
	.string	"SPR_SHTG"
.LASF354:
	.string	"S_IFOG01"
.LASF355:
	.string	"S_IFOG02"
.LASF840:
	.string	"S_SPID_DIE9"
.LASF1534:
	.string	"mobj"
.LASF1082:
	.string	"S_AMMO"
.LASF40:
	.string	"NUMAMMO"
.LASF913:
	.string	"S_PAIN_RUN1"
.LASF914:
	.string	"S_PAIN_RUN2"
.LASF915:
	.string	"S_PAIN_RUN3"
.LASF916:
	.string	"S_PAIN_RUN4"
.LASF198:
	.string	"SPR_HDB1"
.LASF199:
	.string	"SPR_HDB2"
.LASF200:
	.string	"SPR_HDB3"
.LASF201:
	.string	"SPR_HDB4"
.LASF202:
	.string	"SPR_HDB5"
.LASF203:
	.string	"SPR_HDB6"
.LASF1189:
	.string	"MT_POSSESSED"
.LASF248:
	.string	"S_DSGUN3"
.LASF249:
	.string	"S_DSGUN4"
.LASF68:
	.string	"type"
.LASF1505:
	.string	"bmaporgy"
.LASF268:
	.string	"S_MISSILE"
.LASF1495:
	.string	"opentop"
.LASF1486:
	.string	"divline_t"
.LASF1096:
	.string	"S_SHOT2"
.LASF1351:
	.string	"MF_SPECIAL"
.LASF1163:
	.string	"S_HANGTLOOKDN"
.LASF1396:
	.string	"movedir"
.LASF640:
	.string	"S_CPOS_XDIE1"
.LASF1365:
	.string	"MF_FLOAT"
.LASF57:
	.string	"actionf_t"
.LASF52:
	.string	"actionf_v"
.LASF159:
	.string	"SPR_MGUN"
.LASF1201:
	.string	"MT_SHADOWS"
.LASF543:
	.string	"S_SKEL_RUN10"
.LASF544:
	.string	"S_SKEL_RUN11"
.LASF545:
	.string	"S_SKEL_RUN12"
.LASF211:
	.string	"S_NULL"
.LASF753:
	.string	"S_BOSS_DIE1"
.LASF754:
	.string	"S_BOSS_DIE2"
.LASF755:
	.string	"S_BOSS_DIE3"
.LASF756:
	.string	"S_BOSS_DIE4"
.LASF757:
	.string	"S_BOSS_DIE5"
.LASF758:
	.string	"S_BOSS_DIE6"
.LASF759:
	.string	"S_BOSS_DIE7"
.LASF923:
	.string	"S_PAIN_PAIN"
.LASF292:
	.string	"S_BFG"
.LASF1336:
	.string	"painsound"
.LASF1448:
	.string	"special"
.LASF938:
	.string	"S_SSWV_STND2"
.LASF160:
	.string	"SPR_CSAW"
.LASF1073:
	.string	"S_PMAP"
.LASF1079:
	.string	"S_PVIS"
.LASF293:
	.string	"S_BFGDOWN"
.LASF1213:
	.string	"MT_BOSSBRAIN"
.LASF106:
	.string	"SPR_SKEL"
.LASF288:
	.string	"S_PLASMA1"
.LASF289:
	.string	"S_PLASMA2"
.LASF1153:
	.string	"S_GTORCHSHRT"
.LASF1407:
	.string	"firstline"
.LASF1087:
	.string	"S_SHEL"
.LASF844:
	.string	"S_BSPI_STND2"
.LASF6:
	.string	"unsigned char"
.LASF104:
	.string	"SPR_FATB"
.LASF209:
	.string	"NUMSPRITES"
.LASF830:
	.string	"S_SPID_PAIN"
.LASF327:
	.string	"S_BFGSHOT2"
.LASF108:
	.string	"SPR_FATT"
.LASF1054:
	.string	"S_SOUL2"
.LASF1055:
	.string	"S_SOUL3"
.LASF1056:
	.string	"S_SOUL4"
.LASF1057:
	.string	"S_SOUL5"
.LASF1058:
	.string	"S_SOUL6"
.LASF1502:
	.string	"bmapwidth"
.LASF814:
	.string	"S_SPID_RUN1"
.LASF815:
	.string	"S_SPID_RUN2"
.LASF816:
	.string	"S_SPID_RUN3"
.LASF817:
	.string	"S_SPID_RUN4"
.LASF818:
	.string	"S_SPID_RUN5"
.LASF819:
	.string	"S_SPID_RUN6"
.LASF820:
	.string	"S_SPID_RUN7"
.LASF821:
	.string	"S_SPID_RUN8"
.LASF49:
	.string	"float"
.LASF1021:
	.string	"S_BEXP3"
.LASF1022:
	.string	"S_BEXP4"
.LASF1110:
	.string	"S_DEADSTICK"
.LASF1436:
	.string	"fixedcolormap"
.LASF1421:
	.string	"weaponowned"
.LASF1230:
	.string	"MT_EXTRABFG"
.LASF400:
	.string	"S_POSS_DIE1"
.LASF401:
	.string	"S_POSS_DIE2"
.LASF402:
	.string	"S_POSS_DIE3"
.LASF403:
	.string	"S_POSS_DIE4"
.LASF404:
	.string	"S_POSS_DIE5"
.LASF230:
	.string	"S_SGUNDOWN"
.LASF79:
	.string	"SPR_CHGF"
.LASF78:
	.string	"SPR_CHGG"
.LASF623:
	.string	"S_CPOS_RUN5"
.LASF882:
	.string	"S_ARACH_PLEX3"
.LASF624:
	.string	"S_CPOS_RUN6"
.LASF884:
	.string	"S_ARACH_PLEX5"
.LASF625:
	.string	"S_CPOS_RUN7"
.LASF1398:
	.string	"target"
.LASF189:
	.string	"SPR_CEYE"
.LASF1464:
	.string	"ST_HORIZONTAL"
.LASF931:
	.string	"S_PAIN_RAISE1"
.LASF932:
	.string	"S_PAIN_RAISE2"
.LASF933:
	.string	"S_PAIN_RAISE3"
.LASF934:
	.string	"S_PAIN_RAISE4"
.LASF935:
	.string	"S_PAIN_RAISE5"
.LASF568:
	.string	"S_FATSHOT1"
.LASF569:
	.string	"S_FATSHOT2"
.LASF1465:
	.string	"ST_VERTICAL"
.LASF146:
	.string	"SPR_SUIT"
.LASF796:
	.string	"S_SKULL_STND"
.LASF1357:
	.string	"MF_JUSTHIT"
.LASF1378:
	.string	"MF_TRANSSHIFT"
.LASF13:
	.string	"BOXBOTTOM"
.LASF1325:
	.string	"NUMMOBJTYPES"
.LASF128:
	.string	"SPR_BAR1"
.LASF243:
	.string	"S_DSGUN"
.LASF1122:
	.string	"S_CANDLESTIK"
.LASF46:
	.string	"pw_allmap"
.LASF1178:
	.string	"NUMSTATES"
.LASF822:
	.string	"S_SPID_RUN9"
.LASF308:
	.string	"S_TBALL1"
.LASF309:
	.string	"S_TBALL2"
.LASF522:
	.string	"S_SMOKE1"
.LASF523:
	.string	"S_SMOKE2"
.LASF524:
	.string	"S_SMOKE3"
.LASF525:
	.string	"S_SMOKE4"
.LASF526:
	.string	"S_SMOKE5"
.LASF745:
	.string	"S_BOSS_RUN6"
.LASF746:
	.string	"S_BOSS_RUN7"
.LASF747:
	.string	"S_BOSS_RUN8"
.LASF1512:
	.string	"trav"
.LASF111:
	.string	"SPR_HEAD"
.LASF1385:
	.string	"bprev"
.LASF172:
	.string	"SPR_POL1"
.LASF168:
	.string	"SPR_POL2"
.LASF171:
	.string	"SPR_POL3"
.LASF170:
	.string	"SPR_POL4"
.LASF169:
	.string	"SPR_POL5"
.LASF173:
	.string	"SPR_POL6"
.LASF1017:
	.string	"S_BAR1"
.LASF1530:
	.string	"PIT_AddThingIntercepts"
.LASF1231:
	.string	"MT_MISC0"
.LASF1103:
	.string	"S_DEADTORSO"
.LASF1362:
	.string	"MF_PICKUP"
.LASF1371:
	.string	"MF_CORPSE"
.LASF245:
	.string	"S_DSGUNUP"
.LASF1328:
	.string	"spawnstate"
.LASF1506:
	.string	"blocklinks"
.LASF654:
	.string	"S_TROO_STND2"
.LASF1174:
	.string	"S_TECH2LAMP"
.LASF1217:
	.string	"MT_SPAWNFIRE"
.LASF1192:
	.string	"MT_FIRE"
.LASF1184:
	.string	"nextstate"
.LASF751:
	.string	"S_BOSS_PAIN"
.LASF122:
	.string	"SPR_SSWV"
.LASF1356:
	.string	"MF_AMBUSH"
.LASF313:
	.string	"S_RBALL1"
.LASF314:
	.string	"S_RBALL2"
.LASF1118:
	.string	"S_TALLGRNCOL"
.LASF1401:
	.string	"lastlook"
.LASF1485:
	.string	"playerstate_t"
.LASF1107:
	.string	"S_HEADONASTICK"
.LASF387:
	.string	"S_POSS_RUN1"
.LASF329:
	.string	"S_BFGLAND2"
.LASF330:
	.string	"S_BFGLAND3"
.LASF331:
	.string	"S_BFGLAND4"
.LASF332:
	.string	"S_BFGLAND5"
.LASF333:
	.string	"S_BFGLAND6"
.LASF393:
	.string	"S_POSS_RUN7"
.LASF394:
	.string	"S_POSS_RUN8"
.LASF1543:
	.string	"P_LineOpening"
.LASF376:
	.string	"S_PLAY_XDIE1"
.LASF377:
	.string	"S_PLAY_XDIE2"
.LASF378:
	.string	"S_PLAY_XDIE3"
.LASF379:
	.string	"S_PLAY_XDIE4"
.LASF380:
	.string	"S_PLAY_XDIE5"
.LASF381:
	.string	"S_PLAY_XDIE6"
.LASF15:
	.string	"BOXRIGHT"
.LASF383:
	.string	"S_PLAY_XDIE8"
.LASF384:
	.string	"S_PLAY_XDIE9"
.LASF782:
	.string	"S_BOS2_DIE1"
.LASF783:
	.string	"S_BOS2_DIE2"
.LASF784:
	.string	"S_BOS2_DIE3"
.LASF785:
	.string	"S_BOS2_DIE4"
.LASF786:
	.string	"S_BOS2_DIE5"
.LASF787:
	.string	"S_BOS2_DIE6"
.LASF788:
	.string	"S_BOS2_DIE7"
.LASF1348:
	.string	"flags"
.LASF708:
	.string	"S_SARG_RAISE2"
.LASF709:
	.string	"S_SARG_RAISE3"
.LASF352:
	.string	"S_TFOG10"
.LASF710:
	.string	"S_SARG_RAISE4"
.LASF405:
	.string	"S_POSS_XDIE1"
.LASF406:
	.string	"S_POSS_XDIE2"
.LASF407:
	.string	"S_POSS_XDIE3"
.LASF408:
	.string	"S_POSS_XDIE4"
.LASF409:
	.string	"S_POSS_XDIE5"
.LASF410:
	.string	"S_POSS_XDIE6"
.LASF411:
	.string	"S_POSS_XDIE7"
.LASF36:
	.string	"am_clip"
.LASF413:
	.string	"S_POSS_XDIE9"
.LASF1106:
	.string	"S_GIBS"
.LASF721:
	.string	"S_HEAD_DIE1"
.LASF722:
	.string	"S_HEAD_DIE2"
.LASF723:
	.string	"S_HEAD_DIE3"
.LASF724:
	.string	"S_HEAD_DIE4"
.LASF725:
	.string	"S_HEAD_DIE5"
.LASF726:
	.string	"S_HEAD_DIE6"
.LASF574:
	.string	"S_FATT_STND2"
.LASF1097:
	.string	"S_COLU"
.LASF224:
	.string	"S_PISTOL1"
.LASF225:
	.string	"S_PISTOL2"
.LASF226:
	.string	"S_PISTOL3"
.LASF227:
	.string	"S_PISTOL4"
.LASF563:
	.string	"S_SKEL_RAISE2"
.LASF564:
	.string	"S_SKEL_RAISE3"
.LASF565:
	.string	"S_SKEL_RAISE4"
.LASF566:
	.string	"S_SKEL_RAISE5"
.LASF567:
	.string	"S_SKEL_RAISE6"
.LASF1126:
	.string	"S_BIGTREE"
.LASF1467:
	.string	"ST_NEGATIVE"
.LASF1551:
	.string	"right"
.LASF1036:
	.string	"S_BON2C"
.LASF1037:
	.string	"S_BON2D"
.LASF342:
	.string	"S_TFOG01"
.LASF343:
	.string	"S_TFOG02"
.LASF161:
	.string	"SPR_LAUN"
.LASF398:
	.string	"S_POSS_PAIN"
.LASF733:
	.string	"S_BRBALL1"
.LASF734:
	.string	"S_BRBALL2"
.LASF1195:
	.string	"MT_SMOKE"
.LASF1209:
	.string	"MT_CYBORG"
.LASF1346:
	.string	"damage"
.LASF438:
	.string	"S_SPOS_XDIE1"
.LASF439:
	.string	"S_SPOS_XDIE2"
.LASF440:
	.string	"S_SPOS_XDIE3"
.LASF441:
	.string	"S_SPOS_XDIE4"
.LASF442:
	.string	"S_SPOS_XDIE5"
.LASF443:
	.string	"S_SPOS_XDIE6"
.LASF444:
	.string	"S_SPOS_XDIE7"
.LASF445:
	.string	"S_SPOS_XDIE8"
.LASF446:
	.string	"S_SPOS_XDIE9"
.LASF1375:
	.string	"MF_SKULLFLY"
.LASF1380:
	.string	"mobj_s"
.LASF1440:
	.string	"mobj_t"
.LASF1039:
	.string	"S_BKEY"
.LASF44:
	.string	"pw_invisibility"
.LASF126:
	.string	"SPR_ARM1"
.LASF127:
	.string	"SPR_ARM2"
.LASF1191:
	.string	"MT_VILE"
.LASF1545:
	.string	"front"
.LASF19:
	.string	"it_blueskull"
.LASF1452:
	.string	"soundorg"
.LASF286:
	.string	"S_PLASMADOWN"
.LASF598:
	.string	"S_FATT_PAIN2"
.LASF996:
	.string	"S_BRAINEYESEE"
.LASF1468:
	.string	"slopetype_t"
.LASF533:
	.string	"S_SKEL_STND2"
.LASF1518:
	.string	"yintercept"
.LASF886:
	.string	"S_CYBER_STND2"
.LASF1187:
	.string	"state_t"
.LASF730:
	.string	"S_HEAD_RAISE4"
.LASF956:
	.string	"S_SSWV_DIE2"
.LASF1503:
	.string	"bmapheight"
.LASF412:
	.string	"S_POSS_XDIE8"
.LASF1086:
	.string	"S_CELP"
.LASF1128:
	.string	"S_EVILEYE"
.LASF1154:
	.string	"S_GTORCHSHRT2"
.LASF1155:
	.string	"S_GTORCHSHRT3"
.LASF1156:
	.string	"S_GTORCHSHRT4"
.LASF1411:
	.string	"viewheight"
.LASF1384:
	.string	"bnext"
.LASF587:
	.string	"S_FATT_ATK1"
.LASF120:
	.string	"SPR_CYBR"
.LASF588:
	.string	"S_FATT_ATK2"
.LASF491:
	.string	"S_VILE_DIE10"
.LASF81:
	.string	"SPR_MISF"
.LASF80:
	.string	"SPR_MISG"
.LASF93:
	.string	"SPR_MISL"
.LASF1045:
	.string	"S_BSKULL"
.LASF124:
	.string	"SPR_BBRN"
.LASF466:
	.string	"S_VILE_ATK1"
.LASF467:
	.string	"S_VILE_ATK2"
.LASF468:
	.string	"S_VILE_ATK3"
.LASF469:
	.string	"S_VILE_ATK4"
.LASF470:
	.string	"S_VILE_ATK5"
.LASF471:
	.string	"S_VILE_ATK6"
.LASF472:
	.string	"S_VILE_ATK7"
.LASF213:
	.string	"S_PUNCH"
.LASF474:
	.string	"S_VILE_ATK9"
.LASF195:
	.string	"SPR_SMBT"
.LASF769:
	.string	"S_BOS2_RUN1"
.LASF770:
	.string	"S_BOS2_RUN2"
.LASF771:
	.string	"S_BOS2_RUN3"
.LASF772:
	.string	"S_BOS2_RUN4"
.LASF773:
	.string	"S_BOS2_RUN5"
.LASF774:
	.string	"S_BOS2_RUN6"
.LASF775:
	.string	"S_BOS2_RUN7"
.LASF776:
	.string	"S_BOS2_RUN8"
.LASF1447:
	.string	"lightlevel"
.LASF186:
	.string	"SPR_TRE1"
.LASF187:
	.string	"SPR_TRE2"
.LASF843:
	.string	"S_BSPI_STND"
.LASF1337:
	.string	"meleestate"
.LASF1422:
	.string	"ammo"
.LASF633:
	.string	"S_CPOS_DIE1"
.LASF194:
	.string	"SPR_TRED"
.LASF87:
	.string	"SPR_BLUD"
.LASF589:
	.string	"S_FATT_ATK3"
.LASF590:
	.string	"S_FATT_ATK4"
.LASF591:
	.string	"S_FATT_ATK5"
.LASF592:
	.string	"S_FATT_ATK6"
.LASF593:
	.string	"S_FATT_ATK7"
.LASF594:
	.string	"S_FATT_ATK8"
.LASF595:
	.string	"S_FATT_ATK9"
.LASF97:
	.string	"SPR_TFOG"
.LASF301:
	.string	"S_BLOOD1"
.LASF302:
	.string	"S_BLOOD2"
.LASF303:
	.string	"S_BLOOD3"
.LASF1185:
	.string	"misc1"
.LASF1186:
	.string	"misc2"
.LASF1477:
	.string	"angleturn"
.LASF1093:
	.string	"S_LAUN"
.LASF353:
	.string	"S_IFOG"
.LASF100:
	.string	"SPR_POSS"
.LASF105:
	.string	"SPR_FBXP"
.LASF902:
	.string	"S_CYBER_DIE1"
.LASF903:
	.string	"S_CYBER_DIE2"
.LASF904:
	.string	"S_CYBER_DIE3"
.LASF905:
	.string	"S_CYBER_DIE4"
.LASF906:
	.string	"S_CYBER_DIE5"
.LASF907:
	.string	"S_CYBER_DIE6"
.LASF908:
	.string	"S_CYBER_DIE7"
.LASF780:
	.string	"S_BOS2_PAIN"
.LASF910:
	.string	"S_CYBER_DIE9"
.LASF1402:
	.string	"spawnpoint"
.LASF1180:
	.string	"sprite"
.LASF1258:
	.string	"MT_MISC23"
.LASF1123:
	.string	"S_CANDELABRA"
.LASF463:
	.string	"S_VILE_RUN10"
.LASF464:
	.string	"S_VILE_RUN11"
.LASF465:
	.string	"S_VILE_RUN12"
.LASF1083:
	.string	"S_ROCK"
.LASF232:
	.string	"S_SGUN1"
.LASF233:
	.string	"S_SGUN2"
.LASF234:
	.string	"S_SGUN3"
.LASF235:
	.string	"S_SGUN4"
.LASF236:
	.string	"S_SGUN5"
.LASF237:
	.string	"S_SGUN6"
.LASF238:
	.string	"S_SGUN7"
.LASF239:
	.string	"S_SGUN8"
.LASF240:
	.string	"S_SGUN9"
.LASF1327:
	.string	"doomednum"
.LASF229:
	.string	"S_SGUN"
.LASF1119:
	.string	"S_SHRTGRNCOL"
.LASF1500:
	.string	"blockmaplump"
.LASF804:
	.string	"S_SKULL_PAIN"
.LASF1216:
	.string	"MT_SPAWNSHOT"
.LASF528:
	.string	"S_TRACER2"
.LASF1127:
	.string	"S_TECHPILLAR"
.LASF532:
	.string	"S_SKEL_STND"
.LASF687:
	.string	"S_SARG_STND2"
.LASF433:
	.string	"S_SPOS_DIE1"
.LASF434:
	.string	"S_SPOS_DIE2"
.LASF435:
	.string	"S_SPOS_DIE3"
.LASF436:
	.string	"S_SPOS_DIE4"
.LASF437:
	.string	"S_SPOS_DIE5"
.LASF1484:
	.string	"PST_REBORN"
.LASF1162:
	.string	"S_HANGBNOBRAIN"
.LASF696:
	.string	"S_SARG_ATK1"
.LASF697:
	.string	"S_SARG_ATK2"
.LASF698:
	.string	"S_SARG_ATK3"
.LASF287:
	.string	"S_PLASMAUP"
.LASF1182:
	.string	"tics"
.LASF1043:
	.string	"S_YKEY"
.LASF1342:
	.string	"speed"
.LASF256:
	.string	"S_DSNR1"
.LASF925:
	.string	"S_PAIN_DIE1"
.LASF455:
	.string	"S_VILE_RUN2"
.LASF1173:
	.string	"S_TECHLAMP4"
.LASF619:
	.string	"S_CPOS_RUN1"
.LASF620:
	.string	"S_CPOS_RUN2"
.LASF621:
	.string	"S_CPOS_RUN3"
.LASF622:
	.string	"S_CPOS_RUN4"
.LASF53:
	.string	"actionf_p1"
.LASF54:
	.string	"actionf_p2"
.LASF157:
	.string	"SPR_BPAK"
.LASF626:
	.string	"S_CPOS_RUN8"
.LASF1023:
	.string	"S_BEXP5"
.LASF70:
	.string	"mapthing_t"
.LASF388:
	.string	"S_POSS_RUN2"
.LASF389:
	.string	"S_POSS_RUN3"
.LASF390:
	.string	"S_POSS_RUN4"
.LASF707:
	.string	"S_SARG_RAISE1"
.LASF391:
	.string	"S_POSS_RUN5"
.LASF55:
	.string	"acp1"
.LASF56:
	.string	"acp2"
.LASF711:
	.string	"S_SARG_RAISE5"
.LASF712:
	.string	"S_SARG_RAISE6"
.LASF1291:
	.string	"MT_MISC53"
.LASF196:
	.string	"SPR_SMGT"
.LASF987:
	.string	"S_KEENPAIN"
.LASF335:
	.string	"S_BFGEXP2"
.LASF336:
	.string	"S_BFGEXP3"
.LASF337:
	.string	"S_BFGEXP4"
.LASF266:
	.string	"S_CHAINFLASH1"
.LASF267:
	.string	"S_CHAINFLASH2"
.LASF222:
	.string	"S_PISTOLDOWN"
.LASF1488:
	.string	"line"
.LASF887:
	.string	"S_CYBER_RUN1"
.LASF888:
	.string	"S_CYBER_RUN2"
.LASF889:
	.string	"S_CYBER_RUN3"
.LASF890:
	.string	"S_CYBER_RUN4"
.LASF891:
	.string	"S_CYBER_RUN5"
.LASF892:
	.string	"S_CYBER_RUN6"
.LASF893:
	.string	"S_CYBER_RUN7"
.LASF894:
	.string	"S_CYBER_RUN8"
.LASF1331:
	.string	"seesound"
.LASF1074:
	.string	"S_PMAP2"
.LASF1075:
	.string	"S_PMAP3"
.LASF1076:
	.string	"S_PMAP4"
.LASF1077:
	.string	"S_PMAP5"
.LASF1078:
	.string	"S_PMAP6"
.LASF1367:
	.string	"MF_MISSILE"
.LASF1527:
	.string	"maxfrac"
.LASF1433:
	.string	"bonuscount"
.LASF805:
	.string	"S_SKULL_PAIN2"
.LASF1335:
	.string	"painchance"
.LASF631:
	.string	"S_CPOS_PAIN"
.LASF1444:
	.string	"ceilingheight"
.LASF110:
	.string	"SPR_SARG"
.LASF936:
	.string	"S_PAIN_RAISE6"
.LASF1454:
	.string	"specialdata"
.LASF1274:
	.string	"MT_MISC36"
.LASF740:
	.string	"S_BOSS_RUN1"
.LASF741:
	.string	"S_BOSS_RUN2"
.LASF742:
	.string	"S_BOSS_RUN3"
.LASF743:
	.string	"S_BOSS_RUN4"
.LASF744:
	.string	"S_BOSS_RUN5"
.LASF262:
	.string	"S_CHAINUP"
.LASF1556:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF1428:
	.string	"killcount"
.LASF881:
	.string	"S_ARACH_PLEX2"
.LASF1125:
	.string	"S_TORCHTREE"
.LASF937:
	.string	"S_SSWV_STND"
.LASF883:
	.string	"S_ARACH_PLEX4"
.LASF1360:
	.string	"MF_NOGRAVITY"
.LASF984:
	.string	"S_COMMKEEN10"
.LASF985:
	.string	"S_COMMKEEN11"
.LASF986:
	.string	"S_COMMKEEN12"
.LASF901:
	.string	"S_CYBER_PAIN"
.LASF1525:
	.string	"P_TraverseIntercepts"
.LASF420:
	.string	"S_SPOS_RUN1"
.LASF178:
	.string	"SPR_SMIT"
.LASF65:
	.string	"boolean"
.LASF423:
	.string	"S_SPOS_RUN4"
.LASF424:
	.string	"S_SPOS_RUN5"
.LASF115:
	.string	"SPR_SKUL"
.LASF426:
	.string	"S_SPOS_RUN7"
.LASF427:
	.string	"S_SPOS_RUN8"
.LASF1084:
	.string	"S_BROK"
.LASF1329:
	.string	"spawnhealth"
.LASF1552:
	.string	"P_BoxOnLineSide"
.LASF214:
	.string	"S_PUNCHDOWN"
.LASF880:
	.string	"S_ARACH_PLEX"
.LASF1141:
	.string	"S_GREENTORCH"
.LASF31:
	.string	"wp_supershotgun"
.LASF280:
	.string	"S_SAWDOWN"
.LASF1524:
	.string	"P_PathTraverse"
.LASF1179:
	.string	"statenum_t"
.LASF1219:
	.string	"MT_TROOPSHOT"
.LASF1204:
	.string	"MT_BRUISERSHOT"
.LASF1541:
	.string	"P_SetThingPosition"
.LASF1481:
	.string	"ticcmd_t"
.LASF1324:
	.string	"MT_MISC86"
.LASF1471:
	.string	"ps_weapon"
.LASF368:
	.string	"S_PLAY_PAIN2"
.LASF763:
	.string	"S_BOSS_RAISE4"
.LASF764:
	.string	"S_BOSS_RAISE5"
.LASF1181:
	.string	"frame"
.LASF1496:
	.string	"openbottom"
.LASF107:
	.string	"SPR_MANF"
.LASF618:
	.string	"S_CPOS_STND2"
.LASF431:
	.string	"S_SPOS_PAIN"
.LASF25:
	.string	"wp_shotgun"
.LASF399:
	.string	"S_POSS_PAIN2"
.LASF1225:
	.string	"MT_PUFF"
.LASF271:
	.string	"S_MISSILE1"
.LASF272:
	.string	"S_MISSILE2"
.LASF273:
	.string	"S_MISSILE3"
.LASF647:
	.string	"S_CPOS_RAISE2"
.LASF648:
	.string	"S_CPOS_RAISE3"
.LASF649:
	.string	"S_CPOS_RAISE4"
.LASF1438:
	.string	"psprites"
.LASF1091:
	.string	"S_MGUN"
.LASF1203:
	.string	"MT_BRUISER"
.LASF156:
	.string	"SPR_SBOX"
.LASF1430:
	.string	"secretcount"
.LASF1326:
	.string	"mobjtype_t"
.LASF1340:
	.string	"xdeathstate"
.LASF1415:
	.string	"powers"
.LASF800:
	.string	"S_SKULL_ATK1"
.LASF801:
	.string	"S_SKULL_ATK2"
.LASF802:
	.string	"S_SKULL_ATK3"
.LASF803:
	.string	"S_SKULL_ATK4"
.LASF781:
	.string	"S_BOS2_PAIN2"
.LASF7:
	.string	"short unsigned int"
.LASF1205:
	.string	"MT_KNIGHT"
.LASF9:
	.string	"signed char"
.LASF1476:
	.string	"sidemove"
.LASF1347:
	.string	"activesound"
.LASF432:
	.string	"S_SPOS_PAIN2"
.LASF596:
	.string	"S_FATT_ATK10"
.LASF193:
	.string	"SPR_TGRN"
.LASF1250:
	.string	"MT_MEGA"
.LASF95:
	.string	"SPR_BFE1"
.LASF96:
	.string	"SPR_BFE2"
.LASF1548:
	.string	"P_MakeDivline"
.LASF1453:
	.string	"thinglist"
.LASF1546:
	.string	"back"
.LASF1284:
	.string	"MT_MISC46"
.LASF1523:
	.string	"count"
.LASF1212:
	.string	"MT_KEEN"
.LASF1451:
	.string	"blockbox"
.LASF997:
	.string	"S_BRAINEYE1"
.LASF1544:
	.string	"linedef"
.LASF653:
	.string	"S_TROO_STND"
.LASF600:
	.string	"S_FATT_DIE2"
.LASF291:
	.string	"S_PLASMAFLASH2"
.LASF35:
	.string	"weapontype_t"
.LASF1479:
	.string	"chatchar"
.LASF344:
	.string	"S_TFOG2"
.LASF345:
	.string	"S_TFOG3"
.LASF346:
	.string	"S_TFOG4"
.LASF347:
	.string	"S_TFOG5"
.LASF348:
	.string	"S_TFOG6"
.LASF349:
	.string	"S_TFOG7"
.LASF350:
	.string	"S_TFOG8"
.LASF351:
	.string	"S_TFOG9"
.LASF766:
	.string	"S_BOSS_RAISE7"
.LASF1424:
	.string	"attackdown"
.LASF71:
	.string	"SPR_TROO"
.LASF82:
	.string	"SPR_SAWG"
.LASF1515:
	.string	"ystep"
.LASF1376:
	.string	"MF_NOTDMATCH"
.LASF131:
	.string	"SPR_BON1"
.LASF132:
	.string	"SPR_BON2"
.LASF1352:
	.string	"MF_SOLID"
.LASF18:
	.string	"it_redcard"
.LASF1120:
	.string	"S_TALLREDCOL"
.LASF1394:
	.string	"state"
.LASF1095:
	.string	"S_SHOT"
.LASF951:
	.string	"S_SSWV_ATK5"
.LASF1100:
	.string	"S_BLOODYTWITCH2"
.LASF1101:
	.string	"S_BLOODYTWITCH3"
.LASF1102:
	.string	"S_BLOODYTWITCH4"
.LASF841:
	.string	"S_SPID_DIE10"
.LASF842:
	.string	"S_SPID_DIE11"
.LASF536:
	.string	"S_SKEL_RUN3"
.LASF188:
	.string	"SPR_ELEC"
.LASF989:
	.string	"S_BRAIN"
.LASF1207:
	.string	"MT_SPIDER"
.LASF1072:
	.string	"S_SUIT"
.LASF86:
	.string	"SPR_BFGF"
.LASF85:
	.string	"SPR_BFGG"
.LASF912:
	.string	"S_PAIN_STND"
.LASF328:
	.string	"S_BFGLAND"
.LASF1018:
	.string	"S_BAR2"
.LASF1420:
	.string	"pendingweapon"
.LASF61:
	.string	"function"
.LASF1526:
	.string	"func"
.LASF37:
	.string	"am_shell"
.LASF1392:
	.string	"validcount"
.LASF1514:
	.string	"xstep"
.LASF1431:
	.string	"message"
.LASF608:
	.string	"S_FATT_DIE10"
.LASF22:
	.string	"NUMCARDS"
.LASF1145:
	.string	"S_REDTORCH"
.LASF1223:
	.string	"MT_BFG"
.LASF392:
	.string	"S_POSS_RUN6"
.LASF102:
	.string	"SPR_VILE"
.LASF1226:
	.string	"MT_BLOOD"
.LASF221:
	.string	"S_PISTOL"
.LASF1542:
	.string	"P_UnsetThingPosition"
.LASF64:
	.string	"true"
.LASF453:
	.string	"S_VILE_STND2"
.LASF871:
	.string	"S_BSPI_RAISE1"
.LASF872:
	.string	"S_BSPI_RAISE2"
.LASF873:
	.string	"S_BSPI_RAISE3"
.LASF874:
	.string	"S_BSPI_RAISE4"
.LASF875:
	.string	"S_BSPI_RAISE5"
.LASF876:
	.string	"S_BSPI_RAISE6"
.LASF877:
	.string	"S_BSPI_RAISE7"
.LASF1389:
	.string	"momx"
.LASF1368:
	.string	"MF_DROPPED"
.LASF1390:
	.string	"momy"
.LASF4:
	.string	"long int"
.LASF960:
	.string	"S_SSWV_XDIE1"
.LASF961:
	.string	"S_SSWV_XDIE2"
.LASF962:
	.string	"S_SSWV_XDIE3"
.LASF963:
	.string	"S_SSWV_XDIE4"
.LASF964:
	.string	"S_SSWV_XDIE5"
.LASF965:
	.string	"S_SSWV_XDIE6"
.LASF966:
	.string	"S_SSWV_XDIE7"
.LASF967:
	.string	"S_SSWV_XDIE8"
.LASF968:
	.string	"S_SSWV_XDIE9"
.LASF258:
	.string	"S_DSGUNFLASH1"
.LASF259:
	.string	"S_DSGUNFLASH2"
.LASF1257:
	.string	"MT_MISC22"
.LASF1439:
	.string	"didsecret"
.LASF516:
	.string	"S_FIRE25"
.LASF610:
	.string	"S_FATT_RAISE2"
.LASF1293:
	.string	"MT_MISC55"
.LASF1412:
	.string	"deltaviewheight"
.LASF20:
	.string	"it_yellowskull"
.LASF1540:
	.string	"link"
.LASF1048:
	.string	"S_RSKULL2"
.LASF1403:
	.string	"tracer"
.LASF823:
	.string	"S_SPID_RUN10"
.LASF824:
	.string	"S_SPID_RUN11"
.LASF825:
	.string	"S_SPID_RUN12"
.LASF1513:
	.string	"rcsid"
.LASF1349:
	.string	"raisestate"
.LASF274:
	.string	"S_MISSILEFLASH1"
.LASF275:
	.string	"S_MISSILEFLASH2"
.LASF276:
	.string	"S_MISSILEFLASH3"
.LASF277:
	.string	"S_MISSILEFLASH4"
.LASF137:
	.string	"SPR_RSKU"
.LASF58:
	.string	"think_t"
.LASF634:
	.string	"S_CPOS_DIE2"
.LASF635:
	.string	"S_CPOS_DIE3"
.LASF636:
	.string	"S_CPOS_DIE4"
.LASF1369:
	.string	"MF_SHADOW"
.LASF637:
	.string	"S_CPOS_DIE5"
.LASF638:
	.string	"S_CPOS_DIE6"
.LASF639:
	.string	"S_CPOS_DIE7"
.LASF1528:
	.string	"dist"
.LASF1080:
	.string	"S_PVIS2"
.LASF1218:
	.string	"MT_BARREL"
.LASF812:
	.string	"S_SPID_STND"
.LASF584:
	.string	"S_FATT_RUN10"
.LASF585:
	.string	"S_FATT_RUN11"
.LASF586:
	.string	"S_FATT_RUN12"
.LASF1499:
	.string	"trace"
.LASF1210:
	.string	"MT_PAIN"
.LASF1138:
	.string	"S_BLUETORCH2"
.LASF1350:
	.string	"mobjinfo_t"
.LASF1139:
	.string	"S_BLUETORCH3"
.LASF1140:
	.string	"S_BLUETORCH4"
.LASF197:
	.string	"SPR_SMRT"
.LASF1555:
	.string	"P_AproxDistance"
.LASF299:
	.string	"S_BFGFLASH1"
.LASF300:
	.string	"S_BFGFLASH2"
.LASF833:
	.string	"S_SPID_DIE2"
.LASF114:
	.string	"SPR_BOS2"
.LASF836:
	.string	"S_SPID_DIE5"
.LASF837:
	.string	"S_SPID_DIE6"
.LASF838:
	.string	"S_SPID_DIE7"
.LASF839:
	.string	"S_SPID_DIE8"
.LASF1129:
	.string	"S_EVILEYE2"
.LASF1130:
	.string	"S_EVILEYE3"
.LASF1131:
	.string	"S_EVILEYE4"
.LASF304:
	.string	"S_PUFF1"
.LASF305:
	.string	"S_PUFF2"
.LASF306:
	.string	"S_PUFF3"
.LASF125:
	.string	"SPR_BOSF"
.LASF1456:
	.string	"lines"
.LASF113:
	.string	"SPR_BOSS"
.LASF1222:
	.string	"MT_PLASMA"
.LASF858:
	.string	"S_BSPI_ATK1"
.LASF859:
	.string	"S_BSPI_ATK2"
.LASF860:
	.string	"S_BSPI_ATK3"
.LASF861:
	.string	"S_BSPI_ATK4"
.LASF1040:
	.string	"S_BKEY2"
.LASF32:
	.string	"NUMWEAPONS"
.LASF845:
	.string	"S_BSPI_SIGHT"
.LASF2:
	.string	"long unsigned int"
.LASF847:
	.string	"S_BSPI_RUN2"
.LASF991:
	.string	"S_BRAIN_DIE1"
.LASF992:
	.string	"S_BRAIN_DIE2"
.LASF993:
	.string	"S_BRAIN_DIE3"
.LASF994:
	.string	"S_BRAIN_DIE4"
.LASF326:
	.string	"S_BFGSHOT"
.LASF1132:
	.string	"S_FLOATSKULL"
.LASF482:
	.string	"S_VILE_DIE1"
.LASF483:
	.string	"S_VILE_DIE2"
.LASF484:
	.string	"S_VILE_DIE3"
.LASF485:
	.string	"S_VILE_DIE4"
.LASF486:
	.string	"S_VILE_DIE5"
.LASF487:
	.string	"S_VILE_DIE6"
.LASF488:
	.string	"S_VILE_DIE7"
.LASF489:
	.string	"S_VILE_DIE8"
.LASF490:
	.string	"S_VILE_DIE9"
.LASF1432:
	.string	"damagecount"
.LASF1353:
	.string	"MF_SHOOTABLE"
.LASF166:
	.string	"SPR_SMT2"
.LASF1042:
	.string	"S_RKEY2"
.LASF1013:
	.string	"S_ARM1"
.LASF1015:
	.string	"S_ARM2"
.LASF1108:
	.string	"S_HEADCANDLES"
.LASF144:
	.string	"SPR_PINS"
.LASF738:
	.string	"S_BOSS_STND"
.LASF718:
	.string	"S_HEAD_PAIN"
.LASF17:
	.string	"it_yellowcard"
.LASF1194:
	.string	"MT_TRACER"
.LASF599:
	.string	"S_FATT_DIE1"
.LASF3:
	.string	"char"
.LASF601:
	.string	"S_FATT_DIE3"
.LASF602:
	.string	"S_FATT_DIE4"
.LASF603:
	.string	"S_FATT_DIE5"
.LASF604:
	.string	"S_FATT_DIE6"
.LASF605:
	.string	"S_FATT_DIE7"
.LASF606:
	.string	"S_FATT_DIE8"
.LASF607:
	.string	"S_FATT_DIE9"
.LASF674:
	.string	"S_TROO_XDIE2"
.LASF675:
	.string	"S_TROO_XDIE3"
.LASF676:
	.string	"S_TROO_XDIE4"
.LASF677:
	.string	"S_TROO_XDIE5"
.LASF678:
	.string	"S_TROO_XDIE6"
.LASF679:
	.string	"S_TROO_XDIE7"
.LASF680:
	.string	"S_TROO_XDIE8"
.LASF149:
	.string	"SPR_CLIP"
.LASF1121:
	.string	"S_SHRTREDCOL"
.LASF1164:
	.string	"S_HANGTSKULL"
.LASF1533:
	.string	"P_BlockThingsIterator"
.LASF48:
	.string	"NUMPOWERS"
.LASF949:
	.string	"S_SSWV_ATK3"
.LASF950:
	.string	"S_SSWV_ATK4"
.LASF255:
	.string	"S_DSGUN10"
.LASF43:
	.string	"pw_strength"
.LASF183:
	.string	"SPR_CAND"
.LASF1200:
	.string	"MT_SERGEANT"
.LASF1111:
	.string	"S_LIVESTICK"
.LASF1051:
	.string	"S_STIM"
.LASF38:
	.string	"am_cell"
.LASF16:
	.string	"it_bluecard"
.LASF1387:
	.string	"floorz"
.LASF1535:
	.string	"P_BlockLinesIterator"
.LASF714:
	.string	"S_HEAD_RUN1"
.LASF369:
	.string	"S_PLAY_DIE1"
.LASF370:
	.string	"S_PLAY_DIE2"
.LASF371:
	.string	"S_PLAY_DIE3"
.LASF372:
	.string	"S_PLAY_DIE4"
.LASF373:
	.string	"S_PLAY_DIE5"
.LASF374:
	.string	"S_PLAY_DIE6"
.LASF375:
	.string	"S_PLAY_DIE7"
.LASF385:
	.string	"S_POSS_STND"
.LASF341:
	.string	"S_TFOG"
.LASF1278:
	.string	"MT_MISC40"
.LASF1279:
	.string	"MT_MISC41"
.LASF1404:
	.string	"subsector_s"
.LASF701:
	.string	"S_SARG_DIE1"
.LASF702:
	.string	"S_SARG_DIE2"
.LASF703:
	.string	"S_SARG_DIE3"
.LASF704:
	.string	"S_SARG_DIE4"
.LASF1002:
	.string	"S_SPAWNFIRE1"
.LASF1003:
	.string	"S_SPAWNFIRE2"
.LASF14:
	.string	"BOXLEFT"
.LASF1005:
	.string	"S_SPAWNFIRE4"
.LASF1006:
	.string	"S_SPAWNFIRE5"
.LASF1007:
	.string	"S_SPAWNFIRE6"
.LASF1008:
	.string	"S_SPAWNFIRE7"
.LASF1009:
	.string	"S_SPAWNFIRE8"
.LASF673:
	.string	"S_TROO_XDIE1"
.LASF1478:
	.string	"consistancy"
.LASF1405:
	.string	"sector"
.LASF1166:
	.string	"S_HANGTNOBRAIN"
.LASF321:
	.string	"S_PLASEXP2"
.LASF322:
	.string	"S_PLASEXP3"
.LASF323:
	.string	"S_PLASEXP4"
.LASF324:
	.string	"S_PLASEXP5"
.LASF29:
	.string	"wp_bfg"
.LASF1150:
	.string	"S_BTORCHSHRT2"
.LASF1151:
	.string	"S_BTORCHSHRT3"
.LASF1152:
	.string	"S_BTORCHSHRT4"
.LASF1497:
	.string	"openrange"
.LASF454:
	.string	"S_VILE_RUN1"
.LASF244:
	.string	"S_DSGUNDOWN"
.LASF456:
	.string	"S_VILE_RUN3"
.LASF457:
	.string	"S_VILE_RUN4"
.LASF458:
	.string	"S_VILE_RUN5"
.LASF459:
	.string	"S_VILE_RUN6"
.LASF460:
	.string	"S_VILE_RUN7"
.LASF461:
	.string	"S_VILE_RUN8"
.LASF462:
	.string	"S_VILE_RUN9"
.LASF705:
	.string	"S_SARG_DIE5"
.LASF706:
	.string	"S_SARG_DIE6"
.LASF1416:
	.string	"cards"
.LASF1381:
	.string	"thinker"
.LASF1498:
	.string	"lowfloor"
.LASF546:
	.string	"S_SKEL_FIST1"
.LASF547:
	.string	"S_SKEL_FIST2"
.LASF548:
	.string	"S_SKEL_FIST3"
.LASF549:
	.string	"S_SKEL_FIST4"
.LASF285:
	.string	"S_PLASMA"
.LASF1064:
	.string	"S_PINS"
.LASF1137:
	.string	"S_BLUETORCH"
.LASF575:
	.string	"S_FATT_RUN1"
.LASF576:
	.string	"S_FATT_RUN2"
.LASF577:
	.string	"S_FATT_RUN3"
.LASF578:
	.string	"S_FATT_RUN4"
.LASF45:
	.string	"pw_ironfeet"
.LASF580:
	.string	"S_FATT_RUN6"
.LASF581:
	.string	"S_FATT_RUN7"
.LASF582:
	.string	"S_FATT_RUN8"
.LASF1113:
	.string	"S_MEAT2"
.LASF1114:
	.string	"S_MEAT3"
.LASF1115:
	.string	"S_MEAT4"
.LASF1116:
	.string	"S_MEAT5"
.LASF228:
	.string	"S_PISTOLFLASH"
.LASF1443:
	.string	"floorheight"
.LASF448:
	.string	"S_SPOS_RAISE2"
.LASF449:
	.string	"S_SPOS_RAISE3"
.LASF450:
	.string	"S_SPOS_RAISE4"
.LASF451:
	.string	"S_SPOS_RAISE5"
.LASF140:
	.string	"SPR_MEDI"
.LASF142:
	.string	"SPR_PINV"
.LASF990:
	.string	"S_BRAIN_PAIN"
.LASF261:
	.string	"S_CHAINDOWN"
.LASF1364:
	.string	"MF_SLIDE"
.LASF480:
	.string	"S_VILE_PAIN"
.LASF527:
	.string	"S_TRACER"
.LASF947:
	.string	"S_SSWV_ATK1"
.LASF948:
	.string	"S_SSWV_ATK2"
.LASF477:
	.string	"S_VILE_HEAL1"
.LASF478:
	.string	"S_VILE_HEAL2"
.LASF479:
	.string	"S_VILE_HEAL3"
.LASF952:
	.string	"S_SSWV_ATK6"
.LASF1397:
	.string	"movecount"
.LASF134:
	.string	"SPR_RKEY"
.LASF1098:
	.string	"S_STALAG"
.LASF1529:
	.string	"scan"
.LASF1509:
	.string	"R_PointInSubsector"
.LASF813:
	.string	"S_SPID_STND2"
.LASF51:
	.string	"angle_t"
.LASF1446:
	.string	"ceilingpic"
.LASF1099:
	.string	"S_BLOODYTWITCH"
.LASF1168:
	.string	"S_SMALLPOOL"
.LASF1474:
	.string	"pspdef_t"
.LASF1294:
	.string	"MT_MISC56"
.LASF597:
	.string	"S_FATT_PAIN"
.LASF361:
	.string	"S_PLAY_RUN1"
.LASF362:
	.string	"S_PLAY_RUN2"
.LASF363:
	.string	"S_PLAY_RUN3"
.LASF364:
	.string	"S_PLAY_RUN4"
.LASF1089:
	.string	"S_BPAK"
.LASF50:
	.string	"double"
.LASF129:
	.string	"SPR_BEXP"
.LASF1408:
	.string	"player_s"
.LASF1046:
	.string	"S_BSKULL2"
.LASF1359:
	.string	"MF_SPAWNCEILING"
.LASF88:
	.string	"SPR_PUFF"
.LASF975:
	.string	"S_COMMKEEN"
.LASF1425:
	.string	"usedown"
.LASF1487:
	.string	"thing"
.LASF1547:
	.string	"P_InterceptVector"
.LASF767:
	.string	"S_BOS2_STND"
.LASF94:
	.string	"SPR_BFS1"
.LASF998:
	.string	"S_SPAWN1"
.LASF999:
	.string	"S_SPAWN2"
.LASF1000:
	.string	"S_SPAWN3"
.LASF1001:
	.string	"S_SPAWN4"
.LASF1171:
	.string	"S_TECHLAMP2"
.LASF1172:
	.string	"S_TECHLAMP3"
.LASF30:
	.string	"wp_chainsaw"
.LASF1208:
	.string	"MT_BABY"
.LASF1423:
	.string	"maxammo"
.LASF1112:
	.string	"S_LIVESTICK2"
.LASF1157:
	.string	"S_RTORCHSHRT"
.LASF1254:
	.string	"MT_MISC19"
.LASF116:
	.string	"SPR_SPID"
.LASF713:
	.string	"S_HEAD_STND"
.LASF688:
	.string	"S_SARG_RUN1"
.LASF689:
	.string	"S_SARG_RUN2"
.LASF691:
	.string	"S_SARG_RUN4"
.LASF692:
	.string	"S_SARG_RUN5"
.LASF693:
	.string	"S_SARG_RUN6"
.LASF694:
	.string	"S_SARG_RUN7"
.LASF695:
	.string	"S_SARG_RUN8"
.LASF1232:
	.string	"MT_MISC1"
.LASF1233:
	.string	"MT_MISC2"
.LASF1234:
	.string	"MT_MISC3"
.LASF1235:
	.string	"MT_MISC4"
.LASF1236:
	.string	"MT_MISC5"
.LASF1237:
	.string	"MT_MISC6"
.LASF1238:
	.string	"MT_MISC7"
.LASF1239:
	.string	"MT_MISC8"
.LASF1240:
	.string	"MT_MISC9"
.LASF278:
	.string	"S_SAW"
.LASF145:
	.string	"SPR_MEGA"
.LASF367:
	.string	"S_PLAY_PAIN"
.LASF1549:
	.string	"P_PointOnDivlineSide"
.LASF319:
	.string	"S_PLASBALL2"
.LASF1472:
	.string	"ps_flash"
.LASF1409:
	.string	"playerstate"
.LASF123:
	.string	"SPR_KEEN"
.LASF953:
	.string	"S_SSWV_PAIN"
.LASF1334:
	.string	"painstate"
.LASF988:
	.string	"S_KEENPAIN2"
.LASF47:
	.string	"pw_infrared"
.LASF475:
	.string	"S_VILE_ATK10"
.LASF476:
	.string	"S_VILE_ATK11"
.LASF954:
	.string	"S_SSWV_PAIN2"
.LASF1318:
	.string	"MT_MISC80"
.LASF1341:
	.string	"deathsound"
.LASF1028:
	.string	"S_BON1A"
.LASF1029:
	.string	"S_BON1B"
.LASF1030:
	.string	"S_BON1C"
.LASF1031:
	.string	"S_BON1D"
.LASF1032:
	.string	"S_BON1E"
.LASF1463:
	.string	"sector_t"
.LASF143:
	.string	"SPR_PSTR"
.LASF1550:
	.string	"left"
.LASF1256:
	.string	"MT_MISC21"
.LASF699:
	.string	"S_SARG_PAIN"
.LASF1251:
	.string	"MT_CLIP"
.LASF158:
	.string	"SPR_BFUG"
.LASF1306:
	.string	"MT_MISC68"
.LASF1024:
	.string	"S_BBAR1"
.LASF1025:
	.string	"S_BBAR2"
.LASF1026:
	.string	"S_BBAR3"
.LASF212:
	.string	"S_LIGHTDONE"
.LASF863:
	.string	"S_BSPI_PAIN2"
.LASF1417:
	.string	"backpack"
.LASF663:
	.string	"S_TROO_ATK1"
.LASF664:
	.string	"S_TROO_ATK2"
.LASF665:
	.string	"S_TROO_ATK3"
.LASF807:
	.string	"S_SKULL_DIE2"
.LASF808:
	.string	"S_SKULL_DIE3"
.LASF809:
	.string	"S_SKULL_DIE4"
.LASF810:
	.string	"S_SKULL_DIE5"
.LASF811:
	.string	"S_SKULL_DIE6"
.LASF162:
	.string	"SPR_PLAS"
.LASF1034:
	.string	"S_BON2A"
.LASF1035:
	.string	"S_BON2B"
.LASF75:
	.string	"SPR_PISF"
.LASF74:
	.string	"SPR_PISG"
.LASF1038:
	.string	"S_BON2E"
.LASF1261:
	.string	"MT_CHAINGUN"
.LASF310:
	.string	"S_TBALLX1"
.LASF311:
	.string	"S_TBALLX2"
.LASF312:
	.string	"S_TBALLX3"
.LASF33:
	.string	"wp_nochange"
.LASF1198:
	.string	"MT_CHAINGUY"
.LASF1442:
	.string	"degenmobj_t"
.LASF1492:
	.string	"intercepts"
.LASF1475:
	.string	"forwardmove"
.LASF806:
	.string	"S_SKULL_DIE1"
.LASF1483:
	.string	"PST_DEAD"
.LASF1169:
	.string	"S_BRAINSTEM"
.LASF974:
	.string	"S_KEENSTND"
.LASF99:
	.string	"SPR_PLAY"
.LASF1363:
	.string	"MF_NOCLIP"
.LASF1419:
	.string	"readyweapon"
.LASF11:
	.string	"long long unsigned int"
.LASF1536:
	.string	"offset"
.LASF1109:
	.string	"S_HEADCANDLES2"
.LASF1228:
	.string	"MT_IFOG"
.LASF190:
	.string	"SPR_FSKU"
.LASF425:
	.string	"S_SPOS_RUN6"
.LASF281:
	.string	"S_SAWUP"
.LASF1014:
	.string	"S_ARM1A"
.LASF617:
	.string	"S_CPOS_STND"
.LASF1269:
	.string	"MT_MISC31"
.LASF1391:
	.string	"momz"
.LASF1088:
	.string	"S_SBOX"
.LASF1449:
	.string	"soundtraversed"
.LASF1272:
	.string	"MT_MISC34"
.LASF1470:
	.string	"subsector_t"
.LASF1459:
	.string	"bbox"
.LASF1522:
	.string	"mapystep"
.LASF320:
	.string	"S_PLASEXP"
.LASF1275:
	.string	"MT_MISC37"
.LASF1104:
	.string	"S_DEADBOTTOM"
.LASF1161:
	.string	"S_HANGNOGUTS"
.LASF1333:
	.string	"attacksound"
.LASF1065:
	.string	"S_PINS2"
.LASF1066:
	.string	"S_PINS3"
.LASF1067:
	.string	"S_PINS4"
.LASF919:
	.string	"S_PAIN_ATK1"
.LASF920:
	.string	"S_PAIN_ATK2"
.LASF921:
	.string	"S_PAIN_ATK3"
.LASF922:
	.string	"S_PAIN_ATK4"
.LASF231:
	.string	"S_SGUNUP"
.LASF1361:
	.string	"MF_DROPOFF"
.LASF1461:
	.string	"frontsector"
.LASF184:
	.string	"SPR_CBRA"
.LASF1339:
	.string	"deathstate"
.LASF1016:
	.string	"S_ARM2A"
.LASF885:
	.string	"S_CYBER_STND"
.LASF1044:
	.string	"S_YKEY2"
.LASF494:
	.string	"S_FIRE3"
.LASF1332:
	.string	"reactiontime"
.LASF499:
	.string	"S_FIRE8"
.LASF739:
	.string	"S_BOSS_STND2"
.LASF1537:
	.string	"list"
.LASF1383:
	.string	"sprev"
.LASF282:
	.string	"S_SAW1"
.LASF283:
	.string	"S_SAW2"
.LASF284:
	.string	"S_SAW3"
.LASF1027:
	.string	"S_BON1"
.LASF1033:
	.string	"S_BON2"
.LASF1400:
	.string	"player"
.LASF279:
	.string	"S_SAWB"
.LASF667:
	.string	"S_TROO_PAIN2"
.LASF1214:
	.string	"MT_BOSSSPIT"
.LASF492:
	.string	"S_FIRE1"
.LASF493:
	.string	"S_FIRE2"
.LASF34:
	.string	"fixed_t"
.LASF495:
	.string	"S_FIRE4"
.LASF496:
	.string	"S_FIRE5"
.LASF497:
	.string	"S_FIRE6"
.LASF498:
	.string	"S_FIRE7"
.LASF152:
	.string	"SPR_BROK"
.LASF500:
	.string	"S_FIRE9"
.LASF1282:
	.string	"MT_MISC44"
.LASF1283:
	.string	"MT_MISC45"
.LASF1085:
	.string	"S_CELL"
.LASF1285:
	.string	"MT_MISC47"
.LASF150:
	.string	"SPR_AMMO"
.LASF1286:
	.string	"MT_MISC48"
.LASF1287:
	.string	"MT_MISC49"
.LASF798:
	.string	"S_SKULL_RUN1"
.LASF799:
	.string	"S_SKULL_RUN2"
.LASF1165:
	.string	"S_HANGTLOOKUP"
.LASF1354:
	.string	"MF_NOSECTOR"
.LASF260:
	.string	"S_CHAIN"
.LASF290:
	.string	"S_PLASMAFLASH1"
.LASF246:
	.string	"S_DSGUN1"
.LASF247:
	.string	"S_DSGUN2"
.LASF141:
	.string	"SPR_SOUL"
.LASF101:
	.string	"SPR_SPOS"
.LASF250:
	.string	"S_DSGUN5"
.LASF251:
	.string	"S_DSGUN6"
.LASF252:
	.string	"S_DSGUN7"
.LASF253:
	.string	"S_DSGUN8"
.LASF254:
	.string	"S_DSGUN9"
.LASF418:
	.string	"S_SPOS_STND"
.LASF121:
	.string	"SPR_PAIN"
.LASF646:
	.string	"S_CPOS_RAISE1"
.LASF1418:
	.string	"frags"
.LASF1413:
	.string	"armorpoints"
.LASF1480:
	.string	"buttons"
.LASF1521:
	.string	"mapxstep"
.LASF295:
	.string	"S_BFG1"
.LASF296:
	.string	"S_BFG2"
.LASF297:
	.string	"S_BFG3"
.LASF298:
	.string	"S_BFG4"
.LASF210:
	.string	"spritenum_t"
.LASF257:
	.string	"S_DSNR2"
.LASF797:
	.string	"S_SKULL_STND2"
.LASF1493:
	.string	"intercept_p"
.LASF1060:
	.string	"S_PINV2"
.LASF1061:
	.string	"S_PINV3"
.LASF690:
	.string	"S_SARG_RUN3"
.LASF1491:
	.string	"intercept_t"
.LASF1175:
	.string	"S_TECH2LAMP2"
.LASF1176:
	.string	"S_TECH2LAMP3"
.LASF1177:
	.string	"S_TECH2LAMP4"
.LASF1457:
	.string	"line_s"
.LASF5:
	.string	"long long int"
.LASF73:
	.string	"SPR_PUNG"
.LASF641:
	.string	"S_CPOS_XDIE2"
.LASF642:
	.string	"S_CPOS_XDIE3"
.LASF643:
	.string	"S_CPOS_XDIE4"
.LASF644:
	.string	"S_CPOS_XDIE5"
.LASF645:
	.string	"S_CPOS_XDIE6"
.LASF826:
	.string	"S_SPID_ATK1"
.LASF827:
	.string	"S_SPID_ATK2"
.LASF828:
	.string	"S_SPID_ATK3"
.LASF829:
	.string	"S_SPID_ATK4"
.LASF550:
	.string	"S_SKEL_MISS1"
.LASF551:
	.string	"S_SKEL_MISS2"
.LASF552:
	.string	"S_SKEL_MISS3"
.LASF553:
	.string	"S_SKEL_MISS4"
.LASF307:
	.string	"S_PUFF4"
.LASF1047:
	.string	"S_RSKULL"
.LASF879:
	.string	"S_ARACH_PLAZ2"
.LASF1288:
	.string	"MT_MISC50"
.LASF727:
	.string	"S_HEAD_RAISE1"
.LASF1323:
	.string	"MT_MISC85"
.LASF728:
	.string	"S_HEAD_RAISE2"
.LASF729:
	.string	"S_HEAD_RAISE3"
.LASF1426:
	.string	"cheats"
.LASF136:
	.string	"SPR_BSKU"
.LASF731:
	.string	"S_HEAD_RAISE5"
.LASF732:
	.string	"S_HEAD_RAISE6"
.LASF1504:
	.string	"bmaporgx"
.LASF1553:
	.string	"tmbox"
.LASF1266:
	.string	"MT_SUPERSHOTGUN"
.LASF147:
	.string	"SPR_PMAP"
.LASF995:
	.string	"S_BRAINEYE"
.LASF148:
	.string	"SPR_PVIS"
.LASF1482:
	.string	"PST_LIVE"
.LASF1224:
	.string	"MT_ARACHPLAZ"
.LASF1370:
	.string	"MF_NOBLOOD"
.LASF473:
	.string	"S_VILE_ATK8"
.LASF414:
	.string	"S_POSS_RAISE1"
.LASF415:
	.string	"S_POSS_RAISE2"
.LASF416:
	.string	"S_POSS_RAISE3"
.LASF417:
	.string	"S_POSS_RAISE4"
.LASF269:
	.string	"S_MISSILEDOWN"
.LASF1133:
	.string	"S_FLOATSKULL2"
.LASF1134:
	.string	"S_FLOATSKULL3"
.LASF1068:
	.string	"S_MEGA"
.LASF748:
	.string	"S_BOSS_ATK1"
.LASF749:
	.string	"S_BOSS_ATK2"
.LASF750:
	.string	"S_BOSS_ATK3"
.LASF1386:
	.string	"subsector"
.LASF206:
	.string	"SPR_BRS1"
.LASF1441:
	.string	"vertex_t"
.LASF555:
	.string	"S_SKEL_PAIN2"
.LASF1092:
	.string	"S_CSAW"
.LASF42:
	.string	"pw_invulnerability"
.LASF735:
	.string	"S_BRBALLX1"
.LASF736:
	.string	"S_BRBALLX2"
.LASF737:
	.string	"S_BRBALLX3"
.LASF865:
	.string	"S_BSPI_DIE2"
.LASF866:
	.string	"S_BSPI_DIE3"
.LASF867:
	.string	"S_BSPI_DIE4"
.LASF868:
	.string	"S_BSPI_DIE5"
.LASF26:
	.string	"wp_chaingun"
.LASF870:
	.string	"S_BSPI_DIE7"
.LASF421:
	.string	"S_SPOS_RUN2"
.LASF1462:
	.string	"backsector"
.LASF422:
	.string	"S_SPOS_RUN3"
.LASF924:
	.string	"S_PAIN_PAIN2"
.LASF559:
	.string	"S_SKEL_DIE4"
.LASF155:
	.string	"SPR_SHEL"
.LASF1307:
	.string	"MT_MISC69"
.LASF1414:
	.string	"armortype"
.LASF63:
	.string	"false"
.LASF207:
	.string	"SPR_TLMP"
.LASF1366:
	.string	"MF_TELEPORT"
.LASF386:
	.string	"S_POSS_STND2"
.LASF1265:
	.string	"MT_SHOTGUN"
.LASF1190:
	.string	"MT_SHOTGUY"
.LASF1429:
	.string	"itemcount"
.LASF1170:
	.string	"S_TECHLAMP"
.LASF1211:
	.string	"MT_WOLFSS"
.LASF1554:
	.string	"P_PointOnLineSide"
.LASF768:
	.string	"S_BOS2_STND2"
.LASF1450:
	.string	"soundtarget"
.LASF263:
	.string	"S_CHAIN1"
.LASF264:
	.string	"S_CHAIN2"
.LASF265:
	.string	"S_CHAIN3"
.LASF316:
	.string	"S_RBALLX2"
.LASF317:
	.string	"S_RBALLX3"
.LASF192:
	.string	"SPR_TBLU"
.LASF419:
	.string	"S_SPOS_STND2"
.LASF8:
	.string	"unsigned int"
.LASF1382:
	.string	"snext"
.LASF1510:
	.string	"FixedDiv"
.LASF41:
	.string	"am_noammo"
.LASF1379:
	.string	"thinker_s"
.LASF62:
	.string	"thinker_t"
.LASF1004:
	.string	"S_SPAWNFIRE3"
.LASF1501:
	.string	"blockmap"
.LASF395:
	.string	"S_POSS_ATK1"
.LASF396:
	.string	"S_POSS_ATK2"
.LASF397:
	.string	"S_POSS_ATK3"
.LASF1309:
	.string	"MT_MISC71"
.LASF1531:
	.string	"tracepositive"
.LASF1158:
	.string	"S_RTORCHSHRT2"
.LASF1159:
	.string	"S_RTORCHSHRT3"
.LASF1160:
	.string	"S_RTORCHSHRT4"
.LASF1062:
	.string	"S_PINV4"
.LASF10:
	.string	"short int"
.LASF846:
	.string	"S_BSPI_RUN1"
.LASF1315:
	.string	"MT_MISC77"
.LASF1316:
	.string	"MT_MISC78"
.LASF1317:
	.string	"MT_MISC79"
.LASF1206:
	.string	"MT_SKULL"
.LASF1193:
	.string	"MT_UNDEAD"
.LASF59:
	.string	"prev"
.LASF556:
	.string	"S_SKEL_DIE1"
.LASF557:
	.string	"S_SKEL_DIE2"
.LASF558:
	.string	"S_SKEL_DIE3"
.LASF103:
	.string	"SPR_FIRE"
.LASF560:
	.string	"S_SKEL_DIE5"
.LASF561:
	.string	"S_SKEL_DIE6"
.LASF1167:
	.string	"S_COLONGIBS"
.LASF208:
	.string	"SPR_TLP2"
.LASF318:
	.string	"S_PLASBALL"
.LASF164:
	.string	"SPR_SGN2"
.LASF69:
	.string	"options"
.LASF117:
	.string	"SPR_BSPI"
.LASF119:
	.string	"SPR_APBX"
.LASF1437:
	.string	"colormap"
.LASF1241:
	.string	"MT_MISC10"
.LASF1242:
	.string	"MT_MISC11"
.LASF1243:
	.string	"MT_MISC12"
.LASF1245:
	.string	"MT_MISC13"
.LASF1247:
	.string	"MT_MISC14"
.LASF1248:
	.string	"MT_MISC15"
.LASF1249:
	.string	"MT_MISC16"
.LASF1252:
	.string	"MT_MISC17"
.LASF1253:
	.string	"MT_MISC18"
.LASF1081:
	.string	"S_CLIP"
.LASF1343:
	.string	"radius"
.LASF1395:
	.string	"health"
.LASF1215:
	.string	"MT_BOSSTARGET"
.LASF1374:
	.string	"MF_COUNTITEM"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"p_maputl.c"
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
